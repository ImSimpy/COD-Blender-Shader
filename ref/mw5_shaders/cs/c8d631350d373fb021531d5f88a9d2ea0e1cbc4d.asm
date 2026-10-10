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
; shader hash: 4dd786bac1f381860834b60f0cf4255a
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
; Resource bind info for 
; {
;
;   [164 x i8] (type annotation not present)
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb3     1
;                                   cbuffer      NA          NA     CB1            cb0     1
;                                   sampler      NA          NA      S0             s1     1
;                                   sampler      NA          NA      S1             s2     1
;                                   sampler      NA          NA      S2             s3     1
;                                   sampler      NA          NA      S3             s4     1
;                                   sampler      NA          NA      S4             s5     1
;                                   texture     f32          2d      T0            t16     1
;                                   texture     f32          3d      T1             t1     1
;                                   texture     f32          3d      T2             t2     1
;                                   texture     f32          2d      T3             t8     1
;                                   texture     f32          2d      T4             t9     1
;                                   texture     f32          2d      T5            t18     1
;                                   texture  struct         r/o      T6            t25     1
;                                   texture     f32          2d      T7            t13     1
;                                   texture     f32          2d      T8             t0     1
;                                   texture    byte         r/o      T9            t17     1
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
%"class.StructuredBuffer<VolumetricBBoxGpu>" = type { %struct.VolumetricBBoxGpu }
%struct.VolumetricBBoxGpu = type { <3 x float>, i32, <3 x float>, float, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
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

define void @cs_fog_raymarching_air_clouds_heightmap_particles() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %23 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %24 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %25 = alloca [3 x float], align 4
  %26 = alloca [3 x float], align 4
  %27 = add i32 %23, %22
  %28 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 361)  ; CBufferLoadLegacy(handle,regIndex)
  %29 = extractvalue %dx.types.CBufRet.i32 %28, 1
  %30 = add i32 %27, %29
  %31 = lshr i32 %30, 1
  %32 = and i32 %31, 1
  %33 = and i32 %30, 1
  %34 = xor i32 %32, %33
  %35 = shl i32 %22, 1
  %36 = shl i32 %23, 1
  %37 = or i32 %34, %35
  %38 = or i32 %32, %36
  %39 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %40 = extractvalue %dx.types.ResRet.i32 %39, 0
  %41 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %42 = extractvalue %dx.types.ResRet.i32 %41, 0
  %43 = extractvalue %dx.types.ResRet.i32 %41, 1
  %44 = extractvalue %dx.types.ResRet.i32 %41, 2
  %45 = extractvalue %dx.types.ResRet.i32 %41, 3
  %46 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %47 = extractvalue %dx.types.ResRet.i32 %46, 0
  %48 = extractvalue %dx.types.ResRet.i32 %46, 1
  %49 = extractvalue %dx.types.ResRet.i32 %46, 2
  %50 = extractvalue %dx.types.ResRet.i32 %46, 3
  %51 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %52 = extractvalue %dx.types.ResRet.i32 %51, 0
  %53 = extractvalue %dx.types.ResRet.i32 %51, 1
  %54 = extractvalue %dx.types.ResRet.i32 %51, 2
  %55 = extractvalue %dx.types.ResRet.i32 %51, 3
  %56 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %57 = extractvalue %dx.types.CBufRet.f32 %56, 2
  %58 = fmul fast float %57, %57
  %59 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %60 = extractvalue %dx.types.CBufRet.f32 %59, 0
  %61 = extractvalue %dx.types.CBufRet.f32 %59, 1
  %62 = extractvalue %dx.types.CBufRet.f32 %59, 2
  %63 = fmul fast float %62, 0x3FF17B1420000000
  %64 = icmp eq i32 %24, 0
  br i1 %64, label %65, label %206, !dx.controlflow.hints !36

; <label>:65                                      ; preds = %0
  %66 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %67 = extractvalue %dx.types.CBufRet.f32 %66, 0
  %68 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %69 = extractvalue %dx.types.CBufRet.f32 %68, 3
  %70 = extractvalue %dx.types.ResRet.i32 %39, 1
  %71 = and i32 %70, 65535
  %72 = call float @dx.op.legacyF16ToF32(i32 131, i32 %71)  ; LegacyF16ToF32(value)
  %73 = lshr i32 %40, 16
  %74 = call float @dx.op.legacyF16ToF32(i32 131, i32 %73)  ; LegacyF16ToF32(value)
  %75 = and i32 %40, 65535
  %76 = call float @dx.op.legacyF16ToF32(i32 131, i32 %75)  ; LegacyF16ToF32(value)
  %77 = lshr i32 %45, 16
  %78 = call float @dx.op.legacyF16ToF32(i32 131, i32 %77)  ; LegacyF16ToF32(value)
  %79 = and i32 %45, 65535
  %80 = call float @dx.op.legacyF16ToF32(i32 131, i32 %79)  ; LegacyF16ToF32(value)
  %81 = lshr i32 %44, 16
  %82 = call float @dx.op.legacyF16ToF32(i32 131, i32 %81)  ; LegacyF16ToF32(value)
  %83 = and i32 %44, 65535
  %84 = call float @dx.op.legacyF16ToF32(i32 131, i32 %83)  ; LegacyF16ToF32(value)
  %85 = lshr i32 %43, 16
  %86 = call float @dx.op.legacyF16ToF32(i32 131, i32 %85)  ; LegacyF16ToF32(value)
  %87 = lshr i32 %42, 16
  %88 = call float @dx.op.legacyF16ToF32(i32 131, i32 %87)  ; LegacyF16ToF32(value)
  %89 = and i32 %42, 65535
  %90 = call float @dx.op.legacyF16ToF32(i32 131, i32 %89)  ; LegacyF16ToF32(value)
  %91 = lshr i32 %50, 16
  %92 = call float @dx.op.legacyF16ToF32(i32 131, i32 %91)  ; LegacyF16ToF32(value)
  %93 = and i32 %50, 65535
  %94 = call float @dx.op.legacyF16ToF32(i32 131, i32 %93)  ; LegacyF16ToF32(value)
  %95 = lshr i32 %49, 16
  %96 = call float @dx.op.legacyF16ToF32(i32 131, i32 %95)  ; LegacyF16ToF32(value)
  %97 = and i32 %49, 65535
  %98 = call float @dx.op.legacyF16ToF32(i32 131, i32 %97)  ; LegacyF16ToF32(value)
  %99 = lshr i32 %48, 16
  %100 = call float @dx.op.legacyF16ToF32(i32 131, i32 %99)  ; LegacyF16ToF32(value)
  %101 = and i32 %48, 65535
  %102 = call float @dx.op.legacyF16ToF32(i32 131, i32 %101)  ; LegacyF16ToF32(value)
  %103 = and i32 %47, 65535
  %104 = call float @dx.op.legacyF16ToF32(i32 131, i32 %103)  ; LegacyF16ToF32(value)
  %105 = lshr i32 %55, 16
  %106 = call float @dx.op.legacyF16ToF32(i32 131, i32 %105)  ; LegacyF16ToF32(value)
  %107 = and i32 %55, 65535
  %108 = call float @dx.op.legacyF16ToF32(i32 131, i32 %107)  ; LegacyF16ToF32(value)
  %109 = lshr i32 %54, 16
  %110 = call float @dx.op.legacyF16ToF32(i32 131, i32 %109)  ; LegacyF16ToF32(value)
  %111 = and i32 %54, 65535
  %112 = call float @dx.op.legacyF16ToF32(i32 131, i32 %111)  ; LegacyF16ToF32(value)
  %113 = lshr i32 %53, 16
  %114 = call float @dx.op.legacyF16ToF32(i32 131, i32 %113)  ; LegacyF16ToF32(value)
  %115 = and i32 %53, 65535
  %116 = call float @dx.op.legacyF16ToF32(i32 131, i32 %115)  ; LegacyF16ToF32(value)
  %117 = lshr i32 %52, 16
  %118 = call float @dx.op.legacyF16ToF32(i32 131, i32 %117)  ; LegacyF16ToF32(value)
  %119 = and i32 %43, 65535
  %120 = call float @dx.op.legacyF16ToF32(i32 131, i32 %119)  ; LegacyF16ToF32(value)
  %121 = lshr i32 %47, 16
  %122 = call float @dx.op.legacyF16ToF32(i32 131, i32 %121)  ; LegacyF16ToF32(value)
  %123 = and i32 %52, 65535
  %124 = call float @dx.op.legacyF16ToF32(i32 131, i32 %123)  ; LegacyF16ToF32(value)
  %125 = fmul fast float %120, 0x3FD20DD760000000
  %126 = fmul fast float %62, %57
  %127 = fmul fast float %126, %84
  %128 = fmul fast float %62, %62
  %129 = fmul fast float %128, 0x3FEE471020000000
  %130 = fadd fast float %129, 0xBFD42F6020000000
  %131 = fmul fast float %76, %130
  %132 = fmul fast float %82, %60
  %133 = fmul fast float %86, %61
  %134 = fmul fast float %60, %58
  %135 = fmul fast float %134, %63
  %136 = fmul fast float %135, %74
  %137 = fsub fast float -0.000000e+00, %136
  %138 = fmul fast float %61, %58
  %139 = fmul fast float %138, %63
  %140 = fmul fast float %139, %78
  %141 = fmul fast float %60, %60
  %142 = fmul fast float %61, %61
  %143 = fsub fast float %141, %142
  %144 = fmul fast float %143, 0x3FE17B1420000000
  %145 = fmul fast float %144, %72
  %146 = fmul fast float %61, 0x3FF17B1420000000
  %147 = fmul fast float %146, %60
  %148 = fmul fast float %147, %80
  %149 = fadd fast float %133, %132
  %150 = fmul fast float %149, %57
  %151 = fsub fast float %150, %127
  %152 = fmul fast float %151, 0x3FDF454380000000
  %153 = fadd fast float %131, %145
  %154 = fadd fast float %153, %148
  %155 = fmul fast float %154, %58
  %156 = fsub fast float %137, %140
  %157 = fadd fast float %156, %125
  %158 = fadd fast float %157, %152
  %159 = fadd fast float %158, %155
  %160 = fmul fast float %67, %69
  %161 = fmul fast float %160, %159
  %162 = fmul fast float %122, 0x3FD20DD760000000
  %163 = fmul fast float %126, %100
  %164 = fmul fast float %92, %130
  %165 = fmul fast float %98, %60
  %166 = fmul fast float %102, %61
  %167 = fmul fast float %135, %90
  %168 = fsub fast float -0.000000e+00, %167
  %169 = fmul fast float %139, %94
  %170 = fmul fast float %144, %88
  %171 = fmul fast float %147, %96
  %172 = fadd fast float %166, %165
  %173 = fmul fast float %172, %57
  %174 = fsub fast float %173, %163
  %175 = fmul fast float %174, 0x3FDF454380000000
  %176 = fadd fast float %164, %170
  %177 = fadd fast float %176, %171
  %178 = fmul fast float %177, %58
  %179 = fsub fast float %168, %169
  %180 = fadd fast float %179, %162
  %181 = fadd fast float %180, %175
  %182 = fadd fast float %181, %178
  %183 = fmul fast float %160, %182
  %184 = fmul fast float %124, 0x3FD20DD760000000
  %185 = fmul fast float %126, %116
  %186 = fmul fast float %108, %130
  %187 = fmul fast float %114, %60
  %188 = fmul fast float %118, %61
  %189 = fmul fast float %135, %106
  %190 = fsub fast float -0.000000e+00, %189
  %191 = fmul fast float %139, %110
  %192 = fmul fast float %144, %104
  %193 = fmul fast float %147, %112
  %194 = fadd fast float %188, %187
  %195 = fmul fast float %194, %57
  %196 = fsub fast float %195, %185
  %197 = fmul fast float %196, 0x3FDF454380000000
  %198 = fadd fast float %186, %192
  %199 = fadd fast float %198, %193
  %200 = fmul fast float %199, %58
  %201 = fsub fast float %190, %191
  %202 = fadd fast float %201, %184
  %203 = fadd fast float %202, %197
  %204 = fadd fast float %203, %200
  %205 = fmul fast float %160, %204
  br label %206

; <label>:206                                     ; preds = %65, %0
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %207 = uitofp i32 %37 to float
  %208 = uitofp i32 %38 to float
  %209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %210 = extractvalue %dx.types.CBufRet.f32 %209, 2
  %211 = fmul fast float %210, 0x3FE3C6EF40000000
  %212 = frem fast float %207, 2.560000e+02
  %213 = frem fast float %208, 2.560000e+02
  %214 = fptoui float %212 to i32
  %215 = fptoui float %213 to i32
  %216 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %214, i32 %215, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %217 = extractvalue %dx.types.ResRet.f32 %216, 0
  %218 = extractvalue %dx.types.ResRet.f32 %216, 1
  %219 = extractvalue %dx.types.ResRet.f32 %216, 2
  %220 = extractvalue %dx.types.ResRet.f32 %216, 3
  %221 = fadd fast float %217, %211
  %222 = fadd fast float %218, %211
  %223 = fadd fast float %219, %211
  %224 = fadd fast float %220, %211
  %225 = call float @dx.op.unary.f32(i32 22, float %221)  ; Frc(value)
  %226 = call float @dx.op.unary.f32(i32 22, float %222)  ; Frc(value)
  %227 = call float @dx.op.unary.f32(i32 22, float %223)  ; Frc(value)
  %228 = call float @dx.op.unary.f32(i32 22, float %224)  ; Frc(value)
  %229 = fadd fast float %227, %207
  %230 = fadd fast float %228, %208
  %231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %232 = extractvalue %dx.types.CBufRet.f32 %231, 2
  %233 = extractvalue %dx.types.CBufRet.f32 %231, 3
  %234 = fmul fast float %232, %229
  %235 = fmul fast float %233, %230
  %236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %237 = extractvalue %dx.types.CBufRet.f32 %236, 0
  %238 = extractvalue %dx.types.CBufRet.f32 %236, 1
  %239 = extractvalue %dx.types.CBufRet.f32 %236, 2
  %240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %241 = extractvalue %dx.types.CBufRet.f32 %240, 1
  %242 = fmul fast float %234, 2.000000e+00
  %243 = fmul fast float %235, 2.000000e+00
  %244 = fsub fast float 1.000000e+00, %242
  %245 = fsub fast float 1.000000e+00, %243
  %246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %247 = extractvalue %dx.types.CBufRet.f32 %246, 0
  %248 = extractvalue %dx.types.CBufRet.f32 %246, 1
  %249 = extractvalue %dx.types.CBufRet.f32 %246, 2
  %250 = fmul fast float %247, %244
  %251 = fmul fast float %248, %244
  %252 = fmul fast float %249, %244
  %253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %254 = extractvalue %dx.types.CBufRet.f32 %253, 0
  %255 = extractvalue %dx.types.CBufRet.f32 %253, 1
  %256 = extractvalue %dx.types.CBufRet.f32 %253, 2
  %257 = fmul fast float %254, %245
  %258 = fmul fast float %255, %245
  %259 = fmul fast float %256, %245
  %260 = fadd fast float %257, %250
  %261 = fadd fast float %258, %251
  %262 = fadd fast float %259, %252
  %263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %264 = extractvalue %dx.types.CBufRet.f32 %263, 0
  %265 = extractvalue %dx.types.CBufRet.f32 %263, 1
  %266 = extractvalue %dx.types.CBufRet.f32 %263, 2
  %267 = fadd fast float %260, %264
  %268 = fadd fast float %261, %265
  %269 = fadd fast float %262, %266
  %270 = fmul fast float %267, %241
  %271 = fmul fast float %268, %241
  %272 = fmul fast float %269, %241
  %273 = fmul fast float %270, %270
  %274 = fmul fast float %271, %271
  %275 = fadd fast float %273, %274
  %276 = fmul fast float %272, %272
  %277 = fadd fast float %275, %276
  %278 = call float @dx.op.unary.f32(i32 24, float %277)  ; Sqrt(value)
  %279 = fdiv fast float 1.000000e+00, %278
  %280 = fmul fast float %270, %279
  %281 = fmul fast float %271, %279
  %282 = fmul fast float %272, %279
  %283 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %37, i32 %38, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %284 = extractvalue %dx.types.ResRet.f32 %283, 0
  %285 = fcmp fast ogt float %284, -1.000000e+00
  %286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %287 = extractvalue %dx.types.CBufRet.f32 %286, 1
  %288 = select i1 %285, float %287, float 1.000000e+00
  %289 = fadd fast float %284, 1.000000e+00
  %290 = fmul fast float %288, %289
  %291 = call float @dx.op.unary.f32(i32 6, float %290)  ; FAbs(value)
  %292 = fdiv fast float 1.000000e+00, %241
  %293 = fmul fast float %292, %278
  %294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %295 = extractvalue %dx.types.CBufRet.f32 %294, 1
  %296 = fmul fast float %295, %293
  %297 = fmul fast float %293, %291
  %298 = extractvalue %dx.types.CBufRet.f32 %286, 3
  %299 = fcmp fast oge float %291, %298
  %300 = call float @dx.op.binary.f32(i32 36, float %297, float %296)  ; FMin(a,b)
  %301 = select i1 %299, float %296, float %300
  %302 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %303 = extractvalue %dx.types.CBufRet.i32 %302, 3
  %304 = icmp eq i32 %303, 0
  %305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %306 = extractvalue %dx.types.CBufRet.f32 %305, 2
  %307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %308 = extractvalue %dx.types.CBufRet.f32 %307, 2
  %309 = fsub fast float %306, %239
  %310 = fadd fast float %309, %308
  %311 = fsub fast float 0xC7EFFFFFE0000000, %239
  br i1 %304, label %323, label %312, !dx.controlflow.hints !37

; <label>:312                                     ; preds = %206
  %313 = fsub fast float -0.000000e+00, %238
  %314 = fsub fast float -0.000000e+00, %237
  %315 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %314, float %313, float %310)  ; Dot3(ax,ay,az,bx,by,bz)
  %316 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %280, float %281, float %282)  ; Dot3(ax,ay,az,bx,by,bz)
  %317 = fdiv fast float 1.000000e+00, %316
  %318 = fmul fast float %317, %315
  %319 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %314, float %313, float %311)  ; Dot3(ax,ay,az,bx,by,bz)
  %320 = fmul fast float %317, %319
  %321 = call float @dx.op.binary.f32(i32 36, float %318, float %320)  ; FMin(a,b)
  %322 = call float @dx.op.binary.f32(i32 35, float %318, float %320)  ; FMax(a,b)
  br label %356

; <label>:323                                     ; preds = %206
  %324 = extractvalue %dx.types.CBufRet.f32 %305, 0
  %325 = extractvalue %dx.types.CBufRet.f32 %305, 1
  %326 = extractvalue %dx.types.CBufRet.f32 %307, 0
  %327 = extractvalue %dx.types.CBufRet.f32 %307, 1
  %328 = fdiv fast float 1.000000e+00, %280
  %329 = fdiv fast float 1.000000e+00, %281
  %330 = fdiv fast float 1.000000e+00, %282
  %331 = fsub fast float %324, %237
  %332 = fmul fast float %328, %331
  %333 = fadd fast float %331, %326
  %334 = fmul fast float %333, %328
  %335 = call float @dx.op.binary.f32(i32 36, float %332, float %334)  ; FMin(a,b)
  %336 = call float @dx.op.binary.f32(i32 35, float %332, float %334)  ; FMax(a,b)
  %337 = fsub fast float %325, %238
  %338 = fmul fast float %329, %337
  %339 = fadd fast float %337, %327
  %340 = fmul fast float %339, %329
  %341 = call float @dx.op.binary.f32(i32 36, float %338, float %340)  ; FMin(a,b)
  %342 = call float @dx.op.binary.f32(i32 35, float %335, float %341)  ; FMax(a,b)
  %343 = call float @dx.op.binary.f32(i32 35, float %338, float %340)  ; FMax(a,b)
  %344 = call float @dx.op.binary.f32(i32 36, float %336, float %343)  ; FMin(a,b)
  %345 = fmul fast float %330, %311
  %346 = fmul fast float %330, %310
  %347 = call float @dx.op.binary.f32(i32 36, float %345, float %346)  ; FMin(a,b)
  %348 = call float @dx.op.binary.f32(i32 35, float %342, float %347)  ; FMax(a,b)
  %349 = call float @dx.op.binary.f32(i32 35, float %345, float %346)  ; FMax(a,b)
  %350 = call float @dx.op.binary.f32(i32 36, float %344, float %349)  ; FMin(a,b)
  %351 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %348)  ; FMax(a,b)
  %352 = fcmp fast ult float %350, %351
  br i1 %352, label %356, label %353, !dx.controlflow.hints !38

; <label>:353                                     ; preds = %323
  %354 = call float @dx.op.binary.f32(i32 36, float %348, float %350)  ; FMin(a,b)
  %355 = call float @dx.op.binary.f32(i32 35, float %348, float %350)  ; FMax(a,b)
  br label %356

; <label>:356                                     ; preds = %353, %323, %312
  %357 = phi float [ %321, %312 ], [ %354, %353 ], [ 0.000000e+00, %323 ]
  %358 = phi float [ %322, %312 ], [ %355, %353 ], [ 0.000000e+00, %323 ]
  %359 = fcmp fast oeq float %358, 0.000000e+00
  %360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %361 = extractvalue %dx.types.CBufRet.f32 %360, 1
  %362 = fcmp fast olt float %358, %361
  %363 = or i1 %359, %362
  br i1 %363, label %368, label %364, !dx.controlflow.hints !39

; <label>:364                                     ; preds = %356
  %365 = call float @dx.op.binary.f32(i32 35, float %361, float %357)  ; FMax(a,b)
  %366 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %365)  ; FMin(a,b)
  %367 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %358)  ; FMax(a,b)
  br label %368

; <label>:368                                     ; preds = %364, %356
  %369 = phi i32 [ 1, %364 ], [ 0, %356 ]
  %370 = phi float [ %367, %364 ], [ -1.000000e+00, %356 ]
  %371 = phi float [ %366, %364 ], [ 0x47EFFFFFE0000000, %356 ]
  %372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %373 = extractvalue %dx.types.CBufRet.f32 %372, 3
  %374 = fsub fast float -0.000000e+00, %237
  %375 = fsub fast float -0.000000e+00, %238
  %376 = fsub fast float %373, %239
  %377 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %374, float %375, float %376)  ; Dot3(ax,ay,az,bx,by,bz)
  %378 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %280, float %281, float %282)  ; Dot3(ax,ay,az,bx,by,bz)
  %379 = fdiv fast float 1.000000e+00, %378
  %380 = fmul fast float %379, %377
  %381 = fcmp fast olt float %380, 0.000000e+00
  %382 = fcmp fast ogt float %282, 0.000000e+00
  %383 = and i1 %382, %381
  br i1 %383, label %388, label %384, !dx.controlflow.hints !40

; <label>:384                                     ; preds = %368
  %385 = fcmp fast olt float %282, 0.000000e+00
  br i1 %385, label %386, label %388, !dx.controlflow.hints !41

; <label>:386                                     ; preds = %384
  %387 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %380)  ; FMax(a,b)
  br label %388

; <label>:388                                     ; preds = %386, %384, %368
  %389 = phi float [ 0.000000e+00, %368 ], [ %387, %386 ], [ 0.000000e+00, %384 ]
  %390 = phi float [ 0.000000e+00, %368 ], [ 0x47EFFFFFE0000000, %386 ], [ %380, %384 ]
  %391 = fcmp fast oeq float %390, 0.000000e+00
  br i1 %391, label %395, label %392, !dx.controlflow.hints !42

; <label>:392                                     ; preds = %388
  %393 = call float @dx.op.binary.f32(i32 36, float %371, float %389)  ; FMin(a,b)
  %394 = call float @dx.op.binary.f32(i32 35, float %370, float %390)  ; FMax(a,b)
  br label %395

; <label>:395                                     ; preds = %392, %388
  %396 = phi i32 [ 1, %392 ], [ 0, %388 ]
  %397 = phi float [ %394, %392 ], [ %370, %388 ]
  %398 = phi float [ %393, %392 ], [ %371, %388 ]
  %399 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %400 = extractvalue %dx.types.CBufRet.i32 %399, 3
  %401 = icmp eq i32 %400, 0
  %402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %403 = extractvalue %dx.types.CBufRet.f32 %402, 2
  %404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %405 = extractvalue %dx.types.CBufRet.f32 %404, 2
  %406 = fsub fast float %403, %239
  %407 = fadd fast float %406, %405
  br i1 %401, label %415, label %408, !dx.controlflow.hints !43

; <label>:408                                     ; preds = %395
  %409 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %374, float %375, float %407)  ; Dot3(ax,ay,az,bx,by,bz)
  %410 = fmul fast float %379, %409
  %411 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %374, float %375, float %406)  ; Dot3(ax,ay,az,bx,by,bz)
  %412 = fmul fast float %379, %411
  %413 = call float @dx.op.binary.f32(i32 36, float %410, float %412)  ; FMin(a,b)
  %414 = call float @dx.op.binary.f32(i32 35, float %410, float %412)  ; FMax(a,b)
  br label %448

; <label>:415                                     ; preds = %395
  %416 = fdiv fast float 1.000000e+00, %280
  %417 = fdiv fast float 1.000000e+00, %281
  %418 = fdiv fast float 1.000000e+00, %282
  %419 = extractvalue %dx.types.CBufRet.f32 %402, 0
  %420 = extractvalue %dx.types.CBufRet.f32 %402, 1
  %421 = extractvalue %dx.types.CBufRet.f32 %404, 0
  %422 = extractvalue %dx.types.CBufRet.f32 %404, 1
  %423 = fsub fast float %419, %237
  %424 = fmul fast float %423, %416
  %425 = fadd fast float %423, %421
  %426 = fmul fast float %425, %416
  %427 = call float @dx.op.binary.f32(i32 36, float %424, float %426)  ; FMin(a,b)
  %428 = call float @dx.op.binary.f32(i32 35, float %424, float %426)  ; FMax(a,b)
  %429 = fsub fast float %420, %238
  %430 = fmul fast float %429, %417
  %431 = fadd fast float %429, %422
  %432 = fmul fast float %431, %417
  %433 = call float @dx.op.binary.f32(i32 36, float %430, float %432)  ; FMin(a,b)
  %434 = call float @dx.op.binary.f32(i32 35, float %427, float %433)  ; FMax(a,b)
  %435 = call float @dx.op.binary.f32(i32 35, float %430, float %432)  ; FMax(a,b)
  %436 = call float @dx.op.binary.f32(i32 36, float %428, float %435)  ; FMin(a,b)
  %437 = fmul fast float %406, %418
  %438 = fmul fast float %407, %418
  %439 = call float @dx.op.binary.f32(i32 36, float %437, float %438)  ; FMin(a,b)
  %440 = call float @dx.op.binary.f32(i32 35, float %434, float %439)  ; FMax(a,b)
  %441 = call float @dx.op.binary.f32(i32 35, float %437, float %438)  ; FMax(a,b)
  %442 = call float @dx.op.binary.f32(i32 36, float %436, float %441)  ; FMin(a,b)
  %443 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %440)  ; FMax(a,b)
  %444 = fcmp fast ult float %442, %443
  br i1 %444, label %448, label %445, !dx.controlflow.hints !44

; <label>:445                                     ; preds = %415
  %446 = call float @dx.op.binary.f32(i32 36, float %440, float %442)  ; FMin(a,b)
  %447 = call float @dx.op.binary.f32(i32 35, float %440, float %442)  ; FMax(a,b)
  br label %448

; <label>:448                                     ; preds = %445, %415, %408
  %449 = phi float [ %413, %408 ], [ %446, %445 ], [ 0.000000e+00, %415 ]
  %450 = phi float [ %414, %408 ], [ %447, %445 ], [ 0.000000e+00, %415 ]
  %451 = fcmp fast oeq float %450, 0.000000e+00
  br i1 %451, label %455, label %452, !dx.controlflow.hints !45

; <label>:452                                     ; preds = %448
  %453 = call float @dx.op.binary.f32(i32 36, float %398, float %449)  ; FMin(a,b)
  %454 = call float @dx.op.binary.f32(i32 35, float %397, float %450)  ; FMax(a,b)
  br label %455

; <label>:455                                     ; preds = %452, %448
  %456 = phi i32 [ 1, %452 ], [ 0, %448 ]
  %457 = phi float [ %454, %452 ], [ %397, %448 ]
  %458 = phi float [ %453, %452 ], [ %398, %448 ]
  %459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %460 = extractvalue %dx.types.CBufRet.f32 %459, 3
  %461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %462 = extractvalue %dx.types.CBufRet.f32 %461, 0
  %463 = fsub fast float %460, %239
  %464 = fadd fast float %463, %462
  %465 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %374, float %375, float %464)  ; Dot3(ax,ay,az,bx,by,bz)
  %466 = fmul fast float %379, %465
  %467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %468 = extractvalue %dx.types.CBufRet.f32 %467, 2
  %469 = fsub fast float %468, %239
  %470 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %374, float %375, float %469)  ; Dot3(ax,ay,az,bx,by,bz)
  %471 = fmul fast float %379, %470
  %472 = call float @dx.op.binary.f32(i32 36, float %466, float %471)  ; FMin(a,b)
  %473 = call float @dx.op.binary.f32(i32 35, float %466, float %471)  ; FMax(a,b)
  %474 = call float @dx.op.binary.f32(i32 36, float %458, float %472)  ; FMin(a,b)
  %475 = call float @dx.op.binary.f32(i32 35, float %457, float %473)  ; FMax(a,b)
  %476 = fdiv fast float 1.000000e+00, %280
  %477 = fdiv fast float 1.000000e+00, %281
  %478 = fdiv fast float 1.000000e+00, %282
  %479 = call float @dx.op.binary.f32(i32 36, float %301, float %475)  ; FMin(a,b)
  %480 = call float @dx.op.binary.f32(i32 35, float %278, float %474)  ; FMax(a,b)
  %481 = extractvalue %dx.types.CBufRet.f32 %372, 0
  %482 = fmul fast float %226, 2.000000e+00
  %483 = fadd fast float %482, -1.000000e+00
  %484 = fmul fast float %481, %483
  %485 = fadd fast float %484, %480
  %486 = fcmp fast olt float %485, %479
  %487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %488 = extractvalue %dx.types.CBufRet.f32 %487, 2
  %489 = fcmp fast olt float %488, 1.000000e+00
  %490 = and i1 %486, %489
  br i1 %490, label %491, label %1428

; <label>:491                                     ; preds = %455
  %492 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %493 = extractvalue %dx.types.CBufRet.i32 %492, 1
  %494 = add i32 %493, -1
  %495 = fmul fast float %485, %282
  %496 = fadd fast float %495, %239
  %497 = fmul fast float %485, %281
  %498 = fadd fast float %497, %238
  %499 = fmul fast float %485, %280
  %500 = fadd fast float %499, %237
  br label %501

; <label>:501                                     ; preds = %1406, %491
  %502 = phi float [ %798, %1406 ], [ undef, %491 ]
  %503 = phi float [ %799, %1406 ], [ undef, %491 ]
  %504 = phi float [ %800, %1406 ], [ undef, %491 ]
  %505 = phi float [ %801, %1406 ], [ undef, %491 ]
  %506 = phi float [ %1408, %1406 ], [ 0.000000e+00, %491 ]
  %507 = phi float [ %1409, %1406 ], [ 1.000000e+00, %491 ]
  %508 = phi float [ %1419, %1406 ], [ %500, %491 ]
  %509 = phi float [ %1420, %1406 ], [ %498, %491 ]
  %510 = phi float [ %1421, %1406 ], [ %496, %491 ]
  %511 = phi float [ %1407, %1406 ], [ %485, %491 ]
  %512 = phi i32 [ %523, %1406 ], [ 0, %491 ]
  %513 = phi i32 [ %803, %1406 ], [ 10, %491 ]
  %514 = phi i32 [ %695, %1406 ], [ %494, %491 ]
  %515 = phi float [ %1410, %1406 ], [ 0.000000e+00, %491 ]
  %516 = phi float [ %1411, %1406 ], [ 0.000000e+00, %491 ]
  %517 = phi float [ %1412, %1406 ], [ 0.000000e+00, %491 ]
  %518 = phi float [ %1413, %1406 ], [ 0.000000e+00, %491 ]
  %519 = phi float [ %1414, %1406 ], [ 0.000000e+00, %491 ]
  %520 = phi i32 [ %1415, %1406 ], [ 0, %491 ]
  %521 = fsub fast float -0.000000e+00, %509
  %522 = fsub fast float -0.000000e+00, %508
  %523 = add i32 %512, 1
  %524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %525 = extractvalue %dx.types.CBufRet.f32 %524, 0
  %526 = icmp eq i32 %369, 0
  br i1 %526, label %692, label %527, !dx.controlflow.hints !46

; <label>:527                                     ; preds = %501
  %528 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %529 = extractvalue %dx.types.CBufRet.i32 %528, 1
  %530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %531 = extractvalue %dx.types.CBufRet.f32 %530, 1
  %532 = fcmp fast ogt float %531, %511
  br i1 %532, label %533, label %535, !dx.controlflow.hints !47

; <label>:533                                     ; preds = %527
  %534 = fsub fast float %531, %511
  br label %682

; <label>:535                                     ; preds = %527
  %536 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %537 = extractvalue %dx.types.CBufRet.i32 %536, 3
  %538 = icmp eq i32 %537, 0
  %539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %540 = extractvalue %dx.types.CBufRet.f32 %539, 2
  %541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %542 = extractvalue %dx.types.CBufRet.f32 %541, 2
  %543 = fsub fast float %540, %510
  %544 = fadd fast float %543, %542
  %545 = fsub fast float 0xC7EFFFFFE0000000, %510
  br i1 %538, label %553, label %546, !dx.controlflow.hints !37

; <label>:546                                     ; preds = %535
  %547 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %522, float %521, float %544)  ; Dot3(ax,ay,az,bx,by,bz)
  %548 = fmul fast float %379, %547
  %549 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %522, float %521, float %545)  ; Dot3(ax,ay,az,bx,by,bz)
  %550 = fmul fast float %379, %549
  %551 = call float @dx.op.binary.f32(i32 36, float %548, float %550)  ; FMin(a,b)
  %552 = call float @dx.op.binary.f32(i32 35, float %548, float %550)  ; FMax(a,b)
  br label %583

; <label>:553                                     ; preds = %535
  %554 = extractvalue %dx.types.CBufRet.f32 %539, 0
  %555 = extractvalue %dx.types.CBufRet.f32 %539, 1
  %556 = extractvalue %dx.types.CBufRet.f32 %541, 0
  %557 = extractvalue %dx.types.CBufRet.f32 %541, 1
  %558 = fsub fast float %554, %508
  %559 = fmul fast float %476, %558
  %560 = fadd fast float %558, %556
  %561 = fmul fast float %560, %476
  %562 = call float @dx.op.binary.f32(i32 36, float %559, float %561)  ; FMin(a,b)
  %563 = call float @dx.op.binary.f32(i32 35, float %559, float %561)  ; FMax(a,b)
  %564 = fsub fast float %555, %509
  %565 = fmul fast float %477, %564
  %566 = fadd fast float %564, %557
  %567 = fmul fast float %566, %477
  %568 = call float @dx.op.binary.f32(i32 36, float %565, float %567)  ; FMin(a,b)
  %569 = call float @dx.op.binary.f32(i32 35, float %562, float %568)  ; FMax(a,b)
  %570 = call float @dx.op.binary.f32(i32 35, float %565, float %567)  ; FMax(a,b)
  %571 = call float @dx.op.binary.f32(i32 36, float %563, float %570)  ; FMin(a,b)
  %572 = fmul fast float %478, %545
  %573 = fmul fast float %478, %544
  %574 = call float @dx.op.binary.f32(i32 36, float %572, float %573)  ; FMin(a,b)
  %575 = call float @dx.op.binary.f32(i32 35, float %569, float %574)  ; FMax(a,b)
  %576 = call float @dx.op.binary.f32(i32 35, float %572, float %573)  ; FMax(a,b)
  %577 = call float @dx.op.binary.f32(i32 36, float %571, float %576)  ; FMin(a,b)
  %578 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %575)  ; FMax(a,b)
  %579 = fcmp fast ult float %577, %578
  br i1 %579, label %583, label %580, !dx.controlflow.hints !38

; <label>:580                                     ; preds = %553
  %581 = call float @dx.op.binary.f32(i32 36, float %575, float %577)  ; FMin(a,b)
  %582 = call float @dx.op.binary.f32(i32 35, float %575, float %577)  ; FMax(a,b)
  br label %583

; <label>:583                                     ; preds = %580, %553, %546
  %584 = phi float [ %551, %546 ], [ %581, %580 ], [ 0.000000e+00, %553 ]
  %585 = phi float [ %552, %546 ], [ %582, %580 ], [ 0.000000e+00, %553 ]
  %586 = fcmp fast ogt float %584, 0.000000e+00
  br i1 %586, label %682, label %587, !dx.controlflow.hints !48

; <label>:587                                     ; preds = %583
  %588 = fcmp fast ugt float %585, 0.000000e+00
  br i1 %588, label %589, label %682, !dx.controlflow.hints !49

; <label>:589                                     ; preds = %587
  %590 = icmp sgt i32 %514, 0
  br i1 %590, label %591, label %676

; <label>:591                                     ; preds = %589
  br label %592

; <label>:592                                     ; preds = %672, %591
  %593 = phi i32 [ %673, %672 ], [ %514, %591 ]
  %594 = sitofp i32 %593 to float
  %595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %596 = extractvalue %dx.types.CBufRet.f32 %595, 0
  %597 = extractvalue %dx.types.CBufRet.f32 %595, 1
  %598 = fsub fast float %508, %596
  %599 = fsub fast float %509, %597
  %600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %601 = extractvalue %dx.types.CBufRet.f32 %600, 0
  %602 = extractvalue %dx.types.CBufRet.f32 %600, 1
  %603 = fmul fast float %598, %601
  %604 = fmul fast float %599, %602
  %605 = fsub fast float 1.000000e+00, %604
  %606 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %607 = extractvalue %dx.types.CBufRet.i32 %606, 3
  %608 = icmp eq i32 %607, 0
  br i1 %608, label %615, label %609, !dx.controlflow.hints !50

; <label>:609                                     ; preds = %592
  %610 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %17, float %603, float %605, float undef, float undef, i32 0, i32 0, i32 undef, float %594)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %611 = extractvalue %dx.types.ResRet.f32 %610, 0
  %612 = extractvalue %dx.types.ResRet.f32 %610, 1
  %613 = extractvalue %dx.types.ResRet.f32 %610, 2
  %614 = extractvalue %dx.types.ResRet.f32 %610, 3
  br label %621

; <label>:615                                     ; preds = %592
  %616 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %603, float %605, float undef, float undef, i32 0, i32 0, i32 undef, float %594)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %617 = extractvalue %dx.types.ResRet.f32 %616, 0
  %618 = extractvalue %dx.types.ResRet.f32 %616, 1
  %619 = extractvalue %dx.types.ResRet.f32 %616, 2
  %620 = extractvalue %dx.types.ResRet.f32 %616, 3
  br label %621

; <label>:621                                     ; preds = %615, %609
  %622 = phi float [ %611, %609 ], [ %617, %615 ]
  %623 = phi float [ %612, %609 ], [ %618, %615 ]
  %624 = phi float [ %613, %609 ], [ %619, %615 ]
  %625 = phi float [ %614, %609 ], [ %620, %615 ]
  %626 = extractvalue %dx.types.CBufRet.f32 %600, 3
  %627 = fmul fast float %626, %622
  %628 = extractvalue %dx.types.CBufRet.f32 %595, 2
  %629 = fadd fast float %627, %628
  %630 = fmul fast float %626, %623
  %631 = fadd fast float %630, %628
  %632 = fmul fast float %626, %624
  %633 = fadd fast float %632, %628
  %634 = and i32 %593, 31
  %635 = shl i32 1, %634
  %636 = uitofp i32 %635 to float
  %637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %638 = extractvalue %dx.types.CBufRet.f32 %637, 3
  %639 = fdiv fast float 1.000000e+00, %638
  %640 = fmul fast float %639, %636
  %641 = fmul fast float %640, %282
  %642 = fadd fast float %641, %510
  %643 = fcmp fast oeq float %625, 0.000000e+00
  %644 = fcmp fast ogt float %510, %631
  %645 = fcmp fast ogt float %642, %631
  %646 = and i1 %644, %645
  %647 = or i1 %643, %646
  br i1 %647, label %648, label %652, !dx.controlflow.hints !51

; <label>:648                                     ; preds = %621
  %649 = add nsw i32 %593, 1
  %650 = add nsw i32 %529, -1
  %651 = call i32 @dx.op.binary.i32(i32 38, i32 %649, i32 %650)  ; IMin(a,b)
  br label %682

; <label>:652                                     ; preds = %621
  %653 = fcmp fast olt float %510, %633
  %654 = fcmp fast olt float %642, %633
  %655 = and i1 %653, %654
  br i1 %655, label %656, label %660, !dx.controlflow.hints !52

; <label>:656                                     ; preds = %652
  %657 = add nsw i32 %593, 1
  %658 = add nsw i32 %529, -1
  %659 = call i32 @dx.op.binary.i32(i32 38, i32 %657, i32 %658)  ; IMin(a,b)
  br label %682

; <label>:660                                     ; preds = %652
  %661 = fcmp fast olt float %510, %629
  %662 = fcmp fast olt float %642, %629
  %663 = and i1 %661, %662
  br i1 %663, label %664, label %672, !dx.controlflow.hints !53

; <label>:664                                     ; preds = %660
  %665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %666 = extractvalue %dx.types.CBufRet.f32 %665, 3
  %667 = extractvalue %dx.types.CBufRet.f32 %600, 2
  %668 = fcmp fast une float %666, %667
  br i1 %668, label %669, label %676, !dx.controlflow.hints !54

; <label>:669                                     ; preds = %664
  %670 = fsub fast float %510, %633
  %671 = call float @dx.op.binary.f32(i32 36, float %640, float %670)  ; FMin(a,b)
  br label %676

; <label>:672                                     ; preds = %660
  %673 = add nsw i32 %593, -1
  %674 = icmp sgt i32 %593, 1
  br i1 %674, label %592, label %675

; <label>:675                                     ; preds = %672
  br label %676

; <label>:676                                     ; preds = %675, %669, %664, %589
  %677 = phi float [ %671, %669 ], [ %640, %664 ], [ 0.000000e+00, %589 ], [ 0.000000e+00, %675 ]
  %678 = phi i32 [ %593, %669 ], [ %593, %664 ], [ %514, %589 ], [ %673, %675 ]
  %679 = add nsw i32 %678, 1
  %680 = add nsw i32 %529, -1
  %681 = call i32 @dx.op.binary.i32(i32 38, i32 %679, i32 %680)  ; IMin(a,b)
  br label %682

; <label>:682                                     ; preds = %676, %656, %648, %587, %583, %533
  %683 = phi float [ %534, %533 ], [ %640, %648 ], [ %640, %656 ], [ %677, %676 ], [ 0x47EFFFFFE0000000, %587 ], [ %584, %583 ]
  %684 = phi i32 [ %369, %533 ], [ %369, %648 ], [ %369, %656 ], [ %369, %676 ], [ 0, %587 ], [ %369, %583 ]
  %685 = phi i32 [ %514, %533 ], [ %651, %648 ], [ %659, %656 ], [ %681, %676 ], [ %514, %587 ], [ %514, %583 ]
  %686 = icmp ne i32 %684, 0
  %687 = zext i1 %686 to i32
  %688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %689 = extractvalue %dx.types.CBufRet.f32 %688, 2
  %690 = call float @dx.op.binary.f32(i32 35, float %683, float %689)  ; FMax(a,b)
  %691 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %690)  ; FMin(a,b)
  br label %692

; <label>:692                                     ; preds = %682, %501
  %693 = phi i32 [ %687, %682 ], [ 0, %501 ]
  %694 = phi float [ %691, %682 ], [ 0x47EFFFFFE0000000, %501 ]
  %695 = phi i32 [ %685, %682 ], [ %514, %501 ]
  %696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %697 = extractvalue %dx.types.CBufRet.f32 %696, 0
  %698 = extractvalue %dx.types.CBufRet.f32 %696, 1
  %699 = fsub fast float %508, %697
  %700 = fsub fast float %509, %698
  %701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %702 = extractvalue %dx.types.CBufRet.f32 %701, 2
  %703 = extractvalue %dx.types.CBufRet.f32 %701, 3
  %704 = fmul fast float %699, %702
  %705 = fmul fast float %700, %703
  %706 = call float @dx.op.binary.f32(i32 36, float %704, float %705)  ; FMin(a,b)
  %707 = fcmp fast olt float %706, 0.000000e+00
  %708 = call float @dx.op.binary.f32(i32 35, float %704, float %705)  ; FMax(a,b)
  %709 = fcmp fast ogt float %708, 1.000000e+00
  %710 = or i1 %707, %709
  %711 = extractvalue %dx.types.CBufRet.f32 %696, 2
  %712 = fcmp fast olt float %510, %711
  %713 = or i1 %710, %712
  %714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %715 = extractvalue %dx.types.CBufRet.f32 %714, 3
  %716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %717 = extractvalue %dx.types.CBufRet.f32 %716, 0
  %718 = fadd fast float %717, %715
  %719 = fcmp fast ogt float %510, %718
  %720 = or i1 %713, %719
  br i1 %720, label %721, label %750, !dx.controlflow.hints !55

; <label>:721                                     ; preds = %692
  %722 = extractvalue %dx.types.CBufRet.f32 %701, 0
  %723 = extractvalue %dx.types.CBufRet.f32 %701, 1
  %724 = fsub fast float %697, %508
  %725 = fmul fast float %724, %476
  %726 = fadd fast float %724, %722
  %727 = fmul fast float %726, %476
  %728 = call float @dx.op.binary.f32(i32 36, float %725, float %727)  ; FMin(a,b)
  %729 = call float @dx.op.binary.f32(i32 35, float %725, float %727)  ; FMax(a,b)
  %730 = fsub fast float %698, %509
  %731 = fmul fast float %730, %477
  %732 = fadd fast float %730, %723
  %733 = fmul fast float %732, %477
  %734 = call float @dx.op.binary.f32(i32 36, float %731, float %733)  ; FMin(a,b)
  %735 = call float @dx.op.binary.f32(i32 35, float %728, float %734)  ; FMax(a,b)
  %736 = call float @dx.op.binary.f32(i32 35, float %731, float %733)  ; FMax(a,b)
  %737 = call float @dx.op.binary.f32(i32 36, float %729, float %736)  ; FMin(a,b)
  %738 = fsub fast float %711, %510
  %739 = fmul fast float %738, %478
  %740 = fsub fast float %715, %510
  %741 = fadd fast float %740, %717
  %742 = fmul fast float %741, %478
  %743 = call float @dx.op.binary.f32(i32 36, float %739, float %742)  ; FMin(a,b)
  %744 = call float @dx.op.binary.f32(i32 35, float %735, float %743)  ; FMax(a,b)
  %745 = call float @dx.op.binary.f32(i32 35, float %739, float %742)  ; FMax(a,b)
  %746 = call float @dx.op.binary.f32(i32 36, float %737, float %745)  ; FMin(a,b)
  %747 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %744)  ; FMax(a,b)
  %748 = fcmp fast oge float %746, %747
  %749 = select i1 %748, float %744, float 1.000000e+07
  br label %796

; <label>:750                                     ; preds = %692
  %751 = fsub fast float 1.000000e+00, %705
  %752 = icmp eq i32 %513, 0
  br i1 %752, label %781, label %753

; <label>:753                                     ; preds = %750
  br label %754

; <label>:754                                     ; preds = %777, %753
  %755 = phi i32 [ %778, %777 ], [ %513, %753 ]
  %756 = uitofp i32 %755 to float
  %757 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %19, float %704, float %751, float undef, float undef, i32 0, i32 0, i32 undef, float %756)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %758 = extractvalue %dx.types.ResRet.f32 %757, 0
  %759 = extractvalue %dx.types.ResRet.f32 %757, 1
  %760 = extractvalue %dx.types.ResRet.f32 %757, 2
  %761 = fcmp fast oeq float %758, 0.000000e+00
  %762 = fcmp ule float %510, %760
  %763 = fcmp uge float %510, %759
  %764 = or i1 %763, %762
  %765 = or i1 %761, %764
  br i1 %765, label %766, label %777, !dx.controlflow.hints !56

; <label>:766                                     ; preds = %754
  %767 = extractvalue %dx.types.ResRet.f32 %757, 3
  %768 = extractvalue %dx.types.CBufRet.f32 %701, 0
  %769 = and i32 %755, 31
  %770 = lshr i32 1024, %769
  %771 = uitofp i32 %770 to float
  %772 = fdiv fast float %768, %771
  %773 = add i32 %755, 1
  %774 = uitofp i32 %773 to float
  %775 = call float @dx.op.binary.f32(i32 36, float 1.000000e+01, float %774)  ; FMin(a,b)
  %776 = fptosi float %775 to i32
  br label %796

; <label>:777                                     ; preds = %754
  %778 = add i32 %755, -1
  %779 = icmp eq i32 %778, 0
  br i1 %779, label %780, label %754, !llvm.loop !57

; <label>:780                                     ; preds = %777
  br label %781

; <label>:781                                     ; preds = %780, %750
  %782 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %704, float %751, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %783 = extractvalue %dx.types.ResRet.f32 %782, 0
  %784 = extractvalue %dx.types.ResRet.f32 %782, 1
  %785 = extractvalue %dx.types.ResRet.f32 %782, 2
  %786 = extractvalue %dx.types.ResRet.f32 %782, 3
  %787 = extractvalue %dx.types.CBufRet.f32 %701, 0
  %788 = fmul fast float %787, 9.765625e-04
  %789 = fcmp fast oeq float %783, 0.000000e+00
  %790 = fcmp ule float %510, %785
  %791 = fcmp uge float %510, %784
  %792 = or i1 %791, %790
  %793 = or i1 %789, %792
  %794 = zext i1 %793 to i32
  %795 = xor i32 %794, 1
  br label %796

; <label>:796                                     ; preds = %781, %766, %721
  %797 = phi float [ %749, %721 ], [ %772, %766 ], [ %788, %781 ]
  %798 = phi float [ %502, %721 ], [ %758, %766 ], [ %783, %781 ]
  %799 = phi float [ %503, %721 ], [ %759, %766 ], [ %784, %781 ]
  %800 = phi float [ %504, %721 ], [ %760, %766 ], [ %785, %781 ]
  %801 = phi float [ %505, %721 ], [ %767, %766 ], [ %786, %781 ]
  %802 = phi i32 [ 0, %721 ], [ 0, %766 ], [ %795, %781 ]
  %803 = phi i32 [ 10, %721 ], [ %776, %766 ], [ 1, %781 ]
  %804 = icmp eq i32 %802, 0
  %805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %806 = extractvalue %dx.types.CBufRet.f32 %805, 2
  %807 = call float @dx.op.binary.f32(i32 35, float %797, float %806)  ; FMax(a,b)
  %808 = call float @dx.op.binary.f32(i32 36, float %694, float %807)  ; FMin(a,b)
  %809 = icmp eq i32 %396, 0
  br i1 %809, label %822, label %810, !dx.controlflow.hints !59

; <label>:810                                     ; preds = %796
  %811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %812 = extractvalue %dx.types.CBufRet.f32 %811, 3
  %813 = extractvalue %dx.types.CBufRet.f32 %811, 2
  %814 = fmul fast float %812, %511
  %815 = fdiv fast float %814, %479
  %816 = fadd fast float %815, 1.000000e+00
  %817 = call float @dx.op.unary.f32(i32 23, float %816)  ; Log(value)
  %818 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %817)  ; FMin(a,b)
  %819 = fmul fast float %813, %479
  %820 = fmul fast float %819, %818
  %821 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %820)  ; FMin(a,b)
  br label %822

; <label>:822                                     ; preds = %810, %796
  %823 = phi float [ %821, %810 ], [ 0x47EFFFFFE0000000, %796 ]
  %824 = icmp eq i32 %456, 0
  br i1 %824, label %880, label %825, !dx.controlflow.hints !60

; <label>:825                                     ; preds = %822
  %826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %827 = extractvalue %dx.types.CBufRet.f32 %826, 0
  %828 = extractvalue %dx.types.CBufRet.f32 %826, 1
  %829 = extractvalue %dx.types.CBufRet.f32 %826, 2
  %830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %831 = extractvalue %dx.types.CBufRet.f32 %830, 0
  %832 = extractvalue %dx.types.CBufRet.f32 %830, 1
  %833 = extractvalue %dx.types.CBufRet.f32 %830, 2
  %834 = fsub fast float %508, %831
  %835 = fsub fast float %509, %832
  %836 = fsub fast float %510, %833
  %837 = fmul fast float %834, %827
  %838 = fmul fast float %835, %828
  %839 = fmul fast float %836, %829
  %840 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %841 = extractvalue %dx.types.CBufRet.i32 %840, 3
  %842 = icmp eq i32 %841, 0
  br i1 %842, label %846, label %843, !dx.controlflow.hints !61

; <label>:843                                     ; preds = %825
  %844 = call float @dx.op.unary.f32(i32 22, float %837)  ; Frc(value)
  %845 = call float @dx.op.unary.f32(i32 22, float %838)  ; Frc(value)
  br label %846

; <label>:846                                     ; preds = %843, %825
  %847 = phi float [ %844, %843 ], [ %837, %825 ]
  %848 = phi float [ %845, %843 ], [ %838, %825 ]
  %849 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %16, float %847, float %848, float %839, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %850 = extractvalue %dx.types.ResRet.f32 %849, 0
  %851 = fmul fast float %850, 2.000000e+00
  %852 = fadd fast float %851, -1.000000e+00
  %853 = extractvalue %dx.types.CBufRet.f32 %826, 3
  %854 = fmul fast float %852, %853
  %855 = fcmp fast olt float %854, 0.000000e+00
  %856 = fcmp fast oge float %839, 0.000000e+00
  %857 = fcmp fast ole float %839, 1.000000e+00
  br i1 %842, label %860, label %858, !dx.controlflow.hints !62

; <label>:858                                     ; preds = %846
  %859 = and i1 %856, %857
  br label %870

; <label>:860                                     ; preds = %846
  %861 = fcmp fast oge float %837, 0.000000e+00
  %862 = fcmp fast oge float %838, 0.000000e+00
  %863 = and i1 %861, %862
  %864 = and i1 %856, %863
  %865 = fcmp fast ole float %837, 1.000000e+00
  %866 = fcmp fast ole float %838, 1.000000e+00
  %867 = and i1 %865, %866
  %868 = and i1 %857, %867
  %869 = and i1 %864, %868
  br label %870

; <label>:870                                     ; preds = %860, %858
  %871 = phi i1 [ %859, %858 ], [ %869, %860 ]
  %872 = and i1 %855, %871
  %873 = call float @dx.op.unary.f32(i32 6, float %854)  ; FAbs(value)
  %874 = extractvalue %dx.types.CBufRet.f32 %805, 1
  %875 = extractvalue %dx.types.CBufRet.f32 %805, 0
  %876 = call float @dx.op.binary.f32(i32 35, float %873, float %875)  ; FMax(a,b)
  %877 = select i1 %872, float %874, float %876
  %878 = zext i1 %872 to i32
  %879 = call float @dx.op.binary.f32(i32 36, float %808, float %877)  ; FMin(a,b)
  br label %880

; <label>:880                                     ; preds = %870, %822
  %881 = phi i32 [ %878, %870 ], [ 0, %822 ]
  %882 = phi float [ %879, %870 ], [ %808, %822 ]
  %883 = extractvalue %dx.types.CBufRet.f32 %524, 2
  %884 = fmul fast float %883, %511
  %885 = call float @dx.op.unary.f32(i32 23, float %884)  ; Log(value)
  %886 = fmul fast float %885, 0x3FE62E4300000000
  %887 = call float @dx.op.binary.f32(i32 35, float %886, float 1.000000e+00)  ; FMax(a,b)
  %888 = fmul fast float %887, %823
  %889 = call float @dx.op.binary.f32(i32 36, float %888, float %882)  ; FMin(a,b)
  %890 = call float @dx.op.binary.f32(i32 35, float %889, float %525)  ; FMax(a,b)
  %891 = fsub fast float %479, %511
  %892 = fadd fast float %891, 0x3F1A36E2E0000000
  %893 = call float @dx.op.binary.f32(i32 36, float %892, float %890)  ; FMin(a,b)
  %894 = icmp eq i32 %693, 0
  br i1 %894, label %991, label %895, !dx.controlflow.hints !63

; <label>:895                                     ; preds = %880
  %896 = fcmp fast olt float %892, %890
  %897 = fmul fast float %282, %225
  %898 = fmul fast float %897, %893
  %899 = fadd fast float %898, %510
  %900 = fmul fast float %282, %226
  %901 = fmul fast float %900, %893
  %902 = fadd fast float %901, %510
  %903 = fmul fast float %282, %227
  %904 = fmul fast float %903, %893
  %905 = fadd fast float %904, %510
  br i1 %896, label %906, label %911, !dx.controlflow.hints !64

; <label>:906                                     ; preds = %895
  %907 = fmul fast float %893, %280
  %908 = fmul fast float %893, %281
  %909 = fadd fast float %907, %508
  %910 = fadd fast float %908, %509
  br label %911

; <label>:911                                     ; preds = %906, %895
  %912 = phi float [ %909, %906 ], [ %508, %895 ]
  %913 = phi float [ %910, %906 ], [ %509, %895 ]
  %914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %915 = extractvalue %dx.types.CBufRet.f32 %914, 0
  %916 = extractvalue %dx.types.CBufRet.f32 %914, 1
  %917 = fsub fast float %912, %915
  %918 = fsub fast float %913, %916
  %919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %920 = extractvalue %dx.types.CBufRet.f32 %919, 0
  %921 = extractvalue %dx.types.CBufRet.f32 %919, 1
  %922 = fmul fast float %917, %920
  %923 = fmul fast float %918, %921
  %924 = fsub fast float 1.000000e+00, %923
  %925 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %926 = extractvalue %dx.types.CBufRet.i32 %925, 3
  %927 = icmp eq i32 %926, 0
  br i1 %927, label %934, label %928, !dx.controlflow.hints !50

; <label>:928                                     ; preds = %911
  %929 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %17, float %922, float %924, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %930 = extractvalue %dx.types.ResRet.f32 %929, 0
  %931 = extractvalue %dx.types.ResRet.f32 %929, 1
  %932 = extractvalue %dx.types.ResRet.f32 %929, 2
  %933 = extractvalue %dx.types.ResRet.f32 %929, 3
  br label %940

; <label>:934                                     ; preds = %911
  %935 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %922, float %924, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %936 = extractvalue %dx.types.ResRet.f32 %935, 0
  %937 = extractvalue %dx.types.ResRet.f32 %935, 1
  %938 = extractvalue %dx.types.ResRet.f32 %935, 2
  %939 = extractvalue %dx.types.ResRet.f32 %935, 3
  br label %940

; <label>:940                                     ; preds = %934, %928
  %941 = phi float [ %930, %928 ], [ %936, %934 ]
  %942 = phi float [ %931, %928 ], [ %937, %934 ]
  %943 = phi float [ %932, %928 ], [ %938, %934 ]
  %944 = phi float [ %933, %928 ], [ %939, %934 ]
  %945 = extractvalue %dx.types.CBufRet.f32 %919, 3
  %946 = fmul fast float %945, %942
  %947 = fmul fast float %946, %941
  %948 = fsub fast float %946, %947
  %949 = fcmp fast ole float %948, 0.000000e+00
  %950 = extractvalue %dx.types.CBufRet.f32 %914, 2
  %951 = fadd fast float %947, %950
  %952 = fmul fast float %945, %943
  %953 = fadd fast float %952, %950
  %954 = fdiv fast float 1.000000e+00, %948
  %955 = select i1 %949, float 1.000000e+06, float %954
  %956 = fsub fast float %899, %951
  %957 = fmul fast float %955, %956
  %958 = call float @dx.op.unary.f32(i32 7, float %957)  ; Saturate(value)
  %959 = extractvalue %dx.types.CBufRet.f32 %919, 2
  %960 = fmul fast float %959, %958
  %961 = fsub fast float %959, %960
  %962 = fcmp fast olt float %899, %953
  %963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %964 = extractvalue %dx.types.CBufRet.f32 %963, 3
  %965 = select i1 %962, float %964, float 1.000000e+00
  %966 = fmul fast float %961, %965
  %967 = fsub fast float %902, %951
  %968 = fmul fast float %955, %967
  %969 = call float @dx.op.unary.f32(i32 7, float %968)  ; Saturate(value)
  %970 = fmul fast float %959, %969
  %971 = fsub fast float %959, %970
  %972 = fcmp fast olt float %902, %953
  %973 = select i1 %972, float %964, float 1.000000e+00
  %974 = fmul fast float %971, %973
  %975 = fadd fast float %974, %966
  %976 = fsub fast float %905, %951
  %977 = fmul fast float %955, %976
  %978 = call float @dx.op.unary.f32(i32 7, float %977)  ; Saturate(value)
  %979 = fmul fast float %959, %978
  %980 = fsub fast float %959, %979
  %981 = fcmp fast olt float %905, %953
  %982 = select i1 %981, float %964, float 1.000000e+00
  %983 = fmul fast float %980, %982
  %984 = fadd fast float %975, %983
  %985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %986 = extractvalue %dx.types.CBufRet.f32 %985, 2
  %987 = fmul fast float %893, 0x3FD5555560000000
  %988 = fmul fast float %987, %944
  %989 = fmul fast float %988, %986
  %990 = fmul fast float %989, %984
  br label %991

; <label>:991                                     ; preds = %940, %880
  %992 = phi float [ %990, %940 ], [ 0.000000e+00, %880 ]
  br i1 %809, label %1039, label %993, !dx.controlflow.hints !65

; <label>:993                                     ; preds = %991
  %994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %995 = extractvalue %dx.types.CBufRet.f32 %994, 0
  %996 = fsub fast float %995, %510
  %997 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %522, float %521, float %996)  ; Dot3(ax,ay,az,bx,by,bz)
  %998 = fmul fast float %379, %997
  %999 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %998)  ; FMax(a,b)
  %1000 = fcmp fast olt float %282, 0.000000e+00
  %1001 = call float @dx.op.binary.f32(i32 36, float %893, float %999)  ; FMin(a,b)
  br i1 %1000, label %1003, label %1002, !dx.controlflow.hints !66

; <label>:1002                                    ; preds = %993
  br label %1003

; <label>:1003                                    ; preds = %1002, %993
  %1004 = phi float [ 0.000000e+00, %1002 ], [ %1001, %993 ]
  %1005 = phi float [ %1001, %1002 ], [ %893, %993 ]
  %1006 = phi float [ %1001, %1002 ], [ 0.000000e+00, %993 ]
  %1007 = phi float [ %893, %1002 ], [ %1001, %993 ]
  %1008 = fsub fast float %1005, %1004
  %1009 = extractvalue %dx.types.CBufRet.f32 %994, 1
  %1010 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %1009)  ; FMin(a,b)
  %1011 = fsub fast float %510, %995
  %1012 = fmul fast float %1010, 0x3FF7154760000000
  %1013 = fmul fast float %1012, %1011
  %1014 = call float @dx.op.unary.f32(i32 21, float %1013)  ; Exp(value)
  %1015 = fmul fast float %282, 0x3FF7154760000000
  %1016 = fmul fast float %1015, %1007
  %1017 = fmul fast float %1016, %1010
  %1018 = call float @dx.op.unary.f32(i32 21, float %1017)  ; Exp(value)
  %1019 = fmul fast float %1015, %1006
  %1020 = fmul fast float %1019, %1010
  %1021 = call float @dx.op.unary.f32(i32 21, float %1020)  ; Exp(value)
  %1022 = fsub fast float %1018, %1021
  %1023 = fmul fast float %1022, %1014
  %1024 = fmul fast float %1010, %282
  %1025 = fdiv fast float %1023, %1024
  %1026 = fadd fast float %1008, %1025
  %1027 = call float @dx.op.unary.f32(i32 6, float %282)  ; FAbs(value)
  %1028 = fcmp fast olt float %1027, 0x3F0FFB4800000000
  %1029 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1011)  ; FMax(a,b)
  %1030 = fmul fast float %1029, 0x3FF7154760000000
  %1031 = fmul fast float %1030, %1009
  %1032 = call float @dx.op.unary.f32(i32 21, float %1031)  ; Exp(value)
  %1033 = fmul fast float %1032, %893
  %1034 = select i1 %1028, float %1033, float %1026
  %1035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %1036 = extractvalue %dx.types.CBufRet.f32 %1035, 1
  %1037 = fmul fast float %1034, %1036
  %1038 = fadd fast float %1037, %992
  br label %1039

; <label>:1039                                    ; preds = %1003, %991
  %1040 = phi float [ %1038, %1003 ], [ %992, %991 ]
  %1041 = icmp eq i32 %881, 0
  br i1 %1041, label %1222, label %1042, !dx.controlflow.hints !67

; <label>:1042                                    ; preds = %1039
  %1043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1044 = extractvalue %dx.types.CBufRet.f32 %1043, 3
  %1045 = fmul fast float %1044, %511
  %1046 = fcmp fast oeq float %1045, 0.000000e+00
  br i1 %1046, label %1061, label %1047, !dx.controlflow.hints !68

; <label>:1047                                    ; preds = %1042
  %1048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %1049 = extractvalue %dx.types.CBufRet.f32 %1048, 3
  %1050 = fmul fast float %1049, %1045
  %1051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %1052 = extractvalue %dx.types.CBufRet.f32 %1051, 0
  %1053 = extractvalue %dx.types.CBufRet.f32 %1051, 1
  %1054 = extractvalue %dx.types.CBufRet.f32 %1051, 2
  %1055 = fmul fast float %1052, %1050
  %1056 = fmul fast float %1053, %1050
  %1057 = fmul fast float %1054, %1050
  %1058 = call float @dx.op.unary.f32(i32 23, float %1055)  ; Log(value)
  %1059 = call float @dx.op.unary.f32(i32 23, float %1056)  ; Log(value)
  %1060 = call float @dx.op.unary.f32(i32 23, float %1057)  ; Log(value)
  br label %1061

; <label>:1061                                    ; preds = %1047, %1042
  %1062 = phi float [ %1058, %1047 ], [ 0.000000e+00, %1042 ]
  %1063 = phi float [ %1059, %1047 ], [ 0.000000e+00, %1042 ]
  %1064 = phi float [ %1060, %1047 ], [ 0.000000e+00, %1042 ]
  %1065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %1066 = extractvalue %dx.types.CBufRet.f32 %1065, 0
  %1067 = extractvalue %dx.types.CBufRet.f32 %1065, 1
  %1068 = extractvalue %dx.types.CBufRet.f32 %1065, 2
  %1069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %1070 = extractvalue %dx.types.CBufRet.f32 %1069, 0
  %1071 = extractvalue %dx.types.CBufRet.f32 %1069, 1
  %1072 = extractvalue %dx.types.CBufRet.f32 %1069, 2
  %1073 = fsub fast float %508, %1070
  %1074 = fsub fast float %509, %1071
  %1075 = fsub fast float %510, %1072
  %1076 = fmul fast float %1073, %1066
  %1077 = fmul fast float %1074, %1067
  %1078 = fmul fast float %1075, %1068
  %1079 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %1080 = extractvalue %dx.types.CBufRet.i32 %1079, 0
  %1081 = extractvalue %dx.types.CBufRet.i32 %1079, 1
  %1082 = uitofp i32 %1080 to float
  %1083 = uitofp i32 %1081 to float
  %1084 = fmul fast float %1076, %1082
  %1085 = fmul fast float %1077, %1083
  %1086 = fadd fast float %1084, 5.000000e-01
  %1087 = fadd fast float %1085, 5.000000e-01
  %1088 = call float @dx.op.unary.f32(i32 22, float %1086)  ; Frc(value)
  %1089 = call float @dx.op.unary.f32(i32 22, float %1087)  ; Frc(value)
  %1090 = call float @dx.op.unary.f32(i32 27, float %1086)  ; Round_ni(value)
  %1091 = call float @dx.op.unary.f32(i32 27, float %1087)  ; Round_ni(value)
  %1092 = fadd fast float %1090, 1.000000e+00
  %1093 = fadd fast float %1091, 1.000000e+00
  %1094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %1095 = extractvalue %dx.types.CBufRet.f32 %1094, 0
  %1096 = extractvalue %dx.types.CBufRet.f32 %1094, 1
  %1097 = fmul fast float %1095, %1092
  %1098 = fmul fast float %1096, %1093
  %1099 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %11, %dx.types.Handle %17, float %1097, float %1098, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1100 = extractvalue %dx.types.ResRet.f32 %1099, 0
  %1101 = extractvalue %dx.types.ResRet.f32 %1099, 1
  %1102 = extractvalue %dx.types.ResRet.f32 %1099, 2
  %1103 = extractvalue %dx.types.ResRet.f32 %1099, 3
  %1104 = extractvalue %dx.types.CBufRet.i32 %1079, 2
  %1105 = extractvalue %dx.types.CBufRet.f32 %1094, 2
  %1106 = uitofp i32 %1104 to float
  %1107 = fadd fast float %1106, -1.000000e+00
  %1108 = fmul fast float %1107, %1100
  %1109 = fmul fast float %1107, %1101
  %1110 = fmul fast float %1107, %1102
  %1111 = fmul fast float %1107, %1103
  %1112 = fadd fast float %1108, 5.000000e-01
  %1113 = fadd fast float %1109, 5.000000e-01
  %1114 = fadd fast float %1110, 5.000000e-01
  %1115 = fadd fast float %1111, 5.000000e-01
  %1116 = fptoui float %1112 to i32
  %1117 = fptoui float %1113 to i32
  %1118 = fptoui float %1114 to i32
  %1119 = fptoui float %1115 to i32
  %1120 = uitofp i32 %1116 to float
  %1121 = uitofp i32 %1117 to float
  %1122 = uitofp i32 %1118 to float
  %1123 = uitofp i32 %1119 to float
  %1124 = fadd fast float %1120, 5.000000e-01
  %1125 = fadd fast float %1121, 5.000000e-01
  %1126 = fadd fast float %1122, 5.000000e-01
  %1127 = fadd fast float %1123, 5.000000e-01
  %1128 = fmul fast float %1124, %1105
  %1129 = fmul fast float %1125, %1105
  %1130 = fmul fast float %1126, %1105
  %1131 = fmul fast float %1127, %1105
  %1132 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %18, float %1128, float %1078, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1133 = extractvalue %dx.types.ResRet.f32 %1132, 0
  %1134 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %18, float %1129, float %1078, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1135 = extractvalue %dx.types.ResRet.f32 %1134, 0
  %1136 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %18, float %1130, float %1078, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1137 = extractvalue %dx.types.ResRet.f32 %1136, 0
  %1138 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %18, float %1131, float %1078, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1139 = extractvalue %dx.types.ResRet.f32 %1138, 0
  %1140 = fsub fast float %1137, %1139
  %1141 = fmul fast float %1140, %1088
  %1142 = fadd fast float %1141, %1139
  %1143 = fsub fast float %1135, %1133
  %1144 = fmul fast float %1143, %1088
  %1145 = fadd fast float %1144, %1133
  %1146 = fsub fast float %1145, %1142
  %1147 = fmul fast float %1146, %1089
  %1148 = fadd fast float %1147, %1142
  %1149 = fcmp fast ogt float %1148, 0.000000e+00
  br i1 %1149, label %1150, label %1218, !dx.controlflow.hints !69

; <label>:1150                                    ; preds = %1061
  %1151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %1152 = extractvalue %dx.types.CBufRet.f32 %1151, 0
  %1153 = extractvalue %dx.types.CBufRet.f32 %1151, 1
  %1154 = extractvalue %dx.types.CBufRet.f32 %1151, 2
  %1155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %1156 = extractvalue %dx.types.CBufRet.f32 %1155, 0
  %1157 = extractvalue %dx.types.CBufRet.f32 %1155, 1
  %1158 = extractvalue %dx.types.CBufRet.f32 %1155, 2
  %1159 = fmul fast float %1074, %1066
  %1160 = fmul fast float %1075, %1066
  %1161 = fadd fast float %1076, %1156
  %1162 = fadd fast float %1159, %1157
  %1163 = fadd fast float %1160, %1158
  %1164 = fmul fast float %1161, %1152
  %1165 = fmul fast float %1162, %1152
  %1166 = fmul fast float %1163, %1152
  %1167 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %15, float %1164, float %1165, float %1166, float undef, i32 0, i32 0, i32 0, float %1062)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1168 = extractvalue %dx.types.ResRet.f32 %1167, 0
  %1169 = fmul fast float %1161, %1153
  %1170 = fmul fast float %1162, %1153
  %1171 = fmul fast float %1163, %1153
  %1172 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %15, float %1169, float %1170, float %1171, float undef, i32 0, i32 0, i32 0, float %1063)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1173 = extractvalue %dx.types.ResRet.f32 %1172, 1
  %1174 = fmul fast float %1161, %1154
  %1175 = fmul fast float %1162, %1154
  %1176 = fmul fast float %1163, %1154
  %1177 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %15, float %1174, float %1175, float %1176, float undef, i32 0, i32 0, i32 0, float %1064)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1178 = extractvalue %dx.types.ResRet.f32 %1177, 2
  %1179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %1180 = extractvalue %dx.types.CBufRet.f32 %1179, 1
  %1181 = fmul fast float %1173, %1168
  %1182 = fmul fast float %1181, %1178
  %1183 = call float @dx.op.unary.f32(i32 23, float %1182)  ; Log(value)
  %1184 = fmul fast float %1183, %1180
  %1185 = call float @dx.op.unary.f32(i32 21, float %1184)  ; Exp(value)
  %1186 = extractvalue %dx.types.CBufRet.f32 %1179, 2
  %1187 = fmul fast float %1148, %1148
  %1188 = fmul fast float %1187, %1185
  %1189 = fmul fast float %1188, %1186
  %1190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %1191 = extractvalue %dx.types.CBufRet.f32 %1190, 3
  %1192 = fmul fast float %1191, %1189
  %1193 = bitcast float %1192 to i32
  %1194 = sitofp i32 %1193 to float
  %1195 = fptosi float %1194 to i32
  %1196 = bitcast i32 %1195 to float
  %1197 = fsub fast float 1.000000e+00, %1189
  %1198 = bitcast float %1197 to i32
  %1199 = sitofp i32 %1198 to float
  %1200 = fptosi float %1199 to i32
  %1201 = bitcast i32 %1200 to float
  %1202 = fadd fast float %1196, %1201
  %1203 = bitcast float %1202 to i32
  %1204 = sub nsw i32 2129859010, %1203
  %1205 = bitcast i32 %1204 to float
  %1206 = fmul fast float %1205, %1196
  %1207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1208 = extractvalue %dx.types.CBufRet.f32 %1207, 2
  %1209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %1210 = extractvalue %dx.types.CBufRet.f32 %1209, 0
  %1211 = fmul fast float %1206, %1210
  %1212 = fadd fast float %1211, 1.000000e+00
  %1213 = bitcast float %1212 to i32
  %1214 = sub nsw i32 2129859010, %1213
  %1215 = bitcast i32 %1214 to float
  %1216 = fmul fast float %1206, %1208
  %1217 = fmul fast float %1216, %1215
  br label %1218

; <label>:1218                                    ; preds = %1150, %1061
  %1219 = phi float [ %1217, %1150 ], [ %1148, %1061 ]
  %1220 = fmul fast float %1219, %893
  %1221 = fadd fast float %1220, %1040
  br label %1222

; <label>:1222                                    ; preds = %1218, %1039
  %1223 = phi float [ %1221, %1218 ], [ %1040, %1039 ]
  br i1 %804, label %1349, label %1224, !dx.controlflow.hints !70

; <label>:1224                                    ; preds = %1222
  %1225 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1226 = extractvalue %dx.types.CBufRet.i32 %1225, 0
  %1227 = icmp ne i32 %1226, 0
  %1228 = zext i1 %1227 to i32
  %1229 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1230 = extractvalue %dx.types.CBufRet.i32 %1229, 0
  %1231 = icmp eq i32 %1230, 0
  br i1 %1231, label %1265, label %1232

; <label>:1232                                    ; preds = %1224
  br label %1233

; <label>:1233                                    ; preds = %1260, %1232
  %1234 = phi i32 [ %1261, %1260 ], [ 0, %1232 ]
  %1235 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1234, i32 0)  ; BufferLoad(srv,index,wot)
  %1236 = extractvalue %dx.types.ResRet.f32 %1235, 0
  %1237 = extractvalue %dx.types.ResRet.f32 %1235, 1
  %1238 = extractvalue %dx.types.ResRet.f32 %1235, 2
  %1239 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1234, i32 16)  ; BufferLoad(srv,index,wot)
  %1240 = extractvalue %dx.types.ResRet.f32 %1239, 0
  %1241 = extractvalue %dx.types.ResRet.f32 %1239, 1
  %1242 = extractvalue %dx.types.ResRet.f32 %1239, 2
  %1243 = fsub fast float %1236, %1240
  %1244 = fsub fast float %1237, %1241
  %1245 = fsub fast float %1238, %1242
  %1246 = fadd fast float %1240, %1236
  %1247 = fadd fast float %1241, %1237
  %1248 = fadd fast float %1242, %1238
  %1249 = fcmp fast olt float %508, %1243
  %1250 = fcmp fast olt float %509, %1244
  %1251 = fcmp fast olt float %510, %1245
  %1252 = or i1 %1249, %1250
  %1253 = or i1 %1251, %1252
  %1254 = fcmp fast ogt float %508, %1246
  %1255 = fcmp fast ogt float %509, %1247
  %1256 = fcmp fast ogt float %510, %1248
  %1257 = or i1 %1254, %1255
  %1258 = or i1 %1256, %1257
  %1259 = or i1 %1253, %1258
  br i1 %1259, label %1260, label %1263, !dx.controlflow.hints !71

; <label>:1260                                    ; preds = %1233
  %1261 = add nuw i32 %1234, 1
  %1262 = icmp ult i32 %1261, %1230
  br i1 %1262, label %1233, label %1263

; <label>:1263                                    ; preds = %1260, %1233
  %1264 = phi i32 [ 255, %1260 ], [ %1234, %1233 ]
  br label %1265

; <label>:1265                                    ; preds = %1263, %1224
  %1266 = phi i32 [ 255, %1224 ], [ %1264, %1263 ]
  %1267 = icmp eq i32 %1266, 255
  br i1 %1267, label %1273, label %1268, !dx.controlflow.hints !72

; <label>:1268                                    ; preds = %1265
  %1269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %1266, i32 156)  ; BufferLoad(srv,index,wot)
  %1270 = extractvalue %dx.types.ResRet.i32 %1269, 0
  %1271 = icmp ne i32 %1270, 0
  %1272 = zext i1 %1271 to i32
  br label %1273

; <label>:1273                                    ; preds = %1268, %1265
  %1274 = phi i32 [ %1272, %1268 ], [ %1228, %1265 ]
  %1275 = icmp eq i32 %1274, 0
  br i1 %1275, label %1276, label %1345, !dx.controlflow.hints !73

; <label>:1276                                    ; preds = %1273
  %1277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1278 = extractvalue %dx.types.CBufRet.f32 %1277, 3
  %1279 = extractvalue %dx.types.CBufRet.f32 %714, 0
  %1280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1281 = extractvalue %dx.types.CBufRet.f32 %1280, 2
  %1282 = extractvalue %dx.types.CBufRet.f32 %1280, 3
  br i1 %1267, label %1293, label %1283, !dx.controlflow.hints !74

; <label>:1283                                    ; preds = %1276
  %1284 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1266, i32 60)  ; BufferLoad(srv,index,wot)
  %1285 = extractvalue %dx.types.ResRet.f32 %1284, 0
  %1286 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1266, i32 64)  ; BufferLoad(srv,index,wot)
  %1287 = extractvalue %dx.types.ResRet.f32 %1286, 0
  %1288 = extractvalue %dx.types.ResRet.f32 %1286, 1
  %1289 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1266, i32 72)  ; BufferLoad(srv,index,wot)
  %1290 = extractvalue %dx.types.ResRet.f32 %1289, 0
  %1291 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1266, i32 96)  ; BufferLoad(srv,index,wot)
  %1292 = extractvalue %dx.types.ResRet.f32 %1291, 0
  br label %1293

; <label>:1293                                    ; preds = %1283, %1276
  %1294 = phi float [ %1285, %1283 ], [ %717, %1276 ]
  %1295 = phi float [ %1290, %1283 ], [ %715, %1276 ]
  %1296 = phi float [ %1292, %1283 ], [ %1279, %1276 ]
  %1297 = phi float [ %1287, %1283 ], [ %1281, %1276 ]
  %1298 = phi float [ %1288, %1283 ], [ %1282, %1276 ]
  %1299 = call float @dx.op.binary.f32(i32 35, float %798, float 0.000000e+00)  ; FMax(a,b)
  %1300 = call float @dx.op.binary.f32(i32 36, float %1299, float 1.000000e+00)  ; FMin(a,b)
  %1301 = call float @dx.op.unary.f32(i32 24, float %1300)  ; Sqrt(value)
  %1302 = call float @dx.op.binary.f32(i32 35, float %801, float 0x3F847AE140000000)  ; FMax(a,b)
  %1303 = fsub fast float %799, %510
  %1304 = fsub fast float %510, %800
  %1305 = call float @dx.op.binary.f32(i32 36, float %1304, float %1303)  ; FMin(a,b)
  %1306 = fdiv fast float %1305, %1302
  %1307 = call float @dx.op.unary.f32(i32 7, float %1306)  ; Saturate(value)
  %1308 = fsub fast float %510, %1295
  %1309 = fdiv fast float %1308, %1294
  %1310 = call float @dx.op.unary.f32(i32 7, float %1309)  ; Saturate(value)
  %1311 = fsub fast float 1.000000e+00, %1310
  %1312 = fmul float %1307, %1311
  %1313 = fmul float %1312, %1312
  %1314 = fmul fast float %1301, %1278
  %1315 = fmul fast float %1314, %1313
  %1316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1317 = extractvalue %dx.types.CBufRet.f32 %1316, 2
  %1318 = extractvalue %dx.types.CBufRet.f32 %1316, 1
  %1319 = fsub fast float %1315, %1318
  %1320 = fsub fast float %1317, %1318
  %1321 = fdiv fast float %1319, %1320
  %1322 = call float @dx.op.unary.f32(i32 7, float %1321)  ; Saturate(value)
  %1323 = fmul fast float %1322, %1296
  %1324 = fcmp fast ogt float %1298, 0.000000e+00
  br i1 %1324, label %1325, label %1345, !dx.controlflow.hints !75

; <label>:1325                                    ; preds = %1293
  %1326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1327 = extractvalue %dx.types.CBufRet.f32 %1326, 0
  %1328 = extractvalue %dx.types.CBufRet.f32 %1326, 1
  %1329 = extractvalue %dx.types.CBufRet.f32 %1326, 2
  %1330 = fsub fast float %508, %1327
  %1331 = fsub fast float %509, %1328
  %1332 = fsub fast float %510, %1329
  %1333 = fmul fast float %1330, %1330
  %1334 = fmul fast float %1331, %1331
  %1335 = fadd fast float %1333, %1334
  %1336 = fmul fast float %1332, %1332
  %1337 = fadd fast float %1335, %1336
  %1338 = call float @dx.op.unary.f32(i32 24, float %1337)  ; Sqrt(value)
  %1339 = fsub fast float %1338, %1297
  %1340 = fsub fast float %1298, %1297
  %1341 = fdiv fast float %1339, %1340
  %1342 = call float @dx.op.unary.f32(i32 7, float %1341)  ; Saturate(value)
  %1343 = fmul fast float %1342, %1342
  %1344 = fmul fast float %1343, %1323
  br label %1345

; <label>:1345                                    ; preds = %1325, %1293, %1273
  %1346 = phi float [ 0.000000e+00, %1273 ], [ %1344, %1325 ], [ %1323, %1293 ]
  %1347 = fmul fast float %1346, %893
  %1348 = fadd fast float %1347, %1223
  br label %1349

; <label>:1349                                    ; preds = %1345, %1222
  %1350 = phi float [ %1348, %1345 ], [ %1223, %1222 ]
  %1351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1352 = extractvalue %dx.types.CBufRet.f32 %1351, 1
  %1353 = fcmp fast ogt float %1350, %1352
  br i1 %1353, label %1356, label %1354, !dx.controlflow.hints !76

; <label>:1354                                    ; preds = %1349
  %1355 = fadd fast float %893, %511
  br label %1406

; <label>:1356                                    ; preds = %1349
  %1357 = fmul fast float %1350, 0xBFF7154760000000
  %1358 = call float @dx.op.unary.f32(i32 21, float %1357)  ; Exp(value)
  %1359 = call float @dx.op.unary.f32(i32 7, float %1358)  ; Saturate(value)
  %1360 = fsub fast float 1.000000e+00, %1359
  %1361 = fdiv fast float %1350, %893
  %1362 = fadd fast float %893, %511
  %1363 = fmul fast float %511, %511
  %1364 = fmul fast float %1362, %1362
  %1365 = fsub fast float %1363, %1364
  %1366 = fmul fast float %1365, -5.000000e-01
  %1367 = fmul fast float %1366, %1361
  %1368 = fadd fast float %1367, %506
  %1369 = fadd fast float %1350, %515
  %1370 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1371 = extractvalue %dx.types.CBufRet.i32 %1370, 0
  %1372 = icmp eq i32 %1371, 0
  br i1 %1372, label %1399, label %1373, !dx.controlflow.hints !77

; <label>:1373                                    ; preds = %1356
  %1374 = icmp ne i32 %520, 0
  %1375 = zext i1 %1374 to i32
  %1376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1377 = extractvalue %dx.types.CBufRet.f32 %1376, 2
  %1378 = extractvalue %dx.types.CBufRet.f32 %1376, 0
  %1379 = fsub fast float %1362, %1378
  %1380 = fmul fast float %1379, %1377
  %1381 = call float @dx.op.unary.f32(i32 7, float %1380)  ; Saturate(value)
  %1382 = fadd fast float %1381, -5.000000e-01
  %1383 = fmul fast float %1382, 2.000000e+00
  %1384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1385 = extractvalue %dx.types.CBufRet.f32 %1384, 2
  %1386 = fcmp fast olt float %1383, %1385
  br i1 %1386, label %1387, label %1399, !dx.controlflow.hints !78

; <label>:1387                                    ; preds = %1373
  %1388 = fmul fast float %1383, %1383
  %1389 = fmul fast float %1360, %507
  %1390 = fmul fast float %1383, %1389
  %1391 = fmul fast float %1388, %1389
  %1392 = fmul fast float %1390, %1388
  %1393 = fmul fast float %1388, %1388
  %1394 = fmul fast float %1393, %1389
  %1395 = fadd fast float %1390, %516
  %1396 = fadd fast float %1391, %517
  %1397 = fadd fast float %1392, %518
  %1398 = fadd fast float %1394, %519
  br label %1399

; <label>:1399                                    ; preds = %1387, %1373, %1356
  %1400 = phi float [ %516, %1356 ], [ %1395, %1387 ], [ %516, %1373 ]
  %1401 = phi float [ %517, %1356 ], [ %1396, %1387 ], [ %517, %1373 ]
  %1402 = phi float [ %518, %1356 ], [ %1397, %1387 ], [ %518, %1373 ]
  %1403 = phi float [ %519, %1356 ], [ %1398, %1387 ], [ %519, %1373 ]
  %1404 = phi i32 [ %520, %1356 ], [ 1, %1387 ], [ %1375, %1373 ]
  %1405 = fmul fast float %1359, %507
  br label %1406

; <label>:1406                                    ; preds = %1399, %1354
  %1407 = phi float [ %1355, %1354 ], [ %1362, %1399 ]
  %1408 = phi float [ %506, %1354 ], [ %1368, %1399 ]
  %1409 = phi float [ %507, %1354 ], [ %1405, %1399 ]
  %1410 = phi float [ %515, %1354 ], [ %1369, %1399 ]
  %1411 = phi float [ %516, %1354 ], [ %1400, %1399 ]
  %1412 = phi float [ %517, %1354 ], [ %1401, %1399 ]
  %1413 = phi float [ %518, %1354 ], [ %1402, %1399 ]
  %1414 = phi float [ %519, %1354 ], [ %1403, %1399 ]
  %1415 = phi i32 [ %520, %1354 ], [ %1404, %1399 ]
  %1416 = fmul fast float %893, %280
  %1417 = fmul fast float %893, %281
  %1418 = fmul fast float %893, %282
  %1419 = fadd fast float %1416, %508
  %1420 = fadd fast float %1417, %509
  %1421 = fadd fast float %1418, %510
  %1422 = fcmp fast olt float %1407, %479
  %1423 = extractvalue %dx.types.CBufRet.f32 %1351, 2
  %1424 = fcmp fast olt float %1423, %1409
  %1425 = and i1 %1422, %1424
  br i1 %1425, label %501, label %1426

; <label>:1426                                    ; preds = %1406
  %1427 = uitofp i32 %523 to float
  br label %1428

; <label>:1428                                    ; preds = %1426, %455
  %1429 = phi float [ 0.000000e+00, %455 ], [ %1408, %1426 ]
  %1430 = phi float [ 1.000000e+00, %455 ], [ %1409, %1426 ]
  %1431 = phi float [ 0.000000e+00, %455 ], [ %1427, %1426 ]
  %1432 = phi float [ 0.000000e+00, %455 ], [ %1410, %1426 ]
  %1433 = phi float [ 0.000000e+00, %455 ], [ %1411, %1426 ]
  %1434 = phi float [ 0.000000e+00, %455 ], [ %1412, %1426 ]
  %1435 = phi float [ 0.000000e+00, %455 ], [ %1413, %1426 ]
  %1436 = phi float [ 0.000000e+00, %455 ], [ %1414, %1426 ]
  %1437 = phi i32 [ 0, %455 ], [ %1415, %1426 ]
  %1438 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1439 = extractvalue %dx.types.CBufRet.i32 %1438, 0
  %1440 = icmp eq i32 %1439, 0
  br i1 %1440, label %1482, label %1441, !dx.controlflow.hints !79

; <label>:1441                                    ; preds = %1428
  %1442 = icmp eq i32 %1437, 0
  br i1 %1442, label %1481, label %1443, !dx.controlflow.hints !80

; <label>:1443                                    ; preds = %1441
  %1444 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1445 = extractvalue %dx.types.CBufRet.i32 %1444, 2
  %1446 = icmp eq i32 %1445, 0
  br i1 %1446, label %1453, label %1447, !dx.controlflow.hints !81

; <label>:1447                                    ; preds = %1443
  %1448 = fsub fast float 1.000000e+00, %1430
  %1449 = fdiv fast float %1433, %1448
  %1450 = fdiv fast float %1434, %1448
  %1451 = fdiv fast float %1435, %1448
  %1452 = fdiv fast float %1436, %1448
  br label %1458

; <label>:1453                                    ; preds = %1443
  %1454 = fadd fast float %1433, %1430
  %1455 = fadd fast float %1434, %1430
  %1456 = fadd fast float %1435, %1430
  %1457 = fadd fast float %1436, %1430
  br label %1458

; <label>:1458                                    ; preds = %1453, %1447
  %1459 = phi float [ %1449, %1447 ], [ %1454, %1453 ]
  %1460 = phi float [ %1450, %1447 ], [ %1455, %1453 ]
  %1461 = phi float [ %1451, %1447 ], [ %1456, %1453 ]
  %1462 = phi float [ %1452, %1447 ], [ %1457, %1453 ]
  %1463 = call float @dx.op.binary.f32(i32 35, float %1459, float -1.000000e+00)  ; FMax(a,b)
  %1464 = call float @dx.op.binary.f32(i32 35, float %1460, float -1.000000e+00)  ; FMax(a,b)
  %1465 = call float @dx.op.binary.f32(i32 35, float %1461, float -1.000000e+00)  ; FMax(a,b)
  %1466 = call float @dx.op.binary.f32(i32 35, float %1462, float -1.000000e+00)  ; FMax(a,b)
  %1467 = call float @dx.op.binary.f32(i32 36, float %1463, float 1.000000e+00)  ; FMin(a,b)
  %1468 = call float @dx.op.binary.f32(i32 36, float %1464, float 1.000000e+00)  ; FMin(a,b)
  %1469 = call float @dx.op.binary.f32(i32 36, float %1465, float 1.000000e+00)  ; FMin(a,b)
  %1470 = call float @dx.op.binary.f32(i32 36, float %1466, float 1.000000e+00)  ; FMin(a,b)
  %1471 = fmul fast float %1467, 1.500000e+00
  %1472 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %1469, float %1471)  ; FMad(a,b,c)
  %1473 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %1468, float 0.000000e+00)  ; FMad(a,b,c)
  %1474 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %1470, float %1473)  ; FMad(a,b,c)
  %1475 = fmul fast float %1467, 0x3FEBB67AE0000000
  %1476 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %1469, float %1475)  ; FMad(a,b,c)
  %1477 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1468, float 0.000000e+00)  ; FMad(a,b,c)
  %1478 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1470, float %1477)  ; FMad(a,b,c)
  %1479 = fadd fast float %1472, 5.000000e-01
  %1480 = fadd fast float %1476, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %22, i32 %23, i32 0, float %1479, float %1474, float %1480, float %1478, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1482

; <label>:1481                                    ; preds = %1441
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %22, i32 %23, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1482

; <label>:1482                                    ; preds = %1481, %1458, %1428
  %1483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %1484 = extractvalue %dx.types.CBufRet.f32 %1483, 0
  %1485 = extractvalue %dx.types.CBufRet.f32 %1483, 1
  %1486 = extractvalue %dx.types.CBufRet.f32 %1483, 2
  %1487 = call float @dx.op.dot3.f32(i32 55, float %280, float %281, float %282, float %1484, float %1485, float %1486)  ; Dot3(ax,ay,az,bx,by,bz)
  %1488 = fmul fast float %1487, %1429
  %1489 = fcmp fast ogt float %1432, 0.000000e+00
  %1490 = fdiv fast float 1.000000e+00, %1432
  %1491 = fmul fast float %1488, %1490
  %1492 = select i1 %1489, float %1491, float %291
  %1493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1494 = extractvalue %dx.types.CBufRet.f32 %1493, 0
  %1495 = extractvalue %dx.types.CBufRet.f32 %1493, 1
  %1496 = extractvalue %dx.types.CBufRet.f32 %1493, 2
  %1497 = fmul fast float %1494, %244
  %1498 = fmul fast float %1495, %244
  %1499 = fmul fast float %1496, %244
  %1500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1501 = extractvalue %dx.types.CBufRet.f32 %1500, 0
  %1502 = extractvalue %dx.types.CBufRet.f32 %1500, 1
  %1503 = extractvalue %dx.types.CBufRet.f32 %1500, 2
  %1504 = fmul fast float %1501, %245
  %1505 = fmul fast float %1502, %245
  %1506 = fmul fast float %1503, %245
  %1507 = fadd fast float %1504, %1497
  %1508 = fadd fast float %1505, %1498
  %1509 = fadd fast float %1506, %1499
  %1510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1511 = extractvalue %dx.types.CBufRet.f32 %1510, 0
  %1512 = extractvalue %dx.types.CBufRet.f32 %1510, 1
  %1513 = extractvalue %dx.types.CBufRet.f32 %1510, 2
  %1514 = fadd fast float %1507, %1511
  %1515 = fadd fast float %1508, %1512
  %1516 = fadd fast float %1509, %1513
  %1517 = fmul fast float %1514, %1492
  %1518 = fmul fast float %1515, %1492
  %1519 = fmul fast float %1516, %1492
  %1520 = call float @dx.op.dot3.f32(i32 55, float %1517, float %1518, float %1519, float %1517, float %1518, float %1519)  ; Dot3(ax,ay,az,bx,by,bz)
  %1521 = call float @dx.op.unary.f32(i32 25, float %1520)  ; Rsqrt(value)
  %1522 = fmul fast float %1521, %1520
  %1523 = fmul fast float %1521, %1517
  %1524 = fmul fast float %1521, %1518
  %1525 = fmul fast float %1521, %1519
  %1526 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1527 = extractvalue %dx.types.CBufRet.i32 %1526, 1
  %1528 = and i32 %1527, 1
  %1529 = icmp ne i32 %1528, 0
  %1530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1531 = extractvalue %dx.types.CBufRet.f32 %1530, 2
  %1532 = fcmp fast ogt float %1531, 0.000000e+00
  %1533 = and i1 %1529, %1532
  br i1 %1533, label %1534, label %1692, !dx.controlflow.hints !82

; <label>:1534                                    ; preds = %1482
  %1535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1536 = extractvalue %dx.types.CBufRet.f32 %1535, 2
  %1537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1538 = extractvalue %dx.types.CBufRet.f32 %1537, 2
  %1539 = fsub fast float %1536, %1538
  %1540 = extractvalue %dx.types.CBufRet.i32 %1526, 0
  %1541 = call i32 @dx.op.binary.i32(i32 40, i32 %1540, i32 3)  ; UMin(a,b)
  %1542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1543 = extractvalue %dx.types.CBufRet.f32 %1542, 0
  %1544 = extractvalue %dx.types.CBufRet.f32 %1542, 1
  %1545 = extractvalue %dx.types.CBufRet.f32 %1537, 0
  %1546 = extractvalue %dx.types.CBufRet.f32 %1537, 1
  %1547 = fsub fast float %1543, %1545
  %1548 = fsub fast float %1544, %1546
  %1549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1550 = extractvalue %dx.types.CBufRet.f32 %1549, 0
  %1551 = fcmp fast ogt float %1550, 0.000000e+00
  %1552 = fsub fast float -0.000000e+00, %1547
  %1553 = fsub fast float -0.000000e+00, %1548
  %1554 = call float @dx.op.dot2.f32(i32 54, float %1523, float %1524, float %1523, float %1524)  ; Dot2(ax,ay,bx,by)
  %1555 = call float @dx.op.dot2.f32(i32 54, float %1523, float %1524, float %1552, float %1553)  ; Dot2(ax,ay,bx,by)
  %1556 = fmul fast float %1555, 2.000000e+00
  %1557 = call float @dx.op.dot2.f32(i32 54, float %1552, float %1553, float %1552, float %1553)  ; Dot2(ax,ay,bx,by)
  %1558 = fmul fast float %1550, %1550
  %1559 = fsub fast float %1557, %1558
  %1560 = fmul fast float %1556, %1556
  %1561 = fmul fast float %1554, 4.000000e+00
  %1562 = fmul fast float %1561, %1559
  %1563 = fsub fast float %1560, %1562
  %1564 = fcmp fast ogt float %1563, 0.000000e+00
  br i1 %1564, label %1565, label %1580, !dx.controlflow.hints !83

; <label>:1565                                    ; preds = %1534
  %1566 = fcmp fast ogt float %1556, 0.000000e+00
  %1567 = call float @dx.op.unary.f32(i32 24, float %1563)  ; Sqrt(value)
  %1568 = fsub fast float -0.000000e+00, %1567
  %1569 = select i1 %1566, float %1567, float %1568
  %1570 = fadd fast float %1569, %1556
  %1571 = fmul float %1570, -5.000000e-01
  %1572 = fdiv fast float %1571, %1554
  %1573 = call float @dx.op.binary.f32(i32 35, float %1572, float 0.000000e+00)  ; FMax(a,b)
  %1574 = call float @dx.op.binary.f32(i32 36, float %1522, float %1573)  ; FMin(a,b)
  %1575 = fdiv fast float %1559, %1571
  %1576 = call float @dx.op.binary.f32(i32 35, float %1575, float 0.000000e+00)  ; FMax(a,b)
  %1577 = call float @dx.op.binary.f32(i32 36, float %1522, float %1576)  ; FMin(a,b)
  %1578 = call float @dx.op.binary.f32(i32 36, float %1574, float %1577)  ; FMin(a,b)
  %1579 = call float @dx.op.binary.f32(i32 35, float %1574, float %1577)  ; FMax(a,b)
  br label %1580

; <label>:1580                                    ; preds = %1565, %1534
  %1581 = phi float [ %1579, %1565 ], [ -1.000000e+00, %1534 ]
  %1582 = phi float [ %1578, %1565 ], [ -1.000000e+00, %1534 ]
  %1583 = phi i1 [ true, %1565 ], [ false, %1534 ]
  %1584 = and i1 %1551, %1583
  br i1 %1584, label %1585, label %1587, !dx.controlflow.hints !84

; <label>:1585                                    ; preds = %1580
  %1586 = fcmp fast oeq float %1582, %1581
  br i1 %1586, label %1692, label %1588, !dx.controlflow.hints !85

; <label>:1587                                    ; preds = %1580
  br i1 %1551, label %1692, label %1588, !dx.controlflow.hints !86

; <label>:1588                                    ; preds = %1587, %1585
  %1589 = phi float [ %1522, %1587 ], [ %1581, %1585 ]
  %1590 = phi float [ 0.000000e+00, %1587 ], [ %1582, %1585 ]
  %1591 = fcmp fast oeq float %1525, 0.000000e+00
  %1592 = fdiv fast float %1539, %1525
  %1593 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1592)  ; FMax(a,b)
  %1594 = select i1 %1591, float %1589, float %1593
  %1595 = call float @dx.op.binary.f32(i32 36, float %1589, float %1594)  ; FMin(a,b)
  %1596 = fcmp fast ogt float %1525, 0.000000e+00
  %1597 = fcmp fast olt float %1539, 0.000000e+00
  br i1 %1596, label %1598, label %1599, !dx.controlflow.hints !87

; <label>:1598                                    ; preds = %1588
  br i1 %1597, label %1692, label %1602, !dx.controlflow.hints !88

; <label>:1599                                    ; preds = %1588
  br i1 %1597, label %1600, label %1602, !dx.controlflow.hints !89

; <label>:1600                                    ; preds = %1599
  %1601 = call float @dx.op.binary.f32(i32 35, float %1590, float %1595)  ; FMax(a,b)
  br label %1602

; <label>:1602                                    ; preds = %1600, %1599, %1598
  %1603 = phi float [ %1601, %1600 ], [ %1590, %1599 ], [ %1590, %1598 ]
  %1604 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 0
  store float -1.000000e+00, float* %1604, align 4, !tbaa !90, !noalias !94
  %1605 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 1
  store float -1.000000e+00, float* %1605, align 4, !tbaa !90, !noalias !94
  %1606 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 2
  store float -1.000000e+00, float* %1606, align 4, !tbaa !90, !noalias !94
  %1607 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 0
  store float -1.000000e+00, float* %1607, align 4, !tbaa !90, !noalias !94
  %1608 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 1
  store float -1.000000e+00, float* %1608, align 4, !tbaa !90, !noalias !94
  %1609 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 2
  store float -1.000000e+00, float* %1609, align 4, !tbaa !90, !noalias !94
  %1610 = icmp sgt i32 %1541, 0
  br i1 %1610, label %1611, label %1669

; <label>:1611                                    ; preds = %1602
  br label %1612

; <label>:1612                                    ; preds = %1659, %1611
  %1613 = phi i32 [ %1660, %1659 ], [ 0, %1611 ]
  %1614 = add nuw i32 %1613, 171
  %1615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 %1614)  ; CBufferLoadLegacy(handle,regIndex)
  %1616 = extractvalue %dx.types.CBufRet.f32 %1615, 0
  %1617 = extractvalue %dx.types.CBufRet.f32 %1615, 1
  %1618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1619 = extractvalue %dx.types.CBufRet.f32 %1618, 0
  %1620 = extractvalue %dx.types.CBufRet.f32 %1618, 1
  %1621 = fsub fast float %1616, %1619
  %1622 = fsub fast float %1617, %1620
  %1623 = extractvalue %dx.types.CBufRet.f32 %1615, 2
  %1624 = fsub fast float -0.000000e+00, %1621
  %1625 = fsub fast float -0.000000e+00, %1622
  %1626 = call float @dx.op.dot2.f32(i32 54, float %1523, float %1524, float %1624, float %1625)  ; Dot2(ax,ay,bx,by)
  %1627 = fmul fast float %1626, 2.000000e+00
  %1628 = call float @dx.op.dot2.f32(i32 54, float %1624, float %1625, float %1624, float %1625)  ; Dot2(ax,ay,bx,by)
  %1629 = fmul fast float %1623, %1623
  %1630 = fsub fast float %1628, %1629
  %1631 = fmul fast float %1627, %1627
  %1632 = fmul fast float %1561, %1630
  %1633 = fsub fast float %1631, %1632
  %1634 = fcmp fast ogt float %1633, 0.000000e+00
  br i1 %1634, label %1635, label %1650, !dx.controlflow.hints !83

; <label>:1635                                    ; preds = %1612
  %1636 = fcmp fast ogt float %1627, 0.000000e+00
  %1637 = call float @dx.op.unary.f32(i32 24, float %1633)  ; Sqrt(value)
  %1638 = fsub fast float -0.000000e+00, %1637
  %1639 = select i1 %1636, float %1637, float %1638
  %1640 = fadd fast float %1639, %1627
  %1641 = fmul float %1640, -5.000000e-01
  %1642 = fdiv fast float %1641, %1554
  %1643 = call float @dx.op.binary.f32(i32 35, float %1642, float 0.000000e+00)  ; FMax(a,b)
  %1644 = call float @dx.op.binary.f32(i32 36, float %1589, float %1643)  ; FMin(a,b)
  %1645 = fdiv fast float %1630, %1641
  %1646 = call float @dx.op.binary.f32(i32 35, float %1645, float 0.000000e+00)  ; FMax(a,b)
  %1647 = call float @dx.op.binary.f32(i32 36, float %1589, float %1646)  ; FMin(a,b)
  %1648 = call float @dx.op.binary.f32(i32 36, float %1644, float %1647)  ; FMin(a,b)
  %1649 = call float @dx.op.binary.f32(i32 35, float %1644, float %1647)  ; FMax(a,b)
  br label %1650

; <label>:1650                                    ; preds = %1635, %1612
  %1651 = phi float [ %1649, %1635 ], [ -1.000000e+00, %1612 ]
  %1652 = phi float [ %1648, %1635 ], [ -1.000000e+00, %1612 ]
  %1653 = phi i1 [ true, %1635 ], [ false, %1612 ]
  br i1 %1653, label %1654, label %1659, !dx.controlflow.hints !105

; <label>:1654                                    ; preds = %1650
  %1655 = call float @dx.op.binary.f32(i32 35, float %1603, float %1652)  ; FMax(a,b)
  %1656 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 %1613
  store float %1655, float* %1656, align 4, !tbaa !90, !noalias !94
  %1657 = call float @dx.op.binary.f32(i32 35, float %1603, float %1651)  ; FMax(a,b)
  %1658 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 %1613
  store float %1657, float* %1658, align 4, !tbaa !90, !noalias !94
  br label %1659

; <label>:1659                                    ; preds = %1654, %1650
  %1660 = add nuw nsw i32 %1613, 1
  %1661 = icmp eq i32 %1660, %1541
  br i1 %1661, label %1662, label %1612

; <label>:1662                                    ; preds = %1659
  %1663 = load float, float* %1606, align 4, !tbaa !90, !alias.scope !106, !noalias !109
  %1664 = load float, float* %1605, align 4, !tbaa !90, !alias.scope !112, !noalias !113
  %1665 = load float, float* %1604, align 4, !tbaa !90, !alias.scope !114, !noalias !115
  %1666 = load float, float* %1609, align 4, !tbaa !90, !alias.scope !116, !noalias !119
  %1667 = load float, float* %1608, align 4, !tbaa !90, !alias.scope !122, !noalias !123
  %1668 = load float, float* %1607, align 4, !tbaa !90, !alias.scope !124, !noalias !125
  br label %1669

; <label>:1669                                    ; preds = %1662, %1602
  %1670 = phi float [ -1.000000e+00, %1602 ], [ %1668, %1662 ]
  %1671 = phi float [ -1.000000e+00, %1602 ], [ %1667, %1662 ]
  %1672 = phi float [ -1.000000e+00, %1602 ], [ %1666, %1662 ]
  %1673 = phi float [ -1.000000e+00, %1602 ], [ %1665, %1662 ]
  %1674 = phi float [ -1.000000e+00, %1602 ], [ %1664, %1662 ]
  %1675 = phi float [ -1.000000e+00, %1602 ], [ %1663, %1662 ]
  %1676 = call float @dx.op.binary.f32(i32 36, float %1674, float %1675)  ; FMin(a,b)
  %1677 = call float @dx.op.binary.f32(i32 36, float %1673, float %1676)  ; FMin(a,b)
  %1678 = call float @dx.op.binary.f32(i32 35, float %1673, float %1674)  ; FMax(a,b)
  %1679 = call float @dx.op.binary.f32(i32 36, float %1678, float %1675)  ; FMin(a,b)
  %1680 = call float @dx.op.binary.f32(i32 36, float %1673, float %1674)  ; FMin(a,b)
  %1681 = call float @dx.op.binary.f32(i32 35, float %1680, float %1679)  ; FMax(a,b)
  %1682 = call float @dx.op.binary.f32(i32 35, float %1674, float %1675)  ; FMax(a,b)
  %1683 = call float @dx.op.binary.f32(i32 35, float %1673, float %1682)  ; FMax(a,b)
  store float %1677, float* %1604, align 4, !tbaa !90, !alias.scope !114, !noalias !115
  store float %1681, float* %1605, align 4, !tbaa !90, !alias.scope !112, !noalias !113
  store float %1683, float* %1606, align 4, !tbaa !90, !alias.scope !106, !noalias !109
  %1684 = call float @dx.op.binary.f32(i32 36, float %1671, float %1672)  ; FMin(a,b)
  %1685 = call float @dx.op.binary.f32(i32 36, float %1670, float %1684)  ; FMin(a,b)
  %1686 = call float @dx.op.binary.f32(i32 35, float %1670, float %1671)  ; FMax(a,b)
  %1687 = call float @dx.op.binary.f32(i32 36, float %1686, float %1672)  ; FMin(a,b)
  %1688 = call float @dx.op.binary.f32(i32 36, float %1670, float %1671)  ; FMin(a,b)
  %1689 = call float @dx.op.binary.f32(i32 35, float %1688, float %1687)  ; FMax(a,b)
  %1690 = call float @dx.op.binary.f32(i32 35, float %1671, float %1672)  ; FMax(a,b)
  %1691 = call float @dx.op.binary.f32(i32 35, float %1670, float %1690)  ; FMax(a,b)
  store float %1685, float* %1607, align 4, !tbaa !90, !alias.scope !124, !noalias !125
  store float %1689, float* %1608, align 4, !tbaa !90, !alias.scope !122, !noalias !123
  store float %1691, float* %1609, align 4, !tbaa !90, !alias.scope !116, !noalias !119
  br label %1692

; <label>:1692                                    ; preds = %1669, %1598, %1587, %1585, %1482
  %1693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %1694 = extractvalue %dx.types.CBufRet.f32 %1693, 2
  %1695 = fmul fast float %1694, %1492
  %1696 = call float @dx.op.unary.f32(i32 7, float %1695)  ; Saturate(value)
  %1697 = fptoui float %1431 to i32
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1698 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %24
  store i32 %1697, i32 addrspace(3)* %1698, align 4, !tbaa !126
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1699 = and i32 %24, 63
  %1700 = icmp ult i32 %1699, 32
  br i1 %1700, label %1701, label %1707, !dx.controlflow.hints !128

; <label>:1701                                    ; preds = %1692
  %1702 = add i32 %24, 32
  %1703 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1702
  %1704 = load i32, i32 addrspace(3)* %1703, align 4, !tbaa !126
  %1705 = load i32, i32 addrspace(3)* %1698, align 4, !tbaa !126
  %1706 = call i32 @dx.op.binary.i32(i32 40, i32 %1705, i32 %1704)  ; UMin(a,b)
  store i32 %1706, i32 addrspace(3)* %1698, align 4, !tbaa !126
  br label %1707

; <label>:1707                                    ; preds = %1701, %1692
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1708 = icmp ult i32 %1699, 16
  br i1 %1708, label %1709, label %1715, !dx.controlflow.hints !129

; <label>:1709                                    ; preds = %1707
  %1710 = add i32 %24, 16
  %1711 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1710
  %1712 = load i32, i32 addrspace(3)* %1711, align 4, !tbaa !126
  %1713 = load i32, i32 addrspace(3)* %1698, align 4, !tbaa !126
  %1714 = call i32 @dx.op.binary.i32(i32 40, i32 %1713, i32 %1712)  ; UMin(a,b)
  store i32 %1714, i32 addrspace(3)* %1698, align 4, !tbaa !126
  br label %1715

; <label>:1715                                    ; preds = %1709, %1707
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1716 = icmp ult i32 %1699, 8
  br i1 %1716, label %1717, label %1723, !dx.controlflow.hints !130

; <label>:1717                                    ; preds = %1715
  %1718 = add i32 %24, 8
  %1719 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1718
  %1720 = load i32, i32 addrspace(3)* %1719, align 4, !tbaa !126
  %1721 = load i32, i32 addrspace(3)* %1698, align 4, !tbaa !126
  %1722 = call i32 @dx.op.binary.i32(i32 40, i32 %1721, i32 %1720)  ; UMin(a,b)
  store i32 %1722, i32 addrspace(3)* %1698, align 4, !tbaa !126
  br label %1723

; <label>:1723                                    ; preds = %1717, %1715
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1724 = icmp ult i32 %1699, 4
  br i1 %1724, label %1725, label %1731, !dx.controlflow.hints !131

; <label>:1725                                    ; preds = %1723
  %1726 = add i32 %24, 4
  %1727 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1726
  %1728 = load i32, i32 addrspace(3)* %1727, align 4, !tbaa !126
  %1729 = load i32, i32 addrspace(3)* %1698, align 4, !tbaa !126
  %1730 = call i32 @dx.op.binary.i32(i32 40, i32 %1729, i32 %1728)  ; UMin(a,b)
  store i32 %1730, i32 addrspace(3)* %1698, align 4, !tbaa !126
  br label %1731

; <label>:1731                                    ; preds = %1725, %1723
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1732 = icmp ult i32 %1699, 2
  br i1 %1732, label %1733, label %1739, !dx.controlflow.hints !132

; <label>:1733                                    ; preds = %1731
  %1734 = add i32 %24, 2
  %1735 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1734
  %1736 = load i32, i32 addrspace(3)* %1735, align 4, !tbaa !126
  %1737 = load i32, i32 addrspace(3)* %1698, align 4, !tbaa !126
  %1738 = call i32 @dx.op.binary.i32(i32 40, i32 %1737, i32 %1736)  ; UMin(a,b)
  store i32 %1738, i32 addrspace(3)* %1698, align 4, !tbaa !126
  br label %1739

; <label>:1739                                    ; preds = %1733, %1731
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1740 = icmp eq i32 %1699, 0
  br i1 %1740, label %1741, label %1747, !dx.controlflow.hints !133

; <label>:1741                                    ; preds = %1739
  %1742 = add i32 %24, 1
  %1743 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1742
  %1744 = load i32, i32 addrspace(3)* %1743, align 4, !tbaa !126
  %1745 = load i32, i32 addrspace(3)* %1698, align 4, !tbaa !126
  %1746 = call i32 @dx.op.binary.i32(i32 40, i32 %1745, i32 %1744)  ; UMin(a,b)
  store i32 %1746, i32 addrspace(3)* %1698, align 4, !tbaa !126
  br label %1747

; <label>:1747                                    ; preds = %1741, %1739
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1748 = and i32 %24, -64
  %1749 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1748
  %1750 = load i32, i32 addrspace(3)* %1749, align 4, !tbaa !126
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %1697, i32 addrspace(3)* %1698, align 4, !tbaa !126
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %1700, label %1751, label %1757, !dx.controlflow.hints !134

; <label>:1751                                    ; preds = %1747
  %1752 = add i32 %24, 32
  %1753 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1752
  %1754 = load i32, i32 addrspace(3)* %1753, align 4, !tbaa !126
  %1755 = load i32, i32 addrspace(3)* %1698, align 4, !tbaa !126
  %1756 = call i32 @dx.op.binary.i32(i32 39, i32 %1755, i32 %1754)  ; UMax(a,b)
  store i32 %1756, i32 addrspace(3)* %1698, align 4, !tbaa !126
  br label %1757

; <label>:1757                                    ; preds = %1751, %1747
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1708, label %1758, label %1764, !dx.controlflow.hints !135

; <label>:1758                                    ; preds = %1757
  %1759 = add i32 %24, 16
  %1760 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1759
  %1761 = load i32, i32 addrspace(3)* %1760, align 4, !tbaa !126
  %1762 = load i32, i32 addrspace(3)* %1698, align 4, !tbaa !126
  %1763 = call i32 @dx.op.binary.i32(i32 39, i32 %1762, i32 %1761)  ; UMax(a,b)
  store i32 %1763, i32 addrspace(3)* %1698, align 4, !tbaa !126
  br label %1764

; <label>:1764                                    ; preds = %1758, %1757
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1716, label %1765, label %1771, !dx.controlflow.hints !136

; <label>:1765                                    ; preds = %1764
  %1766 = add i32 %24, 8
  %1767 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1766
  %1768 = load i32, i32 addrspace(3)* %1767, align 4, !tbaa !126
  %1769 = load i32, i32 addrspace(3)* %1698, align 4, !tbaa !126
  %1770 = call i32 @dx.op.binary.i32(i32 39, i32 %1769, i32 %1768)  ; UMax(a,b)
  store i32 %1770, i32 addrspace(3)* %1698, align 4, !tbaa !126
  br label %1771

; <label>:1771                                    ; preds = %1765, %1764
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1724, label %1772, label %1778, !dx.controlflow.hints !137

; <label>:1772                                    ; preds = %1771
  %1773 = add i32 %24, 4
  %1774 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1773
  %1775 = load i32, i32 addrspace(3)* %1774, align 4, !tbaa !126
  %1776 = load i32, i32 addrspace(3)* %1698, align 4, !tbaa !126
  %1777 = call i32 @dx.op.binary.i32(i32 39, i32 %1776, i32 %1775)  ; UMax(a,b)
  store i32 %1777, i32 addrspace(3)* %1698, align 4, !tbaa !126
  br label %1778

; <label>:1778                                    ; preds = %1772, %1771
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1732, label %1779, label %1785, !dx.controlflow.hints !138

; <label>:1779                                    ; preds = %1778
  %1780 = add i32 %24, 2
  %1781 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1780
  %1782 = load i32, i32 addrspace(3)* %1781, align 4, !tbaa !126
  %1783 = load i32, i32 addrspace(3)* %1698, align 4, !tbaa !126
  %1784 = call i32 @dx.op.binary.i32(i32 39, i32 %1783, i32 %1782)  ; UMax(a,b)
  store i32 %1784, i32 addrspace(3)* %1698, align 4, !tbaa !126
  br label %1785

; <label>:1785                                    ; preds = %1779, %1778
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1740, label %1786, label %1792, !dx.controlflow.hints !139

; <label>:1786                                    ; preds = %1785
  %1787 = add i32 %24, 1
  %1788 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1787
  %1789 = load i32, i32 addrspace(3)* %1788, align 4, !tbaa !126
  %1790 = load i32, i32 addrspace(3)* %1698, align 4, !tbaa !126
  %1791 = call i32 @dx.op.binary.i32(i32 39, i32 %1790, i32 %1789)  ; UMax(a,b)
  store i32 %1791, i32 addrspace(3)* %1698, align 4, !tbaa !126
  br label %1792

; <label>:1792                                    ; preds = %1786, %1785
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1793 = load i32, i32 addrspace(3)* %1749, align 4, !tbaa !126
  %1794 = uitofp i32 %1793 to float
  %1795 = uitofp i32 %1750 to float
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %22, i32 %23, i32 undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1797 = extractvalue %dx.types.CBufRet.f32 %1796, 0
  %1798 = fmul fast float %1797, %1431
  %1799 = fmul fast float %1797, %1794
  %1800 = fmul fast float %1797, %1795
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %22, i32 %23, i32 undef, float %1798, float %1799, float %1800, float %1798, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %22, i32 %23, i32 undef, float %1696, float %1696, float %1696, float %1696, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #3

attributes #0 = { nounwind readnone }
attributes #1 = { noduplicate nounwind }
attributes #2 = { nounwind }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!33}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !18, !24, !27}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !15, !16, !17}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 16, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture3D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 4, i32 0, !7}
!9 = !{i32 2, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 4, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 8, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 9, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 18, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.StructuredBuffer<VolumetricBBoxGpu>"* undef, !"", i32 0, i32 25, i32 1, i32 12, i32 0, !14}
!14 = !{i32 1, i32 164}
!15 = !{i32 7, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 13, i32 1, i32 2, i32 0, !7}
!16 = !{i32 8, %"class.Texture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!17 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 17, i32 1, i32 11, i32 0, null}
!18 = !{!19, !20, !21, !22}
!19 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!20 = !{i32 1, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!21 = !{i32 2, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!22 = !{i32 3, %"class.RWTexture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 7, i1 false, i1 false, i1 false, !23}
!23 = !{i32 0, i32 14}
!24 = !{!25, !26}
!25 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!26 = !{i32 1, %FogRaymarchingConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 112, null}
!27 = !{!28, !29, !30, !31, !32}
!28 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!29 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!30 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!31 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!32 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!33 = !{void ()* @cs_fog_raymarching_air_clouds_heightmap_particles, !"cs_fog_raymarching_air_clouds_heightmap_particles", null, !4, !34}
!34 = !{i32 0, i64 272, i32 4, !35}
!35 = !{i32 8, i32 8, i32 1}
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
!57 = distinct !{!57, !58}
!58 = !{!"llvm.loop.unroll.disable"}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
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
!82 = distinct !{!82, !"dx.controlflow.hints", i32 1}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 2}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 2}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 2}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 2}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 2}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 2}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 2}
!90 = !{!91, !91, i64 0}
!91 = !{!"float", !92, i64 0}
!92 = !{!"omnipotent char", !93, i64 0}
!93 = !{!"Simple C/C++ TBAA"}
!94 = !{!95, !97, !99, !100, !102, !103, !104}
!95 = distinct !{!95, !96, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!96 = distinct !{!96, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!97 = distinct !{!97, !98, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!98 = distinct !{!98, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!99 = distinct !{!99, !98, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!100 = distinct !{!100, !101, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %scattering"}
!101 = distinct !{!101, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z"}
!102 = distinct !{!102, !101, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %transmission"}
!103 = distinct !{!103, !101, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %depthDensityWeighted"}
!104 = distinct !{!104, !101, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %rawShadowmapData"}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 2}
!106 = !{!107}
!107 = distinct !{!107, !108, !"\01?sort@@YAXAIAM00@Z: %c"}
!108 = distinct !{!108, !"\01?sort@@YAXAIAM00@Z"}
!109 = !{!110, !111, !95, !97, !99, !100, !102, !103, !104}
!110 = distinct !{!110, !108, !"\01?sort@@YAXAIAM00@Z: %a"}
!111 = distinct !{!111, !108, !"\01?sort@@YAXAIAM00@Z: %b"}
!112 = !{!111}
!113 = !{!110, !107, !95, !97, !99, !100, !102, !103, !104}
!114 = !{!110}
!115 = !{!111, !107, !95, !97, !99, !100, !102, !103, !104}
!116 = !{!117}
!117 = distinct !{!117, !118, !"\01?sort@@YAXAIAM00@Z: %c"}
!118 = distinct !{!118, !"\01?sort@@YAXAIAM00@Z"}
!119 = !{!120, !121, !95, !97, !99, !100, !102, !103, !104}
!120 = distinct !{!120, !118, !"\01?sort@@YAXAIAM00@Z: %a"}
!121 = distinct !{!121, !118, !"\01?sort@@YAXAIAM00@Z: %b"}
!122 = !{!121}
!123 = !{!120, !117, !95, !97, !99, !100, !102, !103, !104}
!124 = !{!120}
!125 = !{!121, !117, !95, !97, !99, !100, !102, !103, !104}
!126 = !{!127, !127, i64 0}
!127 = !{!"int", !92, i64 0}
!128 = distinct !{!128, !"dx.controlflow.hints", i32 2}
!129 = distinct !{!129, !"dx.controlflow.hints", i32 2}
!130 = distinct !{!130, !"dx.controlflow.hints", i32 2}
!131 = distinct !{!131, !"dx.controlflow.hints", i32 2}
!132 = distinct !{!132, !"dx.controlflow.hints", i32 2}
!133 = distinct !{!133, !"dx.controlflow.hints", i32 2}
!134 = distinct !{!134, !"dx.controlflow.hints", i32 2}
!135 = distinct !{!135, !"dx.controlflow.hints", i32 2}
!136 = distinct !{!136, !"dx.controlflow.hints", i32 2}
!137 = distinct !{!137, !"dx.controlflow.hints", i32 2}
!138 = distinct !{!138, !"dx.controlflow.hints", i32 2}
!139 = distinct !{!139, !"dx.controlflow.hints", i32 2}

