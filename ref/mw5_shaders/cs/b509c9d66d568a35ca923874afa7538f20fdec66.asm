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
; shader hash: a9ea31a1dc6ad78a0f86b21aa75f9ae8
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
;                                   texture     f32          2d      T0            t27     1
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

define void @cs_fog_raymarching_clouds_particles_brfog() {
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
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
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
  %217 = extractvalue %dx.types.ResRet.f32 %216, 1
  %218 = extractvalue %dx.types.ResRet.f32 %216, 2
  %219 = extractvalue %dx.types.ResRet.f32 %216, 3
  %220 = fadd fast float %217, %211
  %221 = fadd fast float %218, %211
  %222 = fadd fast float %219, %211
  %223 = call float @dx.op.unary.f32(i32 22, float %220)  ; Frc(value)
  %224 = call float @dx.op.unary.f32(i32 22, float %221)  ; Frc(value)
  %225 = call float @dx.op.unary.f32(i32 22, float %222)  ; Frc(value)
  %226 = fadd fast float %224, %207
  %227 = fadd fast float %225, %208
  %228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %229 = extractvalue %dx.types.CBufRet.f32 %228, 2
  %230 = extractvalue %dx.types.CBufRet.f32 %228, 3
  %231 = fmul fast float %229, %226
  %232 = fmul fast float %230, %227
  %233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %234 = extractvalue %dx.types.CBufRet.f32 %233, 0
  %235 = extractvalue %dx.types.CBufRet.f32 %233, 1
  %236 = extractvalue %dx.types.CBufRet.f32 %233, 2
  %237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %238 = extractvalue %dx.types.CBufRet.f32 %237, 1
  %239 = fmul fast float %231, 2.000000e+00
  %240 = fmul fast float %232, 2.000000e+00
  %241 = fsub fast float 1.000000e+00, %239
  %242 = fsub fast float 1.000000e+00, %240
  %243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %244 = extractvalue %dx.types.CBufRet.f32 %243, 0
  %245 = extractvalue %dx.types.CBufRet.f32 %243, 1
  %246 = extractvalue %dx.types.CBufRet.f32 %243, 2
  %247 = fmul fast float %244, %241
  %248 = fmul fast float %245, %241
  %249 = fmul fast float %246, %241
  %250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %251 = extractvalue %dx.types.CBufRet.f32 %250, 0
  %252 = extractvalue %dx.types.CBufRet.f32 %250, 1
  %253 = extractvalue %dx.types.CBufRet.f32 %250, 2
  %254 = fmul fast float %251, %242
  %255 = fmul fast float %252, %242
  %256 = fmul fast float %253, %242
  %257 = fadd fast float %254, %247
  %258 = fadd fast float %255, %248
  %259 = fadd fast float %256, %249
  %260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %261 = extractvalue %dx.types.CBufRet.f32 %260, 0
  %262 = extractvalue %dx.types.CBufRet.f32 %260, 1
  %263 = extractvalue %dx.types.CBufRet.f32 %260, 2
  %264 = fadd fast float %257, %261
  %265 = fadd fast float %258, %262
  %266 = fadd fast float %259, %263
  %267 = fmul fast float %264, %238
  %268 = fmul fast float %265, %238
  %269 = fmul fast float %266, %238
  %270 = fmul fast float %267, %267
  %271 = fmul fast float %268, %268
  %272 = fadd fast float %270, %271
  %273 = fmul fast float %269, %269
  %274 = fadd fast float %272, %273
  %275 = call float @dx.op.unary.f32(i32 24, float %274)  ; Sqrt(value)
  %276 = fdiv fast float 1.000000e+00, %275
  %277 = fmul fast float %267, %276
  %278 = fmul fast float %268, %276
  %279 = fmul fast float %269, %276
  %280 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %37, i32 %38, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %281 = extractvalue %dx.types.ResRet.f32 %280, 0
  %282 = fcmp fast ogt float %281, -1.000000e+00
  %283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %284 = extractvalue %dx.types.CBufRet.f32 %283, 1
  %285 = select i1 %282, float %284, float 1.000000e+00
  %286 = fadd fast float %281, 1.000000e+00
  %287 = fmul fast float %285, %286
  %288 = call float @dx.op.unary.f32(i32 6, float %287)  ; FAbs(value)
  %289 = fdiv fast float 1.000000e+00, %238
  %290 = fmul fast float %289, %275
  %291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %292 = extractvalue %dx.types.CBufRet.f32 %291, 1
  %293 = fmul fast float %292, %290
  %294 = fmul fast float %290, %288
  %295 = extractvalue %dx.types.CBufRet.f32 %283, 3
  %296 = fcmp fast oge float %288, %295
  %297 = call float @dx.op.binary.f32(i32 36, float %294, float %293)  ; FMin(a,b)
  %298 = select i1 %296, float %293, float %297
  %299 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %300 = extractvalue %dx.types.CBufRet.i32 %299, 3
  %301 = icmp eq i32 %300, 0
  %302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %303 = extractvalue %dx.types.CBufRet.f32 %302, 2
  %304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %305 = extractvalue %dx.types.CBufRet.f32 %304, 2
  %306 = fsub fast float %303, %236
  %307 = fadd fast float %306, %305
  br i1 %301, label %319, label %308, !dx.controlflow.hints !37

; <label>:308                                     ; preds = %206
  %309 = fsub fast float -0.000000e+00, %235
  %310 = fsub fast float -0.000000e+00, %234
  %311 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %310, float %309, float %307)  ; Dot3(ax,ay,az,bx,by,bz)
  %312 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %277, float %278, float %279)  ; Dot3(ax,ay,az,bx,by,bz)
  %313 = fdiv fast float 1.000000e+00, %312
  %314 = fmul fast float %313, %311
  %315 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %310, float %309, float %306)  ; Dot3(ax,ay,az,bx,by,bz)
  %316 = fmul fast float %313, %315
  %317 = call float @dx.op.binary.f32(i32 36, float %314, float %316)  ; FMin(a,b)
  %318 = call float @dx.op.binary.f32(i32 35, float %314, float %316)  ; FMax(a,b)
  br label %352

; <label>:319                                     ; preds = %206
  %320 = fdiv fast float 1.000000e+00, %277
  %321 = fdiv fast float 1.000000e+00, %278
  %322 = fdiv fast float 1.000000e+00, %279
  %323 = extractvalue %dx.types.CBufRet.f32 %302, 0
  %324 = extractvalue %dx.types.CBufRet.f32 %302, 1
  %325 = extractvalue %dx.types.CBufRet.f32 %304, 0
  %326 = extractvalue %dx.types.CBufRet.f32 %304, 1
  %327 = fsub fast float %323, %234
  %328 = fmul fast float %327, %320
  %329 = fadd fast float %327, %325
  %330 = fmul fast float %329, %320
  %331 = call float @dx.op.binary.f32(i32 36, float %328, float %330)  ; FMin(a,b)
  %332 = call float @dx.op.binary.f32(i32 35, float %328, float %330)  ; FMax(a,b)
  %333 = fsub fast float %324, %235
  %334 = fmul fast float %333, %321
  %335 = fadd fast float %333, %326
  %336 = fmul fast float %335, %321
  %337 = call float @dx.op.binary.f32(i32 36, float %334, float %336)  ; FMin(a,b)
  %338 = call float @dx.op.binary.f32(i32 35, float %331, float %337)  ; FMax(a,b)
  %339 = call float @dx.op.binary.f32(i32 35, float %334, float %336)  ; FMax(a,b)
  %340 = call float @dx.op.binary.f32(i32 36, float %332, float %339)  ; FMin(a,b)
  %341 = fmul fast float %306, %322
  %342 = fmul fast float %307, %322
  %343 = call float @dx.op.binary.f32(i32 36, float %341, float %342)  ; FMin(a,b)
  %344 = call float @dx.op.binary.f32(i32 35, float %338, float %343)  ; FMax(a,b)
  %345 = call float @dx.op.binary.f32(i32 35, float %341, float %342)  ; FMax(a,b)
  %346 = call float @dx.op.binary.f32(i32 36, float %340, float %345)  ; FMin(a,b)
  %347 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %344)  ; FMax(a,b)
  %348 = fcmp fast ult float %346, %347
  br i1 %348, label %352, label %349, !dx.controlflow.hints !38

; <label>:349                                     ; preds = %319
  %350 = call float @dx.op.binary.f32(i32 36, float %344, float %346)  ; FMin(a,b)
  %351 = call float @dx.op.binary.f32(i32 35, float %344, float %346)  ; FMax(a,b)
  br label %352

; <label>:352                                     ; preds = %349, %319, %308
  %353 = phi float [ %317, %308 ], [ %350, %349 ], [ 0.000000e+00, %319 ]
  %354 = phi float [ %318, %308 ], [ %351, %349 ], [ 0.000000e+00, %319 ]
  %355 = fcmp fast oeq float %354, 0.000000e+00
  br i1 %355, label %359, label %356, !dx.controlflow.hints !39

; <label>:356                                     ; preds = %352
  %357 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %353)  ; FMin(a,b)
  %358 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %354)  ; FMax(a,b)
  br label %359

; <label>:359                                     ; preds = %356, %352
  %360 = phi i32 [ 1, %356 ], [ 0, %352 ]
  %361 = phi float [ %358, %356 ], [ -1.000000e+00, %352 ]
  %362 = phi float [ %357, %356 ], [ 0x47EFFFFFE0000000, %352 ]
  %363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %364 = extractvalue %dx.types.CBufRet.f32 %363, 3
  %365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %366 = extractvalue %dx.types.CBufRet.f32 %365, 0
  %367 = fsub fast float -0.000000e+00, %234
  %368 = fsub fast float -0.000000e+00, %235
  %369 = fsub fast float %364, %236
  %370 = fadd fast float %369, %366
  %371 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %367, float %368, float %370)  ; Dot3(ax,ay,az,bx,by,bz)
  %372 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %277, float %278, float %279)  ; Dot3(ax,ay,az,bx,by,bz)
  %373 = fdiv fast float 1.000000e+00, %372
  %374 = fmul fast float %373, %371
  %375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %376 = extractvalue %dx.types.CBufRet.f32 %375, 2
  %377 = fsub fast float %376, %236
  %378 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %367, float %368, float %377)  ; Dot3(ax,ay,az,bx,by,bz)
  %379 = fmul fast float %373, %378
  %380 = call float @dx.op.binary.f32(i32 36, float %374, float %379)  ; FMin(a,b)
  %381 = call float @dx.op.binary.f32(i32 35, float %374, float %379)  ; FMax(a,b)
  %382 = call float @dx.op.binary.f32(i32 36, float %362, float %380)  ; FMin(a,b)
  %383 = call float @dx.op.binary.f32(i32 35, float %361, float %381)  ; FMax(a,b)
  %384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %385 = extractvalue %dx.types.CBufRet.f32 %384, 2
  %386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %387 = extractvalue %dx.types.CBufRet.f32 %386, 3
  %388 = fsub fast float %385, %236
  %389 = fadd fast float %388, %387
  %390 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %367, float %368, float %389)  ; Dot3(ax,ay,az,bx,by,bz)
  %391 = fmul fast float %373, %390
  %392 = fcmp fast olt float %391, 0.000000e+00
  %393 = fcmp fast ogt float %279, 0.000000e+00
  %394 = and i1 %393, %392
  br i1 %394, label %399, label %395, !dx.controlflow.hints !40

; <label>:395                                     ; preds = %359
  %396 = fcmp fast olt float %279, 0.000000e+00
  br i1 %396, label %397, label %399, !dx.controlflow.hints !41

; <label>:397                                     ; preds = %395
  %398 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %391)  ; FMax(a,b)
  br label %399

; <label>:399                                     ; preds = %397, %395, %359
  %400 = phi float [ 0.000000e+00, %359 ], [ %398, %397 ], [ 0.000000e+00, %395 ]
  %401 = phi float [ 0.000000e+00, %359 ], [ 0x47EFFFFFE0000000, %397 ], [ %391, %395 ]
  %402 = fcmp fast oeq float %401, 0.000000e+00
  br i1 %402, label %406, label %403, !dx.controlflow.hints !42

; <label>:403                                     ; preds = %399
  %404 = call float @dx.op.binary.f32(i32 36, float %382, float %400)  ; FMin(a,b)
  %405 = call float @dx.op.binary.f32(i32 35, float %383, float %401)  ; FMax(a,b)
  br label %406

; <label>:406                                     ; preds = %403, %399
  %407 = phi i32 [ 1, %403 ], [ 0, %399 ]
  %408 = phi float [ %405, %403 ], [ %383, %399 ]
  %409 = phi float [ %404, %403 ], [ %382, %399 ]
  %410 = fdiv fast float 1.000000e+00, %277
  %411 = fdiv fast float 1.000000e+00, %278
  %412 = fdiv fast float 1.000000e+00, %279
  %413 = call float @dx.op.binary.f32(i32 36, float %298, float %408)  ; FMin(a,b)
  %414 = call float @dx.op.binary.f32(i32 35, float %275, float %409)  ; FMax(a,b)
  %415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %416 = extractvalue %dx.types.CBufRet.f32 %415, 0
  %417 = fmul fast float %223, 2.000000e+00
  %418 = fadd fast float %417, -1.000000e+00
  %419 = fmul fast float %416, %418
  %420 = fadd fast float %419, %414
  %421 = fcmp fast olt float %420, %413
  %422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %423 = extractvalue %dx.types.CBufRet.f32 %422, 2
  %424 = fcmp fast olt float %423, 1.000000e+00
  %425 = and i1 %424, %421
  br i1 %425, label %426, label %1320

; <label>:426                                     ; preds = %406
  %427 = fmul fast float %420, %279
  %428 = fadd fast float %427, %236
  %429 = fmul fast float %420, %278
  %430 = fadd fast float %429, %235
  %431 = fmul fast float %420, %277
  %432 = fadd fast float %431, %234
  br label %433

; <label>:433                                     ; preds = %1298, %426
  %434 = phi i32 [ %802, %1298 ], [ undef, %426 ]
  %435 = phi float [ %804, %1298 ], [ undef, %426 ]
  %436 = phi float [ %559, %1298 ], [ undef, %426 ]
  %437 = phi float [ %560, %1298 ], [ undef, %426 ]
  %438 = phi float [ %561, %1298 ], [ undef, %426 ]
  %439 = phi float [ %562, %1298 ], [ undef, %426 ]
  %440 = phi float [ %1300, %1298 ], [ 0.000000e+00, %426 ]
  %441 = phi float [ %1301, %1298 ], [ 1.000000e+00, %426 ]
  %442 = phi float [ %1311, %1298 ], [ %432, %426 ]
  %443 = phi float [ %1312, %1298 ], [ %430, %426 ]
  %444 = phi float [ %1313, %1298 ], [ %428, %426 ]
  %445 = phi float [ %1299, %1298 ], [ %420, %426 ]
  %446 = phi i32 [ %454, %1298 ], [ 0, %426 ]
  %447 = phi i32 [ %564, %1298 ], [ 10, %426 ]
  %448 = phi float [ %1302, %1298 ], [ 0.000000e+00, %426 ]
  %449 = phi float [ %1303, %1298 ], [ 0.000000e+00, %426 ]
  %450 = phi float [ %1304, %1298 ], [ 0.000000e+00, %426 ]
  %451 = phi float [ %1305, %1298 ], [ 0.000000e+00, %426 ]
  %452 = phi float [ %1306, %1298 ], [ 0.000000e+00, %426 ]
  %453 = phi i32 [ %1307, %1298 ], [ 0, %426 ]
  %454 = add i32 %446, 1
  %455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %456 = extractvalue %dx.types.CBufRet.f32 %455, 0
  %457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %458 = extractvalue %dx.types.CBufRet.f32 %457, 0
  %459 = extractvalue %dx.types.CBufRet.f32 %457, 1
  %460 = fsub fast float %442, %458
  %461 = fsub fast float %443, %459
  %462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %463 = extractvalue %dx.types.CBufRet.f32 %462, 2
  %464 = extractvalue %dx.types.CBufRet.f32 %462, 3
  %465 = fmul fast float %460, %463
  %466 = fmul fast float %461, %464
  %467 = call float @dx.op.binary.f32(i32 36, float %465, float %466)  ; FMin(a,b)
  %468 = fcmp fast olt float %467, 0.000000e+00
  %469 = call float @dx.op.binary.f32(i32 35, float %465, float %466)  ; FMax(a,b)
  %470 = fcmp fast ogt float %469, 1.000000e+00
  %471 = or i1 %468, %470
  %472 = extractvalue %dx.types.CBufRet.f32 %457, 2
  %473 = fcmp fast olt float %444, %472
  %474 = or i1 %471, %473
  %475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %476 = extractvalue %dx.types.CBufRet.f32 %475, 3
  %477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %478 = extractvalue %dx.types.CBufRet.f32 %477, 0
  %479 = fadd fast float %478, %476
  %480 = fcmp fast ogt float %444, %479
  %481 = or i1 %474, %480
  br i1 %481, label %482, label %511, !dx.controlflow.hints !43

; <label>:482                                     ; preds = %433
  %483 = extractvalue %dx.types.CBufRet.f32 %462, 0
  %484 = extractvalue %dx.types.CBufRet.f32 %462, 1
  %485 = fsub fast float %458, %442
  %486 = fmul fast float %485, %410
  %487 = fadd fast float %485, %483
  %488 = fmul fast float %487, %410
  %489 = call float @dx.op.binary.f32(i32 36, float %486, float %488)  ; FMin(a,b)
  %490 = call float @dx.op.binary.f32(i32 35, float %486, float %488)  ; FMax(a,b)
  %491 = fsub fast float %459, %443
  %492 = fmul fast float %491, %411
  %493 = fadd fast float %491, %484
  %494 = fmul fast float %493, %411
  %495 = call float @dx.op.binary.f32(i32 36, float %492, float %494)  ; FMin(a,b)
  %496 = call float @dx.op.binary.f32(i32 35, float %489, float %495)  ; FMax(a,b)
  %497 = call float @dx.op.binary.f32(i32 35, float %492, float %494)  ; FMax(a,b)
  %498 = call float @dx.op.binary.f32(i32 36, float %490, float %497)  ; FMin(a,b)
  %499 = fsub fast float %472, %444
  %500 = fmul fast float %499, %412
  %501 = fsub fast float %476, %444
  %502 = fadd fast float %501, %478
  %503 = fmul fast float %502, %412
  %504 = call float @dx.op.binary.f32(i32 36, float %500, float %503)  ; FMin(a,b)
  %505 = call float @dx.op.binary.f32(i32 35, float %496, float %504)  ; FMax(a,b)
  %506 = call float @dx.op.binary.f32(i32 35, float %500, float %503)  ; FMax(a,b)
  %507 = call float @dx.op.binary.f32(i32 36, float %498, float %506)  ; FMin(a,b)
  %508 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %505)  ; FMax(a,b)
  %509 = fcmp fast oge float %507, %508
  %510 = select i1 %509, float %505, float 1.000000e+07
  br label %557

; <label>:511                                     ; preds = %433
  %512 = fsub fast float 1.000000e+00, %466
  %513 = icmp eq i32 %447, 0
  br i1 %513, label %542, label %514

; <label>:514                                     ; preds = %511
  br label %515

; <label>:515                                     ; preds = %538, %514
  %516 = phi i32 [ %539, %538 ], [ %447, %514 ]
  %517 = uitofp i32 %516 to float
  %518 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %19, float %465, float %512, float undef, float undef, i32 0, i32 0, i32 undef, float %517)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %519 = extractvalue %dx.types.ResRet.f32 %518, 0
  %520 = extractvalue %dx.types.ResRet.f32 %518, 1
  %521 = extractvalue %dx.types.ResRet.f32 %518, 2
  %522 = fcmp fast oeq float %519, 0.000000e+00
  %523 = fcmp ule float %444, %521
  %524 = fcmp uge float %444, %520
  %525 = or i1 %524, %523
  %526 = or i1 %522, %525
  br i1 %526, label %527, label %538, !dx.controlflow.hints !44

; <label>:527                                     ; preds = %515
  %528 = extractvalue %dx.types.ResRet.f32 %518, 3
  %529 = extractvalue %dx.types.CBufRet.f32 %462, 0
  %530 = and i32 %516, 31
  %531 = lshr i32 1024, %530
  %532 = uitofp i32 %531 to float
  %533 = fdiv fast float %529, %532
  %534 = add i32 %516, 1
  %535 = uitofp i32 %534 to float
  %536 = call float @dx.op.binary.f32(i32 36, float 1.000000e+01, float %535)  ; FMin(a,b)
  %537 = fptosi float %536 to i32
  br label %557

; <label>:538                                     ; preds = %515
  %539 = add i32 %516, -1
  %540 = icmp eq i32 %539, 0
  br i1 %540, label %541, label %515, !llvm.loop !45

; <label>:541                                     ; preds = %538
  br label %542

; <label>:542                                     ; preds = %541, %511
  %543 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %465, float %512, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %544 = extractvalue %dx.types.ResRet.f32 %543, 0
  %545 = extractvalue %dx.types.ResRet.f32 %543, 1
  %546 = extractvalue %dx.types.ResRet.f32 %543, 2
  %547 = extractvalue %dx.types.ResRet.f32 %543, 3
  %548 = extractvalue %dx.types.CBufRet.f32 %462, 0
  %549 = fmul fast float %548, 9.765625e-04
  %550 = fcmp fast oeq float %544, 0.000000e+00
  %551 = fcmp ule float %444, %546
  %552 = fcmp uge float %444, %545
  %553 = or i1 %552, %551
  %554 = or i1 %550, %553
  %555 = zext i1 %554 to i32
  %556 = xor i32 %555, 1
  br label %557

; <label>:557                                     ; preds = %542, %527, %482
  %558 = phi float [ %510, %482 ], [ %533, %527 ], [ %549, %542 ]
  %559 = phi float [ %436, %482 ], [ %519, %527 ], [ %544, %542 ]
  %560 = phi float [ %437, %482 ], [ %520, %527 ], [ %545, %542 ]
  %561 = phi float [ %438, %482 ], [ %521, %527 ], [ %546, %542 ]
  %562 = phi float [ %439, %482 ], [ %528, %527 ], [ %547, %542 ]
  %563 = phi i32 [ 0, %482 ], [ 0, %527 ], [ %556, %542 ]
  %564 = phi i32 [ 10, %482 ], [ %537, %527 ], [ 1, %542 ]
  %565 = icmp eq i32 %563, 0
  %566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %567 = extractvalue %dx.types.CBufRet.f32 %566, 2
  %568 = call float @dx.op.binary.f32(i32 35, float %558, float %567)  ; FMax(a,b)
  %569 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %568)  ; FMin(a,b)
  %570 = icmp eq i32 %360, 0
  br i1 %570, label %626, label %571, !dx.controlflow.hints !47

; <label>:571                                     ; preds = %557
  %572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %573 = extractvalue %dx.types.CBufRet.f32 %572, 0
  %574 = extractvalue %dx.types.CBufRet.f32 %572, 1
  %575 = extractvalue %dx.types.CBufRet.f32 %572, 2
  %576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %577 = extractvalue %dx.types.CBufRet.f32 %576, 0
  %578 = extractvalue %dx.types.CBufRet.f32 %576, 1
  %579 = extractvalue %dx.types.CBufRet.f32 %576, 2
  %580 = fsub fast float %442, %577
  %581 = fsub fast float %443, %578
  %582 = fsub fast float %444, %579
  %583 = fmul fast float %580, %573
  %584 = fmul fast float %581, %574
  %585 = fmul fast float %582, %575
  %586 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %587 = extractvalue %dx.types.CBufRet.i32 %586, 3
  %588 = icmp eq i32 %587, 0
  br i1 %588, label %592, label %589, !dx.controlflow.hints !48

; <label>:589                                     ; preds = %571
  %590 = call float @dx.op.unary.f32(i32 22, float %583)  ; Frc(value)
  %591 = call float @dx.op.unary.f32(i32 22, float %584)  ; Frc(value)
  br label %592

; <label>:592                                     ; preds = %589, %571
  %593 = phi float [ %590, %589 ], [ %583, %571 ]
  %594 = phi float [ %591, %589 ], [ %584, %571 ]
  %595 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %16, float %593, float %594, float %585, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %596 = extractvalue %dx.types.ResRet.f32 %595, 0
  %597 = fmul fast float %596, 2.000000e+00
  %598 = fadd fast float %597, -1.000000e+00
  %599 = extractvalue %dx.types.CBufRet.f32 %572, 3
  %600 = fmul fast float %598, %599
  %601 = fcmp fast olt float %600, 0.000000e+00
  %602 = fcmp fast oge float %585, 0.000000e+00
  %603 = fcmp fast ole float %585, 1.000000e+00
  br i1 %588, label %606, label %604, !dx.controlflow.hints !49

; <label>:604                                     ; preds = %592
  %605 = and i1 %602, %603
  br label %616

; <label>:606                                     ; preds = %592
  %607 = fcmp fast oge float %583, 0.000000e+00
  %608 = fcmp fast oge float %584, 0.000000e+00
  %609 = and i1 %607, %608
  %610 = and i1 %602, %609
  %611 = fcmp fast ole float %583, 1.000000e+00
  %612 = fcmp fast ole float %584, 1.000000e+00
  %613 = and i1 %611, %612
  %614 = and i1 %603, %613
  %615 = and i1 %610, %614
  br label %616

; <label>:616                                     ; preds = %606, %604
  %617 = phi i1 [ %605, %604 ], [ %615, %606 ]
  %618 = and i1 %601, %617
  %619 = call float @dx.op.unary.f32(i32 6, float %600)  ; FAbs(value)
  %620 = extractvalue %dx.types.CBufRet.f32 %566, 1
  %621 = extractvalue %dx.types.CBufRet.f32 %566, 0
  %622 = call float @dx.op.binary.f32(i32 35, float %619, float %621)  ; FMax(a,b)
  %623 = select i1 %618, float %620, float %622
  %624 = zext i1 %618 to i32
  %625 = call float @dx.op.binary.f32(i32 36, float %569, float %623)  ; FMin(a,b)
  br label %626

; <label>:626                                     ; preds = %616, %557
  %627 = phi i32 [ %624, %616 ], [ 0, %557 ]
  %628 = phi float [ %625, %616 ], [ %569, %557 ]
  %629 = icmp eq i32 %407, 0
  br i1 %629, label %801, label %630, !dx.controlflow.hints !50

; <label>:630                                     ; preds = %626
  %631 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %632 = extractvalue %dx.types.CBufRet.i32 %631, 1
  %633 = and i32 %632, 1
  %634 = icmp eq i32 %633, 0
  br i1 %634, label %635, label %792, !dx.controlflow.hints !51

; <label>:635                                     ; preds = %630
  %636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %637 = extractvalue %dx.types.CBufRet.f32 %636, 2
  %638 = extractvalue %dx.types.CBufRet.f32 %636, 3
  %639 = fmul fast float %637, %442
  %640 = fmul fast float %638, %443
  %641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %642 = extractvalue %dx.types.CBufRet.f32 %641, 0
  %643 = extractvalue %dx.types.CBufRet.f32 %641, 1
  %644 = fadd fast float %639, %642
  %645 = fadd fast float %640, %643
  %646 = call float @dx.op.unary.f32(i32 7, float %644)  ; Saturate(value)
  %647 = call float @dx.op.unary.f32(i32 7, float %645)  ; Saturate(value)
  %648 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %646, float %647, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %649 = extractvalue %dx.types.ResRet.f32 %648, 0
  %650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %651 = extractvalue %dx.types.CBufRet.f32 %650, 0
  %652 = fmul fast float %651, %649
  %653 = fsub fast float %644, %646
  %654 = fsub fast float %645, %647
  %655 = extractvalue %dx.types.CBufRet.f32 %636, 0
  %656 = extractvalue %dx.types.CBufRet.f32 %636, 1
  %657 = fmul fast float %655, %653
  %658 = fmul fast float %656, %654
  %659 = fmul fast float %657, %657
  %660 = fmul fast float %658, %658
  %661 = fadd fast float %659, %660
  %662 = call float @dx.op.unary.f32(i32 24, float %661)  ; Sqrt(value)
  %663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %664 = extractvalue %dx.types.CBufRet.f32 %663, 3
  %665 = fmul fast float %664, %662
  %666 = call float @dx.op.unary.f32(i32 7, float %665)  ; Saturate(value)
  %667 = extractvalue %dx.types.CBufRet.f32 %663, 2
  %668 = fsub fast float %667, %652
  %669 = fmul fast float %668, %666
  %670 = extractvalue %dx.types.CBufRet.f32 %650, 1
  %671 = fsub fast float %444, %652
  %672 = fsub fast float %671, %670
  %673 = fsub fast float %672, %669
  %674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %675 = extractvalue %dx.types.CBufRet.f32 %674, 2
  %676 = fsub fast float %673, %675
  %677 = fcmp fast olt float %676, 0.000000e+00
  %678 = call float @dx.op.unary.f32(i32 6, float %676)  ; FAbs(value)
  %679 = extractvalue %dx.types.CBufRet.i32 %631, 0
  %680 = icmp eq i32 %679, 0
  br i1 %680, label %734, label %681

; <label>:681                                     ; preds = %635
  br label %682

; <label>:682                                     ; preds = %721, %681
  %683 = phi i32 [ %727, %721 ], [ 1, %681 ]
  %684 = phi float [ %729, %721 ], [ 0x47EFFFFFE0000000, %681 ]
  %685 = phi i32 [ %730, %721 ], [ 0, %681 ]
  %686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %687 = extractvalue %dx.types.CBufRet.f32 %686, 1
  %688 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %689 = extractvalue %dx.types.CBufRet.i32 %688, 1
  %690 = and i32 %689, 8
  %691 = icmp eq i32 %690, 0
  %692 = fcmp fast ogt float %687, %673
  %693 = or i1 %692, %691
  %694 = add i32 %685, 171
  %695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 %694)  ; CBufferLoadLegacy(handle,regIndex)
  %696 = extractvalue %dx.types.CBufRet.f32 %695, 0
  %697 = extractvalue %dx.types.CBufRet.f32 %695, 1
  %698 = extractvalue %dx.types.CBufRet.f32 %695, 2
  br i1 %693, label %699, label %705, !dx.controlflow.hints !52

; <label>:699                                     ; preds = %682
  %700 = fsub fast float %696, %442
  %701 = fsub fast float %697, %443
  %702 = fmul fast float %700, %700
  %703 = fmul fast float %701, %701
  %704 = fadd fast float %702, %703
  br label %721

; <label>:705                                     ; preds = %682
  %706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %707 = extractvalue %dx.types.CBufRet.f32 %706, 2
  %708 = extractvalue %dx.types.CBufRet.f32 %686, 2
  %709 = fmul fast float %708, %707
  %710 = fsub fast float %709, %687
  %711 = fdiv fast float %698, %710
  %712 = fsub fast float %442, %696
  %713 = fsub fast float %443, %697
  %714 = fsub fast float %673, %687
  %715 = fmul fast float %711, %714
  %716 = fmul fast float %712, %712
  %717 = fmul fast float %713, %713
  %718 = fadd fast float %716, %717
  %719 = fmul fast float %715, %715
  %720 = fadd fast float %718, %719
  br label %721

; <label>:721                                     ; preds = %705, %699
  %722 = phi float [ %704, %699 ], [ %720, %705 ]
  %723 = call float @dx.op.unary.f32(i32 24, float %722)  ; Sqrt(value)
  %724 = fsub float %698, %723
  %725 = fcmp fast olt float %724, 0.000000e+00
  %726 = zext i1 %725 to i32
  %727 = and i32 %726, %683
  %728 = call float @dx.op.unary.f32(i32 6, float %724)  ; FAbs(value)
  %729 = call float @dx.op.binary.f32(i32 36, float %684, float %728)  ; FMin(a,b)
  %730 = add i32 %685, 1
  %731 = extractvalue %dx.types.CBufRet.i32 %688, 0
  %732 = icmp ult i32 %730, %731
  br i1 %732, label %682, label %733

; <label>:733                                     ; preds = %721
  br label %734

; <label>:734                                     ; preds = %733, %635
  %735 = phi i32 [ 1, %635 ], [ %727, %733 ]
  %736 = phi float [ 0x47EFFFFFE0000000, %635 ], [ %729, %733 ]
  br label %737

; <label>:737                                     ; preds = %737, %734
  %738 = phi i32 [ %735, %734 ], [ %777, %737 ]
  %739 = phi float [ 0x47EFFFFFE0000000, %734 ], [ %779, %737 ]
  %740 = phi i32 [ 0, %734 ], [ %780, %737 ]
  %741 = add nuw nsw i32 %740, 191
  %742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 %741)  ; CBufferLoadLegacy(handle,regIndex)
  %743 = extractvalue %dx.types.CBufRet.f32 %742, 0
  %744 = extractvalue %dx.types.CBufRet.f32 %742, 1
  %745 = extractvalue %dx.types.CBufRet.f32 %742, 2
  %746 = add nuw nsw i32 %740, 195
  %747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 %746)  ; CBufferLoadLegacy(handle,regIndex)
  %748 = extractvalue %dx.types.CBufRet.f32 %747, 0
  %749 = extractvalue %dx.types.CBufRet.f32 %747, 1
  %750 = extractvalue %dx.types.CBufRet.f32 %747, 2
  %751 = fsub fast float %442, %743
  %752 = fsub fast float %443, %744
  %753 = fsub fast float %673, %745
  %754 = call float @dx.op.unary.f32(i32 6, float %751)  ; FAbs(value)
  %755 = call float @dx.op.unary.f32(i32 6, float %752)  ; FAbs(value)
  %756 = call float @dx.op.unary.f32(i32 6, float %753)  ; FAbs(value)
  %757 = fsub fast float %754, %748
  %758 = fsub fast float %755, %749
  %759 = fsub fast float %756, %750
  %760 = call float @dx.op.binary.f32(i32 35, float %757, float 0.000000e+00)  ; FMax(a,b)
  %761 = call float @dx.op.binary.f32(i32 35, float %758, float 0.000000e+00)  ; FMax(a,b)
  %762 = call float @dx.op.binary.f32(i32 35, float %759, float 0.000000e+00)  ; FMax(a,b)
  %763 = fmul fast float %760, %760
  %764 = fmul fast float %761, %761
  %765 = fadd fast float %764, %763
  %766 = fmul fast float %762, %762
  %767 = fadd fast float %765, %766
  %768 = call float @dx.op.unary.f32(i32 24, float %767)  ; Sqrt(value)
  %769 = call float @dx.op.binary.f32(i32 35, float %758, float %759)  ; FMax(a,b)
  %770 = call float @dx.op.binary.f32(i32 35, float %757, float %769)  ; FMax(a,b)
  %771 = call float @dx.op.binary.f32(i32 36, float %770, float 0.000000e+00)  ; FMin(a,b)
  %772 = fadd fast float %771, %768
  %773 = fsub fast float -0.000000e+00, %772
  %774 = fcmp ogt float %772, -0.000000e+00
  %775 = icmp ne i32 %738, 0
  %776 = and i1 %775, %774
  %777 = zext i1 %776 to i32
  %778 = call float @dx.op.unary.f32(i32 6, float %773)  ; FAbs(value)
  %779 = call float @dx.op.binary.f32(i32 36, float %739, float %778)  ; FMin(a,b)
  %780 = add nuw nsw i32 %740, 1
  %781 = icmp eq i32 %780, 4
  br i1 %781, label %782, label %737

; <label>:782                                     ; preds = %737
  %783 = call float @dx.op.binary.f32(i32 36, float %678, float %779)  ; FMin(a,b)
  %784 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %785 = extractvalue %dx.types.CBufRet.i32 %784, 1
  %786 = and i32 %785, 2
  %787 = icmp ne i32 %786, 0
  %788 = xor i1 %776, %787
  %789 = call float @dx.op.binary.f32(i32 36, float %783, float %736)  ; FMin(a,b)
  %790 = and i1 %788, %677
  %791 = zext i1 %790 to i32
  br label %792

; <label>:792                                     ; preds = %782, %630
  %793 = phi i32 [ %434, %630 ], [ %791, %782 ]
  %794 = phi float [ 0.000000e+00, %630 ], [ %789, %782 ]
  %795 = phi float [ %444, %630 ], [ %673, %782 ]
  %796 = icmp ne i32 %793, 0
  %797 = extractvalue %dx.types.CBufRet.f32 %566, 3
  %798 = call float @dx.op.binary.f32(i32 35, float %794, float %797)  ; FMax(a,b)
  %799 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %798)  ; FMin(a,b)
  %800 = zext i1 %796 to i32
  br label %801

; <label>:801                                     ; preds = %792, %626
  %802 = phi i32 [ %793, %792 ], [ %434, %626 ]
  %803 = phi i32 [ %800, %792 ], [ 0, %626 ]
  %804 = phi float [ %795, %792 ], [ %435, %626 ]
  %805 = phi float [ %799, %792 ], [ 0x47EFFFFFE0000000, %626 ]
  %806 = extractvalue %dx.types.CBufRet.f32 %455, 2
  %807 = fmul fast float %806, %445
  %808 = call float @dx.op.unary.f32(i32 23, float %807)  ; Log(value)
  %809 = fmul fast float %808, 0x3FE62E4300000000
  %810 = call float @dx.op.binary.f32(i32 35, float %809, float 1.000000e+00)  ; FMax(a,b)
  %811 = fmul fast float %810, %805
  %812 = call float @dx.op.binary.f32(i32 36, float %811, float %628)  ; FMin(a,b)
  %813 = call float @dx.op.binary.f32(i32 35, float %812, float %456)  ; FMax(a,b)
  %814 = fadd fast float %413, 0x3F1A36E2E0000000
  %815 = fsub fast float %814, %445
  %816 = call float @dx.op.binary.f32(i32 36, float %815, float %813)  ; FMin(a,b)
  %817 = icmp eq i32 %627, 0
  br i1 %817, label %997, label %818, !dx.controlflow.hints !53

; <label>:818                                     ; preds = %801
  %819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %820 = extractvalue %dx.types.CBufRet.f32 %819, 3
  %821 = fmul fast float %820, %445
  %822 = fcmp fast oeq float %821, 0.000000e+00
  br i1 %822, label %837, label %823, !dx.controlflow.hints !54

; <label>:823                                     ; preds = %818
  %824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %825 = extractvalue %dx.types.CBufRet.f32 %824, 3
  %826 = fmul fast float %825, %821
  %827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %828 = extractvalue %dx.types.CBufRet.f32 %827, 0
  %829 = extractvalue %dx.types.CBufRet.f32 %827, 1
  %830 = extractvalue %dx.types.CBufRet.f32 %827, 2
  %831 = fmul fast float %828, %826
  %832 = fmul fast float %829, %826
  %833 = fmul fast float %830, %826
  %834 = call float @dx.op.unary.f32(i32 23, float %831)  ; Log(value)
  %835 = call float @dx.op.unary.f32(i32 23, float %832)  ; Log(value)
  %836 = call float @dx.op.unary.f32(i32 23, float %833)  ; Log(value)
  br label %837

; <label>:837                                     ; preds = %823, %818
  %838 = phi float [ %834, %823 ], [ 0.000000e+00, %818 ]
  %839 = phi float [ %835, %823 ], [ 0.000000e+00, %818 ]
  %840 = phi float [ %836, %823 ], [ 0.000000e+00, %818 ]
  %841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %842 = extractvalue %dx.types.CBufRet.f32 %841, 0
  %843 = extractvalue %dx.types.CBufRet.f32 %841, 1
  %844 = extractvalue %dx.types.CBufRet.f32 %841, 2
  %845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %846 = extractvalue %dx.types.CBufRet.f32 %845, 0
  %847 = extractvalue %dx.types.CBufRet.f32 %845, 1
  %848 = extractvalue %dx.types.CBufRet.f32 %845, 2
  %849 = fsub fast float %442, %846
  %850 = fsub fast float %443, %847
  %851 = fsub fast float %444, %848
  %852 = fmul fast float %849, %842
  %853 = fmul fast float %850, %843
  %854 = fmul fast float %851, %844
  %855 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %856 = extractvalue %dx.types.CBufRet.i32 %855, 0
  %857 = extractvalue %dx.types.CBufRet.i32 %855, 1
  %858 = uitofp i32 %856 to float
  %859 = uitofp i32 %857 to float
  %860 = fmul fast float %852, %858
  %861 = fmul fast float %853, %859
  %862 = fadd fast float %860, 5.000000e-01
  %863 = fadd fast float %861, 5.000000e-01
  %864 = call float @dx.op.unary.f32(i32 22, float %862)  ; Frc(value)
  %865 = call float @dx.op.unary.f32(i32 22, float %863)  ; Frc(value)
  %866 = call float @dx.op.unary.f32(i32 27, float %862)  ; Round_ni(value)
  %867 = call float @dx.op.unary.f32(i32 27, float %863)  ; Round_ni(value)
  %868 = fadd fast float %866, 1.000000e+00
  %869 = fadd fast float %867, 1.000000e+00
  %870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %871 = extractvalue %dx.types.CBufRet.f32 %870, 0
  %872 = extractvalue %dx.types.CBufRet.f32 %870, 1
  %873 = fmul fast float %871, %868
  %874 = fmul fast float %872, %869
  %875 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %11, %dx.types.Handle %17, float %873, float %874, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %876 = extractvalue %dx.types.ResRet.f32 %875, 0
  %877 = extractvalue %dx.types.ResRet.f32 %875, 1
  %878 = extractvalue %dx.types.ResRet.f32 %875, 2
  %879 = extractvalue %dx.types.ResRet.f32 %875, 3
  %880 = extractvalue %dx.types.CBufRet.i32 %855, 2
  %881 = extractvalue %dx.types.CBufRet.f32 %870, 2
  %882 = uitofp i32 %880 to float
  %883 = fadd fast float %882, -1.000000e+00
  %884 = fmul fast float %883, %876
  %885 = fmul fast float %883, %877
  %886 = fmul fast float %883, %878
  %887 = fmul fast float %883, %879
  %888 = fadd fast float %884, 5.000000e-01
  %889 = fadd fast float %885, 5.000000e-01
  %890 = fadd fast float %886, 5.000000e-01
  %891 = fadd fast float %887, 5.000000e-01
  %892 = fptoui float %888 to i32
  %893 = fptoui float %889 to i32
  %894 = fptoui float %890 to i32
  %895 = fptoui float %891 to i32
  %896 = uitofp i32 %892 to float
  %897 = uitofp i32 %893 to float
  %898 = uitofp i32 %894 to float
  %899 = uitofp i32 %895 to float
  %900 = fadd fast float %896, 5.000000e-01
  %901 = fadd fast float %897, 5.000000e-01
  %902 = fadd fast float %898, 5.000000e-01
  %903 = fadd fast float %899, 5.000000e-01
  %904 = fmul fast float %900, %881
  %905 = fmul fast float %901, %881
  %906 = fmul fast float %902, %881
  %907 = fmul fast float %903, %881
  %908 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %18, float %904, float %854, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %909 = extractvalue %dx.types.ResRet.f32 %908, 0
  %910 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %18, float %905, float %854, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %911 = extractvalue %dx.types.ResRet.f32 %910, 0
  %912 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %18, float %906, float %854, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %913 = extractvalue %dx.types.ResRet.f32 %912, 0
  %914 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %18, float %907, float %854, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %915 = extractvalue %dx.types.ResRet.f32 %914, 0
  %916 = fsub fast float %913, %915
  %917 = fmul fast float %916, %864
  %918 = fadd fast float %917, %915
  %919 = fsub fast float %911, %909
  %920 = fmul fast float %919, %864
  %921 = fadd fast float %920, %909
  %922 = fsub fast float %921, %918
  %923 = fmul fast float %922, %865
  %924 = fadd fast float %923, %918
  %925 = fcmp fast ogt float %924, 0.000000e+00
  br i1 %925, label %926, label %994, !dx.controlflow.hints !55

; <label>:926                                     ; preds = %837
  %927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %928 = extractvalue %dx.types.CBufRet.f32 %927, 0
  %929 = extractvalue %dx.types.CBufRet.f32 %927, 1
  %930 = extractvalue %dx.types.CBufRet.f32 %927, 2
  %931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %932 = extractvalue %dx.types.CBufRet.f32 %931, 0
  %933 = extractvalue %dx.types.CBufRet.f32 %931, 1
  %934 = extractvalue %dx.types.CBufRet.f32 %931, 2
  %935 = fmul fast float %850, %842
  %936 = fmul fast float %851, %842
  %937 = fadd fast float %852, %932
  %938 = fadd fast float %935, %933
  %939 = fadd fast float %936, %934
  %940 = fmul fast float %937, %928
  %941 = fmul fast float %938, %928
  %942 = fmul fast float %939, %928
  %943 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %15, float %940, float %941, float %942, float undef, i32 0, i32 0, i32 0, float %838)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %944 = extractvalue %dx.types.ResRet.f32 %943, 0
  %945 = fmul fast float %937, %929
  %946 = fmul fast float %938, %929
  %947 = fmul fast float %939, %929
  %948 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %15, float %945, float %946, float %947, float undef, i32 0, i32 0, i32 0, float %839)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %949 = extractvalue %dx.types.ResRet.f32 %948, 1
  %950 = fmul fast float %937, %930
  %951 = fmul fast float %938, %930
  %952 = fmul fast float %939, %930
  %953 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %15, float %950, float %951, float %952, float undef, i32 0, i32 0, i32 0, float %840)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %954 = extractvalue %dx.types.ResRet.f32 %953, 2
  %955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %956 = extractvalue %dx.types.CBufRet.f32 %955, 1
  %957 = fmul fast float %949, %944
  %958 = fmul fast float %957, %954
  %959 = call float @dx.op.unary.f32(i32 23, float %958)  ; Log(value)
  %960 = fmul fast float %959, %956
  %961 = call float @dx.op.unary.f32(i32 21, float %960)  ; Exp(value)
  %962 = extractvalue %dx.types.CBufRet.f32 %955, 2
  %963 = fmul fast float %924, %924
  %964 = fmul fast float %963, %961
  %965 = fmul fast float %964, %962
  %966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %967 = extractvalue %dx.types.CBufRet.f32 %966, 3
  %968 = fmul fast float %967, %965
  %969 = bitcast float %968 to i32
  %970 = sitofp i32 %969 to float
  %971 = fptosi float %970 to i32
  %972 = bitcast i32 %971 to float
  %973 = fsub fast float 1.000000e+00, %965
  %974 = bitcast float %973 to i32
  %975 = sitofp i32 %974 to float
  %976 = fptosi float %975 to i32
  %977 = bitcast i32 %976 to float
  %978 = fadd fast float %972, %977
  %979 = bitcast float %978 to i32
  %980 = sub nsw i32 2129859010, %979
  %981 = bitcast i32 %980 to float
  %982 = fmul fast float %981, %972
  %983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %984 = extractvalue %dx.types.CBufRet.f32 %983, 2
  %985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %986 = extractvalue %dx.types.CBufRet.f32 %985, 0
  %987 = fmul fast float %982, %986
  %988 = fadd fast float %987, 1.000000e+00
  %989 = bitcast float %988 to i32
  %990 = sub nsw i32 2129859010, %989
  %991 = bitcast i32 %990 to float
  %992 = fmul fast float %982, %984
  %993 = fmul fast float %992, %991
  br label %994

; <label>:994                                     ; preds = %926, %837
  %995 = phi float [ %993, %926 ], [ %924, %837 ]
  %996 = fmul fast float %995, %816
  br label %997

; <label>:997                                     ; preds = %994, %801
  %998 = phi float [ %996, %994 ], [ 0.000000e+00, %801 ]
  br i1 %565, label %1124, label %999, !dx.controlflow.hints !56

; <label>:999                                     ; preds = %997
  %1000 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1001 = extractvalue %dx.types.CBufRet.i32 %1000, 0
  %1002 = icmp ne i32 %1001, 0
  %1003 = zext i1 %1002 to i32
  %1004 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1005 = extractvalue %dx.types.CBufRet.i32 %1004, 0
  %1006 = icmp eq i32 %1005, 0
  br i1 %1006, label %1040, label %1007

; <label>:1007                                    ; preds = %999
  br label %1008

; <label>:1008                                    ; preds = %1035, %1007
  %1009 = phi i32 [ %1036, %1035 ], [ 0, %1007 ]
  %1010 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1009, i32 0)  ; BufferLoad(srv,index,wot)
  %1011 = extractvalue %dx.types.ResRet.f32 %1010, 0
  %1012 = extractvalue %dx.types.ResRet.f32 %1010, 1
  %1013 = extractvalue %dx.types.ResRet.f32 %1010, 2
  %1014 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1009, i32 16)  ; BufferLoad(srv,index,wot)
  %1015 = extractvalue %dx.types.ResRet.f32 %1014, 0
  %1016 = extractvalue %dx.types.ResRet.f32 %1014, 1
  %1017 = extractvalue %dx.types.ResRet.f32 %1014, 2
  %1018 = fsub fast float %1011, %1015
  %1019 = fsub fast float %1012, %1016
  %1020 = fsub fast float %1013, %1017
  %1021 = fadd fast float %1015, %1011
  %1022 = fadd fast float %1016, %1012
  %1023 = fadd fast float %1017, %1013
  %1024 = fcmp fast olt float %442, %1018
  %1025 = fcmp fast olt float %443, %1019
  %1026 = fcmp fast olt float %444, %1020
  %1027 = or i1 %1024, %1025
  %1028 = or i1 %1026, %1027
  %1029 = fcmp fast ogt float %442, %1021
  %1030 = fcmp fast ogt float %443, %1022
  %1031 = fcmp fast ogt float %444, %1023
  %1032 = or i1 %1029, %1030
  %1033 = or i1 %1031, %1032
  %1034 = or i1 %1028, %1033
  br i1 %1034, label %1035, label %1038, !dx.controlflow.hints !57

; <label>:1035                                    ; preds = %1008
  %1036 = add nuw i32 %1009, 1
  %1037 = icmp ult i32 %1036, %1005
  br i1 %1037, label %1008, label %1038

; <label>:1038                                    ; preds = %1035, %1008
  %1039 = phi i32 [ 255, %1035 ], [ %1009, %1008 ]
  br label %1040

; <label>:1040                                    ; preds = %1038, %999
  %1041 = phi i32 [ 255, %999 ], [ %1039, %1038 ]
  %1042 = icmp eq i32 %1041, 255
  br i1 %1042, label %1048, label %1043, !dx.controlflow.hints !58

; <label>:1043                                    ; preds = %1040
  %1044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %1041, i32 156)  ; BufferLoad(srv,index,wot)
  %1045 = extractvalue %dx.types.ResRet.i32 %1044, 0
  %1046 = icmp ne i32 %1045, 0
  %1047 = zext i1 %1046 to i32
  br label %1048

; <label>:1048                                    ; preds = %1043, %1040
  %1049 = phi i32 [ %1047, %1043 ], [ %1003, %1040 ]
  %1050 = icmp eq i32 %1049, 0
  br i1 %1050, label %1051, label %1120, !dx.controlflow.hints !59

; <label>:1051                                    ; preds = %1048
  %1052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1053 = extractvalue %dx.types.CBufRet.f32 %1052, 3
  %1054 = extractvalue %dx.types.CBufRet.f32 %475, 0
  %1055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1056 = extractvalue %dx.types.CBufRet.f32 %1055, 2
  %1057 = extractvalue %dx.types.CBufRet.f32 %1055, 3
  br i1 %1042, label %1068, label %1058, !dx.controlflow.hints !60

; <label>:1058                                    ; preds = %1051
  %1059 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1041, i32 60)  ; BufferLoad(srv,index,wot)
  %1060 = extractvalue %dx.types.ResRet.f32 %1059, 0
  %1061 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1041, i32 64)  ; BufferLoad(srv,index,wot)
  %1062 = extractvalue %dx.types.ResRet.f32 %1061, 0
  %1063 = extractvalue %dx.types.ResRet.f32 %1061, 1
  %1064 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1041, i32 72)  ; BufferLoad(srv,index,wot)
  %1065 = extractvalue %dx.types.ResRet.f32 %1064, 0
  %1066 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1041, i32 96)  ; BufferLoad(srv,index,wot)
  %1067 = extractvalue %dx.types.ResRet.f32 %1066, 0
  br label %1068

; <label>:1068                                    ; preds = %1058, %1051
  %1069 = phi float [ %1060, %1058 ], [ %478, %1051 ]
  %1070 = phi float [ %1065, %1058 ], [ %476, %1051 ]
  %1071 = phi float [ %1067, %1058 ], [ %1054, %1051 ]
  %1072 = phi float [ %1062, %1058 ], [ %1056, %1051 ]
  %1073 = phi float [ %1063, %1058 ], [ %1057, %1051 ]
  %1074 = call float @dx.op.binary.f32(i32 35, float %559, float 0.000000e+00)  ; FMax(a,b)
  %1075 = call float @dx.op.binary.f32(i32 36, float %1074, float 1.000000e+00)  ; FMin(a,b)
  %1076 = call float @dx.op.unary.f32(i32 24, float %1075)  ; Sqrt(value)
  %1077 = call float @dx.op.binary.f32(i32 35, float %562, float 0x3F847AE140000000)  ; FMax(a,b)
  %1078 = fsub fast float %560, %444
  %1079 = fsub fast float %444, %561
  %1080 = call float @dx.op.binary.f32(i32 36, float %1079, float %1078)  ; FMin(a,b)
  %1081 = fdiv fast float %1080, %1077
  %1082 = call float @dx.op.unary.f32(i32 7, float %1081)  ; Saturate(value)
  %1083 = fsub fast float %444, %1070
  %1084 = fdiv fast float %1083, %1069
  %1085 = call float @dx.op.unary.f32(i32 7, float %1084)  ; Saturate(value)
  %1086 = fsub fast float 1.000000e+00, %1085
  %1087 = fmul float %1082, %1086
  %1088 = fmul float %1087, %1087
  %1089 = fmul fast float %1076, %1053
  %1090 = fmul fast float %1089, %1088
  %1091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1092 = extractvalue %dx.types.CBufRet.f32 %1091, 2
  %1093 = extractvalue %dx.types.CBufRet.f32 %1091, 1
  %1094 = fsub fast float %1090, %1093
  %1095 = fsub fast float %1092, %1093
  %1096 = fdiv fast float %1094, %1095
  %1097 = call float @dx.op.unary.f32(i32 7, float %1096)  ; Saturate(value)
  %1098 = fmul fast float %1097, %1071
  %1099 = fcmp fast ogt float %1073, 0.000000e+00
  br i1 %1099, label %1100, label %1120, !dx.controlflow.hints !61

; <label>:1100                                    ; preds = %1068
  %1101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1102 = extractvalue %dx.types.CBufRet.f32 %1101, 0
  %1103 = extractvalue %dx.types.CBufRet.f32 %1101, 1
  %1104 = extractvalue %dx.types.CBufRet.f32 %1101, 2
  %1105 = fsub fast float %442, %1102
  %1106 = fsub fast float %443, %1103
  %1107 = fsub fast float %444, %1104
  %1108 = fmul fast float %1105, %1105
  %1109 = fmul fast float %1106, %1106
  %1110 = fadd fast float %1108, %1109
  %1111 = fmul fast float %1107, %1107
  %1112 = fadd fast float %1110, %1111
  %1113 = call float @dx.op.unary.f32(i32 24, float %1112)  ; Sqrt(value)
  %1114 = fsub fast float %1113, %1072
  %1115 = fsub fast float %1073, %1072
  %1116 = fdiv fast float %1114, %1115
  %1117 = call float @dx.op.unary.f32(i32 7, float %1116)  ; Saturate(value)
  %1118 = fmul fast float %1117, %1117
  %1119 = fmul fast float %1118, %1098
  br label %1120

; <label>:1120                                    ; preds = %1100, %1068, %1048
  %1121 = phi float [ 0.000000e+00, %1048 ], [ %1119, %1100 ], [ %1098, %1068 ]
  %1122 = fmul fast float %1121, %816
  %1123 = fadd fast float %1122, %998
  br label %1124

; <label>:1124                                    ; preds = %1120, %997
  %1125 = phi float [ %1123, %1120 ], [ %998, %997 ]
  %1126 = icmp eq i32 %803, 0
  br i1 %1126, label %1158, label %1127, !dx.controlflow.hints !62

; <label>:1127                                    ; preds = %1124
  %1128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %1129 = extractvalue %dx.types.CBufRet.f32 %1128, 1
  %1130 = fsub fast float %816, %1129
  %1131 = extractvalue %dx.types.CBufRet.f32 %1128, 3
  %1132 = fmul fast float %1130, %1131
  %1133 = call float @dx.op.unary.f32(i32 7, float %1132)  ; Saturate(value)
  %1134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %1135 = extractvalue %dx.types.CBufRet.f32 %1134, 3
  %1136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1137 = extractvalue %dx.types.CBufRet.f32 %1136, 2
  %1138 = fsub fast float %1137, %804
  %1139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %1140 = extractvalue %dx.types.CBufRet.f32 %1139, 3
  %1141 = fmul fast float %1138, %1140
  %1142 = call float @dx.op.unary.f32(i32 7, float %1141)  ; Saturate(value)
  %1143 = fmul fast float %1142, %1135
  %1144 = extractvalue %dx.types.CBufRet.f32 %1139, 0
  %1145 = fsub fast float %445, %1144
  %1146 = extractvalue %dx.types.CBufRet.f32 %1139, 1
  %1147 = fmul fast float %1145, %1146
  %1148 = call float @dx.op.unary.f32(i32 7, float %1147)  ; Saturate(value)
  %1149 = fsub fast float 1.000000e+00, %1133
  %1150 = fmul fast float %1148, %1149
  %1151 = fadd fast float %1150, %1133
  %1152 = extractvalue %dx.types.CBufRet.f32 %1128, 0
  %1153 = fsub fast float %1143, %1152
  %1154 = fmul fast float %1153, %1151
  %1155 = fadd fast float %1154, %1152
  %1156 = fmul fast float %1155, %816
  %1157 = fadd fast float %1156, %1125
  br label %1158

; <label>:1158                                    ; preds = %1127, %1124
  %1159 = phi float [ %1157, %1127 ], [ %1125, %1124 ]
  %1160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1161 = extractvalue %dx.types.CBufRet.f32 %1160, 1
  %1162 = fcmp fast ogt float %1159, %1161
  br i1 %1162, label %1165, label %1163, !dx.controlflow.hints !63

; <label>:1163                                    ; preds = %1158
  %1164 = fadd fast float %816, %445
  br label %1298

; <label>:1165                                    ; preds = %1158
  %1166 = fmul fast float %1159, 0xBFF7154760000000
  %1167 = call float @dx.op.unary.f32(i32 21, float %1166)  ; Exp(value)
  %1168 = call float @dx.op.unary.f32(i32 7, float %1167)  ; Saturate(value)
  %1169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1170 = extractvalue %dx.types.CBufRet.f32 %1169, 0
  %1171 = extractvalue %dx.types.CBufRet.f32 %1169, 1
  %1172 = extractvalue %dx.types.CBufRet.f32 %1169, 2
  %1173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %1174 = extractvalue %dx.types.CBufRet.f32 %1173, 0
  %1175 = fmul fast float %1174, %1170
  %1176 = fmul fast float %1174, %1171
  %1177 = fmul fast float %1174, %1172
  %1178 = fadd fast float %1175, %442
  %1179 = fadd fast float %1176, %443
  %1180 = fadd fast float %1177, %444
  br i1 %629, label %1251, label %1181, !dx.controlflow.hints !50

; <label>:1181                                    ; preds = %1165
  %1182 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1183 = extractvalue %dx.types.CBufRet.i32 %1182, 1
  %1184 = and i32 %1183, 1
  %1185 = icmp eq i32 %1184, 0
  br i1 %1185, label %1186, label %1251, !dx.controlflow.hints !51

; <label>:1186                                    ; preds = %1181
  %1187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %1188 = extractvalue %dx.types.CBufRet.f32 %1187, 2
  %1189 = extractvalue %dx.types.CBufRet.f32 %1187, 3
  %1190 = fmul fast float %1188, %1178
  %1191 = fmul fast float %1189, %1179
  %1192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %1193 = extractvalue %dx.types.CBufRet.f32 %1192, 0
  %1194 = extractvalue %dx.types.CBufRet.f32 %1192, 1
  %1195 = fadd fast float %1190, %1193
  %1196 = fadd fast float %1191, %1194
  %1197 = call float @dx.op.unary.f32(i32 7, float %1195)  ; Saturate(value)
  %1198 = call float @dx.op.unary.f32(i32 7, float %1196)  ; Saturate(value)
  %1199 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %1197, float %1198, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1200 = extractvalue %dx.types.ResRet.f32 %1199, 0
  %1201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %1202 = extractvalue %dx.types.CBufRet.f32 %1201, 0
  %1203 = fmul fast float %1202, %1200
  %1204 = fsub fast float %1195, %1197
  %1205 = fsub fast float %1196, %1198
  %1206 = extractvalue %dx.types.CBufRet.f32 %1187, 0
  %1207 = extractvalue %dx.types.CBufRet.f32 %1187, 1
  %1208 = fmul fast float %1206, %1204
  %1209 = fmul fast float %1207, %1205
  %1210 = fmul fast float %1208, %1208
  %1211 = fmul fast float %1209, %1209
  %1212 = fadd fast float %1210, %1211
  %1213 = call float @dx.op.unary.f32(i32 24, float %1212)  ; Sqrt(value)
  %1214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1215 = extractvalue %dx.types.CBufRet.f32 %1214, 3
  %1216 = fmul fast float %1215, %1213
  %1217 = call float @dx.op.unary.f32(i32 7, float %1216)  ; Saturate(value)
  %1218 = extractvalue %dx.types.CBufRet.f32 %1214, 2
  %1219 = fsub fast float %1218, %1203
  %1220 = fmul fast float %1219, %1217
  %1221 = extractvalue %dx.types.CBufRet.f32 %1201, 1
  %1222 = fsub fast float %1180, %1203
  %1223 = fsub fast float %1222, %1221
  %1224 = fsub fast float %1223, %1220
  %1225 = extractvalue %dx.types.CBufRet.i32 %1182, 0
  %1226 = icmp eq i32 %1225, 0
  br i1 %1226, label %1245, label %1227

; <label>:1227                                    ; preds = %1186
  br label %1228

; <label>:1228                                    ; preds = %1240, %1227
  %1229 = phi i32 [ %1241, %1240 ], [ 0, %1227 ]
  %1230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1231 = extractvalue %dx.types.CBufRet.f32 %1230, 1
  %1232 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1233 = extractvalue %dx.types.CBufRet.i32 %1232, 1
  %1234 = and i32 %1233, 8
  %1235 = icmp eq i32 %1234, 0
  %1236 = fcmp fast ogt float %1231, %1224
  %1237 = or i1 %1236, %1235
  br i1 %1237, label %1238, label %1239, !dx.controlflow.hints !52

; <label>:1238                                    ; preds = %1228
  br label %1240

; <label>:1239                                    ; preds = %1228
  br label %1240

; <label>:1240                                    ; preds = %1239, %1238
  %1241 = add i32 %1229, 1
  %1242 = extractvalue %dx.types.CBufRet.i32 %1232, 0
  %1243 = icmp ult i32 %1241, %1242
  br i1 %1243, label %1228, label %1244

; <label>:1244                                    ; preds = %1240
  br label %1245

; <label>:1245                                    ; preds = %1244, %1186
  br label %1246

; <label>:1246                                    ; preds = %1246, %1245
  %1247 = phi i32 [ %1248, %1246 ], [ 0, %1245 ]
  %1248 = add nuw nsw i32 %1247, 1
  %1249 = icmp eq i32 %1248, 4
  br i1 %1249, label %1250, label %1246

; <label>:1250                                    ; preds = %1246
  br label %1251

; <label>:1251                                    ; preds = %1250, %1181, %1165
  %1252 = fsub fast float 1.000000e+00, %1168
  %1253 = fdiv fast float %1159, %816
  %1254 = fadd fast float %816, %445
  %1255 = fmul fast float %445, %445
  %1256 = fmul fast float %1254, %1254
  %1257 = fsub fast float %1255, %1256
  %1258 = fmul fast float %1257, -5.000000e-01
  %1259 = fmul fast float %1258, %1253
  %1260 = fadd fast float %1259, %440
  %1261 = fadd fast float %1159, %448
  %1262 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1263 = extractvalue %dx.types.CBufRet.i32 %1262, 0
  %1264 = icmp eq i32 %1263, 0
  br i1 %1264, label %1291, label %1265, !dx.controlflow.hints !64

; <label>:1265                                    ; preds = %1251
  %1266 = icmp ne i32 %453, 0
  %1267 = zext i1 %1266 to i32
  %1268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1269 = extractvalue %dx.types.CBufRet.f32 %1268, 2
  %1270 = extractvalue %dx.types.CBufRet.f32 %1268, 0
  %1271 = fsub fast float %1254, %1270
  %1272 = fmul fast float %1271, %1269
  %1273 = call float @dx.op.unary.f32(i32 7, float %1272)  ; Saturate(value)
  %1274 = fadd fast float %1273, -5.000000e-01
  %1275 = fmul fast float %1274, 2.000000e+00
  %1276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1277 = extractvalue %dx.types.CBufRet.f32 %1276, 2
  %1278 = fcmp fast olt float %1275, %1277
  br i1 %1278, label %1279, label %1291, !dx.controlflow.hints !65

; <label>:1279                                    ; preds = %1265
  %1280 = fmul fast float %1275, %1275
  %1281 = fmul fast float %1252, %441
  %1282 = fmul fast float %1275, %1281
  %1283 = fmul fast float %1280, %1281
  %1284 = fmul fast float %1282, %1280
  %1285 = fmul fast float %1280, %1280
  %1286 = fmul fast float %1285, %1281
  %1287 = fadd fast float %1282, %449
  %1288 = fadd fast float %1283, %450
  %1289 = fadd fast float %1284, %451
  %1290 = fadd fast float %1286, %452
  br label %1291

; <label>:1291                                    ; preds = %1279, %1265, %1251
  %1292 = phi float [ %449, %1251 ], [ %1287, %1279 ], [ %449, %1265 ]
  %1293 = phi float [ %450, %1251 ], [ %1288, %1279 ], [ %450, %1265 ]
  %1294 = phi float [ %451, %1251 ], [ %1289, %1279 ], [ %451, %1265 ]
  %1295 = phi float [ %452, %1251 ], [ %1290, %1279 ], [ %452, %1265 ]
  %1296 = phi i32 [ %453, %1251 ], [ 1, %1279 ], [ %1267, %1265 ]
  %1297 = fmul fast float %1168, %441
  br label %1298

; <label>:1298                                    ; preds = %1291, %1163
  %1299 = phi float [ %1164, %1163 ], [ %1254, %1291 ]
  %1300 = phi float [ %440, %1163 ], [ %1260, %1291 ]
  %1301 = phi float [ %441, %1163 ], [ %1297, %1291 ]
  %1302 = phi float [ %448, %1163 ], [ %1261, %1291 ]
  %1303 = phi float [ %449, %1163 ], [ %1292, %1291 ]
  %1304 = phi float [ %450, %1163 ], [ %1293, %1291 ]
  %1305 = phi float [ %451, %1163 ], [ %1294, %1291 ]
  %1306 = phi float [ %452, %1163 ], [ %1295, %1291 ]
  %1307 = phi i32 [ %453, %1163 ], [ %1296, %1291 ]
  %1308 = fmul fast float %816, %277
  %1309 = fmul fast float %816, %278
  %1310 = fmul fast float %816, %279
  %1311 = fadd fast float %1308, %442
  %1312 = fadd fast float %1309, %443
  %1313 = fadd fast float %1310, %444
  %1314 = fcmp fast olt float %1299, %413
  %1315 = extractvalue %dx.types.CBufRet.f32 %1160, 2
  %1316 = fcmp fast olt float %1315, %1301
  %1317 = and i1 %1314, %1316
  br i1 %1317, label %433, label %1318

; <label>:1318                                    ; preds = %1298
  %1319 = uitofp i32 %454 to float
  br label %1320

; <label>:1320                                    ; preds = %1318, %406
  %1321 = phi float [ 0.000000e+00, %406 ], [ %1300, %1318 ]
  %1322 = phi float [ 1.000000e+00, %406 ], [ %1301, %1318 ]
  %1323 = phi float [ 0.000000e+00, %406 ], [ %1319, %1318 ]
  %1324 = phi float [ 0.000000e+00, %406 ], [ %1302, %1318 ]
  %1325 = phi float [ 0.000000e+00, %406 ], [ %1303, %1318 ]
  %1326 = phi float [ 0.000000e+00, %406 ], [ %1304, %1318 ]
  %1327 = phi float [ 0.000000e+00, %406 ], [ %1305, %1318 ]
  %1328 = phi float [ 0.000000e+00, %406 ], [ %1306, %1318 ]
  %1329 = phi i32 [ 0, %406 ], [ %1307, %1318 ]
  %1330 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1331 = extractvalue %dx.types.CBufRet.i32 %1330, 0
  %1332 = icmp eq i32 %1331, 0
  br i1 %1332, label %1374, label %1333, !dx.controlflow.hints !66

; <label>:1333                                    ; preds = %1320
  %1334 = icmp eq i32 %1329, 0
  br i1 %1334, label %1373, label %1335, !dx.controlflow.hints !67

; <label>:1335                                    ; preds = %1333
  %1336 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1337 = extractvalue %dx.types.CBufRet.i32 %1336, 2
  %1338 = icmp eq i32 %1337, 0
  br i1 %1338, label %1345, label %1339, !dx.controlflow.hints !68

; <label>:1339                                    ; preds = %1335
  %1340 = fsub fast float 1.000000e+00, %1322
  %1341 = fdiv fast float %1325, %1340
  %1342 = fdiv fast float %1326, %1340
  %1343 = fdiv fast float %1327, %1340
  %1344 = fdiv fast float %1328, %1340
  br label %1350

; <label>:1345                                    ; preds = %1335
  %1346 = fadd fast float %1325, %1322
  %1347 = fadd fast float %1326, %1322
  %1348 = fadd fast float %1327, %1322
  %1349 = fadd fast float %1328, %1322
  br label %1350

; <label>:1350                                    ; preds = %1345, %1339
  %1351 = phi float [ %1341, %1339 ], [ %1346, %1345 ]
  %1352 = phi float [ %1342, %1339 ], [ %1347, %1345 ]
  %1353 = phi float [ %1343, %1339 ], [ %1348, %1345 ]
  %1354 = phi float [ %1344, %1339 ], [ %1349, %1345 ]
  %1355 = call float @dx.op.binary.f32(i32 35, float %1351, float -1.000000e+00)  ; FMax(a,b)
  %1356 = call float @dx.op.binary.f32(i32 35, float %1352, float -1.000000e+00)  ; FMax(a,b)
  %1357 = call float @dx.op.binary.f32(i32 35, float %1353, float -1.000000e+00)  ; FMax(a,b)
  %1358 = call float @dx.op.binary.f32(i32 35, float %1354, float -1.000000e+00)  ; FMax(a,b)
  %1359 = call float @dx.op.binary.f32(i32 36, float %1355, float 1.000000e+00)  ; FMin(a,b)
  %1360 = call float @dx.op.binary.f32(i32 36, float %1356, float 1.000000e+00)  ; FMin(a,b)
  %1361 = call float @dx.op.binary.f32(i32 36, float %1357, float 1.000000e+00)  ; FMin(a,b)
  %1362 = call float @dx.op.binary.f32(i32 36, float %1358, float 1.000000e+00)  ; FMin(a,b)
  %1363 = fmul fast float %1359, 1.500000e+00
  %1364 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %1361, float %1363)  ; FMad(a,b,c)
  %1365 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %1360, float 0.000000e+00)  ; FMad(a,b,c)
  %1366 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %1362, float %1365)  ; FMad(a,b,c)
  %1367 = fmul fast float %1359, 0x3FEBB67AE0000000
  %1368 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %1361, float %1367)  ; FMad(a,b,c)
  %1369 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1360, float 0.000000e+00)  ; FMad(a,b,c)
  %1370 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1362, float %1369)  ; FMad(a,b,c)
  %1371 = fadd fast float %1364, 5.000000e-01
  %1372 = fadd fast float %1368, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %22, i32 %23, i32 0, float %1371, float %1366, float %1372, float %1370, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1374

; <label>:1373                                    ; preds = %1333
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %22, i32 %23, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1374

; <label>:1374                                    ; preds = %1373, %1350, %1320
  %1375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %1376 = extractvalue %dx.types.CBufRet.f32 %1375, 0
  %1377 = extractvalue %dx.types.CBufRet.f32 %1375, 1
  %1378 = extractvalue %dx.types.CBufRet.f32 %1375, 2
  %1379 = call float @dx.op.dot3.f32(i32 55, float %277, float %278, float %279, float %1376, float %1377, float %1378)  ; Dot3(ax,ay,az,bx,by,bz)
  %1380 = fmul fast float %1379, %1321
  %1381 = fcmp fast ogt float %1324, 0.000000e+00
  %1382 = fdiv fast float 1.000000e+00, %1324
  %1383 = fmul fast float %1380, %1382
  %1384 = select i1 %1381, float %1383, float %288
  %1385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1386 = extractvalue %dx.types.CBufRet.f32 %1385, 0
  %1387 = extractvalue %dx.types.CBufRet.f32 %1385, 1
  %1388 = extractvalue %dx.types.CBufRet.f32 %1385, 2
  %1389 = fmul fast float %1386, %241
  %1390 = fmul fast float %1387, %241
  %1391 = fmul fast float %1388, %241
  %1392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1393 = extractvalue %dx.types.CBufRet.f32 %1392, 0
  %1394 = extractvalue %dx.types.CBufRet.f32 %1392, 1
  %1395 = extractvalue %dx.types.CBufRet.f32 %1392, 2
  %1396 = fmul fast float %1393, %242
  %1397 = fmul fast float %1394, %242
  %1398 = fmul fast float %1395, %242
  %1399 = fadd fast float %1396, %1389
  %1400 = fadd fast float %1397, %1390
  %1401 = fadd fast float %1398, %1391
  %1402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1403 = extractvalue %dx.types.CBufRet.f32 %1402, 0
  %1404 = extractvalue %dx.types.CBufRet.f32 %1402, 1
  %1405 = extractvalue %dx.types.CBufRet.f32 %1402, 2
  %1406 = fadd fast float %1399, %1403
  %1407 = fadd fast float %1400, %1404
  %1408 = fadd fast float %1401, %1405
  %1409 = fmul fast float %1406, %1384
  %1410 = fmul fast float %1407, %1384
  %1411 = fmul fast float %1408, %1384
  %1412 = call float @dx.op.dot3.f32(i32 55, float %1409, float %1410, float %1411, float %1409, float %1410, float %1411)  ; Dot3(ax,ay,az,bx,by,bz)
  %1413 = call float @dx.op.unary.f32(i32 25, float %1412)  ; Rsqrt(value)
  %1414 = fmul fast float %1413, %1412
  %1415 = fmul fast float %1413, %1409
  %1416 = fmul fast float %1413, %1410
  %1417 = fmul fast float %1413, %1411
  %1418 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1419 = extractvalue %dx.types.CBufRet.i32 %1418, 1
  %1420 = and i32 %1419, 1
  %1421 = icmp ne i32 %1420, 0
  %1422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1423 = extractvalue %dx.types.CBufRet.f32 %1422, 2
  %1424 = fcmp fast ogt float %1423, 0.000000e+00
  %1425 = and i1 %1421, %1424
  br i1 %1425, label %1426, label %1584, !dx.controlflow.hints !69

; <label>:1426                                    ; preds = %1374
  %1427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1428 = extractvalue %dx.types.CBufRet.f32 %1427, 2
  %1429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1430 = extractvalue %dx.types.CBufRet.f32 %1429, 2
  %1431 = fsub fast float %1428, %1430
  %1432 = extractvalue %dx.types.CBufRet.i32 %1418, 0
  %1433 = call i32 @dx.op.binary.i32(i32 40, i32 %1432, i32 3)  ; UMin(a,b)
  %1434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1435 = extractvalue %dx.types.CBufRet.f32 %1434, 0
  %1436 = extractvalue %dx.types.CBufRet.f32 %1434, 1
  %1437 = extractvalue %dx.types.CBufRet.f32 %1429, 0
  %1438 = extractvalue %dx.types.CBufRet.f32 %1429, 1
  %1439 = fsub fast float %1435, %1437
  %1440 = fsub fast float %1436, %1438
  %1441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1442 = extractvalue %dx.types.CBufRet.f32 %1441, 0
  %1443 = fcmp fast ogt float %1442, 0.000000e+00
  %1444 = fsub fast float -0.000000e+00, %1439
  %1445 = fsub fast float -0.000000e+00, %1440
  %1446 = call float @dx.op.dot2.f32(i32 54, float %1415, float %1416, float %1415, float %1416)  ; Dot2(ax,ay,bx,by)
  %1447 = call float @dx.op.dot2.f32(i32 54, float %1415, float %1416, float %1444, float %1445)  ; Dot2(ax,ay,bx,by)
  %1448 = fmul fast float %1447, 2.000000e+00
  %1449 = call float @dx.op.dot2.f32(i32 54, float %1444, float %1445, float %1444, float %1445)  ; Dot2(ax,ay,bx,by)
  %1450 = fmul fast float %1442, %1442
  %1451 = fsub fast float %1449, %1450
  %1452 = fmul fast float %1448, %1448
  %1453 = fmul fast float %1446, 4.000000e+00
  %1454 = fmul fast float %1453, %1451
  %1455 = fsub fast float %1452, %1454
  %1456 = fcmp fast ogt float %1455, 0.000000e+00
  br i1 %1456, label %1457, label %1472, !dx.controlflow.hints !70

; <label>:1457                                    ; preds = %1426
  %1458 = fcmp fast ogt float %1448, 0.000000e+00
  %1459 = call float @dx.op.unary.f32(i32 24, float %1455)  ; Sqrt(value)
  %1460 = fsub fast float -0.000000e+00, %1459
  %1461 = select i1 %1458, float %1459, float %1460
  %1462 = fadd fast float %1461, %1448
  %1463 = fmul float %1462, -5.000000e-01
  %1464 = fdiv fast float %1463, %1446
  %1465 = call float @dx.op.binary.f32(i32 35, float %1464, float 0.000000e+00)  ; FMax(a,b)
  %1466 = call float @dx.op.binary.f32(i32 36, float %1414, float %1465)  ; FMin(a,b)
  %1467 = fdiv fast float %1451, %1463
  %1468 = call float @dx.op.binary.f32(i32 35, float %1467, float 0.000000e+00)  ; FMax(a,b)
  %1469 = call float @dx.op.binary.f32(i32 36, float %1414, float %1468)  ; FMin(a,b)
  %1470 = call float @dx.op.binary.f32(i32 36, float %1466, float %1469)  ; FMin(a,b)
  %1471 = call float @dx.op.binary.f32(i32 35, float %1466, float %1469)  ; FMax(a,b)
  br label %1472

; <label>:1472                                    ; preds = %1457, %1426
  %1473 = phi float [ %1471, %1457 ], [ -1.000000e+00, %1426 ]
  %1474 = phi float [ %1470, %1457 ], [ -1.000000e+00, %1426 ]
  %1475 = phi i1 [ true, %1457 ], [ false, %1426 ]
  %1476 = and i1 %1443, %1475
  br i1 %1476, label %1477, label %1479, !dx.controlflow.hints !71

; <label>:1477                                    ; preds = %1472
  %1478 = fcmp fast oeq float %1474, %1473
  br i1 %1478, label %1584, label %1480, !dx.controlflow.hints !72

; <label>:1479                                    ; preds = %1472
  br i1 %1443, label %1584, label %1480, !dx.controlflow.hints !73

; <label>:1480                                    ; preds = %1479, %1477
  %1481 = phi float [ %1414, %1479 ], [ %1473, %1477 ]
  %1482 = phi float [ 0.000000e+00, %1479 ], [ %1474, %1477 ]
  %1483 = fcmp fast oeq float %1417, 0.000000e+00
  %1484 = fdiv fast float %1431, %1417
  %1485 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1484)  ; FMax(a,b)
  %1486 = select i1 %1483, float %1481, float %1485
  %1487 = call float @dx.op.binary.f32(i32 36, float %1481, float %1486)  ; FMin(a,b)
  %1488 = fcmp fast ogt float %1417, 0.000000e+00
  %1489 = fcmp fast olt float %1431, 0.000000e+00
  br i1 %1488, label %1490, label %1491, !dx.controlflow.hints !74

; <label>:1490                                    ; preds = %1480
  br i1 %1489, label %1584, label %1494, !dx.controlflow.hints !75

; <label>:1491                                    ; preds = %1480
  br i1 %1489, label %1492, label %1494, !dx.controlflow.hints !76

; <label>:1492                                    ; preds = %1491
  %1493 = call float @dx.op.binary.f32(i32 35, float %1482, float %1487)  ; FMax(a,b)
  br label %1494

; <label>:1494                                    ; preds = %1492, %1491, %1490
  %1495 = phi float [ %1493, %1492 ], [ %1482, %1491 ], [ %1482, %1490 ]
  %1496 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 0
  store float -1.000000e+00, float* %1496, align 4, !tbaa !77, !noalias !81
  %1497 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 1
  store float -1.000000e+00, float* %1497, align 4, !tbaa !77, !noalias !81
  %1498 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 2
  store float -1.000000e+00, float* %1498, align 4, !tbaa !77, !noalias !81
  %1499 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 0
  store float -1.000000e+00, float* %1499, align 4, !tbaa !77, !noalias !81
  %1500 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 1
  store float -1.000000e+00, float* %1500, align 4, !tbaa !77, !noalias !81
  %1501 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 2
  store float -1.000000e+00, float* %1501, align 4, !tbaa !77, !noalias !81
  %1502 = icmp sgt i32 %1433, 0
  br i1 %1502, label %1503, label %1561

; <label>:1503                                    ; preds = %1494
  br label %1504

; <label>:1504                                    ; preds = %1551, %1503
  %1505 = phi i32 [ %1552, %1551 ], [ 0, %1503 ]
  %1506 = add nuw i32 %1505, 171
  %1507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 %1506)  ; CBufferLoadLegacy(handle,regIndex)
  %1508 = extractvalue %dx.types.CBufRet.f32 %1507, 0
  %1509 = extractvalue %dx.types.CBufRet.f32 %1507, 1
  %1510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1511 = extractvalue %dx.types.CBufRet.f32 %1510, 0
  %1512 = extractvalue %dx.types.CBufRet.f32 %1510, 1
  %1513 = fsub fast float %1508, %1511
  %1514 = fsub fast float %1509, %1512
  %1515 = extractvalue %dx.types.CBufRet.f32 %1507, 2
  %1516 = fsub fast float -0.000000e+00, %1513
  %1517 = fsub fast float -0.000000e+00, %1514
  %1518 = call float @dx.op.dot2.f32(i32 54, float %1415, float %1416, float %1516, float %1517)  ; Dot2(ax,ay,bx,by)
  %1519 = fmul fast float %1518, 2.000000e+00
  %1520 = call float @dx.op.dot2.f32(i32 54, float %1516, float %1517, float %1516, float %1517)  ; Dot2(ax,ay,bx,by)
  %1521 = fmul fast float %1515, %1515
  %1522 = fsub fast float %1520, %1521
  %1523 = fmul fast float %1519, %1519
  %1524 = fmul fast float %1453, %1522
  %1525 = fsub fast float %1523, %1524
  %1526 = fcmp fast ogt float %1525, 0.000000e+00
  br i1 %1526, label %1527, label %1542, !dx.controlflow.hints !70

; <label>:1527                                    ; preds = %1504
  %1528 = fcmp fast ogt float %1519, 0.000000e+00
  %1529 = call float @dx.op.unary.f32(i32 24, float %1525)  ; Sqrt(value)
  %1530 = fsub fast float -0.000000e+00, %1529
  %1531 = select i1 %1528, float %1529, float %1530
  %1532 = fadd fast float %1531, %1519
  %1533 = fmul float %1532, -5.000000e-01
  %1534 = fdiv fast float %1533, %1446
  %1535 = call float @dx.op.binary.f32(i32 35, float %1534, float 0.000000e+00)  ; FMax(a,b)
  %1536 = call float @dx.op.binary.f32(i32 36, float %1481, float %1535)  ; FMin(a,b)
  %1537 = fdiv fast float %1522, %1533
  %1538 = call float @dx.op.binary.f32(i32 35, float %1537, float 0.000000e+00)  ; FMax(a,b)
  %1539 = call float @dx.op.binary.f32(i32 36, float %1481, float %1538)  ; FMin(a,b)
  %1540 = call float @dx.op.binary.f32(i32 36, float %1536, float %1539)  ; FMin(a,b)
  %1541 = call float @dx.op.binary.f32(i32 35, float %1536, float %1539)  ; FMax(a,b)
  br label %1542

; <label>:1542                                    ; preds = %1527, %1504
  %1543 = phi float [ %1541, %1527 ], [ -1.000000e+00, %1504 ]
  %1544 = phi float [ %1540, %1527 ], [ -1.000000e+00, %1504 ]
  %1545 = phi i1 [ true, %1527 ], [ false, %1504 ]
  br i1 %1545, label %1546, label %1551, !dx.controlflow.hints !92

; <label>:1546                                    ; preds = %1542
  %1547 = call float @dx.op.binary.f32(i32 35, float %1495, float %1544)  ; FMax(a,b)
  %1548 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 %1505
  store float %1547, float* %1548, align 4, !tbaa !77, !noalias !81
  %1549 = call float @dx.op.binary.f32(i32 35, float %1495, float %1543)  ; FMax(a,b)
  %1550 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 %1505
  store float %1549, float* %1550, align 4, !tbaa !77, !noalias !81
  br label %1551

; <label>:1551                                    ; preds = %1546, %1542
  %1552 = add nuw nsw i32 %1505, 1
  %1553 = icmp eq i32 %1552, %1433
  br i1 %1553, label %1554, label %1504

; <label>:1554                                    ; preds = %1551
  %1555 = load float, float* %1498, align 4, !tbaa !77, !alias.scope !93, !noalias !96
  %1556 = load float, float* %1497, align 4, !tbaa !77, !alias.scope !99, !noalias !100
  %1557 = load float, float* %1496, align 4, !tbaa !77, !alias.scope !101, !noalias !102
  %1558 = load float, float* %1501, align 4, !tbaa !77, !alias.scope !103, !noalias !106
  %1559 = load float, float* %1500, align 4, !tbaa !77, !alias.scope !109, !noalias !110
  %1560 = load float, float* %1499, align 4, !tbaa !77, !alias.scope !111, !noalias !112
  br label %1561

; <label>:1561                                    ; preds = %1554, %1494
  %1562 = phi float [ -1.000000e+00, %1494 ], [ %1560, %1554 ]
  %1563 = phi float [ -1.000000e+00, %1494 ], [ %1559, %1554 ]
  %1564 = phi float [ -1.000000e+00, %1494 ], [ %1558, %1554 ]
  %1565 = phi float [ -1.000000e+00, %1494 ], [ %1557, %1554 ]
  %1566 = phi float [ -1.000000e+00, %1494 ], [ %1556, %1554 ]
  %1567 = phi float [ -1.000000e+00, %1494 ], [ %1555, %1554 ]
  %1568 = call float @dx.op.binary.f32(i32 36, float %1566, float %1567)  ; FMin(a,b)
  %1569 = call float @dx.op.binary.f32(i32 36, float %1565, float %1568)  ; FMin(a,b)
  %1570 = call float @dx.op.binary.f32(i32 35, float %1565, float %1566)  ; FMax(a,b)
  %1571 = call float @dx.op.binary.f32(i32 36, float %1570, float %1567)  ; FMin(a,b)
  %1572 = call float @dx.op.binary.f32(i32 36, float %1565, float %1566)  ; FMin(a,b)
  %1573 = call float @dx.op.binary.f32(i32 35, float %1572, float %1571)  ; FMax(a,b)
  %1574 = call float @dx.op.binary.f32(i32 35, float %1566, float %1567)  ; FMax(a,b)
  %1575 = call float @dx.op.binary.f32(i32 35, float %1565, float %1574)  ; FMax(a,b)
  store float %1569, float* %1496, align 4, !tbaa !77, !alias.scope !101, !noalias !102
  store float %1573, float* %1497, align 4, !tbaa !77, !alias.scope !99, !noalias !100
  store float %1575, float* %1498, align 4, !tbaa !77, !alias.scope !93, !noalias !96
  %1576 = call float @dx.op.binary.f32(i32 36, float %1563, float %1564)  ; FMin(a,b)
  %1577 = call float @dx.op.binary.f32(i32 36, float %1562, float %1576)  ; FMin(a,b)
  %1578 = call float @dx.op.binary.f32(i32 35, float %1562, float %1563)  ; FMax(a,b)
  %1579 = call float @dx.op.binary.f32(i32 36, float %1578, float %1564)  ; FMin(a,b)
  %1580 = call float @dx.op.binary.f32(i32 36, float %1562, float %1563)  ; FMin(a,b)
  %1581 = call float @dx.op.binary.f32(i32 35, float %1580, float %1579)  ; FMax(a,b)
  %1582 = call float @dx.op.binary.f32(i32 35, float %1563, float %1564)  ; FMax(a,b)
  %1583 = call float @dx.op.binary.f32(i32 35, float %1562, float %1582)  ; FMax(a,b)
  store float %1577, float* %1499, align 4, !tbaa !77, !alias.scope !111, !noalias !112
  store float %1581, float* %1500, align 4, !tbaa !77, !alias.scope !109, !noalias !110
  store float %1583, float* %1501, align 4, !tbaa !77, !alias.scope !103, !noalias !106
  br label %1584

; <label>:1584                                    ; preds = %1561, %1490, %1479, %1477, %1374
  %1585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %1586 = extractvalue %dx.types.CBufRet.f32 %1585, 2
  %1587 = fmul fast float %1586, %1384
  %1588 = call float @dx.op.unary.f32(i32 7, float %1587)  ; Saturate(value)
  %1589 = fptoui float %1323 to i32
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1590 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %24
  store i32 %1589, i32 addrspace(3)* %1590, align 4, !tbaa !113
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1591 = and i32 %24, 63
  %1592 = icmp ult i32 %1591, 32
  br i1 %1592, label %1593, label %1599, !dx.controlflow.hints !115

; <label>:1593                                    ; preds = %1584
  %1594 = add i32 %24, 32
  %1595 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1594
  %1596 = load i32, i32 addrspace(3)* %1595, align 4, !tbaa !113
  %1597 = load i32, i32 addrspace(3)* %1590, align 4, !tbaa !113
  %1598 = call i32 @dx.op.binary.i32(i32 40, i32 %1597, i32 %1596)  ; UMin(a,b)
  store i32 %1598, i32 addrspace(3)* %1590, align 4, !tbaa !113
  br label %1599

; <label>:1599                                    ; preds = %1593, %1584
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1600 = icmp ult i32 %1591, 16
  br i1 %1600, label %1601, label %1607, !dx.controlflow.hints !116

; <label>:1601                                    ; preds = %1599
  %1602 = add i32 %24, 16
  %1603 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1602
  %1604 = load i32, i32 addrspace(3)* %1603, align 4, !tbaa !113
  %1605 = load i32, i32 addrspace(3)* %1590, align 4, !tbaa !113
  %1606 = call i32 @dx.op.binary.i32(i32 40, i32 %1605, i32 %1604)  ; UMin(a,b)
  store i32 %1606, i32 addrspace(3)* %1590, align 4, !tbaa !113
  br label %1607

; <label>:1607                                    ; preds = %1601, %1599
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1608 = icmp ult i32 %1591, 8
  br i1 %1608, label %1609, label %1615, !dx.controlflow.hints !117

; <label>:1609                                    ; preds = %1607
  %1610 = add i32 %24, 8
  %1611 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1610
  %1612 = load i32, i32 addrspace(3)* %1611, align 4, !tbaa !113
  %1613 = load i32, i32 addrspace(3)* %1590, align 4, !tbaa !113
  %1614 = call i32 @dx.op.binary.i32(i32 40, i32 %1613, i32 %1612)  ; UMin(a,b)
  store i32 %1614, i32 addrspace(3)* %1590, align 4, !tbaa !113
  br label %1615

; <label>:1615                                    ; preds = %1609, %1607
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1616 = icmp ult i32 %1591, 4
  br i1 %1616, label %1617, label %1623, !dx.controlflow.hints !118

; <label>:1617                                    ; preds = %1615
  %1618 = add i32 %24, 4
  %1619 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1618
  %1620 = load i32, i32 addrspace(3)* %1619, align 4, !tbaa !113
  %1621 = load i32, i32 addrspace(3)* %1590, align 4, !tbaa !113
  %1622 = call i32 @dx.op.binary.i32(i32 40, i32 %1621, i32 %1620)  ; UMin(a,b)
  store i32 %1622, i32 addrspace(3)* %1590, align 4, !tbaa !113
  br label %1623

; <label>:1623                                    ; preds = %1617, %1615
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1624 = icmp ult i32 %1591, 2
  br i1 %1624, label %1625, label %1631, !dx.controlflow.hints !119

; <label>:1625                                    ; preds = %1623
  %1626 = add i32 %24, 2
  %1627 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1626
  %1628 = load i32, i32 addrspace(3)* %1627, align 4, !tbaa !113
  %1629 = load i32, i32 addrspace(3)* %1590, align 4, !tbaa !113
  %1630 = call i32 @dx.op.binary.i32(i32 40, i32 %1629, i32 %1628)  ; UMin(a,b)
  store i32 %1630, i32 addrspace(3)* %1590, align 4, !tbaa !113
  br label %1631

; <label>:1631                                    ; preds = %1625, %1623
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1632 = icmp eq i32 %1591, 0
  br i1 %1632, label %1633, label %1639, !dx.controlflow.hints !120

; <label>:1633                                    ; preds = %1631
  %1634 = add i32 %24, 1
  %1635 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1634
  %1636 = load i32, i32 addrspace(3)* %1635, align 4, !tbaa !113
  %1637 = load i32, i32 addrspace(3)* %1590, align 4, !tbaa !113
  %1638 = call i32 @dx.op.binary.i32(i32 40, i32 %1637, i32 %1636)  ; UMin(a,b)
  store i32 %1638, i32 addrspace(3)* %1590, align 4, !tbaa !113
  br label %1639

; <label>:1639                                    ; preds = %1633, %1631
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1640 = and i32 %24, -64
  %1641 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1640
  %1642 = load i32, i32 addrspace(3)* %1641, align 4, !tbaa !113
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %1589, i32 addrspace(3)* %1590, align 4, !tbaa !113
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %1592, label %1643, label %1649, !dx.controlflow.hints !121

; <label>:1643                                    ; preds = %1639
  %1644 = add i32 %24, 32
  %1645 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1644
  %1646 = load i32, i32 addrspace(3)* %1645, align 4, !tbaa !113
  %1647 = load i32, i32 addrspace(3)* %1590, align 4, !tbaa !113
  %1648 = call i32 @dx.op.binary.i32(i32 39, i32 %1647, i32 %1646)  ; UMax(a,b)
  store i32 %1648, i32 addrspace(3)* %1590, align 4, !tbaa !113
  br label %1649

; <label>:1649                                    ; preds = %1643, %1639
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1600, label %1650, label %1656, !dx.controlflow.hints !122

; <label>:1650                                    ; preds = %1649
  %1651 = add i32 %24, 16
  %1652 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1651
  %1653 = load i32, i32 addrspace(3)* %1652, align 4, !tbaa !113
  %1654 = load i32, i32 addrspace(3)* %1590, align 4, !tbaa !113
  %1655 = call i32 @dx.op.binary.i32(i32 39, i32 %1654, i32 %1653)  ; UMax(a,b)
  store i32 %1655, i32 addrspace(3)* %1590, align 4, !tbaa !113
  br label %1656

; <label>:1656                                    ; preds = %1650, %1649
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1608, label %1657, label %1663, !dx.controlflow.hints !123

; <label>:1657                                    ; preds = %1656
  %1658 = add i32 %24, 8
  %1659 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1658
  %1660 = load i32, i32 addrspace(3)* %1659, align 4, !tbaa !113
  %1661 = load i32, i32 addrspace(3)* %1590, align 4, !tbaa !113
  %1662 = call i32 @dx.op.binary.i32(i32 39, i32 %1661, i32 %1660)  ; UMax(a,b)
  store i32 %1662, i32 addrspace(3)* %1590, align 4, !tbaa !113
  br label %1663

; <label>:1663                                    ; preds = %1657, %1656
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1616, label %1664, label %1670, !dx.controlflow.hints !124

; <label>:1664                                    ; preds = %1663
  %1665 = add i32 %24, 4
  %1666 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1665
  %1667 = load i32, i32 addrspace(3)* %1666, align 4, !tbaa !113
  %1668 = load i32, i32 addrspace(3)* %1590, align 4, !tbaa !113
  %1669 = call i32 @dx.op.binary.i32(i32 39, i32 %1668, i32 %1667)  ; UMax(a,b)
  store i32 %1669, i32 addrspace(3)* %1590, align 4, !tbaa !113
  br label %1670

; <label>:1670                                    ; preds = %1664, %1663
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1624, label %1671, label %1677, !dx.controlflow.hints !125

; <label>:1671                                    ; preds = %1670
  %1672 = add i32 %24, 2
  %1673 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1672
  %1674 = load i32, i32 addrspace(3)* %1673, align 4, !tbaa !113
  %1675 = load i32, i32 addrspace(3)* %1590, align 4, !tbaa !113
  %1676 = call i32 @dx.op.binary.i32(i32 39, i32 %1675, i32 %1674)  ; UMax(a,b)
  store i32 %1676, i32 addrspace(3)* %1590, align 4, !tbaa !113
  br label %1677

; <label>:1677                                    ; preds = %1671, %1670
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1632, label %1678, label %1684, !dx.controlflow.hints !126

; <label>:1678                                    ; preds = %1677
  %1679 = add i32 %24, 1
  %1680 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1679
  %1681 = load i32, i32 addrspace(3)* %1680, align 4, !tbaa !113
  %1682 = load i32, i32 addrspace(3)* %1590, align 4, !tbaa !113
  %1683 = call i32 @dx.op.binary.i32(i32 39, i32 %1682, i32 %1681)  ; UMax(a,b)
  store i32 %1683, i32 addrspace(3)* %1590, align 4, !tbaa !113
  br label %1684

; <label>:1684                                    ; preds = %1678, %1677
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1685 = load i32, i32 addrspace(3)* %1641, align 4, !tbaa !113
  %1686 = uitofp i32 %1685 to float
  %1687 = uitofp i32 %1642 to float
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %22, i32 %23, i32 undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1689 = extractvalue %dx.types.CBufRet.f32 %1688, 0
  %1690 = fmul fast float %1689, %1323
  %1691 = fmul fast float %1689, %1686
  %1692 = fmul fast float %1689, %1687
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %22, i32 %23, i32 undef, float %1690, float %1691, float %1692, float %1690, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %22, i32 %23, i32 undef, float %1588, float %1588, float %1588, float %1588, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 27, i32 1, i32 2, i32 0, !7}
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
!33 = !{void ()* @cs_fog_raymarching_clouds_particles_brfog, !"cs_fog_raymarching_clouds_particles_brfog", null, !4, !34}
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
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.unroll.disable"}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 1}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 1}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 1}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 2}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 2}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 2}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = !{!78, !78, i64 0}
!78 = !{!"float", !79, i64 0}
!79 = !{!"omnipotent char", !80, i64 0}
!80 = !{!"Simple C/C++ TBAA"}
!81 = !{!82, !84, !86, !87, !89, !90, !91}
!82 = distinct !{!82, !83, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!83 = distinct !{!83, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!84 = distinct !{!84, !85, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!85 = distinct !{!85, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!86 = distinct !{!86, !85, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!87 = distinct !{!87, !88, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %scattering"}
!88 = distinct !{!88, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z"}
!89 = distinct !{!89, !88, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %transmission"}
!90 = distinct !{!90, !88, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %depthDensityWeighted"}
!91 = distinct !{!91, !88, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %rawShadowmapData"}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 2}
!93 = !{!94}
!94 = distinct !{!94, !95, !"\01?sort@@YAXAIAM00@Z: %c"}
!95 = distinct !{!95, !"\01?sort@@YAXAIAM00@Z"}
!96 = !{!97, !98, !82, !84, !86, !87, !89, !90, !91}
!97 = distinct !{!97, !95, !"\01?sort@@YAXAIAM00@Z: %a"}
!98 = distinct !{!98, !95, !"\01?sort@@YAXAIAM00@Z: %b"}
!99 = !{!98}
!100 = !{!97, !94, !82, !84, !86, !87, !89, !90, !91}
!101 = !{!97}
!102 = !{!98, !94, !82, !84, !86, !87, !89, !90, !91}
!103 = !{!104}
!104 = distinct !{!104, !105, !"\01?sort@@YAXAIAM00@Z: %c"}
!105 = distinct !{!105, !"\01?sort@@YAXAIAM00@Z"}
!106 = !{!107, !108, !82, !84, !86, !87, !89, !90, !91}
!107 = distinct !{!107, !105, !"\01?sort@@YAXAIAM00@Z: %a"}
!108 = distinct !{!108, !105, !"\01?sort@@YAXAIAM00@Z: %b"}
!109 = !{!108}
!110 = !{!107, !104, !82, !84, !86, !87, !89, !90, !91}
!111 = !{!107}
!112 = !{!108, !104, !82, !84, !86, !87, !89, !90, !91}
!113 = !{!114, !114, i64 0}
!114 = !{!"int", !79, i64 0}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 2}
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

