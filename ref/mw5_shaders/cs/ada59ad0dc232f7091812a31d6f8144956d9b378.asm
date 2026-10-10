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
; shader hash: 8acf138ff90c506dfe8eedfc94b44515
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
;                                   texture     f32          2d      T1            t27     1
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

define void @cs_fog_raymarching_clouds_particles_brfog() {
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
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
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
  %56 = extractvalue %dx.types.ResRet.f32 %55, 1
  %57 = extractvalue %dx.types.ResRet.f32 %55, 2
  %58 = extractvalue %dx.types.ResRet.f32 %55, 3
  %59 = fadd fast float %56, %50
  %60 = fadd fast float %57, %50
  %61 = fadd fast float %58, %50
  %62 = call float @dx.op.unary.f32(i32 22, float %59)  ; Frc(value)
  %63 = call float @dx.op.unary.f32(i32 22, float %60)  ; Frc(value)
  %64 = call float @dx.op.unary.f32(i32 22, float %61)  ; Frc(value)
  %65 = fadd fast float %63, %46
  %66 = fadd fast float %64, %47
  %67 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %68 = extractvalue %dx.types.CBufRet.f32 %67, 2
  %69 = extractvalue %dx.types.CBufRet.f32 %67, 3
  %70 = fmul fast float %68, %65
  %71 = fmul fast float %69, %66
  %72 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %73 = extractvalue %dx.types.CBufRet.f32 %72, 0
  %74 = extractvalue %dx.types.CBufRet.f32 %72, 1
  %75 = extractvalue %dx.types.CBufRet.f32 %72, 2
  %76 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %77 = extractvalue %dx.types.CBufRet.f32 %76, 1
  %78 = fmul fast float %70, 2.000000e+00
  %79 = fmul fast float %71, 2.000000e+00
  %80 = fsub fast float 1.000000e+00, %78
  %81 = fsub fast float 1.000000e+00, %79
  %82 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %83 = extractvalue %dx.types.CBufRet.f32 %82, 0
  %84 = extractvalue %dx.types.CBufRet.f32 %82, 1
  %85 = extractvalue %dx.types.CBufRet.f32 %82, 2
  %86 = fmul fast float %83, %80
  %87 = fmul fast float %84, %80
  %88 = fmul fast float %85, %80
  %89 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %90 = extractvalue %dx.types.CBufRet.f32 %89, 0
  %91 = extractvalue %dx.types.CBufRet.f32 %89, 1
  %92 = extractvalue %dx.types.CBufRet.f32 %89, 2
  %93 = fmul fast float %90, %81
  %94 = fmul fast float %91, %81
  %95 = fmul fast float %92, %81
  %96 = fadd fast float %93, %86
  %97 = fadd fast float %94, %87
  %98 = fadd fast float %95, %88
  %99 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %100 = extractvalue %dx.types.CBufRet.f32 %99, 0
  %101 = extractvalue %dx.types.CBufRet.f32 %99, 1
  %102 = extractvalue %dx.types.CBufRet.f32 %99, 2
  %103 = fadd fast float %96, %100
  %104 = fadd fast float %97, %101
  %105 = fadd fast float %98, %102
  %106 = fmul fast float %103, %77
  %107 = fmul fast float %104, %77
  %108 = fmul fast float %105, %77
  %109 = fmul fast float %106, %106
  %110 = fmul fast float %107, %107
  %111 = fadd fast float %109, %110
  %112 = fmul fast float %108, %108
  %113 = fadd fast float %111, %112
  %114 = call float @dx.op.unary.f32(i32 24, float %113)  ; Sqrt(value)
  %115 = fdiv fast float 1.000000e+00, %114
  %116 = fmul fast float %106, %115
  %117 = fmul fast float %107, %115
  %118 = fmul fast float %108, %115
  %119 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %44, i32 %45, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %120 = extractvalue %dx.types.ResRet.f32 %119, 0
  %121 = fcmp fast ogt float %120, -1.000000e+00
  %122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %123 = extractvalue %dx.types.CBufRet.f32 %122, 1
  %124 = select i1 %121, float %123, float 1.000000e+00
  %125 = fadd fast float %120, 1.000000e+00
  %126 = fmul fast float %124, %125
  %127 = call float @dx.op.unary.f32(i32 6, float %126)  ; FAbs(value)
  %128 = fdiv fast float 1.000000e+00, %77
  %129 = fmul fast float %128, %114
  %130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %131 = extractvalue %dx.types.CBufRet.f32 %130, 1
  %132 = fmul fast float %131, %129
  %133 = fmul fast float %129, %127
  %134 = extractvalue %dx.types.CBufRet.f32 %122, 3
  %135 = fcmp fast oge float %127, %134
  %136 = call float @dx.op.binary.f32(i32 36, float %133, float %132)  ; FMin(a,b)
  %137 = select i1 %135, float %132, float %136
  %138 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %139 = extractvalue %dx.types.CBufRet.i32 %138, 3
  %140 = icmp eq i32 %139, 0
  %141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %142 = extractvalue %dx.types.CBufRet.f32 %141, 2
  %143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %144 = extractvalue %dx.types.CBufRet.f32 %143, 2
  %145 = fsub fast float %142, %75
  %146 = fadd fast float %145, %144
  br i1 %140, label %158, label %147, !dx.controlflow.hints !45

; <label>:147                                     ; preds = %0
  %148 = fsub fast float -0.000000e+00, %74
  %149 = fsub fast float -0.000000e+00, %73
  %150 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %149, float %148, float %146)  ; Dot3(ax,ay,az,bx,by,bz)
  %151 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %116, float %117, float %118)  ; Dot3(ax,ay,az,bx,by,bz)
  %152 = fdiv fast float 1.000000e+00, %151
  %153 = fmul fast float %152, %150
  %154 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %149, float %148, float %145)  ; Dot3(ax,ay,az,bx,by,bz)
  %155 = fmul fast float %152, %154
  %156 = call float @dx.op.binary.f32(i32 36, float %153, float %155)  ; FMin(a,b)
  %157 = call float @dx.op.binary.f32(i32 35, float %153, float %155)  ; FMax(a,b)
  br label %191

; <label>:158                                     ; preds = %0
  %159 = fdiv fast float 1.000000e+00, %116
  %160 = fdiv fast float 1.000000e+00, %117
  %161 = fdiv fast float 1.000000e+00, %118
  %162 = extractvalue %dx.types.CBufRet.f32 %141, 0
  %163 = extractvalue %dx.types.CBufRet.f32 %141, 1
  %164 = extractvalue %dx.types.CBufRet.f32 %143, 0
  %165 = extractvalue %dx.types.CBufRet.f32 %143, 1
  %166 = fsub fast float %162, %73
  %167 = fmul fast float %166, %159
  %168 = fadd fast float %166, %164
  %169 = fmul fast float %168, %159
  %170 = call float @dx.op.binary.f32(i32 36, float %167, float %169)  ; FMin(a,b)
  %171 = call float @dx.op.binary.f32(i32 35, float %167, float %169)  ; FMax(a,b)
  %172 = fsub fast float %163, %74
  %173 = fmul fast float %172, %160
  %174 = fadd fast float %172, %165
  %175 = fmul fast float %174, %160
  %176 = call float @dx.op.binary.f32(i32 36, float %173, float %175)  ; FMin(a,b)
  %177 = call float @dx.op.binary.f32(i32 35, float %170, float %176)  ; FMax(a,b)
  %178 = call float @dx.op.binary.f32(i32 35, float %173, float %175)  ; FMax(a,b)
  %179 = call float @dx.op.binary.f32(i32 36, float %171, float %178)  ; FMin(a,b)
  %180 = fmul fast float %145, %161
  %181 = fmul fast float %146, %161
  %182 = call float @dx.op.binary.f32(i32 36, float %180, float %181)  ; FMin(a,b)
  %183 = call float @dx.op.binary.f32(i32 35, float %177, float %182)  ; FMax(a,b)
  %184 = call float @dx.op.binary.f32(i32 35, float %180, float %181)  ; FMax(a,b)
  %185 = call float @dx.op.binary.f32(i32 36, float %179, float %184)  ; FMin(a,b)
  %186 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %183)  ; FMax(a,b)
  %187 = fcmp fast ult float %185, %186
  br i1 %187, label %191, label %188, !dx.controlflow.hints !46

; <label>:188                                     ; preds = %158
  %189 = call float @dx.op.binary.f32(i32 36, float %183, float %185)  ; FMin(a,b)
  %190 = call float @dx.op.binary.f32(i32 35, float %183, float %185)  ; FMax(a,b)
  br label %191

; <label>:191                                     ; preds = %188, %158, %147
  %192 = phi float [ %156, %147 ], [ %189, %188 ], [ 0.000000e+00, %158 ]
  %193 = phi float [ %157, %147 ], [ %190, %188 ], [ 0.000000e+00, %158 ]
  %194 = fcmp fast oeq float %193, 0.000000e+00
  br i1 %194, label %198, label %195, !dx.controlflow.hints !47

; <label>:195                                     ; preds = %191
  %196 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %192)  ; FMin(a,b)
  %197 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %193)  ; FMax(a,b)
  br label %198

; <label>:198                                     ; preds = %195, %191
  %199 = phi i32 [ 1, %195 ], [ 0, %191 ]
  %200 = phi float [ %197, %195 ], [ -1.000000e+00, %191 ]
  %201 = phi float [ %196, %195 ], [ 0x47EFFFFFE0000000, %191 ]
  %202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %203 = extractvalue %dx.types.CBufRet.f32 %202, 3
  %204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %205 = extractvalue %dx.types.CBufRet.f32 %204, 0
  %206 = fsub fast float -0.000000e+00, %73
  %207 = fsub fast float -0.000000e+00, %74
  %208 = fsub fast float %203, %75
  %209 = fadd fast float %208, %205
  %210 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %206, float %207, float %209)  ; Dot3(ax,ay,az,bx,by,bz)
  %211 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %116, float %117, float %118)  ; Dot3(ax,ay,az,bx,by,bz)
  %212 = fdiv fast float 1.000000e+00, %211
  %213 = fmul fast float %212, %210
  %214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %215 = extractvalue %dx.types.CBufRet.f32 %214, 2
  %216 = fsub fast float %215, %75
  %217 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %206, float %207, float %216)  ; Dot3(ax,ay,az,bx,by,bz)
  %218 = fmul fast float %212, %217
  %219 = call float @dx.op.binary.f32(i32 36, float %213, float %218)  ; FMin(a,b)
  %220 = call float @dx.op.binary.f32(i32 35, float %213, float %218)  ; FMax(a,b)
  %221 = call float @dx.op.binary.f32(i32 36, float %201, float %219)  ; FMin(a,b)
  %222 = call float @dx.op.binary.f32(i32 35, float %200, float %220)  ; FMax(a,b)
  %223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %224 = extractvalue %dx.types.CBufRet.f32 %223, 2
  %225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %226 = extractvalue %dx.types.CBufRet.f32 %225, 3
  %227 = fsub fast float %224, %75
  %228 = fadd fast float %227, %226
  %229 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %206, float %207, float %228)  ; Dot3(ax,ay,az,bx,by,bz)
  %230 = fmul fast float %212, %229
  %231 = fcmp fast olt float %230, 0.000000e+00
  %232 = fcmp fast ogt float %118, 0.000000e+00
  %233 = and i1 %232, %231
  br i1 %233, label %238, label %234, !dx.controlflow.hints !48

; <label>:234                                     ; preds = %198
  %235 = fcmp fast olt float %118, 0.000000e+00
  br i1 %235, label %236, label %238, !dx.controlflow.hints !49

; <label>:236                                     ; preds = %234
  %237 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %230)  ; FMax(a,b)
  br label %238

; <label>:238                                     ; preds = %236, %234, %198
  %239 = phi float [ 0.000000e+00, %198 ], [ %237, %236 ], [ 0.000000e+00, %234 ]
  %240 = phi float [ 0.000000e+00, %198 ], [ 0x47EFFFFFE0000000, %236 ], [ %230, %234 ]
  %241 = fcmp fast oeq float %240, 0.000000e+00
  br i1 %241, label %245, label %242, !dx.controlflow.hints !50

; <label>:242                                     ; preds = %238
  %243 = call float @dx.op.binary.f32(i32 36, float %221, float %239)  ; FMin(a,b)
  %244 = call float @dx.op.binary.f32(i32 35, float %222, float %240)  ; FMax(a,b)
  br label %245

; <label>:245                                     ; preds = %242, %238
  %246 = phi i32 [ 1, %242 ], [ 0, %238 ]
  %247 = phi float [ %244, %242 ], [ %222, %238 ]
  %248 = phi float [ %243, %242 ], [ %221, %238 ]
  %249 = fdiv fast float 1.000000e+00, %116
  %250 = fdiv fast float 1.000000e+00, %117
  %251 = fdiv fast float 1.000000e+00, %118
  %252 = call float @dx.op.binary.f32(i32 36, float %137, float %247)  ; FMin(a,b)
  %253 = call float @dx.op.binary.f32(i32 35, float %114, float %248)  ; FMax(a,b)
  %254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %255 = extractvalue %dx.types.CBufRet.f32 %254, 0
  %256 = fmul fast float %62, 2.000000e+00
  %257 = fadd fast float %256, -1.000000e+00
  %258 = fmul fast float %255, %257
  %259 = fadd fast float %258, %253
  %260 = fcmp fast olt float %259, %252
  %261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %262 = extractvalue %dx.types.CBufRet.f32 %261, 2
  %263 = fcmp fast olt float %262, 1.000000e+00
  %264 = and i1 %263, %260
  br i1 %264, label %265, label %2735

; <label>:265                                     ; preds = %245
  %266 = fmul fast float %259, %118
  %267 = fadd fast float %266, %75
  %268 = fmul fast float %259, %117
  %269 = fadd fast float %268, %74
  %270 = fmul fast float %259, %116
  %271 = fadd fast float %270, %73
  br label %272

; <label>:272                                     ; preds = %2705, %265
  %273 = phi i32 [ %2707, %2705 ], [ undef, %265 ]
  %274 = phi float [ %2708, %2705 ], [ undef, %265 ]
  %275 = phi float [ %2709, %2705 ], [ undef, %265 ]
  %276 = phi float [ %2710, %2705 ], [ undef, %265 ]
  %277 = phi float [ %2711, %2705 ], [ undef, %265 ]
  %278 = phi float [ %2712, %2705 ], [ undef, %265 ]
  %279 = phi i32 [ %649, %2705 ], [ undef, %265 ]
  %280 = phi float [ %650, %2705 ], [ undef, %265 ]
  %281 = phi float [ %405, %2705 ], [ undef, %265 ]
  %282 = phi float [ %406, %2705 ], [ undef, %265 ]
  %283 = phi float [ %407, %2705 ], [ undef, %265 ]
  %284 = phi float [ %408, %2705 ], [ undef, %265 ]
  %285 = phi float [ %2713, %2705 ], [ 0.000000e+00, %265 ]
  %286 = phi float [ %2714, %2705 ], [ 1.000000e+00, %265 ]
  %287 = phi float [ %2715, %2705 ], [ 0.000000e+00, %265 ]
  %288 = phi float [ %2716, %2705 ], [ 0.000000e+00, %265 ]
  %289 = phi float [ %2717, %2705 ], [ 0.000000e+00, %265 ]
  %290 = phi float [ %2727, %2705 ], [ %271, %265 ]
  %291 = phi float [ %2728, %2705 ], [ %269, %265 ]
  %292 = phi float [ %2729, %2705 ], [ %267, %265 ]
  %293 = phi float [ %2706, %2705 ], [ %259, %265 ]
  %294 = phi i32 [ %410, %2705 ], [ 10, %265 ]
  %295 = phi float [ %2718, %2705 ], [ 0.000000e+00, %265 ]
  %296 = phi float [ %2719, %2705 ], [ 0.000000e+00, %265 ]
  %297 = phi float [ %2720, %2705 ], [ 0.000000e+00, %265 ]
  %298 = phi float [ %2721, %2705 ], [ 0.000000e+00, %265 ]
  %299 = phi float [ %2722, %2705 ], [ 0.000000e+00, %265 ]
  %300 = phi i32 [ %2723, %2705 ], [ 0, %265 ]
  %301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %302 = extractvalue %dx.types.CBufRet.f32 %301, 0
  %303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %304 = extractvalue %dx.types.CBufRet.f32 %303, 0
  %305 = extractvalue %dx.types.CBufRet.f32 %303, 1
  %306 = fsub fast float %290, %304
  %307 = fsub fast float %291, %305
  %308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %309 = extractvalue %dx.types.CBufRet.f32 %308, 2
  %310 = extractvalue %dx.types.CBufRet.f32 %308, 3
  %311 = fmul fast float %306, %309
  %312 = fmul fast float %307, %310
  %313 = call float @dx.op.binary.f32(i32 36, float %311, float %312)  ; FMin(a,b)
  %314 = fcmp fast olt float %313, 0.000000e+00
  %315 = call float @dx.op.binary.f32(i32 35, float %311, float %312)  ; FMax(a,b)
  %316 = fcmp fast ogt float %315, 1.000000e+00
  %317 = or i1 %314, %316
  %318 = extractvalue %dx.types.CBufRet.f32 %303, 2
  %319 = fcmp fast olt float %292, %318
  %320 = or i1 %317, %319
  %321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %322 = extractvalue %dx.types.CBufRet.f32 %321, 3
  %323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %324 = extractvalue %dx.types.CBufRet.f32 %323, 0
  %325 = fadd fast float %324, %322
  %326 = fcmp fast ogt float %292, %325
  %327 = or i1 %320, %326
  br i1 %327, label %328, label %357, !dx.controlflow.hints !51

; <label>:328                                     ; preds = %272
  %329 = extractvalue %dx.types.CBufRet.f32 %308, 0
  %330 = extractvalue %dx.types.CBufRet.f32 %308, 1
  %331 = fsub fast float %304, %290
  %332 = fmul fast float %331, %249
  %333 = fadd fast float %331, %329
  %334 = fmul fast float %333, %249
  %335 = call float @dx.op.binary.f32(i32 36, float %332, float %334)  ; FMin(a,b)
  %336 = call float @dx.op.binary.f32(i32 35, float %332, float %334)  ; FMax(a,b)
  %337 = fsub fast float %305, %291
  %338 = fmul fast float %337, %250
  %339 = fadd fast float %337, %330
  %340 = fmul fast float %339, %250
  %341 = call float @dx.op.binary.f32(i32 36, float %338, float %340)  ; FMin(a,b)
  %342 = call float @dx.op.binary.f32(i32 35, float %335, float %341)  ; FMax(a,b)
  %343 = call float @dx.op.binary.f32(i32 35, float %338, float %340)  ; FMax(a,b)
  %344 = call float @dx.op.binary.f32(i32 36, float %336, float %343)  ; FMin(a,b)
  %345 = fsub fast float %318, %292
  %346 = fmul fast float %345, %251
  %347 = fsub fast float %322, %292
  %348 = fadd fast float %347, %324
  %349 = fmul fast float %348, %251
  %350 = call float @dx.op.binary.f32(i32 36, float %346, float %349)  ; FMin(a,b)
  %351 = call float @dx.op.binary.f32(i32 35, float %342, float %350)  ; FMax(a,b)
  %352 = call float @dx.op.binary.f32(i32 35, float %346, float %349)  ; FMax(a,b)
  %353 = call float @dx.op.binary.f32(i32 36, float %344, float %352)  ; FMin(a,b)
  %354 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %351)  ; FMax(a,b)
  %355 = fcmp fast oge float %353, %354
  %356 = select i1 %355, float %351, float 1.000000e+07
  br label %403

; <label>:357                                     ; preds = %272
  %358 = fsub fast float 1.000000e+00, %312
  %359 = icmp eq i32 %294, 0
  br i1 %359, label %388, label %360

; <label>:360                                     ; preds = %357
  br label %361

; <label>:361                                     ; preds = %384, %360
  %362 = phi i32 [ %385, %384 ], [ %294, %360 ]
  %363 = uitofp i32 %362 to float
  %364 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %27, float %311, float %358, float undef, float undef, i32 0, i32 0, i32 undef, float %363)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %365 = extractvalue %dx.types.ResRet.f32 %364, 0
  %366 = extractvalue %dx.types.ResRet.f32 %364, 1
  %367 = extractvalue %dx.types.ResRet.f32 %364, 2
  %368 = fcmp fast oeq float %365, 0.000000e+00
  %369 = fcmp ule float %292, %367
  %370 = fcmp uge float %292, %366
  %371 = or i1 %370, %369
  %372 = or i1 %368, %371
  br i1 %372, label %373, label %384, !dx.controlflow.hints !52

; <label>:373                                     ; preds = %361
  %374 = extractvalue %dx.types.ResRet.f32 %364, 3
  %375 = extractvalue %dx.types.CBufRet.f32 %308, 0
  %376 = and i32 %362, 31
  %377 = lshr i32 1024, %376
  %378 = uitofp i32 %377 to float
  %379 = fdiv fast float %375, %378
  %380 = add i32 %362, 1
  %381 = uitofp i32 %380 to float
  %382 = call float @dx.op.binary.f32(i32 36, float 1.000000e+01, float %381)  ; FMin(a,b)
  %383 = fptosi float %382 to i32
  br label %403

; <label>:384                                     ; preds = %361
  %385 = add i32 %362, -1
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %387, label %361, !llvm.loop !53

; <label>:387                                     ; preds = %384
  br label %388

; <label>:388                                     ; preds = %387, %357
  %389 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %26, float %311, float %358, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %390 = extractvalue %dx.types.ResRet.f32 %389, 0
  %391 = extractvalue %dx.types.ResRet.f32 %389, 1
  %392 = extractvalue %dx.types.ResRet.f32 %389, 2
  %393 = extractvalue %dx.types.ResRet.f32 %389, 3
  %394 = extractvalue %dx.types.CBufRet.f32 %308, 0
  %395 = fmul fast float %394, 9.765625e-04
  %396 = fcmp fast oeq float %390, 0.000000e+00
  %397 = fcmp ule float %292, %392
  %398 = fcmp uge float %292, %391
  %399 = or i1 %398, %397
  %400 = or i1 %396, %399
  %401 = zext i1 %400 to i32
  %402 = xor i32 %401, 1
  br label %403

; <label>:403                                     ; preds = %388, %373, %328
  %404 = phi float [ %356, %328 ], [ %379, %373 ], [ %395, %388 ]
  %405 = phi float [ %281, %328 ], [ %365, %373 ], [ %390, %388 ]
  %406 = phi float [ %282, %328 ], [ %366, %373 ], [ %391, %388 ]
  %407 = phi float [ %283, %328 ], [ %367, %373 ], [ %392, %388 ]
  %408 = phi float [ %284, %328 ], [ %374, %373 ], [ %393, %388 ]
  %409 = phi i32 [ 0, %328 ], [ 0, %373 ], [ %402, %388 ]
  %410 = phi i32 [ 10, %328 ], [ %383, %373 ], [ 1, %388 ]
  %411 = icmp eq i32 %409, 0
  %412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %413 = extractvalue %dx.types.CBufRet.f32 %412, 2
  %414 = call float @dx.op.binary.f32(i32 35, float %404, float %413)  ; FMax(a,b)
  %415 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %414)  ; FMin(a,b)
  %416 = icmp eq i32 %199, 0
  br i1 %416, label %472, label %417, !dx.controlflow.hints !55

; <label>:417                                     ; preds = %403
  %418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %419 = extractvalue %dx.types.CBufRet.f32 %418, 0
  %420 = extractvalue %dx.types.CBufRet.f32 %418, 1
  %421 = extractvalue %dx.types.CBufRet.f32 %418, 2
  %422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %423 = extractvalue %dx.types.CBufRet.f32 %422, 0
  %424 = extractvalue %dx.types.CBufRet.f32 %422, 1
  %425 = extractvalue %dx.types.CBufRet.f32 %422, 2
  %426 = fsub fast float %290, %423
  %427 = fsub fast float %291, %424
  %428 = fsub fast float %292, %425
  %429 = fmul fast float %426, %419
  %430 = fmul fast float %427, %420
  %431 = fmul fast float %428, %421
  %432 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %433 = extractvalue %dx.types.CBufRet.i32 %432, 3
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %438, label %435, !dx.controlflow.hints !56

; <label>:435                                     ; preds = %417
  %436 = call float @dx.op.unary.f32(i32 22, float %429)  ; Frc(value)
  %437 = call float @dx.op.unary.f32(i32 22, float %430)  ; Frc(value)
  br label %438

; <label>:438                                     ; preds = %435, %417
  %439 = phi float [ %436, %435 ], [ %429, %417 ]
  %440 = phi float [ %437, %435 ], [ %430, %417 ]
  %441 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %24, float %439, float %440, float %431, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %442 = extractvalue %dx.types.ResRet.f32 %441, 0
  %443 = fmul fast float %442, 2.000000e+00
  %444 = fadd fast float %443, -1.000000e+00
  %445 = extractvalue %dx.types.CBufRet.f32 %418, 3
  %446 = fmul fast float %444, %445
  %447 = fcmp fast olt float %446, 0.000000e+00
  %448 = fcmp fast oge float %431, 0.000000e+00
  %449 = fcmp fast ole float %431, 1.000000e+00
  br i1 %434, label %452, label %450, !dx.controlflow.hints !57

; <label>:450                                     ; preds = %438
  %451 = and i1 %448, %449
  br label %462

; <label>:452                                     ; preds = %438
  %453 = fcmp fast oge float %429, 0.000000e+00
  %454 = fcmp fast oge float %430, 0.000000e+00
  %455 = and i1 %453, %454
  %456 = and i1 %448, %455
  %457 = fcmp fast ole float %429, 1.000000e+00
  %458 = fcmp fast ole float %430, 1.000000e+00
  %459 = and i1 %457, %458
  %460 = and i1 %449, %459
  %461 = and i1 %456, %460
  br label %462

; <label>:462                                     ; preds = %452, %450
  %463 = phi i1 [ %451, %450 ], [ %461, %452 ]
  %464 = and i1 %447, %463
  %465 = call float @dx.op.unary.f32(i32 6, float %446)  ; FAbs(value)
  %466 = extractvalue %dx.types.CBufRet.f32 %412, 1
  %467 = extractvalue %dx.types.CBufRet.f32 %412, 0
  %468 = call float @dx.op.binary.f32(i32 35, float %465, float %467)  ; FMax(a,b)
  %469 = select i1 %464, float %466, float %468
  %470 = zext i1 %464 to i32
  %471 = call float @dx.op.binary.f32(i32 36, float %415, float %469)  ; FMin(a,b)
  br label %472

; <label>:472                                     ; preds = %462, %403
  %473 = phi i32 [ %470, %462 ], [ 0, %403 ]
  %474 = phi float [ %471, %462 ], [ %415, %403 ]
  %475 = icmp eq i32 %246, 0
  br i1 %475, label %647, label %476, !dx.controlflow.hints !58

; <label>:476                                     ; preds = %472
  %477 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %478 = extractvalue %dx.types.CBufRet.i32 %477, 1
  %479 = and i32 %478, 1
  %480 = icmp eq i32 %479, 0
  br i1 %480, label %481, label %638, !dx.controlflow.hints !59

; <label>:481                                     ; preds = %476
  %482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %483 = extractvalue %dx.types.CBufRet.f32 %482, 2
  %484 = extractvalue %dx.types.CBufRet.f32 %482, 3
  %485 = fmul fast float %483, %290
  %486 = fmul fast float %484, %291
  %487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %488 = extractvalue %dx.types.CBufRet.f32 %487, 0
  %489 = extractvalue %dx.types.CBufRet.f32 %487, 1
  %490 = fadd fast float %485, %488
  %491 = fadd fast float %486, %489
  %492 = call float @dx.op.unary.f32(i32 7, float %490)  ; Saturate(value)
  %493 = call float @dx.op.unary.f32(i32 7, float %491)  ; Saturate(value)
  %494 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %26, float %492, float %493, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %495 = extractvalue %dx.types.ResRet.f32 %494, 0
  %496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %497 = extractvalue %dx.types.CBufRet.f32 %496, 0
  %498 = fmul fast float %497, %495
  %499 = fsub fast float %490, %492
  %500 = fsub fast float %491, %493
  %501 = extractvalue %dx.types.CBufRet.f32 %482, 0
  %502 = extractvalue %dx.types.CBufRet.f32 %482, 1
  %503 = fmul fast float %501, %499
  %504 = fmul fast float %502, %500
  %505 = fmul fast float %503, %503
  %506 = fmul fast float %504, %504
  %507 = fadd fast float %505, %506
  %508 = call float @dx.op.unary.f32(i32 24, float %507)  ; Sqrt(value)
  %509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %510 = extractvalue %dx.types.CBufRet.f32 %509, 3
  %511 = fmul fast float %510, %508
  %512 = call float @dx.op.unary.f32(i32 7, float %511)  ; Saturate(value)
  %513 = extractvalue %dx.types.CBufRet.f32 %509, 2
  %514 = fsub fast float %513, %498
  %515 = fmul fast float %514, %512
  %516 = extractvalue %dx.types.CBufRet.f32 %496, 1
  %517 = fsub fast float %292, %498
  %518 = fsub fast float %517, %516
  %519 = fsub fast float %518, %515
  %520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %521 = extractvalue %dx.types.CBufRet.f32 %520, 2
  %522 = fsub fast float %519, %521
  %523 = fcmp fast olt float %522, 0.000000e+00
  %524 = call float @dx.op.unary.f32(i32 6, float %522)  ; FAbs(value)
  %525 = extractvalue %dx.types.CBufRet.i32 %477, 0
  %526 = icmp eq i32 %525, 0
  br i1 %526, label %580, label %527

; <label>:527                                     ; preds = %481
  br label %528

; <label>:528                                     ; preds = %567, %527
  %529 = phi i32 [ %573, %567 ], [ 1, %527 ]
  %530 = phi float [ %575, %567 ], [ 0x47EFFFFFE0000000, %527 ]
  %531 = phi i32 [ %576, %567 ], [ 0, %527 ]
  %532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %533 = extractvalue %dx.types.CBufRet.f32 %532, 1
  %534 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %535 = extractvalue %dx.types.CBufRet.i32 %534, 1
  %536 = and i32 %535, 8
  %537 = icmp eq i32 %536, 0
  %538 = fcmp fast ogt float %533, %519
  %539 = or i1 %538, %537
  %540 = add i32 %531, 171
  %541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 %540)  ; CBufferLoadLegacy(handle,regIndex)
  %542 = extractvalue %dx.types.CBufRet.f32 %541, 0
  %543 = extractvalue %dx.types.CBufRet.f32 %541, 1
  %544 = extractvalue %dx.types.CBufRet.f32 %541, 2
  br i1 %539, label %545, label %551, !dx.controlflow.hints !60

; <label>:545                                     ; preds = %528
  %546 = fsub fast float %542, %290
  %547 = fsub fast float %543, %291
  %548 = fmul fast float %546, %546
  %549 = fmul fast float %547, %547
  %550 = fadd fast float %548, %549
  br label %567

; <label>:551                                     ; preds = %528
  %552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %553 = extractvalue %dx.types.CBufRet.f32 %552, 2
  %554 = extractvalue %dx.types.CBufRet.f32 %532, 2
  %555 = fmul fast float %554, %553
  %556 = fsub fast float %555, %533
  %557 = fdiv fast float %544, %556
  %558 = fsub fast float %290, %542
  %559 = fsub fast float %291, %543
  %560 = fsub fast float %519, %533
  %561 = fmul fast float %557, %560
  %562 = fmul fast float %558, %558
  %563 = fmul fast float %559, %559
  %564 = fadd fast float %562, %563
  %565 = fmul fast float %561, %561
  %566 = fadd fast float %564, %565
  br label %567

; <label>:567                                     ; preds = %551, %545
  %568 = phi float [ %550, %545 ], [ %566, %551 ]
  %569 = call float @dx.op.unary.f32(i32 24, float %568)  ; Sqrt(value)
  %570 = fsub float %544, %569
  %571 = fcmp fast olt float %570, 0.000000e+00
  %572 = zext i1 %571 to i32
  %573 = and i32 %572, %529
  %574 = call float @dx.op.unary.f32(i32 6, float %570)  ; FAbs(value)
  %575 = call float @dx.op.binary.f32(i32 36, float %530, float %574)  ; FMin(a,b)
  %576 = add i32 %531, 1
  %577 = extractvalue %dx.types.CBufRet.i32 %534, 0
  %578 = icmp ult i32 %576, %577
  br i1 %578, label %528, label %579

; <label>:579                                     ; preds = %567
  br label %580

; <label>:580                                     ; preds = %579, %481
  %581 = phi i32 [ 1, %481 ], [ %573, %579 ]
  %582 = phi float [ 0x47EFFFFFE0000000, %481 ], [ %575, %579 ]
  br label %583

; <label>:583                                     ; preds = %583, %580
  %584 = phi i32 [ %581, %580 ], [ %623, %583 ]
  %585 = phi float [ 0x47EFFFFFE0000000, %580 ], [ %625, %583 ]
  %586 = phi i32 [ 0, %580 ], [ %626, %583 ]
  %587 = add nuw nsw i32 %586, 191
  %588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 %587)  ; CBufferLoadLegacy(handle,regIndex)
  %589 = extractvalue %dx.types.CBufRet.f32 %588, 0
  %590 = extractvalue %dx.types.CBufRet.f32 %588, 1
  %591 = extractvalue %dx.types.CBufRet.f32 %588, 2
  %592 = add nuw nsw i32 %586, 195
  %593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 %592)  ; CBufferLoadLegacy(handle,regIndex)
  %594 = extractvalue %dx.types.CBufRet.f32 %593, 0
  %595 = extractvalue %dx.types.CBufRet.f32 %593, 1
  %596 = extractvalue %dx.types.CBufRet.f32 %593, 2
  %597 = fsub fast float %290, %589
  %598 = fsub fast float %291, %590
  %599 = fsub fast float %519, %591
  %600 = call float @dx.op.unary.f32(i32 6, float %597)  ; FAbs(value)
  %601 = call float @dx.op.unary.f32(i32 6, float %598)  ; FAbs(value)
  %602 = call float @dx.op.unary.f32(i32 6, float %599)  ; FAbs(value)
  %603 = fsub fast float %600, %594
  %604 = fsub fast float %601, %595
  %605 = fsub fast float %602, %596
  %606 = call float @dx.op.binary.f32(i32 35, float %603, float 0.000000e+00)  ; FMax(a,b)
  %607 = call float @dx.op.binary.f32(i32 35, float %604, float 0.000000e+00)  ; FMax(a,b)
  %608 = call float @dx.op.binary.f32(i32 35, float %605, float 0.000000e+00)  ; FMax(a,b)
  %609 = fmul fast float %606, %606
  %610 = fmul fast float %607, %607
  %611 = fadd fast float %610, %609
  %612 = fmul fast float %608, %608
  %613 = fadd fast float %611, %612
  %614 = call float @dx.op.unary.f32(i32 24, float %613)  ; Sqrt(value)
  %615 = call float @dx.op.binary.f32(i32 35, float %604, float %605)  ; FMax(a,b)
  %616 = call float @dx.op.binary.f32(i32 35, float %603, float %615)  ; FMax(a,b)
  %617 = call float @dx.op.binary.f32(i32 36, float %616, float 0.000000e+00)  ; FMin(a,b)
  %618 = fadd fast float %617, %614
  %619 = fsub fast float -0.000000e+00, %618
  %620 = fcmp ogt float %618, -0.000000e+00
  %621 = icmp ne i32 %584, 0
  %622 = and i1 %621, %620
  %623 = zext i1 %622 to i32
  %624 = call float @dx.op.unary.f32(i32 6, float %619)  ; FAbs(value)
  %625 = call float @dx.op.binary.f32(i32 36, float %585, float %624)  ; FMin(a,b)
  %626 = add nuw nsw i32 %586, 1
  %627 = icmp eq i32 %626, 4
  br i1 %627, label %628, label %583

; <label>:628                                     ; preds = %583
  %629 = call float @dx.op.binary.f32(i32 36, float %524, float %625)  ; FMin(a,b)
  %630 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %631 = extractvalue %dx.types.CBufRet.i32 %630, 1
  %632 = and i32 %631, 2
  %633 = icmp ne i32 %632, 0
  %634 = xor i1 %622, %633
  %635 = call float @dx.op.binary.f32(i32 36, float %629, float %582)  ; FMin(a,b)
  %636 = and i1 %634, %523
  %637 = zext i1 %636 to i32
  br label %638

; <label>:638                                     ; preds = %628, %476
  %639 = phi i32 [ %279, %476 ], [ %637, %628 ]
  %640 = phi float [ 0.000000e+00, %476 ], [ %635, %628 ]
  %641 = phi float [ %292, %476 ], [ %519, %628 ]
  %642 = icmp ne i32 %639, 0
  %643 = extractvalue %dx.types.CBufRet.f32 %412, 3
  %644 = call float @dx.op.binary.f32(i32 35, float %640, float %643)  ; FMax(a,b)
  %645 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %644)  ; FMin(a,b)
  %646 = zext i1 %642 to i32
  br label %647

; <label>:647                                     ; preds = %638, %472
  %648 = phi i32 [ %646, %638 ], [ 0, %472 ]
  %649 = phi i32 [ %639, %638 ], [ %279, %472 ]
  %650 = phi float [ %641, %638 ], [ %280, %472 ]
  %651 = phi float [ %645, %638 ], [ 0x47EFFFFFE0000000, %472 ]
  %652 = extractvalue %dx.types.CBufRet.f32 %301, 2
  %653 = fmul fast float %652, %293
  %654 = call float @dx.op.unary.f32(i32 23, float %653)  ; Log(value)
  %655 = fmul fast float %654, 0x3FE62E4300000000
  %656 = call float @dx.op.binary.f32(i32 35, float %655, float 1.000000e+00)  ; FMax(a,b)
  %657 = fmul fast float %656, %651
  %658 = call float @dx.op.binary.f32(i32 36, float %657, float %474)  ; FMin(a,b)
  %659 = call float @dx.op.binary.f32(i32 35, float %658, float %302)  ; FMax(a,b)
  %660 = fadd fast float %252, 0x3F1A36E2E0000000
  %661 = fsub fast float %660, %293
  %662 = call float @dx.op.binary.f32(i32 36, float %661, float %659)  ; FMin(a,b)
  %663 = icmp eq i32 %473, 0
  br i1 %663, label %853, label %664, !dx.controlflow.hints !61

; <label>:664                                     ; preds = %647
  %665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %666 = extractvalue %dx.types.CBufRet.f32 %665, 3
  %667 = fmul fast float %666, %293
  %668 = fcmp fast oeq float %667, 0.000000e+00
  br i1 %668, label %683, label %669, !dx.controlflow.hints !62

; <label>:669                                     ; preds = %664
  %670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %671 = extractvalue %dx.types.CBufRet.f32 %670, 3
  %672 = fmul fast float %671, %667
  %673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %674 = extractvalue %dx.types.CBufRet.f32 %673, 0
  %675 = extractvalue %dx.types.CBufRet.f32 %673, 1
  %676 = extractvalue %dx.types.CBufRet.f32 %673, 2
  %677 = fmul fast float %674, %672
  %678 = fmul fast float %675, %672
  %679 = fmul fast float %676, %672
  %680 = call float @dx.op.unary.f32(i32 23, float %677)  ; Log(value)
  %681 = call float @dx.op.unary.f32(i32 23, float %678)  ; Log(value)
  %682 = call float @dx.op.unary.f32(i32 23, float %679)  ; Log(value)
  br label %683

; <label>:683                                     ; preds = %669, %664
  %684 = phi float [ %680, %669 ], [ 0.000000e+00, %664 ]
  %685 = phi float [ %681, %669 ], [ 0.000000e+00, %664 ]
  %686 = phi float [ %682, %669 ], [ 0.000000e+00, %664 ]
  %687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %688 = extractvalue %dx.types.CBufRet.f32 %687, 0
  %689 = extractvalue %dx.types.CBufRet.f32 %687, 1
  %690 = extractvalue %dx.types.CBufRet.f32 %687, 2
  %691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %692 = extractvalue %dx.types.CBufRet.f32 %691, 0
  %693 = extractvalue %dx.types.CBufRet.f32 %691, 1
  %694 = extractvalue %dx.types.CBufRet.f32 %691, 2
  %695 = fsub fast float %290, %692
  %696 = fsub fast float %291, %693
  %697 = fsub fast float %292, %694
  %698 = fmul fast float %695, %688
  %699 = fmul fast float %696, %689
  %700 = fmul fast float %697, %690
  %701 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %702 = extractvalue %dx.types.CBufRet.i32 %701, 0
  %703 = extractvalue %dx.types.CBufRet.i32 %701, 1
  %704 = uitofp i32 %702 to float
  %705 = uitofp i32 %703 to float
  %706 = fmul fast float %698, %704
  %707 = fmul fast float %699, %705
  %708 = fadd fast float %706, 5.000000e-01
  %709 = fadd fast float %707, 5.000000e-01
  %710 = call float @dx.op.unary.f32(i32 22, float %708)  ; Frc(value)
  %711 = call float @dx.op.unary.f32(i32 22, float %709)  ; Frc(value)
  %712 = call float @dx.op.unary.f32(i32 27, float %708)  ; Round_ni(value)
  %713 = call float @dx.op.unary.f32(i32 27, float %709)  ; Round_ni(value)
  %714 = fadd fast float %712, 1.000000e+00
  %715 = fadd fast float %713, 1.000000e+00
  %716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %717 = extractvalue %dx.types.CBufRet.f32 %716, 0
  %718 = extractvalue %dx.types.CBufRet.f32 %716, 1
  %719 = fmul fast float %717, %714
  %720 = fmul fast float %718, %715
  %721 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %25, float %719, float %720, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %722 = extractvalue %dx.types.ResRet.f32 %721, 0
  %723 = extractvalue %dx.types.ResRet.f32 %721, 1
  %724 = extractvalue %dx.types.ResRet.f32 %721, 2
  %725 = extractvalue %dx.types.ResRet.f32 %721, 3
  %726 = extractvalue %dx.types.CBufRet.i32 %701, 2
  %727 = extractvalue %dx.types.CBufRet.f32 %716, 2
  %728 = uitofp i32 %726 to float
  %729 = fadd fast float %728, -1.000000e+00
  %730 = fmul fast float %729, %722
  %731 = fmul fast float %729, %723
  %732 = fmul fast float %729, %724
  %733 = fmul fast float %729, %725
  %734 = fadd fast float %730, 5.000000e-01
  %735 = fadd fast float %731, 5.000000e-01
  %736 = fadd fast float %732, 5.000000e-01
  %737 = fadd fast float %733, 5.000000e-01
  %738 = fptoui float %734 to i32
  %739 = fptoui float %735 to i32
  %740 = fptoui float %736 to i32
  %741 = fptoui float %737 to i32
  %742 = uitofp i32 %738 to float
  %743 = uitofp i32 %739 to float
  %744 = uitofp i32 %740 to float
  %745 = uitofp i32 %741 to float
  %746 = fadd fast float %742, 5.000000e-01
  %747 = fadd fast float %743, 5.000000e-01
  %748 = fadd fast float %744, 5.000000e-01
  %749 = fadd fast float %745, 5.000000e-01
  %750 = fmul fast float %746, %727
  %751 = fmul fast float %747, %727
  %752 = fmul fast float %748, %727
  %753 = fmul fast float %749, %727
  %754 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %26, float %750, float %700, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %755 = extractvalue %dx.types.ResRet.f32 %754, 0
  %756 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %26, float %751, float %700, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %757 = extractvalue %dx.types.ResRet.f32 %756, 0
  %758 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %26, float %752, float %700, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %759 = extractvalue %dx.types.ResRet.f32 %758, 0
  %760 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %26, float %753, float %700, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %761 = extractvalue %dx.types.ResRet.f32 %760, 0
  %762 = fsub fast float %759, %761
  %763 = fmul fast float %762, %710
  %764 = fadd fast float %763, %761
  %765 = fsub fast float %757, %755
  %766 = fmul fast float %765, %710
  %767 = fadd fast float %766, %755
  %768 = fsub fast float %767, %764
  %769 = fmul fast float %768, %711
  %770 = fadd fast float %769, %764
  %771 = fcmp fast ogt float %770, 0.000000e+00
  br i1 %771, label %772, label %840, !dx.controlflow.hints !63

; <label>:772                                     ; preds = %683
  %773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %774 = extractvalue %dx.types.CBufRet.f32 %773, 0
  %775 = extractvalue %dx.types.CBufRet.f32 %773, 1
  %776 = extractvalue %dx.types.CBufRet.f32 %773, 2
  %777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %778 = extractvalue %dx.types.CBufRet.f32 %777, 0
  %779 = extractvalue %dx.types.CBufRet.f32 %777, 1
  %780 = extractvalue %dx.types.CBufRet.f32 %777, 2
  %781 = fmul fast float %696, %688
  %782 = fmul fast float %697, %688
  %783 = fadd fast float %698, %778
  %784 = fadd fast float %781, %779
  %785 = fadd fast float %782, %780
  %786 = fmul fast float %783, %774
  %787 = fmul fast float %784, %774
  %788 = fmul fast float %785, %774
  %789 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %23, float %786, float %787, float %788, float undef, i32 0, i32 0, i32 0, float %684)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %790 = extractvalue %dx.types.ResRet.f32 %789, 0
  %791 = fmul fast float %783, %775
  %792 = fmul fast float %784, %775
  %793 = fmul fast float %785, %775
  %794 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %23, float %791, float %792, float %793, float undef, i32 0, i32 0, i32 0, float %685)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %795 = extractvalue %dx.types.ResRet.f32 %794, 1
  %796 = fmul fast float %783, %776
  %797 = fmul fast float %784, %776
  %798 = fmul fast float %785, %776
  %799 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %23, float %796, float %797, float %798, float undef, i32 0, i32 0, i32 0, float %686)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %800 = extractvalue %dx.types.ResRet.f32 %799, 2
  %801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %802 = extractvalue %dx.types.CBufRet.f32 %801, 1
  %803 = fmul fast float %795, %790
  %804 = fmul fast float %803, %800
  %805 = call float @dx.op.unary.f32(i32 23, float %804)  ; Log(value)
  %806 = fmul fast float %805, %802
  %807 = call float @dx.op.unary.f32(i32 21, float %806)  ; Exp(value)
  %808 = extractvalue %dx.types.CBufRet.f32 %801, 2
  %809 = fmul fast float %770, %770
  %810 = fmul fast float %809, %807
  %811 = fmul fast float %810, %808
  %812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %813 = extractvalue %dx.types.CBufRet.f32 %812, 3
  %814 = fmul fast float %813, %811
  %815 = bitcast float %814 to i32
  %816 = sitofp i32 %815 to float
  %817 = fptosi float %816 to i32
  %818 = bitcast i32 %817 to float
  %819 = fsub fast float 1.000000e+00, %811
  %820 = bitcast float %819 to i32
  %821 = sitofp i32 %820 to float
  %822 = fptosi float %821 to i32
  %823 = bitcast i32 %822 to float
  %824 = fadd fast float %818, %823
  %825 = bitcast float %824 to i32
  %826 = sub nsw i32 2129859010, %825
  %827 = bitcast i32 %826 to float
  %828 = fmul fast float %827, %818
  %829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %830 = extractvalue %dx.types.CBufRet.f32 %829, 2
  %831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %832 = extractvalue %dx.types.CBufRet.f32 %831, 0
  %833 = fmul fast float %828, %832
  %834 = fadd fast float %833, 1.000000e+00
  %835 = bitcast float %834 to i32
  %836 = sub nsw i32 2129859010, %835
  %837 = bitcast i32 %836 to float
  %838 = fmul fast float %828, %830
  %839 = fmul fast float %838, %837
  br label %840

; <label>:840                                     ; preds = %772, %683
  %841 = phi float [ %839, %772 ], [ %770, %683 ]
  %842 = fmul fast float %841, %662
  %843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %844 = extractvalue %dx.types.CBufRet.f32 %843, 0
  %845 = extractvalue %dx.types.CBufRet.f32 %843, 1
  %846 = extractvalue %dx.types.CBufRet.f32 %843, 2
  %847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %848 = extractvalue %dx.types.CBufRet.f32 %847, 1
  %849 = fmul fast float %844, %842
  %850 = fmul fast float %845, %842
  %851 = fmul fast float %846, %842
  %852 = fmul fast float %848, %842
  br label %853

; <label>:853                                     ; preds = %840, %647
  %854 = phi float [ %842, %840 ], [ 0.000000e+00, %647 ]
  %855 = phi float [ %852, %840 ], [ 0.000000e+00, %647 ]
  %856 = phi float [ %849, %840 ], [ 0.000000e+00, %647 ]
  %857 = phi float [ %850, %840 ], [ 0.000000e+00, %647 ]
  %858 = phi float [ %851, %840 ], [ 0.000000e+00, %647 ]
  br i1 %411, label %1001, label %859, !dx.controlflow.hints !64

; <label>:859                                     ; preds = %853
  %860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 411)  ; CBufferLoadLegacy(handle,regIndex)
  %861 = extractvalue %dx.types.CBufRet.f32 %860, 0
  %862 = extractvalue %dx.types.CBufRet.f32 %860, 1
  %863 = extractvalue %dx.types.CBufRet.f32 %860, 2
  %864 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %865 = extractvalue %dx.types.CBufRet.i32 %864, 0
  %866 = icmp ne i32 %865, 0
  %867 = zext i1 %866 to i32
  %868 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %869 = extractvalue %dx.types.CBufRet.i32 %868, 0
  %870 = icmp eq i32 %869, 0
  br i1 %870, label %904, label %871

; <label>:871                                     ; preds = %859
  br label %872

; <label>:872                                     ; preds = %899, %871
  %873 = phi i32 [ %900, %899 ], [ 0, %871 ]
  %874 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %873, i32 0)  ; BufferLoad(srv,index,wot)
  %875 = extractvalue %dx.types.ResRet.f32 %874, 0
  %876 = extractvalue %dx.types.ResRet.f32 %874, 1
  %877 = extractvalue %dx.types.ResRet.f32 %874, 2
  %878 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %873, i32 16)  ; BufferLoad(srv,index,wot)
  %879 = extractvalue %dx.types.ResRet.f32 %878, 0
  %880 = extractvalue %dx.types.ResRet.f32 %878, 1
  %881 = extractvalue %dx.types.ResRet.f32 %878, 2
  %882 = fsub fast float %875, %879
  %883 = fsub fast float %876, %880
  %884 = fsub fast float %877, %881
  %885 = fadd fast float %879, %875
  %886 = fadd fast float %880, %876
  %887 = fadd fast float %881, %877
  %888 = fcmp fast olt float %290, %882
  %889 = fcmp fast olt float %291, %883
  %890 = fcmp fast olt float %292, %884
  %891 = or i1 %888, %889
  %892 = or i1 %890, %891
  %893 = fcmp fast ogt float %290, %885
  %894 = fcmp fast ogt float %291, %886
  %895 = fcmp fast ogt float %292, %887
  %896 = or i1 %893, %894
  %897 = or i1 %895, %896
  %898 = or i1 %892, %897
  br i1 %898, label %899, label %902, !dx.controlflow.hints !65

; <label>:899                                     ; preds = %872
  %900 = add nuw i32 %873, 1
  %901 = icmp ult i32 %900, %869
  br i1 %901, label %872, label %902

; <label>:902                                     ; preds = %899, %872
  %903 = phi i32 [ 255, %899 ], [ %873, %872 ]
  br label %904

; <label>:904                                     ; preds = %902, %859
  %905 = phi i32 [ 255, %859 ], [ %903, %902 ]
  %906 = icmp eq i32 %905, 255
  br i1 %906, label %916, label %907, !dx.controlflow.hints !66

; <label>:907                                     ; preds = %904
  %908 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %905, i32 32)  ; BufferLoad(srv,index,wot)
  %909 = extractvalue %dx.types.ResRet.f32 %908, 0
  %910 = extractvalue %dx.types.ResRet.f32 %908, 1
  %911 = extractvalue %dx.types.ResRet.f32 %908, 2
  %912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %905, i32 156)  ; BufferLoad(srv,index,wot)
  %913 = extractvalue %dx.types.ResRet.i32 %912, 0
  %914 = icmp ne i32 %913, 0
  %915 = zext i1 %914 to i32
  br label %916

; <label>:916                                     ; preds = %907, %904
  %917 = phi float [ %909, %907 ], [ %861, %904 ]
  %918 = phi float [ %910, %907 ], [ %862, %904 ]
  %919 = phi float [ %911, %907 ], [ %863, %904 ]
  %920 = phi i32 [ %915, %907 ], [ %867, %904 ]
  %921 = icmp eq i32 %920, 0
  br i1 %921, label %922, label %991, !dx.controlflow.hints !67

; <label>:922                                     ; preds = %916
  %923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %924 = extractvalue %dx.types.CBufRet.f32 %923, 3
  %925 = extractvalue %dx.types.CBufRet.f32 %321, 0
  %926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %927 = extractvalue %dx.types.CBufRet.f32 %926, 2
  %928 = extractvalue %dx.types.CBufRet.f32 %926, 3
  br i1 %906, label %939, label %929, !dx.controlflow.hints !68

; <label>:929                                     ; preds = %922
  %930 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %905, i32 60)  ; BufferLoad(srv,index,wot)
  %931 = extractvalue %dx.types.ResRet.f32 %930, 0
  %932 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %905, i32 64)  ; BufferLoad(srv,index,wot)
  %933 = extractvalue %dx.types.ResRet.f32 %932, 0
  %934 = extractvalue %dx.types.ResRet.f32 %932, 1
  %935 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %905, i32 72)  ; BufferLoad(srv,index,wot)
  %936 = extractvalue %dx.types.ResRet.f32 %935, 0
  %937 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %905, i32 96)  ; BufferLoad(srv,index,wot)
  %938 = extractvalue %dx.types.ResRet.f32 %937, 0
  br label %939

; <label>:939                                     ; preds = %929, %922
  %940 = phi float [ %931, %929 ], [ %324, %922 ]
  %941 = phi float [ %936, %929 ], [ %322, %922 ]
  %942 = phi float [ %938, %929 ], [ %925, %922 ]
  %943 = phi float [ %933, %929 ], [ %927, %922 ]
  %944 = phi float [ %934, %929 ], [ %928, %922 ]
  %945 = call float @dx.op.binary.f32(i32 35, float %405, float 0.000000e+00)  ; FMax(a,b)
  %946 = call float @dx.op.binary.f32(i32 36, float %945, float 1.000000e+00)  ; FMin(a,b)
  %947 = call float @dx.op.unary.f32(i32 24, float %946)  ; Sqrt(value)
  %948 = call float @dx.op.binary.f32(i32 35, float %408, float 0x3F847AE140000000)  ; FMax(a,b)
  %949 = fsub fast float %406, %292
  %950 = fsub fast float %292, %407
  %951 = call float @dx.op.binary.f32(i32 36, float %950, float %949)  ; FMin(a,b)
  %952 = fdiv fast float %951, %948
  %953 = call float @dx.op.unary.f32(i32 7, float %952)  ; Saturate(value)
  %954 = fsub fast float %292, %941
  %955 = fdiv fast float %954, %940
  %956 = call float @dx.op.unary.f32(i32 7, float %955)  ; Saturate(value)
  %957 = fsub fast float 1.000000e+00, %956
  %958 = fmul float %953, %957
  %959 = fmul float %958, %958
  %960 = fmul fast float %947, %924
  %961 = fmul fast float %960, %959
  %962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %963 = extractvalue %dx.types.CBufRet.f32 %962, 2
  %964 = extractvalue %dx.types.CBufRet.f32 %962, 1
  %965 = fsub fast float %961, %964
  %966 = fsub fast float %963, %964
  %967 = fdiv fast float %965, %966
  %968 = call float @dx.op.unary.f32(i32 7, float %967)  ; Saturate(value)
  %969 = fmul fast float %968, %942
  %970 = fcmp fast ogt float %944, 0.000000e+00
  br i1 %970, label %971, label %991, !dx.controlflow.hints !69

; <label>:971                                     ; preds = %939
  %972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %973 = extractvalue %dx.types.CBufRet.f32 %972, 0
  %974 = extractvalue %dx.types.CBufRet.f32 %972, 1
  %975 = extractvalue %dx.types.CBufRet.f32 %972, 2
  %976 = fsub fast float %290, %973
  %977 = fsub fast float %291, %974
  %978 = fsub fast float %292, %975
  %979 = fmul fast float %976, %976
  %980 = fmul fast float %977, %977
  %981 = fadd fast float %979, %980
  %982 = fmul fast float %978, %978
  %983 = fadd fast float %981, %982
  %984 = call float @dx.op.unary.f32(i32 24, float %983)  ; Sqrt(value)
  %985 = fsub fast float %984, %943
  %986 = fsub fast float %944, %943
  %987 = fdiv fast float %985, %986
  %988 = call float @dx.op.unary.f32(i32 7, float %987)  ; Saturate(value)
  %989 = fmul fast float %988, %988
  %990 = fmul fast float %989, %969
  br label %991

; <label>:991                                     ; preds = %971, %939, %916
  %992 = phi float [ 0.000000e+00, %916 ], [ %990, %971 ], [ %969, %939 ]
  %993 = fmul fast float %992, %662
  %994 = fmul fast float %993, %917
  %995 = fmul fast float %993, %918
  %996 = fmul fast float %993, %919
  %997 = fadd fast float %994, %856
  %998 = fadd fast float %995, %857
  %999 = fadd fast float %996, %858
  %1000 = fadd fast float %993, %854
  br label %1001

; <label>:1001                                    ; preds = %991, %853
  %1002 = phi float [ %1000, %991 ], [ %854, %853 ]
  %1003 = phi float [ %997, %991 ], [ %856, %853 ]
  %1004 = phi float [ %998, %991 ], [ %857, %853 ]
  %1005 = phi float [ %999, %991 ], [ %858, %853 ]
  %1006 = icmp eq i32 %648, 0
  br i1 %1006, label %1050, label %1007, !dx.controlflow.hints !70

; <label>:1007                                    ; preds = %1001
  %1008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %1009 = extractvalue %dx.types.CBufRet.f32 %1008, 1
  %1010 = fsub fast float %662, %1009
  %1011 = extractvalue %dx.types.CBufRet.f32 %1008, 3
  %1012 = fmul fast float %1010, %1011
  %1013 = call float @dx.op.unary.f32(i32 7, float %1012)  ; Saturate(value)
  %1014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %1015 = extractvalue %dx.types.CBufRet.f32 %1014, 3
  %1016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1017 = extractvalue %dx.types.CBufRet.f32 %1016, 2
  %1018 = fsub fast float %1017, %650
  %1019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %1020 = extractvalue %dx.types.CBufRet.f32 %1019, 3
  %1021 = fmul fast float %1018, %1020
  %1022 = call float @dx.op.unary.f32(i32 7, float %1021)  ; Saturate(value)
  %1023 = fmul fast float %1022, %1015
  %1024 = extractvalue %dx.types.CBufRet.f32 %1019, 0
  %1025 = fsub fast float %293, %1024
  %1026 = extractvalue %dx.types.CBufRet.f32 %1019, 1
  %1027 = fmul fast float %1025, %1026
  %1028 = call float @dx.op.unary.f32(i32 7, float %1027)  ; Saturate(value)
  %1029 = fsub fast float 1.000000e+00, %1013
  %1030 = fmul fast float %1028, %1029
  %1031 = fadd fast float %1030, %1013
  %1032 = extractvalue %dx.types.CBufRet.f32 %1008, 0
  %1033 = fsub fast float %1023, %1032
  %1034 = fmul fast float %1033, %1031
  %1035 = fadd fast float %1034, %1032
  %1036 = extractvalue %dx.types.CBufRet.f32 %1014, 0
  %1037 = extractvalue %dx.types.CBufRet.f32 %1014, 1
  %1038 = extractvalue %dx.types.CBufRet.f32 %1014, 2
  %1039 = fmul fast float %1035, %662
  %1040 = extractvalue %dx.types.CBufRet.f32 %1019, 2
  %1041 = fmul fast float %1039, %1036
  %1042 = fmul fast float %1039, %1037
  %1043 = fmul fast float %1039, %1038
  %1044 = fadd fast float %1041, %1003
  %1045 = fadd fast float %1042, %1004
  %1046 = fadd fast float %1043, %1005
  %1047 = fmul fast float %1039, %1040
  %1048 = fadd fast float %1047, %855
  %1049 = fadd fast float %1039, %1002
  br label %1050

; <label>:1050                                    ; preds = %1007, %1001
  %1051 = phi float [ %1049, %1007 ], [ %1002, %1001 ]
  %1052 = phi float [ %1048, %1007 ], [ %855, %1001 ]
  %1053 = phi float [ %1044, %1007 ], [ %1003, %1001 ]
  %1054 = phi float [ %1045, %1007 ], [ %1004, %1001 ]
  %1055 = phi float [ %1046, %1007 ], [ %1005, %1001 ]
  %1056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1057 = extractvalue %dx.types.CBufRet.f32 %1056, 1
  %1058 = fcmp fast ogt float %1051, %1057
  br i1 %1058, label %1059, label %1065, !dx.controlflow.hints !71

; <label>:1059                                    ; preds = %1050
  %1060 = fdiv fast float 1.000000e+00, %1051
  %1061 = fmul fast float %1060, %1053
  %1062 = fmul fast float %1060, %1054
  %1063 = fmul fast float %1060, %1055
  %1064 = fmul fast float %1060, %1052
  br label %1065

; <label>:1065                                    ; preds = %1059, %1050
  %1066 = phi float [ %1064, %1059 ], [ %1052, %1050 ]
  %1067 = phi float [ %1061, %1059 ], [ %1053, %1050 ]
  %1068 = phi float [ %1062, %1059 ], [ %1054, %1050 ]
  %1069 = phi float [ %1063, %1059 ], [ %1055, %1050 ]
  br i1 %1058, label %1072, label %1070, !dx.controlflow.hints !72

; <label>:1070                                    ; preds = %1065
  %1071 = fadd fast float %662, %293
  br label %2705

; <label>:1072                                    ; preds = %1065
  %1073 = fmul fast float %1051, 0xBFF7154760000000
  %1074 = call float @dx.op.unary.f32(i32 21, float %1073)  ; Exp(value)
  %1075 = call float @dx.op.unary.f32(i32 7, float %1074)  ; Saturate(value)
  %1076 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %1077 = extractvalue %dx.types.CBufRet.i32 %1076, 0
  %1078 = icmp eq i32 %1077, 1
  br i1 %1078, label %1079, label %1114, !dx.controlflow.hints !73

; <label>:1079                                    ; preds = %1072
  %1080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1081 = extractvalue %dx.types.CBufRet.f32 %1080, 0
  %1082 = extractvalue %dx.types.CBufRet.f32 %1080, 1
  %1083 = fsub fast float %290, %1081
  %1084 = fsub fast float %291, %1082
  %1085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1086 = extractvalue %dx.types.CBufRet.f32 %1085, 0
  %1087 = extractvalue %dx.types.CBufRet.f32 %1085, 1
  %1088 = fmul fast float %1083, %1086
  %1089 = fmul fast float %1084, %1087
  %1090 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %26, float %1088, float %1089, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1091 = extractvalue %dx.types.ResRet.f32 %1090, 0
  %1092 = fcmp fast ogt float %1091, 0.000000e+00
  %1093 = extractvalue %dx.types.CBufRet.i32 %1076, 3
  %1094 = icmp ne i32 %1093, 0
  %1095 = and i1 %1092, %1094
  br i1 %1095, label %1096, label %1114, !dx.controlflow.hints !74

; <label>:1096                                    ; preds = %1079
  %1097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1098 = extractvalue %dx.types.CBufRet.f32 %1097, 0
  %1099 = extractvalue %dx.types.CBufRet.f32 %1097, 1
  %1100 = fsub fast float %290, %1098
  %1101 = fsub fast float %291, %1099
  %1102 = fmul fast float %1100, %1100
  %1103 = fmul fast float %1101, %1101
  %1104 = fadd fast float %1102, %1103
  %1105 = uitofp i32 %1093 to float
  %1106 = fmul fast float %1105, %1105
  %1107 = fcmp fast ogt float %1104, %1106
  br i1 %1107, label %1114, label %1108, !dx.controlflow.hints !75

; <label>:1108                                    ; preds = %1096
  %1109 = call float @dx.op.unary.f32(i32 24, float %1104)  ; Sqrt(value)
  %1110 = fsub fast float %1105, %1109
  %1111 = fmul fast float %1110, 0x3F75555560000000
  %1112 = call float @dx.op.unary.f32(i32 7, float %1111)  ; Saturate(value)
  %1113 = call float @dx.op.binary.f32(i32 36, float %1112, float %1091)  ; FMin(a,b)
  br label %1114

; <label>:1114                                    ; preds = %1108, %1096, %1079, %1072
  %1115 = phi float [ 1.000000e+00, %1072 ], [ %1113, %1108 ], [ %1091, %1079 ], [ 0.000000e+00, %1096 ]
  %1116 = fcmp fast ogt float %1115, 0.000000e+00
  br i1 %1116, label %1117, label %1190, !dx.controlflow.hints !76

; <label>:1117                                    ; preds = %1114
  %1118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %1119 = extractvalue %dx.types.ResRet.i32 %1118, 0
  %1120 = extractvalue %dx.types.ResRet.i32 %1118, 1
  %1121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %1122 = extractvalue %dx.types.ResRet.i32 %1121, 0
  %1123 = extractvalue %dx.types.ResRet.i32 %1121, 1
  %1124 = extractvalue %dx.types.ResRet.i32 %1121, 2
  %1125 = extractvalue %dx.types.ResRet.i32 %1121, 3
  %1126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %1127 = extractvalue %dx.types.ResRet.i32 %1126, 0
  %1128 = extractvalue %dx.types.ResRet.i32 %1126, 1
  %1129 = extractvalue %dx.types.ResRet.i32 %1126, 2
  %1130 = extractvalue %dx.types.ResRet.i32 %1126, 3
  %1131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %1132 = extractvalue %dx.types.ResRet.i32 %1131, 0
  %1133 = extractvalue %dx.types.ResRet.i32 %1131, 1
  %1134 = extractvalue %dx.types.ResRet.i32 %1131, 2
  %1135 = extractvalue %dx.types.ResRet.i32 %1131, 3
  %1136 = and i32 %1132, 65535
  %1137 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1136)  ; LegacyF16ToF32(value)
  %1138 = lshr i32 %1132, 16
  %1139 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1138)  ; LegacyF16ToF32(value)
  %1140 = and i32 %1133, 65535
  %1141 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1140)  ; LegacyF16ToF32(value)
  %1142 = lshr i32 %1133, 16
  %1143 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1142)  ; LegacyF16ToF32(value)
  %1144 = and i32 %1134, 65535
  %1145 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1144)  ; LegacyF16ToF32(value)
  %1146 = lshr i32 %1134, 16
  %1147 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1146)  ; LegacyF16ToF32(value)
  %1148 = and i32 %1135, 65535
  %1149 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1148)  ; LegacyF16ToF32(value)
  %1150 = lshr i32 %1135, 16
  %1151 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1150)  ; LegacyF16ToF32(value)
  %1152 = and i32 %1127, 65535
  %1153 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1152)  ; LegacyF16ToF32(value)
  %1154 = lshr i32 %1127, 16
  %1155 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1154)  ; LegacyF16ToF32(value)
  %1156 = and i32 %1128, 65535
  %1157 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1156)  ; LegacyF16ToF32(value)
  %1158 = lshr i32 %1128, 16
  %1159 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1158)  ; LegacyF16ToF32(value)
  %1160 = and i32 %1129, 65535
  %1161 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1160)  ; LegacyF16ToF32(value)
  %1162 = lshr i32 %1129, 16
  %1163 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1162)  ; LegacyF16ToF32(value)
  %1164 = and i32 %1130, 65535
  %1165 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1164)  ; LegacyF16ToF32(value)
  %1166 = lshr i32 %1130, 16
  %1167 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1166)  ; LegacyF16ToF32(value)
  %1168 = and i32 %1122, 65535
  %1169 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1168)  ; LegacyF16ToF32(value)
  %1170 = lshr i32 %1122, 16
  %1171 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1170)  ; LegacyF16ToF32(value)
  %1172 = and i32 %1123, 65535
  %1173 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1172)  ; LegacyF16ToF32(value)
  %1174 = lshr i32 %1123, 16
  %1175 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1174)  ; LegacyF16ToF32(value)
  %1176 = and i32 %1124, 65535
  %1177 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1176)  ; LegacyF16ToF32(value)
  %1178 = lshr i32 %1124, 16
  %1179 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1178)  ; LegacyF16ToF32(value)
  %1180 = and i32 %1125, 65535
  %1181 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1180)  ; LegacyF16ToF32(value)
  %1182 = lshr i32 %1125, 16
  %1183 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1182)  ; LegacyF16ToF32(value)
  %1184 = and i32 %1119, 65535
  %1185 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1184)  ; LegacyF16ToF32(value)
  %1186 = lshr i32 %1119, 16
  %1187 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1186)  ; LegacyF16ToF32(value)
  %1188 = and i32 %1120, 65535
  %1189 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1188)  ; LegacyF16ToF32(value)
  br label %1190

; <label>:1190                                    ; preds = %1117, %1114
  %1191 = phi float [ %1189, %1117 ], [ 0.000000e+00, %1114 ]
  %1192 = phi float [ %1187, %1117 ], [ 0.000000e+00, %1114 ]
  %1193 = phi float [ %1185, %1117 ], [ 0.000000e+00, %1114 ]
  %1194 = phi float [ %1183, %1117 ], [ 0.000000e+00, %1114 ]
  %1195 = phi float [ %1181, %1117 ], [ 0.000000e+00, %1114 ]
  %1196 = phi float [ %1179, %1117 ], [ 0.000000e+00, %1114 ]
  %1197 = phi float [ %1177, %1117 ], [ 0.000000e+00, %1114 ]
  %1198 = phi float [ %1175, %1117 ], [ 0.000000e+00, %1114 ]
  %1199 = phi float [ %1173, %1117 ], [ 0.000000e+00, %1114 ]
  %1200 = phi float [ %1171, %1117 ], [ 0.000000e+00, %1114 ]
  %1201 = phi float [ %1169, %1117 ], [ 0.000000e+00, %1114 ]
  %1202 = phi float [ %1167, %1117 ], [ 0.000000e+00, %1114 ]
  %1203 = phi float [ %1165, %1117 ], [ 0.000000e+00, %1114 ]
  %1204 = phi float [ %1163, %1117 ], [ 0.000000e+00, %1114 ]
  %1205 = phi float [ %1161, %1117 ], [ 0.000000e+00, %1114 ]
  %1206 = phi float [ %1159, %1117 ], [ 0.000000e+00, %1114 ]
  %1207 = phi float [ %1157, %1117 ], [ 0.000000e+00, %1114 ]
  %1208 = phi float [ %1155, %1117 ], [ 0.000000e+00, %1114 ]
  %1209 = phi float [ %1153, %1117 ], [ 0.000000e+00, %1114 ]
  %1210 = phi float [ %1151, %1117 ], [ 0.000000e+00, %1114 ]
  %1211 = phi float [ %1149, %1117 ], [ 0.000000e+00, %1114 ]
  %1212 = phi float [ %1147, %1117 ], [ 0.000000e+00, %1114 ]
  %1213 = phi float [ %1145, %1117 ], [ 0.000000e+00, %1114 ]
  %1214 = phi float [ %1143, %1117 ], [ 0.000000e+00, %1114 ]
  %1215 = phi float [ %1141, %1117 ], [ 0.000000e+00, %1114 ]
  %1216 = phi float [ %1139, %1117 ], [ 0.000000e+00, %1114 ]
  %1217 = phi float [ %1137, %1117 ], [ 0.000000e+00, %1114 ]
  %1218 = fcmp fast olt float %1115, 1.000000e+00
  br i1 %1218, label %1219, label %1879, !dx.controlflow.hints !77

; <label>:1219                                    ; preds = %1190
  %1220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1221 = extractvalue %dx.types.CBufRet.f32 %1220, 0
  %1222 = extractvalue %dx.types.CBufRet.f32 %1220, 1
  %1223 = fsub fast float %290, %1221
  %1224 = fsub fast float %291, %1222
  %1225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1226 = extractvalue %dx.types.CBufRet.f32 %1225, 0
  %1227 = extractvalue %dx.types.CBufRet.f32 %1225, 1
  %1228 = fmul fast float %1223, %1226
  %1229 = fmul fast float %1224, %1227
  %1230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1231 = extractvalue %dx.types.CBufRet.f32 %1230, 0
  %1232 = fmul fast float %1231, %1228
  %1233 = extractvalue %dx.types.CBufRet.f32 %1230, 1
  %1234 = fadd fast float %1232, %1233
  %1235 = extractvalue %dx.types.CBufRet.f32 %1230, 2
  %1236 = fmul fast float %1235, %1229
  %1237 = extractvalue %dx.types.CBufRet.f32 %1230, 3
  %1238 = fadd fast float %1236, %1237
  %1239 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %26, float %1234, float %1238, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1240 = extractvalue %dx.types.ResRet.f32 %1239, 0
  %1241 = extractvalue %dx.types.ResRet.f32 %1239, 1
  %1242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1243 = extractvalue %dx.types.CBufRet.f32 %1242, 1
  %1244 = extractvalue %dx.types.CBufRet.f32 %1242, 0
  %1245 = fsub fast float %1243, %1244
  %1246 = fmul fast float %1245, %1240
  %1247 = fadd fast float %1246, %1244
  %1248 = extractvalue %dx.types.CBufRet.f32 %1242, 3
  %1249 = extractvalue %dx.types.CBufRet.f32 %1242, 2
  %1250 = fsub fast float %1248, %1249
  %1251 = fmul fast float %1250, %1241
  %1252 = fadd fast float %1251, %1249
  %1253 = fsub fast float %292, %1247
  %1254 = fsub fast float %1252, %1247
  %1255 = fdiv fast float %1253, %1254
  %1256 = call float @dx.op.unary.f32(i32 7, float %1255)  ; Saturate(value)
  %1257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %1258 = extractvalue %dx.types.CBufRet.f32 %1257, 0
  %1259 = fmul fast float %1258, %1256
  %1260 = extractvalue %dx.types.CBufRet.f32 %1257, 1
  %1261 = fadd fast float %1259, %1260
  %1262 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %26, float %1234, float %1238, float %1261, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1263 = extractvalue %dx.types.ResRet.f32 %1262, 0
  %1264 = extractvalue %dx.types.ResRet.f32 %1262, 1
  %1265 = extractvalue %dx.types.ResRet.f32 %1262, 2
  %1266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %1267 = extractvalue %dx.types.CBufRet.f32 %1266, 0
  %1268 = extractvalue %dx.types.CBufRet.f32 %1266, 1
  %1269 = extractvalue %dx.types.CBufRet.f32 %1266, 2
  %1270 = fmul fast float %1267, %1263
  %1271 = fmul fast float %1268, %1264
  %1272 = fmul fast float %1269, %1265
  %1273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %1274 = extractvalue %dx.types.CBufRet.f32 %1273, 0
  %1275 = extractvalue %dx.types.CBufRet.f32 %1273, 1
  %1276 = extractvalue %dx.types.CBufRet.f32 %1273, 2
  %1277 = fadd fast float %1270, %1274
  %1278 = fadd fast float %1271, %1275
  %1279 = fadd fast float %1272, %1276
  %1280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %1281 = extractvalue %dx.types.CBufRet.f32 %1280, 0
  %1282 = fmul fast float %1281, %1228
  %1283 = extractvalue %dx.types.CBufRet.f32 %1280, 1
  %1284 = fadd fast float %1282, %1283
  %1285 = extractvalue %dx.types.CBufRet.f32 %1280, 2
  %1286 = fmul fast float %1285, %1229
  %1287 = extractvalue %dx.types.CBufRet.f32 %1280, 3
  %1288 = fadd fast float %1286, %1287
  %1289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %1290 = extractvalue %dx.types.CBufRet.f32 %1289, 0
  %1291 = extractvalue %dx.types.CBufRet.f32 %1289, 1
  %1292 = extractvalue %dx.types.CBufRet.f32 %1289, 2
  %1293 = extractvalue %dx.types.CBufRet.f32 %1289, 3
  %1294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %1295 = extractvalue %dx.types.CBufRet.f32 %1294, 0
  %1296 = extractvalue %dx.types.CBufRet.f32 %1294, 1
  %1297 = extractvalue %dx.types.CBufRet.f32 %1294, 2
  %1298 = extractvalue %dx.types.CBufRet.f32 %1294, 3
  %1299 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %26, float %1284, float %1288, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1300 = extractvalue %dx.types.ResRet.f32 %1299, 0
  %1301 = extractvalue %dx.types.ResRet.f32 %1299, 1
  %1302 = extractvalue %dx.types.ResRet.f32 %1299, 2
  %1303 = extractvalue %dx.types.ResRet.f32 %1299, 3
  %1304 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %26, float %1284, float %1288, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1305 = extractvalue %dx.types.ResRet.f32 %1304, 0
  %1306 = extractvalue %dx.types.ResRet.f32 %1304, 1
  %1307 = extractvalue %dx.types.ResRet.f32 %1304, 2
  %1308 = extractvalue %dx.types.ResRet.f32 %1304, 3
  %1309 = fmul fast float %1300, %1277
  %1310 = fmul fast float %1305, %1277
  %1311 = fmul fast float %1307, %1277
  %1312 = fmul fast float %1303, %1277
  %1313 = fadd fast float %1309, %1290
  %1314 = fadd fast float %1310, %1291
  %1315 = fadd fast float %1311, %1292
  %1316 = fadd fast float %1312, %1293
  %1317 = fmul fast float %1301, %1277
  %1318 = fmul fast float %1306, %1277
  %1319 = fadd fast float %1317, %1295
  %1320 = fadd fast float %1318, %1296
  %1321 = fmul fast float %1302, %1277
  %1322 = fmul fast float %1308, %1277
  %1323 = fadd fast float %1321, %1297
  %1324 = fadd fast float %1322, %1298
  %1325 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %26, float %1284, float %1288, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1326 = extractvalue %dx.types.ResRet.f32 %1325, 0
  %1327 = extractvalue %dx.types.ResRet.f32 %1325, 1
  %1328 = extractvalue %dx.types.ResRet.f32 %1325, 2
  %1329 = extractvalue %dx.types.ResRet.f32 %1325, 3
  %1330 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %26, float %1284, float %1288, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1331 = extractvalue %dx.types.ResRet.f32 %1330, 0
  %1332 = extractvalue %dx.types.ResRet.f32 %1330, 1
  %1333 = extractvalue %dx.types.ResRet.f32 %1330, 2
  %1334 = extractvalue %dx.types.ResRet.f32 %1330, 3
  %1335 = fmul fast float %1326, %1278
  %1336 = fmul fast float %1331, %1278
  %1337 = fmul fast float %1333, %1278
  %1338 = fmul fast float %1329, %1278
  %1339 = fadd fast float %1313, %1335
  %1340 = fadd fast float %1314, %1336
  %1341 = fadd fast float %1315, %1337
  %1342 = fadd fast float %1316, %1338
  %1343 = fmul fast float %1327, %1278
  %1344 = fmul fast float %1332, %1278
  %1345 = fadd fast float %1319, %1343
  %1346 = fadd fast float %1320, %1344
  %1347 = fmul fast float %1328, %1278
  %1348 = fmul fast float %1334, %1278
  %1349 = fadd fast float %1323, %1347
  %1350 = fadd fast float %1324, %1348
  %1351 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %26, float %1284, float %1288, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1352 = extractvalue %dx.types.ResRet.f32 %1351, 0
  %1353 = extractvalue %dx.types.ResRet.f32 %1351, 1
  %1354 = extractvalue %dx.types.ResRet.f32 %1351, 2
  %1355 = extractvalue %dx.types.ResRet.f32 %1351, 3
  %1356 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %26, float %1284, float %1288, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1357 = extractvalue %dx.types.ResRet.f32 %1356, 0
  %1358 = extractvalue %dx.types.ResRet.f32 %1356, 1
  %1359 = extractvalue %dx.types.ResRet.f32 %1356, 2
  %1360 = extractvalue %dx.types.ResRet.f32 %1356, 3
  %1361 = fmul fast float %1352, %1279
  %1362 = fmul fast float %1357, %1279
  %1363 = fmul fast float %1359, %1279
  %1364 = fmul fast float %1355, %1279
  %1365 = fadd fast float %1339, %1361
  %1366 = fadd fast float %1340, %1362
  %1367 = fadd fast float %1341, %1363
  %1368 = fadd fast float %1342, %1364
  %1369 = fmul fast float %1353, %1279
  %1370 = fmul fast float %1358, %1279
  %1371 = fadd fast float %1345, %1369
  %1372 = fadd fast float %1346, %1370
  %1373 = fmul fast float %1354, %1279
  %1374 = fmul fast float %1360, %1279
  %1375 = fadd fast float %1349, %1373
  %1376 = fadd fast float %1350, %1374
  %1377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %1378 = extractvalue %dx.types.CBufRet.f32 %1377, 0
  %1379 = fsub fast float %290, %1378
  %1380 = fsub fast float %1221, %290
  %1381 = call float @dx.op.binary.f32(i32 35, float %1380, float %1379)  ; FMax(a,b)
  %1382 = extractvalue %dx.types.CBufRet.f32 %1377, 1
  %1383 = fsub fast float %291, %1382
  %1384 = fsub fast float %1222, %291
  %1385 = call float @dx.op.binary.f32(i32 35, float %1384, float %1383)  ; FMax(a,b)
  %1386 = call float @dx.op.binary.f32(i32 35, float %1381, float %1385)  ; FMax(a,b)
  %1387 = extractvalue %dx.types.CBufRet.f32 %1225, 3
  %1388 = fmul fast float %1387, %1386
  %1389 = call float @dx.op.unary.f32(i32 7, float %1388)  ; Saturate(value)
  %1390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %1391 = extractvalue %dx.types.CBufRet.f32 %1390, 0
  %1392 = extractvalue %dx.types.CBufRet.f32 %1390, 1
  %1393 = extractvalue %dx.types.CBufRet.f32 %1390, 2
  %1394 = extractvalue %dx.types.CBufRet.f32 %1390, 3
  %1395 = fsub fast float %1391, %1365
  %1396 = fsub fast float %1392, %1366
  %1397 = fsub fast float %1393, %1367
  %1398 = fsub fast float %1394, %1368
  %1399 = fmul fast float %1395, %1389
  %1400 = fmul fast float %1396, %1389
  %1401 = fmul fast float %1397, %1389
  %1402 = fmul fast float %1398, %1389
  %1403 = fadd fast float %1399, %1365
  %1404 = fadd fast float %1400, %1366
  %1405 = fadd fast float %1401, %1367
  %1406 = fadd fast float %1402, %1368
  %1407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %1408 = extractvalue %dx.types.CBufRet.f32 %1407, 0
  %1409 = extractvalue %dx.types.CBufRet.f32 %1407, 1
  %1410 = fsub fast float %1408, %1371
  %1411 = fsub fast float %1409, %1372
  %1412 = fmul fast float %1410, %1389
  %1413 = fmul fast float %1411, %1389
  %1414 = fadd fast float %1412, %1371
  %1415 = fadd fast float %1413, %1372
  %1416 = extractvalue %dx.types.CBufRet.f32 %1407, 2
  %1417 = extractvalue %dx.types.CBufRet.f32 %1407, 3
  %1418 = fsub fast float %1416, %1375
  %1419 = fsub fast float %1417, %1376
  %1420 = fmul fast float %1418, %1389
  %1421 = fmul fast float %1419, %1389
  %1422 = fadd fast float %1420, %1375
  %1423 = fadd fast float %1421, %1376
  %1424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %1425 = extractvalue %dx.types.CBufRet.f32 %1424, 0
  %1426 = fmul fast float %1425, %1403
  %1427 = fmul fast float %1425, %1404
  %1428 = fmul fast float %1425, %1405
  %1429 = fmul fast float %1425, %1406
  %1430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %1431 = extractvalue %dx.types.CBufRet.f32 %1430, 0
  %1432 = fmul fast float %1431, %1414
  %1433 = fmul fast float %1431, %1415
  %1434 = fadd fast float %1432, %1426
  %1435 = fadd fast float %1433, %1428
  %1436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %1437 = extractvalue %dx.types.CBufRet.f32 %1436, 0
  %1438 = fmul fast float %1437, %1422
  %1439 = fmul fast float %1437, %1423
  %1440 = fadd fast float %1434, %1438
  %1441 = fadd fast float %1435, %1439
  %1442 = extractvalue %dx.types.CBufRet.f32 %1424, 1
  %1443 = fmul fast float %1442, %1403
  %1444 = fmul fast float %1442, %1404
  %1445 = fmul fast float %1442, %1405
  %1446 = fmul fast float %1442, %1406
  %1447 = extractvalue %dx.types.CBufRet.f32 %1430, 1
  %1448 = fmul fast float %1447, %1414
  %1449 = fmul fast float %1447, %1415
  %1450 = fadd fast float %1448, %1443
  %1451 = fadd fast float %1449, %1445
  %1452 = extractvalue %dx.types.CBufRet.f32 %1436, 1
  %1453 = fmul fast float %1452, %1422
  %1454 = fmul fast float %1452, %1423
  %1455 = fadd fast float %1450, %1453
  %1456 = fadd fast float %1451, %1454
  %1457 = extractvalue %dx.types.CBufRet.f32 %1424, 2
  %1458 = fmul fast float %1457, %1403
  %1459 = fmul fast float %1457, %1404
  %1460 = fmul fast float %1457, %1405
  %1461 = fmul fast float %1457, %1406
  %1462 = extractvalue %dx.types.CBufRet.f32 %1430, 2
  %1463 = fmul fast float %1462, %1414
  %1464 = fmul fast float %1462, %1415
  %1465 = fadd fast float %1463, %1458
  %1466 = fadd fast float %1464, %1460
  %1467 = extractvalue %dx.types.CBufRet.f32 %1436, 2
  %1468 = fmul fast float %1467, %1422
  %1469 = fmul fast float %1467, %1423
  %1470 = fadd fast float %1465, %1468
  %1471 = fadd fast float %1466, %1469
  %1472 = fmul fast float %1459, %1459
  %1473 = fmul fast float %1471, %1471
  %1474 = fmul fast float %1461, %1461
  %1475 = fadd fast float %1474, %1472
  %1476 = fadd fast float %1475, %1473
  %1477 = call float @dx.op.unary.f32(i32 24, float %1476)  ; Sqrt(value)
  %1478 = fcmp fast ugt float %1477, 0.000000e+00
  br i1 %1478, label %1479, label %1494, !dx.controlflow.hints !78

; <label>:1479                                    ; preds = %1219
  %1480 = fsub fast float -0.000000e+00, %1461
  %1481 = fdiv fast float %1480, %1477
  %1482 = fsub fast float -0.000000e+00, %1459
  %1483 = fdiv fast float %1482, %1477
  %1484 = fdiv fast float %1471, %1477
  %1485 = fmul fast float %1470, 0x3FE279A760000000
  %1486 = fmul fast float %1483, %1459
  %1487 = fmul fast float %1484, %1471
  %1488 = fmul fast float %1481, %1461
  %1489 = fadd fast float %1486, %1488
  %1490 = fsub fast float %1489, %1487
  %1491 = call float @dx.op.unary.f32(i32 6, float %1490)  ; FAbs(value)
  %1492 = fadd fast float %1491, 0x3DDB7CDFE0000000
  %1493 = fdiv fast float %1485, %1492
  br label %1494

; <label>:1494                                    ; preds = %1479, %1219
  %1495 = phi float [ %1493, %1479 ], [ 1.000000e+00, %1219 ]
  %1496 = fmul fast float %1444, %1444
  %1497 = fmul fast float %1456, %1456
  %1498 = fmul fast float %1446, %1446
  %1499 = fadd fast float %1498, %1496
  %1500 = fadd fast float %1499, %1497
  %1501 = call float @dx.op.unary.f32(i32 24, float %1500)  ; Sqrt(value)
  %1502 = fcmp fast ugt float %1501, 0.000000e+00
  br i1 %1502, label %1503, label %1518, !dx.controlflow.hints !78

; <label>:1503                                    ; preds = %1494
  %1504 = fsub fast float -0.000000e+00, %1446
  %1505 = fdiv fast float %1504, %1501
  %1506 = fsub fast float -0.000000e+00, %1444
  %1507 = fdiv fast float %1506, %1501
  %1508 = fdiv fast float %1456, %1501
  %1509 = fmul fast float %1455, 0x3FE279A760000000
  %1510 = fmul fast float %1507, %1444
  %1511 = fmul fast float %1508, %1456
  %1512 = fmul fast float %1505, %1446
  %1513 = fadd fast float %1510, %1512
  %1514 = fsub fast float %1513, %1511
  %1515 = call float @dx.op.unary.f32(i32 6, float %1514)  ; FAbs(value)
  %1516 = fadd fast float %1515, 0x3DDB7CDFE0000000
  %1517 = fdiv fast float %1509, %1516
  br label %1518

; <label>:1518                                    ; preds = %1503, %1494
  %1519 = phi float [ %1517, %1503 ], [ 1.000000e+00, %1494 ]
  %1520 = call float @dx.op.binary.f32(i32 36, float %1519, float %1495)  ; FMin(a,b)
  %1521 = fmul fast float %1427, %1427
  %1522 = fmul fast float %1441, %1441
  %1523 = fmul fast float %1429, %1429
  %1524 = fadd fast float %1523, %1521
  %1525 = fadd fast float %1524, %1522
  %1526 = call float @dx.op.unary.f32(i32 24, float %1525)  ; Sqrt(value)
  %1527 = fcmp fast ugt float %1526, 0.000000e+00
  br i1 %1527, label %1528, label %1543, !dx.controlflow.hints !78

; <label>:1528                                    ; preds = %1518
  %1529 = fsub fast float -0.000000e+00, %1429
  %1530 = fdiv fast float %1529, %1526
  %1531 = fsub fast float -0.000000e+00, %1427
  %1532 = fdiv fast float %1531, %1526
  %1533 = fdiv fast float %1441, %1526
  %1534 = fmul fast float %1440, 0x3FE279A760000000
  %1535 = fmul fast float %1532, %1427
  %1536 = fmul fast float %1533, %1441
  %1537 = fmul fast float %1530, %1429
  %1538 = fadd fast float %1535, %1537
  %1539 = fsub fast float %1538, %1536
  %1540 = call float @dx.op.unary.f32(i32 6, float %1539)  ; FAbs(value)
  %1541 = fadd fast float %1540, 0x3DDB7CDFE0000000
  %1542 = fdiv fast float %1534, %1541
  br label %1543

; <label>:1543                                    ; preds = %1528, %1518
  %1544 = phi float [ %1542, %1528 ], [ 1.000000e+00, %1518 ]
  %1545 = call float @dx.op.binary.f32(i32 36, float %1544, float %1520)  ; FMin(a,b)
  %1546 = call float @dx.op.unary.f32(i32 7, float %1545)  ; Saturate(value)
  %1547 = fcmp fast olt float %1546, 1.000000e+00
  br i1 %1547, label %1548, label %1558, !dx.controlflow.hints !79

; <label>:1548                                    ; preds = %1543
  %1549 = fmul fast float %1546, %1427
  %1550 = fmul fast float %1546, %1441
  %1551 = fmul fast float %1546, %1429
  %1552 = fmul fast float %1546, %1444
  %1553 = fmul fast float %1546, %1456
  %1554 = fmul fast float %1546, %1446
  %1555 = fmul fast float %1546, %1459
  %1556 = fmul fast float %1546, %1471
  %1557 = fmul fast float %1546, %1461
  br label %1558

; <label>:1558                                    ; preds = %1548, %1543
  %1559 = phi float [ %1555, %1548 ], [ %1459, %1543 ]
  %1560 = phi float [ %1556, %1548 ], [ %1471, %1543 ]
  %1561 = phi float [ %1557, %1548 ], [ %1461, %1543 ]
  %1562 = phi float [ %1552, %1548 ], [ %1444, %1543 ]
  %1563 = phi float [ %1553, %1548 ], [ %1456, %1543 ]
  %1564 = phi float [ %1554, %1548 ], [ %1446, %1543 ]
  %1565 = phi float [ %1549, %1548 ], [ %1427, %1543 ]
  %1566 = phi float [ %1550, %1548 ], [ %1441, %1543 ]
  %1567 = phi float [ %1551, %1548 ], [ %1429, %1543 ]
  %1568 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1440)  ; FMax(a,b)
  %1569 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1455)  ; FMax(a,b)
  %1570 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1470)  ; FMax(a,b)
  %1571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %1572 = extractvalue %dx.types.CBufRet.f32 %1571, 0
  %1573 = fcmp fast ogt float %1572, 0.000000e+00
  %1574 = fcmp fast oge float %1228, 0.000000e+00
  %1575 = and i1 %1574, %1573
  %1576 = fcmp fast ole float %1228, 1.000000e+00
  %1577 = and i1 %1576, %1575
  %1578 = fcmp fast oge float %1229, 0.000000e+00
  %1579 = and i1 %1578, %1577
  %1580 = fcmp fast ole float %1229, 1.000000e+00
  %1581 = and i1 %1580, %1579
  br i1 %1581, label %1582, label %1727, !dx.controlflow.hints !80

; <label>:1582                                    ; preds = %1558
  %1583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1584 = extractvalue %dx.types.CBufRet.f32 %1583, 2
  %1585 = extractvalue %dx.types.CBufRet.f32 %1583, 3
  %1586 = fmul fast float %1584, %1228
  %1587 = fmul fast float %1585, %1229
  %1588 = call float @dx.op.unary.f32(i32 27, float %1586)  ; Round_ni(value)
  %1589 = call float @dx.op.unary.f32(i32 27, float %1587)  ; Round_ni(value)
  %1590 = fptosi float %1588 to i32
  %1591 = fptosi float %1589 to i32
  %1592 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %1590, i32 %1591, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1593 = extractvalue %dx.types.ResRet.i32 %1592, 0
  %1594 = and i32 %1593, 65535
  %1595 = lshr i32 %1593, 16
  %1596 = icmp eq i32 %1594, 65535
  br i1 %1596, label %1633, label %1597, !dx.controlflow.hints !81

; <label>:1597                                    ; preds = %1582
  %1598 = extractvalue %dx.types.CBufRet.f32 %1571, 1
  %1599 = extractvalue %dx.types.CBufRet.f32 %1583, 0
  %1600 = extractvalue %dx.types.CBufRet.f32 %1583, 1
  %1601 = fmul fast float %1599, %1228
  %1602 = fmul fast float %1600, %1229
  %1603 = fmul fast float %1601, 1.250000e-01
  %1604 = fmul fast float %1602, 1.250000e-01
  %1605 = call float @dx.op.unary.f32(i32 27, float %1603)  ; Round_ni(value)
  %1606 = call float @dx.op.unary.f32(i32 27, float %1604)  ; Round_ni(value)
  %1607 = fmul fast float %1605, 8.000000e+00
  %1608 = fmul fast float %1606, 8.000000e+00
  %1609 = and i32 %1593, 255
  %1610 = lshr i32 %1593, 8
  %1611 = and i32 %1610, 255
  %1612 = mul nuw nsw i32 %1609, 9
  %1613 = uitofp i32 %1612 to float
  %1614 = mul nuw nsw i32 %1611, 9
  %1615 = uitofp i32 %1614 to float
  %1616 = fadd fast float %1613, 5.000000e-01
  %1617 = fadd fast float %1616, %1601
  %1618 = fsub fast float %1617, %1607
  %1619 = fadd fast float %1615, 5.000000e-01
  %1620 = fadd fast float %1619, %1602
  %1621 = fsub fast float %1620, %1608
  %1622 = fdiv fast float %1618, %1572
  %1623 = fdiv fast float %1621, %1598
  %1624 = fmul fast float %1256, 4.375000e-01
  %1625 = fadd fast float %1624, 3.125000e-02
  %1626 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %26, float %1622, float %1623, float %1625, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1627 = extractvalue %dx.types.ResRet.f32 %1626, 0
  %1628 = extractvalue %dx.types.ResRet.f32 %1626, 1
  %1629 = extractvalue %dx.types.ResRet.f32 %1626, 2
  %1630 = fadd fast float %1627, %1568
  %1631 = fadd fast float %1628, %1569
  %1632 = fadd fast float %1629, %1570
  br label %1633

; <label>:1633                                    ; preds = %1597, %1582
  %1634 = phi float [ %1632, %1597 ], [ %1570, %1582 ]
  %1635 = phi float [ %1631, %1597 ], [ %1569, %1582 ]
  %1636 = phi float [ %1630, %1597 ], [ %1568, %1582 ]
  %1637 = icmp eq i32 %1595, 65535
  br i1 %1637, label %1727, label %1638, !dx.controlflow.hints !82

; <label>:1638                                    ; preds = %1633
  %1639 = extractvalue %dx.types.CBufRet.f32 %1571, 1
  %1640 = extractvalue %dx.types.CBufRet.f32 %1583, 0
  %1641 = extractvalue %dx.types.CBufRet.f32 %1583, 1
  %1642 = fmul fast float %1640, %1228
  %1643 = fmul fast float %1641, %1229
  %1644 = fmul fast float %1642, 1.250000e-01
  %1645 = fmul fast float %1643, 1.250000e-01
  %1646 = call float @dx.op.unary.f32(i32 27, float %1644)  ; Round_ni(value)
  %1647 = call float @dx.op.unary.f32(i32 27, float %1645)  ; Round_ni(value)
  %1648 = fmul fast float %1646, 8.000000e+00
  %1649 = fmul fast float %1647, 8.000000e+00
  %1650 = fsub fast float %1642, %1648
  %1651 = fsub fast float %1643, %1649
  %1652 = fadd fast float %1650, 5.000000e-01
  %1653 = fadd fast float %1651, 5.000000e-01
  %1654 = and i32 %1595, 255
  %1655 = lshr i32 %1593, 24
  %1656 = mul nuw nsw i32 %1654, 9
  %1657 = uitofp i32 %1656 to float
  %1658 = mul nuw nsw i32 %1655, 9
  %1659 = uitofp i32 %1658 to float
  %1660 = fadd fast float %1652, %1657
  %1661 = fadd fast float %1653, %1659
  %1662 = fdiv fast float %1660, %1572
  %1663 = fdiv fast float %1661, %1639
  %1664 = fmul fast float %1256, 4.375000e-01
  %1665 = fadd fast float %1664, 3.125000e-02
  %1666 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %26, float %1662, float %1663, float %1665, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1667 = extractvalue %dx.types.ResRet.f32 %1666, 0
  %1668 = extractvalue %dx.types.ResRet.f32 %1666, 1
  %1669 = extractvalue %dx.types.ResRet.f32 %1666, 2
  %1670 = fadd fast float %1664, 5.312500e-01
  %1671 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %26, float %1662, float %1663, float %1670, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1672 = extractvalue %dx.types.ResRet.f32 %1671, 0
  %1673 = extractvalue %dx.types.ResRet.f32 %1671, 1
  %1674 = extractvalue %dx.types.ResRet.f32 %1671, 2
  %1675 = fmul fast float %1672, 2.000000e+00
  %1676 = fmul fast float %1673, 2.000000e+00
  %1677 = fmul fast float %1674, 2.000000e+00
  %1678 = fadd fast float %1675, -1.000000e+00
  %1679 = fadd fast float %1676, -1.000000e+00
  %1680 = fadd fast float %1677, -1.000000e+00
  %1681 = fmul fast float %1678, %1678
  %1682 = fmul fast float %1679, %1679
  %1683 = fadd fast float %1681, %1682
  %1684 = fmul fast float %1680, %1680
  %1685 = fadd fast float %1683, %1684
  %1686 = call float @dx.op.unary.f32(i32 24, float %1685)  ; Sqrt(value)
  %1687 = fcmp fast ogt float %1686, 0.000000e+00
  br i1 %1687, label %1688, label %1692, !dx.controlflow.hints !83

; <label>:1688                                    ; preds = %1638
  %1689 = fdiv fast float %1678, %1686
  %1690 = fdiv fast float %1679, %1686
  %1691 = fdiv fast float %1680, %1686
  br label %1692

; <label>:1692                                    ; preds = %1688, %1638
  %1693 = phi float [ %1689, %1688 ], [ 0.000000e+00, %1638 ]
  %1694 = phi float [ %1690, %1688 ], [ 0.000000e+00, %1638 ]
  %1695 = phi float [ %1691, %1688 ], [ 0.000000e+00, %1638 ]
  %1696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1697 = extractvalue %dx.types.CBufRet.f32 %1696, 0
  %1698 = extractvalue %dx.types.CBufRet.f32 %1696, 1
  %1699 = fsub fast float %290, %1697
  %1700 = fsub fast float %291, %1698
  %1701 = fmul fast float %1699, %1699
  %1702 = fmul fast float %1700, %1700
  %1703 = fadd fast float %1701, %1702
  %1704 = call float @dx.op.unary.f32(i32 24, float %1703)  ; Sqrt(value)
  %1705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1706 = extractvalue %dx.types.CBufRet.f32 %1705, 0
  %1707 = extractvalue %dx.types.CBufRet.f32 %1705, 1
  %1708 = fsub fast float %1704, %1706
  %1709 = fdiv fast float %1708, %1707
  %1710 = call float @dx.op.unary.f32(i32 7, float %1709)  ; Saturate(value)
  %1711 = fmul fast float %1710, 2.000000e+00
  %1712 = fsub fast float 3.000000e+00, %1711
  %1713 = fmul fast float %1710, %1710
  %1714 = fmul fast float %1713, %1712
  %1715 = call float @dx.op.dot3.f32(i32 55, float %1693, float %1694, float %1695, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1716 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1715)  ; FMax(a,b)
  %1717 = fmul fast float %1716, 0x400C5BF8A0000000
  %1718 = fmul fast float %1714, %1667
  %1719 = fmul fast float %1718, %1717
  %1720 = fadd fast float %1719, %1636
  %1721 = fmul fast float %1714, %1668
  %1722 = fmul fast float %1721, %1717
  %1723 = fadd fast float %1722, %1635
  %1724 = fmul fast float %1714, %1669
  %1725 = fmul fast float %1724, %1717
  %1726 = fadd fast float %1725, %1634
  br label %1727

; <label>:1727                                    ; preds = %1692, %1633, %1558
  %1728 = phi float [ %1726, %1692 ], [ %1634, %1633 ], [ %1570, %1558 ]
  %1729 = phi float [ %1723, %1692 ], [ %1635, %1633 ], [ %1569, %1558 ]
  %1730 = phi float [ %1720, %1692 ], [ %1636, %1633 ], [ %1568, %1558 ]
  %1731 = fcmp fast ogt float %292, %1252
  %1732 = and i1 %1574, %1731
  %1733 = and i1 %1576, %1732
  %1734 = and i1 %1578, %1733
  %1735 = and i1 %1580, %1734
  br i1 %1735, label %1736, label %1793, !dx.controlflow.hints !84

; <label>:1736                                    ; preds = %1727
  %1737 = fmul fast float %1254, 0x3FC24924A0000000
  %1738 = fsub fast float %292, %1252
  %1739 = fdiv fast float %1738, %1737
  %1740 = call float @dx.op.unary.f32(i32 7, float %1739)  ; Saturate(value)
  %1741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %1742 = extractvalue %dx.types.CBufRet.f32 %1741, 0
  %1743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %1744 = extractvalue %dx.types.CBufRet.f32 %1743, 0
  %1745 = extractvalue %dx.types.CBufRet.f32 %1743, 1
  %1746 = extractvalue %dx.types.CBufRet.f32 %1743, 2
  %1747 = fsub fast float %1742, %1730
  %1748 = fsub fast float %1744, %1565
  %1749 = fsub fast float %1745, %1566
  %1750 = fsub fast float %1746, %1567
  %1751 = fmul fast float %1747, %1740
  %1752 = fmul fast float %1748, %1740
  %1753 = fmul fast float %1749, %1740
  %1754 = fmul fast float %1750, %1740
  %1755 = fadd fast float %1751, %1730
  %1756 = fadd fast float %1752, %1565
  %1757 = fadd fast float %1753, %1566
  %1758 = fadd fast float %1754, %1567
  %1759 = extractvalue %dx.types.CBufRet.f32 %1741, 1
  %1760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %1761 = extractvalue %dx.types.CBufRet.f32 %1760, 0
  %1762 = extractvalue %dx.types.CBufRet.f32 %1760, 1
  %1763 = extractvalue %dx.types.CBufRet.f32 %1760, 2
  %1764 = fsub fast float %1759, %1729
  %1765 = fsub fast float %1761, %1562
  %1766 = fsub fast float %1762, %1563
  %1767 = fsub fast float %1763, %1564
  %1768 = fmul fast float %1764, %1740
  %1769 = fmul fast float %1765, %1740
  %1770 = fmul fast float %1766, %1740
  %1771 = fmul fast float %1767, %1740
  %1772 = fadd fast float %1768, %1729
  %1773 = fadd fast float %1769, %1562
  %1774 = fadd fast float %1770, %1563
  %1775 = fadd fast float %1771, %1564
  %1776 = extractvalue %dx.types.CBufRet.f32 %1741, 2
  %1777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %1778 = extractvalue %dx.types.CBufRet.f32 %1777, 0
  %1779 = extractvalue %dx.types.CBufRet.f32 %1777, 1
  %1780 = extractvalue %dx.types.CBufRet.f32 %1777, 2
  %1781 = fsub fast float %1776, %1728
  %1782 = fsub fast float %1778, %1559
  %1783 = fsub fast float %1779, %1560
  %1784 = fsub fast float %1780, %1561
  %1785 = fmul fast float %1781, %1740
  %1786 = fmul fast float %1782, %1740
  %1787 = fmul fast float %1783, %1740
  %1788 = fmul fast float %1784, %1740
  %1789 = fadd fast float %1785, %1728
  %1790 = fadd fast float %1786, %1559
  %1791 = fadd fast float %1787, %1560
  %1792 = fadd fast float %1788, %1561
  br label %1793

; <label>:1793                                    ; preds = %1736, %1727
  %1794 = phi float [ %1789, %1736 ], [ %1728, %1727 ]
  %1795 = phi float [ %1790, %1736 ], [ %1559, %1727 ]
  %1796 = phi float [ %1791, %1736 ], [ %1560, %1727 ]
  %1797 = phi float [ %1792, %1736 ], [ %1561, %1727 ]
  %1798 = phi float [ %1772, %1736 ], [ %1729, %1727 ]
  %1799 = phi float [ %1773, %1736 ], [ %1562, %1727 ]
  %1800 = phi float [ %1774, %1736 ], [ %1563, %1727 ]
  %1801 = phi float [ %1775, %1736 ], [ %1564, %1727 ]
  %1802 = phi float [ %1755, %1736 ], [ %1730, %1727 ]
  %1803 = phi float [ %1756, %1736 ], [ %1565, %1727 ]
  %1804 = phi float [ %1757, %1736 ], [ %1566, %1727 ]
  %1805 = phi float [ %1758, %1736 ], [ %1567, %1727 ]
  %1806 = extractvalue %dx.types.CBufRet.f32 %1377, 3
  %1807 = fmul fast float %1806, %1802
  %1808 = fmul fast float %1806, %1798
  %1809 = fmul fast float %1806, %1794
  %1810 = fmul fast float %1803, 1.500000e+00
  %1811 = fmul fast float %1810, %1806
  %1812 = fmul fast float %1804, 1.500000e+00
  %1813 = fmul fast float %1812, %1806
  %1814 = fmul fast float %1805, 1.500000e+00
  %1815 = fmul fast float %1814, %1806
  %1816 = fmul fast float %1799, 1.500000e+00
  %1817 = fmul fast float %1816, %1806
  %1818 = fmul fast float %1800, 1.500000e+00
  %1819 = fmul fast float %1818, %1806
  %1820 = fmul fast float %1801, 1.500000e+00
  %1821 = fmul fast float %1820, %1806
  %1822 = fmul fast float %1795, 1.500000e+00
  %1823 = fmul fast float %1822, %1806
  %1824 = fmul fast float %1796, 1.500000e+00
  %1825 = fmul fast float %1824, %1806
  %1826 = fmul fast float %1797, 1.500000e+00
  %1827 = fmul fast float %1826, %1806
  %1828 = fsub fast float %1217, %1807
  %1829 = fmul fast float %1828, %1115
  %1830 = fadd fast float %1829, %1807
  %1831 = fsub fast float %1216, %1811
  %1832 = fmul fast float %1831, %1115
  %1833 = fadd fast float %1832, %1811
  %1834 = fsub fast float %1215, %1813
  %1835 = fmul fast float %1834, %1115
  %1836 = fadd fast float %1835, %1813
  %1837 = fsub fast float %1214, %1815
  %1838 = fmul fast float %1837, %1115
  %1839 = fadd fast float %1838, %1815
  %1840 = fmul fast float %1213, %1115
  %1841 = fmul fast float %1212, %1115
  %1842 = fmul fast float %1211, %1115
  %1843 = fmul fast float %1210, %1115
  %1844 = fmul fast float %1209, %1115
  %1845 = fsub fast float %1208, %1808
  %1846 = fmul fast float %1845, %1115
  %1847 = fadd fast float %1846, %1808
  %1848 = fsub fast float %1207, %1817
  %1849 = fmul fast float %1848, %1115
  %1850 = fadd fast float %1849, %1817
  %1851 = fsub fast float %1206, %1819
  %1852 = fmul fast float %1851, %1115
  %1853 = fadd fast float %1852, %1819
  %1854 = fsub fast float %1205, %1821
  %1855 = fmul fast float %1854, %1115
  %1856 = fadd fast float %1855, %1821
  %1857 = fmul fast float %1204, %1115
  %1858 = fmul fast float %1203, %1115
  %1859 = fmul fast float %1202, %1115
  %1860 = fmul fast float %1201, %1115
  %1861 = fmul fast float %1200, %1115
  %1862 = fsub fast float %1199, %1809
  %1863 = fmul fast float %1862, %1115
  %1864 = fadd fast float %1863, %1809
  %1865 = fsub fast float %1198, %1823
  %1866 = fmul fast float %1865, %1115
  %1867 = fadd fast float %1866, %1823
  %1868 = fsub fast float %1197, %1825
  %1869 = fmul fast float %1868, %1115
  %1870 = fadd fast float %1869, %1825
  %1871 = fsub fast float %1196, %1827
  %1872 = fmul fast float %1871, %1115
  %1873 = fadd fast float %1872, %1827
  %1874 = fmul fast float %1195, %1115
  %1875 = fmul fast float %1194, %1115
  %1876 = fmul fast float %1193, %1115
  %1877 = fmul fast float %1192, %1115
  %1878 = fmul fast float %1191, %1115
  br label %1879

; <label>:1879                                    ; preds = %1793, %1190
  %1880 = phi float [ %1878, %1793 ], [ %1191, %1190 ]
  %1881 = phi float [ %1877, %1793 ], [ %1192, %1190 ]
  %1882 = phi float [ %1876, %1793 ], [ %1193, %1190 ]
  %1883 = phi float [ %1875, %1793 ], [ %1194, %1190 ]
  %1884 = phi float [ %1874, %1793 ], [ %1195, %1190 ]
  %1885 = phi float [ %1873, %1793 ], [ %1196, %1190 ]
  %1886 = phi float [ %1870, %1793 ], [ %1197, %1190 ]
  %1887 = phi float [ %1867, %1793 ], [ %1198, %1190 ]
  %1888 = phi float [ %1864, %1793 ], [ %1199, %1190 ]
  %1889 = phi float [ %1861, %1793 ], [ %1200, %1190 ]
  %1890 = phi float [ %1860, %1793 ], [ %1201, %1190 ]
  %1891 = phi float [ %1859, %1793 ], [ %1202, %1190 ]
  %1892 = phi float [ %1858, %1793 ], [ %1203, %1190 ]
  %1893 = phi float [ %1857, %1793 ], [ %1204, %1190 ]
  %1894 = phi float [ %1856, %1793 ], [ %1205, %1190 ]
  %1895 = phi float [ %1853, %1793 ], [ %1206, %1190 ]
  %1896 = phi float [ %1850, %1793 ], [ %1207, %1190 ]
  %1897 = phi float [ %1847, %1793 ], [ %1208, %1190 ]
  %1898 = phi float [ %1844, %1793 ], [ %1209, %1190 ]
  %1899 = phi float [ %1843, %1793 ], [ %1210, %1190 ]
  %1900 = phi float [ %1842, %1793 ], [ %1211, %1190 ]
  %1901 = phi float [ %1841, %1793 ], [ %1212, %1190 ]
  %1902 = phi float [ %1840, %1793 ], [ %1213, %1190 ]
  %1903 = phi float [ %1839, %1793 ], [ %1214, %1190 ]
  %1904 = phi float [ %1836, %1793 ], [ %1215, %1190 ]
  %1905 = phi float [ %1833, %1793 ], [ %1216, %1190 ]
  %1906 = phi float [ %1830, %1793 ], [ %1217, %1190 ]
  %1907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %1908 = extractvalue %dx.types.CBufRet.f32 %1907, 2
  %1909 = fmul fast float %1908, %1908
  %1910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1911 = extractvalue %dx.types.CBufRet.f32 %1910, 0
  %1912 = extractvalue %dx.types.CBufRet.f32 %1910, 1
  %1913 = extractvalue %dx.types.CBufRet.f32 %1910, 2
  %1914 = fmul fast float %1906, 0x3FD20DD760000000
  %1915 = fmul fast float %1913, %1904
  %1916 = fmul fast float %1913, %1913
  %1917 = fmul fast float %1916, 0x3FEE471020000000
  %1918 = fadd fast float %1917, 0xBFD42F6020000000
  %1919 = fmul fast float %1918, %1900
  %1920 = fmul fast float %1911, %1903
  %1921 = fmul fast float %1912, %1905
  %1922 = fmul fast float %1913, 0x3FF17B1420000000
  %1923 = fmul fast float %1909, %1899
  %1924 = fmul fast float %1923, %1911
  %1925 = fmul fast float %1924, %1922
  %1926 = fmul fast float %1909, %1901
  %1927 = fmul fast float %1926, %1912
  %1928 = fmul fast float %1927, %1922
  %1929 = fmul fast float %1911, %1911
  %1930 = fmul fast float %1912, %1912
  %1931 = fsub fast float %1929, %1930
  %1932 = fmul fast float %1898, 0x3FE17B1420000000
  %1933 = fmul fast float %1932, %1931
  %1934 = fmul fast float %1902, 0x3FF17B1420000000
  %1935 = fmul fast float %1934, %1912
  %1936 = fmul fast float %1935, %1911
  %1937 = fadd fast float %1933, %1936
  %1938 = fadd fast float %1937, %1919
  %1939 = fmul fast float %1938, %1909
  %1940 = fsub fast float %1921, %1915
  %1941 = fadd fast float %1940, %1920
  %1942 = fmul fast float %1941, 0x3FDF454380000000
  %1943 = fmul fast float %1942, %1908
  %1944 = fsub fast float %1914, %1925
  %1945 = fsub fast float %1944, %1928
  %1946 = fadd fast float %1945, %1939
  %1947 = fadd fast float %1946, %1943
  %1948 = fmul fast float %1897, 0x3FD20DD760000000
  %1949 = fmul fast float %1913, %1895
  %1950 = fmul fast float %1918, %1891
  %1951 = fmul fast float %1911, %1894
  %1952 = fmul fast float %1912, %1896
  %1953 = fmul fast float %1909, %1890
  %1954 = fmul fast float %1953, %1911
  %1955 = fmul fast float %1954, %1922
  %1956 = fmul fast float %1909, %1892
  %1957 = fmul fast float %1956, %1912
  %1958 = fmul fast float %1957, %1922
  %1959 = fmul fast float %1889, 0x3FE17B1420000000
  %1960 = fmul fast float %1959, %1931
  %1961 = fmul fast float %1893, 0x3FF17B1420000000
  %1962 = fmul fast float %1961, %1912
  %1963 = fmul fast float %1962, %1911
  %1964 = fadd fast float %1960, %1963
  %1965 = fadd fast float %1964, %1950
  %1966 = fmul fast float %1965, %1909
  %1967 = fsub fast float %1952, %1949
  %1968 = fadd fast float %1967, %1951
  %1969 = fmul fast float %1968, 0x3FDF454380000000
  %1970 = fmul fast float %1969, %1908
  %1971 = fsub fast float %1948, %1955
  %1972 = fsub fast float %1971, %1958
  %1973 = fadd fast float %1972, %1966
  %1974 = fadd fast float %1973, %1970
  %1975 = fmul fast float %1888, 0x3FD20DD760000000
  %1976 = fmul fast float %1913, %1886
  %1977 = fmul fast float %1918, %1882
  %1978 = fmul fast float %1911, %1885
  %1979 = fmul fast float %1912, %1887
  %1980 = fmul fast float %1909, %1881
  %1981 = fmul fast float %1980, %1911
  %1982 = fmul fast float %1981, %1922
  %1983 = fmul fast float %1909, %1883
  %1984 = fmul fast float %1983, %1912
  %1985 = fmul fast float %1984, %1922
  %1986 = fmul fast float %1880, 0x3FE17B1420000000
  %1987 = fmul fast float %1986, %1931
  %1988 = fmul fast float %1884, 0x3FF17B1420000000
  %1989 = fmul fast float %1988, %1912
  %1990 = fmul fast float %1989, %1911
  %1991 = fadd fast float %1987, %1990
  %1992 = fadd fast float %1991, %1977
  %1993 = fmul fast float %1992, %1909
  %1994 = fsub fast float %1979, %1976
  %1995 = fadd fast float %1994, %1978
  %1996 = fmul fast float %1995, 0x3FDF454380000000
  %1997 = fmul fast float %1996, %1908
  %1998 = fsub fast float %1975, %1982
  %1999 = fsub fast float %1998, %1985
  %2000 = fadd fast float %1999, %1993
  %2001 = fadd fast float %2000, %1997
  %2002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2003 = extractvalue %dx.types.CBufRet.f32 %2002, 3
  %2004 = extractvalue %dx.types.CBufRet.f32 %1056, 0
  %2005 = fmul fast float %2004, %2003
  %2006 = fmul fast float %2005, %1947
  %2007 = fmul fast float %2005, %1974
  %2008 = fmul fast float %2005, %2001
  %2009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2010 = extractvalue %dx.types.CBufRet.f32 %2009, 3
  %2011 = fcmp fast une float %2010, 0.000000e+00
  %2012 = extractvalue %dx.types.CBufRet.f32 %2009, 0
  %2013 = extractvalue %dx.types.CBufRet.f32 %2009, 1
  %2014 = extractvalue %dx.types.CBufRet.f32 %2009, 2
  br i1 %2011, label %2015, label %2037, !dx.controlflow.hints !85

; <label>:2015                                    ; preds = %1879
  %2016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %2017 = extractvalue %dx.types.CBufRet.f32 %2016, 0
  %2018 = extractvalue %dx.types.CBufRet.f32 %2016, 1
  %2019 = extractvalue %dx.types.CBufRet.f32 %2016, 2
  %2020 = call float @dx.op.dot3.f32(i32 55, float %2012, float %2013, float %2014, float %116, float %117, float %118)  ; Dot3(ax,ay,az,bx,by,bz)
  %2021 = fcmp fast ogt float %1066, 0.000000e+00
  %2022 = select i1 %2021, float 1.000000e+00, float -1.000000e+00
  %2023 = fmul fast float %2022, 5.000000e-01
  %2024 = fmul fast float %2023, %2020
  %2025 = fmul fast float %2022, %1066
  %2026 = fadd fast float %2024, 4.921875e-01
  %2027 = fadd fast float %2025, -3.125000e-02
  %2028 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %2026, float 0x3FB25F3060000000, float %2027, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2029 = extractvalue %dx.types.ResRet.f32 %2028, 0
  %2030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %2031 = extractvalue %dx.types.CBufRet.f32 %2030, 0
  %2032 = fmul fast float %2029, 0x400921FB60000000
  %2033 = fmul fast float %2032, %2031
  %2034 = fmul fast float %2033, %2017
  %2035 = fmul fast float %2033, %2018
  %2036 = fmul fast float %2033, %2019
  br label %2037

; <label>:2037                                    ; preds = %2015, %1879
  %2038 = phi float [ %2034, %2015 ], [ 0.000000e+00, %1879 ]
  %2039 = phi float [ %2035, %2015 ], [ 0.000000e+00, %1879 ]
  %2040 = phi float [ %2036, %2015 ], [ 0.000000e+00, %1879 ]
  %2041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %2042 = extractvalue %dx.types.CBufRet.f32 %2041, 0
  %2043 = fmul fast float %2042, %2012
  %2044 = fmul fast float %2042, %2013
  %2045 = fmul fast float %2042, %2014
  %2046 = fadd fast float %2043, %290
  %2047 = fadd fast float %2044, %291
  %2048 = fadd fast float %2045, %292
  %2049 = fsub fast float %2046, %304
  %2050 = fsub fast float %2047, %305
  %2051 = fmul fast float %2049, %309
  %2052 = fmul fast float %2050, %310
  %2053 = call float @dx.op.binary.f32(i32 36, float %2051, float %2052)  ; FMin(a,b)
  %2054 = fcmp fast olt float %2053, 0.000000e+00
  %2055 = call float @dx.op.binary.f32(i32 35, float %2051, float %2052)  ; FMax(a,b)
  %2056 = fcmp fast ogt float %2055, 1.000000e+00
  %2057 = or i1 %2054, %2056
  %2058 = fcmp fast olt float %2048, %318
  %2059 = or i1 %2057, %2058
  %2060 = fcmp fast ogt float %2048, %325
  %2061 = or i1 %2059, %2060
  br i1 %2061, label %2076, label %2062, !dx.controlflow.hints !51

; <label>:2062                                    ; preds = %2037
  %2063 = fsub fast float 1.000000e+00, %2052
  %2064 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %26, float %2051, float %2063, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2065 = extractvalue %dx.types.ResRet.f32 %2064, 0
  %2066 = extractvalue %dx.types.ResRet.f32 %2064, 1
  %2067 = extractvalue %dx.types.ResRet.f32 %2064, 2
  %2068 = extractvalue %dx.types.ResRet.f32 %2064, 3
  %2069 = fcmp fast oeq float %2065, 0.000000e+00
  %2070 = fcmp ule float %2048, %2067
  %2071 = fcmp uge float %2048, %2066
  %2072 = or i1 %2071, %2070
  %2073 = or i1 %2069, %2072
  %2074 = zext i1 %2073 to i32
  %2075 = xor i32 %2074, 1
  br label %2076

; <label>:2076                                    ; preds = %2062, %2037
  %2077 = phi float [ %2065, %2062 ], [ %275, %2037 ]
  %2078 = phi float [ %2066, %2062 ], [ %276, %2037 ]
  %2079 = phi float [ %2067, %2062 ], [ %277, %2037 ]
  %2080 = phi float [ %2068, %2062 ], [ %278, %2037 ]
  %2081 = phi i32 [ %2075, %2062 ], [ 0, %2037 ]
  %2082 = icmp eq i32 %2081, 0
  br i1 %416, label %2132, label %2083, !dx.controlflow.hints !55

; <label>:2083                                    ; preds = %2076
  %2084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %2085 = extractvalue %dx.types.CBufRet.f32 %2084, 0
  %2086 = extractvalue %dx.types.CBufRet.f32 %2084, 1
  %2087 = extractvalue %dx.types.CBufRet.f32 %2084, 2
  %2088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %2089 = extractvalue %dx.types.CBufRet.f32 %2088, 0
  %2090 = extractvalue %dx.types.CBufRet.f32 %2088, 1
  %2091 = extractvalue %dx.types.CBufRet.f32 %2088, 2
  %2092 = fsub fast float %2046, %2089
  %2093 = fsub fast float %2047, %2090
  %2094 = fsub fast float %2048, %2091
  %2095 = fmul fast float %2092, %2085
  %2096 = fmul fast float %2093, %2086
  %2097 = fmul fast float %2094, %2087
  %2098 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %2099 = extractvalue %dx.types.CBufRet.i32 %2098, 3
  %2100 = icmp eq i32 %2099, 0
  br i1 %2100, label %2104, label %2101, !dx.controlflow.hints !56

; <label>:2101                                    ; preds = %2083
  %2102 = call float @dx.op.unary.f32(i32 22, float %2095)  ; Frc(value)
  %2103 = call float @dx.op.unary.f32(i32 22, float %2096)  ; Frc(value)
  br label %2104

; <label>:2104                                    ; preds = %2101, %2083
  %2105 = phi float [ %2102, %2101 ], [ %2095, %2083 ]
  %2106 = phi float [ %2103, %2101 ], [ %2096, %2083 ]
  %2107 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %24, float %2105, float %2106, float %2097, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2108 = extractvalue %dx.types.ResRet.f32 %2107, 0
  %2109 = fmul fast float %2108, 2.000000e+00
  %2110 = fadd fast float %2109, -1.000000e+00
  %2111 = extractvalue %dx.types.CBufRet.f32 %2084, 3
  %2112 = fmul fast float %2110, %2111
  %2113 = fcmp fast olt float %2112, 0.000000e+00
  %2114 = fcmp fast oge float %2097, 0.000000e+00
  %2115 = fcmp fast ole float %2097, 1.000000e+00
  br i1 %2100, label %2118, label %2116, !dx.controlflow.hints !57

; <label>:2116                                    ; preds = %2104
  %2117 = and i1 %2114, %2115
  br label %2128

; <label>:2118                                    ; preds = %2104
  %2119 = fcmp fast oge float %2095, 0.000000e+00
  %2120 = fcmp fast oge float %2096, 0.000000e+00
  %2121 = and i1 %2119, %2120
  %2122 = and i1 %2114, %2121
  %2123 = fcmp fast ole float %2095, 1.000000e+00
  %2124 = fcmp fast ole float %2096, 1.000000e+00
  %2125 = and i1 %2123, %2124
  %2126 = and i1 %2115, %2125
  %2127 = and i1 %2122, %2126
  br label %2128

; <label>:2128                                    ; preds = %2118, %2116
  %2129 = phi i1 [ %2117, %2116 ], [ %2127, %2118 ]
  %2130 = and i1 %2113, %2129
  %2131 = zext i1 %2130 to i32
  br label %2132

; <label>:2132                                    ; preds = %2128, %2076
  %2133 = phi i32 [ %2131, %2128 ], [ 0, %2076 ]
  br i1 %475, label %2288, label %2134, !dx.controlflow.hints !58

; <label>:2134                                    ; preds = %2132
  %2135 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2136 = extractvalue %dx.types.CBufRet.i32 %2135, 1
  %2137 = and i32 %2136, 1
  %2138 = icmp eq i32 %2137, 0
  br i1 %2138, label %2139, label %2283, !dx.controlflow.hints !59

; <label>:2139                                    ; preds = %2134
  %2140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %2141 = extractvalue %dx.types.CBufRet.f32 %2140, 2
  %2142 = extractvalue %dx.types.CBufRet.f32 %2140, 3
  %2143 = fmul fast float %2141, %2046
  %2144 = fmul fast float %2142, %2047
  %2145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %2146 = extractvalue %dx.types.CBufRet.f32 %2145, 0
  %2147 = extractvalue %dx.types.CBufRet.f32 %2145, 1
  %2148 = fadd fast float %2143, %2146
  %2149 = fadd fast float %2144, %2147
  %2150 = call float @dx.op.unary.f32(i32 7, float %2148)  ; Saturate(value)
  %2151 = call float @dx.op.unary.f32(i32 7, float %2149)  ; Saturate(value)
  %2152 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %26, float %2150, float %2151, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2153 = extractvalue %dx.types.ResRet.f32 %2152, 0
  %2154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2155 = extractvalue %dx.types.CBufRet.f32 %2154, 0
  %2156 = fmul fast float %2155, %2153
  %2157 = fsub fast float %2148, %2150
  %2158 = fsub fast float %2149, %2151
  %2159 = extractvalue %dx.types.CBufRet.f32 %2140, 0
  %2160 = extractvalue %dx.types.CBufRet.f32 %2140, 1
  %2161 = fmul fast float %2159, %2157
  %2162 = fmul fast float %2160, %2158
  %2163 = fmul fast float %2161, %2161
  %2164 = fmul fast float %2162, %2162
  %2165 = fadd fast float %2163, %2164
  %2166 = call float @dx.op.unary.f32(i32 24, float %2165)  ; Sqrt(value)
  %2167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %2168 = extractvalue %dx.types.CBufRet.f32 %2167, 3
  %2169 = fmul fast float %2168, %2166
  %2170 = call float @dx.op.unary.f32(i32 7, float %2169)  ; Saturate(value)
  %2171 = extractvalue %dx.types.CBufRet.f32 %2167, 2
  %2172 = fsub fast float %2171, %2156
  %2173 = fmul fast float %2172, %2170
  %2174 = extractvalue %dx.types.CBufRet.f32 %2154, 1
  %2175 = fsub fast float %2048, %2156
  %2176 = fsub fast float %2175, %2174
  %2177 = fsub fast float %2176, %2173
  %2178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2179 = extractvalue %dx.types.CBufRet.f32 %2178, 2
  %2180 = fsub fast float %2177, %2179
  %2181 = fcmp fast olt float %2180, 0.000000e+00
  %2182 = extractvalue %dx.types.CBufRet.i32 %2135, 0
  %2183 = icmp eq i32 %2182, 0
  br i1 %2183, label %2234, label %2184

; <label>:2184                                    ; preds = %2139
  br label %2185

; <label>:2185                                    ; preds = %2223, %2184
  %2186 = phi i32 [ %2229, %2223 ], [ 1, %2184 ]
  %2187 = phi i32 [ %2230, %2223 ], [ 0, %2184 ]
  %2188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %2189 = extractvalue %dx.types.CBufRet.f32 %2188, 1
  %2190 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2191 = extractvalue %dx.types.CBufRet.i32 %2190, 1
  %2192 = and i32 %2191, 8
  %2193 = icmp eq i32 %2192, 0
  %2194 = fcmp fast ogt float %2189, %2177
  %2195 = or i1 %2194, %2193
  %2196 = add i32 %2187, 171
  %2197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 %2196)  ; CBufferLoadLegacy(handle,regIndex)
  %2198 = extractvalue %dx.types.CBufRet.f32 %2197, 0
  %2199 = extractvalue %dx.types.CBufRet.f32 %2197, 1
  %2200 = extractvalue %dx.types.CBufRet.f32 %2197, 2
  br i1 %2195, label %2201, label %2207, !dx.controlflow.hints !60

; <label>:2201                                    ; preds = %2185
  %2202 = fsub fast float %2198, %2046
  %2203 = fsub fast float %2199, %2047
  %2204 = fmul fast float %2202, %2202
  %2205 = fmul fast float %2203, %2203
  %2206 = fadd fast float %2204, %2205
  br label %2223

; <label>:2207                                    ; preds = %2185
  %2208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2209 = extractvalue %dx.types.CBufRet.f32 %2208, 2
  %2210 = extractvalue %dx.types.CBufRet.f32 %2188, 2
  %2211 = fmul fast float %2210, %2209
  %2212 = fsub fast float %2211, %2189
  %2213 = fdiv fast float %2200, %2212
  %2214 = fsub fast float %2046, %2198
  %2215 = fsub fast float %2047, %2199
  %2216 = fsub fast float %2177, %2189
  %2217 = fmul fast float %2213, %2216
  %2218 = fmul fast float %2214, %2214
  %2219 = fmul fast float %2215, %2215
  %2220 = fadd fast float %2218, %2219
  %2221 = fmul fast float %2217, %2217
  %2222 = fadd fast float %2220, %2221
  br label %2223

; <label>:2223                                    ; preds = %2207, %2201
  %2224 = phi float [ %2206, %2201 ], [ %2222, %2207 ]
  %2225 = call float @dx.op.unary.f32(i32 24, float %2224)  ; Sqrt(value)
  %2226 = fsub float %2200, %2225
  %2227 = fcmp fast olt float %2226, 0.000000e+00
  %2228 = zext i1 %2227 to i32
  %2229 = and i32 %2228, %2186
  %2230 = add i32 %2187, 1
  %2231 = extractvalue %dx.types.CBufRet.i32 %2190, 0
  %2232 = icmp ult i32 %2230, %2231
  br i1 %2232, label %2185, label %2233

; <label>:2233                                    ; preds = %2223
  br label %2234

; <label>:2234                                    ; preds = %2233, %2139
  %2235 = phi i32 [ 1, %2139 ], [ %2229, %2233 ]
  br label %2236

; <label>:2236                                    ; preds = %2236, %2234
  %2237 = phi i32 [ %2273, %2236 ], [ %2235, %2234 ]
  %2238 = phi i32 [ %2274, %2236 ], [ 0, %2234 ]
  %2239 = add nuw nsw i32 %2238, 191
  %2240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 %2239)  ; CBufferLoadLegacy(handle,regIndex)
  %2241 = extractvalue %dx.types.CBufRet.f32 %2240, 0
  %2242 = extractvalue %dx.types.CBufRet.f32 %2240, 1
  %2243 = extractvalue %dx.types.CBufRet.f32 %2240, 2
  %2244 = add nuw nsw i32 %2238, 195
  %2245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 %2244)  ; CBufferLoadLegacy(handle,regIndex)
  %2246 = extractvalue %dx.types.CBufRet.f32 %2245, 0
  %2247 = extractvalue %dx.types.CBufRet.f32 %2245, 1
  %2248 = extractvalue %dx.types.CBufRet.f32 %2245, 2
  %2249 = fsub fast float %2046, %2241
  %2250 = fsub fast float %2047, %2242
  %2251 = fsub fast float %2177, %2243
  %2252 = call float @dx.op.unary.f32(i32 6, float %2249)  ; FAbs(value)
  %2253 = call float @dx.op.unary.f32(i32 6, float %2250)  ; FAbs(value)
  %2254 = call float @dx.op.unary.f32(i32 6, float %2251)  ; FAbs(value)
  %2255 = fsub fast float %2252, %2246
  %2256 = fsub fast float %2253, %2247
  %2257 = fsub fast float %2254, %2248
  %2258 = call float @dx.op.binary.f32(i32 35, float %2255, float 0.000000e+00)  ; FMax(a,b)
  %2259 = call float @dx.op.binary.f32(i32 35, float %2256, float 0.000000e+00)  ; FMax(a,b)
  %2260 = call float @dx.op.binary.f32(i32 35, float %2257, float 0.000000e+00)  ; FMax(a,b)
  %2261 = fmul fast float %2258, %2258
  %2262 = fmul fast float %2259, %2259
  %2263 = fadd fast float %2262, %2261
  %2264 = fmul fast float %2260, %2260
  %2265 = fadd fast float %2263, %2264
  %2266 = call float @dx.op.unary.f32(i32 24, float %2265)  ; Sqrt(value)
  %2267 = call float @dx.op.binary.f32(i32 35, float %2256, float %2257)  ; FMax(a,b)
  %2268 = call float @dx.op.binary.f32(i32 35, float %2255, float %2267)  ; FMax(a,b)
  %2269 = call float @dx.op.binary.f32(i32 36, float %2268, float 0.000000e+00)  ; FMin(a,b)
  %2270 = fadd fast float %2269, %2266
  %2271 = fcmp ogt float %2270, -0.000000e+00
  %2272 = zext i1 %2271 to i32
  %2273 = and i32 %2272, %2237
  %2274 = add nuw nsw i32 %2238, 1
  %2275 = icmp eq i32 %2274, 4
  br i1 %2275, label %2276, label %2236

; <label>:2276                                    ; preds = %2236
  %2277 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2278 = extractvalue %dx.types.CBufRet.i32 %2277, 1
  %2279 = lshr i32 %2278, 1
  %2280 = xor i32 %2279, %2273
  %2281 = zext i1 %2181 to i32
  %2282 = and i32 %2280, %2281
  br label %2283

; <label>:2283                                    ; preds = %2276, %2134
  %2284 = phi i32 [ %273, %2134 ], [ %2282, %2276 ]
  %2285 = phi float [ %2048, %2134 ], [ %2177, %2276 ]
  %2286 = icmp ne i32 %2284, 0
  %2287 = zext i1 %2286 to i32
  br label %2288

; <label>:2288                                    ; preds = %2283, %2132
  %2289 = phi i32 [ %2284, %2283 ], [ %273, %2132 ]
  %2290 = phi float [ %2285, %2283 ], [ %274, %2132 ]
  %2291 = phi i32 [ %2287, %2283 ], [ 0, %2132 ]
  %2292 = icmp eq i32 %2133, 0
  br i1 %2292, label %2472, label %2293, !dx.controlflow.hints !61

; <label>:2293                                    ; preds = %2288
  %2294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %2295 = extractvalue %dx.types.CBufRet.f32 %2294, 3
  %2296 = fmul fast float %2295, %2042
  %2297 = fcmp fast oeq float %2296, 0.000000e+00
  br i1 %2297, label %2312, label %2298, !dx.controlflow.hints !62

; <label>:2298                                    ; preds = %2293
  %2299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %2300 = extractvalue %dx.types.CBufRet.f32 %2299, 3
  %2301 = fmul fast float %2300, %2296
  %2302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %2303 = extractvalue %dx.types.CBufRet.f32 %2302, 0
  %2304 = extractvalue %dx.types.CBufRet.f32 %2302, 1
  %2305 = extractvalue %dx.types.CBufRet.f32 %2302, 2
  %2306 = fmul fast float %2303, %2301
  %2307 = fmul fast float %2304, %2301
  %2308 = fmul fast float %2305, %2301
  %2309 = call float @dx.op.unary.f32(i32 23, float %2306)  ; Log(value)
  %2310 = call float @dx.op.unary.f32(i32 23, float %2307)  ; Log(value)
  %2311 = call float @dx.op.unary.f32(i32 23, float %2308)  ; Log(value)
  br label %2312

; <label>:2312                                    ; preds = %2298, %2293
  %2313 = phi float [ %2309, %2298 ], [ 0.000000e+00, %2293 ]
  %2314 = phi float [ %2310, %2298 ], [ 0.000000e+00, %2293 ]
  %2315 = phi float [ %2311, %2298 ], [ 0.000000e+00, %2293 ]
  %2316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %2317 = extractvalue %dx.types.CBufRet.f32 %2316, 0
  %2318 = extractvalue %dx.types.CBufRet.f32 %2316, 1
  %2319 = extractvalue %dx.types.CBufRet.f32 %2316, 2
  %2320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %2321 = extractvalue %dx.types.CBufRet.f32 %2320, 0
  %2322 = extractvalue %dx.types.CBufRet.f32 %2320, 1
  %2323 = extractvalue %dx.types.CBufRet.f32 %2320, 2
  %2324 = fsub fast float %2046, %2321
  %2325 = fsub fast float %2047, %2322
  %2326 = fsub fast float %2048, %2323
  %2327 = fmul fast float %2324, %2317
  %2328 = fmul fast float %2325, %2318
  %2329 = fmul fast float %2326, %2319
  %2330 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %2331 = extractvalue %dx.types.CBufRet.i32 %2330, 0
  %2332 = extractvalue %dx.types.CBufRet.i32 %2330, 1
  %2333 = uitofp i32 %2331 to float
  %2334 = uitofp i32 %2332 to float
  %2335 = fmul fast float %2327, %2333
  %2336 = fmul fast float %2328, %2334
  %2337 = fadd fast float %2335, 5.000000e-01
  %2338 = fadd fast float %2336, 5.000000e-01
  %2339 = call float @dx.op.unary.f32(i32 22, float %2337)  ; Frc(value)
  %2340 = call float @dx.op.unary.f32(i32 22, float %2338)  ; Frc(value)
  %2341 = call float @dx.op.unary.f32(i32 27, float %2337)  ; Round_ni(value)
  %2342 = call float @dx.op.unary.f32(i32 27, float %2338)  ; Round_ni(value)
  %2343 = fadd fast float %2341, 1.000000e+00
  %2344 = fadd fast float %2342, 1.000000e+00
  %2345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %2346 = extractvalue %dx.types.CBufRet.f32 %2345, 0
  %2347 = extractvalue %dx.types.CBufRet.f32 %2345, 1
  %2348 = fmul fast float %2346, %2343
  %2349 = fmul fast float %2347, %2344
  %2350 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %25, float %2348, float %2349, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2351 = extractvalue %dx.types.ResRet.f32 %2350, 0
  %2352 = extractvalue %dx.types.ResRet.f32 %2350, 1
  %2353 = extractvalue %dx.types.ResRet.f32 %2350, 2
  %2354 = extractvalue %dx.types.ResRet.f32 %2350, 3
  %2355 = extractvalue %dx.types.CBufRet.i32 %2330, 2
  %2356 = extractvalue %dx.types.CBufRet.f32 %2345, 2
  %2357 = uitofp i32 %2355 to float
  %2358 = fadd fast float %2357, -1.000000e+00
  %2359 = fmul fast float %2358, %2351
  %2360 = fmul fast float %2358, %2352
  %2361 = fmul fast float %2358, %2353
  %2362 = fmul fast float %2358, %2354
  %2363 = fadd fast float %2359, 5.000000e-01
  %2364 = fadd fast float %2360, 5.000000e-01
  %2365 = fadd fast float %2361, 5.000000e-01
  %2366 = fadd fast float %2362, 5.000000e-01
  %2367 = fptoui float %2363 to i32
  %2368 = fptoui float %2364 to i32
  %2369 = fptoui float %2365 to i32
  %2370 = fptoui float %2366 to i32
  %2371 = uitofp i32 %2367 to float
  %2372 = uitofp i32 %2368 to float
  %2373 = uitofp i32 %2369 to float
  %2374 = uitofp i32 %2370 to float
  %2375 = fadd fast float %2371, 5.000000e-01
  %2376 = fadd fast float %2372, 5.000000e-01
  %2377 = fadd fast float %2373, 5.000000e-01
  %2378 = fadd fast float %2374, 5.000000e-01
  %2379 = fmul fast float %2375, %2356
  %2380 = fmul fast float %2376, %2356
  %2381 = fmul fast float %2377, %2356
  %2382 = fmul fast float %2378, %2356
  %2383 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %26, float %2379, float %2329, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2384 = extractvalue %dx.types.ResRet.f32 %2383, 0
  %2385 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %26, float %2380, float %2329, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2386 = extractvalue %dx.types.ResRet.f32 %2385, 0
  %2387 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %26, float %2381, float %2329, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2388 = extractvalue %dx.types.ResRet.f32 %2387, 0
  %2389 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %26, float %2382, float %2329, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2390 = extractvalue %dx.types.ResRet.f32 %2389, 0
  %2391 = fsub fast float %2388, %2390
  %2392 = fmul fast float %2391, %2339
  %2393 = fadd fast float %2392, %2390
  %2394 = fsub fast float %2386, %2384
  %2395 = fmul fast float %2394, %2339
  %2396 = fadd fast float %2395, %2384
  %2397 = fsub fast float %2396, %2393
  %2398 = fmul fast float %2397, %2340
  %2399 = fadd fast float %2398, %2393
  %2400 = fcmp fast ogt float %2399, 0.000000e+00
  br i1 %2400, label %2401, label %2469, !dx.controlflow.hints !63

; <label>:2401                                    ; preds = %2312
  %2402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %2403 = extractvalue %dx.types.CBufRet.f32 %2402, 0
  %2404 = extractvalue %dx.types.CBufRet.f32 %2402, 1
  %2405 = extractvalue %dx.types.CBufRet.f32 %2402, 2
  %2406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %2407 = extractvalue %dx.types.CBufRet.f32 %2406, 0
  %2408 = extractvalue %dx.types.CBufRet.f32 %2406, 1
  %2409 = extractvalue %dx.types.CBufRet.f32 %2406, 2
  %2410 = fmul fast float %2325, %2317
  %2411 = fmul fast float %2326, %2317
  %2412 = fadd fast float %2327, %2407
  %2413 = fadd fast float %2410, %2408
  %2414 = fadd fast float %2411, %2409
  %2415 = fmul fast float %2412, %2403
  %2416 = fmul fast float %2413, %2403
  %2417 = fmul fast float %2414, %2403
  %2418 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %23, float %2415, float %2416, float %2417, float undef, i32 0, i32 0, i32 0, float %2313)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2419 = extractvalue %dx.types.ResRet.f32 %2418, 0
  %2420 = fmul fast float %2412, %2404
  %2421 = fmul fast float %2413, %2404
  %2422 = fmul fast float %2414, %2404
  %2423 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %23, float %2420, float %2421, float %2422, float undef, i32 0, i32 0, i32 0, float %2314)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2424 = extractvalue %dx.types.ResRet.f32 %2423, 1
  %2425 = fmul fast float %2412, %2405
  %2426 = fmul fast float %2413, %2405
  %2427 = fmul fast float %2414, %2405
  %2428 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %23, float %2425, float %2426, float %2427, float undef, i32 0, i32 0, i32 0, float %2315)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2429 = extractvalue %dx.types.ResRet.f32 %2428, 2
  %2430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %2431 = extractvalue %dx.types.CBufRet.f32 %2430, 1
  %2432 = fmul fast float %2424, %2419
  %2433 = fmul fast float %2432, %2429
  %2434 = call float @dx.op.unary.f32(i32 23, float %2433)  ; Log(value)
  %2435 = fmul fast float %2434, %2431
  %2436 = call float @dx.op.unary.f32(i32 21, float %2435)  ; Exp(value)
  %2437 = extractvalue %dx.types.CBufRet.f32 %2430, 2
  %2438 = fmul fast float %2399, %2399
  %2439 = fmul fast float %2438, %2436
  %2440 = fmul fast float %2439, %2437
  %2441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %2442 = extractvalue %dx.types.CBufRet.f32 %2441, 3
  %2443 = fmul fast float %2442, %2440
  %2444 = bitcast float %2443 to i32
  %2445 = sitofp i32 %2444 to float
  %2446 = fptosi float %2445 to i32
  %2447 = bitcast i32 %2446 to float
  %2448 = fsub fast float 1.000000e+00, %2440
  %2449 = bitcast float %2448 to i32
  %2450 = sitofp i32 %2449 to float
  %2451 = fptosi float %2450 to i32
  %2452 = bitcast i32 %2451 to float
  %2453 = fadd fast float %2447, %2452
  %2454 = bitcast float %2453 to i32
  %2455 = sub nsw i32 2129859010, %2454
  %2456 = bitcast i32 %2455 to float
  %2457 = fmul fast float %2456, %2447
  %2458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2459 = extractvalue %dx.types.CBufRet.f32 %2458, 2
  %2460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %2461 = extractvalue %dx.types.CBufRet.f32 %2460, 0
  %2462 = fmul fast float %2457, %2461
  %2463 = fadd fast float %2462, 1.000000e+00
  %2464 = bitcast float %2463 to i32
  %2465 = sub nsw i32 2129859010, %2464
  %2466 = bitcast i32 %2465 to float
  %2467 = fmul fast float %2457, %2459
  %2468 = fmul fast float %2467, %2466
  br label %2469

; <label>:2469                                    ; preds = %2401, %2312
  %2470 = phi float [ %2468, %2401 ], [ %2399, %2312 ]
  %2471 = fmul fast float %2470, %2042
  br label %2472

; <label>:2472                                    ; preds = %2469, %2288
  %2473 = phi float [ %2471, %2469 ], [ 0.000000e+00, %2288 ]
  br i1 %2082, label %2599, label %2474, !dx.controlflow.hints !64

; <label>:2474                                    ; preds = %2472
  %2475 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %2476 = extractvalue %dx.types.CBufRet.i32 %2475, 0
  %2477 = icmp ne i32 %2476, 0
  %2478 = zext i1 %2477 to i32
  %2479 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %2480 = extractvalue %dx.types.CBufRet.i32 %2479, 0
  %2481 = icmp eq i32 %2480, 0
  br i1 %2481, label %2515, label %2482

; <label>:2482                                    ; preds = %2474
  br label %2483

; <label>:2483                                    ; preds = %2510, %2482
  %2484 = phi i32 [ %2511, %2510 ], [ 0, %2482 ]
  %2485 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2484, i32 0)  ; BufferLoad(srv,index,wot)
  %2486 = extractvalue %dx.types.ResRet.f32 %2485, 0
  %2487 = extractvalue %dx.types.ResRet.f32 %2485, 1
  %2488 = extractvalue %dx.types.ResRet.f32 %2485, 2
  %2489 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2484, i32 16)  ; BufferLoad(srv,index,wot)
  %2490 = extractvalue %dx.types.ResRet.f32 %2489, 0
  %2491 = extractvalue %dx.types.ResRet.f32 %2489, 1
  %2492 = extractvalue %dx.types.ResRet.f32 %2489, 2
  %2493 = fsub fast float %2486, %2490
  %2494 = fsub fast float %2487, %2491
  %2495 = fsub fast float %2488, %2492
  %2496 = fadd fast float %2490, %2486
  %2497 = fadd fast float %2491, %2487
  %2498 = fadd fast float %2492, %2488
  %2499 = fcmp fast olt float %2046, %2493
  %2500 = fcmp fast olt float %2047, %2494
  %2501 = fcmp fast olt float %2048, %2495
  %2502 = or i1 %2499, %2500
  %2503 = or i1 %2501, %2502
  %2504 = fcmp fast ogt float %2046, %2496
  %2505 = fcmp fast ogt float %2047, %2497
  %2506 = fcmp fast ogt float %2048, %2498
  %2507 = or i1 %2504, %2505
  %2508 = or i1 %2506, %2507
  %2509 = or i1 %2503, %2508
  br i1 %2509, label %2510, label %2513, !dx.controlflow.hints !65

; <label>:2510                                    ; preds = %2483
  %2511 = add nuw i32 %2484, 1
  %2512 = icmp ult i32 %2511, %2480
  br i1 %2512, label %2483, label %2513

; <label>:2513                                    ; preds = %2510, %2483
  %2514 = phi i32 [ 255, %2510 ], [ %2484, %2483 ]
  br label %2515

; <label>:2515                                    ; preds = %2513, %2474
  %2516 = phi i32 [ 255, %2474 ], [ %2514, %2513 ]
  %2517 = icmp eq i32 %2516, 255
  br i1 %2517, label %2523, label %2518, !dx.controlflow.hints !66

; <label>:2518                                    ; preds = %2515
  %2519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2516, i32 156)  ; BufferLoad(srv,index,wot)
  %2520 = extractvalue %dx.types.ResRet.i32 %2519, 0
  %2521 = icmp ne i32 %2520, 0
  %2522 = zext i1 %2521 to i32
  br label %2523

; <label>:2523                                    ; preds = %2518, %2515
  %2524 = phi i32 [ %2522, %2518 ], [ %2478, %2515 ]
  %2525 = icmp eq i32 %2524, 0
  br i1 %2525, label %2526, label %2595, !dx.controlflow.hints !67

; <label>:2526                                    ; preds = %2523
  %2527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %2528 = extractvalue %dx.types.CBufRet.f32 %2527, 3
  %2529 = extractvalue %dx.types.CBufRet.f32 %321, 0
  %2530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %2531 = extractvalue %dx.types.CBufRet.f32 %2530, 2
  %2532 = extractvalue %dx.types.CBufRet.f32 %2530, 3
  br i1 %2517, label %2543, label %2533, !dx.controlflow.hints !68

; <label>:2533                                    ; preds = %2526
  %2534 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2516, i32 60)  ; BufferLoad(srv,index,wot)
  %2535 = extractvalue %dx.types.ResRet.f32 %2534, 0
  %2536 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2516, i32 64)  ; BufferLoad(srv,index,wot)
  %2537 = extractvalue %dx.types.ResRet.f32 %2536, 0
  %2538 = extractvalue %dx.types.ResRet.f32 %2536, 1
  %2539 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2516, i32 72)  ; BufferLoad(srv,index,wot)
  %2540 = extractvalue %dx.types.ResRet.f32 %2539, 0
  %2541 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2516, i32 96)  ; BufferLoad(srv,index,wot)
  %2542 = extractvalue %dx.types.ResRet.f32 %2541, 0
  br label %2543

; <label>:2543                                    ; preds = %2533, %2526
  %2544 = phi float [ %2535, %2533 ], [ %324, %2526 ]
  %2545 = phi float [ %2540, %2533 ], [ %322, %2526 ]
  %2546 = phi float [ %2542, %2533 ], [ %2529, %2526 ]
  %2547 = phi float [ %2537, %2533 ], [ %2531, %2526 ]
  %2548 = phi float [ %2538, %2533 ], [ %2532, %2526 ]
  %2549 = call float @dx.op.binary.f32(i32 35, float %2077, float 0.000000e+00)  ; FMax(a,b)
  %2550 = call float @dx.op.binary.f32(i32 36, float %2549, float 1.000000e+00)  ; FMin(a,b)
  %2551 = call float @dx.op.unary.f32(i32 24, float %2550)  ; Sqrt(value)
  %2552 = call float @dx.op.binary.f32(i32 35, float %2080, float 0x3F847AE140000000)  ; FMax(a,b)
  %2553 = fsub fast float %2078, %2048
  %2554 = fsub fast float %2048, %2079
  %2555 = call float @dx.op.binary.f32(i32 36, float %2554, float %2553)  ; FMin(a,b)
  %2556 = fdiv fast float %2555, %2552
  %2557 = call float @dx.op.unary.f32(i32 7, float %2556)  ; Saturate(value)
  %2558 = fsub fast float %2048, %2545
  %2559 = fdiv fast float %2558, %2544
  %2560 = call float @dx.op.unary.f32(i32 7, float %2559)  ; Saturate(value)
  %2561 = fsub fast float 1.000000e+00, %2560
  %2562 = fmul float %2557, %2561
  %2563 = fmul float %2562, %2562
  %2564 = fmul fast float %2551, %2528
  %2565 = fmul fast float %2564, %2563
  %2566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %2567 = extractvalue %dx.types.CBufRet.f32 %2566, 2
  %2568 = extractvalue %dx.types.CBufRet.f32 %2566, 1
  %2569 = fsub fast float %2565, %2568
  %2570 = fsub fast float %2567, %2568
  %2571 = fdiv fast float %2569, %2570
  %2572 = call float @dx.op.unary.f32(i32 7, float %2571)  ; Saturate(value)
  %2573 = fmul fast float %2572, %2546
  %2574 = fcmp fast ogt float %2548, 0.000000e+00
  br i1 %2574, label %2575, label %2595, !dx.controlflow.hints !69

; <label>:2575                                    ; preds = %2543
  %2576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2577 = extractvalue %dx.types.CBufRet.f32 %2576, 0
  %2578 = extractvalue %dx.types.CBufRet.f32 %2576, 1
  %2579 = extractvalue %dx.types.CBufRet.f32 %2576, 2
  %2580 = fsub fast float %2046, %2577
  %2581 = fsub fast float %2047, %2578
  %2582 = fsub fast float %2048, %2579
  %2583 = fmul fast float %2580, %2580
  %2584 = fmul fast float %2581, %2581
  %2585 = fadd fast float %2583, %2584
  %2586 = fmul fast float %2582, %2582
  %2587 = fadd fast float %2585, %2586
  %2588 = call float @dx.op.unary.f32(i32 24, float %2587)  ; Sqrt(value)
  %2589 = fsub fast float %2588, %2547
  %2590 = fsub fast float %2548, %2547
  %2591 = fdiv fast float %2589, %2590
  %2592 = call float @dx.op.unary.f32(i32 7, float %2591)  ; Saturate(value)
  %2593 = fmul fast float %2592, %2592
  %2594 = fmul fast float %2593, %2573
  br label %2595

; <label>:2595                                    ; preds = %2575, %2543, %2523
  %2596 = phi float [ 0.000000e+00, %2523 ], [ %2594, %2575 ], [ %2573, %2543 ]
  %2597 = fmul fast float %2596, %2042
  %2598 = fadd fast float %2597, %2473
  br label %2599

; <label>:2599                                    ; preds = %2595, %2472
  %2600 = phi float [ %2598, %2595 ], [ %2473, %2472 ]
  %2601 = icmp eq i32 %2291, 0
  br i1 %2601, label %2633, label %2602, !dx.controlflow.hints !70

; <label>:2602                                    ; preds = %2599
  %2603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %2604 = extractvalue %dx.types.CBufRet.f32 %2603, 1
  %2605 = fsub fast float %2042, %2604
  %2606 = extractvalue %dx.types.CBufRet.f32 %2603, 3
  %2607 = fmul fast float %2605, %2606
  %2608 = call float @dx.op.unary.f32(i32 7, float %2607)  ; Saturate(value)
  %2609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %2610 = extractvalue %dx.types.CBufRet.f32 %2609, 3
  %2611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2612 = extractvalue %dx.types.CBufRet.f32 %2611, 2
  %2613 = fsub fast float %2612, %2290
  %2614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %2615 = extractvalue %dx.types.CBufRet.f32 %2614, 3
  %2616 = fmul fast float %2613, %2615
  %2617 = call float @dx.op.unary.f32(i32 7, float %2616)  ; Saturate(value)
  %2618 = fmul fast float %2617, %2610
  %2619 = extractvalue %dx.types.CBufRet.f32 %2614, 0
  %2620 = fsub fast float %2042, %2619
  %2621 = extractvalue %dx.types.CBufRet.f32 %2614, 1
  %2622 = fmul fast float %2620, %2621
  %2623 = call float @dx.op.unary.f32(i32 7, float %2622)  ; Saturate(value)
  %2624 = fsub fast float 1.000000e+00, %2608
  %2625 = fmul fast float %2623, %2624
  %2626 = fadd fast float %2625, %2608
  %2627 = extractvalue %dx.types.CBufRet.f32 %2603, 0
  %2628 = fsub fast float %2618, %2627
  %2629 = fmul fast float %2628, %2626
  %2630 = fadd fast float %2629, %2627
  %2631 = fmul fast float %2630, %2042
  %2632 = fadd fast float %2631, %2600
  br label %2633

; <label>:2633                                    ; preds = %2602, %2599
  %2634 = phi float [ %2632, %2602 ], [ %2600, %2599 ]
  %2635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %2636 = extractvalue %dx.types.CBufRet.f32 %2635, 3
  %2637 = fmul fast float %2634, 0xBFF7154760000000
  %2638 = fmul fast float %2637, %2636
  %2639 = call float @dx.op.unary.f32(i32 21, float %2638)  ; Exp(value)
  %2640 = call float @dx.op.unary.f32(i32 7, float %2639)  ; Saturate(value)
  %2641 = fmul fast float %2640, %2038
  %2642 = fmul fast float %2640, %2039
  %2643 = fmul fast float %2640, %2040
  %2644 = fadd fast float %2641, %2006
  %2645 = fadd fast float %2642, %2007
  %2646 = fadd fast float %2643, %2008
  %2647 = fsub fast float 1.000000e+00, %1075
  %2648 = fmul fast float %1067, %286
  %2649 = fmul fast float %2648, %2647
  %2650 = fmul fast float %2649, %2644
  %2651 = fmul fast float %1068, %286
  %2652 = fmul fast float %2651, %2647
  %2653 = fmul fast float %2652, %2645
  %2654 = fmul fast float %1069, %286
  %2655 = fmul fast float %2654, %2647
  %2656 = fmul fast float %2655, %2646
  %2657 = fadd fast float %2650, %287
  %2658 = fadd fast float %2653, %288
  %2659 = fadd fast float %2656, %289
  %2660 = fdiv fast float %1051, %662
  %2661 = fadd fast float %662, %293
  %2662 = fmul fast float %293, %293
  %2663 = fmul fast float %2661, %2661
  %2664 = fsub fast float %2662, %2663
  %2665 = fmul fast float %2664, -5.000000e-01
  %2666 = fmul fast float %2665, %2660
  %2667 = fadd fast float %2666, %285
  %2668 = fadd fast float %1051, %295
  %2669 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2670 = extractvalue %dx.types.CBufRet.i32 %2669, 0
  %2671 = icmp eq i32 %2670, 0
  br i1 %2671, label %2698, label %2672, !dx.controlflow.hints !86

; <label>:2672                                    ; preds = %2633
  %2673 = icmp ne i32 %300, 0
  %2674 = zext i1 %2673 to i32
  %2675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %2676 = extractvalue %dx.types.CBufRet.f32 %2675, 2
  %2677 = extractvalue %dx.types.CBufRet.f32 %2675, 0
  %2678 = fsub fast float %2661, %2677
  %2679 = fmul fast float %2678, %2676
  %2680 = call float @dx.op.unary.f32(i32 7, float %2679)  ; Saturate(value)
  %2681 = fadd fast float %2680, -5.000000e-01
  %2682 = fmul fast float %2681, 2.000000e+00
  %2683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %2684 = extractvalue %dx.types.CBufRet.f32 %2683, 2
  %2685 = fcmp fast olt float %2682, %2684
  br i1 %2685, label %2686, label %2698, !dx.controlflow.hints !87

; <label>:2686                                    ; preds = %2672
  %2687 = fmul fast float %2682, %2682
  %2688 = fmul fast float %2647, %286
  %2689 = fmul fast float %2682, %2688
  %2690 = fmul fast float %2687, %2688
  %2691 = fmul fast float %2689, %2687
  %2692 = fmul fast float %2687, %2687
  %2693 = fmul fast float %2692, %2688
  %2694 = fadd fast float %2689, %296
  %2695 = fadd fast float %2690, %297
  %2696 = fadd fast float %2691, %298
  %2697 = fadd fast float %2693, %299
  br label %2698

; <label>:2698                                    ; preds = %2686, %2672, %2633
  %2699 = phi float [ %296, %2633 ], [ %2694, %2686 ], [ %296, %2672 ]
  %2700 = phi float [ %297, %2633 ], [ %2695, %2686 ], [ %297, %2672 ]
  %2701 = phi float [ %298, %2633 ], [ %2696, %2686 ], [ %298, %2672 ]
  %2702 = phi float [ %299, %2633 ], [ %2697, %2686 ], [ %299, %2672 ]
  %2703 = phi i32 [ %300, %2633 ], [ 1, %2686 ], [ %2674, %2672 ]
  %2704 = fmul fast float %1075, %286
  br label %2705

; <label>:2705                                    ; preds = %2698, %1070
  %2706 = phi float [ %1071, %1070 ], [ %2661, %2698 ]
  %2707 = phi i32 [ %273, %1070 ], [ %2289, %2698 ]
  %2708 = phi float [ %274, %1070 ], [ %2290, %2698 ]
  %2709 = phi float [ %275, %1070 ], [ %2077, %2698 ]
  %2710 = phi float [ %276, %1070 ], [ %2078, %2698 ]
  %2711 = phi float [ %277, %1070 ], [ %2079, %2698 ]
  %2712 = phi float [ %278, %1070 ], [ %2080, %2698 ]
  %2713 = phi float [ %285, %1070 ], [ %2667, %2698 ]
  %2714 = phi float [ %286, %1070 ], [ %2704, %2698 ]
  %2715 = phi float [ %287, %1070 ], [ %2657, %2698 ]
  %2716 = phi float [ %288, %1070 ], [ %2658, %2698 ]
  %2717 = phi float [ %289, %1070 ], [ %2659, %2698 ]
  %2718 = phi float [ %295, %1070 ], [ %2668, %2698 ]
  %2719 = phi float [ %296, %1070 ], [ %2699, %2698 ]
  %2720 = phi float [ %297, %1070 ], [ %2700, %2698 ]
  %2721 = phi float [ %298, %1070 ], [ %2701, %2698 ]
  %2722 = phi float [ %299, %1070 ], [ %2702, %2698 ]
  %2723 = phi i32 [ %300, %1070 ], [ %2703, %2698 ]
  %2724 = fmul fast float %662, %116
  %2725 = fmul fast float %662, %117
  %2726 = fmul fast float %662, %118
  %2727 = fadd fast float %2724, %290
  %2728 = fadd fast float %2725, %291
  %2729 = fadd fast float %2726, %292
  %2730 = fcmp fast olt float %2706, %252
  %2731 = extractvalue %dx.types.CBufRet.f32 %1056, 2
  %2732 = fcmp fast olt float %2731, %2714
  %2733 = and i1 %2730, %2732
  br i1 %2733, label %272, label %2734

; <label>:2734                                    ; preds = %2705
  br label %2735

; <label>:2735                                    ; preds = %2734, %245
  %2736 = phi float [ 0.000000e+00, %245 ], [ %2713, %2734 ]
  %2737 = phi float [ 1.000000e+00, %245 ], [ %2714, %2734 ]
  %2738 = phi float [ 0.000000e+00, %245 ], [ %2715, %2734 ]
  %2739 = phi float [ 0.000000e+00, %245 ], [ %2716, %2734 ]
  %2740 = phi float [ 0.000000e+00, %245 ], [ %2717, %2734 ]
  %2741 = phi float [ 0.000000e+00, %245 ], [ %2718, %2734 ]
  %2742 = phi float [ 0.000000e+00, %245 ], [ %2719, %2734 ]
  %2743 = phi float [ 0.000000e+00, %245 ], [ %2720, %2734 ]
  %2744 = phi float [ 0.000000e+00, %245 ], [ %2721, %2734 ]
  %2745 = phi float [ 0.000000e+00, %245 ], [ %2722, %2734 ]
  %2746 = phi i32 [ 0, %245 ], [ %2723, %2734 ]
  %2747 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2748 = extractvalue %dx.types.CBufRet.i32 %2747, 0
  %2749 = icmp eq i32 %2748, 0
  br i1 %2749, label %2791, label %2750, !dx.controlflow.hints !88

; <label>:2750                                    ; preds = %2735
  %2751 = icmp eq i32 %2746, 0
  br i1 %2751, label %2790, label %2752, !dx.controlflow.hints !89

; <label>:2752                                    ; preds = %2750
  %2753 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %2754 = extractvalue %dx.types.CBufRet.i32 %2753, 2
  %2755 = icmp eq i32 %2754, 0
  br i1 %2755, label %2762, label %2756, !dx.controlflow.hints !90

; <label>:2756                                    ; preds = %2752
  %2757 = fsub fast float 1.000000e+00, %2737
  %2758 = fdiv fast float %2742, %2757
  %2759 = fdiv fast float %2743, %2757
  %2760 = fdiv fast float %2744, %2757
  %2761 = fdiv fast float %2745, %2757
  br label %2767

; <label>:2762                                    ; preds = %2752
  %2763 = fadd fast float %2742, %2737
  %2764 = fadd fast float %2743, %2737
  %2765 = fadd fast float %2744, %2737
  %2766 = fadd fast float %2745, %2737
  br label %2767

; <label>:2767                                    ; preds = %2762, %2756
  %2768 = phi float [ %2758, %2756 ], [ %2763, %2762 ]
  %2769 = phi float [ %2759, %2756 ], [ %2764, %2762 ]
  %2770 = phi float [ %2760, %2756 ], [ %2765, %2762 ]
  %2771 = phi float [ %2761, %2756 ], [ %2766, %2762 ]
  %2772 = call float @dx.op.binary.f32(i32 35, float %2768, float -1.000000e+00)  ; FMax(a,b)
  %2773 = call float @dx.op.binary.f32(i32 35, float %2769, float -1.000000e+00)  ; FMax(a,b)
  %2774 = call float @dx.op.binary.f32(i32 35, float %2770, float -1.000000e+00)  ; FMax(a,b)
  %2775 = call float @dx.op.binary.f32(i32 35, float %2771, float -1.000000e+00)  ; FMax(a,b)
  %2776 = call float @dx.op.binary.f32(i32 36, float %2772, float 1.000000e+00)  ; FMin(a,b)
  %2777 = call float @dx.op.binary.f32(i32 36, float %2773, float 1.000000e+00)  ; FMin(a,b)
  %2778 = call float @dx.op.binary.f32(i32 36, float %2774, float 1.000000e+00)  ; FMin(a,b)
  %2779 = call float @dx.op.binary.f32(i32 36, float %2775, float 1.000000e+00)  ; FMin(a,b)
  %2780 = fmul fast float %2776, 1.500000e+00
  %2781 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %2778, float %2780)  ; FMad(a,b,c)
  %2782 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %2777, float 0.000000e+00)  ; FMad(a,b,c)
  %2783 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %2779, float %2782)  ; FMad(a,b,c)
  %2784 = fmul fast float %2776, 0x3FEBB67AE0000000
  %2785 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %2778, float %2784)  ; FMad(a,b,c)
  %2786 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %2777, float 0.000000e+00)  ; FMad(a,b,c)
  %2787 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %2779, float %2786)  ; FMad(a,b,c)
  %2788 = fadd fast float %2781, 5.000000e-01
  %2789 = fadd fast float %2785, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %30, i32 %31, i32 0, float %2788, float %2783, float %2789, float %2787, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2791

; <label>:2790                                    ; preds = %2750
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %30, i32 %31, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2791

; <label>:2791                                    ; preds = %2790, %2767, %2735
  %2792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %2793 = extractvalue %dx.types.CBufRet.f32 %2792, 2
  %2794 = fsub fast float %2737, %2793
  %2795 = fdiv fast float %2794, %2793
  %2796 = call float @dx.op.unary.f32(i32 7, float %2795)  ; Saturate(value)
  %2797 = fmul fast float %2796, 2.000000e+00
  %2798 = fsub fast float 3.000000e+00, %2797
  %2799 = fmul fast float %2796, %2796
  %2800 = fmul fast float %2799, %2737
  %2801 = fmul fast float %2800, %2798
  %2802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %2803 = extractvalue %dx.types.CBufRet.f32 %2802, 0
  %2804 = extractvalue %dx.types.CBufRet.f32 %2802, 1
  %2805 = extractvalue %dx.types.CBufRet.f32 %2802, 2
  %2806 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float %2803, float %2804, float %2805)  ; Dot3(ax,ay,az,bx,by,bz)
  %2807 = fmul fast float %2806, %2736
  %2808 = fcmp fast ogt float %2741, 0.000000e+00
  %2809 = fdiv fast float 1.000000e+00, %2741
  %2810 = fmul fast float %2807, %2809
  %2811 = select i1 %2808, float %2810, float %127
  %2812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %2813 = extractvalue %dx.types.CBufRet.f32 %2812, 0
  %2814 = extractvalue %dx.types.CBufRet.f32 %2812, 1
  %2815 = extractvalue %dx.types.CBufRet.f32 %2812, 2
  %2816 = fmul fast float %2813, %80
  %2817 = fmul fast float %2814, %80
  %2818 = fmul fast float %2815, %80
  %2819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %2820 = extractvalue %dx.types.CBufRet.f32 %2819, 0
  %2821 = extractvalue %dx.types.CBufRet.f32 %2819, 1
  %2822 = extractvalue %dx.types.CBufRet.f32 %2819, 2
  %2823 = fmul fast float %2820, %81
  %2824 = fmul fast float %2821, %81
  %2825 = fmul fast float %2822, %81
  %2826 = fadd fast float %2823, %2816
  %2827 = fadd fast float %2824, %2817
  %2828 = fadd fast float %2825, %2818
  %2829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %2830 = extractvalue %dx.types.CBufRet.f32 %2829, 0
  %2831 = extractvalue %dx.types.CBufRet.f32 %2829, 1
  %2832 = extractvalue %dx.types.CBufRet.f32 %2829, 2
  %2833 = fadd fast float %2826, %2830
  %2834 = fadd fast float %2827, %2831
  %2835 = fadd fast float %2828, %2832
  %2836 = fmul fast float %2833, %2811
  %2837 = fmul fast float %2834, %2811
  %2838 = fmul fast float %2835, %2811
  %2839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %2840 = extractvalue %dx.types.CBufRet.f32 %2839, 0
  %2841 = extractvalue %dx.types.CBufRet.f32 %2839, 1
  %2842 = extractvalue %dx.types.CBufRet.f32 %2839, 2
  %2843 = extractvalue %dx.types.CBufRet.f32 %2839, 3
  %2844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %2845 = extractvalue %dx.types.CBufRet.f32 %2844, 0
  %2846 = extractvalue %dx.types.CBufRet.f32 %2844, 1
  %2847 = extractvalue %dx.types.CBufRet.f32 %2844, 2
  %2848 = extractvalue %dx.types.CBufRet.f32 %2844, 3
  %2849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %2850 = extractvalue %dx.types.CBufRet.f32 %2849, 0
  %2851 = extractvalue %dx.types.CBufRet.f32 %2849, 1
  %2852 = extractvalue %dx.types.CBufRet.f32 %2849, 2
  %2853 = extractvalue %dx.types.CBufRet.f32 %2849, 3
  %2854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %2855 = extractvalue %dx.types.CBufRet.f32 %2854, 0
  %2856 = extractvalue %dx.types.CBufRet.f32 %2854, 1
  %2857 = extractvalue %dx.types.CBufRet.f32 %2854, 2
  %2858 = extractvalue %dx.types.CBufRet.f32 %2854, 3
  %2859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %2860 = extractvalue %dx.types.CBufRet.f32 %2859, 3
  %2861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %2862 = extractvalue %dx.types.CBufRet.f32 %2861, 3
  %2863 = extractvalue %dx.types.CBufRet.f32 %2861, 0
  %2864 = extractvalue %dx.types.CBufRet.f32 %2861, 1
  %2865 = extractvalue %dx.types.CBufRet.f32 %2861, 2
  %2866 = fcmp fast olt float %2865, -5.000000e-01
  %2867 = call float @dx.op.dot3.f32(i32 55, float %2836, float %2837, float %2838, float %2836, float %2837, float %2838)  ; Dot3(ax,ay,az,bx,by,bz)
  %2868 = call float @dx.op.unary.f32(i32 25, float %2867)  ; Rsqrt(value)
  %2869 = fmul fast float %2868, %2867
  %2870 = fmul fast float %2868, %2836
  %2871 = fmul fast float %2868, %2837
  %2872 = fmul fast float %2868, %2838
  %2873 = fadd fast float %2869, %2843
  %2874 = call float @dx.op.dot3.f32(i32 55, float %2870, float %2871, float %2872, float %2840, float %2841, float %2842)  ; Dot3(ax,ay,az,bx,by,bz)
  %2875 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2876 = extractvalue %dx.types.CBufRet.i32 %2875, 1
  %2877 = and i32 %2876, 1
  %2878 = icmp ne i32 %2877, 0
  %2879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %2880 = extractvalue %dx.types.CBufRet.f32 %2879, 2
  %2881 = fcmp fast ogt float %2880, 0.000000e+00
  %2882 = and i1 %2878, %2881
  br i1 %2882, label %2883, label %3289, !dx.controlflow.hints !91

; <label>:2883                                    ; preds = %2791
  %2884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %2885 = extractvalue %dx.types.CBufRet.f32 %2884, 3
  %2886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2887 = extractvalue %dx.types.CBufRet.f32 %2886, 2
  %2888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2889 = extractvalue %dx.types.CBufRet.f32 %2888, 2
  %2890 = fsub fast float %2887, %2889
  %2891 = and i32 %2876, 2
  %2892 = extractvalue %dx.types.CBufRet.i32 %2875, 0
  %2893 = call i32 @dx.op.binary.i32(i32 40, i32 %2892, i32 3)  ; UMin(a,b)
  %2894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %2895 = extractvalue %dx.types.CBufRet.f32 %2894, 0
  %2896 = extractvalue %dx.types.CBufRet.f32 %2894, 1
  %2897 = extractvalue %dx.types.CBufRet.f32 %2888, 0
  %2898 = extractvalue %dx.types.CBufRet.f32 %2888, 1
  %2899 = fsub fast float %2895, %2897
  %2900 = fsub fast float %2896, %2898
  %2901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %2902 = extractvalue %dx.types.CBufRet.f32 %2901, 0
  %2903 = fcmp fast ogt float %2902, 0.000000e+00
  %2904 = fsub fast float -0.000000e+00, %2899
  %2905 = fsub fast float -0.000000e+00, %2900
  %2906 = call float @dx.op.dot2.f32(i32 54, float %2870, float %2871, float %2870, float %2871)  ; Dot2(ax,ay,bx,by)
  %2907 = call float @dx.op.dot2.f32(i32 54, float %2870, float %2871, float %2904, float %2905)  ; Dot2(ax,ay,bx,by)
  %2908 = fmul fast float %2907, 2.000000e+00
  %2909 = call float @dx.op.dot2.f32(i32 54, float %2904, float %2905, float %2904, float %2905)  ; Dot2(ax,ay,bx,by)
  %2910 = fmul fast float %2902, %2902
  %2911 = fsub fast float %2909, %2910
  %2912 = fmul fast float %2908, %2908
  %2913 = fmul fast float %2906, 4.000000e+00
  %2914 = fmul fast float %2913, %2911
  %2915 = fsub fast float %2912, %2914
  %2916 = fcmp fast ogt float %2915, 0.000000e+00
  br i1 %2916, label %2917, label %2932, !dx.controlflow.hints !92

; <label>:2917                                    ; preds = %2883
  %2918 = fcmp fast ogt float %2908, 0.000000e+00
  %2919 = call float @dx.op.unary.f32(i32 24, float %2915)  ; Sqrt(value)
  %2920 = fsub fast float -0.000000e+00, %2919
  %2921 = select i1 %2918, float %2919, float %2920
  %2922 = fadd fast float %2921, %2908
  %2923 = fmul float %2922, -5.000000e-01
  %2924 = fdiv fast float %2923, %2906
  %2925 = call float @dx.op.binary.f32(i32 35, float %2924, float 0.000000e+00)  ; FMax(a,b)
  %2926 = call float @dx.op.binary.f32(i32 36, float %2869, float %2925)  ; FMin(a,b)
  %2927 = fdiv fast float %2911, %2923
  %2928 = call float @dx.op.binary.f32(i32 35, float %2927, float 0.000000e+00)  ; FMax(a,b)
  %2929 = call float @dx.op.binary.f32(i32 36, float %2869, float %2928)  ; FMin(a,b)
  %2930 = call float @dx.op.binary.f32(i32 36, float %2926, float %2929)  ; FMin(a,b)
  %2931 = call float @dx.op.binary.f32(i32 35, float %2926, float %2929)  ; FMax(a,b)
  br label %2932

; <label>:2932                                    ; preds = %2917, %2883
  %2933 = phi float [ %2931, %2917 ], [ -1.000000e+00, %2883 ]
  %2934 = phi float [ %2930, %2917 ], [ -1.000000e+00, %2883 ]
  %2935 = phi i1 [ true, %2917 ], [ false, %2883 ]
  %2936 = and i1 %2903, %2935
  br i1 %2936, label %2937, label %2939, !dx.controlflow.hints !93

; <label>:2937                                    ; preds = %2932
  %2938 = fcmp fast oeq float %2934, %2933
  br i1 %2938, label %3242, label %2940, !dx.controlflow.hints !94

; <label>:2939                                    ; preds = %2932
  br i1 %2903, label %3242, label %2940, !dx.controlflow.hints !95

; <label>:2940                                    ; preds = %2939, %2937
  %2941 = phi float [ %2869, %2939 ], [ %2933, %2937 ]
  %2942 = phi float [ 0.000000e+00, %2939 ], [ %2934, %2937 ]
  %2943 = icmp ne i32 %2891, 0
  %2944 = fmul fast float %2941, %2872
  %2945 = fadd fast float %2944, %2885
  %2946 = fmul fast float %2945, %2941
  %2947 = select i1 %2943, float 0.000000e+00, float %2946
  %2948 = fcmp fast oeq float %2872, 0.000000e+00
  %2949 = fdiv fast float %2890, %2872
  %2950 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2949)  ; FMax(a,b)
  %2951 = select i1 %2948, float %2941, float %2950
  %2952 = call float @dx.op.binary.f32(i32 36, float %2941, float %2951)  ; FMin(a,b)
  %2953 = fcmp fast ogt float %2872, 0.000000e+00
  %2954 = fcmp fast olt float %2890, 0.000000e+00
  br i1 %2953, label %2955, label %3012, !dx.controlflow.hints !96

; <label>:2955                                    ; preds = %2940
  %2956 = icmp eq i32 %2891, 0
  br i1 %2954, label %2957, label %3001, !dx.controlflow.hints !97

; <label>:2957                                    ; preds = %2955
  %2958 = select i1 %2956, float %2941, float 0.000000e+00
  %2959 = fsub fast float -0.000000e+00, %2958
  %2960 = call float @dx.op.unary.f32(i32 6, float %2959)  ; FAbs(value)
  %2961 = fmul fast float %2958, %2872
  %2962 = fadd fast float %2961, %2885
  %2963 = fmul fast float %2960, %2962
  %2964 = fsub fast float %2947, %2963
  %2965 = fsub fast float %2941, %2960
  %2966 = select i1 %2956, float %2965, float 0.000000e+00
  %2967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2968 = extractvalue %dx.types.CBufRet.f32 %2967, 0
  %2969 = extractvalue %dx.types.CBufRet.f32 %2967, 1
  %2970 = extractvalue %dx.types.CBufRet.f32 %2967, 2
  %2971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2972 = extractvalue %dx.types.CBufRet.f32 %2971, 0
  %2973 = extractvalue %dx.types.CBufRet.f32 %2971, 1
  %2974 = extractvalue %dx.types.CBufRet.f32 %2971, 2
  %2975 = extractvalue %dx.types.CBufRet.f32 %2971, 3
  %2976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2977 = extractvalue %dx.types.CBufRet.f32 %2976, 3
  %2978 = call float @dx.op.binary.f32(i32 36, float %2964, float %2977)  ; FMin(a,b)
  %2979 = fmul fast float %2975, %2966
  %2980 = call float @dx.op.unary.f32(i32 7, float %2979)  ; Saturate(value)
  %2981 = fsub fast float %2972, %2968
  %2982 = fsub fast float %2973, %2969
  %2983 = fsub fast float %2974, %2970
  %2984 = fmul fast float %2980, %2981
  %2985 = fmul fast float %2980, %2982
  %2986 = fmul fast float %2980, %2983
  %2987 = fadd fast float %2984, %2968
  %2988 = fadd fast float %2985, %2969
  %2989 = fadd fast float %2986, %2970
  %2990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2991 = extractvalue %dx.types.CBufRet.f32 %2990, 0
  %2992 = extractvalue %dx.types.CBufRet.f32 %2990, 1
  %2993 = fadd fast float %2992, %2991
  %2994 = call float @dx.op.unary.f32(i32 7, float %2993)  ; Saturate(value)
  %2995 = extractvalue %dx.types.CBufRet.f32 %2990, 2
  %2996 = extractvalue %dx.types.CBufRet.f32 %2990, 3
  %2997 = fadd fast float %2996, %2995
  %2998 = call float @dx.op.unary.f32(i32 7, float %2997)  ; Saturate(value)
  %2999 = fmul fast float %2994, %2978
  %3000 = fmul fast float %2999, %2998
  br label %3242

; <label>:3001                                    ; preds = %2955
  br i1 %2956, label %3002, label %3023, !dx.controlflow.hints !98

; <label>:3002                                    ; preds = %3001
  %3003 = call float @dx.op.binary.f32(i32 36, float %2952, float %2942)  ; FMin(a,b)
  %3004 = fsub fast float %2952, %3003
  %3005 = fsub fast float %3004, %2941
  %3006 = call float @dx.op.unary.f32(i32 6, float %3005)  ; FAbs(value)
  %3007 = fadd fast float %3004, %2941
  %3008 = fmul fast float %3007, %2872
  %3009 = fadd fast float %3008, %2885
  %3010 = fmul fast float %3009, %3006
  %3011 = fsub fast float %2947, %3010
  br label %3023

; <label>:3012                                    ; preds = %2940
  br i1 %2954, label %3013, label %3023, !dx.controlflow.hints !99

; <label>:3013                                    ; preds = %3012
  %3014 = call float @dx.op.binary.f32(i32 35, float %2942, float %2952)  ; FMax(a,b)
  %3015 = icmp eq i32 %2891, 0
  %3016 = select i1 %3015, float %2952, float 0.000000e+00
  %3017 = fsub fast float -0.000000e+00, %3016
  %3018 = call float @dx.op.unary.f32(i32 6, float %3017)  ; FAbs(value)
  %3019 = fmul fast float %3016, %2872
  %3020 = fadd fast float %3019, %2885
  %3021 = fmul fast float %3018, %3020
  %3022 = fsub fast float %2947, %3021
  br label %3023

; <label>:3023                                    ; preds = %3013, %3012, %3002, %3001
  %3024 = phi float [ %2942, %3001 ], [ %2942, %3002 ], [ %3014, %3013 ], [ %2942, %3012 ]
  %3025 = phi float [ 0.000000e+00, %3001 ], [ %3006, %3002 ], [ %3018, %3013 ], [ 0.000000e+00, %3012 ]
  %3026 = phi float [ %2947, %3001 ], [ %3011, %3002 ], [ %3022, %3013 ], [ %2947, %3012 ]
  %3027 = phi float [ %2952, %3001 ], [ %2952, %3002 ], [ %2941, %3013 ], [ %2941, %3012 ]
  %3028 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 0
  store float -1.000000e+00, float* %3028, align 4, !tbaa !100, !noalias !104
  %3029 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 1
  store float -1.000000e+00, float* %3029, align 4, !tbaa !100, !noalias !104
  %3030 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 2
  store float -1.000000e+00, float* %3030, align 4, !tbaa !100, !noalias !104
  %3031 = getelementptr inbounds [3 x float], [3 x float]* %33, i32 0, i32 0
  store float -1.000000e+00, float* %3031, align 4, !tbaa !100, !noalias !104
  %3032 = getelementptr inbounds [3 x float], [3 x float]* %33, i32 0, i32 1
  store float -1.000000e+00, float* %3032, align 4, !tbaa !100, !noalias !104
  %3033 = getelementptr inbounds [3 x float], [3 x float]* %33, i32 0, i32 2
  store float -1.000000e+00, float* %3033, align 4, !tbaa !100, !noalias !104
  %3034 = icmp sgt i32 %2893, 0
  br i1 %3034, label %3035, label %3096

; <label>:3035                                    ; preds = %3023
  br label %3036

; <label>:3036                                    ; preds = %3085, %3035
  %3037 = phi i32 [ %3086, %3085 ], [ 0, %3035 ]
  %3038 = phi i32 [ %3087, %3085 ], [ 0, %3035 ]
  %3039 = add nuw i32 %3038, 171
  %3040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 %3039)  ; CBufferLoadLegacy(handle,regIndex)
  %3041 = extractvalue %dx.types.CBufRet.f32 %3040, 0
  %3042 = extractvalue %dx.types.CBufRet.f32 %3040, 1
  %3043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3044 = extractvalue %dx.types.CBufRet.f32 %3043, 0
  %3045 = extractvalue %dx.types.CBufRet.f32 %3043, 1
  %3046 = fsub fast float %3041, %3044
  %3047 = fsub fast float %3042, %3045
  %3048 = extractvalue %dx.types.CBufRet.f32 %3040, 2
  %3049 = fsub fast float -0.000000e+00, %3046
  %3050 = fsub fast float -0.000000e+00, %3047
  %3051 = call float @dx.op.dot2.f32(i32 54, float %2870, float %2871, float %3049, float %3050)  ; Dot2(ax,ay,bx,by)
  %3052 = fmul fast float %3051, 2.000000e+00
  %3053 = call float @dx.op.dot2.f32(i32 54, float %3049, float %3050, float %3049, float %3050)  ; Dot2(ax,ay,bx,by)
  %3054 = fmul fast float %3048, %3048
  %3055 = fsub fast float %3053, %3054
  %3056 = fmul fast float %3052, %3052
  %3057 = fmul fast float %2913, %3055
  %3058 = fsub fast float %3056, %3057
  %3059 = fcmp fast ogt float %3058, 0.000000e+00
  br i1 %3059, label %3060, label %3075, !dx.controlflow.hints !92

; <label>:3060                                    ; preds = %3036
  %3061 = fcmp fast ogt float %3052, 0.000000e+00
  %3062 = call float @dx.op.unary.f32(i32 24, float %3058)  ; Sqrt(value)
  %3063 = fsub fast float -0.000000e+00, %3062
  %3064 = select i1 %3061, float %3062, float %3063
  %3065 = fadd fast float %3064, %3052
  %3066 = fmul float %3065, -5.000000e-01
  %3067 = fdiv fast float %3066, %2906
  %3068 = call float @dx.op.binary.f32(i32 35, float %3067, float 0.000000e+00)  ; FMax(a,b)
  %3069 = call float @dx.op.binary.f32(i32 36, float %2941, float %3068)  ; FMin(a,b)
  %3070 = fdiv fast float %3055, %3066
  %3071 = call float @dx.op.binary.f32(i32 35, float %3070, float 0.000000e+00)  ; FMax(a,b)
  %3072 = call float @dx.op.binary.f32(i32 36, float %2941, float %3071)  ; FMin(a,b)
  %3073 = call float @dx.op.binary.f32(i32 36, float %3069, float %3072)  ; FMin(a,b)
  %3074 = call float @dx.op.binary.f32(i32 35, float %3069, float %3072)  ; FMax(a,b)
  br label %3075

; <label>:3075                                    ; preds = %3060, %3036
  %3076 = phi float [ %3074, %3060 ], [ -1.000000e+00, %3036 ]
  %3077 = phi float [ %3073, %3060 ], [ -1.000000e+00, %3036 ]
  %3078 = phi i1 [ true, %3060 ], [ false, %3036 ]
  br i1 %3078, label %3079, label %3085, !dx.controlflow.hints !115

; <label>:3079                                    ; preds = %3075
  %3080 = call float @dx.op.binary.f32(i32 35, float %3024, float %3077)  ; FMax(a,b)
  %3081 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 %3038
  store float %3080, float* %3081, align 4, !tbaa !100, !noalias !104
  %3082 = call float @dx.op.binary.f32(i32 35, float %3024, float %3076)  ; FMax(a,b)
  %3083 = getelementptr inbounds [3 x float], [3 x float]* %33, i32 0, i32 %3038
  store float %3082, float* %3083, align 4, !tbaa !100, !noalias !104
  %3084 = add nsw i32 %3037, 1
  br label %3085

; <label>:3085                                    ; preds = %3079, %3075
  %3086 = phi i32 [ %3084, %3079 ], [ %3037, %3075 ]
  %3087 = add nuw nsw i32 %3038, 1
  %3088 = icmp eq i32 %3087, %2893
  br i1 %3088, label %3089, label %3036

; <label>:3089                                    ; preds = %3085
  %3090 = load float, float* %3030, align 4, !tbaa !100, !alias.scope !116, !noalias !119
  %3091 = load float, float* %3029, align 4, !tbaa !100, !alias.scope !122, !noalias !123
  %3092 = load float, float* %3028, align 4, !tbaa !100, !alias.scope !124, !noalias !125
  %3093 = load float, float* %3033, align 4, !tbaa !100, !alias.scope !126, !noalias !129
  %3094 = load float, float* %3032, align 4, !tbaa !100, !alias.scope !132, !noalias !133
  %3095 = load float, float* %3031, align 4, !tbaa !100, !alias.scope !134, !noalias !135
  br label %3096

; <label>:3096                                    ; preds = %3089, %3023
  %3097 = phi float [ -1.000000e+00, %3023 ], [ %3095, %3089 ]
  %3098 = phi float [ -1.000000e+00, %3023 ], [ %3094, %3089 ]
  %3099 = phi float [ -1.000000e+00, %3023 ], [ %3093, %3089 ]
  %3100 = phi float [ -1.000000e+00, %3023 ], [ %3092, %3089 ]
  %3101 = phi float [ -1.000000e+00, %3023 ], [ %3091, %3089 ]
  %3102 = phi float [ -1.000000e+00, %3023 ], [ %3090, %3089 ]
  %3103 = phi i32 [ 0, %3023 ], [ %3086, %3089 ]
  %3104 = call float @dx.op.binary.f32(i32 36, float %3101, float %3102)  ; FMin(a,b)
  %3105 = call float @dx.op.binary.f32(i32 36, float %3100, float %3104)  ; FMin(a,b)
  %3106 = call float @dx.op.binary.f32(i32 35, float %3100, float %3101)  ; FMax(a,b)
  %3107 = call float @dx.op.binary.f32(i32 36, float %3106, float %3102)  ; FMin(a,b)
  %3108 = call float @dx.op.binary.f32(i32 36, float %3100, float %3101)  ; FMin(a,b)
  %3109 = call float @dx.op.binary.f32(i32 35, float %3108, float %3107)  ; FMax(a,b)
  %3110 = call float @dx.op.binary.f32(i32 35, float %3101, float %3102)  ; FMax(a,b)
  %3111 = call float @dx.op.binary.f32(i32 35, float %3100, float %3110)  ; FMax(a,b)
  store float %3105, float* %3028, align 4, !tbaa !100, !alias.scope !124, !noalias !125
  store float %3109, float* %3029, align 4, !tbaa !100, !alias.scope !122, !noalias !123
  store float %3111, float* %3030, align 4, !tbaa !100, !alias.scope !116, !noalias !119
  %3112 = call float @dx.op.binary.f32(i32 36, float %3098, float %3099)  ; FMin(a,b)
  %3113 = call float @dx.op.binary.f32(i32 36, float %3097, float %3112)  ; FMin(a,b)
  %3114 = call float @dx.op.binary.f32(i32 35, float %3097, float %3098)  ; FMax(a,b)
  %3115 = call float @dx.op.binary.f32(i32 36, float %3114, float %3099)  ; FMin(a,b)
  %3116 = call float @dx.op.binary.f32(i32 36, float %3097, float %3098)  ; FMin(a,b)
  %3117 = call float @dx.op.binary.f32(i32 35, float %3116, float %3115)  ; FMax(a,b)
  %3118 = call float @dx.op.binary.f32(i32 35, float %3098, float %3099)  ; FMax(a,b)
  %3119 = call float @dx.op.binary.f32(i32 35, float %3097, float %3118)  ; FMax(a,b)
  store float %3113, float* %3031, align 4, !tbaa !100, !alias.scope !134, !noalias !135
  store float %3117, float* %3032, align 4, !tbaa !100, !alias.scope !132, !noalias !133
  store float %3119, float* %3033, align 4, !tbaa !100, !alias.scope !126, !noalias !129
  %3120 = sub nsw i32 3, %3103
  %3121 = icmp sgt i32 %3120, 2
  br i1 %3121, label %3122, label %3160, !dx.controlflow.hints !136

; <label>:3122                                    ; preds = %3096
  %3123 = icmp eq i32 %2891, 0
  %3124 = fsub fast float %2941, %3025
  %3125 = select i1 %3123, float %3124, float %3025
  %3126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %3127 = extractvalue %dx.types.CBufRet.f32 %3126, 0
  %3128 = extractvalue %dx.types.CBufRet.f32 %3126, 1
  %3129 = extractvalue %dx.types.CBufRet.f32 %3126, 2
  %3130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %3131 = extractvalue %dx.types.CBufRet.f32 %3130, 0
  %3132 = extractvalue %dx.types.CBufRet.f32 %3130, 1
  %3133 = extractvalue %dx.types.CBufRet.f32 %3130, 2
  %3134 = extractvalue %dx.types.CBufRet.f32 %3130, 3
  %3135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %3136 = extractvalue %dx.types.CBufRet.f32 %3135, 3
  %3137 = call float @dx.op.binary.f32(i32 36, float %3026, float %3136)  ; FMin(a,b)
  %3138 = fmul fast float %3134, %3125
  %3139 = call float @dx.op.unary.f32(i32 7, float %3138)  ; Saturate(value)
  %3140 = fsub fast float %3131, %3127
  %3141 = fsub fast float %3132, %3128
  %3142 = fsub fast float %3133, %3129
  %3143 = fmul fast float %3139, %3140
  %3144 = fmul fast float %3139, %3141
  %3145 = fmul fast float %3139, %3142
  %3146 = fadd fast float %3143, %3127
  %3147 = fadd fast float %3144, %3128
  %3148 = fadd fast float %3145, %3129
  %3149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %3150 = extractvalue %dx.types.CBufRet.f32 %3149, 0
  %3151 = extractvalue %dx.types.CBufRet.f32 %3149, 1
  %3152 = fadd fast float %3151, %3150
  %3153 = call float @dx.op.unary.f32(i32 7, float %3152)  ; Saturate(value)
  %3154 = extractvalue %dx.types.CBufRet.f32 %3149, 2
  %3155 = extractvalue %dx.types.CBufRet.f32 %3149, 3
  %3156 = fadd fast float %3155, %3154
  %3157 = call float @dx.op.unary.f32(i32 7, float %3156)  ; Saturate(value)
  %3158 = fmul fast float %3153, %3137
  %3159 = fmul fast float %3158, %3157
  br label %3242

; <label>:3160                                    ; preds = %3096
  %3161 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 %3120
  %3162 = load float, float* %3161, align 4, !tbaa !100, !noalias !104
  %3163 = fcmp fast olt float %3162, %3027
  %3164 = icmp sgt i32 %3103, 0
  %3165 = and i1 %3164, %3163
  br i1 %3165, label %3166, label %3203

; <label>:3166                                    ; preds = %3160
  br label %3167

; <label>:3167                                    ; preds = %3196, %3166
  %3168 = phi float [ %3197, %3196 ], [ %3025, %3166 ]
  %3169 = phi float [ %3198, %3196 ], [ %3026, %3166 ]
  %3170 = phi float [ %3178, %3196 ], [ %3162, %3166 ]
  %3171 = phi i32 [ %3175, %3196 ], [ %3120, %3166 ]
  %3172 = getelementptr inbounds [3 x float], [3 x float]* %33, i32 0, i32 %3171
  %3173 = load float, float* %3172, align 4, !tbaa !100, !noalias !104
  %3174 = icmp slt i32 %3171, 2
  %3175 = add nsw i32 %3171, 1
  %3176 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 %3175
  %3177 = load float, float* %3176, align 4, !tbaa !100, !noalias !104
  %3178 = select i1 %3174, float %3177, float %2941
  %3179 = call float @dx.op.binary.f32(i32 36, float %3178, float %3173)  ; FMin(a,b)
  %3180 = call float @dx.op.binary.f32(i32 36, float %3027, float %3179)  ; FMin(a,b)
  %3181 = icmp eq i32 %2891, 0
  %3182 = fadd fast float %3180, %3170
  %3183 = fmul fast float %3182, %2872
  %3184 = fadd fast float %3183, %2885
  br i1 %3181, label %3190, label %3185, !dx.controlflow.hints !137

; <label>:3185                                    ; preds = %3167
  %3186 = fsub fast float %3180, %3170
  %3187 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3186)  ; FMax(a,b)
  %3188 = fmul fast float %3187, %3184
  %3189 = fadd fast float %3188, %3169
  br label %3196

; <label>:3190                                    ; preds = %3167
  %3191 = fsub fast float %3170, %3180
  %3192 = call float @dx.op.unary.f32(i32 6, float %3191)  ; FAbs(value)
  %3193 = fadd fast float %3192, %3168
  %3194 = fmul fast float %3192, %3184
  %3195 = fsub fast float %3169, %3194
  br label %3196

; <label>:3196                                    ; preds = %3190, %3185
  %3197 = phi float [ %3187, %3185 ], [ %3193, %3190 ]
  %3198 = phi float [ %3189, %3185 ], [ %3195, %3190 ]
  %3199 = fcmp fast olt float %3178, %3027
  %3200 = icmp slt i32 %3175, 3
  %3201 = and i1 %3200, %3199
  br i1 %3201, label %3167, label %3202

; <label>:3202                                    ; preds = %3196
  br label %3203

; <label>:3203                                    ; preds = %3202, %3160
  %3204 = phi float [ %3025, %3160 ], [ %3197, %3202 ]
  %3205 = phi float [ %3026, %3160 ], [ %3198, %3202 ]
  %3206 = fsub fast float %2941, %3204
  %3207 = select i1 %2943, float %3204, float %3206
  %3208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %3209 = extractvalue %dx.types.CBufRet.f32 %3208, 0
  %3210 = extractvalue %dx.types.CBufRet.f32 %3208, 1
  %3211 = extractvalue %dx.types.CBufRet.f32 %3208, 2
  %3212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %3213 = extractvalue %dx.types.CBufRet.f32 %3212, 0
  %3214 = extractvalue %dx.types.CBufRet.f32 %3212, 1
  %3215 = extractvalue %dx.types.CBufRet.f32 %3212, 2
  %3216 = extractvalue %dx.types.CBufRet.f32 %3212, 3
  %3217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %3218 = extractvalue %dx.types.CBufRet.f32 %3217, 3
  %3219 = call float @dx.op.binary.f32(i32 36, float %3205, float %3218)  ; FMin(a,b)
  %3220 = fmul fast float %3216, %3207
  %3221 = call float @dx.op.unary.f32(i32 7, float %3220)  ; Saturate(value)
  %3222 = fsub fast float %3213, %3209
  %3223 = fsub fast float %3214, %3210
  %3224 = fsub fast float %3215, %3211
  %3225 = fmul fast float %3221, %3222
  %3226 = fmul fast float %3221, %3223
  %3227 = fmul fast float %3221, %3224
  %3228 = fadd fast float %3225, %3209
  %3229 = fadd fast float %3226, %3210
  %3230 = fadd fast float %3227, %3211
  %3231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %3232 = extractvalue %dx.types.CBufRet.f32 %3231, 0
  %3233 = extractvalue %dx.types.CBufRet.f32 %3231, 1
  %3234 = fadd fast float %3233, %3232
  %3235 = call float @dx.op.unary.f32(i32 7, float %3234)  ; Saturate(value)
  %3236 = extractvalue %dx.types.CBufRet.f32 %3231, 2
  %3237 = extractvalue %dx.types.CBufRet.f32 %3231, 3
  %3238 = fadd fast float %3237, %3236
  %3239 = call float @dx.op.unary.f32(i32 7, float %3238)  ; Saturate(value)
  %3240 = fmul fast float %3235, %3219
  %3241 = fmul fast float %3240, %3239
  br label %3242

; <label>:3242                                    ; preds = %3203, %3122, %2957, %2939, %2937
  %3243 = phi float [ %2966, %2957 ], [ %3125, %3122 ], [ %3207, %3203 ], [ 0.000000e+00, %2937 ], [ 0.000000e+00, %2939 ]
  %3244 = phi float [ %3000, %2957 ], [ %3159, %3122 ], [ %3241, %3203 ], [ 0.000000e+00, %2937 ], [ 0.000000e+00, %2939 ]
  %3245 = phi float [ %2987, %2957 ], [ %3146, %3122 ], [ %3228, %3203 ], [ 0.000000e+00, %2937 ], [ 0.000000e+00, %2939 ]
  %3246 = phi float [ %2988, %2957 ], [ %3147, %3122 ], [ %3229, %3203 ], [ 0.000000e+00, %2937 ], [ 0.000000e+00, %2939 ]
  %3247 = phi float [ %2989, %2957 ], [ %3148, %3122 ], [ %3230, %3203 ], [ 0.000000e+00, %2937 ], [ 0.000000e+00, %2939 ]
  %3248 = fmul fast float %2880, %3244
  %3249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3250 = extractvalue %dx.types.CBufRet.f32 %3249, 2
  %3251 = fsub fast float %2887, %3250
  %3252 = fcmp fast olt float %3248, -2.000000e+01
  %3253 = call float @dx.op.unary.f32(i32 21, float %3248)  ; Exp(value)
  %3254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %3255 = extractvalue %dx.types.CBufRet.f32 %3254, 2
  %3256 = extractvalue %dx.types.CBufRet.f32 %3254, 3
  %3257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %3258 = extractvalue %dx.types.CBufRet.f32 %3257, 2
  %3259 = fmul fast float %3256, %3251
  %3260 = call float @dx.op.unary.f32(i32 7, float %3259)  ; Saturate(value)
  %3261 = fsub fast float 1.000000e+00, %3260
  %3262 = fmul fast float %2872, 5.000000e-01
  %3263 = fadd fast float %3262, 5.000000e-01
  %3264 = call float @dx.op.unary.f32(i32 7, float %3263)  ; Saturate(value)
  %3265 = fsub fast float 1.000000e+00, %3264
  %3266 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %3261)  ; FMax(a,b)
  %3267 = fdiv fast float %3265, %3266
  %3268 = fsub fast float %3251, %2838
  %3269 = call float @dx.op.unary.f32(i32 6, float %3268)  ; FAbs(value)
  %3270 = fmul fast float %3269, %3255
  %3271 = call float @dx.op.unary.f32(i32 7, float %3267)  ; Saturate(value)
  %3272 = fsub fast float 1.000000e+00, %3270
  %3273 = fmul fast float %3272, %3271
  %3274 = fadd fast float %3273, %3270
  %3275 = fmul fast float %3258, %3251
  %3276 = call float @dx.op.unary.f32(i32 7, float %3275)  ; Saturate(value)
  %3277 = fsub fast float 1.000000e+00, %3274
  %3278 = fmul fast float %3277, %3276
  %3279 = fadd fast float %3278, %3274
  %3280 = call float @dx.op.unary.f32(i32 7, float %3279)  ; Saturate(value)
  %3281 = fadd fast float %3253, -1.000000e+00
  %3282 = select i1 %3252, float -1.000000e+00, float %3281
  %3283 = fmul fast float %3280, %3282
  %3284 = fadd fast float %3283, 1.000000e+00
  %3285 = fsub fast float -0.000000e+00, %3283
  %3286 = fmul fast float %3245, %3285
  %3287 = fmul fast float %3246, %3285
  %3288 = fmul fast float %3247, %3285
  br label %3289

; <label>:3289                                    ; preds = %3242, %2791
  %3290 = phi float [ %3243, %3242 ], [ 0.000000e+00, %2791 ]
  %3291 = phi float [ %3284, %3242 ], [ 1.000000e+00, %2791 ]
  %3292 = phi float [ %3286, %3242 ], [ 0.000000e+00, %2791 ]
  %3293 = phi float [ %3287, %3242 ], [ 0.000000e+00, %2791 ]
  %3294 = phi float [ %3288, %3242 ], [ 0.000000e+00, %2791 ]
  %3295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %3296 = extractvalue %dx.types.CBufRet.f32 %3295, 1
  %3297 = fsub fast float 1.000000e+00, %3291
  %3298 = fmul fast float %3297, %2873
  %3299 = fmul fast float %3298, %3296
  %3300 = fsub fast float %2873, %3299
  br i1 %2866, label %3301, label %3330, !dx.controlflow.hints !138

; <label>:3301                                    ; preds = %3289
  %3302 = fmul fast float %2874, %2863
  %3303 = fadd fast float %3302, %2864
  %3304 = call float @dx.op.unary.f32(i32 7, float %3303)  ; Saturate(value)
  %3305 = fmul fast float %2845, %3300
  %3306 = fsub fast float -0.000000e+00, %3305
  %3307 = fmul fast float %2846, %3300
  %3308 = fsub fast float -0.000000e+00, %3307
  %3309 = call float @dx.op.unary.f32(i32 21, float %3306)  ; Exp(value)
  %3310 = call float @dx.op.unary.f32(i32 21, float %3308)  ; Exp(value)
  %3311 = call float @dx.op.binary.f32(i32 35, float %2853, float %3309)  ; FMax(a,b)
  %3312 = call float @dx.op.binary.f32(i32 35, float %2853, float %3310)  ; FMax(a,b)
  %3313 = fsub fast float %3312, %3311
  %3314 = fmul fast float %3313, %3304
  %3315 = fadd fast float %3314, %3311
  %3316 = call float @dx.op.unary.f32(i32 7, float %3315)  ; Saturate(value)
  %3317 = fsub fast float %2850, %2855
  %3318 = fsub fast float %2851, %2856
  %3319 = fsub fast float %2852, %2857
  %3320 = fmul fast float %3304, %3317
  %3321 = fmul fast float %3304, %3318
  %3322 = fmul fast float %3304, %3319
  %3323 = fadd fast float %3320, %2855
  %3324 = fadd fast float %3321, %2856
  %3325 = fadd fast float %3322, %2857
  %3326 = fsub fast float 1.000000e+00, %3316
  %3327 = fmul fast float %3326, %3323
  %3328 = fmul fast float %3326, %3324
  %3329 = fmul fast float %3326, %3325
  br label %3389

; <label>:3330                                    ; preds = %3289
  %3331 = fmul fast float %3300, %2862
  %3332 = call float @dx.op.unary.f32(i32 7, float %3331)  ; Saturate(value)
  %3333 = fsub fast float 2.000000e+00, %3332
  %3334 = fmul fast float %3332, 9.921875e-01
  %3335 = fmul fast float %3334, %3333
  %3336 = fadd fast float %3335, 3.906250e-03
  %3337 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %26, float %3336, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3338 = extractvalue %dx.types.ResRet.f32 %3337, 0
  %3339 = fsub fast float %3332, %3338
  %3340 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3339)  ; FMax(a,b)
  %3341 = fmul fast float %2848, %2838
  %3342 = call float @dx.op.unary.f32(i32 6, float %3341)  ; FAbs(value)
  %3343 = fcmp fast ogt float %3342, 0x3EB0C6F7A0000000
  br i1 %3343, label %3344, label %3350, !dx.controlflow.hints !139

; <label>:3344                                    ; preds = %3330
  %3345 = fmul fast float %3341, 0xBFF7154760000000
  %3346 = call float @dx.op.unary.f32(i32 21, float %3345)  ; Exp(value)
  %3347 = fsub fast float 1.000000e+00, %3346
  %3348 = fdiv fast float %3347, %3341
  %3349 = fmul fast float %3348, %2858
  br label %3350

; <label>:3350                                    ; preds = %3344, %3330
  %3351 = phi float [ %3349, %3344 ], [ %2858, %3330 ]
  %3352 = fadd fast float %3351, %2860
  %3353 = fmul fast float %3352, %3340
  %3354 = fmul fast float %2845, %3353
  %3355 = fsub fast float -0.000000e+00, %3354
  %3356 = fmul fast float %2846, %3353
  %3357 = fsub fast float -0.000000e+00, %3356
  %3358 = fmul fast float %2847, %3353
  %3359 = fsub fast float -0.000000e+00, %3358
  %3360 = call float @dx.op.unary.f32(i32 21, float %3355)  ; Exp(value)
  %3361 = call float @dx.op.unary.f32(i32 21, float %3357)  ; Exp(value)
  %3362 = call float @dx.op.unary.f32(i32 21, float %3359)  ; Exp(value)
  %3363 = fmul fast float %2874, %2874
  %3364 = fadd fast float %3363, 1.000000e+00
  %3365 = fmul fast float %3364, 0x3FAE8EC8A0000000
  %3366 = fmul fast float %3365, %2855
  %3367 = fmul fast float %3365, %2856
  %3368 = fmul fast float %3365, %2857
  %3369 = fmul fast float %2874, %2853
  %3370 = fsub fast float 1.000000e+00, %3369
  %3371 = fmul fast float %2853, %2853
  %3372 = fsub fast float 1.000000e+00, %3371
  %3373 = fmul fast float %3372, 0x3FB45F3060000000
  %3374 = fmul fast float %3370, %3370
  %3375 = fdiv fast float 1.000000e+00, %3374
  %3376 = fmul fast float %3373, %3375
  %3377 = fmul fast float %3376, %2850
  %3378 = fmul fast float %3376, %2851
  %3379 = fmul fast float %3376, %2852
  %3380 = fadd fast float %3377, %3366
  %3381 = fadd fast float %3378, %3367
  %3382 = fadd fast float %3379, %3368
  %3383 = fsub fast float 1.000000e+00, %3360
  %3384 = fsub fast float 1.000000e+00, %3361
  %3385 = fsub fast float 1.000000e+00, %3362
  %3386 = fmul fast float %3380, %3383
  %3387 = fmul fast float %3381, %3384
  %3388 = fmul fast float %3382, %3385
  br label %3389

; <label>:3389                                    ; preds = %3350, %3301
  %3390 = phi float [ %3327, %3301 ], [ %3386, %3350 ]
  %3391 = phi float [ %3328, %3301 ], [ %3387, %3350 ]
  %3392 = phi float [ %3329, %3301 ], [ %3388, %3350 ]
  %3393 = phi float [ %3316, %3301 ], [ %3360, %3350 ]
  %3394 = phi float [ %3316, %3301 ], [ %3361, %3350 ]
  %3395 = phi float [ %3316, %3301 ], [ %3362, %3350 ]
  br i1 %2882, label %3396, label %3594, !dx.controlflow.hints !140

; <label>:3396                                    ; preds = %3389
  %3397 = extractvalue %dx.types.CBufRet.f32 %3295, 0
  %3398 = fmul fast float %3397, %3297
  %3399 = fsub fast float %3292, %3390
  %3400 = fsub fast float %3293, %3391
  %3401 = fsub fast float %3294, %3392
  %3402 = fmul fast float %3398, %3399
  %3403 = fmul fast float %3398, %3400
  %3404 = fmul fast float %3398, %3401
  %3405 = fadd fast float %3402, %3390
  %3406 = fadd fast float %3403, %3391
  %3407 = fadd fast float %3404, %3392
  %3408 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3393)  ; FMax(a,b)
  %3409 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3394)  ; FMax(a,b)
  %3410 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3395)  ; FMax(a,b)
  %3411 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3291)  ; FMax(a,b)
  %3412 = call float @dx.op.binary.f32(i32 35, float %3290, float %3300)  ; FMax(a,b)
  %3413 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %3412)  ; FMax(a,b)
  %3414 = fdiv fast float %3290, %3413
  %3415 = call float @dx.op.unary.f32(i32 7, float %3414)  ; Saturate(value)
  %3416 = fdiv fast float %3300, %3413
  %3417 = call float @dx.op.unary.f32(i32 7, float %3416)  ; Saturate(value)
  %3418 = fcmp fast une float %3411, 1.000000e+00
  br i1 %3418, label %3419, label %3432, !dx.controlflow.hints !141

; <label>:3419                                    ; preds = %3396
  %3420 = call float @dx.op.unary.f32(i32 23, float %3411)  ; Log(value)
  %3421 = fmul fast float %3420, 0x3FE62E4300000000
  %3422 = fmul fast float %3292, %3421
  %3423 = fsub fast float -0.000000e+00, %3422
  %3424 = fmul fast float %3293, %3421
  %3425 = fsub fast float -0.000000e+00, %3424
  %3426 = fmul fast float %3294, %3421
  %3427 = fsub fast float -0.000000e+00, %3426
  %3428 = fsub fast float 1.000000e+00, %3411
  %3429 = fdiv fast float %3423, %3428
  %3430 = fdiv fast float %3425, %3428
  %3431 = fdiv fast float %3427, %3428
  br label %3432

; <label>:3432                                    ; preds = %3419, %3396
  %3433 = phi float [ %3429, %3419 ], [ %3292, %3396 ]
  %3434 = phi float [ %3430, %3419 ], [ %3293, %3396 ]
  %3435 = phi float [ %3431, %3419 ], [ %3294, %3396 ]
  %3436 = phi float [ %3421, %3419 ], [ 0.000000e+00, %3396 ]
  %3437 = fcmp fast une float %3408, 1.000000e+00
  br i1 %3437, label %3438, label %3445, !dx.controlflow.hints !142

; <label>:3438                                    ; preds = %3432
  %3439 = call float @dx.op.unary.f32(i32 23, float %3408)  ; Log(value)
  %3440 = fmul fast float %3439, 0x3FE62E4300000000
  %3441 = fmul fast float %3405, %3440
  %3442 = fsub fast float -0.000000e+00, %3441
  %3443 = fsub fast float 1.000000e+00, %3408
  %3444 = fdiv fast float %3442, %3443
  br label %3445

; <label>:3445                                    ; preds = %3438, %3432
  %3446 = phi float [ %3444, %3438 ], [ %3405, %3432 ]
  %3447 = phi float [ %3440, %3438 ], [ 0.000000e+00, %3432 ]
  %3448 = fcmp fast une float %3409, 1.000000e+00
  br i1 %3448, label %3449, label %3456, !dx.controlflow.hints !142

; <label>:3449                                    ; preds = %3445
  %3450 = call float @dx.op.unary.f32(i32 23, float %3409)  ; Log(value)
  %3451 = fmul fast float %3450, 0x3FE62E4300000000
  %3452 = fmul fast float %3406, %3451
  %3453 = fsub fast float -0.000000e+00, %3452
  %3454 = fsub fast float 1.000000e+00, %3409
  %3455 = fdiv fast float %3453, %3454
  br label %3456

; <label>:3456                                    ; preds = %3449, %3445
  %3457 = phi float [ %3455, %3449 ], [ %3406, %3445 ]
  %3458 = phi float [ %3451, %3449 ], [ 0.000000e+00, %3445 ]
  %3459 = fcmp fast une float %3410, 1.000000e+00
  br i1 %3459, label %3460, label %3467, !dx.controlflow.hints !142

; <label>:3460                                    ; preds = %3456
  %3461 = call float @dx.op.unary.f32(i32 23, float %3410)  ; Log(value)
  %3462 = fmul fast float %3461, 0x3FE62E4300000000
  %3463 = fmul fast float %3407, %3462
  %3464 = fsub fast float -0.000000e+00, %3463
  %3465 = fsub fast float 1.000000e+00, %3410
  %3466 = fdiv fast float %3464, %3465
  br label %3467

; <label>:3467                                    ; preds = %3460, %3456
  %3468 = phi float [ %3466, %3460 ], [ %3407, %3456 ]
  %3469 = phi float [ %3462, %3460 ], [ 0.000000e+00, %3456 ]
  %3470 = fmul fast float %3433, %3417
  %3471 = fmul fast float %3434, %3417
  %3472 = fmul fast float %3435, %3417
  %3473 = fmul fast float %3436, %3417
  %3474 = fmul fast float %3446, %3415
  %3475 = fmul fast float %3457, %3415
  %3476 = fmul fast float %3468, %3415
  %3477 = fmul fast float %3447, %3415
  %3478 = fmul fast float %3458, %3415
  %3479 = fmul fast float %3469, %3415
  %3480 = fadd fast float %3474, %3470
  %3481 = fadd fast float %3475, %3471
  %3482 = fadd fast float %3476, %3472
  %3483 = fadd fast float %3477, %3473
  %3484 = fadd fast float %3478, %3473
  %3485 = fadd fast float %3479, %3473
  %3486 = fcmp fast une float %3483, 0.000000e+00
  br i1 %3486, label %3487, label %3494, !dx.controlflow.hints !143

; <label>:3487                                    ; preds = %3467
  %3488 = fmul fast float %3483, 0x3FF7154760000000
  %3489 = call float @dx.op.unary.f32(i32 21, float %3488)  ; Exp(value)
  %3490 = fsub fast float 1.000000e+00, %3489
  %3491 = fmul fast float %3480, %3490
  %3492 = fsub fast float -0.000000e+00, %3491
  %3493 = fdiv fast float %3492, %3483
  br label %3494

; <label>:3494                                    ; preds = %3487, %3467
  %3495 = phi float [ %3489, %3487 ], [ 1.000000e+00, %3467 ]
  %3496 = phi float [ %3493, %3487 ], [ %3480, %3467 ]
  %3497 = fcmp fast une float %3484, 0.000000e+00
  br i1 %3497, label %3498, label %3505, !dx.controlflow.hints !143

; <label>:3498                                    ; preds = %3494
  %3499 = fmul fast float %3484, 0x3FF7154760000000
  %3500 = call float @dx.op.unary.f32(i32 21, float %3499)  ; Exp(value)
  %3501 = fsub fast float 1.000000e+00, %3500
  %3502 = fmul fast float %3481, %3501
  %3503 = fsub fast float -0.000000e+00, %3502
  %3504 = fdiv fast float %3503, %3484
  br label %3505

; <label>:3505                                    ; preds = %3498, %3494
  %3506 = phi float [ %3500, %3498 ], [ 1.000000e+00, %3494 ]
  %3507 = phi float [ %3504, %3498 ], [ %3481, %3494 ]
  %3508 = fcmp fast une float %3485, 0.000000e+00
  br i1 %3508, label %3509, label %3516, !dx.controlflow.hints !143

; <label>:3509                                    ; preds = %3505
  %3510 = fmul fast float %3485, 0x3FF7154760000000
  %3511 = call float @dx.op.unary.f32(i32 21, float %3510)  ; Exp(value)
  %3512 = fsub fast float 1.000000e+00, %3511
  %3513 = fmul fast float %3482, %3512
  %3514 = fsub fast float -0.000000e+00, %3513
  %3515 = fdiv fast float %3514, %3485
  br label %3516

; <label>:3516                                    ; preds = %3509, %3505
  %3517 = phi float [ %3511, %3509 ], [ 1.000000e+00, %3505 ]
  %3518 = phi float [ %3515, %3509 ], [ %3482, %3505 ]
  %3519 = fcmp fast ogt float %3415, %3417
  br i1 %3519, label %3520, label %3540, !dx.controlflow.hints !144

; <label>:3520                                    ; preds = %3516
  %3521 = fsub fast float 1.000000e+00, %3417
  %3522 = fmul fast float %3433, %3521
  %3523 = fmul fast float %3434, %3521
  %3524 = fmul fast float %3435, %3521
  %3525 = fmul fast float %3436, %3521
  %3526 = fcmp fast une float %3525, 0.000000e+00
  br i1 %3526, label %3527, label %3578, !dx.controlflow.hints !145

; <label>:3527                                    ; preds = %3520
  %3528 = fmul fast float %3525, 0x3FF7154760000000
  %3529 = call float @dx.op.unary.f32(i32 21, float %3528)  ; Exp(value)
  %3530 = fsub fast float 1.000000e+00, %3529
  %3531 = fmul fast float %3522, %3530
  %3532 = fsub fast float -0.000000e+00, %3531
  %3533 = fmul fast float %3523, %3530
  %3534 = fsub fast float -0.000000e+00, %3533
  %3535 = fmul fast float %3524, %3530
  %3536 = fsub fast float -0.000000e+00, %3535
  %3537 = fdiv fast float %3532, %3525
  %3538 = fdiv fast float %3534, %3525
  %3539 = fdiv fast float %3536, %3525
  br label %3578

; <label>:3540                                    ; preds = %3516
  %3541 = fsub fast float 1.000000e+00, %3415
  %3542 = fmul fast float %3446, %3541
  %3543 = fmul fast float %3457, %3541
  %3544 = fmul fast float %3468, %3541
  %3545 = fmul fast float %3447, %3541
  %3546 = fmul fast float %3458, %3541
  %3547 = fmul fast float %3469, %3541
  %3548 = fcmp fast une float %3545, 0.000000e+00
  br i1 %3548, label %3549, label %3556, !dx.controlflow.hints !143

; <label>:3549                                    ; preds = %3540
  %3550 = fmul fast float %3545, 0x3FF7154760000000
  %3551 = call float @dx.op.unary.f32(i32 21, float %3550)  ; Exp(value)
  %3552 = fsub fast float 1.000000e+00, %3551
  %3553 = fmul fast float %3542, %3552
  %3554 = fsub fast float -0.000000e+00, %3553
  %3555 = fdiv fast float %3554, %3545
  br label %3556

; <label>:3556                                    ; preds = %3549, %3540
  %3557 = phi float [ %3555, %3549 ], [ %3542, %3540 ]
  %3558 = phi float [ %3551, %3549 ], [ 1.000000e+00, %3540 ]
  %3559 = fcmp fast une float %3546, 0.000000e+00
  br i1 %3559, label %3560, label %3567, !dx.controlflow.hints !143

; <label>:3560                                    ; preds = %3556
  %3561 = fmul fast float %3546, 0x3FF7154760000000
  %3562 = call float @dx.op.unary.f32(i32 21, float %3561)  ; Exp(value)
  %3563 = fsub fast float 1.000000e+00, %3562
  %3564 = fmul fast float %3543, %3563
  %3565 = fsub fast float -0.000000e+00, %3564
  %3566 = fdiv fast float %3565, %3546
  br label %3567

; <label>:3567                                    ; preds = %3560, %3556
  %3568 = phi float [ %3566, %3560 ], [ %3543, %3556 ]
  %3569 = phi float [ %3562, %3560 ], [ 1.000000e+00, %3556 ]
  %3570 = fcmp fast une float %3547, 0.000000e+00
  br i1 %3570, label %3571, label %3578, !dx.controlflow.hints !143

; <label>:3571                                    ; preds = %3567
  %3572 = fmul fast float %3547, 0x3FF7154760000000
  %3573 = call float @dx.op.unary.f32(i32 21, float %3572)  ; Exp(value)
  %3574 = fsub fast float 1.000000e+00, %3573
  %3575 = fmul fast float %3544, %3574
  %3576 = fsub fast float -0.000000e+00, %3575
  %3577 = fdiv fast float %3576, %3547
  br label %3578

; <label>:3578                                    ; preds = %3571, %3567, %3527, %3520
  %3579 = phi float [ %3577, %3571 ], [ %3539, %3527 ], [ %3524, %3520 ], [ %3544, %3567 ]
  %3580 = phi float [ %3568, %3571 ], [ %3538, %3527 ], [ %3523, %3520 ], [ %3568, %3567 ]
  %3581 = phi float [ %3557, %3571 ], [ %3537, %3527 ], [ %3522, %3520 ], [ %3557, %3567 ]
  %3582 = phi float [ %3573, %3571 ], [ %3529, %3527 ], [ 1.000000e+00, %3520 ], [ 1.000000e+00, %3567 ]
  %3583 = phi float [ %3569, %3571 ], [ %3529, %3527 ], [ 1.000000e+00, %3520 ], [ %3569, %3567 ]
  %3584 = phi float [ %3558, %3571 ], [ %3529, %3527 ], [ 1.000000e+00, %3520 ], [ %3558, %3567 ]
  %3585 = fmul fast float %3584, %3496
  %3586 = fmul fast float %3583, %3507
  %3587 = fmul fast float %3582, %3518
  %3588 = fadd fast float %3585, %3581
  %3589 = fadd fast float %3586, %3580
  %3590 = fadd fast float %3587, %3579
  %3591 = fmul fast float %3584, %3495
  %3592 = fmul fast float %3583, %3506
  %3593 = fmul fast float %3582, %3517
  br label %3594

; <label>:3594                                    ; preds = %3578, %3389
  %3595 = phi float [ %3395, %3389 ], [ %3593, %3578 ]
  %3596 = phi float [ %3394, %3389 ], [ %3592, %3578 ]
  %3597 = phi float [ %3393, %3389 ], [ %3591, %3578 ]
  %3598 = phi float [ %3392, %3389 ], [ %3590, %3578 ]
  %3599 = phi float [ %3391, %3389 ], [ %3589, %3578 ]
  %3600 = phi float [ %3390, %3389 ], [ %3588, %3578 ]
  %3601 = fmul fast float %3597, %2738
  %3602 = fmul fast float %3596, %2739
  %3603 = fmul fast float %3595, %2740
  %3604 = fsub fast float 1.000000e+00, %2801
  %3605 = fmul fast float %3600, %3604
  %3606 = fmul fast float %3599, %3604
  %3607 = fmul fast float %3598, %3604
  %3608 = fadd fast float %3605, %3601
  %3609 = fadd fast float %3606, %3602
  %3610 = fadd fast float %3607, %3603
  %3611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %3612 = extractvalue %dx.types.CBufRet.f32 %3611, 2
  %3613 = fmul fast float %3612, %2811
  %3614 = call float @dx.op.unary.f32(i32 7, float %3613)  ; Saturate(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %30, i32 %31, i32 undef, float %2801, float %2801, float %2801, float %2801, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %3615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3616 = extractvalue %dx.types.CBufRet.f32 %3615, 0
  %3617 = fmul fast float %3616, %3608
  %3618 = fmul fast float %3616, %3609
  %3619 = fmul fast float %3616, %3610
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %30, i32 %31, i32 undef, float %3617, float %3618, float %3619, float %3617, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %30, i32 %31, i32 undef, float %3614, float %3614, float %3614, float %3614, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 27, i32 1, i32 2, i32 0, !7}
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
!42 = !{void ()* @cs_fog_raymarching_clouds_particles_brfog, !"cs_fog_raymarching_clouds_particles_brfog", null, !4, !43}
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
!53 = distinct !{!53, !54}
!54 = !{!"llvm.loop.unroll.disable"}
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
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 1}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 2}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 2}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 2}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 2}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 1}
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
!91 = distinct !{!91, !"dx.controlflow.hints", i32 1}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 2}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 2}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 2}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 2}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 2}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 2}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 2}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 2}
!100 = !{!101, !101, i64 0}
!101 = !{!"float", !102, i64 0}
!102 = !{!"omnipotent char", !103, i64 0}
!103 = !{!"Simple C/C++ TBAA"}
!104 = !{!105, !107, !109, !110, !112, !113, !114}
!105 = distinct !{!105, !106, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!106 = distinct !{!106, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!107 = distinct !{!107, !108, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!108 = distinct !{!108, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!109 = distinct !{!109, !108, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!110 = distinct !{!110, !111, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %scattering"}
!111 = distinct !{!111, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z"}
!112 = distinct !{!112, !111, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %transmission"}
!113 = distinct !{!113, !111, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %depthDensityWeighted"}
!114 = distinct !{!114, !111, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %rawShadowmapData"}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 2}
!116 = !{!117}
!117 = distinct !{!117, !118, !"\01?sort@@YAXAIAM00@Z: %c"}
!118 = distinct !{!118, !"\01?sort@@YAXAIAM00@Z"}
!119 = !{!120, !121, !105, !107, !109, !110, !112, !113, !114}
!120 = distinct !{!120, !118, !"\01?sort@@YAXAIAM00@Z: %a"}
!121 = distinct !{!121, !118, !"\01?sort@@YAXAIAM00@Z: %b"}
!122 = !{!121}
!123 = !{!120, !117, !105, !107, !109, !110, !112, !113, !114}
!124 = !{!120}
!125 = !{!121, !117, !105, !107, !109, !110, !112, !113, !114}
!126 = !{!127}
!127 = distinct !{!127, !128, !"\01?sort@@YAXAIAM00@Z: %c"}
!128 = distinct !{!128, !"\01?sort@@YAXAIAM00@Z"}
!129 = !{!130, !131, !105, !107, !109, !110, !112, !113, !114}
!130 = distinct !{!130, !128, !"\01?sort@@YAXAIAM00@Z: %a"}
!131 = distinct !{!131, !128, !"\01?sort@@YAXAIAM00@Z: %b"}
!132 = !{!131}
!133 = !{!130, !127, !105, !107, !109, !110, !112, !113, !114}
!134 = !{!130}
!135 = !{!131, !127, !105, !107, !109, !110, !112, !113, !114}
!136 = distinct !{!136, !"dx.controlflow.hints", i32 2}
!137 = distinct !{!137, !"dx.controlflow.hints", i32 2}
!138 = distinct !{!138, !"dx.controlflow.hints", i32 1}
!139 = distinct !{!139, !"dx.controlflow.hints", i32 2}
!140 = distinct !{!140, !"dx.controlflow.hints", i32 1}
!141 = distinct !{!141, !"dx.controlflow.hints", i32 1}
!142 = distinct !{!142, !"dx.controlflow.hints", i32 1}
!143 = distinct !{!143, !"dx.controlflow.hints", i32 1}
!144 = distinct !{!144, !"dx.controlflow.hints", i32 2}
!145 = distinct !{!145, !"dx.controlflow.hints", i32 1}

