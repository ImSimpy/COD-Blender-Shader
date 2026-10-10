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
; shader hash: 051be17b64b186df7d9a8fbaeebb1ae3
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

define void @cs_fog_raymarching_clouds_heightmap_particles_brfog() {
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
  %212 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %213 = extractvalue %dx.types.CBufRet.i32 %212, 3
  %214 = icmp eq i32 %213, 0
  %215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %216 = extractvalue %dx.types.CBufRet.f32 %215, 2
  %217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %218 = extractvalue %dx.types.CBufRet.f32 %217, 2
  %219 = fsub fast float %216, %79
  %220 = fadd fast float %219, %218
  br i1 %214, label %232, label %221, !dx.controlflow.hints !49

; <label>:221                                     ; preds = %208
  %222 = fsub fast float -0.000000e+00, %77
  %223 = fsub fast float -0.000000e+00, %78
  %224 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %222, float %223, float %220)  ; Dot3(ax,ay,az,bx,by,bz)
  %225 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %120, float %121, float %122)  ; Dot3(ax,ay,az,bx,by,bz)
  %226 = fdiv fast float 1.000000e+00, %225
  %227 = fmul fast float %226, %224
  %228 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %222, float %223, float %219)  ; Dot3(ax,ay,az,bx,by,bz)
  %229 = fmul fast float %226, %228
  %230 = call float @dx.op.binary.f32(i32 36, float %227, float %229)  ; FMin(a,b)
  %231 = call float @dx.op.binary.f32(i32 35, float %227, float %229)  ; FMax(a,b)
  br label %265

; <label>:232                                     ; preds = %208
  %233 = fdiv fast float 1.000000e+00, %120
  %234 = fdiv fast float 1.000000e+00, %121
  %235 = fdiv fast float 1.000000e+00, %122
  %236 = extractvalue %dx.types.CBufRet.f32 %215, 0
  %237 = extractvalue %dx.types.CBufRet.f32 %215, 1
  %238 = extractvalue %dx.types.CBufRet.f32 %217, 0
  %239 = extractvalue %dx.types.CBufRet.f32 %217, 1
  %240 = fsub fast float %236, %77
  %241 = fmul fast float %240, %233
  %242 = fadd fast float %240, %238
  %243 = fmul fast float %242, %233
  %244 = call float @dx.op.binary.f32(i32 36, float %241, float %243)  ; FMin(a,b)
  %245 = call float @dx.op.binary.f32(i32 35, float %241, float %243)  ; FMax(a,b)
  %246 = fsub fast float %237, %78
  %247 = fmul fast float %246, %234
  %248 = fadd fast float %246, %239
  %249 = fmul fast float %248, %234
  %250 = call float @dx.op.binary.f32(i32 36, float %247, float %249)  ; FMin(a,b)
  %251 = call float @dx.op.binary.f32(i32 35, float %244, float %250)  ; FMax(a,b)
  %252 = call float @dx.op.binary.f32(i32 35, float %247, float %249)  ; FMax(a,b)
  %253 = call float @dx.op.binary.f32(i32 36, float %245, float %252)  ; FMin(a,b)
  %254 = fmul fast float %219, %235
  %255 = fmul fast float %220, %235
  %256 = call float @dx.op.binary.f32(i32 36, float %254, float %255)  ; FMin(a,b)
  %257 = call float @dx.op.binary.f32(i32 35, float %251, float %256)  ; FMax(a,b)
  %258 = call float @dx.op.binary.f32(i32 35, float %254, float %255)  ; FMax(a,b)
  %259 = call float @dx.op.binary.f32(i32 36, float %253, float %258)  ; FMin(a,b)
  %260 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %257)  ; FMax(a,b)
  %261 = fcmp fast ult float %259, %260
  br i1 %261, label %265, label %262, !dx.controlflow.hints !50

; <label>:262                                     ; preds = %232
  %263 = call float @dx.op.binary.f32(i32 36, float %257, float %259)  ; FMin(a,b)
  %264 = call float @dx.op.binary.f32(i32 35, float %257, float %259)  ; FMax(a,b)
  br label %265

; <label>:265                                     ; preds = %262, %232, %221
  %266 = phi float [ %230, %221 ], [ %263, %262 ], [ 0.000000e+00, %232 ]
  %267 = phi float [ %231, %221 ], [ %264, %262 ], [ 0.000000e+00, %232 ]
  %268 = fcmp fast oeq float %267, 0.000000e+00
  br i1 %268, label %272, label %269, !dx.controlflow.hints !51

; <label>:269                                     ; preds = %265
  %270 = call float @dx.op.binary.f32(i32 36, float %211, float %266)  ; FMin(a,b)
  %271 = call float @dx.op.binary.f32(i32 35, float %210, float %267)  ; FMax(a,b)
  br label %272

; <label>:272                                     ; preds = %269, %265
  %273 = phi i32 [ 1, %269 ], [ 0, %265 ]
  %274 = phi float [ %271, %269 ], [ %210, %265 ]
  %275 = phi float [ %270, %269 ], [ %211, %265 ]
  %276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %277 = extractvalue %dx.types.CBufRet.f32 %276, 3
  %278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %279 = extractvalue %dx.types.CBufRet.f32 %278, 0
  %280 = fsub fast float -0.000000e+00, %77
  %281 = fsub fast float -0.000000e+00, %78
  %282 = fsub fast float %277, %79
  %283 = fadd fast float %282, %279
  %284 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %280, float %281, float %283)  ; Dot3(ax,ay,az,bx,by,bz)
  %285 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %120, float %121, float %122)  ; Dot3(ax,ay,az,bx,by,bz)
  %286 = fdiv fast float 1.000000e+00, %285
  %287 = fmul fast float %286, %284
  %288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %289 = extractvalue %dx.types.CBufRet.f32 %288, 2
  %290 = fsub fast float %289, %79
  %291 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %280, float %281, float %290)  ; Dot3(ax,ay,az,bx,by,bz)
  %292 = fmul fast float %286, %291
  %293 = call float @dx.op.binary.f32(i32 36, float %287, float %292)  ; FMin(a,b)
  %294 = call float @dx.op.binary.f32(i32 35, float %287, float %292)  ; FMax(a,b)
  %295 = call float @dx.op.binary.f32(i32 36, float %275, float %293)  ; FMin(a,b)
  %296 = call float @dx.op.binary.f32(i32 35, float %274, float %294)  ; FMax(a,b)
  %297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %298 = extractvalue %dx.types.CBufRet.f32 %297, 2
  %299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %300 = extractvalue %dx.types.CBufRet.f32 %299, 3
  %301 = fsub fast float %298, %79
  %302 = fadd fast float %301, %300
  %303 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %280, float %281, float %302)  ; Dot3(ax,ay,az,bx,by,bz)
  %304 = fmul fast float %286, %303
  %305 = fcmp fast olt float %304, 0.000000e+00
  %306 = fcmp fast ogt float %122, 0.000000e+00
  %307 = and i1 %306, %305
  br i1 %307, label %312, label %308, !dx.controlflow.hints !52

; <label>:308                                     ; preds = %272
  %309 = fcmp fast olt float %122, 0.000000e+00
  br i1 %309, label %310, label %312, !dx.controlflow.hints !53

; <label>:310                                     ; preds = %308
  %311 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %304)  ; FMax(a,b)
  br label %312

; <label>:312                                     ; preds = %310, %308, %272
  %313 = phi float [ 0.000000e+00, %272 ], [ %311, %310 ], [ 0.000000e+00, %308 ]
  %314 = phi float [ 0.000000e+00, %272 ], [ 0x47EFFFFFE0000000, %310 ], [ %304, %308 ]
  %315 = fcmp fast oeq float %314, 0.000000e+00
  br i1 %315, label %319, label %316, !dx.controlflow.hints !54

; <label>:316                                     ; preds = %312
  %317 = call float @dx.op.binary.f32(i32 36, float %295, float %313)  ; FMin(a,b)
  %318 = call float @dx.op.binary.f32(i32 35, float %296, float %314)  ; FMax(a,b)
  br label %319

; <label>:319                                     ; preds = %316, %312
  %320 = phi i32 [ 1, %316 ], [ 0, %312 ]
  %321 = phi float [ %318, %316 ], [ %296, %312 ]
  %322 = phi float [ %317, %316 ], [ %295, %312 ]
  %323 = fdiv fast float 1.000000e+00, %120
  %324 = fdiv fast float 1.000000e+00, %121
  %325 = fdiv fast float 1.000000e+00, %122
  %326 = call float @dx.op.binary.f32(i32 36, float %141, float %321)  ; FMin(a,b)
  %327 = call float @dx.op.binary.f32(i32 35, float %118, float %322)  ; FMax(a,b)
  %328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %329 = extractvalue %dx.types.CBufRet.f32 %328, 0
  %330 = fmul fast float %66, 2.000000e+00
  %331 = fadd fast float %330, -1.000000e+00
  %332 = fmul fast float %329, %331
  %333 = fadd fast float %332, %327
  %334 = fcmp fast olt float %333, %326
  %335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %336 = extractvalue %dx.types.CBufRet.f32 %335, 2
  %337 = fcmp fast olt float %336, 1.000000e+00
  %338 = and i1 %334, %337
  br i1 %338, label %339, label %3316

; <label>:339                                     ; preds = %319
  %340 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %341 = extractvalue %dx.types.CBufRet.i32 %340, 1
  %342 = add i32 %341, -1
  %343 = fmul fast float %333, %122
  %344 = fadd fast float %343, %79
  %345 = fmul fast float %333, %121
  %346 = fadd fast float %345, %78
  %347 = fmul fast float %333, %120
  %348 = fadd fast float %347, %77
  br label %349

; <label>:349                                     ; preds = %3286, %339
  %350 = phi i32 [ %3288, %3286 ], [ undef, %339 ]
  %351 = phi float [ %3289, %3286 ], [ undef, %339 ]
  %352 = phi float [ %3290, %3286 ], [ undef, %339 ]
  %353 = phi float [ %3291, %3286 ], [ undef, %339 ]
  %354 = phi float [ %3292, %3286 ], [ undef, %339 ]
  %355 = phi float [ %3293, %3286 ], [ undef, %339 ]
  %356 = phi i32 [ %899, %3286 ], [ undef, %339 ]
  %357 = phi float [ %900, %3286 ], [ undef, %339 ]
  %358 = phi float [ %655, %3286 ], [ undef, %339 ]
  %359 = phi float [ %656, %3286 ], [ undef, %339 ]
  %360 = phi float [ %657, %3286 ], [ undef, %339 ]
  %361 = phi float [ %658, %3286 ], [ undef, %339 ]
  %362 = phi float [ %3294, %3286 ], [ 0.000000e+00, %339 ]
  %363 = phi float [ %3295, %3286 ], [ 1.000000e+00, %339 ]
  %364 = phi float [ %3296, %3286 ], [ 0.000000e+00, %339 ]
  %365 = phi float [ %3297, %3286 ], [ 0.000000e+00, %339 ]
  %366 = phi float [ %3298, %3286 ], [ 0.000000e+00, %339 ]
  %367 = phi float [ %3308, %3286 ], [ %348, %339 ]
  %368 = phi float [ %3309, %3286 ], [ %346, %339 ]
  %369 = phi float [ %3310, %3286 ], [ %344, %339 ]
  %370 = phi float [ %3287, %3286 ], [ %333, %339 ]
  %371 = phi i32 [ %660, %3286 ], [ 10, %339 ]
  %372 = phi i32 [ %552, %3286 ], [ %342, %339 ]
  %373 = phi float [ %3299, %3286 ], [ 0.000000e+00, %339 ]
  %374 = phi float [ %3300, %3286 ], [ 0.000000e+00, %339 ]
  %375 = phi float [ %3301, %3286 ], [ 0.000000e+00, %339 ]
  %376 = phi float [ %3302, %3286 ], [ 0.000000e+00, %339 ]
  %377 = phi float [ %3303, %3286 ], [ 0.000000e+00, %339 ]
  %378 = phi i32 [ %3304, %3286 ], [ 0, %339 ]
  %379 = fsub fast float -0.000000e+00, %368
  %380 = fsub fast float -0.000000e+00, %367
  %381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %382 = extractvalue %dx.types.CBufRet.f32 %381, 0
  %383 = icmp eq i32 %209, 0
  br i1 %383, label %549, label %384, !dx.controlflow.hints !55

; <label>:384                                     ; preds = %349
  %385 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %386 = extractvalue %dx.types.CBufRet.i32 %385, 1
  %387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %388 = extractvalue %dx.types.CBufRet.f32 %387, 1
  %389 = fcmp fast ogt float %388, %370
  br i1 %389, label %390, label %392, !dx.controlflow.hints !56

; <label>:390                                     ; preds = %384
  %391 = fsub fast float %388, %370
  br label %539

; <label>:392                                     ; preds = %384
  %393 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %394 = extractvalue %dx.types.CBufRet.i32 %393, 3
  %395 = icmp eq i32 %394, 0
  %396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %397 = extractvalue %dx.types.CBufRet.f32 %396, 2
  %398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %399 = extractvalue %dx.types.CBufRet.f32 %398, 2
  %400 = fsub fast float %397, %369
  %401 = fadd fast float %400, %399
  %402 = fsub fast float 0xC7EFFFFFE0000000, %369
  br i1 %395, label %410, label %403, !dx.controlflow.hints !46

; <label>:403                                     ; preds = %392
  %404 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %380, float %379, float %401)  ; Dot3(ax,ay,az,bx,by,bz)
  %405 = fmul fast float %286, %404
  %406 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %380, float %379, float %402)  ; Dot3(ax,ay,az,bx,by,bz)
  %407 = fmul fast float %286, %406
  %408 = call float @dx.op.binary.f32(i32 36, float %405, float %407)  ; FMin(a,b)
  %409 = call float @dx.op.binary.f32(i32 35, float %405, float %407)  ; FMax(a,b)
  br label %440

; <label>:410                                     ; preds = %392
  %411 = extractvalue %dx.types.CBufRet.f32 %396, 0
  %412 = extractvalue %dx.types.CBufRet.f32 %396, 1
  %413 = extractvalue %dx.types.CBufRet.f32 %398, 0
  %414 = extractvalue %dx.types.CBufRet.f32 %398, 1
  %415 = fsub fast float %411, %367
  %416 = fmul fast float %323, %415
  %417 = fadd fast float %415, %413
  %418 = fmul fast float %417, %323
  %419 = call float @dx.op.binary.f32(i32 36, float %416, float %418)  ; FMin(a,b)
  %420 = call float @dx.op.binary.f32(i32 35, float %416, float %418)  ; FMax(a,b)
  %421 = fsub fast float %412, %368
  %422 = fmul fast float %324, %421
  %423 = fadd fast float %421, %414
  %424 = fmul fast float %423, %324
  %425 = call float @dx.op.binary.f32(i32 36, float %422, float %424)  ; FMin(a,b)
  %426 = call float @dx.op.binary.f32(i32 35, float %419, float %425)  ; FMax(a,b)
  %427 = call float @dx.op.binary.f32(i32 35, float %422, float %424)  ; FMax(a,b)
  %428 = call float @dx.op.binary.f32(i32 36, float %420, float %427)  ; FMin(a,b)
  %429 = fmul fast float %325, %402
  %430 = fmul fast float %325, %401
  %431 = call float @dx.op.binary.f32(i32 36, float %429, float %430)  ; FMin(a,b)
  %432 = call float @dx.op.binary.f32(i32 35, float %426, float %431)  ; FMax(a,b)
  %433 = call float @dx.op.binary.f32(i32 35, float %429, float %430)  ; FMax(a,b)
  %434 = call float @dx.op.binary.f32(i32 36, float %428, float %433)  ; FMin(a,b)
  %435 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %432)  ; FMax(a,b)
  %436 = fcmp fast ult float %434, %435
  br i1 %436, label %440, label %437, !dx.controlflow.hints !47

; <label>:437                                     ; preds = %410
  %438 = call float @dx.op.binary.f32(i32 36, float %432, float %434)  ; FMin(a,b)
  %439 = call float @dx.op.binary.f32(i32 35, float %432, float %434)  ; FMax(a,b)
  br label %440

; <label>:440                                     ; preds = %437, %410, %403
  %441 = phi float [ %408, %403 ], [ %438, %437 ], [ 0.000000e+00, %410 ]
  %442 = phi float [ %409, %403 ], [ %439, %437 ], [ 0.000000e+00, %410 ]
  %443 = fcmp fast ogt float %441, 0.000000e+00
  br i1 %443, label %539, label %444, !dx.controlflow.hints !57

; <label>:444                                     ; preds = %440
  %445 = fcmp fast ugt float %442, 0.000000e+00
  br i1 %445, label %446, label %539, !dx.controlflow.hints !58

; <label>:446                                     ; preds = %444
  %447 = icmp sgt i32 %372, 0
  br i1 %447, label %448, label %533

; <label>:448                                     ; preds = %446
  br label %449

; <label>:449                                     ; preds = %529, %448
  %450 = phi i32 [ %530, %529 ], [ %372, %448 ]
  %451 = sitofp i32 %450 to float
  %452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %453 = extractvalue %dx.types.CBufRet.f32 %452, 0
  %454 = extractvalue %dx.types.CBufRet.f32 %452, 1
  %455 = fsub fast float %367, %453
  %456 = fsub fast float %368, %454
  %457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %458 = extractvalue %dx.types.CBufRet.f32 %457, 0
  %459 = extractvalue %dx.types.CBufRet.f32 %457, 1
  %460 = fmul fast float %455, %458
  %461 = fmul fast float %456, %459
  %462 = fsub fast float 1.000000e+00, %461
  %463 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %464 = extractvalue %dx.types.CBufRet.i32 %463, 3
  %465 = icmp eq i32 %464, 0
  br i1 %465, label %472, label %466, !dx.controlflow.hints !59

; <label>:466                                     ; preds = %449
  %467 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %460, float %462, float undef, float undef, i32 0, i32 0, i32 undef, float %451)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %468 = extractvalue %dx.types.ResRet.f32 %467, 0
  %469 = extractvalue %dx.types.ResRet.f32 %467, 1
  %470 = extractvalue %dx.types.ResRet.f32 %467, 2
  %471 = extractvalue %dx.types.ResRet.f32 %467, 3
  br label %478

; <label>:472                                     ; preds = %449
  %473 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %27, float %460, float %462, float undef, float undef, i32 0, i32 0, i32 undef, float %451)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %474 = extractvalue %dx.types.ResRet.f32 %473, 0
  %475 = extractvalue %dx.types.ResRet.f32 %473, 1
  %476 = extractvalue %dx.types.ResRet.f32 %473, 2
  %477 = extractvalue %dx.types.ResRet.f32 %473, 3
  br label %478

; <label>:478                                     ; preds = %472, %466
  %479 = phi float [ %468, %466 ], [ %474, %472 ]
  %480 = phi float [ %469, %466 ], [ %475, %472 ]
  %481 = phi float [ %470, %466 ], [ %476, %472 ]
  %482 = phi float [ %471, %466 ], [ %477, %472 ]
  %483 = extractvalue %dx.types.CBufRet.f32 %457, 3
  %484 = fmul fast float %483, %479
  %485 = extractvalue %dx.types.CBufRet.f32 %452, 2
  %486 = fadd fast float %484, %485
  %487 = fmul fast float %483, %480
  %488 = fadd fast float %487, %485
  %489 = fmul fast float %483, %481
  %490 = fadd fast float %489, %485
  %491 = and i32 %450, 31
  %492 = shl i32 1, %491
  %493 = uitofp i32 %492 to float
  %494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %495 = extractvalue %dx.types.CBufRet.f32 %494, 3
  %496 = fdiv fast float 1.000000e+00, %495
  %497 = fmul fast float %496, %493
  %498 = fmul fast float %497, %122
  %499 = fadd fast float %498, %369
  %500 = fcmp fast oeq float %482, 0.000000e+00
  %501 = fcmp fast ogt float %369, %488
  %502 = fcmp fast ogt float %499, %488
  %503 = and i1 %501, %502
  %504 = or i1 %500, %503
  br i1 %504, label %505, label %509, !dx.controlflow.hints !60

; <label>:505                                     ; preds = %478
  %506 = add nsw i32 %450, 1
  %507 = add nsw i32 %386, -1
  %508 = call i32 @dx.op.binary.i32(i32 38, i32 %506, i32 %507)  ; IMin(a,b)
  br label %539

; <label>:509                                     ; preds = %478
  %510 = fcmp fast olt float %369, %490
  %511 = fcmp fast olt float %499, %490
  %512 = and i1 %510, %511
  br i1 %512, label %513, label %517, !dx.controlflow.hints !61

; <label>:513                                     ; preds = %509
  %514 = add nsw i32 %450, 1
  %515 = add nsw i32 %386, -1
  %516 = call i32 @dx.op.binary.i32(i32 38, i32 %514, i32 %515)  ; IMin(a,b)
  br label %539

; <label>:517                                     ; preds = %509
  %518 = fcmp fast olt float %369, %486
  %519 = fcmp fast olt float %499, %486
  %520 = and i1 %518, %519
  br i1 %520, label %521, label %529, !dx.controlflow.hints !62

; <label>:521                                     ; preds = %517
  %522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %523 = extractvalue %dx.types.CBufRet.f32 %522, 3
  %524 = extractvalue %dx.types.CBufRet.f32 %457, 2
  %525 = fcmp fast une float %523, %524
  br i1 %525, label %526, label %533, !dx.controlflow.hints !63

; <label>:526                                     ; preds = %521
  %527 = fsub fast float %369, %490
  %528 = call float @dx.op.binary.f32(i32 36, float %497, float %527)  ; FMin(a,b)
  br label %533

; <label>:529                                     ; preds = %517
  %530 = add nsw i32 %450, -1
  %531 = icmp sgt i32 %450, 1
  br i1 %531, label %449, label %532

; <label>:532                                     ; preds = %529
  br label %533

; <label>:533                                     ; preds = %532, %526, %521, %446
  %534 = phi float [ %528, %526 ], [ %497, %521 ], [ 0.000000e+00, %446 ], [ 0.000000e+00, %532 ]
  %535 = phi i32 [ %450, %526 ], [ %450, %521 ], [ %372, %446 ], [ %530, %532 ]
  %536 = add nsw i32 %535, 1
  %537 = add nsw i32 %386, -1
  %538 = call i32 @dx.op.binary.i32(i32 38, i32 %536, i32 %537)  ; IMin(a,b)
  br label %539

; <label>:539                                     ; preds = %533, %513, %505, %444, %440, %390
  %540 = phi float [ %391, %390 ], [ %497, %505 ], [ %497, %513 ], [ %534, %533 ], [ 0x47EFFFFFE0000000, %444 ], [ %441, %440 ]
  %541 = phi i32 [ %209, %390 ], [ %209, %505 ], [ %209, %513 ], [ %209, %533 ], [ 0, %444 ], [ %209, %440 ]
  %542 = phi i32 [ %372, %390 ], [ %508, %505 ], [ %516, %513 ], [ %538, %533 ], [ %372, %444 ], [ %372, %440 ]
  %543 = icmp ne i32 %541, 0
  %544 = zext i1 %543 to i32
  %545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %546 = extractvalue %dx.types.CBufRet.f32 %545, 2
  %547 = call float @dx.op.binary.f32(i32 35, float %540, float %546)  ; FMax(a,b)
  %548 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %547)  ; FMin(a,b)
  br label %549

; <label>:549                                     ; preds = %539, %349
  %550 = phi i32 [ %544, %539 ], [ 0, %349 ]
  %551 = phi float [ %548, %539 ], [ 0x47EFFFFFE0000000, %349 ]
  %552 = phi i32 [ %542, %539 ], [ %372, %349 ]
  %553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %554 = extractvalue %dx.types.CBufRet.f32 %553, 0
  %555 = extractvalue %dx.types.CBufRet.f32 %553, 1
  %556 = fsub fast float %367, %554
  %557 = fsub fast float %368, %555
  %558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %559 = extractvalue %dx.types.CBufRet.f32 %558, 2
  %560 = extractvalue %dx.types.CBufRet.f32 %558, 3
  %561 = fmul fast float %556, %559
  %562 = fmul fast float %557, %560
  %563 = call float @dx.op.binary.f32(i32 36, float %561, float %562)  ; FMin(a,b)
  %564 = fcmp fast olt float %563, 0.000000e+00
  %565 = call float @dx.op.binary.f32(i32 35, float %561, float %562)  ; FMax(a,b)
  %566 = fcmp fast ogt float %565, 1.000000e+00
  %567 = or i1 %564, %566
  %568 = extractvalue %dx.types.CBufRet.f32 %553, 2
  %569 = fcmp fast olt float %369, %568
  %570 = or i1 %567, %569
  %571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %572 = extractvalue %dx.types.CBufRet.f32 %571, 3
  %573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %574 = extractvalue %dx.types.CBufRet.f32 %573, 0
  %575 = fadd fast float %574, %572
  %576 = fcmp fast ogt float %369, %575
  %577 = or i1 %570, %576
  br i1 %577, label %578, label %607, !dx.controlflow.hints !64

; <label>:578                                     ; preds = %549
  %579 = extractvalue %dx.types.CBufRet.f32 %558, 0
  %580 = extractvalue %dx.types.CBufRet.f32 %558, 1
  %581 = fsub fast float %554, %367
  %582 = fmul fast float %581, %323
  %583 = fadd fast float %581, %579
  %584 = fmul fast float %583, %323
  %585 = call float @dx.op.binary.f32(i32 36, float %582, float %584)  ; FMin(a,b)
  %586 = call float @dx.op.binary.f32(i32 35, float %582, float %584)  ; FMax(a,b)
  %587 = fsub fast float %555, %368
  %588 = fmul fast float %587, %324
  %589 = fadd fast float %587, %580
  %590 = fmul fast float %589, %324
  %591 = call float @dx.op.binary.f32(i32 36, float %588, float %590)  ; FMin(a,b)
  %592 = call float @dx.op.binary.f32(i32 35, float %585, float %591)  ; FMax(a,b)
  %593 = call float @dx.op.binary.f32(i32 35, float %588, float %590)  ; FMax(a,b)
  %594 = call float @dx.op.binary.f32(i32 36, float %586, float %593)  ; FMin(a,b)
  %595 = fsub fast float %568, %369
  %596 = fmul fast float %595, %325
  %597 = fsub fast float %572, %369
  %598 = fadd fast float %597, %574
  %599 = fmul fast float %598, %325
  %600 = call float @dx.op.binary.f32(i32 36, float %596, float %599)  ; FMin(a,b)
  %601 = call float @dx.op.binary.f32(i32 35, float %592, float %600)  ; FMax(a,b)
  %602 = call float @dx.op.binary.f32(i32 35, float %596, float %599)  ; FMax(a,b)
  %603 = call float @dx.op.binary.f32(i32 36, float %594, float %602)  ; FMin(a,b)
  %604 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %601)  ; FMax(a,b)
  %605 = fcmp fast oge float %603, %604
  %606 = select i1 %605, float %601, float 1.000000e+07
  br label %653

; <label>:607                                     ; preds = %549
  %608 = fsub fast float 1.000000e+00, %562
  %609 = icmp eq i32 %371, 0
  br i1 %609, label %638, label %610

; <label>:610                                     ; preds = %607
  br label %611

; <label>:611                                     ; preds = %634, %610
  %612 = phi i32 [ %635, %634 ], [ %371, %610 ]
  %613 = uitofp i32 %612 to float
  %614 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %28, float %561, float %608, float undef, float undef, i32 0, i32 0, i32 undef, float %613)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %615 = extractvalue %dx.types.ResRet.f32 %614, 0
  %616 = extractvalue %dx.types.ResRet.f32 %614, 1
  %617 = extractvalue %dx.types.ResRet.f32 %614, 2
  %618 = fcmp fast oeq float %615, 0.000000e+00
  %619 = fcmp ule float %369, %617
  %620 = fcmp uge float %369, %616
  %621 = or i1 %620, %619
  %622 = or i1 %618, %621
  br i1 %622, label %623, label %634, !dx.controlflow.hints !65

; <label>:623                                     ; preds = %611
  %624 = extractvalue %dx.types.ResRet.f32 %614, 3
  %625 = extractvalue %dx.types.CBufRet.f32 %558, 0
  %626 = and i32 %612, 31
  %627 = lshr i32 1024, %626
  %628 = uitofp i32 %627 to float
  %629 = fdiv fast float %625, %628
  %630 = add i32 %612, 1
  %631 = uitofp i32 %630 to float
  %632 = call float @dx.op.binary.f32(i32 36, float 1.000000e+01, float %631)  ; FMin(a,b)
  %633 = fptosi float %632 to i32
  br label %653

; <label>:634                                     ; preds = %611
  %635 = add i32 %612, -1
  %636 = icmp eq i32 %635, 0
  br i1 %636, label %637, label %611, !llvm.loop !66

; <label>:637                                     ; preds = %634
  br label %638

; <label>:638                                     ; preds = %637, %607
  %639 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %27, float %561, float %608, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %640 = extractvalue %dx.types.ResRet.f32 %639, 0
  %641 = extractvalue %dx.types.ResRet.f32 %639, 1
  %642 = extractvalue %dx.types.ResRet.f32 %639, 2
  %643 = extractvalue %dx.types.ResRet.f32 %639, 3
  %644 = extractvalue %dx.types.CBufRet.f32 %558, 0
  %645 = fmul fast float %644, 9.765625e-04
  %646 = fcmp fast oeq float %640, 0.000000e+00
  %647 = fcmp ule float %369, %642
  %648 = fcmp uge float %369, %641
  %649 = or i1 %648, %647
  %650 = or i1 %646, %649
  %651 = zext i1 %650 to i32
  %652 = xor i32 %651, 1
  br label %653

; <label>:653                                     ; preds = %638, %623, %578
  %654 = phi float [ %606, %578 ], [ %629, %623 ], [ %645, %638 ]
  %655 = phi float [ %358, %578 ], [ %615, %623 ], [ %640, %638 ]
  %656 = phi float [ %359, %578 ], [ %616, %623 ], [ %641, %638 ]
  %657 = phi float [ %360, %578 ], [ %617, %623 ], [ %642, %638 ]
  %658 = phi float [ %361, %578 ], [ %624, %623 ], [ %643, %638 ]
  %659 = phi i32 [ 0, %578 ], [ 0, %623 ], [ %652, %638 ]
  %660 = phi i32 [ 10, %578 ], [ %633, %623 ], [ 1, %638 ]
  %661 = icmp eq i32 %659, 0
  %662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %663 = extractvalue %dx.types.CBufRet.f32 %662, 2
  %664 = call float @dx.op.binary.f32(i32 35, float %654, float %663)  ; FMax(a,b)
  %665 = call float @dx.op.binary.f32(i32 36, float %551, float %664)  ; FMin(a,b)
  %666 = icmp eq i32 %273, 0
  br i1 %666, label %722, label %667, !dx.controlflow.hints !68

; <label>:667                                     ; preds = %653
  %668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %669 = extractvalue %dx.types.CBufRet.f32 %668, 0
  %670 = extractvalue %dx.types.CBufRet.f32 %668, 1
  %671 = extractvalue %dx.types.CBufRet.f32 %668, 2
  %672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %673 = extractvalue %dx.types.CBufRet.f32 %672, 0
  %674 = extractvalue %dx.types.CBufRet.f32 %672, 1
  %675 = extractvalue %dx.types.CBufRet.f32 %672, 2
  %676 = fsub fast float %367, %673
  %677 = fsub fast float %368, %674
  %678 = fsub fast float %369, %675
  %679 = fmul fast float %676, %669
  %680 = fmul fast float %677, %670
  %681 = fmul fast float %678, %671
  %682 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %683 = extractvalue %dx.types.CBufRet.i32 %682, 3
  %684 = icmp eq i32 %683, 0
  br i1 %684, label %688, label %685, !dx.controlflow.hints !69

; <label>:685                                     ; preds = %667
  %686 = call float @dx.op.unary.f32(i32 22, float %679)  ; Frc(value)
  %687 = call float @dx.op.unary.f32(i32 22, float %680)  ; Frc(value)
  br label %688

; <label>:688                                     ; preds = %685, %667
  %689 = phi float [ %686, %685 ], [ %679, %667 ]
  %690 = phi float [ %687, %685 ], [ %680, %667 ]
  %691 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %25, float %689, float %690, float %681, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %692 = extractvalue %dx.types.ResRet.f32 %691, 0
  %693 = fmul fast float %692, 2.000000e+00
  %694 = fadd fast float %693, -1.000000e+00
  %695 = extractvalue %dx.types.CBufRet.f32 %668, 3
  %696 = fmul fast float %694, %695
  %697 = fcmp fast olt float %696, 0.000000e+00
  %698 = fcmp fast oge float %681, 0.000000e+00
  %699 = fcmp fast ole float %681, 1.000000e+00
  br i1 %684, label %702, label %700, !dx.controlflow.hints !70

; <label>:700                                     ; preds = %688
  %701 = and i1 %698, %699
  br label %712

; <label>:702                                     ; preds = %688
  %703 = fcmp fast oge float %679, 0.000000e+00
  %704 = fcmp fast oge float %680, 0.000000e+00
  %705 = and i1 %703, %704
  %706 = and i1 %698, %705
  %707 = fcmp fast ole float %679, 1.000000e+00
  %708 = fcmp fast ole float %680, 1.000000e+00
  %709 = and i1 %707, %708
  %710 = and i1 %699, %709
  %711 = and i1 %706, %710
  br label %712

; <label>:712                                     ; preds = %702, %700
  %713 = phi i1 [ %701, %700 ], [ %711, %702 ]
  %714 = and i1 %697, %713
  %715 = call float @dx.op.unary.f32(i32 6, float %696)  ; FAbs(value)
  %716 = extractvalue %dx.types.CBufRet.f32 %662, 1
  %717 = extractvalue %dx.types.CBufRet.f32 %662, 0
  %718 = call float @dx.op.binary.f32(i32 35, float %715, float %717)  ; FMax(a,b)
  %719 = select i1 %714, float %716, float %718
  %720 = zext i1 %714 to i32
  %721 = call float @dx.op.binary.f32(i32 36, float %665, float %719)  ; FMin(a,b)
  br label %722

; <label>:722                                     ; preds = %712, %653
  %723 = phi i32 [ %720, %712 ], [ 0, %653 ]
  %724 = phi float [ %721, %712 ], [ %665, %653 ]
  %725 = icmp eq i32 %320, 0
  br i1 %725, label %897, label %726, !dx.controlflow.hints !71

; <label>:726                                     ; preds = %722
  %727 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %728 = extractvalue %dx.types.CBufRet.i32 %727, 1
  %729 = and i32 %728, 1
  %730 = icmp eq i32 %729, 0
  br i1 %730, label %731, label %888, !dx.controlflow.hints !72

; <label>:731                                     ; preds = %726
  %732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %733 = extractvalue %dx.types.CBufRet.f32 %732, 2
  %734 = extractvalue %dx.types.CBufRet.f32 %732, 3
  %735 = fmul fast float %733, %367
  %736 = fmul fast float %734, %368
  %737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %738 = extractvalue %dx.types.CBufRet.f32 %737, 0
  %739 = extractvalue %dx.types.CBufRet.f32 %737, 1
  %740 = fadd fast float %735, %738
  %741 = fadd fast float %736, %739
  %742 = call float @dx.op.unary.f32(i32 7, float %740)  ; Saturate(value)
  %743 = call float @dx.op.unary.f32(i32 7, float %741)  ; Saturate(value)
  %744 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %27, float %742, float %743, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %745 = extractvalue %dx.types.ResRet.f32 %744, 0
  %746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %747 = extractvalue %dx.types.CBufRet.f32 %746, 0
  %748 = fmul fast float %747, %745
  %749 = fsub fast float %740, %742
  %750 = fsub fast float %741, %743
  %751 = extractvalue %dx.types.CBufRet.f32 %732, 0
  %752 = extractvalue %dx.types.CBufRet.f32 %732, 1
  %753 = fmul fast float %751, %749
  %754 = fmul fast float %752, %750
  %755 = fmul fast float %753, %753
  %756 = fmul fast float %754, %754
  %757 = fadd fast float %755, %756
  %758 = call float @dx.op.unary.f32(i32 24, float %757)  ; Sqrt(value)
  %759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %760 = extractvalue %dx.types.CBufRet.f32 %759, 3
  %761 = fmul fast float %760, %758
  %762 = call float @dx.op.unary.f32(i32 7, float %761)  ; Saturate(value)
  %763 = extractvalue %dx.types.CBufRet.f32 %759, 2
  %764 = fsub fast float %763, %748
  %765 = fmul fast float %764, %762
  %766 = extractvalue %dx.types.CBufRet.f32 %746, 1
  %767 = fsub fast float %369, %748
  %768 = fsub fast float %767, %766
  %769 = fsub fast float %768, %765
  %770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %771 = extractvalue %dx.types.CBufRet.f32 %770, 2
  %772 = fsub fast float %769, %771
  %773 = fcmp fast olt float %772, 0.000000e+00
  %774 = call float @dx.op.unary.f32(i32 6, float %772)  ; FAbs(value)
  %775 = extractvalue %dx.types.CBufRet.i32 %727, 0
  %776 = icmp eq i32 %775, 0
  br i1 %776, label %830, label %777

; <label>:777                                     ; preds = %731
  br label %778

; <label>:778                                     ; preds = %817, %777
  %779 = phi i32 [ %823, %817 ], [ 1, %777 ]
  %780 = phi float [ %825, %817 ], [ 0x47EFFFFFE0000000, %777 ]
  %781 = phi i32 [ %826, %817 ], [ 0, %777 ]
  %782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %783 = extractvalue %dx.types.CBufRet.f32 %782, 1
  %784 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %785 = extractvalue %dx.types.CBufRet.i32 %784, 1
  %786 = and i32 %785, 8
  %787 = icmp eq i32 %786, 0
  %788 = fcmp fast ogt float %783, %769
  %789 = or i1 %788, %787
  %790 = add i32 %781, 171
  %791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 %790)  ; CBufferLoadLegacy(handle,regIndex)
  %792 = extractvalue %dx.types.CBufRet.f32 %791, 0
  %793 = extractvalue %dx.types.CBufRet.f32 %791, 1
  %794 = extractvalue %dx.types.CBufRet.f32 %791, 2
  br i1 %789, label %795, label %801, !dx.controlflow.hints !73

; <label>:795                                     ; preds = %778
  %796 = fsub fast float %792, %367
  %797 = fsub fast float %793, %368
  %798 = fmul fast float %796, %796
  %799 = fmul fast float %797, %797
  %800 = fadd fast float %798, %799
  br label %817

; <label>:801                                     ; preds = %778
  %802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %803 = extractvalue %dx.types.CBufRet.f32 %802, 2
  %804 = extractvalue %dx.types.CBufRet.f32 %782, 2
  %805 = fmul fast float %804, %803
  %806 = fsub fast float %805, %783
  %807 = fdiv fast float %794, %806
  %808 = fsub fast float %367, %792
  %809 = fsub fast float %368, %793
  %810 = fsub fast float %769, %783
  %811 = fmul fast float %807, %810
  %812 = fmul fast float %808, %808
  %813 = fmul fast float %809, %809
  %814 = fadd fast float %812, %813
  %815 = fmul fast float %811, %811
  %816 = fadd fast float %814, %815
  br label %817

; <label>:817                                     ; preds = %801, %795
  %818 = phi float [ %800, %795 ], [ %816, %801 ]
  %819 = call float @dx.op.unary.f32(i32 24, float %818)  ; Sqrt(value)
  %820 = fsub float %794, %819
  %821 = fcmp fast olt float %820, 0.000000e+00
  %822 = zext i1 %821 to i32
  %823 = and i32 %822, %779
  %824 = call float @dx.op.unary.f32(i32 6, float %820)  ; FAbs(value)
  %825 = call float @dx.op.binary.f32(i32 36, float %780, float %824)  ; FMin(a,b)
  %826 = add i32 %781, 1
  %827 = extractvalue %dx.types.CBufRet.i32 %784, 0
  %828 = icmp ult i32 %826, %827
  br i1 %828, label %778, label %829

; <label>:829                                     ; preds = %817
  br label %830

; <label>:830                                     ; preds = %829, %731
  %831 = phi i32 [ 1, %731 ], [ %823, %829 ]
  %832 = phi float [ 0x47EFFFFFE0000000, %731 ], [ %825, %829 ]
  br label %833

; <label>:833                                     ; preds = %833, %830
  %834 = phi i32 [ %831, %830 ], [ %873, %833 ]
  %835 = phi float [ 0x47EFFFFFE0000000, %830 ], [ %875, %833 ]
  %836 = phi i32 [ 0, %830 ], [ %876, %833 ]
  %837 = add nuw nsw i32 %836, 191
  %838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 %837)  ; CBufferLoadLegacy(handle,regIndex)
  %839 = extractvalue %dx.types.CBufRet.f32 %838, 0
  %840 = extractvalue %dx.types.CBufRet.f32 %838, 1
  %841 = extractvalue %dx.types.CBufRet.f32 %838, 2
  %842 = add nuw nsw i32 %836, 195
  %843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 %842)  ; CBufferLoadLegacy(handle,regIndex)
  %844 = extractvalue %dx.types.CBufRet.f32 %843, 0
  %845 = extractvalue %dx.types.CBufRet.f32 %843, 1
  %846 = extractvalue %dx.types.CBufRet.f32 %843, 2
  %847 = fsub fast float %367, %839
  %848 = fsub fast float %368, %840
  %849 = fsub fast float %769, %841
  %850 = call float @dx.op.unary.f32(i32 6, float %847)  ; FAbs(value)
  %851 = call float @dx.op.unary.f32(i32 6, float %848)  ; FAbs(value)
  %852 = call float @dx.op.unary.f32(i32 6, float %849)  ; FAbs(value)
  %853 = fsub fast float %850, %844
  %854 = fsub fast float %851, %845
  %855 = fsub fast float %852, %846
  %856 = call float @dx.op.binary.f32(i32 35, float %853, float 0.000000e+00)  ; FMax(a,b)
  %857 = call float @dx.op.binary.f32(i32 35, float %854, float 0.000000e+00)  ; FMax(a,b)
  %858 = call float @dx.op.binary.f32(i32 35, float %855, float 0.000000e+00)  ; FMax(a,b)
  %859 = fmul fast float %856, %856
  %860 = fmul fast float %857, %857
  %861 = fadd fast float %860, %859
  %862 = fmul fast float %858, %858
  %863 = fadd fast float %861, %862
  %864 = call float @dx.op.unary.f32(i32 24, float %863)  ; Sqrt(value)
  %865 = call float @dx.op.binary.f32(i32 35, float %854, float %855)  ; FMax(a,b)
  %866 = call float @dx.op.binary.f32(i32 35, float %853, float %865)  ; FMax(a,b)
  %867 = call float @dx.op.binary.f32(i32 36, float %866, float 0.000000e+00)  ; FMin(a,b)
  %868 = fadd fast float %867, %864
  %869 = fsub fast float -0.000000e+00, %868
  %870 = fcmp ogt float %868, -0.000000e+00
  %871 = icmp ne i32 %834, 0
  %872 = and i1 %871, %870
  %873 = zext i1 %872 to i32
  %874 = call float @dx.op.unary.f32(i32 6, float %869)  ; FAbs(value)
  %875 = call float @dx.op.binary.f32(i32 36, float %835, float %874)  ; FMin(a,b)
  %876 = add nuw nsw i32 %836, 1
  %877 = icmp eq i32 %876, 4
  br i1 %877, label %878, label %833

; <label>:878                                     ; preds = %833
  %879 = call float @dx.op.binary.f32(i32 36, float %774, float %875)  ; FMin(a,b)
  %880 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %881 = extractvalue %dx.types.CBufRet.i32 %880, 1
  %882 = and i32 %881, 2
  %883 = icmp ne i32 %882, 0
  %884 = xor i1 %872, %883
  %885 = call float @dx.op.binary.f32(i32 36, float %879, float %832)  ; FMin(a,b)
  %886 = and i1 %884, %773
  %887 = zext i1 %886 to i32
  br label %888

; <label>:888                                     ; preds = %878, %726
  %889 = phi i32 [ %356, %726 ], [ %887, %878 ]
  %890 = phi float [ 0.000000e+00, %726 ], [ %885, %878 ]
  %891 = phi float [ %369, %726 ], [ %769, %878 ]
  %892 = icmp ne i32 %889, 0
  %893 = extractvalue %dx.types.CBufRet.f32 %662, 3
  %894 = call float @dx.op.binary.f32(i32 35, float %890, float %893)  ; FMax(a,b)
  %895 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %894)  ; FMin(a,b)
  %896 = zext i1 %892 to i32
  br label %897

; <label>:897                                     ; preds = %888, %722
  %898 = phi i32 [ %896, %888 ], [ 0, %722 ]
  %899 = phi i32 [ %889, %888 ], [ %356, %722 ]
  %900 = phi float [ %891, %888 ], [ %357, %722 ]
  %901 = phi float [ %895, %888 ], [ 0x47EFFFFFE0000000, %722 ]
  %902 = extractvalue %dx.types.CBufRet.f32 %381, 2
  %903 = fmul fast float %902, %370
  %904 = call float @dx.op.unary.f32(i32 23, float %903)  ; Log(value)
  %905 = fmul fast float %904, 0x3FE62E4300000000
  %906 = call float @dx.op.binary.f32(i32 35, float %905, float 1.000000e+00)  ; FMax(a,b)
  %907 = fmul fast float %906, %901
  %908 = call float @dx.op.binary.f32(i32 36, float %907, float %724)  ; FMin(a,b)
  %909 = call float @dx.op.binary.f32(i32 35, float %908, float %382)  ; FMax(a,b)
  %910 = fsub fast float %326, %370
  %911 = fadd fast float %910, 0x3F1A36E2E0000000
  %912 = call float @dx.op.binary.f32(i32 36, float %911, float %909)  ; FMin(a,b)
  %913 = icmp eq i32 %550, 0
  br i1 %913, label %1019, label %914, !dx.controlflow.hints !74

; <label>:914                                     ; preds = %897
  %915 = fcmp fast olt float %911, %909
  %916 = fmul fast float %122, %65
  %917 = fmul fast float %916, %912
  %918 = fadd fast float %917, %369
  %919 = fmul fast float %122, %66
  %920 = fmul fast float %919, %912
  %921 = fadd fast float %920, %369
  %922 = fmul fast float %122, %67
  %923 = fmul fast float %922, %912
  %924 = fadd fast float %923, %369
  br i1 %915, label %925, label %930, !dx.controlflow.hints !75

; <label>:925                                     ; preds = %914
  %926 = fmul fast float %912, %120
  %927 = fmul fast float %912, %121
  %928 = fadd fast float %926, %367
  %929 = fadd fast float %927, %368
  br label %930

; <label>:930                                     ; preds = %925, %914
  %931 = phi float [ %928, %925 ], [ %367, %914 ]
  %932 = phi float [ %929, %925 ], [ %368, %914 ]
  %933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %934 = extractvalue %dx.types.CBufRet.f32 %933, 0
  %935 = extractvalue %dx.types.CBufRet.f32 %933, 1
  %936 = fsub fast float %931, %934
  %937 = fsub fast float %932, %935
  %938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %939 = extractvalue %dx.types.CBufRet.f32 %938, 0
  %940 = extractvalue %dx.types.CBufRet.f32 %938, 1
  %941 = fmul fast float %936, %939
  %942 = fmul fast float %937, %940
  %943 = fsub fast float 1.000000e+00, %942
  %944 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %945 = extractvalue %dx.types.CBufRet.i32 %944, 3
  %946 = icmp eq i32 %945, 0
  br i1 %946, label %953, label %947, !dx.controlflow.hints !59

; <label>:947                                     ; preds = %930
  %948 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %941, float %943, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %949 = extractvalue %dx.types.ResRet.f32 %948, 0
  %950 = extractvalue %dx.types.ResRet.f32 %948, 1
  %951 = extractvalue %dx.types.ResRet.f32 %948, 2
  %952 = extractvalue %dx.types.ResRet.f32 %948, 3
  br label %959

; <label>:953                                     ; preds = %930
  %954 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %27, float %941, float %943, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %955 = extractvalue %dx.types.ResRet.f32 %954, 0
  %956 = extractvalue %dx.types.ResRet.f32 %954, 1
  %957 = extractvalue %dx.types.ResRet.f32 %954, 2
  %958 = extractvalue %dx.types.ResRet.f32 %954, 3
  br label %959

; <label>:959                                     ; preds = %953, %947
  %960 = phi float [ %949, %947 ], [ %955, %953 ]
  %961 = phi float [ %950, %947 ], [ %956, %953 ]
  %962 = phi float [ %951, %947 ], [ %957, %953 ]
  %963 = phi float [ %952, %947 ], [ %958, %953 ]
  %964 = extractvalue %dx.types.CBufRet.f32 %938, 3
  %965 = fmul fast float %964, %961
  %966 = fmul fast float %965, %960
  %967 = fsub fast float %965, %966
  %968 = fcmp fast ole float %967, 0.000000e+00
  %969 = extractvalue %dx.types.CBufRet.f32 %933, 2
  %970 = fadd fast float %966, %969
  %971 = fmul fast float %964, %962
  %972 = fadd fast float %971, %969
  %973 = fdiv fast float 1.000000e+00, %967
  %974 = select i1 %968, float 1.000000e+06, float %973
  %975 = fsub fast float %918, %970
  %976 = fmul fast float %974, %975
  %977 = call float @dx.op.unary.f32(i32 7, float %976)  ; Saturate(value)
  %978 = extractvalue %dx.types.CBufRet.f32 %938, 2
  %979 = fmul fast float %978, %977
  %980 = fsub fast float %978, %979
  %981 = fcmp fast olt float %918, %972
  %982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %983 = extractvalue %dx.types.CBufRet.f32 %982, 3
  %984 = select i1 %981, float %983, float 1.000000e+00
  %985 = fmul fast float %980, %984
  %986 = fsub fast float %921, %970
  %987 = fmul fast float %974, %986
  %988 = call float @dx.op.unary.f32(i32 7, float %987)  ; Saturate(value)
  %989 = fmul fast float %978, %988
  %990 = fsub fast float %978, %989
  %991 = fcmp fast olt float %921, %972
  %992 = select i1 %991, float %983, float 1.000000e+00
  %993 = fmul fast float %990, %992
  %994 = fadd fast float %993, %985
  %995 = fsub fast float %924, %970
  %996 = fmul fast float %974, %995
  %997 = call float @dx.op.unary.f32(i32 7, float %996)  ; Saturate(value)
  %998 = fmul fast float %978, %997
  %999 = fsub fast float %978, %998
  %1000 = fcmp fast olt float %924, %972
  %1001 = select i1 %1000, float %983, float 1.000000e+00
  %1002 = fmul fast float %999, %1001
  %1003 = fadd fast float %994, %1002
  %1004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1005 = extractvalue %dx.types.CBufRet.f32 %1004, 2
  %1006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %1007 = extractvalue %dx.types.CBufRet.f32 %1006, 0
  %1008 = extractvalue %dx.types.CBufRet.f32 %1006, 1
  %1009 = extractvalue %dx.types.CBufRet.f32 %1006, 2
  %1010 = fmul fast float %912, 0x3FD5555560000000
  %1011 = fmul fast float %1010, %963
  %1012 = fmul fast float %1011, %1005
  %1013 = fmul fast float %1012, %1003
  %1014 = extractvalue %dx.types.CBufRet.f32 %982, 0
  %1015 = fmul fast float %1013, %1007
  %1016 = fmul fast float %1013, %1008
  %1017 = fmul fast float %1013, %1009
  %1018 = fmul fast float %1013, %1014
  br label %1019

; <label>:1019                                    ; preds = %959, %897
  %1020 = phi float [ %1013, %959 ], [ 0.000000e+00, %897 ]
  %1021 = phi float [ %1018, %959 ], [ 0.000000e+00, %897 ]
  %1022 = phi float [ %1015, %959 ], [ 0.000000e+00, %897 ]
  %1023 = phi float [ %1016, %959 ], [ 0.000000e+00, %897 ]
  %1024 = phi float [ %1017, %959 ], [ 0.000000e+00, %897 ]
  %1025 = icmp eq i32 %723, 0
  br i1 %1025, label %1220, label %1026, !dx.controlflow.hints !76

; <label>:1026                                    ; preds = %1019
  %1027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1028 = extractvalue %dx.types.CBufRet.f32 %1027, 3
  %1029 = fmul fast float %1028, %370
  %1030 = fcmp fast oeq float %1029, 0.000000e+00
  br i1 %1030, label %1045, label %1031, !dx.controlflow.hints !77

; <label>:1031                                    ; preds = %1026
  %1032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %1033 = extractvalue %dx.types.CBufRet.f32 %1032, 3
  %1034 = fmul fast float %1033, %1029
  %1035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %1036 = extractvalue %dx.types.CBufRet.f32 %1035, 0
  %1037 = extractvalue %dx.types.CBufRet.f32 %1035, 1
  %1038 = extractvalue %dx.types.CBufRet.f32 %1035, 2
  %1039 = fmul fast float %1036, %1034
  %1040 = fmul fast float %1037, %1034
  %1041 = fmul fast float %1038, %1034
  %1042 = call float @dx.op.unary.f32(i32 23, float %1039)  ; Log(value)
  %1043 = call float @dx.op.unary.f32(i32 23, float %1040)  ; Log(value)
  %1044 = call float @dx.op.unary.f32(i32 23, float %1041)  ; Log(value)
  br label %1045

; <label>:1045                                    ; preds = %1031, %1026
  %1046 = phi float [ %1042, %1031 ], [ 0.000000e+00, %1026 ]
  %1047 = phi float [ %1043, %1031 ], [ 0.000000e+00, %1026 ]
  %1048 = phi float [ %1044, %1031 ], [ 0.000000e+00, %1026 ]
  %1049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %1050 = extractvalue %dx.types.CBufRet.f32 %1049, 0
  %1051 = extractvalue %dx.types.CBufRet.f32 %1049, 1
  %1052 = extractvalue %dx.types.CBufRet.f32 %1049, 2
  %1053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %1054 = extractvalue %dx.types.CBufRet.f32 %1053, 0
  %1055 = extractvalue %dx.types.CBufRet.f32 %1053, 1
  %1056 = extractvalue %dx.types.CBufRet.f32 %1053, 2
  %1057 = fsub fast float %367, %1054
  %1058 = fsub fast float %368, %1055
  %1059 = fsub fast float %369, %1056
  %1060 = fmul fast float %1057, %1050
  %1061 = fmul fast float %1058, %1051
  %1062 = fmul fast float %1059, %1052
  %1063 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %1064 = extractvalue %dx.types.CBufRet.i32 %1063, 0
  %1065 = extractvalue %dx.types.CBufRet.i32 %1063, 1
  %1066 = uitofp i32 %1064 to float
  %1067 = uitofp i32 %1065 to float
  %1068 = fmul fast float %1060, %1066
  %1069 = fmul fast float %1061, %1067
  %1070 = fadd fast float %1068, 5.000000e-01
  %1071 = fadd fast float %1069, 5.000000e-01
  %1072 = call float @dx.op.unary.f32(i32 22, float %1070)  ; Frc(value)
  %1073 = call float @dx.op.unary.f32(i32 22, float %1071)  ; Frc(value)
  %1074 = call float @dx.op.unary.f32(i32 27, float %1070)  ; Round_ni(value)
  %1075 = call float @dx.op.unary.f32(i32 27, float %1071)  ; Round_ni(value)
  %1076 = fadd fast float %1074, 1.000000e+00
  %1077 = fadd fast float %1075, 1.000000e+00
  %1078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %1079 = extractvalue %dx.types.CBufRet.f32 %1078, 0
  %1080 = extractvalue %dx.types.CBufRet.f32 %1078, 1
  %1081 = fmul fast float %1079, %1076
  %1082 = fmul fast float %1080, %1077
  %1083 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %26, float %1081, float %1082, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1084 = extractvalue %dx.types.ResRet.f32 %1083, 0
  %1085 = extractvalue %dx.types.ResRet.f32 %1083, 1
  %1086 = extractvalue %dx.types.ResRet.f32 %1083, 2
  %1087 = extractvalue %dx.types.ResRet.f32 %1083, 3
  %1088 = extractvalue %dx.types.CBufRet.i32 %1063, 2
  %1089 = extractvalue %dx.types.CBufRet.f32 %1078, 2
  %1090 = uitofp i32 %1088 to float
  %1091 = fadd fast float %1090, -1.000000e+00
  %1092 = fmul fast float %1091, %1084
  %1093 = fmul fast float %1091, %1085
  %1094 = fmul fast float %1091, %1086
  %1095 = fmul fast float %1091, %1087
  %1096 = fadd fast float %1092, 5.000000e-01
  %1097 = fadd fast float %1093, 5.000000e-01
  %1098 = fadd fast float %1094, 5.000000e-01
  %1099 = fadd fast float %1095, 5.000000e-01
  %1100 = fptoui float %1096 to i32
  %1101 = fptoui float %1097 to i32
  %1102 = fptoui float %1098 to i32
  %1103 = fptoui float %1099 to i32
  %1104 = uitofp i32 %1100 to float
  %1105 = uitofp i32 %1101 to float
  %1106 = uitofp i32 %1102 to float
  %1107 = uitofp i32 %1103 to float
  %1108 = fadd fast float %1104, 5.000000e-01
  %1109 = fadd fast float %1105, 5.000000e-01
  %1110 = fadd fast float %1106, 5.000000e-01
  %1111 = fadd fast float %1107, 5.000000e-01
  %1112 = fmul fast float %1108, %1089
  %1113 = fmul fast float %1109, %1089
  %1114 = fmul fast float %1110, %1089
  %1115 = fmul fast float %1111, %1089
  %1116 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %27, float %1112, float %1062, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1117 = extractvalue %dx.types.ResRet.f32 %1116, 0
  %1118 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %27, float %1113, float %1062, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1119 = extractvalue %dx.types.ResRet.f32 %1118, 0
  %1120 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %27, float %1114, float %1062, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1121 = extractvalue %dx.types.ResRet.f32 %1120, 0
  %1122 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %27, float %1115, float %1062, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1123 = extractvalue %dx.types.ResRet.f32 %1122, 0
  %1124 = fsub fast float %1121, %1123
  %1125 = fmul fast float %1124, %1072
  %1126 = fadd fast float %1125, %1123
  %1127 = fsub fast float %1119, %1117
  %1128 = fmul fast float %1127, %1072
  %1129 = fadd fast float %1128, %1117
  %1130 = fsub fast float %1129, %1126
  %1131 = fmul fast float %1130, %1073
  %1132 = fadd fast float %1131, %1126
  %1133 = fcmp fast ogt float %1132, 0.000000e+00
  br i1 %1133, label %1134, label %1202, !dx.controlflow.hints !78

; <label>:1134                                    ; preds = %1045
  %1135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %1136 = extractvalue %dx.types.CBufRet.f32 %1135, 0
  %1137 = extractvalue %dx.types.CBufRet.f32 %1135, 1
  %1138 = extractvalue %dx.types.CBufRet.f32 %1135, 2
  %1139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %1140 = extractvalue %dx.types.CBufRet.f32 %1139, 0
  %1141 = extractvalue %dx.types.CBufRet.f32 %1139, 1
  %1142 = extractvalue %dx.types.CBufRet.f32 %1139, 2
  %1143 = fmul fast float %1058, %1050
  %1144 = fmul fast float %1059, %1050
  %1145 = fadd fast float %1060, %1140
  %1146 = fadd fast float %1143, %1141
  %1147 = fadd fast float %1144, %1142
  %1148 = fmul fast float %1145, %1136
  %1149 = fmul fast float %1146, %1136
  %1150 = fmul fast float %1147, %1136
  %1151 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %24, float %1148, float %1149, float %1150, float undef, i32 0, i32 0, i32 0, float %1046)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1152 = extractvalue %dx.types.ResRet.f32 %1151, 0
  %1153 = fmul fast float %1145, %1137
  %1154 = fmul fast float %1146, %1137
  %1155 = fmul fast float %1147, %1137
  %1156 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %24, float %1153, float %1154, float %1155, float undef, i32 0, i32 0, i32 0, float %1047)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1157 = extractvalue %dx.types.ResRet.f32 %1156, 1
  %1158 = fmul fast float %1145, %1138
  %1159 = fmul fast float %1146, %1138
  %1160 = fmul fast float %1147, %1138
  %1161 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %24, float %1158, float %1159, float %1160, float undef, i32 0, i32 0, i32 0, float %1048)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1162 = extractvalue %dx.types.ResRet.f32 %1161, 2
  %1163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %1164 = extractvalue %dx.types.CBufRet.f32 %1163, 1
  %1165 = fmul fast float %1157, %1152
  %1166 = fmul fast float %1165, %1162
  %1167 = call float @dx.op.unary.f32(i32 23, float %1166)  ; Log(value)
  %1168 = fmul fast float %1167, %1164
  %1169 = call float @dx.op.unary.f32(i32 21, float %1168)  ; Exp(value)
  %1170 = extractvalue %dx.types.CBufRet.f32 %1163, 2
  %1171 = fmul fast float %1132, %1132
  %1172 = fmul fast float %1171, %1169
  %1173 = fmul fast float %1172, %1170
  %1174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %1175 = extractvalue %dx.types.CBufRet.f32 %1174, 3
  %1176 = fmul fast float %1175, %1173
  %1177 = bitcast float %1176 to i32
  %1178 = sitofp i32 %1177 to float
  %1179 = fptosi float %1178 to i32
  %1180 = bitcast i32 %1179 to float
  %1181 = fsub fast float 1.000000e+00, %1173
  %1182 = bitcast float %1181 to i32
  %1183 = sitofp i32 %1182 to float
  %1184 = fptosi float %1183 to i32
  %1185 = bitcast i32 %1184 to float
  %1186 = fadd fast float %1180, %1185
  %1187 = bitcast float %1186 to i32
  %1188 = sub nsw i32 2129859010, %1187
  %1189 = bitcast i32 %1188 to float
  %1190 = fmul fast float %1189, %1180
  %1191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1192 = extractvalue %dx.types.CBufRet.f32 %1191, 2
  %1193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %1194 = extractvalue %dx.types.CBufRet.f32 %1193, 0
  %1195 = fmul fast float %1190, %1194
  %1196 = fadd fast float %1195, 1.000000e+00
  %1197 = bitcast float %1196 to i32
  %1198 = sub nsw i32 2129859010, %1197
  %1199 = bitcast i32 %1198 to float
  %1200 = fmul fast float %1190, %1192
  %1201 = fmul fast float %1200, %1199
  br label %1202

; <label>:1202                                    ; preds = %1134, %1045
  %1203 = phi float [ %1201, %1134 ], [ %1132, %1045 ]
  %1204 = fmul fast float %1203, %912
  %1205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %1206 = extractvalue %dx.types.CBufRet.f32 %1205, 0
  %1207 = extractvalue %dx.types.CBufRet.f32 %1205, 1
  %1208 = extractvalue %dx.types.CBufRet.f32 %1205, 2
  %1209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %1210 = extractvalue %dx.types.CBufRet.f32 %1209, 1
  %1211 = fmul fast float %1206, %1204
  %1212 = fmul fast float %1207, %1204
  %1213 = fmul fast float %1208, %1204
  %1214 = fadd fast float %1211, %1022
  %1215 = fadd fast float %1212, %1023
  %1216 = fadd fast float %1213, %1024
  %1217 = fmul fast float %1210, %1204
  %1218 = fadd fast float %1217, %1021
  %1219 = fadd fast float %1204, %1020
  br label %1220

; <label>:1220                                    ; preds = %1202, %1019
  %1221 = phi float [ %1219, %1202 ], [ %1020, %1019 ]
  %1222 = phi float [ %1218, %1202 ], [ %1021, %1019 ]
  %1223 = phi float [ %1214, %1202 ], [ %1022, %1019 ]
  %1224 = phi float [ %1215, %1202 ], [ %1023, %1019 ]
  %1225 = phi float [ %1216, %1202 ], [ %1024, %1019 ]
  br i1 %661, label %1368, label %1226, !dx.controlflow.hints !79

; <label>:1226                                    ; preds = %1220
  %1227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 411)  ; CBufferLoadLegacy(handle,regIndex)
  %1228 = extractvalue %dx.types.CBufRet.f32 %1227, 0
  %1229 = extractvalue %dx.types.CBufRet.f32 %1227, 1
  %1230 = extractvalue %dx.types.CBufRet.f32 %1227, 2
  %1231 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1232 = extractvalue %dx.types.CBufRet.i32 %1231, 0
  %1233 = icmp ne i32 %1232, 0
  %1234 = zext i1 %1233 to i32
  %1235 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1236 = extractvalue %dx.types.CBufRet.i32 %1235, 0
  %1237 = icmp eq i32 %1236, 0
  br i1 %1237, label %1271, label %1238

; <label>:1238                                    ; preds = %1226
  br label %1239

; <label>:1239                                    ; preds = %1266, %1238
  %1240 = phi i32 [ %1267, %1266 ], [ 0, %1238 ]
  %1241 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1240, i32 0)  ; BufferLoad(srv,index,wot)
  %1242 = extractvalue %dx.types.ResRet.f32 %1241, 0
  %1243 = extractvalue %dx.types.ResRet.f32 %1241, 1
  %1244 = extractvalue %dx.types.ResRet.f32 %1241, 2
  %1245 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1240, i32 16)  ; BufferLoad(srv,index,wot)
  %1246 = extractvalue %dx.types.ResRet.f32 %1245, 0
  %1247 = extractvalue %dx.types.ResRet.f32 %1245, 1
  %1248 = extractvalue %dx.types.ResRet.f32 %1245, 2
  %1249 = fsub fast float %1242, %1246
  %1250 = fsub fast float %1243, %1247
  %1251 = fsub fast float %1244, %1248
  %1252 = fadd fast float %1246, %1242
  %1253 = fadd fast float %1247, %1243
  %1254 = fadd fast float %1248, %1244
  %1255 = fcmp fast olt float %367, %1249
  %1256 = fcmp fast olt float %368, %1250
  %1257 = fcmp fast olt float %369, %1251
  %1258 = or i1 %1255, %1256
  %1259 = or i1 %1257, %1258
  %1260 = fcmp fast ogt float %367, %1252
  %1261 = fcmp fast ogt float %368, %1253
  %1262 = fcmp fast ogt float %369, %1254
  %1263 = or i1 %1260, %1261
  %1264 = or i1 %1262, %1263
  %1265 = or i1 %1259, %1264
  br i1 %1265, label %1266, label %1269, !dx.controlflow.hints !80

; <label>:1266                                    ; preds = %1239
  %1267 = add nuw i32 %1240, 1
  %1268 = icmp ult i32 %1267, %1236
  br i1 %1268, label %1239, label %1269

; <label>:1269                                    ; preds = %1266, %1239
  %1270 = phi i32 [ 255, %1266 ], [ %1240, %1239 ]
  br label %1271

; <label>:1271                                    ; preds = %1269, %1226
  %1272 = phi i32 [ 255, %1226 ], [ %1270, %1269 ]
  %1273 = icmp eq i32 %1272, 255
  br i1 %1273, label %1283, label %1274, !dx.controlflow.hints !81

; <label>:1274                                    ; preds = %1271
  %1275 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1272, i32 32)  ; BufferLoad(srv,index,wot)
  %1276 = extractvalue %dx.types.ResRet.f32 %1275, 0
  %1277 = extractvalue %dx.types.ResRet.f32 %1275, 1
  %1278 = extractvalue %dx.types.ResRet.f32 %1275, 2
  %1279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1272, i32 156)  ; BufferLoad(srv,index,wot)
  %1280 = extractvalue %dx.types.ResRet.i32 %1279, 0
  %1281 = icmp ne i32 %1280, 0
  %1282 = zext i1 %1281 to i32
  br label %1283

; <label>:1283                                    ; preds = %1274, %1271
  %1284 = phi float [ %1276, %1274 ], [ %1228, %1271 ]
  %1285 = phi float [ %1277, %1274 ], [ %1229, %1271 ]
  %1286 = phi float [ %1278, %1274 ], [ %1230, %1271 ]
  %1287 = phi i32 [ %1282, %1274 ], [ %1234, %1271 ]
  %1288 = icmp eq i32 %1287, 0
  br i1 %1288, label %1289, label %1358, !dx.controlflow.hints !82

; <label>:1289                                    ; preds = %1283
  %1290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1291 = extractvalue %dx.types.CBufRet.f32 %1290, 3
  %1292 = extractvalue %dx.types.CBufRet.f32 %571, 0
  %1293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1294 = extractvalue %dx.types.CBufRet.f32 %1293, 2
  %1295 = extractvalue %dx.types.CBufRet.f32 %1293, 3
  br i1 %1273, label %1306, label %1296, !dx.controlflow.hints !83

; <label>:1296                                    ; preds = %1289
  %1297 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1272, i32 60)  ; BufferLoad(srv,index,wot)
  %1298 = extractvalue %dx.types.ResRet.f32 %1297, 0
  %1299 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1272, i32 64)  ; BufferLoad(srv,index,wot)
  %1300 = extractvalue %dx.types.ResRet.f32 %1299, 0
  %1301 = extractvalue %dx.types.ResRet.f32 %1299, 1
  %1302 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1272, i32 72)  ; BufferLoad(srv,index,wot)
  %1303 = extractvalue %dx.types.ResRet.f32 %1302, 0
  %1304 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1272, i32 96)  ; BufferLoad(srv,index,wot)
  %1305 = extractvalue %dx.types.ResRet.f32 %1304, 0
  br label %1306

; <label>:1306                                    ; preds = %1296, %1289
  %1307 = phi float [ %1298, %1296 ], [ %574, %1289 ]
  %1308 = phi float [ %1303, %1296 ], [ %572, %1289 ]
  %1309 = phi float [ %1305, %1296 ], [ %1292, %1289 ]
  %1310 = phi float [ %1300, %1296 ], [ %1294, %1289 ]
  %1311 = phi float [ %1301, %1296 ], [ %1295, %1289 ]
  %1312 = call float @dx.op.binary.f32(i32 35, float %655, float 0.000000e+00)  ; FMax(a,b)
  %1313 = call float @dx.op.binary.f32(i32 36, float %1312, float 1.000000e+00)  ; FMin(a,b)
  %1314 = call float @dx.op.unary.f32(i32 24, float %1313)  ; Sqrt(value)
  %1315 = call float @dx.op.binary.f32(i32 35, float %658, float 0x3F847AE140000000)  ; FMax(a,b)
  %1316 = fsub fast float %656, %369
  %1317 = fsub fast float %369, %657
  %1318 = call float @dx.op.binary.f32(i32 36, float %1317, float %1316)  ; FMin(a,b)
  %1319 = fdiv fast float %1318, %1315
  %1320 = call float @dx.op.unary.f32(i32 7, float %1319)  ; Saturate(value)
  %1321 = fsub fast float %369, %1308
  %1322 = fdiv fast float %1321, %1307
  %1323 = call float @dx.op.unary.f32(i32 7, float %1322)  ; Saturate(value)
  %1324 = fsub fast float 1.000000e+00, %1323
  %1325 = fmul float %1320, %1324
  %1326 = fmul float %1325, %1325
  %1327 = fmul fast float %1314, %1291
  %1328 = fmul fast float %1327, %1326
  %1329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1330 = extractvalue %dx.types.CBufRet.f32 %1329, 2
  %1331 = extractvalue %dx.types.CBufRet.f32 %1329, 1
  %1332 = fsub fast float %1328, %1331
  %1333 = fsub fast float %1330, %1331
  %1334 = fdiv fast float %1332, %1333
  %1335 = call float @dx.op.unary.f32(i32 7, float %1334)  ; Saturate(value)
  %1336 = fmul fast float %1335, %1309
  %1337 = fcmp fast ogt float %1311, 0.000000e+00
  br i1 %1337, label %1338, label %1358, !dx.controlflow.hints !84

; <label>:1338                                    ; preds = %1306
  %1339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1340 = extractvalue %dx.types.CBufRet.f32 %1339, 0
  %1341 = extractvalue %dx.types.CBufRet.f32 %1339, 1
  %1342 = extractvalue %dx.types.CBufRet.f32 %1339, 2
  %1343 = fsub fast float %367, %1340
  %1344 = fsub fast float %368, %1341
  %1345 = fsub fast float %369, %1342
  %1346 = fmul fast float %1343, %1343
  %1347 = fmul fast float %1344, %1344
  %1348 = fadd fast float %1346, %1347
  %1349 = fmul fast float %1345, %1345
  %1350 = fadd fast float %1348, %1349
  %1351 = call float @dx.op.unary.f32(i32 24, float %1350)  ; Sqrt(value)
  %1352 = fsub fast float %1351, %1310
  %1353 = fsub fast float %1311, %1310
  %1354 = fdiv fast float %1352, %1353
  %1355 = call float @dx.op.unary.f32(i32 7, float %1354)  ; Saturate(value)
  %1356 = fmul fast float %1355, %1355
  %1357 = fmul fast float %1356, %1336
  br label %1358

; <label>:1358                                    ; preds = %1338, %1306, %1283
  %1359 = phi float [ 0.000000e+00, %1283 ], [ %1357, %1338 ], [ %1336, %1306 ]
  %1360 = fmul fast float %1359, %912
  %1361 = fmul fast float %1360, %1284
  %1362 = fmul fast float %1360, %1285
  %1363 = fmul fast float %1360, %1286
  %1364 = fadd fast float %1361, %1223
  %1365 = fadd fast float %1362, %1224
  %1366 = fadd fast float %1363, %1225
  %1367 = fadd fast float %1360, %1221
  br label %1368

; <label>:1368                                    ; preds = %1358, %1220
  %1369 = phi float [ %1367, %1358 ], [ %1221, %1220 ]
  %1370 = phi float [ %1364, %1358 ], [ %1223, %1220 ]
  %1371 = phi float [ %1365, %1358 ], [ %1224, %1220 ]
  %1372 = phi float [ %1366, %1358 ], [ %1225, %1220 ]
  %1373 = icmp eq i32 %898, 0
  br i1 %1373, label %1417, label %1374, !dx.controlflow.hints !85

; <label>:1374                                    ; preds = %1368
  %1375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %1376 = extractvalue %dx.types.CBufRet.f32 %1375, 1
  %1377 = fsub fast float %912, %1376
  %1378 = extractvalue %dx.types.CBufRet.f32 %1375, 3
  %1379 = fmul fast float %1377, %1378
  %1380 = call float @dx.op.unary.f32(i32 7, float %1379)  ; Saturate(value)
  %1381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %1382 = extractvalue %dx.types.CBufRet.f32 %1381, 3
  %1383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1384 = extractvalue %dx.types.CBufRet.f32 %1383, 2
  %1385 = fsub fast float %1384, %900
  %1386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %1387 = extractvalue %dx.types.CBufRet.f32 %1386, 3
  %1388 = fmul fast float %1385, %1387
  %1389 = call float @dx.op.unary.f32(i32 7, float %1388)  ; Saturate(value)
  %1390 = fmul fast float %1389, %1382
  %1391 = extractvalue %dx.types.CBufRet.f32 %1386, 0
  %1392 = fsub fast float %370, %1391
  %1393 = extractvalue %dx.types.CBufRet.f32 %1386, 1
  %1394 = fmul fast float %1392, %1393
  %1395 = call float @dx.op.unary.f32(i32 7, float %1394)  ; Saturate(value)
  %1396 = fsub fast float 1.000000e+00, %1380
  %1397 = fmul fast float %1395, %1396
  %1398 = fadd fast float %1397, %1380
  %1399 = extractvalue %dx.types.CBufRet.f32 %1375, 0
  %1400 = fsub fast float %1390, %1399
  %1401 = fmul fast float %1400, %1398
  %1402 = fadd fast float %1401, %1399
  %1403 = extractvalue %dx.types.CBufRet.f32 %1381, 0
  %1404 = extractvalue %dx.types.CBufRet.f32 %1381, 1
  %1405 = extractvalue %dx.types.CBufRet.f32 %1381, 2
  %1406 = fmul fast float %1402, %912
  %1407 = extractvalue %dx.types.CBufRet.f32 %1386, 2
  %1408 = fmul fast float %1406, %1403
  %1409 = fmul fast float %1406, %1404
  %1410 = fmul fast float %1406, %1405
  %1411 = fadd fast float %1408, %1370
  %1412 = fadd fast float %1409, %1371
  %1413 = fadd fast float %1410, %1372
  %1414 = fmul fast float %1406, %1407
  %1415 = fadd fast float %1414, %1222
  %1416 = fadd fast float %1406, %1369
  br label %1417

; <label>:1417                                    ; preds = %1374, %1368
  %1418 = phi float [ %1416, %1374 ], [ %1369, %1368 ]
  %1419 = phi float [ %1415, %1374 ], [ %1222, %1368 ]
  %1420 = phi float [ %1411, %1374 ], [ %1370, %1368 ]
  %1421 = phi float [ %1412, %1374 ], [ %1371, %1368 ]
  %1422 = phi float [ %1413, %1374 ], [ %1372, %1368 ]
  %1423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1424 = extractvalue %dx.types.CBufRet.f32 %1423, 1
  %1425 = fcmp fast ogt float %1418, %1424
  br i1 %1425, label %1426, label %1432, !dx.controlflow.hints !86

; <label>:1426                                    ; preds = %1417
  %1427 = fdiv fast float 1.000000e+00, %1418
  %1428 = fmul fast float %1427, %1420
  %1429 = fmul fast float %1427, %1421
  %1430 = fmul fast float %1427, %1422
  %1431 = fmul fast float %1427, %1419
  br label %1432

; <label>:1432                                    ; preds = %1426, %1417
  %1433 = phi float [ %1431, %1426 ], [ %1419, %1417 ]
  %1434 = phi float [ %1428, %1426 ], [ %1420, %1417 ]
  %1435 = phi float [ %1429, %1426 ], [ %1421, %1417 ]
  %1436 = phi float [ %1430, %1426 ], [ %1422, %1417 ]
  br i1 %1425, label %1439, label %1437, !dx.controlflow.hints !87

; <label>:1437                                    ; preds = %1432
  %1438 = fadd fast float %912, %370
  br label %3286

; <label>:1439                                    ; preds = %1432
  %1440 = fmul fast float %1418, 0xBFF7154760000000
  %1441 = call float @dx.op.unary.f32(i32 21, float %1440)  ; Exp(value)
  %1442 = call float @dx.op.unary.f32(i32 7, float %1441)  ; Saturate(value)
  %1443 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %1444 = extractvalue %dx.types.CBufRet.i32 %1443, 0
  %1445 = icmp eq i32 %1444, 1
  br i1 %1445, label %1446, label %1481, !dx.controlflow.hints !88

; <label>:1446                                    ; preds = %1439
  %1447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1448 = extractvalue %dx.types.CBufRet.f32 %1447, 0
  %1449 = extractvalue %dx.types.CBufRet.f32 %1447, 1
  %1450 = fsub fast float %367, %1448
  %1451 = fsub fast float %368, %1449
  %1452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1453 = extractvalue %dx.types.CBufRet.f32 %1452, 0
  %1454 = extractvalue %dx.types.CBufRet.f32 %1452, 1
  %1455 = fmul fast float %1450, %1453
  %1456 = fmul fast float %1451, %1454
  %1457 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %27, float %1455, float %1456, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1458 = extractvalue %dx.types.ResRet.f32 %1457, 0
  %1459 = fcmp fast ogt float %1458, 0.000000e+00
  %1460 = extractvalue %dx.types.CBufRet.i32 %1443, 3
  %1461 = icmp ne i32 %1460, 0
  %1462 = and i1 %1459, %1461
  br i1 %1462, label %1463, label %1481, !dx.controlflow.hints !89

; <label>:1463                                    ; preds = %1446
  %1464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1465 = extractvalue %dx.types.CBufRet.f32 %1464, 0
  %1466 = extractvalue %dx.types.CBufRet.f32 %1464, 1
  %1467 = fsub fast float %367, %1465
  %1468 = fsub fast float %368, %1466
  %1469 = fmul fast float %1467, %1467
  %1470 = fmul fast float %1468, %1468
  %1471 = fadd fast float %1469, %1470
  %1472 = uitofp i32 %1460 to float
  %1473 = fmul fast float %1472, %1472
  %1474 = fcmp fast ogt float %1471, %1473
  br i1 %1474, label %1481, label %1475, !dx.controlflow.hints !90

; <label>:1475                                    ; preds = %1463
  %1476 = call float @dx.op.unary.f32(i32 24, float %1471)  ; Sqrt(value)
  %1477 = fsub fast float %1472, %1476
  %1478 = fmul fast float %1477, 0x3F75555560000000
  %1479 = call float @dx.op.unary.f32(i32 7, float %1478)  ; Saturate(value)
  %1480 = call float @dx.op.binary.f32(i32 36, float %1479, float %1458)  ; FMin(a,b)
  br label %1481

; <label>:1481                                    ; preds = %1475, %1463, %1446, %1439
  %1482 = phi float [ 1.000000e+00, %1439 ], [ %1480, %1475 ], [ %1458, %1446 ], [ 0.000000e+00, %1463 ]
  %1483 = fcmp fast ogt float %1482, 0.000000e+00
  br i1 %1483, label %1484, label %1557, !dx.controlflow.hints !91

; <label>:1484                                    ; preds = %1481
  %1485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %1486 = extractvalue %dx.types.ResRet.i32 %1485, 0
  %1487 = extractvalue %dx.types.ResRet.i32 %1485, 1
  %1488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %1489 = extractvalue %dx.types.ResRet.i32 %1488, 0
  %1490 = extractvalue %dx.types.ResRet.i32 %1488, 1
  %1491 = extractvalue %dx.types.ResRet.i32 %1488, 2
  %1492 = extractvalue %dx.types.ResRet.i32 %1488, 3
  %1493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %1494 = extractvalue %dx.types.ResRet.i32 %1493, 0
  %1495 = extractvalue %dx.types.ResRet.i32 %1493, 1
  %1496 = extractvalue %dx.types.ResRet.i32 %1493, 2
  %1497 = extractvalue %dx.types.ResRet.i32 %1493, 3
  %1498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %1499 = extractvalue %dx.types.ResRet.i32 %1498, 0
  %1500 = extractvalue %dx.types.ResRet.i32 %1498, 1
  %1501 = extractvalue %dx.types.ResRet.i32 %1498, 2
  %1502 = extractvalue %dx.types.ResRet.i32 %1498, 3
  %1503 = and i32 %1499, 65535
  %1504 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1503)  ; LegacyF16ToF32(value)
  %1505 = lshr i32 %1499, 16
  %1506 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1505)  ; LegacyF16ToF32(value)
  %1507 = and i32 %1500, 65535
  %1508 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1507)  ; LegacyF16ToF32(value)
  %1509 = lshr i32 %1500, 16
  %1510 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1509)  ; LegacyF16ToF32(value)
  %1511 = and i32 %1501, 65535
  %1512 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1511)  ; LegacyF16ToF32(value)
  %1513 = lshr i32 %1501, 16
  %1514 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1513)  ; LegacyF16ToF32(value)
  %1515 = and i32 %1502, 65535
  %1516 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1515)  ; LegacyF16ToF32(value)
  %1517 = lshr i32 %1502, 16
  %1518 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1517)  ; LegacyF16ToF32(value)
  %1519 = and i32 %1494, 65535
  %1520 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1519)  ; LegacyF16ToF32(value)
  %1521 = lshr i32 %1494, 16
  %1522 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1521)  ; LegacyF16ToF32(value)
  %1523 = and i32 %1495, 65535
  %1524 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1523)  ; LegacyF16ToF32(value)
  %1525 = lshr i32 %1495, 16
  %1526 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1525)  ; LegacyF16ToF32(value)
  %1527 = and i32 %1496, 65535
  %1528 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1527)  ; LegacyF16ToF32(value)
  %1529 = lshr i32 %1496, 16
  %1530 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1529)  ; LegacyF16ToF32(value)
  %1531 = and i32 %1497, 65535
  %1532 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1531)  ; LegacyF16ToF32(value)
  %1533 = lshr i32 %1497, 16
  %1534 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1533)  ; LegacyF16ToF32(value)
  %1535 = and i32 %1489, 65535
  %1536 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1535)  ; LegacyF16ToF32(value)
  %1537 = lshr i32 %1489, 16
  %1538 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1537)  ; LegacyF16ToF32(value)
  %1539 = and i32 %1490, 65535
  %1540 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1539)  ; LegacyF16ToF32(value)
  %1541 = lshr i32 %1490, 16
  %1542 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1541)  ; LegacyF16ToF32(value)
  %1543 = and i32 %1491, 65535
  %1544 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1543)  ; LegacyF16ToF32(value)
  %1545 = lshr i32 %1491, 16
  %1546 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1545)  ; LegacyF16ToF32(value)
  %1547 = and i32 %1492, 65535
  %1548 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1547)  ; LegacyF16ToF32(value)
  %1549 = lshr i32 %1492, 16
  %1550 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1549)  ; LegacyF16ToF32(value)
  %1551 = and i32 %1486, 65535
  %1552 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1551)  ; LegacyF16ToF32(value)
  %1553 = lshr i32 %1486, 16
  %1554 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1553)  ; LegacyF16ToF32(value)
  %1555 = and i32 %1487, 65535
  %1556 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1555)  ; LegacyF16ToF32(value)
  br label %1557

; <label>:1557                                    ; preds = %1484, %1481
  %1558 = phi float [ %1556, %1484 ], [ 0.000000e+00, %1481 ]
  %1559 = phi float [ %1554, %1484 ], [ 0.000000e+00, %1481 ]
  %1560 = phi float [ %1552, %1484 ], [ 0.000000e+00, %1481 ]
  %1561 = phi float [ %1550, %1484 ], [ 0.000000e+00, %1481 ]
  %1562 = phi float [ %1548, %1484 ], [ 0.000000e+00, %1481 ]
  %1563 = phi float [ %1546, %1484 ], [ 0.000000e+00, %1481 ]
  %1564 = phi float [ %1544, %1484 ], [ 0.000000e+00, %1481 ]
  %1565 = phi float [ %1542, %1484 ], [ 0.000000e+00, %1481 ]
  %1566 = phi float [ %1540, %1484 ], [ 0.000000e+00, %1481 ]
  %1567 = phi float [ %1538, %1484 ], [ 0.000000e+00, %1481 ]
  %1568 = phi float [ %1536, %1484 ], [ 0.000000e+00, %1481 ]
  %1569 = phi float [ %1534, %1484 ], [ 0.000000e+00, %1481 ]
  %1570 = phi float [ %1532, %1484 ], [ 0.000000e+00, %1481 ]
  %1571 = phi float [ %1530, %1484 ], [ 0.000000e+00, %1481 ]
  %1572 = phi float [ %1528, %1484 ], [ 0.000000e+00, %1481 ]
  %1573 = phi float [ %1526, %1484 ], [ 0.000000e+00, %1481 ]
  %1574 = phi float [ %1524, %1484 ], [ 0.000000e+00, %1481 ]
  %1575 = phi float [ %1522, %1484 ], [ 0.000000e+00, %1481 ]
  %1576 = phi float [ %1520, %1484 ], [ 0.000000e+00, %1481 ]
  %1577 = phi float [ %1518, %1484 ], [ 0.000000e+00, %1481 ]
  %1578 = phi float [ %1516, %1484 ], [ 0.000000e+00, %1481 ]
  %1579 = phi float [ %1514, %1484 ], [ 0.000000e+00, %1481 ]
  %1580 = phi float [ %1512, %1484 ], [ 0.000000e+00, %1481 ]
  %1581 = phi float [ %1510, %1484 ], [ 0.000000e+00, %1481 ]
  %1582 = phi float [ %1508, %1484 ], [ 0.000000e+00, %1481 ]
  %1583 = phi float [ %1506, %1484 ], [ 0.000000e+00, %1481 ]
  %1584 = phi float [ %1504, %1484 ], [ 0.000000e+00, %1481 ]
  %1585 = fcmp fast olt float %1482, 1.000000e+00
  br i1 %1585, label %1586, label %2246, !dx.controlflow.hints !92

; <label>:1586                                    ; preds = %1557
  %1587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1588 = extractvalue %dx.types.CBufRet.f32 %1587, 0
  %1589 = extractvalue %dx.types.CBufRet.f32 %1587, 1
  %1590 = fsub fast float %367, %1588
  %1591 = fsub fast float %368, %1589
  %1592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1593 = extractvalue %dx.types.CBufRet.f32 %1592, 0
  %1594 = extractvalue %dx.types.CBufRet.f32 %1592, 1
  %1595 = fmul fast float %1590, %1593
  %1596 = fmul fast float %1591, %1594
  %1597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1598 = extractvalue %dx.types.CBufRet.f32 %1597, 0
  %1599 = fmul fast float %1598, %1595
  %1600 = extractvalue %dx.types.CBufRet.f32 %1597, 1
  %1601 = fadd fast float %1599, %1600
  %1602 = extractvalue %dx.types.CBufRet.f32 %1597, 2
  %1603 = fmul fast float %1602, %1596
  %1604 = extractvalue %dx.types.CBufRet.f32 %1597, 3
  %1605 = fadd fast float %1603, %1604
  %1606 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %27, float %1601, float %1605, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1607 = extractvalue %dx.types.ResRet.f32 %1606, 0
  %1608 = extractvalue %dx.types.ResRet.f32 %1606, 1
  %1609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1610 = extractvalue %dx.types.CBufRet.f32 %1609, 1
  %1611 = extractvalue %dx.types.CBufRet.f32 %1609, 0
  %1612 = fsub fast float %1610, %1611
  %1613 = fmul fast float %1612, %1607
  %1614 = fadd fast float %1613, %1611
  %1615 = extractvalue %dx.types.CBufRet.f32 %1609, 3
  %1616 = extractvalue %dx.types.CBufRet.f32 %1609, 2
  %1617 = fsub fast float %1615, %1616
  %1618 = fmul fast float %1617, %1608
  %1619 = fadd fast float %1618, %1616
  %1620 = fsub fast float %369, %1614
  %1621 = fsub fast float %1619, %1614
  %1622 = fdiv fast float %1620, %1621
  %1623 = call float @dx.op.unary.f32(i32 7, float %1622)  ; Saturate(value)
  %1624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %1625 = extractvalue %dx.types.CBufRet.f32 %1624, 0
  %1626 = fmul fast float %1625, %1623
  %1627 = extractvalue %dx.types.CBufRet.f32 %1624, 1
  %1628 = fadd fast float %1626, %1627
  %1629 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %27, float %1601, float %1605, float %1628, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1630 = extractvalue %dx.types.ResRet.f32 %1629, 0
  %1631 = extractvalue %dx.types.ResRet.f32 %1629, 1
  %1632 = extractvalue %dx.types.ResRet.f32 %1629, 2
  %1633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %1634 = extractvalue %dx.types.CBufRet.f32 %1633, 0
  %1635 = extractvalue %dx.types.CBufRet.f32 %1633, 1
  %1636 = extractvalue %dx.types.CBufRet.f32 %1633, 2
  %1637 = fmul fast float %1634, %1630
  %1638 = fmul fast float %1635, %1631
  %1639 = fmul fast float %1636, %1632
  %1640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %1641 = extractvalue %dx.types.CBufRet.f32 %1640, 0
  %1642 = extractvalue %dx.types.CBufRet.f32 %1640, 1
  %1643 = extractvalue %dx.types.CBufRet.f32 %1640, 2
  %1644 = fadd fast float %1637, %1641
  %1645 = fadd fast float %1638, %1642
  %1646 = fadd fast float %1639, %1643
  %1647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %1648 = extractvalue %dx.types.CBufRet.f32 %1647, 0
  %1649 = fmul fast float %1648, %1595
  %1650 = extractvalue %dx.types.CBufRet.f32 %1647, 1
  %1651 = fadd fast float %1649, %1650
  %1652 = extractvalue %dx.types.CBufRet.f32 %1647, 2
  %1653 = fmul fast float %1652, %1596
  %1654 = extractvalue %dx.types.CBufRet.f32 %1647, 3
  %1655 = fadd fast float %1653, %1654
  %1656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %1657 = extractvalue %dx.types.CBufRet.f32 %1656, 0
  %1658 = extractvalue %dx.types.CBufRet.f32 %1656, 1
  %1659 = extractvalue %dx.types.CBufRet.f32 %1656, 2
  %1660 = extractvalue %dx.types.CBufRet.f32 %1656, 3
  %1661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %1662 = extractvalue %dx.types.CBufRet.f32 %1661, 0
  %1663 = extractvalue %dx.types.CBufRet.f32 %1661, 1
  %1664 = extractvalue %dx.types.CBufRet.f32 %1661, 2
  %1665 = extractvalue %dx.types.CBufRet.f32 %1661, 3
  %1666 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %27, float %1651, float %1655, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1667 = extractvalue %dx.types.ResRet.f32 %1666, 0
  %1668 = extractvalue %dx.types.ResRet.f32 %1666, 1
  %1669 = extractvalue %dx.types.ResRet.f32 %1666, 2
  %1670 = extractvalue %dx.types.ResRet.f32 %1666, 3
  %1671 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %27, float %1651, float %1655, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1672 = extractvalue %dx.types.ResRet.f32 %1671, 0
  %1673 = extractvalue %dx.types.ResRet.f32 %1671, 1
  %1674 = extractvalue %dx.types.ResRet.f32 %1671, 2
  %1675 = extractvalue %dx.types.ResRet.f32 %1671, 3
  %1676 = fmul fast float %1667, %1644
  %1677 = fmul fast float %1672, %1644
  %1678 = fmul fast float %1674, %1644
  %1679 = fmul fast float %1670, %1644
  %1680 = fadd fast float %1676, %1657
  %1681 = fadd fast float %1677, %1658
  %1682 = fadd fast float %1678, %1659
  %1683 = fadd fast float %1679, %1660
  %1684 = fmul fast float %1668, %1644
  %1685 = fmul fast float %1673, %1644
  %1686 = fadd fast float %1684, %1662
  %1687 = fadd fast float %1685, %1663
  %1688 = fmul fast float %1669, %1644
  %1689 = fmul fast float %1675, %1644
  %1690 = fadd fast float %1688, %1664
  %1691 = fadd fast float %1689, %1665
  %1692 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %27, float %1651, float %1655, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1693 = extractvalue %dx.types.ResRet.f32 %1692, 0
  %1694 = extractvalue %dx.types.ResRet.f32 %1692, 1
  %1695 = extractvalue %dx.types.ResRet.f32 %1692, 2
  %1696 = extractvalue %dx.types.ResRet.f32 %1692, 3
  %1697 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %27, float %1651, float %1655, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1698 = extractvalue %dx.types.ResRet.f32 %1697, 0
  %1699 = extractvalue %dx.types.ResRet.f32 %1697, 1
  %1700 = extractvalue %dx.types.ResRet.f32 %1697, 2
  %1701 = extractvalue %dx.types.ResRet.f32 %1697, 3
  %1702 = fmul fast float %1693, %1645
  %1703 = fmul fast float %1698, %1645
  %1704 = fmul fast float %1700, %1645
  %1705 = fmul fast float %1696, %1645
  %1706 = fadd fast float %1680, %1702
  %1707 = fadd fast float %1681, %1703
  %1708 = fadd fast float %1682, %1704
  %1709 = fadd fast float %1683, %1705
  %1710 = fmul fast float %1694, %1645
  %1711 = fmul fast float %1699, %1645
  %1712 = fadd fast float %1686, %1710
  %1713 = fadd fast float %1687, %1711
  %1714 = fmul fast float %1695, %1645
  %1715 = fmul fast float %1701, %1645
  %1716 = fadd fast float %1690, %1714
  %1717 = fadd fast float %1691, %1715
  %1718 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %27, float %1651, float %1655, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1719 = extractvalue %dx.types.ResRet.f32 %1718, 0
  %1720 = extractvalue %dx.types.ResRet.f32 %1718, 1
  %1721 = extractvalue %dx.types.ResRet.f32 %1718, 2
  %1722 = extractvalue %dx.types.ResRet.f32 %1718, 3
  %1723 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %27, float %1651, float %1655, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1724 = extractvalue %dx.types.ResRet.f32 %1723, 0
  %1725 = extractvalue %dx.types.ResRet.f32 %1723, 1
  %1726 = extractvalue %dx.types.ResRet.f32 %1723, 2
  %1727 = extractvalue %dx.types.ResRet.f32 %1723, 3
  %1728 = fmul fast float %1719, %1646
  %1729 = fmul fast float %1724, %1646
  %1730 = fmul fast float %1726, %1646
  %1731 = fmul fast float %1722, %1646
  %1732 = fadd fast float %1706, %1728
  %1733 = fadd fast float %1707, %1729
  %1734 = fadd fast float %1708, %1730
  %1735 = fadd fast float %1709, %1731
  %1736 = fmul fast float %1720, %1646
  %1737 = fmul fast float %1725, %1646
  %1738 = fadd fast float %1712, %1736
  %1739 = fadd fast float %1713, %1737
  %1740 = fmul fast float %1721, %1646
  %1741 = fmul fast float %1727, %1646
  %1742 = fadd fast float %1716, %1740
  %1743 = fadd fast float %1717, %1741
  %1744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %1745 = extractvalue %dx.types.CBufRet.f32 %1744, 0
  %1746 = fsub fast float %367, %1745
  %1747 = fsub fast float %1588, %367
  %1748 = call float @dx.op.binary.f32(i32 35, float %1747, float %1746)  ; FMax(a,b)
  %1749 = extractvalue %dx.types.CBufRet.f32 %1744, 1
  %1750 = fsub fast float %368, %1749
  %1751 = fsub fast float %1589, %368
  %1752 = call float @dx.op.binary.f32(i32 35, float %1751, float %1750)  ; FMax(a,b)
  %1753 = call float @dx.op.binary.f32(i32 35, float %1748, float %1752)  ; FMax(a,b)
  %1754 = extractvalue %dx.types.CBufRet.f32 %1592, 3
  %1755 = fmul fast float %1754, %1753
  %1756 = call float @dx.op.unary.f32(i32 7, float %1755)  ; Saturate(value)
  %1757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %1758 = extractvalue %dx.types.CBufRet.f32 %1757, 0
  %1759 = extractvalue %dx.types.CBufRet.f32 %1757, 1
  %1760 = extractvalue %dx.types.CBufRet.f32 %1757, 2
  %1761 = extractvalue %dx.types.CBufRet.f32 %1757, 3
  %1762 = fsub fast float %1758, %1732
  %1763 = fsub fast float %1759, %1733
  %1764 = fsub fast float %1760, %1734
  %1765 = fsub fast float %1761, %1735
  %1766 = fmul fast float %1762, %1756
  %1767 = fmul fast float %1763, %1756
  %1768 = fmul fast float %1764, %1756
  %1769 = fmul fast float %1765, %1756
  %1770 = fadd fast float %1766, %1732
  %1771 = fadd fast float %1767, %1733
  %1772 = fadd fast float %1768, %1734
  %1773 = fadd fast float %1769, %1735
  %1774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %1775 = extractvalue %dx.types.CBufRet.f32 %1774, 0
  %1776 = extractvalue %dx.types.CBufRet.f32 %1774, 1
  %1777 = fsub fast float %1775, %1738
  %1778 = fsub fast float %1776, %1739
  %1779 = fmul fast float %1777, %1756
  %1780 = fmul fast float %1778, %1756
  %1781 = fadd fast float %1779, %1738
  %1782 = fadd fast float %1780, %1739
  %1783 = extractvalue %dx.types.CBufRet.f32 %1774, 2
  %1784 = extractvalue %dx.types.CBufRet.f32 %1774, 3
  %1785 = fsub fast float %1783, %1742
  %1786 = fsub fast float %1784, %1743
  %1787 = fmul fast float %1785, %1756
  %1788 = fmul fast float %1786, %1756
  %1789 = fadd fast float %1787, %1742
  %1790 = fadd fast float %1788, %1743
  %1791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %1792 = extractvalue %dx.types.CBufRet.f32 %1791, 0
  %1793 = fmul fast float %1792, %1770
  %1794 = fmul fast float %1792, %1771
  %1795 = fmul fast float %1792, %1772
  %1796 = fmul fast float %1792, %1773
  %1797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %1798 = extractvalue %dx.types.CBufRet.f32 %1797, 0
  %1799 = fmul fast float %1798, %1781
  %1800 = fmul fast float %1798, %1782
  %1801 = fadd fast float %1799, %1793
  %1802 = fadd fast float %1800, %1795
  %1803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %1804 = extractvalue %dx.types.CBufRet.f32 %1803, 0
  %1805 = fmul fast float %1804, %1789
  %1806 = fmul fast float %1804, %1790
  %1807 = fadd fast float %1801, %1805
  %1808 = fadd fast float %1802, %1806
  %1809 = extractvalue %dx.types.CBufRet.f32 %1791, 1
  %1810 = fmul fast float %1809, %1770
  %1811 = fmul fast float %1809, %1771
  %1812 = fmul fast float %1809, %1772
  %1813 = fmul fast float %1809, %1773
  %1814 = extractvalue %dx.types.CBufRet.f32 %1797, 1
  %1815 = fmul fast float %1814, %1781
  %1816 = fmul fast float %1814, %1782
  %1817 = fadd fast float %1815, %1810
  %1818 = fadd fast float %1816, %1812
  %1819 = extractvalue %dx.types.CBufRet.f32 %1803, 1
  %1820 = fmul fast float %1819, %1789
  %1821 = fmul fast float %1819, %1790
  %1822 = fadd fast float %1817, %1820
  %1823 = fadd fast float %1818, %1821
  %1824 = extractvalue %dx.types.CBufRet.f32 %1791, 2
  %1825 = fmul fast float %1824, %1770
  %1826 = fmul fast float %1824, %1771
  %1827 = fmul fast float %1824, %1772
  %1828 = fmul fast float %1824, %1773
  %1829 = extractvalue %dx.types.CBufRet.f32 %1797, 2
  %1830 = fmul fast float %1829, %1781
  %1831 = fmul fast float %1829, %1782
  %1832 = fadd fast float %1830, %1825
  %1833 = fadd fast float %1831, %1827
  %1834 = extractvalue %dx.types.CBufRet.f32 %1803, 2
  %1835 = fmul fast float %1834, %1789
  %1836 = fmul fast float %1834, %1790
  %1837 = fadd fast float %1832, %1835
  %1838 = fadd fast float %1833, %1836
  %1839 = fmul fast float %1826, %1826
  %1840 = fmul fast float %1838, %1838
  %1841 = fmul fast float %1828, %1828
  %1842 = fadd fast float %1841, %1839
  %1843 = fadd fast float %1842, %1840
  %1844 = call float @dx.op.unary.f32(i32 24, float %1843)  ; Sqrt(value)
  %1845 = fcmp fast ugt float %1844, 0.000000e+00
  br i1 %1845, label %1846, label %1861, !dx.controlflow.hints !93

; <label>:1846                                    ; preds = %1586
  %1847 = fsub fast float -0.000000e+00, %1828
  %1848 = fdiv fast float %1847, %1844
  %1849 = fsub fast float -0.000000e+00, %1826
  %1850 = fdiv fast float %1849, %1844
  %1851 = fdiv fast float %1838, %1844
  %1852 = fmul fast float %1837, 0x3FE279A760000000
  %1853 = fmul fast float %1850, %1826
  %1854 = fmul fast float %1851, %1838
  %1855 = fmul fast float %1848, %1828
  %1856 = fadd fast float %1853, %1855
  %1857 = fsub fast float %1856, %1854
  %1858 = call float @dx.op.unary.f32(i32 6, float %1857)  ; FAbs(value)
  %1859 = fadd fast float %1858, 0x3DDB7CDFE0000000
  %1860 = fdiv fast float %1852, %1859
  br label %1861

; <label>:1861                                    ; preds = %1846, %1586
  %1862 = phi float [ %1860, %1846 ], [ 1.000000e+00, %1586 ]
  %1863 = fmul fast float %1811, %1811
  %1864 = fmul fast float %1823, %1823
  %1865 = fmul fast float %1813, %1813
  %1866 = fadd fast float %1865, %1863
  %1867 = fadd fast float %1866, %1864
  %1868 = call float @dx.op.unary.f32(i32 24, float %1867)  ; Sqrt(value)
  %1869 = fcmp fast ugt float %1868, 0.000000e+00
  br i1 %1869, label %1870, label %1885, !dx.controlflow.hints !93

; <label>:1870                                    ; preds = %1861
  %1871 = fsub fast float -0.000000e+00, %1813
  %1872 = fdiv fast float %1871, %1868
  %1873 = fsub fast float -0.000000e+00, %1811
  %1874 = fdiv fast float %1873, %1868
  %1875 = fdiv fast float %1823, %1868
  %1876 = fmul fast float %1822, 0x3FE279A760000000
  %1877 = fmul fast float %1874, %1811
  %1878 = fmul fast float %1875, %1823
  %1879 = fmul fast float %1872, %1813
  %1880 = fadd fast float %1877, %1879
  %1881 = fsub fast float %1880, %1878
  %1882 = call float @dx.op.unary.f32(i32 6, float %1881)  ; FAbs(value)
  %1883 = fadd fast float %1882, 0x3DDB7CDFE0000000
  %1884 = fdiv fast float %1876, %1883
  br label %1885

; <label>:1885                                    ; preds = %1870, %1861
  %1886 = phi float [ %1884, %1870 ], [ 1.000000e+00, %1861 ]
  %1887 = call float @dx.op.binary.f32(i32 36, float %1886, float %1862)  ; FMin(a,b)
  %1888 = fmul fast float %1794, %1794
  %1889 = fmul fast float %1808, %1808
  %1890 = fmul fast float %1796, %1796
  %1891 = fadd fast float %1890, %1888
  %1892 = fadd fast float %1891, %1889
  %1893 = call float @dx.op.unary.f32(i32 24, float %1892)  ; Sqrt(value)
  %1894 = fcmp fast ugt float %1893, 0.000000e+00
  br i1 %1894, label %1895, label %1910, !dx.controlflow.hints !93

; <label>:1895                                    ; preds = %1885
  %1896 = fsub fast float -0.000000e+00, %1796
  %1897 = fdiv fast float %1896, %1893
  %1898 = fsub fast float -0.000000e+00, %1794
  %1899 = fdiv fast float %1898, %1893
  %1900 = fdiv fast float %1808, %1893
  %1901 = fmul fast float %1807, 0x3FE279A760000000
  %1902 = fmul fast float %1899, %1794
  %1903 = fmul fast float %1900, %1808
  %1904 = fmul fast float %1897, %1796
  %1905 = fadd fast float %1902, %1904
  %1906 = fsub fast float %1905, %1903
  %1907 = call float @dx.op.unary.f32(i32 6, float %1906)  ; FAbs(value)
  %1908 = fadd fast float %1907, 0x3DDB7CDFE0000000
  %1909 = fdiv fast float %1901, %1908
  br label %1910

; <label>:1910                                    ; preds = %1895, %1885
  %1911 = phi float [ %1909, %1895 ], [ 1.000000e+00, %1885 ]
  %1912 = call float @dx.op.binary.f32(i32 36, float %1911, float %1887)  ; FMin(a,b)
  %1913 = call float @dx.op.unary.f32(i32 7, float %1912)  ; Saturate(value)
  %1914 = fcmp fast olt float %1913, 1.000000e+00
  br i1 %1914, label %1915, label %1925, !dx.controlflow.hints !94

; <label>:1915                                    ; preds = %1910
  %1916 = fmul fast float %1913, %1794
  %1917 = fmul fast float %1913, %1808
  %1918 = fmul fast float %1913, %1796
  %1919 = fmul fast float %1913, %1811
  %1920 = fmul fast float %1913, %1823
  %1921 = fmul fast float %1913, %1813
  %1922 = fmul fast float %1913, %1826
  %1923 = fmul fast float %1913, %1838
  %1924 = fmul fast float %1913, %1828
  br label %1925

; <label>:1925                                    ; preds = %1915, %1910
  %1926 = phi float [ %1922, %1915 ], [ %1826, %1910 ]
  %1927 = phi float [ %1923, %1915 ], [ %1838, %1910 ]
  %1928 = phi float [ %1924, %1915 ], [ %1828, %1910 ]
  %1929 = phi float [ %1919, %1915 ], [ %1811, %1910 ]
  %1930 = phi float [ %1920, %1915 ], [ %1823, %1910 ]
  %1931 = phi float [ %1921, %1915 ], [ %1813, %1910 ]
  %1932 = phi float [ %1916, %1915 ], [ %1794, %1910 ]
  %1933 = phi float [ %1917, %1915 ], [ %1808, %1910 ]
  %1934 = phi float [ %1918, %1915 ], [ %1796, %1910 ]
  %1935 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1807)  ; FMax(a,b)
  %1936 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1822)  ; FMax(a,b)
  %1937 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1837)  ; FMax(a,b)
  %1938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %1939 = extractvalue %dx.types.CBufRet.f32 %1938, 0
  %1940 = fcmp fast ogt float %1939, 0.000000e+00
  %1941 = fcmp fast oge float %1595, 0.000000e+00
  %1942 = and i1 %1941, %1940
  %1943 = fcmp fast ole float %1595, 1.000000e+00
  %1944 = and i1 %1943, %1942
  %1945 = fcmp fast oge float %1596, 0.000000e+00
  %1946 = and i1 %1945, %1944
  %1947 = fcmp fast ole float %1596, 1.000000e+00
  %1948 = and i1 %1947, %1946
  br i1 %1948, label %1949, label %2094, !dx.controlflow.hints !95

; <label>:1949                                    ; preds = %1925
  %1950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1951 = extractvalue %dx.types.CBufRet.f32 %1950, 2
  %1952 = extractvalue %dx.types.CBufRet.f32 %1950, 3
  %1953 = fmul fast float %1951, %1595
  %1954 = fmul fast float %1952, %1596
  %1955 = call float @dx.op.unary.f32(i32 27, float %1953)  ; Round_ni(value)
  %1956 = call float @dx.op.unary.f32(i32 27, float %1954)  ; Round_ni(value)
  %1957 = fptosi float %1955 to i32
  %1958 = fptosi float %1956 to i32
  %1959 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %1957, i32 %1958, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1960 = extractvalue %dx.types.ResRet.i32 %1959, 0
  %1961 = and i32 %1960, 65535
  %1962 = lshr i32 %1960, 16
  %1963 = icmp eq i32 %1961, 65535
  br i1 %1963, label %2000, label %1964, !dx.controlflow.hints !96

; <label>:1964                                    ; preds = %1949
  %1965 = extractvalue %dx.types.CBufRet.f32 %1938, 1
  %1966 = extractvalue %dx.types.CBufRet.f32 %1950, 0
  %1967 = extractvalue %dx.types.CBufRet.f32 %1950, 1
  %1968 = fmul fast float %1966, %1595
  %1969 = fmul fast float %1967, %1596
  %1970 = fmul fast float %1968, 1.250000e-01
  %1971 = fmul fast float %1969, 1.250000e-01
  %1972 = call float @dx.op.unary.f32(i32 27, float %1970)  ; Round_ni(value)
  %1973 = call float @dx.op.unary.f32(i32 27, float %1971)  ; Round_ni(value)
  %1974 = fmul fast float %1972, 8.000000e+00
  %1975 = fmul fast float %1973, 8.000000e+00
  %1976 = and i32 %1960, 255
  %1977 = lshr i32 %1960, 8
  %1978 = and i32 %1977, 255
  %1979 = mul nuw nsw i32 %1976, 9
  %1980 = uitofp i32 %1979 to float
  %1981 = mul nuw nsw i32 %1978, 9
  %1982 = uitofp i32 %1981 to float
  %1983 = fadd fast float %1980, 5.000000e-01
  %1984 = fadd fast float %1983, %1968
  %1985 = fsub fast float %1984, %1974
  %1986 = fadd fast float %1982, 5.000000e-01
  %1987 = fadd fast float %1986, %1969
  %1988 = fsub fast float %1987, %1975
  %1989 = fdiv fast float %1985, %1939
  %1990 = fdiv fast float %1988, %1965
  %1991 = fmul fast float %1623, 4.375000e-01
  %1992 = fadd fast float %1991, 3.125000e-02
  %1993 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %27, float %1989, float %1990, float %1992, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1994 = extractvalue %dx.types.ResRet.f32 %1993, 0
  %1995 = extractvalue %dx.types.ResRet.f32 %1993, 1
  %1996 = extractvalue %dx.types.ResRet.f32 %1993, 2
  %1997 = fadd fast float %1994, %1935
  %1998 = fadd fast float %1995, %1936
  %1999 = fadd fast float %1996, %1937
  br label %2000

; <label>:2000                                    ; preds = %1964, %1949
  %2001 = phi float [ %1999, %1964 ], [ %1937, %1949 ]
  %2002 = phi float [ %1998, %1964 ], [ %1936, %1949 ]
  %2003 = phi float [ %1997, %1964 ], [ %1935, %1949 ]
  %2004 = icmp eq i32 %1962, 65535
  br i1 %2004, label %2094, label %2005, !dx.controlflow.hints !97

; <label>:2005                                    ; preds = %2000
  %2006 = extractvalue %dx.types.CBufRet.f32 %1938, 1
  %2007 = extractvalue %dx.types.CBufRet.f32 %1950, 0
  %2008 = extractvalue %dx.types.CBufRet.f32 %1950, 1
  %2009 = fmul fast float %2007, %1595
  %2010 = fmul fast float %2008, %1596
  %2011 = fmul fast float %2009, 1.250000e-01
  %2012 = fmul fast float %2010, 1.250000e-01
  %2013 = call float @dx.op.unary.f32(i32 27, float %2011)  ; Round_ni(value)
  %2014 = call float @dx.op.unary.f32(i32 27, float %2012)  ; Round_ni(value)
  %2015 = fmul fast float %2013, 8.000000e+00
  %2016 = fmul fast float %2014, 8.000000e+00
  %2017 = fsub fast float %2009, %2015
  %2018 = fsub fast float %2010, %2016
  %2019 = fadd fast float %2017, 5.000000e-01
  %2020 = fadd fast float %2018, 5.000000e-01
  %2021 = and i32 %1962, 255
  %2022 = lshr i32 %1960, 24
  %2023 = mul nuw nsw i32 %2021, 9
  %2024 = uitofp i32 %2023 to float
  %2025 = mul nuw nsw i32 %2022, 9
  %2026 = uitofp i32 %2025 to float
  %2027 = fadd fast float %2019, %2024
  %2028 = fadd fast float %2020, %2026
  %2029 = fdiv fast float %2027, %1939
  %2030 = fdiv fast float %2028, %2006
  %2031 = fmul fast float %1623, 4.375000e-01
  %2032 = fadd fast float %2031, 3.125000e-02
  %2033 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %27, float %2029, float %2030, float %2032, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2034 = extractvalue %dx.types.ResRet.f32 %2033, 0
  %2035 = extractvalue %dx.types.ResRet.f32 %2033, 1
  %2036 = extractvalue %dx.types.ResRet.f32 %2033, 2
  %2037 = fadd fast float %2031, 5.312500e-01
  %2038 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %27, float %2029, float %2030, float %2037, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2039 = extractvalue %dx.types.ResRet.f32 %2038, 0
  %2040 = extractvalue %dx.types.ResRet.f32 %2038, 1
  %2041 = extractvalue %dx.types.ResRet.f32 %2038, 2
  %2042 = fmul fast float %2039, 2.000000e+00
  %2043 = fmul fast float %2040, 2.000000e+00
  %2044 = fmul fast float %2041, 2.000000e+00
  %2045 = fadd fast float %2042, -1.000000e+00
  %2046 = fadd fast float %2043, -1.000000e+00
  %2047 = fadd fast float %2044, -1.000000e+00
  %2048 = fmul fast float %2045, %2045
  %2049 = fmul fast float %2046, %2046
  %2050 = fadd fast float %2048, %2049
  %2051 = fmul fast float %2047, %2047
  %2052 = fadd fast float %2050, %2051
  %2053 = call float @dx.op.unary.f32(i32 24, float %2052)  ; Sqrt(value)
  %2054 = fcmp fast ogt float %2053, 0.000000e+00
  br i1 %2054, label %2055, label %2059, !dx.controlflow.hints !98

; <label>:2055                                    ; preds = %2005
  %2056 = fdiv fast float %2045, %2053
  %2057 = fdiv fast float %2046, %2053
  %2058 = fdiv fast float %2047, %2053
  br label %2059

; <label>:2059                                    ; preds = %2055, %2005
  %2060 = phi float [ %2056, %2055 ], [ 0.000000e+00, %2005 ]
  %2061 = phi float [ %2057, %2055 ], [ 0.000000e+00, %2005 ]
  %2062 = phi float [ %2058, %2055 ], [ 0.000000e+00, %2005 ]
  %2063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2064 = extractvalue %dx.types.CBufRet.f32 %2063, 0
  %2065 = extractvalue %dx.types.CBufRet.f32 %2063, 1
  %2066 = fsub fast float %367, %2064
  %2067 = fsub fast float %368, %2065
  %2068 = fmul fast float %2066, %2066
  %2069 = fmul fast float %2067, %2067
  %2070 = fadd fast float %2068, %2069
  %2071 = call float @dx.op.unary.f32(i32 24, float %2070)  ; Sqrt(value)
  %2072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2073 = extractvalue %dx.types.CBufRet.f32 %2072, 0
  %2074 = extractvalue %dx.types.CBufRet.f32 %2072, 1
  %2075 = fsub fast float %2071, %2073
  %2076 = fdiv fast float %2075, %2074
  %2077 = call float @dx.op.unary.f32(i32 7, float %2076)  ; Saturate(value)
  %2078 = fmul fast float %2077, 2.000000e+00
  %2079 = fsub fast float 3.000000e+00, %2078
  %2080 = fmul fast float %2077, %2077
  %2081 = fmul fast float %2080, %2079
  %2082 = call float @dx.op.dot3.f32(i32 55, float %2060, float %2061, float %2062, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2083 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2082)  ; FMax(a,b)
  %2084 = fmul fast float %2083, 0x400C5BF8A0000000
  %2085 = fmul fast float %2081, %2034
  %2086 = fmul fast float %2085, %2084
  %2087 = fadd fast float %2086, %2003
  %2088 = fmul fast float %2081, %2035
  %2089 = fmul fast float %2088, %2084
  %2090 = fadd fast float %2089, %2002
  %2091 = fmul fast float %2081, %2036
  %2092 = fmul fast float %2091, %2084
  %2093 = fadd fast float %2092, %2001
  br label %2094

; <label>:2094                                    ; preds = %2059, %2000, %1925
  %2095 = phi float [ %2093, %2059 ], [ %2001, %2000 ], [ %1937, %1925 ]
  %2096 = phi float [ %2090, %2059 ], [ %2002, %2000 ], [ %1936, %1925 ]
  %2097 = phi float [ %2087, %2059 ], [ %2003, %2000 ], [ %1935, %1925 ]
  %2098 = fcmp fast ogt float %369, %1619
  %2099 = and i1 %1941, %2098
  %2100 = and i1 %1943, %2099
  %2101 = and i1 %1945, %2100
  %2102 = and i1 %1947, %2101
  br i1 %2102, label %2103, label %2160, !dx.controlflow.hints !99

; <label>:2103                                    ; preds = %2094
  %2104 = fmul fast float %1621, 0x3FC24924A0000000
  %2105 = fsub fast float %369, %1619
  %2106 = fdiv fast float %2105, %2104
  %2107 = call float @dx.op.unary.f32(i32 7, float %2106)  ; Saturate(value)
  %2108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %2109 = extractvalue %dx.types.CBufRet.f32 %2108, 0
  %2110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %2111 = extractvalue %dx.types.CBufRet.f32 %2110, 0
  %2112 = extractvalue %dx.types.CBufRet.f32 %2110, 1
  %2113 = extractvalue %dx.types.CBufRet.f32 %2110, 2
  %2114 = fsub fast float %2109, %2097
  %2115 = fsub fast float %2111, %1932
  %2116 = fsub fast float %2112, %1933
  %2117 = fsub fast float %2113, %1934
  %2118 = fmul fast float %2114, %2107
  %2119 = fmul fast float %2115, %2107
  %2120 = fmul fast float %2116, %2107
  %2121 = fmul fast float %2117, %2107
  %2122 = fadd fast float %2118, %2097
  %2123 = fadd fast float %2119, %1932
  %2124 = fadd fast float %2120, %1933
  %2125 = fadd fast float %2121, %1934
  %2126 = extractvalue %dx.types.CBufRet.f32 %2108, 1
  %2127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %2128 = extractvalue %dx.types.CBufRet.f32 %2127, 0
  %2129 = extractvalue %dx.types.CBufRet.f32 %2127, 1
  %2130 = extractvalue %dx.types.CBufRet.f32 %2127, 2
  %2131 = fsub fast float %2126, %2096
  %2132 = fsub fast float %2128, %1929
  %2133 = fsub fast float %2129, %1930
  %2134 = fsub fast float %2130, %1931
  %2135 = fmul fast float %2131, %2107
  %2136 = fmul fast float %2132, %2107
  %2137 = fmul fast float %2133, %2107
  %2138 = fmul fast float %2134, %2107
  %2139 = fadd fast float %2135, %2096
  %2140 = fadd fast float %2136, %1929
  %2141 = fadd fast float %2137, %1930
  %2142 = fadd fast float %2138, %1931
  %2143 = extractvalue %dx.types.CBufRet.f32 %2108, 2
  %2144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %2145 = extractvalue %dx.types.CBufRet.f32 %2144, 0
  %2146 = extractvalue %dx.types.CBufRet.f32 %2144, 1
  %2147 = extractvalue %dx.types.CBufRet.f32 %2144, 2
  %2148 = fsub fast float %2143, %2095
  %2149 = fsub fast float %2145, %1926
  %2150 = fsub fast float %2146, %1927
  %2151 = fsub fast float %2147, %1928
  %2152 = fmul fast float %2148, %2107
  %2153 = fmul fast float %2149, %2107
  %2154 = fmul fast float %2150, %2107
  %2155 = fmul fast float %2151, %2107
  %2156 = fadd fast float %2152, %2095
  %2157 = fadd fast float %2153, %1926
  %2158 = fadd fast float %2154, %1927
  %2159 = fadd fast float %2155, %1928
  br label %2160

; <label>:2160                                    ; preds = %2103, %2094
  %2161 = phi float [ %2156, %2103 ], [ %2095, %2094 ]
  %2162 = phi float [ %2157, %2103 ], [ %1926, %2094 ]
  %2163 = phi float [ %2158, %2103 ], [ %1927, %2094 ]
  %2164 = phi float [ %2159, %2103 ], [ %1928, %2094 ]
  %2165 = phi float [ %2139, %2103 ], [ %2096, %2094 ]
  %2166 = phi float [ %2140, %2103 ], [ %1929, %2094 ]
  %2167 = phi float [ %2141, %2103 ], [ %1930, %2094 ]
  %2168 = phi float [ %2142, %2103 ], [ %1931, %2094 ]
  %2169 = phi float [ %2122, %2103 ], [ %2097, %2094 ]
  %2170 = phi float [ %2123, %2103 ], [ %1932, %2094 ]
  %2171 = phi float [ %2124, %2103 ], [ %1933, %2094 ]
  %2172 = phi float [ %2125, %2103 ], [ %1934, %2094 ]
  %2173 = extractvalue %dx.types.CBufRet.f32 %1744, 3
  %2174 = fmul fast float %2173, %2169
  %2175 = fmul fast float %2173, %2165
  %2176 = fmul fast float %2173, %2161
  %2177 = fmul fast float %2170, 1.500000e+00
  %2178 = fmul fast float %2177, %2173
  %2179 = fmul fast float %2171, 1.500000e+00
  %2180 = fmul fast float %2179, %2173
  %2181 = fmul fast float %2172, 1.500000e+00
  %2182 = fmul fast float %2181, %2173
  %2183 = fmul fast float %2166, 1.500000e+00
  %2184 = fmul fast float %2183, %2173
  %2185 = fmul fast float %2167, 1.500000e+00
  %2186 = fmul fast float %2185, %2173
  %2187 = fmul fast float %2168, 1.500000e+00
  %2188 = fmul fast float %2187, %2173
  %2189 = fmul fast float %2162, 1.500000e+00
  %2190 = fmul fast float %2189, %2173
  %2191 = fmul fast float %2163, 1.500000e+00
  %2192 = fmul fast float %2191, %2173
  %2193 = fmul fast float %2164, 1.500000e+00
  %2194 = fmul fast float %2193, %2173
  %2195 = fsub fast float %1584, %2174
  %2196 = fmul fast float %2195, %1482
  %2197 = fadd fast float %2196, %2174
  %2198 = fsub fast float %1583, %2178
  %2199 = fmul fast float %2198, %1482
  %2200 = fadd fast float %2199, %2178
  %2201 = fsub fast float %1582, %2180
  %2202 = fmul fast float %2201, %1482
  %2203 = fadd fast float %2202, %2180
  %2204 = fsub fast float %1581, %2182
  %2205 = fmul fast float %2204, %1482
  %2206 = fadd fast float %2205, %2182
  %2207 = fmul fast float %1580, %1482
  %2208 = fmul fast float %1579, %1482
  %2209 = fmul fast float %1578, %1482
  %2210 = fmul fast float %1577, %1482
  %2211 = fmul fast float %1576, %1482
  %2212 = fsub fast float %1575, %2175
  %2213 = fmul fast float %2212, %1482
  %2214 = fadd fast float %2213, %2175
  %2215 = fsub fast float %1574, %2184
  %2216 = fmul fast float %2215, %1482
  %2217 = fadd fast float %2216, %2184
  %2218 = fsub fast float %1573, %2186
  %2219 = fmul fast float %2218, %1482
  %2220 = fadd fast float %2219, %2186
  %2221 = fsub fast float %1572, %2188
  %2222 = fmul fast float %2221, %1482
  %2223 = fadd fast float %2222, %2188
  %2224 = fmul fast float %1571, %1482
  %2225 = fmul fast float %1570, %1482
  %2226 = fmul fast float %1569, %1482
  %2227 = fmul fast float %1568, %1482
  %2228 = fmul fast float %1567, %1482
  %2229 = fsub fast float %1566, %2176
  %2230 = fmul fast float %2229, %1482
  %2231 = fadd fast float %2230, %2176
  %2232 = fsub fast float %1565, %2190
  %2233 = fmul fast float %2232, %1482
  %2234 = fadd fast float %2233, %2190
  %2235 = fsub fast float %1564, %2192
  %2236 = fmul fast float %2235, %1482
  %2237 = fadd fast float %2236, %2192
  %2238 = fsub fast float %1563, %2194
  %2239 = fmul fast float %2238, %1482
  %2240 = fadd fast float %2239, %2194
  %2241 = fmul fast float %1562, %1482
  %2242 = fmul fast float %1561, %1482
  %2243 = fmul fast float %1560, %1482
  %2244 = fmul fast float %1559, %1482
  %2245 = fmul fast float %1558, %1482
  br label %2246

; <label>:2246                                    ; preds = %2160, %1557
  %2247 = phi float [ %2245, %2160 ], [ %1558, %1557 ]
  %2248 = phi float [ %2244, %2160 ], [ %1559, %1557 ]
  %2249 = phi float [ %2243, %2160 ], [ %1560, %1557 ]
  %2250 = phi float [ %2242, %2160 ], [ %1561, %1557 ]
  %2251 = phi float [ %2241, %2160 ], [ %1562, %1557 ]
  %2252 = phi float [ %2240, %2160 ], [ %1563, %1557 ]
  %2253 = phi float [ %2237, %2160 ], [ %1564, %1557 ]
  %2254 = phi float [ %2234, %2160 ], [ %1565, %1557 ]
  %2255 = phi float [ %2231, %2160 ], [ %1566, %1557 ]
  %2256 = phi float [ %2228, %2160 ], [ %1567, %1557 ]
  %2257 = phi float [ %2227, %2160 ], [ %1568, %1557 ]
  %2258 = phi float [ %2226, %2160 ], [ %1569, %1557 ]
  %2259 = phi float [ %2225, %2160 ], [ %1570, %1557 ]
  %2260 = phi float [ %2224, %2160 ], [ %1571, %1557 ]
  %2261 = phi float [ %2223, %2160 ], [ %1572, %1557 ]
  %2262 = phi float [ %2220, %2160 ], [ %1573, %1557 ]
  %2263 = phi float [ %2217, %2160 ], [ %1574, %1557 ]
  %2264 = phi float [ %2214, %2160 ], [ %1575, %1557 ]
  %2265 = phi float [ %2211, %2160 ], [ %1576, %1557 ]
  %2266 = phi float [ %2210, %2160 ], [ %1577, %1557 ]
  %2267 = phi float [ %2209, %2160 ], [ %1578, %1557 ]
  %2268 = phi float [ %2208, %2160 ], [ %1579, %1557 ]
  %2269 = phi float [ %2207, %2160 ], [ %1580, %1557 ]
  %2270 = phi float [ %2206, %2160 ], [ %1581, %1557 ]
  %2271 = phi float [ %2203, %2160 ], [ %1582, %1557 ]
  %2272 = phi float [ %2200, %2160 ], [ %1583, %1557 ]
  %2273 = phi float [ %2197, %2160 ], [ %1584, %1557 ]
  %2274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %2275 = extractvalue %dx.types.CBufRet.f32 %2274, 2
  %2276 = fmul fast float %2275, %2275
  %2277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %2278 = extractvalue %dx.types.CBufRet.f32 %2277, 0
  %2279 = extractvalue %dx.types.CBufRet.f32 %2277, 1
  %2280 = extractvalue %dx.types.CBufRet.f32 %2277, 2
  %2281 = fmul fast float %2273, 0x3FD20DD760000000
  %2282 = fmul fast float %2280, %2271
  %2283 = fmul fast float %2280, %2280
  %2284 = fmul fast float %2283, 0x3FEE471020000000
  %2285 = fadd fast float %2284, 0xBFD42F6020000000
  %2286 = fmul fast float %2285, %2267
  %2287 = fmul fast float %2278, %2270
  %2288 = fmul fast float %2279, %2272
  %2289 = fmul fast float %2280, 0x3FF17B1420000000
  %2290 = fmul fast float %2276, %2266
  %2291 = fmul fast float %2290, %2278
  %2292 = fmul fast float %2291, %2289
  %2293 = fmul fast float %2276, %2268
  %2294 = fmul fast float %2293, %2279
  %2295 = fmul fast float %2294, %2289
  %2296 = fmul fast float %2278, %2278
  %2297 = fmul fast float %2279, %2279
  %2298 = fsub fast float %2296, %2297
  %2299 = fmul fast float %2265, 0x3FE17B1420000000
  %2300 = fmul fast float %2299, %2298
  %2301 = fmul fast float %2269, 0x3FF17B1420000000
  %2302 = fmul fast float %2301, %2279
  %2303 = fmul fast float %2302, %2278
  %2304 = fadd fast float %2300, %2303
  %2305 = fadd fast float %2304, %2286
  %2306 = fmul fast float %2305, %2276
  %2307 = fsub fast float %2288, %2282
  %2308 = fadd fast float %2307, %2287
  %2309 = fmul fast float %2308, 0x3FDF454380000000
  %2310 = fmul fast float %2309, %2275
  %2311 = fsub fast float %2281, %2292
  %2312 = fsub fast float %2311, %2295
  %2313 = fadd fast float %2312, %2306
  %2314 = fadd fast float %2313, %2310
  %2315 = fmul fast float %2264, 0x3FD20DD760000000
  %2316 = fmul fast float %2280, %2262
  %2317 = fmul fast float %2285, %2258
  %2318 = fmul fast float %2278, %2261
  %2319 = fmul fast float %2279, %2263
  %2320 = fmul fast float %2276, %2257
  %2321 = fmul fast float %2320, %2278
  %2322 = fmul fast float %2321, %2289
  %2323 = fmul fast float %2276, %2259
  %2324 = fmul fast float %2323, %2279
  %2325 = fmul fast float %2324, %2289
  %2326 = fmul fast float %2256, 0x3FE17B1420000000
  %2327 = fmul fast float %2326, %2298
  %2328 = fmul fast float %2260, 0x3FF17B1420000000
  %2329 = fmul fast float %2328, %2279
  %2330 = fmul fast float %2329, %2278
  %2331 = fadd fast float %2327, %2330
  %2332 = fadd fast float %2331, %2317
  %2333 = fmul fast float %2332, %2276
  %2334 = fsub fast float %2319, %2316
  %2335 = fadd fast float %2334, %2318
  %2336 = fmul fast float %2335, 0x3FDF454380000000
  %2337 = fmul fast float %2336, %2275
  %2338 = fsub fast float %2315, %2322
  %2339 = fsub fast float %2338, %2325
  %2340 = fadd fast float %2339, %2333
  %2341 = fadd fast float %2340, %2337
  %2342 = fmul fast float %2255, 0x3FD20DD760000000
  %2343 = fmul fast float %2280, %2253
  %2344 = fmul fast float %2285, %2249
  %2345 = fmul fast float %2278, %2252
  %2346 = fmul fast float %2279, %2254
  %2347 = fmul fast float %2276, %2248
  %2348 = fmul fast float %2347, %2278
  %2349 = fmul fast float %2348, %2289
  %2350 = fmul fast float %2276, %2250
  %2351 = fmul fast float %2350, %2279
  %2352 = fmul fast float %2351, %2289
  %2353 = fmul fast float %2247, 0x3FE17B1420000000
  %2354 = fmul fast float %2353, %2298
  %2355 = fmul fast float %2251, 0x3FF17B1420000000
  %2356 = fmul fast float %2355, %2279
  %2357 = fmul fast float %2356, %2278
  %2358 = fadd fast float %2354, %2357
  %2359 = fadd fast float %2358, %2344
  %2360 = fmul fast float %2359, %2276
  %2361 = fsub fast float %2346, %2343
  %2362 = fadd fast float %2361, %2345
  %2363 = fmul fast float %2362, 0x3FDF454380000000
  %2364 = fmul fast float %2363, %2275
  %2365 = fsub fast float %2342, %2349
  %2366 = fsub fast float %2365, %2352
  %2367 = fadd fast float %2366, %2360
  %2368 = fadd fast float %2367, %2364
  %2369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2370 = extractvalue %dx.types.CBufRet.f32 %2369, 3
  %2371 = extractvalue %dx.types.CBufRet.f32 %1423, 0
  %2372 = fmul fast float %2371, %2370
  %2373 = fmul fast float %2372, %2314
  %2374 = fmul fast float %2372, %2341
  %2375 = fmul fast float %2372, %2368
  %2376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2377 = extractvalue %dx.types.CBufRet.f32 %2376, 3
  %2378 = fcmp fast une float %2377, 0.000000e+00
  %2379 = extractvalue %dx.types.CBufRet.f32 %2376, 0
  %2380 = extractvalue %dx.types.CBufRet.f32 %2376, 1
  %2381 = extractvalue %dx.types.CBufRet.f32 %2376, 2
  br i1 %2378, label %2382, label %2404, !dx.controlflow.hints !100

; <label>:2382                                    ; preds = %2246
  %2383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %2384 = extractvalue %dx.types.CBufRet.f32 %2383, 0
  %2385 = extractvalue %dx.types.CBufRet.f32 %2383, 1
  %2386 = extractvalue %dx.types.CBufRet.f32 %2383, 2
  %2387 = call float @dx.op.dot3.f32(i32 55, float %2379, float %2380, float %2381, float %120, float %121, float %122)  ; Dot3(ax,ay,az,bx,by,bz)
  %2388 = fcmp fast ogt float %1433, 0.000000e+00
  %2389 = select i1 %2388, float 1.000000e+00, float -1.000000e+00
  %2390 = fmul fast float %2389, 5.000000e-01
  %2391 = fmul fast float %2390, %2387
  %2392 = fmul fast float %2389, %1433
  %2393 = fadd fast float %2391, 4.921875e-01
  %2394 = fadd fast float %2392, -3.125000e-02
  %2395 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %27, float %2393, float 0x3FB25F3060000000, float %2394, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2396 = extractvalue %dx.types.ResRet.f32 %2395, 0
  %2397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %2398 = extractvalue %dx.types.CBufRet.f32 %2397, 0
  %2399 = fmul fast float %2396, 0x400921FB60000000
  %2400 = fmul fast float %2399, %2398
  %2401 = fmul fast float %2400, %2384
  %2402 = fmul fast float %2400, %2385
  %2403 = fmul fast float %2400, %2386
  br label %2404

; <label>:2404                                    ; preds = %2382, %2246
  %2405 = phi float [ %2401, %2382 ], [ 0.000000e+00, %2246 ]
  %2406 = phi float [ %2402, %2382 ], [ 0.000000e+00, %2246 ]
  %2407 = phi float [ %2403, %2382 ], [ 0.000000e+00, %2246 ]
  %2408 = fdiv fast float 1.000000e+00, %2379
  %2409 = fdiv fast float 1.000000e+00, %2380
  %2410 = fdiv fast float 1.000000e+00, %2381
  %2411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %2412 = extractvalue %dx.types.CBufRet.f32 %2411, 0
  %2413 = fmul fast float %2412, %2379
  %2414 = fmul fast float %2412, %2380
  %2415 = fmul fast float %2412, %2381
  %2416 = fadd fast float %2413, %367
  %2417 = fsub fast float -0.000000e+00, %2416
  %2418 = fadd fast float %2414, %368
  %2419 = fsub fast float -0.000000e+00, %2418
  %2420 = fadd fast float %2415, %369
  br i1 %383, label %2492, label %2421, !dx.controlflow.hints !55

; <label>:2421                                    ; preds = %2404
  %2422 = extractvalue %dx.types.CBufRet.f32 %2411, 1
  %2423 = fcmp fast ogt float %2422, %2412
  br i1 %2423, label %2424, label %2426, !dx.controlflow.hints !56

; <label>:2424                                    ; preds = %2421
  %2425 = fsub fast float %2422, %2412
  br label %2483

; <label>:2426                                    ; preds = %2421
  %2427 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %2428 = extractvalue %dx.types.CBufRet.i32 %2427, 3
  %2429 = icmp eq i32 %2428, 0
  %2430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %2431 = extractvalue %dx.types.CBufRet.f32 %2430, 2
  %2432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %2433 = extractvalue %dx.types.CBufRet.f32 %2432, 2
  %2434 = fsub fast float %2431, %2420
  %2435 = fadd fast float %2434, %2433
  %2436 = fsub fast float 0xC7EFFFFFE0000000, %2420
  br i1 %2429, label %2446, label %2437, !dx.controlflow.hints !46

; <label>:2437                                    ; preds = %2426
  %2438 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2417, float %2419, float %2435)  ; Dot3(ax,ay,az,bx,by,bz)
  %2439 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2379, float %2380, float %2381)  ; Dot3(ax,ay,az,bx,by,bz)
  %2440 = fdiv fast float 1.000000e+00, %2439
  %2441 = fmul fast float %2440, %2438
  %2442 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2417, float %2419, float %2436)  ; Dot3(ax,ay,az,bx,by,bz)
  %2443 = fmul fast float %2440, %2442
  %2444 = call float @dx.op.binary.f32(i32 36, float %2441, float %2443)  ; FMin(a,b)
  %2445 = call float @dx.op.binary.f32(i32 35, float %2441, float %2443)  ; FMax(a,b)
  br label %2476

; <label>:2446                                    ; preds = %2426
  %2447 = extractvalue %dx.types.CBufRet.f32 %2430, 0
  %2448 = extractvalue %dx.types.CBufRet.f32 %2430, 1
  %2449 = extractvalue %dx.types.CBufRet.f32 %2432, 0
  %2450 = extractvalue %dx.types.CBufRet.f32 %2432, 1
  %2451 = fsub fast float %2447, %2416
  %2452 = fmul fast float %2408, %2451
  %2453 = fadd fast float %2451, %2449
  %2454 = fmul fast float %2453, %2408
  %2455 = call float @dx.op.binary.f32(i32 36, float %2452, float %2454)  ; FMin(a,b)
  %2456 = call float @dx.op.binary.f32(i32 35, float %2452, float %2454)  ; FMax(a,b)
  %2457 = fsub fast float %2448, %2418
  %2458 = fmul fast float %2409, %2457
  %2459 = fadd fast float %2457, %2450
  %2460 = fmul fast float %2459, %2409
  %2461 = call float @dx.op.binary.f32(i32 36, float %2458, float %2460)  ; FMin(a,b)
  %2462 = call float @dx.op.binary.f32(i32 35, float %2455, float %2461)  ; FMax(a,b)
  %2463 = call float @dx.op.binary.f32(i32 35, float %2458, float %2460)  ; FMax(a,b)
  %2464 = call float @dx.op.binary.f32(i32 36, float %2456, float %2463)  ; FMin(a,b)
  %2465 = fmul fast float %2410, %2436
  %2466 = fmul fast float %2410, %2435
  %2467 = call float @dx.op.binary.f32(i32 36, float %2465, float %2466)  ; FMin(a,b)
  %2468 = call float @dx.op.binary.f32(i32 35, float %2462, float %2467)  ; FMax(a,b)
  %2469 = call float @dx.op.binary.f32(i32 35, float %2465, float %2466)  ; FMax(a,b)
  %2470 = call float @dx.op.binary.f32(i32 36, float %2464, float %2469)  ; FMin(a,b)
  %2471 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2468)  ; FMax(a,b)
  %2472 = fcmp fast ult float %2470, %2471
  br i1 %2472, label %2476, label %2473, !dx.controlflow.hints !47

; <label>:2473                                    ; preds = %2446
  %2474 = call float @dx.op.binary.f32(i32 36, float %2468, float %2470)  ; FMin(a,b)
  %2475 = call float @dx.op.binary.f32(i32 35, float %2468, float %2470)  ; FMax(a,b)
  br label %2476

; <label>:2476                                    ; preds = %2473, %2446, %2437
  %2477 = phi float [ %2444, %2437 ], [ %2474, %2473 ], [ 0.000000e+00, %2446 ]
  %2478 = phi float [ %2445, %2437 ], [ %2475, %2473 ], [ 0.000000e+00, %2446 ]
  %2479 = fcmp fast ogt float %2477, 0.000000e+00
  br i1 %2479, label %2483, label %2480, !dx.controlflow.hints !57

; <label>:2480                                    ; preds = %2476
  %2481 = fcmp fast ugt float %2478, 0.000000e+00
  br i1 %2481, label %2482, label %2483, !dx.controlflow.hints !58

; <label>:2482                                    ; preds = %2480
  br label %2483

; <label>:2483                                    ; preds = %2482, %2480, %2476, %2424
  %2484 = phi float [ %2425, %2424 ], [ 0.000000e+00, %2482 ], [ 0x47EFFFFFE0000000, %2480 ], [ %2477, %2476 ]
  %2485 = phi i32 [ %209, %2424 ], [ %209, %2482 ], [ 0, %2480 ], [ %209, %2476 ]
  %2486 = icmp ne i32 %2485, 0
  %2487 = zext i1 %2486 to i32
  %2488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %2489 = extractvalue %dx.types.CBufRet.f32 %2488, 2
  %2490 = call float @dx.op.binary.f32(i32 35, float %2484, float %2489)  ; FMax(a,b)
  %2491 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %2490)  ; FMin(a,b)
  br label %2492

; <label>:2492                                    ; preds = %2483, %2404
  %2493 = phi float [ %2491, %2483 ], [ 0x47EFFFFFE0000000, %2404 ]
  %2494 = phi i32 [ %2487, %2483 ], [ 0, %2404 ]
  %2495 = fsub fast float %2416, %554
  %2496 = fsub fast float %2418, %555
  %2497 = fmul fast float %2495, %559
  %2498 = fmul fast float %2496, %560
  %2499 = call float @dx.op.binary.f32(i32 36, float %2497, float %2498)  ; FMin(a,b)
  %2500 = fcmp fast olt float %2499, 0.000000e+00
  %2501 = call float @dx.op.binary.f32(i32 35, float %2497, float %2498)  ; FMax(a,b)
  %2502 = fcmp fast ogt float %2501, 1.000000e+00
  %2503 = or i1 %2500, %2502
  %2504 = fcmp fast olt float %2420, %568
  %2505 = or i1 %2503, %2504
  %2506 = fcmp fast ogt float %2420, %575
  %2507 = or i1 %2505, %2506
  %2508 = extractvalue %dx.types.CBufRet.f32 %558, 0
  br i1 %2507, label %2509, label %2537, !dx.controlflow.hints !64

; <label>:2509                                    ; preds = %2492
  %2510 = extractvalue %dx.types.CBufRet.f32 %558, 1
  %2511 = fsub fast float %554, %2416
  %2512 = fmul fast float %2511, %2408
  %2513 = fadd fast float %2511, %2508
  %2514 = fmul fast float %2513, %2408
  %2515 = call float @dx.op.binary.f32(i32 36, float %2512, float %2514)  ; FMin(a,b)
  %2516 = call float @dx.op.binary.f32(i32 35, float %2512, float %2514)  ; FMax(a,b)
  %2517 = fsub fast float %555, %2418
  %2518 = fmul fast float %2517, %2409
  %2519 = fadd fast float %2517, %2510
  %2520 = fmul fast float %2519, %2409
  %2521 = call float @dx.op.binary.f32(i32 36, float %2518, float %2520)  ; FMin(a,b)
  %2522 = call float @dx.op.binary.f32(i32 35, float %2515, float %2521)  ; FMax(a,b)
  %2523 = call float @dx.op.binary.f32(i32 35, float %2518, float %2520)  ; FMax(a,b)
  %2524 = call float @dx.op.binary.f32(i32 36, float %2516, float %2523)  ; FMin(a,b)
  %2525 = fsub fast float %568, %2420
  %2526 = fmul fast float %2525, %2410
  %2527 = fsub fast float %572, %2420
  %2528 = fadd fast float %2527, %574
  %2529 = fmul fast float %2528, %2410
  %2530 = call float @dx.op.binary.f32(i32 36, float %2526, float %2529)  ; FMin(a,b)
  %2531 = call float @dx.op.binary.f32(i32 35, float %2522, float %2530)  ; FMax(a,b)
  %2532 = call float @dx.op.binary.f32(i32 35, float %2526, float %2529)  ; FMax(a,b)
  %2533 = call float @dx.op.binary.f32(i32 36, float %2524, float %2532)  ; FMin(a,b)
  %2534 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2531)  ; FMax(a,b)
  %2535 = fcmp fast oge float %2533, %2534
  %2536 = select i1 %2535, float %2531, float 1.000000e+07
  br label %2552

; <label>:2537                                    ; preds = %2492
  %2538 = fsub fast float 1.000000e+00, %2498
  %2539 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %27, float %2497, float %2538, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2540 = extractvalue %dx.types.ResRet.f32 %2539, 0
  %2541 = extractvalue %dx.types.ResRet.f32 %2539, 1
  %2542 = extractvalue %dx.types.ResRet.f32 %2539, 2
  %2543 = extractvalue %dx.types.ResRet.f32 %2539, 3
  %2544 = fmul fast float %2508, 9.765625e-04
  %2545 = fcmp fast oeq float %2540, 0.000000e+00
  %2546 = fcmp ule float %2420, %2542
  %2547 = fcmp uge float %2420, %2541
  %2548 = or i1 %2547, %2546
  %2549 = or i1 %2545, %2548
  %2550 = zext i1 %2549 to i32
  %2551 = xor i32 %2550, 1
  br label %2552

; <label>:2552                                    ; preds = %2537, %2509
  %2553 = phi float [ %2536, %2509 ], [ %2544, %2537 ]
  %2554 = phi float [ %352, %2509 ], [ %2540, %2537 ]
  %2555 = phi float [ %353, %2509 ], [ %2541, %2537 ]
  %2556 = phi float [ %354, %2509 ], [ %2542, %2537 ]
  %2557 = phi float [ %355, %2509 ], [ %2543, %2537 ]
  %2558 = phi i32 [ 0, %2509 ], [ %2551, %2537 ]
  %2559 = icmp eq i32 %2558, 0
  %2560 = call float @dx.op.binary.f32(i32 35, float %2553, float %663)  ; FMax(a,b)
  %2561 = call float @dx.op.binary.f32(i32 36, float %2493, float %2560)  ; FMin(a,b)
  br i1 %666, label %2617, label %2562, !dx.controlflow.hints !68

; <label>:2562                                    ; preds = %2552
  %2563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %2564 = extractvalue %dx.types.CBufRet.f32 %2563, 0
  %2565 = extractvalue %dx.types.CBufRet.f32 %2563, 1
  %2566 = extractvalue %dx.types.CBufRet.f32 %2563, 2
  %2567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %2568 = extractvalue %dx.types.CBufRet.f32 %2567, 0
  %2569 = extractvalue %dx.types.CBufRet.f32 %2567, 1
  %2570 = extractvalue %dx.types.CBufRet.f32 %2567, 2
  %2571 = fsub fast float %2416, %2568
  %2572 = fsub fast float %2418, %2569
  %2573 = fsub fast float %2420, %2570
  %2574 = fmul fast float %2571, %2564
  %2575 = fmul fast float %2572, %2565
  %2576 = fmul fast float %2573, %2566
  %2577 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %2578 = extractvalue %dx.types.CBufRet.i32 %2577, 3
  %2579 = icmp eq i32 %2578, 0
  br i1 %2579, label %2583, label %2580, !dx.controlflow.hints !69

; <label>:2580                                    ; preds = %2562
  %2581 = call float @dx.op.unary.f32(i32 22, float %2574)  ; Frc(value)
  %2582 = call float @dx.op.unary.f32(i32 22, float %2575)  ; Frc(value)
  br label %2583

; <label>:2583                                    ; preds = %2580, %2562
  %2584 = phi float [ %2581, %2580 ], [ %2574, %2562 ]
  %2585 = phi float [ %2582, %2580 ], [ %2575, %2562 ]
  %2586 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %25, float %2584, float %2585, float %2576, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2587 = extractvalue %dx.types.ResRet.f32 %2586, 0
  %2588 = fmul fast float %2587, 2.000000e+00
  %2589 = fadd fast float %2588, -1.000000e+00
  %2590 = extractvalue %dx.types.CBufRet.f32 %2563, 3
  %2591 = fmul fast float %2589, %2590
  %2592 = fcmp fast olt float %2591, 0.000000e+00
  %2593 = fcmp fast oge float %2576, 0.000000e+00
  %2594 = fcmp fast ole float %2576, 1.000000e+00
  br i1 %2579, label %2597, label %2595, !dx.controlflow.hints !70

; <label>:2595                                    ; preds = %2583
  %2596 = and i1 %2593, %2594
  br label %2607

; <label>:2597                                    ; preds = %2583
  %2598 = fcmp fast oge float %2574, 0.000000e+00
  %2599 = fcmp fast oge float %2575, 0.000000e+00
  %2600 = and i1 %2598, %2599
  %2601 = and i1 %2593, %2600
  %2602 = fcmp fast ole float %2574, 1.000000e+00
  %2603 = fcmp fast ole float %2575, 1.000000e+00
  %2604 = and i1 %2602, %2603
  %2605 = and i1 %2594, %2604
  %2606 = and i1 %2601, %2605
  br label %2607

; <label>:2607                                    ; preds = %2597, %2595
  %2608 = phi i1 [ %2596, %2595 ], [ %2606, %2597 ]
  %2609 = and i1 %2592, %2608
  %2610 = call float @dx.op.unary.f32(i32 6, float %2591)  ; FAbs(value)
  %2611 = extractvalue %dx.types.CBufRet.f32 %662, 1
  %2612 = extractvalue %dx.types.CBufRet.f32 %662, 0
  %2613 = call float @dx.op.binary.f32(i32 35, float %2610, float %2612)  ; FMax(a,b)
  %2614 = select i1 %2609, float %2611, float %2613
  %2615 = zext i1 %2609 to i32
  %2616 = call float @dx.op.binary.f32(i32 36, float %2561, float %2614)  ; FMin(a,b)
  br label %2617

; <label>:2617                                    ; preds = %2607, %2552
  %2618 = phi float [ %2616, %2607 ], [ %2561, %2552 ]
  %2619 = phi i32 [ %2615, %2607 ], [ 0, %2552 ]
  br i1 %725, label %2791, label %2620, !dx.controlflow.hints !71

; <label>:2620                                    ; preds = %2617
  %2621 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2622 = extractvalue %dx.types.CBufRet.i32 %2621, 1
  %2623 = and i32 %2622, 1
  %2624 = icmp eq i32 %2623, 0
  br i1 %2624, label %2625, label %2782, !dx.controlflow.hints !72

; <label>:2625                                    ; preds = %2620
  %2626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %2627 = extractvalue %dx.types.CBufRet.f32 %2626, 2
  %2628 = extractvalue %dx.types.CBufRet.f32 %2626, 3
  %2629 = fmul fast float %2627, %2416
  %2630 = fmul fast float %2628, %2418
  %2631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %2632 = extractvalue %dx.types.CBufRet.f32 %2631, 0
  %2633 = extractvalue %dx.types.CBufRet.f32 %2631, 1
  %2634 = fadd fast float %2629, %2632
  %2635 = fadd fast float %2630, %2633
  %2636 = call float @dx.op.unary.f32(i32 7, float %2634)  ; Saturate(value)
  %2637 = call float @dx.op.unary.f32(i32 7, float %2635)  ; Saturate(value)
  %2638 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %27, float %2636, float %2637, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2639 = extractvalue %dx.types.ResRet.f32 %2638, 0
  %2640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2641 = extractvalue %dx.types.CBufRet.f32 %2640, 0
  %2642 = fmul fast float %2641, %2639
  %2643 = fsub fast float %2634, %2636
  %2644 = fsub fast float %2635, %2637
  %2645 = extractvalue %dx.types.CBufRet.f32 %2626, 0
  %2646 = extractvalue %dx.types.CBufRet.f32 %2626, 1
  %2647 = fmul fast float %2645, %2643
  %2648 = fmul fast float %2646, %2644
  %2649 = fmul fast float %2647, %2647
  %2650 = fmul fast float %2648, %2648
  %2651 = fadd fast float %2649, %2650
  %2652 = call float @dx.op.unary.f32(i32 24, float %2651)  ; Sqrt(value)
  %2653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %2654 = extractvalue %dx.types.CBufRet.f32 %2653, 3
  %2655 = fmul fast float %2654, %2652
  %2656 = call float @dx.op.unary.f32(i32 7, float %2655)  ; Saturate(value)
  %2657 = extractvalue %dx.types.CBufRet.f32 %2653, 2
  %2658 = fsub fast float %2657, %2642
  %2659 = fmul fast float %2658, %2656
  %2660 = extractvalue %dx.types.CBufRet.f32 %2640, 1
  %2661 = fsub fast float %2420, %2642
  %2662 = fsub fast float %2661, %2660
  %2663 = fsub fast float %2662, %2659
  %2664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2665 = extractvalue %dx.types.CBufRet.f32 %2664, 2
  %2666 = fsub fast float %2663, %2665
  %2667 = fcmp fast olt float %2666, 0.000000e+00
  %2668 = call float @dx.op.unary.f32(i32 6, float %2666)  ; FAbs(value)
  %2669 = extractvalue %dx.types.CBufRet.i32 %2621, 0
  %2670 = icmp eq i32 %2669, 0
  br i1 %2670, label %2724, label %2671

; <label>:2671                                    ; preds = %2625
  br label %2672

; <label>:2672                                    ; preds = %2711, %2671
  %2673 = phi i32 [ %2717, %2711 ], [ 1, %2671 ]
  %2674 = phi float [ %2719, %2711 ], [ 0x47EFFFFFE0000000, %2671 ]
  %2675 = phi i32 [ %2720, %2711 ], [ 0, %2671 ]
  %2676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %2677 = extractvalue %dx.types.CBufRet.f32 %2676, 1
  %2678 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2679 = extractvalue %dx.types.CBufRet.i32 %2678, 1
  %2680 = and i32 %2679, 8
  %2681 = icmp eq i32 %2680, 0
  %2682 = fcmp fast ogt float %2677, %2663
  %2683 = or i1 %2682, %2681
  %2684 = add i32 %2675, 171
  %2685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 %2684)  ; CBufferLoadLegacy(handle,regIndex)
  %2686 = extractvalue %dx.types.CBufRet.f32 %2685, 0
  %2687 = extractvalue %dx.types.CBufRet.f32 %2685, 1
  %2688 = extractvalue %dx.types.CBufRet.f32 %2685, 2
  br i1 %2683, label %2689, label %2695, !dx.controlflow.hints !73

; <label>:2689                                    ; preds = %2672
  %2690 = fsub fast float %2686, %2416
  %2691 = fsub fast float %2687, %2418
  %2692 = fmul fast float %2690, %2690
  %2693 = fmul fast float %2691, %2691
  %2694 = fadd fast float %2692, %2693
  br label %2711

; <label>:2695                                    ; preds = %2672
  %2696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2697 = extractvalue %dx.types.CBufRet.f32 %2696, 2
  %2698 = extractvalue %dx.types.CBufRet.f32 %2676, 2
  %2699 = fmul fast float %2698, %2697
  %2700 = fsub fast float %2699, %2677
  %2701 = fdiv fast float %2688, %2700
  %2702 = fsub fast float %2416, %2686
  %2703 = fsub fast float %2418, %2687
  %2704 = fsub fast float %2663, %2677
  %2705 = fmul fast float %2701, %2704
  %2706 = fmul fast float %2702, %2702
  %2707 = fmul fast float %2703, %2703
  %2708 = fadd fast float %2706, %2707
  %2709 = fmul fast float %2705, %2705
  %2710 = fadd fast float %2708, %2709
  br label %2711

; <label>:2711                                    ; preds = %2695, %2689
  %2712 = phi float [ %2694, %2689 ], [ %2710, %2695 ]
  %2713 = call float @dx.op.unary.f32(i32 24, float %2712)  ; Sqrt(value)
  %2714 = fsub float %2688, %2713
  %2715 = fcmp fast olt float %2714, 0.000000e+00
  %2716 = zext i1 %2715 to i32
  %2717 = and i32 %2716, %2673
  %2718 = call float @dx.op.unary.f32(i32 6, float %2714)  ; FAbs(value)
  %2719 = call float @dx.op.binary.f32(i32 36, float %2674, float %2718)  ; FMin(a,b)
  %2720 = add i32 %2675, 1
  %2721 = extractvalue %dx.types.CBufRet.i32 %2678, 0
  %2722 = icmp ult i32 %2720, %2721
  br i1 %2722, label %2672, label %2723

; <label>:2723                                    ; preds = %2711
  br label %2724

; <label>:2724                                    ; preds = %2723, %2625
  %2725 = phi i32 [ 1, %2625 ], [ %2717, %2723 ]
  %2726 = phi float [ 0x47EFFFFFE0000000, %2625 ], [ %2719, %2723 ]
  br label %2727

; <label>:2727                                    ; preds = %2727, %2724
  %2728 = phi i32 [ %2725, %2724 ], [ %2767, %2727 ]
  %2729 = phi float [ 0x47EFFFFFE0000000, %2724 ], [ %2769, %2727 ]
  %2730 = phi i32 [ 0, %2724 ], [ %2770, %2727 ]
  %2731 = add nuw nsw i32 %2730, 191
  %2732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 %2731)  ; CBufferLoadLegacy(handle,regIndex)
  %2733 = extractvalue %dx.types.CBufRet.f32 %2732, 0
  %2734 = extractvalue %dx.types.CBufRet.f32 %2732, 1
  %2735 = extractvalue %dx.types.CBufRet.f32 %2732, 2
  %2736 = add nuw nsw i32 %2730, 195
  %2737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 %2736)  ; CBufferLoadLegacy(handle,regIndex)
  %2738 = extractvalue %dx.types.CBufRet.f32 %2737, 0
  %2739 = extractvalue %dx.types.CBufRet.f32 %2737, 1
  %2740 = extractvalue %dx.types.CBufRet.f32 %2737, 2
  %2741 = fsub fast float %2416, %2733
  %2742 = fsub fast float %2418, %2734
  %2743 = fsub fast float %2663, %2735
  %2744 = call float @dx.op.unary.f32(i32 6, float %2741)  ; FAbs(value)
  %2745 = call float @dx.op.unary.f32(i32 6, float %2742)  ; FAbs(value)
  %2746 = call float @dx.op.unary.f32(i32 6, float %2743)  ; FAbs(value)
  %2747 = fsub fast float %2744, %2738
  %2748 = fsub fast float %2745, %2739
  %2749 = fsub fast float %2746, %2740
  %2750 = call float @dx.op.binary.f32(i32 35, float %2747, float 0.000000e+00)  ; FMax(a,b)
  %2751 = call float @dx.op.binary.f32(i32 35, float %2748, float 0.000000e+00)  ; FMax(a,b)
  %2752 = call float @dx.op.binary.f32(i32 35, float %2749, float 0.000000e+00)  ; FMax(a,b)
  %2753 = fmul fast float %2750, %2750
  %2754 = fmul fast float %2751, %2751
  %2755 = fadd fast float %2754, %2753
  %2756 = fmul fast float %2752, %2752
  %2757 = fadd fast float %2755, %2756
  %2758 = call float @dx.op.unary.f32(i32 24, float %2757)  ; Sqrt(value)
  %2759 = call float @dx.op.binary.f32(i32 35, float %2748, float %2749)  ; FMax(a,b)
  %2760 = call float @dx.op.binary.f32(i32 35, float %2747, float %2759)  ; FMax(a,b)
  %2761 = call float @dx.op.binary.f32(i32 36, float %2760, float 0.000000e+00)  ; FMin(a,b)
  %2762 = fadd fast float %2761, %2758
  %2763 = fsub fast float -0.000000e+00, %2762
  %2764 = fcmp ogt float %2762, -0.000000e+00
  %2765 = icmp ne i32 %2728, 0
  %2766 = and i1 %2765, %2764
  %2767 = zext i1 %2766 to i32
  %2768 = call float @dx.op.unary.f32(i32 6, float %2763)  ; FAbs(value)
  %2769 = call float @dx.op.binary.f32(i32 36, float %2729, float %2768)  ; FMin(a,b)
  %2770 = add nuw nsw i32 %2730, 1
  %2771 = icmp eq i32 %2770, 4
  br i1 %2771, label %2772, label %2727

; <label>:2772                                    ; preds = %2727
  %2773 = call float @dx.op.binary.f32(i32 36, float %2668, float %2769)  ; FMin(a,b)
  %2774 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2775 = extractvalue %dx.types.CBufRet.i32 %2774, 1
  %2776 = and i32 %2775, 2
  %2777 = icmp ne i32 %2776, 0
  %2778 = xor i1 %2766, %2777
  %2779 = call float @dx.op.binary.f32(i32 36, float %2773, float %2726)  ; FMin(a,b)
  %2780 = and i1 %2778, %2667
  %2781 = zext i1 %2780 to i32
  br label %2782

; <label>:2782                                    ; preds = %2772, %2620
  %2783 = phi i32 [ %350, %2620 ], [ %2781, %2772 ]
  %2784 = phi float [ 0.000000e+00, %2620 ], [ %2779, %2772 ]
  %2785 = phi float [ %2420, %2620 ], [ %2663, %2772 ]
  %2786 = icmp ne i32 %2783, 0
  %2787 = extractvalue %dx.types.CBufRet.f32 %662, 3
  %2788 = call float @dx.op.binary.f32(i32 35, float %2784, float %2787)  ; FMax(a,b)
  %2789 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %2788)  ; FMin(a,b)
  %2790 = zext i1 %2786 to i32
  br label %2791

; <label>:2791                                    ; preds = %2782, %2617
  %2792 = phi i32 [ %2783, %2782 ], [ %350, %2617 ]
  %2793 = phi float [ %2785, %2782 ], [ %351, %2617 ]
  %2794 = phi float [ %2789, %2782 ], [ 0x47EFFFFFE0000000, %2617 ]
  %2795 = phi i32 [ %2790, %2782 ], [ 0, %2617 ]
  %2796 = icmp eq i32 %2494, 0
  br i1 %2796, label %2870, label %2797, !dx.controlflow.hints !74

; <label>:2797                                    ; preds = %2791
  %2798 = fmul fast float %902, %2412
  %2799 = call float @dx.op.unary.f32(i32 23, float %2798)  ; Log(value)
  %2800 = fmul fast float %2799, 0x3FE62E4300000000
  %2801 = call float @dx.op.binary.f32(i32 35, float %2800, float 1.000000e+00)  ; FMax(a,b)
  %2802 = fmul fast float %2801, %2794
  %2803 = call float @dx.op.binary.f32(i32 36, float %2802, float %2618)  ; FMin(a,b)
  %2804 = call float @dx.op.binary.f32(i32 35, float %2803, float 0.000000e+00)  ; FMax(a,b)
  %2805 = fcmp fast ogt float %2804, 0x3F1A36E2E0000000
  %2806 = fadd fast float %2413, %2416
  %2807 = fadd fast float %2414, %2418
  %2808 = select i1 %2805, float %2806, float %2416
  %2809 = select i1 %2805, float %2807, float %2418
  %2810 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %2811 = extractvalue %dx.types.CBufRet.f32 %2810, 0
  %2812 = extractvalue %dx.types.CBufRet.f32 %2810, 1
  %2813 = fsub fast float %2808, %2811
  %2814 = fsub fast float %2809, %2812
  %2815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %2816 = extractvalue %dx.types.CBufRet.f32 %2815, 0
  %2817 = extractvalue %dx.types.CBufRet.f32 %2815, 1
  %2818 = fmul fast float %2813, %2816
  %2819 = fmul fast float %2814, %2817
  %2820 = fsub fast float 1.000000e+00, %2819
  %2821 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %2822 = extractvalue %dx.types.CBufRet.i32 %2821, 3
  %2823 = icmp eq i32 %2822, 0
  br i1 %2823, label %2830, label %2824, !dx.controlflow.hints !59

; <label>:2824                                    ; preds = %2797
  %2825 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %2818, float %2820, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2826 = extractvalue %dx.types.ResRet.f32 %2825, 0
  %2827 = extractvalue %dx.types.ResRet.f32 %2825, 1
  %2828 = extractvalue %dx.types.ResRet.f32 %2825, 2
  %2829 = extractvalue %dx.types.ResRet.f32 %2825, 3
  br label %2836

; <label>:2830                                    ; preds = %2797
  %2831 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %27, float %2818, float %2820, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2832 = extractvalue %dx.types.ResRet.f32 %2831, 0
  %2833 = extractvalue %dx.types.ResRet.f32 %2831, 1
  %2834 = extractvalue %dx.types.ResRet.f32 %2831, 2
  %2835 = extractvalue %dx.types.ResRet.f32 %2831, 3
  br label %2836

; <label>:2836                                    ; preds = %2830, %2824
  %2837 = phi float [ %2826, %2824 ], [ %2832, %2830 ]
  %2838 = phi float [ %2827, %2824 ], [ %2833, %2830 ]
  %2839 = phi float [ %2828, %2824 ], [ %2834, %2830 ]
  %2840 = phi float [ %2829, %2824 ], [ %2835, %2830 ]
  %2841 = extractvalue %dx.types.CBufRet.f32 %2815, 3
  %2842 = fmul fast float %2841, %2838
  %2843 = fmul fast float %2842, %2837
  %2844 = fsub fast float %2842, %2843
  %2845 = fcmp fast ole float %2844, 0.000000e+00
  %2846 = extractvalue %dx.types.CBufRet.f32 %2810, 2
  %2847 = fadd fast float %2843, %2846
  %2848 = fmul fast float %2841, %2839
  %2849 = fadd fast float %2848, %2846
  %2850 = fdiv fast float 1.000000e+00, %2844
  %2851 = select i1 %2845, float 1.000000e+06, float %2850
  %2852 = fsub fast float %2420, %2847
  %2853 = fmul fast float %2851, %2852
  %2854 = call float @dx.op.unary.f32(i32 7, float %2853)  ; Saturate(value)
  %2855 = extractvalue %dx.types.CBufRet.f32 %2815, 2
  %2856 = fmul fast float %2855, %2854
  %2857 = fsub fast float %2855, %2856
  %2858 = fcmp fast olt float %2420, %2849
  %2859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %2860 = extractvalue %dx.types.CBufRet.f32 %2859, 3
  %2861 = fmul fast float %2860, 3.000000e+00
  %2862 = select i1 %2858, float %2861, float 3.000000e+00
  %2863 = fmul fast float %2857, %2862
  %2864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %2865 = extractvalue %dx.types.CBufRet.f32 %2864, 2
  %2866 = fmul fast float %2412, 0x3FD5555560000000
  %2867 = fmul fast float %2866, %2840
  %2868 = fmul fast float %2867, %2865
  %2869 = fmul fast float %2868, %2863
  br label %2870

; <label>:2870                                    ; preds = %2836, %2791
  %2871 = phi float [ %2869, %2836 ], [ 0.000000e+00, %2791 ]
  %2872 = icmp eq i32 %2619, 0
  br i1 %2872, label %3053, label %2873, !dx.controlflow.hints !76

; <label>:2873                                    ; preds = %2870
  %2874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %2875 = extractvalue %dx.types.CBufRet.f32 %2874, 3
  %2876 = fmul fast float %2875, %2412
  %2877 = fcmp fast oeq float %2876, 0.000000e+00
  br i1 %2877, label %2892, label %2878, !dx.controlflow.hints !77

; <label>:2878                                    ; preds = %2873
  %2879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %2880 = extractvalue %dx.types.CBufRet.f32 %2879, 3
  %2881 = fmul fast float %2880, %2876
  %2882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %2883 = extractvalue %dx.types.CBufRet.f32 %2882, 0
  %2884 = extractvalue %dx.types.CBufRet.f32 %2882, 1
  %2885 = extractvalue %dx.types.CBufRet.f32 %2882, 2
  %2886 = fmul fast float %2883, %2881
  %2887 = fmul fast float %2884, %2881
  %2888 = fmul fast float %2885, %2881
  %2889 = call float @dx.op.unary.f32(i32 23, float %2886)  ; Log(value)
  %2890 = call float @dx.op.unary.f32(i32 23, float %2887)  ; Log(value)
  %2891 = call float @dx.op.unary.f32(i32 23, float %2888)  ; Log(value)
  br label %2892

; <label>:2892                                    ; preds = %2878, %2873
  %2893 = phi float [ %2889, %2878 ], [ 0.000000e+00, %2873 ]
  %2894 = phi float [ %2890, %2878 ], [ 0.000000e+00, %2873 ]
  %2895 = phi float [ %2891, %2878 ], [ 0.000000e+00, %2873 ]
  %2896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %2897 = extractvalue %dx.types.CBufRet.f32 %2896, 0
  %2898 = extractvalue %dx.types.CBufRet.f32 %2896, 1
  %2899 = extractvalue %dx.types.CBufRet.f32 %2896, 2
  %2900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %2901 = extractvalue %dx.types.CBufRet.f32 %2900, 0
  %2902 = extractvalue %dx.types.CBufRet.f32 %2900, 1
  %2903 = extractvalue %dx.types.CBufRet.f32 %2900, 2
  %2904 = fsub fast float %2416, %2901
  %2905 = fsub fast float %2418, %2902
  %2906 = fsub fast float %2420, %2903
  %2907 = fmul fast float %2904, %2897
  %2908 = fmul fast float %2905, %2898
  %2909 = fmul fast float %2906, %2899
  %2910 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %2911 = extractvalue %dx.types.CBufRet.i32 %2910, 0
  %2912 = extractvalue %dx.types.CBufRet.i32 %2910, 1
  %2913 = uitofp i32 %2911 to float
  %2914 = uitofp i32 %2912 to float
  %2915 = fmul fast float %2907, %2913
  %2916 = fmul fast float %2908, %2914
  %2917 = fadd fast float %2915, 5.000000e-01
  %2918 = fadd fast float %2916, 5.000000e-01
  %2919 = call float @dx.op.unary.f32(i32 22, float %2917)  ; Frc(value)
  %2920 = call float @dx.op.unary.f32(i32 22, float %2918)  ; Frc(value)
  %2921 = call float @dx.op.unary.f32(i32 27, float %2917)  ; Round_ni(value)
  %2922 = call float @dx.op.unary.f32(i32 27, float %2918)  ; Round_ni(value)
  %2923 = fadd fast float %2921, 1.000000e+00
  %2924 = fadd fast float %2922, 1.000000e+00
  %2925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %2926 = extractvalue %dx.types.CBufRet.f32 %2925, 0
  %2927 = extractvalue %dx.types.CBufRet.f32 %2925, 1
  %2928 = fmul fast float %2926, %2923
  %2929 = fmul fast float %2927, %2924
  %2930 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %26, float %2928, float %2929, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2931 = extractvalue %dx.types.ResRet.f32 %2930, 0
  %2932 = extractvalue %dx.types.ResRet.f32 %2930, 1
  %2933 = extractvalue %dx.types.ResRet.f32 %2930, 2
  %2934 = extractvalue %dx.types.ResRet.f32 %2930, 3
  %2935 = extractvalue %dx.types.CBufRet.i32 %2910, 2
  %2936 = extractvalue %dx.types.CBufRet.f32 %2925, 2
  %2937 = uitofp i32 %2935 to float
  %2938 = fadd fast float %2937, -1.000000e+00
  %2939 = fmul fast float %2938, %2931
  %2940 = fmul fast float %2938, %2932
  %2941 = fmul fast float %2938, %2933
  %2942 = fmul fast float %2938, %2934
  %2943 = fadd fast float %2939, 5.000000e-01
  %2944 = fadd fast float %2940, 5.000000e-01
  %2945 = fadd fast float %2941, 5.000000e-01
  %2946 = fadd fast float %2942, 5.000000e-01
  %2947 = fptoui float %2943 to i32
  %2948 = fptoui float %2944 to i32
  %2949 = fptoui float %2945 to i32
  %2950 = fptoui float %2946 to i32
  %2951 = uitofp i32 %2947 to float
  %2952 = uitofp i32 %2948 to float
  %2953 = uitofp i32 %2949 to float
  %2954 = uitofp i32 %2950 to float
  %2955 = fadd fast float %2951, 5.000000e-01
  %2956 = fadd fast float %2952, 5.000000e-01
  %2957 = fadd fast float %2953, 5.000000e-01
  %2958 = fadd fast float %2954, 5.000000e-01
  %2959 = fmul fast float %2955, %2936
  %2960 = fmul fast float %2956, %2936
  %2961 = fmul fast float %2957, %2936
  %2962 = fmul fast float %2958, %2936
  %2963 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %27, float %2959, float %2909, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2964 = extractvalue %dx.types.ResRet.f32 %2963, 0
  %2965 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %27, float %2960, float %2909, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2966 = extractvalue %dx.types.ResRet.f32 %2965, 0
  %2967 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %27, float %2961, float %2909, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2968 = extractvalue %dx.types.ResRet.f32 %2967, 0
  %2969 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %27, float %2962, float %2909, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2970 = extractvalue %dx.types.ResRet.f32 %2969, 0
  %2971 = fsub fast float %2968, %2970
  %2972 = fmul fast float %2971, %2919
  %2973 = fadd fast float %2972, %2970
  %2974 = fsub fast float %2966, %2964
  %2975 = fmul fast float %2974, %2919
  %2976 = fadd fast float %2975, %2964
  %2977 = fsub fast float %2976, %2973
  %2978 = fmul fast float %2977, %2920
  %2979 = fadd fast float %2978, %2973
  %2980 = fcmp fast ogt float %2979, 0.000000e+00
  br i1 %2980, label %2981, label %3049, !dx.controlflow.hints !78

; <label>:2981                                    ; preds = %2892
  %2982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %2983 = extractvalue %dx.types.CBufRet.f32 %2982, 0
  %2984 = extractvalue %dx.types.CBufRet.f32 %2982, 1
  %2985 = extractvalue %dx.types.CBufRet.f32 %2982, 2
  %2986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %2987 = extractvalue %dx.types.CBufRet.f32 %2986, 0
  %2988 = extractvalue %dx.types.CBufRet.f32 %2986, 1
  %2989 = extractvalue %dx.types.CBufRet.f32 %2986, 2
  %2990 = fmul fast float %2905, %2897
  %2991 = fmul fast float %2906, %2897
  %2992 = fadd fast float %2907, %2987
  %2993 = fadd fast float %2990, %2988
  %2994 = fadd fast float %2991, %2989
  %2995 = fmul fast float %2992, %2983
  %2996 = fmul fast float %2993, %2983
  %2997 = fmul fast float %2994, %2983
  %2998 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %24, float %2995, float %2996, float %2997, float undef, i32 0, i32 0, i32 0, float %2893)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2999 = extractvalue %dx.types.ResRet.f32 %2998, 0
  %3000 = fmul fast float %2992, %2984
  %3001 = fmul fast float %2993, %2984
  %3002 = fmul fast float %2994, %2984
  %3003 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %24, float %3000, float %3001, float %3002, float undef, i32 0, i32 0, i32 0, float %2894)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3004 = extractvalue %dx.types.ResRet.f32 %3003, 1
  %3005 = fmul fast float %2992, %2985
  %3006 = fmul fast float %2993, %2985
  %3007 = fmul fast float %2994, %2985
  %3008 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %24, float %3005, float %3006, float %3007, float undef, i32 0, i32 0, i32 0, float %2895)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3009 = extractvalue %dx.types.ResRet.f32 %3008, 2
  %3010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %3011 = extractvalue %dx.types.CBufRet.f32 %3010, 1
  %3012 = fmul fast float %3004, %2999
  %3013 = fmul fast float %3012, %3009
  %3014 = call float @dx.op.unary.f32(i32 23, float %3013)  ; Log(value)
  %3015 = fmul fast float %3014, %3011
  %3016 = call float @dx.op.unary.f32(i32 21, float %3015)  ; Exp(value)
  %3017 = extractvalue %dx.types.CBufRet.f32 %3010, 2
  %3018 = fmul fast float %2979, %2979
  %3019 = fmul fast float %3018, %3016
  %3020 = fmul fast float %3019, %3017
  %3021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %3022 = extractvalue %dx.types.CBufRet.f32 %3021, 3
  %3023 = fmul fast float %3022, %3020
  %3024 = bitcast float %3023 to i32
  %3025 = sitofp i32 %3024 to float
  %3026 = fptosi float %3025 to i32
  %3027 = bitcast i32 %3026 to float
  %3028 = fsub fast float 1.000000e+00, %3020
  %3029 = bitcast float %3028 to i32
  %3030 = sitofp i32 %3029 to float
  %3031 = fptosi float %3030 to i32
  %3032 = bitcast i32 %3031 to float
  %3033 = fadd fast float %3027, %3032
  %3034 = bitcast float %3033 to i32
  %3035 = sub nsw i32 2129859010, %3034
  %3036 = bitcast i32 %3035 to float
  %3037 = fmul fast float %3036, %3027
  %3038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %3039 = extractvalue %dx.types.CBufRet.f32 %3038, 2
  %3040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %3041 = extractvalue %dx.types.CBufRet.f32 %3040, 0
  %3042 = fmul fast float %3037, %3041
  %3043 = fadd fast float %3042, 1.000000e+00
  %3044 = bitcast float %3043 to i32
  %3045 = sub nsw i32 2129859010, %3044
  %3046 = bitcast i32 %3045 to float
  %3047 = fmul fast float %3037, %3039
  %3048 = fmul fast float %3047, %3046
  br label %3049

; <label>:3049                                    ; preds = %2981, %2892
  %3050 = phi float [ %3048, %2981 ], [ %2979, %2892 ]
  %3051 = fmul fast float %3050, %2412
  %3052 = fadd fast float %3051, %2871
  br label %3053

; <label>:3053                                    ; preds = %3049, %2870
  %3054 = phi float [ %3052, %3049 ], [ %2871, %2870 ]
  br i1 %2559, label %3180, label %3055, !dx.controlflow.hints !79

; <label>:3055                                    ; preds = %3053
  %3056 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %3057 = extractvalue %dx.types.CBufRet.i32 %3056, 0
  %3058 = icmp ne i32 %3057, 0
  %3059 = zext i1 %3058 to i32
  %3060 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %3061 = extractvalue %dx.types.CBufRet.i32 %3060, 0
  %3062 = icmp eq i32 %3061, 0
  br i1 %3062, label %3096, label %3063

; <label>:3063                                    ; preds = %3055
  br label %3064

; <label>:3064                                    ; preds = %3091, %3063
  %3065 = phi i32 [ %3092, %3091 ], [ 0, %3063 ]
  %3066 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3065, i32 0)  ; BufferLoad(srv,index,wot)
  %3067 = extractvalue %dx.types.ResRet.f32 %3066, 0
  %3068 = extractvalue %dx.types.ResRet.f32 %3066, 1
  %3069 = extractvalue %dx.types.ResRet.f32 %3066, 2
  %3070 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3065, i32 16)  ; BufferLoad(srv,index,wot)
  %3071 = extractvalue %dx.types.ResRet.f32 %3070, 0
  %3072 = extractvalue %dx.types.ResRet.f32 %3070, 1
  %3073 = extractvalue %dx.types.ResRet.f32 %3070, 2
  %3074 = fsub fast float %3067, %3071
  %3075 = fsub fast float %3068, %3072
  %3076 = fsub fast float %3069, %3073
  %3077 = fadd fast float %3071, %3067
  %3078 = fadd fast float %3072, %3068
  %3079 = fadd fast float %3073, %3069
  %3080 = fcmp fast olt float %2416, %3074
  %3081 = fcmp fast olt float %2418, %3075
  %3082 = fcmp fast olt float %2420, %3076
  %3083 = or i1 %3080, %3081
  %3084 = or i1 %3082, %3083
  %3085 = fcmp fast ogt float %2416, %3077
  %3086 = fcmp fast ogt float %2418, %3078
  %3087 = fcmp fast ogt float %2420, %3079
  %3088 = or i1 %3085, %3086
  %3089 = or i1 %3087, %3088
  %3090 = or i1 %3084, %3089
  br i1 %3090, label %3091, label %3094, !dx.controlflow.hints !80

; <label>:3091                                    ; preds = %3064
  %3092 = add nuw i32 %3065, 1
  %3093 = icmp ult i32 %3092, %3061
  br i1 %3093, label %3064, label %3094

; <label>:3094                                    ; preds = %3091, %3064
  %3095 = phi i32 [ 255, %3091 ], [ %3065, %3064 ]
  br label %3096

; <label>:3096                                    ; preds = %3094, %3055
  %3097 = phi i32 [ 255, %3055 ], [ %3095, %3094 ]
  %3098 = icmp eq i32 %3097, 255
  br i1 %3098, label %3104, label %3099, !dx.controlflow.hints !81

; <label>:3099                                    ; preds = %3096
  %3100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3097, i32 156)  ; BufferLoad(srv,index,wot)
  %3101 = extractvalue %dx.types.ResRet.i32 %3100, 0
  %3102 = icmp ne i32 %3101, 0
  %3103 = zext i1 %3102 to i32
  br label %3104

; <label>:3104                                    ; preds = %3099, %3096
  %3105 = phi i32 [ %3103, %3099 ], [ %3059, %3096 ]
  %3106 = icmp eq i32 %3105, 0
  br i1 %3106, label %3107, label %3176, !dx.controlflow.hints !82

; <label>:3107                                    ; preds = %3104
  %3108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %3109 = extractvalue %dx.types.CBufRet.f32 %3108, 3
  %3110 = extractvalue %dx.types.CBufRet.f32 %571, 0
  %3111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %3112 = extractvalue %dx.types.CBufRet.f32 %3111, 2
  %3113 = extractvalue %dx.types.CBufRet.f32 %3111, 3
  br i1 %3098, label %3124, label %3114, !dx.controlflow.hints !83

; <label>:3114                                    ; preds = %3107
  %3115 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3097, i32 60)  ; BufferLoad(srv,index,wot)
  %3116 = extractvalue %dx.types.ResRet.f32 %3115, 0
  %3117 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3097, i32 64)  ; BufferLoad(srv,index,wot)
  %3118 = extractvalue %dx.types.ResRet.f32 %3117, 0
  %3119 = extractvalue %dx.types.ResRet.f32 %3117, 1
  %3120 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3097, i32 72)  ; BufferLoad(srv,index,wot)
  %3121 = extractvalue %dx.types.ResRet.f32 %3120, 0
  %3122 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3097, i32 96)  ; BufferLoad(srv,index,wot)
  %3123 = extractvalue %dx.types.ResRet.f32 %3122, 0
  br label %3124

; <label>:3124                                    ; preds = %3114, %3107
  %3125 = phi float [ %3116, %3114 ], [ %574, %3107 ]
  %3126 = phi float [ %3121, %3114 ], [ %572, %3107 ]
  %3127 = phi float [ %3123, %3114 ], [ %3110, %3107 ]
  %3128 = phi float [ %3118, %3114 ], [ %3112, %3107 ]
  %3129 = phi float [ %3119, %3114 ], [ %3113, %3107 ]
  %3130 = call float @dx.op.binary.f32(i32 35, float %2554, float 0.000000e+00)  ; FMax(a,b)
  %3131 = call float @dx.op.binary.f32(i32 36, float %3130, float 1.000000e+00)  ; FMin(a,b)
  %3132 = call float @dx.op.unary.f32(i32 24, float %3131)  ; Sqrt(value)
  %3133 = call float @dx.op.binary.f32(i32 35, float %2557, float 0x3F847AE140000000)  ; FMax(a,b)
  %3134 = fsub fast float %2555, %2420
  %3135 = fsub fast float %2420, %2556
  %3136 = call float @dx.op.binary.f32(i32 36, float %3135, float %3134)  ; FMin(a,b)
  %3137 = fdiv fast float %3136, %3133
  %3138 = call float @dx.op.unary.f32(i32 7, float %3137)  ; Saturate(value)
  %3139 = fsub fast float %2420, %3126
  %3140 = fdiv fast float %3139, %3125
  %3141 = call float @dx.op.unary.f32(i32 7, float %3140)  ; Saturate(value)
  %3142 = fsub fast float 1.000000e+00, %3141
  %3143 = fmul float %3138, %3142
  %3144 = fmul float %3143, %3143
  %3145 = fmul fast float %3132, %3109
  %3146 = fmul fast float %3145, %3144
  %3147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %3148 = extractvalue %dx.types.CBufRet.f32 %3147, 2
  %3149 = extractvalue %dx.types.CBufRet.f32 %3147, 1
  %3150 = fsub fast float %3146, %3149
  %3151 = fsub fast float %3148, %3149
  %3152 = fdiv fast float %3150, %3151
  %3153 = call float @dx.op.unary.f32(i32 7, float %3152)  ; Saturate(value)
  %3154 = fmul fast float %3153, %3127
  %3155 = fcmp fast ogt float %3129, 0.000000e+00
  br i1 %3155, label %3156, label %3176, !dx.controlflow.hints !84

; <label>:3156                                    ; preds = %3124
  %3157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3158 = extractvalue %dx.types.CBufRet.f32 %3157, 0
  %3159 = extractvalue %dx.types.CBufRet.f32 %3157, 1
  %3160 = extractvalue %dx.types.CBufRet.f32 %3157, 2
  %3161 = fsub fast float %2416, %3158
  %3162 = fsub fast float %2418, %3159
  %3163 = fsub fast float %2420, %3160
  %3164 = fmul fast float %3161, %3161
  %3165 = fmul fast float %3162, %3162
  %3166 = fadd fast float %3164, %3165
  %3167 = fmul fast float %3163, %3163
  %3168 = fadd fast float %3166, %3167
  %3169 = call float @dx.op.unary.f32(i32 24, float %3168)  ; Sqrt(value)
  %3170 = fsub fast float %3169, %3128
  %3171 = fsub fast float %3129, %3128
  %3172 = fdiv fast float %3170, %3171
  %3173 = call float @dx.op.unary.f32(i32 7, float %3172)  ; Saturate(value)
  %3174 = fmul fast float %3173, %3173
  %3175 = fmul fast float %3174, %3154
  br label %3176

; <label>:3176                                    ; preds = %3156, %3124, %3104
  %3177 = phi float [ 0.000000e+00, %3104 ], [ %3175, %3156 ], [ %3154, %3124 ]
  %3178 = fmul fast float %3177, %2412
  %3179 = fadd fast float %3178, %3054
  br label %3180

; <label>:3180                                    ; preds = %3176, %3053
  %3181 = phi float [ %3179, %3176 ], [ %3054, %3053 ]
  %3182 = icmp eq i32 %2795, 0
  br i1 %3182, label %3214, label %3183, !dx.controlflow.hints !85

; <label>:3183                                    ; preds = %3180
  %3184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %3185 = extractvalue %dx.types.CBufRet.f32 %3184, 1
  %3186 = fsub fast float %2412, %3185
  %3187 = extractvalue %dx.types.CBufRet.f32 %3184, 3
  %3188 = fmul fast float %3186, %3187
  %3189 = call float @dx.op.unary.f32(i32 7, float %3188)  ; Saturate(value)
  %3190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %3191 = extractvalue %dx.types.CBufRet.f32 %3190, 3
  %3192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %3193 = extractvalue %dx.types.CBufRet.f32 %3192, 2
  %3194 = fsub fast float %3193, %2793
  %3195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %3196 = extractvalue %dx.types.CBufRet.f32 %3195, 3
  %3197 = fmul fast float %3194, %3196
  %3198 = call float @dx.op.unary.f32(i32 7, float %3197)  ; Saturate(value)
  %3199 = fmul fast float %3198, %3191
  %3200 = extractvalue %dx.types.CBufRet.f32 %3195, 0
  %3201 = fsub fast float %2412, %3200
  %3202 = extractvalue %dx.types.CBufRet.f32 %3195, 1
  %3203 = fmul fast float %3201, %3202
  %3204 = call float @dx.op.unary.f32(i32 7, float %3203)  ; Saturate(value)
  %3205 = fsub fast float 1.000000e+00, %3189
  %3206 = fmul fast float %3204, %3205
  %3207 = fadd fast float %3206, %3189
  %3208 = extractvalue %dx.types.CBufRet.f32 %3184, 0
  %3209 = fsub fast float %3199, %3208
  %3210 = fmul fast float %3209, %3207
  %3211 = fadd fast float %3210, %3208
  %3212 = fmul fast float %3211, %2412
  %3213 = fadd fast float %3212, %3181
  br label %3214

; <label>:3214                                    ; preds = %3183, %3180
  %3215 = phi float [ %3213, %3183 ], [ %3181, %3180 ]
  %3216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %3217 = extractvalue %dx.types.CBufRet.f32 %3216, 3
  %3218 = fmul fast float %3215, 0xBFF7154760000000
  %3219 = fmul fast float %3218, %3217
  %3220 = call float @dx.op.unary.f32(i32 21, float %3219)  ; Exp(value)
  %3221 = call float @dx.op.unary.f32(i32 7, float %3220)  ; Saturate(value)
  %3222 = fmul fast float %3221, %2405
  %3223 = fmul fast float %3221, %2406
  %3224 = fmul fast float %3221, %2407
  %3225 = fadd fast float %3222, %2373
  %3226 = fadd fast float %3223, %2374
  %3227 = fadd fast float %3224, %2375
  %3228 = fsub fast float 1.000000e+00, %1442
  %3229 = fmul fast float %1434, %363
  %3230 = fmul fast float %3229, %3228
  %3231 = fmul fast float %3230, %3225
  %3232 = fmul fast float %1435, %363
  %3233 = fmul fast float %3232, %3228
  %3234 = fmul fast float %3233, %3226
  %3235 = fmul fast float %1436, %363
  %3236 = fmul fast float %3235, %3228
  %3237 = fmul fast float %3236, %3227
  %3238 = fadd fast float %3231, %364
  %3239 = fadd fast float %3234, %365
  %3240 = fadd fast float %3237, %366
  %3241 = fdiv fast float %1418, %912
  %3242 = fadd fast float %912, %370
  %3243 = fmul fast float %370, %370
  %3244 = fmul fast float %3242, %3242
  %3245 = fsub fast float %3243, %3244
  %3246 = fmul fast float %3245, -5.000000e-01
  %3247 = fmul fast float %3246, %3241
  %3248 = fadd fast float %3247, %362
  %3249 = fadd fast float %1418, %373
  %3250 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %3251 = extractvalue %dx.types.CBufRet.i32 %3250, 0
  %3252 = icmp eq i32 %3251, 0
  br i1 %3252, label %3279, label %3253, !dx.controlflow.hints !101

; <label>:3253                                    ; preds = %3214
  %3254 = icmp ne i32 %378, 0
  %3255 = zext i1 %3254 to i32
  %3256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %3257 = extractvalue %dx.types.CBufRet.f32 %3256, 2
  %3258 = extractvalue %dx.types.CBufRet.f32 %3256, 0
  %3259 = fsub fast float %3242, %3258
  %3260 = fmul fast float %3259, %3257
  %3261 = call float @dx.op.unary.f32(i32 7, float %3260)  ; Saturate(value)
  %3262 = fadd fast float %3261, -5.000000e-01
  %3263 = fmul fast float %3262, 2.000000e+00
  %3264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %3265 = extractvalue %dx.types.CBufRet.f32 %3264, 2
  %3266 = fcmp fast olt float %3263, %3265
  br i1 %3266, label %3267, label %3279, !dx.controlflow.hints !102

; <label>:3267                                    ; preds = %3253
  %3268 = fmul fast float %3263, %3263
  %3269 = fmul fast float %3228, %363
  %3270 = fmul fast float %3263, %3269
  %3271 = fmul fast float %3268, %3269
  %3272 = fmul fast float %3270, %3268
  %3273 = fmul fast float %3268, %3268
  %3274 = fmul fast float %3273, %3269
  %3275 = fadd fast float %3270, %374
  %3276 = fadd fast float %3271, %375
  %3277 = fadd fast float %3272, %376
  %3278 = fadd fast float %3274, %377
  br label %3279

; <label>:3279                                    ; preds = %3267, %3253, %3214
  %3280 = phi float [ %374, %3214 ], [ %3275, %3267 ], [ %374, %3253 ]
  %3281 = phi float [ %375, %3214 ], [ %3276, %3267 ], [ %375, %3253 ]
  %3282 = phi float [ %376, %3214 ], [ %3277, %3267 ], [ %376, %3253 ]
  %3283 = phi float [ %377, %3214 ], [ %3278, %3267 ], [ %377, %3253 ]
  %3284 = phi i32 [ %378, %3214 ], [ 1, %3267 ], [ %3255, %3253 ]
  %3285 = fmul fast float %1442, %363
  br label %3286

; <label>:3286                                    ; preds = %3279, %1437
  %3287 = phi float [ %1438, %1437 ], [ %3242, %3279 ]
  %3288 = phi i32 [ %350, %1437 ], [ %2792, %3279 ]
  %3289 = phi float [ %351, %1437 ], [ %2793, %3279 ]
  %3290 = phi float [ %352, %1437 ], [ %2554, %3279 ]
  %3291 = phi float [ %353, %1437 ], [ %2555, %3279 ]
  %3292 = phi float [ %354, %1437 ], [ %2556, %3279 ]
  %3293 = phi float [ %355, %1437 ], [ %2557, %3279 ]
  %3294 = phi float [ %362, %1437 ], [ %3248, %3279 ]
  %3295 = phi float [ %363, %1437 ], [ %3285, %3279 ]
  %3296 = phi float [ %364, %1437 ], [ %3238, %3279 ]
  %3297 = phi float [ %365, %1437 ], [ %3239, %3279 ]
  %3298 = phi float [ %366, %1437 ], [ %3240, %3279 ]
  %3299 = phi float [ %373, %1437 ], [ %3249, %3279 ]
  %3300 = phi float [ %374, %1437 ], [ %3280, %3279 ]
  %3301 = phi float [ %375, %1437 ], [ %3281, %3279 ]
  %3302 = phi float [ %376, %1437 ], [ %3282, %3279 ]
  %3303 = phi float [ %377, %1437 ], [ %3283, %3279 ]
  %3304 = phi i32 [ %378, %1437 ], [ %3284, %3279 ]
  %3305 = fmul fast float %912, %120
  %3306 = fmul fast float %912, %121
  %3307 = fmul fast float %912, %122
  %3308 = fadd fast float %3305, %367
  %3309 = fadd fast float %3306, %368
  %3310 = fadd fast float %3307, %369
  %3311 = fcmp fast olt float %3287, %326
  %3312 = extractvalue %dx.types.CBufRet.f32 %1423, 2
  %3313 = fcmp fast olt float %3312, %3295
  %3314 = and i1 %3311, %3313
  br i1 %3314, label %349, label %3315

; <label>:3315                                    ; preds = %3286
  br label %3316

; <label>:3316                                    ; preds = %3315, %319
  %3317 = phi float [ 0.000000e+00, %319 ], [ %3294, %3315 ]
  %3318 = phi float [ 1.000000e+00, %319 ], [ %3295, %3315 ]
  %3319 = phi float [ 0.000000e+00, %319 ], [ %3296, %3315 ]
  %3320 = phi float [ 0.000000e+00, %319 ], [ %3297, %3315 ]
  %3321 = phi float [ 0.000000e+00, %319 ], [ %3298, %3315 ]
  %3322 = phi float [ 0.000000e+00, %319 ], [ %3299, %3315 ]
  %3323 = phi float [ 0.000000e+00, %319 ], [ %3300, %3315 ]
  %3324 = phi float [ 0.000000e+00, %319 ], [ %3301, %3315 ]
  %3325 = phi float [ 0.000000e+00, %319 ], [ %3302, %3315 ]
  %3326 = phi float [ 0.000000e+00, %319 ], [ %3303, %3315 ]
  %3327 = phi i32 [ 0, %319 ], [ %3304, %3315 ]
  %3328 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %3329 = extractvalue %dx.types.CBufRet.i32 %3328, 0
  %3330 = icmp eq i32 %3329, 0
  br i1 %3330, label %3372, label %3331, !dx.controlflow.hints !103

; <label>:3331                                    ; preds = %3316
  %3332 = icmp eq i32 %3327, 0
  br i1 %3332, label %3371, label %3333, !dx.controlflow.hints !104

; <label>:3333                                    ; preds = %3331
  %3334 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %3335 = extractvalue %dx.types.CBufRet.i32 %3334, 2
  %3336 = icmp eq i32 %3335, 0
  br i1 %3336, label %3343, label %3337, !dx.controlflow.hints !105

; <label>:3337                                    ; preds = %3333
  %3338 = fsub fast float 1.000000e+00, %3318
  %3339 = fdiv fast float %3323, %3338
  %3340 = fdiv fast float %3324, %3338
  %3341 = fdiv fast float %3325, %3338
  %3342 = fdiv fast float %3326, %3338
  br label %3348

; <label>:3343                                    ; preds = %3333
  %3344 = fadd fast float %3323, %3318
  %3345 = fadd fast float %3324, %3318
  %3346 = fadd fast float %3325, %3318
  %3347 = fadd fast float %3326, %3318
  br label %3348

; <label>:3348                                    ; preds = %3343, %3337
  %3349 = phi float [ %3339, %3337 ], [ %3344, %3343 ]
  %3350 = phi float [ %3340, %3337 ], [ %3345, %3343 ]
  %3351 = phi float [ %3341, %3337 ], [ %3346, %3343 ]
  %3352 = phi float [ %3342, %3337 ], [ %3347, %3343 ]
  %3353 = call float @dx.op.binary.f32(i32 35, float %3349, float -1.000000e+00)  ; FMax(a,b)
  %3354 = call float @dx.op.binary.f32(i32 35, float %3350, float -1.000000e+00)  ; FMax(a,b)
  %3355 = call float @dx.op.binary.f32(i32 35, float %3351, float -1.000000e+00)  ; FMax(a,b)
  %3356 = call float @dx.op.binary.f32(i32 35, float %3352, float -1.000000e+00)  ; FMax(a,b)
  %3357 = call float @dx.op.binary.f32(i32 36, float %3353, float 1.000000e+00)  ; FMin(a,b)
  %3358 = call float @dx.op.binary.f32(i32 36, float %3354, float 1.000000e+00)  ; FMin(a,b)
  %3359 = call float @dx.op.binary.f32(i32 36, float %3355, float 1.000000e+00)  ; FMin(a,b)
  %3360 = call float @dx.op.binary.f32(i32 36, float %3356, float 1.000000e+00)  ; FMin(a,b)
  %3361 = fmul fast float %3357, 1.500000e+00
  %3362 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %3359, float %3361)  ; FMad(a,b,c)
  %3363 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %3358, float 0.000000e+00)  ; FMad(a,b,c)
  %3364 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %3360, float %3363)  ; FMad(a,b,c)
  %3365 = fmul fast float %3357, 0x3FEBB67AE0000000
  %3366 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %3359, float %3365)  ; FMad(a,b,c)
  %3367 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %3358, float 0.000000e+00)  ; FMad(a,b,c)
  %3368 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %3360, float %3367)  ; FMad(a,b,c)
  %3369 = fadd fast float %3362, 5.000000e-01
  %3370 = fadd fast float %3366, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %31, i32 %32, i32 0, float %3369, float %3364, float %3370, float %3368, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %3372

; <label>:3371                                    ; preds = %3331
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %31, i32 %32, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %3372

; <label>:3372                                    ; preds = %3371, %3348, %3316
  %3373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %3374 = extractvalue %dx.types.CBufRet.f32 %3373, 2
  %3375 = fsub fast float %3318, %3374
  %3376 = fdiv fast float %3375, %3374
  %3377 = call float @dx.op.unary.f32(i32 7, float %3376)  ; Saturate(value)
  %3378 = fmul fast float %3377, 2.000000e+00
  %3379 = fsub fast float 3.000000e+00, %3378
  %3380 = fmul fast float %3377, %3377
  %3381 = fmul fast float %3380, %3318
  %3382 = fmul fast float %3381, %3379
  %3383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %3384 = extractvalue %dx.types.CBufRet.f32 %3383, 0
  %3385 = extractvalue %dx.types.CBufRet.f32 %3383, 1
  %3386 = extractvalue %dx.types.CBufRet.f32 %3383, 2
  %3387 = call float @dx.op.dot3.f32(i32 55, float %120, float %121, float %122, float %3384, float %3385, float %3386)  ; Dot3(ax,ay,az,bx,by,bz)
  %3388 = fmul fast float %3387, %3317
  %3389 = fcmp fast ogt float %3322, 0.000000e+00
  %3390 = fdiv fast float 1.000000e+00, %3322
  %3391 = fmul fast float %3388, %3390
  %3392 = select i1 %3389, float %3391, float %131
  %3393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %3394 = extractvalue %dx.types.CBufRet.f32 %3393, 0
  %3395 = extractvalue %dx.types.CBufRet.f32 %3393, 1
  %3396 = extractvalue %dx.types.CBufRet.f32 %3393, 2
  %3397 = fmul fast float %3394, %84
  %3398 = fmul fast float %3395, %84
  %3399 = fmul fast float %3396, %84
  %3400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %3401 = extractvalue %dx.types.CBufRet.f32 %3400, 0
  %3402 = extractvalue %dx.types.CBufRet.f32 %3400, 1
  %3403 = extractvalue %dx.types.CBufRet.f32 %3400, 2
  %3404 = fmul fast float %3401, %85
  %3405 = fmul fast float %3402, %85
  %3406 = fmul fast float %3403, %85
  %3407 = fadd fast float %3404, %3397
  %3408 = fadd fast float %3405, %3398
  %3409 = fadd fast float %3406, %3399
  %3410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %3411 = extractvalue %dx.types.CBufRet.f32 %3410, 0
  %3412 = extractvalue %dx.types.CBufRet.f32 %3410, 1
  %3413 = extractvalue %dx.types.CBufRet.f32 %3410, 2
  %3414 = fadd fast float %3407, %3411
  %3415 = fadd fast float %3408, %3412
  %3416 = fadd fast float %3409, %3413
  %3417 = fmul fast float %3414, %3392
  %3418 = fmul fast float %3415, %3392
  %3419 = fmul fast float %3416, %3392
  %3420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %3421 = extractvalue %dx.types.CBufRet.f32 %3420, 0
  %3422 = extractvalue %dx.types.CBufRet.f32 %3420, 1
  %3423 = extractvalue %dx.types.CBufRet.f32 %3420, 2
  %3424 = extractvalue %dx.types.CBufRet.f32 %3420, 3
  %3425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %3426 = extractvalue %dx.types.CBufRet.f32 %3425, 0
  %3427 = extractvalue %dx.types.CBufRet.f32 %3425, 1
  %3428 = extractvalue %dx.types.CBufRet.f32 %3425, 2
  %3429 = extractvalue %dx.types.CBufRet.f32 %3425, 3
  %3430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %3431 = extractvalue %dx.types.CBufRet.f32 %3430, 0
  %3432 = extractvalue %dx.types.CBufRet.f32 %3430, 1
  %3433 = extractvalue %dx.types.CBufRet.f32 %3430, 2
  %3434 = extractvalue %dx.types.CBufRet.f32 %3430, 3
  %3435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %3436 = extractvalue %dx.types.CBufRet.f32 %3435, 0
  %3437 = extractvalue %dx.types.CBufRet.f32 %3435, 1
  %3438 = extractvalue %dx.types.CBufRet.f32 %3435, 2
  %3439 = extractvalue %dx.types.CBufRet.f32 %3435, 3
  %3440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %3441 = extractvalue %dx.types.CBufRet.f32 %3440, 3
  %3442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %3443 = extractvalue %dx.types.CBufRet.f32 %3442, 3
  %3444 = extractvalue %dx.types.CBufRet.f32 %3442, 0
  %3445 = extractvalue %dx.types.CBufRet.f32 %3442, 1
  %3446 = extractvalue %dx.types.CBufRet.f32 %3442, 2
  %3447 = fcmp fast olt float %3446, -5.000000e-01
  %3448 = call float @dx.op.dot3.f32(i32 55, float %3417, float %3418, float %3419, float %3417, float %3418, float %3419)  ; Dot3(ax,ay,az,bx,by,bz)
  %3449 = call float @dx.op.unary.f32(i32 25, float %3448)  ; Rsqrt(value)
  %3450 = fmul fast float %3449, %3448
  %3451 = fmul fast float %3449, %3417
  %3452 = fmul fast float %3449, %3418
  %3453 = fmul fast float %3449, %3419
  %3454 = fadd fast float %3450, %3424
  %3455 = call float @dx.op.dot3.f32(i32 55, float %3451, float %3452, float %3453, float %3421, float %3422, float %3423)  ; Dot3(ax,ay,az,bx,by,bz)
  %3456 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %3457 = extractvalue %dx.types.CBufRet.i32 %3456, 1
  %3458 = and i32 %3457, 1
  %3459 = icmp ne i32 %3458, 0
  %3460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %3461 = extractvalue %dx.types.CBufRet.f32 %3460, 2
  %3462 = fcmp fast ogt float %3461, 0.000000e+00
  %3463 = and i1 %3459, %3462
  br i1 %3463, label %3464, label %3870, !dx.controlflow.hints !106

; <label>:3464                                    ; preds = %3372
  %3465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %3466 = extractvalue %dx.types.CBufRet.f32 %3465, 3
  %3467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %3468 = extractvalue %dx.types.CBufRet.f32 %3467, 2
  %3469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3470 = extractvalue %dx.types.CBufRet.f32 %3469, 2
  %3471 = fsub fast float %3468, %3470
  %3472 = and i32 %3457, 2
  %3473 = extractvalue %dx.types.CBufRet.i32 %3456, 0
  %3474 = call i32 @dx.op.binary.i32(i32 40, i32 %3473, i32 3)  ; UMin(a,b)
  %3475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %3476 = extractvalue %dx.types.CBufRet.f32 %3475, 0
  %3477 = extractvalue %dx.types.CBufRet.f32 %3475, 1
  %3478 = extractvalue %dx.types.CBufRet.f32 %3469, 0
  %3479 = extractvalue %dx.types.CBufRet.f32 %3469, 1
  %3480 = fsub fast float %3476, %3478
  %3481 = fsub fast float %3477, %3479
  %3482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %3483 = extractvalue %dx.types.CBufRet.f32 %3482, 0
  %3484 = fcmp fast ogt float %3483, 0.000000e+00
  %3485 = fsub fast float -0.000000e+00, %3480
  %3486 = fsub fast float -0.000000e+00, %3481
  %3487 = call float @dx.op.dot2.f32(i32 54, float %3451, float %3452, float %3451, float %3452)  ; Dot2(ax,ay,bx,by)
  %3488 = call float @dx.op.dot2.f32(i32 54, float %3451, float %3452, float %3485, float %3486)  ; Dot2(ax,ay,bx,by)
  %3489 = fmul fast float %3488, 2.000000e+00
  %3490 = call float @dx.op.dot2.f32(i32 54, float %3485, float %3486, float %3485, float %3486)  ; Dot2(ax,ay,bx,by)
  %3491 = fmul fast float %3483, %3483
  %3492 = fsub fast float %3490, %3491
  %3493 = fmul fast float %3489, %3489
  %3494 = fmul fast float %3487, 4.000000e+00
  %3495 = fmul fast float %3494, %3492
  %3496 = fsub fast float %3493, %3495
  %3497 = fcmp fast ogt float %3496, 0.000000e+00
  br i1 %3497, label %3498, label %3513, !dx.controlflow.hints !107

; <label>:3498                                    ; preds = %3464
  %3499 = fcmp fast ogt float %3489, 0.000000e+00
  %3500 = call float @dx.op.unary.f32(i32 24, float %3496)  ; Sqrt(value)
  %3501 = fsub fast float -0.000000e+00, %3500
  %3502 = select i1 %3499, float %3500, float %3501
  %3503 = fadd fast float %3502, %3489
  %3504 = fmul float %3503, -5.000000e-01
  %3505 = fdiv fast float %3504, %3487
  %3506 = call float @dx.op.binary.f32(i32 35, float %3505, float 0.000000e+00)  ; FMax(a,b)
  %3507 = call float @dx.op.binary.f32(i32 36, float %3450, float %3506)  ; FMin(a,b)
  %3508 = fdiv fast float %3492, %3504
  %3509 = call float @dx.op.binary.f32(i32 35, float %3508, float 0.000000e+00)  ; FMax(a,b)
  %3510 = call float @dx.op.binary.f32(i32 36, float %3450, float %3509)  ; FMin(a,b)
  %3511 = call float @dx.op.binary.f32(i32 36, float %3507, float %3510)  ; FMin(a,b)
  %3512 = call float @dx.op.binary.f32(i32 35, float %3507, float %3510)  ; FMax(a,b)
  br label %3513

; <label>:3513                                    ; preds = %3498, %3464
  %3514 = phi float [ %3512, %3498 ], [ -1.000000e+00, %3464 ]
  %3515 = phi float [ %3511, %3498 ], [ -1.000000e+00, %3464 ]
  %3516 = phi i1 [ true, %3498 ], [ false, %3464 ]
  %3517 = and i1 %3484, %3516
  br i1 %3517, label %3518, label %3520, !dx.controlflow.hints !108

; <label>:3518                                    ; preds = %3513
  %3519 = fcmp fast oeq float %3515, %3514
  br i1 %3519, label %3823, label %3521, !dx.controlflow.hints !109

; <label>:3520                                    ; preds = %3513
  br i1 %3484, label %3823, label %3521, !dx.controlflow.hints !110

; <label>:3521                                    ; preds = %3520, %3518
  %3522 = phi float [ %3450, %3520 ], [ %3514, %3518 ]
  %3523 = phi float [ 0.000000e+00, %3520 ], [ %3515, %3518 ]
  %3524 = icmp ne i32 %3472, 0
  %3525 = fmul fast float %3522, %3453
  %3526 = fadd fast float %3525, %3466
  %3527 = fmul fast float %3526, %3522
  %3528 = select i1 %3524, float 0.000000e+00, float %3527
  %3529 = fcmp fast oeq float %3453, 0.000000e+00
  %3530 = fdiv fast float %3471, %3453
  %3531 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3530)  ; FMax(a,b)
  %3532 = select i1 %3529, float %3522, float %3531
  %3533 = call float @dx.op.binary.f32(i32 36, float %3522, float %3532)  ; FMin(a,b)
  %3534 = fcmp fast ogt float %3453, 0.000000e+00
  %3535 = fcmp fast olt float %3471, 0.000000e+00
  br i1 %3534, label %3536, label %3593, !dx.controlflow.hints !111

; <label>:3536                                    ; preds = %3521
  %3537 = icmp eq i32 %3472, 0
  br i1 %3535, label %3538, label %3582, !dx.controlflow.hints !112

; <label>:3538                                    ; preds = %3536
  %3539 = select i1 %3537, float %3522, float 0.000000e+00
  %3540 = fsub fast float -0.000000e+00, %3539
  %3541 = call float @dx.op.unary.f32(i32 6, float %3540)  ; FAbs(value)
  %3542 = fmul fast float %3539, %3453
  %3543 = fadd fast float %3542, %3466
  %3544 = fmul fast float %3541, %3543
  %3545 = fsub fast float %3528, %3544
  %3546 = fsub fast float %3522, %3541
  %3547 = select i1 %3537, float %3546, float 0.000000e+00
  %3548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %3549 = extractvalue %dx.types.CBufRet.f32 %3548, 0
  %3550 = extractvalue %dx.types.CBufRet.f32 %3548, 1
  %3551 = extractvalue %dx.types.CBufRet.f32 %3548, 2
  %3552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %3553 = extractvalue %dx.types.CBufRet.f32 %3552, 0
  %3554 = extractvalue %dx.types.CBufRet.f32 %3552, 1
  %3555 = extractvalue %dx.types.CBufRet.f32 %3552, 2
  %3556 = extractvalue %dx.types.CBufRet.f32 %3552, 3
  %3557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %3558 = extractvalue %dx.types.CBufRet.f32 %3557, 3
  %3559 = call float @dx.op.binary.f32(i32 36, float %3545, float %3558)  ; FMin(a,b)
  %3560 = fmul fast float %3556, %3547
  %3561 = call float @dx.op.unary.f32(i32 7, float %3560)  ; Saturate(value)
  %3562 = fsub fast float %3553, %3549
  %3563 = fsub fast float %3554, %3550
  %3564 = fsub fast float %3555, %3551
  %3565 = fmul fast float %3561, %3562
  %3566 = fmul fast float %3561, %3563
  %3567 = fmul fast float %3561, %3564
  %3568 = fadd fast float %3565, %3549
  %3569 = fadd fast float %3566, %3550
  %3570 = fadd fast float %3567, %3551
  %3571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %3572 = extractvalue %dx.types.CBufRet.f32 %3571, 0
  %3573 = extractvalue %dx.types.CBufRet.f32 %3571, 1
  %3574 = fadd fast float %3573, %3572
  %3575 = call float @dx.op.unary.f32(i32 7, float %3574)  ; Saturate(value)
  %3576 = extractvalue %dx.types.CBufRet.f32 %3571, 2
  %3577 = extractvalue %dx.types.CBufRet.f32 %3571, 3
  %3578 = fadd fast float %3577, %3576
  %3579 = call float @dx.op.unary.f32(i32 7, float %3578)  ; Saturate(value)
  %3580 = fmul fast float %3575, %3559
  %3581 = fmul fast float %3580, %3579
  br label %3823

; <label>:3582                                    ; preds = %3536
  br i1 %3537, label %3583, label %3604, !dx.controlflow.hints !113

; <label>:3583                                    ; preds = %3582
  %3584 = call float @dx.op.binary.f32(i32 36, float %3533, float %3523)  ; FMin(a,b)
  %3585 = fsub fast float %3533, %3584
  %3586 = fsub fast float %3585, %3522
  %3587 = call float @dx.op.unary.f32(i32 6, float %3586)  ; FAbs(value)
  %3588 = fadd fast float %3585, %3522
  %3589 = fmul fast float %3588, %3453
  %3590 = fadd fast float %3589, %3466
  %3591 = fmul fast float %3590, %3587
  %3592 = fsub fast float %3528, %3591
  br label %3604

; <label>:3593                                    ; preds = %3521
  br i1 %3535, label %3594, label %3604, !dx.controlflow.hints !114

; <label>:3594                                    ; preds = %3593
  %3595 = call float @dx.op.binary.f32(i32 35, float %3523, float %3533)  ; FMax(a,b)
  %3596 = icmp eq i32 %3472, 0
  %3597 = select i1 %3596, float %3533, float 0.000000e+00
  %3598 = fsub fast float -0.000000e+00, %3597
  %3599 = call float @dx.op.unary.f32(i32 6, float %3598)  ; FAbs(value)
  %3600 = fmul fast float %3597, %3453
  %3601 = fadd fast float %3600, %3466
  %3602 = fmul fast float %3599, %3601
  %3603 = fsub fast float %3528, %3602
  br label %3604

; <label>:3604                                    ; preds = %3594, %3593, %3583, %3582
  %3605 = phi float [ %3523, %3582 ], [ %3523, %3583 ], [ %3595, %3594 ], [ %3523, %3593 ]
  %3606 = phi float [ 0.000000e+00, %3582 ], [ %3587, %3583 ], [ %3599, %3594 ], [ 0.000000e+00, %3593 ]
  %3607 = phi float [ %3528, %3582 ], [ %3592, %3583 ], [ %3603, %3594 ], [ %3528, %3593 ]
  %3608 = phi float [ %3533, %3582 ], [ %3533, %3583 ], [ %3522, %3594 ], [ %3522, %3593 ]
  %3609 = getelementptr inbounds [3 x float], [3 x float]* %33, i32 0, i32 0
  store float -1.000000e+00, float* %3609, align 4, !tbaa !115, !noalias !119
  %3610 = getelementptr inbounds [3 x float], [3 x float]* %33, i32 0, i32 1
  store float -1.000000e+00, float* %3610, align 4, !tbaa !115, !noalias !119
  %3611 = getelementptr inbounds [3 x float], [3 x float]* %33, i32 0, i32 2
  store float -1.000000e+00, float* %3611, align 4, !tbaa !115, !noalias !119
  %3612 = getelementptr inbounds [3 x float], [3 x float]* %34, i32 0, i32 0
  store float -1.000000e+00, float* %3612, align 4, !tbaa !115, !noalias !119
  %3613 = getelementptr inbounds [3 x float], [3 x float]* %34, i32 0, i32 1
  store float -1.000000e+00, float* %3613, align 4, !tbaa !115, !noalias !119
  %3614 = getelementptr inbounds [3 x float], [3 x float]* %34, i32 0, i32 2
  store float -1.000000e+00, float* %3614, align 4, !tbaa !115, !noalias !119
  %3615 = icmp sgt i32 %3474, 0
  br i1 %3615, label %3616, label %3677

; <label>:3616                                    ; preds = %3604
  br label %3617

; <label>:3617                                    ; preds = %3666, %3616
  %3618 = phi i32 [ %3667, %3666 ], [ 0, %3616 ]
  %3619 = phi i32 [ %3668, %3666 ], [ 0, %3616 ]
  %3620 = add nuw i32 %3619, 171
  %3621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 %3620)  ; CBufferLoadLegacy(handle,regIndex)
  %3622 = extractvalue %dx.types.CBufRet.f32 %3621, 0
  %3623 = extractvalue %dx.types.CBufRet.f32 %3621, 1
  %3624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3625 = extractvalue %dx.types.CBufRet.f32 %3624, 0
  %3626 = extractvalue %dx.types.CBufRet.f32 %3624, 1
  %3627 = fsub fast float %3622, %3625
  %3628 = fsub fast float %3623, %3626
  %3629 = extractvalue %dx.types.CBufRet.f32 %3621, 2
  %3630 = fsub fast float -0.000000e+00, %3627
  %3631 = fsub fast float -0.000000e+00, %3628
  %3632 = call float @dx.op.dot2.f32(i32 54, float %3451, float %3452, float %3630, float %3631)  ; Dot2(ax,ay,bx,by)
  %3633 = fmul fast float %3632, 2.000000e+00
  %3634 = call float @dx.op.dot2.f32(i32 54, float %3630, float %3631, float %3630, float %3631)  ; Dot2(ax,ay,bx,by)
  %3635 = fmul fast float %3629, %3629
  %3636 = fsub fast float %3634, %3635
  %3637 = fmul fast float %3633, %3633
  %3638 = fmul fast float %3494, %3636
  %3639 = fsub fast float %3637, %3638
  %3640 = fcmp fast ogt float %3639, 0.000000e+00
  br i1 %3640, label %3641, label %3656, !dx.controlflow.hints !107

; <label>:3641                                    ; preds = %3617
  %3642 = fcmp fast ogt float %3633, 0.000000e+00
  %3643 = call float @dx.op.unary.f32(i32 24, float %3639)  ; Sqrt(value)
  %3644 = fsub fast float -0.000000e+00, %3643
  %3645 = select i1 %3642, float %3643, float %3644
  %3646 = fadd fast float %3645, %3633
  %3647 = fmul float %3646, -5.000000e-01
  %3648 = fdiv fast float %3647, %3487
  %3649 = call float @dx.op.binary.f32(i32 35, float %3648, float 0.000000e+00)  ; FMax(a,b)
  %3650 = call float @dx.op.binary.f32(i32 36, float %3522, float %3649)  ; FMin(a,b)
  %3651 = fdiv fast float %3636, %3647
  %3652 = call float @dx.op.binary.f32(i32 35, float %3651, float 0.000000e+00)  ; FMax(a,b)
  %3653 = call float @dx.op.binary.f32(i32 36, float %3522, float %3652)  ; FMin(a,b)
  %3654 = call float @dx.op.binary.f32(i32 36, float %3650, float %3653)  ; FMin(a,b)
  %3655 = call float @dx.op.binary.f32(i32 35, float %3650, float %3653)  ; FMax(a,b)
  br label %3656

; <label>:3656                                    ; preds = %3641, %3617
  %3657 = phi float [ %3655, %3641 ], [ -1.000000e+00, %3617 ]
  %3658 = phi float [ %3654, %3641 ], [ -1.000000e+00, %3617 ]
  %3659 = phi i1 [ true, %3641 ], [ false, %3617 ]
  br i1 %3659, label %3660, label %3666, !dx.controlflow.hints !130

; <label>:3660                                    ; preds = %3656
  %3661 = call float @dx.op.binary.f32(i32 35, float %3605, float %3658)  ; FMax(a,b)
  %3662 = getelementptr inbounds [3 x float], [3 x float]* %33, i32 0, i32 %3619
  store float %3661, float* %3662, align 4, !tbaa !115, !noalias !119
  %3663 = call float @dx.op.binary.f32(i32 35, float %3605, float %3657)  ; FMax(a,b)
  %3664 = getelementptr inbounds [3 x float], [3 x float]* %34, i32 0, i32 %3619
  store float %3663, float* %3664, align 4, !tbaa !115, !noalias !119
  %3665 = add nsw i32 %3618, 1
  br label %3666

; <label>:3666                                    ; preds = %3660, %3656
  %3667 = phi i32 [ %3665, %3660 ], [ %3618, %3656 ]
  %3668 = add nuw nsw i32 %3619, 1
  %3669 = icmp eq i32 %3668, %3474
  br i1 %3669, label %3670, label %3617

; <label>:3670                                    ; preds = %3666
  %3671 = load float, float* %3611, align 4, !tbaa !115, !alias.scope !131, !noalias !134
  %3672 = load float, float* %3610, align 4, !tbaa !115, !alias.scope !137, !noalias !138
  %3673 = load float, float* %3609, align 4, !tbaa !115, !alias.scope !139, !noalias !140
  %3674 = load float, float* %3614, align 4, !tbaa !115, !alias.scope !141, !noalias !144
  %3675 = load float, float* %3613, align 4, !tbaa !115, !alias.scope !147, !noalias !148
  %3676 = load float, float* %3612, align 4, !tbaa !115, !alias.scope !149, !noalias !150
  br label %3677

; <label>:3677                                    ; preds = %3670, %3604
  %3678 = phi float [ -1.000000e+00, %3604 ], [ %3676, %3670 ]
  %3679 = phi float [ -1.000000e+00, %3604 ], [ %3675, %3670 ]
  %3680 = phi float [ -1.000000e+00, %3604 ], [ %3674, %3670 ]
  %3681 = phi float [ -1.000000e+00, %3604 ], [ %3673, %3670 ]
  %3682 = phi float [ -1.000000e+00, %3604 ], [ %3672, %3670 ]
  %3683 = phi float [ -1.000000e+00, %3604 ], [ %3671, %3670 ]
  %3684 = phi i32 [ 0, %3604 ], [ %3667, %3670 ]
  %3685 = call float @dx.op.binary.f32(i32 36, float %3682, float %3683)  ; FMin(a,b)
  %3686 = call float @dx.op.binary.f32(i32 36, float %3681, float %3685)  ; FMin(a,b)
  %3687 = call float @dx.op.binary.f32(i32 35, float %3681, float %3682)  ; FMax(a,b)
  %3688 = call float @dx.op.binary.f32(i32 36, float %3687, float %3683)  ; FMin(a,b)
  %3689 = call float @dx.op.binary.f32(i32 36, float %3681, float %3682)  ; FMin(a,b)
  %3690 = call float @dx.op.binary.f32(i32 35, float %3689, float %3688)  ; FMax(a,b)
  %3691 = call float @dx.op.binary.f32(i32 35, float %3682, float %3683)  ; FMax(a,b)
  %3692 = call float @dx.op.binary.f32(i32 35, float %3681, float %3691)  ; FMax(a,b)
  store float %3686, float* %3609, align 4, !tbaa !115, !alias.scope !139, !noalias !140
  store float %3690, float* %3610, align 4, !tbaa !115, !alias.scope !137, !noalias !138
  store float %3692, float* %3611, align 4, !tbaa !115, !alias.scope !131, !noalias !134
  %3693 = call float @dx.op.binary.f32(i32 36, float %3679, float %3680)  ; FMin(a,b)
  %3694 = call float @dx.op.binary.f32(i32 36, float %3678, float %3693)  ; FMin(a,b)
  %3695 = call float @dx.op.binary.f32(i32 35, float %3678, float %3679)  ; FMax(a,b)
  %3696 = call float @dx.op.binary.f32(i32 36, float %3695, float %3680)  ; FMin(a,b)
  %3697 = call float @dx.op.binary.f32(i32 36, float %3678, float %3679)  ; FMin(a,b)
  %3698 = call float @dx.op.binary.f32(i32 35, float %3697, float %3696)  ; FMax(a,b)
  %3699 = call float @dx.op.binary.f32(i32 35, float %3679, float %3680)  ; FMax(a,b)
  %3700 = call float @dx.op.binary.f32(i32 35, float %3678, float %3699)  ; FMax(a,b)
  store float %3694, float* %3612, align 4, !tbaa !115, !alias.scope !149, !noalias !150
  store float %3698, float* %3613, align 4, !tbaa !115, !alias.scope !147, !noalias !148
  store float %3700, float* %3614, align 4, !tbaa !115, !alias.scope !141, !noalias !144
  %3701 = sub nsw i32 3, %3684
  %3702 = icmp sgt i32 %3701, 2
  br i1 %3702, label %3703, label %3741, !dx.controlflow.hints !151

; <label>:3703                                    ; preds = %3677
  %3704 = icmp eq i32 %3472, 0
  %3705 = fsub fast float %3522, %3606
  %3706 = select i1 %3704, float %3705, float %3606
  %3707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %3708 = extractvalue %dx.types.CBufRet.f32 %3707, 0
  %3709 = extractvalue %dx.types.CBufRet.f32 %3707, 1
  %3710 = extractvalue %dx.types.CBufRet.f32 %3707, 2
  %3711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %3712 = extractvalue %dx.types.CBufRet.f32 %3711, 0
  %3713 = extractvalue %dx.types.CBufRet.f32 %3711, 1
  %3714 = extractvalue %dx.types.CBufRet.f32 %3711, 2
  %3715 = extractvalue %dx.types.CBufRet.f32 %3711, 3
  %3716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %3717 = extractvalue %dx.types.CBufRet.f32 %3716, 3
  %3718 = call float @dx.op.binary.f32(i32 36, float %3607, float %3717)  ; FMin(a,b)
  %3719 = fmul fast float %3715, %3706
  %3720 = call float @dx.op.unary.f32(i32 7, float %3719)  ; Saturate(value)
  %3721 = fsub fast float %3712, %3708
  %3722 = fsub fast float %3713, %3709
  %3723 = fsub fast float %3714, %3710
  %3724 = fmul fast float %3720, %3721
  %3725 = fmul fast float %3720, %3722
  %3726 = fmul fast float %3720, %3723
  %3727 = fadd fast float %3724, %3708
  %3728 = fadd fast float %3725, %3709
  %3729 = fadd fast float %3726, %3710
  %3730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %3731 = extractvalue %dx.types.CBufRet.f32 %3730, 0
  %3732 = extractvalue %dx.types.CBufRet.f32 %3730, 1
  %3733 = fadd fast float %3732, %3731
  %3734 = call float @dx.op.unary.f32(i32 7, float %3733)  ; Saturate(value)
  %3735 = extractvalue %dx.types.CBufRet.f32 %3730, 2
  %3736 = extractvalue %dx.types.CBufRet.f32 %3730, 3
  %3737 = fadd fast float %3736, %3735
  %3738 = call float @dx.op.unary.f32(i32 7, float %3737)  ; Saturate(value)
  %3739 = fmul fast float %3734, %3718
  %3740 = fmul fast float %3739, %3738
  br label %3823

; <label>:3741                                    ; preds = %3677
  %3742 = getelementptr inbounds [3 x float], [3 x float]* %33, i32 0, i32 %3701
  %3743 = load float, float* %3742, align 4, !tbaa !115, !noalias !119
  %3744 = fcmp fast olt float %3743, %3608
  %3745 = icmp sgt i32 %3684, 0
  %3746 = and i1 %3745, %3744
  br i1 %3746, label %3747, label %3784

; <label>:3747                                    ; preds = %3741
  br label %3748

; <label>:3748                                    ; preds = %3777, %3747
  %3749 = phi float [ %3778, %3777 ], [ %3606, %3747 ]
  %3750 = phi float [ %3779, %3777 ], [ %3607, %3747 ]
  %3751 = phi float [ %3759, %3777 ], [ %3743, %3747 ]
  %3752 = phi i32 [ %3756, %3777 ], [ %3701, %3747 ]
  %3753 = getelementptr inbounds [3 x float], [3 x float]* %34, i32 0, i32 %3752
  %3754 = load float, float* %3753, align 4, !tbaa !115, !noalias !119
  %3755 = icmp slt i32 %3752, 2
  %3756 = add nsw i32 %3752, 1
  %3757 = getelementptr inbounds [3 x float], [3 x float]* %33, i32 0, i32 %3756
  %3758 = load float, float* %3757, align 4, !tbaa !115, !noalias !119
  %3759 = select i1 %3755, float %3758, float %3522
  %3760 = call float @dx.op.binary.f32(i32 36, float %3759, float %3754)  ; FMin(a,b)
  %3761 = call float @dx.op.binary.f32(i32 36, float %3608, float %3760)  ; FMin(a,b)
  %3762 = icmp eq i32 %3472, 0
  %3763 = fadd fast float %3761, %3751
  %3764 = fmul fast float %3763, %3453
  %3765 = fadd fast float %3764, %3466
  br i1 %3762, label %3771, label %3766, !dx.controlflow.hints !152

; <label>:3766                                    ; preds = %3748
  %3767 = fsub fast float %3761, %3751
  %3768 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3767)  ; FMax(a,b)
  %3769 = fmul fast float %3768, %3765
  %3770 = fadd fast float %3769, %3750
  br label %3777

; <label>:3771                                    ; preds = %3748
  %3772 = fsub fast float %3751, %3761
  %3773 = call float @dx.op.unary.f32(i32 6, float %3772)  ; FAbs(value)
  %3774 = fadd fast float %3773, %3749
  %3775 = fmul fast float %3773, %3765
  %3776 = fsub fast float %3750, %3775
  br label %3777

; <label>:3777                                    ; preds = %3771, %3766
  %3778 = phi float [ %3768, %3766 ], [ %3774, %3771 ]
  %3779 = phi float [ %3770, %3766 ], [ %3776, %3771 ]
  %3780 = fcmp fast olt float %3759, %3608
  %3781 = icmp slt i32 %3756, 3
  %3782 = and i1 %3781, %3780
  br i1 %3782, label %3748, label %3783

; <label>:3783                                    ; preds = %3777
  br label %3784

; <label>:3784                                    ; preds = %3783, %3741
  %3785 = phi float [ %3606, %3741 ], [ %3778, %3783 ]
  %3786 = phi float [ %3607, %3741 ], [ %3779, %3783 ]
  %3787 = fsub fast float %3522, %3785
  %3788 = select i1 %3524, float %3785, float %3787
  %3789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %3790 = extractvalue %dx.types.CBufRet.f32 %3789, 0
  %3791 = extractvalue %dx.types.CBufRet.f32 %3789, 1
  %3792 = extractvalue %dx.types.CBufRet.f32 %3789, 2
  %3793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %3794 = extractvalue %dx.types.CBufRet.f32 %3793, 0
  %3795 = extractvalue %dx.types.CBufRet.f32 %3793, 1
  %3796 = extractvalue %dx.types.CBufRet.f32 %3793, 2
  %3797 = extractvalue %dx.types.CBufRet.f32 %3793, 3
  %3798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %3799 = extractvalue %dx.types.CBufRet.f32 %3798, 3
  %3800 = call float @dx.op.binary.f32(i32 36, float %3786, float %3799)  ; FMin(a,b)
  %3801 = fmul fast float %3797, %3788
  %3802 = call float @dx.op.unary.f32(i32 7, float %3801)  ; Saturate(value)
  %3803 = fsub fast float %3794, %3790
  %3804 = fsub fast float %3795, %3791
  %3805 = fsub fast float %3796, %3792
  %3806 = fmul fast float %3802, %3803
  %3807 = fmul fast float %3802, %3804
  %3808 = fmul fast float %3802, %3805
  %3809 = fadd fast float %3806, %3790
  %3810 = fadd fast float %3807, %3791
  %3811 = fadd fast float %3808, %3792
  %3812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %3813 = extractvalue %dx.types.CBufRet.f32 %3812, 0
  %3814 = extractvalue %dx.types.CBufRet.f32 %3812, 1
  %3815 = fadd fast float %3814, %3813
  %3816 = call float @dx.op.unary.f32(i32 7, float %3815)  ; Saturate(value)
  %3817 = extractvalue %dx.types.CBufRet.f32 %3812, 2
  %3818 = extractvalue %dx.types.CBufRet.f32 %3812, 3
  %3819 = fadd fast float %3818, %3817
  %3820 = call float @dx.op.unary.f32(i32 7, float %3819)  ; Saturate(value)
  %3821 = fmul fast float %3816, %3800
  %3822 = fmul fast float %3821, %3820
  br label %3823

; <label>:3823                                    ; preds = %3784, %3703, %3538, %3520, %3518
  %3824 = phi float [ %3547, %3538 ], [ %3706, %3703 ], [ %3788, %3784 ], [ 0.000000e+00, %3518 ], [ 0.000000e+00, %3520 ]
  %3825 = phi float [ %3581, %3538 ], [ %3740, %3703 ], [ %3822, %3784 ], [ 0.000000e+00, %3518 ], [ 0.000000e+00, %3520 ]
  %3826 = phi float [ %3568, %3538 ], [ %3727, %3703 ], [ %3809, %3784 ], [ 0.000000e+00, %3518 ], [ 0.000000e+00, %3520 ]
  %3827 = phi float [ %3569, %3538 ], [ %3728, %3703 ], [ %3810, %3784 ], [ 0.000000e+00, %3518 ], [ 0.000000e+00, %3520 ]
  %3828 = phi float [ %3570, %3538 ], [ %3729, %3703 ], [ %3811, %3784 ], [ 0.000000e+00, %3518 ], [ 0.000000e+00, %3520 ]
  %3829 = fmul fast float %3461, %3825
  %3830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3831 = extractvalue %dx.types.CBufRet.f32 %3830, 2
  %3832 = fsub fast float %3468, %3831
  %3833 = fcmp fast olt float %3829, -2.000000e+01
  %3834 = call float @dx.op.unary.f32(i32 21, float %3829)  ; Exp(value)
  %3835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %3836 = extractvalue %dx.types.CBufRet.f32 %3835, 2
  %3837 = extractvalue %dx.types.CBufRet.f32 %3835, 3
  %3838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %3839 = extractvalue %dx.types.CBufRet.f32 %3838, 2
  %3840 = fmul fast float %3837, %3832
  %3841 = call float @dx.op.unary.f32(i32 7, float %3840)  ; Saturate(value)
  %3842 = fsub fast float 1.000000e+00, %3841
  %3843 = fmul fast float %3453, 5.000000e-01
  %3844 = fadd fast float %3843, 5.000000e-01
  %3845 = call float @dx.op.unary.f32(i32 7, float %3844)  ; Saturate(value)
  %3846 = fsub fast float 1.000000e+00, %3845
  %3847 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %3842)  ; FMax(a,b)
  %3848 = fdiv fast float %3846, %3847
  %3849 = fsub fast float %3832, %3419
  %3850 = call float @dx.op.unary.f32(i32 6, float %3849)  ; FAbs(value)
  %3851 = fmul fast float %3850, %3836
  %3852 = call float @dx.op.unary.f32(i32 7, float %3848)  ; Saturate(value)
  %3853 = fsub fast float 1.000000e+00, %3851
  %3854 = fmul fast float %3853, %3852
  %3855 = fadd fast float %3854, %3851
  %3856 = fmul fast float %3839, %3832
  %3857 = call float @dx.op.unary.f32(i32 7, float %3856)  ; Saturate(value)
  %3858 = fsub fast float 1.000000e+00, %3855
  %3859 = fmul fast float %3858, %3857
  %3860 = fadd fast float %3859, %3855
  %3861 = call float @dx.op.unary.f32(i32 7, float %3860)  ; Saturate(value)
  %3862 = fadd fast float %3834, -1.000000e+00
  %3863 = select i1 %3833, float -1.000000e+00, float %3862
  %3864 = fmul fast float %3861, %3863
  %3865 = fadd fast float %3864, 1.000000e+00
  %3866 = fsub fast float -0.000000e+00, %3864
  %3867 = fmul fast float %3826, %3866
  %3868 = fmul fast float %3827, %3866
  %3869 = fmul fast float %3828, %3866
  br label %3870

; <label>:3870                                    ; preds = %3823, %3372
  %3871 = phi float [ %3824, %3823 ], [ 0.000000e+00, %3372 ]
  %3872 = phi float [ %3865, %3823 ], [ 1.000000e+00, %3372 ]
  %3873 = phi float [ %3867, %3823 ], [ 0.000000e+00, %3372 ]
  %3874 = phi float [ %3868, %3823 ], [ 0.000000e+00, %3372 ]
  %3875 = phi float [ %3869, %3823 ], [ 0.000000e+00, %3372 ]
  %3876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %3877 = extractvalue %dx.types.CBufRet.f32 %3876, 1
  %3878 = fsub fast float 1.000000e+00, %3872
  %3879 = fmul fast float %3878, %3454
  %3880 = fmul fast float %3879, %3877
  %3881 = fsub fast float %3454, %3880
  br i1 %3447, label %3882, label %3911, !dx.controlflow.hints !153

; <label>:3882                                    ; preds = %3870
  %3883 = fmul fast float %3455, %3444
  %3884 = fadd fast float %3883, %3445
  %3885 = call float @dx.op.unary.f32(i32 7, float %3884)  ; Saturate(value)
  %3886 = fmul fast float %3426, %3881
  %3887 = fsub fast float -0.000000e+00, %3886
  %3888 = fmul fast float %3427, %3881
  %3889 = fsub fast float -0.000000e+00, %3888
  %3890 = call float @dx.op.unary.f32(i32 21, float %3887)  ; Exp(value)
  %3891 = call float @dx.op.unary.f32(i32 21, float %3889)  ; Exp(value)
  %3892 = call float @dx.op.binary.f32(i32 35, float %3434, float %3890)  ; FMax(a,b)
  %3893 = call float @dx.op.binary.f32(i32 35, float %3434, float %3891)  ; FMax(a,b)
  %3894 = fsub fast float %3893, %3892
  %3895 = fmul fast float %3894, %3885
  %3896 = fadd fast float %3895, %3892
  %3897 = call float @dx.op.unary.f32(i32 7, float %3896)  ; Saturate(value)
  %3898 = fsub fast float %3431, %3436
  %3899 = fsub fast float %3432, %3437
  %3900 = fsub fast float %3433, %3438
  %3901 = fmul fast float %3885, %3898
  %3902 = fmul fast float %3885, %3899
  %3903 = fmul fast float %3885, %3900
  %3904 = fadd fast float %3901, %3436
  %3905 = fadd fast float %3902, %3437
  %3906 = fadd fast float %3903, %3438
  %3907 = fsub fast float 1.000000e+00, %3897
  %3908 = fmul fast float %3907, %3904
  %3909 = fmul fast float %3907, %3905
  %3910 = fmul fast float %3907, %3906
  br label %3970

; <label>:3911                                    ; preds = %3870
  %3912 = fmul fast float %3881, %3443
  %3913 = call float @dx.op.unary.f32(i32 7, float %3912)  ; Saturate(value)
  %3914 = fsub fast float 2.000000e+00, %3913
  %3915 = fmul fast float %3913, 9.921875e-01
  %3916 = fmul fast float %3915, %3914
  %3917 = fadd fast float %3916, 3.906250e-03
  %3918 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %27, float %3917, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3919 = extractvalue %dx.types.ResRet.f32 %3918, 0
  %3920 = fsub fast float %3913, %3919
  %3921 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3920)  ; FMax(a,b)
  %3922 = fmul fast float %3429, %3419
  %3923 = call float @dx.op.unary.f32(i32 6, float %3922)  ; FAbs(value)
  %3924 = fcmp fast ogt float %3923, 0x3EB0C6F7A0000000
  br i1 %3924, label %3925, label %3931, !dx.controlflow.hints !154

; <label>:3925                                    ; preds = %3911
  %3926 = fmul fast float %3922, 0xBFF7154760000000
  %3927 = call float @dx.op.unary.f32(i32 21, float %3926)  ; Exp(value)
  %3928 = fsub fast float 1.000000e+00, %3927
  %3929 = fdiv fast float %3928, %3922
  %3930 = fmul fast float %3929, %3439
  br label %3931

; <label>:3931                                    ; preds = %3925, %3911
  %3932 = phi float [ %3930, %3925 ], [ %3439, %3911 ]
  %3933 = fadd fast float %3932, %3441
  %3934 = fmul fast float %3933, %3921
  %3935 = fmul fast float %3426, %3934
  %3936 = fsub fast float -0.000000e+00, %3935
  %3937 = fmul fast float %3427, %3934
  %3938 = fsub fast float -0.000000e+00, %3937
  %3939 = fmul fast float %3428, %3934
  %3940 = fsub fast float -0.000000e+00, %3939
  %3941 = call float @dx.op.unary.f32(i32 21, float %3936)  ; Exp(value)
  %3942 = call float @dx.op.unary.f32(i32 21, float %3938)  ; Exp(value)
  %3943 = call float @dx.op.unary.f32(i32 21, float %3940)  ; Exp(value)
  %3944 = fmul fast float %3455, %3455
  %3945 = fadd fast float %3944, 1.000000e+00
  %3946 = fmul fast float %3945, 0x3FAE8EC8A0000000
  %3947 = fmul fast float %3946, %3436
  %3948 = fmul fast float %3946, %3437
  %3949 = fmul fast float %3946, %3438
  %3950 = fmul fast float %3455, %3434
  %3951 = fsub fast float 1.000000e+00, %3950
  %3952 = fmul fast float %3434, %3434
  %3953 = fsub fast float 1.000000e+00, %3952
  %3954 = fmul fast float %3953, 0x3FB45F3060000000
  %3955 = fmul fast float %3951, %3951
  %3956 = fdiv fast float 1.000000e+00, %3955
  %3957 = fmul fast float %3954, %3956
  %3958 = fmul fast float %3957, %3431
  %3959 = fmul fast float %3957, %3432
  %3960 = fmul fast float %3957, %3433
  %3961 = fadd fast float %3958, %3947
  %3962 = fadd fast float %3959, %3948
  %3963 = fadd fast float %3960, %3949
  %3964 = fsub fast float 1.000000e+00, %3941
  %3965 = fsub fast float 1.000000e+00, %3942
  %3966 = fsub fast float 1.000000e+00, %3943
  %3967 = fmul fast float %3961, %3964
  %3968 = fmul fast float %3962, %3965
  %3969 = fmul fast float %3963, %3966
  br label %3970

; <label>:3970                                    ; preds = %3931, %3882
  %3971 = phi float [ %3908, %3882 ], [ %3967, %3931 ]
  %3972 = phi float [ %3909, %3882 ], [ %3968, %3931 ]
  %3973 = phi float [ %3910, %3882 ], [ %3969, %3931 ]
  %3974 = phi float [ %3897, %3882 ], [ %3941, %3931 ]
  %3975 = phi float [ %3897, %3882 ], [ %3942, %3931 ]
  %3976 = phi float [ %3897, %3882 ], [ %3943, %3931 ]
  br i1 %3463, label %3977, label %4175, !dx.controlflow.hints !155

; <label>:3977                                    ; preds = %3970
  %3978 = extractvalue %dx.types.CBufRet.f32 %3876, 0
  %3979 = fmul fast float %3978, %3878
  %3980 = fsub fast float %3873, %3971
  %3981 = fsub fast float %3874, %3972
  %3982 = fsub fast float %3875, %3973
  %3983 = fmul fast float %3979, %3980
  %3984 = fmul fast float %3979, %3981
  %3985 = fmul fast float %3979, %3982
  %3986 = fadd fast float %3983, %3971
  %3987 = fadd fast float %3984, %3972
  %3988 = fadd fast float %3985, %3973
  %3989 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3974)  ; FMax(a,b)
  %3990 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3975)  ; FMax(a,b)
  %3991 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3976)  ; FMax(a,b)
  %3992 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3872)  ; FMax(a,b)
  %3993 = call float @dx.op.binary.f32(i32 35, float %3871, float %3881)  ; FMax(a,b)
  %3994 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %3993)  ; FMax(a,b)
  %3995 = fdiv fast float %3871, %3994
  %3996 = call float @dx.op.unary.f32(i32 7, float %3995)  ; Saturate(value)
  %3997 = fdiv fast float %3881, %3994
  %3998 = call float @dx.op.unary.f32(i32 7, float %3997)  ; Saturate(value)
  %3999 = fcmp fast une float %3992, 1.000000e+00
  br i1 %3999, label %4000, label %4013, !dx.controlflow.hints !156

; <label>:4000                                    ; preds = %3977
  %4001 = call float @dx.op.unary.f32(i32 23, float %3992)  ; Log(value)
  %4002 = fmul fast float %4001, 0x3FE62E4300000000
  %4003 = fmul fast float %3873, %4002
  %4004 = fsub fast float -0.000000e+00, %4003
  %4005 = fmul fast float %3874, %4002
  %4006 = fsub fast float -0.000000e+00, %4005
  %4007 = fmul fast float %3875, %4002
  %4008 = fsub fast float -0.000000e+00, %4007
  %4009 = fsub fast float 1.000000e+00, %3992
  %4010 = fdiv fast float %4004, %4009
  %4011 = fdiv fast float %4006, %4009
  %4012 = fdiv fast float %4008, %4009
  br label %4013

; <label>:4013                                    ; preds = %4000, %3977
  %4014 = phi float [ %4010, %4000 ], [ %3873, %3977 ]
  %4015 = phi float [ %4011, %4000 ], [ %3874, %3977 ]
  %4016 = phi float [ %4012, %4000 ], [ %3875, %3977 ]
  %4017 = phi float [ %4002, %4000 ], [ 0.000000e+00, %3977 ]
  %4018 = fcmp fast une float %3989, 1.000000e+00
  br i1 %4018, label %4019, label %4026, !dx.controlflow.hints !157

; <label>:4019                                    ; preds = %4013
  %4020 = call float @dx.op.unary.f32(i32 23, float %3989)  ; Log(value)
  %4021 = fmul fast float %4020, 0x3FE62E4300000000
  %4022 = fmul fast float %3986, %4021
  %4023 = fsub fast float -0.000000e+00, %4022
  %4024 = fsub fast float 1.000000e+00, %3989
  %4025 = fdiv fast float %4023, %4024
  br label %4026

; <label>:4026                                    ; preds = %4019, %4013
  %4027 = phi float [ %4025, %4019 ], [ %3986, %4013 ]
  %4028 = phi float [ %4021, %4019 ], [ 0.000000e+00, %4013 ]
  %4029 = fcmp fast une float %3990, 1.000000e+00
  br i1 %4029, label %4030, label %4037, !dx.controlflow.hints !157

; <label>:4030                                    ; preds = %4026
  %4031 = call float @dx.op.unary.f32(i32 23, float %3990)  ; Log(value)
  %4032 = fmul fast float %4031, 0x3FE62E4300000000
  %4033 = fmul fast float %3987, %4032
  %4034 = fsub fast float -0.000000e+00, %4033
  %4035 = fsub fast float 1.000000e+00, %3990
  %4036 = fdiv fast float %4034, %4035
  br label %4037

; <label>:4037                                    ; preds = %4030, %4026
  %4038 = phi float [ %4036, %4030 ], [ %3987, %4026 ]
  %4039 = phi float [ %4032, %4030 ], [ 0.000000e+00, %4026 ]
  %4040 = fcmp fast une float %3991, 1.000000e+00
  br i1 %4040, label %4041, label %4048, !dx.controlflow.hints !157

; <label>:4041                                    ; preds = %4037
  %4042 = call float @dx.op.unary.f32(i32 23, float %3991)  ; Log(value)
  %4043 = fmul fast float %4042, 0x3FE62E4300000000
  %4044 = fmul fast float %3988, %4043
  %4045 = fsub fast float -0.000000e+00, %4044
  %4046 = fsub fast float 1.000000e+00, %3991
  %4047 = fdiv fast float %4045, %4046
  br label %4048

; <label>:4048                                    ; preds = %4041, %4037
  %4049 = phi float [ %4047, %4041 ], [ %3988, %4037 ]
  %4050 = phi float [ %4043, %4041 ], [ 0.000000e+00, %4037 ]
  %4051 = fmul fast float %4014, %3998
  %4052 = fmul fast float %4015, %3998
  %4053 = fmul fast float %4016, %3998
  %4054 = fmul fast float %4017, %3998
  %4055 = fmul fast float %4027, %3996
  %4056 = fmul fast float %4038, %3996
  %4057 = fmul fast float %4049, %3996
  %4058 = fmul fast float %4028, %3996
  %4059 = fmul fast float %4039, %3996
  %4060 = fmul fast float %4050, %3996
  %4061 = fadd fast float %4055, %4051
  %4062 = fadd fast float %4056, %4052
  %4063 = fadd fast float %4057, %4053
  %4064 = fadd fast float %4058, %4054
  %4065 = fadd fast float %4059, %4054
  %4066 = fadd fast float %4060, %4054
  %4067 = fcmp fast une float %4064, 0.000000e+00
  br i1 %4067, label %4068, label %4075, !dx.controlflow.hints !158

; <label>:4068                                    ; preds = %4048
  %4069 = fmul fast float %4064, 0x3FF7154760000000
  %4070 = call float @dx.op.unary.f32(i32 21, float %4069)  ; Exp(value)
  %4071 = fsub fast float 1.000000e+00, %4070
  %4072 = fmul fast float %4061, %4071
  %4073 = fsub fast float -0.000000e+00, %4072
  %4074 = fdiv fast float %4073, %4064
  br label %4075

; <label>:4075                                    ; preds = %4068, %4048
  %4076 = phi float [ %4070, %4068 ], [ 1.000000e+00, %4048 ]
  %4077 = phi float [ %4074, %4068 ], [ %4061, %4048 ]
  %4078 = fcmp fast une float %4065, 0.000000e+00
  br i1 %4078, label %4079, label %4086, !dx.controlflow.hints !158

; <label>:4079                                    ; preds = %4075
  %4080 = fmul fast float %4065, 0x3FF7154760000000
  %4081 = call float @dx.op.unary.f32(i32 21, float %4080)  ; Exp(value)
  %4082 = fsub fast float 1.000000e+00, %4081
  %4083 = fmul fast float %4062, %4082
  %4084 = fsub fast float -0.000000e+00, %4083
  %4085 = fdiv fast float %4084, %4065
  br label %4086

; <label>:4086                                    ; preds = %4079, %4075
  %4087 = phi float [ %4081, %4079 ], [ 1.000000e+00, %4075 ]
  %4088 = phi float [ %4085, %4079 ], [ %4062, %4075 ]
  %4089 = fcmp fast une float %4066, 0.000000e+00
  br i1 %4089, label %4090, label %4097, !dx.controlflow.hints !158

; <label>:4090                                    ; preds = %4086
  %4091 = fmul fast float %4066, 0x3FF7154760000000
  %4092 = call float @dx.op.unary.f32(i32 21, float %4091)  ; Exp(value)
  %4093 = fsub fast float 1.000000e+00, %4092
  %4094 = fmul fast float %4063, %4093
  %4095 = fsub fast float -0.000000e+00, %4094
  %4096 = fdiv fast float %4095, %4066
  br label %4097

; <label>:4097                                    ; preds = %4090, %4086
  %4098 = phi float [ %4092, %4090 ], [ 1.000000e+00, %4086 ]
  %4099 = phi float [ %4096, %4090 ], [ %4063, %4086 ]
  %4100 = fcmp fast ogt float %3996, %3998
  br i1 %4100, label %4101, label %4121, !dx.controlflow.hints !159

; <label>:4101                                    ; preds = %4097
  %4102 = fsub fast float 1.000000e+00, %3998
  %4103 = fmul fast float %4014, %4102
  %4104 = fmul fast float %4015, %4102
  %4105 = fmul fast float %4016, %4102
  %4106 = fmul fast float %4017, %4102
  %4107 = fcmp fast une float %4106, 0.000000e+00
  br i1 %4107, label %4108, label %4159, !dx.controlflow.hints !160

; <label>:4108                                    ; preds = %4101
  %4109 = fmul fast float %4106, 0x3FF7154760000000
  %4110 = call float @dx.op.unary.f32(i32 21, float %4109)  ; Exp(value)
  %4111 = fsub fast float 1.000000e+00, %4110
  %4112 = fmul fast float %4103, %4111
  %4113 = fsub fast float -0.000000e+00, %4112
  %4114 = fmul fast float %4104, %4111
  %4115 = fsub fast float -0.000000e+00, %4114
  %4116 = fmul fast float %4105, %4111
  %4117 = fsub fast float -0.000000e+00, %4116
  %4118 = fdiv fast float %4113, %4106
  %4119 = fdiv fast float %4115, %4106
  %4120 = fdiv fast float %4117, %4106
  br label %4159

; <label>:4121                                    ; preds = %4097
  %4122 = fsub fast float 1.000000e+00, %3996
  %4123 = fmul fast float %4027, %4122
  %4124 = fmul fast float %4038, %4122
  %4125 = fmul fast float %4049, %4122
  %4126 = fmul fast float %4028, %4122
  %4127 = fmul fast float %4039, %4122
  %4128 = fmul fast float %4050, %4122
  %4129 = fcmp fast une float %4126, 0.000000e+00
  br i1 %4129, label %4130, label %4137, !dx.controlflow.hints !158

; <label>:4130                                    ; preds = %4121
  %4131 = fmul fast float %4126, 0x3FF7154760000000
  %4132 = call float @dx.op.unary.f32(i32 21, float %4131)  ; Exp(value)
  %4133 = fsub fast float 1.000000e+00, %4132
  %4134 = fmul fast float %4123, %4133
  %4135 = fsub fast float -0.000000e+00, %4134
  %4136 = fdiv fast float %4135, %4126
  br label %4137

; <label>:4137                                    ; preds = %4130, %4121
  %4138 = phi float [ %4136, %4130 ], [ %4123, %4121 ]
  %4139 = phi float [ %4132, %4130 ], [ 1.000000e+00, %4121 ]
  %4140 = fcmp fast une float %4127, 0.000000e+00
  br i1 %4140, label %4141, label %4148, !dx.controlflow.hints !158

; <label>:4141                                    ; preds = %4137
  %4142 = fmul fast float %4127, 0x3FF7154760000000
  %4143 = call float @dx.op.unary.f32(i32 21, float %4142)  ; Exp(value)
  %4144 = fsub fast float 1.000000e+00, %4143
  %4145 = fmul fast float %4124, %4144
  %4146 = fsub fast float -0.000000e+00, %4145
  %4147 = fdiv fast float %4146, %4127
  br label %4148

; <label>:4148                                    ; preds = %4141, %4137
  %4149 = phi float [ %4147, %4141 ], [ %4124, %4137 ]
  %4150 = phi float [ %4143, %4141 ], [ 1.000000e+00, %4137 ]
  %4151 = fcmp fast une float %4128, 0.000000e+00
  br i1 %4151, label %4152, label %4159, !dx.controlflow.hints !158

; <label>:4152                                    ; preds = %4148
  %4153 = fmul fast float %4128, 0x3FF7154760000000
  %4154 = call float @dx.op.unary.f32(i32 21, float %4153)  ; Exp(value)
  %4155 = fsub fast float 1.000000e+00, %4154
  %4156 = fmul fast float %4125, %4155
  %4157 = fsub fast float -0.000000e+00, %4156
  %4158 = fdiv fast float %4157, %4128
  br label %4159

; <label>:4159                                    ; preds = %4152, %4148, %4108, %4101
  %4160 = phi float [ %4158, %4152 ], [ %4120, %4108 ], [ %4105, %4101 ], [ %4125, %4148 ]
  %4161 = phi float [ %4149, %4152 ], [ %4119, %4108 ], [ %4104, %4101 ], [ %4149, %4148 ]
  %4162 = phi float [ %4138, %4152 ], [ %4118, %4108 ], [ %4103, %4101 ], [ %4138, %4148 ]
  %4163 = phi float [ %4154, %4152 ], [ %4110, %4108 ], [ 1.000000e+00, %4101 ], [ 1.000000e+00, %4148 ]
  %4164 = phi float [ %4150, %4152 ], [ %4110, %4108 ], [ 1.000000e+00, %4101 ], [ %4150, %4148 ]
  %4165 = phi float [ %4139, %4152 ], [ %4110, %4108 ], [ 1.000000e+00, %4101 ], [ %4139, %4148 ]
  %4166 = fmul fast float %4165, %4077
  %4167 = fmul fast float %4164, %4088
  %4168 = fmul fast float %4163, %4099
  %4169 = fadd fast float %4166, %4162
  %4170 = fadd fast float %4167, %4161
  %4171 = fadd fast float %4168, %4160
  %4172 = fmul fast float %4165, %4076
  %4173 = fmul fast float %4164, %4087
  %4174 = fmul fast float %4163, %4098
  br label %4175

; <label>:4175                                    ; preds = %4159, %3970
  %4176 = phi float [ %3976, %3970 ], [ %4174, %4159 ]
  %4177 = phi float [ %3975, %3970 ], [ %4173, %4159 ]
  %4178 = phi float [ %3974, %3970 ], [ %4172, %4159 ]
  %4179 = phi float [ %3973, %3970 ], [ %4171, %4159 ]
  %4180 = phi float [ %3972, %3970 ], [ %4170, %4159 ]
  %4181 = phi float [ %3971, %3970 ], [ %4169, %4159 ]
  %4182 = fmul fast float %4178, %3319
  %4183 = fmul fast float %4177, %3320
  %4184 = fmul fast float %4176, %3321
  %4185 = fsub fast float 1.000000e+00, %3382
  %4186 = fmul fast float %4181, %4185
  %4187 = fmul fast float %4180, %4185
  %4188 = fmul fast float %4179, %4185
  %4189 = fadd fast float %4186, %4182
  %4190 = fadd fast float %4187, %4183
  %4191 = fadd fast float %4188, %4184
  %4192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %4193 = extractvalue %dx.types.CBufRet.f32 %4192, 2
  %4194 = fmul fast float %4193, %3392
  %4195 = call float @dx.op.unary.f32(i32 7, float %4194)  ; Saturate(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %31, i32 %32, i32 undef, float %3382, float %3382, float %3382, float %3382, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %4196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4197 = extractvalue %dx.types.CBufRet.f32 %4196, 0
  %4198 = fmul fast float %4197, %4189
  %4199 = fmul fast float %4197, %4190
  %4200 = fmul fast float %4197, %4191
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %31, i32 %32, i32 undef, float %4198, float %4199, float %4200, float %4198, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %31, i32 %32, i32 undef, float %4195, float %4195, float %4195, float %4195, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!43 = !{void ()* @cs_fog_raymarching_clouds_heightmap_particles_brfog, !"cs_fog_raymarching_clouds_heightmap_particles_brfog", null, !4, !44}
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
!59 = distinct !{!59, !"dx.controlflow.hints", i32 1}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !67}
!67 = !{!"llvm.loop.unroll.disable"}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 2}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
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
!84 = distinct !{!84, !"dx.controlflow.hints", i32 2}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 2}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 1}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 1}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 2}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 1}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 2}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 2}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 2}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 2}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 2}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 1}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 2}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 2}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 2}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 1}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 2}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 2}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 2}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 2}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 2}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 2}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 1}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 2}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 2}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 2}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 2}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 2}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 2}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 2}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 2}
!115 = !{!116, !116, i64 0}
!116 = !{!"float", !117, i64 0}
!117 = !{!"omnipotent char", !118, i64 0}
!118 = !{!"Simple C/C++ TBAA"}
!119 = !{!120, !122, !124, !125, !127, !128, !129}
!120 = distinct !{!120, !121, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!121 = distinct !{!121, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!122 = distinct !{!122, !123, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!123 = distinct !{!123, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!124 = distinct !{!124, !123, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!125 = distinct !{!125, !126, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %scattering"}
!126 = distinct !{!126, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z"}
!127 = distinct !{!127, !126, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %transmission"}
!128 = distinct !{!128, !126, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %depthDensityWeighted"}
!129 = distinct !{!129, !126, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %rawShadowmapData"}
!130 = distinct !{!130, !"dx.controlflow.hints", i32 2}
!131 = !{!132}
!132 = distinct !{!132, !133, !"\01?sort@@YAXAIAM00@Z: %c"}
!133 = distinct !{!133, !"\01?sort@@YAXAIAM00@Z"}
!134 = !{!135, !136, !120, !122, !124, !125, !127, !128, !129}
!135 = distinct !{!135, !133, !"\01?sort@@YAXAIAM00@Z: %a"}
!136 = distinct !{!136, !133, !"\01?sort@@YAXAIAM00@Z: %b"}
!137 = !{!136}
!138 = !{!135, !132, !120, !122, !124, !125, !127, !128, !129}
!139 = !{!135}
!140 = !{!136, !132, !120, !122, !124, !125, !127, !128, !129}
!141 = !{!142}
!142 = distinct !{!142, !143, !"\01?sort@@YAXAIAM00@Z: %c"}
!143 = distinct !{!143, !"\01?sort@@YAXAIAM00@Z"}
!144 = !{!145, !146, !120, !122, !124, !125, !127, !128, !129}
!145 = distinct !{!145, !143, !"\01?sort@@YAXAIAM00@Z: %a"}
!146 = distinct !{!146, !143, !"\01?sort@@YAXAIAM00@Z: %b"}
!147 = !{!146}
!148 = !{!145, !142, !120, !122, !124, !125, !127, !128, !129}
!149 = !{!145}
!150 = !{!146, !142, !120, !122, !124, !125, !127, !128, !129}
!151 = distinct !{!151, !"dx.controlflow.hints", i32 2}
!152 = distinct !{!152, !"dx.controlflow.hints", i32 2}
!153 = distinct !{!153, !"dx.controlflow.hints", i32 1}
!154 = distinct !{!154, !"dx.controlflow.hints", i32 2}
!155 = distinct !{!155, !"dx.controlflow.hints", i32 1}
!156 = distinct !{!156, !"dx.controlflow.hints", i32 1}
!157 = distinct !{!157, !"dx.controlflow.hints", i32 1}
!158 = distinct !{!158, !"dx.controlflow.hints", i32 1}
!159 = distinct !{!159, !"dx.controlflow.hints", i32 2}
!160 = distinct !{!160, !"dx.controlflow.hints", i32 1}

