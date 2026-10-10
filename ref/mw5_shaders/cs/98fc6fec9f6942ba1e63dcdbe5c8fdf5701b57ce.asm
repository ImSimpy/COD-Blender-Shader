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
; shader hash: 7423b4300e5c43a97b9bee89d795cb38
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

define void @cs_fog_raymarching_air_clouds_particles_brfog() {
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
  %235 = fsub fast float -0.000000e+00, %234
  %236 = extractvalue %dx.types.CBufRet.f32 %233, 1
  %237 = fsub fast float -0.000000e+00, %236
  %238 = extractvalue %dx.types.CBufRet.f32 %233, 2
  %239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %240 = extractvalue %dx.types.CBufRet.f32 %239, 1
  %241 = fmul fast float %231, 2.000000e+00
  %242 = fmul fast float %232, 2.000000e+00
  %243 = fsub fast float 1.000000e+00, %241
  %244 = fsub fast float 1.000000e+00, %242
  %245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %246 = extractvalue %dx.types.CBufRet.f32 %245, 0
  %247 = extractvalue %dx.types.CBufRet.f32 %245, 1
  %248 = extractvalue %dx.types.CBufRet.f32 %245, 2
  %249 = fmul fast float %246, %243
  %250 = fmul fast float %247, %243
  %251 = fmul fast float %248, %243
  %252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %253 = extractvalue %dx.types.CBufRet.f32 %252, 0
  %254 = extractvalue %dx.types.CBufRet.f32 %252, 1
  %255 = extractvalue %dx.types.CBufRet.f32 %252, 2
  %256 = fmul fast float %253, %244
  %257 = fmul fast float %254, %244
  %258 = fmul fast float %255, %244
  %259 = fadd fast float %256, %249
  %260 = fadd fast float %257, %250
  %261 = fadd fast float %258, %251
  %262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %263 = extractvalue %dx.types.CBufRet.f32 %262, 0
  %264 = extractvalue %dx.types.CBufRet.f32 %262, 1
  %265 = extractvalue %dx.types.CBufRet.f32 %262, 2
  %266 = fadd fast float %259, %263
  %267 = fadd fast float %260, %264
  %268 = fadd fast float %261, %265
  %269 = fmul fast float %266, %240
  %270 = fmul fast float %267, %240
  %271 = fmul fast float %268, %240
  %272 = fmul fast float %269, %269
  %273 = fmul fast float %270, %270
  %274 = fadd fast float %272, %273
  %275 = fmul fast float %271, %271
  %276 = fadd fast float %274, %275
  %277 = call float @dx.op.unary.f32(i32 24, float %276)  ; Sqrt(value)
  %278 = fdiv fast float 1.000000e+00, %277
  %279 = fmul fast float %269, %278
  %280 = fmul fast float %270, %278
  %281 = fmul fast float %271, %278
  %282 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %37, i32 %38, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %283 = extractvalue %dx.types.ResRet.f32 %282, 0
  %284 = fcmp fast ogt float %283, -1.000000e+00
  %285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %286 = extractvalue %dx.types.CBufRet.f32 %285, 1
  %287 = select i1 %284, float %286, float 1.000000e+00
  %288 = fadd fast float %283, 1.000000e+00
  %289 = fmul fast float %287, %288
  %290 = call float @dx.op.unary.f32(i32 6, float %289)  ; FAbs(value)
  %291 = fdiv fast float 1.000000e+00, %240
  %292 = fmul fast float %291, %277
  %293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %294 = extractvalue %dx.types.CBufRet.f32 %293, 1
  %295 = fmul fast float %294, %292
  %296 = fmul fast float %292, %290
  %297 = extractvalue %dx.types.CBufRet.f32 %285, 3
  %298 = fcmp fast oge float %290, %297
  %299 = call float @dx.op.binary.f32(i32 36, float %296, float %295)  ; FMin(a,b)
  %300 = select i1 %298, float %295, float %299
  %301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %302 = extractvalue %dx.types.CBufRet.f32 %301, 3
  %303 = fsub fast float %302, %238
  %304 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %235, float %237, float %303)  ; Dot3(ax,ay,az,bx,by,bz)
  %305 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %279, float %280, float %281)  ; Dot3(ax,ay,az,bx,by,bz)
  %306 = fdiv fast float 1.000000e+00, %305
  %307 = fmul fast float %306, %304
  %308 = fcmp fast olt float %307, 0.000000e+00
  %309 = fcmp fast ogt float %281, 0.000000e+00
  %310 = and i1 %309, %308
  br i1 %310, label %315, label %311, !dx.controlflow.hints !37

; <label>:311                                     ; preds = %206
  %312 = fcmp fast olt float %281, 0.000000e+00
  br i1 %312, label %313, label %315, !dx.controlflow.hints !38

; <label>:313                                     ; preds = %311
  %314 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %307)  ; FMax(a,b)
  br label %315

; <label>:315                                     ; preds = %313, %311, %206
  %316 = phi float [ 0.000000e+00, %206 ], [ %314, %313 ], [ 0.000000e+00, %311 ]
  %317 = phi float [ 0.000000e+00, %206 ], [ 0x47EFFFFFE0000000, %313 ], [ %307, %311 ]
  %318 = fcmp fast oeq float %317, 0.000000e+00
  br i1 %318, label %322, label %319, !dx.controlflow.hints !39

; <label>:319                                     ; preds = %315
  %320 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %316)  ; FMin(a,b)
  %321 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %317)  ; FMax(a,b)
  br label %322

; <label>:322                                     ; preds = %319, %315
  %323 = phi i32 [ 1, %319 ], [ 0, %315 ]
  %324 = phi float [ %321, %319 ], [ -1.000000e+00, %315 ]
  %325 = phi float [ %320, %319 ], [ 0x47EFFFFFE0000000, %315 ]
  %326 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %327 = extractvalue %dx.types.CBufRet.i32 %326, 3
  %328 = icmp eq i32 %327, 0
  %329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %330 = extractvalue %dx.types.CBufRet.f32 %329, 2
  %331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %332 = extractvalue %dx.types.CBufRet.f32 %331, 2
  %333 = fsub fast float %330, %238
  %334 = fadd fast float %333, %332
  br i1 %328, label %342, label %335, !dx.controlflow.hints !40

; <label>:335                                     ; preds = %322
  %336 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %235, float %237, float %334)  ; Dot3(ax,ay,az,bx,by,bz)
  %337 = fmul fast float %306, %336
  %338 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %235, float %237, float %333)  ; Dot3(ax,ay,az,bx,by,bz)
  %339 = fmul fast float %306, %338
  %340 = call float @dx.op.binary.f32(i32 36, float %337, float %339)  ; FMin(a,b)
  %341 = call float @dx.op.binary.f32(i32 35, float %337, float %339)  ; FMax(a,b)
  br label %375

; <label>:342                                     ; preds = %322
  %343 = fdiv fast float 1.000000e+00, %279
  %344 = fdiv fast float 1.000000e+00, %280
  %345 = fdiv fast float 1.000000e+00, %281
  %346 = extractvalue %dx.types.CBufRet.f32 %329, 0
  %347 = extractvalue %dx.types.CBufRet.f32 %329, 1
  %348 = extractvalue %dx.types.CBufRet.f32 %331, 0
  %349 = extractvalue %dx.types.CBufRet.f32 %331, 1
  %350 = fsub fast float %346, %234
  %351 = fmul fast float %350, %343
  %352 = fadd fast float %350, %348
  %353 = fmul fast float %352, %343
  %354 = call float @dx.op.binary.f32(i32 36, float %351, float %353)  ; FMin(a,b)
  %355 = call float @dx.op.binary.f32(i32 35, float %351, float %353)  ; FMax(a,b)
  %356 = fsub fast float %347, %236
  %357 = fmul fast float %356, %344
  %358 = fadd fast float %356, %349
  %359 = fmul fast float %358, %344
  %360 = call float @dx.op.binary.f32(i32 36, float %357, float %359)  ; FMin(a,b)
  %361 = call float @dx.op.binary.f32(i32 35, float %354, float %360)  ; FMax(a,b)
  %362 = call float @dx.op.binary.f32(i32 35, float %357, float %359)  ; FMax(a,b)
  %363 = call float @dx.op.binary.f32(i32 36, float %355, float %362)  ; FMin(a,b)
  %364 = fmul fast float %333, %345
  %365 = fmul fast float %334, %345
  %366 = call float @dx.op.binary.f32(i32 36, float %364, float %365)  ; FMin(a,b)
  %367 = call float @dx.op.binary.f32(i32 35, float %361, float %366)  ; FMax(a,b)
  %368 = call float @dx.op.binary.f32(i32 35, float %364, float %365)  ; FMax(a,b)
  %369 = call float @dx.op.binary.f32(i32 36, float %363, float %368)  ; FMin(a,b)
  %370 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %367)  ; FMax(a,b)
  %371 = fcmp fast ult float %369, %370
  br i1 %371, label %375, label %372, !dx.controlflow.hints !41

; <label>:372                                     ; preds = %342
  %373 = call float @dx.op.binary.f32(i32 36, float %367, float %369)  ; FMin(a,b)
  %374 = call float @dx.op.binary.f32(i32 35, float %367, float %369)  ; FMax(a,b)
  br label %375

; <label>:375                                     ; preds = %372, %342, %335
  %376 = phi float [ %340, %335 ], [ %373, %372 ], [ 0.000000e+00, %342 ]
  %377 = phi float [ %341, %335 ], [ %374, %372 ], [ 0.000000e+00, %342 ]
  %378 = fcmp fast oeq float %377, 0.000000e+00
  br i1 %378, label %382, label %379, !dx.controlflow.hints !42

; <label>:379                                     ; preds = %375
  %380 = call float @dx.op.binary.f32(i32 36, float %325, float %376)  ; FMin(a,b)
  %381 = call float @dx.op.binary.f32(i32 35, float %324, float %377)  ; FMax(a,b)
  br label %382

; <label>:382                                     ; preds = %379, %375
  %383 = phi i32 [ 1, %379 ], [ 0, %375 ]
  %384 = phi float [ %381, %379 ], [ %324, %375 ]
  %385 = phi float [ %380, %379 ], [ %325, %375 ]
  %386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %387 = extractvalue %dx.types.CBufRet.f32 %386, 3
  %388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %389 = extractvalue %dx.types.CBufRet.f32 %388, 0
  %390 = fsub fast float %387, %238
  %391 = fadd fast float %390, %389
  %392 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %235, float %237, float %391)  ; Dot3(ax,ay,az,bx,by,bz)
  %393 = fmul fast float %306, %392
  %394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %395 = extractvalue %dx.types.CBufRet.f32 %394, 2
  %396 = fsub fast float %395, %238
  %397 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %235, float %237, float %396)  ; Dot3(ax,ay,az,bx,by,bz)
  %398 = fmul fast float %306, %397
  %399 = call float @dx.op.binary.f32(i32 36, float %393, float %398)  ; FMin(a,b)
  %400 = call float @dx.op.binary.f32(i32 35, float %393, float %398)  ; FMax(a,b)
  %401 = call float @dx.op.binary.f32(i32 36, float %385, float %399)  ; FMin(a,b)
  %402 = call float @dx.op.binary.f32(i32 35, float %384, float %400)  ; FMax(a,b)
  %403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %404 = extractvalue %dx.types.CBufRet.f32 %403, 2
  %405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %406 = extractvalue %dx.types.CBufRet.f32 %405, 3
  %407 = fsub fast float %404, %238
  %408 = fadd fast float %407, %406
  %409 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %235, float %237, float %408)  ; Dot3(ax,ay,az,bx,by,bz)
  %410 = fmul fast float %306, %409
  %411 = fcmp fast olt float %410, 0.000000e+00
  %412 = and i1 %309, %411
  br i1 %412, label %417, label %413, !dx.controlflow.hints !43

; <label>:413                                     ; preds = %382
  %414 = fcmp fast olt float %281, 0.000000e+00
  br i1 %414, label %415, label %417, !dx.controlflow.hints !44

; <label>:415                                     ; preds = %413
  %416 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %410)  ; FMax(a,b)
  br label %417

; <label>:417                                     ; preds = %415, %413, %382
  %418 = phi float [ 0.000000e+00, %382 ], [ %416, %415 ], [ 0.000000e+00, %413 ]
  %419 = phi float [ 0.000000e+00, %382 ], [ 0x47EFFFFFE0000000, %415 ], [ %410, %413 ]
  %420 = fcmp fast oeq float %419, 0.000000e+00
  br i1 %420, label %424, label %421, !dx.controlflow.hints !45

; <label>:421                                     ; preds = %417
  %422 = call float @dx.op.binary.f32(i32 36, float %401, float %418)  ; FMin(a,b)
  %423 = call float @dx.op.binary.f32(i32 35, float %402, float %419)  ; FMax(a,b)
  br label %424

; <label>:424                                     ; preds = %421, %417
  %425 = phi i32 [ 1, %421 ], [ 0, %417 ]
  %426 = phi float [ %423, %421 ], [ %402, %417 ]
  %427 = phi float [ %422, %421 ], [ %401, %417 ]
  %428 = fdiv fast float 1.000000e+00, %279
  %429 = fdiv fast float 1.000000e+00, %280
  %430 = fdiv fast float 1.000000e+00, %281
  %431 = call float @dx.op.binary.f32(i32 36, float %300, float %426)  ; FMin(a,b)
  %432 = call float @dx.op.binary.f32(i32 35, float %277, float %427)  ; FMax(a,b)
  %433 = extractvalue %dx.types.CBufRet.f32 %301, 0
  %434 = fmul fast float %223, 2.000000e+00
  %435 = fadd fast float %434, -1.000000e+00
  %436 = fmul fast float %433, %435
  %437 = fadd fast float %436, %432
  %438 = fcmp fast olt float %437, %431
  %439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %440 = extractvalue %dx.types.CBufRet.f32 %439, 2
  %441 = fcmp fast olt float %440, 1.000000e+00
  %442 = and i1 %441, %438
  br i1 %442, label %443, label %1402

; <label>:443                                     ; preds = %424
  %444 = fmul fast float %437, %281
  %445 = fadd fast float %444, %238
  %446 = fmul fast float %437, %280
  %447 = fadd fast float %446, %236
  %448 = fmul fast float %437, %279
  %449 = fadd fast float %448, %234
  br label %450

; <label>:450                                     ; preds = %1380, %443
  %451 = phi i32 [ %836, %1380 ], [ undef, %443 ]
  %452 = phi float [ %838, %1380 ], [ undef, %443 ]
  %453 = phi float [ %578, %1380 ], [ undef, %443 ]
  %454 = phi float [ %579, %1380 ], [ undef, %443 ]
  %455 = phi float [ %580, %1380 ], [ undef, %443 ]
  %456 = phi float [ %581, %1380 ], [ undef, %443 ]
  %457 = phi float [ %1382, %1380 ], [ 0.000000e+00, %443 ]
  %458 = phi float [ %1383, %1380 ], [ 1.000000e+00, %443 ]
  %459 = phi float [ %1393, %1380 ], [ %449, %443 ]
  %460 = phi float [ %1394, %1380 ], [ %447, %443 ]
  %461 = phi float [ %1395, %1380 ], [ %445, %443 ]
  %462 = phi float [ %1381, %1380 ], [ %437, %443 ]
  %463 = phi i32 [ %473, %1380 ], [ 0, %443 ]
  %464 = phi i32 [ %583, %1380 ], [ 10, %443 ]
  %465 = phi float [ %1384, %1380 ], [ 0.000000e+00, %443 ]
  %466 = phi float [ %1385, %1380 ], [ 0.000000e+00, %443 ]
  %467 = phi float [ %1386, %1380 ], [ 0.000000e+00, %443 ]
  %468 = phi float [ %1387, %1380 ], [ 0.000000e+00, %443 ]
  %469 = phi float [ %1388, %1380 ], [ 0.000000e+00, %443 ]
  %470 = phi i32 [ %1389, %1380 ], [ 0, %443 ]
  %471 = fsub fast float -0.000000e+00, %460
  %472 = fsub fast float -0.000000e+00, %459
  %473 = add i32 %463, 1
  %474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %475 = extractvalue %dx.types.CBufRet.f32 %474, 0
  %476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %477 = extractvalue %dx.types.CBufRet.f32 %476, 0
  %478 = extractvalue %dx.types.CBufRet.f32 %476, 1
  %479 = fsub fast float %459, %477
  %480 = fsub fast float %460, %478
  %481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %482 = extractvalue %dx.types.CBufRet.f32 %481, 2
  %483 = extractvalue %dx.types.CBufRet.f32 %481, 3
  %484 = fmul fast float %479, %482
  %485 = fmul fast float %480, %483
  %486 = call float @dx.op.binary.f32(i32 36, float %484, float %485)  ; FMin(a,b)
  %487 = fcmp fast olt float %486, 0.000000e+00
  %488 = call float @dx.op.binary.f32(i32 35, float %484, float %485)  ; FMax(a,b)
  %489 = fcmp fast ogt float %488, 1.000000e+00
  %490 = or i1 %487, %489
  %491 = extractvalue %dx.types.CBufRet.f32 %476, 2
  %492 = fcmp fast olt float %461, %491
  %493 = or i1 %490, %492
  %494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %495 = extractvalue %dx.types.CBufRet.f32 %494, 3
  %496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %497 = extractvalue %dx.types.CBufRet.f32 %496, 0
  %498 = fadd fast float %497, %495
  %499 = fcmp fast ogt float %461, %498
  %500 = or i1 %493, %499
  br i1 %500, label %501, label %530, !dx.controlflow.hints !46

; <label>:501                                     ; preds = %450
  %502 = extractvalue %dx.types.CBufRet.f32 %481, 0
  %503 = extractvalue %dx.types.CBufRet.f32 %481, 1
  %504 = fsub fast float %477, %459
  %505 = fmul fast float %504, %428
  %506 = fadd fast float %504, %502
  %507 = fmul fast float %506, %428
  %508 = call float @dx.op.binary.f32(i32 36, float %505, float %507)  ; FMin(a,b)
  %509 = call float @dx.op.binary.f32(i32 35, float %505, float %507)  ; FMax(a,b)
  %510 = fsub fast float %478, %460
  %511 = fmul fast float %510, %429
  %512 = fadd fast float %510, %503
  %513 = fmul fast float %512, %429
  %514 = call float @dx.op.binary.f32(i32 36, float %511, float %513)  ; FMin(a,b)
  %515 = call float @dx.op.binary.f32(i32 35, float %508, float %514)  ; FMax(a,b)
  %516 = call float @dx.op.binary.f32(i32 35, float %511, float %513)  ; FMax(a,b)
  %517 = call float @dx.op.binary.f32(i32 36, float %509, float %516)  ; FMin(a,b)
  %518 = fsub fast float %491, %461
  %519 = fmul fast float %518, %430
  %520 = fsub fast float %495, %461
  %521 = fadd fast float %520, %497
  %522 = fmul fast float %521, %430
  %523 = call float @dx.op.binary.f32(i32 36, float %519, float %522)  ; FMin(a,b)
  %524 = call float @dx.op.binary.f32(i32 35, float %515, float %523)  ; FMax(a,b)
  %525 = call float @dx.op.binary.f32(i32 35, float %519, float %522)  ; FMax(a,b)
  %526 = call float @dx.op.binary.f32(i32 36, float %517, float %525)  ; FMin(a,b)
  %527 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %524)  ; FMax(a,b)
  %528 = fcmp fast oge float %526, %527
  %529 = select i1 %528, float %524, float 1.000000e+07
  br label %576

; <label>:530                                     ; preds = %450
  %531 = fsub fast float 1.000000e+00, %485
  %532 = icmp eq i32 %464, 0
  br i1 %532, label %561, label %533

; <label>:533                                     ; preds = %530
  br label %534

; <label>:534                                     ; preds = %557, %533
  %535 = phi i32 [ %558, %557 ], [ %464, %533 ]
  %536 = uitofp i32 %535 to float
  %537 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %19, float %484, float %531, float undef, float undef, i32 0, i32 0, i32 undef, float %536)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %538 = extractvalue %dx.types.ResRet.f32 %537, 0
  %539 = extractvalue %dx.types.ResRet.f32 %537, 1
  %540 = extractvalue %dx.types.ResRet.f32 %537, 2
  %541 = fcmp fast oeq float %538, 0.000000e+00
  %542 = fcmp ule float %461, %540
  %543 = fcmp uge float %461, %539
  %544 = or i1 %543, %542
  %545 = or i1 %541, %544
  br i1 %545, label %546, label %557, !dx.controlflow.hints !47

; <label>:546                                     ; preds = %534
  %547 = extractvalue %dx.types.ResRet.f32 %537, 3
  %548 = extractvalue %dx.types.CBufRet.f32 %481, 0
  %549 = and i32 %535, 31
  %550 = lshr i32 1024, %549
  %551 = uitofp i32 %550 to float
  %552 = fdiv fast float %548, %551
  %553 = add i32 %535, 1
  %554 = uitofp i32 %553 to float
  %555 = call float @dx.op.binary.f32(i32 36, float 1.000000e+01, float %554)  ; FMin(a,b)
  %556 = fptosi float %555 to i32
  br label %576

; <label>:557                                     ; preds = %534
  %558 = add i32 %535, -1
  %559 = icmp eq i32 %558, 0
  br i1 %559, label %560, label %534, !llvm.loop !48

; <label>:560                                     ; preds = %557
  br label %561

; <label>:561                                     ; preds = %560, %530
  %562 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %484, float %531, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %563 = extractvalue %dx.types.ResRet.f32 %562, 0
  %564 = extractvalue %dx.types.ResRet.f32 %562, 1
  %565 = extractvalue %dx.types.ResRet.f32 %562, 2
  %566 = extractvalue %dx.types.ResRet.f32 %562, 3
  %567 = extractvalue %dx.types.CBufRet.f32 %481, 0
  %568 = fmul fast float %567, 9.765625e-04
  %569 = fcmp fast oeq float %563, 0.000000e+00
  %570 = fcmp ule float %461, %565
  %571 = fcmp uge float %461, %564
  %572 = or i1 %571, %570
  %573 = or i1 %569, %572
  %574 = zext i1 %573 to i32
  %575 = xor i32 %574, 1
  br label %576

; <label>:576                                     ; preds = %561, %546, %501
  %577 = phi float [ %529, %501 ], [ %552, %546 ], [ %568, %561 ]
  %578 = phi float [ %453, %501 ], [ %538, %546 ], [ %563, %561 ]
  %579 = phi float [ %454, %501 ], [ %539, %546 ], [ %564, %561 ]
  %580 = phi float [ %455, %501 ], [ %540, %546 ], [ %565, %561 ]
  %581 = phi float [ %456, %501 ], [ %547, %546 ], [ %566, %561 ]
  %582 = phi i32 [ 0, %501 ], [ 0, %546 ], [ %575, %561 ]
  %583 = phi i32 [ 10, %501 ], [ %556, %546 ], [ 1, %561 ]
  %584 = icmp eq i32 %582, 0
  %585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %586 = extractvalue %dx.types.CBufRet.f32 %585, 2
  %587 = call float @dx.op.binary.f32(i32 35, float %577, float %586)  ; FMax(a,b)
  %588 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %587)  ; FMin(a,b)
  %589 = icmp eq i32 %323, 0
  br i1 %589, label %602, label %590, !dx.controlflow.hints !50

; <label>:590                                     ; preds = %576
  %591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %592 = extractvalue %dx.types.CBufRet.f32 %591, 3
  %593 = extractvalue %dx.types.CBufRet.f32 %591, 2
  %594 = fmul fast float %592, %462
  %595 = fdiv fast float %594, %431
  %596 = fadd fast float %595, 1.000000e+00
  %597 = call float @dx.op.unary.f32(i32 23, float %596)  ; Log(value)
  %598 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %597)  ; FMin(a,b)
  %599 = fmul fast float %593, %431
  %600 = fmul fast float %599, %598
  %601 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %600)  ; FMin(a,b)
  br label %602

; <label>:602                                     ; preds = %590, %576
  %603 = phi float [ %601, %590 ], [ 0x47EFFFFFE0000000, %576 ]
  %604 = icmp eq i32 %383, 0
  br i1 %604, label %660, label %605, !dx.controlflow.hints !51

; <label>:605                                     ; preds = %602
  %606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %607 = extractvalue %dx.types.CBufRet.f32 %606, 0
  %608 = extractvalue %dx.types.CBufRet.f32 %606, 1
  %609 = extractvalue %dx.types.CBufRet.f32 %606, 2
  %610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %611 = extractvalue %dx.types.CBufRet.f32 %610, 0
  %612 = extractvalue %dx.types.CBufRet.f32 %610, 1
  %613 = extractvalue %dx.types.CBufRet.f32 %610, 2
  %614 = fsub fast float %459, %611
  %615 = fsub fast float %460, %612
  %616 = fsub fast float %461, %613
  %617 = fmul fast float %614, %607
  %618 = fmul fast float %615, %608
  %619 = fmul fast float %616, %609
  %620 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %621 = extractvalue %dx.types.CBufRet.i32 %620, 3
  %622 = icmp eq i32 %621, 0
  br i1 %622, label %626, label %623, !dx.controlflow.hints !52

; <label>:623                                     ; preds = %605
  %624 = call float @dx.op.unary.f32(i32 22, float %617)  ; Frc(value)
  %625 = call float @dx.op.unary.f32(i32 22, float %618)  ; Frc(value)
  br label %626

; <label>:626                                     ; preds = %623, %605
  %627 = phi float [ %624, %623 ], [ %617, %605 ]
  %628 = phi float [ %625, %623 ], [ %618, %605 ]
  %629 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %16, float %627, float %628, float %619, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %630 = extractvalue %dx.types.ResRet.f32 %629, 0
  %631 = fmul fast float %630, 2.000000e+00
  %632 = fadd fast float %631, -1.000000e+00
  %633 = extractvalue %dx.types.CBufRet.f32 %606, 3
  %634 = fmul fast float %632, %633
  %635 = fcmp fast olt float %634, 0.000000e+00
  %636 = fcmp fast oge float %619, 0.000000e+00
  %637 = fcmp fast ole float %619, 1.000000e+00
  br i1 %622, label %640, label %638, !dx.controlflow.hints !53

; <label>:638                                     ; preds = %626
  %639 = and i1 %636, %637
  br label %650

; <label>:640                                     ; preds = %626
  %641 = fcmp fast oge float %617, 0.000000e+00
  %642 = fcmp fast oge float %618, 0.000000e+00
  %643 = and i1 %641, %642
  %644 = and i1 %636, %643
  %645 = fcmp fast ole float %617, 1.000000e+00
  %646 = fcmp fast ole float %618, 1.000000e+00
  %647 = and i1 %645, %646
  %648 = and i1 %637, %647
  %649 = and i1 %644, %648
  br label %650

; <label>:650                                     ; preds = %640, %638
  %651 = phi i1 [ %639, %638 ], [ %649, %640 ]
  %652 = and i1 %635, %651
  %653 = call float @dx.op.unary.f32(i32 6, float %634)  ; FAbs(value)
  %654 = extractvalue %dx.types.CBufRet.f32 %585, 1
  %655 = extractvalue %dx.types.CBufRet.f32 %585, 0
  %656 = call float @dx.op.binary.f32(i32 35, float %653, float %655)  ; FMax(a,b)
  %657 = select i1 %652, float %654, float %656
  %658 = zext i1 %652 to i32
  %659 = call float @dx.op.binary.f32(i32 36, float %588, float %657)  ; FMin(a,b)
  br label %660

; <label>:660                                     ; preds = %650, %602
  %661 = phi i32 [ %658, %650 ], [ 0, %602 ]
  %662 = phi float [ %659, %650 ], [ %588, %602 ]
  %663 = icmp eq i32 %425, 0
  br i1 %663, label %835, label %664, !dx.controlflow.hints !54

; <label>:664                                     ; preds = %660
  %665 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %666 = extractvalue %dx.types.CBufRet.i32 %665, 1
  %667 = and i32 %666, 1
  %668 = icmp eq i32 %667, 0
  br i1 %668, label %669, label %826, !dx.controlflow.hints !55

; <label>:669                                     ; preds = %664
  %670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %671 = extractvalue %dx.types.CBufRet.f32 %670, 2
  %672 = extractvalue %dx.types.CBufRet.f32 %670, 3
  %673 = fmul fast float %671, %459
  %674 = fmul fast float %672, %460
  %675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %676 = extractvalue %dx.types.CBufRet.f32 %675, 0
  %677 = extractvalue %dx.types.CBufRet.f32 %675, 1
  %678 = fadd fast float %673, %676
  %679 = fadd fast float %674, %677
  %680 = call float @dx.op.unary.f32(i32 7, float %678)  ; Saturate(value)
  %681 = call float @dx.op.unary.f32(i32 7, float %679)  ; Saturate(value)
  %682 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %680, float %681, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %683 = extractvalue %dx.types.ResRet.f32 %682, 0
  %684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %685 = extractvalue %dx.types.CBufRet.f32 %684, 0
  %686 = fmul fast float %685, %683
  %687 = fsub fast float %678, %680
  %688 = fsub fast float %679, %681
  %689 = extractvalue %dx.types.CBufRet.f32 %670, 0
  %690 = extractvalue %dx.types.CBufRet.f32 %670, 1
  %691 = fmul fast float %689, %687
  %692 = fmul fast float %690, %688
  %693 = fmul fast float %691, %691
  %694 = fmul fast float %692, %692
  %695 = fadd fast float %693, %694
  %696 = call float @dx.op.unary.f32(i32 24, float %695)  ; Sqrt(value)
  %697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %698 = extractvalue %dx.types.CBufRet.f32 %697, 3
  %699 = fmul fast float %698, %696
  %700 = call float @dx.op.unary.f32(i32 7, float %699)  ; Saturate(value)
  %701 = extractvalue %dx.types.CBufRet.f32 %697, 2
  %702 = fsub fast float %701, %686
  %703 = fmul fast float %702, %700
  %704 = extractvalue %dx.types.CBufRet.f32 %684, 1
  %705 = fsub fast float %461, %686
  %706 = fsub fast float %705, %704
  %707 = fsub fast float %706, %703
  %708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %709 = extractvalue %dx.types.CBufRet.f32 %708, 2
  %710 = fsub fast float %707, %709
  %711 = fcmp fast olt float %710, 0.000000e+00
  %712 = call float @dx.op.unary.f32(i32 6, float %710)  ; FAbs(value)
  %713 = extractvalue %dx.types.CBufRet.i32 %665, 0
  %714 = icmp eq i32 %713, 0
  br i1 %714, label %768, label %715

; <label>:715                                     ; preds = %669
  br label %716

; <label>:716                                     ; preds = %755, %715
  %717 = phi i32 [ %761, %755 ], [ 1, %715 ]
  %718 = phi float [ %763, %755 ], [ 0x47EFFFFFE0000000, %715 ]
  %719 = phi i32 [ %764, %755 ], [ 0, %715 ]
  %720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %721 = extractvalue %dx.types.CBufRet.f32 %720, 1
  %722 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %723 = extractvalue %dx.types.CBufRet.i32 %722, 1
  %724 = and i32 %723, 8
  %725 = icmp eq i32 %724, 0
  %726 = fcmp fast ogt float %721, %707
  %727 = or i1 %726, %725
  %728 = add i32 %719, 171
  %729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 %728)  ; CBufferLoadLegacy(handle,regIndex)
  %730 = extractvalue %dx.types.CBufRet.f32 %729, 0
  %731 = extractvalue %dx.types.CBufRet.f32 %729, 1
  %732 = extractvalue %dx.types.CBufRet.f32 %729, 2
  br i1 %727, label %733, label %739, !dx.controlflow.hints !56

; <label>:733                                     ; preds = %716
  %734 = fsub fast float %730, %459
  %735 = fsub fast float %731, %460
  %736 = fmul fast float %734, %734
  %737 = fmul fast float %735, %735
  %738 = fadd fast float %736, %737
  br label %755

; <label>:739                                     ; preds = %716
  %740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %741 = extractvalue %dx.types.CBufRet.f32 %740, 2
  %742 = extractvalue %dx.types.CBufRet.f32 %720, 2
  %743 = fmul fast float %742, %741
  %744 = fsub fast float %743, %721
  %745 = fdiv fast float %732, %744
  %746 = fsub fast float %459, %730
  %747 = fsub fast float %460, %731
  %748 = fsub fast float %707, %721
  %749 = fmul fast float %745, %748
  %750 = fmul fast float %746, %746
  %751 = fmul fast float %747, %747
  %752 = fadd fast float %750, %751
  %753 = fmul fast float %749, %749
  %754 = fadd fast float %752, %753
  br label %755

; <label>:755                                     ; preds = %739, %733
  %756 = phi float [ %738, %733 ], [ %754, %739 ]
  %757 = call float @dx.op.unary.f32(i32 24, float %756)  ; Sqrt(value)
  %758 = fsub float %732, %757
  %759 = fcmp fast olt float %758, 0.000000e+00
  %760 = zext i1 %759 to i32
  %761 = and i32 %760, %717
  %762 = call float @dx.op.unary.f32(i32 6, float %758)  ; FAbs(value)
  %763 = call float @dx.op.binary.f32(i32 36, float %718, float %762)  ; FMin(a,b)
  %764 = add i32 %719, 1
  %765 = extractvalue %dx.types.CBufRet.i32 %722, 0
  %766 = icmp ult i32 %764, %765
  br i1 %766, label %716, label %767

; <label>:767                                     ; preds = %755
  br label %768

; <label>:768                                     ; preds = %767, %669
  %769 = phi i32 [ 1, %669 ], [ %761, %767 ]
  %770 = phi float [ 0x47EFFFFFE0000000, %669 ], [ %763, %767 ]
  br label %771

; <label>:771                                     ; preds = %771, %768
  %772 = phi i32 [ %769, %768 ], [ %811, %771 ]
  %773 = phi float [ 0x47EFFFFFE0000000, %768 ], [ %813, %771 ]
  %774 = phi i32 [ 0, %768 ], [ %814, %771 ]
  %775 = add nuw nsw i32 %774, 191
  %776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 %775)  ; CBufferLoadLegacy(handle,regIndex)
  %777 = extractvalue %dx.types.CBufRet.f32 %776, 0
  %778 = extractvalue %dx.types.CBufRet.f32 %776, 1
  %779 = extractvalue %dx.types.CBufRet.f32 %776, 2
  %780 = add nuw nsw i32 %774, 195
  %781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 %780)  ; CBufferLoadLegacy(handle,regIndex)
  %782 = extractvalue %dx.types.CBufRet.f32 %781, 0
  %783 = extractvalue %dx.types.CBufRet.f32 %781, 1
  %784 = extractvalue %dx.types.CBufRet.f32 %781, 2
  %785 = fsub fast float %459, %777
  %786 = fsub fast float %460, %778
  %787 = fsub fast float %707, %779
  %788 = call float @dx.op.unary.f32(i32 6, float %785)  ; FAbs(value)
  %789 = call float @dx.op.unary.f32(i32 6, float %786)  ; FAbs(value)
  %790 = call float @dx.op.unary.f32(i32 6, float %787)  ; FAbs(value)
  %791 = fsub fast float %788, %782
  %792 = fsub fast float %789, %783
  %793 = fsub fast float %790, %784
  %794 = call float @dx.op.binary.f32(i32 35, float %791, float 0.000000e+00)  ; FMax(a,b)
  %795 = call float @dx.op.binary.f32(i32 35, float %792, float 0.000000e+00)  ; FMax(a,b)
  %796 = call float @dx.op.binary.f32(i32 35, float %793, float 0.000000e+00)  ; FMax(a,b)
  %797 = fmul fast float %794, %794
  %798 = fmul fast float %795, %795
  %799 = fadd fast float %798, %797
  %800 = fmul fast float %796, %796
  %801 = fadd fast float %799, %800
  %802 = call float @dx.op.unary.f32(i32 24, float %801)  ; Sqrt(value)
  %803 = call float @dx.op.binary.f32(i32 35, float %792, float %793)  ; FMax(a,b)
  %804 = call float @dx.op.binary.f32(i32 35, float %791, float %803)  ; FMax(a,b)
  %805 = call float @dx.op.binary.f32(i32 36, float %804, float 0.000000e+00)  ; FMin(a,b)
  %806 = fadd fast float %805, %802
  %807 = fsub fast float -0.000000e+00, %806
  %808 = fcmp ogt float %806, -0.000000e+00
  %809 = icmp ne i32 %772, 0
  %810 = and i1 %809, %808
  %811 = zext i1 %810 to i32
  %812 = call float @dx.op.unary.f32(i32 6, float %807)  ; FAbs(value)
  %813 = call float @dx.op.binary.f32(i32 36, float %773, float %812)  ; FMin(a,b)
  %814 = add nuw nsw i32 %774, 1
  %815 = icmp eq i32 %814, 4
  br i1 %815, label %816, label %771

; <label>:816                                     ; preds = %771
  %817 = call float @dx.op.binary.f32(i32 36, float %712, float %813)  ; FMin(a,b)
  %818 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %819 = extractvalue %dx.types.CBufRet.i32 %818, 1
  %820 = and i32 %819, 2
  %821 = icmp ne i32 %820, 0
  %822 = xor i1 %810, %821
  %823 = call float @dx.op.binary.f32(i32 36, float %817, float %770)  ; FMin(a,b)
  %824 = and i1 %822, %711
  %825 = zext i1 %824 to i32
  br label %826

; <label>:826                                     ; preds = %816, %664
  %827 = phi i32 [ %451, %664 ], [ %825, %816 ]
  %828 = phi float [ 0.000000e+00, %664 ], [ %823, %816 ]
  %829 = phi float [ %461, %664 ], [ %707, %816 ]
  %830 = icmp ne i32 %827, 0
  %831 = extractvalue %dx.types.CBufRet.f32 %585, 3
  %832 = call float @dx.op.binary.f32(i32 35, float %828, float %831)  ; FMax(a,b)
  %833 = call float @dx.op.binary.f32(i32 36, float %603, float %832)  ; FMin(a,b)
  %834 = zext i1 %830 to i32
  br label %835

; <label>:835                                     ; preds = %826, %660
  %836 = phi i32 [ %827, %826 ], [ %451, %660 ]
  %837 = phi i32 [ %834, %826 ], [ 0, %660 ]
  %838 = phi float [ %829, %826 ], [ %452, %660 ]
  %839 = phi float [ %833, %826 ], [ %603, %660 ]
  %840 = extractvalue %dx.types.CBufRet.f32 %474, 2
  %841 = fmul fast float %840, %462
  %842 = call float @dx.op.unary.f32(i32 23, float %841)  ; Log(value)
  %843 = fmul fast float %842, 0x3FE62E4300000000
  %844 = call float @dx.op.binary.f32(i32 35, float %843, float 1.000000e+00)  ; FMax(a,b)
  %845 = fmul fast float %844, %839
  %846 = call float @dx.op.binary.f32(i32 36, float %845, float %662)  ; FMin(a,b)
  %847 = call float @dx.op.binary.f32(i32 35, float %846, float %475)  ; FMax(a,b)
  %848 = fadd fast float %431, 0x3F1A36E2E0000000
  %849 = fsub fast float %848, %462
  %850 = call float @dx.op.binary.f32(i32 36, float %849, float %847)  ; FMin(a,b)
  br i1 %589, label %896, label %851, !dx.controlflow.hints !57

; <label>:851                                     ; preds = %835
  %852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %853 = extractvalue %dx.types.CBufRet.f32 %852, 0
  %854 = fsub fast float %853, %461
  %855 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %472, float %471, float %854)  ; Dot3(ax,ay,az,bx,by,bz)
  %856 = fmul fast float %306, %855
  %857 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %856)  ; FMax(a,b)
  %858 = fcmp fast olt float %281, 0.000000e+00
  %859 = call float @dx.op.binary.f32(i32 36, float %850, float %857)  ; FMin(a,b)
  br i1 %858, label %861, label %860, !dx.controlflow.hints !58

; <label>:860                                     ; preds = %851
  br label %861

; <label>:861                                     ; preds = %860, %851
  %862 = phi float [ 0.000000e+00, %860 ], [ %859, %851 ]
  %863 = phi float [ %859, %860 ], [ %850, %851 ]
  %864 = phi float [ %859, %860 ], [ 0.000000e+00, %851 ]
  %865 = phi float [ %850, %860 ], [ %859, %851 ]
  %866 = fsub fast float %863, %862
  %867 = extractvalue %dx.types.CBufRet.f32 %852, 1
  %868 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %867)  ; FMin(a,b)
  %869 = fsub fast float %461, %853
  %870 = fmul fast float %868, 0x3FF7154760000000
  %871 = fmul fast float %870, %869
  %872 = call float @dx.op.unary.f32(i32 21, float %871)  ; Exp(value)
  %873 = fmul fast float %281, 0x3FF7154760000000
  %874 = fmul fast float %873, %865
  %875 = fmul fast float %874, %868
  %876 = call float @dx.op.unary.f32(i32 21, float %875)  ; Exp(value)
  %877 = fmul fast float %873, %864
  %878 = fmul fast float %877, %868
  %879 = call float @dx.op.unary.f32(i32 21, float %878)  ; Exp(value)
  %880 = fsub fast float %876, %879
  %881 = fmul fast float %880, %872
  %882 = fmul fast float %868, %281
  %883 = fdiv fast float %881, %882
  %884 = fadd fast float %866, %883
  %885 = call float @dx.op.unary.f32(i32 6, float %281)  ; FAbs(value)
  %886 = fcmp fast olt float %885, 0x3F0FFB4800000000
  %887 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %869)  ; FMax(a,b)
  %888 = fmul fast float %887, 0x3FF7154760000000
  %889 = fmul fast float %888, %867
  %890 = call float @dx.op.unary.f32(i32 21, float %889)  ; Exp(value)
  %891 = fmul fast float %890, %850
  %892 = select i1 %886, float %891, float %884
  %893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %894 = extractvalue %dx.types.CBufRet.f32 %893, 1
  %895 = fmul fast float %892, %894
  br label %896

; <label>:896                                     ; preds = %861, %835
  %897 = phi float [ %895, %861 ], [ 0.000000e+00, %835 ]
  %898 = icmp eq i32 %661, 0
  br i1 %898, label %1079, label %899, !dx.controlflow.hints !59

; <label>:899                                     ; preds = %896
  %900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %901 = extractvalue %dx.types.CBufRet.f32 %900, 3
  %902 = fmul fast float %901, %462
  %903 = fcmp fast oeq float %902, 0.000000e+00
  br i1 %903, label %918, label %904, !dx.controlflow.hints !60

; <label>:904                                     ; preds = %899
  %905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %906 = extractvalue %dx.types.CBufRet.f32 %905, 3
  %907 = fmul fast float %906, %902
  %908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %909 = extractvalue %dx.types.CBufRet.f32 %908, 0
  %910 = extractvalue %dx.types.CBufRet.f32 %908, 1
  %911 = extractvalue %dx.types.CBufRet.f32 %908, 2
  %912 = fmul fast float %909, %907
  %913 = fmul fast float %910, %907
  %914 = fmul fast float %911, %907
  %915 = call float @dx.op.unary.f32(i32 23, float %912)  ; Log(value)
  %916 = call float @dx.op.unary.f32(i32 23, float %913)  ; Log(value)
  %917 = call float @dx.op.unary.f32(i32 23, float %914)  ; Log(value)
  br label %918

; <label>:918                                     ; preds = %904, %899
  %919 = phi float [ %915, %904 ], [ 0.000000e+00, %899 ]
  %920 = phi float [ %916, %904 ], [ 0.000000e+00, %899 ]
  %921 = phi float [ %917, %904 ], [ 0.000000e+00, %899 ]
  %922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %923 = extractvalue %dx.types.CBufRet.f32 %922, 0
  %924 = extractvalue %dx.types.CBufRet.f32 %922, 1
  %925 = extractvalue %dx.types.CBufRet.f32 %922, 2
  %926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %927 = extractvalue %dx.types.CBufRet.f32 %926, 0
  %928 = extractvalue %dx.types.CBufRet.f32 %926, 1
  %929 = extractvalue %dx.types.CBufRet.f32 %926, 2
  %930 = fsub fast float %459, %927
  %931 = fsub fast float %460, %928
  %932 = fsub fast float %461, %929
  %933 = fmul fast float %930, %923
  %934 = fmul fast float %931, %924
  %935 = fmul fast float %932, %925
  %936 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %937 = extractvalue %dx.types.CBufRet.i32 %936, 0
  %938 = extractvalue %dx.types.CBufRet.i32 %936, 1
  %939 = uitofp i32 %937 to float
  %940 = uitofp i32 %938 to float
  %941 = fmul fast float %933, %939
  %942 = fmul fast float %934, %940
  %943 = fadd fast float %941, 5.000000e-01
  %944 = fadd fast float %942, 5.000000e-01
  %945 = call float @dx.op.unary.f32(i32 22, float %943)  ; Frc(value)
  %946 = call float @dx.op.unary.f32(i32 22, float %944)  ; Frc(value)
  %947 = call float @dx.op.unary.f32(i32 27, float %943)  ; Round_ni(value)
  %948 = call float @dx.op.unary.f32(i32 27, float %944)  ; Round_ni(value)
  %949 = fadd fast float %947, 1.000000e+00
  %950 = fadd fast float %948, 1.000000e+00
  %951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %952 = extractvalue %dx.types.CBufRet.f32 %951, 0
  %953 = extractvalue %dx.types.CBufRet.f32 %951, 1
  %954 = fmul fast float %952, %949
  %955 = fmul fast float %953, %950
  %956 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %11, %dx.types.Handle %17, float %954, float %955, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %957 = extractvalue %dx.types.ResRet.f32 %956, 0
  %958 = extractvalue %dx.types.ResRet.f32 %956, 1
  %959 = extractvalue %dx.types.ResRet.f32 %956, 2
  %960 = extractvalue %dx.types.ResRet.f32 %956, 3
  %961 = extractvalue %dx.types.CBufRet.i32 %936, 2
  %962 = extractvalue %dx.types.CBufRet.f32 %951, 2
  %963 = uitofp i32 %961 to float
  %964 = fadd fast float %963, -1.000000e+00
  %965 = fmul fast float %964, %957
  %966 = fmul fast float %964, %958
  %967 = fmul fast float %964, %959
  %968 = fmul fast float %964, %960
  %969 = fadd fast float %965, 5.000000e-01
  %970 = fadd fast float %966, 5.000000e-01
  %971 = fadd fast float %967, 5.000000e-01
  %972 = fadd fast float %968, 5.000000e-01
  %973 = fptoui float %969 to i32
  %974 = fptoui float %970 to i32
  %975 = fptoui float %971 to i32
  %976 = fptoui float %972 to i32
  %977 = uitofp i32 %973 to float
  %978 = uitofp i32 %974 to float
  %979 = uitofp i32 %975 to float
  %980 = uitofp i32 %976 to float
  %981 = fadd fast float %977, 5.000000e-01
  %982 = fadd fast float %978, 5.000000e-01
  %983 = fadd fast float %979, 5.000000e-01
  %984 = fadd fast float %980, 5.000000e-01
  %985 = fmul fast float %981, %962
  %986 = fmul fast float %982, %962
  %987 = fmul fast float %983, %962
  %988 = fmul fast float %984, %962
  %989 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %18, float %985, float %935, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %990 = extractvalue %dx.types.ResRet.f32 %989, 0
  %991 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %18, float %986, float %935, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %992 = extractvalue %dx.types.ResRet.f32 %991, 0
  %993 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %18, float %987, float %935, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %994 = extractvalue %dx.types.ResRet.f32 %993, 0
  %995 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %18, float %988, float %935, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %996 = extractvalue %dx.types.ResRet.f32 %995, 0
  %997 = fsub fast float %994, %996
  %998 = fmul fast float %997, %945
  %999 = fadd fast float %998, %996
  %1000 = fsub fast float %992, %990
  %1001 = fmul fast float %1000, %945
  %1002 = fadd fast float %1001, %990
  %1003 = fsub fast float %1002, %999
  %1004 = fmul fast float %1003, %946
  %1005 = fadd fast float %1004, %999
  %1006 = fcmp fast ogt float %1005, 0.000000e+00
  br i1 %1006, label %1007, label %1075, !dx.controlflow.hints !61

; <label>:1007                                    ; preds = %918
  %1008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %1009 = extractvalue %dx.types.CBufRet.f32 %1008, 0
  %1010 = extractvalue %dx.types.CBufRet.f32 %1008, 1
  %1011 = extractvalue %dx.types.CBufRet.f32 %1008, 2
  %1012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %1013 = extractvalue %dx.types.CBufRet.f32 %1012, 0
  %1014 = extractvalue %dx.types.CBufRet.f32 %1012, 1
  %1015 = extractvalue %dx.types.CBufRet.f32 %1012, 2
  %1016 = fmul fast float %931, %923
  %1017 = fmul fast float %932, %923
  %1018 = fadd fast float %933, %1013
  %1019 = fadd fast float %1016, %1014
  %1020 = fadd fast float %1017, %1015
  %1021 = fmul fast float %1018, %1009
  %1022 = fmul fast float %1019, %1009
  %1023 = fmul fast float %1020, %1009
  %1024 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %15, float %1021, float %1022, float %1023, float undef, i32 0, i32 0, i32 0, float %919)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1025 = extractvalue %dx.types.ResRet.f32 %1024, 0
  %1026 = fmul fast float %1018, %1010
  %1027 = fmul fast float %1019, %1010
  %1028 = fmul fast float %1020, %1010
  %1029 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %15, float %1026, float %1027, float %1028, float undef, i32 0, i32 0, i32 0, float %920)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1030 = extractvalue %dx.types.ResRet.f32 %1029, 1
  %1031 = fmul fast float %1018, %1011
  %1032 = fmul fast float %1019, %1011
  %1033 = fmul fast float %1020, %1011
  %1034 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %15, float %1031, float %1032, float %1033, float undef, i32 0, i32 0, i32 0, float %921)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1035 = extractvalue %dx.types.ResRet.f32 %1034, 2
  %1036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %1037 = extractvalue %dx.types.CBufRet.f32 %1036, 1
  %1038 = fmul fast float %1030, %1025
  %1039 = fmul fast float %1038, %1035
  %1040 = call float @dx.op.unary.f32(i32 23, float %1039)  ; Log(value)
  %1041 = fmul fast float %1040, %1037
  %1042 = call float @dx.op.unary.f32(i32 21, float %1041)  ; Exp(value)
  %1043 = extractvalue %dx.types.CBufRet.f32 %1036, 2
  %1044 = fmul fast float %1005, %1005
  %1045 = fmul fast float %1044, %1042
  %1046 = fmul fast float %1045, %1043
  %1047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %1048 = extractvalue %dx.types.CBufRet.f32 %1047, 3
  %1049 = fmul fast float %1048, %1046
  %1050 = bitcast float %1049 to i32
  %1051 = sitofp i32 %1050 to float
  %1052 = fptosi float %1051 to i32
  %1053 = bitcast i32 %1052 to float
  %1054 = fsub fast float 1.000000e+00, %1046
  %1055 = bitcast float %1054 to i32
  %1056 = sitofp i32 %1055 to float
  %1057 = fptosi float %1056 to i32
  %1058 = bitcast i32 %1057 to float
  %1059 = fadd fast float %1053, %1058
  %1060 = bitcast float %1059 to i32
  %1061 = sub nsw i32 2129859010, %1060
  %1062 = bitcast i32 %1061 to float
  %1063 = fmul fast float %1062, %1053
  %1064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1065 = extractvalue %dx.types.CBufRet.f32 %1064, 2
  %1066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %1067 = extractvalue %dx.types.CBufRet.f32 %1066, 0
  %1068 = fmul fast float %1063, %1067
  %1069 = fadd fast float %1068, 1.000000e+00
  %1070 = bitcast float %1069 to i32
  %1071 = sub nsw i32 2129859010, %1070
  %1072 = bitcast i32 %1071 to float
  %1073 = fmul fast float %1063, %1065
  %1074 = fmul fast float %1073, %1072
  br label %1075

; <label>:1075                                    ; preds = %1007, %918
  %1076 = phi float [ %1074, %1007 ], [ %1005, %918 ]
  %1077 = fmul fast float %1076, %850
  %1078 = fadd fast float %1077, %897
  br label %1079

; <label>:1079                                    ; preds = %1075, %896
  %1080 = phi float [ %1078, %1075 ], [ %897, %896 ]
  br i1 %584, label %1206, label %1081, !dx.controlflow.hints !62

; <label>:1081                                    ; preds = %1079
  %1082 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1083 = extractvalue %dx.types.CBufRet.i32 %1082, 0
  %1084 = icmp ne i32 %1083, 0
  %1085 = zext i1 %1084 to i32
  %1086 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1087 = extractvalue %dx.types.CBufRet.i32 %1086, 0
  %1088 = icmp eq i32 %1087, 0
  br i1 %1088, label %1122, label %1089

; <label>:1089                                    ; preds = %1081
  br label %1090

; <label>:1090                                    ; preds = %1117, %1089
  %1091 = phi i32 [ %1118, %1117 ], [ 0, %1089 ]
  %1092 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1091, i32 0)  ; BufferLoad(srv,index,wot)
  %1093 = extractvalue %dx.types.ResRet.f32 %1092, 0
  %1094 = extractvalue %dx.types.ResRet.f32 %1092, 1
  %1095 = extractvalue %dx.types.ResRet.f32 %1092, 2
  %1096 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1091, i32 16)  ; BufferLoad(srv,index,wot)
  %1097 = extractvalue %dx.types.ResRet.f32 %1096, 0
  %1098 = extractvalue %dx.types.ResRet.f32 %1096, 1
  %1099 = extractvalue %dx.types.ResRet.f32 %1096, 2
  %1100 = fsub fast float %1093, %1097
  %1101 = fsub fast float %1094, %1098
  %1102 = fsub fast float %1095, %1099
  %1103 = fadd fast float %1097, %1093
  %1104 = fadd fast float %1098, %1094
  %1105 = fadd fast float %1099, %1095
  %1106 = fcmp fast olt float %459, %1100
  %1107 = fcmp fast olt float %460, %1101
  %1108 = fcmp fast olt float %461, %1102
  %1109 = or i1 %1106, %1107
  %1110 = or i1 %1108, %1109
  %1111 = fcmp fast ogt float %459, %1103
  %1112 = fcmp fast ogt float %460, %1104
  %1113 = fcmp fast ogt float %461, %1105
  %1114 = or i1 %1111, %1112
  %1115 = or i1 %1113, %1114
  %1116 = or i1 %1110, %1115
  br i1 %1116, label %1117, label %1120, !dx.controlflow.hints !63

; <label>:1117                                    ; preds = %1090
  %1118 = add nuw i32 %1091, 1
  %1119 = icmp ult i32 %1118, %1087
  br i1 %1119, label %1090, label %1120

; <label>:1120                                    ; preds = %1117, %1090
  %1121 = phi i32 [ 255, %1117 ], [ %1091, %1090 ]
  br label %1122

; <label>:1122                                    ; preds = %1120, %1081
  %1123 = phi i32 [ 255, %1081 ], [ %1121, %1120 ]
  %1124 = icmp eq i32 %1123, 255
  br i1 %1124, label %1130, label %1125, !dx.controlflow.hints !64

; <label>:1125                                    ; preds = %1122
  %1126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %1123, i32 156)  ; BufferLoad(srv,index,wot)
  %1127 = extractvalue %dx.types.ResRet.i32 %1126, 0
  %1128 = icmp ne i32 %1127, 0
  %1129 = zext i1 %1128 to i32
  br label %1130

; <label>:1130                                    ; preds = %1125, %1122
  %1131 = phi i32 [ %1129, %1125 ], [ %1085, %1122 ]
  %1132 = icmp eq i32 %1131, 0
  br i1 %1132, label %1133, label %1202, !dx.controlflow.hints !65

; <label>:1133                                    ; preds = %1130
  %1134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1135 = extractvalue %dx.types.CBufRet.f32 %1134, 3
  %1136 = extractvalue %dx.types.CBufRet.f32 %494, 0
  %1137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1138 = extractvalue %dx.types.CBufRet.f32 %1137, 2
  %1139 = extractvalue %dx.types.CBufRet.f32 %1137, 3
  br i1 %1124, label %1150, label %1140, !dx.controlflow.hints !66

; <label>:1140                                    ; preds = %1133
  %1141 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1123, i32 60)  ; BufferLoad(srv,index,wot)
  %1142 = extractvalue %dx.types.ResRet.f32 %1141, 0
  %1143 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1123, i32 64)  ; BufferLoad(srv,index,wot)
  %1144 = extractvalue %dx.types.ResRet.f32 %1143, 0
  %1145 = extractvalue %dx.types.ResRet.f32 %1143, 1
  %1146 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1123, i32 72)  ; BufferLoad(srv,index,wot)
  %1147 = extractvalue %dx.types.ResRet.f32 %1146, 0
  %1148 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1123, i32 96)  ; BufferLoad(srv,index,wot)
  %1149 = extractvalue %dx.types.ResRet.f32 %1148, 0
  br label %1150

; <label>:1150                                    ; preds = %1140, %1133
  %1151 = phi float [ %1142, %1140 ], [ %497, %1133 ]
  %1152 = phi float [ %1147, %1140 ], [ %495, %1133 ]
  %1153 = phi float [ %1149, %1140 ], [ %1136, %1133 ]
  %1154 = phi float [ %1144, %1140 ], [ %1138, %1133 ]
  %1155 = phi float [ %1145, %1140 ], [ %1139, %1133 ]
  %1156 = call float @dx.op.binary.f32(i32 35, float %578, float 0.000000e+00)  ; FMax(a,b)
  %1157 = call float @dx.op.binary.f32(i32 36, float %1156, float 1.000000e+00)  ; FMin(a,b)
  %1158 = call float @dx.op.unary.f32(i32 24, float %1157)  ; Sqrt(value)
  %1159 = call float @dx.op.binary.f32(i32 35, float %581, float 0x3F847AE140000000)  ; FMax(a,b)
  %1160 = fsub fast float %579, %461
  %1161 = fsub fast float %461, %580
  %1162 = call float @dx.op.binary.f32(i32 36, float %1161, float %1160)  ; FMin(a,b)
  %1163 = fdiv fast float %1162, %1159
  %1164 = call float @dx.op.unary.f32(i32 7, float %1163)  ; Saturate(value)
  %1165 = fsub fast float %461, %1152
  %1166 = fdiv fast float %1165, %1151
  %1167 = call float @dx.op.unary.f32(i32 7, float %1166)  ; Saturate(value)
  %1168 = fsub fast float 1.000000e+00, %1167
  %1169 = fmul float %1164, %1168
  %1170 = fmul float %1169, %1169
  %1171 = fmul fast float %1158, %1135
  %1172 = fmul fast float %1171, %1170
  %1173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1174 = extractvalue %dx.types.CBufRet.f32 %1173, 2
  %1175 = extractvalue %dx.types.CBufRet.f32 %1173, 1
  %1176 = fsub fast float %1172, %1175
  %1177 = fsub fast float %1174, %1175
  %1178 = fdiv fast float %1176, %1177
  %1179 = call float @dx.op.unary.f32(i32 7, float %1178)  ; Saturate(value)
  %1180 = fmul fast float %1179, %1153
  %1181 = fcmp fast ogt float %1155, 0.000000e+00
  br i1 %1181, label %1182, label %1202, !dx.controlflow.hints !67

; <label>:1182                                    ; preds = %1150
  %1183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1184 = extractvalue %dx.types.CBufRet.f32 %1183, 0
  %1185 = extractvalue %dx.types.CBufRet.f32 %1183, 1
  %1186 = extractvalue %dx.types.CBufRet.f32 %1183, 2
  %1187 = fsub fast float %459, %1184
  %1188 = fsub fast float %460, %1185
  %1189 = fsub fast float %461, %1186
  %1190 = fmul fast float %1187, %1187
  %1191 = fmul fast float %1188, %1188
  %1192 = fadd fast float %1190, %1191
  %1193 = fmul fast float %1189, %1189
  %1194 = fadd fast float %1192, %1193
  %1195 = call float @dx.op.unary.f32(i32 24, float %1194)  ; Sqrt(value)
  %1196 = fsub fast float %1195, %1154
  %1197 = fsub fast float %1155, %1154
  %1198 = fdiv fast float %1196, %1197
  %1199 = call float @dx.op.unary.f32(i32 7, float %1198)  ; Saturate(value)
  %1200 = fmul fast float %1199, %1199
  %1201 = fmul fast float %1200, %1180
  br label %1202

; <label>:1202                                    ; preds = %1182, %1150, %1130
  %1203 = phi float [ 0.000000e+00, %1130 ], [ %1201, %1182 ], [ %1180, %1150 ]
  %1204 = fmul fast float %1203, %850
  %1205 = fadd fast float %1204, %1080
  br label %1206

; <label>:1206                                    ; preds = %1202, %1079
  %1207 = phi float [ %1205, %1202 ], [ %1080, %1079 ]
  %1208 = icmp eq i32 %837, 0
  br i1 %1208, label %1240, label %1209, !dx.controlflow.hints !68

; <label>:1209                                    ; preds = %1206
  %1210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %1211 = extractvalue %dx.types.CBufRet.f32 %1210, 1
  %1212 = fsub fast float %850, %1211
  %1213 = extractvalue %dx.types.CBufRet.f32 %1210, 3
  %1214 = fmul fast float %1212, %1213
  %1215 = call float @dx.op.unary.f32(i32 7, float %1214)  ; Saturate(value)
  %1216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %1217 = extractvalue %dx.types.CBufRet.f32 %1216, 3
  %1218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1219 = extractvalue %dx.types.CBufRet.f32 %1218, 2
  %1220 = fsub fast float %1219, %838
  %1221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %1222 = extractvalue %dx.types.CBufRet.f32 %1221, 3
  %1223 = fmul fast float %1220, %1222
  %1224 = call float @dx.op.unary.f32(i32 7, float %1223)  ; Saturate(value)
  %1225 = fmul fast float %1224, %1217
  %1226 = extractvalue %dx.types.CBufRet.f32 %1221, 0
  %1227 = fsub fast float %462, %1226
  %1228 = extractvalue %dx.types.CBufRet.f32 %1221, 1
  %1229 = fmul fast float %1227, %1228
  %1230 = call float @dx.op.unary.f32(i32 7, float %1229)  ; Saturate(value)
  %1231 = fsub fast float 1.000000e+00, %1215
  %1232 = fmul fast float %1230, %1231
  %1233 = fadd fast float %1232, %1215
  %1234 = extractvalue %dx.types.CBufRet.f32 %1210, 0
  %1235 = fsub fast float %1225, %1234
  %1236 = fmul fast float %1235, %1233
  %1237 = fadd fast float %1236, %1234
  %1238 = fmul fast float %1237, %850
  %1239 = fadd fast float %1238, %1207
  br label %1240

; <label>:1240                                    ; preds = %1209, %1206
  %1241 = phi float [ %1239, %1209 ], [ %1207, %1206 ]
  %1242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1243 = extractvalue %dx.types.CBufRet.f32 %1242, 1
  %1244 = fcmp fast ogt float %1241, %1243
  br i1 %1244, label %1247, label %1245, !dx.controlflow.hints !69

; <label>:1245                                    ; preds = %1240
  %1246 = fadd fast float %850, %462
  br label %1380

; <label>:1247                                    ; preds = %1240
  %1248 = fmul fast float %1241, 0xBFF7154760000000
  %1249 = call float @dx.op.unary.f32(i32 21, float %1248)  ; Exp(value)
  %1250 = call float @dx.op.unary.f32(i32 7, float %1249)  ; Saturate(value)
  %1251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1252 = extractvalue %dx.types.CBufRet.f32 %1251, 0
  %1253 = extractvalue %dx.types.CBufRet.f32 %1251, 1
  %1254 = extractvalue %dx.types.CBufRet.f32 %1251, 2
  %1255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %1256 = extractvalue %dx.types.CBufRet.f32 %1255, 0
  %1257 = fmul fast float %1256, %1252
  %1258 = fmul fast float %1256, %1253
  %1259 = fmul fast float %1256, %1254
  %1260 = fadd fast float %1257, %459
  %1261 = fadd fast float %1258, %460
  %1262 = fadd fast float %1259, %461
  br i1 %663, label %1333, label %1263, !dx.controlflow.hints !54

; <label>:1263                                    ; preds = %1247
  %1264 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1265 = extractvalue %dx.types.CBufRet.i32 %1264, 1
  %1266 = and i32 %1265, 1
  %1267 = icmp eq i32 %1266, 0
  br i1 %1267, label %1268, label %1333, !dx.controlflow.hints !55

; <label>:1268                                    ; preds = %1263
  %1269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %1270 = extractvalue %dx.types.CBufRet.f32 %1269, 2
  %1271 = extractvalue %dx.types.CBufRet.f32 %1269, 3
  %1272 = fmul fast float %1270, %1260
  %1273 = fmul fast float %1271, %1261
  %1274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %1275 = extractvalue %dx.types.CBufRet.f32 %1274, 0
  %1276 = extractvalue %dx.types.CBufRet.f32 %1274, 1
  %1277 = fadd fast float %1272, %1275
  %1278 = fadd fast float %1273, %1276
  %1279 = call float @dx.op.unary.f32(i32 7, float %1277)  ; Saturate(value)
  %1280 = call float @dx.op.unary.f32(i32 7, float %1278)  ; Saturate(value)
  %1281 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %1279, float %1280, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1282 = extractvalue %dx.types.ResRet.f32 %1281, 0
  %1283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %1284 = extractvalue %dx.types.CBufRet.f32 %1283, 0
  %1285 = fmul fast float %1284, %1282
  %1286 = fsub fast float %1277, %1279
  %1287 = fsub fast float %1278, %1280
  %1288 = extractvalue %dx.types.CBufRet.f32 %1269, 0
  %1289 = extractvalue %dx.types.CBufRet.f32 %1269, 1
  %1290 = fmul fast float %1288, %1286
  %1291 = fmul fast float %1289, %1287
  %1292 = fmul fast float %1290, %1290
  %1293 = fmul fast float %1291, %1291
  %1294 = fadd fast float %1292, %1293
  %1295 = call float @dx.op.unary.f32(i32 24, float %1294)  ; Sqrt(value)
  %1296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1297 = extractvalue %dx.types.CBufRet.f32 %1296, 3
  %1298 = fmul fast float %1297, %1295
  %1299 = call float @dx.op.unary.f32(i32 7, float %1298)  ; Saturate(value)
  %1300 = extractvalue %dx.types.CBufRet.f32 %1296, 2
  %1301 = fsub fast float %1300, %1285
  %1302 = fmul fast float %1301, %1299
  %1303 = extractvalue %dx.types.CBufRet.f32 %1283, 1
  %1304 = fsub fast float %1262, %1285
  %1305 = fsub fast float %1304, %1303
  %1306 = fsub fast float %1305, %1302
  %1307 = extractvalue %dx.types.CBufRet.i32 %1264, 0
  %1308 = icmp eq i32 %1307, 0
  br i1 %1308, label %1327, label %1309

; <label>:1309                                    ; preds = %1268
  br label %1310

; <label>:1310                                    ; preds = %1322, %1309
  %1311 = phi i32 [ %1323, %1322 ], [ 0, %1309 ]
  %1312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1313 = extractvalue %dx.types.CBufRet.f32 %1312, 1
  %1314 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1315 = extractvalue %dx.types.CBufRet.i32 %1314, 1
  %1316 = and i32 %1315, 8
  %1317 = icmp eq i32 %1316, 0
  %1318 = fcmp fast ogt float %1313, %1306
  %1319 = or i1 %1318, %1317
  br i1 %1319, label %1320, label %1321, !dx.controlflow.hints !56

; <label>:1320                                    ; preds = %1310
  br label %1322

; <label>:1321                                    ; preds = %1310
  br label %1322

; <label>:1322                                    ; preds = %1321, %1320
  %1323 = add i32 %1311, 1
  %1324 = extractvalue %dx.types.CBufRet.i32 %1314, 0
  %1325 = icmp ult i32 %1323, %1324
  br i1 %1325, label %1310, label %1326

; <label>:1326                                    ; preds = %1322
  br label %1327

; <label>:1327                                    ; preds = %1326, %1268
  br label %1328

; <label>:1328                                    ; preds = %1328, %1327
  %1329 = phi i32 [ %1330, %1328 ], [ 0, %1327 ]
  %1330 = add nuw nsw i32 %1329, 1
  %1331 = icmp eq i32 %1330, 4
  br i1 %1331, label %1332, label %1328

; <label>:1332                                    ; preds = %1328
  br label %1333

; <label>:1333                                    ; preds = %1332, %1263, %1247
  %1334 = fsub fast float 1.000000e+00, %1250
  %1335 = fdiv fast float %1241, %850
  %1336 = fadd fast float %850, %462
  %1337 = fmul fast float %462, %462
  %1338 = fmul fast float %1336, %1336
  %1339 = fsub fast float %1337, %1338
  %1340 = fmul fast float %1339, -5.000000e-01
  %1341 = fmul fast float %1340, %1335
  %1342 = fadd fast float %1341, %457
  %1343 = fadd fast float %1241, %465
  %1344 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1345 = extractvalue %dx.types.CBufRet.i32 %1344, 0
  %1346 = icmp eq i32 %1345, 0
  br i1 %1346, label %1373, label %1347, !dx.controlflow.hints !70

; <label>:1347                                    ; preds = %1333
  %1348 = icmp ne i32 %470, 0
  %1349 = zext i1 %1348 to i32
  %1350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1351 = extractvalue %dx.types.CBufRet.f32 %1350, 2
  %1352 = extractvalue %dx.types.CBufRet.f32 %1350, 0
  %1353 = fsub fast float %1336, %1352
  %1354 = fmul fast float %1353, %1351
  %1355 = call float @dx.op.unary.f32(i32 7, float %1354)  ; Saturate(value)
  %1356 = fadd fast float %1355, -5.000000e-01
  %1357 = fmul fast float %1356, 2.000000e+00
  %1358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1359 = extractvalue %dx.types.CBufRet.f32 %1358, 2
  %1360 = fcmp fast olt float %1357, %1359
  br i1 %1360, label %1361, label %1373, !dx.controlflow.hints !71

; <label>:1361                                    ; preds = %1347
  %1362 = fmul fast float %1357, %1357
  %1363 = fmul fast float %1334, %458
  %1364 = fmul fast float %1357, %1363
  %1365 = fmul fast float %1362, %1363
  %1366 = fmul fast float %1364, %1362
  %1367 = fmul fast float %1362, %1362
  %1368 = fmul fast float %1367, %1363
  %1369 = fadd fast float %1364, %466
  %1370 = fadd fast float %1365, %467
  %1371 = fadd fast float %1366, %468
  %1372 = fadd fast float %1368, %469
  br label %1373

; <label>:1373                                    ; preds = %1361, %1347, %1333
  %1374 = phi float [ %466, %1333 ], [ %1369, %1361 ], [ %466, %1347 ]
  %1375 = phi float [ %467, %1333 ], [ %1370, %1361 ], [ %467, %1347 ]
  %1376 = phi float [ %468, %1333 ], [ %1371, %1361 ], [ %468, %1347 ]
  %1377 = phi float [ %469, %1333 ], [ %1372, %1361 ], [ %469, %1347 ]
  %1378 = phi i32 [ %470, %1333 ], [ 1, %1361 ], [ %1349, %1347 ]
  %1379 = fmul fast float %1250, %458
  br label %1380

; <label>:1380                                    ; preds = %1373, %1245
  %1381 = phi float [ %1246, %1245 ], [ %1336, %1373 ]
  %1382 = phi float [ %457, %1245 ], [ %1342, %1373 ]
  %1383 = phi float [ %458, %1245 ], [ %1379, %1373 ]
  %1384 = phi float [ %465, %1245 ], [ %1343, %1373 ]
  %1385 = phi float [ %466, %1245 ], [ %1374, %1373 ]
  %1386 = phi float [ %467, %1245 ], [ %1375, %1373 ]
  %1387 = phi float [ %468, %1245 ], [ %1376, %1373 ]
  %1388 = phi float [ %469, %1245 ], [ %1377, %1373 ]
  %1389 = phi i32 [ %470, %1245 ], [ %1378, %1373 ]
  %1390 = fmul fast float %850, %279
  %1391 = fmul fast float %850, %280
  %1392 = fmul fast float %850, %281
  %1393 = fadd fast float %1390, %459
  %1394 = fadd fast float %1391, %460
  %1395 = fadd fast float %1392, %461
  %1396 = fcmp fast olt float %1381, %431
  %1397 = extractvalue %dx.types.CBufRet.f32 %1242, 2
  %1398 = fcmp fast olt float %1397, %1383
  %1399 = and i1 %1396, %1398
  br i1 %1399, label %450, label %1400

; <label>:1400                                    ; preds = %1380
  %1401 = uitofp i32 %473 to float
  br label %1402

; <label>:1402                                    ; preds = %1400, %424
  %1403 = phi float [ 0.000000e+00, %424 ], [ %1382, %1400 ]
  %1404 = phi float [ 1.000000e+00, %424 ], [ %1383, %1400 ]
  %1405 = phi float [ 0.000000e+00, %424 ], [ %1401, %1400 ]
  %1406 = phi float [ 0.000000e+00, %424 ], [ %1384, %1400 ]
  %1407 = phi float [ 0.000000e+00, %424 ], [ %1385, %1400 ]
  %1408 = phi float [ 0.000000e+00, %424 ], [ %1386, %1400 ]
  %1409 = phi float [ 0.000000e+00, %424 ], [ %1387, %1400 ]
  %1410 = phi float [ 0.000000e+00, %424 ], [ %1388, %1400 ]
  %1411 = phi i32 [ 0, %424 ], [ %1389, %1400 ]
  %1412 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1413 = extractvalue %dx.types.CBufRet.i32 %1412, 0
  %1414 = icmp eq i32 %1413, 0
  br i1 %1414, label %1456, label %1415, !dx.controlflow.hints !72

; <label>:1415                                    ; preds = %1402
  %1416 = icmp eq i32 %1411, 0
  br i1 %1416, label %1455, label %1417, !dx.controlflow.hints !73

; <label>:1417                                    ; preds = %1415
  %1418 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1419 = extractvalue %dx.types.CBufRet.i32 %1418, 2
  %1420 = icmp eq i32 %1419, 0
  br i1 %1420, label %1427, label %1421, !dx.controlflow.hints !74

; <label>:1421                                    ; preds = %1417
  %1422 = fsub fast float 1.000000e+00, %1404
  %1423 = fdiv fast float %1407, %1422
  %1424 = fdiv fast float %1408, %1422
  %1425 = fdiv fast float %1409, %1422
  %1426 = fdiv fast float %1410, %1422
  br label %1432

; <label>:1427                                    ; preds = %1417
  %1428 = fadd fast float %1407, %1404
  %1429 = fadd fast float %1408, %1404
  %1430 = fadd fast float %1409, %1404
  %1431 = fadd fast float %1410, %1404
  br label %1432

; <label>:1432                                    ; preds = %1427, %1421
  %1433 = phi float [ %1423, %1421 ], [ %1428, %1427 ]
  %1434 = phi float [ %1424, %1421 ], [ %1429, %1427 ]
  %1435 = phi float [ %1425, %1421 ], [ %1430, %1427 ]
  %1436 = phi float [ %1426, %1421 ], [ %1431, %1427 ]
  %1437 = call float @dx.op.binary.f32(i32 35, float %1433, float -1.000000e+00)  ; FMax(a,b)
  %1438 = call float @dx.op.binary.f32(i32 35, float %1434, float -1.000000e+00)  ; FMax(a,b)
  %1439 = call float @dx.op.binary.f32(i32 35, float %1435, float -1.000000e+00)  ; FMax(a,b)
  %1440 = call float @dx.op.binary.f32(i32 35, float %1436, float -1.000000e+00)  ; FMax(a,b)
  %1441 = call float @dx.op.binary.f32(i32 36, float %1437, float 1.000000e+00)  ; FMin(a,b)
  %1442 = call float @dx.op.binary.f32(i32 36, float %1438, float 1.000000e+00)  ; FMin(a,b)
  %1443 = call float @dx.op.binary.f32(i32 36, float %1439, float 1.000000e+00)  ; FMin(a,b)
  %1444 = call float @dx.op.binary.f32(i32 36, float %1440, float 1.000000e+00)  ; FMin(a,b)
  %1445 = fmul fast float %1441, 1.500000e+00
  %1446 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %1443, float %1445)  ; FMad(a,b,c)
  %1447 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %1442, float 0.000000e+00)  ; FMad(a,b,c)
  %1448 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %1444, float %1447)  ; FMad(a,b,c)
  %1449 = fmul fast float %1441, 0x3FEBB67AE0000000
  %1450 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %1443, float %1449)  ; FMad(a,b,c)
  %1451 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1442, float 0.000000e+00)  ; FMad(a,b,c)
  %1452 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1444, float %1451)  ; FMad(a,b,c)
  %1453 = fadd fast float %1446, 5.000000e-01
  %1454 = fadd fast float %1450, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %22, i32 %23, i32 0, float %1453, float %1448, float %1454, float %1452, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1456

; <label>:1455                                    ; preds = %1415
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %22, i32 %23, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1456

; <label>:1456                                    ; preds = %1455, %1432, %1402
  %1457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %1458 = extractvalue %dx.types.CBufRet.f32 %1457, 0
  %1459 = extractvalue %dx.types.CBufRet.f32 %1457, 1
  %1460 = extractvalue %dx.types.CBufRet.f32 %1457, 2
  %1461 = call float @dx.op.dot3.f32(i32 55, float %279, float %280, float %281, float %1458, float %1459, float %1460)  ; Dot3(ax,ay,az,bx,by,bz)
  %1462 = fmul fast float %1461, %1403
  %1463 = fcmp fast ogt float %1406, 0.000000e+00
  %1464 = fdiv fast float 1.000000e+00, %1406
  %1465 = fmul fast float %1462, %1464
  %1466 = select i1 %1463, float %1465, float %290
  %1467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1468 = extractvalue %dx.types.CBufRet.f32 %1467, 0
  %1469 = extractvalue %dx.types.CBufRet.f32 %1467, 1
  %1470 = extractvalue %dx.types.CBufRet.f32 %1467, 2
  %1471 = fmul fast float %1468, %243
  %1472 = fmul fast float %1469, %243
  %1473 = fmul fast float %1470, %243
  %1474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1475 = extractvalue %dx.types.CBufRet.f32 %1474, 0
  %1476 = extractvalue %dx.types.CBufRet.f32 %1474, 1
  %1477 = extractvalue %dx.types.CBufRet.f32 %1474, 2
  %1478 = fmul fast float %1475, %244
  %1479 = fmul fast float %1476, %244
  %1480 = fmul fast float %1477, %244
  %1481 = fadd fast float %1478, %1471
  %1482 = fadd fast float %1479, %1472
  %1483 = fadd fast float %1480, %1473
  %1484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1485 = extractvalue %dx.types.CBufRet.f32 %1484, 0
  %1486 = extractvalue %dx.types.CBufRet.f32 %1484, 1
  %1487 = extractvalue %dx.types.CBufRet.f32 %1484, 2
  %1488 = fadd fast float %1481, %1485
  %1489 = fadd fast float %1482, %1486
  %1490 = fadd fast float %1483, %1487
  %1491 = fmul fast float %1488, %1466
  %1492 = fmul fast float %1489, %1466
  %1493 = fmul fast float %1490, %1466
  %1494 = call float @dx.op.dot3.f32(i32 55, float %1491, float %1492, float %1493, float %1491, float %1492, float %1493)  ; Dot3(ax,ay,az,bx,by,bz)
  %1495 = call float @dx.op.unary.f32(i32 25, float %1494)  ; Rsqrt(value)
  %1496 = fmul fast float %1495, %1494
  %1497 = fmul fast float %1495, %1491
  %1498 = fmul fast float %1495, %1492
  %1499 = fmul fast float %1495, %1493
  %1500 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1501 = extractvalue %dx.types.CBufRet.i32 %1500, 1
  %1502 = and i32 %1501, 1
  %1503 = icmp ne i32 %1502, 0
  %1504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1505 = extractvalue %dx.types.CBufRet.f32 %1504, 2
  %1506 = fcmp fast ogt float %1505, 0.000000e+00
  %1507 = and i1 %1503, %1506
  br i1 %1507, label %1508, label %1666, !dx.controlflow.hints !75

; <label>:1508                                    ; preds = %1456
  %1509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1510 = extractvalue %dx.types.CBufRet.f32 %1509, 2
  %1511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1512 = extractvalue %dx.types.CBufRet.f32 %1511, 2
  %1513 = fsub fast float %1510, %1512
  %1514 = extractvalue %dx.types.CBufRet.i32 %1500, 0
  %1515 = call i32 @dx.op.binary.i32(i32 40, i32 %1514, i32 3)  ; UMin(a,b)
  %1516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1517 = extractvalue %dx.types.CBufRet.f32 %1516, 0
  %1518 = extractvalue %dx.types.CBufRet.f32 %1516, 1
  %1519 = extractvalue %dx.types.CBufRet.f32 %1511, 0
  %1520 = extractvalue %dx.types.CBufRet.f32 %1511, 1
  %1521 = fsub fast float %1517, %1519
  %1522 = fsub fast float %1518, %1520
  %1523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1524 = extractvalue %dx.types.CBufRet.f32 %1523, 0
  %1525 = fcmp fast ogt float %1524, 0.000000e+00
  %1526 = fsub fast float -0.000000e+00, %1521
  %1527 = fsub fast float -0.000000e+00, %1522
  %1528 = call float @dx.op.dot2.f32(i32 54, float %1497, float %1498, float %1497, float %1498)  ; Dot2(ax,ay,bx,by)
  %1529 = call float @dx.op.dot2.f32(i32 54, float %1497, float %1498, float %1526, float %1527)  ; Dot2(ax,ay,bx,by)
  %1530 = fmul fast float %1529, 2.000000e+00
  %1531 = call float @dx.op.dot2.f32(i32 54, float %1526, float %1527, float %1526, float %1527)  ; Dot2(ax,ay,bx,by)
  %1532 = fmul fast float %1524, %1524
  %1533 = fsub fast float %1531, %1532
  %1534 = fmul fast float %1530, %1530
  %1535 = fmul fast float %1528, 4.000000e+00
  %1536 = fmul fast float %1535, %1533
  %1537 = fsub fast float %1534, %1536
  %1538 = fcmp fast ogt float %1537, 0.000000e+00
  br i1 %1538, label %1539, label %1554, !dx.controlflow.hints !76

; <label>:1539                                    ; preds = %1508
  %1540 = fcmp fast ogt float %1530, 0.000000e+00
  %1541 = call float @dx.op.unary.f32(i32 24, float %1537)  ; Sqrt(value)
  %1542 = fsub fast float -0.000000e+00, %1541
  %1543 = select i1 %1540, float %1541, float %1542
  %1544 = fadd fast float %1543, %1530
  %1545 = fmul float %1544, -5.000000e-01
  %1546 = fdiv fast float %1545, %1528
  %1547 = call float @dx.op.binary.f32(i32 35, float %1546, float 0.000000e+00)  ; FMax(a,b)
  %1548 = call float @dx.op.binary.f32(i32 36, float %1496, float %1547)  ; FMin(a,b)
  %1549 = fdiv fast float %1533, %1545
  %1550 = call float @dx.op.binary.f32(i32 35, float %1549, float 0.000000e+00)  ; FMax(a,b)
  %1551 = call float @dx.op.binary.f32(i32 36, float %1496, float %1550)  ; FMin(a,b)
  %1552 = call float @dx.op.binary.f32(i32 36, float %1548, float %1551)  ; FMin(a,b)
  %1553 = call float @dx.op.binary.f32(i32 35, float %1548, float %1551)  ; FMax(a,b)
  br label %1554

; <label>:1554                                    ; preds = %1539, %1508
  %1555 = phi float [ %1553, %1539 ], [ -1.000000e+00, %1508 ]
  %1556 = phi float [ %1552, %1539 ], [ -1.000000e+00, %1508 ]
  %1557 = phi i1 [ true, %1539 ], [ false, %1508 ]
  %1558 = and i1 %1525, %1557
  br i1 %1558, label %1559, label %1561, !dx.controlflow.hints !77

; <label>:1559                                    ; preds = %1554
  %1560 = fcmp fast oeq float %1556, %1555
  br i1 %1560, label %1666, label %1562, !dx.controlflow.hints !78

; <label>:1561                                    ; preds = %1554
  br i1 %1525, label %1666, label %1562, !dx.controlflow.hints !79

; <label>:1562                                    ; preds = %1561, %1559
  %1563 = phi float [ %1496, %1561 ], [ %1555, %1559 ]
  %1564 = phi float [ 0.000000e+00, %1561 ], [ %1556, %1559 ]
  %1565 = fcmp fast oeq float %1499, 0.000000e+00
  %1566 = fdiv fast float %1513, %1499
  %1567 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1566)  ; FMax(a,b)
  %1568 = select i1 %1565, float %1563, float %1567
  %1569 = call float @dx.op.binary.f32(i32 36, float %1563, float %1568)  ; FMin(a,b)
  %1570 = fcmp fast ogt float %1499, 0.000000e+00
  %1571 = fcmp fast olt float %1513, 0.000000e+00
  br i1 %1570, label %1572, label %1573, !dx.controlflow.hints !80

; <label>:1572                                    ; preds = %1562
  br i1 %1571, label %1666, label %1576, !dx.controlflow.hints !81

; <label>:1573                                    ; preds = %1562
  br i1 %1571, label %1574, label %1576, !dx.controlflow.hints !82

; <label>:1574                                    ; preds = %1573
  %1575 = call float @dx.op.binary.f32(i32 35, float %1564, float %1569)  ; FMax(a,b)
  br label %1576

; <label>:1576                                    ; preds = %1574, %1573, %1572
  %1577 = phi float [ %1575, %1574 ], [ %1564, %1573 ], [ %1564, %1572 ]
  %1578 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 0
  store float -1.000000e+00, float* %1578, align 4, !tbaa !83, !noalias !87
  %1579 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 1
  store float -1.000000e+00, float* %1579, align 4, !tbaa !83, !noalias !87
  %1580 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 2
  store float -1.000000e+00, float* %1580, align 4, !tbaa !83, !noalias !87
  %1581 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 0
  store float -1.000000e+00, float* %1581, align 4, !tbaa !83, !noalias !87
  %1582 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 1
  store float -1.000000e+00, float* %1582, align 4, !tbaa !83, !noalias !87
  %1583 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 2
  store float -1.000000e+00, float* %1583, align 4, !tbaa !83, !noalias !87
  %1584 = icmp sgt i32 %1515, 0
  br i1 %1584, label %1585, label %1643

; <label>:1585                                    ; preds = %1576
  br label %1586

; <label>:1586                                    ; preds = %1633, %1585
  %1587 = phi i32 [ %1634, %1633 ], [ 0, %1585 ]
  %1588 = add nuw i32 %1587, 171
  %1589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 %1588)  ; CBufferLoadLegacy(handle,regIndex)
  %1590 = extractvalue %dx.types.CBufRet.f32 %1589, 0
  %1591 = extractvalue %dx.types.CBufRet.f32 %1589, 1
  %1592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1593 = extractvalue %dx.types.CBufRet.f32 %1592, 0
  %1594 = extractvalue %dx.types.CBufRet.f32 %1592, 1
  %1595 = fsub fast float %1590, %1593
  %1596 = fsub fast float %1591, %1594
  %1597 = extractvalue %dx.types.CBufRet.f32 %1589, 2
  %1598 = fsub fast float -0.000000e+00, %1595
  %1599 = fsub fast float -0.000000e+00, %1596
  %1600 = call float @dx.op.dot2.f32(i32 54, float %1497, float %1498, float %1598, float %1599)  ; Dot2(ax,ay,bx,by)
  %1601 = fmul fast float %1600, 2.000000e+00
  %1602 = call float @dx.op.dot2.f32(i32 54, float %1598, float %1599, float %1598, float %1599)  ; Dot2(ax,ay,bx,by)
  %1603 = fmul fast float %1597, %1597
  %1604 = fsub fast float %1602, %1603
  %1605 = fmul fast float %1601, %1601
  %1606 = fmul fast float %1535, %1604
  %1607 = fsub fast float %1605, %1606
  %1608 = fcmp fast ogt float %1607, 0.000000e+00
  br i1 %1608, label %1609, label %1624, !dx.controlflow.hints !76

; <label>:1609                                    ; preds = %1586
  %1610 = fcmp fast ogt float %1601, 0.000000e+00
  %1611 = call float @dx.op.unary.f32(i32 24, float %1607)  ; Sqrt(value)
  %1612 = fsub fast float -0.000000e+00, %1611
  %1613 = select i1 %1610, float %1611, float %1612
  %1614 = fadd fast float %1613, %1601
  %1615 = fmul float %1614, -5.000000e-01
  %1616 = fdiv fast float %1615, %1528
  %1617 = call float @dx.op.binary.f32(i32 35, float %1616, float 0.000000e+00)  ; FMax(a,b)
  %1618 = call float @dx.op.binary.f32(i32 36, float %1563, float %1617)  ; FMin(a,b)
  %1619 = fdiv fast float %1604, %1615
  %1620 = call float @dx.op.binary.f32(i32 35, float %1619, float 0.000000e+00)  ; FMax(a,b)
  %1621 = call float @dx.op.binary.f32(i32 36, float %1563, float %1620)  ; FMin(a,b)
  %1622 = call float @dx.op.binary.f32(i32 36, float %1618, float %1621)  ; FMin(a,b)
  %1623 = call float @dx.op.binary.f32(i32 35, float %1618, float %1621)  ; FMax(a,b)
  br label %1624

; <label>:1624                                    ; preds = %1609, %1586
  %1625 = phi float [ %1623, %1609 ], [ -1.000000e+00, %1586 ]
  %1626 = phi float [ %1622, %1609 ], [ -1.000000e+00, %1586 ]
  %1627 = phi i1 [ true, %1609 ], [ false, %1586 ]
  br i1 %1627, label %1628, label %1633, !dx.controlflow.hints !98

; <label>:1628                                    ; preds = %1624
  %1629 = call float @dx.op.binary.f32(i32 35, float %1577, float %1626)  ; FMax(a,b)
  %1630 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 %1587
  store float %1629, float* %1630, align 4, !tbaa !83, !noalias !87
  %1631 = call float @dx.op.binary.f32(i32 35, float %1577, float %1625)  ; FMax(a,b)
  %1632 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 %1587
  store float %1631, float* %1632, align 4, !tbaa !83, !noalias !87
  br label %1633

; <label>:1633                                    ; preds = %1628, %1624
  %1634 = add nuw nsw i32 %1587, 1
  %1635 = icmp eq i32 %1634, %1515
  br i1 %1635, label %1636, label %1586

; <label>:1636                                    ; preds = %1633
  %1637 = load float, float* %1580, align 4, !tbaa !83, !alias.scope !99, !noalias !102
  %1638 = load float, float* %1579, align 4, !tbaa !83, !alias.scope !105, !noalias !106
  %1639 = load float, float* %1578, align 4, !tbaa !83, !alias.scope !107, !noalias !108
  %1640 = load float, float* %1583, align 4, !tbaa !83, !alias.scope !109, !noalias !112
  %1641 = load float, float* %1582, align 4, !tbaa !83, !alias.scope !115, !noalias !116
  %1642 = load float, float* %1581, align 4, !tbaa !83, !alias.scope !117, !noalias !118
  br label %1643

; <label>:1643                                    ; preds = %1636, %1576
  %1644 = phi float [ -1.000000e+00, %1576 ], [ %1642, %1636 ]
  %1645 = phi float [ -1.000000e+00, %1576 ], [ %1641, %1636 ]
  %1646 = phi float [ -1.000000e+00, %1576 ], [ %1640, %1636 ]
  %1647 = phi float [ -1.000000e+00, %1576 ], [ %1639, %1636 ]
  %1648 = phi float [ -1.000000e+00, %1576 ], [ %1638, %1636 ]
  %1649 = phi float [ -1.000000e+00, %1576 ], [ %1637, %1636 ]
  %1650 = call float @dx.op.binary.f32(i32 36, float %1648, float %1649)  ; FMin(a,b)
  %1651 = call float @dx.op.binary.f32(i32 36, float %1647, float %1650)  ; FMin(a,b)
  %1652 = call float @dx.op.binary.f32(i32 35, float %1647, float %1648)  ; FMax(a,b)
  %1653 = call float @dx.op.binary.f32(i32 36, float %1652, float %1649)  ; FMin(a,b)
  %1654 = call float @dx.op.binary.f32(i32 36, float %1647, float %1648)  ; FMin(a,b)
  %1655 = call float @dx.op.binary.f32(i32 35, float %1654, float %1653)  ; FMax(a,b)
  %1656 = call float @dx.op.binary.f32(i32 35, float %1648, float %1649)  ; FMax(a,b)
  %1657 = call float @dx.op.binary.f32(i32 35, float %1647, float %1656)  ; FMax(a,b)
  store float %1651, float* %1578, align 4, !tbaa !83, !alias.scope !107, !noalias !108
  store float %1655, float* %1579, align 4, !tbaa !83, !alias.scope !105, !noalias !106
  store float %1657, float* %1580, align 4, !tbaa !83, !alias.scope !99, !noalias !102
  %1658 = call float @dx.op.binary.f32(i32 36, float %1645, float %1646)  ; FMin(a,b)
  %1659 = call float @dx.op.binary.f32(i32 36, float %1644, float %1658)  ; FMin(a,b)
  %1660 = call float @dx.op.binary.f32(i32 35, float %1644, float %1645)  ; FMax(a,b)
  %1661 = call float @dx.op.binary.f32(i32 36, float %1660, float %1646)  ; FMin(a,b)
  %1662 = call float @dx.op.binary.f32(i32 36, float %1644, float %1645)  ; FMin(a,b)
  %1663 = call float @dx.op.binary.f32(i32 35, float %1662, float %1661)  ; FMax(a,b)
  %1664 = call float @dx.op.binary.f32(i32 35, float %1645, float %1646)  ; FMax(a,b)
  %1665 = call float @dx.op.binary.f32(i32 35, float %1644, float %1664)  ; FMax(a,b)
  store float %1659, float* %1581, align 4, !tbaa !83, !alias.scope !117, !noalias !118
  store float %1663, float* %1582, align 4, !tbaa !83, !alias.scope !115, !noalias !116
  store float %1665, float* %1583, align 4, !tbaa !83, !alias.scope !109, !noalias !112
  br label %1666

; <label>:1666                                    ; preds = %1643, %1572, %1561, %1559, %1456
  %1667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %1668 = extractvalue %dx.types.CBufRet.f32 %1667, 2
  %1669 = fmul fast float %1668, %1466
  %1670 = call float @dx.op.unary.f32(i32 7, float %1669)  ; Saturate(value)
  %1671 = fptoui float %1405 to i32
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1672 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %24
  store i32 %1671, i32 addrspace(3)* %1672, align 4, !tbaa !119
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1673 = and i32 %24, 63
  %1674 = icmp ult i32 %1673, 32
  br i1 %1674, label %1675, label %1681, !dx.controlflow.hints !121

; <label>:1675                                    ; preds = %1666
  %1676 = add i32 %24, 32
  %1677 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1676
  %1678 = load i32, i32 addrspace(3)* %1677, align 4, !tbaa !119
  %1679 = load i32, i32 addrspace(3)* %1672, align 4, !tbaa !119
  %1680 = call i32 @dx.op.binary.i32(i32 40, i32 %1679, i32 %1678)  ; UMin(a,b)
  store i32 %1680, i32 addrspace(3)* %1672, align 4, !tbaa !119
  br label %1681

; <label>:1681                                    ; preds = %1675, %1666
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1682 = icmp ult i32 %1673, 16
  br i1 %1682, label %1683, label %1689, !dx.controlflow.hints !122

; <label>:1683                                    ; preds = %1681
  %1684 = add i32 %24, 16
  %1685 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1684
  %1686 = load i32, i32 addrspace(3)* %1685, align 4, !tbaa !119
  %1687 = load i32, i32 addrspace(3)* %1672, align 4, !tbaa !119
  %1688 = call i32 @dx.op.binary.i32(i32 40, i32 %1687, i32 %1686)  ; UMin(a,b)
  store i32 %1688, i32 addrspace(3)* %1672, align 4, !tbaa !119
  br label %1689

; <label>:1689                                    ; preds = %1683, %1681
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1690 = icmp ult i32 %1673, 8
  br i1 %1690, label %1691, label %1697, !dx.controlflow.hints !123

; <label>:1691                                    ; preds = %1689
  %1692 = add i32 %24, 8
  %1693 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1692
  %1694 = load i32, i32 addrspace(3)* %1693, align 4, !tbaa !119
  %1695 = load i32, i32 addrspace(3)* %1672, align 4, !tbaa !119
  %1696 = call i32 @dx.op.binary.i32(i32 40, i32 %1695, i32 %1694)  ; UMin(a,b)
  store i32 %1696, i32 addrspace(3)* %1672, align 4, !tbaa !119
  br label %1697

; <label>:1697                                    ; preds = %1691, %1689
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1698 = icmp ult i32 %1673, 4
  br i1 %1698, label %1699, label %1705, !dx.controlflow.hints !124

; <label>:1699                                    ; preds = %1697
  %1700 = add i32 %24, 4
  %1701 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1700
  %1702 = load i32, i32 addrspace(3)* %1701, align 4, !tbaa !119
  %1703 = load i32, i32 addrspace(3)* %1672, align 4, !tbaa !119
  %1704 = call i32 @dx.op.binary.i32(i32 40, i32 %1703, i32 %1702)  ; UMin(a,b)
  store i32 %1704, i32 addrspace(3)* %1672, align 4, !tbaa !119
  br label %1705

; <label>:1705                                    ; preds = %1699, %1697
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1706 = icmp ult i32 %1673, 2
  br i1 %1706, label %1707, label %1713, !dx.controlflow.hints !125

; <label>:1707                                    ; preds = %1705
  %1708 = add i32 %24, 2
  %1709 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1708
  %1710 = load i32, i32 addrspace(3)* %1709, align 4, !tbaa !119
  %1711 = load i32, i32 addrspace(3)* %1672, align 4, !tbaa !119
  %1712 = call i32 @dx.op.binary.i32(i32 40, i32 %1711, i32 %1710)  ; UMin(a,b)
  store i32 %1712, i32 addrspace(3)* %1672, align 4, !tbaa !119
  br label %1713

; <label>:1713                                    ; preds = %1707, %1705
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1714 = icmp eq i32 %1673, 0
  br i1 %1714, label %1715, label %1721, !dx.controlflow.hints !126

; <label>:1715                                    ; preds = %1713
  %1716 = add i32 %24, 1
  %1717 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1716
  %1718 = load i32, i32 addrspace(3)* %1717, align 4, !tbaa !119
  %1719 = load i32, i32 addrspace(3)* %1672, align 4, !tbaa !119
  %1720 = call i32 @dx.op.binary.i32(i32 40, i32 %1719, i32 %1718)  ; UMin(a,b)
  store i32 %1720, i32 addrspace(3)* %1672, align 4, !tbaa !119
  br label %1721

; <label>:1721                                    ; preds = %1715, %1713
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1722 = and i32 %24, -64
  %1723 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1722
  %1724 = load i32, i32 addrspace(3)* %1723, align 4, !tbaa !119
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %1671, i32 addrspace(3)* %1672, align 4, !tbaa !119
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %1674, label %1725, label %1731, !dx.controlflow.hints !127

; <label>:1725                                    ; preds = %1721
  %1726 = add i32 %24, 32
  %1727 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1726
  %1728 = load i32, i32 addrspace(3)* %1727, align 4, !tbaa !119
  %1729 = load i32, i32 addrspace(3)* %1672, align 4, !tbaa !119
  %1730 = call i32 @dx.op.binary.i32(i32 39, i32 %1729, i32 %1728)  ; UMax(a,b)
  store i32 %1730, i32 addrspace(3)* %1672, align 4, !tbaa !119
  br label %1731

; <label>:1731                                    ; preds = %1725, %1721
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1682, label %1732, label %1738, !dx.controlflow.hints !128

; <label>:1732                                    ; preds = %1731
  %1733 = add i32 %24, 16
  %1734 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1733
  %1735 = load i32, i32 addrspace(3)* %1734, align 4, !tbaa !119
  %1736 = load i32, i32 addrspace(3)* %1672, align 4, !tbaa !119
  %1737 = call i32 @dx.op.binary.i32(i32 39, i32 %1736, i32 %1735)  ; UMax(a,b)
  store i32 %1737, i32 addrspace(3)* %1672, align 4, !tbaa !119
  br label %1738

; <label>:1738                                    ; preds = %1732, %1731
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1690, label %1739, label %1745, !dx.controlflow.hints !129

; <label>:1739                                    ; preds = %1738
  %1740 = add i32 %24, 8
  %1741 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1740
  %1742 = load i32, i32 addrspace(3)* %1741, align 4, !tbaa !119
  %1743 = load i32, i32 addrspace(3)* %1672, align 4, !tbaa !119
  %1744 = call i32 @dx.op.binary.i32(i32 39, i32 %1743, i32 %1742)  ; UMax(a,b)
  store i32 %1744, i32 addrspace(3)* %1672, align 4, !tbaa !119
  br label %1745

; <label>:1745                                    ; preds = %1739, %1738
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1698, label %1746, label %1752, !dx.controlflow.hints !130

; <label>:1746                                    ; preds = %1745
  %1747 = add i32 %24, 4
  %1748 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1747
  %1749 = load i32, i32 addrspace(3)* %1748, align 4, !tbaa !119
  %1750 = load i32, i32 addrspace(3)* %1672, align 4, !tbaa !119
  %1751 = call i32 @dx.op.binary.i32(i32 39, i32 %1750, i32 %1749)  ; UMax(a,b)
  store i32 %1751, i32 addrspace(3)* %1672, align 4, !tbaa !119
  br label %1752

; <label>:1752                                    ; preds = %1746, %1745
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1706, label %1753, label %1759, !dx.controlflow.hints !131

; <label>:1753                                    ; preds = %1752
  %1754 = add i32 %24, 2
  %1755 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1754
  %1756 = load i32, i32 addrspace(3)* %1755, align 4, !tbaa !119
  %1757 = load i32, i32 addrspace(3)* %1672, align 4, !tbaa !119
  %1758 = call i32 @dx.op.binary.i32(i32 39, i32 %1757, i32 %1756)  ; UMax(a,b)
  store i32 %1758, i32 addrspace(3)* %1672, align 4, !tbaa !119
  br label %1759

; <label>:1759                                    ; preds = %1753, %1752
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1714, label %1760, label %1766, !dx.controlflow.hints !132

; <label>:1760                                    ; preds = %1759
  %1761 = add i32 %24, 1
  %1762 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1761
  %1763 = load i32, i32 addrspace(3)* %1762, align 4, !tbaa !119
  %1764 = load i32, i32 addrspace(3)* %1672, align 4, !tbaa !119
  %1765 = call i32 @dx.op.binary.i32(i32 39, i32 %1764, i32 %1763)  ; UMax(a,b)
  store i32 %1765, i32 addrspace(3)* %1672, align 4, !tbaa !119
  br label %1766

; <label>:1766                                    ; preds = %1760, %1759
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1767 = load i32, i32 addrspace(3)* %1723, align 4, !tbaa !119
  %1768 = uitofp i32 %1767 to float
  %1769 = uitofp i32 %1724 to float
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %22, i32 %23, i32 undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1771 = extractvalue %dx.types.CBufRet.f32 %1770, 0
  %1772 = fmul fast float %1771, %1405
  %1773 = fmul fast float %1771, %1768
  %1774 = fmul fast float %1771, %1769
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %22, i32 %23, i32 undef, float %1772, float %1773, float %1774, float %1772, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %22, i32 %23, i32 undef, float %1670, float %1670, float %1670, float %1670, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!33 = !{void ()* @cs_fog_raymarching_air_clouds_particles_brfog, !"cs_fog_raymarching_air_clouds_particles_brfog", null, !4, !34}
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
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.unroll.disable"}
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
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
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
!75 = distinct !{!75, !"dx.controlflow.hints", i32 1}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 2}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 2}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 2}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 2}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 2}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 2}
!83 = !{!84, !84, i64 0}
!84 = !{!"float", !85, i64 0}
!85 = !{!"omnipotent char", !86, i64 0}
!86 = !{!"Simple C/C++ TBAA"}
!87 = !{!88, !90, !92, !93, !95, !96, !97}
!88 = distinct !{!88, !89, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!89 = distinct !{!89, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!90 = distinct !{!90, !91, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!91 = distinct !{!91, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!92 = distinct !{!92, !91, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!93 = distinct !{!93, !94, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %scattering"}
!94 = distinct !{!94, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z"}
!95 = distinct !{!95, !94, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %transmission"}
!96 = distinct !{!96, !94, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %depthDensityWeighted"}
!97 = distinct !{!97, !94, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %rawShadowmapData"}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 2}
!99 = !{!100}
!100 = distinct !{!100, !101, !"\01?sort@@YAXAIAM00@Z: %c"}
!101 = distinct !{!101, !"\01?sort@@YAXAIAM00@Z"}
!102 = !{!103, !104, !88, !90, !92, !93, !95, !96, !97}
!103 = distinct !{!103, !101, !"\01?sort@@YAXAIAM00@Z: %a"}
!104 = distinct !{!104, !101, !"\01?sort@@YAXAIAM00@Z: %b"}
!105 = !{!104}
!106 = !{!103, !100, !88, !90, !92, !93, !95, !96, !97}
!107 = !{!103}
!108 = !{!104, !100, !88, !90, !92, !93, !95, !96, !97}
!109 = !{!110}
!110 = distinct !{!110, !111, !"\01?sort@@YAXAIAM00@Z: %c"}
!111 = distinct !{!111, !"\01?sort@@YAXAIAM00@Z"}
!112 = !{!113, !114, !88, !90, !92, !93, !95, !96, !97}
!113 = distinct !{!113, !111, !"\01?sort@@YAXAIAM00@Z: %a"}
!114 = distinct !{!114, !111, !"\01?sort@@YAXAIAM00@Z: %b"}
!115 = !{!114}
!116 = !{!113, !110, !88, !90, !92, !93, !95, !96, !97}
!117 = !{!113}
!118 = !{!114, !110, !88, !90, !92, !93, !95, !96, !97}
!119 = !{!120, !120, i64 0}
!120 = !{!"int", !85, i64 0}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 2}
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

