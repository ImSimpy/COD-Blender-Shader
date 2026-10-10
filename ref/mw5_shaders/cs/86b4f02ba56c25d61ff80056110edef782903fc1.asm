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
; shader hash: a081a0e791500abbac3d9164c7a5b222
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

define void @cs_fog_raymarching_clouds_heightmap_particles() {
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
  %372 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %373 = extractvalue %dx.types.CBufRet.i32 %372, 3
  %374 = icmp eq i32 %373, 0
  %375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %376 = extractvalue %dx.types.CBufRet.f32 %375, 2
  %377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %378 = extractvalue %dx.types.CBufRet.f32 %377, 2
  %379 = fsub fast float %376, %239
  %380 = fadd fast float %379, %378
  br i1 %374, label %392, label %381, !dx.controlflow.hints !40

; <label>:381                                     ; preds = %368
  %382 = fsub fast float -0.000000e+00, %237
  %383 = fsub fast float -0.000000e+00, %238
  %384 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %382, float %383, float %380)  ; Dot3(ax,ay,az,bx,by,bz)
  %385 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %280, float %281, float %282)  ; Dot3(ax,ay,az,bx,by,bz)
  %386 = fdiv fast float 1.000000e+00, %385
  %387 = fmul fast float %386, %384
  %388 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %382, float %383, float %379)  ; Dot3(ax,ay,az,bx,by,bz)
  %389 = fmul fast float %386, %388
  %390 = call float @dx.op.binary.f32(i32 36, float %387, float %389)  ; FMin(a,b)
  %391 = call float @dx.op.binary.f32(i32 35, float %387, float %389)  ; FMax(a,b)
  br label %425

; <label>:392                                     ; preds = %368
  %393 = fdiv fast float 1.000000e+00, %280
  %394 = fdiv fast float 1.000000e+00, %281
  %395 = fdiv fast float 1.000000e+00, %282
  %396 = extractvalue %dx.types.CBufRet.f32 %375, 0
  %397 = extractvalue %dx.types.CBufRet.f32 %375, 1
  %398 = extractvalue %dx.types.CBufRet.f32 %377, 0
  %399 = extractvalue %dx.types.CBufRet.f32 %377, 1
  %400 = fsub fast float %396, %237
  %401 = fmul fast float %400, %393
  %402 = fadd fast float %400, %398
  %403 = fmul fast float %402, %393
  %404 = call float @dx.op.binary.f32(i32 36, float %401, float %403)  ; FMin(a,b)
  %405 = call float @dx.op.binary.f32(i32 35, float %401, float %403)  ; FMax(a,b)
  %406 = fsub fast float %397, %238
  %407 = fmul fast float %406, %394
  %408 = fadd fast float %406, %399
  %409 = fmul fast float %408, %394
  %410 = call float @dx.op.binary.f32(i32 36, float %407, float %409)  ; FMin(a,b)
  %411 = call float @dx.op.binary.f32(i32 35, float %404, float %410)  ; FMax(a,b)
  %412 = call float @dx.op.binary.f32(i32 35, float %407, float %409)  ; FMax(a,b)
  %413 = call float @dx.op.binary.f32(i32 36, float %405, float %412)  ; FMin(a,b)
  %414 = fmul fast float %379, %395
  %415 = fmul fast float %380, %395
  %416 = call float @dx.op.binary.f32(i32 36, float %414, float %415)  ; FMin(a,b)
  %417 = call float @dx.op.binary.f32(i32 35, float %411, float %416)  ; FMax(a,b)
  %418 = call float @dx.op.binary.f32(i32 35, float %414, float %415)  ; FMax(a,b)
  %419 = call float @dx.op.binary.f32(i32 36, float %413, float %418)  ; FMin(a,b)
  %420 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %417)  ; FMax(a,b)
  %421 = fcmp fast ult float %419, %420
  br i1 %421, label %425, label %422, !dx.controlflow.hints !41

; <label>:422                                     ; preds = %392
  %423 = call float @dx.op.binary.f32(i32 36, float %417, float %419)  ; FMin(a,b)
  %424 = call float @dx.op.binary.f32(i32 35, float %417, float %419)  ; FMax(a,b)
  br label %425

; <label>:425                                     ; preds = %422, %392, %381
  %426 = phi float [ %390, %381 ], [ %423, %422 ], [ 0.000000e+00, %392 ]
  %427 = phi float [ %391, %381 ], [ %424, %422 ], [ 0.000000e+00, %392 ]
  %428 = fcmp fast oeq float %427, 0.000000e+00
  br i1 %428, label %432, label %429, !dx.controlflow.hints !42

; <label>:429                                     ; preds = %425
  %430 = call float @dx.op.binary.f32(i32 36, float %371, float %426)  ; FMin(a,b)
  %431 = call float @dx.op.binary.f32(i32 35, float %370, float %427)  ; FMax(a,b)
  br label %432

; <label>:432                                     ; preds = %429, %425
  %433 = phi i32 [ 1, %429 ], [ 0, %425 ]
  %434 = phi float [ %431, %429 ], [ %370, %425 ]
  %435 = phi float [ %430, %429 ], [ %371, %425 ]
  %436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %437 = extractvalue %dx.types.CBufRet.f32 %436, 3
  %438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %439 = extractvalue %dx.types.CBufRet.f32 %438, 0
  %440 = fsub fast float -0.000000e+00, %237
  %441 = fsub fast float -0.000000e+00, %238
  %442 = fsub fast float %437, %239
  %443 = fadd fast float %442, %439
  %444 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %440, float %441, float %443)  ; Dot3(ax,ay,az,bx,by,bz)
  %445 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %280, float %281, float %282)  ; Dot3(ax,ay,az,bx,by,bz)
  %446 = fdiv fast float 1.000000e+00, %445
  %447 = fmul fast float %446, %444
  %448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %449 = extractvalue %dx.types.CBufRet.f32 %448, 2
  %450 = fsub fast float %449, %239
  %451 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %440, float %441, float %450)  ; Dot3(ax,ay,az,bx,by,bz)
  %452 = fmul fast float %446, %451
  %453 = call float @dx.op.binary.f32(i32 36, float %447, float %452)  ; FMin(a,b)
  %454 = call float @dx.op.binary.f32(i32 35, float %447, float %452)  ; FMax(a,b)
  %455 = call float @dx.op.binary.f32(i32 36, float %435, float %453)  ; FMin(a,b)
  %456 = call float @dx.op.binary.f32(i32 35, float %434, float %454)  ; FMax(a,b)
  %457 = fdiv fast float 1.000000e+00, %280
  %458 = fdiv fast float 1.000000e+00, %281
  %459 = fdiv fast float 1.000000e+00, %282
  %460 = call float @dx.op.binary.f32(i32 36, float %301, float %456)  ; FMin(a,b)
  %461 = call float @dx.op.binary.f32(i32 35, float %278, float %455)  ; FMax(a,b)
  %462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %463 = extractvalue %dx.types.CBufRet.f32 %462, 0
  %464 = fmul fast float %226, 2.000000e+00
  %465 = fadd fast float %464, -1.000000e+00
  %466 = fmul fast float %463, %465
  %467 = fadd fast float %466, %461
  %468 = fcmp fast olt float %467, %460
  %469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %470 = extractvalue %dx.types.CBufRet.f32 %469, 2
  %471 = fcmp fast olt float %470, 1.000000e+00
  %472 = and i1 %468, %471
  br i1 %472, label %473, label %1347

; <label>:473                                     ; preds = %432
  %474 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %475 = extractvalue %dx.types.CBufRet.i32 %474, 1
  %476 = add i32 %475, -1
  %477 = fmul fast float %467, %282
  %478 = fadd fast float %477, %239
  %479 = fmul fast float %467, %281
  %480 = fadd fast float %479, %238
  %481 = fmul fast float %467, %280
  %482 = fadd fast float %481, %237
  br label %483

; <label>:483                                     ; preds = %1325, %473
  %484 = phi float [ %780, %1325 ], [ undef, %473 ]
  %485 = phi float [ %781, %1325 ], [ undef, %473 ]
  %486 = phi float [ %782, %1325 ], [ undef, %473 ]
  %487 = phi float [ %783, %1325 ], [ undef, %473 ]
  %488 = phi float [ %1327, %1325 ], [ 0.000000e+00, %473 ]
  %489 = phi float [ %1328, %1325 ], [ 1.000000e+00, %473 ]
  %490 = phi float [ %1338, %1325 ], [ %482, %473 ]
  %491 = phi float [ %1339, %1325 ], [ %480, %473 ]
  %492 = phi float [ %1340, %1325 ], [ %478, %473 ]
  %493 = phi float [ %1326, %1325 ], [ %467, %473 ]
  %494 = phi i32 [ %505, %1325 ], [ 0, %473 ]
  %495 = phi i32 [ %785, %1325 ], [ 10, %473 ]
  %496 = phi i32 [ %677, %1325 ], [ %476, %473 ]
  %497 = phi float [ %1329, %1325 ], [ 0.000000e+00, %473 ]
  %498 = phi float [ %1330, %1325 ], [ 0.000000e+00, %473 ]
  %499 = phi float [ %1331, %1325 ], [ 0.000000e+00, %473 ]
  %500 = phi float [ %1332, %1325 ], [ 0.000000e+00, %473 ]
  %501 = phi float [ %1333, %1325 ], [ 0.000000e+00, %473 ]
  %502 = phi i32 [ %1334, %1325 ], [ 0, %473 ]
  %503 = fsub fast float -0.000000e+00, %491
  %504 = fsub fast float -0.000000e+00, %490
  %505 = add i32 %494, 1
  %506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %507 = extractvalue %dx.types.CBufRet.f32 %506, 0
  %508 = icmp eq i32 %369, 0
  br i1 %508, label %674, label %509, !dx.controlflow.hints !43

; <label>:509                                     ; preds = %483
  %510 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %511 = extractvalue %dx.types.CBufRet.i32 %510, 1
  %512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %513 = extractvalue %dx.types.CBufRet.f32 %512, 1
  %514 = fcmp fast ogt float %513, %493
  br i1 %514, label %515, label %517, !dx.controlflow.hints !44

; <label>:515                                     ; preds = %509
  %516 = fsub fast float %513, %493
  br label %664

; <label>:517                                     ; preds = %509
  %518 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %519 = extractvalue %dx.types.CBufRet.i32 %518, 3
  %520 = icmp eq i32 %519, 0
  %521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %522 = extractvalue %dx.types.CBufRet.f32 %521, 2
  %523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %524 = extractvalue %dx.types.CBufRet.f32 %523, 2
  %525 = fsub fast float %522, %492
  %526 = fadd fast float %525, %524
  %527 = fsub fast float 0xC7EFFFFFE0000000, %492
  br i1 %520, label %535, label %528, !dx.controlflow.hints !37

; <label>:528                                     ; preds = %517
  %529 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %504, float %503, float %526)  ; Dot3(ax,ay,az,bx,by,bz)
  %530 = fmul fast float %446, %529
  %531 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %504, float %503, float %527)  ; Dot3(ax,ay,az,bx,by,bz)
  %532 = fmul fast float %446, %531
  %533 = call float @dx.op.binary.f32(i32 36, float %530, float %532)  ; FMin(a,b)
  %534 = call float @dx.op.binary.f32(i32 35, float %530, float %532)  ; FMax(a,b)
  br label %565

; <label>:535                                     ; preds = %517
  %536 = extractvalue %dx.types.CBufRet.f32 %521, 0
  %537 = extractvalue %dx.types.CBufRet.f32 %521, 1
  %538 = extractvalue %dx.types.CBufRet.f32 %523, 0
  %539 = extractvalue %dx.types.CBufRet.f32 %523, 1
  %540 = fsub fast float %536, %490
  %541 = fmul fast float %457, %540
  %542 = fadd fast float %540, %538
  %543 = fmul fast float %542, %457
  %544 = call float @dx.op.binary.f32(i32 36, float %541, float %543)  ; FMin(a,b)
  %545 = call float @dx.op.binary.f32(i32 35, float %541, float %543)  ; FMax(a,b)
  %546 = fsub fast float %537, %491
  %547 = fmul fast float %458, %546
  %548 = fadd fast float %546, %539
  %549 = fmul fast float %548, %458
  %550 = call float @dx.op.binary.f32(i32 36, float %547, float %549)  ; FMin(a,b)
  %551 = call float @dx.op.binary.f32(i32 35, float %544, float %550)  ; FMax(a,b)
  %552 = call float @dx.op.binary.f32(i32 35, float %547, float %549)  ; FMax(a,b)
  %553 = call float @dx.op.binary.f32(i32 36, float %545, float %552)  ; FMin(a,b)
  %554 = fmul fast float %459, %527
  %555 = fmul fast float %459, %526
  %556 = call float @dx.op.binary.f32(i32 36, float %554, float %555)  ; FMin(a,b)
  %557 = call float @dx.op.binary.f32(i32 35, float %551, float %556)  ; FMax(a,b)
  %558 = call float @dx.op.binary.f32(i32 35, float %554, float %555)  ; FMax(a,b)
  %559 = call float @dx.op.binary.f32(i32 36, float %553, float %558)  ; FMin(a,b)
  %560 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %557)  ; FMax(a,b)
  %561 = fcmp fast ult float %559, %560
  br i1 %561, label %565, label %562, !dx.controlflow.hints !38

; <label>:562                                     ; preds = %535
  %563 = call float @dx.op.binary.f32(i32 36, float %557, float %559)  ; FMin(a,b)
  %564 = call float @dx.op.binary.f32(i32 35, float %557, float %559)  ; FMax(a,b)
  br label %565

; <label>:565                                     ; preds = %562, %535, %528
  %566 = phi float [ %533, %528 ], [ %563, %562 ], [ 0.000000e+00, %535 ]
  %567 = phi float [ %534, %528 ], [ %564, %562 ], [ 0.000000e+00, %535 ]
  %568 = fcmp fast ogt float %566, 0.000000e+00
  br i1 %568, label %664, label %569, !dx.controlflow.hints !45

; <label>:569                                     ; preds = %565
  %570 = fcmp fast ugt float %567, 0.000000e+00
  br i1 %570, label %571, label %664, !dx.controlflow.hints !46

; <label>:571                                     ; preds = %569
  %572 = icmp sgt i32 %496, 0
  br i1 %572, label %573, label %658

; <label>:573                                     ; preds = %571
  br label %574

; <label>:574                                     ; preds = %654, %573
  %575 = phi i32 [ %655, %654 ], [ %496, %573 ]
  %576 = sitofp i32 %575 to float
  %577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %578 = extractvalue %dx.types.CBufRet.f32 %577, 0
  %579 = extractvalue %dx.types.CBufRet.f32 %577, 1
  %580 = fsub fast float %490, %578
  %581 = fsub fast float %491, %579
  %582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %583 = extractvalue %dx.types.CBufRet.f32 %582, 0
  %584 = extractvalue %dx.types.CBufRet.f32 %582, 1
  %585 = fmul fast float %580, %583
  %586 = fmul fast float %581, %584
  %587 = fsub fast float 1.000000e+00, %586
  %588 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %589 = extractvalue %dx.types.CBufRet.i32 %588, 3
  %590 = icmp eq i32 %589, 0
  br i1 %590, label %597, label %591, !dx.controlflow.hints !47

; <label>:591                                     ; preds = %574
  %592 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %17, float %585, float %587, float undef, float undef, i32 0, i32 0, i32 undef, float %576)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %593 = extractvalue %dx.types.ResRet.f32 %592, 0
  %594 = extractvalue %dx.types.ResRet.f32 %592, 1
  %595 = extractvalue %dx.types.ResRet.f32 %592, 2
  %596 = extractvalue %dx.types.ResRet.f32 %592, 3
  br label %603

; <label>:597                                     ; preds = %574
  %598 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %585, float %587, float undef, float undef, i32 0, i32 0, i32 undef, float %576)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %599 = extractvalue %dx.types.ResRet.f32 %598, 0
  %600 = extractvalue %dx.types.ResRet.f32 %598, 1
  %601 = extractvalue %dx.types.ResRet.f32 %598, 2
  %602 = extractvalue %dx.types.ResRet.f32 %598, 3
  br label %603

; <label>:603                                     ; preds = %597, %591
  %604 = phi float [ %593, %591 ], [ %599, %597 ]
  %605 = phi float [ %594, %591 ], [ %600, %597 ]
  %606 = phi float [ %595, %591 ], [ %601, %597 ]
  %607 = phi float [ %596, %591 ], [ %602, %597 ]
  %608 = extractvalue %dx.types.CBufRet.f32 %582, 3
  %609 = fmul fast float %608, %604
  %610 = extractvalue %dx.types.CBufRet.f32 %577, 2
  %611 = fadd fast float %609, %610
  %612 = fmul fast float %608, %605
  %613 = fadd fast float %612, %610
  %614 = fmul fast float %608, %606
  %615 = fadd fast float %614, %610
  %616 = and i32 %575, 31
  %617 = shl i32 1, %616
  %618 = uitofp i32 %617 to float
  %619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %620 = extractvalue %dx.types.CBufRet.f32 %619, 3
  %621 = fdiv fast float 1.000000e+00, %620
  %622 = fmul fast float %621, %618
  %623 = fmul fast float %622, %282
  %624 = fadd fast float %623, %492
  %625 = fcmp fast oeq float %607, 0.000000e+00
  %626 = fcmp fast ogt float %492, %613
  %627 = fcmp fast ogt float %624, %613
  %628 = and i1 %626, %627
  %629 = or i1 %625, %628
  br i1 %629, label %630, label %634, !dx.controlflow.hints !48

; <label>:630                                     ; preds = %603
  %631 = add nsw i32 %575, 1
  %632 = add nsw i32 %511, -1
  %633 = call i32 @dx.op.binary.i32(i32 38, i32 %631, i32 %632)  ; IMin(a,b)
  br label %664

; <label>:634                                     ; preds = %603
  %635 = fcmp fast olt float %492, %615
  %636 = fcmp fast olt float %624, %615
  %637 = and i1 %635, %636
  br i1 %637, label %638, label %642, !dx.controlflow.hints !49

; <label>:638                                     ; preds = %634
  %639 = add nsw i32 %575, 1
  %640 = add nsw i32 %511, -1
  %641 = call i32 @dx.op.binary.i32(i32 38, i32 %639, i32 %640)  ; IMin(a,b)
  br label %664

; <label>:642                                     ; preds = %634
  %643 = fcmp fast olt float %492, %611
  %644 = fcmp fast olt float %624, %611
  %645 = and i1 %643, %644
  br i1 %645, label %646, label %654, !dx.controlflow.hints !50

; <label>:646                                     ; preds = %642
  %647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %648 = extractvalue %dx.types.CBufRet.f32 %647, 3
  %649 = extractvalue %dx.types.CBufRet.f32 %582, 2
  %650 = fcmp fast une float %648, %649
  br i1 %650, label %651, label %658, !dx.controlflow.hints !51

; <label>:651                                     ; preds = %646
  %652 = fsub fast float %492, %615
  %653 = call float @dx.op.binary.f32(i32 36, float %622, float %652)  ; FMin(a,b)
  br label %658

; <label>:654                                     ; preds = %642
  %655 = add nsw i32 %575, -1
  %656 = icmp sgt i32 %575, 1
  br i1 %656, label %574, label %657

; <label>:657                                     ; preds = %654
  br label %658

; <label>:658                                     ; preds = %657, %651, %646, %571
  %659 = phi float [ %653, %651 ], [ %622, %646 ], [ 0.000000e+00, %571 ], [ 0.000000e+00, %657 ]
  %660 = phi i32 [ %575, %651 ], [ %575, %646 ], [ %496, %571 ], [ %655, %657 ]
  %661 = add nsw i32 %660, 1
  %662 = add nsw i32 %511, -1
  %663 = call i32 @dx.op.binary.i32(i32 38, i32 %661, i32 %662)  ; IMin(a,b)
  br label %664

; <label>:664                                     ; preds = %658, %638, %630, %569, %565, %515
  %665 = phi float [ %516, %515 ], [ %622, %630 ], [ %622, %638 ], [ %659, %658 ], [ 0x47EFFFFFE0000000, %569 ], [ %566, %565 ]
  %666 = phi i32 [ %369, %515 ], [ %369, %630 ], [ %369, %638 ], [ %369, %658 ], [ 0, %569 ], [ %369, %565 ]
  %667 = phi i32 [ %496, %515 ], [ %633, %630 ], [ %641, %638 ], [ %663, %658 ], [ %496, %569 ], [ %496, %565 ]
  %668 = icmp ne i32 %666, 0
  %669 = zext i1 %668 to i32
  %670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %671 = extractvalue %dx.types.CBufRet.f32 %670, 2
  %672 = call float @dx.op.binary.f32(i32 35, float %665, float %671)  ; FMax(a,b)
  %673 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %672)  ; FMin(a,b)
  br label %674

; <label>:674                                     ; preds = %664, %483
  %675 = phi i32 [ %669, %664 ], [ 0, %483 ]
  %676 = phi float [ %673, %664 ], [ 0x47EFFFFFE0000000, %483 ]
  %677 = phi i32 [ %667, %664 ], [ %496, %483 ]
  %678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %679 = extractvalue %dx.types.CBufRet.f32 %678, 0
  %680 = extractvalue %dx.types.CBufRet.f32 %678, 1
  %681 = fsub fast float %490, %679
  %682 = fsub fast float %491, %680
  %683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %684 = extractvalue %dx.types.CBufRet.f32 %683, 2
  %685 = extractvalue %dx.types.CBufRet.f32 %683, 3
  %686 = fmul fast float %681, %684
  %687 = fmul fast float %682, %685
  %688 = call float @dx.op.binary.f32(i32 36, float %686, float %687)  ; FMin(a,b)
  %689 = fcmp fast olt float %688, 0.000000e+00
  %690 = call float @dx.op.binary.f32(i32 35, float %686, float %687)  ; FMax(a,b)
  %691 = fcmp fast ogt float %690, 1.000000e+00
  %692 = or i1 %689, %691
  %693 = extractvalue %dx.types.CBufRet.f32 %678, 2
  %694 = fcmp fast olt float %492, %693
  %695 = or i1 %692, %694
  %696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %697 = extractvalue %dx.types.CBufRet.f32 %696, 3
  %698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %699 = extractvalue %dx.types.CBufRet.f32 %698, 0
  %700 = fadd fast float %699, %697
  %701 = fcmp fast ogt float %492, %700
  %702 = or i1 %695, %701
  br i1 %702, label %703, label %732, !dx.controlflow.hints !52

; <label>:703                                     ; preds = %674
  %704 = extractvalue %dx.types.CBufRet.f32 %683, 0
  %705 = extractvalue %dx.types.CBufRet.f32 %683, 1
  %706 = fsub fast float %679, %490
  %707 = fmul fast float %706, %457
  %708 = fadd fast float %706, %704
  %709 = fmul fast float %708, %457
  %710 = call float @dx.op.binary.f32(i32 36, float %707, float %709)  ; FMin(a,b)
  %711 = call float @dx.op.binary.f32(i32 35, float %707, float %709)  ; FMax(a,b)
  %712 = fsub fast float %680, %491
  %713 = fmul fast float %712, %458
  %714 = fadd fast float %712, %705
  %715 = fmul fast float %714, %458
  %716 = call float @dx.op.binary.f32(i32 36, float %713, float %715)  ; FMin(a,b)
  %717 = call float @dx.op.binary.f32(i32 35, float %710, float %716)  ; FMax(a,b)
  %718 = call float @dx.op.binary.f32(i32 35, float %713, float %715)  ; FMax(a,b)
  %719 = call float @dx.op.binary.f32(i32 36, float %711, float %718)  ; FMin(a,b)
  %720 = fsub fast float %693, %492
  %721 = fmul fast float %720, %459
  %722 = fsub fast float %697, %492
  %723 = fadd fast float %722, %699
  %724 = fmul fast float %723, %459
  %725 = call float @dx.op.binary.f32(i32 36, float %721, float %724)  ; FMin(a,b)
  %726 = call float @dx.op.binary.f32(i32 35, float %717, float %725)  ; FMax(a,b)
  %727 = call float @dx.op.binary.f32(i32 35, float %721, float %724)  ; FMax(a,b)
  %728 = call float @dx.op.binary.f32(i32 36, float %719, float %727)  ; FMin(a,b)
  %729 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %726)  ; FMax(a,b)
  %730 = fcmp fast oge float %728, %729
  %731 = select i1 %730, float %726, float 1.000000e+07
  br label %778

; <label>:732                                     ; preds = %674
  %733 = fsub fast float 1.000000e+00, %687
  %734 = icmp eq i32 %495, 0
  br i1 %734, label %763, label %735

; <label>:735                                     ; preds = %732
  br label %736

; <label>:736                                     ; preds = %759, %735
  %737 = phi i32 [ %760, %759 ], [ %495, %735 ]
  %738 = uitofp i32 %737 to float
  %739 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %19, float %686, float %733, float undef, float undef, i32 0, i32 0, i32 undef, float %738)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %740 = extractvalue %dx.types.ResRet.f32 %739, 0
  %741 = extractvalue %dx.types.ResRet.f32 %739, 1
  %742 = extractvalue %dx.types.ResRet.f32 %739, 2
  %743 = fcmp fast oeq float %740, 0.000000e+00
  %744 = fcmp ule float %492, %742
  %745 = fcmp uge float %492, %741
  %746 = or i1 %745, %744
  %747 = or i1 %743, %746
  br i1 %747, label %748, label %759, !dx.controlflow.hints !53

; <label>:748                                     ; preds = %736
  %749 = extractvalue %dx.types.ResRet.f32 %739, 3
  %750 = extractvalue %dx.types.CBufRet.f32 %683, 0
  %751 = and i32 %737, 31
  %752 = lshr i32 1024, %751
  %753 = uitofp i32 %752 to float
  %754 = fdiv fast float %750, %753
  %755 = add i32 %737, 1
  %756 = uitofp i32 %755 to float
  %757 = call float @dx.op.binary.f32(i32 36, float 1.000000e+01, float %756)  ; FMin(a,b)
  %758 = fptosi float %757 to i32
  br label %778

; <label>:759                                     ; preds = %736
  %760 = add i32 %737, -1
  %761 = icmp eq i32 %760, 0
  br i1 %761, label %762, label %736, !llvm.loop !54

; <label>:762                                     ; preds = %759
  br label %763

; <label>:763                                     ; preds = %762, %732
  %764 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %686, float %733, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %765 = extractvalue %dx.types.ResRet.f32 %764, 0
  %766 = extractvalue %dx.types.ResRet.f32 %764, 1
  %767 = extractvalue %dx.types.ResRet.f32 %764, 2
  %768 = extractvalue %dx.types.ResRet.f32 %764, 3
  %769 = extractvalue %dx.types.CBufRet.f32 %683, 0
  %770 = fmul fast float %769, 9.765625e-04
  %771 = fcmp fast oeq float %765, 0.000000e+00
  %772 = fcmp ule float %492, %767
  %773 = fcmp uge float %492, %766
  %774 = or i1 %773, %772
  %775 = or i1 %771, %774
  %776 = zext i1 %775 to i32
  %777 = xor i32 %776, 1
  br label %778

; <label>:778                                     ; preds = %763, %748, %703
  %779 = phi float [ %731, %703 ], [ %754, %748 ], [ %770, %763 ]
  %780 = phi float [ %484, %703 ], [ %740, %748 ], [ %765, %763 ]
  %781 = phi float [ %485, %703 ], [ %741, %748 ], [ %766, %763 ]
  %782 = phi float [ %486, %703 ], [ %742, %748 ], [ %767, %763 ]
  %783 = phi float [ %487, %703 ], [ %749, %748 ], [ %768, %763 ]
  %784 = phi i32 [ 0, %703 ], [ 0, %748 ], [ %777, %763 ]
  %785 = phi i32 [ 10, %703 ], [ %758, %748 ], [ 1, %763 ]
  %786 = icmp eq i32 %784, 0
  %787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %788 = extractvalue %dx.types.CBufRet.f32 %787, 2
  %789 = call float @dx.op.binary.f32(i32 35, float %779, float %788)  ; FMax(a,b)
  %790 = call float @dx.op.binary.f32(i32 36, float %676, float %789)  ; FMin(a,b)
  %791 = icmp eq i32 %433, 0
  br i1 %791, label %847, label %792, !dx.controlflow.hints !56

; <label>:792                                     ; preds = %778
  %793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %794 = extractvalue %dx.types.CBufRet.f32 %793, 0
  %795 = extractvalue %dx.types.CBufRet.f32 %793, 1
  %796 = extractvalue %dx.types.CBufRet.f32 %793, 2
  %797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %798 = extractvalue %dx.types.CBufRet.f32 %797, 0
  %799 = extractvalue %dx.types.CBufRet.f32 %797, 1
  %800 = extractvalue %dx.types.CBufRet.f32 %797, 2
  %801 = fsub fast float %490, %798
  %802 = fsub fast float %491, %799
  %803 = fsub fast float %492, %800
  %804 = fmul fast float %801, %794
  %805 = fmul fast float %802, %795
  %806 = fmul fast float %803, %796
  %807 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %808 = extractvalue %dx.types.CBufRet.i32 %807, 3
  %809 = icmp eq i32 %808, 0
  br i1 %809, label %813, label %810, !dx.controlflow.hints !57

; <label>:810                                     ; preds = %792
  %811 = call float @dx.op.unary.f32(i32 22, float %804)  ; Frc(value)
  %812 = call float @dx.op.unary.f32(i32 22, float %805)  ; Frc(value)
  br label %813

; <label>:813                                     ; preds = %810, %792
  %814 = phi float [ %811, %810 ], [ %804, %792 ]
  %815 = phi float [ %812, %810 ], [ %805, %792 ]
  %816 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %16, float %814, float %815, float %806, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %817 = extractvalue %dx.types.ResRet.f32 %816, 0
  %818 = fmul fast float %817, 2.000000e+00
  %819 = fadd fast float %818, -1.000000e+00
  %820 = extractvalue %dx.types.CBufRet.f32 %793, 3
  %821 = fmul fast float %819, %820
  %822 = fcmp fast olt float %821, 0.000000e+00
  %823 = fcmp fast oge float %806, 0.000000e+00
  %824 = fcmp fast ole float %806, 1.000000e+00
  br i1 %809, label %827, label %825, !dx.controlflow.hints !58

; <label>:825                                     ; preds = %813
  %826 = and i1 %823, %824
  br label %837

; <label>:827                                     ; preds = %813
  %828 = fcmp fast oge float %804, 0.000000e+00
  %829 = fcmp fast oge float %805, 0.000000e+00
  %830 = and i1 %828, %829
  %831 = and i1 %823, %830
  %832 = fcmp fast ole float %804, 1.000000e+00
  %833 = fcmp fast ole float %805, 1.000000e+00
  %834 = and i1 %832, %833
  %835 = and i1 %824, %834
  %836 = and i1 %831, %835
  br label %837

; <label>:837                                     ; preds = %827, %825
  %838 = phi i1 [ %826, %825 ], [ %836, %827 ]
  %839 = and i1 %822, %838
  %840 = call float @dx.op.unary.f32(i32 6, float %821)  ; FAbs(value)
  %841 = extractvalue %dx.types.CBufRet.f32 %787, 1
  %842 = extractvalue %dx.types.CBufRet.f32 %787, 0
  %843 = call float @dx.op.binary.f32(i32 35, float %840, float %842)  ; FMax(a,b)
  %844 = select i1 %839, float %841, float %843
  %845 = zext i1 %839 to i32
  %846 = call float @dx.op.binary.f32(i32 36, float %790, float %844)  ; FMin(a,b)
  br label %847

; <label>:847                                     ; preds = %837, %778
  %848 = phi i32 [ %845, %837 ], [ 0, %778 ]
  %849 = phi float [ %846, %837 ], [ %790, %778 ]
  %850 = extractvalue %dx.types.CBufRet.f32 %506, 2
  %851 = fmul fast float %850, %493
  %852 = call float @dx.op.unary.f32(i32 23, float %851)  ; Log(value)
  %853 = fmul fast float %852, 0x3FE62E4300000000
  %854 = call float @dx.op.binary.f32(i32 35, float %853, float 1.000000e+00)  ; FMax(a,b)
  %855 = fmul fast float %854, 0x47EFFFFFE0000000
  %856 = call float @dx.op.binary.f32(i32 36, float %855, float %849)  ; FMin(a,b)
  %857 = call float @dx.op.binary.f32(i32 35, float %856, float %507)  ; FMax(a,b)
  %858 = fsub fast float %460, %493
  %859 = fadd fast float %858, 0x3F1A36E2E0000000
  %860 = call float @dx.op.binary.f32(i32 36, float %859, float %857)  ; FMin(a,b)
  %861 = icmp eq i32 %675, 0
  br i1 %861, label %958, label %862, !dx.controlflow.hints !59

; <label>:862                                     ; preds = %847
  %863 = fcmp fast olt float %859, %857
  %864 = fmul fast float %282, %225
  %865 = fmul fast float %864, %860
  %866 = fadd fast float %865, %492
  %867 = fmul fast float %282, %226
  %868 = fmul fast float %867, %860
  %869 = fadd fast float %868, %492
  %870 = fmul fast float %282, %227
  %871 = fmul fast float %870, %860
  %872 = fadd fast float %871, %492
  br i1 %863, label %873, label %878, !dx.controlflow.hints !60

; <label>:873                                     ; preds = %862
  %874 = fmul fast float %860, %280
  %875 = fmul fast float %860, %281
  %876 = fadd fast float %874, %490
  %877 = fadd fast float %875, %491
  br label %878

; <label>:878                                     ; preds = %873, %862
  %879 = phi float [ %876, %873 ], [ %490, %862 ]
  %880 = phi float [ %877, %873 ], [ %491, %862 ]
  %881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %882 = extractvalue %dx.types.CBufRet.f32 %881, 0
  %883 = extractvalue %dx.types.CBufRet.f32 %881, 1
  %884 = fsub fast float %879, %882
  %885 = fsub fast float %880, %883
  %886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %887 = extractvalue %dx.types.CBufRet.f32 %886, 0
  %888 = extractvalue %dx.types.CBufRet.f32 %886, 1
  %889 = fmul fast float %884, %887
  %890 = fmul fast float %885, %888
  %891 = fsub fast float 1.000000e+00, %890
  %892 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %893 = extractvalue %dx.types.CBufRet.i32 %892, 3
  %894 = icmp eq i32 %893, 0
  br i1 %894, label %901, label %895, !dx.controlflow.hints !47

; <label>:895                                     ; preds = %878
  %896 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %17, float %889, float %891, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %897 = extractvalue %dx.types.ResRet.f32 %896, 0
  %898 = extractvalue %dx.types.ResRet.f32 %896, 1
  %899 = extractvalue %dx.types.ResRet.f32 %896, 2
  %900 = extractvalue %dx.types.ResRet.f32 %896, 3
  br label %907

; <label>:901                                     ; preds = %878
  %902 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %889, float %891, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %903 = extractvalue %dx.types.ResRet.f32 %902, 0
  %904 = extractvalue %dx.types.ResRet.f32 %902, 1
  %905 = extractvalue %dx.types.ResRet.f32 %902, 2
  %906 = extractvalue %dx.types.ResRet.f32 %902, 3
  br label %907

; <label>:907                                     ; preds = %901, %895
  %908 = phi float [ %897, %895 ], [ %903, %901 ]
  %909 = phi float [ %898, %895 ], [ %904, %901 ]
  %910 = phi float [ %899, %895 ], [ %905, %901 ]
  %911 = phi float [ %900, %895 ], [ %906, %901 ]
  %912 = extractvalue %dx.types.CBufRet.f32 %886, 3
  %913 = fmul fast float %912, %909
  %914 = fmul fast float %913, %908
  %915 = fsub fast float %913, %914
  %916 = fcmp fast ole float %915, 0.000000e+00
  %917 = extractvalue %dx.types.CBufRet.f32 %881, 2
  %918 = fadd fast float %914, %917
  %919 = fmul fast float %912, %910
  %920 = fadd fast float %919, %917
  %921 = fdiv fast float 1.000000e+00, %915
  %922 = select i1 %916, float 1.000000e+06, float %921
  %923 = fsub fast float %866, %918
  %924 = fmul fast float %922, %923
  %925 = call float @dx.op.unary.f32(i32 7, float %924)  ; Saturate(value)
  %926 = extractvalue %dx.types.CBufRet.f32 %886, 2
  %927 = fmul fast float %926, %925
  %928 = fsub fast float %926, %927
  %929 = fcmp fast olt float %866, %920
  %930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %931 = extractvalue %dx.types.CBufRet.f32 %930, 3
  %932 = select i1 %929, float %931, float 1.000000e+00
  %933 = fmul fast float %928, %932
  %934 = fsub fast float %869, %918
  %935 = fmul fast float %922, %934
  %936 = call float @dx.op.unary.f32(i32 7, float %935)  ; Saturate(value)
  %937 = fmul fast float %926, %936
  %938 = fsub fast float %926, %937
  %939 = fcmp fast olt float %869, %920
  %940 = select i1 %939, float %931, float 1.000000e+00
  %941 = fmul fast float %938, %940
  %942 = fadd fast float %941, %933
  %943 = fsub fast float %872, %918
  %944 = fmul fast float %922, %943
  %945 = call float @dx.op.unary.f32(i32 7, float %944)  ; Saturate(value)
  %946 = fmul fast float %926, %945
  %947 = fsub fast float %926, %946
  %948 = fcmp fast olt float %872, %920
  %949 = select i1 %948, float %931, float 1.000000e+00
  %950 = fmul fast float %947, %949
  %951 = fadd fast float %942, %950
  %952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %953 = extractvalue %dx.types.CBufRet.f32 %952, 2
  %954 = fmul fast float %860, 0x3FD5555560000000
  %955 = fmul fast float %954, %911
  %956 = fmul fast float %955, %953
  %957 = fmul fast float %956, %951
  br label %958

; <label>:958                                     ; preds = %907, %847
  %959 = phi float [ %957, %907 ], [ 0.000000e+00, %847 ]
  %960 = icmp eq i32 %848, 0
  br i1 %960, label %1141, label %961, !dx.controlflow.hints !61

; <label>:961                                     ; preds = %958
  %962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %963 = extractvalue %dx.types.CBufRet.f32 %962, 3
  %964 = fmul fast float %963, %493
  %965 = fcmp fast oeq float %964, 0.000000e+00
  br i1 %965, label %980, label %966, !dx.controlflow.hints !62

; <label>:966                                     ; preds = %961
  %967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %968 = extractvalue %dx.types.CBufRet.f32 %967, 3
  %969 = fmul fast float %968, %964
  %970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %971 = extractvalue %dx.types.CBufRet.f32 %970, 0
  %972 = extractvalue %dx.types.CBufRet.f32 %970, 1
  %973 = extractvalue %dx.types.CBufRet.f32 %970, 2
  %974 = fmul fast float %971, %969
  %975 = fmul fast float %972, %969
  %976 = fmul fast float %973, %969
  %977 = call float @dx.op.unary.f32(i32 23, float %974)  ; Log(value)
  %978 = call float @dx.op.unary.f32(i32 23, float %975)  ; Log(value)
  %979 = call float @dx.op.unary.f32(i32 23, float %976)  ; Log(value)
  br label %980

; <label>:980                                     ; preds = %966, %961
  %981 = phi float [ %977, %966 ], [ 0.000000e+00, %961 ]
  %982 = phi float [ %978, %966 ], [ 0.000000e+00, %961 ]
  %983 = phi float [ %979, %966 ], [ 0.000000e+00, %961 ]
  %984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %985 = extractvalue %dx.types.CBufRet.f32 %984, 0
  %986 = extractvalue %dx.types.CBufRet.f32 %984, 1
  %987 = extractvalue %dx.types.CBufRet.f32 %984, 2
  %988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %989 = extractvalue %dx.types.CBufRet.f32 %988, 0
  %990 = extractvalue %dx.types.CBufRet.f32 %988, 1
  %991 = extractvalue %dx.types.CBufRet.f32 %988, 2
  %992 = fsub fast float %490, %989
  %993 = fsub fast float %491, %990
  %994 = fsub fast float %492, %991
  %995 = fmul fast float %992, %985
  %996 = fmul fast float %993, %986
  %997 = fmul fast float %994, %987
  %998 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %999 = extractvalue %dx.types.CBufRet.i32 %998, 0
  %1000 = extractvalue %dx.types.CBufRet.i32 %998, 1
  %1001 = uitofp i32 %999 to float
  %1002 = uitofp i32 %1000 to float
  %1003 = fmul fast float %995, %1001
  %1004 = fmul fast float %996, %1002
  %1005 = fadd fast float %1003, 5.000000e-01
  %1006 = fadd fast float %1004, 5.000000e-01
  %1007 = call float @dx.op.unary.f32(i32 22, float %1005)  ; Frc(value)
  %1008 = call float @dx.op.unary.f32(i32 22, float %1006)  ; Frc(value)
  %1009 = call float @dx.op.unary.f32(i32 27, float %1005)  ; Round_ni(value)
  %1010 = call float @dx.op.unary.f32(i32 27, float %1006)  ; Round_ni(value)
  %1011 = fadd fast float %1009, 1.000000e+00
  %1012 = fadd fast float %1010, 1.000000e+00
  %1013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %1014 = extractvalue %dx.types.CBufRet.f32 %1013, 0
  %1015 = extractvalue %dx.types.CBufRet.f32 %1013, 1
  %1016 = fmul fast float %1014, %1011
  %1017 = fmul fast float %1015, %1012
  %1018 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %11, %dx.types.Handle %17, float %1016, float %1017, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1019 = extractvalue %dx.types.ResRet.f32 %1018, 0
  %1020 = extractvalue %dx.types.ResRet.f32 %1018, 1
  %1021 = extractvalue %dx.types.ResRet.f32 %1018, 2
  %1022 = extractvalue %dx.types.ResRet.f32 %1018, 3
  %1023 = extractvalue %dx.types.CBufRet.i32 %998, 2
  %1024 = extractvalue %dx.types.CBufRet.f32 %1013, 2
  %1025 = uitofp i32 %1023 to float
  %1026 = fadd fast float %1025, -1.000000e+00
  %1027 = fmul fast float %1026, %1019
  %1028 = fmul fast float %1026, %1020
  %1029 = fmul fast float %1026, %1021
  %1030 = fmul fast float %1026, %1022
  %1031 = fadd fast float %1027, 5.000000e-01
  %1032 = fadd fast float %1028, 5.000000e-01
  %1033 = fadd fast float %1029, 5.000000e-01
  %1034 = fadd fast float %1030, 5.000000e-01
  %1035 = fptoui float %1031 to i32
  %1036 = fptoui float %1032 to i32
  %1037 = fptoui float %1033 to i32
  %1038 = fptoui float %1034 to i32
  %1039 = uitofp i32 %1035 to float
  %1040 = uitofp i32 %1036 to float
  %1041 = uitofp i32 %1037 to float
  %1042 = uitofp i32 %1038 to float
  %1043 = fadd fast float %1039, 5.000000e-01
  %1044 = fadd fast float %1040, 5.000000e-01
  %1045 = fadd fast float %1041, 5.000000e-01
  %1046 = fadd fast float %1042, 5.000000e-01
  %1047 = fmul fast float %1043, %1024
  %1048 = fmul fast float %1044, %1024
  %1049 = fmul fast float %1045, %1024
  %1050 = fmul fast float %1046, %1024
  %1051 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %18, float %1047, float %997, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1052 = extractvalue %dx.types.ResRet.f32 %1051, 0
  %1053 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %18, float %1048, float %997, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1054 = extractvalue %dx.types.ResRet.f32 %1053, 0
  %1055 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %18, float %1049, float %997, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1056 = extractvalue %dx.types.ResRet.f32 %1055, 0
  %1057 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %18, float %1050, float %997, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1058 = extractvalue %dx.types.ResRet.f32 %1057, 0
  %1059 = fsub fast float %1056, %1058
  %1060 = fmul fast float %1059, %1007
  %1061 = fadd fast float %1060, %1058
  %1062 = fsub fast float %1054, %1052
  %1063 = fmul fast float %1062, %1007
  %1064 = fadd fast float %1063, %1052
  %1065 = fsub fast float %1064, %1061
  %1066 = fmul fast float %1065, %1008
  %1067 = fadd fast float %1066, %1061
  %1068 = fcmp fast ogt float %1067, 0.000000e+00
  br i1 %1068, label %1069, label %1137, !dx.controlflow.hints !63

; <label>:1069                                    ; preds = %980
  %1070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %1071 = extractvalue %dx.types.CBufRet.f32 %1070, 0
  %1072 = extractvalue %dx.types.CBufRet.f32 %1070, 1
  %1073 = extractvalue %dx.types.CBufRet.f32 %1070, 2
  %1074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %1075 = extractvalue %dx.types.CBufRet.f32 %1074, 0
  %1076 = extractvalue %dx.types.CBufRet.f32 %1074, 1
  %1077 = extractvalue %dx.types.CBufRet.f32 %1074, 2
  %1078 = fmul fast float %993, %985
  %1079 = fmul fast float %994, %985
  %1080 = fadd fast float %995, %1075
  %1081 = fadd fast float %1078, %1076
  %1082 = fadd fast float %1079, %1077
  %1083 = fmul fast float %1080, %1071
  %1084 = fmul fast float %1081, %1071
  %1085 = fmul fast float %1082, %1071
  %1086 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %15, float %1083, float %1084, float %1085, float undef, i32 0, i32 0, i32 0, float %981)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1087 = extractvalue %dx.types.ResRet.f32 %1086, 0
  %1088 = fmul fast float %1080, %1072
  %1089 = fmul fast float %1081, %1072
  %1090 = fmul fast float %1082, %1072
  %1091 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %15, float %1088, float %1089, float %1090, float undef, i32 0, i32 0, i32 0, float %982)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1092 = extractvalue %dx.types.ResRet.f32 %1091, 1
  %1093 = fmul fast float %1080, %1073
  %1094 = fmul fast float %1081, %1073
  %1095 = fmul fast float %1082, %1073
  %1096 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %15, float %1093, float %1094, float %1095, float undef, i32 0, i32 0, i32 0, float %983)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1097 = extractvalue %dx.types.ResRet.f32 %1096, 2
  %1098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %1099 = extractvalue %dx.types.CBufRet.f32 %1098, 1
  %1100 = fmul fast float %1092, %1087
  %1101 = fmul fast float %1100, %1097
  %1102 = call float @dx.op.unary.f32(i32 23, float %1101)  ; Log(value)
  %1103 = fmul fast float %1102, %1099
  %1104 = call float @dx.op.unary.f32(i32 21, float %1103)  ; Exp(value)
  %1105 = extractvalue %dx.types.CBufRet.f32 %1098, 2
  %1106 = fmul fast float %1067, %1067
  %1107 = fmul fast float %1106, %1104
  %1108 = fmul fast float %1107, %1105
  %1109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %1110 = extractvalue %dx.types.CBufRet.f32 %1109, 3
  %1111 = fmul fast float %1110, %1108
  %1112 = bitcast float %1111 to i32
  %1113 = sitofp i32 %1112 to float
  %1114 = fptosi float %1113 to i32
  %1115 = bitcast i32 %1114 to float
  %1116 = fsub fast float 1.000000e+00, %1108
  %1117 = bitcast float %1116 to i32
  %1118 = sitofp i32 %1117 to float
  %1119 = fptosi float %1118 to i32
  %1120 = bitcast i32 %1119 to float
  %1121 = fadd fast float %1115, %1120
  %1122 = bitcast float %1121 to i32
  %1123 = sub nsw i32 2129859010, %1122
  %1124 = bitcast i32 %1123 to float
  %1125 = fmul fast float %1124, %1115
  %1126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1127 = extractvalue %dx.types.CBufRet.f32 %1126, 2
  %1128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %1129 = extractvalue %dx.types.CBufRet.f32 %1128, 0
  %1130 = fmul fast float %1125, %1129
  %1131 = fadd fast float %1130, 1.000000e+00
  %1132 = bitcast float %1131 to i32
  %1133 = sub nsw i32 2129859010, %1132
  %1134 = bitcast i32 %1133 to float
  %1135 = fmul fast float %1125, %1127
  %1136 = fmul fast float %1135, %1134
  br label %1137

; <label>:1137                                    ; preds = %1069, %980
  %1138 = phi float [ %1136, %1069 ], [ %1067, %980 ]
  %1139 = fmul fast float %1138, %860
  %1140 = fadd fast float %1139, %959
  br label %1141

; <label>:1141                                    ; preds = %1137, %958
  %1142 = phi float [ %1140, %1137 ], [ %959, %958 ]
  br i1 %786, label %1268, label %1143, !dx.controlflow.hints !64

; <label>:1143                                    ; preds = %1141
  %1144 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1145 = extractvalue %dx.types.CBufRet.i32 %1144, 0
  %1146 = icmp ne i32 %1145, 0
  %1147 = zext i1 %1146 to i32
  %1148 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1149 = extractvalue %dx.types.CBufRet.i32 %1148, 0
  %1150 = icmp eq i32 %1149, 0
  br i1 %1150, label %1184, label %1151

; <label>:1151                                    ; preds = %1143
  br label %1152

; <label>:1152                                    ; preds = %1179, %1151
  %1153 = phi i32 [ %1180, %1179 ], [ 0, %1151 ]
  %1154 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1153, i32 0)  ; BufferLoad(srv,index,wot)
  %1155 = extractvalue %dx.types.ResRet.f32 %1154, 0
  %1156 = extractvalue %dx.types.ResRet.f32 %1154, 1
  %1157 = extractvalue %dx.types.ResRet.f32 %1154, 2
  %1158 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1153, i32 16)  ; BufferLoad(srv,index,wot)
  %1159 = extractvalue %dx.types.ResRet.f32 %1158, 0
  %1160 = extractvalue %dx.types.ResRet.f32 %1158, 1
  %1161 = extractvalue %dx.types.ResRet.f32 %1158, 2
  %1162 = fsub fast float %1155, %1159
  %1163 = fsub fast float %1156, %1160
  %1164 = fsub fast float %1157, %1161
  %1165 = fadd fast float %1159, %1155
  %1166 = fadd fast float %1160, %1156
  %1167 = fadd fast float %1161, %1157
  %1168 = fcmp fast olt float %490, %1162
  %1169 = fcmp fast olt float %491, %1163
  %1170 = fcmp fast olt float %492, %1164
  %1171 = or i1 %1168, %1169
  %1172 = or i1 %1170, %1171
  %1173 = fcmp fast ogt float %490, %1165
  %1174 = fcmp fast ogt float %491, %1166
  %1175 = fcmp fast ogt float %492, %1167
  %1176 = or i1 %1173, %1174
  %1177 = or i1 %1175, %1176
  %1178 = or i1 %1172, %1177
  br i1 %1178, label %1179, label %1182, !dx.controlflow.hints !65

; <label>:1179                                    ; preds = %1152
  %1180 = add nuw i32 %1153, 1
  %1181 = icmp ult i32 %1180, %1149
  br i1 %1181, label %1152, label %1182

; <label>:1182                                    ; preds = %1179, %1152
  %1183 = phi i32 [ 255, %1179 ], [ %1153, %1152 ]
  br label %1184

; <label>:1184                                    ; preds = %1182, %1143
  %1185 = phi i32 [ 255, %1143 ], [ %1183, %1182 ]
  %1186 = icmp eq i32 %1185, 255
  br i1 %1186, label %1192, label %1187, !dx.controlflow.hints !66

; <label>:1187                                    ; preds = %1184
  %1188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %1185, i32 156)  ; BufferLoad(srv,index,wot)
  %1189 = extractvalue %dx.types.ResRet.i32 %1188, 0
  %1190 = icmp ne i32 %1189, 0
  %1191 = zext i1 %1190 to i32
  br label %1192

; <label>:1192                                    ; preds = %1187, %1184
  %1193 = phi i32 [ %1191, %1187 ], [ %1147, %1184 ]
  %1194 = icmp eq i32 %1193, 0
  br i1 %1194, label %1195, label %1264, !dx.controlflow.hints !67

; <label>:1195                                    ; preds = %1192
  %1196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1197 = extractvalue %dx.types.CBufRet.f32 %1196, 3
  %1198 = extractvalue %dx.types.CBufRet.f32 %696, 0
  %1199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1200 = extractvalue %dx.types.CBufRet.f32 %1199, 2
  %1201 = extractvalue %dx.types.CBufRet.f32 %1199, 3
  br i1 %1186, label %1212, label %1202, !dx.controlflow.hints !68

; <label>:1202                                    ; preds = %1195
  %1203 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1185, i32 60)  ; BufferLoad(srv,index,wot)
  %1204 = extractvalue %dx.types.ResRet.f32 %1203, 0
  %1205 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1185, i32 64)  ; BufferLoad(srv,index,wot)
  %1206 = extractvalue %dx.types.ResRet.f32 %1205, 0
  %1207 = extractvalue %dx.types.ResRet.f32 %1205, 1
  %1208 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1185, i32 72)  ; BufferLoad(srv,index,wot)
  %1209 = extractvalue %dx.types.ResRet.f32 %1208, 0
  %1210 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1185, i32 96)  ; BufferLoad(srv,index,wot)
  %1211 = extractvalue %dx.types.ResRet.f32 %1210, 0
  br label %1212

; <label>:1212                                    ; preds = %1202, %1195
  %1213 = phi float [ %1204, %1202 ], [ %699, %1195 ]
  %1214 = phi float [ %1209, %1202 ], [ %697, %1195 ]
  %1215 = phi float [ %1211, %1202 ], [ %1198, %1195 ]
  %1216 = phi float [ %1206, %1202 ], [ %1200, %1195 ]
  %1217 = phi float [ %1207, %1202 ], [ %1201, %1195 ]
  %1218 = call float @dx.op.binary.f32(i32 35, float %780, float 0.000000e+00)  ; FMax(a,b)
  %1219 = call float @dx.op.binary.f32(i32 36, float %1218, float 1.000000e+00)  ; FMin(a,b)
  %1220 = call float @dx.op.unary.f32(i32 24, float %1219)  ; Sqrt(value)
  %1221 = call float @dx.op.binary.f32(i32 35, float %783, float 0x3F847AE140000000)  ; FMax(a,b)
  %1222 = fsub fast float %781, %492
  %1223 = fsub fast float %492, %782
  %1224 = call float @dx.op.binary.f32(i32 36, float %1223, float %1222)  ; FMin(a,b)
  %1225 = fdiv fast float %1224, %1221
  %1226 = call float @dx.op.unary.f32(i32 7, float %1225)  ; Saturate(value)
  %1227 = fsub fast float %492, %1214
  %1228 = fdiv fast float %1227, %1213
  %1229 = call float @dx.op.unary.f32(i32 7, float %1228)  ; Saturate(value)
  %1230 = fsub fast float 1.000000e+00, %1229
  %1231 = fmul float %1226, %1230
  %1232 = fmul float %1231, %1231
  %1233 = fmul fast float %1220, %1197
  %1234 = fmul fast float %1233, %1232
  %1235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1236 = extractvalue %dx.types.CBufRet.f32 %1235, 2
  %1237 = extractvalue %dx.types.CBufRet.f32 %1235, 1
  %1238 = fsub fast float %1234, %1237
  %1239 = fsub fast float %1236, %1237
  %1240 = fdiv fast float %1238, %1239
  %1241 = call float @dx.op.unary.f32(i32 7, float %1240)  ; Saturate(value)
  %1242 = fmul fast float %1241, %1215
  %1243 = fcmp fast ogt float %1217, 0.000000e+00
  br i1 %1243, label %1244, label %1264, !dx.controlflow.hints !69

; <label>:1244                                    ; preds = %1212
  %1245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1246 = extractvalue %dx.types.CBufRet.f32 %1245, 0
  %1247 = extractvalue %dx.types.CBufRet.f32 %1245, 1
  %1248 = extractvalue %dx.types.CBufRet.f32 %1245, 2
  %1249 = fsub fast float %490, %1246
  %1250 = fsub fast float %491, %1247
  %1251 = fsub fast float %492, %1248
  %1252 = fmul fast float %1249, %1249
  %1253 = fmul fast float %1250, %1250
  %1254 = fadd fast float %1252, %1253
  %1255 = fmul fast float %1251, %1251
  %1256 = fadd fast float %1254, %1255
  %1257 = call float @dx.op.unary.f32(i32 24, float %1256)  ; Sqrt(value)
  %1258 = fsub fast float %1257, %1216
  %1259 = fsub fast float %1217, %1216
  %1260 = fdiv fast float %1258, %1259
  %1261 = call float @dx.op.unary.f32(i32 7, float %1260)  ; Saturate(value)
  %1262 = fmul fast float %1261, %1261
  %1263 = fmul fast float %1262, %1242
  br label %1264

; <label>:1264                                    ; preds = %1244, %1212, %1192
  %1265 = phi float [ 0.000000e+00, %1192 ], [ %1263, %1244 ], [ %1242, %1212 ]
  %1266 = fmul fast float %1265, %860
  %1267 = fadd fast float %1266, %1142
  br label %1268

; <label>:1268                                    ; preds = %1264, %1141
  %1269 = phi float [ %1267, %1264 ], [ %1142, %1141 ]
  %1270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1271 = extractvalue %dx.types.CBufRet.f32 %1270, 1
  %1272 = fcmp fast ogt float %1269, %1271
  br i1 %1272, label %1275, label %1273, !dx.controlflow.hints !70

; <label>:1273                                    ; preds = %1268
  %1274 = fadd fast float %860, %493
  br label %1325

; <label>:1275                                    ; preds = %1268
  %1276 = fmul fast float %1269, 0xBFF7154760000000
  %1277 = call float @dx.op.unary.f32(i32 21, float %1276)  ; Exp(value)
  %1278 = call float @dx.op.unary.f32(i32 7, float %1277)  ; Saturate(value)
  %1279 = fsub fast float 1.000000e+00, %1278
  %1280 = fdiv fast float %1269, %860
  %1281 = fadd fast float %860, %493
  %1282 = fmul fast float %493, %493
  %1283 = fmul fast float %1281, %1281
  %1284 = fsub fast float %1282, %1283
  %1285 = fmul fast float %1284, -5.000000e-01
  %1286 = fmul fast float %1285, %1280
  %1287 = fadd fast float %1286, %488
  %1288 = fadd fast float %1269, %497
  %1289 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1290 = extractvalue %dx.types.CBufRet.i32 %1289, 0
  %1291 = icmp eq i32 %1290, 0
  br i1 %1291, label %1318, label %1292, !dx.controlflow.hints !71

; <label>:1292                                    ; preds = %1275
  %1293 = icmp ne i32 %502, 0
  %1294 = zext i1 %1293 to i32
  %1295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1296 = extractvalue %dx.types.CBufRet.f32 %1295, 2
  %1297 = extractvalue %dx.types.CBufRet.f32 %1295, 0
  %1298 = fsub fast float %1281, %1297
  %1299 = fmul fast float %1298, %1296
  %1300 = call float @dx.op.unary.f32(i32 7, float %1299)  ; Saturate(value)
  %1301 = fadd fast float %1300, -5.000000e-01
  %1302 = fmul fast float %1301, 2.000000e+00
  %1303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1304 = extractvalue %dx.types.CBufRet.f32 %1303, 2
  %1305 = fcmp fast olt float %1302, %1304
  br i1 %1305, label %1306, label %1318, !dx.controlflow.hints !72

; <label>:1306                                    ; preds = %1292
  %1307 = fmul fast float %1302, %1302
  %1308 = fmul fast float %1279, %489
  %1309 = fmul fast float %1302, %1308
  %1310 = fmul fast float %1307, %1308
  %1311 = fmul fast float %1309, %1307
  %1312 = fmul fast float %1307, %1307
  %1313 = fmul fast float %1312, %1308
  %1314 = fadd fast float %1309, %498
  %1315 = fadd fast float %1310, %499
  %1316 = fadd fast float %1311, %500
  %1317 = fadd fast float %1313, %501
  br label %1318

; <label>:1318                                    ; preds = %1306, %1292, %1275
  %1319 = phi float [ %498, %1275 ], [ %1314, %1306 ], [ %498, %1292 ]
  %1320 = phi float [ %499, %1275 ], [ %1315, %1306 ], [ %499, %1292 ]
  %1321 = phi float [ %500, %1275 ], [ %1316, %1306 ], [ %500, %1292 ]
  %1322 = phi float [ %501, %1275 ], [ %1317, %1306 ], [ %501, %1292 ]
  %1323 = phi i32 [ %502, %1275 ], [ 1, %1306 ], [ %1294, %1292 ]
  %1324 = fmul fast float %1278, %489
  br label %1325

; <label>:1325                                    ; preds = %1318, %1273
  %1326 = phi float [ %1274, %1273 ], [ %1281, %1318 ]
  %1327 = phi float [ %488, %1273 ], [ %1287, %1318 ]
  %1328 = phi float [ %489, %1273 ], [ %1324, %1318 ]
  %1329 = phi float [ %497, %1273 ], [ %1288, %1318 ]
  %1330 = phi float [ %498, %1273 ], [ %1319, %1318 ]
  %1331 = phi float [ %499, %1273 ], [ %1320, %1318 ]
  %1332 = phi float [ %500, %1273 ], [ %1321, %1318 ]
  %1333 = phi float [ %501, %1273 ], [ %1322, %1318 ]
  %1334 = phi i32 [ %502, %1273 ], [ %1323, %1318 ]
  %1335 = fmul fast float %860, %280
  %1336 = fmul fast float %860, %281
  %1337 = fmul fast float %860, %282
  %1338 = fadd fast float %1335, %490
  %1339 = fadd fast float %1336, %491
  %1340 = fadd fast float %1337, %492
  %1341 = fcmp fast olt float %1326, %460
  %1342 = extractvalue %dx.types.CBufRet.f32 %1270, 2
  %1343 = fcmp fast olt float %1342, %1328
  %1344 = and i1 %1341, %1343
  br i1 %1344, label %483, label %1345

; <label>:1345                                    ; preds = %1325
  %1346 = uitofp i32 %505 to float
  br label %1347

; <label>:1347                                    ; preds = %1345, %432
  %1348 = phi float [ 0.000000e+00, %432 ], [ %1327, %1345 ]
  %1349 = phi float [ 1.000000e+00, %432 ], [ %1328, %1345 ]
  %1350 = phi float [ 0.000000e+00, %432 ], [ %1346, %1345 ]
  %1351 = phi float [ 0.000000e+00, %432 ], [ %1329, %1345 ]
  %1352 = phi float [ 0.000000e+00, %432 ], [ %1330, %1345 ]
  %1353 = phi float [ 0.000000e+00, %432 ], [ %1331, %1345 ]
  %1354 = phi float [ 0.000000e+00, %432 ], [ %1332, %1345 ]
  %1355 = phi float [ 0.000000e+00, %432 ], [ %1333, %1345 ]
  %1356 = phi i32 [ 0, %432 ], [ %1334, %1345 ]
  %1357 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1358 = extractvalue %dx.types.CBufRet.i32 %1357, 0
  %1359 = icmp eq i32 %1358, 0
  br i1 %1359, label %1401, label %1360, !dx.controlflow.hints !73

; <label>:1360                                    ; preds = %1347
  %1361 = icmp eq i32 %1356, 0
  br i1 %1361, label %1400, label %1362, !dx.controlflow.hints !74

; <label>:1362                                    ; preds = %1360
  %1363 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1364 = extractvalue %dx.types.CBufRet.i32 %1363, 2
  %1365 = icmp eq i32 %1364, 0
  br i1 %1365, label %1372, label %1366, !dx.controlflow.hints !75

; <label>:1366                                    ; preds = %1362
  %1367 = fsub fast float 1.000000e+00, %1349
  %1368 = fdiv fast float %1352, %1367
  %1369 = fdiv fast float %1353, %1367
  %1370 = fdiv fast float %1354, %1367
  %1371 = fdiv fast float %1355, %1367
  br label %1377

; <label>:1372                                    ; preds = %1362
  %1373 = fadd fast float %1352, %1349
  %1374 = fadd fast float %1353, %1349
  %1375 = fadd fast float %1354, %1349
  %1376 = fadd fast float %1355, %1349
  br label %1377

; <label>:1377                                    ; preds = %1372, %1366
  %1378 = phi float [ %1368, %1366 ], [ %1373, %1372 ]
  %1379 = phi float [ %1369, %1366 ], [ %1374, %1372 ]
  %1380 = phi float [ %1370, %1366 ], [ %1375, %1372 ]
  %1381 = phi float [ %1371, %1366 ], [ %1376, %1372 ]
  %1382 = call float @dx.op.binary.f32(i32 35, float %1378, float -1.000000e+00)  ; FMax(a,b)
  %1383 = call float @dx.op.binary.f32(i32 35, float %1379, float -1.000000e+00)  ; FMax(a,b)
  %1384 = call float @dx.op.binary.f32(i32 35, float %1380, float -1.000000e+00)  ; FMax(a,b)
  %1385 = call float @dx.op.binary.f32(i32 35, float %1381, float -1.000000e+00)  ; FMax(a,b)
  %1386 = call float @dx.op.binary.f32(i32 36, float %1382, float 1.000000e+00)  ; FMin(a,b)
  %1387 = call float @dx.op.binary.f32(i32 36, float %1383, float 1.000000e+00)  ; FMin(a,b)
  %1388 = call float @dx.op.binary.f32(i32 36, float %1384, float 1.000000e+00)  ; FMin(a,b)
  %1389 = call float @dx.op.binary.f32(i32 36, float %1385, float 1.000000e+00)  ; FMin(a,b)
  %1390 = fmul fast float %1386, 1.500000e+00
  %1391 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %1388, float %1390)  ; FMad(a,b,c)
  %1392 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %1387, float 0.000000e+00)  ; FMad(a,b,c)
  %1393 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %1389, float %1392)  ; FMad(a,b,c)
  %1394 = fmul fast float %1386, 0x3FEBB67AE0000000
  %1395 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %1388, float %1394)  ; FMad(a,b,c)
  %1396 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1387, float 0.000000e+00)  ; FMad(a,b,c)
  %1397 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1389, float %1396)  ; FMad(a,b,c)
  %1398 = fadd fast float %1391, 5.000000e-01
  %1399 = fadd fast float %1395, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %22, i32 %23, i32 0, float %1398, float %1393, float %1399, float %1397, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1401

; <label>:1400                                    ; preds = %1360
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %22, i32 %23, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1401

; <label>:1401                                    ; preds = %1400, %1377, %1347
  %1402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %1403 = extractvalue %dx.types.CBufRet.f32 %1402, 0
  %1404 = extractvalue %dx.types.CBufRet.f32 %1402, 1
  %1405 = extractvalue %dx.types.CBufRet.f32 %1402, 2
  %1406 = call float @dx.op.dot3.f32(i32 55, float %280, float %281, float %282, float %1403, float %1404, float %1405)  ; Dot3(ax,ay,az,bx,by,bz)
  %1407 = fmul fast float %1406, %1348
  %1408 = fcmp fast ogt float %1351, 0.000000e+00
  %1409 = fdiv fast float 1.000000e+00, %1351
  %1410 = fmul fast float %1407, %1409
  %1411 = select i1 %1408, float %1410, float %291
  %1412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1413 = extractvalue %dx.types.CBufRet.f32 %1412, 0
  %1414 = extractvalue %dx.types.CBufRet.f32 %1412, 1
  %1415 = extractvalue %dx.types.CBufRet.f32 %1412, 2
  %1416 = fmul fast float %1413, %244
  %1417 = fmul fast float %1414, %244
  %1418 = fmul fast float %1415, %244
  %1419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1420 = extractvalue %dx.types.CBufRet.f32 %1419, 0
  %1421 = extractvalue %dx.types.CBufRet.f32 %1419, 1
  %1422 = extractvalue %dx.types.CBufRet.f32 %1419, 2
  %1423 = fmul fast float %1420, %245
  %1424 = fmul fast float %1421, %245
  %1425 = fmul fast float %1422, %245
  %1426 = fadd fast float %1423, %1416
  %1427 = fadd fast float %1424, %1417
  %1428 = fadd fast float %1425, %1418
  %1429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1430 = extractvalue %dx.types.CBufRet.f32 %1429, 0
  %1431 = extractvalue %dx.types.CBufRet.f32 %1429, 1
  %1432 = extractvalue %dx.types.CBufRet.f32 %1429, 2
  %1433 = fadd fast float %1426, %1430
  %1434 = fadd fast float %1427, %1431
  %1435 = fadd fast float %1428, %1432
  %1436 = fmul fast float %1433, %1411
  %1437 = fmul fast float %1434, %1411
  %1438 = fmul fast float %1435, %1411
  %1439 = call float @dx.op.dot3.f32(i32 55, float %1436, float %1437, float %1438, float %1436, float %1437, float %1438)  ; Dot3(ax,ay,az,bx,by,bz)
  %1440 = call float @dx.op.unary.f32(i32 25, float %1439)  ; Rsqrt(value)
  %1441 = fmul fast float %1440, %1439
  %1442 = fmul fast float %1440, %1436
  %1443 = fmul fast float %1440, %1437
  %1444 = fmul fast float %1440, %1438
  %1445 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1446 = extractvalue %dx.types.CBufRet.i32 %1445, 1
  %1447 = and i32 %1446, 1
  %1448 = icmp ne i32 %1447, 0
  %1449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1450 = extractvalue %dx.types.CBufRet.f32 %1449, 2
  %1451 = fcmp fast ogt float %1450, 0.000000e+00
  %1452 = and i1 %1448, %1451
  br i1 %1452, label %1453, label %1611, !dx.controlflow.hints !76

; <label>:1453                                    ; preds = %1401
  %1454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1455 = extractvalue %dx.types.CBufRet.f32 %1454, 2
  %1456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1457 = extractvalue %dx.types.CBufRet.f32 %1456, 2
  %1458 = fsub fast float %1455, %1457
  %1459 = extractvalue %dx.types.CBufRet.i32 %1445, 0
  %1460 = call i32 @dx.op.binary.i32(i32 40, i32 %1459, i32 3)  ; UMin(a,b)
  %1461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1462 = extractvalue %dx.types.CBufRet.f32 %1461, 0
  %1463 = extractvalue %dx.types.CBufRet.f32 %1461, 1
  %1464 = extractvalue %dx.types.CBufRet.f32 %1456, 0
  %1465 = extractvalue %dx.types.CBufRet.f32 %1456, 1
  %1466 = fsub fast float %1462, %1464
  %1467 = fsub fast float %1463, %1465
  %1468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1469 = extractvalue %dx.types.CBufRet.f32 %1468, 0
  %1470 = fcmp fast ogt float %1469, 0.000000e+00
  %1471 = fsub fast float -0.000000e+00, %1466
  %1472 = fsub fast float -0.000000e+00, %1467
  %1473 = call float @dx.op.dot2.f32(i32 54, float %1442, float %1443, float %1442, float %1443)  ; Dot2(ax,ay,bx,by)
  %1474 = call float @dx.op.dot2.f32(i32 54, float %1442, float %1443, float %1471, float %1472)  ; Dot2(ax,ay,bx,by)
  %1475 = fmul fast float %1474, 2.000000e+00
  %1476 = call float @dx.op.dot2.f32(i32 54, float %1471, float %1472, float %1471, float %1472)  ; Dot2(ax,ay,bx,by)
  %1477 = fmul fast float %1469, %1469
  %1478 = fsub fast float %1476, %1477
  %1479 = fmul fast float %1475, %1475
  %1480 = fmul fast float %1473, 4.000000e+00
  %1481 = fmul fast float %1480, %1478
  %1482 = fsub fast float %1479, %1481
  %1483 = fcmp fast ogt float %1482, 0.000000e+00
  br i1 %1483, label %1484, label %1499, !dx.controlflow.hints !77

; <label>:1484                                    ; preds = %1453
  %1485 = fcmp fast ogt float %1475, 0.000000e+00
  %1486 = call float @dx.op.unary.f32(i32 24, float %1482)  ; Sqrt(value)
  %1487 = fsub fast float -0.000000e+00, %1486
  %1488 = select i1 %1485, float %1486, float %1487
  %1489 = fadd fast float %1488, %1475
  %1490 = fmul float %1489, -5.000000e-01
  %1491 = fdiv fast float %1490, %1473
  %1492 = call float @dx.op.binary.f32(i32 35, float %1491, float 0.000000e+00)  ; FMax(a,b)
  %1493 = call float @dx.op.binary.f32(i32 36, float %1441, float %1492)  ; FMin(a,b)
  %1494 = fdiv fast float %1478, %1490
  %1495 = call float @dx.op.binary.f32(i32 35, float %1494, float 0.000000e+00)  ; FMax(a,b)
  %1496 = call float @dx.op.binary.f32(i32 36, float %1441, float %1495)  ; FMin(a,b)
  %1497 = call float @dx.op.binary.f32(i32 36, float %1493, float %1496)  ; FMin(a,b)
  %1498 = call float @dx.op.binary.f32(i32 35, float %1493, float %1496)  ; FMax(a,b)
  br label %1499

; <label>:1499                                    ; preds = %1484, %1453
  %1500 = phi float [ %1498, %1484 ], [ -1.000000e+00, %1453 ]
  %1501 = phi float [ %1497, %1484 ], [ -1.000000e+00, %1453 ]
  %1502 = phi i1 [ true, %1484 ], [ false, %1453 ]
  %1503 = and i1 %1470, %1502
  br i1 %1503, label %1504, label %1506, !dx.controlflow.hints !78

; <label>:1504                                    ; preds = %1499
  %1505 = fcmp fast oeq float %1501, %1500
  br i1 %1505, label %1611, label %1507, !dx.controlflow.hints !79

; <label>:1506                                    ; preds = %1499
  br i1 %1470, label %1611, label %1507, !dx.controlflow.hints !80

; <label>:1507                                    ; preds = %1506, %1504
  %1508 = phi float [ %1441, %1506 ], [ %1500, %1504 ]
  %1509 = phi float [ 0.000000e+00, %1506 ], [ %1501, %1504 ]
  %1510 = fcmp fast oeq float %1444, 0.000000e+00
  %1511 = fdiv fast float %1458, %1444
  %1512 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1511)  ; FMax(a,b)
  %1513 = select i1 %1510, float %1508, float %1512
  %1514 = call float @dx.op.binary.f32(i32 36, float %1508, float %1513)  ; FMin(a,b)
  %1515 = fcmp fast ogt float %1444, 0.000000e+00
  %1516 = fcmp fast olt float %1458, 0.000000e+00
  br i1 %1515, label %1517, label %1518, !dx.controlflow.hints !81

; <label>:1517                                    ; preds = %1507
  br i1 %1516, label %1611, label %1521, !dx.controlflow.hints !82

; <label>:1518                                    ; preds = %1507
  br i1 %1516, label %1519, label %1521, !dx.controlflow.hints !83

; <label>:1519                                    ; preds = %1518
  %1520 = call float @dx.op.binary.f32(i32 35, float %1509, float %1514)  ; FMax(a,b)
  br label %1521

; <label>:1521                                    ; preds = %1519, %1518, %1517
  %1522 = phi float [ %1520, %1519 ], [ %1509, %1518 ], [ %1509, %1517 ]
  %1523 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 0
  store float -1.000000e+00, float* %1523, align 4, !tbaa !84, !noalias !88
  %1524 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 1
  store float -1.000000e+00, float* %1524, align 4, !tbaa !84, !noalias !88
  %1525 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 2
  store float -1.000000e+00, float* %1525, align 4, !tbaa !84, !noalias !88
  %1526 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 0
  store float -1.000000e+00, float* %1526, align 4, !tbaa !84, !noalias !88
  %1527 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 1
  store float -1.000000e+00, float* %1527, align 4, !tbaa !84, !noalias !88
  %1528 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 2
  store float -1.000000e+00, float* %1528, align 4, !tbaa !84, !noalias !88
  %1529 = icmp sgt i32 %1460, 0
  br i1 %1529, label %1530, label %1588

; <label>:1530                                    ; preds = %1521
  br label %1531

; <label>:1531                                    ; preds = %1578, %1530
  %1532 = phi i32 [ %1579, %1578 ], [ 0, %1530 ]
  %1533 = add nuw i32 %1532, 171
  %1534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 %1533)  ; CBufferLoadLegacy(handle,regIndex)
  %1535 = extractvalue %dx.types.CBufRet.f32 %1534, 0
  %1536 = extractvalue %dx.types.CBufRet.f32 %1534, 1
  %1537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1538 = extractvalue %dx.types.CBufRet.f32 %1537, 0
  %1539 = extractvalue %dx.types.CBufRet.f32 %1537, 1
  %1540 = fsub fast float %1535, %1538
  %1541 = fsub fast float %1536, %1539
  %1542 = extractvalue %dx.types.CBufRet.f32 %1534, 2
  %1543 = fsub fast float -0.000000e+00, %1540
  %1544 = fsub fast float -0.000000e+00, %1541
  %1545 = call float @dx.op.dot2.f32(i32 54, float %1442, float %1443, float %1543, float %1544)  ; Dot2(ax,ay,bx,by)
  %1546 = fmul fast float %1545, 2.000000e+00
  %1547 = call float @dx.op.dot2.f32(i32 54, float %1543, float %1544, float %1543, float %1544)  ; Dot2(ax,ay,bx,by)
  %1548 = fmul fast float %1542, %1542
  %1549 = fsub fast float %1547, %1548
  %1550 = fmul fast float %1546, %1546
  %1551 = fmul fast float %1480, %1549
  %1552 = fsub fast float %1550, %1551
  %1553 = fcmp fast ogt float %1552, 0.000000e+00
  br i1 %1553, label %1554, label %1569, !dx.controlflow.hints !77

; <label>:1554                                    ; preds = %1531
  %1555 = fcmp fast ogt float %1546, 0.000000e+00
  %1556 = call float @dx.op.unary.f32(i32 24, float %1552)  ; Sqrt(value)
  %1557 = fsub fast float -0.000000e+00, %1556
  %1558 = select i1 %1555, float %1556, float %1557
  %1559 = fadd fast float %1558, %1546
  %1560 = fmul float %1559, -5.000000e-01
  %1561 = fdiv fast float %1560, %1473
  %1562 = call float @dx.op.binary.f32(i32 35, float %1561, float 0.000000e+00)  ; FMax(a,b)
  %1563 = call float @dx.op.binary.f32(i32 36, float %1508, float %1562)  ; FMin(a,b)
  %1564 = fdiv fast float %1549, %1560
  %1565 = call float @dx.op.binary.f32(i32 35, float %1564, float 0.000000e+00)  ; FMax(a,b)
  %1566 = call float @dx.op.binary.f32(i32 36, float %1508, float %1565)  ; FMin(a,b)
  %1567 = call float @dx.op.binary.f32(i32 36, float %1563, float %1566)  ; FMin(a,b)
  %1568 = call float @dx.op.binary.f32(i32 35, float %1563, float %1566)  ; FMax(a,b)
  br label %1569

; <label>:1569                                    ; preds = %1554, %1531
  %1570 = phi float [ %1568, %1554 ], [ -1.000000e+00, %1531 ]
  %1571 = phi float [ %1567, %1554 ], [ -1.000000e+00, %1531 ]
  %1572 = phi i1 [ true, %1554 ], [ false, %1531 ]
  br i1 %1572, label %1573, label %1578, !dx.controlflow.hints !99

; <label>:1573                                    ; preds = %1569
  %1574 = call float @dx.op.binary.f32(i32 35, float %1522, float %1571)  ; FMax(a,b)
  %1575 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 %1532
  store float %1574, float* %1575, align 4, !tbaa !84, !noalias !88
  %1576 = call float @dx.op.binary.f32(i32 35, float %1522, float %1570)  ; FMax(a,b)
  %1577 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 %1532
  store float %1576, float* %1577, align 4, !tbaa !84, !noalias !88
  br label %1578

; <label>:1578                                    ; preds = %1573, %1569
  %1579 = add nuw nsw i32 %1532, 1
  %1580 = icmp eq i32 %1579, %1460
  br i1 %1580, label %1581, label %1531

; <label>:1581                                    ; preds = %1578
  %1582 = load float, float* %1525, align 4, !tbaa !84, !alias.scope !100, !noalias !103
  %1583 = load float, float* %1524, align 4, !tbaa !84, !alias.scope !106, !noalias !107
  %1584 = load float, float* %1523, align 4, !tbaa !84, !alias.scope !108, !noalias !109
  %1585 = load float, float* %1528, align 4, !tbaa !84, !alias.scope !110, !noalias !113
  %1586 = load float, float* %1527, align 4, !tbaa !84, !alias.scope !116, !noalias !117
  %1587 = load float, float* %1526, align 4, !tbaa !84, !alias.scope !118, !noalias !119
  br label %1588

; <label>:1588                                    ; preds = %1581, %1521
  %1589 = phi float [ -1.000000e+00, %1521 ], [ %1587, %1581 ]
  %1590 = phi float [ -1.000000e+00, %1521 ], [ %1586, %1581 ]
  %1591 = phi float [ -1.000000e+00, %1521 ], [ %1585, %1581 ]
  %1592 = phi float [ -1.000000e+00, %1521 ], [ %1584, %1581 ]
  %1593 = phi float [ -1.000000e+00, %1521 ], [ %1583, %1581 ]
  %1594 = phi float [ -1.000000e+00, %1521 ], [ %1582, %1581 ]
  %1595 = call float @dx.op.binary.f32(i32 36, float %1593, float %1594)  ; FMin(a,b)
  %1596 = call float @dx.op.binary.f32(i32 36, float %1592, float %1595)  ; FMin(a,b)
  %1597 = call float @dx.op.binary.f32(i32 35, float %1592, float %1593)  ; FMax(a,b)
  %1598 = call float @dx.op.binary.f32(i32 36, float %1597, float %1594)  ; FMin(a,b)
  %1599 = call float @dx.op.binary.f32(i32 36, float %1592, float %1593)  ; FMin(a,b)
  %1600 = call float @dx.op.binary.f32(i32 35, float %1599, float %1598)  ; FMax(a,b)
  %1601 = call float @dx.op.binary.f32(i32 35, float %1593, float %1594)  ; FMax(a,b)
  %1602 = call float @dx.op.binary.f32(i32 35, float %1592, float %1601)  ; FMax(a,b)
  store float %1596, float* %1523, align 4, !tbaa !84, !alias.scope !108, !noalias !109
  store float %1600, float* %1524, align 4, !tbaa !84, !alias.scope !106, !noalias !107
  store float %1602, float* %1525, align 4, !tbaa !84, !alias.scope !100, !noalias !103
  %1603 = call float @dx.op.binary.f32(i32 36, float %1590, float %1591)  ; FMin(a,b)
  %1604 = call float @dx.op.binary.f32(i32 36, float %1589, float %1603)  ; FMin(a,b)
  %1605 = call float @dx.op.binary.f32(i32 35, float %1589, float %1590)  ; FMax(a,b)
  %1606 = call float @dx.op.binary.f32(i32 36, float %1605, float %1591)  ; FMin(a,b)
  %1607 = call float @dx.op.binary.f32(i32 36, float %1589, float %1590)  ; FMin(a,b)
  %1608 = call float @dx.op.binary.f32(i32 35, float %1607, float %1606)  ; FMax(a,b)
  %1609 = call float @dx.op.binary.f32(i32 35, float %1590, float %1591)  ; FMax(a,b)
  %1610 = call float @dx.op.binary.f32(i32 35, float %1589, float %1609)  ; FMax(a,b)
  store float %1604, float* %1526, align 4, !tbaa !84, !alias.scope !118, !noalias !119
  store float %1608, float* %1527, align 4, !tbaa !84, !alias.scope !116, !noalias !117
  store float %1610, float* %1528, align 4, !tbaa !84, !alias.scope !110, !noalias !113
  br label %1611

; <label>:1611                                    ; preds = %1588, %1517, %1506, %1504, %1401
  %1612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %1613 = extractvalue %dx.types.CBufRet.f32 %1612, 2
  %1614 = fmul fast float %1613, %1411
  %1615 = call float @dx.op.unary.f32(i32 7, float %1614)  ; Saturate(value)
  %1616 = fptoui float %1350 to i32
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1617 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %24
  store i32 %1616, i32 addrspace(3)* %1617, align 4, !tbaa !120
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1618 = and i32 %24, 63
  %1619 = icmp ult i32 %1618, 32
  br i1 %1619, label %1620, label %1626, !dx.controlflow.hints !122

; <label>:1620                                    ; preds = %1611
  %1621 = add i32 %24, 32
  %1622 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1621
  %1623 = load i32, i32 addrspace(3)* %1622, align 4, !tbaa !120
  %1624 = load i32, i32 addrspace(3)* %1617, align 4, !tbaa !120
  %1625 = call i32 @dx.op.binary.i32(i32 40, i32 %1624, i32 %1623)  ; UMin(a,b)
  store i32 %1625, i32 addrspace(3)* %1617, align 4, !tbaa !120
  br label %1626

; <label>:1626                                    ; preds = %1620, %1611
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1627 = icmp ult i32 %1618, 16
  br i1 %1627, label %1628, label %1634, !dx.controlflow.hints !123

; <label>:1628                                    ; preds = %1626
  %1629 = add i32 %24, 16
  %1630 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1629
  %1631 = load i32, i32 addrspace(3)* %1630, align 4, !tbaa !120
  %1632 = load i32, i32 addrspace(3)* %1617, align 4, !tbaa !120
  %1633 = call i32 @dx.op.binary.i32(i32 40, i32 %1632, i32 %1631)  ; UMin(a,b)
  store i32 %1633, i32 addrspace(3)* %1617, align 4, !tbaa !120
  br label %1634

; <label>:1634                                    ; preds = %1628, %1626
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1635 = icmp ult i32 %1618, 8
  br i1 %1635, label %1636, label %1642, !dx.controlflow.hints !124

; <label>:1636                                    ; preds = %1634
  %1637 = add i32 %24, 8
  %1638 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1637
  %1639 = load i32, i32 addrspace(3)* %1638, align 4, !tbaa !120
  %1640 = load i32, i32 addrspace(3)* %1617, align 4, !tbaa !120
  %1641 = call i32 @dx.op.binary.i32(i32 40, i32 %1640, i32 %1639)  ; UMin(a,b)
  store i32 %1641, i32 addrspace(3)* %1617, align 4, !tbaa !120
  br label %1642

; <label>:1642                                    ; preds = %1636, %1634
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1643 = icmp ult i32 %1618, 4
  br i1 %1643, label %1644, label %1650, !dx.controlflow.hints !125

; <label>:1644                                    ; preds = %1642
  %1645 = add i32 %24, 4
  %1646 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1645
  %1647 = load i32, i32 addrspace(3)* %1646, align 4, !tbaa !120
  %1648 = load i32, i32 addrspace(3)* %1617, align 4, !tbaa !120
  %1649 = call i32 @dx.op.binary.i32(i32 40, i32 %1648, i32 %1647)  ; UMin(a,b)
  store i32 %1649, i32 addrspace(3)* %1617, align 4, !tbaa !120
  br label %1650

; <label>:1650                                    ; preds = %1644, %1642
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1651 = icmp ult i32 %1618, 2
  br i1 %1651, label %1652, label %1658, !dx.controlflow.hints !126

; <label>:1652                                    ; preds = %1650
  %1653 = add i32 %24, 2
  %1654 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1653
  %1655 = load i32, i32 addrspace(3)* %1654, align 4, !tbaa !120
  %1656 = load i32, i32 addrspace(3)* %1617, align 4, !tbaa !120
  %1657 = call i32 @dx.op.binary.i32(i32 40, i32 %1656, i32 %1655)  ; UMin(a,b)
  store i32 %1657, i32 addrspace(3)* %1617, align 4, !tbaa !120
  br label %1658

; <label>:1658                                    ; preds = %1652, %1650
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1659 = icmp eq i32 %1618, 0
  br i1 %1659, label %1660, label %1666, !dx.controlflow.hints !127

; <label>:1660                                    ; preds = %1658
  %1661 = add i32 %24, 1
  %1662 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1661
  %1663 = load i32, i32 addrspace(3)* %1662, align 4, !tbaa !120
  %1664 = load i32, i32 addrspace(3)* %1617, align 4, !tbaa !120
  %1665 = call i32 @dx.op.binary.i32(i32 40, i32 %1664, i32 %1663)  ; UMin(a,b)
  store i32 %1665, i32 addrspace(3)* %1617, align 4, !tbaa !120
  br label %1666

; <label>:1666                                    ; preds = %1660, %1658
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1667 = and i32 %24, -64
  %1668 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1667
  %1669 = load i32, i32 addrspace(3)* %1668, align 4, !tbaa !120
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %1616, i32 addrspace(3)* %1617, align 4, !tbaa !120
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %1619, label %1670, label %1676, !dx.controlflow.hints !128

; <label>:1670                                    ; preds = %1666
  %1671 = add i32 %24, 32
  %1672 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1671
  %1673 = load i32, i32 addrspace(3)* %1672, align 4, !tbaa !120
  %1674 = load i32, i32 addrspace(3)* %1617, align 4, !tbaa !120
  %1675 = call i32 @dx.op.binary.i32(i32 39, i32 %1674, i32 %1673)  ; UMax(a,b)
  store i32 %1675, i32 addrspace(3)* %1617, align 4, !tbaa !120
  br label %1676

; <label>:1676                                    ; preds = %1670, %1666
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1627, label %1677, label %1683, !dx.controlflow.hints !129

; <label>:1677                                    ; preds = %1676
  %1678 = add i32 %24, 16
  %1679 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1678
  %1680 = load i32, i32 addrspace(3)* %1679, align 4, !tbaa !120
  %1681 = load i32, i32 addrspace(3)* %1617, align 4, !tbaa !120
  %1682 = call i32 @dx.op.binary.i32(i32 39, i32 %1681, i32 %1680)  ; UMax(a,b)
  store i32 %1682, i32 addrspace(3)* %1617, align 4, !tbaa !120
  br label %1683

; <label>:1683                                    ; preds = %1677, %1676
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1635, label %1684, label %1690, !dx.controlflow.hints !130

; <label>:1684                                    ; preds = %1683
  %1685 = add i32 %24, 8
  %1686 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1685
  %1687 = load i32, i32 addrspace(3)* %1686, align 4, !tbaa !120
  %1688 = load i32, i32 addrspace(3)* %1617, align 4, !tbaa !120
  %1689 = call i32 @dx.op.binary.i32(i32 39, i32 %1688, i32 %1687)  ; UMax(a,b)
  store i32 %1689, i32 addrspace(3)* %1617, align 4, !tbaa !120
  br label %1690

; <label>:1690                                    ; preds = %1684, %1683
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1643, label %1691, label %1697, !dx.controlflow.hints !131

; <label>:1691                                    ; preds = %1690
  %1692 = add i32 %24, 4
  %1693 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1692
  %1694 = load i32, i32 addrspace(3)* %1693, align 4, !tbaa !120
  %1695 = load i32, i32 addrspace(3)* %1617, align 4, !tbaa !120
  %1696 = call i32 @dx.op.binary.i32(i32 39, i32 %1695, i32 %1694)  ; UMax(a,b)
  store i32 %1696, i32 addrspace(3)* %1617, align 4, !tbaa !120
  br label %1697

; <label>:1697                                    ; preds = %1691, %1690
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1651, label %1698, label %1704, !dx.controlflow.hints !132

; <label>:1698                                    ; preds = %1697
  %1699 = add i32 %24, 2
  %1700 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1699
  %1701 = load i32, i32 addrspace(3)* %1700, align 4, !tbaa !120
  %1702 = load i32, i32 addrspace(3)* %1617, align 4, !tbaa !120
  %1703 = call i32 @dx.op.binary.i32(i32 39, i32 %1702, i32 %1701)  ; UMax(a,b)
  store i32 %1703, i32 addrspace(3)* %1617, align 4, !tbaa !120
  br label %1704

; <label>:1704                                    ; preds = %1698, %1697
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1659, label %1705, label %1711, !dx.controlflow.hints !133

; <label>:1705                                    ; preds = %1704
  %1706 = add i32 %24, 1
  %1707 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1706
  %1708 = load i32, i32 addrspace(3)* %1707, align 4, !tbaa !120
  %1709 = load i32, i32 addrspace(3)* %1617, align 4, !tbaa !120
  %1710 = call i32 @dx.op.binary.i32(i32 39, i32 %1709, i32 %1708)  ; UMax(a,b)
  store i32 %1710, i32 addrspace(3)* %1617, align 4, !tbaa !120
  br label %1711

; <label>:1711                                    ; preds = %1705, %1704
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1712 = load i32, i32 addrspace(3)* %1668, align 4, !tbaa !120
  %1713 = uitofp i32 %1712 to float
  %1714 = uitofp i32 %1669 to float
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %22, i32 %23, i32 undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1716 = extractvalue %dx.types.CBufRet.f32 %1715, 0
  %1717 = fmul fast float %1716, %1350
  %1718 = fmul fast float %1716, %1713
  %1719 = fmul fast float %1716, %1714
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %22, i32 %23, i32 undef, float %1717, float %1718, float %1719, float %1717, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %22, i32 %23, i32 undef, float %1615, float %1615, float %1615, float %1615, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!33 = !{void ()* @cs_fog_raymarching_clouds_heightmap_particles, !"cs_fog_raymarching_clouds_heightmap_particles", null, !4, !34}
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
!47 = distinct !{!47, !"dx.controlflow.hints", i32 1}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !55}
!55 = !{!"llvm.loop.unroll.disable"}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
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

