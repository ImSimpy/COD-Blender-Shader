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
; shader hash: 33798b746c254571671d1638ba12c44f
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
;                                   texture     f32          3d      T2             t1     1
;                                   texture     f32          3d      T3             t2     1
;                                   texture     f32          2d      T4             t8     1
;                                   texture     f32          2d      T5             t9     1
;                                   texture     f32          2d      T6            t18     1
;                                   texture  struct         r/o      T7            t25     1
;                                   texture     f32     2darray      T8            t31     1
;                                   texture     f32          3d      T9            t30     1
;                                   texture     f32          2d     T10            t29     1
;                                   texture     f32          2d     T11            t26     1
;                                   texture     u32          2d     T12            t32     1
;                                   texture     f32          3d     T13            t33     1
;                                   texture     f32          1d     T14            t14     1
;                                   texture     f32          2d     T15            t13     1
;                                   texture     f32          2d     T16             t0     1
;                                   texture    byte         r/o     T17            t17     1
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

define void @cs_fog_raymarching_clouds_heightmap_particles() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 26, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 29, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %31 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %32 = alloca [3 x float], align 4
  %33 = alloca [3 x float], align 4
  %34 = add i32 %31, %30
  %35 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 361)  ; CBufferLoadLegacy(handle,regIndex)
  %36 = extractvalue %dx.types.CBufRet.i32 %35, 1
  %37 = add i32 %34, %36
  %38 = lshr i32 %37, 1
  %39 = and i32 %38, 1
  %40 = and i32 %37, 1
  %41 = xor i32 %39, %40
  %42 = shl i32 %30, 1
  %43 = shl i32 %31, 1
  %44 = or i32 %41, %42
  %45 = or i32 %39, %43
  %46 = uitofp i32 %44 to float
  %47 = uitofp i32 %45 to float
  %48 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %49 = extractvalue %dx.types.CBufRet.f32 %48, 2
  %50 = fmul fast float %49, 0x3FE3C6EF40000000
  %51 = frem fast float %46, 2.560000e+02
  %52 = frem fast float %47, 2.560000e+02
  %53 = fptoui float %51 to i32
  %54 = fptoui float %52 to i32
  %55 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %53, i32 %54, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %56 = extractvalue %dx.types.ResRet.f32 %55, 0
  %57 = extractvalue %dx.types.ResRet.f32 %55, 1
  %58 = extractvalue %dx.types.ResRet.f32 %55, 2
  %59 = extractvalue %dx.types.ResRet.f32 %55, 3
  %60 = fadd fast float %56, %50
  %61 = fadd fast float %57, %50
  %62 = fadd fast float %58, %50
  %63 = fadd fast float %59, %50
  %64 = call float @dx.op.unary.f32(i32 22, float %60)  ; Frc(value)
  %65 = call float @dx.op.unary.f32(i32 22, float %61)  ; Frc(value)
  %66 = call float @dx.op.unary.f32(i32 22, float %62)  ; Frc(value)
  %67 = call float @dx.op.unary.f32(i32 22, float %63)  ; Frc(value)
  %68 = fadd fast float %66, %46
  %69 = fadd fast float %67, %47
  %70 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %71 = extractvalue %dx.types.CBufRet.f32 %70, 2
  %72 = extractvalue %dx.types.CBufRet.f32 %70, 3
  %73 = fmul fast float %71, %68
  %74 = fmul fast float %72, %69
  %75 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %76 = extractvalue %dx.types.CBufRet.f32 %75, 0
  %77 = extractvalue %dx.types.CBufRet.f32 %75, 1
  %78 = extractvalue %dx.types.CBufRet.f32 %75, 2
  %79 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %80 = extractvalue %dx.types.CBufRet.f32 %79, 1
  %81 = fmul fast float %73, 2.000000e+00
  %82 = fmul fast float %74, 2.000000e+00
  %83 = fsub fast float 1.000000e+00, %81
  %84 = fsub fast float 1.000000e+00, %82
  %85 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %86 = extractvalue %dx.types.CBufRet.f32 %85, 0
  %87 = extractvalue %dx.types.CBufRet.f32 %85, 1
  %88 = extractvalue %dx.types.CBufRet.f32 %85, 2
  %89 = fmul fast float %86, %83
  %90 = fmul fast float %87, %83
  %91 = fmul fast float %88, %83
  %92 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %93 = extractvalue %dx.types.CBufRet.f32 %92, 0
  %94 = extractvalue %dx.types.CBufRet.f32 %92, 1
  %95 = extractvalue %dx.types.CBufRet.f32 %92, 2
  %96 = fmul fast float %93, %84
  %97 = fmul fast float %94, %84
  %98 = fmul fast float %95, %84
  %99 = fadd fast float %96, %89
  %100 = fadd fast float %97, %90
  %101 = fadd fast float %98, %91
  %102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %103 = extractvalue %dx.types.CBufRet.f32 %102, 0
  %104 = extractvalue %dx.types.CBufRet.f32 %102, 1
  %105 = extractvalue %dx.types.CBufRet.f32 %102, 2
  %106 = fadd fast float %99, %103
  %107 = fadd fast float %100, %104
  %108 = fadd fast float %101, %105
  %109 = fmul fast float %106, %80
  %110 = fmul fast float %107, %80
  %111 = fmul fast float %108, %80
  %112 = fmul fast float %109, %109
  %113 = fmul fast float %110, %110
  %114 = fadd fast float %112, %113
  %115 = fmul fast float %111, %111
  %116 = fadd fast float %114, %115
  %117 = call float @dx.op.unary.f32(i32 24, float %116)  ; Sqrt(value)
  %118 = fdiv fast float 1.000000e+00, %117
  %119 = fmul fast float %109, %118
  %120 = fmul fast float %110, %118
  %121 = fmul fast float %111, %118
  %122 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %44, i32 %45, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %123 = extractvalue %dx.types.ResRet.f32 %122, 0
  %124 = fcmp fast ogt float %123, -1.000000e+00
  %125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %126 = extractvalue %dx.types.CBufRet.f32 %125, 1
  %127 = select i1 %124, float %126, float 1.000000e+00
  %128 = fadd fast float %123, 1.000000e+00
  %129 = fmul fast float %127, %128
  %130 = call float @dx.op.unary.f32(i32 6, float %129)  ; FAbs(value)
  %131 = fdiv fast float 1.000000e+00, %80
  %132 = fmul fast float %131, %117
  %133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %134 = extractvalue %dx.types.CBufRet.f32 %133, 1
  %135 = fmul fast float %134, %132
  %136 = fmul fast float %132, %130
  %137 = extractvalue %dx.types.CBufRet.f32 %125, 3
  %138 = fcmp fast oge float %130, %137
  %139 = call float @dx.op.binary.f32(i32 36, float %136, float %135)  ; FMin(a,b)
  %140 = select i1 %138, float %135, float %139
  %141 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %142 = extractvalue %dx.types.CBufRet.i32 %141, 3
  %143 = icmp eq i32 %142, 0
  %144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %145 = extractvalue %dx.types.CBufRet.f32 %144, 2
  %146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %147 = extractvalue %dx.types.CBufRet.f32 %146, 2
  %148 = fsub fast float %145, %78
  %149 = fadd fast float %148, %147
  %150 = fsub fast float 0xC7EFFFFFE0000000, %78
  br i1 %143, label %162, label %151, !dx.controlflow.hints !45

; <label>:151                                     ; preds = %0
  %152 = fsub fast float -0.000000e+00, %77
  %153 = fsub fast float -0.000000e+00, %76
  %154 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %153, float %152, float %149)  ; Dot3(ax,ay,az,bx,by,bz)
  %155 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %119, float %120, float %121)  ; Dot3(ax,ay,az,bx,by,bz)
  %156 = fdiv fast float 1.000000e+00, %155
  %157 = fmul fast float %156, %154
  %158 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %153, float %152, float %150)  ; Dot3(ax,ay,az,bx,by,bz)
  %159 = fmul fast float %156, %158
  %160 = call float @dx.op.binary.f32(i32 36, float %157, float %159)  ; FMin(a,b)
  %161 = call float @dx.op.binary.f32(i32 35, float %157, float %159)  ; FMax(a,b)
  br label %195

; <label>:162                                     ; preds = %0
  %163 = extractvalue %dx.types.CBufRet.f32 %144, 0
  %164 = extractvalue %dx.types.CBufRet.f32 %144, 1
  %165 = extractvalue %dx.types.CBufRet.f32 %146, 0
  %166 = extractvalue %dx.types.CBufRet.f32 %146, 1
  %167 = fdiv fast float 1.000000e+00, %119
  %168 = fdiv fast float 1.000000e+00, %120
  %169 = fdiv fast float 1.000000e+00, %121
  %170 = fsub fast float %163, %76
  %171 = fmul fast float %167, %170
  %172 = fadd fast float %170, %165
  %173 = fmul fast float %172, %167
  %174 = call float @dx.op.binary.f32(i32 36, float %171, float %173)  ; FMin(a,b)
  %175 = call float @dx.op.binary.f32(i32 35, float %171, float %173)  ; FMax(a,b)
  %176 = fsub fast float %164, %77
  %177 = fmul fast float %168, %176
  %178 = fadd fast float %176, %166
  %179 = fmul fast float %178, %168
  %180 = call float @dx.op.binary.f32(i32 36, float %177, float %179)  ; FMin(a,b)
  %181 = call float @dx.op.binary.f32(i32 35, float %174, float %180)  ; FMax(a,b)
  %182 = call float @dx.op.binary.f32(i32 35, float %177, float %179)  ; FMax(a,b)
  %183 = call float @dx.op.binary.f32(i32 36, float %175, float %182)  ; FMin(a,b)
  %184 = fmul fast float %169, %150
  %185 = fmul fast float %169, %149
  %186 = call float @dx.op.binary.f32(i32 36, float %184, float %185)  ; FMin(a,b)
  %187 = call float @dx.op.binary.f32(i32 35, float %181, float %186)  ; FMax(a,b)
  %188 = call float @dx.op.binary.f32(i32 35, float %184, float %185)  ; FMax(a,b)
  %189 = call float @dx.op.binary.f32(i32 36, float %183, float %188)  ; FMin(a,b)
  %190 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %187)  ; FMax(a,b)
  %191 = fcmp fast ult float %189, %190
  br i1 %191, label %195, label %192, !dx.controlflow.hints !46

; <label>:192                                     ; preds = %162
  %193 = call float @dx.op.binary.f32(i32 36, float %187, float %189)  ; FMin(a,b)
  %194 = call float @dx.op.binary.f32(i32 35, float %187, float %189)  ; FMax(a,b)
  br label %195

; <label>:195                                     ; preds = %192, %162, %151
  %196 = phi float [ %160, %151 ], [ %193, %192 ], [ 0.000000e+00, %162 ]
  %197 = phi float [ %161, %151 ], [ %194, %192 ], [ 0.000000e+00, %162 ]
  %198 = fcmp fast oeq float %197, 0.000000e+00
  %199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %200 = extractvalue %dx.types.CBufRet.f32 %199, 1
  %201 = fcmp fast olt float %197, %200
  %202 = or i1 %198, %201
  br i1 %202, label %207, label %203, !dx.controlflow.hints !47

; <label>:203                                     ; preds = %195
  %204 = call float @dx.op.binary.f32(i32 35, float %200, float %196)  ; FMax(a,b)
  %205 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %204)  ; FMin(a,b)
  %206 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %197)  ; FMax(a,b)
  br label %207

; <label>:207                                     ; preds = %203, %195
  %208 = phi i32 [ 1, %203 ], [ 0, %195 ]
  %209 = phi float [ %206, %203 ], [ -1.000000e+00, %195 ]
  %210 = phi float [ %205, %203 ], [ 0x47EFFFFFE0000000, %195 ]
  %211 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %212 = extractvalue %dx.types.CBufRet.i32 %211, 3
  %213 = icmp eq i32 %212, 0
  %214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %215 = extractvalue %dx.types.CBufRet.f32 %214, 2
  %216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %217 = extractvalue %dx.types.CBufRet.f32 %216, 2
  %218 = fsub fast float %215, %78
  %219 = fadd fast float %218, %217
  br i1 %213, label %231, label %220, !dx.controlflow.hints !48

; <label>:220                                     ; preds = %207
  %221 = fsub fast float -0.000000e+00, %76
  %222 = fsub fast float -0.000000e+00, %77
  %223 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %221, float %222, float %219)  ; Dot3(ax,ay,az,bx,by,bz)
  %224 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %119, float %120, float %121)  ; Dot3(ax,ay,az,bx,by,bz)
  %225 = fdiv fast float 1.000000e+00, %224
  %226 = fmul fast float %225, %223
  %227 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %221, float %222, float %218)  ; Dot3(ax,ay,az,bx,by,bz)
  %228 = fmul fast float %225, %227
  %229 = call float @dx.op.binary.f32(i32 36, float %226, float %228)  ; FMin(a,b)
  %230 = call float @dx.op.binary.f32(i32 35, float %226, float %228)  ; FMax(a,b)
  br label %264

; <label>:231                                     ; preds = %207
  %232 = fdiv fast float 1.000000e+00, %119
  %233 = fdiv fast float 1.000000e+00, %120
  %234 = fdiv fast float 1.000000e+00, %121
  %235 = extractvalue %dx.types.CBufRet.f32 %214, 0
  %236 = extractvalue %dx.types.CBufRet.f32 %214, 1
  %237 = extractvalue %dx.types.CBufRet.f32 %216, 0
  %238 = extractvalue %dx.types.CBufRet.f32 %216, 1
  %239 = fsub fast float %235, %76
  %240 = fmul fast float %239, %232
  %241 = fadd fast float %239, %237
  %242 = fmul fast float %241, %232
  %243 = call float @dx.op.binary.f32(i32 36, float %240, float %242)  ; FMin(a,b)
  %244 = call float @dx.op.binary.f32(i32 35, float %240, float %242)  ; FMax(a,b)
  %245 = fsub fast float %236, %77
  %246 = fmul fast float %245, %233
  %247 = fadd fast float %245, %238
  %248 = fmul fast float %247, %233
  %249 = call float @dx.op.binary.f32(i32 36, float %246, float %248)  ; FMin(a,b)
  %250 = call float @dx.op.binary.f32(i32 35, float %243, float %249)  ; FMax(a,b)
  %251 = call float @dx.op.binary.f32(i32 35, float %246, float %248)  ; FMax(a,b)
  %252 = call float @dx.op.binary.f32(i32 36, float %244, float %251)  ; FMin(a,b)
  %253 = fmul fast float %218, %234
  %254 = fmul fast float %219, %234
  %255 = call float @dx.op.binary.f32(i32 36, float %253, float %254)  ; FMin(a,b)
  %256 = call float @dx.op.binary.f32(i32 35, float %250, float %255)  ; FMax(a,b)
  %257 = call float @dx.op.binary.f32(i32 35, float %253, float %254)  ; FMax(a,b)
  %258 = call float @dx.op.binary.f32(i32 36, float %252, float %257)  ; FMin(a,b)
  %259 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %256)  ; FMax(a,b)
  %260 = fcmp fast ult float %258, %259
  br i1 %260, label %264, label %261, !dx.controlflow.hints !49

; <label>:261                                     ; preds = %231
  %262 = call float @dx.op.binary.f32(i32 36, float %256, float %258)  ; FMin(a,b)
  %263 = call float @dx.op.binary.f32(i32 35, float %256, float %258)  ; FMax(a,b)
  br label %264

; <label>:264                                     ; preds = %261, %231, %220
  %265 = phi float [ %229, %220 ], [ %262, %261 ], [ 0.000000e+00, %231 ]
  %266 = phi float [ %230, %220 ], [ %263, %261 ], [ 0.000000e+00, %231 ]
  %267 = fcmp fast oeq float %266, 0.000000e+00
  br i1 %267, label %271, label %268, !dx.controlflow.hints !50

; <label>:268                                     ; preds = %264
  %269 = call float @dx.op.binary.f32(i32 36, float %210, float %265)  ; FMin(a,b)
  %270 = call float @dx.op.binary.f32(i32 35, float %209, float %266)  ; FMax(a,b)
  br label %271

; <label>:271                                     ; preds = %268, %264
  %272 = phi i32 [ 1, %268 ], [ 0, %264 ]
  %273 = phi float [ %270, %268 ], [ %209, %264 ]
  %274 = phi float [ %269, %268 ], [ %210, %264 ]
  %275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %276 = extractvalue %dx.types.CBufRet.f32 %275, 3
  %277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %278 = extractvalue %dx.types.CBufRet.f32 %277, 0
  %279 = fsub fast float -0.000000e+00, %76
  %280 = fsub fast float -0.000000e+00, %77
  %281 = fsub fast float %276, %78
  %282 = fadd fast float %281, %278
  %283 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %279, float %280, float %282)  ; Dot3(ax,ay,az,bx,by,bz)
  %284 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %119, float %120, float %121)  ; Dot3(ax,ay,az,bx,by,bz)
  %285 = fdiv fast float 1.000000e+00, %284
  %286 = fmul fast float %285, %283
  %287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %288 = extractvalue %dx.types.CBufRet.f32 %287, 2
  %289 = fsub fast float %288, %78
  %290 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %279, float %280, float %289)  ; Dot3(ax,ay,az,bx,by,bz)
  %291 = fmul fast float %285, %290
  %292 = call float @dx.op.binary.f32(i32 36, float %286, float %291)  ; FMin(a,b)
  %293 = call float @dx.op.binary.f32(i32 35, float %286, float %291)  ; FMax(a,b)
  %294 = call float @dx.op.binary.f32(i32 36, float %274, float %292)  ; FMin(a,b)
  %295 = call float @dx.op.binary.f32(i32 35, float %273, float %293)  ; FMax(a,b)
  %296 = fdiv fast float 1.000000e+00, %119
  %297 = fdiv fast float 1.000000e+00, %120
  %298 = fdiv fast float 1.000000e+00, %121
  %299 = call float @dx.op.binary.f32(i32 36, float %140, float %295)  ; FMin(a,b)
  %300 = call float @dx.op.binary.f32(i32 35, float %117, float %294)  ; FMax(a,b)
  %301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %302 = extractvalue %dx.types.CBufRet.f32 %301, 0
  %303 = fmul fast float %65, 2.000000e+00
  %304 = fadd fast float %303, -1.000000e+00
  %305 = fmul fast float %302, %304
  %306 = fadd fast float %305, %300
  %307 = fcmp fast olt float %306, %299
  %308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %309 = extractvalue %dx.types.CBufRet.f32 %308, 2
  %310 = fcmp fast olt float %309, 1.000000e+00
  %311 = and i1 %307, %310
  br i1 %311, label %312, label %2846

; <label>:312                                     ; preds = %271
  %313 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %314 = extractvalue %dx.types.CBufRet.i32 %313, 1
  %315 = add i32 %314, -1
  %316 = fmul fast float %306, %121
  %317 = fadd fast float %316, %78
  %318 = fmul fast float %306, %120
  %319 = fadd fast float %318, %77
  %320 = fmul fast float %306, %119
  %321 = fadd fast float %320, %76
  br label %322

; <label>:322                                     ; preds = %2818, %312
  %323 = phi float [ %2820, %2818 ], [ undef, %312 ]
  %324 = phi float [ %2821, %2818 ], [ undef, %312 ]
  %325 = phi float [ %2822, %2818 ], [ undef, %312 ]
  %326 = phi float [ %2823, %2818 ], [ undef, %312 ]
  %327 = phi float [ %624, %2818 ], [ undef, %312 ]
  %328 = phi float [ %625, %2818 ], [ undef, %312 ]
  %329 = phi float [ %626, %2818 ], [ undef, %312 ]
  %330 = phi float [ %627, %2818 ], [ undef, %312 ]
  %331 = phi float [ %2824, %2818 ], [ 0.000000e+00, %312 ]
  %332 = phi float [ %2825, %2818 ], [ 1.000000e+00, %312 ]
  %333 = phi float [ %2826, %2818 ], [ 0.000000e+00, %312 ]
  %334 = phi float [ %2827, %2818 ], [ 0.000000e+00, %312 ]
  %335 = phi float [ %2828, %2818 ], [ 0.000000e+00, %312 ]
  %336 = phi float [ %2838, %2818 ], [ %321, %312 ]
  %337 = phi float [ %2839, %2818 ], [ %319, %312 ]
  %338 = phi float [ %2840, %2818 ], [ %317, %312 ]
  %339 = phi float [ %2819, %2818 ], [ %306, %312 ]
  %340 = phi i32 [ %629, %2818 ], [ 10, %312 ]
  %341 = phi i32 [ %521, %2818 ], [ %315, %312 ]
  %342 = phi float [ %2829, %2818 ], [ 0.000000e+00, %312 ]
  %343 = phi float [ %2830, %2818 ], [ 0.000000e+00, %312 ]
  %344 = phi float [ %2831, %2818 ], [ 0.000000e+00, %312 ]
  %345 = phi float [ %2832, %2818 ], [ 0.000000e+00, %312 ]
  %346 = phi float [ %2833, %2818 ], [ 0.000000e+00, %312 ]
  %347 = phi i32 [ %2834, %2818 ], [ 0, %312 ]
  %348 = fsub fast float -0.000000e+00, %337
  %349 = fsub fast float -0.000000e+00, %336
  %350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %351 = extractvalue %dx.types.CBufRet.f32 %350, 0
  %352 = icmp eq i32 %208, 0
  br i1 %352, label %518, label %353, !dx.controlflow.hints !51

; <label>:353                                     ; preds = %322
  %354 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %355 = extractvalue %dx.types.CBufRet.i32 %354, 1
  %356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %357 = extractvalue %dx.types.CBufRet.f32 %356, 1
  %358 = fcmp fast ogt float %357, %339
  br i1 %358, label %359, label %361, !dx.controlflow.hints !52

; <label>:359                                     ; preds = %353
  %360 = fsub fast float %357, %339
  br label %508

; <label>:361                                     ; preds = %353
  %362 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %363 = extractvalue %dx.types.CBufRet.i32 %362, 3
  %364 = icmp eq i32 %363, 0
  %365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %366 = extractvalue %dx.types.CBufRet.f32 %365, 2
  %367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %368 = extractvalue %dx.types.CBufRet.f32 %367, 2
  %369 = fsub fast float %366, %338
  %370 = fadd fast float %369, %368
  %371 = fsub fast float 0xC7EFFFFFE0000000, %338
  br i1 %364, label %379, label %372, !dx.controlflow.hints !45

; <label>:372                                     ; preds = %361
  %373 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %349, float %348, float %370)  ; Dot3(ax,ay,az,bx,by,bz)
  %374 = fmul fast float %285, %373
  %375 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %349, float %348, float %371)  ; Dot3(ax,ay,az,bx,by,bz)
  %376 = fmul fast float %285, %375
  %377 = call float @dx.op.binary.f32(i32 36, float %374, float %376)  ; FMin(a,b)
  %378 = call float @dx.op.binary.f32(i32 35, float %374, float %376)  ; FMax(a,b)
  br label %409

; <label>:379                                     ; preds = %361
  %380 = extractvalue %dx.types.CBufRet.f32 %365, 0
  %381 = extractvalue %dx.types.CBufRet.f32 %365, 1
  %382 = extractvalue %dx.types.CBufRet.f32 %367, 0
  %383 = extractvalue %dx.types.CBufRet.f32 %367, 1
  %384 = fsub fast float %380, %336
  %385 = fmul fast float %296, %384
  %386 = fadd fast float %384, %382
  %387 = fmul fast float %386, %296
  %388 = call float @dx.op.binary.f32(i32 36, float %385, float %387)  ; FMin(a,b)
  %389 = call float @dx.op.binary.f32(i32 35, float %385, float %387)  ; FMax(a,b)
  %390 = fsub fast float %381, %337
  %391 = fmul fast float %297, %390
  %392 = fadd fast float %390, %383
  %393 = fmul fast float %392, %297
  %394 = call float @dx.op.binary.f32(i32 36, float %391, float %393)  ; FMin(a,b)
  %395 = call float @dx.op.binary.f32(i32 35, float %388, float %394)  ; FMax(a,b)
  %396 = call float @dx.op.binary.f32(i32 35, float %391, float %393)  ; FMax(a,b)
  %397 = call float @dx.op.binary.f32(i32 36, float %389, float %396)  ; FMin(a,b)
  %398 = fmul fast float %298, %371
  %399 = fmul fast float %298, %370
  %400 = call float @dx.op.binary.f32(i32 36, float %398, float %399)  ; FMin(a,b)
  %401 = call float @dx.op.binary.f32(i32 35, float %395, float %400)  ; FMax(a,b)
  %402 = call float @dx.op.binary.f32(i32 35, float %398, float %399)  ; FMax(a,b)
  %403 = call float @dx.op.binary.f32(i32 36, float %397, float %402)  ; FMin(a,b)
  %404 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %401)  ; FMax(a,b)
  %405 = fcmp fast ult float %403, %404
  br i1 %405, label %409, label %406, !dx.controlflow.hints !46

; <label>:406                                     ; preds = %379
  %407 = call float @dx.op.binary.f32(i32 36, float %401, float %403)  ; FMin(a,b)
  %408 = call float @dx.op.binary.f32(i32 35, float %401, float %403)  ; FMax(a,b)
  br label %409

; <label>:409                                     ; preds = %406, %379, %372
  %410 = phi float [ %377, %372 ], [ %407, %406 ], [ 0.000000e+00, %379 ]
  %411 = phi float [ %378, %372 ], [ %408, %406 ], [ 0.000000e+00, %379 ]
  %412 = fcmp fast ogt float %410, 0.000000e+00
  br i1 %412, label %508, label %413, !dx.controlflow.hints !53

; <label>:413                                     ; preds = %409
  %414 = fcmp fast ugt float %411, 0.000000e+00
  br i1 %414, label %415, label %508, !dx.controlflow.hints !54

; <label>:415                                     ; preds = %413
  %416 = icmp sgt i32 %341, 0
  br i1 %416, label %417, label %502

; <label>:417                                     ; preds = %415
  br label %418

; <label>:418                                     ; preds = %498, %417
  %419 = phi i32 [ %499, %498 ], [ %341, %417 ]
  %420 = sitofp i32 %419 to float
  %421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %422 = extractvalue %dx.types.CBufRet.f32 %421, 0
  %423 = extractvalue %dx.types.CBufRet.f32 %421, 1
  %424 = fsub fast float %336, %422
  %425 = fsub fast float %337, %423
  %426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %427 = extractvalue %dx.types.CBufRet.f32 %426, 0
  %428 = extractvalue %dx.types.CBufRet.f32 %426, 1
  %429 = fmul fast float %424, %427
  %430 = fmul fast float %425, %428
  %431 = fsub fast float 1.000000e+00, %430
  %432 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %433 = extractvalue %dx.types.CBufRet.i32 %432, 3
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %441, label %435, !dx.controlflow.hints !55

; <label>:435                                     ; preds = %418
  %436 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %25, float %429, float %431, float undef, float undef, i32 0, i32 0, i32 undef, float %420)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %437 = extractvalue %dx.types.ResRet.f32 %436, 0
  %438 = extractvalue %dx.types.ResRet.f32 %436, 1
  %439 = extractvalue %dx.types.ResRet.f32 %436, 2
  %440 = extractvalue %dx.types.ResRet.f32 %436, 3
  br label %447

; <label>:441                                     ; preds = %418
  %442 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %26, float %429, float %431, float undef, float undef, i32 0, i32 0, i32 undef, float %420)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %443 = extractvalue %dx.types.ResRet.f32 %442, 0
  %444 = extractvalue %dx.types.ResRet.f32 %442, 1
  %445 = extractvalue %dx.types.ResRet.f32 %442, 2
  %446 = extractvalue %dx.types.ResRet.f32 %442, 3
  br label %447

; <label>:447                                     ; preds = %441, %435
  %448 = phi float [ %437, %435 ], [ %443, %441 ]
  %449 = phi float [ %438, %435 ], [ %444, %441 ]
  %450 = phi float [ %439, %435 ], [ %445, %441 ]
  %451 = phi float [ %440, %435 ], [ %446, %441 ]
  %452 = extractvalue %dx.types.CBufRet.f32 %426, 3
  %453 = fmul fast float %452, %448
  %454 = extractvalue %dx.types.CBufRet.f32 %421, 2
  %455 = fadd fast float %453, %454
  %456 = fmul fast float %452, %449
  %457 = fadd fast float %456, %454
  %458 = fmul fast float %452, %450
  %459 = fadd fast float %458, %454
  %460 = and i32 %419, 31
  %461 = shl i32 1, %460
  %462 = uitofp i32 %461 to float
  %463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %464 = extractvalue %dx.types.CBufRet.f32 %463, 3
  %465 = fdiv fast float 1.000000e+00, %464
  %466 = fmul fast float %465, %462
  %467 = fmul fast float %466, %121
  %468 = fadd fast float %467, %338
  %469 = fcmp fast oeq float %451, 0.000000e+00
  %470 = fcmp fast ogt float %338, %457
  %471 = fcmp fast ogt float %468, %457
  %472 = and i1 %470, %471
  %473 = or i1 %469, %472
  br i1 %473, label %474, label %478, !dx.controlflow.hints !56

; <label>:474                                     ; preds = %447
  %475 = add nsw i32 %419, 1
  %476 = add nsw i32 %355, -1
  %477 = call i32 @dx.op.binary.i32(i32 38, i32 %475, i32 %476)  ; IMin(a,b)
  br label %508

; <label>:478                                     ; preds = %447
  %479 = fcmp fast olt float %338, %459
  %480 = fcmp fast olt float %468, %459
  %481 = and i1 %479, %480
  br i1 %481, label %482, label %486, !dx.controlflow.hints !57

; <label>:482                                     ; preds = %478
  %483 = add nsw i32 %419, 1
  %484 = add nsw i32 %355, -1
  %485 = call i32 @dx.op.binary.i32(i32 38, i32 %483, i32 %484)  ; IMin(a,b)
  br label %508

; <label>:486                                     ; preds = %478
  %487 = fcmp fast olt float %338, %455
  %488 = fcmp fast olt float %468, %455
  %489 = and i1 %487, %488
  br i1 %489, label %490, label %498, !dx.controlflow.hints !58

; <label>:490                                     ; preds = %486
  %491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %492 = extractvalue %dx.types.CBufRet.f32 %491, 3
  %493 = extractvalue %dx.types.CBufRet.f32 %426, 2
  %494 = fcmp fast une float %492, %493
  br i1 %494, label %495, label %502, !dx.controlflow.hints !59

; <label>:495                                     ; preds = %490
  %496 = fsub fast float %338, %459
  %497 = call float @dx.op.binary.f32(i32 36, float %466, float %496)  ; FMin(a,b)
  br label %502

; <label>:498                                     ; preds = %486
  %499 = add nsw i32 %419, -1
  %500 = icmp sgt i32 %419, 1
  br i1 %500, label %418, label %501

; <label>:501                                     ; preds = %498
  br label %502

; <label>:502                                     ; preds = %501, %495, %490, %415
  %503 = phi float [ %497, %495 ], [ %466, %490 ], [ 0.000000e+00, %415 ], [ 0.000000e+00, %501 ]
  %504 = phi i32 [ %419, %495 ], [ %419, %490 ], [ %341, %415 ], [ %499, %501 ]
  %505 = add nsw i32 %504, 1
  %506 = add nsw i32 %355, -1
  %507 = call i32 @dx.op.binary.i32(i32 38, i32 %505, i32 %506)  ; IMin(a,b)
  br label %508

; <label>:508                                     ; preds = %502, %482, %474, %413, %409, %359
  %509 = phi float [ %360, %359 ], [ %466, %474 ], [ %466, %482 ], [ %503, %502 ], [ 0x47EFFFFFE0000000, %413 ], [ %410, %409 ]
  %510 = phi i32 [ %208, %359 ], [ %208, %474 ], [ %208, %482 ], [ %208, %502 ], [ 0, %413 ], [ %208, %409 ]
  %511 = phi i32 [ %341, %359 ], [ %477, %474 ], [ %485, %482 ], [ %507, %502 ], [ %341, %413 ], [ %341, %409 ]
  %512 = icmp ne i32 %510, 0
  %513 = zext i1 %512 to i32
  %514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %515 = extractvalue %dx.types.CBufRet.f32 %514, 2
  %516 = call float @dx.op.binary.f32(i32 35, float %509, float %515)  ; FMax(a,b)
  %517 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %516)  ; FMin(a,b)
  br label %518

; <label>:518                                     ; preds = %508, %322
  %519 = phi i32 [ %513, %508 ], [ 0, %322 ]
  %520 = phi float [ %517, %508 ], [ 0x47EFFFFFE0000000, %322 ]
  %521 = phi i32 [ %511, %508 ], [ %341, %322 ]
  %522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %523 = extractvalue %dx.types.CBufRet.f32 %522, 0
  %524 = extractvalue %dx.types.CBufRet.f32 %522, 1
  %525 = fsub fast float %336, %523
  %526 = fsub fast float %337, %524
  %527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %528 = extractvalue %dx.types.CBufRet.f32 %527, 2
  %529 = extractvalue %dx.types.CBufRet.f32 %527, 3
  %530 = fmul fast float %525, %528
  %531 = fmul fast float %526, %529
  %532 = call float @dx.op.binary.f32(i32 36, float %530, float %531)  ; FMin(a,b)
  %533 = fcmp fast olt float %532, 0.000000e+00
  %534 = call float @dx.op.binary.f32(i32 35, float %530, float %531)  ; FMax(a,b)
  %535 = fcmp fast ogt float %534, 1.000000e+00
  %536 = or i1 %533, %535
  %537 = extractvalue %dx.types.CBufRet.f32 %522, 2
  %538 = fcmp fast olt float %338, %537
  %539 = or i1 %536, %538
  %540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %541 = extractvalue %dx.types.CBufRet.f32 %540, 3
  %542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %543 = extractvalue %dx.types.CBufRet.f32 %542, 0
  %544 = fadd fast float %543, %541
  %545 = fcmp fast ogt float %338, %544
  %546 = or i1 %539, %545
  br i1 %546, label %547, label %576, !dx.controlflow.hints !60

; <label>:547                                     ; preds = %518
  %548 = extractvalue %dx.types.CBufRet.f32 %527, 0
  %549 = extractvalue %dx.types.CBufRet.f32 %527, 1
  %550 = fsub fast float %523, %336
  %551 = fmul fast float %550, %296
  %552 = fadd fast float %550, %548
  %553 = fmul fast float %552, %296
  %554 = call float @dx.op.binary.f32(i32 36, float %551, float %553)  ; FMin(a,b)
  %555 = call float @dx.op.binary.f32(i32 35, float %551, float %553)  ; FMax(a,b)
  %556 = fsub fast float %524, %337
  %557 = fmul fast float %556, %297
  %558 = fadd fast float %556, %549
  %559 = fmul fast float %558, %297
  %560 = call float @dx.op.binary.f32(i32 36, float %557, float %559)  ; FMin(a,b)
  %561 = call float @dx.op.binary.f32(i32 35, float %554, float %560)  ; FMax(a,b)
  %562 = call float @dx.op.binary.f32(i32 35, float %557, float %559)  ; FMax(a,b)
  %563 = call float @dx.op.binary.f32(i32 36, float %555, float %562)  ; FMin(a,b)
  %564 = fsub fast float %537, %338
  %565 = fmul fast float %564, %298
  %566 = fsub fast float %541, %338
  %567 = fadd fast float %566, %543
  %568 = fmul fast float %567, %298
  %569 = call float @dx.op.binary.f32(i32 36, float %565, float %568)  ; FMin(a,b)
  %570 = call float @dx.op.binary.f32(i32 35, float %561, float %569)  ; FMax(a,b)
  %571 = call float @dx.op.binary.f32(i32 35, float %565, float %568)  ; FMax(a,b)
  %572 = call float @dx.op.binary.f32(i32 36, float %563, float %571)  ; FMin(a,b)
  %573 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %570)  ; FMax(a,b)
  %574 = fcmp fast oge float %572, %573
  %575 = select i1 %574, float %570, float 1.000000e+07
  br label %622

; <label>:576                                     ; preds = %518
  %577 = fsub fast float 1.000000e+00, %531
  %578 = icmp eq i32 %340, 0
  br i1 %578, label %607, label %579

; <label>:579                                     ; preds = %576
  br label %580

; <label>:580                                     ; preds = %603, %579
  %581 = phi i32 [ %604, %603 ], [ %340, %579 ]
  %582 = uitofp i32 %581 to float
  %583 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %27, float %530, float %577, float undef, float undef, i32 0, i32 0, i32 undef, float %582)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %584 = extractvalue %dx.types.ResRet.f32 %583, 0
  %585 = extractvalue %dx.types.ResRet.f32 %583, 1
  %586 = extractvalue %dx.types.ResRet.f32 %583, 2
  %587 = fcmp fast oeq float %584, 0.000000e+00
  %588 = fcmp ule float %338, %586
  %589 = fcmp uge float %338, %585
  %590 = or i1 %589, %588
  %591 = or i1 %587, %590
  br i1 %591, label %592, label %603, !dx.controlflow.hints !61

; <label>:592                                     ; preds = %580
  %593 = extractvalue %dx.types.ResRet.f32 %583, 3
  %594 = extractvalue %dx.types.CBufRet.f32 %527, 0
  %595 = and i32 %581, 31
  %596 = lshr i32 1024, %595
  %597 = uitofp i32 %596 to float
  %598 = fdiv fast float %594, %597
  %599 = add i32 %581, 1
  %600 = uitofp i32 %599 to float
  %601 = call float @dx.op.binary.f32(i32 36, float 1.000000e+01, float %600)  ; FMin(a,b)
  %602 = fptosi float %601 to i32
  br label %622

; <label>:603                                     ; preds = %580
  %604 = add i32 %581, -1
  %605 = icmp eq i32 %604, 0
  br i1 %605, label %606, label %580, !llvm.loop !62

; <label>:606                                     ; preds = %603
  br label %607

; <label>:607                                     ; preds = %606, %576
  %608 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %26, float %530, float %577, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %609 = extractvalue %dx.types.ResRet.f32 %608, 0
  %610 = extractvalue %dx.types.ResRet.f32 %608, 1
  %611 = extractvalue %dx.types.ResRet.f32 %608, 2
  %612 = extractvalue %dx.types.ResRet.f32 %608, 3
  %613 = extractvalue %dx.types.CBufRet.f32 %527, 0
  %614 = fmul fast float %613, 9.765625e-04
  %615 = fcmp fast oeq float %609, 0.000000e+00
  %616 = fcmp ule float %338, %611
  %617 = fcmp uge float %338, %610
  %618 = or i1 %617, %616
  %619 = or i1 %615, %618
  %620 = zext i1 %619 to i32
  %621 = xor i32 %620, 1
  br label %622

; <label>:622                                     ; preds = %607, %592, %547
  %623 = phi float [ %575, %547 ], [ %598, %592 ], [ %614, %607 ]
  %624 = phi float [ %327, %547 ], [ %584, %592 ], [ %609, %607 ]
  %625 = phi float [ %328, %547 ], [ %585, %592 ], [ %610, %607 ]
  %626 = phi float [ %329, %547 ], [ %586, %592 ], [ %611, %607 ]
  %627 = phi float [ %330, %547 ], [ %593, %592 ], [ %612, %607 ]
  %628 = phi i32 [ 0, %547 ], [ 0, %592 ], [ %621, %607 ]
  %629 = phi i32 [ 10, %547 ], [ %602, %592 ], [ 1, %607 ]
  %630 = icmp eq i32 %628, 0
  %631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %632 = extractvalue %dx.types.CBufRet.f32 %631, 2
  %633 = call float @dx.op.binary.f32(i32 35, float %623, float %632)  ; FMax(a,b)
  %634 = call float @dx.op.binary.f32(i32 36, float %520, float %633)  ; FMin(a,b)
  %635 = icmp eq i32 %272, 0
  br i1 %635, label %691, label %636, !dx.controlflow.hints !64

; <label>:636                                     ; preds = %622
  %637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %638 = extractvalue %dx.types.CBufRet.f32 %637, 0
  %639 = extractvalue %dx.types.CBufRet.f32 %637, 1
  %640 = extractvalue %dx.types.CBufRet.f32 %637, 2
  %641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %642 = extractvalue %dx.types.CBufRet.f32 %641, 0
  %643 = extractvalue %dx.types.CBufRet.f32 %641, 1
  %644 = extractvalue %dx.types.CBufRet.f32 %641, 2
  %645 = fsub fast float %336, %642
  %646 = fsub fast float %337, %643
  %647 = fsub fast float %338, %644
  %648 = fmul fast float %645, %638
  %649 = fmul fast float %646, %639
  %650 = fmul fast float %647, %640
  %651 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %652 = extractvalue %dx.types.CBufRet.i32 %651, 3
  %653 = icmp eq i32 %652, 0
  br i1 %653, label %657, label %654, !dx.controlflow.hints !65

; <label>:654                                     ; preds = %636
  %655 = call float @dx.op.unary.f32(i32 22, float %648)  ; Frc(value)
  %656 = call float @dx.op.unary.f32(i32 22, float %649)  ; Frc(value)
  br label %657

; <label>:657                                     ; preds = %654, %636
  %658 = phi float [ %655, %654 ], [ %648, %636 ]
  %659 = phi float [ %656, %654 ], [ %649, %636 ]
  %660 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %24, float %658, float %659, float %650, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %661 = extractvalue %dx.types.ResRet.f32 %660, 0
  %662 = fmul fast float %661, 2.000000e+00
  %663 = fadd fast float %662, -1.000000e+00
  %664 = extractvalue %dx.types.CBufRet.f32 %637, 3
  %665 = fmul fast float %663, %664
  %666 = fcmp fast olt float %665, 0.000000e+00
  %667 = fcmp fast oge float %650, 0.000000e+00
  %668 = fcmp fast ole float %650, 1.000000e+00
  br i1 %653, label %671, label %669, !dx.controlflow.hints !66

; <label>:669                                     ; preds = %657
  %670 = and i1 %667, %668
  br label %681

; <label>:671                                     ; preds = %657
  %672 = fcmp fast oge float %648, 0.000000e+00
  %673 = fcmp fast oge float %649, 0.000000e+00
  %674 = and i1 %672, %673
  %675 = and i1 %667, %674
  %676 = fcmp fast ole float %648, 1.000000e+00
  %677 = fcmp fast ole float %649, 1.000000e+00
  %678 = and i1 %676, %677
  %679 = and i1 %668, %678
  %680 = and i1 %675, %679
  br label %681

; <label>:681                                     ; preds = %671, %669
  %682 = phi i1 [ %670, %669 ], [ %680, %671 ]
  %683 = and i1 %666, %682
  %684 = call float @dx.op.unary.f32(i32 6, float %665)  ; FAbs(value)
  %685 = extractvalue %dx.types.CBufRet.f32 %631, 1
  %686 = extractvalue %dx.types.CBufRet.f32 %631, 0
  %687 = call float @dx.op.binary.f32(i32 35, float %684, float %686)  ; FMax(a,b)
  %688 = select i1 %683, float %685, float %687
  %689 = zext i1 %683 to i32
  %690 = call float @dx.op.binary.f32(i32 36, float %634, float %688)  ; FMin(a,b)
  br label %691

; <label>:691                                     ; preds = %681, %622
  %692 = phi i32 [ %689, %681 ], [ 0, %622 ]
  %693 = phi float [ %690, %681 ], [ %634, %622 ]
  %694 = extractvalue %dx.types.CBufRet.f32 %350, 2
  %695 = fmul fast float %694, %339
  %696 = call float @dx.op.unary.f32(i32 23, float %695)  ; Log(value)
  %697 = fmul fast float %696, 0x3FE62E4300000000
  %698 = call float @dx.op.binary.f32(i32 35, float %697, float 1.000000e+00)  ; FMax(a,b)
  %699 = fmul fast float %698, 0x47EFFFFFE0000000
  %700 = call float @dx.op.binary.f32(i32 36, float %699, float %693)  ; FMin(a,b)
  %701 = call float @dx.op.binary.f32(i32 35, float %700, float %351)  ; FMax(a,b)
  %702 = fsub fast float %299, %339
  %703 = fadd fast float %702, 0x3F1A36E2E0000000
  %704 = call float @dx.op.binary.f32(i32 36, float %703, float %701)  ; FMin(a,b)
  %705 = icmp eq i32 %519, 0
  br i1 %705, label %811, label %706, !dx.controlflow.hints !67

; <label>:706                                     ; preds = %691
  %707 = fcmp fast olt float %703, %701
  %708 = fmul fast float %121, %64
  %709 = fmul fast float %708, %704
  %710 = fadd fast float %709, %338
  %711 = fmul fast float %121, %65
  %712 = fmul fast float %711, %704
  %713 = fadd fast float %712, %338
  %714 = fmul fast float %121, %66
  %715 = fmul fast float %714, %704
  %716 = fadd fast float %715, %338
  br i1 %707, label %717, label %722, !dx.controlflow.hints !68

; <label>:717                                     ; preds = %706
  %718 = fmul fast float %704, %119
  %719 = fmul fast float %704, %120
  %720 = fadd fast float %718, %336
  %721 = fadd fast float %719, %337
  br label %722

; <label>:722                                     ; preds = %717, %706
  %723 = phi float [ %720, %717 ], [ %336, %706 ]
  %724 = phi float [ %721, %717 ], [ %337, %706 ]
  %725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %726 = extractvalue %dx.types.CBufRet.f32 %725, 0
  %727 = extractvalue %dx.types.CBufRet.f32 %725, 1
  %728 = fsub fast float %723, %726
  %729 = fsub fast float %724, %727
  %730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %731 = extractvalue %dx.types.CBufRet.f32 %730, 0
  %732 = extractvalue %dx.types.CBufRet.f32 %730, 1
  %733 = fmul fast float %728, %731
  %734 = fmul fast float %729, %732
  %735 = fsub fast float 1.000000e+00, %734
  %736 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %737 = extractvalue %dx.types.CBufRet.i32 %736, 3
  %738 = icmp eq i32 %737, 0
  br i1 %738, label %745, label %739, !dx.controlflow.hints !55

; <label>:739                                     ; preds = %722
  %740 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %25, float %733, float %735, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %741 = extractvalue %dx.types.ResRet.f32 %740, 0
  %742 = extractvalue %dx.types.ResRet.f32 %740, 1
  %743 = extractvalue %dx.types.ResRet.f32 %740, 2
  %744 = extractvalue %dx.types.ResRet.f32 %740, 3
  br label %751

; <label>:745                                     ; preds = %722
  %746 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %26, float %733, float %735, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %747 = extractvalue %dx.types.ResRet.f32 %746, 0
  %748 = extractvalue %dx.types.ResRet.f32 %746, 1
  %749 = extractvalue %dx.types.ResRet.f32 %746, 2
  %750 = extractvalue %dx.types.ResRet.f32 %746, 3
  br label %751

; <label>:751                                     ; preds = %745, %739
  %752 = phi float [ %741, %739 ], [ %747, %745 ]
  %753 = phi float [ %742, %739 ], [ %748, %745 ]
  %754 = phi float [ %743, %739 ], [ %749, %745 ]
  %755 = phi float [ %744, %739 ], [ %750, %745 ]
  %756 = extractvalue %dx.types.CBufRet.f32 %730, 3
  %757 = fmul fast float %756, %753
  %758 = fmul fast float %757, %752
  %759 = fsub fast float %757, %758
  %760 = fcmp fast ole float %759, 0.000000e+00
  %761 = extractvalue %dx.types.CBufRet.f32 %725, 2
  %762 = fadd fast float %758, %761
  %763 = fmul fast float %756, %754
  %764 = fadd fast float %763, %761
  %765 = fdiv fast float 1.000000e+00, %759
  %766 = select i1 %760, float 1.000000e+06, float %765
  %767 = fsub fast float %710, %762
  %768 = fmul fast float %766, %767
  %769 = call float @dx.op.unary.f32(i32 7, float %768)  ; Saturate(value)
  %770 = extractvalue %dx.types.CBufRet.f32 %730, 2
  %771 = fmul fast float %770, %769
  %772 = fsub fast float %770, %771
  %773 = fcmp fast olt float %710, %764
  %774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %775 = extractvalue %dx.types.CBufRet.f32 %774, 3
  %776 = select i1 %773, float %775, float 1.000000e+00
  %777 = fmul fast float %772, %776
  %778 = fsub fast float %713, %762
  %779 = fmul fast float %766, %778
  %780 = call float @dx.op.unary.f32(i32 7, float %779)  ; Saturate(value)
  %781 = fmul fast float %770, %780
  %782 = fsub fast float %770, %781
  %783 = fcmp fast olt float %713, %764
  %784 = select i1 %783, float %775, float 1.000000e+00
  %785 = fmul fast float %782, %784
  %786 = fadd fast float %785, %777
  %787 = fsub fast float %716, %762
  %788 = fmul fast float %766, %787
  %789 = call float @dx.op.unary.f32(i32 7, float %788)  ; Saturate(value)
  %790 = fmul fast float %770, %789
  %791 = fsub fast float %770, %790
  %792 = fcmp fast olt float %716, %764
  %793 = select i1 %792, float %775, float 1.000000e+00
  %794 = fmul fast float %791, %793
  %795 = fadd fast float %786, %794
  %796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %797 = extractvalue %dx.types.CBufRet.f32 %796, 2
  %798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %799 = extractvalue %dx.types.CBufRet.f32 %798, 0
  %800 = extractvalue %dx.types.CBufRet.f32 %798, 1
  %801 = extractvalue %dx.types.CBufRet.f32 %798, 2
  %802 = fmul fast float %704, 0x3FD5555560000000
  %803 = fmul fast float %802, %755
  %804 = fmul fast float %803, %797
  %805 = fmul fast float %804, %795
  %806 = extractvalue %dx.types.CBufRet.f32 %774, 0
  %807 = fmul fast float %805, %799
  %808 = fmul fast float %805, %800
  %809 = fmul fast float %805, %801
  %810 = fmul fast float %805, %806
  br label %811

; <label>:811                                     ; preds = %751, %691
  %812 = phi float [ %805, %751 ], [ 0.000000e+00, %691 ]
  %813 = phi float [ %810, %751 ], [ 0.000000e+00, %691 ]
  %814 = phi float [ %807, %751 ], [ 0.000000e+00, %691 ]
  %815 = phi float [ %808, %751 ], [ 0.000000e+00, %691 ]
  %816 = phi float [ %809, %751 ], [ 0.000000e+00, %691 ]
  %817 = icmp eq i32 %692, 0
  br i1 %817, label %1012, label %818, !dx.controlflow.hints !69

; <label>:818                                     ; preds = %811
  %819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %820 = extractvalue %dx.types.CBufRet.f32 %819, 3
  %821 = fmul fast float %820, %339
  %822 = fcmp fast oeq float %821, 0.000000e+00
  br i1 %822, label %837, label %823, !dx.controlflow.hints !70

; <label>:823                                     ; preds = %818
  %824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %825 = extractvalue %dx.types.CBufRet.f32 %824, 3
  %826 = fmul fast float %825, %821
  %827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
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
  %841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %842 = extractvalue %dx.types.CBufRet.f32 %841, 0
  %843 = extractvalue %dx.types.CBufRet.f32 %841, 1
  %844 = extractvalue %dx.types.CBufRet.f32 %841, 2
  %845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %846 = extractvalue %dx.types.CBufRet.f32 %845, 0
  %847 = extractvalue %dx.types.CBufRet.f32 %845, 1
  %848 = extractvalue %dx.types.CBufRet.f32 %845, 2
  %849 = fsub fast float %336, %846
  %850 = fsub fast float %337, %847
  %851 = fsub fast float %338, %848
  %852 = fmul fast float %849, %842
  %853 = fmul fast float %850, %843
  %854 = fmul fast float %851, %844
  %855 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
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
  %870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %871 = extractvalue %dx.types.CBufRet.f32 %870, 0
  %872 = extractvalue %dx.types.CBufRet.f32 %870, 1
  %873 = fmul fast float %871, %868
  %874 = fmul fast float %872, %869
  %875 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %25, float %873, float %874, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
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
  %908 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %26, float %904, float %854, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %909 = extractvalue %dx.types.ResRet.f32 %908, 0
  %910 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %26, float %905, float %854, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %911 = extractvalue %dx.types.ResRet.f32 %910, 0
  %912 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %26, float %906, float %854, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %913 = extractvalue %dx.types.ResRet.f32 %912, 0
  %914 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %26, float %907, float %854, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
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
  br i1 %925, label %926, label %994, !dx.controlflow.hints !71

; <label>:926                                     ; preds = %837
  %927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %928 = extractvalue %dx.types.CBufRet.f32 %927, 0
  %929 = extractvalue %dx.types.CBufRet.f32 %927, 1
  %930 = extractvalue %dx.types.CBufRet.f32 %927, 2
  %931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
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
  %943 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %23, float %940, float %941, float %942, float undef, i32 0, i32 0, i32 0, float %838)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %944 = extractvalue %dx.types.ResRet.f32 %943, 0
  %945 = fmul fast float %937, %929
  %946 = fmul fast float %938, %929
  %947 = fmul fast float %939, %929
  %948 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %23, float %945, float %946, float %947, float undef, i32 0, i32 0, i32 0, float %839)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %949 = extractvalue %dx.types.ResRet.f32 %948, 1
  %950 = fmul fast float %937, %930
  %951 = fmul fast float %938, %930
  %952 = fmul fast float %939, %930
  %953 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %23, float %950, float %951, float %952, float undef, i32 0, i32 0, i32 0, float %840)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %954 = extractvalue %dx.types.ResRet.f32 %953, 2
  %955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
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
  %966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
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
  %983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %984 = extractvalue %dx.types.CBufRet.f32 %983, 2
  %985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
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
  %996 = fmul fast float %995, %704
  %997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %998 = extractvalue %dx.types.CBufRet.f32 %997, 0
  %999 = extractvalue %dx.types.CBufRet.f32 %997, 1
  %1000 = extractvalue %dx.types.CBufRet.f32 %997, 2
  %1001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %1002 = extractvalue %dx.types.CBufRet.f32 %1001, 1
  %1003 = fmul fast float %998, %996
  %1004 = fmul fast float %999, %996
  %1005 = fmul fast float %1000, %996
  %1006 = fadd fast float %1003, %814
  %1007 = fadd fast float %1004, %815
  %1008 = fadd fast float %1005, %816
  %1009 = fmul fast float %1002, %996
  %1010 = fadd fast float %1009, %813
  %1011 = fadd fast float %996, %812
  br label %1012

; <label>:1012                                    ; preds = %994, %811
  %1013 = phi float [ %1011, %994 ], [ %812, %811 ]
  %1014 = phi float [ %1010, %994 ], [ %813, %811 ]
  %1015 = phi float [ %1006, %994 ], [ %814, %811 ]
  %1016 = phi float [ %1007, %994 ], [ %815, %811 ]
  %1017 = phi float [ %1008, %994 ], [ %816, %811 ]
  br i1 %630, label %1160, label %1018, !dx.controlflow.hints !72

; <label>:1018                                    ; preds = %1012
  %1019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 411)  ; CBufferLoadLegacy(handle,regIndex)
  %1020 = extractvalue %dx.types.CBufRet.f32 %1019, 0
  %1021 = extractvalue %dx.types.CBufRet.f32 %1019, 1
  %1022 = extractvalue %dx.types.CBufRet.f32 %1019, 2
  %1023 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1024 = extractvalue %dx.types.CBufRet.i32 %1023, 0
  %1025 = icmp ne i32 %1024, 0
  %1026 = zext i1 %1025 to i32
  %1027 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1028 = extractvalue %dx.types.CBufRet.i32 %1027, 0
  %1029 = icmp eq i32 %1028, 0
  br i1 %1029, label %1063, label %1030

; <label>:1030                                    ; preds = %1018
  br label %1031

; <label>:1031                                    ; preds = %1058, %1030
  %1032 = phi i32 [ %1059, %1058 ], [ 0, %1030 ]
  %1033 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1032, i32 0)  ; BufferLoad(srv,index,wot)
  %1034 = extractvalue %dx.types.ResRet.f32 %1033, 0
  %1035 = extractvalue %dx.types.ResRet.f32 %1033, 1
  %1036 = extractvalue %dx.types.ResRet.f32 %1033, 2
  %1037 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1032, i32 16)  ; BufferLoad(srv,index,wot)
  %1038 = extractvalue %dx.types.ResRet.f32 %1037, 0
  %1039 = extractvalue %dx.types.ResRet.f32 %1037, 1
  %1040 = extractvalue %dx.types.ResRet.f32 %1037, 2
  %1041 = fsub fast float %1034, %1038
  %1042 = fsub fast float %1035, %1039
  %1043 = fsub fast float %1036, %1040
  %1044 = fadd fast float %1038, %1034
  %1045 = fadd fast float %1039, %1035
  %1046 = fadd fast float %1040, %1036
  %1047 = fcmp fast olt float %336, %1041
  %1048 = fcmp fast olt float %337, %1042
  %1049 = fcmp fast olt float %338, %1043
  %1050 = or i1 %1047, %1048
  %1051 = or i1 %1049, %1050
  %1052 = fcmp fast ogt float %336, %1044
  %1053 = fcmp fast ogt float %337, %1045
  %1054 = fcmp fast ogt float %338, %1046
  %1055 = or i1 %1052, %1053
  %1056 = or i1 %1054, %1055
  %1057 = or i1 %1051, %1056
  br i1 %1057, label %1058, label %1061, !dx.controlflow.hints !73

; <label>:1058                                    ; preds = %1031
  %1059 = add nuw i32 %1032, 1
  %1060 = icmp ult i32 %1059, %1028
  br i1 %1060, label %1031, label %1061

; <label>:1061                                    ; preds = %1058, %1031
  %1062 = phi i32 [ 255, %1058 ], [ %1032, %1031 ]
  br label %1063

; <label>:1063                                    ; preds = %1061, %1018
  %1064 = phi i32 [ 255, %1018 ], [ %1062, %1061 ]
  %1065 = icmp eq i32 %1064, 255
  br i1 %1065, label %1075, label %1066, !dx.controlflow.hints !74

; <label>:1066                                    ; preds = %1063
  %1067 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1064, i32 32)  ; BufferLoad(srv,index,wot)
  %1068 = extractvalue %dx.types.ResRet.f32 %1067, 0
  %1069 = extractvalue %dx.types.ResRet.f32 %1067, 1
  %1070 = extractvalue %dx.types.ResRet.f32 %1067, 2
  %1071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1064, i32 156)  ; BufferLoad(srv,index,wot)
  %1072 = extractvalue %dx.types.ResRet.i32 %1071, 0
  %1073 = icmp ne i32 %1072, 0
  %1074 = zext i1 %1073 to i32
  br label %1075

; <label>:1075                                    ; preds = %1066, %1063
  %1076 = phi float [ %1068, %1066 ], [ %1020, %1063 ]
  %1077 = phi float [ %1069, %1066 ], [ %1021, %1063 ]
  %1078 = phi float [ %1070, %1066 ], [ %1022, %1063 ]
  %1079 = phi i32 [ %1074, %1066 ], [ %1026, %1063 ]
  %1080 = icmp eq i32 %1079, 0
  br i1 %1080, label %1081, label %1150, !dx.controlflow.hints !75

; <label>:1081                                    ; preds = %1075
  %1082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1083 = extractvalue %dx.types.CBufRet.f32 %1082, 3
  %1084 = extractvalue %dx.types.CBufRet.f32 %540, 0
  %1085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1086 = extractvalue %dx.types.CBufRet.f32 %1085, 2
  %1087 = extractvalue %dx.types.CBufRet.f32 %1085, 3
  br i1 %1065, label %1098, label %1088, !dx.controlflow.hints !76

; <label>:1088                                    ; preds = %1081
  %1089 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1064, i32 60)  ; BufferLoad(srv,index,wot)
  %1090 = extractvalue %dx.types.ResRet.f32 %1089, 0
  %1091 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1064, i32 64)  ; BufferLoad(srv,index,wot)
  %1092 = extractvalue %dx.types.ResRet.f32 %1091, 0
  %1093 = extractvalue %dx.types.ResRet.f32 %1091, 1
  %1094 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1064, i32 72)  ; BufferLoad(srv,index,wot)
  %1095 = extractvalue %dx.types.ResRet.f32 %1094, 0
  %1096 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1064, i32 96)  ; BufferLoad(srv,index,wot)
  %1097 = extractvalue %dx.types.ResRet.f32 %1096, 0
  br label %1098

; <label>:1098                                    ; preds = %1088, %1081
  %1099 = phi float [ %1090, %1088 ], [ %543, %1081 ]
  %1100 = phi float [ %1095, %1088 ], [ %541, %1081 ]
  %1101 = phi float [ %1097, %1088 ], [ %1084, %1081 ]
  %1102 = phi float [ %1092, %1088 ], [ %1086, %1081 ]
  %1103 = phi float [ %1093, %1088 ], [ %1087, %1081 ]
  %1104 = call float @dx.op.binary.f32(i32 35, float %624, float 0.000000e+00)  ; FMax(a,b)
  %1105 = call float @dx.op.binary.f32(i32 36, float %1104, float 1.000000e+00)  ; FMin(a,b)
  %1106 = call float @dx.op.unary.f32(i32 24, float %1105)  ; Sqrt(value)
  %1107 = call float @dx.op.binary.f32(i32 35, float %627, float 0x3F847AE140000000)  ; FMax(a,b)
  %1108 = fsub fast float %625, %338
  %1109 = fsub fast float %338, %626
  %1110 = call float @dx.op.binary.f32(i32 36, float %1109, float %1108)  ; FMin(a,b)
  %1111 = fdiv fast float %1110, %1107
  %1112 = call float @dx.op.unary.f32(i32 7, float %1111)  ; Saturate(value)
  %1113 = fsub fast float %338, %1100
  %1114 = fdiv fast float %1113, %1099
  %1115 = call float @dx.op.unary.f32(i32 7, float %1114)  ; Saturate(value)
  %1116 = fsub fast float 1.000000e+00, %1115
  %1117 = fmul float %1112, %1116
  %1118 = fmul float %1117, %1117
  %1119 = fmul fast float %1106, %1083
  %1120 = fmul fast float %1119, %1118
  %1121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1122 = extractvalue %dx.types.CBufRet.f32 %1121, 2
  %1123 = extractvalue %dx.types.CBufRet.f32 %1121, 1
  %1124 = fsub fast float %1120, %1123
  %1125 = fsub fast float %1122, %1123
  %1126 = fdiv fast float %1124, %1125
  %1127 = call float @dx.op.unary.f32(i32 7, float %1126)  ; Saturate(value)
  %1128 = fmul fast float %1127, %1101
  %1129 = fcmp fast ogt float %1103, 0.000000e+00
  br i1 %1129, label %1130, label %1150, !dx.controlflow.hints !77

; <label>:1130                                    ; preds = %1098
  %1131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1132 = extractvalue %dx.types.CBufRet.f32 %1131, 0
  %1133 = extractvalue %dx.types.CBufRet.f32 %1131, 1
  %1134 = extractvalue %dx.types.CBufRet.f32 %1131, 2
  %1135 = fsub fast float %336, %1132
  %1136 = fsub fast float %337, %1133
  %1137 = fsub fast float %338, %1134
  %1138 = fmul fast float %1135, %1135
  %1139 = fmul fast float %1136, %1136
  %1140 = fadd fast float %1138, %1139
  %1141 = fmul fast float %1137, %1137
  %1142 = fadd fast float %1140, %1141
  %1143 = call float @dx.op.unary.f32(i32 24, float %1142)  ; Sqrt(value)
  %1144 = fsub fast float %1143, %1102
  %1145 = fsub fast float %1103, %1102
  %1146 = fdiv fast float %1144, %1145
  %1147 = call float @dx.op.unary.f32(i32 7, float %1146)  ; Saturate(value)
  %1148 = fmul fast float %1147, %1147
  %1149 = fmul fast float %1148, %1128
  br label %1150

; <label>:1150                                    ; preds = %1130, %1098, %1075
  %1151 = phi float [ 0.000000e+00, %1075 ], [ %1149, %1130 ], [ %1128, %1098 ]
  %1152 = fmul fast float %1151, %704
  %1153 = fmul fast float %1152, %1076
  %1154 = fmul fast float %1152, %1077
  %1155 = fmul fast float %1152, %1078
  %1156 = fadd fast float %1153, %1015
  %1157 = fadd fast float %1154, %1016
  %1158 = fadd fast float %1155, %1017
  %1159 = fadd fast float %1152, %1013
  br label %1160

; <label>:1160                                    ; preds = %1150, %1012
  %1161 = phi float [ %1159, %1150 ], [ %1013, %1012 ]
  %1162 = phi float [ %1156, %1150 ], [ %1015, %1012 ]
  %1163 = phi float [ %1157, %1150 ], [ %1016, %1012 ]
  %1164 = phi float [ %1158, %1150 ], [ %1017, %1012 ]
  %1165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1166 = extractvalue %dx.types.CBufRet.f32 %1165, 1
  %1167 = fcmp fast ogt float %1161, %1166
  br i1 %1167, label %1168, label %1174, !dx.controlflow.hints !78

; <label>:1168                                    ; preds = %1160
  %1169 = fdiv fast float 1.000000e+00, %1161
  %1170 = fmul fast float %1169, %1162
  %1171 = fmul fast float %1169, %1163
  %1172 = fmul fast float %1169, %1164
  %1173 = fmul fast float %1169, %1014
  br label %1174

; <label>:1174                                    ; preds = %1168, %1160
  %1175 = phi float [ %1173, %1168 ], [ %1014, %1160 ]
  %1176 = phi float [ %1170, %1168 ], [ %1162, %1160 ]
  %1177 = phi float [ %1171, %1168 ], [ %1163, %1160 ]
  %1178 = phi float [ %1172, %1168 ], [ %1164, %1160 ]
  br i1 %1167, label %1181, label %1179, !dx.controlflow.hints !79

; <label>:1179                                    ; preds = %1174
  %1180 = fadd fast float %704, %339
  br label %2818

; <label>:1181                                    ; preds = %1174
  %1182 = fmul fast float %1161, 0xBFF7154760000000
  %1183 = call float @dx.op.unary.f32(i32 21, float %1182)  ; Exp(value)
  %1184 = call float @dx.op.unary.f32(i32 7, float %1183)  ; Saturate(value)
  %1185 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %1186 = extractvalue %dx.types.CBufRet.i32 %1185, 0
  %1187 = icmp eq i32 %1186, 1
  br i1 %1187, label %1188, label %1223, !dx.controlflow.hints !80

; <label>:1188                                    ; preds = %1181
  %1189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1190 = extractvalue %dx.types.CBufRet.f32 %1189, 0
  %1191 = extractvalue %dx.types.CBufRet.f32 %1189, 1
  %1192 = fsub fast float %336, %1190
  %1193 = fsub fast float %337, %1191
  %1194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1195 = extractvalue %dx.types.CBufRet.f32 %1194, 0
  %1196 = extractvalue %dx.types.CBufRet.f32 %1194, 1
  %1197 = fmul fast float %1192, %1195
  %1198 = fmul fast float %1193, %1196
  %1199 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %26, float %1197, float %1198, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1200 = extractvalue %dx.types.ResRet.f32 %1199, 0
  %1201 = fcmp fast ogt float %1200, 0.000000e+00
  %1202 = extractvalue %dx.types.CBufRet.i32 %1185, 3
  %1203 = icmp ne i32 %1202, 0
  %1204 = and i1 %1201, %1203
  br i1 %1204, label %1205, label %1223, !dx.controlflow.hints !81

; <label>:1205                                    ; preds = %1188
  %1206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1207 = extractvalue %dx.types.CBufRet.f32 %1206, 0
  %1208 = extractvalue %dx.types.CBufRet.f32 %1206, 1
  %1209 = fsub fast float %336, %1207
  %1210 = fsub fast float %337, %1208
  %1211 = fmul fast float %1209, %1209
  %1212 = fmul fast float %1210, %1210
  %1213 = fadd fast float %1211, %1212
  %1214 = uitofp i32 %1202 to float
  %1215 = fmul fast float %1214, %1214
  %1216 = fcmp fast ogt float %1213, %1215
  br i1 %1216, label %1223, label %1217, !dx.controlflow.hints !82

; <label>:1217                                    ; preds = %1205
  %1218 = call float @dx.op.unary.f32(i32 24, float %1213)  ; Sqrt(value)
  %1219 = fsub fast float %1214, %1218
  %1220 = fmul fast float %1219, 0x3F75555560000000
  %1221 = call float @dx.op.unary.f32(i32 7, float %1220)  ; Saturate(value)
  %1222 = call float @dx.op.binary.f32(i32 36, float %1221, float %1200)  ; FMin(a,b)
  br label %1223

; <label>:1223                                    ; preds = %1217, %1205, %1188, %1181
  %1224 = phi float [ 1.000000e+00, %1181 ], [ %1222, %1217 ], [ %1200, %1188 ], [ 0.000000e+00, %1205 ]
  %1225 = fcmp fast ogt float %1224, 0.000000e+00
  br i1 %1225, label %1226, label %1299, !dx.controlflow.hints !83

; <label>:1226                                    ; preds = %1223
  %1227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %1228 = extractvalue %dx.types.ResRet.i32 %1227, 0
  %1229 = extractvalue %dx.types.ResRet.i32 %1227, 1
  %1230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %1231 = extractvalue %dx.types.ResRet.i32 %1230, 0
  %1232 = extractvalue %dx.types.ResRet.i32 %1230, 1
  %1233 = extractvalue %dx.types.ResRet.i32 %1230, 2
  %1234 = extractvalue %dx.types.ResRet.i32 %1230, 3
  %1235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %1236 = extractvalue %dx.types.ResRet.i32 %1235, 0
  %1237 = extractvalue %dx.types.ResRet.i32 %1235, 1
  %1238 = extractvalue %dx.types.ResRet.i32 %1235, 2
  %1239 = extractvalue %dx.types.ResRet.i32 %1235, 3
  %1240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %1241 = extractvalue %dx.types.ResRet.i32 %1240, 0
  %1242 = extractvalue %dx.types.ResRet.i32 %1240, 1
  %1243 = extractvalue %dx.types.ResRet.i32 %1240, 2
  %1244 = extractvalue %dx.types.ResRet.i32 %1240, 3
  %1245 = and i32 %1241, 65535
  %1246 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1245)  ; LegacyF16ToF32(value)
  %1247 = lshr i32 %1241, 16
  %1248 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1247)  ; LegacyF16ToF32(value)
  %1249 = and i32 %1242, 65535
  %1250 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1249)  ; LegacyF16ToF32(value)
  %1251 = lshr i32 %1242, 16
  %1252 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1251)  ; LegacyF16ToF32(value)
  %1253 = and i32 %1243, 65535
  %1254 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1253)  ; LegacyF16ToF32(value)
  %1255 = lshr i32 %1243, 16
  %1256 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1255)  ; LegacyF16ToF32(value)
  %1257 = and i32 %1244, 65535
  %1258 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1257)  ; LegacyF16ToF32(value)
  %1259 = lshr i32 %1244, 16
  %1260 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1259)  ; LegacyF16ToF32(value)
  %1261 = and i32 %1236, 65535
  %1262 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1261)  ; LegacyF16ToF32(value)
  %1263 = lshr i32 %1236, 16
  %1264 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1263)  ; LegacyF16ToF32(value)
  %1265 = and i32 %1237, 65535
  %1266 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1265)  ; LegacyF16ToF32(value)
  %1267 = lshr i32 %1237, 16
  %1268 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1267)  ; LegacyF16ToF32(value)
  %1269 = and i32 %1238, 65535
  %1270 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1269)  ; LegacyF16ToF32(value)
  %1271 = lshr i32 %1238, 16
  %1272 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1271)  ; LegacyF16ToF32(value)
  %1273 = and i32 %1239, 65535
  %1274 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1273)  ; LegacyF16ToF32(value)
  %1275 = lshr i32 %1239, 16
  %1276 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1275)  ; LegacyF16ToF32(value)
  %1277 = and i32 %1231, 65535
  %1278 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1277)  ; LegacyF16ToF32(value)
  %1279 = lshr i32 %1231, 16
  %1280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1279)  ; LegacyF16ToF32(value)
  %1281 = and i32 %1232, 65535
  %1282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1281)  ; LegacyF16ToF32(value)
  %1283 = lshr i32 %1232, 16
  %1284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1283)  ; LegacyF16ToF32(value)
  %1285 = and i32 %1233, 65535
  %1286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1285)  ; LegacyF16ToF32(value)
  %1287 = lshr i32 %1233, 16
  %1288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1287)  ; LegacyF16ToF32(value)
  %1289 = and i32 %1234, 65535
  %1290 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1289)  ; LegacyF16ToF32(value)
  %1291 = lshr i32 %1234, 16
  %1292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1291)  ; LegacyF16ToF32(value)
  %1293 = and i32 %1228, 65535
  %1294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1293)  ; LegacyF16ToF32(value)
  %1295 = lshr i32 %1228, 16
  %1296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1295)  ; LegacyF16ToF32(value)
  %1297 = and i32 %1229, 65535
  %1298 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1297)  ; LegacyF16ToF32(value)
  br label %1299

; <label>:1299                                    ; preds = %1226, %1223
  %1300 = phi float [ %1298, %1226 ], [ 0.000000e+00, %1223 ]
  %1301 = phi float [ %1296, %1226 ], [ 0.000000e+00, %1223 ]
  %1302 = phi float [ %1294, %1226 ], [ 0.000000e+00, %1223 ]
  %1303 = phi float [ %1292, %1226 ], [ 0.000000e+00, %1223 ]
  %1304 = phi float [ %1290, %1226 ], [ 0.000000e+00, %1223 ]
  %1305 = phi float [ %1288, %1226 ], [ 0.000000e+00, %1223 ]
  %1306 = phi float [ %1286, %1226 ], [ 0.000000e+00, %1223 ]
  %1307 = phi float [ %1284, %1226 ], [ 0.000000e+00, %1223 ]
  %1308 = phi float [ %1282, %1226 ], [ 0.000000e+00, %1223 ]
  %1309 = phi float [ %1280, %1226 ], [ 0.000000e+00, %1223 ]
  %1310 = phi float [ %1278, %1226 ], [ 0.000000e+00, %1223 ]
  %1311 = phi float [ %1276, %1226 ], [ 0.000000e+00, %1223 ]
  %1312 = phi float [ %1274, %1226 ], [ 0.000000e+00, %1223 ]
  %1313 = phi float [ %1272, %1226 ], [ 0.000000e+00, %1223 ]
  %1314 = phi float [ %1270, %1226 ], [ 0.000000e+00, %1223 ]
  %1315 = phi float [ %1268, %1226 ], [ 0.000000e+00, %1223 ]
  %1316 = phi float [ %1266, %1226 ], [ 0.000000e+00, %1223 ]
  %1317 = phi float [ %1264, %1226 ], [ 0.000000e+00, %1223 ]
  %1318 = phi float [ %1262, %1226 ], [ 0.000000e+00, %1223 ]
  %1319 = phi float [ %1260, %1226 ], [ 0.000000e+00, %1223 ]
  %1320 = phi float [ %1258, %1226 ], [ 0.000000e+00, %1223 ]
  %1321 = phi float [ %1256, %1226 ], [ 0.000000e+00, %1223 ]
  %1322 = phi float [ %1254, %1226 ], [ 0.000000e+00, %1223 ]
  %1323 = phi float [ %1252, %1226 ], [ 0.000000e+00, %1223 ]
  %1324 = phi float [ %1250, %1226 ], [ 0.000000e+00, %1223 ]
  %1325 = phi float [ %1248, %1226 ], [ 0.000000e+00, %1223 ]
  %1326 = phi float [ %1246, %1226 ], [ 0.000000e+00, %1223 ]
  %1327 = fcmp fast olt float %1224, 1.000000e+00
  br i1 %1327, label %1328, label %1988, !dx.controlflow.hints !84

; <label>:1328                                    ; preds = %1299
  %1329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1330 = extractvalue %dx.types.CBufRet.f32 %1329, 0
  %1331 = extractvalue %dx.types.CBufRet.f32 %1329, 1
  %1332 = fsub fast float %336, %1330
  %1333 = fsub fast float %337, %1331
  %1334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1335 = extractvalue %dx.types.CBufRet.f32 %1334, 0
  %1336 = extractvalue %dx.types.CBufRet.f32 %1334, 1
  %1337 = fmul fast float %1332, %1335
  %1338 = fmul fast float %1333, %1336
  %1339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1340 = extractvalue %dx.types.CBufRet.f32 %1339, 0
  %1341 = fmul fast float %1340, %1337
  %1342 = extractvalue %dx.types.CBufRet.f32 %1339, 1
  %1343 = fadd fast float %1341, %1342
  %1344 = extractvalue %dx.types.CBufRet.f32 %1339, 2
  %1345 = fmul fast float %1344, %1338
  %1346 = extractvalue %dx.types.CBufRet.f32 %1339, 3
  %1347 = fadd fast float %1345, %1346
  %1348 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %26, float %1343, float %1347, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1349 = extractvalue %dx.types.ResRet.f32 %1348, 0
  %1350 = extractvalue %dx.types.ResRet.f32 %1348, 1
  %1351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1352 = extractvalue %dx.types.CBufRet.f32 %1351, 1
  %1353 = extractvalue %dx.types.CBufRet.f32 %1351, 0
  %1354 = fsub fast float %1352, %1353
  %1355 = fmul fast float %1354, %1349
  %1356 = fadd fast float %1355, %1353
  %1357 = extractvalue %dx.types.CBufRet.f32 %1351, 3
  %1358 = extractvalue %dx.types.CBufRet.f32 %1351, 2
  %1359 = fsub fast float %1357, %1358
  %1360 = fmul fast float %1359, %1350
  %1361 = fadd fast float %1360, %1358
  %1362 = fsub fast float %338, %1356
  %1363 = fsub fast float %1361, %1356
  %1364 = fdiv fast float %1362, %1363
  %1365 = call float @dx.op.unary.f32(i32 7, float %1364)  ; Saturate(value)
  %1366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %1367 = extractvalue %dx.types.CBufRet.f32 %1366, 0
  %1368 = fmul fast float %1367, %1365
  %1369 = extractvalue %dx.types.CBufRet.f32 %1366, 1
  %1370 = fadd fast float %1368, %1369
  %1371 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %26, float %1343, float %1347, float %1370, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1372 = extractvalue %dx.types.ResRet.f32 %1371, 0
  %1373 = extractvalue %dx.types.ResRet.f32 %1371, 1
  %1374 = extractvalue %dx.types.ResRet.f32 %1371, 2
  %1375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %1376 = extractvalue %dx.types.CBufRet.f32 %1375, 0
  %1377 = extractvalue %dx.types.CBufRet.f32 %1375, 1
  %1378 = extractvalue %dx.types.CBufRet.f32 %1375, 2
  %1379 = fmul fast float %1376, %1372
  %1380 = fmul fast float %1377, %1373
  %1381 = fmul fast float %1378, %1374
  %1382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %1383 = extractvalue %dx.types.CBufRet.f32 %1382, 0
  %1384 = extractvalue %dx.types.CBufRet.f32 %1382, 1
  %1385 = extractvalue %dx.types.CBufRet.f32 %1382, 2
  %1386 = fadd fast float %1379, %1383
  %1387 = fadd fast float %1380, %1384
  %1388 = fadd fast float %1381, %1385
  %1389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %1390 = extractvalue %dx.types.CBufRet.f32 %1389, 0
  %1391 = fmul fast float %1390, %1337
  %1392 = extractvalue %dx.types.CBufRet.f32 %1389, 1
  %1393 = fadd fast float %1391, %1392
  %1394 = extractvalue %dx.types.CBufRet.f32 %1389, 2
  %1395 = fmul fast float %1394, %1338
  %1396 = extractvalue %dx.types.CBufRet.f32 %1389, 3
  %1397 = fadd fast float %1395, %1396
  %1398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %1399 = extractvalue %dx.types.CBufRet.f32 %1398, 0
  %1400 = extractvalue %dx.types.CBufRet.f32 %1398, 1
  %1401 = extractvalue %dx.types.CBufRet.f32 %1398, 2
  %1402 = extractvalue %dx.types.CBufRet.f32 %1398, 3
  %1403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %1404 = extractvalue %dx.types.CBufRet.f32 %1403, 0
  %1405 = extractvalue %dx.types.CBufRet.f32 %1403, 1
  %1406 = extractvalue %dx.types.CBufRet.f32 %1403, 2
  %1407 = extractvalue %dx.types.CBufRet.f32 %1403, 3
  %1408 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %26, float %1393, float %1397, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1409 = extractvalue %dx.types.ResRet.f32 %1408, 0
  %1410 = extractvalue %dx.types.ResRet.f32 %1408, 1
  %1411 = extractvalue %dx.types.ResRet.f32 %1408, 2
  %1412 = extractvalue %dx.types.ResRet.f32 %1408, 3
  %1413 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %26, float %1393, float %1397, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1414 = extractvalue %dx.types.ResRet.f32 %1413, 0
  %1415 = extractvalue %dx.types.ResRet.f32 %1413, 1
  %1416 = extractvalue %dx.types.ResRet.f32 %1413, 2
  %1417 = extractvalue %dx.types.ResRet.f32 %1413, 3
  %1418 = fmul fast float %1409, %1386
  %1419 = fmul fast float %1414, %1386
  %1420 = fmul fast float %1416, %1386
  %1421 = fmul fast float %1412, %1386
  %1422 = fadd fast float %1418, %1399
  %1423 = fadd fast float %1419, %1400
  %1424 = fadd fast float %1420, %1401
  %1425 = fadd fast float %1421, %1402
  %1426 = fmul fast float %1410, %1386
  %1427 = fmul fast float %1415, %1386
  %1428 = fadd fast float %1426, %1404
  %1429 = fadd fast float %1427, %1405
  %1430 = fmul fast float %1411, %1386
  %1431 = fmul fast float %1417, %1386
  %1432 = fadd fast float %1430, %1406
  %1433 = fadd fast float %1431, %1407
  %1434 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %26, float %1393, float %1397, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1435 = extractvalue %dx.types.ResRet.f32 %1434, 0
  %1436 = extractvalue %dx.types.ResRet.f32 %1434, 1
  %1437 = extractvalue %dx.types.ResRet.f32 %1434, 2
  %1438 = extractvalue %dx.types.ResRet.f32 %1434, 3
  %1439 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %26, float %1393, float %1397, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1440 = extractvalue %dx.types.ResRet.f32 %1439, 0
  %1441 = extractvalue %dx.types.ResRet.f32 %1439, 1
  %1442 = extractvalue %dx.types.ResRet.f32 %1439, 2
  %1443 = extractvalue %dx.types.ResRet.f32 %1439, 3
  %1444 = fmul fast float %1435, %1387
  %1445 = fmul fast float %1440, %1387
  %1446 = fmul fast float %1442, %1387
  %1447 = fmul fast float %1438, %1387
  %1448 = fadd fast float %1422, %1444
  %1449 = fadd fast float %1423, %1445
  %1450 = fadd fast float %1424, %1446
  %1451 = fadd fast float %1425, %1447
  %1452 = fmul fast float %1436, %1387
  %1453 = fmul fast float %1441, %1387
  %1454 = fadd fast float %1428, %1452
  %1455 = fadd fast float %1429, %1453
  %1456 = fmul fast float %1437, %1387
  %1457 = fmul fast float %1443, %1387
  %1458 = fadd fast float %1432, %1456
  %1459 = fadd fast float %1433, %1457
  %1460 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %26, float %1393, float %1397, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1461 = extractvalue %dx.types.ResRet.f32 %1460, 0
  %1462 = extractvalue %dx.types.ResRet.f32 %1460, 1
  %1463 = extractvalue %dx.types.ResRet.f32 %1460, 2
  %1464 = extractvalue %dx.types.ResRet.f32 %1460, 3
  %1465 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %26, float %1393, float %1397, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1466 = extractvalue %dx.types.ResRet.f32 %1465, 0
  %1467 = extractvalue %dx.types.ResRet.f32 %1465, 1
  %1468 = extractvalue %dx.types.ResRet.f32 %1465, 2
  %1469 = extractvalue %dx.types.ResRet.f32 %1465, 3
  %1470 = fmul fast float %1461, %1388
  %1471 = fmul fast float %1466, %1388
  %1472 = fmul fast float %1468, %1388
  %1473 = fmul fast float %1464, %1388
  %1474 = fadd fast float %1448, %1470
  %1475 = fadd fast float %1449, %1471
  %1476 = fadd fast float %1450, %1472
  %1477 = fadd fast float %1451, %1473
  %1478 = fmul fast float %1462, %1388
  %1479 = fmul fast float %1467, %1388
  %1480 = fadd fast float %1454, %1478
  %1481 = fadd fast float %1455, %1479
  %1482 = fmul fast float %1463, %1388
  %1483 = fmul fast float %1469, %1388
  %1484 = fadd fast float %1458, %1482
  %1485 = fadd fast float %1459, %1483
  %1486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %1487 = extractvalue %dx.types.CBufRet.f32 %1486, 0
  %1488 = fsub fast float %336, %1487
  %1489 = fsub fast float %1330, %336
  %1490 = call float @dx.op.binary.f32(i32 35, float %1489, float %1488)  ; FMax(a,b)
  %1491 = extractvalue %dx.types.CBufRet.f32 %1486, 1
  %1492 = fsub fast float %337, %1491
  %1493 = fsub fast float %1331, %337
  %1494 = call float @dx.op.binary.f32(i32 35, float %1493, float %1492)  ; FMax(a,b)
  %1495 = call float @dx.op.binary.f32(i32 35, float %1490, float %1494)  ; FMax(a,b)
  %1496 = extractvalue %dx.types.CBufRet.f32 %1334, 3
  %1497 = fmul fast float %1496, %1495
  %1498 = call float @dx.op.unary.f32(i32 7, float %1497)  ; Saturate(value)
  %1499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %1500 = extractvalue %dx.types.CBufRet.f32 %1499, 0
  %1501 = extractvalue %dx.types.CBufRet.f32 %1499, 1
  %1502 = extractvalue %dx.types.CBufRet.f32 %1499, 2
  %1503 = extractvalue %dx.types.CBufRet.f32 %1499, 3
  %1504 = fsub fast float %1500, %1474
  %1505 = fsub fast float %1501, %1475
  %1506 = fsub fast float %1502, %1476
  %1507 = fsub fast float %1503, %1477
  %1508 = fmul fast float %1504, %1498
  %1509 = fmul fast float %1505, %1498
  %1510 = fmul fast float %1506, %1498
  %1511 = fmul fast float %1507, %1498
  %1512 = fadd fast float %1508, %1474
  %1513 = fadd fast float %1509, %1475
  %1514 = fadd fast float %1510, %1476
  %1515 = fadd fast float %1511, %1477
  %1516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %1517 = extractvalue %dx.types.CBufRet.f32 %1516, 0
  %1518 = extractvalue %dx.types.CBufRet.f32 %1516, 1
  %1519 = fsub fast float %1517, %1480
  %1520 = fsub fast float %1518, %1481
  %1521 = fmul fast float %1519, %1498
  %1522 = fmul fast float %1520, %1498
  %1523 = fadd fast float %1521, %1480
  %1524 = fadd fast float %1522, %1481
  %1525 = extractvalue %dx.types.CBufRet.f32 %1516, 2
  %1526 = extractvalue %dx.types.CBufRet.f32 %1516, 3
  %1527 = fsub fast float %1525, %1484
  %1528 = fsub fast float %1526, %1485
  %1529 = fmul fast float %1527, %1498
  %1530 = fmul fast float %1528, %1498
  %1531 = fadd fast float %1529, %1484
  %1532 = fadd fast float %1530, %1485
  %1533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %1534 = extractvalue %dx.types.CBufRet.f32 %1533, 0
  %1535 = fmul fast float %1534, %1512
  %1536 = fmul fast float %1534, %1513
  %1537 = fmul fast float %1534, %1514
  %1538 = fmul fast float %1534, %1515
  %1539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %1540 = extractvalue %dx.types.CBufRet.f32 %1539, 0
  %1541 = fmul fast float %1540, %1523
  %1542 = fmul fast float %1540, %1524
  %1543 = fadd fast float %1541, %1535
  %1544 = fadd fast float %1542, %1537
  %1545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %1546 = extractvalue %dx.types.CBufRet.f32 %1545, 0
  %1547 = fmul fast float %1546, %1531
  %1548 = fmul fast float %1546, %1532
  %1549 = fadd fast float %1543, %1547
  %1550 = fadd fast float %1544, %1548
  %1551 = extractvalue %dx.types.CBufRet.f32 %1533, 1
  %1552 = fmul fast float %1551, %1512
  %1553 = fmul fast float %1551, %1513
  %1554 = fmul fast float %1551, %1514
  %1555 = fmul fast float %1551, %1515
  %1556 = extractvalue %dx.types.CBufRet.f32 %1539, 1
  %1557 = fmul fast float %1556, %1523
  %1558 = fmul fast float %1556, %1524
  %1559 = fadd fast float %1557, %1552
  %1560 = fadd fast float %1558, %1554
  %1561 = extractvalue %dx.types.CBufRet.f32 %1545, 1
  %1562 = fmul fast float %1561, %1531
  %1563 = fmul fast float %1561, %1532
  %1564 = fadd fast float %1559, %1562
  %1565 = fadd fast float %1560, %1563
  %1566 = extractvalue %dx.types.CBufRet.f32 %1533, 2
  %1567 = fmul fast float %1566, %1512
  %1568 = fmul fast float %1566, %1513
  %1569 = fmul fast float %1566, %1514
  %1570 = fmul fast float %1566, %1515
  %1571 = extractvalue %dx.types.CBufRet.f32 %1539, 2
  %1572 = fmul fast float %1571, %1523
  %1573 = fmul fast float %1571, %1524
  %1574 = fadd fast float %1572, %1567
  %1575 = fadd fast float %1573, %1569
  %1576 = extractvalue %dx.types.CBufRet.f32 %1545, 2
  %1577 = fmul fast float %1576, %1531
  %1578 = fmul fast float %1576, %1532
  %1579 = fadd fast float %1574, %1577
  %1580 = fadd fast float %1575, %1578
  %1581 = fmul fast float %1568, %1568
  %1582 = fmul fast float %1580, %1580
  %1583 = fmul fast float %1570, %1570
  %1584 = fadd fast float %1583, %1581
  %1585 = fadd fast float %1584, %1582
  %1586 = call float @dx.op.unary.f32(i32 24, float %1585)  ; Sqrt(value)
  %1587 = fcmp fast ugt float %1586, 0.000000e+00
  br i1 %1587, label %1588, label %1603, !dx.controlflow.hints !85

; <label>:1588                                    ; preds = %1328
  %1589 = fsub fast float -0.000000e+00, %1570
  %1590 = fdiv fast float %1589, %1586
  %1591 = fsub fast float -0.000000e+00, %1568
  %1592 = fdiv fast float %1591, %1586
  %1593 = fdiv fast float %1580, %1586
  %1594 = fmul fast float %1579, 0x3FE279A760000000
  %1595 = fmul fast float %1592, %1568
  %1596 = fmul fast float %1593, %1580
  %1597 = fmul fast float %1590, %1570
  %1598 = fadd fast float %1595, %1597
  %1599 = fsub fast float %1598, %1596
  %1600 = call float @dx.op.unary.f32(i32 6, float %1599)  ; FAbs(value)
  %1601 = fadd fast float %1600, 0x3DDB7CDFE0000000
  %1602 = fdiv fast float %1594, %1601
  br label %1603

; <label>:1603                                    ; preds = %1588, %1328
  %1604 = phi float [ %1602, %1588 ], [ 1.000000e+00, %1328 ]
  %1605 = fmul fast float %1553, %1553
  %1606 = fmul fast float %1565, %1565
  %1607 = fmul fast float %1555, %1555
  %1608 = fadd fast float %1607, %1605
  %1609 = fadd fast float %1608, %1606
  %1610 = call float @dx.op.unary.f32(i32 24, float %1609)  ; Sqrt(value)
  %1611 = fcmp fast ugt float %1610, 0.000000e+00
  br i1 %1611, label %1612, label %1627, !dx.controlflow.hints !85

; <label>:1612                                    ; preds = %1603
  %1613 = fsub fast float -0.000000e+00, %1555
  %1614 = fdiv fast float %1613, %1610
  %1615 = fsub fast float -0.000000e+00, %1553
  %1616 = fdiv fast float %1615, %1610
  %1617 = fdiv fast float %1565, %1610
  %1618 = fmul fast float %1564, 0x3FE279A760000000
  %1619 = fmul fast float %1616, %1553
  %1620 = fmul fast float %1617, %1565
  %1621 = fmul fast float %1614, %1555
  %1622 = fadd fast float %1619, %1621
  %1623 = fsub fast float %1622, %1620
  %1624 = call float @dx.op.unary.f32(i32 6, float %1623)  ; FAbs(value)
  %1625 = fadd fast float %1624, 0x3DDB7CDFE0000000
  %1626 = fdiv fast float %1618, %1625
  br label %1627

; <label>:1627                                    ; preds = %1612, %1603
  %1628 = phi float [ %1626, %1612 ], [ 1.000000e+00, %1603 ]
  %1629 = call float @dx.op.binary.f32(i32 36, float %1628, float %1604)  ; FMin(a,b)
  %1630 = fmul fast float %1536, %1536
  %1631 = fmul fast float %1550, %1550
  %1632 = fmul fast float %1538, %1538
  %1633 = fadd fast float %1632, %1630
  %1634 = fadd fast float %1633, %1631
  %1635 = call float @dx.op.unary.f32(i32 24, float %1634)  ; Sqrt(value)
  %1636 = fcmp fast ugt float %1635, 0.000000e+00
  br i1 %1636, label %1637, label %1652, !dx.controlflow.hints !85

; <label>:1637                                    ; preds = %1627
  %1638 = fsub fast float -0.000000e+00, %1538
  %1639 = fdiv fast float %1638, %1635
  %1640 = fsub fast float -0.000000e+00, %1536
  %1641 = fdiv fast float %1640, %1635
  %1642 = fdiv fast float %1550, %1635
  %1643 = fmul fast float %1549, 0x3FE279A760000000
  %1644 = fmul fast float %1641, %1536
  %1645 = fmul fast float %1642, %1550
  %1646 = fmul fast float %1639, %1538
  %1647 = fadd fast float %1644, %1646
  %1648 = fsub fast float %1647, %1645
  %1649 = call float @dx.op.unary.f32(i32 6, float %1648)  ; FAbs(value)
  %1650 = fadd fast float %1649, 0x3DDB7CDFE0000000
  %1651 = fdiv fast float %1643, %1650
  br label %1652

; <label>:1652                                    ; preds = %1637, %1627
  %1653 = phi float [ %1651, %1637 ], [ 1.000000e+00, %1627 ]
  %1654 = call float @dx.op.binary.f32(i32 36, float %1653, float %1629)  ; FMin(a,b)
  %1655 = call float @dx.op.unary.f32(i32 7, float %1654)  ; Saturate(value)
  %1656 = fcmp fast olt float %1655, 1.000000e+00
  br i1 %1656, label %1657, label %1667, !dx.controlflow.hints !86

; <label>:1657                                    ; preds = %1652
  %1658 = fmul fast float %1655, %1536
  %1659 = fmul fast float %1655, %1550
  %1660 = fmul fast float %1655, %1538
  %1661 = fmul fast float %1655, %1553
  %1662 = fmul fast float %1655, %1565
  %1663 = fmul fast float %1655, %1555
  %1664 = fmul fast float %1655, %1568
  %1665 = fmul fast float %1655, %1580
  %1666 = fmul fast float %1655, %1570
  br label %1667

; <label>:1667                                    ; preds = %1657, %1652
  %1668 = phi float [ %1664, %1657 ], [ %1568, %1652 ]
  %1669 = phi float [ %1665, %1657 ], [ %1580, %1652 ]
  %1670 = phi float [ %1666, %1657 ], [ %1570, %1652 ]
  %1671 = phi float [ %1661, %1657 ], [ %1553, %1652 ]
  %1672 = phi float [ %1662, %1657 ], [ %1565, %1652 ]
  %1673 = phi float [ %1663, %1657 ], [ %1555, %1652 ]
  %1674 = phi float [ %1658, %1657 ], [ %1536, %1652 ]
  %1675 = phi float [ %1659, %1657 ], [ %1550, %1652 ]
  %1676 = phi float [ %1660, %1657 ], [ %1538, %1652 ]
  %1677 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1549)  ; FMax(a,b)
  %1678 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1564)  ; FMax(a,b)
  %1679 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1579)  ; FMax(a,b)
  %1680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %1681 = extractvalue %dx.types.CBufRet.f32 %1680, 0
  %1682 = fcmp fast ogt float %1681, 0.000000e+00
  %1683 = fcmp fast oge float %1337, 0.000000e+00
  %1684 = and i1 %1683, %1682
  %1685 = fcmp fast ole float %1337, 1.000000e+00
  %1686 = and i1 %1685, %1684
  %1687 = fcmp fast oge float %1338, 0.000000e+00
  %1688 = and i1 %1687, %1686
  %1689 = fcmp fast ole float %1338, 1.000000e+00
  %1690 = and i1 %1689, %1688
  br i1 %1690, label %1691, label %1836, !dx.controlflow.hints !87

; <label>:1691                                    ; preds = %1667
  %1692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1693 = extractvalue %dx.types.CBufRet.f32 %1692, 2
  %1694 = extractvalue %dx.types.CBufRet.f32 %1692, 3
  %1695 = fmul fast float %1693, %1337
  %1696 = fmul fast float %1694, %1338
  %1697 = call float @dx.op.unary.f32(i32 27, float %1695)  ; Round_ni(value)
  %1698 = call float @dx.op.unary.f32(i32 27, float %1696)  ; Round_ni(value)
  %1699 = fptosi float %1697 to i32
  %1700 = fptosi float %1698 to i32
  %1701 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %1699, i32 %1700, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1702 = extractvalue %dx.types.ResRet.i32 %1701, 0
  %1703 = and i32 %1702, 65535
  %1704 = lshr i32 %1702, 16
  %1705 = icmp eq i32 %1703, 65535
  br i1 %1705, label %1742, label %1706, !dx.controlflow.hints !88

; <label>:1706                                    ; preds = %1691
  %1707 = extractvalue %dx.types.CBufRet.f32 %1680, 1
  %1708 = extractvalue %dx.types.CBufRet.f32 %1692, 0
  %1709 = extractvalue %dx.types.CBufRet.f32 %1692, 1
  %1710 = fmul fast float %1708, %1337
  %1711 = fmul fast float %1709, %1338
  %1712 = fmul fast float %1710, 1.250000e-01
  %1713 = fmul fast float %1711, 1.250000e-01
  %1714 = call float @dx.op.unary.f32(i32 27, float %1712)  ; Round_ni(value)
  %1715 = call float @dx.op.unary.f32(i32 27, float %1713)  ; Round_ni(value)
  %1716 = fmul fast float %1714, 8.000000e+00
  %1717 = fmul fast float %1715, 8.000000e+00
  %1718 = and i32 %1702, 255
  %1719 = lshr i32 %1702, 8
  %1720 = and i32 %1719, 255
  %1721 = mul nuw nsw i32 %1718, 9
  %1722 = uitofp i32 %1721 to float
  %1723 = mul nuw nsw i32 %1720, 9
  %1724 = uitofp i32 %1723 to float
  %1725 = fadd fast float %1722, 5.000000e-01
  %1726 = fadd fast float %1725, %1710
  %1727 = fsub fast float %1726, %1716
  %1728 = fadd fast float %1724, 5.000000e-01
  %1729 = fadd fast float %1728, %1711
  %1730 = fsub fast float %1729, %1717
  %1731 = fdiv fast float %1727, %1681
  %1732 = fdiv fast float %1730, %1707
  %1733 = fmul fast float %1365, 4.375000e-01
  %1734 = fadd fast float %1733, 3.125000e-02
  %1735 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %26, float %1731, float %1732, float %1734, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1736 = extractvalue %dx.types.ResRet.f32 %1735, 0
  %1737 = extractvalue %dx.types.ResRet.f32 %1735, 1
  %1738 = extractvalue %dx.types.ResRet.f32 %1735, 2
  %1739 = fadd fast float %1736, %1677
  %1740 = fadd fast float %1737, %1678
  %1741 = fadd fast float %1738, %1679
  br label %1742

; <label>:1742                                    ; preds = %1706, %1691
  %1743 = phi float [ %1741, %1706 ], [ %1679, %1691 ]
  %1744 = phi float [ %1740, %1706 ], [ %1678, %1691 ]
  %1745 = phi float [ %1739, %1706 ], [ %1677, %1691 ]
  %1746 = icmp eq i32 %1704, 65535
  br i1 %1746, label %1836, label %1747, !dx.controlflow.hints !89

; <label>:1747                                    ; preds = %1742
  %1748 = extractvalue %dx.types.CBufRet.f32 %1680, 1
  %1749 = extractvalue %dx.types.CBufRet.f32 %1692, 0
  %1750 = extractvalue %dx.types.CBufRet.f32 %1692, 1
  %1751 = fmul fast float %1749, %1337
  %1752 = fmul fast float %1750, %1338
  %1753 = fmul fast float %1751, 1.250000e-01
  %1754 = fmul fast float %1752, 1.250000e-01
  %1755 = call float @dx.op.unary.f32(i32 27, float %1753)  ; Round_ni(value)
  %1756 = call float @dx.op.unary.f32(i32 27, float %1754)  ; Round_ni(value)
  %1757 = fmul fast float %1755, 8.000000e+00
  %1758 = fmul fast float %1756, 8.000000e+00
  %1759 = fsub fast float %1751, %1757
  %1760 = fsub fast float %1752, %1758
  %1761 = fadd fast float %1759, 5.000000e-01
  %1762 = fadd fast float %1760, 5.000000e-01
  %1763 = and i32 %1704, 255
  %1764 = lshr i32 %1702, 24
  %1765 = mul nuw nsw i32 %1763, 9
  %1766 = uitofp i32 %1765 to float
  %1767 = mul nuw nsw i32 %1764, 9
  %1768 = uitofp i32 %1767 to float
  %1769 = fadd fast float %1761, %1766
  %1770 = fadd fast float %1762, %1768
  %1771 = fdiv fast float %1769, %1681
  %1772 = fdiv fast float %1770, %1748
  %1773 = fmul fast float %1365, 4.375000e-01
  %1774 = fadd fast float %1773, 3.125000e-02
  %1775 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %26, float %1771, float %1772, float %1774, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1776 = extractvalue %dx.types.ResRet.f32 %1775, 0
  %1777 = extractvalue %dx.types.ResRet.f32 %1775, 1
  %1778 = extractvalue %dx.types.ResRet.f32 %1775, 2
  %1779 = fadd fast float %1773, 5.312500e-01
  %1780 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %26, float %1771, float %1772, float %1779, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1781 = extractvalue %dx.types.ResRet.f32 %1780, 0
  %1782 = extractvalue %dx.types.ResRet.f32 %1780, 1
  %1783 = extractvalue %dx.types.ResRet.f32 %1780, 2
  %1784 = fmul fast float %1781, 2.000000e+00
  %1785 = fmul fast float %1782, 2.000000e+00
  %1786 = fmul fast float %1783, 2.000000e+00
  %1787 = fadd fast float %1784, -1.000000e+00
  %1788 = fadd fast float %1785, -1.000000e+00
  %1789 = fadd fast float %1786, -1.000000e+00
  %1790 = fmul fast float %1787, %1787
  %1791 = fmul fast float %1788, %1788
  %1792 = fadd fast float %1790, %1791
  %1793 = fmul fast float %1789, %1789
  %1794 = fadd fast float %1792, %1793
  %1795 = call float @dx.op.unary.f32(i32 24, float %1794)  ; Sqrt(value)
  %1796 = fcmp fast ogt float %1795, 0.000000e+00
  br i1 %1796, label %1797, label %1801, !dx.controlflow.hints !90

; <label>:1797                                    ; preds = %1747
  %1798 = fdiv fast float %1787, %1795
  %1799 = fdiv fast float %1788, %1795
  %1800 = fdiv fast float %1789, %1795
  br label %1801

; <label>:1801                                    ; preds = %1797, %1747
  %1802 = phi float [ %1798, %1797 ], [ 0.000000e+00, %1747 ]
  %1803 = phi float [ %1799, %1797 ], [ 0.000000e+00, %1747 ]
  %1804 = phi float [ %1800, %1797 ], [ 0.000000e+00, %1747 ]
  %1805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1806 = extractvalue %dx.types.CBufRet.f32 %1805, 0
  %1807 = extractvalue %dx.types.CBufRet.f32 %1805, 1
  %1808 = fsub fast float %336, %1806
  %1809 = fsub fast float %337, %1807
  %1810 = fmul fast float %1808, %1808
  %1811 = fmul fast float %1809, %1809
  %1812 = fadd fast float %1810, %1811
  %1813 = call float @dx.op.unary.f32(i32 24, float %1812)  ; Sqrt(value)
  %1814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1815 = extractvalue %dx.types.CBufRet.f32 %1814, 0
  %1816 = extractvalue %dx.types.CBufRet.f32 %1814, 1
  %1817 = fsub fast float %1813, %1815
  %1818 = fdiv fast float %1817, %1816
  %1819 = call float @dx.op.unary.f32(i32 7, float %1818)  ; Saturate(value)
  %1820 = fmul fast float %1819, 2.000000e+00
  %1821 = fsub fast float 3.000000e+00, %1820
  %1822 = fmul fast float %1819, %1819
  %1823 = fmul fast float %1822, %1821
  %1824 = call float @dx.op.dot3.f32(i32 55, float %1802, float %1803, float %1804, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1825 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1824)  ; FMax(a,b)
  %1826 = fmul fast float %1825, 0x400C5BF8A0000000
  %1827 = fmul fast float %1823, %1776
  %1828 = fmul fast float %1827, %1826
  %1829 = fadd fast float %1828, %1745
  %1830 = fmul fast float %1823, %1777
  %1831 = fmul fast float %1830, %1826
  %1832 = fadd fast float %1831, %1744
  %1833 = fmul fast float %1823, %1778
  %1834 = fmul fast float %1833, %1826
  %1835 = fadd fast float %1834, %1743
  br label %1836

; <label>:1836                                    ; preds = %1801, %1742, %1667
  %1837 = phi float [ %1835, %1801 ], [ %1743, %1742 ], [ %1679, %1667 ]
  %1838 = phi float [ %1832, %1801 ], [ %1744, %1742 ], [ %1678, %1667 ]
  %1839 = phi float [ %1829, %1801 ], [ %1745, %1742 ], [ %1677, %1667 ]
  %1840 = fcmp fast ogt float %338, %1361
  %1841 = and i1 %1683, %1840
  %1842 = and i1 %1685, %1841
  %1843 = and i1 %1687, %1842
  %1844 = and i1 %1689, %1843
  br i1 %1844, label %1845, label %1902, !dx.controlflow.hints !91

; <label>:1845                                    ; preds = %1836
  %1846 = fmul fast float %1363, 0x3FC24924A0000000
  %1847 = fsub fast float %338, %1361
  %1848 = fdiv fast float %1847, %1846
  %1849 = call float @dx.op.unary.f32(i32 7, float %1848)  ; Saturate(value)
  %1850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %1851 = extractvalue %dx.types.CBufRet.f32 %1850, 0
  %1852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %1853 = extractvalue %dx.types.CBufRet.f32 %1852, 0
  %1854 = extractvalue %dx.types.CBufRet.f32 %1852, 1
  %1855 = extractvalue %dx.types.CBufRet.f32 %1852, 2
  %1856 = fsub fast float %1851, %1839
  %1857 = fsub fast float %1853, %1674
  %1858 = fsub fast float %1854, %1675
  %1859 = fsub fast float %1855, %1676
  %1860 = fmul fast float %1856, %1849
  %1861 = fmul fast float %1857, %1849
  %1862 = fmul fast float %1858, %1849
  %1863 = fmul fast float %1859, %1849
  %1864 = fadd fast float %1860, %1839
  %1865 = fadd fast float %1861, %1674
  %1866 = fadd fast float %1862, %1675
  %1867 = fadd fast float %1863, %1676
  %1868 = extractvalue %dx.types.CBufRet.f32 %1850, 1
  %1869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %1870 = extractvalue %dx.types.CBufRet.f32 %1869, 0
  %1871 = extractvalue %dx.types.CBufRet.f32 %1869, 1
  %1872 = extractvalue %dx.types.CBufRet.f32 %1869, 2
  %1873 = fsub fast float %1868, %1838
  %1874 = fsub fast float %1870, %1671
  %1875 = fsub fast float %1871, %1672
  %1876 = fsub fast float %1872, %1673
  %1877 = fmul fast float %1873, %1849
  %1878 = fmul fast float %1874, %1849
  %1879 = fmul fast float %1875, %1849
  %1880 = fmul fast float %1876, %1849
  %1881 = fadd fast float %1877, %1838
  %1882 = fadd fast float %1878, %1671
  %1883 = fadd fast float %1879, %1672
  %1884 = fadd fast float %1880, %1673
  %1885 = extractvalue %dx.types.CBufRet.f32 %1850, 2
  %1886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %1887 = extractvalue %dx.types.CBufRet.f32 %1886, 0
  %1888 = extractvalue %dx.types.CBufRet.f32 %1886, 1
  %1889 = extractvalue %dx.types.CBufRet.f32 %1886, 2
  %1890 = fsub fast float %1885, %1837
  %1891 = fsub fast float %1887, %1668
  %1892 = fsub fast float %1888, %1669
  %1893 = fsub fast float %1889, %1670
  %1894 = fmul fast float %1890, %1849
  %1895 = fmul fast float %1891, %1849
  %1896 = fmul fast float %1892, %1849
  %1897 = fmul fast float %1893, %1849
  %1898 = fadd fast float %1894, %1837
  %1899 = fadd fast float %1895, %1668
  %1900 = fadd fast float %1896, %1669
  %1901 = fadd fast float %1897, %1670
  br label %1902

; <label>:1902                                    ; preds = %1845, %1836
  %1903 = phi float [ %1898, %1845 ], [ %1837, %1836 ]
  %1904 = phi float [ %1899, %1845 ], [ %1668, %1836 ]
  %1905 = phi float [ %1900, %1845 ], [ %1669, %1836 ]
  %1906 = phi float [ %1901, %1845 ], [ %1670, %1836 ]
  %1907 = phi float [ %1881, %1845 ], [ %1838, %1836 ]
  %1908 = phi float [ %1882, %1845 ], [ %1671, %1836 ]
  %1909 = phi float [ %1883, %1845 ], [ %1672, %1836 ]
  %1910 = phi float [ %1884, %1845 ], [ %1673, %1836 ]
  %1911 = phi float [ %1864, %1845 ], [ %1839, %1836 ]
  %1912 = phi float [ %1865, %1845 ], [ %1674, %1836 ]
  %1913 = phi float [ %1866, %1845 ], [ %1675, %1836 ]
  %1914 = phi float [ %1867, %1845 ], [ %1676, %1836 ]
  %1915 = extractvalue %dx.types.CBufRet.f32 %1486, 3
  %1916 = fmul fast float %1915, %1911
  %1917 = fmul fast float %1915, %1907
  %1918 = fmul fast float %1915, %1903
  %1919 = fmul fast float %1912, 1.500000e+00
  %1920 = fmul fast float %1919, %1915
  %1921 = fmul fast float %1913, 1.500000e+00
  %1922 = fmul fast float %1921, %1915
  %1923 = fmul fast float %1914, 1.500000e+00
  %1924 = fmul fast float %1923, %1915
  %1925 = fmul fast float %1908, 1.500000e+00
  %1926 = fmul fast float %1925, %1915
  %1927 = fmul fast float %1909, 1.500000e+00
  %1928 = fmul fast float %1927, %1915
  %1929 = fmul fast float %1910, 1.500000e+00
  %1930 = fmul fast float %1929, %1915
  %1931 = fmul fast float %1904, 1.500000e+00
  %1932 = fmul fast float %1931, %1915
  %1933 = fmul fast float %1905, 1.500000e+00
  %1934 = fmul fast float %1933, %1915
  %1935 = fmul fast float %1906, 1.500000e+00
  %1936 = fmul fast float %1935, %1915
  %1937 = fsub fast float %1326, %1916
  %1938 = fmul fast float %1937, %1224
  %1939 = fadd fast float %1938, %1916
  %1940 = fsub fast float %1325, %1920
  %1941 = fmul fast float %1940, %1224
  %1942 = fadd fast float %1941, %1920
  %1943 = fsub fast float %1324, %1922
  %1944 = fmul fast float %1943, %1224
  %1945 = fadd fast float %1944, %1922
  %1946 = fsub fast float %1323, %1924
  %1947 = fmul fast float %1946, %1224
  %1948 = fadd fast float %1947, %1924
  %1949 = fmul fast float %1322, %1224
  %1950 = fmul fast float %1321, %1224
  %1951 = fmul fast float %1320, %1224
  %1952 = fmul fast float %1319, %1224
  %1953 = fmul fast float %1318, %1224
  %1954 = fsub fast float %1317, %1917
  %1955 = fmul fast float %1954, %1224
  %1956 = fadd fast float %1955, %1917
  %1957 = fsub fast float %1316, %1926
  %1958 = fmul fast float %1957, %1224
  %1959 = fadd fast float %1958, %1926
  %1960 = fsub fast float %1315, %1928
  %1961 = fmul fast float %1960, %1224
  %1962 = fadd fast float %1961, %1928
  %1963 = fsub fast float %1314, %1930
  %1964 = fmul fast float %1963, %1224
  %1965 = fadd fast float %1964, %1930
  %1966 = fmul fast float %1313, %1224
  %1967 = fmul fast float %1312, %1224
  %1968 = fmul fast float %1311, %1224
  %1969 = fmul fast float %1310, %1224
  %1970 = fmul fast float %1309, %1224
  %1971 = fsub fast float %1308, %1918
  %1972 = fmul fast float %1971, %1224
  %1973 = fadd fast float %1972, %1918
  %1974 = fsub fast float %1307, %1932
  %1975 = fmul fast float %1974, %1224
  %1976 = fadd fast float %1975, %1932
  %1977 = fsub fast float %1306, %1934
  %1978 = fmul fast float %1977, %1224
  %1979 = fadd fast float %1978, %1934
  %1980 = fsub fast float %1305, %1936
  %1981 = fmul fast float %1980, %1224
  %1982 = fadd fast float %1981, %1936
  %1983 = fmul fast float %1304, %1224
  %1984 = fmul fast float %1303, %1224
  %1985 = fmul fast float %1302, %1224
  %1986 = fmul fast float %1301, %1224
  %1987 = fmul fast float %1300, %1224
  br label %1988

; <label>:1988                                    ; preds = %1902, %1299
  %1989 = phi float [ %1987, %1902 ], [ %1300, %1299 ]
  %1990 = phi float [ %1986, %1902 ], [ %1301, %1299 ]
  %1991 = phi float [ %1985, %1902 ], [ %1302, %1299 ]
  %1992 = phi float [ %1984, %1902 ], [ %1303, %1299 ]
  %1993 = phi float [ %1983, %1902 ], [ %1304, %1299 ]
  %1994 = phi float [ %1982, %1902 ], [ %1305, %1299 ]
  %1995 = phi float [ %1979, %1902 ], [ %1306, %1299 ]
  %1996 = phi float [ %1976, %1902 ], [ %1307, %1299 ]
  %1997 = phi float [ %1973, %1902 ], [ %1308, %1299 ]
  %1998 = phi float [ %1970, %1902 ], [ %1309, %1299 ]
  %1999 = phi float [ %1969, %1902 ], [ %1310, %1299 ]
  %2000 = phi float [ %1968, %1902 ], [ %1311, %1299 ]
  %2001 = phi float [ %1967, %1902 ], [ %1312, %1299 ]
  %2002 = phi float [ %1966, %1902 ], [ %1313, %1299 ]
  %2003 = phi float [ %1965, %1902 ], [ %1314, %1299 ]
  %2004 = phi float [ %1962, %1902 ], [ %1315, %1299 ]
  %2005 = phi float [ %1959, %1902 ], [ %1316, %1299 ]
  %2006 = phi float [ %1956, %1902 ], [ %1317, %1299 ]
  %2007 = phi float [ %1953, %1902 ], [ %1318, %1299 ]
  %2008 = phi float [ %1952, %1902 ], [ %1319, %1299 ]
  %2009 = phi float [ %1951, %1902 ], [ %1320, %1299 ]
  %2010 = phi float [ %1950, %1902 ], [ %1321, %1299 ]
  %2011 = phi float [ %1949, %1902 ], [ %1322, %1299 ]
  %2012 = phi float [ %1948, %1902 ], [ %1323, %1299 ]
  %2013 = phi float [ %1945, %1902 ], [ %1324, %1299 ]
  %2014 = phi float [ %1942, %1902 ], [ %1325, %1299 ]
  %2015 = phi float [ %1939, %1902 ], [ %1326, %1299 ]
  %2016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %2017 = extractvalue %dx.types.CBufRet.f32 %2016, 2
  %2018 = fmul fast float %2017, %2017
  %2019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %2020 = extractvalue %dx.types.CBufRet.f32 %2019, 0
  %2021 = extractvalue %dx.types.CBufRet.f32 %2019, 1
  %2022 = extractvalue %dx.types.CBufRet.f32 %2019, 2
  %2023 = fmul fast float %2015, 0x3FD20DD760000000
  %2024 = fmul fast float %2022, %2013
  %2025 = fmul fast float %2022, %2022
  %2026 = fmul fast float %2025, 0x3FEE471020000000
  %2027 = fadd fast float %2026, 0xBFD42F6020000000
  %2028 = fmul fast float %2027, %2009
  %2029 = fmul fast float %2020, %2012
  %2030 = fmul fast float %2021, %2014
  %2031 = fmul fast float %2022, 0x3FF17B1420000000
  %2032 = fmul fast float %2018, %2008
  %2033 = fmul fast float %2032, %2020
  %2034 = fmul fast float %2033, %2031
  %2035 = fmul fast float %2018, %2010
  %2036 = fmul fast float %2035, %2021
  %2037 = fmul fast float %2036, %2031
  %2038 = fmul fast float %2020, %2020
  %2039 = fmul fast float %2021, %2021
  %2040 = fsub fast float %2038, %2039
  %2041 = fmul fast float %2007, 0x3FE17B1420000000
  %2042 = fmul fast float %2041, %2040
  %2043 = fmul fast float %2011, 0x3FF17B1420000000
  %2044 = fmul fast float %2043, %2021
  %2045 = fmul fast float %2044, %2020
  %2046 = fadd fast float %2042, %2045
  %2047 = fadd fast float %2046, %2028
  %2048 = fmul fast float %2047, %2018
  %2049 = fsub fast float %2030, %2024
  %2050 = fadd fast float %2049, %2029
  %2051 = fmul fast float %2050, 0x3FDF454380000000
  %2052 = fmul fast float %2051, %2017
  %2053 = fsub fast float %2023, %2034
  %2054 = fsub fast float %2053, %2037
  %2055 = fadd fast float %2054, %2048
  %2056 = fadd fast float %2055, %2052
  %2057 = fmul fast float %2006, 0x3FD20DD760000000
  %2058 = fmul fast float %2022, %2004
  %2059 = fmul fast float %2027, %2000
  %2060 = fmul fast float %2020, %2003
  %2061 = fmul fast float %2021, %2005
  %2062 = fmul fast float %2018, %1999
  %2063 = fmul fast float %2062, %2020
  %2064 = fmul fast float %2063, %2031
  %2065 = fmul fast float %2018, %2001
  %2066 = fmul fast float %2065, %2021
  %2067 = fmul fast float %2066, %2031
  %2068 = fmul fast float %1998, 0x3FE17B1420000000
  %2069 = fmul fast float %2068, %2040
  %2070 = fmul fast float %2002, 0x3FF17B1420000000
  %2071 = fmul fast float %2070, %2021
  %2072 = fmul fast float %2071, %2020
  %2073 = fadd fast float %2069, %2072
  %2074 = fadd fast float %2073, %2059
  %2075 = fmul fast float %2074, %2018
  %2076 = fsub fast float %2061, %2058
  %2077 = fadd fast float %2076, %2060
  %2078 = fmul fast float %2077, 0x3FDF454380000000
  %2079 = fmul fast float %2078, %2017
  %2080 = fsub fast float %2057, %2064
  %2081 = fsub fast float %2080, %2067
  %2082 = fadd fast float %2081, %2075
  %2083 = fadd fast float %2082, %2079
  %2084 = fmul fast float %1997, 0x3FD20DD760000000
  %2085 = fmul fast float %2022, %1995
  %2086 = fmul fast float %2027, %1991
  %2087 = fmul fast float %2020, %1994
  %2088 = fmul fast float %2021, %1996
  %2089 = fmul fast float %2018, %1990
  %2090 = fmul fast float %2089, %2020
  %2091 = fmul fast float %2090, %2031
  %2092 = fmul fast float %2018, %1992
  %2093 = fmul fast float %2092, %2021
  %2094 = fmul fast float %2093, %2031
  %2095 = fmul fast float %1989, 0x3FE17B1420000000
  %2096 = fmul fast float %2095, %2040
  %2097 = fmul fast float %1993, 0x3FF17B1420000000
  %2098 = fmul fast float %2097, %2021
  %2099 = fmul fast float %2098, %2020
  %2100 = fadd fast float %2096, %2099
  %2101 = fadd fast float %2100, %2086
  %2102 = fmul fast float %2101, %2018
  %2103 = fsub fast float %2088, %2085
  %2104 = fadd fast float %2103, %2087
  %2105 = fmul fast float %2104, 0x3FDF454380000000
  %2106 = fmul fast float %2105, %2017
  %2107 = fsub fast float %2084, %2091
  %2108 = fsub fast float %2107, %2094
  %2109 = fadd fast float %2108, %2102
  %2110 = fadd fast float %2109, %2106
  %2111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2112 = extractvalue %dx.types.CBufRet.f32 %2111, 3
  %2113 = extractvalue %dx.types.CBufRet.f32 %1165, 0
  %2114 = fmul fast float %2113, %2112
  %2115 = fmul fast float %2114, %2056
  %2116 = fmul fast float %2114, %2083
  %2117 = fmul fast float %2114, %2110
  %2118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2119 = extractvalue %dx.types.CBufRet.f32 %2118, 3
  %2120 = fcmp fast une float %2119, 0.000000e+00
  %2121 = extractvalue %dx.types.CBufRet.f32 %2118, 0
  %2122 = extractvalue %dx.types.CBufRet.f32 %2118, 1
  %2123 = extractvalue %dx.types.CBufRet.f32 %2118, 2
  br i1 %2120, label %2124, label %2146, !dx.controlflow.hints !92

; <label>:2124                                    ; preds = %1988
  %2125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %2126 = extractvalue %dx.types.CBufRet.f32 %2125, 0
  %2127 = extractvalue %dx.types.CBufRet.f32 %2125, 1
  %2128 = extractvalue %dx.types.CBufRet.f32 %2125, 2
  %2129 = call float @dx.op.dot3.f32(i32 55, float %2121, float %2122, float %2123, float %119, float %120, float %121)  ; Dot3(ax,ay,az,bx,by,bz)
  %2130 = fcmp fast ogt float %1175, 0.000000e+00
  %2131 = select i1 %2130, float 1.000000e+00, float -1.000000e+00
  %2132 = fmul fast float %2131, 5.000000e-01
  %2133 = fmul fast float %2132, %2129
  %2134 = fmul fast float %2131, %1175
  %2135 = fadd fast float %2133, 4.921875e-01
  %2136 = fadd fast float %2134, -3.125000e-02
  %2137 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %2135, float 0x3FB25F3060000000, float %2136, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2138 = extractvalue %dx.types.ResRet.f32 %2137, 0
  %2139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %2140 = extractvalue %dx.types.CBufRet.f32 %2139, 0
  %2141 = fmul fast float %2138, 0x400921FB60000000
  %2142 = fmul fast float %2141, %2140
  %2143 = fmul fast float %2142, %2126
  %2144 = fmul fast float %2142, %2127
  %2145 = fmul fast float %2142, %2128
  br label %2146

; <label>:2146                                    ; preds = %2124, %1988
  %2147 = phi float [ %2143, %2124 ], [ 0.000000e+00, %1988 ]
  %2148 = phi float [ %2144, %2124 ], [ 0.000000e+00, %1988 ]
  %2149 = phi float [ %2145, %2124 ], [ 0.000000e+00, %1988 ]
  %2150 = fdiv fast float 1.000000e+00, %2121
  %2151 = fdiv fast float 1.000000e+00, %2122
  %2152 = fdiv fast float 1.000000e+00, %2123
  %2153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %2154 = extractvalue %dx.types.CBufRet.f32 %2153, 0
  %2155 = fmul fast float %2154, %2121
  %2156 = fmul fast float %2154, %2122
  %2157 = fmul fast float %2154, %2123
  %2158 = fadd fast float %2155, %336
  %2159 = fsub fast float -0.000000e+00, %2158
  %2160 = fadd fast float %2156, %337
  %2161 = fsub fast float -0.000000e+00, %2160
  %2162 = fadd fast float %2157, %338
  br i1 %352, label %2234, label %2163, !dx.controlflow.hints !51

; <label>:2163                                    ; preds = %2146
  %2164 = extractvalue %dx.types.CBufRet.f32 %2153, 1
  %2165 = fcmp fast ogt float %2164, %2154
  br i1 %2165, label %2166, label %2168, !dx.controlflow.hints !52

; <label>:2166                                    ; preds = %2163
  %2167 = fsub fast float %2164, %2154
  br label %2225

; <label>:2168                                    ; preds = %2163
  %2169 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %2170 = extractvalue %dx.types.CBufRet.i32 %2169, 3
  %2171 = icmp eq i32 %2170, 0
  %2172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %2173 = extractvalue %dx.types.CBufRet.f32 %2172, 2
  %2174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %2175 = extractvalue %dx.types.CBufRet.f32 %2174, 2
  %2176 = fsub fast float %2173, %2162
  %2177 = fadd fast float %2176, %2175
  %2178 = fsub fast float 0xC7EFFFFFE0000000, %2162
  br i1 %2171, label %2188, label %2179, !dx.controlflow.hints !45

; <label>:2179                                    ; preds = %2168
  %2180 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2159, float %2161, float %2177)  ; Dot3(ax,ay,az,bx,by,bz)
  %2181 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2121, float %2122, float %2123)  ; Dot3(ax,ay,az,bx,by,bz)
  %2182 = fdiv fast float 1.000000e+00, %2181
  %2183 = fmul fast float %2182, %2180
  %2184 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2159, float %2161, float %2178)  ; Dot3(ax,ay,az,bx,by,bz)
  %2185 = fmul fast float %2182, %2184
  %2186 = call float @dx.op.binary.f32(i32 36, float %2183, float %2185)  ; FMin(a,b)
  %2187 = call float @dx.op.binary.f32(i32 35, float %2183, float %2185)  ; FMax(a,b)
  br label %2218

; <label>:2188                                    ; preds = %2168
  %2189 = extractvalue %dx.types.CBufRet.f32 %2172, 0
  %2190 = extractvalue %dx.types.CBufRet.f32 %2172, 1
  %2191 = extractvalue %dx.types.CBufRet.f32 %2174, 0
  %2192 = extractvalue %dx.types.CBufRet.f32 %2174, 1
  %2193 = fsub fast float %2189, %2158
  %2194 = fmul fast float %2150, %2193
  %2195 = fadd fast float %2193, %2191
  %2196 = fmul fast float %2195, %2150
  %2197 = call float @dx.op.binary.f32(i32 36, float %2194, float %2196)  ; FMin(a,b)
  %2198 = call float @dx.op.binary.f32(i32 35, float %2194, float %2196)  ; FMax(a,b)
  %2199 = fsub fast float %2190, %2160
  %2200 = fmul fast float %2151, %2199
  %2201 = fadd fast float %2199, %2192
  %2202 = fmul fast float %2201, %2151
  %2203 = call float @dx.op.binary.f32(i32 36, float %2200, float %2202)  ; FMin(a,b)
  %2204 = call float @dx.op.binary.f32(i32 35, float %2197, float %2203)  ; FMax(a,b)
  %2205 = call float @dx.op.binary.f32(i32 35, float %2200, float %2202)  ; FMax(a,b)
  %2206 = call float @dx.op.binary.f32(i32 36, float %2198, float %2205)  ; FMin(a,b)
  %2207 = fmul fast float %2152, %2178
  %2208 = fmul fast float %2152, %2177
  %2209 = call float @dx.op.binary.f32(i32 36, float %2207, float %2208)  ; FMin(a,b)
  %2210 = call float @dx.op.binary.f32(i32 35, float %2204, float %2209)  ; FMax(a,b)
  %2211 = call float @dx.op.binary.f32(i32 35, float %2207, float %2208)  ; FMax(a,b)
  %2212 = call float @dx.op.binary.f32(i32 36, float %2206, float %2211)  ; FMin(a,b)
  %2213 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2210)  ; FMax(a,b)
  %2214 = fcmp fast ult float %2212, %2213
  br i1 %2214, label %2218, label %2215, !dx.controlflow.hints !46

; <label>:2215                                    ; preds = %2188
  %2216 = call float @dx.op.binary.f32(i32 36, float %2210, float %2212)  ; FMin(a,b)
  %2217 = call float @dx.op.binary.f32(i32 35, float %2210, float %2212)  ; FMax(a,b)
  br label %2218

; <label>:2218                                    ; preds = %2215, %2188, %2179
  %2219 = phi float [ %2186, %2179 ], [ %2216, %2215 ], [ 0.000000e+00, %2188 ]
  %2220 = phi float [ %2187, %2179 ], [ %2217, %2215 ], [ 0.000000e+00, %2188 ]
  %2221 = fcmp fast ogt float %2219, 0.000000e+00
  br i1 %2221, label %2225, label %2222, !dx.controlflow.hints !53

; <label>:2222                                    ; preds = %2218
  %2223 = fcmp fast ugt float %2220, 0.000000e+00
  br i1 %2223, label %2224, label %2225, !dx.controlflow.hints !54

; <label>:2224                                    ; preds = %2222
  br label %2225

; <label>:2225                                    ; preds = %2224, %2222, %2218, %2166
  %2226 = phi float [ %2167, %2166 ], [ 0.000000e+00, %2224 ], [ 0x47EFFFFFE0000000, %2222 ], [ %2219, %2218 ]
  %2227 = phi i32 [ %208, %2166 ], [ %208, %2224 ], [ 0, %2222 ], [ %208, %2218 ]
  %2228 = icmp ne i32 %2227, 0
  %2229 = zext i1 %2228 to i32
  %2230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %2231 = extractvalue %dx.types.CBufRet.f32 %2230, 2
  %2232 = call float @dx.op.binary.f32(i32 35, float %2226, float %2231)  ; FMax(a,b)
  %2233 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %2232)  ; FMin(a,b)
  br label %2234

; <label>:2234                                    ; preds = %2225, %2146
  %2235 = phi float [ %2233, %2225 ], [ 0x47EFFFFFE0000000, %2146 ]
  %2236 = phi i32 [ %2229, %2225 ], [ 0, %2146 ]
  %2237 = fsub fast float %2158, %523
  %2238 = fsub fast float %2160, %524
  %2239 = fmul fast float %2237, %528
  %2240 = fmul fast float %2238, %529
  %2241 = call float @dx.op.binary.f32(i32 36, float %2239, float %2240)  ; FMin(a,b)
  %2242 = fcmp fast olt float %2241, 0.000000e+00
  %2243 = call float @dx.op.binary.f32(i32 35, float %2239, float %2240)  ; FMax(a,b)
  %2244 = fcmp fast ogt float %2243, 1.000000e+00
  %2245 = or i1 %2242, %2244
  %2246 = fcmp fast olt float %2162, %537
  %2247 = or i1 %2245, %2246
  %2248 = fcmp fast ogt float %2162, %544
  %2249 = or i1 %2247, %2248
  %2250 = extractvalue %dx.types.CBufRet.f32 %527, 0
  br i1 %2249, label %2251, label %2279, !dx.controlflow.hints !60

; <label>:2251                                    ; preds = %2234
  %2252 = extractvalue %dx.types.CBufRet.f32 %527, 1
  %2253 = fsub fast float %523, %2158
  %2254 = fmul fast float %2253, %2150
  %2255 = fadd fast float %2253, %2250
  %2256 = fmul fast float %2255, %2150
  %2257 = call float @dx.op.binary.f32(i32 36, float %2254, float %2256)  ; FMin(a,b)
  %2258 = call float @dx.op.binary.f32(i32 35, float %2254, float %2256)  ; FMax(a,b)
  %2259 = fsub fast float %524, %2160
  %2260 = fmul fast float %2259, %2151
  %2261 = fadd fast float %2259, %2252
  %2262 = fmul fast float %2261, %2151
  %2263 = call float @dx.op.binary.f32(i32 36, float %2260, float %2262)  ; FMin(a,b)
  %2264 = call float @dx.op.binary.f32(i32 35, float %2257, float %2263)  ; FMax(a,b)
  %2265 = call float @dx.op.binary.f32(i32 35, float %2260, float %2262)  ; FMax(a,b)
  %2266 = call float @dx.op.binary.f32(i32 36, float %2258, float %2265)  ; FMin(a,b)
  %2267 = fsub fast float %537, %2162
  %2268 = fmul fast float %2267, %2152
  %2269 = fsub fast float %541, %2162
  %2270 = fadd fast float %2269, %543
  %2271 = fmul fast float %2270, %2152
  %2272 = call float @dx.op.binary.f32(i32 36, float %2268, float %2271)  ; FMin(a,b)
  %2273 = call float @dx.op.binary.f32(i32 35, float %2264, float %2272)  ; FMax(a,b)
  %2274 = call float @dx.op.binary.f32(i32 35, float %2268, float %2271)  ; FMax(a,b)
  %2275 = call float @dx.op.binary.f32(i32 36, float %2266, float %2274)  ; FMin(a,b)
  %2276 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2273)  ; FMax(a,b)
  %2277 = fcmp fast oge float %2275, %2276
  %2278 = select i1 %2277, float %2273, float 1.000000e+07
  br label %2294

; <label>:2279                                    ; preds = %2234
  %2280 = fsub fast float 1.000000e+00, %2240
  %2281 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %26, float %2239, float %2280, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2282 = extractvalue %dx.types.ResRet.f32 %2281, 0
  %2283 = extractvalue %dx.types.ResRet.f32 %2281, 1
  %2284 = extractvalue %dx.types.ResRet.f32 %2281, 2
  %2285 = extractvalue %dx.types.ResRet.f32 %2281, 3
  %2286 = fmul fast float %2250, 9.765625e-04
  %2287 = fcmp fast oeq float %2282, 0.000000e+00
  %2288 = fcmp ule float %2162, %2284
  %2289 = fcmp uge float %2162, %2283
  %2290 = or i1 %2289, %2288
  %2291 = or i1 %2287, %2290
  %2292 = zext i1 %2291 to i32
  %2293 = xor i32 %2292, 1
  br label %2294

; <label>:2294                                    ; preds = %2279, %2251
  %2295 = phi float [ %2278, %2251 ], [ %2286, %2279 ]
  %2296 = phi float [ %323, %2251 ], [ %2282, %2279 ]
  %2297 = phi float [ %324, %2251 ], [ %2283, %2279 ]
  %2298 = phi float [ %325, %2251 ], [ %2284, %2279 ]
  %2299 = phi float [ %326, %2251 ], [ %2285, %2279 ]
  %2300 = phi i32 [ 0, %2251 ], [ %2293, %2279 ]
  %2301 = icmp eq i32 %2300, 0
  %2302 = call float @dx.op.binary.f32(i32 35, float %2295, float %632)  ; FMax(a,b)
  %2303 = call float @dx.op.binary.f32(i32 36, float %2235, float %2302)  ; FMin(a,b)
  br i1 %635, label %2359, label %2304, !dx.controlflow.hints !64

; <label>:2304                                    ; preds = %2294
  %2305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %2306 = extractvalue %dx.types.CBufRet.f32 %2305, 0
  %2307 = extractvalue %dx.types.CBufRet.f32 %2305, 1
  %2308 = extractvalue %dx.types.CBufRet.f32 %2305, 2
  %2309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %2310 = extractvalue %dx.types.CBufRet.f32 %2309, 0
  %2311 = extractvalue %dx.types.CBufRet.f32 %2309, 1
  %2312 = extractvalue %dx.types.CBufRet.f32 %2309, 2
  %2313 = fsub fast float %2158, %2310
  %2314 = fsub fast float %2160, %2311
  %2315 = fsub fast float %2162, %2312
  %2316 = fmul fast float %2313, %2306
  %2317 = fmul fast float %2314, %2307
  %2318 = fmul fast float %2315, %2308
  %2319 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %2320 = extractvalue %dx.types.CBufRet.i32 %2319, 3
  %2321 = icmp eq i32 %2320, 0
  br i1 %2321, label %2325, label %2322, !dx.controlflow.hints !65

; <label>:2322                                    ; preds = %2304
  %2323 = call float @dx.op.unary.f32(i32 22, float %2316)  ; Frc(value)
  %2324 = call float @dx.op.unary.f32(i32 22, float %2317)  ; Frc(value)
  br label %2325

; <label>:2325                                    ; preds = %2322, %2304
  %2326 = phi float [ %2323, %2322 ], [ %2316, %2304 ]
  %2327 = phi float [ %2324, %2322 ], [ %2317, %2304 ]
  %2328 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %24, float %2326, float %2327, float %2318, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2329 = extractvalue %dx.types.ResRet.f32 %2328, 0
  %2330 = fmul fast float %2329, 2.000000e+00
  %2331 = fadd fast float %2330, -1.000000e+00
  %2332 = extractvalue %dx.types.CBufRet.f32 %2305, 3
  %2333 = fmul fast float %2331, %2332
  %2334 = fcmp fast olt float %2333, 0.000000e+00
  %2335 = fcmp fast oge float %2318, 0.000000e+00
  %2336 = fcmp fast ole float %2318, 1.000000e+00
  br i1 %2321, label %2339, label %2337, !dx.controlflow.hints !66

; <label>:2337                                    ; preds = %2325
  %2338 = and i1 %2335, %2336
  br label %2349

; <label>:2339                                    ; preds = %2325
  %2340 = fcmp fast oge float %2316, 0.000000e+00
  %2341 = fcmp fast oge float %2317, 0.000000e+00
  %2342 = and i1 %2340, %2341
  %2343 = and i1 %2335, %2342
  %2344 = fcmp fast ole float %2316, 1.000000e+00
  %2345 = fcmp fast ole float %2317, 1.000000e+00
  %2346 = and i1 %2344, %2345
  %2347 = and i1 %2336, %2346
  %2348 = and i1 %2343, %2347
  br label %2349

; <label>:2349                                    ; preds = %2339, %2337
  %2350 = phi i1 [ %2338, %2337 ], [ %2348, %2339 ]
  %2351 = and i1 %2334, %2350
  %2352 = call float @dx.op.unary.f32(i32 6, float %2333)  ; FAbs(value)
  %2353 = extractvalue %dx.types.CBufRet.f32 %631, 1
  %2354 = extractvalue %dx.types.CBufRet.f32 %631, 0
  %2355 = call float @dx.op.binary.f32(i32 35, float %2352, float %2354)  ; FMax(a,b)
  %2356 = select i1 %2351, float %2353, float %2355
  %2357 = zext i1 %2351 to i32
  %2358 = call float @dx.op.binary.f32(i32 36, float %2303, float %2356)  ; FMin(a,b)
  br label %2359

; <label>:2359                                    ; preds = %2349, %2294
  %2360 = phi float [ %2358, %2349 ], [ %2303, %2294 ]
  %2361 = phi i32 [ %2357, %2349 ], [ 0, %2294 ]
  %2362 = icmp eq i32 %2236, 0
  br i1 %2362, label %2436, label %2363, !dx.controlflow.hints !67

; <label>:2363                                    ; preds = %2359
  %2364 = fmul fast float %694, %2154
  %2365 = call float @dx.op.unary.f32(i32 23, float %2364)  ; Log(value)
  %2366 = fmul fast float %2365, 0x3FE62E4300000000
  %2367 = call float @dx.op.binary.f32(i32 35, float %2366, float 1.000000e+00)  ; FMax(a,b)
  %2368 = fmul fast float %2367, 0x47EFFFFFE0000000
  %2369 = call float @dx.op.binary.f32(i32 36, float %2368, float %2360)  ; FMin(a,b)
  %2370 = call float @dx.op.binary.f32(i32 35, float %2369, float 0.000000e+00)  ; FMax(a,b)
  %2371 = fcmp fast ogt float %2370, 0x3F1A36E2E0000000
  %2372 = fadd fast float %2155, %2158
  %2373 = fadd fast float %2156, %2160
  %2374 = select i1 %2371, float %2372, float %2158
  %2375 = select i1 %2371, float %2373, float %2160
  %2376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %2377 = extractvalue %dx.types.CBufRet.f32 %2376, 0
  %2378 = extractvalue %dx.types.CBufRet.f32 %2376, 1
  %2379 = fsub fast float %2374, %2377
  %2380 = fsub fast float %2375, %2378
  %2381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %2382 = extractvalue %dx.types.CBufRet.f32 %2381, 0
  %2383 = extractvalue %dx.types.CBufRet.f32 %2381, 1
  %2384 = fmul fast float %2379, %2382
  %2385 = fmul fast float %2380, %2383
  %2386 = fsub fast float 1.000000e+00, %2385
  %2387 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %2388 = extractvalue %dx.types.CBufRet.i32 %2387, 3
  %2389 = icmp eq i32 %2388, 0
  br i1 %2389, label %2396, label %2390, !dx.controlflow.hints !55

; <label>:2390                                    ; preds = %2363
  %2391 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %25, float %2384, float %2386, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2392 = extractvalue %dx.types.ResRet.f32 %2391, 0
  %2393 = extractvalue %dx.types.ResRet.f32 %2391, 1
  %2394 = extractvalue %dx.types.ResRet.f32 %2391, 2
  %2395 = extractvalue %dx.types.ResRet.f32 %2391, 3
  br label %2402

; <label>:2396                                    ; preds = %2363
  %2397 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %26, float %2384, float %2386, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2398 = extractvalue %dx.types.ResRet.f32 %2397, 0
  %2399 = extractvalue %dx.types.ResRet.f32 %2397, 1
  %2400 = extractvalue %dx.types.ResRet.f32 %2397, 2
  %2401 = extractvalue %dx.types.ResRet.f32 %2397, 3
  br label %2402

; <label>:2402                                    ; preds = %2396, %2390
  %2403 = phi float [ %2392, %2390 ], [ %2398, %2396 ]
  %2404 = phi float [ %2393, %2390 ], [ %2399, %2396 ]
  %2405 = phi float [ %2394, %2390 ], [ %2400, %2396 ]
  %2406 = phi float [ %2395, %2390 ], [ %2401, %2396 ]
  %2407 = extractvalue %dx.types.CBufRet.f32 %2381, 3
  %2408 = fmul fast float %2407, %2404
  %2409 = fmul fast float %2408, %2403
  %2410 = fsub fast float %2408, %2409
  %2411 = fcmp fast ole float %2410, 0.000000e+00
  %2412 = extractvalue %dx.types.CBufRet.f32 %2376, 2
  %2413 = fadd fast float %2409, %2412
  %2414 = fmul fast float %2407, %2405
  %2415 = fadd fast float %2414, %2412
  %2416 = fdiv fast float 1.000000e+00, %2410
  %2417 = select i1 %2411, float 1.000000e+06, float %2416
  %2418 = fsub fast float %2162, %2413
  %2419 = fmul fast float %2417, %2418
  %2420 = call float @dx.op.unary.f32(i32 7, float %2419)  ; Saturate(value)
  %2421 = extractvalue %dx.types.CBufRet.f32 %2381, 2
  %2422 = fmul fast float %2421, %2420
  %2423 = fsub fast float %2421, %2422
  %2424 = fcmp fast olt float %2162, %2415
  %2425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %2426 = extractvalue %dx.types.CBufRet.f32 %2425, 3
  %2427 = fmul fast float %2426, 3.000000e+00
  %2428 = select i1 %2424, float %2427, float 3.000000e+00
  %2429 = fmul fast float %2423, %2428
  %2430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %2431 = extractvalue %dx.types.CBufRet.f32 %2430, 2
  %2432 = fmul fast float %2154, 0x3FD5555560000000
  %2433 = fmul fast float %2432, %2406
  %2434 = fmul fast float %2433, %2431
  %2435 = fmul fast float %2434, %2429
  br label %2436

; <label>:2436                                    ; preds = %2402, %2359
  %2437 = phi float [ %2435, %2402 ], [ 0.000000e+00, %2359 ]
  %2438 = icmp eq i32 %2361, 0
  br i1 %2438, label %2619, label %2439, !dx.controlflow.hints !69

; <label>:2439                                    ; preds = %2436
  %2440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %2441 = extractvalue %dx.types.CBufRet.f32 %2440, 3
  %2442 = fmul fast float %2441, %2154
  %2443 = fcmp fast oeq float %2442, 0.000000e+00
  br i1 %2443, label %2458, label %2444, !dx.controlflow.hints !70

; <label>:2444                                    ; preds = %2439
  %2445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %2446 = extractvalue %dx.types.CBufRet.f32 %2445, 3
  %2447 = fmul fast float %2446, %2442
  %2448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %2449 = extractvalue %dx.types.CBufRet.f32 %2448, 0
  %2450 = extractvalue %dx.types.CBufRet.f32 %2448, 1
  %2451 = extractvalue %dx.types.CBufRet.f32 %2448, 2
  %2452 = fmul fast float %2449, %2447
  %2453 = fmul fast float %2450, %2447
  %2454 = fmul fast float %2451, %2447
  %2455 = call float @dx.op.unary.f32(i32 23, float %2452)  ; Log(value)
  %2456 = call float @dx.op.unary.f32(i32 23, float %2453)  ; Log(value)
  %2457 = call float @dx.op.unary.f32(i32 23, float %2454)  ; Log(value)
  br label %2458

; <label>:2458                                    ; preds = %2444, %2439
  %2459 = phi float [ %2455, %2444 ], [ 0.000000e+00, %2439 ]
  %2460 = phi float [ %2456, %2444 ], [ 0.000000e+00, %2439 ]
  %2461 = phi float [ %2457, %2444 ], [ 0.000000e+00, %2439 ]
  %2462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %2463 = extractvalue %dx.types.CBufRet.f32 %2462, 0
  %2464 = extractvalue %dx.types.CBufRet.f32 %2462, 1
  %2465 = extractvalue %dx.types.CBufRet.f32 %2462, 2
  %2466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %2467 = extractvalue %dx.types.CBufRet.f32 %2466, 0
  %2468 = extractvalue %dx.types.CBufRet.f32 %2466, 1
  %2469 = extractvalue %dx.types.CBufRet.f32 %2466, 2
  %2470 = fsub fast float %2158, %2467
  %2471 = fsub fast float %2160, %2468
  %2472 = fsub fast float %2162, %2469
  %2473 = fmul fast float %2470, %2463
  %2474 = fmul fast float %2471, %2464
  %2475 = fmul fast float %2472, %2465
  %2476 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %2477 = extractvalue %dx.types.CBufRet.i32 %2476, 0
  %2478 = extractvalue %dx.types.CBufRet.i32 %2476, 1
  %2479 = uitofp i32 %2477 to float
  %2480 = uitofp i32 %2478 to float
  %2481 = fmul fast float %2473, %2479
  %2482 = fmul fast float %2474, %2480
  %2483 = fadd fast float %2481, 5.000000e-01
  %2484 = fadd fast float %2482, 5.000000e-01
  %2485 = call float @dx.op.unary.f32(i32 22, float %2483)  ; Frc(value)
  %2486 = call float @dx.op.unary.f32(i32 22, float %2484)  ; Frc(value)
  %2487 = call float @dx.op.unary.f32(i32 27, float %2483)  ; Round_ni(value)
  %2488 = call float @dx.op.unary.f32(i32 27, float %2484)  ; Round_ni(value)
  %2489 = fadd fast float %2487, 1.000000e+00
  %2490 = fadd fast float %2488, 1.000000e+00
  %2491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %2492 = extractvalue %dx.types.CBufRet.f32 %2491, 0
  %2493 = extractvalue %dx.types.CBufRet.f32 %2491, 1
  %2494 = fmul fast float %2492, %2489
  %2495 = fmul fast float %2493, %2490
  %2496 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %25, float %2494, float %2495, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2497 = extractvalue %dx.types.ResRet.f32 %2496, 0
  %2498 = extractvalue %dx.types.ResRet.f32 %2496, 1
  %2499 = extractvalue %dx.types.ResRet.f32 %2496, 2
  %2500 = extractvalue %dx.types.ResRet.f32 %2496, 3
  %2501 = extractvalue %dx.types.CBufRet.i32 %2476, 2
  %2502 = extractvalue %dx.types.CBufRet.f32 %2491, 2
  %2503 = uitofp i32 %2501 to float
  %2504 = fadd fast float %2503, -1.000000e+00
  %2505 = fmul fast float %2504, %2497
  %2506 = fmul fast float %2504, %2498
  %2507 = fmul fast float %2504, %2499
  %2508 = fmul fast float %2504, %2500
  %2509 = fadd fast float %2505, 5.000000e-01
  %2510 = fadd fast float %2506, 5.000000e-01
  %2511 = fadd fast float %2507, 5.000000e-01
  %2512 = fadd fast float %2508, 5.000000e-01
  %2513 = fptoui float %2509 to i32
  %2514 = fptoui float %2510 to i32
  %2515 = fptoui float %2511 to i32
  %2516 = fptoui float %2512 to i32
  %2517 = uitofp i32 %2513 to float
  %2518 = uitofp i32 %2514 to float
  %2519 = uitofp i32 %2515 to float
  %2520 = uitofp i32 %2516 to float
  %2521 = fadd fast float %2517, 5.000000e-01
  %2522 = fadd fast float %2518, 5.000000e-01
  %2523 = fadd fast float %2519, 5.000000e-01
  %2524 = fadd fast float %2520, 5.000000e-01
  %2525 = fmul fast float %2521, %2502
  %2526 = fmul fast float %2522, %2502
  %2527 = fmul fast float %2523, %2502
  %2528 = fmul fast float %2524, %2502
  %2529 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %26, float %2525, float %2475, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2530 = extractvalue %dx.types.ResRet.f32 %2529, 0
  %2531 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %26, float %2526, float %2475, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2532 = extractvalue %dx.types.ResRet.f32 %2531, 0
  %2533 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %26, float %2527, float %2475, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2534 = extractvalue %dx.types.ResRet.f32 %2533, 0
  %2535 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %26, float %2528, float %2475, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2536 = extractvalue %dx.types.ResRet.f32 %2535, 0
  %2537 = fsub fast float %2534, %2536
  %2538 = fmul fast float %2537, %2485
  %2539 = fadd fast float %2538, %2536
  %2540 = fsub fast float %2532, %2530
  %2541 = fmul fast float %2540, %2485
  %2542 = fadd fast float %2541, %2530
  %2543 = fsub fast float %2542, %2539
  %2544 = fmul fast float %2543, %2486
  %2545 = fadd fast float %2544, %2539
  %2546 = fcmp fast ogt float %2545, 0.000000e+00
  br i1 %2546, label %2547, label %2615, !dx.controlflow.hints !71

; <label>:2547                                    ; preds = %2458
  %2548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %2549 = extractvalue %dx.types.CBufRet.f32 %2548, 0
  %2550 = extractvalue %dx.types.CBufRet.f32 %2548, 1
  %2551 = extractvalue %dx.types.CBufRet.f32 %2548, 2
  %2552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %2553 = extractvalue %dx.types.CBufRet.f32 %2552, 0
  %2554 = extractvalue %dx.types.CBufRet.f32 %2552, 1
  %2555 = extractvalue %dx.types.CBufRet.f32 %2552, 2
  %2556 = fmul fast float %2471, %2463
  %2557 = fmul fast float %2472, %2463
  %2558 = fadd fast float %2473, %2553
  %2559 = fadd fast float %2556, %2554
  %2560 = fadd fast float %2557, %2555
  %2561 = fmul fast float %2558, %2549
  %2562 = fmul fast float %2559, %2549
  %2563 = fmul fast float %2560, %2549
  %2564 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %23, float %2561, float %2562, float %2563, float undef, i32 0, i32 0, i32 0, float %2459)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2565 = extractvalue %dx.types.ResRet.f32 %2564, 0
  %2566 = fmul fast float %2558, %2550
  %2567 = fmul fast float %2559, %2550
  %2568 = fmul fast float %2560, %2550
  %2569 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %23, float %2566, float %2567, float %2568, float undef, i32 0, i32 0, i32 0, float %2460)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2570 = extractvalue %dx.types.ResRet.f32 %2569, 1
  %2571 = fmul fast float %2558, %2551
  %2572 = fmul fast float %2559, %2551
  %2573 = fmul fast float %2560, %2551
  %2574 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %23, float %2571, float %2572, float %2573, float undef, i32 0, i32 0, i32 0, float %2461)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2575 = extractvalue %dx.types.ResRet.f32 %2574, 2
  %2576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %2577 = extractvalue %dx.types.CBufRet.f32 %2576, 1
  %2578 = fmul fast float %2570, %2565
  %2579 = fmul fast float %2578, %2575
  %2580 = call float @dx.op.unary.f32(i32 23, float %2579)  ; Log(value)
  %2581 = fmul fast float %2580, %2577
  %2582 = call float @dx.op.unary.f32(i32 21, float %2581)  ; Exp(value)
  %2583 = extractvalue %dx.types.CBufRet.f32 %2576, 2
  %2584 = fmul fast float %2545, %2545
  %2585 = fmul fast float %2584, %2582
  %2586 = fmul fast float %2585, %2583
  %2587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %2588 = extractvalue %dx.types.CBufRet.f32 %2587, 3
  %2589 = fmul fast float %2588, %2586
  %2590 = bitcast float %2589 to i32
  %2591 = sitofp i32 %2590 to float
  %2592 = fptosi float %2591 to i32
  %2593 = bitcast i32 %2592 to float
  %2594 = fsub fast float 1.000000e+00, %2586
  %2595 = bitcast float %2594 to i32
  %2596 = sitofp i32 %2595 to float
  %2597 = fptosi float %2596 to i32
  %2598 = bitcast i32 %2597 to float
  %2599 = fadd fast float %2593, %2598
  %2600 = bitcast float %2599 to i32
  %2601 = sub nsw i32 2129859010, %2600
  %2602 = bitcast i32 %2601 to float
  %2603 = fmul fast float %2602, %2593
  %2604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2605 = extractvalue %dx.types.CBufRet.f32 %2604, 2
  %2606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %2607 = extractvalue %dx.types.CBufRet.f32 %2606, 0
  %2608 = fmul fast float %2603, %2607
  %2609 = fadd fast float %2608, 1.000000e+00
  %2610 = bitcast float %2609 to i32
  %2611 = sub nsw i32 2129859010, %2610
  %2612 = bitcast i32 %2611 to float
  %2613 = fmul fast float %2603, %2605
  %2614 = fmul fast float %2613, %2612
  br label %2615

; <label>:2615                                    ; preds = %2547, %2458
  %2616 = phi float [ %2614, %2547 ], [ %2545, %2458 ]
  %2617 = fmul fast float %2616, %2154
  %2618 = fadd fast float %2617, %2437
  br label %2619

; <label>:2619                                    ; preds = %2615, %2436
  %2620 = phi float [ %2618, %2615 ], [ %2437, %2436 ]
  br i1 %2301, label %2746, label %2621, !dx.controlflow.hints !72

; <label>:2621                                    ; preds = %2619
  %2622 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %2623 = extractvalue %dx.types.CBufRet.i32 %2622, 0
  %2624 = icmp ne i32 %2623, 0
  %2625 = zext i1 %2624 to i32
  %2626 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %2627 = extractvalue %dx.types.CBufRet.i32 %2626, 0
  %2628 = icmp eq i32 %2627, 0
  br i1 %2628, label %2662, label %2629

; <label>:2629                                    ; preds = %2621
  br label %2630

; <label>:2630                                    ; preds = %2657, %2629
  %2631 = phi i32 [ %2658, %2657 ], [ 0, %2629 ]
  %2632 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2631, i32 0)  ; BufferLoad(srv,index,wot)
  %2633 = extractvalue %dx.types.ResRet.f32 %2632, 0
  %2634 = extractvalue %dx.types.ResRet.f32 %2632, 1
  %2635 = extractvalue %dx.types.ResRet.f32 %2632, 2
  %2636 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2631, i32 16)  ; BufferLoad(srv,index,wot)
  %2637 = extractvalue %dx.types.ResRet.f32 %2636, 0
  %2638 = extractvalue %dx.types.ResRet.f32 %2636, 1
  %2639 = extractvalue %dx.types.ResRet.f32 %2636, 2
  %2640 = fsub fast float %2633, %2637
  %2641 = fsub fast float %2634, %2638
  %2642 = fsub fast float %2635, %2639
  %2643 = fadd fast float %2637, %2633
  %2644 = fadd fast float %2638, %2634
  %2645 = fadd fast float %2639, %2635
  %2646 = fcmp fast olt float %2158, %2640
  %2647 = fcmp fast olt float %2160, %2641
  %2648 = fcmp fast olt float %2162, %2642
  %2649 = or i1 %2646, %2647
  %2650 = or i1 %2648, %2649
  %2651 = fcmp fast ogt float %2158, %2643
  %2652 = fcmp fast ogt float %2160, %2644
  %2653 = fcmp fast ogt float %2162, %2645
  %2654 = or i1 %2651, %2652
  %2655 = or i1 %2653, %2654
  %2656 = or i1 %2650, %2655
  br i1 %2656, label %2657, label %2660, !dx.controlflow.hints !73

; <label>:2657                                    ; preds = %2630
  %2658 = add nuw i32 %2631, 1
  %2659 = icmp ult i32 %2658, %2627
  br i1 %2659, label %2630, label %2660

; <label>:2660                                    ; preds = %2657, %2630
  %2661 = phi i32 [ 255, %2657 ], [ %2631, %2630 ]
  br label %2662

; <label>:2662                                    ; preds = %2660, %2621
  %2663 = phi i32 [ 255, %2621 ], [ %2661, %2660 ]
  %2664 = icmp eq i32 %2663, 255
  br i1 %2664, label %2670, label %2665, !dx.controlflow.hints !74

; <label>:2665                                    ; preds = %2662
  %2666 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2663, i32 156)  ; BufferLoad(srv,index,wot)
  %2667 = extractvalue %dx.types.ResRet.i32 %2666, 0
  %2668 = icmp ne i32 %2667, 0
  %2669 = zext i1 %2668 to i32
  br label %2670

; <label>:2670                                    ; preds = %2665, %2662
  %2671 = phi i32 [ %2669, %2665 ], [ %2625, %2662 ]
  %2672 = icmp eq i32 %2671, 0
  br i1 %2672, label %2673, label %2742, !dx.controlflow.hints !75

; <label>:2673                                    ; preds = %2670
  %2674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %2675 = extractvalue %dx.types.CBufRet.f32 %2674, 3
  %2676 = extractvalue %dx.types.CBufRet.f32 %540, 0
  %2677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %2678 = extractvalue %dx.types.CBufRet.f32 %2677, 2
  %2679 = extractvalue %dx.types.CBufRet.f32 %2677, 3
  br i1 %2664, label %2690, label %2680, !dx.controlflow.hints !76

; <label>:2680                                    ; preds = %2673
  %2681 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2663, i32 60)  ; BufferLoad(srv,index,wot)
  %2682 = extractvalue %dx.types.ResRet.f32 %2681, 0
  %2683 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2663, i32 64)  ; BufferLoad(srv,index,wot)
  %2684 = extractvalue %dx.types.ResRet.f32 %2683, 0
  %2685 = extractvalue %dx.types.ResRet.f32 %2683, 1
  %2686 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2663, i32 72)  ; BufferLoad(srv,index,wot)
  %2687 = extractvalue %dx.types.ResRet.f32 %2686, 0
  %2688 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2663, i32 96)  ; BufferLoad(srv,index,wot)
  %2689 = extractvalue %dx.types.ResRet.f32 %2688, 0
  br label %2690

; <label>:2690                                    ; preds = %2680, %2673
  %2691 = phi float [ %2682, %2680 ], [ %543, %2673 ]
  %2692 = phi float [ %2687, %2680 ], [ %541, %2673 ]
  %2693 = phi float [ %2689, %2680 ], [ %2676, %2673 ]
  %2694 = phi float [ %2684, %2680 ], [ %2678, %2673 ]
  %2695 = phi float [ %2685, %2680 ], [ %2679, %2673 ]
  %2696 = call float @dx.op.binary.f32(i32 35, float %2296, float 0.000000e+00)  ; FMax(a,b)
  %2697 = call float @dx.op.binary.f32(i32 36, float %2696, float 1.000000e+00)  ; FMin(a,b)
  %2698 = call float @dx.op.unary.f32(i32 24, float %2697)  ; Sqrt(value)
  %2699 = call float @dx.op.binary.f32(i32 35, float %2299, float 0x3F847AE140000000)  ; FMax(a,b)
  %2700 = fsub fast float %2297, %2162
  %2701 = fsub fast float %2162, %2298
  %2702 = call float @dx.op.binary.f32(i32 36, float %2701, float %2700)  ; FMin(a,b)
  %2703 = fdiv fast float %2702, %2699
  %2704 = call float @dx.op.unary.f32(i32 7, float %2703)  ; Saturate(value)
  %2705 = fsub fast float %2162, %2692
  %2706 = fdiv fast float %2705, %2691
  %2707 = call float @dx.op.unary.f32(i32 7, float %2706)  ; Saturate(value)
  %2708 = fsub fast float 1.000000e+00, %2707
  %2709 = fmul float %2704, %2708
  %2710 = fmul float %2709, %2709
  %2711 = fmul fast float %2698, %2675
  %2712 = fmul fast float %2711, %2710
  %2713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %2714 = extractvalue %dx.types.CBufRet.f32 %2713, 2
  %2715 = extractvalue %dx.types.CBufRet.f32 %2713, 1
  %2716 = fsub fast float %2712, %2715
  %2717 = fsub fast float %2714, %2715
  %2718 = fdiv fast float %2716, %2717
  %2719 = call float @dx.op.unary.f32(i32 7, float %2718)  ; Saturate(value)
  %2720 = fmul fast float %2719, %2693
  %2721 = fcmp fast ogt float %2695, 0.000000e+00
  br i1 %2721, label %2722, label %2742, !dx.controlflow.hints !77

; <label>:2722                                    ; preds = %2690
  %2723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2724 = extractvalue %dx.types.CBufRet.f32 %2723, 0
  %2725 = extractvalue %dx.types.CBufRet.f32 %2723, 1
  %2726 = extractvalue %dx.types.CBufRet.f32 %2723, 2
  %2727 = fsub fast float %2158, %2724
  %2728 = fsub fast float %2160, %2725
  %2729 = fsub fast float %2162, %2726
  %2730 = fmul fast float %2727, %2727
  %2731 = fmul fast float %2728, %2728
  %2732 = fadd fast float %2730, %2731
  %2733 = fmul fast float %2729, %2729
  %2734 = fadd fast float %2732, %2733
  %2735 = call float @dx.op.unary.f32(i32 24, float %2734)  ; Sqrt(value)
  %2736 = fsub fast float %2735, %2694
  %2737 = fsub fast float %2695, %2694
  %2738 = fdiv fast float %2736, %2737
  %2739 = call float @dx.op.unary.f32(i32 7, float %2738)  ; Saturate(value)
  %2740 = fmul fast float %2739, %2739
  %2741 = fmul fast float %2740, %2720
  br label %2742

; <label>:2742                                    ; preds = %2722, %2690, %2670
  %2743 = phi float [ 0.000000e+00, %2670 ], [ %2741, %2722 ], [ %2720, %2690 ]
  %2744 = fmul fast float %2743, %2154
  %2745 = fadd fast float %2744, %2620
  br label %2746

; <label>:2746                                    ; preds = %2742, %2619
  %2747 = phi float [ %2745, %2742 ], [ %2620, %2619 ]
  %2748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %2749 = extractvalue %dx.types.CBufRet.f32 %2748, 3
  %2750 = fmul fast float %2747, 0xBFF7154760000000
  %2751 = fmul fast float %2750, %2749
  %2752 = call float @dx.op.unary.f32(i32 21, float %2751)  ; Exp(value)
  %2753 = call float @dx.op.unary.f32(i32 7, float %2752)  ; Saturate(value)
  %2754 = fmul fast float %2753, %2147
  %2755 = fmul fast float %2753, %2148
  %2756 = fmul fast float %2753, %2149
  %2757 = fadd fast float %2754, %2115
  %2758 = fadd fast float %2755, %2116
  %2759 = fadd fast float %2756, %2117
  %2760 = fsub fast float 1.000000e+00, %1184
  %2761 = fmul fast float %1176, %332
  %2762 = fmul fast float %2761, %2760
  %2763 = fmul fast float %2762, %2757
  %2764 = fmul fast float %1177, %332
  %2765 = fmul fast float %2764, %2760
  %2766 = fmul fast float %2765, %2758
  %2767 = fmul fast float %1178, %332
  %2768 = fmul fast float %2767, %2760
  %2769 = fmul fast float %2768, %2759
  %2770 = fadd fast float %2763, %333
  %2771 = fadd fast float %2766, %334
  %2772 = fadd fast float %2769, %335
  %2773 = fdiv fast float %1161, %704
  %2774 = fadd fast float %704, %339
  %2775 = fmul fast float %339, %339
  %2776 = fmul fast float %2774, %2774
  %2777 = fsub fast float %2775, %2776
  %2778 = fmul fast float %2777, -5.000000e-01
  %2779 = fmul fast float %2778, %2773
  %2780 = fadd fast float %2779, %331
  %2781 = fadd fast float %1161, %342
  %2782 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2783 = extractvalue %dx.types.CBufRet.i32 %2782, 0
  %2784 = icmp eq i32 %2783, 0
  br i1 %2784, label %2811, label %2785, !dx.controlflow.hints !93

; <label>:2785                                    ; preds = %2746
  %2786 = icmp ne i32 %347, 0
  %2787 = zext i1 %2786 to i32
  %2788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %2789 = extractvalue %dx.types.CBufRet.f32 %2788, 2
  %2790 = extractvalue %dx.types.CBufRet.f32 %2788, 0
  %2791 = fsub fast float %2774, %2790
  %2792 = fmul fast float %2791, %2789
  %2793 = call float @dx.op.unary.f32(i32 7, float %2792)  ; Saturate(value)
  %2794 = fadd fast float %2793, -5.000000e-01
  %2795 = fmul fast float %2794, 2.000000e+00
  %2796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %2797 = extractvalue %dx.types.CBufRet.f32 %2796, 2
  %2798 = fcmp fast olt float %2795, %2797
  br i1 %2798, label %2799, label %2811, !dx.controlflow.hints !94

; <label>:2799                                    ; preds = %2785
  %2800 = fmul fast float %2795, %2795
  %2801 = fmul fast float %2760, %332
  %2802 = fmul fast float %2795, %2801
  %2803 = fmul fast float %2800, %2801
  %2804 = fmul fast float %2802, %2800
  %2805 = fmul fast float %2800, %2800
  %2806 = fmul fast float %2805, %2801
  %2807 = fadd fast float %2802, %343
  %2808 = fadd fast float %2803, %344
  %2809 = fadd fast float %2804, %345
  %2810 = fadd fast float %2806, %346
  br label %2811

; <label>:2811                                    ; preds = %2799, %2785, %2746
  %2812 = phi float [ %343, %2746 ], [ %2807, %2799 ], [ %343, %2785 ]
  %2813 = phi float [ %344, %2746 ], [ %2808, %2799 ], [ %344, %2785 ]
  %2814 = phi float [ %345, %2746 ], [ %2809, %2799 ], [ %345, %2785 ]
  %2815 = phi float [ %346, %2746 ], [ %2810, %2799 ], [ %346, %2785 ]
  %2816 = phi i32 [ %347, %2746 ], [ 1, %2799 ], [ %2787, %2785 ]
  %2817 = fmul fast float %1184, %332
  br label %2818

; <label>:2818                                    ; preds = %2811, %1179
  %2819 = phi float [ %1180, %1179 ], [ %2774, %2811 ]
  %2820 = phi float [ %323, %1179 ], [ %2296, %2811 ]
  %2821 = phi float [ %324, %1179 ], [ %2297, %2811 ]
  %2822 = phi float [ %325, %1179 ], [ %2298, %2811 ]
  %2823 = phi float [ %326, %1179 ], [ %2299, %2811 ]
  %2824 = phi float [ %331, %1179 ], [ %2780, %2811 ]
  %2825 = phi float [ %332, %1179 ], [ %2817, %2811 ]
  %2826 = phi float [ %333, %1179 ], [ %2770, %2811 ]
  %2827 = phi float [ %334, %1179 ], [ %2771, %2811 ]
  %2828 = phi float [ %335, %1179 ], [ %2772, %2811 ]
  %2829 = phi float [ %342, %1179 ], [ %2781, %2811 ]
  %2830 = phi float [ %343, %1179 ], [ %2812, %2811 ]
  %2831 = phi float [ %344, %1179 ], [ %2813, %2811 ]
  %2832 = phi float [ %345, %1179 ], [ %2814, %2811 ]
  %2833 = phi float [ %346, %1179 ], [ %2815, %2811 ]
  %2834 = phi i32 [ %347, %1179 ], [ %2816, %2811 ]
  %2835 = fmul fast float %704, %119
  %2836 = fmul fast float %704, %120
  %2837 = fmul fast float %704, %121
  %2838 = fadd fast float %2835, %336
  %2839 = fadd fast float %2836, %337
  %2840 = fadd fast float %2837, %338
  %2841 = fcmp fast olt float %2819, %299
  %2842 = extractvalue %dx.types.CBufRet.f32 %1165, 2
  %2843 = fcmp fast olt float %2842, %2825
  %2844 = and i1 %2841, %2843
  br i1 %2844, label %322, label %2845

; <label>:2845                                    ; preds = %2818
  br label %2846

; <label>:2846                                    ; preds = %2845, %271
  %2847 = phi float [ 0.000000e+00, %271 ], [ %2824, %2845 ]
  %2848 = phi float [ 1.000000e+00, %271 ], [ %2825, %2845 ]
  %2849 = phi float [ 0.000000e+00, %271 ], [ %2826, %2845 ]
  %2850 = phi float [ 0.000000e+00, %271 ], [ %2827, %2845 ]
  %2851 = phi float [ 0.000000e+00, %271 ], [ %2828, %2845 ]
  %2852 = phi float [ 0.000000e+00, %271 ], [ %2829, %2845 ]
  %2853 = phi float [ 0.000000e+00, %271 ], [ %2830, %2845 ]
  %2854 = phi float [ 0.000000e+00, %271 ], [ %2831, %2845 ]
  %2855 = phi float [ 0.000000e+00, %271 ], [ %2832, %2845 ]
  %2856 = phi float [ 0.000000e+00, %271 ], [ %2833, %2845 ]
  %2857 = phi i32 [ 0, %271 ], [ %2834, %2845 ]
  %2858 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2859 = extractvalue %dx.types.CBufRet.i32 %2858, 0
  %2860 = icmp eq i32 %2859, 0
  br i1 %2860, label %2902, label %2861, !dx.controlflow.hints !95

; <label>:2861                                    ; preds = %2846
  %2862 = icmp eq i32 %2857, 0
  br i1 %2862, label %2901, label %2863, !dx.controlflow.hints !96

; <label>:2863                                    ; preds = %2861
  %2864 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %2865 = extractvalue %dx.types.CBufRet.i32 %2864, 2
  %2866 = icmp eq i32 %2865, 0
  br i1 %2866, label %2873, label %2867, !dx.controlflow.hints !97

; <label>:2867                                    ; preds = %2863
  %2868 = fsub fast float 1.000000e+00, %2848
  %2869 = fdiv fast float %2853, %2868
  %2870 = fdiv fast float %2854, %2868
  %2871 = fdiv fast float %2855, %2868
  %2872 = fdiv fast float %2856, %2868
  br label %2878

; <label>:2873                                    ; preds = %2863
  %2874 = fadd fast float %2853, %2848
  %2875 = fadd fast float %2854, %2848
  %2876 = fadd fast float %2855, %2848
  %2877 = fadd fast float %2856, %2848
  br label %2878

; <label>:2878                                    ; preds = %2873, %2867
  %2879 = phi float [ %2869, %2867 ], [ %2874, %2873 ]
  %2880 = phi float [ %2870, %2867 ], [ %2875, %2873 ]
  %2881 = phi float [ %2871, %2867 ], [ %2876, %2873 ]
  %2882 = phi float [ %2872, %2867 ], [ %2877, %2873 ]
  %2883 = call float @dx.op.binary.f32(i32 35, float %2879, float -1.000000e+00)  ; FMax(a,b)
  %2884 = call float @dx.op.binary.f32(i32 35, float %2880, float -1.000000e+00)  ; FMax(a,b)
  %2885 = call float @dx.op.binary.f32(i32 35, float %2881, float -1.000000e+00)  ; FMax(a,b)
  %2886 = call float @dx.op.binary.f32(i32 35, float %2882, float -1.000000e+00)  ; FMax(a,b)
  %2887 = call float @dx.op.binary.f32(i32 36, float %2883, float 1.000000e+00)  ; FMin(a,b)
  %2888 = call float @dx.op.binary.f32(i32 36, float %2884, float 1.000000e+00)  ; FMin(a,b)
  %2889 = call float @dx.op.binary.f32(i32 36, float %2885, float 1.000000e+00)  ; FMin(a,b)
  %2890 = call float @dx.op.binary.f32(i32 36, float %2886, float 1.000000e+00)  ; FMin(a,b)
  %2891 = fmul fast float %2887, 1.500000e+00
  %2892 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %2889, float %2891)  ; FMad(a,b,c)
  %2893 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %2888, float 0.000000e+00)  ; FMad(a,b,c)
  %2894 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %2890, float %2893)  ; FMad(a,b,c)
  %2895 = fmul fast float %2887, 0x3FEBB67AE0000000
  %2896 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %2889, float %2895)  ; FMad(a,b,c)
  %2897 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %2888, float 0.000000e+00)  ; FMad(a,b,c)
  %2898 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %2890, float %2897)  ; FMad(a,b,c)
  %2899 = fadd fast float %2892, 5.000000e-01
  %2900 = fadd fast float %2896, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %30, i32 %31, i32 0, float %2899, float %2894, float %2900, float %2898, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2902

; <label>:2901                                    ; preds = %2861
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %30, i32 %31, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2902

; <label>:2902                                    ; preds = %2901, %2878, %2846
  %2903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %2904 = extractvalue %dx.types.CBufRet.f32 %2903, 2
  %2905 = fsub fast float %2848, %2904
  %2906 = fdiv fast float %2905, %2904
  %2907 = call float @dx.op.unary.f32(i32 7, float %2906)  ; Saturate(value)
  %2908 = fmul fast float %2907, 2.000000e+00
  %2909 = fsub fast float 3.000000e+00, %2908
  %2910 = fmul fast float %2907, %2907
  %2911 = fmul fast float %2910, %2848
  %2912 = fmul fast float %2911, %2909
  %2913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %2914 = extractvalue %dx.types.CBufRet.f32 %2913, 0
  %2915 = extractvalue %dx.types.CBufRet.f32 %2913, 1
  %2916 = extractvalue %dx.types.CBufRet.f32 %2913, 2
  %2917 = call float @dx.op.dot3.f32(i32 55, float %119, float %120, float %121, float %2914, float %2915, float %2916)  ; Dot3(ax,ay,az,bx,by,bz)
  %2918 = fmul fast float %2917, %2847
  %2919 = fcmp fast ogt float %2852, 0.000000e+00
  %2920 = fdiv fast float 1.000000e+00, %2852
  %2921 = fmul fast float %2918, %2920
  %2922 = select i1 %2919, float %2921, float %130
  %2923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %2924 = extractvalue %dx.types.CBufRet.f32 %2923, 0
  %2925 = extractvalue %dx.types.CBufRet.f32 %2923, 1
  %2926 = extractvalue %dx.types.CBufRet.f32 %2923, 2
  %2927 = fmul fast float %2924, %83
  %2928 = fmul fast float %2925, %83
  %2929 = fmul fast float %2926, %83
  %2930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %2931 = extractvalue %dx.types.CBufRet.f32 %2930, 0
  %2932 = extractvalue %dx.types.CBufRet.f32 %2930, 1
  %2933 = extractvalue %dx.types.CBufRet.f32 %2930, 2
  %2934 = fmul fast float %2931, %84
  %2935 = fmul fast float %2932, %84
  %2936 = fmul fast float %2933, %84
  %2937 = fadd fast float %2934, %2927
  %2938 = fadd fast float %2935, %2928
  %2939 = fadd fast float %2936, %2929
  %2940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %2941 = extractvalue %dx.types.CBufRet.f32 %2940, 0
  %2942 = extractvalue %dx.types.CBufRet.f32 %2940, 1
  %2943 = extractvalue %dx.types.CBufRet.f32 %2940, 2
  %2944 = fadd fast float %2937, %2941
  %2945 = fadd fast float %2938, %2942
  %2946 = fadd fast float %2939, %2943
  %2947 = fmul fast float %2944, %2922
  %2948 = fmul fast float %2945, %2922
  %2949 = fmul fast float %2946, %2922
  %2950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %2951 = extractvalue %dx.types.CBufRet.f32 %2950, 0
  %2952 = extractvalue %dx.types.CBufRet.f32 %2950, 1
  %2953 = extractvalue %dx.types.CBufRet.f32 %2950, 2
  %2954 = extractvalue %dx.types.CBufRet.f32 %2950, 3
  %2955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %2956 = extractvalue %dx.types.CBufRet.f32 %2955, 0
  %2957 = extractvalue %dx.types.CBufRet.f32 %2955, 1
  %2958 = extractvalue %dx.types.CBufRet.f32 %2955, 2
  %2959 = extractvalue %dx.types.CBufRet.f32 %2955, 3
  %2960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %2961 = extractvalue %dx.types.CBufRet.f32 %2960, 0
  %2962 = extractvalue %dx.types.CBufRet.f32 %2960, 1
  %2963 = extractvalue %dx.types.CBufRet.f32 %2960, 2
  %2964 = extractvalue %dx.types.CBufRet.f32 %2960, 3
  %2965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %2966 = extractvalue %dx.types.CBufRet.f32 %2965, 0
  %2967 = extractvalue %dx.types.CBufRet.f32 %2965, 1
  %2968 = extractvalue %dx.types.CBufRet.f32 %2965, 2
  %2969 = extractvalue %dx.types.CBufRet.f32 %2965, 3
  %2970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %2971 = extractvalue %dx.types.CBufRet.f32 %2970, 3
  %2972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %2973 = extractvalue %dx.types.CBufRet.f32 %2972, 3
  %2974 = extractvalue %dx.types.CBufRet.f32 %2972, 0
  %2975 = extractvalue %dx.types.CBufRet.f32 %2972, 1
  %2976 = extractvalue %dx.types.CBufRet.f32 %2972, 2
  %2977 = fcmp fast olt float %2976, -5.000000e-01
  %2978 = call float @dx.op.dot3.f32(i32 55, float %2947, float %2948, float %2949, float %2947, float %2948, float %2949)  ; Dot3(ax,ay,az,bx,by,bz)
  %2979 = call float @dx.op.unary.f32(i32 25, float %2978)  ; Rsqrt(value)
  %2980 = fmul fast float %2979, %2978
  %2981 = fmul fast float %2979, %2947
  %2982 = fmul fast float %2979, %2948
  %2983 = fmul fast float %2979, %2949
  %2984 = fadd fast float %2980, %2954
  %2985 = call float @dx.op.dot3.f32(i32 55, float %2981, float %2982, float %2983, float %2951, float %2952, float %2953)  ; Dot3(ax,ay,az,bx,by,bz)
  %2986 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2987 = extractvalue %dx.types.CBufRet.i32 %2986, 1
  %2988 = and i32 %2987, 1
  %2989 = icmp ne i32 %2988, 0
  %2990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %2991 = extractvalue %dx.types.CBufRet.f32 %2990, 2
  %2992 = fcmp fast ogt float %2991, 0.000000e+00
  %2993 = and i1 %2989, %2992
  br i1 %2993, label %2994, label %3400, !dx.controlflow.hints !98

; <label>:2994                                    ; preds = %2902
  %2995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %2996 = extractvalue %dx.types.CBufRet.f32 %2995, 3
  %2997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2998 = extractvalue %dx.types.CBufRet.f32 %2997, 2
  %2999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3000 = extractvalue %dx.types.CBufRet.f32 %2999, 2
  %3001 = fsub fast float %2998, %3000
  %3002 = and i32 %2987, 2
  %3003 = extractvalue %dx.types.CBufRet.i32 %2986, 0
  %3004 = call i32 @dx.op.binary.i32(i32 40, i32 %3003, i32 3)  ; UMin(a,b)
  %3005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %3006 = extractvalue %dx.types.CBufRet.f32 %3005, 0
  %3007 = extractvalue %dx.types.CBufRet.f32 %3005, 1
  %3008 = extractvalue %dx.types.CBufRet.f32 %2999, 0
  %3009 = extractvalue %dx.types.CBufRet.f32 %2999, 1
  %3010 = fsub fast float %3006, %3008
  %3011 = fsub fast float %3007, %3009
  %3012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %3013 = extractvalue %dx.types.CBufRet.f32 %3012, 0
  %3014 = fcmp fast ogt float %3013, 0.000000e+00
  %3015 = fsub fast float -0.000000e+00, %3010
  %3016 = fsub fast float -0.000000e+00, %3011
  %3017 = call float @dx.op.dot2.f32(i32 54, float %2981, float %2982, float %2981, float %2982)  ; Dot2(ax,ay,bx,by)
  %3018 = call float @dx.op.dot2.f32(i32 54, float %2981, float %2982, float %3015, float %3016)  ; Dot2(ax,ay,bx,by)
  %3019 = fmul fast float %3018, 2.000000e+00
  %3020 = call float @dx.op.dot2.f32(i32 54, float %3015, float %3016, float %3015, float %3016)  ; Dot2(ax,ay,bx,by)
  %3021 = fmul fast float %3013, %3013
  %3022 = fsub fast float %3020, %3021
  %3023 = fmul fast float %3019, %3019
  %3024 = fmul fast float %3017, 4.000000e+00
  %3025 = fmul fast float %3024, %3022
  %3026 = fsub fast float %3023, %3025
  %3027 = fcmp fast ogt float %3026, 0.000000e+00
  br i1 %3027, label %3028, label %3043, !dx.controlflow.hints !99

; <label>:3028                                    ; preds = %2994
  %3029 = fcmp fast ogt float %3019, 0.000000e+00
  %3030 = call float @dx.op.unary.f32(i32 24, float %3026)  ; Sqrt(value)
  %3031 = fsub fast float -0.000000e+00, %3030
  %3032 = select i1 %3029, float %3030, float %3031
  %3033 = fadd fast float %3032, %3019
  %3034 = fmul float %3033, -5.000000e-01
  %3035 = fdiv fast float %3034, %3017
  %3036 = call float @dx.op.binary.f32(i32 35, float %3035, float 0.000000e+00)  ; FMax(a,b)
  %3037 = call float @dx.op.binary.f32(i32 36, float %2980, float %3036)  ; FMin(a,b)
  %3038 = fdiv fast float %3022, %3034
  %3039 = call float @dx.op.binary.f32(i32 35, float %3038, float 0.000000e+00)  ; FMax(a,b)
  %3040 = call float @dx.op.binary.f32(i32 36, float %2980, float %3039)  ; FMin(a,b)
  %3041 = call float @dx.op.binary.f32(i32 36, float %3037, float %3040)  ; FMin(a,b)
  %3042 = call float @dx.op.binary.f32(i32 35, float %3037, float %3040)  ; FMax(a,b)
  br label %3043

; <label>:3043                                    ; preds = %3028, %2994
  %3044 = phi float [ %3042, %3028 ], [ -1.000000e+00, %2994 ]
  %3045 = phi float [ %3041, %3028 ], [ -1.000000e+00, %2994 ]
  %3046 = phi i1 [ true, %3028 ], [ false, %2994 ]
  %3047 = and i1 %3014, %3046
  br i1 %3047, label %3048, label %3050, !dx.controlflow.hints !100

; <label>:3048                                    ; preds = %3043
  %3049 = fcmp fast oeq float %3045, %3044
  br i1 %3049, label %3353, label %3051, !dx.controlflow.hints !101

; <label>:3050                                    ; preds = %3043
  br i1 %3014, label %3353, label %3051, !dx.controlflow.hints !102

; <label>:3051                                    ; preds = %3050, %3048
  %3052 = phi float [ %2980, %3050 ], [ %3044, %3048 ]
  %3053 = phi float [ 0.000000e+00, %3050 ], [ %3045, %3048 ]
  %3054 = icmp ne i32 %3002, 0
  %3055 = fmul fast float %3052, %2983
  %3056 = fadd fast float %3055, %2996
  %3057 = fmul fast float %3056, %3052
  %3058 = select i1 %3054, float 0.000000e+00, float %3057
  %3059 = fcmp fast oeq float %2983, 0.000000e+00
  %3060 = fdiv fast float %3001, %2983
  %3061 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3060)  ; FMax(a,b)
  %3062 = select i1 %3059, float %3052, float %3061
  %3063 = call float @dx.op.binary.f32(i32 36, float %3052, float %3062)  ; FMin(a,b)
  %3064 = fcmp fast ogt float %2983, 0.000000e+00
  %3065 = fcmp fast olt float %3001, 0.000000e+00
  br i1 %3064, label %3066, label %3123, !dx.controlflow.hints !103

; <label>:3066                                    ; preds = %3051
  %3067 = icmp eq i32 %3002, 0
  br i1 %3065, label %3068, label %3112, !dx.controlflow.hints !104

; <label>:3068                                    ; preds = %3066
  %3069 = select i1 %3067, float %3052, float 0.000000e+00
  %3070 = fsub fast float -0.000000e+00, %3069
  %3071 = call float @dx.op.unary.f32(i32 6, float %3070)  ; FAbs(value)
  %3072 = fmul fast float %3069, %2983
  %3073 = fadd fast float %3072, %2996
  %3074 = fmul fast float %3071, %3073
  %3075 = fsub fast float %3058, %3074
  %3076 = fsub fast float %3052, %3071
  %3077 = select i1 %3067, float %3076, float 0.000000e+00
  %3078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %3079 = extractvalue %dx.types.CBufRet.f32 %3078, 0
  %3080 = extractvalue %dx.types.CBufRet.f32 %3078, 1
  %3081 = extractvalue %dx.types.CBufRet.f32 %3078, 2
  %3082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %3083 = extractvalue %dx.types.CBufRet.f32 %3082, 0
  %3084 = extractvalue %dx.types.CBufRet.f32 %3082, 1
  %3085 = extractvalue %dx.types.CBufRet.f32 %3082, 2
  %3086 = extractvalue %dx.types.CBufRet.f32 %3082, 3
  %3087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %3088 = extractvalue %dx.types.CBufRet.f32 %3087, 3
  %3089 = call float @dx.op.binary.f32(i32 36, float %3075, float %3088)  ; FMin(a,b)
  %3090 = fmul fast float %3086, %3077
  %3091 = call float @dx.op.unary.f32(i32 7, float %3090)  ; Saturate(value)
  %3092 = fsub fast float %3083, %3079
  %3093 = fsub fast float %3084, %3080
  %3094 = fsub fast float %3085, %3081
  %3095 = fmul fast float %3091, %3092
  %3096 = fmul fast float %3091, %3093
  %3097 = fmul fast float %3091, %3094
  %3098 = fadd fast float %3095, %3079
  %3099 = fadd fast float %3096, %3080
  %3100 = fadd fast float %3097, %3081
  %3101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %3102 = extractvalue %dx.types.CBufRet.f32 %3101, 0
  %3103 = extractvalue %dx.types.CBufRet.f32 %3101, 1
  %3104 = fadd fast float %3103, %3102
  %3105 = call float @dx.op.unary.f32(i32 7, float %3104)  ; Saturate(value)
  %3106 = extractvalue %dx.types.CBufRet.f32 %3101, 2
  %3107 = extractvalue %dx.types.CBufRet.f32 %3101, 3
  %3108 = fadd fast float %3107, %3106
  %3109 = call float @dx.op.unary.f32(i32 7, float %3108)  ; Saturate(value)
  %3110 = fmul fast float %3105, %3089
  %3111 = fmul fast float %3110, %3109
  br label %3353

; <label>:3112                                    ; preds = %3066
  br i1 %3067, label %3113, label %3134, !dx.controlflow.hints !105

; <label>:3113                                    ; preds = %3112
  %3114 = call float @dx.op.binary.f32(i32 36, float %3063, float %3053)  ; FMin(a,b)
  %3115 = fsub fast float %3063, %3114
  %3116 = fsub fast float %3115, %3052
  %3117 = call float @dx.op.unary.f32(i32 6, float %3116)  ; FAbs(value)
  %3118 = fadd fast float %3115, %3052
  %3119 = fmul fast float %3118, %2983
  %3120 = fadd fast float %3119, %2996
  %3121 = fmul fast float %3120, %3117
  %3122 = fsub fast float %3058, %3121
  br label %3134

; <label>:3123                                    ; preds = %3051
  br i1 %3065, label %3124, label %3134, !dx.controlflow.hints !106

; <label>:3124                                    ; preds = %3123
  %3125 = call float @dx.op.binary.f32(i32 35, float %3053, float %3063)  ; FMax(a,b)
  %3126 = icmp eq i32 %3002, 0
  %3127 = select i1 %3126, float %3063, float 0.000000e+00
  %3128 = fsub fast float -0.000000e+00, %3127
  %3129 = call float @dx.op.unary.f32(i32 6, float %3128)  ; FAbs(value)
  %3130 = fmul fast float %3127, %2983
  %3131 = fadd fast float %3130, %2996
  %3132 = fmul fast float %3129, %3131
  %3133 = fsub fast float %3058, %3132
  br label %3134

; <label>:3134                                    ; preds = %3124, %3123, %3113, %3112
  %3135 = phi float [ %3053, %3112 ], [ %3053, %3113 ], [ %3125, %3124 ], [ %3053, %3123 ]
  %3136 = phi float [ 0.000000e+00, %3112 ], [ %3117, %3113 ], [ %3129, %3124 ], [ 0.000000e+00, %3123 ]
  %3137 = phi float [ %3058, %3112 ], [ %3122, %3113 ], [ %3133, %3124 ], [ %3058, %3123 ]
  %3138 = phi float [ %3063, %3112 ], [ %3063, %3113 ], [ %3052, %3124 ], [ %3052, %3123 ]
  %3139 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 0
  store float -1.000000e+00, float* %3139, align 4, !tbaa !107, !noalias !111
  %3140 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 1
  store float -1.000000e+00, float* %3140, align 4, !tbaa !107, !noalias !111
  %3141 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 2
  store float -1.000000e+00, float* %3141, align 4, !tbaa !107, !noalias !111
  %3142 = getelementptr inbounds [3 x float], [3 x float]* %33, i32 0, i32 0
  store float -1.000000e+00, float* %3142, align 4, !tbaa !107, !noalias !111
  %3143 = getelementptr inbounds [3 x float], [3 x float]* %33, i32 0, i32 1
  store float -1.000000e+00, float* %3143, align 4, !tbaa !107, !noalias !111
  %3144 = getelementptr inbounds [3 x float], [3 x float]* %33, i32 0, i32 2
  store float -1.000000e+00, float* %3144, align 4, !tbaa !107, !noalias !111
  %3145 = icmp sgt i32 %3004, 0
  br i1 %3145, label %3146, label %3207

; <label>:3146                                    ; preds = %3134
  br label %3147

; <label>:3147                                    ; preds = %3196, %3146
  %3148 = phi i32 [ %3197, %3196 ], [ 0, %3146 ]
  %3149 = phi i32 [ %3198, %3196 ], [ 0, %3146 ]
  %3150 = add nuw i32 %3149, 171
  %3151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 %3150)  ; CBufferLoadLegacy(handle,regIndex)
  %3152 = extractvalue %dx.types.CBufRet.f32 %3151, 0
  %3153 = extractvalue %dx.types.CBufRet.f32 %3151, 1
  %3154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3155 = extractvalue %dx.types.CBufRet.f32 %3154, 0
  %3156 = extractvalue %dx.types.CBufRet.f32 %3154, 1
  %3157 = fsub fast float %3152, %3155
  %3158 = fsub fast float %3153, %3156
  %3159 = extractvalue %dx.types.CBufRet.f32 %3151, 2
  %3160 = fsub fast float -0.000000e+00, %3157
  %3161 = fsub fast float -0.000000e+00, %3158
  %3162 = call float @dx.op.dot2.f32(i32 54, float %2981, float %2982, float %3160, float %3161)  ; Dot2(ax,ay,bx,by)
  %3163 = fmul fast float %3162, 2.000000e+00
  %3164 = call float @dx.op.dot2.f32(i32 54, float %3160, float %3161, float %3160, float %3161)  ; Dot2(ax,ay,bx,by)
  %3165 = fmul fast float %3159, %3159
  %3166 = fsub fast float %3164, %3165
  %3167 = fmul fast float %3163, %3163
  %3168 = fmul fast float %3024, %3166
  %3169 = fsub fast float %3167, %3168
  %3170 = fcmp fast ogt float %3169, 0.000000e+00
  br i1 %3170, label %3171, label %3186, !dx.controlflow.hints !99

; <label>:3171                                    ; preds = %3147
  %3172 = fcmp fast ogt float %3163, 0.000000e+00
  %3173 = call float @dx.op.unary.f32(i32 24, float %3169)  ; Sqrt(value)
  %3174 = fsub fast float -0.000000e+00, %3173
  %3175 = select i1 %3172, float %3173, float %3174
  %3176 = fadd fast float %3175, %3163
  %3177 = fmul float %3176, -5.000000e-01
  %3178 = fdiv fast float %3177, %3017
  %3179 = call float @dx.op.binary.f32(i32 35, float %3178, float 0.000000e+00)  ; FMax(a,b)
  %3180 = call float @dx.op.binary.f32(i32 36, float %3052, float %3179)  ; FMin(a,b)
  %3181 = fdiv fast float %3166, %3177
  %3182 = call float @dx.op.binary.f32(i32 35, float %3181, float 0.000000e+00)  ; FMax(a,b)
  %3183 = call float @dx.op.binary.f32(i32 36, float %3052, float %3182)  ; FMin(a,b)
  %3184 = call float @dx.op.binary.f32(i32 36, float %3180, float %3183)  ; FMin(a,b)
  %3185 = call float @dx.op.binary.f32(i32 35, float %3180, float %3183)  ; FMax(a,b)
  br label %3186

; <label>:3186                                    ; preds = %3171, %3147
  %3187 = phi float [ %3185, %3171 ], [ -1.000000e+00, %3147 ]
  %3188 = phi float [ %3184, %3171 ], [ -1.000000e+00, %3147 ]
  %3189 = phi i1 [ true, %3171 ], [ false, %3147 ]
  br i1 %3189, label %3190, label %3196, !dx.controlflow.hints !122

; <label>:3190                                    ; preds = %3186
  %3191 = call float @dx.op.binary.f32(i32 35, float %3135, float %3188)  ; FMax(a,b)
  %3192 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 %3149
  store float %3191, float* %3192, align 4, !tbaa !107, !noalias !111
  %3193 = call float @dx.op.binary.f32(i32 35, float %3135, float %3187)  ; FMax(a,b)
  %3194 = getelementptr inbounds [3 x float], [3 x float]* %33, i32 0, i32 %3149
  store float %3193, float* %3194, align 4, !tbaa !107, !noalias !111
  %3195 = add nsw i32 %3148, 1
  br label %3196

; <label>:3196                                    ; preds = %3190, %3186
  %3197 = phi i32 [ %3195, %3190 ], [ %3148, %3186 ]
  %3198 = add nuw nsw i32 %3149, 1
  %3199 = icmp eq i32 %3198, %3004
  br i1 %3199, label %3200, label %3147

; <label>:3200                                    ; preds = %3196
  %3201 = load float, float* %3141, align 4, !tbaa !107, !alias.scope !123, !noalias !126
  %3202 = load float, float* %3140, align 4, !tbaa !107, !alias.scope !129, !noalias !130
  %3203 = load float, float* %3139, align 4, !tbaa !107, !alias.scope !131, !noalias !132
  %3204 = load float, float* %3144, align 4, !tbaa !107, !alias.scope !133, !noalias !136
  %3205 = load float, float* %3143, align 4, !tbaa !107, !alias.scope !139, !noalias !140
  %3206 = load float, float* %3142, align 4, !tbaa !107, !alias.scope !141, !noalias !142
  br label %3207

; <label>:3207                                    ; preds = %3200, %3134
  %3208 = phi float [ -1.000000e+00, %3134 ], [ %3206, %3200 ]
  %3209 = phi float [ -1.000000e+00, %3134 ], [ %3205, %3200 ]
  %3210 = phi float [ -1.000000e+00, %3134 ], [ %3204, %3200 ]
  %3211 = phi float [ -1.000000e+00, %3134 ], [ %3203, %3200 ]
  %3212 = phi float [ -1.000000e+00, %3134 ], [ %3202, %3200 ]
  %3213 = phi float [ -1.000000e+00, %3134 ], [ %3201, %3200 ]
  %3214 = phi i32 [ 0, %3134 ], [ %3197, %3200 ]
  %3215 = call float @dx.op.binary.f32(i32 36, float %3212, float %3213)  ; FMin(a,b)
  %3216 = call float @dx.op.binary.f32(i32 36, float %3211, float %3215)  ; FMin(a,b)
  %3217 = call float @dx.op.binary.f32(i32 35, float %3211, float %3212)  ; FMax(a,b)
  %3218 = call float @dx.op.binary.f32(i32 36, float %3217, float %3213)  ; FMin(a,b)
  %3219 = call float @dx.op.binary.f32(i32 36, float %3211, float %3212)  ; FMin(a,b)
  %3220 = call float @dx.op.binary.f32(i32 35, float %3219, float %3218)  ; FMax(a,b)
  %3221 = call float @dx.op.binary.f32(i32 35, float %3212, float %3213)  ; FMax(a,b)
  %3222 = call float @dx.op.binary.f32(i32 35, float %3211, float %3221)  ; FMax(a,b)
  store float %3216, float* %3139, align 4, !tbaa !107, !alias.scope !131, !noalias !132
  store float %3220, float* %3140, align 4, !tbaa !107, !alias.scope !129, !noalias !130
  store float %3222, float* %3141, align 4, !tbaa !107, !alias.scope !123, !noalias !126
  %3223 = call float @dx.op.binary.f32(i32 36, float %3209, float %3210)  ; FMin(a,b)
  %3224 = call float @dx.op.binary.f32(i32 36, float %3208, float %3223)  ; FMin(a,b)
  %3225 = call float @dx.op.binary.f32(i32 35, float %3208, float %3209)  ; FMax(a,b)
  %3226 = call float @dx.op.binary.f32(i32 36, float %3225, float %3210)  ; FMin(a,b)
  %3227 = call float @dx.op.binary.f32(i32 36, float %3208, float %3209)  ; FMin(a,b)
  %3228 = call float @dx.op.binary.f32(i32 35, float %3227, float %3226)  ; FMax(a,b)
  %3229 = call float @dx.op.binary.f32(i32 35, float %3209, float %3210)  ; FMax(a,b)
  %3230 = call float @dx.op.binary.f32(i32 35, float %3208, float %3229)  ; FMax(a,b)
  store float %3224, float* %3142, align 4, !tbaa !107, !alias.scope !141, !noalias !142
  store float %3228, float* %3143, align 4, !tbaa !107, !alias.scope !139, !noalias !140
  store float %3230, float* %3144, align 4, !tbaa !107, !alias.scope !133, !noalias !136
  %3231 = sub nsw i32 3, %3214
  %3232 = icmp sgt i32 %3231, 2
  br i1 %3232, label %3233, label %3271, !dx.controlflow.hints !143

; <label>:3233                                    ; preds = %3207
  %3234 = icmp eq i32 %3002, 0
  %3235 = fsub fast float %3052, %3136
  %3236 = select i1 %3234, float %3235, float %3136
  %3237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %3238 = extractvalue %dx.types.CBufRet.f32 %3237, 0
  %3239 = extractvalue %dx.types.CBufRet.f32 %3237, 1
  %3240 = extractvalue %dx.types.CBufRet.f32 %3237, 2
  %3241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %3242 = extractvalue %dx.types.CBufRet.f32 %3241, 0
  %3243 = extractvalue %dx.types.CBufRet.f32 %3241, 1
  %3244 = extractvalue %dx.types.CBufRet.f32 %3241, 2
  %3245 = extractvalue %dx.types.CBufRet.f32 %3241, 3
  %3246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %3247 = extractvalue %dx.types.CBufRet.f32 %3246, 3
  %3248 = call float @dx.op.binary.f32(i32 36, float %3137, float %3247)  ; FMin(a,b)
  %3249 = fmul fast float %3245, %3236
  %3250 = call float @dx.op.unary.f32(i32 7, float %3249)  ; Saturate(value)
  %3251 = fsub fast float %3242, %3238
  %3252 = fsub fast float %3243, %3239
  %3253 = fsub fast float %3244, %3240
  %3254 = fmul fast float %3250, %3251
  %3255 = fmul fast float %3250, %3252
  %3256 = fmul fast float %3250, %3253
  %3257 = fadd fast float %3254, %3238
  %3258 = fadd fast float %3255, %3239
  %3259 = fadd fast float %3256, %3240
  %3260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %3261 = extractvalue %dx.types.CBufRet.f32 %3260, 0
  %3262 = extractvalue %dx.types.CBufRet.f32 %3260, 1
  %3263 = fadd fast float %3262, %3261
  %3264 = call float @dx.op.unary.f32(i32 7, float %3263)  ; Saturate(value)
  %3265 = extractvalue %dx.types.CBufRet.f32 %3260, 2
  %3266 = extractvalue %dx.types.CBufRet.f32 %3260, 3
  %3267 = fadd fast float %3266, %3265
  %3268 = call float @dx.op.unary.f32(i32 7, float %3267)  ; Saturate(value)
  %3269 = fmul fast float %3264, %3248
  %3270 = fmul fast float %3269, %3268
  br label %3353

; <label>:3271                                    ; preds = %3207
  %3272 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 %3231
  %3273 = load float, float* %3272, align 4, !tbaa !107, !noalias !111
  %3274 = fcmp fast olt float %3273, %3138
  %3275 = icmp sgt i32 %3214, 0
  %3276 = and i1 %3275, %3274
  br i1 %3276, label %3277, label %3314

; <label>:3277                                    ; preds = %3271
  br label %3278

; <label>:3278                                    ; preds = %3307, %3277
  %3279 = phi float [ %3308, %3307 ], [ %3136, %3277 ]
  %3280 = phi float [ %3309, %3307 ], [ %3137, %3277 ]
  %3281 = phi float [ %3289, %3307 ], [ %3273, %3277 ]
  %3282 = phi i32 [ %3286, %3307 ], [ %3231, %3277 ]
  %3283 = getelementptr inbounds [3 x float], [3 x float]* %33, i32 0, i32 %3282
  %3284 = load float, float* %3283, align 4, !tbaa !107, !noalias !111
  %3285 = icmp slt i32 %3282, 2
  %3286 = add nsw i32 %3282, 1
  %3287 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 %3286
  %3288 = load float, float* %3287, align 4, !tbaa !107, !noalias !111
  %3289 = select i1 %3285, float %3288, float %3052
  %3290 = call float @dx.op.binary.f32(i32 36, float %3289, float %3284)  ; FMin(a,b)
  %3291 = call float @dx.op.binary.f32(i32 36, float %3138, float %3290)  ; FMin(a,b)
  %3292 = icmp eq i32 %3002, 0
  %3293 = fadd fast float %3291, %3281
  %3294 = fmul fast float %3293, %2983
  %3295 = fadd fast float %3294, %2996
  br i1 %3292, label %3301, label %3296, !dx.controlflow.hints !144

; <label>:3296                                    ; preds = %3278
  %3297 = fsub fast float %3291, %3281
  %3298 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3297)  ; FMax(a,b)
  %3299 = fmul fast float %3298, %3295
  %3300 = fadd fast float %3299, %3280
  br label %3307

; <label>:3301                                    ; preds = %3278
  %3302 = fsub fast float %3281, %3291
  %3303 = call float @dx.op.unary.f32(i32 6, float %3302)  ; FAbs(value)
  %3304 = fadd fast float %3303, %3279
  %3305 = fmul fast float %3303, %3295
  %3306 = fsub fast float %3280, %3305
  br label %3307

; <label>:3307                                    ; preds = %3301, %3296
  %3308 = phi float [ %3298, %3296 ], [ %3304, %3301 ]
  %3309 = phi float [ %3300, %3296 ], [ %3306, %3301 ]
  %3310 = fcmp fast olt float %3289, %3138
  %3311 = icmp slt i32 %3286, 3
  %3312 = and i1 %3311, %3310
  br i1 %3312, label %3278, label %3313

; <label>:3313                                    ; preds = %3307
  br label %3314

; <label>:3314                                    ; preds = %3313, %3271
  %3315 = phi float [ %3136, %3271 ], [ %3308, %3313 ]
  %3316 = phi float [ %3137, %3271 ], [ %3309, %3313 ]
  %3317 = fsub fast float %3052, %3315
  %3318 = select i1 %3054, float %3315, float %3317
  %3319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %3320 = extractvalue %dx.types.CBufRet.f32 %3319, 0
  %3321 = extractvalue %dx.types.CBufRet.f32 %3319, 1
  %3322 = extractvalue %dx.types.CBufRet.f32 %3319, 2
  %3323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %3324 = extractvalue %dx.types.CBufRet.f32 %3323, 0
  %3325 = extractvalue %dx.types.CBufRet.f32 %3323, 1
  %3326 = extractvalue %dx.types.CBufRet.f32 %3323, 2
  %3327 = extractvalue %dx.types.CBufRet.f32 %3323, 3
  %3328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %3329 = extractvalue %dx.types.CBufRet.f32 %3328, 3
  %3330 = call float @dx.op.binary.f32(i32 36, float %3316, float %3329)  ; FMin(a,b)
  %3331 = fmul fast float %3327, %3318
  %3332 = call float @dx.op.unary.f32(i32 7, float %3331)  ; Saturate(value)
  %3333 = fsub fast float %3324, %3320
  %3334 = fsub fast float %3325, %3321
  %3335 = fsub fast float %3326, %3322
  %3336 = fmul fast float %3332, %3333
  %3337 = fmul fast float %3332, %3334
  %3338 = fmul fast float %3332, %3335
  %3339 = fadd fast float %3336, %3320
  %3340 = fadd fast float %3337, %3321
  %3341 = fadd fast float %3338, %3322
  %3342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %3343 = extractvalue %dx.types.CBufRet.f32 %3342, 0
  %3344 = extractvalue %dx.types.CBufRet.f32 %3342, 1
  %3345 = fadd fast float %3344, %3343
  %3346 = call float @dx.op.unary.f32(i32 7, float %3345)  ; Saturate(value)
  %3347 = extractvalue %dx.types.CBufRet.f32 %3342, 2
  %3348 = extractvalue %dx.types.CBufRet.f32 %3342, 3
  %3349 = fadd fast float %3348, %3347
  %3350 = call float @dx.op.unary.f32(i32 7, float %3349)  ; Saturate(value)
  %3351 = fmul fast float %3346, %3330
  %3352 = fmul fast float %3351, %3350
  br label %3353

; <label>:3353                                    ; preds = %3314, %3233, %3068, %3050, %3048
  %3354 = phi float [ %3077, %3068 ], [ %3236, %3233 ], [ %3318, %3314 ], [ 0.000000e+00, %3048 ], [ 0.000000e+00, %3050 ]
  %3355 = phi float [ %3111, %3068 ], [ %3270, %3233 ], [ %3352, %3314 ], [ 0.000000e+00, %3048 ], [ 0.000000e+00, %3050 ]
  %3356 = phi float [ %3098, %3068 ], [ %3257, %3233 ], [ %3339, %3314 ], [ 0.000000e+00, %3048 ], [ 0.000000e+00, %3050 ]
  %3357 = phi float [ %3099, %3068 ], [ %3258, %3233 ], [ %3340, %3314 ], [ 0.000000e+00, %3048 ], [ 0.000000e+00, %3050 ]
  %3358 = phi float [ %3100, %3068 ], [ %3259, %3233 ], [ %3341, %3314 ], [ 0.000000e+00, %3048 ], [ 0.000000e+00, %3050 ]
  %3359 = fmul fast float %2991, %3355
  %3360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3361 = extractvalue %dx.types.CBufRet.f32 %3360, 2
  %3362 = fsub fast float %2998, %3361
  %3363 = fcmp fast olt float %3359, -2.000000e+01
  %3364 = call float @dx.op.unary.f32(i32 21, float %3359)  ; Exp(value)
  %3365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %3366 = extractvalue %dx.types.CBufRet.f32 %3365, 2
  %3367 = extractvalue %dx.types.CBufRet.f32 %3365, 3
  %3368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %3369 = extractvalue %dx.types.CBufRet.f32 %3368, 2
  %3370 = fmul fast float %3367, %3362
  %3371 = call float @dx.op.unary.f32(i32 7, float %3370)  ; Saturate(value)
  %3372 = fsub fast float 1.000000e+00, %3371
  %3373 = fmul fast float %2983, 5.000000e-01
  %3374 = fadd fast float %3373, 5.000000e-01
  %3375 = call float @dx.op.unary.f32(i32 7, float %3374)  ; Saturate(value)
  %3376 = fsub fast float 1.000000e+00, %3375
  %3377 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %3372)  ; FMax(a,b)
  %3378 = fdiv fast float %3376, %3377
  %3379 = fsub fast float %3362, %2949
  %3380 = call float @dx.op.unary.f32(i32 6, float %3379)  ; FAbs(value)
  %3381 = fmul fast float %3380, %3366
  %3382 = call float @dx.op.unary.f32(i32 7, float %3378)  ; Saturate(value)
  %3383 = fsub fast float 1.000000e+00, %3381
  %3384 = fmul fast float %3383, %3382
  %3385 = fadd fast float %3384, %3381
  %3386 = fmul fast float %3369, %3362
  %3387 = call float @dx.op.unary.f32(i32 7, float %3386)  ; Saturate(value)
  %3388 = fsub fast float 1.000000e+00, %3385
  %3389 = fmul fast float %3388, %3387
  %3390 = fadd fast float %3389, %3385
  %3391 = call float @dx.op.unary.f32(i32 7, float %3390)  ; Saturate(value)
  %3392 = fadd fast float %3364, -1.000000e+00
  %3393 = select i1 %3363, float -1.000000e+00, float %3392
  %3394 = fmul fast float %3391, %3393
  %3395 = fadd fast float %3394, 1.000000e+00
  %3396 = fsub fast float -0.000000e+00, %3394
  %3397 = fmul fast float %3356, %3396
  %3398 = fmul fast float %3357, %3396
  %3399 = fmul fast float %3358, %3396
  br label %3400

; <label>:3400                                    ; preds = %3353, %2902
  %3401 = phi float [ %3354, %3353 ], [ 0.000000e+00, %2902 ]
  %3402 = phi float [ %3395, %3353 ], [ 1.000000e+00, %2902 ]
  %3403 = phi float [ %3397, %3353 ], [ 0.000000e+00, %2902 ]
  %3404 = phi float [ %3398, %3353 ], [ 0.000000e+00, %2902 ]
  %3405 = phi float [ %3399, %3353 ], [ 0.000000e+00, %2902 ]
  %3406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %3407 = extractvalue %dx.types.CBufRet.f32 %3406, 1
  %3408 = fsub fast float 1.000000e+00, %3402
  %3409 = fmul fast float %3408, %2984
  %3410 = fmul fast float %3409, %3407
  %3411 = fsub fast float %2984, %3410
  br i1 %2977, label %3412, label %3441, !dx.controlflow.hints !145

; <label>:3412                                    ; preds = %3400
  %3413 = fmul fast float %2985, %2974
  %3414 = fadd fast float %3413, %2975
  %3415 = call float @dx.op.unary.f32(i32 7, float %3414)  ; Saturate(value)
  %3416 = fmul fast float %2956, %3411
  %3417 = fsub fast float -0.000000e+00, %3416
  %3418 = fmul fast float %2957, %3411
  %3419 = fsub fast float -0.000000e+00, %3418
  %3420 = call float @dx.op.unary.f32(i32 21, float %3417)  ; Exp(value)
  %3421 = call float @dx.op.unary.f32(i32 21, float %3419)  ; Exp(value)
  %3422 = call float @dx.op.binary.f32(i32 35, float %2964, float %3420)  ; FMax(a,b)
  %3423 = call float @dx.op.binary.f32(i32 35, float %2964, float %3421)  ; FMax(a,b)
  %3424 = fsub fast float %3423, %3422
  %3425 = fmul fast float %3424, %3415
  %3426 = fadd fast float %3425, %3422
  %3427 = call float @dx.op.unary.f32(i32 7, float %3426)  ; Saturate(value)
  %3428 = fsub fast float %2961, %2966
  %3429 = fsub fast float %2962, %2967
  %3430 = fsub fast float %2963, %2968
  %3431 = fmul fast float %3415, %3428
  %3432 = fmul fast float %3415, %3429
  %3433 = fmul fast float %3415, %3430
  %3434 = fadd fast float %3431, %2966
  %3435 = fadd fast float %3432, %2967
  %3436 = fadd fast float %3433, %2968
  %3437 = fsub fast float 1.000000e+00, %3427
  %3438 = fmul fast float %3437, %3434
  %3439 = fmul fast float %3437, %3435
  %3440 = fmul fast float %3437, %3436
  br label %3500

; <label>:3441                                    ; preds = %3400
  %3442 = fmul fast float %3411, %2973
  %3443 = call float @dx.op.unary.f32(i32 7, float %3442)  ; Saturate(value)
  %3444 = fsub fast float 2.000000e+00, %3443
  %3445 = fmul fast float %3443, 9.921875e-01
  %3446 = fmul fast float %3445, %3444
  %3447 = fadd fast float %3446, 3.906250e-03
  %3448 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %26, float %3447, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3449 = extractvalue %dx.types.ResRet.f32 %3448, 0
  %3450 = fsub fast float %3443, %3449
  %3451 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3450)  ; FMax(a,b)
  %3452 = fmul fast float %2959, %2949
  %3453 = call float @dx.op.unary.f32(i32 6, float %3452)  ; FAbs(value)
  %3454 = fcmp fast ogt float %3453, 0x3EB0C6F7A0000000
  br i1 %3454, label %3455, label %3461, !dx.controlflow.hints !146

; <label>:3455                                    ; preds = %3441
  %3456 = fmul fast float %3452, 0xBFF7154760000000
  %3457 = call float @dx.op.unary.f32(i32 21, float %3456)  ; Exp(value)
  %3458 = fsub fast float 1.000000e+00, %3457
  %3459 = fdiv fast float %3458, %3452
  %3460 = fmul fast float %3459, %2969
  br label %3461

; <label>:3461                                    ; preds = %3455, %3441
  %3462 = phi float [ %3460, %3455 ], [ %2969, %3441 ]
  %3463 = fadd fast float %3462, %2971
  %3464 = fmul fast float %3463, %3451
  %3465 = fmul fast float %2956, %3464
  %3466 = fsub fast float -0.000000e+00, %3465
  %3467 = fmul fast float %2957, %3464
  %3468 = fsub fast float -0.000000e+00, %3467
  %3469 = fmul fast float %2958, %3464
  %3470 = fsub fast float -0.000000e+00, %3469
  %3471 = call float @dx.op.unary.f32(i32 21, float %3466)  ; Exp(value)
  %3472 = call float @dx.op.unary.f32(i32 21, float %3468)  ; Exp(value)
  %3473 = call float @dx.op.unary.f32(i32 21, float %3470)  ; Exp(value)
  %3474 = fmul fast float %2985, %2985
  %3475 = fadd fast float %3474, 1.000000e+00
  %3476 = fmul fast float %3475, 0x3FAE8EC8A0000000
  %3477 = fmul fast float %3476, %2966
  %3478 = fmul fast float %3476, %2967
  %3479 = fmul fast float %3476, %2968
  %3480 = fmul fast float %2985, %2964
  %3481 = fsub fast float 1.000000e+00, %3480
  %3482 = fmul fast float %2964, %2964
  %3483 = fsub fast float 1.000000e+00, %3482
  %3484 = fmul fast float %3483, 0x3FB45F3060000000
  %3485 = fmul fast float %3481, %3481
  %3486 = fdiv fast float 1.000000e+00, %3485
  %3487 = fmul fast float %3484, %3486
  %3488 = fmul fast float %3487, %2961
  %3489 = fmul fast float %3487, %2962
  %3490 = fmul fast float %3487, %2963
  %3491 = fadd fast float %3488, %3477
  %3492 = fadd fast float %3489, %3478
  %3493 = fadd fast float %3490, %3479
  %3494 = fsub fast float 1.000000e+00, %3471
  %3495 = fsub fast float 1.000000e+00, %3472
  %3496 = fsub fast float 1.000000e+00, %3473
  %3497 = fmul fast float %3491, %3494
  %3498 = fmul fast float %3492, %3495
  %3499 = fmul fast float %3493, %3496
  br label %3500

; <label>:3500                                    ; preds = %3461, %3412
  %3501 = phi float [ %3438, %3412 ], [ %3497, %3461 ]
  %3502 = phi float [ %3439, %3412 ], [ %3498, %3461 ]
  %3503 = phi float [ %3440, %3412 ], [ %3499, %3461 ]
  %3504 = phi float [ %3427, %3412 ], [ %3471, %3461 ]
  %3505 = phi float [ %3427, %3412 ], [ %3472, %3461 ]
  %3506 = phi float [ %3427, %3412 ], [ %3473, %3461 ]
  br i1 %2993, label %3507, label %3705, !dx.controlflow.hints !147

; <label>:3507                                    ; preds = %3500
  %3508 = extractvalue %dx.types.CBufRet.f32 %3406, 0
  %3509 = fmul fast float %3508, %3408
  %3510 = fsub fast float %3403, %3501
  %3511 = fsub fast float %3404, %3502
  %3512 = fsub fast float %3405, %3503
  %3513 = fmul fast float %3509, %3510
  %3514 = fmul fast float %3509, %3511
  %3515 = fmul fast float %3509, %3512
  %3516 = fadd fast float %3513, %3501
  %3517 = fadd fast float %3514, %3502
  %3518 = fadd fast float %3515, %3503
  %3519 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3504)  ; FMax(a,b)
  %3520 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3505)  ; FMax(a,b)
  %3521 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3506)  ; FMax(a,b)
  %3522 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3402)  ; FMax(a,b)
  %3523 = call float @dx.op.binary.f32(i32 35, float %3401, float %3411)  ; FMax(a,b)
  %3524 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %3523)  ; FMax(a,b)
  %3525 = fdiv fast float %3401, %3524
  %3526 = call float @dx.op.unary.f32(i32 7, float %3525)  ; Saturate(value)
  %3527 = fdiv fast float %3411, %3524
  %3528 = call float @dx.op.unary.f32(i32 7, float %3527)  ; Saturate(value)
  %3529 = fcmp fast une float %3522, 1.000000e+00
  br i1 %3529, label %3530, label %3543, !dx.controlflow.hints !148

; <label>:3530                                    ; preds = %3507
  %3531 = call float @dx.op.unary.f32(i32 23, float %3522)  ; Log(value)
  %3532 = fmul fast float %3531, 0x3FE62E4300000000
  %3533 = fmul fast float %3403, %3532
  %3534 = fsub fast float -0.000000e+00, %3533
  %3535 = fmul fast float %3404, %3532
  %3536 = fsub fast float -0.000000e+00, %3535
  %3537 = fmul fast float %3405, %3532
  %3538 = fsub fast float -0.000000e+00, %3537
  %3539 = fsub fast float 1.000000e+00, %3522
  %3540 = fdiv fast float %3534, %3539
  %3541 = fdiv fast float %3536, %3539
  %3542 = fdiv fast float %3538, %3539
  br label %3543

; <label>:3543                                    ; preds = %3530, %3507
  %3544 = phi float [ %3540, %3530 ], [ %3403, %3507 ]
  %3545 = phi float [ %3541, %3530 ], [ %3404, %3507 ]
  %3546 = phi float [ %3542, %3530 ], [ %3405, %3507 ]
  %3547 = phi float [ %3532, %3530 ], [ 0.000000e+00, %3507 ]
  %3548 = fcmp fast une float %3519, 1.000000e+00
  br i1 %3548, label %3549, label %3556, !dx.controlflow.hints !149

; <label>:3549                                    ; preds = %3543
  %3550 = call float @dx.op.unary.f32(i32 23, float %3519)  ; Log(value)
  %3551 = fmul fast float %3550, 0x3FE62E4300000000
  %3552 = fmul fast float %3516, %3551
  %3553 = fsub fast float -0.000000e+00, %3552
  %3554 = fsub fast float 1.000000e+00, %3519
  %3555 = fdiv fast float %3553, %3554
  br label %3556

; <label>:3556                                    ; preds = %3549, %3543
  %3557 = phi float [ %3555, %3549 ], [ %3516, %3543 ]
  %3558 = phi float [ %3551, %3549 ], [ 0.000000e+00, %3543 ]
  %3559 = fcmp fast une float %3520, 1.000000e+00
  br i1 %3559, label %3560, label %3567, !dx.controlflow.hints !149

; <label>:3560                                    ; preds = %3556
  %3561 = call float @dx.op.unary.f32(i32 23, float %3520)  ; Log(value)
  %3562 = fmul fast float %3561, 0x3FE62E4300000000
  %3563 = fmul fast float %3517, %3562
  %3564 = fsub fast float -0.000000e+00, %3563
  %3565 = fsub fast float 1.000000e+00, %3520
  %3566 = fdiv fast float %3564, %3565
  br label %3567

; <label>:3567                                    ; preds = %3560, %3556
  %3568 = phi float [ %3566, %3560 ], [ %3517, %3556 ]
  %3569 = phi float [ %3562, %3560 ], [ 0.000000e+00, %3556 ]
  %3570 = fcmp fast une float %3521, 1.000000e+00
  br i1 %3570, label %3571, label %3578, !dx.controlflow.hints !149

; <label>:3571                                    ; preds = %3567
  %3572 = call float @dx.op.unary.f32(i32 23, float %3521)  ; Log(value)
  %3573 = fmul fast float %3572, 0x3FE62E4300000000
  %3574 = fmul fast float %3518, %3573
  %3575 = fsub fast float -0.000000e+00, %3574
  %3576 = fsub fast float 1.000000e+00, %3521
  %3577 = fdiv fast float %3575, %3576
  br label %3578

; <label>:3578                                    ; preds = %3571, %3567
  %3579 = phi float [ %3577, %3571 ], [ %3518, %3567 ]
  %3580 = phi float [ %3573, %3571 ], [ 0.000000e+00, %3567 ]
  %3581 = fmul fast float %3544, %3528
  %3582 = fmul fast float %3545, %3528
  %3583 = fmul fast float %3546, %3528
  %3584 = fmul fast float %3547, %3528
  %3585 = fmul fast float %3557, %3526
  %3586 = fmul fast float %3568, %3526
  %3587 = fmul fast float %3579, %3526
  %3588 = fmul fast float %3558, %3526
  %3589 = fmul fast float %3569, %3526
  %3590 = fmul fast float %3580, %3526
  %3591 = fadd fast float %3585, %3581
  %3592 = fadd fast float %3586, %3582
  %3593 = fadd fast float %3587, %3583
  %3594 = fadd fast float %3588, %3584
  %3595 = fadd fast float %3589, %3584
  %3596 = fadd fast float %3590, %3584
  %3597 = fcmp fast une float %3594, 0.000000e+00
  br i1 %3597, label %3598, label %3605, !dx.controlflow.hints !150

; <label>:3598                                    ; preds = %3578
  %3599 = fmul fast float %3594, 0x3FF7154760000000
  %3600 = call float @dx.op.unary.f32(i32 21, float %3599)  ; Exp(value)
  %3601 = fsub fast float 1.000000e+00, %3600
  %3602 = fmul fast float %3591, %3601
  %3603 = fsub fast float -0.000000e+00, %3602
  %3604 = fdiv fast float %3603, %3594
  br label %3605

; <label>:3605                                    ; preds = %3598, %3578
  %3606 = phi float [ %3600, %3598 ], [ 1.000000e+00, %3578 ]
  %3607 = phi float [ %3604, %3598 ], [ %3591, %3578 ]
  %3608 = fcmp fast une float %3595, 0.000000e+00
  br i1 %3608, label %3609, label %3616, !dx.controlflow.hints !150

; <label>:3609                                    ; preds = %3605
  %3610 = fmul fast float %3595, 0x3FF7154760000000
  %3611 = call float @dx.op.unary.f32(i32 21, float %3610)  ; Exp(value)
  %3612 = fsub fast float 1.000000e+00, %3611
  %3613 = fmul fast float %3592, %3612
  %3614 = fsub fast float -0.000000e+00, %3613
  %3615 = fdiv fast float %3614, %3595
  br label %3616

; <label>:3616                                    ; preds = %3609, %3605
  %3617 = phi float [ %3611, %3609 ], [ 1.000000e+00, %3605 ]
  %3618 = phi float [ %3615, %3609 ], [ %3592, %3605 ]
  %3619 = fcmp fast une float %3596, 0.000000e+00
  br i1 %3619, label %3620, label %3627, !dx.controlflow.hints !150

; <label>:3620                                    ; preds = %3616
  %3621 = fmul fast float %3596, 0x3FF7154760000000
  %3622 = call float @dx.op.unary.f32(i32 21, float %3621)  ; Exp(value)
  %3623 = fsub fast float 1.000000e+00, %3622
  %3624 = fmul fast float %3593, %3623
  %3625 = fsub fast float -0.000000e+00, %3624
  %3626 = fdiv fast float %3625, %3596
  br label %3627

; <label>:3627                                    ; preds = %3620, %3616
  %3628 = phi float [ %3622, %3620 ], [ 1.000000e+00, %3616 ]
  %3629 = phi float [ %3626, %3620 ], [ %3593, %3616 ]
  %3630 = fcmp fast ogt float %3526, %3528
  br i1 %3630, label %3631, label %3651, !dx.controlflow.hints !151

; <label>:3631                                    ; preds = %3627
  %3632 = fsub fast float 1.000000e+00, %3528
  %3633 = fmul fast float %3544, %3632
  %3634 = fmul fast float %3545, %3632
  %3635 = fmul fast float %3546, %3632
  %3636 = fmul fast float %3547, %3632
  %3637 = fcmp fast une float %3636, 0.000000e+00
  br i1 %3637, label %3638, label %3689, !dx.controlflow.hints !152

; <label>:3638                                    ; preds = %3631
  %3639 = fmul fast float %3636, 0x3FF7154760000000
  %3640 = call float @dx.op.unary.f32(i32 21, float %3639)  ; Exp(value)
  %3641 = fsub fast float 1.000000e+00, %3640
  %3642 = fmul fast float %3633, %3641
  %3643 = fsub fast float -0.000000e+00, %3642
  %3644 = fmul fast float %3634, %3641
  %3645 = fsub fast float -0.000000e+00, %3644
  %3646 = fmul fast float %3635, %3641
  %3647 = fsub fast float -0.000000e+00, %3646
  %3648 = fdiv fast float %3643, %3636
  %3649 = fdiv fast float %3645, %3636
  %3650 = fdiv fast float %3647, %3636
  br label %3689

; <label>:3651                                    ; preds = %3627
  %3652 = fsub fast float 1.000000e+00, %3526
  %3653 = fmul fast float %3557, %3652
  %3654 = fmul fast float %3568, %3652
  %3655 = fmul fast float %3579, %3652
  %3656 = fmul fast float %3558, %3652
  %3657 = fmul fast float %3569, %3652
  %3658 = fmul fast float %3580, %3652
  %3659 = fcmp fast une float %3656, 0.000000e+00
  br i1 %3659, label %3660, label %3667, !dx.controlflow.hints !150

; <label>:3660                                    ; preds = %3651
  %3661 = fmul fast float %3656, 0x3FF7154760000000
  %3662 = call float @dx.op.unary.f32(i32 21, float %3661)  ; Exp(value)
  %3663 = fsub fast float 1.000000e+00, %3662
  %3664 = fmul fast float %3653, %3663
  %3665 = fsub fast float -0.000000e+00, %3664
  %3666 = fdiv fast float %3665, %3656
  br label %3667

; <label>:3667                                    ; preds = %3660, %3651
  %3668 = phi float [ %3666, %3660 ], [ %3653, %3651 ]
  %3669 = phi float [ %3662, %3660 ], [ 1.000000e+00, %3651 ]
  %3670 = fcmp fast une float %3657, 0.000000e+00
  br i1 %3670, label %3671, label %3678, !dx.controlflow.hints !150

; <label>:3671                                    ; preds = %3667
  %3672 = fmul fast float %3657, 0x3FF7154760000000
  %3673 = call float @dx.op.unary.f32(i32 21, float %3672)  ; Exp(value)
  %3674 = fsub fast float 1.000000e+00, %3673
  %3675 = fmul fast float %3654, %3674
  %3676 = fsub fast float -0.000000e+00, %3675
  %3677 = fdiv fast float %3676, %3657
  br label %3678

; <label>:3678                                    ; preds = %3671, %3667
  %3679 = phi float [ %3677, %3671 ], [ %3654, %3667 ]
  %3680 = phi float [ %3673, %3671 ], [ 1.000000e+00, %3667 ]
  %3681 = fcmp fast une float %3658, 0.000000e+00
  br i1 %3681, label %3682, label %3689, !dx.controlflow.hints !150

; <label>:3682                                    ; preds = %3678
  %3683 = fmul fast float %3658, 0x3FF7154760000000
  %3684 = call float @dx.op.unary.f32(i32 21, float %3683)  ; Exp(value)
  %3685 = fsub fast float 1.000000e+00, %3684
  %3686 = fmul fast float %3655, %3685
  %3687 = fsub fast float -0.000000e+00, %3686
  %3688 = fdiv fast float %3687, %3658
  br label %3689

; <label>:3689                                    ; preds = %3682, %3678, %3638, %3631
  %3690 = phi float [ %3688, %3682 ], [ %3650, %3638 ], [ %3635, %3631 ], [ %3655, %3678 ]
  %3691 = phi float [ %3679, %3682 ], [ %3649, %3638 ], [ %3634, %3631 ], [ %3679, %3678 ]
  %3692 = phi float [ %3668, %3682 ], [ %3648, %3638 ], [ %3633, %3631 ], [ %3668, %3678 ]
  %3693 = phi float [ %3684, %3682 ], [ %3640, %3638 ], [ 1.000000e+00, %3631 ], [ 1.000000e+00, %3678 ]
  %3694 = phi float [ %3680, %3682 ], [ %3640, %3638 ], [ 1.000000e+00, %3631 ], [ %3680, %3678 ]
  %3695 = phi float [ %3669, %3682 ], [ %3640, %3638 ], [ 1.000000e+00, %3631 ], [ %3669, %3678 ]
  %3696 = fmul fast float %3695, %3607
  %3697 = fmul fast float %3694, %3618
  %3698 = fmul fast float %3693, %3629
  %3699 = fadd fast float %3696, %3692
  %3700 = fadd fast float %3697, %3691
  %3701 = fadd fast float %3698, %3690
  %3702 = fmul fast float %3695, %3606
  %3703 = fmul fast float %3694, %3617
  %3704 = fmul fast float %3693, %3628
  br label %3705

; <label>:3705                                    ; preds = %3689, %3500
  %3706 = phi float [ %3506, %3500 ], [ %3704, %3689 ]
  %3707 = phi float [ %3505, %3500 ], [ %3703, %3689 ]
  %3708 = phi float [ %3504, %3500 ], [ %3702, %3689 ]
  %3709 = phi float [ %3503, %3500 ], [ %3701, %3689 ]
  %3710 = phi float [ %3502, %3500 ], [ %3700, %3689 ]
  %3711 = phi float [ %3501, %3500 ], [ %3699, %3689 ]
  %3712 = fmul fast float %3708, %2849
  %3713 = fmul fast float %3707, %2850
  %3714 = fmul fast float %3706, %2851
  %3715 = fsub fast float 1.000000e+00, %2912
  %3716 = fmul fast float %3711, %3715
  %3717 = fmul fast float %3710, %3715
  %3718 = fmul fast float %3709, %3715
  %3719 = fadd fast float %3716, %3712
  %3720 = fadd fast float %3717, %3713
  %3721 = fadd fast float %3718, %3714
  %3722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %3723 = extractvalue %dx.types.CBufRet.f32 %3722, 2
  %3724 = fmul fast float %3723, %2922
  %3725 = call float @dx.op.unary.f32(i32 7, float %3724)  ; Saturate(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %30, i32 %31, i32 undef, float %2912, float %2912, float %2912, float %2912, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %3726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3727 = extractvalue %dx.types.CBufRet.f32 %3726, 0
  %3728 = fmul fast float %3727, %3719
  %3729 = fmul fast float %3727, %3720
  %3730 = fmul fast float %3727, %3721
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %30, i32 %31, i32 undef, float %3728, float %3729, float %3730, float %3728, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %30, i32 %31, i32 undef, float %3725, float %3725, float %3725, float %3725, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!dx.entryPoints = !{!42}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !27, !33, !36}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !19, !20, !22, !23, !24, !25, !26}
!6 = !{i32 0, %"class.Texture3D<float>"* undef, !"", i32 0, i32 3, i32 1, i32 4, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 16, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture3D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 4, i32 0, !7}
!10 = !{i32 3, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 4, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 8, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 9, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 18, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %"class.StructuredBuffer<VolumetricBBoxGpu>"* undef, !"", i32 0, i32 25, i32 1, i32 12, i32 0, !15}
!15 = !{i32 1, i32 164}
!16 = !{i32 8, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 31, i32 1, i32 7, i32 0, !7}
!17 = !{i32 9, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 30, i32 1, i32 4, i32 0, !7}
!18 = !{i32 10, %"class.Texture2D<float>"* undef, !"", i32 0, i32 29, i32 1, i32 2, i32 0, !7}
!19 = !{i32 11, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 0, i32 26, i32 1, i32 2, i32 0, !7}
!20 = !{i32 12, %"class.Texture2D<unsigned int>"* undef, !"", i32 0, i32 32, i32 1, i32 2, i32 0, !21}
!21 = !{i32 0, i32 5}
!22 = !{i32 13, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 0, i32 33, i32 1, i32 4, i32 0, !7}
!23 = !{i32 14, %"class.Texture1D<float>"* undef, !"", i32 0, i32 14, i32 1, i32 1, i32 0, !7}
!24 = !{i32 15, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 13, i32 1, i32 2, i32 0, !7}
!25 = !{i32 16, %"class.Texture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!26 = !{i32 17, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 17, i32 1, i32 11, i32 0, null}
!27 = !{!28, !29, !30, !31}
!28 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!29 = !{i32 1, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!30 = !{i32 2, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!31 = !{i32 3, %"class.RWTexture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 7, i1 false, i1 false, i1 false, !32}
!32 = !{i32 0, i32 14}
!33 = !{!34, !35}
!34 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!35 = !{i32 1, %FogRaymarchingConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 112, null}
!36 = !{!37, !38, !39, !40, !41}
!37 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!38 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!39 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!40 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!41 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!42 = !{void ()* @cs_fog_raymarching_clouds_heightmap_particles, !"cs_fog_raymarching_clouds_heightmap_particles", null, !4, !43}
!43 = !{i32 0, i64 272, i32 4, !44}
!44 = !{i32 8, i32 8, i32 1}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
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
!62 = distinct !{!62, !63}
!63 = !{!"llvm.loop.unroll.disable"}
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
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 2}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 1}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 1}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 2}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 1}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 2}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 2}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 2}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 2}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 2}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 1}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 2}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 2}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 2}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 1}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 2}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 2}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 2}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 2}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 2}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 2}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 1}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 2}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 2}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 2}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 2}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 2}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 2}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 2}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 2}
!107 = !{!108, !108, i64 0}
!108 = !{!"float", !109, i64 0}
!109 = !{!"omnipotent char", !110, i64 0}
!110 = !{!"Simple C/C++ TBAA"}
!111 = !{!112, !114, !116, !117, !119, !120, !121}
!112 = distinct !{!112, !113, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!113 = distinct !{!113, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!114 = distinct !{!114, !115, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!115 = distinct !{!115, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!116 = distinct !{!116, !115, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!117 = distinct !{!117, !118, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %scattering"}
!118 = distinct !{!118, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z"}
!119 = distinct !{!119, !118, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %transmission"}
!120 = distinct !{!120, !118, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %depthDensityWeighted"}
!121 = distinct !{!121, !118, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %rawShadowmapData"}
!122 = distinct !{!122, !"dx.controlflow.hints", i32 2}
!123 = !{!124}
!124 = distinct !{!124, !125, !"\01?sort@@YAXAIAM00@Z: %c"}
!125 = distinct !{!125, !"\01?sort@@YAXAIAM00@Z"}
!126 = !{!127, !128, !112, !114, !116, !117, !119, !120, !121}
!127 = distinct !{!127, !125, !"\01?sort@@YAXAIAM00@Z: %a"}
!128 = distinct !{!128, !125, !"\01?sort@@YAXAIAM00@Z: %b"}
!129 = !{!128}
!130 = !{!127, !124, !112, !114, !116, !117, !119, !120, !121}
!131 = !{!127}
!132 = !{!128, !124, !112, !114, !116, !117, !119, !120, !121}
!133 = !{!134}
!134 = distinct !{!134, !135, !"\01?sort@@YAXAIAM00@Z: %c"}
!135 = distinct !{!135, !"\01?sort@@YAXAIAM00@Z"}
!136 = !{!137, !138, !112, !114, !116, !117, !119, !120, !121}
!137 = distinct !{!137, !135, !"\01?sort@@YAXAIAM00@Z: %a"}
!138 = distinct !{!138, !135, !"\01?sort@@YAXAIAM00@Z: %b"}
!139 = !{!138}
!140 = !{!137, !134, !112, !114, !116, !117, !119, !120, !121}
!141 = !{!137}
!142 = !{!138, !134, !112, !114, !116, !117, !119, !120, !121}
!143 = distinct !{!143, !"dx.controlflow.hints", i32 2}
!144 = distinct !{!144, !"dx.controlflow.hints", i32 2}
!145 = distinct !{!145, !"dx.controlflow.hints", i32 1}
!146 = distinct !{!146, !"dx.controlflow.hints", i32 2}
!147 = distinct !{!147, !"dx.controlflow.hints", i32 1}
!148 = distinct !{!148, !"dx.controlflow.hints", i32 1}
!149 = distinct !{!149, !"dx.controlflow.hints", i32 1}
!150 = distinct !{!150, !"dx.controlflow.hints", i32 1}
!151 = distinct !{!151, !"dx.controlflow.hints", i32 2}
!152 = distinct !{!152, !"dx.controlflow.hints", i32 1}

