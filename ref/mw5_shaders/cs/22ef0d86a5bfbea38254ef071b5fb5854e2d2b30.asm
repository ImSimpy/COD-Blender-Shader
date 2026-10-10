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
; shader hash: d4a06e0007df14bbe6a6c41b1f654f7d
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
;                                   texture     f32          3d      T0             t3     1
;                                   texture     f32          2d      T1            t16     1
;                                   texture     f32          2d      T2            t27     1
;                                   texture     f32          3d      T3             t1     1
;                                   texture     f32          3d      T4             t2     1
;                                   texture     f32          2d      T5             t8     1
;                                   texture     f32          2d      T6             t9     1
;                                   texture     f32          2d      T7            t18     1
;                                   texture  struct         r/o      T8            t25     1
;                                   texture     f32     2darray      T9            t31     1
;                                   texture     f32          3d     T10            t30     1
;                                   texture     f32          2d     T11            t29     1
;                                   texture     f32          2d     T12            t26     1
;                                   texture     u32          2d     T13            t32     1
;                                   texture     f32          3d     T14            t33     1
;                                   texture     f32          1d     T15            t14     1
;                                   texture     f32          2d     T16            t13     1
;                                   texture     f32          2d     T17             t0     1
;                                   texture    byte         r/o     T18            t17     1
;                                       UAV     f32          2d      U0             u0     1
;                                       UAV     f32          2d      U1             u1     1
;                                       UAV     f32          2d      U2             u2     1
;                                       UAVunorm_f32     2darray      U3             u3     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%"class.Texture3D<float>" = type { float, %"class.Texture3D<float>::mips_type" }
%"class.Texture3D<float>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%"class.StructuredBuffer<VolumetricBBoxGpu>" = type { %struct.VolumetricBBoxGpu }
%struct.VolumetricBBoxGpu = type { <3 x float>, i32, <3 x float>, float, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 2> >" = type { <2 x float>, %"class.Texture2D<vector<float, 2> >::mips_type" }
%"class.Texture2D<vector<float, 2> >::mips_type" = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 3> >" = type { <3 x float>, %"class.Texture3D<vector<float, 3> >::mips_type" }
%"class.Texture3D<vector<float, 3> >::mips_type" = type { i32 }
%"class.Texture1D<float>" = type { float, %"class.Texture1D<float>::mips_type" }
%"class.Texture1D<float>::mips_type" = type { i32 }
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

define void @cs_fog_raymarching_air_clouds_heightmap_particles_brfog() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 26, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 29, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %32 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %33 = alloca [3 x float], align 4
  %34 = alloca [3 x float], align 4
  %35 = add i32 %32, %31
  %36 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 361)  ; CBufferLoadLegacy(handle,regIndex)
  %37 = extractvalue %dx.types.CBufRet.i32 %36, 1
  %38 = add i32 %35, %37
  %39 = lshr i32 %38, 1
  %40 = and i32 %39, 1
  %41 = and i32 %38, 1
  %42 = xor i32 %40, %41
  %43 = shl i32 %31, 1
  %44 = shl i32 %32, 1
  %45 = or i32 %42, %43
  %46 = or i32 %40, %44
  %47 = uitofp i32 %45 to float
  %48 = uitofp i32 %46 to float
  %49 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %50 = extractvalue %dx.types.CBufRet.f32 %49, 2
  %51 = fmul fast float %50, 0x3FE3C6EF40000000
  %52 = frem fast float %47, 2.560000e+02
  %53 = frem fast float %48, 2.560000e+02
  %54 = fptoui float %52 to i32
  %55 = fptoui float %53 to i32
  %56 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %54, i32 %55, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %57 = extractvalue %dx.types.ResRet.f32 %56, 0
  %58 = extractvalue %dx.types.ResRet.f32 %56, 1
  %59 = extractvalue %dx.types.ResRet.f32 %56, 2
  %60 = extractvalue %dx.types.ResRet.f32 %56, 3
  %61 = fadd fast float %57, %51
  %62 = fadd fast float %58, %51
  %63 = fadd fast float %59, %51
  %64 = fadd fast float %60, %51
  %65 = call float @dx.op.unary.f32(i32 22, float %61)  ; Frc(value)
  %66 = call float @dx.op.unary.f32(i32 22, float %62)  ; Frc(value)
  %67 = call float @dx.op.unary.f32(i32 22, float %63)  ; Frc(value)
  %68 = call float @dx.op.unary.f32(i32 22, float %64)  ; Frc(value)
  %69 = fadd fast float %67, %47
  %70 = fadd fast float %68, %48
  %71 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %72 = extractvalue %dx.types.CBufRet.f32 %71, 2
  %73 = extractvalue %dx.types.CBufRet.f32 %71, 3
  %74 = fmul fast float %72, %69
  %75 = fmul fast float %73, %70
  %76 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %77 = extractvalue %dx.types.CBufRet.f32 %76, 0
  %78 = extractvalue %dx.types.CBufRet.f32 %76, 1
  %79 = extractvalue %dx.types.CBufRet.f32 %76, 2
  %80 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %81 = extractvalue %dx.types.CBufRet.f32 %80, 1
  %82 = fmul fast float %74, 2.000000e+00
  %83 = fmul fast float %75, 2.000000e+00
  %84 = fsub fast float 1.000000e+00, %82
  %85 = fsub fast float 1.000000e+00, %83
  %86 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %87 = extractvalue %dx.types.CBufRet.f32 %86, 0
  %88 = extractvalue %dx.types.CBufRet.f32 %86, 1
  %89 = extractvalue %dx.types.CBufRet.f32 %86, 2
  %90 = fmul fast float %87, %84
  %91 = fmul fast float %88, %84
  %92 = fmul fast float %89, %84
  %93 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %94 = extractvalue %dx.types.CBufRet.f32 %93, 0
  %95 = extractvalue %dx.types.CBufRet.f32 %93, 1
  %96 = extractvalue %dx.types.CBufRet.f32 %93, 2
  %97 = fmul fast float %94, %85
  %98 = fmul fast float %95, %85
  %99 = fmul fast float %96, %85
  %100 = fadd fast float %97, %90
  %101 = fadd fast float %98, %91
  %102 = fadd fast float %99, %92
  %103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %104 = extractvalue %dx.types.CBufRet.f32 %103, 0
  %105 = extractvalue %dx.types.CBufRet.f32 %103, 1
  %106 = extractvalue %dx.types.CBufRet.f32 %103, 2
  %107 = fadd fast float %100, %104
  %108 = fadd fast float %101, %105
  %109 = fadd fast float %102, %106
  %110 = fmul fast float %107, %81
  %111 = fmul fast float %108, %81
  %112 = fmul fast float %109, %81
  %113 = fmul fast float %110, %110
  %114 = fmul fast float %111, %111
  %115 = fadd fast float %113, %114
  %116 = fmul fast float %112, %112
  %117 = fadd fast float %115, %116
  %118 = call float @dx.op.unary.f32(i32 24, float %117)  ; Sqrt(value)
  %119 = fdiv fast float 1.000000e+00, %118
  %120 = fmul fast float %110, %119
  %121 = fmul fast float %111, %119
  %122 = fmul fast float %112, %119
  %123 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %45, i32 %46, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %124 = extractvalue %dx.types.ResRet.f32 %123, 0
  %125 = fcmp fast ogt float %124, -1.000000e+00
  %126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %127 = extractvalue %dx.types.CBufRet.f32 %126, 1
  %128 = select i1 %125, float %127, float 1.000000e+00
  %129 = fadd fast float %124, 1.000000e+00
  %130 = fmul fast float %128, %129
  %131 = call float @dx.op.unary.f32(i32 6, float %130)  ; FAbs(value)
  %132 = fdiv fast float 1.000000e+00, %81
  %133 = fmul fast float %132, %118
  %134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %135 = extractvalue %dx.types.CBufRet.f32 %134, 1
  %136 = fmul fast float %135, %133
  %137 = fmul fast float %133, %131
  %138 = extractvalue %dx.types.CBufRet.f32 %126, 3
  %139 = fcmp fast oge float %131, %138
  %140 = call float @dx.op.binary.f32(i32 36, float %137, float %136)  ; FMin(a,b)
  %141 = select i1 %139, float %136, float %140
  %142 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %143 = extractvalue %dx.types.CBufRet.i32 %142, 3
  %144 = icmp eq i32 %143, 0
  %145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %146 = extractvalue %dx.types.CBufRet.f32 %145, 2
  %147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %148 = extractvalue %dx.types.CBufRet.f32 %147, 2
  %149 = fsub fast float %146, %79
  %150 = fadd fast float %149, %148
  %151 = fsub fast float 0xC7EFFFFFE0000000, %79
  br i1 %144, label %163, label %152, !dx.controlflow.hints !46

; <label>:152                                     ; preds = %0
  %153 = fsub fast float -0.000000e+00, %78
  %154 = fsub fast float -0.000000e+00, %77
  %155 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %154, float %153, float %150)  ; Dot3(ax,ay,az,bx,by,bz)
  %156 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %120, float %121, float %122)  ; Dot3(ax,ay,az,bx,by,bz)
  %157 = fdiv fast float 1.000000e+00, %156
  %158 = fmul fast float %157, %155
  %159 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %154, float %153, float %151)  ; Dot3(ax,ay,az,bx,by,bz)
  %160 = fmul fast float %157, %159
  %161 = call float @dx.op.binary.f32(i32 36, float %158, float %160)  ; FMin(a,b)
  %162 = call float @dx.op.binary.f32(i32 35, float %158, float %160)  ; FMax(a,b)
  br label %196

; <label>:163                                     ; preds = %0
  %164 = extractvalue %dx.types.CBufRet.f32 %145, 0
  %165 = extractvalue %dx.types.CBufRet.f32 %145, 1
  %166 = extractvalue %dx.types.CBufRet.f32 %147, 0
  %167 = extractvalue %dx.types.CBufRet.f32 %147, 1
  %168 = fdiv fast float 1.000000e+00, %120
  %169 = fdiv fast float 1.000000e+00, %121
  %170 = fdiv fast float 1.000000e+00, %122
  %171 = fsub fast float %164, %77
  %172 = fmul fast float %168, %171
  %173 = fadd fast float %171, %166
  %174 = fmul fast float %173, %168
  %175 = call float @dx.op.binary.f32(i32 36, float %172, float %174)  ; FMin(a,b)
  %176 = call float @dx.op.binary.f32(i32 35, float %172, float %174)  ; FMax(a,b)
  %177 = fsub fast float %165, %78
  %178 = fmul fast float %169, %177
  %179 = fadd fast float %177, %167
  %180 = fmul fast float %179, %169
  %181 = call float @dx.op.binary.f32(i32 36, float %178, float %180)  ; FMin(a,b)
  %182 = call float @dx.op.binary.f32(i32 35, float %175, float %181)  ; FMax(a,b)
  %183 = call float @dx.op.binary.f32(i32 35, float %178, float %180)  ; FMax(a,b)
  %184 = call float @dx.op.binary.f32(i32 36, float %176, float %183)  ; FMin(a,b)
  %185 = fmul fast float %170, %151
  %186 = fmul fast float %170, %150
  %187 = call float @dx.op.binary.f32(i32 36, float %185, float %186)  ; FMin(a,b)
  %188 = call float @dx.op.binary.f32(i32 35, float %182, float %187)  ; FMax(a,b)
  %189 = call float @dx.op.binary.f32(i32 35, float %185, float %186)  ; FMax(a,b)
  %190 = call float @dx.op.binary.f32(i32 36, float %184, float %189)  ; FMin(a,b)
  %191 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %188)  ; FMax(a,b)
  %192 = fcmp fast ult float %190, %191
  br i1 %192, label %196, label %193, !dx.controlflow.hints !47

; <label>:193                                     ; preds = %163
  %194 = call float @dx.op.binary.f32(i32 36, float %188, float %190)  ; FMin(a,b)
  %195 = call float @dx.op.binary.f32(i32 35, float %188, float %190)  ; FMax(a,b)
  br label %196

; <label>:196                                     ; preds = %193, %163, %152
  %197 = phi float [ %161, %152 ], [ %194, %193 ], [ 0.000000e+00, %163 ]
  %198 = phi float [ %162, %152 ], [ %195, %193 ], [ 0.000000e+00, %163 ]
  %199 = fcmp fast oeq float %198, 0.000000e+00
  %200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %201 = extractvalue %dx.types.CBufRet.f32 %200, 1
  %202 = fcmp fast olt float %198, %201
  %203 = or i1 %199, %202
  br i1 %203, label %208, label %204, !dx.controlflow.hints !48

; <label>:204                                     ; preds = %196
  %205 = call float @dx.op.binary.f32(i32 35, float %201, float %197)  ; FMax(a,b)
  %206 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %205)  ; FMin(a,b)
  %207 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %198)  ; FMax(a,b)
  br label %208

; <label>:208                                     ; preds = %204, %196
  %209 = phi i32 [ 1, %204 ], [ 0, %196 ]
  %210 = phi float [ %207, %204 ], [ -1.000000e+00, %196 ]
  %211 = phi float [ %206, %204 ], [ 0x47EFFFFFE0000000, %196 ]
  %212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %213 = extractvalue %dx.types.CBufRet.f32 %212, 3
  %214 = fsub fast float -0.000000e+00, %77
  %215 = fsub fast float -0.000000e+00, %78
  %216 = fsub fast float %213, %79
  %217 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %214, float %215, float %216)  ; Dot3(ax,ay,az,bx,by,bz)
  %218 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %120, float %121, float %122)  ; Dot3(ax,ay,az,bx,by,bz)
  %219 = fdiv fast float 1.000000e+00, %218
  %220 = fmul fast float %219, %217
  %221 = fcmp fast olt float %220, 0.000000e+00
  %222 = fcmp fast ogt float %122, 0.000000e+00
  %223 = and i1 %222, %221
  br i1 %223, label %228, label %224, !dx.controlflow.hints !49

; <label>:224                                     ; preds = %208
  %225 = fcmp fast olt float %122, 0.000000e+00
  br i1 %225, label %226, label %228, !dx.controlflow.hints !50

; <label>:226                                     ; preds = %224
  %227 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %220)  ; FMax(a,b)
  br label %228

; <label>:228                                     ; preds = %226, %224, %208
  %229 = phi float [ 0.000000e+00, %208 ], [ %227, %226 ], [ 0.000000e+00, %224 ]
  %230 = phi float [ 0.000000e+00, %208 ], [ 0x47EFFFFFE0000000, %226 ], [ %220, %224 ]
  %231 = fcmp fast oeq float %230, 0.000000e+00
  br i1 %231, label %235, label %232, !dx.controlflow.hints !51

; <label>:232                                     ; preds = %228
  %233 = call float @dx.op.binary.f32(i32 36, float %211, float %229)  ; FMin(a,b)
  %234 = call float @dx.op.binary.f32(i32 35, float %210, float %230)  ; FMax(a,b)
  br label %235

; <label>:235                                     ; preds = %232, %228
  %236 = phi i32 [ 1, %232 ], [ 0, %228 ]
  %237 = phi float [ %234, %232 ], [ %210, %228 ]
  %238 = phi float [ %233, %232 ], [ %211, %228 ]
  %239 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %240 = extractvalue %dx.types.CBufRet.i32 %239, 3
  %241 = icmp eq i32 %240, 0
  %242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %243 = extractvalue %dx.types.CBufRet.f32 %242, 2
  %244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %245 = extractvalue %dx.types.CBufRet.f32 %244, 2
  %246 = fsub fast float %243, %79
  %247 = fadd fast float %246, %245
  br i1 %241, label %255, label %248, !dx.controlflow.hints !52

; <label>:248                                     ; preds = %235
  %249 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %214, float %215, float %247)  ; Dot3(ax,ay,az,bx,by,bz)
  %250 = fmul fast float %219, %249
  %251 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %214, float %215, float %246)  ; Dot3(ax,ay,az,bx,by,bz)
  %252 = fmul fast float %219, %251
  %253 = call float @dx.op.binary.f32(i32 36, float %250, float %252)  ; FMin(a,b)
  %254 = call float @dx.op.binary.f32(i32 35, float %250, float %252)  ; FMax(a,b)
  br label %288

; <label>:255                                     ; preds = %235
  %256 = fdiv fast float 1.000000e+00, %120
  %257 = fdiv fast float 1.000000e+00, %121
  %258 = fdiv fast float 1.000000e+00, %122
  %259 = extractvalue %dx.types.CBufRet.f32 %242, 0
  %260 = extractvalue %dx.types.CBufRet.f32 %242, 1
  %261 = extractvalue %dx.types.CBufRet.f32 %244, 0
  %262 = extractvalue %dx.types.CBufRet.f32 %244, 1
  %263 = fsub fast float %259, %77
  %264 = fmul fast float %263, %256
  %265 = fadd fast float %263, %261
  %266 = fmul fast float %265, %256
  %267 = call float @dx.op.binary.f32(i32 36, float %264, float %266)  ; FMin(a,b)
  %268 = call float @dx.op.binary.f32(i32 35, float %264, float %266)  ; FMax(a,b)
  %269 = fsub fast float %260, %78
  %270 = fmul fast float %269, %257
  %271 = fadd fast float %269, %262
  %272 = fmul fast float %271, %257
  %273 = call float @dx.op.binary.f32(i32 36, float %270, float %272)  ; FMin(a,b)
  %274 = call float @dx.op.binary.f32(i32 35, float %267, float %273)  ; FMax(a,b)
  %275 = call float @dx.op.binary.f32(i32 35, float %270, float %272)  ; FMax(a,b)
  %276 = call float @dx.op.binary.f32(i32 36, float %268, float %275)  ; FMin(a,b)
  %277 = fmul fast float %246, %258
  %278 = fmul fast float %247, %258
  %279 = call float @dx.op.binary.f32(i32 36, float %277, float %278)  ; FMin(a,b)
  %280 = call float @dx.op.binary.f32(i32 35, float %274, float %279)  ; FMax(a,b)
  %281 = call float @dx.op.binary.f32(i32 35, float %277, float %278)  ; FMax(a,b)
  %282 = call float @dx.op.binary.f32(i32 36, float %276, float %281)  ; FMin(a,b)
  %283 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %280)  ; FMax(a,b)
  %284 = fcmp fast ult float %282, %283
  br i1 %284, label %288, label %285, !dx.controlflow.hints !53

; <label>:285                                     ; preds = %255
  %286 = call float @dx.op.binary.f32(i32 36, float %280, float %282)  ; FMin(a,b)
  %287 = call float @dx.op.binary.f32(i32 35, float %280, float %282)  ; FMax(a,b)
  br label %288

; <label>:288                                     ; preds = %285, %255, %248
  %289 = phi float [ %253, %248 ], [ %286, %285 ], [ 0.000000e+00, %255 ]
  %290 = phi float [ %254, %248 ], [ %287, %285 ], [ 0.000000e+00, %255 ]
  %291 = fcmp fast oeq float %290, 0.000000e+00
  br i1 %291, label %295, label %292, !dx.controlflow.hints !54

; <label>:292                                     ; preds = %288
  %293 = call float @dx.op.binary.f32(i32 36, float %238, float %289)  ; FMin(a,b)
  %294 = call float @dx.op.binary.f32(i32 35, float %237, float %290)  ; FMax(a,b)
  br label %295

; <label>:295                                     ; preds = %292, %288
  %296 = phi i32 [ 1, %292 ], [ 0, %288 ]
  %297 = phi float [ %294, %292 ], [ %237, %288 ]
  %298 = phi float [ %293, %292 ], [ %238, %288 ]
  %299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %300 = extractvalue %dx.types.CBufRet.f32 %299, 3
  %301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %302 = extractvalue %dx.types.CBufRet.f32 %301, 0
  %303 = fsub fast float %300, %79
  %304 = fadd fast float %303, %302
  %305 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %214, float %215, float %304)  ; Dot3(ax,ay,az,bx,by,bz)
  %306 = fmul fast float %219, %305
  %307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %308 = extractvalue %dx.types.CBufRet.f32 %307, 2
  %309 = fsub fast float %308, %79
  %310 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %214, float %215, float %309)  ; Dot3(ax,ay,az,bx,by,bz)
  %311 = fmul fast float %219, %310
  %312 = call float @dx.op.binary.f32(i32 36, float %306, float %311)  ; FMin(a,b)
  %313 = call float @dx.op.binary.f32(i32 35, float %306, float %311)  ; FMax(a,b)
  %314 = call float @dx.op.binary.f32(i32 36, float %298, float %312)  ; FMin(a,b)
  %315 = call float @dx.op.binary.f32(i32 35, float %297, float %313)  ; FMax(a,b)
  %316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %317 = extractvalue %dx.types.CBufRet.f32 %316, 2
  %318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %319 = extractvalue %dx.types.CBufRet.f32 %318, 3
  %320 = fsub fast float %317, %79
  %321 = fadd fast float %320, %319
  %322 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %214, float %215, float %321)  ; Dot3(ax,ay,az,bx,by,bz)
  %323 = fmul fast float %219, %322
  %324 = fcmp fast olt float %323, 0.000000e+00
  %325 = and i1 %222, %324
  br i1 %325, label %330, label %326, !dx.controlflow.hints !55

; <label>:326                                     ; preds = %295
  %327 = fcmp fast olt float %122, 0.000000e+00
  br i1 %327, label %328, label %330, !dx.controlflow.hints !56

; <label>:328                                     ; preds = %326
  %329 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %323)  ; FMax(a,b)
  br label %330

; <label>:330                                     ; preds = %328, %326, %295
  %331 = phi float [ 0.000000e+00, %295 ], [ %329, %328 ], [ 0.000000e+00, %326 ]
  %332 = phi float [ 0.000000e+00, %295 ], [ 0x47EFFFFFE0000000, %328 ], [ %323, %326 ]
  %333 = fcmp fast oeq float %332, 0.000000e+00
  br i1 %333, label %337, label %334, !dx.controlflow.hints !57

; <label>:334                                     ; preds = %330
  %335 = call float @dx.op.binary.f32(i32 36, float %314, float %331)  ; FMin(a,b)
  %336 = call float @dx.op.binary.f32(i32 35, float %315, float %332)  ; FMax(a,b)
  br label %337

; <label>:337                                     ; preds = %334, %330
  %338 = phi i32 [ 1, %334 ], [ 0, %330 ]
  %339 = phi float [ %336, %334 ], [ %315, %330 ]
  %340 = phi float [ %335, %334 ], [ %314, %330 ]
  %341 = fdiv fast float 1.000000e+00, %120
  %342 = fdiv fast float 1.000000e+00, %121
  %343 = fdiv fast float 1.000000e+00, %122
  %344 = call float @dx.op.binary.f32(i32 36, float %141, float %339)  ; FMin(a,b)
  %345 = call float @dx.op.binary.f32(i32 35, float %118, float %340)  ; FMax(a,b)
  %346 = extractvalue %dx.types.CBufRet.f32 %212, 0
  %347 = fmul fast float %66, 2.000000e+00
  %348 = fadd fast float %347, -1.000000e+00
  %349 = fmul fast float %346, %348
  %350 = fadd fast float %349, %345
  %351 = fcmp fast olt float %350, %344
  %352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %353 = extractvalue %dx.types.CBufRet.f32 %352, 2
  %354 = fcmp fast olt float %353, 1.000000e+00
  %355 = and i1 %351, %354
  br i1 %355, label %356, label %3476

; <label>:356                                     ; preds = %337
  %357 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %358 = extractvalue %dx.types.CBufRet.i32 %357, 1
  %359 = add i32 %358, -1
  %360 = fmul fast float %350, %122
  %361 = fadd fast float %360, %79
  %362 = fmul fast float %350, %121
  %363 = fadd fast float %362, %78
  %364 = fmul fast float %350, %120
  %365 = fadd fast float %364, %77
  br label %366

; <label>:366                                     ; preds = %3446, %356
  %367 = phi i32 [ %3448, %3446 ], [ undef, %356 ]
  %368 = phi float [ %3449, %3446 ], [ undef, %356 ]
  %369 = phi float [ %3450, %3446 ], [ undef, %356 ]
  %370 = phi float [ %3451, %3446 ], [ undef, %356 ]
  %371 = phi float [ %3452, %3446 ], [ undef, %356 ]
  %372 = phi float [ %3453, %3446 ], [ undef, %356 ]
  %373 = phi i32 [ %931, %3446 ], [ undef, %356 ]
  %374 = phi float [ %932, %3446 ], [ undef, %356 ]
  %375 = phi float [ %672, %3446 ], [ undef, %356 ]
  %376 = phi float [ %673, %3446 ], [ undef, %356 ]
  %377 = phi float [ %674, %3446 ], [ undef, %356 ]
  %378 = phi float [ %675, %3446 ], [ undef, %356 ]
  %379 = phi float [ %3454, %3446 ], [ 0.000000e+00, %356 ]
  %380 = phi float [ %3455, %3446 ], [ 1.000000e+00, %356 ]
  %381 = phi float [ %3456, %3446 ], [ 0.000000e+00, %356 ]
  %382 = phi float [ %3457, %3446 ], [ 0.000000e+00, %356 ]
  %383 = phi float [ %3458, %3446 ], [ 0.000000e+00, %356 ]
  %384 = phi float [ %3468, %3446 ], [ %365, %356 ]
  %385 = phi float [ %3469, %3446 ], [ %363, %356 ]
  %386 = phi float [ %3470, %3446 ], [ %361, %356 ]
  %387 = phi float [ %3447, %3446 ], [ %350, %356 ]
  %388 = phi i32 [ %677, %3446 ], [ 10, %356 ]
  %389 = phi i32 [ %569, %3446 ], [ %359, %356 ]
  %390 = phi float [ %3459, %3446 ], [ 0.000000e+00, %356 ]
  %391 = phi float [ %3460, %3446 ], [ 0.000000e+00, %356 ]
  %392 = phi float [ %3461, %3446 ], [ 0.000000e+00, %356 ]
  %393 = phi float [ %3462, %3446 ], [ 0.000000e+00, %356 ]
  %394 = phi float [ %3463, %3446 ], [ 0.000000e+00, %356 ]
  %395 = phi i32 [ %3464, %3446 ], [ 0, %356 ]
  %396 = fsub fast float -0.000000e+00, %385
  %397 = fsub fast float -0.000000e+00, %384
  %398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %399 = extractvalue %dx.types.CBufRet.f32 %398, 0
  %400 = icmp eq i32 %209, 0
  br i1 %400, label %566, label %401, !dx.controlflow.hints !58

; <label>:401                                     ; preds = %366
  %402 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %403 = extractvalue %dx.types.CBufRet.i32 %402, 1
  %404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %405 = extractvalue %dx.types.CBufRet.f32 %404, 1
  %406 = fcmp fast ogt float %405, %387
  br i1 %406, label %407, label %409, !dx.controlflow.hints !59

; <label>:407                                     ; preds = %401
  %408 = fsub fast float %405, %387
  br label %556

; <label>:409                                     ; preds = %401
  %410 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %411 = extractvalue %dx.types.CBufRet.i32 %410, 3
  %412 = icmp eq i32 %411, 0
  %413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %414 = extractvalue %dx.types.CBufRet.f32 %413, 2
  %415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %416 = extractvalue %dx.types.CBufRet.f32 %415, 2
  %417 = fsub fast float %414, %386
  %418 = fadd fast float %417, %416
  %419 = fsub fast float 0xC7EFFFFFE0000000, %386
  br i1 %412, label %427, label %420, !dx.controlflow.hints !46

; <label>:420                                     ; preds = %409
  %421 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %397, float %396, float %418)  ; Dot3(ax,ay,az,bx,by,bz)
  %422 = fmul fast float %219, %421
  %423 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %397, float %396, float %419)  ; Dot3(ax,ay,az,bx,by,bz)
  %424 = fmul fast float %219, %423
  %425 = call float @dx.op.binary.f32(i32 36, float %422, float %424)  ; FMin(a,b)
  %426 = call float @dx.op.binary.f32(i32 35, float %422, float %424)  ; FMax(a,b)
  br label %457

; <label>:427                                     ; preds = %409
  %428 = extractvalue %dx.types.CBufRet.f32 %413, 0
  %429 = extractvalue %dx.types.CBufRet.f32 %413, 1
  %430 = extractvalue %dx.types.CBufRet.f32 %415, 0
  %431 = extractvalue %dx.types.CBufRet.f32 %415, 1
  %432 = fsub fast float %428, %384
  %433 = fmul fast float %341, %432
  %434 = fadd fast float %432, %430
  %435 = fmul fast float %434, %341
  %436 = call float @dx.op.binary.f32(i32 36, float %433, float %435)  ; FMin(a,b)
  %437 = call float @dx.op.binary.f32(i32 35, float %433, float %435)  ; FMax(a,b)
  %438 = fsub fast float %429, %385
  %439 = fmul fast float %342, %438
  %440 = fadd fast float %438, %431
  %441 = fmul fast float %440, %342
  %442 = call float @dx.op.binary.f32(i32 36, float %439, float %441)  ; FMin(a,b)
  %443 = call float @dx.op.binary.f32(i32 35, float %436, float %442)  ; FMax(a,b)
  %444 = call float @dx.op.binary.f32(i32 35, float %439, float %441)  ; FMax(a,b)
  %445 = call float @dx.op.binary.f32(i32 36, float %437, float %444)  ; FMin(a,b)
  %446 = fmul fast float %343, %419
  %447 = fmul fast float %343, %418
  %448 = call float @dx.op.binary.f32(i32 36, float %446, float %447)  ; FMin(a,b)
  %449 = call float @dx.op.binary.f32(i32 35, float %443, float %448)  ; FMax(a,b)
  %450 = call float @dx.op.binary.f32(i32 35, float %446, float %447)  ; FMax(a,b)
  %451 = call float @dx.op.binary.f32(i32 36, float %445, float %450)  ; FMin(a,b)
  %452 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %449)  ; FMax(a,b)
  %453 = fcmp fast ult float %451, %452
  br i1 %453, label %457, label %454, !dx.controlflow.hints !47

; <label>:454                                     ; preds = %427
  %455 = call float @dx.op.binary.f32(i32 36, float %449, float %451)  ; FMin(a,b)
  %456 = call float @dx.op.binary.f32(i32 35, float %449, float %451)  ; FMax(a,b)
  br label %457

; <label>:457                                     ; preds = %454, %427, %420
  %458 = phi float [ %425, %420 ], [ %455, %454 ], [ 0.000000e+00, %427 ]
  %459 = phi float [ %426, %420 ], [ %456, %454 ], [ 0.000000e+00, %427 ]
  %460 = fcmp fast ogt float %458, 0.000000e+00
  br i1 %460, label %556, label %461, !dx.controlflow.hints !60

; <label>:461                                     ; preds = %457
  %462 = fcmp fast ugt float %459, 0.000000e+00
  br i1 %462, label %463, label %556, !dx.controlflow.hints !61

; <label>:463                                     ; preds = %461
  %464 = icmp sgt i32 %389, 0
  br i1 %464, label %465, label %550

; <label>:465                                     ; preds = %463
  br label %466

; <label>:466                                     ; preds = %546, %465
  %467 = phi i32 [ %547, %546 ], [ %389, %465 ]
  %468 = sitofp i32 %467 to float
  %469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %470 = extractvalue %dx.types.CBufRet.f32 %469, 0
  %471 = extractvalue %dx.types.CBufRet.f32 %469, 1
  %472 = fsub fast float %384, %470
  %473 = fsub fast float %385, %471
  %474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %475 = extractvalue %dx.types.CBufRet.f32 %474, 0
  %476 = extractvalue %dx.types.CBufRet.f32 %474, 1
  %477 = fmul fast float %472, %475
  %478 = fmul fast float %473, %476
  %479 = fsub fast float 1.000000e+00, %478
  %480 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %481 = extractvalue %dx.types.CBufRet.i32 %480, 3
  %482 = icmp eq i32 %481, 0
  br i1 %482, label %489, label %483, !dx.controlflow.hints !62

; <label>:483                                     ; preds = %466
  %484 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %477, float %479, float undef, float undef, i32 0, i32 0, i32 undef, float %468)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %485 = extractvalue %dx.types.ResRet.f32 %484, 0
  %486 = extractvalue %dx.types.ResRet.f32 %484, 1
  %487 = extractvalue %dx.types.ResRet.f32 %484, 2
  %488 = extractvalue %dx.types.ResRet.f32 %484, 3
  br label %495

; <label>:489                                     ; preds = %466
  %490 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %27, float %477, float %479, float undef, float undef, i32 0, i32 0, i32 undef, float %468)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %491 = extractvalue %dx.types.ResRet.f32 %490, 0
  %492 = extractvalue %dx.types.ResRet.f32 %490, 1
  %493 = extractvalue %dx.types.ResRet.f32 %490, 2
  %494 = extractvalue %dx.types.ResRet.f32 %490, 3
  br label %495

; <label>:495                                     ; preds = %489, %483
  %496 = phi float [ %485, %483 ], [ %491, %489 ]
  %497 = phi float [ %486, %483 ], [ %492, %489 ]
  %498 = phi float [ %487, %483 ], [ %493, %489 ]
  %499 = phi float [ %488, %483 ], [ %494, %489 ]
  %500 = extractvalue %dx.types.CBufRet.f32 %474, 3
  %501 = fmul fast float %500, %496
  %502 = extractvalue %dx.types.CBufRet.f32 %469, 2
  %503 = fadd fast float %501, %502
  %504 = fmul fast float %500, %497
  %505 = fadd fast float %504, %502
  %506 = fmul fast float %500, %498
  %507 = fadd fast float %506, %502
  %508 = and i32 %467, 31
  %509 = shl i32 1, %508
  %510 = uitofp i32 %509 to float
  %511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %512 = extractvalue %dx.types.CBufRet.f32 %511, 3
  %513 = fdiv fast float 1.000000e+00, %512
  %514 = fmul fast float %513, %510
  %515 = fmul fast float %514, %122
  %516 = fadd fast float %515, %386
  %517 = fcmp fast oeq float %499, 0.000000e+00
  %518 = fcmp fast ogt float %386, %505
  %519 = fcmp fast ogt float %516, %505
  %520 = and i1 %518, %519
  %521 = or i1 %517, %520
  br i1 %521, label %522, label %526, !dx.controlflow.hints !63

; <label>:522                                     ; preds = %495
  %523 = add nsw i32 %467, 1
  %524 = add nsw i32 %403, -1
  %525 = call i32 @dx.op.binary.i32(i32 38, i32 %523, i32 %524)  ; IMin(a,b)
  br label %556

; <label>:526                                     ; preds = %495
  %527 = fcmp fast olt float %386, %507
  %528 = fcmp fast olt float %516, %507
  %529 = and i1 %527, %528
  br i1 %529, label %530, label %534, !dx.controlflow.hints !64

; <label>:530                                     ; preds = %526
  %531 = add nsw i32 %467, 1
  %532 = add nsw i32 %403, -1
  %533 = call i32 @dx.op.binary.i32(i32 38, i32 %531, i32 %532)  ; IMin(a,b)
  br label %556

; <label>:534                                     ; preds = %526
  %535 = fcmp fast olt float %386, %503
  %536 = fcmp fast olt float %516, %503
  %537 = and i1 %535, %536
  br i1 %537, label %538, label %546, !dx.controlflow.hints !65

; <label>:538                                     ; preds = %534
  %539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %540 = extractvalue %dx.types.CBufRet.f32 %539, 3
  %541 = extractvalue %dx.types.CBufRet.f32 %474, 2
  %542 = fcmp fast une float %540, %541
  br i1 %542, label %543, label %550, !dx.controlflow.hints !66

; <label>:543                                     ; preds = %538
  %544 = fsub fast float %386, %507
  %545 = call float @dx.op.binary.f32(i32 36, float %514, float %544)  ; FMin(a,b)
  br label %550

; <label>:546                                     ; preds = %534
  %547 = add nsw i32 %467, -1
  %548 = icmp sgt i32 %467, 1
  br i1 %548, label %466, label %549

; <label>:549                                     ; preds = %546
  br label %550

; <label>:550                                     ; preds = %549, %543, %538, %463
  %551 = phi float [ %545, %543 ], [ %514, %538 ], [ 0.000000e+00, %463 ], [ 0.000000e+00, %549 ]
  %552 = phi i32 [ %467, %543 ], [ %467, %538 ], [ %389, %463 ], [ %547, %549 ]
  %553 = add nsw i32 %552, 1
  %554 = add nsw i32 %403, -1
  %555 = call i32 @dx.op.binary.i32(i32 38, i32 %553, i32 %554)  ; IMin(a,b)
  br label %556

; <label>:556                                     ; preds = %550, %530, %522, %461, %457, %407
  %557 = phi float [ %408, %407 ], [ %514, %522 ], [ %514, %530 ], [ %551, %550 ], [ 0x47EFFFFFE0000000, %461 ], [ %458, %457 ]
  %558 = phi i32 [ %209, %407 ], [ %209, %522 ], [ %209, %530 ], [ %209, %550 ], [ 0, %461 ], [ %209, %457 ]
  %559 = phi i32 [ %389, %407 ], [ %525, %522 ], [ %533, %530 ], [ %555, %550 ], [ %389, %461 ], [ %389, %457 ]
  %560 = icmp ne i32 %558, 0
  %561 = zext i1 %560 to i32
  %562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %563 = extractvalue %dx.types.CBufRet.f32 %562, 2
  %564 = call float @dx.op.binary.f32(i32 35, float %557, float %563)  ; FMax(a,b)
  %565 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %564)  ; FMin(a,b)
  br label %566

; <label>:566                                     ; preds = %556, %366
  %567 = phi i32 [ %561, %556 ], [ 0, %366 ]
  %568 = phi float [ %565, %556 ], [ 0x47EFFFFFE0000000, %366 ]
  %569 = phi i32 [ %559, %556 ], [ %389, %366 ]
  %570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %571 = extractvalue %dx.types.CBufRet.f32 %570, 0
  %572 = extractvalue %dx.types.CBufRet.f32 %570, 1
  %573 = fsub fast float %384, %571
  %574 = fsub fast float %385, %572
  %575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %576 = extractvalue %dx.types.CBufRet.f32 %575, 2
  %577 = extractvalue %dx.types.CBufRet.f32 %575, 3
  %578 = fmul fast float %573, %576
  %579 = fmul fast float %574, %577
  %580 = call float @dx.op.binary.f32(i32 36, float %578, float %579)  ; FMin(a,b)
  %581 = fcmp fast olt float %580, 0.000000e+00
  %582 = call float @dx.op.binary.f32(i32 35, float %578, float %579)  ; FMax(a,b)
  %583 = fcmp fast ogt float %582, 1.000000e+00
  %584 = or i1 %581, %583
  %585 = extractvalue %dx.types.CBufRet.f32 %570, 2
  %586 = fcmp fast olt float %386, %585
  %587 = or i1 %584, %586
  %588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %589 = extractvalue %dx.types.CBufRet.f32 %588, 3
  %590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %591 = extractvalue %dx.types.CBufRet.f32 %590, 0
  %592 = fadd fast float %591, %589
  %593 = fcmp fast ogt float %386, %592
  %594 = or i1 %587, %593
  br i1 %594, label %595, label %624, !dx.controlflow.hints !67

; <label>:595                                     ; preds = %566
  %596 = extractvalue %dx.types.CBufRet.f32 %575, 0
  %597 = extractvalue %dx.types.CBufRet.f32 %575, 1
  %598 = fsub fast float %571, %384
  %599 = fmul fast float %598, %341
  %600 = fadd fast float %598, %596
  %601 = fmul fast float %600, %341
  %602 = call float @dx.op.binary.f32(i32 36, float %599, float %601)  ; FMin(a,b)
  %603 = call float @dx.op.binary.f32(i32 35, float %599, float %601)  ; FMax(a,b)
  %604 = fsub fast float %572, %385
  %605 = fmul fast float %604, %342
  %606 = fadd fast float %604, %597
  %607 = fmul fast float %606, %342
  %608 = call float @dx.op.binary.f32(i32 36, float %605, float %607)  ; FMin(a,b)
  %609 = call float @dx.op.binary.f32(i32 35, float %602, float %608)  ; FMax(a,b)
  %610 = call float @dx.op.binary.f32(i32 35, float %605, float %607)  ; FMax(a,b)
  %611 = call float @dx.op.binary.f32(i32 36, float %603, float %610)  ; FMin(a,b)
  %612 = fsub fast float %585, %386
  %613 = fmul fast float %612, %343
  %614 = fsub fast float %589, %386
  %615 = fadd fast float %614, %591
  %616 = fmul fast float %615, %343
  %617 = call float @dx.op.binary.f32(i32 36, float %613, float %616)  ; FMin(a,b)
  %618 = call float @dx.op.binary.f32(i32 35, float %609, float %617)  ; FMax(a,b)
  %619 = call float @dx.op.binary.f32(i32 35, float %613, float %616)  ; FMax(a,b)
  %620 = call float @dx.op.binary.f32(i32 36, float %611, float %619)  ; FMin(a,b)
  %621 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %618)  ; FMax(a,b)
  %622 = fcmp fast oge float %620, %621
  %623 = select i1 %622, float %618, float 1.000000e+07
  br label %670

; <label>:624                                     ; preds = %566
  %625 = fsub fast float 1.000000e+00, %579
  %626 = icmp eq i32 %388, 0
  br i1 %626, label %655, label %627

; <label>:627                                     ; preds = %624
  br label %628

; <label>:628                                     ; preds = %651, %627
  %629 = phi i32 [ %652, %651 ], [ %388, %627 ]
  %630 = uitofp i32 %629 to float
  %631 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %28, float %578, float %625, float undef, float undef, i32 0, i32 0, i32 undef, float %630)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %632 = extractvalue %dx.types.ResRet.f32 %631, 0
  %633 = extractvalue %dx.types.ResRet.f32 %631, 1
  %634 = extractvalue %dx.types.ResRet.f32 %631, 2
  %635 = fcmp fast oeq float %632, 0.000000e+00
  %636 = fcmp ule float %386, %634
  %637 = fcmp uge float %386, %633
  %638 = or i1 %637, %636
  %639 = or i1 %635, %638
  br i1 %639, label %640, label %651, !dx.controlflow.hints !68

; <label>:640                                     ; preds = %628
  %641 = extractvalue %dx.types.ResRet.f32 %631, 3
  %642 = extractvalue %dx.types.CBufRet.f32 %575, 0
  %643 = and i32 %629, 31
  %644 = lshr i32 1024, %643
  %645 = uitofp i32 %644 to float
  %646 = fdiv fast float %642, %645
  %647 = add i32 %629, 1
  %648 = uitofp i32 %647 to float
  %649 = call float @dx.op.binary.f32(i32 36, float 1.000000e+01, float %648)  ; FMin(a,b)
  %650 = fptosi float %649 to i32
  br label %670

; <label>:651                                     ; preds = %628
  %652 = add i32 %629, -1
  %653 = icmp eq i32 %652, 0
  br i1 %653, label %654, label %628, !llvm.loop !69

; <label>:654                                     ; preds = %651
  br label %655

; <label>:655                                     ; preds = %654, %624
  %656 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %27, float %578, float %625, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %657 = extractvalue %dx.types.ResRet.f32 %656, 0
  %658 = extractvalue %dx.types.ResRet.f32 %656, 1
  %659 = extractvalue %dx.types.ResRet.f32 %656, 2
  %660 = extractvalue %dx.types.ResRet.f32 %656, 3
  %661 = extractvalue %dx.types.CBufRet.f32 %575, 0
  %662 = fmul fast float %661, 9.765625e-04
  %663 = fcmp fast oeq float %657, 0.000000e+00
  %664 = fcmp ule float %386, %659
  %665 = fcmp uge float %386, %658
  %666 = or i1 %665, %664
  %667 = or i1 %663, %666
  %668 = zext i1 %667 to i32
  %669 = xor i32 %668, 1
  br label %670

; <label>:670                                     ; preds = %655, %640, %595
  %671 = phi float [ %623, %595 ], [ %646, %640 ], [ %662, %655 ]
  %672 = phi float [ %375, %595 ], [ %632, %640 ], [ %657, %655 ]
  %673 = phi float [ %376, %595 ], [ %633, %640 ], [ %658, %655 ]
  %674 = phi float [ %377, %595 ], [ %634, %640 ], [ %659, %655 ]
  %675 = phi float [ %378, %595 ], [ %641, %640 ], [ %660, %655 ]
  %676 = phi i32 [ 0, %595 ], [ 0, %640 ], [ %669, %655 ]
  %677 = phi i32 [ 10, %595 ], [ %650, %640 ], [ 1, %655 ]
  %678 = icmp eq i32 %676, 0
  %679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %680 = extractvalue %dx.types.CBufRet.f32 %679, 2
  %681 = call float @dx.op.binary.f32(i32 35, float %671, float %680)  ; FMax(a,b)
  %682 = call float @dx.op.binary.f32(i32 36, float %568, float %681)  ; FMin(a,b)
  %683 = icmp eq i32 %236, 0
  br i1 %683, label %696, label %684, !dx.controlflow.hints !71

; <label>:684                                     ; preds = %670
  %685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %686 = extractvalue %dx.types.CBufRet.f32 %685, 3
  %687 = extractvalue %dx.types.CBufRet.f32 %685, 2
  %688 = fmul fast float %686, %387
  %689 = fdiv fast float %688, %344
  %690 = fadd fast float %689, 1.000000e+00
  %691 = call float @dx.op.unary.f32(i32 23, float %690)  ; Log(value)
  %692 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %691)  ; FMin(a,b)
  %693 = fmul fast float %687, %344
  %694 = fmul fast float %693, %692
  %695 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %694)  ; FMin(a,b)
  br label %696

; <label>:696                                     ; preds = %684, %670
  %697 = phi float [ %695, %684 ], [ 0x47EFFFFFE0000000, %670 ]
  %698 = icmp eq i32 %296, 0
  br i1 %698, label %754, label %699, !dx.controlflow.hints !72

; <label>:699                                     ; preds = %696
  %700 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %701 = extractvalue %dx.types.CBufRet.f32 %700, 0
  %702 = extractvalue %dx.types.CBufRet.f32 %700, 1
  %703 = extractvalue %dx.types.CBufRet.f32 %700, 2
  %704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %705 = extractvalue %dx.types.CBufRet.f32 %704, 0
  %706 = extractvalue %dx.types.CBufRet.f32 %704, 1
  %707 = extractvalue %dx.types.CBufRet.f32 %704, 2
  %708 = fsub fast float %384, %705
  %709 = fsub fast float %385, %706
  %710 = fsub fast float %386, %707
  %711 = fmul fast float %708, %701
  %712 = fmul fast float %709, %702
  %713 = fmul fast float %710, %703
  %714 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %715 = extractvalue %dx.types.CBufRet.i32 %714, 3
  %716 = icmp eq i32 %715, 0
  br i1 %716, label %720, label %717, !dx.controlflow.hints !73

; <label>:717                                     ; preds = %699
  %718 = call float @dx.op.unary.f32(i32 22, float %711)  ; Frc(value)
  %719 = call float @dx.op.unary.f32(i32 22, float %712)  ; Frc(value)
  br label %720

; <label>:720                                     ; preds = %717, %699
  %721 = phi float [ %718, %717 ], [ %711, %699 ]
  %722 = phi float [ %719, %717 ], [ %712, %699 ]
  %723 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %25, float %721, float %722, float %713, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %724 = extractvalue %dx.types.ResRet.f32 %723, 0
  %725 = fmul fast float %724, 2.000000e+00
  %726 = fadd fast float %725, -1.000000e+00
  %727 = extractvalue %dx.types.CBufRet.f32 %700, 3
  %728 = fmul fast float %726, %727
  %729 = fcmp fast olt float %728, 0.000000e+00
  %730 = fcmp fast oge float %713, 0.000000e+00
  %731 = fcmp fast ole float %713, 1.000000e+00
  br i1 %716, label %734, label %732, !dx.controlflow.hints !74

; <label>:732                                     ; preds = %720
  %733 = and i1 %730, %731
  br label %744

; <label>:734                                     ; preds = %720
  %735 = fcmp fast oge float %711, 0.000000e+00
  %736 = fcmp fast oge float %712, 0.000000e+00
  %737 = and i1 %735, %736
  %738 = and i1 %730, %737
  %739 = fcmp fast ole float %711, 1.000000e+00
  %740 = fcmp fast ole float %712, 1.000000e+00
  %741 = and i1 %739, %740
  %742 = and i1 %731, %741
  %743 = and i1 %738, %742
  br label %744

; <label>:744                                     ; preds = %734, %732
  %745 = phi i1 [ %733, %732 ], [ %743, %734 ]
  %746 = and i1 %729, %745
  %747 = call float @dx.op.unary.f32(i32 6, float %728)  ; FAbs(value)
  %748 = extractvalue %dx.types.CBufRet.f32 %679, 1
  %749 = extractvalue %dx.types.CBufRet.f32 %679, 0
  %750 = call float @dx.op.binary.f32(i32 35, float %747, float %749)  ; FMax(a,b)
  %751 = select i1 %746, float %748, float %750
  %752 = zext i1 %746 to i32
  %753 = call float @dx.op.binary.f32(i32 36, float %682, float %751)  ; FMin(a,b)
  br label %754

; <label>:754                                     ; preds = %744, %696
  %755 = phi i32 [ %752, %744 ], [ 0, %696 ]
  %756 = phi float [ %753, %744 ], [ %682, %696 ]
  %757 = icmp eq i32 %338, 0
  br i1 %757, label %929, label %758, !dx.controlflow.hints !75

; <label>:758                                     ; preds = %754
  %759 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %760 = extractvalue %dx.types.CBufRet.i32 %759, 1
  %761 = and i32 %760, 1
  %762 = icmp eq i32 %761, 0
  br i1 %762, label %763, label %920, !dx.controlflow.hints !76

; <label>:763                                     ; preds = %758
  %764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %765 = extractvalue %dx.types.CBufRet.f32 %764, 2
  %766 = extractvalue %dx.types.CBufRet.f32 %764, 3
  %767 = fmul fast float %765, %384
  %768 = fmul fast float %766, %385
  %769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %770 = extractvalue %dx.types.CBufRet.f32 %769, 0
  %771 = extractvalue %dx.types.CBufRet.f32 %769, 1
  %772 = fadd fast float %767, %770
  %773 = fadd fast float %768, %771
  %774 = call float @dx.op.unary.f32(i32 7, float %772)  ; Saturate(value)
  %775 = call float @dx.op.unary.f32(i32 7, float %773)  ; Saturate(value)
  %776 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %27, float %774, float %775, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %777 = extractvalue %dx.types.ResRet.f32 %776, 0
  %778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %779 = extractvalue %dx.types.CBufRet.f32 %778, 0
  %780 = fmul fast float %779, %777
  %781 = fsub fast float %772, %774
  %782 = fsub fast float %773, %775
  %783 = extractvalue %dx.types.CBufRet.f32 %764, 0
  %784 = extractvalue %dx.types.CBufRet.f32 %764, 1
  %785 = fmul fast float %783, %781
  %786 = fmul fast float %784, %782
  %787 = fmul fast float %785, %785
  %788 = fmul fast float %786, %786
  %789 = fadd fast float %787, %788
  %790 = call float @dx.op.unary.f32(i32 24, float %789)  ; Sqrt(value)
  %791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %792 = extractvalue %dx.types.CBufRet.f32 %791, 3
  %793 = fmul fast float %792, %790
  %794 = call float @dx.op.unary.f32(i32 7, float %793)  ; Saturate(value)
  %795 = extractvalue %dx.types.CBufRet.f32 %791, 2
  %796 = fsub fast float %795, %780
  %797 = fmul fast float %796, %794
  %798 = extractvalue %dx.types.CBufRet.f32 %778, 1
  %799 = fsub fast float %386, %780
  %800 = fsub fast float %799, %798
  %801 = fsub fast float %800, %797
  %802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %803 = extractvalue %dx.types.CBufRet.f32 %802, 2
  %804 = fsub fast float %801, %803
  %805 = fcmp fast olt float %804, 0.000000e+00
  %806 = call float @dx.op.unary.f32(i32 6, float %804)  ; FAbs(value)
  %807 = extractvalue %dx.types.CBufRet.i32 %759, 0
  %808 = icmp eq i32 %807, 0
  br i1 %808, label %862, label %809

; <label>:809                                     ; preds = %763
  br label %810

; <label>:810                                     ; preds = %849, %809
  %811 = phi i32 [ %855, %849 ], [ 1, %809 ]
  %812 = phi float [ %857, %849 ], [ 0x47EFFFFFE0000000, %809 ]
  %813 = phi i32 [ %858, %849 ], [ 0, %809 ]
  %814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %815 = extractvalue %dx.types.CBufRet.f32 %814, 1
  %816 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %817 = extractvalue %dx.types.CBufRet.i32 %816, 1
  %818 = and i32 %817, 8
  %819 = icmp eq i32 %818, 0
  %820 = fcmp fast ogt float %815, %801
  %821 = or i1 %820, %819
  %822 = add i32 %813, 171
  %823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 %822)  ; CBufferLoadLegacy(handle,regIndex)
  %824 = extractvalue %dx.types.CBufRet.f32 %823, 0
  %825 = extractvalue %dx.types.CBufRet.f32 %823, 1
  %826 = extractvalue %dx.types.CBufRet.f32 %823, 2
  br i1 %821, label %827, label %833, !dx.controlflow.hints !77

; <label>:827                                     ; preds = %810
  %828 = fsub fast float %824, %384
  %829 = fsub fast float %825, %385
  %830 = fmul fast float %828, %828
  %831 = fmul fast float %829, %829
  %832 = fadd fast float %830, %831
  br label %849

; <label>:833                                     ; preds = %810
  %834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %835 = extractvalue %dx.types.CBufRet.f32 %834, 2
  %836 = extractvalue %dx.types.CBufRet.f32 %814, 2
  %837 = fmul fast float %836, %835
  %838 = fsub fast float %837, %815
  %839 = fdiv fast float %826, %838
  %840 = fsub fast float %384, %824
  %841 = fsub fast float %385, %825
  %842 = fsub fast float %801, %815
  %843 = fmul fast float %839, %842
  %844 = fmul fast float %840, %840
  %845 = fmul fast float %841, %841
  %846 = fadd fast float %844, %845
  %847 = fmul fast float %843, %843
  %848 = fadd fast float %846, %847
  br label %849

; <label>:849                                     ; preds = %833, %827
  %850 = phi float [ %832, %827 ], [ %848, %833 ]
  %851 = call float @dx.op.unary.f32(i32 24, float %850)  ; Sqrt(value)
  %852 = fsub float %826, %851
  %853 = fcmp fast olt float %852, 0.000000e+00
  %854 = zext i1 %853 to i32
  %855 = and i32 %854, %811
  %856 = call float @dx.op.unary.f32(i32 6, float %852)  ; FAbs(value)
  %857 = call float @dx.op.binary.f32(i32 36, float %812, float %856)  ; FMin(a,b)
  %858 = add i32 %813, 1
  %859 = extractvalue %dx.types.CBufRet.i32 %816, 0
  %860 = icmp ult i32 %858, %859
  br i1 %860, label %810, label %861

; <label>:861                                     ; preds = %849
  br label %862

; <label>:862                                     ; preds = %861, %763
  %863 = phi i32 [ 1, %763 ], [ %855, %861 ]
  %864 = phi float [ 0x47EFFFFFE0000000, %763 ], [ %857, %861 ]
  br label %865

; <label>:865                                     ; preds = %865, %862
  %866 = phi i32 [ %863, %862 ], [ %905, %865 ]
  %867 = phi float [ 0x47EFFFFFE0000000, %862 ], [ %907, %865 ]
  %868 = phi i32 [ 0, %862 ], [ %908, %865 ]
  %869 = add nuw nsw i32 %868, 191
  %870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 %869)  ; CBufferLoadLegacy(handle,regIndex)
  %871 = extractvalue %dx.types.CBufRet.f32 %870, 0
  %872 = extractvalue %dx.types.CBufRet.f32 %870, 1
  %873 = extractvalue %dx.types.CBufRet.f32 %870, 2
  %874 = add nuw nsw i32 %868, 195
  %875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 %874)  ; CBufferLoadLegacy(handle,regIndex)
  %876 = extractvalue %dx.types.CBufRet.f32 %875, 0
  %877 = extractvalue %dx.types.CBufRet.f32 %875, 1
  %878 = extractvalue %dx.types.CBufRet.f32 %875, 2
  %879 = fsub fast float %384, %871
  %880 = fsub fast float %385, %872
  %881 = fsub fast float %801, %873
  %882 = call float @dx.op.unary.f32(i32 6, float %879)  ; FAbs(value)
  %883 = call float @dx.op.unary.f32(i32 6, float %880)  ; FAbs(value)
  %884 = call float @dx.op.unary.f32(i32 6, float %881)  ; FAbs(value)
  %885 = fsub fast float %882, %876
  %886 = fsub fast float %883, %877
  %887 = fsub fast float %884, %878
  %888 = call float @dx.op.binary.f32(i32 35, float %885, float 0.000000e+00)  ; FMax(a,b)
  %889 = call float @dx.op.binary.f32(i32 35, float %886, float 0.000000e+00)  ; FMax(a,b)
  %890 = call float @dx.op.binary.f32(i32 35, float %887, float 0.000000e+00)  ; FMax(a,b)
  %891 = fmul fast float %888, %888
  %892 = fmul fast float %889, %889
  %893 = fadd fast float %892, %891
  %894 = fmul fast float %890, %890
  %895 = fadd fast float %893, %894
  %896 = call float @dx.op.unary.f32(i32 24, float %895)  ; Sqrt(value)
  %897 = call float @dx.op.binary.f32(i32 35, float %886, float %887)  ; FMax(a,b)
  %898 = call float @dx.op.binary.f32(i32 35, float %885, float %897)  ; FMax(a,b)
  %899 = call float @dx.op.binary.f32(i32 36, float %898, float 0.000000e+00)  ; FMin(a,b)
  %900 = fadd fast float %899, %896
  %901 = fsub fast float -0.000000e+00, %900
  %902 = fcmp ogt float %900, -0.000000e+00
  %903 = icmp ne i32 %866, 0
  %904 = and i1 %903, %902
  %905 = zext i1 %904 to i32
  %906 = call float @dx.op.unary.f32(i32 6, float %901)  ; FAbs(value)
  %907 = call float @dx.op.binary.f32(i32 36, float %867, float %906)  ; FMin(a,b)
  %908 = add nuw nsw i32 %868, 1
  %909 = icmp eq i32 %908, 4
  br i1 %909, label %910, label %865

; <label>:910                                     ; preds = %865
  %911 = call float @dx.op.binary.f32(i32 36, float %806, float %907)  ; FMin(a,b)
  %912 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %913 = extractvalue %dx.types.CBufRet.i32 %912, 1
  %914 = and i32 %913, 2
  %915 = icmp ne i32 %914, 0
  %916 = xor i1 %904, %915
  %917 = call float @dx.op.binary.f32(i32 36, float %911, float %864)  ; FMin(a,b)
  %918 = and i1 %916, %805
  %919 = zext i1 %918 to i32
  br label %920

; <label>:920                                     ; preds = %910, %758
  %921 = phi i32 [ %373, %758 ], [ %919, %910 ]
  %922 = phi float [ 0.000000e+00, %758 ], [ %917, %910 ]
  %923 = phi float [ %386, %758 ], [ %801, %910 ]
  %924 = icmp ne i32 %921, 0
  %925 = extractvalue %dx.types.CBufRet.f32 %679, 3
  %926 = call float @dx.op.binary.f32(i32 35, float %922, float %925)  ; FMax(a,b)
  %927 = call float @dx.op.binary.f32(i32 36, float %697, float %926)  ; FMin(a,b)
  %928 = zext i1 %924 to i32
  br label %929

; <label>:929                                     ; preds = %920, %754
  %930 = phi i32 [ %928, %920 ], [ 0, %754 ]
  %931 = phi i32 [ %921, %920 ], [ %373, %754 ]
  %932 = phi float [ %923, %920 ], [ %374, %754 ]
  %933 = phi float [ %927, %920 ], [ %697, %754 ]
  %934 = extractvalue %dx.types.CBufRet.f32 %398, 2
  %935 = fmul fast float %934, %387
  %936 = call float @dx.op.unary.f32(i32 23, float %935)  ; Log(value)
  %937 = fmul fast float %936, 0x3FE62E4300000000
  %938 = call float @dx.op.binary.f32(i32 35, float %937, float 1.000000e+00)  ; FMax(a,b)
  %939 = fmul fast float %938, %933
  %940 = call float @dx.op.binary.f32(i32 36, float %939, float %756)  ; FMin(a,b)
  %941 = call float @dx.op.binary.f32(i32 35, float %940, float %399)  ; FMax(a,b)
  %942 = fsub fast float %344, %387
  %943 = fadd fast float %942, 0x3F1A36E2E0000000
  %944 = call float @dx.op.binary.f32(i32 36, float %943, float %941)  ; FMin(a,b)
  %945 = icmp eq i32 %567, 0
  br i1 %945, label %1051, label %946, !dx.controlflow.hints !78

; <label>:946                                     ; preds = %929
  %947 = fcmp fast olt float %943, %941
  %948 = fmul fast float %122, %65
  %949 = fmul fast float %948, %944
  %950 = fadd fast float %949, %386
  %951 = fmul fast float %122, %66
  %952 = fmul fast float %951, %944
  %953 = fadd fast float %952, %386
  %954 = fmul fast float %122, %67
  %955 = fmul fast float %954, %944
  %956 = fadd fast float %955, %386
  br i1 %947, label %957, label %962, !dx.controlflow.hints !79

; <label>:957                                     ; preds = %946
  %958 = fmul fast float %944, %120
  %959 = fmul fast float %944, %121
  %960 = fadd fast float %958, %384
  %961 = fadd fast float %959, %385
  br label %962

; <label>:962                                     ; preds = %957, %946
  %963 = phi float [ %960, %957 ], [ %384, %946 ]
  %964 = phi float [ %961, %957 ], [ %385, %946 ]
  %965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %966 = extractvalue %dx.types.CBufRet.f32 %965, 0
  %967 = extractvalue %dx.types.CBufRet.f32 %965, 1
  %968 = fsub fast float %963, %966
  %969 = fsub fast float %964, %967
  %970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %971 = extractvalue %dx.types.CBufRet.f32 %970, 0
  %972 = extractvalue %dx.types.CBufRet.f32 %970, 1
  %973 = fmul fast float %968, %971
  %974 = fmul fast float %969, %972
  %975 = fsub fast float 1.000000e+00, %974
  %976 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %977 = extractvalue %dx.types.CBufRet.i32 %976, 3
  %978 = icmp eq i32 %977, 0
  br i1 %978, label %985, label %979, !dx.controlflow.hints !62

; <label>:979                                     ; preds = %962
  %980 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %973, float %975, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %981 = extractvalue %dx.types.ResRet.f32 %980, 0
  %982 = extractvalue %dx.types.ResRet.f32 %980, 1
  %983 = extractvalue %dx.types.ResRet.f32 %980, 2
  %984 = extractvalue %dx.types.ResRet.f32 %980, 3
  br label %991

; <label>:985                                     ; preds = %962
  %986 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %27, float %973, float %975, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %987 = extractvalue %dx.types.ResRet.f32 %986, 0
  %988 = extractvalue %dx.types.ResRet.f32 %986, 1
  %989 = extractvalue %dx.types.ResRet.f32 %986, 2
  %990 = extractvalue %dx.types.ResRet.f32 %986, 3
  br label %991

; <label>:991                                     ; preds = %985, %979
  %992 = phi float [ %981, %979 ], [ %987, %985 ]
  %993 = phi float [ %982, %979 ], [ %988, %985 ]
  %994 = phi float [ %983, %979 ], [ %989, %985 ]
  %995 = phi float [ %984, %979 ], [ %990, %985 ]
  %996 = extractvalue %dx.types.CBufRet.f32 %970, 3
  %997 = fmul fast float %996, %993
  %998 = fmul fast float %997, %992
  %999 = fsub fast float %997, %998
  %1000 = fcmp fast ole float %999, 0.000000e+00
  %1001 = extractvalue %dx.types.CBufRet.f32 %965, 2
  %1002 = fadd fast float %998, %1001
  %1003 = fmul fast float %996, %994
  %1004 = fadd fast float %1003, %1001
  %1005 = fdiv fast float 1.000000e+00, %999
  %1006 = select i1 %1000, float 1.000000e+06, float %1005
  %1007 = fsub fast float %950, %1002
  %1008 = fmul fast float %1006, %1007
  %1009 = call float @dx.op.unary.f32(i32 7, float %1008)  ; Saturate(value)
  %1010 = extractvalue %dx.types.CBufRet.f32 %970, 2
  %1011 = fmul fast float %1010, %1009
  %1012 = fsub fast float %1010, %1011
  %1013 = fcmp fast olt float %950, %1004
  %1014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %1015 = extractvalue %dx.types.CBufRet.f32 %1014, 3
  %1016 = select i1 %1013, float %1015, float 1.000000e+00
  %1017 = fmul fast float %1012, %1016
  %1018 = fsub fast float %953, %1002
  %1019 = fmul fast float %1006, %1018
  %1020 = call float @dx.op.unary.f32(i32 7, float %1019)  ; Saturate(value)
  %1021 = fmul fast float %1010, %1020
  %1022 = fsub fast float %1010, %1021
  %1023 = fcmp fast olt float %953, %1004
  %1024 = select i1 %1023, float %1015, float 1.000000e+00
  %1025 = fmul fast float %1022, %1024
  %1026 = fadd fast float %1025, %1017
  %1027 = fsub fast float %956, %1002
  %1028 = fmul fast float %1006, %1027
  %1029 = call float @dx.op.unary.f32(i32 7, float %1028)  ; Saturate(value)
  %1030 = fmul fast float %1010, %1029
  %1031 = fsub fast float %1010, %1030
  %1032 = fcmp fast olt float %956, %1004
  %1033 = select i1 %1032, float %1015, float 1.000000e+00
  %1034 = fmul fast float %1031, %1033
  %1035 = fadd fast float %1026, %1034
  %1036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1037 = extractvalue %dx.types.CBufRet.f32 %1036, 2
  %1038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %1039 = extractvalue %dx.types.CBufRet.f32 %1038, 0
  %1040 = extractvalue %dx.types.CBufRet.f32 %1038, 1
  %1041 = extractvalue %dx.types.CBufRet.f32 %1038, 2
  %1042 = fmul fast float %944, 0x3FD5555560000000
  %1043 = fmul fast float %1042, %995
  %1044 = fmul fast float %1043, %1037
  %1045 = fmul fast float %1044, %1035
  %1046 = extractvalue %dx.types.CBufRet.f32 %1014, 0
  %1047 = fmul fast float %1045, %1039
  %1048 = fmul fast float %1045, %1040
  %1049 = fmul fast float %1045, %1041
  %1050 = fmul fast float %1045, %1046
  br label %1051

; <label>:1051                                    ; preds = %991, %929
  %1052 = phi float [ %1045, %991 ], [ 0.000000e+00, %929 ]
  %1053 = phi float [ %1050, %991 ], [ 0.000000e+00, %929 ]
  %1054 = phi float [ %1047, %991 ], [ 0.000000e+00, %929 ]
  %1055 = phi float [ %1048, %991 ], [ 0.000000e+00, %929 ]
  %1056 = phi float [ %1049, %991 ], [ 0.000000e+00, %929 ]
  br i1 %683, label %1116, label %1057, !dx.controlflow.hints !80

; <label>:1057                                    ; preds = %1051
  %1058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %1059 = extractvalue %dx.types.CBufRet.f32 %1058, 0
  %1060 = fsub fast float %1059, %386
  %1061 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %397, float %396, float %1060)  ; Dot3(ax,ay,az,bx,by,bz)
  %1062 = fmul fast float %219, %1061
  %1063 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1062)  ; FMax(a,b)
  %1064 = fcmp fast olt float %122, 0.000000e+00
  %1065 = call float @dx.op.binary.f32(i32 36, float %944, float %1063)  ; FMin(a,b)
  br i1 %1064, label %1067, label %1066, !dx.controlflow.hints !81

; <label>:1066                                    ; preds = %1057
  br label %1067

; <label>:1067                                    ; preds = %1066, %1057
  %1068 = phi float [ 0.000000e+00, %1066 ], [ %1065, %1057 ]
  %1069 = phi float [ %1065, %1066 ], [ %944, %1057 ]
  %1070 = phi float [ %1065, %1066 ], [ 0.000000e+00, %1057 ]
  %1071 = phi float [ %944, %1066 ], [ %1065, %1057 ]
  %1072 = fsub fast float %1069, %1068
  %1073 = extractvalue %dx.types.CBufRet.f32 %1058, 1
  %1074 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %1073)  ; FMin(a,b)
  %1075 = fsub fast float %386, %1059
  %1076 = fmul fast float %1074, 0x3FF7154760000000
  %1077 = fmul fast float %1076, %1075
  %1078 = call float @dx.op.unary.f32(i32 21, float %1077)  ; Exp(value)
  %1079 = fmul fast float %122, 0x3FF7154760000000
  %1080 = fmul fast float %1079, %1071
  %1081 = fmul fast float %1080, %1074
  %1082 = call float @dx.op.unary.f32(i32 21, float %1081)  ; Exp(value)
  %1083 = fmul fast float %1079, %1070
  %1084 = fmul fast float %1083, %1074
  %1085 = call float @dx.op.unary.f32(i32 21, float %1084)  ; Exp(value)
  %1086 = fsub fast float %1082, %1085
  %1087 = fmul fast float %1086, %1078
  %1088 = fmul fast float %1074, %122
  %1089 = fdiv fast float %1087, %1088
  %1090 = fadd fast float %1072, %1089
  %1091 = call float @dx.op.unary.f32(i32 6, float %122)  ; FAbs(value)
  %1092 = fcmp fast olt float %1091, 0x3F0FFB4800000000
  %1093 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1075)  ; FMax(a,b)
  %1094 = fmul fast float %1093, 0x3FF7154760000000
  %1095 = fmul fast float %1094, %1073
  %1096 = call float @dx.op.unary.f32(i32 21, float %1095)  ; Exp(value)
  %1097 = fmul fast float %1096, %944
  %1098 = select i1 %1092, float %1097, float %1090
  %1099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %1100 = extractvalue %dx.types.CBufRet.f32 %1099, 1
  %1101 = fmul fast float %1098, %1100
  %1102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %1103 = extractvalue %dx.types.CBufRet.f32 %1102, 0
  %1104 = extractvalue %dx.types.CBufRet.f32 %1102, 1
  %1105 = extractvalue %dx.types.CBufRet.f32 %1102, 2
  %1106 = extractvalue %dx.types.CBufRet.f32 %1099, 2
  %1107 = fmul fast float %1103, %1101
  %1108 = fmul fast float %1104, %1101
  %1109 = fmul fast float %1105, %1101
  %1110 = fadd fast float %1107, %1054
  %1111 = fadd fast float %1108, %1055
  %1112 = fadd fast float %1109, %1056
  %1113 = fmul fast float %1106, %1101
  %1114 = fadd fast float %1113, %1053
  %1115 = fadd fast float %1101, %1052
  br label %1116

; <label>:1116                                    ; preds = %1067, %1051
  %1117 = phi float [ %1115, %1067 ], [ %1052, %1051 ]
  %1118 = phi float [ %1114, %1067 ], [ %1053, %1051 ]
  %1119 = phi float [ %1110, %1067 ], [ %1054, %1051 ]
  %1120 = phi float [ %1111, %1067 ], [ %1055, %1051 ]
  %1121 = phi float [ %1112, %1067 ], [ %1056, %1051 ]
  %1122 = icmp eq i32 %755, 0
  br i1 %1122, label %1317, label %1123, !dx.controlflow.hints !82

; <label>:1123                                    ; preds = %1116
  %1124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1125 = extractvalue %dx.types.CBufRet.f32 %1124, 3
  %1126 = fmul fast float %1125, %387
  %1127 = fcmp fast oeq float %1126, 0.000000e+00
  br i1 %1127, label %1142, label %1128, !dx.controlflow.hints !83

; <label>:1128                                    ; preds = %1123
  %1129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %1130 = extractvalue %dx.types.CBufRet.f32 %1129, 3
  %1131 = fmul fast float %1130, %1126
  %1132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %1133 = extractvalue %dx.types.CBufRet.f32 %1132, 0
  %1134 = extractvalue %dx.types.CBufRet.f32 %1132, 1
  %1135 = extractvalue %dx.types.CBufRet.f32 %1132, 2
  %1136 = fmul fast float %1133, %1131
  %1137 = fmul fast float %1134, %1131
  %1138 = fmul fast float %1135, %1131
  %1139 = call float @dx.op.unary.f32(i32 23, float %1136)  ; Log(value)
  %1140 = call float @dx.op.unary.f32(i32 23, float %1137)  ; Log(value)
  %1141 = call float @dx.op.unary.f32(i32 23, float %1138)  ; Log(value)
  br label %1142

; <label>:1142                                    ; preds = %1128, %1123
  %1143 = phi float [ %1139, %1128 ], [ 0.000000e+00, %1123 ]
  %1144 = phi float [ %1140, %1128 ], [ 0.000000e+00, %1123 ]
  %1145 = phi float [ %1141, %1128 ], [ 0.000000e+00, %1123 ]
  %1146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %1147 = extractvalue %dx.types.CBufRet.f32 %1146, 0
  %1148 = extractvalue %dx.types.CBufRet.f32 %1146, 1
  %1149 = extractvalue %dx.types.CBufRet.f32 %1146, 2
  %1150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %1151 = extractvalue %dx.types.CBufRet.f32 %1150, 0
  %1152 = extractvalue %dx.types.CBufRet.f32 %1150, 1
  %1153 = extractvalue %dx.types.CBufRet.f32 %1150, 2
  %1154 = fsub fast float %384, %1151
  %1155 = fsub fast float %385, %1152
  %1156 = fsub fast float %386, %1153
  %1157 = fmul fast float %1154, %1147
  %1158 = fmul fast float %1155, %1148
  %1159 = fmul fast float %1156, %1149
  %1160 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %1161 = extractvalue %dx.types.CBufRet.i32 %1160, 0
  %1162 = extractvalue %dx.types.CBufRet.i32 %1160, 1
  %1163 = uitofp i32 %1161 to float
  %1164 = uitofp i32 %1162 to float
  %1165 = fmul fast float %1157, %1163
  %1166 = fmul fast float %1158, %1164
  %1167 = fadd fast float %1165, 5.000000e-01
  %1168 = fadd fast float %1166, 5.000000e-01
  %1169 = call float @dx.op.unary.f32(i32 22, float %1167)  ; Frc(value)
  %1170 = call float @dx.op.unary.f32(i32 22, float %1168)  ; Frc(value)
  %1171 = call float @dx.op.unary.f32(i32 27, float %1167)  ; Round_ni(value)
  %1172 = call float @dx.op.unary.f32(i32 27, float %1168)  ; Round_ni(value)
  %1173 = fadd fast float %1171, 1.000000e+00
  %1174 = fadd fast float %1172, 1.000000e+00
  %1175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %1176 = extractvalue %dx.types.CBufRet.f32 %1175, 0
  %1177 = extractvalue %dx.types.CBufRet.f32 %1175, 1
  %1178 = fmul fast float %1176, %1173
  %1179 = fmul fast float %1177, %1174
  %1180 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %26, float %1178, float %1179, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1181 = extractvalue %dx.types.ResRet.f32 %1180, 0
  %1182 = extractvalue %dx.types.ResRet.f32 %1180, 1
  %1183 = extractvalue %dx.types.ResRet.f32 %1180, 2
  %1184 = extractvalue %dx.types.ResRet.f32 %1180, 3
  %1185 = extractvalue %dx.types.CBufRet.i32 %1160, 2
  %1186 = extractvalue %dx.types.CBufRet.f32 %1175, 2
  %1187 = uitofp i32 %1185 to float
  %1188 = fadd fast float %1187, -1.000000e+00
  %1189 = fmul fast float %1188, %1181
  %1190 = fmul fast float %1188, %1182
  %1191 = fmul fast float %1188, %1183
  %1192 = fmul fast float %1188, %1184
  %1193 = fadd fast float %1189, 5.000000e-01
  %1194 = fadd fast float %1190, 5.000000e-01
  %1195 = fadd fast float %1191, 5.000000e-01
  %1196 = fadd fast float %1192, 5.000000e-01
  %1197 = fptoui float %1193 to i32
  %1198 = fptoui float %1194 to i32
  %1199 = fptoui float %1195 to i32
  %1200 = fptoui float %1196 to i32
  %1201 = uitofp i32 %1197 to float
  %1202 = uitofp i32 %1198 to float
  %1203 = uitofp i32 %1199 to float
  %1204 = uitofp i32 %1200 to float
  %1205 = fadd fast float %1201, 5.000000e-01
  %1206 = fadd fast float %1202, 5.000000e-01
  %1207 = fadd fast float %1203, 5.000000e-01
  %1208 = fadd fast float %1204, 5.000000e-01
  %1209 = fmul fast float %1205, %1186
  %1210 = fmul fast float %1206, %1186
  %1211 = fmul fast float %1207, %1186
  %1212 = fmul fast float %1208, %1186
  %1213 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %27, float %1209, float %1159, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1214 = extractvalue %dx.types.ResRet.f32 %1213, 0
  %1215 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %27, float %1210, float %1159, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1216 = extractvalue %dx.types.ResRet.f32 %1215, 0
  %1217 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %27, float %1211, float %1159, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1218 = extractvalue %dx.types.ResRet.f32 %1217, 0
  %1219 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %27, float %1212, float %1159, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1220 = extractvalue %dx.types.ResRet.f32 %1219, 0
  %1221 = fsub fast float %1218, %1220
  %1222 = fmul fast float %1221, %1169
  %1223 = fadd fast float %1222, %1220
  %1224 = fsub fast float %1216, %1214
  %1225 = fmul fast float %1224, %1169
  %1226 = fadd fast float %1225, %1214
  %1227 = fsub fast float %1226, %1223
  %1228 = fmul fast float %1227, %1170
  %1229 = fadd fast float %1228, %1223
  %1230 = fcmp fast ogt float %1229, 0.000000e+00
  br i1 %1230, label %1231, label %1299, !dx.controlflow.hints !84

; <label>:1231                                    ; preds = %1142
  %1232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %1233 = extractvalue %dx.types.CBufRet.f32 %1232, 0
  %1234 = extractvalue %dx.types.CBufRet.f32 %1232, 1
  %1235 = extractvalue %dx.types.CBufRet.f32 %1232, 2
  %1236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %1237 = extractvalue %dx.types.CBufRet.f32 %1236, 0
  %1238 = extractvalue %dx.types.CBufRet.f32 %1236, 1
  %1239 = extractvalue %dx.types.CBufRet.f32 %1236, 2
  %1240 = fmul fast float %1155, %1147
  %1241 = fmul fast float %1156, %1147
  %1242 = fadd fast float %1157, %1237
  %1243 = fadd fast float %1240, %1238
  %1244 = fadd fast float %1241, %1239
  %1245 = fmul fast float %1242, %1233
  %1246 = fmul fast float %1243, %1233
  %1247 = fmul fast float %1244, %1233
  %1248 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %24, float %1245, float %1246, float %1247, float undef, i32 0, i32 0, i32 0, float %1143)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1249 = extractvalue %dx.types.ResRet.f32 %1248, 0
  %1250 = fmul fast float %1242, %1234
  %1251 = fmul fast float %1243, %1234
  %1252 = fmul fast float %1244, %1234
  %1253 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %24, float %1250, float %1251, float %1252, float undef, i32 0, i32 0, i32 0, float %1144)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1254 = extractvalue %dx.types.ResRet.f32 %1253, 1
  %1255 = fmul fast float %1242, %1235
  %1256 = fmul fast float %1243, %1235
  %1257 = fmul fast float %1244, %1235
  %1258 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %24, float %1255, float %1256, float %1257, float undef, i32 0, i32 0, i32 0, float %1145)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1259 = extractvalue %dx.types.ResRet.f32 %1258, 2
  %1260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %1261 = extractvalue %dx.types.CBufRet.f32 %1260, 1
  %1262 = fmul fast float %1254, %1249
  %1263 = fmul fast float %1262, %1259
  %1264 = call float @dx.op.unary.f32(i32 23, float %1263)  ; Log(value)
  %1265 = fmul fast float %1264, %1261
  %1266 = call float @dx.op.unary.f32(i32 21, float %1265)  ; Exp(value)
  %1267 = extractvalue %dx.types.CBufRet.f32 %1260, 2
  %1268 = fmul fast float %1229, %1229
  %1269 = fmul fast float %1268, %1266
  %1270 = fmul fast float %1269, %1267
  %1271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %1272 = extractvalue %dx.types.CBufRet.f32 %1271, 3
  %1273 = fmul fast float %1272, %1270
  %1274 = bitcast float %1273 to i32
  %1275 = sitofp i32 %1274 to float
  %1276 = fptosi float %1275 to i32
  %1277 = bitcast i32 %1276 to float
  %1278 = fsub fast float 1.000000e+00, %1270
  %1279 = bitcast float %1278 to i32
  %1280 = sitofp i32 %1279 to float
  %1281 = fptosi float %1280 to i32
  %1282 = bitcast i32 %1281 to float
  %1283 = fadd fast float %1277, %1282
  %1284 = bitcast float %1283 to i32
  %1285 = sub nsw i32 2129859010, %1284
  %1286 = bitcast i32 %1285 to float
  %1287 = fmul fast float %1286, %1277
  %1288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1289 = extractvalue %dx.types.CBufRet.f32 %1288, 2
  %1290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %1291 = extractvalue %dx.types.CBufRet.f32 %1290, 0
  %1292 = fmul fast float %1287, %1291
  %1293 = fadd fast float %1292, 1.000000e+00
  %1294 = bitcast float %1293 to i32
  %1295 = sub nsw i32 2129859010, %1294
  %1296 = bitcast i32 %1295 to float
  %1297 = fmul fast float %1287, %1289
  %1298 = fmul fast float %1297, %1296
  br label %1299

; <label>:1299                                    ; preds = %1231, %1142
  %1300 = phi float [ %1298, %1231 ], [ %1229, %1142 ]
  %1301 = fmul fast float %1300, %944
  %1302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %1303 = extractvalue %dx.types.CBufRet.f32 %1302, 0
  %1304 = extractvalue %dx.types.CBufRet.f32 %1302, 1
  %1305 = extractvalue %dx.types.CBufRet.f32 %1302, 2
  %1306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %1307 = extractvalue %dx.types.CBufRet.f32 %1306, 1
  %1308 = fmul fast float %1303, %1301
  %1309 = fmul fast float %1304, %1301
  %1310 = fmul fast float %1305, %1301
  %1311 = fadd fast float %1308, %1119
  %1312 = fadd fast float %1309, %1120
  %1313 = fadd fast float %1310, %1121
  %1314 = fmul fast float %1307, %1301
  %1315 = fadd fast float %1314, %1118
  %1316 = fadd fast float %1301, %1117
  br label %1317

; <label>:1317                                    ; preds = %1299, %1116
  %1318 = phi float [ %1316, %1299 ], [ %1117, %1116 ]
  %1319 = phi float [ %1315, %1299 ], [ %1118, %1116 ]
  %1320 = phi float [ %1311, %1299 ], [ %1119, %1116 ]
  %1321 = phi float [ %1312, %1299 ], [ %1120, %1116 ]
  %1322 = phi float [ %1313, %1299 ], [ %1121, %1116 ]
  br i1 %678, label %1465, label %1323, !dx.controlflow.hints !85

; <label>:1323                                    ; preds = %1317
  %1324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 411)  ; CBufferLoadLegacy(handle,regIndex)
  %1325 = extractvalue %dx.types.CBufRet.f32 %1324, 0
  %1326 = extractvalue %dx.types.CBufRet.f32 %1324, 1
  %1327 = extractvalue %dx.types.CBufRet.f32 %1324, 2
  %1328 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1329 = extractvalue %dx.types.CBufRet.i32 %1328, 0
  %1330 = icmp ne i32 %1329, 0
  %1331 = zext i1 %1330 to i32
  %1332 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1333 = extractvalue %dx.types.CBufRet.i32 %1332, 0
  %1334 = icmp eq i32 %1333, 0
  br i1 %1334, label %1368, label %1335

; <label>:1335                                    ; preds = %1323
  br label %1336

; <label>:1336                                    ; preds = %1363, %1335
  %1337 = phi i32 [ %1364, %1363 ], [ 0, %1335 ]
  %1338 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1337, i32 0)  ; BufferLoad(srv,index,wot)
  %1339 = extractvalue %dx.types.ResRet.f32 %1338, 0
  %1340 = extractvalue %dx.types.ResRet.f32 %1338, 1
  %1341 = extractvalue %dx.types.ResRet.f32 %1338, 2
  %1342 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1337, i32 16)  ; BufferLoad(srv,index,wot)
  %1343 = extractvalue %dx.types.ResRet.f32 %1342, 0
  %1344 = extractvalue %dx.types.ResRet.f32 %1342, 1
  %1345 = extractvalue %dx.types.ResRet.f32 %1342, 2
  %1346 = fsub fast float %1339, %1343
  %1347 = fsub fast float %1340, %1344
  %1348 = fsub fast float %1341, %1345
  %1349 = fadd fast float %1343, %1339
  %1350 = fadd fast float %1344, %1340
  %1351 = fadd fast float %1345, %1341
  %1352 = fcmp fast olt float %384, %1346
  %1353 = fcmp fast olt float %385, %1347
  %1354 = fcmp fast olt float %386, %1348
  %1355 = or i1 %1352, %1353
  %1356 = or i1 %1354, %1355
  %1357 = fcmp fast ogt float %384, %1349
  %1358 = fcmp fast ogt float %385, %1350
  %1359 = fcmp fast ogt float %386, %1351
  %1360 = or i1 %1357, %1358
  %1361 = or i1 %1359, %1360
  %1362 = or i1 %1356, %1361
  br i1 %1362, label %1363, label %1366, !dx.controlflow.hints !86

; <label>:1363                                    ; preds = %1336
  %1364 = add nuw i32 %1337, 1
  %1365 = icmp ult i32 %1364, %1333
  br i1 %1365, label %1336, label %1366

; <label>:1366                                    ; preds = %1363, %1336
  %1367 = phi i32 [ 255, %1363 ], [ %1337, %1336 ]
  br label %1368

; <label>:1368                                    ; preds = %1366, %1323
  %1369 = phi i32 [ 255, %1323 ], [ %1367, %1366 ]
  %1370 = icmp eq i32 %1369, 255
  br i1 %1370, label %1380, label %1371, !dx.controlflow.hints !87

; <label>:1371                                    ; preds = %1368
  %1372 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1369, i32 32)  ; BufferLoad(srv,index,wot)
  %1373 = extractvalue %dx.types.ResRet.f32 %1372, 0
  %1374 = extractvalue %dx.types.ResRet.f32 %1372, 1
  %1375 = extractvalue %dx.types.ResRet.f32 %1372, 2
  %1376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1369, i32 156)  ; BufferLoad(srv,index,wot)
  %1377 = extractvalue %dx.types.ResRet.i32 %1376, 0
  %1378 = icmp ne i32 %1377, 0
  %1379 = zext i1 %1378 to i32
  br label %1380

; <label>:1380                                    ; preds = %1371, %1368
  %1381 = phi float [ %1373, %1371 ], [ %1325, %1368 ]
  %1382 = phi float [ %1374, %1371 ], [ %1326, %1368 ]
  %1383 = phi float [ %1375, %1371 ], [ %1327, %1368 ]
  %1384 = phi i32 [ %1379, %1371 ], [ %1331, %1368 ]
  %1385 = icmp eq i32 %1384, 0
  br i1 %1385, label %1386, label %1455, !dx.controlflow.hints !88

; <label>:1386                                    ; preds = %1380
  %1387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1388 = extractvalue %dx.types.CBufRet.f32 %1387, 3
  %1389 = extractvalue %dx.types.CBufRet.f32 %588, 0
  %1390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1391 = extractvalue %dx.types.CBufRet.f32 %1390, 2
  %1392 = extractvalue %dx.types.CBufRet.f32 %1390, 3
  br i1 %1370, label %1403, label %1393, !dx.controlflow.hints !89

; <label>:1393                                    ; preds = %1386
  %1394 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1369, i32 60)  ; BufferLoad(srv,index,wot)
  %1395 = extractvalue %dx.types.ResRet.f32 %1394, 0
  %1396 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1369, i32 64)  ; BufferLoad(srv,index,wot)
  %1397 = extractvalue %dx.types.ResRet.f32 %1396, 0
  %1398 = extractvalue %dx.types.ResRet.f32 %1396, 1
  %1399 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1369, i32 72)  ; BufferLoad(srv,index,wot)
  %1400 = extractvalue %dx.types.ResRet.f32 %1399, 0
  %1401 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1369, i32 96)  ; BufferLoad(srv,index,wot)
  %1402 = extractvalue %dx.types.ResRet.f32 %1401, 0
  br label %1403

; <label>:1403                                    ; preds = %1393, %1386
  %1404 = phi float [ %1395, %1393 ], [ %591, %1386 ]
  %1405 = phi float [ %1400, %1393 ], [ %589, %1386 ]
  %1406 = phi float [ %1402, %1393 ], [ %1389, %1386 ]
  %1407 = phi float [ %1397, %1393 ], [ %1391, %1386 ]
  %1408 = phi float [ %1398, %1393 ], [ %1392, %1386 ]
  %1409 = call float @dx.op.binary.f32(i32 35, float %672, float 0.000000e+00)  ; FMax(a,b)
  %1410 = call float @dx.op.binary.f32(i32 36, float %1409, float 1.000000e+00)  ; FMin(a,b)
  %1411 = call float @dx.op.unary.f32(i32 24, float %1410)  ; Sqrt(value)
  %1412 = call float @dx.op.binary.f32(i32 35, float %675, float 0x3F847AE140000000)  ; FMax(a,b)
  %1413 = fsub fast float %673, %386
  %1414 = fsub fast float %386, %674
  %1415 = call float @dx.op.binary.f32(i32 36, float %1414, float %1413)  ; FMin(a,b)
  %1416 = fdiv fast float %1415, %1412
  %1417 = call float @dx.op.unary.f32(i32 7, float %1416)  ; Saturate(value)
  %1418 = fsub fast float %386, %1405
  %1419 = fdiv fast float %1418, %1404
  %1420 = call float @dx.op.unary.f32(i32 7, float %1419)  ; Saturate(value)
  %1421 = fsub fast float 1.000000e+00, %1420
  %1422 = fmul float %1417, %1421
  %1423 = fmul float %1422, %1422
  %1424 = fmul fast float %1411, %1388
  %1425 = fmul fast float %1424, %1423
  %1426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1427 = extractvalue %dx.types.CBufRet.f32 %1426, 2
  %1428 = extractvalue %dx.types.CBufRet.f32 %1426, 1
  %1429 = fsub fast float %1425, %1428
  %1430 = fsub fast float %1427, %1428
  %1431 = fdiv fast float %1429, %1430
  %1432 = call float @dx.op.unary.f32(i32 7, float %1431)  ; Saturate(value)
  %1433 = fmul fast float %1432, %1406
  %1434 = fcmp fast ogt float %1408, 0.000000e+00
  br i1 %1434, label %1435, label %1455, !dx.controlflow.hints !90

; <label>:1435                                    ; preds = %1403
  %1436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1437 = extractvalue %dx.types.CBufRet.f32 %1436, 0
  %1438 = extractvalue %dx.types.CBufRet.f32 %1436, 1
  %1439 = extractvalue %dx.types.CBufRet.f32 %1436, 2
  %1440 = fsub fast float %384, %1437
  %1441 = fsub fast float %385, %1438
  %1442 = fsub fast float %386, %1439
  %1443 = fmul fast float %1440, %1440
  %1444 = fmul fast float %1441, %1441
  %1445 = fadd fast float %1443, %1444
  %1446 = fmul fast float %1442, %1442
  %1447 = fadd fast float %1445, %1446
  %1448 = call float @dx.op.unary.f32(i32 24, float %1447)  ; Sqrt(value)
  %1449 = fsub fast float %1448, %1407
  %1450 = fsub fast float %1408, %1407
  %1451 = fdiv fast float %1449, %1450
  %1452 = call float @dx.op.unary.f32(i32 7, float %1451)  ; Saturate(value)
  %1453 = fmul fast float %1452, %1452
  %1454 = fmul fast float %1453, %1433
  br label %1455

; <label>:1455                                    ; preds = %1435, %1403, %1380
  %1456 = phi float [ 0.000000e+00, %1380 ], [ %1454, %1435 ], [ %1433, %1403 ]
  %1457 = fmul fast float %1456, %944
  %1458 = fmul fast float %1457, %1381
  %1459 = fmul fast float %1457, %1382
  %1460 = fmul fast float %1457, %1383
  %1461 = fadd fast float %1458, %1320
  %1462 = fadd fast float %1459, %1321
  %1463 = fadd fast float %1460, %1322
  %1464 = fadd fast float %1457, %1318
  br label %1465

; <label>:1465                                    ; preds = %1455, %1317
  %1466 = phi float [ %1464, %1455 ], [ %1318, %1317 ]
  %1467 = phi float [ %1461, %1455 ], [ %1320, %1317 ]
  %1468 = phi float [ %1462, %1455 ], [ %1321, %1317 ]
  %1469 = phi float [ %1463, %1455 ], [ %1322, %1317 ]
  %1470 = icmp eq i32 %930, 0
  br i1 %1470, label %1514, label %1471, !dx.controlflow.hints !91

; <label>:1471                                    ; preds = %1465
  %1472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %1473 = extractvalue %dx.types.CBufRet.f32 %1472, 1
  %1474 = fsub fast float %944, %1473
  %1475 = extractvalue %dx.types.CBufRet.f32 %1472, 3
  %1476 = fmul fast float %1474, %1475
  %1477 = call float @dx.op.unary.f32(i32 7, float %1476)  ; Saturate(value)
  %1478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %1479 = extractvalue %dx.types.CBufRet.f32 %1478, 3
  %1480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1481 = extractvalue %dx.types.CBufRet.f32 %1480, 2
  %1482 = fsub fast float %1481, %932
  %1483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %1484 = extractvalue %dx.types.CBufRet.f32 %1483, 3
  %1485 = fmul fast float %1482, %1484
  %1486 = call float @dx.op.unary.f32(i32 7, float %1485)  ; Saturate(value)
  %1487 = fmul fast float %1486, %1479
  %1488 = extractvalue %dx.types.CBufRet.f32 %1483, 0
  %1489 = fsub fast float %387, %1488
  %1490 = extractvalue %dx.types.CBufRet.f32 %1483, 1
  %1491 = fmul fast float %1489, %1490
  %1492 = call float @dx.op.unary.f32(i32 7, float %1491)  ; Saturate(value)
  %1493 = fsub fast float 1.000000e+00, %1477
  %1494 = fmul fast float %1492, %1493
  %1495 = fadd fast float %1494, %1477
  %1496 = extractvalue %dx.types.CBufRet.f32 %1472, 0
  %1497 = fsub fast float %1487, %1496
  %1498 = fmul fast float %1497, %1495
  %1499 = fadd fast float %1498, %1496
  %1500 = extractvalue %dx.types.CBufRet.f32 %1478, 0
  %1501 = extractvalue %dx.types.CBufRet.f32 %1478, 1
  %1502 = extractvalue %dx.types.CBufRet.f32 %1478, 2
  %1503 = fmul fast float %1499, %944
  %1504 = extractvalue %dx.types.CBufRet.f32 %1483, 2
  %1505 = fmul fast float %1503, %1500
  %1506 = fmul fast float %1503, %1501
  %1507 = fmul fast float %1503, %1502
  %1508 = fadd fast float %1505, %1467
  %1509 = fadd fast float %1506, %1468
  %1510 = fadd fast float %1507, %1469
  %1511 = fmul fast float %1503, %1504
  %1512 = fadd fast float %1511, %1319
  %1513 = fadd fast float %1503, %1466
  br label %1514

; <label>:1514                                    ; preds = %1471, %1465
  %1515 = phi float [ %1513, %1471 ], [ %1466, %1465 ]
  %1516 = phi float [ %1512, %1471 ], [ %1319, %1465 ]
  %1517 = phi float [ %1508, %1471 ], [ %1467, %1465 ]
  %1518 = phi float [ %1509, %1471 ], [ %1468, %1465 ]
  %1519 = phi float [ %1510, %1471 ], [ %1469, %1465 ]
  %1520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1521 = extractvalue %dx.types.CBufRet.f32 %1520, 1
  %1522 = fcmp fast ogt float %1515, %1521
  br i1 %1522, label %1523, label %1529, !dx.controlflow.hints !92

; <label>:1523                                    ; preds = %1514
  %1524 = fdiv fast float 1.000000e+00, %1515
  %1525 = fmul fast float %1524, %1517
  %1526 = fmul fast float %1524, %1518
  %1527 = fmul fast float %1524, %1519
  %1528 = fmul fast float %1524, %1516
  br label %1529

; <label>:1529                                    ; preds = %1523, %1514
  %1530 = phi float [ %1528, %1523 ], [ %1516, %1514 ]
  %1531 = phi float [ %1525, %1523 ], [ %1517, %1514 ]
  %1532 = phi float [ %1526, %1523 ], [ %1518, %1514 ]
  %1533 = phi float [ %1527, %1523 ], [ %1519, %1514 ]
  br i1 %1522, label %1536, label %1534, !dx.controlflow.hints !93

; <label>:1534                                    ; preds = %1529
  %1535 = fadd fast float %944, %387
  br label %3446

; <label>:1536                                    ; preds = %1529
  %1537 = fmul fast float %1515, 0xBFF7154760000000
  %1538 = call float @dx.op.unary.f32(i32 21, float %1537)  ; Exp(value)
  %1539 = call float @dx.op.unary.f32(i32 7, float %1538)  ; Saturate(value)
  %1540 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %1541 = extractvalue %dx.types.CBufRet.i32 %1540, 0
  %1542 = icmp eq i32 %1541, 1
  br i1 %1542, label %1543, label %1578, !dx.controlflow.hints !94

; <label>:1543                                    ; preds = %1536
  %1544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1545 = extractvalue %dx.types.CBufRet.f32 %1544, 0
  %1546 = extractvalue %dx.types.CBufRet.f32 %1544, 1
  %1547 = fsub fast float %384, %1545
  %1548 = fsub fast float %385, %1546
  %1549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1550 = extractvalue %dx.types.CBufRet.f32 %1549, 0
  %1551 = extractvalue %dx.types.CBufRet.f32 %1549, 1
  %1552 = fmul fast float %1547, %1550
  %1553 = fmul fast float %1548, %1551
  %1554 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %27, float %1552, float %1553, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1555 = extractvalue %dx.types.ResRet.f32 %1554, 0
  %1556 = fcmp fast ogt float %1555, 0.000000e+00
  %1557 = extractvalue %dx.types.CBufRet.i32 %1540, 3
  %1558 = icmp ne i32 %1557, 0
  %1559 = and i1 %1556, %1558
  br i1 %1559, label %1560, label %1578, !dx.controlflow.hints !95

; <label>:1560                                    ; preds = %1543
  %1561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1562 = extractvalue %dx.types.CBufRet.f32 %1561, 0
  %1563 = extractvalue %dx.types.CBufRet.f32 %1561, 1
  %1564 = fsub fast float %384, %1562
  %1565 = fsub fast float %385, %1563
  %1566 = fmul fast float %1564, %1564
  %1567 = fmul fast float %1565, %1565
  %1568 = fadd fast float %1566, %1567
  %1569 = uitofp i32 %1557 to float
  %1570 = fmul fast float %1569, %1569
  %1571 = fcmp fast ogt float %1568, %1570
  br i1 %1571, label %1578, label %1572, !dx.controlflow.hints !96

; <label>:1572                                    ; preds = %1560
  %1573 = call float @dx.op.unary.f32(i32 24, float %1568)  ; Sqrt(value)
  %1574 = fsub fast float %1569, %1573
  %1575 = fmul fast float %1574, 0x3F75555560000000
  %1576 = call float @dx.op.unary.f32(i32 7, float %1575)  ; Saturate(value)
  %1577 = call float @dx.op.binary.f32(i32 36, float %1576, float %1555)  ; FMin(a,b)
  br label %1578

; <label>:1578                                    ; preds = %1572, %1560, %1543, %1536
  %1579 = phi float [ 1.000000e+00, %1536 ], [ %1577, %1572 ], [ %1555, %1543 ], [ 0.000000e+00, %1560 ]
  %1580 = fcmp fast ogt float %1579, 0.000000e+00
  br i1 %1580, label %1581, label %1654, !dx.controlflow.hints !97

; <label>:1581                                    ; preds = %1578
  %1582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %1583 = extractvalue %dx.types.ResRet.i32 %1582, 0
  %1584 = extractvalue %dx.types.ResRet.i32 %1582, 1
  %1585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %1586 = extractvalue %dx.types.ResRet.i32 %1585, 0
  %1587 = extractvalue %dx.types.ResRet.i32 %1585, 1
  %1588 = extractvalue %dx.types.ResRet.i32 %1585, 2
  %1589 = extractvalue %dx.types.ResRet.i32 %1585, 3
  %1590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %1591 = extractvalue %dx.types.ResRet.i32 %1590, 0
  %1592 = extractvalue %dx.types.ResRet.i32 %1590, 1
  %1593 = extractvalue %dx.types.ResRet.i32 %1590, 2
  %1594 = extractvalue %dx.types.ResRet.i32 %1590, 3
  %1595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %1596 = extractvalue %dx.types.ResRet.i32 %1595, 0
  %1597 = extractvalue %dx.types.ResRet.i32 %1595, 1
  %1598 = extractvalue %dx.types.ResRet.i32 %1595, 2
  %1599 = extractvalue %dx.types.ResRet.i32 %1595, 3
  %1600 = and i32 %1596, 65535
  %1601 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1600)  ; LegacyF16ToF32(value)
  %1602 = lshr i32 %1596, 16
  %1603 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1602)  ; LegacyF16ToF32(value)
  %1604 = and i32 %1597, 65535
  %1605 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1604)  ; LegacyF16ToF32(value)
  %1606 = lshr i32 %1597, 16
  %1607 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1606)  ; LegacyF16ToF32(value)
  %1608 = and i32 %1598, 65535
  %1609 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1608)  ; LegacyF16ToF32(value)
  %1610 = lshr i32 %1598, 16
  %1611 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1610)  ; LegacyF16ToF32(value)
  %1612 = and i32 %1599, 65535
  %1613 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1612)  ; LegacyF16ToF32(value)
  %1614 = lshr i32 %1599, 16
  %1615 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1614)  ; LegacyF16ToF32(value)
  %1616 = and i32 %1591, 65535
  %1617 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1616)  ; LegacyF16ToF32(value)
  %1618 = lshr i32 %1591, 16
  %1619 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1618)  ; LegacyF16ToF32(value)
  %1620 = and i32 %1592, 65535
  %1621 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1620)  ; LegacyF16ToF32(value)
  %1622 = lshr i32 %1592, 16
  %1623 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1622)  ; LegacyF16ToF32(value)
  %1624 = and i32 %1593, 65535
  %1625 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1624)  ; LegacyF16ToF32(value)
  %1626 = lshr i32 %1593, 16
  %1627 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1626)  ; LegacyF16ToF32(value)
  %1628 = and i32 %1594, 65535
  %1629 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1628)  ; LegacyF16ToF32(value)
  %1630 = lshr i32 %1594, 16
  %1631 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1630)  ; LegacyF16ToF32(value)
  %1632 = and i32 %1586, 65535
  %1633 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1632)  ; LegacyF16ToF32(value)
  %1634 = lshr i32 %1586, 16
  %1635 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1634)  ; LegacyF16ToF32(value)
  %1636 = and i32 %1587, 65535
  %1637 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1636)  ; LegacyF16ToF32(value)
  %1638 = lshr i32 %1587, 16
  %1639 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1638)  ; LegacyF16ToF32(value)
  %1640 = and i32 %1588, 65535
  %1641 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1640)  ; LegacyF16ToF32(value)
  %1642 = lshr i32 %1588, 16
  %1643 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1642)  ; LegacyF16ToF32(value)
  %1644 = and i32 %1589, 65535
  %1645 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1644)  ; LegacyF16ToF32(value)
  %1646 = lshr i32 %1589, 16
  %1647 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1646)  ; LegacyF16ToF32(value)
  %1648 = and i32 %1583, 65535
  %1649 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1648)  ; LegacyF16ToF32(value)
  %1650 = lshr i32 %1583, 16
  %1651 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1650)  ; LegacyF16ToF32(value)
  %1652 = and i32 %1584, 65535
  %1653 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1652)  ; LegacyF16ToF32(value)
  br label %1654

; <label>:1654                                    ; preds = %1581, %1578
  %1655 = phi float [ %1653, %1581 ], [ 0.000000e+00, %1578 ]
  %1656 = phi float [ %1651, %1581 ], [ 0.000000e+00, %1578 ]
  %1657 = phi float [ %1649, %1581 ], [ 0.000000e+00, %1578 ]
  %1658 = phi float [ %1647, %1581 ], [ 0.000000e+00, %1578 ]
  %1659 = phi float [ %1645, %1581 ], [ 0.000000e+00, %1578 ]
  %1660 = phi float [ %1643, %1581 ], [ 0.000000e+00, %1578 ]
  %1661 = phi float [ %1641, %1581 ], [ 0.000000e+00, %1578 ]
  %1662 = phi float [ %1639, %1581 ], [ 0.000000e+00, %1578 ]
  %1663 = phi float [ %1637, %1581 ], [ 0.000000e+00, %1578 ]
  %1664 = phi float [ %1635, %1581 ], [ 0.000000e+00, %1578 ]
  %1665 = phi float [ %1633, %1581 ], [ 0.000000e+00, %1578 ]
  %1666 = phi float [ %1631, %1581 ], [ 0.000000e+00, %1578 ]
  %1667 = phi float [ %1629, %1581 ], [ 0.000000e+00, %1578 ]
  %1668 = phi float [ %1627, %1581 ], [ 0.000000e+00, %1578 ]
  %1669 = phi float [ %1625, %1581 ], [ 0.000000e+00, %1578 ]
  %1670 = phi float [ %1623, %1581 ], [ 0.000000e+00, %1578 ]
  %1671 = phi float [ %1621, %1581 ], [ 0.000000e+00, %1578 ]
  %1672 = phi float [ %1619, %1581 ], [ 0.000000e+00, %1578 ]
  %1673 = phi float [ %1617, %1581 ], [ 0.000000e+00, %1578 ]
  %1674 = phi float [ %1615, %1581 ], [ 0.000000e+00, %1578 ]
  %1675 = phi float [ %1613, %1581 ], [ 0.000000e+00, %1578 ]
  %1676 = phi float [ %1611, %1581 ], [ 0.000000e+00, %1578 ]
  %1677 = phi float [ %1609, %1581 ], [ 0.000000e+00, %1578 ]
  %1678 = phi float [ %1607, %1581 ], [ 0.000000e+00, %1578 ]
  %1679 = phi float [ %1605, %1581 ], [ 0.000000e+00, %1578 ]
  %1680 = phi float [ %1603, %1581 ], [ 0.000000e+00, %1578 ]
  %1681 = phi float [ %1601, %1581 ], [ 0.000000e+00, %1578 ]
  %1682 = fcmp fast olt float %1579, 1.000000e+00
  br i1 %1682, label %1683, label %2343, !dx.controlflow.hints !98

; <label>:1683                                    ; preds = %1654
  %1684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1685 = extractvalue %dx.types.CBufRet.f32 %1684, 0
  %1686 = extractvalue %dx.types.CBufRet.f32 %1684, 1
  %1687 = fsub fast float %384, %1685
  %1688 = fsub fast float %385, %1686
  %1689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1690 = extractvalue %dx.types.CBufRet.f32 %1689, 0
  %1691 = extractvalue %dx.types.CBufRet.f32 %1689, 1
  %1692 = fmul fast float %1687, %1690
  %1693 = fmul fast float %1688, %1691
  %1694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1695 = extractvalue %dx.types.CBufRet.f32 %1694, 0
  %1696 = fmul fast float %1695, %1692
  %1697 = extractvalue %dx.types.CBufRet.f32 %1694, 1
  %1698 = fadd fast float %1696, %1697
  %1699 = extractvalue %dx.types.CBufRet.f32 %1694, 2
  %1700 = fmul fast float %1699, %1693
  %1701 = extractvalue %dx.types.CBufRet.f32 %1694, 3
  %1702 = fadd fast float %1700, %1701
  %1703 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %27, float %1698, float %1702, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1704 = extractvalue %dx.types.ResRet.f32 %1703, 0
  %1705 = extractvalue %dx.types.ResRet.f32 %1703, 1
  %1706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1707 = extractvalue %dx.types.CBufRet.f32 %1706, 1
  %1708 = extractvalue %dx.types.CBufRet.f32 %1706, 0
  %1709 = fsub fast float %1707, %1708
  %1710 = fmul fast float %1709, %1704
  %1711 = fadd fast float %1710, %1708
  %1712 = extractvalue %dx.types.CBufRet.f32 %1706, 3
  %1713 = extractvalue %dx.types.CBufRet.f32 %1706, 2
  %1714 = fsub fast float %1712, %1713
  %1715 = fmul fast float %1714, %1705
  %1716 = fadd fast float %1715, %1713
  %1717 = fsub fast float %386, %1711
  %1718 = fsub fast float %1716, %1711
  %1719 = fdiv fast float %1717, %1718
  %1720 = call float @dx.op.unary.f32(i32 7, float %1719)  ; Saturate(value)
  %1721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %1722 = extractvalue %dx.types.CBufRet.f32 %1721, 0
  %1723 = fmul fast float %1722, %1720
  %1724 = extractvalue %dx.types.CBufRet.f32 %1721, 1
  %1725 = fadd fast float %1723, %1724
  %1726 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %27, float %1698, float %1702, float %1725, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1727 = extractvalue %dx.types.ResRet.f32 %1726, 0
  %1728 = extractvalue %dx.types.ResRet.f32 %1726, 1
  %1729 = extractvalue %dx.types.ResRet.f32 %1726, 2
  %1730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %1731 = extractvalue %dx.types.CBufRet.f32 %1730, 0
  %1732 = extractvalue %dx.types.CBufRet.f32 %1730, 1
  %1733 = extractvalue %dx.types.CBufRet.f32 %1730, 2
  %1734 = fmul fast float %1731, %1727
  %1735 = fmul fast float %1732, %1728
  %1736 = fmul fast float %1733, %1729
  %1737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %1738 = extractvalue %dx.types.CBufRet.f32 %1737, 0
  %1739 = extractvalue %dx.types.CBufRet.f32 %1737, 1
  %1740 = extractvalue %dx.types.CBufRet.f32 %1737, 2
  %1741 = fadd fast float %1734, %1738
  %1742 = fadd fast float %1735, %1739
  %1743 = fadd fast float %1736, %1740
  %1744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %1745 = extractvalue %dx.types.CBufRet.f32 %1744, 0
  %1746 = fmul fast float %1745, %1692
  %1747 = extractvalue %dx.types.CBufRet.f32 %1744, 1
  %1748 = fadd fast float %1746, %1747
  %1749 = extractvalue %dx.types.CBufRet.f32 %1744, 2
  %1750 = fmul fast float %1749, %1693
  %1751 = extractvalue %dx.types.CBufRet.f32 %1744, 3
  %1752 = fadd fast float %1750, %1751
  %1753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %1754 = extractvalue %dx.types.CBufRet.f32 %1753, 0
  %1755 = extractvalue %dx.types.CBufRet.f32 %1753, 1
  %1756 = extractvalue %dx.types.CBufRet.f32 %1753, 2
  %1757 = extractvalue %dx.types.CBufRet.f32 %1753, 3
  %1758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %1759 = extractvalue %dx.types.CBufRet.f32 %1758, 0
  %1760 = extractvalue %dx.types.CBufRet.f32 %1758, 1
  %1761 = extractvalue %dx.types.CBufRet.f32 %1758, 2
  %1762 = extractvalue %dx.types.CBufRet.f32 %1758, 3
  %1763 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %27, float %1748, float %1752, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1764 = extractvalue %dx.types.ResRet.f32 %1763, 0
  %1765 = extractvalue %dx.types.ResRet.f32 %1763, 1
  %1766 = extractvalue %dx.types.ResRet.f32 %1763, 2
  %1767 = extractvalue %dx.types.ResRet.f32 %1763, 3
  %1768 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %27, float %1748, float %1752, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1769 = extractvalue %dx.types.ResRet.f32 %1768, 0
  %1770 = extractvalue %dx.types.ResRet.f32 %1768, 1
  %1771 = extractvalue %dx.types.ResRet.f32 %1768, 2
  %1772 = extractvalue %dx.types.ResRet.f32 %1768, 3
  %1773 = fmul fast float %1764, %1741
  %1774 = fmul fast float %1769, %1741
  %1775 = fmul fast float %1771, %1741
  %1776 = fmul fast float %1767, %1741
  %1777 = fadd fast float %1773, %1754
  %1778 = fadd fast float %1774, %1755
  %1779 = fadd fast float %1775, %1756
  %1780 = fadd fast float %1776, %1757
  %1781 = fmul fast float %1765, %1741
  %1782 = fmul fast float %1770, %1741
  %1783 = fadd fast float %1781, %1759
  %1784 = fadd fast float %1782, %1760
  %1785 = fmul fast float %1766, %1741
  %1786 = fmul fast float %1772, %1741
  %1787 = fadd fast float %1785, %1761
  %1788 = fadd fast float %1786, %1762
  %1789 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %27, float %1748, float %1752, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1790 = extractvalue %dx.types.ResRet.f32 %1789, 0
  %1791 = extractvalue %dx.types.ResRet.f32 %1789, 1
  %1792 = extractvalue %dx.types.ResRet.f32 %1789, 2
  %1793 = extractvalue %dx.types.ResRet.f32 %1789, 3
  %1794 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %27, float %1748, float %1752, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1795 = extractvalue %dx.types.ResRet.f32 %1794, 0
  %1796 = extractvalue %dx.types.ResRet.f32 %1794, 1
  %1797 = extractvalue %dx.types.ResRet.f32 %1794, 2
  %1798 = extractvalue %dx.types.ResRet.f32 %1794, 3
  %1799 = fmul fast float %1790, %1742
  %1800 = fmul fast float %1795, %1742
  %1801 = fmul fast float %1797, %1742
  %1802 = fmul fast float %1793, %1742
  %1803 = fadd fast float %1777, %1799
  %1804 = fadd fast float %1778, %1800
  %1805 = fadd fast float %1779, %1801
  %1806 = fadd fast float %1780, %1802
  %1807 = fmul fast float %1791, %1742
  %1808 = fmul fast float %1796, %1742
  %1809 = fadd fast float %1783, %1807
  %1810 = fadd fast float %1784, %1808
  %1811 = fmul fast float %1792, %1742
  %1812 = fmul fast float %1798, %1742
  %1813 = fadd fast float %1787, %1811
  %1814 = fadd fast float %1788, %1812
  %1815 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %27, float %1748, float %1752, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1816 = extractvalue %dx.types.ResRet.f32 %1815, 0
  %1817 = extractvalue %dx.types.ResRet.f32 %1815, 1
  %1818 = extractvalue %dx.types.ResRet.f32 %1815, 2
  %1819 = extractvalue %dx.types.ResRet.f32 %1815, 3
  %1820 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %27, float %1748, float %1752, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1821 = extractvalue %dx.types.ResRet.f32 %1820, 0
  %1822 = extractvalue %dx.types.ResRet.f32 %1820, 1
  %1823 = extractvalue %dx.types.ResRet.f32 %1820, 2
  %1824 = extractvalue %dx.types.ResRet.f32 %1820, 3
  %1825 = fmul fast float %1816, %1743
  %1826 = fmul fast float %1821, %1743
  %1827 = fmul fast float %1823, %1743
  %1828 = fmul fast float %1819, %1743
  %1829 = fadd fast float %1803, %1825
  %1830 = fadd fast float %1804, %1826
  %1831 = fadd fast float %1805, %1827
  %1832 = fadd fast float %1806, %1828
  %1833 = fmul fast float %1817, %1743
  %1834 = fmul fast float %1822, %1743
  %1835 = fadd fast float %1809, %1833
  %1836 = fadd fast float %1810, %1834
  %1837 = fmul fast float %1818, %1743
  %1838 = fmul fast float %1824, %1743
  %1839 = fadd fast float %1813, %1837
  %1840 = fadd fast float %1814, %1838
  %1841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %1842 = extractvalue %dx.types.CBufRet.f32 %1841, 0
  %1843 = fsub fast float %384, %1842
  %1844 = fsub fast float %1685, %384
  %1845 = call float @dx.op.binary.f32(i32 35, float %1844, float %1843)  ; FMax(a,b)
  %1846 = extractvalue %dx.types.CBufRet.f32 %1841, 1
  %1847 = fsub fast float %385, %1846
  %1848 = fsub fast float %1686, %385
  %1849 = call float @dx.op.binary.f32(i32 35, float %1848, float %1847)  ; FMax(a,b)
  %1850 = call float @dx.op.binary.f32(i32 35, float %1845, float %1849)  ; FMax(a,b)
  %1851 = extractvalue %dx.types.CBufRet.f32 %1689, 3
  %1852 = fmul fast float %1851, %1850
  %1853 = call float @dx.op.unary.f32(i32 7, float %1852)  ; Saturate(value)
  %1854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %1855 = extractvalue %dx.types.CBufRet.f32 %1854, 0
  %1856 = extractvalue %dx.types.CBufRet.f32 %1854, 1
  %1857 = extractvalue %dx.types.CBufRet.f32 %1854, 2
  %1858 = extractvalue %dx.types.CBufRet.f32 %1854, 3
  %1859 = fsub fast float %1855, %1829
  %1860 = fsub fast float %1856, %1830
  %1861 = fsub fast float %1857, %1831
  %1862 = fsub fast float %1858, %1832
  %1863 = fmul fast float %1859, %1853
  %1864 = fmul fast float %1860, %1853
  %1865 = fmul fast float %1861, %1853
  %1866 = fmul fast float %1862, %1853
  %1867 = fadd fast float %1863, %1829
  %1868 = fadd fast float %1864, %1830
  %1869 = fadd fast float %1865, %1831
  %1870 = fadd fast float %1866, %1832
  %1871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %1872 = extractvalue %dx.types.CBufRet.f32 %1871, 0
  %1873 = extractvalue %dx.types.CBufRet.f32 %1871, 1
  %1874 = fsub fast float %1872, %1835
  %1875 = fsub fast float %1873, %1836
  %1876 = fmul fast float %1874, %1853
  %1877 = fmul fast float %1875, %1853
  %1878 = fadd fast float %1876, %1835
  %1879 = fadd fast float %1877, %1836
  %1880 = extractvalue %dx.types.CBufRet.f32 %1871, 2
  %1881 = extractvalue %dx.types.CBufRet.f32 %1871, 3
  %1882 = fsub fast float %1880, %1839
  %1883 = fsub fast float %1881, %1840
  %1884 = fmul fast float %1882, %1853
  %1885 = fmul fast float %1883, %1853
  %1886 = fadd fast float %1884, %1839
  %1887 = fadd fast float %1885, %1840
  %1888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %1889 = extractvalue %dx.types.CBufRet.f32 %1888, 0
  %1890 = fmul fast float %1889, %1867
  %1891 = fmul fast float %1889, %1868
  %1892 = fmul fast float %1889, %1869
  %1893 = fmul fast float %1889, %1870
  %1894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %1895 = extractvalue %dx.types.CBufRet.f32 %1894, 0
  %1896 = fmul fast float %1895, %1878
  %1897 = fmul fast float %1895, %1879
  %1898 = fadd fast float %1896, %1890
  %1899 = fadd fast float %1897, %1892
  %1900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %1901 = extractvalue %dx.types.CBufRet.f32 %1900, 0
  %1902 = fmul fast float %1901, %1886
  %1903 = fmul fast float %1901, %1887
  %1904 = fadd fast float %1898, %1902
  %1905 = fadd fast float %1899, %1903
  %1906 = extractvalue %dx.types.CBufRet.f32 %1888, 1
  %1907 = fmul fast float %1906, %1867
  %1908 = fmul fast float %1906, %1868
  %1909 = fmul fast float %1906, %1869
  %1910 = fmul fast float %1906, %1870
  %1911 = extractvalue %dx.types.CBufRet.f32 %1894, 1
  %1912 = fmul fast float %1911, %1878
  %1913 = fmul fast float %1911, %1879
  %1914 = fadd fast float %1912, %1907
  %1915 = fadd fast float %1913, %1909
  %1916 = extractvalue %dx.types.CBufRet.f32 %1900, 1
  %1917 = fmul fast float %1916, %1886
  %1918 = fmul fast float %1916, %1887
  %1919 = fadd fast float %1914, %1917
  %1920 = fadd fast float %1915, %1918
  %1921 = extractvalue %dx.types.CBufRet.f32 %1888, 2
  %1922 = fmul fast float %1921, %1867
  %1923 = fmul fast float %1921, %1868
  %1924 = fmul fast float %1921, %1869
  %1925 = fmul fast float %1921, %1870
  %1926 = extractvalue %dx.types.CBufRet.f32 %1894, 2
  %1927 = fmul fast float %1926, %1878
  %1928 = fmul fast float %1926, %1879
  %1929 = fadd fast float %1927, %1922
  %1930 = fadd fast float %1928, %1924
  %1931 = extractvalue %dx.types.CBufRet.f32 %1900, 2
  %1932 = fmul fast float %1931, %1886
  %1933 = fmul fast float %1931, %1887
  %1934 = fadd fast float %1929, %1932
  %1935 = fadd fast float %1930, %1933
  %1936 = fmul fast float %1923, %1923
  %1937 = fmul fast float %1935, %1935
  %1938 = fmul fast float %1925, %1925
  %1939 = fadd fast float %1938, %1936
  %1940 = fadd fast float %1939, %1937
  %1941 = call float @dx.op.unary.f32(i32 24, float %1940)  ; Sqrt(value)
  %1942 = fcmp fast ugt float %1941, 0.000000e+00
  br i1 %1942, label %1943, label %1958, !dx.controlflow.hints !99

; <label>:1943                                    ; preds = %1683
  %1944 = fsub fast float -0.000000e+00, %1925
  %1945 = fdiv fast float %1944, %1941
  %1946 = fsub fast float -0.000000e+00, %1923
  %1947 = fdiv fast float %1946, %1941
  %1948 = fdiv fast float %1935, %1941
  %1949 = fmul fast float %1934, 0x3FE279A760000000
  %1950 = fmul fast float %1947, %1923
  %1951 = fmul fast float %1948, %1935
  %1952 = fmul fast float %1945, %1925
  %1953 = fadd fast float %1950, %1952
  %1954 = fsub fast float %1953, %1951
  %1955 = call float @dx.op.unary.f32(i32 6, float %1954)  ; FAbs(value)
  %1956 = fadd fast float %1955, 0x3DDB7CDFE0000000
  %1957 = fdiv fast float %1949, %1956
  br label %1958

; <label>:1958                                    ; preds = %1943, %1683
  %1959 = phi float [ %1957, %1943 ], [ 1.000000e+00, %1683 ]
  %1960 = fmul fast float %1908, %1908
  %1961 = fmul fast float %1920, %1920
  %1962 = fmul fast float %1910, %1910
  %1963 = fadd fast float %1962, %1960
  %1964 = fadd fast float %1963, %1961
  %1965 = call float @dx.op.unary.f32(i32 24, float %1964)  ; Sqrt(value)
  %1966 = fcmp fast ugt float %1965, 0.000000e+00
  br i1 %1966, label %1967, label %1982, !dx.controlflow.hints !99

; <label>:1967                                    ; preds = %1958
  %1968 = fsub fast float -0.000000e+00, %1910
  %1969 = fdiv fast float %1968, %1965
  %1970 = fsub fast float -0.000000e+00, %1908
  %1971 = fdiv fast float %1970, %1965
  %1972 = fdiv fast float %1920, %1965
  %1973 = fmul fast float %1919, 0x3FE279A760000000
  %1974 = fmul fast float %1971, %1908
  %1975 = fmul fast float %1972, %1920
  %1976 = fmul fast float %1969, %1910
  %1977 = fadd fast float %1974, %1976
  %1978 = fsub fast float %1977, %1975
  %1979 = call float @dx.op.unary.f32(i32 6, float %1978)  ; FAbs(value)
  %1980 = fadd fast float %1979, 0x3DDB7CDFE0000000
  %1981 = fdiv fast float %1973, %1980
  br label %1982

; <label>:1982                                    ; preds = %1967, %1958
  %1983 = phi float [ %1981, %1967 ], [ 1.000000e+00, %1958 ]
  %1984 = call float @dx.op.binary.f32(i32 36, float %1983, float %1959)  ; FMin(a,b)
  %1985 = fmul fast float %1891, %1891
  %1986 = fmul fast float %1905, %1905
  %1987 = fmul fast float %1893, %1893
  %1988 = fadd fast float %1987, %1985
  %1989 = fadd fast float %1988, %1986
  %1990 = call float @dx.op.unary.f32(i32 24, float %1989)  ; Sqrt(value)
  %1991 = fcmp fast ugt float %1990, 0.000000e+00
  br i1 %1991, label %1992, label %2007, !dx.controlflow.hints !99

; <label>:1992                                    ; preds = %1982
  %1993 = fsub fast float -0.000000e+00, %1893
  %1994 = fdiv fast float %1993, %1990
  %1995 = fsub fast float -0.000000e+00, %1891
  %1996 = fdiv fast float %1995, %1990
  %1997 = fdiv fast float %1905, %1990
  %1998 = fmul fast float %1904, 0x3FE279A760000000
  %1999 = fmul fast float %1996, %1891
  %2000 = fmul fast float %1997, %1905
  %2001 = fmul fast float %1994, %1893
  %2002 = fadd fast float %1999, %2001
  %2003 = fsub fast float %2002, %2000
  %2004 = call float @dx.op.unary.f32(i32 6, float %2003)  ; FAbs(value)
  %2005 = fadd fast float %2004, 0x3DDB7CDFE0000000
  %2006 = fdiv fast float %1998, %2005
  br label %2007

; <label>:2007                                    ; preds = %1992, %1982
  %2008 = phi float [ %2006, %1992 ], [ 1.000000e+00, %1982 ]
  %2009 = call float @dx.op.binary.f32(i32 36, float %2008, float %1984)  ; FMin(a,b)
  %2010 = call float @dx.op.unary.f32(i32 7, float %2009)  ; Saturate(value)
  %2011 = fcmp fast olt float %2010, 1.000000e+00
  br i1 %2011, label %2012, label %2022, !dx.controlflow.hints !100

; <label>:2012                                    ; preds = %2007
  %2013 = fmul fast float %2010, %1891
  %2014 = fmul fast float %2010, %1905
  %2015 = fmul fast float %2010, %1893
  %2016 = fmul fast float %2010, %1908
  %2017 = fmul fast float %2010, %1920
  %2018 = fmul fast float %2010, %1910
  %2019 = fmul fast float %2010, %1923
  %2020 = fmul fast float %2010, %1935
  %2021 = fmul fast float %2010, %1925
  br label %2022

; <label>:2022                                    ; preds = %2012, %2007
  %2023 = phi float [ %2019, %2012 ], [ %1923, %2007 ]
  %2024 = phi float [ %2020, %2012 ], [ %1935, %2007 ]
  %2025 = phi float [ %2021, %2012 ], [ %1925, %2007 ]
  %2026 = phi float [ %2016, %2012 ], [ %1908, %2007 ]
  %2027 = phi float [ %2017, %2012 ], [ %1920, %2007 ]
  %2028 = phi float [ %2018, %2012 ], [ %1910, %2007 ]
  %2029 = phi float [ %2013, %2012 ], [ %1891, %2007 ]
  %2030 = phi float [ %2014, %2012 ], [ %1905, %2007 ]
  %2031 = phi float [ %2015, %2012 ], [ %1893, %2007 ]
  %2032 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1904)  ; FMax(a,b)
  %2033 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1919)  ; FMax(a,b)
  %2034 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1934)  ; FMax(a,b)
  %2035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %2036 = extractvalue %dx.types.CBufRet.f32 %2035, 0
  %2037 = fcmp fast ogt float %2036, 0.000000e+00
  %2038 = fcmp fast oge float %1692, 0.000000e+00
  %2039 = and i1 %2038, %2037
  %2040 = fcmp fast ole float %1692, 1.000000e+00
  %2041 = and i1 %2040, %2039
  %2042 = fcmp fast oge float %1693, 0.000000e+00
  %2043 = and i1 %2042, %2041
  %2044 = fcmp fast ole float %1693, 1.000000e+00
  %2045 = and i1 %2044, %2043
  br i1 %2045, label %2046, label %2191, !dx.controlflow.hints !101

; <label>:2046                                    ; preds = %2022
  %2047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2048 = extractvalue %dx.types.CBufRet.f32 %2047, 2
  %2049 = extractvalue %dx.types.CBufRet.f32 %2047, 3
  %2050 = fmul fast float %2048, %1692
  %2051 = fmul fast float %2049, %1693
  %2052 = call float @dx.op.unary.f32(i32 27, float %2050)  ; Round_ni(value)
  %2053 = call float @dx.op.unary.f32(i32 27, float %2051)  ; Round_ni(value)
  %2054 = fptosi float %2052 to i32
  %2055 = fptosi float %2053 to i32
  %2056 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %2054, i32 %2055, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2057 = extractvalue %dx.types.ResRet.i32 %2056, 0
  %2058 = and i32 %2057, 65535
  %2059 = lshr i32 %2057, 16
  %2060 = icmp eq i32 %2058, 65535
  br i1 %2060, label %2097, label %2061, !dx.controlflow.hints !102

; <label>:2061                                    ; preds = %2046
  %2062 = extractvalue %dx.types.CBufRet.f32 %2035, 1
  %2063 = extractvalue %dx.types.CBufRet.f32 %2047, 0
  %2064 = extractvalue %dx.types.CBufRet.f32 %2047, 1
  %2065 = fmul fast float %2063, %1692
  %2066 = fmul fast float %2064, %1693
  %2067 = fmul fast float %2065, 1.250000e-01
  %2068 = fmul fast float %2066, 1.250000e-01
  %2069 = call float @dx.op.unary.f32(i32 27, float %2067)  ; Round_ni(value)
  %2070 = call float @dx.op.unary.f32(i32 27, float %2068)  ; Round_ni(value)
  %2071 = fmul fast float %2069, 8.000000e+00
  %2072 = fmul fast float %2070, 8.000000e+00
  %2073 = and i32 %2057, 255
  %2074 = lshr i32 %2057, 8
  %2075 = and i32 %2074, 255
  %2076 = mul nuw nsw i32 %2073, 9
  %2077 = uitofp i32 %2076 to float
  %2078 = mul nuw nsw i32 %2075, 9
  %2079 = uitofp i32 %2078 to float
  %2080 = fadd fast float %2077, 5.000000e-01
  %2081 = fadd fast float %2080, %2065
  %2082 = fsub fast float %2081, %2071
  %2083 = fadd fast float %2079, 5.000000e-01
  %2084 = fadd fast float %2083, %2066
  %2085 = fsub fast float %2084, %2072
  %2086 = fdiv fast float %2082, %2036
  %2087 = fdiv fast float %2085, %2062
  %2088 = fmul fast float %1720, 4.375000e-01
  %2089 = fadd fast float %2088, 3.125000e-02
  %2090 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %27, float %2086, float %2087, float %2089, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2091 = extractvalue %dx.types.ResRet.f32 %2090, 0
  %2092 = extractvalue %dx.types.ResRet.f32 %2090, 1
  %2093 = extractvalue %dx.types.ResRet.f32 %2090, 2
  %2094 = fadd fast float %2091, %2032
  %2095 = fadd fast float %2092, %2033
  %2096 = fadd fast float %2093, %2034
  br label %2097

; <label>:2097                                    ; preds = %2061, %2046
  %2098 = phi float [ %2096, %2061 ], [ %2034, %2046 ]
  %2099 = phi float [ %2095, %2061 ], [ %2033, %2046 ]
  %2100 = phi float [ %2094, %2061 ], [ %2032, %2046 ]
  %2101 = icmp eq i32 %2059, 65535
  br i1 %2101, label %2191, label %2102, !dx.controlflow.hints !103

; <label>:2102                                    ; preds = %2097
  %2103 = extractvalue %dx.types.CBufRet.f32 %2035, 1
  %2104 = extractvalue %dx.types.CBufRet.f32 %2047, 0
  %2105 = extractvalue %dx.types.CBufRet.f32 %2047, 1
  %2106 = fmul fast float %2104, %1692
  %2107 = fmul fast float %2105, %1693
  %2108 = fmul fast float %2106, 1.250000e-01
  %2109 = fmul fast float %2107, 1.250000e-01
  %2110 = call float @dx.op.unary.f32(i32 27, float %2108)  ; Round_ni(value)
  %2111 = call float @dx.op.unary.f32(i32 27, float %2109)  ; Round_ni(value)
  %2112 = fmul fast float %2110, 8.000000e+00
  %2113 = fmul fast float %2111, 8.000000e+00
  %2114 = fsub fast float %2106, %2112
  %2115 = fsub fast float %2107, %2113
  %2116 = fadd fast float %2114, 5.000000e-01
  %2117 = fadd fast float %2115, 5.000000e-01
  %2118 = and i32 %2059, 255
  %2119 = lshr i32 %2057, 24
  %2120 = mul nuw nsw i32 %2118, 9
  %2121 = uitofp i32 %2120 to float
  %2122 = mul nuw nsw i32 %2119, 9
  %2123 = uitofp i32 %2122 to float
  %2124 = fadd fast float %2116, %2121
  %2125 = fadd fast float %2117, %2123
  %2126 = fdiv fast float %2124, %2036
  %2127 = fdiv fast float %2125, %2103
  %2128 = fmul fast float %1720, 4.375000e-01
  %2129 = fadd fast float %2128, 3.125000e-02
  %2130 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %27, float %2126, float %2127, float %2129, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2131 = extractvalue %dx.types.ResRet.f32 %2130, 0
  %2132 = extractvalue %dx.types.ResRet.f32 %2130, 1
  %2133 = extractvalue %dx.types.ResRet.f32 %2130, 2
  %2134 = fadd fast float %2128, 5.312500e-01
  %2135 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %27, float %2126, float %2127, float %2134, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2136 = extractvalue %dx.types.ResRet.f32 %2135, 0
  %2137 = extractvalue %dx.types.ResRet.f32 %2135, 1
  %2138 = extractvalue %dx.types.ResRet.f32 %2135, 2
  %2139 = fmul fast float %2136, 2.000000e+00
  %2140 = fmul fast float %2137, 2.000000e+00
  %2141 = fmul fast float %2138, 2.000000e+00
  %2142 = fadd fast float %2139, -1.000000e+00
  %2143 = fadd fast float %2140, -1.000000e+00
  %2144 = fadd fast float %2141, -1.000000e+00
  %2145 = fmul fast float %2142, %2142
  %2146 = fmul fast float %2143, %2143
  %2147 = fadd fast float %2145, %2146
  %2148 = fmul fast float %2144, %2144
  %2149 = fadd fast float %2147, %2148
  %2150 = call float @dx.op.unary.f32(i32 24, float %2149)  ; Sqrt(value)
  %2151 = fcmp fast ogt float %2150, 0.000000e+00
  br i1 %2151, label %2152, label %2156, !dx.controlflow.hints !104

; <label>:2152                                    ; preds = %2102
  %2153 = fdiv fast float %2142, %2150
  %2154 = fdiv fast float %2143, %2150
  %2155 = fdiv fast float %2144, %2150
  br label %2156

; <label>:2156                                    ; preds = %2152, %2102
  %2157 = phi float [ %2153, %2152 ], [ 0.000000e+00, %2102 ]
  %2158 = phi float [ %2154, %2152 ], [ 0.000000e+00, %2102 ]
  %2159 = phi float [ %2155, %2152 ], [ 0.000000e+00, %2102 ]
  %2160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2161 = extractvalue %dx.types.CBufRet.f32 %2160, 0
  %2162 = extractvalue %dx.types.CBufRet.f32 %2160, 1
  %2163 = fsub fast float %384, %2161
  %2164 = fsub fast float %385, %2162
  %2165 = fmul fast float %2163, %2163
  %2166 = fmul fast float %2164, %2164
  %2167 = fadd fast float %2165, %2166
  %2168 = call float @dx.op.unary.f32(i32 24, float %2167)  ; Sqrt(value)
  %2169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2170 = extractvalue %dx.types.CBufRet.f32 %2169, 0
  %2171 = extractvalue %dx.types.CBufRet.f32 %2169, 1
  %2172 = fsub fast float %2168, %2170
  %2173 = fdiv fast float %2172, %2171
  %2174 = call float @dx.op.unary.f32(i32 7, float %2173)  ; Saturate(value)
  %2175 = fmul fast float %2174, 2.000000e+00
  %2176 = fsub fast float 3.000000e+00, %2175
  %2177 = fmul fast float %2174, %2174
  %2178 = fmul fast float %2177, %2176
  %2179 = call float @dx.op.dot3.f32(i32 55, float %2157, float %2158, float %2159, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2180 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2179)  ; FMax(a,b)
  %2181 = fmul fast float %2180, 0x400C5BF8A0000000
  %2182 = fmul fast float %2178, %2131
  %2183 = fmul fast float %2182, %2181
  %2184 = fadd fast float %2183, %2100
  %2185 = fmul fast float %2178, %2132
  %2186 = fmul fast float %2185, %2181
  %2187 = fadd fast float %2186, %2099
  %2188 = fmul fast float %2178, %2133
  %2189 = fmul fast float %2188, %2181
  %2190 = fadd fast float %2189, %2098
  br label %2191

; <label>:2191                                    ; preds = %2156, %2097, %2022
  %2192 = phi float [ %2190, %2156 ], [ %2098, %2097 ], [ %2034, %2022 ]
  %2193 = phi float [ %2187, %2156 ], [ %2099, %2097 ], [ %2033, %2022 ]
  %2194 = phi float [ %2184, %2156 ], [ %2100, %2097 ], [ %2032, %2022 ]
  %2195 = fcmp fast ogt float %386, %1716
  %2196 = and i1 %2038, %2195
  %2197 = and i1 %2040, %2196
  %2198 = and i1 %2042, %2197
  %2199 = and i1 %2044, %2198
  br i1 %2199, label %2200, label %2257, !dx.controlflow.hints !105

; <label>:2200                                    ; preds = %2191
  %2201 = fmul fast float %1718, 0x3FC24924A0000000
  %2202 = fsub fast float %386, %1716
  %2203 = fdiv fast float %2202, %2201
  %2204 = call float @dx.op.unary.f32(i32 7, float %2203)  ; Saturate(value)
  %2205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %2206 = extractvalue %dx.types.CBufRet.f32 %2205, 0
  %2207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %2208 = extractvalue %dx.types.CBufRet.f32 %2207, 0
  %2209 = extractvalue %dx.types.CBufRet.f32 %2207, 1
  %2210 = extractvalue %dx.types.CBufRet.f32 %2207, 2
  %2211 = fsub fast float %2206, %2194
  %2212 = fsub fast float %2208, %2029
  %2213 = fsub fast float %2209, %2030
  %2214 = fsub fast float %2210, %2031
  %2215 = fmul fast float %2211, %2204
  %2216 = fmul fast float %2212, %2204
  %2217 = fmul fast float %2213, %2204
  %2218 = fmul fast float %2214, %2204
  %2219 = fadd fast float %2215, %2194
  %2220 = fadd fast float %2216, %2029
  %2221 = fadd fast float %2217, %2030
  %2222 = fadd fast float %2218, %2031
  %2223 = extractvalue %dx.types.CBufRet.f32 %2205, 1
  %2224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %2225 = extractvalue %dx.types.CBufRet.f32 %2224, 0
  %2226 = extractvalue %dx.types.CBufRet.f32 %2224, 1
  %2227 = extractvalue %dx.types.CBufRet.f32 %2224, 2
  %2228 = fsub fast float %2223, %2193
  %2229 = fsub fast float %2225, %2026
  %2230 = fsub fast float %2226, %2027
  %2231 = fsub fast float %2227, %2028
  %2232 = fmul fast float %2228, %2204
  %2233 = fmul fast float %2229, %2204
  %2234 = fmul fast float %2230, %2204
  %2235 = fmul fast float %2231, %2204
  %2236 = fadd fast float %2232, %2193
  %2237 = fadd fast float %2233, %2026
  %2238 = fadd fast float %2234, %2027
  %2239 = fadd fast float %2235, %2028
  %2240 = extractvalue %dx.types.CBufRet.f32 %2205, 2
  %2241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %2242 = extractvalue %dx.types.CBufRet.f32 %2241, 0
  %2243 = extractvalue %dx.types.CBufRet.f32 %2241, 1
  %2244 = extractvalue %dx.types.CBufRet.f32 %2241, 2
  %2245 = fsub fast float %2240, %2192
  %2246 = fsub fast float %2242, %2023
  %2247 = fsub fast float %2243, %2024
  %2248 = fsub fast float %2244, %2025
  %2249 = fmul fast float %2245, %2204
  %2250 = fmul fast float %2246, %2204
  %2251 = fmul fast float %2247, %2204
  %2252 = fmul fast float %2248, %2204
  %2253 = fadd fast float %2249, %2192
  %2254 = fadd fast float %2250, %2023
  %2255 = fadd fast float %2251, %2024
  %2256 = fadd fast float %2252, %2025
  br label %2257

; <label>:2257                                    ; preds = %2200, %2191
  %2258 = phi float [ %2253, %2200 ], [ %2192, %2191 ]
  %2259 = phi float [ %2254, %2200 ], [ %2023, %2191 ]
  %2260 = phi float [ %2255, %2200 ], [ %2024, %2191 ]
  %2261 = phi float [ %2256, %2200 ], [ %2025, %2191 ]
  %2262 = phi float [ %2236, %2200 ], [ %2193, %2191 ]
  %2263 = phi float [ %2237, %2200 ], [ %2026, %2191 ]
  %2264 = phi float [ %2238, %2200 ], [ %2027, %2191 ]
  %2265 = phi float [ %2239, %2200 ], [ %2028, %2191 ]
  %2266 = phi float [ %2219, %2200 ], [ %2194, %2191 ]
  %2267 = phi float [ %2220, %2200 ], [ %2029, %2191 ]
  %2268 = phi float [ %2221, %2200 ], [ %2030, %2191 ]
  %2269 = phi float [ %2222, %2200 ], [ %2031, %2191 ]
  %2270 = extractvalue %dx.types.CBufRet.f32 %1841, 3
  %2271 = fmul fast float %2270, %2266
  %2272 = fmul fast float %2270, %2262
  %2273 = fmul fast float %2270, %2258
  %2274 = fmul fast float %2267, 1.500000e+00
  %2275 = fmul fast float %2274, %2270
  %2276 = fmul fast float %2268, 1.500000e+00
  %2277 = fmul fast float %2276, %2270
  %2278 = fmul fast float %2269, 1.500000e+00
  %2279 = fmul fast float %2278, %2270
  %2280 = fmul fast float %2263, 1.500000e+00
  %2281 = fmul fast float %2280, %2270
  %2282 = fmul fast float %2264, 1.500000e+00
  %2283 = fmul fast float %2282, %2270
  %2284 = fmul fast float %2265, 1.500000e+00
  %2285 = fmul fast float %2284, %2270
  %2286 = fmul fast float %2259, 1.500000e+00
  %2287 = fmul fast float %2286, %2270
  %2288 = fmul fast float %2260, 1.500000e+00
  %2289 = fmul fast float %2288, %2270
  %2290 = fmul fast float %2261, 1.500000e+00
  %2291 = fmul fast float %2290, %2270
  %2292 = fsub fast float %1681, %2271
  %2293 = fmul fast float %2292, %1579
  %2294 = fadd fast float %2293, %2271
  %2295 = fsub fast float %1680, %2275
  %2296 = fmul fast float %2295, %1579
  %2297 = fadd fast float %2296, %2275
  %2298 = fsub fast float %1679, %2277
  %2299 = fmul fast float %2298, %1579
  %2300 = fadd fast float %2299, %2277
  %2301 = fsub fast float %1678, %2279
  %2302 = fmul fast float %2301, %1579
  %2303 = fadd fast float %2302, %2279
  %2304 = fmul fast float %1677, %1579
  %2305 = fmul fast float %1676, %1579
  %2306 = fmul fast float %1675, %1579
  %2307 = fmul fast float %1674, %1579
  %2308 = fmul fast float %1673, %1579
  %2309 = fsub fast float %1672, %2272
  %2310 = fmul fast float %2309, %1579
  %2311 = fadd fast float %2310, %2272
  %2312 = fsub fast float %1671, %2281
  %2313 = fmul fast float %2312, %1579
  %2314 = fadd fast float %2313, %2281
  %2315 = fsub fast float %1670, %2283
  %2316 = fmul fast float %2315, %1579
  %2317 = fadd fast float %2316, %2283
  %2318 = fsub fast float %1669, %2285
  %2319 = fmul fast float %2318, %1579
  %2320 = fadd fast float %2319, %2285
  %2321 = fmul fast float %1668, %1579
  %2322 = fmul fast float %1667, %1579
  %2323 = fmul fast float %1666, %1579
  %2324 = fmul fast float %1665, %1579
  %2325 = fmul fast float %1664, %1579
  %2326 = fsub fast float %1663, %2273
  %2327 = fmul fast float %2326, %1579
  %2328 = fadd fast float %2327, %2273
  %2329 = fsub fast float %1662, %2287
  %2330 = fmul fast float %2329, %1579
  %2331 = fadd fast float %2330, %2287
  %2332 = fsub fast float %1661, %2289
  %2333 = fmul fast float %2332, %1579
  %2334 = fadd fast float %2333, %2289
  %2335 = fsub fast float %1660, %2291
  %2336 = fmul fast float %2335, %1579
  %2337 = fadd fast float %2336, %2291
  %2338 = fmul fast float %1659, %1579
  %2339 = fmul fast float %1658, %1579
  %2340 = fmul fast float %1657, %1579
  %2341 = fmul fast float %1656, %1579
  %2342 = fmul fast float %1655, %1579
  br label %2343

; <label>:2343                                    ; preds = %2257, %1654
  %2344 = phi float [ %2342, %2257 ], [ %1655, %1654 ]
  %2345 = phi float [ %2341, %2257 ], [ %1656, %1654 ]
  %2346 = phi float [ %2340, %2257 ], [ %1657, %1654 ]
  %2347 = phi float [ %2339, %2257 ], [ %1658, %1654 ]
  %2348 = phi float [ %2338, %2257 ], [ %1659, %1654 ]
  %2349 = phi float [ %2337, %2257 ], [ %1660, %1654 ]
  %2350 = phi float [ %2334, %2257 ], [ %1661, %1654 ]
  %2351 = phi float [ %2331, %2257 ], [ %1662, %1654 ]
  %2352 = phi float [ %2328, %2257 ], [ %1663, %1654 ]
  %2353 = phi float [ %2325, %2257 ], [ %1664, %1654 ]
  %2354 = phi float [ %2324, %2257 ], [ %1665, %1654 ]
  %2355 = phi float [ %2323, %2257 ], [ %1666, %1654 ]
  %2356 = phi float [ %2322, %2257 ], [ %1667, %1654 ]
  %2357 = phi float [ %2321, %2257 ], [ %1668, %1654 ]
  %2358 = phi float [ %2320, %2257 ], [ %1669, %1654 ]
  %2359 = phi float [ %2317, %2257 ], [ %1670, %1654 ]
  %2360 = phi float [ %2314, %2257 ], [ %1671, %1654 ]
  %2361 = phi float [ %2311, %2257 ], [ %1672, %1654 ]
  %2362 = phi float [ %2308, %2257 ], [ %1673, %1654 ]
  %2363 = phi float [ %2307, %2257 ], [ %1674, %1654 ]
  %2364 = phi float [ %2306, %2257 ], [ %1675, %1654 ]
  %2365 = phi float [ %2305, %2257 ], [ %1676, %1654 ]
  %2366 = phi float [ %2304, %2257 ], [ %1677, %1654 ]
  %2367 = phi float [ %2303, %2257 ], [ %1678, %1654 ]
  %2368 = phi float [ %2300, %2257 ], [ %1679, %1654 ]
  %2369 = phi float [ %2297, %2257 ], [ %1680, %1654 ]
  %2370 = phi float [ %2294, %2257 ], [ %1681, %1654 ]
  %2371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %2372 = extractvalue %dx.types.CBufRet.f32 %2371, 2
  %2373 = fmul fast float %2372, %2372
  %2374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %2375 = extractvalue %dx.types.CBufRet.f32 %2374, 0
  %2376 = extractvalue %dx.types.CBufRet.f32 %2374, 1
  %2377 = extractvalue %dx.types.CBufRet.f32 %2374, 2
  %2378 = fmul fast float %2370, 0x3FD20DD760000000
  %2379 = fmul fast float %2377, %2368
  %2380 = fmul fast float %2377, %2377
  %2381 = fmul fast float %2380, 0x3FEE471020000000
  %2382 = fadd fast float %2381, 0xBFD42F6020000000
  %2383 = fmul fast float %2382, %2364
  %2384 = fmul fast float %2375, %2367
  %2385 = fmul fast float %2376, %2369
  %2386 = fmul fast float %2377, 0x3FF17B1420000000
  %2387 = fmul fast float %2373, %2363
  %2388 = fmul fast float %2387, %2375
  %2389 = fmul fast float %2388, %2386
  %2390 = fmul fast float %2373, %2365
  %2391 = fmul fast float %2390, %2376
  %2392 = fmul fast float %2391, %2386
  %2393 = fmul fast float %2375, %2375
  %2394 = fmul fast float %2376, %2376
  %2395 = fsub fast float %2393, %2394
  %2396 = fmul fast float %2362, 0x3FE17B1420000000
  %2397 = fmul fast float %2396, %2395
  %2398 = fmul fast float %2366, 0x3FF17B1420000000
  %2399 = fmul fast float %2398, %2376
  %2400 = fmul fast float %2399, %2375
  %2401 = fadd fast float %2397, %2400
  %2402 = fadd fast float %2401, %2383
  %2403 = fmul fast float %2402, %2373
  %2404 = fsub fast float %2385, %2379
  %2405 = fadd fast float %2404, %2384
  %2406 = fmul fast float %2405, 0x3FDF454380000000
  %2407 = fmul fast float %2406, %2372
  %2408 = fsub fast float %2378, %2389
  %2409 = fsub fast float %2408, %2392
  %2410 = fadd fast float %2409, %2403
  %2411 = fadd fast float %2410, %2407
  %2412 = fmul fast float %2361, 0x3FD20DD760000000
  %2413 = fmul fast float %2377, %2359
  %2414 = fmul fast float %2382, %2355
  %2415 = fmul fast float %2375, %2358
  %2416 = fmul fast float %2376, %2360
  %2417 = fmul fast float %2373, %2354
  %2418 = fmul fast float %2417, %2375
  %2419 = fmul fast float %2418, %2386
  %2420 = fmul fast float %2373, %2356
  %2421 = fmul fast float %2420, %2376
  %2422 = fmul fast float %2421, %2386
  %2423 = fmul fast float %2353, 0x3FE17B1420000000
  %2424 = fmul fast float %2423, %2395
  %2425 = fmul fast float %2357, 0x3FF17B1420000000
  %2426 = fmul fast float %2425, %2376
  %2427 = fmul fast float %2426, %2375
  %2428 = fadd fast float %2424, %2427
  %2429 = fadd fast float %2428, %2414
  %2430 = fmul fast float %2429, %2373
  %2431 = fsub fast float %2416, %2413
  %2432 = fadd fast float %2431, %2415
  %2433 = fmul fast float %2432, 0x3FDF454380000000
  %2434 = fmul fast float %2433, %2372
  %2435 = fsub fast float %2412, %2419
  %2436 = fsub fast float %2435, %2422
  %2437 = fadd fast float %2436, %2430
  %2438 = fadd fast float %2437, %2434
  %2439 = fmul fast float %2352, 0x3FD20DD760000000
  %2440 = fmul fast float %2377, %2350
  %2441 = fmul fast float %2382, %2346
  %2442 = fmul fast float %2375, %2349
  %2443 = fmul fast float %2376, %2351
  %2444 = fmul fast float %2373, %2345
  %2445 = fmul fast float %2444, %2375
  %2446 = fmul fast float %2445, %2386
  %2447 = fmul fast float %2373, %2347
  %2448 = fmul fast float %2447, %2376
  %2449 = fmul fast float %2448, %2386
  %2450 = fmul fast float %2344, 0x3FE17B1420000000
  %2451 = fmul fast float %2450, %2395
  %2452 = fmul fast float %2348, 0x3FF17B1420000000
  %2453 = fmul fast float %2452, %2376
  %2454 = fmul fast float %2453, %2375
  %2455 = fadd fast float %2451, %2454
  %2456 = fadd fast float %2455, %2441
  %2457 = fmul fast float %2456, %2373
  %2458 = fsub fast float %2443, %2440
  %2459 = fadd fast float %2458, %2442
  %2460 = fmul fast float %2459, 0x3FDF454380000000
  %2461 = fmul fast float %2460, %2372
  %2462 = fsub fast float %2439, %2446
  %2463 = fsub fast float %2462, %2449
  %2464 = fadd fast float %2463, %2457
  %2465 = fadd fast float %2464, %2461
  %2466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2467 = extractvalue %dx.types.CBufRet.f32 %2466, 3
  %2468 = extractvalue %dx.types.CBufRet.f32 %1520, 0
  %2469 = fmul fast float %2468, %2467
  %2470 = fmul fast float %2469, %2411
  %2471 = fmul fast float %2469, %2438
  %2472 = fmul fast float %2469, %2465
  %2473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2474 = extractvalue %dx.types.CBufRet.f32 %2473, 3
  %2475 = fcmp fast une float %2474, 0.000000e+00
  %2476 = extractvalue %dx.types.CBufRet.f32 %2473, 0
  %2477 = extractvalue %dx.types.CBufRet.f32 %2473, 1
  %2478 = extractvalue %dx.types.CBufRet.f32 %2473, 2
  br i1 %2475, label %2479, label %2501, !dx.controlflow.hints !106

; <label>:2479                                    ; preds = %2343
  %2480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %2481 = extractvalue %dx.types.CBufRet.f32 %2480, 0
  %2482 = extractvalue %dx.types.CBufRet.f32 %2480, 1
  %2483 = extractvalue %dx.types.CBufRet.f32 %2480, 2
  %2484 = call float @dx.op.dot3.f32(i32 55, float %2476, float %2477, float %2478, float %120, float %121, float %122)  ; Dot3(ax,ay,az,bx,by,bz)
  %2485 = fcmp fast ogt float %1530, 0.000000e+00
  %2486 = select i1 %2485, float 1.000000e+00, float -1.000000e+00
  %2487 = fmul fast float %2486, 5.000000e-01
  %2488 = fmul fast float %2487, %2484
  %2489 = fmul fast float %2486, %1530
  %2490 = fadd fast float %2488, 4.921875e-01
  %2491 = fadd fast float %2489, -3.125000e-02
  %2492 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %27, float %2490, float 0x3FB25F3060000000, float %2491, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2493 = extractvalue %dx.types.ResRet.f32 %2492, 0
  %2494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %2495 = extractvalue %dx.types.CBufRet.f32 %2494, 0
  %2496 = fmul fast float %2493, 0x400921FB60000000
  %2497 = fmul fast float %2496, %2495
  %2498 = fmul fast float %2497, %2481
  %2499 = fmul fast float %2497, %2482
  %2500 = fmul fast float %2497, %2483
  br label %2501

; <label>:2501                                    ; preds = %2479, %2343
  %2502 = phi float [ %2498, %2479 ], [ 0.000000e+00, %2343 ]
  %2503 = phi float [ %2499, %2479 ], [ 0.000000e+00, %2343 ]
  %2504 = phi float [ %2500, %2479 ], [ 0.000000e+00, %2343 ]
  %2505 = fdiv fast float 1.000000e+00, %2476
  %2506 = fdiv fast float 1.000000e+00, %2477
  %2507 = fdiv fast float 1.000000e+00, %2478
  %2508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %2509 = extractvalue %dx.types.CBufRet.f32 %2508, 0
  %2510 = fmul fast float %2509, %2476
  %2511 = fmul fast float %2509, %2477
  %2512 = fmul fast float %2509, %2478
  %2513 = fadd fast float %2510, %384
  %2514 = fsub fast float -0.000000e+00, %2513
  %2515 = fadd fast float %2511, %385
  %2516 = fsub fast float -0.000000e+00, %2515
  %2517 = fadd fast float %2512, %386
  br i1 %400, label %2589, label %2518, !dx.controlflow.hints !58

; <label>:2518                                    ; preds = %2501
  %2519 = extractvalue %dx.types.CBufRet.f32 %2508, 1
  %2520 = fcmp fast ogt float %2519, %2509
  br i1 %2520, label %2521, label %2523, !dx.controlflow.hints !59

; <label>:2521                                    ; preds = %2518
  %2522 = fsub fast float %2519, %2509
  br label %2580

; <label>:2523                                    ; preds = %2518
  %2524 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %2525 = extractvalue %dx.types.CBufRet.i32 %2524, 3
  %2526 = icmp eq i32 %2525, 0
  %2527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %2528 = extractvalue %dx.types.CBufRet.f32 %2527, 2
  %2529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %2530 = extractvalue %dx.types.CBufRet.f32 %2529, 2
  %2531 = fsub fast float %2528, %2517
  %2532 = fadd fast float %2531, %2530
  %2533 = fsub fast float 0xC7EFFFFFE0000000, %2517
  br i1 %2526, label %2543, label %2534, !dx.controlflow.hints !46

; <label>:2534                                    ; preds = %2523
  %2535 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2514, float %2516, float %2532)  ; Dot3(ax,ay,az,bx,by,bz)
  %2536 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2476, float %2477, float %2478)  ; Dot3(ax,ay,az,bx,by,bz)
  %2537 = fdiv fast float 1.000000e+00, %2536
  %2538 = fmul fast float %2537, %2535
  %2539 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2514, float %2516, float %2533)  ; Dot3(ax,ay,az,bx,by,bz)
  %2540 = fmul fast float %2537, %2539
  %2541 = call float @dx.op.binary.f32(i32 36, float %2538, float %2540)  ; FMin(a,b)
  %2542 = call float @dx.op.binary.f32(i32 35, float %2538, float %2540)  ; FMax(a,b)
  br label %2573

; <label>:2543                                    ; preds = %2523
  %2544 = extractvalue %dx.types.CBufRet.f32 %2527, 0
  %2545 = extractvalue %dx.types.CBufRet.f32 %2527, 1
  %2546 = extractvalue %dx.types.CBufRet.f32 %2529, 0
  %2547 = extractvalue %dx.types.CBufRet.f32 %2529, 1
  %2548 = fsub fast float %2544, %2513
  %2549 = fmul fast float %2505, %2548
  %2550 = fadd fast float %2548, %2546
  %2551 = fmul fast float %2550, %2505
  %2552 = call float @dx.op.binary.f32(i32 36, float %2549, float %2551)  ; FMin(a,b)
  %2553 = call float @dx.op.binary.f32(i32 35, float %2549, float %2551)  ; FMax(a,b)
  %2554 = fsub fast float %2545, %2515
  %2555 = fmul fast float %2506, %2554
  %2556 = fadd fast float %2554, %2547
  %2557 = fmul fast float %2556, %2506
  %2558 = call float @dx.op.binary.f32(i32 36, float %2555, float %2557)  ; FMin(a,b)
  %2559 = call float @dx.op.binary.f32(i32 35, float %2552, float %2558)  ; FMax(a,b)
  %2560 = call float @dx.op.binary.f32(i32 35, float %2555, float %2557)  ; FMax(a,b)
  %2561 = call float @dx.op.binary.f32(i32 36, float %2553, float %2560)  ; FMin(a,b)
  %2562 = fmul fast float %2507, %2533
  %2563 = fmul fast float %2507, %2532
  %2564 = call float @dx.op.binary.f32(i32 36, float %2562, float %2563)  ; FMin(a,b)
  %2565 = call float @dx.op.binary.f32(i32 35, float %2559, float %2564)  ; FMax(a,b)
  %2566 = call float @dx.op.binary.f32(i32 35, float %2562, float %2563)  ; FMax(a,b)
  %2567 = call float @dx.op.binary.f32(i32 36, float %2561, float %2566)  ; FMin(a,b)
  %2568 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2565)  ; FMax(a,b)
  %2569 = fcmp fast ult float %2567, %2568
  br i1 %2569, label %2573, label %2570, !dx.controlflow.hints !47

; <label>:2570                                    ; preds = %2543
  %2571 = call float @dx.op.binary.f32(i32 36, float %2565, float %2567)  ; FMin(a,b)
  %2572 = call float @dx.op.binary.f32(i32 35, float %2565, float %2567)  ; FMax(a,b)
  br label %2573

; <label>:2573                                    ; preds = %2570, %2543, %2534
  %2574 = phi float [ %2541, %2534 ], [ %2571, %2570 ], [ 0.000000e+00, %2543 ]
  %2575 = phi float [ %2542, %2534 ], [ %2572, %2570 ], [ 0.000000e+00, %2543 ]
  %2576 = fcmp fast ogt float %2574, 0.000000e+00
  br i1 %2576, label %2580, label %2577, !dx.controlflow.hints !60

; <label>:2577                                    ; preds = %2573
  %2578 = fcmp fast ugt float %2575, 0.000000e+00
  br i1 %2578, label %2579, label %2580, !dx.controlflow.hints !61

; <label>:2579                                    ; preds = %2577
  br label %2580

; <label>:2580                                    ; preds = %2579, %2577, %2573, %2521
  %2581 = phi float [ %2522, %2521 ], [ 0.000000e+00, %2579 ], [ 0x47EFFFFFE0000000, %2577 ], [ %2574, %2573 ]
  %2582 = phi i32 [ %209, %2521 ], [ %209, %2579 ], [ 0, %2577 ], [ %209, %2573 ]
  %2583 = icmp ne i32 %2582, 0
  %2584 = zext i1 %2583 to i32
  %2585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %2586 = extractvalue %dx.types.CBufRet.f32 %2585, 2
  %2587 = call float @dx.op.binary.f32(i32 35, float %2581, float %2586)  ; FMax(a,b)
  %2588 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %2587)  ; FMin(a,b)
  br label %2589

; <label>:2589                                    ; preds = %2580, %2501
  %2590 = phi float [ %2588, %2580 ], [ 0x47EFFFFFE0000000, %2501 ]
  %2591 = phi i32 [ %2584, %2580 ], [ 0, %2501 ]
  %2592 = fsub fast float %2513, %571
  %2593 = fsub fast float %2515, %572
  %2594 = fmul fast float %2592, %576
  %2595 = fmul fast float %2593, %577
  %2596 = call float @dx.op.binary.f32(i32 36, float %2594, float %2595)  ; FMin(a,b)
  %2597 = fcmp fast olt float %2596, 0.000000e+00
  %2598 = call float @dx.op.binary.f32(i32 35, float %2594, float %2595)  ; FMax(a,b)
  %2599 = fcmp fast ogt float %2598, 1.000000e+00
  %2600 = or i1 %2597, %2599
  %2601 = fcmp fast olt float %2517, %585
  %2602 = or i1 %2600, %2601
  %2603 = fcmp fast ogt float %2517, %592
  %2604 = or i1 %2602, %2603
  %2605 = extractvalue %dx.types.CBufRet.f32 %575, 0
  br i1 %2604, label %2606, label %2634, !dx.controlflow.hints !67

; <label>:2606                                    ; preds = %2589
  %2607 = extractvalue %dx.types.CBufRet.f32 %575, 1
  %2608 = fsub fast float %571, %2513
  %2609 = fmul fast float %2608, %2505
  %2610 = fadd fast float %2608, %2605
  %2611 = fmul fast float %2610, %2505
  %2612 = call float @dx.op.binary.f32(i32 36, float %2609, float %2611)  ; FMin(a,b)
  %2613 = call float @dx.op.binary.f32(i32 35, float %2609, float %2611)  ; FMax(a,b)
  %2614 = fsub fast float %572, %2515
  %2615 = fmul fast float %2614, %2506
  %2616 = fadd fast float %2614, %2607
  %2617 = fmul fast float %2616, %2506
  %2618 = call float @dx.op.binary.f32(i32 36, float %2615, float %2617)  ; FMin(a,b)
  %2619 = call float @dx.op.binary.f32(i32 35, float %2612, float %2618)  ; FMax(a,b)
  %2620 = call float @dx.op.binary.f32(i32 35, float %2615, float %2617)  ; FMax(a,b)
  %2621 = call float @dx.op.binary.f32(i32 36, float %2613, float %2620)  ; FMin(a,b)
  %2622 = fsub fast float %585, %2517
  %2623 = fmul fast float %2622, %2507
  %2624 = fsub fast float %589, %2517
  %2625 = fadd fast float %2624, %591
  %2626 = fmul fast float %2625, %2507
  %2627 = call float @dx.op.binary.f32(i32 36, float %2623, float %2626)  ; FMin(a,b)
  %2628 = call float @dx.op.binary.f32(i32 35, float %2619, float %2627)  ; FMax(a,b)
  %2629 = call float @dx.op.binary.f32(i32 35, float %2623, float %2626)  ; FMax(a,b)
  %2630 = call float @dx.op.binary.f32(i32 36, float %2621, float %2629)  ; FMin(a,b)
  %2631 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2628)  ; FMax(a,b)
  %2632 = fcmp fast oge float %2630, %2631
  %2633 = select i1 %2632, float %2628, float 1.000000e+07
  br label %2649

; <label>:2634                                    ; preds = %2589
  %2635 = fsub fast float 1.000000e+00, %2595
  %2636 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %27, float %2594, float %2635, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2637 = extractvalue %dx.types.ResRet.f32 %2636, 0
  %2638 = extractvalue %dx.types.ResRet.f32 %2636, 1
  %2639 = extractvalue %dx.types.ResRet.f32 %2636, 2
  %2640 = extractvalue %dx.types.ResRet.f32 %2636, 3
  %2641 = fmul fast float %2605, 9.765625e-04
  %2642 = fcmp fast oeq float %2637, 0.000000e+00
  %2643 = fcmp ule float %2517, %2639
  %2644 = fcmp uge float %2517, %2638
  %2645 = or i1 %2644, %2643
  %2646 = or i1 %2642, %2645
  %2647 = zext i1 %2646 to i32
  %2648 = xor i32 %2647, 1
  br label %2649

; <label>:2649                                    ; preds = %2634, %2606
  %2650 = phi float [ %2633, %2606 ], [ %2641, %2634 ]
  %2651 = phi float [ %369, %2606 ], [ %2637, %2634 ]
  %2652 = phi float [ %370, %2606 ], [ %2638, %2634 ]
  %2653 = phi float [ %371, %2606 ], [ %2639, %2634 ]
  %2654 = phi float [ %372, %2606 ], [ %2640, %2634 ]
  %2655 = phi i32 [ 0, %2606 ], [ %2648, %2634 ]
  %2656 = icmp eq i32 %2655, 0
  %2657 = call float @dx.op.binary.f32(i32 35, float %2650, float %680)  ; FMax(a,b)
  %2658 = call float @dx.op.binary.f32(i32 36, float %2590, float %2657)  ; FMin(a,b)
  br i1 %683, label %2671, label %2659, !dx.controlflow.hints !71

; <label>:2659                                    ; preds = %2649
  %2660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2661 = extractvalue %dx.types.CBufRet.f32 %2660, 3
  %2662 = extractvalue %dx.types.CBufRet.f32 %2660, 2
  %2663 = fmul fast float %2661, %2509
  %2664 = fdiv fast float %2663, %2509
  %2665 = fadd fast float %2664, 1.000000e+00
  %2666 = call float @dx.op.unary.f32(i32 23, float %2665)  ; Log(value)
  %2667 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %2666)  ; FMin(a,b)
  %2668 = fmul fast float %2662, %2509
  %2669 = fmul fast float %2668, %2667
  %2670 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %2669)  ; FMin(a,b)
  br label %2671

; <label>:2671                                    ; preds = %2659, %2649
  %2672 = phi float [ %2670, %2659 ], [ 0x47EFFFFFE0000000, %2649 ]
  br i1 %698, label %2728, label %2673, !dx.controlflow.hints !72

; <label>:2673                                    ; preds = %2671
  %2674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %2675 = extractvalue %dx.types.CBufRet.f32 %2674, 0
  %2676 = extractvalue %dx.types.CBufRet.f32 %2674, 1
  %2677 = extractvalue %dx.types.CBufRet.f32 %2674, 2
  %2678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %2679 = extractvalue %dx.types.CBufRet.f32 %2678, 0
  %2680 = extractvalue %dx.types.CBufRet.f32 %2678, 1
  %2681 = extractvalue %dx.types.CBufRet.f32 %2678, 2
  %2682 = fsub fast float %2513, %2679
  %2683 = fsub fast float %2515, %2680
  %2684 = fsub fast float %2517, %2681
  %2685 = fmul fast float %2682, %2675
  %2686 = fmul fast float %2683, %2676
  %2687 = fmul fast float %2684, %2677
  %2688 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %2689 = extractvalue %dx.types.CBufRet.i32 %2688, 3
  %2690 = icmp eq i32 %2689, 0
  br i1 %2690, label %2694, label %2691, !dx.controlflow.hints !73

; <label>:2691                                    ; preds = %2673
  %2692 = call float @dx.op.unary.f32(i32 22, float %2685)  ; Frc(value)
  %2693 = call float @dx.op.unary.f32(i32 22, float %2686)  ; Frc(value)
  br label %2694

; <label>:2694                                    ; preds = %2691, %2673
  %2695 = phi float [ %2692, %2691 ], [ %2685, %2673 ]
  %2696 = phi float [ %2693, %2691 ], [ %2686, %2673 ]
  %2697 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %25, float %2695, float %2696, float %2687, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2698 = extractvalue %dx.types.ResRet.f32 %2697, 0
  %2699 = fmul fast float %2698, 2.000000e+00
  %2700 = fadd fast float %2699, -1.000000e+00
  %2701 = extractvalue %dx.types.CBufRet.f32 %2674, 3
  %2702 = fmul fast float %2700, %2701
  %2703 = fcmp fast olt float %2702, 0.000000e+00
  %2704 = fcmp fast oge float %2687, 0.000000e+00
  %2705 = fcmp fast ole float %2687, 1.000000e+00
  br i1 %2690, label %2708, label %2706, !dx.controlflow.hints !74

; <label>:2706                                    ; preds = %2694
  %2707 = and i1 %2704, %2705
  br label %2718

; <label>:2708                                    ; preds = %2694
  %2709 = fcmp fast oge float %2685, 0.000000e+00
  %2710 = fcmp fast oge float %2686, 0.000000e+00
  %2711 = and i1 %2709, %2710
  %2712 = and i1 %2704, %2711
  %2713 = fcmp fast ole float %2685, 1.000000e+00
  %2714 = fcmp fast ole float %2686, 1.000000e+00
  %2715 = and i1 %2713, %2714
  %2716 = and i1 %2705, %2715
  %2717 = and i1 %2712, %2716
  br label %2718

; <label>:2718                                    ; preds = %2708, %2706
  %2719 = phi i1 [ %2707, %2706 ], [ %2717, %2708 ]
  %2720 = and i1 %2703, %2719
  %2721 = call float @dx.op.unary.f32(i32 6, float %2702)  ; FAbs(value)
  %2722 = extractvalue %dx.types.CBufRet.f32 %679, 1
  %2723 = extractvalue %dx.types.CBufRet.f32 %679, 0
  %2724 = call float @dx.op.binary.f32(i32 35, float %2721, float %2723)  ; FMax(a,b)
  %2725 = select i1 %2720, float %2722, float %2724
  %2726 = zext i1 %2720 to i32
  %2727 = call float @dx.op.binary.f32(i32 36, float %2658, float %2725)  ; FMin(a,b)
  br label %2728

; <label>:2728                                    ; preds = %2718, %2671
  %2729 = phi float [ %2727, %2718 ], [ %2658, %2671 ]
  %2730 = phi i32 [ %2726, %2718 ], [ 0, %2671 ]
  br i1 %757, label %2902, label %2731, !dx.controlflow.hints !75

; <label>:2731                                    ; preds = %2728
  %2732 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2733 = extractvalue %dx.types.CBufRet.i32 %2732, 1
  %2734 = and i32 %2733, 1
  %2735 = icmp eq i32 %2734, 0
  br i1 %2735, label %2736, label %2893, !dx.controlflow.hints !76

; <label>:2736                                    ; preds = %2731
  %2737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %2738 = extractvalue %dx.types.CBufRet.f32 %2737, 2
  %2739 = extractvalue %dx.types.CBufRet.f32 %2737, 3
  %2740 = fmul fast float %2738, %2513
  %2741 = fmul fast float %2739, %2515
  %2742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %2743 = extractvalue %dx.types.CBufRet.f32 %2742, 0
  %2744 = extractvalue %dx.types.CBufRet.f32 %2742, 1
  %2745 = fadd fast float %2740, %2743
  %2746 = fadd fast float %2741, %2744
  %2747 = call float @dx.op.unary.f32(i32 7, float %2745)  ; Saturate(value)
  %2748 = call float @dx.op.unary.f32(i32 7, float %2746)  ; Saturate(value)
  %2749 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %27, float %2747, float %2748, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2750 = extractvalue %dx.types.ResRet.f32 %2749, 0
  %2751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2752 = extractvalue %dx.types.CBufRet.f32 %2751, 0
  %2753 = fmul fast float %2752, %2750
  %2754 = fsub fast float %2745, %2747
  %2755 = fsub fast float %2746, %2748
  %2756 = extractvalue %dx.types.CBufRet.f32 %2737, 0
  %2757 = extractvalue %dx.types.CBufRet.f32 %2737, 1
  %2758 = fmul fast float %2756, %2754
  %2759 = fmul fast float %2757, %2755
  %2760 = fmul fast float %2758, %2758
  %2761 = fmul fast float %2759, %2759
  %2762 = fadd fast float %2760, %2761
  %2763 = call float @dx.op.unary.f32(i32 24, float %2762)  ; Sqrt(value)
  %2764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %2765 = extractvalue %dx.types.CBufRet.f32 %2764, 3
  %2766 = fmul fast float %2765, %2763
  %2767 = call float @dx.op.unary.f32(i32 7, float %2766)  ; Saturate(value)
  %2768 = extractvalue %dx.types.CBufRet.f32 %2764, 2
  %2769 = fsub fast float %2768, %2753
  %2770 = fmul fast float %2769, %2767
  %2771 = extractvalue %dx.types.CBufRet.f32 %2751, 1
  %2772 = fsub fast float %2517, %2753
  %2773 = fsub fast float %2772, %2771
  %2774 = fsub fast float %2773, %2770
  %2775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2776 = extractvalue %dx.types.CBufRet.f32 %2775, 2
  %2777 = fsub fast float %2774, %2776
  %2778 = fcmp fast olt float %2777, 0.000000e+00
  %2779 = call float @dx.op.unary.f32(i32 6, float %2777)  ; FAbs(value)
  %2780 = extractvalue %dx.types.CBufRet.i32 %2732, 0
  %2781 = icmp eq i32 %2780, 0
  br i1 %2781, label %2835, label %2782

; <label>:2782                                    ; preds = %2736
  br label %2783

; <label>:2783                                    ; preds = %2822, %2782
  %2784 = phi i32 [ %2828, %2822 ], [ 1, %2782 ]
  %2785 = phi float [ %2830, %2822 ], [ 0x47EFFFFFE0000000, %2782 ]
  %2786 = phi i32 [ %2831, %2822 ], [ 0, %2782 ]
  %2787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %2788 = extractvalue %dx.types.CBufRet.f32 %2787, 1
  %2789 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2790 = extractvalue %dx.types.CBufRet.i32 %2789, 1
  %2791 = and i32 %2790, 8
  %2792 = icmp eq i32 %2791, 0
  %2793 = fcmp fast ogt float %2788, %2774
  %2794 = or i1 %2793, %2792
  %2795 = add i32 %2786, 171
  %2796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 %2795)  ; CBufferLoadLegacy(handle,regIndex)
  %2797 = extractvalue %dx.types.CBufRet.f32 %2796, 0
  %2798 = extractvalue %dx.types.CBufRet.f32 %2796, 1
  %2799 = extractvalue %dx.types.CBufRet.f32 %2796, 2
  br i1 %2794, label %2800, label %2806, !dx.controlflow.hints !77

; <label>:2800                                    ; preds = %2783
  %2801 = fsub fast float %2797, %2513
  %2802 = fsub fast float %2798, %2515
  %2803 = fmul fast float %2801, %2801
  %2804 = fmul fast float %2802, %2802
  %2805 = fadd fast float %2803, %2804
  br label %2822

; <label>:2806                                    ; preds = %2783
  %2807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2808 = extractvalue %dx.types.CBufRet.f32 %2807, 2
  %2809 = extractvalue %dx.types.CBufRet.f32 %2787, 2
  %2810 = fmul fast float %2809, %2808
  %2811 = fsub fast float %2810, %2788
  %2812 = fdiv fast float %2799, %2811
  %2813 = fsub fast float %2513, %2797
  %2814 = fsub fast float %2515, %2798
  %2815 = fsub fast float %2774, %2788
  %2816 = fmul fast float %2812, %2815
  %2817 = fmul fast float %2813, %2813
  %2818 = fmul fast float %2814, %2814
  %2819 = fadd fast float %2817, %2818
  %2820 = fmul fast float %2816, %2816
  %2821 = fadd fast float %2819, %2820
  br label %2822

; <label>:2822                                    ; preds = %2806, %2800
  %2823 = phi float [ %2805, %2800 ], [ %2821, %2806 ]
  %2824 = call float @dx.op.unary.f32(i32 24, float %2823)  ; Sqrt(value)
  %2825 = fsub float %2799, %2824
  %2826 = fcmp fast olt float %2825, 0.000000e+00
  %2827 = zext i1 %2826 to i32
  %2828 = and i32 %2827, %2784
  %2829 = call float @dx.op.unary.f32(i32 6, float %2825)  ; FAbs(value)
  %2830 = call float @dx.op.binary.f32(i32 36, float %2785, float %2829)  ; FMin(a,b)
  %2831 = add i32 %2786, 1
  %2832 = extractvalue %dx.types.CBufRet.i32 %2789, 0
  %2833 = icmp ult i32 %2831, %2832
  br i1 %2833, label %2783, label %2834

; <label>:2834                                    ; preds = %2822
  br label %2835

; <label>:2835                                    ; preds = %2834, %2736
  %2836 = phi i32 [ 1, %2736 ], [ %2828, %2834 ]
  %2837 = phi float [ 0x47EFFFFFE0000000, %2736 ], [ %2830, %2834 ]
  br label %2838

; <label>:2838                                    ; preds = %2838, %2835
  %2839 = phi i32 [ %2836, %2835 ], [ %2878, %2838 ]
  %2840 = phi float [ 0x47EFFFFFE0000000, %2835 ], [ %2880, %2838 ]
  %2841 = phi i32 [ 0, %2835 ], [ %2881, %2838 ]
  %2842 = add nuw nsw i32 %2841, 191
  %2843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 %2842)  ; CBufferLoadLegacy(handle,regIndex)
  %2844 = extractvalue %dx.types.CBufRet.f32 %2843, 0
  %2845 = extractvalue %dx.types.CBufRet.f32 %2843, 1
  %2846 = extractvalue %dx.types.CBufRet.f32 %2843, 2
  %2847 = add nuw nsw i32 %2841, 195
  %2848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 %2847)  ; CBufferLoadLegacy(handle,regIndex)
  %2849 = extractvalue %dx.types.CBufRet.f32 %2848, 0
  %2850 = extractvalue %dx.types.CBufRet.f32 %2848, 1
  %2851 = extractvalue %dx.types.CBufRet.f32 %2848, 2
  %2852 = fsub fast float %2513, %2844
  %2853 = fsub fast float %2515, %2845
  %2854 = fsub fast float %2774, %2846
  %2855 = call float @dx.op.unary.f32(i32 6, float %2852)  ; FAbs(value)
  %2856 = call float @dx.op.unary.f32(i32 6, float %2853)  ; FAbs(value)
  %2857 = call float @dx.op.unary.f32(i32 6, float %2854)  ; FAbs(value)
  %2858 = fsub fast float %2855, %2849
  %2859 = fsub fast float %2856, %2850
  %2860 = fsub fast float %2857, %2851
  %2861 = call float @dx.op.binary.f32(i32 35, float %2858, float 0.000000e+00)  ; FMax(a,b)
  %2862 = call float @dx.op.binary.f32(i32 35, float %2859, float 0.000000e+00)  ; FMax(a,b)
  %2863 = call float @dx.op.binary.f32(i32 35, float %2860, float 0.000000e+00)  ; FMax(a,b)
  %2864 = fmul fast float %2861, %2861
  %2865 = fmul fast float %2862, %2862
  %2866 = fadd fast float %2865, %2864
  %2867 = fmul fast float %2863, %2863
  %2868 = fadd fast float %2866, %2867
  %2869 = call float @dx.op.unary.f32(i32 24, float %2868)  ; Sqrt(value)
  %2870 = call float @dx.op.binary.f32(i32 35, float %2859, float %2860)  ; FMax(a,b)
  %2871 = call float @dx.op.binary.f32(i32 35, float %2858, float %2870)  ; FMax(a,b)
  %2872 = call float @dx.op.binary.f32(i32 36, float %2871, float 0.000000e+00)  ; FMin(a,b)
  %2873 = fadd fast float %2872, %2869
  %2874 = fsub fast float -0.000000e+00, %2873
  %2875 = fcmp ogt float %2873, -0.000000e+00
  %2876 = icmp ne i32 %2839, 0
  %2877 = and i1 %2876, %2875
  %2878 = zext i1 %2877 to i32
  %2879 = call float @dx.op.unary.f32(i32 6, float %2874)  ; FAbs(value)
  %2880 = call float @dx.op.binary.f32(i32 36, float %2840, float %2879)  ; FMin(a,b)
  %2881 = add nuw nsw i32 %2841, 1
  %2882 = icmp eq i32 %2881, 4
  br i1 %2882, label %2883, label %2838

; <label>:2883                                    ; preds = %2838
  %2884 = call float @dx.op.binary.f32(i32 36, float %2779, float %2880)  ; FMin(a,b)
  %2885 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2886 = extractvalue %dx.types.CBufRet.i32 %2885, 1
  %2887 = and i32 %2886, 2
  %2888 = icmp ne i32 %2887, 0
  %2889 = xor i1 %2877, %2888
  %2890 = call float @dx.op.binary.f32(i32 36, float %2884, float %2837)  ; FMin(a,b)
  %2891 = and i1 %2889, %2778
  %2892 = zext i1 %2891 to i32
  br label %2893

; <label>:2893                                    ; preds = %2883, %2731
  %2894 = phi i32 [ %367, %2731 ], [ %2892, %2883 ]
  %2895 = phi float [ 0.000000e+00, %2731 ], [ %2890, %2883 ]
  %2896 = phi float [ %2517, %2731 ], [ %2774, %2883 ]
  %2897 = icmp ne i32 %2894, 0
  %2898 = extractvalue %dx.types.CBufRet.f32 %679, 3
  %2899 = call float @dx.op.binary.f32(i32 35, float %2895, float %2898)  ; FMax(a,b)
  %2900 = call float @dx.op.binary.f32(i32 36, float %2672, float %2899)  ; FMin(a,b)
  %2901 = zext i1 %2897 to i32
  br label %2902

; <label>:2902                                    ; preds = %2893, %2728
  %2903 = phi i32 [ %2894, %2893 ], [ %367, %2728 ]
  %2904 = phi float [ %2896, %2893 ], [ %368, %2728 ]
  %2905 = phi float [ %2900, %2893 ], [ %2672, %2728 ]
  %2906 = phi i32 [ %2901, %2893 ], [ 0, %2728 ]
  %2907 = icmp eq i32 %2591, 0
  br i1 %2907, label %2981, label %2908, !dx.controlflow.hints !78

; <label>:2908                                    ; preds = %2902
  %2909 = fmul fast float %934, %2509
  %2910 = call float @dx.op.unary.f32(i32 23, float %2909)  ; Log(value)
  %2911 = fmul fast float %2910, 0x3FE62E4300000000
  %2912 = call float @dx.op.binary.f32(i32 35, float %2911, float 1.000000e+00)  ; FMax(a,b)
  %2913 = fmul fast float %2912, %2905
  %2914 = call float @dx.op.binary.f32(i32 36, float %2913, float %2729)  ; FMin(a,b)
  %2915 = call float @dx.op.binary.f32(i32 35, float %2914, float 0.000000e+00)  ; FMax(a,b)
  %2916 = fcmp fast ogt float %2915, 0x3F1A36E2E0000000
  %2917 = fadd fast float %2510, %2513
  %2918 = fadd fast float %2511, %2515
  %2919 = select i1 %2916, float %2917, float %2513
  %2920 = select i1 %2916, float %2918, float %2515
  %2921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %2922 = extractvalue %dx.types.CBufRet.f32 %2921, 0
  %2923 = extractvalue %dx.types.CBufRet.f32 %2921, 1
  %2924 = fsub fast float %2919, %2922
  %2925 = fsub fast float %2920, %2923
  %2926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %2927 = extractvalue %dx.types.CBufRet.f32 %2926, 0
  %2928 = extractvalue %dx.types.CBufRet.f32 %2926, 1
  %2929 = fmul fast float %2924, %2927
  %2930 = fmul fast float %2925, %2928
  %2931 = fsub fast float 1.000000e+00, %2930
  %2932 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %2933 = extractvalue %dx.types.CBufRet.i32 %2932, 3
  %2934 = icmp eq i32 %2933, 0
  br i1 %2934, label %2941, label %2935, !dx.controlflow.hints !62

; <label>:2935                                    ; preds = %2908
  %2936 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %2929, float %2931, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2937 = extractvalue %dx.types.ResRet.f32 %2936, 0
  %2938 = extractvalue %dx.types.ResRet.f32 %2936, 1
  %2939 = extractvalue %dx.types.ResRet.f32 %2936, 2
  %2940 = extractvalue %dx.types.ResRet.f32 %2936, 3
  br label %2947

; <label>:2941                                    ; preds = %2908
  %2942 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %27, float %2929, float %2931, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2943 = extractvalue %dx.types.ResRet.f32 %2942, 0
  %2944 = extractvalue %dx.types.ResRet.f32 %2942, 1
  %2945 = extractvalue %dx.types.ResRet.f32 %2942, 2
  %2946 = extractvalue %dx.types.ResRet.f32 %2942, 3
  br label %2947

; <label>:2947                                    ; preds = %2941, %2935
  %2948 = phi float [ %2937, %2935 ], [ %2943, %2941 ]
  %2949 = phi float [ %2938, %2935 ], [ %2944, %2941 ]
  %2950 = phi float [ %2939, %2935 ], [ %2945, %2941 ]
  %2951 = phi float [ %2940, %2935 ], [ %2946, %2941 ]
  %2952 = extractvalue %dx.types.CBufRet.f32 %2926, 3
  %2953 = fmul fast float %2952, %2949
  %2954 = fmul fast float %2953, %2948
  %2955 = fsub fast float %2953, %2954
  %2956 = fcmp fast ole float %2955, 0.000000e+00
  %2957 = extractvalue %dx.types.CBufRet.f32 %2921, 2
  %2958 = fadd fast float %2954, %2957
  %2959 = fmul fast float %2952, %2950
  %2960 = fadd fast float %2959, %2957
  %2961 = fdiv fast float 1.000000e+00, %2955
  %2962 = select i1 %2956, float 1.000000e+06, float %2961
  %2963 = fsub fast float %2517, %2958
  %2964 = fmul fast float %2962, %2963
  %2965 = call float @dx.op.unary.f32(i32 7, float %2964)  ; Saturate(value)
  %2966 = extractvalue %dx.types.CBufRet.f32 %2926, 2
  %2967 = fmul fast float %2966, %2965
  %2968 = fsub fast float %2966, %2967
  %2969 = fcmp fast olt float %2517, %2960
  %2970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %2971 = extractvalue %dx.types.CBufRet.f32 %2970, 3
  %2972 = fmul fast float %2971, 3.000000e+00
  %2973 = select i1 %2969, float %2972, float 3.000000e+00
  %2974 = fmul fast float %2968, %2973
  %2975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %2976 = extractvalue %dx.types.CBufRet.f32 %2975, 2
  %2977 = fmul fast float %2509, 0x3FD5555560000000
  %2978 = fmul fast float %2977, %2951
  %2979 = fmul fast float %2978, %2976
  %2980 = fmul fast float %2979, %2974
  br label %2981

; <label>:2981                                    ; preds = %2947, %2902
  %2982 = phi float [ %2980, %2947 ], [ 0.000000e+00, %2902 ]
  br i1 %683, label %3030, label %2983, !dx.controlflow.hints !80

; <label>:2983                                    ; preds = %2981
  %2984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %2985 = extractvalue %dx.types.CBufRet.f32 %2984, 0
  %2986 = fsub fast float %2985, %2517
  %2987 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2514, float %2516, float %2986)  ; Dot3(ax,ay,az,bx,by,bz)
  %2988 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2476, float %2477, float %2478)  ; Dot3(ax,ay,az,bx,by,bz)
  %2989 = fdiv fast float 1.000000e+00, %2988
  %2990 = fmul fast float %2989, %2987
  %2991 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2990)  ; FMax(a,b)
  %2992 = fcmp fast olt float %2478, 0.000000e+00
  %2993 = call float @dx.op.binary.f32(i32 36, float %2509, float %2991)  ; FMin(a,b)
  br i1 %2992, label %2995, label %2994, !dx.controlflow.hints !81

; <label>:2994                                    ; preds = %2983
  br label %2995

; <label>:2995                                    ; preds = %2994, %2983
  %2996 = phi float [ 0.000000e+00, %2994 ], [ %2993, %2983 ]
  %2997 = phi float [ %2993, %2994 ], [ %2509, %2983 ]
  %2998 = phi float [ %2993, %2994 ], [ 0.000000e+00, %2983 ]
  %2999 = phi float [ %2509, %2994 ], [ %2993, %2983 ]
  %3000 = fsub fast float %2997, %2996
  %3001 = extractvalue %dx.types.CBufRet.f32 %2984, 1
  %3002 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %3001)  ; FMin(a,b)
  %3003 = fsub fast float %2517, %2985
  %3004 = fmul fast float %3002, 0x3FF7154760000000
  %3005 = fmul fast float %3004, %3003
  %3006 = call float @dx.op.unary.f32(i32 21, float %3005)  ; Exp(value)
  %3007 = fmul fast float %2478, 0x3FF7154760000000
  %3008 = fmul fast float %3007, %2999
  %3009 = fmul fast float %3008, %3002
  %3010 = call float @dx.op.unary.f32(i32 21, float %3009)  ; Exp(value)
  %3011 = fmul fast float %3007, %2998
  %3012 = fmul fast float %3011, %3002
  %3013 = call float @dx.op.unary.f32(i32 21, float %3012)  ; Exp(value)
  %3014 = fsub fast float %3010, %3013
  %3015 = fmul fast float %3014, %3006
  %3016 = fmul fast float %3002, %2478
  %3017 = fdiv fast float %3015, %3016
  %3018 = fadd fast float %3000, %3017
  %3019 = call float @dx.op.unary.f32(i32 6, float %2478)  ; FAbs(value)
  %3020 = fcmp fast olt float %3019, 0x3F0FFB4800000000
  %3021 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3003)  ; FMax(a,b)
  %3022 = fmul fast float %3021, 0x3FF7154760000000
  %3023 = fmul fast float %3022, %3001
  %3024 = call float @dx.op.unary.f32(i32 21, float %3023)  ; Exp(value)
  %3025 = fmul fast float %3024, %2509
  %3026 = select i1 %3020, float %3025, float %3018
  %3027 = extractvalue %dx.types.CBufRet.f32 %2371, 1
  %3028 = fmul fast float %3026, %3027
  %3029 = fadd fast float %3028, %2982
  br label %3030

; <label>:3030                                    ; preds = %2995, %2981
  %3031 = phi float [ %3029, %2995 ], [ %2982, %2981 ]
  %3032 = icmp eq i32 %2730, 0
  br i1 %3032, label %3213, label %3033, !dx.controlflow.hints !82

; <label>:3033                                    ; preds = %3030
  %3034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %3035 = extractvalue %dx.types.CBufRet.f32 %3034, 3
  %3036 = fmul fast float %3035, %2509
  %3037 = fcmp fast oeq float %3036, 0.000000e+00
  br i1 %3037, label %3052, label %3038, !dx.controlflow.hints !83

; <label>:3038                                    ; preds = %3033
  %3039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %3040 = extractvalue %dx.types.CBufRet.f32 %3039, 3
  %3041 = fmul fast float %3040, %3036
  %3042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %3043 = extractvalue %dx.types.CBufRet.f32 %3042, 0
  %3044 = extractvalue %dx.types.CBufRet.f32 %3042, 1
  %3045 = extractvalue %dx.types.CBufRet.f32 %3042, 2
  %3046 = fmul fast float %3043, %3041
  %3047 = fmul fast float %3044, %3041
  %3048 = fmul fast float %3045, %3041
  %3049 = call float @dx.op.unary.f32(i32 23, float %3046)  ; Log(value)
  %3050 = call float @dx.op.unary.f32(i32 23, float %3047)  ; Log(value)
  %3051 = call float @dx.op.unary.f32(i32 23, float %3048)  ; Log(value)
  br label %3052

; <label>:3052                                    ; preds = %3038, %3033
  %3053 = phi float [ %3049, %3038 ], [ 0.000000e+00, %3033 ]
  %3054 = phi float [ %3050, %3038 ], [ 0.000000e+00, %3033 ]
  %3055 = phi float [ %3051, %3038 ], [ 0.000000e+00, %3033 ]
  %3056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %3057 = extractvalue %dx.types.CBufRet.f32 %3056, 0
  %3058 = extractvalue %dx.types.CBufRet.f32 %3056, 1
  %3059 = extractvalue %dx.types.CBufRet.f32 %3056, 2
  %3060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %3061 = extractvalue %dx.types.CBufRet.f32 %3060, 0
  %3062 = extractvalue %dx.types.CBufRet.f32 %3060, 1
  %3063 = extractvalue %dx.types.CBufRet.f32 %3060, 2
  %3064 = fsub fast float %2513, %3061
  %3065 = fsub fast float %2515, %3062
  %3066 = fsub fast float %2517, %3063
  %3067 = fmul fast float %3064, %3057
  %3068 = fmul fast float %3065, %3058
  %3069 = fmul fast float %3066, %3059
  %3070 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %3071 = extractvalue %dx.types.CBufRet.i32 %3070, 0
  %3072 = extractvalue %dx.types.CBufRet.i32 %3070, 1
  %3073 = uitofp i32 %3071 to float
  %3074 = uitofp i32 %3072 to float
  %3075 = fmul fast float %3067, %3073
  %3076 = fmul fast float %3068, %3074
  %3077 = fadd fast float %3075, 5.000000e-01
  %3078 = fadd fast float %3076, 5.000000e-01
  %3079 = call float @dx.op.unary.f32(i32 22, float %3077)  ; Frc(value)
  %3080 = call float @dx.op.unary.f32(i32 22, float %3078)  ; Frc(value)
  %3081 = call float @dx.op.unary.f32(i32 27, float %3077)  ; Round_ni(value)
  %3082 = call float @dx.op.unary.f32(i32 27, float %3078)  ; Round_ni(value)
  %3083 = fadd fast float %3081, 1.000000e+00
  %3084 = fadd fast float %3082, 1.000000e+00
  %3085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %3086 = extractvalue %dx.types.CBufRet.f32 %3085, 0
  %3087 = extractvalue %dx.types.CBufRet.f32 %3085, 1
  %3088 = fmul fast float %3086, %3083
  %3089 = fmul fast float %3087, %3084
  %3090 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %26, float %3088, float %3089, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3091 = extractvalue %dx.types.ResRet.f32 %3090, 0
  %3092 = extractvalue %dx.types.ResRet.f32 %3090, 1
  %3093 = extractvalue %dx.types.ResRet.f32 %3090, 2
  %3094 = extractvalue %dx.types.ResRet.f32 %3090, 3
  %3095 = extractvalue %dx.types.CBufRet.i32 %3070, 2
  %3096 = extractvalue %dx.types.CBufRet.f32 %3085, 2
  %3097 = uitofp i32 %3095 to float
  %3098 = fadd fast float %3097, -1.000000e+00
  %3099 = fmul fast float %3098, %3091
  %3100 = fmul fast float %3098, %3092
  %3101 = fmul fast float %3098, %3093
  %3102 = fmul fast float %3098, %3094
  %3103 = fadd fast float %3099, 5.000000e-01
  %3104 = fadd fast float %3100, 5.000000e-01
  %3105 = fadd fast float %3101, 5.000000e-01
  %3106 = fadd fast float %3102, 5.000000e-01
  %3107 = fptoui float %3103 to i32
  %3108 = fptoui float %3104 to i32
  %3109 = fptoui float %3105 to i32
  %3110 = fptoui float %3106 to i32
  %3111 = uitofp i32 %3107 to float
  %3112 = uitofp i32 %3108 to float
  %3113 = uitofp i32 %3109 to float
  %3114 = uitofp i32 %3110 to float
  %3115 = fadd fast float %3111, 5.000000e-01
  %3116 = fadd fast float %3112, 5.000000e-01
  %3117 = fadd fast float %3113, 5.000000e-01
  %3118 = fadd fast float %3114, 5.000000e-01
  %3119 = fmul fast float %3115, %3096
  %3120 = fmul fast float %3116, %3096
  %3121 = fmul fast float %3117, %3096
  %3122 = fmul fast float %3118, %3096
  %3123 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %27, float %3119, float %3069, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3124 = extractvalue %dx.types.ResRet.f32 %3123, 0
  %3125 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %27, float %3120, float %3069, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3126 = extractvalue %dx.types.ResRet.f32 %3125, 0
  %3127 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %27, float %3121, float %3069, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3128 = extractvalue %dx.types.ResRet.f32 %3127, 0
  %3129 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %27, float %3122, float %3069, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3130 = extractvalue %dx.types.ResRet.f32 %3129, 0
  %3131 = fsub fast float %3128, %3130
  %3132 = fmul fast float %3131, %3079
  %3133 = fadd fast float %3132, %3130
  %3134 = fsub fast float %3126, %3124
  %3135 = fmul fast float %3134, %3079
  %3136 = fadd fast float %3135, %3124
  %3137 = fsub fast float %3136, %3133
  %3138 = fmul fast float %3137, %3080
  %3139 = fadd fast float %3138, %3133
  %3140 = fcmp fast ogt float %3139, 0.000000e+00
  br i1 %3140, label %3141, label %3209, !dx.controlflow.hints !84

; <label>:3141                                    ; preds = %3052
  %3142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %3143 = extractvalue %dx.types.CBufRet.f32 %3142, 0
  %3144 = extractvalue %dx.types.CBufRet.f32 %3142, 1
  %3145 = extractvalue %dx.types.CBufRet.f32 %3142, 2
  %3146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %3147 = extractvalue %dx.types.CBufRet.f32 %3146, 0
  %3148 = extractvalue %dx.types.CBufRet.f32 %3146, 1
  %3149 = extractvalue %dx.types.CBufRet.f32 %3146, 2
  %3150 = fmul fast float %3065, %3057
  %3151 = fmul fast float %3066, %3057
  %3152 = fadd fast float %3067, %3147
  %3153 = fadd fast float %3150, %3148
  %3154 = fadd fast float %3151, %3149
  %3155 = fmul fast float %3152, %3143
  %3156 = fmul fast float %3153, %3143
  %3157 = fmul fast float %3154, %3143
  %3158 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %24, float %3155, float %3156, float %3157, float undef, i32 0, i32 0, i32 0, float %3053)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3159 = extractvalue %dx.types.ResRet.f32 %3158, 0
  %3160 = fmul fast float %3152, %3144
  %3161 = fmul fast float %3153, %3144
  %3162 = fmul fast float %3154, %3144
  %3163 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %24, float %3160, float %3161, float %3162, float undef, i32 0, i32 0, i32 0, float %3054)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3164 = extractvalue %dx.types.ResRet.f32 %3163, 1
  %3165 = fmul fast float %3152, %3145
  %3166 = fmul fast float %3153, %3145
  %3167 = fmul fast float %3154, %3145
  %3168 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %24, float %3165, float %3166, float %3167, float undef, i32 0, i32 0, i32 0, float %3055)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3169 = extractvalue %dx.types.ResRet.f32 %3168, 2
  %3170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %3171 = extractvalue %dx.types.CBufRet.f32 %3170, 1
  %3172 = fmul fast float %3164, %3159
  %3173 = fmul fast float %3172, %3169
  %3174 = call float @dx.op.unary.f32(i32 23, float %3173)  ; Log(value)
  %3175 = fmul fast float %3174, %3171
  %3176 = call float @dx.op.unary.f32(i32 21, float %3175)  ; Exp(value)
  %3177 = extractvalue %dx.types.CBufRet.f32 %3170, 2
  %3178 = fmul fast float %3139, %3139
  %3179 = fmul fast float %3178, %3176
  %3180 = fmul fast float %3179, %3177
  %3181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %3182 = extractvalue %dx.types.CBufRet.f32 %3181, 3
  %3183 = fmul fast float %3182, %3180
  %3184 = bitcast float %3183 to i32
  %3185 = sitofp i32 %3184 to float
  %3186 = fptosi float %3185 to i32
  %3187 = bitcast i32 %3186 to float
  %3188 = fsub fast float 1.000000e+00, %3180
  %3189 = bitcast float %3188 to i32
  %3190 = sitofp i32 %3189 to float
  %3191 = fptosi float %3190 to i32
  %3192 = bitcast i32 %3191 to float
  %3193 = fadd fast float %3187, %3192
  %3194 = bitcast float %3193 to i32
  %3195 = sub nsw i32 2129859010, %3194
  %3196 = bitcast i32 %3195 to float
  %3197 = fmul fast float %3196, %3187
  %3198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %3199 = extractvalue %dx.types.CBufRet.f32 %3198, 2
  %3200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %3201 = extractvalue %dx.types.CBufRet.f32 %3200, 0
  %3202 = fmul fast float %3197, %3201
  %3203 = fadd fast float %3202, 1.000000e+00
  %3204 = bitcast float %3203 to i32
  %3205 = sub nsw i32 2129859010, %3204
  %3206 = bitcast i32 %3205 to float
  %3207 = fmul fast float %3197, %3199
  %3208 = fmul fast float %3207, %3206
  br label %3209

; <label>:3209                                    ; preds = %3141, %3052
  %3210 = phi float [ %3208, %3141 ], [ %3139, %3052 ]
  %3211 = fmul fast float %3210, %2509
  %3212 = fadd fast float %3211, %3031
  br label %3213

; <label>:3213                                    ; preds = %3209, %3030
  %3214 = phi float [ %3212, %3209 ], [ %3031, %3030 ]
  br i1 %2656, label %3340, label %3215, !dx.controlflow.hints !85

; <label>:3215                                    ; preds = %3213
  %3216 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %3217 = extractvalue %dx.types.CBufRet.i32 %3216, 0
  %3218 = icmp ne i32 %3217, 0
  %3219 = zext i1 %3218 to i32
  %3220 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %3221 = extractvalue %dx.types.CBufRet.i32 %3220, 0
  %3222 = icmp eq i32 %3221, 0
  br i1 %3222, label %3256, label %3223

; <label>:3223                                    ; preds = %3215
  br label %3224

; <label>:3224                                    ; preds = %3251, %3223
  %3225 = phi i32 [ %3252, %3251 ], [ 0, %3223 ]
  %3226 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3225, i32 0)  ; BufferLoad(srv,index,wot)
  %3227 = extractvalue %dx.types.ResRet.f32 %3226, 0
  %3228 = extractvalue %dx.types.ResRet.f32 %3226, 1
  %3229 = extractvalue %dx.types.ResRet.f32 %3226, 2
  %3230 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3225, i32 16)  ; BufferLoad(srv,index,wot)
  %3231 = extractvalue %dx.types.ResRet.f32 %3230, 0
  %3232 = extractvalue %dx.types.ResRet.f32 %3230, 1
  %3233 = extractvalue %dx.types.ResRet.f32 %3230, 2
  %3234 = fsub fast float %3227, %3231
  %3235 = fsub fast float %3228, %3232
  %3236 = fsub fast float %3229, %3233
  %3237 = fadd fast float %3231, %3227
  %3238 = fadd fast float %3232, %3228
  %3239 = fadd fast float %3233, %3229
  %3240 = fcmp fast olt float %2513, %3234
  %3241 = fcmp fast olt float %2515, %3235
  %3242 = fcmp fast olt float %2517, %3236
  %3243 = or i1 %3240, %3241
  %3244 = or i1 %3242, %3243
  %3245 = fcmp fast ogt float %2513, %3237
  %3246 = fcmp fast ogt float %2515, %3238
  %3247 = fcmp fast ogt float %2517, %3239
  %3248 = or i1 %3245, %3246
  %3249 = or i1 %3247, %3248
  %3250 = or i1 %3244, %3249
  br i1 %3250, label %3251, label %3254, !dx.controlflow.hints !86

; <label>:3251                                    ; preds = %3224
  %3252 = add nuw i32 %3225, 1
  %3253 = icmp ult i32 %3252, %3221
  br i1 %3253, label %3224, label %3254

; <label>:3254                                    ; preds = %3251, %3224
  %3255 = phi i32 [ 255, %3251 ], [ %3225, %3224 ]
  br label %3256

; <label>:3256                                    ; preds = %3254, %3215
  %3257 = phi i32 [ 255, %3215 ], [ %3255, %3254 ]
  %3258 = icmp eq i32 %3257, 255
  br i1 %3258, label %3264, label %3259, !dx.controlflow.hints !87

; <label>:3259                                    ; preds = %3256
  %3260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3257, i32 156)  ; BufferLoad(srv,index,wot)
  %3261 = extractvalue %dx.types.ResRet.i32 %3260, 0
  %3262 = icmp ne i32 %3261, 0
  %3263 = zext i1 %3262 to i32
  br label %3264

; <label>:3264                                    ; preds = %3259, %3256
  %3265 = phi i32 [ %3263, %3259 ], [ %3219, %3256 ]
  %3266 = icmp eq i32 %3265, 0
  br i1 %3266, label %3267, label %3336, !dx.controlflow.hints !88

; <label>:3267                                    ; preds = %3264
  %3268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %3269 = extractvalue %dx.types.CBufRet.f32 %3268, 3
  %3270 = extractvalue %dx.types.CBufRet.f32 %588, 0
  %3271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %3272 = extractvalue %dx.types.CBufRet.f32 %3271, 2
  %3273 = extractvalue %dx.types.CBufRet.f32 %3271, 3
  br i1 %3258, label %3284, label %3274, !dx.controlflow.hints !89

; <label>:3274                                    ; preds = %3267
  %3275 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3257, i32 60)  ; BufferLoad(srv,index,wot)
  %3276 = extractvalue %dx.types.ResRet.f32 %3275, 0
  %3277 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3257, i32 64)  ; BufferLoad(srv,index,wot)
  %3278 = extractvalue %dx.types.ResRet.f32 %3277, 0
  %3279 = extractvalue %dx.types.ResRet.f32 %3277, 1
  %3280 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3257, i32 72)  ; BufferLoad(srv,index,wot)
  %3281 = extractvalue %dx.types.ResRet.f32 %3280, 0
  %3282 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3257, i32 96)  ; BufferLoad(srv,index,wot)
  %3283 = extractvalue %dx.types.ResRet.f32 %3282, 0
  br label %3284

; <label>:3284                                    ; preds = %3274, %3267
  %3285 = phi float [ %3276, %3274 ], [ %591, %3267 ]
  %3286 = phi float [ %3281, %3274 ], [ %589, %3267 ]
  %3287 = phi float [ %3283, %3274 ], [ %3270, %3267 ]
  %3288 = phi float [ %3278, %3274 ], [ %3272, %3267 ]
  %3289 = phi float [ %3279, %3274 ], [ %3273, %3267 ]
  %3290 = call float @dx.op.binary.f32(i32 35, float %2651, float 0.000000e+00)  ; FMax(a,b)
  %3291 = call float @dx.op.binary.f32(i32 36, float %3290, float 1.000000e+00)  ; FMin(a,b)
  %3292 = call float @dx.op.unary.f32(i32 24, float %3291)  ; Sqrt(value)
  %3293 = call float @dx.op.binary.f32(i32 35, float %2654, float 0x3F847AE140000000)  ; FMax(a,b)
  %3294 = fsub fast float %2652, %2517
  %3295 = fsub fast float %2517, %2653
  %3296 = call float @dx.op.binary.f32(i32 36, float %3295, float %3294)  ; FMin(a,b)
  %3297 = fdiv fast float %3296, %3293
  %3298 = call float @dx.op.unary.f32(i32 7, float %3297)  ; Saturate(value)
  %3299 = fsub fast float %2517, %3286
  %3300 = fdiv fast float %3299, %3285
  %3301 = call float @dx.op.unary.f32(i32 7, float %3300)  ; Saturate(value)
  %3302 = fsub fast float 1.000000e+00, %3301
  %3303 = fmul float %3298, %3302
  %3304 = fmul float %3303, %3303
  %3305 = fmul fast float %3292, %3269
  %3306 = fmul fast float %3305, %3304
  %3307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %3308 = extractvalue %dx.types.CBufRet.f32 %3307, 2
  %3309 = extractvalue %dx.types.CBufRet.f32 %3307, 1
  %3310 = fsub fast float %3306, %3309
  %3311 = fsub fast float %3308, %3309
  %3312 = fdiv fast float %3310, %3311
  %3313 = call float @dx.op.unary.f32(i32 7, float %3312)  ; Saturate(value)
  %3314 = fmul fast float %3313, %3287
  %3315 = fcmp fast ogt float %3289, 0.000000e+00
  br i1 %3315, label %3316, label %3336, !dx.controlflow.hints !90

; <label>:3316                                    ; preds = %3284
  %3317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3318 = extractvalue %dx.types.CBufRet.f32 %3317, 0
  %3319 = extractvalue %dx.types.CBufRet.f32 %3317, 1
  %3320 = extractvalue %dx.types.CBufRet.f32 %3317, 2
  %3321 = fsub fast float %2513, %3318
  %3322 = fsub fast float %2515, %3319
  %3323 = fsub fast float %2517, %3320
  %3324 = fmul fast float %3321, %3321
  %3325 = fmul fast float %3322, %3322
  %3326 = fadd fast float %3324, %3325
  %3327 = fmul fast float %3323, %3323
  %3328 = fadd fast float %3326, %3327
  %3329 = call float @dx.op.unary.f32(i32 24, float %3328)  ; Sqrt(value)
  %3330 = fsub fast float %3329, %3288
  %3331 = fsub fast float %3289, %3288
  %3332 = fdiv fast float %3330, %3331
  %3333 = call float @dx.op.unary.f32(i32 7, float %3332)  ; Saturate(value)
  %3334 = fmul fast float %3333, %3333
  %3335 = fmul fast float %3334, %3314
  br label %3336

; <label>:3336                                    ; preds = %3316, %3284, %3264
  %3337 = phi float [ 0.000000e+00, %3264 ], [ %3335, %3316 ], [ %3314, %3284 ]
  %3338 = fmul fast float %3337, %2509
  %3339 = fadd fast float %3338, %3214
  br label %3340

; <label>:3340                                    ; preds = %3336, %3213
  %3341 = phi float [ %3339, %3336 ], [ %3214, %3213 ]
  %3342 = icmp eq i32 %2906, 0
  br i1 %3342, label %3374, label %3343, !dx.controlflow.hints !91

; <label>:3343                                    ; preds = %3340
  %3344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %3345 = extractvalue %dx.types.CBufRet.f32 %3344, 1
  %3346 = fsub fast float %2509, %3345
  %3347 = extractvalue %dx.types.CBufRet.f32 %3344, 3
  %3348 = fmul fast float %3346, %3347
  %3349 = call float @dx.op.unary.f32(i32 7, float %3348)  ; Saturate(value)
  %3350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %3351 = extractvalue %dx.types.CBufRet.f32 %3350, 3
  %3352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %3353 = extractvalue %dx.types.CBufRet.f32 %3352, 2
  %3354 = fsub fast float %3353, %2904
  %3355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %3356 = extractvalue %dx.types.CBufRet.f32 %3355, 3
  %3357 = fmul fast float %3354, %3356
  %3358 = call float @dx.op.unary.f32(i32 7, float %3357)  ; Saturate(value)
  %3359 = fmul fast float %3358, %3351
  %3360 = extractvalue %dx.types.CBufRet.f32 %3355, 0
  %3361 = fsub fast float %2509, %3360
  %3362 = extractvalue %dx.types.CBufRet.f32 %3355, 1
  %3363 = fmul fast float %3361, %3362
  %3364 = call float @dx.op.unary.f32(i32 7, float %3363)  ; Saturate(value)
  %3365 = fsub fast float 1.000000e+00, %3349
  %3366 = fmul fast float %3364, %3365
  %3367 = fadd fast float %3366, %3349
  %3368 = extractvalue %dx.types.CBufRet.f32 %3344, 0
  %3369 = fsub fast float %3359, %3368
  %3370 = fmul fast float %3369, %3367
  %3371 = fadd fast float %3370, %3368
  %3372 = fmul fast float %3371, %2509
  %3373 = fadd fast float %3372, %3341
  br label %3374

; <label>:3374                                    ; preds = %3343, %3340
  %3375 = phi float [ %3373, %3343 ], [ %3341, %3340 ]
  %3376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %3377 = extractvalue %dx.types.CBufRet.f32 %3376, 3
  %3378 = fmul fast float %3375, 0xBFF7154760000000
  %3379 = fmul fast float %3378, %3377
  %3380 = call float @dx.op.unary.f32(i32 21, float %3379)  ; Exp(value)
  %3381 = call float @dx.op.unary.f32(i32 7, float %3380)  ; Saturate(value)
  %3382 = fmul fast float %3381, %2502
  %3383 = fmul fast float %3381, %2503
  %3384 = fmul fast float %3381, %2504
  %3385 = fadd fast float %3382, %2470
  %3386 = fadd fast float %3383, %2471
  %3387 = fadd fast float %3384, %2472
  %3388 = fsub fast float 1.000000e+00, %1539
  %3389 = fmul fast float %1531, %380
  %3390 = fmul fast float %3389, %3388
  %3391 = fmul fast float %3390, %3385
  %3392 = fmul fast float %1532, %380
  %3393 = fmul fast float %3392, %3388
  %3394 = fmul fast float %3393, %3386
  %3395 = fmul fast float %1533, %380
  %3396 = fmul fast float %3395, %3388
  %3397 = fmul fast float %3396, %3387
  %3398 = fadd fast float %3391, %381
  %3399 = fadd fast float %3394, %382
  %3400 = fadd fast float %3397, %383
  %3401 = fdiv fast float %1515, %944
  %3402 = fadd fast float %944, %387
  %3403 = fmul fast float %387, %387
  %3404 = fmul fast float %3402, %3402
  %3405 = fsub fast float %3403, %3404
  %3406 = fmul fast float %3405, -5.000000e-01
  %3407 = fmul fast float %3406, %3401
  %3408 = fadd fast float %3407, %379
  %3409 = fadd fast float %1515, %390
  %3410 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %3411 = extractvalue %dx.types.CBufRet.i32 %3410, 0
  %3412 = icmp eq i32 %3411, 0
  br i1 %3412, label %3439, label %3413, !dx.controlflow.hints !107

; <label>:3413                                    ; preds = %3374
  %3414 = icmp ne i32 %395, 0
  %3415 = zext i1 %3414 to i32
  %3416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %3417 = extractvalue %dx.types.CBufRet.f32 %3416, 2
  %3418 = extractvalue %dx.types.CBufRet.f32 %3416, 0
  %3419 = fsub fast float %3402, %3418
  %3420 = fmul fast float %3419, %3417
  %3421 = call float @dx.op.unary.f32(i32 7, float %3420)  ; Saturate(value)
  %3422 = fadd fast float %3421, -5.000000e-01
  %3423 = fmul fast float %3422, 2.000000e+00
  %3424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %3425 = extractvalue %dx.types.CBufRet.f32 %3424, 2
  %3426 = fcmp fast olt float %3423, %3425
  br i1 %3426, label %3427, label %3439, !dx.controlflow.hints !108

; <label>:3427                                    ; preds = %3413
  %3428 = fmul fast float %3423, %3423
  %3429 = fmul fast float %3388, %380
  %3430 = fmul fast float %3423, %3429
  %3431 = fmul fast float %3428, %3429
  %3432 = fmul fast float %3430, %3428
  %3433 = fmul fast float %3428, %3428
  %3434 = fmul fast float %3433, %3429
  %3435 = fadd fast float %3430, %391
  %3436 = fadd fast float %3431, %392
  %3437 = fadd fast float %3432, %393
  %3438 = fadd fast float %3434, %394
  br label %3439

; <label>:3439                                    ; preds = %3427, %3413, %3374
  %3440 = phi float [ %391, %3374 ], [ %3435, %3427 ], [ %391, %3413 ]
  %3441 = phi float [ %392, %3374 ], [ %3436, %3427 ], [ %392, %3413 ]
  %3442 = phi float [ %393, %3374 ], [ %3437, %3427 ], [ %393, %3413 ]
  %3443 = phi float [ %394, %3374 ], [ %3438, %3427 ], [ %394, %3413 ]
  %3444 = phi i32 [ %395, %3374 ], [ 1, %3427 ], [ %3415, %3413 ]
  %3445 = fmul fast float %1539, %380
  br label %3446

; <label>:3446                                    ; preds = %3439, %1534
  %3447 = phi float [ %1535, %1534 ], [ %3402, %3439 ]
  %3448 = phi i32 [ %367, %1534 ], [ %2903, %3439 ]
  %3449 = phi float [ %368, %1534 ], [ %2904, %3439 ]
  %3450 = phi float [ %369, %1534 ], [ %2651, %3439 ]
  %3451 = phi float [ %370, %1534 ], [ %2652, %3439 ]
  %3452 = phi float [ %371, %1534 ], [ %2653, %3439 ]
  %3453 = phi float [ %372, %1534 ], [ %2654, %3439 ]
  %3454 = phi float [ %379, %1534 ], [ %3408, %3439 ]
  %3455 = phi float [ %380, %1534 ], [ %3445, %3439 ]
  %3456 = phi float [ %381, %1534 ], [ %3398, %3439 ]
  %3457 = phi float [ %382, %1534 ], [ %3399, %3439 ]
  %3458 = phi float [ %383, %1534 ], [ %3400, %3439 ]
  %3459 = phi float [ %390, %1534 ], [ %3409, %3439 ]
  %3460 = phi float [ %391, %1534 ], [ %3440, %3439 ]
  %3461 = phi float [ %392, %1534 ], [ %3441, %3439 ]
  %3462 = phi float [ %393, %1534 ], [ %3442, %3439 ]
  %3463 = phi float [ %394, %1534 ], [ %3443, %3439 ]
  %3464 = phi i32 [ %395, %1534 ], [ %3444, %3439 ]
  %3465 = fmul fast float %944, %120
  %3466 = fmul fast float %944, %121
  %3467 = fmul fast float %944, %122
  %3468 = fadd fast float %3465, %384
  %3469 = fadd fast float %3466, %385
  %3470 = fadd fast float %3467, %386
  %3471 = fcmp fast olt float %3447, %344
  %3472 = extractvalue %dx.types.CBufRet.f32 %1520, 2
  %3473 = fcmp fast olt float %3472, %3455
  %3474 = and i1 %3471, %3473
  br i1 %3474, label %366, label %3475

; <label>:3475                                    ; preds = %3446
  br label %3476

; <label>:3476                                    ; preds = %3475, %337
  %3477 = phi float [ 0.000000e+00, %337 ], [ %3454, %3475 ]
  %3478 = phi float [ 1.000000e+00, %337 ], [ %3455, %3475 ]
  %3479 = phi float [ 0.000000e+00, %337 ], [ %3456, %3475 ]
  %3480 = phi float [ 0.000000e+00, %337 ], [ %3457, %3475 ]
  %3481 = phi float [ 0.000000e+00, %337 ], [ %3458, %3475 ]
  %3482 = phi float [ 0.000000e+00, %337 ], [ %3459, %3475 ]
  %3483 = phi float [ 0.000000e+00, %337 ], [ %3460, %3475 ]
  %3484 = phi float [ 0.000000e+00, %337 ], [ %3461, %3475 ]
  %3485 = phi float [ 0.000000e+00, %337 ], [ %3462, %3475 ]
  %3486 = phi float [ 0.000000e+00, %337 ], [ %3463, %3475 ]
  %3487 = phi i32 [ 0, %337 ], [ %3464, %3475 ]
  %3488 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %3489 = extractvalue %dx.types.CBufRet.i32 %3488, 0
  %3490 = icmp eq i32 %3489, 0
  br i1 %3490, label %3532, label %3491, !dx.controlflow.hints !109

; <label>:3491                                    ; preds = %3476
  %3492 = icmp eq i32 %3487, 0
  br i1 %3492, label %3531, label %3493, !dx.controlflow.hints !110

; <label>:3493                                    ; preds = %3491
  %3494 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %3495 = extractvalue %dx.types.CBufRet.i32 %3494, 2
  %3496 = icmp eq i32 %3495, 0
  br i1 %3496, label %3503, label %3497, !dx.controlflow.hints !111

; <label>:3497                                    ; preds = %3493
  %3498 = fsub fast float 1.000000e+00, %3478
  %3499 = fdiv fast float %3483, %3498
  %3500 = fdiv fast float %3484, %3498
  %3501 = fdiv fast float %3485, %3498
  %3502 = fdiv fast float %3486, %3498
  br label %3508

; <label>:3503                                    ; preds = %3493
  %3504 = fadd fast float %3483, %3478
  %3505 = fadd fast float %3484, %3478
  %3506 = fadd fast float %3485, %3478
  %3507 = fadd fast float %3486, %3478
  br label %3508

; <label>:3508                                    ; preds = %3503, %3497
  %3509 = phi float [ %3499, %3497 ], [ %3504, %3503 ]
  %3510 = phi float [ %3500, %3497 ], [ %3505, %3503 ]
  %3511 = phi float [ %3501, %3497 ], [ %3506, %3503 ]
  %3512 = phi float [ %3502, %3497 ], [ %3507, %3503 ]
  %3513 = call float @dx.op.binary.f32(i32 35, float %3509, float -1.000000e+00)  ; FMax(a,b)
  %3514 = call float @dx.op.binary.f32(i32 35, float %3510, float -1.000000e+00)  ; FMax(a,b)
  %3515 = call float @dx.op.binary.f32(i32 35, float %3511, float -1.000000e+00)  ; FMax(a,b)
  %3516 = call float @dx.op.binary.f32(i32 35, float %3512, float -1.000000e+00)  ; FMax(a,b)
  %3517 = call float @dx.op.binary.f32(i32 36, float %3513, float 1.000000e+00)  ; FMin(a,b)
  %3518 = call float @dx.op.binary.f32(i32 36, float %3514, float 1.000000e+00)  ; FMin(a,b)
  %3519 = call float @dx.op.binary.f32(i32 36, float %3515, float 1.000000e+00)  ; FMin(a,b)
  %3520 = call float @dx.op.binary.f32(i32 36, float %3516, float 1.000000e+00)  ; FMin(a,b)
  %3521 = fmul fast float %3517, 1.500000e+00
  %3522 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %3519, float %3521)  ; FMad(a,b,c)
  %3523 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %3518, float 0.000000e+00)  ; FMad(a,b,c)
  %3524 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %3520, float %3523)  ; FMad(a,b,c)
  %3525 = fmul fast float %3517, 0x3FEBB67AE0000000
  %3526 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %3519, float %3525)  ; FMad(a,b,c)
  %3527 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %3518, float 0.000000e+00)  ; FMad(a,b,c)
  %3528 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %3520, float %3527)  ; FMad(a,b,c)
  %3529 = fadd fast float %3522, 5.000000e-01
  %3530 = fadd fast float %3526, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %31, i32 %32, i32 0, float %3529, float %3524, float %3530, float %3528, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %3532

; <label>:3531                                    ; preds = %3491
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %31, i32 %32, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %3532

; <label>:3532                                    ; preds = %3531, %3508, %3476
  %3533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %3534 = extractvalue %dx.types.CBufRet.f32 %3533, 2
  %3535 = fsub fast float %3478, %3534
  %3536 = fdiv fast float %3535, %3534
  %3537 = call float @dx.op.unary.f32(i32 7, float %3536)  ; Saturate(value)
  %3538 = fmul fast float %3537, 2.000000e+00
  %3539 = fsub fast float 3.000000e+00, %3538
  %3540 = fmul fast float %3537, %3537
  %3541 = fmul fast float %3540, %3478
  %3542 = fmul fast float %3541, %3539
  %3543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %3544 = extractvalue %dx.types.CBufRet.f32 %3543, 0
  %3545 = extractvalue %dx.types.CBufRet.f32 %3543, 1
  %3546 = extractvalue %dx.types.CBufRet.f32 %3543, 2
  %3547 = call float @dx.op.dot3.f32(i32 55, float %120, float %121, float %122, float %3544, float %3545, float %3546)  ; Dot3(ax,ay,az,bx,by,bz)
  %3548 = fmul fast float %3547, %3477
  %3549 = fcmp fast ogt float %3482, 0.000000e+00
  %3550 = fdiv fast float 1.000000e+00, %3482
  %3551 = fmul fast float %3548, %3550
  %3552 = select i1 %3549, float %3551, float %131
  %3553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %3554 = extractvalue %dx.types.CBufRet.f32 %3553, 0
  %3555 = extractvalue %dx.types.CBufRet.f32 %3553, 1
  %3556 = extractvalue %dx.types.CBufRet.f32 %3553, 2
  %3557 = fmul fast float %3554, %84
  %3558 = fmul fast float %3555, %84
  %3559 = fmul fast float %3556, %84
  %3560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %3561 = extractvalue %dx.types.CBufRet.f32 %3560, 0
  %3562 = extractvalue %dx.types.CBufRet.f32 %3560, 1
  %3563 = extractvalue %dx.types.CBufRet.f32 %3560, 2
  %3564 = fmul fast float %3561, %85
  %3565 = fmul fast float %3562, %85
  %3566 = fmul fast float %3563, %85
  %3567 = fadd fast float %3564, %3557
  %3568 = fadd fast float %3565, %3558
  %3569 = fadd fast float %3566, %3559
  %3570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %3571 = extractvalue %dx.types.CBufRet.f32 %3570, 0
  %3572 = extractvalue %dx.types.CBufRet.f32 %3570, 1
  %3573 = extractvalue %dx.types.CBufRet.f32 %3570, 2
  %3574 = fadd fast float %3567, %3571
  %3575 = fadd fast float %3568, %3572
  %3576 = fadd fast float %3569, %3573
  %3577 = fmul fast float %3574, %3552
  %3578 = fmul fast float %3575, %3552
  %3579 = fmul fast float %3576, %3552
  %3580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %3581 = extractvalue %dx.types.CBufRet.f32 %3580, 0
  %3582 = extractvalue %dx.types.CBufRet.f32 %3580, 1
  %3583 = extractvalue %dx.types.CBufRet.f32 %3580, 2
  %3584 = extractvalue %dx.types.CBufRet.f32 %3580, 3
  %3585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %3586 = extractvalue %dx.types.CBufRet.f32 %3585, 0
  %3587 = extractvalue %dx.types.CBufRet.f32 %3585, 1
  %3588 = extractvalue %dx.types.CBufRet.f32 %3585, 2
  %3589 = extractvalue %dx.types.CBufRet.f32 %3585, 3
  %3590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %3591 = extractvalue %dx.types.CBufRet.f32 %3590, 0
  %3592 = extractvalue %dx.types.CBufRet.f32 %3590, 1
  %3593 = extractvalue %dx.types.CBufRet.f32 %3590, 2
  %3594 = extractvalue %dx.types.CBufRet.f32 %3590, 3
  %3595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %3596 = extractvalue %dx.types.CBufRet.f32 %3595, 0
  %3597 = extractvalue %dx.types.CBufRet.f32 %3595, 1
  %3598 = extractvalue %dx.types.CBufRet.f32 %3595, 2
  %3599 = extractvalue %dx.types.CBufRet.f32 %3595, 3
  %3600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %3601 = extractvalue %dx.types.CBufRet.f32 %3600, 3
  %3602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %3603 = extractvalue %dx.types.CBufRet.f32 %3602, 3
  %3604 = extractvalue %dx.types.CBufRet.f32 %3602, 0
  %3605 = extractvalue %dx.types.CBufRet.f32 %3602, 1
  %3606 = extractvalue %dx.types.CBufRet.f32 %3602, 2
  %3607 = fcmp fast olt float %3606, -5.000000e-01
  %3608 = call float @dx.op.dot3.f32(i32 55, float %3577, float %3578, float %3579, float %3577, float %3578, float %3579)  ; Dot3(ax,ay,az,bx,by,bz)
  %3609 = call float @dx.op.unary.f32(i32 25, float %3608)  ; Rsqrt(value)
  %3610 = fmul fast float %3609, %3608
  %3611 = fmul fast float %3609, %3577
  %3612 = fmul fast float %3609, %3578
  %3613 = fmul fast float %3609, %3579
  %3614 = fadd fast float %3610, %3584
  %3615 = call float @dx.op.dot3.f32(i32 55, float %3611, float %3612, float %3613, float %3581, float %3582, float %3583)  ; Dot3(ax,ay,az,bx,by,bz)
  %3616 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %3617 = extractvalue %dx.types.CBufRet.i32 %3616, 1
  %3618 = and i32 %3617, 1
  %3619 = icmp ne i32 %3618, 0
  %3620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %3621 = extractvalue %dx.types.CBufRet.f32 %3620, 2
  %3622 = fcmp fast ogt float %3621, 0.000000e+00
  %3623 = and i1 %3619, %3622
  br i1 %3623, label %3624, label %4030, !dx.controlflow.hints !112

; <label>:3624                                    ; preds = %3532
  %3625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %3626 = extractvalue %dx.types.CBufRet.f32 %3625, 3
  %3627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %3628 = extractvalue %dx.types.CBufRet.f32 %3627, 2
  %3629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3630 = extractvalue %dx.types.CBufRet.f32 %3629, 2
  %3631 = fsub fast float %3628, %3630
  %3632 = and i32 %3617, 2
  %3633 = extractvalue %dx.types.CBufRet.i32 %3616, 0
  %3634 = call i32 @dx.op.binary.i32(i32 40, i32 %3633, i32 3)  ; UMin(a,b)
  %3635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %3636 = extractvalue %dx.types.CBufRet.f32 %3635, 0
  %3637 = extractvalue %dx.types.CBufRet.f32 %3635, 1
  %3638 = extractvalue %dx.types.CBufRet.f32 %3629, 0
  %3639 = extractvalue %dx.types.CBufRet.f32 %3629, 1
  %3640 = fsub fast float %3636, %3638
  %3641 = fsub fast float %3637, %3639
  %3642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %3643 = extractvalue %dx.types.CBufRet.f32 %3642, 0
  %3644 = fcmp fast ogt float %3643, 0.000000e+00
  %3645 = fsub fast float -0.000000e+00, %3640
  %3646 = fsub fast float -0.000000e+00, %3641
  %3647 = call float @dx.op.dot2.f32(i32 54, float %3611, float %3612, float %3611, float %3612)  ; Dot2(ax,ay,bx,by)
  %3648 = call float @dx.op.dot2.f32(i32 54, float %3611, float %3612, float %3645, float %3646)  ; Dot2(ax,ay,bx,by)
  %3649 = fmul fast float %3648, 2.000000e+00
  %3650 = call float @dx.op.dot2.f32(i32 54, float %3645, float %3646, float %3645, float %3646)  ; Dot2(ax,ay,bx,by)
  %3651 = fmul fast float %3643, %3643
  %3652 = fsub fast float %3650, %3651
  %3653 = fmul fast float %3649, %3649
  %3654 = fmul fast float %3647, 4.000000e+00
  %3655 = fmul fast float %3654, %3652
  %3656 = fsub fast float %3653, %3655
  %3657 = fcmp fast ogt float %3656, 0.000000e+00
  br i1 %3657, label %3658, label %3673, !dx.controlflow.hints !113

; <label>:3658                                    ; preds = %3624
  %3659 = fcmp fast ogt float %3649, 0.000000e+00
  %3660 = call float @dx.op.unary.f32(i32 24, float %3656)  ; Sqrt(value)
  %3661 = fsub fast float -0.000000e+00, %3660
  %3662 = select i1 %3659, float %3660, float %3661
  %3663 = fadd fast float %3662, %3649
  %3664 = fmul float %3663, -5.000000e-01
  %3665 = fdiv fast float %3664, %3647
  %3666 = call float @dx.op.binary.f32(i32 35, float %3665, float 0.000000e+00)  ; FMax(a,b)
  %3667 = call float @dx.op.binary.f32(i32 36, float %3610, float %3666)  ; FMin(a,b)
  %3668 = fdiv fast float %3652, %3664
  %3669 = call float @dx.op.binary.f32(i32 35, float %3668, float 0.000000e+00)  ; FMax(a,b)
  %3670 = call float @dx.op.binary.f32(i32 36, float %3610, float %3669)  ; FMin(a,b)
  %3671 = call float @dx.op.binary.f32(i32 36, float %3667, float %3670)  ; FMin(a,b)
  %3672 = call float @dx.op.binary.f32(i32 35, float %3667, float %3670)  ; FMax(a,b)
  br label %3673

; <label>:3673                                    ; preds = %3658, %3624
  %3674 = phi float [ %3672, %3658 ], [ -1.000000e+00, %3624 ]
  %3675 = phi float [ %3671, %3658 ], [ -1.000000e+00, %3624 ]
  %3676 = phi i1 [ true, %3658 ], [ false, %3624 ]
  %3677 = and i1 %3644, %3676
  br i1 %3677, label %3678, label %3680, !dx.controlflow.hints !114

; <label>:3678                                    ; preds = %3673
  %3679 = fcmp fast oeq float %3675, %3674
  br i1 %3679, label %3983, label %3681, !dx.controlflow.hints !115

; <label>:3680                                    ; preds = %3673
  br i1 %3644, label %3983, label %3681, !dx.controlflow.hints !116

; <label>:3681                                    ; preds = %3680, %3678
  %3682 = phi float [ %3610, %3680 ], [ %3674, %3678 ]
  %3683 = phi float [ 0.000000e+00, %3680 ], [ %3675, %3678 ]
  %3684 = icmp ne i32 %3632, 0
  %3685 = fmul fast float %3682, %3613
  %3686 = fadd fast float %3685, %3626
  %3687 = fmul fast float %3686, %3682
  %3688 = select i1 %3684, float 0.000000e+00, float %3687
  %3689 = fcmp fast oeq float %3613, 0.000000e+00
  %3690 = fdiv fast float %3631, %3613
  %3691 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3690)  ; FMax(a,b)
  %3692 = select i1 %3689, float %3682, float %3691
  %3693 = call float @dx.op.binary.f32(i32 36, float %3682, float %3692)  ; FMin(a,b)
  %3694 = fcmp fast ogt float %3613, 0.000000e+00
  %3695 = fcmp fast olt float %3631, 0.000000e+00
  br i1 %3694, label %3696, label %3753, !dx.controlflow.hints !117

; <label>:3696                                    ; preds = %3681
  %3697 = icmp eq i32 %3632, 0
  br i1 %3695, label %3698, label %3742, !dx.controlflow.hints !118

; <label>:3698                                    ; preds = %3696
  %3699 = select i1 %3697, float %3682, float 0.000000e+00
  %3700 = fsub fast float -0.000000e+00, %3699
  %3701 = call float @dx.op.unary.f32(i32 6, float %3700)  ; FAbs(value)
  %3702 = fmul fast float %3699, %3613
  %3703 = fadd fast float %3702, %3626
  %3704 = fmul fast float %3701, %3703
  %3705 = fsub fast float %3688, %3704
  %3706 = fsub fast float %3682, %3701
  %3707 = select i1 %3697, float %3706, float 0.000000e+00
  %3708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %3709 = extractvalue %dx.types.CBufRet.f32 %3708, 0
  %3710 = extractvalue %dx.types.CBufRet.f32 %3708, 1
  %3711 = extractvalue %dx.types.CBufRet.f32 %3708, 2
  %3712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %3713 = extractvalue %dx.types.CBufRet.f32 %3712, 0
  %3714 = extractvalue %dx.types.CBufRet.f32 %3712, 1
  %3715 = extractvalue %dx.types.CBufRet.f32 %3712, 2
  %3716 = extractvalue %dx.types.CBufRet.f32 %3712, 3
  %3717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %3718 = extractvalue %dx.types.CBufRet.f32 %3717, 3
  %3719 = call float @dx.op.binary.f32(i32 36, float %3705, float %3718)  ; FMin(a,b)
  %3720 = fmul fast float %3716, %3707
  %3721 = call float @dx.op.unary.f32(i32 7, float %3720)  ; Saturate(value)
  %3722 = fsub fast float %3713, %3709
  %3723 = fsub fast float %3714, %3710
  %3724 = fsub fast float %3715, %3711
  %3725 = fmul fast float %3721, %3722
  %3726 = fmul fast float %3721, %3723
  %3727 = fmul fast float %3721, %3724
  %3728 = fadd fast float %3725, %3709
  %3729 = fadd fast float %3726, %3710
  %3730 = fadd fast float %3727, %3711
  %3731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %3732 = extractvalue %dx.types.CBufRet.f32 %3731, 0
  %3733 = extractvalue %dx.types.CBufRet.f32 %3731, 1
  %3734 = fadd fast float %3733, %3732
  %3735 = call float @dx.op.unary.f32(i32 7, float %3734)  ; Saturate(value)
  %3736 = extractvalue %dx.types.CBufRet.f32 %3731, 2
  %3737 = extractvalue %dx.types.CBufRet.f32 %3731, 3
  %3738 = fadd fast float %3737, %3736
  %3739 = call float @dx.op.unary.f32(i32 7, float %3738)  ; Saturate(value)
  %3740 = fmul fast float %3735, %3719
  %3741 = fmul fast float %3740, %3739
  br label %3983

; <label>:3742                                    ; preds = %3696
  br i1 %3697, label %3743, label %3764, !dx.controlflow.hints !119

; <label>:3743                                    ; preds = %3742
  %3744 = call float @dx.op.binary.f32(i32 36, float %3693, float %3683)  ; FMin(a,b)
  %3745 = fsub fast float %3693, %3744
  %3746 = fsub fast float %3745, %3682
  %3747 = call float @dx.op.unary.f32(i32 6, float %3746)  ; FAbs(value)
  %3748 = fadd fast float %3745, %3682
  %3749 = fmul fast float %3748, %3613
  %3750 = fadd fast float %3749, %3626
  %3751 = fmul fast float %3750, %3747
  %3752 = fsub fast float %3688, %3751
  br label %3764

; <label>:3753                                    ; preds = %3681
  br i1 %3695, label %3754, label %3764, !dx.controlflow.hints !120

; <label>:3754                                    ; preds = %3753
  %3755 = call float @dx.op.binary.f32(i32 35, float %3683, float %3693)  ; FMax(a,b)
  %3756 = icmp eq i32 %3632, 0
  %3757 = select i1 %3756, float %3693, float 0.000000e+00
  %3758 = fsub fast float -0.000000e+00, %3757
  %3759 = call float @dx.op.unary.f32(i32 6, float %3758)  ; FAbs(value)
  %3760 = fmul fast float %3757, %3613
  %3761 = fadd fast float %3760, %3626
  %3762 = fmul fast float %3759, %3761
  %3763 = fsub fast float %3688, %3762
  br label %3764

; <label>:3764                                    ; preds = %3754, %3753, %3743, %3742
  %3765 = phi float [ %3683, %3742 ], [ %3683, %3743 ], [ %3755, %3754 ], [ %3683, %3753 ]
  %3766 = phi float [ 0.000000e+00, %3742 ], [ %3747, %3743 ], [ %3759, %3754 ], [ 0.000000e+00, %3753 ]
  %3767 = phi float [ %3688, %3742 ], [ %3752, %3743 ], [ %3763, %3754 ], [ %3688, %3753 ]
  %3768 = phi float [ %3693, %3742 ], [ %3693, %3743 ], [ %3682, %3754 ], [ %3682, %3753 ]
  %3769 = getelementptr inbounds [3 x float], [3 x float]* %33, i32 0, i32 0
  store float -1.000000e+00, float* %3769, align 4, !tbaa !121, !noalias !125
  %3770 = getelementptr inbounds [3 x float], [3 x float]* %33, i32 0, i32 1
  store float -1.000000e+00, float* %3770, align 4, !tbaa !121, !noalias !125
  %3771 = getelementptr inbounds [3 x float], [3 x float]* %33, i32 0, i32 2
  store float -1.000000e+00, float* %3771, align 4, !tbaa !121, !noalias !125
  %3772 = getelementptr inbounds [3 x float], [3 x float]* %34, i32 0, i32 0
  store float -1.000000e+00, float* %3772, align 4, !tbaa !121, !noalias !125
  %3773 = getelementptr inbounds [3 x float], [3 x float]* %34, i32 0, i32 1
  store float -1.000000e+00, float* %3773, align 4, !tbaa !121, !noalias !125
  %3774 = getelementptr inbounds [3 x float], [3 x float]* %34, i32 0, i32 2
  store float -1.000000e+00, float* %3774, align 4, !tbaa !121, !noalias !125
  %3775 = icmp sgt i32 %3634, 0
  br i1 %3775, label %3776, label %3837

; <label>:3776                                    ; preds = %3764
  br label %3777

; <label>:3777                                    ; preds = %3826, %3776
  %3778 = phi i32 [ %3827, %3826 ], [ 0, %3776 ]
  %3779 = phi i32 [ %3828, %3826 ], [ 0, %3776 ]
  %3780 = add nuw i32 %3779, 171
  %3781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 %3780)  ; CBufferLoadLegacy(handle,regIndex)
  %3782 = extractvalue %dx.types.CBufRet.f32 %3781, 0
  %3783 = extractvalue %dx.types.CBufRet.f32 %3781, 1
  %3784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3785 = extractvalue %dx.types.CBufRet.f32 %3784, 0
  %3786 = extractvalue %dx.types.CBufRet.f32 %3784, 1
  %3787 = fsub fast float %3782, %3785
  %3788 = fsub fast float %3783, %3786
  %3789 = extractvalue %dx.types.CBufRet.f32 %3781, 2
  %3790 = fsub fast float -0.000000e+00, %3787
  %3791 = fsub fast float -0.000000e+00, %3788
  %3792 = call float @dx.op.dot2.f32(i32 54, float %3611, float %3612, float %3790, float %3791)  ; Dot2(ax,ay,bx,by)
  %3793 = fmul fast float %3792, 2.000000e+00
  %3794 = call float @dx.op.dot2.f32(i32 54, float %3790, float %3791, float %3790, float %3791)  ; Dot2(ax,ay,bx,by)
  %3795 = fmul fast float %3789, %3789
  %3796 = fsub fast float %3794, %3795
  %3797 = fmul fast float %3793, %3793
  %3798 = fmul fast float %3654, %3796
  %3799 = fsub fast float %3797, %3798
  %3800 = fcmp fast ogt float %3799, 0.000000e+00
  br i1 %3800, label %3801, label %3816, !dx.controlflow.hints !113

; <label>:3801                                    ; preds = %3777
  %3802 = fcmp fast ogt float %3793, 0.000000e+00
  %3803 = call float @dx.op.unary.f32(i32 24, float %3799)  ; Sqrt(value)
  %3804 = fsub fast float -0.000000e+00, %3803
  %3805 = select i1 %3802, float %3803, float %3804
  %3806 = fadd fast float %3805, %3793
  %3807 = fmul float %3806, -5.000000e-01
  %3808 = fdiv fast float %3807, %3647
  %3809 = call float @dx.op.binary.f32(i32 35, float %3808, float 0.000000e+00)  ; FMax(a,b)
  %3810 = call float @dx.op.binary.f32(i32 36, float %3682, float %3809)  ; FMin(a,b)
  %3811 = fdiv fast float %3796, %3807
  %3812 = call float @dx.op.binary.f32(i32 35, float %3811, float 0.000000e+00)  ; FMax(a,b)
  %3813 = call float @dx.op.binary.f32(i32 36, float %3682, float %3812)  ; FMin(a,b)
  %3814 = call float @dx.op.binary.f32(i32 36, float %3810, float %3813)  ; FMin(a,b)
  %3815 = call float @dx.op.binary.f32(i32 35, float %3810, float %3813)  ; FMax(a,b)
  br label %3816

; <label>:3816                                    ; preds = %3801, %3777
  %3817 = phi float [ %3815, %3801 ], [ -1.000000e+00, %3777 ]
  %3818 = phi float [ %3814, %3801 ], [ -1.000000e+00, %3777 ]
  %3819 = phi i1 [ true, %3801 ], [ false, %3777 ]
  br i1 %3819, label %3820, label %3826, !dx.controlflow.hints !136

; <label>:3820                                    ; preds = %3816
  %3821 = call float @dx.op.binary.f32(i32 35, float %3765, float %3818)  ; FMax(a,b)
  %3822 = getelementptr inbounds [3 x float], [3 x float]* %33, i32 0, i32 %3779
  store float %3821, float* %3822, align 4, !tbaa !121, !noalias !125
  %3823 = call float @dx.op.binary.f32(i32 35, float %3765, float %3817)  ; FMax(a,b)
  %3824 = getelementptr inbounds [3 x float], [3 x float]* %34, i32 0, i32 %3779
  store float %3823, float* %3824, align 4, !tbaa !121, !noalias !125
  %3825 = add nsw i32 %3778, 1
  br label %3826

; <label>:3826                                    ; preds = %3820, %3816
  %3827 = phi i32 [ %3825, %3820 ], [ %3778, %3816 ]
  %3828 = add nuw nsw i32 %3779, 1
  %3829 = icmp eq i32 %3828, %3634
  br i1 %3829, label %3830, label %3777

; <label>:3830                                    ; preds = %3826
  %3831 = load float, float* %3771, align 4, !tbaa !121, !alias.scope !137, !noalias !140
  %3832 = load float, float* %3770, align 4, !tbaa !121, !alias.scope !143, !noalias !144
  %3833 = load float, float* %3769, align 4, !tbaa !121, !alias.scope !145, !noalias !146
  %3834 = load float, float* %3774, align 4, !tbaa !121, !alias.scope !147, !noalias !150
  %3835 = load float, float* %3773, align 4, !tbaa !121, !alias.scope !153, !noalias !154
  %3836 = load float, float* %3772, align 4, !tbaa !121, !alias.scope !155, !noalias !156
  br label %3837

; <label>:3837                                    ; preds = %3830, %3764
  %3838 = phi float [ -1.000000e+00, %3764 ], [ %3836, %3830 ]
  %3839 = phi float [ -1.000000e+00, %3764 ], [ %3835, %3830 ]
  %3840 = phi float [ -1.000000e+00, %3764 ], [ %3834, %3830 ]
  %3841 = phi float [ -1.000000e+00, %3764 ], [ %3833, %3830 ]
  %3842 = phi float [ -1.000000e+00, %3764 ], [ %3832, %3830 ]
  %3843 = phi float [ -1.000000e+00, %3764 ], [ %3831, %3830 ]
  %3844 = phi i32 [ 0, %3764 ], [ %3827, %3830 ]
  %3845 = call float @dx.op.binary.f32(i32 36, float %3842, float %3843)  ; FMin(a,b)
  %3846 = call float @dx.op.binary.f32(i32 36, float %3841, float %3845)  ; FMin(a,b)
  %3847 = call float @dx.op.binary.f32(i32 35, float %3841, float %3842)  ; FMax(a,b)
  %3848 = call float @dx.op.binary.f32(i32 36, float %3847, float %3843)  ; FMin(a,b)
  %3849 = call float @dx.op.binary.f32(i32 36, float %3841, float %3842)  ; FMin(a,b)
  %3850 = call float @dx.op.binary.f32(i32 35, float %3849, float %3848)  ; FMax(a,b)
  %3851 = call float @dx.op.binary.f32(i32 35, float %3842, float %3843)  ; FMax(a,b)
  %3852 = call float @dx.op.binary.f32(i32 35, float %3841, float %3851)  ; FMax(a,b)
  store float %3846, float* %3769, align 4, !tbaa !121, !alias.scope !145, !noalias !146
  store float %3850, float* %3770, align 4, !tbaa !121, !alias.scope !143, !noalias !144
  store float %3852, float* %3771, align 4, !tbaa !121, !alias.scope !137, !noalias !140
  %3853 = call float @dx.op.binary.f32(i32 36, float %3839, float %3840)  ; FMin(a,b)
  %3854 = call float @dx.op.binary.f32(i32 36, float %3838, float %3853)  ; FMin(a,b)
  %3855 = call float @dx.op.binary.f32(i32 35, float %3838, float %3839)  ; FMax(a,b)
  %3856 = call float @dx.op.binary.f32(i32 36, float %3855, float %3840)  ; FMin(a,b)
  %3857 = call float @dx.op.binary.f32(i32 36, float %3838, float %3839)  ; FMin(a,b)
  %3858 = call float @dx.op.binary.f32(i32 35, float %3857, float %3856)  ; FMax(a,b)
  %3859 = call float @dx.op.binary.f32(i32 35, float %3839, float %3840)  ; FMax(a,b)
  %3860 = call float @dx.op.binary.f32(i32 35, float %3838, float %3859)  ; FMax(a,b)
  store float %3854, float* %3772, align 4, !tbaa !121, !alias.scope !155, !noalias !156
  store float %3858, float* %3773, align 4, !tbaa !121, !alias.scope !153, !noalias !154
  store float %3860, float* %3774, align 4, !tbaa !121, !alias.scope !147, !noalias !150
  %3861 = sub nsw i32 3, %3844
  %3862 = icmp sgt i32 %3861, 2
  br i1 %3862, label %3863, label %3901, !dx.controlflow.hints !157

; <label>:3863                                    ; preds = %3837
  %3864 = icmp eq i32 %3632, 0
  %3865 = fsub fast float %3682, %3766
  %3866 = select i1 %3864, float %3865, float %3766
  %3867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %3868 = extractvalue %dx.types.CBufRet.f32 %3867, 0
  %3869 = extractvalue %dx.types.CBufRet.f32 %3867, 1
  %3870 = extractvalue %dx.types.CBufRet.f32 %3867, 2
  %3871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %3872 = extractvalue %dx.types.CBufRet.f32 %3871, 0
  %3873 = extractvalue %dx.types.CBufRet.f32 %3871, 1
  %3874 = extractvalue %dx.types.CBufRet.f32 %3871, 2
  %3875 = extractvalue %dx.types.CBufRet.f32 %3871, 3
  %3876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %3877 = extractvalue %dx.types.CBufRet.f32 %3876, 3
  %3878 = call float @dx.op.binary.f32(i32 36, float %3767, float %3877)  ; FMin(a,b)
  %3879 = fmul fast float %3875, %3866
  %3880 = call float @dx.op.unary.f32(i32 7, float %3879)  ; Saturate(value)
  %3881 = fsub fast float %3872, %3868
  %3882 = fsub fast float %3873, %3869
  %3883 = fsub fast float %3874, %3870
  %3884 = fmul fast float %3880, %3881
  %3885 = fmul fast float %3880, %3882
  %3886 = fmul fast float %3880, %3883
  %3887 = fadd fast float %3884, %3868
  %3888 = fadd fast float %3885, %3869
  %3889 = fadd fast float %3886, %3870
  %3890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %3891 = extractvalue %dx.types.CBufRet.f32 %3890, 0
  %3892 = extractvalue %dx.types.CBufRet.f32 %3890, 1
  %3893 = fadd fast float %3892, %3891
  %3894 = call float @dx.op.unary.f32(i32 7, float %3893)  ; Saturate(value)
  %3895 = extractvalue %dx.types.CBufRet.f32 %3890, 2
  %3896 = extractvalue %dx.types.CBufRet.f32 %3890, 3
  %3897 = fadd fast float %3896, %3895
  %3898 = call float @dx.op.unary.f32(i32 7, float %3897)  ; Saturate(value)
  %3899 = fmul fast float %3894, %3878
  %3900 = fmul fast float %3899, %3898
  br label %3983

; <label>:3901                                    ; preds = %3837
  %3902 = getelementptr inbounds [3 x float], [3 x float]* %33, i32 0, i32 %3861
  %3903 = load float, float* %3902, align 4, !tbaa !121, !noalias !125
  %3904 = fcmp fast olt float %3903, %3768
  %3905 = icmp sgt i32 %3844, 0
  %3906 = and i1 %3905, %3904
  br i1 %3906, label %3907, label %3944

; <label>:3907                                    ; preds = %3901
  br label %3908

; <label>:3908                                    ; preds = %3937, %3907
  %3909 = phi float [ %3938, %3937 ], [ %3766, %3907 ]
  %3910 = phi float [ %3939, %3937 ], [ %3767, %3907 ]
  %3911 = phi float [ %3919, %3937 ], [ %3903, %3907 ]
  %3912 = phi i32 [ %3916, %3937 ], [ %3861, %3907 ]
  %3913 = getelementptr inbounds [3 x float], [3 x float]* %34, i32 0, i32 %3912
  %3914 = load float, float* %3913, align 4, !tbaa !121, !noalias !125
  %3915 = icmp slt i32 %3912, 2
  %3916 = add nsw i32 %3912, 1
  %3917 = getelementptr inbounds [3 x float], [3 x float]* %33, i32 0, i32 %3916
  %3918 = load float, float* %3917, align 4, !tbaa !121, !noalias !125
  %3919 = select i1 %3915, float %3918, float %3682
  %3920 = call float @dx.op.binary.f32(i32 36, float %3919, float %3914)  ; FMin(a,b)
  %3921 = call float @dx.op.binary.f32(i32 36, float %3768, float %3920)  ; FMin(a,b)
  %3922 = icmp eq i32 %3632, 0
  %3923 = fadd fast float %3921, %3911
  %3924 = fmul fast float %3923, %3613
  %3925 = fadd fast float %3924, %3626
  br i1 %3922, label %3931, label %3926, !dx.controlflow.hints !158

; <label>:3926                                    ; preds = %3908
  %3927 = fsub fast float %3921, %3911
  %3928 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3927)  ; FMax(a,b)
  %3929 = fmul fast float %3928, %3925
  %3930 = fadd fast float %3929, %3910
  br label %3937

; <label>:3931                                    ; preds = %3908
  %3932 = fsub fast float %3911, %3921
  %3933 = call float @dx.op.unary.f32(i32 6, float %3932)  ; FAbs(value)
  %3934 = fadd fast float %3933, %3909
  %3935 = fmul fast float %3933, %3925
  %3936 = fsub fast float %3910, %3935
  br label %3937

; <label>:3937                                    ; preds = %3931, %3926
  %3938 = phi float [ %3928, %3926 ], [ %3934, %3931 ]
  %3939 = phi float [ %3930, %3926 ], [ %3936, %3931 ]
  %3940 = fcmp fast olt float %3919, %3768
  %3941 = icmp slt i32 %3916, 3
  %3942 = and i1 %3941, %3940
  br i1 %3942, label %3908, label %3943

; <label>:3943                                    ; preds = %3937
  br label %3944

; <label>:3944                                    ; preds = %3943, %3901
  %3945 = phi float [ %3766, %3901 ], [ %3938, %3943 ]
  %3946 = phi float [ %3767, %3901 ], [ %3939, %3943 ]
  %3947 = fsub fast float %3682, %3945
  %3948 = select i1 %3684, float %3945, float %3947
  %3949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %3950 = extractvalue %dx.types.CBufRet.f32 %3949, 0
  %3951 = extractvalue %dx.types.CBufRet.f32 %3949, 1
  %3952 = extractvalue %dx.types.CBufRet.f32 %3949, 2
  %3953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %3954 = extractvalue %dx.types.CBufRet.f32 %3953, 0
  %3955 = extractvalue %dx.types.CBufRet.f32 %3953, 1
  %3956 = extractvalue %dx.types.CBufRet.f32 %3953, 2
  %3957 = extractvalue %dx.types.CBufRet.f32 %3953, 3
  %3958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %3959 = extractvalue %dx.types.CBufRet.f32 %3958, 3
  %3960 = call float @dx.op.binary.f32(i32 36, float %3946, float %3959)  ; FMin(a,b)
  %3961 = fmul fast float %3957, %3948
  %3962 = call float @dx.op.unary.f32(i32 7, float %3961)  ; Saturate(value)
  %3963 = fsub fast float %3954, %3950
  %3964 = fsub fast float %3955, %3951
  %3965 = fsub fast float %3956, %3952
  %3966 = fmul fast float %3962, %3963
  %3967 = fmul fast float %3962, %3964
  %3968 = fmul fast float %3962, %3965
  %3969 = fadd fast float %3966, %3950
  %3970 = fadd fast float %3967, %3951
  %3971 = fadd fast float %3968, %3952
  %3972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %3973 = extractvalue %dx.types.CBufRet.f32 %3972, 0
  %3974 = extractvalue %dx.types.CBufRet.f32 %3972, 1
  %3975 = fadd fast float %3974, %3973
  %3976 = call float @dx.op.unary.f32(i32 7, float %3975)  ; Saturate(value)
  %3977 = extractvalue %dx.types.CBufRet.f32 %3972, 2
  %3978 = extractvalue %dx.types.CBufRet.f32 %3972, 3
  %3979 = fadd fast float %3978, %3977
  %3980 = call float @dx.op.unary.f32(i32 7, float %3979)  ; Saturate(value)
  %3981 = fmul fast float %3976, %3960
  %3982 = fmul fast float %3981, %3980
  br label %3983

; <label>:3983                                    ; preds = %3944, %3863, %3698, %3680, %3678
  %3984 = phi float [ %3707, %3698 ], [ %3866, %3863 ], [ %3948, %3944 ], [ 0.000000e+00, %3678 ], [ 0.000000e+00, %3680 ]
  %3985 = phi float [ %3741, %3698 ], [ %3900, %3863 ], [ %3982, %3944 ], [ 0.000000e+00, %3678 ], [ 0.000000e+00, %3680 ]
  %3986 = phi float [ %3728, %3698 ], [ %3887, %3863 ], [ %3969, %3944 ], [ 0.000000e+00, %3678 ], [ 0.000000e+00, %3680 ]
  %3987 = phi float [ %3729, %3698 ], [ %3888, %3863 ], [ %3970, %3944 ], [ 0.000000e+00, %3678 ], [ 0.000000e+00, %3680 ]
  %3988 = phi float [ %3730, %3698 ], [ %3889, %3863 ], [ %3971, %3944 ], [ 0.000000e+00, %3678 ], [ 0.000000e+00, %3680 ]
  %3989 = fmul fast float %3621, %3985
  %3990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3991 = extractvalue %dx.types.CBufRet.f32 %3990, 2
  %3992 = fsub fast float %3628, %3991
  %3993 = fcmp fast olt float %3989, -2.000000e+01
  %3994 = call float @dx.op.unary.f32(i32 21, float %3989)  ; Exp(value)
  %3995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %3996 = extractvalue %dx.types.CBufRet.f32 %3995, 2
  %3997 = extractvalue %dx.types.CBufRet.f32 %3995, 3
  %3998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %3999 = extractvalue %dx.types.CBufRet.f32 %3998, 2
  %4000 = fmul fast float %3997, %3992
  %4001 = call float @dx.op.unary.f32(i32 7, float %4000)  ; Saturate(value)
  %4002 = fsub fast float 1.000000e+00, %4001
  %4003 = fmul fast float %3613, 5.000000e-01
  %4004 = fadd fast float %4003, 5.000000e-01
  %4005 = call float @dx.op.unary.f32(i32 7, float %4004)  ; Saturate(value)
  %4006 = fsub fast float 1.000000e+00, %4005
  %4007 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %4002)  ; FMax(a,b)
  %4008 = fdiv fast float %4006, %4007
  %4009 = fsub fast float %3992, %3579
  %4010 = call float @dx.op.unary.f32(i32 6, float %4009)  ; FAbs(value)
  %4011 = fmul fast float %4010, %3996
  %4012 = call float @dx.op.unary.f32(i32 7, float %4008)  ; Saturate(value)
  %4013 = fsub fast float 1.000000e+00, %4011
  %4014 = fmul fast float %4013, %4012
  %4015 = fadd fast float %4014, %4011
  %4016 = fmul fast float %3999, %3992
  %4017 = call float @dx.op.unary.f32(i32 7, float %4016)  ; Saturate(value)
  %4018 = fsub fast float 1.000000e+00, %4015
  %4019 = fmul fast float %4018, %4017
  %4020 = fadd fast float %4019, %4015
  %4021 = call float @dx.op.unary.f32(i32 7, float %4020)  ; Saturate(value)
  %4022 = fadd fast float %3994, -1.000000e+00
  %4023 = select i1 %3993, float -1.000000e+00, float %4022
  %4024 = fmul fast float %4021, %4023
  %4025 = fadd fast float %4024, 1.000000e+00
  %4026 = fsub fast float -0.000000e+00, %4024
  %4027 = fmul fast float %3986, %4026
  %4028 = fmul fast float %3987, %4026
  %4029 = fmul fast float %3988, %4026
  br label %4030

; <label>:4030                                    ; preds = %3983, %3532
  %4031 = phi float [ %3984, %3983 ], [ 0.000000e+00, %3532 ]
  %4032 = phi float [ %4025, %3983 ], [ 1.000000e+00, %3532 ]
  %4033 = phi float [ %4027, %3983 ], [ 0.000000e+00, %3532 ]
  %4034 = phi float [ %4028, %3983 ], [ 0.000000e+00, %3532 ]
  %4035 = phi float [ %4029, %3983 ], [ 0.000000e+00, %3532 ]
  %4036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %4037 = extractvalue %dx.types.CBufRet.f32 %4036, 1
  %4038 = fsub fast float 1.000000e+00, %4032
  %4039 = fmul fast float %4038, %3614
  %4040 = fmul fast float %4039, %4037
  %4041 = fsub fast float %3614, %4040
  br i1 %3607, label %4042, label %4071, !dx.controlflow.hints !159

; <label>:4042                                    ; preds = %4030
  %4043 = fmul fast float %3615, %3604
  %4044 = fadd fast float %4043, %3605
  %4045 = call float @dx.op.unary.f32(i32 7, float %4044)  ; Saturate(value)
  %4046 = fmul fast float %3586, %4041
  %4047 = fsub fast float -0.000000e+00, %4046
  %4048 = fmul fast float %3587, %4041
  %4049 = fsub fast float -0.000000e+00, %4048
  %4050 = call float @dx.op.unary.f32(i32 21, float %4047)  ; Exp(value)
  %4051 = call float @dx.op.unary.f32(i32 21, float %4049)  ; Exp(value)
  %4052 = call float @dx.op.binary.f32(i32 35, float %3594, float %4050)  ; FMax(a,b)
  %4053 = call float @dx.op.binary.f32(i32 35, float %3594, float %4051)  ; FMax(a,b)
  %4054 = fsub fast float %4053, %4052
  %4055 = fmul fast float %4054, %4045
  %4056 = fadd fast float %4055, %4052
  %4057 = call float @dx.op.unary.f32(i32 7, float %4056)  ; Saturate(value)
  %4058 = fsub fast float %3591, %3596
  %4059 = fsub fast float %3592, %3597
  %4060 = fsub fast float %3593, %3598
  %4061 = fmul fast float %4045, %4058
  %4062 = fmul fast float %4045, %4059
  %4063 = fmul fast float %4045, %4060
  %4064 = fadd fast float %4061, %3596
  %4065 = fadd fast float %4062, %3597
  %4066 = fadd fast float %4063, %3598
  %4067 = fsub fast float 1.000000e+00, %4057
  %4068 = fmul fast float %4067, %4064
  %4069 = fmul fast float %4067, %4065
  %4070 = fmul fast float %4067, %4066
  br label %4130

; <label>:4071                                    ; preds = %4030
  %4072 = fmul fast float %4041, %3603
  %4073 = call float @dx.op.unary.f32(i32 7, float %4072)  ; Saturate(value)
  %4074 = fsub fast float 2.000000e+00, %4073
  %4075 = fmul fast float %4073, 9.921875e-01
  %4076 = fmul fast float %4075, %4074
  %4077 = fadd fast float %4076, 3.906250e-03
  %4078 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %27, float %4077, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4079 = extractvalue %dx.types.ResRet.f32 %4078, 0
  %4080 = fsub fast float %4073, %4079
  %4081 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4080)  ; FMax(a,b)
  %4082 = fmul fast float %3589, %3579
  %4083 = call float @dx.op.unary.f32(i32 6, float %4082)  ; FAbs(value)
  %4084 = fcmp fast ogt float %4083, 0x3EB0C6F7A0000000
  br i1 %4084, label %4085, label %4091, !dx.controlflow.hints !160

; <label>:4085                                    ; preds = %4071
  %4086 = fmul fast float %4082, 0xBFF7154760000000
  %4087 = call float @dx.op.unary.f32(i32 21, float %4086)  ; Exp(value)
  %4088 = fsub fast float 1.000000e+00, %4087
  %4089 = fdiv fast float %4088, %4082
  %4090 = fmul fast float %4089, %3599
  br label %4091

; <label>:4091                                    ; preds = %4085, %4071
  %4092 = phi float [ %4090, %4085 ], [ %3599, %4071 ]
  %4093 = fadd fast float %4092, %3601
  %4094 = fmul fast float %4093, %4081
  %4095 = fmul fast float %3586, %4094
  %4096 = fsub fast float -0.000000e+00, %4095
  %4097 = fmul fast float %3587, %4094
  %4098 = fsub fast float -0.000000e+00, %4097
  %4099 = fmul fast float %3588, %4094
  %4100 = fsub fast float -0.000000e+00, %4099
  %4101 = call float @dx.op.unary.f32(i32 21, float %4096)  ; Exp(value)
  %4102 = call float @dx.op.unary.f32(i32 21, float %4098)  ; Exp(value)
  %4103 = call float @dx.op.unary.f32(i32 21, float %4100)  ; Exp(value)
  %4104 = fmul fast float %3615, %3615
  %4105 = fadd fast float %4104, 1.000000e+00
  %4106 = fmul fast float %4105, 0x3FAE8EC8A0000000
  %4107 = fmul fast float %4106, %3596
  %4108 = fmul fast float %4106, %3597
  %4109 = fmul fast float %4106, %3598
  %4110 = fmul fast float %3615, %3594
  %4111 = fsub fast float 1.000000e+00, %4110
  %4112 = fmul fast float %3594, %3594
  %4113 = fsub fast float 1.000000e+00, %4112
  %4114 = fmul fast float %4113, 0x3FB45F3060000000
  %4115 = fmul fast float %4111, %4111
  %4116 = fdiv fast float 1.000000e+00, %4115
  %4117 = fmul fast float %4114, %4116
  %4118 = fmul fast float %4117, %3591
  %4119 = fmul fast float %4117, %3592
  %4120 = fmul fast float %4117, %3593
  %4121 = fadd fast float %4118, %4107
  %4122 = fadd fast float %4119, %4108
  %4123 = fadd fast float %4120, %4109
  %4124 = fsub fast float 1.000000e+00, %4101
  %4125 = fsub fast float 1.000000e+00, %4102
  %4126 = fsub fast float 1.000000e+00, %4103
  %4127 = fmul fast float %4121, %4124
  %4128 = fmul fast float %4122, %4125
  %4129 = fmul fast float %4123, %4126
  br label %4130

; <label>:4130                                    ; preds = %4091, %4042
  %4131 = phi float [ %4068, %4042 ], [ %4127, %4091 ]
  %4132 = phi float [ %4069, %4042 ], [ %4128, %4091 ]
  %4133 = phi float [ %4070, %4042 ], [ %4129, %4091 ]
  %4134 = phi float [ %4057, %4042 ], [ %4101, %4091 ]
  %4135 = phi float [ %4057, %4042 ], [ %4102, %4091 ]
  %4136 = phi float [ %4057, %4042 ], [ %4103, %4091 ]
  br i1 %3623, label %4137, label %4335, !dx.controlflow.hints !161

; <label>:4137                                    ; preds = %4130
  %4138 = extractvalue %dx.types.CBufRet.f32 %4036, 0
  %4139 = fmul fast float %4138, %4038
  %4140 = fsub fast float %4033, %4131
  %4141 = fsub fast float %4034, %4132
  %4142 = fsub fast float %4035, %4133
  %4143 = fmul fast float %4139, %4140
  %4144 = fmul fast float %4139, %4141
  %4145 = fmul fast float %4139, %4142
  %4146 = fadd fast float %4143, %4131
  %4147 = fadd fast float %4144, %4132
  %4148 = fadd fast float %4145, %4133
  %4149 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %4134)  ; FMax(a,b)
  %4150 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %4135)  ; FMax(a,b)
  %4151 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %4136)  ; FMax(a,b)
  %4152 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %4032)  ; FMax(a,b)
  %4153 = call float @dx.op.binary.f32(i32 35, float %4031, float %4041)  ; FMax(a,b)
  %4154 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %4153)  ; FMax(a,b)
  %4155 = fdiv fast float %4031, %4154
  %4156 = call float @dx.op.unary.f32(i32 7, float %4155)  ; Saturate(value)
  %4157 = fdiv fast float %4041, %4154
  %4158 = call float @dx.op.unary.f32(i32 7, float %4157)  ; Saturate(value)
  %4159 = fcmp fast une float %4152, 1.000000e+00
  br i1 %4159, label %4160, label %4173, !dx.controlflow.hints !162

; <label>:4160                                    ; preds = %4137
  %4161 = call float @dx.op.unary.f32(i32 23, float %4152)  ; Log(value)
  %4162 = fmul fast float %4161, 0x3FE62E4300000000
  %4163 = fmul fast float %4033, %4162
  %4164 = fsub fast float -0.000000e+00, %4163
  %4165 = fmul fast float %4034, %4162
  %4166 = fsub fast float -0.000000e+00, %4165
  %4167 = fmul fast float %4035, %4162
  %4168 = fsub fast float -0.000000e+00, %4167
  %4169 = fsub fast float 1.000000e+00, %4152
  %4170 = fdiv fast float %4164, %4169
  %4171 = fdiv fast float %4166, %4169
  %4172 = fdiv fast float %4168, %4169
  br label %4173

; <label>:4173                                    ; preds = %4160, %4137
  %4174 = phi float [ %4170, %4160 ], [ %4033, %4137 ]
  %4175 = phi float [ %4171, %4160 ], [ %4034, %4137 ]
  %4176 = phi float [ %4172, %4160 ], [ %4035, %4137 ]
  %4177 = phi float [ %4162, %4160 ], [ 0.000000e+00, %4137 ]
  %4178 = fcmp fast une float %4149, 1.000000e+00
  br i1 %4178, label %4179, label %4186, !dx.controlflow.hints !163

; <label>:4179                                    ; preds = %4173
  %4180 = call float @dx.op.unary.f32(i32 23, float %4149)  ; Log(value)
  %4181 = fmul fast float %4180, 0x3FE62E4300000000
  %4182 = fmul fast float %4146, %4181
  %4183 = fsub fast float -0.000000e+00, %4182
  %4184 = fsub fast float 1.000000e+00, %4149
  %4185 = fdiv fast float %4183, %4184
  br label %4186

; <label>:4186                                    ; preds = %4179, %4173
  %4187 = phi float [ %4185, %4179 ], [ %4146, %4173 ]
  %4188 = phi float [ %4181, %4179 ], [ 0.000000e+00, %4173 ]
  %4189 = fcmp fast une float %4150, 1.000000e+00
  br i1 %4189, label %4190, label %4197, !dx.controlflow.hints !163

; <label>:4190                                    ; preds = %4186
  %4191 = call float @dx.op.unary.f32(i32 23, float %4150)  ; Log(value)
  %4192 = fmul fast float %4191, 0x3FE62E4300000000
  %4193 = fmul fast float %4147, %4192
  %4194 = fsub fast float -0.000000e+00, %4193
  %4195 = fsub fast float 1.000000e+00, %4150
  %4196 = fdiv fast float %4194, %4195
  br label %4197

; <label>:4197                                    ; preds = %4190, %4186
  %4198 = phi float [ %4196, %4190 ], [ %4147, %4186 ]
  %4199 = phi float [ %4192, %4190 ], [ 0.000000e+00, %4186 ]
  %4200 = fcmp fast une float %4151, 1.000000e+00
  br i1 %4200, label %4201, label %4208, !dx.controlflow.hints !163

; <label>:4201                                    ; preds = %4197
  %4202 = call float @dx.op.unary.f32(i32 23, float %4151)  ; Log(value)
  %4203 = fmul fast float %4202, 0x3FE62E4300000000
  %4204 = fmul fast float %4148, %4203
  %4205 = fsub fast float -0.000000e+00, %4204
  %4206 = fsub fast float 1.000000e+00, %4151
  %4207 = fdiv fast float %4205, %4206
  br label %4208

; <label>:4208                                    ; preds = %4201, %4197
  %4209 = phi float [ %4207, %4201 ], [ %4148, %4197 ]
  %4210 = phi float [ %4203, %4201 ], [ 0.000000e+00, %4197 ]
  %4211 = fmul fast float %4174, %4158
  %4212 = fmul fast float %4175, %4158
  %4213 = fmul fast float %4176, %4158
  %4214 = fmul fast float %4177, %4158
  %4215 = fmul fast float %4187, %4156
  %4216 = fmul fast float %4198, %4156
  %4217 = fmul fast float %4209, %4156
  %4218 = fmul fast float %4188, %4156
  %4219 = fmul fast float %4199, %4156
  %4220 = fmul fast float %4210, %4156
  %4221 = fadd fast float %4215, %4211
  %4222 = fadd fast float %4216, %4212
  %4223 = fadd fast float %4217, %4213
  %4224 = fadd fast float %4218, %4214
  %4225 = fadd fast float %4219, %4214
  %4226 = fadd fast float %4220, %4214
  %4227 = fcmp fast une float %4224, 0.000000e+00
  br i1 %4227, label %4228, label %4235, !dx.controlflow.hints !164

; <label>:4228                                    ; preds = %4208
  %4229 = fmul fast float %4224, 0x3FF7154760000000
  %4230 = call float @dx.op.unary.f32(i32 21, float %4229)  ; Exp(value)
  %4231 = fsub fast float 1.000000e+00, %4230
  %4232 = fmul fast float %4221, %4231
  %4233 = fsub fast float -0.000000e+00, %4232
  %4234 = fdiv fast float %4233, %4224
  br label %4235

; <label>:4235                                    ; preds = %4228, %4208
  %4236 = phi float [ %4230, %4228 ], [ 1.000000e+00, %4208 ]
  %4237 = phi float [ %4234, %4228 ], [ %4221, %4208 ]
  %4238 = fcmp fast une float %4225, 0.000000e+00
  br i1 %4238, label %4239, label %4246, !dx.controlflow.hints !164

; <label>:4239                                    ; preds = %4235
  %4240 = fmul fast float %4225, 0x3FF7154760000000
  %4241 = call float @dx.op.unary.f32(i32 21, float %4240)  ; Exp(value)
  %4242 = fsub fast float 1.000000e+00, %4241
  %4243 = fmul fast float %4222, %4242
  %4244 = fsub fast float -0.000000e+00, %4243
  %4245 = fdiv fast float %4244, %4225
  br label %4246

; <label>:4246                                    ; preds = %4239, %4235
  %4247 = phi float [ %4241, %4239 ], [ 1.000000e+00, %4235 ]
  %4248 = phi float [ %4245, %4239 ], [ %4222, %4235 ]
  %4249 = fcmp fast une float %4226, 0.000000e+00
  br i1 %4249, label %4250, label %4257, !dx.controlflow.hints !164

; <label>:4250                                    ; preds = %4246
  %4251 = fmul fast float %4226, 0x3FF7154760000000
  %4252 = call float @dx.op.unary.f32(i32 21, float %4251)  ; Exp(value)
  %4253 = fsub fast float 1.000000e+00, %4252
  %4254 = fmul fast float %4223, %4253
  %4255 = fsub fast float -0.000000e+00, %4254
  %4256 = fdiv fast float %4255, %4226
  br label %4257

; <label>:4257                                    ; preds = %4250, %4246
  %4258 = phi float [ %4252, %4250 ], [ 1.000000e+00, %4246 ]
  %4259 = phi float [ %4256, %4250 ], [ %4223, %4246 ]
  %4260 = fcmp fast ogt float %4156, %4158
  br i1 %4260, label %4261, label %4281, !dx.controlflow.hints !165

; <label>:4261                                    ; preds = %4257
  %4262 = fsub fast float 1.000000e+00, %4158
  %4263 = fmul fast float %4174, %4262
  %4264 = fmul fast float %4175, %4262
  %4265 = fmul fast float %4176, %4262
  %4266 = fmul fast float %4177, %4262
  %4267 = fcmp fast une float %4266, 0.000000e+00
  br i1 %4267, label %4268, label %4319, !dx.controlflow.hints !166

; <label>:4268                                    ; preds = %4261
  %4269 = fmul fast float %4266, 0x3FF7154760000000
  %4270 = call float @dx.op.unary.f32(i32 21, float %4269)  ; Exp(value)
  %4271 = fsub fast float 1.000000e+00, %4270
  %4272 = fmul fast float %4263, %4271
  %4273 = fsub fast float -0.000000e+00, %4272
  %4274 = fmul fast float %4264, %4271
  %4275 = fsub fast float -0.000000e+00, %4274
  %4276 = fmul fast float %4265, %4271
  %4277 = fsub fast float -0.000000e+00, %4276
  %4278 = fdiv fast float %4273, %4266
  %4279 = fdiv fast float %4275, %4266
  %4280 = fdiv fast float %4277, %4266
  br label %4319

; <label>:4281                                    ; preds = %4257
  %4282 = fsub fast float 1.000000e+00, %4156
  %4283 = fmul fast float %4187, %4282
  %4284 = fmul fast float %4198, %4282
  %4285 = fmul fast float %4209, %4282
  %4286 = fmul fast float %4188, %4282
  %4287 = fmul fast float %4199, %4282
  %4288 = fmul fast float %4210, %4282
  %4289 = fcmp fast une float %4286, 0.000000e+00
  br i1 %4289, label %4290, label %4297, !dx.controlflow.hints !164

; <label>:4290                                    ; preds = %4281
  %4291 = fmul fast float %4286, 0x3FF7154760000000
  %4292 = call float @dx.op.unary.f32(i32 21, float %4291)  ; Exp(value)
  %4293 = fsub fast float 1.000000e+00, %4292
  %4294 = fmul fast float %4283, %4293
  %4295 = fsub fast float -0.000000e+00, %4294
  %4296 = fdiv fast float %4295, %4286
  br label %4297

; <label>:4297                                    ; preds = %4290, %4281
  %4298 = phi float [ %4296, %4290 ], [ %4283, %4281 ]
  %4299 = phi float [ %4292, %4290 ], [ 1.000000e+00, %4281 ]
  %4300 = fcmp fast une float %4287, 0.000000e+00
  br i1 %4300, label %4301, label %4308, !dx.controlflow.hints !164

; <label>:4301                                    ; preds = %4297
  %4302 = fmul fast float %4287, 0x3FF7154760000000
  %4303 = call float @dx.op.unary.f32(i32 21, float %4302)  ; Exp(value)
  %4304 = fsub fast float 1.000000e+00, %4303
  %4305 = fmul fast float %4284, %4304
  %4306 = fsub fast float -0.000000e+00, %4305
  %4307 = fdiv fast float %4306, %4287
  br label %4308

; <label>:4308                                    ; preds = %4301, %4297
  %4309 = phi float [ %4307, %4301 ], [ %4284, %4297 ]
  %4310 = phi float [ %4303, %4301 ], [ 1.000000e+00, %4297 ]
  %4311 = fcmp fast une float %4288, 0.000000e+00
  br i1 %4311, label %4312, label %4319, !dx.controlflow.hints !164

; <label>:4312                                    ; preds = %4308
  %4313 = fmul fast float %4288, 0x3FF7154760000000
  %4314 = call float @dx.op.unary.f32(i32 21, float %4313)  ; Exp(value)
  %4315 = fsub fast float 1.000000e+00, %4314
  %4316 = fmul fast float %4285, %4315
  %4317 = fsub fast float -0.000000e+00, %4316
  %4318 = fdiv fast float %4317, %4288
  br label %4319

; <label>:4319                                    ; preds = %4312, %4308, %4268, %4261
  %4320 = phi float [ %4318, %4312 ], [ %4280, %4268 ], [ %4265, %4261 ], [ %4285, %4308 ]
  %4321 = phi float [ %4309, %4312 ], [ %4279, %4268 ], [ %4264, %4261 ], [ %4309, %4308 ]
  %4322 = phi float [ %4298, %4312 ], [ %4278, %4268 ], [ %4263, %4261 ], [ %4298, %4308 ]
  %4323 = phi float [ %4314, %4312 ], [ %4270, %4268 ], [ 1.000000e+00, %4261 ], [ 1.000000e+00, %4308 ]
  %4324 = phi float [ %4310, %4312 ], [ %4270, %4268 ], [ 1.000000e+00, %4261 ], [ %4310, %4308 ]
  %4325 = phi float [ %4299, %4312 ], [ %4270, %4268 ], [ 1.000000e+00, %4261 ], [ %4299, %4308 ]
  %4326 = fmul fast float %4325, %4237
  %4327 = fmul fast float %4324, %4248
  %4328 = fmul fast float %4323, %4259
  %4329 = fadd fast float %4326, %4322
  %4330 = fadd fast float %4327, %4321
  %4331 = fadd fast float %4328, %4320
  %4332 = fmul fast float %4325, %4236
  %4333 = fmul fast float %4324, %4247
  %4334 = fmul fast float %4323, %4258
  br label %4335

; <label>:4335                                    ; preds = %4319, %4130
  %4336 = phi float [ %4136, %4130 ], [ %4334, %4319 ]
  %4337 = phi float [ %4135, %4130 ], [ %4333, %4319 ]
  %4338 = phi float [ %4134, %4130 ], [ %4332, %4319 ]
  %4339 = phi float [ %4133, %4130 ], [ %4331, %4319 ]
  %4340 = phi float [ %4132, %4130 ], [ %4330, %4319 ]
  %4341 = phi float [ %4131, %4130 ], [ %4329, %4319 ]
  %4342 = fmul fast float %4338, %3479
  %4343 = fmul fast float %4337, %3480
  %4344 = fmul fast float %4336, %3481
  %4345 = fsub fast float 1.000000e+00, %3542
  %4346 = fmul fast float %4341, %4345
  %4347 = fmul fast float %4340, %4345
  %4348 = fmul fast float %4339, %4345
  %4349 = fadd fast float %4346, %4342
  %4350 = fadd fast float %4347, %4343
  %4351 = fadd fast float %4348, %4344
  %4352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %4353 = extractvalue %dx.types.CBufRet.f32 %4352, 2
  %4354 = fmul fast float %4353, %3552
  %4355 = call float @dx.op.unary.f32(i32 7, float %4354)  ; Saturate(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %31, i32 %32, i32 undef, float %3542, float %3542, float %3542, float %3542, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %4356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4357 = extractvalue %dx.types.CBufRet.f32 %4356, 0
  %4358 = fmul fast float %4357, %4349
  %4359 = fmul fast float %4357, %4350
  %4360 = fmul fast float %4357, %4351
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %31, i32 %32, i32 undef, float %4358, float %4359, float %4360, float %4358, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %31, i32 %32, i32 undef, float %4355, float %4355, float %4355, float %4355, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!43}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !28, !34, !37}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !17, !18, !19, !20, !21, !23, !24, !25, !26, !27}
!6 = !{i32 0, %"class.Texture3D<float>"* undef, !"", i32 0, i32 3, i32 1, i32 4, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 16, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 27, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %"class.Texture3D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 4, i32 0, !7}
!11 = !{i32 4, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 4, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 8, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 9, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 18, i32 1, i32 2, i32 0, !7}
!15 = !{i32 8, %"class.StructuredBuffer<VolumetricBBoxGpu>"* undef, !"", i32 0, i32 25, i32 1, i32 12, i32 0, !16}
!16 = !{i32 1, i32 164}
!17 = !{i32 9, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 31, i32 1, i32 7, i32 0, !7}
!18 = !{i32 10, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 30, i32 1, i32 4, i32 0, !7}
!19 = !{i32 11, %"class.Texture2D<float>"* undef, !"", i32 0, i32 29, i32 1, i32 2, i32 0, !7}
!20 = !{i32 12, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 0, i32 26, i32 1, i32 2, i32 0, !7}
!21 = !{i32 13, %"class.Texture2D<unsigned int>"* undef, !"", i32 0, i32 32, i32 1, i32 2, i32 0, !22}
!22 = !{i32 0, i32 5}
!23 = !{i32 14, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 0, i32 33, i32 1, i32 4, i32 0, !7}
!24 = !{i32 15, %"class.Texture1D<float>"* undef, !"", i32 0, i32 14, i32 1, i32 1, i32 0, !7}
!25 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 13, i32 1, i32 2, i32 0, !7}
!26 = !{i32 17, %"class.Texture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!27 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 17, i32 1, i32 11, i32 0, null}
!28 = !{!29, !30, !31, !32}
!29 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!30 = !{i32 1, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!31 = !{i32 2, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!32 = !{i32 3, %"class.RWTexture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 7, i1 false, i1 false, i1 false, !33}
!33 = !{i32 0, i32 14}
!34 = !{!35, !36}
!35 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!36 = !{i32 1, %FogRaymarchingConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 112, null}
!37 = !{!38, !39, !40, !41, !42}
!38 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!39 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!40 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!41 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!42 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!43 = !{void ()* @cs_fog_raymarching_air_clouds_heightmap_particles_brfog, !"cs_fog_raymarching_air_clouds_heightmap_particles_brfog", null, !4, !44}
!44 = !{i32 0, i64 272, i32 4, !45}
!45 = !{i32 8, i32 8, i32 1}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
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
!62 = distinct !{!62, !"dx.controlflow.hints", i32 1}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !70}
!70 = !{!"llvm.loop.unroll.disable"}
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
!84 = distinct !{!84, !"dx.controlflow.hints", i32 2}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 2}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 2}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 2}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 2}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 2}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 2}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 2}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 1}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 1}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 2}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 1}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 2}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 2}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 2}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 2}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 2}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 1}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 2}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 2}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 2}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 1}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 2}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 2}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 2}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 2}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 2}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 2}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 1}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 2}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 2}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 2}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 2}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 2}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 2}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 2}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 2}
!121 = !{!122, !122, i64 0}
!122 = !{!"float", !123, i64 0}
!123 = !{!"omnipotent char", !124, i64 0}
!124 = !{!"Simple C/C++ TBAA"}
!125 = !{!126, !128, !130, !131, !133, !134, !135}
!126 = distinct !{!126, !127, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!127 = distinct !{!127, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!128 = distinct !{!128, !129, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!129 = distinct !{!129, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!130 = distinct !{!130, !129, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!131 = distinct !{!131, !132, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %scattering"}
!132 = distinct !{!132, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z"}
!133 = distinct !{!133, !132, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %transmission"}
!134 = distinct !{!134, !132, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %depthDensityWeighted"}
!135 = distinct !{!135, !132, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %rawShadowmapData"}
!136 = distinct !{!136, !"dx.controlflow.hints", i32 2}
!137 = !{!138}
!138 = distinct !{!138, !139, !"\01?sort@@YAXAIAM00@Z: %c"}
!139 = distinct !{!139, !"\01?sort@@YAXAIAM00@Z"}
!140 = !{!141, !142, !126, !128, !130, !131, !133, !134, !135}
!141 = distinct !{!141, !139, !"\01?sort@@YAXAIAM00@Z: %a"}
!142 = distinct !{!142, !139, !"\01?sort@@YAXAIAM00@Z: %b"}
!143 = !{!142}
!144 = !{!141, !138, !126, !128, !130, !131, !133, !134, !135}
!145 = !{!141}
!146 = !{!142, !138, !126, !128, !130, !131, !133, !134, !135}
!147 = !{!148}
!148 = distinct !{!148, !149, !"\01?sort@@YAXAIAM00@Z: %c"}
!149 = distinct !{!149, !"\01?sort@@YAXAIAM00@Z"}
!150 = !{!151, !152, !126, !128, !130, !131, !133, !134, !135}
!151 = distinct !{!151, !149, !"\01?sort@@YAXAIAM00@Z: %a"}
!152 = distinct !{!152, !149, !"\01?sort@@YAXAIAM00@Z: %b"}
!153 = !{!152}
!154 = !{!151, !148, !126, !128, !130, !131, !133, !134, !135}
!155 = !{!151}
!156 = !{!152, !148, !126, !128, !130, !131, !133, !134, !135}
!157 = distinct !{!157, !"dx.controlflow.hints", i32 2}
!158 = distinct !{!158, !"dx.controlflow.hints", i32 2}
!159 = distinct !{!159, !"dx.controlflow.hints", i32 1}
!160 = distinct !{!160, !"dx.controlflow.hints", i32 2}
!161 = distinct !{!161, !"dx.controlflow.hints", i32 1}
!162 = distinct !{!162, !"dx.controlflow.hints", i32 1}
!163 = distinct !{!163, !"dx.controlflow.hints", i32 1}
!164 = distinct !{!164, !"dx.controlflow.hints", i32 1}
!165 = distinct !{!165, !"dx.controlflow.hints", i32 2}
!166 = distinct !{!166, !"dx.controlflow.hints", i32 1}

