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
; shader hash: fe5d7218fa11fd6a414a7c3f8e11090a
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

define void @cs_fog_raymarching_air_clouds_heightmap_brfog() {
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
  %370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %371 = extractvalue %dx.types.CBufRet.f32 %370, 3
  %372 = fsub fast float -0.000000e+00, %235
  %373 = fsub fast float -0.000000e+00, %236
  %374 = fsub fast float %371, %237
  %375 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %372, float %373, float %374)  ; Dot3(ax,ay,az,bx,by,bz)
  %376 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %278, float %279, float %280)  ; Dot3(ax,ay,az,bx,by,bz)
  %377 = fdiv fast float 1.000000e+00, %376
  %378 = fmul fast float %377, %375
  %379 = fcmp fast olt float %378, 0.000000e+00
  %380 = fcmp fast ogt float %280, 0.000000e+00
  %381 = and i1 %380, %379
  br i1 %381, label %386, label %382, !dx.controlflow.hints !37

; <label>:382                                     ; preds = %366
  %383 = fcmp fast olt float %280, 0.000000e+00
  br i1 %383, label %384, label %386, !dx.controlflow.hints !38

; <label>:384                                     ; preds = %382
  %385 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %378)  ; FMax(a,b)
  br label %386

; <label>:386                                     ; preds = %384, %382, %366
  %387 = phi float [ 0.000000e+00, %366 ], [ %385, %384 ], [ 0.000000e+00, %382 ]
  %388 = phi float [ 0.000000e+00, %366 ], [ 0x47EFFFFFE0000000, %384 ], [ %378, %382 ]
  %389 = fcmp fast oeq float %388, 0.000000e+00
  br i1 %389, label %393, label %390, !dx.controlflow.hints !39

; <label>:390                                     ; preds = %386
  %391 = call float @dx.op.binary.f32(i32 36, float %369, float %387)  ; FMin(a,b)
  %392 = call float @dx.op.binary.f32(i32 35, float %368, float %388)  ; FMax(a,b)
  br label %393

; <label>:393                                     ; preds = %390, %386
  %394 = phi i32 [ 1, %390 ], [ 0, %386 ]
  %395 = phi float [ %392, %390 ], [ %368, %386 ]
  %396 = phi float [ %391, %390 ], [ %369, %386 ]
  %397 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %398 = extractvalue %dx.types.CBufRet.i32 %397, 3
  %399 = icmp eq i32 %398, 0
  %400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %401 = extractvalue %dx.types.CBufRet.f32 %400, 2
  %402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %403 = extractvalue %dx.types.CBufRet.f32 %402, 2
  %404 = fsub fast float %401, %237
  %405 = fadd fast float %404, %403
  br i1 %399, label %413, label %406, !dx.controlflow.hints !40

; <label>:406                                     ; preds = %393
  %407 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %372, float %373, float %405)  ; Dot3(ax,ay,az,bx,by,bz)
  %408 = fmul fast float %377, %407
  %409 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %372, float %373, float %404)  ; Dot3(ax,ay,az,bx,by,bz)
  %410 = fmul fast float %377, %409
  %411 = call float @dx.op.binary.f32(i32 36, float %408, float %410)  ; FMin(a,b)
  %412 = call float @dx.op.binary.f32(i32 35, float %408, float %410)  ; FMax(a,b)
  br label %446

; <label>:413                                     ; preds = %393
  %414 = fdiv fast float 1.000000e+00, %278
  %415 = fdiv fast float 1.000000e+00, %279
  %416 = fdiv fast float 1.000000e+00, %280
  %417 = extractvalue %dx.types.CBufRet.f32 %400, 0
  %418 = extractvalue %dx.types.CBufRet.f32 %400, 1
  %419 = extractvalue %dx.types.CBufRet.f32 %402, 0
  %420 = extractvalue %dx.types.CBufRet.f32 %402, 1
  %421 = fsub fast float %417, %235
  %422 = fmul fast float %421, %414
  %423 = fadd fast float %421, %419
  %424 = fmul fast float %423, %414
  %425 = call float @dx.op.binary.f32(i32 36, float %422, float %424)  ; FMin(a,b)
  %426 = call float @dx.op.binary.f32(i32 35, float %422, float %424)  ; FMax(a,b)
  %427 = fsub fast float %418, %236
  %428 = fmul fast float %427, %415
  %429 = fadd fast float %427, %420
  %430 = fmul fast float %429, %415
  %431 = call float @dx.op.binary.f32(i32 36, float %428, float %430)  ; FMin(a,b)
  %432 = call float @dx.op.binary.f32(i32 35, float %425, float %431)  ; FMax(a,b)
  %433 = call float @dx.op.binary.f32(i32 35, float %428, float %430)  ; FMax(a,b)
  %434 = call float @dx.op.binary.f32(i32 36, float %426, float %433)  ; FMin(a,b)
  %435 = fmul fast float %404, %416
  %436 = fmul fast float %405, %416
  %437 = call float @dx.op.binary.f32(i32 36, float %435, float %436)  ; FMin(a,b)
  %438 = call float @dx.op.binary.f32(i32 35, float %432, float %437)  ; FMax(a,b)
  %439 = call float @dx.op.binary.f32(i32 35, float %435, float %436)  ; FMax(a,b)
  %440 = call float @dx.op.binary.f32(i32 36, float %434, float %439)  ; FMin(a,b)
  %441 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %438)  ; FMax(a,b)
  %442 = fcmp fast ult float %440, %441
  br i1 %442, label %446, label %443, !dx.controlflow.hints !41

; <label>:443                                     ; preds = %413
  %444 = call float @dx.op.binary.f32(i32 36, float %438, float %440)  ; FMin(a,b)
  %445 = call float @dx.op.binary.f32(i32 35, float %438, float %440)  ; FMax(a,b)
  br label %446

; <label>:446                                     ; preds = %443, %413, %406
  %447 = phi float [ %411, %406 ], [ %444, %443 ], [ 0.000000e+00, %413 ]
  %448 = phi float [ %412, %406 ], [ %445, %443 ], [ 0.000000e+00, %413 ]
  %449 = fcmp fast oeq float %448, 0.000000e+00
  br i1 %449, label %453, label %450, !dx.controlflow.hints !42

; <label>:450                                     ; preds = %446
  %451 = call float @dx.op.binary.f32(i32 36, float %396, float %447)  ; FMin(a,b)
  %452 = call float @dx.op.binary.f32(i32 35, float %395, float %448)  ; FMax(a,b)
  br label %453

; <label>:453                                     ; preds = %450, %446
  %454 = phi i32 [ 1, %450 ], [ 0, %446 ]
  %455 = phi float [ %452, %450 ], [ %395, %446 ]
  %456 = phi float [ %451, %450 ], [ %396, %446 ]
  %457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %458 = extractvalue %dx.types.CBufRet.f32 %457, 2
  %459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %460 = extractvalue %dx.types.CBufRet.f32 %459, 3
  %461 = fsub fast float %458, %237
  %462 = fadd fast float %461, %460
  %463 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %372, float %373, float %462)  ; Dot3(ax,ay,az,bx,by,bz)
  %464 = fmul fast float %377, %463
  %465 = fcmp fast olt float %464, 0.000000e+00
  %466 = and i1 %380, %465
  br i1 %466, label %471, label %467, !dx.controlflow.hints !43

; <label>:467                                     ; preds = %453
  %468 = fcmp fast olt float %280, 0.000000e+00
  br i1 %468, label %469, label %471, !dx.controlflow.hints !44

; <label>:469                                     ; preds = %467
  %470 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %464)  ; FMax(a,b)
  br label %471

; <label>:471                                     ; preds = %469, %467, %453
  %472 = phi float [ 0.000000e+00, %453 ], [ %470, %469 ], [ 0.000000e+00, %467 ]
  %473 = phi float [ 0.000000e+00, %453 ], [ 0x47EFFFFFE0000000, %469 ], [ %464, %467 ]
  %474 = fcmp fast oeq float %473, 0.000000e+00
  br i1 %474, label %478, label %475, !dx.controlflow.hints !45

; <label>:475                                     ; preds = %471
  %476 = call float @dx.op.binary.f32(i32 36, float %456, float %472)  ; FMin(a,b)
  %477 = call float @dx.op.binary.f32(i32 35, float %455, float %473)  ; FMax(a,b)
  br label %478

; <label>:478                                     ; preds = %475, %471
  %479 = phi i32 [ 1, %475 ], [ 0, %471 ]
  %480 = phi float [ %477, %475 ], [ %455, %471 ]
  %481 = phi float [ %476, %475 ], [ %456, %471 ]
  %482 = call float @dx.op.binary.f32(i32 36, float %299, float %480)  ; FMin(a,b)
  %483 = call float @dx.op.binary.f32(i32 35, float %276, float %481)  ; FMax(a,b)
  %484 = extractvalue %dx.types.CBufRet.f32 %370, 0
  %485 = fmul fast float %224, 2.000000e+00
  %486 = fadd fast float %485, -1.000000e+00
  %487 = fmul fast float %484, %486
  %488 = fadd fast float %487, %483
  %489 = fcmp fast olt float %488, %482
  %490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %491 = extractvalue %dx.types.CBufRet.f32 %490, 2
  %492 = fcmp fast olt float %491, 1.000000e+00
  %493 = and i1 %489, %492
  br i1 %493, label %494, label %1487

; <label>:494                                     ; preds = %478
  %495 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %496 = extractvalue %dx.types.CBufRet.i32 %495, 1
  %497 = add i32 %496, -1
  %498 = fmul fast float %488, %280
  %499 = fadd fast float %498, %237
  %500 = fmul fast float %488, %279
  %501 = fadd fast float %500, %236
  %502 = fmul fast float %488, %278
  %503 = fadd fast float %502, %235
  br label %504

; <label>:504                                     ; preds = %1465, %494
  %505 = phi i32 [ %948, %1465 ], [ undef, %494 ]
  %506 = phi float [ %950, %1465 ], [ undef, %494 ]
  %507 = phi float [ %1467, %1465 ], [ 0.000000e+00, %494 ]
  %508 = phi float [ %1468, %1465 ], [ 1.000000e+00, %494 ]
  %509 = phi float [ %1478, %1465 ], [ %503, %494 ]
  %510 = phi float [ %1479, %1465 ], [ %501, %494 ]
  %511 = phi float [ %1480, %1465 ], [ %499, %494 ]
  %512 = phi float [ %1466, %1465 ], [ %488, %494 ]
  %513 = phi i32 [ %523, %1465 ], [ 0, %494 ]
  %514 = phi i32 [ %698, %1465 ], [ %497, %494 ]
  %515 = phi float [ %1469, %1465 ], [ 0.000000e+00, %494 ]
  %516 = phi float [ %1470, %1465 ], [ 0.000000e+00, %494 ]
  %517 = phi float [ %1471, %1465 ], [ 0.000000e+00, %494 ]
  %518 = phi float [ %1472, %1465 ], [ 0.000000e+00, %494 ]
  %519 = phi float [ %1473, %1465 ], [ 0.000000e+00, %494 ]
  %520 = phi i32 [ %1474, %1465 ], [ 0, %494 ]
  %521 = fsub fast float -0.000000e+00, %510
  %522 = fsub fast float -0.000000e+00, %509
  %523 = add i32 %513, 1
  %524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %525 = extractvalue %dx.types.CBufRet.f32 %524, 0
  %526 = icmp eq i32 %367, 0
  br i1 %526, label %695, label %527, !dx.controlflow.hints !46

; <label>:527                                     ; preds = %504
  %528 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %529 = extractvalue %dx.types.CBufRet.i32 %528, 1
  %530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %531 = extractvalue %dx.types.CBufRet.f32 %530, 1
  %532 = fcmp fast ogt float %531, %512
  br i1 %532, label %533, label %535, !dx.controlflow.hints !47

; <label>:533                                     ; preds = %527
  %534 = fsub fast float %531, %512
  br label %685

; <label>:535                                     ; preds = %527
  %536 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %537 = extractvalue %dx.types.CBufRet.i32 %536, 3
  %538 = icmp eq i32 %537, 0
  %539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %540 = extractvalue %dx.types.CBufRet.f32 %539, 2
  %541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %542 = extractvalue %dx.types.CBufRet.f32 %541, 2
  %543 = fsub fast float %540, %511
  %544 = fadd fast float %543, %542
  %545 = fsub fast float 0xC7EFFFFFE0000000, %511
  br i1 %538, label %553, label %546, !dx.controlflow.hints !34

; <label>:546                                     ; preds = %535
  %547 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %522, float %521, float %544)  ; Dot3(ax,ay,az,bx,by,bz)
  %548 = fmul fast float %377, %547
  %549 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %522, float %521, float %545)  ; Dot3(ax,ay,az,bx,by,bz)
  %550 = fmul fast float %377, %549
  %551 = call float @dx.op.binary.f32(i32 36, float %548, float %550)  ; FMin(a,b)
  %552 = call float @dx.op.binary.f32(i32 35, float %548, float %550)  ; FMax(a,b)
  br label %586

; <label>:553                                     ; preds = %535
  %554 = extractvalue %dx.types.CBufRet.f32 %539, 0
  %555 = extractvalue %dx.types.CBufRet.f32 %539, 1
  %556 = extractvalue %dx.types.CBufRet.f32 %541, 0
  %557 = extractvalue %dx.types.CBufRet.f32 %541, 1
  %558 = fdiv fast float 1.000000e+00, %278
  %559 = fdiv fast float 1.000000e+00, %279
  %560 = fdiv fast float 1.000000e+00, %280
  %561 = fsub fast float %554, %509
  %562 = fmul fast float %558, %561
  %563 = fadd fast float %561, %556
  %564 = fmul fast float %563, %558
  %565 = call float @dx.op.binary.f32(i32 36, float %562, float %564)  ; FMin(a,b)
  %566 = call float @dx.op.binary.f32(i32 35, float %562, float %564)  ; FMax(a,b)
  %567 = fsub fast float %555, %510
  %568 = fmul fast float %559, %567
  %569 = fadd fast float %567, %557
  %570 = fmul fast float %569, %559
  %571 = call float @dx.op.binary.f32(i32 36, float %568, float %570)  ; FMin(a,b)
  %572 = call float @dx.op.binary.f32(i32 35, float %565, float %571)  ; FMax(a,b)
  %573 = call float @dx.op.binary.f32(i32 35, float %568, float %570)  ; FMax(a,b)
  %574 = call float @dx.op.binary.f32(i32 36, float %566, float %573)  ; FMin(a,b)
  %575 = fmul fast float %560, %545
  %576 = fmul fast float %560, %544
  %577 = call float @dx.op.binary.f32(i32 36, float %575, float %576)  ; FMin(a,b)
  %578 = call float @dx.op.binary.f32(i32 35, float %572, float %577)  ; FMax(a,b)
  %579 = call float @dx.op.binary.f32(i32 35, float %575, float %576)  ; FMax(a,b)
  %580 = call float @dx.op.binary.f32(i32 36, float %574, float %579)  ; FMin(a,b)
  %581 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %578)  ; FMax(a,b)
  %582 = fcmp fast ult float %580, %581
  br i1 %582, label %586, label %583, !dx.controlflow.hints !35

; <label>:583                                     ; preds = %553
  %584 = call float @dx.op.binary.f32(i32 36, float %578, float %580)  ; FMin(a,b)
  %585 = call float @dx.op.binary.f32(i32 35, float %578, float %580)  ; FMax(a,b)
  br label %586

; <label>:586                                     ; preds = %583, %553, %546
  %587 = phi float [ %551, %546 ], [ %584, %583 ], [ 0.000000e+00, %553 ]
  %588 = phi float [ %552, %546 ], [ %585, %583 ], [ 0.000000e+00, %553 ]
  %589 = fcmp fast ogt float %587, 0.000000e+00
  br i1 %589, label %685, label %590, !dx.controlflow.hints !48

; <label>:590                                     ; preds = %586
  %591 = fcmp fast ugt float %588, 0.000000e+00
  br i1 %591, label %592, label %685, !dx.controlflow.hints !49

; <label>:592                                     ; preds = %590
  %593 = icmp sgt i32 %514, 0
  br i1 %593, label %594, label %679

; <label>:594                                     ; preds = %592
  br label %595

; <label>:595                                     ; preds = %675, %594
  %596 = phi i32 [ %676, %675 ], [ %514, %594 ]
  %597 = sitofp i32 %596 to float
  %598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %599 = extractvalue %dx.types.CBufRet.f32 %598, 0
  %600 = extractvalue %dx.types.CBufRet.f32 %598, 1
  %601 = fsub fast float %509, %599
  %602 = fsub fast float %510, %600
  %603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %604 = extractvalue %dx.types.CBufRet.f32 %603, 0
  %605 = extractvalue %dx.types.CBufRet.f32 %603, 1
  %606 = fmul fast float %601, %604
  %607 = fmul fast float %602, %605
  %608 = fsub fast float 1.000000e+00, %607
  %609 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %610 = extractvalue %dx.types.CBufRet.i32 %609, 3
  %611 = icmp eq i32 %610, 0
  br i1 %611, label %618, label %612, !dx.controlflow.hints !50

; <label>:612                                     ; preds = %595
  %613 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %16, float %606, float %608, float undef, float undef, i32 0, i32 0, i32 undef, float %597)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %614 = extractvalue %dx.types.ResRet.f32 %613, 0
  %615 = extractvalue %dx.types.ResRet.f32 %613, 1
  %616 = extractvalue %dx.types.ResRet.f32 %613, 2
  %617 = extractvalue %dx.types.ResRet.f32 %613, 3
  br label %624

; <label>:618                                     ; preds = %595
  %619 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %606, float %608, float undef, float undef, i32 0, i32 0, i32 undef, float %597)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %620 = extractvalue %dx.types.ResRet.f32 %619, 0
  %621 = extractvalue %dx.types.ResRet.f32 %619, 1
  %622 = extractvalue %dx.types.ResRet.f32 %619, 2
  %623 = extractvalue %dx.types.ResRet.f32 %619, 3
  br label %624

; <label>:624                                     ; preds = %618, %612
  %625 = phi float [ %614, %612 ], [ %620, %618 ]
  %626 = phi float [ %615, %612 ], [ %621, %618 ]
  %627 = phi float [ %616, %612 ], [ %622, %618 ]
  %628 = phi float [ %617, %612 ], [ %623, %618 ]
  %629 = extractvalue %dx.types.CBufRet.f32 %603, 3
  %630 = fmul fast float %629, %625
  %631 = extractvalue %dx.types.CBufRet.f32 %598, 2
  %632 = fadd fast float %630, %631
  %633 = fmul fast float %629, %626
  %634 = fadd fast float %633, %631
  %635 = fmul fast float %629, %627
  %636 = fadd fast float %635, %631
  %637 = and i32 %596, 31
  %638 = shl i32 1, %637
  %639 = uitofp i32 %638 to float
  %640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %641 = extractvalue %dx.types.CBufRet.f32 %640, 3
  %642 = fdiv fast float 1.000000e+00, %641
  %643 = fmul fast float %642, %639
  %644 = fmul fast float %643, %280
  %645 = fadd fast float %644, %511
  %646 = fcmp fast oeq float %628, 0.000000e+00
  %647 = fcmp fast ogt float %511, %634
  %648 = fcmp fast ogt float %645, %634
  %649 = and i1 %647, %648
  %650 = or i1 %646, %649
  br i1 %650, label %651, label %655, !dx.controlflow.hints !51

; <label>:651                                     ; preds = %624
  %652 = add nsw i32 %596, 1
  %653 = add nsw i32 %529, -1
  %654 = call i32 @dx.op.binary.i32(i32 38, i32 %652, i32 %653)  ; IMin(a,b)
  br label %685

; <label>:655                                     ; preds = %624
  %656 = fcmp fast olt float %511, %636
  %657 = fcmp fast olt float %645, %636
  %658 = and i1 %656, %657
  br i1 %658, label %659, label %663, !dx.controlflow.hints !52

; <label>:659                                     ; preds = %655
  %660 = add nsw i32 %596, 1
  %661 = add nsw i32 %529, -1
  %662 = call i32 @dx.op.binary.i32(i32 38, i32 %660, i32 %661)  ; IMin(a,b)
  br label %685

; <label>:663                                     ; preds = %655
  %664 = fcmp fast olt float %511, %632
  %665 = fcmp fast olt float %645, %632
  %666 = and i1 %664, %665
  br i1 %666, label %667, label %675, !dx.controlflow.hints !53

; <label>:667                                     ; preds = %663
  %668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %669 = extractvalue %dx.types.CBufRet.f32 %668, 3
  %670 = extractvalue %dx.types.CBufRet.f32 %603, 2
  %671 = fcmp fast une float %669, %670
  br i1 %671, label %672, label %679, !dx.controlflow.hints !54

; <label>:672                                     ; preds = %667
  %673 = fsub fast float %511, %636
  %674 = call float @dx.op.binary.f32(i32 36, float %643, float %673)  ; FMin(a,b)
  br label %679

; <label>:675                                     ; preds = %663
  %676 = add nsw i32 %596, -1
  %677 = icmp sgt i32 %596, 1
  br i1 %677, label %595, label %678

; <label>:678                                     ; preds = %675
  br label %679

; <label>:679                                     ; preds = %678, %672, %667, %592
  %680 = phi float [ %674, %672 ], [ %643, %667 ], [ 0.000000e+00, %592 ], [ 0.000000e+00, %678 ]
  %681 = phi i32 [ %596, %672 ], [ %596, %667 ], [ %514, %592 ], [ %676, %678 ]
  %682 = add nsw i32 %681, 1
  %683 = add nsw i32 %529, -1
  %684 = call i32 @dx.op.binary.i32(i32 38, i32 %682, i32 %683)  ; IMin(a,b)
  br label %685

; <label>:685                                     ; preds = %679, %659, %651, %590, %586, %533
  %686 = phi float [ %534, %533 ], [ %643, %651 ], [ %643, %659 ], [ %680, %679 ], [ 0x47EFFFFFE0000000, %590 ], [ %587, %586 ]
  %687 = phi i32 [ %367, %533 ], [ %367, %651 ], [ %367, %659 ], [ %367, %679 ], [ 0, %590 ], [ %367, %586 ]
  %688 = phi i32 [ %514, %533 ], [ %654, %651 ], [ %662, %659 ], [ %684, %679 ], [ %514, %590 ], [ %514, %586 ]
  %689 = icmp ne i32 %687, 0
  %690 = zext i1 %689 to i32
  %691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %692 = extractvalue %dx.types.CBufRet.f32 %691, 2
  %693 = call float @dx.op.binary.f32(i32 35, float %686, float %692)  ; FMax(a,b)
  %694 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %693)  ; FMin(a,b)
  br label %695

; <label>:695                                     ; preds = %685, %504
  %696 = phi i32 [ %690, %685 ], [ 0, %504 ]
  %697 = phi float [ %694, %685 ], [ 0x47EFFFFFE0000000, %504 ]
  %698 = phi i32 [ %688, %685 ], [ %514, %504 ]
  %699 = icmp eq i32 %394, 0
  br i1 %699, label %712, label %700, !dx.controlflow.hints !55

; <label>:700                                     ; preds = %695
  %701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %702 = extractvalue %dx.types.CBufRet.f32 %701, 3
  %703 = extractvalue %dx.types.CBufRet.f32 %701, 2
  %704 = fmul fast float %702, %512
  %705 = fdiv fast float %704, %482
  %706 = fadd fast float %705, 1.000000e+00
  %707 = call float @dx.op.unary.f32(i32 23, float %706)  ; Log(value)
  %708 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %707)  ; FMin(a,b)
  %709 = fmul fast float %703, %482
  %710 = fmul fast float %709, %708
  %711 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %710)  ; FMin(a,b)
  br label %712

; <label>:712                                     ; preds = %700, %695
  %713 = phi float [ %711, %700 ], [ 0x47EFFFFFE0000000, %695 ]
  %714 = icmp eq i32 %454, 0
  br i1 %714, label %771, label %715, !dx.controlflow.hints !56

; <label>:715                                     ; preds = %712
  %716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %717 = extractvalue %dx.types.CBufRet.f32 %716, 0
  %718 = extractvalue %dx.types.CBufRet.f32 %716, 1
  %719 = extractvalue %dx.types.CBufRet.f32 %716, 2
  %720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %721 = extractvalue %dx.types.CBufRet.f32 %720, 0
  %722 = extractvalue %dx.types.CBufRet.f32 %720, 1
  %723 = extractvalue %dx.types.CBufRet.f32 %720, 2
  %724 = fsub fast float %509, %721
  %725 = fsub fast float %510, %722
  %726 = fsub fast float %511, %723
  %727 = fmul fast float %724, %717
  %728 = fmul fast float %725, %718
  %729 = fmul fast float %726, %719
  %730 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %731 = extractvalue %dx.types.CBufRet.i32 %730, 3
  %732 = icmp eq i32 %731, 0
  br i1 %732, label %736, label %733, !dx.controlflow.hints !57

; <label>:733                                     ; preds = %715
  %734 = call float @dx.op.unary.f32(i32 22, float %727)  ; Frc(value)
  %735 = call float @dx.op.unary.f32(i32 22, float %728)  ; Frc(value)
  br label %736

; <label>:736                                     ; preds = %733, %715
  %737 = phi float [ %734, %733 ], [ %727, %715 ]
  %738 = phi float [ %735, %733 ], [ %728, %715 ]
  %739 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %15, float %737, float %738, float %729, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %740 = extractvalue %dx.types.ResRet.f32 %739, 0
  %741 = fmul fast float %740, 2.000000e+00
  %742 = fadd fast float %741, -1.000000e+00
  %743 = extractvalue %dx.types.CBufRet.f32 %716, 3
  %744 = fmul fast float %742, %743
  %745 = fcmp fast olt float %744, 0.000000e+00
  %746 = fcmp fast oge float %729, 0.000000e+00
  %747 = fcmp fast ole float %729, 1.000000e+00
  br i1 %732, label %750, label %748, !dx.controlflow.hints !58

; <label>:748                                     ; preds = %736
  %749 = and i1 %746, %747
  br label %760

; <label>:750                                     ; preds = %736
  %751 = fcmp fast oge float %727, 0.000000e+00
  %752 = fcmp fast oge float %728, 0.000000e+00
  %753 = and i1 %751, %752
  %754 = and i1 %746, %753
  %755 = fcmp fast ole float %727, 1.000000e+00
  %756 = fcmp fast ole float %728, 1.000000e+00
  %757 = and i1 %755, %756
  %758 = and i1 %747, %757
  %759 = and i1 %754, %758
  br label %760

; <label>:760                                     ; preds = %750, %748
  %761 = phi i1 [ %749, %748 ], [ %759, %750 ]
  %762 = and i1 %745, %761
  %763 = call float @dx.op.unary.f32(i32 6, float %744)  ; FAbs(value)
  %764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %765 = extractvalue %dx.types.CBufRet.f32 %764, 1
  %766 = extractvalue %dx.types.CBufRet.f32 %764, 0
  %767 = call float @dx.op.binary.f32(i32 35, float %763, float %766)  ; FMax(a,b)
  %768 = select i1 %762, float %765, float %767
  %769 = zext i1 %762 to i32
  %770 = call float @dx.op.binary.f32(i32 36, float %697, float %768)  ; FMin(a,b)
  br label %771

; <label>:771                                     ; preds = %760, %712
  %772 = phi i32 [ %769, %760 ], [ 0, %712 ]
  %773 = phi float [ %770, %760 ], [ %697, %712 ]
  %774 = icmp eq i32 %479, 0
  br i1 %774, label %947, label %775, !dx.controlflow.hints !59

; <label>:775                                     ; preds = %771
  %776 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %777 = extractvalue %dx.types.CBufRet.i32 %776, 1
  %778 = and i32 %777, 1
  %779 = icmp eq i32 %778, 0
  br i1 %779, label %780, label %937, !dx.controlflow.hints !60

; <label>:780                                     ; preds = %775
  %781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %782 = extractvalue %dx.types.CBufRet.f32 %781, 2
  %783 = extractvalue %dx.types.CBufRet.f32 %781, 3
  %784 = fmul fast float %782, %509
  %785 = fmul fast float %783, %510
  %786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %787 = extractvalue %dx.types.CBufRet.f32 %786, 0
  %788 = extractvalue %dx.types.CBufRet.f32 %786, 1
  %789 = fadd fast float %784, %787
  %790 = fadd fast float %785, %788
  %791 = call float @dx.op.unary.f32(i32 7, float %789)  ; Saturate(value)
  %792 = call float @dx.op.unary.f32(i32 7, float %790)  ; Saturate(value)
  %793 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %17, float %791, float %792, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %794 = extractvalue %dx.types.ResRet.f32 %793, 0
  %795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %796 = extractvalue %dx.types.CBufRet.f32 %795, 0
  %797 = fmul fast float %796, %794
  %798 = fsub fast float %789, %791
  %799 = fsub fast float %790, %792
  %800 = extractvalue %dx.types.CBufRet.f32 %781, 0
  %801 = extractvalue %dx.types.CBufRet.f32 %781, 1
  %802 = fmul fast float %800, %798
  %803 = fmul fast float %801, %799
  %804 = fmul fast float %802, %802
  %805 = fmul fast float %803, %803
  %806 = fadd fast float %804, %805
  %807 = call float @dx.op.unary.f32(i32 24, float %806)  ; Sqrt(value)
  %808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %809 = extractvalue %dx.types.CBufRet.f32 %808, 3
  %810 = fmul fast float %809, %807
  %811 = call float @dx.op.unary.f32(i32 7, float %810)  ; Saturate(value)
  %812 = extractvalue %dx.types.CBufRet.f32 %808, 2
  %813 = fsub fast float %812, %797
  %814 = fmul fast float %813, %811
  %815 = extractvalue %dx.types.CBufRet.f32 %795, 1
  %816 = fsub fast float %511, %797
  %817 = fsub fast float %816, %815
  %818 = fsub fast float %817, %814
  %819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %820 = extractvalue %dx.types.CBufRet.f32 %819, 2
  %821 = fsub fast float %818, %820
  %822 = fcmp fast olt float %821, 0.000000e+00
  %823 = call float @dx.op.unary.f32(i32 6, float %821)  ; FAbs(value)
  %824 = extractvalue %dx.types.CBufRet.i32 %776, 0
  %825 = icmp eq i32 %824, 0
  br i1 %825, label %879, label %826

; <label>:826                                     ; preds = %780
  br label %827

; <label>:827                                     ; preds = %866, %826
  %828 = phi i32 [ %872, %866 ], [ 1, %826 ]
  %829 = phi float [ %874, %866 ], [ 0x47EFFFFFE0000000, %826 ]
  %830 = phi i32 [ %875, %866 ], [ 0, %826 ]
  %831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %832 = extractvalue %dx.types.CBufRet.f32 %831, 1
  %833 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %834 = extractvalue %dx.types.CBufRet.i32 %833, 1
  %835 = and i32 %834, 8
  %836 = icmp eq i32 %835, 0
  %837 = fcmp fast ogt float %832, %818
  %838 = or i1 %837, %836
  %839 = add i32 %830, 171
  %840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 %839)  ; CBufferLoadLegacy(handle,regIndex)
  %841 = extractvalue %dx.types.CBufRet.f32 %840, 0
  %842 = extractvalue %dx.types.CBufRet.f32 %840, 1
  %843 = extractvalue %dx.types.CBufRet.f32 %840, 2
  br i1 %838, label %844, label %850, !dx.controlflow.hints !61

; <label>:844                                     ; preds = %827
  %845 = fsub fast float %841, %509
  %846 = fsub fast float %842, %510
  %847 = fmul fast float %845, %845
  %848 = fmul fast float %846, %846
  %849 = fadd fast float %847, %848
  br label %866

; <label>:850                                     ; preds = %827
  %851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %852 = extractvalue %dx.types.CBufRet.f32 %851, 2
  %853 = extractvalue %dx.types.CBufRet.f32 %831, 2
  %854 = fmul fast float %853, %852
  %855 = fsub fast float %854, %832
  %856 = fdiv fast float %843, %855
  %857 = fsub fast float %509, %841
  %858 = fsub fast float %510, %842
  %859 = fsub fast float %818, %832
  %860 = fmul fast float %856, %859
  %861 = fmul fast float %857, %857
  %862 = fmul fast float %858, %858
  %863 = fadd fast float %861, %862
  %864 = fmul fast float %860, %860
  %865 = fadd fast float %863, %864
  br label %866

; <label>:866                                     ; preds = %850, %844
  %867 = phi float [ %849, %844 ], [ %865, %850 ]
  %868 = call float @dx.op.unary.f32(i32 24, float %867)  ; Sqrt(value)
  %869 = fsub float %843, %868
  %870 = fcmp fast olt float %869, 0.000000e+00
  %871 = zext i1 %870 to i32
  %872 = and i32 %871, %828
  %873 = call float @dx.op.unary.f32(i32 6, float %869)  ; FAbs(value)
  %874 = call float @dx.op.binary.f32(i32 36, float %829, float %873)  ; FMin(a,b)
  %875 = add i32 %830, 1
  %876 = extractvalue %dx.types.CBufRet.i32 %833, 0
  %877 = icmp ult i32 %875, %876
  br i1 %877, label %827, label %878

; <label>:878                                     ; preds = %866
  br label %879

; <label>:879                                     ; preds = %878, %780
  %880 = phi i32 [ 1, %780 ], [ %872, %878 ]
  %881 = phi float [ 0x47EFFFFFE0000000, %780 ], [ %874, %878 ]
  br label %882

; <label>:882                                     ; preds = %882, %879
  %883 = phi i32 [ %880, %879 ], [ %922, %882 ]
  %884 = phi float [ 0x47EFFFFFE0000000, %879 ], [ %924, %882 ]
  %885 = phi i32 [ 0, %879 ], [ %925, %882 ]
  %886 = add nuw nsw i32 %885, 191
  %887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 %886)  ; CBufferLoadLegacy(handle,regIndex)
  %888 = extractvalue %dx.types.CBufRet.f32 %887, 0
  %889 = extractvalue %dx.types.CBufRet.f32 %887, 1
  %890 = extractvalue %dx.types.CBufRet.f32 %887, 2
  %891 = add nuw nsw i32 %885, 195
  %892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 %891)  ; CBufferLoadLegacy(handle,regIndex)
  %893 = extractvalue %dx.types.CBufRet.f32 %892, 0
  %894 = extractvalue %dx.types.CBufRet.f32 %892, 1
  %895 = extractvalue %dx.types.CBufRet.f32 %892, 2
  %896 = fsub fast float %509, %888
  %897 = fsub fast float %510, %889
  %898 = fsub fast float %818, %890
  %899 = call float @dx.op.unary.f32(i32 6, float %896)  ; FAbs(value)
  %900 = call float @dx.op.unary.f32(i32 6, float %897)  ; FAbs(value)
  %901 = call float @dx.op.unary.f32(i32 6, float %898)  ; FAbs(value)
  %902 = fsub fast float %899, %893
  %903 = fsub fast float %900, %894
  %904 = fsub fast float %901, %895
  %905 = call float @dx.op.binary.f32(i32 35, float %902, float 0.000000e+00)  ; FMax(a,b)
  %906 = call float @dx.op.binary.f32(i32 35, float %903, float 0.000000e+00)  ; FMax(a,b)
  %907 = call float @dx.op.binary.f32(i32 35, float %904, float 0.000000e+00)  ; FMax(a,b)
  %908 = fmul fast float %905, %905
  %909 = fmul fast float %906, %906
  %910 = fadd fast float %909, %908
  %911 = fmul fast float %907, %907
  %912 = fadd fast float %910, %911
  %913 = call float @dx.op.unary.f32(i32 24, float %912)  ; Sqrt(value)
  %914 = call float @dx.op.binary.f32(i32 35, float %903, float %904)  ; FMax(a,b)
  %915 = call float @dx.op.binary.f32(i32 35, float %902, float %914)  ; FMax(a,b)
  %916 = call float @dx.op.binary.f32(i32 36, float %915, float 0.000000e+00)  ; FMin(a,b)
  %917 = fadd fast float %916, %913
  %918 = fsub fast float -0.000000e+00, %917
  %919 = fcmp ogt float %917, -0.000000e+00
  %920 = icmp ne i32 %883, 0
  %921 = and i1 %920, %919
  %922 = zext i1 %921 to i32
  %923 = call float @dx.op.unary.f32(i32 6, float %918)  ; FAbs(value)
  %924 = call float @dx.op.binary.f32(i32 36, float %884, float %923)  ; FMin(a,b)
  %925 = add nuw nsw i32 %885, 1
  %926 = icmp eq i32 %925, 4
  br i1 %926, label %927, label %882

; <label>:927                                     ; preds = %882
  %928 = call float @dx.op.binary.f32(i32 36, float %823, float %924)  ; FMin(a,b)
  %929 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %930 = extractvalue %dx.types.CBufRet.i32 %929, 1
  %931 = and i32 %930, 2
  %932 = icmp ne i32 %931, 0
  %933 = xor i1 %921, %932
  %934 = call float @dx.op.binary.f32(i32 36, float %928, float %881)  ; FMin(a,b)
  %935 = and i1 %933, %822
  %936 = zext i1 %935 to i32
  br label %937

; <label>:937                                     ; preds = %927, %775
  %938 = phi i32 [ %505, %775 ], [ %936, %927 ]
  %939 = phi float [ 0.000000e+00, %775 ], [ %934, %927 ]
  %940 = phi float [ %511, %775 ], [ %818, %927 ]
  %941 = icmp ne i32 %938, 0
  %942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %943 = extractvalue %dx.types.CBufRet.f32 %942, 3
  %944 = call float @dx.op.binary.f32(i32 35, float %939, float %943)  ; FMax(a,b)
  %945 = call float @dx.op.binary.f32(i32 36, float %713, float %944)  ; FMin(a,b)
  %946 = zext i1 %941 to i32
  br label %947

; <label>:947                                     ; preds = %937, %771
  %948 = phi i32 [ %938, %937 ], [ %505, %771 ]
  %949 = phi i32 [ %946, %937 ], [ 0, %771 ]
  %950 = phi float [ %940, %937 ], [ %506, %771 ]
  %951 = phi float [ %945, %937 ], [ %713, %771 ]
  %952 = extractvalue %dx.types.CBufRet.f32 %524, 2
  %953 = fmul fast float %952, %512
  %954 = call float @dx.op.unary.f32(i32 23, float %953)  ; Log(value)
  %955 = fmul fast float %954, 0x3FE62E4300000000
  %956 = call float @dx.op.binary.f32(i32 35, float %955, float 1.000000e+00)  ; FMax(a,b)
  %957 = fmul fast float %956, %951
  %958 = call float @dx.op.binary.f32(i32 36, float %957, float %773)  ; FMin(a,b)
  %959 = call float @dx.op.binary.f32(i32 35, float %958, float %525)  ; FMax(a,b)
  %960 = fsub fast float %482, %512
  %961 = fadd fast float %960, 0x3F1A36E2E0000000
  %962 = call float @dx.op.binary.f32(i32 36, float %961, float %959)  ; FMin(a,b)
  %963 = icmp eq i32 %696, 0
  br i1 %963, label %1060, label %964, !dx.controlflow.hints !62

; <label>:964                                     ; preds = %947
  %965 = fcmp fast olt float %961, %959
  %966 = fmul fast float %280, %223
  %967 = fmul fast float %966, %962
  %968 = fadd fast float %967, %511
  %969 = fmul fast float %280, %224
  %970 = fmul fast float %969, %962
  %971 = fadd fast float %970, %511
  %972 = fmul fast float %280, %225
  %973 = fmul fast float %972, %962
  %974 = fadd fast float %973, %511
  br i1 %965, label %975, label %980, !dx.controlflow.hints !63

; <label>:975                                     ; preds = %964
  %976 = fmul fast float %962, %278
  %977 = fmul fast float %962, %279
  %978 = fadd fast float %976, %509
  %979 = fadd fast float %977, %510
  br label %980

; <label>:980                                     ; preds = %975, %964
  %981 = phi float [ %978, %975 ], [ %509, %964 ]
  %982 = phi float [ %979, %975 ], [ %510, %964 ]
  %983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %984 = extractvalue %dx.types.CBufRet.f32 %983, 0
  %985 = extractvalue %dx.types.CBufRet.f32 %983, 1
  %986 = fsub fast float %981, %984
  %987 = fsub fast float %982, %985
  %988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %989 = extractvalue %dx.types.CBufRet.f32 %988, 0
  %990 = extractvalue %dx.types.CBufRet.f32 %988, 1
  %991 = fmul fast float %986, %989
  %992 = fmul fast float %987, %990
  %993 = fsub fast float 1.000000e+00, %992
  %994 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %995 = extractvalue %dx.types.CBufRet.i32 %994, 3
  %996 = icmp eq i32 %995, 0
  br i1 %996, label %1003, label %997, !dx.controlflow.hints !50

; <label>:997                                     ; preds = %980
  %998 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %16, float %991, float %993, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %999 = extractvalue %dx.types.ResRet.f32 %998, 0
  %1000 = extractvalue %dx.types.ResRet.f32 %998, 1
  %1001 = extractvalue %dx.types.ResRet.f32 %998, 2
  %1002 = extractvalue %dx.types.ResRet.f32 %998, 3
  br label %1009

; <label>:1003                                    ; preds = %980
  %1004 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %991, float %993, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1005 = extractvalue %dx.types.ResRet.f32 %1004, 0
  %1006 = extractvalue %dx.types.ResRet.f32 %1004, 1
  %1007 = extractvalue %dx.types.ResRet.f32 %1004, 2
  %1008 = extractvalue %dx.types.ResRet.f32 %1004, 3
  br label %1009

; <label>:1009                                    ; preds = %1003, %997
  %1010 = phi float [ %999, %997 ], [ %1005, %1003 ]
  %1011 = phi float [ %1000, %997 ], [ %1006, %1003 ]
  %1012 = phi float [ %1001, %997 ], [ %1007, %1003 ]
  %1013 = phi float [ %1002, %997 ], [ %1008, %1003 ]
  %1014 = extractvalue %dx.types.CBufRet.f32 %988, 3
  %1015 = fmul fast float %1014, %1011
  %1016 = fmul fast float %1015, %1010
  %1017 = fsub fast float %1015, %1016
  %1018 = fcmp fast ole float %1017, 0.000000e+00
  %1019 = extractvalue %dx.types.CBufRet.f32 %983, 2
  %1020 = fadd fast float %1016, %1019
  %1021 = fmul fast float %1014, %1012
  %1022 = fadd fast float %1021, %1019
  %1023 = fdiv fast float 1.000000e+00, %1017
  %1024 = select i1 %1018, float 1.000000e+06, float %1023
  %1025 = fsub fast float %968, %1020
  %1026 = fmul fast float %1024, %1025
  %1027 = call float @dx.op.unary.f32(i32 7, float %1026)  ; Saturate(value)
  %1028 = extractvalue %dx.types.CBufRet.f32 %988, 2
  %1029 = fmul fast float %1028, %1027
  %1030 = fsub fast float %1028, %1029
  %1031 = fcmp fast olt float %968, %1022
  %1032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %1033 = extractvalue %dx.types.CBufRet.f32 %1032, 3
  %1034 = select i1 %1031, float %1033, float 1.000000e+00
  %1035 = fmul fast float %1030, %1034
  %1036 = fsub fast float %971, %1020
  %1037 = fmul fast float %1024, %1036
  %1038 = call float @dx.op.unary.f32(i32 7, float %1037)  ; Saturate(value)
  %1039 = fmul fast float %1028, %1038
  %1040 = fsub fast float %1028, %1039
  %1041 = fcmp fast olt float %971, %1022
  %1042 = select i1 %1041, float %1033, float 1.000000e+00
  %1043 = fmul fast float %1040, %1042
  %1044 = fadd fast float %1043, %1035
  %1045 = fsub fast float %974, %1020
  %1046 = fmul fast float %1024, %1045
  %1047 = call float @dx.op.unary.f32(i32 7, float %1046)  ; Saturate(value)
  %1048 = fmul fast float %1028, %1047
  %1049 = fsub fast float %1028, %1048
  %1050 = fcmp fast olt float %974, %1022
  %1051 = select i1 %1050, float %1033, float 1.000000e+00
  %1052 = fmul fast float %1049, %1051
  %1053 = fadd fast float %1044, %1052
  %1054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1055 = extractvalue %dx.types.CBufRet.f32 %1054, 2
  %1056 = fmul fast float %962, 0x3FD5555560000000
  %1057 = fmul fast float %1056, %1013
  %1058 = fmul fast float %1057, %1055
  %1059 = fmul fast float %1058, %1053
  br label %1060

; <label>:1060                                    ; preds = %1009, %947
  %1061 = phi float [ %1059, %1009 ], [ 0.000000e+00, %947 ]
  br i1 %699, label %1108, label %1062, !dx.controlflow.hints !64

; <label>:1062                                    ; preds = %1060
  %1063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %1064 = extractvalue %dx.types.CBufRet.f32 %1063, 0
  %1065 = fsub fast float %1064, %511
  %1066 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %522, float %521, float %1065)  ; Dot3(ax,ay,az,bx,by,bz)
  %1067 = fmul fast float %377, %1066
  %1068 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1067)  ; FMax(a,b)
  %1069 = fcmp fast olt float %280, 0.000000e+00
  %1070 = call float @dx.op.binary.f32(i32 36, float %962, float %1068)  ; FMin(a,b)
  br i1 %1069, label %1072, label %1071, !dx.controlflow.hints !65

; <label>:1071                                    ; preds = %1062
  br label %1072

; <label>:1072                                    ; preds = %1071, %1062
  %1073 = phi float [ 0.000000e+00, %1071 ], [ %1070, %1062 ]
  %1074 = phi float [ %1070, %1071 ], [ %962, %1062 ]
  %1075 = phi float [ %1070, %1071 ], [ 0.000000e+00, %1062 ]
  %1076 = phi float [ %962, %1071 ], [ %1070, %1062 ]
  %1077 = fsub fast float %1074, %1073
  %1078 = extractvalue %dx.types.CBufRet.f32 %1063, 1
  %1079 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %1078)  ; FMin(a,b)
  %1080 = fsub fast float %511, %1064
  %1081 = fmul fast float %1079, 0x3FF7154760000000
  %1082 = fmul fast float %1081, %1080
  %1083 = call float @dx.op.unary.f32(i32 21, float %1082)  ; Exp(value)
  %1084 = fmul fast float %280, 0x3FF7154760000000
  %1085 = fmul fast float %1084, %1076
  %1086 = fmul fast float %1085, %1079
  %1087 = call float @dx.op.unary.f32(i32 21, float %1086)  ; Exp(value)
  %1088 = fmul fast float %1084, %1075
  %1089 = fmul fast float %1088, %1079
  %1090 = call float @dx.op.unary.f32(i32 21, float %1089)  ; Exp(value)
  %1091 = fsub fast float %1087, %1090
  %1092 = fmul fast float %1091, %1083
  %1093 = fmul fast float %1079, %280
  %1094 = fdiv fast float %1092, %1093
  %1095 = fadd fast float %1077, %1094
  %1096 = call float @dx.op.unary.f32(i32 6, float %280)  ; FAbs(value)
  %1097 = fcmp fast olt float %1096, 0x3F0FFB4800000000
  %1098 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1080)  ; FMax(a,b)
  %1099 = fmul fast float %1098, 0x3FF7154760000000
  %1100 = fmul fast float %1099, %1078
  %1101 = call float @dx.op.unary.f32(i32 21, float %1100)  ; Exp(value)
  %1102 = fmul fast float %1101, %962
  %1103 = select i1 %1097, float %1102, float %1095
  %1104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %1105 = extractvalue %dx.types.CBufRet.f32 %1104, 1
  %1106 = fmul fast float %1103, %1105
  %1107 = fadd fast float %1106, %1061
  br label %1108

; <label>:1108                                    ; preds = %1072, %1060
  %1109 = phi float [ %1107, %1072 ], [ %1061, %1060 ]
  %1110 = icmp eq i32 %772, 0
  br i1 %1110, label %1291, label %1111, !dx.controlflow.hints !66

; <label>:1111                                    ; preds = %1108
  %1112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1113 = extractvalue %dx.types.CBufRet.f32 %1112, 3
  %1114 = fmul fast float %1113, %512
  %1115 = fcmp fast oeq float %1114, 0.000000e+00
  br i1 %1115, label %1130, label %1116, !dx.controlflow.hints !67

; <label>:1116                                    ; preds = %1111
  %1117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %1118 = extractvalue %dx.types.CBufRet.f32 %1117, 3
  %1119 = fmul fast float %1118, %1114
  %1120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %1121 = extractvalue %dx.types.CBufRet.f32 %1120, 0
  %1122 = extractvalue %dx.types.CBufRet.f32 %1120, 1
  %1123 = extractvalue %dx.types.CBufRet.f32 %1120, 2
  %1124 = fmul fast float %1121, %1119
  %1125 = fmul fast float %1122, %1119
  %1126 = fmul fast float %1123, %1119
  %1127 = call float @dx.op.unary.f32(i32 23, float %1124)  ; Log(value)
  %1128 = call float @dx.op.unary.f32(i32 23, float %1125)  ; Log(value)
  %1129 = call float @dx.op.unary.f32(i32 23, float %1126)  ; Log(value)
  br label %1130

; <label>:1130                                    ; preds = %1116, %1111
  %1131 = phi float [ %1127, %1116 ], [ 0.000000e+00, %1111 ]
  %1132 = phi float [ %1128, %1116 ], [ 0.000000e+00, %1111 ]
  %1133 = phi float [ %1129, %1116 ], [ 0.000000e+00, %1111 ]
  %1134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %1135 = extractvalue %dx.types.CBufRet.f32 %1134, 0
  %1136 = extractvalue %dx.types.CBufRet.f32 %1134, 1
  %1137 = extractvalue %dx.types.CBufRet.f32 %1134, 2
  %1138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %1139 = extractvalue %dx.types.CBufRet.f32 %1138, 0
  %1140 = extractvalue %dx.types.CBufRet.f32 %1138, 1
  %1141 = extractvalue %dx.types.CBufRet.f32 %1138, 2
  %1142 = fsub fast float %509, %1139
  %1143 = fsub fast float %510, %1140
  %1144 = fsub fast float %511, %1141
  %1145 = fmul fast float %1142, %1135
  %1146 = fmul fast float %1143, %1136
  %1147 = fmul fast float %1144, %1137
  %1148 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %1149 = extractvalue %dx.types.CBufRet.i32 %1148, 0
  %1150 = extractvalue %dx.types.CBufRet.i32 %1148, 1
  %1151 = uitofp i32 %1149 to float
  %1152 = uitofp i32 %1150 to float
  %1153 = fmul fast float %1145, %1151
  %1154 = fmul fast float %1146, %1152
  %1155 = fadd fast float %1153, 5.000000e-01
  %1156 = fadd fast float %1154, 5.000000e-01
  %1157 = call float @dx.op.unary.f32(i32 22, float %1155)  ; Frc(value)
  %1158 = call float @dx.op.unary.f32(i32 22, float %1156)  ; Frc(value)
  %1159 = call float @dx.op.unary.f32(i32 27, float %1155)  ; Round_ni(value)
  %1160 = call float @dx.op.unary.f32(i32 27, float %1156)  ; Round_ni(value)
  %1161 = fadd fast float %1159, 1.000000e+00
  %1162 = fadd fast float %1160, 1.000000e+00
  %1163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %1164 = extractvalue %dx.types.CBufRet.f32 %1163, 0
  %1165 = extractvalue %dx.types.CBufRet.f32 %1163, 1
  %1166 = fmul fast float %1164, %1161
  %1167 = fmul fast float %1165, %1162
  %1168 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %9, %dx.types.Handle %16, float %1166, float %1167, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1169 = extractvalue %dx.types.ResRet.f32 %1168, 0
  %1170 = extractvalue %dx.types.ResRet.f32 %1168, 1
  %1171 = extractvalue %dx.types.ResRet.f32 %1168, 2
  %1172 = extractvalue %dx.types.ResRet.f32 %1168, 3
  %1173 = extractvalue %dx.types.CBufRet.i32 %1148, 2
  %1174 = extractvalue %dx.types.CBufRet.f32 %1163, 2
  %1175 = uitofp i32 %1173 to float
  %1176 = fadd fast float %1175, -1.000000e+00
  %1177 = fmul fast float %1176, %1169
  %1178 = fmul fast float %1176, %1170
  %1179 = fmul fast float %1176, %1171
  %1180 = fmul fast float %1176, %1172
  %1181 = fadd fast float %1177, 5.000000e-01
  %1182 = fadd fast float %1178, 5.000000e-01
  %1183 = fadd fast float %1179, 5.000000e-01
  %1184 = fadd fast float %1180, 5.000000e-01
  %1185 = fptoui float %1181 to i32
  %1186 = fptoui float %1182 to i32
  %1187 = fptoui float %1183 to i32
  %1188 = fptoui float %1184 to i32
  %1189 = uitofp i32 %1185 to float
  %1190 = uitofp i32 %1186 to float
  %1191 = uitofp i32 %1187 to float
  %1192 = uitofp i32 %1188 to float
  %1193 = fadd fast float %1189, 5.000000e-01
  %1194 = fadd fast float %1190, 5.000000e-01
  %1195 = fadd fast float %1191, 5.000000e-01
  %1196 = fadd fast float %1192, 5.000000e-01
  %1197 = fmul fast float %1193, %1174
  %1198 = fmul fast float %1194, %1174
  %1199 = fmul fast float %1195, %1174
  %1200 = fmul fast float %1196, %1174
  %1201 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %1197, float %1147, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1202 = extractvalue %dx.types.ResRet.f32 %1201, 0
  %1203 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %1198, float %1147, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1204 = extractvalue %dx.types.ResRet.f32 %1203, 0
  %1205 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %1199, float %1147, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1206 = extractvalue %dx.types.ResRet.f32 %1205, 0
  %1207 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %1200, float %1147, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1208 = extractvalue %dx.types.ResRet.f32 %1207, 0
  %1209 = fsub fast float %1206, %1208
  %1210 = fmul fast float %1209, %1157
  %1211 = fadd fast float %1210, %1208
  %1212 = fsub fast float %1204, %1202
  %1213 = fmul fast float %1212, %1157
  %1214 = fadd fast float %1213, %1202
  %1215 = fsub fast float %1214, %1211
  %1216 = fmul fast float %1215, %1158
  %1217 = fadd fast float %1216, %1211
  %1218 = fcmp fast ogt float %1217, 0.000000e+00
  br i1 %1218, label %1219, label %1287, !dx.controlflow.hints !68

; <label>:1219                                    ; preds = %1130
  %1220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %1221 = extractvalue %dx.types.CBufRet.f32 %1220, 0
  %1222 = extractvalue %dx.types.CBufRet.f32 %1220, 1
  %1223 = extractvalue %dx.types.CBufRet.f32 %1220, 2
  %1224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %1225 = extractvalue %dx.types.CBufRet.f32 %1224, 0
  %1226 = extractvalue %dx.types.CBufRet.f32 %1224, 1
  %1227 = extractvalue %dx.types.CBufRet.f32 %1224, 2
  %1228 = fmul fast float %1143, %1135
  %1229 = fmul fast float %1144, %1135
  %1230 = fadd fast float %1145, %1225
  %1231 = fadd fast float %1228, %1226
  %1232 = fadd fast float %1229, %1227
  %1233 = fmul fast float %1230, %1221
  %1234 = fmul fast float %1231, %1221
  %1235 = fmul fast float %1232, %1221
  %1236 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %14, float %1233, float %1234, float %1235, float undef, i32 0, i32 0, i32 0, float %1131)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1237 = extractvalue %dx.types.ResRet.f32 %1236, 0
  %1238 = fmul fast float %1230, %1222
  %1239 = fmul fast float %1231, %1222
  %1240 = fmul fast float %1232, %1222
  %1241 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %14, float %1238, float %1239, float %1240, float undef, i32 0, i32 0, i32 0, float %1132)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1242 = extractvalue %dx.types.ResRet.f32 %1241, 1
  %1243 = fmul fast float %1230, %1223
  %1244 = fmul fast float %1231, %1223
  %1245 = fmul fast float %1232, %1223
  %1246 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %14, float %1243, float %1244, float %1245, float undef, i32 0, i32 0, i32 0, float %1133)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1247 = extractvalue %dx.types.ResRet.f32 %1246, 2
  %1248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %1249 = extractvalue %dx.types.CBufRet.f32 %1248, 1
  %1250 = fmul fast float %1242, %1237
  %1251 = fmul fast float %1250, %1247
  %1252 = call float @dx.op.unary.f32(i32 23, float %1251)  ; Log(value)
  %1253 = fmul fast float %1252, %1249
  %1254 = call float @dx.op.unary.f32(i32 21, float %1253)  ; Exp(value)
  %1255 = extractvalue %dx.types.CBufRet.f32 %1248, 2
  %1256 = fmul fast float %1217, %1217
  %1257 = fmul fast float %1256, %1254
  %1258 = fmul fast float %1257, %1255
  %1259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %1260 = extractvalue %dx.types.CBufRet.f32 %1259, 3
  %1261 = fmul fast float %1260, %1258
  %1262 = bitcast float %1261 to i32
  %1263 = sitofp i32 %1262 to float
  %1264 = fptosi float %1263 to i32
  %1265 = bitcast i32 %1264 to float
  %1266 = fsub fast float 1.000000e+00, %1258
  %1267 = bitcast float %1266 to i32
  %1268 = sitofp i32 %1267 to float
  %1269 = fptosi float %1268 to i32
  %1270 = bitcast i32 %1269 to float
  %1271 = fadd fast float %1265, %1270
  %1272 = bitcast float %1271 to i32
  %1273 = sub nsw i32 2129859010, %1272
  %1274 = bitcast i32 %1273 to float
  %1275 = fmul fast float %1274, %1265
  %1276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1277 = extractvalue %dx.types.CBufRet.f32 %1276, 2
  %1278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %1279 = extractvalue %dx.types.CBufRet.f32 %1278, 0
  %1280 = fmul fast float %1275, %1279
  %1281 = fadd fast float %1280, 1.000000e+00
  %1282 = bitcast float %1281 to i32
  %1283 = sub nsw i32 2129859010, %1282
  %1284 = bitcast i32 %1283 to float
  %1285 = fmul fast float %1275, %1277
  %1286 = fmul fast float %1285, %1284
  br label %1287

; <label>:1287                                    ; preds = %1219, %1130
  %1288 = phi float [ %1286, %1219 ], [ %1217, %1130 ]
  %1289 = fmul fast float %1288, %962
  %1290 = fadd fast float %1289, %1109
  br label %1291

; <label>:1291                                    ; preds = %1287, %1108
  %1292 = phi float [ %1290, %1287 ], [ %1109, %1108 ]
  %1293 = icmp eq i32 %949, 0
  br i1 %1293, label %1325, label %1294, !dx.controlflow.hints !69

; <label>:1294                                    ; preds = %1291
  %1295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %1296 = extractvalue %dx.types.CBufRet.f32 %1295, 1
  %1297 = fsub fast float %962, %1296
  %1298 = extractvalue %dx.types.CBufRet.f32 %1295, 3
  %1299 = fmul fast float %1297, %1298
  %1300 = call float @dx.op.unary.f32(i32 7, float %1299)  ; Saturate(value)
  %1301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %1302 = extractvalue %dx.types.CBufRet.f32 %1301, 3
  %1303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1304 = extractvalue %dx.types.CBufRet.f32 %1303, 2
  %1305 = fsub fast float %1304, %950
  %1306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %1307 = extractvalue %dx.types.CBufRet.f32 %1306, 3
  %1308 = fmul fast float %1305, %1307
  %1309 = call float @dx.op.unary.f32(i32 7, float %1308)  ; Saturate(value)
  %1310 = fmul fast float %1309, %1302
  %1311 = extractvalue %dx.types.CBufRet.f32 %1306, 0
  %1312 = fsub fast float %512, %1311
  %1313 = extractvalue %dx.types.CBufRet.f32 %1306, 1
  %1314 = fmul fast float %1312, %1313
  %1315 = call float @dx.op.unary.f32(i32 7, float %1314)  ; Saturate(value)
  %1316 = fsub fast float 1.000000e+00, %1300
  %1317 = fmul fast float %1315, %1316
  %1318 = fadd fast float %1317, %1300
  %1319 = extractvalue %dx.types.CBufRet.f32 %1295, 0
  %1320 = fsub fast float %1310, %1319
  %1321 = fmul fast float %1320, %1318
  %1322 = fadd fast float %1321, %1319
  %1323 = fmul fast float %1322, %962
  %1324 = fadd fast float %1323, %1292
  br label %1325

; <label>:1325                                    ; preds = %1294, %1291
  %1326 = phi float [ %1324, %1294 ], [ %1292, %1291 ]
  %1327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1328 = extractvalue %dx.types.CBufRet.f32 %1327, 1
  %1329 = fcmp fast ogt float %1326, %1328
  br i1 %1329, label %1332, label %1330, !dx.controlflow.hints !70

; <label>:1330                                    ; preds = %1325
  %1331 = fadd fast float %962, %512
  br label %1465

; <label>:1332                                    ; preds = %1325
  %1333 = fmul fast float %1326, 0xBFF7154760000000
  %1334 = call float @dx.op.unary.f32(i32 21, float %1333)  ; Exp(value)
  %1335 = call float @dx.op.unary.f32(i32 7, float %1334)  ; Saturate(value)
  %1336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1337 = extractvalue %dx.types.CBufRet.f32 %1336, 0
  %1338 = extractvalue %dx.types.CBufRet.f32 %1336, 1
  %1339 = extractvalue %dx.types.CBufRet.f32 %1336, 2
  %1340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %1341 = extractvalue %dx.types.CBufRet.f32 %1340, 0
  %1342 = fmul fast float %1341, %1337
  %1343 = fmul fast float %1341, %1338
  %1344 = fmul fast float %1341, %1339
  %1345 = fadd fast float %1342, %509
  %1346 = fadd fast float %1343, %510
  %1347 = fadd fast float %1344, %511
  br i1 %774, label %1418, label %1348, !dx.controlflow.hints !59

; <label>:1348                                    ; preds = %1332
  %1349 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1350 = extractvalue %dx.types.CBufRet.i32 %1349, 1
  %1351 = and i32 %1350, 1
  %1352 = icmp eq i32 %1351, 0
  br i1 %1352, label %1353, label %1418, !dx.controlflow.hints !60

; <label>:1353                                    ; preds = %1348
  %1354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %1355 = extractvalue %dx.types.CBufRet.f32 %1354, 2
  %1356 = extractvalue %dx.types.CBufRet.f32 %1354, 3
  %1357 = fmul fast float %1355, %1345
  %1358 = fmul fast float %1356, %1346
  %1359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %1360 = extractvalue %dx.types.CBufRet.f32 %1359, 0
  %1361 = extractvalue %dx.types.CBufRet.f32 %1359, 1
  %1362 = fadd fast float %1357, %1360
  %1363 = fadd fast float %1358, %1361
  %1364 = call float @dx.op.unary.f32(i32 7, float %1362)  ; Saturate(value)
  %1365 = call float @dx.op.unary.f32(i32 7, float %1363)  ; Saturate(value)
  %1366 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %17, float %1364, float %1365, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1367 = extractvalue %dx.types.ResRet.f32 %1366, 0
  %1368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %1369 = extractvalue %dx.types.CBufRet.f32 %1368, 0
  %1370 = fmul fast float %1369, %1367
  %1371 = fsub fast float %1362, %1364
  %1372 = fsub fast float %1363, %1365
  %1373 = extractvalue %dx.types.CBufRet.f32 %1354, 0
  %1374 = extractvalue %dx.types.CBufRet.f32 %1354, 1
  %1375 = fmul fast float %1373, %1371
  %1376 = fmul fast float %1374, %1372
  %1377 = fmul fast float %1375, %1375
  %1378 = fmul fast float %1376, %1376
  %1379 = fadd fast float %1377, %1378
  %1380 = call float @dx.op.unary.f32(i32 24, float %1379)  ; Sqrt(value)
  %1381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1382 = extractvalue %dx.types.CBufRet.f32 %1381, 3
  %1383 = fmul fast float %1382, %1380
  %1384 = call float @dx.op.unary.f32(i32 7, float %1383)  ; Saturate(value)
  %1385 = extractvalue %dx.types.CBufRet.f32 %1381, 2
  %1386 = fsub fast float %1385, %1370
  %1387 = fmul fast float %1386, %1384
  %1388 = extractvalue %dx.types.CBufRet.f32 %1368, 1
  %1389 = fsub fast float %1347, %1370
  %1390 = fsub fast float %1389, %1388
  %1391 = fsub fast float %1390, %1387
  %1392 = extractvalue %dx.types.CBufRet.i32 %1349, 0
  %1393 = icmp eq i32 %1392, 0
  br i1 %1393, label %1412, label %1394

; <label>:1394                                    ; preds = %1353
  br label %1395

; <label>:1395                                    ; preds = %1407, %1394
  %1396 = phi i32 [ %1408, %1407 ], [ 0, %1394 ]
  %1397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1398 = extractvalue %dx.types.CBufRet.f32 %1397, 1
  %1399 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1400 = extractvalue %dx.types.CBufRet.i32 %1399, 1
  %1401 = and i32 %1400, 8
  %1402 = icmp eq i32 %1401, 0
  %1403 = fcmp fast ogt float %1398, %1391
  %1404 = or i1 %1403, %1402
  br i1 %1404, label %1405, label %1406, !dx.controlflow.hints !61

; <label>:1405                                    ; preds = %1395
  br label %1407

; <label>:1406                                    ; preds = %1395
  br label %1407

; <label>:1407                                    ; preds = %1406, %1405
  %1408 = add i32 %1396, 1
  %1409 = extractvalue %dx.types.CBufRet.i32 %1399, 0
  %1410 = icmp ult i32 %1408, %1409
  br i1 %1410, label %1395, label %1411

; <label>:1411                                    ; preds = %1407
  br label %1412

; <label>:1412                                    ; preds = %1411, %1353
  br label %1413

; <label>:1413                                    ; preds = %1413, %1412
  %1414 = phi i32 [ %1415, %1413 ], [ 0, %1412 ]
  %1415 = add nuw nsw i32 %1414, 1
  %1416 = icmp eq i32 %1415, 4
  br i1 %1416, label %1417, label %1413

; <label>:1417                                    ; preds = %1413
  br label %1418

; <label>:1418                                    ; preds = %1417, %1348, %1332
  %1419 = fsub fast float 1.000000e+00, %1335
  %1420 = fdiv fast float %1326, %962
  %1421 = fadd fast float %962, %512
  %1422 = fmul fast float %512, %512
  %1423 = fmul fast float %1421, %1421
  %1424 = fsub fast float %1422, %1423
  %1425 = fmul fast float %1424, -5.000000e-01
  %1426 = fmul fast float %1425, %1420
  %1427 = fadd fast float %1426, %507
  %1428 = fadd fast float %1326, %515
  %1429 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1430 = extractvalue %dx.types.CBufRet.i32 %1429, 0
  %1431 = icmp eq i32 %1430, 0
  br i1 %1431, label %1458, label %1432, !dx.controlflow.hints !71

; <label>:1432                                    ; preds = %1418
  %1433 = icmp ne i32 %520, 0
  %1434 = zext i1 %1433 to i32
  %1435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1436 = extractvalue %dx.types.CBufRet.f32 %1435, 2
  %1437 = extractvalue %dx.types.CBufRet.f32 %1435, 0
  %1438 = fsub fast float %1421, %1437
  %1439 = fmul fast float %1438, %1436
  %1440 = call float @dx.op.unary.f32(i32 7, float %1439)  ; Saturate(value)
  %1441 = fadd fast float %1440, -5.000000e-01
  %1442 = fmul fast float %1441, 2.000000e+00
  %1443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1444 = extractvalue %dx.types.CBufRet.f32 %1443, 2
  %1445 = fcmp fast olt float %1442, %1444
  br i1 %1445, label %1446, label %1458, !dx.controlflow.hints !72

; <label>:1446                                    ; preds = %1432
  %1447 = fmul fast float %1442, %1442
  %1448 = fmul fast float %1419, %508
  %1449 = fmul fast float %1442, %1448
  %1450 = fmul fast float %1447, %1448
  %1451 = fmul fast float %1449, %1447
  %1452 = fmul fast float %1447, %1447
  %1453 = fmul fast float %1452, %1448
  %1454 = fadd fast float %1449, %516
  %1455 = fadd fast float %1450, %517
  %1456 = fadd fast float %1451, %518
  %1457 = fadd fast float %1453, %519
  br label %1458

; <label>:1458                                    ; preds = %1446, %1432, %1418
  %1459 = phi float [ %516, %1418 ], [ %1454, %1446 ], [ %516, %1432 ]
  %1460 = phi float [ %517, %1418 ], [ %1455, %1446 ], [ %517, %1432 ]
  %1461 = phi float [ %518, %1418 ], [ %1456, %1446 ], [ %518, %1432 ]
  %1462 = phi float [ %519, %1418 ], [ %1457, %1446 ], [ %519, %1432 ]
  %1463 = phi i32 [ %520, %1418 ], [ 1, %1446 ], [ %1434, %1432 ]
  %1464 = fmul fast float %1335, %508
  br label %1465

; <label>:1465                                    ; preds = %1458, %1330
  %1466 = phi float [ %1331, %1330 ], [ %1421, %1458 ]
  %1467 = phi float [ %507, %1330 ], [ %1427, %1458 ]
  %1468 = phi float [ %508, %1330 ], [ %1464, %1458 ]
  %1469 = phi float [ %515, %1330 ], [ %1428, %1458 ]
  %1470 = phi float [ %516, %1330 ], [ %1459, %1458 ]
  %1471 = phi float [ %517, %1330 ], [ %1460, %1458 ]
  %1472 = phi float [ %518, %1330 ], [ %1461, %1458 ]
  %1473 = phi float [ %519, %1330 ], [ %1462, %1458 ]
  %1474 = phi i32 [ %520, %1330 ], [ %1463, %1458 ]
  %1475 = fmul fast float %962, %278
  %1476 = fmul fast float %962, %279
  %1477 = fmul fast float %962, %280
  %1478 = fadd fast float %1475, %509
  %1479 = fadd fast float %1476, %510
  %1480 = fadd fast float %1477, %511
  %1481 = fcmp fast olt float %1466, %482
  %1482 = extractvalue %dx.types.CBufRet.f32 %1327, 2
  %1483 = fcmp fast olt float %1482, %1468
  %1484 = and i1 %1481, %1483
  br i1 %1484, label %504, label %1485

; <label>:1485                                    ; preds = %1465
  %1486 = uitofp i32 %523 to float
  br label %1487

; <label>:1487                                    ; preds = %1485, %478
  %1488 = phi float [ 0.000000e+00, %478 ], [ %1467, %1485 ]
  %1489 = phi float [ 1.000000e+00, %478 ], [ %1468, %1485 ]
  %1490 = phi float [ 0.000000e+00, %478 ], [ %1486, %1485 ]
  %1491 = phi float [ 0.000000e+00, %478 ], [ %1469, %1485 ]
  %1492 = phi float [ 0.000000e+00, %478 ], [ %1470, %1485 ]
  %1493 = phi float [ 0.000000e+00, %478 ], [ %1471, %1485 ]
  %1494 = phi float [ 0.000000e+00, %478 ], [ %1472, %1485 ]
  %1495 = phi float [ 0.000000e+00, %478 ], [ %1473, %1485 ]
  %1496 = phi i32 [ 0, %478 ], [ %1474, %1485 ]
  %1497 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1498 = extractvalue %dx.types.CBufRet.i32 %1497, 0
  %1499 = icmp eq i32 %1498, 0
  br i1 %1499, label %1541, label %1500, !dx.controlflow.hints !73

; <label>:1500                                    ; preds = %1487
  %1501 = icmp eq i32 %1496, 0
  br i1 %1501, label %1540, label %1502, !dx.controlflow.hints !74

; <label>:1502                                    ; preds = %1500
  %1503 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1504 = extractvalue %dx.types.CBufRet.i32 %1503, 2
  %1505 = icmp eq i32 %1504, 0
  br i1 %1505, label %1512, label %1506, !dx.controlflow.hints !75

; <label>:1506                                    ; preds = %1502
  %1507 = fsub fast float 1.000000e+00, %1489
  %1508 = fdiv fast float %1492, %1507
  %1509 = fdiv fast float %1493, %1507
  %1510 = fdiv fast float %1494, %1507
  %1511 = fdiv fast float %1495, %1507
  br label %1517

; <label>:1512                                    ; preds = %1502
  %1513 = fadd fast float %1492, %1489
  %1514 = fadd fast float %1493, %1489
  %1515 = fadd fast float %1494, %1489
  %1516 = fadd fast float %1495, %1489
  br label %1517

; <label>:1517                                    ; preds = %1512, %1506
  %1518 = phi float [ %1508, %1506 ], [ %1513, %1512 ]
  %1519 = phi float [ %1509, %1506 ], [ %1514, %1512 ]
  %1520 = phi float [ %1510, %1506 ], [ %1515, %1512 ]
  %1521 = phi float [ %1511, %1506 ], [ %1516, %1512 ]
  %1522 = call float @dx.op.binary.f32(i32 35, float %1518, float -1.000000e+00)  ; FMax(a,b)
  %1523 = call float @dx.op.binary.f32(i32 35, float %1519, float -1.000000e+00)  ; FMax(a,b)
  %1524 = call float @dx.op.binary.f32(i32 35, float %1520, float -1.000000e+00)  ; FMax(a,b)
  %1525 = call float @dx.op.binary.f32(i32 35, float %1521, float -1.000000e+00)  ; FMax(a,b)
  %1526 = call float @dx.op.binary.f32(i32 36, float %1522, float 1.000000e+00)  ; FMin(a,b)
  %1527 = call float @dx.op.binary.f32(i32 36, float %1523, float 1.000000e+00)  ; FMin(a,b)
  %1528 = call float @dx.op.binary.f32(i32 36, float %1524, float 1.000000e+00)  ; FMin(a,b)
  %1529 = call float @dx.op.binary.f32(i32 36, float %1525, float 1.000000e+00)  ; FMin(a,b)
  %1530 = fmul fast float %1526, 1.500000e+00
  %1531 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %1528, float %1530)  ; FMad(a,b,c)
  %1532 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %1527, float 0.000000e+00)  ; FMad(a,b,c)
  %1533 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %1529, float %1532)  ; FMad(a,b,c)
  %1534 = fmul fast float %1526, 0x3FEBB67AE0000000
  %1535 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %1528, float %1534)  ; FMad(a,b,c)
  %1536 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1527, float 0.000000e+00)  ; FMad(a,b,c)
  %1537 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1529, float %1536)  ; FMad(a,b,c)
  %1538 = fadd fast float %1531, 5.000000e-01
  %1539 = fadd fast float %1535, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %20, i32 %21, i32 0, float %1538, float %1533, float %1539, float %1537, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1541

; <label>:1540                                    ; preds = %1500
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %20, i32 %21, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1541

; <label>:1541                                    ; preds = %1540, %1517, %1487
  %1542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %1543 = extractvalue %dx.types.CBufRet.f32 %1542, 0
  %1544 = extractvalue %dx.types.CBufRet.f32 %1542, 1
  %1545 = extractvalue %dx.types.CBufRet.f32 %1542, 2
  %1546 = call float @dx.op.dot3.f32(i32 55, float %278, float %279, float %280, float %1543, float %1544, float %1545)  ; Dot3(ax,ay,az,bx,by,bz)
  %1547 = fmul fast float %1546, %1488
  %1548 = fcmp fast ogt float %1491, 0.000000e+00
  %1549 = fdiv fast float 1.000000e+00, %1491
  %1550 = fmul fast float %1547, %1549
  %1551 = select i1 %1548, float %1550, float %289
  %1552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1553 = extractvalue %dx.types.CBufRet.f32 %1552, 0
  %1554 = extractvalue %dx.types.CBufRet.f32 %1552, 1
  %1555 = extractvalue %dx.types.CBufRet.f32 %1552, 2
  %1556 = fmul fast float %1553, %242
  %1557 = fmul fast float %1554, %242
  %1558 = fmul fast float %1555, %242
  %1559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1560 = extractvalue %dx.types.CBufRet.f32 %1559, 0
  %1561 = extractvalue %dx.types.CBufRet.f32 %1559, 1
  %1562 = extractvalue %dx.types.CBufRet.f32 %1559, 2
  %1563 = fmul fast float %1560, %243
  %1564 = fmul fast float %1561, %243
  %1565 = fmul fast float %1562, %243
  %1566 = fadd fast float %1563, %1556
  %1567 = fadd fast float %1564, %1557
  %1568 = fadd fast float %1565, %1558
  %1569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1570 = extractvalue %dx.types.CBufRet.f32 %1569, 0
  %1571 = extractvalue %dx.types.CBufRet.f32 %1569, 1
  %1572 = extractvalue %dx.types.CBufRet.f32 %1569, 2
  %1573 = fadd fast float %1566, %1570
  %1574 = fadd fast float %1567, %1571
  %1575 = fadd fast float %1568, %1572
  %1576 = fmul fast float %1573, %1551
  %1577 = fmul fast float %1574, %1551
  %1578 = fmul fast float %1575, %1551
  %1579 = call float @dx.op.dot3.f32(i32 55, float %1576, float %1577, float %1578, float %1576, float %1577, float %1578)  ; Dot3(ax,ay,az,bx,by,bz)
  %1580 = call float @dx.op.unary.f32(i32 25, float %1579)  ; Rsqrt(value)
  %1581 = fmul fast float %1580, %1579
  %1582 = fmul fast float %1580, %1576
  %1583 = fmul fast float %1580, %1577
  %1584 = fmul fast float %1580, %1578
  %1585 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1586 = extractvalue %dx.types.CBufRet.i32 %1585, 1
  %1587 = and i32 %1586, 1
  %1588 = icmp ne i32 %1587, 0
  %1589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1590 = extractvalue %dx.types.CBufRet.f32 %1589, 2
  %1591 = fcmp fast ogt float %1590, 0.000000e+00
  %1592 = and i1 %1588, %1591
  br i1 %1592, label %1593, label %1751, !dx.controlflow.hints !76

; <label>:1593                                    ; preds = %1541
  %1594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1595 = extractvalue %dx.types.CBufRet.f32 %1594, 2
  %1596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1597 = extractvalue %dx.types.CBufRet.f32 %1596, 2
  %1598 = fsub fast float %1595, %1597
  %1599 = extractvalue %dx.types.CBufRet.i32 %1585, 0
  %1600 = call i32 @dx.op.binary.i32(i32 40, i32 %1599, i32 3)  ; UMin(a,b)
  %1601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1602 = extractvalue %dx.types.CBufRet.f32 %1601, 0
  %1603 = extractvalue %dx.types.CBufRet.f32 %1601, 1
  %1604 = extractvalue %dx.types.CBufRet.f32 %1596, 0
  %1605 = extractvalue %dx.types.CBufRet.f32 %1596, 1
  %1606 = fsub fast float %1602, %1604
  %1607 = fsub fast float %1603, %1605
  %1608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1609 = extractvalue %dx.types.CBufRet.f32 %1608, 0
  %1610 = fcmp fast ogt float %1609, 0.000000e+00
  %1611 = fsub fast float -0.000000e+00, %1606
  %1612 = fsub fast float -0.000000e+00, %1607
  %1613 = call float @dx.op.dot2.f32(i32 54, float %1582, float %1583, float %1582, float %1583)  ; Dot2(ax,ay,bx,by)
  %1614 = call float @dx.op.dot2.f32(i32 54, float %1582, float %1583, float %1611, float %1612)  ; Dot2(ax,ay,bx,by)
  %1615 = fmul fast float %1614, 2.000000e+00
  %1616 = call float @dx.op.dot2.f32(i32 54, float %1611, float %1612, float %1611, float %1612)  ; Dot2(ax,ay,bx,by)
  %1617 = fmul fast float %1609, %1609
  %1618 = fsub fast float %1616, %1617
  %1619 = fmul fast float %1615, %1615
  %1620 = fmul fast float %1613, 4.000000e+00
  %1621 = fmul fast float %1620, %1618
  %1622 = fsub fast float %1619, %1621
  %1623 = fcmp fast ogt float %1622, 0.000000e+00
  br i1 %1623, label %1624, label %1639, !dx.controlflow.hints !77

; <label>:1624                                    ; preds = %1593
  %1625 = fcmp fast ogt float %1615, 0.000000e+00
  %1626 = call float @dx.op.unary.f32(i32 24, float %1622)  ; Sqrt(value)
  %1627 = fsub fast float -0.000000e+00, %1626
  %1628 = select i1 %1625, float %1626, float %1627
  %1629 = fadd fast float %1628, %1615
  %1630 = fmul float %1629, -5.000000e-01
  %1631 = fdiv fast float %1630, %1613
  %1632 = call float @dx.op.binary.f32(i32 35, float %1631, float 0.000000e+00)  ; FMax(a,b)
  %1633 = call float @dx.op.binary.f32(i32 36, float %1581, float %1632)  ; FMin(a,b)
  %1634 = fdiv fast float %1618, %1630
  %1635 = call float @dx.op.binary.f32(i32 35, float %1634, float 0.000000e+00)  ; FMax(a,b)
  %1636 = call float @dx.op.binary.f32(i32 36, float %1581, float %1635)  ; FMin(a,b)
  %1637 = call float @dx.op.binary.f32(i32 36, float %1633, float %1636)  ; FMin(a,b)
  %1638 = call float @dx.op.binary.f32(i32 35, float %1633, float %1636)  ; FMax(a,b)
  br label %1639

; <label>:1639                                    ; preds = %1624, %1593
  %1640 = phi float [ %1638, %1624 ], [ -1.000000e+00, %1593 ]
  %1641 = phi float [ %1637, %1624 ], [ -1.000000e+00, %1593 ]
  %1642 = phi i1 [ true, %1624 ], [ false, %1593 ]
  %1643 = and i1 %1610, %1642
  br i1 %1643, label %1644, label %1646, !dx.controlflow.hints !78

; <label>:1644                                    ; preds = %1639
  %1645 = fcmp fast oeq float %1641, %1640
  br i1 %1645, label %1751, label %1647, !dx.controlflow.hints !79

; <label>:1646                                    ; preds = %1639
  br i1 %1610, label %1751, label %1647, !dx.controlflow.hints !80

; <label>:1647                                    ; preds = %1646, %1644
  %1648 = phi float [ %1581, %1646 ], [ %1640, %1644 ]
  %1649 = phi float [ 0.000000e+00, %1646 ], [ %1641, %1644 ]
  %1650 = fcmp fast oeq float %1584, 0.000000e+00
  %1651 = fdiv fast float %1598, %1584
  %1652 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1651)  ; FMax(a,b)
  %1653 = select i1 %1650, float %1648, float %1652
  %1654 = call float @dx.op.binary.f32(i32 36, float %1648, float %1653)  ; FMin(a,b)
  %1655 = fcmp fast ogt float %1584, 0.000000e+00
  %1656 = fcmp fast olt float %1598, 0.000000e+00
  br i1 %1655, label %1657, label %1658, !dx.controlflow.hints !81

; <label>:1657                                    ; preds = %1647
  br i1 %1656, label %1751, label %1661, !dx.controlflow.hints !82

; <label>:1658                                    ; preds = %1647
  br i1 %1656, label %1659, label %1661, !dx.controlflow.hints !83

; <label>:1659                                    ; preds = %1658
  %1660 = call float @dx.op.binary.f32(i32 35, float %1649, float %1654)  ; FMax(a,b)
  br label %1661

; <label>:1661                                    ; preds = %1659, %1658, %1657
  %1662 = phi float [ %1660, %1659 ], [ %1649, %1658 ], [ %1649, %1657 ]
  %1663 = getelementptr inbounds [3 x float], [3 x float]* %23, i32 0, i32 0
  store float -1.000000e+00, float* %1663, align 4, !tbaa !84, !noalias !88
  %1664 = getelementptr inbounds [3 x float], [3 x float]* %23, i32 0, i32 1
  store float -1.000000e+00, float* %1664, align 4, !tbaa !84, !noalias !88
  %1665 = getelementptr inbounds [3 x float], [3 x float]* %23, i32 0, i32 2
  store float -1.000000e+00, float* %1665, align 4, !tbaa !84, !noalias !88
  %1666 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 0
  store float -1.000000e+00, float* %1666, align 4, !tbaa !84, !noalias !88
  %1667 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 1
  store float -1.000000e+00, float* %1667, align 4, !tbaa !84, !noalias !88
  %1668 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 2
  store float -1.000000e+00, float* %1668, align 4, !tbaa !84, !noalias !88
  %1669 = icmp sgt i32 %1600, 0
  br i1 %1669, label %1670, label %1728

; <label>:1670                                    ; preds = %1661
  br label %1671

; <label>:1671                                    ; preds = %1718, %1670
  %1672 = phi i32 [ %1719, %1718 ], [ 0, %1670 ]
  %1673 = add nuw i32 %1672, 171
  %1674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 %1673)  ; CBufferLoadLegacy(handle,regIndex)
  %1675 = extractvalue %dx.types.CBufRet.f32 %1674, 0
  %1676 = extractvalue %dx.types.CBufRet.f32 %1674, 1
  %1677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1678 = extractvalue %dx.types.CBufRet.f32 %1677, 0
  %1679 = extractvalue %dx.types.CBufRet.f32 %1677, 1
  %1680 = fsub fast float %1675, %1678
  %1681 = fsub fast float %1676, %1679
  %1682 = extractvalue %dx.types.CBufRet.f32 %1674, 2
  %1683 = fsub fast float -0.000000e+00, %1680
  %1684 = fsub fast float -0.000000e+00, %1681
  %1685 = call float @dx.op.dot2.f32(i32 54, float %1582, float %1583, float %1683, float %1684)  ; Dot2(ax,ay,bx,by)
  %1686 = fmul fast float %1685, 2.000000e+00
  %1687 = call float @dx.op.dot2.f32(i32 54, float %1683, float %1684, float %1683, float %1684)  ; Dot2(ax,ay,bx,by)
  %1688 = fmul fast float %1682, %1682
  %1689 = fsub fast float %1687, %1688
  %1690 = fmul fast float %1686, %1686
  %1691 = fmul fast float %1620, %1689
  %1692 = fsub fast float %1690, %1691
  %1693 = fcmp fast ogt float %1692, 0.000000e+00
  br i1 %1693, label %1694, label %1709, !dx.controlflow.hints !77

; <label>:1694                                    ; preds = %1671
  %1695 = fcmp fast ogt float %1686, 0.000000e+00
  %1696 = call float @dx.op.unary.f32(i32 24, float %1692)  ; Sqrt(value)
  %1697 = fsub fast float -0.000000e+00, %1696
  %1698 = select i1 %1695, float %1696, float %1697
  %1699 = fadd fast float %1698, %1686
  %1700 = fmul float %1699, -5.000000e-01
  %1701 = fdiv fast float %1700, %1613
  %1702 = call float @dx.op.binary.f32(i32 35, float %1701, float 0.000000e+00)  ; FMax(a,b)
  %1703 = call float @dx.op.binary.f32(i32 36, float %1648, float %1702)  ; FMin(a,b)
  %1704 = fdiv fast float %1689, %1700
  %1705 = call float @dx.op.binary.f32(i32 35, float %1704, float 0.000000e+00)  ; FMax(a,b)
  %1706 = call float @dx.op.binary.f32(i32 36, float %1648, float %1705)  ; FMin(a,b)
  %1707 = call float @dx.op.binary.f32(i32 36, float %1703, float %1706)  ; FMin(a,b)
  %1708 = call float @dx.op.binary.f32(i32 35, float %1703, float %1706)  ; FMax(a,b)
  br label %1709

; <label>:1709                                    ; preds = %1694, %1671
  %1710 = phi float [ %1708, %1694 ], [ -1.000000e+00, %1671 ]
  %1711 = phi float [ %1707, %1694 ], [ -1.000000e+00, %1671 ]
  %1712 = phi i1 [ true, %1694 ], [ false, %1671 ]
  br i1 %1712, label %1713, label %1718, !dx.controlflow.hints !99

; <label>:1713                                    ; preds = %1709
  %1714 = call float @dx.op.binary.f32(i32 35, float %1662, float %1711)  ; FMax(a,b)
  %1715 = getelementptr inbounds [3 x float], [3 x float]* %23, i32 0, i32 %1672
  store float %1714, float* %1715, align 4, !tbaa !84, !noalias !88
  %1716 = call float @dx.op.binary.f32(i32 35, float %1662, float %1710)  ; FMax(a,b)
  %1717 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 %1672
  store float %1716, float* %1717, align 4, !tbaa !84, !noalias !88
  br label %1718

; <label>:1718                                    ; preds = %1713, %1709
  %1719 = add nuw nsw i32 %1672, 1
  %1720 = icmp eq i32 %1719, %1600
  br i1 %1720, label %1721, label %1671

; <label>:1721                                    ; preds = %1718
  %1722 = load float, float* %1665, align 4, !tbaa !84, !alias.scope !100, !noalias !103
  %1723 = load float, float* %1664, align 4, !tbaa !84, !alias.scope !106, !noalias !107
  %1724 = load float, float* %1663, align 4, !tbaa !84, !alias.scope !108, !noalias !109
  %1725 = load float, float* %1668, align 4, !tbaa !84, !alias.scope !110, !noalias !113
  %1726 = load float, float* %1667, align 4, !tbaa !84, !alias.scope !116, !noalias !117
  %1727 = load float, float* %1666, align 4, !tbaa !84, !alias.scope !118, !noalias !119
  br label %1728

; <label>:1728                                    ; preds = %1721, %1661
  %1729 = phi float [ -1.000000e+00, %1661 ], [ %1727, %1721 ]
  %1730 = phi float [ -1.000000e+00, %1661 ], [ %1726, %1721 ]
  %1731 = phi float [ -1.000000e+00, %1661 ], [ %1725, %1721 ]
  %1732 = phi float [ -1.000000e+00, %1661 ], [ %1724, %1721 ]
  %1733 = phi float [ -1.000000e+00, %1661 ], [ %1723, %1721 ]
  %1734 = phi float [ -1.000000e+00, %1661 ], [ %1722, %1721 ]
  %1735 = call float @dx.op.binary.f32(i32 36, float %1733, float %1734)  ; FMin(a,b)
  %1736 = call float @dx.op.binary.f32(i32 36, float %1732, float %1735)  ; FMin(a,b)
  %1737 = call float @dx.op.binary.f32(i32 35, float %1732, float %1733)  ; FMax(a,b)
  %1738 = call float @dx.op.binary.f32(i32 36, float %1737, float %1734)  ; FMin(a,b)
  %1739 = call float @dx.op.binary.f32(i32 36, float %1732, float %1733)  ; FMin(a,b)
  %1740 = call float @dx.op.binary.f32(i32 35, float %1739, float %1738)  ; FMax(a,b)
  %1741 = call float @dx.op.binary.f32(i32 35, float %1733, float %1734)  ; FMax(a,b)
  %1742 = call float @dx.op.binary.f32(i32 35, float %1732, float %1741)  ; FMax(a,b)
  store float %1736, float* %1663, align 4, !tbaa !84, !alias.scope !108, !noalias !109
  store float %1740, float* %1664, align 4, !tbaa !84, !alias.scope !106, !noalias !107
  store float %1742, float* %1665, align 4, !tbaa !84, !alias.scope !100, !noalias !103
  %1743 = call float @dx.op.binary.f32(i32 36, float %1730, float %1731)  ; FMin(a,b)
  %1744 = call float @dx.op.binary.f32(i32 36, float %1729, float %1743)  ; FMin(a,b)
  %1745 = call float @dx.op.binary.f32(i32 35, float %1729, float %1730)  ; FMax(a,b)
  %1746 = call float @dx.op.binary.f32(i32 36, float %1745, float %1731)  ; FMin(a,b)
  %1747 = call float @dx.op.binary.f32(i32 36, float %1729, float %1730)  ; FMin(a,b)
  %1748 = call float @dx.op.binary.f32(i32 35, float %1747, float %1746)  ; FMax(a,b)
  %1749 = call float @dx.op.binary.f32(i32 35, float %1730, float %1731)  ; FMax(a,b)
  %1750 = call float @dx.op.binary.f32(i32 35, float %1729, float %1749)  ; FMax(a,b)
  store float %1744, float* %1666, align 4, !tbaa !84, !alias.scope !118, !noalias !119
  store float %1748, float* %1667, align 4, !tbaa !84, !alias.scope !116, !noalias !117
  store float %1750, float* %1668, align 4, !tbaa !84, !alias.scope !110, !noalias !113
  br label %1751

; <label>:1751                                    ; preds = %1728, %1657, %1646, %1644, %1541
  %1752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %1753 = extractvalue %dx.types.CBufRet.f32 %1752, 2
  %1754 = fmul fast float %1753, %1551
  %1755 = call float @dx.op.unary.f32(i32 7, float %1754)  ; Saturate(value)
  %1756 = fptoui float %1490 to i32
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1757 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %22
  store i32 %1756, i32 addrspace(3)* %1757, align 4, !tbaa !120
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1758 = and i32 %22, 63
  %1759 = icmp ult i32 %1758, 32
  br i1 %1759, label %1760, label %1766, !dx.controlflow.hints !122

; <label>:1760                                    ; preds = %1751
  %1761 = add i32 %22, 32
  %1762 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1761
  %1763 = load i32, i32 addrspace(3)* %1762, align 4, !tbaa !120
  %1764 = load i32, i32 addrspace(3)* %1757, align 4, !tbaa !120
  %1765 = call i32 @dx.op.binary.i32(i32 40, i32 %1764, i32 %1763)  ; UMin(a,b)
  store i32 %1765, i32 addrspace(3)* %1757, align 4, !tbaa !120
  br label %1766

; <label>:1766                                    ; preds = %1760, %1751
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1767 = icmp ult i32 %1758, 16
  br i1 %1767, label %1768, label %1774, !dx.controlflow.hints !123

; <label>:1768                                    ; preds = %1766
  %1769 = add i32 %22, 16
  %1770 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1769
  %1771 = load i32, i32 addrspace(3)* %1770, align 4, !tbaa !120
  %1772 = load i32, i32 addrspace(3)* %1757, align 4, !tbaa !120
  %1773 = call i32 @dx.op.binary.i32(i32 40, i32 %1772, i32 %1771)  ; UMin(a,b)
  store i32 %1773, i32 addrspace(3)* %1757, align 4, !tbaa !120
  br label %1774

; <label>:1774                                    ; preds = %1768, %1766
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1775 = icmp ult i32 %1758, 8
  br i1 %1775, label %1776, label %1782, !dx.controlflow.hints !124

; <label>:1776                                    ; preds = %1774
  %1777 = add i32 %22, 8
  %1778 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1777
  %1779 = load i32, i32 addrspace(3)* %1778, align 4, !tbaa !120
  %1780 = load i32, i32 addrspace(3)* %1757, align 4, !tbaa !120
  %1781 = call i32 @dx.op.binary.i32(i32 40, i32 %1780, i32 %1779)  ; UMin(a,b)
  store i32 %1781, i32 addrspace(3)* %1757, align 4, !tbaa !120
  br label %1782

; <label>:1782                                    ; preds = %1776, %1774
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1783 = icmp ult i32 %1758, 4
  br i1 %1783, label %1784, label %1790, !dx.controlflow.hints !125

; <label>:1784                                    ; preds = %1782
  %1785 = add i32 %22, 4
  %1786 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1785
  %1787 = load i32, i32 addrspace(3)* %1786, align 4, !tbaa !120
  %1788 = load i32, i32 addrspace(3)* %1757, align 4, !tbaa !120
  %1789 = call i32 @dx.op.binary.i32(i32 40, i32 %1788, i32 %1787)  ; UMin(a,b)
  store i32 %1789, i32 addrspace(3)* %1757, align 4, !tbaa !120
  br label %1790

; <label>:1790                                    ; preds = %1784, %1782
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1791 = icmp ult i32 %1758, 2
  br i1 %1791, label %1792, label %1798, !dx.controlflow.hints !126

; <label>:1792                                    ; preds = %1790
  %1793 = add i32 %22, 2
  %1794 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1793
  %1795 = load i32, i32 addrspace(3)* %1794, align 4, !tbaa !120
  %1796 = load i32, i32 addrspace(3)* %1757, align 4, !tbaa !120
  %1797 = call i32 @dx.op.binary.i32(i32 40, i32 %1796, i32 %1795)  ; UMin(a,b)
  store i32 %1797, i32 addrspace(3)* %1757, align 4, !tbaa !120
  br label %1798

; <label>:1798                                    ; preds = %1792, %1790
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1799 = icmp eq i32 %1758, 0
  br i1 %1799, label %1800, label %1806, !dx.controlflow.hints !127

; <label>:1800                                    ; preds = %1798
  %1801 = add i32 %22, 1
  %1802 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1801
  %1803 = load i32, i32 addrspace(3)* %1802, align 4, !tbaa !120
  %1804 = load i32, i32 addrspace(3)* %1757, align 4, !tbaa !120
  %1805 = call i32 @dx.op.binary.i32(i32 40, i32 %1804, i32 %1803)  ; UMin(a,b)
  store i32 %1805, i32 addrspace(3)* %1757, align 4, !tbaa !120
  br label %1806

; <label>:1806                                    ; preds = %1800, %1798
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1807 = and i32 %22, -64
  %1808 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1807
  %1809 = load i32, i32 addrspace(3)* %1808, align 4, !tbaa !120
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %1756, i32 addrspace(3)* %1757, align 4, !tbaa !120
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %1759, label %1810, label %1816, !dx.controlflow.hints !128

; <label>:1810                                    ; preds = %1806
  %1811 = add i32 %22, 32
  %1812 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1811
  %1813 = load i32, i32 addrspace(3)* %1812, align 4, !tbaa !120
  %1814 = load i32, i32 addrspace(3)* %1757, align 4, !tbaa !120
  %1815 = call i32 @dx.op.binary.i32(i32 39, i32 %1814, i32 %1813)  ; UMax(a,b)
  store i32 %1815, i32 addrspace(3)* %1757, align 4, !tbaa !120
  br label %1816

; <label>:1816                                    ; preds = %1810, %1806
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1767, label %1817, label %1823, !dx.controlflow.hints !129

; <label>:1817                                    ; preds = %1816
  %1818 = add i32 %22, 16
  %1819 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1818
  %1820 = load i32, i32 addrspace(3)* %1819, align 4, !tbaa !120
  %1821 = load i32, i32 addrspace(3)* %1757, align 4, !tbaa !120
  %1822 = call i32 @dx.op.binary.i32(i32 39, i32 %1821, i32 %1820)  ; UMax(a,b)
  store i32 %1822, i32 addrspace(3)* %1757, align 4, !tbaa !120
  br label %1823

; <label>:1823                                    ; preds = %1817, %1816
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1775, label %1824, label %1830, !dx.controlflow.hints !130

; <label>:1824                                    ; preds = %1823
  %1825 = add i32 %22, 8
  %1826 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1825
  %1827 = load i32, i32 addrspace(3)* %1826, align 4, !tbaa !120
  %1828 = load i32, i32 addrspace(3)* %1757, align 4, !tbaa !120
  %1829 = call i32 @dx.op.binary.i32(i32 39, i32 %1828, i32 %1827)  ; UMax(a,b)
  store i32 %1829, i32 addrspace(3)* %1757, align 4, !tbaa !120
  br label %1830

; <label>:1830                                    ; preds = %1824, %1823
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1783, label %1831, label %1837, !dx.controlflow.hints !131

; <label>:1831                                    ; preds = %1830
  %1832 = add i32 %22, 4
  %1833 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1832
  %1834 = load i32, i32 addrspace(3)* %1833, align 4, !tbaa !120
  %1835 = load i32, i32 addrspace(3)* %1757, align 4, !tbaa !120
  %1836 = call i32 @dx.op.binary.i32(i32 39, i32 %1835, i32 %1834)  ; UMax(a,b)
  store i32 %1836, i32 addrspace(3)* %1757, align 4, !tbaa !120
  br label %1837

; <label>:1837                                    ; preds = %1831, %1830
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1791, label %1838, label %1844, !dx.controlflow.hints !132

; <label>:1838                                    ; preds = %1837
  %1839 = add i32 %22, 2
  %1840 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1839
  %1841 = load i32, i32 addrspace(3)* %1840, align 4, !tbaa !120
  %1842 = load i32, i32 addrspace(3)* %1757, align 4, !tbaa !120
  %1843 = call i32 @dx.op.binary.i32(i32 39, i32 %1842, i32 %1841)  ; UMax(a,b)
  store i32 %1843, i32 addrspace(3)* %1757, align 4, !tbaa !120
  br label %1844

; <label>:1844                                    ; preds = %1838, %1837
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1799, label %1845, label %1851, !dx.controlflow.hints !133

; <label>:1845                                    ; preds = %1844
  %1846 = add i32 %22, 1
  %1847 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1846
  %1848 = load i32, i32 addrspace(3)* %1847, align 4, !tbaa !120
  %1849 = load i32, i32 addrspace(3)* %1757, align 4, !tbaa !120
  %1850 = call i32 @dx.op.binary.i32(i32 39, i32 %1849, i32 %1848)  ; UMax(a,b)
  store i32 %1850, i32 addrspace(3)* %1757, align 4, !tbaa !120
  br label %1851

; <label>:1851                                    ; preds = %1845, %1844
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1852 = load i32, i32 addrspace(3)* %1808, align 4, !tbaa !120
  %1853 = uitofp i32 %1852 to float
  %1854 = uitofp i32 %1809 to float
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %20, i32 %21, i32 undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1856 = extractvalue %dx.types.CBufRet.f32 %1855, 0
  %1857 = fmul fast float %1856, %1490
  %1858 = fmul fast float %1856, %1853
  %1859 = fmul fast float %1856, %1854
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %20, i32 %21, i32 undef, float %1857, float %1858, float %1859, float %1857, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %20, i32 %21, i32 undef, float %1755, float %1755, float %1755, float %1755, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!30 = !{void ()* @cs_fog_raymarching_air_clouds_heightmap_brfog, !"cs_fog_raymarching_air_clouds_heightmap_brfog", null, !4, !31}
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
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 1}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 1}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
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
!76 = distinct !{!76, !"dx.controlflow.hints", i32 1}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 2}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 2}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 2}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 2}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 2}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 2}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 2}
!84 = !{!85, !85, i64 0}
!85 = !{!"float", !86, i64 0}
!86 = !{!"omnipotent char", !87, i64 0}
!87 = !{!"Simple C/C++ TBAA"}
!88 = !{!89, !91, !93, !94, !96, !97, !98}
!89 = distinct !{!89, !90, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!90 = distinct !{!90, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!91 = distinct !{!91, !92, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!92 = distinct !{!92, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!93 = distinct !{!93, !92, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!94 = distinct !{!94, !95, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %scattering"}
!95 = distinct !{!95, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z"}
!96 = distinct !{!96, !95, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %transmission"}
!97 = distinct !{!97, !95, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %depthDensityWeighted"}
!98 = distinct !{!98, !95, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %rawShadowmapData"}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 2}
!100 = !{!101}
!101 = distinct !{!101, !102, !"\01?sort@@YAXAIAM00@Z: %c"}
!102 = distinct !{!102, !"\01?sort@@YAXAIAM00@Z"}
!103 = !{!104, !105, !89, !91, !93, !94, !96, !97, !98}
!104 = distinct !{!104, !102, !"\01?sort@@YAXAIAM00@Z: %a"}
!105 = distinct !{!105, !102, !"\01?sort@@YAXAIAM00@Z: %b"}
!106 = !{!105}
!107 = !{!104, !101, !89, !91, !93, !94, !96, !97, !98}
!108 = !{!104}
!109 = !{!105, !101, !89, !91, !93, !94, !96, !97, !98}
!110 = !{!111}
!111 = distinct !{!111, !112, !"\01?sort@@YAXAIAM00@Z: %c"}
!112 = distinct !{!112, !"\01?sort@@YAXAIAM00@Z"}
!113 = !{!114, !115, !89, !91, !93, !94, !96, !97, !98}
!114 = distinct !{!114, !112, !"\01?sort@@YAXAIAM00@Z: %a"}
!115 = distinct !{!115, !112, !"\01?sort@@YAXAIAM00@Z: %b"}
!116 = !{!115}
!117 = !{!114, !111, !89, !91, !93, !94, !96, !97, !98}
!118 = !{!114}
!119 = !{!115, !111, !89, !91, !93, !94, !96, !97, !98}
!120 = !{!121, !121, i64 0}
!121 = !{!"int", !86, i64 0}
!122 = distinct !{!122, !"dx.controlflow.hints", i32 2}
!123 = distinct !{!123, !"dx.controlflow.hints", i32 2}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 2}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 2}
!126 = distinct !{!126, !"dx.controlflow.hints", i32 2}
!127 = distinct !{!127, !"dx.controlflow.hints", i32 2}
!128 = distinct !{!128, !"dx.controlflow.hints", i32 2}
!129 = distinct !{!129, !"dx.controlflow.hints", i32 2}
!130 = distinct !{!130, !"dx.controlflow.hints", i32 2}
!131 = distinct !{!131, !"dx.controlflow.hints", i32 2}
!132 = distinct !{!132, !"dx.controlflow.hints", i32 2}
!133 = distinct !{!133, !"dx.controlflow.hints", i32 2}

