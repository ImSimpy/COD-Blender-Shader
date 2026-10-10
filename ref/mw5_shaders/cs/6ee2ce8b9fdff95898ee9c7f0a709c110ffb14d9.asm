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
; shader hash: 2cca3fc9bed4b128e406cc6f02a011ff
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
;                                   texture     f32          3d      T1             t1     1
;                                   texture     f32          3d      T2             t2     1
;                                   texture     f32          2d      T3             t8     1
;                                   texture     f32          2d      T4             t9     1
;                                   texture     f32          2d      T5            t18     1
;                                   texture  struct         r/o      T6            t25     1
;                                   texture     f32     2darray      T7            t31     1
;                                   texture     f32          3d      T8            t30     1
;                                   texture     f32          2d      T9            t29     1
;                                   texture     f32          2d     T10            t26     1
;                                   texture     u32          2d     T11            t32     1
;                                   texture     f32          3d     T12            t33     1
;                                   texture     f32          1d     T13            t14     1
;                                   texture     f32          2d     T14            t13     1
;                                   texture     f32          2d     T15             t0     1
;                                   texture    byte         r/o     T16            t17     1
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
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
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

define void @cs_fog_raymarching_air_clouds_particles() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 26, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 29, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %30 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %31 = alloca [3 x float], align 4
  %32 = alloca [3 x float], align 4
  %33 = add i32 %30, %29
  %34 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 361)  ; CBufferLoadLegacy(handle,regIndex)
  %35 = extractvalue %dx.types.CBufRet.i32 %34, 1
  %36 = add i32 %33, %35
  %37 = lshr i32 %36, 1
  %38 = and i32 %37, 1
  %39 = and i32 %36, 1
  %40 = xor i32 %38, %39
  %41 = shl i32 %29, 1
  %42 = shl i32 %30, 1
  %43 = or i32 %40, %41
  %44 = or i32 %38, %42
  %45 = uitofp i32 %43 to float
  %46 = uitofp i32 %44 to float
  %47 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %48 = extractvalue %dx.types.CBufRet.f32 %47, 2
  %49 = fmul fast float %48, 0x3FE3C6EF40000000
  %50 = frem fast float %45, 2.560000e+02
  %51 = frem fast float %46, 2.560000e+02
  %52 = fptoui float %50 to i32
  %53 = fptoui float %51 to i32
  %54 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %52, i32 %53, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %55 = extractvalue %dx.types.ResRet.f32 %54, 1
  %56 = extractvalue %dx.types.ResRet.f32 %54, 2
  %57 = extractvalue %dx.types.ResRet.f32 %54, 3
  %58 = fadd fast float %55, %49
  %59 = fadd fast float %56, %49
  %60 = fadd fast float %57, %49
  %61 = call float @dx.op.unary.f32(i32 22, float %58)  ; Frc(value)
  %62 = call float @dx.op.unary.f32(i32 22, float %59)  ; Frc(value)
  %63 = call float @dx.op.unary.f32(i32 22, float %60)  ; Frc(value)
  %64 = fadd fast float %62, %45
  %65 = fadd fast float %63, %46
  %66 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %67 = extractvalue %dx.types.CBufRet.f32 %66, 2
  %68 = extractvalue %dx.types.CBufRet.f32 %66, 3
  %69 = fmul fast float %67, %64
  %70 = fmul fast float %68, %65
  %71 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %72 = extractvalue %dx.types.CBufRet.f32 %71, 0
  %73 = fsub fast float -0.000000e+00, %72
  %74 = extractvalue %dx.types.CBufRet.f32 %71, 1
  %75 = fsub fast float -0.000000e+00, %74
  %76 = extractvalue %dx.types.CBufRet.f32 %71, 2
  %77 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %78 = extractvalue %dx.types.CBufRet.f32 %77, 1
  %79 = fmul fast float %69, 2.000000e+00
  %80 = fmul fast float %70, 2.000000e+00
  %81 = fsub fast float 1.000000e+00, %79
  %82 = fsub fast float 1.000000e+00, %80
  %83 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %84 = extractvalue %dx.types.CBufRet.f32 %83, 0
  %85 = extractvalue %dx.types.CBufRet.f32 %83, 1
  %86 = extractvalue %dx.types.CBufRet.f32 %83, 2
  %87 = fmul fast float %84, %81
  %88 = fmul fast float %85, %81
  %89 = fmul fast float %86, %81
  %90 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %91 = extractvalue %dx.types.CBufRet.f32 %90, 0
  %92 = extractvalue %dx.types.CBufRet.f32 %90, 1
  %93 = extractvalue %dx.types.CBufRet.f32 %90, 2
  %94 = fmul fast float %91, %82
  %95 = fmul fast float %92, %82
  %96 = fmul fast float %93, %82
  %97 = fadd fast float %94, %87
  %98 = fadd fast float %95, %88
  %99 = fadd fast float %96, %89
  %100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %101 = extractvalue %dx.types.CBufRet.f32 %100, 0
  %102 = extractvalue %dx.types.CBufRet.f32 %100, 1
  %103 = extractvalue %dx.types.CBufRet.f32 %100, 2
  %104 = fadd fast float %97, %101
  %105 = fadd fast float %98, %102
  %106 = fadd fast float %99, %103
  %107 = fmul fast float %104, %78
  %108 = fmul fast float %105, %78
  %109 = fmul fast float %106, %78
  %110 = fmul fast float %107, %107
  %111 = fmul fast float %108, %108
  %112 = fadd fast float %110, %111
  %113 = fmul fast float %109, %109
  %114 = fadd fast float %112, %113
  %115 = call float @dx.op.unary.f32(i32 24, float %114)  ; Sqrt(value)
  %116 = fdiv fast float 1.000000e+00, %115
  %117 = fmul fast float %107, %116
  %118 = fmul fast float %108, %116
  %119 = fmul fast float %109, %116
  %120 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %43, i32 %44, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %121 = extractvalue %dx.types.ResRet.f32 %120, 0
  %122 = fcmp fast ogt float %121, -1.000000e+00
  %123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %124 = extractvalue %dx.types.CBufRet.f32 %123, 1
  %125 = select i1 %122, float %124, float 1.000000e+00
  %126 = fadd fast float %121, 1.000000e+00
  %127 = fmul fast float %125, %126
  %128 = call float @dx.op.unary.f32(i32 6, float %127)  ; FAbs(value)
  %129 = fdiv fast float 1.000000e+00, %78
  %130 = fmul fast float %129, %115
  %131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %132 = extractvalue %dx.types.CBufRet.f32 %131, 1
  %133 = fmul fast float %132, %130
  %134 = fmul fast float %130, %128
  %135 = extractvalue %dx.types.CBufRet.f32 %123, 3
  %136 = fcmp fast oge float %128, %135
  %137 = call float @dx.op.binary.f32(i32 36, float %134, float %133)  ; FMin(a,b)
  %138 = select i1 %136, float %133, float %137
  %139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %140 = extractvalue %dx.types.CBufRet.f32 %139, 3
  %141 = fsub fast float %140, %76
  %142 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %73, float %75, float %141)  ; Dot3(ax,ay,az,bx,by,bz)
  %143 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %117, float %118, float %119)  ; Dot3(ax,ay,az,bx,by,bz)
  %144 = fdiv fast float 1.000000e+00, %143
  %145 = fmul fast float %144, %142
  %146 = fcmp fast olt float %145, 0.000000e+00
  %147 = fcmp fast ogt float %119, 0.000000e+00
  %148 = and i1 %147, %146
  br i1 %148, label %153, label %149, !dx.controlflow.hints !44

; <label>:149                                     ; preds = %0
  %150 = fcmp fast olt float %119, 0.000000e+00
  br i1 %150, label %151, label %153, !dx.controlflow.hints !45

; <label>:151                                     ; preds = %149
  %152 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %145)  ; FMax(a,b)
  br label %153

; <label>:153                                     ; preds = %151, %149, %0
  %154 = phi float [ 0.000000e+00, %0 ], [ %152, %151 ], [ 0.000000e+00, %149 ]
  %155 = phi float [ 0.000000e+00, %0 ], [ 0x47EFFFFFE0000000, %151 ], [ %145, %149 ]
  %156 = fcmp fast oeq float %155, 0.000000e+00
  br i1 %156, label %160, label %157, !dx.controlflow.hints !46

; <label>:157                                     ; preds = %153
  %158 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %154)  ; FMin(a,b)
  %159 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %155)  ; FMax(a,b)
  br label %160

; <label>:160                                     ; preds = %157, %153
  %161 = phi i32 [ 1, %157 ], [ 0, %153 ]
  %162 = phi float [ %159, %157 ], [ -1.000000e+00, %153 ]
  %163 = phi float [ %158, %157 ], [ 0x47EFFFFFE0000000, %153 ]
  %164 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %165 = extractvalue %dx.types.CBufRet.i32 %164, 3
  %166 = icmp eq i32 %165, 0
  %167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %168 = extractvalue %dx.types.CBufRet.f32 %167, 2
  %169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %170 = extractvalue %dx.types.CBufRet.f32 %169, 2
  %171 = fsub fast float %168, %76
  %172 = fadd fast float %171, %170
  br i1 %166, label %180, label %173, !dx.controlflow.hints !47

; <label>:173                                     ; preds = %160
  %174 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %73, float %75, float %172)  ; Dot3(ax,ay,az,bx,by,bz)
  %175 = fmul fast float %144, %174
  %176 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %73, float %75, float %171)  ; Dot3(ax,ay,az,bx,by,bz)
  %177 = fmul fast float %144, %176
  %178 = call float @dx.op.binary.f32(i32 36, float %175, float %177)  ; FMin(a,b)
  %179 = call float @dx.op.binary.f32(i32 35, float %175, float %177)  ; FMax(a,b)
  br label %213

; <label>:180                                     ; preds = %160
  %181 = fdiv fast float 1.000000e+00, %117
  %182 = fdiv fast float 1.000000e+00, %118
  %183 = fdiv fast float 1.000000e+00, %119
  %184 = extractvalue %dx.types.CBufRet.f32 %167, 0
  %185 = extractvalue %dx.types.CBufRet.f32 %167, 1
  %186 = extractvalue %dx.types.CBufRet.f32 %169, 0
  %187 = extractvalue %dx.types.CBufRet.f32 %169, 1
  %188 = fsub fast float %184, %72
  %189 = fmul fast float %188, %181
  %190 = fadd fast float %188, %186
  %191 = fmul fast float %190, %181
  %192 = call float @dx.op.binary.f32(i32 36, float %189, float %191)  ; FMin(a,b)
  %193 = call float @dx.op.binary.f32(i32 35, float %189, float %191)  ; FMax(a,b)
  %194 = fsub fast float %185, %74
  %195 = fmul fast float %194, %182
  %196 = fadd fast float %194, %187
  %197 = fmul fast float %196, %182
  %198 = call float @dx.op.binary.f32(i32 36, float %195, float %197)  ; FMin(a,b)
  %199 = call float @dx.op.binary.f32(i32 35, float %192, float %198)  ; FMax(a,b)
  %200 = call float @dx.op.binary.f32(i32 35, float %195, float %197)  ; FMax(a,b)
  %201 = call float @dx.op.binary.f32(i32 36, float %193, float %200)  ; FMin(a,b)
  %202 = fmul fast float %171, %183
  %203 = fmul fast float %172, %183
  %204 = call float @dx.op.binary.f32(i32 36, float %202, float %203)  ; FMin(a,b)
  %205 = call float @dx.op.binary.f32(i32 35, float %199, float %204)  ; FMax(a,b)
  %206 = call float @dx.op.binary.f32(i32 35, float %202, float %203)  ; FMax(a,b)
  %207 = call float @dx.op.binary.f32(i32 36, float %201, float %206)  ; FMin(a,b)
  %208 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %205)  ; FMax(a,b)
  %209 = fcmp fast ult float %207, %208
  br i1 %209, label %213, label %210, !dx.controlflow.hints !48

; <label>:210                                     ; preds = %180
  %211 = call float @dx.op.binary.f32(i32 36, float %205, float %207)  ; FMin(a,b)
  %212 = call float @dx.op.binary.f32(i32 35, float %205, float %207)  ; FMax(a,b)
  br label %213

; <label>:213                                     ; preds = %210, %180, %173
  %214 = phi float [ %178, %173 ], [ %211, %210 ], [ 0.000000e+00, %180 ]
  %215 = phi float [ %179, %173 ], [ %212, %210 ], [ 0.000000e+00, %180 ]
  %216 = fcmp fast oeq float %215, 0.000000e+00
  br i1 %216, label %220, label %217, !dx.controlflow.hints !49

; <label>:217                                     ; preds = %213
  %218 = call float @dx.op.binary.f32(i32 36, float %163, float %214)  ; FMin(a,b)
  %219 = call float @dx.op.binary.f32(i32 35, float %162, float %215)  ; FMax(a,b)
  br label %220

; <label>:220                                     ; preds = %217, %213
  %221 = phi i32 [ 1, %217 ], [ 0, %213 ]
  %222 = phi float [ %219, %217 ], [ %162, %213 ]
  %223 = phi float [ %218, %217 ], [ %163, %213 ]
  %224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %225 = extractvalue %dx.types.CBufRet.f32 %224, 3
  %226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %227 = extractvalue %dx.types.CBufRet.f32 %226, 0
  %228 = fsub fast float %225, %76
  %229 = fadd fast float %228, %227
  %230 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %73, float %75, float %229)  ; Dot3(ax,ay,az,bx,by,bz)
  %231 = fmul fast float %144, %230
  %232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %233 = extractvalue %dx.types.CBufRet.f32 %232, 2
  %234 = fsub fast float %233, %76
  %235 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %73, float %75, float %234)  ; Dot3(ax,ay,az,bx,by,bz)
  %236 = fmul fast float %144, %235
  %237 = call float @dx.op.binary.f32(i32 36, float %231, float %236)  ; FMin(a,b)
  %238 = call float @dx.op.binary.f32(i32 35, float %231, float %236)  ; FMax(a,b)
  %239 = call float @dx.op.binary.f32(i32 36, float %223, float %237)  ; FMin(a,b)
  %240 = call float @dx.op.binary.f32(i32 35, float %222, float %238)  ; FMax(a,b)
  %241 = fdiv fast float 1.000000e+00, %117
  %242 = fdiv fast float 1.000000e+00, %118
  %243 = fdiv fast float 1.000000e+00, %119
  %244 = call float @dx.op.binary.f32(i32 36, float %138, float %240)  ; FMin(a,b)
  %245 = call float @dx.op.binary.f32(i32 35, float %115, float %239)  ; FMax(a,b)
  %246 = extractvalue %dx.types.CBufRet.f32 %139, 0
  %247 = fmul fast float %61, 2.000000e+00
  %248 = fadd fast float %247, -1.000000e+00
  %249 = fmul fast float %246, %248
  %250 = fadd fast float %249, %245
  %251 = fcmp fast olt float %250, %244
  %252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %253 = extractvalue %dx.types.CBufRet.f32 %252, 2
  %254 = fcmp fast olt float %253, 1.000000e+00
  %255 = and i1 %254, %251
  br i1 %255, label %256, label %2434

; <label>:256                                     ; preds = %220
  %257 = fmul fast float %250, %119
  %258 = fadd fast float %257, %76
  %259 = fmul fast float %250, %118
  %260 = fadd fast float %259, %74
  %261 = fmul fast float %250, %117
  %262 = fadd fast float %261, %72
  br label %263

; <label>:263                                     ; preds = %2406, %256
  %264 = phi float [ %2408, %2406 ], [ undef, %256 ]
  %265 = phi float [ %2409, %2406 ], [ undef, %256 ]
  %266 = phi float [ %2410, %2406 ], [ undef, %256 ]
  %267 = phi float [ %2411, %2406 ], [ undef, %256 ]
  %268 = phi float [ %394, %2406 ], [ undef, %256 ]
  %269 = phi float [ %395, %2406 ], [ undef, %256 ]
  %270 = phi float [ %396, %2406 ], [ undef, %256 ]
  %271 = phi float [ %397, %2406 ], [ undef, %256 ]
  %272 = phi float [ %2412, %2406 ], [ 0.000000e+00, %256 ]
  %273 = phi float [ %2413, %2406 ], [ 1.000000e+00, %256 ]
  %274 = phi float [ %2414, %2406 ], [ 0.000000e+00, %256 ]
  %275 = phi float [ %2415, %2406 ], [ 0.000000e+00, %256 ]
  %276 = phi float [ %2416, %2406 ], [ 0.000000e+00, %256 ]
  %277 = phi float [ %2426, %2406 ], [ %262, %256 ]
  %278 = phi float [ %2427, %2406 ], [ %260, %256 ]
  %279 = phi float [ %2428, %2406 ], [ %258, %256 ]
  %280 = phi float [ %2407, %2406 ], [ %250, %256 ]
  %281 = phi i32 [ %399, %2406 ], [ 10, %256 ]
  %282 = phi float [ %2417, %2406 ], [ 0.000000e+00, %256 ]
  %283 = phi float [ %2418, %2406 ], [ 0.000000e+00, %256 ]
  %284 = phi float [ %2419, %2406 ], [ 0.000000e+00, %256 ]
  %285 = phi float [ %2420, %2406 ], [ 0.000000e+00, %256 ]
  %286 = phi float [ %2421, %2406 ], [ 0.000000e+00, %256 ]
  %287 = phi i32 [ %2422, %2406 ], [ 0, %256 ]
  %288 = fsub fast float -0.000000e+00, %278
  %289 = fsub fast float -0.000000e+00, %277
  %290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %291 = extractvalue %dx.types.CBufRet.f32 %290, 0
  %292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %293 = extractvalue %dx.types.CBufRet.f32 %292, 0
  %294 = extractvalue %dx.types.CBufRet.f32 %292, 1
  %295 = fsub fast float %277, %293
  %296 = fsub fast float %278, %294
  %297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %298 = extractvalue %dx.types.CBufRet.f32 %297, 2
  %299 = extractvalue %dx.types.CBufRet.f32 %297, 3
  %300 = fmul fast float %295, %298
  %301 = fmul fast float %296, %299
  %302 = call float @dx.op.binary.f32(i32 36, float %300, float %301)  ; FMin(a,b)
  %303 = fcmp fast olt float %302, 0.000000e+00
  %304 = call float @dx.op.binary.f32(i32 35, float %300, float %301)  ; FMax(a,b)
  %305 = fcmp fast ogt float %304, 1.000000e+00
  %306 = or i1 %303, %305
  %307 = extractvalue %dx.types.CBufRet.f32 %292, 2
  %308 = fcmp fast olt float %279, %307
  %309 = or i1 %306, %308
  %310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %311 = extractvalue %dx.types.CBufRet.f32 %310, 3
  %312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %313 = extractvalue %dx.types.CBufRet.f32 %312, 0
  %314 = fadd fast float %313, %311
  %315 = fcmp fast ogt float %279, %314
  %316 = or i1 %309, %315
  br i1 %316, label %317, label %346, !dx.controlflow.hints !50

; <label>:317                                     ; preds = %263
  %318 = extractvalue %dx.types.CBufRet.f32 %297, 0
  %319 = extractvalue %dx.types.CBufRet.f32 %297, 1
  %320 = fsub fast float %293, %277
  %321 = fmul fast float %320, %241
  %322 = fadd fast float %320, %318
  %323 = fmul fast float %322, %241
  %324 = call float @dx.op.binary.f32(i32 36, float %321, float %323)  ; FMin(a,b)
  %325 = call float @dx.op.binary.f32(i32 35, float %321, float %323)  ; FMax(a,b)
  %326 = fsub fast float %294, %278
  %327 = fmul fast float %326, %242
  %328 = fadd fast float %326, %319
  %329 = fmul fast float %328, %242
  %330 = call float @dx.op.binary.f32(i32 36, float %327, float %329)  ; FMin(a,b)
  %331 = call float @dx.op.binary.f32(i32 35, float %324, float %330)  ; FMax(a,b)
  %332 = call float @dx.op.binary.f32(i32 35, float %327, float %329)  ; FMax(a,b)
  %333 = call float @dx.op.binary.f32(i32 36, float %325, float %332)  ; FMin(a,b)
  %334 = fsub fast float %307, %279
  %335 = fmul fast float %334, %243
  %336 = fsub fast float %311, %279
  %337 = fadd fast float %336, %313
  %338 = fmul fast float %337, %243
  %339 = call float @dx.op.binary.f32(i32 36, float %335, float %338)  ; FMin(a,b)
  %340 = call float @dx.op.binary.f32(i32 35, float %331, float %339)  ; FMax(a,b)
  %341 = call float @dx.op.binary.f32(i32 35, float %335, float %338)  ; FMax(a,b)
  %342 = call float @dx.op.binary.f32(i32 36, float %333, float %341)  ; FMin(a,b)
  %343 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %340)  ; FMax(a,b)
  %344 = fcmp fast oge float %342, %343
  %345 = select i1 %344, float %340, float 1.000000e+07
  br label %392

; <label>:346                                     ; preds = %263
  %347 = fsub fast float 1.000000e+00, %301
  %348 = icmp eq i32 %281, 0
  br i1 %348, label %377, label %349

; <label>:349                                     ; preds = %346
  br label %350

; <label>:350                                     ; preds = %373, %349
  %351 = phi i32 [ %374, %373 ], [ %281, %349 ]
  %352 = uitofp i32 %351 to float
  %353 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %26, float %300, float %347, float undef, float undef, i32 0, i32 0, i32 undef, float %352)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %354 = extractvalue %dx.types.ResRet.f32 %353, 0
  %355 = extractvalue %dx.types.ResRet.f32 %353, 1
  %356 = extractvalue %dx.types.ResRet.f32 %353, 2
  %357 = fcmp fast oeq float %354, 0.000000e+00
  %358 = fcmp ule float %279, %356
  %359 = fcmp uge float %279, %355
  %360 = or i1 %359, %358
  %361 = or i1 %357, %360
  br i1 %361, label %362, label %373, !dx.controlflow.hints !51

; <label>:362                                     ; preds = %350
  %363 = extractvalue %dx.types.ResRet.f32 %353, 3
  %364 = extractvalue %dx.types.CBufRet.f32 %297, 0
  %365 = and i32 %351, 31
  %366 = lshr i32 1024, %365
  %367 = uitofp i32 %366 to float
  %368 = fdiv fast float %364, %367
  %369 = add i32 %351, 1
  %370 = uitofp i32 %369 to float
  %371 = call float @dx.op.binary.f32(i32 36, float 1.000000e+01, float %370)  ; FMin(a,b)
  %372 = fptosi float %371 to i32
  br label %392

; <label>:373                                     ; preds = %350
  %374 = add i32 %351, -1
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %376, label %350, !llvm.loop !52

; <label>:376                                     ; preds = %373
  br label %377

; <label>:377                                     ; preds = %376, %346
  %378 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %25, float %300, float %347, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %379 = extractvalue %dx.types.ResRet.f32 %378, 0
  %380 = extractvalue %dx.types.ResRet.f32 %378, 1
  %381 = extractvalue %dx.types.ResRet.f32 %378, 2
  %382 = extractvalue %dx.types.ResRet.f32 %378, 3
  %383 = extractvalue %dx.types.CBufRet.f32 %297, 0
  %384 = fmul fast float %383, 9.765625e-04
  %385 = fcmp fast oeq float %379, 0.000000e+00
  %386 = fcmp ule float %279, %381
  %387 = fcmp uge float %279, %380
  %388 = or i1 %387, %386
  %389 = or i1 %385, %388
  %390 = zext i1 %389 to i32
  %391 = xor i32 %390, 1
  br label %392

; <label>:392                                     ; preds = %377, %362, %317
  %393 = phi float [ %345, %317 ], [ %368, %362 ], [ %384, %377 ]
  %394 = phi float [ %268, %317 ], [ %354, %362 ], [ %379, %377 ]
  %395 = phi float [ %269, %317 ], [ %355, %362 ], [ %380, %377 ]
  %396 = phi float [ %270, %317 ], [ %356, %362 ], [ %381, %377 ]
  %397 = phi float [ %271, %317 ], [ %363, %362 ], [ %382, %377 ]
  %398 = phi i32 [ 0, %317 ], [ 0, %362 ], [ %391, %377 ]
  %399 = phi i32 [ 10, %317 ], [ %372, %362 ], [ 1, %377 ]
  %400 = icmp eq i32 %398, 0
  %401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %402 = extractvalue %dx.types.CBufRet.f32 %401, 2
  %403 = call float @dx.op.binary.f32(i32 35, float %393, float %402)  ; FMax(a,b)
  %404 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %403)  ; FMin(a,b)
  %405 = icmp eq i32 %161, 0
  br i1 %405, label %418, label %406, !dx.controlflow.hints !54

; <label>:406                                     ; preds = %392
  %407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %408 = extractvalue %dx.types.CBufRet.f32 %407, 3
  %409 = extractvalue %dx.types.CBufRet.f32 %407, 2
  %410 = fmul fast float %408, %280
  %411 = fdiv fast float %410, %244
  %412 = fadd fast float %411, 1.000000e+00
  %413 = call float @dx.op.unary.f32(i32 23, float %412)  ; Log(value)
  %414 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %413)  ; FMin(a,b)
  %415 = fmul fast float %409, %244
  %416 = fmul fast float %415, %414
  %417 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %416)  ; FMin(a,b)
  br label %418

; <label>:418                                     ; preds = %406, %392
  %419 = phi float [ %417, %406 ], [ 0x47EFFFFFE0000000, %392 ]
  %420 = icmp eq i32 %221, 0
  br i1 %420, label %476, label %421, !dx.controlflow.hints !55

; <label>:421                                     ; preds = %418
  %422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %423 = extractvalue %dx.types.CBufRet.f32 %422, 0
  %424 = extractvalue %dx.types.CBufRet.f32 %422, 1
  %425 = extractvalue %dx.types.CBufRet.f32 %422, 2
  %426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %427 = extractvalue %dx.types.CBufRet.f32 %426, 0
  %428 = extractvalue %dx.types.CBufRet.f32 %426, 1
  %429 = extractvalue %dx.types.CBufRet.f32 %426, 2
  %430 = fsub fast float %277, %427
  %431 = fsub fast float %278, %428
  %432 = fsub fast float %279, %429
  %433 = fmul fast float %430, %423
  %434 = fmul fast float %431, %424
  %435 = fmul fast float %432, %425
  %436 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %437 = extractvalue %dx.types.CBufRet.i32 %436, 3
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %442, label %439, !dx.controlflow.hints !56

; <label>:439                                     ; preds = %421
  %440 = call float @dx.op.unary.f32(i32 22, float %433)  ; Frc(value)
  %441 = call float @dx.op.unary.f32(i32 22, float %434)  ; Frc(value)
  br label %442

; <label>:442                                     ; preds = %439, %421
  %443 = phi float [ %440, %439 ], [ %433, %421 ]
  %444 = phi float [ %441, %439 ], [ %434, %421 ]
  %445 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %23, float %443, float %444, float %435, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %446 = extractvalue %dx.types.ResRet.f32 %445, 0
  %447 = fmul fast float %446, 2.000000e+00
  %448 = fadd fast float %447, -1.000000e+00
  %449 = extractvalue %dx.types.CBufRet.f32 %422, 3
  %450 = fmul fast float %448, %449
  %451 = fcmp fast olt float %450, 0.000000e+00
  %452 = fcmp fast oge float %435, 0.000000e+00
  %453 = fcmp fast ole float %435, 1.000000e+00
  br i1 %438, label %456, label %454, !dx.controlflow.hints !57

; <label>:454                                     ; preds = %442
  %455 = and i1 %452, %453
  br label %466

; <label>:456                                     ; preds = %442
  %457 = fcmp fast oge float %433, 0.000000e+00
  %458 = fcmp fast oge float %434, 0.000000e+00
  %459 = and i1 %457, %458
  %460 = and i1 %452, %459
  %461 = fcmp fast ole float %433, 1.000000e+00
  %462 = fcmp fast ole float %434, 1.000000e+00
  %463 = and i1 %461, %462
  %464 = and i1 %453, %463
  %465 = and i1 %460, %464
  br label %466

; <label>:466                                     ; preds = %456, %454
  %467 = phi i1 [ %455, %454 ], [ %465, %456 ]
  %468 = and i1 %451, %467
  %469 = call float @dx.op.unary.f32(i32 6, float %450)  ; FAbs(value)
  %470 = extractvalue %dx.types.CBufRet.f32 %401, 1
  %471 = extractvalue %dx.types.CBufRet.f32 %401, 0
  %472 = call float @dx.op.binary.f32(i32 35, float %469, float %471)  ; FMax(a,b)
  %473 = select i1 %468, float %470, float %472
  %474 = zext i1 %468 to i32
  %475 = call float @dx.op.binary.f32(i32 36, float %404, float %473)  ; FMin(a,b)
  br label %476

; <label>:476                                     ; preds = %466, %418
  %477 = phi i32 [ %474, %466 ], [ 0, %418 ]
  %478 = phi float [ %475, %466 ], [ %404, %418 ]
  %479 = extractvalue %dx.types.CBufRet.f32 %290, 2
  %480 = fmul fast float %479, %280
  %481 = call float @dx.op.unary.f32(i32 23, float %480)  ; Log(value)
  %482 = fmul fast float %481, 0x3FE62E4300000000
  %483 = call float @dx.op.binary.f32(i32 35, float %482, float 1.000000e+00)  ; FMax(a,b)
  %484 = fmul fast float %483, %419
  %485 = call float @dx.op.binary.f32(i32 36, float %484, float %478)  ; FMin(a,b)
  %486 = call float @dx.op.binary.f32(i32 35, float %485, float %291)  ; FMax(a,b)
  %487 = fadd fast float %244, 0x3F1A36E2E0000000
  %488 = fsub fast float %487, %280
  %489 = call float @dx.op.binary.f32(i32 36, float %488, float %486)  ; FMin(a,b)
  br i1 %405, label %544, label %490, !dx.controlflow.hints !58

; <label>:490                                     ; preds = %476
  %491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %492 = extractvalue %dx.types.CBufRet.f32 %491, 0
  %493 = fsub fast float %492, %279
  %494 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %289, float %288, float %493)  ; Dot3(ax,ay,az,bx,by,bz)
  %495 = fmul fast float %144, %494
  %496 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %495)  ; FMax(a,b)
  %497 = fcmp fast olt float %119, 0.000000e+00
  %498 = call float @dx.op.binary.f32(i32 36, float %489, float %496)  ; FMin(a,b)
  br i1 %497, label %500, label %499, !dx.controlflow.hints !59

; <label>:499                                     ; preds = %490
  br label %500

; <label>:500                                     ; preds = %499, %490
  %501 = phi float [ 0.000000e+00, %499 ], [ %498, %490 ]
  %502 = phi float [ %498, %499 ], [ %489, %490 ]
  %503 = phi float [ %498, %499 ], [ 0.000000e+00, %490 ]
  %504 = phi float [ %489, %499 ], [ %498, %490 ]
  %505 = fsub fast float %502, %501
  %506 = extractvalue %dx.types.CBufRet.f32 %491, 1
  %507 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %506)  ; FMin(a,b)
  %508 = fsub fast float %279, %492
  %509 = fmul fast float %507, 0x3FF7154760000000
  %510 = fmul fast float %509, %508
  %511 = call float @dx.op.unary.f32(i32 21, float %510)  ; Exp(value)
  %512 = fmul fast float %119, 0x3FF7154760000000
  %513 = fmul fast float %512, %504
  %514 = fmul fast float %513, %507
  %515 = call float @dx.op.unary.f32(i32 21, float %514)  ; Exp(value)
  %516 = fmul fast float %512, %503
  %517 = fmul fast float %516, %507
  %518 = call float @dx.op.unary.f32(i32 21, float %517)  ; Exp(value)
  %519 = fsub fast float %515, %518
  %520 = fmul fast float %519, %511
  %521 = fmul fast float %507, %119
  %522 = fdiv fast float %520, %521
  %523 = fadd fast float %505, %522
  %524 = call float @dx.op.unary.f32(i32 6, float %119)  ; FAbs(value)
  %525 = fcmp fast olt float %524, 0x3F0FFB4800000000
  %526 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %508)  ; FMax(a,b)
  %527 = fmul fast float %526, 0x3FF7154760000000
  %528 = fmul fast float %527, %506
  %529 = call float @dx.op.unary.f32(i32 21, float %528)  ; Exp(value)
  %530 = fmul fast float %529, %489
  %531 = select i1 %525, float %530, float %523
  %532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %533 = extractvalue %dx.types.CBufRet.f32 %532, 1
  %534 = fmul fast float %531, %533
  %535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %536 = extractvalue %dx.types.CBufRet.f32 %535, 0
  %537 = extractvalue %dx.types.CBufRet.f32 %535, 1
  %538 = extractvalue %dx.types.CBufRet.f32 %535, 2
  %539 = extractvalue %dx.types.CBufRet.f32 %532, 2
  %540 = fmul fast float %536, %534
  %541 = fmul fast float %537, %534
  %542 = fmul fast float %538, %534
  %543 = fmul fast float %539, %534
  br label %544

; <label>:544                                     ; preds = %500, %476
  %545 = phi float [ %534, %500 ], [ 0.000000e+00, %476 ]
  %546 = phi float [ %543, %500 ], [ 0.000000e+00, %476 ]
  %547 = phi float [ %540, %500 ], [ 0.000000e+00, %476 ]
  %548 = phi float [ %541, %500 ], [ 0.000000e+00, %476 ]
  %549 = phi float [ %542, %500 ], [ 0.000000e+00, %476 ]
  %550 = icmp eq i32 %477, 0
  br i1 %550, label %745, label %551, !dx.controlflow.hints !60

; <label>:551                                     ; preds = %544
  %552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %553 = extractvalue %dx.types.CBufRet.f32 %552, 3
  %554 = fmul fast float %553, %280
  %555 = fcmp fast oeq float %554, 0.000000e+00
  br i1 %555, label %570, label %556, !dx.controlflow.hints !61

; <label>:556                                     ; preds = %551
  %557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %558 = extractvalue %dx.types.CBufRet.f32 %557, 3
  %559 = fmul fast float %558, %554
  %560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %561 = extractvalue %dx.types.CBufRet.f32 %560, 0
  %562 = extractvalue %dx.types.CBufRet.f32 %560, 1
  %563 = extractvalue %dx.types.CBufRet.f32 %560, 2
  %564 = fmul fast float %561, %559
  %565 = fmul fast float %562, %559
  %566 = fmul fast float %563, %559
  %567 = call float @dx.op.unary.f32(i32 23, float %564)  ; Log(value)
  %568 = call float @dx.op.unary.f32(i32 23, float %565)  ; Log(value)
  %569 = call float @dx.op.unary.f32(i32 23, float %566)  ; Log(value)
  br label %570

; <label>:570                                     ; preds = %556, %551
  %571 = phi float [ %567, %556 ], [ 0.000000e+00, %551 ]
  %572 = phi float [ %568, %556 ], [ 0.000000e+00, %551 ]
  %573 = phi float [ %569, %556 ], [ 0.000000e+00, %551 ]
  %574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %575 = extractvalue %dx.types.CBufRet.f32 %574, 0
  %576 = extractvalue %dx.types.CBufRet.f32 %574, 1
  %577 = extractvalue %dx.types.CBufRet.f32 %574, 2
  %578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %579 = extractvalue %dx.types.CBufRet.f32 %578, 0
  %580 = extractvalue %dx.types.CBufRet.f32 %578, 1
  %581 = extractvalue %dx.types.CBufRet.f32 %578, 2
  %582 = fsub fast float %277, %579
  %583 = fsub fast float %278, %580
  %584 = fsub fast float %279, %581
  %585 = fmul fast float %582, %575
  %586 = fmul fast float %583, %576
  %587 = fmul fast float %584, %577
  %588 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %589 = extractvalue %dx.types.CBufRet.i32 %588, 0
  %590 = extractvalue %dx.types.CBufRet.i32 %588, 1
  %591 = uitofp i32 %589 to float
  %592 = uitofp i32 %590 to float
  %593 = fmul fast float %585, %591
  %594 = fmul fast float %586, %592
  %595 = fadd fast float %593, 5.000000e-01
  %596 = fadd fast float %594, 5.000000e-01
  %597 = call float @dx.op.unary.f32(i32 22, float %595)  ; Frc(value)
  %598 = call float @dx.op.unary.f32(i32 22, float %596)  ; Frc(value)
  %599 = call float @dx.op.unary.f32(i32 27, float %595)  ; Round_ni(value)
  %600 = call float @dx.op.unary.f32(i32 27, float %596)  ; Round_ni(value)
  %601 = fadd fast float %599, 1.000000e+00
  %602 = fadd fast float %600, 1.000000e+00
  %603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %604 = extractvalue %dx.types.CBufRet.f32 %603, 0
  %605 = extractvalue %dx.types.CBufRet.f32 %603, 1
  %606 = fmul fast float %604, %601
  %607 = fmul fast float %605, %602
  %608 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %24, float %606, float %607, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %609 = extractvalue %dx.types.ResRet.f32 %608, 0
  %610 = extractvalue %dx.types.ResRet.f32 %608, 1
  %611 = extractvalue %dx.types.ResRet.f32 %608, 2
  %612 = extractvalue %dx.types.ResRet.f32 %608, 3
  %613 = extractvalue %dx.types.CBufRet.i32 %588, 2
  %614 = extractvalue %dx.types.CBufRet.f32 %603, 2
  %615 = uitofp i32 %613 to float
  %616 = fadd fast float %615, -1.000000e+00
  %617 = fmul fast float %616, %609
  %618 = fmul fast float %616, %610
  %619 = fmul fast float %616, %611
  %620 = fmul fast float %616, %612
  %621 = fadd fast float %617, 5.000000e-01
  %622 = fadd fast float %618, 5.000000e-01
  %623 = fadd fast float %619, 5.000000e-01
  %624 = fadd fast float %620, 5.000000e-01
  %625 = fptoui float %621 to i32
  %626 = fptoui float %622 to i32
  %627 = fptoui float %623 to i32
  %628 = fptoui float %624 to i32
  %629 = uitofp i32 %625 to float
  %630 = uitofp i32 %626 to float
  %631 = uitofp i32 %627 to float
  %632 = uitofp i32 %628 to float
  %633 = fadd fast float %629, 5.000000e-01
  %634 = fadd fast float %630, 5.000000e-01
  %635 = fadd fast float %631, 5.000000e-01
  %636 = fadd fast float %632, 5.000000e-01
  %637 = fmul fast float %633, %614
  %638 = fmul fast float %634, %614
  %639 = fmul fast float %635, %614
  %640 = fmul fast float %636, %614
  %641 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %25, float %637, float %587, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %642 = extractvalue %dx.types.ResRet.f32 %641, 0
  %643 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %25, float %638, float %587, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %644 = extractvalue %dx.types.ResRet.f32 %643, 0
  %645 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %25, float %639, float %587, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %646 = extractvalue %dx.types.ResRet.f32 %645, 0
  %647 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %25, float %640, float %587, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %648 = extractvalue %dx.types.ResRet.f32 %647, 0
  %649 = fsub fast float %646, %648
  %650 = fmul fast float %649, %597
  %651 = fadd fast float %650, %648
  %652 = fsub fast float %644, %642
  %653 = fmul fast float %652, %597
  %654 = fadd fast float %653, %642
  %655 = fsub fast float %654, %651
  %656 = fmul fast float %655, %598
  %657 = fadd fast float %656, %651
  %658 = fcmp fast ogt float %657, 0.000000e+00
  br i1 %658, label %659, label %727, !dx.controlflow.hints !62

; <label>:659                                     ; preds = %570
  %660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %661 = extractvalue %dx.types.CBufRet.f32 %660, 0
  %662 = extractvalue %dx.types.CBufRet.f32 %660, 1
  %663 = extractvalue %dx.types.CBufRet.f32 %660, 2
  %664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %665 = extractvalue %dx.types.CBufRet.f32 %664, 0
  %666 = extractvalue %dx.types.CBufRet.f32 %664, 1
  %667 = extractvalue %dx.types.CBufRet.f32 %664, 2
  %668 = fmul fast float %583, %575
  %669 = fmul fast float %584, %575
  %670 = fadd fast float %585, %665
  %671 = fadd fast float %668, %666
  %672 = fadd fast float %669, %667
  %673 = fmul fast float %670, %661
  %674 = fmul fast float %671, %661
  %675 = fmul fast float %672, %661
  %676 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %22, float %673, float %674, float %675, float undef, i32 0, i32 0, i32 0, float %571)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %677 = extractvalue %dx.types.ResRet.f32 %676, 0
  %678 = fmul fast float %670, %662
  %679 = fmul fast float %671, %662
  %680 = fmul fast float %672, %662
  %681 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %22, float %678, float %679, float %680, float undef, i32 0, i32 0, i32 0, float %572)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %682 = extractvalue %dx.types.ResRet.f32 %681, 1
  %683 = fmul fast float %670, %663
  %684 = fmul fast float %671, %663
  %685 = fmul fast float %672, %663
  %686 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %22, float %683, float %684, float %685, float undef, i32 0, i32 0, i32 0, float %573)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %687 = extractvalue %dx.types.ResRet.f32 %686, 2
  %688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %689 = extractvalue %dx.types.CBufRet.f32 %688, 1
  %690 = fmul fast float %682, %677
  %691 = fmul fast float %690, %687
  %692 = call float @dx.op.unary.f32(i32 23, float %691)  ; Log(value)
  %693 = fmul fast float %692, %689
  %694 = call float @dx.op.unary.f32(i32 21, float %693)  ; Exp(value)
  %695 = extractvalue %dx.types.CBufRet.f32 %688, 2
  %696 = fmul fast float %657, %657
  %697 = fmul fast float %696, %694
  %698 = fmul fast float %697, %695
  %699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %700 = extractvalue %dx.types.CBufRet.f32 %699, 3
  %701 = fmul fast float %700, %698
  %702 = bitcast float %701 to i32
  %703 = sitofp i32 %702 to float
  %704 = fptosi float %703 to i32
  %705 = bitcast i32 %704 to float
  %706 = fsub fast float 1.000000e+00, %698
  %707 = bitcast float %706 to i32
  %708 = sitofp i32 %707 to float
  %709 = fptosi float %708 to i32
  %710 = bitcast i32 %709 to float
  %711 = fadd fast float %705, %710
  %712 = bitcast float %711 to i32
  %713 = sub nsw i32 2129859010, %712
  %714 = bitcast i32 %713 to float
  %715 = fmul fast float %714, %705
  %716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %717 = extractvalue %dx.types.CBufRet.f32 %716, 2
  %718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %719 = extractvalue %dx.types.CBufRet.f32 %718, 0
  %720 = fmul fast float %715, %719
  %721 = fadd fast float %720, 1.000000e+00
  %722 = bitcast float %721 to i32
  %723 = sub nsw i32 2129859010, %722
  %724 = bitcast i32 %723 to float
  %725 = fmul fast float %715, %717
  %726 = fmul fast float %725, %724
  br label %727

; <label>:727                                     ; preds = %659, %570
  %728 = phi float [ %726, %659 ], [ %657, %570 ]
  %729 = fmul fast float %728, %489
  %730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %731 = extractvalue %dx.types.CBufRet.f32 %730, 0
  %732 = extractvalue %dx.types.CBufRet.f32 %730, 1
  %733 = extractvalue %dx.types.CBufRet.f32 %730, 2
  %734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %735 = extractvalue %dx.types.CBufRet.f32 %734, 1
  %736 = fmul fast float %731, %729
  %737 = fmul fast float %732, %729
  %738 = fmul fast float %733, %729
  %739 = fadd fast float %736, %547
  %740 = fadd fast float %737, %548
  %741 = fadd fast float %738, %549
  %742 = fmul fast float %735, %729
  %743 = fadd fast float %742, %546
  %744 = fadd fast float %729, %545
  br label %745

; <label>:745                                     ; preds = %727, %544
  %746 = phi float [ %744, %727 ], [ %545, %544 ]
  %747 = phi float [ %743, %727 ], [ %546, %544 ]
  %748 = phi float [ %739, %727 ], [ %547, %544 ]
  %749 = phi float [ %740, %727 ], [ %548, %544 ]
  %750 = phi float [ %741, %727 ], [ %549, %544 ]
  br i1 %400, label %893, label %751, !dx.controlflow.hints !63

; <label>:751                                     ; preds = %745
  %752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 411)  ; CBufferLoadLegacy(handle,regIndex)
  %753 = extractvalue %dx.types.CBufRet.f32 %752, 0
  %754 = extractvalue %dx.types.CBufRet.f32 %752, 1
  %755 = extractvalue %dx.types.CBufRet.f32 %752, 2
  %756 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %757 = extractvalue %dx.types.CBufRet.i32 %756, 0
  %758 = icmp ne i32 %757, 0
  %759 = zext i1 %758 to i32
  %760 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %761 = extractvalue %dx.types.CBufRet.i32 %760, 0
  %762 = icmp eq i32 %761, 0
  br i1 %762, label %796, label %763

; <label>:763                                     ; preds = %751
  br label %764

; <label>:764                                     ; preds = %791, %763
  %765 = phi i32 [ %792, %791 ], [ 0, %763 ]
  %766 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %765, i32 0)  ; BufferLoad(srv,index,wot)
  %767 = extractvalue %dx.types.ResRet.f32 %766, 0
  %768 = extractvalue %dx.types.ResRet.f32 %766, 1
  %769 = extractvalue %dx.types.ResRet.f32 %766, 2
  %770 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %765, i32 16)  ; BufferLoad(srv,index,wot)
  %771 = extractvalue %dx.types.ResRet.f32 %770, 0
  %772 = extractvalue %dx.types.ResRet.f32 %770, 1
  %773 = extractvalue %dx.types.ResRet.f32 %770, 2
  %774 = fsub fast float %767, %771
  %775 = fsub fast float %768, %772
  %776 = fsub fast float %769, %773
  %777 = fadd fast float %771, %767
  %778 = fadd fast float %772, %768
  %779 = fadd fast float %773, %769
  %780 = fcmp fast olt float %277, %774
  %781 = fcmp fast olt float %278, %775
  %782 = fcmp fast olt float %279, %776
  %783 = or i1 %780, %781
  %784 = or i1 %782, %783
  %785 = fcmp fast ogt float %277, %777
  %786 = fcmp fast ogt float %278, %778
  %787 = fcmp fast ogt float %279, %779
  %788 = or i1 %785, %786
  %789 = or i1 %787, %788
  %790 = or i1 %784, %789
  br i1 %790, label %791, label %794, !dx.controlflow.hints !64

; <label>:791                                     ; preds = %764
  %792 = add nuw i32 %765, 1
  %793 = icmp ult i32 %792, %761
  br i1 %793, label %764, label %794

; <label>:794                                     ; preds = %791, %764
  %795 = phi i32 [ 255, %791 ], [ %765, %764 ]
  br label %796

; <label>:796                                     ; preds = %794, %751
  %797 = phi i32 [ 255, %751 ], [ %795, %794 ]
  %798 = icmp eq i32 %797, 255
  br i1 %798, label %808, label %799, !dx.controlflow.hints !65

; <label>:799                                     ; preds = %796
  %800 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %797, i32 32)  ; BufferLoad(srv,index,wot)
  %801 = extractvalue %dx.types.ResRet.f32 %800, 0
  %802 = extractvalue %dx.types.ResRet.f32 %800, 1
  %803 = extractvalue %dx.types.ResRet.f32 %800, 2
  %804 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %797, i32 156)  ; BufferLoad(srv,index,wot)
  %805 = extractvalue %dx.types.ResRet.i32 %804, 0
  %806 = icmp ne i32 %805, 0
  %807 = zext i1 %806 to i32
  br label %808

; <label>:808                                     ; preds = %799, %796
  %809 = phi float [ %801, %799 ], [ %753, %796 ]
  %810 = phi float [ %802, %799 ], [ %754, %796 ]
  %811 = phi float [ %803, %799 ], [ %755, %796 ]
  %812 = phi i32 [ %807, %799 ], [ %759, %796 ]
  %813 = icmp eq i32 %812, 0
  br i1 %813, label %814, label %883, !dx.controlflow.hints !66

; <label>:814                                     ; preds = %808
  %815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %816 = extractvalue %dx.types.CBufRet.f32 %815, 3
  %817 = extractvalue %dx.types.CBufRet.f32 %310, 0
  %818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %819 = extractvalue %dx.types.CBufRet.f32 %818, 2
  %820 = extractvalue %dx.types.CBufRet.f32 %818, 3
  br i1 %798, label %831, label %821, !dx.controlflow.hints !67

; <label>:821                                     ; preds = %814
  %822 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %797, i32 60)  ; BufferLoad(srv,index,wot)
  %823 = extractvalue %dx.types.ResRet.f32 %822, 0
  %824 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %797, i32 64)  ; BufferLoad(srv,index,wot)
  %825 = extractvalue %dx.types.ResRet.f32 %824, 0
  %826 = extractvalue %dx.types.ResRet.f32 %824, 1
  %827 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %797, i32 72)  ; BufferLoad(srv,index,wot)
  %828 = extractvalue %dx.types.ResRet.f32 %827, 0
  %829 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %797, i32 96)  ; BufferLoad(srv,index,wot)
  %830 = extractvalue %dx.types.ResRet.f32 %829, 0
  br label %831

; <label>:831                                     ; preds = %821, %814
  %832 = phi float [ %823, %821 ], [ %313, %814 ]
  %833 = phi float [ %828, %821 ], [ %311, %814 ]
  %834 = phi float [ %830, %821 ], [ %817, %814 ]
  %835 = phi float [ %825, %821 ], [ %819, %814 ]
  %836 = phi float [ %826, %821 ], [ %820, %814 ]
  %837 = call float @dx.op.binary.f32(i32 35, float %394, float 0.000000e+00)  ; FMax(a,b)
  %838 = call float @dx.op.binary.f32(i32 36, float %837, float 1.000000e+00)  ; FMin(a,b)
  %839 = call float @dx.op.unary.f32(i32 24, float %838)  ; Sqrt(value)
  %840 = call float @dx.op.binary.f32(i32 35, float %397, float 0x3F847AE140000000)  ; FMax(a,b)
  %841 = fsub fast float %395, %279
  %842 = fsub fast float %279, %396
  %843 = call float @dx.op.binary.f32(i32 36, float %842, float %841)  ; FMin(a,b)
  %844 = fdiv fast float %843, %840
  %845 = call float @dx.op.unary.f32(i32 7, float %844)  ; Saturate(value)
  %846 = fsub fast float %279, %833
  %847 = fdiv fast float %846, %832
  %848 = call float @dx.op.unary.f32(i32 7, float %847)  ; Saturate(value)
  %849 = fsub fast float 1.000000e+00, %848
  %850 = fmul float %845, %849
  %851 = fmul float %850, %850
  %852 = fmul fast float %839, %816
  %853 = fmul fast float %852, %851
  %854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %855 = extractvalue %dx.types.CBufRet.f32 %854, 2
  %856 = extractvalue %dx.types.CBufRet.f32 %854, 1
  %857 = fsub fast float %853, %856
  %858 = fsub fast float %855, %856
  %859 = fdiv fast float %857, %858
  %860 = call float @dx.op.unary.f32(i32 7, float %859)  ; Saturate(value)
  %861 = fmul fast float %860, %834
  %862 = fcmp fast ogt float %836, 0.000000e+00
  br i1 %862, label %863, label %883, !dx.controlflow.hints !68

; <label>:863                                     ; preds = %831
  %864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %865 = extractvalue %dx.types.CBufRet.f32 %864, 0
  %866 = extractvalue %dx.types.CBufRet.f32 %864, 1
  %867 = extractvalue %dx.types.CBufRet.f32 %864, 2
  %868 = fsub fast float %277, %865
  %869 = fsub fast float %278, %866
  %870 = fsub fast float %279, %867
  %871 = fmul fast float %868, %868
  %872 = fmul fast float %869, %869
  %873 = fadd fast float %871, %872
  %874 = fmul fast float %870, %870
  %875 = fadd fast float %873, %874
  %876 = call float @dx.op.unary.f32(i32 24, float %875)  ; Sqrt(value)
  %877 = fsub fast float %876, %835
  %878 = fsub fast float %836, %835
  %879 = fdiv fast float %877, %878
  %880 = call float @dx.op.unary.f32(i32 7, float %879)  ; Saturate(value)
  %881 = fmul fast float %880, %880
  %882 = fmul fast float %881, %861
  br label %883

; <label>:883                                     ; preds = %863, %831, %808
  %884 = phi float [ 0.000000e+00, %808 ], [ %882, %863 ], [ %861, %831 ]
  %885 = fmul fast float %884, %489
  %886 = fmul fast float %885, %809
  %887 = fmul fast float %885, %810
  %888 = fmul fast float %885, %811
  %889 = fadd fast float %886, %748
  %890 = fadd fast float %887, %749
  %891 = fadd fast float %888, %750
  %892 = fadd fast float %885, %746
  br label %893

; <label>:893                                     ; preds = %883, %745
  %894 = phi float [ %892, %883 ], [ %746, %745 ]
  %895 = phi float [ %889, %883 ], [ %748, %745 ]
  %896 = phi float [ %890, %883 ], [ %749, %745 ]
  %897 = phi float [ %891, %883 ], [ %750, %745 ]
  %898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %899 = extractvalue %dx.types.CBufRet.f32 %898, 1
  %900 = fcmp fast ogt float %894, %899
  br i1 %900, label %901, label %907, !dx.controlflow.hints !69

; <label>:901                                     ; preds = %893
  %902 = fdiv fast float 1.000000e+00, %894
  %903 = fmul fast float %902, %895
  %904 = fmul fast float %902, %896
  %905 = fmul fast float %902, %897
  %906 = fmul fast float %902, %747
  br label %907

; <label>:907                                     ; preds = %901, %893
  %908 = phi float [ %906, %901 ], [ %747, %893 ]
  %909 = phi float [ %903, %901 ], [ %895, %893 ]
  %910 = phi float [ %904, %901 ], [ %896, %893 ]
  %911 = phi float [ %905, %901 ], [ %897, %893 ]
  br i1 %900, label %914, label %912, !dx.controlflow.hints !70

; <label>:912                                     ; preds = %907
  %913 = fadd fast float %489, %280
  br label %2406

; <label>:914                                     ; preds = %907
  %915 = fmul fast float %894, 0xBFF7154760000000
  %916 = call float @dx.op.unary.f32(i32 21, float %915)  ; Exp(value)
  %917 = call float @dx.op.unary.f32(i32 7, float %916)  ; Saturate(value)
  %918 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %919 = extractvalue %dx.types.CBufRet.i32 %918, 0
  %920 = icmp eq i32 %919, 1
  br i1 %920, label %921, label %956, !dx.controlflow.hints !71

; <label>:921                                     ; preds = %914
  %922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %923 = extractvalue %dx.types.CBufRet.f32 %922, 0
  %924 = extractvalue %dx.types.CBufRet.f32 %922, 1
  %925 = fsub fast float %277, %923
  %926 = fsub fast float %278, %924
  %927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %928 = extractvalue %dx.types.CBufRet.f32 %927, 0
  %929 = extractvalue %dx.types.CBufRet.f32 %927, 1
  %930 = fmul fast float %925, %928
  %931 = fmul fast float %926, %929
  %932 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %25, float %930, float %931, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %933 = extractvalue %dx.types.ResRet.f32 %932, 0
  %934 = fcmp fast ogt float %933, 0.000000e+00
  %935 = extractvalue %dx.types.CBufRet.i32 %918, 3
  %936 = icmp ne i32 %935, 0
  %937 = and i1 %934, %936
  br i1 %937, label %938, label %956, !dx.controlflow.hints !72

; <label>:938                                     ; preds = %921
  %939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %940 = extractvalue %dx.types.CBufRet.f32 %939, 0
  %941 = extractvalue %dx.types.CBufRet.f32 %939, 1
  %942 = fsub fast float %277, %940
  %943 = fsub fast float %278, %941
  %944 = fmul fast float %942, %942
  %945 = fmul fast float %943, %943
  %946 = fadd fast float %944, %945
  %947 = uitofp i32 %935 to float
  %948 = fmul fast float %947, %947
  %949 = fcmp fast ogt float %946, %948
  br i1 %949, label %956, label %950, !dx.controlflow.hints !73

; <label>:950                                     ; preds = %938
  %951 = call float @dx.op.unary.f32(i32 24, float %946)  ; Sqrt(value)
  %952 = fsub fast float %947, %951
  %953 = fmul fast float %952, 0x3F75555560000000
  %954 = call float @dx.op.unary.f32(i32 7, float %953)  ; Saturate(value)
  %955 = call float @dx.op.binary.f32(i32 36, float %954, float %933)  ; FMin(a,b)
  br label %956

; <label>:956                                     ; preds = %950, %938, %921, %914
  %957 = phi float [ 1.000000e+00, %914 ], [ %955, %950 ], [ %933, %921 ], [ 0.000000e+00, %938 ]
  %958 = fcmp fast ogt float %957, 0.000000e+00
  br i1 %958, label %959, label %1032, !dx.controlflow.hints !74

; <label>:959                                     ; preds = %956
  %960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %961 = extractvalue %dx.types.ResRet.i32 %960, 0
  %962 = extractvalue %dx.types.ResRet.i32 %960, 1
  %963 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %964 = extractvalue %dx.types.ResRet.i32 %963, 0
  %965 = extractvalue %dx.types.ResRet.i32 %963, 1
  %966 = extractvalue %dx.types.ResRet.i32 %963, 2
  %967 = extractvalue %dx.types.ResRet.i32 %963, 3
  %968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %969 = extractvalue %dx.types.ResRet.i32 %968, 0
  %970 = extractvalue %dx.types.ResRet.i32 %968, 1
  %971 = extractvalue %dx.types.ResRet.i32 %968, 2
  %972 = extractvalue %dx.types.ResRet.i32 %968, 3
  %973 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %974 = extractvalue %dx.types.ResRet.i32 %973, 0
  %975 = extractvalue %dx.types.ResRet.i32 %973, 1
  %976 = extractvalue %dx.types.ResRet.i32 %973, 2
  %977 = extractvalue %dx.types.ResRet.i32 %973, 3
  %978 = and i32 %974, 65535
  %979 = call float @dx.op.legacyF16ToF32(i32 131, i32 %978)  ; LegacyF16ToF32(value)
  %980 = lshr i32 %974, 16
  %981 = call float @dx.op.legacyF16ToF32(i32 131, i32 %980)  ; LegacyF16ToF32(value)
  %982 = and i32 %975, 65535
  %983 = call float @dx.op.legacyF16ToF32(i32 131, i32 %982)  ; LegacyF16ToF32(value)
  %984 = lshr i32 %975, 16
  %985 = call float @dx.op.legacyF16ToF32(i32 131, i32 %984)  ; LegacyF16ToF32(value)
  %986 = and i32 %976, 65535
  %987 = call float @dx.op.legacyF16ToF32(i32 131, i32 %986)  ; LegacyF16ToF32(value)
  %988 = lshr i32 %976, 16
  %989 = call float @dx.op.legacyF16ToF32(i32 131, i32 %988)  ; LegacyF16ToF32(value)
  %990 = and i32 %977, 65535
  %991 = call float @dx.op.legacyF16ToF32(i32 131, i32 %990)  ; LegacyF16ToF32(value)
  %992 = lshr i32 %977, 16
  %993 = call float @dx.op.legacyF16ToF32(i32 131, i32 %992)  ; LegacyF16ToF32(value)
  %994 = and i32 %969, 65535
  %995 = call float @dx.op.legacyF16ToF32(i32 131, i32 %994)  ; LegacyF16ToF32(value)
  %996 = lshr i32 %969, 16
  %997 = call float @dx.op.legacyF16ToF32(i32 131, i32 %996)  ; LegacyF16ToF32(value)
  %998 = and i32 %970, 65535
  %999 = call float @dx.op.legacyF16ToF32(i32 131, i32 %998)  ; LegacyF16ToF32(value)
  %1000 = lshr i32 %970, 16
  %1001 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1000)  ; LegacyF16ToF32(value)
  %1002 = and i32 %971, 65535
  %1003 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1002)  ; LegacyF16ToF32(value)
  %1004 = lshr i32 %971, 16
  %1005 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1004)  ; LegacyF16ToF32(value)
  %1006 = and i32 %972, 65535
  %1007 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1006)  ; LegacyF16ToF32(value)
  %1008 = lshr i32 %972, 16
  %1009 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1008)  ; LegacyF16ToF32(value)
  %1010 = and i32 %964, 65535
  %1011 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1010)  ; LegacyF16ToF32(value)
  %1012 = lshr i32 %964, 16
  %1013 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1012)  ; LegacyF16ToF32(value)
  %1014 = and i32 %965, 65535
  %1015 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1014)  ; LegacyF16ToF32(value)
  %1016 = lshr i32 %965, 16
  %1017 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1016)  ; LegacyF16ToF32(value)
  %1018 = and i32 %966, 65535
  %1019 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1018)  ; LegacyF16ToF32(value)
  %1020 = lshr i32 %966, 16
  %1021 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1020)  ; LegacyF16ToF32(value)
  %1022 = and i32 %967, 65535
  %1023 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1022)  ; LegacyF16ToF32(value)
  %1024 = lshr i32 %967, 16
  %1025 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1024)  ; LegacyF16ToF32(value)
  %1026 = and i32 %961, 65535
  %1027 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1026)  ; LegacyF16ToF32(value)
  %1028 = lshr i32 %961, 16
  %1029 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1028)  ; LegacyF16ToF32(value)
  %1030 = and i32 %962, 65535
  %1031 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1030)  ; LegacyF16ToF32(value)
  br label %1032

; <label>:1032                                    ; preds = %959, %956
  %1033 = phi float [ %1031, %959 ], [ 0.000000e+00, %956 ]
  %1034 = phi float [ %1029, %959 ], [ 0.000000e+00, %956 ]
  %1035 = phi float [ %1027, %959 ], [ 0.000000e+00, %956 ]
  %1036 = phi float [ %1025, %959 ], [ 0.000000e+00, %956 ]
  %1037 = phi float [ %1023, %959 ], [ 0.000000e+00, %956 ]
  %1038 = phi float [ %1021, %959 ], [ 0.000000e+00, %956 ]
  %1039 = phi float [ %1019, %959 ], [ 0.000000e+00, %956 ]
  %1040 = phi float [ %1017, %959 ], [ 0.000000e+00, %956 ]
  %1041 = phi float [ %1015, %959 ], [ 0.000000e+00, %956 ]
  %1042 = phi float [ %1013, %959 ], [ 0.000000e+00, %956 ]
  %1043 = phi float [ %1011, %959 ], [ 0.000000e+00, %956 ]
  %1044 = phi float [ %1009, %959 ], [ 0.000000e+00, %956 ]
  %1045 = phi float [ %1007, %959 ], [ 0.000000e+00, %956 ]
  %1046 = phi float [ %1005, %959 ], [ 0.000000e+00, %956 ]
  %1047 = phi float [ %1003, %959 ], [ 0.000000e+00, %956 ]
  %1048 = phi float [ %1001, %959 ], [ 0.000000e+00, %956 ]
  %1049 = phi float [ %999, %959 ], [ 0.000000e+00, %956 ]
  %1050 = phi float [ %997, %959 ], [ 0.000000e+00, %956 ]
  %1051 = phi float [ %995, %959 ], [ 0.000000e+00, %956 ]
  %1052 = phi float [ %993, %959 ], [ 0.000000e+00, %956 ]
  %1053 = phi float [ %991, %959 ], [ 0.000000e+00, %956 ]
  %1054 = phi float [ %989, %959 ], [ 0.000000e+00, %956 ]
  %1055 = phi float [ %987, %959 ], [ 0.000000e+00, %956 ]
  %1056 = phi float [ %985, %959 ], [ 0.000000e+00, %956 ]
  %1057 = phi float [ %983, %959 ], [ 0.000000e+00, %956 ]
  %1058 = phi float [ %981, %959 ], [ 0.000000e+00, %956 ]
  %1059 = phi float [ %979, %959 ], [ 0.000000e+00, %956 ]
  %1060 = fcmp fast olt float %957, 1.000000e+00
  br i1 %1060, label %1061, label %1721, !dx.controlflow.hints !75

; <label>:1061                                    ; preds = %1032
  %1062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1063 = extractvalue %dx.types.CBufRet.f32 %1062, 0
  %1064 = extractvalue %dx.types.CBufRet.f32 %1062, 1
  %1065 = fsub fast float %277, %1063
  %1066 = fsub fast float %278, %1064
  %1067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1068 = extractvalue %dx.types.CBufRet.f32 %1067, 0
  %1069 = extractvalue %dx.types.CBufRet.f32 %1067, 1
  %1070 = fmul fast float %1065, %1068
  %1071 = fmul fast float %1066, %1069
  %1072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1073 = extractvalue %dx.types.CBufRet.f32 %1072, 0
  %1074 = fmul fast float %1073, %1070
  %1075 = extractvalue %dx.types.CBufRet.f32 %1072, 1
  %1076 = fadd fast float %1074, %1075
  %1077 = extractvalue %dx.types.CBufRet.f32 %1072, 2
  %1078 = fmul fast float %1077, %1071
  %1079 = extractvalue %dx.types.CBufRet.f32 %1072, 3
  %1080 = fadd fast float %1078, %1079
  %1081 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %25, float %1076, float %1080, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1082 = extractvalue %dx.types.ResRet.f32 %1081, 0
  %1083 = extractvalue %dx.types.ResRet.f32 %1081, 1
  %1084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1085 = extractvalue %dx.types.CBufRet.f32 %1084, 1
  %1086 = extractvalue %dx.types.CBufRet.f32 %1084, 0
  %1087 = fsub fast float %1085, %1086
  %1088 = fmul fast float %1087, %1082
  %1089 = fadd fast float %1088, %1086
  %1090 = extractvalue %dx.types.CBufRet.f32 %1084, 3
  %1091 = extractvalue %dx.types.CBufRet.f32 %1084, 2
  %1092 = fsub fast float %1090, %1091
  %1093 = fmul fast float %1092, %1083
  %1094 = fadd fast float %1093, %1091
  %1095 = fsub fast float %279, %1089
  %1096 = fsub fast float %1094, %1089
  %1097 = fdiv fast float %1095, %1096
  %1098 = call float @dx.op.unary.f32(i32 7, float %1097)  ; Saturate(value)
  %1099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %1100 = extractvalue %dx.types.CBufRet.f32 %1099, 0
  %1101 = fmul fast float %1100, %1098
  %1102 = extractvalue %dx.types.CBufRet.f32 %1099, 1
  %1103 = fadd fast float %1101, %1102
  %1104 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %25, float %1076, float %1080, float %1103, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1105 = extractvalue %dx.types.ResRet.f32 %1104, 0
  %1106 = extractvalue %dx.types.ResRet.f32 %1104, 1
  %1107 = extractvalue %dx.types.ResRet.f32 %1104, 2
  %1108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %1109 = extractvalue %dx.types.CBufRet.f32 %1108, 0
  %1110 = extractvalue %dx.types.CBufRet.f32 %1108, 1
  %1111 = extractvalue %dx.types.CBufRet.f32 %1108, 2
  %1112 = fmul fast float %1109, %1105
  %1113 = fmul fast float %1110, %1106
  %1114 = fmul fast float %1111, %1107
  %1115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %1116 = extractvalue %dx.types.CBufRet.f32 %1115, 0
  %1117 = extractvalue %dx.types.CBufRet.f32 %1115, 1
  %1118 = extractvalue %dx.types.CBufRet.f32 %1115, 2
  %1119 = fadd fast float %1112, %1116
  %1120 = fadd fast float %1113, %1117
  %1121 = fadd fast float %1114, %1118
  %1122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %1123 = extractvalue %dx.types.CBufRet.f32 %1122, 0
  %1124 = fmul fast float %1123, %1070
  %1125 = extractvalue %dx.types.CBufRet.f32 %1122, 1
  %1126 = fadd fast float %1124, %1125
  %1127 = extractvalue %dx.types.CBufRet.f32 %1122, 2
  %1128 = fmul fast float %1127, %1071
  %1129 = extractvalue %dx.types.CBufRet.f32 %1122, 3
  %1130 = fadd fast float %1128, %1129
  %1131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %1132 = extractvalue %dx.types.CBufRet.f32 %1131, 0
  %1133 = extractvalue %dx.types.CBufRet.f32 %1131, 1
  %1134 = extractvalue %dx.types.CBufRet.f32 %1131, 2
  %1135 = extractvalue %dx.types.CBufRet.f32 %1131, 3
  %1136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %1137 = extractvalue %dx.types.CBufRet.f32 %1136, 0
  %1138 = extractvalue %dx.types.CBufRet.f32 %1136, 1
  %1139 = extractvalue %dx.types.CBufRet.f32 %1136, 2
  %1140 = extractvalue %dx.types.CBufRet.f32 %1136, 3
  %1141 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %25, float %1126, float %1130, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1142 = extractvalue %dx.types.ResRet.f32 %1141, 0
  %1143 = extractvalue %dx.types.ResRet.f32 %1141, 1
  %1144 = extractvalue %dx.types.ResRet.f32 %1141, 2
  %1145 = extractvalue %dx.types.ResRet.f32 %1141, 3
  %1146 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %25, float %1126, float %1130, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1147 = extractvalue %dx.types.ResRet.f32 %1146, 0
  %1148 = extractvalue %dx.types.ResRet.f32 %1146, 1
  %1149 = extractvalue %dx.types.ResRet.f32 %1146, 2
  %1150 = extractvalue %dx.types.ResRet.f32 %1146, 3
  %1151 = fmul fast float %1142, %1119
  %1152 = fmul fast float %1147, %1119
  %1153 = fmul fast float %1149, %1119
  %1154 = fmul fast float %1145, %1119
  %1155 = fadd fast float %1151, %1132
  %1156 = fadd fast float %1152, %1133
  %1157 = fadd fast float %1153, %1134
  %1158 = fadd fast float %1154, %1135
  %1159 = fmul fast float %1143, %1119
  %1160 = fmul fast float %1148, %1119
  %1161 = fadd fast float %1159, %1137
  %1162 = fadd fast float %1160, %1138
  %1163 = fmul fast float %1144, %1119
  %1164 = fmul fast float %1150, %1119
  %1165 = fadd fast float %1163, %1139
  %1166 = fadd fast float %1164, %1140
  %1167 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %25, float %1126, float %1130, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1168 = extractvalue %dx.types.ResRet.f32 %1167, 0
  %1169 = extractvalue %dx.types.ResRet.f32 %1167, 1
  %1170 = extractvalue %dx.types.ResRet.f32 %1167, 2
  %1171 = extractvalue %dx.types.ResRet.f32 %1167, 3
  %1172 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %25, float %1126, float %1130, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1173 = extractvalue %dx.types.ResRet.f32 %1172, 0
  %1174 = extractvalue %dx.types.ResRet.f32 %1172, 1
  %1175 = extractvalue %dx.types.ResRet.f32 %1172, 2
  %1176 = extractvalue %dx.types.ResRet.f32 %1172, 3
  %1177 = fmul fast float %1168, %1120
  %1178 = fmul fast float %1173, %1120
  %1179 = fmul fast float %1175, %1120
  %1180 = fmul fast float %1171, %1120
  %1181 = fadd fast float %1155, %1177
  %1182 = fadd fast float %1156, %1178
  %1183 = fadd fast float %1157, %1179
  %1184 = fadd fast float %1158, %1180
  %1185 = fmul fast float %1169, %1120
  %1186 = fmul fast float %1174, %1120
  %1187 = fadd fast float %1161, %1185
  %1188 = fadd fast float %1162, %1186
  %1189 = fmul fast float %1170, %1120
  %1190 = fmul fast float %1176, %1120
  %1191 = fadd fast float %1165, %1189
  %1192 = fadd fast float %1166, %1190
  %1193 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %25, float %1126, float %1130, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1194 = extractvalue %dx.types.ResRet.f32 %1193, 0
  %1195 = extractvalue %dx.types.ResRet.f32 %1193, 1
  %1196 = extractvalue %dx.types.ResRet.f32 %1193, 2
  %1197 = extractvalue %dx.types.ResRet.f32 %1193, 3
  %1198 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %25, float %1126, float %1130, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1199 = extractvalue %dx.types.ResRet.f32 %1198, 0
  %1200 = extractvalue %dx.types.ResRet.f32 %1198, 1
  %1201 = extractvalue %dx.types.ResRet.f32 %1198, 2
  %1202 = extractvalue %dx.types.ResRet.f32 %1198, 3
  %1203 = fmul fast float %1194, %1121
  %1204 = fmul fast float %1199, %1121
  %1205 = fmul fast float %1201, %1121
  %1206 = fmul fast float %1197, %1121
  %1207 = fadd fast float %1181, %1203
  %1208 = fadd fast float %1182, %1204
  %1209 = fadd fast float %1183, %1205
  %1210 = fadd fast float %1184, %1206
  %1211 = fmul fast float %1195, %1121
  %1212 = fmul fast float %1200, %1121
  %1213 = fadd fast float %1187, %1211
  %1214 = fadd fast float %1188, %1212
  %1215 = fmul fast float %1196, %1121
  %1216 = fmul fast float %1202, %1121
  %1217 = fadd fast float %1191, %1215
  %1218 = fadd fast float %1192, %1216
  %1219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %1220 = extractvalue %dx.types.CBufRet.f32 %1219, 0
  %1221 = fsub fast float %277, %1220
  %1222 = fsub fast float %1063, %277
  %1223 = call float @dx.op.binary.f32(i32 35, float %1222, float %1221)  ; FMax(a,b)
  %1224 = extractvalue %dx.types.CBufRet.f32 %1219, 1
  %1225 = fsub fast float %278, %1224
  %1226 = fsub fast float %1064, %278
  %1227 = call float @dx.op.binary.f32(i32 35, float %1226, float %1225)  ; FMax(a,b)
  %1228 = call float @dx.op.binary.f32(i32 35, float %1223, float %1227)  ; FMax(a,b)
  %1229 = extractvalue %dx.types.CBufRet.f32 %1067, 3
  %1230 = fmul fast float %1229, %1228
  %1231 = call float @dx.op.unary.f32(i32 7, float %1230)  ; Saturate(value)
  %1232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %1233 = extractvalue %dx.types.CBufRet.f32 %1232, 0
  %1234 = extractvalue %dx.types.CBufRet.f32 %1232, 1
  %1235 = extractvalue %dx.types.CBufRet.f32 %1232, 2
  %1236 = extractvalue %dx.types.CBufRet.f32 %1232, 3
  %1237 = fsub fast float %1233, %1207
  %1238 = fsub fast float %1234, %1208
  %1239 = fsub fast float %1235, %1209
  %1240 = fsub fast float %1236, %1210
  %1241 = fmul fast float %1237, %1231
  %1242 = fmul fast float %1238, %1231
  %1243 = fmul fast float %1239, %1231
  %1244 = fmul fast float %1240, %1231
  %1245 = fadd fast float %1241, %1207
  %1246 = fadd fast float %1242, %1208
  %1247 = fadd fast float %1243, %1209
  %1248 = fadd fast float %1244, %1210
  %1249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %1250 = extractvalue %dx.types.CBufRet.f32 %1249, 0
  %1251 = extractvalue %dx.types.CBufRet.f32 %1249, 1
  %1252 = fsub fast float %1250, %1213
  %1253 = fsub fast float %1251, %1214
  %1254 = fmul fast float %1252, %1231
  %1255 = fmul fast float %1253, %1231
  %1256 = fadd fast float %1254, %1213
  %1257 = fadd fast float %1255, %1214
  %1258 = extractvalue %dx.types.CBufRet.f32 %1249, 2
  %1259 = extractvalue %dx.types.CBufRet.f32 %1249, 3
  %1260 = fsub fast float %1258, %1217
  %1261 = fsub fast float %1259, %1218
  %1262 = fmul fast float %1260, %1231
  %1263 = fmul fast float %1261, %1231
  %1264 = fadd fast float %1262, %1217
  %1265 = fadd fast float %1263, %1218
  %1266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %1267 = extractvalue %dx.types.CBufRet.f32 %1266, 0
  %1268 = fmul fast float %1267, %1245
  %1269 = fmul fast float %1267, %1246
  %1270 = fmul fast float %1267, %1247
  %1271 = fmul fast float %1267, %1248
  %1272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %1273 = extractvalue %dx.types.CBufRet.f32 %1272, 0
  %1274 = fmul fast float %1273, %1256
  %1275 = fmul fast float %1273, %1257
  %1276 = fadd fast float %1274, %1268
  %1277 = fadd fast float %1275, %1270
  %1278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %1279 = extractvalue %dx.types.CBufRet.f32 %1278, 0
  %1280 = fmul fast float %1279, %1264
  %1281 = fmul fast float %1279, %1265
  %1282 = fadd fast float %1276, %1280
  %1283 = fadd fast float %1277, %1281
  %1284 = extractvalue %dx.types.CBufRet.f32 %1266, 1
  %1285 = fmul fast float %1284, %1245
  %1286 = fmul fast float %1284, %1246
  %1287 = fmul fast float %1284, %1247
  %1288 = fmul fast float %1284, %1248
  %1289 = extractvalue %dx.types.CBufRet.f32 %1272, 1
  %1290 = fmul fast float %1289, %1256
  %1291 = fmul fast float %1289, %1257
  %1292 = fadd fast float %1290, %1285
  %1293 = fadd fast float %1291, %1287
  %1294 = extractvalue %dx.types.CBufRet.f32 %1278, 1
  %1295 = fmul fast float %1294, %1264
  %1296 = fmul fast float %1294, %1265
  %1297 = fadd fast float %1292, %1295
  %1298 = fadd fast float %1293, %1296
  %1299 = extractvalue %dx.types.CBufRet.f32 %1266, 2
  %1300 = fmul fast float %1299, %1245
  %1301 = fmul fast float %1299, %1246
  %1302 = fmul fast float %1299, %1247
  %1303 = fmul fast float %1299, %1248
  %1304 = extractvalue %dx.types.CBufRet.f32 %1272, 2
  %1305 = fmul fast float %1304, %1256
  %1306 = fmul fast float %1304, %1257
  %1307 = fadd fast float %1305, %1300
  %1308 = fadd fast float %1306, %1302
  %1309 = extractvalue %dx.types.CBufRet.f32 %1278, 2
  %1310 = fmul fast float %1309, %1264
  %1311 = fmul fast float %1309, %1265
  %1312 = fadd fast float %1307, %1310
  %1313 = fadd fast float %1308, %1311
  %1314 = fmul fast float %1301, %1301
  %1315 = fmul fast float %1313, %1313
  %1316 = fmul fast float %1303, %1303
  %1317 = fadd fast float %1316, %1314
  %1318 = fadd fast float %1317, %1315
  %1319 = call float @dx.op.unary.f32(i32 24, float %1318)  ; Sqrt(value)
  %1320 = fcmp fast ugt float %1319, 0.000000e+00
  br i1 %1320, label %1321, label %1336, !dx.controlflow.hints !76

; <label>:1321                                    ; preds = %1061
  %1322 = fsub fast float -0.000000e+00, %1303
  %1323 = fdiv fast float %1322, %1319
  %1324 = fsub fast float -0.000000e+00, %1301
  %1325 = fdiv fast float %1324, %1319
  %1326 = fdiv fast float %1313, %1319
  %1327 = fmul fast float %1312, 0x3FE279A760000000
  %1328 = fmul fast float %1325, %1301
  %1329 = fmul fast float %1326, %1313
  %1330 = fmul fast float %1323, %1303
  %1331 = fadd fast float %1328, %1330
  %1332 = fsub fast float %1331, %1329
  %1333 = call float @dx.op.unary.f32(i32 6, float %1332)  ; FAbs(value)
  %1334 = fadd fast float %1333, 0x3DDB7CDFE0000000
  %1335 = fdiv fast float %1327, %1334
  br label %1336

; <label>:1336                                    ; preds = %1321, %1061
  %1337 = phi float [ %1335, %1321 ], [ 1.000000e+00, %1061 ]
  %1338 = fmul fast float %1286, %1286
  %1339 = fmul fast float %1298, %1298
  %1340 = fmul fast float %1288, %1288
  %1341 = fadd fast float %1340, %1338
  %1342 = fadd fast float %1341, %1339
  %1343 = call float @dx.op.unary.f32(i32 24, float %1342)  ; Sqrt(value)
  %1344 = fcmp fast ugt float %1343, 0.000000e+00
  br i1 %1344, label %1345, label %1360, !dx.controlflow.hints !76

; <label>:1345                                    ; preds = %1336
  %1346 = fsub fast float -0.000000e+00, %1288
  %1347 = fdiv fast float %1346, %1343
  %1348 = fsub fast float -0.000000e+00, %1286
  %1349 = fdiv fast float %1348, %1343
  %1350 = fdiv fast float %1298, %1343
  %1351 = fmul fast float %1297, 0x3FE279A760000000
  %1352 = fmul fast float %1349, %1286
  %1353 = fmul fast float %1350, %1298
  %1354 = fmul fast float %1347, %1288
  %1355 = fadd fast float %1352, %1354
  %1356 = fsub fast float %1355, %1353
  %1357 = call float @dx.op.unary.f32(i32 6, float %1356)  ; FAbs(value)
  %1358 = fadd fast float %1357, 0x3DDB7CDFE0000000
  %1359 = fdiv fast float %1351, %1358
  br label %1360

; <label>:1360                                    ; preds = %1345, %1336
  %1361 = phi float [ %1359, %1345 ], [ 1.000000e+00, %1336 ]
  %1362 = call float @dx.op.binary.f32(i32 36, float %1361, float %1337)  ; FMin(a,b)
  %1363 = fmul fast float %1269, %1269
  %1364 = fmul fast float %1283, %1283
  %1365 = fmul fast float %1271, %1271
  %1366 = fadd fast float %1365, %1363
  %1367 = fadd fast float %1366, %1364
  %1368 = call float @dx.op.unary.f32(i32 24, float %1367)  ; Sqrt(value)
  %1369 = fcmp fast ugt float %1368, 0.000000e+00
  br i1 %1369, label %1370, label %1385, !dx.controlflow.hints !76

; <label>:1370                                    ; preds = %1360
  %1371 = fsub fast float -0.000000e+00, %1271
  %1372 = fdiv fast float %1371, %1368
  %1373 = fsub fast float -0.000000e+00, %1269
  %1374 = fdiv fast float %1373, %1368
  %1375 = fdiv fast float %1283, %1368
  %1376 = fmul fast float %1282, 0x3FE279A760000000
  %1377 = fmul fast float %1374, %1269
  %1378 = fmul fast float %1375, %1283
  %1379 = fmul fast float %1372, %1271
  %1380 = fadd fast float %1377, %1379
  %1381 = fsub fast float %1380, %1378
  %1382 = call float @dx.op.unary.f32(i32 6, float %1381)  ; FAbs(value)
  %1383 = fadd fast float %1382, 0x3DDB7CDFE0000000
  %1384 = fdiv fast float %1376, %1383
  br label %1385

; <label>:1385                                    ; preds = %1370, %1360
  %1386 = phi float [ %1384, %1370 ], [ 1.000000e+00, %1360 ]
  %1387 = call float @dx.op.binary.f32(i32 36, float %1386, float %1362)  ; FMin(a,b)
  %1388 = call float @dx.op.unary.f32(i32 7, float %1387)  ; Saturate(value)
  %1389 = fcmp fast olt float %1388, 1.000000e+00
  br i1 %1389, label %1390, label %1400, !dx.controlflow.hints !77

; <label>:1390                                    ; preds = %1385
  %1391 = fmul fast float %1388, %1269
  %1392 = fmul fast float %1388, %1283
  %1393 = fmul fast float %1388, %1271
  %1394 = fmul fast float %1388, %1286
  %1395 = fmul fast float %1388, %1298
  %1396 = fmul fast float %1388, %1288
  %1397 = fmul fast float %1388, %1301
  %1398 = fmul fast float %1388, %1313
  %1399 = fmul fast float %1388, %1303
  br label %1400

; <label>:1400                                    ; preds = %1390, %1385
  %1401 = phi float [ %1397, %1390 ], [ %1301, %1385 ]
  %1402 = phi float [ %1398, %1390 ], [ %1313, %1385 ]
  %1403 = phi float [ %1399, %1390 ], [ %1303, %1385 ]
  %1404 = phi float [ %1394, %1390 ], [ %1286, %1385 ]
  %1405 = phi float [ %1395, %1390 ], [ %1298, %1385 ]
  %1406 = phi float [ %1396, %1390 ], [ %1288, %1385 ]
  %1407 = phi float [ %1391, %1390 ], [ %1269, %1385 ]
  %1408 = phi float [ %1392, %1390 ], [ %1283, %1385 ]
  %1409 = phi float [ %1393, %1390 ], [ %1271, %1385 ]
  %1410 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1282)  ; FMax(a,b)
  %1411 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1297)  ; FMax(a,b)
  %1412 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1312)  ; FMax(a,b)
  %1413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %1414 = extractvalue %dx.types.CBufRet.f32 %1413, 0
  %1415 = fcmp fast ogt float %1414, 0.000000e+00
  %1416 = fcmp fast oge float %1070, 0.000000e+00
  %1417 = and i1 %1416, %1415
  %1418 = fcmp fast ole float %1070, 1.000000e+00
  %1419 = and i1 %1418, %1417
  %1420 = fcmp fast oge float %1071, 0.000000e+00
  %1421 = and i1 %1420, %1419
  %1422 = fcmp fast ole float %1071, 1.000000e+00
  %1423 = and i1 %1422, %1421
  br i1 %1423, label %1424, label %1569, !dx.controlflow.hints !78

; <label>:1424                                    ; preds = %1400
  %1425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1426 = extractvalue %dx.types.CBufRet.f32 %1425, 2
  %1427 = extractvalue %dx.types.CBufRet.f32 %1425, 3
  %1428 = fmul fast float %1426, %1070
  %1429 = fmul fast float %1427, %1071
  %1430 = call float @dx.op.unary.f32(i32 27, float %1428)  ; Round_ni(value)
  %1431 = call float @dx.op.unary.f32(i32 27, float %1429)  ; Round_ni(value)
  %1432 = fptosi float %1430 to i32
  %1433 = fptosi float %1431 to i32
  %1434 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %1432, i32 %1433, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1435 = extractvalue %dx.types.ResRet.i32 %1434, 0
  %1436 = and i32 %1435, 65535
  %1437 = lshr i32 %1435, 16
  %1438 = icmp eq i32 %1436, 65535
  br i1 %1438, label %1475, label %1439, !dx.controlflow.hints !79

; <label>:1439                                    ; preds = %1424
  %1440 = extractvalue %dx.types.CBufRet.f32 %1413, 1
  %1441 = extractvalue %dx.types.CBufRet.f32 %1425, 0
  %1442 = extractvalue %dx.types.CBufRet.f32 %1425, 1
  %1443 = fmul fast float %1441, %1070
  %1444 = fmul fast float %1442, %1071
  %1445 = fmul fast float %1443, 1.250000e-01
  %1446 = fmul fast float %1444, 1.250000e-01
  %1447 = call float @dx.op.unary.f32(i32 27, float %1445)  ; Round_ni(value)
  %1448 = call float @dx.op.unary.f32(i32 27, float %1446)  ; Round_ni(value)
  %1449 = fmul fast float %1447, 8.000000e+00
  %1450 = fmul fast float %1448, 8.000000e+00
  %1451 = and i32 %1435, 255
  %1452 = lshr i32 %1435, 8
  %1453 = and i32 %1452, 255
  %1454 = mul nuw nsw i32 %1451, 9
  %1455 = uitofp i32 %1454 to float
  %1456 = mul nuw nsw i32 %1453, 9
  %1457 = uitofp i32 %1456 to float
  %1458 = fadd fast float %1455, 5.000000e-01
  %1459 = fadd fast float %1458, %1443
  %1460 = fsub fast float %1459, %1449
  %1461 = fadd fast float %1457, 5.000000e-01
  %1462 = fadd fast float %1461, %1444
  %1463 = fsub fast float %1462, %1450
  %1464 = fdiv fast float %1460, %1414
  %1465 = fdiv fast float %1463, %1440
  %1466 = fmul fast float %1098, 4.375000e-01
  %1467 = fadd fast float %1466, 3.125000e-02
  %1468 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %25, float %1464, float %1465, float %1467, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1469 = extractvalue %dx.types.ResRet.f32 %1468, 0
  %1470 = extractvalue %dx.types.ResRet.f32 %1468, 1
  %1471 = extractvalue %dx.types.ResRet.f32 %1468, 2
  %1472 = fadd fast float %1469, %1410
  %1473 = fadd fast float %1470, %1411
  %1474 = fadd fast float %1471, %1412
  br label %1475

; <label>:1475                                    ; preds = %1439, %1424
  %1476 = phi float [ %1474, %1439 ], [ %1412, %1424 ]
  %1477 = phi float [ %1473, %1439 ], [ %1411, %1424 ]
  %1478 = phi float [ %1472, %1439 ], [ %1410, %1424 ]
  %1479 = icmp eq i32 %1437, 65535
  br i1 %1479, label %1569, label %1480, !dx.controlflow.hints !80

; <label>:1480                                    ; preds = %1475
  %1481 = extractvalue %dx.types.CBufRet.f32 %1413, 1
  %1482 = extractvalue %dx.types.CBufRet.f32 %1425, 0
  %1483 = extractvalue %dx.types.CBufRet.f32 %1425, 1
  %1484 = fmul fast float %1482, %1070
  %1485 = fmul fast float %1483, %1071
  %1486 = fmul fast float %1484, 1.250000e-01
  %1487 = fmul fast float %1485, 1.250000e-01
  %1488 = call float @dx.op.unary.f32(i32 27, float %1486)  ; Round_ni(value)
  %1489 = call float @dx.op.unary.f32(i32 27, float %1487)  ; Round_ni(value)
  %1490 = fmul fast float %1488, 8.000000e+00
  %1491 = fmul fast float %1489, 8.000000e+00
  %1492 = fsub fast float %1484, %1490
  %1493 = fsub fast float %1485, %1491
  %1494 = fadd fast float %1492, 5.000000e-01
  %1495 = fadd fast float %1493, 5.000000e-01
  %1496 = and i32 %1437, 255
  %1497 = lshr i32 %1435, 24
  %1498 = mul nuw nsw i32 %1496, 9
  %1499 = uitofp i32 %1498 to float
  %1500 = mul nuw nsw i32 %1497, 9
  %1501 = uitofp i32 %1500 to float
  %1502 = fadd fast float %1494, %1499
  %1503 = fadd fast float %1495, %1501
  %1504 = fdiv fast float %1502, %1414
  %1505 = fdiv fast float %1503, %1481
  %1506 = fmul fast float %1098, 4.375000e-01
  %1507 = fadd fast float %1506, 3.125000e-02
  %1508 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %25, float %1504, float %1505, float %1507, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1509 = extractvalue %dx.types.ResRet.f32 %1508, 0
  %1510 = extractvalue %dx.types.ResRet.f32 %1508, 1
  %1511 = extractvalue %dx.types.ResRet.f32 %1508, 2
  %1512 = fadd fast float %1506, 5.312500e-01
  %1513 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %25, float %1504, float %1505, float %1512, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1514 = extractvalue %dx.types.ResRet.f32 %1513, 0
  %1515 = extractvalue %dx.types.ResRet.f32 %1513, 1
  %1516 = extractvalue %dx.types.ResRet.f32 %1513, 2
  %1517 = fmul fast float %1514, 2.000000e+00
  %1518 = fmul fast float %1515, 2.000000e+00
  %1519 = fmul fast float %1516, 2.000000e+00
  %1520 = fadd fast float %1517, -1.000000e+00
  %1521 = fadd fast float %1518, -1.000000e+00
  %1522 = fadd fast float %1519, -1.000000e+00
  %1523 = fmul fast float %1520, %1520
  %1524 = fmul fast float %1521, %1521
  %1525 = fadd fast float %1523, %1524
  %1526 = fmul fast float %1522, %1522
  %1527 = fadd fast float %1525, %1526
  %1528 = call float @dx.op.unary.f32(i32 24, float %1527)  ; Sqrt(value)
  %1529 = fcmp fast ogt float %1528, 0.000000e+00
  br i1 %1529, label %1530, label %1534, !dx.controlflow.hints !81

; <label>:1530                                    ; preds = %1480
  %1531 = fdiv fast float %1520, %1528
  %1532 = fdiv fast float %1521, %1528
  %1533 = fdiv fast float %1522, %1528
  br label %1534

; <label>:1534                                    ; preds = %1530, %1480
  %1535 = phi float [ %1531, %1530 ], [ 0.000000e+00, %1480 ]
  %1536 = phi float [ %1532, %1530 ], [ 0.000000e+00, %1480 ]
  %1537 = phi float [ %1533, %1530 ], [ 0.000000e+00, %1480 ]
  %1538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1539 = extractvalue %dx.types.CBufRet.f32 %1538, 0
  %1540 = extractvalue %dx.types.CBufRet.f32 %1538, 1
  %1541 = fsub fast float %277, %1539
  %1542 = fsub fast float %278, %1540
  %1543 = fmul fast float %1541, %1541
  %1544 = fmul fast float %1542, %1542
  %1545 = fadd fast float %1543, %1544
  %1546 = call float @dx.op.unary.f32(i32 24, float %1545)  ; Sqrt(value)
  %1547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1548 = extractvalue %dx.types.CBufRet.f32 %1547, 0
  %1549 = extractvalue %dx.types.CBufRet.f32 %1547, 1
  %1550 = fsub fast float %1546, %1548
  %1551 = fdiv fast float %1550, %1549
  %1552 = call float @dx.op.unary.f32(i32 7, float %1551)  ; Saturate(value)
  %1553 = fmul fast float %1552, 2.000000e+00
  %1554 = fsub fast float 3.000000e+00, %1553
  %1555 = fmul fast float %1552, %1552
  %1556 = fmul fast float %1555, %1554
  %1557 = call float @dx.op.dot3.f32(i32 55, float %1535, float %1536, float %1537, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1558 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1557)  ; FMax(a,b)
  %1559 = fmul fast float %1558, 0x400C5BF8A0000000
  %1560 = fmul fast float %1556, %1509
  %1561 = fmul fast float %1560, %1559
  %1562 = fadd fast float %1561, %1478
  %1563 = fmul fast float %1556, %1510
  %1564 = fmul fast float %1563, %1559
  %1565 = fadd fast float %1564, %1477
  %1566 = fmul fast float %1556, %1511
  %1567 = fmul fast float %1566, %1559
  %1568 = fadd fast float %1567, %1476
  br label %1569

; <label>:1569                                    ; preds = %1534, %1475, %1400
  %1570 = phi float [ %1568, %1534 ], [ %1476, %1475 ], [ %1412, %1400 ]
  %1571 = phi float [ %1565, %1534 ], [ %1477, %1475 ], [ %1411, %1400 ]
  %1572 = phi float [ %1562, %1534 ], [ %1478, %1475 ], [ %1410, %1400 ]
  %1573 = fcmp fast ogt float %279, %1094
  %1574 = and i1 %1416, %1573
  %1575 = and i1 %1418, %1574
  %1576 = and i1 %1420, %1575
  %1577 = and i1 %1422, %1576
  br i1 %1577, label %1578, label %1635, !dx.controlflow.hints !82

; <label>:1578                                    ; preds = %1569
  %1579 = fmul fast float %1096, 0x3FC24924A0000000
  %1580 = fsub fast float %279, %1094
  %1581 = fdiv fast float %1580, %1579
  %1582 = call float @dx.op.unary.f32(i32 7, float %1581)  ; Saturate(value)
  %1583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %1584 = extractvalue %dx.types.CBufRet.f32 %1583, 0
  %1585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %1586 = extractvalue %dx.types.CBufRet.f32 %1585, 0
  %1587 = extractvalue %dx.types.CBufRet.f32 %1585, 1
  %1588 = extractvalue %dx.types.CBufRet.f32 %1585, 2
  %1589 = fsub fast float %1584, %1572
  %1590 = fsub fast float %1586, %1407
  %1591 = fsub fast float %1587, %1408
  %1592 = fsub fast float %1588, %1409
  %1593 = fmul fast float %1589, %1582
  %1594 = fmul fast float %1590, %1582
  %1595 = fmul fast float %1591, %1582
  %1596 = fmul fast float %1592, %1582
  %1597 = fadd fast float %1593, %1572
  %1598 = fadd fast float %1594, %1407
  %1599 = fadd fast float %1595, %1408
  %1600 = fadd fast float %1596, %1409
  %1601 = extractvalue %dx.types.CBufRet.f32 %1583, 1
  %1602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %1603 = extractvalue %dx.types.CBufRet.f32 %1602, 0
  %1604 = extractvalue %dx.types.CBufRet.f32 %1602, 1
  %1605 = extractvalue %dx.types.CBufRet.f32 %1602, 2
  %1606 = fsub fast float %1601, %1571
  %1607 = fsub fast float %1603, %1404
  %1608 = fsub fast float %1604, %1405
  %1609 = fsub fast float %1605, %1406
  %1610 = fmul fast float %1606, %1582
  %1611 = fmul fast float %1607, %1582
  %1612 = fmul fast float %1608, %1582
  %1613 = fmul fast float %1609, %1582
  %1614 = fadd fast float %1610, %1571
  %1615 = fadd fast float %1611, %1404
  %1616 = fadd fast float %1612, %1405
  %1617 = fadd fast float %1613, %1406
  %1618 = extractvalue %dx.types.CBufRet.f32 %1583, 2
  %1619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %1620 = extractvalue %dx.types.CBufRet.f32 %1619, 0
  %1621 = extractvalue %dx.types.CBufRet.f32 %1619, 1
  %1622 = extractvalue %dx.types.CBufRet.f32 %1619, 2
  %1623 = fsub fast float %1618, %1570
  %1624 = fsub fast float %1620, %1401
  %1625 = fsub fast float %1621, %1402
  %1626 = fsub fast float %1622, %1403
  %1627 = fmul fast float %1623, %1582
  %1628 = fmul fast float %1624, %1582
  %1629 = fmul fast float %1625, %1582
  %1630 = fmul fast float %1626, %1582
  %1631 = fadd fast float %1627, %1570
  %1632 = fadd fast float %1628, %1401
  %1633 = fadd fast float %1629, %1402
  %1634 = fadd fast float %1630, %1403
  br label %1635

; <label>:1635                                    ; preds = %1578, %1569
  %1636 = phi float [ %1631, %1578 ], [ %1570, %1569 ]
  %1637 = phi float [ %1632, %1578 ], [ %1401, %1569 ]
  %1638 = phi float [ %1633, %1578 ], [ %1402, %1569 ]
  %1639 = phi float [ %1634, %1578 ], [ %1403, %1569 ]
  %1640 = phi float [ %1614, %1578 ], [ %1571, %1569 ]
  %1641 = phi float [ %1615, %1578 ], [ %1404, %1569 ]
  %1642 = phi float [ %1616, %1578 ], [ %1405, %1569 ]
  %1643 = phi float [ %1617, %1578 ], [ %1406, %1569 ]
  %1644 = phi float [ %1597, %1578 ], [ %1572, %1569 ]
  %1645 = phi float [ %1598, %1578 ], [ %1407, %1569 ]
  %1646 = phi float [ %1599, %1578 ], [ %1408, %1569 ]
  %1647 = phi float [ %1600, %1578 ], [ %1409, %1569 ]
  %1648 = extractvalue %dx.types.CBufRet.f32 %1219, 3
  %1649 = fmul fast float %1648, %1644
  %1650 = fmul fast float %1648, %1640
  %1651 = fmul fast float %1648, %1636
  %1652 = fmul fast float %1645, 1.500000e+00
  %1653 = fmul fast float %1652, %1648
  %1654 = fmul fast float %1646, 1.500000e+00
  %1655 = fmul fast float %1654, %1648
  %1656 = fmul fast float %1647, 1.500000e+00
  %1657 = fmul fast float %1656, %1648
  %1658 = fmul fast float %1641, 1.500000e+00
  %1659 = fmul fast float %1658, %1648
  %1660 = fmul fast float %1642, 1.500000e+00
  %1661 = fmul fast float %1660, %1648
  %1662 = fmul fast float %1643, 1.500000e+00
  %1663 = fmul fast float %1662, %1648
  %1664 = fmul fast float %1637, 1.500000e+00
  %1665 = fmul fast float %1664, %1648
  %1666 = fmul fast float %1638, 1.500000e+00
  %1667 = fmul fast float %1666, %1648
  %1668 = fmul fast float %1639, 1.500000e+00
  %1669 = fmul fast float %1668, %1648
  %1670 = fsub fast float %1059, %1649
  %1671 = fmul fast float %1670, %957
  %1672 = fadd fast float %1671, %1649
  %1673 = fsub fast float %1058, %1653
  %1674 = fmul fast float %1673, %957
  %1675 = fadd fast float %1674, %1653
  %1676 = fsub fast float %1057, %1655
  %1677 = fmul fast float %1676, %957
  %1678 = fadd fast float %1677, %1655
  %1679 = fsub fast float %1056, %1657
  %1680 = fmul fast float %1679, %957
  %1681 = fadd fast float %1680, %1657
  %1682 = fmul fast float %1055, %957
  %1683 = fmul fast float %1054, %957
  %1684 = fmul fast float %1053, %957
  %1685 = fmul fast float %1052, %957
  %1686 = fmul fast float %1051, %957
  %1687 = fsub fast float %1050, %1650
  %1688 = fmul fast float %1687, %957
  %1689 = fadd fast float %1688, %1650
  %1690 = fsub fast float %1049, %1659
  %1691 = fmul fast float %1690, %957
  %1692 = fadd fast float %1691, %1659
  %1693 = fsub fast float %1048, %1661
  %1694 = fmul fast float %1693, %957
  %1695 = fadd fast float %1694, %1661
  %1696 = fsub fast float %1047, %1663
  %1697 = fmul fast float %1696, %957
  %1698 = fadd fast float %1697, %1663
  %1699 = fmul fast float %1046, %957
  %1700 = fmul fast float %1045, %957
  %1701 = fmul fast float %1044, %957
  %1702 = fmul fast float %1043, %957
  %1703 = fmul fast float %1042, %957
  %1704 = fsub fast float %1041, %1651
  %1705 = fmul fast float %1704, %957
  %1706 = fadd fast float %1705, %1651
  %1707 = fsub fast float %1040, %1665
  %1708 = fmul fast float %1707, %957
  %1709 = fadd fast float %1708, %1665
  %1710 = fsub fast float %1039, %1667
  %1711 = fmul fast float %1710, %957
  %1712 = fadd fast float %1711, %1667
  %1713 = fsub fast float %1038, %1669
  %1714 = fmul fast float %1713, %957
  %1715 = fadd fast float %1714, %1669
  %1716 = fmul fast float %1037, %957
  %1717 = fmul fast float %1036, %957
  %1718 = fmul fast float %1035, %957
  %1719 = fmul fast float %1034, %957
  %1720 = fmul fast float %1033, %957
  br label %1721

; <label>:1721                                    ; preds = %1635, %1032
  %1722 = phi float [ %1720, %1635 ], [ %1033, %1032 ]
  %1723 = phi float [ %1719, %1635 ], [ %1034, %1032 ]
  %1724 = phi float [ %1718, %1635 ], [ %1035, %1032 ]
  %1725 = phi float [ %1717, %1635 ], [ %1036, %1032 ]
  %1726 = phi float [ %1716, %1635 ], [ %1037, %1032 ]
  %1727 = phi float [ %1715, %1635 ], [ %1038, %1032 ]
  %1728 = phi float [ %1712, %1635 ], [ %1039, %1032 ]
  %1729 = phi float [ %1709, %1635 ], [ %1040, %1032 ]
  %1730 = phi float [ %1706, %1635 ], [ %1041, %1032 ]
  %1731 = phi float [ %1703, %1635 ], [ %1042, %1032 ]
  %1732 = phi float [ %1702, %1635 ], [ %1043, %1032 ]
  %1733 = phi float [ %1701, %1635 ], [ %1044, %1032 ]
  %1734 = phi float [ %1700, %1635 ], [ %1045, %1032 ]
  %1735 = phi float [ %1699, %1635 ], [ %1046, %1032 ]
  %1736 = phi float [ %1698, %1635 ], [ %1047, %1032 ]
  %1737 = phi float [ %1695, %1635 ], [ %1048, %1032 ]
  %1738 = phi float [ %1692, %1635 ], [ %1049, %1032 ]
  %1739 = phi float [ %1689, %1635 ], [ %1050, %1032 ]
  %1740 = phi float [ %1686, %1635 ], [ %1051, %1032 ]
  %1741 = phi float [ %1685, %1635 ], [ %1052, %1032 ]
  %1742 = phi float [ %1684, %1635 ], [ %1053, %1032 ]
  %1743 = phi float [ %1683, %1635 ], [ %1054, %1032 ]
  %1744 = phi float [ %1682, %1635 ], [ %1055, %1032 ]
  %1745 = phi float [ %1681, %1635 ], [ %1056, %1032 ]
  %1746 = phi float [ %1678, %1635 ], [ %1057, %1032 ]
  %1747 = phi float [ %1675, %1635 ], [ %1058, %1032 ]
  %1748 = phi float [ %1672, %1635 ], [ %1059, %1032 ]
  %1749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %1750 = extractvalue %dx.types.CBufRet.f32 %1749, 2
  %1751 = fmul fast float %1750, %1750
  %1752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1753 = extractvalue %dx.types.CBufRet.f32 %1752, 0
  %1754 = extractvalue %dx.types.CBufRet.f32 %1752, 1
  %1755 = extractvalue %dx.types.CBufRet.f32 %1752, 2
  %1756 = fmul fast float %1748, 0x3FD20DD760000000
  %1757 = fmul fast float %1755, %1746
  %1758 = fmul fast float %1755, %1755
  %1759 = fmul fast float %1758, 0x3FEE471020000000
  %1760 = fadd fast float %1759, 0xBFD42F6020000000
  %1761 = fmul fast float %1760, %1742
  %1762 = fmul fast float %1753, %1745
  %1763 = fmul fast float %1754, %1747
  %1764 = fmul fast float %1755, 0x3FF17B1420000000
  %1765 = fmul fast float %1751, %1741
  %1766 = fmul fast float %1765, %1753
  %1767 = fmul fast float %1766, %1764
  %1768 = fmul fast float %1751, %1743
  %1769 = fmul fast float %1768, %1754
  %1770 = fmul fast float %1769, %1764
  %1771 = fmul fast float %1753, %1753
  %1772 = fmul fast float %1754, %1754
  %1773 = fsub fast float %1771, %1772
  %1774 = fmul fast float %1740, 0x3FE17B1420000000
  %1775 = fmul fast float %1774, %1773
  %1776 = fmul fast float %1744, 0x3FF17B1420000000
  %1777 = fmul fast float %1776, %1754
  %1778 = fmul fast float %1777, %1753
  %1779 = fadd fast float %1775, %1778
  %1780 = fadd fast float %1779, %1761
  %1781 = fmul fast float %1780, %1751
  %1782 = fsub fast float %1763, %1757
  %1783 = fadd fast float %1782, %1762
  %1784 = fmul fast float %1783, 0x3FDF454380000000
  %1785 = fmul fast float %1784, %1750
  %1786 = fsub fast float %1756, %1767
  %1787 = fsub fast float %1786, %1770
  %1788 = fadd fast float %1787, %1781
  %1789 = fadd fast float %1788, %1785
  %1790 = fmul fast float %1739, 0x3FD20DD760000000
  %1791 = fmul fast float %1755, %1737
  %1792 = fmul fast float %1760, %1733
  %1793 = fmul fast float %1753, %1736
  %1794 = fmul fast float %1754, %1738
  %1795 = fmul fast float %1751, %1732
  %1796 = fmul fast float %1795, %1753
  %1797 = fmul fast float %1796, %1764
  %1798 = fmul fast float %1751, %1734
  %1799 = fmul fast float %1798, %1754
  %1800 = fmul fast float %1799, %1764
  %1801 = fmul fast float %1731, 0x3FE17B1420000000
  %1802 = fmul fast float %1801, %1773
  %1803 = fmul fast float %1735, 0x3FF17B1420000000
  %1804 = fmul fast float %1803, %1754
  %1805 = fmul fast float %1804, %1753
  %1806 = fadd fast float %1802, %1805
  %1807 = fadd fast float %1806, %1792
  %1808 = fmul fast float %1807, %1751
  %1809 = fsub fast float %1794, %1791
  %1810 = fadd fast float %1809, %1793
  %1811 = fmul fast float %1810, 0x3FDF454380000000
  %1812 = fmul fast float %1811, %1750
  %1813 = fsub fast float %1790, %1797
  %1814 = fsub fast float %1813, %1800
  %1815 = fadd fast float %1814, %1808
  %1816 = fadd fast float %1815, %1812
  %1817 = fmul fast float %1730, 0x3FD20DD760000000
  %1818 = fmul fast float %1755, %1728
  %1819 = fmul fast float %1760, %1724
  %1820 = fmul fast float %1753, %1727
  %1821 = fmul fast float %1754, %1729
  %1822 = fmul fast float %1751, %1723
  %1823 = fmul fast float %1822, %1753
  %1824 = fmul fast float %1823, %1764
  %1825 = fmul fast float %1751, %1725
  %1826 = fmul fast float %1825, %1754
  %1827 = fmul fast float %1826, %1764
  %1828 = fmul fast float %1722, 0x3FE17B1420000000
  %1829 = fmul fast float %1828, %1773
  %1830 = fmul fast float %1726, 0x3FF17B1420000000
  %1831 = fmul fast float %1830, %1754
  %1832 = fmul fast float %1831, %1753
  %1833 = fadd fast float %1829, %1832
  %1834 = fadd fast float %1833, %1819
  %1835 = fmul fast float %1834, %1751
  %1836 = fsub fast float %1821, %1818
  %1837 = fadd fast float %1836, %1820
  %1838 = fmul fast float %1837, 0x3FDF454380000000
  %1839 = fmul fast float %1838, %1750
  %1840 = fsub fast float %1817, %1824
  %1841 = fsub fast float %1840, %1827
  %1842 = fadd fast float %1841, %1835
  %1843 = fadd fast float %1842, %1839
  %1844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1845 = extractvalue %dx.types.CBufRet.f32 %1844, 3
  %1846 = extractvalue %dx.types.CBufRet.f32 %898, 0
  %1847 = fmul fast float %1846, %1845
  %1848 = fmul fast float %1847, %1789
  %1849 = fmul fast float %1847, %1816
  %1850 = fmul fast float %1847, %1843
  %1851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1852 = extractvalue %dx.types.CBufRet.f32 %1851, 3
  %1853 = fcmp fast une float %1852, 0.000000e+00
  %1854 = extractvalue %dx.types.CBufRet.f32 %1851, 0
  %1855 = extractvalue %dx.types.CBufRet.f32 %1851, 1
  %1856 = extractvalue %dx.types.CBufRet.f32 %1851, 2
  br i1 %1853, label %1857, label %1879, !dx.controlflow.hints !83

; <label>:1857                                    ; preds = %1721
  %1858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %1859 = extractvalue %dx.types.CBufRet.f32 %1858, 0
  %1860 = extractvalue %dx.types.CBufRet.f32 %1858, 1
  %1861 = extractvalue %dx.types.CBufRet.f32 %1858, 2
  %1862 = call float @dx.op.dot3.f32(i32 55, float %1854, float %1855, float %1856, float %117, float %118, float %119)  ; Dot3(ax,ay,az,bx,by,bz)
  %1863 = fcmp fast ogt float %908, 0.000000e+00
  %1864 = select i1 %1863, float 1.000000e+00, float -1.000000e+00
  %1865 = fmul fast float %1864, 5.000000e-01
  %1866 = fmul fast float %1865, %1862
  %1867 = fmul fast float %1864, %908
  %1868 = fadd fast float %1866, 4.921875e-01
  %1869 = fadd fast float %1867, -3.125000e-02
  %1870 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %25, float %1868, float 0x3FB25F3060000000, float %1869, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1871 = extractvalue %dx.types.ResRet.f32 %1870, 0
  %1872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %1873 = extractvalue %dx.types.CBufRet.f32 %1872, 0
  %1874 = fmul fast float %1871, 0x400921FB60000000
  %1875 = fmul fast float %1874, %1873
  %1876 = fmul fast float %1875, %1859
  %1877 = fmul fast float %1875, %1860
  %1878 = fmul fast float %1875, %1861
  br label %1879

; <label>:1879                                    ; preds = %1857, %1721
  %1880 = phi float [ %1876, %1857 ], [ 0.000000e+00, %1721 ]
  %1881 = phi float [ %1877, %1857 ], [ 0.000000e+00, %1721 ]
  %1882 = phi float [ %1878, %1857 ], [ 0.000000e+00, %1721 ]
  %1883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %1884 = extractvalue %dx.types.CBufRet.f32 %1883, 0
  %1885 = fmul fast float %1884, %1854
  %1886 = fmul fast float %1884, %1855
  %1887 = fmul fast float %1884, %1856
  %1888 = fadd fast float %1885, %277
  %1889 = fadd fast float %1886, %278
  %1890 = fadd fast float %1887, %279
  %1891 = fsub fast float %1888, %293
  %1892 = fsub fast float %1889, %294
  %1893 = fmul fast float %1891, %298
  %1894 = fmul fast float %1892, %299
  %1895 = call float @dx.op.binary.f32(i32 36, float %1893, float %1894)  ; FMin(a,b)
  %1896 = fcmp fast olt float %1895, 0.000000e+00
  %1897 = call float @dx.op.binary.f32(i32 35, float %1893, float %1894)  ; FMax(a,b)
  %1898 = fcmp fast ogt float %1897, 1.000000e+00
  %1899 = or i1 %1896, %1898
  %1900 = fcmp fast olt float %1890, %307
  %1901 = or i1 %1899, %1900
  %1902 = fcmp fast ogt float %1890, %314
  %1903 = or i1 %1901, %1902
  br i1 %1903, label %1918, label %1904, !dx.controlflow.hints !50

; <label>:1904                                    ; preds = %1879
  %1905 = fsub fast float 1.000000e+00, %1894
  %1906 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %25, float %1893, float %1905, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1907 = extractvalue %dx.types.ResRet.f32 %1906, 0
  %1908 = extractvalue %dx.types.ResRet.f32 %1906, 1
  %1909 = extractvalue %dx.types.ResRet.f32 %1906, 2
  %1910 = extractvalue %dx.types.ResRet.f32 %1906, 3
  %1911 = fcmp fast oeq float %1907, 0.000000e+00
  %1912 = fcmp ule float %1890, %1909
  %1913 = fcmp uge float %1890, %1908
  %1914 = or i1 %1913, %1912
  %1915 = or i1 %1911, %1914
  %1916 = zext i1 %1915 to i32
  %1917 = xor i32 %1916, 1
  br label %1918

; <label>:1918                                    ; preds = %1904, %1879
  %1919 = phi float [ %1907, %1904 ], [ %264, %1879 ]
  %1920 = phi float [ %1908, %1904 ], [ %265, %1879 ]
  %1921 = phi float [ %1909, %1904 ], [ %266, %1879 ]
  %1922 = phi float [ %1910, %1904 ], [ %267, %1879 ]
  %1923 = phi i32 [ %1917, %1904 ], [ 0, %1879 ]
  %1924 = icmp eq i32 %1923, 0
  br i1 %420, label %1974, label %1925, !dx.controlflow.hints !55

; <label>:1925                                    ; preds = %1918
  %1926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %1927 = extractvalue %dx.types.CBufRet.f32 %1926, 0
  %1928 = extractvalue %dx.types.CBufRet.f32 %1926, 1
  %1929 = extractvalue %dx.types.CBufRet.f32 %1926, 2
  %1930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %1931 = extractvalue %dx.types.CBufRet.f32 %1930, 0
  %1932 = extractvalue %dx.types.CBufRet.f32 %1930, 1
  %1933 = extractvalue %dx.types.CBufRet.f32 %1930, 2
  %1934 = fsub fast float %1888, %1931
  %1935 = fsub fast float %1889, %1932
  %1936 = fsub fast float %1890, %1933
  %1937 = fmul fast float %1934, %1927
  %1938 = fmul fast float %1935, %1928
  %1939 = fmul fast float %1936, %1929
  %1940 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %1941 = extractvalue %dx.types.CBufRet.i32 %1940, 3
  %1942 = icmp eq i32 %1941, 0
  br i1 %1942, label %1946, label %1943, !dx.controlflow.hints !56

; <label>:1943                                    ; preds = %1925
  %1944 = call float @dx.op.unary.f32(i32 22, float %1937)  ; Frc(value)
  %1945 = call float @dx.op.unary.f32(i32 22, float %1938)  ; Frc(value)
  br label %1946

; <label>:1946                                    ; preds = %1943, %1925
  %1947 = phi float [ %1944, %1943 ], [ %1937, %1925 ]
  %1948 = phi float [ %1945, %1943 ], [ %1938, %1925 ]
  %1949 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %23, float %1947, float %1948, float %1939, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1950 = extractvalue %dx.types.ResRet.f32 %1949, 0
  %1951 = fmul fast float %1950, 2.000000e+00
  %1952 = fadd fast float %1951, -1.000000e+00
  %1953 = extractvalue %dx.types.CBufRet.f32 %1926, 3
  %1954 = fmul fast float %1952, %1953
  %1955 = fcmp fast olt float %1954, 0.000000e+00
  %1956 = fcmp fast oge float %1939, 0.000000e+00
  %1957 = fcmp fast ole float %1939, 1.000000e+00
  br i1 %1942, label %1960, label %1958, !dx.controlflow.hints !57

; <label>:1958                                    ; preds = %1946
  %1959 = and i1 %1956, %1957
  br label %1970

; <label>:1960                                    ; preds = %1946
  %1961 = fcmp fast oge float %1937, 0.000000e+00
  %1962 = fcmp fast oge float %1938, 0.000000e+00
  %1963 = and i1 %1961, %1962
  %1964 = and i1 %1956, %1963
  %1965 = fcmp fast ole float %1937, 1.000000e+00
  %1966 = fcmp fast ole float %1938, 1.000000e+00
  %1967 = and i1 %1965, %1966
  %1968 = and i1 %1957, %1967
  %1969 = and i1 %1964, %1968
  br label %1970

; <label>:1970                                    ; preds = %1960, %1958
  %1971 = phi i1 [ %1959, %1958 ], [ %1969, %1960 ]
  %1972 = and i1 %1955, %1971
  %1973 = zext i1 %1972 to i32
  br label %1974

; <label>:1974                                    ; preds = %1970, %1918
  %1975 = phi i32 [ %1973, %1970 ], [ 0, %1918 ]
  br i1 %405, label %2024, label %1976, !dx.controlflow.hints !58

; <label>:1976                                    ; preds = %1974
  %1977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %1978 = extractvalue %dx.types.CBufRet.f32 %1977, 0
  %1979 = fsub fast float -0.000000e+00, %1888
  %1980 = fsub fast float -0.000000e+00, %1889
  %1981 = fsub fast float %1978, %1890
  %1982 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1979, float %1980, float %1981)  ; Dot3(ax,ay,az,bx,by,bz)
  %1983 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1854, float %1855, float %1856)  ; Dot3(ax,ay,az,bx,by,bz)
  %1984 = fdiv fast float 1.000000e+00, %1983
  %1985 = fmul fast float %1984, %1982
  %1986 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1985)  ; FMax(a,b)
  %1987 = fcmp fast olt float %1856, 0.000000e+00
  %1988 = call float @dx.op.binary.f32(i32 36, float %1884, float %1986)  ; FMin(a,b)
  br i1 %1987, label %1990, label %1989, !dx.controlflow.hints !59

; <label>:1989                                    ; preds = %1976
  br label %1990

; <label>:1990                                    ; preds = %1989, %1976
  %1991 = phi float [ 0.000000e+00, %1989 ], [ %1988, %1976 ]
  %1992 = phi float [ %1988, %1989 ], [ %1884, %1976 ]
  %1993 = phi float [ %1988, %1989 ], [ 0.000000e+00, %1976 ]
  %1994 = phi float [ %1884, %1989 ], [ %1988, %1976 ]
  %1995 = fsub fast float %1992, %1991
  %1996 = extractvalue %dx.types.CBufRet.f32 %1977, 1
  %1997 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %1996)  ; FMin(a,b)
  %1998 = fsub fast float %1890, %1978
  %1999 = fmul fast float %1997, 0x3FF7154760000000
  %2000 = fmul fast float %1999, %1998
  %2001 = call float @dx.op.unary.f32(i32 21, float %2000)  ; Exp(value)
  %2002 = fmul fast float %1856, 0x3FF7154760000000
  %2003 = fmul fast float %2002, %1994
  %2004 = fmul fast float %2003, %1997
  %2005 = call float @dx.op.unary.f32(i32 21, float %2004)  ; Exp(value)
  %2006 = fmul fast float %2002, %1993
  %2007 = fmul fast float %2006, %1997
  %2008 = call float @dx.op.unary.f32(i32 21, float %2007)  ; Exp(value)
  %2009 = fsub fast float %2005, %2008
  %2010 = fmul fast float %2009, %2001
  %2011 = fmul fast float %1997, %1856
  %2012 = fdiv fast float %2010, %2011
  %2013 = fadd fast float %1995, %2012
  %2014 = call float @dx.op.unary.f32(i32 6, float %1856)  ; FAbs(value)
  %2015 = fcmp fast olt float %2014, 0x3F0FFB4800000000
  %2016 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1998)  ; FMax(a,b)
  %2017 = fmul fast float %2016, 0x3FF7154760000000
  %2018 = fmul fast float %2017, %1996
  %2019 = call float @dx.op.unary.f32(i32 21, float %2018)  ; Exp(value)
  %2020 = fmul fast float %2019, %1884
  %2021 = select i1 %2015, float %2020, float %2013
  %2022 = extractvalue %dx.types.CBufRet.f32 %1749, 1
  %2023 = fmul fast float %2021, %2022
  br label %2024

; <label>:2024                                    ; preds = %1990, %1974
  %2025 = phi float [ %2023, %1990 ], [ 0.000000e+00, %1974 ]
  %2026 = icmp eq i32 %1975, 0
  br i1 %2026, label %2207, label %2027, !dx.controlflow.hints !60

; <label>:2027                                    ; preds = %2024
  %2028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %2029 = extractvalue %dx.types.CBufRet.f32 %2028, 3
  %2030 = fmul fast float %2029, %1884
  %2031 = fcmp fast oeq float %2030, 0.000000e+00
  br i1 %2031, label %2046, label %2032, !dx.controlflow.hints !61

; <label>:2032                                    ; preds = %2027
  %2033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %2034 = extractvalue %dx.types.CBufRet.f32 %2033, 3
  %2035 = fmul fast float %2034, %2030
  %2036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %2037 = extractvalue %dx.types.CBufRet.f32 %2036, 0
  %2038 = extractvalue %dx.types.CBufRet.f32 %2036, 1
  %2039 = extractvalue %dx.types.CBufRet.f32 %2036, 2
  %2040 = fmul fast float %2037, %2035
  %2041 = fmul fast float %2038, %2035
  %2042 = fmul fast float %2039, %2035
  %2043 = call float @dx.op.unary.f32(i32 23, float %2040)  ; Log(value)
  %2044 = call float @dx.op.unary.f32(i32 23, float %2041)  ; Log(value)
  %2045 = call float @dx.op.unary.f32(i32 23, float %2042)  ; Log(value)
  br label %2046

; <label>:2046                                    ; preds = %2032, %2027
  %2047 = phi float [ %2043, %2032 ], [ 0.000000e+00, %2027 ]
  %2048 = phi float [ %2044, %2032 ], [ 0.000000e+00, %2027 ]
  %2049 = phi float [ %2045, %2032 ], [ 0.000000e+00, %2027 ]
  %2050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %2051 = extractvalue %dx.types.CBufRet.f32 %2050, 0
  %2052 = extractvalue %dx.types.CBufRet.f32 %2050, 1
  %2053 = extractvalue %dx.types.CBufRet.f32 %2050, 2
  %2054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %2055 = extractvalue %dx.types.CBufRet.f32 %2054, 0
  %2056 = extractvalue %dx.types.CBufRet.f32 %2054, 1
  %2057 = extractvalue %dx.types.CBufRet.f32 %2054, 2
  %2058 = fsub fast float %1888, %2055
  %2059 = fsub fast float %1889, %2056
  %2060 = fsub fast float %1890, %2057
  %2061 = fmul fast float %2058, %2051
  %2062 = fmul fast float %2059, %2052
  %2063 = fmul fast float %2060, %2053
  %2064 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %2065 = extractvalue %dx.types.CBufRet.i32 %2064, 0
  %2066 = extractvalue %dx.types.CBufRet.i32 %2064, 1
  %2067 = uitofp i32 %2065 to float
  %2068 = uitofp i32 %2066 to float
  %2069 = fmul fast float %2061, %2067
  %2070 = fmul fast float %2062, %2068
  %2071 = fadd fast float %2069, 5.000000e-01
  %2072 = fadd fast float %2070, 5.000000e-01
  %2073 = call float @dx.op.unary.f32(i32 22, float %2071)  ; Frc(value)
  %2074 = call float @dx.op.unary.f32(i32 22, float %2072)  ; Frc(value)
  %2075 = call float @dx.op.unary.f32(i32 27, float %2071)  ; Round_ni(value)
  %2076 = call float @dx.op.unary.f32(i32 27, float %2072)  ; Round_ni(value)
  %2077 = fadd fast float %2075, 1.000000e+00
  %2078 = fadd fast float %2076, 1.000000e+00
  %2079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %2080 = extractvalue %dx.types.CBufRet.f32 %2079, 0
  %2081 = extractvalue %dx.types.CBufRet.f32 %2079, 1
  %2082 = fmul fast float %2080, %2077
  %2083 = fmul fast float %2081, %2078
  %2084 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %24, float %2082, float %2083, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2085 = extractvalue %dx.types.ResRet.f32 %2084, 0
  %2086 = extractvalue %dx.types.ResRet.f32 %2084, 1
  %2087 = extractvalue %dx.types.ResRet.f32 %2084, 2
  %2088 = extractvalue %dx.types.ResRet.f32 %2084, 3
  %2089 = extractvalue %dx.types.CBufRet.i32 %2064, 2
  %2090 = extractvalue %dx.types.CBufRet.f32 %2079, 2
  %2091 = uitofp i32 %2089 to float
  %2092 = fadd fast float %2091, -1.000000e+00
  %2093 = fmul fast float %2092, %2085
  %2094 = fmul fast float %2092, %2086
  %2095 = fmul fast float %2092, %2087
  %2096 = fmul fast float %2092, %2088
  %2097 = fadd fast float %2093, 5.000000e-01
  %2098 = fadd fast float %2094, 5.000000e-01
  %2099 = fadd fast float %2095, 5.000000e-01
  %2100 = fadd fast float %2096, 5.000000e-01
  %2101 = fptoui float %2097 to i32
  %2102 = fptoui float %2098 to i32
  %2103 = fptoui float %2099 to i32
  %2104 = fptoui float %2100 to i32
  %2105 = uitofp i32 %2101 to float
  %2106 = uitofp i32 %2102 to float
  %2107 = uitofp i32 %2103 to float
  %2108 = uitofp i32 %2104 to float
  %2109 = fadd fast float %2105, 5.000000e-01
  %2110 = fadd fast float %2106, 5.000000e-01
  %2111 = fadd fast float %2107, 5.000000e-01
  %2112 = fadd fast float %2108, 5.000000e-01
  %2113 = fmul fast float %2109, %2090
  %2114 = fmul fast float %2110, %2090
  %2115 = fmul fast float %2111, %2090
  %2116 = fmul fast float %2112, %2090
  %2117 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %25, float %2113, float %2063, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2118 = extractvalue %dx.types.ResRet.f32 %2117, 0
  %2119 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %25, float %2114, float %2063, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2120 = extractvalue %dx.types.ResRet.f32 %2119, 0
  %2121 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %25, float %2115, float %2063, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2122 = extractvalue %dx.types.ResRet.f32 %2121, 0
  %2123 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %25, float %2116, float %2063, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2124 = extractvalue %dx.types.ResRet.f32 %2123, 0
  %2125 = fsub fast float %2122, %2124
  %2126 = fmul fast float %2125, %2073
  %2127 = fadd fast float %2126, %2124
  %2128 = fsub fast float %2120, %2118
  %2129 = fmul fast float %2128, %2073
  %2130 = fadd fast float %2129, %2118
  %2131 = fsub fast float %2130, %2127
  %2132 = fmul fast float %2131, %2074
  %2133 = fadd fast float %2132, %2127
  %2134 = fcmp fast ogt float %2133, 0.000000e+00
  br i1 %2134, label %2135, label %2203, !dx.controlflow.hints !62

; <label>:2135                                    ; preds = %2046
  %2136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %2137 = extractvalue %dx.types.CBufRet.f32 %2136, 0
  %2138 = extractvalue %dx.types.CBufRet.f32 %2136, 1
  %2139 = extractvalue %dx.types.CBufRet.f32 %2136, 2
  %2140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %2141 = extractvalue %dx.types.CBufRet.f32 %2140, 0
  %2142 = extractvalue %dx.types.CBufRet.f32 %2140, 1
  %2143 = extractvalue %dx.types.CBufRet.f32 %2140, 2
  %2144 = fmul fast float %2059, %2051
  %2145 = fmul fast float %2060, %2051
  %2146 = fadd fast float %2061, %2141
  %2147 = fadd fast float %2144, %2142
  %2148 = fadd fast float %2145, %2143
  %2149 = fmul fast float %2146, %2137
  %2150 = fmul fast float %2147, %2137
  %2151 = fmul fast float %2148, %2137
  %2152 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %22, float %2149, float %2150, float %2151, float undef, i32 0, i32 0, i32 0, float %2047)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2153 = extractvalue %dx.types.ResRet.f32 %2152, 0
  %2154 = fmul fast float %2146, %2138
  %2155 = fmul fast float %2147, %2138
  %2156 = fmul fast float %2148, %2138
  %2157 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %22, float %2154, float %2155, float %2156, float undef, i32 0, i32 0, i32 0, float %2048)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2158 = extractvalue %dx.types.ResRet.f32 %2157, 1
  %2159 = fmul fast float %2146, %2139
  %2160 = fmul fast float %2147, %2139
  %2161 = fmul fast float %2148, %2139
  %2162 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %22, float %2159, float %2160, float %2161, float undef, i32 0, i32 0, i32 0, float %2049)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2163 = extractvalue %dx.types.ResRet.f32 %2162, 2
  %2164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %2165 = extractvalue %dx.types.CBufRet.f32 %2164, 1
  %2166 = fmul fast float %2158, %2153
  %2167 = fmul fast float %2166, %2163
  %2168 = call float @dx.op.unary.f32(i32 23, float %2167)  ; Log(value)
  %2169 = fmul fast float %2168, %2165
  %2170 = call float @dx.op.unary.f32(i32 21, float %2169)  ; Exp(value)
  %2171 = extractvalue %dx.types.CBufRet.f32 %2164, 2
  %2172 = fmul fast float %2133, %2133
  %2173 = fmul fast float %2172, %2170
  %2174 = fmul fast float %2173, %2171
  %2175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %2176 = extractvalue %dx.types.CBufRet.f32 %2175, 3
  %2177 = fmul fast float %2176, %2174
  %2178 = bitcast float %2177 to i32
  %2179 = sitofp i32 %2178 to float
  %2180 = fptosi float %2179 to i32
  %2181 = bitcast i32 %2180 to float
  %2182 = fsub fast float 1.000000e+00, %2174
  %2183 = bitcast float %2182 to i32
  %2184 = sitofp i32 %2183 to float
  %2185 = fptosi float %2184 to i32
  %2186 = bitcast i32 %2185 to float
  %2187 = fadd fast float %2181, %2186
  %2188 = bitcast float %2187 to i32
  %2189 = sub nsw i32 2129859010, %2188
  %2190 = bitcast i32 %2189 to float
  %2191 = fmul fast float %2190, %2181
  %2192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2193 = extractvalue %dx.types.CBufRet.f32 %2192, 2
  %2194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %2195 = extractvalue %dx.types.CBufRet.f32 %2194, 0
  %2196 = fmul fast float %2191, %2195
  %2197 = fadd fast float %2196, 1.000000e+00
  %2198 = bitcast float %2197 to i32
  %2199 = sub nsw i32 2129859010, %2198
  %2200 = bitcast i32 %2199 to float
  %2201 = fmul fast float %2191, %2193
  %2202 = fmul fast float %2201, %2200
  br label %2203

; <label>:2203                                    ; preds = %2135, %2046
  %2204 = phi float [ %2202, %2135 ], [ %2133, %2046 ]
  %2205 = fmul fast float %2204, %1884
  %2206 = fadd fast float %2205, %2025
  br label %2207

; <label>:2207                                    ; preds = %2203, %2024
  %2208 = phi float [ %2206, %2203 ], [ %2025, %2024 ]
  br i1 %1924, label %2334, label %2209, !dx.controlflow.hints !63

; <label>:2209                                    ; preds = %2207
  %2210 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %2211 = extractvalue %dx.types.CBufRet.i32 %2210, 0
  %2212 = icmp ne i32 %2211, 0
  %2213 = zext i1 %2212 to i32
  %2214 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %2215 = extractvalue %dx.types.CBufRet.i32 %2214, 0
  %2216 = icmp eq i32 %2215, 0
  br i1 %2216, label %2250, label %2217

; <label>:2217                                    ; preds = %2209
  br label %2218

; <label>:2218                                    ; preds = %2245, %2217
  %2219 = phi i32 [ %2246, %2245 ], [ 0, %2217 ]
  %2220 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2219, i32 0)  ; BufferLoad(srv,index,wot)
  %2221 = extractvalue %dx.types.ResRet.f32 %2220, 0
  %2222 = extractvalue %dx.types.ResRet.f32 %2220, 1
  %2223 = extractvalue %dx.types.ResRet.f32 %2220, 2
  %2224 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2219, i32 16)  ; BufferLoad(srv,index,wot)
  %2225 = extractvalue %dx.types.ResRet.f32 %2224, 0
  %2226 = extractvalue %dx.types.ResRet.f32 %2224, 1
  %2227 = extractvalue %dx.types.ResRet.f32 %2224, 2
  %2228 = fsub fast float %2221, %2225
  %2229 = fsub fast float %2222, %2226
  %2230 = fsub fast float %2223, %2227
  %2231 = fadd fast float %2225, %2221
  %2232 = fadd fast float %2226, %2222
  %2233 = fadd fast float %2227, %2223
  %2234 = fcmp fast olt float %1888, %2228
  %2235 = fcmp fast olt float %1889, %2229
  %2236 = fcmp fast olt float %1890, %2230
  %2237 = or i1 %2234, %2235
  %2238 = or i1 %2236, %2237
  %2239 = fcmp fast ogt float %1888, %2231
  %2240 = fcmp fast ogt float %1889, %2232
  %2241 = fcmp fast ogt float %1890, %2233
  %2242 = or i1 %2239, %2240
  %2243 = or i1 %2241, %2242
  %2244 = or i1 %2238, %2243
  br i1 %2244, label %2245, label %2248, !dx.controlflow.hints !64

; <label>:2245                                    ; preds = %2218
  %2246 = add nuw i32 %2219, 1
  %2247 = icmp ult i32 %2246, %2215
  br i1 %2247, label %2218, label %2248

; <label>:2248                                    ; preds = %2245, %2218
  %2249 = phi i32 [ 255, %2245 ], [ %2219, %2218 ]
  br label %2250

; <label>:2250                                    ; preds = %2248, %2209
  %2251 = phi i32 [ 255, %2209 ], [ %2249, %2248 ]
  %2252 = icmp eq i32 %2251, 255
  br i1 %2252, label %2258, label %2253, !dx.controlflow.hints !65

; <label>:2253                                    ; preds = %2250
  %2254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2251, i32 156)  ; BufferLoad(srv,index,wot)
  %2255 = extractvalue %dx.types.ResRet.i32 %2254, 0
  %2256 = icmp ne i32 %2255, 0
  %2257 = zext i1 %2256 to i32
  br label %2258

; <label>:2258                                    ; preds = %2253, %2250
  %2259 = phi i32 [ %2257, %2253 ], [ %2213, %2250 ]
  %2260 = icmp eq i32 %2259, 0
  br i1 %2260, label %2261, label %2330, !dx.controlflow.hints !66

; <label>:2261                                    ; preds = %2258
  %2262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %2263 = extractvalue %dx.types.CBufRet.f32 %2262, 3
  %2264 = extractvalue %dx.types.CBufRet.f32 %310, 0
  %2265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %2266 = extractvalue %dx.types.CBufRet.f32 %2265, 2
  %2267 = extractvalue %dx.types.CBufRet.f32 %2265, 3
  br i1 %2252, label %2278, label %2268, !dx.controlflow.hints !67

; <label>:2268                                    ; preds = %2261
  %2269 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2251, i32 60)  ; BufferLoad(srv,index,wot)
  %2270 = extractvalue %dx.types.ResRet.f32 %2269, 0
  %2271 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2251, i32 64)  ; BufferLoad(srv,index,wot)
  %2272 = extractvalue %dx.types.ResRet.f32 %2271, 0
  %2273 = extractvalue %dx.types.ResRet.f32 %2271, 1
  %2274 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2251, i32 72)  ; BufferLoad(srv,index,wot)
  %2275 = extractvalue %dx.types.ResRet.f32 %2274, 0
  %2276 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2251, i32 96)  ; BufferLoad(srv,index,wot)
  %2277 = extractvalue %dx.types.ResRet.f32 %2276, 0
  br label %2278

; <label>:2278                                    ; preds = %2268, %2261
  %2279 = phi float [ %2270, %2268 ], [ %313, %2261 ]
  %2280 = phi float [ %2275, %2268 ], [ %311, %2261 ]
  %2281 = phi float [ %2277, %2268 ], [ %2264, %2261 ]
  %2282 = phi float [ %2272, %2268 ], [ %2266, %2261 ]
  %2283 = phi float [ %2273, %2268 ], [ %2267, %2261 ]
  %2284 = call float @dx.op.binary.f32(i32 35, float %1919, float 0.000000e+00)  ; FMax(a,b)
  %2285 = call float @dx.op.binary.f32(i32 36, float %2284, float 1.000000e+00)  ; FMin(a,b)
  %2286 = call float @dx.op.unary.f32(i32 24, float %2285)  ; Sqrt(value)
  %2287 = call float @dx.op.binary.f32(i32 35, float %1922, float 0x3F847AE140000000)  ; FMax(a,b)
  %2288 = fsub fast float %1920, %1890
  %2289 = fsub fast float %1890, %1921
  %2290 = call float @dx.op.binary.f32(i32 36, float %2289, float %2288)  ; FMin(a,b)
  %2291 = fdiv fast float %2290, %2287
  %2292 = call float @dx.op.unary.f32(i32 7, float %2291)  ; Saturate(value)
  %2293 = fsub fast float %1890, %2280
  %2294 = fdiv fast float %2293, %2279
  %2295 = call float @dx.op.unary.f32(i32 7, float %2294)  ; Saturate(value)
  %2296 = fsub fast float 1.000000e+00, %2295
  %2297 = fmul float %2292, %2296
  %2298 = fmul float %2297, %2297
  %2299 = fmul fast float %2286, %2263
  %2300 = fmul fast float %2299, %2298
  %2301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %2302 = extractvalue %dx.types.CBufRet.f32 %2301, 2
  %2303 = extractvalue %dx.types.CBufRet.f32 %2301, 1
  %2304 = fsub fast float %2300, %2303
  %2305 = fsub fast float %2302, %2303
  %2306 = fdiv fast float %2304, %2305
  %2307 = call float @dx.op.unary.f32(i32 7, float %2306)  ; Saturate(value)
  %2308 = fmul fast float %2307, %2281
  %2309 = fcmp fast ogt float %2283, 0.000000e+00
  br i1 %2309, label %2310, label %2330, !dx.controlflow.hints !68

; <label>:2310                                    ; preds = %2278
  %2311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2312 = extractvalue %dx.types.CBufRet.f32 %2311, 0
  %2313 = extractvalue %dx.types.CBufRet.f32 %2311, 1
  %2314 = extractvalue %dx.types.CBufRet.f32 %2311, 2
  %2315 = fsub fast float %1888, %2312
  %2316 = fsub fast float %1889, %2313
  %2317 = fsub fast float %1890, %2314
  %2318 = fmul fast float %2315, %2315
  %2319 = fmul fast float %2316, %2316
  %2320 = fadd fast float %2318, %2319
  %2321 = fmul fast float %2317, %2317
  %2322 = fadd fast float %2320, %2321
  %2323 = call float @dx.op.unary.f32(i32 24, float %2322)  ; Sqrt(value)
  %2324 = fsub fast float %2323, %2282
  %2325 = fsub fast float %2283, %2282
  %2326 = fdiv fast float %2324, %2325
  %2327 = call float @dx.op.unary.f32(i32 7, float %2326)  ; Saturate(value)
  %2328 = fmul fast float %2327, %2327
  %2329 = fmul fast float %2328, %2308
  br label %2330

; <label>:2330                                    ; preds = %2310, %2278, %2258
  %2331 = phi float [ 0.000000e+00, %2258 ], [ %2329, %2310 ], [ %2308, %2278 ]
  %2332 = fmul fast float %2331, %1884
  %2333 = fadd fast float %2332, %2208
  br label %2334

; <label>:2334                                    ; preds = %2330, %2207
  %2335 = phi float [ %2333, %2330 ], [ %2208, %2207 ]
  %2336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %2337 = extractvalue %dx.types.CBufRet.f32 %2336, 3
  %2338 = fmul fast float %2335, 0xBFF7154760000000
  %2339 = fmul fast float %2338, %2337
  %2340 = call float @dx.op.unary.f32(i32 21, float %2339)  ; Exp(value)
  %2341 = call float @dx.op.unary.f32(i32 7, float %2340)  ; Saturate(value)
  %2342 = fmul fast float %2341, %1880
  %2343 = fmul fast float %2341, %1881
  %2344 = fmul fast float %2341, %1882
  %2345 = fadd fast float %2342, %1848
  %2346 = fadd fast float %2343, %1849
  %2347 = fadd fast float %2344, %1850
  %2348 = fsub fast float 1.000000e+00, %917
  %2349 = fmul fast float %909, %273
  %2350 = fmul fast float %2349, %2348
  %2351 = fmul fast float %2350, %2345
  %2352 = fmul fast float %910, %273
  %2353 = fmul fast float %2352, %2348
  %2354 = fmul fast float %2353, %2346
  %2355 = fmul fast float %911, %273
  %2356 = fmul fast float %2355, %2348
  %2357 = fmul fast float %2356, %2347
  %2358 = fadd fast float %2351, %274
  %2359 = fadd fast float %2354, %275
  %2360 = fadd fast float %2357, %276
  %2361 = fdiv fast float %894, %489
  %2362 = fadd fast float %489, %280
  %2363 = fmul fast float %280, %280
  %2364 = fmul fast float %2362, %2362
  %2365 = fsub fast float %2363, %2364
  %2366 = fmul fast float %2365, -5.000000e-01
  %2367 = fmul fast float %2366, %2361
  %2368 = fadd fast float %2367, %272
  %2369 = fadd fast float %894, %282
  %2370 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2371 = extractvalue %dx.types.CBufRet.i32 %2370, 0
  %2372 = icmp eq i32 %2371, 0
  br i1 %2372, label %2399, label %2373, !dx.controlflow.hints !84

; <label>:2373                                    ; preds = %2334
  %2374 = icmp ne i32 %287, 0
  %2375 = zext i1 %2374 to i32
  %2376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %2377 = extractvalue %dx.types.CBufRet.f32 %2376, 2
  %2378 = extractvalue %dx.types.CBufRet.f32 %2376, 0
  %2379 = fsub fast float %2362, %2378
  %2380 = fmul fast float %2379, %2377
  %2381 = call float @dx.op.unary.f32(i32 7, float %2380)  ; Saturate(value)
  %2382 = fadd fast float %2381, -5.000000e-01
  %2383 = fmul fast float %2382, 2.000000e+00
  %2384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %2385 = extractvalue %dx.types.CBufRet.f32 %2384, 2
  %2386 = fcmp fast olt float %2383, %2385
  br i1 %2386, label %2387, label %2399, !dx.controlflow.hints !85

; <label>:2387                                    ; preds = %2373
  %2388 = fmul fast float %2383, %2383
  %2389 = fmul fast float %2348, %273
  %2390 = fmul fast float %2383, %2389
  %2391 = fmul fast float %2388, %2389
  %2392 = fmul fast float %2390, %2388
  %2393 = fmul fast float %2388, %2388
  %2394 = fmul fast float %2393, %2389
  %2395 = fadd fast float %2390, %283
  %2396 = fadd fast float %2391, %284
  %2397 = fadd fast float %2392, %285
  %2398 = fadd fast float %2394, %286
  br label %2399

; <label>:2399                                    ; preds = %2387, %2373, %2334
  %2400 = phi float [ %283, %2334 ], [ %2395, %2387 ], [ %283, %2373 ]
  %2401 = phi float [ %284, %2334 ], [ %2396, %2387 ], [ %284, %2373 ]
  %2402 = phi float [ %285, %2334 ], [ %2397, %2387 ], [ %285, %2373 ]
  %2403 = phi float [ %286, %2334 ], [ %2398, %2387 ], [ %286, %2373 ]
  %2404 = phi i32 [ %287, %2334 ], [ 1, %2387 ], [ %2375, %2373 ]
  %2405 = fmul fast float %917, %273
  br label %2406

; <label>:2406                                    ; preds = %2399, %912
  %2407 = phi float [ %913, %912 ], [ %2362, %2399 ]
  %2408 = phi float [ %264, %912 ], [ %1919, %2399 ]
  %2409 = phi float [ %265, %912 ], [ %1920, %2399 ]
  %2410 = phi float [ %266, %912 ], [ %1921, %2399 ]
  %2411 = phi float [ %267, %912 ], [ %1922, %2399 ]
  %2412 = phi float [ %272, %912 ], [ %2368, %2399 ]
  %2413 = phi float [ %273, %912 ], [ %2405, %2399 ]
  %2414 = phi float [ %274, %912 ], [ %2358, %2399 ]
  %2415 = phi float [ %275, %912 ], [ %2359, %2399 ]
  %2416 = phi float [ %276, %912 ], [ %2360, %2399 ]
  %2417 = phi float [ %282, %912 ], [ %2369, %2399 ]
  %2418 = phi float [ %283, %912 ], [ %2400, %2399 ]
  %2419 = phi float [ %284, %912 ], [ %2401, %2399 ]
  %2420 = phi float [ %285, %912 ], [ %2402, %2399 ]
  %2421 = phi float [ %286, %912 ], [ %2403, %2399 ]
  %2422 = phi i32 [ %287, %912 ], [ %2404, %2399 ]
  %2423 = fmul fast float %489, %117
  %2424 = fmul fast float %489, %118
  %2425 = fmul fast float %489, %119
  %2426 = fadd fast float %2423, %277
  %2427 = fadd fast float %2424, %278
  %2428 = fadd fast float %2425, %279
  %2429 = fcmp fast olt float %2407, %244
  %2430 = extractvalue %dx.types.CBufRet.f32 %898, 2
  %2431 = fcmp fast olt float %2430, %2413
  %2432 = and i1 %2429, %2431
  br i1 %2432, label %263, label %2433

; <label>:2433                                    ; preds = %2406
  br label %2434

; <label>:2434                                    ; preds = %2433, %220
  %2435 = phi float [ 0.000000e+00, %220 ], [ %2412, %2433 ]
  %2436 = phi float [ 1.000000e+00, %220 ], [ %2413, %2433 ]
  %2437 = phi float [ 0.000000e+00, %220 ], [ %2414, %2433 ]
  %2438 = phi float [ 0.000000e+00, %220 ], [ %2415, %2433 ]
  %2439 = phi float [ 0.000000e+00, %220 ], [ %2416, %2433 ]
  %2440 = phi float [ 0.000000e+00, %220 ], [ %2417, %2433 ]
  %2441 = phi float [ 0.000000e+00, %220 ], [ %2418, %2433 ]
  %2442 = phi float [ 0.000000e+00, %220 ], [ %2419, %2433 ]
  %2443 = phi float [ 0.000000e+00, %220 ], [ %2420, %2433 ]
  %2444 = phi float [ 0.000000e+00, %220 ], [ %2421, %2433 ]
  %2445 = phi i32 [ 0, %220 ], [ %2422, %2433 ]
  %2446 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2447 = extractvalue %dx.types.CBufRet.i32 %2446, 0
  %2448 = icmp eq i32 %2447, 0
  br i1 %2448, label %2490, label %2449, !dx.controlflow.hints !86

; <label>:2449                                    ; preds = %2434
  %2450 = icmp eq i32 %2445, 0
  br i1 %2450, label %2489, label %2451, !dx.controlflow.hints !87

; <label>:2451                                    ; preds = %2449
  %2452 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %2453 = extractvalue %dx.types.CBufRet.i32 %2452, 2
  %2454 = icmp eq i32 %2453, 0
  br i1 %2454, label %2461, label %2455, !dx.controlflow.hints !88

; <label>:2455                                    ; preds = %2451
  %2456 = fsub fast float 1.000000e+00, %2436
  %2457 = fdiv fast float %2441, %2456
  %2458 = fdiv fast float %2442, %2456
  %2459 = fdiv fast float %2443, %2456
  %2460 = fdiv fast float %2444, %2456
  br label %2466

; <label>:2461                                    ; preds = %2451
  %2462 = fadd fast float %2441, %2436
  %2463 = fadd fast float %2442, %2436
  %2464 = fadd fast float %2443, %2436
  %2465 = fadd fast float %2444, %2436
  br label %2466

; <label>:2466                                    ; preds = %2461, %2455
  %2467 = phi float [ %2457, %2455 ], [ %2462, %2461 ]
  %2468 = phi float [ %2458, %2455 ], [ %2463, %2461 ]
  %2469 = phi float [ %2459, %2455 ], [ %2464, %2461 ]
  %2470 = phi float [ %2460, %2455 ], [ %2465, %2461 ]
  %2471 = call float @dx.op.binary.f32(i32 35, float %2467, float -1.000000e+00)  ; FMax(a,b)
  %2472 = call float @dx.op.binary.f32(i32 35, float %2468, float -1.000000e+00)  ; FMax(a,b)
  %2473 = call float @dx.op.binary.f32(i32 35, float %2469, float -1.000000e+00)  ; FMax(a,b)
  %2474 = call float @dx.op.binary.f32(i32 35, float %2470, float -1.000000e+00)  ; FMax(a,b)
  %2475 = call float @dx.op.binary.f32(i32 36, float %2471, float 1.000000e+00)  ; FMin(a,b)
  %2476 = call float @dx.op.binary.f32(i32 36, float %2472, float 1.000000e+00)  ; FMin(a,b)
  %2477 = call float @dx.op.binary.f32(i32 36, float %2473, float 1.000000e+00)  ; FMin(a,b)
  %2478 = call float @dx.op.binary.f32(i32 36, float %2474, float 1.000000e+00)  ; FMin(a,b)
  %2479 = fmul fast float %2475, 1.500000e+00
  %2480 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %2477, float %2479)  ; FMad(a,b,c)
  %2481 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %2476, float 0.000000e+00)  ; FMad(a,b,c)
  %2482 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %2478, float %2481)  ; FMad(a,b,c)
  %2483 = fmul fast float %2475, 0x3FEBB67AE0000000
  %2484 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %2477, float %2483)  ; FMad(a,b,c)
  %2485 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %2476, float 0.000000e+00)  ; FMad(a,b,c)
  %2486 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %2478, float %2485)  ; FMad(a,b,c)
  %2487 = fadd fast float %2480, 5.000000e-01
  %2488 = fadd fast float %2484, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %29, i32 %30, i32 0, float %2487, float %2482, float %2488, float %2486, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2490

; <label>:2489                                    ; preds = %2449
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %29, i32 %30, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2490

; <label>:2490                                    ; preds = %2489, %2466, %2434
  %2491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %2492 = extractvalue %dx.types.CBufRet.f32 %2491, 2
  %2493 = fsub fast float %2436, %2492
  %2494 = fdiv fast float %2493, %2492
  %2495 = call float @dx.op.unary.f32(i32 7, float %2494)  ; Saturate(value)
  %2496 = fmul fast float %2495, 2.000000e+00
  %2497 = fsub fast float 3.000000e+00, %2496
  %2498 = fmul fast float %2495, %2495
  %2499 = fmul fast float %2498, %2436
  %2500 = fmul fast float %2499, %2497
  %2501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %2502 = extractvalue %dx.types.CBufRet.f32 %2501, 0
  %2503 = extractvalue %dx.types.CBufRet.f32 %2501, 1
  %2504 = extractvalue %dx.types.CBufRet.f32 %2501, 2
  %2505 = call float @dx.op.dot3.f32(i32 55, float %117, float %118, float %119, float %2502, float %2503, float %2504)  ; Dot3(ax,ay,az,bx,by,bz)
  %2506 = fmul fast float %2505, %2435
  %2507 = fcmp fast ogt float %2440, 0.000000e+00
  %2508 = fdiv fast float 1.000000e+00, %2440
  %2509 = fmul fast float %2506, %2508
  %2510 = select i1 %2507, float %2509, float %128
  %2511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %2512 = extractvalue %dx.types.CBufRet.f32 %2511, 0
  %2513 = extractvalue %dx.types.CBufRet.f32 %2511, 1
  %2514 = extractvalue %dx.types.CBufRet.f32 %2511, 2
  %2515 = fmul fast float %2512, %81
  %2516 = fmul fast float %2513, %81
  %2517 = fmul fast float %2514, %81
  %2518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %2519 = extractvalue %dx.types.CBufRet.f32 %2518, 0
  %2520 = extractvalue %dx.types.CBufRet.f32 %2518, 1
  %2521 = extractvalue %dx.types.CBufRet.f32 %2518, 2
  %2522 = fmul fast float %2519, %82
  %2523 = fmul fast float %2520, %82
  %2524 = fmul fast float %2521, %82
  %2525 = fadd fast float %2522, %2515
  %2526 = fadd fast float %2523, %2516
  %2527 = fadd fast float %2524, %2517
  %2528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %2529 = extractvalue %dx.types.CBufRet.f32 %2528, 0
  %2530 = extractvalue %dx.types.CBufRet.f32 %2528, 1
  %2531 = extractvalue %dx.types.CBufRet.f32 %2528, 2
  %2532 = fadd fast float %2525, %2529
  %2533 = fadd fast float %2526, %2530
  %2534 = fadd fast float %2527, %2531
  %2535 = fmul fast float %2532, %2510
  %2536 = fmul fast float %2533, %2510
  %2537 = fmul fast float %2534, %2510
  %2538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %2539 = extractvalue %dx.types.CBufRet.f32 %2538, 0
  %2540 = extractvalue %dx.types.CBufRet.f32 %2538, 1
  %2541 = extractvalue %dx.types.CBufRet.f32 %2538, 2
  %2542 = extractvalue %dx.types.CBufRet.f32 %2538, 3
  %2543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %2544 = extractvalue %dx.types.CBufRet.f32 %2543, 0
  %2545 = extractvalue %dx.types.CBufRet.f32 %2543, 1
  %2546 = extractvalue %dx.types.CBufRet.f32 %2543, 2
  %2547 = extractvalue %dx.types.CBufRet.f32 %2543, 3
  %2548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %2549 = extractvalue %dx.types.CBufRet.f32 %2548, 0
  %2550 = extractvalue %dx.types.CBufRet.f32 %2548, 1
  %2551 = extractvalue %dx.types.CBufRet.f32 %2548, 2
  %2552 = extractvalue %dx.types.CBufRet.f32 %2548, 3
  %2553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %2554 = extractvalue %dx.types.CBufRet.f32 %2553, 0
  %2555 = extractvalue %dx.types.CBufRet.f32 %2553, 1
  %2556 = extractvalue %dx.types.CBufRet.f32 %2553, 2
  %2557 = extractvalue %dx.types.CBufRet.f32 %2553, 3
  %2558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %2559 = extractvalue %dx.types.CBufRet.f32 %2558, 3
  %2560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %2561 = extractvalue %dx.types.CBufRet.f32 %2560, 3
  %2562 = extractvalue %dx.types.CBufRet.f32 %2560, 0
  %2563 = extractvalue %dx.types.CBufRet.f32 %2560, 1
  %2564 = extractvalue %dx.types.CBufRet.f32 %2560, 2
  %2565 = fcmp fast olt float %2564, -5.000000e-01
  %2566 = call float @dx.op.dot3.f32(i32 55, float %2535, float %2536, float %2537, float %2535, float %2536, float %2537)  ; Dot3(ax,ay,az,bx,by,bz)
  %2567 = call float @dx.op.unary.f32(i32 25, float %2566)  ; Rsqrt(value)
  %2568 = fmul fast float %2567, %2566
  %2569 = fmul fast float %2567, %2535
  %2570 = fmul fast float %2567, %2536
  %2571 = fmul fast float %2567, %2537
  %2572 = fadd fast float %2568, %2542
  %2573 = call float @dx.op.dot3.f32(i32 55, float %2569, float %2570, float %2571, float %2539, float %2540, float %2541)  ; Dot3(ax,ay,az,bx,by,bz)
  %2574 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2575 = extractvalue %dx.types.CBufRet.i32 %2574, 1
  %2576 = and i32 %2575, 1
  %2577 = icmp ne i32 %2576, 0
  %2578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %2579 = extractvalue %dx.types.CBufRet.f32 %2578, 2
  %2580 = fcmp fast ogt float %2579, 0.000000e+00
  %2581 = and i1 %2577, %2580
  br i1 %2581, label %2582, label %2988, !dx.controlflow.hints !89

; <label>:2582                                    ; preds = %2490
  %2583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %2584 = extractvalue %dx.types.CBufRet.f32 %2583, 3
  %2585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2586 = extractvalue %dx.types.CBufRet.f32 %2585, 2
  %2587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2588 = extractvalue %dx.types.CBufRet.f32 %2587, 2
  %2589 = fsub fast float %2586, %2588
  %2590 = and i32 %2575, 2
  %2591 = extractvalue %dx.types.CBufRet.i32 %2574, 0
  %2592 = call i32 @dx.op.binary.i32(i32 40, i32 %2591, i32 3)  ; UMin(a,b)
  %2593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %2594 = extractvalue %dx.types.CBufRet.f32 %2593, 0
  %2595 = extractvalue %dx.types.CBufRet.f32 %2593, 1
  %2596 = extractvalue %dx.types.CBufRet.f32 %2587, 0
  %2597 = extractvalue %dx.types.CBufRet.f32 %2587, 1
  %2598 = fsub fast float %2594, %2596
  %2599 = fsub fast float %2595, %2597
  %2600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %2601 = extractvalue %dx.types.CBufRet.f32 %2600, 0
  %2602 = fcmp fast ogt float %2601, 0.000000e+00
  %2603 = fsub fast float -0.000000e+00, %2598
  %2604 = fsub fast float -0.000000e+00, %2599
  %2605 = call float @dx.op.dot2.f32(i32 54, float %2569, float %2570, float %2569, float %2570)  ; Dot2(ax,ay,bx,by)
  %2606 = call float @dx.op.dot2.f32(i32 54, float %2569, float %2570, float %2603, float %2604)  ; Dot2(ax,ay,bx,by)
  %2607 = fmul fast float %2606, 2.000000e+00
  %2608 = call float @dx.op.dot2.f32(i32 54, float %2603, float %2604, float %2603, float %2604)  ; Dot2(ax,ay,bx,by)
  %2609 = fmul fast float %2601, %2601
  %2610 = fsub fast float %2608, %2609
  %2611 = fmul fast float %2607, %2607
  %2612 = fmul fast float %2605, 4.000000e+00
  %2613 = fmul fast float %2612, %2610
  %2614 = fsub fast float %2611, %2613
  %2615 = fcmp fast ogt float %2614, 0.000000e+00
  br i1 %2615, label %2616, label %2631, !dx.controlflow.hints !90

; <label>:2616                                    ; preds = %2582
  %2617 = fcmp fast ogt float %2607, 0.000000e+00
  %2618 = call float @dx.op.unary.f32(i32 24, float %2614)  ; Sqrt(value)
  %2619 = fsub fast float -0.000000e+00, %2618
  %2620 = select i1 %2617, float %2618, float %2619
  %2621 = fadd fast float %2620, %2607
  %2622 = fmul float %2621, -5.000000e-01
  %2623 = fdiv fast float %2622, %2605
  %2624 = call float @dx.op.binary.f32(i32 35, float %2623, float 0.000000e+00)  ; FMax(a,b)
  %2625 = call float @dx.op.binary.f32(i32 36, float %2568, float %2624)  ; FMin(a,b)
  %2626 = fdiv fast float %2610, %2622
  %2627 = call float @dx.op.binary.f32(i32 35, float %2626, float 0.000000e+00)  ; FMax(a,b)
  %2628 = call float @dx.op.binary.f32(i32 36, float %2568, float %2627)  ; FMin(a,b)
  %2629 = call float @dx.op.binary.f32(i32 36, float %2625, float %2628)  ; FMin(a,b)
  %2630 = call float @dx.op.binary.f32(i32 35, float %2625, float %2628)  ; FMax(a,b)
  br label %2631

; <label>:2631                                    ; preds = %2616, %2582
  %2632 = phi float [ %2630, %2616 ], [ -1.000000e+00, %2582 ]
  %2633 = phi float [ %2629, %2616 ], [ -1.000000e+00, %2582 ]
  %2634 = phi i1 [ true, %2616 ], [ false, %2582 ]
  %2635 = and i1 %2602, %2634
  br i1 %2635, label %2636, label %2638, !dx.controlflow.hints !91

; <label>:2636                                    ; preds = %2631
  %2637 = fcmp fast oeq float %2633, %2632
  br i1 %2637, label %2941, label %2639, !dx.controlflow.hints !92

; <label>:2638                                    ; preds = %2631
  br i1 %2602, label %2941, label %2639, !dx.controlflow.hints !93

; <label>:2639                                    ; preds = %2638, %2636
  %2640 = phi float [ %2568, %2638 ], [ %2632, %2636 ]
  %2641 = phi float [ 0.000000e+00, %2638 ], [ %2633, %2636 ]
  %2642 = icmp ne i32 %2590, 0
  %2643 = fmul fast float %2640, %2571
  %2644 = fadd fast float %2643, %2584
  %2645 = fmul fast float %2644, %2640
  %2646 = select i1 %2642, float 0.000000e+00, float %2645
  %2647 = fcmp fast oeq float %2571, 0.000000e+00
  %2648 = fdiv fast float %2589, %2571
  %2649 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2648)  ; FMax(a,b)
  %2650 = select i1 %2647, float %2640, float %2649
  %2651 = call float @dx.op.binary.f32(i32 36, float %2640, float %2650)  ; FMin(a,b)
  %2652 = fcmp fast ogt float %2571, 0.000000e+00
  %2653 = fcmp fast olt float %2589, 0.000000e+00
  br i1 %2652, label %2654, label %2711, !dx.controlflow.hints !94

; <label>:2654                                    ; preds = %2639
  %2655 = icmp eq i32 %2590, 0
  br i1 %2653, label %2656, label %2700, !dx.controlflow.hints !95

; <label>:2656                                    ; preds = %2654
  %2657 = select i1 %2655, float %2640, float 0.000000e+00
  %2658 = fsub fast float -0.000000e+00, %2657
  %2659 = call float @dx.op.unary.f32(i32 6, float %2658)  ; FAbs(value)
  %2660 = fmul fast float %2657, %2571
  %2661 = fadd fast float %2660, %2584
  %2662 = fmul fast float %2659, %2661
  %2663 = fsub fast float %2646, %2662
  %2664 = fsub fast float %2640, %2659
  %2665 = select i1 %2655, float %2664, float 0.000000e+00
  %2666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2667 = extractvalue %dx.types.CBufRet.f32 %2666, 0
  %2668 = extractvalue %dx.types.CBufRet.f32 %2666, 1
  %2669 = extractvalue %dx.types.CBufRet.f32 %2666, 2
  %2670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2671 = extractvalue %dx.types.CBufRet.f32 %2670, 0
  %2672 = extractvalue %dx.types.CBufRet.f32 %2670, 1
  %2673 = extractvalue %dx.types.CBufRet.f32 %2670, 2
  %2674 = extractvalue %dx.types.CBufRet.f32 %2670, 3
  %2675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2676 = extractvalue %dx.types.CBufRet.f32 %2675, 3
  %2677 = call float @dx.op.binary.f32(i32 36, float %2663, float %2676)  ; FMin(a,b)
  %2678 = fmul fast float %2674, %2665
  %2679 = call float @dx.op.unary.f32(i32 7, float %2678)  ; Saturate(value)
  %2680 = fsub fast float %2671, %2667
  %2681 = fsub fast float %2672, %2668
  %2682 = fsub fast float %2673, %2669
  %2683 = fmul fast float %2679, %2680
  %2684 = fmul fast float %2679, %2681
  %2685 = fmul fast float %2679, %2682
  %2686 = fadd fast float %2683, %2667
  %2687 = fadd fast float %2684, %2668
  %2688 = fadd fast float %2685, %2669
  %2689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2690 = extractvalue %dx.types.CBufRet.f32 %2689, 0
  %2691 = extractvalue %dx.types.CBufRet.f32 %2689, 1
  %2692 = fadd fast float %2691, %2690
  %2693 = call float @dx.op.unary.f32(i32 7, float %2692)  ; Saturate(value)
  %2694 = extractvalue %dx.types.CBufRet.f32 %2689, 2
  %2695 = extractvalue %dx.types.CBufRet.f32 %2689, 3
  %2696 = fadd fast float %2695, %2694
  %2697 = call float @dx.op.unary.f32(i32 7, float %2696)  ; Saturate(value)
  %2698 = fmul fast float %2693, %2677
  %2699 = fmul fast float %2698, %2697
  br label %2941

; <label>:2700                                    ; preds = %2654
  br i1 %2655, label %2701, label %2722, !dx.controlflow.hints !96

; <label>:2701                                    ; preds = %2700
  %2702 = call float @dx.op.binary.f32(i32 36, float %2651, float %2641)  ; FMin(a,b)
  %2703 = fsub fast float %2651, %2702
  %2704 = fsub fast float %2703, %2640
  %2705 = call float @dx.op.unary.f32(i32 6, float %2704)  ; FAbs(value)
  %2706 = fadd fast float %2703, %2640
  %2707 = fmul fast float %2706, %2571
  %2708 = fadd fast float %2707, %2584
  %2709 = fmul fast float %2708, %2705
  %2710 = fsub fast float %2646, %2709
  br label %2722

; <label>:2711                                    ; preds = %2639
  br i1 %2653, label %2712, label %2722, !dx.controlflow.hints !97

; <label>:2712                                    ; preds = %2711
  %2713 = call float @dx.op.binary.f32(i32 35, float %2641, float %2651)  ; FMax(a,b)
  %2714 = icmp eq i32 %2590, 0
  %2715 = select i1 %2714, float %2651, float 0.000000e+00
  %2716 = fsub fast float -0.000000e+00, %2715
  %2717 = call float @dx.op.unary.f32(i32 6, float %2716)  ; FAbs(value)
  %2718 = fmul fast float %2715, %2571
  %2719 = fadd fast float %2718, %2584
  %2720 = fmul fast float %2717, %2719
  %2721 = fsub fast float %2646, %2720
  br label %2722

; <label>:2722                                    ; preds = %2712, %2711, %2701, %2700
  %2723 = phi float [ %2641, %2700 ], [ %2641, %2701 ], [ %2713, %2712 ], [ %2641, %2711 ]
  %2724 = phi float [ 0.000000e+00, %2700 ], [ %2705, %2701 ], [ %2717, %2712 ], [ 0.000000e+00, %2711 ]
  %2725 = phi float [ %2646, %2700 ], [ %2710, %2701 ], [ %2721, %2712 ], [ %2646, %2711 ]
  %2726 = phi float [ %2651, %2700 ], [ %2651, %2701 ], [ %2640, %2712 ], [ %2640, %2711 ]
  %2727 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 0
  store float -1.000000e+00, float* %2727, align 4, !tbaa !98, !noalias !102
  %2728 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 1
  store float -1.000000e+00, float* %2728, align 4, !tbaa !98, !noalias !102
  %2729 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 2
  store float -1.000000e+00, float* %2729, align 4, !tbaa !98, !noalias !102
  %2730 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 0
  store float -1.000000e+00, float* %2730, align 4, !tbaa !98, !noalias !102
  %2731 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 1
  store float -1.000000e+00, float* %2731, align 4, !tbaa !98, !noalias !102
  %2732 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 2
  store float -1.000000e+00, float* %2732, align 4, !tbaa !98, !noalias !102
  %2733 = icmp sgt i32 %2592, 0
  br i1 %2733, label %2734, label %2795

; <label>:2734                                    ; preds = %2722
  br label %2735

; <label>:2735                                    ; preds = %2784, %2734
  %2736 = phi i32 [ %2785, %2784 ], [ 0, %2734 ]
  %2737 = phi i32 [ %2786, %2784 ], [ 0, %2734 ]
  %2738 = add nuw i32 %2737, 171
  %2739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 %2738)  ; CBufferLoadLegacy(handle,regIndex)
  %2740 = extractvalue %dx.types.CBufRet.f32 %2739, 0
  %2741 = extractvalue %dx.types.CBufRet.f32 %2739, 1
  %2742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2743 = extractvalue %dx.types.CBufRet.f32 %2742, 0
  %2744 = extractvalue %dx.types.CBufRet.f32 %2742, 1
  %2745 = fsub fast float %2740, %2743
  %2746 = fsub fast float %2741, %2744
  %2747 = extractvalue %dx.types.CBufRet.f32 %2739, 2
  %2748 = fsub fast float -0.000000e+00, %2745
  %2749 = fsub fast float -0.000000e+00, %2746
  %2750 = call float @dx.op.dot2.f32(i32 54, float %2569, float %2570, float %2748, float %2749)  ; Dot2(ax,ay,bx,by)
  %2751 = fmul fast float %2750, 2.000000e+00
  %2752 = call float @dx.op.dot2.f32(i32 54, float %2748, float %2749, float %2748, float %2749)  ; Dot2(ax,ay,bx,by)
  %2753 = fmul fast float %2747, %2747
  %2754 = fsub fast float %2752, %2753
  %2755 = fmul fast float %2751, %2751
  %2756 = fmul fast float %2612, %2754
  %2757 = fsub fast float %2755, %2756
  %2758 = fcmp fast ogt float %2757, 0.000000e+00
  br i1 %2758, label %2759, label %2774, !dx.controlflow.hints !90

; <label>:2759                                    ; preds = %2735
  %2760 = fcmp fast ogt float %2751, 0.000000e+00
  %2761 = call float @dx.op.unary.f32(i32 24, float %2757)  ; Sqrt(value)
  %2762 = fsub fast float -0.000000e+00, %2761
  %2763 = select i1 %2760, float %2761, float %2762
  %2764 = fadd fast float %2763, %2751
  %2765 = fmul float %2764, -5.000000e-01
  %2766 = fdiv fast float %2765, %2605
  %2767 = call float @dx.op.binary.f32(i32 35, float %2766, float 0.000000e+00)  ; FMax(a,b)
  %2768 = call float @dx.op.binary.f32(i32 36, float %2640, float %2767)  ; FMin(a,b)
  %2769 = fdiv fast float %2754, %2765
  %2770 = call float @dx.op.binary.f32(i32 35, float %2769, float 0.000000e+00)  ; FMax(a,b)
  %2771 = call float @dx.op.binary.f32(i32 36, float %2640, float %2770)  ; FMin(a,b)
  %2772 = call float @dx.op.binary.f32(i32 36, float %2768, float %2771)  ; FMin(a,b)
  %2773 = call float @dx.op.binary.f32(i32 35, float %2768, float %2771)  ; FMax(a,b)
  br label %2774

; <label>:2774                                    ; preds = %2759, %2735
  %2775 = phi float [ %2773, %2759 ], [ -1.000000e+00, %2735 ]
  %2776 = phi float [ %2772, %2759 ], [ -1.000000e+00, %2735 ]
  %2777 = phi i1 [ true, %2759 ], [ false, %2735 ]
  br i1 %2777, label %2778, label %2784, !dx.controlflow.hints !113

; <label>:2778                                    ; preds = %2774
  %2779 = call float @dx.op.binary.f32(i32 35, float %2723, float %2776)  ; FMax(a,b)
  %2780 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 %2737
  store float %2779, float* %2780, align 4, !tbaa !98, !noalias !102
  %2781 = call float @dx.op.binary.f32(i32 35, float %2723, float %2775)  ; FMax(a,b)
  %2782 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 %2737
  store float %2781, float* %2782, align 4, !tbaa !98, !noalias !102
  %2783 = add nsw i32 %2736, 1
  br label %2784

; <label>:2784                                    ; preds = %2778, %2774
  %2785 = phi i32 [ %2783, %2778 ], [ %2736, %2774 ]
  %2786 = add nuw nsw i32 %2737, 1
  %2787 = icmp eq i32 %2786, %2592
  br i1 %2787, label %2788, label %2735

; <label>:2788                                    ; preds = %2784
  %2789 = load float, float* %2729, align 4, !tbaa !98, !alias.scope !114, !noalias !117
  %2790 = load float, float* %2728, align 4, !tbaa !98, !alias.scope !120, !noalias !121
  %2791 = load float, float* %2727, align 4, !tbaa !98, !alias.scope !122, !noalias !123
  %2792 = load float, float* %2732, align 4, !tbaa !98, !alias.scope !124, !noalias !127
  %2793 = load float, float* %2731, align 4, !tbaa !98, !alias.scope !130, !noalias !131
  %2794 = load float, float* %2730, align 4, !tbaa !98, !alias.scope !132, !noalias !133
  br label %2795

; <label>:2795                                    ; preds = %2788, %2722
  %2796 = phi float [ -1.000000e+00, %2722 ], [ %2794, %2788 ]
  %2797 = phi float [ -1.000000e+00, %2722 ], [ %2793, %2788 ]
  %2798 = phi float [ -1.000000e+00, %2722 ], [ %2792, %2788 ]
  %2799 = phi float [ -1.000000e+00, %2722 ], [ %2791, %2788 ]
  %2800 = phi float [ -1.000000e+00, %2722 ], [ %2790, %2788 ]
  %2801 = phi float [ -1.000000e+00, %2722 ], [ %2789, %2788 ]
  %2802 = phi i32 [ 0, %2722 ], [ %2785, %2788 ]
  %2803 = call float @dx.op.binary.f32(i32 36, float %2800, float %2801)  ; FMin(a,b)
  %2804 = call float @dx.op.binary.f32(i32 36, float %2799, float %2803)  ; FMin(a,b)
  %2805 = call float @dx.op.binary.f32(i32 35, float %2799, float %2800)  ; FMax(a,b)
  %2806 = call float @dx.op.binary.f32(i32 36, float %2805, float %2801)  ; FMin(a,b)
  %2807 = call float @dx.op.binary.f32(i32 36, float %2799, float %2800)  ; FMin(a,b)
  %2808 = call float @dx.op.binary.f32(i32 35, float %2807, float %2806)  ; FMax(a,b)
  %2809 = call float @dx.op.binary.f32(i32 35, float %2800, float %2801)  ; FMax(a,b)
  %2810 = call float @dx.op.binary.f32(i32 35, float %2799, float %2809)  ; FMax(a,b)
  store float %2804, float* %2727, align 4, !tbaa !98, !alias.scope !122, !noalias !123
  store float %2808, float* %2728, align 4, !tbaa !98, !alias.scope !120, !noalias !121
  store float %2810, float* %2729, align 4, !tbaa !98, !alias.scope !114, !noalias !117
  %2811 = call float @dx.op.binary.f32(i32 36, float %2797, float %2798)  ; FMin(a,b)
  %2812 = call float @dx.op.binary.f32(i32 36, float %2796, float %2811)  ; FMin(a,b)
  %2813 = call float @dx.op.binary.f32(i32 35, float %2796, float %2797)  ; FMax(a,b)
  %2814 = call float @dx.op.binary.f32(i32 36, float %2813, float %2798)  ; FMin(a,b)
  %2815 = call float @dx.op.binary.f32(i32 36, float %2796, float %2797)  ; FMin(a,b)
  %2816 = call float @dx.op.binary.f32(i32 35, float %2815, float %2814)  ; FMax(a,b)
  %2817 = call float @dx.op.binary.f32(i32 35, float %2797, float %2798)  ; FMax(a,b)
  %2818 = call float @dx.op.binary.f32(i32 35, float %2796, float %2817)  ; FMax(a,b)
  store float %2812, float* %2730, align 4, !tbaa !98, !alias.scope !132, !noalias !133
  store float %2816, float* %2731, align 4, !tbaa !98, !alias.scope !130, !noalias !131
  store float %2818, float* %2732, align 4, !tbaa !98, !alias.scope !124, !noalias !127
  %2819 = sub nsw i32 3, %2802
  %2820 = icmp sgt i32 %2819, 2
  br i1 %2820, label %2821, label %2859, !dx.controlflow.hints !134

; <label>:2821                                    ; preds = %2795
  %2822 = icmp eq i32 %2590, 0
  %2823 = fsub fast float %2640, %2724
  %2824 = select i1 %2822, float %2823, float %2724
  %2825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2826 = extractvalue %dx.types.CBufRet.f32 %2825, 0
  %2827 = extractvalue %dx.types.CBufRet.f32 %2825, 1
  %2828 = extractvalue %dx.types.CBufRet.f32 %2825, 2
  %2829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2830 = extractvalue %dx.types.CBufRet.f32 %2829, 0
  %2831 = extractvalue %dx.types.CBufRet.f32 %2829, 1
  %2832 = extractvalue %dx.types.CBufRet.f32 %2829, 2
  %2833 = extractvalue %dx.types.CBufRet.f32 %2829, 3
  %2834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2835 = extractvalue %dx.types.CBufRet.f32 %2834, 3
  %2836 = call float @dx.op.binary.f32(i32 36, float %2725, float %2835)  ; FMin(a,b)
  %2837 = fmul fast float %2833, %2824
  %2838 = call float @dx.op.unary.f32(i32 7, float %2837)  ; Saturate(value)
  %2839 = fsub fast float %2830, %2826
  %2840 = fsub fast float %2831, %2827
  %2841 = fsub fast float %2832, %2828
  %2842 = fmul fast float %2838, %2839
  %2843 = fmul fast float %2838, %2840
  %2844 = fmul fast float %2838, %2841
  %2845 = fadd fast float %2842, %2826
  %2846 = fadd fast float %2843, %2827
  %2847 = fadd fast float %2844, %2828
  %2848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2849 = extractvalue %dx.types.CBufRet.f32 %2848, 0
  %2850 = extractvalue %dx.types.CBufRet.f32 %2848, 1
  %2851 = fadd fast float %2850, %2849
  %2852 = call float @dx.op.unary.f32(i32 7, float %2851)  ; Saturate(value)
  %2853 = extractvalue %dx.types.CBufRet.f32 %2848, 2
  %2854 = extractvalue %dx.types.CBufRet.f32 %2848, 3
  %2855 = fadd fast float %2854, %2853
  %2856 = call float @dx.op.unary.f32(i32 7, float %2855)  ; Saturate(value)
  %2857 = fmul fast float %2852, %2836
  %2858 = fmul fast float %2857, %2856
  br label %2941

; <label>:2859                                    ; preds = %2795
  %2860 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 %2819
  %2861 = load float, float* %2860, align 4, !tbaa !98, !noalias !102
  %2862 = fcmp fast olt float %2861, %2726
  %2863 = icmp sgt i32 %2802, 0
  %2864 = and i1 %2863, %2862
  br i1 %2864, label %2865, label %2902

; <label>:2865                                    ; preds = %2859
  br label %2866

; <label>:2866                                    ; preds = %2895, %2865
  %2867 = phi float [ %2896, %2895 ], [ %2724, %2865 ]
  %2868 = phi float [ %2897, %2895 ], [ %2725, %2865 ]
  %2869 = phi float [ %2877, %2895 ], [ %2861, %2865 ]
  %2870 = phi i32 [ %2874, %2895 ], [ %2819, %2865 ]
  %2871 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 %2870
  %2872 = load float, float* %2871, align 4, !tbaa !98, !noalias !102
  %2873 = icmp slt i32 %2870, 2
  %2874 = add nsw i32 %2870, 1
  %2875 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 %2874
  %2876 = load float, float* %2875, align 4, !tbaa !98, !noalias !102
  %2877 = select i1 %2873, float %2876, float %2640
  %2878 = call float @dx.op.binary.f32(i32 36, float %2877, float %2872)  ; FMin(a,b)
  %2879 = call float @dx.op.binary.f32(i32 36, float %2726, float %2878)  ; FMin(a,b)
  %2880 = icmp eq i32 %2590, 0
  %2881 = fadd fast float %2879, %2869
  %2882 = fmul fast float %2881, %2571
  %2883 = fadd fast float %2882, %2584
  br i1 %2880, label %2889, label %2884, !dx.controlflow.hints !135

; <label>:2884                                    ; preds = %2866
  %2885 = fsub fast float %2879, %2869
  %2886 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2885)  ; FMax(a,b)
  %2887 = fmul fast float %2886, %2883
  %2888 = fadd fast float %2887, %2868
  br label %2895

; <label>:2889                                    ; preds = %2866
  %2890 = fsub fast float %2869, %2879
  %2891 = call float @dx.op.unary.f32(i32 6, float %2890)  ; FAbs(value)
  %2892 = fadd fast float %2891, %2867
  %2893 = fmul fast float %2891, %2883
  %2894 = fsub fast float %2868, %2893
  br label %2895

; <label>:2895                                    ; preds = %2889, %2884
  %2896 = phi float [ %2886, %2884 ], [ %2892, %2889 ]
  %2897 = phi float [ %2888, %2884 ], [ %2894, %2889 ]
  %2898 = fcmp fast olt float %2877, %2726
  %2899 = icmp slt i32 %2874, 3
  %2900 = and i1 %2899, %2898
  br i1 %2900, label %2866, label %2901

; <label>:2901                                    ; preds = %2895
  br label %2902

; <label>:2902                                    ; preds = %2901, %2859
  %2903 = phi float [ %2724, %2859 ], [ %2896, %2901 ]
  %2904 = phi float [ %2725, %2859 ], [ %2897, %2901 ]
  %2905 = fsub fast float %2640, %2903
  %2906 = select i1 %2642, float %2903, float %2905
  %2907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2908 = extractvalue %dx.types.CBufRet.f32 %2907, 0
  %2909 = extractvalue %dx.types.CBufRet.f32 %2907, 1
  %2910 = extractvalue %dx.types.CBufRet.f32 %2907, 2
  %2911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2912 = extractvalue %dx.types.CBufRet.f32 %2911, 0
  %2913 = extractvalue %dx.types.CBufRet.f32 %2911, 1
  %2914 = extractvalue %dx.types.CBufRet.f32 %2911, 2
  %2915 = extractvalue %dx.types.CBufRet.f32 %2911, 3
  %2916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2917 = extractvalue %dx.types.CBufRet.f32 %2916, 3
  %2918 = call float @dx.op.binary.f32(i32 36, float %2904, float %2917)  ; FMin(a,b)
  %2919 = fmul fast float %2915, %2906
  %2920 = call float @dx.op.unary.f32(i32 7, float %2919)  ; Saturate(value)
  %2921 = fsub fast float %2912, %2908
  %2922 = fsub fast float %2913, %2909
  %2923 = fsub fast float %2914, %2910
  %2924 = fmul fast float %2920, %2921
  %2925 = fmul fast float %2920, %2922
  %2926 = fmul fast float %2920, %2923
  %2927 = fadd fast float %2924, %2908
  %2928 = fadd fast float %2925, %2909
  %2929 = fadd fast float %2926, %2910
  %2930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2931 = extractvalue %dx.types.CBufRet.f32 %2930, 0
  %2932 = extractvalue %dx.types.CBufRet.f32 %2930, 1
  %2933 = fadd fast float %2932, %2931
  %2934 = call float @dx.op.unary.f32(i32 7, float %2933)  ; Saturate(value)
  %2935 = extractvalue %dx.types.CBufRet.f32 %2930, 2
  %2936 = extractvalue %dx.types.CBufRet.f32 %2930, 3
  %2937 = fadd fast float %2936, %2935
  %2938 = call float @dx.op.unary.f32(i32 7, float %2937)  ; Saturate(value)
  %2939 = fmul fast float %2934, %2918
  %2940 = fmul fast float %2939, %2938
  br label %2941

; <label>:2941                                    ; preds = %2902, %2821, %2656, %2638, %2636
  %2942 = phi float [ %2665, %2656 ], [ %2824, %2821 ], [ %2906, %2902 ], [ 0.000000e+00, %2636 ], [ 0.000000e+00, %2638 ]
  %2943 = phi float [ %2699, %2656 ], [ %2858, %2821 ], [ %2940, %2902 ], [ 0.000000e+00, %2636 ], [ 0.000000e+00, %2638 ]
  %2944 = phi float [ %2686, %2656 ], [ %2845, %2821 ], [ %2927, %2902 ], [ 0.000000e+00, %2636 ], [ 0.000000e+00, %2638 ]
  %2945 = phi float [ %2687, %2656 ], [ %2846, %2821 ], [ %2928, %2902 ], [ 0.000000e+00, %2636 ], [ 0.000000e+00, %2638 ]
  %2946 = phi float [ %2688, %2656 ], [ %2847, %2821 ], [ %2929, %2902 ], [ 0.000000e+00, %2636 ], [ 0.000000e+00, %2638 ]
  %2947 = fmul fast float %2579, %2943
  %2948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2949 = extractvalue %dx.types.CBufRet.f32 %2948, 2
  %2950 = fsub fast float %2586, %2949
  %2951 = fcmp fast olt float %2947, -2.000000e+01
  %2952 = call float @dx.op.unary.f32(i32 21, float %2947)  ; Exp(value)
  %2953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2954 = extractvalue %dx.types.CBufRet.f32 %2953, 2
  %2955 = extractvalue %dx.types.CBufRet.f32 %2953, 3
  %2956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2957 = extractvalue %dx.types.CBufRet.f32 %2956, 2
  %2958 = fmul fast float %2955, %2950
  %2959 = call float @dx.op.unary.f32(i32 7, float %2958)  ; Saturate(value)
  %2960 = fsub fast float 1.000000e+00, %2959
  %2961 = fmul fast float %2571, 5.000000e-01
  %2962 = fadd fast float %2961, 5.000000e-01
  %2963 = call float @dx.op.unary.f32(i32 7, float %2962)  ; Saturate(value)
  %2964 = fsub fast float 1.000000e+00, %2963
  %2965 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2960)  ; FMax(a,b)
  %2966 = fdiv fast float %2964, %2965
  %2967 = fsub fast float %2950, %2537
  %2968 = call float @dx.op.unary.f32(i32 6, float %2967)  ; FAbs(value)
  %2969 = fmul fast float %2968, %2954
  %2970 = call float @dx.op.unary.f32(i32 7, float %2966)  ; Saturate(value)
  %2971 = fsub fast float 1.000000e+00, %2969
  %2972 = fmul fast float %2971, %2970
  %2973 = fadd fast float %2972, %2969
  %2974 = fmul fast float %2957, %2950
  %2975 = call float @dx.op.unary.f32(i32 7, float %2974)  ; Saturate(value)
  %2976 = fsub fast float 1.000000e+00, %2973
  %2977 = fmul fast float %2976, %2975
  %2978 = fadd fast float %2977, %2973
  %2979 = call float @dx.op.unary.f32(i32 7, float %2978)  ; Saturate(value)
  %2980 = fadd fast float %2952, -1.000000e+00
  %2981 = select i1 %2951, float -1.000000e+00, float %2980
  %2982 = fmul fast float %2979, %2981
  %2983 = fadd fast float %2982, 1.000000e+00
  %2984 = fsub fast float -0.000000e+00, %2982
  %2985 = fmul fast float %2944, %2984
  %2986 = fmul fast float %2945, %2984
  %2987 = fmul fast float %2946, %2984
  br label %2988

; <label>:2988                                    ; preds = %2941, %2490
  %2989 = phi float [ %2942, %2941 ], [ 0.000000e+00, %2490 ]
  %2990 = phi float [ %2983, %2941 ], [ 1.000000e+00, %2490 ]
  %2991 = phi float [ %2985, %2941 ], [ 0.000000e+00, %2490 ]
  %2992 = phi float [ %2986, %2941 ], [ 0.000000e+00, %2490 ]
  %2993 = phi float [ %2987, %2941 ], [ 0.000000e+00, %2490 ]
  %2994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2995 = extractvalue %dx.types.CBufRet.f32 %2994, 1
  %2996 = fsub fast float 1.000000e+00, %2990
  %2997 = fmul fast float %2996, %2572
  %2998 = fmul fast float %2997, %2995
  %2999 = fsub fast float %2572, %2998
  br i1 %2565, label %3000, label %3029, !dx.controlflow.hints !136

; <label>:3000                                    ; preds = %2988
  %3001 = fmul fast float %2573, %2562
  %3002 = fadd fast float %3001, %2563
  %3003 = call float @dx.op.unary.f32(i32 7, float %3002)  ; Saturate(value)
  %3004 = fmul fast float %2544, %2999
  %3005 = fsub fast float -0.000000e+00, %3004
  %3006 = fmul fast float %2545, %2999
  %3007 = fsub fast float -0.000000e+00, %3006
  %3008 = call float @dx.op.unary.f32(i32 21, float %3005)  ; Exp(value)
  %3009 = call float @dx.op.unary.f32(i32 21, float %3007)  ; Exp(value)
  %3010 = call float @dx.op.binary.f32(i32 35, float %2552, float %3008)  ; FMax(a,b)
  %3011 = call float @dx.op.binary.f32(i32 35, float %2552, float %3009)  ; FMax(a,b)
  %3012 = fsub fast float %3011, %3010
  %3013 = fmul fast float %3012, %3003
  %3014 = fadd fast float %3013, %3010
  %3015 = call float @dx.op.unary.f32(i32 7, float %3014)  ; Saturate(value)
  %3016 = fsub fast float %2549, %2554
  %3017 = fsub fast float %2550, %2555
  %3018 = fsub fast float %2551, %2556
  %3019 = fmul fast float %3003, %3016
  %3020 = fmul fast float %3003, %3017
  %3021 = fmul fast float %3003, %3018
  %3022 = fadd fast float %3019, %2554
  %3023 = fadd fast float %3020, %2555
  %3024 = fadd fast float %3021, %2556
  %3025 = fsub fast float 1.000000e+00, %3015
  %3026 = fmul fast float %3025, %3022
  %3027 = fmul fast float %3025, %3023
  %3028 = fmul fast float %3025, %3024
  br label %3088

; <label>:3029                                    ; preds = %2988
  %3030 = fmul fast float %2999, %2561
  %3031 = call float @dx.op.unary.f32(i32 7, float %3030)  ; Saturate(value)
  %3032 = fsub fast float 2.000000e+00, %3031
  %3033 = fmul fast float %3031, 9.921875e-01
  %3034 = fmul fast float %3033, %3032
  %3035 = fadd fast float %3034, 3.906250e-03
  %3036 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %25, float %3035, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3037 = extractvalue %dx.types.ResRet.f32 %3036, 0
  %3038 = fsub fast float %3031, %3037
  %3039 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3038)  ; FMax(a,b)
  %3040 = fmul fast float %2547, %2537
  %3041 = call float @dx.op.unary.f32(i32 6, float %3040)  ; FAbs(value)
  %3042 = fcmp fast ogt float %3041, 0x3EB0C6F7A0000000
  br i1 %3042, label %3043, label %3049, !dx.controlflow.hints !137

; <label>:3043                                    ; preds = %3029
  %3044 = fmul fast float %3040, 0xBFF7154760000000
  %3045 = call float @dx.op.unary.f32(i32 21, float %3044)  ; Exp(value)
  %3046 = fsub fast float 1.000000e+00, %3045
  %3047 = fdiv fast float %3046, %3040
  %3048 = fmul fast float %3047, %2557
  br label %3049

; <label>:3049                                    ; preds = %3043, %3029
  %3050 = phi float [ %3048, %3043 ], [ %2557, %3029 ]
  %3051 = fadd fast float %3050, %2559
  %3052 = fmul fast float %3051, %3039
  %3053 = fmul fast float %2544, %3052
  %3054 = fsub fast float -0.000000e+00, %3053
  %3055 = fmul fast float %2545, %3052
  %3056 = fsub fast float -0.000000e+00, %3055
  %3057 = fmul fast float %2546, %3052
  %3058 = fsub fast float -0.000000e+00, %3057
  %3059 = call float @dx.op.unary.f32(i32 21, float %3054)  ; Exp(value)
  %3060 = call float @dx.op.unary.f32(i32 21, float %3056)  ; Exp(value)
  %3061 = call float @dx.op.unary.f32(i32 21, float %3058)  ; Exp(value)
  %3062 = fmul fast float %2573, %2573
  %3063 = fadd fast float %3062, 1.000000e+00
  %3064 = fmul fast float %3063, 0x3FAE8EC8A0000000
  %3065 = fmul fast float %3064, %2554
  %3066 = fmul fast float %3064, %2555
  %3067 = fmul fast float %3064, %2556
  %3068 = fmul fast float %2573, %2552
  %3069 = fsub fast float 1.000000e+00, %3068
  %3070 = fmul fast float %2552, %2552
  %3071 = fsub fast float 1.000000e+00, %3070
  %3072 = fmul fast float %3071, 0x3FB45F3060000000
  %3073 = fmul fast float %3069, %3069
  %3074 = fdiv fast float 1.000000e+00, %3073
  %3075 = fmul fast float %3072, %3074
  %3076 = fmul fast float %3075, %2549
  %3077 = fmul fast float %3075, %2550
  %3078 = fmul fast float %3075, %2551
  %3079 = fadd fast float %3076, %3065
  %3080 = fadd fast float %3077, %3066
  %3081 = fadd fast float %3078, %3067
  %3082 = fsub fast float 1.000000e+00, %3059
  %3083 = fsub fast float 1.000000e+00, %3060
  %3084 = fsub fast float 1.000000e+00, %3061
  %3085 = fmul fast float %3079, %3082
  %3086 = fmul fast float %3080, %3083
  %3087 = fmul fast float %3081, %3084
  br label %3088

; <label>:3088                                    ; preds = %3049, %3000
  %3089 = phi float [ %3026, %3000 ], [ %3085, %3049 ]
  %3090 = phi float [ %3027, %3000 ], [ %3086, %3049 ]
  %3091 = phi float [ %3028, %3000 ], [ %3087, %3049 ]
  %3092 = phi float [ %3015, %3000 ], [ %3059, %3049 ]
  %3093 = phi float [ %3015, %3000 ], [ %3060, %3049 ]
  %3094 = phi float [ %3015, %3000 ], [ %3061, %3049 ]
  br i1 %2581, label %3095, label %3293, !dx.controlflow.hints !138

; <label>:3095                                    ; preds = %3088
  %3096 = extractvalue %dx.types.CBufRet.f32 %2994, 0
  %3097 = fmul fast float %3096, %2996
  %3098 = fsub fast float %2991, %3089
  %3099 = fsub fast float %2992, %3090
  %3100 = fsub fast float %2993, %3091
  %3101 = fmul fast float %3097, %3098
  %3102 = fmul fast float %3097, %3099
  %3103 = fmul fast float %3097, %3100
  %3104 = fadd fast float %3101, %3089
  %3105 = fadd fast float %3102, %3090
  %3106 = fadd fast float %3103, %3091
  %3107 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3092)  ; FMax(a,b)
  %3108 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3093)  ; FMax(a,b)
  %3109 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3094)  ; FMax(a,b)
  %3110 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2990)  ; FMax(a,b)
  %3111 = call float @dx.op.binary.f32(i32 35, float %2989, float %2999)  ; FMax(a,b)
  %3112 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %3111)  ; FMax(a,b)
  %3113 = fdiv fast float %2989, %3112
  %3114 = call float @dx.op.unary.f32(i32 7, float %3113)  ; Saturate(value)
  %3115 = fdiv fast float %2999, %3112
  %3116 = call float @dx.op.unary.f32(i32 7, float %3115)  ; Saturate(value)
  %3117 = fcmp fast une float %3110, 1.000000e+00
  br i1 %3117, label %3118, label %3131, !dx.controlflow.hints !139

; <label>:3118                                    ; preds = %3095
  %3119 = call float @dx.op.unary.f32(i32 23, float %3110)  ; Log(value)
  %3120 = fmul fast float %3119, 0x3FE62E4300000000
  %3121 = fmul fast float %2991, %3120
  %3122 = fsub fast float -0.000000e+00, %3121
  %3123 = fmul fast float %2992, %3120
  %3124 = fsub fast float -0.000000e+00, %3123
  %3125 = fmul fast float %2993, %3120
  %3126 = fsub fast float -0.000000e+00, %3125
  %3127 = fsub fast float 1.000000e+00, %3110
  %3128 = fdiv fast float %3122, %3127
  %3129 = fdiv fast float %3124, %3127
  %3130 = fdiv fast float %3126, %3127
  br label %3131

; <label>:3131                                    ; preds = %3118, %3095
  %3132 = phi float [ %3128, %3118 ], [ %2991, %3095 ]
  %3133 = phi float [ %3129, %3118 ], [ %2992, %3095 ]
  %3134 = phi float [ %3130, %3118 ], [ %2993, %3095 ]
  %3135 = phi float [ %3120, %3118 ], [ 0.000000e+00, %3095 ]
  %3136 = fcmp fast une float %3107, 1.000000e+00
  br i1 %3136, label %3137, label %3144, !dx.controlflow.hints !140

; <label>:3137                                    ; preds = %3131
  %3138 = call float @dx.op.unary.f32(i32 23, float %3107)  ; Log(value)
  %3139 = fmul fast float %3138, 0x3FE62E4300000000
  %3140 = fmul fast float %3104, %3139
  %3141 = fsub fast float -0.000000e+00, %3140
  %3142 = fsub fast float 1.000000e+00, %3107
  %3143 = fdiv fast float %3141, %3142
  br label %3144

; <label>:3144                                    ; preds = %3137, %3131
  %3145 = phi float [ %3143, %3137 ], [ %3104, %3131 ]
  %3146 = phi float [ %3139, %3137 ], [ 0.000000e+00, %3131 ]
  %3147 = fcmp fast une float %3108, 1.000000e+00
  br i1 %3147, label %3148, label %3155, !dx.controlflow.hints !140

; <label>:3148                                    ; preds = %3144
  %3149 = call float @dx.op.unary.f32(i32 23, float %3108)  ; Log(value)
  %3150 = fmul fast float %3149, 0x3FE62E4300000000
  %3151 = fmul fast float %3105, %3150
  %3152 = fsub fast float -0.000000e+00, %3151
  %3153 = fsub fast float 1.000000e+00, %3108
  %3154 = fdiv fast float %3152, %3153
  br label %3155

; <label>:3155                                    ; preds = %3148, %3144
  %3156 = phi float [ %3154, %3148 ], [ %3105, %3144 ]
  %3157 = phi float [ %3150, %3148 ], [ 0.000000e+00, %3144 ]
  %3158 = fcmp fast une float %3109, 1.000000e+00
  br i1 %3158, label %3159, label %3166, !dx.controlflow.hints !140

; <label>:3159                                    ; preds = %3155
  %3160 = call float @dx.op.unary.f32(i32 23, float %3109)  ; Log(value)
  %3161 = fmul fast float %3160, 0x3FE62E4300000000
  %3162 = fmul fast float %3106, %3161
  %3163 = fsub fast float -0.000000e+00, %3162
  %3164 = fsub fast float 1.000000e+00, %3109
  %3165 = fdiv fast float %3163, %3164
  br label %3166

; <label>:3166                                    ; preds = %3159, %3155
  %3167 = phi float [ %3165, %3159 ], [ %3106, %3155 ]
  %3168 = phi float [ %3161, %3159 ], [ 0.000000e+00, %3155 ]
  %3169 = fmul fast float %3132, %3116
  %3170 = fmul fast float %3133, %3116
  %3171 = fmul fast float %3134, %3116
  %3172 = fmul fast float %3135, %3116
  %3173 = fmul fast float %3145, %3114
  %3174 = fmul fast float %3156, %3114
  %3175 = fmul fast float %3167, %3114
  %3176 = fmul fast float %3146, %3114
  %3177 = fmul fast float %3157, %3114
  %3178 = fmul fast float %3168, %3114
  %3179 = fadd fast float %3173, %3169
  %3180 = fadd fast float %3174, %3170
  %3181 = fadd fast float %3175, %3171
  %3182 = fadd fast float %3176, %3172
  %3183 = fadd fast float %3177, %3172
  %3184 = fadd fast float %3178, %3172
  %3185 = fcmp fast une float %3182, 0.000000e+00
  br i1 %3185, label %3186, label %3193, !dx.controlflow.hints !141

; <label>:3186                                    ; preds = %3166
  %3187 = fmul fast float %3182, 0x3FF7154760000000
  %3188 = call float @dx.op.unary.f32(i32 21, float %3187)  ; Exp(value)
  %3189 = fsub fast float 1.000000e+00, %3188
  %3190 = fmul fast float %3179, %3189
  %3191 = fsub fast float -0.000000e+00, %3190
  %3192 = fdiv fast float %3191, %3182
  br label %3193

; <label>:3193                                    ; preds = %3186, %3166
  %3194 = phi float [ %3188, %3186 ], [ 1.000000e+00, %3166 ]
  %3195 = phi float [ %3192, %3186 ], [ %3179, %3166 ]
  %3196 = fcmp fast une float %3183, 0.000000e+00
  br i1 %3196, label %3197, label %3204, !dx.controlflow.hints !141

; <label>:3197                                    ; preds = %3193
  %3198 = fmul fast float %3183, 0x3FF7154760000000
  %3199 = call float @dx.op.unary.f32(i32 21, float %3198)  ; Exp(value)
  %3200 = fsub fast float 1.000000e+00, %3199
  %3201 = fmul fast float %3180, %3200
  %3202 = fsub fast float -0.000000e+00, %3201
  %3203 = fdiv fast float %3202, %3183
  br label %3204

; <label>:3204                                    ; preds = %3197, %3193
  %3205 = phi float [ %3199, %3197 ], [ 1.000000e+00, %3193 ]
  %3206 = phi float [ %3203, %3197 ], [ %3180, %3193 ]
  %3207 = fcmp fast une float %3184, 0.000000e+00
  br i1 %3207, label %3208, label %3215, !dx.controlflow.hints !141

; <label>:3208                                    ; preds = %3204
  %3209 = fmul fast float %3184, 0x3FF7154760000000
  %3210 = call float @dx.op.unary.f32(i32 21, float %3209)  ; Exp(value)
  %3211 = fsub fast float 1.000000e+00, %3210
  %3212 = fmul fast float %3181, %3211
  %3213 = fsub fast float -0.000000e+00, %3212
  %3214 = fdiv fast float %3213, %3184
  br label %3215

; <label>:3215                                    ; preds = %3208, %3204
  %3216 = phi float [ %3210, %3208 ], [ 1.000000e+00, %3204 ]
  %3217 = phi float [ %3214, %3208 ], [ %3181, %3204 ]
  %3218 = fcmp fast ogt float %3114, %3116
  br i1 %3218, label %3219, label %3239, !dx.controlflow.hints !142

; <label>:3219                                    ; preds = %3215
  %3220 = fsub fast float 1.000000e+00, %3116
  %3221 = fmul fast float %3132, %3220
  %3222 = fmul fast float %3133, %3220
  %3223 = fmul fast float %3134, %3220
  %3224 = fmul fast float %3135, %3220
  %3225 = fcmp fast une float %3224, 0.000000e+00
  br i1 %3225, label %3226, label %3277, !dx.controlflow.hints !143

; <label>:3226                                    ; preds = %3219
  %3227 = fmul fast float %3224, 0x3FF7154760000000
  %3228 = call float @dx.op.unary.f32(i32 21, float %3227)  ; Exp(value)
  %3229 = fsub fast float 1.000000e+00, %3228
  %3230 = fmul fast float %3221, %3229
  %3231 = fsub fast float -0.000000e+00, %3230
  %3232 = fmul fast float %3222, %3229
  %3233 = fsub fast float -0.000000e+00, %3232
  %3234 = fmul fast float %3223, %3229
  %3235 = fsub fast float -0.000000e+00, %3234
  %3236 = fdiv fast float %3231, %3224
  %3237 = fdiv fast float %3233, %3224
  %3238 = fdiv fast float %3235, %3224
  br label %3277

; <label>:3239                                    ; preds = %3215
  %3240 = fsub fast float 1.000000e+00, %3114
  %3241 = fmul fast float %3145, %3240
  %3242 = fmul fast float %3156, %3240
  %3243 = fmul fast float %3167, %3240
  %3244 = fmul fast float %3146, %3240
  %3245 = fmul fast float %3157, %3240
  %3246 = fmul fast float %3168, %3240
  %3247 = fcmp fast une float %3244, 0.000000e+00
  br i1 %3247, label %3248, label %3255, !dx.controlflow.hints !141

; <label>:3248                                    ; preds = %3239
  %3249 = fmul fast float %3244, 0x3FF7154760000000
  %3250 = call float @dx.op.unary.f32(i32 21, float %3249)  ; Exp(value)
  %3251 = fsub fast float 1.000000e+00, %3250
  %3252 = fmul fast float %3241, %3251
  %3253 = fsub fast float -0.000000e+00, %3252
  %3254 = fdiv fast float %3253, %3244
  br label %3255

; <label>:3255                                    ; preds = %3248, %3239
  %3256 = phi float [ %3254, %3248 ], [ %3241, %3239 ]
  %3257 = phi float [ %3250, %3248 ], [ 1.000000e+00, %3239 ]
  %3258 = fcmp fast une float %3245, 0.000000e+00
  br i1 %3258, label %3259, label %3266, !dx.controlflow.hints !141

; <label>:3259                                    ; preds = %3255
  %3260 = fmul fast float %3245, 0x3FF7154760000000
  %3261 = call float @dx.op.unary.f32(i32 21, float %3260)  ; Exp(value)
  %3262 = fsub fast float 1.000000e+00, %3261
  %3263 = fmul fast float %3242, %3262
  %3264 = fsub fast float -0.000000e+00, %3263
  %3265 = fdiv fast float %3264, %3245
  br label %3266

; <label>:3266                                    ; preds = %3259, %3255
  %3267 = phi float [ %3265, %3259 ], [ %3242, %3255 ]
  %3268 = phi float [ %3261, %3259 ], [ 1.000000e+00, %3255 ]
  %3269 = fcmp fast une float %3246, 0.000000e+00
  br i1 %3269, label %3270, label %3277, !dx.controlflow.hints !141

; <label>:3270                                    ; preds = %3266
  %3271 = fmul fast float %3246, 0x3FF7154760000000
  %3272 = call float @dx.op.unary.f32(i32 21, float %3271)  ; Exp(value)
  %3273 = fsub fast float 1.000000e+00, %3272
  %3274 = fmul fast float %3243, %3273
  %3275 = fsub fast float -0.000000e+00, %3274
  %3276 = fdiv fast float %3275, %3246
  br label %3277

; <label>:3277                                    ; preds = %3270, %3266, %3226, %3219
  %3278 = phi float [ %3276, %3270 ], [ %3238, %3226 ], [ %3223, %3219 ], [ %3243, %3266 ]
  %3279 = phi float [ %3267, %3270 ], [ %3237, %3226 ], [ %3222, %3219 ], [ %3267, %3266 ]
  %3280 = phi float [ %3256, %3270 ], [ %3236, %3226 ], [ %3221, %3219 ], [ %3256, %3266 ]
  %3281 = phi float [ %3272, %3270 ], [ %3228, %3226 ], [ 1.000000e+00, %3219 ], [ 1.000000e+00, %3266 ]
  %3282 = phi float [ %3268, %3270 ], [ %3228, %3226 ], [ 1.000000e+00, %3219 ], [ %3268, %3266 ]
  %3283 = phi float [ %3257, %3270 ], [ %3228, %3226 ], [ 1.000000e+00, %3219 ], [ %3257, %3266 ]
  %3284 = fmul fast float %3283, %3195
  %3285 = fmul fast float %3282, %3206
  %3286 = fmul fast float %3281, %3217
  %3287 = fadd fast float %3284, %3280
  %3288 = fadd fast float %3285, %3279
  %3289 = fadd fast float %3286, %3278
  %3290 = fmul fast float %3283, %3194
  %3291 = fmul fast float %3282, %3205
  %3292 = fmul fast float %3281, %3216
  br label %3293

; <label>:3293                                    ; preds = %3277, %3088
  %3294 = phi float [ %3094, %3088 ], [ %3292, %3277 ]
  %3295 = phi float [ %3093, %3088 ], [ %3291, %3277 ]
  %3296 = phi float [ %3092, %3088 ], [ %3290, %3277 ]
  %3297 = phi float [ %3091, %3088 ], [ %3289, %3277 ]
  %3298 = phi float [ %3090, %3088 ], [ %3288, %3277 ]
  %3299 = phi float [ %3089, %3088 ], [ %3287, %3277 ]
  %3300 = fmul fast float %3296, %2437
  %3301 = fmul fast float %3295, %2438
  %3302 = fmul fast float %3294, %2439
  %3303 = fsub fast float 1.000000e+00, %2500
  %3304 = fmul fast float %3299, %3303
  %3305 = fmul fast float %3298, %3303
  %3306 = fmul fast float %3297, %3303
  %3307 = fadd fast float %3304, %3300
  %3308 = fadd fast float %3305, %3301
  %3309 = fadd fast float %3306, %3302
  %3310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %3311 = extractvalue %dx.types.CBufRet.f32 %3310, 2
  %3312 = fmul fast float %3311, %2510
  %3313 = call float @dx.op.unary.f32(i32 7, float %3312)  ; Saturate(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %29, i32 %30, i32 undef, float %2500, float %2500, float %2500, float %2500, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %3314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3315 = extractvalue %dx.types.CBufRet.f32 %3314, 0
  %3316 = fmul fast float %3315, %3307
  %3317 = fmul fast float %3315, %3308
  %3318 = fmul fast float %3315, %3309
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %29, i32 %30, i32 undef, float %3316, float %3317, float %3318, float %3316, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %29, i32 %30, i32 undef, float %3313, float %3313, float %3313, float %3313, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!dx.entryPoints = !{!41}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !26, !32, !35}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !15, !16, !17, !18, !19, !21, !22, !23, !24, !25}
!6 = !{i32 0, %"class.Texture3D<float>"* undef, !"", i32 0, i32 3, i32 1, i32 4, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture3D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 4, i32 0, !7}
!9 = !{i32 2, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 4, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 8, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 9, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 18, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.StructuredBuffer<VolumetricBBoxGpu>"* undef, !"", i32 0, i32 25, i32 1, i32 12, i32 0, !14}
!14 = !{i32 1, i32 164}
!15 = !{i32 7, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 31, i32 1, i32 7, i32 0, !7}
!16 = !{i32 8, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 30, i32 1, i32 4, i32 0, !7}
!17 = !{i32 9, %"class.Texture2D<float>"* undef, !"", i32 0, i32 29, i32 1, i32 2, i32 0, !7}
!18 = !{i32 10, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 0, i32 26, i32 1, i32 2, i32 0, !7}
!19 = !{i32 11, %"class.Texture2D<unsigned int>"* undef, !"", i32 0, i32 32, i32 1, i32 2, i32 0, !20}
!20 = !{i32 0, i32 5}
!21 = !{i32 12, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 0, i32 33, i32 1, i32 4, i32 0, !7}
!22 = !{i32 13, %"class.Texture1D<float>"* undef, !"", i32 0, i32 14, i32 1, i32 1, i32 0, !7}
!23 = !{i32 14, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 13, i32 1, i32 2, i32 0, !7}
!24 = !{i32 15, %"class.Texture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!25 = !{i32 16, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 17, i32 1, i32 11, i32 0, null}
!26 = !{!27, !28, !29, !30}
!27 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!28 = !{i32 1, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!29 = !{i32 2, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!30 = !{i32 3, %"class.RWTexture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 7, i1 false, i1 false, i1 false, !31}
!31 = !{i32 0, i32 14}
!32 = !{!33, !34}
!33 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!34 = !{i32 1, %FogRaymarchingConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 112, null}
!35 = !{!36, !37, !38, !39, !40}
!36 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!37 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!38 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!39 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!40 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!41 = !{void ()* @cs_fog_raymarching_air_clouds_particles, !"cs_fog_raymarching_air_clouds_particles", null, !4, !42}
!42 = !{i32 0, i64 272, i32 4, !43}
!43 = !{i32 8, i32 8, i32 1}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !53}
!53 = !{!"llvm.loop.unroll.disable"}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
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
!70 = distinct !{!70, !"dx.controlflow.hints", i32 1}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 2}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 2}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 2}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 1}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 2}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 2}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 2}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 1}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 2}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 2}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 2}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 2}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 2}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 2}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 1}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 2}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 2}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 2}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 2}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 2}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 2}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 2}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 2}
!98 = !{!99, !99, i64 0}
!99 = !{!"float", !100, i64 0}
!100 = !{!"omnipotent char", !101, i64 0}
!101 = !{!"Simple C/C++ TBAA"}
!102 = !{!103, !105, !107, !108, !110, !111, !112}
!103 = distinct !{!103, !104, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!104 = distinct !{!104, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!105 = distinct !{!105, !106, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!106 = distinct !{!106, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!107 = distinct !{!107, !106, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!108 = distinct !{!108, !109, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %scattering"}
!109 = distinct !{!109, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z"}
!110 = distinct !{!110, !109, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %transmission"}
!111 = distinct !{!111, !109, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %depthDensityWeighted"}
!112 = distinct !{!112, !109, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %rawShadowmapData"}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 2}
!114 = !{!115}
!115 = distinct !{!115, !116, !"\01?sort@@YAXAIAM00@Z: %c"}
!116 = distinct !{!116, !"\01?sort@@YAXAIAM00@Z"}
!117 = !{!118, !119, !103, !105, !107, !108, !110, !111, !112}
!118 = distinct !{!118, !116, !"\01?sort@@YAXAIAM00@Z: %a"}
!119 = distinct !{!119, !116, !"\01?sort@@YAXAIAM00@Z: %b"}
!120 = !{!119}
!121 = !{!118, !115, !103, !105, !107, !108, !110, !111, !112}
!122 = !{!118}
!123 = !{!119, !115, !103, !105, !107, !108, !110, !111, !112}
!124 = !{!125}
!125 = distinct !{!125, !126, !"\01?sort@@YAXAIAM00@Z: %c"}
!126 = distinct !{!126, !"\01?sort@@YAXAIAM00@Z"}
!127 = !{!128, !129, !103, !105, !107, !108, !110, !111, !112}
!128 = distinct !{!128, !126, !"\01?sort@@YAXAIAM00@Z: %a"}
!129 = distinct !{!129, !126, !"\01?sort@@YAXAIAM00@Z: %b"}
!130 = !{!129}
!131 = !{!128, !125, !103, !105, !107, !108, !110, !111, !112}
!132 = !{!128}
!133 = !{!129, !125, !103, !105, !107, !108, !110, !111, !112}
!134 = distinct !{!134, !"dx.controlflow.hints", i32 2}
!135 = distinct !{!135, !"dx.controlflow.hints", i32 2}
!136 = distinct !{!136, !"dx.controlflow.hints", i32 1}
!137 = distinct !{!137, !"dx.controlflow.hints", i32 2}
!138 = distinct !{!138, !"dx.controlflow.hints", i32 1}
!139 = distinct !{!139, !"dx.controlflow.hints", i32 1}
!140 = distinct !{!140, !"dx.controlflow.hints", i32 1}
!141 = distinct !{!141, !"dx.controlflow.hints", i32 1}
!142 = distinct !{!142, !"dx.controlflow.hints", i32 2}
!143 = distinct !{!143, !"dx.controlflow.hints", i32 1}

