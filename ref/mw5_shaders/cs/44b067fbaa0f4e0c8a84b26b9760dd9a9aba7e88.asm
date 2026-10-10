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
; shader hash: be8cad8f507e436049b65147ca617205
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
;                                   texture     f32          2d      T1            t27     1
;                                   texture     f32          3d      T2             t1     1
;                                   texture     f32          3d      T3             t2     1
;                                   texture     f32          2d      T4             t8     1
;                                   texture     f32          2d      T5             t9     1
;                                   texture     f32          2d      T6            t18     1
;                                   texture  struct         r/o      T7            t25     1
;                                   texture     f32          2d      T8            t13     1
;                                   texture     f32          2d      T9             t0     1
;                                   texture    byte         r/o     T10            t17     1
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

define void @cs_fog_raymarching_air_clouds_heightmap_particles_brfog() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %24 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %25 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %26 = alloca [3 x float], align 4
  %27 = alloca [3 x float], align 4
  %28 = add i32 %24, %23
  %29 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 361)  ; CBufferLoadLegacy(handle,regIndex)
  %30 = extractvalue %dx.types.CBufRet.i32 %29, 1
  %31 = add i32 %28, %30
  %32 = lshr i32 %31, 1
  %33 = and i32 %32, 1
  %34 = and i32 %31, 1
  %35 = xor i32 %33, %34
  %36 = shl i32 %23, 1
  %37 = shl i32 %24, 1
  %38 = or i32 %35, %36
  %39 = or i32 %33, %37
  %40 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %41 = extractvalue %dx.types.ResRet.i32 %40, 0
  %42 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %43 = extractvalue %dx.types.ResRet.i32 %42, 0
  %44 = extractvalue %dx.types.ResRet.i32 %42, 1
  %45 = extractvalue %dx.types.ResRet.i32 %42, 2
  %46 = extractvalue %dx.types.ResRet.i32 %42, 3
  %47 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %48 = extractvalue %dx.types.ResRet.i32 %47, 0
  %49 = extractvalue %dx.types.ResRet.i32 %47, 1
  %50 = extractvalue %dx.types.ResRet.i32 %47, 2
  %51 = extractvalue %dx.types.ResRet.i32 %47, 3
  %52 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %53 = extractvalue %dx.types.ResRet.i32 %52, 0
  %54 = extractvalue %dx.types.ResRet.i32 %52, 1
  %55 = extractvalue %dx.types.ResRet.i32 %52, 2
  %56 = extractvalue %dx.types.ResRet.i32 %52, 3
  %57 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %58 = extractvalue %dx.types.CBufRet.f32 %57, 2
  %59 = fmul fast float %58, %58
  %60 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %61 = extractvalue %dx.types.CBufRet.f32 %60, 0
  %62 = extractvalue %dx.types.CBufRet.f32 %60, 1
  %63 = extractvalue %dx.types.CBufRet.f32 %60, 2
  %64 = fmul fast float %63, 0x3FF17B1420000000
  %65 = icmp eq i32 %25, 0
  br i1 %65, label %66, label %207, !dx.controlflow.hints !37

; <label>:66                                      ; preds = %0
  %67 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %68 = extractvalue %dx.types.CBufRet.f32 %67, 0
  %69 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %70 = extractvalue %dx.types.CBufRet.f32 %69, 3
  %71 = extractvalue %dx.types.ResRet.i32 %40, 1
  %72 = and i32 %71, 65535
  %73 = call float @dx.op.legacyF16ToF32(i32 131, i32 %72)  ; LegacyF16ToF32(value)
  %74 = lshr i32 %41, 16
  %75 = call float @dx.op.legacyF16ToF32(i32 131, i32 %74)  ; LegacyF16ToF32(value)
  %76 = and i32 %41, 65535
  %77 = call float @dx.op.legacyF16ToF32(i32 131, i32 %76)  ; LegacyF16ToF32(value)
  %78 = lshr i32 %46, 16
  %79 = call float @dx.op.legacyF16ToF32(i32 131, i32 %78)  ; LegacyF16ToF32(value)
  %80 = and i32 %46, 65535
  %81 = call float @dx.op.legacyF16ToF32(i32 131, i32 %80)  ; LegacyF16ToF32(value)
  %82 = lshr i32 %45, 16
  %83 = call float @dx.op.legacyF16ToF32(i32 131, i32 %82)  ; LegacyF16ToF32(value)
  %84 = and i32 %45, 65535
  %85 = call float @dx.op.legacyF16ToF32(i32 131, i32 %84)  ; LegacyF16ToF32(value)
  %86 = lshr i32 %44, 16
  %87 = call float @dx.op.legacyF16ToF32(i32 131, i32 %86)  ; LegacyF16ToF32(value)
  %88 = lshr i32 %43, 16
  %89 = call float @dx.op.legacyF16ToF32(i32 131, i32 %88)  ; LegacyF16ToF32(value)
  %90 = and i32 %43, 65535
  %91 = call float @dx.op.legacyF16ToF32(i32 131, i32 %90)  ; LegacyF16ToF32(value)
  %92 = lshr i32 %51, 16
  %93 = call float @dx.op.legacyF16ToF32(i32 131, i32 %92)  ; LegacyF16ToF32(value)
  %94 = and i32 %51, 65535
  %95 = call float @dx.op.legacyF16ToF32(i32 131, i32 %94)  ; LegacyF16ToF32(value)
  %96 = lshr i32 %50, 16
  %97 = call float @dx.op.legacyF16ToF32(i32 131, i32 %96)  ; LegacyF16ToF32(value)
  %98 = and i32 %50, 65535
  %99 = call float @dx.op.legacyF16ToF32(i32 131, i32 %98)  ; LegacyF16ToF32(value)
  %100 = lshr i32 %49, 16
  %101 = call float @dx.op.legacyF16ToF32(i32 131, i32 %100)  ; LegacyF16ToF32(value)
  %102 = and i32 %49, 65535
  %103 = call float @dx.op.legacyF16ToF32(i32 131, i32 %102)  ; LegacyF16ToF32(value)
  %104 = and i32 %48, 65535
  %105 = call float @dx.op.legacyF16ToF32(i32 131, i32 %104)  ; LegacyF16ToF32(value)
  %106 = lshr i32 %56, 16
  %107 = call float @dx.op.legacyF16ToF32(i32 131, i32 %106)  ; LegacyF16ToF32(value)
  %108 = and i32 %56, 65535
  %109 = call float @dx.op.legacyF16ToF32(i32 131, i32 %108)  ; LegacyF16ToF32(value)
  %110 = lshr i32 %55, 16
  %111 = call float @dx.op.legacyF16ToF32(i32 131, i32 %110)  ; LegacyF16ToF32(value)
  %112 = and i32 %55, 65535
  %113 = call float @dx.op.legacyF16ToF32(i32 131, i32 %112)  ; LegacyF16ToF32(value)
  %114 = lshr i32 %54, 16
  %115 = call float @dx.op.legacyF16ToF32(i32 131, i32 %114)  ; LegacyF16ToF32(value)
  %116 = and i32 %54, 65535
  %117 = call float @dx.op.legacyF16ToF32(i32 131, i32 %116)  ; LegacyF16ToF32(value)
  %118 = lshr i32 %53, 16
  %119 = call float @dx.op.legacyF16ToF32(i32 131, i32 %118)  ; LegacyF16ToF32(value)
  %120 = and i32 %44, 65535
  %121 = call float @dx.op.legacyF16ToF32(i32 131, i32 %120)  ; LegacyF16ToF32(value)
  %122 = lshr i32 %48, 16
  %123 = call float @dx.op.legacyF16ToF32(i32 131, i32 %122)  ; LegacyF16ToF32(value)
  %124 = and i32 %53, 65535
  %125 = call float @dx.op.legacyF16ToF32(i32 131, i32 %124)  ; LegacyF16ToF32(value)
  %126 = fmul fast float %121, 0x3FD20DD760000000
  %127 = fmul fast float %63, %58
  %128 = fmul fast float %127, %85
  %129 = fmul fast float %63, %63
  %130 = fmul fast float %129, 0x3FEE471020000000
  %131 = fadd fast float %130, 0xBFD42F6020000000
  %132 = fmul fast float %77, %131
  %133 = fmul fast float %83, %61
  %134 = fmul fast float %87, %62
  %135 = fmul fast float %61, %59
  %136 = fmul fast float %135, %64
  %137 = fmul fast float %136, %75
  %138 = fsub fast float -0.000000e+00, %137
  %139 = fmul fast float %62, %59
  %140 = fmul fast float %139, %64
  %141 = fmul fast float %140, %79
  %142 = fmul fast float %61, %61
  %143 = fmul fast float %62, %62
  %144 = fsub fast float %142, %143
  %145 = fmul fast float %144, 0x3FE17B1420000000
  %146 = fmul fast float %145, %73
  %147 = fmul fast float %62, 0x3FF17B1420000000
  %148 = fmul fast float %147, %61
  %149 = fmul fast float %148, %81
  %150 = fadd fast float %134, %133
  %151 = fmul fast float %150, %58
  %152 = fsub fast float %151, %128
  %153 = fmul fast float %152, 0x3FDF454380000000
  %154 = fadd fast float %132, %146
  %155 = fadd fast float %154, %149
  %156 = fmul fast float %155, %59
  %157 = fsub fast float %138, %141
  %158 = fadd fast float %157, %126
  %159 = fadd fast float %158, %153
  %160 = fadd fast float %159, %156
  %161 = fmul fast float %68, %70
  %162 = fmul fast float %161, %160
  %163 = fmul fast float %123, 0x3FD20DD760000000
  %164 = fmul fast float %127, %101
  %165 = fmul fast float %93, %131
  %166 = fmul fast float %99, %61
  %167 = fmul fast float %103, %62
  %168 = fmul fast float %136, %91
  %169 = fsub fast float -0.000000e+00, %168
  %170 = fmul fast float %140, %95
  %171 = fmul fast float %145, %89
  %172 = fmul fast float %148, %97
  %173 = fadd fast float %167, %166
  %174 = fmul fast float %173, %58
  %175 = fsub fast float %174, %164
  %176 = fmul fast float %175, 0x3FDF454380000000
  %177 = fadd fast float %165, %171
  %178 = fadd fast float %177, %172
  %179 = fmul fast float %178, %59
  %180 = fsub fast float %169, %170
  %181 = fadd fast float %180, %163
  %182 = fadd fast float %181, %176
  %183 = fadd fast float %182, %179
  %184 = fmul fast float %161, %183
  %185 = fmul fast float %125, 0x3FD20DD760000000
  %186 = fmul fast float %127, %117
  %187 = fmul fast float %109, %131
  %188 = fmul fast float %115, %61
  %189 = fmul fast float %119, %62
  %190 = fmul fast float %136, %107
  %191 = fsub fast float -0.000000e+00, %190
  %192 = fmul fast float %140, %111
  %193 = fmul fast float %145, %105
  %194 = fmul fast float %148, %113
  %195 = fadd fast float %189, %188
  %196 = fmul fast float %195, %58
  %197 = fsub fast float %196, %186
  %198 = fmul fast float %197, 0x3FDF454380000000
  %199 = fadd fast float %187, %193
  %200 = fadd fast float %199, %194
  %201 = fmul fast float %200, %59
  %202 = fsub fast float %191, %192
  %203 = fadd fast float %202, %185
  %204 = fadd fast float %203, %198
  %205 = fadd fast float %204, %201
  %206 = fmul fast float %161, %205
  br label %207

; <label>:207                                     ; preds = %66, %0
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %208 = uitofp i32 %38 to float
  %209 = uitofp i32 %39 to float
  %210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %211 = extractvalue %dx.types.CBufRet.f32 %210, 2
  %212 = fmul fast float %211, 0x3FE3C6EF40000000
  %213 = frem fast float %208, 2.560000e+02
  %214 = frem fast float %209, 2.560000e+02
  %215 = fptoui float %213 to i32
  %216 = fptoui float %214 to i32
  %217 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %215, i32 %216, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %218 = extractvalue %dx.types.ResRet.f32 %217, 0
  %219 = extractvalue %dx.types.ResRet.f32 %217, 1
  %220 = extractvalue %dx.types.ResRet.f32 %217, 2
  %221 = extractvalue %dx.types.ResRet.f32 %217, 3
  %222 = fadd fast float %218, %212
  %223 = fadd fast float %219, %212
  %224 = fadd fast float %220, %212
  %225 = fadd fast float %221, %212
  %226 = call float @dx.op.unary.f32(i32 22, float %222)  ; Frc(value)
  %227 = call float @dx.op.unary.f32(i32 22, float %223)  ; Frc(value)
  %228 = call float @dx.op.unary.f32(i32 22, float %224)  ; Frc(value)
  %229 = call float @dx.op.unary.f32(i32 22, float %225)  ; Frc(value)
  %230 = fadd fast float %228, %208
  %231 = fadd fast float %229, %209
  %232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %233 = extractvalue %dx.types.CBufRet.f32 %232, 2
  %234 = extractvalue %dx.types.CBufRet.f32 %232, 3
  %235 = fmul fast float %233, %230
  %236 = fmul fast float %234, %231
  %237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %238 = extractvalue %dx.types.CBufRet.f32 %237, 0
  %239 = extractvalue %dx.types.CBufRet.f32 %237, 1
  %240 = extractvalue %dx.types.CBufRet.f32 %237, 2
  %241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %242 = extractvalue %dx.types.CBufRet.f32 %241, 1
  %243 = fmul fast float %235, 2.000000e+00
  %244 = fmul fast float %236, 2.000000e+00
  %245 = fsub fast float 1.000000e+00, %243
  %246 = fsub fast float 1.000000e+00, %244
  %247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %248 = extractvalue %dx.types.CBufRet.f32 %247, 0
  %249 = extractvalue %dx.types.CBufRet.f32 %247, 1
  %250 = extractvalue %dx.types.CBufRet.f32 %247, 2
  %251 = fmul fast float %248, %245
  %252 = fmul fast float %249, %245
  %253 = fmul fast float %250, %245
  %254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %255 = extractvalue %dx.types.CBufRet.f32 %254, 0
  %256 = extractvalue %dx.types.CBufRet.f32 %254, 1
  %257 = extractvalue %dx.types.CBufRet.f32 %254, 2
  %258 = fmul fast float %255, %246
  %259 = fmul fast float %256, %246
  %260 = fmul fast float %257, %246
  %261 = fadd fast float %258, %251
  %262 = fadd fast float %259, %252
  %263 = fadd fast float %260, %253
  %264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %265 = extractvalue %dx.types.CBufRet.f32 %264, 0
  %266 = extractvalue %dx.types.CBufRet.f32 %264, 1
  %267 = extractvalue %dx.types.CBufRet.f32 %264, 2
  %268 = fadd fast float %261, %265
  %269 = fadd fast float %262, %266
  %270 = fadd fast float %263, %267
  %271 = fmul fast float %268, %242
  %272 = fmul fast float %269, %242
  %273 = fmul fast float %270, %242
  %274 = fmul fast float %271, %271
  %275 = fmul fast float %272, %272
  %276 = fadd fast float %274, %275
  %277 = fmul fast float %273, %273
  %278 = fadd fast float %276, %277
  %279 = call float @dx.op.unary.f32(i32 24, float %278)  ; Sqrt(value)
  %280 = fdiv fast float 1.000000e+00, %279
  %281 = fmul fast float %271, %280
  %282 = fmul fast float %272, %280
  %283 = fmul fast float %273, %280
  %284 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %38, i32 %39, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %285 = extractvalue %dx.types.ResRet.f32 %284, 0
  %286 = fcmp fast ogt float %285, -1.000000e+00
  %287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %288 = extractvalue %dx.types.CBufRet.f32 %287, 1
  %289 = select i1 %286, float %288, float 1.000000e+00
  %290 = fadd fast float %285, 1.000000e+00
  %291 = fmul fast float %289, %290
  %292 = call float @dx.op.unary.f32(i32 6, float %291)  ; FAbs(value)
  %293 = fdiv fast float 1.000000e+00, %242
  %294 = fmul fast float %293, %279
  %295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %296 = extractvalue %dx.types.CBufRet.f32 %295, 1
  %297 = fmul fast float %296, %294
  %298 = fmul fast float %294, %292
  %299 = extractvalue %dx.types.CBufRet.f32 %287, 3
  %300 = fcmp fast oge float %292, %299
  %301 = call float @dx.op.binary.f32(i32 36, float %298, float %297)  ; FMin(a,b)
  %302 = select i1 %300, float %297, float %301
  %303 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %304 = extractvalue %dx.types.CBufRet.i32 %303, 3
  %305 = icmp eq i32 %304, 0
  %306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %307 = extractvalue %dx.types.CBufRet.f32 %306, 2
  %308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %309 = extractvalue %dx.types.CBufRet.f32 %308, 2
  %310 = fsub fast float %307, %240
  %311 = fadd fast float %310, %309
  %312 = fsub fast float 0xC7EFFFFFE0000000, %240
  br i1 %305, label %324, label %313, !dx.controlflow.hints !38

; <label>:313                                     ; preds = %207
  %314 = fsub fast float -0.000000e+00, %239
  %315 = fsub fast float -0.000000e+00, %238
  %316 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %315, float %314, float %311)  ; Dot3(ax,ay,az,bx,by,bz)
  %317 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %281, float %282, float %283)  ; Dot3(ax,ay,az,bx,by,bz)
  %318 = fdiv fast float 1.000000e+00, %317
  %319 = fmul fast float %318, %316
  %320 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %315, float %314, float %312)  ; Dot3(ax,ay,az,bx,by,bz)
  %321 = fmul fast float %318, %320
  %322 = call float @dx.op.binary.f32(i32 36, float %319, float %321)  ; FMin(a,b)
  %323 = call float @dx.op.binary.f32(i32 35, float %319, float %321)  ; FMax(a,b)
  br label %357

; <label>:324                                     ; preds = %207
  %325 = extractvalue %dx.types.CBufRet.f32 %306, 0
  %326 = extractvalue %dx.types.CBufRet.f32 %306, 1
  %327 = extractvalue %dx.types.CBufRet.f32 %308, 0
  %328 = extractvalue %dx.types.CBufRet.f32 %308, 1
  %329 = fdiv fast float 1.000000e+00, %281
  %330 = fdiv fast float 1.000000e+00, %282
  %331 = fdiv fast float 1.000000e+00, %283
  %332 = fsub fast float %325, %238
  %333 = fmul fast float %329, %332
  %334 = fadd fast float %332, %327
  %335 = fmul fast float %334, %329
  %336 = call float @dx.op.binary.f32(i32 36, float %333, float %335)  ; FMin(a,b)
  %337 = call float @dx.op.binary.f32(i32 35, float %333, float %335)  ; FMax(a,b)
  %338 = fsub fast float %326, %239
  %339 = fmul fast float %330, %338
  %340 = fadd fast float %338, %328
  %341 = fmul fast float %340, %330
  %342 = call float @dx.op.binary.f32(i32 36, float %339, float %341)  ; FMin(a,b)
  %343 = call float @dx.op.binary.f32(i32 35, float %336, float %342)  ; FMax(a,b)
  %344 = call float @dx.op.binary.f32(i32 35, float %339, float %341)  ; FMax(a,b)
  %345 = call float @dx.op.binary.f32(i32 36, float %337, float %344)  ; FMin(a,b)
  %346 = fmul fast float %331, %312
  %347 = fmul fast float %331, %311
  %348 = call float @dx.op.binary.f32(i32 36, float %346, float %347)  ; FMin(a,b)
  %349 = call float @dx.op.binary.f32(i32 35, float %343, float %348)  ; FMax(a,b)
  %350 = call float @dx.op.binary.f32(i32 35, float %346, float %347)  ; FMax(a,b)
  %351 = call float @dx.op.binary.f32(i32 36, float %345, float %350)  ; FMin(a,b)
  %352 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %349)  ; FMax(a,b)
  %353 = fcmp fast ult float %351, %352
  br i1 %353, label %357, label %354, !dx.controlflow.hints !39

; <label>:354                                     ; preds = %324
  %355 = call float @dx.op.binary.f32(i32 36, float %349, float %351)  ; FMin(a,b)
  %356 = call float @dx.op.binary.f32(i32 35, float %349, float %351)  ; FMax(a,b)
  br label %357

; <label>:357                                     ; preds = %354, %324, %313
  %358 = phi float [ %322, %313 ], [ %355, %354 ], [ 0.000000e+00, %324 ]
  %359 = phi float [ %323, %313 ], [ %356, %354 ], [ 0.000000e+00, %324 ]
  %360 = fcmp fast oeq float %359, 0.000000e+00
  %361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %362 = extractvalue %dx.types.CBufRet.f32 %361, 1
  %363 = fcmp fast olt float %359, %362
  %364 = or i1 %360, %363
  br i1 %364, label %369, label %365, !dx.controlflow.hints !40

; <label>:365                                     ; preds = %357
  %366 = call float @dx.op.binary.f32(i32 35, float %362, float %358)  ; FMax(a,b)
  %367 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %366)  ; FMin(a,b)
  %368 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %359)  ; FMax(a,b)
  br label %369

; <label>:369                                     ; preds = %365, %357
  %370 = phi i32 [ 1, %365 ], [ 0, %357 ]
  %371 = phi float [ %368, %365 ], [ -1.000000e+00, %357 ]
  %372 = phi float [ %367, %365 ], [ 0x47EFFFFFE0000000, %357 ]
  %373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %374 = extractvalue %dx.types.CBufRet.f32 %373, 3
  %375 = fsub fast float -0.000000e+00, %238
  %376 = fsub fast float -0.000000e+00, %239
  %377 = fsub fast float %374, %240
  %378 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %375, float %376, float %377)  ; Dot3(ax,ay,az,bx,by,bz)
  %379 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %281, float %282, float %283)  ; Dot3(ax,ay,az,bx,by,bz)
  %380 = fdiv fast float 1.000000e+00, %379
  %381 = fmul fast float %380, %378
  %382 = fcmp fast olt float %381, 0.000000e+00
  %383 = fcmp fast ogt float %283, 0.000000e+00
  %384 = and i1 %383, %382
  br i1 %384, label %389, label %385, !dx.controlflow.hints !41

; <label>:385                                     ; preds = %369
  %386 = fcmp fast olt float %283, 0.000000e+00
  br i1 %386, label %387, label %389, !dx.controlflow.hints !42

; <label>:387                                     ; preds = %385
  %388 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %381)  ; FMax(a,b)
  br label %389

; <label>:389                                     ; preds = %387, %385, %369
  %390 = phi float [ 0.000000e+00, %369 ], [ %388, %387 ], [ 0.000000e+00, %385 ]
  %391 = phi float [ 0.000000e+00, %369 ], [ 0x47EFFFFFE0000000, %387 ], [ %381, %385 ]
  %392 = fcmp fast oeq float %391, 0.000000e+00
  br i1 %392, label %396, label %393, !dx.controlflow.hints !43

; <label>:393                                     ; preds = %389
  %394 = call float @dx.op.binary.f32(i32 36, float %372, float %390)  ; FMin(a,b)
  %395 = call float @dx.op.binary.f32(i32 35, float %371, float %391)  ; FMax(a,b)
  br label %396

; <label>:396                                     ; preds = %393, %389
  %397 = phi i32 [ 1, %393 ], [ 0, %389 ]
  %398 = phi float [ %395, %393 ], [ %371, %389 ]
  %399 = phi float [ %394, %393 ], [ %372, %389 ]
  %400 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %401 = extractvalue %dx.types.CBufRet.i32 %400, 3
  %402 = icmp eq i32 %401, 0
  %403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %404 = extractvalue %dx.types.CBufRet.f32 %403, 2
  %405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %406 = extractvalue %dx.types.CBufRet.f32 %405, 2
  %407 = fsub fast float %404, %240
  %408 = fadd fast float %407, %406
  br i1 %402, label %416, label %409, !dx.controlflow.hints !44

; <label>:409                                     ; preds = %396
  %410 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %375, float %376, float %408)  ; Dot3(ax,ay,az,bx,by,bz)
  %411 = fmul fast float %380, %410
  %412 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %375, float %376, float %407)  ; Dot3(ax,ay,az,bx,by,bz)
  %413 = fmul fast float %380, %412
  %414 = call float @dx.op.binary.f32(i32 36, float %411, float %413)  ; FMin(a,b)
  %415 = call float @dx.op.binary.f32(i32 35, float %411, float %413)  ; FMax(a,b)
  br label %449

; <label>:416                                     ; preds = %396
  %417 = fdiv fast float 1.000000e+00, %281
  %418 = fdiv fast float 1.000000e+00, %282
  %419 = fdiv fast float 1.000000e+00, %283
  %420 = extractvalue %dx.types.CBufRet.f32 %403, 0
  %421 = extractvalue %dx.types.CBufRet.f32 %403, 1
  %422 = extractvalue %dx.types.CBufRet.f32 %405, 0
  %423 = extractvalue %dx.types.CBufRet.f32 %405, 1
  %424 = fsub fast float %420, %238
  %425 = fmul fast float %424, %417
  %426 = fadd fast float %424, %422
  %427 = fmul fast float %426, %417
  %428 = call float @dx.op.binary.f32(i32 36, float %425, float %427)  ; FMin(a,b)
  %429 = call float @dx.op.binary.f32(i32 35, float %425, float %427)  ; FMax(a,b)
  %430 = fsub fast float %421, %239
  %431 = fmul fast float %430, %418
  %432 = fadd fast float %430, %423
  %433 = fmul fast float %432, %418
  %434 = call float @dx.op.binary.f32(i32 36, float %431, float %433)  ; FMin(a,b)
  %435 = call float @dx.op.binary.f32(i32 35, float %428, float %434)  ; FMax(a,b)
  %436 = call float @dx.op.binary.f32(i32 35, float %431, float %433)  ; FMax(a,b)
  %437 = call float @dx.op.binary.f32(i32 36, float %429, float %436)  ; FMin(a,b)
  %438 = fmul fast float %407, %419
  %439 = fmul fast float %408, %419
  %440 = call float @dx.op.binary.f32(i32 36, float %438, float %439)  ; FMin(a,b)
  %441 = call float @dx.op.binary.f32(i32 35, float %435, float %440)  ; FMax(a,b)
  %442 = call float @dx.op.binary.f32(i32 35, float %438, float %439)  ; FMax(a,b)
  %443 = call float @dx.op.binary.f32(i32 36, float %437, float %442)  ; FMin(a,b)
  %444 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %441)  ; FMax(a,b)
  %445 = fcmp fast ult float %443, %444
  br i1 %445, label %449, label %446, !dx.controlflow.hints !45

; <label>:446                                     ; preds = %416
  %447 = call float @dx.op.binary.f32(i32 36, float %441, float %443)  ; FMin(a,b)
  %448 = call float @dx.op.binary.f32(i32 35, float %441, float %443)  ; FMax(a,b)
  br label %449

; <label>:449                                     ; preds = %446, %416, %409
  %450 = phi float [ %414, %409 ], [ %447, %446 ], [ 0.000000e+00, %416 ]
  %451 = phi float [ %415, %409 ], [ %448, %446 ], [ 0.000000e+00, %416 ]
  %452 = fcmp fast oeq float %451, 0.000000e+00
  br i1 %452, label %456, label %453, !dx.controlflow.hints !46

; <label>:453                                     ; preds = %449
  %454 = call float @dx.op.binary.f32(i32 36, float %399, float %450)  ; FMin(a,b)
  %455 = call float @dx.op.binary.f32(i32 35, float %398, float %451)  ; FMax(a,b)
  br label %456

; <label>:456                                     ; preds = %453, %449
  %457 = phi i32 [ 1, %453 ], [ 0, %449 ]
  %458 = phi float [ %455, %453 ], [ %398, %449 ]
  %459 = phi float [ %454, %453 ], [ %399, %449 ]
  %460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %461 = extractvalue %dx.types.CBufRet.f32 %460, 3
  %462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %463 = extractvalue %dx.types.CBufRet.f32 %462, 0
  %464 = fsub fast float %461, %240
  %465 = fadd fast float %464, %463
  %466 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %375, float %376, float %465)  ; Dot3(ax,ay,az,bx,by,bz)
  %467 = fmul fast float %380, %466
  %468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %469 = extractvalue %dx.types.CBufRet.f32 %468, 2
  %470 = fsub fast float %469, %240
  %471 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %375, float %376, float %470)  ; Dot3(ax,ay,az,bx,by,bz)
  %472 = fmul fast float %380, %471
  %473 = call float @dx.op.binary.f32(i32 36, float %467, float %472)  ; FMin(a,b)
  %474 = call float @dx.op.binary.f32(i32 35, float %467, float %472)  ; FMax(a,b)
  %475 = call float @dx.op.binary.f32(i32 36, float %459, float %473)  ; FMin(a,b)
  %476 = call float @dx.op.binary.f32(i32 35, float %458, float %474)  ; FMax(a,b)
  %477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %478 = extractvalue %dx.types.CBufRet.f32 %477, 2
  %479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %480 = extractvalue %dx.types.CBufRet.f32 %479, 3
  %481 = fsub fast float %478, %240
  %482 = fadd fast float %481, %480
  %483 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %375, float %376, float %482)  ; Dot3(ax,ay,az,bx,by,bz)
  %484 = fmul fast float %380, %483
  %485 = fcmp fast olt float %484, 0.000000e+00
  %486 = and i1 %383, %485
  br i1 %486, label %491, label %487, !dx.controlflow.hints !47

; <label>:487                                     ; preds = %456
  %488 = fcmp fast olt float %283, 0.000000e+00
  br i1 %488, label %489, label %491, !dx.controlflow.hints !48

; <label>:489                                     ; preds = %487
  %490 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %484)  ; FMax(a,b)
  br label %491

; <label>:491                                     ; preds = %489, %487, %456
  %492 = phi float [ 0.000000e+00, %456 ], [ %490, %489 ], [ 0.000000e+00, %487 ]
  %493 = phi float [ 0.000000e+00, %456 ], [ 0x47EFFFFFE0000000, %489 ], [ %484, %487 ]
  %494 = fcmp fast oeq float %493, 0.000000e+00
  br i1 %494, label %498, label %495, !dx.controlflow.hints !49

; <label>:495                                     ; preds = %491
  %496 = call float @dx.op.binary.f32(i32 36, float %475, float %492)  ; FMin(a,b)
  %497 = call float @dx.op.binary.f32(i32 35, float %476, float %493)  ; FMax(a,b)
  br label %498

; <label>:498                                     ; preds = %495, %491
  %499 = phi i32 [ 1, %495 ], [ 0, %491 ]
  %500 = phi float [ %497, %495 ], [ %476, %491 ]
  %501 = phi float [ %496, %495 ], [ %475, %491 ]
  %502 = fdiv fast float 1.000000e+00, %281
  %503 = fdiv fast float 1.000000e+00, %282
  %504 = fdiv fast float 1.000000e+00, %283
  %505 = call float @dx.op.binary.f32(i32 36, float %302, float %500)  ; FMin(a,b)
  %506 = call float @dx.op.binary.f32(i32 35, float %279, float %501)  ; FMax(a,b)
  %507 = extractvalue %dx.types.CBufRet.f32 %373, 0
  %508 = fmul fast float %227, 2.000000e+00
  %509 = fadd fast float %508, -1.000000e+00
  %510 = fmul fast float %507, %509
  %511 = fadd fast float %510, %506
  %512 = fcmp fast olt float %511, %505
  %513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %514 = extractvalue %dx.types.CBufRet.f32 %513, 2
  %515 = fcmp fast olt float %514, 1.000000e+00
  %516 = and i1 %512, %515
  br i1 %516, label %517, label %1750

; <label>:517                                     ; preds = %498
  %518 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %519 = extractvalue %dx.types.CBufRet.i32 %518, 1
  %520 = add i32 %519, -1
  %521 = fmul fast float %511, %283
  %522 = fadd fast float %521, %240
  %523 = fmul fast float %511, %282
  %524 = fadd fast float %523, %239
  %525 = fmul fast float %511, %281
  %526 = fadd fast float %525, %238
  br label %527

; <label>:527                                     ; preds = %1728, %517
  %528 = phi i32 [ %1084, %1728 ], [ undef, %517 ]
  %529 = phi float [ %1086, %1728 ], [ undef, %517 ]
  %530 = phi float [ %826, %1728 ], [ undef, %517 ]
  %531 = phi float [ %827, %1728 ], [ undef, %517 ]
  %532 = phi float [ %828, %1728 ], [ undef, %517 ]
  %533 = phi float [ %829, %1728 ], [ undef, %517 ]
  %534 = phi float [ %1730, %1728 ], [ 0.000000e+00, %517 ]
  %535 = phi float [ %1731, %1728 ], [ 1.000000e+00, %517 ]
  %536 = phi float [ %1741, %1728 ], [ %526, %517 ]
  %537 = phi float [ %1742, %1728 ], [ %524, %517 ]
  %538 = phi float [ %1743, %1728 ], [ %522, %517 ]
  %539 = phi float [ %1729, %1728 ], [ %511, %517 ]
  %540 = phi i32 [ %551, %1728 ], [ 0, %517 ]
  %541 = phi i32 [ %831, %1728 ], [ 10, %517 ]
  %542 = phi i32 [ %723, %1728 ], [ %520, %517 ]
  %543 = phi float [ %1732, %1728 ], [ 0.000000e+00, %517 ]
  %544 = phi float [ %1733, %1728 ], [ 0.000000e+00, %517 ]
  %545 = phi float [ %1734, %1728 ], [ 0.000000e+00, %517 ]
  %546 = phi float [ %1735, %1728 ], [ 0.000000e+00, %517 ]
  %547 = phi float [ %1736, %1728 ], [ 0.000000e+00, %517 ]
  %548 = phi i32 [ %1737, %1728 ], [ 0, %517 ]
  %549 = fsub fast float -0.000000e+00, %537
  %550 = fsub fast float -0.000000e+00, %536
  %551 = add i32 %540, 1
  %552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %553 = extractvalue %dx.types.CBufRet.f32 %552, 0
  %554 = icmp eq i32 %370, 0
  br i1 %554, label %720, label %555, !dx.controlflow.hints !50

; <label>:555                                     ; preds = %527
  %556 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %557 = extractvalue %dx.types.CBufRet.i32 %556, 1
  %558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %559 = extractvalue %dx.types.CBufRet.f32 %558, 1
  %560 = fcmp fast ogt float %559, %539
  br i1 %560, label %561, label %563, !dx.controlflow.hints !51

; <label>:561                                     ; preds = %555
  %562 = fsub fast float %559, %539
  br label %710

; <label>:563                                     ; preds = %555
  %564 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %565 = extractvalue %dx.types.CBufRet.i32 %564, 3
  %566 = icmp eq i32 %565, 0
  %567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %568 = extractvalue %dx.types.CBufRet.f32 %567, 2
  %569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %570 = extractvalue %dx.types.CBufRet.f32 %569, 2
  %571 = fsub fast float %568, %538
  %572 = fadd fast float %571, %570
  %573 = fsub fast float 0xC7EFFFFFE0000000, %538
  br i1 %566, label %581, label %574, !dx.controlflow.hints !38

; <label>:574                                     ; preds = %563
  %575 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %550, float %549, float %572)  ; Dot3(ax,ay,az,bx,by,bz)
  %576 = fmul fast float %380, %575
  %577 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %550, float %549, float %573)  ; Dot3(ax,ay,az,bx,by,bz)
  %578 = fmul fast float %380, %577
  %579 = call float @dx.op.binary.f32(i32 36, float %576, float %578)  ; FMin(a,b)
  %580 = call float @dx.op.binary.f32(i32 35, float %576, float %578)  ; FMax(a,b)
  br label %611

; <label>:581                                     ; preds = %563
  %582 = extractvalue %dx.types.CBufRet.f32 %567, 0
  %583 = extractvalue %dx.types.CBufRet.f32 %567, 1
  %584 = extractvalue %dx.types.CBufRet.f32 %569, 0
  %585 = extractvalue %dx.types.CBufRet.f32 %569, 1
  %586 = fsub fast float %582, %536
  %587 = fmul fast float %502, %586
  %588 = fadd fast float %586, %584
  %589 = fmul fast float %588, %502
  %590 = call float @dx.op.binary.f32(i32 36, float %587, float %589)  ; FMin(a,b)
  %591 = call float @dx.op.binary.f32(i32 35, float %587, float %589)  ; FMax(a,b)
  %592 = fsub fast float %583, %537
  %593 = fmul fast float %503, %592
  %594 = fadd fast float %592, %585
  %595 = fmul fast float %594, %503
  %596 = call float @dx.op.binary.f32(i32 36, float %593, float %595)  ; FMin(a,b)
  %597 = call float @dx.op.binary.f32(i32 35, float %590, float %596)  ; FMax(a,b)
  %598 = call float @dx.op.binary.f32(i32 35, float %593, float %595)  ; FMax(a,b)
  %599 = call float @dx.op.binary.f32(i32 36, float %591, float %598)  ; FMin(a,b)
  %600 = fmul fast float %504, %573
  %601 = fmul fast float %504, %572
  %602 = call float @dx.op.binary.f32(i32 36, float %600, float %601)  ; FMin(a,b)
  %603 = call float @dx.op.binary.f32(i32 35, float %597, float %602)  ; FMax(a,b)
  %604 = call float @dx.op.binary.f32(i32 35, float %600, float %601)  ; FMax(a,b)
  %605 = call float @dx.op.binary.f32(i32 36, float %599, float %604)  ; FMin(a,b)
  %606 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %603)  ; FMax(a,b)
  %607 = fcmp fast ult float %605, %606
  br i1 %607, label %611, label %608, !dx.controlflow.hints !39

; <label>:608                                     ; preds = %581
  %609 = call float @dx.op.binary.f32(i32 36, float %603, float %605)  ; FMin(a,b)
  %610 = call float @dx.op.binary.f32(i32 35, float %603, float %605)  ; FMax(a,b)
  br label %611

; <label>:611                                     ; preds = %608, %581, %574
  %612 = phi float [ %579, %574 ], [ %609, %608 ], [ 0.000000e+00, %581 ]
  %613 = phi float [ %580, %574 ], [ %610, %608 ], [ 0.000000e+00, %581 ]
  %614 = fcmp fast ogt float %612, 0.000000e+00
  br i1 %614, label %710, label %615, !dx.controlflow.hints !52

; <label>:615                                     ; preds = %611
  %616 = fcmp fast ugt float %613, 0.000000e+00
  br i1 %616, label %617, label %710, !dx.controlflow.hints !53

; <label>:617                                     ; preds = %615
  %618 = icmp sgt i32 %542, 0
  br i1 %618, label %619, label %704

; <label>:619                                     ; preds = %617
  br label %620

; <label>:620                                     ; preds = %700, %619
  %621 = phi i32 [ %701, %700 ], [ %542, %619 ]
  %622 = sitofp i32 %621 to float
  %623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %624 = extractvalue %dx.types.CBufRet.f32 %623, 0
  %625 = extractvalue %dx.types.CBufRet.f32 %623, 1
  %626 = fsub fast float %536, %624
  %627 = fsub fast float %537, %625
  %628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %629 = extractvalue %dx.types.CBufRet.f32 %628, 0
  %630 = extractvalue %dx.types.CBufRet.f32 %628, 1
  %631 = fmul fast float %626, %629
  %632 = fmul fast float %627, %630
  %633 = fsub fast float 1.000000e+00, %632
  %634 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %635 = extractvalue %dx.types.CBufRet.i32 %634, 3
  %636 = icmp eq i32 %635, 0
  br i1 %636, label %643, label %637, !dx.controlflow.hints !54

; <label>:637                                     ; preds = %620
  %638 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %18, float %631, float %633, float undef, float undef, i32 0, i32 0, i32 undef, float %622)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %639 = extractvalue %dx.types.ResRet.f32 %638, 0
  %640 = extractvalue %dx.types.ResRet.f32 %638, 1
  %641 = extractvalue %dx.types.ResRet.f32 %638, 2
  %642 = extractvalue %dx.types.ResRet.f32 %638, 3
  br label %649

; <label>:643                                     ; preds = %620
  %644 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %19, float %631, float %633, float undef, float undef, i32 0, i32 0, i32 undef, float %622)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %645 = extractvalue %dx.types.ResRet.f32 %644, 0
  %646 = extractvalue %dx.types.ResRet.f32 %644, 1
  %647 = extractvalue %dx.types.ResRet.f32 %644, 2
  %648 = extractvalue %dx.types.ResRet.f32 %644, 3
  br label %649

; <label>:649                                     ; preds = %643, %637
  %650 = phi float [ %639, %637 ], [ %645, %643 ]
  %651 = phi float [ %640, %637 ], [ %646, %643 ]
  %652 = phi float [ %641, %637 ], [ %647, %643 ]
  %653 = phi float [ %642, %637 ], [ %648, %643 ]
  %654 = extractvalue %dx.types.CBufRet.f32 %628, 3
  %655 = fmul fast float %654, %650
  %656 = extractvalue %dx.types.CBufRet.f32 %623, 2
  %657 = fadd fast float %655, %656
  %658 = fmul fast float %654, %651
  %659 = fadd fast float %658, %656
  %660 = fmul fast float %654, %652
  %661 = fadd fast float %660, %656
  %662 = and i32 %621, 31
  %663 = shl i32 1, %662
  %664 = uitofp i32 %663 to float
  %665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %666 = extractvalue %dx.types.CBufRet.f32 %665, 3
  %667 = fdiv fast float 1.000000e+00, %666
  %668 = fmul fast float %667, %664
  %669 = fmul fast float %668, %283
  %670 = fadd fast float %669, %538
  %671 = fcmp fast oeq float %653, 0.000000e+00
  %672 = fcmp fast ogt float %538, %659
  %673 = fcmp fast ogt float %670, %659
  %674 = and i1 %672, %673
  %675 = or i1 %671, %674
  br i1 %675, label %676, label %680, !dx.controlflow.hints !55

; <label>:676                                     ; preds = %649
  %677 = add nsw i32 %621, 1
  %678 = add nsw i32 %557, -1
  %679 = call i32 @dx.op.binary.i32(i32 38, i32 %677, i32 %678)  ; IMin(a,b)
  br label %710

; <label>:680                                     ; preds = %649
  %681 = fcmp fast olt float %538, %661
  %682 = fcmp fast olt float %670, %661
  %683 = and i1 %681, %682
  br i1 %683, label %684, label %688, !dx.controlflow.hints !56

; <label>:684                                     ; preds = %680
  %685 = add nsw i32 %621, 1
  %686 = add nsw i32 %557, -1
  %687 = call i32 @dx.op.binary.i32(i32 38, i32 %685, i32 %686)  ; IMin(a,b)
  br label %710

; <label>:688                                     ; preds = %680
  %689 = fcmp fast olt float %538, %657
  %690 = fcmp fast olt float %670, %657
  %691 = and i1 %689, %690
  br i1 %691, label %692, label %700, !dx.controlflow.hints !57

; <label>:692                                     ; preds = %688
  %693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %694 = extractvalue %dx.types.CBufRet.f32 %693, 3
  %695 = extractvalue %dx.types.CBufRet.f32 %628, 2
  %696 = fcmp fast une float %694, %695
  br i1 %696, label %697, label %704, !dx.controlflow.hints !58

; <label>:697                                     ; preds = %692
  %698 = fsub fast float %538, %661
  %699 = call float @dx.op.binary.f32(i32 36, float %668, float %698)  ; FMin(a,b)
  br label %704

; <label>:700                                     ; preds = %688
  %701 = add nsw i32 %621, -1
  %702 = icmp sgt i32 %621, 1
  br i1 %702, label %620, label %703

; <label>:703                                     ; preds = %700
  br label %704

; <label>:704                                     ; preds = %703, %697, %692, %617
  %705 = phi float [ %699, %697 ], [ %668, %692 ], [ 0.000000e+00, %617 ], [ 0.000000e+00, %703 ]
  %706 = phi i32 [ %621, %697 ], [ %621, %692 ], [ %542, %617 ], [ %701, %703 ]
  %707 = add nsw i32 %706, 1
  %708 = add nsw i32 %557, -1
  %709 = call i32 @dx.op.binary.i32(i32 38, i32 %707, i32 %708)  ; IMin(a,b)
  br label %710

; <label>:710                                     ; preds = %704, %684, %676, %615, %611, %561
  %711 = phi float [ %562, %561 ], [ %668, %676 ], [ %668, %684 ], [ %705, %704 ], [ 0x47EFFFFFE0000000, %615 ], [ %612, %611 ]
  %712 = phi i32 [ %370, %561 ], [ %370, %676 ], [ %370, %684 ], [ %370, %704 ], [ 0, %615 ], [ %370, %611 ]
  %713 = phi i32 [ %542, %561 ], [ %679, %676 ], [ %687, %684 ], [ %709, %704 ], [ %542, %615 ], [ %542, %611 ]
  %714 = icmp ne i32 %712, 0
  %715 = zext i1 %714 to i32
  %716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %717 = extractvalue %dx.types.CBufRet.f32 %716, 2
  %718 = call float @dx.op.binary.f32(i32 35, float %711, float %717)  ; FMax(a,b)
  %719 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %718)  ; FMin(a,b)
  br label %720

; <label>:720                                     ; preds = %710, %527
  %721 = phi i32 [ %715, %710 ], [ 0, %527 ]
  %722 = phi float [ %719, %710 ], [ 0x47EFFFFFE0000000, %527 ]
  %723 = phi i32 [ %713, %710 ], [ %542, %527 ]
  %724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %725 = extractvalue %dx.types.CBufRet.f32 %724, 0
  %726 = extractvalue %dx.types.CBufRet.f32 %724, 1
  %727 = fsub fast float %536, %725
  %728 = fsub fast float %537, %726
  %729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %730 = extractvalue %dx.types.CBufRet.f32 %729, 2
  %731 = extractvalue %dx.types.CBufRet.f32 %729, 3
  %732 = fmul fast float %727, %730
  %733 = fmul fast float %728, %731
  %734 = call float @dx.op.binary.f32(i32 36, float %732, float %733)  ; FMin(a,b)
  %735 = fcmp fast olt float %734, 0.000000e+00
  %736 = call float @dx.op.binary.f32(i32 35, float %732, float %733)  ; FMax(a,b)
  %737 = fcmp fast ogt float %736, 1.000000e+00
  %738 = or i1 %735, %737
  %739 = extractvalue %dx.types.CBufRet.f32 %724, 2
  %740 = fcmp fast olt float %538, %739
  %741 = or i1 %738, %740
  %742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %743 = extractvalue %dx.types.CBufRet.f32 %742, 3
  %744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %745 = extractvalue %dx.types.CBufRet.f32 %744, 0
  %746 = fadd fast float %745, %743
  %747 = fcmp fast ogt float %538, %746
  %748 = or i1 %741, %747
  br i1 %748, label %749, label %778, !dx.controlflow.hints !59

; <label>:749                                     ; preds = %720
  %750 = extractvalue %dx.types.CBufRet.f32 %729, 0
  %751 = extractvalue %dx.types.CBufRet.f32 %729, 1
  %752 = fsub fast float %725, %536
  %753 = fmul fast float %752, %502
  %754 = fadd fast float %752, %750
  %755 = fmul fast float %754, %502
  %756 = call float @dx.op.binary.f32(i32 36, float %753, float %755)  ; FMin(a,b)
  %757 = call float @dx.op.binary.f32(i32 35, float %753, float %755)  ; FMax(a,b)
  %758 = fsub fast float %726, %537
  %759 = fmul fast float %758, %503
  %760 = fadd fast float %758, %751
  %761 = fmul fast float %760, %503
  %762 = call float @dx.op.binary.f32(i32 36, float %759, float %761)  ; FMin(a,b)
  %763 = call float @dx.op.binary.f32(i32 35, float %756, float %762)  ; FMax(a,b)
  %764 = call float @dx.op.binary.f32(i32 35, float %759, float %761)  ; FMax(a,b)
  %765 = call float @dx.op.binary.f32(i32 36, float %757, float %764)  ; FMin(a,b)
  %766 = fsub fast float %739, %538
  %767 = fmul fast float %766, %504
  %768 = fsub fast float %743, %538
  %769 = fadd fast float %768, %745
  %770 = fmul fast float %769, %504
  %771 = call float @dx.op.binary.f32(i32 36, float %767, float %770)  ; FMin(a,b)
  %772 = call float @dx.op.binary.f32(i32 35, float %763, float %771)  ; FMax(a,b)
  %773 = call float @dx.op.binary.f32(i32 35, float %767, float %770)  ; FMax(a,b)
  %774 = call float @dx.op.binary.f32(i32 36, float %765, float %773)  ; FMin(a,b)
  %775 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %772)  ; FMax(a,b)
  %776 = fcmp fast oge float %774, %775
  %777 = select i1 %776, float %772, float 1.000000e+07
  br label %824

; <label>:778                                     ; preds = %720
  %779 = fsub fast float 1.000000e+00, %733
  %780 = icmp eq i32 %541, 0
  br i1 %780, label %809, label %781

; <label>:781                                     ; preds = %778
  br label %782

; <label>:782                                     ; preds = %805, %781
  %783 = phi i32 [ %806, %805 ], [ %541, %781 ]
  %784 = uitofp i32 %783 to float
  %785 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %20, float %732, float %779, float undef, float undef, i32 0, i32 0, i32 undef, float %784)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %786 = extractvalue %dx.types.ResRet.f32 %785, 0
  %787 = extractvalue %dx.types.ResRet.f32 %785, 1
  %788 = extractvalue %dx.types.ResRet.f32 %785, 2
  %789 = fcmp fast oeq float %786, 0.000000e+00
  %790 = fcmp ule float %538, %788
  %791 = fcmp uge float %538, %787
  %792 = or i1 %791, %790
  %793 = or i1 %789, %792
  br i1 %793, label %794, label %805, !dx.controlflow.hints !60

; <label>:794                                     ; preds = %782
  %795 = extractvalue %dx.types.ResRet.f32 %785, 3
  %796 = extractvalue %dx.types.CBufRet.f32 %729, 0
  %797 = and i32 %783, 31
  %798 = lshr i32 1024, %797
  %799 = uitofp i32 %798 to float
  %800 = fdiv fast float %796, %799
  %801 = add i32 %783, 1
  %802 = uitofp i32 %801 to float
  %803 = call float @dx.op.binary.f32(i32 36, float 1.000000e+01, float %802)  ; FMin(a,b)
  %804 = fptosi float %803 to i32
  br label %824

; <label>:805                                     ; preds = %782
  %806 = add i32 %783, -1
  %807 = icmp eq i32 %806, 0
  br i1 %807, label %808, label %782, !llvm.loop !61

; <label>:808                                     ; preds = %805
  br label %809

; <label>:809                                     ; preds = %808, %778
  %810 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %19, float %732, float %779, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %811 = extractvalue %dx.types.ResRet.f32 %810, 0
  %812 = extractvalue %dx.types.ResRet.f32 %810, 1
  %813 = extractvalue %dx.types.ResRet.f32 %810, 2
  %814 = extractvalue %dx.types.ResRet.f32 %810, 3
  %815 = extractvalue %dx.types.CBufRet.f32 %729, 0
  %816 = fmul fast float %815, 9.765625e-04
  %817 = fcmp fast oeq float %811, 0.000000e+00
  %818 = fcmp ule float %538, %813
  %819 = fcmp uge float %538, %812
  %820 = or i1 %819, %818
  %821 = or i1 %817, %820
  %822 = zext i1 %821 to i32
  %823 = xor i32 %822, 1
  br label %824

; <label>:824                                     ; preds = %809, %794, %749
  %825 = phi float [ %777, %749 ], [ %800, %794 ], [ %816, %809 ]
  %826 = phi float [ %530, %749 ], [ %786, %794 ], [ %811, %809 ]
  %827 = phi float [ %531, %749 ], [ %787, %794 ], [ %812, %809 ]
  %828 = phi float [ %532, %749 ], [ %788, %794 ], [ %813, %809 ]
  %829 = phi float [ %533, %749 ], [ %795, %794 ], [ %814, %809 ]
  %830 = phi i32 [ 0, %749 ], [ 0, %794 ], [ %823, %809 ]
  %831 = phi i32 [ 10, %749 ], [ %804, %794 ], [ 1, %809 ]
  %832 = icmp eq i32 %830, 0
  %833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %834 = extractvalue %dx.types.CBufRet.f32 %833, 2
  %835 = call float @dx.op.binary.f32(i32 35, float %825, float %834)  ; FMax(a,b)
  %836 = call float @dx.op.binary.f32(i32 36, float %722, float %835)  ; FMin(a,b)
  %837 = icmp eq i32 %397, 0
  br i1 %837, label %850, label %838, !dx.controlflow.hints !63

; <label>:838                                     ; preds = %824
  %839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %840 = extractvalue %dx.types.CBufRet.f32 %839, 3
  %841 = extractvalue %dx.types.CBufRet.f32 %839, 2
  %842 = fmul fast float %840, %539
  %843 = fdiv fast float %842, %505
  %844 = fadd fast float %843, 1.000000e+00
  %845 = call float @dx.op.unary.f32(i32 23, float %844)  ; Log(value)
  %846 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %845)  ; FMin(a,b)
  %847 = fmul fast float %841, %505
  %848 = fmul fast float %847, %846
  %849 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %848)  ; FMin(a,b)
  br label %850

; <label>:850                                     ; preds = %838, %824
  %851 = phi float [ %849, %838 ], [ 0x47EFFFFFE0000000, %824 ]
  %852 = icmp eq i32 %457, 0
  br i1 %852, label %908, label %853, !dx.controlflow.hints !64

; <label>:853                                     ; preds = %850
  %854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %855 = extractvalue %dx.types.CBufRet.f32 %854, 0
  %856 = extractvalue %dx.types.CBufRet.f32 %854, 1
  %857 = extractvalue %dx.types.CBufRet.f32 %854, 2
  %858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %859 = extractvalue %dx.types.CBufRet.f32 %858, 0
  %860 = extractvalue %dx.types.CBufRet.f32 %858, 1
  %861 = extractvalue %dx.types.CBufRet.f32 %858, 2
  %862 = fsub fast float %536, %859
  %863 = fsub fast float %537, %860
  %864 = fsub fast float %538, %861
  %865 = fmul fast float %862, %855
  %866 = fmul fast float %863, %856
  %867 = fmul fast float %864, %857
  %868 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %869 = extractvalue %dx.types.CBufRet.i32 %868, 3
  %870 = icmp eq i32 %869, 0
  br i1 %870, label %874, label %871, !dx.controlflow.hints !65

; <label>:871                                     ; preds = %853
  %872 = call float @dx.op.unary.f32(i32 22, float %865)  ; Frc(value)
  %873 = call float @dx.op.unary.f32(i32 22, float %866)  ; Frc(value)
  br label %874

; <label>:874                                     ; preds = %871, %853
  %875 = phi float [ %872, %871 ], [ %865, %853 ]
  %876 = phi float [ %873, %871 ], [ %866, %853 ]
  %877 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %875, float %876, float %867, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %878 = extractvalue %dx.types.ResRet.f32 %877, 0
  %879 = fmul fast float %878, 2.000000e+00
  %880 = fadd fast float %879, -1.000000e+00
  %881 = extractvalue %dx.types.CBufRet.f32 %854, 3
  %882 = fmul fast float %880, %881
  %883 = fcmp fast olt float %882, 0.000000e+00
  %884 = fcmp fast oge float %867, 0.000000e+00
  %885 = fcmp fast ole float %867, 1.000000e+00
  br i1 %870, label %888, label %886, !dx.controlflow.hints !66

; <label>:886                                     ; preds = %874
  %887 = and i1 %884, %885
  br label %898

; <label>:888                                     ; preds = %874
  %889 = fcmp fast oge float %865, 0.000000e+00
  %890 = fcmp fast oge float %866, 0.000000e+00
  %891 = and i1 %889, %890
  %892 = and i1 %884, %891
  %893 = fcmp fast ole float %865, 1.000000e+00
  %894 = fcmp fast ole float %866, 1.000000e+00
  %895 = and i1 %893, %894
  %896 = and i1 %885, %895
  %897 = and i1 %892, %896
  br label %898

; <label>:898                                     ; preds = %888, %886
  %899 = phi i1 [ %887, %886 ], [ %897, %888 ]
  %900 = and i1 %883, %899
  %901 = call float @dx.op.unary.f32(i32 6, float %882)  ; FAbs(value)
  %902 = extractvalue %dx.types.CBufRet.f32 %833, 1
  %903 = extractvalue %dx.types.CBufRet.f32 %833, 0
  %904 = call float @dx.op.binary.f32(i32 35, float %901, float %903)  ; FMax(a,b)
  %905 = select i1 %900, float %902, float %904
  %906 = zext i1 %900 to i32
  %907 = call float @dx.op.binary.f32(i32 36, float %836, float %905)  ; FMin(a,b)
  br label %908

; <label>:908                                     ; preds = %898, %850
  %909 = phi i32 [ %906, %898 ], [ 0, %850 ]
  %910 = phi float [ %907, %898 ], [ %836, %850 ]
  %911 = icmp eq i32 %499, 0
  br i1 %911, label %1083, label %912, !dx.controlflow.hints !67

; <label>:912                                     ; preds = %908
  %913 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %914 = extractvalue %dx.types.CBufRet.i32 %913, 1
  %915 = and i32 %914, 1
  %916 = icmp eq i32 %915, 0
  br i1 %916, label %917, label %1074, !dx.controlflow.hints !68

; <label>:917                                     ; preds = %912
  %918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %919 = extractvalue %dx.types.CBufRet.f32 %918, 2
  %920 = extractvalue %dx.types.CBufRet.f32 %918, 3
  %921 = fmul fast float %919, %536
  %922 = fmul fast float %920, %537
  %923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %924 = extractvalue %dx.types.CBufRet.f32 %923, 0
  %925 = extractvalue %dx.types.CBufRet.f32 %923, 1
  %926 = fadd fast float %921, %924
  %927 = fadd fast float %922, %925
  %928 = call float @dx.op.unary.f32(i32 7, float %926)  ; Saturate(value)
  %929 = call float @dx.op.unary.f32(i32 7, float %927)  ; Saturate(value)
  %930 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %19, float %928, float %929, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %931 = extractvalue %dx.types.ResRet.f32 %930, 0
  %932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %933 = extractvalue %dx.types.CBufRet.f32 %932, 0
  %934 = fmul fast float %933, %931
  %935 = fsub fast float %926, %928
  %936 = fsub fast float %927, %929
  %937 = extractvalue %dx.types.CBufRet.f32 %918, 0
  %938 = extractvalue %dx.types.CBufRet.f32 %918, 1
  %939 = fmul fast float %937, %935
  %940 = fmul fast float %938, %936
  %941 = fmul fast float %939, %939
  %942 = fmul fast float %940, %940
  %943 = fadd fast float %941, %942
  %944 = call float @dx.op.unary.f32(i32 24, float %943)  ; Sqrt(value)
  %945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %946 = extractvalue %dx.types.CBufRet.f32 %945, 3
  %947 = fmul fast float %946, %944
  %948 = call float @dx.op.unary.f32(i32 7, float %947)  ; Saturate(value)
  %949 = extractvalue %dx.types.CBufRet.f32 %945, 2
  %950 = fsub fast float %949, %934
  %951 = fmul fast float %950, %948
  %952 = extractvalue %dx.types.CBufRet.f32 %932, 1
  %953 = fsub fast float %538, %934
  %954 = fsub fast float %953, %952
  %955 = fsub fast float %954, %951
  %956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %957 = extractvalue %dx.types.CBufRet.f32 %956, 2
  %958 = fsub fast float %955, %957
  %959 = fcmp fast olt float %958, 0.000000e+00
  %960 = call float @dx.op.unary.f32(i32 6, float %958)  ; FAbs(value)
  %961 = extractvalue %dx.types.CBufRet.i32 %913, 0
  %962 = icmp eq i32 %961, 0
  br i1 %962, label %1016, label %963

; <label>:963                                     ; preds = %917
  br label %964

; <label>:964                                     ; preds = %1003, %963
  %965 = phi i32 [ %1009, %1003 ], [ 1, %963 ]
  %966 = phi float [ %1011, %1003 ], [ 0x47EFFFFFE0000000, %963 ]
  %967 = phi i32 [ %1012, %1003 ], [ 0, %963 ]
  %968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %969 = extractvalue %dx.types.CBufRet.f32 %968, 1
  %970 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %971 = extractvalue %dx.types.CBufRet.i32 %970, 1
  %972 = and i32 %971, 8
  %973 = icmp eq i32 %972, 0
  %974 = fcmp fast ogt float %969, %955
  %975 = or i1 %974, %973
  %976 = add i32 %967, 171
  %977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 %976)  ; CBufferLoadLegacy(handle,regIndex)
  %978 = extractvalue %dx.types.CBufRet.f32 %977, 0
  %979 = extractvalue %dx.types.CBufRet.f32 %977, 1
  %980 = extractvalue %dx.types.CBufRet.f32 %977, 2
  br i1 %975, label %981, label %987, !dx.controlflow.hints !69

; <label>:981                                     ; preds = %964
  %982 = fsub fast float %978, %536
  %983 = fsub fast float %979, %537
  %984 = fmul fast float %982, %982
  %985 = fmul fast float %983, %983
  %986 = fadd fast float %984, %985
  br label %1003

; <label>:987                                     ; preds = %964
  %988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %989 = extractvalue %dx.types.CBufRet.f32 %988, 2
  %990 = extractvalue %dx.types.CBufRet.f32 %968, 2
  %991 = fmul fast float %990, %989
  %992 = fsub fast float %991, %969
  %993 = fdiv fast float %980, %992
  %994 = fsub fast float %536, %978
  %995 = fsub fast float %537, %979
  %996 = fsub fast float %955, %969
  %997 = fmul fast float %993, %996
  %998 = fmul fast float %994, %994
  %999 = fmul fast float %995, %995
  %1000 = fadd fast float %998, %999
  %1001 = fmul fast float %997, %997
  %1002 = fadd fast float %1000, %1001
  br label %1003

; <label>:1003                                    ; preds = %987, %981
  %1004 = phi float [ %986, %981 ], [ %1002, %987 ]
  %1005 = call float @dx.op.unary.f32(i32 24, float %1004)  ; Sqrt(value)
  %1006 = fsub float %980, %1005
  %1007 = fcmp fast olt float %1006, 0.000000e+00
  %1008 = zext i1 %1007 to i32
  %1009 = and i32 %1008, %965
  %1010 = call float @dx.op.unary.f32(i32 6, float %1006)  ; FAbs(value)
  %1011 = call float @dx.op.binary.f32(i32 36, float %966, float %1010)  ; FMin(a,b)
  %1012 = add i32 %967, 1
  %1013 = extractvalue %dx.types.CBufRet.i32 %970, 0
  %1014 = icmp ult i32 %1012, %1013
  br i1 %1014, label %964, label %1015

; <label>:1015                                    ; preds = %1003
  br label %1016

; <label>:1016                                    ; preds = %1015, %917
  %1017 = phi i32 [ 1, %917 ], [ %1009, %1015 ]
  %1018 = phi float [ 0x47EFFFFFE0000000, %917 ], [ %1011, %1015 ]
  br label %1019

; <label>:1019                                    ; preds = %1019, %1016
  %1020 = phi i32 [ %1017, %1016 ], [ %1059, %1019 ]
  %1021 = phi float [ 0x47EFFFFFE0000000, %1016 ], [ %1061, %1019 ]
  %1022 = phi i32 [ 0, %1016 ], [ %1062, %1019 ]
  %1023 = add nuw nsw i32 %1022, 191
  %1024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 %1023)  ; CBufferLoadLegacy(handle,regIndex)
  %1025 = extractvalue %dx.types.CBufRet.f32 %1024, 0
  %1026 = extractvalue %dx.types.CBufRet.f32 %1024, 1
  %1027 = extractvalue %dx.types.CBufRet.f32 %1024, 2
  %1028 = add nuw nsw i32 %1022, 195
  %1029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 %1028)  ; CBufferLoadLegacy(handle,regIndex)
  %1030 = extractvalue %dx.types.CBufRet.f32 %1029, 0
  %1031 = extractvalue %dx.types.CBufRet.f32 %1029, 1
  %1032 = extractvalue %dx.types.CBufRet.f32 %1029, 2
  %1033 = fsub fast float %536, %1025
  %1034 = fsub fast float %537, %1026
  %1035 = fsub fast float %955, %1027
  %1036 = call float @dx.op.unary.f32(i32 6, float %1033)  ; FAbs(value)
  %1037 = call float @dx.op.unary.f32(i32 6, float %1034)  ; FAbs(value)
  %1038 = call float @dx.op.unary.f32(i32 6, float %1035)  ; FAbs(value)
  %1039 = fsub fast float %1036, %1030
  %1040 = fsub fast float %1037, %1031
  %1041 = fsub fast float %1038, %1032
  %1042 = call float @dx.op.binary.f32(i32 35, float %1039, float 0.000000e+00)  ; FMax(a,b)
  %1043 = call float @dx.op.binary.f32(i32 35, float %1040, float 0.000000e+00)  ; FMax(a,b)
  %1044 = call float @dx.op.binary.f32(i32 35, float %1041, float 0.000000e+00)  ; FMax(a,b)
  %1045 = fmul fast float %1042, %1042
  %1046 = fmul fast float %1043, %1043
  %1047 = fadd fast float %1046, %1045
  %1048 = fmul fast float %1044, %1044
  %1049 = fadd fast float %1047, %1048
  %1050 = call float @dx.op.unary.f32(i32 24, float %1049)  ; Sqrt(value)
  %1051 = call float @dx.op.binary.f32(i32 35, float %1040, float %1041)  ; FMax(a,b)
  %1052 = call float @dx.op.binary.f32(i32 35, float %1039, float %1051)  ; FMax(a,b)
  %1053 = call float @dx.op.binary.f32(i32 36, float %1052, float 0.000000e+00)  ; FMin(a,b)
  %1054 = fadd fast float %1053, %1050
  %1055 = fsub fast float -0.000000e+00, %1054
  %1056 = fcmp ogt float %1054, -0.000000e+00
  %1057 = icmp ne i32 %1020, 0
  %1058 = and i1 %1057, %1056
  %1059 = zext i1 %1058 to i32
  %1060 = call float @dx.op.unary.f32(i32 6, float %1055)  ; FAbs(value)
  %1061 = call float @dx.op.binary.f32(i32 36, float %1021, float %1060)  ; FMin(a,b)
  %1062 = add nuw nsw i32 %1022, 1
  %1063 = icmp eq i32 %1062, 4
  br i1 %1063, label %1064, label %1019

; <label>:1064                                    ; preds = %1019
  %1065 = call float @dx.op.binary.f32(i32 36, float %960, float %1061)  ; FMin(a,b)
  %1066 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1067 = extractvalue %dx.types.CBufRet.i32 %1066, 1
  %1068 = and i32 %1067, 2
  %1069 = icmp ne i32 %1068, 0
  %1070 = xor i1 %1058, %1069
  %1071 = call float @dx.op.binary.f32(i32 36, float %1065, float %1018)  ; FMin(a,b)
  %1072 = and i1 %1070, %959
  %1073 = zext i1 %1072 to i32
  br label %1074

; <label>:1074                                    ; preds = %1064, %912
  %1075 = phi i32 [ %528, %912 ], [ %1073, %1064 ]
  %1076 = phi float [ 0.000000e+00, %912 ], [ %1071, %1064 ]
  %1077 = phi float [ %538, %912 ], [ %955, %1064 ]
  %1078 = icmp ne i32 %1075, 0
  %1079 = extractvalue %dx.types.CBufRet.f32 %833, 3
  %1080 = call float @dx.op.binary.f32(i32 35, float %1076, float %1079)  ; FMax(a,b)
  %1081 = call float @dx.op.binary.f32(i32 36, float %851, float %1080)  ; FMin(a,b)
  %1082 = zext i1 %1078 to i32
  br label %1083

; <label>:1083                                    ; preds = %1074, %908
  %1084 = phi i32 [ %1075, %1074 ], [ %528, %908 ]
  %1085 = phi i32 [ %1082, %1074 ], [ 0, %908 ]
  %1086 = phi float [ %1077, %1074 ], [ %529, %908 ]
  %1087 = phi float [ %1081, %1074 ], [ %851, %908 ]
  %1088 = extractvalue %dx.types.CBufRet.f32 %552, 2
  %1089 = fmul fast float %1088, %539
  %1090 = call float @dx.op.unary.f32(i32 23, float %1089)  ; Log(value)
  %1091 = fmul fast float %1090, 0x3FE62E4300000000
  %1092 = call float @dx.op.binary.f32(i32 35, float %1091, float 1.000000e+00)  ; FMax(a,b)
  %1093 = fmul fast float %1092, %1087
  %1094 = call float @dx.op.binary.f32(i32 36, float %1093, float %910)  ; FMin(a,b)
  %1095 = call float @dx.op.binary.f32(i32 35, float %1094, float %553)  ; FMax(a,b)
  %1096 = fsub fast float %505, %539
  %1097 = fadd fast float %1096, 0x3F1A36E2E0000000
  %1098 = call float @dx.op.binary.f32(i32 36, float %1097, float %1095)  ; FMin(a,b)
  %1099 = icmp eq i32 %721, 0
  br i1 %1099, label %1196, label %1100, !dx.controlflow.hints !70

; <label>:1100                                    ; preds = %1083
  %1101 = fcmp fast olt float %1097, %1095
  %1102 = fmul fast float %283, %226
  %1103 = fmul fast float %1102, %1098
  %1104 = fadd fast float %1103, %538
  %1105 = fmul fast float %283, %227
  %1106 = fmul fast float %1105, %1098
  %1107 = fadd fast float %1106, %538
  %1108 = fmul fast float %283, %228
  %1109 = fmul fast float %1108, %1098
  %1110 = fadd fast float %1109, %538
  br i1 %1101, label %1111, label %1116, !dx.controlflow.hints !71

; <label>:1111                                    ; preds = %1100
  %1112 = fmul fast float %1098, %281
  %1113 = fmul fast float %1098, %282
  %1114 = fadd fast float %1112, %536
  %1115 = fadd fast float %1113, %537
  br label %1116

; <label>:1116                                    ; preds = %1111, %1100
  %1117 = phi float [ %1114, %1111 ], [ %536, %1100 ]
  %1118 = phi float [ %1115, %1111 ], [ %537, %1100 ]
  %1119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %1120 = extractvalue %dx.types.CBufRet.f32 %1119, 0
  %1121 = extractvalue %dx.types.CBufRet.f32 %1119, 1
  %1122 = fsub fast float %1117, %1120
  %1123 = fsub fast float %1118, %1121
  %1124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %1125 = extractvalue %dx.types.CBufRet.f32 %1124, 0
  %1126 = extractvalue %dx.types.CBufRet.f32 %1124, 1
  %1127 = fmul fast float %1122, %1125
  %1128 = fmul fast float %1123, %1126
  %1129 = fsub fast float 1.000000e+00, %1128
  %1130 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %1131 = extractvalue %dx.types.CBufRet.i32 %1130, 3
  %1132 = icmp eq i32 %1131, 0
  br i1 %1132, label %1139, label %1133, !dx.controlflow.hints !54

; <label>:1133                                    ; preds = %1116
  %1134 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %18, float %1127, float %1129, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1135 = extractvalue %dx.types.ResRet.f32 %1134, 0
  %1136 = extractvalue %dx.types.ResRet.f32 %1134, 1
  %1137 = extractvalue %dx.types.ResRet.f32 %1134, 2
  %1138 = extractvalue %dx.types.ResRet.f32 %1134, 3
  br label %1145

; <label>:1139                                    ; preds = %1116
  %1140 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %19, float %1127, float %1129, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1141 = extractvalue %dx.types.ResRet.f32 %1140, 0
  %1142 = extractvalue %dx.types.ResRet.f32 %1140, 1
  %1143 = extractvalue %dx.types.ResRet.f32 %1140, 2
  %1144 = extractvalue %dx.types.ResRet.f32 %1140, 3
  br label %1145

; <label>:1145                                    ; preds = %1139, %1133
  %1146 = phi float [ %1135, %1133 ], [ %1141, %1139 ]
  %1147 = phi float [ %1136, %1133 ], [ %1142, %1139 ]
  %1148 = phi float [ %1137, %1133 ], [ %1143, %1139 ]
  %1149 = phi float [ %1138, %1133 ], [ %1144, %1139 ]
  %1150 = extractvalue %dx.types.CBufRet.f32 %1124, 3
  %1151 = fmul fast float %1150, %1147
  %1152 = fmul fast float %1151, %1146
  %1153 = fsub fast float %1151, %1152
  %1154 = fcmp fast ole float %1153, 0.000000e+00
  %1155 = extractvalue %dx.types.CBufRet.f32 %1119, 2
  %1156 = fadd fast float %1152, %1155
  %1157 = fmul fast float %1150, %1148
  %1158 = fadd fast float %1157, %1155
  %1159 = fdiv fast float 1.000000e+00, %1153
  %1160 = select i1 %1154, float 1.000000e+06, float %1159
  %1161 = fsub fast float %1104, %1156
  %1162 = fmul fast float %1160, %1161
  %1163 = call float @dx.op.unary.f32(i32 7, float %1162)  ; Saturate(value)
  %1164 = extractvalue %dx.types.CBufRet.f32 %1124, 2
  %1165 = fmul fast float %1164, %1163
  %1166 = fsub fast float %1164, %1165
  %1167 = fcmp fast olt float %1104, %1158
  %1168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %1169 = extractvalue %dx.types.CBufRet.f32 %1168, 3
  %1170 = select i1 %1167, float %1169, float 1.000000e+00
  %1171 = fmul fast float %1166, %1170
  %1172 = fsub fast float %1107, %1156
  %1173 = fmul fast float %1160, %1172
  %1174 = call float @dx.op.unary.f32(i32 7, float %1173)  ; Saturate(value)
  %1175 = fmul fast float %1164, %1174
  %1176 = fsub fast float %1164, %1175
  %1177 = fcmp fast olt float %1107, %1158
  %1178 = select i1 %1177, float %1169, float 1.000000e+00
  %1179 = fmul fast float %1176, %1178
  %1180 = fadd fast float %1179, %1171
  %1181 = fsub fast float %1110, %1156
  %1182 = fmul fast float %1160, %1181
  %1183 = call float @dx.op.unary.f32(i32 7, float %1182)  ; Saturate(value)
  %1184 = fmul fast float %1164, %1183
  %1185 = fsub fast float %1164, %1184
  %1186 = fcmp fast olt float %1110, %1158
  %1187 = select i1 %1186, float %1169, float 1.000000e+00
  %1188 = fmul fast float %1185, %1187
  %1189 = fadd fast float %1180, %1188
  %1190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1191 = extractvalue %dx.types.CBufRet.f32 %1190, 2
  %1192 = fmul fast float %1098, 0x3FD5555560000000
  %1193 = fmul fast float %1192, %1149
  %1194 = fmul fast float %1193, %1191
  %1195 = fmul fast float %1194, %1189
  br label %1196

; <label>:1196                                    ; preds = %1145, %1083
  %1197 = phi float [ %1195, %1145 ], [ 0.000000e+00, %1083 ]
  br i1 %837, label %1244, label %1198, !dx.controlflow.hints !72

; <label>:1198                                    ; preds = %1196
  %1199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %1200 = extractvalue %dx.types.CBufRet.f32 %1199, 0
  %1201 = fsub fast float %1200, %538
  %1202 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %550, float %549, float %1201)  ; Dot3(ax,ay,az,bx,by,bz)
  %1203 = fmul fast float %380, %1202
  %1204 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1203)  ; FMax(a,b)
  %1205 = fcmp fast olt float %283, 0.000000e+00
  %1206 = call float @dx.op.binary.f32(i32 36, float %1098, float %1204)  ; FMin(a,b)
  br i1 %1205, label %1208, label %1207, !dx.controlflow.hints !73

; <label>:1207                                    ; preds = %1198
  br label %1208

; <label>:1208                                    ; preds = %1207, %1198
  %1209 = phi float [ 0.000000e+00, %1207 ], [ %1206, %1198 ]
  %1210 = phi float [ %1206, %1207 ], [ %1098, %1198 ]
  %1211 = phi float [ %1206, %1207 ], [ 0.000000e+00, %1198 ]
  %1212 = phi float [ %1098, %1207 ], [ %1206, %1198 ]
  %1213 = fsub fast float %1210, %1209
  %1214 = extractvalue %dx.types.CBufRet.f32 %1199, 1
  %1215 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %1214)  ; FMin(a,b)
  %1216 = fsub fast float %538, %1200
  %1217 = fmul fast float %1215, 0x3FF7154760000000
  %1218 = fmul fast float %1217, %1216
  %1219 = call float @dx.op.unary.f32(i32 21, float %1218)  ; Exp(value)
  %1220 = fmul fast float %283, 0x3FF7154760000000
  %1221 = fmul fast float %1220, %1212
  %1222 = fmul fast float %1221, %1215
  %1223 = call float @dx.op.unary.f32(i32 21, float %1222)  ; Exp(value)
  %1224 = fmul fast float %1220, %1211
  %1225 = fmul fast float %1224, %1215
  %1226 = call float @dx.op.unary.f32(i32 21, float %1225)  ; Exp(value)
  %1227 = fsub fast float %1223, %1226
  %1228 = fmul fast float %1227, %1219
  %1229 = fmul fast float %1215, %283
  %1230 = fdiv fast float %1228, %1229
  %1231 = fadd fast float %1213, %1230
  %1232 = call float @dx.op.unary.f32(i32 6, float %283)  ; FAbs(value)
  %1233 = fcmp fast olt float %1232, 0x3F0FFB4800000000
  %1234 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1216)  ; FMax(a,b)
  %1235 = fmul fast float %1234, 0x3FF7154760000000
  %1236 = fmul fast float %1235, %1214
  %1237 = call float @dx.op.unary.f32(i32 21, float %1236)  ; Exp(value)
  %1238 = fmul fast float %1237, %1098
  %1239 = select i1 %1233, float %1238, float %1231
  %1240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %1241 = extractvalue %dx.types.CBufRet.f32 %1240, 1
  %1242 = fmul fast float %1239, %1241
  %1243 = fadd fast float %1242, %1197
  br label %1244

; <label>:1244                                    ; preds = %1208, %1196
  %1245 = phi float [ %1243, %1208 ], [ %1197, %1196 ]
  %1246 = icmp eq i32 %909, 0
  br i1 %1246, label %1427, label %1247, !dx.controlflow.hints !74

; <label>:1247                                    ; preds = %1244
  %1248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1249 = extractvalue %dx.types.CBufRet.f32 %1248, 3
  %1250 = fmul fast float %1249, %539
  %1251 = fcmp fast oeq float %1250, 0.000000e+00
  br i1 %1251, label %1266, label %1252, !dx.controlflow.hints !75

; <label>:1252                                    ; preds = %1247
  %1253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %1254 = extractvalue %dx.types.CBufRet.f32 %1253, 3
  %1255 = fmul fast float %1254, %1250
  %1256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %1257 = extractvalue %dx.types.CBufRet.f32 %1256, 0
  %1258 = extractvalue %dx.types.CBufRet.f32 %1256, 1
  %1259 = extractvalue %dx.types.CBufRet.f32 %1256, 2
  %1260 = fmul fast float %1257, %1255
  %1261 = fmul fast float %1258, %1255
  %1262 = fmul fast float %1259, %1255
  %1263 = call float @dx.op.unary.f32(i32 23, float %1260)  ; Log(value)
  %1264 = call float @dx.op.unary.f32(i32 23, float %1261)  ; Log(value)
  %1265 = call float @dx.op.unary.f32(i32 23, float %1262)  ; Log(value)
  br label %1266

; <label>:1266                                    ; preds = %1252, %1247
  %1267 = phi float [ %1263, %1252 ], [ 0.000000e+00, %1247 ]
  %1268 = phi float [ %1264, %1252 ], [ 0.000000e+00, %1247 ]
  %1269 = phi float [ %1265, %1252 ], [ 0.000000e+00, %1247 ]
  %1270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %1271 = extractvalue %dx.types.CBufRet.f32 %1270, 0
  %1272 = extractvalue %dx.types.CBufRet.f32 %1270, 1
  %1273 = extractvalue %dx.types.CBufRet.f32 %1270, 2
  %1274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %1275 = extractvalue %dx.types.CBufRet.f32 %1274, 0
  %1276 = extractvalue %dx.types.CBufRet.f32 %1274, 1
  %1277 = extractvalue %dx.types.CBufRet.f32 %1274, 2
  %1278 = fsub fast float %536, %1275
  %1279 = fsub fast float %537, %1276
  %1280 = fsub fast float %538, %1277
  %1281 = fmul fast float %1278, %1271
  %1282 = fmul fast float %1279, %1272
  %1283 = fmul fast float %1280, %1273
  %1284 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %1285 = extractvalue %dx.types.CBufRet.i32 %1284, 0
  %1286 = extractvalue %dx.types.CBufRet.i32 %1284, 1
  %1287 = uitofp i32 %1285 to float
  %1288 = uitofp i32 %1286 to float
  %1289 = fmul fast float %1281, %1287
  %1290 = fmul fast float %1282, %1288
  %1291 = fadd fast float %1289, 5.000000e-01
  %1292 = fadd fast float %1290, 5.000000e-01
  %1293 = call float @dx.op.unary.f32(i32 22, float %1291)  ; Frc(value)
  %1294 = call float @dx.op.unary.f32(i32 22, float %1292)  ; Frc(value)
  %1295 = call float @dx.op.unary.f32(i32 27, float %1291)  ; Round_ni(value)
  %1296 = call float @dx.op.unary.f32(i32 27, float %1292)  ; Round_ni(value)
  %1297 = fadd fast float %1295, 1.000000e+00
  %1298 = fadd fast float %1296, 1.000000e+00
  %1299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %1300 = extractvalue %dx.types.CBufRet.f32 %1299, 0
  %1301 = extractvalue %dx.types.CBufRet.f32 %1299, 1
  %1302 = fmul fast float %1300, %1297
  %1303 = fmul fast float %1301, %1298
  %1304 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %11, %dx.types.Handle %18, float %1302, float %1303, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1305 = extractvalue %dx.types.ResRet.f32 %1304, 0
  %1306 = extractvalue %dx.types.ResRet.f32 %1304, 1
  %1307 = extractvalue %dx.types.ResRet.f32 %1304, 2
  %1308 = extractvalue %dx.types.ResRet.f32 %1304, 3
  %1309 = extractvalue %dx.types.CBufRet.i32 %1284, 2
  %1310 = extractvalue %dx.types.CBufRet.f32 %1299, 2
  %1311 = uitofp i32 %1309 to float
  %1312 = fadd fast float %1311, -1.000000e+00
  %1313 = fmul fast float %1312, %1305
  %1314 = fmul fast float %1312, %1306
  %1315 = fmul fast float %1312, %1307
  %1316 = fmul fast float %1312, %1308
  %1317 = fadd fast float %1313, 5.000000e-01
  %1318 = fadd fast float %1314, 5.000000e-01
  %1319 = fadd fast float %1315, 5.000000e-01
  %1320 = fadd fast float %1316, 5.000000e-01
  %1321 = fptoui float %1317 to i32
  %1322 = fptoui float %1318 to i32
  %1323 = fptoui float %1319 to i32
  %1324 = fptoui float %1320 to i32
  %1325 = uitofp i32 %1321 to float
  %1326 = uitofp i32 %1322 to float
  %1327 = uitofp i32 %1323 to float
  %1328 = uitofp i32 %1324 to float
  %1329 = fadd fast float %1325, 5.000000e-01
  %1330 = fadd fast float %1326, 5.000000e-01
  %1331 = fadd fast float %1327, 5.000000e-01
  %1332 = fadd fast float %1328, 5.000000e-01
  %1333 = fmul fast float %1329, %1310
  %1334 = fmul fast float %1330, %1310
  %1335 = fmul fast float %1331, %1310
  %1336 = fmul fast float %1332, %1310
  %1337 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %19, float %1333, float %1283, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1338 = extractvalue %dx.types.ResRet.f32 %1337, 0
  %1339 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %19, float %1334, float %1283, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1340 = extractvalue %dx.types.ResRet.f32 %1339, 0
  %1341 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %19, float %1335, float %1283, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1342 = extractvalue %dx.types.ResRet.f32 %1341, 0
  %1343 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %19, float %1336, float %1283, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1344 = extractvalue %dx.types.ResRet.f32 %1343, 0
  %1345 = fsub fast float %1342, %1344
  %1346 = fmul fast float %1345, %1293
  %1347 = fadd fast float %1346, %1344
  %1348 = fsub fast float %1340, %1338
  %1349 = fmul fast float %1348, %1293
  %1350 = fadd fast float %1349, %1338
  %1351 = fsub fast float %1350, %1347
  %1352 = fmul fast float %1351, %1294
  %1353 = fadd fast float %1352, %1347
  %1354 = fcmp fast ogt float %1353, 0.000000e+00
  br i1 %1354, label %1355, label %1423, !dx.controlflow.hints !76

; <label>:1355                                    ; preds = %1266
  %1356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %1357 = extractvalue %dx.types.CBufRet.f32 %1356, 0
  %1358 = extractvalue %dx.types.CBufRet.f32 %1356, 1
  %1359 = extractvalue %dx.types.CBufRet.f32 %1356, 2
  %1360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %1361 = extractvalue %dx.types.CBufRet.f32 %1360, 0
  %1362 = extractvalue %dx.types.CBufRet.f32 %1360, 1
  %1363 = extractvalue %dx.types.CBufRet.f32 %1360, 2
  %1364 = fmul fast float %1279, %1271
  %1365 = fmul fast float %1280, %1271
  %1366 = fadd fast float %1281, %1361
  %1367 = fadd fast float %1364, %1362
  %1368 = fadd fast float %1365, %1363
  %1369 = fmul fast float %1366, %1357
  %1370 = fmul fast float %1367, %1357
  %1371 = fmul fast float %1368, %1357
  %1372 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %16, float %1369, float %1370, float %1371, float undef, i32 0, i32 0, i32 0, float %1267)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1373 = extractvalue %dx.types.ResRet.f32 %1372, 0
  %1374 = fmul fast float %1366, %1358
  %1375 = fmul fast float %1367, %1358
  %1376 = fmul fast float %1368, %1358
  %1377 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %16, float %1374, float %1375, float %1376, float undef, i32 0, i32 0, i32 0, float %1268)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1378 = extractvalue %dx.types.ResRet.f32 %1377, 1
  %1379 = fmul fast float %1366, %1359
  %1380 = fmul fast float %1367, %1359
  %1381 = fmul fast float %1368, %1359
  %1382 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %16, float %1379, float %1380, float %1381, float undef, i32 0, i32 0, i32 0, float %1269)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1383 = extractvalue %dx.types.ResRet.f32 %1382, 2
  %1384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %1385 = extractvalue %dx.types.CBufRet.f32 %1384, 1
  %1386 = fmul fast float %1378, %1373
  %1387 = fmul fast float %1386, %1383
  %1388 = call float @dx.op.unary.f32(i32 23, float %1387)  ; Log(value)
  %1389 = fmul fast float %1388, %1385
  %1390 = call float @dx.op.unary.f32(i32 21, float %1389)  ; Exp(value)
  %1391 = extractvalue %dx.types.CBufRet.f32 %1384, 2
  %1392 = fmul fast float %1353, %1353
  %1393 = fmul fast float %1392, %1390
  %1394 = fmul fast float %1393, %1391
  %1395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %1396 = extractvalue %dx.types.CBufRet.f32 %1395, 3
  %1397 = fmul fast float %1396, %1394
  %1398 = bitcast float %1397 to i32
  %1399 = sitofp i32 %1398 to float
  %1400 = fptosi float %1399 to i32
  %1401 = bitcast i32 %1400 to float
  %1402 = fsub fast float 1.000000e+00, %1394
  %1403 = bitcast float %1402 to i32
  %1404 = sitofp i32 %1403 to float
  %1405 = fptosi float %1404 to i32
  %1406 = bitcast i32 %1405 to float
  %1407 = fadd fast float %1401, %1406
  %1408 = bitcast float %1407 to i32
  %1409 = sub nsw i32 2129859010, %1408
  %1410 = bitcast i32 %1409 to float
  %1411 = fmul fast float %1410, %1401
  %1412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1413 = extractvalue %dx.types.CBufRet.f32 %1412, 2
  %1414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %1415 = extractvalue %dx.types.CBufRet.f32 %1414, 0
  %1416 = fmul fast float %1411, %1415
  %1417 = fadd fast float %1416, 1.000000e+00
  %1418 = bitcast float %1417 to i32
  %1419 = sub nsw i32 2129859010, %1418
  %1420 = bitcast i32 %1419 to float
  %1421 = fmul fast float %1411, %1413
  %1422 = fmul fast float %1421, %1420
  br label %1423

; <label>:1423                                    ; preds = %1355, %1266
  %1424 = phi float [ %1422, %1355 ], [ %1353, %1266 ]
  %1425 = fmul fast float %1424, %1098
  %1426 = fadd fast float %1425, %1245
  br label %1427

; <label>:1427                                    ; preds = %1423, %1244
  %1428 = phi float [ %1426, %1423 ], [ %1245, %1244 ]
  br i1 %832, label %1554, label %1429, !dx.controlflow.hints !77

; <label>:1429                                    ; preds = %1427
  %1430 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1431 = extractvalue %dx.types.CBufRet.i32 %1430, 0
  %1432 = icmp ne i32 %1431, 0
  %1433 = zext i1 %1432 to i32
  %1434 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1435 = extractvalue %dx.types.CBufRet.i32 %1434, 0
  %1436 = icmp eq i32 %1435, 0
  br i1 %1436, label %1470, label %1437

; <label>:1437                                    ; preds = %1429
  br label %1438

; <label>:1438                                    ; preds = %1465, %1437
  %1439 = phi i32 [ %1466, %1465 ], [ 0, %1437 ]
  %1440 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1439, i32 0)  ; BufferLoad(srv,index,wot)
  %1441 = extractvalue %dx.types.ResRet.f32 %1440, 0
  %1442 = extractvalue %dx.types.ResRet.f32 %1440, 1
  %1443 = extractvalue %dx.types.ResRet.f32 %1440, 2
  %1444 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1439, i32 16)  ; BufferLoad(srv,index,wot)
  %1445 = extractvalue %dx.types.ResRet.f32 %1444, 0
  %1446 = extractvalue %dx.types.ResRet.f32 %1444, 1
  %1447 = extractvalue %dx.types.ResRet.f32 %1444, 2
  %1448 = fsub fast float %1441, %1445
  %1449 = fsub fast float %1442, %1446
  %1450 = fsub fast float %1443, %1447
  %1451 = fadd fast float %1445, %1441
  %1452 = fadd fast float %1446, %1442
  %1453 = fadd fast float %1447, %1443
  %1454 = fcmp fast olt float %536, %1448
  %1455 = fcmp fast olt float %537, %1449
  %1456 = fcmp fast olt float %538, %1450
  %1457 = or i1 %1454, %1455
  %1458 = or i1 %1456, %1457
  %1459 = fcmp fast ogt float %536, %1451
  %1460 = fcmp fast ogt float %537, %1452
  %1461 = fcmp fast ogt float %538, %1453
  %1462 = or i1 %1459, %1460
  %1463 = or i1 %1461, %1462
  %1464 = or i1 %1458, %1463
  br i1 %1464, label %1465, label %1468, !dx.controlflow.hints !78

; <label>:1465                                    ; preds = %1438
  %1466 = add nuw i32 %1439, 1
  %1467 = icmp ult i32 %1466, %1435
  br i1 %1467, label %1438, label %1468

; <label>:1468                                    ; preds = %1465, %1438
  %1469 = phi i32 [ 255, %1465 ], [ %1439, %1438 ]
  br label %1470

; <label>:1470                                    ; preds = %1468, %1429
  %1471 = phi i32 [ 255, %1429 ], [ %1469, %1468 ]
  %1472 = icmp eq i32 %1471, 255
  br i1 %1472, label %1478, label %1473, !dx.controlflow.hints !79

; <label>:1473                                    ; preds = %1470
  %1474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %1471, i32 156)  ; BufferLoad(srv,index,wot)
  %1475 = extractvalue %dx.types.ResRet.i32 %1474, 0
  %1476 = icmp ne i32 %1475, 0
  %1477 = zext i1 %1476 to i32
  br label %1478

; <label>:1478                                    ; preds = %1473, %1470
  %1479 = phi i32 [ %1477, %1473 ], [ %1433, %1470 ]
  %1480 = icmp eq i32 %1479, 0
  br i1 %1480, label %1481, label %1550, !dx.controlflow.hints !80

; <label>:1481                                    ; preds = %1478
  %1482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1483 = extractvalue %dx.types.CBufRet.f32 %1482, 3
  %1484 = extractvalue %dx.types.CBufRet.f32 %742, 0
  %1485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1486 = extractvalue %dx.types.CBufRet.f32 %1485, 2
  %1487 = extractvalue %dx.types.CBufRet.f32 %1485, 3
  br i1 %1472, label %1498, label %1488, !dx.controlflow.hints !81

; <label>:1488                                    ; preds = %1481
  %1489 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1471, i32 60)  ; BufferLoad(srv,index,wot)
  %1490 = extractvalue %dx.types.ResRet.f32 %1489, 0
  %1491 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1471, i32 64)  ; BufferLoad(srv,index,wot)
  %1492 = extractvalue %dx.types.ResRet.f32 %1491, 0
  %1493 = extractvalue %dx.types.ResRet.f32 %1491, 1
  %1494 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1471, i32 72)  ; BufferLoad(srv,index,wot)
  %1495 = extractvalue %dx.types.ResRet.f32 %1494, 0
  %1496 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1471, i32 96)  ; BufferLoad(srv,index,wot)
  %1497 = extractvalue %dx.types.ResRet.f32 %1496, 0
  br label %1498

; <label>:1498                                    ; preds = %1488, %1481
  %1499 = phi float [ %1490, %1488 ], [ %745, %1481 ]
  %1500 = phi float [ %1495, %1488 ], [ %743, %1481 ]
  %1501 = phi float [ %1497, %1488 ], [ %1484, %1481 ]
  %1502 = phi float [ %1492, %1488 ], [ %1486, %1481 ]
  %1503 = phi float [ %1493, %1488 ], [ %1487, %1481 ]
  %1504 = call float @dx.op.binary.f32(i32 35, float %826, float 0.000000e+00)  ; FMax(a,b)
  %1505 = call float @dx.op.binary.f32(i32 36, float %1504, float 1.000000e+00)  ; FMin(a,b)
  %1506 = call float @dx.op.unary.f32(i32 24, float %1505)  ; Sqrt(value)
  %1507 = call float @dx.op.binary.f32(i32 35, float %829, float 0x3F847AE140000000)  ; FMax(a,b)
  %1508 = fsub fast float %827, %538
  %1509 = fsub fast float %538, %828
  %1510 = call float @dx.op.binary.f32(i32 36, float %1509, float %1508)  ; FMin(a,b)
  %1511 = fdiv fast float %1510, %1507
  %1512 = call float @dx.op.unary.f32(i32 7, float %1511)  ; Saturate(value)
  %1513 = fsub fast float %538, %1500
  %1514 = fdiv fast float %1513, %1499
  %1515 = call float @dx.op.unary.f32(i32 7, float %1514)  ; Saturate(value)
  %1516 = fsub fast float 1.000000e+00, %1515
  %1517 = fmul float %1512, %1516
  %1518 = fmul float %1517, %1517
  %1519 = fmul fast float %1506, %1483
  %1520 = fmul fast float %1519, %1518
  %1521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1522 = extractvalue %dx.types.CBufRet.f32 %1521, 2
  %1523 = extractvalue %dx.types.CBufRet.f32 %1521, 1
  %1524 = fsub fast float %1520, %1523
  %1525 = fsub fast float %1522, %1523
  %1526 = fdiv fast float %1524, %1525
  %1527 = call float @dx.op.unary.f32(i32 7, float %1526)  ; Saturate(value)
  %1528 = fmul fast float %1527, %1501
  %1529 = fcmp fast ogt float %1503, 0.000000e+00
  br i1 %1529, label %1530, label %1550, !dx.controlflow.hints !82

; <label>:1530                                    ; preds = %1498
  %1531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1532 = extractvalue %dx.types.CBufRet.f32 %1531, 0
  %1533 = extractvalue %dx.types.CBufRet.f32 %1531, 1
  %1534 = extractvalue %dx.types.CBufRet.f32 %1531, 2
  %1535 = fsub fast float %536, %1532
  %1536 = fsub fast float %537, %1533
  %1537 = fsub fast float %538, %1534
  %1538 = fmul fast float %1535, %1535
  %1539 = fmul fast float %1536, %1536
  %1540 = fadd fast float %1538, %1539
  %1541 = fmul fast float %1537, %1537
  %1542 = fadd fast float %1540, %1541
  %1543 = call float @dx.op.unary.f32(i32 24, float %1542)  ; Sqrt(value)
  %1544 = fsub fast float %1543, %1502
  %1545 = fsub fast float %1503, %1502
  %1546 = fdiv fast float %1544, %1545
  %1547 = call float @dx.op.unary.f32(i32 7, float %1546)  ; Saturate(value)
  %1548 = fmul fast float %1547, %1547
  %1549 = fmul fast float %1548, %1528
  br label %1550

; <label>:1550                                    ; preds = %1530, %1498, %1478
  %1551 = phi float [ 0.000000e+00, %1478 ], [ %1549, %1530 ], [ %1528, %1498 ]
  %1552 = fmul fast float %1551, %1098
  %1553 = fadd fast float %1552, %1428
  br label %1554

; <label>:1554                                    ; preds = %1550, %1427
  %1555 = phi float [ %1553, %1550 ], [ %1428, %1427 ]
  %1556 = icmp eq i32 %1085, 0
  br i1 %1556, label %1588, label %1557, !dx.controlflow.hints !83

; <label>:1557                                    ; preds = %1554
  %1558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %1559 = extractvalue %dx.types.CBufRet.f32 %1558, 1
  %1560 = fsub fast float %1098, %1559
  %1561 = extractvalue %dx.types.CBufRet.f32 %1558, 3
  %1562 = fmul fast float %1560, %1561
  %1563 = call float @dx.op.unary.f32(i32 7, float %1562)  ; Saturate(value)
  %1564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %1565 = extractvalue %dx.types.CBufRet.f32 %1564, 3
  %1566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1567 = extractvalue %dx.types.CBufRet.f32 %1566, 2
  %1568 = fsub fast float %1567, %1086
  %1569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %1570 = extractvalue %dx.types.CBufRet.f32 %1569, 3
  %1571 = fmul fast float %1568, %1570
  %1572 = call float @dx.op.unary.f32(i32 7, float %1571)  ; Saturate(value)
  %1573 = fmul fast float %1572, %1565
  %1574 = extractvalue %dx.types.CBufRet.f32 %1569, 0
  %1575 = fsub fast float %539, %1574
  %1576 = extractvalue %dx.types.CBufRet.f32 %1569, 1
  %1577 = fmul fast float %1575, %1576
  %1578 = call float @dx.op.unary.f32(i32 7, float %1577)  ; Saturate(value)
  %1579 = fsub fast float 1.000000e+00, %1563
  %1580 = fmul fast float %1578, %1579
  %1581 = fadd fast float %1580, %1563
  %1582 = extractvalue %dx.types.CBufRet.f32 %1558, 0
  %1583 = fsub fast float %1573, %1582
  %1584 = fmul fast float %1583, %1581
  %1585 = fadd fast float %1584, %1582
  %1586 = fmul fast float %1585, %1098
  %1587 = fadd fast float %1586, %1555
  br label %1588

; <label>:1588                                    ; preds = %1557, %1554
  %1589 = phi float [ %1587, %1557 ], [ %1555, %1554 ]
  %1590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1591 = extractvalue %dx.types.CBufRet.f32 %1590, 1
  %1592 = fcmp fast ogt float %1589, %1591
  br i1 %1592, label %1595, label %1593, !dx.controlflow.hints !84

; <label>:1593                                    ; preds = %1588
  %1594 = fadd fast float %1098, %539
  br label %1728

; <label>:1595                                    ; preds = %1588
  %1596 = fmul fast float %1589, 0xBFF7154760000000
  %1597 = call float @dx.op.unary.f32(i32 21, float %1596)  ; Exp(value)
  %1598 = call float @dx.op.unary.f32(i32 7, float %1597)  ; Saturate(value)
  %1599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1600 = extractvalue %dx.types.CBufRet.f32 %1599, 0
  %1601 = extractvalue %dx.types.CBufRet.f32 %1599, 1
  %1602 = extractvalue %dx.types.CBufRet.f32 %1599, 2
  %1603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %1604 = extractvalue %dx.types.CBufRet.f32 %1603, 0
  %1605 = fmul fast float %1604, %1600
  %1606 = fmul fast float %1604, %1601
  %1607 = fmul fast float %1604, %1602
  %1608 = fadd fast float %1605, %536
  %1609 = fadd fast float %1606, %537
  %1610 = fadd fast float %1607, %538
  br i1 %911, label %1681, label %1611, !dx.controlflow.hints !67

; <label>:1611                                    ; preds = %1595
  %1612 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1613 = extractvalue %dx.types.CBufRet.i32 %1612, 1
  %1614 = and i32 %1613, 1
  %1615 = icmp eq i32 %1614, 0
  br i1 %1615, label %1616, label %1681, !dx.controlflow.hints !68

; <label>:1616                                    ; preds = %1611
  %1617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %1618 = extractvalue %dx.types.CBufRet.f32 %1617, 2
  %1619 = extractvalue %dx.types.CBufRet.f32 %1617, 3
  %1620 = fmul fast float %1618, %1608
  %1621 = fmul fast float %1619, %1609
  %1622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %1623 = extractvalue %dx.types.CBufRet.f32 %1622, 0
  %1624 = extractvalue %dx.types.CBufRet.f32 %1622, 1
  %1625 = fadd fast float %1620, %1623
  %1626 = fadd fast float %1621, %1624
  %1627 = call float @dx.op.unary.f32(i32 7, float %1625)  ; Saturate(value)
  %1628 = call float @dx.op.unary.f32(i32 7, float %1626)  ; Saturate(value)
  %1629 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %19, float %1627, float %1628, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1630 = extractvalue %dx.types.ResRet.f32 %1629, 0
  %1631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %1632 = extractvalue %dx.types.CBufRet.f32 %1631, 0
  %1633 = fmul fast float %1632, %1630
  %1634 = fsub fast float %1625, %1627
  %1635 = fsub fast float %1626, %1628
  %1636 = extractvalue %dx.types.CBufRet.f32 %1617, 0
  %1637 = extractvalue %dx.types.CBufRet.f32 %1617, 1
  %1638 = fmul fast float %1636, %1634
  %1639 = fmul fast float %1637, %1635
  %1640 = fmul fast float %1638, %1638
  %1641 = fmul fast float %1639, %1639
  %1642 = fadd fast float %1640, %1641
  %1643 = call float @dx.op.unary.f32(i32 24, float %1642)  ; Sqrt(value)
  %1644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1645 = extractvalue %dx.types.CBufRet.f32 %1644, 3
  %1646 = fmul fast float %1645, %1643
  %1647 = call float @dx.op.unary.f32(i32 7, float %1646)  ; Saturate(value)
  %1648 = extractvalue %dx.types.CBufRet.f32 %1644, 2
  %1649 = fsub fast float %1648, %1633
  %1650 = fmul fast float %1649, %1647
  %1651 = extractvalue %dx.types.CBufRet.f32 %1631, 1
  %1652 = fsub fast float %1610, %1633
  %1653 = fsub fast float %1652, %1651
  %1654 = fsub fast float %1653, %1650
  %1655 = extractvalue %dx.types.CBufRet.i32 %1612, 0
  %1656 = icmp eq i32 %1655, 0
  br i1 %1656, label %1675, label %1657

; <label>:1657                                    ; preds = %1616
  br label %1658

; <label>:1658                                    ; preds = %1670, %1657
  %1659 = phi i32 [ %1671, %1670 ], [ 0, %1657 ]
  %1660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1661 = extractvalue %dx.types.CBufRet.f32 %1660, 1
  %1662 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1663 = extractvalue %dx.types.CBufRet.i32 %1662, 1
  %1664 = and i32 %1663, 8
  %1665 = icmp eq i32 %1664, 0
  %1666 = fcmp fast ogt float %1661, %1654
  %1667 = or i1 %1666, %1665
  br i1 %1667, label %1668, label %1669, !dx.controlflow.hints !69

; <label>:1668                                    ; preds = %1658
  br label %1670

; <label>:1669                                    ; preds = %1658
  br label %1670

; <label>:1670                                    ; preds = %1669, %1668
  %1671 = add i32 %1659, 1
  %1672 = extractvalue %dx.types.CBufRet.i32 %1662, 0
  %1673 = icmp ult i32 %1671, %1672
  br i1 %1673, label %1658, label %1674

; <label>:1674                                    ; preds = %1670
  br label %1675

; <label>:1675                                    ; preds = %1674, %1616
  br label %1676

; <label>:1676                                    ; preds = %1676, %1675
  %1677 = phi i32 [ %1678, %1676 ], [ 0, %1675 ]
  %1678 = add nuw nsw i32 %1677, 1
  %1679 = icmp eq i32 %1678, 4
  br i1 %1679, label %1680, label %1676

; <label>:1680                                    ; preds = %1676
  br label %1681

; <label>:1681                                    ; preds = %1680, %1611, %1595
  %1682 = fsub fast float 1.000000e+00, %1598
  %1683 = fdiv fast float %1589, %1098
  %1684 = fadd fast float %1098, %539
  %1685 = fmul fast float %539, %539
  %1686 = fmul fast float %1684, %1684
  %1687 = fsub fast float %1685, %1686
  %1688 = fmul fast float %1687, -5.000000e-01
  %1689 = fmul fast float %1688, %1683
  %1690 = fadd fast float %1689, %534
  %1691 = fadd fast float %1589, %543
  %1692 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1693 = extractvalue %dx.types.CBufRet.i32 %1692, 0
  %1694 = icmp eq i32 %1693, 0
  br i1 %1694, label %1721, label %1695, !dx.controlflow.hints !85

; <label>:1695                                    ; preds = %1681
  %1696 = icmp ne i32 %548, 0
  %1697 = zext i1 %1696 to i32
  %1698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1699 = extractvalue %dx.types.CBufRet.f32 %1698, 2
  %1700 = extractvalue %dx.types.CBufRet.f32 %1698, 0
  %1701 = fsub fast float %1684, %1700
  %1702 = fmul fast float %1701, %1699
  %1703 = call float @dx.op.unary.f32(i32 7, float %1702)  ; Saturate(value)
  %1704 = fadd fast float %1703, -5.000000e-01
  %1705 = fmul fast float %1704, 2.000000e+00
  %1706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1707 = extractvalue %dx.types.CBufRet.f32 %1706, 2
  %1708 = fcmp fast olt float %1705, %1707
  br i1 %1708, label %1709, label %1721, !dx.controlflow.hints !86

; <label>:1709                                    ; preds = %1695
  %1710 = fmul fast float %1705, %1705
  %1711 = fmul fast float %1682, %535
  %1712 = fmul fast float %1705, %1711
  %1713 = fmul fast float %1710, %1711
  %1714 = fmul fast float %1712, %1710
  %1715 = fmul fast float %1710, %1710
  %1716 = fmul fast float %1715, %1711
  %1717 = fadd fast float %1712, %544
  %1718 = fadd fast float %1713, %545
  %1719 = fadd fast float %1714, %546
  %1720 = fadd fast float %1716, %547
  br label %1721

; <label>:1721                                    ; preds = %1709, %1695, %1681
  %1722 = phi float [ %544, %1681 ], [ %1717, %1709 ], [ %544, %1695 ]
  %1723 = phi float [ %545, %1681 ], [ %1718, %1709 ], [ %545, %1695 ]
  %1724 = phi float [ %546, %1681 ], [ %1719, %1709 ], [ %546, %1695 ]
  %1725 = phi float [ %547, %1681 ], [ %1720, %1709 ], [ %547, %1695 ]
  %1726 = phi i32 [ %548, %1681 ], [ 1, %1709 ], [ %1697, %1695 ]
  %1727 = fmul fast float %1598, %535
  br label %1728

; <label>:1728                                    ; preds = %1721, %1593
  %1729 = phi float [ %1594, %1593 ], [ %1684, %1721 ]
  %1730 = phi float [ %534, %1593 ], [ %1690, %1721 ]
  %1731 = phi float [ %535, %1593 ], [ %1727, %1721 ]
  %1732 = phi float [ %543, %1593 ], [ %1691, %1721 ]
  %1733 = phi float [ %544, %1593 ], [ %1722, %1721 ]
  %1734 = phi float [ %545, %1593 ], [ %1723, %1721 ]
  %1735 = phi float [ %546, %1593 ], [ %1724, %1721 ]
  %1736 = phi float [ %547, %1593 ], [ %1725, %1721 ]
  %1737 = phi i32 [ %548, %1593 ], [ %1726, %1721 ]
  %1738 = fmul fast float %1098, %281
  %1739 = fmul fast float %1098, %282
  %1740 = fmul fast float %1098, %283
  %1741 = fadd fast float %1738, %536
  %1742 = fadd fast float %1739, %537
  %1743 = fadd fast float %1740, %538
  %1744 = fcmp fast olt float %1729, %505
  %1745 = extractvalue %dx.types.CBufRet.f32 %1590, 2
  %1746 = fcmp fast olt float %1745, %1731
  %1747 = and i1 %1744, %1746
  br i1 %1747, label %527, label %1748

; <label>:1748                                    ; preds = %1728
  %1749 = uitofp i32 %551 to float
  br label %1750

; <label>:1750                                    ; preds = %1748, %498
  %1751 = phi float [ 0.000000e+00, %498 ], [ %1730, %1748 ]
  %1752 = phi float [ 1.000000e+00, %498 ], [ %1731, %1748 ]
  %1753 = phi float [ 0.000000e+00, %498 ], [ %1749, %1748 ]
  %1754 = phi float [ 0.000000e+00, %498 ], [ %1732, %1748 ]
  %1755 = phi float [ 0.000000e+00, %498 ], [ %1733, %1748 ]
  %1756 = phi float [ 0.000000e+00, %498 ], [ %1734, %1748 ]
  %1757 = phi float [ 0.000000e+00, %498 ], [ %1735, %1748 ]
  %1758 = phi float [ 0.000000e+00, %498 ], [ %1736, %1748 ]
  %1759 = phi i32 [ 0, %498 ], [ %1737, %1748 ]
  %1760 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1761 = extractvalue %dx.types.CBufRet.i32 %1760, 0
  %1762 = icmp eq i32 %1761, 0
  br i1 %1762, label %1804, label %1763, !dx.controlflow.hints !87

; <label>:1763                                    ; preds = %1750
  %1764 = icmp eq i32 %1759, 0
  br i1 %1764, label %1803, label %1765, !dx.controlflow.hints !88

; <label>:1765                                    ; preds = %1763
  %1766 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1767 = extractvalue %dx.types.CBufRet.i32 %1766, 2
  %1768 = icmp eq i32 %1767, 0
  br i1 %1768, label %1775, label %1769, !dx.controlflow.hints !89

; <label>:1769                                    ; preds = %1765
  %1770 = fsub fast float 1.000000e+00, %1752
  %1771 = fdiv fast float %1755, %1770
  %1772 = fdiv fast float %1756, %1770
  %1773 = fdiv fast float %1757, %1770
  %1774 = fdiv fast float %1758, %1770
  br label %1780

; <label>:1775                                    ; preds = %1765
  %1776 = fadd fast float %1755, %1752
  %1777 = fadd fast float %1756, %1752
  %1778 = fadd fast float %1757, %1752
  %1779 = fadd fast float %1758, %1752
  br label %1780

; <label>:1780                                    ; preds = %1775, %1769
  %1781 = phi float [ %1771, %1769 ], [ %1776, %1775 ]
  %1782 = phi float [ %1772, %1769 ], [ %1777, %1775 ]
  %1783 = phi float [ %1773, %1769 ], [ %1778, %1775 ]
  %1784 = phi float [ %1774, %1769 ], [ %1779, %1775 ]
  %1785 = call float @dx.op.binary.f32(i32 35, float %1781, float -1.000000e+00)  ; FMax(a,b)
  %1786 = call float @dx.op.binary.f32(i32 35, float %1782, float -1.000000e+00)  ; FMax(a,b)
  %1787 = call float @dx.op.binary.f32(i32 35, float %1783, float -1.000000e+00)  ; FMax(a,b)
  %1788 = call float @dx.op.binary.f32(i32 35, float %1784, float -1.000000e+00)  ; FMax(a,b)
  %1789 = call float @dx.op.binary.f32(i32 36, float %1785, float 1.000000e+00)  ; FMin(a,b)
  %1790 = call float @dx.op.binary.f32(i32 36, float %1786, float 1.000000e+00)  ; FMin(a,b)
  %1791 = call float @dx.op.binary.f32(i32 36, float %1787, float 1.000000e+00)  ; FMin(a,b)
  %1792 = call float @dx.op.binary.f32(i32 36, float %1788, float 1.000000e+00)  ; FMin(a,b)
  %1793 = fmul fast float %1789, 1.500000e+00
  %1794 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %1791, float %1793)  ; FMad(a,b,c)
  %1795 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %1790, float 0.000000e+00)  ; FMad(a,b,c)
  %1796 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %1792, float %1795)  ; FMad(a,b,c)
  %1797 = fmul fast float %1789, 0x3FEBB67AE0000000
  %1798 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %1791, float %1797)  ; FMad(a,b,c)
  %1799 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1790, float 0.000000e+00)  ; FMad(a,b,c)
  %1800 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1792, float %1799)  ; FMad(a,b,c)
  %1801 = fadd fast float %1794, 5.000000e-01
  %1802 = fadd fast float %1798, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %23, i32 %24, i32 0, float %1801, float %1796, float %1802, float %1800, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1804

; <label>:1803                                    ; preds = %1763
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %23, i32 %24, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1804

; <label>:1804                                    ; preds = %1803, %1780, %1750
  %1805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %1806 = extractvalue %dx.types.CBufRet.f32 %1805, 0
  %1807 = extractvalue %dx.types.CBufRet.f32 %1805, 1
  %1808 = extractvalue %dx.types.CBufRet.f32 %1805, 2
  %1809 = call float @dx.op.dot3.f32(i32 55, float %281, float %282, float %283, float %1806, float %1807, float %1808)  ; Dot3(ax,ay,az,bx,by,bz)
  %1810 = fmul fast float %1809, %1751
  %1811 = fcmp fast ogt float %1754, 0.000000e+00
  %1812 = fdiv fast float 1.000000e+00, %1754
  %1813 = fmul fast float %1810, %1812
  %1814 = select i1 %1811, float %1813, float %292
  %1815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1816 = extractvalue %dx.types.CBufRet.f32 %1815, 0
  %1817 = extractvalue %dx.types.CBufRet.f32 %1815, 1
  %1818 = extractvalue %dx.types.CBufRet.f32 %1815, 2
  %1819 = fmul fast float %1816, %245
  %1820 = fmul fast float %1817, %245
  %1821 = fmul fast float %1818, %245
  %1822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1823 = extractvalue %dx.types.CBufRet.f32 %1822, 0
  %1824 = extractvalue %dx.types.CBufRet.f32 %1822, 1
  %1825 = extractvalue %dx.types.CBufRet.f32 %1822, 2
  %1826 = fmul fast float %1823, %246
  %1827 = fmul fast float %1824, %246
  %1828 = fmul fast float %1825, %246
  %1829 = fadd fast float %1826, %1819
  %1830 = fadd fast float %1827, %1820
  %1831 = fadd fast float %1828, %1821
  %1832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1833 = extractvalue %dx.types.CBufRet.f32 %1832, 0
  %1834 = extractvalue %dx.types.CBufRet.f32 %1832, 1
  %1835 = extractvalue %dx.types.CBufRet.f32 %1832, 2
  %1836 = fadd fast float %1829, %1833
  %1837 = fadd fast float %1830, %1834
  %1838 = fadd fast float %1831, %1835
  %1839 = fmul fast float %1836, %1814
  %1840 = fmul fast float %1837, %1814
  %1841 = fmul fast float %1838, %1814
  %1842 = call float @dx.op.dot3.f32(i32 55, float %1839, float %1840, float %1841, float %1839, float %1840, float %1841)  ; Dot3(ax,ay,az,bx,by,bz)
  %1843 = call float @dx.op.unary.f32(i32 25, float %1842)  ; Rsqrt(value)
  %1844 = fmul fast float %1843, %1842
  %1845 = fmul fast float %1843, %1839
  %1846 = fmul fast float %1843, %1840
  %1847 = fmul fast float %1843, %1841
  %1848 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1849 = extractvalue %dx.types.CBufRet.i32 %1848, 1
  %1850 = and i32 %1849, 1
  %1851 = icmp ne i32 %1850, 0
  %1852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1853 = extractvalue %dx.types.CBufRet.f32 %1852, 2
  %1854 = fcmp fast ogt float %1853, 0.000000e+00
  %1855 = and i1 %1851, %1854
  br i1 %1855, label %1856, label %2014, !dx.controlflow.hints !90

; <label>:1856                                    ; preds = %1804
  %1857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1858 = extractvalue %dx.types.CBufRet.f32 %1857, 2
  %1859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1860 = extractvalue %dx.types.CBufRet.f32 %1859, 2
  %1861 = fsub fast float %1858, %1860
  %1862 = extractvalue %dx.types.CBufRet.i32 %1848, 0
  %1863 = call i32 @dx.op.binary.i32(i32 40, i32 %1862, i32 3)  ; UMin(a,b)
  %1864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1865 = extractvalue %dx.types.CBufRet.f32 %1864, 0
  %1866 = extractvalue %dx.types.CBufRet.f32 %1864, 1
  %1867 = extractvalue %dx.types.CBufRet.f32 %1859, 0
  %1868 = extractvalue %dx.types.CBufRet.f32 %1859, 1
  %1869 = fsub fast float %1865, %1867
  %1870 = fsub fast float %1866, %1868
  %1871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1872 = extractvalue %dx.types.CBufRet.f32 %1871, 0
  %1873 = fcmp fast ogt float %1872, 0.000000e+00
  %1874 = fsub fast float -0.000000e+00, %1869
  %1875 = fsub fast float -0.000000e+00, %1870
  %1876 = call float @dx.op.dot2.f32(i32 54, float %1845, float %1846, float %1845, float %1846)  ; Dot2(ax,ay,bx,by)
  %1877 = call float @dx.op.dot2.f32(i32 54, float %1845, float %1846, float %1874, float %1875)  ; Dot2(ax,ay,bx,by)
  %1878 = fmul fast float %1877, 2.000000e+00
  %1879 = call float @dx.op.dot2.f32(i32 54, float %1874, float %1875, float %1874, float %1875)  ; Dot2(ax,ay,bx,by)
  %1880 = fmul fast float %1872, %1872
  %1881 = fsub fast float %1879, %1880
  %1882 = fmul fast float %1878, %1878
  %1883 = fmul fast float %1876, 4.000000e+00
  %1884 = fmul fast float %1883, %1881
  %1885 = fsub fast float %1882, %1884
  %1886 = fcmp fast ogt float %1885, 0.000000e+00
  br i1 %1886, label %1887, label %1902, !dx.controlflow.hints !91

; <label>:1887                                    ; preds = %1856
  %1888 = fcmp fast ogt float %1878, 0.000000e+00
  %1889 = call float @dx.op.unary.f32(i32 24, float %1885)  ; Sqrt(value)
  %1890 = fsub fast float -0.000000e+00, %1889
  %1891 = select i1 %1888, float %1889, float %1890
  %1892 = fadd fast float %1891, %1878
  %1893 = fmul float %1892, -5.000000e-01
  %1894 = fdiv fast float %1893, %1876
  %1895 = call float @dx.op.binary.f32(i32 35, float %1894, float 0.000000e+00)  ; FMax(a,b)
  %1896 = call float @dx.op.binary.f32(i32 36, float %1844, float %1895)  ; FMin(a,b)
  %1897 = fdiv fast float %1881, %1893
  %1898 = call float @dx.op.binary.f32(i32 35, float %1897, float 0.000000e+00)  ; FMax(a,b)
  %1899 = call float @dx.op.binary.f32(i32 36, float %1844, float %1898)  ; FMin(a,b)
  %1900 = call float @dx.op.binary.f32(i32 36, float %1896, float %1899)  ; FMin(a,b)
  %1901 = call float @dx.op.binary.f32(i32 35, float %1896, float %1899)  ; FMax(a,b)
  br label %1902

; <label>:1902                                    ; preds = %1887, %1856
  %1903 = phi float [ %1901, %1887 ], [ -1.000000e+00, %1856 ]
  %1904 = phi float [ %1900, %1887 ], [ -1.000000e+00, %1856 ]
  %1905 = phi i1 [ true, %1887 ], [ false, %1856 ]
  %1906 = and i1 %1873, %1905
  br i1 %1906, label %1907, label %1909, !dx.controlflow.hints !92

; <label>:1907                                    ; preds = %1902
  %1908 = fcmp fast oeq float %1904, %1903
  br i1 %1908, label %2014, label %1910, !dx.controlflow.hints !93

; <label>:1909                                    ; preds = %1902
  br i1 %1873, label %2014, label %1910, !dx.controlflow.hints !94

; <label>:1910                                    ; preds = %1909, %1907
  %1911 = phi float [ %1844, %1909 ], [ %1903, %1907 ]
  %1912 = phi float [ 0.000000e+00, %1909 ], [ %1904, %1907 ]
  %1913 = fcmp fast oeq float %1847, 0.000000e+00
  %1914 = fdiv fast float %1861, %1847
  %1915 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1914)  ; FMax(a,b)
  %1916 = select i1 %1913, float %1911, float %1915
  %1917 = call float @dx.op.binary.f32(i32 36, float %1911, float %1916)  ; FMin(a,b)
  %1918 = fcmp fast ogt float %1847, 0.000000e+00
  %1919 = fcmp fast olt float %1861, 0.000000e+00
  br i1 %1918, label %1920, label %1921, !dx.controlflow.hints !95

; <label>:1920                                    ; preds = %1910
  br i1 %1919, label %2014, label %1924, !dx.controlflow.hints !96

; <label>:1921                                    ; preds = %1910
  br i1 %1919, label %1922, label %1924, !dx.controlflow.hints !97

; <label>:1922                                    ; preds = %1921
  %1923 = call float @dx.op.binary.f32(i32 35, float %1912, float %1917)  ; FMax(a,b)
  br label %1924

; <label>:1924                                    ; preds = %1922, %1921, %1920
  %1925 = phi float [ %1923, %1922 ], [ %1912, %1921 ], [ %1912, %1920 ]
  %1926 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 0
  store float -1.000000e+00, float* %1926, align 4, !tbaa !98, !noalias !102
  %1927 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 1
  store float -1.000000e+00, float* %1927, align 4, !tbaa !98, !noalias !102
  %1928 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 2
  store float -1.000000e+00, float* %1928, align 4, !tbaa !98, !noalias !102
  %1929 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 0
  store float -1.000000e+00, float* %1929, align 4, !tbaa !98, !noalias !102
  %1930 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 1
  store float -1.000000e+00, float* %1930, align 4, !tbaa !98, !noalias !102
  %1931 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 2
  store float -1.000000e+00, float* %1931, align 4, !tbaa !98, !noalias !102
  %1932 = icmp sgt i32 %1863, 0
  br i1 %1932, label %1933, label %1991

; <label>:1933                                    ; preds = %1924
  br label %1934

; <label>:1934                                    ; preds = %1981, %1933
  %1935 = phi i32 [ %1982, %1981 ], [ 0, %1933 ]
  %1936 = add nuw i32 %1935, 171
  %1937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 %1936)  ; CBufferLoadLegacy(handle,regIndex)
  %1938 = extractvalue %dx.types.CBufRet.f32 %1937, 0
  %1939 = extractvalue %dx.types.CBufRet.f32 %1937, 1
  %1940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1941 = extractvalue %dx.types.CBufRet.f32 %1940, 0
  %1942 = extractvalue %dx.types.CBufRet.f32 %1940, 1
  %1943 = fsub fast float %1938, %1941
  %1944 = fsub fast float %1939, %1942
  %1945 = extractvalue %dx.types.CBufRet.f32 %1937, 2
  %1946 = fsub fast float -0.000000e+00, %1943
  %1947 = fsub fast float -0.000000e+00, %1944
  %1948 = call float @dx.op.dot2.f32(i32 54, float %1845, float %1846, float %1946, float %1947)  ; Dot2(ax,ay,bx,by)
  %1949 = fmul fast float %1948, 2.000000e+00
  %1950 = call float @dx.op.dot2.f32(i32 54, float %1946, float %1947, float %1946, float %1947)  ; Dot2(ax,ay,bx,by)
  %1951 = fmul fast float %1945, %1945
  %1952 = fsub fast float %1950, %1951
  %1953 = fmul fast float %1949, %1949
  %1954 = fmul fast float %1883, %1952
  %1955 = fsub fast float %1953, %1954
  %1956 = fcmp fast ogt float %1955, 0.000000e+00
  br i1 %1956, label %1957, label %1972, !dx.controlflow.hints !91

; <label>:1957                                    ; preds = %1934
  %1958 = fcmp fast ogt float %1949, 0.000000e+00
  %1959 = call float @dx.op.unary.f32(i32 24, float %1955)  ; Sqrt(value)
  %1960 = fsub fast float -0.000000e+00, %1959
  %1961 = select i1 %1958, float %1959, float %1960
  %1962 = fadd fast float %1961, %1949
  %1963 = fmul float %1962, -5.000000e-01
  %1964 = fdiv fast float %1963, %1876
  %1965 = call float @dx.op.binary.f32(i32 35, float %1964, float 0.000000e+00)  ; FMax(a,b)
  %1966 = call float @dx.op.binary.f32(i32 36, float %1911, float %1965)  ; FMin(a,b)
  %1967 = fdiv fast float %1952, %1963
  %1968 = call float @dx.op.binary.f32(i32 35, float %1967, float 0.000000e+00)  ; FMax(a,b)
  %1969 = call float @dx.op.binary.f32(i32 36, float %1911, float %1968)  ; FMin(a,b)
  %1970 = call float @dx.op.binary.f32(i32 36, float %1966, float %1969)  ; FMin(a,b)
  %1971 = call float @dx.op.binary.f32(i32 35, float %1966, float %1969)  ; FMax(a,b)
  br label %1972

; <label>:1972                                    ; preds = %1957, %1934
  %1973 = phi float [ %1971, %1957 ], [ -1.000000e+00, %1934 ]
  %1974 = phi float [ %1970, %1957 ], [ -1.000000e+00, %1934 ]
  %1975 = phi i1 [ true, %1957 ], [ false, %1934 ]
  br i1 %1975, label %1976, label %1981, !dx.controlflow.hints !113

; <label>:1976                                    ; preds = %1972
  %1977 = call float @dx.op.binary.f32(i32 35, float %1925, float %1974)  ; FMax(a,b)
  %1978 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 %1935
  store float %1977, float* %1978, align 4, !tbaa !98, !noalias !102
  %1979 = call float @dx.op.binary.f32(i32 35, float %1925, float %1973)  ; FMax(a,b)
  %1980 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 %1935
  store float %1979, float* %1980, align 4, !tbaa !98, !noalias !102
  br label %1981

; <label>:1981                                    ; preds = %1976, %1972
  %1982 = add nuw nsw i32 %1935, 1
  %1983 = icmp eq i32 %1982, %1863
  br i1 %1983, label %1984, label %1934

; <label>:1984                                    ; preds = %1981
  %1985 = load float, float* %1928, align 4, !tbaa !98, !alias.scope !114, !noalias !117
  %1986 = load float, float* %1927, align 4, !tbaa !98, !alias.scope !120, !noalias !121
  %1987 = load float, float* %1926, align 4, !tbaa !98, !alias.scope !122, !noalias !123
  %1988 = load float, float* %1931, align 4, !tbaa !98, !alias.scope !124, !noalias !127
  %1989 = load float, float* %1930, align 4, !tbaa !98, !alias.scope !130, !noalias !131
  %1990 = load float, float* %1929, align 4, !tbaa !98, !alias.scope !132, !noalias !133
  br label %1991

; <label>:1991                                    ; preds = %1984, %1924
  %1992 = phi float [ -1.000000e+00, %1924 ], [ %1990, %1984 ]
  %1993 = phi float [ -1.000000e+00, %1924 ], [ %1989, %1984 ]
  %1994 = phi float [ -1.000000e+00, %1924 ], [ %1988, %1984 ]
  %1995 = phi float [ -1.000000e+00, %1924 ], [ %1987, %1984 ]
  %1996 = phi float [ -1.000000e+00, %1924 ], [ %1986, %1984 ]
  %1997 = phi float [ -1.000000e+00, %1924 ], [ %1985, %1984 ]
  %1998 = call float @dx.op.binary.f32(i32 36, float %1996, float %1997)  ; FMin(a,b)
  %1999 = call float @dx.op.binary.f32(i32 36, float %1995, float %1998)  ; FMin(a,b)
  %2000 = call float @dx.op.binary.f32(i32 35, float %1995, float %1996)  ; FMax(a,b)
  %2001 = call float @dx.op.binary.f32(i32 36, float %2000, float %1997)  ; FMin(a,b)
  %2002 = call float @dx.op.binary.f32(i32 36, float %1995, float %1996)  ; FMin(a,b)
  %2003 = call float @dx.op.binary.f32(i32 35, float %2002, float %2001)  ; FMax(a,b)
  %2004 = call float @dx.op.binary.f32(i32 35, float %1996, float %1997)  ; FMax(a,b)
  %2005 = call float @dx.op.binary.f32(i32 35, float %1995, float %2004)  ; FMax(a,b)
  store float %1999, float* %1926, align 4, !tbaa !98, !alias.scope !122, !noalias !123
  store float %2003, float* %1927, align 4, !tbaa !98, !alias.scope !120, !noalias !121
  store float %2005, float* %1928, align 4, !tbaa !98, !alias.scope !114, !noalias !117
  %2006 = call float @dx.op.binary.f32(i32 36, float %1993, float %1994)  ; FMin(a,b)
  %2007 = call float @dx.op.binary.f32(i32 36, float %1992, float %2006)  ; FMin(a,b)
  %2008 = call float @dx.op.binary.f32(i32 35, float %1992, float %1993)  ; FMax(a,b)
  %2009 = call float @dx.op.binary.f32(i32 36, float %2008, float %1994)  ; FMin(a,b)
  %2010 = call float @dx.op.binary.f32(i32 36, float %1992, float %1993)  ; FMin(a,b)
  %2011 = call float @dx.op.binary.f32(i32 35, float %2010, float %2009)  ; FMax(a,b)
  %2012 = call float @dx.op.binary.f32(i32 35, float %1993, float %1994)  ; FMax(a,b)
  %2013 = call float @dx.op.binary.f32(i32 35, float %1992, float %2012)  ; FMax(a,b)
  store float %2007, float* %1929, align 4, !tbaa !98, !alias.scope !132, !noalias !133
  store float %2011, float* %1930, align 4, !tbaa !98, !alias.scope !130, !noalias !131
  store float %2013, float* %1931, align 4, !tbaa !98, !alias.scope !124, !noalias !127
  br label %2014

; <label>:2014                                    ; preds = %1991, %1920, %1909, %1907, %1804
  %2015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %2016 = extractvalue %dx.types.CBufRet.f32 %2015, 2
  %2017 = fmul fast float %2016, %1814
  %2018 = call float @dx.op.unary.f32(i32 7, float %2017)  ; Saturate(value)
  %2019 = fptoui float %1753 to i32
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2020 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %25
  store i32 %2019, i32 addrspace(3)* %2020, align 4, !tbaa !134
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2021 = and i32 %25, 63
  %2022 = icmp ult i32 %2021, 32
  br i1 %2022, label %2023, label %2029, !dx.controlflow.hints !136

; <label>:2023                                    ; preds = %2014
  %2024 = add i32 %25, 32
  %2025 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2024
  %2026 = load i32, i32 addrspace(3)* %2025, align 4, !tbaa !134
  %2027 = load i32, i32 addrspace(3)* %2020, align 4, !tbaa !134
  %2028 = call i32 @dx.op.binary.i32(i32 40, i32 %2027, i32 %2026)  ; UMin(a,b)
  store i32 %2028, i32 addrspace(3)* %2020, align 4, !tbaa !134
  br label %2029

; <label>:2029                                    ; preds = %2023, %2014
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %2030 = icmp ult i32 %2021, 16
  br i1 %2030, label %2031, label %2037, !dx.controlflow.hints !137

; <label>:2031                                    ; preds = %2029
  %2032 = add i32 %25, 16
  %2033 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2032
  %2034 = load i32, i32 addrspace(3)* %2033, align 4, !tbaa !134
  %2035 = load i32, i32 addrspace(3)* %2020, align 4, !tbaa !134
  %2036 = call i32 @dx.op.binary.i32(i32 40, i32 %2035, i32 %2034)  ; UMin(a,b)
  store i32 %2036, i32 addrspace(3)* %2020, align 4, !tbaa !134
  br label %2037

; <label>:2037                                    ; preds = %2031, %2029
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %2038 = icmp ult i32 %2021, 8
  br i1 %2038, label %2039, label %2045, !dx.controlflow.hints !138

; <label>:2039                                    ; preds = %2037
  %2040 = add i32 %25, 8
  %2041 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2040
  %2042 = load i32, i32 addrspace(3)* %2041, align 4, !tbaa !134
  %2043 = load i32, i32 addrspace(3)* %2020, align 4, !tbaa !134
  %2044 = call i32 @dx.op.binary.i32(i32 40, i32 %2043, i32 %2042)  ; UMin(a,b)
  store i32 %2044, i32 addrspace(3)* %2020, align 4, !tbaa !134
  br label %2045

; <label>:2045                                    ; preds = %2039, %2037
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %2046 = icmp ult i32 %2021, 4
  br i1 %2046, label %2047, label %2053, !dx.controlflow.hints !139

; <label>:2047                                    ; preds = %2045
  %2048 = add i32 %25, 4
  %2049 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2048
  %2050 = load i32, i32 addrspace(3)* %2049, align 4, !tbaa !134
  %2051 = load i32, i32 addrspace(3)* %2020, align 4, !tbaa !134
  %2052 = call i32 @dx.op.binary.i32(i32 40, i32 %2051, i32 %2050)  ; UMin(a,b)
  store i32 %2052, i32 addrspace(3)* %2020, align 4, !tbaa !134
  br label %2053

; <label>:2053                                    ; preds = %2047, %2045
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %2054 = icmp ult i32 %2021, 2
  br i1 %2054, label %2055, label %2061, !dx.controlflow.hints !140

; <label>:2055                                    ; preds = %2053
  %2056 = add i32 %25, 2
  %2057 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2056
  %2058 = load i32, i32 addrspace(3)* %2057, align 4, !tbaa !134
  %2059 = load i32, i32 addrspace(3)* %2020, align 4, !tbaa !134
  %2060 = call i32 @dx.op.binary.i32(i32 40, i32 %2059, i32 %2058)  ; UMin(a,b)
  store i32 %2060, i32 addrspace(3)* %2020, align 4, !tbaa !134
  br label %2061

; <label>:2061                                    ; preds = %2055, %2053
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %2062 = icmp eq i32 %2021, 0
  br i1 %2062, label %2063, label %2069, !dx.controlflow.hints !141

; <label>:2063                                    ; preds = %2061
  %2064 = add i32 %25, 1
  %2065 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2064
  %2066 = load i32, i32 addrspace(3)* %2065, align 4, !tbaa !134
  %2067 = load i32, i32 addrspace(3)* %2020, align 4, !tbaa !134
  %2068 = call i32 @dx.op.binary.i32(i32 40, i32 %2067, i32 %2066)  ; UMin(a,b)
  store i32 %2068, i32 addrspace(3)* %2020, align 4, !tbaa !134
  br label %2069

; <label>:2069                                    ; preds = %2063, %2061
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2070 = and i32 %25, -64
  %2071 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2070
  %2072 = load i32, i32 addrspace(3)* %2071, align 4, !tbaa !134
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %2019, i32 addrspace(3)* %2020, align 4, !tbaa !134
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %2022, label %2073, label %2079, !dx.controlflow.hints !142

; <label>:2073                                    ; preds = %2069
  %2074 = add i32 %25, 32
  %2075 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2074
  %2076 = load i32, i32 addrspace(3)* %2075, align 4, !tbaa !134
  %2077 = load i32, i32 addrspace(3)* %2020, align 4, !tbaa !134
  %2078 = call i32 @dx.op.binary.i32(i32 39, i32 %2077, i32 %2076)  ; UMax(a,b)
  store i32 %2078, i32 addrspace(3)* %2020, align 4, !tbaa !134
  br label %2079

; <label>:2079                                    ; preds = %2073, %2069
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2030, label %2080, label %2086, !dx.controlflow.hints !143

; <label>:2080                                    ; preds = %2079
  %2081 = add i32 %25, 16
  %2082 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2081
  %2083 = load i32, i32 addrspace(3)* %2082, align 4, !tbaa !134
  %2084 = load i32, i32 addrspace(3)* %2020, align 4, !tbaa !134
  %2085 = call i32 @dx.op.binary.i32(i32 39, i32 %2084, i32 %2083)  ; UMax(a,b)
  store i32 %2085, i32 addrspace(3)* %2020, align 4, !tbaa !134
  br label %2086

; <label>:2086                                    ; preds = %2080, %2079
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2038, label %2087, label %2093, !dx.controlflow.hints !144

; <label>:2087                                    ; preds = %2086
  %2088 = add i32 %25, 8
  %2089 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2088
  %2090 = load i32, i32 addrspace(3)* %2089, align 4, !tbaa !134
  %2091 = load i32, i32 addrspace(3)* %2020, align 4, !tbaa !134
  %2092 = call i32 @dx.op.binary.i32(i32 39, i32 %2091, i32 %2090)  ; UMax(a,b)
  store i32 %2092, i32 addrspace(3)* %2020, align 4, !tbaa !134
  br label %2093

; <label>:2093                                    ; preds = %2087, %2086
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2046, label %2094, label %2100, !dx.controlflow.hints !145

; <label>:2094                                    ; preds = %2093
  %2095 = add i32 %25, 4
  %2096 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2095
  %2097 = load i32, i32 addrspace(3)* %2096, align 4, !tbaa !134
  %2098 = load i32, i32 addrspace(3)* %2020, align 4, !tbaa !134
  %2099 = call i32 @dx.op.binary.i32(i32 39, i32 %2098, i32 %2097)  ; UMax(a,b)
  store i32 %2099, i32 addrspace(3)* %2020, align 4, !tbaa !134
  br label %2100

; <label>:2100                                    ; preds = %2094, %2093
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2054, label %2101, label %2107, !dx.controlflow.hints !146

; <label>:2101                                    ; preds = %2100
  %2102 = add i32 %25, 2
  %2103 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2102
  %2104 = load i32, i32 addrspace(3)* %2103, align 4, !tbaa !134
  %2105 = load i32, i32 addrspace(3)* %2020, align 4, !tbaa !134
  %2106 = call i32 @dx.op.binary.i32(i32 39, i32 %2105, i32 %2104)  ; UMax(a,b)
  store i32 %2106, i32 addrspace(3)* %2020, align 4, !tbaa !134
  br label %2107

; <label>:2107                                    ; preds = %2101, %2100
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2062, label %2108, label %2114, !dx.controlflow.hints !147

; <label>:2108                                    ; preds = %2107
  %2109 = add i32 %25, 1
  %2110 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2109
  %2111 = load i32, i32 addrspace(3)* %2110, align 4, !tbaa !134
  %2112 = load i32, i32 addrspace(3)* %2020, align 4, !tbaa !134
  %2113 = call i32 @dx.op.binary.i32(i32 39, i32 %2112, i32 %2111)  ; UMax(a,b)
  store i32 %2113, i32 addrspace(3)* %2020, align 4, !tbaa !134
  br label %2114

; <label>:2114                                    ; preds = %2108, %2107
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2115 = load i32, i32 addrspace(3)* %2071, align 4, !tbaa !134
  %2116 = uitofp i32 %2115 to float
  %2117 = uitofp i32 %2072 to float
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %23, i32 %24, i32 undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %2118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2119 = extractvalue %dx.types.CBufRet.f32 %2118, 0
  %2120 = fmul fast float %2119, %1753
  %2121 = fmul fast float %2119, %2116
  %2122 = fmul fast float %2119, %2117
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %23, i32 %24, i32 undef, float %2120, float %2121, float %2122, float %2120, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %23, i32 %24, i32 undef, float %2018, float %2018, float %2018, float %2018, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!dx.entryPoints = !{!34}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !19, !25, !28}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 16, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 27, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture3D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 4, i32 0, !7}
!10 = !{i32 3, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 4, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 8, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 9, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 18, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %"class.StructuredBuffer<VolumetricBBoxGpu>"* undef, !"", i32 0, i32 25, i32 1, i32 12, i32 0, !15}
!15 = !{i32 1, i32 164}
!16 = !{i32 8, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 13, i32 1, i32 2, i32 0, !7}
!17 = !{i32 9, %"class.Texture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!18 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 17, i32 1, i32 11, i32 0, null}
!19 = !{!20, !21, !22, !23}
!20 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!21 = !{i32 1, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!22 = !{i32 2, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!23 = !{i32 3, %"class.RWTexture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 7, i1 false, i1 false, i1 false, !24}
!24 = !{i32 0, i32 14}
!25 = !{!26, !27}
!26 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!27 = !{i32 1, %FogRaymarchingConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 112, null}
!28 = !{!29, !30, !31, !32, !33}
!29 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!30 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!31 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!32 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!33 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!34 = !{void ()* @cs_fog_raymarching_air_clouds_heightmap_particles_brfog, !"cs_fog_raymarching_air_clouds_heightmap_particles_brfog", null, !4, !35}
!35 = !{i32 0, i64 272, i32 4, !36}
!36 = !{i32 8, i32 8, i32 1}
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
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 1}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !62}
!62 = !{!"llvm.loop.unroll.disable"}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 1}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 2}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 2}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 2}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 2}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 2}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 2}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 2}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 2}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 2}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 2}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 1}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 2}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 2}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 2}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 2}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 2}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 1}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 2}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 2}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 2}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 2}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 2}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 2}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 2}
!98 = !{!99, !99, i64 0}
!99 = !{!"float", !100, i64 0}
!100 = !{!"omnipotent char", !101, i64 0}
!101 = !{!"Simple C/C++ TBAA"}
!102 = !{!103, !105, !107, !108, !110, !111, !112}
!103 = distinct !{!103, !104, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!104 = distinct !{!104, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!105 = distinct !{!105, !106, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!106 = distinct !{!106, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!107 = distinct !{!107, !106, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!108 = distinct !{!108, !109, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %scattering"}
!109 = distinct !{!109, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z"}
!110 = distinct !{!110, !109, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %transmission"}
!111 = distinct !{!111, !109, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %depthDensityWeighted"}
!112 = distinct !{!112, !109, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %rawShadowmapData"}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 2}
!114 = !{!115}
!115 = distinct !{!115, !116, !"\01?sort@@YAXAIAM00@Z: %c"}
!116 = distinct !{!116, !"\01?sort@@YAXAIAM00@Z"}
!117 = !{!118, !119, !103, !105, !107, !108, !110, !111, !112}
!118 = distinct !{!118, !116, !"\01?sort@@YAXAIAM00@Z: %a"}
!119 = distinct !{!119, !116, !"\01?sort@@YAXAIAM00@Z: %b"}
!120 = !{!119}
!121 = !{!118, !115, !103, !105, !107, !108, !110, !111, !112}
!122 = !{!118}
!123 = !{!119, !115, !103, !105, !107, !108, !110, !111, !112}
!124 = !{!125}
!125 = distinct !{!125, !126, !"\01?sort@@YAXAIAM00@Z: %c"}
!126 = distinct !{!126, !"\01?sort@@YAXAIAM00@Z"}
!127 = !{!128, !129, !103, !105, !107, !108, !110, !111, !112}
!128 = distinct !{!128, !126, !"\01?sort@@YAXAIAM00@Z: %a"}
!129 = distinct !{!129, !126, !"\01?sort@@YAXAIAM00@Z: %b"}
!130 = !{!129}
!131 = !{!128, !125, !103, !105, !107, !108, !110, !111, !112}
!132 = !{!128}
!133 = !{!129, !125, !103, !105, !107, !108, !110, !111, !112}
!134 = !{!135, !135, i64 0}
!135 = !{!"int", !100, i64 0}
!136 = distinct !{!136, !"dx.controlflow.hints", i32 2}
!137 = distinct !{!137, !"dx.controlflow.hints", i32 2}
!138 = distinct !{!138, !"dx.controlflow.hints", i32 2}
!139 = distinct !{!139, !"dx.controlflow.hints", i32 2}
!140 = distinct !{!140, !"dx.controlflow.hints", i32 2}
!141 = distinct !{!141, !"dx.controlflow.hints", i32 2}
!142 = distinct !{!142, !"dx.controlflow.hints", i32 2}
!143 = distinct !{!143, !"dx.controlflow.hints", i32 2}
!144 = distinct !{!144, !"dx.controlflow.hints", i32 2}
!145 = distinct !{!145, !"dx.controlflow.hints", i32 2}
!146 = distinct !{!146, !"dx.controlflow.hints", i32 2}
!147 = distinct !{!147, !"dx.controlflow.hints", i32 2}

