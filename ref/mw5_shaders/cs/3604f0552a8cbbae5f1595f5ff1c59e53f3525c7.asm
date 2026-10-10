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
; shader hash: d4d254132b443a82f29b0bc90f84d5ce
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

define void @cs_fog_raymarching_clouds_heightmap_particles_brfog() {
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
  %373 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %374 = extractvalue %dx.types.CBufRet.i32 %373, 3
  %375 = icmp eq i32 %374, 0
  %376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %377 = extractvalue %dx.types.CBufRet.f32 %376, 2
  %378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %379 = extractvalue %dx.types.CBufRet.f32 %378, 2
  %380 = fsub fast float %377, %240
  %381 = fadd fast float %380, %379
  br i1 %375, label %393, label %382, !dx.controlflow.hints !41

; <label>:382                                     ; preds = %369
  %383 = fsub fast float -0.000000e+00, %238
  %384 = fsub fast float -0.000000e+00, %239
  %385 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %383, float %384, float %381)  ; Dot3(ax,ay,az,bx,by,bz)
  %386 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %281, float %282, float %283)  ; Dot3(ax,ay,az,bx,by,bz)
  %387 = fdiv fast float 1.000000e+00, %386
  %388 = fmul fast float %387, %385
  %389 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %383, float %384, float %380)  ; Dot3(ax,ay,az,bx,by,bz)
  %390 = fmul fast float %387, %389
  %391 = call float @dx.op.binary.f32(i32 36, float %388, float %390)  ; FMin(a,b)
  %392 = call float @dx.op.binary.f32(i32 35, float %388, float %390)  ; FMax(a,b)
  br label %426

; <label>:393                                     ; preds = %369
  %394 = fdiv fast float 1.000000e+00, %281
  %395 = fdiv fast float 1.000000e+00, %282
  %396 = fdiv fast float 1.000000e+00, %283
  %397 = extractvalue %dx.types.CBufRet.f32 %376, 0
  %398 = extractvalue %dx.types.CBufRet.f32 %376, 1
  %399 = extractvalue %dx.types.CBufRet.f32 %378, 0
  %400 = extractvalue %dx.types.CBufRet.f32 %378, 1
  %401 = fsub fast float %397, %238
  %402 = fmul fast float %401, %394
  %403 = fadd fast float %401, %399
  %404 = fmul fast float %403, %394
  %405 = call float @dx.op.binary.f32(i32 36, float %402, float %404)  ; FMin(a,b)
  %406 = call float @dx.op.binary.f32(i32 35, float %402, float %404)  ; FMax(a,b)
  %407 = fsub fast float %398, %239
  %408 = fmul fast float %407, %395
  %409 = fadd fast float %407, %400
  %410 = fmul fast float %409, %395
  %411 = call float @dx.op.binary.f32(i32 36, float %408, float %410)  ; FMin(a,b)
  %412 = call float @dx.op.binary.f32(i32 35, float %405, float %411)  ; FMax(a,b)
  %413 = call float @dx.op.binary.f32(i32 35, float %408, float %410)  ; FMax(a,b)
  %414 = call float @dx.op.binary.f32(i32 36, float %406, float %413)  ; FMin(a,b)
  %415 = fmul fast float %380, %396
  %416 = fmul fast float %381, %396
  %417 = call float @dx.op.binary.f32(i32 36, float %415, float %416)  ; FMin(a,b)
  %418 = call float @dx.op.binary.f32(i32 35, float %412, float %417)  ; FMax(a,b)
  %419 = call float @dx.op.binary.f32(i32 35, float %415, float %416)  ; FMax(a,b)
  %420 = call float @dx.op.binary.f32(i32 36, float %414, float %419)  ; FMin(a,b)
  %421 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %418)  ; FMax(a,b)
  %422 = fcmp fast ult float %420, %421
  br i1 %422, label %426, label %423, !dx.controlflow.hints !42

; <label>:423                                     ; preds = %393
  %424 = call float @dx.op.binary.f32(i32 36, float %418, float %420)  ; FMin(a,b)
  %425 = call float @dx.op.binary.f32(i32 35, float %418, float %420)  ; FMax(a,b)
  br label %426

; <label>:426                                     ; preds = %423, %393, %382
  %427 = phi float [ %391, %382 ], [ %424, %423 ], [ 0.000000e+00, %393 ]
  %428 = phi float [ %392, %382 ], [ %425, %423 ], [ 0.000000e+00, %393 ]
  %429 = fcmp fast oeq float %428, 0.000000e+00
  br i1 %429, label %433, label %430, !dx.controlflow.hints !43

; <label>:430                                     ; preds = %426
  %431 = call float @dx.op.binary.f32(i32 36, float %372, float %427)  ; FMin(a,b)
  %432 = call float @dx.op.binary.f32(i32 35, float %371, float %428)  ; FMax(a,b)
  br label %433

; <label>:433                                     ; preds = %430, %426
  %434 = phi i32 [ 1, %430 ], [ 0, %426 ]
  %435 = phi float [ %432, %430 ], [ %371, %426 ]
  %436 = phi float [ %431, %430 ], [ %372, %426 ]
  %437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %438 = extractvalue %dx.types.CBufRet.f32 %437, 3
  %439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %440 = extractvalue %dx.types.CBufRet.f32 %439, 0
  %441 = fsub fast float -0.000000e+00, %238
  %442 = fsub fast float -0.000000e+00, %239
  %443 = fsub fast float %438, %240
  %444 = fadd fast float %443, %440
  %445 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %441, float %442, float %444)  ; Dot3(ax,ay,az,bx,by,bz)
  %446 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %281, float %282, float %283)  ; Dot3(ax,ay,az,bx,by,bz)
  %447 = fdiv fast float 1.000000e+00, %446
  %448 = fmul fast float %447, %445
  %449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %450 = extractvalue %dx.types.CBufRet.f32 %449, 2
  %451 = fsub fast float %450, %240
  %452 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %441, float %442, float %451)  ; Dot3(ax,ay,az,bx,by,bz)
  %453 = fmul fast float %447, %452
  %454 = call float @dx.op.binary.f32(i32 36, float %448, float %453)  ; FMin(a,b)
  %455 = call float @dx.op.binary.f32(i32 35, float %448, float %453)  ; FMax(a,b)
  %456 = call float @dx.op.binary.f32(i32 36, float %436, float %454)  ; FMin(a,b)
  %457 = call float @dx.op.binary.f32(i32 35, float %435, float %455)  ; FMax(a,b)
  %458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %459 = extractvalue %dx.types.CBufRet.f32 %458, 2
  %460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %461 = extractvalue %dx.types.CBufRet.f32 %460, 3
  %462 = fsub fast float %459, %240
  %463 = fadd fast float %462, %461
  %464 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %441, float %442, float %463)  ; Dot3(ax,ay,az,bx,by,bz)
  %465 = fmul fast float %447, %464
  %466 = fcmp fast olt float %465, 0.000000e+00
  %467 = fcmp fast ogt float %283, 0.000000e+00
  %468 = and i1 %467, %466
  br i1 %468, label %473, label %469, !dx.controlflow.hints !44

; <label>:469                                     ; preds = %433
  %470 = fcmp fast olt float %283, 0.000000e+00
  br i1 %470, label %471, label %473, !dx.controlflow.hints !45

; <label>:471                                     ; preds = %469
  %472 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %465)  ; FMax(a,b)
  br label %473

; <label>:473                                     ; preds = %471, %469, %433
  %474 = phi float [ 0.000000e+00, %433 ], [ %472, %471 ], [ 0.000000e+00, %469 ]
  %475 = phi float [ 0.000000e+00, %433 ], [ 0x47EFFFFFE0000000, %471 ], [ %465, %469 ]
  %476 = fcmp fast oeq float %475, 0.000000e+00
  br i1 %476, label %480, label %477, !dx.controlflow.hints !46

; <label>:477                                     ; preds = %473
  %478 = call float @dx.op.binary.f32(i32 36, float %456, float %474)  ; FMin(a,b)
  %479 = call float @dx.op.binary.f32(i32 35, float %457, float %475)  ; FMax(a,b)
  br label %480

; <label>:480                                     ; preds = %477, %473
  %481 = phi i32 [ 1, %477 ], [ 0, %473 ]
  %482 = phi float [ %479, %477 ], [ %457, %473 ]
  %483 = phi float [ %478, %477 ], [ %456, %473 ]
  %484 = fdiv fast float 1.000000e+00, %281
  %485 = fdiv fast float 1.000000e+00, %282
  %486 = fdiv fast float 1.000000e+00, %283
  %487 = call float @dx.op.binary.f32(i32 36, float %302, float %482)  ; FMin(a,b)
  %488 = call float @dx.op.binary.f32(i32 35, float %279, float %483)  ; FMax(a,b)
  %489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %490 = extractvalue %dx.types.CBufRet.f32 %489, 0
  %491 = fmul fast float %227, 2.000000e+00
  %492 = fadd fast float %491, -1.000000e+00
  %493 = fmul fast float %490, %492
  %494 = fadd fast float %493, %488
  %495 = fcmp fast olt float %494, %487
  %496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %497 = extractvalue %dx.types.CBufRet.f32 %496, 2
  %498 = fcmp fast olt float %497, 1.000000e+00
  %499 = and i1 %495, %498
  br i1 %499, label %500, label %1670

; <label>:500                                     ; preds = %480
  %501 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %502 = extractvalue %dx.types.CBufRet.i32 %501, 1
  %503 = add i32 %502, -1
  %504 = fmul fast float %494, %283
  %505 = fadd fast float %504, %240
  %506 = fmul fast float %494, %282
  %507 = fadd fast float %506, %239
  %508 = fmul fast float %494, %281
  %509 = fadd fast float %508, %238
  br label %510

; <label>:510                                     ; preds = %1648, %500
  %511 = phi i32 [ %1052, %1648 ], [ undef, %500 ]
  %512 = phi float [ %1054, %1648 ], [ undef, %500 ]
  %513 = phi float [ %809, %1648 ], [ undef, %500 ]
  %514 = phi float [ %810, %1648 ], [ undef, %500 ]
  %515 = phi float [ %811, %1648 ], [ undef, %500 ]
  %516 = phi float [ %812, %1648 ], [ undef, %500 ]
  %517 = phi float [ %1650, %1648 ], [ 0.000000e+00, %500 ]
  %518 = phi float [ %1651, %1648 ], [ 1.000000e+00, %500 ]
  %519 = phi float [ %1661, %1648 ], [ %509, %500 ]
  %520 = phi float [ %1662, %1648 ], [ %507, %500 ]
  %521 = phi float [ %1663, %1648 ], [ %505, %500 ]
  %522 = phi float [ %1649, %1648 ], [ %494, %500 ]
  %523 = phi i32 [ %534, %1648 ], [ 0, %500 ]
  %524 = phi i32 [ %814, %1648 ], [ 10, %500 ]
  %525 = phi i32 [ %706, %1648 ], [ %503, %500 ]
  %526 = phi float [ %1652, %1648 ], [ 0.000000e+00, %500 ]
  %527 = phi float [ %1653, %1648 ], [ 0.000000e+00, %500 ]
  %528 = phi float [ %1654, %1648 ], [ 0.000000e+00, %500 ]
  %529 = phi float [ %1655, %1648 ], [ 0.000000e+00, %500 ]
  %530 = phi float [ %1656, %1648 ], [ 0.000000e+00, %500 ]
  %531 = phi i32 [ %1657, %1648 ], [ 0, %500 ]
  %532 = fsub fast float -0.000000e+00, %520
  %533 = fsub fast float -0.000000e+00, %519
  %534 = add i32 %523, 1
  %535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %536 = extractvalue %dx.types.CBufRet.f32 %535, 0
  %537 = icmp eq i32 %370, 0
  br i1 %537, label %703, label %538, !dx.controlflow.hints !47

; <label>:538                                     ; preds = %510
  %539 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %540 = extractvalue %dx.types.CBufRet.i32 %539, 1
  %541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %542 = extractvalue %dx.types.CBufRet.f32 %541, 1
  %543 = fcmp fast ogt float %542, %522
  br i1 %543, label %544, label %546, !dx.controlflow.hints !48

; <label>:544                                     ; preds = %538
  %545 = fsub fast float %542, %522
  br label %693

; <label>:546                                     ; preds = %538
  %547 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %548 = extractvalue %dx.types.CBufRet.i32 %547, 3
  %549 = icmp eq i32 %548, 0
  %550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %551 = extractvalue %dx.types.CBufRet.f32 %550, 2
  %552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %553 = extractvalue %dx.types.CBufRet.f32 %552, 2
  %554 = fsub fast float %551, %521
  %555 = fadd fast float %554, %553
  %556 = fsub fast float 0xC7EFFFFFE0000000, %521
  br i1 %549, label %564, label %557, !dx.controlflow.hints !38

; <label>:557                                     ; preds = %546
  %558 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %533, float %532, float %555)  ; Dot3(ax,ay,az,bx,by,bz)
  %559 = fmul fast float %447, %558
  %560 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %533, float %532, float %556)  ; Dot3(ax,ay,az,bx,by,bz)
  %561 = fmul fast float %447, %560
  %562 = call float @dx.op.binary.f32(i32 36, float %559, float %561)  ; FMin(a,b)
  %563 = call float @dx.op.binary.f32(i32 35, float %559, float %561)  ; FMax(a,b)
  br label %594

; <label>:564                                     ; preds = %546
  %565 = extractvalue %dx.types.CBufRet.f32 %550, 0
  %566 = extractvalue %dx.types.CBufRet.f32 %550, 1
  %567 = extractvalue %dx.types.CBufRet.f32 %552, 0
  %568 = extractvalue %dx.types.CBufRet.f32 %552, 1
  %569 = fsub fast float %565, %519
  %570 = fmul fast float %484, %569
  %571 = fadd fast float %569, %567
  %572 = fmul fast float %571, %484
  %573 = call float @dx.op.binary.f32(i32 36, float %570, float %572)  ; FMin(a,b)
  %574 = call float @dx.op.binary.f32(i32 35, float %570, float %572)  ; FMax(a,b)
  %575 = fsub fast float %566, %520
  %576 = fmul fast float %485, %575
  %577 = fadd fast float %575, %568
  %578 = fmul fast float %577, %485
  %579 = call float @dx.op.binary.f32(i32 36, float %576, float %578)  ; FMin(a,b)
  %580 = call float @dx.op.binary.f32(i32 35, float %573, float %579)  ; FMax(a,b)
  %581 = call float @dx.op.binary.f32(i32 35, float %576, float %578)  ; FMax(a,b)
  %582 = call float @dx.op.binary.f32(i32 36, float %574, float %581)  ; FMin(a,b)
  %583 = fmul fast float %486, %556
  %584 = fmul fast float %486, %555
  %585 = call float @dx.op.binary.f32(i32 36, float %583, float %584)  ; FMin(a,b)
  %586 = call float @dx.op.binary.f32(i32 35, float %580, float %585)  ; FMax(a,b)
  %587 = call float @dx.op.binary.f32(i32 35, float %583, float %584)  ; FMax(a,b)
  %588 = call float @dx.op.binary.f32(i32 36, float %582, float %587)  ; FMin(a,b)
  %589 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %586)  ; FMax(a,b)
  %590 = fcmp fast ult float %588, %589
  br i1 %590, label %594, label %591, !dx.controlflow.hints !39

; <label>:591                                     ; preds = %564
  %592 = call float @dx.op.binary.f32(i32 36, float %586, float %588)  ; FMin(a,b)
  %593 = call float @dx.op.binary.f32(i32 35, float %586, float %588)  ; FMax(a,b)
  br label %594

; <label>:594                                     ; preds = %591, %564, %557
  %595 = phi float [ %562, %557 ], [ %592, %591 ], [ 0.000000e+00, %564 ]
  %596 = phi float [ %563, %557 ], [ %593, %591 ], [ 0.000000e+00, %564 ]
  %597 = fcmp fast ogt float %595, 0.000000e+00
  br i1 %597, label %693, label %598, !dx.controlflow.hints !49

; <label>:598                                     ; preds = %594
  %599 = fcmp fast ugt float %596, 0.000000e+00
  br i1 %599, label %600, label %693, !dx.controlflow.hints !50

; <label>:600                                     ; preds = %598
  %601 = icmp sgt i32 %525, 0
  br i1 %601, label %602, label %687

; <label>:602                                     ; preds = %600
  br label %603

; <label>:603                                     ; preds = %683, %602
  %604 = phi i32 [ %684, %683 ], [ %525, %602 ]
  %605 = sitofp i32 %604 to float
  %606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %607 = extractvalue %dx.types.CBufRet.f32 %606, 0
  %608 = extractvalue %dx.types.CBufRet.f32 %606, 1
  %609 = fsub fast float %519, %607
  %610 = fsub fast float %520, %608
  %611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %612 = extractvalue %dx.types.CBufRet.f32 %611, 0
  %613 = extractvalue %dx.types.CBufRet.f32 %611, 1
  %614 = fmul fast float %609, %612
  %615 = fmul fast float %610, %613
  %616 = fsub fast float 1.000000e+00, %615
  %617 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %618 = extractvalue %dx.types.CBufRet.i32 %617, 3
  %619 = icmp eq i32 %618, 0
  br i1 %619, label %626, label %620, !dx.controlflow.hints !51

; <label>:620                                     ; preds = %603
  %621 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %18, float %614, float %616, float undef, float undef, i32 0, i32 0, i32 undef, float %605)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %622 = extractvalue %dx.types.ResRet.f32 %621, 0
  %623 = extractvalue %dx.types.ResRet.f32 %621, 1
  %624 = extractvalue %dx.types.ResRet.f32 %621, 2
  %625 = extractvalue %dx.types.ResRet.f32 %621, 3
  br label %632

; <label>:626                                     ; preds = %603
  %627 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %19, float %614, float %616, float undef, float undef, i32 0, i32 0, i32 undef, float %605)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %628 = extractvalue %dx.types.ResRet.f32 %627, 0
  %629 = extractvalue %dx.types.ResRet.f32 %627, 1
  %630 = extractvalue %dx.types.ResRet.f32 %627, 2
  %631 = extractvalue %dx.types.ResRet.f32 %627, 3
  br label %632

; <label>:632                                     ; preds = %626, %620
  %633 = phi float [ %622, %620 ], [ %628, %626 ]
  %634 = phi float [ %623, %620 ], [ %629, %626 ]
  %635 = phi float [ %624, %620 ], [ %630, %626 ]
  %636 = phi float [ %625, %620 ], [ %631, %626 ]
  %637 = extractvalue %dx.types.CBufRet.f32 %611, 3
  %638 = fmul fast float %637, %633
  %639 = extractvalue %dx.types.CBufRet.f32 %606, 2
  %640 = fadd fast float %638, %639
  %641 = fmul fast float %637, %634
  %642 = fadd fast float %641, %639
  %643 = fmul fast float %637, %635
  %644 = fadd fast float %643, %639
  %645 = and i32 %604, 31
  %646 = shl i32 1, %645
  %647 = uitofp i32 %646 to float
  %648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %649 = extractvalue %dx.types.CBufRet.f32 %648, 3
  %650 = fdiv fast float 1.000000e+00, %649
  %651 = fmul fast float %650, %647
  %652 = fmul fast float %651, %283
  %653 = fadd fast float %652, %521
  %654 = fcmp fast oeq float %636, 0.000000e+00
  %655 = fcmp fast ogt float %521, %642
  %656 = fcmp fast ogt float %653, %642
  %657 = and i1 %655, %656
  %658 = or i1 %654, %657
  br i1 %658, label %659, label %663, !dx.controlflow.hints !52

; <label>:659                                     ; preds = %632
  %660 = add nsw i32 %604, 1
  %661 = add nsw i32 %540, -1
  %662 = call i32 @dx.op.binary.i32(i32 38, i32 %660, i32 %661)  ; IMin(a,b)
  br label %693

; <label>:663                                     ; preds = %632
  %664 = fcmp fast olt float %521, %644
  %665 = fcmp fast olt float %653, %644
  %666 = and i1 %664, %665
  br i1 %666, label %667, label %671, !dx.controlflow.hints !53

; <label>:667                                     ; preds = %663
  %668 = add nsw i32 %604, 1
  %669 = add nsw i32 %540, -1
  %670 = call i32 @dx.op.binary.i32(i32 38, i32 %668, i32 %669)  ; IMin(a,b)
  br label %693

; <label>:671                                     ; preds = %663
  %672 = fcmp fast olt float %521, %640
  %673 = fcmp fast olt float %653, %640
  %674 = and i1 %672, %673
  br i1 %674, label %675, label %683, !dx.controlflow.hints !54

; <label>:675                                     ; preds = %671
  %676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %677 = extractvalue %dx.types.CBufRet.f32 %676, 3
  %678 = extractvalue %dx.types.CBufRet.f32 %611, 2
  %679 = fcmp fast une float %677, %678
  br i1 %679, label %680, label %687, !dx.controlflow.hints !55

; <label>:680                                     ; preds = %675
  %681 = fsub fast float %521, %644
  %682 = call float @dx.op.binary.f32(i32 36, float %651, float %681)  ; FMin(a,b)
  br label %687

; <label>:683                                     ; preds = %671
  %684 = add nsw i32 %604, -1
  %685 = icmp sgt i32 %604, 1
  br i1 %685, label %603, label %686

; <label>:686                                     ; preds = %683
  br label %687

; <label>:687                                     ; preds = %686, %680, %675, %600
  %688 = phi float [ %682, %680 ], [ %651, %675 ], [ 0.000000e+00, %600 ], [ 0.000000e+00, %686 ]
  %689 = phi i32 [ %604, %680 ], [ %604, %675 ], [ %525, %600 ], [ %684, %686 ]
  %690 = add nsw i32 %689, 1
  %691 = add nsw i32 %540, -1
  %692 = call i32 @dx.op.binary.i32(i32 38, i32 %690, i32 %691)  ; IMin(a,b)
  br label %693

; <label>:693                                     ; preds = %687, %667, %659, %598, %594, %544
  %694 = phi float [ %545, %544 ], [ %651, %659 ], [ %651, %667 ], [ %688, %687 ], [ 0x47EFFFFFE0000000, %598 ], [ %595, %594 ]
  %695 = phi i32 [ %370, %544 ], [ %370, %659 ], [ %370, %667 ], [ %370, %687 ], [ 0, %598 ], [ %370, %594 ]
  %696 = phi i32 [ %525, %544 ], [ %662, %659 ], [ %670, %667 ], [ %692, %687 ], [ %525, %598 ], [ %525, %594 ]
  %697 = icmp ne i32 %695, 0
  %698 = zext i1 %697 to i32
  %699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %700 = extractvalue %dx.types.CBufRet.f32 %699, 2
  %701 = call float @dx.op.binary.f32(i32 35, float %694, float %700)  ; FMax(a,b)
  %702 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %701)  ; FMin(a,b)
  br label %703

; <label>:703                                     ; preds = %693, %510
  %704 = phi i32 [ %698, %693 ], [ 0, %510 ]
  %705 = phi float [ %702, %693 ], [ 0x47EFFFFFE0000000, %510 ]
  %706 = phi i32 [ %696, %693 ], [ %525, %510 ]
  %707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %708 = extractvalue %dx.types.CBufRet.f32 %707, 0
  %709 = extractvalue %dx.types.CBufRet.f32 %707, 1
  %710 = fsub fast float %519, %708
  %711 = fsub fast float %520, %709
  %712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %713 = extractvalue %dx.types.CBufRet.f32 %712, 2
  %714 = extractvalue %dx.types.CBufRet.f32 %712, 3
  %715 = fmul fast float %710, %713
  %716 = fmul fast float %711, %714
  %717 = call float @dx.op.binary.f32(i32 36, float %715, float %716)  ; FMin(a,b)
  %718 = fcmp fast olt float %717, 0.000000e+00
  %719 = call float @dx.op.binary.f32(i32 35, float %715, float %716)  ; FMax(a,b)
  %720 = fcmp fast ogt float %719, 1.000000e+00
  %721 = or i1 %718, %720
  %722 = extractvalue %dx.types.CBufRet.f32 %707, 2
  %723 = fcmp fast olt float %521, %722
  %724 = or i1 %721, %723
  %725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %726 = extractvalue %dx.types.CBufRet.f32 %725, 3
  %727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %728 = extractvalue %dx.types.CBufRet.f32 %727, 0
  %729 = fadd fast float %728, %726
  %730 = fcmp fast ogt float %521, %729
  %731 = or i1 %724, %730
  br i1 %731, label %732, label %761, !dx.controlflow.hints !56

; <label>:732                                     ; preds = %703
  %733 = extractvalue %dx.types.CBufRet.f32 %712, 0
  %734 = extractvalue %dx.types.CBufRet.f32 %712, 1
  %735 = fsub fast float %708, %519
  %736 = fmul fast float %735, %484
  %737 = fadd fast float %735, %733
  %738 = fmul fast float %737, %484
  %739 = call float @dx.op.binary.f32(i32 36, float %736, float %738)  ; FMin(a,b)
  %740 = call float @dx.op.binary.f32(i32 35, float %736, float %738)  ; FMax(a,b)
  %741 = fsub fast float %709, %520
  %742 = fmul fast float %741, %485
  %743 = fadd fast float %741, %734
  %744 = fmul fast float %743, %485
  %745 = call float @dx.op.binary.f32(i32 36, float %742, float %744)  ; FMin(a,b)
  %746 = call float @dx.op.binary.f32(i32 35, float %739, float %745)  ; FMax(a,b)
  %747 = call float @dx.op.binary.f32(i32 35, float %742, float %744)  ; FMax(a,b)
  %748 = call float @dx.op.binary.f32(i32 36, float %740, float %747)  ; FMin(a,b)
  %749 = fsub fast float %722, %521
  %750 = fmul fast float %749, %486
  %751 = fsub fast float %726, %521
  %752 = fadd fast float %751, %728
  %753 = fmul fast float %752, %486
  %754 = call float @dx.op.binary.f32(i32 36, float %750, float %753)  ; FMin(a,b)
  %755 = call float @dx.op.binary.f32(i32 35, float %746, float %754)  ; FMax(a,b)
  %756 = call float @dx.op.binary.f32(i32 35, float %750, float %753)  ; FMax(a,b)
  %757 = call float @dx.op.binary.f32(i32 36, float %748, float %756)  ; FMin(a,b)
  %758 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %755)  ; FMax(a,b)
  %759 = fcmp fast oge float %757, %758
  %760 = select i1 %759, float %755, float 1.000000e+07
  br label %807

; <label>:761                                     ; preds = %703
  %762 = fsub fast float 1.000000e+00, %716
  %763 = icmp eq i32 %524, 0
  br i1 %763, label %792, label %764

; <label>:764                                     ; preds = %761
  br label %765

; <label>:765                                     ; preds = %788, %764
  %766 = phi i32 [ %789, %788 ], [ %524, %764 ]
  %767 = uitofp i32 %766 to float
  %768 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %20, float %715, float %762, float undef, float undef, i32 0, i32 0, i32 undef, float %767)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %769 = extractvalue %dx.types.ResRet.f32 %768, 0
  %770 = extractvalue %dx.types.ResRet.f32 %768, 1
  %771 = extractvalue %dx.types.ResRet.f32 %768, 2
  %772 = fcmp fast oeq float %769, 0.000000e+00
  %773 = fcmp ule float %521, %771
  %774 = fcmp uge float %521, %770
  %775 = or i1 %774, %773
  %776 = or i1 %772, %775
  br i1 %776, label %777, label %788, !dx.controlflow.hints !57

; <label>:777                                     ; preds = %765
  %778 = extractvalue %dx.types.ResRet.f32 %768, 3
  %779 = extractvalue %dx.types.CBufRet.f32 %712, 0
  %780 = and i32 %766, 31
  %781 = lshr i32 1024, %780
  %782 = uitofp i32 %781 to float
  %783 = fdiv fast float %779, %782
  %784 = add i32 %766, 1
  %785 = uitofp i32 %784 to float
  %786 = call float @dx.op.binary.f32(i32 36, float 1.000000e+01, float %785)  ; FMin(a,b)
  %787 = fptosi float %786 to i32
  br label %807

; <label>:788                                     ; preds = %765
  %789 = add i32 %766, -1
  %790 = icmp eq i32 %789, 0
  br i1 %790, label %791, label %765, !llvm.loop !58

; <label>:791                                     ; preds = %788
  br label %792

; <label>:792                                     ; preds = %791, %761
  %793 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %19, float %715, float %762, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %794 = extractvalue %dx.types.ResRet.f32 %793, 0
  %795 = extractvalue %dx.types.ResRet.f32 %793, 1
  %796 = extractvalue %dx.types.ResRet.f32 %793, 2
  %797 = extractvalue %dx.types.ResRet.f32 %793, 3
  %798 = extractvalue %dx.types.CBufRet.f32 %712, 0
  %799 = fmul fast float %798, 9.765625e-04
  %800 = fcmp fast oeq float %794, 0.000000e+00
  %801 = fcmp ule float %521, %796
  %802 = fcmp uge float %521, %795
  %803 = or i1 %802, %801
  %804 = or i1 %800, %803
  %805 = zext i1 %804 to i32
  %806 = xor i32 %805, 1
  br label %807

; <label>:807                                     ; preds = %792, %777, %732
  %808 = phi float [ %760, %732 ], [ %783, %777 ], [ %799, %792 ]
  %809 = phi float [ %513, %732 ], [ %769, %777 ], [ %794, %792 ]
  %810 = phi float [ %514, %732 ], [ %770, %777 ], [ %795, %792 ]
  %811 = phi float [ %515, %732 ], [ %771, %777 ], [ %796, %792 ]
  %812 = phi float [ %516, %732 ], [ %778, %777 ], [ %797, %792 ]
  %813 = phi i32 [ 0, %732 ], [ 0, %777 ], [ %806, %792 ]
  %814 = phi i32 [ 10, %732 ], [ %787, %777 ], [ 1, %792 ]
  %815 = icmp eq i32 %813, 0
  %816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %817 = extractvalue %dx.types.CBufRet.f32 %816, 2
  %818 = call float @dx.op.binary.f32(i32 35, float %808, float %817)  ; FMax(a,b)
  %819 = call float @dx.op.binary.f32(i32 36, float %705, float %818)  ; FMin(a,b)
  %820 = icmp eq i32 %434, 0
  br i1 %820, label %876, label %821, !dx.controlflow.hints !60

; <label>:821                                     ; preds = %807
  %822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %823 = extractvalue %dx.types.CBufRet.f32 %822, 0
  %824 = extractvalue %dx.types.CBufRet.f32 %822, 1
  %825 = extractvalue %dx.types.CBufRet.f32 %822, 2
  %826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %827 = extractvalue %dx.types.CBufRet.f32 %826, 0
  %828 = extractvalue %dx.types.CBufRet.f32 %826, 1
  %829 = extractvalue %dx.types.CBufRet.f32 %826, 2
  %830 = fsub fast float %519, %827
  %831 = fsub fast float %520, %828
  %832 = fsub fast float %521, %829
  %833 = fmul fast float %830, %823
  %834 = fmul fast float %831, %824
  %835 = fmul fast float %832, %825
  %836 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %837 = extractvalue %dx.types.CBufRet.i32 %836, 3
  %838 = icmp eq i32 %837, 0
  br i1 %838, label %842, label %839, !dx.controlflow.hints !61

; <label>:839                                     ; preds = %821
  %840 = call float @dx.op.unary.f32(i32 22, float %833)  ; Frc(value)
  %841 = call float @dx.op.unary.f32(i32 22, float %834)  ; Frc(value)
  br label %842

; <label>:842                                     ; preds = %839, %821
  %843 = phi float [ %840, %839 ], [ %833, %821 ]
  %844 = phi float [ %841, %839 ], [ %834, %821 ]
  %845 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %843, float %844, float %835, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %846 = extractvalue %dx.types.ResRet.f32 %845, 0
  %847 = fmul fast float %846, 2.000000e+00
  %848 = fadd fast float %847, -1.000000e+00
  %849 = extractvalue %dx.types.CBufRet.f32 %822, 3
  %850 = fmul fast float %848, %849
  %851 = fcmp fast olt float %850, 0.000000e+00
  %852 = fcmp fast oge float %835, 0.000000e+00
  %853 = fcmp fast ole float %835, 1.000000e+00
  br i1 %838, label %856, label %854, !dx.controlflow.hints !62

; <label>:854                                     ; preds = %842
  %855 = and i1 %852, %853
  br label %866

; <label>:856                                     ; preds = %842
  %857 = fcmp fast oge float %833, 0.000000e+00
  %858 = fcmp fast oge float %834, 0.000000e+00
  %859 = and i1 %857, %858
  %860 = and i1 %852, %859
  %861 = fcmp fast ole float %833, 1.000000e+00
  %862 = fcmp fast ole float %834, 1.000000e+00
  %863 = and i1 %861, %862
  %864 = and i1 %853, %863
  %865 = and i1 %860, %864
  br label %866

; <label>:866                                     ; preds = %856, %854
  %867 = phi i1 [ %855, %854 ], [ %865, %856 ]
  %868 = and i1 %851, %867
  %869 = call float @dx.op.unary.f32(i32 6, float %850)  ; FAbs(value)
  %870 = extractvalue %dx.types.CBufRet.f32 %816, 1
  %871 = extractvalue %dx.types.CBufRet.f32 %816, 0
  %872 = call float @dx.op.binary.f32(i32 35, float %869, float %871)  ; FMax(a,b)
  %873 = select i1 %868, float %870, float %872
  %874 = zext i1 %868 to i32
  %875 = call float @dx.op.binary.f32(i32 36, float %819, float %873)  ; FMin(a,b)
  br label %876

; <label>:876                                     ; preds = %866, %807
  %877 = phi i32 [ %874, %866 ], [ 0, %807 ]
  %878 = phi float [ %875, %866 ], [ %819, %807 ]
  %879 = icmp eq i32 %481, 0
  br i1 %879, label %1051, label %880, !dx.controlflow.hints !63

; <label>:880                                     ; preds = %876
  %881 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %882 = extractvalue %dx.types.CBufRet.i32 %881, 1
  %883 = and i32 %882, 1
  %884 = icmp eq i32 %883, 0
  br i1 %884, label %885, label %1042, !dx.controlflow.hints !64

; <label>:885                                     ; preds = %880
  %886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %887 = extractvalue %dx.types.CBufRet.f32 %886, 2
  %888 = extractvalue %dx.types.CBufRet.f32 %886, 3
  %889 = fmul fast float %887, %519
  %890 = fmul fast float %888, %520
  %891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %892 = extractvalue %dx.types.CBufRet.f32 %891, 0
  %893 = extractvalue %dx.types.CBufRet.f32 %891, 1
  %894 = fadd fast float %889, %892
  %895 = fadd fast float %890, %893
  %896 = call float @dx.op.unary.f32(i32 7, float %894)  ; Saturate(value)
  %897 = call float @dx.op.unary.f32(i32 7, float %895)  ; Saturate(value)
  %898 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %19, float %896, float %897, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %899 = extractvalue %dx.types.ResRet.f32 %898, 0
  %900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %901 = extractvalue %dx.types.CBufRet.f32 %900, 0
  %902 = fmul fast float %901, %899
  %903 = fsub fast float %894, %896
  %904 = fsub fast float %895, %897
  %905 = extractvalue %dx.types.CBufRet.f32 %886, 0
  %906 = extractvalue %dx.types.CBufRet.f32 %886, 1
  %907 = fmul fast float %905, %903
  %908 = fmul fast float %906, %904
  %909 = fmul fast float %907, %907
  %910 = fmul fast float %908, %908
  %911 = fadd fast float %909, %910
  %912 = call float @dx.op.unary.f32(i32 24, float %911)  ; Sqrt(value)
  %913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %914 = extractvalue %dx.types.CBufRet.f32 %913, 3
  %915 = fmul fast float %914, %912
  %916 = call float @dx.op.unary.f32(i32 7, float %915)  ; Saturate(value)
  %917 = extractvalue %dx.types.CBufRet.f32 %913, 2
  %918 = fsub fast float %917, %902
  %919 = fmul fast float %918, %916
  %920 = extractvalue %dx.types.CBufRet.f32 %900, 1
  %921 = fsub fast float %521, %902
  %922 = fsub fast float %921, %920
  %923 = fsub fast float %922, %919
  %924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %925 = extractvalue %dx.types.CBufRet.f32 %924, 2
  %926 = fsub fast float %923, %925
  %927 = fcmp fast olt float %926, 0.000000e+00
  %928 = call float @dx.op.unary.f32(i32 6, float %926)  ; FAbs(value)
  %929 = extractvalue %dx.types.CBufRet.i32 %881, 0
  %930 = icmp eq i32 %929, 0
  br i1 %930, label %984, label %931

; <label>:931                                     ; preds = %885
  br label %932

; <label>:932                                     ; preds = %971, %931
  %933 = phi i32 [ %977, %971 ], [ 1, %931 ]
  %934 = phi float [ %979, %971 ], [ 0x47EFFFFFE0000000, %931 ]
  %935 = phi i32 [ %980, %971 ], [ 0, %931 ]
  %936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %937 = extractvalue %dx.types.CBufRet.f32 %936, 1
  %938 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %939 = extractvalue %dx.types.CBufRet.i32 %938, 1
  %940 = and i32 %939, 8
  %941 = icmp eq i32 %940, 0
  %942 = fcmp fast ogt float %937, %923
  %943 = or i1 %942, %941
  %944 = add i32 %935, 171
  %945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 %944)  ; CBufferLoadLegacy(handle,regIndex)
  %946 = extractvalue %dx.types.CBufRet.f32 %945, 0
  %947 = extractvalue %dx.types.CBufRet.f32 %945, 1
  %948 = extractvalue %dx.types.CBufRet.f32 %945, 2
  br i1 %943, label %949, label %955, !dx.controlflow.hints !65

; <label>:949                                     ; preds = %932
  %950 = fsub fast float %946, %519
  %951 = fsub fast float %947, %520
  %952 = fmul fast float %950, %950
  %953 = fmul fast float %951, %951
  %954 = fadd fast float %952, %953
  br label %971

; <label>:955                                     ; preds = %932
  %956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %957 = extractvalue %dx.types.CBufRet.f32 %956, 2
  %958 = extractvalue %dx.types.CBufRet.f32 %936, 2
  %959 = fmul fast float %958, %957
  %960 = fsub fast float %959, %937
  %961 = fdiv fast float %948, %960
  %962 = fsub fast float %519, %946
  %963 = fsub fast float %520, %947
  %964 = fsub fast float %923, %937
  %965 = fmul fast float %961, %964
  %966 = fmul fast float %962, %962
  %967 = fmul fast float %963, %963
  %968 = fadd fast float %966, %967
  %969 = fmul fast float %965, %965
  %970 = fadd fast float %968, %969
  br label %971

; <label>:971                                     ; preds = %955, %949
  %972 = phi float [ %954, %949 ], [ %970, %955 ]
  %973 = call float @dx.op.unary.f32(i32 24, float %972)  ; Sqrt(value)
  %974 = fsub float %948, %973
  %975 = fcmp fast olt float %974, 0.000000e+00
  %976 = zext i1 %975 to i32
  %977 = and i32 %976, %933
  %978 = call float @dx.op.unary.f32(i32 6, float %974)  ; FAbs(value)
  %979 = call float @dx.op.binary.f32(i32 36, float %934, float %978)  ; FMin(a,b)
  %980 = add i32 %935, 1
  %981 = extractvalue %dx.types.CBufRet.i32 %938, 0
  %982 = icmp ult i32 %980, %981
  br i1 %982, label %932, label %983

; <label>:983                                     ; preds = %971
  br label %984

; <label>:984                                     ; preds = %983, %885
  %985 = phi i32 [ 1, %885 ], [ %977, %983 ]
  %986 = phi float [ 0x47EFFFFFE0000000, %885 ], [ %979, %983 ]
  br label %987

; <label>:987                                     ; preds = %987, %984
  %988 = phi i32 [ %985, %984 ], [ %1027, %987 ]
  %989 = phi float [ 0x47EFFFFFE0000000, %984 ], [ %1029, %987 ]
  %990 = phi i32 [ 0, %984 ], [ %1030, %987 ]
  %991 = add nuw nsw i32 %990, 191
  %992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 %991)  ; CBufferLoadLegacy(handle,regIndex)
  %993 = extractvalue %dx.types.CBufRet.f32 %992, 0
  %994 = extractvalue %dx.types.CBufRet.f32 %992, 1
  %995 = extractvalue %dx.types.CBufRet.f32 %992, 2
  %996 = add nuw nsw i32 %990, 195
  %997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 %996)  ; CBufferLoadLegacy(handle,regIndex)
  %998 = extractvalue %dx.types.CBufRet.f32 %997, 0
  %999 = extractvalue %dx.types.CBufRet.f32 %997, 1
  %1000 = extractvalue %dx.types.CBufRet.f32 %997, 2
  %1001 = fsub fast float %519, %993
  %1002 = fsub fast float %520, %994
  %1003 = fsub fast float %923, %995
  %1004 = call float @dx.op.unary.f32(i32 6, float %1001)  ; FAbs(value)
  %1005 = call float @dx.op.unary.f32(i32 6, float %1002)  ; FAbs(value)
  %1006 = call float @dx.op.unary.f32(i32 6, float %1003)  ; FAbs(value)
  %1007 = fsub fast float %1004, %998
  %1008 = fsub fast float %1005, %999
  %1009 = fsub fast float %1006, %1000
  %1010 = call float @dx.op.binary.f32(i32 35, float %1007, float 0.000000e+00)  ; FMax(a,b)
  %1011 = call float @dx.op.binary.f32(i32 35, float %1008, float 0.000000e+00)  ; FMax(a,b)
  %1012 = call float @dx.op.binary.f32(i32 35, float %1009, float 0.000000e+00)  ; FMax(a,b)
  %1013 = fmul fast float %1010, %1010
  %1014 = fmul fast float %1011, %1011
  %1015 = fadd fast float %1014, %1013
  %1016 = fmul fast float %1012, %1012
  %1017 = fadd fast float %1015, %1016
  %1018 = call float @dx.op.unary.f32(i32 24, float %1017)  ; Sqrt(value)
  %1019 = call float @dx.op.binary.f32(i32 35, float %1008, float %1009)  ; FMax(a,b)
  %1020 = call float @dx.op.binary.f32(i32 35, float %1007, float %1019)  ; FMax(a,b)
  %1021 = call float @dx.op.binary.f32(i32 36, float %1020, float 0.000000e+00)  ; FMin(a,b)
  %1022 = fadd fast float %1021, %1018
  %1023 = fsub fast float -0.000000e+00, %1022
  %1024 = fcmp ogt float %1022, -0.000000e+00
  %1025 = icmp ne i32 %988, 0
  %1026 = and i1 %1025, %1024
  %1027 = zext i1 %1026 to i32
  %1028 = call float @dx.op.unary.f32(i32 6, float %1023)  ; FAbs(value)
  %1029 = call float @dx.op.binary.f32(i32 36, float %989, float %1028)  ; FMin(a,b)
  %1030 = add nuw nsw i32 %990, 1
  %1031 = icmp eq i32 %1030, 4
  br i1 %1031, label %1032, label %987

; <label>:1032                                    ; preds = %987
  %1033 = call float @dx.op.binary.f32(i32 36, float %928, float %1029)  ; FMin(a,b)
  %1034 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1035 = extractvalue %dx.types.CBufRet.i32 %1034, 1
  %1036 = and i32 %1035, 2
  %1037 = icmp ne i32 %1036, 0
  %1038 = xor i1 %1026, %1037
  %1039 = call float @dx.op.binary.f32(i32 36, float %1033, float %986)  ; FMin(a,b)
  %1040 = and i1 %1038, %927
  %1041 = zext i1 %1040 to i32
  br label %1042

; <label>:1042                                    ; preds = %1032, %880
  %1043 = phi i32 [ %511, %880 ], [ %1041, %1032 ]
  %1044 = phi float [ 0.000000e+00, %880 ], [ %1039, %1032 ]
  %1045 = phi float [ %521, %880 ], [ %923, %1032 ]
  %1046 = icmp ne i32 %1043, 0
  %1047 = extractvalue %dx.types.CBufRet.f32 %816, 3
  %1048 = call float @dx.op.binary.f32(i32 35, float %1044, float %1047)  ; FMax(a,b)
  %1049 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %1048)  ; FMin(a,b)
  %1050 = zext i1 %1046 to i32
  br label %1051

; <label>:1051                                    ; preds = %1042, %876
  %1052 = phi i32 [ %1043, %1042 ], [ %511, %876 ]
  %1053 = phi i32 [ %1050, %1042 ], [ 0, %876 ]
  %1054 = phi float [ %1045, %1042 ], [ %512, %876 ]
  %1055 = phi float [ %1049, %1042 ], [ 0x47EFFFFFE0000000, %876 ]
  %1056 = extractvalue %dx.types.CBufRet.f32 %535, 2
  %1057 = fmul fast float %1056, %522
  %1058 = call float @dx.op.unary.f32(i32 23, float %1057)  ; Log(value)
  %1059 = fmul fast float %1058, 0x3FE62E4300000000
  %1060 = call float @dx.op.binary.f32(i32 35, float %1059, float 1.000000e+00)  ; FMax(a,b)
  %1061 = fmul fast float %1060, %1055
  %1062 = call float @dx.op.binary.f32(i32 36, float %1061, float %878)  ; FMin(a,b)
  %1063 = call float @dx.op.binary.f32(i32 35, float %1062, float %536)  ; FMax(a,b)
  %1064 = fsub fast float %487, %522
  %1065 = fadd fast float %1064, 0x3F1A36E2E0000000
  %1066 = call float @dx.op.binary.f32(i32 36, float %1065, float %1063)  ; FMin(a,b)
  %1067 = icmp eq i32 %704, 0
  br i1 %1067, label %1164, label %1068, !dx.controlflow.hints !66

; <label>:1068                                    ; preds = %1051
  %1069 = fcmp fast olt float %1065, %1063
  %1070 = fmul fast float %283, %226
  %1071 = fmul fast float %1070, %1066
  %1072 = fadd fast float %1071, %521
  %1073 = fmul fast float %283, %227
  %1074 = fmul fast float %1073, %1066
  %1075 = fadd fast float %1074, %521
  %1076 = fmul fast float %283, %228
  %1077 = fmul fast float %1076, %1066
  %1078 = fadd fast float %1077, %521
  br i1 %1069, label %1079, label %1084, !dx.controlflow.hints !67

; <label>:1079                                    ; preds = %1068
  %1080 = fmul fast float %1066, %281
  %1081 = fmul fast float %1066, %282
  %1082 = fadd fast float %1080, %519
  %1083 = fadd fast float %1081, %520
  br label %1084

; <label>:1084                                    ; preds = %1079, %1068
  %1085 = phi float [ %1082, %1079 ], [ %519, %1068 ]
  %1086 = phi float [ %1083, %1079 ], [ %520, %1068 ]
  %1087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %1088 = extractvalue %dx.types.CBufRet.f32 %1087, 0
  %1089 = extractvalue %dx.types.CBufRet.f32 %1087, 1
  %1090 = fsub fast float %1085, %1088
  %1091 = fsub fast float %1086, %1089
  %1092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %1093 = extractvalue %dx.types.CBufRet.f32 %1092, 0
  %1094 = extractvalue %dx.types.CBufRet.f32 %1092, 1
  %1095 = fmul fast float %1090, %1093
  %1096 = fmul fast float %1091, %1094
  %1097 = fsub fast float 1.000000e+00, %1096
  %1098 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %1099 = extractvalue %dx.types.CBufRet.i32 %1098, 3
  %1100 = icmp eq i32 %1099, 0
  br i1 %1100, label %1107, label %1101, !dx.controlflow.hints !51

; <label>:1101                                    ; preds = %1084
  %1102 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %18, float %1095, float %1097, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1103 = extractvalue %dx.types.ResRet.f32 %1102, 0
  %1104 = extractvalue %dx.types.ResRet.f32 %1102, 1
  %1105 = extractvalue %dx.types.ResRet.f32 %1102, 2
  %1106 = extractvalue %dx.types.ResRet.f32 %1102, 3
  br label %1113

; <label>:1107                                    ; preds = %1084
  %1108 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %19, float %1095, float %1097, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1109 = extractvalue %dx.types.ResRet.f32 %1108, 0
  %1110 = extractvalue %dx.types.ResRet.f32 %1108, 1
  %1111 = extractvalue %dx.types.ResRet.f32 %1108, 2
  %1112 = extractvalue %dx.types.ResRet.f32 %1108, 3
  br label %1113

; <label>:1113                                    ; preds = %1107, %1101
  %1114 = phi float [ %1103, %1101 ], [ %1109, %1107 ]
  %1115 = phi float [ %1104, %1101 ], [ %1110, %1107 ]
  %1116 = phi float [ %1105, %1101 ], [ %1111, %1107 ]
  %1117 = phi float [ %1106, %1101 ], [ %1112, %1107 ]
  %1118 = extractvalue %dx.types.CBufRet.f32 %1092, 3
  %1119 = fmul fast float %1118, %1115
  %1120 = fmul fast float %1119, %1114
  %1121 = fsub fast float %1119, %1120
  %1122 = fcmp fast ole float %1121, 0.000000e+00
  %1123 = extractvalue %dx.types.CBufRet.f32 %1087, 2
  %1124 = fadd fast float %1120, %1123
  %1125 = fmul fast float %1118, %1116
  %1126 = fadd fast float %1125, %1123
  %1127 = fdiv fast float 1.000000e+00, %1121
  %1128 = select i1 %1122, float 1.000000e+06, float %1127
  %1129 = fsub fast float %1072, %1124
  %1130 = fmul fast float %1128, %1129
  %1131 = call float @dx.op.unary.f32(i32 7, float %1130)  ; Saturate(value)
  %1132 = extractvalue %dx.types.CBufRet.f32 %1092, 2
  %1133 = fmul fast float %1132, %1131
  %1134 = fsub fast float %1132, %1133
  %1135 = fcmp fast olt float %1072, %1126
  %1136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %1137 = extractvalue %dx.types.CBufRet.f32 %1136, 3
  %1138 = select i1 %1135, float %1137, float 1.000000e+00
  %1139 = fmul fast float %1134, %1138
  %1140 = fsub fast float %1075, %1124
  %1141 = fmul fast float %1128, %1140
  %1142 = call float @dx.op.unary.f32(i32 7, float %1141)  ; Saturate(value)
  %1143 = fmul fast float %1132, %1142
  %1144 = fsub fast float %1132, %1143
  %1145 = fcmp fast olt float %1075, %1126
  %1146 = select i1 %1145, float %1137, float 1.000000e+00
  %1147 = fmul fast float %1144, %1146
  %1148 = fadd fast float %1147, %1139
  %1149 = fsub fast float %1078, %1124
  %1150 = fmul fast float %1128, %1149
  %1151 = call float @dx.op.unary.f32(i32 7, float %1150)  ; Saturate(value)
  %1152 = fmul fast float %1132, %1151
  %1153 = fsub fast float %1132, %1152
  %1154 = fcmp fast olt float %1078, %1126
  %1155 = select i1 %1154, float %1137, float 1.000000e+00
  %1156 = fmul fast float %1153, %1155
  %1157 = fadd fast float %1148, %1156
  %1158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1159 = extractvalue %dx.types.CBufRet.f32 %1158, 2
  %1160 = fmul fast float %1066, 0x3FD5555560000000
  %1161 = fmul fast float %1160, %1117
  %1162 = fmul fast float %1161, %1159
  %1163 = fmul fast float %1162, %1157
  br label %1164

; <label>:1164                                    ; preds = %1113, %1051
  %1165 = phi float [ %1163, %1113 ], [ 0.000000e+00, %1051 ]
  %1166 = icmp eq i32 %877, 0
  br i1 %1166, label %1347, label %1167, !dx.controlflow.hints !68

; <label>:1167                                    ; preds = %1164
  %1168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1169 = extractvalue %dx.types.CBufRet.f32 %1168, 3
  %1170 = fmul fast float %1169, %522
  %1171 = fcmp fast oeq float %1170, 0.000000e+00
  br i1 %1171, label %1186, label %1172, !dx.controlflow.hints !69

; <label>:1172                                    ; preds = %1167
  %1173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %1174 = extractvalue %dx.types.CBufRet.f32 %1173, 3
  %1175 = fmul fast float %1174, %1170
  %1176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %1177 = extractvalue %dx.types.CBufRet.f32 %1176, 0
  %1178 = extractvalue %dx.types.CBufRet.f32 %1176, 1
  %1179 = extractvalue %dx.types.CBufRet.f32 %1176, 2
  %1180 = fmul fast float %1177, %1175
  %1181 = fmul fast float %1178, %1175
  %1182 = fmul fast float %1179, %1175
  %1183 = call float @dx.op.unary.f32(i32 23, float %1180)  ; Log(value)
  %1184 = call float @dx.op.unary.f32(i32 23, float %1181)  ; Log(value)
  %1185 = call float @dx.op.unary.f32(i32 23, float %1182)  ; Log(value)
  br label %1186

; <label>:1186                                    ; preds = %1172, %1167
  %1187 = phi float [ %1183, %1172 ], [ 0.000000e+00, %1167 ]
  %1188 = phi float [ %1184, %1172 ], [ 0.000000e+00, %1167 ]
  %1189 = phi float [ %1185, %1172 ], [ 0.000000e+00, %1167 ]
  %1190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %1191 = extractvalue %dx.types.CBufRet.f32 %1190, 0
  %1192 = extractvalue %dx.types.CBufRet.f32 %1190, 1
  %1193 = extractvalue %dx.types.CBufRet.f32 %1190, 2
  %1194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %1195 = extractvalue %dx.types.CBufRet.f32 %1194, 0
  %1196 = extractvalue %dx.types.CBufRet.f32 %1194, 1
  %1197 = extractvalue %dx.types.CBufRet.f32 %1194, 2
  %1198 = fsub fast float %519, %1195
  %1199 = fsub fast float %520, %1196
  %1200 = fsub fast float %521, %1197
  %1201 = fmul fast float %1198, %1191
  %1202 = fmul fast float %1199, %1192
  %1203 = fmul fast float %1200, %1193
  %1204 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %1205 = extractvalue %dx.types.CBufRet.i32 %1204, 0
  %1206 = extractvalue %dx.types.CBufRet.i32 %1204, 1
  %1207 = uitofp i32 %1205 to float
  %1208 = uitofp i32 %1206 to float
  %1209 = fmul fast float %1201, %1207
  %1210 = fmul fast float %1202, %1208
  %1211 = fadd fast float %1209, 5.000000e-01
  %1212 = fadd fast float %1210, 5.000000e-01
  %1213 = call float @dx.op.unary.f32(i32 22, float %1211)  ; Frc(value)
  %1214 = call float @dx.op.unary.f32(i32 22, float %1212)  ; Frc(value)
  %1215 = call float @dx.op.unary.f32(i32 27, float %1211)  ; Round_ni(value)
  %1216 = call float @dx.op.unary.f32(i32 27, float %1212)  ; Round_ni(value)
  %1217 = fadd fast float %1215, 1.000000e+00
  %1218 = fadd fast float %1216, 1.000000e+00
  %1219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %1220 = extractvalue %dx.types.CBufRet.f32 %1219, 0
  %1221 = extractvalue %dx.types.CBufRet.f32 %1219, 1
  %1222 = fmul fast float %1220, %1217
  %1223 = fmul fast float %1221, %1218
  %1224 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %11, %dx.types.Handle %18, float %1222, float %1223, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1225 = extractvalue %dx.types.ResRet.f32 %1224, 0
  %1226 = extractvalue %dx.types.ResRet.f32 %1224, 1
  %1227 = extractvalue %dx.types.ResRet.f32 %1224, 2
  %1228 = extractvalue %dx.types.ResRet.f32 %1224, 3
  %1229 = extractvalue %dx.types.CBufRet.i32 %1204, 2
  %1230 = extractvalue %dx.types.CBufRet.f32 %1219, 2
  %1231 = uitofp i32 %1229 to float
  %1232 = fadd fast float %1231, -1.000000e+00
  %1233 = fmul fast float %1232, %1225
  %1234 = fmul fast float %1232, %1226
  %1235 = fmul fast float %1232, %1227
  %1236 = fmul fast float %1232, %1228
  %1237 = fadd fast float %1233, 5.000000e-01
  %1238 = fadd fast float %1234, 5.000000e-01
  %1239 = fadd fast float %1235, 5.000000e-01
  %1240 = fadd fast float %1236, 5.000000e-01
  %1241 = fptoui float %1237 to i32
  %1242 = fptoui float %1238 to i32
  %1243 = fptoui float %1239 to i32
  %1244 = fptoui float %1240 to i32
  %1245 = uitofp i32 %1241 to float
  %1246 = uitofp i32 %1242 to float
  %1247 = uitofp i32 %1243 to float
  %1248 = uitofp i32 %1244 to float
  %1249 = fadd fast float %1245, 5.000000e-01
  %1250 = fadd fast float %1246, 5.000000e-01
  %1251 = fadd fast float %1247, 5.000000e-01
  %1252 = fadd fast float %1248, 5.000000e-01
  %1253 = fmul fast float %1249, %1230
  %1254 = fmul fast float %1250, %1230
  %1255 = fmul fast float %1251, %1230
  %1256 = fmul fast float %1252, %1230
  %1257 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %19, float %1253, float %1203, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1258 = extractvalue %dx.types.ResRet.f32 %1257, 0
  %1259 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %19, float %1254, float %1203, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1260 = extractvalue %dx.types.ResRet.f32 %1259, 0
  %1261 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %19, float %1255, float %1203, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1262 = extractvalue %dx.types.ResRet.f32 %1261, 0
  %1263 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %19, float %1256, float %1203, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1264 = extractvalue %dx.types.ResRet.f32 %1263, 0
  %1265 = fsub fast float %1262, %1264
  %1266 = fmul fast float %1265, %1213
  %1267 = fadd fast float %1266, %1264
  %1268 = fsub fast float %1260, %1258
  %1269 = fmul fast float %1268, %1213
  %1270 = fadd fast float %1269, %1258
  %1271 = fsub fast float %1270, %1267
  %1272 = fmul fast float %1271, %1214
  %1273 = fadd fast float %1272, %1267
  %1274 = fcmp fast ogt float %1273, 0.000000e+00
  br i1 %1274, label %1275, label %1343, !dx.controlflow.hints !70

; <label>:1275                                    ; preds = %1186
  %1276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %1277 = extractvalue %dx.types.CBufRet.f32 %1276, 0
  %1278 = extractvalue %dx.types.CBufRet.f32 %1276, 1
  %1279 = extractvalue %dx.types.CBufRet.f32 %1276, 2
  %1280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %1281 = extractvalue %dx.types.CBufRet.f32 %1280, 0
  %1282 = extractvalue %dx.types.CBufRet.f32 %1280, 1
  %1283 = extractvalue %dx.types.CBufRet.f32 %1280, 2
  %1284 = fmul fast float %1199, %1191
  %1285 = fmul fast float %1200, %1191
  %1286 = fadd fast float %1201, %1281
  %1287 = fadd fast float %1284, %1282
  %1288 = fadd fast float %1285, %1283
  %1289 = fmul fast float %1286, %1277
  %1290 = fmul fast float %1287, %1277
  %1291 = fmul fast float %1288, %1277
  %1292 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %16, float %1289, float %1290, float %1291, float undef, i32 0, i32 0, i32 0, float %1187)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1293 = extractvalue %dx.types.ResRet.f32 %1292, 0
  %1294 = fmul fast float %1286, %1278
  %1295 = fmul fast float %1287, %1278
  %1296 = fmul fast float %1288, %1278
  %1297 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %16, float %1294, float %1295, float %1296, float undef, i32 0, i32 0, i32 0, float %1188)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1298 = extractvalue %dx.types.ResRet.f32 %1297, 1
  %1299 = fmul fast float %1286, %1279
  %1300 = fmul fast float %1287, %1279
  %1301 = fmul fast float %1288, %1279
  %1302 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %16, float %1299, float %1300, float %1301, float undef, i32 0, i32 0, i32 0, float %1189)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1303 = extractvalue %dx.types.ResRet.f32 %1302, 2
  %1304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %1305 = extractvalue %dx.types.CBufRet.f32 %1304, 1
  %1306 = fmul fast float %1298, %1293
  %1307 = fmul fast float %1306, %1303
  %1308 = call float @dx.op.unary.f32(i32 23, float %1307)  ; Log(value)
  %1309 = fmul fast float %1308, %1305
  %1310 = call float @dx.op.unary.f32(i32 21, float %1309)  ; Exp(value)
  %1311 = extractvalue %dx.types.CBufRet.f32 %1304, 2
  %1312 = fmul fast float %1273, %1273
  %1313 = fmul fast float %1312, %1310
  %1314 = fmul fast float %1313, %1311
  %1315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %1316 = extractvalue %dx.types.CBufRet.f32 %1315, 3
  %1317 = fmul fast float %1316, %1314
  %1318 = bitcast float %1317 to i32
  %1319 = sitofp i32 %1318 to float
  %1320 = fptosi float %1319 to i32
  %1321 = bitcast i32 %1320 to float
  %1322 = fsub fast float 1.000000e+00, %1314
  %1323 = bitcast float %1322 to i32
  %1324 = sitofp i32 %1323 to float
  %1325 = fptosi float %1324 to i32
  %1326 = bitcast i32 %1325 to float
  %1327 = fadd fast float %1321, %1326
  %1328 = bitcast float %1327 to i32
  %1329 = sub nsw i32 2129859010, %1328
  %1330 = bitcast i32 %1329 to float
  %1331 = fmul fast float %1330, %1321
  %1332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1333 = extractvalue %dx.types.CBufRet.f32 %1332, 2
  %1334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %1335 = extractvalue %dx.types.CBufRet.f32 %1334, 0
  %1336 = fmul fast float %1331, %1335
  %1337 = fadd fast float %1336, 1.000000e+00
  %1338 = bitcast float %1337 to i32
  %1339 = sub nsw i32 2129859010, %1338
  %1340 = bitcast i32 %1339 to float
  %1341 = fmul fast float %1331, %1333
  %1342 = fmul fast float %1341, %1340
  br label %1343

; <label>:1343                                    ; preds = %1275, %1186
  %1344 = phi float [ %1342, %1275 ], [ %1273, %1186 ]
  %1345 = fmul fast float %1344, %1066
  %1346 = fadd fast float %1345, %1165
  br label %1347

; <label>:1347                                    ; preds = %1343, %1164
  %1348 = phi float [ %1346, %1343 ], [ %1165, %1164 ]
  br i1 %815, label %1474, label %1349, !dx.controlflow.hints !71

; <label>:1349                                    ; preds = %1347
  %1350 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1351 = extractvalue %dx.types.CBufRet.i32 %1350, 0
  %1352 = icmp ne i32 %1351, 0
  %1353 = zext i1 %1352 to i32
  %1354 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1355 = extractvalue %dx.types.CBufRet.i32 %1354, 0
  %1356 = icmp eq i32 %1355, 0
  br i1 %1356, label %1390, label %1357

; <label>:1357                                    ; preds = %1349
  br label %1358

; <label>:1358                                    ; preds = %1385, %1357
  %1359 = phi i32 [ %1386, %1385 ], [ 0, %1357 ]
  %1360 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1359, i32 0)  ; BufferLoad(srv,index,wot)
  %1361 = extractvalue %dx.types.ResRet.f32 %1360, 0
  %1362 = extractvalue %dx.types.ResRet.f32 %1360, 1
  %1363 = extractvalue %dx.types.ResRet.f32 %1360, 2
  %1364 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1359, i32 16)  ; BufferLoad(srv,index,wot)
  %1365 = extractvalue %dx.types.ResRet.f32 %1364, 0
  %1366 = extractvalue %dx.types.ResRet.f32 %1364, 1
  %1367 = extractvalue %dx.types.ResRet.f32 %1364, 2
  %1368 = fsub fast float %1361, %1365
  %1369 = fsub fast float %1362, %1366
  %1370 = fsub fast float %1363, %1367
  %1371 = fadd fast float %1365, %1361
  %1372 = fadd fast float %1366, %1362
  %1373 = fadd fast float %1367, %1363
  %1374 = fcmp fast olt float %519, %1368
  %1375 = fcmp fast olt float %520, %1369
  %1376 = fcmp fast olt float %521, %1370
  %1377 = or i1 %1374, %1375
  %1378 = or i1 %1376, %1377
  %1379 = fcmp fast ogt float %519, %1371
  %1380 = fcmp fast ogt float %520, %1372
  %1381 = fcmp fast ogt float %521, %1373
  %1382 = or i1 %1379, %1380
  %1383 = or i1 %1381, %1382
  %1384 = or i1 %1378, %1383
  br i1 %1384, label %1385, label %1388, !dx.controlflow.hints !72

; <label>:1385                                    ; preds = %1358
  %1386 = add nuw i32 %1359, 1
  %1387 = icmp ult i32 %1386, %1355
  br i1 %1387, label %1358, label %1388

; <label>:1388                                    ; preds = %1385, %1358
  %1389 = phi i32 [ 255, %1385 ], [ %1359, %1358 ]
  br label %1390

; <label>:1390                                    ; preds = %1388, %1349
  %1391 = phi i32 [ 255, %1349 ], [ %1389, %1388 ]
  %1392 = icmp eq i32 %1391, 255
  br i1 %1392, label %1398, label %1393, !dx.controlflow.hints !73

; <label>:1393                                    ; preds = %1390
  %1394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %1391, i32 156)  ; BufferLoad(srv,index,wot)
  %1395 = extractvalue %dx.types.ResRet.i32 %1394, 0
  %1396 = icmp ne i32 %1395, 0
  %1397 = zext i1 %1396 to i32
  br label %1398

; <label>:1398                                    ; preds = %1393, %1390
  %1399 = phi i32 [ %1397, %1393 ], [ %1353, %1390 ]
  %1400 = icmp eq i32 %1399, 0
  br i1 %1400, label %1401, label %1470, !dx.controlflow.hints !74

; <label>:1401                                    ; preds = %1398
  %1402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1403 = extractvalue %dx.types.CBufRet.f32 %1402, 3
  %1404 = extractvalue %dx.types.CBufRet.f32 %725, 0
  %1405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1406 = extractvalue %dx.types.CBufRet.f32 %1405, 2
  %1407 = extractvalue %dx.types.CBufRet.f32 %1405, 3
  br i1 %1392, label %1418, label %1408, !dx.controlflow.hints !75

; <label>:1408                                    ; preds = %1401
  %1409 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1391, i32 60)  ; BufferLoad(srv,index,wot)
  %1410 = extractvalue %dx.types.ResRet.f32 %1409, 0
  %1411 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1391, i32 64)  ; BufferLoad(srv,index,wot)
  %1412 = extractvalue %dx.types.ResRet.f32 %1411, 0
  %1413 = extractvalue %dx.types.ResRet.f32 %1411, 1
  %1414 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1391, i32 72)  ; BufferLoad(srv,index,wot)
  %1415 = extractvalue %dx.types.ResRet.f32 %1414, 0
  %1416 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1391, i32 96)  ; BufferLoad(srv,index,wot)
  %1417 = extractvalue %dx.types.ResRet.f32 %1416, 0
  br label %1418

; <label>:1418                                    ; preds = %1408, %1401
  %1419 = phi float [ %1410, %1408 ], [ %728, %1401 ]
  %1420 = phi float [ %1415, %1408 ], [ %726, %1401 ]
  %1421 = phi float [ %1417, %1408 ], [ %1404, %1401 ]
  %1422 = phi float [ %1412, %1408 ], [ %1406, %1401 ]
  %1423 = phi float [ %1413, %1408 ], [ %1407, %1401 ]
  %1424 = call float @dx.op.binary.f32(i32 35, float %809, float 0.000000e+00)  ; FMax(a,b)
  %1425 = call float @dx.op.binary.f32(i32 36, float %1424, float 1.000000e+00)  ; FMin(a,b)
  %1426 = call float @dx.op.unary.f32(i32 24, float %1425)  ; Sqrt(value)
  %1427 = call float @dx.op.binary.f32(i32 35, float %812, float 0x3F847AE140000000)  ; FMax(a,b)
  %1428 = fsub fast float %810, %521
  %1429 = fsub fast float %521, %811
  %1430 = call float @dx.op.binary.f32(i32 36, float %1429, float %1428)  ; FMin(a,b)
  %1431 = fdiv fast float %1430, %1427
  %1432 = call float @dx.op.unary.f32(i32 7, float %1431)  ; Saturate(value)
  %1433 = fsub fast float %521, %1420
  %1434 = fdiv fast float %1433, %1419
  %1435 = call float @dx.op.unary.f32(i32 7, float %1434)  ; Saturate(value)
  %1436 = fsub fast float 1.000000e+00, %1435
  %1437 = fmul float %1432, %1436
  %1438 = fmul float %1437, %1437
  %1439 = fmul fast float %1426, %1403
  %1440 = fmul fast float %1439, %1438
  %1441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1442 = extractvalue %dx.types.CBufRet.f32 %1441, 2
  %1443 = extractvalue %dx.types.CBufRet.f32 %1441, 1
  %1444 = fsub fast float %1440, %1443
  %1445 = fsub fast float %1442, %1443
  %1446 = fdiv fast float %1444, %1445
  %1447 = call float @dx.op.unary.f32(i32 7, float %1446)  ; Saturate(value)
  %1448 = fmul fast float %1447, %1421
  %1449 = fcmp fast ogt float %1423, 0.000000e+00
  br i1 %1449, label %1450, label %1470, !dx.controlflow.hints !76

; <label>:1450                                    ; preds = %1418
  %1451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1452 = extractvalue %dx.types.CBufRet.f32 %1451, 0
  %1453 = extractvalue %dx.types.CBufRet.f32 %1451, 1
  %1454 = extractvalue %dx.types.CBufRet.f32 %1451, 2
  %1455 = fsub fast float %519, %1452
  %1456 = fsub fast float %520, %1453
  %1457 = fsub fast float %521, %1454
  %1458 = fmul fast float %1455, %1455
  %1459 = fmul fast float %1456, %1456
  %1460 = fadd fast float %1458, %1459
  %1461 = fmul fast float %1457, %1457
  %1462 = fadd fast float %1460, %1461
  %1463 = call float @dx.op.unary.f32(i32 24, float %1462)  ; Sqrt(value)
  %1464 = fsub fast float %1463, %1422
  %1465 = fsub fast float %1423, %1422
  %1466 = fdiv fast float %1464, %1465
  %1467 = call float @dx.op.unary.f32(i32 7, float %1466)  ; Saturate(value)
  %1468 = fmul fast float %1467, %1467
  %1469 = fmul fast float %1468, %1448
  br label %1470

; <label>:1470                                    ; preds = %1450, %1418, %1398
  %1471 = phi float [ 0.000000e+00, %1398 ], [ %1469, %1450 ], [ %1448, %1418 ]
  %1472 = fmul fast float %1471, %1066
  %1473 = fadd fast float %1472, %1348
  br label %1474

; <label>:1474                                    ; preds = %1470, %1347
  %1475 = phi float [ %1473, %1470 ], [ %1348, %1347 ]
  %1476 = icmp eq i32 %1053, 0
  br i1 %1476, label %1508, label %1477, !dx.controlflow.hints !77

; <label>:1477                                    ; preds = %1474
  %1478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %1479 = extractvalue %dx.types.CBufRet.f32 %1478, 1
  %1480 = fsub fast float %1066, %1479
  %1481 = extractvalue %dx.types.CBufRet.f32 %1478, 3
  %1482 = fmul fast float %1480, %1481
  %1483 = call float @dx.op.unary.f32(i32 7, float %1482)  ; Saturate(value)
  %1484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %1485 = extractvalue %dx.types.CBufRet.f32 %1484, 3
  %1486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1487 = extractvalue %dx.types.CBufRet.f32 %1486, 2
  %1488 = fsub fast float %1487, %1054
  %1489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %1490 = extractvalue %dx.types.CBufRet.f32 %1489, 3
  %1491 = fmul fast float %1488, %1490
  %1492 = call float @dx.op.unary.f32(i32 7, float %1491)  ; Saturate(value)
  %1493 = fmul fast float %1492, %1485
  %1494 = extractvalue %dx.types.CBufRet.f32 %1489, 0
  %1495 = fsub fast float %522, %1494
  %1496 = extractvalue %dx.types.CBufRet.f32 %1489, 1
  %1497 = fmul fast float %1495, %1496
  %1498 = call float @dx.op.unary.f32(i32 7, float %1497)  ; Saturate(value)
  %1499 = fsub fast float 1.000000e+00, %1483
  %1500 = fmul fast float %1498, %1499
  %1501 = fadd fast float %1500, %1483
  %1502 = extractvalue %dx.types.CBufRet.f32 %1478, 0
  %1503 = fsub fast float %1493, %1502
  %1504 = fmul fast float %1503, %1501
  %1505 = fadd fast float %1504, %1502
  %1506 = fmul fast float %1505, %1066
  %1507 = fadd fast float %1506, %1475
  br label %1508

; <label>:1508                                    ; preds = %1477, %1474
  %1509 = phi float [ %1507, %1477 ], [ %1475, %1474 ]
  %1510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1511 = extractvalue %dx.types.CBufRet.f32 %1510, 1
  %1512 = fcmp fast ogt float %1509, %1511
  br i1 %1512, label %1515, label %1513, !dx.controlflow.hints !78

; <label>:1513                                    ; preds = %1508
  %1514 = fadd fast float %1066, %522
  br label %1648

; <label>:1515                                    ; preds = %1508
  %1516 = fmul fast float %1509, 0xBFF7154760000000
  %1517 = call float @dx.op.unary.f32(i32 21, float %1516)  ; Exp(value)
  %1518 = call float @dx.op.unary.f32(i32 7, float %1517)  ; Saturate(value)
  %1519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1520 = extractvalue %dx.types.CBufRet.f32 %1519, 0
  %1521 = extractvalue %dx.types.CBufRet.f32 %1519, 1
  %1522 = extractvalue %dx.types.CBufRet.f32 %1519, 2
  %1523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %1524 = extractvalue %dx.types.CBufRet.f32 %1523, 0
  %1525 = fmul fast float %1524, %1520
  %1526 = fmul fast float %1524, %1521
  %1527 = fmul fast float %1524, %1522
  %1528 = fadd fast float %1525, %519
  %1529 = fadd fast float %1526, %520
  %1530 = fadd fast float %1527, %521
  br i1 %879, label %1601, label %1531, !dx.controlflow.hints !63

; <label>:1531                                    ; preds = %1515
  %1532 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1533 = extractvalue %dx.types.CBufRet.i32 %1532, 1
  %1534 = and i32 %1533, 1
  %1535 = icmp eq i32 %1534, 0
  br i1 %1535, label %1536, label %1601, !dx.controlflow.hints !64

; <label>:1536                                    ; preds = %1531
  %1537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %1538 = extractvalue %dx.types.CBufRet.f32 %1537, 2
  %1539 = extractvalue %dx.types.CBufRet.f32 %1537, 3
  %1540 = fmul fast float %1538, %1528
  %1541 = fmul fast float %1539, %1529
  %1542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %1543 = extractvalue %dx.types.CBufRet.f32 %1542, 0
  %1544 = extractvalue %dx.types.CBufRet.f32 %1542, 1
  %1545 = fadd fast float %1540, %1543
  %1546 = fadd fast float %1541, %1544
  %1547 = call float @dx.op.unary.f32(i32 7, float %1545)  ; Saturate(value)
  %1548 = call float @dx.op.unary.f32(i32 7, float %1546)  ; Saturate(value)
  %1549 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %19, float %1547, float %1548, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1550 = extractvalue %dx.types.ResRet.f32 %1549, 0
  %1551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %1552 = extractvalue %dx.types.CBufRet.f32 %1551, 0
  %1553 = fmul fast float %1552, %1550
  %1554 = fsub fast float %1545, %1547
  %1555 = fsub fast float %1546, %1548
  %1556 = extractvalue %dx.types.CBufRet.f32 %1537, 0
  %1557 = extractvalue %dx.types.CBufRet.f32 %1537, 1
  %1558 = fmul fast float %1556, %1554
  %1559 = fmul fast float %1557, %1555
  %1560 = fmul fast float %1558, %1558
  %1561 = fmul fast float %1559, %1559
  %1562 = fadd fast float %1560, %1561
  %1563 = call float @dx.op.unary.f32(i32 24, float %1562)  ; Sqrt(value)
  %1564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1565 = extractvalue %dx.types.CBufRet.f32 %1564, 3
  %1566 = fmul fast float %1565, %1563
  %1567 = call float @dx.op.unary.f32(i32 7, float %1566)  ; Saturate(value)
  %1568 = extractvalue %dx.types.CBufRet.f32 %1564, 2
  %1569 = fsub fast float %1568, %1553
  %1570 = fmul fast float %1569, %1567
  %1571 = extractvalue %dx.types.CBufRet.f32 %1551, 1
  %1572 = fsub fast float %1530, %1553
  %1573 = fsub fast float %1572, %1571
  %1574 = fsub fast float %1573, %1570
  %1575 = extractvalue %dx.types.CBufRet.i32 %1532, 0
  %1576 = icmp eq i32 %1575, 0
  br i1 %1576, label %1595, label %1577

; <label>:1577                                    ; preds = %1536
  br label %1578

; <label>:1578                                    ; preds = %1590, %1577
  %1579 = phi i32 [ %1591, %1590 ], [ 0, %1577 ]
  %1580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1581 = extractvalue %dx.types.CBufRet.f32 %1580, 1
  %1582 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1583 = extractvalue %dx.types.CBufRet.i32 %1582, 1
  %1584 = and i32 %1583, 8
  %1585 = icmp eq i32 %1584, 0
  %1586 = fcmp fast ogt float %1581, %1574
  %1587 = or i1 %1586, %1585
  br i1 %1587, label %1588, label %1589, !dx.controlflow.hints !65

; <label>:1588                                    ; preds = %1578
  br label %1590

; <label>:1589                                    ; preds = %1578
  br label %1590

; <label>:1590                                    ; preds = %1589, %1588
  %1591 = add i32 %1579, 1
  %1592 = extractvalue %dx.types.CBufRet.i32 %1582, 0
  %1593 = icmp ult i32 %1591, %1592
  br i1 %1593, label %1578, label %1594

; <label>:1594                                    ; preds = %1590
  br label %1595

; <label>:1595                                    ; preds = %1594, %1536
  br label %1596

; <label>:1596                                    ; preds = %1596, %1595
  %1597 = phi i32 [ %1598, %1596 ], [ 0, %1595 ]
  %1598 = add nuw nsw i32 %1597, 1
  %1599 = icmp eq i32 %1598, 4
  br i1 %1599, label %1600, label %1596

; <label>:1600                                    ; preds = %1596
  br label %1601

; <label>:1601                                    ; preds = %1600, %1531, %1515
  %1602 = fsub fast float 1.000000e+00, %1518
  %1603 = fdiv fast float %1509, %1066
  %1604 = fadd fast float %1066, %522
  %1605 = fmul fast float %522, %522
  %1606 = fmul fast float %1604, %1604
  %1607 = fsub fast float %1605, %1606
  %1608 = fmul fast float %1607, -5.000000e-01
  %1609 = fmul fast float %1608, %1603
  %1610 = fadd fast float %1609, %517
  %1611 = fadd fast float %1509, %526
  %1612 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1613 = extractvalue %dx.types.CBufRet.i32 %1612, 0
  %1614 = icmp eq i32 %1613, 0
  br i1 %1614, label %1641, label %1615, !dx.controlflow.hints !79

; <label>:1615                                    ; preds = %1601
  %1616 = icmp ne i32 %531, 0
  %1617 = zext i1 %1616 to i32
  %1618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1619 = extractvalue %dx.types.CBufRet.f32 %1618, 2
  %1620 = extractvalue %dx.types.CBufRet.f32 %1618, 0
  %1621 = fsub fast float %1604, %1620
  %1622 = fmul fast float %1621, %1619
  %1623 = call float @dx.op.unary.f32(i32 7, float %1622)  ; Saturate(value)
  %1624 = fadd fast float %1623, -5.000000e-01
  %1625 = fmul fast float %1624, 2.000000e+00
  %1626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1627 = extractvalue %dx.types.CBufRet.f32 %1626, 2
  %1628 = fcmp fast olt float %1625, %1627
  br i1 %1628, label %1629, label %1641, !dx.controlflow.hints !80

; <label>:1629                                    ; preds = %1615
  %1630 = fmul fast float %1625, %1625
  %1631 = fmul fast float %1602, %518
  %1632 = fmul fast float %1625, %1631
  %1633 = fmul fast float %1630, %1631
  %1634 = fmul fast float %1632, %1630
  %1635 = fmul fast float %1630, %1630
  %1636 = fmul fast float %1635, %1631
  %1637 = fadd fast float %1632, %527
  %1638 = fadd fast float %1633, %528
  %1639 = fadd fast float %1634, %529
  %1640 = fadd fast float %1636, %530
  br label %1641

; <label>:1641                                    ; preds = %1629, %1615, %1601
  %1642 = phi float [ %527, %1601 ], [ %1637, %1629 ], [ %527, %1615 ]
  %1643 = phi float [ %528, %1601 ], [ %1638, %1629 ], [ %528, %1615 ]
  %1644 = phi float [ %529, %1601 ], [ %1639, %1629 ], [ %529, %1615 ]
  %1645 = phi float [ %530, %1601 ], [ %1640, %1629 ], [ %530, %1615 ]
  %1646 = phi i32 [ %531, %1601 ], [ 1, %1629 ], [ %1617, %1615 ]
  %1647 = fmul fast float %1518, %518
  br label %1648

; <label>:1648                                    ; preds = %1641, %1513
  %1649 = phi float [ %1514, %1513 ], [ %1604, %1641 ]
  %1650 = phi float [ %517, %1513 ], [ %1610, %1641 ]
  %1651 = phi float [ %518, %1513 ], [ %1647, %1641 ]
  %1652 = phi float [ %526, %1513 ], [ %1611, %1641 ]
  %1653 = phi float [ %527, %1513 ], [ %1642, %1641 ]
  %1654 = phi float [ %528, %1513 ], [ %1643, %1641 ]
  %1655 = phi float [ %529, %1513 ], [ %1644, %1641 ]
  %1656 = phi float [ %530, %1513 ], [ %1645, %1641 ]
  %1657 = phi i32 [ %531, %1513 ], [ %1646, %1641 ]
  %1658 = fmul fast float %1066, %281
  %1659 = fmul fast float %1066, %282
  %1660 = fmul fast float %1066, %283
  %1661 = fadd fast float %1658, %519
  %1662 = fadd fast float %1659, %520
  %1663 = fadd fast float %1660, %521
  %1664 = fcmp fast olt float %1649, %487
  %1665 = extractvalue %dx.types.CBufRet.f32 %1510, 2
  %1666 = fcmp fast olt float %1665, %1651
  %1667 = and i1 %1664, %1666
  br i1 %1667, label %510, label %1668

; <label>:1668                                    ; preds = %1648
  %1669 = uitofp i32 %534 to float
  br label %1670

; <label>:1670                                    ; preds = %1668, %480
  %1671 = phi float [ 0.000000e+00, %480 ], [ %1650, %1668 ]
  %1672 = phi float [ 1.000000e+00, %480 ], [ %1651, %1668 ]
  %1673 = phi float [ 0.000000e+00, %480 ], [ %1669, %1668 ]
  %1674 = phi float [ 0.000000e+00, %480 ], [ %1652, %1668 ]
  %1675 = phi float [ 0.000000e+00, %480 ], [ %1653, %1668 ]
  %1676 = phi float [ 0.000000e+00, %480 ], [ %1654, %1668 ]
  %1677 = phi float [ 0.000000e+00, %480 ], [ %1655, %1668 ]
  %1678 = phi float [ 0.000000e+00, %480 ], [ %1656, %1668 ]
  %1679 = phi i32 [ 0, %480 ], [ %1657, %1668 ]
  %1680 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1681 = extractvalue %dx.types.CBufRet.i32 %1680, 0
  %1682 = icmp eq i32 %1681, 0
  br i1 %1682, label %1724, label %1683, !dx.controlflow.hints !81

; <label>:1683                                    ; preds = %1670
  %1684 = icmp eq i32 %1679, 0
  br i1 %1684, label %1723, label %1685, !dx.controlflow.hints !82

; <label>:1685                                    ; preds = %1683
  %1686 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1687 = extractvalue %dx.types.CBufRet.i32 %1686, 2
  %1688 = icmp eq i32 %1687, 0
  br i1 %1688, label %1695, label %1689, !dx.controlflow.hints !83

; <label>:1689                                    ; preds = %1685
  %1690 = fsub fast float 1.000000e+00, %1672
  %1691 = fdiv fast float %1675, %1690
  %1692 = fdiv fast float %1676, %1690
  %1693 = fdiv fast float %1677, %1690
  %1694 = fdiv fast float %1678, %1690
  br label %1700

; <label>:1695                                    ; preds = %1685
  %1696 = fadd fast float %1675, %1672
  %1697 = fadd fast float %1676, %1672
  %1698 = fadd fast float %1677, %1672
  %1699 = fadd fast float %1678, %1672
  br label %1700

; <label>:1700                                    ; preds = %1695, %1689
  %1701 = phi float [ %1691, %1689 ], [ %1696, %1695 ]
  %1702 = phi float [ %1692, %1689 ], [ %1697, %1695 ]
  %1703 = phi float [ %1693, %1689 ], [ %1698, %1695 ]
  %1704 = phi float [ %1694, %1689 ], [ %1699, %1695 ]
  %1705 = call float @dx.op.binary.f32(i32 35, float %1701, float -1.000000e+00)  ; FMax(a,b)
  %1706 = call float @dx.op.binary.f32(i32 35, float %1702, float -1.000000e+00)  ; FMax(a,b)
  %1707 = call float @dx.op.binary.f32(i32 35, float %1703, float -1.000000e+00)  ; FMax(a,b)
  %1708 = call float @dx.op.binary.f32(i32 35, float %1704, float -1.000000e+00)  ; FMax(a,b)
  %1709 = call float @dx.op.binary.f32(i32 36, float %1705, float 1.000000e+00)  ; FMin(a,b)
  %1710 = call float @dx.op.binary.f32(i32 36, float %1706, float 1.000000e+00)  ; FMin(a,b)
  %1711 = call float @dx.op.binary.f32(i32 36, float %1707, float 1.000000e+00)  ; FMin(a,b)
  %1712 = call float @dx.op.binary.f32(i32 36, float %1708, float 1.000000e+00)  ; FMin(a,b)
  %1713 = fmul fast float %1709, 1.500000e+00
  %1714 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %1711, float %1713)  ; FMad(a,b,c)
  %1715 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %1710, float 0.000000e+00)  ; FMad(a,b,c)
  %1716 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %1712, float %1715)  ; FMad(a,b,c)
  %1717 = fmul fast float %1709, 0x3FEBB67AE0000000
  %1718 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %1711, float %1717)  ; FMad(a,b,c)
  %1719 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1710, float 0.000000e+00)  ; FMad(a,b,c)
  %1720 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1712, float %1719)  ; FMad(a,b,c)
  %1721 = fadd fast float %1714, 5.000000e-01
  %1722 = fadd fast float %1718, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %23, i32 %24, i32 0, float %1721, float %1716, float %1722, float %1720, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1724

; <label>:1723                                    ; preds = %1683
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %23, i32 %24, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1724

; <label>:1724                                    ; preds = %1723, %1700, %1670
  %1725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %1726 = extractvalue %dx.types.CBufRet.f32 %1725, 0
  %1727 = extractvalue %dx.types.CBufRet.f32 %1725, 1
  %1728 = extractvalue %dx.types.CBufRet.f32 %1725, 2
  %1729 = call float @dx.op.dot3.f32(i32 55, float %281, float %282, float %283, float %1726, float %1727, float %1728)  ; Dot3(ax,ay,az,bx,by,bz)
  %1730 = fmul fast float %1729, %1671
  %1731 = fcmp fast ogt float %1674, 0.000000e+00
  %1732 = fdiv fast float 1.000000e+00, %1674
  %1733 = fmul fast float %1730, %1732
  %1734 = select i1 %1731, float %1733, float %292
  %1735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1736 = extractvalue %dx.types.CBufRet.f32 %1735, 0
  %1737 = extractvalue %dx.types.CBufRet.f32 %1735, 1
  %1738 = extractvalue %dx.types.CBufRet.f32 %1735, 2
  %1739 = fmul fast float %1736, %245
  %1740 = fmul fast float %1737, %245
  %1741 = fmul fast float %1738, %245
  %1742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1743 = extractvalue %dx.types.CBufRet.f32 %1742, 0
  %1744 = extractvalue %dx.types.CBufRet.f32 %1742, 1
  %1745 = extractvalue %dx.types.CBufRet.f32 %1742, 2
  %1746 = fmul fast float %1743, %246
  %1747 = fmul fast float %1744, %246
  %1748 = fmul fast float %1745, %246
  %1749 = fadd fast float %1746, %1739
  %1750 = fadd fast float %1747, %1740
  %1751 = fadd fast float %1748, %1741
  %1752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1753 = extractvalue %dx.types.CBufRet.f32 %1752, 0
  %1754 = extractvalue %dx.types.CBufRet.f32 %1752, 1
  %1755 = extractvalue %dx.types.CBufRet.f32 %1752, 2
  %1756 = fadd fast float %1749, %1753
  %1757 = fadd fast float %1750, %1754
  %1758 = fadd fast float %1751, %1755
  %1759 = fmul fast float %1756, %1734
  %1760 = fmul fast float %1757, %1734
  %1761 = fmul fast float %1758, %1734
  %1762 = call float @dx.op.dot3.f32(i32 55, float %1759, float %1760, float %1761, float %1759, float %1760, float %1761)  ; Dot3(ax,ay,az,bx,by,bz)
  %1763 = call float @dx.op.unary.f32(i32 25, float %1762)  ; Rsqrt(value)
  %1764 = fmul fast float %1763, %1762
  %1765 = fmul fast float %1763, %1759
  %1766 = fmul fast float %1763, %1760
  %1767 = fmul fast float %1763, %1761
  %1768 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1769 = extractvalue %dx.types.CBufRet.i32 %1768, 1
  %1770 = and i32 %1769, 1
  %1771 = icmp ne i32 %1770, 0
  %1772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1773 = extractvalue %dx.types.CBufRet.f32 %1772, 2
  %1774 = fcmp fast ogt float %1773, 0.000000e+00
  %1775 = and i1 %1771, %1774
  br i1 %1775, label %1776, label %1934, !dx.controlflow.hints !84

; <label>:1776                                    ; preds = %1724
  %1777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1778 = extractvalue %dx.types.CBufRet.f32 %1777, 2
  %1779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1780 = extractvalue %dx.types.CBufRet.f32 %1779, 2
  %1781 = fsub fast float %1778, %1780
  %1782 = extractvalue %dx.types.CBufRet.i32 %1768, 0
  %1783 = call i32 @dx.op.binary.i32(i32 40, i32 %1782, i32 3)  ; UMin(a,b)
  %1784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1785 = extractvalue %dx.types.CBufRet.f32 %1784, 0
  %1786 = extractvalue %dx.types.CBufRet.f32 %1784, 1
  %1787 = extractvalue %dx.types.CBufRet.f32 %1779, 0
  %1788 = extractvalue %dx.types.CBufRet.f32 %1779, 1
  %1789 = fsub fast float %1785, %1787
  %1790 = fsub fast float %1786, %1788
  %1791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1792 = extractvalue %dx.types.CBufRet.f32 %1791, 0
  %1793 = fcmp fast ogt float %1792, 0.000000e+00
  %1794 = fsub fast float -0.000000e+00, %1789
  %1795 = fsub fast float -0.000000e+00, %1790
  %1796 = call float @dx.op.dot2.f32(i32 54, float %1765, float %1766, float %1765, float %1766)  ; Dot2(ax,ay,bx,by)
  %1797 = call float @dx.op.dot2.f32(i32 54, float %1765, float %1766, float %1794, float %1795)  ; Dot2(ax,ay,bx,by)
  %1798 = fmul fast float %1797, 2.000000e+00
  %1799 = call float @dx.op.dot2.f32(i32 54, float %1794, float %1795, float %1794, float %1795)  ; Dot2(ax,ay,bx,by)
  %1800 = fmul fast float %1792, %1792
  %1801 = fsub fast float %1799, %1800
  %1802 = fmul fast float %1798, %1798
  %1803 = fmul fast float %1796, 4.000000e+00
  %1804 = fmul fast float %1803, %1801
  %1805 = fsub fast float %1802, %1804
  %1806 = fcmp fast ogt float %1805, 0.000000e+00
  br i1 %1806, label %1807, label %1822, !dx.controlflow.hints !85

; <label>:1807                                    ; preds = %1776
  %1808 = fcmp fast ogt float %1798, 0.000000e+00
  %1809 = call float @dx.op.unary.f32(i32 24, float %1805)  ; Sqrt(value)
  %1810 = fsub fast float -0.000000e+00, %1809
  %1811 = select i1 %1808, float %1809, float %1810
  %1812 = fadd fast float %1811, %1798
  %1813 = fmul float %1812, -5.000000e-01
  %1814 = fdiv fast float %1813, %1796
  %1815 = call float @dx.op.binary.f32(i32 35, float %1814, float 0.000000e+00)  ; FMax(a,b)
  %1816 = call float @dx.op.binary.f32(i32 36, float %1764, float %1815)  ; FMin(a,b)
  %1817 = fdiv fast float %1801, %1813
  %1818 = call float @dx.op.binary.f32(i32 35, float %1817, float 0.000000e+00)  ; FMax(a,b)
  %1819 = call float @dx.op.binary.f32(i32 36, float %1764, float %1818)  ; FMin(a,b)
  %1820 = call float @dx.op.binary.f32(i32 36, float %1816, float %1819)  ; FMin(a,b)
  %1821 = call float @dx.op.binary.f32(i32 35, float %1816, float %1819)  ; FMax(a,b)
  br label %1822

; <label>:1822                                    ; preds = %1807, %1776
  %1823 = phi float [ %1821, %1807 ], [ -1.000000e+00, %1776 ]
  %1824 = phi float [ %1820, %1807 ], [ -1.000000e+00, %1776 ]
  %1825 = phi i1 [ true, %1807 ], [ false, %1776 ]
  %1826 = and i1 %1793, %1825
  br i1 %1826, label %1827, label %1829, !dx.controlflow.hints !86

; <label>:1827                                    ; preds = %1822
  %1828 = fcmp fast oeq float %1824, %1823
  br i1 %1828, label %1934, label %1830, !dx.controlflow.hints !87

; <label>:1829                                    ; preds = %1822
  br i1 %1793, label %1934, label %1830, !dx.controlflow.hints !88

; <label>:1830                                    ; preds = %1829, %1827
  %1831 = phi float [ %1764, %1829 ], [ %1823, %1827 ]
  %1832 = phi float [ 0.000000e+00, %1829 ], [ %1824, %1827 ]
  %1833 = fcmp fast oeq float %1767, 0.000000e+00
  %1834 = fdiv fast float %1781, %1767
  %1835 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1834)  ; FMax(a,b)
  %1836 = select i1 %1833, float %1831, float %1835
  %1837 = call float @dx.op.binary.f32(i32 36, float %1831, float %1836)  ; FMin(a,b)
  %1838 = fcmp fast ogt float %1767, 0.000000e+00
  %1839 = fcmp fast olt float %1781, 0.000000e+00
  br i1 %1838, label %1840, label %1841, !dx.controlflow.hints !89

; <label>:1840                                    ; preds = %1830
  br i1 %1839, label %1934, label %1844, !dx.controlflow.hints !90

; <label>:1841                                    ; preds = %1830
  br i1 %1839, label %1842, label %1844, !dx.controlflow.hints !91

; <label>:1842                                    ; preds = %1841
  %1843 = call float @dx.op.binary.f32(i32 35, float %1832, float %1837)  ; FMax(a,b)
  br label %1844

; <label>:1844                                    ; preds = %1842, %1841, %1840
  %1845 = phi float [ %1843, %1842 ], [ %1832, %1841 ], [ %1832, %1840 ]
  %1846 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 0
  store float -1.000000e+00, float* %1846, align 4, !tbaa !92, !noalias !96
  %1847 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 1
  store float -1.000000e+00, float* %1847, align 4, !tbaa !92, !noalias !96
  %1848 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 2
  store float -1.000000e+00, float* %1848, align 4, !tbaa !92, !noalias !96
  %1849 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 0
  store float -1.000000e+00, float* %1849, align 4, !tbaa !92, !noalias !96
  %1850 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 1
  store float -1.000000e+00, float* %1850, align 4, !tbaa !92, !noalias !96
  %1851 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 2
  store float -1.000000e+00, float* %1851, align 4, !tbaa !92, !noalias !96
  %1852 = icmp sgt i32 %1783, 0
  br i1 %1852, label %1853, label %1911

; <label>:1853                                    ; preds = %1844
  br label %1854

; <label>:1854                                    ; preds = %1901, %1853
  %1855 = phi i32 [ %1902, %1901 ], [ 0, %1853 ]
  %1856 = add nuw i32 %1855, 171
  %1857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 %1856)  ; CBufferLoadLegacy(handle,regIndex)
  %1858 = extractvalue %dx.types.CBufRet.f32 %1857, 0
  %1859 = extractvalue %dx.types.CBufRet.f32 %1857, 1
  %1860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1861 = extractvalue %dx.types.CBufRet.f32 %1860, 0
  %1862 = extractvalue %dx.types.CBufRet.f32 %1860, 1
  %1863 = fsub fast float %1858, %1861
  %1864 = fsub fast float %1859, %1862
  %1865 = extractvalue %dx.types.CBufRet.f32 %1857, 2
  %1866 = fsub fast float -0.000000e+00, %1863
  %1867 = fsub fast float -0.000000e+00, %1864
  %1868 = call float @dx.op.dot2.f32(i32 54, float %1765, float %1766, float %1866, float %1867)  ; Dot2(ax,ay,bx,by)
  %1869 = fmul fast float %1868, 2.000000e+00
  %1870 = call float @dx.op.dot2.f32(i32 54, float %1866, float %1867, float %1866, float %1867)  ; Dot2(ax,ay,bx,by)
  %1871 = fmul fast float %1865, %1865
  %1872 = fsub fast float %1870, %1871
  %1873 = fmul fast float %1869, %1869
  %1874 = fmul fast float %1803, %1872
  %1875 = fsub fast float %1873, %1874
  %1876 = fcmp fast ogt float %1875, 0.000000e+00
  br i1 %1876, label %1877, label %1892, !dx.controlflow.hints !85

; <label>:1877                                    ; preds = %1854
  %1878 = fcmp fast ogt float %1869, 0.000000e+00
  %1879 = call float @dx.op.unary.f32(i32 24, float %1875)  ; Sqrt(value)
  %1880 = fsub fast float -0.000000e+00, %1879
  %1881 = select i1 %1878, float %1879, float %1880
  %1882 = fadd fast float %1881, %1869
  %1883 = fmul float %1882, -5.000000e-01
  %1884 = fdiv fast float %1883, %1796
  %1885 = call float @dx.op.binary.f32(i32 35, float %1884, float 0.000000e+00)  ; FMax(a,b)
  %1886 = call float @dx.op.binary.f32(i32 36, float %1831, float %1885)  ; FMin(a,b)
  %1887 = fdiv fast float %1872, %1883
  %1888 = call float @dx.op.binary.f32(i32 35, float %1887, float 0.000000e+00)  ; FMax(a,b)
  %1889 = call float @dx.op.binary.f32(i32 36, float %1831, float %1888)  ; FMin(a,b)
  %1890 = call float @dx.op.binary.f32(i32 36, float %1886, float %1889)  ; FMin(a,b)
  %1891 = call float @dx.op.binary.f32(i32 35, float %1886, float %1889)  ; FMax(a,b)
  br label %1892

; <label>:1892                                    ; preds = %1877, %1854
  %1893 = phi float [ %1891, %1877 ], [ -1.000000e+00, %1854 ]
  %1894 = phi float [ %1890, %1877 ], [ -1.000000e+00, %1854 ]
  %1895 = phi i1 [ true, %1877 ], [ false, %1854 ]
  br i1 %1895, label %1896, label %1901, !dx.controlflow.hints !107

; <label>:1896                                    ; preds = %1892
  %1897 = call float @dx.op.binary.f32(i32 35, float %1845, float %1894)  ; FMax(a,b)
  %1898 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 %1855
  store float %1897, float* %1898, align 4, !tbaa !92, !noalias !96
  %1899 = call float @dx.op.binary.f32(i32 35, float %1845, float %1893)  ; FMax(a,b)
  %1900 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 %1855
  store float %1899, float* %1900, align 4, !tbaa !92, !noalias !96
  br label %1901

; <label>:1901                                    ; preds = %1896, %1892
  %1902 = add nuw nsw i32 %1855, 1
  %1903 = icmp eq i32 %1902, %1783
  br i1 %1903, label %1904, label %1854

; <label>:1904                                    ; preds = %1901
  %1905 = load float, float* %1848, align 4, !tbaa !92, !alias.scope !108, !noalias !111
  %1906 = load float, float* %1847, align 4, !tbaa !92, !alias.scope !114, !noalias !115
  %1907 = load float, float* %1846, align 4, !tbaa !92, !alias.scope !116, !noalias !117
  %1908 = load float, float* %1851, align 4, !tbaa !92, !alias.scope !118, !noalias !121
  %1909 = load float, float* %1850, align 4, !tbaa !92, !alias.scope !124, !noalias !125
  %1910 = load float, float* %1849, align 4, !tbaa !92, !alias.scope !126, !noalias !127
  br label %1911

; <label>:1911                                    ; preds = %1904, %1844
  %1912 = phi float [ -1.000000e+00, %1844 ], [ %1910, %1904 ]
  %1913 = phi float [ -1.000000e+00, %1844 ], [ %1909, %1904 ]
  %1914 = phi float [ -1.000000e+00, %1844 ], [ %1908, %1904 ]
  %1915 = phi float [ -1.000000e+00, %1844 ], [ %1907, %1904 ]
  %1916 = phi float [ -1.000000e+00, %1844 ], [ %1906, %1904 ]
  %1917 = phi float [ -1.000000e+00, %1844 ], [ %1905, %1904 ]
  %1918 = call float @dx.op.binary.f32(i32 36, float %1916, float %1917)  ; FMin(a,b)
  %1919 = call float @dx.op.binary.f32(i32 36, float %1915, float %1918)  ; FMin(a,b)
  %1920 = call float @dx.op.binary.f32(i32 35, float %1915, float %1916)  ; FMax(a,b)
  %1921 = call float @dx.op.binary.f32(i32 36, float %1920, float %1917)  ; FMin(a,b)
  %1922 = call float @dx.op.binary.f32(i32 36, float %1915, float %1916)  ; FMin(a,b)
  %1923 = call float @dx.op.binary.f32(i32 35, float %1922, float %1921)  ; FMax(a,b)
  %1924 = call float @dx.op.binary.f32(i32 35, float %1916, float %1917)  ; FMax(a,b)
  %1925 = call float @dx.op.binary.f32(i32 35, float %1915, float %1924)  ; FMax(a,b)
  store float %1919, float* %1846, align 4, !tbaa !92, !alias.scope !116, !noalias !117
  store float %1923, float* %1847, align 4, !tbaa !92, !alias.scope !114, !noalias !115
  store float %1925, float* %1848, align 4, !tbaa !92, !alias.scope !108, !noalias !111
  %1926 = call float @dx.op.binary.f32(i32 36, float %1913, float %1914)  ; FMin(a,b)
  %1927 = call float @dx.op.binary.f32(i32 36, float %1912, float %1926)  ; FMin(a,b)
  %1928 = call float @dx.op.binary.f32(i32 35, float %1912, float %1913)  ; FMax(a,b)
  %1929 = call float @dx.op.binary.f32(i32 36, float %1928, float %1914)  ; FMin(a,b)
  %1930 = call float @dx.op.binary.f32(i32 36, float %1912, float %1913)  ; FMin(a,b)
  %1931 = call float @dx.op.binary.f32(i32 35, float %1930, float %1929)  ; FMax(a,b)
  %1932 = call float @dx.op.binary.f32(i32 35, float %1913, float %1914)  ; FMax(a,b)
  %1933 = call float @dx.op.binary.f32(i32 35, float %1912, float %1932)  ; FMax(a,b)
  store float %1927, float* %1849, align 4, !tbaa !92, !alias.scope !126, !noalias !127
  store float %1931, float* %1850, align 4, !tbaa !92, !alias.scope !124, !noalias !125
  store float %1933, float* %1851, align 4, !tbaa !92, !alias.scope !118, !noalias !121
  br label %1934

; <label>:1934                                    ; preds = %1911, %1840, %1829, %1827, %1724
  %1935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %1936 = extractvalue %dx.types.CBufRet.f32 %1935, 2
  %1937 = fmul fast float %1936, %1734
  %1938 = call float @dx.op.unary.f32(i32 7, float %1937)  ; Saturate(value)
  %1939 = fptoui float %1673 to i32
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1940 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %25
  store i32 %1939, i32 addrspace(3)* %1940, align 4, !tbaa !128
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1941 = and i32 %25, 63
  %1942 = icmp ult i32 %1941, 32
  br i1 %1942, label %1943, label %1949, !dx.controlflow.hints !130

; <label>:1943                                    ; preds = %1934
  %1944 = add i32 %25, 32
  %1945 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1944
  %1946 = load i32, i32 addrspace(3)* %1945, align 4, !tbaa !128
  %1947 = load i32, i32 addrspace(3)* %1940, align 4, !tbaa !128
  %1948 = call i32 @dx.op.binary.i32(i32 40, i32 %1947, i32 %1946)  ; UMin(a,b)
  store i32 %1948, i32 addrspace(3)* %1940, align 4, !tbaa !128
  br label %1949

; <label>:1949                                    ; preds = %1943, %1934
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1950 = icmp ult i32 %1941, 16
  br i1 %1950, label %1951, label %1957, !dx.controlflow.hints !131

; <label>:1951                                    ; preds = %1949
  %1952 = add i32 %25, 16
  %1953 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1952
  %1954 = load i32, i32 addrspace(3)* %1953, align 4, !tbaa !128
  %1955 = load i32, i32 addrspace(3)* %1940, align 4, !tbaa !128
  %1956 = call i32 @dx.op.binary.i32(i32 40, i32 %1955, i32 %1954)  ; UMin(a,b)
  store i32 %1956, i32 addrspace(3)* %1940, align 4, !tbaa !128
  br label %1957

; <label>:1957                                    ; preds = %1951, %1949
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1958 = icmp ult i32 %1941, 8
  br i1 %1958, label %1959, label %1965, !dx.controlflow.hints !132

; <label>:1959                                    ; preds = %1957
  %1960 = add i32 %25, 8
  %1961 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1960
  %1962 = load i32, i32 addrspace(3)* %1961, align 4, !tbaa !128
  %1963 = load i32, i32 addrspace(3)* %1940, align 4, !tbaa !128
  %1964 = call i32 @dx.op.binary.i32(i32 40, i32 %1963, i32 %1962)  ; UMin(a,b)
  store i32 %1964, i32 addrspace(3)* %1940, align 4, !tbaa !128
  br label %1965

; <label>:1965                                    ; preds = %1959, %1957
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1966 = icmp ult i32 %1941, 4
  br i1 %1966, label %1967, label %1973, !dx.controlflow.hints !133

; <label>:1967                                    ; preds = %1965
  %1968 = add i32 %25, 4
  %1969 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1968
  %1970 = load i32, i32 addrspace(3)* %1969, align 4, !tbaa !128
  %1971 = load i32, i32 addrspace(3)* %1940, align 4, !tbaa !128
  %1972 = call i32 @dx.op.binary.i32(i32 40, i32 %1971, i32 %1970)  ; UMin(a,b)
  store i32 %1972, i32 addrspace(3)* %1940, align 4, !tbaa !128
  br label %1973

; <label>:1973                                    ; preds = %1967, %1965
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1974 = icmp ult i32 %1941, 2
  br i1 %1974, label %1975, label %1981, !dx.controlflow.hints !134

; <label>:1975                                    ; preds = %1973
  %1976 = add i32 %25, 2
  %1977 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1976
  %1978 = load i32, i32 addrspace(3)* %1977, align 4, !tbaa !128
  %1979 = load i32, i32 addrspace(3)* %1940, align 4, !tbaa !128
  %1980 = call i32 @dx.op.binary.i32(i32 40, i32 %1979, i32 %1978)  ; UMin(a,b)
  store i32 %1980, i32 addrspace(3)* %1940, align 4, !tbaa !128
  br label %1981

; <label>:1981                                    ; preds = %1975, %1973
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1982 = icmp eq i32 %1941, 0
  br i1 %1982, label %1983, label %1989, !dx.controlflow.hints !135

; <label>:1983                                    ; preds = %1981
  %1984 = add i32 %25, 1
  %1985 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1984
  %1986 = load i32, i32 addrspace(3)* %1985, align 4, !tbaa !128
  %1987 = load i32, i32 addrspace(3)* %1940, align 4, !tbaa !128
  %1988 = call i32 @dx.op.binary.i32(i32 40, i32 %1987, i32 %1986)  ; UMin(a,b)
  store i32 %1988, i32 addrspace(3)* %1940, align 4, !tbaa !128
  br label %1989

; <label>:1989                                    ; preds = %1983, %1981
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1990 = and i32 %25, -64
  %1991 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1990
  %1992 = load i32, i32 addrspace(3)* %1991, align 4, !tbaa !128
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %1939, i32 addrspace(3)* %1940, align 4, !tbaa !128
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %1942, label %1993, label %1999, !dx.controlflow.hints !136

; <label>:1993                                    ; preds = %1989
  %1994 = add i32 %25, 32
  %1995 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1994
  %1996 = load i32, i32 addrspace(3)* %1995, align 4, !tbaa !128
  %1997 = load i32, i32 addrspace(3)* %1940, align 4, !tbaa !128
  %1998 = call i32 @dx.op.binary.i32(i32 39, i32 %1997, i32 %1996)  ; UMax(a,b)
  store i32 %1998, i32 addrspace(3)* %1940, align 4, !tbaa !128
  br label %1999

; <label>:1999                                    ; preds = %1993, %1989
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1950, label %2000, label %2006, !dx.controlflow.hints !137

; <label>:2000                                    ; preds = %1999
  %2001 = add i32 %25, 16
  %2002 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2001
  %2003 = load i32, i32 addrspace(3)* %2002, align 4, !tbaa !128
  %2004 = load i32, i32 addrspace(3)* %1940, align 4, !tbaa !128
  %2005 = call i32 @dx.op.binary.i32(i32 39, i32 %2004, i32 %2003)  ; UMax(a,b)
  store i32 %2005, i32 addrspace(3)* %1940, align 4, !tbaa !128
  br label %2006

; <label>:2006                                    ; preds = %2000, %1999
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1958, label %2007, label %2013, !dx.controlflow.hints !138

; <label>:2007                                    ; preds = %2006
  %2008 = add i32 %25, 8
  %2009 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2008
  %2010 = load i32, i32 addrspace(3)* %2009, align 4, !tbaa !128
  %2011 = load i32, i32 addrspace(3)* %1940, align 4, !tbaa !128
  %2012 = call i32 @dx.op.binary.i32(i32 39, i32 %2011, i32 %2010)  ; UMax(a,b)
  store i32 %2012, i32 addrspace(3)* %1940, align 4, !tbaa !128
  br label %2013

; <label>:2013                                    ; preds = %2007, %2006
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1966, label %2014, label %2020, !dx.controlflow.hints !139

; <label>:2014                                    ; preds = %2013
  %2015 = add i32 %25, 4
  %2016 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2015
  %2017 = load i32, i32 addrspace(3)* %2016, align 4, !tbaa !128
  %2018 = load i32, i32 addrspace(3)* %1940, align 4, !tbaa !128
  %2019 = call i32 @dx.op.binary.i32(i32 39, i32 %2018, i32 %2017)  ; UMax(a,b)
  store i32 %2019, i32 addrspace(3)* %1940, align 4, !tbaa !128
  br label %2020

; <label>:2020                                    ; preds = %2014, %2013
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1974, label %2021, label %2027, !dx.controlflow.hints !140

; <label>:2021                                    ; preds = %2020
  %2022 = add i32 %25, 2
  %2023 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2022
  %2024 = load i32, i32 addrspace(3)* %2023, align 4, !tbaa !128
  %2025 = load i32, i32 addrspace(3)* %1940, align 4, !tbaa !128
  %2026 = call i32 @dx.op.binary.i32(i32 39, i32 %2025, i32 %2024)  ; UMax(a,b)
  store i32 %2026, i32 addrspace(3)* %1940, align 4, !tbaa !128
  br label %2027

; <label>:2027                                    ; preds = %2021, %2020
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1982, label %2028, label %2034, !dx.controlflow.hints !141

; <label>:2028                                    ; preds = %2027
  %2029 = add i32 %25, 1
  %2030 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2029
  %2031 = load i32, i32 addrspace(3)* %2030, align 4, !tbaa !128
  %2032 = load i32, i32 addrspace(3)* %1940, align 4, !tbaa !128
  %2033 = call i32 @dx.op.binary.i32(i32 39, i32 %2032, i32 %2031)  ; UMax(a,b)
  store i32 %2033, i32 addrspace(3)* %1940, align 4, !tbaa !128
  br label %2034

; <label>:2034                                    ; preds = %2028, %2027
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2035 = load i32, i32 addrspace(3)* %1991, align 4, !tbaa !128
  %2036 = uitofp i32 %2035 to float
  %2037 = uitofp i32 %1992 to float
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %23, i32 %24, i32 undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %2038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2039 = extractvalue %dx.types.CBufRet.f32 %2038, 0
  %2040 = fmul fast float %2039, %1673
  %2041 = fmul fast float %2039, %2036
  %2042 = fmul fast float %2039, %2037
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %23, i32 %24, i32 undef, float %2040, float %2041, float %2042, float %2040, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %23, i32 %24, i32 undef, float %1938, float %1938, float %1938, float %1938, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!34 = !{void ()* @cs_fog_raymarching_clouds_heightmap_particles_brfog, !"cs_fog_raymarching_clouds_heightmap_particles_brfog", null, !4, !35}
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
!51 = distinct !{!51, !"dx.controlflow.hints", i32 1}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !59}
!59 = !{!"llvm.loop.unroll.disable"}
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
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 2}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 2}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 2}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 2}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 1}
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
!90 = distinct !{!90, !"dx.controlflow.hints", i32 2}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 2}
!92 = !{!93, !93, i64 0}
!93 = !{!"float", !94, i64 0}
!94 = !{!"omnipotent char", !95, i64 0}
!95 = !{!"Simple C/C++ TBAA"}
!96 = !{!97, !99, !101, !102, !104, !105, !106}
!97 = distinct !{!97, !98, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!98 = distinct !{!98, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!99 = distinct !{!99, !100, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!100 = distinct !{!100, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!101 = distinct !{!101, !100, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!102 = distinct !{!102, !103, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %scattering"}
!103 = distinct !{!103, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z"}
!104 = distinct !{!104, !103, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %transmission"}
!105 = distinct !{!105, !103, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %depthDensityWeighted"}
!106 = distinct !{!106, !103, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %rawShadowmapData"}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 2}
!108 = !{!109}
!109 = distinct !{!109, !110, !"\01?sort@@YAXAIAM00@Z: %c"}
!110 = distinct !{!110, !"\01?sort@@YAXAIAM00@Z"}
!111 = !{!112, !113, !97, !99, !101, !102, !104, !105, !106}
!112 = distinct !{!112, !110, !"\01?sort@@YAXAIAM00@Z: %a"}
!113 = distinct !{!113, !110, !"\01?sort@@YAXAIAM00@Z: %b"}
!114 = !{!113}
!115 = !{!112, !109, !97, !99, !101, !102, !104, !105, !106}
!116 = !{!112}
!117 = !{!113, !109, !97, !99, !101, !102, !104, !105, !106}
!118 = !{!119}
!119 = distinct !{!119, !120, !"\01?sort@@YAXAIAM00@Z: %c"}
!120 = distinct !{!120, !"\01?sort@@YAXAIAM00@Z"}
!121 = !{!122, !123, !97, !99, !101, !102, !104, !105, !106}
!122 = distinct !{!122, !120, !"\01?sort@@YAXAIAM00@Z: %a"}
!123 = distinct !{!123, !120, !"\01?sort@@YAXAIAM00@Z: %b"}
!124 = !{!123}
!125 = !{!122, !119, !97, !99, !101, !102, !104, !105, !106}
!126 = !{!122}
!127 = !{!123, !119, !97, !99, !101, !102, !104, !105, !106}
!128 = !{!129, !129, i64 0}
!129 = !{!"int", !94, i64 0}
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
!140 = distinct !{!140, !"dx.controlflow.hints", i32 2}
!141 = distinct !{!141, !"dx.controlflow.hints", i32 2}

