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
; shader hash: 87e1efcb2d350cd10ecf8c76daafa8db
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

define void @cs_fog_raymarching_air_clouds_heightmap_particles() {
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
  %211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %212 = extractvalue %dx.types.CBufRet.f32 %211, 3
  %213 = fsub fast float -0.000000e+00, %76
  %214 = fsub fast float -0.000000e+00, %77
  %215 = fsub fast float %212, %78
  %216 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %213, float %214, float %215)  ; Dot3(ax,ay,az,bx,by,bz)
  %217 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %119, float %120, float %121)  ; Dot3(ax,ay,az,bx,by,bz)
  %218 = fdiv fast float 1.000000e+00, %217
  %219 = fmul fast float %218, %216
  %220 = fcmp fast olt float %219, 0.000000e+00
  %221 = fcmp fast ogt float %121, 0.000000e+00
  %222 = and i1 %221, %220
  br i1 %222, label %227, label %223, !dx.controlflow.hints !48

; <label>:223                                     ; preds = %207
  %224 = fcmp fast olt float %121, 0.000000e+00
  br i1 %224, label %225, label %227, !dx.controlflow.hints !49

; <label>:225                                     ; preds = %223
  %226 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %219)  ; FMax(a,b)
  br label %227

; <label>:227                                     ; preds = %225, %223, %207
  %228 = phi float [ 0.000000e+00, %207 ], [ %226, %225 ], [ 0.000000e+00, %223 ]
  %229 = phi float [ 0.000000e+00, %207 ], [ 0x47EFFFFFE0000000, %225 ], [ %219, %223 ]
  %230 = fcmp fast oeq float %229, 0.000000e+00
  br i1 %230, label %234, label %231, !dx.controlflow.hints !50

; <label>:231                                     ; preds = %227
  %232 = call float @dx.op.binary.f32(i32 36, float %210, float %228)  ; FMin(a,b)
  %233 = call float @dx.op.binary.f32(i32 35, float %209, float %229)  ; FMax(a,b)
  br label %234

; <label>:234                                     ; preds = %231, %227
  %235 = phi i32 [ 1, %231 ], [ 0, %227 ]
  %236 = phi float [ %233, %231 ], [ %209, %227 ]
  %237 = phi float [ %232, %231 ], [ %210, %227 ]
  %238 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %239 = extractvalue %dx.types.CBufRet.i32 %238, 3
  %240 = icmp eq i32 %239, 0
  %241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %242 = extractvalue %dx.types.CBufRet.f32 %241, 2
  %243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %244 = extractvalue %dx.types.CBufRet.f32 %243, 2
  %245 = fsub fast float %242, %78
  %246 = fadd fast float %245, %244
  br i1 %240, label %254, label %247, !dx.controlflow.hints !51

; <label>:247                                     ; preds = %234
  %248 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %213, float %214, float %246)  ; Dot3(ax,ay,az,bx,by,bz)
  %249 = fmul fast float %218, %248
  %250 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %213, float %214, float %245)  ; Dot3(ax,ay,az,bx,by,bz)
  %251 = fmul fast float %218, %250
  %252 = call float @dx.op.binary.f32(i32 36, float %249, float %251)  ; FMin(a,b)
  %253 = call float @dx.op.binary.f32(i32 35, float %249, float %251)  ; FMax(a,b)
  br label %287

; <label>:254                                     ; preds = %234
  %255 = fdiv fast float 1.000000e+00, %119
  %256 = fdiv fast float 1.000000e+00, %120
  %257 = fdiv fast float 1.000000e+00, %121
  %258 = extractvalue %dx.types.CBufRet.f32 %241, 0
  %259 = extractvalue %dx.types.CBufRet.f32 %241, 1
  %260 = extractvalue %dx.types.CBufRet.f32 %243, 0
  %261 = extractvalue %dx.types.CBufRet.f32 %243, 1
  %262 = fsub fast float %258, %76
  %263 = fmul fast float %262, %255
  %264 = fadd fast float %262, %260
  %265 = fmul fast float %264, %255
  %266 = call float @dx.op.binary.f32(i32 36, float %263, float %265)  ; FMin(a,b)
  %267 = call float @dx.op.binary.f32(i32 35, float %263, float %265)  ; FMax(a,b)
  %268 = fsub fast float %259, %77
  %269 = fmul fast float %268, %256
  %270 = fadd fast float %268, %261
  %271 = fmul fast float %270, %256
  %272 = call float @dx.op.binary.f32(i32 36, float %269, float %271)  ; FMin(a,b)
  %273 = call float @dx.op.binary.f32(i32 35, float %266, float %272)  ; FMax(a,b)
  %274 = call float @dx.op.binary.f32(i32 35, float %269, float %271)  ; FMax(a,b)
  %275 = call float @dx.op.binary.f32(i32 36, float %267, float %274)  ; FMin(a,b)
  %276 = fmul fast float %245, %257
  %277 = fmul fast float %246, %257
  %278 = call float @dx.op.binary.f32(i32 36, float %276, float %277)  ; FMin(a,b)
  %279 = call float @dx.op.binary.f32(i32 35, float %273, float %278)  ; FMax(a,b)
  %280 = call float @dx.op.binary.f32(i32 35, float %276, float %277)  ; FMax(a,b)
  %281 = call float @dx.op.binary.f32(i32 36, float %275, float %280)  ; FMin(a,b)
  %282 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %279)  ; FMax(a,b)
  %283 = fcmp fast ult float %281, %282
  br i1 %283, label %287, label %284, !dx.controlflow.hints !52

; <label>:284                                     ; preds = %254
  %285 = call float @dx.op.binary.f32(i32 36, float %279, float %281)  ; FMin(a,b)
  %286 = call float @dx.op.binary.f32(i32 35, float %279, float %281)  ; FMax(a,b)
  br label %287

; <label>:287                                     ; preds = %284, %254, %247
  %288 = phi float [ %252, %247 ], [ %285, %284 ], [ 0.000000e+00, %254 ]
  %289 = phi float [ %253, %247 ], [ %286, %284 ], [ 0.000000e+00, %254 ]
  %290 = fcmp fast oeq float %289, 0.000000e+00
  br i1 %290, label %294, label %291, !dx.controlflow.hints !53

; <label>:291                                     ; preds = %287
  %292 = call float @dx.op.binary.f32(i32 36, float %237, float %288)  ; FMin(a,b)
  %293 = call float @dx.op.binary.f32(i32 35, float %236, float %289)  ; FMax(a,b)
  br label %294

; <label>:294                                     ; preds = %291, %287
  %295 = phi i32 [ 1, %291 ], [ 0, %287 ]
  %296 = phi float [ %293, %291 ], [ %236, %287 ]
  %297 = phi float [ %292, %291 ], [ %237, %287 ]
  %298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %299 = extractvalue %dx.types.CBufRet.f32 %298, 3
  %300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %301 = extractvalue %dx.types.CBufRet.f32 %300, 0
  %302 = fsub fast float %299, %78
  %303 = fadd fast float %302, %301
  %304 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %213, float %214, float %303)  ; Dot3(ax,ay,az,bx,by,bz)
  %305 = fmul fast float %218, %304
  %306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %307 = extractvalue %dx.types.CBufRet.f32 %306, 2
  %308 = fsub fast float %307, %78
  %309 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %213, float %214, float %308)  ; Dot3(ax,ay,az,bx,by,bz)
  %310 = fmul fast float %218, %309
  %311 = call float @dx.op.binary.f32(i32 36, float %305, float %310)  ; FMin(a,b)
  %312 = call float @dx.op.binary.f32(i32 35, float %305, float %310)  ; FMax(a,b)
  %313 = call float @dx.op.binary.f32(i32 36, float %297, float %311)  ; FMin(a,b)
  %314 = call float @dx.op.binary.f32(i32 35, float %296, float %312)  ; FMax(a,b)
  %315 = fdiv fast float 1.000000e+00, %119
  %316 = fdiv fast float 1.000000e+00, %120
  %317 = fdiv fast float 1.000000e+00, %121
  %318 = call float @dx.op.binary.f32(i32 36, float %140, float %314)  ; FMin(a,b)
  %319 = call float @dx.op.binary.f32(i32 35, float %117, float %313)  ; FMax(a,b)
  %320 = extractvalue %dx.types.CBufRet.f32 %211, 0
  %321 = fmul fast float %65, 2.000000e+00
  %322 = fadd fast float %321, -1.000000e+00
  %323 = fmul fast float %320, %322
  %324 = fadd fast float %323, %319
  %325 = fcmp fast olt float %324, %318
  %326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %327 = extractvalue %dx.types.CBufRet.f32 %326, 2
  %328 = fcmp fast olt float %327, 1.000000e+00
  %329 = and i1 %325, %328
  br i1 %329, label %330, label %3007

; <label>:330                                     ; preds = %294
  %331 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %332 = extractvalue %dx.types.CBufRet.i32 %331, 1
  %333 = add i32 %332, -1
  %334 = fmul fast float %324, %121
  %335 = fadd fast float %334, %78
  %336 = fmul fast float %324, %120
  %337 = fadd fast float %336, %77
  %338 = fmul fast float %324, %119
  %339 = fadd fast float %338, %76
  br label %340

; <label>:340                                     ; preds = %2979, %330
  %341 = phi float [ %2981, %2979 ], [ undef, %330 ]
  %342 = phi float [ %2982, %2979 ], [ undef, %330 ]
  %343 = phi float [ %2983, %2979 ], [ undef, %330 ]
  %344 = phi float [ %2984, %2979 ], [ undef, %330 ]
  %345 = phi float [ %642, %2979 ], [ undef, %330 ]
  %346 = phi float [ %643, %2979 ], [ undef, %330 ]
  %347 = phi float [ %644, %2979 ], [ undef, %330 ]
  %348 = phi float [ %645, %2979 ], [ undef, %330 ]
  %349 = phi float [ %2985, %2979 ], [ 0.000000e+00, %330 ]
  %350 = phi float [ %2986, %2979 ], [ 1.000000e+00, %330 ]
  %351 = phi float [ %2987, %2979 ], [ 0.000000e+00, %330 ]
  %352 = phi float [ %2988, %2979 ], [ 0.000000e+00, %330 ]
  %353 = phi float [ %2989, %2979 ], [ 0.000000e+00, %330 ]
  %354 = phi float [ %2999, %2979 ], [ %339, %330 ]
  %355 = phi float [ %3000, %2979 ], [ %337, %330 ]
  %356 = phi float [ %3001, %2979 ], [ %335, %330 ]
  %357 = phi float [ %2980, %2979 ], [ %324, %330 ]
  %358 = phi i32 [ %647, %2979 ], [ 10, %330 ]
  %359 = phi i32 [ %539, %2979 ], [ %333, %330 ]
  %360 = phi float [ %2990, %2979 ], [ 0.000000e+00, %330 ]
  %361 = phi float [ %2991, %2979 ], [ 0.000000e+00, %330 ]
  %362 = phi float [ %2992, %2979 ], [ 0.000000e+00, %330 ]
  %363 = phi float [ %2993, %2979 ], [ 0.000000e+00, %330 ]
  %364 = phi float [ %2994, %2979 ], [ 0.000000e+00, %330 ]
  %365 = phi i32 [ %2995, %2979 ], [ 0, %330 ]
  %366 = fsub fast float -0.000000e+00, %355
  %367 = fsub fast float -0.000000e+00, %354
  %368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %369 = extractvalue %dx.types.CBufRet.f32 %368, 0
  %370 = icmp eq i32 %208, 0
  br i1 %370, label %536, label %371, !dx.controlflow.hints !54

; <label>:371                                     ; preds = %340
  %372 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %373 = extractvalue %dx.types.CBufRet.i32 %372, 1
  %374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %375 = extractvalue %dx.types.CBufRet.f32 %374, 1
  %376 = fcmp fast ogt float %375, %357
  br i1 %376, label %377, label %379, !dx.controlflow.hints !55

; <label>:377                                     ; preds = %371
  %378 = fsub fast float %375, %357
  br label %526

; <label>:379                                     ; preds = %371
  %380 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %381 = extractvalue %dx.types.CBufRet.i32 %380, 3
  %382 = icmp eq i32 %381, 0
  %383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %384 = extractvalue %dx.types.CBufRet.f32 %383, 2
  %385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %386 = extractvalue %dx.types.CBufRet.f32 %385, 2
  %387 = fsub fast float %384, %356
  %388 = fadd fast float %387, %386
  %389 = fsub fast float 0xC7EFFFFFE0000000, %356
  br i1 %382, label %397, label %390, !dx.controlflow.hints !45

; <label>:390                                     ; preds = %379
  %391 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %367, float %366, float %388)  ; Dot3(ax,ay,az,bx,by,bz)
  %392 = fmul fast float %218, %391
  %393 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %367, float %366, float %389)  ; Dot3(ax,ay,az,bx,by,bz)
  %394 = fmul fast float %218, %393
  %395 = call float @dx.op.binary.f32(i32 36, float %392, float %394)  ; FMin(a,b)
  %396 = call float @dx.op.binary.f32(i32 35, float %392, float %394)  ; FMax(a,b)
  br label %427

; <label>:397                                     ; preds = %379
  %398 = extractvalue %dx.types.CBufRet.f32 %383, 0
  %399 = extractvalue %dx.types.CBufRet.f32 %383, 1
  %400 = extractvalue %dx.types.CBufRet.f32 %385, 0
  %401 = extractvalue %dx.types.CBufRet.f32 %385, 1
  %402 = fsub fast float %398, %354
  %403 = fmul fast float %315, %402
  %404 = fadd fast float %402, %400
  %405 = fmul fast float %404, %315
  %406 = call float @dx.op.binary.f32(i32 36, float %403, float %405)  ; FMin(a,b)
  %407 = call float @dx.op.binary.f32(i32 35, float %403, float %405)  ; FMax(a,b)
  %408 = fsub fast float %399, %355
  %409 = fmul fast float %316, %408
  %410 = fadd fast float %408, %401
  %411 = fmul fast float %410, %316
  %412 = call float @dx.op.binary.f32(i32 36, float %409, float %411)  ; FMin(a,b)
  %413 = call float @dx.op.binary.f32(i32 35, float %406, float %412)  ; FMax(a,b)
  %414 = call float @dx.op.binary.f32(i32 35, float %409, float %411)  ; FMax(a,b)
  %415 = call float @dx.op.binary.f32(i32 36, float %407, float %414)  ; FMin(a,b)
  %416 = fmul fast float %317, %389
  %417 = fmul fast float %317, %388
  %418 = call float @dx.op.binary.f32(i32 36, float %416, float %417)  ; FMin(a,b)
  %419 = call float @dx.op.binary.f32(i32 35, float %413, float %418)  ; FMax(a,b)
  %420 = call float @dx.op.binary.f32(i32 35, float %416, float %417)  ; FMax(a,b)
  %421 = call float @dx.op.binary.f32(i32 36, float %415, float %420)  ; FMin(a,b)
  %422 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %419)  ; FMax(a,b)
  %423 = fcmp fast ult float %421, %422
  br i1 %423, label %427, label %424, !dx.controlflow.hints !46

; <label>:424                                     ; preds = %397
  %425 = call float @dx.op.binary.f32(i32 36, float %419, float %421)  ; FMin(a,b)
  %426 = call float @dx.op.binary.f32(i32 35, float %419, float %421)  ; FMax(a,b)
  br label %427

; <label>:427                                     ; preds = %424, %397, %390
  %428 = phi float [ %395, %390 ], [ %425, %424 ], [ 0.000000e+00, %397 ]
  %429 = phi float [ %396, %390 ], [ %426, %424 ], [ 0.000000e+00, %397 ]
  %430 = fcmp fast ogt float %428, 0.000000e+00
  br i1 %430, label %526, label %431, !dx.controlflow.hints !56

; <label>:431                                     ; preds = %427
  %432 = fcmp fast ugt float %429, 0.000000e+00
  br i1 %432, label %433, label %526, !dx.controlflow.hints !57

; <label>:433                                     ; preds = %431
  %434 = icmp sgt i32 %359, 0
  br i1 %434, label %435, label %520

; <label>:435                                     ; preds = %433
  br label %436

; <label>:436                                     ; preds = %516, %435
  %437 = phi i32 [ %517, %516 ], [ %359, %435 ]
  %438 = sitofp i32 %437 to float
  %439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %440 = extractvalue %dx.types.CBufRet.f32 %439, 0
  %441 = extractvalue %dx.types.CBufRet.f32 %439, 1
  %442 = fsub fast float %354, %440
  %443 = fsub fast float %355, %441
  %444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %445 = extractvalue %dx.types.CBufRet.f32 %444, 0
  %446 = extractvalue %dx.types.CBufRet.f32 %444, 1
  %447 = fmul fast float %442, %445
  %448 = fmul fast float %443, %446
  %449 = fsub fast float 1.000000e+00, %448
  %450 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %451 = extractvalue %dx.types.CBufRet.i32 %450, 3
  %452 = icmp eq i32 %451, 0
  br i1 %452, label %459, label %453, !dx.controlflow.hints !58

; <label>:453                                     ; preds = %436
  %454 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %25, float %447, float %449, float undef, float undef, i32 0, i32 0, i32 undef, float %438)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %455 = extractvalue %dx.types.ResRet.f32 %454, 0
  %456 = extractvalue %dx.types.ResRet.f32 %454, 1
  %457 = extractvalue %dx.types.ResRet.f32 %454, 2
  %458 = extractvalue %dx.types.ResRet.f32 %454, 3
  br label %465

; <label>:459                                     ; preds = %436
  %460 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %26, float %447, float %449, float undef, float undef, i32 0, i32 0, i32 undef, float %438)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %461 = extractvalue %dx.types.ResRet.f32 %460, 0
  %462 = extractvalue %dx.types.ResRet.f32 %460, 1
  %463 = extractvalue %dx.types.ResRet.f32 %460, 2
  %464 = extractvalue %dx.types.ResRet.f32 %460, 3
  br label %465

; <label>:465                                     ; preds = %459, %453
  %466 = phi float [ %455, %453 ], [ %461, %459 ]
  %467 = phi float [ %456, %453 ], [ %462, %459 ]
  %468 = phi float [ %457, %453 ], [ %463, %459 ]
  %469 = phi float [ %458, %453 ], [ %464, %459 ]
  %470 = extractvalue %dx.types.CBufRet.f32 %444, 3
  %471 = fmul fast float %470, %466
  %472 = extractvalue %dx.types.CBufRet.f32 %439, 2
  %473 = fadd fast float %471, %472
  %474 = fmul fast float %470, %467
  %475 = fadd fast float %474, %472
  %476 = fmul fast float %470, %468
  %477 = fadd fast float %476, %472
  %478 = and i32 %437, 31
  %479 = shl i32 1, %478
  %480 = uitofp i32 %479 to float
  %481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %482 = extractvalue %dx.types.CBufRet.f32 %481, 3
  %483 = fdiv fast float 1.000000e+00, %482
  %484 = fmul fast float %483, %480
  %485 = fmul fast float %484, %121
  %486 = fadd fast float %485, %356
  %487 = fcmp fast oeq float %469, 0.000000e+00
  %488 = fcmp fast ogt float %356, %475
  %489 = fcmp fast ogt float %486, %475
  %490 = and i1 %488, %489
  %491 = or i1 %487, %490
  br i1 %491, label %492, label %496, !dx.controlflow.hints !59

; <label>:492                                     ; preds = %465
  %493 = add nsw i32 %437, 1
  %494 = add nsw i32 %373, -1
  %495 = call i32 @dx.op.binary.i32(i32 38, i32 %493, i32 %494)  ; IMin(a,b)
  br label %526

; <label>:496                                     ; preds = %465
  %497 = fcmp fast olt float %356, %477
  %498 = fcmp fast olt float %486, %477
  %499 = and i1 %497, %498
  br i1 %499, label %500, label %504, !dx.controlflow.hints !60

; <label>:500                                     ; preds = %496
  %501 = add nsw i32 %437, 1
  %502 = add nsw i32 %373, -1
  %503 = call i32 @dx.op.binary.i32(i32 38, i32 %501, i32 %502)  ; IMin(a,b)
  br label %526

; <label>:504                                     ; preds = %496
  %505 = fcmp fast olt float %356, %473
  %506 = fcmp fast olt float %486, %473
  %507 = and i1 %505, %506
  br i1 %507, label %508, label %516, !dx.controlflow.hints !61

; <label>:508                                     ; preds = %504
  %509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %510 = extractvalue %dx.types.CBufRet.f32 %509, 3
  %511 = extractvalue %dx.types.CBufRet.f32 %444, 2
  %512 = fcmp fast une float %510, %511
  br i1 %512, label %513, label %520, !dx.controlflow.hints !62

; <label>:513                                     ; preds = %508
  %514 = fsub fast float %356, %477
  %515 = call float @dx.op.binary.f32(i32 36, float %484, float %514)  ; FMin(a,b)
  br label %520

; <label>:516                                     ; preds = %504
  %517 = add nsw i32 %437, -1
  %518 = icmp sgt i32 %437, 1
  br i1 %518, label %436, label %519

; <label>:519                                     ; preds = %516
  br label %520

; <label>:520                                     ; preds = %519, %513, %508, %433
  %521 = phi float [ %515, %513 ], [ %484, %508 ], [ 0.000000e+00, %433 ], [ 0.000000e+00, %519 ]
  %522 = phi i32 [ %437, %513 ], [ %437, %508 ], [ %359, %433 ], [ %517, %519 ]
  %523 = add nsw i32 %522, 1
  %524 = add nsw i32 %373, -1
  %525 = call i32 @dx.op.binary.i32(i32 38, i32 %523, i32 %524)  ; IMin(a,b)
  br label %526

; <label>:526                                     ; preds = %520, %500, %492, %431, %427, %377
  %527 = phi float [ %378, %377 ], [ %484, %492 ], [ %484, %500 ], [ %521, %520 ], [ 0x47EFFFFFE0000000, %431 ], [ %428, %427 ]
  %528 = phi i32 [ %208, %377 ], [ %208, %492 ], [ %208, %500 ], [ %208, %520 ], [ 0, %431 ], [ %208, %427 ]
  %529 = phi i32 [ %359, %377 ], [ %495, %492 ], [ %503, %500 ], [ %525, %520 ], [ %359, %431 ], [ %359, %427 ]
  %530 = icmp ne i32 %528, 0
  %531 = zext i1 %530 to i32
  %532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %533 = extractvalue %dx.types.CBufRet.f32 %532, 2
  %534 = call float @dx.op.binary.f32(i32 35, float %527, float %533)  ; FMax(a,b)
  %535 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %534)  ; FMin(a,b)
  br label %536

; <label>:536                                     ; preds = %526, %340
  %537 = phi i32 [ %531, %526 ], [ 0, %340 ]
  %538 = phi float [ %535, %526 ], [ 0x47EFFFFFE0000000, %340 ]
  %539 = phi i32 [ %529, %526 ], [ %359, %340 ]
  %540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %541 = extractvalue %dx.types.CBufRet.f32 %540, 0
  %542 = extractvalue %dx.types.CBufRet.f32 %540, 1
  %543 = fsub fast float %354, %541
  %544 = fsub fast float %355, %542
  %545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %546 = extractvalue %dx.types.CBufRet.f32 %545, 2
  %547 = extractvalue %dx.types.CBufRet.f32 %545, 3
  %548 = fmul fast float %543, %546
  %549 = fmul fast float %544, %547
  %550 = call float @dx.op.binary.f32(i32 36, float %548, float %549)  ; FMin(a,b)
  %551 = fcmp fast olt float %550, 0.000000e+00
  %552 = call float @dx.op.binary.f32(i32 35, float %548, float %549)  ; FMax(a,b)
  %553 = fcmp fast ogt float %552, 1.000000e+00
  %554 = or i1 %551, %553
  %555 = extractvalue %dx.types.CBufRet.f32 %540, 2
  %556 = fcmp fast olt float %356, %555
  %557 = or i1 %554, %556
  %558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %559 = extractvalue %dx.types.CBufRet.f32 %558, 3
  %560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %561 = extractvalue %dx.types.CBufRet.f32 %560, 0
  %562 = fadd fast float %561, %559
  %563 = fcmp fast ogt float %356, %562
  %564 = or i1 %557, %563
  br i1 %564, label %565, label %594, !dx.controlflow.hints !63

; <label>:565                                     ; preds = %536
  %566 = extractvalue %dx.types.CBufRet.f32 %545, 0
  %567 = extractvalue %dx.types.CBufRet.f32 %545, 1
  %568 = fsub fast float %541, %354
  %569 = fmul fast float %568, %315
  %570 = fadd fast float %568, %566
  %571 = fmul fast float %570, %315
  %572 = call float @dx.op.binary.f32(i32 36, float %569, float %571)  ; FMin(a,b)
  %573 = call float @dx.op.binary.f32(i32 35, float %569, float %571)  ; FMax(a,b)
  %574 = fsub fast float %542, %355
  %575 = fmul fast float %574, %316
  %576 = fadd fast float %574, %567
  %577 = fmul fast float %576, %316
  %578 = call float @dx.op.binary.f32(i32 36, float %575, float %577)  ; FMin(a,b)
  %579 = call float @dx.op.binary.f32(i32 35, float %572, float %578)  ; FMax(a,b)
  %580 = call float @dx.op.binary.f32(i32 35, float %575, float %577)  ; FMax(a,b)
  %581 = call float @dx.op.binary.f32(i32 36, float %573, float %580)  ; FMin(a,b)
  %582 = fsub fast float %555, %356
  %583 = fmul fast float %582, %317
  %584 = fsub fast float %559, %356
  %585 = fadd fast float %584, %561
  %586 = fmul fast float %585, %317
  %587 = call float @dx.op.binary.f32(i32 36, float %583, float %586)  ; FMin(a,b)
  %588 = call float @dx.op.binary.f32(i32 35, float %579, float %587)  ; FMax(a,b)
  %589 = call float @dx.op.binary.f32(i32 35, float %583, float %586)  ; FMax(a,b)
  %590 = call float @dx.op.binary.f32(i32 36, float %581, float %589)  ; FMin(a,b)
  %591 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %588)  ; FMax(a,b)
  %592 = fcmp fast oge float %590, %591
  %593 = select i1 %592, float %588, float 1.000000e+07
  br label %640

; <label>:594                                     ; preds = %536
  %595 = fsub fast float 1.000000e+00, %549
  %596 = icmp eq i32 %358, 0
  br i1 %596, label %625, label %597

; <label>:597                                     ; preds = %594
  br label %598

; <label>:598                                     ; preds = %621, %597
  %599 = phi i32 [ %622, %621 ], [ %358, %597 ]
  %600 = uitofp i32 %599 to float
  %601 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %27, float %548, float %595, float undef, float undef, i32 0, i32 0, i32 undef, float %600)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %602 = extractvalue %dx.types.ResRet.f32 %601, 0
  %603 = extractvalue %dx.types.ResRet.f32 %601, 1
  %604 = extractvalue %dx.types.ResRet.f32 %601, 2
  %605 = fcmp fast oeq float %602, 0.000000e+00
  %606 = fcmp ule float %356, %604
  %607 = fcmp uge float %356, %603
  %608 = or i1 %607, %606
  %609 = or i1 %605, %608
  br i1 %609, label %610, label %621, !dx.controlflow.hints !64

; <label>:610                                     ; preds = %598
  %611 = extractvalue %dx.types.ResRet.f32 %601, 3
  %612 = extractvalue %dx.types.CBufRet.f32 %545, 0
  %613 = and i32 %599, 31
  %614 = lshr i32 1024, %613
  %615 = uitofp i32 %614 to float
  %616 = fdiv fast float %612, %615
  %617 = add i32 %599, 1
  %618 = uitofp i32 %617 to float
  %619 = call float @dx.op.binary.f32(i32 36, float 1.000000e+01, float %618)  ; FMin(a,b)
  %620 = fptosi float %619 to i32
  br label %640

; <label>:621                                     ; preds = %598
  %622 = add i32 %599, -1
  %623 = icmp eq i32 %622, 0
  br i1 %623, label %624, label %598, !llvm.loop !65

; <label>:624                                     ; preds = %621
  br label %625

; <label>:625                                     ; preds = %624, %594
  %626 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %26, float %548, float %595, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %627 = extractvalue %dx.types.ResRet.f32 %626, 0
  %628 = extractvalue %dx.types.ResRet.f32 %626, 1
  %629 = extractvalue %dx.types.ResRet.f32 %626, 2
  %630 = extractvalue %dx.types.ResRet.f32 %626, 3
  %631 = extractvalue %dx.types.CBufRet.f32 %545, 0
  %632 = fmul fast float %631, 9.765625e-04
  %633 = fcmp fast oeq float %627, 0.000000e+00
  %634 = fcmp ule float %356, %629
  %635 = fcmp uge float %356, %628
  %636 = or i1 %635, %634
  %637 = or i1 %633, %636
  %638 = zext i1 %637 to i32
  %639 = xor i32 %638, 1
  br label %640

; <label>:640                                     ; preds = %625, %610, %565
  %641 = phi float [ %593, %565 ], [ %616, %610 ], [ %632, %625 ]
  %642 = phi float [ %345, %565 ], [ %602, %610 ], [ %627, %625 ]
  %643 = phi float [ %346, %565 ], [ %603, %610 ], [ %628, %625 ]
  %644 = phi float [ %347, %565 ], [ %604, %610 ], [ %629, %625 ]
  %645 = phi float [ %348, %565 ], [ %611, %610 ], [ %630, %625 ]
  %646 = phi i32 [ 0, %565 ], [ 0, %610 ], [ %639, %625 ]
  %647 = phi i32 [ 10, %565 ], [ %620, %610 ], [ 1, %625 ]
  %648 = icmp eq i32 %646, 0
  %649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %650 = extractvalue %dx.types.CBufRet.f32 %649, 2
  %651 = call float @dx.op.binary.f32(i32 35, float %641, float %650)  ; FMax(a,b)
  %652 = call float @dx.op.binary.f32(i32 36, float %538, float %651)  ; FMin(a,b)
  %653 = icmp eq i32 %235, 0
  br i1 %653, label %666, label %654, !dx.controlflow.hints !67

; <label>:654                                     ; preds = %640
  %655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %656 = extractvalue %dx.types.CBufRet.f32 %655, 3
  %657 = extractvalue %dx.types.CBufRet.f32 %655, 2
  %658 = fmul fast float %656, %357
  %659 = fdiv fast float %658, %318
  %660 = fadd fast float %659, 1.000000e+00
  %661 = call float @dx.op.unary.f32(i32 23, float %660)  ; Log(value)
  %662 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %661)  ; FMin(a,b)
  %663 = fmul fast float %657, %318
  %664 = fmul fast float %663, %662
  %665 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %664)  ; FMin(a,b)
  br label %666

; <label>:666                                     ; preds = %654, %640
  %667 = phi float [ %665, %654 ], [ 0x47EFFFFFE0000000, %640 ]
  %668 = icmp eq i32 %295, 0
  br i1 %668, label %724, label %669, !dx.controlflow.hints !68

; <label>:669                                     ; preds = %666
  %670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %671 = extractvalue %dx.types.CBufRet.f32 %670, 0
  %672 = extractvalue %dx.types.CBufRet.f32 %670, 1
  %673 = extractvalue %dx.types.CBufRet.f32 %670, 2
  %674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %675 = extractvalue %dx.types.CBufRet.f32 %674, 0
  %676 = extractvalue %dx.types.CBufRet.f32 %674, 1
  %677 = extractvalue %dx.types.CBufRet.f32 %674, 2
  %678 = fsub fast float %354, %675
  %679 = fsub fast float %355, %676
  %680 = fsub fast float %356, %677
  %681 = fmul fast float %678, %671
  %682 = fmul fast float %679, %672
  %683 = fmul fast float %680, %673
  %684 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %685 = extractvalue %dx.types.CBufRet.i32 %684, 3
  %686 = icmp eq i32 %685, 0
  br i1 %686, label %690, label %687, !dx.controlflow.hints !69

; <label>:687                                     ; preds = %669
  %688 = call float @dx.op.unary.f32(i32 22, float %681)  ; Frc(value)
  %689 = call float @dx.op.unary.f32(i32 22, float %682)  ; Frc(value)
  br label %690

; <label>:690                                     ; preds = %687, %669
  %691 = phi float [ %688, %687 ], [ %681, %669 ]
  %692 = phi float [ %689, %687 ], [ %682, %669 ]
  %693 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %24, float %691, float %692, float %683, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %694 = extractvalue %dx.types.ResRet.f32 %693, 0
  %695 = fmul fast float %694, 2.000000e+00
  %696 = fadd fast float %695, -1.000000e+00
  %697 = extractvalue %dx.types.CBufRet.f32 %670, 3
  %698 = fmul fast float %696, %697
  %699 = fcmp fast olt float %698, 0.000000e+00
  %700 = fcmp fast oge float %683, 0.000000e+00
  %701 = fcmp fast ole float %683, 1.000000e+00
  br i1 %686, label %704, label %702, !dx.controlflow.hints !70

; <label>:702                                     ; preds = %690
  %703 = and i1 %700, %701
  br label %714

; <label>:704                                     ; preds = %690
  %705 = fcmp fast oge float %681, 0.000000e+00
  %706 = fcmp fast oge float %682, 0.000000e+00
  %707 = and i1 %705, %706
  %708 = and i1 %700, %707
  %709 = fcmp fast ole float %681, 1.000000e+00
  %710 = fcmp fast ole float %682, 1.000000e+00
  %711 = and i1 %709, %710
  %712 = and i1 %701, %711
  %713 = and i1 %708, %712
  br label %714

; <label>:714                                     ; preds = %704, %702
  %715 = phi i1 [ %703, %702 ], [ %713, %704 ]
  %716 = and i1 %699, %715
  %717 = call float @dx.op.unary.f32(i32 6, float %698)  ; FAbs(value)
  %718 = extractvalue %dx.types.CBufRet.f32 %649, 1
  %719 = extractvalue %dx.types.CBufRet.f32 %649, 0
  %720 = call float @dx.op.binary.f32(i32 35, float %717, float %719)  ; FMax(a,b)
  %721 = select i1 %716, float %718, float %720
  %722 = zext i1 %716 to i32
  %723 = call float @dx.op.binary.f32(i32 36, float %652, float %721)  ; FMin(a,b)
  br label %724

; <label>:724                                     ; preds = %714, %666
  %725 = phi i32 [ %722, %714 ], [ 0, %666 ]
  %726 = phi float [ %723, %714 ], [ %652, %666 ]
  %727 = extractvalue %dx.types.CBufRet.f32 %368, 2
  %728 = fmul fast float %727, %357
  %729 = call float @dx.op.unary.f32(i32 23, float %728)  ; Log(value)
  %730 = fmul fast float %729, 0x3FE62E4300000000
  %731 = call float @dx.op.binary.f32(i32 35, float %730, float 1.000000e+00)  ; FMax(a,b)
  %732 = fmul fast float %731, %667
  %733 = call float @dx.op.binary.f32(i32 36, float %732, float %726)  ; FMin(a,b)
  %734 = call float @dx.op.binary.f32(i32 35, float %733, float %369)  ; FMax(a,b)
  %735 = fsub fast float %318, %357
  %736 = fadd fast float %735, 0x3F1A36E2E0000000
  %737 = call float @dx.op.binary.f32(i32 36, float %736, float %734)  ; FMin(a,b)
  %738 = icmp eq i32 %537, 0
  br i1 %738, label %844, label %739, !dx.controlflow.hints !71

; <label>:739                                     ; preds = %724
  %740 = fcmp fast olt float %736, %734
  %741 = fmul fast float %121, %64
  %742 = fmul fast float %741, %737
  %743 = fadd fast float %742, %356
  %744 = fmul fast float %121, %65
  %745 = fmul fast float %744, %737
  %746 = fadd fast float %745, %356
  %747 = fmul fast float %121, %66
  %748 = fmul fast float %747, %737
  %749 = fadd fast float %748, %356
  br i1 %740, label %750, label %755, !dx.controlflow.hints !72

; <label>:750                                     ; preds = %739
  %751 = fmul fast float %737, %119
  %752 = fmul fast float %737, %120
  %753 = fadd fast float %751, %354
  %754 = fadd fast float %752, %355
  br label %755

; <label>:755                                     ; preds = %750, %739
  %756 = phi float [ %753, %750 ], [ %354, %739 ]
  %757 = phi float [ %754, %750 ], [ %355, %739 ]
  %758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %759 = extractvalue %dx.types.CBufRet.f32 %758, 0
  %760 = extractvalue %dx.types.CBufRet.f32 %758, 1
  %761 = fsub fast float %756, %759
  %762 = fsub fast float %757, %760
  %763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %764 = extractvalue %dx.types.CBufRet.f32 %763, 0
  %765 = extractvalue %dx.types.CBufRet.f32 %763, 1
  %766 = fmul fast float %761, %764
  %767 = fmul fast float %762, %765
  %768 = fsub fast float 1.000000e+00, %767
  %769 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %770 = extractvalue %dx.types.CBufRet.i32 %769, 3
  %771 = icmp eq i32 %770, 0
  br i1 %771, label %778, label %772, !dx.controlflow.hints !58

; <label>:772                                     ; preds = %755
  %773 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %25, float %766, float %768, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %774 = extractvalue %dx.types.ResRet.f32 %773, 0
  %775 = extractvalue %dx.types.ResRet.f32 %773, 1
  %776 = extractvalue %dx.types.ResRet.f32 %773, 2
  %777 = extractvalue %dx.types.ResRet.f32 %773, 3
  br label %784

; <label>:778                                     ; preds = %755
  %779 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %26, float %766, float %768, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %780 = extractvalue %dx.types.ResRet.f32 %779, 0
  %781 = extractvalue %dx.types.ResRet.f32 %779, 1
  %782 = extractvalue %dx.types.ResRet.f32 %779, 2
  %783 = extractvalue %dx.types.ResRet.f32 %779, 3
  br label %784

; <label>:784                                     ; preds = %778, %772
  %785 = phi float [ %774, %772 ], [ %780, %778 ]
  %786 = phi float [ %775, %772 ], [ %781, %778 ]
  %787 = phi float [ %776, %772 ], [ %782, %778 ]
  %788 = phi float [ %777, %772 ], [ %783, %778 ]
  %789 = extractvalue %dx.types.CBufRet.f32 %763, 3
  %790 = fmul fast float %789, %786
  %791 = fmul fast float %790, %785
  %792 = fsub fast float %790, %791
  %793 = fcmp fast ole float %792, 0.000000e+00
  %794 = extractvalue %dx.types.CBufRet.f32 %758, 2
  %795 = fadd fast float %791, %794
  %796 = fmul fast float %789, %787
  %797 = fadd fast float %796, %794
  %798 = fdiv fast float 1.000000e+00, %792
  %799 = select i1 %793, float 1.000000e+06, float %798
  %800 = fsub fast float %743, %795
  %801 = fmul fast float %799, %800
  %802 = call float @dx.op.unary.f32(i32 7, float %801)  ; Saturate(value)
  %803 = extractvalue %dx.types.CBufRet.f32 %763, 2
  %804 = fmul fast float %803, %802
  %805 = fsub fast float %803, %804
  %806 = fcmp fast olt float %743, %797
  %807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %808 = extractvalue %dx.types.CBufRet.f32 %807, 3
  %809 = select i1 %806, float %808, float 1.000000e+00
  %810 = fmul fast float %805, %809
  %811 = fsub fast float %746, %795
  %812 = fmul fast float %799, %811
  %813 = call float @dx.op.unary.f32(i32 7, float %812)  ; Saturate(value)
  %814 = fmul fast float %803, %813
  %815 = fsub fast float %803, %814
  %816 = fcmp fast olt float %746, %797
  %817 = select i1 %816, float %808, float 1.000000e+00
  %818 = fmul fast float %815, %817
  %819 = fadd fast float %818, %810
  %820 = fsub fast float %749, %795
  %821 = fmul fast float %799, %820
  %822 = call float @dx.op.unary.f32(i32 7, float %821)  ; Saturate(value)
  %823 = fmul fast float %803, %822
  %824 = fsub fast float %803, %823
  %825 = fcmp fast olt float %749, %797
  %826 = select i1 %825, float %808, float 1.000000e+00
  %827 = fmul fast float %824, %826
  %828 = fadd fast float %819, %827
  %829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %830 = extractvalue %dx.types.CBufRet.f32 %829, 2
  %831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %832 = extractvalue %dx.types.CBufRet.f32 %831, 0
  %833 = extractvalue %dx.types.CBufRet.f32 %831, 1
  %834 = extractvalue %dx.types.CBufRet.f32 %831, 2
  %835 = fmul fast float %737, 0x3FD5555560000000
  %836 = fmul fast float %835, %788
  %837 = fmul fast float %836, %830
  %838 = fmul fast float %837, %828
  %839 = extractvalue %dx.types.CBufRet.f32 %807, 0
  %840 = fmul fast float %838, %832
  %841 = fmul fast float %838, %833
  %842 = fmul fast float %838, %834
  %843 = fmul fast float %838, %839
  br label %844

; <label>:844                                     ; preds = %784, %724
  %845 = phi float [ %838, %784 ], [ 0.000000e+00, %724 ]
  %846 = phi float [ %843, %784 ], [ 0.000000e+00, %724 ]
  %847 = phi float [ %840, %784 ], [ 0.000000e+00, %724 ]
  %848 = phi float [ %841, %784 ], [ 0.000000e+00, %724 ]
  %849 = phi float [ %842, %784 ], [ 0.000000e+00, %724 ]
  br i1 %653, label %909, label %850, !dx.controlflow.hints !73

; <label>:850                                     ; preds = %844
  %851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %852 = extractvalue %dx.types.CBufRet.f32 %851, 0
  %853 = fsub fast float %852, %356
  %854 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %367, float %366, float %853)  ; Dot3(ax,ay,az,bx,by,bz)
  %855 = fmul fast float %218, %854
  %856 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %855)  ; FMax(a,b)
  %857 = fcmp fast olt float %121, 0.000000e+00
  %858 = call float @dx.op.binary.f32(i32 36, float %737, float %856)  ; FMin(a,b)
  br i1 %857, label %860, label %859, !dx.controlflow.hints !74

; <label>:859                                     ; preds = %850
  br label %860

; <label>:860                                     ; preds = %859, %850
  %861 = phi float [ 0.000000e+00, %859 ], [ %858, %850 ]
  %862 = phi float [ %858, %859 ], [ %737, %850 ]
  %863 = phi float [ %858, %859 ], [ 0.000000e+00, %850 ]
  %864 = phi float [ %737, %859 ], [ %858, %850 ]
  %865 = fsub fast float %862, %861
  %866 = extractvalue %dx.types.CBufRet.f32 %851, 1
  %867 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %866)  ; FMin(a,b)
  %868 = fsub fast float %356, %852
  %869 = fmul fast float %867, 0x3FF7154760000000
  %870 = fmul fast float %869, %868
  %871 = call float @dx.op.unary.f32(i32 21, float %870)  ; Exp(value)
  %872 = fmul fast float %121, 0x3FF7154760000000
  %873 = fmul fast float %872, %864
  %874 = fmul fast float %873, %867
  %875 = call float @dx.op.unary.f32(i32 21, float %874)  ; Exp(value)
  %876 = fmul fast float %872, %863
  %877 = fmul fast float %876, %867
  %878 = call float @dx.op.unary.f32(i32 21, float %877)  ; Exp(value)
  %879 = fsub fast float %875, %878
  %880 = fmul fast float %879, %871
  %881 = fmul fast float %867, %121
  %882 = fdiv fast float %880, %881
  %883 = fadd fast float %865, %882
  %884 = call float @dx.op.unary.f32(i32 6, float %121)  ; FAbs(value)
  %885 = fcmp fast olt float %884, 0x3F0FFB4800000000
  %886 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %868)  ; FMax(a,b)
  %887 = fmul fast float %886, 0x3FF7154760000000
  %888 = fmul fast float %887, %866
  %889 = call float @dx.op.unary.f32(i32 21, float %888)  ; Exp(value)
  %890 = fmul fast float %889, %737
  %891 = select i1 %885, float %890, float %883
  %892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %893 = extractvalue %dx.types.CBufRet.f32 %892, 1
  %894 = fmul fast float %891, %893
  %895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %896 = extractvalue %dx.types.CBufRet.f32 %895, 0
  %897 = extractvalue %dx.types.CBufRet.f32 %895, 1
  %898 = extractvalue %dx.types.CBufRet.f32 %895, 2
  %899 = extractvalue %dx.types.CBufRet.f32 %892, 2
  %900 = fmul fast float %896, %894
  %901 = fmul fast float %897, %894
  %902 = fmul fast float %898, %894
  %903 = fadd fast float %900, %847
  %904 = fadd fast float %901, %848
  %905 = fadd fast float %902, %849
  %906 = fmul fast float %899, %894
  %907 = fadd fast float %906, %846
  %908 = fadd fast float %894, %845
  br label %909

; <label>:909                                     ; preds = %860, %844
  %910 = phi float [ %908, %860 ], [ %845, %844 ]
  %911 = phi float [ %907, %860 ], [ %846, %844 ]
  %912 = phi float [ %903, %860 ], [ %847, %844 ]
  %913 = phi float [ %904, %860 ], [ %848, %844 ]
  %914 = phi float [ %905, %860 ], [ %849, %844 ]
  %915 = icmp eq i32 %725, 0
  br i1 %915, label %1110, label %916, !dx.controlflow.hints !75

; <label>:916                                     ; preds = %909
  %917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %918 = extractvalue %dx.types.CBufRet.f32 %917, 3
  %919 = fmul fast float %918, %357
  %920 = fcmp fast oeq float %919, 0.000000e+00
  br i1 %920, label %935, label %921, !dx.controlflow.hints !76

; <label>:921                                     ; preds = %916
  %922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %923 = extractvalue %dx.types.CBufRet.f32 %922, 3
  %924 = fmul fast float %923, %919
  %925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %926 = extractvalue %dx.types.CBufRet.f32 %925, 0
  %927 = extractvalue %dx.types.CBufRet.f32 %925, 1
  %928 = extractvalue %dx.types.CBufRet.f32 %925, 2
  %929 = fmul fast float %926, %924
  %930 = fmul fast float %927, %924
  %931 = fmul fast float %928, %924
  %932 = call float @dx.op.unary.f32(i32 23, float %929)  ; Log(value)
  %933 = call float @dx.op.unary.f32(i32 23, float %930)  ; Log(value)
  %934 = call float @dx.op.unary.f32(i32 23, float %931)  ; Log(value)
  br label %935

; <label>:935                                     ; preds = %921, %916
  %936 = phi float [ %932, %921 ], [ 0.000000e+00, %916 ]
  %937 = phi float [ %933, %921 ], [ 0.000000e+00, %916 ]
  %938 = phi float [ %934, %921 ], [ 0.000000e+00, %916 ]
  %939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %940 = extractvalue %dx.types.CBufRet.f32 %939, 0
  %941 = extractvalue %dx.types.CBufRet.f32 %939, 1
  %942 = extractvalue %dx.types.CBufRet.f32 %939, 2
  %943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %944 = extractvalue %dx.types.CBufRet.f32 %943, 0
  %945 = extractvalue %dx.types.CBufRet.f32 %943, 1
  %946 = extractvalue %dx.types.CBufRet.f32 %943, 2
  %947 = fsub fast float %354, %944
  %948 = fsub fast float %355, %945
  %949 = fsub fast float %356, %946
  %950 = fmul fast float %947, %940
  %951 = fmul fast float %948, %941
  %952 = fmul fast float %949, %942
  %953 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %954 = extractvalue %dx.types.CBufRet.i32 %953, 0
  %955 = extractvalue %dx.types.CBufRet.i32 %953, 1
  %956 = uitofp i32 %954 to float
  %957 = uitofp i32 %955 to float
  %958 = fmul fast float %950, %956
  %959 = fmul fast float %951, %957
  %960 = fadd fast float %958, 5.000000e-01
  %961 = fadd fast float %959, 5.000000e-01
  %962 = call float @dx.op.unary.f32(i32 22, float %960)  ; Frc(value)
  %963 = call float @dx.op.unary.f32(i32 22, float %961)  ; Frc(value)
  %964 = call float @dx.op.unary.f32(i32 27, float %960)  ; Round_ni(value)
  %965 = call float @dx.op.unary.f32(i32 27, float %961)  ; Round_ni(value)
  %966 = fadd fast float %964, 1.000000e+00
  %967 = fadd fast float %965, 1.000000e+00
  %968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %969 = extractvalue %dx.types.CBufRet.f32 %968, 0
  %970 = extractvalue %dx.types.CBufRet.f32 %968, 1
  %971 = fmul fast float %969, %966
  %972 = fmul fast float %970, %967
  %973 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %25, float %971, float %972, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %974 = extractvalue %dx.types.ResRet.f32 %973, 0
  %975 = extractvalue %dx.types.ResRet.f32 %973, 1
  %976 = extractvalue %dx.types.ResRet.f32 %973, 2
  %977 = extractvalue %dx.types.ResRet.f32 %973, 3
  %978 = extractvalue %dx.types.CBufRet.i32 %953, 2
  %979 = extractvalue %dx.types.CBufRet.f32 %968, 2
  %980 = uitofp i32 %978 to float
  %981 = fadd fast float %980, -1.000000e+00
  %982 = fmul fast float %981, %974
  %983 = fmul fast float %981, %975
  %984 = fmul fast float %981, %976
  %985 = fmul fast float %981, %977
  %986 = fadd fast float %982, 5.000000e-01
  %987 = fadd fast float %983, 5.000000e-01
  %988 = fadd fast float %984, 5.000000e-01
  %989 = fadd fast float %985, 5.000000e-01
  %990 = fptoui float %986 to i32
  %991 = fptoui float %987 to i32
  %992 = fptoui float %988 to i32
  %993 = fptoui float %989 to i32
  %994 = uitofp i32 %990 to float
  %995 = uitofp i32 %991 to float
  %996 = uitofp i32 %992 to float
  %997 = uitofp i32 %993 to float
  %998 = fadd fast float %994, 5.000000e-01
  %999 = fadd fast float %995, 5.000000e-01
  %1000 = fadd fast float %996, 5.000000e-01
  %1001 = fadd fast float %997, 5.000000e-01
  %1002 = fmul fast float %998, %979
  %1003 = fmul fast float %999, %979
  %1004 = fmul fast float %1000, %979
  %1005 = fmul fast float %1001, %979
  %1006 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %26, float %1002, float %952, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1007 = extractvalue %dx.types.ResRet.f32 %1006, 0
  %1008 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %26, float %1003, float %952, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1009 = extractvalue %dx.types.ResRet.f32 %1008, 0
  %1010 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %26, float %1004, float %952, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1011 = extractvalue %dx.types.ResRet.f32 %1010, 0
  %1012 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %26, float %1005, float %952, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1013 = extractvalue %dx.types.ResRet.f32 %1012, 0
  %1014 = fsub fast float %1011, %1013
  %1015 = fmul fast float %1014, %962
  %1016 = fadd fast float %1015, %1013
  %1017 = fsub fast float %1009, %1007
  %1018 = fmul fast float %1017, %962
  %1019 = fadd fast float %1018, %1007
  %1020 = fsub fast float %1019, %1016
  %1021 = fmul fast float %1020, %963
  %1022 = fadd fast float %1021, %1016
  %1023 = fcmp fast ogt float %1022, 0.000000e+00
  br i1 %1023, label %1024, label %1092, !dx.controlflow.hints !77

; <label>:1024                                    ; preds = %935
  %1025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %1026 = extractvalue %dx.types.CBufRet.f32 %1025, 0
  %1027 = extractvalue %dx.types.CBufRet.f32 %1025, 1
  %1028 = extractvalue %dx.types.CBufRet.f32 %1025, 2
  %1029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %1030 = extractvalue %dx.types.CBufRet.f32 %1029, 0
  %1031 = extractvalue %dx.types.CBufRet.f32 %1029, 1
  %1032 = extractvalue %dx.types.CBufRet.f32 %1029, 2
  %1033 = fmul fast float %948, %940
  %1034 = fmul fast float %949, %940
  %1035 = fadd fast float %950, %1030
  %1036 = fadd fast float %1033, %1031
  %1037 = fadd fast float %1034, %1032
  %1038 = fmul fast float %1035, %1026
  %1039 = fmul fast float %1036, %1026
  %1040 = fmul fast float %1037, %1026
  %1041 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %23, float %1038, float %1039, float %1040, float undef, i32 0, i32 0, i32 0, float %936)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1042 = extractvalue %dx.types.ResRet.f32 %1041, 0
  %1043 = fmul fast float %1035, %1027
  %1044 = fmul fast float %1036, %1027
  %1045 = fmul fast float %1037, %1027
  %1046 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %23, float %1043, float %1044, float %1045, float undef, i32 0, i32 0, i32 0, float %937)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1047 = extractvalue %dx.types.ResRet.f32 %1046, 1
  %1048 = fmul fast float %1035, %1028
  %1049 = fmul fast float %1036, %1028
  %1050 = fmul fast float %1037, %1028
  %1051 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %23, float %1048, float %1049, float %1050, float undef, i32 0, i32 0, i32 0, float %938)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1052 = extractvalue %dx.types.ResRet.f32 %1051, 2
  %1053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %1054 = extractvalue %dx.types.CBufRet.f32 %1053, 1
  %1055 = fmul fast float %1047, %1042
  %1056 = fmul fast float %1055, %1052
  %1057 = call float @dx.op.unary.f32(i32 23, float %1056)  ; Log(value)
  %1058 = fmul fast float %1057, %1054
  %1059 = call float @dx.op.unary.f32(i32 21, float %1058)  ; Exp(value)
  %1060 = extractvalue %dx.types.CBufRet.f32 %1053, 2
  %1061 = fmul fast float %1022, %1022
  %1062 = fmul fast float %1061, %1059
  %1063 = fmul fast float %1062, %1060
  %1064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %1065 = extractvalue %dx.types.CBufRet.f32 %1064, 3
  %1066 = fmul fast float %1065, %1063
  %1067 = bitcast float %1066 to i32
  %1068 = sitofp i32 %1067 to float
  %1069 = fptosi float %1068 to i32
  %1070 = bitcast i32 %1069 to float
  %1071 = fsub fast float 1.000000e+00, %1063
  %1072 = bitcast float %1071 to i32
  %1073 = sitofp i32 %1072 to float
  %1074 = fptosi float %1073 to i32
  %1075 = bitcast i32 %1074 to float
  %1076 = fadd fast float %1070, %1075
  %1077 = bitcast float %1076 to i32
  %1078 = sub nsw i32 2129859010, %1077
  %1079 = bitcast i32 %1078 to float
  %1080 = fmul fast float %1079, %1070
  %1081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1082 = extractvalue %dx.types.CBufRet.f32 %1081, 2
  %1083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %1084 = extractvalue %dx.types.CBufRet.f32 %1083, 0
  %1085 = fmul fast float %1080, %1084
  %1086 = fadd fast float %1085, 1.000000e+00
  %1087 = bitcast float %1086 to i32
  %1088 = sub nsw i32 2129859010, %1087
  %1089 = bitcast i32 %1088 to float
  %1090 = fmul fast float %1080, %1082
  %1091 = fmul fast float %1090, %1089
  br label %1092

; <label>:1092                                    ; preds = %1024, %935
  %1093 = phi float [ %1091, %1024 ], [ %1022, %935 ]
  %1094 = fmul fast float %1093, %737
  %1095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %1096 = extractvalue %dx.types.CBufRet.f32 %1095, 0
  %1097 = extractvalue %dx.types.CBufRet.f32 %1095, 1
  %1098 = extractvalue %dx.types.CBufRet.f32 %1095, 2
  %1099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %1100 = extractvalue %dx.types.CBufRet.f32 %1099, 1
  %1101 = fmul fast float %1096, %1094
  %1102 = fmul fast float %1097, %1094
  %1103 = fmul fast float %1098, %1094
  %1104 = fadd fast float %1101, %912
  %1105 = fadd fast float %1102, %913
  %1106 = fadd fast float %1103, %914
  %1107 = fmul fast float %1100, %1094
  %1108 = fadd fast float %1107, %911
  %1109 = fadd fast float %1094, %910
  br label %1110

; <label>:1110                                    ; preds = %1092, %909
  %1111 = phi float [ %1109, %1092 ], [ %910, %909 ]
  %1112 = phi float [ %1108, %1092 ], [ %911, %909 ]
  %1113 = phi float [ %1104, %1092 ], [ %912, %909 ]
  %1114 = phi float [ %1105, %1092 ], [ %913, %909 ]
  %1115 = phi float [ %1106, %1092 ], [ %914, %909 ]
  br i1 %648, label %1258, label %1116, !dx.controlflow.hints !78

; <label>:1116                                    ; preds = %1110
  %1117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 411)  ; CBufferLoadLegacy(handle,regIndex)
  %1118 = extractvalue %dx.types.CBufRet.f32 %1117, 0
  %1119 = extractvalue %dx.types.CBufRet.f32 %1117, 1
  %1120 = extractvalue %dx.types.CBufRet.f32 %1117, 2
  %1121 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1122 = extractvalue %dx.types.CBufRet.i32 %1121, 0
  %1123 = icmp ne i32 %1122, 0
  %1124 = zext i1 %1123 to i32
  %1125 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1126 = extractvalue %dx.types.CBufRet.i32 %1125, 0
  %1127 = icmp eq i32 %1126, 0
  br i1 %1127, label %1161, label %1128

; <label>:1128                                    ; preds = %1116
  br label %1129

; <label>:1129                                    ; preds = %1156, %1128
  %1130 = phi i32 [ %1157, %1156 ], [ 0, %1128 ]
  %1131 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1130, i32 0)  ; BufferLoad(srv,index,wot)
  %1132 = extractvalue %dx.types.ResRet.f32 %1131, 0
  %1133 = extractvalue %dx.types.ResRet.f32 %1131, 1
  %1134 = extractvalue %dx.types.ResRet.f32 %1131, 2
  %1135 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1130, i32 16)  ; BufferLoad(srv,index,wot)
  %1136 = extractvalue %dx.types.ResRet.f32 %1135, 0
  %1137 = extractvalue %dx.types.ResRet.f32 %1135, 1
  %1138 = extractvalue %dx.types.ResRet.f32 %1135, 2
  %1139 = fsub fast float %1132, %1136
  %1140 = fsub fast float %1133, %1137
  %1141 = fsub fast float %1134, %1138
  %1142 = fadd fast float %1136, %1132
  %1143 = fadd fast float %1137, %1133
  %1144 = fadd fast float %1138, %1134
  %1145 = fcmp fast olt float %354, %1139
  %1146 = fcmp fast olt float %355, %1140
  %1147 = fcmp fast olt float %356, %1141
  %1148 = or i1 %1145, %1146
  %1149 = or i1 %1147, %1148
  %1150 = fcmp fast ogt float %354, %1142
  %1151 = fcmp fast ogt float %355, %1143
  %1152 = fcmp fast ogt float %356, %1144
  %1153 = or i1 %1150, %1151
  %1154 = or i1 %1152, %1153
  %1155 = or i1 %1149, %1154
  br i1 %1155, label %1156, label %1159, !dx.controlflow.hints !79

; <label>:1156                                    ; preds = %1129
  %1157 = add nuw i32 %1130, 1
  %1158 = icmp ult i32 %1157, %1126
  br i1 %1158, label %1129, label %1159

; <label>:1159                                    ; preds = %1156, %1129
  %1160 = phi i32 [ 255, %1156 ], [ %1130, %1129 ]
  br label %1161

; <label>:1161                                    ; preds = %1159, %1116
  %1162 = phi i32 [ 255, %1116 ], [ %1160, %1159 ]
  %1163 = icmp eq i32 %1162, 255
  br i1 %1163, label %1173, label %1164, !dx.controlflow.hints !80

; <label>:1164                                    ; preds = %1161
  %1165 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1162, i32 32)  ; BufferLoad(srv,index,wot)
  %1166 = extractvalue %dx.types.ResRet.f32 %1165, 0
  %1167 = extractvalue %dx.types.ResRet.f32 %1165, 1
  %1168 = extractvalue %dx.types.ResRet.f32 %1165, 2
  %1169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1162, i32 156)  ; BufferLoad(srv,index,wot)
  %1170 = extractvalue %dx.types.ResRet.i32 %1169, 0
  %1171 = icmp ne i32 %1170, 0
  %1172 = zext i1 %1171 to i32
  br label %1173

; <label>:1173                                    ; preds = %1164, %1161
  %1174 = phi float [ %1166, %1164 ], [ %1118, %1161 ]
  %1175 = phi float [ %1167, %1164 ], [ %1119, %1161 ]
  %1176 = phi float [ %1168, %1164 ], [ %1120, %1161 ]
  %1177 = phi i32 [ %1172, %1164 ], [ %1124, %1161 ]
  %1178 = icmp eq i32 %1177, 0
  br i1 %1178, label %1179, label %1248, !dx.controlflow.hints !81

; <label>:1179                                    ; preds = %1173
  %1180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1181 = extractvalue %dx.types.CBufRet.f32 %1180, 3
  %1182 = extractvalue %dx.types.CBufRet.f32 %558, 0
  %1183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1184 = extractvalue %dx.types.CBufRet.f32 %1183, 2
  %1185 = extractvalue %dx.types.CBufRet.f32 %1183, 3
  br i1 %1163, label %1196, label %1186, !dx.controlflow.hints !82

; <label>:1186                                    ; preds = %1179
  %1187 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1162, i32 60)  ; BufferLoad(srv,index,wot)
  %1188 = extractvalue %dx.types.ResRet.f32 %1187, 0
  %1189 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1162, i32 64)  ; BufferLoad(srv,index,wot)
  %1190 = extractvalue %dx.types.ResRet.f32 %1189, 0
  %1191 = extractvalue %dx.types.ResRet.f32 %1189, 1
  %1192 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1162, i32 72)  ; BufferLoad(srv,index,wot)
  %1193 = extractvalue %dx.types.ResRet.f32 %1192, 0
  %1194 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1162, i32 96)  ; BufferLoad(srv,index,wot)
  %1195 = extractvalue %dx.types.ResRet.f32 %1194, 0
  br label %1196

; <label>:1196                                    ; preds = %1186, %1179
  %1197 = phi float [ %1188, %1186 ], [ %561, %1179 ]
  %1198 = phi float [ %1193, %1186 ], [ %559, %1179 ]
  %1199 = phi float [ %1195, %1186 ], [ %1182, %1179 ]
  %1200 = phi float [ %1190, %1186 ], [ %1184, %1179 ]
  %1201 = phi float [ %1191, %1186 ], [ %1185, %1179 ]
  %1202 = call float @dx.op.binary.f32(i32 35, float %642, float 0.000000e+00)  ; FMax(a,b)
  %1203 = call float @dx.op.binary.f32(i32 36, float %1202, float 1.000000e+00)  ; FMin(a,b)
  %1204 = call float @dx.op.unary.f32(i32 24, float %1203)  ; Sqrt(value)
  %1205 = call float @dx.op.binary.f32(i32 35, float %645, float 0x3F847AE140000000)  ; FMax(a,b)
  %1206 = fsub fast float %643, %356
  %1207 = fsub fast float %356, %644
  %1208 = call float @dx.op.binary.f32(i32 36, float %1207, float %1206)  ; FMin(a,b)
  %1209 = fdiv fast float %1208, %1205
  %1210 = call float @dx.op.unary.f32(i32 7, float %1209)  ; Saturate(value)
  %1211 = fsub fast float %356, %1198
  %1212 = fdiv fast float %1211, %1197
  %1213 = call float @dx.op.unary.f32(i32 7, float %1212)  ; Saturate(value)
  %1214 = fsub fast float 1.000000e+00, %1213
  %1215 = fmul float %1210, %1214
  %1216 = fmul float %1215, %1215
  %1217 = fmul fast float %1204, %1181
  %1218 = fmul fast float %1217, %1216
  %1219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1220 = extractvalue %dx.types.CBufRet.f32 %1219, 2
  %1221 = extractvalue %dx.types.CBufRet.f32 %1219, 1
  %1222 = fsub fast float %1218, %1221
  %1223 = fsub fast float %1220, %1221
  %1224 = fdiv fast float %1222, %1223
  %1225 = call float @dx.op.unary.f32(i32 7, float %1224)  ; Saturate(value)
  %1226 = fmul fast float %1225, %1199
  %1227 = fcmp fast ogt float %1201, 0.000000e+00
  br i1 %1227, label %1228, label %1248, !dx.controlflow.hints !83

; <label>:1228                                    ; preds = %1196
  %1229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1230 = extractvalue %dx.types.CBufRet.f32 %1229, 0
  %1231 = extractvalue %dx.types.CBufRet.f32 %1229, 1
  %1232 = extractvalue %dx.types.CBufRet.f32 %1229, 2
  %1233 = fsub fast float %354, %1230
  %1234 = fsub fast float %355, %1231
  %1235 = fsub fast float %356, %1232
  %1236 = fmul fast float %1233, %1233
  %1237 = fmul fast float %1234, %1234
  %1238 = fadd fast float %1236, %1237
  %1239 = fmul fast float %1235, %1235
  %1240 = fadd fast float %1238, %1239
  %1241 = call float @dx.op.unary.f32(i32 24, float %1240)  ; Sqrt(value)
  %1242 = fsub fast float %1241, %1200
  %1243 = fsub fast float %1201, %1200
  %1244 = fdiv fast float %1242, %1243
  %1245 = call float @dx.op.unary.f32(i32 7, float %1244)  ; Saturate(value)
  %1246 = fmul fast float %1245, %1245
  %1247 = fmul fast float %1246, %1226
  br label %1248

; <label>:1248                                    ; preds = %1228, %1196, %1173
  %1249 = phi float [ 0.000000e+00, %1173 ], [ %1247, %1228 ], [ %1226, %1196 ]
  %1250 = fmul fast float %1249, %737
  %1251 = fmul fast float %1250, %1174
  %1252 = fmul fast float %1250, %1175
  %1253 = fmul fast float %1250, %1176
  %1254 = fadd fast float %1251, %1113
  %1255 = fadd fast float %1252, %1114
  %1256 = fadd fast float %1253, %1115
  %1257 = fadd fast float %1250, %1111
  br label %1258

; <label>:1258                                    ; preds = %1248, %1110
  %1259 = phi float [ %1257, %1248 ], [ %1111, %1110 ]
  %1260 = phi float [ %1254, %1248 ], [ %1113, %1110 ]
  %1261 = phi float [ %1255, %1248 ], [ %1114, %1110 ]
  %1262 = phi float [ %1256, %1248 ], [ %1115, %1110 ]
  %1263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1264 = extractvalue %dx.types.CBufRet.f32 %1263, 1
  %1265 = fcmp fast ogt float %1259, %1264
  br i1 %1265, label %1266, label %1272, !dx.controlflow.hints !84

; <label>:1266                                    ; preds = %1258
  %1267 = fdiv fast float 1.000000e+00, %1259
  %1268 = fmul fast float %1267, %1260
  %1269 = fmul fast float %1267, %1261
  %1270 = fmul fast float %1267, %1262
  %1271 = fmul fast float %1267, %1112
  br label %1272

; <label>:1272                                    ; preds = %1266, %1258
  %1273 = phi float [ %1271, %1266 ], [ %1112, %1258 ]
  %1274 = phi float [ %1268, %1266 ], [ %1260, %1258 ]
  %1275 = phi float [ %1269, %1266 ], [ %1261, %1258 ]
  %1276 = phi float [ %1270, %1266 ], [ %1262, %1258 ]
  br i1 %1265, label %1279, label %1277, !dx.controlflow.hints !85

; <label>:1277                                    ; preds = %1272
  %1278 = fadd fast float %737, %357
  br label %2979

; <label>:1279                                    ; preds = %1272
  %1280 = fmul fast float %1259, 0xBFF7154760000000
  %1281 = call float @dx.op.unary.f32(i32 21, float %1280)  ; Exp(value)
  %1282 = call float @dx.op.unary.f32(i32 7, float %1281)  ; Saturate(value)
  %1283 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %1284 = extractvalue %dx.types.CBufRet.i32 %1283, 0
  %1285 = icmp eq i32 %1284, 1
  br i1 %1285, label %1286, label %1321, !dx.controlflow.hints !86

; <label>:1286                                    ; preds = %1279
  %1287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1288 = extractvalue %dx.types.CBufRet.f32 %1287, 0
  %1289 = extractvalue %dx.types.CBufRet.f32 %1287, 1
  %1290 = fsub fast float %354, %1288
  %1291 = fsub fast float %355, %1289
  %1292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1293 = extractvalue %dx.types.CBufRet.f32 %1292, 0
  %1294 = extractvalue %dx.types.CBufRet.f32 %1292, 1
  %1295 = fmul fast float %1290, %1293
  %1296 = fmul fast float %1291, %1294
  %1297 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %26, float %1295, float %1296, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1298 = extractvalue %dx.types.ResRet.f32 %1297, 0
  %1299 = fcmp fast ogt float %1298, 0.000000e+00
  %1300 = extractvalue %dx.types.CBufRet.i32 %1283, 3
  %1301 = icmp ne i32 %1300, 0
  %1302 = and i1 %1299, %1301
  br i1 %1302, label %1303, label %1321, !dx.controlflow.hints !87

; <label>:1303                                    ; preds = %1286
  %1304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1305 = extractvalue %dx.types.CBufRet.f32 %1304, 0
  %1306 = extractvalue %dx.types.CBufRet.f32 %1304, 1
  %1307 = fsub fast float %354, %1305
  %1308 = fsub fast float %355, %1306
  %1309 = fmul fast float %1307, %1307
  %1310 = fmul fast float %1308, %1308
  %1311 = fadd fast float %1309, %1310
  %1312 = uitofp i32 %1300 to float
  %1313 = fmul fast float %1312, %1312
  %1314 = fcmp fast ogt float %1311, %1313
  br i1 %1314, label %1321, label %1315, !dx.controlflow.hints !88

; <label>:1315                                    ; preds = %1303
  %1316 = call float @dx.op.unary.f32(i32 24, float %1311)  ; Sqrt(value)
  %1317 = fsub fast float %1312, %1316
  %1318 = fmul fast float %1317, 0x3F75555560000000
  %1319 = call float @dx.op.unary.f32(i32 7, float %1318)  ; Saturate(value)
  %1320 = call float @dx.op.binary.f32(i32 36, float %1319, float %1298)  ; FMin(a,b)
  br label %1321

; <label>:1321                                    ; preds = %1315, %1303, %1286, %1279
  %1322 = phi float [ 1.000000e+00, %1279 ], [ %1320, %1315 ], [ %1298, %1286 ], [ 0.000000e+00, %1303 ]
  %1323 = fcmp fast ogt float %1322, 0.000000e+00
  br i1 %1323, label %1324, label %1397, !dx.controlflow.hints !89

; <label>:1324                                    ; preds = %1321
  %1325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %1326 = extractvalue %dx.types.ResRet.i32 %1325, 0
  %1327 = extractvalue %dx.types.ResRet.i32 %1325, 1
  %1328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %1329 = extractvalue %dx.types.ResRet.i32 %1328, 0
  %1330 = extractvalue %dx.types.ResRet.i32 %1328, 1
  %1331 = extractvalue %dx.types.ResRet.i32 %1328, 2
  %1332 = extractvalue %dx.types.ResRet.i32 %1328, 3
  %1333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %1334 = extractvalue %dx.types.ResRet.i32 %1333, 0
  %1335 = extractvalue %dx.types.ResRet.i32 %1333, 1
  %1336 = extractvalue %dx.types.ResRet.i32 %1333, 2
  %1337 = extractvalue %dx.types.ResRet.i32 %1333, 3
  %1338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %1339 = extractvalue %dx.types.ResRet.i32 %1338, 0
  %1340 = extractvalue %dx.types.ResRet.i32 %1338, 1
  %1341 = extractvalue %dx.types.ResRet.i32 %1338, 2
  %1342 = extractvalue %dx.types.ResRet.i32 %1338, 3
  %1343 = and i32 %1339, 65535
  %1344 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1343)  ; LegacyF16ToF32(value)
  %1345 = lshr i32 %1339, 16
  %1346 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1345)  ; LegacyF16ToF32(value)
  %1347 = and i32 %1340, 65535
  %1348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1347)  ; LegacyF16ToF32(value)
  %1349 = lshr i32 %1340, 16
  %1350 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1349)  ; LegacyF16ToF32(value)
  %1351 = and i32 %1341, 65535
  %1352 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1351)  ; LegacyF16ToF32(value)
  %1353 = lshr i32 %1341, 16
  %1354 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1353)  ; LegacyF16ToF32(value)
  %1355 = and i32 %1342, 65535
  %1356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1355)  ; LegacyF16ToF32(value)
  %1357 = lshr i32 %1342, 16
  %1358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1357)  ; LegacyF16ToF32(value)
  %1359 = and i32 %1334, 65535
  %1360 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1359)  ; LegacyF16ToF32(value)
  %1361 = lshr i32 %1334, 16
  %1362 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1361)  ; LegacyF16ToF32(value)
  %1363 = and i32 %1335, 65535
  %1364 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1363)  ; LegacyF16ToF32(value)
  %1365 = lshr i32 %1335, 16
  %1366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1365)  ; LegacyF16ToF32(value)
  %1367 = and i32 %1336, 65535
  %1368 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1367)  ; LegacyF16ToF32(value)
  %1369 = lshr i32 %1336, 16
  %1370 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1369)  ; LegacyF16ToF32(value)
  %1371 = and i32 %1337, 65535
  %1372 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1371)  ; LegacyF16ToF32(value)
  %1373 = lshr i32 %1337, 16
  %1374 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1373)  ; LegacyF16ToF32(value)
  %1375 = and i32 %1329, 65535
  %1376 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1375)  ; LegacyF16ToF32(value)
  %1377 = lshr i32 %1329, 16
  %1378 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1377)  ; LegacyF16ToF32(value)
  %1379 = and i32 %1330, 65535
  %1380 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1379)  ; LegacyF16ToF32(value)
  %1381 = lshr i32 %1330, 16
  %1382 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1381)  ; LegacyF16ToF32(value)
  %1383 = and i32 %1331, 65535
  %1384 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1383)  ; LegacyF16ToF32(value)
  %1385 = lshr i32 %1331, 16
  %1386 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1385)  ; LegacyF16ToF32(value)
  %1387 = and i32 %1332, 65535
  %1388 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1387)  ; LegacyF16ToF32(value)
  %1389 = lshr i32 %1332, 16
  %1390 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1389)  ; LegacyF16ToF32(value)
  %1391 = and i32 %1326, 65535
  %1392 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1391)  ; LegacyF16ToF32(value)
  %1393 = lshr i32 %1326, 16
  %1394 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1393)  ; LegacyF16ToF32(value)
  %1395 = and i32 %1327, 65535
  %1396 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1395)  ; LegacyF16ToF32(value)
  br label %1397

; <label>:1397                                    ; preds = %1324, %1321
  %1398 = phi float [ %1396, %1324 ], [ 0.000000e+00, %1321 ]
  %1399 = phi float [ %1394, %1324 ], [ 0.000000e+00, %1321 ]
  %1400 = phi float [ %1392, %1324 ], [ 0.000000e+00, %1321 ]
  %1401 = phi float [ %1390, %1324 ], [ 0.000000e+00, %1321 ]
  %1402 = phi float [ %1388, %1324 ], [ 0.000000e+00, %1321 ]
  %1403 = phi float [ %1386, %1324 ], [ 0.000000e+00, %1321 ]
  %1404 = phi float [ %1384, %1324 ], [ 0.000000e+00, %1321 ]
  %1405 = phi float [ %1382, %1324 ], [ 0.000000e+00, %1321 ]
  %1406 = phi float [ %1380, %1324 ], [ 0.000000e+00, %1321 ]
  %1407 = phi float [ %1378, %1324 ], [ 0.000000e+00, %1321 ]
  %1408 = phi float [ %1376, %1324 ], [ 0.000000e+00, %1321 ]
  %1409 = phi float [ %1374, %1324 ], [ 0.000000e+00, %1321 ]
  %1410 = phi float [ %1372, %1324 ], [ 0.000000e+00, %1321 ]
  %1411 = phi float [ %1370, %1324 ], [ 0.000000e+00, %1321 ]
  %1412 = phi float [ %1368, %1324 ], [ 0.000000e+00, %1321 ]
  %1413 = phi float [ %1366, %1324 ], [ 0.000000e+00, %1321 ]
  %1414 = phi float [ %1364, %1324 ], [ 0.000000e+00, %1321 ]
  %1415 = phi float [ %1362, %1324 ], [ 0.000000e+00, %1321 ]
  %1416 = phi float [ %1360, %1324 ], [ 0.000000e+00, %1321 ]
  %1417 = phi float [ %1358, %1324 ], [ 0.000000e+00, %1321 ]
  %1418 = phi float [ %1356, %1324 ], [ 0.000000e+00, %1321 ]
  %1419 = phi float [ %1354, %1324 ], [ 0.000000e+00, %1321 ]
  %1420 = phi float [ %1352, %1324 ], [ 0.000000e+00, %1321 ]
  %1421 = phi float [ %1350, %1324 ], [ 0.000000e+00, %1321 ]
  %1422 = phi float [ %1348, %1324 ], [ 0.000000e+00, %1321 ]
  %1423 = phi float [ %1346, %1324 ], [ 0.000000e+00, %1321 ]
  %1424 = phi float [ %1344, %1324 ], [ 0.000000e+00, %1321 ]
  %1425 = fcmp fast olt float %1322, 1.000000e+00
  br i1 %1425, label %1426, label %2086, !dx.controlflow.hints !90

; <label>:1426                                    ; preds = %1397
  %1427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1428 = extractvalue %dx.types.CBufRet.f32 %1427, 0
  %1429 = extractvalue %dx.types.CBufRet.f32 %1427, 1
  %1430 = fsub fast float %354, %1428
  %1431 = fsub fast float %355, %1429
  %1432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1433 = extractvalue %dx.types.CBufRet.f32 %1432, 0
  %1434 = extractvalue %dx.types.CBufRet.f32 %1432, 1
  %1435 = fmul fast float %1430, %1433
  %1436 = fmul fast float %1431, %1434
  %1437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1438 = extractvalue %dx.types.CBufRet.f32 %1437, 0
  %1439 = fmul fast float %1438, %1435
  %1440 = extractvalue %dx.types.CBufRet.f32 %1437, 1
  %1441 = fadd fast float %1439, %1440
  %1442 = extractvalue %dx.types.CBufRet.f32 %1437, 2
  %1443 = fmul fast float %1442, %1436
  %1444 = extractvalue %dx.types.CBufRet.f32 %1437, 3
  %1445 = fadd fast float %1443, %1444
  %1446 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %26, float %1441, float %1445, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1447 = extractvalue %dx.types.ResRet.f32 %1446, 0
  %1448 = extractvalue %dx.types.ResRet.f32 %1446, 1
  %1449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1450 = extractvalue %dx.types.CBufRet.f32 %1449, 1
  %1451 = extractvalue %dx.types.CBufRet.f32 %1449, 0
  %1452 = fsub fast float %1450, %1451
  %1453 = fmul fast float %1452, %1447
  %1454 = fadd fast float %1453, %1451
  %1455 = extractvalue %dx.types.CBufRet.f32 %1449, 3
  %1456 = extractvalue %dx.types.CBufRet.f32 %1449, 2
  %1457 = fsub fast float %1455, %1456
  %1458 = fmul fast float %1457, %1448
  %1459 = fadd fast float %1458, %1456
  %1460 = fsub fast float %356, %1454
  %1461 = fsub fast float %1459, %1454
  %1462 = fdiv fast float %1460, %1461
  %1463 = call float @dx.op.unary.f32(i32 7, float %1462)  ; Saturate(value)
  %1464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %1465 = extractvalue %dx.types.CBufRet.f32 %1464, 0
  %1466 = fmul fast float %1465, %1463
  %1467 = extractvalue %dx.types.CBufRet.f32 %1464, 1
  %1468 = fadd fast float %1466, %1467
  %1469 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %26, float %1441, float %1445, float %1468, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1470 = extractvalue %dx.types.ResRet.f32 %1469, 0
  %1471 = extractvalue %dx.types.ResRet.f32 %1469, 1
  %1472 = extractvalue %dx.types.ResRet.f32 %1469, 2
  %1473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %1474 = extractvalue %dx.types.CBufRet.f32 %1473, 0
  %1475 = extractvalue %dx.types.CBufRet.f32 %1473, 1
  %1476 = extractvalue %dx.types.CBufRet.f32 %1473, 2
  %1477 = fmul fast float %1474, %1470
  %1478 = fmul fast float %1475, %1471
  %1479 = fmul fast float %1476, %1472
  %1480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %1481 = extractvalue %dx.types.CBufRet.f32 %1480, 0
  %1482 = extractvalue %dx.types.CBufRet.f32 %1480, 1
  %1483 = extractvalue %dx.types.CBufRet.f32 %1480, 2
  %1484 = fadd fast float %1477, %1481
  %1485 = fadd fast float %1478, %1482
  %1486 = fadd fast float %1479, %1483
  %1487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %1488 = extractvalue %dx.types.CBufRet.f32 %1487, 0
  %1489 = fmul fast float %1488, %1435
  %1490 = extractvalue %dx.types.CBufRet.f32 %1487, 1
  %1491 = fadd fast float %1489, %1490
  %1492 = extractvalue %dx.types.CBufRet.f32 %1487, 2
  %1493 = fmul fast float %1492, %1436
  %1494 = extractvalue %dx.types.CBufRet.f32 %1487, 3
  %1495 = fadd fast float %1493, %1494
  %1496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %1497 = extractvalue %dx.types.CBufRet.f32 %1496, 0
  %1498 = extractvalue %dx.types.CBufRet.f32 %1496, 1
  %1499 = extractvalue %dx.types.CBufRet.f32 %1496, 2
  %1500 = extractvalue %dx.types.CBufRet.f32 %1496, 3
  %1501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %1502 = extractvalue %dx.types.CBufRet.f32 %1501, 0
  %1503 = extractvalue %dx.types.CBufRet.f32 %1501, 1
  %1504 = extractvalue %dx.types.CBufRet.f32 %1501, 2
  %1505 = extractvalue %dx.types.CBufRet.f32 %1501, 3
  %1506 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %26, float %1491, float %1495, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1507 = extractvalue %dx.types.ResRet.f32 %1506, 0
  %1508 = extractvalue %dx.types.ResRet.f32 %1506, 1
  %1509 = extractvalue %dx.types.ResRet.f32 %1506, 2
  %1510 = extractvalue %dx.types.ResRet.f32 %1506, 3
  %1511 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %26, float %1491, float %1495, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1512 = extractvalue %dx.types.ResRet.f32 %1511, 0
  %1513 = extractvalue %dx.types.ResRet.f32 %1511, 1
  %1514 = extractvalue %dx.types.ResRet.f32 %1511, 2
  %1515 = extractvalue %dx.types.ResRet.f32 %1511, 3
  %1516 = fmul fast float %1507, %1484
  %1517 = fmul fast float %1512, %1484
  %1518 = fmul fast float %1514, %1484
  %1519 = fmul fast float %1510, %1484
  %1520 = fadd fast float %1516, %1497
  %1521 = fadd fast float %1517, %1498
  %1522 = fadd fast float %1518, %1499
  %1523 = fadd fast float %1519, %1500
  %1524 = fmul fast float %1508, %1484
  %1525 = fmul fast float %1513, %1484
  %1526 = fadd fast float %1524, %1502
  %1527 = fadd fast float %1525, %1503
  %1528 = fmul fast float %1509, %1484
  %1529 = fmul fast float %1515, %1484
  %1530 = fadd fast float %1528, %1504
  %1531 = fadd fast float %1529, %1505
  %1532 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %26, float %1491, float %1495, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1533 = extractvalue %dx.types.ResRet.f32 %1532, 0
  %1534 = extractvalue %dx.types.ResRet.f32 %1532, 1
  %1535 = extractvalue %dx.types.ResRet.f32 %1532, 2
  %1536 = extractvalue %dx.types.ResRet.f32 %1532, 3
  %1537 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %26, float %1491, float %1495, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1538 = extractvalue %dx.types.ResRet.f32 %1537, 0
  %1539 = extractvalue %dx.types.ResRet.f32 %1537, 1
  %1540 = extractvalue %dx.types.ResRet.f32 %1537, 2
  %1541 = extractvalue %dx.types.ResRet.f32 %1537, 3
  %1542 = fmul fast float %1533, %1485
  %1543 = fmul fast float %1538, %1485
  %1544 = fmul fast float %1540, %1485
  %1545 = fmul fast float %1536, %1485
  %1546 = fadd fast float %1520, %1542
  %1547 = fadd fast float %1521, %1543
  %1548 = fadd fast float %1522, %1544
  %1549 = fadd fast float %1523, %1545
  %1550 = fmul fast float %1534, %1485
  %1551 = fmul fast float %1539, %1485
  %1552 = fadd fast float %1526, %1550
  %1553 = fadd fast float %1527, %1551
  %1554 = fmul fast float %1535, %1485
  %1555 = fmul fast float %1541, %1485
  %1556 = fadd fast float %1530, %1554
  %1557 = fadd fast float %1531, %1555
  %1558 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %26, float %1491, float %1495, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1559 = extractvalue %dx.types.ResRet.f32 %1558, 0
  %1560 = extractvalue %dx.types.ResRet.f32 %1558, 1
  %1561 = extractvalue %dx.types.ResRet.f32 %1558, 2
  %1562 = extractvalue %dx.types.ResRet.f32 %1558, 3
  %1563 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %26, float %1491, float %1495, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1564 = extractvalue %dx.types.ResRet.f32 %1563, 0
  %1565 = extractvalue %dx.types.ResRet.f32 %1563, 1
  %1566 = extractvalue %dx.types.ResRet.f32 %1563, 2
  %1567 = extractvalue %dx.types.ResRet.f32 %1563, 3
  %1568 = fmul fast float %1559, %1486
  %1569 = fmul fast float %1564, %1486
  %1570 = fmul fast float %1566, %1486
  %1571 = fmul fast float %1562, %1486
  %1572 = fadd fast float %1546, %1568
  %1573 = fadd fast float %1547, %1569
  %1574 = fadd fast float %1548, %1570
  %1575 = fadd fast float %1549, %1571
  %1576 = fmul fast float %1560, %1486
  %1577 = fmul fast float %1565, %1486
  %1578 = fadd fast float %1552, %1576
  %1579 = fadd fast float %1553, %1577
  %1580 = fmul fast float %1561, %1486
  %1581 = fmul fast float %1567, %1486
  %1582 = fadd fast float %1556, %1580
  %1583 = fadd fast float %1557, %1581
  %1584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %1585 = extractvalue %dx.types.CBufRet.f32 %1584, 0
  %1586 = fsub fast float %354, %1585
  %1587 = fsub fast float %1428, %354
  %1588 = call float @dx.op.binary.f32(i32 35, float %1587, float %1586)  ; FMax(a,b)
  %1589 = extractvalue %dx.types.CBufRet.f32 %1584, 1
  %1590 = fsub fast float %355, %1589
  %1591 = fsub fast float %1429, %355
  %1592 = call float @dx.op.binary.f32(i32 35, float %1591, float %1590)  ; FMax(a,b)
  %1593 = call float @dx.op.binary.f32(i32 35, float %1588, float %1592)  ; FMax(a,b)
  %1594 = extractvalue %dx.types.CBufRet.f32 %1432, 3
  %1595 = fmul fast float %1594, %1593
  %1596 = call float @dx.op.unary.f32(i32 7, float %1595)  ; Saturate(value)
  %1597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %1598 = extractvalue %dx.types.CBufRet.f32 %1597, 0
  %1599 = extractvalue %dx.types.CBufRet.f32 %1597, 1
  %1600 = extractvalue %dx.types.CBufRet.f32 %1597, 2
  %1601 = extractvalue %dx.types.CBufRet.f32 %1597, 3
  %1602 = fsub fast float %1598, %1572
  %1603 = fsub fast float %1599, %1573
  %1604 = fsub fast float %1600, %1574
  %1605 = fsub fast float %1601, %1575
  %1606 = fmul fast float %1602, %1596
  %1607 = fmul fast float %1603, %1596
  %1608 = fmul fast float %1604, %1596
  %1609 = fmul fast float %1605, %1596
  %1610 = fadd fast float %1606, %1572
  %1611 = fadd fast float %1607, %1573
  %1612 = fadd fast float %1608, %1574
  %1613 = fadd fast float %1609, %1575
  %1614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %1615 = extractvalue %dx.types.CBufRet.f32 %1614, 0
  %1616 = extractvalue %dx.types.CBufRet.f32 %1614, 1
  %1617 = fsub fast float %1615, %1578
  %1618 = fsub fast float %1616, %1579
  %1619 = fmul fast float %1617, %1596
  %1620 = fmul fast float %1618, %1596
  %1621 = fadd fast float %1619, %1578
  %1622 = fadd fast float %1620, %1579
  %1623 = extractvalue %dx.types.CBufRet.f32 %1614, 2
  %1624 = extractvalue %dx.types.CBufRet.f32 %1614, 3
  %1625 = fsub fast float %1623, %1582
  %1626 = fsub fast float %1624, %1583
  %1627 = fmul fast float %1625, %1596
  %1628 = fmul fast float %1626, %1596
  %1629 = fadd fast float %1627, %1582
  %1630 = fadd fast float %1628, %1583
  %1631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %1632 = extractvalue %dx.types.CBufRet.f32 %1631, 0
  %1633 = fmul fast float %1632, %1610
  %1634 = fmul fast float %1632, %1611
  %1635 = fmul fast float %1632, %1612
  %1636 = fmul fast float %1632, %1613
  %1637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %1638 = extractvalue %dx.types.CBufRet.f32 %1637, 0
  %1639 = fmul fast float %1638, %1621
  %1640 = fmul fast float %1638, %1622
  %1641 = fadd fast float %1639, %1633
  %1642 = fadd fast float %1640, %1635
  %1643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %1644 = extractvalue %dx.types.CBufRet.f32 %1643, 0
  %1645 = fmul fast float %1644, %1629
  %1646 = fmul fast float %1644, %1630
  %1647 = fadd fast float %1641, %1645
  %1648 = fadd fast float %1642, %1646
  %1649 = extractvalue %dx.types.CBufRet.f32 %1631, 1
  %1650 = fmul fast float %1649, %1610
  %1651 = fmul fast float %1649, %1611
  %1652 = fmul fast float %1649, %1612
  %1653 = fmul fast float %1649, %1613
  %1654 = extractvalue %dx.types.CBufRet.f32 %1637, 1
  %1655 = fmul fast float %1654, %1621
  %1656 = fmul fast float %1654, %1622
  %1657 = fadd fast float %1655, %1650
  %1658 = fadd fast float %1656, %1652
  %1659 = extractvalue %dx.types.CBufRet.f32 %1643, 1
  %1660 = fmul fast float %1659, %1629
  %1661 = fmul fast float %1659, %1630
  %1662 = fadd fast float %1657, %1660
  %1663 = fadd fast float %1658, %1661
  %1664 = extractvalue %dx.types.CBufRet.f32 %1631, 2
  %1665 = fmul fast float %1664, %1610
  %1666 = fmul fast float %1664, %1611
  %1667 = fmul fast float %1664, %1612
  %1668 = fmul fast float %1664, %1613
  %1669 = extractvalue %dx.types.CBufRet.f32 %1637, 2
  %1670 = fmul fast float %1669, %1621
  %1671 = fmul fast float %1669, %1622
  %1672 = fadd fast float %1670, %1665
  %1673 = fadd fast float %1671, %1667
  %1674 = extractvalue %dx.types.CBufRet.f32 %1643, 2
  %1675 = fmul fast float %1674, %1629
  %1676 = fmul fast float %1674, %1630
  %1677 = fadd fast float %1672, %1675
  %1678 = fadd fast float %1673, %1676
  %1679 = fmul fast float %1666, %1666
  %1680 = fmul fast float %1678, %1678
  %1681 = fmul fast float %1668, %1668
  %1682 = fadd fast float %1681, %1679
  %1683 = fadd fast float %1682, %1680
  %1684 = call float @dx.op.unary.f32(i32 24, float %1683)  ; Sqrt(value)
  %1685 = fcmp fast ugt float %1684, 0.000000e+00
  br i1 %1685, label %1686, label %1701, !dx.controlflow.hints !91

; <label>:1686                                    ; preds = %1426
  %1687 = fsub fast float -0.000000e+00, %1668
  %1688 = fdiv fast float %1687, %1684
  %1689 = fsub fast float -0.000000e+00, %1666
  %1690 = fdiv fast float %1689, %1684
  %1691 = fdiv fast float %1678, %1684
  %1692 = fmul fast float %1677, 0x3FE279A760000000
  %1693 = fmul fast float %1690, %1666
  %1694 = fmul fast float %1691, %1678
  %1695 = fmul fast float %1688, %1668
  %1696 = fadd fast float %1693, %1695
  %1697 = fsub fast float %1696, %1694
  %1698 = call float @dx.op.unary.f32(i32 6, float %1697)  ; FAbs(value)
  %1699 = fadd fast float %1698, 0x3DDB7CDFE0000000
  %1700 = fdiv fast float %1692, %1699
  br label %1701

; <label>:1701                                    ; preds = %1686, %1426
  %1702 = phi float [ %1700, %1686 ], [ 1.000000e+00, %1426 ]
  %1703 = fmul fast float %1651, %1651
  %1704 = fmul fast float %1663, %1663
  %1705 = fmul fast float %1653, %1653
  %1706 = fadd fast float %1705, %1703
  %1707 = fadd fast float %1706, %1704
  %1708 = call float @dx.op.unary.f32(i32 24, float %1707)  ; Sqrt(value)
  %1709 = fcmp fast ugt float %1708, 0.000000e+00
  br i1 %1709, label %1710, label %1725, !dx.controlflow.hints !91

; <label>:1710                                    ; preds = %1701
  %1711 = fsub fast float -0.000000e+00, %1653
  %1712 = fdiv fast float %1711, %1708
  %1713 = fsub fast float -0.000000e+00, %1651
  %1714 = fdiv fast float %1713, %1708
  %1715 = fdiv fast float %1663, %1708
  %1716 = fmul fast float %1662, 0x3FE279A760000000
  %1717 = fmul fast float %1714, %1651
  %1718 = fmul fast float %1715, %1663
  %1719 = fmul fast float %1712, %1653
  %1720 = fadd fast float %1717, %1719
  %1721 = fsub fast float %1720, %1718
  %1722 = call float @dx.op.unary.f32(i32 6, float %1721)  ; FAbs(value)
  %1723 = fadd fast float %1722, 0x3DDB7CDFE0000000
  %1724 = fdiv fast float %1716, %1723
  br label %1725

; <label>:1725                                    ; preds = %1710, %1701
  %1726 = phi float [ %1724, %1710 ], [ 1.000000e+00, %1701 ]
  %1727 = call float @dx.op.binary.f32(i32 36, float %1726, float %1702)  ; FMin(a,b)
  %1728 = fmul fast float %1634, %1634
  %1729 = fmul fast float %1648, %1648
  %1730 = fmul fast float %1636, %1636
  %1731 = fadd fast float %1730, %1728
  %1732 = fadd fast float %1731, %1729
  %1733 = call float @dx.op.unary.f32(i32 24, float %1732)  ; Sqrt(value)
  %1734 = fcmp fast ugt float %1733, 0.000000e+00
  br i1 %1734, label %1735, label %1750, !dx.controlflow.hints !91

; <label>:1735                                    ; preds = %1725
  %1736 = fsub fast float -0.000000e+00, %1636
  %1737 = fdiv fast float %1736, %1733
  %1738 = fsub fast float -0.000000e+00, %1634
  %1739 = fdiv fast float %1738, %1733
  %1740 = fdiv fast float %1648, %1733
  %1741 = fmul fast float %1647, 0x3FE279A760000000
  %1742 = fmul fast float %1739, %1634
  %1743 = fmul fast float %1740, %1648
  %1744 = fmul fast float %1737, %1636
  %1745 = fadd fast float %1742, %1744
  %1746 = fsub fast float %1745, %1743
  %1747 = call float @dx.op.unary.f32(i32 6, float %1746)  ; FAbs(value)
  %1748 = fadd fast float %1747, 0x3DDB7CDFE0000000
  %1749 = fdiv fast float %1741, %1748
  br label %1750

; <label>:1750                                    ; preds = %1735, %1725
  %1751 = phi float [ %1749, %1735 ], [ 1.000000e+00, %1725 ]
  %1752 = call float @dx.op.binary.f32(i32 36, float %1751, float %1727)  ; FMin(a,b)
  %1753 = call float @dx.op.unary.f32(i32 7, float %1752)  ; Saturate(value)
  %1754 = fcmp fast olt float %1753, 1.000000e+00
  br i1 %1754, label %1755, label %1765, !dx.controlflow.hints !92

; <label>:1755                                    ; preds = %1750
  %1756 = fmul fast float %1753, %1634
  %1757 = fmul fast float %1753, %1648
  %1758 = fmul fast float %1753, %1636
  %1759 = fmul fast float %1753, %1651
  %1760 = fmul fast float %1753, %1663
  %1761 = fmul fast float %1753, %1653
  %1762 = fmul fast float %1753, %1666
  %1763 = fmul fast float %1753, %1678
  %1764 = fmul fast float %1753, %1668
  br label %1765

; <label>:1765                                    ; preds = %1755, %1750
  %1766 = phi float [ %1762, %1755 ], [ %1666, %1750 ]
  %1767 = phi float [ %1763, %1755 ], [ %1678, %1750 ]
  %1768 = phi float [ %1764, %1755 ], [ %1668, %1750 ]
  %1769 = phi float [ %1759, %1755 ], [ %1651, %1750 ]
  %1770 = phi float [ %1760, %1755 ], [ %1663, %1750 ]
  %1771 = phi float [ %1761, %1755 ], [ %1653, %1750 ]
  %1772 = phi float [ %1756, %1755 ], [ %1634, %1750 ]
  %1773 = phi float [ %1757, %1755 ], [ %1648, %1750 ]
  %1774 = phi float [ %1758, %1755 ], [ %1636, %1750 ]
  %1775 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1647)  ; FMax(a,b)
  %1776 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1662)  ; FMax(a,b)
  %1777 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1677)  ; FMax(a,b)
  %1778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %1779 = extractvalue %dx.types.CBufRet.f32 %1778, 0
  %1780 = fcmp fast ogt float %1779, 0.000000e+00
  %1781 = fcmp fast oge float %1435, 0.000000e+00
  %1782 = and i1 %1781, %1780
  %1783 = fcmp fast ole float %1435, 1.000000e+00
  %1784 = and i1 %1783, %1782
  %1785 = fcmp fast oge float %1436, 0.000000e+00
  %1786 = and i1 %1785, %1784
  %1787 = fcmp fast ole float %1436, 1.000000e+00
  %1788 = and i1 %1787, %1786
  br i1 %1788, label %1789, label %1934, !dx.controlflow.hints !93

; <label>:1789                                    ; preds = %1765
  %1790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1791 = extractvalue %dx.types.CBufRet.f32 %1790, 2
  %1792 = extractvalue %dx.types.CBufRet.f32 %1790, 3
  %1793 = fmul fast float %1791, %1435
  %1794 = fmul fast float %1792, %1436
  %1795 = call float @dx.op.unary.f32(i32 27, float %1793)  ; Round_ni(value)
  %1796 = call float @dx.op.unary.f32(i32 27, float %1794)  ; Round_ni(value)
  %1797 = fptosi float %1795 to i32
  %1798 = fptosi float %1796 to i32
  %1799 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %1797, i32 %1798, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1800 = extractvalue %dx.types.ResRet.i32 %1799, 0
  %1801 = and i32 %1800, 65535
  %1802 = lshr i32 %1800, 16
  %1803 = icmp eq i32 %1801, 65535
  br i1 %1803, label %1840, label %1804, !dx.controlflow.hints !94

; <label>:1804                                    ; preds = %1789
  %1805 = extractvalue %dx.types.CBufRet.f32 %1778, 1
  %1806 = extractvalue %dx.types.CBufRet.f32 %1790, 0
  %1807 = extractvalue %dx.types.CBufRet.f32 %1790, 1
  %1808 = fmul fast float %1806, %1435
  %1809 = fmul fast float %1807, %1436
  %1810 = fmul fast float %1808, 1.250000e-01
  %1811 = fmul fast float %1809, 1.250000e-01
  %1812 = call float @dx.op.unary.f32(i32 27, float %1810)  ; Round_ni(value)
  %1813 = call float @dx.op.unary.f32(i32 27, float %1811)  ; Round_ni(value)
  %1814 = fmul fast float %1812, 8.000000e+00
  %1815 = fmul fast float %1813, 8.000000e+00
  %1816 = and i32 %1800, 255
  %1817 = lshr i32 %1800, 8
  %1818 = and i32 %1817, 255
  %1819 = mul nuw nsw i32 %1816, 9
  %1820 = uitofp i32 %1819 to float
  %1821 = mul nuw nsw i32 %1818, 9
  %1822 = uitofp i32 %1821 to float
  %1823 = fadd fast float %1820, 5.000000e-01
  %1824 = fadd fast float %1823, %1808
  %1825 = fsub fast float %1824, %1814
  %1826 = fadd fast float %1822, 5.000000e-01
  %1827 = fadd fast float %1826, %1809
  %1828 = fsub fast float %1827, %1815
  %1829 = fdiv fast float %1825, %1779
  %1830 = fdiv fast float %1828, %1805
  %1831 = fmul fast float %1463, 4.375000e-01
  %1832 = fadd fast float %1831, 3.125000e-02
  %1833 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %26, float %1829, float %1830, float %1832, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1834 = extractvalue %dx.types.ResRet.f32 %1833, 0
  %1835 = extractvalue %dx.types.ResRet.f32 %1833, 1
  %1836 = extractvalue %dx.types.ResRet.f32 %1833, 2
  %1837 = fadd fast float %1834, %1775
  %1838 = fadd fast float %1835, %1776
  %1839 = fadd fast float %1836, %1777
  br label %1840

; <label>:1840                                    ; preds = %1804, %1789
  %1841 = phi float [ %1839, %1804 ], [ %1777, %1789 ]
  %1842 = phi float [ %1838, %1804 ], [ %1776, %1789 ]
  %1843 = phi float [ %1837, %1804 ], [ %1775, %1789 ]
  %1844 = icmp eq i32 %1802, 65535
  br i1 %1844, label %1934, label %1845, !dx.controlflow.hints !95

; <label>:1845                                    ; preds = %1840
  %1846 = extractvalue %dx.types.CBufRet.f32 %1778, 1
  %1847 = extractvalue %dx.types.CBufRet.f32 %1790, 0
  %1848 = extractvalue %dx.types.CBufRet.f32 %1790, 1
  %1849 = fmul fast float %1847, %1435
  %1850 = fmul fast float %1848, %1436
  %1851 = fmul fast float %1849, 1.250000e-01
  %1852 = fmul fast float %1850, 1.250000e-01
  %1853 = call float @dx.op.unary.f32(i32 27, float %1851)  ; Round_ni(value)
  %1854 = call float @dx.op.unary.f32(i32 27, float %1852)  ; Round_ni(value)
  %1855 = fmul fast float %1853, 8.000000e+00
  %1856 = fmul fast float %1854, 8.000000e+00
  %1857 = fsub fast float %1849, %1855
  %1858 = fsub fast float %1850, %1856
  %1859 = fadd fast float %1857, 5.000000e-01
  %1860 = fadd fast float %1858, 5.000000e-01
  %1861 = and i32 %1802, 255
  %1862 = lshr i32 %1800, 24
  %1863 = mul nuw nsw i32 %1861, 9
  %1864 = uitofp i32 %1863 to float
  %1865 = mul nuw nsw i32 %1862, 9
  %1866 = uitofp i32 %1865 to float
  %1867 = fadd fast float %1859, %1864
  %1868 = fadd fast float %1860, %1866
  %1869 = fdiv fast float %1867, %1779
  %1870 = fdiv fast float %1868, %1846
  %1871 = fmul fast float %1463, 4.375000e-01
  %1872 = fadd fast float %1871, 3.125000e-02
  %1873 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %26, float %1869, float %1870, float %1872, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1874 = extractvalue %dx.types.ResRet.f32 %1873, 0
  %1875 = extractvalue %dx.types.ResRet.f32 %1873, 1
  %1876 = extractvalue %dx.types.ResRet.f32 %1873, 2
  %1877 = fadd fast float %1871, 5.312500e-01
  %1878 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %26, float %1869, float %1870, float %1877, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1879 = extractvalue %dx.types.ResRet.f32 %1878, 0
  %1880 = extractvalue %dx.types.ResRet.f32 %1878, 1
  %1881 = extractvalue %dx.types.ResRet.f32 %1878, 2
  %1882 = fmul fast float %1879, 2.000000e+00
  %1883 = fmul fast float %1880, 2.000000e+00
  %1884 = fmul fast float %1881, 2.000000e+00
  %1885 = fadd fast float %1882, -1.000000e+00
  %1886 = fadd fast float %1883, -1.000000e+00
  %1887 = fadd fast float %1884, -1.000000e+00
  %1888 = fmul fast float %1885, %1885
  %1889 = fmul fast float %1886, %1886
  %1890 = fadd fast float %1888, %1889
  %1891 = fmul fast float %1887, %1887
  %1892 = fadd fast float %1890, %1891
  %1893 = call float @dx.op.unary.f32(i32 24, float %1892)  ; Sqrt(value)
  %1894 = fcmp fast ogt float %1893, 0.000000e+00
  br i1 %1894, label %1895, label %1899, !dx.controlflow.hints !96

; <label>:1895                                    ; preds = %1845
  %1896 = fdiv fast float %1885, %1893
  %1897 = fdiv fast float %1886, %1893
  %1898 = fdiv fast float %1887, %1893
  br label %1899

; <label>:1899                                    ; preds = %1895, %1845
  %1900 = phi float [ %1896, %1895 ], [ 0.000000e+00, %1845 ]
  %1901 = phi float [ %1897, %1895 ], [ 0.000000e+00, %1845 ]
  %1902 = phi float [ %1898, %1895 ], [ 0.000000e+00, %1845 ]
  %1903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1904 = extractvalue %dx.types.CBufRet.f32 %1903, 0
  %1905 = extractvalue %dx.types.CBufRet.f32 %1903, 1
  %1906 = fsub fast float %354, %1904
  %1907 = fsub fast float %355, %1905
  %1908 = fmul fast float %1906, %1906
  %1909 = fmul fast float %1907, %1907
  %1910 = fadd fast float %1908, %1909
  %1911 = call float @dx.op.unary.f32(i32 24, float %1910)  ; Sqrt(value)
  %1912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1913 = extractvalue %dx.types.CBufRet.f32 %1912, 0
  %1914 = extractvalue %dx.types.CBufRet.f32 %1912, 1
  %1915 = fsub fast float %1911, %1913
  %1916 = fdiv fast float %1915, %1914
  %1917 = call float @dx.op.unary.f32(i32 7, float %1916)  ; Saturate(value)
  %1918 = fmul fast float %1917, 2.000000e+00
  %1919 = fsub fast float 3.000000e+00, %1918
  %1920 = fmul fast float %1917, %1917
  %1921 = fmul fast float %1920, %1919
  %1922 = call float @dx.op.dot3.f32(i32 55, float %1900, float %1901, float %1902, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1923 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1922)  ; FMax(a,b)
  %1924 = fmul fast float %1923, 0x400C5BF8A0000000
  %1925 = fmul fast float %1921, %1874
  %1926 = fmul fast float %1925, %1924
  %1927 = fadd fast float %1926, %1843
  %1928 = fmul fast float %1921, %1875
  %1929 = fmul fast float %1928, %1924
  %1930 = fadd fast float %1929, %1842
  %1931 = fmul fast float %1921, %1876
  %1932 = fmul fast float %1931, %1924
  %1933 = fadd fast float %1932, %1841
  br label %1934

; <label>:1934                                    ; preds = %1899, %1840, %1765
  %1935 = phi float [ %1933, %1899 ], [ %1841, %1840 ], [ %1777, %1765 ]
  %1936 = phi float [ %1930, %1899 ], [ %1842, %1840 ], [ %1776, %1765 ]
  %1937 = phi float [ %1927, %1899 ], [ %1843, %1840 ], [ %1775, %1765 ]
  %1938 = fcmp fast ogt float %356, %1459
  %1939 = and i1 %1781, %1938
  %1940 = and i1 %1783, %1939
  %1941 = and i1 %1785, %1940
  %1942 = and i1 %1787, %1941
  br i1 %1942, label %1943, label %2000, !dx.controlflow.hints !97

; <label>:1943                                    ; preds = %1934
  %1944 = fmul fast float %1461, 0x3FC24924A0000000
  %1945 = fsub fast float %356, %1459
  %1946 = fdiv fast float %1945, %1944
  %1947 = call float @dx.op.unary.f32(i32 7, float %1946)  ; Saturate(value)
  %1948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %1949 = extractvalue %dx.types.CBufRet.f32 %1948, 0
  %1950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %1951 = extractvalue %dx.types.CBufRet.f32 %1950, 0
  %1952 = extractvalue %dx.types.CBufRet.f32 %1950, 1
  %1953 = extractvalue %dx.types.CBufRet.f32 %1950, 2
  %1954 = fsub fast float %1949, %1937
  %1955 = fsub fast float %1951, %1772
  %1956 = fsub fast float %1952, %1773
  %1957 = fsub fast float %1953, %1774
  %1958 = fmul fast float %1954, %1947
  %1959 = fmul fast float %1955, %1947
  %1960 = fmul fast float %1956, %1947
  %1961 = fmul fast float %1957, %1947
  %1962 = fadd fast float %1958, %1937
  %1963 = fadd fast float %1959, %1772
  %1964 = fadd fast float %1960, %1773
  %1965 = fadd fast float %1961, %1774
  %1966 = extractvalue %dx.types.CBufRet.f32 %1948, 1
  %1967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %1968 = extractvalue %dx.types.CBufRet.f32 %1967, 0
  %1969 = extractvalue %dx.types.CBufRet.f32 %1967, 1
  %1970 = extractvalue %dx.types.CBufRet.f32 %1967, 2
  %1971 = fsub fast float %1966, %1936
  %1972 = fsub fast float %1968, %1769
  %1973 = fsub fast float %1969, %1770
  %1974 = fsub fast float %1970, %1771
  %1975 = fmul fast float %1971, %1947
  %1976 = fmul fast float %1972, %1947
  %1977 = fmul fast float %1973, %1947
  %1978 = fmul fast float %1974, %1947
  %1979 = fadd fast float %1975, %1936
  %1980 = fadd fast float %1976, %1769
  %1981 = fadd fast float %1977, %1770
  %1982 = fadd fast float %1978, %1771
  %1983 = extractvalue %dx.types.CBufRet.f32 %1948, 2
  %1984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %1985 = extractvalue %dx.types.CBufRet.f32 %1984, 0
  %1986 = extractvalue %dx.types.CBufRet.f32 %1984, 1
  %1987 = extractvalue %dx.types.CBufRet.f32 %1984, 2
  %1988 = fsub fast float %1983, %1935
  %1989 = fsub fast float %1985, %1766
  %1990 = fsub fast float %1986, %1767
  %1991 = fsub fast float %1987, %1768
  %1992 = fmul fast float %1988, %1947
  %1993 = fmul fast float %1989, %1947
  %1994 = fmul fast float %1990, %1947
  %1995 = fmul fast float %1991, %1947
  %1996 = fadd fast float %1992, %1935
  %1997 = fadd fast float %1993, %1766
  %1998 = fadd fast float %1994, %1767
  %1999 = fadd fast float %1995, %1768
  br label %2000

; <label>:2000                                    ; preds = %1943, %1934
  %2001 = phi float [ %1996, %1943 ], [ %1935, %1934 ]
  %2002 = phi float [ %1997, %1943 ], [ %1766, %1934 ]
  %2003 = phi float [ %1998, %1943 ], [ %1767, %1934 ]
  %2004 = phi float [ %1999, %1943 ], [ %1768, %1934 ]
  %2005 = phi float [ %1979, %1943 ], [ %1936, %1934 ]
  %2006 = phi float [ %1980, %1943 ], [ %1769, %1934 ]
  %2007 = phi float [ %1981, %1943 ], [ %1770, %1934 ]
  %2008 = phi float [ %1982, %1943 ], [ %1771, %1934 ]
  %2009 = phi float [ %1962, %1943 ], [ %1937, %1934 ]
  %2010 = phi float [ %1963, %1943 ], [ %1772, %1934 ]
  %2011 = phi float [ %1964, %1943 ], [ %1773, %1934 ]
  %2012 = phi float [ %1965, %1943 ], [ %1774, %1934 ]
  %2013 = extractvalue %dx.types.CBufRet.f32 %1584, 3
  %2014 = fmul fast float %2013, %2009
  %2015 = fmul fast float %2013, %2005
  %2016 = fmul fast float %2013, %2001
  %2017 = fmul fast float %2010, 1.500000e+00
  %2018 = fmul fast float %2017, %2013
  %2019 = fmul fast float %2011, 1.500000e+00
  %2020 = fmul fast float %2019, %2013
  %2021 = fmul fast float %2012, 1.500000e+00
  %2022 = fmul fast float %2021, %2013
  %2023 = fmul fast float %2006, 1.500000e+00
  %2024 = fmul fast float %2023, %2013
  %2025 = fmul fast float %2007, 1.500000e+00
  %2026 = fmul fast float %2025, %2013
  %2027 = fmul fast float %2008, 1.500000e+00
  %2028 = fmul fast float %2027, %2013
  %2029 = fmul fast float %2002, 1.500000e+00
  %2030 = fmul fast float %2029, %2013
  %2031 = fmul fast float %2003, 1.500000e+00
  %2032 = fmul fast float %2031, %2013
  %2033 = fmul fast float %2004, 1.500000e+00
  %2034 = fmul fast float %2033, %2013
  %2035 = fsub fast float %1424, %2014
  %2036 = fmul fast float %2035, %1322
  %2037 = fadd fast float %2036, %2014
  %2038 = fsub fast float %1423, %2018
  %2039 = fmul fast float %2038, %1322
  %2040 = fadd fast float %2039, %2018
  %2041 = fsub fast float %1422, %2020
  %2042 = fmul fast float %2041, %1322
  %2043 = fadd fast float %2042, %2020
  %2044 = fsub fast float %1421, %2022
  %2045 = fmul fast float %2044, %1322
  %2046 = fadd fast float %2045, %2022
  %2047 = fmul fast float %1420, %1322
  %2048 = fmul fast float %1419, %1322
  %2049 = fmul fast float %1418, %1322
  %2050 = fmul fast float %1417, %1322
  %2051 = fmul fast float %1416, %1322
  %2052 = fsub fast float %1415, %2015
  %2053 = fmul fast float %2052, %1322
  %2054 = fadd fast float %2053, %2015
  %2055 = fsub fast float %1414, %2024
  %2056 = fmul fast float %2055, %1322
  %2057 = fadd fast float %2056, %2024
  %2058 = fsub fast float %1413, %2026
  %2059 = fmul fast float %2058, %1322
  %2060 = fadd fast float %2059, %2026
  %2061 = fsub fast float %1412, %2028
  %2062 = fmul fast float %2061, %1322
  %2063 = fadd fast float %2062, %2028
  %2064 = fmul fast float %1411, %1322
  %2065 = fmul fast float %1410, %1322
  %2066 = fmul fast float %1409, %1322
  %2067 = fmul fast float %1408, %1322
  %2068 = fmul fast float %1407, %1322
  %2069 = fsub fast float %1406, %2016
  %2070 = fmul fast float %2069, %1322
  %2071 = fadd fast float %2070, %2016
  %2072 = fsub fast float %1405, %2030
  %2073 = fmul fast float %2072, %1322
  %2074 = fadd fast float %2073, %2030
  %2075 = fsub fast float %1404, %2032
  %2076 = fmul fast float %2075, %1322
  %2077 = fadd fast float %2076, %2032
  %2078 = fsub fast float %1403, %2034
  %2079 = fmul fast float %2078, %1322
  %2080 = fadd fast float %2079, %2034
  %2081 = fmul fast float %1402, %1322
  %2082 = fmul fast float %1401, %1322
  %2083 = fmul fast float %1400, %1322
  %2084 = fmul fast float %1399, %1322
  %2085 = fmul fast float %1398, %1322
  br label %2086

; <label>:2086                                    ; preds = %2000, %1397
  %2087 = phi float [ %2085, %2000 ], [ %1398, %1397 ]
  %2088 = phi float [ %2084, %2000 ], [ %1399, %1397 ]
  %2089 = phi float [ %2083, %2000 ], [ %1400, %1397 ]
  %2090 = phi float [ %2082, %2000 ], [ %1401, %1397 ]
  %2091 = phi float [ %2081, %2000 ], [ %1402, %1397 ]
  %2092 = phi float [ %2080, %2000 ], [ %1403, %1397 ]
  %2093 = phi float [ %2077, %2000 ], [ %1404, %1397 ]
  %2094 = phi float [ %2074, %2000 ], [ %1405, %1397 ]
  %2095 = phi float [ %2071, %2000 ], [ %1406, %1397 ]
  %2096 = phi float [ %2068, %2000 ], [ %1407, %1397 ]
  %2097 = phi float [ %2067, %2000 ], [ %1408, %1397 ]
  %2098 = phi float [ %2066, %2000 ], [ %1409, %1397 ]
  %2099 = phi float [ %2065, %2000 ], [ %1410, %1397 ]
  %2100 = phi float [ %2064, %2000 ], [ %1411, %1397 ]
  %2101 = phi float [ %2063, %2000 ], [ %1412, %1397 ]
  %2102 = phi float [ %2060, %2000 ], [ %1413, %1397 ]
  %2103 = phi float [ %2057, %2000 ], [ %1414, %1397 ]
  %2104 = phi float [ %2054, %2000 ], [ %1415, %1397 ]
  %2105 = phi float [ %2051, %2000 ], [ %1416, %1397 ]
  %2106 = phi float [ %2050, %2000 ], [ %1417, %1397 ]
  %2107 = phi float [ %2049, %2000 ], [ %1418, %1397 ]
  %2108 = phi float [ %2048, %2000 ], [ %1419, %1397 ]
  %2109 = phi float [ %2047, %2000 ], [ %1420, %1397 ]
  %2110 = phi float [ %2046, %2000 ], [ %1421, %1397 ]
  %2111 = phi float [ %2043, %2000 ], [ %1422, %1397 ]
  %2112 = phi float [ %2040, %2000 ], [ %1423, %1397 ]
  %2113 = phi float [ %2037, %2000 ], [ %1424, %1397 ]
  %2114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %2115 = extractvalue %dx.types.CBufRet.f32 %2114, 2
  %2116 = fmul fast float %2115, %2115
  %2117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %2118 = extractvalue %dx.types.CBufRet.f32 %2117, 0
  %2119 = extractvalue %dx.types.CBufRet.f32 %2117, 1
  %2120 = extractvalue %dx.types.CBufRet.f32 %2117, 2
  %2121 = fmul fast float %2113, 0x3FD20DD760000000
  %2122 = fmul fast float %2120, %2111
  %2123 = fmul fast float %2120, %2120
  %2124 = fmul fast float %2123, 0x3FEE471020000000
  %2125 = fadd fast float %2124, 0xBFD42F6020000000
  %2126 = fmul fast float %2125, %2107
  %2127 = fmul fast float %2118, %2110
  %2128 = fmul fast float %2119, %2112
  %2129 = fmul fast float %2120, 0x3FF17B1420000000
  %2130 = fmul fast float %2116, %2106
  %2131 = fmul fast float %2130, %2118
  %2132 = fmul fast float %2131, %2129
  %2133 = fmul fast float %2116, %2108
  %2134 = fmul fast float %2133, %2119
  %2135 = fmul fast float %2134, %2129
  %2136 = fmul fast float %2118, %2118
  %2137 = fmul fast float %2119, %2119
  %2138 = fsub fast float %2136, %2137
  %2139 = fmul fast float %2105, 0x3FE17B1420000000
  %2140 = fmul fast float %2139, %2138
  %2141 = fmul fast float %2109, 0x3FF17B1420000000
  %2142 = fmul fast float %2141, %2119
  %2143 = fmul fast float %2142, %2118
  %2144 = fadd fast float %2140, %2143
  %2145 = fadd fast float %2144, %2126
  %2146 = fmul fast float %2145, %2116
  %2147 = fsub fast float %2128, %2122
  %2148 = fadd fast float %2147, %2127
  %2149 = fmul fast float %2148, 0x3FDF454380000000
  %2150 = fmul fast float %2149, %2115
  %2151 = fsub fast float %2121, %2132
  %2152 = fsub fast float %2151, %2135
  %2153 = fadd fast float %2152, %2146
  %2154 = fadd fast float %2153, %2150
  %2155 = fmul fast float %2104, 0x3FD20DD760000000
  %2156 = fmul fast float %2120, %2102
  %2157 = fmul fast float %2125, %2098
  %2158 = fmul fast float %2118, %2101
  %2159 = fmul fast float %2119, %2103
  %2160 = fmul fast float %2116, %2097
  %2161 = fmul fast float %2160, %2118
  %2162 = fmul fast float %2161, %2129
  %2163 = fmul fast float %2116, %2099
  %2164 = fmul fast float %2163, %2119
  %2165 = fmul fast float %2164, %2129
  %2166 = fmul fast float %2096, 0x3FE17B1420000000
  %2167 = fmul fast float %2166, %2138
  %2168 = fmul fast float %2100, 0x3FF17B1420000000
  %2169 = fmul fast float %2168, %2119
  %2170 = fmul fast float %2169, %2118
  %2171 = fadd fast float %2167, %2170
  %2172 = fadd fast float %2171, %2157
  %2173 = fmul fast float %2172, %2116
  %2174 = fsub fast float %2159, %2156
  %2175 = fadd fast float %2174, %2158
  %2176 = fmul fast float %2175, 0x3FDF454380000000
  %2177 = fmul fast float %2176, %2115
  %2178 = fsub fast float %2155, %2162
  %2179 = fsub fast float %2178, %2165
  %2180 = fadd fast float %2179, %2173
  %2181 = fadd fast float %2180, %2177
  %2182 = fmul fast float %2095, 0x3FD20DD760000000
  %2183 = fmul fast float %2120, %2093
  %2184 = fmul fast float %2125, %2089
  %2185 = fmul fast float %2118, %2092
  %2186 = fmul fast float %2119, %2094
  %2187 = fmul fast float %2116, %2088
  %2188 = fmul fast float %2187, %2118
  %2189 = fmul fast float %2188, %2129
  %2190 = fmul fast float %2116, %2090
  %2191 = fmul fast float %2190, %2119
  %2192 = fmul fast float %2191, %2129
  %2193 = fmul fast float %2087, 0x3FE17B1420000000
  %2194 = fmul fast float %2193, %2138
  %2195 = fmul fast float %2091, 0x3FF17B1420000000
  %2196 = fmul fast float %2195, %2119
  %2197 = fmul fast float %2196, %2118
  %2198 = fadd fast float %2194, %2197
  %2199 = fadd fast float %2198, %2184
  %2200 = fmul fast float %2199, %2116
  %2201 = fsub fast float %2186, %2183
  %2202 = fadd fast float %2201, %2185
  %2203 = fmul fast float %2202, 0x3FDF454380000000
  %2204 = fmul fast float %2203, %2115
  %2205 = fsub fast float %2182, %2189
  %2206 = fsub fast float %2205, %2192
  %2207 = fadd fast float %2206, %2200
  %2208 = fadd fast float %2207, %2204
  %2209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2210 = extractvalue %dx.types.CBufRet.f32 %2209, 3
  %2211 = extractvalue %dx.types.CBufRet.f32 %1263, 0
  %2212 = fmul fast float %2211, %2210
  %2213 = fmul fast float %2212, %2154
  %2214 = fmul fast float %2212, %2181
  %2215 = fmul fast float %2212, %2208
  %2216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2217 = extractvalue %dx.types.CBufRet.f32 %2216, 3
  %2218 = fcmp fast une float %2217, 0.000000e+00
  %2219 = extractvalue %dx.types.CBufRet.f32 %2216, 0
  %2220 = extractvalue %dx.types.CBufRet.f32 %2216, 1
  %2221 = extractvalue %dx.types.CBufRet.f32 %2216, 2
  br i1 %2218, label %2222, label %2244, !dx.controlflow.hints !98

; <label>:2222                                    ; preds = %2086
  %2223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %2224 = extractvalue %dx.types.CBufRet.f32 %2223, 0
  %2225 = extractvalue %dx.types.CBufRet.f32 %2223, 1
  %2226 = extractvalue %dx.types.CBufRet.f32 %2223, 2
  %2227 = call float @dx.op.dot3.f32(i32 55, float %2219, float %2220, float %2221, float %119, float %120, float %121)  ; Dot3(ax,ay,az,bx,by,bz)
  %2228 = fcmp fast ogt float %1273, 0.000000e+00
  %2229 = select i1 %2228, float 1.000000e+00, float -1.000000e+00
  %2230 = fmul fast float %2229, 5.000000e-01
  %2231 = fmul fast float %2230, %2227
  %2232 = fmul fast float %2229, %1273
  %2233 = fadd fast float %2231, 4.921875e-01
  %2234 = fadd fast float %2232, -3.125000e-02
  %2235 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %2233, float 0x3FB25F3060000000, float %2234, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2236 = extractvalue %dx.types.ResRet.f32 %2235, 0
  %2237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %2238 = extractvalue %dx.types.CBufRet.f32 %2237, 0
  %2239 = fmul fast float %2236, 0x400921FB60000000
  %2240 = fmul fast float %2239, %2238
  %2241 = fmul fast float %2240, %2224
  %2242 = fmul fast float %2240, %2225
  %2243 = fmul fast float %2240, %2226
  br label %2244

; <label>:2244                                    ; preds = %2222, %2086
  %2245 = phi float [ %2241, %2222 ], [ 0.000000e+00, %2086 ]
  %2246 = phi float [ %2242, %2222 ], [ 0.000000e+00, %2086 ]
  %2247 = phi float [ %2243, %2222 ], [ 0.000000e+00, %2086 ]
  %2248 = fdiv fast float 1.000000e+00, %2219
  %2249 = fdiv fast float 1.000000e+00, %2220
  %2250 = fdiv fast float 1.000000e+00, %2221
  %2251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %2252 = extractvalue %dx.types.CBufRet.f32 %2251, 0
  %2253 = fmul fast float %2252, %2219
  %2254 = fmul fast float %2252, %2220
  %2255 = fmul fast float %2252, %2221
  %2256 = fadd fast float %2253, %354
  %2257 = fsub fast float -0.000000e+00, %2256
  %2258 = fadd fast float %2254, %355
  %2259 = fsub fast float -0.000000e+00, %2258
  %2260 = fadd fast float %2255, %356
  br i1 %370, label %2332, label %2261, !dx.controlflow.hints !54

; <label>:2261                                    ; preds = %2244
  %2262 = extractvalue %dx.types.CBufRet.f32 %2251, 1
  %2263 = fcmp fast ogt float %2262, %2252
  br i1 %2263, label %2264, label %2266, !dx.controlflow.hints !55

; <label>:2264                                    ; preds = %2261
  %2265 = fsub fast float %2262, %2252
  br label %2323

; <label>:2266                                    ; preds = %2261
  %2267 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %2268 = extractvalue %dx.types.CBufRet.i32 %2267, 3
  %2269 = icmp eq i32 %2268, 0
  %2270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %2271 = extractvalue %dx.types.CBufRet.f32 %2270, 2
  %2272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %2273 = extractvalue %dx.types.CBufRet.f32 %2272, 2
  %2274 = fsub fast float %2271, %2260
  %2275 = fadd fast float %2274, %2273
  %2276 = fsub fast float 0xC7EFFFFFE0000000, %2260
  br i1 %2269, label %2286, label %2277, !dx.controlflow.hints !45

; <label>:2277                                    ; preds = %2266
  %2278 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2257, float %2259, float %2275)  ; Dot3(ax,ay,az,bx,by,bz)
  %2279 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2219, float %2220, float %2221)  ; Dot3(ax,ay,az,bx,by,bz)
  %2280 = fdiv fast float 1.000000e+00, %2279
  %2281 = fmul fast float %2280, %2278
  %2282 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2257, float %2259, float %2276)  ; Dot3(ax,ay,az,bx,by,bz)
  %2283 = fmul fast float %2280, %2282
  %2284 = call float @dx.op.binary.f32(i32 36, float %2281, float %2283)  ; FMin(a,b)
  %2285 = call float @dx.op.binary.f32(i32 35, float %2281, float %2283)  ; FMax(a,b)
  br label %2316

; <label>:2286                                    ; preds = %2266
  %2287 = extractvalue %dx.types.CBufRet.f32 %2270, 0
  %2288 = extractvalue %dx.types.CBufRet.f32 %2270, 1
  %2289 = extractvalue %dx.types.CBufRet.f32 %2272, 0
  %2290 = extractvalue %dx.types.CBufRet.f32 %2272, 1
  %2291 = fsub fast float %2287, %2256
  %2292 = fmul fast float %2248, %2291
  %2293 = fadd fast float %2291, %2289
  %2294 = fmul fast float %2293, %2248
  %2295 = call float @dx.op.binary.f32(i32 36, float %2292, float %2294)  ; FMin(a,b)
  %2296 = call float @dx.op.binary.f32(i32 35, float %2292, float %2294)  ; FMax(a,b)
  %2297 = fsub fast float %2288, %2258
  %2298 = fmul fast float %2249, %2297
  %2299 = fadd fast float %2297, %2290
  %2300 = fmul fast float %2299, %2249
  %2301 = call float @dx.op.binary.f32(i32 36, float %2298, float %2300)  ; FMin(a,b)
  %2302 = call float @dx.op.binary.f32(i32 35, float %2295, float %2301)  ; FMax(a,b)
  %2303 = call float @dx.op.binary.f32(i32 35, float %2298, float %2300)  ; FMax(a,b)
  %2304 = call float @dx.op.binary.f32(i32 36, float %2296, float %2303)  ; FMin(a,b)
  %2305 = fmul fast float %2250, %2276
  %2306 = fmul fast float %2250, %2275
  %2307 = call float @dx.op.binary.f32(i32 36, float %2305, float %2306)  ; FMin(a,b)
  %2308 = call float @dx.op.binary.f32(i32 35, float %2302, float %2307)  ; FMax(a,b)
  %2309 = call float @dx.op.binary.f32(i32 35, float %2305, float %2306)  ; FMax(a,b)
  %2310 = call float @dx.op.binary.f32(i32 36, float %2304, float %2309)  ; FMin(a,b)
  %2311 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2308)  ; FMax(a,b)
  %2312 = fcmp fast ult float %2310, %2311
  br i1 %2312, label %2316, label %2313, !dx.controlflow.hints !46

; <label>:2313                                    ; preds = %2286
  %2314 = call float @dx.op.binary.f32(i32 36, float %2308, float %2310)  ; FMin(a,b)
  %2315 = call float @dx.op.binary.f32(i32 35, float %2308, float %2310)  ; FMax(a,b)
  br label %2316

; <label>:2316                                    ; preds = %2313, %2286, %2277
  %2317 = phi float [ %2284, %2277 ], [ %2314, %2313 ], [ 0.000000e+00, %2286 ]
  %2318 = phi float [ %2285, %2277 ], [ %2315, %2313 ], [ 0.000000e+00, %2286 ]
  %2319 = fcmp fast ogt float %2317, 0.000000e+00
  br i1 %2319, label %2323, label %2320, !dx.controlflow.hints !56

; <label>:2320                                    ; preds = %2316
  %2321 = fcmp fast ugt float %2318, 0.000000e+00
  br i1 %2321, label %2322, label %2323, !dx.controlflow.hints !57

; <label>:2322                                    ; preds = %2320
  br label %2323

; <label>:2323                                    ; preds = %2322, %2320, %2316, %2264
  %2324 = phi float [ %2265, %2264 ], [ 0.000000e+00, %2322 ], [ 0x47EFFFFFE0000000, %2320 ], [ %2317, %2316 ]
  %2325 = phi i32 [ %208, %2264 ], [ %208, %2322 ], [ 0, %2320 ], [ %208, %2316 ]
  %2326 = icmp ne i32 %2325, 0
  %2327 = zext i1 %2326 to i32
  %2328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %2329 = extractvalue %dx.types.CBufRet.f32 %2328, 2
  %2330 = call float @dx.op.binary.f32(i32 35, float %2324, float %2329)  ; FMax(a,b)
  %2331 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %2330)  ; FMin(a,b)
  br label %2332

; <label>:2332                                    ; preds = %2323, %2244
  %2333 = phi float [ %2331, %2323 ], [ 0x47EFFFFFE0000000, %2244 ]
  %2334 = phi i32 [ %2327, %2323 ], [ 0, %2244 ]
  %2335 = fsub fast float %2256, %541
  %2336 = fsub fast float %2258, %542
  %2337 = fmul fast float %2335, %546
  %2338 = fmul fast float %2336, %547
  %2339 = call float @dx.op.binary.f32(i32 36, float %2337, float %2338)  ; FMin(a,b)
  %2340 = fcmp fast olt float %2339, 0.000000e+00
  %2341 = call float @dx.op.binary.f32(i32 35, float %2337, float %2338)  ; FMax(a,b)
  %2342 = fcmp fast ogt float %2341, 1.000000e+00
  %2343 = or i1 %2340, %2342
  %2344 = fcmp fast olt float %2260, %555
  %2345 = or i1 %2343, %2344
  %2346 = fcmp fast ogt float %2260, %562
  %2347 = or i1 %2345, %2346
  %2348 = extractvalue %dx.types.CBufRet.f32 %545, 0
  br i1 %2347, label %2349, label %2377, !dx.controlflow.hints !63

; <label>:2349                                    ; preds = %2332
  %2350 = extractvalue %dx.types.CBufRet.f32 %545, 1
  %2351 = fsub fast float %541, %2256
  %2352 = fmul fast float %2351, %2248
  %2353 = fadd fast float %2351, %2348
  %2354 = fmul fast float %2353, %2248
  %2355 = call float @dx.op.binary.f32(i32 36, float %2352, float %2354)  ; FMin(a,b)
  %2356 = call float @dx.op.binary.f32(i32 35, float %2352, float %2354)  ; FMax(a,b)
  %2357 = fsub fast float %542, %2258
  %2358 = fmul fast float %2357, %2249
  %2359 = fadd fast float %2357, %2350
  %2360 = fmul fast float %2359, %2249
  %2361 = call float @dx.op.binary.f32(i32 36, float %2358, float %2360)  ; FMin(a,b)
  %2362 = call float @dx.op.binary.f32(i32 35, float %2355, float %2361)  ; FMax(a,b)
  %2363 = call float @dx.op.binary.f32(i32 35, float %2358, float %2360)  ; FMax(a,b)
  %2364 = call float @dx.op.binary.f32(i32 36, float %2356, float %2363)  ; FMin(a,b)
  %2365 = fsub fast float %555, %2260
  %2366 = fmul fast float %2365, %2250
  %2367 = fsub fast float %559, %2260
  %2368 = fadd fast float %2367, %561
  %2369 = fmul fast float %2368, %2250
  %2370 = call float @dx.op.binary.f32(i32 36, float %2366, float %2369)  ; FMin(a,b)
  %2371 = call float @dx.op.binary.f32(i32 35, float %2362, float %2370)  ; FMax(a,b)
  %2372 = call float @dx.op.binary.f32(i32 35, float %2366, float %2369)  ; FMax(a,b)
  %2373 = call float @dx.op.binary.f32(i32 36, float %2364, float %2372)  ; FMin(a,b)
  %2374 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2371)  ; FMax(a,b)
  %2375 = fcmp fast oge float %2373, %2374
  %2376 = select i1 %2375, float %2371, float 1.000000e+07
  br label %2392

; <label>:2377                                    ; preds = %2332
  %2378 = fsub fast float 1.000000e+00, %2338
  %2379 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %26, float %2337, float %2378, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2380 = extractvalue %dx.types.ResRet.f32 %2379, 0
  %2381 = extractvalue %dx.types.ResRet.f32 %2379, 1
  %2382 = extractvalue %dx.types.ResRet.f32 %2379, 2
  %2383 = extractvalue %dx.types.ResRet.f32 %2379, 3
  %2384 = fmul fast float %2348, 9.765625e-04
  %2385 = fcmp fast oeq float %2380, 0.000000e+00
  %2386 = fcmp ule float %2260, %2382
  %2387 = fcmp uge float %2260, %2381
  %2388 = or i1 %2387, %2386
  %2389 = or i1 %2385, %2388
  %2390 = zext i1 %2389 to i32
  %2391 = xor i32 %2390, 1
  br label %2392

; <label>:2392                                    ; preds = %2377, %2349
  %2393 = phi float [ %2376, %2349 ], [ %2384, %2377 ]
  %2394 = phi float [ %341, %2349 ], [ %2380, %2377 ]
  %2395 = phi float [ %342, %2349 ], [ %2381, %2377 ]
  %2396 = phi float [ %343, %2349 ], [ %2382, %2377 ]
  %2397 = phi float [ %344, %2349 ], [ %2383, %2377 ]
  %2398 = phi i32 [ 0, %2349 ], [ %2391, %2377 ]
  %2399 = icmp eq i32 %2398, 0
  %2400 = call float @dx.op.binary.f32(i32 35, float %2393, float %650)  ; FMax(a,b)
  %2401 = call float @dx.op.binary.f32(i32 36, float %2333, float %2400)  ; FMin(a,b)
  br i1 %653, label %2414, label %2402, !dx.controlflow.hints !67

; <label>:2402                                    ; preds = %2392
  %2403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2404 = extractvalue %dx.types.CBufRet.f32 %2403, 3
  %2405 = extractvalue %dx.types.CBufRet.f32 %2403, 2
  %2406 = fmul fast float %2404, %2252
  %2407 = fdiv fast float %2406, %2252
  %2408 = fadd fast float %2407, 1.000000e+00
  %2409 = call float @dx.op.unary.f32(i32 23, float %2408)  ; Log(value)
  %2410 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %2409)  ; FMin(a,b)
  %2411 = fmul fast float %2405, %2252
  %2412 = fmul fast float %2411, %2410
  %2413 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %2412)  ; FMin(a,b)
  br label %2414

; <label>:2414                                    ; preds = %2402, %2392
  %2415 = phi float [ %2413, %2402 ], [ 0x47EFFFFFE0000000, %2392 ]
  br i1 %668, label %2471, label %2416, !dx.controlflow.hints !68

; <label>:2416                                    ; preds = %2414
  %2417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %2418 = extractvalue %dx.types.CBufRet.f32 %2417, 0
  %2419 = extractvalue %dx.types.CBufRet.f32 %2417, 1
  %2420 = extractvalue %dx.types.CBufRet.f32 %2417, 2
  %2421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %2422 = extractvalue %dx.types.CBufRet.f32 %2421, 0
  %2423 = extractvalue %dx.types.CBufRet.f32 %2421, 1
  %2424 = extractvalue %dx.types.CBufRet.f32 %2421, 2
  %2425 = fsub fast float %2256, %2422
  %2426 = fsub fast float %2258, %2423
  %2427 = fsub fast float %2260, %2424
  %2428 = fmul fast float %2425, %2418
  %2429 = fmul fast float %2426, %2419
  %2430 = fmul fast float %2427, %2420
  %2431 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %2432 = extractvalue %dx.types.CBufRet.i32 %2431, 3
  %2433 = icmp eq i32 %2432, 0
  br i1 %2433, label %2437, label %2434, !dx.controlflow.hints !69

; <label>:2434                                    ; preds = %2416
  %2435 = call float @dx.op.unary.f32(i32 22, float %2428)  ; Frc(value)
  %2436 = call float @dx.op.unary.f32(i32 22, float %2429)  ; Frc(value)
  br label %2437

; <label>:2437                                    ; preds = %2434, %2416
  %2438 = phi float [ %2435, %2434 ], [ %2428, %2416 ]
  %2439 = phi float [ %2436, %2434 ], [ %2429, %2416 ]
  %2440 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %24, float %2438, float %2439, float %2430, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2441 = extractvalue %dx.types.ResRet.f32 %2440, 0
  %2442 = fmul fast float %2441, 2.000000e+00
  %2443 = fadd fast float %2442, -1.000000e+00
  %2444 = extractvalue %dx.types.CBufRet.f32 %2417, 3
  %2445 = fmul fast float %2443, %2444
  %2446 = fcmp fast olt float %2445, 0.000000e+00
  %2447 = fcmp fast oge float %2430, 0.000000e+00
  %2448 = fcmp fast ole float %2430, 1.000000e+00
  br i1 %2433, label %2451, label %2449, !dx.controlflow.hints !70

; <label>:2449                                    ; preds = %2437
  %2450 = and i1 %2447, %2448
  br label %2461

; <label>:2451                                    ; preds = %2437
  %2452 = fcmp fast oge float %2428, 0.000000e+00
  %2453 = fcmp fast oge float %2429, 0.000000e+00
  %2454 = and i1 %2452, %2453
  %2455 = and i1 %2447, %2454
  %2456 = fcmp fast ole float %2428, 1.000000e+00
  %2457 = fcmp fast ole float %2429, 1.000000e+00
  %2458 = and i1 %2456, %2457
  %2459 = and i1 %2448, %2458
  %2460 = and i1 %2455, %2459
  br label %2461

; <label>:2461                                    ; preds = %2451, %2449
  %2462 = phi i1 [ %2450, %2449 ], [ %2460, %2451 ]
  %2463 = and i1 %2446, %2462
  %2464 = call float @dx.op.unary.f32(i32 6, float %2445)  ; FAbs(value)
  %2465 = extractvalue %dx.types.CBufRet.f32 %649, 1
  %2466 = extractvalue %dx.types.CBufRet.f32 %649, 0
  %2467 = call float @dx.op.binary.f32(i32 35, float %2464, float %2466)  ; FMax(a,b)
  %2468 = select i1 %2463, float %2465, float %2467
  %2469 = zext i1 %2463 to i32
  %2470 = call float @dx.op.binary.f32(i32 36, float %2401, float %2468)  ; FMin(a,b)
  br label %2471

; <label>:2471                                    ; preds = %2461, %2414
  %2472 = phi float [ %2470, %2461 ], [ %2401, %2414 ]
  %2473 = phi i32 [ %2469, %2461 ], [ 0, %2414 ]
  %2474 = icmp eq i32 %2334, 0
  br i1 %2474, label %2548, label %2475, !dx.controlflow.hints !71

; <label>:2475                                    ; preds = %2471
  %2476 = fmul fast float %727, %2252
  %2477 = call float @dx.op.unary.f32(i32 23, float %2476)  ; Log(value)
  %2478 = fmul fast float %2477, 0x3FE62E4300000000
  %2479 = call float @dx.op.binary.f32(i32 35, float %2478, float 1.000000e+00)  ; FMax(a,b)
  %2480 = fmul fast float %2479, %2415
  %2481 = call float @dx.op.binary.f32(i32 36, float %2480, float %2472)  ; FMin(a,b)
  %2482 = call float @dx.op.binary.f32(i32 35, float %2481, float 0.000000e+00)  ; FMax(a,b)
  %2483 = fcmp fast ogt float %2482, 0x3F1A36E2E0000000
  %2484 = fadd fast float %2253, %2256
  %2485 = fadd fast float %2254, %2258
  %2486 = select i1 %2483, float %2484, float %2256
  %2487 = select i1 %2483, float %2485, float %2258
  %2488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %2489 = extractvalue %dx.types.CBufRet.f32 %2488, 0
  %2490 = extractvalue %dx.types.CBufRet.f32 %2488, 1
  %2491 = fsub fast float %2486, %2489
  %2492 = fsub fast float %2487, %2490
  %2493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %2494 = extractvalue %dx.types.CBufRet.f32 %2493, 0
  %2495 = extractvalue %dx.types.CBufRet.f32 %2493, 1
  %2496 = fmul fast float %2491, %2494
  %2497 = fmul fast float %2492, %2495
  %2498 = fsub fast float 1.000000e+00, %2497
  %2499 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %2500 = extractvalue %dx.types.CBufRet.i32 %2499, 3
  %2501 = icmp eq i32 %2500, 0
  br i1 %2501, label %2508, label %2502, !dx.controlflow.hints !58

; <label>:2502                                    ; preds = %2475
  %2503 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %25, float %2496, float %2498, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2504 = extractvalue %dx.types.ResRet.f32 %2503, 0
  %2505 = extractvalue %dx.types.ResRet.f32 %2503, 1
  %2506 = extractvalue %dx.types.ResRet.f32 %2503, 2
  %2507 = extractvalue %dx.types.ResRet.f32 %2503, 3
  br label %2514

; <label>:2508                                    ; preds = %2475
  %2509 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %26, float %2496, float %2498, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2510 = extractvalue %dx.types.ResRet.f32 %2509, 0
  %2511 = extractvalue %dx.types.ResRet.f32 %2509, 1
  %2512 = extractvalue %dx.types.ResRet.f32 %2509, 2
  %2513 = extractvalue %dx.types.ResRet.f32 %2509, 3
  br label %2514

; <label>:2514                                    ; preds = %2508, %2502
  %2515 = phi float [ %2504, %2502 ], [ %2510, %2508 ]
  %2516 = phi float [ %2505, %2502 ], [ %2511, %2508 ]
  %2517 = phi float [ %2506, %2502 ], [ %2512, %2508 ]
  %2518 = phi float [ %2507, %2502 ], [ %2513, %2508 ]
  %2519 = extractvalue %dx.types.CBufRet.f32 %2493, 3
  %2520 = fmul fast float %2519, %2516
  %2521 = fmul fast float %2520, %2515
  %2522 = fsub fast float %2520, %2521
  %2523 = fcmp fast ole float %2522, 0.000000e+00
  %2524 = extractvalue %dx.types.CBufRet.f32 %2488, 2
  %2525 = fadd fast float %2521, %2524
  %2526 = fmul fast float %2519, %2517
  %2527 = fadd fast float %2526, %2524
  %2528 = fdiv fast float 1.000000e+00, %2522
  %2529 = select i1 %2523, float 1.000000e+06, float %2528
  %2530 = fsub fast float %2260, %2525
  %2531 = fmul fast float %2529, %2530
  %2532 = call float @dx.op.unary.f32(i32 7, float %2531)  ; Saturate(value)
  %2533 = extractvalue %dx.types.CBufRet.f32 %2493, 2
  %2534 = fmul fast float %2533, %2532
  %2535 = fsub fast float %2533, %2534
  %2536 = fcmp fast olt float %2260, %2527
  %2537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %2538 = extractvalue %dx.types.CBufRet.f32 %2537, 3
  %2539 = fmul fast float %2538, 3.000000e+00
  %2540 = select i1 %2536, float %2539, float 3.000000e+00
  %2541 = fmul fast float %2535, %2540
  %2542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %2543 = extractvalue %dx.types.CBufRet.f32 %2542, 2
  %2544 = fmul fast float %2252, 0x3FD5555560000000
  %2545 = fmul fast float %2544, %2518
  %2546 = fmul fast float %2545, %2543
  %2547 = fmul fast float %2546, %2541
  br label %2548

; <label>:2548                                    ; preds = %2514, %2471
  %2549 = phi float [ %2547, %2514 ], [ 0.000000e+00, %2471 ]
  br i1 %653, label %2597, label %2550, !dx.controlflow.hints !73

; <label>:2550                                    ; preds = %2548
  %2551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %2552 = extractvalue %dx.types.CBufRet.f32 %2551, 0
  %2553 = fsub fast float %2552, %2260
  %2554 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2257, float %2259, float %2553)  ; Dot3(ax,ay,az,bx,by,bz)
  %2555 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2219, float %2220, float %2221)  ; Dot3(ax,ay,az,bx,by,bz)
  %2556 = fdiv fast float 1.000000e+00, %2555
  %2557 = fmul fast float %2556, %2554
  %2558 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2557)  ; FMax(a,b)
  %2559 = fcmp fast olt float %2221, 0.000000e+00
  %2560 = call float @dx.op.binary.f32(i32 36, float %2252, float %2558)  ; FMin(a,b)
  br i1 %2559, label %2562, label %2561, !dx.controlflow.hints !74

; <label>:2561                                    ; preds = %2550
  br label %2562

; <label>:2562                                    ; preds = %2561, %2550
  %2563 = phi float [ 0.000000e+00, %2561 ], [ %2560, %2550 ]
  %2564 = phi float [ %2560, %2561 ], [ %2252, %2550 ]
  %2565 = phi float [ %2560, %2561 ], [ 0.000000e+00, %2550 ]
  %2566 = phi float [ %2252, %2561 ], [ %2560, %2550 ]
  %2567 = fsub fast float %2564, %2563
  %2568 = extractvalue %dx.types.CBufRet.f32 %2551, 1
  %2569 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %2568)  ; FMin(a,b)
  %2570 = fsub fast float %2260, %2552
  %2571 = fmul fast float %2569, 0x3FF7154760000000
  %2572 = fmul fast float %2571, %2570
  %2573 = call float @dx.op.unary.f32(i32 21, float %2572)  ; Exp(value)
  %2574 = fmul fast float %2221, 0x3FF7154760000000
  %2575 = fmul fast float %2574, %2566
  %2576 = fmul fast float %2575, %2569
  %2577 = call float @dx.op.unary.f32(i32 21, float %2576)  ; Exp(value)
  %2578 = fmul fast float %2574, %2565
  %2579 = fmul fast float %2578, %2569
  %2580 = call float @dx.op.unary.f32(i32 21, float %2579)  ; Exp(value)
  %2581 = fsub fast float %2577, %2580
  %2582 = fmul fast float %2581, %2573
  %2583 = fmul fast float %2569, %2221
  %2584 = fdiv fast float %2582, %2583
  %2585 = fadd fast float %2567, %2584
  %2586 = call float @dx.op.unary.f32(i32 6, float %2221)  ; FAbs(value)
  %2587 = fcmp fast olt float %2586, 0x3F0FFB4800000000
  %2588 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2570)  ; FMax(a,b)
  %2589 = fmul fast float %2588, 0x3FF7154760000000
  %2590 = fmul fast float %2589, %2568
  %2591 = call float @dx.op.unary.f32(i32 21, float %2590)  ; Exp(value)
  %2592 = fmul fast float %2591, %2252
  %2593 = select i1 %2587, float %2592, float %2585
  %2594 = extractvalue %dx.types.CBufRet.f32 %2114, 1
  %2595 = fmul fast float %2593, %2594
  %2596 = fadd fast float %2595, %2549
  br label %2597

; <label>:2597                                    ; preds = %2562, %2548
  %2598 = phi float [ %2596, %2562 ], [ %2549, %2548 ]
  %2599 = icmp eq i32 %2473, 0
  br i1 %2599, label %2780, label %2600, !dx.controlflow.hints !75

; <label>:2600                                    ; preds = %2597
  %2601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %2602 = extractvalue %dx.types.CBufRet.f32 %2601, 3
  %2603 = fmul fast float %2602, %2252
  %2604 = fcmp fast oeq float %2603, 0.000000e+00
  br i1 %2604, label %2619, label %2605, !dx.controlflow.hints !76

; <label>:2605                                    ; preds = %2600
  %2606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %2607 = extractvalue %dx.types.CBufRet.f32 %2606, 3
  %2608 = fmul fast float %2607, %2603
  %2609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %2610 = extractvalue %dx.types.CBufRet.f32 %2609, 0
  %2611 = extractvalue %dx.types.CBufRet.f32 %2609, 1
  %2612 = extractvalue %dx.types.CBufRet.f32 %2609, 2
  %2613 = fmul fast float %2610, %2608
  %2614 = fmul fast float %2611, %2608
  %2615 = fmul fast float %2612, %2608
  %2616 = call float @dx.op.unary.f32(i32 23, float %2613)  ; Log(value)
  %2617 = call float @dx.op.unary.f32(i32 23, float %2614)  ; Log(value)
  %2618 = call float @dx.op.unary.f32(i32 23, float %2615)  ; Log(value)
  br label %2619

; <label>:2619                                    ; preds = %2605, %2600
  %2620 = phi float [ %2616, %2605 ], [ 0.000000e+00, %2600 ]
  %2621 = phi float [ %2617, %2605 ], [ 0.000000e+00, %2600 ]
  %2622 = phi float [ %2618, %2605 ], [ 0.000000e+00, %2600 ]
  %2623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %2624 = extractvalue %dx.types.CBufRet.f32 %2623, 0
  %2625 = extractvalue %dx.types.CBufRet.f32 %2623, 1
  %2626 = extractvalue %dx.types.CBufRet.f32 %2623, 2
  %2627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %2628 = extractvalue %dx.types.CBufRet.f32 %2627, 0
  %2629 = extractvalue %dx.types.CBufRet.f32 %2627, 1
  %2630 = extractvalue %dx.types.CBufRet.f32 %2627, 2
  %2631 = fsub fast float %2256, %2628
  %2632 = fsub fast float %2258, %2629
  %2633 = fsub fast float %2260, %2630
  %2634 = fmul fast float %2631, %2624
  %2635 = fmul fast float %2632, %2625
  %2636 = fmul fast float %2633, %2626
  %2637 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %2638 = extractvalue %dx.types.CBufRet.i32 %2637, 0
  %2639 = extractvalue %dx.types.CBufRet.i32 %2637, 1
  %2640 = uitofp i32 %2638 to float
  %2641 = uitofp i32 %2639 to float
  %2642 = fmul fast float %2634, %2640
  %2643 = fmul fast float %2635, %2641
  %2644 = fadd fast float %2642, 5.000000e-01
  %2645 = fadd fast float %2643, 5.000000e-01
  %2646 = call float @dx.op.unary.f32(i32 22, float %2644)  ; Frc(value)
  %2647 = call float @dx.op.unary.f32(i32 22, float %2645)  ; Frc(value)
  %2648 = call float @dx.op.unary.f32(i32 27, float %2644)  ; Round_ni(value)
  %2649 = call float @dx.op.unary.f32(i32 27, float %2645)  ; Round_ni(value)
  %2650 = fadd fast float %2648, 1.000000e+00
  %2651 = fadd fast float %2649, 1.000000e+00
  %2652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %2653 = extractvalue %dx.types.CBufRet.f32 %2652, 0
  %2654 = extractvalue %dx.types.CBufRet.f32 %2652, 1
  %2655 = fmul fast float %2653, %2650
  %2656 = fmul fast float %2654, %2651
  %2657 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %25, float %2655, float %2656, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2658 = extractvalue %dx.types.ResRet.f32 %2657, 0
  %2659 = extractvalue %dx.types.ResRet.f32 %2657, 1
  %2660 = extractvalue %dx.types.ResRet.f32 %2657, 2
  %2661 = extractvalue %dx.types.ResRet.f32 %2657, 3
  %2662 = extractvalue %dx.types.CBufRet.i32 %2637, 2
  %2663 = extractvalue %dx.types.CBufRet.f32 %2652, 2
  %2664 = uitofp i32 %2662 to float
  %2665 = fadd fast float %2664, -1.000000e+00
  %2666 = fmul fast float %2665, %2658
  %2667 = fmul fast float %2665, %2659
  %2668 = fmul fast float %2665, %2660
  %2669 = fmul fast float %2665, %2661
  %2670 = fadd fast float %2666, 5.000000e-01
  %2671 = fadd fast float %2667, 5.000000e-01
  %2672 = fadd fast float %2668, 5.000000e-01
  %2673 = fadd fast float %2669, 5.000000e-01
  %2674 = fptoui float %2670 to i32
  %2675 = fptoui float %2671 to i32
  %2676 = fptoui float %2672 to i32
  %2677 = fptoui float %2673 to i32
  %2678 = uitofp i32 %2674 to float
  %2679 = uitofp i32 %2675 to float
  %2680 = uitofp i32 %2676 to float
  %2681 = uitofp i32 %2677 to float
  %2682 = fadd fast float %2678, 5.000000e-01
  %2683 = fadd fast float %2679, 5.000000e-01
  %2684 = fadd fast float %2680, 5.000000e-01
  %2685 = fadd fast float %2681, 5.000000e-01
  %2686 = fmul fast float %2682, %2663
  %2687 = fmul fast float %2683, %2663
  %2688 = fmul fast float %2684, %2663
  %2689 = fmul fast float %2685, %2663
  %2690 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %26, float %2686, float %2636, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2691 = extractvalue %dx.types.ResRet.f32 %2690, 0
  %2692 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %26, float %2687, float %2636, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2693 = extractvalue %dx.types.ResRet.f32 %2692, 0
  %2694 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %26, float %2688, float %2636, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2695 = extractvalue %dx.types.ResRet.f32 %2694, 0
  %2696 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %26, float %2689, float %2636, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2697 = extractvalue %dx.types.ResRet.f32 %2696, 0
  %2698 = fsub fast float %2695, %2697
  %2699 = fmul fast float %2698, %2646
  %2700 = fadd fast float %2699, %2697
  %2701 = fsub fast float %2693, %2691
  %2702 = fmul fast float %2701, %2646
  %2703 = fadd fast float %2702, %2691
  %2704 = fsub fast float %2703, %2700
  %2705 = fmul fast float %2704, %2647
  %2706 = fadd fast float %2705, %2700
  %2707 = fcmp fast ogt float %2706, 0.000000e+00
  br i1 %2707, label %2708, label %2776, !dx.controlflow.hints !77

; <label>:2708                                    ; preds = %2619
  %2709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %2710 = extractvalue %dx.types.CBufRet.f32 %2709, 0
  %2711 = extractvalue %dx.types.CBufRet.f32 %2709, 1
  %2712 = extractvalue %dx.types.CBufRet.f32 %2709, 2
  %2713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %2714 = extractvalue %dx.types.CBufRet.f32 %2713, 0
  %2715 = extractvalue %dx.types.CBufRet.f32 %2713, 1
  %2716 = extractvalue %dx.types.CBufRet.f32 %2713, 2
  %2717 = fmul fast float %2632, %2624
  %2718 = fmul fast float %2633, %2624
  %2719 = fadd fast float %2634, %2714
  %2720 = fadd fast float %2717, %2715
  %2721 = fadd fast float %2718, %2716
  %2722 = fmul fast float %2719, %2710
  %2723 = fmul fast float %2720, %2710
  %2724 = fmul fast float %2721, %2710
  %2725 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %23, float %2722, float %2723, float %2724, float undef, i32 0, i32 0, i32 0, float %2620)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2726 = extractvalue %dx.types.ResRet.f32 %2725, 0
  %2727 = fmul fast float %2719, %2711
  %2728 = fmul fast float %2720, %2711
  %2729 = fmul fast float %2721, %2711
  %2730 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %23, float %2727, float %2728, float %2729, float undef, i32 0, i32 0, i32 0, float %2621)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2731 = extractvalue %dx.types.ResRet.f32 %2730, 1
  %2732 = fmul fast float %2719, %2712
  %2733 = fmul fast float %2720, %2712
  %2734 = fmul fast float %2721, %2712
  %2735 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %23, float %2732, float %2733, float %2734, float undef, i32 0, i32 0, i32 0, float %2622)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2736 = extractvalue %dx.types.ResRet.f32 %2735, 2
  %2737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %2738 = extractvalue %dx.types.CBufRet.f32 %2737, 1
  %2739 = fmul fast float %2731, %2726
  %2740 = fmul fast float %2739, %2736
  %2741 = call float @dx.op.unary.f32(i32 23, float %2740)  ; Log(value)
  %2742 = fmul fast float %2741, %2738
  %2743 = call float @dx.op.unary.f32(i32 21, float %2742)  ; Exp(value)
  %2744 = extractvalue %dx.types.CBufRet.f32 %2737, 2
  %2745 = fmul fast float %2706, %2706
  %2746 = fmul fast float %2745, %2743
  %2747 = fmul fast float %2746, %2744
  %2748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %2749 = extractvalue %dx.types.CBufRet.f32 %2748, 3
  %2750 = fmul fast float %2749, %2747
  %2751 = bitcast float %2750 to i32
  %2752 = sitofp i32 %2751 to float
  %2753 = fptosi float %2752 to i32
  %2754 = bitcast i32 %2753 to float
  %2755 = fsub fast float 1.000000e+00, %2747
  %2756 = bitcast float %2755 to i32
  %2757 = sitofp i32 %2756 to float
  %2758 = fptosi float %2757 to i32
  %2759 = bitcast i32 %2758 to float
  %2760 = fadd fast float %2754, %2759
  %2761 = bitcast float %2760 to i32
  %2762 = sub nsw i32 2129859010, %2761
  %2763 = bitcast i32 %2762 to float
  %2764 = fmul fast float %2763, %2754
  %2765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2766 = extractvalue %dx.types.CBufRet.f32 %2765, 2
  %2767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %2768 = extractvalue %dx.types.CBufRet.f32 %2767, 0
  %2769 = fmul fast float %2764, %2768
  %2770 = fadd fast float %2769, 1.000000e+00
  %2771 = bitcast float %2770 to i32
  %2772 = sub nsw i32 2129859010, %2771
  %2773 = bitcast i32 %2772 to float
  %2774 = fmul fast float %2764, %2766
  %2775 = fmul fast float %2774, %2773
  br label %2776

; <label>:2776                                    ; preds = %2708, %2619
  %2777 = phi float [ %2775, %2708 ], [ %2706, %2619 ]
  %2778 = fmul fast float %2777, %2252
  %2779 = fadd fast float %2778, %2598
  br label %2780

; <label>:2780                                    ; preds = %2776, %2597
  %2781 = phi float [ %2779, %2776 ], [ %2598, %2597 ]
  br i1 %2399, label %2907, label %2782, !dx.controlflow.hints !78

; <label>:2782                                    ; preds = %2780
  %2783 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %2784 = extractvalue %dx.types.CBufRet.i32 %2783, 0
  %2785 = icmp ne i32 %2784, 0
  %2786 = zext i1 %2785 to i32
  %2787 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %2788 = extractvalue %dx.types.CBufRet.i32 %2787, 0
  %2789 = icmp eq i32 %2788, 0
  br i1 %2789, label %2823, label %2790

; <label>:2790                                    ; preds = %2782
  br label %2791

; <label>:2791                                    ; preds = %2818, %2790
  %2792 = phi i32 [ %2819, %2818 ], [ 0, %2790 ]
  %2793 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2792, i32 0)  ; BufferLoad(srv,index,wot)
  %2794 = extractvalue %dx.types.ResRet.f32 %2793, 0
  %2795 = extractvalue %dx.types.ResRet.f32 %2793, 1
  %2796 = extractvalue %dx.types.ResRet.f32 %2793, 2
  %2797 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2792, i32 16)  ; BufferLoad(srv,index,wot)
  %2798 = extractvalue %dx.types.ResRet.f32 %2797, 0
  %2799 = extractvalue %dx.types.ResRet.f32 %2797, 1
  %2800 = extractvalue %dx.types.ResRet.f32 %2797, 2
  %2801 = fsub fast float %2794, %2798
  %2802 = fsub fast float %2795, %2799
  %2803 = fsub fast float %2796, %2800
  %2804 = fadd fast float %2798, %2794
  %2805 = fadd fast float %2799, %2795
  %2806 = fadd fast float %2800, %2796
  %2807 = fcmp fast olt float %2256, %2801
  %2808 = fcmp fast olt float %2258, %2802
  %2809 = fcmp fast olt float %2260, %2803
  %2810 = or i1 %2807, %2808
  %2811 = or i1 %2809, %2810
  %2812 = fcmp fast ogt float %2256, %2804
  %2813 = fcmp fast ogt float %2258, %2805
  %2814 = fcmp fast ogt float %2260, %2806
  %2815 = or i1 %2812, %2813
  %2816 = or i1 %2814, %2815
  %2817 = or i1 %2811, %2816
  br i1 %2817, label %2818, label %2821, !dx.controlflow.hints !79

; <label>:2818                                    ; preds = %2791
  %2819 = add nuw i32 %2792, 1
  %2820 = icmp ult i32 %2819, %2788
  br i1 %2820, label %2791, label %2821

; <label>:2821                                    ; preds = %2818, %2791
  %2822 = phi i32 [ 255, %2818 ], [ %2792, %2791 ]
  br label %2823

; <label>:2823                                    ; preds = %2821, %2782
  %2824 = phi i32 [ 255, %2782 ], [ %2822, %2821 ]
  %2825 = icmp eq i32 %2824, 255
  br i1 %2825, label %2831, label %2826, !dx.controlflow.hints !80

; <label>:2826                                    ; preds = %2823
  %2827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2824, i32 156)  ; BufferLoad(srv,index,wot)
  %2828 = extractvalue %dx.types.ResRet.i32 %2827, 0
  %2829 = icmp ne i32 %2828, 0
  %2830 = zext i1 %2829 to i32
  br label %2831

; <label>:2831                                    ; preds = %2826, %2823
  %2832 = phi i32 [ %2830, %2826 ], [ %2786, %2823 ]
  %2833 = icmp eq i32 %2832, 0
  br i1 %2833, label %2834, label %2903, !dx.controlflow.hints !81

; <label>:2834                                    ; preds = %2831
  %2835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %2836 = extractvalue %dx.types.CBufRet.f32 %2835, 3
  %2837 = extractvalue %dx.types.CBufRet.f32 %558, 0
  %2838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %2839 = extractvalue %dx.types.CBufRet.f32 %2838, 2
  %2840 = extractvalue %dx.types.CBufRet.f32 %2838, 3
  br i1 %2825, label %2851, label %2841, !dx.controlflow.hints !82

; <label>:2841                                    ; preds = %2834
  %2842 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2824, i32 60)  ; BufferLoad(srv,index,wot)
  %2843 = extractvalue %dx.types.ResRet.f32 %2842, 0
  %2844 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2824, i32 64)  ; BufferLoad(srv,index,wot)
  %2845 = extractvalue %dx.types.ResRet.f32 %2844, 0
  %2846 = extractvalue %dx.types.ResRet.f32 %2844, 1
  %2847 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2824, i32 72)  ; BufferLoad(srv,index,wot)
  %2848 = extractvalue %dx.types.ResRet.f32 %2847, 0
  %2849 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2824, i32 96)  ; BufferLoad(srv,index,wot)
  %2850 = extractvalue %dx.types.ResRet.f32 %2849, 0
  br label %2851

; <label>:2851                                    ; preds = %2841, %2834
  %2852 = phi float [ %2843, %2841 ], [ %561, %2834 ]
  %2853 = phi float [ %2848, %2841 ], [ %559, %2834 ]
  %2854 = phi float [ %2850, %2841 ], [ %2837, %2834 ]
  %2855 = phi float [ %2845, %2841 ], [ %2839, %2834 ]
  %2856 = phi float [ %2846, %2841 ], [ %2840, %2834 ]
  %2857 = call float @dx.op.binary.f32(i32 35, float %2394, float 0.000000e+00)  ; FMax(a,b)
  %2858 = call float @dx.op.binary.f32(i32 36, float %2857, float 1.000000e+00)  ; FMin(a,b)
  %2859 = call float @dx.op.unary.f32(i32 24, float %2858)  ; Sqrt(value)
  %2860 = call float @dx.op.binary.f32(i32 35, float %2397, float 0x3F847AE140000000)  ; FMax(a,b)
  %2861 = fsub fast float %2395, %2260
  %2862 = fsub fast float %2260, %2396
  %2863 = call float @dx.op.binary.f32(i32 36, float %2862, float %2861)  ; FMin(a,b)
  %2864 = fdiv fast float %2863, %2860
  %2865 = call float @dx.op.unary.f32(i32 7, float %2864)  ; Saturate(value)
  %2866 = fsub fast float %2260, %2853
  %2867 = fdiv fast float %2866, %2852
  %2868 = call float @dx.op.unary.f32(i32 7, float %2867)  ; Saturate(value)
  %2869 = fsub fast float 1.000000e+00, %2868
  %2870 = fmul float %2865, %2869
  %2871 = fmul float %2870, %2870
  %2872 = fmul fast float %2859, %2836
  %2873 = fmul fast float %2872, %2871
  %2874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %2875 = extractvalue %dx.types.CBufRet.f32 %2874, 2
  %2876 = extractvalue %dx.types.CBufRet.f32 %2874, 1
  %2877 = fsub fast float %2873, %2876
  %2878 = fsub fast float %2875, %2876
  %2879 = fdiv fast float %2877, %2878
  %2880 = call float @dx.op.unary.f32(i32 7, float %2879)  ; Saturate(value)
  %2881 = fmul fast float %2880, %2854
  %2882 = fcmp fast ogt float %2856, 0.000000e+00
  br i1 %2882, label %2883, label %2903, !dx.controlflow.hints !83

; <label>:2883                                    ; preds = %2851
  %2884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2885 = extractvalue %dx.types.CBufRet.f32 %2884, 0
  %2886 = extractvalue %dx.types.CBufRet.f32 %2884, 1
  %2887 = extractvalue %dx.types.CBufRet.f32 %2884, 2
  %2888 = fsub fast float %2256, %2885
  %2889 = fsub fast float %2258, %2886
  %2890 = fsub fast float %2260, %2887
  %2891 = fmul fast float %2888, %2888
  %2892 = fmul fast float %2889, %2889
  %2893 = fadd fast float %2891, %2892
  %2894 = fmul fast float %2890, %2890
  %2895 = fadd fast float %2893, %2894
  %2896 = call float @dx.op.unary.f32(i32 24, float %2895)  ; Sqrt(value)
  %2897 = fsub fast float %2896, %2855
  %2898 = fsub fast float %2856, %2855
  %2899 = fdiv fast float %2897, %2898
  %2900 = call float @dx.op.unary.f32(i32 7, float %2899)  ; Saturate(value)
  %2901 = fmul fast float %2900, %2900
  %2902 = fmul fast float %2901, %2881
  br label %2903

; <label>:2903                                    ; preds = %2883, %2851, %2831
  %2904 = phi float [ 0.000000e+00, %2831 ], [ %2902, %2883 ], [ %2881, %2851 ]
  %2905 = fmul fast float %2904, %2252
  %2906 = fadd fast float %2905, %2781
  br label %2907

; <label>:2907                                    ; preds = %2903, %2780
  %2908 = phi float [ %2906, %2903 ], [ %2781, %2780 ]
  %2909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %2910 = extractvalue %dx.types.CBufRet.f32 %2909, 3
  %2911 = fmul fast float %2908, 0xBFF7154760000000
  %2912 = fmul fast float %2911, %2910
  %2913 = call float @dx.op.unary.f32(i32 21, float %2912)  ; Exp(value)
  %2914 = call float @dx.op.unary.f32(i32 7, float %2913)  ; Saturate(value)
  %2915 = fmul fast float %2914, %2245
  %2916 = fmul fast float %2914, %2246
  %2917 = fmul fast float %2914, %2247
  %2918 = fadd fast float %2915, %2213
  %2919 = fadd fast float %2916, %2214
  %2920 = fadd fast float %2917, %2215
  %2921 = fsub fast float 1.000000e+00, %1282
  %2922 = fmul fast float %1274, %350
  %2923 = fmul fast float %2922, %2921
  %2924 = fmul fast float %2923, %2918
  %2925 = fmul fast float %1275, %350
  %2926 = fmul fast float %2925, %2921
  %2927 = fmul fast float %2926, %2919
  %2928 = fmul fast float %1276, %350
  %2929 = fmul fast float %2928, %2921
  %2930 = fmul fast float %2929, %2920
  %2931 = fadd fast float %2924, %351
  %2932 = fadd fast float %2927, %352
  %2933 = fadd fast float %2930, %353
  %2934 = fdiv fast float %1259, %737
  %2935 = fadd fast float %737, %357
  %2936 = fmul fast float %357, %357
  %2937 = fmul fast float %2935, %2935
  %2938 = fsub fast float %2936, %2937
  %2939 = fmul fast float %2938, -5.000000e-01
  %2940 = fmul fast float %2939, %2934
  %2941 = fadd fast float %2940, %349
  %2942 = fadd fast float %1259, %360
  %2943 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2944 = extractvalue %dx.types.CBufRet.i32 %2943, 0
  %2945 = icmp eq i32 %2944, 0
  br i1 %2945, label %2972, label %2946, !dx.controlflow.hints !99

; <label>:2946                                    ; preds = %2907
  %2947 = icmp ne i32 %365, 0
  %2948 = zext i1 %2947 to i32
  %2949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %2950 = extractvalue %dx.types.CBufRet.f32 %2949, 2
  %2951 = extractvalue %dx.types.CBufRet.f32 %2949, 0
  %2952 = fsub fast float %2935, %2951
  %2953 = fmul fast float %2952, %2950
  %2954 = call float @dx.op.unary.f32(i32 7, float %2953)  ; Saturate(value)
  %2955 = fadd fast float %2954, -5.000000e-01
  %2956 = fmul fast float %2955, 2.000000e+00
  %2957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %2958 = extractvalue %dx.types.CBufRet.f32 %2957, 2
  %2959 = fcmp fast olt float %2956, %2958
  br i1 %2959, label %2960, label %2972, !dx.controlflow.hints !100

; <label>:2960                                    ; preds = %2946
  %2961 = fmul fast float %2956, %2956
  %2962 = fmul fast float %2921, %350
  %2963 = fmul fast float %2956, %2962
  %2964 = fmul fast float %2961, %2962
  %2965 = fmul fast float %2963, %2961
  %2966 = fmul fast float %2961, %2961
  %2967 = fmul fast float %2966, %2962
  %2968 = fadd fast float %2963, %361
  %2969 = fadd fast float %2964, %362
  %2970 = fadd fast float %2965, %363
  %2971 = fadd fast float %2967, %364
  br label %2972

; <label>:2972                                    ; preds = %2960, %2946, %2907
  %2973 = phi float [ %361, %2907 ], [ %2968, %2960 ], [ %361, %2946 ]
  %2974 = phi float [ %362, %2907 ], [ %2969, %2960 ], [ %362, %2946 ]
  %2975 = phi float [ %363, %2907 ], [ %2970, %2960 ], [ %363, %2946 ]
  %2976 = phi float [ %364, %2907 ], [ %2971, %2960 ], [ %364, %2946 ]
  %2977 = phi i32 [ %365, %2907 ], [ 1, %2960 ], [ %2948, %2946 ]
  %2978 = fmul fast float %1282, %350
  br label %2979

; <label>:2979                                    ; preds = %2972, %1277
  %2980 = phi float [ %1278, %1277 ], [ %2935, %2972 ]
  %2981 = phi float [ %341, %1277 ], [ %2394, %2972 ]
  %2982 = phi float [ %342, %1277 ], [ %2395, %2972 ]
  %2983 = phi float [ %343, %1277 ], [ %2396, %2972 ]
  %2984 = phi float [ %344, %1277 ], [ %2397, %2972 ]
  %2985 = phi float [ %349, %1277 ], [ %2941, %2972 ]
  %2986 = phi float [ %350, %1277 ], [ %2978, %2972 ]
  %2987 = phi float [ %351, %1277 ], [ %2931, %2972 ]
  %2988 = phi float [ %352, %1277 ], [ %2932, %2972 ]
  %2989 = phi float [ %353, %1277 ], [ %2933, %2972 ]
  %2990 = phi float [ %360, %1277 ], [ %2942, %2972 ]
  %2991 = phi float [ %361, %1277 ], [ %2973, %2972 ]
  %2992 = phi float [ %362, %1277 ], [ %2974, %2972 ]
  %2993 = phi float [ %363, %1277 ], [ %2975, %2972 ]
  %2994 = phi float [ %364, %1277 ], [ %2976, %2972 ]
  %2995 = phi i32 [ %365, %1277 ], [ %2977, %2972 ]
  %2996 = fmul fast float %737, %119
  %2997 = fmul fast float %737, %120
  %2998 = fmul fast float %737, %121
  %2999 = fadd fast float %2996, %354
  %3000 = fadd fast float %2997, %355
  %3001 = fadd fast float %2998, %356
  %3002 = fcmp fast olt float %2980, %318
  %3003 = extractvalue %dx.types.CBufRet.f32 %1263, 2
  %3004 = fcmp fast olt float %3003, %2986
  %3005 = and i1 %3002, %3004
  br i1 %3005, label %340, label %3006

; <label>:3006                                    ; preds = %2979
  br label %3007

; <label>:3007                                    ; preds = %3006, %294
  %3008 = phi float [ 0.000000e+00, %294 ], [ %2985, %3006 ]
  %3009 = phi float [ 1.000000e+00, %294 ], [ %2986, %3006 ]
  %3010 = phi float [ 0.000000e+00, %294 ], [ %2987, %3006 ]
  %3011 = phi float [ 0.000000e+00, %294 ], [ %2988, %3006 ]
  %3012 = phi float [ 0.000000e+00, %294 ], [ %2989, %3006 ]
  %3013 = phi float [ 0.000000e+00, %294 ], [ %2990, %3006 ]
  %3014 = phi float [ 0.000000e+00, %294 ], [ %2991, %3006 ]
  %3015 = phi float [ 0.000000e+00, %294 ], [ %2992, %3006 ]
  %3016 = phi float [ 0.000000e+00, %294 ], [ %2993, %3006 ]
  %3017 = phi float [ 0.000000e+00, %294 ], [ %2994, %3006 ]
  %3018 = phi i32 [ 0, %294 ], [ %2995, %3006 ]
  %3019 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %3020 = extractvalue %dx.types.CBufRet.i32 %3019, 0
  %3021 = icmp eq i32 %3020, 0
  br i1 %3021, label %3063, label %3022, !dx.controlflow.hints !101

; <label>:3022                                    ; preds = %3007
  %3023 = icmp eq i32 %3018, 0
  br i1 %3023, label %3062, label %3024, !dx.controlflow.hints !102

; <label>:3024                                    ; preds = %3022
  %3025 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %3026 = extractvalue %dx.types.CBufRet.i32 %3025, 2
  %3027 = icmp eq i32 %3026, 0
  br i1 %3027, label %3034, label %3028, !dx.controlflow.hints !103

; <label>:3028                                    ; preds = %3024
  %3029 = fsub fast float 1.000000e+00, %3009
  %3030 = fdiv fast float %3014, %3029
  %3031 = fdiv fast float %3015, %3029
  %3032 = fdiv fast float %3016, %3029
  %3033 = fdiv fast float %3017, %3029
  br label %3039

; <label>:3034                                    ; preds = %3024
  %3035 = fadd fast float %3014, %3009
  %3036 = fadd fast float %3015, %3009
  %3037 = fadd fast float %3016, %3009
  %3038 = fadd fast float %3017, %3009
  br label %3039

; <label>:3039                                    ; preds = %3034, %3028
  %3040 = phi float [ %3030, %3028 ], [ %3035, %3034 ]
  %3041 = phi float [ %3031, %3028 ], [ %3036, %3034 ]
  %3042 = phi float [ %3032, %3028 ], [ %3037, %3034 ]
  %3043 = phi float [ %3033, %3028 ], [ %3038, %3034 ]
  %3044 = call float @dx.op.binary.f32(i32 35, float %3040, float -1.000000e+00)  ; FMax(a,b)
  %3045 = call float @dx.op.binary.f32(i32 35, float %3041, float -1.000000e+00)  ; FMax(a,b)
  %3046 = call float @dx.op.binary.f32(i32 35, float %3042, float -1.000000e+00)  ; FMax(a,b)
  %3047 = call float @dx.op.binary.f32(i32 35, float %3043, float -1.000000e+00)  ; FMax(a,b)
  %3048 = call float @dx.op.binary.f32(i32 36, float %3044, float 1.000000e+00)  ; FMin(a,b)
  %3049 = call float @dx.op.binary.f32(i32 36, float %3045, float 1.000000e+00)  ; FMin(a,b)
  %3050 = call float @dx.op.binary.f32(i32 36, float %3046, float 1.000000e+00)  ; FMin(a,b)
  %3051 = call float @dx.op.binary.f32(i32 36, float %3047, float 1.000000e+00)  ; FMin(a,b)
  %3052 = fmul fast float %3048, 1.500000e+00
  %3053 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %3050, float %3052)  ; FMad(a,b,c)
  %3054 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %3049, float 0.000000e+00)  ; FMad(a,b,c)
  %3055 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %3051, float %3054)  ; FMad(a,b,c)
  %3056 = fmul fast float %3048, 0x3FEBB67AE0000000
  %3057 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %3050, float %3056)  ; FMad(a,b,c)
  %3058 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %3049, float 0.000000e+00)  ; FMad(a,b,c)
  %3059 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %3051, float %3058)  ; FMad(a,b,c)
  %3060 = fadd fast float %3053, 5.000000e-01
  %3061 = fadd fast float %3057, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %30, i32 %31, i32 0, float %3060, float %3055, float %3061, float %3059, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %3063

; <label>:3062                                    ; preds = %3022
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %30, i32 %31, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %3063

; <label>:3063                                    ; preds = %3062, %3039, %3007
  %3064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %3065 = extractvalue %dx.types.CBufRet.f32 %3064, 2
  %3066 = fsub fast float %3009, %3065
  %3067 = fdiv fast float %3066, %3065
  %3068 = call float @dx.op.unary.f32(i32 7, float %3067)  ; Saturate(value)
  %3069 = fmul fast float %3068, 2.000000e+00
  %3070 = fsub fast float 3.000000e+00, %3069
  %3071 = fmul fast float %3068, %3068
  %3072 = fmul fast float %3071, %3009
  %3073 = fmul fast float %3072, %3070
  %3074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %3075 = extractvalue %dx.types.CBufRet.f32 %3074, 0
  %3076 = extractvalue %dx.types.CBufRet.f32 %3074, 1
  %3077 = extractvalue %dx.types.CBufRet.f32 %3074, 2
  %3078 = call float @dx.op.dot3.f32(i32 55, float %119, float %120, float %121, float %3075, float %3076, float %3077)  ; Dot3(ax,ay,az,bx,by,bz)
  %3079 = fmul fast float %3078, %3008
  %3080 = fcmp fast ogt float %3013, 0.000000e+00
  %3081 = fdiv fast float 1.000000e+00, %3013
  %3082 = fmul fast float %3079, %3081
  %3083 = select i1 %3080, float %3082, float %130
  %3084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %3085 = extractvalue %dx.types.CBufRet.f32 %3084, 0
  %3086 = extractvalue %dx.types.CBufRet.f32 %3084, 1
  %3087 = extractvalue %dx.types.CBufRet.f32 %3084, 2
  %3088 = fmul fast float %3085, %83
  %3089 = fmul fast float %3086, %83
  %3090 = fmul fast float %3087, %83
  %3091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %3092 = extractvalue %dx.types.CBufRet.f32 %3091, 0
  %3093 = extractvalue %dx.types.CBufRet.f32 %3091, 1
  %3094 = extractvalue %dx.types.CBufRet.f32 %3091, 2
  %3095 = fmul fast float %3092, %84
  %3096 = fmul fast float %3093, %84
  %3097 = fmul fast float %3094, %84
  %3098 = fadd fast float %3095, %3088
  %3099 = fadd fast float %3096, %3089
  %3100 = fadd fast float %3097, %3090
  %3101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %3102 = extractvalue %dx.types.CBufRet.f32 %3101, 0
  %3103 = extractvalue %dx.types.CBufRet.f32 %3101, 1
  %3104 = extractvalue %dx.types.CBufRet.f32 %3101, 2
  %3105 = fadd fast float %3098, %3102
  %3106 = fadd fast float %3099, %3103
  %3107 = fadd fast float %3100, %3104
  %3108 = fmul fast float %3105, %3083
  %3109 = fmul fast float %3106, %3083
  %3110 = fmul fast float %3107, %3083
  %3111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %3112 = extractvalue %dx.types.CBufRet.f32 %3111, 0
  %3113 = extractvalue %dx.types.CBufRet.f32 %3111, 1
  %3114 = extractvalue %dx.types.CBufRet.f32 %3111, 2
  %3115 = extractvalue %dx.types.CBufRet.f32 %3111, 3
  %3116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %3117 = extractvalue %dx.types.CBufRet.f32 %3116, 0
  %3118 = extractvalue %dx.types.CBufRet.f32 %3116, 1
  %3119 = extractvalue %dx.types.CBufRet.f32 %3116, 2
  %3120 = extractvalue %dx.types.CBufRet.f32 %3116, 3
  %3121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %3122 = extractvalue %dx.types.CBufRet.f32 %3121, 0
  %3123 = extractvalue %dx.types.CBufRet.f32 %3121, 1
  %3124 = extractvalue %dx.types.CBufRet.f32 %3121, 2
  %3125 = extractvalue %dx.types.CBufRet.f32 %3121, 3
  %3126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %3127 = extractvalue %dx.types.CBufRet.f32 %3126, 0
  %3128 = extractvalue %dx.types.CBufRet.f32 %3126, 1
  %3129 = extractvalue %dx.types.CBufRet.f32 %3126, 2
  %3130 = extractvalue %dx.types.CBufRet.f32 %3126, 3
  %3131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %3132 = extractvalue %dx.types.CBufRet.f32 %3131, 3
  %3133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %3134 = extractvalue %dx.types.CBufRet.f32 %3133, 3
  %3135 = extractvalue %dx.types.CBufRet.f32 %3133, 0
  %3136 = extractvalue %dx.types.CBufRet.f32 %3133, 1
  %3137 = extractvalue %dx.types.CBufRet.f32 %3133, 2
  %3138 = fcmp fast olt float %3137, -5.000000e-01
  %3139 = call float @dx.op.dot3.f32(i32 55, float %3108, float %3109, float %3110, float %3108, float %3109, float %3110)  ; Dot3(ax,ay,az,bx,by,bz)
  %3140 = call float @dx.op.unary.f32(i32 25, float %3139)  ; Rsqrt(value)
  %3141 = fmul fast float %3140, %3139
  %3142 = fmul fast float %3140, %3108
  %3143 = fmul fast float %3140, %3109
  %3144 = fmul fast float %3140, %3110
  %3145 = fadd fast float %3141, %3115
  %3146 = call float @dx.op.dot3.f32(i32 55, float %3142, float %3143, float %3144, float %3112, float %3113, float %3114)  ; Dot3(ax,ay,az,bx,by,bz)
  %3147 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %3148 = extractvalue %dx.types.CBufRet.i32 %3147, 1
  %3149 = and i32 %3148, 1
  %3150 = icmp ne i32 %3149, 0
  %3151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %3152 = extractvalue %dx.types.CBufRet.f32 %3151, 2
  %3153 = fcmp fast ogt float %3152, 0.000000e+00
  %3154 = and i1 %3150, %3153
  br i1 %3154, label %3155, label %3561, !dx.controlflow.hints !104

; <label>:3155                                    ; preds = %3063
  %3156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %3157 = extractvalue %dx.types.CBufRet.f32 %3156, 3
  %3158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %3159 = extractvalue %dx.types.CBufRet.f32 %3158, 2
  %3160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3161 = extractvalue %dx.types.CBufRet.f32 %3160, 2
  %3162 = fsub fast float %3159, %3161
  %3163 = and i32 %3148, 2
  %3164 = extractvalue %dx.types.CBufRet.i32 %3147, 0
  %3165 = call i32 @dx.op.binary.i32(i32 40, i32 %3164, i32 3)  ; UMin(a,b)
  %3166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %3167 = extractvalue %dx.types.CBufRet.f32 %3166, 0
  %3168 = extractvalue %dx.types.CBufRet.f32 %3166, 1
  %3169 = extractvalue %dx.types.CBufRet.f32 %3160, 0
  %3170 = extractvalue %dx.types.CBufRet.f32 %3160, 1
  %3171 = fsub fast float %3167, %3169
  %3172 = fsub fast float %3168, %3170
  %3173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %3174 = extractvalue %dx.types.CBufRet.f32 %3173, 0
  %3175 = fcmp fast ogt float %3174, 0.000000e+00
  %3176 = fsub fast float -0.000000e+00, %3171
  %3177 = fsub fast float -0.000000e+00, %3172
  %3178 = call float @dx.op.dot2.f32(i32 54, float %3142, float %3143, float %3142, float %3143)  ; Dot2(ax,ay,bx,by)
  %3179 = call float @dx.op.dot2.f32(i32 54, float %3142, float %3143, float %3176, float %3177)  ; Dot2(ax,ay,bx,by)
  %3180 = fmul fast float %3179, 2.000000e+00
  %3181 = call float @dx.op.dot2.f32(i32 54, float %3176, float %3177, float %3176, float %3177)  ; Dot2(ax,ay,bx,by)
  %3182 = fmul fast float %3174, %3174
  %3183 = fsub fast float %3181, %3182
  %3184 = fmul fast float %3180, %3180
  %3185 = fmul fast float %3178, 4.000000e+00
  %3186 = fmul fast float %3185, %3183
  %3187 = fsub fast float %3184, %3186
  %3188 = fcmp fast ogt float %3187, 0.000000e+00
  br i1 %3188, label %3189, label %3204, !dx.controlflow.hints !105

; <label>:3189                                    ; preds = %3155
  %3190 = fcmp fast ogt float %3180, 0.000000e+00
  %3191 = call float @dx.op.unary.f32(i32 24, float %3187)  ; Sqrt(value)
  %3192 = fsub fast float -0.000000e+00, %3191
  %3193 = select i1 %3190, float %3191, float %3192
  %3194 = fadd fast float %3193, %3180
  %3195 = fmul float %3194, -5.000000e-01
  %3196 = fdiv fast float %3195, %3178
  %3197 = call float @dx.op.binary.f32(i32 35, float %3196, float 0.000000e+00)  ; FMax(a,b)
  %3198 = call float @dx.op.binary.f32(i32 36, float %3141, float %3197)  ; FMin(a,b)
  %3199 = fdiv fast float %3183, %3195
  %3200 = call float @dx.op.binary.f32(i32 35, float %3199, float 0.000000e+00)  ; FMax(a,b)
  %3201 = call float @dx.op.binary.f32(i32 36, float %3141, float %3200)  ; FMin(a,b)
  %3202 = call float @dx.op.binary.f32(i32 36, float %3198, float %3201)  ; FMin(a,b)
  %3203 = call float @dx.op.binary.f32(i32 35, float %3198, float %3201)  ; FMax(a,b)
  br label %3204

; <label>:3204                                    ; preds = %3189, %3155
  %3205 = phi float [ %3203, %3189 ], [ -1.000000e+00, %3155 ]
  %3206 = phi float [ %3202, %3189 ], [ -1.000000e+00, %3155 ]
  %3207 = phi i1 [ true, %3189 ], [ false, %3155 ]
  %3208 = and i1 %3175, %3207
  br i1 %3208, label %3209, label %3211, !dx.controlflow.hints !106

; <label>:3209                                    ; preds = %3204
  %3210 = fcmp fast oeq float %3206, %3205
  br i1 %3210, label %3514, label %3212, !dx.controlflow.hints !107

; <label>:3211                                    ; preds = %3204
  br i1 %3175, label %3514, label %3212, !dx.controlflow.hints !108

; <label>:3212                                    ; preds = %3211, %3209
  %3213 = phi float [ %3141, %3211 ], [ %3205, %3209 ]
  %3214 = phi float [ 0.000000e+00, %3211 ], [ %3206, %3209 ]
  %3215 = icmp ne i32 %3163, 0
  %3216 = fmul fast float %3213, %3144
  %3217 = fadd fast float %3216, %3157
  %3218 = fmul fast float %3217, %3213
  %3219 = select i1 %3215, float 0.000000e+00, float %3218
  %3220 = fcmp fast oeq float %3144, 0.000000e+00
  %3221 = fdiv fast float %3162, %3144
  %3222 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3221)  ; FMax(a,b)
  %3223 = select i1 %3220, float %3213, float %3222
  %3224 = call float @dx.op.binary.f32(i32 36, float %3213, float %3223)  ; FMin(a,b)
  %3225 = fcmp fast ogt float %3144, 0.000000e+00
  %3226 = fcmp fast olt float %3162, 0.000000e+00
  br i1 %3225, label %3227, label %3284, !dx.controlflow.hints !109

; <label>:3227                                    ; preds = %3212
  %3228 = icmp eq i32 %3163, 0
  br i1 %3226, label %3229, label %3273, !dx.controlflow.hints !110

; <label>:3229                                    ; preds = %3227
  %3230 = select i1 %3228, float %3213, float 0.000000e+00
  %3231 = fsub fast float -0.000000e+00, %3230
  %3232 = call float @dx.op.unary.f32(i32 6, float %3231)  ; FAbs(value)
  %3233 = fmul fast float %3230, %3144
  %3234 = fadd fast float %3233, %3157
  %3235 = fmul fast float %3232, %3234
  %3236 = fsub fast float %3219, %3235
  %3237 = fsub fast float %3213, %3232
  %3238 = select i1 %3228, float %3237, float 0.000000e+00
  %3239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %3240 = extractvalue %dx.types.CBufRet.f32 %3239, 0
  %3241 = extractvalue %dx.types.CBufRet.f32 %3239, 1
  %3242 = extractvalue %dx.types.CBufRet.f32 %3239, 2
  %3243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %3244 = extractvalue %dx.types.CBufRet.f32 %3243, 0
  %3245 = extractvalue %dx.types.CBufRet.f32 %3243, 1
  %3246 = extractvalue %dx.types.CBufRet.f32 %3243, 2
  %3247 = extractvalue %dx.types.CBufRet.f32 %3243, 3
  %3248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %3249 = extractvalue %dx.types.CBufRet.f32 %3248, 3
  %3250 = call float @dx.op.binary.f32(i32 36, float %3236, float %3249)  ; FMin(a,b)
  %3251 = fmul fast float %3247, %3238
  %3252 = call float @dx.op.unary.f32(i32 7, float %3251)  ; Saturate(value)
  %3253 = fsub fast float %3244, %3240
  %3254 = fsub fast float %3245, %3241
  %3255 = fsub fast float %3246, %3242
  %3256 = fmul fast float %3252, %3253
  %3257 = fmul fast float %3252, %3254
  %3258 = fmul fast float %3252, %3255
  %3259 = fadd fast float %3256, %3240
  %3260 = fadd fast float %3257, %3241
  %3261 = fadd fast float %3258, %3242
  %3262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %3263 = extractvalue %dx.types.CBufRet.f32 %3262, 0
  %3264 = extractvalue %dx.types.CBufRet.f32 %3262, 1
  %3265 = fadd fast float %3264, %3263
  %3266 = call float @dx.op.unary.f32(i32 7, float %3265)  ; Saturate(value)
  %3267 = extractvalue %dx.types.CBufRet.f32 %3262, 2
  %3268 = extractvalue %dx.types.CBufRet.f32 %3262, 3
  %3269 = fadd fast float %3268, %3267
  %3270 = call float @dx.op.unary.f32(i32 7, float %3269)  ; Saturate(value)
  %3271 = fmul fast float %3266, %3250
  %3272 = fmul fast float %3271, %3270
  br label %3514

; <label>:3273                                    ; preds = %3227
  br i1 %3228, label %3274, label %3295, !dx.controlflow.hints !111

; <label>:3274                                    ; preds = %3273
  %3275 = call float @dx.op.binary.f32(i32 36, float %3224, float %3214)  ; FMin(a,b)
  %3276 = fsub fast float %3224, %3275
  %3277 = fsub fast float %3276, %3213
  %3278 = call float @dx.op.unary.f32(i32 6, float %3277)  ; FAbs(value)
  %3279 = fadd fast float %3276, %3213
  %3280 = fmul fast float %3279, %3144
  %3281 = fadd fast float %3280, %3157
  %3282 = fmul fast float %3281, %3278
  %3283 = fsub fast float %3219, %3282
  br label %3295

; <label>:3284                                    ; preds = %3212
  br i1 %3226, label %3285, label %3295, !dx.controlflow.hints !112

; <label>:3285                                    ; preds = %3284
  %3286 = call float @dx.op.binary.f32(i32 35, float %3214, float %3224)  ; FMax(a,b)
  %3287 = icmp eq i32 %3163, 0
  %3288 = select i1 %3287, float %3224, float 0.000000e+00
  %3289 = fsub fast float -0.000000e+00, %3288
  %3290 = call float @dx.op.unary.f32(i32 6, float %3289)  ; FAbs(value)
  %3291 = fmul fast float %3288, %3144
  %3292 = fadd fast float %3291, %3157
  %3293 = fmul fast float %3290, %3292
  %3294 = fsub fast float %3219, %3293
  br label %3295

; <label>:3295                                    ; preds = %3285, %3284, %3274, %3273
  %3296 = phi float [ %3214, %3273 ], [ %3214, %3274 ], [ %3286, %3285 ], [ %3214, %3284 ]
  %3297 = phi float [ 0.000000e+00, %3273 ], [ %3278, %3274 ], [ %3290, %3285 ], [ 0.000000e+00, %3284 ]
  %3298 = phi float [ %3219, %3273 ], [ %3283, %3274 ], [ %3294, %3285 ], [ %3219, %3284 ]
  %3299 = phi float [ %3224, %3273 ], [ %3224, %3274 ], [ %3213, %3285 ], [ %3213, %3284 ]
  %3300 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 0
  store float -1.000000e+00, float* %3300, align 4, !tbaa !113, !noalias !117
  %3301 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 1
  store float -1.000000e+00, float* %3301, align 4, !tbaa !113, !noalias !117
  %3302 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 2
  store float -1.000000e+00, float* %3302, align 4, !tbaa !113, !noalias !117
  %3303 = getelementptr inbounds [3 x float], [3 x float]* %33, i32 0, i32 0
  store float -1.000000e+00, float* %3303, align 4, !tbaa !113, !noalias !117
  %3304 = getelementptr inbounds [3 x float], [3 x float]* %33, i32 0, i32 1
  store float -1.000000e+00, float* %3304, align 4, !tbaa !113, !noalias !117
  %3305 = getelementptr inbounds [3 x float], [3 x float]* %33, i32 0, i32 2
  store float -1.000000e+00, float* %3305, align 4, !tbaa !113, !noalias !117
  %3306 = icmp sgt i32 %3165, 0
  br i1 %3306, label %3307, label %3368

; <label>:3307                                    ; preds = %3295
  br label %3308

; <label>:3308                                    ; preds = %3357, %3307
  %3309 = phi i32 [ %3358, %3357 ], [ 0, %3307 ]
  %3310 = phi i32 [ %3359, %3357 ], [ 0, %3307 ]
  %3311 = add nuw i32 %3310, 171
  %3312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 %3311)  ; CBufferLoadLegacy(handle,regIndex)
  %3313 = extractvalue %dx.types.CBufRet.f32 %3312, 0
  %3314 = extractvalue %dx.types.CBufRet.f32 %3312, 1
  %3315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3316 = extractvalue %dx.types.CBufRet.f32 %3315, 0
  %3317 = extractvalue %dx.types.CBufRet.f32 %3315, 1
  %3318 = fsub fast float %3313, %3316
  %3319 = fsub fast float %3314, %3317
  %3320 = extractvalue %dx.types.CBufRet.f32 %3312, 2
  %3321 = fsub fast float -0.000000e+00, %3318
  %3322 = fsub fast float -0.000000e+00, %3319
  %3323 = call float @dx.op.dot2.f32(i32 54, float %3142, float %3143, float %3321, float %3322)  ; Dot2(ax,ay,bx,by)
  %3324 = fmul fast float %3323, 2.000000e+00
  %3325 = call float @dx.op.dot2.f32(i32 54, float %3321, float %3322, float %3321, float %3322)  ; Dot2(ax,ay,bx,by)
  %3326 = fmul fast float %3320, %3320
  %3327 = fsub fast float %3325, %3326
  %3328 = fmul fast float %3324, %3324
  %3329 = fmul fast float %3185, %3327
  %3330 = fsub fast float %3328, %3329
  %3331 = fcmp fast ogt float %3330, 0.000000e+00
  br i1 %3331, label %3332, label %3347, !dx.controlflow.hints !105

; <label>:3332                                    ; preds = %3308
  %3333 = fcmp fast ogt float %3324, 0.000000e+00
  %3334 = call float @dx.op.unary.f32(i32 24, float %3330)  ; Sqrt(value)
  %3335 = fsub fast float -0.000000e+00, %3334
  %3336 = select i1 %3333, float %3334, float %3335
  %3337 = fadd fast float %3336, %3324
  %3338 = fmul float %3337, -5.000000e-01
  %3339 = fdiv fast float %3338, %3178
  %3340 = call float @dx.op.binary.f32(i32 35, float %3339, float 0.000000e+00)  ; FMax(a,b)
  %3341 = call float @dx.op.binary.f32(i32 36, float %3213, float %3340)  ; FMin(a,b)
  %3342 = fdiv fast float %3327, %3338
  %3343 = call float @dx.op.binary.f32(i32 35, float %3342, float 0.000000e+00)  ; FMax(a,b)
  %3344 = call float @dx.op.binary.f32(i32 36, float %3213, float %3343)  ; FMin(a,b)
  %3345 = call float @dx.op.binary.f32(i32 36, float %3341, float %3344)  ; FMin(a,b)
  %3346 = call float @dx.op.binary.f32(i32 35, float %3341, float %3344)  ; FMax(a,b)
  br label %3347

; <label>:3347                                    ; preds = %3332, %3308
  %3348 = phi float [ %3346, %3332 ], [ -1.000000e+00, %3308 ]
  %3349 = phi float [ %3345, %3332 ], [ -1.000000e+00, %3308 ]
  %3350 = phi i1 [ true, %3332 ], [ false, %3308 ]
  br i1 %3350, label %3351, label %3357, !dx.controlflow.hints !128

; <label>:3351                                    ; preds = %3347
  %3352 = call float @dx.op.binary.f32(i32 35, float %3296, float %3349)  ; FMax(a,b)
  %3353 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 %3310
  store float %3352, float* %3353, align 4, !tbaa !113, !noalias !117
  %3354 = call float @dx.op.binary.f32(i32 35, float %3296, float %3348)  ; FMax(a,b)
  %3355 = getelementptr inbounds [3 x float], [3 x float]* %33, i32 0, i32 %3310
  store float %3354, float* %3355, align 4, !tbaa !113, !noalias !117
  %3356 = add nsw i32 %3309, 1
  br label %3357

; <label>:3357                                    ; preds = %3351, %3347
  %3358 = phi i32 [ %3356, %3351 ], [ %3309, %3347 ]
  %3359 = add nuw nsw i32 %3310, 1
  %3360 = icmp eq i32 %3359, %3165
  br i1 %3360, label %3361, label %3308

; <label>:3361                                    ; preds = %3357
  %3362 = load float, float* %3302, align 4, !tbaa !113, !alias.scope !129, !noalias !132
  %3363 = load float, float* %3301, align 4, !tbaa !113, !alias.scope !135, !noalias !136
  %3364 = load float, float* %3300, align 4, !tbaa !113, !alias.scope !137, !noalias !138
  %3365 = load float, float* %3305, align 4, !tbaa !113, !alias.scope !139, !noalias !142
  %3366 = load float, float* %3304, align 4, !tbaa !113, !alias.scope !145, !noalias !146
  %3367 = load float, float* %3303, align 4, !tbaa !113, !alias.scope !147, !noalias !148
  br label %3368

; <label>:3368                                    ; preds = %3361, %3295
  %3369 = phi float [ -1.000000e+00, %3295 ], [ %3367, %3361 ]
  %3370 = phi float [ -1.000000e+00, %3295 ], [ %3366, %3361 ]
  %3371 = phi float [ -1.000000e+00, %3295 ], [ %3365, %3361 ]
  %3372 = phi float [ -1.000000e+00, %3295 ], [ %3364, %3361 ]
  %3373 = phi float [ -1.000000e+00, %3295 ], [ %3363, %3361 ]
  %3374 = phi float [ -1.000000e+00, %3295 ], [ %3362, %3361 ]
  %3375 = phi i32 [ 0, %3295 ], [ %3358, %3361 ]
  %3376 = call float @dx.op.binary.f32(i32 36, float %3373, float %3374)  ; FMin(a,b)
  %3377 = call float @dx.op.binary.f32(i32 36, float %3372, float %3376)  ; FMin(a,b)
  %3378 = call float @dx.op.binary.f32(i32 35, float %3372, float %3373)  ; FMax(a,b)
  %3379 = call float @dx.op.binary.f32(i32 36, float %3378, float %3374)  ; FMin(a,b)
  %3380 = call float @dx.op.binary.f32(i32 36, float %3372, float %3373)  ; FMin(a,b)
  %3381 = call float @dx.op.binary.f32(i32 35, float %3380, float %3379)  ; FMax(a,b)
  %3382 = call float @dx.op.binary.f32(i32 35, float %3373, float %3374)  ; FMax(a,b)
  %3383 = call float @dx.op.binary.f32(i32 35, float %3372, float %3382)  ; FMax(a,b)
  store float %3377, float* %3300, align 4, !tbaa !113, !alias.scope !137, !noalias !138
  store float %3381, float* %3301, align 4, !tbaa !113, !alias.scope !135, !noalias !136
  store float %3383, float* %3302, align 4, !tbaa !113, !alias.scope !129, !noalias !132
  %3384 = call float @dx.op.binary.f32(i32 36, float %3370, float %3371)  ; FMin(a,b)
  %3385 = call float @dx.op.binary.f32(i32 36, float %3369, float %3384)  ; FMin(a,b)
  %3386 = call float @dx.op.binary.f32(i32 35, float %3369, float %3370)  ; FMax(a,b)
  %3387 = call float @dx.op.binary.f32(i32 36, float %3386, float %3371)  ; FMin(a,b)
  %3388 = call float @dx.op.binary.f32(i32 36, float %3369, float %3370)  ; FMin(a,b)
  %3389 = call float @dx.op.binary.f32(i32 35, float %3388, float %3387)  ; FMax(a,b)
  %3390 = call float @dx.op.binary.f32(i32 35, float %3370, float %3371)  ; FMax(a,b)
  %3391 = call float @dx.op.binary.f32(i32 35, float %3369, float %3390)  ; FMax(a,b)
  store float %3385, float* %3303, align 4, !tbaa !113, !alias.scope !147, !noalias !148
  store float %3389, float* %3304, align 4, !tbaa !113, !alias.scope !145, !noalias !146
  store float %3391, float* %3305, align 4, !tbaa !113, !alias.scope !139, !noalias !142
  %3392 = sub nsw i32 3, %3375
  %3393 = icmp sgt i32 %3392, 2
  br i1 %3393, label %3394, label %3432, !dx.controlflow.hints !149

; <label>:3394                                    ; preds = %3368
  %3395 = icmp eq i32 %3163, 0
  %3396 = fsub fast float %3213, %3297
  %3397 = select i1 %3395, float %3396, float %3297
  %3398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %3399 = extractvalue %dx.types.CBufRet.f32 %3398, 0
  %3400 = extractvalue %dx.types.CBufRet.f32 %3398, 1
  %3401 = extractvalue %dx.types.CBufRet.f32 %3398, 2
  %3402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %3403 = extractvalue %dx.types.CBufRet.f32 %3402, 0
  %3404 = extractvalue %dx.types.CBufRet.f32 %3402, 1
  %3405 = extractvalue %dx.types.CBufRet.f32 %3402, 2
  %3406 = extractvalue %dx.types.CBufRet.f32 %3402, 3
  %3407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %3408 = extractvalue %dx.types.CBufRet.f32 %3407, 3
  %3409 = call float @dx.op.binary.f32(i32 36, float %3298, float %3408)  ; FMin(a,b)
  %3410 = fmul fast float %3406, %3397
  %3411 = call float @dx.op.unary.f32(i32 7, float %3410)  ; Saturate(value)
  %3412 = fsub fast float %3403, %3399
  %3413 = fsub fast float %3404, %3400
  %3414 = fsub fast float %3405, %3401
  %3415 = fmul fast float %3411, %3412
  %3416 = fmul fast float %3411, %3413
  %3417 = fmul fast float %3411, %3414
  %3418 = fadd fast float %3415, %3399
  %3419 = fadd fast float %3416, %3400
  %3420 = fadd fast float %3417, %3401
  %3421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %3422 = extractvalue %dx.types.CBufRet.f32 %3421, 0
  %3423 = extractvalue %dx.types.CBufRet.f32 %3421, 1
  %3424 = fadd fast float %3423, %3422
  %3425 = call float @dx.op.unary.f32(i32 7, float %3424)  ; Saturate(value)
  %3426 = extractvalue %dx.types.CBufRet.f32 %3421, 2
  %3427 = extractvalue %dx.types.CBufRet.f32 %3421, 3
  %3428 = fadd fast float %3427, %3426
  %3429 = call float @dx.op.unary.f32(i32 7, float %3428)  ; Saturate(value)
  %3430 = fmul fast float %3425, %3409
  %3431 = fmul fast float %3430, %3429
  br label %3514

; <label>:3432                                    ; preds = %3368
  %3433 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 %3392
  %3434 = load float, float* %3433, align 4, !tbaa !113, !noalias !117
  %3435 = fcmp fast olt float %3434, %3299
  %3436 = icmp sgt i32 %3375, 0
  %3437 = and i1 %3436, %3435
  br i1 %3437, label %3438, label %3475

; <label>:3438                                    ; preds = %3432
  br label %3439

; <label>:3439                                    ; preds = %3468, %3438
  %3440 = phi float [ %3469, %3468 ], [ %3297, %3438 ]
  %3441 = phi float [ %3470, %3468 ], [ %3298, %3438 ]
  %3442 = phi float [ %3450, %3468 ], [ %3434, %3438 ]
  %3443 = phi i32 [ %3447, %3468 ], [ %3392, %3438 ]
  %3444 = getelementptr inbounds [3 x float], [3 x float]* %33, i32 0, i32 %3443
  %3445 = load float, float* %3444, align 4, !tbaa !113, !noalias !117
  %3446 = icmp slt i32 %3443, 2
  %3447 = add nsw i32 %3443, 1
  %3448 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 %3447
  %3449 = load float, float* %3448, align 4, !tbaa !113, !noalias !117
  %3450 = select i1 %3446, float %3449, float %3213
  %3451 = call float @dx.op.binary.f32(i32 36, float %3450, float %3445)  ; FMin(a,b)
  %3452 = call float @dx.op.binary.f32(i32 36, float %3299, float %3451)  ; FMin(a,b)
  %3453 = icmp eq i32 %3163, 0
  %3454 = fadd fast float %3452, %3442
  %3455 = fmul fast float %3454, %3144
  %3456 = fadd fast float %3455, %3157
  br i1 %3453, label %3462, label %3457, !dx.controlflow.hints !150

; <label>:3457                                    ; preds = %3439
  %3458 = fsub fast float %3452, %3442
  %3459 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3458)  ; FMax(a,b)
  %3460 = fmul fast float %3459, %3456
  %3461 = fadd fast float %3460, %3441
  br label %3468

; <label>:3462                                    ; preds = %3439
  %3463 = fsub fast float %3442, %3452
  %3464 = call float @dx.op.unary.f32(i32 6, float %3463)  ; FAbs(value)
  %3465 = fadd fast float %3464, %3440
  %3466 = fmul fast float %3464, %3456
  %3467 = fsub fast float %3441, %3466
  br label %3468

; <label>:3468                                    ; preds = %3462, %3457
  %3469 = phi float [ %3459, %3457 ], [ %3465, %3462 ]
  %3470 = phi float [ %3461, %3457 ], [ %3467, %3462 ]
  %3471 = fcmp fast olt float %3450, %3299
  %3472 = icmp slt i32 %3447, 3
  %3473 = and i1 %3472, %3471
  br i1 %3473, label %3439, label %3474

; <label>:3474                                    ; preds = %3468
  br label %3475

; <label>:3475                                    ; preds = %3474, %3432
  %3476 = phi float [ %3297, %3432 ], [ %3469, %3474 ]
  %3477 = phi float [ %3298, %3432 ], [ %3470, %3474 ]
  %3478 = fsub fast float %3213, %3476
  %3479 = select i1 %3215, float %3476, float %3478
  %3480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %3481 = extractvalue %dx.types.CBufRet.f32 %3480, 0
  %3482 = extractvalue %dx.types.CBufRet.f32 %3480, 1
  %3483 = extractvalue %dx.types.CBufRet.f32 %3480, 2
  %3484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %3485 = extractvalue %dx.types.CBufRet.f32 %3484, 0
  %3486 = extractvalue %dx.types.CBufRet.f32 %3484, 1
  %3487 = extractvalue %dx.types.CBufRet.f32 %3484, 2
  %3488 = extractvalue %dx.types.CBufRet.f32 %3484, 3
  %3489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %3490 = extractvalue %dx.types.CBufRet.f32 %3489, 3
  %3491 = call float @dx.op.binary.f32(i32 36, float %3477, float %3490)  ; FMin(a,b)
  %3492 = fmul fast float %3488, %3479
  %3493 = call float @dx.op.unary.f32(i32 7, float %3492)  ; Saturate(value)
  %3494 = fsub fast float %3485, %3481
  %3495 = fsub fast float %3486, %3482
  %3496 = fsub fast float %3487, %3483
  %3497 = fmul fast float %3493, %3494
  %3498 = fmul fast float %3493, %3495
  %3499 = fmul fast float %3493, %3496
  %3500 = fadd fast float %3497, %3481
  %3501 = fadd fast float %3498, %3482
  %3502 = fadd fast float %3499, %3483
  %3503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %3504 = extractvalue %dx.types.CBufRet.f32 %3503, 0
  %3505 = extractvalue %dx.types.CBufRet.f32 %3503, 1
  %3506 = fadd fast float %3505, %3504
  %3507 = call float @dx.op.unary.f32(i32 7, float %3506)  ; Saturate(value)
  %3508 = extractvalue %dx.types.CBufRet.f32 %3503, 2
  %3509 = extractvalue %dx.types.CBufRet.f32 %3503, 3
  %3510 = fadd fast float %3509, %3508
  %3511 = call float @dx.op.unary.f32(i32 7, float %3510)  ; Saturate(value)
  %3512 = fmul fast float %3507, %3491
  %3513 = fmul fast float %3512, %3511
  br label %3514

; <label>:3514                                    ; preds = %3475, %3394, %3229, %3211, %3209
  %3515 = phi float [ %3238, %3229 ], [ %3397, %3394 ], [ %3479, %3475 ], [ 0.000000e+00, %3209 ], [ 0.000000e+00, %3211 ]
  %3516 = phi float [ %3272, %3229 ], [ %3431, %3394 ], [ %3513, %3475 ], [ 0.000000e+00, %3209 ], [ 0.000000e+00, %3211 ]
  %3517 = phi float [ %3259, %3229 ], [ %3418, %3394 ], [ %3500, %3475 ], [ 0.000000e+00, %3209 ], [ 0.000000e+00, %3211 ]
  %3518 = phi float [ %3260, %3229 ], [ %3419, %3394 ], [ %3501, %3475 ], [ 0.000000e+00, %3209 ], [ 0.000000e+00, %3211 ]
  %3519 = phi float [ %3261, %3229 ], [ %3420, %3394 ], [ %3502, %3475 ], [ 0.000000e+00, %3209 ], [ 0.000000e+00, %3211 ]
  %3520 = fmul fast float %3152, %3516
  %3521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3522 = extractvalue %dx.types.CBufRet.f32 %3521, 2
  %3523 = fsub fast float %3159, %3522
  %3524 = fcmp fast olt float %3520, -2.000000e+01
  %3525 = call float @dx.op.unary.f32(i32 21, float %3520)  ; Exp(value)
  %3526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %3527 = extractvalue %dx.types.CBufRet.f32 %3526, 2
  %3528 = extractvalue %dx.types.CBufRet.f32 %3526, 3
  %3529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %3530 = extractvalue %dx.types.CBufRet.f32 %3529, 2
  %3531 = fmul fast float %3528, %3523
  %3532 = call float @dx.op.unary.f32(i32 7, float %3531)  ; Saturate(value)
  %3533 = fsub fast float 1.000000e+00, %3532
  %3534 = fmul fast float %3144, 5.000000e-01
  %3535 = fadd fast float %3534, 5.000000e-01
  %3536 = call float @dx.op.unary.f32(i32 7, float %3535)  ; Saturate(value)
  %3537 = fsub fast float 1.000000e+00, %3536
  %3538 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %3533)  ; FMax(a,b)
  %3539 = fdiv fast float %3537, %3538
  %3540 = fsub fast float %3523, %3110
  %3541 = call float @dx.op.unary.f32(i32 6, float %3540)  ; FAbs(value)
  %3542 = fmul fast float %3541, %3527
  %3543 = call float @dx.op.unary.f32(i32 7, float %3539)  ; Saturate(value)
  %3544 = fsub fast float 1.000000e+00, %3542
  %3545 = fmul fast float %3544, %3543
  %3546 = fadd fast float %3545, %3542
  %3547 = fmul fast float %3530, %3523
  %3548 = call float @dx.op.unary.f32(i32 7, float %3547)  ; Saturate(value)
  %3549 = fsub fast float 1.000000e+00, %3546
  %3550 = fmul fast float %3549, %3548
  %3551 = fadd fast float %3550, %3546
  %3552 = call float @dx.op.unary.f32(i32 7, float %3551)  ; Saturate(value)
  %3553 = fadd fast float %3525, -1.000000e+00
  %3554 = select i1 %3524, float -1.000000e+00, float %3553
  %3555 = fmul fast float %3552, %3554
  %3556 = fadd fast float %3555, 1.000000e+00
  %3557 = fsub fast float -0.000000e+00, %3555
  %3558 = fmul fast float %3517, %3557
  %3559 = fmul fast float %3518, %3557
  %3560 = fmul fast float %3519, %3557
  br label %3561

; <label>:3561                                    ; preds = %3514, %3063
  %3562 = phi float [ %3515, %3514 ], [ 0.000000e+00, %3063 ]
  %3563 = phi float [ %3556, %3514 ], [ 1.000000e+00, %3063 ]
  %3564 = phi float [ %3558, %3514 ], [ 0.000000e+00, %3063 ]
  %3565 = phi float [ %3559, %3514 ], [ 0.000000e+00, %3063 ]
  %3566 = phi float [ %3560, %3514 ], [ 0.000000e+00, %3063 ]
  %3567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %3568 = extractvalue %dx.types.CBufRet.f32 %3567, 1
  %3569 = fsub fast float 1.000000e+00, %3563
  %3570 = fmul fast float %3569, %3145
  %3571 = fmul fast float %3570, %3568
  %3572 = fsub fast float %3145, %3571
  br i1 %3138, label %3573, label %3602, !dx.controlflow.hints !151

; <label>:3573                                    ; preds = %3561
  %3574 = fmul fast float %3146, %3135
  %3575 = fadd fast float %3574, %3136
  %3576 = call float @dx.op.unary.f32(i32 7, float %3575)  ; Saturate(value)
  %3577 = fmul fast float %3117, %3572
  %3578 = fsub fast float -0.000000e+00, %3577
  %3579 = fmul fast float %3118, %3572
  %3580 = fsub fast float -0.000000e+00, %3579
  %3581 = call float @dx.op.unary.f32(i32 21, float %3578)  ; Exp(value)
  %3582 = call float @dx.op.unary.f32(i32 21, float %3580)  ; Exp(value)
  %3583 = call float @dx.op.binary.f32(i32 35, float %3125, float %3581)  ; FMax(a,b)
  %3584 = call float @dx.op.binary.f32(i32 35, float %3125, float %3582)  ; FMax(a,b)
  %3585 = fsub fast float %3584, %3583
  %3586 = fmul fast float %3585, %3576
  %3587 = fadd fast float %3586, %3583
  %3588 = call float @dx.op.unary.f32(i32 7, float %3587)  ; Saturate(value)
  %3589 = fsub fast float %3122, %3127
  %3590 = fsub fast float %3123, %3128
  %3591 = fsub fast float %3124, %3129
  %3592 = fmul fast float %3576, %3589
  %3593 = fmul fast float %3576, %3590
  %3594 = fmul fast float %3576, %3591
  %3595 = fadd fast float %3592, %3127
  %3596 = fadd fast float %3593, %3128
  %3597 = fadd fast float %3594, %3129
  %3598 = fsub fast float 1.000000e+00, %3588
  %3599 = fmul fast float %3598, %3595
  %3600 = fmul fast float %3598, %3596
  %3601 = fmul fast float %3598, %3597
  br label %3661

; <label>:3602                                    ; preds = %3561
  %3603 = fmul fast float %3572, %3134
  %3604 = call float @dx.op.unary.f32(i32 7, float %3603)  ; Saturate(value)
  %3605 = fsub fast float 2.000000e+00, %3604
  %3606 = fmul fast float %3604, 9.921875e-01
  %3607 = fmul fast float %3606, %3605
  %3608 = fadd fast float %3607, 3.906250e-03
  %3609 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %26, float %3608, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3610 = extractvalue %dx.types.ResRet.f32 %3609, 0
  %3611 = fsub fast float %3604, %3610
  %3612 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3611)  ; FMax(a,b)
  %3613 = fmul fast float %3120, %3110
  %3614 = call float @dx.op.unary.f32(i32 6, float %3613)  ; FAbs(value)
  %3615 = fcmp fast ogt float %3614, 0x3EB0C6F7A0000000
  br i1 %3615, label %3616, label %3622, !dx.controlflow.hints !152

; <label>:3616                                    ; preds = %3602
  %3617 = fmul fast float %3613, 0xBFF7154760000000
  %3618 = call float @dx.op.unary.f32(i32 21, float %3617)  ; Exp(value)
  %3619 = fsub fast float 1.000000e+00, %3618
  %3620 = fdiv fast float %3619, %3613
  %3621 = fmul fast float %3620, %3130
  br label %3622

; <label>:3622                                    ; preds = %3616, %3602
  %3623 = phi float [ %3621, %3616 ], [ %3130, %3602 ]
  %3624 = fadd fast float %3623, %3132
  %3625 = fmul fast float %3624, %3612
  %3626 = fmul fast float %3117, %3625
  %3627 = fsub fast float -0.000000e+00, %3626
  %3628 = fmul fast float %3118, %3625
  %3629 = fsub fast float -0.000000e+00, %3628
  %3630 = fmul fast float %3119, %3625
  %3631 = fsub fast float -0.000000e+00, %3630
  %3632 = call float @dx.op.unary.f32(i32 21, float %3627)  ; Exp(value)
  %3633 = call float @dx.op.unary.f32(i32 21, float %3629)  ; Exp(value)
  %3634 = call float @dx.op.unary.f32(i32 21, float %3631)  ; Exp(value)
  %3635 = fmul fast float %3146, %3146
  %3636 = fadd fast float %3635, 1.000000e+00
  %3637 = fmul fast float %3636, 0x3FAE8EC8A0000000
  %3638 = fmul fast float %3637, %3127
  %3639 = fmul fast float %3637, %3128
  %3640 = fmul fast float %3637, %3129
  %3641 = fmul fast float %3146, %3125
  %3642 = fsub fast float 1.000000e+00, %3641
  %3643 = fmul fast float %3125, %3125
  %3644 = fsub fast float 1.000000e+00, %3643
  %3645 = fmul fast float %3644, 0x3FB45F3060000000
  %3646 = fmul fast float %3642, %3642
  %3647 = fdiv fast float 1.000000e+00, %3646
  %3648 = fmul fast float %3645, %3647
  %3649 = fmul fast float %3648, %3122
  %3650 = fmul fast float %3648, %3123
  %3651 = fmul fast float %3648, %3124
  %3652 = fadd fast float %3649, %3638
  %3653 = fadd fast float %3650, %3639
  %3654 = fadd fast float %3651, %3640
  %3655 = fsub fast float 1.000000e+00, %3632
  %3656 = fsub fast float 1.000000e+00, %3633
  %3657 = fsub fast float 1.000000e+00, %3634
  %3658 = fmul fast float %3652, %3655
  %3659 = fmul fast float %3653, %3656
  %3660 = fmul fast float %3654, %3657
  br label %3661

; <label>:3661                                    ; preds = %3622, %3573
  %3662 = phi float [ %3599, %3573 ], [ %3658, %3622 ]
  %3663 = phi float [ %3600, %3573 ], [ %3659, %3622 ]
  %3664 = phi float [ %3601, %3573 ], [ %3660, %3622 ]
  %3665 = phi float [ %3588, %3573 ], [ %3632, %3622 ]
  %3666 = phi float [ %3588, %3573 ], [ %3633, %3622 ]
  %3667 = phi float [ %3588, %3573 ], [ %3634, %3622 ]
  br i1 %3154, label %3668, label %3866, !dx.controlflow.hints !153

; <label>:3668                                    ; preds = %3661
  %3669 = extractvalue %dx.types.CBufRet.f32 %3567, 0
  %3670 = fmul fast float %3669, %3569
  %3671 = fsub fast float %3564, %3662
  %3672 = fsub fast float %3565, %3663
  %3673 = fsub fast float %3566, %3664
  %3674 = fmul fast float %3670, %3671
  %3675 = fmul fast float %3670, %3672
  %3676 = fmul fast float %3670, %3673
  %3677 = fadd fast float %3674, %3662
  %3678 = fadd fast float %3675, %3663
  %3679 = fadd fast float %3676, %3664
  %3680 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3665)  ; FMax(a,b)
  %3681 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3666)  ; FMax(a,b)
  %3682 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3667)  ; FMax(a,b)
  %3683 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3563)  ; FMax(a,b)
  %3684 = call float @dx.op.binary.f32(i32 35, float %3562, float %3572)  ; FMax(a,b)
  %3685 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %3684)  ; FMax(a,b)
  %3686 = fdiv fast float %3562, %3685
  %3687 = call float @dx.op.unary.f32(i32 7, float %3686)  ; Saturate(value)
  %3688 = fdiv fast float %3572, %3685
  %3689 = call float @dx.op.unary.f32(i32 7, float %3688)  ; Saturate(value)
  %3690 = fcmp fast une float %3683, 1.000000e+00
  br i1 %3690, label %3691, label %3704, !dx.controlflow.hints !154

; <label>:3691                                    ; preds = %3668
  %3692 = call float @dx.op.unary.f32(i32 23, float %3683)  ; Log(value)
  %3693 = fmul fast float %3692, 0x3FE62E4300000000
  %3694 = fmul fast float %3564, %3693
  %3695 = fsub fast float -0.000000e+00, %3694
  %3696 = fmul fast float %3565, %3693
  %3697 = fsub fast float -0.000000e+00, %3696
  %3698 = fmul fast float %3566, %3693
  %3699 = fsub fast float -0.000000e+00, %3698
  %3700 = fsub fast float 1.000000e+00, %3683
  %3701 = fdiv fast float %3695, %3700
  %3702 = fdiv fast float %3697, %3700
  %3703 = fdiv fast float %3699, %3700
  br label %3704

; <label>:3704                                    ; preds = %3691, %3668
  %3705 = phi float [ %3701, %3691 ], [ %3564, %3668 ]
  %3706 = phi float [ %3702, %3691 ], [ %3565, %3668 ]
  %3707 = phi float [ %3703, %3691 ], [ %3566, %3668 ]
  %3708 = phi float [ %3693, %3691 ], [ 0.000000e+00, %3668 ]
  %3709 = fcmp fast une float %3680, 1.000000e+00
  br i1 %3709, label %3710, label %3717, !dx.controlflow.hints !155

; <label>:3710                                    ; preds = %3704
  %3711 = call float @dx.op.unary.f32(i32 23, float %3680)  ; Log(value)
  %3712 = fmul fast float %3711, 0x3FE62E4300000000
  %3713 = fmul fast float %3677, %3712
  %3714 = fsub fast float -0.000000e+00, %3713
  %3715 = fsub fast float 1.000000e+00, %3680
  %3716 = fdiv fast float %3714, %3715
  br label %3717

; <label>:3717                                    ; preds = %3710, %3704
  %3718 = phi float [ %3716, %3710 ], [ %3677, %3704 ]
  %3719 = phi float [ %3712, %3710 ], [ 0.000000e+00, %3704 ]
  %3720 = fcmp fast une float %3681, 1.000000e+00
  br i1 %3720, label %3721, label %3728, !dx.controlflow.hints !155

; <label>:3721                                    ; preds = %3717
  %3722 = call float @dx.op.unary.f32(i32 23, float %3681)  ; Log(value)
  %3723 = fmul fast float %3722, 0x3FE62E4300000000
  %3724 = fmul fast float %3678, %3723
  %3725 = fsub fast float -0.000000e+00, %3724
  %3726 = fsub fast float 1.000000e+00, %3681
  %3727 = fdiv fast float %3725, %3726
  br label %3728

; <label>:3728                                    ; preds = %3721, %3717
  %3729 = phi float [ %3727, %3721 ], [ %3678, %3717 ]
  %3730 = phi float [ %3723, %3721 ], [ 0.000000e+00, %3717 ]
  %3731 = fcmp fast une float %3682, 1.000000e+00
  br i1 %3731, label %3732, label %3739, !dx.controlflow.hints !155

; <label>:3732                                    ; preds = %3728
  %3733 = call float @dx.op.unary.f32(i32 23, float %3682)  ; Log(value)
  %3734 = fmul fast float %3733, 0x3FE62E4300000000
  %3735 = fmul fast float %3679, %3734
  %3736 = fsub fast float -0.000000e+00, %3735
  %3737 = fsub fast float 1.000000e+00, %3682
  %3738 = fdiv fast float %3736, %3737
  br label %3739

; <label>:3739                                    ; preds = %3732, %3728
  %3740 = phi float [ %3738, %3732 ], [ %3679, %3728 ]
  %3741 = phi float [ %3734, %3732 ], [ 0.000000e+00, %3728 ]
  %3742 = fmul fast float %3705, %3689
  %3743 = fmul fast float %3706, %3689
  %3744 = fmul fast float %3707, %3689
  %3745 = fmul fast float %3708, %3689
  %3746 = fmul fast float %3718, %3687
  %3747 = fmul fast float %3729, %3687
  %3748 = fmul fast float %3740, %3687
  %3749 = fmul fast float %3719, %3687
  %3750 = fmul fast float %3730, %3687
  %3751 = fmul fast float %3741, %3687
  %3752 = fadd fast float %3746, %3742
  %3753 = fadd fast float %3747, %3743
  %3754 = fadd fast float %3748, %3744
  %3755 = fadd fast float %3749, %3745
  %3756 = fadd fast float %3750, %3745
  %3757 = fadd fast float %3751, %3745
  %3758 = fcmp fast une float %3755, 0.000000e+00
  br i1 %3758, label %3759, label %3766, !dx.controlflow.hints !156

; <label>:3759                                    ; preds = %3739
  %3760 = fmul fast float %3755, 0x3FF7154760000000
  %3761 = call float @dx.op.unary.f32(i32 21, float %3760)  ; Exp(value)
  %3762 = fsub fast float 1.000000e+00, %3761
  %3763 = fmul fast float %3752, %3762
  %3764 = fsub fast float -0.000000e+00, %3763
  %3765 = fdiv fast float %3764, %3755
  br label %3766

; <label>:3766                                    ; preds = %3759, %3739
  %3767 = phi float [ %3761, %3759 ], [ 1.000000e+00, %3739 ]
  %3768 = phi float [ %3765, %3759 ], [ %3752, %3739 ]
  %3769 = fcmp fast une float %3756, 0.000000e+00
  br i1 %3769, label %3770, label %3777, !dx.controlflow.hints !156

; <label>:3770                                    ; preds = %3766
  %3771 = fmul fast float %3756, 0x3FF7154760000000
  %3772 = call float @dx.op.unary.f32(i32 21, float %3771)  ; Exp(value)
  %3773 = fsub fast float 1.000000e+00, %3772
  %3774 = fmul fast float %3753, %3773
  %3775 = fsub fast float -0.000000e+00, %3774
  %3776 = fdiv fast float %3775, %3756
  br label %3777

; <label>:3777                                    ; preds = %3770, %3766
  %3778 = phi float [ %3772, %3770 ], [ 1.000000e+00, %3766 ]
  %3779 = phi float [ %3776, %3770 ], [ %3753, %3766 ]
  %3780 = fcmp fast une float %3757, 0.000000e+00
  br i1 %3780, label %3781, label %3788, !dx.controlflow.hints !156

; <label>:3781                                    ; preds = %3777
  %3782 = fmul fast float %3757, 0x3FF7154760000000
  %3783 = call float @dx.op.unary.f32(i32 21, float %3782)  ; Exp(value)
  %3784 = fsub fast float 1.000000e+00, %3783
  %3785 = fmul fast float %3754, %3784
  %3786 = fsub fast float -0.000000e+00, %3785
  %3787 = fdiv fast float %3786, %3757
  br label %3788

; <label>:3788                                    ; preds = %3781, %3777
  %3789 = phi float [ %3783, %3781 ], [ 1.000000e+00, %3777 ]
  %3790 = phi float [ %3787, %3781 ], [ %3754, %3777 ]
  %3791 = fcmp fast ogt float %3687, %3689
  br i1 %3791, label %3792, label %3812, !dx.controlflow.hints !157

; <label>:3792                                    ; preds = %3788
  %3793 = fsub fast float 1.000000e+00, %3689
  %3794 = fmul fast float %3705, %3793
  %3795 = fmul fast float %3706, %3793
  %3796 = fmul fast float %3707, %3793
  %3797 = fmul fast float %3708, %3793
  %3798 = fcmp fast une float %3797, 0.000000e+00
  br i1 %3798, label %3799, label %3850, !dx.controlflow.hints !158

; <label>:3799                                    ; preds = %3792
  %3800 = fmul fast float %3797, 0x3FF7154760000000
  %3801 = call float @dx.op.unary.f32(i32 21, float %3800)  ; Exp(value)
  %3802 = fsub fast float 1.000000e+00, %3801
  %3803 = fmul fast float %3794, %3802
  %3804 = fsub fast float -0.000000e+00, %3803
  %3805 = fmul fast float %3795, %3802
  %3806 = fsub fast float -0.000000e+00, %3805
  %3807 = fmul fast float %3796, %3802
  %3808 = fsub fast float -0.000000e+00, %3807
  %3809 = fdiv fast float %3804, %3797
  %3810 = fdiv fast float %3806, %3797
  %3811 = fdiv fast float %3808, %3797
  br label %3850

; <label>:3812                                    ; preds = %3788
  %3813 = fsub fast float 1.000000e+00, %3687
  %3814 = fmul fast float %3718, %3813
  %3815 = fmul fast float %3729, %3813
  %3816 = fmul fast float %3740, %3813
  %3817 = fmul fast float %3719, %3813
  %3818 = fmul fast float %3730, %3813
  %3819 = fmul fast float %3741, %3813
  %3820 = fcmp fast une float %3817, 0.000000e+00
  br i1 %3820, label %3821, label %3828, !dx.controlflow.hints !156

; <label>:3821                                    ; preds = %3812
  %3822 = fmul fast float %3817, 0x3FF7154760000000
  %3823 = call float @dx.op.unary.f32(i32 21, float %3822)  ; Exp(value)
  %3824 = fsub fast float 1.000000e+00, %3823
  %3825 = fmul fast float %3814, %3824
  %3826 = fsub fast float -0.000000e+00, %3825
  %3827 = fdiv fast float %3826, %3817
  br label %3828

; <label>:3828                                    ; preds = %3821, %3812
  %3829 = phi float [ %3827, %3821 ], [ %3814, %3812 ]
  %3830 = phi float [ %3823, %3821 ], [ 1.000000e+00, %3812 ]
  %3831 = fcmp fast une float %3818, 0.000000e+00
  br i1 %3831, label %3832, label %3839, !dx.controlflow.hints !156

; <label>:3832                                    ; preds = %3828
  %3833 = fmul fast float %3818, 0x3FF7154760000000
  %3834 = call float @dx.op.unary.f32(i32 21, float %3833)  ; Exp(value)
  %3835 = fsub fast float 1.000000e+00, %3834
  %3836 = fmul fast float %3815, %3835
  %3837 = fsub fast float -0.000000e+00, %3836
  %3838 = fdiv fast float %3837, %3818
  br label %3839

; <label>:3839                                    ; preds = %3832, %3828
  %3840 = phi float [ %3838, %3832 ], [ %3815, %3828 ]
  %3841 = phi float [ %3834, %3832 ], [ 1.000000e+00, %3828 ]
  %3842 = fcmp fast une float %3819, 0.000000e+00
  br i1 %3842, label %3843, label %3850, !dx.controlflow.hints !156

; <label>:3843                                    ; preds = %3839
  %3844 = fmul fast float %3819, 0x3FF7154760000000
  %3845 = call float @dx.op.unary.f32(i32 21, float %3844)  ; Exp(value)
  %3846 = fsub fast float 1.000000e+00, %3845
  %3847 = fmul fast float %3816, %3846
  %3848 = fsub fast float -0.000000e+00, %3847
  %3849 = fdiv fast float %3848, %3819
  br label %3850

; <label>:3850                                    ; preds = %3843, %3839, %3799, %3792
  %3851 = phi float [ %3849, %3843 ], [ %3811, %3799 ], [ %3796, %3792 ], [ %3816, %3839 ]
  %3852 = phi float [ %3840, %3843 ], [ %3810, %3799 ], [ %3795, %3792 ], [ %3840, %3839 ]
  %3853 = phi float [ %3829, %3843 ], [ %3809, %3799 ], [ %3794, %3792 ], [ %3829, %3839 ]
  %3854 = phi float [ %3845, %3843 ], [ %3801, %3799 ], [ 1.000000e+00, %3792 ], [ 1.000000e+00, %3839 ]
  %3855 = phi float [ %3841, %3843 ], [ %3801, %3799 ], [ 1.000000e+00, %3792 ], [ %3841, %3839 ]
  %3856 = phi float [ %3830, %3843 ], [ %3801, %3799 ], [ 1.000000e+00, %3792 ], [ %3830, %3839 ]
  %3857 = fmul fast float %3856, %3768
  %3858 = fmul fast float %3855, %3779
  %3859 = fmul fast float %3854, %3790
  %3860 = fadd fast float %3857, %3853
  %3861 = fadd fast float %3858, %3852
  %3862 = fadd fast float %3859, %3851
  %3863 = fmul fast float %3856, %3767
  %3864 = fmul fast float %3855, %3778
  %3865 = fmul fast float %3854, %3789
  br label %3866

; <label>:3866                                    ; preds = %3850, %3661
  %3867 = phi float [ %3667, %3661 ], [ %3865, %3850 ]
  %3868 = phi float [ %3666, %3661 ], [ %3864, %3850 ]
  %3869 = phi float [ %3665, %3661 ], [ %3863, %3850 ]
  %3870 = phi float [ %3664, %3661 ], [ %3862, %3850 ]
  %3871 = phi float [ %3663, %3661 ], [ %3861, %3850 ]
  %3872 = phi float [ %3662, %3661 ], [ %3860, %3850 ]
  %3873 = fmul fast float %3869, %3010
  %3874 = fmul fast float %3868, %3011
  %3875 = fmul fast float %3867, %3012
  %3876 = fsub fast float 1.000000e+00, %3073
  %3877 = fmul fast float %3872, %3876
  %3878 = fmul fast float %3871, %3876
  %3879 = fmul fast float %3870, %3876
  %3880 = fadd fast float %3877, %3873
  %3881 = fadd fast float %3878, %3874
  %3882 = fadd fast float %3879, %3875
  %3883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %3884 = extractvalue %dx.types.CBufRet.f32 %3883, 2
  %3885 = fmul fast float %3884, %3083
  %3886 = call float @dx.op.unary.f32(i32 7, float %3885)  ; Saturate(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %30, i32 %31, i32 undef, float %3073, float %3073, float %3073, float %3073, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %3887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3888 = extractvalue %dx.types.CBufRet.f32 %3887, 0
  %3889 = fmul fast float %3888, %3880
  %3890 = fmul fast float %3888, %3881
  %3891 = fmul fast float %3888, %3882
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %30, i32 %31, i32 undef, float %3889, float %3890, float %3891, float %3889, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %30, i32 %31, i32 undef, float %3886, float %3886, float %3886, float %3886, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!42 = !{void ()* @cs_fog_raymarching_air_clouds_heightmap_particles, !"cs_fog_raymarching_air_clouds_heightmap_particles", null, !4, !43}
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
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 1}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !66}
!66 = !{!"llvm.loop.unroll.disable"}
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
!78 = distinct !{!78, !"dx.controlflow.hints", i32 2}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 2}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 2}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 2}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 2}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 2}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 1}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 1}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 2}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 1}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 2}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 2}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 2}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 2}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 2}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 1}
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
!104 = distinct !{!104, !"dx.controlflow.hints", i32 1}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 2}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 2}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 2}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 2}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 2}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 2}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 2}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 2}
!113 = !{!114, !114, i64 0}
!114 = !{!"float", !115, i64 0}
!115 = !{!"omnipotent char", !116, i64 0}
!116 = !{!"Simple C/C++ TBAA"}
!117 = !{!118, !120, !122, !123, !125, !126, !127}
!118 = distinct !{!118, !119, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!119 = distinct !{!119, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!120 = distinct !{!120, !121, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!121 = distinct !{!121, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!122 = distinct !{!122, !121, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!123 = distinct !{!123, !124, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %scattering"}
!124 = distinct !{!124, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z"}
!125 = distinct !{!125, !124, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %transmission"}
!126 = distinct !{!126, !124, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %depthDensityWeighted"}
!127 = distinct !{!127, !124, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %rawShadowmapData"}
!128 = distinct !{!128, !"dx.controlflow.hints", i32 2}
!129 = !{!130}
!130 = distinct !{!130, !131, !"\01?sort@@YAXAIAM00@Z: %c"}
!131 = distinct !{!131, !"\01?sort@@YAXAIAM00@Z"}
!132 = !{!133, !134, !118, !120, !122, !123, !125, !126, !127}
!133 = distinct !{!133, !131, !"\01?sort@@YAXAIAM00@Z: %a"}
!134 = distinct !{!134, !131, !"\01?sort@@YAXAIAM00@Z: %b"}
!135 = !{!134}
!136 = !{!133, !130, !118, !120, !122, !123, !125, !126, !127}
!137 = !{!133}
!138 = !{!134, !130, !118, !120, !122, !123, !125, !126, !127}
!139 = !{!140}
!140 = distinct !{!140, !141, !"\01?sort@@YAXAIAM00@Z: %c"}
!141 = distinct !{!141, !"\01?sort@@YAXAIAM00@Z"}
!142 = !{!143, !144, !118, !120, !122, !123, !125, !126, !127}
!143 = distinct !{!143, !141, !"\01?sort@@YAXAIAM00@Z: %a"}
!144 = distinct !{!144, !141, !"\01?sort@@YAXAIAM00@Z: %b"}
!145 = !{!144}
!146 = !{!143, !140, !118, !120, !122, !123, !125, !126, !127}
!147 = !{!143}
!148 = !{!144, !140, !118, !120, !122, !123, !125, !126, !127}
!149 = distinct !{!149, !"dx.controlflow.hints", i32 2}
!150 = distinct !{!150, !"dx.controlflow.hints", i32 2}
!151 = distinct !{!151, !"dx.controlflow.hints", i32 1}
!152 = distinct !{!152, !"dx.controlflow.hints", i32 2}
!153 = distinct !{!153, !"dx.controlflow.hints", i32 1}
!154 = distinct !{!154, !"dx.controlflow.hints", i32 1}
!155 = distinct !{!155, !"dx.controlflow.hints", i32 1}
!156 = distinct !{!156, !"dx.controlflow.hints", i32 1}
!157 = distinct !{!157, !"dx.controlflow.hints", i32 2}
!158 = distinct !{!158, !"dx.controlflow.hints", i32 1}

