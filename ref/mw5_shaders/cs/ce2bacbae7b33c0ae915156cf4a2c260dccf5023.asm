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
; shader hash: eb710e895fc6029e4ae39ae5dfe3b152
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

define void @cs_fog_raymarching_clouds_particles() {
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
  %73 = extractvalue %dx.types.CBufRet.f32 %71, 1
  %74 = extractvalue %dx.types.CBufRet.f32 %71, 2
  %75 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %76 = extractvalue %dx.types.CBufRet.f32 %75, 1
  %77 = fmul fast float %69, 2.000000e+00
  %78 = fmul fast float %70, 2.000000e+00
  %79 = fsub fast float 1.000000e+00, %77
  %80 = fsub fast float 1.000000e+00, %78
  %81 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %82 = extractvalue %dx.types.CBufRet.f32 %81, 0
  %83 = extractvalue %dx.types.CBufRet.f32 %81, 1
  %84 = extractvalue %dx.types.CBufRet.f32 %81, 2
  %85 = fmul fast float %82, %79
  %86 = fmul fast float %83, %79
  %87 = fmul fast float %84, %79
  %88 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %89 = extractvalue %dx.types.CBufRet.f32 %88, 0
  %90 = extractvalue %dx.types.CBufRet.f32 %88, 1
  %91 = extractvalue %dx.types.CBufRet.f32 %88, 2
  %92 = fmul fast float %89, %80
  %93 = fmul fast float %90, %80
  %94 = fmul fast float %91, %80
  %95 = fadd fast float %92, %85
  %96 = fadd fast float %93, %86
  %97 = fadd fast float %94, %87
  %98 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %99 = extractvalue %dx.types.CBufRet.f32 %98, 0
  %100 = extractvalue %dx.types.CBufRet.f32 %98, 1
  %101 = extractvalue %dx.types.CBufRet.f32 %98, 2
  %102 = fadd fast float %95, %99
  %103 = fadd fast float %96, %100
  %104 = fadd fast float %97, %101
  %105 = fmul fast float %102, %76
  %106 = fmul fast float %103, %76
  %107 = fmul fast float %104, %76
  %108 = fmul fast float %105, %105
  %109 = fmul fast float %106, %106
  %110 = fadd fast float %108, %109
  %111 = fmul fast float %107, %107
  %112 = fadd fast float %110, %111
  %113 = call float @dx.op.unary.f32(i32 24, float %112)  ; Sqrt(value)
  %114 = fdiv fast float 1.000000e+00, %113
  %115 = fmul fast float %105, %114
  %116 = fmul fast float %106, %114
  %117 = fmul fast float %107, %114
  %118 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %43, i32 %44, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %119 = extractvalue %dx.types.ResRet.f32 %118, 0
  %120 = fcmp fast ogt float %119, -1.000000e+00
  %121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %122 = extractvalue %dx.types.CBufRet.f32 %121, 1
  %123 = select i1 %120, float %122, float 1.000000e+00
  %124 = fadd fast float %119, 1.000000e+00
  %125 = fmul fast float %123, %124
  %126 = call float @dx.op.unary.f32(i32 6, float %125)  ; FAbs(value)
  %127 = fdiv fast float 1.000000e+00, %76
  %128 = fmul fast float %127, %113
  %129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %130 = extractvalue %dx.types.CBufRet.f32 %129, 1
  %131 = fmul fast float %130, %128
  %132 = fmul fast float %128, %126
  %133 = extractvalue %dx.types.CBufRet.f32 %121, 3
  %134 = fcmp fast oge float %126, %133
  %135 = call float @dx.op.binary.f32(i32 36, float %132, float %131)  ; FMin(a,b)
  %136 = select i1 %134, float %131, float %135
  %137 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.i32 %137, 3
  %139 = icmp eq i32 %138, 0
  %140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %141 = extractvalue %dx.types.CBufRet.f32 %140, 2
  %142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %143 = extractvalue %dx.types.CBufRet.f32 %142, 2
  %144 = fsub fast float %141, %74
  %145 = fadd fast float %144, %143
  br i1 %139, label %157, label %146, !dx.controlflow.hints !44

; <label>:146                                     ; preds = %0
  %147 = fsub fast float -0.000000e+00, %73
  %148 = fsub fast float -0.000000e+00, %72
  %149 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %148, float %147, float %145)  ; Dot3(ax,ay,az,bx,by,bz)
  %150 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %115, float %116, float %117)  ; Dot3(ax,ay,az,bx,by,bz)
  %151 = fdiv fast float 1.000000e+00, %150
  %152 = fmul fast float %151, %149
  %153 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %148, float %147, float %144)  ; Dot3(ax,ay,az,bx,by,bz)
  %154 = fmul fast float %151, %153
  %155 = call float @dx.op.binary.f32(i32 36, float %152, float %154)  ; FMin(a,b)
  %156 = call float @dx.op.binary.f32(i32 35, float %152, float %154)  ; FMax(a,b)
  br label %190

; <label>:157                                     ; preds = %0
  %158 = fdiv fast float 1.000000e+00, %115
  %159 = fdiv fast float 1.000000e+00, %116
  %160 = fdiv fast float 1.000000e+00, %117
  %161 = extractvalue %dx.types.CBufRet.f32 %140, 0
  %162 = extractvalue %dx.types.CBufRet.f32 %140, 1
  %163 = extractvalue %dx.types.CBufRet.f32 %142, 0
  %164 = extractvalue %dx.types.CBufRet.f32 %142, 1
  %165 = fsub fast float %161, %72
  %166 = fmul fast float %165, %158
  %167 = fadd fast float %165, %163
  %168 = fmul fast float %167, %158
  %169 = call float @dx.op.binary.f32(i32 36, float %166, float %168)  ; FMin(a,b)
  %170 = call float @dx.op.binary.f32(i32 35, float %166, float %168)  ; FMax(a,b)
  %171 = fsub fast float %162, %73
  %172 = fmul fast float %171, %159
  %173 = fadd fast float %171, %164
  %174 = fmul fast float %173, %159
  %175 = call float @dx.op.binary.f32(i32 36, float %172, float %174)  ; FMin(a,b)
  %176 = call float @dx.op.binary.f32(i32 35, float %169, float %175)  ; FMax(a,b)
  %177 = call float @dx.op.binary.f32(i32 35, float %172, float %174)  ; FMax(a,b)
  %178 = call float @dx.op.binary.f32(i32 36, float %170, float %177)  ; FMin(a,b)
  %179 = fmul fast float %144, %160
  %180 = fmul fast float %145, %160
  %181 = call float @dx.op.binary.f32(i32 36, float %179, float %180)  ; FMin(a,b)
  %182 = call float @dx.op.binary.f32(i32 35, float %176, float %181)  ; FMax(a,b)
  %183 = call float @dx.op.binary.f32(i32 35, float %179, float %180)  ; FMax(a,b)
  %184 = call float @dx.op.binary.f32(i32 36, float %178, float %183)  ; FMin(a,b)
  %185 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %182)  ; FMax(a,b)
  %186 = fcmp fast ult float %184, %185
  br i1 %186, label %190, label %187, !dx.controlflow.hints !45

; <label>:187                                     ; preds = %157
  %188 = call float @dx.op.binary.f32(i32 36, float %182, float %184)  ; FMin(a,b)
  %189 = call float @dx.op.binary.f32(i32 35, float %182, float %184)  ; FMax(a,b)
  br label %190

; <label>:190                                     ; preds = %187, %157, %146
  %191 = phi float [ %155, %146 ], [ %188, %187 ], [ 0.000000e+00, %157 ]
  %192 = phi float [ %156, %146 ], [ %189, %187 ], [ 0.000000e+00, %157 ]
  %193 = fcmp fast oeq float %192, 0.000000e+00
  br i1 %193, label %197, label %194, !dx.controlflow.hints !46

; <label>:194                                     ; preds = %190
  %195 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %191)  ; FMin(a,b)
  %196 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %192)  ; FMax(a,b)
  br label %197

; <label>:197                                     ; preds = %194, %190
  %198 = phi i32 [ 1, %194 ], [ 0, %190 ]
  %199 = phi float [ %196, %194 ], [ -1.000000e+00, %190 ]
  %200 = phi float [ %195, %194 ], [ 0x47EFFFFFE0000000, %190 ]
  %201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %202 = extractvalue %dx.types.CBufRet.f32 %201, 3
  %203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %204 = extractvalue %dx.types.CBufRet.f32 %203, 0
  %205 = fsub fast float -0.000000e+00, %72
  %206 = fsub fast float -0.000000e+00, %73
  %207 = fsub fast float %202, %74
  %208 = fadd fast float %207, %204
  %209 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %205, float %206, float %208)  ; Dot3(ax,ay,az,bx,by,bz)
  %210 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %115, float %116, float %117)  ; Dot3(ax,ay,az,bx,by,bz)
  %211 = fdiv fast float 1.000000e+00, %210
  %212 = fmul fast float %211, %209
  %213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %214 = extractvalue %dx.types.CBufRet.f32 %213, 2
  %215 = fsub fast float %214, %74
  %216 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %205, float %206, float %215)  ; Dot3(ax,ay,az,bx,by,bz)
  %217 = fmul fast float %211, %216
  %218 = call float @dx.op.binary.f32(i32 36, float %212, float %217)  ; FMin(a,b)
  %219 = call float @dx.op.binary.f32(i32 35, float %212, float %217)  ; FMax(a,b)
  %220 = call float @dx.op.binary.f32(i32 36, float %200, float %218)  ; FMin(a,b)
  %221 = call float @dx.op.binary.f32(i32 35, float %199, float %219)  ; FMax(a,b)
  %222 = fdiv fast float 1.000000e+00, %115
  %223 = fdiv fast float 1.000000e+00, %116
  %224 = fdiv fast float 1.000000e+00, %117
  %225 = call float @dx.op.binary.f32(i32 36, float %136, float %221)  ; FMin(a,b)
  %226 = call float @dx.op.binary.f32(i32 35, float %113, float %220)  ; FMax(a,b)
  %227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %228 = extractvalue %dx.types.CBufRet.f32 %227, 0
  %229 = fmul fast float %61, 2.000000e+00
  %230 = fadd fast float %229, -1.000000e+00
  %231 = fmul fast float %228, %230
  %232 = fadd fast float %231, %226
  %233 = fcmp fast olt float %232, %225
  %234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %235 = extractvalue %dx.types.CBufRet.f32 %234, 2
  %236 = fcmp fast olt float %235, 1.000000e+00
  %237 = and i1 %236, %233
  br i1 %237, label %238, label %2283

; <label>:238                                     ; preds = %197
  %239 = fmul fast float %232, %117
  %240 = fadd fast float %239, %74
  %241 = fmul fast float %232, %116
  %242 = fadd fast float %241, %73
  %243 = fmul fast float %232, %115
  %244 = fadd fast float %243, %72
  br label %245

; <label>:245                                     ; preds = %2255, %238
  %246 = phi float [ %2257, %2255 ], [ undef, %238 ]
  %247 = phi float [ %2258, %2255 ], [ undef, %238 ]
  %248 = phi float [ %2259, %2255 ], [ undef, %238 ]
  %249 = phi float [ %2260, %2255 ], [ undef, %238 ]
  %250 = phi float [ %374, %2255 ], [ undef, %238 ]
  %251 = phi float [ %375, %2255 ], [ undef, %238 ]
  %252 = phi float [ %376, %2255 ], [ undef, %238 ]
  %253 = phi float [ %377, %2255 ], [ undef, %238 ]
  %254 = phi float [ %2261, %2255 ], [ 0.000000e+00, %238 ]
  %255 = phi float [ %2262, %2255 ], [ 1.000000e+00, %238 ]
  %256 = phi float [ %2263, %2255 ], [ 0.000000e+00, %238 ]
  %257 = phi float [ %2264, %2255 ], [ 0.000000e+00, %238 ]
  %258 = phi float [ %2265, %2255 ], [ 0.000000e+00, %238 ]
  %259 = phi float [ %2275, %2255 ], [ %244, %238 ]
  %260 = phi float [ %2276, %2255 ], [ %242, %238 ]
  %261 = phi float [ %2277, %2255 ], [ %240, %238 ]
  %262 = phi float [ %2256, %2255 ], [ %232, %238 ]
  %263 = phi i32 [ %379, %2255 ], [ 10, %238 ]
  %264 = phi float [ %2266, %2255 ], [ 0.000000e+00, %238 ]
  %265 = phi float [ %2267, %2255 ], [ 0.000000e+00, %238 ]
  %266 = phi float [ %2268, %2255 ], [ 0.000000e+00, %238 ]
  %267 = phi float [ %2269, %2255 ], [ 0.000000e+00, %238 ]
  %268 = phi float [ %2270, %2255 ], [ 0.000000e+00, %238 ]
  %269 = phi i32 [ %2271, %2255 ], [ 0, %238 ]
  %270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %271 = extractvalue %dx.types.CBufRet.f32 %270, 0
  %272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %273 = extractvalue %dx.types.CBufRet.f32 %272, 0
  %274 = extractvalue %dx.types.CBufRet.f32 %272, 1
  %275 = fsub fast float %259, %273
  %276 = fsub fast float %260, %274
  %277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %278 = extractvalue %dx.types.CBufRet.f32 %277, 2
  %279 = extractvalue %dx.types.CBufRet.f32 %277, 3
  %280 = fmul fast float %275, %278
  %281 = fmul fast float %276, %279
  %282 = call float @dx.op.binary.f32(i32 36, float %280, float %281)  ; FMin(a,b)
  %283 = fcmp fast olt float %282, 0.000000e+00
  %284 = call float @dx.op.binary.f32(i32 35, float %280, float %281)  ; FMax(a,b)
  %285 = fcmp fast ogt float %284, 1.000000e+00
  %286 = or i1 %283, %285
  %287 = extractvalue %dx.types.CBufRet.f32 %272, 2
  %288 = fcmp fast olt float %261, %287
  %289 = or i1 %286, %288
  %290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %291 = extractvalue %dx.types.CBufRet.f32 %290, 3
  %292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %293 = extractvalue %dx.types.CBufRet.f32 %292, 0
  %294 = fadd fast float %293, %291
  %295 = fcmp fast ogt float %261, %294
  %296 = or i1 %289, %295
  br i1 %296, label %297, label %326, !dx.controlflow.hints !47

; <label>:297                                     ; preds = %245
  %298 = extractvalue %dx.types.CBufRet.f32 %277, 0
  %299 = extractvalue %dx.types.CBufRet.f32 %277, 1
  %300 = fsub fast float %273, %259
  %301 = fmul fast float %300, %222
  %302 = fadd fast float %300, %298
  %303 = fmul fast float %302, %222
  %304 = call float @dx.op.binary.f32(i32 36, float %301, float %303)  ; FMin(a,b)
  %305 = call float @dx.op.binary.f32(i32 35, float %301, float %303)  ; FMax(a,b)
  %306 = fsub fast float %274, %260
  %307 = fmul fast float %306, %223
  %308 = fadd fast float %306, %299
  %309 = fmul fast float %308, %223
  %310 = call float @dx.op.binary.f32(i32 36, float %307, float %309)  ; FMin(a,b)
  %311 = call float @dx.op.binary.f32(i32 35, float %304, float %310)  ; FMax(a,b)
  %312 = call float @dx.op.binary.f32(i32 35, float %307, float %309)  ; FMax(a,b)
  %313 = call float @dx.op.binary.f32(i32 36, float %305, float %312)  ; FMin(a,b)
  %314 = fsub fast float %287, %261
  %315 = fmul fast float %314, %224
  %316 = fsub fast float %291, %261
  %317 = fadd fast float %316, %293
  %318 = fmul fast float %317, %224
  %319 = call float @dx.op.binary.f32(i32 36, float %315, float %318)  ; FMin(a,b)
  %320 = call float @dx.op.binary.f32(i32 35, float %311, float %319)  ; FMax(a,b)
  %321 = call float @dx.op.binary.f32(i32 35, float %315, float %318)  ; FMax(a,b)
  %322 = call float @dx.op.binary.f32(i32 36, float %313, float %321)  ; FMin(a,b)
  %323 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %320)  ; FMax(a,b)
  %324 = fcmp fast oge float %322, %323
  %325 = select i1 %324, float %320, float 1.000000e+07
  br label %372

; <label>:326                                     ; preds = %245
  %327 = fsub fast float 1.000000e+00, %281
  %328 = icmp eq i32 %263, 0
  br i1 %328, label %357, label %329

; <label>:329                                     ; preds = %326
  br label %330

; <label>:330                                     ; preds = %353, %329
  %331 = phi i32 [ %354, %353 ], [ %263, %329 ]
  %332 = uitofp i32 %331 to float
  %333 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %26, float %280, float %327, float undef, float undef, i32 0, i32 0, i32 undef, float %332)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %334 = extractvalue %dx.types.ResRet.f32 %333, 0
  %335 = extractvalue %dx.types.ResRet.f32 %333, 1
  %336 = extractvalue %dx.types.ResRet.f32 %333, 2
  %337 = fcmp fast oeq float %334, 0.000000e+00
  %338 = fcmp ule float %261, %336
  %339 = fcmp uge float %261, %335
  %340 = or i1 %339, %338
  %341 = or i1 %337, %340
  br i1 %341, label %342, label %353, !dx.controlflow.hints !48

; <label>:342                                     ; preds = %330
  %343 = extractvalue %dx.types.ResRet.f32 %333, 3
  %344 = extractvalue %dx.types.CBufRet.f32 %277, 0
  %345 = and i32 %331, 31
  %346 = lshr i32 1024, %345
  %347 = uitofp i32 %346 to float
  %348 = fdiv fast float %344, %347
  %349 = add i32 %331, 1
  %350 = uitofp i32 %349 to float
  %351 = call float @dx.op.binary.f32(i32 36, float 1.000000e+01, float %350)  ; FMin(a,b)
  %352 = fptosi float %351 to i32
  br label %372

; <label>:353                                     ; preds = %330
  %354 = add i32 %331, -1
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %356, label %330, !llvm.loop !49

; <label>:356                                     ; preds = %353
  br label %357

; <label>:357                                     ; preds = %356, %326
  %358 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %25, float %280, float %327, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %359 = extractvalue %dx.types.ResRet.f32 %358, 0
  %360 = extractvalue %dx.types.ResRet.f32 %358, 1
  %361 = extractvalue %dx.types.ResRet.f32 %358, 2
  %362 = extractvalue %dx.types.ResRet.f32 %358, 3
  %363 = extractvalue %dx.types.CBufRet.f32 %277, 0
  %364 = fmul fast float %363, 9.765625e-04
  %365 = fcmp fast oeq float %359, 0.000000e+00
  %366 = fcmp ule float %261, %361
  %367 = fcmp uge float %261, %360
  %368 = or i1 %367, %366
  %369 = or i1 %365, %368
  %370 = zext i1 %369 to i32
  %371 = xor i32 %370, 1
  br label %372

; <label>:372                                     ; preds = %357, %342, %297
  %373 = phi float [ %325, %297 ], [ %348, %342 ], [ %364, %357 ]
  %374 = phi float [ %250, %297 ], [ %334, %342 ], [ %359, %357 ]
  %375 = phi float [ %251, %297 ], [ %335, %342 ], [ %360, %357 ]
  %376 = phi float [ %252, %297 ], [ %336, %342 ], [ %361, %357 ]
  %377 = phi float [ %253, %297 ], [ %343, %342 ], [ %362, %357 ]
  %378 = phi i32 [ 0, %297 ], [ 0, %342 ], [ %371, %357 ]
  %379 = phi i32 [ 10, %297 ], [ %352, %342 ], [ 1, %357 ]
  %380 = icmp eq i32 %378, 0
  %381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %382 = extractvalue %dx.types.CBufRet.f32 %381, 2
  %383 = call float @dx.op.binary.f32(i32 35, float %373, float %382)  ; FMax(a,b)
  %384 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %383)  ; FMin(a,b)
  %385 = icmp eq i32 %198, 0
  br i1 %385, label %441, label %386, !dx.controlflow.hints !51

; <label>:386                                     ; preds = %372
  %387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %388 = extractvalue %dx.types.CBufRet.f32 %387, 0
  %389 = extractvalue %dx.types.CBufRet.f32 %387, 1
  %390 = extractvalue %dx.types.CBufRet.f32 %387, 2
  %391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %392 = extractvalue %dx.types.CBufRet.f32 %391, 0
  %393 = extractvalue %dx.types.CBufRet.f32 %391, 1
  %394 = extractvalue %dx.types.CBufRet.f32 %391, 2
  %395 = fsub fast float %259, %392
  %396 = fsub fast float %260, %393
  %397 = fsub fast float %261, %394
  %398 = fmul fast float %395, %388
  %399 = fmul fast float %396, %389
  %400 = fmul fast float %397, %390
  %401 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %402 = extractvalue %dx.types.CBufRet.i32 %401, 3
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %407, label %404, !dx.controlflow.hints !52

; <label>:404                                     ; preds = %386
  %405 = call float @dx.op.unary.f32(i32 22, float %398)  ; Frc(value)
  %406 = call float @dx.op.unary.f32(i32 22, float %399)  ; Frc(value)
  br label %407

; <label>:407                                     ; preds = %404, %386
  %408 = phi float [ %405, %404 ], [ %398, %386 ]
  %409 = phi float [ %406, %404 ], [ %399, %386 ]
  %410 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %23, float %408, float %409, float %400, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %411 = extractvalue %dx.types.ResRet.f32 %410, 0
  %412 = fmul fast float %411, 2.000000e+00
  %413 = fadd fast float %412, -1.000000e+00
  %414 = extractvalue %dx.types.CBufRet.f32 %387, 3
  %415 = fmul fast float %413, %414
  %416 = fcmp fast olt float %415, 0.000000e+00
  %417 = fcmp fast oge float %400, 0.000000e+00
  %418 = fcmp fast ole float %400, 1.000000e+00
  br i1 %403, label %421, label %419, !dx.controlflow.hints !53

; <label>:419                                     ; preds = %407
  %420 = and i1 %417, %418
  br label %431

; <label>:421                                     ; preds = %407
  %422 = fcmp fast oge float %398, 0.000000e+00
  %423 = fcmp fast oge float %399, 0.000000e+00
  %424 = and i1 %422, %423
  %425 = and i1 %417, %424
  %426 = fcmp fast ole float %398, 1.000000e+00
  %427 = fcmp fast ole float %399, 1.000000e+00
  %428 = and i1 %426, %427
  %429 = and i1 %418, %428
  %430 = and i1 %425, %429
  br label %431

; <label>:431                                     ; preds = %421, %419
  %432 = phi i1 [ %420, %419 ], [ %430, %421 ]
  %433 = and i1 %416, %432
  %434 = call float @dx.op.unary.f32(i32 6, float %415)  ; FAbs(value)
  %435 = extractvalue %dx.types.CBufRet.f32 %381, 1
  %436 = extractvalue %dx.types.CBufRet.f32 %381, 0
  %437 = call float @dx.op.binary.f32(i32 35, float %434, float %436)  ; FMax(a,b)
  %438 = select i1 %433, float %435, float %437
  %439 = zext i1 %433 to i32
  %440 = call float @dx.op.binary.f32(i32 36, float %384, float %438)  ; FMin(a,b)
  br label %441

; <label>:441                                     ; preds = %431, %372
  %442 = phi i32 [ %439, %431 ], [ 0, %372 ]
  %443 = phi float [ %440, %431 ], [ %384, %372 ]
  %444 = extractvalue %dx.types.CBufRet.f32 %270, 2
  %445 = fmul fast float %444, %262
  %446 = call float @dx.op.unary.f32(i32 23, float %445)  ; Log(value)
  %447 = fmul fast float %446, 0x3FE62E4300000000
  %448 = call float @dx.op.binary.f32(i32 35, float %447, float 1.000000e+00)  ; FMax(a,b)
  %449 = fmul fast float %448, 0x47EFFFFFE0000000
  %450 = call float @dx.op.binary.f32(i32 36, float %449, float %443)  ; FMin(a,b)
  %451 = call float @dx.op.binary.f32(i32 35, float %450, float %271)  ; FMax(a,b)
  %452 = fadd fast float %225, 0x3F1A36E2E0000000
  %453 = fsub fast float %452, %262
  %454 = call float @dx.op.binary.f32(i32 36, float %453, float %451)  ; FMin(a,b)
  %455 = icmp eq i32 %442, 0
  br i1 %455, label %645, label %456, !dx.controlflow.hints !54

; <label>:456                                     ; preds = %441
  %457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %458 = extractvalue %dx.types.CBufRet.f32 %457, 3
  %459 = fmul fast float %458, %262
  %460 = fcmp fast oeq float %459, 0.000000e+00
  br i1 %460, label %475, label %461, !dx.controlflow.hints !55

; <label>:461                                     ; preds = %456
  %462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %463 = extractvalue %dx.types.CBufRet.f32 %462, 3
  %464 = fmul fast float %463, %459
  %465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %466 = extractvalue %dx.types.CBufRet.f32 %465, 0
  %467 = extractvalue %dx.types.CBufRet.f32 %465, 1
  %468 = extractvalue %dx.types.CBufRet.f32 %465, 2
  %469 = fmul fast float %466, %464
  %470 = fmul fast float %467, %464
  %471 = fmul fast float %468, %464
  %472 = call float @dx.op.unary.f32(i32 23, float %469)  ; Log(value)
  %473 = call float @dx.op.unary.f32(i32 23, float %470)  ; Log(value)
  %474 = call float @dx.op.unary.f32(i32 23, float %471)  ; Log(value)
  br label %475

; <label>:475                                     ; preds = %461, %456
  %476 = phi float [ %472, %461 ], [ 0.000000e+00, %456 ]
  %477 = phi float [ %473, %461 ], [ 0.000000e+00, %456 ]
  %478 = phi float [ %474, %461 ], [ 0.000000e+00, %456 ]
  %479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %480 = extractvalue %dx.types.CBufRet.f32 %479, 0
  %481 = extractvalue %dx.types.CBufRet.f32 %479, 1
  %482 = extractvalue %dx.types.CBufRet.f32 %479, 2
  %483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %484 = extractvalue %dx.types.CBufRet.f32 %483, 0
  %485 = extractvalue %dx.types.CBufRet.f32 %483, 1
  %486 = extractvalue %dx.types.CBufRet.f32 %483, 2
  %487 = fsub fast float %259, %484
  %488 = fsub fast float %260, %485
  %489 = fsub fast float %261, %486
  %490 = fmul fast float %487, %480
  %491 = fmul fast float %488, %481
  %492 = fmul fast float %489, %482
  %493 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %494 = extractvalue %dx.types.CBufRet.i32 %493, 0
  %495 = extractvalue %dx.types.CBufRet.i32 %493, 1
  %496 = uitofp i32 %494 to float
  %497 = uitofp i32 %495 to float
  %498 = fmul fast float %490, %496
  %499 = fmul fast float %491, %497
  %500 = fadd fast float %498, 5.000000e-01
  %501 = fadd fast float %499, 5.000000e-01
  %502 = call float @dx.op.unary.f32(i32 22, float %500)  ; Frc(value)
  %503 = call float @dx.op.unary.f32(i32 22, float %501)  ; Frc(value)
  %504 = call float @dx.op.unary.f32(i32 27, float %500)  ; Round_ni(value)
  %505 = call float @dx.op.unary.f32(i32 27, float %501)  ; Round_ni(value)
  %506 = fadd fast float %504, 1.000000e+00
  %507 = fadd fast float %505, 1.000000e+00
  %508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %509 = extractvalue %dx.types.CBufRet.f32 %508, 0
  %510 = extractvalue %dx.types.CBufRet.f32 %508, 1
  %511 = fmul fast float %509, %506
  %512 = fmul fast float %510, %507
  %513 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %24, float %511, float %512, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %514 = extractvalue %dx.types.ResRet.f32 %513, 0
  %515 = extractvalue %dx.types.ResRet.f32 %513, 1
  %516 = extractvalue %dx.types.ResRet.f32 %513, 2
  %517 = extractvalue %dx.types.ResRet.f32 %513, 3
  %518 = extractvalue %dx.types.CBufRet.i32 %493, 2
  %519 = extractvalue %dx.types.CBufRet.f32 %508, 2
  %520 = uitofp i32 %518 to float
  %521 = fadd fast float %520, -1.000000e+00
  %522 = fmul fast float %521, %514
  %523 = fmul fast float %521, %515
  %524 = fmul fast float %521, %516
  %525 = fmul fast float %521, %517
  %526 = fadd fast float %522, 5.000000e-01
  %527 = fadd fast float %523, 5.000000e-01
  %528 = fadd fast float %524, 5.000000e-01
  %529 = fadd fast float %525, 5.000000e-01
  %530 = fptoui float %526 to i32
  %531 = fptoui float %527 to i32
  %532 = fptoui float %528 to i32
  %533 = fptoui float %529 to i32
  %534 = uitofp i32 %530 to float
  %535 = uitofp i32 %531 to float
  %536 = uitofp i32 %532 to float
  %537 = uitofp i32 %533 to float
  %538 = fadd fast float %534, 5.000000e-01
  %539 = fadd fast float %535, 5.000000e-01
  %540 = fadd fast float %536, 5.000000e-01
  %541 = fadd fast float %537, 5.000000e-01
  %542 = fmul fast float %538, %519
  %543 = fmul fast float %539, %519
  %544 = fmul fast float %540, %519
  %545 = fmul fast float %541, %519
  %546 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %25, float %542, float %492, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %547 = extractvalue %dx.types.ResRet.f32 %546, 0
  %548 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %25, float %543, float %492, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %549 = extractvalue %dx.types.ResRet.f32 %548, 0
  %550 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %25, float %544, float %492, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %551 = extractvalue %dx.types.ResRet.f32 %550, 0
  %552 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %25, float %545, float %492, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %553 = extractvalue %dx.types.ResRet.f32 %552, 0
  %554 = fsub fast float %551, %553
  %555 = fmul fast float %554, %502
  %556 = fadd fast float %555, %553
  %557 = fsub fast float %549, %547
  %558 = fmul fast float %557, %502
  %559 = fadd fast float %558, %547
  %560 = fsub fast float %559, %556
  %561 = fmul fast float %560, %503
  %562 = fadd fast float %561, %556
  %563 = fcmp fast ogt float %562, 0.000000e+00
  br i1 %563, label %564, label %632, !dx.controlflow.hints !56

; <label>:564                                     ; preds = %475
  %565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %566 = extractvalue %dx.types.CBufRet.f32 %565, 0
  %567 = extractvalue %dx.types.CBufRet.f32 %565, 1
  %568 = extractvalue %dx.types.CBufRet.f32 %565, 2
  %569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %570 = extractvalue %dx.types.CBufRet.f32 %569, 0
  %571 = extractvalue %dx.types.CBufRet.f32 %569, 1
  %572 = extractvalue %dx.types.CBufRet.f32 %569, 2
  %573 = fmul fast float %488, %480
  %574 = fmul fast float %489, %480
  %575 = fadd fast float %490, %570
  %576 = fadd fast float %573, %571
  %577 = fadd fast float %574, %572
  %578 = fmul fast float %575, %566
  %579 = fmul fast float %576, %566
  %580 = fmul fast float %577, %566
  %581 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %22, float %578, float %579, float %580, float undef, i32 0, i32 0, i32 0, float %476)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %582 = extractvalue %dx.types.ResRet.f32 %581, 0
  %583 = fmul fast float %575, %567
  %584 = fmul fast float %576, %567
  %585 = fmul fast float %577, %567
  %586 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %22, float %583, float %584, float %585, float undef, i32 0, i32 0, i32 0, float %477)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %587 = extractvalue %dx.types.ResRet.f32 %586, 1
  %588 = fmul fast float %575, %568
  %589 = fmul fast float %576, %568
  %590 = fmul fast float %577, %568
  %591 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %22, float %588, float %589, float %590, float undef, i32 0, i32 0, i32 0, float %478)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %592 = extractvalue %dx.types.ResRet.f32 %591, 2
  %593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %594 = extractvalue %dx.types.CBufRet.f32 %593, 1
  %595 = fmul fast float %587, %582
  %596 = fmul fast float %595, %592
  %597 = call float @dx.op.unary.f32(i32 23, float %596)  ; Log(value)
  %598 = fmul fast float %597, %594
  %599 = call float @dx.op.unary.f32(i32 21, float %598)  ; Exp(value)
  %600 = extractvalue %dx.types.CBufRet.f32 %593, 2
  %601 = fmul fast float %562, %562
  %602 = fmul fast float %601, %599
  %603 = fmul fast float %602, %600
  %604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %605 = extractvalue %dx.types.CBufRet.f32 %604, 3
  %606 = fmul fast float %605, %603
  %607 = bitcast float %606 to i32
  %608 = sitofp i32 %607 to float
  %609 = fptosi float %608 to i32
  %610 = bitcast i32 %609 to float
  %611 = fsub fast float 1.000000e+00, %603
  %612 = bitcast float %611 to i32
  %613 = sitofp i32 %612 to float
  %614 = fptosi float %613 to i32
  %615 = bitcast i32 %614 to float
  %616 = fadd fast float %610, %615
  %617 = bitcast float %616 to i32
  %618 = sub nsw i32 2129859010, %617
  %619 = bitcast i32 %618 to float
  %620 = fmul fast float %619, %610
  %621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %622 = extractvalue %dx.types.CBufRet.f32 %621, 2
  %623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %624 = extractvalue %dx.types.CBufRet.f32 %623, 0
  %625 = fmul fast float %620, %624
  %626 = fadd fast float %625, 1.000000e+00
  %627 = bitcast float %626 to i32
  %628 = sub nsw i32 2129859010, %627
  %629 = bitcast i32 %628 to float
  %630 = fmul fast float %620, %622
  %631 = fmul fast float %630, %629
  br label %632

; <label>:632                                     ; preds = %564, %475
  %633 = phi float [ %631, %564 ], [ %562, %475 ]
  %634 = fmul fast float %633, %454
  %635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %636 = extractvalue %dx.types.CBufRet.f32 %635, 0
  %637 = extractvalue %dx.types.CBufRet.f32 %635, 1
  %638 = extractvalue %dx.types.CBufRet.f32 %635, 2
  %639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %640 = extractvalue %dx.types.CBufRet.f32 %639, 1
  %641 = fmul fast float %636, %634
  %642 = fmul fast float %637, %634
  %643 = fmul fast float %638, %634
  %644 = fmul fast float %640, %634
  br label %645

; <label>:645                                     ; preds = %632, %441
  %646 = phi float [ %634, %632 ], [ 0.000000e+00, %441 ]
  %647 = phi float [ %644, %632 ], [ 0.000000e+00, %441 ]
  %648 = phi float [ %641, %632 ], [ 0.000000e+00, %441 ]
  %649 = phi float [ %642, %632 ], [ 0.000000e+00, %441 ]
  %650 = phi float [ %643, %632 ], [ 0.000000e+00, %441 ]
  br i1 %380, label %793, label %651, !dx.controlflow.hints !57

; <label>:651                                     ; preds = %645
  %652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 411)  ; CBufferLoadLegacy(handle,regIndex)
  %653 = extractvalue %dx.types.CBufRet.f32 %652, 0
  %654 = extractvalue %dx.types.CBufRet.f32 %652, 1
  %655 = extractvalue %dx.types.CBufRet.f32 %652, 2
  %656 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %657 = extractvalue %dx.types.CBufRet.i32 %656, 0
  %658 = icmp ne i32 %657, 0
  %659 = zext i1 %658 to i32
  %660 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %661 = extractvalue %dx.types.CBufRet.i32 %660, 0
  %662 = icmp eq i32 %661, 0
  br i1 %662, label %696, label %663

; <label>:663                                     ; preds = %651
  br label %664

; <label>:664                                     ; preds = %691, %663
  %665 = phi i32 [ %692, %691 ], [ 0, %663 ]
  %666 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %665, i32 0)  ; BufferLoad(srv,index,wot)
  %667 = extractvalue %dx.types.ResRet.f32 %666, 0
  %668 = extractvalue %dx.types.ResRet.f32 %666, 1
  %669 = extractvalue %dx.types.ResRet.f32 %666, 2
  %670 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %665, i32 16)  ; BufferLoad(srv,index,wot)
  %671 = extractvalue %dx.types.ResRet.f32 %670, 0
  %672 = extractvalue %dx.types.ResRet.f32 %670, 1
  %673 = extractvalue %dx.types.ResRet.f32 %670, 2
  %674 = fsub fast float %667, %671
  %675 = fsub fast float %668, %672
  %676 = fsub fast float %669, %673
  %677 = fadd fast float %671, %667
  %678 = fadd fast float %672, %668
  %679 = fadd fast float %673, %669
  %680 = fcmp fast olt float %259, %674
  %681 = fcmp fast olt float %260, %675
  %682 = fcmp fast olt float %261, %676
  %683 = or i1 %680, %681
  %684 = or i1 %682, %683
  %685 = fcmp fast ogt float %259, %677
  %686 = fcmp fast ogt float %260, %678
  %687 = fcmp fast ogt float %261, %679
  %688 = or i1 %685, %686
  %689 = or i1 %687, %688
  %690 = or i1 %684, %689
  br i1 %690, label %691, label %694, !dx.controlflow.hints !58

; <label>:691                                     ; preds = %664
  %692 = add nuw i32 %665, 1
  %693 = icmp ult i32 %692, %661
  br i1 %693, label %664, label %694

; <label>:694                                     ; preds = %691, %664
  %695 = phi i32 [ 255, %691 ], [ %665, %664 ]
  br label %696

; <label>:696                                     ; preds = %694, %651
  %697 = phi i32 [ 255, %651 ], [ %695, %694 ]
  %698 = icmp eq i32 %697, 255
  br i1 %698, label %708, label %699, !dx.controlflow.hints !59

; <label>:699                                     ; preds = %696
  %700 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %697, i32 32)  ; BufferLoad(srv,index,wot)
  %701 = extractvalue %dx.types.ResRet.f32 %700, 0
  %702 = extractvalue %dx.types.ResRet.f32 %700, 1
  %703 = extractvalue %dx.types.ResRet.f32 %700, 2
  %704 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %697, i32 156)  ; BufferLoad(srv,index,wot)
  %705 = extractvalue %dx.types.ResRet.i32 %704, 0
  %706 = icmp ne i32 %705, 0
  %707 = zext i1 %706 to i32
  br label %708

; <label>:708                                     ; preds = %699, %696
  %709 = phi float [ %701, %699 ], [ %653, %696 ]
  %710 = phi float [ %702, %699 ], [ %654, %696 ]
  %711 = phi float [ %703, %699 ], [ %655, %696 ]
  %712 = phi i32 [ %707, %699 ], [ %659, %696 ]
  %713 = icmp eq i32 %712, 0
  br i1 %713, label %714, label %783, !dx.controlflow.hints !60

; <label>:714                                     ; preds = %708
  %715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %716 = extractvalue %dx.types.CBufRet.f32 %715, 3
  %717 = extractvalue %dx.types.CBufRet.f32 %290, 0
  %718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %719 = extractvalue %dx.types.CBufRet.f32 %718, 2
  %720 = extractvalue %dx.types.CBufRet.f32 %718, 3
  br i1 %698, label %731, label %721, !dx.controlflow.hints !61

; <label>:721                                     ; preds = %714
  %722 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %697, i32 60)  ; BufferLoad(srv,index,wot)
  %723 = extractvalue %dx.types.ResRet.f32 %722, 0
  %724 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %697, i32 64)  ; BufferLoad(srv,index,wot)
  %725 = extractvalue %dx.types.ResRet.f32 %724, 0
  %726 = extractvalue %dx.types.ResRet.f32 %724, 1
  %727 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %697, i32 72)  ; BufferLoad(srv,index,wot)
  %728 = extractvalue %dx.types.ResRet.f32 %727, 0
  %729 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %697, i32 96)  ; BufferLoad(srv,index,wot)
  %730 = extractvalue %dx.types.ResRet.f32 %729, 0
  br label %731

; <label>:731                                     ; preds = %721, %714
  %732 = phi float [ %723, %721 ], [ %293, %714 ]
  %733 = phi float [ %728, %721 ], [ %291, %714 ]
  %734 = phi float [ %730, %721 ], [ %717, %714 ]
  %735 = phi float [ %725, %721 ], [ %719, %714 ]
  %736 = phi float [ %726, %721 ], [ %720, %714 ]
  %737 = call float @dx.op.binary.f32(i32 35, float %374, float 0.000000e+00)  ; FMax(a,b)
  %738 = call float @dx.op.binary.f32(i32 36, float %737, float 1.000000e+00)  ; FMin(a,b)
  %739 = call float @dx.op.unary.f32(i32 24, float %738)  ; Sqrt(value)
  %740 = call float @dx.op.binary.f32(i32 35, float %377, float 0x3F847AE140000000)  ; FMax(a,b)
  %741 = fsub fast float %375, %261
  %742 = fsub fast float %261, %376
  %743 = call float @dx.op.binary.f32(i32 36, float %742, float %741)  ; FMin(a,b)
  %744 = fdiv fast float %743, %740
  %745 = call float @dx.op.unary.f32(i32 7, float %744)  ; Saturate(value)
  %746 = fsub fast float %261, %733
  %747 = fdiv fast float %746, %732
  %748 = call float @dx.op.unary.f32(i32 7, float %747)  ; Saturate(value)
  %749 = fsub fast float 1.000000e+00, %748
  %750 = fmul float %745, %749
  %751 = fmul float %750, %750
  %752 = fmul fast float %739, %716
  %753 = fmul fast float %752, %751
  %754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %755 = extractvalue %dx.types.CBufRet.f32 %754, 2
  %756 = extractvalue %dx.types.CBufRet.f32 %754, 1
  %757 = fsub fast float %753, %756
  %758 = fsub fast float %755, %756
  %759 = fdiv fast float %757, %758
  %760 = call float @dx.op.unary.f32(i32 7, float %759)  ; Saturate(value)
  %761 = fmul fast float %760, %734
  %762 = fcmp fast ogt float %736, 0.000000e+00
  br i1 %762, label %763, label %783, !dx.controlflow.hints !62

; <label>:763                                     ; preds = %731
  %764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %765 = extractvalue %dx.types.CBufRet.f32 %764, 0
  %766 = extractvalue %dx.types.CBufRet.f32 %764, 1
  %767 = extractvalue %dx.types.CBufRet.f32 %764, 2
  %768 = fsub fast float %259, %765
  %769 = fsub fast float %260, %766
  %770 = fsub fast float %261, %767
  %771 = fmul fast float %768, %768
  %772 = fmul fast float %769, %769
  %773 = fadd fast float %771, %772
  %774 = fmul fast float %770, %770
  %775 = fadd fast float %773, %774
  %776 = call float @dx.op.unary.f32(i32 24, float %775)  ; Sqrt(value)
  %777 = fsub fast float %776, %735
  %778 = fsub fast float %736, %735
  %779 = fdiv fast float %777, %778
  %780 = call float @dx.op.unary.f32(i32 7, float %779)  ; Saturate(value)
  %781 = fmul fast float %780, %780
  %782 = fmul fast float %781, %761
  br label %783

; <label>:783                                     ; preds = %763, %731, %708
  %784 = phi float [ 0.000000e+00, %708 ], [ %782, %763 ], [ %761, %731 ]
  %785 = fmul fast float %784, %454
  %786 = fmul fast float %785, %709
  %787 = fmul fast float %785, %710
  %788 = fmul fast float %785, %711
  %789 = fadd fast float %786, %648
  %790 = fadd fast float %787, %649
  %791 = fadd fast float %788, %650
  %792 = fadd fast float %785, %646
  br label %793

; <label>:793                                     ; preds = %783, %645
  %794 = phi float [ %792, %783 ], [ %646, %645 ]
  %795 = phi float [ %789, %783 ], [ %648, %645 ]
  %796 = phi float [ %790, %783 ], [ %649, %645 ]
  %797 = phi float [ %791, %783 ], [ %650, %645 ]
  %798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %799 = extractvalue %dx.types.CBufRet.f32 %798, 1
  %800 = fcmp fast ogt float %794, %799
  br i1 %800, label %801, label %807, !dx.controlflow.hints !63

; <label>:801                                     ; preds = %793
  %802 = fdiv fast float 1.000000e+00, %794
  %803 = fmul fast float %802, %795
  %804 = fmul fast float %802, %796
  %805 = fmul fast float %802, %797
  %806 = fmul fast float %802, %647
  br label %807

; <label>:807                                     ; preds = %801, %793
  %808 = phi float [ %806, %801 ], [ %647, %793 ]
  %809 = phi float [ %803, %801 ], [ %795, %793 ]
  %810 = phi float [ %804, %801 ], [ %796, %793 ]
  %811 = phi float [ %805, %801 ], [ %797, %793 ]
  br i1 %800, label %814, label %812, !dx.controlflow.hints !64

; <label>:812                                     ; preds = %807
  %813 = fadd fast float %454, %262
  br label %2255

; <label>:814                                     ; preds = %807
  %815 = fmul fast float %794, 0xBFF7154760000000
  %816 = call float @dx.op.unary.f32(i32 21, float %815)  ; Exp(value)
  %817 = call float @dx.op.unary.f32(i32 7, float %816)  ; Saturate(value)
  %818 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %819 = extractvalue %dx.types.CBufRet.i32 %818, 0
  %820 = icmp eq i32 %819, 1
  br i1 %820, label %821, label %856, !dx.controlflow.hints !65

; <label>:821                                     ; preds = %814
  %822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %823 = extractvalue %dx.types.CBufRet.f32 %822, 0
  %824 = extractvalue %dx.types.CBufRet.f32 %822, 1
  %825 = fsub fast float %259, %823
  %826 = fsub fast float %260, %824
  %827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %828 = extractvalue %dx.types.CBufRet.f32 %827, 0
  %829 = extractvalue %dx.types.CBufRet.f32 %827, 1
  %830 = fmul fast float %825, %828
  %831 = fmul fast float %826, %829
  %832 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %25, float %830, float %831, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %833 = extractvalue %dx.types.ResRet.f32 %832, 0
  %834 = fcmp fast ogt float %833, 0.000000e+00
  %835 = extractvalue %dx.types.CBufRet.i32 %818, 3
  %836 = icmp ne i32 %835, 0
  %837 = and i1 %834, %836
  br i1 %837, label %838, label %856, !dx.controlflow.hints !66

; <label>:838                                     ; preds = %821
  %839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %840 = extractvalue %dx.types.CBufRet.f32 %839, 0
  %841 = extractvalue %dx.types.CBufRet.f32 %839, 1
  %842 = fsub fast float %259, %840
  %843 = fsub fast float %260, %841
  %844 = fmul fast float %842, %842
  %845 = fmul fast float %843, %843
  %846 = fadd fast float %844, %845
  %847 = uitofp i32 %835 to float
  %848 = fmul fast float %847, %847
  %849 = fcmp fast ogt float %846, %848
  br i1 %849, label %856, label %850, !dx.controlflow.hints !67

; <label>:850                                     ; preds = %838
  %851 = call float @dx.op.unary.f32(i32 24, float %846)  ; Sqrt(value)
  %852 = fsub fast float %847, %851
  %853 = fmul fast float %852, 0x3F75555560000000
  %854 = call float @dx.op.unary.f32(i32 7, float %853)  ; Saturate(value)
  %855 = call float @dx.op.binary.f32(i32 36, float %854, float %833)  ; FMin(a,b)
  br label %856

; <label>:856                                     ; preds = %850, %838, %821, %814
  %857 = phi float [ 1.000000e+00, %814 ], [ %855, %850 ], [ %833, %821 ], [ 0.000000e+00, %838 ]
  %858 = fcmp fast ogt float %857, 0.000000e+00
  br i1 %858, label %859, label %932, !dx.controlflow.hints !68

; <label>:859                                     ; preds = %856
  %860 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %861 = extractvalue %dx.types.ResRet.i32 %860, 0
  %862 = extractvalue %dx.types.ResRet.i32 %860, 1
  %863 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %864 = extractvalue %dx.types.ResRet.i32 %863, 0
  %865 = extractvalue %dx.types.ResRet.i32 %863, 1
  %866 = extractvalue %dx.types.ResRet.i32 %863, 2
  %867 = extractvalue %dx.types.ResRet.i32 %863, 3
  %868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %869 = extractvalue %dx.types.ResRet.i32 %868, 0
  %870 = extractvalue %dx.types.ResRet.i32 %868, 1
  %871 = extractvalue %dx.types.ResRet.i32 %868, 2
  %872 = extractvalue %dx.types.ResRet.i32 %868, 3
  %873 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %874 = extractvalue %dx.types.ResRet.i32 %873, 0
  %875 = extractvalue %dx.types.ResRet.i32 %873, 1
  %876 = extractvalue %dx.types.ResRet.i32 %873, 2
  %877 = extractvalue %dx.types.ResRet.i32 %873, 3
  %878 = and i32 %874, 65535
  %879 = call float @dx.op.legacyF16ToF32(i32 131, i32 %878)  ; LegacyF16ToF32(value)
  %880 = lshr i32 %874, 16
  %881 = call float @dx.op.legacyF16ToF32(i32 131, i32 %880)  ; LegacyF16ToF32(value)
  %882 = and i32 %875, 65535
  %883 = call float @dx.op.legacyF16ToF32(i32 131, i32 %882)  ; LegacyF16ToF32(value)
  %884 = lshr i32 %875, 16
  %885 = call float @dx.op.legacyF16ToF32(i32 131, i32 %884)  ; LegacyF16ToF32(value)
  %886 = and i32 %876, 65535
  %887 = call float @dx.op.legacyF16ToF32(i32 131, i32 %886)  ; LegacyF16ToF32(value)
  %888 = lshr i32 %876, 16
  %889 = call float @dx.op.legacyF16ToF32(i32 131, i32 %888)  ; LegacyF16ToF32(value)
  %890 = and i32 %877, 65535
  %891 = call float @dx.op.legacyF16ToF32(i32 131, i32 %890)  ; LegacyF16ToF32(value)
  %892 = lshr i32 %877, 16
  %893 = call float @dx.op.legacyF16ToF32(i32 131, i32 %892)  ; LegacyF16ToF32(value)
  %894 = and i32 %869, 65535
  %895 = call float @dx.op.legacyF16ToF32(i32 131, i32 %894)  ; LegacyF16ToF32(value)
  %896 = lshr i32 %869, 16
  %897 = call float @dx.op.legacyF16ToF32(i32 131, i32 %896)  ; LegacyF16ToF32(value)
  %898 = and i32 %870, 65535
  %899 = call float @dx.op.legacyF16ToF32(i32 131, i32 %898)  ; LegacyF16ToF32(value)
  %900 = lshr i32 %870, 16
  %901 = call float @dx.op.legacyF16ToF32(i32 131, i32 %900)  ; LegacyF16ToF32(value)
  %902 = and i32 %871, 65535
  %903 = call float @dx.op.legacyF16ToF32(i32 131, i32 %902)  ; LegacyF16ToF32(value)
  %904 = lshr i32 %871, 16
  %905 = call float @dx.op.legacyF16ToF32(i32 131, i32 %904)  ; LegacyF16ToF32(value)
  %906 = and i32 %872, 65535
  %907 = call float @dx.op.legacyF16ToF32(i32 131, i32 %906)  ; LegacyF16ToF32(value)
  %908 = lshr i32 %872, 16
  %909 = call float @dx.op.legacyF16ToF32(i32 131, i32 %908)  ; LegacyF16ToF32(value)
  %910 = and i32 %864, 65535
  %911 = call float @dx.op.legacyF16ToF32(i32 131, i32 %910)  ; LegacyF16ToF32(value)
  %912 = lshr i32 %864, 16
  %913 = call float @dx.op.legacyF16ToF32(i32 131, i32 %912)  ; LegacyF16ToF32(value)
  %914 = and i32 %865, 65535
  %915 = call float @dx.op.legacyF16ToF32(i32 131, i32 %914)  ; LegacyF16ToF32(value)
  %916 = lshr i32 %865, 16
  %917 = call float @dx.op.legacyF16ToF32(i32 131, i32 %916)  ; LegacyF16ToF32(value)
  %918 = and i32 %866, 65535
  %919 = call float @dx.op.legacyF16ToF32(i32 131, i32 %918)  ; LegacyF16ToF32(value)
  %920 = lshr i32 %866, 16
  %921 = call float @dx.op.legacyF16ToF32(i32 131, i32 %920)  ; LegacyF16ToF32(value)
  %922 = and i32 %867, 65535
  %923 = call float @dx.op.legacyF16ToF32(i32 131, i32 %922)  ; LegacyF16ToF32(value)
  %924 = lshr i32 %867, 16
  %925 = call float @dx.op.legacyF16ToF32(i32 131, i32 %924)  ; LegacyF16ToF32(value)
  %926 = and i32 %861, 65535
  %927 = call float @dx.op.legacyF16ToF32(i32 131, i32 %926)  ; LegacyF16ToF32(value)
  %928 = lshr i32 %861, 16
  %929 = call float @dx.op.legacyF16ToF32(i32 131, i32 %928)  ; LegacyF16ToF32(value)
  %930 = and i32 %862, 65535
  %931 = call float @dx.op.legacyF16ToF32(i32 131, i32 %930)  ; LegacyF16ToF32(value)
  br label %932

; <label>:932                                     ; preds = %859, %856
  %933 = phi float [ %931, %859 ], [ 0.000000e+00, %856 ]
  %934 = phi float [ %929, %859 ], [ 0.000000e+00, %856 ]
  %935 = phi float [ %927, %859 ], [ 0.000000e+00, %856 ]
  %936 = phi float [ %925, %859 ], [ 0.000000e+00, %856 ]
  %937 = phi float [ %923, %859 ], [ 0.000000e+00, %856 ]
  %938 = phi float [ %921, %859 ], [ 0.000000e+00, %856 ]
  %939 = phi float [ %919, %859 ], [ 0.000000e+00, %856 ]
  %940 = phi float [ %917, %859 ], [ 0.000000e+00, %856 ]
  %941 = phi float [ %915, %859 ], [ 0.000000e+00, %856 ]
  %942 = phi float [ %913, %859 ], [ 0.000000e+00, %856 ]
  %943 = phi float [ %911, %859 ], [ 0.000000e+00, %856 ]
  %944 = phi float [ %909, %859 ], [ 0.000000e+00, %856 ]
  %945 = phi float [ %907, %859 ], [ 0.000000e+00, %856 ]
  %946 = phi float [ %905, %859 ], [ 0.000000e+00, %856 ]
  %947 = phi float [ %903, %859 ], [ 0.000000e+00, %856 ]
  %948 = phi float [ %901, %859 ], [ 0.000000e+00, %856 ]
  %949 = phi float [ %899, %859 ], [ 0.000000e+00, %856 ]
  %950 = phi float [ %897, %859 ], [ 0.000000e+00, %856 ]
  %951 = phi float [ %895, %859 ], [ 0.000000e+00, %856 ]
  %952 = phi float [ %893, %859 ], [ 0.000000e+00, %856 ]
  %953 = phi float [ %891, %859 ], [ 0.000000e+00, %856 ]
  %954 = phi float [ %889, %859 ], [ 0.000000e+00, %856 ]
  %955 = phi float [ %887, %859 ], [ 0.000000e+00, %856 ]
  %956 = phi float [ %885, %859 ], [ 0.000000e+00, %856 ]
  %957 = phi float [ %883, %859 ], [ 0.000000e+00, %856 ]
  %958 = phi float [ %881, %859 ], [ 0.000000e+00, %856 ]
  %959 = phi float [ %879, %859 ], [ 0.000000e+00, %856 ]
  %960 = fcmp fast olt float %857, 1.000000e+00
  br i1 %960, label %961, label %1621, !dx.controlflow.hints !69

; <label>:961                                     ; preds = %932
  %962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %963 = extractvalue %dx.types.CBufRet.f32 %962, 0
  %964 = extractvalue %dx.types.CBufRet.f32 %962, 1
  %965 = fsub fast float %259, %963
  %966 = fsub fast float %260, %964
  %967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %968 = extractvalue %dx.types.CBufRet.f32 %967, 0
  %969 = extractvalue %dx.types.CBufRet.f32 %967, 1
  %970 = fmul fast float %965, %968
  %971 = fmul fast float %966, %969
  %972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %973 = extractvalue %dx.types.CBufRet.f32 %972, 0
  %974 = fmul fast float %973, %970
  %975 = extractvalue %dx.types.CBufRet.f32 %972, 1
  %976 = fadd fast float %974, %975
  %977 = extractvalue %dx.types.CBufRet.f32 %972, 2
  %978 = fmul fast float %977, %971
  %979 = extractvalue %dx.types.CBufRet.f32 %972, 3
  %980 = fadd fast float %978, %979
  %981 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %25, float %976, float %980, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %982 = extractvalue %dx.types.ResRet.f32 %981, 0
  %983 = extractvalue %dx.types.ResRet.f32 %981, 1
  %984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %985 = extractvalue %dx.types.CBufRet.f32 %984, 1
  %986 = extractvalue %dx.types.CBufRet.f32 %984, 0
  %987 = fsub fast float %985, %986
  %988 = fmul fast float %987, %982
  %989 = fadd fast float %988, %986
  %990 = extractvalue %dx.types.CBufRet.f32 %984, 3
  %991 = extractvalue %dx.types.CBufRet.f32 %984, 2
  %992 = fsub fast float %990, %991
  %993 = fmul fast float %992, %983
  %994 = fadd fast float %993, %991
  %995 = fsub fast float %261, %989
  %996 = fsub fast float %994, %989
  %997 = fdiv fast float %995, %996
  %998 = call float @dx.op.unary.f32(i32 7, float %997)  ; Saturate(value)
  %999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %1000 = extractvalue %dx.types.CBufRet.f32 %999, 0
  %1001 = fmul fast float %1000, %998
  %1002 = extractvalue %dx.types.CBufRet.f32 %999, 1
  %1003 = fadd fast float %1001, %1002
  %1004 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %25, float %976, float %980, float %1003, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1005 = extractvalue %dx.types.ResRet.f32 %1004, 0
  %1006 = extractvalue %dx.types.ResRet.f32 %1004, 1
  %1007 = extractvalue %dx.types.ResRet.f32 %1004, 2
  %1008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %1009 = extractvalue %dx.types.CBufRet.f32 %1008, 0
  %1010 = extractvalue %dx.types.CBufRet.f32 %1008, 1
  %1011 = extractvalue %dx.types.CBufRet.f32 %1008, 2
  %1012 = fmul fast float %1009, %1005
  %1013 = fmul fast float %1010, %1006
  %1014 = fmul fast float %1011, %1007
  %1015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %1016 = extractvalue %dx.types.CBufRet.f32 %1015, 0
  %1017 = extractvalue %dx.types.CBufRet.f32 %1015, 1
  %1018 = extractvalue %dx.types.CBufRet.f32 %1015, 2
  %1019 = fadd fast float %1012, %1016
  %1020 = fadd fast float %1013, %1017
  %1021 = fadd fast float %1014, %1018
  %1022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %1023 = extractvalue %dx.types.CBufRet.f32 %1022, 0
  %1024 = fmul fast float %1023, %970
  %1025 = extractvalue %dx.types.CBufRet.f32 %1022, 1
  %1026 = fadd fast float %1024, %1025
  %1027 = extractvalue %dx.types.CBufRet.f32 %1022, 2
  %1028 = fmul fast float %1027, %971
  %1029 = extractvalue %dx.types.CBufRet.f32 %1022, 3
  %1030 = fadd fast float %1028, %1029
  %1031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %1032 = extractvalue %dx.types.CBufRet.f32 %1031, 0
  %1033 = extractvalue %dx.types.CBufRet.f32 %1031, 1
  %1034 = extractvalue %dx.types.CBufRet.f32 %1031, 2
  %1035 = extractvalue %dx.types.CBufRet.f32 %1031, 3
  %1036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %1037 = extractvalue %dx.types.CBufRet.f32 %1036, 0
  %1038 = extractvalue %dx.types.CBufRet.f32 %1036, 1
  %1039 = extractvalue %dx.types.CBufRet.f32 %1036, 2
  %1040 = extractvalue %dx.types.CBufRet.f32 %1036, 3
  %1041 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %25, float %1026, float %1030, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1042 = extractvalue %dx.types.ResRet.f32 %1041, 0
  %1043 = extractvalue %dx.types.ResRet.f32 %1041, 1
  %1044 = extractvalue %dx.types.ResRet.f32 %1041, 2
  %1045 = extractvalue %dx.types.ResRet.f32 %1041, 3
  %1046 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %25, float %1026, float %1030, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1047 = extractvalue %dx.types.ResRet.f32 %1046, 0
  %1048 = extractvalue %dx.types.ResRet.f32 %1046, 1
  %1049 = extractvalue %dx.types.ResRet.f32 %1046, 2
  %1050 = extractvalue %dx.types.ResRet.f32 %1046, 3
  %1051 = fmul fast float %1042, %1019
  %1052 = fmul fast float %1047, %1019
  %1053 = fmul fast float %1049, %1019
  %1054 = fmul fast float %1045, %1019
  %1055 = fadd fast float %1051, %1032
  %1056 = fadd fast float %1052, %1033
  %1057 = fadd fast float %1053, %1034
  %1058 = fadd fast float %1054, %1035
  %1059 = fmul fast float %1043, %1019
  %1060 = fmul fast float %1048, %1019
  %1061 = fadd fast float %1059, %1037
  %1062 = fadd fast float %1060, %1038
  %1063 = fmul fast float %1044, %1019
  %1064 = fmul fast float %1050, %1019
  %1065 = fadd fast float %1063, %1039
  %1066 = fadd fast float %1064, %1040
  %1067 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %25, float %1026, float %1030, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1068 = extractvalue %dx.types.ResRet.f32 %1067, 0
  %1069 = extractvalue %dx.types.ResRet.f32 %1067, 1
  %1070 = extractvalue %dx.types.ResRet.f32 %1067, 2
  %1071 = extractvalue %dx.types.ResRet.f32 %1067, 3
  %1072 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %25, float %1026, float %1030, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1073 = extractvalue %dx.types.ResRet.f32 %1072, 0
  %1074 = extractvalue %dx.types.ResRet.f32 %1072, 1
  %1075 = extractvalue %dx.types.ResRet.f32 %1072, 2
  %1076 = extractvalue %dx.types.ResRet.f32 %1072, 3
  %1077 = fmul fast float %1068, %1020
  %1078 = fmul fast float %1073, %1020
  %1079 = fmul fast float %1075, %1020
  %1080 = fmul fast float %1071, %1020
  %1081 = fadd fast float %1055, %1077
  %1082 = fadd fast float %1056, %1078
  %1083 = fadd fast float %1057, %1079
  %1084 = fadd fast float %1058, %1080
  %1085 = fmul fast float %1069, %1020
  %1086 = fmul fast float %1074, %1020
  %1087 = fadd fast float %1061, %1085
  %1088 = fadd fast float %1062, %1086
  %1089 = fmul fast float %1070, %1020
  %1090 = fmul fast float %1076, %1020
  %1091 = fadd fast float %1065, %1089
  %1092 = fadd fast float %1066, %1090
  %1093 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %25, float %1026, float %1030, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1094 = extractvalue %dx.types.ResRet.f32 %1093, 0
  %1095 = extractvalue %dx.types.ResRet.f32 %1093, 1
  %1096 = extractvalue %dx.types.ResRet.f32 %1093, 2
  %1097 = extractvalue %dx.types.ResRet.f32 %1093, 3
  %1098 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %25, float %1026, float %1030, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1099 = extractvalue %dx.types.ResRet.f32 %1098, 0
  %1100 = extractvalue %dx.types.ResRet.f32 %1098, 1
  %1101 = extractvalue %dx.types.ResRet.f32 %1098, 2
  %1102 = extractvalue %dx.types.ResRet.f32 %1098, 3
  %1103 = fmul fast float %1094, %1021
  %1104 = fmul fast float %1099, %1021
  %1105 = fmul fast float %1101, %1021
  %1106 = fmul fast float %1097, %1021
  %1107 = fadd fast float %1081, %1103
  %1108 = fadd fast float %1082, %1104
  %1109 = fadd fast float %1083, %1105
  %1110 = fadd fast float %1084, %1106
  %1111 = fmul fast float %1095, %1021
  %1112 = fmul fast float %1100, %1021
  %1113 = fadd fast float %1087, %1111
  %1114 = fadd fast float %1088, %1112
  %1115 = fmul fast float %1096, %1021
  %1116 = fmul fast float %1102, %1021
  %1117 = fadd fast float %1091, %1115
  %1118 = fadd fast float %1092, %1116
  %1119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %1120 = extractvalue %dx.types.CBufRet.f32 %1119, 0
  %1121 = fsub fast float %259, %1120
  %1122 = fsub fast float %963, %259
  %1123 = call float @dx.op.binary.f32(i32 35, float %1122, float %1121)  ; FMax(a,b)
  %1124 = extractvalue %dx.types.CBufRet.f32 %1119, 1
  %1125 = fsub fast float %260, %1124
  %1126 = fsub fast float %964, %260
  %1127 = call float @dx.op.binary.f32(i32 35, float %1126, float %1125)  ; FMax(a,b)
  %1128 = call float @dx.op.binary.f32(i32 35, float %1123, float %1127)  ; FMax(a,b)
  %1129 = extractvalue %dx.types.CBufRet.f32 %967, 3
  %1130 = fmul fast float %1129, %1128
  %1131 = call float @dx.op.unary.f32(i32 7, float %1130)  ; Saturate(value)
  %1132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %1133 = extractvalue %dx.types.CBufRet.f32 %1132, 0
  %1134 = extractvalue %dx.types.CBufRet.f32 %1132, 1
  %1135 = extractvalue %dx.types.CBufRet.f32 %1132, 2
  %1136 = extractvalue %dx.types.CBufRet.f32 %1132, 3
  %1137 = fsub fast float %1133, %1107
  %1138 = fsub fast float %1134, %1108
  %1139 = fsub fast float %1135, %1109
  %1140 = fsub fast float %1136, %1110
  %1141 = fmul fast float %1137, %1131
  %1142 = fmul fast float %1138, %1131
  %1143 = fmul fast float %1139, %1131
  %1144 = fmul fast float %1140, %1131
  %1145 = fadd fast float %1141, %1107
  %1146 = fadd fast float %1142, %1108
  %1147 = fadd fast float %1143, %1109
  %1148 = fadd fast float %1144, %1110
  %1149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %1150 = extractvalue %dx.types.CBufRet.f32 %1149, 0
  %1151 = extractvalue %dx.types.CBufRet.f32 %1149, 1
  %1152 = fsub fast float %1150, %1113
  %1153 = fsub fast float %1151, %1114
  %1154 = fmul fast float %1152, %1131
  %1155 = fmul fast float %1153, %1131
  %1156 = fadd fast float %1154, %1113
  %1157 = fadd fast float %1155, %1114
  %1158 = extractvalue %dx.types.CBufRet.f32 %1149, 2
  %1159 = extractvalue %dx.types.CBufRet.f32 %1149, 3
  %1160 = fsub fast float %1158, %1117
  %1161 = fsub fast float %1159, %1118
  %1162 = fmul fast float %1160, %1131
  %1163 = fmul fast float %1161, %1131
  %1164 = fadd fast float %1162, %1117
  %1165 = fadd fast float %1163, %1118
  %1166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %1167 = extractvalue %dx.types.CBufRet.f32 %1166, 0
  %1168 = fmul fast float %1167, %1145
  %1169 = fmul fast float %1167, %1146
  %1170 = fmul fast float %1167, %1147
  %1171 = fmul fast float %1167, %1148
  %1172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %1173 = extractvalue %dx.types.CBufRet.f32 %1172, 0
  %1174 = fmul fast float %1173, %1156
  %1175 = fmul fast float %1173, %1157
  %1176 = fadd fast float %1174, %1168
  %1177 = fadd fast float %1175, %1170
  %1178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %1179 = extractvalue %dx.types.CBufRet.f32 %1178, 0
  %1180 = fmul fast float %1179, %1164
  %1181 = fmul fast float %1179, %1165
  %1182 = fadd fast float %1176, %1180
  %1183 = fadd fast float %1177, %1181
  %1184 = extractvalue %dx.types.CBufRet.f32 %1166, 1
  %1185 = fmul fast float %1184, %1145
  %1186 = fmul fast float %1184, %1146
  %1187 = fmul fast float %1184, %1147
  %1188 = fmul fast float %1184, %1148
  %1189 = extractvalue %dx.types.CBufRet.f32 %1172, 1
  %1190 = fmul fast float %1189, %1156
  %1191 = fmul fast float %1189, %1157
  %1192 = fadd fast float %1190, %1185
  %1193 = fadd fast float %1191, %1187
  %1194 = extractvalue %dx.types.CBufRet.f32 %1178, 1
  %1195 = fmul fast float %1194, %1164
  %1196 = fmul fast float %1194, %1165
  %1197 = fadd fast float %1192, %1195
  %1198 = fadd fast float %1193, %1196
  %1199 = extractvalue %dx.types.CBufRet.f32 %1166, 2
  %1200 = fmul fast float %1199, %1145
  %1201 = fmul fast float %1199, %1146
  %1202 = fmul fast float %1199, %1147
  %1203 = fmul fast float %1199, %1148
  %1204 = extractvalue %dx.types.CBufRet.f32 %1172, 2
  %1205 = fmul fast float %1204, %1156
  %1206 = fmul fast float %1204, %1157
  %1207 = fadd fast float %1205, %1200
  %1208 = fadd fast float %1206, %1202
  %1209 = extractvalue %dx.types.CBufRet.f32 %1178, 2
  %1210 = fmul fast float %1209, %1164
  %1211 = fmul fast float %1209, %1165
  %1212 = fadd fast float %1207, %1210
  %1213 = fadd fast float %1208, %1211
  %1214 = fmul fast float %1201, %1201
  %1215 = fmul fast float %1213, %1213
  %1216 = fmul fast float %1203, %1203
  %1217 = fadd fast float %1216, %1214
  %1218 = fadd fast float %1217, %1215
  %1219 = call float @dx.op.unary.f32(i32 24, float %1218)  ; Sqrt(value)
  %1220 = fcmp fast ugt float %1219, 0.000000e+00
  br i1 %1220, label %1221, label %1236, !dx.controlflow.hints !70

; <label>:1221                                    ; preds = %961
  %1222 = fsub fast float -0.000000e+00, %1203
  %1223 = fdiv fast float %1222, %1219
  %1224 = fsub fast float -0.000000e+00, %1201
  %1225 = fdiv fast float %1224, %1219
  %1226 = fdiv fast float %1213, %1219
  %1227 = fmul fast float %1212, 0x3FE279A760000000
  %1228 = fmul fast float %1225, %1201
  %1229 = fmul fast float %1226, %1213
  %1230 = fmul fast float %1223, %1203
  %1231 = fadd fast float %1228, %1230
  %1232 = fsub fast float %1231, %1229
  %1233 = call float @dx.op.unary.f32(i32 6, float %1232)  ; FAbs(value)
  %1234 = fadd fast float %1233, 0x3DDB7CDFE0000000
  %1235 = fdiv fast float %1227, %1234
  br label %1236

; <label>:1236                                    ; preds = %1221, %961
  %1237 = phi float [ %1235, %1221 ], [ 1.000000e+00, %961 ]
  %1238 = fmul fast float %1186, %1186
  %1239 = fmul fast float %1198, %1198
  %1240 = fmul fast float %1188, %1188
  %1241 = fadd fast float %1240, %1238
  %1242 = fadd fast float %1241, %1239
  %1243 = call float @dx.op.unary.f32(i32 24, float %1242)  ; Sqrt(value)
  %1244 = fcmp fast ugt float %1243, 0.000000e+00
  br i1 %1244, label %1245, label %1260, !dx.controlflow.hints !70

; <label>:1245                                    ; preds = %1236
  %1246 = fsub fast float -0.000000e+00, %1188
  %1247 = fdiv fast float %1246, %1243
  %1248 = fsub fast float -0.000000e+00, %1186
  %1249 = fdiv fast float %1248, %1243
  %1250 = fdiv fast float %1198, %1243
  %1251 = fmul fast float %1197, 0x3FE279A760000000
  %1252 = fmul fast float %1249, %1186
  %1253 = fmul fast float %1250, %1198
  %1254 = fmul fast float %1247, %1188
  %1255 = fadd fast float %1252, %1254
  %1256 = fsub fast float %1255, %1253
  %1257 = call float @dx.op.unary.f32(i32 6, float %1256)  ; FAbs(value)
  %1258 = fadd fast float %1257, 0x3DDB7CDFE0000000
  %1259 = fdiv fast float %1251, %1258
  br label %1260

; <label>:1260                                    ; preds = %1245, %1236
  %1261 = phi float [ %1259, %1245 ], [ 1.000000e+00, %1236 ]
  %1262 = call float @dx.op.binary.f32(i32 36, float %1261, float %1237)  ; FMin(a,b)
  %1263 = fmul fast float %1169, %1169
  %1264 = fmul fast float %1183, %1183
  %1265 = fmul fast float %1171, %1171
  %1266 = fadd fast float %1265, %1263
  %1267 = fadd fast float %1266, %1264
  %1268 = call float @dx.op.unary.f32(i32 24, float %1267)  ; Sqrt(value)
  %1269 = fcmp fast ugt float %1268, 0.000000e+00
  br i1 %1269, label %1270, label %1285, !dx.controlflow.hints !70

; <label>:1270                                    ; preds = %1260
  %1271 = fsub fast float -0.000000e+00, %1171
  %1272 = fdiv fast float %1271, %1268
  %1273 = fsub fast float -0.000000e+00, %1169
  %1274 = fdiv fast float %1273, %1268
  %1275 = fdiv fast float %1183, %1268
  %1276 = fmul fast float %1182, 0x3FE279A760000000
  %1277 = fmul fast float %1274, %1169
  %1278 = fmul fast float %1275, %1183
  %1279 = fmul fast float %1272, %1171
  %1280 = fadd fast float %1277, %1279
  %1281 = fsub fast float %1280, %1278
  %1282 = call float @dx.op.unary.f32(i32 6, float %1281)  ; FAbs(value)
  %1283 = fadd fast float %1282, 0x3DDB7CDFE0000000
  %1284 = fdiv fast float %1276, %1283
  br label %1285

; <label>:1285                                    ; preds = %1270, %1260
  %1286 = phi float [ %1284, %1270 ], [ 1.000000e+00, %1260 ]
  %1287 = call float @dx.op.binary.f32(i32 36, float %1286, float %1262)  ; FMin(a,b)
  %1288 = call float @dx.op.unary.f32(i32 7, float %1287)  ; Saturate(value)
  %1289 = fcmp fast olt float %1288, 1.000000e+00
  br i1 %1289, label %1290, label %1300, !dx.controlflow.hints !71

; <label>:1290                                    ; preds = %1285
  %1291 = fmul fast float %1288, %1169
  %1292 = fmul fast float %1288, %1183
  %1293 = fmul fast float %1288, %1171
  %1294 = fmul fast float %1288, %1186
  %1295 = fmul fast float %1288, %1198
  %1296 = fmul fast float %1288, %1188
  %1297 = fmul fast float %1288, %1201
  %1298 = fmul fast float %1288, %1213
  %1299 = fmul fast float %1288, %1203
  br label %1300

; <label>:1300                                    ; preds = %1290, %1285
  %1301 = phi float [ %1297, %1290 ], [ %1201, %1285 ]
  %1302 = phi float [ %1298, %1290 ], [ %1213, %1285 ]
  %1303 = phi float [ %1299, %1290 ], [ %1203, %1285 ]
  %1304 = phi float [ %1294, %1290 ], [ %1186, %1285 ]
  %1305 = phi float [ %1295, %1290 ], [ %1198, %1285 ]
  %1306 = phi float [ %1296, %1290 ], [ %1188, %1285 ]
  %1307 = phi float [ %1291, %1290 ], [ %1169, %1285 ]
  %1308 = phi float [ %1292, %1290 ], [ %1183, %1285 ]
  %1309 = phi float [ %1293, %1290 ], [ %1171, %1285 ]
  %1310 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1182)  ; FMax(a,b)
  %1311 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1197)  ; FMax(a,b)
  %1312 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1212)  ; FMax(a,b)
  %1313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %1314 = extractvalue %dx.types.CBufRet.f32 %1313, 0
  %1315 = fcmp fast ogt float %1314, 0.000000e+00
  %1316 = fcmp fast oge float %970, 0.000000e+00
  %1317 = and i1 %1316, %1315
  %1318 = fcmp fast ole float %970, 1.000000e+00
  %1319 = and i1 %1318, %1317
  %1320 = fcmp fast oge float %971, 0.000000e+00
  %1321 = and i1 %1320, %1319
  %1322 = fcmp fast ole float %971, 1.000000e+00
  %1323 = and i1 %1322, %1321
  br i1 %1323, label %1324, label %1469, !dx.controlflow.hints !72

; <label>:1324                                    ; preds = %1300
  %1325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1326 = extractvalue %dx.types.CBufRet.f32 %1325, 2
  %1327 = extractvalue %dx.types.CBufRet.f32 %1325, 3
  %1328 = fmul fast float %1326, %970
  %1329 = fmul fast float %1327, %971
  %1330 = call float @dx.op.unary.f32(i32 27, float %1328)  ; Round_ni(value)
  %1331 = call float @dx.op.unary.f32(i32 27, float %1329)  ; Round_ni(value)
  %1332 = fptosi float %1330 to i32
  %1333 = fptosi float %1331 to i32
  %1334 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %1332, i32 %1333, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1335 = extractvalue %dx.types.ResRet.i32 %1334, 0
  %1336 = and i32 %1335, 65535
  %1337 = lshr i32 %1335, 16
  %1338 = icmp eq i32 %1336, 65535
  br i1 %1338, label %1375, label %1339, !dx.controlflow.hints !73

; <label>:1339                                    ; preds = %1324
  %1340 = extractvalue %dx.types.CBufRet.f32 %1313, 1
  %1341 = extractvalue %dx.types.CBufRet.f32 %1325, 0
  %1342 = extractvalue %dx.types.CBufRet.f32 %1325, 1
  %1343 = fmul fast float %1341, %970
  %1344 = fmul fast float %1342, %971
  %1345 = fmul fast float %1343, 1.250000e-01
  %1346 = fmul fast float %1344, 1.250000e-01
  %1347 = call float @dx.op.unary.f32(i32 27, float %1345)  ; Round_ni(value)
  %1348 = call float @dx.op.unary.f32(i32 27, float %1346)  ; Round_ni(value)
  %1349 = fmul fast float %1347, 8.000000e+00
  %1350 = fmul fast float %1348, 8.000000e+00
  %1351 = and i32 %1335, 255
  %1352 = lshr i32 %1335, 8
  %1353 = and i32 %1352, 255
  %1354 = mul nuw nsw i32 %1351, 9
  %1355 = uitofp i32 %1354 to float
  %1356 = mul nuw nsw i32 %1353, 9
  %1357 = uitofp i32 %1356 to float
  %1358 = fadd fast float %1355, 5.000000e-01
  %1359 = fadd fast float %1358, %1343
  %1360 = fsub fast float %1359, %1349
  %1361 = fadd fast float %1357, 5.000000e-01
  %1362 = fadd fast float %1361, %1344
  %1363 = fsub fast float %1362, %1350
  %1364 = fdiv fast float %1360, %1314
  %1365 = fdiv fast float %1363, %1340
  %1366 = fmul fast float %998, 4.375000e-01
  %1367 = fadd fast float %1366, 3.125000e-02
  %1368 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %25, float %1364, float %1365, float %1367, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1369 = extractvalue %dx.types.ResRet.f32 %1368, 0
  %1370 = extractvalue %dx.types.ResRet.f32 %1368, 1
  %1371 = extractvalue %dx.types.ResRet.f32 %1368, 2
  %1372 = fadd fast float %1369, %1310
  %1373 = fadd fast float %1370, %1311
  %1374 = fadd fast float %1371, %1312
  br label %1375

; <label>:1375                                    ; preds = %1339, %1324
  %1376 = phi float [ %1374, %1339 ], [ %1312, %1324 ]
  %1377 = phi float [ %1373, %1339 ], [ %1311, %1324 ]
  %1378 = phi float [ %1372, %1339 ], [ %1310, %1324 ]
  %1379 = icmp eq i32 %1337, 65535
  br i1 %1379, label %1469, label %1380, !dx.controlflow.hints !74

; <label>:1380                                    ; preds = %1375
  %1381 = extractvalue %dx.types.CBufRet.f32 %1313, 1
  %1382 = extractvalue %dx.types.CBufRet.f32 %1325, 0
  %1383 = extractvalue %dx.types.CBufRet.f32 %1325, 1
  %1384 = fmul fast float %1382, %970
  %1385 = fmul fast float %1383, %971
  %1386 = fmul fast float %1384, 1.250000e-01
  %1387 = fmul fast float %1385, 1.250000e-01
  %1388 = call float @dx.op.unary.f32(i32 27, float %1386)  ; Round_ni(value)
  %1389 = call float @dx.op.unary.f32(i32 27, float %1387)  ; Round_ni(value)
  %1390 = fmul fast float %1388, 8.000000e+00
  %1391 = fmul fast float %1389, 8.000000e+00
  %1392 = fsub fast float %1384, %1390
  %1393 = fsub fast float %1385, %1391
  %1394 = fadd fast float %1392, 5.000000e-01
  %1395 = fadd fast float %1393, 5.000000e-01
  %1396 = and i32 %1337, 255
  %1397 = lshr i32 %1335, 24
  %1398 = mul nuw nsw i32 %1396, 9
  %1399 = uitofp i32 %1398 to float
  %1400 = mul nuw nsw i32 %1397, 9
  %1401 = uitofp i32 %1400 to float
  %1402 = fadd fast float %1394, %1399
  %1403 = fadd fast float %1395, %1401
  %1404 = fdiv fast float %1402, %1314
  %1405 = fdiv fast float %1403, %1381
  %1406 = fmul fast float %998, 4.375000e-01
  %1407 = fadd fast float %1406, 3.125000e-02
  %1408 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %25, float %1404, float %1405, float %1407, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1409 = extractvalue %dx.types.ResRet.f32 %1408, 0
  %1410 = extractvalue %dx.types.ResRet.f32 %1408, 1
  %1411 = extractvalue %dx.types.ResRet.f32 %1408, 2
  %1412 = fadd fast float %1406, 5.312500e-01
  %1413 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %25, float %1404, float %1405, float %1412, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1414 = extractvalue %dx.types.ResRet.f32 %1413, 0
  %1415 = extractvalue %dx.types.ResRet.f32 %1413, 1
  %1416 = extractvalue %dx.types.ResRet.f32 %1413, 2
  %1417 = fmul fast float %1414, 2.000000e+00
  %1418 = fmul fast float %1415, 2.000000e+00
  %1419 = fmul fast float %1416, 2.000000e+00
  %1420 = fadd fast float %1417, -1.000000e+00
  %1421 = fadd fast float %1418, -1.000000e+00
  %1422 = fadd fast float %1419, -1.000000e+00
  %1423 = fmul fast float %1420, %1420
  %1424 = fmul fast float %1421, %1421
  %1425 = fadd fast float %1423, %1424
  %1426 = fmul fast float %1422, %1422
  %1427 = fadd fast float %1425, %1426
  %1428 = call float @dx.op.unary.f32(i32 24, float %1427)  ; Sqrt(value)
  %1429 = fcmp fast ogt float %1428, 0.000000e+00
  br i1 %1429, label %1430, label %1434, !dx.controlflow.hints !75

; <label>:1430                                    ; preds = %1380
  %1431 = fdiv fast float %1420, %1428
  %1432 = fdiv fast float %1421, %1428
  %1433 = fdiv fast float %1422, %1428
  br label %1434

; <label>:1434                                    ; preds = %1430, %1380
  %1435 = phi float [ %1431, %1430 ], [ 0.000000e+00, %1380 ]
  %1436 = phi float [ %1432, %1430 ], [ 0.000000e+00, %1380 ]
  %1437 = phi float [ %1433, %1430 ], [ 0.000000e+00, %1380 ]
  %1438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1439 = extractvalue %dx.types.CBufRet.f32 %1438, 0
  %1440 = extractvalue %dx.types.CBufRet.f32 %1438, 1
  %1441 = fsub fast float %259, %1439
  %1442 = fsub fast float %260, %1440
  %1443 = fmul fast float %1441, %1441
  %1444 = fmul fast float %1442, %1442
  %1445 = fadd fast float %1443, %1444
  %1446 = call float @dx.op.unary.f32(i32 24, float %1445)  ; Sqrt(value)
  %1447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1448 = extractvalue %dx.types.CBufRet.f32 %1447, 0
  %1449 = extractvalue %dx.types.CBufRet.f32 %1447, 1
  %1450 = fsub fast float %1446, %1448
  %1451 = fdiv fast float %1450, %1449
  %1452 = call float @dx.op.unary.f32(i32 7, float %1451)  ; Saturate(value)
  %1453 = fmul fast float %1452, 2.000000e+00
  %1454 = fsub fast float 3.000000e+00, %1453
  %1455 = fmul fast float %1452, %1452
  %1456 = fmul fast float %1455, %1454
  %1457 = call float @dx.op.dot3.f32(i32 55, float %1435, float %1436, float %1437, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1458 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1457)  ; FMax(a,b)
  %1459 = fmul fast float %1458, 0x400C5BF8A0000000
  %1460 = fmul fast float %1456, %1409
  %1461 = fmul fast float %1460, %1459
  %1462 = fadd fast float %1461, %1378
  %1463 = fmul fast float %1456, %1410
  %1464 = fmul fast float %1463, %1459
  %1465 = fadd fast float %1464, %1377
  %1466 = fmul fast float %1456, %1411
  %1467 = fmul fast float %1466, %1459
  %1468 = fadd fast float %1467, %1376
  br label %1469

; <label>:1469                                    ; preds = %1434, %1375, %1300
  %1470 = phi float [ %1468, %1434 ], [ %1376, %1375 ], [ %1312, %1300 ]
  %1471 = phi float [ %1465, %1434 ], [ %1377, %1375 ], [ %1311, %1300 ]
  %1472 = phi float [ %1462, %1434 ], [ %1378, %1375 ], [ %1310, %1300 ]
  %1473 = fcmp fast ogt float %261, %994
  %1474 = and i1 %1316, %1473
  %1475 = and i1 %1318, %1474
  %1476 = and i1 %1320, %1475
  %1477 = and i1 %1322, %1476
  br i1 %1477, label %1478, label %1535, !dx.controlflow.hints !76

; <label>:1478                                    ; preds = %1469
  %1479 = fmul fast float %996, 0x3FC24924A0000000
  %1480 = fsub fast float %261, %994
  %1481 = fdiv fast float %1480, %1479
  %1482 = call float @dx.op.unary.f32(i32 7, float %1481)  ; Saturate(value)
  %1483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %1484 = extractvalue %dx.types.CBufRet.f32 %1483, 0
  %1485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %1486 = extractvalue %dx.types.CBufRet.f32 %1485, 0
  %1487 = extractvalue %dx.types.CBufRet.f32 %1485, 1
  %1488 = extractvalue %dx.types.CBufRet.f32 %1485, 2
  %1489 = fsub fast float %1484, %1472
  %1490 = fsub fast float %1486, %1307
  %1491 = fsub fast float %1487, %1308
  %1492 = fsub fast float %1488, %1309
  %1493 = fmul fast float %1489, %1482
  %1494 = fmul fast float %1490, %1482
  %1495 = fmul fast float %1491, %1482
  %1496 = fmul fast float %1492, %1482
  %1497 = fadd fast float %1493, %1472
  %1498 = fadd fast float %1494, %1307
  %1499 = fadd fast float %1495, %1308
  %1500 = fadd fast float %1496, %1309
  %1501 = extractvalue %dx.types.CBufRet.f32 %1483, 1
  %1502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %1503 = extractvalue %dx.types.CBufRet.f32 %1502, 0
  %1504 = extractvalue %dx.types.CBufRet.f32 %1502, 1
  %1505 = extractvalue %dx.types.CBufRet.f32 %1502, 2
  %1506 = fsub fast float %1501, %1471
  %1507 = fsub fast float %1503, %1304
  %1508 = fsub fast float %1504, %1305
  %1509 = fsub fast float %1505, %1306
  %1510 = fmul fast float %1506, %1482
  %1511 = fmul fast float %1507, %1482
  %1512 = fmul fast float %1508, %1482
  %1513 = fmul fast float %1509, %1482
  %1514 = fadd fast float %1510, %1471
  %1515 = fadd fast float %1511, %1304
  %1516 = fadd fast float %1512, %1305
  %1517 = fadd fast float %1513, %1306
  %1518 = extractvalue %dx.types.CBufRet.f32 %1483, 2
  %1519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %1520 = extractvalue %dx.types.CBufRet.f32 %1519, 0
  %1521 = extractvalue %dx.types.CBufRet.f32 %1519, 1
  %1522 = extractvalue %dx.types.CBufRet.f32 %1519, 2
  %1523 = fsub fast float %1518, %1470
  %1524 = fsub fast float %1520, %1301
  %1525 = fsub fast float %1521, %1302
  %1526 = fsub fast float %1522, %1303
  %1527 = fmul fast float %1523, %1482
  %1528 = fmul fast float %1524, %1482
  %1529 = fmul fast float %1525, %1482
  %1530 = fmul fast float %1526, %1482
  %1531 = fadd fast float %1527, %1470
  %1532 = fadd fast float %1528, %1301
  %1533 = fadd fast float %1529, %1302
  %1534 = fadd fast float %1530, %1303
  br label %1535

; <label>:1535                                    ; preds = %1478, %1469
  %1536 = phi float [ %1531, %1478 ], [ %1470, %1469 ]
  %1537 = phi float [ %1532, %1478 ], [ %1301, %1469 ]
  %1538 = phi float [ %1533, %1478 ], [ %1302, %1469 ]
  %1539 = phi float [ %1534, %1478 ], [ %1303, %1469 ]
  %1540 = phi float [ %1514, %1478 ], [ %1471, %1469 ]
  %1541 = phi float [ %1515, %1478 ], [ %1304, %1469 ]
  %1542 = phi float [ %1516, %1478 ], [ %1305, %1469 ]
  %1543 = phi float [ %1517, %1478 ], [ %1306, %1469 ]
  %1544 = phi float [ %1497, %1478 ], [ %1472, %1469 ]
  %1545 = phi float [ %1498, %1478 ], [ %1307, %1469 ]
  %1546 = phi float [ %1499, %1478 ], [ %1308, %1469 ]
  %1547 = phi float [ %1500, %1478 ], [ %1309, %1469 ]
  %1548 = extractvalue %dx.types.CBufRet.f32 %1119, 3
  %1549 = fmul fast float %1548, %1544
  %1550 = fmul fast float %1548, %1540
  %1551 = fmul fast float %1548, %1536
  %1552 = fmul fast float %1545, 1.500000e+00
  %1553 = fmul fast float %1552, %1548
  %1554 = fmul fast float %1546, 1.500000e+00
  %1555 = fmul fast float %1554, %1548
  %1556 = fmul fast float %1547, 1.500000e+00
  %1557 = fmul fast float %1556, %1548
  %1558 = fmul fast float %1541, 1.500000e+00
  %1559 = fmul fast float %1558, %1548
  %1560 = fmul fast float %1542, 1.500000e+00
  %1561 = fmul fast float %1560, %1548
  %1562 = fmul fast float %1543, 1.500000e+00
  %1563 = fmul fast float %1562, %1548
  %1564 = fmul fast float %1537, 1.500000e+00
  %1565 = fmul fast float %1564, %1548
  %1566 = fmul fast float %1538, 1.500000e+00
  %1567 = fmul fast float %1566, %1548
  %1568 = fmul fast float %1539, 1.500000e+00
  %1569 = fmul fast float %1568, %1548
  %1570 = fsub fast float %959, %1549
  %1571 = fmul fast float %1570, %857
  %1572 = fadd fast float %1571, %1549
  %1573 = fsub fast float %958, %1553
  %1574 = fmul fast float %1573, %857
  %1575 = fadd fast float %1574, %1553
  %1576 = fsub fast float %957, %1555
  %1577 = fmul fast float %1576, %857
  %1578 = fadd fast float %1577, %1555
  %1579 = fsub fast float %956, %1557
  %1580 = fmul fast float %1579, %857
  %1581 = fadd fast float %1580, %1557
  %1582 = fmul fast float %955, %857
  %1583 = fmul fast float %954, %857
  %1584 = fmul fast float %953, %857
  %1585 = fmul fast float %952, %857
  %1586 = fmul fast float %951, %857
  %1587 = fsub fast float %950, %1550
  %1588 = fmul fast float %1587, %857
  %1589 = fadd fast float %1588, %1550
  %1590 = fsub fast float %949, %1559
  %1591 = fmul fast float %1590, %857
  %1592 = fadd fast float %1591, %1559
  %1593 = fsub fast float %948, %1561
  %1594 = fmul fast float %1593, %857
  %1595 = fadd fast float %1594, %1561
  %1596 = fsub fast float %947, %1563
  %1597 = fmul fast float %1596, %857
  %1598 = fadd fast float %1597, %1563
  %1599 = fmul fast float %946, %857
  %1600 = fmul fast float %945, %857
  %1601 = fmul fast float %944, %857
  %1602 = fmul fast float %943, %857
  %1603 = fmul fast float %942, %857
  %1604 = fsub fast float %941, %1551
  %1605 = fmul fast float %1604, %857
  %1606 = fadd fast float %1605, %1551
  %1607 = fsub fast float %940, %1565
  %1608 = fmul fast float %1607, %857
  %1609 = fadd fast float %1608, %1565
  %1610 = fsub fast float %939, %1567
  %1611 = fmul fast float %1610, %857
  %1612 = fadd fast float %1611, %1567
  %1613 = fsub fast float %938, %1569
  %1614 = fmul fast float %1613, %857
  %1615 = fadd fast float %1614, %1569
  %1616 = fmul fast float %937, %857
  %1617 = fmul fast float %936, %857
  %1618 = fmul fast float %935, %857
  %1619 = fmul fast float %934, %857
  %1620 = fmul fast float %933, %857
  br label %1621

; <label>:1621                                    ; preds = %1535, %932
  %1622 = phi float [ %1620, %1535 ], [ %933, %932 ]
  %1623 = phi float [ %1619, %1535 ], [ %934, %932 ]
  %1624 = phi float [ %1618, %1535 ], [ %935, %932 ]
  %1625 = phi float [ %1617, %1535 ], [ %936, %932 ]
  %1626 = phi float [ %1616, %1535 ], [ %937, %932 ]
  %1627 = phi float [ %1615, %1535 ], [ %938, %932 ]
  %1628 = phi float [ %1612, %1535 ], [ %939, %932 ]
  %1629 = phi float [ %1609, %1535 ], [ %940, %932 ]
  %1630 = phi float [ %1606, %1535 ], [ %941, %932 ]
  %1631 = phi float [ %1603, %1535 ], [ %942, %932 ]
  %1632 = phi float [ %1602, %1535 ], [ %943, %932 ]
  %1633 = phi float [ %1601, %1535 ], [ %944, %932 ]
  %1634 = phi float [ %1600, %1535 ], [ %945, %932 ]
  %1635 = phi float [ %1599, %1535 ], [ %946, %932 ]
  %1636 = phi float [ %1598, %1535 ], [ %947, %932 ]
  %1637 = phi float [ %1595, %1535 ], [ %948, %932 ]
  %1638 = phi float [ %1592, %1535 ], [ %949, %932 ]
  %1639 = phi float [ %1589, %1535 ], [ %950, %932 ]
  %1640 = phi float [ %1586, %1535 ], [ %951, %932 ]
  %1641 = phi float [ %1585, %1535 ], [ %952, %932 ]
  %1642 = phi float [ %1584, %1535 ], [ %953, %932 ]
  %1643 = phi float [ %1583, %1535 ], [ %954, %932 ]
  %1644 = phi float [ %1582, %1535 ], [ %955, %932 ]
  %1645 = phi float [ %1581, %1535 ], [ %956, %932 ]
  %1646 = phi float [ %1578, %1535 ], [ %957, %932 ]
  %1647 = phi float [ %1575, %1535 ], [ %958, %932 ]
  %1648 = phi float [ %1572, %1535 ], [ %959, %932 ]
  %1649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %1650 = extractvalue %dx.types.CBufRet.f32 %1649, 2
  %1651 = fmul fast float %1650, %1650
  %1652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1653 = extractvalue %dx.types.CBufRet.f32 %1652, 0
  %1654 = extractvalue %dx.types.CBufRet.f32 %1652, 1
  %1655 = extractvalue %dx.types.CBufRet.f32 %1652, 2
  %1656 = fmul fast float %1648, 0x3FD20DD760000000
  %1657 = fmul fast float %1655, %1646
  %1658 = fmul fast float %1655, %1655
  %1659 = fmul fast float %1658, 0x3FEE471020000000
  %1660 = fadd fast float %1659, 0xBFD42F6020000000
  %1661 = fmul fast float %1660, %1642
  %1662 = fmul fast float %1653, %1645
  %1663 = fmul fast float %1654, %1647
  %1664 = fmul fast float %1655, 0x3FF17B1420000000
  %1665 = fmul fast float %1651, %1641
  %1666 = fmul fast float %1665, %1653
  %1667 = fmul fast float %1666, %1664
  %1668 = fmul fast float %1651, %1643
  %1669 = fmul fast float %1668, %1654
  %1670 = fmul fast float %1669, %1664
  %1671 = fmul fast float %1653, %1653
  %1672 = fmul fast float %1654, %1654
  %1673 = fsub fast float %1671, %1672
  %1674 = fmul fast float %1640, 0x3FE17B1420000000
  %1675 = fmul fast float %1674, %1673
  %1676 = fmul fast float %1644, 0x3FF17B1420000000
  %1677 = fmul fast float %1676, %1654
  %1678 = fmul fast float %1677, %1653
  %1679 = fadd fast float %1675, %1678
  %1680 = fadd fast float %1679, %1661
  %1681 = fmul fast float %1680, %1651
  %1682 = fsub fast float %1663, %1657
  %1683 = fadd fast float %1682, %1662
  %1684 = fmul fast float %1683, 0x3FDF454380000000
  %1685 = fmul fast float %1684, %1650
  %1686 = fsub fast float %1656, %1667
  %1687 = fsub fast float %1686, %1670
  %1688 = fadd fast float %1687, %1681
  %1689 = fadd fast float %1688, %1685
  %1690 = fmul fast float %1639, 0x3FD20DD760000000
  %1691 = fmul fast float %1655, %1637
  %1692 = fmul fast float %1660, %1633
  %1693 = fmul fast float %1653, %1636
  %1694 = fmul fast float %1654, %1638
  %1695 = fmul fast float %1651, %1632
  %1696 = fmul fast float %1695, %1653
  %1697 = fmul fast float %1696, %1664
  %1698 = fmul fast float %1651, %1634
  %1699 = fmul fast float %1698, %1654
  %1700 = fmul fast float %1699, %1664
  %1701 = fmul fast float %1631, 0x3FE17B1420000000
  %1702 = fmul fast float %1701, %1673
  %1703 = fmul fast float %1635, 0x3FF17B1420000000
  %1704 = fmul fast float %1703, %1654
  %1705 = fmul fast float %1704, %1653
  %1706 = fadd fast float %1702, %1705
  %1707 = fadd fast float %1706, %1692
  %1708 = fmul fast float %1707, %1651
  %1709 = fsub fast float %1694, %1691
  %1710 = fadd fast float %1709, %1693
  %1711 = fmul fast float %1710, 0x3FDF454380000000
  %1712 = fmul fast float %1711, %1650
  %1713 = fsub fast float %1690, %1697
  %1714 = fsub fast float %1713, %1700
  %1715 = fadd fast float %1714, %1708
  %1716 = fadd fast float %1715, %1712
  %1717 = fmul fast float %1630, 0x3FD20DD760000000
  %1718 = fmul fast float %1655, %1628
  %1719 = fmul fast float %1660, %1624
  %1720 = fmul fast float %1653, %1627
  %1721 = fmul fast float %1654, %1629
  %1722 = fmul fast float %1651, %1623
  %1723 = fmul fast float %1722, %1653
  %1724 = fmul fast float %1723, %1664
  %1725 = fmul fast float %1651, %1625
  %1726 = fmul fast float %1725, %1654
  %1727 = fmul fast float %1726, %1664
  %1728 = fmul fast float %1622, 0x3FE17B1420000000
  %1729 = fmul fast float %1728, %1673
  %1730 = fmul fast float %1626, 0x3FF17B1420000000
  %1731 = fmul fast float %1730, %1654
  %1732 = fmul fast float %1731, %1653
  %1733 = fadd fast float %1729, %1732
  %1734 = fadd fast float %1733, %1719
  %1735 = fmul fast float %1734, %1651
  %1736 = fsub fast float %1721, %1718
  %1737 = fadd fast float %1736, %1720
  %1738 = fmul fast float %1737, 0x3FDF454380000000
  %1739 = fmul fast float %1738, %1650
  %1740 = fsub fast float %1717, %1724
  %1741 = fsub fast float %1740, %1727
  %1742 = fadd fast float %1741, %1735
  %1743 = fadd fast float %1742, %1739
  %1744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1745 = extractvalue %dx.types.CBufRet.f32 %1744, 3
  %1746 = extractvalue %dx.types.CBufRet.f32 %798, 0
  %1747 = fmul fast float %1746, %1745
  %1748 = fmul fast float %1747, %1689
  %1749 = fmul fast float %1747, %1716
  %1750 = fmul fast float %1747, %1743
  %1751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1752 = extractvalue %dx.types.CBufRet.f32 %1751, 3
  %1753 = fcmp fast une float %1752, 0.000000e+00
  %1754 = extractvalue %dx.types.CBufRet.f32 %1751, 0
  %1755 = extractvalue %dx.types.CBufRet.f32 %1751, 1
  %1756 = extractvalue %dx.types.CBufRet.f32 %1751, 2
  br i1 %1753, label %1757, label %1779, !dx.controlflow.hints !77

; <label>:1757                                    ; preds = %1621
  %1758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %1759 = extractvalue %dx.types.CBufRet.f32 %1758, 0
  %1760 = extractvalue %dx.types.CBufRet.f32 %1758, 1
  %1761 = extractvalue %dx.types.CBufRet.f32 %1758, 2
  %1762 = call float @dx.op.dot3.f32(i32 55, float %1754, float %1755, float %1756, float %115, float %116, float %117)  ; Dot3(ax,ay,az,bx,by,bz)
  %1763 = fcmp fast ogt float %808, 0.000000e+00
  %1764 = select i1 %1763, float 1.000000e+00, float -1.000000e+00
  %1765 = fmul fast float %1764, 5.000000e-01
  %1766 = fmul fast float %1765, %1762
  %1767 = fmul fast float %1764, %808
  %1768 = fadd fast float %1766, 4.921875e-01
  %1769 = fadd fast float %1767, -3.125000e-02
  %1770 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %25, float %1768, float 0x3FB25F3060000000, float %1769, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1771 = extractvalue %dx.types.ResRet.f32 %1770, 0
  %1772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %1773 = extractvalue %dx.types.CBufRet.f32 %1772, 0
  %1774 = fmul fast float %1771, 0x400921FB60000000
  %1775 = fmul fast float %1774, %1773
  %1776 = fmul fast float %1775, %1759
  %1777 = fmul fast float %1775, %1760
  %1778 = fmul fast float %1775, %1761
  br label %1779

; <label>:1779                                    ; preds = %1757, %1621
  %1780 = phi float [ %1776, %1757 ], [ 0.000000e+00, %1621 ]
  %1781 = phi float [ %1777, %1757 ], [ 0.000000e+00, %1621 ]
  %1782 = phi float [ %1778, %1757 ], [ 0.000000e+00, %1621 ]
  %1783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %1784 = extractvalue %dx.types.CBufRet.f32 %1783, 0
  %1785 = fmul fast float %1784, %1754
  %1786 = fmul fast float %1784, %1755
  %1787 = fmul fast float %1784, %1756
  %1788 = fadd fast float %1785, %259
  %1789 = fadd fast float %1786, %260
  %1790 = fadd fast float %1787, %261
  %1791 = fsub fast float %1788, %273
  %1792 = fsub fast float %1789, %274
  %1793 = fmul fast float %1791, %278
  %1794 = fmul fast float %1792, %279
  %1795 = call float @dx.op.binary.f32(i32 36, float %1793, float %1794)  ; FMin(a,b)
  %1796 = fcmp fast olt float %1795, 0.000000e+00
  %1797 = call float @dx.op.binary.f32(i32 35, float %1793, float %1794)  ; FMax(a,b)
  %1798 = fcmp fast ogt float %1797, 1.000000e+00
  %1799 = or i1 %1796, %1798
  %1800 = fcmp fast olt float %1790, %287
  %1801 = or i1 %1799, %1800
  %1802 = fcmp fast ogt float %1790, %294
  %1803 = or i1 %1801, %1802
  br i1 %1803, label %1818, label %1804, !dx.controlflow.hints !47

; <label>:1804                                    ; preds = %1779
  %1805 = fsub fast float 1.000000e+00, %1794
  %1806 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %25, float %1793, float %1805, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1807 = extractvalue %dx.types.ResRet.f32 %1806, 0
  %1808 = extractvalue %dx.types.ResRet.f32 %1806, 1
  %1809 = extractvalue %dx.types.ResRet.f32 %1806, 2
  %1810 = extractvalue %dx.types.ResRet.f32 %1806, 3
  %1811 = fcmp fast oeq float %1807, 0.000000e+00
  %1812 = fcmp ule float %1790, %1809
  %1813 = fcmp uge float %1790, %1808
  %1814 = or i1 %1813, %1812
  %1815 = or i1 %1811, %1814
  %1816 = zext i1 %1815 to i32
  %1817 = xor i32 %1816, 1
  br label %1818

; <label>:1818                                    ; preds = %1804, %1779
  %1819 = phi float [ %1807, %1804 ], [ %246, %1779 ]
  %1820 = phi float [ %1808, %1804 ], [ %247, %1779 ]
  %1821 = phi float [ %1809, %1804 ], [ %248, %1779 ]
  %1822 = phi float [ %1810, %1804 ], [ %249, %1779 ]
  %1823 = phi i32 [ %1817, %1804 ], [ 0, %1779 ]
  %1824 = icmp eq i32 %1823, 0
  br i1 %385, label %1874, label %1825, !dx.controlflow.hints !51

; <label>:1825                                    ; preds = %1818
  %1826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %1827 = extractvalue %dx.types.CBufRet.f32 %1826, 0
  %1828 = extractvalue %dx.types.CBufRet.f32 %1826, 1
  %1829 = extractvalue %dx.types.CBufRet.f32 %1826, 2
  %1830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %1831 = extractvalue %dx.types.CBufRet.f32 %1830, 0
  %1832 = extractvalue %dx.types.CBufRet.f32 %1830, 1
  %1833 = extractvalue %dx.types.CBufRet.f32 %1830, 2
  %1834 = fsub fast float %1788, %1831
  %1835 = fsub fast float %1789, %1832
  %1836 = fsub fast float %1790, %1833
  %1837 = fmul fast float %1834, %1827
  %1838 = fmul fast float %1835, %1828
  %1839 = fmul fast float %1836, %1829
  %1840 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %1841 = extractvalue %dx.types.CBufRet.i32 %1840, 3
  %1842 = icmp eq i32 %1841, 0
  br i1 %1842, label %1846, label %1843, !dx.controlflow.hints !52

; <label>:1843                                    ; preds = %1825
  %1844 = call float @dx.op.unary.f32(i32 22, float %1837)  ; Frc(value)
  %1845 = call float @dx.op.unary.f32(i32 22, float %1838)  ; Frc(value)
  br label %1846

; <label>:1846                                    ; preds = %1843, %1825
  %1847 = phi float [ %1844, %1843 ], [ %1837, %1825 ]
  %1848 = phi float [ %1845, %1843 ], [ %1838, %1825 ]
  %1849 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %23, float %1847, float %1848, float %1839, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1850 = extractvalue %dx.types.ResRet.f32 %1849, 0
  %1851 = fmul fast float %1850, 2.000000e+00
  %1852 = fadd fast float %1851, -1.000000e+00
  %1853 = extractvalue %dx.types.CBufRet.f32 %1826, 3
  %1854 = fmul fast float %1852, %1853
  %1855 = fcmp fast olt float %1854, 0.000000e+00
  %1856 = fcmp fast oge float %1839, 0.000000e+00
  %1857 = fcmp fast ole float %1839, 1.000000e+00
  br i1 %1842, label %1860, label %1858, !dx.controlflow.hints !53

; <label>:1858                                    ; preds = %1846
  %1859 = and i1 %1856, %1857
  br label %1870

; <label>:1860                                    ; preds = %1846
  %1861 = fcmp fast oge float %1837, 0.000000e+00
  %1862 = fcmp fast oge float %1838, 0.000000e+00
  %1863 = and i1 %1861, %1862
  %1864 = and i1 %1856, %1863
  %1865 = fcmp fast ole float %1837, 1.000000e+00
  %1866 = fcmp fast ole float %1838, 1.000000e+00
  %1867 = and i1 %1865, %1866
  %1868 = and i1 %1857, %1867
  %1869 = and i1 %1864, %1868
  br label %1870

; <label>:1870                                    ; preds = %1860, %1858
  %1871 = phi i1 [ %1859, %1858 ], [ %1869, %1860 ]
  %1872 = and i1 %1855, %1871
  %1873 = zext i1 %1872 to i32
  br label %1874

; <label>:1874                                    ; preds = %1870, %1818
  %1875 = phi i32 [ %1873, %1870 ], [ 0, %1818 ]
  %1876 = icmp eq i32 %1875, 0
  br i1 %1876, label %2056, label %1877, !dx.controlflow.hints !54

; <label>:1877                                    ; preds = %1874
  %1878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1879 = extractvalue %dx.types.CBufRet.f32 %1878, 3
  %1880 = fmul fast float %1879, %1784
  %1881 = fcmp fast oeq float %1880, 0.000000e+00
  br i1 %1881, label %1896, label %1882, !dx.controlflow.hints !55

; <label>:1882                                    ; preds = %1877
  %1883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %1884 = extractvalue %dx.types.CBufRet.f32 %1883, 3
  %1885 = fmul fast float %1884, %1880
  %1886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %1887 = extractvalue %dx.types.CBufRet.f32 %1886, 0
  %1888 = extractvalue %dx.types.CBufRet.f32 %1886, 1
  %1889 = extractvalue %dx.types.CBufRet.f32 %1886, 2
  %1890 = fmul fast float %1887, %1885
  %1891 = fmul fast float %1888, %1885
  %1892 = fmul fast float %1889, %1885
  %1893 = call float @dx.op.unary.f32(i32 23, float %1890)  ; Log(value)
  %1894 = call float @dx.op.unary.f32(i32 23, float %1891)  ; Log(value)
  %1895 = call float @dx.op.unary.f32(i32 23, float %1892)  ; Log(value)
  br label %1896

; <label>:1896                                    ; preds = %1882, %1877
  %1897 = phi float [ %1893, %1882 ], [ 0.000000e+00, %1877 ]
  %1898 = phi float [ %1894, %1882 ], [ 0.000000e+00, %1877 ]
  %1899 = phi float [ %1895, %1882 ], [ 0.000000e+00, %1877 ]
  %1900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %1901 = extractvalue %dx.types.CBufRet.f32 %1900, 0
  %1902 = extractvalue %dx.types.CBufRet.f32 %1900, 1
  %1903 = extractvalue %dx.types.CBufRet.f32 %1900, 2
  %1904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %1905 = extractvalue %dx.types.CBufRet.f32 %1904, 0
  %1906 = extractvalue %dx.types.CBufRet.f32 %1904, 1
  %1907 = extractvalue %dx.types.CBufRet.f32 %1904, 2
  %1908 = fsub fast float %1788, %1905
  %1909 = fsub fast float %1789, %1906
  %1910 = fsub fast float %1790, %1907
  %1911 = fmul fast float %1908, %1901
  %1912 = fmul fast float %1909, %1902
  %1913 = fmul fast float %1910, %1903
  %1914 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %1915 = extractvalue %dx.types.CBufRet.i32 %1914, 0
  %1916 = extractvalue %dx.types.CBufRet.i32 %1914, 1
  %1917 = uitofp i32 %1915 to float
  %1918 = uitofp i32 %1916 to float
  %1919 = fmul fast float %1911, %1917
  %1920 = fmul fast float %1912, %1918
  %1921 = fadd fast float %1919, 5.000000e-01
  %1922 = fadd fast float %1920, 5.000000e-01
  %1923 = call float @dx.op.unary.f32(i32 22, float %1921)  ; Frc(value)
  %1924 = call float @dx.op.unary.f32(i32 22, float %1922)  ; Frc(value)
  %1925 = call float @dx.op.unary.f32(i32 27, float %1921)  ; Round_ni(value)
  %1926 = call float @dx.op.unary.f32(i32 27, float %1922)  ; Round_ni(value)
  %1927 = fadd fast float %1925, 1.000000e+00
  %1928 = fadd fast float %1926, 1.000000e+00
  %1929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %1930 = extractvalue %dx.types.CBufRet.f32 %1929, 0
  %1931 = extractvalue %dx.types.CBufRet.f32 %1929, 1
  %1932 = fmul fast float %1930, %1927
  %1933 = fmul fast float %1931, %1928
  %1934 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %24, float %1932, float %1933, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1935 = extractvalue %dx.types.ResRet.f32 %1934, 0
  %1936 = extractvalue %dx.types.ResRet.f32 %1934, 1
  %1937 = extractvalue %dx.types.ResRet.f32 %1934, 2
  %1938 = extractvalue %dx.types.ResRet.f32 %1934, 3
  %1939 = extractvalue %dx.types.CBufRet.i32 %1914, 2
  %1940 = extractvalue %dx.types.CBufRet.f32 %1929, 2
  %1941 = uitofp i32 %1939 to float
  %1942 = fadd fast float %1941, -1.000000e+00
  %1943 = fmul fast float %1942, %1935
  %1944 = fmul fast float %1942, %1936
  %1945 = fmul fast float %1942, %1937
  %1946 = fmul fast float %1942, %1938
  %1947 = fadd fast float %1943, 5.000000e-01
  %1948 = fadd fast float %1944, 5.000000e-01
  %1949 = fadd fast float %1945, 5.000000e-01
  %1950 = fadd fast float %1946, 5.000000e-01
  %1951 = fptoui float %1947 to i32
  %1952 = fptoui float %1948 to i32
  %1953 = fptoui float %1949 to i32
  %1954 = fptoui float %1950 to i32
  %1955 = uitofp i32 %1951 to float
  %1956 = uitofp i32 %1952 to float
  %1957 = uitofp i32 %1953 to float
  %1958 = uitofp i32 %1954 to float
  %1959 = fadd fast float %1955, 5.000000e-01
  %1960 = fadd fast float %1956, 5.000000e-01
  %1961 = fadd fast float %1957, 5.000000e-01
  %1962 = fadd fast float %1958, 5.000000e-01
  %1963 = fmul fast float %1959, %1940
  %1964 = fmul fast float %1960, %1940
  %1965 = fmul fast float %1961, %1940
  %1966 = fmul fast float %1962, %1940
  %1967 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %25, float %1963, float %1913, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1968 = extractvalue %dx.types.ResRet.f32 %1967, 0
  %1969 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %25, float %1964, float %1913, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1970 = extractvalue %dx.types.ResRet.f32 %1969, 0
  %1971 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %25, float %1965, float %1913, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1972 = extractvalue %dx.types.ResRet.f32 %1971, 0
  %1973 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %25, float %1966, float %1913, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1974 = extractvalue %dx.types.ResRet.f32 %1973, 0
  %1975 = fsub fast float %1972, %1974
  %1976 = fmul fast float %1975, %1923
  %1977 = fadd fast float %1976, %1974
  %1978 = fsub fast float %1970, %1968
  %1979 = fmul fast float %1978, %1923
  %1980 = fadd fast float %1979, %1968
  %1981 = fsub fast float %1980, %1977
  %1982 = fmul fast float %1981, %1924
  %1983 = fadd fast float %1982, %1977
  %1984 = fcmp fast ogt float %1983, 0.000000e+00
  br i1 %1984, label %1985, label %2053, !dx.controlflow.hints !56

; <label>:1985                                    ; preds = %1896
  %1986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %1987 = extractvalue %dx.types.CBufRet.f32 %1986, 0
  %1988 = extractvalue %dx.types.CBufRet.f32 %1986, 1
  %1989 = extractvalue %dx.types.CBufRet.f32 %1986, 2
  %1990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %1991 = extractvalue %dx.types.CBufRet.f32 %1990, 0
  %1992 = extractvalue %dx.types.CBufRet.f32 %1990, 1
  %1993 = extractvalue %dx.types.CBufRet.f32 %1990, 2
  %1994 = fmul fast float %1909, %1901
  %1995 = fmul fast float %1910, %1901
  %1996 = fadd fast float %1911, %1991
  %1997 = fadd fast float %1994, %1992
  %1998 = fadd fast float %1995, %1993
  %1999 = fmul fast float %1996, %1987
  %2000 = fmul fast float %1997, %1987
  %2001 = fmul fast float %1998, %1987
  %2002 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %22, float %1999, float %2000, float %2001, float undef, i32 0, i32 0, i32 0, float %1897)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2003 = extractvalue %dx.types.ResRet.f32 %2002, 0
  %2004 = fmul fast float %1996, %1988
  %2005 = fmul fast float %1997, %1988
  %2006 = fmul fast float %1998, %1988
  %2007 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %22, float %2004, float %2005, float %2006, float undef, i32 0, i32 0, i32 0, float %1898)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2008 = extractvalue %dx.types.ResRet.f32 %2007, 1
  %2009 = fmul fast float %1996, %1989
  %2010 = fmul fast float %1997, %1989
  %2011 = fmul fast float %1998, %1989
  %2012 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %22, float %2009, float %2010, float %2011, float undef, i32 0, i32 0, i32 0, float %1899)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2013 = extractvalue %dx.types.ResRet.f32 %2012, 2
  %2014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %2015 = extractvalue %dx.types.CBufRet.f32 %2014, 1
  %2016 = fmul fast float %2008, %2003
  %2017 = fmul fast float %2016, %2013
  %2018 = call float @dx.op.unary.f32(i32 23, float %2017)  ; Log(value)
  %2019 = fmul fast float %2018, %2015
  %2020 = call float @dx.op.unary.f32(i32 21, float %2019)  ; Exp(value)
  %2021 = extractvalue %dx.types.CBufRet.f32 %2014, 2
  %2022 = fmul fast float %1983, %1983
  %2023 = fmul fast float %2022, %2020
  %2024 = fmul fast float %2023, %2021
  %2025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %2026 = extractvalue %dx.types.CBufRet.f32 %2025, 3
  %2027 = fmul fast float %2026, %2024
  %2028 = bitcast float %2027 to i32
  %2029 = sitofp i32 %2028 to float
  %2030 = fptosi float %2029 to i32
  %2031 = bitcast i32 %2030 to float
  %2032 = fsub fast float 1.000000e+00, %2024
  %2033 = bitcast float %2032 to i32
  %2034 = sitofp i32 %2033 to float
  %2035 = fptosi float %2034 to i32
  %2036 = bitcast i32 %2035 to float
  %2037 = fadd fast float %2031, %2036
  %2038 = bitcast float %2037 to i32
  %2039 = sub nsw i32 2129859010, %2038
  %2040 = bitcast i32 %2039 to float
  %2041 = fmul fast float %2040, %2031
  %2042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2043 = extractvalue %dx.types.CBufRet.f32 %2042, 2
  %2044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %2045 = extractvalue %dx.types.CBufRet.f32 %2044, 0
  %2046 = fmul fast float %2041, %2045
  %2047 = fadd fast float %2046, 1.000000e+00
  %2048 = bitcast float %2047 to i32
  %2049 = sub nsw i32 2129859010, %2048
  %2050 = bitcast i32 %2049 to float
  %2051 = fmul fast float %2041, %2043
  %2052 = fmul fast float %2051, %2050
  br label %2053

; <label>:2053                                    ; preds = %1985, %1896
  %2054 = phi float [ %2052, %1985 ], [ %1983, %1896 ]
  %2055 = fmul fast float %2054, %1784
  br label %2056

; <label>:2056                                    ; preds = %2053, %1874
  %2057 = phi float [ %2055, %2053 ], [ 0.000000e+00, %1874 ]
  br i1 %1824, label %2183, label %2058, !dx.controlflow.hints !57

; <label>:2058                                    ; preds = %2056
  %2059 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %2060 = extractvalue %dx.types.CBufRet.i32 %2059, 0
  %2061 = icmp ne i32 %2060, 0
  %2062 = zext i1 %2061 to i32
  %2063 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %2064 = extractvalue %dx.types.CBufRet.i32 %2063, 0
  %2065 = icmp eq i32 %2064, 0
  br i1 %2065, label %2099, label %2066

; <label>:2066                                    ; preds = %2058
  br label %2067

; <label>:2067                                    ; preds = %2094, %2066
  %2068 = phi i32 [ %2095, %2094 ], [ 0, %2066 ]
  %2069 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2068, i32 0)  ; BufferLoad(srv,index,wot)
  %2070 = extractvalue %dx.types.ResRet.f32 %2069, 0
  %2071 = extractvalue %dx.types.ResRet.f32 %2069, 1
  %2072 = extractvalue %dx.types.ResRet.f32 %2069, 2
  %2073 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2068, i32 16)  ; BufferLoad(srv,index,wot)
  %2074 = extractvalue %dx.types.ResRet.f32 %2073, 0
  %2075 = extractvalue %dx.types.ResRet.f32 %2073, 1
  %2076 = extractvalue %dx.types.ResRet.f32 %2073, 2
  %2077 = fsub fast float %2070, %2074
  %2078 = fsub fast float %2071, %2075
  %2079 = fsub fast float %2072, %2076
  %2080 = fadd fast float %2074, %2070
  %2081 = fadd fast float %2075, %2071
  %2082 = fadd fast float %2076, %2072
  %2083 = fcmp fast olt float %1788, %2077
  %2084 = fcmp fast olt float %1789, %2078
  %2085 = fcmp fast olt float %1790, %2079
  %2086 = or i1 %2083, %2084
  %2087 = or i1 %2085, %2086
  %2088 = fcmp fast ogt float %1788, %2080
  %2089 = fcmp fast ogt float %1789, %2081
  %2090 = fcmp fast ogt float %1790, %2082
  %2091 = or i1 %2088, %2089
  %2092 = or i1 %2090, %2091
  %2093 = or i1 %2087, %2092
  br i1 %2093, label %2094, label %2097, !dx.controlflow.hints !58

; <label>:2094                                    ; preds = %2067
  %2095 = add nuw i32 %2068, 1
  %2096 = icmp ult i32 %2095, %2064
  br i1 %2096, label %2067, label %2097

; <label>:2097                                    ; preds = %2094, %2067
  %2098 = phi i32 [ 255, %2094 ], [ %2068, %2067 ]
  br label %2099

; <label>:2099                                    ; preds = %2097, %2058
  %2100 = phi i32 [ 255, %2058 ], [ %2098, %2097 ]
  %2101 = icmp eq i32 %2100, 255
  br i1 %2101, label %2107, label %2102, !dx.controlflow.hints !59

; <label>:2102                                    ; preds = %2099
  %2103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2100, i32 156)  ; BufferLoad(srv,index,wot)
  %2104 = extractvalue %dx.types.ResRet.i32 %2103, 0
  %2105 = icmp ne i32 %2104, 0
  %2106 = zext i1 %2105 to i32
  br label %2107

; <label>:2107                                    ; preds = %2102, %2099
  %2108 = phi i32 [ %2106, %2102 ], [ %2062, %2099 ]
  %2109 = icmp eq i32 %2108, 0
  br i1 %2109, label %2110, label %2179, !dx.controlflow.hints !60

; <label>:2110                                    ; preds = %2107
  %2111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %2112 = extractvalue %dx.types.CBufRet.f32 %2111, 3
  %2113 = extractvalue %dx.types.CBufRet.f32 %290, 0
  %2114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %2115 = extractvalue %dx.types.CBufRet.f32 %2114, 2
  %2116 = extractvalue %dx.types.CBufRet.f32 %2114, 3
  br i1 %2101, label %2127, label %2117, !dx.controlflow.hints !61

; <label>:2117                                    ; preds = %2110
  %2118 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2100, i32 60)  ; BufferLoad(srv,index,wot)
  %2119 = extractvalue %dx.types.ResRet.f32 %2118, 0
  %2120 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2100, i32 64)  ; BufferLoad(srv,index,wot)
  %2121 = extractvalue %dx.types.ResRet.f32 %2120, 0
  %2122 = extractvalue %dx.types.ResRet.f32 %2120, 1
  %2123 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2100, i32 72)  ; BufferLoad(srv,index,wot)
  %2124 = extractvalue %dx.types.ResRet.f32 %2123, 0
  %2125 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2100, i32 96)  ; BufferLoad(srv,index,wot)
  %2126 = extractvalue %dx.types.ResRet.f32 %2125, 0
  br label %2127

; <label>:2127                                    ; preds = %2117, %2110
  %2128 = phi float [ %2119, %2117 ], [ %293, %2110 ]
  %2129 = phi float [ %2124, %2117 ], [ %291, %2110 ]
  %2130 = phi float [ %2126, %2117 ], [ %2113, %2110 ]
  %2131 = phi float [ %2121, %2117 ], [ %2115, %2110 ]
  %2132 = phi float [ %2122, %2117 ], [ %2116, %2110 ]
  %2133 = call float @dx.op.binary.f32(i32 35, float %1819, float 0.000000e+00)  ; FMax(a,b)
  %2134 = call float @dx.op.binary.f32(i32 36, float %2133, float 1.000000e+00)  ; FMin(a,b)
  %2135 = call float @dx.op.unary.f32(i32 24, float %2134)  ; Sqrt(value)
  %2136 = call float @dx.op.binary.f32(i32 35, float %1822, float 0x3F847AE140000000)  ; FMax(a,b)
  %2137 = fsub fast float %1820, %1790
  %2138 = fsub fast float %1790, %1821
  %2139 = call float @dx.op.binary.f32(i32 36, float %2138, float %2137)  ; FMin(a,b)
  %2140 = fdiv fast float %2139, %2136
  %2141 = call float @dx.op.unary.f32(i32 7, float %2140)  ; Saturate(value)
  %2142 = fsub fast float %1790, %2129
  %2143 = fdiv fast float %2142, %2128
  %2144 = call float @dx.op.unary.f32(i32 7, float %2143)  ; Saturate(value)
  %2145 = fsub fast float 1.000000e+00, %2144
  %2146 = fmul float %2141, %2145
  %2147 = fmul float %2146, %2146
  %2148 = fmul fast float %2135, %2112
  %2149 = fmul fast float %2148, %2147
  %2150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %2151 = extractvalue %dx.types.CBufRet.f32 %2150, 2
  %2152 = extractvalue %dx.types.CBufRet.f32 %2150, 1
  %2153 = fsub fast float %2149, %2152
  %2154 = fsub fast float %2151, %2152
  %2155 = fdiv fast float %2153, %2154
  %2156 = call float @dx.op.unary.f32(i32 7, float %2155)  ; Saturate(value)
  %2157 = fmul fast float %2156, %2130
  %2158 = fcmp fast ogt float %2132, 0.000000e+00
  br i1 %2158, label %2159, label %2179, !dx.controlflow.hints !62

; <label>:2159                                    ; preds = %2127
  %2160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2161 = extractvalue %dx.types.CBufRet.f32 %2160, 0
  %2162 = extractvalue %dx.types.CBufRet.f32 %2160, 1
  %2163 = extractvalue %dx.types.CBufRet.f32 %2160, 2
  %2164 = fsub fast float %1788, %2161
  %2165 = fsub fast float %1789, %2162
  %2166 = fsub fast float %1790, %2163
  %2167 = fmul fast float %2164, %2164
  %2168 = fmul fast float %2165, %2165
  %2169 = fadd fast float %2167, %2168
  %2170 = fmul fast float %2166, %2166
  %2171 = fadd fast float %2169, %2170
  %2172 = call float @dx.op.unary.f32(i32 24, float %2171)  ; Sqrt(value)
  %2173 = fsub fast float %2172, %2131
  %2174 = fsub fast float %2132, %2131
  %2175 = fdiv fast float %2173, %2174
  %2176 = call float @dx.op.unary.f32(i32 7, float %2175)  ; Saturate(value)
  %2177 = fmul fast float %2176, %2176
  %2178 = fmul fast float %2177, %2157
  br label %2179

; <label>:2179                                    ; preds = %2159, %2127, %2107
  %2180 = phi float [ 0.000000e+00, %2107 ], [ %2178, %2159 ], [ %2157, %2127 ]
  %2181 = fmul fast float %2180, %1784
  %2182 = fadd fast float %2181, %2057
  br label %2183

; <label>:2183                                    ; preds = %2179, %2056
  %2184 = phi float [ %2182, %2179 ], [ %2057, %2056 ]
  %2185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %2186 = extractvalue %dx.types.CBufRet.f32 %2185, 3
  %2187 = fmul fast float %2184, 0xBFF7154760000000
  %2188 = fmul fast float %2187, %2186
  %2189 = call float @dx.op.unary.f32(i32 21, float %2188)  ; Exp(value)
  %2190 = call float @dx.op.unary.f32(i32 7, float %2189)  ; Saturate(value)
  %2191 = fmul fast float %2190, %1780
  %2192 = fmul fast float %2190, %1781
  %2193 = fmul fast float %2190, %1782
  %2194 = fadd fast float %2191, %1748
  %2195 = fadd fast float %2192, %1749
  %2196 = fadd fast float %2193, %1750
  %2197 = fsub fast float 1.000000e+00, %817
  %2198 = fmul fast float %809, %255
  %2199 = fmul fast float %2198, %2197
  %2200 = fmul fast float %2199, %2194
  %2201 = fmul fast float %810, %255
  %2202 = fmul fast float %2201, %2197
  %2203 = fmul fast float %2202, %2195
  %2204 = fmul fast float %811, %255
  %2205 = fmul fast float %2204, %2197
  %2206 = fmul fast float %2205, %2196
  %2207 = fadd fast float %2200, %256
  %2208 = fadd fast float %2203, %257
  %2209 = fadd fast float %2206, %258
  %2210 = fdiv fast float %794, %454
  %2211 = fadd fast float %454, %262
  %2212 = fmul fast float %262, %262
  %2213 = fmul fast float %2211, %2211
  %2214 = fsub fast float %2212, %2213
  %2215 = fmul fast float %2214, -5.000000e-01
  %2216 = fmul fast float %2215, %2210
  %2217 = fadd fast float %2216, %254
  %2218 = fadd fast float %794, %264
  %2219 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2220 = extractvalue %dx.types.CBufRet.i32 %2219, 0
  %2221 = icmp eq i32 %2220, 0
  br i1 %2221, label %2248, label %2222, !dx.controlflow.hints !78

; <label>:2222                                    ; preds = %2183
  %2223 = icmp ne i32 %269, 0
  %2224 = zext i1 %2223 to i32
  %2225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %2226 = extractvalue %dx.types.CBufRet.f32 %2225, 2
  %2227 = extractvalue %dx.types.CBufRet.f32 %2225, 0
  %2228 = fsub fast float %2211, %2227
  %2229 = fmul fast float %2228, %2226
  %2230 = call float @dx.op.unary.f32(i32 7, float %2229)  ; Saturate(value)
  %2231 = fadd fast float %2230, -5.000000e-01
  %2232 = fmul fast float %2231, 2.000000e+00
  %2233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %2234 = extractvalue %dx.types.CBufRet.f32 %2233, 2
  %2235 = fcmp fast olt float %2232, %2234
  br i1 %2235, label %2236, label %2248, !dx.controlflow.hints !79

; <label>:2236                                    ; preds = %2222
  %2237 = fmul fast float %2232, %2232
  %2238 = fmul fast float %2197, %255
  %2239 = fmul fast float %2232, %2238
  %2240 = fmul fast float %2237, %2238
  %2241 = fmul fast float %2239, %2237
  %2242 = fmul fast float %2237, %2237
  %2243 = fmul fast float %2242, %2238
  %2244 = fadd fast float %2239, %265
  %2245 = fadd fast float %2240, %266
  %2246 = fadd fast float %2241, %267
  %2247 = fadd fast float %2243, %268
  br label %2248

; <label>:2248                                    ; preds = %2236, %2222, %2183
  %2249 = phi float [ %265, %2183 ], [ %2244, %2236 ], [ %265, %2222 ]
  %2250 = phi float [ %266, %2183 ], [ %2245, %2236 ], [ %266, %2222 ]
  %2251 = phi float [ %267, %2183 ], [ %2246, %2236 ], [ %267, %2222 ]
  %2252 = phi float [ %268, %2183 ], [ %2247, %2236 ], [ %268, %2222 ]
  %2253 = phi i32 [ %269, %2183 ], [ 1, %2236 ], [ %2224, %2222 ]
  %2254 = fmul fast float %817, %255
  br label %2255

; <label>:2255                                    ; preds = %2248, %812
  %2256 = phi float [ %813, %812 ], [ %2211, %2248 ]
  %2257 = phi float [ %246, %812 ], [ %1819, %2248 ]
  %2258 = phi float [ %247, %812 ], [ %1820, %2248 ]
  %2259 = phi float [ %248, %812 ], [ %1821, %2248 ]
  %2260 = phi float [ %249, %812 ], [ %1822, %2248 ]
  %2261 = phi float [ %254, %812 ], [ %2217, %2248 ]
  %2262 = phi float [ %255, %812 ], [ %2254, %2248 ]
  %2263 = phi float [ %256, %812 ], [ %2207, %2248 ]
  %2264 = phi float [ %257, %812 ], [ %2208, %2248 ]
  %2265 = phi float [ %258, %812 ], [ %2209, %2248 ]
  %2266 = phi float [ %264, %812 ], [ %2218, %2248 ]
  %2267 = phi float [ %265, %812 ], [ %2249, %2248 ]
  %2268 = phi float [ %266, %812 ], [ %2250, %2248 ]
  %2269 = phi float [ %267, %812 ], [ %2251, %2248 ]
  %2270 = phi float [ %268, %812 ], [ %2252, %2248 ]
  %2271 = phi i32 [ %269, %812 ], [ %2253, %2248 ]
  %2272 = fmul fast float %454, %115
  %2273 = fmul fast float %454, %116
  %2274 = fmul fast float %454, %117
  %2275 = fadd fast float %2272, %259
  %2276 = fadd fast float %2273, %260
  %2277 = fadd fast float %2274, %261
  %2278 = fcmp fast olt float %2256, %225
  %2279 = extractvalue %dx.types.CBufRet.f32 %798, 2
  %2280 = fcmp fast olt float %2279, %2262
  %2281 = and i1 %2278, %2280
  br i1 %2281, label %245, label %2282

; <label>:2282                                    ; preds = %2255
  br label %2283

; <label>:2283                                    ; preds = %2282, %197
  %2284 = phi float [ 0.000000e+00, %197 ], [ %2261, %2282 ]
  %2285 = phi float [ 1.000000e+00, %197 ], [ %2262, %2282 ]
  %2286 = phi float [ 0.000000e+00, %197 ], [ %2263, %2282 ]
  %2287 = phi float [ 0.000000e+00, %197 ], [ %2264, %2282 ]
  %2288 = phi float [ 0.000000e+00, %197 ], [ %2265, %2282 ]
  %2289 = phi float [ 0.000000e+00, %197 ], [ %2266, %2282 ]
  %2290 = phi float [ 0.000000e+00, %197 ], [ %2267, %2282 ]
  %2291 = phi float [ 0.000000e+00, %197 ], [ %2268, %2282 ]
  %2292 = phi float [ 0.000000e+00, %197 ], [ %2269, %2282 ]
  %2293 = phi float [ 0.000000e+00, %197 ], [ %2270, %2282 ]
  %2294 = phi i32 [ 0, %197 ], [ %2271, %2282 ]
  %2295 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2296 = extractvalue %dx.types.CBufRet.i32 %2295, 0
  %2297 = icmp eq i32 %2296, 0
  br i1 %2297, label %2339, label %2298, !dx.controlflow.hints !80

; <label>:2298                                    ; preds = %2283
  %2299 = icmp eq i32 %2294, 0
  br i1 %2299, label %2338, label %2300, !dx.controlflow.hints !81

; <label>:2300                                    ; preds = %2298
  %2301 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %2302 = extractvalue %dx.types.CBufRet.i32 %2301, 2
  %2303 = icmp eq i32 %2302, 0
  br i1 %2303, label %2310, label %2304, !dx.controlflow.hints !82

; <label>:2304                                    ; preds = %2300
  %2305 = fsub fast float 1.000000e+00, %2285
  %2306 = fdiv fast float %2290, %2305
  %2307 = fdiv fast float %2291, %2305
  %2308 = fdiv fast float %2292, %2305
  %2309 = fdiv fast float %2293, %2305
  br label %2315

; <label>:2310                                    ; preds = %2300
  %2311 = fadd fast float %2290, %2285
  %2312 = fadd fast float %2291, %2285
  %2313 = fadd fast float %2292, %2285
  %2314 = fadd fast float %2293, %2285
  br label %2315

; <label>:2315                                    ; preds = %2310, %2304
  %2316 = phi float [ %2306, %2304 ], [ %2311, %2310 ]
  %2317 = phi float [ %2307, %2304 ], [ %2312, %2310 ]
  %2318 = phi float [ %2308, %2304 ], [ %2313, %2310 ]
  %2319 = phi float [ %2309, %2304 ], [ %2314, %2310 ]
  %2320 = call float @dx.op.binary.f32(i32 35, float %2316, float -1.000000e+00)  ; FMax(a,b)
  %2321 = call float @dx.op.binary.f32(i32 35, float %2317, float -1.000000e+00)  ; FMax(a,b)
  %2322 = call float @dx.op.binary.f32(i32 35, float %2318, float -1.000000e+00)  ; FMax(a,b)
  %2323 = call float @dx.op.binary.f32(i32 35, float %2319, float -1.000000e+00)  ; FMax(a,b)
  %2324 = call float @dx.op.binary.f32(i32 36, float %2320, float 1.000000e+00)  ; FMin(a,b)
  %2325 = call float @dx.op.binary.f32(i32 36, float %2321, float 1.000000e+00)  ; FMin(a,b)
  %2326 = call float @dx.op.binary.f32(i32 36, float %2322, float 1.000000e+00)  ; FMin(a,b)
  %2327 = call float @dx.op.binary.f32(i32 36, float %2323, float 1.000000e+00)  ; FMin(a,b)
  %2328 = fmul fast float %2324, 1.500000e+00
  %2329 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %2326, float %2328)  ; FMad(a,b,c)
  %2330 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %2325, float 0.000000e+00)  ; FMad(a,b,c)
  %2331 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %2327, float %2330)  ; FMad(a,b,c)
  %2332 = fmul fast float %2324, 0x3FEBB67AE0000000
  %2333 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %2326, float %2332)  ; FMad(a,b,c)
  %2334 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %2325, float 0.000000e+00)  ; FMad(a,b,c)
  %2335 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %2327, float %2334)  ; FMad(a,b,c)
  %2336 = fadd fast float %2329, 5.000000e-01
  %2337 = fadd fast float %2333, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %29, i32 %30, i32 0, float %2336, float %2331, float %2337, float %2335, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2339

; <label>:2338                                    ; preds = %2298
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %29, i32 %30, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2339

; <label>:2339                                    ; preds = %2338, %2315, %2283
  %2340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %2341 = extractvalue %dx.types.CBufRet.f32 %2340, 2
  %2342 = fsub fast float %2285, %2341
  %2343 = fdiv fast float %2342, %2341
  %2344 = call float @dx.op.unary.f32(i32 7, float %2343)  ; Saturate(value)
  %2345 = fmul fast float %2344, 2.000000e+00
  %2346 = fsub fast float 3.000000e+00, %2345
  %2347 = fmul fast float %2344, %2344
  %2348 = fmul fast float %2347, %2285
  %2349 = fmul fast float %2348, %2346
  %2350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %2351 = extractvalue %dx.types.CBufRet.f32 %2350, 0
  %2352 = extractvalue %dx.types.CBufRet.f32 %2350, 1
  %2353 = extractvalue %dx.types.CBufRet.f32 %2350, 2
  %2354 = call float @dx.op.dot3.f32(i32 55, float %115, float %116, float %117, float %2351, float %2352, float %2353)  ; Dot3(ax,ay,az,bx,by,bz)
  %2355 = fmul fast float %2354, %2284
  %2356 = fcmp fast ogt float %2289, 0.000000e+00
  %2357 = fdiv fast float 1.000000e+00, %2289
  %2358 = fmul fast float %2355, %2357
  %2359 = select i1 %2356, float %2358, float %126
  %2360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %2361 = extractvalue %dx.types.CBufRet.f32 %2360, 0
  %2362 = extractvalue %dx.types.CBufRet.f32 %2360, 1
  %2363 = extractvalue %dx.types.CBufRet.f32 %2360, 2
  %2364 = fmul fast float %2361, %79
  %2365 = fmul fast float %2362, %79
  %2366 = fmul fast float %2363, %79
  %2367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %2368 = extractvalue %dx.types.CBufRet.f32 %2367, 0
  %2369 = extractvalue %dx.types.CBufRet.f32 %2367, 1
  %2370 = extractvalue %dx.types.CBufRet.f32 %2367, 2
  %2371 = fmul fast float %2368, %80
  %2372 = fmul fast float %2369, %80
  %2373 = fmul fast float %2370, %80
  %2374 = fadd fast float %2371, %2364
  %2375 = fadd fast float %2372, %2365
  %2376 = fadd fast float %2373, %2366
  %2377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %2378 = extractvalue %dx.types.CBufRet.f32 %2377, 0
  %2379 = extractvalue %dx.types.CBufRet.f32 %2377, 1
  %2380 = extractvalue %dx.types.CBufRet.f32 %2377, 2
  %2381 = fadd fast float %2374, %2378
  %2382 = fadd fast float %2375, %2379
  %2383 = fadd fast float %2376, %2380
  %2384 = fmul fast float %2381, %2359
  %2385 = fmul fast float %2382, %2359
  %2386 = fmul fast float %2383, %2359
  %2387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %2388 = extractvalue %dx.types.CBufRet.f32 %2387, 0
  %2389 = extractvalue %dx.types.CBufRet.f32 %2387, 1
  %2390 = extractvalue %dx.types.CBufRet.f32 %2387, 2
  %2391 = extractvalue %dx.types.CBufRet.f32 %2387, 3
  %2392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %2393 = extractvalue %dx.types.CBufRet.f32 %2392, 0
  %2394 = extractvalue %dx.types.CBufRet.f32 %2392, 1
  %2395 = extractvalue %dx.types.CBufRet.f32 %2392, 2
  %2396 = extractvalue %dx.types.CBufRet.f32 %2392, 3
  %2397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %2398 = extractvalue %dx.types.CBufRet.f32 %2397, 0
  %2399 = extractvalue %dx.types.CBufRet.f32 %2397, 1
  %2400 = extractvalue %dx.types.CBufRet.f32 %2397, 2
  %2401 = extractvalue %dx.types.CBufRet.f32 %2397, 3
  %2402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %2403 = extractvalue %dx.types.CBufRet.f32 %2402, 0
  %2404 = extractvalue %dx.types.CBufRet.f32 %2402, 1
  %2405 = extractvalue %dx.types.CBufRet.f32 %2402, 2
  %2406 = extractvalue %dx.types.CBufRet.f32 %2402, 3
  %2407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %2408 = extractvalue %dx.types.CBufRet.f32 %2407, 3
  %2409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %2410 = extractvalue %dx.types.CBufRet.f32 %2409, 3
  %2411 = extractvalue %dx.types.CBufRet.f32 %2409, 0
  %2412 = extractvalue %dx.types.CBufRet.f32 %2409, 1
  %2413 = extractvalue %dx.types.CBufRet.f32 %2409, 2
  %2414 = fcmp fast olt float %2413, -5.000000e-01
  %2415 = call float @dx.op.dot3.f32(i32 55, float %2384, float %2385, float %2386, float %2384, float %2385, float %2386)  ; Dot3(ax,ay,az,bx,by,bz)
  %2416 = call float @dx.op.unary.f32(i32 25, float %2415)  ; Rsqrt(value)
  %2417 = fmul fast float %2416, %2415
  %2418 = fmul fast float %2416, %2384
  %2419 = fmul fast float %2416, %2385
  %2420 = fmul fast float %2416, %2386
  %2421 = fadd fast float %2417, %2391
  %2422 = call float @dx.op.dot3.f32(i32 55, float %2418, float %2419, float %2420, float %2388, float %2389, float %2390)  ; Dot3(ax,ay,az,bx,by,bz)
  %2423 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2424 = extractvalue %dx.types.CBufRet.i32 %2423, 1
  %2425 = and i32 %2424, 1
  %2426 = icmp ne i32 %2425, 0
  %2427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %2428 = extractvalue %dx.types.CBufRet.f32 %2427, 2
  %2429 = fcmp fast ogt float %2428, 0.000000e+00
  %2430 = and i1 %2426, %2429
  br i1 %2430, label %2431, label %2837, !dx.controlflow.hints !83

; <label>:2431                                    ; preds = %2339
  %2432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %2433 = extractvalue %dx.types.CBufRet.f32 %2432, 3
  %2434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2435 = extractvalue %dx.types.CBufRet.f32 %2434, 2
  %2436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2437 = extractvalue %dx.types.CBufRet.f32 %2436, 2
  %2438 = fsub fast float %2435, %2437
  %2439 = and i32 %2424, 2
  %2440 = extractvalue %dx.types.CBufRet.i32 %2423, 0
  %2441 = call i32 @dx.op.binary.i32(i32 40, i32 %2440, i32 3)  ; UMin(a,b)
  %2442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %2443 = extractvalue %dx.types.CBufRet.f32 %2442, 0
  %2444 = extractvalue %dx.types.CBufRet.f32 %2442, 1
  %2445 = extractvalue %dx.types.CBufRet.f32 %2436, 0
  %2446 = extractvalue %dx.types.CBufRet.f32 %2436, 1
  %2447 = fsub fast float %2443, %2445
  %2448 = fsub fast float %2444, %2446
  %2449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %2450 = extractvalue %dx.types.CBufRet.f32 %2449, 0
  %2451 = fcmp fast ogt float %2450, 0.000000e+00
  %2452 = fsub fast float -0.000000e+00, %2447
  %2453 = fsub fast float -0.000000e+00, %2448
  %2454 = call float @dx.op.dot2.f32(i32 54, float %2418, float %2419, float %2418, float %2419)  ; Dot2(ax,ay,bx,by)
  %2455 = call float @dx.op.dot2.f32(i32 54, float %2418, float %2419, float %2452, float %2453)  ; Dot2(ax,ay,bx,by)
  %2456 = fmul fast float %2455, 2.000000e+00
  %2457 = call float @dx.op.dot2.f32(i32 54, float %2452, float %2453, float %2452, float %2453)  ; Dot2(ax,ay,bx,by)
  %2458 = fmul fast float %2450, %2450
  %2459 = fsub fast float %2457, %2458
  %2460 = fmul fast float %2456, %2456
  %2461 = fmul fast float %2454, 4.000000e+00
  %2462 = fmul fast float %2461, %2459
  %2463 = fsub fast float %2460, %2462
  %2464 = fcmp fast ogt float %2463, 0.000000e+00
  br i1 %2464, label %2465, label %2480, !dx.controlflow.hints !84

; <label>:2465                                    ; preds = %2431
  %2466 = fcmp fast ogt float %2456, 0.000000e+00
  %2467 = call float @dx.op.unary.f32(i32 24, float %2463)  ; Sqrt(value)
  %2468 = fsub fast float -0.000000e+00, %2467
  %2469 = select i1 %2466, float %2467, float %2468
  %2470 = fadd fast float %2469, %2456
  %2471 = fmul float %2470, -5.000000e-01
  %2472 = fdiv fast float %2471, %2454
  %2473 = call float @dx.op.binary.f32(i32 35, float %2472, float 0.000000e+00)  ; FMax(a,b)
  %2474 = call float @dx.op.binary.f32(i32 36, float %2417, float %2473)  ; FMin(a,b)
  %2475 = fdiv fast float %2459, %2471
  %2476 = call float @dx.op.binary.f32(i32 35, float %2475, float 0.000000e+00)  ; FMax(a,b)
  %2477 = call float @dx.op.binary.f32(i32 36, float %2417, float %2476)  ; FMin(a,b)
  %2478 = call float @dx.op.binary.f32(i32 36, float %2474, float %2477)  ; FMin(a,b)
  %2479 = call float @dx.op.binary.f32(i32 35, float %2474, float %2477)  ; FMax(a,b)
  br label %2480

; <label>:2480                                    ; preds = %2465, %2431
  %2481 = phi float [ %2479, %2465 ], [ -1.000000e+00, %2431 ]
  %2482 = phi float [ %2478, %2465 ], [ -1.000000e+00, %2431 ]
  %2483 = phi i1 [ true, %2465 ], [ false, %2431 ]
  %2484 = and i1 %2451, %2483
  br i1 %2484, label %2485, label %2487, !dx.controlflow.hints !85

; <label>:2485                                    ; preds = %2480
  %2486 = fcmp fast oeq float %2482, %2481
  br i1 %2486, label %2790, label %2488, !dx.controlflow.hints !86

; <label>:2487                                    ; preds = %2480
  br i1 %2451, label %2790, label %2488, !dx.controlflow.hints !87

; <label>:2488                                    ; preds = %2487, %2485
  %2489 = phi float [ %2417, %2487 ], [ %2481, %2485 ]
  %2490 = phi float [ 0.000000e+00, %2487 ], [ %2482, %2485 ]
  %2491 = icmp ne i32 %2439, 0
  %2492 = fmul fast float %2489, %2420
  %2493 = fadd fast float %2492, %2433
  %2494 = fmul fast float %2493, %2489
  %2495 = select i1 %2491, float 0.000000e+00, float %2494
  %2496 = fcmp fast oeq float %2420, 0.000000e+00
  %2497 = fdiv fast float %2438, %2420
  %2498 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2497)  ; FMax(a,b)
  %2499 = select i1 %2496, float %2489, float %2498
  %2500 = call float @dx.op.binary.f32(i32 36, float %2489, float %2499)  ; FMin(a,b)
  %2501 = fcmp fast ogt float %2420, 0.000000e+00
  %2502 = fcmp fast olt float %2438, 0.000000e+00
  br i1 %2501, label %2503, label %2560, !dx.controlflow.hints !88

; <label>:2503                                    ; preds = %2488
  %2504 = icmp eq i32 %2439, 0
  br i1 %2502, label %2505, label %2549, !dx.controlflow.hints !89

; <label>:2505                                    ; preds = %2503
  %2506 = select i1 %2504, float %2489, float 0.000000e+00
  %2507 = fsub fast float -0.000000e+00, %2506
  %2508 = call float @dx.op.unary.f32(i32 6, float %2507)  ; FAbs(value)
  %2509 = fmul fast float %2506, %2420
  %2510 = fadd fast float %2509, %2433
  %2511 = fmul fast float %2508, %2510
  %2512 = fsub fast float %2495, %2511
  %2513 = fsub fast float %2489, %2508
  %2514 = select i1 %2504, float %2513, float 0.000000e+00
  %2515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2516 = extractvalue %dx.types.CBufRet.f32 %2515, 0
  %2517 = extractvalue %dx.types.CBufRet.f32 %2515, 1
  %2518 = extractvalue %dx.types.CBufRet.f32 %2515, 2
  %2519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2520 = extractvalue %dx.types.CBufRet.f32 %2519, 0
  %2521 = extractvalue %dx.types.CBufRet.f32 %2519, 1
  %2522 = extractvalue %dx.types.CBufRet.f32 %2519, 2
  %2523 = extractvalue %dx.types.CBufRet.f32 %2519, 3
  %2524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2525 = extractvalue %dx.types.CBufRet.f32 %2524, 3
  %2526 = call float @dx.op.binary.f32(i32 36, float %2512, float %2525)  ; FMin(a,b)
  %2527 = fmul fast float %2523, %2514
  %2528 = call float @dx.op.unary.f32(i32 7, float %2527)  ; Saturate(value)
  %2529 = fsub fast float %2520, %2516
  %2530 = fsub fast float %2521, %2517
  %2531 = fsub fast float %2522, %2518
  %2532 = fmul fast float %2528, %2529
  %2533 = fmul fast float %2528, %2530
  %2534 = fmul fast float %2528, %2531
  %2535 = fadd fast float %2532, %2516
  %2536 = fadd fast float %2533, %2517
  %2537 = fadd fast float %2534, %2518
  %2538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2539 = extractvalue %dx.types.CBufRet.f32 %2538, 0
  %2540 = extractvalue %dx.types.CBufRet.f32 %2538, 1
  %2541 = fadd fast float %2540, %2539
  %2542 = call float @dx.op.unary.f32(i32 7, float %2541)  ; Saturate(value)
  %2543 = extractvalue %dx.types.CBufRet.f32 %2538, 2
  %2544 = extractvalue %dx.types.CBufRet.f32 %2538, 3
  %2545 = fadd fast float %2544, %2543
  %2546 = call float @dx.op.unary.f32(i32 7, float %2545)  ; Saturate(value)
  %2547 = fmul fast float %2542, %2526
  %2548 = fmul fast float %2547, %2546
  br label %2790

; <label>:2549                                    ; preds = %2503
  br i1 %2504, label %2550, label %2571, !dx.controlflow.hints !90

; <label>:2550                                    ; preds = %2549
  %2551 = call float @dx.op.binary.f32(i32 36, float %2500, float %2490)  ; FMin(a,b)
  %2552 = fsub fast float %2500, %2551
  %2553 = fsub fast float %2552, %2489
  %2554 = call float @dx.op.unary.f32(i32 6, float %2553)  ; FAbs(value)
  %2555 = fadd fast float %2552, %2489
  %2556 = fmul fast float %2555, %2420
  %2557 = fadd fast float %2556, %2433
  %2558 = fmul fast float %2557, %2554
  %2559 = fsub fast float %2495, %2558
  br label %2571

; <label>:2560                                    ; preds = %2488
  br i1 %2502, label %2561, label %2571, !dx.controlflow.hints !91

; <label>:2561                                    ; preds = %2560
  %2562 = call float @dx.op.binary.f32(i32 35, float %2490, float %2500)  ; FMax(a,b)
  %2563 = icmp eq i32 %2439, 0
  %2564 = select i1 %2563, float %2500, float 0.000000e+00
  %2565 = fsub fast float -0.000000e+00, %2564
  %2566 = call float @dx.op.unary.f32(i32 6, float %2565)  ; FAbs(value)
  %2567 = fmul fast float %2564, %2420
  %2568 = fadd fast float %2567, %2433
  %2569 = fmul fast float %2566, %2568
  %2570 = fsub fast float %2495, %2569
  br label %2571

; <label>:2571                                    ; preds = %2561, %2560, %2550, %2549
  %2572 = phi float [ %2490, %2549 ], [ %2490, %2550 ], [ %2562, %2561 ], [ %2490, %2560 ]
  %2573 = phi float [ 0.000000e+00, %2549 ], [ %2554, %2550 ], [ %2566, %2561 ], [ 0.000000e+00, %2560 ]
  %2574 = phi float [ %2495, %2549 ], [ %2559, %2550 ], [ %2570, %2561 ], [ %2495, %2560 ]
  %2575 = phi float [ %2500, %2549 ], [ %2500, %2550 ], [ %2489, %2561 ], [ %2489, %2560 ]
  %2576 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 0
  store float -1.000000e+00, float* %2576, align 4, !tbaa !92, !noalias !96
  %2577 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 1
  store float -1.000000e+00, float* %2577, align 4, !tbaa !92, !noalias !96
  %2578 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 2
  store float -1.000000e+00, float* %2578, align 4, !tbaa !92, !noalias !96
  %2579 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 0
  store float -1.000000e+00, float* %2579, align 4, !tbaa !92, !noalias !96
  %2580 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 1
  store float -1.000000e+00, float* %2580, align 4, !tbaa !92, !noalias !96
  %2581 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 2
  store float -1.000000e+00, float* %2581, align 4, !tbaa !92, !noalias !96
  %2582 = icmp sgt i32 %2441, 0
  br i1 %2582, label %2583, label %2644

; <label>:2583                                    ; preds = %2571
  br label %2584

; <label>:2584                                    ; preds = %2633, %2583
  %2585 = phi i32 [ %2634, %2633 ], [ 0, %2583 ]
  %2586 = phi i32 [ %2635, %2633 ], [ 0, %2583 ]
  %2587 = add nuw i32 %2586, 171
  %2588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 %2587)  ; CBufferLoadLegacy(handle,regIndex)
  %2589 = extractvalue %dx.types.CBufRet.f32 %2588, 0
  %2590 = extractvalue %dx.types.CBufRet.f32 %2588, 1
  %2591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2592 = extractvalue %dx.types.CBufRet.f32 %2591, 0
  %2593 = extractvalue %dx.types.CBufRet.f32 %2591, 1
  %2594 = fsub fast float %2589, %2592
  %2595 = fsub fast float %2590, %2593
  %2596 = extractvalue %dx.types.CBufRet.f32 %2588, 2
  %2597 = fsub fast float -0.000000e+00, %2594
  %2598 = fsub fast float -0.000000e+00, %2595
  %2599 = call float @dx.op.dot2.f32(i32 54, float %2418, float %2419, float %2597, float %2598)  ; Dot2(ax,ay,bx,by)
  %2600 = fmul fast float %2599, 2.000000e+00
  %2601 = call float @dx.op.dot2.f32(i32 54, float %2597, float %2598, float %2597, float %2598)  ; Dot2(ax,ay,bx,by)
  %2602 = fmul fast float %2596, %2596
  %2603 = fsub fast float %2601, %2602
  %2604 = fmul fast float %2600, %2600
  %2605 = fmul fast float %2461, %2603
  %2606 = fsub fast float %2604, %2605
  %2607 = fcmp fast ogt float %2606, 0.000000e+00
  br i1 %2607, label %2608, label %2623, !dx.controlflow.hints !84

; <label>:2608                                    ; preds = %2584
  %2609 = fcmp fast ogt float %2600, 0.000000e+00
  %2610 = call float @dx.op.unary.f32(i32 24, float %2606)  ; Sqrt(value)
  %2611 = fsub fast float -0.000000e+00, %2610
  %2612 = select i1 %2609, float %2610, float %2611
  %2613 = fadd fast float %2612, %2600
  %2614 = fmul float %2613, -5.000000e-01
  %2615 = fdiv fast float %2614, %2454
  %2616 = call float @dx.op.binary.f32(i32 35, float %2615, float 0.000000e+00)  ; FMax(a,b)
  %2617 = call float @dx.op.binary.f32(i32 36, float %2489, float %2616)  ; FMin(a,b)
  %2618 = fdiv fast float %2603, %2614
  %2619 = call float @dx.op.binary.f32(i32 35, float %2618, float 0.000000e+00)  ; FMax(a,b)
  %2620 = call float @dx.op.binary.f32(i32 36, float %2489, float %2619)  ; FMin(a,b)
  %2621 = call float @dx.op.binary.f32(i32 36, float %2617, float %2620)  ; FMin(a,b)
  %2622 = call float @dx.op.binary.f32(i32 35, float %2617, float %2620)  ; FMax(a,b)
  br label %2623

; <label>:2623                                    ; preds = %2608, %2584
  %2624 = phi float [ %2622, %2608 ], [ -1.000000e+00, %2584 ]
  %2625 = phi float [ %2621, %2608 ], [ -1.000000e+00, %2584 ]
  %2626 = phi i1 [ true, %2608 ], [ false, %2584 ]
  br i1 %2626, label %2627, label %2633, !dx.controlflow.hints !107

; <label>:2627                                    ; preds = %2623
  %2628 = call float @dx.op.binary.f32(i32 35, float %2572, float %2625)  ; FMax(a,b)
  %2629 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 %2586
  store float %2628, float* %2629, align 4, !tbaa !92, !noalias !96
  %2630 = call float @dx.op.binary.f32(i32 35, float %2572, float %2624)  ; FMax(a,b)
  %2631 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 %2586
  store float %2630, float* %2631, align 4, !tbaa !92, !noalias !96
  %2632 = add nsw i32 %2585, 1
  br label %2633

; <label>:2633                                    ; preds = %2627, %2623
  %2634 = phi i32 [ %2632, %2627 ], [ %2585, %2623 ]
  %2635 = add nuw nsw i32 %2586, 1
  %2636 = icmp eq i32 %2635, %2441
  br i1 %2636, label %2637, label %2584

; <label>:2637                                    ; preds = %2633
  %2638 = load float, float* %2578, align 4, !tbaa !92, !alias.scope !108, !noalias !111
  %2639 = load float, float* %2577, align 4, !tbaa !92, !alias.scope !114, !noalias !115
  %2640 = load float, float* %2576, align 4, !tbaa !92, !alias.scope !116, !noalias !117
  %2641 = load float, float* %2581, align 4, !tbaa !92, !alias.scope !118, !noalias !121
  %2642 = load float, float* %2580, align 4, !tbaa !92, !alias.scope !124, !noalias !125
  %2643 = load float, float* %2579, align 4, !tbaa !92, !alias.scope !126, !noalias !127
  br label %2644

; <label>:2644                                    ; preds = %2637, %2571
  %2645 = phi float [ -1.000000e+00, %2571 ], [ %2643, %2637 ]
  %2646 = phi float [ -1.000000e+00, %2571 ], [ %2642, %2637 ]
  %2647 = phi float [ -1.000000e+00, %2571 ], [ %2641, %2637 ]
  %2648 = phi float [ -1.000000e+00, %2571 ], [ %2640, %2637 ]
  %2649 = phi float [ -1.000000e+00, %2571 ], [ %2639, %2637 ]
  %2650 = phi float [ -1.000000e+00, %2571 ], [ %2638, %2637 ]
  %2651 = phi i32 [ 0, %2571 ], [ %2634, %2637 ]
  %2652 = call float @dx.op.binary.f32(i32 36, float %2649, float %2650)  ; FMin(a,b)
  %2653 = call float @dx.op.binary.f32(i32 36, float %2648, float %2652)  ; FMin(a,b)
  %2654 = call float @dx.op.binary.f32(i32 35, float %2648, float %2649)  ; FMax(a,b)
  %2655 = call float @dx.op.binary.f32(i32 36, float %2654, float %2650)  ; FMin(a,b)
  %2656 = call float @dx.op.binary.f32(i32 36, float %2648, float %2649)  ; FMin(a,b)
  %2657 = call float @dx.op.binary.f32(i32 35, float %2656, float %2655)  ; FMax(a,b)
  %2658 = call float @dx.op.binary.f32(i32 35, float %2649, float %2650)  ; FMax(a,b)
  %2659 = call float @dx.op.binary.f32(i32 35, float %2648, float %2658)  ; FMax(a,b)
  store float %2653, float* %2576, align 4, !tbaa !92, !alias.scope !116, !noalias !117
  store float %2657, float* %2577, align 4, !tbaa !92, !alias.scope !114, !noalias !115
  store float %2659, float* %2578, align 4, !tbaa !92, !alias.scope !108, !noalias !111
  %2660 = call float @dx.op.binary.f32(i32 36, float %2646, float %2647)  ; FMin(a,b)
  %2661 = call float @dx.op.binary.f32(i32 36, float %2645, float %2660)  ; FMin(a,b)
  %2662 = call float @dx.op.binary.f32(i32 35, float %2645, float %2646)  ; FMax(a,b)
  %2663 = call float @dx.op.binary.f32(i32 36, float %2662, float %2647)  ; FMin(a,b)
  %2664 = call float @dx.op.binary.f32(i32 36, float %2645, float %2646)  ; FMin(a,b)
  %2665 = call float @dx.op.binary.f32(i32 35, float %2664, float %2663)  ; FMax(a,b)
  %2666 = call float @dx.op.binary.f32(i32 35, float %2646, float %2647)  ; FMax(a,b)
  %2667 = call float @dx.op.binary.f32(i32 35, float %2645, float %2666)  ; FMax(a,b)
  store float %2661, float* %2579, align 4, !tbaa !92, !alias.scope !126, !noalias !127
  store float %2665, float* %2580, align 4, !tbaa !92, !alias.scope !124, !noalias !125
  store float %2667, float* %2581, align 4, !tbaa !92, !alias.scope !118, !noalias !121
  %2668 = sub nsw i32 3, %2651
  %2669 = icmp sgt i32 %2668, 2
  br i1 %2669, label %2670, label %2708, !dx.controlflow.hints !128

; <label>:2670                                    ; preds = %2644
  %2671 = icmp eq i32 %2439, 0
  %2672 = fsub fast float %2489, %2573
  %2673 = select i1 %2671, float %2672, float %2573
  %2674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2675 = extractvalue %dx.types.CBufRet.f32 %2674, 0
  %2676 = extractvalue %dx.types.CBufRet.f32 %2674, 1
  %2677 = extractvalue %dx.types.CBufRet.f32 %2674, 2
  %2678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2679 = extractvalue %dx.types.CBufRet.f32 %2678, 0
  %2680 = extractvalue %dx.types.CBufRet.f32 %2678, 1
  %2681 = extractvalue %dx.types.CBufRet.f32 %2678, 2
  %2682 = extractvalue %dx.types.CBufRet.f32 %2678, 3
  %2683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2684 = extractvalue %dx.types.CBufRet.f32 %2683, 3
  %2685 = call float @dx.op.binary.f32(i32 36, float %2574, float %2684)  ; FMin(a,b)
  %2686 = fmul fast float %2682, %2673
  %2687 = call float @dx.op.unary.f32(i32 7, float %2686)  ; Saturate(value)
  %2688 = fsub fast float %2679, %2675
  %2689 = fsub fast float %2680, %2676
  %2690 = fsub fast float %2681, %2677
  %2691 = fmul fast float %2687, %2688
  %2692 = fmul fast float %2687, %2689
  %2693 = fmul fast float %2687, %2690
  %2694 = fadd fast float %2691, %2675
  %2695 = fadd fast float %2692, %2676
  %2696 = fadd fast float %2693, %2677
  %2697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2698 = extractvalue %dx.types.CBufRet.f32 %2697, 0
  %2699 = extractvalue %dx.types.CBufRet.f32 %2697, 1
  %2700 = fadd fast float %2699, %2698
  %2701 = call float @dx.op.unary.f32(i32 7, float %2700)  ; Saturate(value)
  %2702 = extractvalue %dx.types.CBufRet.f32 %2697, 2
  %2703 = extractvalue %dx.types.CBufRet.f32 %2697, 3
  %2704 = fadd fast float %2703, %2702
  %2705 = call float @dx.op.unary.f32(i32 7, float %2704)  ; Saturate(value)
  %2706 = fmul fast float %2701, %2685
  %2707 = fmul fast float %2706, %2705
  br label %2790

; <label>:2708                                    ; preds = %2644
  %2709 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 %2668
  %2710 = load float, float* %2709, align 4, !tbaa !92, !noalias !96
  %2711 = fcmp fast olt float %2710, %2575
  %2712 = icmp sgt i32 %2651, 0
  %2713 = and i1 %2712, %2711
  br i1 %2713, label %2714, label %2751

; <label>:2714                                    ; preds = %2708
  br label %2715

; <label>:2715                                    ; preds = %2744, %2714
  %2716 = phi float [ %2745, %2744 ], [ %2573, %2714 ]
  %2717 = phi float [ %2746, %2744 ], [ %2574, %2714 ]
  %2718 = phi float [ %2726, %2744 ], [ %2710, %2714 ]
  %2719 = phi i32 [ %2723, %2744 ], [ %2668, %2714 ]
  %2720 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 %2719
  %2721 = load float, float* %2720, align 4, !tbaa !92, !noalias !96
  %2722 = icmp slt i32 %2719, 2
  %2723 = add nsw i32 %2719, 1
  %2724 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 %2723
  %2725 = load float, float* %2724, align 4, !tbaa !92, !noalias !96
  %2726 = select i1 %2722, float %2725, float %2489
  %2727 = call float @dx.op.binary.f32(i32 36, float %2726, float %2721)  ; FMin(a,b)
  %2728 = call float @dx.op.binary.f32(i32 36, float %2575, float %2727)  ; FMin(a,b)
  %2729 = icmp eq i32 %2439, 0
  %2730 = fadd fast float %2728, %2718
  %2731 = fmul fast float %2730, %2420
  %2732 = fadd fast float %2731, %2433
  br i1 %2729, label %2738, label %2733, !dx.controlflow.hints !129

; <label>:2733                                    ; preds = %2715
  %2734 = fsub fast float %2728, %2718
  %2735 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2734)  ; FMax(a,b)
  %2736 = fmul fast float %2735, %2732
  %2737 = fadd fast float %2736, %2717
  br label %2744

; <label>:2738                                    ; preds = %2715
  %2739 = fsub fast float %2718, %2728
  %2740 = call float @dx.op.unary.f32(i32 6, float %2739)  ; FAbs(value)
  %2741 = fadd fast float %2740, %2716
  %2742 = fmul fast float %2740, %2732
  %2743 = fsub fast float %2717, %2742
  br label %2744

; <label>:2744                                    ; preds = %2738, %2733
  %2745 = phi float [ %2735, %2733 ], [ %2741, %2738 ]
  %2746 = phi float [ %2737, %2733 ], [ %2743, %2738 ]
  %2747 = fcmp fast olt float %2726, %2575
  %2748 = icmp slt i32 %2723, 3
  %2749 = and i1 %2748, %2747
  br i1 %2749, label %2715, label %2750

; <label>:2750                                    ; preds = %2744
  br label %2751

; <label>:2751                                    ; preds = %2750, %2708
  %2752 = phi float [ %2573, %2708 ], [ %2745, %2750 ]
  %2753 = phi float [ %2574, %2708 ], [ %2746, %2750 ]
  %2754 = fsub fast float %2489, %2752
  %2755 = select i1 %2491, float %2752, float %2754
  %2756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2757 = extractvalue %dx.types.CBufRet.f32 %2756, 0
  %2758 = extractvalue %dx.types.CBufRet.f32 %2756, 1
  %2759 = extractvalue %dx.types.CBufRet.f32 %2756, 2
  %2760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2761 = extractvalue %dx.types.CBufRet.f32 %2760, 0
  %2762 = extractvalue %dx.types.CBufRet.f32 %2760, 1
  %2763 = extractvalue %dx.types.CBufRet.f32 %2760, 2
  %2764 = extractvalue %dx.types.CBufRet.f32 %2760, 3
  %2765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2766 = extractvalue %dx.types.CBufRet.f32 %2765, 3
  %2767 = call float @dx.op.binary.f32(i32 36, float %2753, float %2766)  ; FMin(a,b)
  %2768 = fmul fast float %2764, %2755
  %2769 = call float @dx.op.unary.f32(i32 7, float %2768)  ; Saturate(value)
  %2770 = fsub fast float %2761, %2757
  %2771 = fsub fast float %2762, %2758
  %2772 = fsub fast float %2763, %2759
  %2773 = fmul fast float %2769, %2770
  %2774 = fmul fast float %2769, %2771
  %2775 = fmul fast float %2769, %2772
  %2776 = fadd fast float %2773, %2757
  %2777 = fadd fast float %2774, %2758
  %2778 = fadd fast float %2775, %2759
  %2779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2780 = extractvalue %dx.types.CBufRet.f32 %2779, 0
  %2781 = extractvalue %dx.types.CBufRet.f32 %2779, 1
  %2782 = fadd fast float %2781, %2780
  %2783 = call float @dx.op.unary.f32(i32 7, float %2782)  ; Saturate(value)
  %2784 = extractvalue %dx.types.CBufRet.f32 %2779, 2
  %2785 = extractvalue %dx.types.CBufRet.f32 %2779, 3
  %2786 = fadd fast float %2785, %2784
  %2787 = call float @dx.op.unary.f32(i32 7, float %2786)  ; Saturate(value)
  %2788 = fmul fast float %2783, %2767
  %2789 = fmul fast float %2788, %2787
  br label %2790

; <label>:2790                                    ; preds = %2751, %2670, %2505, %2487, %2485
  %2791 = phi float [ %2514, %2505 ], [ %2673, %2670 ], [ %2755, %2751 ], [ 0.000000e+00, %2485 ], [ 0.000000e+00, %2487 ]
  %2792 = phi float [ %2548, %2505 ], [ %2707, %2670 ], [ %2789, %2751 ], [ 0.000000e+00, %2485 ], [ 0.000000e+00, %2487 ]
  %2793 = phi float [ %2535, %2505 ], [ %2694, %2670 ], [ %2776, %2751 ], [ 0.000000e+00, %2485 ], [ 0.000000e+00, %2487 ]
  %2794 = phi float [ %2536, %2505 ], [ %2695, %2670 ], [ %2777, %2751 ], [ 0.000000e+00, %2485 ], [ 0.000000e+00, %2487 ]
  %2795 = phi float [ %2537, %2505 ], [ %2696, %2670 ], [ %2778, %2751 ], [ 0.000000e+00, %2485 ], [ 0.000000e+00, %2487 ]
  %2796 = fmul fast float %2428, %2792
  %2797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2798 = extractvalue %dx.types.CBufRet.f32 %2797, 2
  %2799 = fsub fast float %2435, %2798
  %2800 = fcmp fast olt float %2796, -2.000000e+01
  %2801 = call float @dx.op.unary.f32(i32 21, float %2796)  ; Exp(value)
  %2802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2803 = extractvalue %dx.types.CBufRet.f32 %2802, 2
  %2804 = extractvalue %dx.types.CBufRet.f32 %2802, 3
  %2805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2806 = extractvalue %dx.types.CBufRet.f32 %2805, 2
  %2807 = fmul fast float %2804, %2799
  %2808 = call float @dx.op.unary.f32(i32 7, float %2807)  ; Saturate(value)
  %2809 = fsub fast float 1.000000e+00, %2808
  %2810 = fmul fast float %2420, 5.000000e-01
  %2811 = fadd fast float %2810, 5.000000e-01
  %2812 = call float @dx.op.unary.f32(i32 7, float %2811)  ; Saturate(value)
  %2813 = fsub fast float 1.000000e+00, %2812
  %2814 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2809)  ; FMax(a,b)
  %2815 = fdiv fast float %2813, %2814
  %2816 = fsub fast float %2799, %2386
  %2817 = call float @dx.op.unary.f32(i32 6, float %2816)  ; FAbs(value)
  %2818 = fmul fast float %2817, %2803
  %2819 = call float @dx.op.unary.f32(i32 7, float %2815)  ; Saturate(value)
  %2820 = fsub fast float 1.000000e+00, %2818
  %2821 = fmul fast float %2820, %2819
  %2822 = fadd fast float %2821, %2818
  %2823 = fmul fast float %2806, %2799
  %2824 = call float @dx.op.unary.f32(i32 7, float %2823)  ; Saturate(value)
  %2825 = fsub fast float 1.000000e+00, %2822
  %2826 = fmul fast float %2825, %2824
  %2827 = fadd fast float %2826, %2822
  %2828 = call float @dx.op.unary.f32(i32 7, float %2827)  ; Saturate(value)
  %2829 = fadd fast float %2801, -1.000000e+00
  %2830 = select i1 %2800, float -1.000000e+00, float %2829
  %2831 = fmul fast float %2828, %2830
  %2832 = fadd fast float %2831, 1.000000e+00
  %2833 = fsub fast float -0.000000e+00, %2831
  %2834 = fmul fast float %2793, %2833
  %2835 = fmul fast float %2794, %2833
  %2836 = fmul fast float %2795, %2833
  br label %2837

; <label>:2837                                    ; preds = %2790, %2339
  %2838 = phi float [ %2791, %2790 ], [ 0.000000e+00, %2339 ]
  %2839 = phi float [ %2832, %2790 ], [ 1.000000e+00, %2339 ]
  %2840 = phi float [ %2834, %2790 ], [ 0.000000e+00, %2339 ]
  %2841 = phi float [ %2835, %2790 ], [ 0.000000e+00, %2339 ]
  %2842 = phi float [ %2836, %2790 ], [ 0.000000e+00, %2339 ]
  %2843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2844 = extractvalue %dx.types.CBufRet.f32 %2843, 1
  %2845 = fsub fast float 1.000000e+00, %2839
  %2846 = fmul fast float %2845, %2421
  %2847 = fmul fast float %2846, %2844
  %2848 = fsub fast float %2421, %2847
  br i1 %2414, label %2849, label %2878, !dx.controlflow.hints !130

; <label>:2849                                    ; preds = %2837
  %2850 = fmul fast float %2422, %2411
  %2851 = fadd fast float %2850, %2412
  %2852 = call float @dx.op.unary.f32(i32 7, float %2851)  ; Saturate(value)
  %2853 = fmul fast float %2393, %2848
  %2854 = fsub fast float -0.000000e+00, %2853
  %2855 = fmul fast float %2394, %2848
  %2856 = fsub fast float -0.000000e+00, %2855
  %2857 = call float @dx.op.unary.f32(i32 21, float %2854)  ; Exp(value)
  %2858 = call float @dx.op.unary.f32(i32 21, float %2856)  ; Exp(value)
  %2859 = call float @dx.op.binary.f32(i32 35, float %2401, float %2857)  ; FMax(a,b)
  %2860 = call float @dx.op.binary.f32(i32 35, float %2401, float %2858)  ; FMax(a,b)
  %2861 = fsub fast float %2860, %2859
  %2862 = fmul fast float %2861, %2852
  %2863 = fadd fast float %2862, %2859
  %2864 = call float @dx.op.unary.f32(i32 7, float %2863)  ; Saturate(value)
  %2865 = fsub fast float %2398, %2403
  %2866 = fsub fast float %2399, %2404
  %2867 = fsub fast float %2400, %2405
  %2868 = fmul fast float %2852, %2865
  %2869 = fmul fast float %2852, %2866
  %2870 = fmul fast float %2852, %2867
  %2871 = fadd fast float %2868, %2403
  %2872 = fadd fast float %2869, %2404
  %2873 = fadd fast float %2870, %2405
  %2874 = fsub fast float 1.000000e+00, %2864
  %2875 = fmul fast float %2874, %2871
  %2876 = fmul fast float %2874, %2872
  %2877 = fmul fast float %2874, %2873
  br label %2937

; <label>:2878                                    ; preds = %2837
  %2879 = fmul fast float %2848, %2410
  %2880 = call float @dx.op.unary.f32(i32 7, float %2879)  ; Saturate(value)
  %2881 = fsub fast float 2.000000e+00, %2880
  %2882 = fmul fast float %2880, 9.921875e-01
  %2883 = fmul fast float %2882, %2881
  %2884 = fadd fast float %2883, 3.906250e-03
  %2885 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %25, float %2884, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2886 = extractvalue %dx.types.ResRet.f32 %2885, 0
  %2887 = fsub fast float %2880, %2886
  %2888 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2887)  ; FMax(a,b)
  %2889 = fmul fast float %2396, %2386
  %2890 = call float @dx.op.unary.f32(i32 6, float %2889)  ; FAbs(value)
  %2891 = fcmp fast ogt float %2890, 0x3EB0C6F7A0000000
  br i1 %2891, label %2892, label %2898, !dx.controlflow.hints !131

; <label>:2892                                    ; preds = %2878
  %2893 = fmul fast float %2889, 0xBFF7154760000000
  %2894 = call float @dx.op.unary.f32(i32 21, float %2893)  ; Exp(value)
  %2895 = fsub fast float 1.000000e+00, %2894
  %2896 = fdiv fast float %2895, %2889
  %2897 = fmul fast float %2896, %2406
  br label %2898

; <label>:2898                                    ; preds = %2892, %2878
  %2899 = phi float [ %2897, %2892 ], [ %2406, %2878 ]
  %2900 = fadd fast float %2899, %2408
  %2901 = fmul fast float %2900, %2888
  %2902 = fmul fast float %2393, %2901
  %2903 = fsub fast float -0.000000e+00, %2902
  %2904 = fmul fast float %2394, %2901
  %2905 = fsub fast float -0.000000e+00, %2904
  %2906 = fmul fast float %2395, %2901
  %2907 = fsub fast float -0.000000e+00, %2906
  %2908 = call float @dx.op.unary.f32(i32 21, float %2903)  ; Exp(value)
  %2909 = call float @dx.op.unary.f32(i32 21, float %2905)  ; Exp(value)
  %2910 = call float @dx.op.unary.f32(i32 21, float %2907)  ; Exp(value)
  %2911 = fmul fast float %2422, %2422
  %2912 = fadd fast float %2911, 1.000000e+00
  %2913 = fmul fast float %2912, 0x3FAE8EC8A0000000
  %2914 = fmul fast float %2913, %2403
  %2915 = fmul fast float %2913, %2404
  %2916 = fmul fast float %2913, %2405
  %2917 = fmul fast float %2422, %2401
  %2918 = fsub fast float 1.000000e+00, %2917
  %2919 = fmul fast float %2401, %2401
  %2920 = fsub fast float 1.000000e+00, %2919
  %2921 = fmul fast float %2920, 0x3FB45F3060000000
  %2922 = fmul fast float %2918, %2918
  %2923 = fdiv fast float 1.000000e+00, %2922
  %2924 = fmul fast float %2921, %2923
  %2925 = fmul fast float %2924, %2398
  %2926 = fmul fast float %2924, %2399
  %2927 = fmul fast float %2924, %2400
  %2928 = fadd fast float %2925, %2914
  %2929 = fadd fast float %2926, %2915
  %2930 = fadd fast float %2927, %2916
  %2931 = fsub fast float 1.000000e+00, %2908
  %2932 = fsub fast float 1.000000e+00, %2909
  %2933 = fsub fast float 1.000000e+00, %2910
  %2934 = fmul fast float %2928, %2931
  %2935 = fmul fast float %2929, %2932
  %2936 = fmul fast float %2930, %2933
  br label %2937

; <label>:2937                                    ; preds = %2898, %2849
  %2938 = phi float [ %2875, %2849 ], [ %2934, %2898 ]
  %2939 = phi float [ %2876, %2849 ], [ %2935, %2898 ]
  %2940 = phi float [ %2877, %2849 ], [ %2936, %2898 ]
  %2941 = phi float [ %2864, %2849 ], [ %2908, %2898 ]
  %2942 = phi float [ %2864, %2849 ], [ %2909, %2898 ]
  %2943 = phi float [ %2864, %2849 ], [ %2910, %2898 ]
  br i1 %2430, label %2944, label %3142, !dx.controlflow.hints !132

; <label>:2944                                    ; preds = %2937
  %2945 = extractvalue %dx.types.CBufRet.f32 %2843, 0
  %2946 = fmul fast float %2945, %2845
  %2947 = fsub fast float %2840, %2938
  %2948 = fsub fast float %2841, %2939
  %2949 = fsub fast float %2842, %2940
  %2950 = fmul fast float %2946, %2947
  %2951 = fmul fast float %2946, %2948
  %2952 = fmul fast float %2946, %2949
  %2953 = fadd fast float %2950, %2938
  %2954 = fadd fast float %2951, %2939
  %2955 = fadd fast float %2952, %2940
  %2956 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2941)  ; FMax(a,b)
  %2957 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2942)  ; FMax(a,b)
  %2958 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2943)  ; FMax(a,b)
  %2959 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2839)  ; FMax(a,b)
  %2960 = call float @dx.op.binary.f32(i32 35, float %2838, float %2848)  ; FMax(a,b)
  %2961 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2960)  ; FMax(a,b)
  %2962 = fdiv fast float %2838, %2961
  %2963 = call float @dx.op.unary.f32(i32 7, float %2962)  ; Saturate(value)
  %2964 = fdiv fast float %2848, %2961
  %2965 = call float @dx.op.unary.f32(i32 7, float %2964)  ; Saturate(value)
  %2966 = fcmp fast une float %2959, 1.000000e+00
  br i1 %2966, label %2967, label %2980, !dx.controlflow.hints !133

; <label>:2967                                    ; preds = %2944
  %2968 = call float @dx.op.unary.f32(i32 23, float %2959)  ; Log(value)
  %2969 = fmul fast float %2968, 0x3FE62E4300000000
  %2970 = fmul fast float %2840, %2969
  %2971 = fsub fast float -0.000000e+00, %2970
  %2972 = fmul fast float %2841, %2969
  %2973 = fsub fast float -0.000000e+00, %2972
  %2974 = fmul fast float %2842, %2969
  %2975 = fsub fast float -0.000000e+00, %2974
  %2976 = fsub fast float 1.000000e+00, %2959
  %2977 = fdiv fast float %2971, %2976
  %2978 = fdiv fast float %2973, %2976
  %2979 = fdiv fast float %2975, %2976
  br label %2980

; <label>:2980                                    ; preds = %2967, %2944
  %2981 = phi float [ %2977, %2967 ], [ %2840, %2944 ]
  %2982 = phi float [ %2978, %2967 ], [ %2841, %2944 ]
  %2983 = phi float [ %2979, %2967 ], [ %2842, %2944 ]
  %2984 = phi float [ %2969, %2967 ], [ 0.000000e+00, %2944 ]
  %2985 = fcmp fast une float %2956, 1.000000e+00
  br i1 %2985, label %2986, label %2993, !dx.controlflow.hints !134

; <label>:2986                                    ; preds = %2980
  %2987 = call float @dx.op.unary.f32(i32 23, float %2956)  ; Log(value)
  %2988 = fmul fast float %2987, 0x3FE62E4300000000
  %2989 = fmul fast float %2953, %2988
  %2990 = fsub fast float -0.000000e+00, %2989
  %2991 = fsub fast float 1.000000e+00, %2956
  %2992 = fdiv fast float %2990, %2991
  br label %2993

; <label>:2993                                    ; preds = %2986, %2980
  %2994 = phi float [ %2992, %2986 ], [ %2953, %2980 ]
  %2995 = phi float [ %2988, %2986 ], [ 0.000000e+00, %2980 ]
  %2996 = fcmp fast une float %2957, 1.000000e+00
  br i1 %2996, label %2997, label %3004, !dx.controlflow.hints !134

; <label>:2997                                    ; preds = %2993
  %2998 = call float @dx.op.unary.f32(i32 23, float %2957)  ; Log(value)
  %2999 = fmul fast float %2998, 0x3FE62E4300000000
  %3000 = fmul fast float %2954, %2999
  %3001 = fsub fast float -0.000000e+00, %3000
  %3002 = fsub fast float 1.000000e+00, %2957
  %3003 = fdiv fast float %3001, %3002
  br label %3004

; <label>:3004                                    ; preds = %2997, %2993
  %3005 = phi float [ %3003, %2997 ], [ %2954, %2993 ]
  %3006 = phi float [ %2999, %2997 ], [ 0.000000e+00, %2993 ]
  %3007 = fcmp fast une float %2958, 1.000000e+00
  br i1 %3007, label %3008, label %3015, !dx.controlflow.hints !134

; <label>:3008                                    ; preds = %3004
  %3009 = call float @dx.op.unary.f32(i32 23, float %2958)  ; Log(value)
  %3010 = fmul fast float %3009, 0x3FE62E4300000000
  %3011 = fmul fast float %2955, %3010
  %3012 = fsub fast float -0.000000e+00, %3011
  %3013 = fsub fast float 1.000000e+00, %2958
  %3014 = fdiv fast float %3012, %3013
  br label %3015

; <label>:3015                                    ; preds = %3008, %3004
  %3016 = phi float [ %3014, %3008 ], [ %2955, %3004 ]
  %3017 = phi float [ %3010, %3008 ], [ 0.000000e+00, %3004 ]
  %3018 = fmul fast float %2981, %2965
  %3019 = fmul fast float %2982, %2965
  %3020 = fmul fast float %2983, %2965
  %3021 = fmul fast float %2984, %2965
  %3022 = fmul fast float %2994, %2963
  %3023 = fmul fast float %3005, %2963
  %3024 = fmul fast float %3016, %2963
  %3025 = fmul fast float %2995, %2963
  %3026 = fmul fast float %3006, %2963
  %3027 = fmul fast float %3017, %2963
  %3028 = fadd fast float %3022, %3018
  %3029 = fadd fast float %3023, %3019
  %3030 = fadd fast float %3024, %3020
  %3031 = fadd fast float %3025, %3021
  %3032 = fadd fast float %3026, %3021
  %3033 = fadd fast float %3027, %3021
  %3034 = fcmp fast une float %3031, 0.000000e+00
  br i1 %3034, label %3035, label %3042, !dx.controlflow.hints !135

; <label>:3035                                    ; preds = %3015
  %3036 = fmul fast float %3031, 0x3FF7154760000000
  %3037 = call float @dx.op.unary.f32(i32 21, float %3036)  ; Exp(value)
  %3038 = fsub fast float 1.000000e+00, %3037
  %3039 = fmul fast float %3028, %3038
  %3040 = fsub fast float -0.000000e+00, %3039
  %3041 = fdiv fast float %3040, %3031
  br label %3042

; <label>:3042                                    ; preds = %3035, %3015
  %3043 = phi float [ %3037, %3035 ], [ 1.000000e+00, %3015 ]
  %3044 = phi float [ %3041, %3035 ], [ %3028, %3015 ]
  %3045 = fcmp fast une float %3032, 0.000000e+00
  br i1 %3045, label %3046, label %3053, !dx.controlflow.hints !135

; <label>:3046                                    ; preds = %3042
  %3047 = fmul fast float %3032, 0x3FF7154760000000
  %3048 = call float @dx.op.unary.f32(i32 21, float %3047)  ; Exp(value)
  %3049 = fsub fast float 1.000000e+00, %3048
  %3050 = fmul fast float %3029, %3049
  %3051 = fsub fast float -0.000000e+00, %3050
  %3052 = fdiv fast float %3051, %3032
  br label %3053

; <label>:3053                                    ; preds = %3046, %3042
  %3054 = phi float [ %3048, %3046 ], [ 1.000000e+00, %3042 ]
  %3055 = phi float [ %3052, %3046 ], [ %3029, %3042 ]
  %3056 = fcmp fast une float %3033, 0.000000e+00
  br i1 %3056, label %3057, label %3064, !dx.controlflow.hints !135

; <label>:3057                                    ; preds = %3053
  %3058 = fmul fast float %3033, 0x3FF7154760000000
  %3059 = call float @dx.op.unary.f32(i32 21, float %3058)  ; Exp(value)
  %3060 = fsub fast float 1.000000e+00, %3059
  %3061 = fmul fast float %3030, %3060
  %3062 = fsub fast float -0.000000e+00, %3061
  %3063 = fdiv fast float %3062, %3033
  br label %3064

; <label>:3064                                    ; preds = %3057, %3053
  %3065 = phi float [ %3059, %3057 ], [ 1.000000e+00, %3053 ]
  %3066 = phi float [ %3063, %3057 ], [ %3030, %3053 ]
  %3067 = fcmp fast ogt float %2963, %2965
  br i1 %3067, label %3068, label %3088, !dx.controlflow.hints !136

; <label>:3068                                    ; preds = %3064
  %3069 = fsub fast float 1.000000e+00, %2965
  %3070 = fmul fast float %2981, %3069
  %3071 = fmul fast float %2982, %3069
  %3072 = fmul fast float %2983, %3069
  %3073 = fmul fast float %2984, %3069
  %3074 = fcmp fast une float %3073, 0.000000e+00
  br i1 %3074, label %3075, label %3126, !dx.controlflow.hints !137

; <label>:3075                                    ; preds = %3068
  %3076 = fmul fast float %3073, 0x3FF7154760000000
  %3077 = call float @dx.op.unary.f32(i32 21, float %3076)  ; Exp(value)
  %3078 = fsub fast float 1.000000e+00, %3077
  %3079 = fmul fast float %3070, %3078
  %3080 = fsub fast float -0.000000e+00, %3079
  %3081 = fmul fast float %3071, %3078
  %3082 = fsub fast float -0.000000e+00, %3081
  %3083 = fmul fast float %3072, %3078
  %3084 = fsub fast float -0.000000e+00, %3083
  %3085 = fdiv fast float %3080, %3073
  %3086 = fdiv fast float %3082, %3073
  %3087 = fdiv fast float %3084, %3073
  br label %3126

; <label>:3088                                    ; preds = %3064
  %3089 = fsub fast float 1.000000e+00, %2963
  %3090 = fmul fast float %2994, %3089
  %3091 = fmul fast float %3005, %3089
  %3092 = fmul fast float %3016, %3089
  %3093 = fmul fast float %2995, %3089
  %3094 = fmul fast float %3006, %3089
  %3095 = fmul fast float %3017, %3089
  %3096 = fcmp fast une float %3093, 0.000000e+00
  br i1 %3096, label %3097, label %3104, !dx.controlflow.hints !135

; <label>:3097                                    ; preds = %3088
  %3098 = fmul fast float %3093, 0x3FF7154760000000
  %3099 = call float @dx.op.unary.f32(i32 21, float %3098)  ; Exp(value)
  %3100 = fsub fast float 1.000000e+00, %3099
  %3101 = fmul fast float %3090, %3100
  %3102 = fsub fast float -0.000000e+00, %3101
  %3103 = fdiv fast float %3102, %3093
  br label %3104

; <label>:3104                                    ; preds = %3097, %3088
  %3105 = phi float [ %3103, %3097 ], [ %3090, %3088 ]
  %3106 = phi float [ %3099, %3097 ], [ 1.000000e+00, %3088 ]
  %3107 = fcmp fast une float %3094, 0.000000e+00
  br i1 %3107, label %3108, label %3115, !dx.controlflow.hints !135

; <label>:3108                                    ; preds = %3104
  %3109 = fmul fast float %3094, 0x3FF7154760000000
  %3110 = call float @dx.op.unary.f32(i32 21, float %3109)  ; Exp(value)
  %3111 = fsub fast float 1.000000e+00, %3110
  %3112 = fmul fast float %3091, %3111
  %3113 = fsub fast float -0.000000e+00, %3112
  %3114 = fdiv fast float %3113, %3094
  br label %3115

; <label>:3115                                    ; preds = %3108, %3104
  %3116 = phi float [ %3114, %3108 ], [ %3091, %3104 ]
  %3117 = phi float [ %3110, %3108 ], [ 1.000000e+00, %3104 ]
  %3118 = fcmp fast une float %3095, 0.000000e+00
  br i1 %3118, label %3119, label %3126, !dx.controlflow.hints !135

; <label>:3119                                    ; preds = %3115
  %3120 = fmul fast float %3095, 0x3FF7154760000000
  %3121 = call float @dx.op.unary.f32(i32 21, float %3120)  ; Exp(value)
  %3122 = fsub fast float 1.000000e+00, %3121
  %3123 = fmul fast float %3092, %3122
  %3124 = fsub fast float -0.000000e+00, %3123
  %3125 = fdiv fast float %3124, %3095
  br label %3126

; <label>:3126                                    ; preds = %3119, %3115, %3075, %3068
  %3127 = phi float [ %3125, %3119 ], [ %3087, %3075 ], [ %3072, %3068 ], [ %3092, %3115 ]
  %3128 = phi float [ %3116, %3119 ], [ %3086, %3075 ], [ %3071, %3068 ], [ %3116, %3115 ]
  %3129 = phi float [ %3105, %3119 ], [ %3085, %3075 ], [ %3070, %3068 ], [ %3105, %3115 ]
  %3130 = phi float [ %3121, %3119 ], [ %3077, %3075 ], [ 1.000000e+00, %3068 ], [ 1.000000e+00, %3115 ]
  %3131 = phi float [ %3117, %3119 ], [ %3077, %3075 ], [ 1.000000e+00, %3068 ], [ %3117, %3115 ]
  %3132 = phi float [ %3106, %3119 ], [ %3077, %3075 ], [ 1.000000e+00, %3068 ], [ %3106, %3115 ]
  %3133 = fmul fast float %3132, %3044
  %3134 = fmul fast float %3131, %3055
  %3135 = fmul fast float %3130, %3066
  %3136 = fadd fast float %3133, %3129
  %3137 = fadd fast float %3134, %3128
  %3138 = fadd fast float %3135, %3127
  %3139 = fmul fast float %3132, %3043
  %3140 = fmul fast float %3131, %3054
  %3141 = fmul fast float %3130, %3065
  br label %3142

; <label>:3142                                    ; preds = %3126, %2937
  %3143 = phi float [ %2943, %2937 ], [ %3141, %3126 ]
  %3144 = phi float [ %2942, %2937 ], [ %3140, %3126 ]
  %3145 = phi float [ %2941, %2937 ], [ %3139, %3126 ]
  %3146 = phi float [ %2940, %2937 ], [ %3138, %3126 ]
  %3147 = phi float [ %2939, %2937 ], [ %3137, %3126 ]
  %3148 = phi float [ %2938, %2937 ], [ %3136, %3126 ]
  %3149 = fmul fast float %3145, %2286
  %3150 = fmul fast float %3144, %2287
  %3151 = fmul fast float %3143, %2288
  %3152 = fsub fast float 1.000000e+00, %2349
  %3153 = fmul fast float %3148, %3152
  %3154 = fmul fast float %3147, %3152
  %3155 = fmul fast float %3146, %3152
  %3156 = fadd fast float %3153, %3149
  %3157 = fadd fast float %3154, %3150
  %3158 = fadd fast float %3155, %3151
  %3159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %3160 = extractvalue %dx.types.CBufRet.f32 %3159, 2
  %3161 = fmul fast float %3160, %2359
  %3162 = call float @dx.op.unary.f32(i32 7, float %3161)  ; Saturate(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %29, i32 %30, i32 undef, float %2349, float %2349, float %2349, float %2349, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %3163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3164 = extractvalue %dx.types.CBufRet.f32 %3163, 0
  %3165 = fmul fast float %3164, %3156
  %3166 = fmul fast float %3164, %3157
  %3167 = fmul fast float %3164, %3158
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %29, i32 %30, i32 undef, float %3165, float %3166, float %3167, float %3165, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %29, i32 %30, i32 undef, float %3162, float %3162, float %3162, float %3162, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!41 = !{void ()* @cs_fog_raymarching_clouds_particles, !"cs_fog_raymarching_clouds_particles", null, !4, !42}
!42 = !{i32 0, i64 272, i32 4, !43}
!43 = !{i32 8, i32 8, i32 1}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.unroll.disable"}
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
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 1}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 1}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 1}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 2}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
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
!83 = distinct !{!83, !"dx.controlflow.hints", i32 1}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 2}
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
!128 = distinct !{!128, !"dx.controlflow.hints", i32 2}
!129 = distinct !{!129, !"dx.controlflow.hints", i32 2}
!130 = distinct !{!130, !"dx.controlflow.hints", i32 1}
!131 = distinct !{!131, !"dx.controlflow.hints", i32 2}
!132 = distinct !{!132, !"dx.controlflow.hints", i32 1}
!133 = distinct !{!133, !"dx.controlflow.hints", i32 1}
!134 = distinct !{!134, !"dx.controlflow.hints", i32 1}
!135 = distinct !{!135, !"dx.controlflow.hints", i32 1}
!136 = distinct !{!136, !"dx.controlflow.hints", i32 2}
!137 = distinct !{!137, !"dx.controlflow.hints", i32 1}

