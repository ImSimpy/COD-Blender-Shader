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
; shader hash: 49ad68d52c96bef64f0c291a778d1cf8
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

define void @cs_fog_raymarching_air_clouds_particles_brfog() {
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
  %74 = fsub fast float -0.000000e+00, %73
  %75 = extractvalue %dx.types.CBufRet.f32 %72, 1
  %76 = fsub fast float -0.000000e+00, %75
  %77 = extractvalue %dx.types.CBufRet.f32 %72, 2
  %78 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %79 = extractvalue %dx.types.CBufRet.f32 %78, 1
  %80 = fmul fast float %70, 2.000000e+00
  %81 = fmul fast float %71, 2.000000e+00
  %82 = fsub fast float 1.000000e+00, %80
  %83 = fsub fast float 1.000000e+00, %81
  %84 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %85 = extractvalue %dx.types.CBufRet.f32 %84, 0
  %86 = extractvalue %dx.types.CBufRet.f32 %84, 1
  %87 = extractvalue %dx.types.CBufRet.f32 %84, 2
  %88 = fmul fast float %85, %82
  %89 = fmul fast float %86, %82
  %90 = fmul fast float %87, %82
  %91 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %92 = extractvalue %dx.types.CBufRet.f32 %91, 0
  %93 = extractvalue %dx.types.CBufRet.f32 %91, 1
  %94 = extractvalue %dx.types.CBufRet.f32 %91, 2
  %95 = fmul fast float %92, %83
  %96 = fmul fast float %93, %83
  %97 = fmul fast float %94, %83
  %98 = fadd fast float %95, %88
  %99 = fadd fast float %96, %89
  %100 = fadd fast float %97, %90
  %101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %102 = extractvalue %dx.types.CBufRet.f32 %101, 0
  %103 = extractvalue %dx.types.CBufRet.f32 %101, 1
  %104 = extractvalue %dx.types.CBufRet.f32 %101, 2
  %105 = fadd fast float %98, %102
  %106 = fadd fast float %99, %103
  %107 = fadd fast float %100, %104
  %108 = fmul fast float %105, %79
  %109 = fmul fast float %106, %79
  %110 = fmul fast float %107, %79
  %111 = fmul fast float %108, %108
  %112 = fmul fast float %109, %109
  %113 = fadd fast float %111, %112
  %114 = fmul fast float %110, %110
  %115 = fadd fast float %113, %114
  %116 = call float @dx.op.unary.f32(i32 24, float %115)  ; Sqrt(value)
  %117 = fdiv fast float 1.000000e+00, %116
  %118 = fmul fast float %108, %117
  %119 = fmul fast float %109, %117
  %120 = fmul fast float %110, %117
  %121 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %44, i32 %45, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %122 = extractvalue %dx.types.ResRet.f32 %121, 0
  %123 = fcmp fast ogt float %122, -1.000000e+00
  %124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %125 = extractvalue %dx.types.CBufRet.f32 %124, 1
  %126 = select i1 %123, float %125, float 1.000000e+00
  %127 = fadd fast float %122, 1.000000e+00
  %128 = fmul fast float %126, %127
  %129 = call float @dx.op.unary.f32(i32 6, float %128)  ; FAbs(value)
  %130 = fdiv fast float 1.000000e+00, %79
  %131 = fmul fast float %130, %116
  %132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %133 = extractvalue %dx.types.CBufRet.f32 %132, 1
  %134 = fmul fast float %133, %131
  %135 = fmul fast float %131, %129
  %136 = extractvalue %dx.types.CBufRet.f32 %124, 3
  %137 = fcmp fast oge float %129, %136
  %138 = call float @dx.op.binary.f32(i32 36, float %135, float %134)  ; FMin(a,b)
  %139 = select i1 %137, float %134, float %138
  %140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %141 = extractvalue %dx.types.CBufRet.f32 %140, 3
  %142 = fsub fast float %141, %77
  %143 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %74, float %76, float %142)  ; Dot3(ax,ay,az,bx,by,bz)
  %144 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %118, float %119, float %120)  ; Dot3(ax,ay,az,bx,by,bz)
  %145 = fdiv fast float 1.000000e+00, %144
  %146 = fmul fast float %145, %143
  %147 = fcmp fast olt float %146, 0.000000e+00
  %148 = fcmp fast ogt float %120, 0.000000e+00
  %149 = and i1 %148, %147
  br i1 %149, label %154, label %150, !dx.controlflow.hints !45

; <label>:150                                     ; preds = %0
  %151 = fcmp fast olt float %120, 0.000000e+00
  br i1 %151, label %152, label %154, !dx.controlflow.hints !46

; <label>:152                                     ; preds = %150
  %153 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %146)  ; FMax(a,b)
  br label %154

; <label>:154                                     ; preds = %152, %150, %0
  %155 = phi float [ 0.000000e+00, %0 ], [ %153, %152 ], [ 0.000000e+00, %150 ]
  %156 = phi float [ 0.000000e+00, %0 ], [ 0x47EFFFFFE0000000, %152 ], [ %146, %150 ]
  %157 = fcmp fast oeq float %156, 0.000000e+00
  br i1 %157, label %161, label %158, !dx.controlflow.hints !47

; <label>:158                                     ; preds = %154
  %159 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %155)  ; FMin(a,b)
  %160 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %156)  ; FMax(a,b)
  br label %161

; <label>:161                                     ; preds = %158, %154
  %162 = phi i32 [ 1, %158 ], [ 0, %154 ]
  %163 = phi float [ %160, %158 ], [ -1.000000e+00, %154 ]
  %164 = phi float [ %159, %158 ], [ 0x47EFFFFFE0000000, %154 ]
  %165 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %166 = extractvalue %dx.types.CBufRet.i32 %165, 3
  %167 = icmp eq i32 %166, 0
  %168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %169 = extractvalue %dx.types.CBufRet.f32 %168, 2
  %170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %171 = extractvalue %dx.types.CBufRet.f32 %170, 2
  %172 = fsub fast float %169, %77
  %173 = fadd fast float %172, %171
  br i1 %167, label %181, label %174, !dx.controlflow.hints !48

; <label>:174                                     ; preds = %161
  %175 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %74, float %76, float %173)  ; Dot3(ax,ay,az,bx,by,bz)
  %176 = fmul fast float %145, %175
  %177 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %74, float %76, float %172)  ; Dot3(ax,ay,az,bx,by,bz)
  %178 = fmul fast float %145, %177
  %179 = call float @dx.op.binary.f32(i32 36, float %176, float %178)  ; FMin(a,b)
  %180 = call float @dx.op.binary.f32(i32 35, float %176, float %178)  ; FMax(a,b)
  br label %214

; <label>:181                                     ; preds = %161
  %182 = fdiv fast float 1.000000e+00, %118
  %183 = fdiv fast float 1.000000e+00, %119
  %184 = fdiv fast float 1.000000e+00, %120
  %185 = extractvalue %dx.types.CBufRet.f32 %168, 0
  %186 = extractvalue %dx.types.CBufRet.f32 %168, 1
  %187 = extractvalue %dx.types.CBufRet.f32 %170, 0
  %188 = extractvalue %dx.types.CBufRet.f32 %170, 1
  %189 = fsub fast float %185, %73
  %190 = fmul fast float %189, %182
  %191 = fadd fast float %189, %187
  %192 = fmul fast float %191, %182
  %193 = call float @dx.op.binary.f32(i32 36, float %190, float %192)  ; FMin(a,b)
  %194 = call float @dx.op.binary.f32(i32 35, float %190, float %192)  ; FMax(a,b)
  %195 = fsub fast float %186, %75
  %196 = fmul fast float %195, %183
  %197 = fadd fast float %195, %188
  %198 = fmul fast float %197, %183
  %199 = call float @dx.op.binary.f32(i32 36, float %196, float %198)  ; FMin(a,b)
  %200 = call float @dx.op.binary.f32(i32 35, float %193, float %199)  ; FMax(a,b)
  %201 = call float @dx.op.binary.f32(i32 35, float %196, float %198)  ; FMax(a,b)
  %202 = call float @dx.op.binary.f32(i32 36, float %194, float %201)  ; FMin(a,b)
  %203 = fmul fast float %172, %184
  %204 = fmul fast float %173, %184
  %205 = call float @dx.op.binary.f32(i32 36, float %203, float %204)  ; FMin(a,b)
  %206 = call float @dx.op.binary.f32(i32 35, float %200, float %205)  ; FMax(a,b)
  %207 = call float @dx.op.binary.f32(i32 35, float %203, float %204)  ; FMax(a,b)
  %208 = call float @dx.op.binary.f32(i32 36, float %202, float %207)  ; FMin(a,b)
  %209 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %206)  ; FMax(a,b)
  %210 = fcmp fast ult float %208, %209
  br i1 %210, label %214, label %211, !dx.controlflow.hints !49

; <label>:211                                     ; preds = %181
  %212 = call float @dx.op.binary.f32(i32 36, float %206, float %208)  ; FMin(a,b)
  %213 = call float @dx.op.binary.f32(i32 35, float %206, float %208)  ; FMax(a,b)
  br label %214

; <label>:214                                     ; preds = %211, %181, %174
  %215 = phi float [ %179, %174 ], [ %212, %211 ], [ 0.000000e+00, %181 ]
  %216 = phi float [ %180, %174 ], [ %213, %211 ], [ 0.000000e+00, %181 ]
  %217 = fcmp fast oeq float %216, 0.000000e+00
  br i1 %217, label %221, label %218, !dx.controlflow.hints !50

; <label>:218                                     ; preds = %214
  %219 = call float @dx.op.binary.f32(i32 36, float %164, float %215)  ; FMin(a,b)
  %220 = call float @dx.op.binary.f32(i32 35, float %163, float %216)  ; FMax(a,b)
  br label %221

; <label>:221                                     ; preds = %218, %214
  %222 = phi i32 [ 1, %218 ], [ 0, %214 ]
  %223 = phi float [ %220, %218 ], [ %163, %214 ]
  %224 = phi float [ %219, %218 ], [ %164, %214 ]
  %225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %226 = extractvalue %dx.types.CBufRet.f32 %225, 3
  %227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %228 = extractvalue %dx.types.CBufRet.f32 %227, 0
  %229 = fsub fast float %226, %77
  %230 = fadd fast float %229, %228
  %231 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %74, float %76, float %230)  ; Dot3(ax,ay,az,bx,by,bz)
  %232 = fmul fast float %145, %231
  %233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %234 = extractvalue %dx.types.CBufRet.f32 %233, 2
  %235 = fsub fast float %234, %77
  %236 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %74, float %76, float %235)  ; Dot3(ax,ay,az,bx,by,bz)
  %237 = fmul fast float %145, %236
  %238 = call float @dx.op.binary.f32(i32 36, float %232, float %237)  ; FMin(a,b)
  %239 = call float @dx.op.binary.f32(i32 35, float %232, float %237)  ; FMax(a,b)
  %240 = call float @dx.op.binary.f32(i32 36, float %224, float %238)  ; FMin(a,b)
  %241 = call float @dx.op.binary.f32(i32 35, float %223, float %239)  ; FMax(a,b)
  %242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %243 = extractvalue %dx.types.CBufRet.f32 %242, 2
  %244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %245 = extractvalue %dx.types.CBufRet.f32 %244, 3
  %246 = fsub fast float %243, %77
  %247 = fadd fast float %246, %245
  %248 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %74, float %76, float %247)  ; Dot3(ax,ay,az,bx,by,bz)
  %249 = fmul fast float %145, %248
  %250 = fcmp fast olt float %249, 0.000000e+00
  %251 = and i1 %148, %250
  br i1 %251, label %256, label %252, !dx.controlflow.hints !51

; <label>:252                                     ; preds = %221
  %253 = fcmp fast olt float %120, 0.000000e+00
  br i1 %253, label %254, label %256, !dx.controlflow.hints !52

; <label>:254                                     ; preds = %252
  %255 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %249)  ; FMax(a,b)
  br label %256

; <label>:256                                     ; preds = %254, %252, %221
  %257 = phi float [ 0.000000e+00, %221 ], [ %255, %254 ], [ 0.000000e+00, %252 ]
  %258 = phi float [ 0.000000e+00, %221 ], [ 0x47EFFFFFE0000000, %254 ], [ %249, %252 ]
  %259 = fcmp fast oeq float %258, 0.000000e+00
  br i1 %259, label %263, label %260, !dx.controlflow.hints !53

; <label>:260                                     ; preds = %256
  %261 = call float @dx.op.binary.f32(i32 36, float %240, float %257)  ; FMin(a,b)
  %262 = call float @dx.op.binary.f32(i32 35, float %241, float %258)  ; FMax(a,b)
  br label %263

; <label>:263                                     ; preds = %260, %256
  %264 = phi i32 [ 1, %260 ], [ 0, %256 ]
  %265 = phi float [ %262, %260 ], [ %241, %256 ]
  %266 = phi float [ %261, %260 ], [ %240, %256 ]
  %267 = fdiv fast float 1.000000e+00, %118
  %268 = fdiv fast float 1.000000e+00, %119
  %269 = fdiv fast float 1.000000e+00, %120
  %270 = call float @dx.op.binary.f32(i32 36, float %139, float %265)  ; FMin(a,b)
  %271 = call float @dx.op.binary.f32(i32 35, float %116, float %266)  ; FMax(a,b)
  %272 = extractvalue %dx.types.CBufRet.f32 %140, 0
  %273 = fmul fast float %62, 2.000000e+00
  %274 = fadd fast float %273, -1.000000e+00
  %275 = fmul fast float %272, %274
  %276 = fadd fast float %275, %271
  %277 = fcmp fast olt float %276, %270
  %278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %279 = extractvalue %dx.types.CBufRet.f32 %278, 2
  %280 = fcmp fast olt float %279, 1.000000e+00
  %281 = and i1 %280, %277
  br i1 %281, label %282, label %2885

; <label>:282                                     ; preds = %263
  %283 = fmul fast float %276, %120
  %284 = fadd fast float %283, %77
  %285 = fmul fast float %276, %119
  %286 = fadd fast float %285, %75
  %287 = fmul fast float %276, %118
  %288 = fadd fast float %287, %73
  br label %289

; <label>:289                                     ; preds = %2855, %282
  %290 = phi i32 [ %2857, %2855 ], [ undef, %282 ]
  %291 = phi float [ %2858, %2855 ], [ undef, %282 ]
  %292 = phi float [ %2859, %2855 ], [ undef, %282 ]
  %293 = phi float [ %2860, %2855 ], [ undef, %282 ]
  %294 = phi float [ %2861, %2855 ], [ undef, %282 ]
  %295 = phi float [ %2862, %2855 ], [ undef, %282 ]
  %296 = phi i32 [ %683, %2855 ], [ undef, %282 ]
  %297 = phi float [ %684, %2855 ], [ undef, %282 ]
  %298 = phi float [ %424, %2855 ], [ undef, %282 ]
  %299 = phi float [ %425, %2855 ], [ undef, %282 ]
  %300 = phi float [ %426, %2855 ], [ undef, %282 ]
  %301 = phi float [ %427, %2855 ], [ undef, %282 ]
  %302 = phi float [ %2863, %2855 ], [ 0.000000e+00, %282 ]
  %303 = phi float [ %2864, %2855 ], [ 1.000000e+00, %282 ]
  %304 = phi float [ %2865, %2855 ], [ 0.000000e+00, %282 ]
  %305 = phi float [ %2866, %2855 ], [ 0.000000e+00, %282 ]
  %306 = phi float [ %2867, %2855 ], [ 0.000000e+00, %282 ]
  %307 = phi float [ %2877, %2855 ], [ %288, %282 ]
  %308 = phi float [ %2878, %2855 ], [ %286, %282 ]
  %309 = phi float [ %2879, %2855 ], [ %284, %282 ]
  %310 = phi float [ %2856, %2855 ], [ %276, %282 ]
  %311 = phi i32 [ %429, %2855 ], [ 10, %282 ]
  %312 = phi float [ %2868, %2855 ], [ 0.000000e+00, %282 ]
  %313 = phi float [ %2869, %2855 ], [ 0.000000e+00, %282 ]
  %314 = phi float [ %2870, %2855 ], [ 0.000000e+00, %282 ]
  %315 = phi float [ %2871, %2855 ], [ 0.000000e+00, %282 ]
  %316 = phi float [ %2872, %2855 ], [ 0.000000e+00, %282 ]
  %317 = phi i32 [ %2873, %2855 ], [ 0, %282 ]
  %318 = fsub fast float -0.000000e+00, %308
  %319 = fsub fast float -0.000000e+00, %307
  %320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %321 = extractvalue %dx.types.CBufRet.f32 %320, 0
  %322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %323 = extractvalue %dx.types.CBufRet.f32 %322, 0
  %324 = extractvalue %dx.types.CBufRet.f32 %322, 1
  %325 = fsub fast float %307, %323
  %326 = fsub fast float %308, %324
  %327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %328 = extractvalue %dx.types.CBufRet.f32 %327, 2
  %329 = extractvalue %dx.types.CBufRet.f32 %327, 3
  %330 = fmul fast float %325, %328
  %331 = fmul fast float %326, %329
  %332 = call float @dx.op.binary.f32(i32 36, float %330, float %331)  ; FMin(a,b)
  %333 = fcmp fast olt float %332, 0.000000e+00
  %334 = call float @dx.op.binary.f32(i32 35, float %330, float %331)  ; FMax(a,b)
  %335 = fcmp fast ogt float %334, 1.000000e+00
  %336 = or i1 %333, %335
  %337 = extractvalue %dx.types.CBufRet.f32 %322, 2
  %338 = fcmp fast olt float %309, %337
  %339 = or i1 %336, %338
  %340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %341 = extractvalue %dx.types.CBufRet.f32 %340, 3
  %342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %343 = extractvalue %dx.types.CBufRet.f32 %342, 0
  %344 = fadd fast float %343, %341
  %345 = fcmp fast ogt float %309, %344
  %346 = or i1 %339, %345
  br i1 %346, label %347, label %376, !dx.controlflow.hints !54

; <label>:347                                     ; preds = %289
  %348 = extractvalue %dx.types.CBufRet.f32 %327, 0
  %349 = extractvalue %dx.types.CBufRet.f32 %327, 1
  %350 = fsub fast float %323, %307
  %351 = fmul fast float %350, %267
  %352 = fadd fast float %350, %348
  %353 = fmul fast float %352, %267
  %354 = call float @dx.op.binary.f32(i32 36, float %351, float %353)  ; FMin(a,b)
  %355 = call float @dx.op.binary.f32(i32 35, float %351, float %353)  ; FMax(a,b)
  %356 = fsub fast float %324, %308
  %357 = fmul fast float %356, %268
  %358 = fadd fast float %356, %349
  %359 = fmul fast float %358, %268
  %360 = call float @dx.op.binary.f32(i32 36, float %357, float %359)  ; FMin(a,b)
  %361 = call float @dx.op.binary.f32(i32 35, float %354, float %360)  ; FMax(a,b)
  %362 = call float @dx.op.binary.f32(i32 35, float %357, float %359)  ; FMax(a,b)
  %363 = call float @dx.op.binary.f32(i32 36, float %355, float %362)  ; FMin(a,b)
  %364 = fsub fast float %337, %309
  %365 = fmul fast float %364, %269
  %366 = fsub fast float %341, %309
  %367 = fadd fast float %366, %343
  %368 = fmul fast float %367, %269
  %369 = call float @dx.op.binary.f32(i32 36, float %365, float %368)  ; FMin(a,b)
  %370 = call float @dx.op.binary.f32(i32 35, float %361, float %369)  ; FMax(a,b)
  %371 = call float @dx.op.binary.f32(i32 35, float %365, float %368)  ; FMax(a,b)
  %372 = call float @dx.op.binary.f32(i32 36, float %363, float %371)  ; FMin(a,b)
  %373 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %370)  ; FMax(a,b)
  %374 = fcmp fast oge float %372, %373
  %375 = select i1 %374, float %370, float 1.000000e+07
  br label %422

; <label>:376                                     ; preds = %289
  %377 = fsub fast float 1.000000e+00, %331
  %378 = icmp eq i32 %311, 0
  br i1 %378, label %407, label %379

; <label>:379                                     ; preds = %376
  br label %380

; <label>:380                                     ; preds = %403, %379
  %381 = phi i32 [ %404, %403 ], [ %311, %379 ]
  %382 = uitofp i32 %381 to float
  %383 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %27, float %330, float %377, float undef, float undef, i32 0, i32 0, i32 undef, float %382)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %384 = extractvalue %dx.types.ResRet.f32 %383, 0
  %385 = extractvalue %dx.types.ResRet.f32 %383, 1
  %386 = extractvalue %dx.types.ResRet.f32 %383, 2
  %387 = fcmp fast oeq float %384, 0.000000e+00
  %388 = fcmp ule float %309, %386
  %389 = fcmp uge float %309, %385
  %390 = or i1 %389, %388
  %391 = or i1 %387, %390
  br i1 %391, label %392, label %403, !dx.controlflow.hints !55

; <label>:392                                     ; preds = %380
  %393 = extractvalue %dx.types.ResRet.f32 %383, 3
  %394 = extractvalue %dx.types.CBufRet.f32 %327, 0
  %395 = and i32 %381, 31
  %396 = lshr i32 1024, %395
  %397 = uitofp i32 %396 to float
  %398 = fdiv fast float %394, %397
  %399 = add i32 %381, 1
  %400 = uitofp i32 %399 to float
  %401 = call float @dx.op.binary.f32(i32 36, float 1.000000e+01, float %400)  ; FMin(a,b)
  %402 = fptosi float %401 to i32
  br label %422

; <label>:403                                     ; preds = %380
  %404 = add i32 %381, -1
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %406, label %380, !llvm.loop !56

; <label>:406                                     ; preds = %403
  br label %407

; <label>:407                                     ; preds = %406, %376
  %408 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %26, float %330, float %377, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %409 = extractvalue %dx.types.ResRet.f32 %408, 0
  %410 = extractvalue %dx.types.ResRet.f32 %408, 1
  %411 = extractvalue %dx.types.ResRet.f32 %408, 2
  %412 = extractvalue %dx.types.ResRet.f32 %408, 3
  %413 = extractvalue %dx.types.CBufRet.f32 %327, 0
  %414 = fmul fast float %413, 9.765625e-04
  %415 = fcmp fast oeq float %409, 0.000000e+00
  %416 = fcmp ule float %309, %411
  %417 = fcmp uge float %309, %410
  %418 = or i1 %417, %416
  %419 = or i1 %415, %418
  %420 = zext i1 %419 to i32
  %421 = xor i32 %420, 1
  br label %422

; <label>:422                                     ; preds = %407, %392, %347
  %423 = phi float [ %375, %347 ], [ %398, %392 ], [ %414, %407 ]
  %424 = phi float [ %298, %347 ], [ %384, %392 ], [ %409, %407 ]
  %425 = phi float [ %299, %347 ], [ %385, %392 ], [ %410, %407 ]
  %426 = phi float [ %300, %347 ], [ %386, %392 ], [ %411, %407 ]
  %427 = phi float [ %301, %347 ], [ %393, %392 ], [ %412, %407 ]
  %428 = phi i32 [ 0, %347 ], [ 0, %392 ], [ %421, %407 ]
  %429 = phi i32 [ 10, %347 ], [ %402, %392 ], [ 1, %407 ]
  %430 = icmp eq i32 %428, 0
  %431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %432 = extractvalue %dx.types.CBufRet.f32 %431, 2
  %433 = call float @dx.op.binary.f32(i32 35, float %423, float %432)  ; FMax(a,b)
  %434 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %433)  ; FMin(a,b)
  %435 = icmp eq i32 %162, 0
  br i1 %435, label %448, label %436, !dx.controlflow.hints !58

; <label>:436                                     ; preds = %422
  %437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %438 = extractvalue %dx.types.CBufRet.f32 %437, 3
  %439 = extractvalue %dx.types.CBufRet.f32 %437, 2
  %440 = fmul fast float %438, %310
  %441 = fdiv fast float %440, %270
  %442 = fadd fast float %441, 1.000000e+00
  %443 = call float @dx.op.unary.f32(i32 23, float %442)  ; Log(value)
  %444 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %443)  ; FMin(a,b)
  %445 = fmul fast float %439, %270
  %446 = fmul fast float %445, %444
  %447 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %446)  ; FMin(a,b)
  br label %448

; <label>:448                                     ; preds = %436, %422
  %449 = phi float [ %447, %436 ], [ 0x47EFFFFFE0000000, %422 ]
  %450 = icmp eq i32 %222, 0
  br i1 %450, label %506, label %451, !dx.controlflow.hints !59

; <label>:451                                     ; preds = %448
  %452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %453 = extractvalue %dx.types.CBufRet.f32 %452, 0
  %454 = extractvalue %dx.types.CBufRet.f32 %452, 1
  %455 = extractvalue %dx.types.CBufRet.f32 %452, 2
  %456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %457 = extractvalue %dx.types.CBufRet.f32 %456, 0
  %458 = extractvalue %dx.types.CBufRet.f32 %456, 1
  %459 = extractvalue %dx.types.CBufRet.f32 %456, 2
  %460 = fsub fast float %307, %457
  %461 = fsub fast float %308, %458
  %462 = fsub fast float %309, %459
  %463 = fmul fast float %460, %453
  %464 = fmul fast float %461, %454
  %465 = fmul fast float %462, %455
  %466 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %467 = extractvalue %dx.types.CBufRet.i32 %466, 3
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %472, label %469, !dx.controlflow.hints !60

; <label>:469                                     ; preds = %451
  %470 = call float @dx.op.unary.f32(i32 22, float %463)  ; Frc(value)
  %471 = call float @dx.op.unary.f32(i32 22, float %464)  ; Frc(value)
  br label %472

; <label>:472                                     ; preds = %469, %451
  %473 = phi float [ %470, %469 ], [ %463, %451 ]
  %474 = phi float [ %471, %469 ], [ %464, %451 ]
  %475 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %24, float %473, float %474, float %465, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %476 = extractvalue %dx.types.ResRet.f32 %475, 0
  %477 = fmul fast float %476, 2.000000e+00
  %478 = fadd fast float %477, -1.000000e+00
  %479 = extractvalue %dx.types.CBufRet.f32 %452, 3
  %480 = fmul fast float %478, %479
  %481 = fcmp fast olt float %480, 0.000000e+00
  %482 = fcmp fast oge float %465, 0.000000e+00
  %483 = fcmp fast ole float %465, 1.000000e+00
  br i1 %468, label %486, label %484, !dx.controlflow.hints !61

; <label>:484                                     ; preds = %472
  %485 = and i1 %482, %483
  br label %496

; <label>:486                                     ; preds = %472
  %487 = fcmp fast oge float %463, 0.000000e+00
  %488 = fcmp fast oge float %464, 0.000000e+00
  %489 = and i1 %487, %488
  %490 = and i1 %482, %489
  %491 = fcmp fast ole float %463, 1.000000e+00
  %492 = fcmp fast ole float %464, 1.000000e+00
  %493 = and i1 %491, %492
  %494 = and i1 %483, %493
  %495 = and i1 %490, %494
  br label %496

; <label>:496                                     ; preds = %486, %484
  %497 = phi i1 [ %485, %484 ], [ %495, %486 ]
  %498 = and i1 %481, %497
  %499 = call float @dx.op.unary.f32(i32 6, float %480)  ; FAbs(value)
  %500 = extractvalue %dx.types.CBufRet.f32 %431, 1
  %501 = extractvalue %dx.types.CBufRet.f32 %431, 0
  %502 = call float @dx.op.binary.f32(i32 35, float %499, float %501)  ; FMax(a,b)
  %503 = select i1 %498, float %500, float %502
  %504 = zext i1 %498 to i32
  %505 = call float @dx.op.binary.f32(i32 36, float %434, float %503)  ; FMin(a,b)
  br label %506

; <label>:506                                     ; preds = %496, %448
  %507 = phi i32 [ %504, %496 ], [ 0, %448 ]
  %508 = phi float [ %505, %496 ], [ %434, %448 ]
  %509 = icmp eq i32 %264, 0
  br i1 %509, label %681, label %510, !dx.controlflow.hints !62

; <label>:510                                     ; preds = %506
  %511 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %512 = extractvalue %dx.types.CBufRet.i32 %511, 1
  %513 = and i32 %512, 1
  %514 = icmp eq i32 %513, 0
  br i1 %514, label %515, label %672, !dx.controlflow.hints !63

; <label>:515                                     ; preds = %510
  %516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %517 = extractvalue %dx.types.CBufRet.f32 %516, 2
  %518 = extractvalue %dx.types.CBufRet.f32 %516, 3
  %519 = fmul fast float %517, %307
  %520 = fmul fast float %518, %308
  %521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %522 = extractvalue %dx.types.CBufRet.f32 %521, 0
  %523 = extractvalue %dx.types.CBufRet.f32 %521, 1
  %524 = fadd fast float %519, %522
  %525 = fadd fast float %520, %523
  %526 = call float @dx.op.unary.f32(i32 7, float %524)  ; Saturate(value)
  %527 = call float @dx.op.unary.f32(i32 7, float %525)  ; Saturate(value)
  %528 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %26, float %526, float %527, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %529 = extractvalue %dx.types.ResRet.f32 %528, 0
  %530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %531 = extractvalue %dx.types.CBufRet.f32 %530, 0
  %532 = fmul fast float %531, %529
  %533 = fsub fast float %524, %526
  %534 = fsub fast float %525, %527
  %535 = extractvalue %dx.types.CBufRet.f32 %516, 0
  %536 = extractvalue %dx.types.CBufRet.f32 %516, 1
  %537 = fmul fast float %535, %533
  %538 = fmul fast float %536, %534
  %539 = fmul fast float %537, %537
  %540 = fmul fast float %538, %538
  %541 = fadd fast float %539, %540
  %542 = call float @dx.op.unary.f32(i32 24, float %541)  ; Sqrt(value)
  %543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %544 = extractvalue %dx.types.CBufRet.f32 %543, 3
  %545 = fmul fast float %544, %542
  %546 = call float @dx.op.unary.f32(i32 7, float %545)  ; Saturate(value)
  %547 = extractvalue %dx.types.CBufRet.f32 %543, 2
  %548 = fsub fast float %547, %532
  %549 = fmul fast float %548, %546
  %550 = extractvalue %dx.types.CBufRet.f32 %530, 1
  %551 = fsub fast float %309, %532
  %552 = fsub fast float %551, %550
  %553 = fsub fast float %552, %549
  %554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %555 = extractvalue %dx.types.CBufRet.f32 %554, 2
  %556 = fsub fast float %553, %555
  %557 = fcmp fast olt float %556, 0.000000e+00
  %558 = call float @dx.op.unary.f32(i32 6, float %556)  ; FAbs(value)
  %559 = extractvalue %dx.types.CBufRet.i32 %511, 0
  %560 = icmp eq i32 %559, 0
  br i1 %560, label %614, label %561

; <label>:561                                     ; preds = %515
  br label %562

; <label>:562                                     ; preds = %601, %561
  %563 = phi i32 [ %607, %601 ], [ 1, %561 ]
  %564 = phi float [ %609, %601 ], [ 0x47EFFFFFE0000000, %561 ]
  %565 = phi i32 [ %610, %601 ], [ 0, %561 ]
  %566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %567 = extractvalue %dx.types.CBufRet.f32 %566, 1
  %568 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %569 = extractvalue %dx.types.CBufRet.i32 %568, 1
  %570 = and i32 %569, 8
  %571 = icmp eq i32 %570, 0
  %572 = fcmp fast ogt float %567, %553
  %573 = or i1 %572, %571
  %574 = add i32 %565, 171
  %575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 %574)  ; CBufferLoadLegacy(handle,regIndex)
  %576 = extractvalue %dx.types.CBufRet.f32 %575, 0
  %577 = extractvalue %dx.types.CBufRet.f32 %575, 1
  %578 = extractvalue %dx.types.CBufRet.f32 %575, 2
  br i1 %573, label %579, label %585, !dx.controlflow.hints !64

; <label>:579                                     ; preds = %562
  %580 = fsub fast float %576, %307
  %581 = fsub fast float %577, %308
  %582 = fmul fast float %580, %580
  %583 = fmul fast float %581, %581
  %584 = fadd fast float %582, %583
  br label %601

; <label>:585                                     ; preds = %562
  %586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %587 = extractvalue %dx.types.CBufRet.f32 %586, 2
  %588 = extractvalue %dx.types.CBufRet.f32 %566, 2
  %589 = fmul fast float %588, %587
  %590 = fsub fast float %589, %567
  %591 = fdiv fast float %578, %590
  %592 = fsub fast float %307, %576
  %593 = fsub fast float %308, %577
  %594 = fsub fast float %553, %567
  %595 = fmul fast float %591, %594
  %596 = fmul fast float %592, %592
  %597 = fmul fast float %593, %593
  %598 = fadd fast float %596, %597
  %599 = fmul fast float %595, %595
  %600 = fadd fast float %598, %599
  br label %601

; <label>:601                                     ; preds = %585, %579
  %602 = phi float [ %584, %579 ], [ %600, %585 ]
  %603 = call float @dx.op.unary.f32(i32 24, float %602)  ; Sqrt(value)
  %604 = fsub float %578, %603
  %605 = fcmp fast olt float %604, 0.000000e+00
  %606 = zext i1 %605 to i32
  %607 = and i32 %606, %563
  %608 = call float @dx.op.unary.f32(i32 6, float %604)  ; FAbs(value)
  %609 = call float @dx.op.binary.f32(i32 36, float %564, float %608)  ; FMin(a,b)
  %610 = add i32 %565, 1
  %611 = extractvalue %dx.types.CBufRet.i32 %568, 0
  %612 = icmp ult i32 %610, %611
  br i1 %612, label %562, label %613

; <label>:613                                     ; preds = %601
  br label %614

; <label>:614                                     ; preds = %613, %515
  %615 = phi i32 [ 1, %515 ], [ %607, %613 ]
  %616 = phi float [ 0x47EFFFFFE0000000, %515 ], [ %609, %613 ]
  br label %617

; <label>:617                                     ; preds = %617, %614
  %618 = phi i32 [ %615, %614 ], [ %657, %617 ]
  %619 = phi float [ 0x47EFFFFFE0000000, %614 ], [ %659, %617 ]
  %620 = phi i32 [ 0, %614 ], [ %660, %617 ]
  %621 = add nuw nsw i32 %620, 191
  %622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 %621)  ; CBufferLoadLegacy(handle,regIndex)
  %623 = extractvalue %dx.types.CBufRet.f32 %622, 0
  %624 = extractvalue %dx.types.CBufRet.f32 %622, 1
  %625 = extractvalue %dx.types.CBufRet.f32 %622, 2
  %626 = add nuw nsw i32 %620, 195
  %627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 %626)  ; CBufferLoadLegacy(handle,regIndex)
  %628 = extractvalue %dx.types.CBufRet.f32 %627, 0
  %629 = extractvalue %dx.types.CBufRet.f32 %627, 1
  %630 = extractvalue %dx.types.CBufRet.f32 %627, 2
  %631 = fsub fast float %307, %623
  %632 = fsub fast float %308, %624
  %633 = fsub fast float %553, %625
  %634 = call float @dx.op.unary.f32(i32 6, float %631)  ; FAbs(value)
  %635 = call float @dx.op.unary.f32(i32 6, float %632)  ; FAbs(value)
  %636 = call float @dx.op.unary.f32(i32 6, float %633)  ; FAbs(value)
  %637 = fsub fast float %634, %628
  %638 = fsub fast float %635, %629
  %639 = fsub fast float %636, %630
  %640 = call float @dx.op.binary.f32(i32 35, float %637, float 0.000000e+00)  ; FMax(a,b)
  %641 = call float @dx.op.binary.f32(i32 35, float %638, float 0.000000e+00)  ; FMax(a,b)
  %642 = call float @dx.op.binary.f32(i32 35, float %639, float 0.000000e+00)  ; FMax(a,b)
  %643 = fmul fast float %640, %640
  %644 = fmul fast float %641, %641
  %645 = fadd fast float %644, %643
  %646 = fmul fast float %642, %642
  %647 = fadd fast float %645, %646
  %648 = call float @dx.op.unary.f32(i32 24, float %647)  ; Sqrt(value)
  %649 = call float @dx.op.binary.f32(i32 35, float %638, float %639)  ; FMax(a,b)
  %650 = call float @dx.op.binary.f32(i32 35, float %637, float %649)  ; FMax(a,b)
  %651 = call float @dx.op.binary.f32(i32 36, float %650, float 0.000000e+00)  ; FMin(a,b)
  %652 = fadd fast float %651, %648
  %653 = fsub fast float -0.000000e+00, %652
  %654 = fcmp ogt float %652, -0.000000e+00
  %655 = icmp ne i32 %618, 0
  %656 = and i1 %655, %654
  %657 = zext i1 %656 to i32
  %658 = call float @dx.op.unary.f32(i32 6, float %653)  ; FAbs(value)
  %659 = call float @dx.op.binary.f32(i32 36, float %619, float %658)  ; FMin(a,b)
  %660 = add nuw nsw i32 %620, 1
  %661 = icmp eq i32 %660, 4
  br i1 %661, label %662, label %617

; <label>:662                                     ; preds = %617
  %663 = call float @dx.op.binary.f32(i32 36, float %558, float %659)  ; FMin(a,b)
  %664 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %665 = extractvalue %dx.types.CBufRet.i32 %664, 1
  %666 = and i32 %665, 2
  %667 = icmp ne i32 %666, 0
  %668 = xor i1 %656, %667
  %669 = call float @dx.op.binary.f32(i32 36, float %663, float %616)  ; FMin(a,b)
  %670 = and i1 %668, %557
  %671 = zext i1 %670 to i32
  br label %672

; <label>:672                                     ; preds = %662, %510
  %673 = phi i32 [ %296, %510 ], [ %671, %662 ]
  %674 = phi float [ 0.000000e+00, %510 ], [ %669, %662 ]
  %675 = phi float [ %309, %510 ], [ %553, %662 ]
  %676 = icmp ne i32 %673, 0
  %677 = extractvalue %dx.types.CBufRet.f32 %431, 3
  %678 = call float @dx.op.binary.f32(i32 35, float %674, float %677)  ; FMax(a,b)
  %679 = call float @dx.op.binary.f32(i32 36, float %449, float %678)  ; FMin(a,b)
  %680 = zext i1 %676 to i32
  br label %681

; <label>:681                                     ; preds = %672, %506
  %682 = phi i32 [ %680, %672 ], [ 0, %506 ]
  %683 = phi i32 [ %673, %672 ], [ %296, %506 ]
  %684 = phi float [ %675, %672 ], [ %297, %506 ]
  %685 = phi float [ %679, %672 ], [ %449, %506 ]
  %686 = extractvalue %dx.types.CBufRet.f32 %320, 2
  %687 = fmul fast float %686, %310
  %688 = call float @dx.op.unary.f32(i32 23, float %687)  ; Log(value)
  %689 = fmul fast float %688, 0x3FE62E4300000000
  %690 = call float @dx.op.binary.f32(i32 35, float %689, float 1.000000e+00)  ; FMax(a,b)
  %691 = fmul fast float %690, %685
  %692 = call float @dx.op.binary.f32(i32 36, float %691, float %508)  ; FMin(a,b)
  %693 = call float @dx.op.binary.f32(i32 35, float %692, float %321)  ; FMax(a,b)
  %694 = fadd fast float %270, 0x3F1A36E2E0000000
  %695 = fsub fast float %694, %310
  %696 = call float @dx.op.binary.f32(i32 36, float %695, float %693)  ; FMin(a,b)
  br i1 %435, label %751, label %697, !dx.controlflow.hints !65

; <label>:697                                     ; preds = %681
  %698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %699 = extractvalue %dx.types.CBufRet.f32 %698, 0
  %700 = fsub fast float %699, %309
  %701 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %319, float %318, float %700)  ; Dot3(ax,ay,az,bx,by,bz)
  %702 = fmul fast float %145, %701
  %703 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %702)  ; FMax(a,b)
  %704 = fcmp fast olt float %120, 0.000000e+00
  %705 = call float @dx.op.binary.f32(i32 36, float %696, float %703)  ; FMin(a,b)
  br i1 %704, label %707, label %706, !dx.controlflow.hints !66

; <label>:706                                     ; preds = %697
  br label %707

; <label>:707                                     ; preds = %706, %697
  %708 = phi float [ 0.000000e+00, %706 ], [ %705, %697 ]
  %709 = phi float [ %705, %706 ], [ %696, %697 ]
  %710 = phi float [ %705, %706 ], [ 0.000000e+00, %697 ]
  %711 = phi float [ %696, %706 ], [ %705, %697 ]
  %712 = fsub fast float %709, %708
  %713 = extractvalue %dx.types.CBufRet.f32 %698, 1
  %714 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %713)  ; FMin(a,b)
  %715 = fsub fast float %309, %699
  %716 = fmul fast float %714, 0x3FF7154760000000
  %717 = fmul fast float %716, %715
  %718 = call float @dx.op.unary.f32(i32 21, float %717)  ; Exp(value)
  %719 = fmul fast float %120, 0x3FF7154760000000
  %720 = fmul fast float %719, %711
  %721 = fmul fast float %720, %714
  %722 = call float @dx.op.unary.f32(i32 21, float %721)  ; Exp(value)
  %723 = fmul fast float %719, %710
  %724 = fmul fast float %723, %714
  %725 = call float @dx.op.unary.f32(i32 21, float %724)  ; Exp(value)
  %726 = fsub fast float %722, %725
  %727 = fmul fast float %726, %718
  %728 = fmul fast float %714, %120
  %729 = fdiv fast float %727, %728
  %730 = fadd fast float %712, %729
  %731 = call float @dx.op.unary.f32(i32 6, float %120)  ; FAbs(value)
  %732 = fcmp fast olt float %731, 0x3F0FFB4800000000
  %733 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %715)  ; FMax(a,b)
  %734 = fmul fast float %733, 0x3FF7154760000000
  %735 = fmul fast float %734, %713
  %736 = call float @dx.op.unary.f32(i32 21, float %735)  ; Exp(value)
  %737 = fmul fast float %736, %696
  %738 = select i1 %732, float %737, float %730
  %739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %740 = extractvalue %dx.types.CBufRet.f32 %739, 1
  %741 = fmul fast float %738, %740
  %742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %743 = extractvalue %dx.types.CBufRet.f32 %742, 0
  %744 = extractvalue %dx.types.CBufRet.f32 %742, 1
  %745 = extractvalue %dx.types.CBufRet.f32 %742, 2
  %746 = extractvalue %dx.types.CBufRet.f32 %739, 2
  %747 = fmul fast float %743, %741
  %748 = fmul fast float %744, %741
  %749 = fmul fast float %745, %741
  %750 = fmul fast float %746, %741
  br label %751

; <label>:751                                     ; preds = %707, %681
  %752 = phi float [ %741, %707 ], [ 0.000000e+00, %681 ]
  %753 = phi float [ %750, %707 ], [ 0.000000e+00, %681 ]
  %754 = phi float [ %747, %707 ], [ 0.000000e+00, %681 ]
  %755 = phi float [ %748, %707 ], [ 0.000000e+00, %681 ]
  %756 = phi float [ %749, %707 ], [ 0.000000e+00, %681 ]
  %757 = icmp eq i32 %507, 0
  br i1 %757, label %952, label %758, !dx.controlflow.hints !67

; <label>:758                                     ; preds = %751
  %759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %760 = extractvalue %dx.types.CBufRet.f32 %759, 3
  %761 = fmul fast float %760, %310
  %762 = fcmp fast oeq float %761, 0.000000e+00
  br i1 %762, label %777, label %763, !dx.controlflow.hints !68

; <label>:763                                     ; preds = %758
  %764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %765 = extractvalue %dx.types.CBufRet.f32 %764, 3
  %766 = fmul fast float %765, %761
  %767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %768 = extractvalue %dx.types.CBufRet.f32 %767, 0
  %769 = extractvalue %dx.types.CBufRet.f32 %767, 1
  %770 = extractvalue %dx.types.CBufRet.f32 %767, 2
  %771 = fmul fast float %768, %766
  %772 = fmul fast float %769, %766
  %773 = fmul fast float %770, %766
  %774 = call float @dx.op.unary.f32(i32 23, float %771)  ; Log(value)
  %775 = call float @dx.op.unary.f32(i32 23, float %772)  ; Log(value)
  %776 = call float @dx.op.unary.f32(i32 23, float %773)  ; Log(value)
  br label %777

; <label>:777                                     ; preds = %763, %758
  %778 = phi float [ %774, %763 ], [ 0.000000e+00, %758 ]
  %779 = phi float [ %775, %763 ], [ 0.000000e+00, %758 ]
  %780 = phi float [ %776, %763 ], [ 0.000000e+00, %758 ]
  %781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %782 = extractvalue %dx.types.CBufRet.f32 %781, 0
  %783 = extractvalue %dx.types.CBufRet.f32 %781, 1
  %784 = extractvalue %dx.types.CBufRet.f32 %781, 2
  %785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %786 = extractvalue %dx.types.CBufRet.f32 %785, 0
  %787 = extractvalue %dx.types.CBufRet.f32 %785, 1
  %788 = extractvalue %dx.types.CBufRet.f32 %785, 2
  %789 = fsub fast float %307, %786
  %790 = fsub fast float %308, %787
  %791 = fsub fast float %309, %788
  %792 = fmul fast float %789, %782
  %793 = fmul fast float %790, %783
  %794 = fmul fast float %791, %784
  %795 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %796 = extractvalue %dx.types.CBufRet.i32 %795, 0
  %797 = extractvalue %dx.types.CBufRet.i32 %795, 1
  %798 = uitofp i32 %796 to float
  %799 = uitofp i32 %797 to float
  %800 = fmul fast float %792, %798
  %801 = fmul fast float %793, %799
  %802 = fadd fast float %800, 5.000000e-01
  %803 = fadd fast float %801, 5.000000e-01
  %804 = call float @dx.op.unary.f32(i32 22, float %802)  ; Frc(value)
  %805 = call float @dx.op.unary.f32(i32 22, float %803)  ; Frc(value)
  %806 = call float @dx.op.unary.f32(i32 27, float %802)  ; Round_ni(value)
  %807 = call float @dx.op.unary.f32(i32 27, float %803)  ; Round_ni(value)
  %808 = fadd fast float %806, 1.000000e+00
  %809 = fadd fast float %807, 1.000000e+00
  %810 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %811 = extractvalue %dx.types.CBufRet.f32 %810, 0
  %812 = extractvalue %dx.types.CBufRet.f32 %810, 1
  %813 = fmul fast float %811, %808
  %814 = fmul fast float %812, %809
  %815 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %25, float %813, float %814, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %816 = extractvalue %dx.types.ResRet.f32 %815, 0
  %817 = extractvalue %dx.types.ResRet.f32 %815, 1
  %818 = extractvalue %dx.types.ResRet.f32 %815, 2
  %819 = extractvalue %dx.types.ResRet.f32 %815, 3
  %820 = extractvalue %dx.types.CBufRet.i32 %795, 2
  %821 = extractvalue %dx.types.CBufRet.f32 %810, 2
  %822 = uitofp i32 %820 to float
  %823 = fadd fast float %822, -1.000000e+00
  %824 = fmul fast float %823, %816
  %825 = fmul fast float %823, %817
  %826 = fmul fast float %823, %818
  %827 = fmul fast float %823, %819
  %828 = fadd fast float %824, 5.000000e-01
  %829 = fadd fast float %825, 5.000000e-01
  %830 = fadd fast float %826, 5.000000e-01
  %831 = fadd fast float %827, 5.000000e-01
  %832 = fptoui float %828 to i32
  %833 = fptoui float %829 to i32
  %834 = fptoui float %830 to i32
  %835 = fptoui float %831 to i32
  %836 = uitofp i32 %832 to float
  %837 = uitofp i32 %833 to float
  %838 = uitofp i32 %834 to float
  %839 = uitofp i32 %835 to float
  %840 = fadd fast float %836, 5.000000e-01
  %841 = fadd fast float %837, 5.000000e-01
  %842 = fadd fast float %838, 5.000000e-01
  %843 = fadd fast float %839, 5.000000e-01
  %844 = fmul fast float %840, %821
  %845 = fmul fast float %841, %821
  %846 = fmul fast float %842, %821
  %847 = fmul fast float %843, %821
  %848 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %26, float %844, float %794, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %849 = extractvalue %dx.types.ResRet.f32 %848, 0
  %850 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %26, float %845, float %794, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %851 = extractvalue %dx.types.ResRet.f32 %850, 0
  %852 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %26, float %846, float %794, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %853 = extractvalue %dx.types.ResRet.f32 %852, 0
  %854 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %26, float %847, float %794, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %855 = extractvalue %dx.types.ResRet.f32 %854, 0
  %856 = fsub fast float %853, %855
  %857 = fmul fast float %856, %804
  %858 = fadd fast float %857, %855
  %859 = fsub fast float %851, %849
  %860 = fmul fast float %859, %804
  %861 = fadd fast float %860, %849
  %862 = fsub fast float %861, %858
  %863 = fmul fast float %862, %805
  %864 = fadd fast float %863, %858
  %865 = fcmp fast ogt float %864, 0.000000e+00
  br i1 %865, label %866, label %934, !dx.controlflow.hints !69

; <label>:866                                     ; preds = %777
  %867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %868 = extractvalue %dx.types.CBufRet.f32 %867, 0
  %869 = extractvalue %dx.types.CBufRet.f32 %867, 1
  %870 = extractvalue %dx.types.CBufRet.f32 %867, 2
  %871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %872 = extractvalue %dx.types.CBufRet.f32 %871, 0
  %873 = extractvalue %dx.types.CBufRet.f32 %871, 1
  %874 = extractvalue %dx.types.CBufRet.f32 %871, 2
  %875 = fmul fast float %790, %782
  %876 = fmul fast float %791, %782
  %877 = fadd fast float %792, %872
  %878 = fadd fast float %875, %873
  %879 = fadd fast float %876, %874
  %880 = fmul fast float %877, %868
  %881 = fmul fast float %878, %868
  %882 = fmul fast float %879, %868
  %883 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %23, float %880, float %881, float %882, float undef, i32 0, i32 0, i32 0, float %778)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %884 = extractvalue %dx.types.ResRet.f32 %883, 0
  %885 = fmul fast float %877, %869
  %886 = fmul fast float %878, %869
  %887 = fmul fast float %879, %869
  %888 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %23, float %885, float %886, float %887, float undef, i32 0, i32 0, i32 0, float %779)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %889 = extractvalue %dx.types.ResRet.f32 %888, 1
  %890 = fmul fast float %877, %870
  %891 = fmul fast float %878, %870
  %892 = fmul fast float %879, %870
  %893 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %23, float %890, float %891, float %892, float undef, i32 0, i32 0, i32 0, float %780)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %894 = extractvalue %dx.types.ResRet.f32 %893, 2
  %895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %896 = extractvalue %dx.types.CBufRet.f32 %895, 1
  %897 = fmul fast float %889, %884
  %898 = fmul fast float %897, %894
  %899 = call float @dx.op.unary.f32(i32 23, float %898)  ; Log(value)
  %900 = fmul fast float %899, %896
  %901 = call float @dx.op.unary.f32(i32 21, float %900)  ; Exp(value)
  %902 = extractvalue %dx.types.CBufRet.f32 %895, 2
  %903 = fmul fast float %864, %864
  %904 = fmul fast float %903, %901
  %905 = fmul fast float %904, %902
  %906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %907 = extractvalue %dx.types.CBufRet.f32 %906, 3
  %908 = fmul fast float %907, %905
  %909 = bitcast float %908 to i32
  %910 = sitofp i32 %909 to float
  %911 = fptosi float %910 to i32
  %912 = bitcast i32 %911 to float
  %913 = fsub fast float 1.000000e+00, %905
  %914 = bitcast float %913 to i32
  %915 = sitofp i32 %914 to float
  %916 = fptosi float %915 to i32
  %917 = bitcast i32 %916 to float
  %918 = fadd fast float %912, %917
  %919 = bitcast float %918 to i32
  %920 = sub nsw i32 2129859010, %919
  %921 = bitcast i32 %920 to float
  %922 = fmul fast float %921, %912
  %923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %924 = extractvalue %dx.types.CBufRet.f32 %923, 2
  %925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %926 = extractvalue %dx.types.CBufRet.f32 %925, 0
  %927 = fmul fast float %922, %926
  %928 = fadd fast float %927, 1.000000e+00
  %929 = bitcast float %928 to i32
  %930 = sub nsw i32 2129859010, %929
  %931 = bitcast i32 %930 to float
  %932 = fmul fast float %922, %924
  %933 = fmul fast float %932, %931
  br label %934

; <label>:934                                     ; preds = %866, %777
  %935 = phi float [ %933, %866 ], [ %864, %777 ]
  %936 = fmul fast float %935, %696
  %937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %938 = extractvalue %dx.types.CBufRet.f32 %937, 0
  %939 = extractvalue %dx.types.CBufRet.f32 %937, 1
  %940 = extractvalue %dx.types.CBufRet.f32 %937, 2
  %941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %942 = extractvalue %dx.types.CBufRet.f32 %941, 1
  %943 = fmul fast float %938, %936
  %944 = fmul fast float %939, %936
  %945 = fmul fast float %940, %936
  %946 = fadd fast float %943, %754
  %947 = fadd fast float %944, %755
  %948 = fadd fast float %945, %756
  %949 = fmul fast float %942, %936
  %950 = fadd fast float %949, %753
  %951 = fadd fast float %936, %752
  br label %952

; <label>:952                                     ; preds = %934, %751
  %953 = phi float [ %951, %934 ], [ %752, %751 ]
  %954 = phi float [ %950, %934 ], [ %753, %751 ]
  %955 = phi float [ %946, %934 ], [ %754, %751 ]
  %956 = phi float [ %947, %934 ], [ %755, %751 ]
  %957 = phi float [ %948, %934 ], [ %756, %751 ]
  br i1 %430, label %1100, label %958, !dx.controlflow.hints !70

; <label>:958                                     ; preds = %952
  %959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 411)  ; CBufferLoadLegacy(handle,regIndex)
  %960 = extractvalue %dx.types.CBufRet.f32 %959, 0
  %961 = extractvalue %dx.types.CBufRet.f32 %959, 1
  %962 = extractvalue %dx.types.CBufRet.f32 %959, 2
  %963 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %964 = extractvalue %dx.types.CBufRet.i32 %963, 0
  %965 = icmp ne i32 %964, 0
  %966 = zext i1 %965 to i32
  %967 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %968 = extractvalue %dx.types.CBufRet.i32 %967, 0
  %969 = icmp eq i32 %968, 0
  br i1 %969, label %1003, label %970

; <label>:970                                     ; preds = %958
  br label %971

; <label>:971                                     ; preds = %998, %970
  %972 = phi i32 [ %999, %998 ], [ 0, %970 ]
  %973 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %972, i32 0)  ; BufferLoad(srv,index,wot)
  %974 = extractvalue %dx.types.ResRet.f32 %973, 0
  %975 = extractvalue %dx.types.ResRet.f32 %973, 1
  %976 = extractvalue %dx.types.ResRet.f32 %973, 2
  %977 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %972, i32 16)  ; BufferLoad(srv,index,wot)
  %978 = extractvalue %dx.types.ResRet.f32 %977, 0
  %979 = extractvalue %dx.types.ResRet.f32 %977, 1
  %980 = extractvalue %dx.types.ResRet.f32 %977, 2
  %981 = fsub fast float %974, %978
  %982 = fsub fast float %975, %979
  %983 = fsub fast float %976, %980
  %984 = fadd fast float %978, %974
  %985 = fadd fast float %979, %975
  %986 = fadd fast float %980, %976
  %987 = fcmp fast olt float %307, %981
  %988 = fcmp fast olt float %308, %982
  %989 = fcmp fast olt float %309, %983
  %990 = or i1 %987, %988
  %991 = or i1 %989, %990
  %992 = fcmp fast ogt float %307, %984
  %993 = fcmp fast ogt float %308, %985
  %994 = fcmp fast ogt float %309, %986
  %995 = or i1 %992, %993
  %996 = or i1 %994, %995
  %997 = or i1 %991, %996
  br i1 %997, label %998, label %1001, !dx.controlflow.hints !71

; <label>:998                                     ; preds = %971
  %999 = add nuw i32 %972, 1
  %1000 = icmp ult i32 %999, %968
  br i1 %1000, label %971, label %1001

; <label>:1001                                    ; preds = %998, %971
  %1002 = phi i32 [ 255, %998 ], [ %972, %971 ]
  br label %1003

; <label>:1003                                    ; preds = %1001, %958
  %1004 = phi i32 [ 255, %958 ], [ %1002, %1001 ]
  %1005 = icmp eq i32 %1004, 255
  br i1 %1005, label %1015, label %1006, !dx.controlflow.hints !72

; <label>:1006                                    ; preds = %1003
  %1007 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1004, i32 32)  ; BufferLoad(srv,index,wot)
  %1008 = extractvalue %dx.types.ResRet.f32 %1007, 0
  %1009 = extractvalue %dx.types.ResRet.f32 %1007, 1
  %1010 = extractvalue %dx.types.ResRet.f32 %1007, 2
  %1011 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1004, i32 156)  ; BufferLoad(srv,index,wot)
  %1012 = extractvalue %dx.types.ResRet.i32 %1011, 0
  %1013 = icmp ne i32 %1012, 0
  %1014 = zext i1 %1013 to i32
  br label %1015

; <label>:1015                                    ; preds = %1006, %1003
  %1016 = phi float [ %1008, %1006 ], [ %960, %1003 ]
  %1017 = phi float [ %1009, %1006 ], [ %961, %1003 ]
  %1018 = phi float [ %1010, %1006 ], [ %962, %1003 ]
  %1019 = phi i32 [ %1014, %1006 ], [ %966, %1003 ]
  %1020 = icmp eq i32 %1019, 0
  br i1 %1020, label %1021, label %1090, !dx.controlflow.hints !73

; <label>:1021                                    ; preds = %1015
  %1022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1023 = extractvalue %dx.types.CBufRet.f32 %1022, 3
  %1024 = extractvalue %dx.types.CBufRet.f32 %340, 0
  %1025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1026 = extractvalue %dx.types.CBufRet.f32 %1025, 2
  %1027 = extractvalue %dx.types.CBufRet.f32 %1025, 3
  br i1 %1005, label %1038, label %1028, !dx.controlflow.hints !74

; <label>:1028                                    ; preds = %1021
  %1029 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1004, i32 60)  ; BufferLoad(srv,index,wot)
  %1030 = extractvalue %dx.types.ResRet.f32 %1029, 0
  %1031 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1004, i32 64)  ; BufferLoad(srv,index,wot)
  %1032 = extractvalue %dx.types.ResRet.f32 %1031, 0
  %1033 = extractvalue %dx.types.ResRet.f32 %1031, 1
  %1034 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1004, i32 72)  ; BufferLoad(srv,index,wot)
  %1035 = extractvalue %dx.types.ResRet.f32 %1034, 0
  %1036 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1004, i32 96)  ; BufferLoad(srv,index,wot)
  %1037 = extractvalue %dx.types.ResRet.f32 %1036, 0
  br label %1038

; <label>:1038                                    ; preds = %1028, %1021
  %1039 = phi float [ %1030, %1028 ], [ %343, %1021 ]
  %1040 = phi float [ %1035, %1028 ], [ %341, %1021 ]
  %1041 = phi float [ %1037, %1028 ], [ %1024, %1021 ]
  %1042 = phi float [ %1032, %1028 ], [ %1026, %1021 ]
  %1043 = phi float [ %1033, %1028 ], [ %1027, %1021 ]
  %1044 = call float @dx.op.binary.f32(i32 35, float %424, float 0.000000e+00)  ; FMax(a,b)
  %1045 = call float @dx.op.binary.f32(i32 36, float %1044, float 1.000000e+00)  ; FMin(a,b)
  %1046 = call float @dx.op.unary.f32(i32 24, float %1045)  ; Sqrt(value)
  %1047 = call float @dx.op.binary.f32(i32 35, float %427, float 0x3F847AE140000000)  ; FMax(a,b)
  %1048 = fsub fast float %425, %309
  %1049 = fsub fast float %309, %426
  %1050 = call float @dx.op.binary.f32(i32 36, float %1049, float %1048)  ; FMin(a,b)
  %1051 = fdiv fast float %1050, %1047
  %1052 = call float @dx.op.unary.f32(i32 7, float %1051)  ; Saturate(value)
  %1053 = fsub fast float %309, %1040
  %1054 = fdiv fast float %1053, %1039
  %1055 = call float @dx.op.unary.f32(i32 7, float %1054)  ; Saturate(value)
  %1056 = fsub fast float 1.000000e+00, %1055
  %1057 = fmul float %1052, %1056
  %1058 = fmul float %1057, %1057
  %1059 = fmul fast float %1046, %1023
  %1060 = fmul fast float %1059, %1058
  %1061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1062 = extractvalue %dx.types.CBufRet.f32 %1061, 2
  %1063 = extractvalue %dx.types.CBufRet.f32 %1061, 1
  %1064 = fsub fast float %1060, %1063
  %1065 = fsub fast float %1062, %1063
  %1066 = fdiv fast float %1064, %1065
  %1067 = call float @dx.op.unary.f32(i32 7, float %1066)  ; Saturate(value)
  %1068 = fmul fast float %1067, %1041
  %1069 = fcmp fast ogt float %1043, 0.000000e+00
  br i1 %1069, label %1070, label %1090, !dx.controlflow.hints !75

; <label>:1070                                    ; preds = %1038
  %1071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1072 = extractvalue %dx.types.CBufRet.f32 %1071, 0
  %1073 = extractvalue %dx.types.CBufRet.f32 %1071, 1
  %1074 = extractvalue %dx.types.CBufRet.f32 %1071, 2
  %1075 = fsub fast float %307, %1072
  %1076 = fsub fast float %308, %1073
  %1077 = fsub fast float %309, %1074
  %1078 = fmul fast float %1075, %1075
  %1079 = fmul fast float %1076, %1076
  %1080 = fadd fast float %1078, %1079
  %1081 = fmul fast float %1077, %1077
  %1082 = fadd fast float %1080, %1081
  %1083 = call float @dx.op.unary.f32(i32 24, float %1082)  ; Sqrt(value)
  %1084 = fsub fast float %1083, %1042
  %1085 = fsub fast float %1043, %1042
  %1086 = fdiv fast float %1084, %1085
  %1087 = call float @dx.op.unary.f32(i32 7, float %1086)  ; Saturate(value)
  %1088 = fmul fast float %1087, %1087
  %1089 = fmul fast float %1088, %1068
  br label %1090

; <label>:1090                                    ; preds = %1070, %1038, %1015
  %1091 = phi float [ 0.000000e+00, %1015 ], [ %1089, %1070 ], [ %1068, %1038 ]
  %1092 = fmul fast float %1091, %696
  %1093 = fmul fast float %1092, %1016
  %1094 = fmul fast float %1092, %1017
  %1095 = fmul fast float %1092, %1018
  %1096 = fadd fast float %1093, %955
  %1097 = fadd fast float %1094, %956
  %1098 = fadd fast float %1095, %957
  %1099 = fadd fast float %1092, %953
  br label %1100

; <label>:1100                                    ; preds = %1090, %952
  %1101 = phi float [ %1099, %1090 ], [ %953, %952 ]
  %1102 = phi float [ %1096, %1090 ], [ %955, %952 ]
  %1103 = phi float [ %1097, %1090 ], [ %956, %952 ]
  %1104 = phi float [ %1098, %1090 ], [ %957, %952 ]
  %1105 = icmp eq i32 %682, 0
  br i1 %1105, label %1149, label %1106, !dx.controlflow.hints !76

; <label>:1106                                    ; preds = %1100
  %1107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %1108 = extractvalue %dx.types.CBufRet.f32 %1107, 1
  %1109 = fsub fast float %696, %1108
  %1110 = extractvalue %dx.types.CBufRet.f32 %1107, 3
  %1111 = fmul fast float %1109, %1110
  %1112 = call float @dx.op.unary.f32(i32 7, float %1111)  ; Saturate(value)
  %1113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %1114 = extractvalue %dx.types.CBufRet.f32 %1113, 3
  %1115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1116 = extractvalue %dx.types.CBufRet.f32 %1115, 2
  %1117 = fsub fast float %1116, %684
  %1118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %1119 = extractvalue %dx.types.CBufRet.f32 %1118, 3
  %1120 = fmul fast float %1117, %1119
  %1121 = call float @dx.op.unary.f32(i32 7, float %1120)  ; Saturate(value)
  %1122 = fmul fast float %1121, %1114
  %1123 = extractvalue %dx.types.CBufRet.f32 %1118, 0
  %1124 = fsub fast float %310, %1123
  %1125 = extractvalue %dx.types.CBufRet.f32 %1118, 1
  %1126 = fmul fast float %1124, %1125
  %1127 = call float @dx.op.unary.f32(i32 7, float %1126)  ; Saturate(value)
  %1128 = fsub fast float 1.000000e+00, %1112
  %1129 = fmul fast float %1127, %1128
  %1130 = fadd fast float %1129, %1112
  %1131 = extractvalue %dx.types.CBufRet.f32 %1107, 0
  %1132 = fsub fast float %1122, %1131
  %1133 = fmul fast float %1132, %1130
  %1134 = fadd fast float %1133, %1131
  %1135 = extractvalue %dx.types.CBufRet.f32 %1113, 0
  %1136 = extractvalue %dx.types.CBufRet.f32 %1113, 1
  %1137 = extractvalue %dx.types.CBufRet.f32 %1113, 2
  %1138 = fmul fast float %1134, %696
  %1139 = extractvalue %dx.types.CBufRet.f32 %1118, 2
  %1140 = fmul fast float %1138, %1135
  %1141 = fmul fast float %1138, %1136
  %1142 = fmul fast float %1138, %1137
  %1143 = fadd fast float %1140, %1102
  %1144 = fadd fast float %1141, %1103
  %1145 = fadd fast float %1142, %1104
  %1146 = fmul fast float %1138, %1139
  %1147 = fadd fast float %1146, %954
  %1148 = fadd fast float %1138, %1101
  br label %1149

; <label>:1149                                    ; preds = %1106, %1100
  %1150 = phi float [ %1148, %1106 ], [ %1101, %1100 ]
  %1151 = phi float [ %1147, %1106 ], [ %954, %1100 ]
  %1152 = phi float [ %1143, %1106 ], [ %1102, %1100 ]
  %1153 = phi float [ %1144, %1106 ], [ %1103, %1100 ]
  %1154 = phi float [ %1145, %1106 ], [ %1104, %1100 ]
  %1155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1156 = extractvalue %dx.types.CBufRet.f32 %1155, 1
  %1157 = fcmp fast ogt float %1150, %1156
  br i1 %1157, label %1158, label %1164, !dx.controlflow.hints !77

; <label>:1158                                    ; preds = %1149
  %1159 = fdiv fast float 1.000000e+00, %1150
  %1160 = fmul fast float %1159, %1152
  %1161 = fmul fast float %1159, %1153
  %1162 = fmul fast float %1159, %1154
  %1163 = fmul fast float %1159, %1151
  br label %1164

; <label>:1164                                    ; preds = %1158, %1149
  %1165 = phi float [ %1163, %1158 ], [ %1151, %1149 ]
  %1166 = phi float [ %1160, %1158 ], [ %1152, %1149 ]
  %1167 = phi float [ %1161, %1158 ], [ %1153, %1149 ]
  %1168 = phi float [ %1162, %1158 ], [ %1154, %1149 ]
  br i1 %1157, label %1171, label %1169, !dx.controlflow.hints !78

; <label>:1169                                    ; preds = %1164
  %1170 = fadd fast float %696, %310
  br label %2855

; <label>:1171                                    ; preds = %1164
  %1172 = fmul fast float %1150, 0xBFF7154760000000
  %1173 = call float @dx.op.unary.f32(i32 21, float %1172)  ; Exp(value)
  %1174 = call float @dx.op.unary.f32(i32 7, float %1173)  ; Saturate(value)
  %1175 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %1176 = extractvalue %dx.types.CBufRet.i32 %1175, 0
  %1177 = icmp eq i32 %1176, 1
  br i1 %1177, label %1178, label %1213, !dx.controlflow.hints !79

; <label>:1178                                    ; preds = %1171
  %1179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1180 = extractvalue %dx.types.CBufRet.f32 %1179, 0
  %1181 = extractvalue %dx.types.CBufRet.f32 %1179, 1
  %1182 = fsub fast float %307, %1180
  %1183 = fsub fast float %308, %1181
  %1184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1185 = extractvalue %dx.types.CBufRet.f32 %1184, 0
  %1186 = extractvalue %dx.types.CBufRet.f32 %1184, 1
  %1187 = fmul fast float %1182, %1185
  %1188 = fmul fast float %1183, %1186
  %1189 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %26, float %1187, float %1188, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1190 = extractvalue %dx.types.ResRet.f32 %1189, 0
  %1191 = fcmp fast ogt float %1190, 0.000000e+00
  %1192 = extractvalue %dx.types.CBufRet.i32 %1175, 3
  %1193 = icmp ne i32 %1192, 0
  %1194 = and i1 %1191, %1193
  br i1 %1194, label %1195, label %1213, !dx.controlflow.hints !80

; <label>:1195                                    ; preds = %1178
  %1196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1197 = extractvalue %dx.types.CBufRet.f32 %1196, 0
  %1198 = extractvalue %dx.types.CBufRet.f32 %1196, 1
  %1199 = fsub fast float %307, %1197
  %1200 = fsub fast float %308, %1198
  %1201 = fmul fast float %1199, %1199
  %1202 = fmul fast float %1200, %1200
  %1203 = fadd fast float %1201, %1202
  %1204 = uitofp i32 %1192 to float
  %1205 = fmul fast float %1204, %1204
  %1206 = fcmp fast ogt float %1203, %1205
  br i1 %1206, label %1213, label %1207, !dx.controlflow.hints !81

; <label>:1207                                    ; preds = %1195
  %1208 = call float @dx.op.unary.f32(i32 24, float %1203)  ; Sqrt(value)
  %1209 = fsub fast float %1204, %1208
  %1210 = fmul fast float %1209, 0x3F75555560000000
  %1211 = call float @dx.op.unary.f32(i32 7, float %1210)  ; Saturate(value)
  %1212 = call float @dx.op.binary.f32(i32 36, float %1211, float %1190)  ; FMin(a,b)
  br label %1213

; <label>:1213                                    ; preds = %1207, %1195, %1178, %1171
  %1214 = phi float [ 1.000000e+00, %1171 ], [ %1212, %1207 ], [ %1190, %1178 ], [ 0.000000e+00, %1195 ]
  %1215 = fcmp fast ogt float %1214, 0.000000e+00
  br i1 %1215, label %1216, label %1289, !dx.controlflow.hints !82

; <label>:1216                                    ; preds = %1213
  %1217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %1218 = extractvalue %dx.types.ResRet.i32 %1217, 0
  %1219 = extractvalue %dx.types.ResRet.i32 %1217, 1
  %1220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %1221 = extractvalue %dx.types.ResRet.i32 %1220, 0
  %1222 = extractvalue %dx.types.ResRet.i32 %1220, 1
  %1223 = extractvalue %dx.types.ResRet.i32 %1220, 2
  %1224 = extractvalue %dx.types.ResRet.i32 %1220, 3
  %1225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %1226 = extractvalue %dx.types.ResRet.i32 %1225, 0
  %1227 = extractvalue %dx.types.ResRet.i32 %1225, 1
  %1228 = extractvalue %dx.types.ResRet.i32 %1225, 2
  %1229 = extractvalue %dx.types.ResRet.i32 %1225, 3
  %1230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %1231 = extractvalue %dx.types.ResRet.i32 %1230, 0
  %1232 = extractvalue %dx.types.ResRet.i32 %1230, 1
  %1233 = extractvalue %dx.types.ResRet.i32 %1230, 2
  %1234 = extractvalue %dx.types.ResRet.i32 %1230, 3
  %1235 = and i32 %1231, 65535
  %1236 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1235)  ; LegacyF16ToF32(value)
  %1237 = lshr i32 %1231, 16
  %1238 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1237)  ; LegacyF16ToF32(value)
  %1239 = and i32 %1232, 65535
  %1240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1239)  ; LegacyF16ToF32(value)
  %1241 = lshr i32 %1232, 16
  %1242 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1241)  ; LegacyF16ToF32(value)
  %1243 = and i32 %1233, 65535
  %1244 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1243)  ; LegacyF16ToF32(value)
  %1245 = lshr i32 %1233, 16
  %1246 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1245)  ; LegacyF16ToF32(value)
  %1247 = and i32 %1234, 65535
  %1248 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1247)  ; LegacyF16ToF32(value)
  %1249 = lshr i32 %1234, 16
  %1250 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1249)  ; LegacyF16ToF32(value)
  %1251 = and i32 %1226, 65535
  %1252 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1251)  ; LegacyF16ToF32(value)
  %1253 = lshr i32 %1226, 16
  %1254 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1253)  ; LegacyF16ToF32(value)
  %1255 = and i32 %1227, 65535
  %1256 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1255)  ; LegacyF16ToF32(value)
  %1257 = lshr i32 %1227, 16
  %1258 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1257)  ; LegacyF16ToF32(value)
  %1259 = and i32 %1228, 65535
  %1260 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1259)  ; LegacyF16ToF32(value)
  %1261 = lshr i32 %1228, 16
  %1262 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1261)  ; LegacyF16ToF32(value)
  %1263 = and i32 %1229, 65535
  %1264 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1263)  ; LegacyF16ToF32(value)
  %1265 = lshr i32 %1229, 16
  %1266 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1265)  ; LegacyF16ToF32(value)
  %1267 = and i32 %1221, 65535
  %1268 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1267)  ; LegacyF16ToF32(value)
  %1269 = lshr i32 %1221, 16
  %1270 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1269)  ; LegacyF16ToF32(value)
  %1271 = and i32 %1222, 65535
  %1272 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1271)  ; LegacyF16ToF32(value)
  %1273 = lshr i32 %1222, 16
  %1274 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1273)  ; LegacyF16ToF32(value)
  %1275 = and i32 %1223, 65535
  %1276 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1275)  ; LegacyF16ToF32(value)
  %1277 = lshr i32 %1223, 16
  %1278 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1277)  ; LegacyF16ToF32(value)
  %1279 = and i32 %1224, 65535
  %1280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1279)  ; LegacyF16ToF32(value)
  %1281 = lshr i32 %1224, 16
  %1282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1281)  ; LegacyF16ToF32(value)
  %1283 = and i32 %1218, 65535
  %1284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1283)  ; LegacyF16ToF32(value)
  %1285 = lshr i32 %1218, 16
  %1286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1285)  ; LegacyF16ToF32(value)
  %1287 = and i32 %1219, 65535
  %1288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1287)  ; LegacyF16ToF32(value)
  br label %1289

; <label>:1289                                    ; preds = %1216, %1213
  %1290 = phi float [ %1288, %1216 ], [ 0.000000e+00, %1213 ]
  %1291 = phi float [ %1286, %1216 ], [ 0.000000e+00, %1213 ]
  %1292 = phi float [ %1284, %1216 ], [ 0.000000e+00, %1213 ]
  %1293 = phi float [ %1282, %1216 ], [ 0.000000e+00, %1213 ]
  %1294 = phi float [ %1280, %1216 ], [ 0.000000e+00, %1213 ]
  %1295 = phi float [ %1278, %1216 ], [ 0.000000e+00, %1213 ]
  %1296 = phi float [ %1276, %1216 ], [ 0.000000e+00, %1213 ]
  %1297 = phi float [ %1274, %1216 ], [ 0.000000e+00, %1213 ]
  %1298 = phi float [ %1272, %1216 ], [ 0.000000e+00, %1213 ]
  %1299 = phi float [ %1270, %1216 ], [ 0.000000e+00, %1213 ]
  %1300 = phi float [ %1268, %1216 ], [ 0.000000e+00, %1213 ]
  %1301 = phi float [ %1266, %1216 ], [ 0.000000e+00, %1213 ]
  %1302 = phi float [ %1264, %1216 ], [ 0.000000e+00, %1213 ]
  %1303 = phi float [ %1262, %1216 ], [ 0.000000e+00, %1213 ]
  %1304 = phi float [ %1260, %1216 ], [ 0.000000e+00, %1213 ]
  %1305 = phi float [ %1258, %1216 ], [ 0.000000e+00, %1213 ]
  %1306 = phi float [ %1256, %1216 ], [ 0.000000e+00, %1213 ]
  %1307 = phi float [ %1254, %1216 ], [ 0.000000e+00, %1213 ]
  %1308 = phi float [ %1252, %1216 ], [ 0.000000e+00, %1213 ]
  %1309 = phi float [ %1250, %1216 ], [ 0.000000e+00, %1213 ]
  %1310 = phi float [ %1248, %1216 ], [ 0.000000e+00, %1213 ]
  %1311 = phi float [ %1246, %1216 ], [ 0.000000e+00, %1213 ]
  %1312 = phi float [ %1244, %1216 ], [ 0.000000e+00, %1213 ]
  %1313 = phi float [ %1242, %1216 ], [ 0.000000e+00, %1213 ]
  %1314 = phi float [ %1240, %1216 ], [ 0.000000e+00, %1213 ]
  %1315 = phi float [ %1238, %1216 ], [ 0.000000e+00, %1213 ]
  %1316 = phi float [ %1236, %1216 ], [ 0.000000e+00, %1213 ]
  %1317 = fcmp fast olt float %1214, 1.000000e+00
  br i1 %1317, label %1318, label %1978, !dx.controlflow.hints !83

; <label>:1318                                    ; preds = %1289
  %1319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1320 = extractvalue %dx.types.CBufRet.f32 %1319, 0
  %1321 = extractvalue %dx.types.CBufRet.f32 %1319, 1
  %1322 = fsub fast float %307, %1320
  %1323 = fsub fast float %308, %1321
  %1324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1325 = extractvalue %dx.types.CBufRet.f32 %1324, 0
  %1326 = extractvalue %dx.types.CBufRet.f32 %1324, 1
  %1327 = fmul fast float %1322, %1325
  %1328 = fmul fast float %1323, %1326
  %1329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1330 = extractvalue %dx.types.CBufRet.f32 %1329, 0
  %1331 = fmul fast float %1330, %1327
  %1332 = extractvalue %dx.types.CBufRet.f32 %1329, 1
  %1333 = fadd fast float %1331, %1332
  %1334 = extractvalue %dx.types.CBufRet.f32 %1329, 2
  %1335 = fmul fast float %1334, %1328
  %1336 = extractvalue %dx.types.CBufRet.f32 %1329, 3
  %1337 = fadd fast float %1335, %1336
  %1338 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %26, float %1333, float %1337, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1339 = extractvalue %dx.types.ResRet.f32 %1338, 0
  %1340 = extractvalue %dx.types.ResRet.f32 %1338, 1
  %1341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1342 = extractvalue %dx.types.CBufRet.f32 %1341, 1
  %1343 = extractvalue %dx.types.CBufRet.f32 %1341, 0
  %1344 = fsub fast float %1342, %1343
  %1345 = fmul fast float %1344, %1339
  %1346 = fadd fast float %1345, %1343
  %1347 = extractvalue %dx.types.CBufRet.f32 %1341, 3
  %1348 = extractvalue %dx.types.CBufRet.f32 %1341, 2
  %1349 = fsub fast float %1347, %1348
  %1350 = fmul fast float %1349, %1340
  %1351 = fadd fast float %1350, %1348
  %1352 = fsub fast float %309, %1346
  %1353 = fsub fast float %1351, %1346
  %1354 = fdiv fast float %1352, %1353
  %1355 = call float @dx.op.unary.f32(i32 7, float %1354)  ; Saturate(value)
  %1356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %1357 = extractvalue %dx.types.CBufRet.f32 %1356, 0
  %1358 = fmul fast float %1357, %1355
  %1359 = extractvalue %dx.types.CBufRet.f32 %1356, 1
  %1360 = fadd fast float %1358, %1359
  %1361 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %26, float %1333, float %1337, float %1360, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1362 = extractvalue %dx.types.ResRet.f32 %1361, 0
  %1363 = extractvalue %dx.types.ResRet.f32 %1361, 1
  %1364 = extractvalue %dx.types.ResRet.f32 %1361, 2
  %1365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %1366 = extractvalue %dx.types.CBufRet.f32 %1365, 0
  %1367 = extractvalue %dx.types.CBufRet.f32 %1365, 1
  %1368 = extractvalue %dx.types.CBufRet.f32 %1365, 2
  %1369 = fmul fast float %1366, %1362
  %1370 = fmul fast float %1367, %1363
  %1371 = fmul fast float %1368, %1364
  %1372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %1373 = extractvalue %dx.types.CBufRet.f32 %1372, 0
  %1374 = extractvalue %dx.types.CBufRet.f32 %1372, 1
  %1375 = extractvalue %dx.types.CBufRet.f32 %1372, 2
  %1376 = fadd fast float %1369, %1373
  %1377 = fadd fast float %1370, %1374
  %1378 = fadd fast float %1371, %1375
  %1379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %1380 = extractvalue %dx.types.CBufRet.f32 %1379, 0
  %1381 = fmul fast float %1380, %1327
  %1382 = extractvalue %dx.types.CBufRet.f32 %1379, 1
  %1383 = fadd fast float %1381, %1382
  %1384 = extractvalue %dx.types.CBufRet.f32 %1379, 2
  %1385 = fmul fast float %1384, %1328
  %1386 = extractvalue %dx.types.CBufRet.f32 %1379, 3
  %1387 = fadd fast float %1385, %1386
  %1388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %1389 = extractvalue %dx.types.CBufRet.f32 %1388, 0
  %1390 = extractvalue %dx.types.CBufRet.f32 %1388, 1
  %1391 = extractvalue %dx.types.CBufRet.f32 %1388, 2
  %1392 = extractvalue %dx.types.CBufRet.f32 %1388, 3
  %1393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %1394 = extractvalue %dx.types.CBufRet.f32 %1393, 0
  %1395 = extractvalue %dx.types.CBufRet.f32 %1393, 1
  %1396 = extractvalue %dx.types.CBufRet.f32 %1393, 2
  %1397 = extractvalue %dx.types.CBufRet.f32 %1393, 3
  %1398 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %26, float %1383, float %1387, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1399 = extractvalue %dx.types.ResRet.f32 %1398, 0
  %1400 = extractvalue %dx.types.ResRet.f32 %1398, 1
  %1401 = extractvalue %dx.types.ResRet.f32 %1398, 2
  %1402 = extractvalue %dx.types.ResRet.f32 %1398, 3
  %1403 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %26, float %1383, float %1387, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1404 = extractvalue %dx.types.ResRet.f32 %1403, 0
  %1405 = extractvalue %dx.types.ResRet.f32 %1403, 1
  %1406 = extractvalue %dx.types.ResRet.f32 %1403, 2
  %1407 = extractvalue %dx.types.ResRet.f32 %1403, 3
  %1408 = fmul fast float %1399, %1376
  %1409 = fmul fast float %1404, %1376
  %1410 = fmul fast float %1406, %1376
  %1411 = fmul fast float %1402, %1376
  %1412 = fadd fast float %1408, %1389
  %1413 = fadd fast float %1409, %1390
  %1414 = fadd fast float %1410, %1391
  %1415 = fadd fast float %1411, %1392
  %1416 = fmul fast float %1400, %1376
  %1417 = fmul fast float %1405, %1376
  %1418 = fadd fast float %1416, %1394
  %1419 = fadd fast float %1417, %1395
  %1420 = fmul fast float %1401, %1376
  %1421 = fmul fast float %1407, %1376
  %1422 = fadd fast float %1420, %1396
  %1423 = fadd fast float %1421, %1397
  %1424 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %26, float %1383, float %1387, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1425 = extractvalue %dx.types.ResRet.f32 %1424, 0
  %1426 = extractvalue %dx.types.ResRet.f32 %1424, 1
  %1427 = extractvalue %dx.types.ResRet.f32 %1424, 2
  %1428 = extractvalue %dx.types.ResRet.f32 %1424, 3
  %1429 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %26, float %1383, float %1387, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1430 = extractvalue %dx.types.ResRet.f32 %1429, 0
  %1431 = extractvalue %dx.types.ResRet.f32 %1429, 1
  %1432 = extractvalue %dx.types.ResRet.f32 %1429, 2
  %1433 = extractvalue %dx.types.ResRet.f32 %1429, 3
  %1434 = fmul fast float %1425, %1377
  %1435 = fmul fast float %1430, %1377
  %1436 = fmul fast float %1432, %1377
  %1437 = fmul fast float %1428, %1377
  %1438 = fadd fast float %1412, %1434
  %1439 = fadd fast float %1413, %1435
  %1440 = fadd fast float %1414, %1436
  %1441 = fadd fast float %1415, %1437
  %1442 = fmul fast float %1426, %1377
  %1443 = fmul fast float %1431, %1377
  %1444 = fadd fast float %1418, %1442
  %1445 = fadd fast float %1419, %1443
  %1446 = fmul fast float %1427, %1377
  %1447 = fmul fast float %1433, %1377
  %1448 = fadd fast float %1422, %1446
  %1449 = fadd fast float %1423, %1447
  %1450 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %26, float %1383, float %1387, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1451 = extractvalue %dx.types.ResRet.f32 %1450, 0
  %1452 = extractvalue %dx.types.ResRet.f32 %1450, 1
  %1453 = extractvalue %dx.types.ResRet.f32 %1450, 2
  %1454 = extractvalue %dx.types.ResRet.f32 %1450, 3
  %1455 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %26, float %1383, float %1387, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1456 = extractvalue %dx.types.ResRet.f32 %1455, 0
  %1457 = extractvalue %dx.types.ResRet.f32 %1455, 1
  %1458 = extractvalue %dx.types.ResRet.f32 %1455, 2
  %1459 = extractvalue %dx.types.ResRet.f32 %1455, 3
  %1460 = fmul fast float %1451, %1378
  %1461 = fmul fast float %1456, %1378
  %1462 = fmul fast float %1458, %1378
  %1463 = fmul fast float %1454, %1378
  %1464 = fadd fast float %1438, %1460
  %1465 = fadd fast float %1439, %1461
  %1466 = fadd fast float %1440, %1462
  %1467 = fadd fast float %1441, %1463
  %1468 = fmul fast float %1452, %1378
  %1469 = fmul fast float %1457, %1378
  %1470 = fadd fast float %1444, %1468
  %1471 = fadd fast float %1445, %1469
  %1472 = fmul fast float %1453, %1378
  %1473 = fmul fast float %1459, %1378
  %1474 = fadd fast float %1448, %1472
  %1475 = fadd fast float %1449, %1473
  %1476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %1477 = extractvalue %dx.types.CBufRet.f32 %1476, 0
  %1478 = fsub fast float %307, %1477
  %1479 = fsub fast float %1320, %307
  %1480 = call float @dx.op.binary.f32(i32 35, float %1479, float %1478)  ; FMax(a,b)
  %1481 = extractvalue %dx.types.CBufRet.f32 %1476, 1
  %1482 = fsub fast float %308, %1481
  %1483 = fsub fast float %1321, %308
  %1484 = call float @dx.op.binary.f32(i32 35, float %1483, float %1482)  ; FMax(a,b)
  %1485 = call float @dx.op.binary.f32(i32 35, float %1480, float %1484)  ; FMax(a,b)
  %1486 = extractvalue %dx.types.CBufRet.f32 %1324, 3
  %1487 = fmul fast float %1486, %1485
  %1488 = call float @dx.op.unary.f32(i32 7, float %1487)  ; Saturate(value)
  %1489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %1490 = extractvalue %dx.types.CBufRet.f32 %1489, 0
  %1491 = extractvalue %dx.types.CBufRet.f32 %1489, 1
  %1492 = extractvalue %dx.types.CBufRet.f32 %1489, 2
  %1493 = extractvalue %dx.types.CBufRet.f32 %1489, 3
  %1494 = fsub fast float %1490, %1464
  %1495 = fsub fast float %1491, %1465
  %1496 = fsub fast float %1492, %1466
  %1497 = fsub fast float %1493, %1467
  %1498 = fmul fast float %1494, %1488
  %1499 = fmul fast float %1495, %1488
  %1500 = fmul fast float %1496, %1488
  %1501 = fmul fast float %1497, %1488
  %1502 = fadd fast float %1498, %1464
  %1503 = fadd fast float %1499, %1465
  %1504 = fadd fast float %1500, %1466
  %1505 = fadd fast float %1501, %1467
  %1506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %1507 = extractvalue %dx.types.CBufRet.f32 %1506, 0
  %1508 = extractvalue %dx.types.CBufRet.f32 %1506, 1
  %1509 = fsub fast float %1507, %1470
  %1510 = fsub fast float %1508, %1471
  %1511 = fmul fast float %1509, %1488
  %1512 = fmul fast float %1510, %1488
  %1513 = fadd fast float %1511, %1470
  %1514 = fadd fast float %1512, %1471
  %1515 = extractvalue %dx.types.CBufRet.f32 %1506, 2
  %1516 = extractvalue %dx.types.CBufRet.f32 %1506, 3
  %1517 = fsub fast float %1515, %1474
  %1518 = fsub fast float %1516, %1475
  %1519 = fmul fast float %1517, %1488
  %1520 = fmul fast float %1518, %1488
  %1521 = fadd fast float %1519, %1474
  %1522 = fadd fast float %1520, %1475
  %1523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %1524 = extractvalue %dx.types.CBufRet.f32 %1523, 0
  %1525 = fmul fast float %1524, %1502
  %1526 = fmul fast float %1524, %1503
  %1527 = fmul fast float %1524, %1504
  %1528 = fmul fast float %1524, %1505
  %1529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %1530 = extractvalue %dx.types.CBufRet.f32 %1529, 0
  %1531 = fmul fast float %1530, %1513
  %1532 = fmul fast float %1530, %1514
  %1533 = fadd fast float %1531, %1525
  %1534 = fadd fast float %1532, %1527
  %1535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %1536 = extractvalue %dx.types.CBufRet.f32 %1535, 0
  %1537 = fmul fast float %1536, %1521
  %1538 = fmul fast float %1536, %1522
  %1539 = fadd fast float %1533, %1537
  %1540 = fadd fast float %1534, %1538
  %1541 = extractvalue %dx.types.CBufRet.f32 %1523, 1
  %1542 = fmul fast float %1541, %1502
  %1543 = fmul fast float %1541, %1503
  %1544 = fmul fast float %1541, %1504
  %1545 = fmul fast float %1541, %1505
  %1546 = extractvalue %dx.types.CBufRet.f32 %1529, 1
  %1547 = fmul fast float %1546, %1513
  %1548 = fmul fast float %1546, %1514
  %1549 = fadd fast float %1547, %1542
  %1550 = fadd fast float %1548, %1544
  %1551 = extractvalue %dx.types.CBufRet.f32 %1535, 1
  %1552 = fmul fast float %1551, %1521
  %1553 = fmul fast float %1551, %1522
  %1554 = fadd fast float %1549, %1552
  %1555 = fadd fast float %1550, %1553
  %1556 = extractvalue %dx.types.CBufRet.f32 %1523, 2
  %1557 = fmul fast float %1556, %1502
  %1558 = fmul fast float %1556, %1503
  %1559 = fmul fast float %1556, %1504
  %1560 = fmul fast float %1556, %1505
  %1561 = extractvalue %dx.types.CBufRet.f32 %1529, 2
  %1562 = fmul fast float %1561, %1513
  %1563 = fmul fast float %1561, %1514
  %1564 = fadd fast float %1562, %1557
  %1565 = fadd fast float %1563, %1559
  %1566 = extractvalue %dx.types.CBufRet.f32 %1535, 2
  %1567 = fmul fast float %1566, %1521
  %1568 = fmul fast float %1566, %1522
  %1569 = fadd fast float %1564, %1567
  %1570 = fadd fast float %1565, %1568
  %1571 = fmul fast float %1558, %1558
  %1572 = fmul fast float %1570, %1570
  %1573 = fmul fast float %1560, %1560
  %1574 = fadd fast float %1573, %1571
  %1575 = fadd fast float %1574, %1572
  %1576 = call float @dx.op.unary.f32(i32 24, float %1575)  ; Sqrt(value)
  %1577 = fcmp fast ugt float %1576, 0.000000e+00
  br i1 %1577, label %1578, label %1593, !dx.controlflow.hints !84

; <label>:1578                                    ; preds = %1318
  %1579 = fsub fast float -0.000000e+00, %1560
  %1580 = fdiv fast float %1579, %1576
  %1581 = fsub fast float -0.000000e+00, %1558
  %1582 = fdiv fast float %1581, %1576
  %1583 = fdiv fast float %1570, %1576
  %1584 = fmul fast float %1569, 0x3FE279A760000000
  %1585 = fmul fast float %1582, %1558
  %1586 = fmul fast float %1583, %1570
  %1587 = fmul fast float %1580, %1560
  %1588 = fadd fast float %1585, %1587
  %1589 = fsub fast float %1588, %1586
  %1590 = call float @dx.op.unary.f32(i32 6, float %1589)  ; FAbs(value)
  %1591 = fadd fast float %1590, 0x3DDB7CDFE0000000
  %1592 = fdiv fast float %1584, %1591
  br label %1593

; <label>:1593                                    ; preds = %1578, %1318
  %1594 = phi float [ %1592, %1578 ], [ 1.000000e+00, %1318 ]
  %1595 = fmul fast float %1543, %1543
  %1596 = fmul fast float %1555, %1555
  %1597 = fmul fast float %1545, %1545
  %1598 = fadd fast float %1597, %1595
  %1599 = fadd fast float %1598, %1596
  %1600 = call float @dx.op.unary.f32(i32 24, float %1599)  ; Sqrt(value)
  %1601 = fcmp fast ugt float %1600, 0.000000e+00
  br i1 %1601, label %1602, label %1617, !dx.controlflow.hints !84

; <label>:1602                                    ; preds = %1593
  %1603 = fsub fast float -0.000000e+00, %1545
  %1604 = fdiv fast float %1603, %1600
  %1605 = fsub fast float -0.000000e+00, %1543
  %1606 = fdiv fast float %1605, %1600
  %1607 = fdiv fast float %1555, %1600
  %1608 = fmul fast float %1554, 0x3FE279A760000000
  %1609 = fmul fast float %1606, %1543
  %1610 = fmul fast float %1607, %1555
  %1611 = fmul fast float %1604, %1545
  %1612 = fadd fast float %1609, %1611
  %1613 = fsub fast float %1612, %1610
  %1614 = call float @dx.op.unary.f32(i32 6, float %1613)  ; FAbs(value)
  %1615 = fadd fast float %1614, 0x3DDB7CDFE0000000
  %1616 = fdiv fast float %1608, %1615
  br label %1617

; <label>:1617                                    ; preds = %1602, %1593
  %1618 = phi float [ %1616, %1602 ], [ 1.000000e+00, %1593 ]
  %1619 = call float @dx.op.binary.f32(i32 36, float %1618, float %1594)  ; FMin(a,b)
  %1620 = fmul fast float %1526, %1526
  %1621 = fmul fast float %1540, %1540
  %1622 = fmul fast float %1528, %1528
  %1623 = fadd fast float %1622, %1620
  %1624 = fadd fast float %1623, %1621
  %1625 = call float @dx.op.unary.f32(i32 24, float %1624)  ; Sqrt(value)
  %1626 = fcmp fast ugt float %1625, 0.000000e+00
  br i1 %1626, label %1627, label %1642, !dx.controlflow.hints !84

; <label>:1627                                    ; preds = %1617
  %1628 = fsub fast float -0.000000e+00, %1528
  %1629 = fdiv fast float %1628, %1625
  %1630 = fsub fast float -0.000000e+00, %1526
  %1631 = fdiv fast float %1630, %1625
  %1632 = fdiv fast float %1540, %1625
  %1633 = fmul fast float %1539, 0x3FE279A760000000
  %1634 = fmul fast float %1631, %1526
  %1635 = fmul fast float %1632, %1540
  %1636 = fmul fast float %1629, %1528
  %1637 = fadd fast float %1634, %1636
  %1638 = fsub fast float %1637, %1635
  %1639 = call float @dx.op.unary.f32(i32 6, float %1638)  ; FAbs(value)
  %1640 = fadd fast float %1639, 0x3DDB7CDFE0000000
  %1641 = fdiv fast float %1633, %1640
  br label %1642

; <label>:1642                                    ; preds = %1627, %1617
  %1643 = phi float [ %1641, %1627 ], [ 1.000000e+00, %1617 ]
  %1644 = call float @dx.op.binary.f32(i32 36, float %1643, float %1619)  ; FMin(a,b)
  %1645 = call float @dx.op.unary.f32(i32 7, float %1644)  ; Saturate(value)
  %1646 = fcmp fast olt float %1645, 1.000000e+00
  br i1 %1646, label %1647, label %1657, !dx.controlflow.hints !85

; <label>:1647                                    ; preds = %1642
  %1648 = fmul fast float %1645, %1526
  %1649 = fmul fast float %1645, %1540
  %1650 = fmul fast float %1645, %1528
  %1651 = fmul fast float %1645, %1543
  %1652 = fmul fast float %1645, %1555
  %1653 = fmul fast float %1645, %1545
  %1654 = fmul fast float %1645, %1558
  %1655 = fmul fast float %1645, %1570
  %1656 = fmul fast float %1645, %1560
  br label %1657

; <label>:1657                                    ; preds = %1647, %1642
  %1658 = phi float [ %1654, %1647 ], [ %1558, %1642 ]
  %1659 = phi float [ %1655, %1647 ], [ %1570, %1642 ]
  %1660 = phi float [ %1656, %1647 ], [ %1560, %1642 ]
  %1661 = phi float [ %1651, %1647 ], [ %1543, %1642 ]
  %1662 = phi float [ %1652, %1647 ], [ %1555, %1642 ]
  %1663 = phi float [ %1653, %1647 ], [ %1545, %1642 ]
  %1664 = phi float [ %1648, %1647 ], [ %1526, %1642 ]
  %1665 = phi float [ %1649, %1647 ], [ %1540, %1642 ]
  %1666 = phi float [ %1650, %1647 ], [ %1528, %1642 ]
  %1667 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1539)  ; FMax(a,b)
  %1668 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1554)  ; FMax(a,b)
  %1669 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1569)  ; FMax(a,b)
  %1670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %1671 = extractvalue %dx.types.CBufRet.f32 %1670, 0
  %1672 = fcmp fast ogt float %1671, 0.000000e+00
  %1673 = fcmp fast oge float %1327, 0.000000e+00
  %1674 = and i1 %1673, %1672
  %1675 = fcmp fast ole float %1327, 1.000000e+00
  %1676 = and i1 %1675, %1674
  %1677 = fcmp fast oge float %1328, 0.000000e+00
  %1678 = and i1 %1677, %1676
  %1679 = fcmp fast ole float %1328, 1.000000e+00
  %1680 = and i1 %1679, %1678
  br i1 %1680, label %1681, label %1826, !dx.controlflow.hints !86

; <label>:1681                                    ; preds = %1657
  %1682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1683 = extractvalue %dx.types.CBufRet.f32 %1682, 2
  %1684 = extractvalue %dx.types.CBufRet.f32 %1682, 3
  %1685 = fmul fast float %1683, %1327
  %1686 = fmul fast float %1684, %1328
  %1687 = call float @dx.op.unary.f32(i32 27, float %1685)  ; Round_ni(value)
  %1688 = call float @dx.op.unary.f32(i32 27, float %1686)  ; Round_ni(value)
  %1689 = fptosi float %1687 to i32
  %1690 = fptosi float %1688 to i32
  %1691 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %1689, i32 %1690, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1692 = extractvalue %dx.types.ResRet.i32 %1691, 0
  %1693 = and i32 %1692, 65535
  %1694 = lshr i32 %1692, 16
  %1695 = icmp eq i32 %1693, 65535
  br i1 %1695, label %1732, label %1696, !dx.controlflow.hints !87

; <label>:1696                                    ; preds = %1681
  %1697 = extractvalue %dx.types.CBufRet.f32 %1670, 1
  %1698 = extractvalue %dx.types.CBufRet.f32 %1682, 0
  %1699 = extractvalue %dx.types.CBufRet.f32 %1682, 1
  %1700 = fmul fast float %1698, %1327
  %1701 = fmul fast float %1699, %1328
  %1702 = fmul fast float %1700, 1.250000e-01
  %1703 = fmul fast float %1701, 1.250000e-01
  %1704 = call float @dx.op.unary.f32(i32 27, float %1702)  ; Round_ni(value)
  %1705 = call float @dx.op.unary.f32(i32 27, float %1703)  ; Round_ni(value)
  %1706 = fmul fast float %1704, 8.000000e+00
  %1707 = fmul fast float %1705, 8.000000e+00
  %1708 = and i32 %1692, 255
  %1709 = lshr i32 %1692, 8
  %1710 = and i32 %1709, 255
  %1711 = mul nuw nsw i32 %1708, 9
  %1712 = uitofp i32 %1711 to float
  %1713 = mul nuw nsw i32 %1710, 9
  %1714 = uitofp i32 %1713 to float
  %1715 = fadd fast float %1712, 5.000000e-01
  %1716 = fadd fast float %1715, %1700
  %1717 = fsub fast float %1716, %1706
  %1718 = fadd fast float %1714, 5.000000e-01
  %1719 = fadd fast float %1718, %1701
  %1720 = fsub fast float %1719, %1707
  %1721 = fdiv fast float %1717, %1671
  %1722 = fdiv fast float %1720, %1697
  %1723 = fmul fast float %1355, 4.375000e-01
  %1724 = fadd fast float %1723, 3.125000e-02
  %1725 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %26, float %1721, float %1722, float %1724, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1726 = extractvalue %dx.types.ResRet.f32 %1725, 0
  %1727 = extractvalue %dx.types.ResRet.f32 %1725, 1
  %1728 = extractvalue %dx.types.ResRet.f32 %1725, 2
  %1729 = fadd fast float %1726, %1667
  %1730 = fadd fast float %1727, %1668
  %1731 = fadd fast float %1728, %1669
  br label %1732

; <label>:1732                                    ; preds = %1696, %1681
  %1733 = phi float [ %1731, %1696 ], [ %1669, %1681 ]
  %1734 = phi float [ %1730, %1696 ], [ %1668, %1681 ]
  %1735 = phi float [ %1729, %1696 ], [ %1667, %1681 ]
  %1736 = icmp eq i32 %1694, 65535
  br i1 %1736, label %1826, label %1737, !dx.controlflow.hints !88

; <label>:1737                                    ; preds = %1732
  %1738 = extractvalue %dx.types.CBufRet.f32 %1670, 1
  %1739 = extractvalue %dx.types.CBufRet.f32 %1682, 0
  %1740 = extractvalue %dx.types.CBufRet.f32 %1682, 1
  %1741 = fmul fast float %1739, %1327
  %1742 = fmul fast float %1740, %1328
  %1743 = fmul fast float %1741, 1.250000e-01
  %1744 = fmul fast float %1742, 1.250000e-01
  %1745 = call float @dx.op.unary.f32(i32 27, float %1743)  ; Round_ni(value)
  %1746 = call float @dx.op.unary.f32(i32 27, float %1744)  ; Round_ni(value)
  %1747 = fmul fast float %1745, 8.000000e+00
  %1748 = fmul fast float %1746, 8.000000e+00
  %1749 = fsub fast float %1741, %1747
  %1750 = fsub fast float %1742, %1748
  %1751 = fadd fast float %1749, 5.000000e-01
  %1752 = fadd fast float %1750, 5.000000e-01
  %1753 = and i32 %1694, 255
  %1754 = lshr i32 %1692, 24
  %1755 = mul nuw nsw i32 %1753, 9
  %1756 = uitofp i32 %1755 to float
  %1757 = mul nuw nsw i32 %1754, 9
  %1758 = uitofp i32 %1757 to float
  %1759 = fadd fast float %1751, %1756
  %1760 = fadd fast float %1752, %1758
  %1761 = fdiv fast float %1759, %1671
  %1762 = fdiv fast float %1760, %1738
  %1763 = fmul fast float %1355, 4.375000e-01
  %1764 = fadd fast float %1763, 3.125000e-02
  %1765 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %26, float %1761, float %1762, float %1764, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1766 = extractvalue %dx.types.ResRet.f32 %1765, 0
  %1767 = extractvalue %dx.types.ResRet.f32 %1765, 1
  %1768 = extractvalue %dx.types.ResRet.f32 %1765, 2
  %1769 = fadd fast float %1763, 5.312500e-01
  %1770 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %26, float %1761, float %1762, float %1769, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1771 = extractvalue %dx.types.ResRet.f32 %1770, 0
  %1772 = extractvalue %dx.types.ResRet.f32 %1770, 1
  %1773 = extractvalue %dx.types.ResRet.f32 %1770, 2
  %1774 = fmul fast float %1771, 2.000000e+00
  %1775 = fmul fast float %1772, 2.000000e+00
  %1776 = fmul fast float %1773, 2.000000e+00
  %1777 = fadd fast float %1774, -1.000000e+00
  %1778 = fadd fast float %1775, -1.000000e+00
  %1779 = fadd fast float %1776, -1.000000e+00
  %1780 = fmul fast float %1777, %1777
  %1781 = fmul fast float %1778, %1778
  %1782 = fadd fast float %1780, %1781
  %1783 = fmul fast float %1779, %1779
  %1784 = fadd fast float %1782, %1783
  %1785 = call float @dx.op.unary.f32(i32 24, float %1784)  ; Sqrt(value)
  %1786 = fcmp fast ogt float %1785, 0.000000e+00
  br i1 %1786, label %1787, label %1791, !dx.controlflow.hints !89

; <label>:1787                                    ; preds = %1737
  %1788 = fdiv fast float %1777, %1785
  %1789 = fdiv fast float %1778, %1785
  %1790 = fdiv fast float %1779, %1785
  br label %1791

; <label>:1791                                    ; preds = %1787, %1737
  %1792 = phi float [ %1788, %1787 ], [ 0.000000e+00, %1737 ]
  %1793 = phi float [ %1789, %1787 ], [ 0.000000e+00, %1737 ]
  %1794 = phi float [ %1790, %1787 ], [ 0.000000e+00, %1737 ]
  %1795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1796 = extractvalue %dx.types.CBufRet.f32 %1795, 0
  %1797 = extractvalue %dx.types.CBufRet.f32 %1795, 1
  %1798 = fsub fast float %307, %1796
  %1799 = fsub fast float %308, %1797
  %1800 = fmul fast float %1798, %1798
  %1801 = fmul fast float %1799, %1799
  %1802 = fadd fast float %1800, %1801
  %1803 = call float @dx.op.unary.f32(i32 24, float %1802)  ; Sqrt(value)
  %1804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1805 = extractvalue %dx.types.CBufRet.f32 %1804, 0
  %1806 = extractvalue %dx.types.CBufRet.f32 %1804, 1
  %1807 = fsub fast float %1803, %1805
  %1808 = fdiv fast float %1807, %1806
  %1809 = call float @dx.op.unary.f32(i32 7, float %1808)  ; Saturate(value)
  %1810 = fmul fast float %1809, 2.000000e+00
  %1811 = fsub fast float 3.000000e+00, %1810
  %1812 = fmul fast float %1809, %1809
  %1813 = fmul fast float %1812, %1811
  %1814 = call float @dx.op.dot3.f32(i32 55, float %1792, float %1793, float %1794, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1815 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1814)  ; FMax(a,b)
  %1816 = fmul fast float %1815, 0x400C5BF8A0000000
  %1817 = fmul fast float %1813, %1766
  %1818 = fmul fast float %1817, %1816
  %1819 = fadd fast float %1818, %1735
  %1820 = fmul fast float %1813, %1767
  %1821 = fmul fast float %1820, %1816
  %1822 = fadd fast float %1821, %1734
  %1823 = fmul fast float %1813, %1768
  %1824 = fmul fast float %1823, %1816
  %1825 = fadd fast float %1824, %1733
  br label %1826

; <label>:1826                                    ; preds = %1791, %1732, %1657
  %1827 = phi float [ %1825, %1791 ], [ %1733, %1732 ], [ %1669, %1657 ]
  %1828 = phi float [ %1822, %1791 ], [ %1734, %1732 ], [ %1668, %1657 ]
  %1829 = phi float [ %1819, %1791 ], [ %1735, %1732 ], [ %1667, %1657 ]
  %1830 = fcmp fast ogt float %309, %1351
  %1831 = and i1 %1673, %1830
  %1832 = and i1 %1675, %1831
  %1833 = and i1 %1677, %1832
  %1834 = and i1 %1679, %1833
  br i1 %1834, label %1835, label %1892, !dx.controlflow.hints !90

; <label>:1835                                    ; preds = %1826
  %1836 = fmul fast float %1353, 0x3FC24924A0000000
  %1837 = fsub fast float %309, %1351
  %1838 = fdiv fast float %1837, %1836
  %1839 = call float @dx.op.unary.f32(i32 7, float %1838)  ; Saturate(value)
  %1840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %1841 = extractvalue %dx.types.CBufRet.f32 %1840, 0
  %1842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %1843 = extractvalue %dx.types.CBufRet.f32 %1842, 0
  %1844 = extractvalue %dx.types.CBufRet.f32 %1842, 1
  %1845 = extractvalue %dx.types.CBufRet.f32 %1842, 2
  %1846 = fsub fast float %1841, %1829
  %1847 = fsub fast float %1843, %1664
  %1848 = fsub fast float %1844, %1665
  %1849 = fsub fast float %1845, %1666
  %1850 = fmul fast float %1846, %1839
  %1851 = fmul fast float %1847, %1839
  %1852 = fmul fast float %1848, %1839
  %1853 = fmul fast float %1849, %1839
  %1854 = fadd fast float %1850, %1829
  %1855 = fadd fast float %1851, %1664
  %1856 = fadd fast float %1852, %1665
  %1857 = fadd fast float %1853, %1666
  %1858 = extractvalue %dx.types.CBufRet.f32 %1840, 1
  %1859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %1860 = extractvalue %dx.types.CBufRet.f32 %1859, 0
  %1861 = extractvalue %dx.types.CBufRet.f32 %1859, 1
  %1862 = extractvalue %dx.types.CBufRet.f32 %1859, 2
  %1863 = fsub fast float %1858, %1828
  %1864 = fsub fast float %1860, %1661
  %1865 = fsub fast float %1861, %1662
  %1866 = fsub fast float %1862, %1663
  %1867 = fmul fast float %1863, %1839
  %1868 = fmul fast float %1864, %1839
  %1869 = fmul fast float %1865, %1839
  %1870 = fmul fast float %1866, %1839
  %1871 = fadd fast float %1867, %1828
  %1872 = fadd fast float %1868, %1661
  %1873 = fadd fast float %1869, %1662
  %1874 = fadd fast float %1870, %1663
  %1875 = extractvalue %dx.types.CBufRet.f32 %1840, 2
  %1876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %1877 = extractvalue %dx.types.CBufRet.f32 %1876, 0
  %1878 = extractvalue %dx.types.CBufRet.f32 %1876, 1
  %1879 = extractvalue %dx.types.CBufRet.f32 %1876, 2
  %1880 = fsub fast float %1875, %1827
  %1881 = fsub fast float %1877, %1658
  %1882 = fsub fast float %1878, %1659
  %1883 = fsub fast float %1879, %1660
  %1884 = fmul fast float %1880, %1839
  %1885 = fmul fast float %1881, %1839
  %1886 = fmul fast float %1882, %1839
  %1887 = fmul fast float %1883, %1839
  %1888 = fadd fast float %1884, %1827
  %1889 = fadd fast float %1885, %1658
  %1890 = fadd fast float %1886, %1659
  %1891 = fadd fast float %1887, %1660
  br label %1892

; <label>:1892                                    ; preds = %1835, %1826
  %1893 = phi float [ %1888, %1835 ], [ %1827, %1826 ]
  %1894 = phi float [ %1889, %1835 ], [ %1658, %1826 ]
  %1895 = phi float [ %1890, %1835 ], [ %1659, %1826 ]
  %1896 = phi float [ %1891, %1835 ], [ %1660, %1826 ]
  %1897 = phi float [ %1871, %1835 ], [ %1828, %1826 ]
  %1898 = phi float [ %1872, %1835 ], [ %1661, %1826 ]
  %1899 = phi float [ %1873, %1835 ], [ %1662, %1826 ]
  %1900 = phi float [ %1874, %1835 ], [ %1663, %1826 ]
  %1901 = phi float [ %1854, %1835 ], [ %1829, %1826 ]
  %1902 = phi float [ %1855, %1835 ], [ %1664, %1826 ]
  %1903 = phi float [ %1856, %1835 ], [ %1665, %1826 ]
  %1904 = phi float [ %1857, %1835 ], [ %1666, %1826 ]
  %1905 = extractvalue %dx.types.CBufRet.f32 %1476, 3
  %1906 = fmul fast float %1905, %1901
  %1907 = fmul fast float %1905, %1897
  %1908 = fmul fast float %1905, %1893
  %1909 = fmul fast float %1902, 1.500000e+00
  %1910 = fmul fast float %1909, %1905
  %1911 = fmul fast float %1903, 1.500000e+00
  %1912 = fmul fast float %1911, %1905
  %1913 = fmul fast float %1904, 1.500000e+00
  %1914 = fmul fast float %1913, %1905
  %1915 = fmul fast float %1898, 1.500000e+00
  %1916 = fmul fast float %1915, %1905
  %1917 = fmul fast float %1899, 1.500000e+00
  %1918 = fmul fast float %1917, %1905
  %1919 = fmul fast float %1900, 1.500000e+00
  %1920 = fmul fast float %1919, %1905
  %1921 = fmul fast float %1894, 1.500000e+00
  %1922 = fmul fast float %1921, %1905
  %1923 = fmul fast float %1895, 1.500000e+00
  %1924 = fmul fast float %1923, %1905
  %1925 = fmul fast float %1896, 1.500000e+00
  %1926 = fmul fast float %1925, %1905
  %1927 = fsub fast float %1316, %1906
  %1928 = fmul fast float %1927, %1214
  %1929 = fadd fast float %1928, %1906
  %1930 = fsub fast float %1315, %1910
  %1931 = fmul fast float %1930, %1214
  %1932 = fadd fast float %1931, %1910
  %1933 = fsub fast float %1314, %1912
  %1934 = fmul fast float %1933, %1214
  %1935 = fadd fast float %1934, %1912
  %1936 = fsub fast float %1313, %1914
  %1937 = fmul fast float %1936, %1214
  %1938 = fadd fast float %1937, %1914
  %1939 = fmul fast float %1312, %1214
  %1940 = fmul fast float %1311, %1214
  %1941 = fmul fast float %1310, %1214
  %1942 = fmul fast float %1309, %1214
  %1943 = fmul fast float %1308, %1214
  %1944 = fsub fast float %1307, %1907
  %1945 = fmul fast float %1944, %1214
  %1946 = fadd fast float %1945, %1907
  %1947 = fsub fast float %1306, %1916
  %1948 = fmul fast float %1947, %1214
  %1949 = fadd fast float %1948, %1916
  %1950 = fsub fast float %1305, %1918
  %1951 = fmul fast float %1950, %1214
  %1952 = fadd fast float %1951, %1918
  %1953 = fsub fast float %1304, %1920
  %1954 = fmul fast float %1953, %1214
  %1955 = fadd fast float %1954, %1920
  %1956 = fmul fast float %1303, %1214
  %1957 = fmul fast float %1302, %1214
  %1958 = fmul fast float %1301, %1214
  %1959 = fmul fast float %1300, %1214
  %1960 = fmul fast float %1299, %1214
  %1961 = fsub fast float %1298, %1908
  %1962 = fmul fast float %1961, %1214
  %1963 = fadd fast float %1962, %1908
  %1964 = fsub fast float %1297, %1922
  %1965 = fmul fast float %1964, %1214
  %1966 = fadd fast float %1965, %1922
  %1967 = fsub fast float %1296, %1924
  %1968 = fmul fast float %1967, %1214
  %1969 = fadd fast float %1968, %1924
  %1970 = fsub fast float %1295, %1926
  %1971 = fmul fast float %1970, %1214
  %1972 = fadd fast float %1971, %1926
  %1973 = fmul fast float %1294, %1214
  %1974 = fmul fast float %1293, %1214
  %1975 = fmul fast float %1292, %1214
  %1976 = fmul fast float %1291, %1214
  %1977 = fmul fast float %1290, %1214
  br label %1978

; <label>:1978                                    ; preds = %1892, %1289
  %1979 = phi float [ %1977, %1892 ], [ %1290, %1289 ]
  %1980 = phi float [ %1976, %1892 ], [ %1291, %1289 ]
  %1981 = phi float [ %1975, %1892 ], [ %1292, %1289 ]
  %1982 = phi float [ %1974, %1892 ], [ %1293, %1289 ]
  %1983 = phi float [ %1973, %1892 ], [ %1294, %1289 ]
  %1984 = phi float [ %1972, %1892 ], [ %1295, %1289 ]
  %1985 = phi float [ %1969, %1892 ], [ %1296, %1289 ]
  %1986 = phi float [ %1966, %1892 ], [ %1297, %1289 ]
  %1987 = phi float [ %1963, %1892 ], [ %1298, %1289 ]
  %1988 = phi float [ %1960, %1892 ], [ %1299, %1289 ]
  %1989 = phi float [ %1959, %1892 ], [ %1300, %1289 ]
  %1990 = phi float [ %1958, %1892 ], [ %1301, %1289 ]
  %1991 = phi float [ %1957, %1892 ], [ %1302, %1289 ]
  %1992 = phi float [ %1956, %1892 ], [ %1303, %1289 ]
  %1993 = phi float [ %1955, %1892 ], [ %1304, %1289 ]
  %1994 = phi float [ %1952, %1892 ], [ %1305, %1289 ]
  %1995 = phi float [ %1949, %1892 ], [ %1306, %1289 ]
  %1996 = phi float [ %1946, %1892 ], [ %1307, %1289 ]
  %1997 = phi float [ %1943, %1892 ], [ %1308, %1289 ]
  %1998 = phi float [ %1942, %1892 ], [ %1309, %1289 ]
  %1999 = phi float [ %1941, %1892 ], [ %1310, %1289 ]
  %2000 = phi float [ %1940, %1892 ], [ %1311, %1289 ]
  %2001 = phi float [ %1939, %1892 ], [ %1312, %1289 ]
  %2002 = phi float [ %1938, %1892 ], [ %1313, %1289 ]
  %2003 = phi float [ %1935, %1892 ], [ %1314, %1289 ]
  %2004 = phi float [ %1932, %1892 ], [ %1315, %1289 ]
  %2005 = phi float [ %1929, %1892 ], [ %1316, %1289 ]
  %2006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %2007 = extractvalue %dx.types.CBufRet.f32 %2006, 2
  %2008 = fmul fast float %2007, %2007
  %2009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %2010 = extractvalue %dx.types.CBufRet.f32 %2009, 0
  %2011 = extractvalue %dx.types.CBufRet.f32 %2009, 1
  %2012 = extractvalue %dx.types.CBufRet.f32 %2009, 2
  %2013 = fmul fast float %2005, 0x3FD20DD760000000
  %2014 = fmul fast float %2012, %2003
  %2015 = fmul fast float %2012, %2012
  %2016 = fmul fast float %2015, 0x3FEE471020000000
  %2017 = fadd fast float %2016, 0xBFD42F6020000000
  %2018 = fmul fast float %2017, %1999
  %2019 = fmul fast float %2010, %2002
  %2020 = fmul fast float %2011, %2004
  %2021 = fmul fast float %2012, 0x3FF17B1420000000
  %2022 = fmul fast float %2008, %1998
  %2023 = fmul fast float %2022, %2010
  %2024 = fmul fast float %2023, %2021
  %2025 = fmul fast float %2008, %2000
  %2026 = fmul fast float %2025, %2011
  %2027 = fmul fast float %2026, %2021
  %2028 = fmul fast float %2010, %2010
  %2029 = fmul fast float %2011, %2011
  %2030 = fsub fast float %2028, %2029
  %2031 = fmul fast float %1997, 0x3FE17B1420000000
  %2032 = fmul fast float %2031, %2030
  %2033 = fmul fast float %2001, 0x3FF17B1420000000
  %2034 = fmul fast float %2033, %2011
  %2035 = fmul fast float %2034, %2010
  %2036 = fadd fast float %2032, %2035
  %2037 = fadd fast float %2036, %2018
  %2038 = fmul fast float %2037, %2008
  %2039 = fsub fast float %2020, %2014
  %2040 = fadd fast float %2039, %2019
  %2041 = fmul fast float %2040, 0x3FDF454380000000
  %2042 = fmul fast float %2041, %2007
  %2043 = fsub fast float %2013, %2024
  %2044 = fsub fast float %2043, %2027
  %2045 = fadd fast float %2044, %2038
  %2046 = fadd fast float %2045, %2042
  %2047 = fmul fast float %1996, 0x3FD20DD760000000
  %2048 = fmul fast float %2012, %1994
  %2049 = fmul fast float %2017, %1990
  %2050 = fmul fast float %2010, %1993
  %2051 = fmul fast float %2011, %1995
  %2052 = fmul fast float %2008, %1989
  %2053 = fmul fast float %2052, %2010
  %2054 = fmul fast float %2053, %2021
  %2055 = fmul fast float %2008, %1991
  %2056 = fmul fast float %2055, %2011
  %2057 = fmul fast float %2056, %2021
  %2058 = fmul fast float %1988, 0x3FE17B1420000000
  %2059 = fmul fast float %2058, %2030
  %2060 = fmul fast float %1992, 0x3FF17B1420000000
  %2061 = fmul fast float %2060, %2011
  %2062 = fmul fast float %2061, %2010
  %2063 = fadd fast float %2059, %2062
  %2064 = fadd fast float %2063, %2049
  %2065 = fmul fast float %2064, %2008
  %2066 = fsub fast float %2051, %2048
  %2067 = fadd fast float %2066, %2050
  %2068 = fmul fast float %2067, 0x3FDF454380000000
  %2069 = fmul fast float %2068, %2007
  %2070 = fsub fast float %2047, %2054
  %2071 = fsub fast float %2070, %2057
  %2072 = fadd fast float %2071, %2065
  %2073 = fadd fast float %2072, %2069
  %2074 = fmul fast float %1987, 0x3FD20DD760000000
  %2075 = fmul fast float %2012, %1985
  %2076 = fmul fast float %2017, %1981
  %2077 = fmul fast float %2010, %1984
  %2078 = fmul fast float %2011, %1986
  %2079 = fmul fast float %2008, %1980
  %2080 = fmul fast float %2079, %2010
  %2081 = fmul fast float %2080, %2021
  %2082 = fmul fast float %2008, %1982
  %2083 = fmul fast float %2082, %2011
  %2084 = fmul fast float %2083, %2021
  %2085 = fmul fast float %1979, 0x3FE17B1420000000
  %2086 = fmul fast float %2085, %2030
  %2087 = fmul fast float %1983, 0x3FF17B1420000000
  %2088 = fmul fast float %2087, %2011
  %2089 = fmul fast float %2088, %2010
  %2090 = fadd fast float %2086, %2089
  %2091 = fadd fast float %2090, %2076
  %2092 = fmul fast float %2091, %2008
  %2093 = fsub fast float %2078, %2075
  %2094 = fadd fast float %2093, %2077
  %2095 = fmul fast float %2094, 0x3FDF454380000000
  %2096 = fmul fast float %2095, %2007
  %2097 = fsub fast float %2074, %2081
  %2098 = fsub fast float %2097, %2084
  %2099 = fadd fast float %2098, %2092
  %2100 = fadd fast float %2099, %2096
  %2101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2102 = extractvalue %dx.types.CBufRet.f32 %2101, 3
  %2103 = extractvalue %dx.types.CBufRet.f32 %1155, 0
  %2104 = fmul fast float %2103, %2102
  %2105 = fmul fast float %2104, %2046
  %2106 = fmul fast float %2104, %2073
  %2107 = fmul fast float %2104, %2100
  %2108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2109 = extractvalue %dx.types.CBufRet.f32 %2108, 3
  %2110 = fcmp fast une float %2109, 0.000000e+00
  %2111 = extractvalue %dx.types.CBufRet.f32 %2108, 0
  %2112 = extractvalue %dx.types.CBufRet.f32 %2108, 1
  %2113 = extractvalue %dx.types.CBufRet.f32 %2108, 2
  br i1 %2110, label %2114, label %2136, !dx.controlflow.hints !91

; <label>:2114                                    ; preds = %1978
  %2115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %2116 = extractvalue %dx.types.CBufRet.f32 %2115, 0
  %2117 = extractvalue %dx.types.CBufRet.f32 %2115, 1
  %2118 = extractvalue %dx.types.CBufRet.f32 %2115, 2
  %2119 = call float @dx.op.dot3.f32(i32 55, float %2111, float %2112, float %2113, float %118, float %119, float %120)  ; Dot3(ax,ay,az,bx,by,bz)
  %2120 = fcmp fast ogt float %1165, 0.000000e+00
  %2121 = select i1 %2120, float 1.000000e+00, float -1.000000e+00
  %2122 = fmul fast float %2121, 5.000000e-01
  %2123 = fmul fast float %2122, %2119
  %2124 = fmul fast float %2121, %1165
  %2125 = fadd fast float %2123, 4.921875e-01
  %2126 = fadd fast float %2124, -3.125000e-02
  %2127 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %2125, float 0x3FB25F3060000000, float %2126, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2128 = extractvalue %dx.types.ResRet.f32 %2127, 0
  %2129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %2130 = extractvalue %dx.types.CBufRet.f32 %2129, 0
  %2131 = fmul fast float %2128, 0x400921FB60000000
  %2132 = fmul fast float %2131, %2130
  %2133 = fmul fast float %2132, %2116
  %2134 = fmul fast float %2132, %2117
  %2135 = fmul fast float %2132, %2118
  br label %2136

; <label>:2136                                    ; preds = %2114, %1978
  %2137 = phi float [ %2133, %2114 ], [ 0.000000e+00, %1978 ]
  %2138 = phi float [ %2134, %2114 ], [ 0.000000e+00, %1978 ]
  %2139 = phi float [ %2135, %2114 ], [ 0.000000e+00, %1978 ]
  %2140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %2141 = extractvalue %dx.types.CBufRet.f32 %2140, 0
  %2142 = fmul fast float %2141, %2111
  %2143 = fmul fast float %2141, %2112
  %2144 = fmul fast float %2141, %2113
  %2145 = fadd fast float %2142, %307
  %2146 = fadd fast float %2143, %308
  %2147 = fadd fast float %2144, %309
  %2148 = fsub fast float %2145, %323
  %2149 = fsub fast float %2146, %324
  %2150 = fmul fast float %2148, %328
  %2151 = fmul fast float %2149, %329
  %2152 = call float @dx.op.binary.f32(i32 36, float %2150, float %2151)  ; FMin(a,b)
  %2153 = fcmp fast olt float %2152, 0.000000e+00
  %2154 = call float @dx.op.binary.f32(i32 35, float %2150, float %2151)  ; FMax(a,b)
  %2155 = fcmp fast ogt float %2154, 1.000000e+00
  %2156 = or i1 %2153, %2155
  %2157 = fcmp fast olt float %2147, %337
  %2158 = or i1 %2156, %2157
  %2159 = fcmp fast ogt float %2147, %344
  %2160 = or i1 %2158, %2159
  br i1 %2160, label %2175, label %2161, !dx.controlflow.hints !54

; <label>:2161                                    ; preds = %2136
  %2162 = fsub fast float 1.000000e+00, %2151
  %2163 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %26, float %2150, float %2162, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2164 = extractvalue %dx.types.ResRet.f32 %2163, 0
  %2165 = extractvalue %dx.types.ResRet.f32 %2163, 1
  %2166 = extractvalue %dx.types.ResRet.f32 %2163, 2
  %2167 = extractvalue %dx.types.ResRet.f32 %2163, 3
  %2168 = fcmp fast oeq float %2164, 0.000000e+00
  %2169 = fcmp ule float %2147, %2166
  %2170 = fcmp uge float %2147, %2165
  %2171 = or i1 %2170, %2169
  %2172 = or i1 %2168, %2171
  %2173 = zext i1 %2172 to i32
  %2174 = xor i32 %2173, 1
  br label %2175

; <label>:2175                                    ; preds = %2161, %2136
  %2176 = phi float [ %2164, %2161 ], [ %292, %2136 ]
  %2177 = phi float [ %2165, %2161 ], [ %293, %2136 ]
  %2178 = phi float [ %2166, %2161 ], [ %294, %2136 ]
  %2179 = phi float [ %2167, %2161 ], [ %295, %2136 ]
  %2180 = phi i32 [ %2174, %2161 ], [ 0, %2136 ]
  %2181 = icmp eq i32 %2180, 0
  br i1 %450, label %2231, label %2182, !dx.controlflow.hints !59

; <label>:2182                                    ; preds = %2175
  %2183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %2184 = extractvalue %dx.types.CBufRet.f32 %2183, 0
  %2185 = extractvalue %dx.types.CBufRet.f32 %2183, 1
  %2186 = extractvalue %dx.types.CBufRet.f32 %2183, 2
  %2187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %2188 = extractvalue %dx.types.CBufRet.f32 %2187, 0
  %2189 = extractvalue %dx.types.CBufRet.f32 %2187, 1
  %2190 = extractvalue %dx.types.CBufRet.f32 %2187, 2
  %2191 = fsub fast float %2145, %2188
  %2192 = fsub fast float %2146, %2189
  %2193 = fsub fast float %2147, %2190
  %2194 = fmul fast float %2191, %2184
  %2195 = fmul fast float %2192, %2185
  %2196 = fmul fast float %2193, %2186
  %2197 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %2198 = extractvalue %dx.types.CBufRet.i32 %2197, 3
  %2199 = icmp eq i32 %2198, 0
  br i1 %2199, label %2203, label %2200, !dx.controlflow.hints !60

; <label>:2200                                    ; preds = %2182
  %2201 = call float @dx.op.unary.f32(i32 22, float %2194)  ; Frc(value)
  %2202 = call float @dx.op.unary.f32(i32 22, float %2195)  ; Frc(value)
  br label %2203

; <label>:2203                                    ; preds = %2200, %2182
  %2204 = phi float [ %2201, %2200 ], [ %2194, %2182 ]
  %2205 = phi float [ %2202, %2200 ], [ %2195, %2182 ]
  %2206 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %24, float %2204, float %2205, float %2196, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2207 = extractvalue %dx.types.ResRet.f32 %2206, 0
  %2208 = fmul fast float %2207, 2.000000e+00
  %2209 = fadd fast float %2208, -1.000000e+00
  %2210 = extractvalue %dx.types.CBufRet.f32 %2183, 3
  %2211 = fmul fast float %2209, %2210
  %2212 = fcmp fast olt float %2211, 0.000000e+00
  %2213 = fcmp fast oge float %2196, 0.000000e+00
  %2214 = fcmp fast ole float %2196, 1.000000e+00
  br i1 %2199, label %2217, label %2215, !dx.controlflow.hints !61

; <label>:2215                                    ; preds = %2203
  %2216 = and i1 %2213, %2214
  br label %2227

; <label>:2217                                    ; preds = %2203
  %2218 = fcmp fast oge float %2194, 0.000000e+00
  %2219 = fcmp fast oge float %2195, 0.000000e+00
  %2220 = and i1 %2218, %2219
  %2221 = and i1 %2213, %2220
  %2222 = fcmp fast ole float %2194, 1.000000e+00
  %2223 = fcmp fast ole float %2195, 1.000000e+00
  %2224 = and i1 %2222, %2223
  %2225 = and i1 %2214, %2224
  %2226 = and i1 %2221, %2225
  br label %2227

; <label>:2227                                    ; preds = %2217, %2215
  %2228 = phi i1 [ %2216, %2215 ], [ %2226, %2217 ]
  %2229 = and i1 %2212, %2228
  %2230 = zext i1 %2229 to i32
  br label %2231

; <label>:2231                                    ; preds = %2227, %2175
  %2232 = phi i32 [ %2230, %2227 ], [ 0, %2175 ]
  br i1 %509, label %2387, label %2233, !dx.controlflow.hints !62

; <label>:2233                                    ; preds = %2231
  %2234 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2235 = extractvalue %dx.types.CBufRet.i32 %2234, 1
  %2236 = and i32 %2235, 1
  %2237 = icmp eq i32 %2236, 0
  br i1 %2237, label %2238, label %2382, !dx.controlflow.hints !63

; <label>:2238                                    ; preds = %2233
  %2239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %2240 = extractvalue %dx.types.CBufRet.f32 %2239, 2
  %2241 = extractvalue %dx.types.CBufRet.f32 %2239, 3
  %2242 = fmul fast float %2240, %2145
  %2243 = fmul fast float %2241, %2146
  %2244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %2245 = extractvalue %dx.types.CBufRet.f32 %2244, 0
  %2246 = extractvalue %dx.types.CBufRet.f32 %2244, 1
  %2247 = fadd fast float %2242, %2245
  %2248 = fadd fast float %2243, %2246
  %2249 = call float @dx.op.unary.f32(i32 7, float %2247)  ; Saturate(value)
  %2250 = call float @dx.op.unary.f32(i32 7, float %2248)  ; Saturate(value)
  %2251 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %26, float %2249, float %2250, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2252 = extractvalue %dx.types.ResRet.f32 %2251, 0
  %2253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2254 = extractvalue %dx.types.CBufRet.f32 %2253, 0
  %2255 = fmul fast float %2254, %2252
  %2256 = fsub fast float %2247, %2249
  %2257 = fsub fast float %2248, %2250
  %2258 = extractvalue %dx.types.CBufRet.f32 %2239, 0
  %2259 = extractvalue %dx.types.CBufRet.f32 %2239, 1
  %2260 = fmul fast float %2258, %2256
  %2261 = fmul fast float %2259, %2257
  %2262 = fmul fast float %2260, %2260
  %2263 = fmul fast float %2261, %2261
  %2264 = fadd fast float %2262, %2263
  %2265 = call float @dx.op.unary.f32(i32 24, float %2264)  ; Sqrt(value)
  %2266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %2267 = extractvalue %dx.types.CBufRet.f32 %2266, 3
  %2268 = fmul fast float %2267, %2265
  %2269 = call float @dx.op.unary.f32(i32 7, float %2268)  ; Saturate(value)
  %2270 = extractvalue %dx.types.CBufRet.f32 %2266, 2
  %2271 = fsub fast float %2270, %2255
  %2272 = fmul fast float %2271, %2269
  %2273 = extractvalue %dx.types.CBufRet.f32 %2253, 1
  %2274 = fsub fast float %2147, %2255
  %2275 = fsub fast float %2274, %2273
  %2276 = fsub fast float %2275, %2272
  %2277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2278 = extractvalue %dx.types.CBufRet.f32 %2277, 2
  %2279 = fsub fast float %2276, %2278
  %2280 = fcmp fast olt float %2279, 0.000000e+00
  %2281 = extractvalue %dx.types.CBufRet.i32 %2234, 0
  %2282 = icmp eq i32 %2281, 0
  br i1 %2282, label %2333, label %2283

; <label>:2283                                    ; preds = %2238
  br label %2284

; <label>:2284                                    ; preds = %2322, %2283
  %2285 = phi i32 [ %2328, %2322 ], [ 1, %2283 ]
  %2286 = phi i32 [ %2329, %2322 ], [ 0, %2283 ]
  %2287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %2288 = extractvalue %dx.types.CBufRet.f32 %2287, 1
  %2289 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2290 = extractvalue %dx.types.CBufRet.i32 %2289, 1
  %2291 = and i32 %2290, 8
  %2292 = icmp eq i32 %2291, 0
  %2293 = fcmp fast ogt float %2288, %2276
  %2294 = or i1 %2293, %2292
  %2295 = add i32 %2286, 171
  %2296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 %2295)  ; CBufferLoadLegacy(handle,regIndex)
  %2297 = extractvalue %dx.types.CBufRet.f32 %2296, 0
  %2298 = extractvalue %dx.types.CBufRet.f32 %2296, 1
  %2299 = extractvalue %dx.types.CBufRet.f32 %2296, 2
  br i1 %2294, label %2300, label %2306, !dx.controlflow.hints !64

; <label>:2300                                    ; preds = %2284
  %2301 = fsub fast float %2297, %2145
  %2302 = fsub fast float %2298, %2146
  %2303 = fmul fast float %2301, %2301
  %2304 = fmul fast float %2302, %2302
  %2305 = fadd fast float %2303, %2304
  br label %2322

; <label>:2306                                    ; preds = %2284
  %2307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2308 = extractvalue %dx.types.CBufRet.f32 %2307, 2
  %2309 = extractvalue %dx.types.CBufRet.f32 %2287, 2
  %2310 = fmul fast float %2309, %2308
  %2311 = fsub fast float %2310, %2288
  %2312 = fdiv fast float %2299, %2311
  %2313 = fsub fast float %2145, %2297
  %2314 = fsub fast float %2146, %2298
  %2315 = fsub fast float %2276, %2288
  %2316 = fmul fast float %2312, %2315
  %2317 = fmul fast float %2313, %2313
  %2318 = fmul fast float %2314, %2314
  %2319 = fadd fast float %2317, %2318
  %2320 = fmul fast float %2316, %2316
  %2321 = fadd fast float %2319, %2320
  br label %2322

; <label>:2322                                    ; preds = %2306, %2300
  %2323 = phi float [ %2305, %2300 ], [ %2321, %2306 ]
  %2324 = call float @dx.op.unary.f32(i32 24, float %2323)  ; Sqrt(value)
  %2325 = fsub float %2299, %2324
  %2326 = fcmp fast olt float %2325, 0.000000e+00
  %2327 = zext i1 %2326 to i32
  %2328 = and i32 %2327, %2285
  %2329 = add i32 %2286, 1
  %2330 = extractvalue %dx.types.CBufRet.i32 %2289, 0
  %2331 = icmp ult i32 %2329, %2330
  br i1 %2331, label %2284, label %2332

; <label>:2332                                    ; preds = %2322
  br label %2333

; <label>:2333                                    ; preds = %2332, %2238
  %2334 = phi i32 [ 1, %2238 ], [ %2328, %2332 ]
  br label %2335

; <label>:2335                                    ; preds = %2335, %2333
  %2336 = phi i32 [ %2372, %2335 ], [ %2334, %2333 ]
  %2337 = phi i32 [ %2373, %2335 ], [ 0, %2333 ]
  %2338 = add nuw nsw i32 %2337, 191
  %2339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 %2338)  ; CBufferLoadLegacy(handle,regIndex)
  %2340 = extractvalue %dx.types.CBufRet.f32 %2339, 0
  %2341 = extractvalue %dx.types.CBufRet.f32 %2339, 1
  %2342 = extractvalue %dx.types.CBufRet.f32 %2339, 2
  %2343 = add nuw nsw i32 %2337, 195
  %2344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 %2343)  ; CBufferLoadLegacy(handle,regIndex)
  %2345 = extractvalue %dx.types.CBufRet.f32 %2344, 0
  %2346 = extractvalue %dx.types.CBufRet.f32 %2344, 1
  %2347 = extractvalue %dx.types.CBufRet.f32 %2344, 2
  %2348 = fsub fast float %2145, %2340
  %2349 = fsub fast float %2146, %2341
  %2350 = fsub fast float %2276, %2342
  %2351 = call float @dx.op.unary.f32(i32 6, float %2348)  ; FAbs(value)
  %2352 = call float @dx.op.unary.f32(i32 6, float %2349)  ; FAbs(value)
  %2353 = call float @dx.op.unary.f32(i32 6, float %2350)  ; FAbs(value)
  %2354 = fsub fast float %2351, %2345
  %2355 = fsub fast float %2352, %2346
  %2356 = fsub fast float %2353, %2347
  %2357 = call float @dx.op.binary.f32(i32 35, float %2354, float 0.000000e+00)  ; FMax(a,b)
  %2358 = call float @dx.op.binary.f32(i32 35, float %2355, float 0.000000e+00)  ; FMax(a,b)
  %2359 = call float @dx.op.binary.f32(i32 35, float %2356, float 0.000000e+00)  ; FMax(a,b)
  %2360 = fmul fast float %2357, %2357
  %2361 = fmul fast float %2358, %2358
  %2362 = fadd fast float %2361, %2360
  %2363 = fmul fast float %2359, %2359
  %2364 = fadd fast float %2362, %2363
  %2365 = call float @dx.op.unary.f32(i32 24, float %2364)  ; Sqrt(value)
  %2366 = call float @dx.op.binary.f32(i32 35, float %2355, float %2356)  ; FMax(a,b)
  %2367 = call float @dx.op.binary.f32(i32 35, float %2354, float %2366)  ; FMax(a,b)
  %2368 = call float @dx.op.binary.f32(i32 36, float %2367, float 0.000000e+00)  ; FMin(a,b)
  %2369 = fadd fast float %2368, %2365
  %2370 = fcmp ogt float %2369, -0.000000e+00
  %2371 = zext i1 %2370 to i32
  %2372 = and i32 %2371, %2336
  %2373 = add nuw nsw i32 %2337, 1
  %2374 = icmp eq i32 %2373, 4
  br i1 %2374, label %2375, label %2335

; <label>:2375                                    ; preds = %2335
  %2376 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2377 = extractvalue %dx.types.CBufRet.i32 %2376, 1
  %2378 = lshr i32 %2377, 1
  %2379 = xor i32 %2378, %2372
  %2380 = zext i1 %2280 to i32
  %2381 = and i32 %2379, %2380
  br label %2382

; <label>:2382                                    ; preds = %2375, %2233
  %2383 = phi i32 [ %290, %2233 ], [ %2381, %2375 ]
  %2384 = phi float [ %2147, %2233 ], [ %2276, %2375 ]
  %2385 = icmp ne i32 %2383, 0
  %2386 = zext i1 %2385 to i32
  br label %2387

; <label>:2387                                    ; preds = %2382, %2231
  %2388 = phi i32 [ %2383, %2382 ], [ %290, %2231 ]
  %2389 = phi float [ %2384, %2382 ], [ %291, %2231 ]
  %2390 = phi i32 [ %2386, %2382 ], [ 0, %2231 ]
  br i1 %435, label %2439, label %2391, !dx.controlflow.hints !65

; <label>:2391                                    ; preds = %2387
  %2392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %2393 = extractvalue %dx.types.CBufRet.f32 %2392, 0
  %2394 = fsub fast float -0.000000e+00, %2145
  %2395 = fsub fast float -0.000000e+00, %2146
  %2396 = fsub fast float %2393, %2147
  %2397 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2394, float %2395, float %2396)  ; Dot3(ax,ay,az,bx,by,bz)
  %2398 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2111, float %2112, float %2113)  ; Dot3(ax,ay,az,bx,by,bz)
  %2399 = fdiv fast float 1.000000e+00, %2398
  %2400 = fmul fast float %2399, %2397
  %2401 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2400)  ; FMax(a,b)
  %2402 = fcmp fast olt float %2113, 0.000000e+00
  %2403 = call float @dx.op.binary.f32(i32 36, float %2141, float %2401)  ; FMin(a,b)
  br i1 %2402, label %2405, label %2404, !dx.controlflow.hints !66

; <label>:2404                                    ; preds = %2391
  br label %2405

; <label>:2405                                    ; preds = %2404, %2391
  %2406 = phi float [ 0.000000e+00, %2404 ], [ %2403, %2391 ]
  %2407 = phi float [ %2403, %2404 ], [ %2141, %2391 ]
  %2408 = phi float [ %2403, %2404 ], [ 0.000000e+00, %2391 ]
  %2409 = phi float [ %2141, %2404 ], [ %2403, %2391 ]
  %2410 = fsub fast float %2407, %2406
  %2411 = extractvalue %dx.types.CBufRet.f32 %2392, 1
  %2412 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %2411)  ; FMin(a,b)
  %2413 = fsub fast float %2147, %2393
  %2414 = fmul fast float %2412, 0x3FF7154760000000
  %2415 = fmul fast float %2414, %2413
  %2416 = call float @dx.op.unary.f32(i32 21, float %2415)  ; Exp(value)
  %2417 = fmul fast float %2113, 0x3FF7154760000000
  %2418 = fmul fast float %2417, %2409
  %2419 = fmul fast float %2418, %2412
  %2420 = call float @dx.op.unary.f32(i32 21, float %2419)  ; Exp(value)
  %2421 = fmul fast float %2417, %2408
  %2422 = fmul fast float %2421, %2412
  %2423 = call float @dx.op.unary.f32(i32 21, float %2422)  ; Exp(value)
  %2424 = fsub fast float %2420, %2423
  %2425 = fmul fast float %2424, %2416
  %2426 = fmul fast float %2412, %2113
  %2427 = fdiv fast float %2425, %2426
  %2428 = fadd fast float %2410, %2427
  %2429 = call float @dx.op.unary.f32(i32 6, float %2113)  ; FAbs(value)
  %2430 = fcmp fast olt float %2429, 0x3F0FFB4800000000
  %2431 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2413)  ; FMax(a,b)
  %2432 = fmul fast float %2431, 0x3FF7154760000000
  %2433 = fmul fast float %2432, %2411
  %2434 = call float @dx.op.unary.f32(i32 21, float %2433)  ; Exp(value)
  %2435 = fmul fast float %2434, %2141
  %2436 = select i1 %2430, float %2435, float %2428
  %2437 = extractvalue %dx.types.CBufRet.f32 %2006, 1
  %2438 = fmul fast float %2436, %2437
  br label %2439

; <label>:2439                                    ; preds = %2405, %2387
  %2440 = phi float [ %2438, %2405 ], [ 0.000000e+00, %2387 ]
  %2441 = icmp eq i32 %2232, 0
  br i1 %2441, label %2622, label %2442, !dx.controlflow.hints !67

; <label>:2442                                    ; preds = %2439
  %2443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %2444 = extractvalue %dx.types.CBufRet.f32 %2443, 3
  %2445 = fmul fast float %2444, %2141
  %2446 = fcmp fast oeq float %2445, 0.000000e+00
  br i1 %2446, label %2461, label %2447, !dx.controlflow.hints !68

; <label>:2447                                    ; preds = %2442
  %2448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %2449 = extractvalue %dx.types.CBufRet.f32 %2448, 3
  %2450 = fmul fast float %2449, %2445
  %2451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %2452 = extractvalue %dx.types.CBufRet.f32 %2451, 0
  %2453 = extractvalue %dx.types.CBufRet.f32 %2451, 1
  %2454 = extractvalue %dx.types.CBufRet.f32 %2451, 2
  %2455 = fmul fast float %2452, %2450
  %2456 = fmul fast float %2453, %2450
  %2457 = fmul fast float %2454, %2450
  %2458 = call float @dx.op.unary.f32(i32 23, float %2455)  ; Log(value)
  %2459 = call float @dx.op.unary.f32(i32 23, float %2456)  ; Log(value)
  %2460 = call float @dx.op.unary.f32(i32 23, float %2457)  ; Log(value)
  br label %2461

; <label>:2461                                    ; preds = %2447, %2442
  %2462 = phi float [ %2458, %2447 ], [ 0.000000e+00, %2442 ]
  %2463 = phi float [ %2459, %2447 ], [ 0.000000e+00, %2442 ]
  %2464 = phi float [ %2460, %2447 ], [ 0.000000e+00, %2442 ]
  %2465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %2466 = extractvalue %dx.types.CBufRet.f32 %2465, 0
  %2467 = extractvalue %dx.types.CBufRet.f32 %2465, 1
  %2468 = extractvalue %dx.types.CBufRet.f32 %2465, 2
  %2469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %2470 = extractvalue %dx.types.CBufRet.f32 %2469, 0
  %2471 = extractvalue %dx.types.CBufRet.f32 %2469, 1
  %2472 = extractvalue %dx.types.CBufRet.f32 %2469, 2
  %2473 = fsub fast float %2145, %2470
  %2474 = fsub fast float %2146, %2471
  %2475 = fsub fast float %2147, %2472
  %2476 = fmul fast float %2473, %2466
  %2477 = fmul fast float %2474, %2467
  %2478 = fmul fast float %2475, %2468
  %2479 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %2480 = extractvalue %dx.types.CBufRet.i32 %2479, 0
  %2481 = extractvalue %dx.types.CBufRet.i32 %2479, 1
  %2482 = uitofp i32 %2480 to float
  %2483 = uitofp i32 %2481 to float
  %2484 = fmul fast float %2476, %2482
  %2485 = fmul fast float %2477, %2483
  %2486 = fadd fast float %2484, 5.000000e-01
  %2487 = fadd fast float %2485, 5.000000e-01
  %2488 = call float @dx.op.unary.f32(i32 22, float %2486)  ; Frc(value)
  %2489 = call float @dx.op.unary.f32(i32 22, float %2487)  ; Frc(value)
  %2490 = call float @dx.op.unary.f32(i32 27, float %2486)  ; Round_ni(value)
  %2491 = call float @dx.op.unary.f32(i32 27, float %2487)  ; Round_ni(value)
  %2492 = fadd fast float %2490, 1.000000e+00
  %2493 = fadd fast float %2491, 1.000000e+00
  %2494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %2495 = extractvalue %dx.types.CBufRet.f32 %2494, 0
  %2496 = extractvalue %dx.types.CBufRet.f32 %2494, 1
  %2497 = fmul fast float %2495, %2492
  %2498 = fmul fast float %2496, %2493
  %2499 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %25, float %2497, float %2498, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2500 = extractvalue %dx.types.ResRet.f32 %2499, 0
  %2501 = extractvalue %dx.types.ResRet.f32 %2499, 1
  %2502 = extractvalue %dx.types.ResRet.f32 %2499, 2
  %2503 = extractvalue %dx.types.ResRet.f32 %2499, 3
  %2504 = extractvalue %dx.types.CBufRet.i32 %2479, 2
  %2505 = extractvalue %dx.types.CBufRet.f32 %2494, 2
  %2506 = uitofp i32 %2504 to float
  %2507 = fadd fast float %2506, -1.000000e+00
  %2508 = fmul fast float %2507, %2500
  %2509 = fmul fast float %2507, %2501
  %2510 = fmul fast float %2507, %2502
  %2511 = fmul fast float %2507, %2503
  %2512 = fadd fast float %2508, 5.000000e-01
  %2513 = fadd fast float %2509, 5.000000e-01
  %2514 = fadd fast float %2510, 5.000000e-01
  %2515 = fadd fast float %2511, 5.000000e-01
  %2516 = fptoui float %2512 to i32
  %2517 = fptoui float %2513 to i32
  %2518 = fptoui float %2514 to i32
  %2519 = fptoui float %2515 to i32
  %2520 = uitofp i32 %2516 to float
  %2521 = uitofp i32 %2517 to float
  %2522 = uitofp i32 %2518 to float
  %2523 = uitofp i32 %2519 to float
  %2524 = fadd fast float %2520, 5.000000e-01
  %2525 = fadd fast float %2521, 5.000000e-01
  %2526 = fadd fast float %2522, 5.000000e-01
  %2527 = fadd fast float %2523, 5.000000e-01
  %2528 = fmul fast float %2524, %2505
  %2529 = fmul fast float %2525, %2505
  %2530 = fmul fast float %2526, %2505
  %2531 = fmul fast float %2527, %2505
  %2532 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %26, float %2528, float %2478, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2533 = extractvalue %dx.types.ResRet.f32 %2532, 0
  %2534 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %26, float %2529, float %2478, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2535 = extractvalue %dx.types.ResRet.f32 %2534, 0
  %2536 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %26, float %2530, float %2478, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2537 = extractvalue %dx.types.ResRet.f32 %2536, 0
  %2538 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %26, float %2531, float %2478, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2539 = extractvalue %dx.types.ResRet.f32 %2538, 0
  %2540 = fsub fast float %2537, %2539
  %2541 = fmul fast float %2540, %2488
  %2542 = fadd fast float %2541, %2539
  %2543 = fsub fast float %2535, %2533
  %2544 = fmul fast float %2543, %2488
  %2545 = fadd fast float %2544, %2533
  %2546 = fsub fast float %2545, %2542
  %2547 = fmul fast float %2546, %2489
  %2548 = fadd fast float %2547, %2542
  %2549 = fcmp fast ogt float %2548, 0.000000e+00
  br i1 %2549, label %2550, label %2618, !dx.controlflow.hints !69

; <label>:2550                                    ; preds = %2461
  %2551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %2552 = extractvalue %dx.types.CBufRet.f32 %2551, 0
  %2553 = extractvalue %dx.types.CBufRet.f32 %2551, 1
  %2554 = extractvalue %dx.types.CBufRet.f32 %2551, 2
  %2555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %2556 = extractvalue %dx.types.CBufRet.f32 %2555, 0
  %2557 = extractvalue %dx.types.CBufRet.f32 %2555, 1
  %2558 = extractvalue %dx.types.CBufRet.f32 %2555, 2
  %2559 = fmul fast float %2474, %2466
  %2560 = fmul fast float %2475, %2466
  %2561 = fadd fast float %2476, %2556
  %2562 = fadd fast float %2559, %2557
  %2563 = fadd fast float %2560, %2558
  %2564 = fmul fast float %2561, %2552
  %2565 = fmul fast float %2562, %2552
  %2566 = fmul fast float %2563, %2552
  %2567 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %23, float %2564, float %2565, float %2566, float undef, i32 0, i32 0, i32 0, float %2462)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2568 = extractvalue %dx.types.ResRet.f32 %2567, 0
  %2569 = fmul fast float %2561, %2553
  %2570 = fmul fast float %2562, %2553
  %2571 = fmul fast float %2563, %2553
  %2572 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %23, float %2569, float %2570, float %2571, float undef, i32 0, i32 0, i32 0, float %2463)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2573 = extractvalue %dx.types.ResRet.f32 %2572, 1
  %2574 = fmul fast float %2561, %2554
  %2575 = fmul fast float %2562, %2554
  %2576 = fmul fast float %2563, %2554
  %2577 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %23, float %2574, float %2575, float %2576, float undef, i32 0, i32 0, i32 0, float %2464)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2578 = extractvalue %dx.types.ResRet.f32 %2577, 2
  %2579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %2580 = extractvalue %dx.types.CBufRet.f32 %2579, 1
  %2581 = fmul fast float %2573, %2568
  %2582 = fmul fast float %2581, %2578
  %2583 = call float @dx.op.unary.f32(i32 23, float %2582)  ; Log(value)
  %2584 = fmul fast float %2583, %2580
  %2585 = call float @dx.op.unary.f32(i32 21, float %2584)  ; Exp(value)
  %2586 = extractvalue %dx.types.CBufRet.f32 %2579, 2
  %2587 = fmul fast float %2548, %2548
  %2588 = fmul fast float %2587, %2585
  %2589 = fmul fast float %2588, %2586
  %2590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %2591 = extractvalue %dx.types.CBufRet.f32 %2590, 3
  %2592 = fmul fast float %2591, %2589
  %2593 = bitcast float %2592 to i32
  %2594 = sitofp i32 %2593 to float
  %2595 = fptosi float %2594 to i32
  %2596 = bitcast i32 %2595 to float
  %2597 = fsub fast float 1.000000e+00, %2589
  %2598 = bitcast float %2597 to i32
  %2599 = sitofp i32 %2598 to float
  %2600 = fptosi float %2599 to i32
  %2601 = bitcast i32 %2600 to float
  %2602 = fadd fast float %2596, %2601
  %2603 = bitcast float %2602 to i32
  %2604 = sub nsw i32 2129859010, %2603
  %2605 = bitcast i32 %2604 to float
  %2606 = fmul fast float %2605, %2596
  %2607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2608 = extractvalue %dx.types.CBufRet.f32 %2607, 2
  %2609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %2610 = extractvalue %dx.types.CBufRet.f32 %2609, 0
  %2611 = fmul fast float %2606, %2610
  %2612 = fadd fast float %2611, 1.000000e+00
  %2613 = bitcast float %2612 to i32
  %2614 = sub nsw i32 2129859010, %2613
  %2615 = bitcast i32 %2614 to float
  %2616 = fmul fast float %2606, %2608
  %2617 = fmul fast float %2616, %2615
  br label %2618

; <label>:2618                                    ; preds = %2550, %2461
  %2619 = phi float [ %2617, %2550 ], [ %2548, %2461 ]
  %2620 = fmul fast float %2619, %2141
  %2621 = fadd fast float %2620, %2440
  br label %2622

; <label>:2622                                    ; preds = %2618, %2439
  %2623 = phi float [ %2621, %2618 ], [ %2440, %2439 ]
  br i1 %2181, label %2749, label %2624, !dx.controlflow.hints !70

; <label>:2624                                    ; preds = %2622
  %2625 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %2626 = extractvalue %dx.types.CBufRet.i32 %2625, 0
  %2627 = icmp ne i32 %2626, 0
  %2628 = zext i1 %2627 to i32
  %2629 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %2630 = extractvalue %dx.types.CBufRet.i32 %2629, 0
  %2631 = icmp eq i32 %2630, 0
  br i1 %2631, label %2665, label %2632

; <label>:2632                                    ; preds = %2624
  br label %2633

; <label>:2633                                    ; preds = %2660, %2632
  %2634 = phi i32 [ %2661, %2660 ], [ 0, %2632 ]
  %2635 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2634, i32 0)  ; BufferLoad(srv,index,wot)
  %2636 = extractvalue %dx.types.ResRet.f32 %2635, 0
  %2637 = extractvalue %dx.types.ResRet.f32 %2635, 1
  %2638 = extractvalue %dx.types.ResRet.f32 %2635, 2
  %2639 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2634, i32 16)  ; BufferLoad(srv,index,wot)
  %2640 = extractvalue %dx.types.ResRet.f32 %2639, 0
  %2641 = extractvalue %dx.types.ResRet.f32 %2639, 1
  %2642 = extractvalue %dx.types.ResRet.f32 %2639, 2
  %2643 = fsub fast float %2636, %2640
  %2644 = fsub fast float %2637, %2641
  %2645 = fsub fast float %2638, %2642
  %2646 = fadd fast float %2640, %2636
  %2647 = fadd fast float %2641, %2637
  %2648 = fadd fast float %2642, %2638
  %2649 = fcmp fast olt float %2145, %2643
  %2650 = fcmp fast olt float %2146, %2644
  %2651 = fcmp fast olt float %2147, %2645
  %2652 = or i1 %2649, %2650
  %2653 = or i1 %2651, %2652
  %2654 = fcmp fast ogt float %2145, %2646
  %2655 = fcmp fast ogt float %2146, %2647
  %2656 = fcmp fast ogt float %2147, %2648
  %2657 = or i1 %2654, %2655
  %2658 = or i1 %2656, %2657
  %2659 = or i1 %2653, %2658
  br i1 %2659, label %2660, label %2663, !dx.controlflow.hints !71

; <label>:2660                                    ; preds = %2633
  %2661 = add nuw i32 %2634, 1
  %2662 = icmp ult i32 %2661, %2630
  br i1 %2662, label %2633, label %2663

; <label>:2663                                    ; preds = %2660, %2633
  %2664 = phi i32 [ 255, %2660 ], [ %2634, %2633 ]
  br label %2665

; <label>:2665                                    ; preds = %2663, %2624
  %2666 = phi i32 [ 255, %2624 ], [ %2664, %2663 ]
  %2667 = icmp eq i32 %2666, 255
  br i1 %2667, label %2673, label %2668, !dx.controlflow.hints !72

; <label>:2668                                    ; preds = %2665
  %2669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2666, i32 156)  ; BufferLoad(srv,index,wot)
  %2670 = extractvalue %dx.types.ResRet.i32 %2669, 0
  %2671 = icmp ne i32 %2670, 0
  %2672 = zext i1 %2671 to i32
  br label %2673

; <label>:2673                                    ; preds = %2668, %2665
  %2674 = phi i32 [ %2672, %2668 ], [ %2628, %2665 ]
  %2675 = icmp eq i32 %2674, 0
  br i1 %2675, label %2676, label %2745, !dx.controlflow.hints !73

; <label>:2676                                    ; preds = %2673
  %2677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %2678 = extractvalue %dx.types.CBufRet.f32 %2677, 3
  %2679 = extractvalue %dx.types.CBufRet.f32 %340, 0
  %2680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %2681 = extractvalue %dx.types.CBufRet.f32 %2680, 2
  %2682 = extractvalue %dx.types.CBufRet.f32 %2680, 3
  br i1 %2667, label %2693, label %2683, !dx.controlflow.hints !74

; <label>:2683                                    ; preds = %2676
  %2684 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2666, i32 60)  ; BufferLoad(srv,index,wot)
  %2685 = extractvalue %dx.types.ResRet.f32 %2684, 0
  %2686 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2666, i32 64)  ; BufferLoad(srv,index,wot)
  %2687 = extractvalue %dx.types.ResRet.f32 %2686, 0
  %2688 = extractvalue %dx.types.ResRet.f32 %2686, 1
  %2689 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2666, i32 72)  ; BufferLoad(srv,index,wot)
  %2690 = extractvalue %dx.types.ResRet.f32 %2689, 0
  %2691 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2666, i32 96)  ; BufferLoad(srv,index,wot)
  %2692 = extractvalue %dx.types.ResRet.f32 %2691, 0
  br label %2693

; <label>:2693                                    ; preds = %2683, %2676
  %2694 = phi float [ %2685, %2683 ], [ %343, %2676 ]
  %2695 = phi float [ %2690, %2683 ], [ %341, %2676 ]
  %2696 = phi float [ %2692, %2683 ], [ %2679, %2676 ]
  %2697 = phi float [ %2687, %2683 ], [ %2681, %2676 ]
  %2698 = phi float [ %2688, %2683 ], [ %2682, %2676 ]
  %2699 = call float @dx.op.binary.f32(i32 35, float %2176, float 0.000000e+00)  ; FMax(a,b)
  %2700 = call float @dx.op.binary.f32(i32 36, float %2699, float 1.000000e+00)  ; FMin(a,b)
  %2701 = call float @dx.op.unary.f32(i32 24, float %2700)  ; Sqrt(value)
  %2702 = call float @dx.op.binary.f32(i32 35, float %2179, float 0x3F847AE140000000)  ; FMax(a,b)
  %2703 = fsub fast float %2177, %2147
  %2704 = fsub fast float %2147, %2178
  %2705 = call float @dx.op.binary.f32(i32 36, float %2704, float %2703)  ; FMin(a,b)
  %2706 = fdiv fast float %2705, %2702
  %2707 = call float @dx.op.unary.f32(i32 7, float %2706)  ; Saturate(value)
  %2708 = fsub fast float %2147, %2695
  %2709 = fdiv fast float %2708, %2694
  %2710 = call float @dx.op.unary.f32(i32 7, float %2709)  ; Saturate(value)
  %2711 = fsub fast float 1.000000e+00, %2710
  %2712 = fmul float %2707, %2711
  %2713 = fmul float %2712, %2712
  %2714 = fmul fast float %2701, %2678
  %2715 = fmul fast float %2714, %2713
  %2716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %2717 = extractvalue %dx.types.CBufRet.f32 %2716, 2
  %2718 = extractvalue %dx.types.CBufRet.f32 %2716, 1
  %2719 = fsub fast float %2715, %2718
  %2720 = fsub fast float %2717, %2718
  %2721 = fdiv fast float %2719, %2720
  %2722 = call float @dx.op.unary.f32(i32 7, float %2721)  ; Saturate(value)
  %2723 = fmul fast float %2722, %2696
  %2724 = fcmp fast ogt float %2698, 0.000000e+00
  br i1 %2724, label %2725, label %2745, !dx.controlflow.hints !75

; <label>:2725                                    ; preds = %2693
  %2726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2727 = extractvalue %dx.types.CBufRet.f32 %2726, 0
  %2728 = extractvalue %dx.types.CBufRet.f32 %2726, 1
  %2729 = extractvalue %dx.types.CBufRet.f32 %2726, 2
  %2730 = fsub fast float %2145, %2727
  %2731 = fsub fast float %2146, %2728
  %2732 = fsub fast float %2147, %2729
  %2733 = fmul fast float %2730, %2730
  %2734 = fmul fast float %2731, %2731
  %2735 = fadd fast float %2733, %2734
  %2736 = fmul fast float %2732, %2732
  %2737 = fadd fast float %2735, %2736
  %2738 = call float @dx.op.unary.f32(i32 24, float %2737)  ; Sqrt(value)
  %2739 = fsub fast float %2738, %2697
  %2740 = fsub fast float %2698, %2697
  %2741 = fdiv fast float %2739, %2740
  %2742 = call float @dx.op.unary.f32(i32 7, float %2741)  ; Saturate(value)
  %2743 = fmul fast float %2742, %2742
  %2744 = fmul fast float %2743, %2723
  br label %2745

; <label>:2745                                    ; preds = %2725, %2693, %2673
  %2746 = phi float [ 0.000000e+00, %2673 ], [ %2744, %2725 ], [ %2723, %2693 ]
  %2747 = fmul fast float %2746, %2141
  %2748 = fadd fast float %2747, %2623
  br label %2749

; <label>:2749                                    ; preds = %2745, %2622
  %2750 = phi float [ %2748, %2745 ], [ %2623, %2622 ]
  %2751 = icmp eq i32 %2390, 0
  br i1 %2751, label %2783, label %2752, !dx.controlflow.hints !76

; <label>:2752                                    ; preds = %2749
  %2753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %2754 = extractvalue %dx.types.CBufRet.f32 %2753, 1
  %2755 = fsub fast float %2141, %2754
  %2756 = extractvalue %dx.types.CBufRet.f32 %2753, 3
  %2757 = fmul fast float %2755, %2756
  %2758 = call float @dx.op.unary.f32(i32 7, float %2757)  ; Saturate(value)
  %2759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %2760 = extractvalue %dx.types.CBufRet.f32 %2759, 3
  %2761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2762 = extractvalue %dx.types.CBufRet.f32 %2761, 2
  %2763 = fsub fast float %2762, %2389
  %2764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %2765 = extractvalue %dx.types.CBufRet.f32 %2764, 3
  %2766 = fmul fast float %2763, %2765
  %2767 = call float @dx.op.unary.f32(i32 7, float %2766)  ; Saturate(value)
  %2768 = fmul fast float %2767, %2760
  %2769 = extractvalue %dx.types.CBufRet.f32 %2764, 0
  %2770 = fsub fast float %2141, %2769
  %2771 = extractvalue %dx.types.CBufRet.f32 %2764, 1
  %2772 = fmul fast float %2770, %2771
  %2773 = call float @dx.op.unary.f32(i32 7, float %2772)  ; Saturate(value)
  %2774 = fsub fast float 1.000000e+00, %2758
  %2775 = fmul fast float %2773, %2774
  %2776 = fadd fast float %2775, %2758
  %2777 = extractvalue %dx.types.CBufRet.f32 %2753, 0
  %2778 = fsub fast float %2768, %2777
  %2779 = fmul fast float %2778, %2776
  %2780 = fadd fast float %2779, %2777
  %2781 = fmul fast float %2780, %2141
  %2782 = fadd fast float %2781, %2750
  br label %2783

; <label>:2783                                    ; preds = %2752, %2749
  %2784 = phi float [ %2782, %2752 ], [ %2750, %2749 ]
  %2785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %2786 = extractvalue %dx.types.CBufRet.f32 %2785, 3
  %2787 = fmul fast float %2784, 0xBFF7154760000000
  %2788 = fmul fast float %2787, %2786
  %2789 = call float @dx.op.unary.f32(i32 21, float %2788)  ; Exp(value)
  %2790 = call float @dx.op.unary.f32(i32 7, float %2789)  ; Saturate(value)
  %2791 = fmul fast float %2790, %2137
  %2792 = fmul fast float %2790, %2138
  %2793 = fmul fast float %2790, %2139
  %2794 = fadd fast float %2791, %2105
  %2795 = fadd fast float %2792, %2106
  %2796 = fadd fast float %2793, %2107
  %2797 = fsub fast float 1.000000e+00, %1174
  %2798 = fmul fast float %1166, %303
  %2799 = fmul fast float %2798, %2797
  %2800 = fmul fast float %2799, %2794
  %2801 = fmul fast float %1167, %303
  %2802 = fmul fast float %2801, %2797
  %2803 = fmul fast float %2802, %2795
  %2804 = fmul fast float %1168, %303
  %2805 = fmul fast float %2804, %2797
  %2806 = fmul fast float %2805, %2796
  %2807 = fadd fast float %2800, %304
  %2808 = fadd fast float %2803, %305
  %2809 = fadd fast float %2806, %306
  %2810 = fdiv fast float %1150, %696
  %2811 = fadd fast float %696, %310
  %2812 = fmul fast float %310, %310
  %2813 = fmul fast float %2811, %2811
  %2814 = fsub fast float %2812, %2813
  %2815 = fmul fast float %2814, -5.000000e-01
  %2816 = fmul fast float %2815, %2810
  %2817 = fadd fast float %2816, %302
  %2818 = fadd fast float %1150, %312
  %2819 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2820 = extractvalue %dx.types.CBufRet.i32 %2819, 0
  %2821 = icmp eq i32 %2820, 0
  br i1 %2821, label %2848, label %2822, !dx.controlflow.hints !92

; <label>:2822                                    ; preds = %2783
  %2823 = icmp ne i32 %317, 0
  %2824 = zext i1 %2823 to i32
  %2825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %2826 = extractvalue %dx.types.CBufRet.f32 %2825, 2
  %2827 = extractvalue %dx.types.CBufRet.f32 %2825, 0
  %2828 = fsub fast float %2811, %2827
  %2829 = fmul fast float %2828, %2826
  %2830 = call float @dx.op.unary.f32(i32 7, float %2829)  ; Saturate(value)
  %2831 = fadd fast float %2830, -5.000000e-01
  %2832 = fmul fast float %2831, 2.000000e+00
  %2833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %2834 = extractvalue %dx.types.CBufRet.f32 %2833, 2
  %2835 = fcmp fast olt float %2832, %2834
  br i1 %2835, label %2836, label %2848, !dx.controlflow.hints !93

; <label>:2836                                    ; preds = %2822
  %2837 = fmul fast float %2832, %2832
  %2838 = fmul fast float %2797, %303
  %2839 = fmul fast float %2832, %2838
  %2840 = fmul fast float %2837, %2838
  %2841 = fmul fast float %2839, %2837
  %2842 = fmul fast float %2837, %2837
  %2843 = fmul fast float %2842, %2838
  %2844 = fadd fast float %2839, %313
  %2845 = fadd fast float %2840, %314
  %2846 = fadd fast float %2841, %315
  %2847 = fadd fast float %2843, %316
  br label %2848

; <label>:2848                                    ; preds = %2836, %2822, %2783
  %2849 = phi float [ %313, %2783 ], [ %2844, %2836 ], [ %313, %2822 ]
  %2850 = phi float [ %314, %2783 ], [ %2845, %2836 ], [ %314, %2822 ]
  %2851 = phi float [ %315, %2783 ], [ %2846, %2836 ], [ %315, %2822 ]
  %2852 = phi float [ %316, %2783 ], [ %2847, %2836 ], [ %316, %2822 ]
  %2853 = phi i32 [ %317, %2783 ], [ 1, %2836 ], [ %2824, %2822 ]
  %2854 = fmul fast float %1174, %303
  br label %2855

; <label>:2855                                    ; preds = %2848, %1169
  %2856 = phi float [ %1170, %1169 ], [ %2811, %2848 ]
  %2857 = phi i32 [ %290, %1169 ], [ %2388, %2848 ]
  %2858 = phi float [ %291, %1169 ], [ %2389, %2848 ]
  %2859 = phi float [ %292, %1169 ], [ %2176, %2848 ]
  %2860 = phi float [ %293, %1169 ], [ %2177, %2848 ]
  %2861 = phi float [ %294, %1169 ], [ %2178, %2848 ]
  %2862 = phi float [ %295, %1169 ], [ %2179, %2848 ]
  %2863 = phi float [ %302, %1169 ], [ %2817, %2848 ]
  %2864 = phi float [ %303, %1169 ], [ %2854, %2848 ]
  %2865 = phi float [ %304, %1169 ], [ %2807, %2848 ]
  %2866 = phi float [ %305, %1169 ], [ %2808, %2848 ]
  %2867 = phi float [ %306, %1169 ], [ %2809, %2848 ]
  %2868 = phi float [ %312, %1169 ], [ %2818, %2848 ]
  %2869 = phi float [ %313, %1169 ], [ %2849, %2848 ]
  %2870 = phi float [ %314, %1169 ], [ %2850, %2848 ]
  %2871 = phi float [ %315, %1169 ], [ %2851, %2848 ]
  %2872 = phi float [ %316, %1169 ], [ %2852, %2848 ]
  %2873 = phi i32 [ %317, %1169 ], [ %2853, %2848 ]
  %2874 = fmul fast float %696, %118
  %2875 = fmul fast float %696, %119
  %2876 = fmul fast float %696, %120
  %2877 = fadd fast float %2874, %307
  %2878 = fadd fast float %2875, %308
  %2879 = fadd fast float %2876, %309
  %2880 = fcmp fast olt float %2856, %270
  %2881 = extractvalue %dx.types.CBufRet.f32 %1155, 2
  %2882 = fcmp fast olt float %2881, %2864
  %2883 = and i1 %2880, %2882
  br i1 %2883, label %289, label %2884

; <label>:2884                                    ; preds = %2855
  br label %2885

; <label>:2885                                    ; preds = %2884, %263
  %2886 = phi float [ 0.000000e+00, %263 ], [ %2863, %2884 ]
  %2887 = phi float [ 1.000000e+00, %263 ], [ %2864, %2884 ]
  %2888 = phi float [ 0.000000e+00, %263 ], [ %2865, %2884 ]
  %2889 = phi float [ 0.000000e+00, %263 ], [ %2866, %2884 ]
  %2890 = phi float [ 0.000000e+00, %263 ], [ %2867, %2884 ]
  %2891 = phi float [ 0.000000e+00, %263 ], [ %2868, %2884 ]
  %2892 = phi float [ 0.000000e+00, %263 ], [ %2869, %2884 ]
  %2893 = phi float [ 0.000000e+00, %263 ], [ %2870, %2884 ]
  %2894 = phi float [ 0.000000e+00, %263 ], [ %2871, %2884 ]
  %2895 = phi float [ 0.000000e+00, %263 ], [ %2872, %2884 ]
  %2896 = phi i32 [ 0, %263 ], [ %2873, %2884 ]
  %2897 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2898 = extractvalue %dx.types.CBufRet.i32 %2897, 0
  %2899 = icmp eq i32 %2898, 0
  br i1 %2899, label %2941, label %2900, !dx.controlflow.hints !94

; <label>:2900                                    ; preds = %2885
  %2901 = icmp eq i32 %2896, 0
  br i1 %2901, label %2940, label %2902, !dx.controlflow.hints !95

; <label>:2902                                    ; preds = %2900
  %2903 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %2904 = extractvalue %dx.types.CBufRet.i32 %2903, 2
  %2905 = icmp eq i32 %2904, 0
  br i1 %2905, label %2912, label %2906, !dx.controlflow.hints !96

; <label>:2906                                    ; preds = %2902
  %2907 = fsub fast float 1.000000e+00, %2887
  %2908 = fdiv fast float %2892, %2907
  %2909 = fdiv fast float %2893, %2907
  %2910 = fdiv fast float %2894, %2907
  %2911 = fdiv fast float %2895, %2907
  br label %2917

; <label>:2912                                    ; preds = %2902
  %2913 = fadd fast float %2892, %2887
  %2914 = fadd fast float %2893, %2887
  %2915 = fadd fast float %2894, %2887
  %2916 = fadd fast float %2895, %2887
  br label %2917

; <label>:2917                                    ; preds = %2912, %2906
  %2918 = phi float [ %2908, %2906 ], [ %2913, %2912 ]
  %2919 = phi float [ %2909, %2906 ], [ %2914, %2912 ]
  %2920 = phi float [ %2910, %2906 ], [ %2915, %2912 ]
  %2921 = phi float [ %2911, %2906 ], [ %2916, %2912 ]
  %2922 = call float @dx.op.binary.f32(i32 35, float %2918, float -1.000000e+00)  ; FMax(a,b)
  %2923 = call float @dx.op.binary.f32(i32 35, float %2919, float -1.000000e+00)  ; FMax(a,b)
  %2924 = call float @dx.op.binary.f32(i32 35, float %2920, float -1.000000e+00)  ; FMax(a,b)
  %2925 = call float @dx.op.binary.f32(i32 35, float %2921, float -1.000000e+00)  ; FMax(a,b)
  %2926 = call float @dx.op.binary.f32(i32 36, float %2922, float 1.000000e+00)  ; FMin(a,b)
  %2927 = call float @dx.op.binary.f32(i32 36, float %2923, float 1.000000e+00)  ; FMin(a,b)
  %2928 = call float @dx.op.binary.f32(i32 36, float %2924, float 1.000000e+00)  ; FMin(a,b)
  %2929 = call float @dx.op.binary.f32(i32 36, float %2925, float 1.000000e+00)  ; FMin(a,b)
  %2930 = fmul fast float %2926, 1.500000e+00
  %2931 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %2928, float %2930)  ; FMad(a,b,c)
  %2932 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %2927, float 0.000000e+00)  ; FMad(a,b,c)
  %2933 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %2929, float %2932)  ; FMad(a,b,c)
  %2934 = fmul fast float %2926, 0x3FEBB67AE0000000
  %2935 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %2928, float %2934)  ; FMad(a,b,c)
  %2936 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %2927, float 0.000000e+00)  ; FMad(a,b,c)
  %2937 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %2929, float %2936)  ; FMad(a,b,c)
  %2938 = fadd fast float %2931, 5.000000e-01
  %2939 = fadd fast float %2935, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %30, i32 %31, i32 0, float %2938, float %2933, float %2939, float %2937, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2941

; <label>:2940                                    ; preds = %2900
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %30, i32 %31, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2941

; <label>:2941                                    ; preds = %2940, %2917, %2885
  %2942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %2943 = extractvalue %dx.types.CBufRet.f32 %2942, 2
  %2944 = fsub fast float %2887, %2943
  %2945 = fdiv fast float %2944, %2943
  %2946 = call float @dx.op.unary.f32(i32 7, float %2945)  ; Saturate(value)
  %2947 = fmul fast float %2946, 2.000000e+00
  %2948 = fsub fast float 3.000000e+00, %2947
  %2949 = fmul fast float %2946, %2946
  %2950 = fmul fast float %2949, %2887
  %2951 = fmul fast float %2950, %2948
  %2952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %2953 = extractvalue %dx.types.CBufRet.f32 %2952, 0
  %2954 = extractvalue %dx.types.CBufRet.f32 %2952, 1
  %2955 = extractvalue %dx.types.CBufRet.f32 %2952, 2
  %2956 = call float @dx.op.dot3.f32(i32 55, float %118, float %119, float %120, float %2953, float %2954, float %2955)  ; Dot3(ax,ay,az,bx,by,bz)
  %2957 = fmul fast float %2956, %2886
  %2958 = fcmp fast ogt float %2891, 0.000000e+00
  %2959 = fdiv fast float 1.000000e+00, %2891
  %2960 = fmul fast float %2957, %2959
  %2961 = select i1 %2958, float %2960, float %129
  %2962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %2963 = extractvalue %dx.types.CBufRet.f32 %2962, 0
  %2964 = extractvalue %dx.types.CBufRet.f32 %2962, 1
  %2965 = extractvalue %dx.types.CBufRet.f32 %2962, 2
  %2966 = fmul fast float %2963, %82
  %2967 = fmul fast float %2964, %82
  %2968 = fmul fast float %2965, %82
  %2969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %2970 = extractvalue %dx.types.CBufRet.f32 %2969, 0
  %2971 = extractvalue %dx.types.CBufRet.f32 %2969, 1
  %2972 = extractvalue %dx.types.CBufRet.f32 %2969, 2
  %2973 = fmul fast float %2970, %83
  %2974 = fmul fast float %2971, %83
  %2975 = fmul fast float %2972, %83
  %2976 = fadd fast float %2973, %2966
  %2977 = fadd fast float %2974, %2967
  %2978 = fadd fast float %2975, %2968
  %2979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %2980 = extractvalue %dx.types.CBufRet.f32 %2979, 0
  %2981 = extractvalue %dx.types.CBufRet.f32 %2979, 1
  %2982 = extractvalue %dx.types.CBufRet.f32 %2979, 2
  %2983 = fadd fast float %2976, %2980
  %2984 = fadd fast float %2977, %2981
  %2985 = fadd fast float %2978, %2982
  %2986 = fmul fast float %2983, %2961
  %2987 = fmul fast float %2984, %2961
  %2988 = fmul fast float %2985, %2961
  %2989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %2990 = extractvalue %dx.types.CBufRet.f32 %2989, 0
  %2991 = extractvalue %dx.types.CBufRet.f32 %2989, 1
  %2992 = extractvalue %dx.types.CBufRet.f32 %2989, 2
  %2993 = extractvalue %dx.types.CBufRet.f32 %2989, 3
  %2994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %2995 = extractvalue %dx.types.CBufRet.f32 %2994, 0
  %2996 = extractvalue %dx.types.CBufRet.f32 %2994, 1
  %2997 = extractvalue %dx.types.CBufRet.f32 %2994, 2
  %2998 = extractvalue %dx.types.CBufRet.f32 %2994, 3
  %2999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %3000 = extractvalue %dx.types.CBufRet.f32 %2999, 0
  %3001 = extractvalue %dx.types.CBufRet.f32 %2999, 1
  %3002 = extractvalue %dx.types.CBufRet.f32 %2999, 2
  %3003 = extractvalue %dx.types.CBufRet.f32 %2999, 3
  %3004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %3005 = extractvalue %dx.types.CBufRet.f32 %3004, 0
  %3006 = extractvalue %dx.types.CBufRet.f32 %3004, 1
  %3007 = extractvalue %dx.types.CBufRet.f32 %3004, 2
  %3008 = extractvalue %dx.types.CBufRet.f32 %3004, 3
  %3009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %3010 = extractvalue %dx.types.CBufRet.f32 %3009, 3
  %3011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %3012 = extractvalue %dx.types.CBufRet.f32 %3011, 3
  %3013 = extractvalue %dx.types.CBufRet.f32 %3011, 0
  %3014 = extractvalue %dx.types.CBufRet.f32 %3011, 1
  %3015 = extractvalue %dx.types.CBufRet.f32 %3011, 2
  %3016 = fcmp fast olt float %3015, -5.000000e-01
  %3017 = call float @dx.op.dot3.f32(i32 55, float %2986, float %2987, float %2988, float %2986, float %2987, float %2988)  ; Dot3(ax,ay,az,bx,by,bz)
  %3018 = call float @dx.op.unary.f32(i32 25, float %3017)  ; Rsqrt(value)
  %3019 = fmul fast float %3018, %3017
  %3020 = fmul fast float %3018, %2986
  %3021 = fmul fast float %3018, %2987
  %3022 = fmul fast float %3018, %2988
  %3023 = fadd fast float %3019, %2993
  %3024 = call float @dx.op.dot3.f32(i32 55, float %3020, float %3021, float %3022, float %2990, float %2991, float %2992)  ; Dot3(ax,ay,az,bx,by,bz)
  %3025 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %3026 = extractvalue %dx.types.CBufRet.i32 %3025, 1
  %3027 = and i32 %3026, 1
  %3028 = icmp ne i32 %3027, 0
  %3029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %3030 = extractvalue %dx.types.CBufRet.f32 %3029, 2
  %3031 = fcmp fast ogt float %3030, 0.000000e+00
  %3032 = and i1 %3028, %3031
  br i1 %3032, label %3033, label %3439, !dx.controlflow.hints !97

; <label>:3033                                    ; preds = %2941
  %3034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %3035 = extractvalue %dx.types.CBufRet.f32 %3034, 3
  %3036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %3037 = extractvalue %dx.types.CBufRet.f32 %3036, 2
  %3038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3039 = extractvalue %dx.types.CBufRet.f32 %3038, 2
  %3040 = fsub fast float %3037, %3039
  %3041 = and i32 %3026, 2
  %3042 = extractvalue %dx.types.CBufRet.i32 %3025, 0
  %3043 = call i32 @dx.op.binary.i32(i32 40, i32 %3042, i32 3)  ; UMin(a,b)
  %3044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %3045 = extractvalue %dx.types.CBufRet.f32 %3044, 0
  %3046 = extractvalue %dx.types.CBufRet.f32 %3044, 1
  %3047 = extractvalue %dx.types.CBufRet.f32 %3038, 0
  %3048 = extractvalue %dx.types.CBufRet.f32 %3038, 1
  %3049 = fsub fast float %3045, %3047
  %3050 = fsub fast float %3046, %3048
  %3051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %3052 = extractvalue %dx.types.CBufRet.f32 %3051, 0
  %3053 = fcmp fast ogt float %3052, 0.000000e+00
  %3054 = fsub fast float -0.000000e+00, %3049
  %3055 = fsub fast float -0.000000e+00, %3050
  %3056 = call float @dx.op.dot2.f32(i32 54, float %3020, float %3021, float %3020, float %3021)  ; Dot2(ax,ay,bx,by)
  %3057 = call float @dx.op.dot2.f32(i32 54, float %3020, float %3021, float %3054, float %3055)  ; Dot2(ax,ay,bx,by)
  %3058 = fmul fast float %3057, 2.000000e+00
  %3059 = call float @dx.op.dot2.f32(i32 54, float %3054, float %3055, float %3054, float %3055)  ; Dot2(ax,ay,bx,by)
  %3060 = fmul fast float %3052, %3052
  %3061 = fsub fast float %3059, %3060
  %3062 = fmul fast float %3058, %3058
  %3063 = fmul fast float %3056, 4.000000e+00
  %3064 = fmul fast float %3063, %3061
  %3065 = fsub fast float %3062, %3064
  %3066 = fcmp fast ogt float %3065, 0.000000e+00
  br i1 %3066, label %3067, label %3082, !dx.controlflow.hints !98

; <label>:3067                                    ; preds = %3033
  %3068 = fcmp fast ogt float %3058, 0.000000e+00
  %3069 = call float @dx.op.unary.f32(i32 24, float %3065)  ; Sqrt(value)
  %3070 = fsub fast float -0.000000e+00, %3069
  %3071 = select i1 %3068, float %3069, float %3070
  %3072 = fadd fast float %3071, %3058
  %3073 = fmul float %3072, -5.000000e-01
  %3074 = fdiv fast float %3073, %3056
  %3075 = call float @dx.op.binary.f32(i32 35, float %3074, float 0.000000e+00)  ; FMax(a,b)
  %3076 = call float @dx.op.binary.f32(i32 36, float %3019, float %3075)  ; FMin(a,b)
  %3077 = fdiv fast float %3061, %3073
  %3078 = call float @dx.op.binary.f32(i32 35, float %3077, float 0.000000e+00)  ; FMax(a,b)
  %3079 = call float @dx.op.binary.f32(i32 36, float %3019, float %3078)  ; FMin(a,b)
  %3080 = call float @dx.op.binary.f32(i32 36, float %3076, float %3079)  ; FMin(a,b)
  %3081 = call float @dx.op.binary.f32(i32 35, float %3076, float %3079)  ; FMax(a,b)
  br label %3082

; <label>:3082                                    ; preds = %3067, %3033
  %3083 = phi float [ %3081, %3067 ], [ -1.000000e+00, %3033 ]
  %3084 = phi float [ %3080, %3067 ], [ -1.000000e+00, %3033 ]
  %3085 = phi i1 [ true, %3067 ], [ false, %3033 ]
  %3086 = and i1 %3053, %3085
  br i1 %3086, label %3087, label %3089, !dx.controlflow.hints !99

; <label>:3087                                    ; preds = %3082
  %3088 = fcmp fast oeq float %3084, %3083
  br i1 %3088, label %3392, label %3090, !dx.controlflow.hints !100

; <label>:3089                                    ; preds = %3082
  br i1 %3053, label %3392, label %3090, !dx.controlflow.hints !101

; <label>:3090                                    ; preds = %3089, %3087
  %3091 = phi float [ %3019, %3089 ], [ %3083, %3087 ]
  %3092 = phi float [ 0.000000e+00, %3089 ], [ %3084, %3087 ]
  %3093 = icmp ne i32 %3041, 0
  %3094 = fmul fast float %3091, %3022
  %3095 = fadd fast float %3094, %3035
  %3096 = fmul fast float %3095, %3091
  %3097 = select i1 %3093, float 0.000000e+00, float %3096
  %3098 = fcmp fast oeq float %3022, 0.000000e+00
  %3099 = fdiv fast float %3040, %3022
  %3100 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3099)  ; FMax(a,b)
  %3101 = select i1 %3098, float %3091, float %3100
  %3102 = call float @dx.op.binary.f32(i32 36, float %3091, float %3101)  ; FMin(a,b)
  %3103 = fcmp fast ogt float %3022, 0.000000e+00
  %3104 = fcmp fast olt float %3040, 0.000000e+00
  br i1 %3103, label %3105, label %3162, !dx.controlflow.hints !102

; <label>:3105                                    ; preds = %3090
  %3106 = icmp eq i32 %3041, 0
  br i1 %3104, label %3107, label %3151, !dx.controlflow.hints !103

; <label>:3107                                    ; preds = %3105
  %3108 = select i1 %3106, float %3091, float 0.000000e+00
  %3109 = fsub fast float -0.000000e+00, %3108
  %3110 = call float @dx.op.unary.f32(i32 6, float %3109)  ; FAbs(value)
  %3111 = fmul fast float %3108, %3022
  %3112 = fadd fast float %3111, %3035
  %3113 = fmul fast float %3110, %3112
  %3114 = fsub fast float %3097, %3113
  %3115 = fsub fast float %3091, %3110
  %3116 = select i1 %3106, float %3115, float 0.000000e+00
  %3117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %3118 = extractvalue %dx.types.CBufRet.f32 %3117, 0
  %3119 = extractvalue %dx.types.CBufRet.f32 %3117, 1
  %3120 = extractvalue %dx.types.CBufRet.f32 %3117, 2
  %3121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %3122 = extractvalue %dx.types.CBufRet.f32 %3121, 0
  %3123 = extractvalue %dx.types.CBufRet.f32 %3121, 1
  %3124 = extractvalue %dx.types.CBufRet.f32 %3121, 2
  %3125 = extractvalue %dx.types.CBufRet.f32 %3121, 3
  %3126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %3127 = extractvalue %dx.types.CBufRet.f32 %3126, 3
  %3128 = call float @dx.op.binary.f32(i32 36, float %3114, float %3127)  ; FMin(a,b)
  %3129 = fmul fast float %3125, %3116
  %3130 = call float @dx.op.unary.f32(i32 7, float %3129)  ; Saturate(value)
  %3131 = fsub fast float %3122, %3118
  %3132 = fsub fast float %3123, %3119
  %3133 = fsub fast float %3124, %3120
  %3134 = fmul fast float %3130, %3131
  %3135 = fmul fast float %3130, %3132
  %3136 = fmul fast float %3130, %3133
  %3137 = fadd fast float %3134, %3118
  %3138 = fadd fast float %3135, %3119
  %3139 = fadd fast float %3136, %3120
  %3140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %3141 = extractvalue %dx.types.CBufRet.f32 %3140, 0
  %3142 = extractvalue %dx.types.CBufRet.f32 %3140, 1
  %3143 = fadd fast float %3142, %3141
  %3144 = call float @dx.op.unary.f32(i32 7, float %3143)  ; Saturate(value)
  %3145 = extractvalue %dx.types.CBufRet.f32 %3140, 2
  %3146 = extractvalue %dx.types.CBufRet.f32 %3140, 3
  %3147 = fadd fast float %3146, %3145
  %3148 = call float @dx.op.unary.f32(i32 7, float %3147)  ; Saturate(value)
  %3149 = fmul fast float %3144, %3128
  %3150 = fmul fast float %3149, %3148
  br label %3392

; <label>:3151                                    ; preds = %3105
  br i1 %3106, label %3152, label %3173, !dx.controlflow.hints !104

; <label>:3152                                    ; preds = %3151
  %3153 = call float @dx.op.binary.f32(i32 36, float %3102, float %3092)  ; FMin(a,b)
  %3154 = fsub fast float %3102, %3153
  %3155 = fsub fast float %3154, %3091
  %3156 = call float @dx.op.unary.f32(i32 6, float %3155)  ; FAbs(value)
  %3157 = fadd fast float %3154, %3091
  %3158 = fmul fast float %3157, %3022
  %3159 = fadd fast float %3158, %3035
  %3160 = fmul fast float %3159, %3156
  %3161 = fsub fast float %3097, %3160
  br label %3173

; <label>:3162                                    ; preds = %3090
  br i1 %3104, label %3163, label %3173, !dx.controlflow.hints !105

; <label>:3163                                    ; preds = %3162
  %3164 = call float @dx.op.binary.f32(i32 35, float %3092, float %3102)  ; FMax(a,b)
  %3165 = icmp eq i32 %3041, 0
  %3166 = select i1 %3165, float %3102, float 0.000000e+00
  %3167 = fsub fast float -0.000000e+00, %3166
  %3168 = call float @dx.op.unary.f32(i32 6, float %3167)  ; FAbs(value)
  %3169 = fmul fast float %3166, %3022
  %3170 = fadd fast float %3169, %3035
  %3171 = fmul fast float %3168, %3170
  %3172 = fsub fast float %3097, %3171
  br label %3173

; <label>:3173                                    ; preds = %3163, %3162, %3152, %3151
  %3174 = phi float [ %3092, %3151 ], [ %3092, %3152 ], [ %3164, %3163 ], [ %3092, %3162 ]
  %3175 = phi float [ 0.000000e+00, %3151 ], [ %3156, %3152 ], [ %3168, %3163 ], [ 0.000000e+00, %3162 ]
  %3176 = phi float [ %3097, %3151 ], [ %3161, %3152 ], [ %3172, %3163 ], [ %3097, %3162 ]
  %3177 = phi float [ %3102, %3151 ], [ %3102, %3152 ], [ %3091, %3163 ], [ %3091, %3162 ]
  %3178 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 0
  store float -1.000000e+00, float* %3178, align 4, !tbaa !106, !noalias !110
  %3179 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 1
  store float -1.000000e+00, float* %3179, align 4, !tbaa !106, !noalias !110
  %3180 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 2
  store float -1.000000e+00, float* %3180, align 4, !tbaa !106, !noalias !110
  %3181 = getelementptr inbounds [3 x float], [3 x float]* %33, i32 0, i32 0
  store float -1.000000e+00, float* %3181, align 4, !tbaa !106, !noalias !110
  %3182 = getelementptr inbounds [3 x float], [3 x float]* %33, i32 0, i32 1
  store float -1.000000e+00, float* %3182, align 4, !tbaa !106, !noalias !110
  %3183 = getelementptr inbounds [3 x float], [3 x float]* %33, i32 0, i32 2
  store float -1.000000e+00, float* %3183, align 4, !tbaa !106, !noalias !110
  %3184 = icmp sgt i32 %3043, 0
  br i1 %3184, label %3185, label %3246

; <label>:3185                                    ; preds = %3173
  br label %3186

; <label>:3186                                    ; preds = %3235, %3185
  %3187 = phi i32 [ %3236, %3235 ], [ 0, %3185 ]
  %3188 = phi i32 [ %3237, %3235 ], [ 0, %3185 ]
  %3189 = add nuw i32 %3188, 171
  %3190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 %3189)  ; CBufferLoadLegacy(handle,regIndex)
  %3191 = extractvalue %dx.types.CBufRet.f32 %3190, 0
  %3192 = extractvalue %dx.types.CBufRet.f32 %3190, 1
  %3193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3194 = extractvalue %dx.types.CBufRet.f32 %3193, 0
  %3195 = extractvalue %dx.types.CBufRet.f32 %3193, 1
  %3196 = fsub fast float %3191, %3194
  %3197 = fsub fast float %3192, %3195
  %3198 = extractvalue %dx.types.CBufRet.f32 %3190, 2
  %3199 = fsub fast float -0.000000e+00, %3196
  %3200 = fsub fast float -0.000000e+00, %3197
  %3201 = call float @dx.op.dot2.f32(i32 54, float %3020, float %3021, float %3199, float %3200)  ; Dot2(ax,ay,bx,by)
  %3202 = fmul fast float %3201, 2.000000e+00
  %3203 = call float @dx.op.dot2.f32(i32 54, float %3199, float %3200, float %3199, float %3200)  ; Dot2(ax,ay,bx,by)
  %3204 = fmul fast float %3198, %3198
  %3205 = fsub fast float %3203, %3204
  %3206 = fmul fast float %3202, %3202
  %3207 = fmul fast float %3063, %3205
  %3208 = fsub fast float %3206, %3207
  %3209 = fcmp fast ogt float %3208, 0.000000e+00
  br i1 %3209, label %3210, label %3225, !dx.controlflow.hints !98

; <label>:3210                                    ; preds = %3186
  %3211 = fcmp fast ogt float %3202, 0.000000e+00
  %3212 = call float @dx.op.unary.f32(i32 24, float %3208)  ; Sqrt(value)
  %3213 = fsub fast float -0.000000e+00, %3212
  %3214 = select i1 %3211, float %3212, float %3213
  %3215 = fadd fast float %3214, %3202
  %3216 = fmul float %3215, -5.000000e-01
  %3217 = fdiv fast float %3216, %3056
  %3218 = call float @dx.op.binary.f32(i32 35, float %3217, float 0.000000e+00)  ; FMax(a,b)
  %3219 = call float @dx.op.binary.f32(i32 36, float %3091, float %3218)  ; FMin(a,b)
  %3220 = fdiv fast float %3205, %3216
  %3221 = call float @dx.op.binary.f32(i32 35, float %3220, float 0.000000e+00)  ; FMax(a,b)
  %3222 = call float @dx.op.binary.f32(i32 36, float %3091, float %3221)  ; FMin(a,b)
  %3223 = call float @dx.op.binary.f32(i32 36, float %3219, float %3222)  ; FMin(a,b)
  %3224 = call float @dx.op.binary.f32(i32 35, float %3219, float %3222)  ; FMax(a,b)
  br label %3225

; <label>:3225                                    ; preds = %3210, %3186
  %3226 = phi float [ %3224, %3210 ], [ -1.000000e+00, %3186 ]
  %3227 = phi float [ %3223, %3210 ], [ -1.000000e+00, %3186 ]
  %3228 = phi i1 [ true, %3210 ], [ false, %3186 ]
  br i1 %3228, label %3229, label %3235, !dx.controlflow.hints !121

; <label>:3229                                    ; preds = %3225
  %3230 = call float @dx.op.binary.f32(i32 35, float %3174, float %3227)  ; FMax(a,b)
  %3231 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 %3188
  store float %3230, float* %3231, align 4, !tbaa !106, !noalias !110
  %3232 = call float @dx.op.binary.f32(i32 35, float %3174, float %3226)  ; FMax(a,b)
  %3233 = getelementptr inbounds [3 x float], [3 x float]* %33, i32 0, i32 %3188
  store float %3232, float* %3233, align 4, !tbaa !106, !noalias !110
  %3234 = add nsw i32 %3187, 1
  br label %3235

; <label>:3235                                    ; preds = %3229, %3225
  %3236 = phi i32 [ %3234, %3229 ], [ %3187, %3225 ]
  %3237 = add nuw nsw i32 %3188, 1
  %3238 = icmp eq i32 %3237, %3043
  br i1 %3238, label %3239, label %3186

; <label>:3239                                    ; preds = %3235
  %3240 = load float, float* %3180, align 4, !tbaa !106, !alias.scope !122, !noalias !125
  %3241 = load float, float* %3179, align 4, !tbaa !106, !alias.scope !128, !noalias !129
  %3242 = load float, float* %3178, align 4, !tbaa !106, !alias.scope !130, !noalias !131
  %3243 = load float, float* %3183, align 4, !tbaa !106, !alias.scope !132, !noalias !135
  %3244 = load float, float* %3182, align 4, !tbaa !106, !alias.scope !138, !noalias !139
  %3245 = load float, float* %3181, align 4, !tbaa !106, !alias.scope !140, !noalias !141
  br label %3246

; <label>:3246                                    ; preds = %3239, %3173
  %3247 = phi float [ -1.000000e+00, %3173 ], [ %3245, %3239 ]
  %3248 = phi float [ -1.000000e+00, %3173 ], [ %3244, %3239 ]
  %3249 = phi float [ -1.000000e+00, %3173 ], [ %3243, %3239 ]
  %3250 = phi float [ -1.000000e+00, %3173 ], [ %3242, %3239 ]
  %3251 = phi float [ -1.000000e+00, %3173 ], [ %3241, %3239 ]
  %3252 = phi float [ -1.000000e+00, %3173 ], [ %3240, %3239 ]
  %3253 = phi i32 [ 0, %3173 ], [ %3236, %3239 ]
  %3254 = call float @dx.op.binary.f32(i32 36, float %3251, float %3252)  ; FMin(a,b)
  %3255 = call float @dx.op.binary.f32(i32 36, float %3250, float %3254)  ; FMin(a,b)
  %3256 = call float @dx.op.binary.f32(i32 35, float %3250, float %3251)  ; FMax(a,b)
  %3257 = call float @dx.op.binary.f32(i32 36, float %3256, float %3252)  ; FMin(a,b)
  %3258 = call float @dx.op.binary.f32(i32 36, float %3250, float %3251)  ; FMin(a,b)
  %3259 = call float @dx.op.binary.f32(i32 35, float %3258, float %3257)  ; FMax(a,b)
  %3260 = call float @dx.op.binary.f32(i32 35, float %3251, float %3252)  ; FMax(a,b)
  %3261 = call float @dx.op.binary.f32(i32 35, float %3250, float %3260)  ; FMax(a,b)
  store float %3255, float* %3178, align 4, !tbaa !106, !alias.scope !130, !noalias !131
  store float %3259, float* %3179, align 4, !tbaa !106, !alias.scope !128, !noalias !129
  store float %3261, float* %3180, align 4, !tbaa !106, !alias.scope !122, !noalias !125
  %3262 = call float @dx.op.binary.f32(i32 36, float %3248, float %3249)  ; FMin(a,b)
  %3263 = call float @dx.op.binary.f32(i32 36, float %3247, float %3262)  ; FMin(a,b)
  %3264 = call float @dx.op.binary.f32(i32 35, float %3247, float %3248)  ; FMax(a,b)
  %3265 = call float @dx.op.binary.f32(i32 36, float %3264, float %3249)  ; FMin(a,b)
  %3266 = call float @dx.op.binary.f32(i32 36, float %3247, float %3248)  ; FMin(a,b)
  %3267 = call float @dx.op.binary.f32(i32 35, float %3266, float %3265)  ; FMax(a,b)
  %3268 = call float @dx.op.binary.f32(i32 35, float %3248, float %3249)  ; FMax(a,b)
  %3269 = call float @dx.op.binary.f32(i32 35, float %3247, float %3268)  ; FMax(a,b)
  store float %3263, float* %3181, align 4, !tbaa !106, !alias.scope !140, !noalias !141
  store float %3267, float* %3182, align 4, !tbaa !106, !alias.scope !138, !noalias !139
  store float %3269, float* %3183, align 4, !tbaa !106, !alias.scope !132, !noalias !135
  %3270 = sub nsw i32 3, %3253
  %3271 = icmp sgt i32 %3270, 2
  br i1 %3271, label %3272, label %3310, !dx.controlflow.hints !142

; <label>:3272                                    ; preds = %3246
  %3273 = icmp eq i32 %3041, 0
  %3274 = fsub fast float %3091, %3175
  %3275 = select i1 %3273, float %3274, float %3175
  %3276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %3277 = extractvalue %dx.types.CBufRet.f32 %3276, 0
  %3278 = extractvalue %dx.types.CBufRet.f32 %3276, 1
  %3279 = extractvalue %dx.types.CBufRet.f32 %3276, 2
  %3280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %3281 = extractvalue %dx.types.CBufRet.f32 %3280, 0
  %3282 = extractvalue %dx.types.CBufRet.f32 %3280, 1
  %3283 = extractvalue %dx.types.CBufRet.f32 %3280, 2
  %3284 = extractvalue %dx.types.CBufRet.f32 %3280, 3
  %3285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %3286 = extractvalue %dx.types.CBufRet.f32 %3285, 3
  %3287 = call float @dx.op.binary.f32(i32 36, float %3176, float %3286)  ; FMin(a,b)
  %3288 = fmul fast float %3284, %3275
  %3289 = call float @dx.op.unary.f32(i32 7, float %3288)  ; Saturate(value)
  %3290 = fsub fast float %3281, %3277
  %3291 = fsub fast float %3282, %3278
  %3292 = fsub fast float %3283, %3279
  %3293 = fmul fast float %3289, %3290
  %3294 = fmul fast float %3289, %3291
  %3295 = fmul fast float %3289, %3292
  %3296 = fadd fast float %3293, %3277
  %3297 = fadd fast float %3294, %3278
  %3298 = fadd fast float %3295, %3279
  %3299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %3300 = extractvalue %dx.types.CBufRet.f32 %3299, 0
  %3301 = extractvalue %dx.types.CBufRet.f32 %3299, 1
  %3302 = fadd fast float %3301, %3300
  %3303 = call float @dx.op.unary.f32(i32 7, float %3302)  ; Saturate(value)
  %3304 = extractvalue %dx.types.CBufRet.f32 %3299, 2
  %3305 = extractvalue %dx.types.CBufRet.f32 %3299, 3
  %3306 = fadd fast float %3305, %3304
  %3307 = call float @dx.op.unary.f32(i32 7, float %3306)  ; Saturate(value)
  %3308 = fmul fast float %3303, %3287
  %3309 = fmul fast float %3308, %3307
  br label %3392

; <label>:3310                                    ; preds = %3246
  %3311 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 %3270
  %3312 = load float, float* %3311, align 4, !tbaa !106, !noalias !110
  %3313 = fcmp fast olt float %3312, %3177
  %3314 = icmp sgt i32 %3253, 0
  %3315 = and i1 %3314, %3313
  br i1 %3315, label %3316, label %3353

; <label>:3316                                    ; preds = %3310
  br label %3317

; <label>:3317                                    ; preds = %3346, %3316
  %3318 = phi float [ %3347, %3346 ], [ %3175, %3316 ]
  %3319 = phi float [ %3348, %3346 ], [ %3176, %3316 ]
  %3320 = phi float [ %3328, %3346 ], [ %3312, %3316 ]
  %3321 = phi i32 [ %3325, %3346 ], [ %3270, %3316 ]
  %3322 = getelementptr inbounds [3 x float], [3 x float]* %33, i32 0, i32 %3321
  %3323 = load float, float* %3322, align 4, !tbaa !106, !noalias !110
  %3324 = icmp slt i32 %3321, 2
  %3325 = add nsw i32 %3321, 1
  %3326 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 %3325
  %3327 = load float, float* %3326, align 4, !tbaa !106, !noalias !110
  %3328 = select i1 %3324, float %3327, float %3091
  %3329 = call float @dx.op.binary.f32(i32 36, float %3328, float %3323)  ; FMin(a,b)
  %3330 = call float @dx.op.binary.f32(i32 36, float %3177, float %3329)  ; FMin(a,b)
  %3331 = icmp eq i32 %3041, 0
  %3332 = fadd fast float %3330, %3320
  %3333 = fmul fast float %3332, %3022
  %3334 = fadd fast float %3333, %3035
  br i1 %3331, label %3340, label %3335, !dx.controlflow.hints !143

; <label>:3335                                    ; preds = %3317
  %3336 = fsub fast float %3330, %3320
  %3337 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3336)  ; FMax(a,b)
  %3338 = fmul fast float %3337, %3334
  %3339 = fadd fast float %3338, %3319
  br label %3346

; <label>:3340                                    ; preds = %3317
  %3341 = fsub fast float %3320, %3330
  %3342 = call float @dx.op.unary.f32(i32 6, float %3341)  ; FAbs(value)
  %3343 = fadd fast float %3342, %3318
  %3344 = fmul fast float %3342, %3334
  %3345 = fsub fast float %3319, %3344
  br label %3346

; <label>:3346                                    ; preds = %3340, %3335
  %3347 = phi float [ %3337, %3335 ], [ %3343, %3340 ]
  %3348 = phi float [ %3339, %3335 ], [ %3345, %3340 ]
  %3349 = fcmp fast olt float %3328, %3177
  %3350 = icmp slt i32 %3325, 3
  %3351 = and i1 %3350, %3349
  br i1 %3351, label %3317, label %3352

; <label>:3352                                    ; preds = %3346
  br label %3353

; <label>:3353                                    ; preds = %3352, %3310
  %3354 = phi float [ %3175, %3310 ], [ %3347, %3352 ]
  %3355 = phi float [ %3176, %3310 ], [ %3348, %3352 ]
  %3356 = fsub fast float %3091, %3354
  %3357 = select i1 %3093, float %3354, float %3356
  %3358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %3359 = extractvalue %dx.types.CBufRet.f32 %3358, 0
  %3360 = extractvalue %dx.types.CBufRet.f32 %3358, 1
  %3361 = extractvalue %dx.types.CBufRet.f32 %3358, 2
  %3362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %3363 = extractvalue %dx.types.CBufRet.f32 %3362, 0
  %3364 = extractvalue %dx.types.CBufRet.f32 %3362, 1
  %3365 = extractvalue %dx.types.CBufRet.f32 %3362, 2
  %3366 = extractvalue %dx.types.CBufRet.f32 %3362, 3
  %3367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %3368 = extractvalue %dx.types.CBufRet.f32 %3367, 3
  %3369 = call float @dx.op.binary.f32(i32 36, float %3355, float %3368)  ; FMin(a,b)
  %3370 = fmul fast float %3366, %3357
  %3371 = call float @dx.op.unary.f32(i32 7, float %3370)  ; Saturate(value)
  %3372 = fsub fast float %3363, %3359
  %3373 = fsub fast float %3364, %3360
  %3374 = fsub fast float %3365, %3361
  %3375 = fmul fast float %3371, %3372
  %3376 = fmul fast float %3371, %3373
  %3377 = fmul fast float %3371, %3374
  %3378 = fadd fast float %3375, %3359
  %3379 = fadd fast float %3376, %3360
  %3380 = fadd fast float %3377, %3361
  %3381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %3382 = extractvalue %dx.types.CBufRet.f32 %3381, 0
  %3383 = extractvalue %dx.types.CBufRet.f32 %3381, 1
  %3384 = fadd fast float %3383, %3382
  %3385 = call float @dx.op.unary.f32(i32 7, float %3384)  ; Saturate(value)
  %3386 = extractvalue %dx.types.CBufRet.f32 %3381, 2
  %3387 = extractvalue %dx.types.CBufRet.f32 %3381, 3
  %3388 = fadd fast float %3387, %3386
  %3389 = call float @dx.op.unary.f32(i32 7, float %3388)  ; Saturate(value)
  %3390 = fmul fast float %3385, %3369
  %3391 = fmul fast float %3390, %3389
  br label %3392

; <label>:3392                                    ; preds = %3353, %3272, %3107, %3089, %3087
  %3393 = phi float [ %3116, %3107 ], [ %3275, %3272 ], [ %3357, %3353 ], [ 0.000000e+00, %3087 ], [ 0.000000e+00, %3089 ]
  %3394 = phi float [ %3150, %3107 ], [ %3309, %3272 ], [ %3391, %3353 ], [ 0.000000e+00, %3087 ], [ 0.000000e+00, %3089 ]
  %3395 = phi float [ %3137, %3107 ], [ %3296, %3272 ], [ %3378, %3353 ], [ 0.000000e+00, %3087 ], [ 0.000000e+00, %3089 ]
  %3396 = phi float [ %3138, %3107 ], [ %3297, %3272 ], [ %3379, %3353 ], [ 0.000000e+00, %3087 ], [ 0.000000e+00, %3089 ]
  %3397 = phi float [ %3139, %3107 ], [ %3298, %3272 ], [ %3380, %3353 ], [ 0.000000e+00, %3087 ], [ 0.000000e+00, %3089 ]
  %3398 = fmul fast float %3030, %3394
  %3399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3400 = extractvalue %dx.types.CBufRet.f32 %3399, 2
  %3401 = fsub fast float %3037, %3400
  %3402 = fcmp fast olt float %3398, -2.000000e+01
  %3403 = call float @dx.op.unary.f32(i32 21, float %3398)  ; Exp(value)
  %3404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %3405 = extractvalue %dx.types.CBufRet.f32 %3404, 2
  %3406 = extractvalue %dx.types.CBufRet.f32 %3404, 3
  %3407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %3408 = extractvalue %dx.types.CBufRet.f32 %3407, 2
  %3409 = fmul fast float %3406, %3401
  %3410 = call float @dx.op.unary.f32(i32 7, float %3409)  ; Saturate(value)
  %3411 = fsub fast float 1.000000e+00, %3410
  %3412 = fmul fast float %3022, 5.000000e-01
  %3413 = fadd fast float %3412, 5.000000e-01
  %3414 = call float @dx.op.unary.f32(i32 7, float %3413)  ; Saturate(value)
  %3415 = fsub fast float 1.000000e+00, %3414
  %3416 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %3411)  ; FMax(a,b)
  %3417 = fdiv fast float %3415, %3416
  %3418 = fsub fast float %3401, %2988
  %3419 = call float @dx.op.unary.f32(i32 6, float %3418)  ; FAbs(value)
  %3420 = fmul fast float %3419, %3405
  %3421 = call float @dx.op.unary.f32(i32 7, float %3417)  ; Saturate(value)
  %3422 = fsub fast float 1.000000e+00, %3420
  %3423 = fmul fast float %3422, %3421
  %3424 = fadd fast float %3423, %3420
  %3425 = fmul fast float %3408, %3401
  %3426 = call float @dx.op.unary.f32(i32 7, float %3425)  ; Saturate(value)
  %3427 = fsub fast float 1.000000e+00, %3424
  %3428 = fmul fast float %3427, %3426
  %3429 = fadd fast float %3428, %3424
  %3430 = call float @dx.op.unary.f32(i32 7, float %3429)  ; Saturate(value)
  %3431 = fadd fast float %3403, -1.000000e+00
  %3432 = select i1 %3402, float -1.000000e+00, float %3431
  %3433 = fmul fast float %3430, %3432
  %3434 = fadd fast float %3433, 1.000000e+00
  %3435 = fsub fast float -0.000000e+00, %3433
  %3436 = fmul fast float %3395, %3435
  %3437 = fmul fast float %3396, %3435
  %3438 = fmul fast float %3397, %3435
  br label %3439

; <label>:3439                                    ; preds = %3392, %2941
  %3440 = phi float [ %3393, %3392 ], [ 0.000000e+00, %2941 ]
  %3441 = phi float [ %3434, %3392 ], [ 1.000000e+00, %2941 ]
  %3442 = phi float [ %3436, %3392 ], [ 0.000000e+00, %2941 ]
  %3443 = phi float [ %3437, %3392 ], [ 0.000000e+00, %2941 ]
  %3444 = phi float [ %3438, %3392 ], [ 0.000000e+00, %2941 ]
  %3445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %3446 = extractvalue %dx.types.CBufRet.f32 %3445, 1
  %3447 = fsub fast float 1.000000e+00, %3441
  %3448 = fmul fast float %3447, %3023
  %3449 = fmul fast float %3448, %3446
  %3450 = fsub fast float %3023, %3449
  br i1 %3016, label %3451, label %3480, !dx.controlflow.hints !144

; <label>:3451                                    ; preds = %3439
  %3452 = fmul fast float %3024, %3013
  %3453 = fadd fast float %3452, %3014
  %3454 = call float @dx.op.unary.f32(i32 7, float %3453)  ; Saturate(value)
  %3455 = fmul fast float %2995, %3450
  %3456 = fsub fast float -0.000000e+00, %3455
  %3457 = fmul fast float %2996, %3450
  %3458 = fsub fast float -0.000000e+00, %3457
  %3459 = call float @dx.op.unary.f32(i32 21, float %3456)  ; Exp(value)
  %3460 = call float @dx.op.unary.f32(i32 21, float %3458)  ; Exp(value)
  %3461 = call float @dx.op.binary.f32(i32 35, float %3003, float %3459)  ; FMax(a,b)
  %3462 = call float @dx.op.binary.f32(i32 35, float %3003, float %3460)  ; FMax(a,b)
  %3463 = fsub fast float %3462, %3461
  %3464 = fmul fast float %3463, %3454
  %3465 = fadd fast float %3464, %3461
  %3466 = call float @dx.op.unary.f32(i32 7, float %3465)  ; Saturate(value)
  %3467 = fsub fast float %3000, %3005
  %3468 = fsub fast float %3001, %3006
  %3469 = fsub fast float %3002, %3007
  %3470 = fmul fast float %3454, %3467
  %3471 = fmul fast float %3454, %3468
  %3472 = fmul fast float %3454, %3469
  %3473 = fadd fast float %3470, %3005
  %3474 = fadd fast float %3471, %3006
  %3475 = fadd fast float %3472, %3007
  %3476 = fsub fast float 1.000000e+00, %3466
  %3477 = fmul fast float %3476, %3473
  %3478 = fmul fast float %3476, %3474
  %3479 = fmul fast float %3476, %3475
  br label %3539

; <label>:3480                                    ; preds = %3439
  %3481 = fmul fast float %3450, %3012
  %3482 = call float @dx.op.unary.f32(i32 7, float %3481)  ; Saturate(value)
  %3483 = fsub fast float 2.000000e+00, %3482
  %3484 = fmul fast float %3482, 9.921875e-01
  %3485 = fmul fast float %3484, %3483
  %3486 = fadd fast float %3485, 3.906250e-03
  %3487 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %26, float %3486, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3488 = extractvalue %dx.types.ResRet.f32 %3487, 0
  %3489 = fsub fast float %3482, %3488
  %3490 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3489)  ; FMax(a,b)
  %3491 = fmul fast float %2998, %2988
  %3492 = call float @dx.op.unary.f32(i32 6, float %3491)  ; FAbs(value)
  %3493 = fcmp fast ogt float %3492, 0x3EB0C6F7A0000000
  br i1 %3493, label %3494, label %3500, !dx.controlflow.hints !145

; <label>:3494                                    ; preds = %3480
  %3495 = fmul fast float %3491, 0xBFF7154760000000
  %3496 = call float @dx.op.unary.f32(i32 21, float %3495)  ; Exp(value)
  %3497 = fsub fast float 1.000000e+00, %3496
  %3498 = fdiv fast float %3497, %3491
  %3499 = fmul fast float %3498, %3008
  br label %3500

; <label>:3500                                    ; preds = %3494, %3480
  %3501 = phi float [ %3499, %3494 ], [ %3008, %3480 ]
  %3502 = fadd fast float %3501, %3010
  %3503 = fmul fast float %3502, %3490
  %3504 = fmul fast float %2995, %3503
  %3505 = fsub fast float -0.000000e+00, %3504
  %3506 = fmul fast float %2996, %3503
  %3507 = fsub fast float -0.000000e+00, %3506
  %3508 = fmul fast float %2997, %3503
  %3509 = fsub fast float -0.000000e+00, %3508
  %3510 = call float @dx.op.unary.f32(i32 21, float %3505)  ; Exp(value)
  %3511 = call float @dx.op.unary.f32(i32 21, float %3507)  ; Exp(value)
  %3512 = call float @dx.op.unary.f32(i32 21, float %3509)  ; Exp(value)
  %3513 = fmul fast float %3024, %3024
  %3514 = fadd fast float %3513, 1.000000e+00
  %3515 = fmul fast float %3514, 0x3FAE8EC8A0000000
  %3516 = fmul fast float %3515, %3005
  %3517 = fmul fast float %3515, %3006
  %3518 = fmul fast float %3515, %3007
  %3519 = fmul fast float %3024, %3003
  %3520 = fsub fast float 1.000000e+00, %3519
  %3521 = fmul fast float %3003, %3003
  %3522 = fsub fast float 1.000000e+00, %3521
  %3523 = fmul fast float %3522, 0x3FB45F3060000000
  %3524 = fmul fast float %3520, %3520
  %3525 = fdiv fast float 1.000000e+00, %3524
  %3526 = fmul fast float %3523, %3525
  %3527 = fmul fast float %3526, %3000
  %3528 = fmul fast float %3526, %3001
  %3529 = fmul fast float %3526, %3002
  %3530 = fadd fast float %3527, %3516
  %3531 = fadd fast float %3528, %3517
  %3532 = fadd fast float %3529, %3518
  %3533 = fsub fast float 1.000000e+00, %3510
  %3534 = fsub fast float 1.000000e+00, %3511
  %3535 = fsub fast float 1.000000e+00, %3512
  %3536 = fmul fast float %3530, %3533
  %3537 = fmul fast float %3531, %3534
  %3538 = fmul fast float %3532, %3535
  br label %3539

; <label>:3539                                    ; preds = %3500, %3451
  %3540 = phi float [ %3477, %3451 ], [ %3536, %3500 ]
  %3541 = phi float [ %3478, %3451 ], [ %3537, %3500 ]
  %3542 = phi float [ %3479, %3451 ], [ %3538, %3500 ]
  %3543 = phi float [ %3466, %3451 ], [ %3510, %3500 ]
  %3544 = phi float [ %3466, %3451 ], [ %3511, %3500 ]
  %3545 = phi float [ %3466, %3451 ], [ %3512, %3500 ]
  br i1 %3032, label %3546, label %3744, !dx.controlflow.hints !146

; <label>:3546                                    ; preds = %3539
  %3547 = extractvalue %dx.types.CBufRet.f32 %3445, 0
  %3548 = fmul fast float %3547, %3447
  %3549 = fsub fast float %3442, %3540
  %3550 = fsub fast float %3443, %3541
  %3551 = fsub fast float %3444, %3542
  %3552 = fmul fast float %3548, %3549
  %3553 = fmul fast float %3548, %3550
  %3554 = fmul fast float %3548, %3551
  %3555 = fadd fast float %3552, %3540
  %3556 = fadd fast float %3553, %3541
  %3557 = fadd fast float %3554, %3542
  %3558 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3543)  ; FMax(a,b)
  %3559 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3544)  ; FMax(a,b)
  %3560 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3545)  ; FMax(a,b)
  %3561 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3441)  ; FMax(a,b)
  %3562 = call float @dx.op.binary.f32(i32 35, float %3440, float %3450)  ; FMax(a,b)
  %3563 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %3562)  ; FMax(a,b)
  %3564 = fdiv fast float %3440, %3563
  %3565 = call float @dx.op.unary.f32(i32 7, float %3564)  ; Saturate(value)
  %3566 = fdiv fast float %3450, %3563
  %3567 = call float @dx.op.unary.f32(i32 7, float %3566)  ; Saturate(value)
  %3568 = fcmp fast une float %3561, 1.000000e+00
  br i1 %3568, label %3569, label %3582, !dx.controlflow.hints !147

; <label>:3569                                    ; preds = %3546
  %3570 = call float @dx.op.unary.f32(i32 23, float %3561)  ; Log(value)
  %3571 = fmul fast float %3570, 0x3FE62E4300000000
  %3572 = fmul fast float %3442, %3571
  %3573 = fsub fast float -0.000000e+00, %3572
  %3574 = fmul fast float %3443, %3571
  %3575 = fsub fast float -0.000000e+00, %3574
  %3576 = fmul fast float %3444, %3571
  %3577 = fsub fast float -0.000000e+00, %3576
  %3578 = fsub fast float 1.000000e+00, %3561
  %3579 = fdiv fast float %3573, %3578
  %3580 = fdiv fast float %3575, %3578
  %3581 = fdiv fast float %3577, %3578
  br label %3582

; <label>:3582                                    ; preds = %3569, %3546
  %3583 = phi float [ %3579, %3569 ], [ %3442, %3546 ]
  %3584 = phi float [ %3580, %3569 ], [ %3443, %3546 ]
  %3585 = phi float [ %3581, %3569 ], [ %3444, %3546 ]
  %3586 = phi float [ %3571, %3569 ], [ 0.000000e+00, %3546 ]
  %3587 = fcmp fast une float %3558, 1.000000e+00
  br i1 %3587, label %3588, label %3595, !dx.controlflow.hints !148

; <label>:3588                                    ; preds = %3582
  %3589 = call float @dx.op.unary.f32(i32 23, float %3558)  ; Log(value)
  %3590 = fmul fast float %3589, 0x3FE62E4300000000
  %3591 = fmul fast float %3555, %3590
  %3592 = fsub fast float -0.000000e+00, %3591
  %3593 = fsub fast float 1.000000e+00, %3558
  %3594 = fdiv fast float %3592, %3593
  br label %3595

; <label>:3595                                    ; preds = %3588, %3582
  %3596 = phi float [ %3594, %3588 ], [ %3555, %3582 ]
  %3597 = phi float [ %3590, %3588 ], [ 0.000000e+00, %3582 ]
  %3598 = fcmp fast une float %3559, 1.000000e+00
  br i1 %3598, label %3599, label %3606, !dx.controlflow.hints !148

; <label>:3599                                    ; preds = %3595
  %3600 = call float @dx.op.unary.f32(i32 23, float %3559)  ; Log(value)
  %3601 = fmul fast float %3600, 0x3FE62E4300000000
  %3602 = fmul fast float %3556, %3601
  %3603 = fsub fast float -0.000000e+00, %3602
  %3604 = fsub fast float 1.000000e+00, %3559
  %3605 = fdiv fast float %3603, %3604
  br label %3606

; <label>:3606                                    ; preds = %3599, %3595
  %3607 = phi float [ %3605, %3599 ], [ %3556, %3595 ]
  %3608 = phi float [ %3601, %3599 ], [ 0.000000e+00, %3595 ]
  %3609 = fcmp fast une float %3560, 1.000000e+00
  br i1 %3609, label %3610, label %3617, !dx.controlflow.hints !148

; <label>:3610                                    ; preds = %3606
  %3611 = call float @dx.op.unary.f32(i32 23, float %3560)  ; Log(value)
  %3612 = fmul fast float %3611, 0x3FE62E4300000000
  %3613 = fmul fast float %3557, %3612
  %3614 = fsub fast float -0.000000e+00, %3613
  %3615 = fsub fast float 1.000000e+00, %3560
  %3616 = fdiv fast float %3614, %3615
  br label %3617

; <label>:3617                                    ; preds = %3610, %3606
  %3618 = phi float [ %3616, %3610 ], [ %3557, %3606 ]
  %3619 = phi float [ %3612, %3610 ], [ 0.000000e+00, %3606 ]
  %3620 = fmul fast float %3583, %3567
  %3621 = fmul fast float %3584, %3567
  %3622 = fmul fast float %3585, %3567
  %3623 = fmul fast float %3586, %3567
  %3624 = fmul fast float %3596, %3565
  %3625 = fmul fast float %3607, %3565
  %3626 = fmul fast float %3618, %3565
  %3627 = fmul fast float %3597, %3565
  %3628 = fmul fast float %3608, %3565
  %3629 = fmul fast float %3619, %3565
  %3630 = fadd fast float %3624, %3620
  %3631 = fadd fast float %3625, %3621
  %3632 = fadd fast float %3626, %3622
  %3633 = fadd fast float %3627, %3623
  %3634 = fadd fast float %3628, %3623
  %3635 = fadd fast float %3629, %3623
  %3636 = fcmp fast une float %3633, 0.000000e+00
  br i1 %3636, label %3637, label %3644, !dx.controlflow.hints !149

; <label>:3637                                    ; preds = %3617
  %3638 = fmul fast float %3633, 0x3FF7154760000000
  %3639 = call float @dx.op.unary.f32(i32 21, float %3638)  ; Exp(value)
  %3640 = fsub fast float 1.000000e+00, %3639
  %3641 = fmul fast float %3630, %3640
  %3642 = fsub fast float -0.000000e+00, %3641
  %3643 = fdiv fast float %3642, %3633
  br label %3644

; <label>:3644                                    ; preds = %3637, %3617
  %3645 = phi float [ %3639, %3637 ], [ 1.000000e+00, %3617 ]
  %3646 = phi float [ %3643, %3637 ], [ %3630, %3617 ]
  %3647 = fcmp fast une float %3634, 0.000000e+00
  br i1 %3647, label %3648, label %3655, !dx.controlflow.hints !149

; <label>:3648                                    ; preds = %3644
  %3649 = fmul fast float %3634, 0x3FF7154760000000
  %3650 = call float @dx.op.unary.f32(i32 21, float %3649)  ; Exp(value)
  %3651 = fsub fast float 1.000000e+00, %3650
  %3652 = fmul fast float %3631, %3651
  %3653 = fsub fast float -0.000000e+00, %3652
  %3654 = fdiv fast float %3653, %3634
  br label %3655

; <label>:3655                                    ; preds = %3648, %3644
  %3656 = phi float [ %3650, %3648 ], [ 1.000000e+00, %3644 ]
  %3657 = phi float [ %3654, %3648 ], [ %3631, %3644 ]
  %3658 = fcmp fast une float %3635, 0.000000e+00
  br i1 %3658, label %3659, label %3666, !dx.controlflow.hints !149

; <label>:3659                                    ; preds = %3655
  %3660 = fmul fast float %3635, 0x3FF7154760000000
  %3661 = call float @dx.op.unary.f32(i32 21, float %3660)  ; Exp(value)
  %3662 = fsub fast float 1.000000e+00, %3661
  %3663 = fmul fast float %3632, %3662
  %3664 = fsub fast float -0.000000e+00, %3663
  %3665 = fdiv fast float %3664, %3635
  br label %3666

; <label>:3666                                    ; preds = %3659, %3655
  %3667 = phi float [ %3661, %3659 ], [ 1.000000e+00, %3655 ]
  %3668 = phi float [ %3665, %3659 ], [ %3632, %3655 ]
  %3669 = fcmp fast ogt float %3565, %3567
  br i1 %3669, label %3670, label %3690, !dx.controlflow.hints !150

; <label>:3670                                    ; preds = %3666
  %3671 = fsub fast float 1.000000e+00, %3567
  %3672 = fmul fast float %3583, %3671
  %3673 = fmul fast float %3584, %3671
  %3674 = fmul fast float %3585, %3671
  %3675 = fmul fast float %3586, %3671
  %3676 = fcmp fast une float %3675, 0.000000e+00
  br i1 %3676, label %3677, label %3728, !dx.controlflow.hints !151

; <label>:3677                                    ; preds = %3670
  %3678 = fmul fast float %3675, 0x3FF7154760000000
  %3679 = call float @dx.op.unary.f32(i32 21, float %3678)  ; Exp(value)
  %3680 = fsub fast float 1.000000e+00, %3679
  %3681 = fmul fast float %3672, %3680
  %3682 = fsub fast float -0.000000e+00, %3681
  %3683 = fmul fast float %3673, %3680
  %3684 = fsub fast float -0.000000e+00, %3683
  %3685 = fmul fast float %3674, %3680
  %3686 = fsub fast float -0.000000e+00, %3685
  %3687 = fdiv fast float %3682, %3675
  %3688 = fdiv fast float %3684, %3675
  %3689 = fdiv fast float %3686, %3675
  br label %3728

; <label>:3690                                    ; preds = %3666
  %3691 = fsub fast float 1.000000e+00, %3565
  %3692 = fmul fast float %3596, %3691
  %3693 = fmul fast float %3607, %3691
  %3694 = fmul fast float %3618, %3691
  %3695 = fmul fast float %3597, %3691
  %3696 = fmul fast float %3608, %3691
  %3697 = fmul fast float %3619, %3691
  %3698 = fcmp fast une float %3695, 0.000000e+00
  br i1 %3698, label %3699, label %3706, !dx.controlflow.hints !149

; <label>:3699                                    ; preds = %3690
  %3700 = fmul fast float %3695, 0x3FF7154760000000
  %3701 = call float @dx.op.unary.f32(i32 21, float %3700)  ; Exp(value)
  %3702 = fsub fast float 1.000000e+00, %3701
  %3703 = fmul fast float %3692, %3702
  %3704 = fsub fast float -0.000000e+00, %3703
  %3705 = fdiv fast float %3704, %3695
  br label %3706

; <label>:3706                                    ; preds = %3699, %3690
  %3707 = phi float [ %3705, %3699 ], [ %3692, %3690 ]
  %3708 = phi float [ %3701, %3699 ], [ 1.000000e+00, %3690 ]
  %3709 = fcmp fast une float %3696, 0.000000e+00
  br i1 %3709, label %3710, label %3717, !dx.controlflow.hints !149

; <label>:3710                                    ; preds = %3706
  %3711 = fmul fast float %3696, 0x3FF7154760000000
  %3712 = call float @dx.op.unary.f32(i32 21, float %3711)  ; Exp(value)
  %3713 = fsub fast float 1.000000e+00, %3712
  %3714 = fmul fast float %3693, %3713
  %3715 = fsub fast float -0.000000e+00, %3714
  %3716 = fdiv fast float %3715, %3696
  br label %3717

; <label>:3717                                    ; preds = %3710, %3706
  %3718 = phi float [ %3716, %3710 ], [ %3693, %3706 ]
  %3719 = phi float [ %3712, %3710 ], [ 1.000000e+00, %3706 ]
  %3720 = fcmp fast une float %3697, 0.000000e+00
  br i1 %3720, label %3721, label %3728, !dx.controlflow.hints !149

; <label>:3721                                    ; preds = %3717
  %3722 = fmul fast float %3697, 0x3FF7154760000000
  %3723 = call float @dx.op.unary.f32(i32 21, float %3722)  ; Exp(value)
  %3724 = fsub fast float 1.000000e+00, %3723
  %3725 = fmul fast float %3694, %3724
  %3726 = fsub fast float -0.000000e+00, %3725
  %3727 = fdiv fast float %3726, %3697
  br label %3728

; <label>:3728                                    ; preds = %3721, %3717, %3677, %3670
  %3729 = phi float [ %3727, %3721 ], [ %3689, %3677 ], [ %3674, %3670 ], [ %3694, %3717 ]
  %3730 = phi float [ %3718, %3721 ], [ %3688, %3677 ], [ %3673, %3670 ], [ %3718, %3717 ]
  %3731 = phi float [ %3707, %3721 ], [ %3687, %3677 ], [ %3672, %3670 ], [ %3707, %3717 ]
  %3732 = phi float [ %3723, %3721 ], [ %3679, %3677 ], [ 1.000000e+00, %3670 ], [ 1.000000e+00, %3717 ]
  %3733 = phi float [ %3719, %3721 ], [ %3679, %3677 ], [ 1.000000e+00, %3670 ], [ %3719, %3717 ]
  %3734 = phi float [ %3708, %3721 ], [ %3679, %3677 ], [ 1.000000e+00, %3670 ], [ %3708, %3717 ]
  %3735 = fmul fast float %3734, %3646
  %3736 = fmul fast float %3733, %3657
  %3737 = fmul fast float %3732, %3668
  %3738 = fadd fast float %3735, %3731
  %3739 = fadd fast float %3736, %3730
  %3740 = fadd fast float %3737, %3729
  %3741 = fmul fast float %3734, %3645
  %3742 = fmul fast float %3733, %3656
  %3743 = fmul fast float %3732, %3667
  br label %3744

; <label>:3744                                    ; preds = %3728, %3539
  %3745 = phi float [ %3545, %3539 ], [ %3743, %3728 ]
  %3746 = phi float [ %3544, %3539 ], [ %3742, %3728 ]
  %3747 = phi float [ %3543, %3539 ], [ %3741, %3728 ]
  %3748 = phi float [ %3542, %3539 ], [ %3740, %3728 ]
  %3749 = phi float [ %3541, %3539 ], [ %3739, %3728 ]
  %3750 = phi float [ %3540, %3539 ], [ %3738, %3728 ]
  %3751 = fmul fast float %3747, %2888
  %3752 = fmul fast float %3746, %2889
  %3753 = fmul fast float %3745, %2890
  %3754 = fsub fast float 1.000000e+00, %2951
  %3755 = fmul fast float %3750, %3754
  %3756 = fmul fast float %3749, %3754
  %3757 = fmul fast float %3748, %3754
  %3758 = fadd fast float %3755, %3751
  %3759 = fadd fast float %3756, %3752
  %3760 = fadd fast float %3757, %3753
  %3761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %3762 = extractvalue %dx.types.CBufRet.f32 %3761, 2
  %3763 = fmul fast float %3762, %2961
  %3764 = call float @dx.op.unary.f32(i32 7, float %3763)  ; Saturate(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %30, i32 %31, i32 undef, float %2951, float %2951, float %2951, float %2951, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %3765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3766 = extractvalue %dx.types.CBufRet.f32 %3765, 0
  %3767 = fmul fast float %3766, %3758
  %3768 = fmul fast float %3766, %3759
  %3769 = fmul fast float %3766, %3760
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %30, i32 %31, i32 undef, float %3767, float %3768, float %3769, float %3767, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %30, i32 %31, i32 undef, float %3764, float %3764, float %3764, float %3764, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!42 = !{void ()* @cs_fog_raymarching_air_clouds_particles_brfog, !"cs_fog_raymarching_air_clouds_particles_brfog", null, !4, !43}
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
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !57}
!57 = !{!"llvm.loop.unroll.disable"}
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
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 2}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 2}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 2}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 1}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 1}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 2}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 1}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 2}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 2}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 2}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 2}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 2}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 1}
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
!97 = distinct !{!97, !"dx.controlflow.hints", i32 1}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 2}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 2}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 2}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 2}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 2}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 2}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 2}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 2}
!106 = !{!107, !107, i64 0}
!107 = !{!"float", !108, i64 0}
!108 = !{!"omnipotent char", !109, i64 0}
!109 = !{!"Simple C/C++ TBAA"}
!110 = !{!111, !113, !115, !116, !118, !119, !120}
!111 = distinct !{!111, !112, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!112 = distinct !{!112, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!113 = distinct !{!113, !114, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!114 = distinct !{!114, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!115 = distinct !{!115, !114, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!116 = distinct !{!116, !117, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %scattering"}
!117 = distinct !{!117, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z"}
!118 = distinct !{!118, !117, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %transmission"}
!119 = distinct !{!119, !117, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %depthDensityWeighted"}
!120 = distinct !{!120, !117, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %rawShadowmapData"}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 2}
!122 = !{!123}
!123 = distinct !{!123, !124, !"\01?sort@@YAXAIAM00@Z: %c"}
!124 = distinct !{!124, !"\01?sort@@YAXAIAM00@Z"}
!125 = !{!126, !127, !111, !113, !115, !116, !118, !119, !120}
!126 = distinct !{!126, !124, !"\01?sort@@YAXAIAM00@Z: %a"}
!127 = distinct !{!127, !124, !"\01?sort@@YAXAIAM00@Z: %b"}
!128 = !{!127}
!129 = !{!126, !123, !111, !113, !115, !116, !118, !119, !120}
!130 = !{!126}
!131 = !{!127, !123, !111, !113, !115, !116, !118, !119, !120}
!132 = !{!133}
!133 = distinct !{!133, !134, !"\01?sort@@YAXAIAM00@Z: %c"}
!134 = distinct !{!134, !"\01?sort@@YAXAIAM00@Z"}
!135 = !{!136, !137, !111, !113, !115, !116, !118, !119, !120}
!136 = distinct !{!136, !134, !"\01?sort@@YAXAIAM00@Z: %a"}
!137 = distinct !{!137, !134, !"\01?sort@@YAXAIAM00@Z: %b"}
!138 = !{!137}
!139 = !{!136, !133, !111, !113, !115, !116, !118, !119, !120}
!140 = !{!136}
!141 = !{!137, !133, !111, !113, !115, !116, !118, !119, !120}
!142 = distinct !{!142, !"dx.controlflow.hints", i32 2}
!143 = distinct !{!143, !"dx.controlflow.hints", i32 2}
!144 = distinct !{!144, !"dx.controlflow.hints", i32 1}
!145 = distinct !{!145, !"dx.controlflow.hints", i32 2}
!146 = distinct !{!146, !"dx.controlflow.hints", i32 1}
!147 = distinct !{!147, !"dx.controlflow.hints", i32 1}
!148 = distinct !{!148, !"dx.controlflow.hints", i32 1}
!149 = distinct !{!149, !"dx.controlflow.hints", i32 1}
!150 = distinct !{!150, !"dx.controlflow.hints", i32 2}
!151 = distinct !{!151, !"dx.controlflow.hints", i32 1}

