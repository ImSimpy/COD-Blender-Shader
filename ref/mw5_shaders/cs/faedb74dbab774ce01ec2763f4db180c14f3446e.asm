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
; shader hash: db261fc72464eea44fba8fea0498dc76
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
;   [16 x i8] (type annotation not present)
;
; }
;
; cbuffer 
; {
;
;   [240 x i8] (type annotation not present)
;
; }
;
; Resource bind info for 
; {
;
;   [8 x i8] (type annotation not present)
; }
;
; Resource bind info for 
; {
;
;   [8 x i8] (type annotation not present)
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb3     1
;                                   cbuffer      NA          NA     CB1            cb4     1
;                                   cbuffer      NA          NA     CB2            cb1     1
;                                   sampler      NA          NA      S0             s0     1
;                                   sampler      NA          NA      S1             s1     1
;                                   sampler      NA          NA      S2             s2     1
;                                   sampler      NA          NA      S3             s3     1
;                                   texture    byte         r/o      T0             t0     1
;                                   texture    byte         r/o      T1             t1     1
;                                   texture    byte         r/o      T2             t2     1
;                                   texture    byte         r/o      T3             t3     1
;                                   texture    byte         r/o      T4             t8     1
;                                   texture    byte         r/o      T5             t4     1
;                                   texture    byte         r/o      T6             t5     1
;                                   texture    byte         r/o      T7             t6     1
;                                   texture    byte         r/o      T8             t7     1
;                                   texture    byte         r/o      T9            t28     1
;                                   texture    byte         r/o     T10            t30     1
;                                   texture     f32          2d     T11            t39     1
;                                   texture     f32          2d     T12            t13     1
;                                   texture     f32          2d     T13            t38     1
;                                   texture    byte         r/o     T14            t19     1
;                                   texture    byte         r/o     T15            t20     1
;                                   texture     f32          1d     T16            t26     1
;                                   texture     f32     2darray     T17            t35     1
;                                   texture     f32          2d     T18            t14     1
;                                   textureunorm_f32     2darray     T19            t36     1
;                                   texture    byte         r/o     T20            t34     1
;                                   texture     f32          2d     T21            t32     1
;                                   texture     f32          2d     T22            t18     1
;                                   texture     f32          2d     T23            t41     1
;                                   texture  struct         r/o     T24            t22     1
;                                   texture     u32         buf     T25            t23     1
;                                   texture     u32         buf     T26            t24     1
;                                   texture  struct         r/o     T27            t25     1
;                                       UAV     f32          2d      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture1D<float>" = type { float, %"class.Texture1D<float>::mips_type" }
%"class.Texture1D<float>::mips_type" = type { i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%"class.StructuredBuffer<GfxBSPAABBNodePacked>" = type { %struct.GfxBSPAABBNodePacked }
%struct.GfxBSPAABBNodePacked = type { i32, i32 }
%"class.Buffer<unsigned int>" = type { i32 }
%"class.RWTexture2D<float>" = type { float }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%GfxLGBoundConsts = type { i32, i32, i32, i32 }
%DeferredEffectLightConsts_decl = type { %struct.DeferredEffectLightConsts }
%struct.DeferredEffectLightConsts = type { i32, float, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x <4 x i32>] }
%struct.SamplerComparisonState = type { i32 }
%struct.SamplerState = type { i32 }

@PCF_OFFSETS_8.v.1dim = internal constant [16 x float] [float 0xBFE6A09020000000, float 0x3FE6A09020000000, float 0.000000e+00, float -8.750000e-01, float 0x3FE0F837C0000000, float 0x3FE0F837C0000000, float -6.250000e-01, float 0.000000e+00, float 0x3FD6A161E0000000, float 0xBFD6A161E0000000, float 0.000000e+00, float 3.750000e-01, float 0xBFC6A161E0000000, float 0xBFC6A161E0000000, float 1.250000e-01, float 0.000000e+00], align 4

define void @cs_light_sensor_direct_and_baked() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 24, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 23, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 41, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 36, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 26, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 39, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 28, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = alloca [4 x i32], align 4
  %38 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %39 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %40 = alloca [12 x float], align 4
  %41 = alloca [12 x float], align 4
  %42 = alloca [4 x i32], align 4
  %43 = alloca [4 x float], align 4
  %44 = alloca [4 x i32], align 4
  %45 = alloca [4 x float], align 4
  %46 = alloca [3 x float], align 4
  %47 = alloca [4 x float], align 4
  %48 = shl i32 %39, 6
  %49 = add i32 %48, %38
  %50 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %51 = extractvalue %dx.types.CBufRet.i32 %50, 0
  %52 = icmp ult i32 %49, %51
  br i1 %52, label %54, label %53, !dx.controlflow.hints !52

; <label>:53                                      ; preds = %0
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %38, i32 %39, i32 undef, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2814

; <label>:54                                      ; preds = %0
  %55 = shl i32 %49, 4
  %56 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %55, i32 undef)  ; BufferLoad(srv,index,wot)
  %57 = extractvalue %dx.types.ResRet.i32 %56, 0
  %58 = extractvalue %dx.types.ResRet.i32 %56, 1
  %59 = extractvalue %dx.types.ResRet.i32 %56, 2
  %60 = extractvalue %dx.types.ResRet.i32 %56, 3
  %61 = bitcast i32 %57 to float
  %62 = bitcast i32 %58 to float
  %63 = bitcast i32 %59 to float
  %64 = and i32 %60, 255
  %65 = lshr i32 %60, 8
  %66 = and i32 %65, 255
  %67 = lshr i32 %60, 16
  %68 = and i32 %67, 255
  %69 = sitofp i32 %64 to float
  %70 = sitofp i32 %66 to float
  %71 = sitofp i32 %68 to float
  %72 = fmul fast float %69, 0x3F80101020000000
  %73 = fmul fast float %70, 0x3F80101020000000
  %74 = fmul fast float %71, 0x3F80101020000000
  %75 = fadd fast float %72, -1.000000e+00
  %76 = fadd fast float %73, -1.000000e+00
  %77 = fadd fast float %74, -1.000000e+00
  %78 = lshr i32 %60, 24
  %79 = uitofp i32 %78 to float
  %80 = call float @dx.op.dot3.f32(i32 55, float %75, float %76, float %77, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %81 = fcmp fast ogt float %80, 0x3FE9EB8520000000
  %82 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %83 = extractvalue %dx.types.CBufRet.f32 %82, 0
  %84 = extractvalue %dx.types.CBufRet.f32 %82, 1
  %85 = extractvalue %dx.types.CBufRet.f32 %82, 2
  %86 = fsub fast float %61, %83
  %87 = fsub fast float %62, %84
  %88 = fsub fast float %63, %85
  %89 = fsub fast float -0.000000e+00, %88
  %90 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %36, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %91 = extractvalue %dx.types.CBufRet.i32 %90, 3
  %92 = and i32 %91, 3
  %93 = icmp ne i32 %92, 0
  %94 = and i32 %91, 4
  %95 = icmp eq i32 %94, 0
  %96 = and i1 %93, %95
  %97 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %98 = extractvalue %dx.types.CBufRet.f32 %97, 0
  %99 = extractvalue %dx.types.CBufRet.f32 %97, 1
  %100 = fsub fast float %61, %98
  %101 = fsub fast float %62, %99
  %102 = fmul fast float %100, %100
  %103 = fmul fast float %101, %101
  %104 = fadd fast float %102, %103
  %105 = call float @dx.op.unary.f32(i32 24, float %104)  ; Sqrt(value)
  %106 = extractvalue %dx.types.CBufRet.f32 %97, 2
  %107 = fcmp fast olt float %105, %106
  br i1 %107, label %108, label %173, !dx.controlflow.hints !53

; <label>:108                                     ; preds = %54
  %109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %110 = extractvalue %dx.types.CBufRet.f32 %109, 0
  %111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %112 = extractvalue %dx.types.CBufRet.f32 %111, 0
  %113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %114 = extractvalue %dx.types.CBufRet.f32 %113, 0
  %115 = extractvalue %dx.types.CBufRet.f32 %109, 1
  %116 = extractvalue %dx.types.CBufRet.f32 %111, 1
  %117 = extractvalue %dx.types.CBufRet.f32 %113, 1
  %118 = extractvalue %dx.types.CBufRet.f32 %109, 3
  %119 = extractvalue %dx.types.CBufRet.f32 %111, 3
  %120 = extractvalue %dx.types.CBufRet.f32 %113, 3
  %121 = fadd fast float %118, %61
  %122 = fadd fast float %119, %62
  %123 = fadd fast float %120, %63
  %124 = fmul fast float %121, %110
  %125 = call float @dx.op.tertiary.f32(i32 46, float %122, float %112, float %124)  ; FMad(a,b,c)
  %126 = call float @dx.op.tertiary.f32(i32 46, float %123, float %114, float %125)  ; FMad(a,b,c)
  %127 = fmul fast float %121, %115
  %128 = call float @dx.op.tertiary.f32(i32 46, float %122, float %116, float %127)  ; FMad(a,b,c)
  %129 = call float @dx.op.tertiary.f32(i32 46, float %123, float %117, float %128)  ; FMad(a,b,c)
  %130 = fsub fast float %126, %118
  %131 = fsub fast float %129, %119
  %132 = fsub fast float %130, %98
  %133 = fadd fast float %132, %106
  %134 = fsub fast float %131, %99
  %135 = fadd fast float %134, %106
  %136 = extractvalue %dx.types.CBufRet.f32 %97, 3
  %137 = fmul fast float %133, %136
  %138 = fmul fast float %135, %136
  %139 = call float @dx.op.unary.f32(i32 7, float %137)  ; Saturate(value)
  %140 = call float @dx.op.unary.f32(i32 7, float %138)  ; Saturate(value)
  %141 = fsub fast float 1.000000e+00, %139
  %142 = fsub fast float 1.000000e+00, %140
  %143 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %31, float %141, float %142, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %144 = extractvalue %dx.types.ResRet.f32 %143, 0
  %145 = fcmp fast ugt float %144, 0.000000e+00
  br i1 %145, label %146, label %173, !dx.controlflow.hints !54

; <label>:146                                     ; preds = %108
  %147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %148 = extractvalue %dx.types.CBufRet.f32 %147, 2
  %149 = fmul fast float %148, %144
  %150 = extractvalue %dx.types.CBufRet.f32 %147, 3
  %151 = fadd fast float %150, %149
  %152 = extractvalue %dx.types.CBufRet.f32 %113, 2
  %153 = fadd fast float %151, %120
  %154 = fmul fast float %126, %114
  %155 = call float @dx.op.tertiary.f32(i32 46, float %129, float %117, float %154)  ; FMad(a,b,c)
  %156 = call float @dx.op.tertiary.f32(i32 46, float %153, float %152, float %155)  ; FMad(a,b,c)
  %157 = fsub fast float %156, %120
  %158 = fsub fast float %157, %85
  %159 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %31, float %141, float %142, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %160 = extractvalue %dx.types.ResRet.f32 %159, 0
  %161 = extractvalue %dx.types.ResRet.f32 %159, 1
  %162 = extractvalue %dx.types.ResRet.f32 %159, 2
  %163 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %31, float %141, float %142, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %164 = extractvalue %dx.types.ResRet.f32 %163, 0
  %165 = extractvalue %dx.types.ResRet.f32 %163, 1
  %166 = extractvalue %dx.types.ResRet.f32 %163, 2
  %167 = fadd fast float %164, %160
  %168 = fmul fast float %167, 0x3F847AE140000000
  %169 = fadd fast float %165, %161
  %170 = fmul fast float %169, 0x3F847AE140000000
  %171 = fadd fast float %166, %162
  %172 = fmul fast float %171, 0x3F847AE140000000
  br label %173

; <label>:173                                     ; preds = %146, %108, %54
  %174 = phi float [ 0.000000e+00, %54 ], [ %168, %146 ], [ 0.000000e+00, %108 ]
  %175 = phi float [ 0.000000e+00, %54 ], [ %170, %146 ], [ 0.000000e+00, %108 ]
  %176 = phi float [ 0.000000e+00, %54 ], [ %172, %146 ], [ 0.000000e+00, %108 ]
  %177 = phi float [ 0.000000e+00, %54 ], [ %158, %146 ], [ -1.310720e+05, %108 ]
  %178 = phi i32 [ 0, %54 ], [ 1, %146 ], [ 0, %108 ]
  %179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %180 = extractvalue %dx.types.CBufRet.f32 %179, 3
  %181 = fcmp fast oeq float %180, 0.000000e+00
  br i1 %181, label %1116, label %182, !dx.controlflow.hints !55

; <label>:182                                     ; preds = %173
  %183 = extractvalue %dx.types.CBufRet.f32 %179, 0
  %184 = extractvalue %dx.types.CBufRet.f32 %179, 1
  %185 = extractvalue %dx.types.CBufRet.f32 %179, 2
  %186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %187 = extractvalue %dx.types.CBufRet.f32 %186, 0
  %188 = extractvalue %dx.types.CBufRet.f32 %186, 1
  %189 = extractvalue %dx.types.CBufRet.f32 %186, 2
  %190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %191 = extractvalue %dx.types.CBufRet.f32 %190, 0
  %192 = extractvalue %dx.types.CBufRet.f32 %190, 1
  %193 = call float @dx.op.dot3.f32(i32 55, float %187, float %188, float %189, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %194 = select i1 %96, float %191, float %187
  %195 = select i1 %96, float %193, float %188
  %196 = select i1 %96, float %192, float %189
  %197 = fmul fast float %183, %79
  %198 = fmul fast float %184, %79
  %199 = fmul fast float %185, %79
  %200 = fadd fast float %197, %86
  %201 = fadd fast float %198, %87
  %202 = fadd fast float %199, %88
  %203 = fcmp fast olt float %180, 0.000000e+00
  br i1 %203, label %849, label %204, !dx.controlflow.hints !56

; <label>:204                                     ; preds = %182
  %205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %206 = extractvalue %dx.types.CBufRet.f32 %205, 0
  %207 = extractvalue %dx.types.CBufRet.f32 %205, 1
  %208 = extractvalue %dx.types.CBufRet.f32 %205, 2
  %209 = extractvalue %dx.types.CBufRet.f32 %205, 3
  %210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %211 = extractvalue %dx.types.CBufRet.f32 %210, 0
  %212 = extractvalue %dx.types.CBufRet.f32 %210, 1
  %213 = extractvalue %dx.types.CBufRet.f32 %210, 2
  %214 = extractvalue %dx.types.CBufRet.f32 %210, 3
  %215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %216 = extractvalue %dx.types.CBufRet.f32 %215, 0
  %217 = extractvalue %dx.types.CBufRet.f32 %215, 1
  %218 = extractvalue %dx.types.CBufRet.f32 %215, 2
  %219 = extractvalue %dx.types.CBufRet.f32 %215, 3
  %220 = fmul fast float %206, %200
  %221 = call float @dx.op.tertiary.f32(i32 46, float %201, float %207, float %220)  ; FMad(a,b,c)
  %222 = call float @dx.op.tertiary.f32(i32 46, float %202, float %208, float %221)  ; FMad(a,b,c)
  %223 = fadd fast float %222, %209
  %224 = fmul fast float %211, %200
  %225 = call float @dx.op.tertiary.f32(i32 46, float %201, float %212, float %224)  ; FMad(a,b,c)
  %226 = call float @dx.op.tertiary.f32(i32 46, float %202, float %213, float %225)  ; FMad(a,b,c)
  %227 = fadd fast float %226, %214
  %228 = fmul fast float %216, %200
  %229 = call float @dx.op.tertiary.f32(i32 46, float %201, float %217, float %228)  ; FMad(a,b,c)
  %230 = call float @dx.op.tertiary.f32(i32 46, float %202, float %218, float %229)  ; FMad(a,b,c)
  %231 = fadd fast float %230, %219
  %232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %233 = extractvalue %dx.types.CBufRet.f32 %232, 0
  %234 = extractvalue %dx.types.CBufRet.f32 %232, 1
  %235 = extractvalue %dx.types.CBufRet.f32 %232, 3
  %236 = fmul fast float %235, %223
  %237 = fmul fast float %235, %227
  %238 = fadd fast float %236, %233
  %239 = fadd fast float %237, %234
  %240 = extractvalue %dx.types.CBufRet.f32 %232, 2
  %241 = fcmp fast olt float %240, 0.000000e+00
  %242 = fsub fast float -0.000000e+00, %240
  %243 = select i1 %241, float %242, float %240
  %244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %245 = extractvalue %dx.types.CBufRet.f32 %244, 1
  %246 = fadd fast float %243, %245
  %247 = fcmp fast ogt float %246, 0.000000e+00
  br i1 %247, label %248, label %280, !dx.controlflow.hints !57

; <label>:248                                     ; preds = %204
  %249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %250 = extractvalue %dx.types.CBufRet.f32 %249, 1
  %251 = fsub fast float %250, %231
  %252 = extractvalue %dx.types.CBufRet.f32 %249, 2
  %253 = fmul fast float %251, %252
  %254 = fsub fast float 1.000000e+00, %253
  %255 = call float @dx.op.unary.f32(i32 7, float %254)  ; Saturate(value)
  %256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %257 = extractvalue %dx.types.CBufRet.f32 %256, 0
  %258 = extractvalue %dx.types.CBufRet.f32 %256, 1
  %259 = fsub fast float %238, %257
  %260 = fsub fast float %239, %258
  %261 = fcmp fast olt float %259, 0.000000e+00
  %262 = fcmp fast olt float %260, 0.000000e+00
  %263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %264 = extractvalue %dx.types.CBufRet.f32 %263, 0
  %265 = extractvalue %dx.types.CBufRet.f32 %263, 1
  %266 = extractvalue %dx.types.CBufRet.f32 %263, 2
  %267 = extractvalue %dx.types.CBufRet.f32 %263, 3
  %268 = select i1 %261, float %264, float %266
  %269 = select i1 %262, float %265, float %267
  %270 = fmul fast float %268, %259
  %271 = fmul fast float %269, %260
  %272 = call float @dx.op.unary.f32(i32 6, float %270)  ; FAbs(value)
  %273 = call float @dx.op.unary.f32(i32 6, float %271)  ; FAbs(value)
  %274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %275 = extractvalue %dx.types.CBufRet.f32 %274, 0
  %276 = call float @dx.op.binary.f32(i32 35, float %272, float %273)  ; FMax(a,b)
  %277 = fsub fast float %275, %276
  %278 = call float @dx.op.unary.f32(i32 7, float %277)  ; Saturate(value)
  %279 = fmul fast float %278, %255
  br label %280

; <label>:280                                     ; preds = %248, %204
  %281 = phi float [ %279, %248 ], [ 0.000000e+00, %204 ]
  %282 = call float @dx.op.binary.f32(i32 35, float %281, float 0.000000e+00)  ; FMax(a,b)
  %283 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %282)  ; FMax(a,b)
  %284 = fcmp fast olt float %283, 1.000000e+00
  br i1 %284, label %285, label %683, !dx.controlflow.hints !58

; <label>:285                                     ; preds = %280
  %286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %287 = extractvalue %dx.types.CBufRet.f32 %286, 0
  %288 = fcmp fast une float %287, 0.000000e+00
  br i1 %288, label %289, label %683, !dx.controlflow.hints !59

; <label>:289                                     ; preds = %285
  %290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %291 = extractvalue %dx.types.CBufRet.f32 %290, 0
  %292 = extractvalue %dx.types.CBufRet.f32 %290, 1
  %293 = extractvalue %dx.types.CBufRet.f32 %290, 2
  %294 = extractvalue %dx.types.CBufRet.f32 %290, 3
  %295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %296 = extractvalue %dx.types.CBufRet.f32 %295, 0
  %297 = extractvalue %dx.types.CBufRet.f32 %295, 1
  %298 = extractvalue %dx.types.CBufRet.f32 %295, 2
  %299 = extractvalue %dx.types.CBufRet.f32 %295, 3
  %300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %301 = extractvalue %dx.types.CBufRet.f32 %300, 0
  %302 = extractvalue %dx.types.CBufRet.f32 %300, 1
  %303 = extractvalue %dx.types.CBufRet.f32 %300, 2
  %304 = extractvalue %dx.types.CBufRet.f32 %300, 3
  %305 = fmul fast float %291, %200
  %306 = call float @dx.op.tertiary.f32(i32 46, float %201, float %292, float %305)  ; FMad(a,b,c)
  %307 = call float @dx.op.tertiary.f32(i32 46, float %202, float %293, float %306)  ; FMad(a,b,c)
  %308 = fadd fast float %307, %294
  %309 = fmul fast float %296, %200
  %310 = call float @dx.op.tertiary.f32(i32 46, float %201, float %297, float %309)  ; FMad(a,b,c)
  %311 = call float @dx.op.tertiary.f32(i32 46, float %202, float %298, float %310)  ; FMad(a,b,c)
  %312 = fadd fast float %311, %299
  %313 = fmul fast float %301, %200
  %314 = call float @dx.op.tertiary.f32(i32 46, float %201, float %302, float %313)  ; FMad(a,b,c)
  %315 = call float @dx.op.tertiary.f32(i32 46, float %202, float %303, float %314)  ; FMad(a,b,c)
  %316 = fadd fast float %315, %304
  %317 = fcmp fast oge float %308, 1.000000e+00
  %318 = fcmp fast oge float %312, 1.000000e+00
  %319 = or i1 %317, %318
  %320 = fcmp fast olt float %308, 0.000000e+00
  %321 = fcmp fast olt float %312, 0.000000e+00
  %322 = or i1 %320, %321
  %323 = or i1 %319, %322
  br i1 %323, label %683, label %324, !dx.controlflow.hints !60

; <label>:324                                     ; preds = %289
  %325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %326 = extractvalue %dx.types.CBufRet.f32 %325, 0
  %327 = extractvalue %dx.types.CBufRet.f32 %325, 1
  %328 = extractvalue %dx.types.CBufRet.f32 %325, 2
  %329 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %36, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %330 = extractvalue %dx.types.CBufRet.i32 %329, 2
  %331 = uitofp i32 %330 to float
  %332 = extractvalue %dx.types.CBufRet.i32 %329, 3
  %333 = uitofp i32 %332 to float
  %334 = extractvalue %dx.types.CBufRet.f32 %325, 3
  %335 = fmul fast float %334, 2.000000e+00
  %336 = fsub fast float %308, %326
  %337 = fsub fast float %312, %327
  %338 = fmul fast float %335, %336
  %339 = fmul fast float %335, %337
  %340 = fdiv fast float 1.000000e+00, %185
  %341 = fmul fast float %339, %340
  %342 = call float @dx.op.unary.f32(i32 6, float %341)  ; FAbs(value)
  %343 = fmul fast float %328, %202
  %344 = fmul fast float %343, %335
  %345 = call float @dx.op.unary.f32(i32 6, float %344)  ; FAbs(value)
  %346 = call float @dx.op.unary.f32(i32 6, float %338)  ; FAbs(value)
  %347 = call float @dx.op.binary.f32(i32 35, float %345, float %342)  ; FMax(a,b)
  %348 = call float @dx.op.binary.f32(i32 35, float %346, float %347)  ; FMax(a,b)
  %349 = fmul fast float %348, 2.000000e+00
  %350 = call float @dx.op.unary.f32(i32 23, float %349)  ; Log(value)
  %351 = call float @dx.op.binary.f32(i32 35, float %350, float %331)  ; FMax(a,b)
  %352 = call float @dx.op.unary.f32(i32 22, float %351)  ; Frc(value)
  %353 = fadd fast float %352, 0xBFEA666660000000
  %354 = fmul fast float %353, 8.000000e+00
  %355 = call float @dx.op.unary.f32(i32 7, float %354)  ; Saturate(value)
  %356 = call float @dx.op.unary.f32(i32 27, float %351)  ; Round_ni(value)
  %357 = fadd fast float %356, %355
  %358 = call float @dx.op.binary.f32(i32 36, float %357, float %333)  ; FMin(a,b)
  %359 = call float @dx.op.unary.f32(i32 27, float %358)  ; Round_ni(value)
  %360 = fsub fast float -0.000000e+00, %359
  %361 = call float @dx.op.unary.f32(i32 21, float %360)  ; Exp(value)
  %362 = fmul fast float %361, %335
  %363 = fmul fast float %362, %308
  %364 = fmul fast float %362, %312
  %365 = fmul fast float %363, 2.500000e-01
  %366 = fmul fast float %364, 2.500000e-01
  %367 = fadd fast float %365, 5.000000e-01
  %368 = fadd fast float %366, 5.000000e-01
  %369 = fsub fast float %333, %331
  %370 = fptoui float %369 to i32
  %371 = add i32 %370, 320
  %372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 %371)  ; CBufferLoadLegacy(handle,regIndex)
  %373 = extractvalue %dx.types.CBufRet.f32 %372, 0
  %374 = extractvalue %dx.types.CBufRet.f32 %372, 1
  %375 = fcmp fast une float %358, %333
  %376 = fsub fast float %308, %373
  %377 = fsub fast float %312, %374
  %378 = call float @dx.op.unary.f32(i32 6, float %376)  ; FAbs(value)
  %379 = call float @dx.op.unary.f32(i32 6, float %377)  ; FAbs(value)
  %380 = fmul fast float %378, %362
  %381 = fmul fast float %379, %362
  %382 = fcmp fast olt float %380, 1.000000e+00
  %383 = fcmp fast olt float %381, 1.000000e+00
  %384 = and i1 %382, %383
  %385 = or i1 %375, %384
  br i1 %385, label %386, label %683, !dx.controlflow.hints !61

; <label>:386                                     ; preds = %324
  %387 = fmul fast float %364, 5.000000e-01
  %388 = fmul fast float %363, 5.000000e-01
  %389 = fadd fast float %387, 5.000000e-01
  %390 = fadd fast float %388, 5.000000e-01
  %391 = sitofp i32 %330 to float
  %392 = fsub fast float %358, %391
  %393 = call float @dx.op.unary.f32(i32 27, float %392)  ; Round_ni(value)
  %394 = call float @dx.op.unary.f32(i32 22, float %358)  ; Frc(value)
  %395 = call float @dx.op.unary.f32(i32 22, float %390)  ; Frc(value)
  %396 = call float @dx.op.unary.f32(i32 22, float %389)  ; Frc(value)
  %397 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %30, float %395, float %396, float %393, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %398 = extractvalue %dx.types.ResRet.f32 %397, 0
  %399 = extractvalue %dx.types.ResRet.f32 %397, 1
  %400 = extractvalue %dx.types.ResRet.f32 %397, 2
  %401 = extractvalue %dx.types.ResRet.f32 %397, 3
  %402 = fcmp fast ogt float %394, 0.000000e+00
  br i1 %402, label %403, label %424, !dx.controlflow.hints !62

; <label>:403                                     ; preds = %386
  %404 = fadd fast float %393, 1.000000e+00
  %405 = call float @dx.op.unary.f32(i32 22, float %367)  ; Frc(value)
  %406 = call float @dx.op.unary.f32(i32 22, float %368)  ; Frc(value)
  %407 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %30, float %405, float %406, float %404, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %408 = extractvalue %dx.types.ResRet.f32 %407, 0
  %409 = extractvalue %dx.types.ResRet.f32 %407, 1
  %410 = extractvalue %dx.types.ResRet.f32 %407, 2
  %411 = extractvalue %dx.types.ResRet.f32 %407, 3
  %412 = fsub fast float %408, %398
  %413 = fsub fast float %409, %399
  %414 = fsub fast float %410, %400
  %415 = fsub fast float %411, %401
  %416 = fmul fast float %412, %394
  %417 = fmul fast float %413, %394
  %418 = fmul fast float %414, %394
  %419 = fmul fast float %415, %394
  %420 = fadd fast float %416, %398
  %421 = fadd fast float %417, %399
  %422 = fadd fast float %418, %400
  %423 = fadd fast float %419, %401
  br label %424

; <label>:424                                     ; preds = %403, %386
  %425 = phi float [ %420, %403 ], [ %398, %386 ]
  %426 = phi float [ %421, %403 ], [ %399, %386 ]
  %427 = phi float [ %422, %403 ], [ %400, %386 ]
  %428 = phi float [ %423, %403 ], [ %401, %386 ]
  %429 = fadd fast float %425, -5.000000e-01
  %430 = fadd fast float %427, -5.000000e-01
  %431 = fmul fast float %429, 0xBFD5555560000000
  %432 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %430, float %431)  ; FMad(a,b,c)
  %433 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %426, float 0.000000e+00)  ; FMad(a,b,c)
  %434 = fadd fast float %433, %428
  %435 = fmul fast float %429, -7.500000e-01
  %436 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %430, float %435)  ; FMad(a,b,c)
  %437 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %426, float 0.000000e+00)  ; FMad(a,b,c)
  %438 = fadd fast float %437, %428
  %439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %440 = extractvalue %dx.types.CBufRet.f32 %439, 0
  %441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %442 = extractvalue %dx.types.CBufRet.f32 %441, 0
  %443 = extractvalue %dx.types.CBufRet.f32 %441, 1
  %444 = extractvalue %dx.types.CBufRet.f32 %441, 2
  %445 = extractvalue %dx.types.CBufRet.f32 %441, 3
  %446 = fsub fast float %442, %432
  %447 = fsub fast float %443, %434
  %448 = fsub fast float %444, %436
  %449 = fsub fast float %445, %438
  %450 = fmul fast float %446, %440
  %451 = fmul fast float %447, %440
  %452 = fmul fast float %448, %440
  %453 = fmul fast float %449, %440
  %454 = fadd fast float %450, %432
  %455 = fadd fast float %451, %434
  %456 = fadd fast float %452, %436
  %457 = fadd fast float %453, %438
  %458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %459 = extractvalue %dx.types.ResRet.i32 %458, 0
  %460 = and i32 %459, 536870911
  %461 = uitofp i32 %460 to float
  %462 = fmul fast float %461, %308
  %463 = fmul fast float %461, %312
  %464 = fptoui float %462 to i32
  %465 = fptoui float %463 to i32
  %466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %467 = extractvalue %dx.types.ResRet.i32 %466, 0
  %468 = and i32 %467, 31
  %469 = lshr i32 %464, %468
  %470 = lshr i32 %465, %468
  %471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %472 = extractvalue %dx.types.ResRet.i32 %471, 0
  %473 = and i32 %472, 31
  %474 = shl i32 1, %473
  %475 = call i32 @dx.op.binary.i32(i32 40, i32 %474, i32 4)  ; UMin(a,b)
  %476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %477 = extractvalue %dx.types.ResRet.i32 %476, 0
  %478 = extractvalue %dx.types.ResRet.i32 %476, 1
  %479 = icmp eq i32 %475, 0
  br i1 %479, label %521, label %480

; <label>:480                                     ; preds = %424
  br label %481

; <label>:481                                     ; preds = %509, %480
  %482 = phi i32 [ %512, %509 ], [ 0, %480 ]
  %483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %484 = extractvalue %dx.types.ResRet.i32 %483, 0
  %485 = lshr i32 %484, 16
  %486 = and i32 %485, 31
  %487 = shl i32 %470, %486
  %488 = add i32 %487, %469
  %489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %490 = extractvalue %dx.types.ResRet.i32 %489, 0
  %491 = and i32 %490, 31
  %492 = shl i32 %488, %491
  %493 = add i32 %492, %482
  %494 = shl i32 %493, 2
  %495 = add i32 %494, 32
  %496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %497 = extractvalue %dx.types.ResRet.i32 %496, 0
  %498 = icmp slt i32 %497, 0
  %499 = getelementptr [12 x float], [12 x float]* %40, i32 0, i32 %482
  %500 = getelementptr [12 x float], [12 x float]* %41, i32 0, i32 %482
  %501 = bitcast float* %499 to i32*
  %502 = bitcast float* %500 to i32*
  br i1 %498, label %503, label %509, !dx.controlflow.hints !63

; <label>:503                                     ; preds = %481
  %504 = and i32 %497, 1073741823
  %505 = add nuw nsw i32 %504, 20
  %506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %505, i32 undef)  ; BufferLoad(srv,index,wot)
  %507 = extractvalue %dx.types.ResRet.i32 %506, 0
  %508 = extractvalue %dx.types.ResRet.i32 %506, 1
  br label %509

; <label>:509                                     ; preds = %503, %481
  %510 = phi i32 [ %507, %503 ], [ %477, %481 ]
  %511 = phi i32 [ %508, %503 ], [ %478, %481 ]
  store i32 %510, i32* %501, align 4
  store i32 %511, i32* %502, align 4
  %512 = add nuw i32 %482, 1
  %513 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %36, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %514 = extractvalue %dx.types.CBufRet.i32 %513, 2
  %515 = icmp eq i32 %514, 0
  %516 = icmp ugt i32 %497, -1073741825
  %517 = and i1 %516, %515
  %518 = icmp ult i32 %512, %475
  %519 = and i1 %517, %518
  br i1 %519, label %481, label %520, !dx.controlflow.hints !64

; <label>:520                                     ; preds = %509
  br label %521

; <label>:521                                     ; preds = %520, %424
  %522 = phi i32 [ 0, %424 ], [ %512, %520 ]
  %523 = extractvalue %dx.types.CBufRet.f32 %286, 2
  %524 = fptoui float %523 to i32
  %525 = icmp eq i32 %524, 0
  br i1 %525, label %577, label %526

; <label>:526                                     ; preds = %521
  br label %527

; <label>:527                                     ; preds = %572, %526
  %528 = phi i32 [ %573, %572 ], [ %522, %526 ]
  %529 = phi i32 [ %574, %572 ], [ 0, %526 ]
  %530 = lshr i32 %529, 2
  %531 = and i32 %529, 3
  %532 = add nuw nsw i32 %530, 83
  %533 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %36, i32 %532)  ; CBufferLoadLegacy(handle,regIndex)
  %534 = extractvalue %dx.types.CBufRet.i32 %533, 0
  %535 = extractvalue %dx.types.CBufRet.i32 %533, 1
  %536 = extractvalue %dx.types.CBufRet.i32 %533, 2
  %537 = extractvalue %dx.types.CBufRet.i32 %533, 3
  %538 = getelementptr inbounds [4 x i32], [4 x i32]* %37, i32 0, i32 0
  store i32 %534, i32* %538, align 4
  %539 = getelementptr inbounds [4 x i32], [4 x i32]* %37, i32 0, i32 1
  store i32 %535, i32* %539, align 4
  %540 = getelementptr inbounds [4 x i32], [4 x i32]* %37, i32 0, i32 2
  store i32 %536, i32* %540, align 4
  %541 = getelementptr inbounds [4 x i32], [4 x i32]* %37, i32 0, i32 3
  store i32 %537, i32* %541, align 4
  %542 = getelementptr inbounds [4 x i32], [4 x i32]* %37, i32 0, i32 %531
  %543 = load i32, i32* %542, align 4, !tbaa !65, !noalias !69
  %544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %545 = extractvalue %dx.types.ResRet.i32 %544, 0
  %546 = lshr i32 %545, 16
  %547 = and i32 %546, 31
  %548 = shl i32 %470, %547
  %549 = add i32 %548, %469
  %550 = shl i32 %549, 2
  %551 = add i32 %550, %543
  %552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %551, i32 undef)  ; BufferLoad(srv,index,wot)
  %553 = extractvalue %dx.types.ResRet.i32 %552, 0
  %554 = icmp eq i32 %553, 0
  br i1 %554, label %572, label %555, !dx.controlflow.hints !74

; <label>:555                                     ; preds = %527
  %556 = icmp slt i32 %553, 0
  %557 = getelementptr [12 x float], [12 x float]* %40, i32 0, i32 %528
  %558 = getelementptr [12 x float], [12 x float]* %41, i32 0, i32 %528
  %559 = bitcast float* %557 to i32*
  %560 = bitcast float* %558 to i32*
  br i1 %556, label %561, label %568, !dx.controlflow.hints !75

; <label>:561                                     ; preds = %555
  %562 = and i32 %553, 1073741823
  %563 = add i32 %543, 20
  %564 = add i32 %563, %562
  %565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %564, i32 undef)  ; BufferLoad(srv,index,wot)
  %566 = extractvalue %dx.types.ResRet.i32 %565, 0
  %567 = extractvalue %dx.types.ResRet.i32 %565, 1
  br label %568

; <label>:568                                     ; preds = %561, %555
  %569 = phi i32 [ %566, %561 ], [ %477, %555 ]
  %570 = phi i32 [ %567, %561 ], [ %478, %555 ]
  store i32 %569, i32* %559, align 4
  store i32 %570, i32* %560, align 4
  %571 = add i32 %528, 1
  br label %572

; <label>:572                                     ; preds = %568, %527
  %573 = phi i32 [ %528, %527 ], [ %571, %568 ]
  %574 = add nuw i32 %529, 1
  %575 = icmp eq i32 %574, %524
  br i1 %575, label %576, label %527

; <label>:576                                     ; preds = %572
  br label %577

; <label>:577                                     ; preds = %576, %521
  %578 = phi i32 [ %522, %521 ], [ %573, %576 ]
  %579 = icmp eq i32 %578, 1
  %580 = getelementptr [12 x float], [12 x float]* %40, i32 0, i32 0
  %581 = getelementptr [12 x float], [12 x float]* %41, i32 0, i32 0
  br i1 %579, label %582, label %585, !dx.controlflow.hints !76

; <label>:582                                     ; preds = %577
  %583 = load float, float* %580, align 4
  %584 = load float, float* %581, align 4
  br label %612

; <label>:585                                     ; preds = %577
  %586 = load float, float* %580, align 4
  %587 = load float, float* %581, align 4
  %588 = fdiv fast float 1.000000e+00, %587
  %589 = fsub fast float %586, %588
  %590 = icmp ugt i32 %578, 1
  br i1 %590, label %591, label %607

; <label>:591                                     ; preds = %585
  br label %592

; <label>:592                                     ; preds = %592, %591
  %593 = phi float [ %602, %592 ], [ %589, %591 ]
  %594 = phi float [ %603, %592 ], [ %586, %591 ]
  %595 = phi i32 [ %604, %592 ], [ 1, %591 ]
  %596 = getelementptr [12 x float], [12 x float]* %40, i32 0, i32 %595
  %597 = load float, float* %596, align 4
  %598 = getelementptr [12 x float], [12 x float]* %41, i32 0, i32 %595
  %599 = load float, float* %598, align 4
  %600 = fdiv fast float 1.000000e+00, %599
  %601 = fsub fast float %597, %600
  %602 = call float @dx.op.binary.f32(i32 36, float %593, float %601)  ; FMin(a,b)
  %603 = call float @dx.op.binary.f32(i32 35, float %594, float %597)  ; FMax(a,b)
  %604 = add nuw i32 %595, 1
  %605 = icmp eq i32 %604, %578
  br i1 %605, label %606, label %592

; <label>:606                                     ; preds = %592
  br label %607

; <label>:607                                     ; preds = %606, %585
  %608 = phi float [ %589, %585 ], [ %602, %606 ]
  %609 = phi float [ %586, %585 ], [ %603, %606 ]
  %610 = fsub fast float %609, %608
  %611 = fdiv fast float 1.000000e+00, %610
  br label %612

; <label>:612                                     ; preds = %607, %582
  %613 = phi float [ %583, %582 ], [ %609, %607 ]
  %614 = phi float [ %584, %582 ], [ %611, %607 ]
  %615 = fadd fast float %316, %613
  %616 = fmul fast float %615, %614
  %617 = call float @dx.op.unary.f32(i32 7, float %616)  ; Saturate(value)
  %618 = fmul fast float %617, 2.000000e+00
  %619 = fsub fast float 1.000000e+00, %618
  %620 = fmul fast float %454, %454
  %621 = fsub fast float %455, %620
  %622 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %621)  ; FMax(a,b)
  %623 = fdiv fast float 1.000000e+00, %622
  %624 = fmul fast float %455, %454
  %625 = fsub fast float %456, %624
  %626 = fsub fast float %619, %454
  %627 = fmul fast float %619, %619
  %628 = fsub fast float %627, %455
  %629 = fmul fast float %623, %625
  %630 = fmul fast float %629, %626
  %631 = fsub fast float %628, %630
  %632 = fmul fast float %455, %455
  %633 = fsub fast float %457, %632
  %634 = fmul fast float %625, %625
  %635 = fmul fast float %634, %623
  %636 = fsub fast float %633, %635
  %637 = fdiv fast float %631, %636
  %638 = fmul fast float %637, %625
  %639 = fsub fast float %626, %638
  %640 = fmul fast float %639, %623
  %641 = fmul fast float %640, %454
  %642 = fsub fast float 1.000000e+00, %641
  %643 = fmul fast float %637, %455
  %644 = fsub fast float %642, %643
  %645 = fmul fast float %640, %640
  %646 = fmul fast float %637, 4.000000e+00
  %647 = fmul fast float %646, %644
  %648 = fsub fast float %645, %647
  %649 = call float @dx.op.unary.f32(i32 24, float %648)  ; Sqrt(value)
  %650 = fcmp fast oge float %640, 0.000000e+00
  %651 = fsub fast float -0.000000e+00, %649
  %652 = select i1 %650, float %651, float %649
  %653 = fsub fast float %652, %640
  %654 = fdiv fast float %653, %637
  %655 = fdiv fast float %644, %653
  %656 = fmul fast float %654, 5.000000e-01
  %657 = fmul fast float %655, 2.000000e+00
  %658 = select i1 %650, float %656, float %657
  %659 = select i1 %650, float %657, float %656
  %660 = call float @dx.op.binary.f32(i32 35, float %658, float %659)  ; FMax(a,b)
  %661 = call float @dx.op.binary.f32(i32 36, float %658, float %659)  ; FMin(a,b)
  %662 = fcmp fast ogt float %619, %660
  %663 = fsub fast float %619, %661
  %664 = fsub fast float %619, %660
  %665 = fsub fast float %660, %661
  %666 = select i1 %662, float %664, float %665
  %667 = fmul float %663, %666
  %668 = select i1 %662, float %661, float %619
  %669 = fcmp fast ogt float %619, %661
  %670 = fmul fast float %668, %660
  %671 = fadd fast float %668, %660
  %672 = fmul fast float %671, %454
  %673 = fadd fast float %670, %455
  %674 = fsub fast float %673, %672
  %675 = fdiv fast float %674, %667
  %676 = select i1 %669, float %675, float 0.000000e+00
  %677 = fsub fast float 1.000000e+00, %676
  %678 = select i1 %662, float %677, float %676
  %679 = call float @dx.op.unary.f32(i32 7, float %678)  ; Saturate(value)
  %680 = extractvalue %dx.types.CBufRet.f32 %439, 3
  %681 = fmul fast float %680, %679
  %682 = fsub fast float 1.000000e+00, %681
  br label %683

; <label>:683                                     ; preds = %612, %324, %289, %285, %280
  %684 = phi float [ 1.000000e+00, %280 ], [ %682, %612 ], [ 1.000000e+00, %289 ], [ 1.000000e+00, %324 ], [ 1.000000e+00, %285 ]
  br i1 %284, label %685, label %686, !dx.controlflow.hints !77

; <label>:685                                     ; preds = %683
  br label %686

; <label>:686                                     ; preds = %685, %683
  %687 = phi float [ -1.310720e+05, %685 ], [ %684, %683 ]
  %688 = fcmp fast ogt float %281, 0.000000e+00
  br i1 %688, label %689, label %844, !dx.controlflow.hints !78

; <label>:689                                     ; preds = %686
  %690 = fadd fast float %245, %231
  %691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %692 = extractvalue %dx.types.CBufRet.f32 %691, 2
  %693 = extractvalue %dx.types.CBufRet.f32 %691, 3
  %694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %695 = extractvalue %dx.types.CBufRet.f32 %694, 1
  %696 = call float @dx.op.binary.f32(i32 35, float %690, float 0.000000e+00)  ; FMax(a,b)
  %697 = fadd fast float %696, 0x3F10000000000000
  %698 = fcmp fast oeq float %695, 0.000000e+00
  br i1 %698, label %700, label %699, !dx.controlflow.hints !79

; <label>:699                                     ; preds = %689
  br label %767

; <label>:700                                     ; preds = %689
  %701 = extractvalue %dx.types.CBufRet.f32 %691, 1
  %702 = extractvalue %dx.types.CBufRet.f32 %691, 0
  %703 = fmul fast float %702, %238
  %704 = fmul fast float %701, %239
  %705 = fadd fast float %703, 5.000000e-01
  %706 = call float @dx.op.unary.f32(i32 27, float %705)  ; Round_ni(value)
  %707 = fadd fast float %704, 5.000000e-01
  %708 = call float @dx.op.unary.f32(i32 27, float %707)  ; Round_ni(value)
  %709 = fsub fast float %705, %706
  %710 = fsub fast float %707, %708
  %711 = fadd fast float %706, -5.000000e-01
  %712 = fadd fast float %708, -5.000000e-01
  %713 = fmul fast float %709, 2.000000e+00
  %714 = fsub fast float 3.000000e+00, %713
  %715 = fadd fast float %713, 1.000000e+00
  %716 = fsub fast float 2.000000e+00, %709
  %717 = bitcast float %714 to i32
  %718 = sub nsw i32 2129859010, %717
  %719 = bitcast i32 %718 to float
  %720 = fmul fast float %719, %716
  %721 = fadd fast float %720, -1.000000e+00
  %722 = bitcast float %715 to i32
  %723 = sub nsw i32 2129859010, %722
  %724 = bitcast i32 %723 to float
  %725 = fmul fast float %724, %709
  %726 = fadd fast float %725, 1.000000e+00
  %727 = fmul fast float %710, 2.000000e+00
  %728 = fsub fast float 3.000000e+00, %727
  %729 = fadd fast float %727, 1.000000e+00
  %730 = fsub fast float 2.000000e+00, %710
  %731 = bitcast float %728 to i32
  %732 = sub nsw i32 2129859010, %731
  %733 = bitcast i32 %732 to float
  %734 = fmul fast float %733, %730
  %735 = fadd fast float %734, -1.000000e+00
  %736 = bitcast float %729 to i32
  %737 = sub nsw i32 2129859010, %736
  %738 = bitcast i32 %737 to float
  %739 = fmul fast float %738, %710
  %740 = fadd fast float %739, 1.000000e+00
  %741 = fadd fast float %721, %711
  %742 = fmul fast float %741, %692
  %743 = fadd fast float %735, %712
  %744 = fmul fast float %743, %693
  %745 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %33, float %742, float %744, float undef, float undef, i32 0, i32 0, i32 undef, float %697)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %746 = extractvalue %dx.types.ResRet.f32 %745, 0
  %747 = fmul fast float %746, %714
  %748 = fadd fast float %726, %711
  %749 = fmul fast float %748, %692
  %750 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %33, float %749, float %744, float undef, float undef, i32 0, i32 0, i32 undef, float %697)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %751 = extractvalue %dx.types.ResRet.f32 %750, 0
  %752 = fmul fast float %751, %715
  %753 = fadd fast float %740, %712
  %754 = fmul fast float %753, %693
  %755 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %33, float %742, float %754, float undef, float undef, i32 0, i32 0, i32 undef, float %697)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %756 = extractvalue %dx.types.ResRet.f32 %755, 0
  %757 = fmul fast float %756, %714
  %758 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %33, float %749, float %754, float undef, float undef, i32 0, i32 0, i32 undef, float %697)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %759 = extractvalue %dx.types.ResRet.f32 %758, 0
  %760 = fmul fast float %759, %715
  %761 = fadd fast float %760, %757
  %762 = fmul fast float %761, %729
  %763 = fadd fast float %752, %747
  %764 = fmul fast float %763, %728
  %765 = fadd fast float %764, %762
  %766 = fmul fast float %765, 6.250000e-02
  br label %844

; <label>:767                                     ; preds = %813, %699
  %768 = phi float [ %808, %813 ], [ 0.000000e+00, %699 ]
  %769 = phi float [ %810, %813 ], [ 0.000000e+00, %699 ]
  %770 = phi i32 [ %814, %813 ], [ 0, %699 ]
  %771 = mul i32 %770, 2
  %772 = add i32 0, %771
  %773 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %772
  %774 = load float, float* %773, align 4
  %775 = mul i32 %770, 2
  %776 = add i32 1, %775
  %777 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %776
  %778 = load float, float* %777, align 4
  %779 = call float @dx.op.tertiary.f32(i32 46, float %778, float -0.000000e+00, float %774)  ; FMad(a,b,c)
  %780 = fmul fast float %779, %695
  %781 = fmul fast float %778, %695
  %782 = fadd fast float %780, %238
  %783 = fadd fast float %781, %239
  %784 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %11, %dx.types.Handle %32, float %782, float %783, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %785 = extractvalue %dx.types.ResRet.f32 %784, 0
  %786 = extractvalue %dx.types.ResRet.f32 %784, 1
  %787 = extractvalue %dx.types.ResRet.f32 %784, 2
  %788 = extractvalue %dx.types.ResRet.f32 %784, 3
  %789 = getelementptr inbounds [4 x float], [4 x float]* %47, i32 0, i32 0
  store float %785, float* %789, align 4
  %790 = getelementptr inbounds [4 x float], [4 x float]* %47, i32 0, i32 1
  store float %786, float* %790, align 4
  %791 = getelementptr inbounds [4 x float], [4 x float]* %47, i32 0, i32 2
  store float %787, float* %791, align 4
  %792 = getelementptr inbounds [4 x float], [4 x float]* %47, i32 0, i32 3
  store float %788, float* %792, align 4
  %793 = fsub fast float %785, %697
  %794 = fcmp fast olt float %793, 0.000000e+00
  %795 = select i1 %794, float 0.000000e+00, float 1.000000e+00
  %796 = fadd fast float %795, %768
  %797 = fmul fast float %795, %793
  %798 = fadd fast float %797, %769
  br label %799

; <label>:799                                     ; preds = %799, %767
  %800 = phi i32 [ 1, %767 ], [ %811, %799 ]
  %801 = phi float [ %798, %767 ], [ %810, %799 ]
  %802 = phi float [ %796, %767 ], [ %808, %799 ]
  %803 = getelementptr [4 x float], [4 x float]* %47, i32 0, i32 %800
  %804 = load float, float* %803, align 4, !tbaa !80, !noalias !69
  %805 = fsub fast float %804, %697
  %806 = fcmp fast olt float %805, 0.000000e+00
  %807 = select i1 %806, float 0.000000e+00, float 1.000000e+00
  %808 = fadd fast float %807, %802
  %809 = fmul fast float %807, %805
  %810 = fadd fast float %809, %801
  %811 = add nuw nsw i32 %800, 1
  %812 = icmp eq i32 %811, 4
  br i1 %812, label %813, label %799, !llvm.loop !82

; <label>:813                                     ; preds = %799
  %814 = add nuw nsw i32 %770, 1
  %815 = icmp eq i32 %814, 8
  br i1 %815, label %816, label %767, !llvm.loop !84

; <label>:816                                     ; preds = %813
  %817 = fdiv fast float 1.000000e+00, %808
  %818 = fmul fast float %817, %810
  %819 = fdiv fast float 1.000000e+00, %697
  %820 = fmul fast float %818, %819
  %821 = call float @dx.op.unary.f32(i32 7, float %820)  ; Saturate(value)
  %822 = call float @dx.op.binary.f32(i32 35, float %821, float 0.000000e+00)  ; FMax(a,b)
  %823 = fmul fast float %808, 3.125000e-02
  %824 = call float @dx.op.unary.f32(i32 7, float %823)  ; Saturate(value)
  %825 = fmul fast float %824, 2.000000e+00
  %826 = fadd fast float %825, -1.000000e+00
  %827 = fcmp fast ogt float %826, 0.000000e+00
  %828 = fcmp fast olt float %826, 0.000000e+00
  %829 = zext i1 %827 to i32
  %830 = zext i1 %828 to i32
  %831 = sub nsw i32 %829, %830
  %832 = sitofp i32 %831 to float
  %833 = fmul fast float %832, %826
  %834 = fsub fast float 1.000000e+00, %833
  %835 = fmul fast float %834, %834
  %836 = fmul fast float %835, %834
  %837 = fsub fast float %834, %836
  %838 = fmul fast float %837, %822
  %839 = fsub fast float 1.000000e+00, %836
  %840 = fsub fast float %839, %838
  %841 = fmul fast float %832, 5.000000e-01
  %842 = fmul fast float %841, %840
  %843 = fsub fast float 5.000000e-01, %842
  br label %844

; <label>:844                                     ; preds = %816, %700, %686
  %845 = phi float [ 1.000000e+00, %686 ], [ %766, %700 ], [ %843, %816 ]
  %846 = fsub fast float %845, %687
  %847 = fmul fast float %846, %281
  %848 = fadd fast float %847, %687
  br label %849

; <label>:849                                     ; preds = %844, %182
  %850 = phi float [ %848, %844 ], [ 1.000000e+00, %182 ]
  %851 = call float @dx.op.binary.f32(i32 36, float %850, float %850)  ; FMin(a,b)
  %852 = call float @dx.op.binary.f32(i32 36, float %850, float %851)  ; FMin(a,b)
  %853 = fcmp fast ogt float %852, 0.000000e+00
  br i1 %853, label %854, label %1019, !dx.controlflow.hints !85

; <label>:854                                     ; preds = %849
  %855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %856 = extractvalue %dx.types.CBufRet.f32 %855, 0
  %857 = extractvalue %dx.types.CBufRet.f32 %855, 1
  %858 = extractvalue %dx.types.CBufRet.f32 %855, 2
  %859 = extractvalue %dx.types.CBufRet.f32 %855, 3
  %860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %861 = extractvalue %dx.types.CBufRet.f32 %860, 0
  %862 = extractvalue %dx.types.CBufRet.f32 %860, 1
  %863 = extractvalue %dx.types.CBufRet.f32 %860, 2
  %864 = extractvalue %dx.types.CBufRet.f32 %860, 3
  %865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %866 = extractvalue %dx.types.CBufRet.f32 %865, 0
  %867 = extractvalue %dx.types.CBufRet.f32 %865, 1
  %868 = extractvalue %dx.types.CBufRet.f32 %865, 2
  %869 = extractvalue %dx.types.CBufRet.f32 %865, 3
  %870 = fmul fast float %856, %200
  %871 = call float @dx.op.tertiary.f32(i32 46, float %201, float %857, float %870)  ; FMad(a,b,c)
  %872 = call float @dx.op.tertiary.f32(i32 46, float %202, float %858, float %871)  ; FMad(a,b,c)
  %873 = fadd fast float %872, %859
  %874 = fmul fast float %861, %200
  %875 = call float @dx.op.tertiary.f32(i32 46, float %201, float %862, float %874)  ; FMad(a,b,c)
  %876 = call float @dx.op.tertiary.f32(i32 46, float %202, float %863, float %875)  ; FMad(a,b,c)
  %877 = fadd fast float %876, %864
  %878 = fmul fast float %866, %200
  %879 = call float @dx.op.tertiary.f32(i32 46, float %201, float %867, float %878)  ; FMad(a,b,c)
  %880 = call float @dx.op.tertiary.f32(i32 46, float %202, float %868, float %879)  ; FMad(a,b,c)
  %881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %882 = extractvalue %dx.types.CBufRet.f32 %881, 0
  %883 = extractvalue %dx.types.CBufRet.f32 %881, 1
  %884 = extractvalue %dx.types.CBufRet.f32 %881, 3
  %885 = fmul fast float %884, %873
  %886 = fmul fast float %884, %877
  %887 = fadd fast float %885, %882
  %888 = fadd fast float %886, %883
  %889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %890 = extractvalue %dx.types.CBufRet.f32 %889, 0
  %891 = extractvalue %dx.types.CBufRet.f32 %889, 1
  %892 = fsub fast float %887, %890
  %893 = fsub fast float %888, %891
  %894 = fcmp fast olt float %892, 0.000000e+00
  %895 = fcmp fast olt float %893, 0.000000e+00
  %896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %897 = extractvalue %dx.types.CBufRet.f32 %896, 0
  %898 = extractvalue %dx.types.CBufRet.f32 %896, 1
  %899 = extractvalue %dx.types.CBufRet.f32 %896, 2
  %900 = extractvalue %dx.types.CBufRet.f32 %896, 3
  %901 = select i1 %894, float %897, float %899
  %902 = select i1 %895, float %898, float %900
  %903 = fmul fast float %901, %892
  %904 = fmul fast float %902, %893
  %905 = call float @dx.op.unary.f32(i32 6, float %903)  ; FAbs(value)
  %906 = call float @dx.op.unary.f32(i32 6, float %904)  ; FAbs(value)
  %907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %908 = extractvalue %dx.types.CBufRet.f32 %907, 0
  %909 = call float @dx.op.binary.f32(i32 35, float %905, float %906)  ; FMax(a,b)
  %910 = fsub fast float %908, %909
  %911 = call float @dx.op.unary.f32(i32 7, float %910)  ; Saturate(value)
  %912 = fcmp fast ogt float %911, 0.000000e+00
  br i1 %912, label %913, label %954, !dx.controlflow.hints !86

; <label>:913                                     ; preds = %854
  %914 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %31, float %887, float %888, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %915 = extractvalue %dx.types.ResRet.f32 %914, 1
  %916 = fcmp fast ogt float %915, 0.000000e+00
  br i1 %916, label %917, label %949, !dx.controlflow.hints !87

; <label>:917                                     ; preds = %913
  %918 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %31, float %887, float %888, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %919 = extractvalue %dx.types.ResRet.f32 %918, 0
  %920 = extractvalue %dx.types.ResRet.f32 %918, 1
  %921 = extractvalue %dx.types.ResRet.f32 %918, 2
  %922 = extractvalue %dx.types.ResRet.f32 %918, 3
  %923 = fsub fast float 1.000000e+00, %869
  %924 = fsub fast float %923, %880
  %925 = fmul fast float %924, 0x400921FB60000000
  %926 = fadd fast float %925, 0x3FF921FB60000000
  %927 = call float @dx.op.unary.f32(i32 13, float %926)  ; Sin(value)
  %928 = fadd fast float %927, -1.000000e+00
  %929 = fmul fast float %928, 0x3FD45F3060000000
  %930 = fmul fast float %924, 0x401921FB60000000
  %931 = fadd fast float %930, 0x400921FB60000000
  %932 = call float @dx.op.unary.f32(i32 13, float %931)  ; Sin(value)
  %933 = fadd fast float %932, 0x3E7777A5C0000000
  %934 = fmul fast float %933, 0x3FC45F3060000000
  %935 = fmul fast float %924, 0x4022D97C80000000
  %936 = fadd fast float %935, 0x4012D97C80000000
  %937 = call float @dx.op.unary.f32(i32 13, float %936)  ; Sin(value)
  %938 = fadd fast float %937, 1.000000e+00
  %939 = fmul fast float %938, 0x3FBB2995E0000000
  %940 = fmul fast float %924, 0x402921FB60000000
  %941 = fadd fast float %940, 0x401921FB60000000
  %942 = call float @dx.op.unary.f32(i32 13, float %941)  ; Sin(value)
  %943 = fadd fast float %942, 0xBE8777A5C0000000
  %944 = fmul fast float %943, 0x3FB45F3060000000
  %945 = call float @dx.op.dot4.f32(i32 56, float %919, float %920, float %921, float %922, float %929, float %934, float %939, float %944)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %946 = fmul fast float %945, 0xBFF7154760000000
  %947 = call float @dx.op.unary.f32(i32 21, float %946)  ; Exp(value)
  %948 = call float @dx.op.unary.f32(i32 7, float %947)  ; Saturate(value)
  br label %949

; <label>:949                                     ; preds = %917, %913
  %950 = phi float [ %948, %917 ], [ 1.000000e+00, %913 ]
  %951 = fadd fast float %950, -1.000000e+00
  %952 = fmul fast float %951, %911
  %953 = fadd fast float %952, 1.000000e+00
  br label %954

; <label>:954                                     ; preds = %949, %854
  %955 = phi float [ %953, %949 ], [ 1.000000e+00, %854 ]
  %956 = fmul fast float %955, %850
  %957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %958 = extractvalue %dx.types.CBufRet.f32 %957, 0
  %959 = extractvalue %dx.types.CBufRet.f32 %957, 1
  %960 = extractvalue %dx.types.CBufRet.f32 %957, 2
  %961 = fadd fast float %958, %86
  %962 = fadd fast float %959, %87
  %963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %964 = extractvalue %dx.types.CBufRet.f32 %963, 1
  %965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %966 = extractvalue %dx.types.CBufRet.f32 %965, 0
  %967 = extractvalue %dx.types.CBufRet.f32 %965, 1
  %968 = extractvalue %dx.types.CBufRet.f32 %965, 2
  %969 = fsub fast float -0.000000e+00, %961
  %970 = fsub fast float -0.000000e+00, %962
  %971 = fsub fast float %89, %960
  %972 = fadd fast float %971, %964
  %973 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %969, float %970, float %972)  ; Dot3(ax,ay,az,bx,by,bz)
  %974 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %966, float %967, float %968)  ; Dot3(ax,ay,az,bx,by,bz)
  %975 = fdiv fast float 1.000000e+00, %974
  %976 = fmul fast float %975, %973
  %977 = fmul fast float %966, %976
  %978 = fmul fast float %967, %976
  %979 = fadd fast float %977, %961
  %980 = fadd fast float %978, %962
  %981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %982 = extractvalue %dx.types.CBufRet.f32 %981, 0
  %983 = extractvalue %dx.types.CBufRet.f32 %981, 1
  %984 = fsub fast float %979, %982
  %985 = fsub fast float %980, %983
  %986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %987 = extractvalue %dx.types.CBufRet.f32 %986, 2
  %988 = extractvalue %dx.types.CBufRet.f32 %986, 3
  %989 = fmul fast float %984, %987
  %990 = fmul fast float %985, %988
  %991 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %36, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %992 = extractvalue %dx.types.CBufRet.i32 %991, 3
  %993 = icmp eq i32 %992, 0
  br i1 %993, label %999, label %994, !dx.controlflow.hints !88

; <label>:994                                     ; preds = %954
  %995 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %30, float %989, float %990, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %996 = extractvalue %dx.types.ResRet.f32 %995, 0
  %997 = extractvalue %dx.types.ResRet.f32 %995, 1
  %998 = extractvalue %dx.types.ResRet.f32 %995, 2
  br label %1004

; <label>:999                                     ; preds = %954
  %1000 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %31, float %989, float %990, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1001 = extractvalue %dx.types.ResRet.f32 %1000, 0
  %1002 = extractvalue %dx.types.ResRet.f32 %1000, 1
  %1003 = extractvalue %dx.types.ResRet.f32 %1000, 2
  br label %1004

; <label>:1004                                    ; preds = %999, %994
  %1005 = phi float [ %996, %994 ], [ %1001, %999 ]
  %1006 = phi float [ %997, %994 ], [ %1002, %999 ]
  %1007 = phi float [ %998, %994 ], [ %1003, %999 ]
  %1008 = extractvalue %dx.types.CBufRet.f32 %963, 2
  %1009 = fmul fast float %1008, %1005
  %1010 = extractvalue %dx.types.CBufRet.f32 %963, 0
  %1011 = fsub fast float %976, %1010
  %1012 = fsub fast float %1011, %1009
  %1013 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1012)  ; FMax(a,b)
  %1014 = fmul fast float %1013, %1006
  %1015 = call float @dx.op.binary.f32(i32 36, float %1007, float %1014)  ; FMin(a,b)
  %1016 = fmul fast float %1015, 0xBFF7154760000000
  %1017 = call float @dx.op.unary.f32(i32 21, float %1016)  ; Exp(value)
  %1018 = fmul fast float %956, %1017
  br label %1019

; <label>:1019                                    ; preds = %1004, %849
  %1020 = phi float [ %1018, %1004 ], [ %850, %849 ]
  %1021 = call float @dx.op.binary.f32(i32 36, float %1020, float %1020)  ; FMin(a,b)
  %1022 = call float @dx.op.binary.f32(i32 36, float %1020, float %1021)  ; FMin(a,b)
  %1023 = fcmp fast ogt float %1022, 0.000000e+00
  br i1 %1023, label %1024, label %1116, !dx.controlflow.hints !89

; <label>:1024                                    ; preds = %1019
  %1025 = icmp eq i32 %178, 0
  br i1 %1025, label %1103, label %1026, !dx.controlflow.hints !90

; <label>:1026                                    ; preds = %1024
  %1027 = fsub fast float %88, %177
  %1028 = fcmp fast ogt float %1027, 0.000000e+00
  %1029 = fmul fast float %183, 5.120000e+02
  %1030 = fmul fast float %184, 5.120000e+02
  %1031 = fmul fast float %185, 5.120000e+02
  %1032 = fadd fast float %1031, %88
  %1033 = fsub fast float %177, %1032
  %1034 = fmul fast float %1033, 2.000000e+00
  %1035 = fadd fast float %1034, %1032
  %1036 = select i1 %1028, float %1035, float %1032
  %1037 = fsub fast float %1036, %88
  %1038 = call float @dx.op.dot3.f32(i32 55, float %1029, float %1030, float %1037, float %1029, float %1030, float %1037)  ; Dot3(ax,ay,az,bx,by,bz)
  %1039 = call float @dx.op.unary.f32(i32 25, float %1038)  ; Rsqrt(value)
  %1040 = fmul fast float %1039, %1029
  %1041 = fmul fast float %1039, %1030
  %1042 = fmul fast float %1039, %1037
  %1043 = fsub fast float %177, %88
  %1044 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %1043)  ; Dot3(ax,ay,az,bx,by,bz)
  %1045 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1040, float %1041, float %1042)  ; Dot3(ax,ay,az,bx,by,bz)
  %1046 = fdiv fast float 1.000000e+00, %1045
  %1047 = fmul fast float %1046, %1044
  %1048 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %1027, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1049 = fcmp fast ogt float %1048, 0.000000e+00
  %1050 = fcmp fast olt float %1048, 0.000000e+00
  %1051 = zext i1 %1049 to i32
  %1052 = zext i1 %1050 to i32
  %1053 = sub nsw i32 %1051, %1052
  %1054 = sitofp i32 %1053 to float
  %1055 = fsub fast float %1036, %177
  %1056 = call float @dx.op.dot3.f32(i32 55, float %1029, float %1030, float %1055, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1057 = fcmp fast ogt float %1056, 0.000000e+00
  %1058 = fcmp fast olt float %1056, 0.000000e+00
  %1059 = zext i1 %1057 to i32
  %1060 = zext i1 %1058 to i32
  %1061 = sub nsw i32 %1059, %1060
  %1062 = sitofp i32 %1061 to float
  %1063 = fcmp fast une float %1054, %1062
  br i1 %1063, label %1064, label %1074, !dx.controlflow.hints !91

; <label>:1064                                    ; preds = %1026
  %1065 = fmul fast float %1047, %1042
  %1066 = fmul fast float %1047, %1041
  %1067 = fmul fast float %1047, %1040
  %1068 = fmul fast float %1067, %1067
  %1069 = fmul fast float %1066, %1066
  %1070 = fadd fast float %1068, %1069
  %1071 = fmul fast float %1065, %1065
  %1072 = fadd fast float %1070, %1071
  %1073 = call float @dx.op.unary.f32(i32 24, float %1072)  ; Sqrt(value)
  br label %1084

; <label>:1074                                    ; preds = %1026
  %1075 = icmp slt i32 %1053, 0
  br i1 %1075, label %1076, label %1084, !dx.controlflow.hints !92

; <label>:1076                                    ; preds = %1074
  %1077 = fsub fast float %88, %1036
  %1078 = fmul fast float %1029, %1029
  %1079 = fmul fast float %1030, %1030
  %1080 = fadd fast float %1078, %1079
  %1081 = fmul fast float %1077, %1077
  %1082 = fadd fast float %1080, %1081
  %1083 = call float @dx.op.unary.f32(i32 24, float %1082)  ; Sqrt(value)
  br label %1084

; <label>:1084                                    ; preds = %1076, %1074, %1064
  %1085 = phi float [ %1073, %1064 ], [ %1083, %1076 ], [ 0.000000e+00, %1074 ]
  %1086 = fsub fast float -0.000000e+00, %1085
  %1087 = select i1 %1028, float -0.000000e+00, float %1086
  %1088 = fmul fast float %174, 0x3FF7154760000000
  %1089 = fmul fast float %1088, %1087
  %1090 = fmul fast float %175, 0x3FF7154760000000
  %1091 = fmul fast float %1090, %1087
  %1092 = fmul fast float %176, 0x3FF7154760000000
  %1093 = fmul fast float %1092, %1087
  %1094 = call float @dx.op.unary.f32(i32 21, float %1089)  ; Exp(value)
  %1095 = call float @dx.op.unary.f32(i32 21, float %1091)  ; Exp(value)
  %1096 = call float @dx.op.unary.f32(i32 21, float %1093)  ; Exp(value)
  %1097 = call float @dx.op.unary.f32(i32 7, float %1094)  ; Saturate(value)
  %1098 = call float @dx.op.unary.f32(i32 7, float %1095)  ; Saturate(value)
  %1099 = call float @dx.op.unary.f32(i32 7, float %1096)  ; Saturate(value)
  %1100 = fmul fast float %1097, %194
  %1101 = fmul fast float %1098, %195
  %1102 = fmul fast float %1099, %196
  br label %1103

; <label>:1103                                    ; preds = %1084, %1024
  %1104 = phi float [ %1100, %1084 ], [ %194, %1024 ]
  %1105 = phi float [ %1101, %1084 ], [ %195, %1024 ]
  %1106 = phi float [ %1102, %1084 ], [ %196, %1024 ]
  %1107 = fmul fast float %1104, %1020
  %1108 = fmul fast float %1105, %1020
  %1109 = fmul fast float %1106, %1020
  br i1 %81, label %1110, label %1116, !dx.controlflow.hints !93

; <label>:1110                                    ; preds = %1103
  %1111 = call float @dx.op.dot3.f32(i32 55, float %183, float %184, float %185, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %1112 = call float @dx.op.unary.f32(i32 7, float %1111)  ; Saturate(value)
  %1113 = fmul fast float %1112, %1107
  %1114 = fmul fast float %1112, %1108
  %1115 = fmul fast float %1112, %1109
  br label %1116

; <label>:1116                                    ; preds = %1110, %1103, %1019, %173
  %1117 = phi float [ 0.000000e+00, %173 ], [ 0.000000e+00, %1019 ], [ %1113, %1110 ], [ %1107, %1103 ]
  %1118 = phi float [ 0.000000e+00, %173 ], [ 0.000000e+00, %1019 ], [ %1114, %1110 ], [ %1108, %1103 ]
  %1119 = phi float [ 0.000000e+00, %173 ], [ 0.000000e+00, %1019 ], [ %1115, %1110 ], [ %1109, %1103 ]
  %1120 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %36, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1121 = extractvalue %dx.types.CBufRet.i32 %1120, 0
  %1122 = icmp eq i32 %1121, 0
  br i1 %1122, label %1559, label %1123, !dx.controlflow.hints !94

; <label>:1123                                    ; preds = %1116
  %1124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1125 = extractvalue %dx.types.CBufRet.f32 %1124, 0
  %1126 = extractvalue %dx.types.CBufRet.f32 %1124, 1
  %1127 = extractvalue %dx.types.CBufRet.f32 %1124, 2
  %1128 = fadd fast float %1125, %86
  %1129 = fadd fast float %1126, %87
  %1130 = fadd fast float %1127, %88
  %1131 = getelementptr inbounds [3 x float], [3 x float]* %46, i32 0, i32 0
  store float %1128, float* %1131, align 4
  %1132 = getelementptr inbounds [3 x float], [3 x float]* %46, i32 0, i32 1
  store float %1129, float* %1132, align 4
  %1133 = getelementptr inbounds [3 x float], [3 x float]* %46, i32 0, i32 2
  store float %1130, float* %1133, align 4
  br label %1134

; <label>:1134                                    ; preds = %1134, %1123
  %1135 = phi i32 [ 0, %1123 ], [ %1149, %1134 ]
  %1136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1135, i32 0)  ; BufferLoad(srv,index,wot)
  %1137 = extractvalue %dx.types.ResRet.i32 %1136, 0
  %1138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1135, i32 4)  ; BufferLoad(srv,index,wot)
  %1139 = extractvalue %dx.types.ResRet.i32 %1138, 0
  %1140 = lshr i32 %1137, 30
  %1141 = and i32 %1137, 1048575
  %1142 = uitofp i32 %1141 to float
  %1143 = fadd fast float %1142, -5.242880e+05
  %1144 = and i32 %1139, 65535
  %1145 = lshr i32 %1139, 16
  %1146 = getelementptr [3 x float], [3 x float]* %46, i32 0, i32 %1140
  %1147 = load float, float* %1146, align 4, !tbaa !80, !noalias !95
  %1148 = fcmp fast olt float %1147, %1143
  %1149 = select i1 %1148, i32 %1144, i32 %1145
  %1150 = and i32 %1149, 32768
  %1151 = icmp eq i32 %1150, 0
  br i1 %1151, label %1134, label %1152

; <label>:1152                                    ; preds = %1134
  %1153 = and i32 %1149, 32767
  %1154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1153, i32 undef)  ; BufferLoad(srv,index,wot)
  %1155 = extractvalue %dx.types.ResRet.i32 %1154, 0
  %1156 = lshr i32 %1155, 22
  br label %1157

; <label>:1157                                    ; preds = %1157, %1152
  %1158 = phi i32 [ 0, %1152 ], [ %1174, %1157 ]
  %1159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1158, i32 0)  ; BufferLoad(srv,index,wot)
  %1160 = extractvalue %dx.types.ResRet.i32 %1159, 0
  %1161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1158, i32 4)  ; BufferLoad(srv,index,wot)
  %1162 = extractvalue %dx.types.ResRet.i32 %1161, 0
  %1163 = lshr i32 %1160, 30
  %1164 = and i32 %1160, 1048575
  %1165 = uitofp i32 %1164 to float
  %1166 = fadd fast float %1165, -5.242880e+05
  %1167 = and i32 %1162, 65535
  %1168 = lshr i32 %1162, 16
  %1169 = icmp ne i32 %1163, 3
  %1170 = getelementptr [3 x float], [3 x float]* %46, i32 0, i32 %1163
  %1171 = load float, float* %1170, align 4, !tbaa !80, !noalias !95
  %1172 = fcmp fast olt float %1171, %1166
  %1173 = select i1 %1172, i32 %1167, i32 %1168
  %1174 = select i1 %1169, i32 %1173, i32 %1162
  %1175 = icmp eq i32 %1163, 3
  br i1 %1175, label %1176, label %1157

; <label>:1176                                    ; preds = %1157
  %1177 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1174)  ; Countbits(value)
  %1178 = add i32 %1177, %1156
  %1179 = icmp eq i32 %1178, 0
  br i1 %1179, label %1559, label %1180

; <label>:1180                                    ; preds = %1176
  %1181 = and i32 %1155, 4194303
  br label %1182

; <label>:1182                                    ; preds = %1552, %1180
  %1183 = phi float [ %1553, %1552 ], [ %1117, %1180 ]
  %1184 = phi float [ %1554, %1552 ], [ %1118, %1180 ]
  %1185 = phi float [ %1555, %1552 ], [ %1119, %1180 ]
  %1186 = phi i32 [ %1556, %1552 ], [ 0, %1180 ]
  %1187 = phi i32 [ %1189, %1552 ], [ %1181, %1180 ]
  %1188 = phi i32 [ %1205, %1552 ], [ %1174, %1180 ]
  %1189 = add i32 %1187, 1
  %1190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %1187, i32 undef)  ; BufferLoad(srv,index,wot)
  %1191 = extractvalue %dx.types.ResRet.i32 %1190, 0
  %1192 = icmp ult i32 %1186, %1156
  br i1 %1192, label %1204, label %1193, !dx.controlflow.hints !96

; <label>:1193                                    ; preds = %1182
  %1194 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1188)  ; FirstbitLo(value)
  %1195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 22)  ; CBufferLoadLegacy(handle,regIndex)
  %1196 = extractvalue %dx.types.CBufRet.f32 %1195, 0
  %1197 = uitofp i32 %1194 to float
  %1198 = fadd fast float %1196, %1197
  %1199 = fptosi float %1198 to i32
  %1200 = and i32 %1194, 31
  %1201 = shl i32 1, %1200
  %1202 = xor i32 %1201, -1
  %1203 = and i32 %1188, %1202
  br label %1204

; <label>:1204                                    ; preds = %1193, %1182
  %1205 = phi i32 [ %1203, %1193 ], [ %1188, %1182 ]
  %1206 = phi i32 [ %1199, %1193 ], [ %1191, %1182 ]
  %1207 = mul i32 %1206, 112
  %1208 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1207, i32 undef)  ; BufferLoad(srv,index,wot)
  %1209 = extractvalue %dx.types.ResRet.f32 %1208, 0
  %1210 = extractvalue %dx.types.ResRet.f32 %1208, 1
  %1211 = extractvalue %dx.types.ResRet.f32 %1208, 2
  %1212 = or i32 %1207, 12
  %1213 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1212, i32 undef)  ; BufferLoad(srv,index,wot)
  %1214 = extractvalue %dx.types.ResRet.f32 %1213, 0
  %1215 = add i32 %1207, 16
  %1216 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1215, i32 undef)  ; BufferLoad(srv,index,wot)
  %1217 = extractvalue %dx.types.ResRet.f32 %1216, 0
  %1218 = extractvalue %dx.types.ResRet.f32 %1216, 1
  %1219 = extractvalue %dx.types.ResRet.f32 %1216, 2
  %1220 = add i32 %1207, 28
  %1221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1220, i32 undef)  ; BufferLoad(srv,index,wot)
  %1222 = extractvalue %dx.types.ResRet.i32 %1221, 0
  %1223 = add i32 %1207, 32
  %1224 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1223, i32 undef)  ; BufferLoad(srv,index,wot)
  %1225 = extractvalue %dx.types.ResRet.f32 %1224, 0
  %1226 = extractvalue %dx.types.ResRet.f32 %1224, 1
  %1227 = extractvalue %dx.types.ResRet.f32 %1224, 2
  %1228 = add i32 %1207, 44
  %1229 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1228, i32 undef)  ; BufferLoad(srv,index,wot)
  %1230 = extractvalue %dx.types.ResRet.f32 %1229, 0
  %1231 = add i32 %1207, 48
  %1232 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1231, i32 undef)  ; BufferLoad(srv,index,wot)
  %1233 = extractvalue %dx.types.ResRet.f32 %1232, 0
  %1234 = extractvalue %dx.types.ResRet.f32 %1232, 1
  %1235 = extractvalue %dx.types.ResRet.f32 %1232, 2
  %1236 = extractvalue %dx.types.ResRet.f32 %1232, 3
  %1237 = add i32 %1207, 64
  %1238 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1237, i32 undef)  ; BufferLoad(srv,index,wot)
  %1239 = extractvalue %dx.types.ResRet.f32 %1238, 0
  %1240 = extractvalue %dx.types.ResRet.f32 %1238, 1
  %1241 = extractvalue %dx.types.ResRet.f32 %1238, 2
  %1242 = extractvalue %dx.types.ResRet.f32 %1238, 3
  %1243 = add i32 %1207, 80
  %1244 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1243, i32 undef)  ; BufferLoad(srv,index,wot)
  %1245 = extractvalue %dx.types.ResRet.f32 %1244, 1
  %1246 = extractvalue %dx.types.ResRet.f32 %1244, 2
  %1247 = add i32 %1207, 92
  %1248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1247, i32 undef)  ; BufferLoad(srv,index,wot)
  %1249 = extractvalue %dx.types.ResRet.i32 %1248, 0
  %1250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %1251 = extractvalue %dx.types.CBufRet.f32 %1250, 2
  %1252 = lshr i32 %1222, 16
  %1253 = and i32 %1252, 255
  %1254 = uitofp i32 %1253 to float
  %1255 = fmul fast float %1254, 0x3F70101020000000
  %1256 = fmul fast float %1255, %1209
  %1257 = fmul fast float %1255, %1210
  %1258 = fmul fast float %1255, %1211
  %1259 = fmul fast float %1251, %1245
  %1260 = call float @dx.op.dot3.f32(i32 55, float %1256, float %1257, float %1258, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1261 = select i1 %96, float %1259, float %1256
  %1262 = select i1 %96, float %1260, float %1257
  %1263 = select i1 %96, float %1246, float %1258
  %1264 = and i32 %1249, 65535
  %1265 = uitofp i32 %1264 to float
  %1266 = lshr i32 %1249, 16
  %1267 = uitofp i32 %1266 to float
  %1268 = and i32 %1222, 65535
  %1269 = and i32 %1222, 50331648
  %1270 = icmp eq i32 %1269, 33554432
  %1271 = call float @dx.op.dot3.f32(i32 55, float %1225, float %1226, float %1227, float %1225, float %1226, float %1227)  ; Dot3(ax,ay,az,bx,by,bz)
  %1272 = fsub fast float %86, %1233
  %1273 = fsub fast float %87, %1234
  %1274 = fsub fast float %88, %1235
  %1275 = call float @dx.op.dot3.f32(i32 55, float %1272, float %1273, float %1274, float %1225, float %1226, float %1227)  ; Dot3(ax,ay,az,bx,by,bz)
  %1276 = fdiv fast float %1275, %1271
  %1277 = call float @dx.op.binary.f32(i32 35, float %1276, float -1.000000e+00)  ; FMax(a,b)
  %1278 = call float @dx.op.binary.f32(i32 36, float %1277, float 1.000000e+00)  ; FMin(a,b)
  %1279 = fmul fast float %1278, %1225
  %1280 = fmul fast float %1278, %1226
  %1281 = fmul fast float %1278, %1227
  %1282 = fadd fast float %1279, %1233
  %1283 = fadd fast float %1280, %1234
  %1284 = fadd fast float %1281, %1235
  %1285 = fsub fast float %1282, %86
  %1286 = fsub fast float %1283, %87
  %1287 = fsub fast float %1284, %88
  %1288 = call float @dx.op.dot3.f32(i32 55, float %1285, float %1286, float %1287, float %1285, float %1286, float %1287)  ; Dot3(ax,ay,az,bx,by,bz)
  %1289 = call float @dx.op.unary.f32(i32 24, float %1288)  ; Sqrt(value)
  %1290 = fdiv fast float 1.000000e+00, %1289
  %1291 = fmul fast float %1285, %1290
  %1292 = fmul fast float %1286, %1290
  %1293 = fmul fast float %1287, %1290
  %1294 = fadd fast float %1289, %1214
  %1295 = fdiv fast float 1.000000e+00, %1294
  %1296 = fmul float %1230, %1295
  %1297 = fmul float %1296, %1296
  %1298 = call float @dx.op.unary.f32(i32 7, float %1297)  ; Saturate(value)
  br i1 %1270, label %1299, label %1323, !dx.controlflow.hints !97

; <label>:1299                                    ; preds = %1204
  %1300 = fmul fast float %1241, %1217
  %1301 = fmul fast float %1241, %1218
  %1302 = fmul fast float %1241, %1219
  %1303 = fsub fast float %1300, %86
  %1304 = fadd fast float %1303, %1282
  %1305 = fsub fast float %1301, %87
  %1306 = fadd fast float %1305, %1283
  %1307 = fsub fast float %1302, %88
  %1308 = fadd fast float %1307, %1284
  %1309 = call float @dx.op.dot3.f32(i32 55, float %1304, float %1306, float %1308, float %1304, float %1306, float %1308)  ; Dot3(ax,ay,az,bx,by,bz)
  %1310 = call float @dx.op.unary.f32(i32 25, float %1309)  ; Rsqrt(value)
  %1311 = fmul fast float %1310, %1304
  %1312 = fmul fast float %1310, %1306
  %1313 = fmul fast float %1310, %1308
  %1314 = fsub fast float %86, %1282
  %1315 = fsub fast float %87, %1283
  %1316 = fsub fast float %88, %1284
  %1317 = fsub fast float -0.000000e+00, %1314
  %1318 = fsub fast float -0.000000e+00, %1315
  %1319 = fsub fast float -0.000000e+00, %1316
  %1320 = call float @dx.op.dot3.f32(i32 55, float %1317, float %1318, float %1319, float %1217, float %1218, float %1219)  ; Dot3(ax,ay,az,bx,by,bz)
  %1321 = fcmp fast ogt float %1320, 0.000000e+00
  %1322 = uitofp i1 %1321 to float
  br label %1323

; <label>:1323                                    ; preds = %1299, %1204
  %1324 = phi float [ %1322, %1299 ], [ 1.000000e+00, %1204 ]
  %1325 = phi float [ %1311, %1299 ], [ %1291, %1204 ]
  %1326 = phi float [ %1312, %1299 ], [ %1292, %1204 ]
  %1327 = phi float [ %1313, %1299 ], [ %1293, %1204 ]
  %1328 = call float @dx.op.dot3.f32(i32 55, float %1217, float %1218, float %1219, float %1325, float %1326, float %1327)  ; Dot3(ax,ay,az,bx,by,bz)
  %1329 = fmul fast float %1328, %1328
  %1330 = call float @dx.op.unary.f32(i32 7, float %1329)  ; Saturate(value)
  %1331 = fsub fast float 1.000000e+00, %1330
  %1332 = fmul fast float %1331, 5.000000e-01
  %1333 = fcmp fast ogt float %1328, 0.000000e+00
  %1334 = fsub fast float 1.000000e+00, %1332
  %1335 = select i1 %1333, float %1332, float %1334
  %1336 = fmul fast float %1335, %1267
  %1337 = fadd fast float %1336, %1265
  %1338 = fmul fast float %1337, 0x3EF0001000000000
  %1339 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %31, float %1338, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1340 = extractvalue %dx.types.ResRet.f32 %1339, 0
  %1341 = fmul fast float %1328, %1239
  %1342 = fadd fast float %1341, %1240
  %1343 = call float @dx.op.unary.f32(i32 7, float %1342)  ; Saturate(value)
  %1344 = select i1 %1270, float 1.000000e+00, float %1343
  %1345 = select i1 %1270, float %1343, float 1.000000e+00
  %1346 = fmul fast float %1289, %1236
  %1347 = fsub fast float 1.000000e+00, %1346
  %1348 = fmul fast float %1347, %1242
  %1349 = call float @dx.op.unary.f32(i32 7, float %1348)  ; Saturate(value)
  %1350 = fmul fast float %1349, %1345
  %1351 = fmul fast float %1350, 2.000000e+00
  %1352 = fsub fast float 3.000000e+00, %1351
  %1353 = fmul fast float %1340, %1324
  %1354 = fmul fast float %1350, %1350
  %1355 = fmul fast float %1354, %1353
  %1356 = fmul fast float %1355, %1352
  %1357 = call float @dx.op.binary.f32(i32 36, float %1356, float %1356)  ; FMin(a,b)
  %1358 = call float @dx.op.binary.f32(i32 36, float %1356, float %1357)  ; FMin(a,b)
  %1359 = fcmp fast ogt float %1358, 0.000000e+00
  br i1 %1359, label %1360, label %1552, !dx.controlflow.hints !98

; <label>:1360                                    ; preds = %1323
  %1361 = fmul fast float %1291, %79
  %1362 = fmul fast float %1292, %79
  %1363 = fmul fast float %1293, %79
  %1364 = fadd fast float %1361, %86
  %1365 = fadd fast float %1362, %87
  %1366 = fadd fast float %1363, %88
  %1367 = icmp eq i32 %1268, 255
  br i1 %1367, label %1443, label %1368, !dx.controlflow.hints !99

; <label>:1368                                    ; preds = %1360
  %1369 = mul nuw nsw i32 %1268, 176
  %1370 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %1369, i32 undef)  ; BufferLoad(srv,index,wot)
  %1371 = extractvalue %dx.types.ResRet.f32 %1370, 0
  %1372 = extractvalue %dx.types.ResRet.f32 %1370, 1
  %1373 = extractvalue %dx.types.ResRet.f32 %1370, 2
  %1374 = extractvalue %dx.types.ResRet.f32 %1370, 3
  %1375 = add nuw nsw i32 %1369, 16
  %1376 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %1375, i32 undef)  ; BufferLoad(srv,index,wot)
  %1377 = extractvalue %dx.types.ResRet.f32 %1376, 0
  %1378 = extractvalue %dx.types.ResRet.f32 %1376, 1
  %1379 = add nuw nsw i32 %1369, 32
  %1380 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %1379, i32 undef)  ; BufferLoad(srv,index,wot)
  %1381 = extractvalue %dx.types.ResRet.f32 %1380, 0
  %1382 = add nuw nsw i32 %1369, 48
  %1383 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %1382, i32 undef)  ; BufferLoad(srv,index,wot)
  %1384 = extractvalue %dx.types.ResRet.f32 %1383, 0
  %1385 = extractvalue %dx.types.ResRet.f32 %1383, 1
  %1386 = extractvalue %dx.types.ResRet.f32 %1383, 2
  %1387 = extractvalue %dx.types.ResRet.f32 %1383, 3
  %1388 = add nuw nsw i32 %1369, 64
  %1389 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %1388, i32 undef)  ; BufferLoad(srv,index,wot)
  %1390 = extractvalue %dx.types.ResRet.f32 %1389, 0
  %1391 = extractvalue %dx.types.ResRet.f32 %1389, 1
  %1392 = extractvalue %dx.types.ResRet.f32 %1389, 2
  %1393 = extractvalue %dx.types.ResRet.f32 %1389, 3
  %1394 = add nuw nsw i32 %1369, 80
  %1395 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %1394, i32 undef)  ; BufferLoad(srv,index,wot)
  %1396 = extractvalue %dx.types.ResRet.f32 %1395, 0
  %1397 = extractvalue %dx.types.ResRet.f32 %1395, 1
  %1398 = extractvalue %dx.types.ResRet.f32 %1395, 2
  %1399 = extractvalue %dx.types.ResRet.f32 %1395, 3
  %1400 = add nuw nsw i32 %1369, 96
  %1401 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %1400, i32 undef)  ; BufferLoad(srv,index,wot)
  %1402 = extractvalue %dx.types.ResRet.f32 %1401, 0
  %1403 = extractvalue %dx.types.ResRet.f32 %1401, 1
  %1404 = extractvalue %dx.types.ResRet.f32 %1401, 2
  %1405 = extractvalue %dx.types.ResRet.f32 %1401, 3
  %1406 = bitcast float %1378 to i32
  %1407 = fmul fast float %1384, %1364
  %1408 = call float @dx.op.tertiary.f32(i32 46, float %1365, float %1390, float %1407)  ; FMad(a,b,c)
  %1409 = call float @dx.op.tertiary.f32(i32 46, float %1366, float %1396, float %1408)  ; FMad(a,b,c)
  %1410 = fadd fast float %1409, %1402
  %1411 = fmul fast float %1385, %1364
  %1412 = call float @dx.op.tertiary.f32(i32 46, float %1365, float %1391, float %1411)  ; FMad(a,b,c)
  %1413 = call float @dx.op.tertiary.f32(i32 46, float %1366, float %1397, float %1412)  ; FMad(a,b,c)
  %1414 = fadd fast float %1413, %1403
  %1415 = fmul fast float %1386, %1364
  %1416 = call float @dx.op.tertiary.f32(i32 46, float %1365, float %1392, float %1415)  ; FMad(a,b,c)
  %1417 = call float @dx.op.tertiary.f32(i32 46, float %1366, float %1398, float %1416)  ; FMad(a,b,c)
  %1418 = fadd fast float %1417, %1404
  %1419 = fmul fast float %1387, %1364
  %1420 = call float @dx.op.tertiary.f32(i32 46, float %1365, float %1393, float %1419)  ; FMad(a,b,c)
  %1421 = call float @dx.op.tertiary.f32(i32 46, float %1366, float %1399, float %1420)  ; FMad(a,b,c)
  %1422 = fadd fast float %1421, %1405
  %1423 = fdiv fast float %1410, %1422
  %1424 = fdiv fast float %1414, %1422
  %1425 = fdiv fast float %1418, %1422
  %1426 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %1425)  ; FMax(a,b)
  %1427 = fmul fast float %1423, %1377
  %1428 = fmul fast float %1424, %1377
  %1429 = call float @dx.op.binary.f32(i32 35, float %1427, float %1373)  ; FMax(a,b)
  %1430 = call float @dx.op.binary.f32(i32 35, float %1428, float %1373)  ; FMax(a,b)
  %1431 = call float @dx.op.binary.f32(i32 36, float %1429, float %1374)  ; FMin(a,b)
  %1432 = call float @dx.op.binary.f32(i32 36, float %1430, float %1374)  ; FMin(a,b)
  %1433 = fadd fast float %1431, %1371
  %1434 = fadd fast float %1432, %1372
  %1435 = uitofp i32 %1406 to float
  %1436 = fadd fast float %1426, %1381
  %1437 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %12, %dx.types.Handle %33, float %1433, float %1434, float %1435, float undef, i32 0, i32 0, i32 undef, float %1436)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1438 = extractvalue %dx.types.ResRet.f32 %1437, 0
  %1439 = fadd fast float %1438, -1.000000e+00
  %1440 = fmul fast float %1439, %1344
  %1441 = fadd fast float %1440, 1.000000e+00
  %1442 = fmul fast float %1441, %1356
  br label %1443

; <label>:1443                                    ; preds = %1368, %1360
  %1444 = phi float [ %1442, %1368 ], [ %1356, %1360 ]
  %1445 = call float @dx.op.binary.f32(i32 36, float %1444, float %1444)  ; FMin(a,b)
  %1446 = call float @dx.op.binary.f32(i32 36, float %1444, float %1445)  ; FMin(a,b)
  %1447 = fcmp fast ogt float %1446, 0.000000e+00
  br i1 %1447, label %1448, label %1552, !dx.controlflow.hints !100

; <label>:1448                                    ; preds = %1443
  %1449 = extractvalue %dx.types.CBufRet.f32 %1250, 1
  %1450 = fmul fast float %1444, %1298
  %1451 = call float @dx.op.binary.f32(i32 36, float %1450, float %1449)  ; FMin(a,b)
  %1452 = icmp eq i32 %178, 0
  br i1 %1452, label %1532, label %1453, !dx.controlflow.hints !90

; <label>:1453                                    ; preds = %1448
  %1454 = fsub fast float %1235, %177
  %1455 = fcmp fast ogt float %1454, 0.000000e+00
  %1456 = fsub fast float %88, %177
  %1457 = fcmp fast ogt float %1456, 0.000000e+00
  %1458 = xor i1 %1457, %1455
  %1459 = fsub fast float %177, %1235
  %1460 = fmul fast float %1459, 2.000000e+00
  %1461 = fadd fast float %1460, %1235
  %1462 = select i1 %1458, float %1235, float %1461
  %1463 = fsub fast float %1233, %86
  %1464 = fsub fast float %1234, %87
  %1465 = fsub fast float %1462, %88
  %1466 = call float @dx.op.dot3.f32(i32 55, float %1463, float %1464, float %1465, float %1463, float %1464, float %1465)  ; Dot3(ax,ay,az,bx,by,bz)
  %1467 = call float @dx.op.unary.f32(i32 25, float %1466)  ; Rsqrt(value)
  %1468 = fmul fast float %1467, %1463
  %1469 = fmul fast float %1467, %1464
  %1470 = fmul fast float %1467, %1465
  %1471 = fsub fast float %177, %88
  %1472 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %1471)  ; Dot3(ax,ay,az,bx,by,bz)
  %1473 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1468, float %1469, float %1470)  ; Dot3(ax,ay,az,bx,by,bz)
  %1474 = fdiv fast float 1.000000e+00, %1473
  %1475 = fmul fast float %1474, %1472
  %1476 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %1456, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1477 = fcmp fast ogt float %1476, 0.000000e+00
  %1478 = fcmp fast olt float %1476, 0.000000e+00
  %1479 = zext i1 %1477 to i32
  %1480 = zext i1 %1478 to i32
  %1481 = sub nsw i32 %1479, %1480
  %1482 = sitofp i32 %1481 to float
  %1483 = fsub fast float %1462, %177
  %1484 = call float @dx.op.dot3.f32(i32 55, float %1463, float %1464, float %1483, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1485 = fcmp fast ogt float %1484, 0.000000e+00
  %1486 = fcmp fast olt float %1484, 0.000000e+00
  %1487 = zext i1 %1485 to i32
  %1488 = zext i1 %1486 to i32
  %1489 = sub nsw i32 %1487, %1488
  %1490 = sitofp i32 %1489 to float
  %1491 = fcmp fast une float %1482, %1490
  br i1 %1491, label %1492, label %1502, !dx.controlflow.hints !91

; <label>:1492                                    ; preds = %1453
  %1493 = fmul fast float %1475, %1470
  %1494 = fmul fast float %1475, %1469
  %1495 = fmul fast float %1475, %1468
  %1496 = fmul fast float %1495, %1495
  %1497 = fmul fast float %1494, %1494
  %1498 = fadd fast float %1496, %1497
  %1499 = fmul fast float %1493, %1493
  %1500 = fadd fast float %1498, %1499
  %1501 = call float @dx.op.unary.f32(i32 24, float %1500)  ; Sqrt(value)
  br label %1512

; <label>:1502                                    ; preds = %1453
  %1503 = icmp slt i32 %1481, 0
  br i1 %1503, label %1504, label %1512, !dx.controlflow.hints !92

; <label>:1504                                    ; preds = %1502
  %1505 = fsub fast float %88, %1462
  %1506 = fmul fast float %1272, %1272
  %1507 = fmul fast float %1273, %1273
  %1508 = fadd fast float %1506, %1507
  %1509 = fmul fast float %1505, %1505
  %1510 = fadd fast float %1508, %1509
  %1511 = call float @dx.op.unary.f32(i32 24, float %1510)  ; Sqrt(value)
  br label %1512

; <label>:1512                                    ; preds = %1504, %1502, %1492
  %1513 = phi float [ %1501, %1492 ], [ %1511, %1504 ], [ 0.000000e+00, %1502 ]
  %1514 = and i1 %1457, %1455
  %1515 = fsub fast float -0.000000e+00, %1513
  %1516 = select i1 %1514, float -0.000000e+00, float %1515
  %1517 = fmul fast float %174, 0x3FF7154760000000
  %1518 = fmul fast float %1517, %1516
  %1519 = fmul fast float %175, 0x3FF7154760000000
  %1520 = fmul fast float %1519, %1516
  %1521 = fmul fast float %176, 0x3FF7154760000000
  %1522 = fmul fast float %1521, %1516
  %1523 = call float @dx.op.unary.f32(i32 21, float %1518)  ; Exp(value)
  %1524 = call float @dx.op.unary.f32(i32 21, float %1520)  ; Exp(value)
  %1525 = call float @dx.op.unary.f32(i32 21, float %1522)  ; Exp(value)
  %1526 = call float @dx.op.unary.f32(i32 7, float %1523)  ; Saturate(value)
  %1527 = call float @dx.op.unary.f32(i32 7, float %1524)  ; Saturate(value)
  %1528 = call float @dx.op.unary.f32(i32 7, float %1525)  ; Saturate(value)
  %1529 = fmul fast float %1526, %1261
  %1530 = fmul fast float %1527, %1262
  %1531 = fmul fast float %1528, %1263
  br label %1532

; <label>:1532                                    ; preds = %1512, %1448
  %1533 = phi float [ %1529, %1512 ], [ %1261, %1448 ]
  %1534 = phi float [ %1530, %1512 ], [ %1262, %1448 ]
  %1535 = phi float [ %1531, %1512 ], [ %1263, %1448 ]
  %1536 = fmul fast float %1533, %1451
  %1537 = fmul fast float %1534, %1451
  %1538 = fmul fast float %1535, %1451
  br i1 %81, label %1539, label %1545, !dx.controlflow.hints !93

; <label>:1539                                    ; preds = %1532
  %1540 = call float @dx.op.dot3.f32(i32 55, float %1291, float %1292, float %1293, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %1541 = call float @dx.op.unary.f32(i32 7, float %1540)  ; Saturate(value)
  %1542 = fmul fast float %1541, %1536
  %1543 = fmul fast float %1541, %1537
  %1544 = fmul fast float %1541, %1538
  br label %1545

; <label>:1545                                    ; preds = %1539, %1532
  %1546 = phi float [ %1542, %1539 ], [ %1536, %1532 ]
  %1547 = phi float [ %1543, %1539 ], [ %1537, %1532 ]
  %1548 = phi float [ %1544, %1539 ], [ %1538, %1532 ]
  %1549 = fadd fast float %1546, %1183
  %1550 = fadd fast float %1547, %1184
  %1551 = fadd fast float %1548, %1185
  br label %1552

; <label>:1552                                    ; preds = %1545, %1443, %1323
  %1553 = phi float [ %1549, %1545 ], [ %1183, %1443 ], [ %1183, %1323 ]
  %1554 = phi float [ %1550, %1545 ], [ %1184, %1443 ], [ %1184, %1323 ]
  %1555 = phi float [ %1551, %1545 ], [ %1185, %1443 ], [ %1185, %1323 ]
  %1556 = add nuw i32 %1186, 1
  %1557 = icmp eq i32 %1556, %1178
  br i1 %1557, label %1558, label %1182, !llvm.loop !101

; <label>:1558                                    ; preds = %1552
  br label %1559

; <label>:1559                                    ; preds = %1558, %1176, %1116
  %1560 = phi float [ %1117, %1116 ], [ %1117, %1176 ], [ %1553, %1558 ]
  %1561 = phi float [ %1118, %1116 ], [ %1118, %1176 ], [ %1554, %1558 ]
  %1562 = phi float [ %1119, %1116 ], [ %1119, %1176 ], [ %1555, %1558 ]
  %1563 = call float @dx.op.dot3.f32(i32 55, float %1560, float %1561, float %1562, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1564 = select i1 %96, float %1561, float %1563
  %1565 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1566 = extractvalue %dx.types.CBufRet.i32 %1565, 2
  %1567 = extractvalue %dx.types.CBufRet.i32 %1565, 1
  %1568 = extractvalue %dx.types.CBufRet.i32 %1565, 0
  %1569 = getelementptr inbounds [4 x float], [4 x float]* %43, i32 0, i32 0
  store float 0.000000e+00, float* %1569, align 4
  %1570 = getelementptr inbounds [4 x float], [4 x float]* %43, i32 0, i32 1
  store float 0.000000e+00, float* %1570, align 4
  %1571 = getelementptr inbounds [4 x float], [4 x float]* %43, i32 0, i32 2
  store float 0.000000e+00, float* %1571, align 4
  %1572 = getelementptr inbounds [4 x float], [4 x float]* %43, i32 0, i32 3
  store float 0.000000e+00, float* %1572, align 4
  %1573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %1574 = extractvalue %dx.types.ResRet.i32 %1573, 0
  %1575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %1576 = extractvalue %dx.types.ResRet.i32 %1575, 0
  %1577 = extractvalue %dx.types.ResRet.i32 %1575, 1
  %1578 = extractvalue %dx.types.ResRet.i32 %1575, 2
  %1579 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %1580 = extractvalue %dx.types.ResRet.f32 %1579, 0
  %1581 = extractvalue %dx.types.ResRet.f32 %1579, 1
  %1582 = extractvalue %dx.types.ResRet.f32 %1579, 2
  %1583 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %1584 = extractvalue %dx.types.ResRet.f32 %1583, 0
  %1585 = extractvalue %dx.types.ResRet.f32 %1583, 1
  %1586 = extractvalue %dx.types.ResRet.f32 %1583, 2
  %1587 = fsub fast float %61, %1580
  %1588 = fsub fast float %62, %1581
  %1589 = fsub fast float %63, %1582
  %1590 = fptoui float %1587 to i32
  %1591 = fptoui float %1588 to i32
  %1592 = fptoui float %1589 to i32
  %1593 = fcmp fast olt float %61, %1580
  %1594 = fcmp fast olt float %62, %1581
  %1595 = fcmp fast olt float %63, %1582
  %1596 = or i1 %1593, %1594
  %1597 = or i1 %1595, %1596
  %1598 = fcmp fast oge float %61, %1584
  %1599 = fcmp fast oge float %62, %1585
  %1600 = fcmp fast oge float %63, %1586
  %1601 = or i1 %1598, %1599
  %1602 = or i1 %1600, %1601
  %1603 = or i1 %1597, %1602
  %1604 = and i32 %1576, 31
  %1605 = lshr i32 %1590, %1604
  %1606 = lshr i32 %1591, %1604
  %1607 = lshr i32 %1592, %1604
  %1608 = mul i32 %1606, %1574
  %1609 = add i32 %1608, %1605
  %1610 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1611 = extractvalue %dx.types.CBufRet.i32 %1610, 0
  %1612 = icmp ult i32 %1609, %1611
  br i1 %1612, label %1613, label %1629, !dx.controlflow.hints !102

; <label>:1613                                    ; preds = %1559
  %1614 = mul i32 %1609, 12
  %1615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1614, i32 undef)  ; BufferLoad(srv,index,wot)
  %1616 = extractvalue %dx.types.ResRet.i32 %1615, 0
  %1617 = add i32 %1614, 4
  %1618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1617, i32 undef)  ; BufferLoad(srv,index,wot)
  %1619 = extractvalue %dx.types.ResRet.i32 %1618, 0
  %1620 = add i32 %1614, 8
  %1621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1620, i32 undef)  ; BufferLoad(srv,index,wot)
  %1622 = extractvalue %dx.types.ResRet.i32 %1621, 0
  %1623 = icmp ult i32 %1607, %1619
  %1624 = icmp ugt i32 %1607, %1622
  %1625 = or i1 %1623, %1624
  %1626 = add i32 %1616, %1607
  %1627 = sub i32 %1626, %1619
  %1628 = select i1 %1625, i32 -2147483648, i32 %1627
  br label %1629

; <label>:1629                                    ; preds = %1613, %1559
  %1630 = phi i32 [ %1628, %1613 ], [ -2147483648, %1559 ]
  %1631 = select i1 %1603, i32 -2147483648, i32 %1630
  %1632 = icmp sgt i32 %1631, -1
  %1633 = and i32 %1577, 31
  %1634 = lshr i32 %1590, %1633
  %1635 = lshr i32 %1591, %1633
  %1636 = lshr i32 %1592, %1633
  %1637 = and i32 %1634, 3
  %1638 = and i32 %1636, 3
  %1639 = shl nuw nsw i32 %1638, 4
  %1640 = shl i32 %1635, 2
  %1641 = and i32 %1640, 12
  %1642 = and i32 %1639, 16
  %1643 = or i32 %1641, %1637
  %1644 = or i32 %1643, %1642
  %1645 = shl i32 1, %1644
  %1646 = extractvalue %dx.types.CBufRet.i32 %1610, 1
  %1647 = icmp ult i32 %1631, %1646
  br i1 %1647, label %1648, label %1666, !dx.controlflow.hints !103

; <label>:1648                                    ; preds = %1629
  %1649 = lshr i32 %1638, 1
  %1650 = shl i32 %1631, 4
  %1651 = shl nuw nsw i32 %1649, 2
  %1652 = or i32 %1650, %1651
  %1653 = or i32 %1652, 8
  %1654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1653, i32 undef)  ; BufferLoad(srv,index,wot)
  %1655 = extractvalue %dx.types.ResRet.i32 %1654, 0
  %1656 = and i32 %1655, %1645
  %1657 = icmp eq i32 %1656, 0
  %1658 = add i32 %1645, -1
  %1659 = and i32 %1655, %1658
  %1660 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1659)  ; Countbits(value)
  %1661 = or i32 %1650, %1651
  %1662 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1661, i32 undef)  ; BufferLoad(srv,index,wot)
  %1663 = extractvalue %dx.types.ResRet.i32 %1662, 0
  %1664 = add i32 %1663, %1660
  %1665 = select i1 %1657, i32 -2147483648, i32 %1664
  br label %1666

; <label>:1666                                    ; preds = %1648, %1629
  %1667 = phi i32 [ %1665, %1648 ], [ -2147483648, %1629 ]
  %1668 = select i1 %1632, i32 %1667, i32 %1631
  %1669 = icmp sgt i32 %1668, -1
  %1670 = and i32 %1578, 31
  %1671 = lshr i32 %1590, %1670
  %1672 = lshr i32 %1591, %1670
  %1673 = lshr i32 %1592, %1670
  %1674 = and i32 %1671, 3
  %1675 = and i32 %1673, 3
  %1676 = shl nuw nsw i32 %1675, 4
  %1677 = shl i32 %1672, 2
  %1678 = and i32 %1677, 12
  %1679 = and i32 %1676, 16
  %1680 = or i32 %1678, %1674
  %1681 = or i32 %1680, %1679
  %1682 = shl i32 1, %1681
  %1683 = icmp ult i32 %1668, %1646
  br i1 %1683, label %1684, label %1702, !dx.controlflow.hints !103

; <label>:1684                                    ; preds = %1666
  %1685 = lshr i32 %1675, 1
  %1686 = shl i32 %1668, 4
  %1687 = shl nuw nsw i32 %1685, 2
  %1688 = or i32 %1686, %1687
  %1689 = or i32 %1688, 8
  %1690 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1689, i32 undef)  ; BufferLoad(srv,index,wot)
  %1691 = extractvalue %dx.types.ResRet.i32 %1690, 0
  %1692 = and i32 %1691, %1682
  %1693 = icmp eq i32 %1692, 0
  %1694 = add i32 %1682, -1
  %1695 = and i32 %1691, %1694
  %1696 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1695)  ; Countbits(value)
  %1697 = or i32 %1686, %1687
  %1698 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1697, i32 undef)  ; BufferLoad(srv,index,wot)
  %1699 = extractvalue %dx.types.ResRet.i32 %1698, 0
  %1700 = add i32 %1699, %1696
  %1701 = select i1 %1693, i32 -2147483648, i32 %1700
  br label %1702

; <label>:1702                                    ; preds = %1684, %1666
  %1703 = phi i32 [ %1701, %1684 ], [ -2147483648, %1666 ]
  %1704 = select i1 %1669, i32 %1703, i32 %1668
  br i1 %1603, label %1719, label %1705, !dx.controlflow.hints !104

; <label>:1705                                    ; preds = %1702
  %1706 = icmp eq i32 %1704, -2147483648
  %1707 = icmp eq i32 %1668, -2147483648
  %1708 = select i1 %1707, i32 %1631, i32 %1668
  %1709 = select i1 %1706, i32 %1708, i32 %1704
  %1710 = icmp sgt i32 %1709, -1
  %1711 = icmp ne i32 %1566, -1
  %1712 = and i1 %1711, %1710
  %1713 = select i1 %1712, i32 %1566, i32 0
  %1714 = add i32 %1709, %1567
  %1715 = add i32 %1714, %1713
  %1716 = shl i32 %1715, 2
  %1717 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1716, i32 undef)  ; BufferLoad(srv,index,wot)
  %1718 = extractvalue %dx.types.ResRet.i32 %1717, 0
  br label %1719

; <label>:1719                                    ; preds = %1705, %1702
  %1720 = phi i32 [ %1718, %1705 ], [ -1, %1702 ]
  %1721 = icmp eq i32 %1720, -1
  %1722 = select i1 %1721, i32 %1568, i32 %1720
  %1723 = icmp eq i32 %1722, -1
  br i1 %1723, label %1872, label %1724

; <label>:1724                                    ; preds = %1719
  br label %1725

; <label>:1725                                    ; preds = %1863, %1724
  %1726 = phi i32 [ %1864, %1863 ], [ 0, %1724 ]
  %1727 = phi i32 [ %1728, %1863 ], [ -1, %1724 ]
  %1728 = phi i32 [ %1859, %1863 ], [ %1722, %1724 ]
  %1729 = phi float [ %1835, %1863 ], [ 0.000000e+00, %1724 ]
  %1730 = phi float [ %1836, %1863 ], [ 0.000000e+00, %1724 ]
  %1731 = phi float [ %1837, %1863 ], [ 0.000000e+00, %1724 ]
  %1732 = phi float [ %1840, %1863 ], [ 0.000000e+00, %1724 ]
  %1733 = icmp ugt i32 %1726, 50
  br i1 %1733, label %1866, label %1734, !dx.controlflow.hints !105

; <label>:1734                                    ; preds = %1725
  %1735 = shl i32 %1728, 4
  %1736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1735, i32 undef)  ; BufferLoad(srv,index,wot)
  %1737 = extractvalue %dx.types.ResRet.i32 %1736, 0
  %1738 = extractvalue %dx.types.ResRet.i32 %1736, 1
  %1739 = extractvalue %dx.types.ResRet.i32 %1736, 2
  %1740 = extractvalue %dx.types.ResRet.i32 %1736, 3
  %1741 = and i32 %1737, 2147483647
  %1742 = mul nsw i32 %1741, 12
  %1743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1742, i32 undef)  ; BufferLoad(srv,index,wot)
  %1744 = extractvalue %dx.types.ResRet.i32 %1743, 0
  %1745 = extractvalue %dx.types.ResRet.i32 %1743, 1
  %1746 = extractvalue %dx.types.ResRet.i32 %1743, 2
  %1747 = and i32 %1738, 2147483647
  %1748 = mul nsw i32 %1747, 12
  %1749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1748, i32 undef)  ; BufferLoad(srv,index,wot)
  %1750 = extractvalue %dx.types.ResRet.i32 %1749, 0
  %1751 = extractvalue %dx.types.ResRet.i32 %1749, 1
  %1752 = extractvalue %dx.types.ResRet.i32 %1749, 2
  %1753 = and i32 %1739, 2147483647
  %1754 = mul nsw i32 %1753, 12
  %1755 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1754, i32 undef)  ; BufferLoad(srv,index,wot)
  %1756 = extractvalue %dx.types.ResRet.i32 %1755, 0
  %1757 = extractvalue %dx.types.ResRet.i32 %1755, 1
  %1758 = extractvalue %dx.types.ResRet.i32 %1755, 2
  %1759 = and i32 %1740, 2147483647
  %1760 = mul nsw i32 %1759, 12
  %1761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1760, i32 undef)  ; BufferLoad(srv,index,wot)
  %1762 = extractvalue %dx.types.ResRet.i32 %1761, 0
  %1763 = extractvalue %dx.types.ResRet.i32 %1761, 1
  %1764 = extractvalue %dx.types.ResRet.i32 %1761, 2
  %1765 = bitcast i32 %1744 to float
  %1766 = bitcast i32 %1745 to float
  %1767 = bitcast i32 %1746 to float
  %1768 = bitcast i32 %1762 to float
  %1769 = bitcast i32 %1763 to float
  %1770 = bitcast i32 %1764 to float
  %1771 = fsub fast float %1765, %1768
  %1772 = fsub fast float %1766, %1769
  %1773 = fsub fast float %1767, %1770
  %1774 = bitcast i32 %1750 to float
  %1775 = bitcast i32 %1751 to float
  %1776 = bitcast i32 %1752 to float
  %1777 = fsub fast float %1774, %1768
  %1778 = fsub fast float %1775, %1769
  %1779 = fsub fast float %1776, %1770
  %1780 = bitcast i32 %1756 to float
  %1781 = bitcast i32 %1757 to float
  %1782 = bitcast i32 %1758 to float
  %1783 = fsub fast float %1780, %1768
  %1784 = fsub fast float %1781, %1769
  %1785 = fsub fast float %1782, %1770
  %1786 = fsub fast float %61, %1768
  %1787 = fsub fast float %62, %1769
  %1788 = fsub fast float %63, %1770
  %1789 = fmul fast float %1778, %1785
  %1790 = fmul fast float %1784, %1779
  %1791 = fsub fast float %1789, %1790
  %1792 = fmul fast float %1791, %1771
  %1793 = fmul fast float %1777, %1785
  %1794 = fmul fast float %1779, %1783
  %1795 = fsub fast float %1793, %1794
  %1796 = fmul fast float %1795, %1772
  %1797 = fsub fast float %1792, %1796
  %1798 = fmul fast float %1777, %1784
  %1799 = fmul fast float %1778, %1783
  %1800 = fsub fast float %1798, %1799
  %1801 = fmul fast float %1800, %1773
  %1802 = fadd fast float %1797, %1801
  %1803 = fdiv fast float 1.000000e+00, %1802
  %1804 = fmul fast float %1791, %1803
  %1805 = fmul fast float %1803, %1795
  %1806 = fsub fast float -0.000000e+00, %1805
  %1807 = fmul fast float %1800, %1803
  %1808 = fmul fast float %1772, %1785
  %1809 = fmul fast float %1773, %1784
  %1810 = fsub fast float %1808, %1809
  %1811 = fmul fast float %1803, %1810
  %1812 = fsub fast float -0.000000e+00, %1811
  %1813 = fmul fast float %1771, %1785
  %1814 = fmul fast float %1783, %1773
  %1815 = fsub fast float %1813, %1814
  %1816 = fmul fast float %1815, %1803
  %1817 = fmul fast float %1771, %1784
  %1818 = fmul fast float %1772, %1783
  %1819 = fsub fast float %1817, %1818
  %1820 = fmul fast float %1803, %1819
  %1821 = fsub fast float -0.000000e+00, %1820
  %1822 = fmul fast float %1772, %1779
  %1823 = fmul fast float %1773, %1778
  %1824 = fsub fast float %1822, %1823
  %1825 = fmul fast float %1824, %1803
  %1826 = fmul fast float %1771, %1779
  %1827 = fmul fast float %1773, %1777
  %1828 = fsub fast float %1826, %1827
  %1829 = fmul fast float %1803, %1828
  %1830 = fsub fast float -0.000000e+00, %1829
  %1831 = fmul fast float %1771, %1778
  %1832 = fmul fast float %1772, %1777
  %1833 = fsub fast float %1831, %1832
  %1834 = fmul fast float %1833, %1803
  %1835 = call float @dx.op.dot3.f32(i32 55, float %1804, float %1806, float %1807, float %1786, float %1787, float %1788)  ; Dot3(ax,ay,az,bx,by,bz)
  %1836 = call float @dx.op.dot3.f32(i32 55, float %1812, float %1816, float %1821, float %1786, float %1787, float %1788)  ; Dot3(ax,ay,az,bx,by,bz)
  %1837 = call float @dx.op.dot3.f32(i32 55, float %1825, float %1830, float %1834, float %1786, float %1787, float %1788)  ; Dot3(ax,ay,az,bx,by,bz)
  %1838 = fsub fast float 1.000000e+00, %1835
  %1839 = fsub fast float %1838, %1836
  %1840 = fsub fast float %1839, %1837
  %1841 = call float @dx.op.binary.f32(i32 36, float %1835, float %1836)  ; FMin(a,b)
  %1842 = call float @dx.op.binary.f32(i32 36, float %1841, float %1837)  ; FMin(a,b)
  %1843 = call float @dx.op.binary.f32(i32 36, float %1842, float %1840)  ; FMin(a,b)
  %1844 = call float @dx.op.binary.f32(i32 35, float %1835, float %1836)  ; FMax(a,b)
  %1845 = call float @dx.op.binary.f32(i32 35, float %1844, float %1837)  ; FMax(a,b)
  %1846 = call float @dx.op.binary.f32(i32 35, float %1845, float %1840)  ; FMax(a,b)
  %1847 = fcmp fast oge float %1843, 0xBF50624DE0000000
  %1848 = fcmp fast olt float %1846, 0x3FF00068E0000000
  %1849 = and i1 %1847, %1848
  br i1 %1849, label %1866, label %1850, !dx.controlflow.hints !106

; <label>:1850                                    ; preds = %1734
  %1851 = fcmp fast oeq float %1843, %1835
  %1852 = fcmp fast oeq float %1843, %1836
  %1853 = fcmp fast oeq float %1843, %1837
  %1854 = select i1 %1853, i32 8, i32 12
  %1855 = select i1 %1852, i32 4, i32 %1854
  %1856 = select i1 %1851, i32 0, i32 %1855
  %1857 = or i32 %1856, %1735
  %1858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1857, i32 undef)  ; BufferLoad(srv,index,wot)
  %1859 = extractvalue %dx.types.ResRet.i32 %1858, 0
  %1860 = icmp ne i32 %1727, -1
  %1861 = icmp eq i32 %1859, %1727
  %1862 = and i1 %1860, %1861
  br i1 %1862, label %1866, label %1863, !dx.controlflow.hints !107

; <label>:1863                                    ; preds = %1850
  %1864 = add nuw nsw i32 %1726, 1
  %1865 = icmp eq i32 %1859, -1
  br i1 %1865, label %1866, label %1725, !llvm.loop !108

; <label>:1866                                    ; preds = %1863, %1850, %1734, %1725
  %1867 = phi i32 [ %1728, %1850 ], [ %1728, %1734 ], [ -1, %1863 ], [ -1, %1725 ]
  %1868 = phi float [ %1835, %1850 ], [ %1835, %1734 ], [ %1835, %1863 ], [ %1729, %1725 ]
  %1869 = phi float [ %1836, %1850 ], [ %1836, %1734 ], [ %1836, %1863 ], [ %1730, %1725 ]
  %1870 = phi float [ %1837, %1850 ], [ %1837, %1734 ], [ %1837, %1863 ], [ %1731, %1725 ]
  %1871 = phi float [ %1840, %1850 ], [ %1840, %1734 ], [ %1840, %1863 ], [ %1732, %1725 ]
  br label %1872

; <label>:1872                                    ; preds = %1866, %1719
  %1873 = phi i32 [ -1, %1719 ], [ %1867, %1866 ]
  %1874 = phi float [ 0.000000e+00, %1719 ], [ %1868, %1866 ]
  %1875 = phi float [ 0.000000e+00, %1719 ], [ %1869, %1866 ]
  %1876 = phi float [ 0.000000e+00, %1719 ], [ %1870, %1866 ]
  %1877 = phi float [ 0.000000e+00, %1719 ], [ %1871, %1866 ]
  %1878 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %1874)  ; FMax(a,b)
  %1879 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %1875)  ; FMax(a,b)
  %1880 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %1876)  ; FMax(a,b)
  %1881 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %1877)  ; FMax(a,b)
  %1882 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %1878)  ; FMin(a,b)
  %1883 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %1879)  ; FMin(a,b)
  %1884 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %1880)  ; FMin(a,b)
  %1885 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %1881)  ; FMin(a,b)
  store float %1882, float* %1569, align 4
  store float %1883, float* %1570, align 4
  store float %1884, float* %1571, align 4
  store float %1885, float* %1572, align 4
  %1886 = icmp eq i32 %1873, -1
  br i1 %1886, label %1887, label %1960, !dx.controlflow.hints !109

; <label>:1887                                    ; preds = %1872
  %1888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %1889 = extractvalue %dx.types.ResRet.i32 %1888, 0
  %1890 = extractvalue %dx.types.ResRet.i32 %1888, 1
  %1891 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %1892 = extractvalue %dx.types.ResRet.i32 %1891, 0
  %1893 = extractvalue %dx.types.ResRet.i32 %1891, 1
  %1894 = extractvalue %dx.types.ResRet.i32 %1891, 2
  %1895 = extractvalue %dx.types.ResRet.i32 %1891, 3
  %1896 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %1897 = extractvalue %dx.types.ResRet.i32 %1896, 0
  %1898 = extractvalue %dx.types.ResRet.i32 %1896, 1
  %1899 = extractvalue %dx.types.ResRet.i32 %1896, 2
  %1900 = extractvalue %dx.types.ResRet.i32 %1896, 3
  %1901 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %1902 = extractvalue %dx.types.ResRet.i32 %1901, 0
  %1903 = extractvalue %dx.types.ResRet.i32 %1901, 1
  %1904 = extractvalue %dx.types.ResRet.i32 %1901, 2
  %1905 = extractvalue %dx.types.ResRet.i32 %1901, 3
  %1906 = and i32 %1902, 65535
  %1907 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1906)  ; LegacyF16ToF32(value)
  %1908 = lshr i32 %1902, 16
  %1909 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1908)  ; LegacyF16ToF32(value)
  %1910 = and i32 %1903, 65535
  %1911 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1910)  ; LegacyF16ToF32(value)
  %1912 = lshr i32 %1903, 16
  %1913 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1912)  ; LegacyF16ToF32(value)
  %1914 = and i32 %1904, 65535
  %1915 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1914)  ; LegacyF16ToF32(value)
  %1916 = lshr i32 %1904, 16
  %1917 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1916)  ; LegacyF16ToF32(value)
  %1918 = and i32 %1905, 65535
  %1919 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1918)  ; LegacyF16ToF32(value)
  %1920 = lshr i32 %1905, 16
  %1921 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1920)  ; LegacyF16ToF32(value)
  %1922 = and i32 %1897, 65535
  %1923 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1922)  ; LegacyF16ToF32(value)
  %1924 = lshr i32 %1897, 16
  %1925 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1924)  ; LegacyF16ToF32(value)
  %1926 = and i32 %1898, 65535
  %1927 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1926)  ; LegacyF16ToF32(value)
  %1928 = lshr i32 %1898, 16
  %1929 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1928)  ; LegacyF16ToF32(value)
  %1930 = and i32 %1899, 65535
  %1931 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1930)  ; LegacyF16ToF32(value)
  %1932 = lshr i32 %1899, 16
  %1933 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1932)  ; LegacyF16ToF32(value)
  %1934 = and i32 %1900, 65535
  %1935 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1934)  ; LegacyF16ToF32(value)
  %1936 = lshr i32 %1900, 16
  %1937 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1936)  ; LegacyF16ToF32(value)
  %1938 = and i32 %1892, 65535
  %1939 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1938)  ; LegacyF16ToF32(value)
  %1940 = lshr i32 %1892, 16
  %1941 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1940)  ; LegacyF16ToF32(value)
  %1942 = and i32 %1893, 65535
  %1943 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1942)  ; LegacyF16ToF32(value)
  %1944 = lshr i32 %1893, 16
  %1945 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1944)  ; LegacyF16ToF32(value)
  %1946 = and i32 %1894, 65535
  %1947 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1946)  ; LegacyF16ToF32(value)
  %1948 = lshr i32 %1894, 16
  %1949 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1948)  ; LegacyF16ToF32(value)
  %1950 = and i32 %1895, 65535
  %1951 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1950)  ; LegacyF16ToF32(value)
  %1952 = lshr i32 %1895, 16
  %1953 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1952)  ; LegacyF16ToF32(value)
  %1954 = and i32 %1889, 65535
  %1955 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1954)  ; LegacyF16ToF32(value)
  %1956 = lshr i32 %1889, 16
  %1957 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1956)  ; LegacyF16ToF32(value)
  %1958 = and i32 %1890, 65535
  %1959 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1958)  ; LegacyF16ToF32(value)
  br label %2655

; <label>:1960                                    ; preds = %1872
  %1961 = shl nsw i32 %1873, 4
  %1962 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1961, i32 undef)  ; BufferLoad(srv,index,wot)
  %1963 = extractvalue %dx.types.ResRet.i32 %1962, 0
  %1964 = extractvalue %dx.types.ResRet.i32 %1962, 1
  %1965 = extractvalue %dx.types.ResRet.i32 %1962, 2
  %1966 = extractvalue %dx.types.ResRet.i32 %1962, 3
  %1967 = getelementptr inbounds [4 x i32], [4 x i32]* %44, i32 0, i32 0
  store i32 %1963, i32* %1967, align 4
  %1968 = getelementptr inbounds [4 x i32], [4 x i32]* %44, i32 0, i32 1
  store i32 %1964, i32* %1968, align 4
  %1969 = getelementptr inbounds [4 x i32], [4 x i32]* %44, i32 0, i32 2
  store i32 %1965, i32* %1969, align 4
  %1970 = getelementptr inbounds [4 x i32], [4 x i32]* %44, i32 0, i32 3
  store i32 %1966, i32* %1970, align 4
  %1971 = getelementptr inbounds [4 x float], [4 x float]* %45, i32 0, i32 0
  store float 0.000000e+00, float* %1971, align 4
  %1972 = getelementptr inbounds [4 x float], [4 x float]* %45, i32 0, i32 1
  store float 0.000000e+00, float* %1972, align 4
  %1973 = getelementptr inbounds [4 x float], [4 x float]* %45, i32 0, i32 2
  store float 0.000000e+00, float* %1973, align 4
  %1974 = getelementptr inbounds [4 x float], [4 x float]* %45, i32 0, i32 3
  store float 0.000000e+00, float* %1974, align 4
  %1975 = icmp slt i32 %1963, 0
  br i1 %1975, label %1976, label %2066, !dx.controlflow.hints !110

; <label>:1976                                    ; preds = %1960
  %1977 = fsub fast float 1.000000e+00, %1882
  %1978 = fdiv fast float 1.000000e+00, %1977
  %1979 = shl nsw i32 %1873, 6
  %1980 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1979, i32 undef)  ; BufferLoad(srv,index,wot)
  %1981 = extractvalue %dx.types.ResRet.i32 %1980, 0
  %1982 = extractvalue %dx.types.ResRet.i32 %1980, 1
  %1983 = extractvalue %dx.types.ResRet.i32 %1980, 2
  %1984 = extractvalue %dx.types.ResRet.i32 %1980, 3
  %1985 = fmul fast float %1978, %1885
  %1986 = fmul fast float %1978, %1883
  %1987 = getelementptr inbounds [4 x i32], [4 x i32]* %42, i32 0, i32 0
  store i32 %1981, i32* %1987, align 4
  %1988 = getelementptr inbounds [4 x i32], [4 x i32]* %42, i32 0, i32 1
  store i32 %1982, i32* %1988, align 4
  %1989 = getelementptr inbounds [4 x i32], [4 x i32]* %42, i32 0, i32 2
  store i32 %1983, i32* %1989, align 4
  %1990 = getelementptr inbounds [4 x i32], [4 x i32]* %42, i32 0, i32 3
  store i32 %1984, i32* %1990, align 4
  %1991 = fmul fast float %1986, 4.000000e+00
  %1992 = call float @dx.op.unary.f32(i32 27, float %1991)  ; Round_ni(value)
  %1993 = fmul fast float %1985, 4.000000e+00
  %1994 = call float @dx.op.unary.f32(i32 27, float %1993)  ; Round_ni(value)
  %1995 = fsub fast float 1.100000e+01, %1992
  %1996 = fmul fast float %1992, 5.000000e-01
  %1997 = fmul fast float %1996, %1995
  %1998 = fadd fast float %1994, 5.000000e-01
  %1999 = fadd fast float %1998, %1997
  %2000 = fptosi float %1999 to i32
  %2001 = fptosi float %1992 to i32
  %2002 = sub nsw i32 5, %2001
  %2003 = fmul fast float %1994, 2.500000e-01
  %2004 = fmul fast float %1992, 2.500000e-01
  %2005 = add nsw i32 %2000, 1
  %2006 = add nsw i32 %2000, %2002
  %2007 = fsub fast float %1985, %2003
  %2008 = fmul fast float %2007, 4.000000e+00
  %2009 = fsub fast float %1986, %2004
  %2010 = fmul fast float %2009, 4.000000e+00
  %2011 = fadd fast float %2007, %2009
  %2012 = fmul fast float %2011, 4.000000e+00
  %2013 = fcmp fast ogt float %2012, 1.000000e+00
  br i1 %2013, label %2014, label %2020, !dx.controlflow.hints !111

; <label>:2014                                    ; preds = %1976
  %2015 = add nsw i32 %2006, 1
  %2016 = fadd fast float %2010, -1.000000e+00
  %2017 = fsub fast float -0.000000e+00, %2016
  %2018 = fadd fast float %2008, -1.000000e+00
  %2019 = fsub fast float -0.000000e+00, %2018
  br label %2020

; <label>:2020                                    ; preds = %2014, %1976
  %2021 = phi i32 [ %2015, %2014 ], [ %2000, %1976 ]
  %2022 = phi i32 [ %2005, %2014 ], [ %2006, %1976 ]
  %2023 = phi i32 [ %2006, %2014 ], [ %2005, %1976 ]
  %2024 = phi float [ %2019, %2014 ], [ %2010, %1976 ]
  %2025 = phi float [ %2017, %2014 ], [ %2008, %1976 ]
  %2026 = fsub fast float 1.000000e+00, %2024
  %2027 = fsub fast float %2026, %2025
  %2028 = lshr i32 %2023, 2
  %2029 = getelementptr [4 x i32], [4 x i32]* %42, i32 0, i32 %2028
  %2030 = load i32, i32* %2029, align 4, !tbaa !65, !noalias !112
  %2031 = shl i32 %2023, 3
  %2032 = and i32 %2031, 24
  %2033 = lshr i32 %2030, %2032
  %2034 = and i32 %2033, 255
  %2035 = sitofp i32 %2034 to float
  %2036 = fmul fast float %2025, 0x3F70101020000000
  %2037 = fmul fast float %2036, %2035
  %2038 = lshr i32 %2022, 2
  %2039 = getelementptr [4 x i32], [4 x i32]* %42, i32 0, i32 %2038
  %2040 = load i32, i32* %2039, align 4, !tbaa !65, !noalias !112
  %2041 = shl i32 %2022, 3
  %2042 = and i32 %2041, 24
  %2043 = lshr i32 %2040, %2042
  %2044 = and i32 %2043, 255
  %2045 = sitofp i32 %2044 to float
  %2046 = fmul fast float %2024, 0x3F70101020000000
  %2047 = fmul fast float %2046, %2045
  %2048 = lshr i32 %2021, 2
  %2049 = getelementptr [4 x i32], [4 x i32]* %42, i32 0, i32 %2048
  %2050 = load i32, i32* %2049, align 4, !tbaa !65, !noalias !112
  %2051 = shl i32 %2021, 3
  %2052 = and i32 %2051, 24
  %2053 = lshr i32 %2050, %2052
  %2054 = and i32 %2053, 255
  %2055 = sitofp i32 %2054 to float
  %2056 = fmul fast float %2027, 0x3F70101020000000
  %2057 = fmul fast float %2056, %2055
  %2058 = fsub fast float 1.000000e+00, %2037
  %2059 = fsub fast float %2058, %2047
  %2060 = fsub fast float %2059, %2057
  %2061 = fmul fast float %1882, 2.000000e+01
  %2062 = fadd fast float %2061, 1.000000e+00
  %2063 = fmul fast float %2060, 2.000000e+01
  %2064 = fsub fast float %2062, %2063
  %2065 = call float @dx.op.unary.f32(i32 7, float %2064)  ; Saturate(value)
  br label %2066

; <label>:2066                                    ; preds = %2020, %1960
  %2067 = phi float [ %2065, %2020 ], [ 1.000000e+00, %1960 ]
  store float %2067, float* %1971, align 4, !tbaa !80, !noalias !112
  %2068 = icmp slt i32 %1964, 0
  br i1 %2068, label %2069, label %2160, !dx.controlflow.hints !110

; <label>:2069                                    ; preds = %2066
  %2070 = fsub fast float 1.000000e+00, %1883
  %2071 = fdiv fast float 1.000000e+00, %2070
  %2072 = shl i32 %1873, 6
  %2073 = or i32 %2072, 16
  %2074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2073, i32 undef)  ; BufferLoad(srv,index,wot)
  %2075 = extractvalue %dx.types.ResRet.i32 %2074, 0
  %2076 = extractvalue %dx.types.ResRet.i32 %2074, 1
  %2077 = extractvalue %dx.types.ResRet.i32 %2074, 2
  %2078 = extractvalue %dx.types.ResRet.i32 %2074, 3
  %2079 = fmul fast float %2071, %1882
  %2080 = fmul fast float %2071, %1885
  %2081 = getelementptr inbounds [4 x i32], [4 x i32]* %42, i32 0, i32 0
  store i32 %2075, i32* %2081, align 4
  %2082 = getelementptr inbounds [4 x i32], [4 x i32]* %42, i32 0, i32 1
  store i32 %2076, i32* %2082, align 4
  %2083 = getelementptr inbounds [4 x i32], [4 x i32]* %42, i32 0, i32 2
  store i32 %2077, i32* %2083, align 4
  %2084 = getelementptr inbounds [4 x i32], [4 x i32]* %42, i32 0, i32 3
  store i32 %2078, i32* %2084, align 4
  %2085 = fmul fast float %2080, 4.000000e+00
  %2086 = call float @dx.op.unary.f32(i32 27, float %2085)  ; Round_ni(value)
  %2087 = fmul fast float %2079, 4.000000e+00
  %2088 = call float @dx.op.unary.f32(i32 27, float %2087)  ; Round_ni(value)
  %2089 = fsub fast float 1.100000e+01, %2086
  %2090 = fmul fast float %2086, 5.000000e-01
  %2091 = fmul fast float %2090, %2089
  %2092 = fadd fast float %2088, 5.000000e-01
  %2093 = fadd fast float %2092, %2091
  %2094 = fptosi float %2093 to i32
  %2095 = fptosi float %2086 to i32
  %2096 = sub nsw i32 5, %2095
  %2097 = fmul fast float %2088, 2.500000e-01
  %2098 = fmul fast float %2086, 2.500000e-01
  %2099 = add nsw i32 %2094, 1
  %2100 = add nsw i32 %2094, %2096
  %2101 = fsub fast float %2079, %2097
  %2102 = fmul fast float %2101, 4.000000e+00
  %2103 = fsub fast float %2080, %2098
  %2104 = fmul fast float %2103, 4.000000e+00
  %2105 = fadd fast float %2101, %2103
  %2106 = fmul fast float %2105, 4.000000e+00
  %2107 = fcmp fast ogt float %2106, 1.000000e+00
  br i1 %2107, label %2108, label %2114, !dx.controlflow.hints !111

; <label>:2108                                    ; preds = %2069
  %2109 = add nsw i32 %2100, 1
  %2110 = fadd fast float %2104, -1.000000e+00
  %2111 = fsub fast float -0.000000e+00, %2110
  %2112 = fadd fast float %2102, -1.000000e+00
  %2113 = fsub fast float -0.000000e+00, %2112
  br label %2114

; <label>:2114                                    ; preds = %2108, %2069
  %2115 = phi i32 [ %2109, %2108 ], [ %2094, %2069 ]
  %2116 = phi i32 [ %2099, %2108 ], [ %2100, %2069 ]
  %2117 = phi i32 [ %2100, %2108 ], [ %2099, %2069 ]
  %2118 = phi float [ %2113, %2108 ], [ %2104, %2069 ]
  %2119 = phi float [ %2111, %2108 ], [ %2102, %2069 ]
  %2120 = fsub fast float 1.000000e+00, %2118
  %2121 = fsub fast float %2120, %2119
  %2122 = lshr i32 %2117, 2
  %2123 = getelementptr [4 x i32], [4 x i32]* %42, i32 0, i32 %2122
  %2124 = load i32, i32* %2123, align 4, !tbaa !65, !noalias !112
  %2125 = shl i32 %2117, 3
  %2126 = and i32 %2125, 24
  %2127 = lshr i32 %2124, %2126
  %2128 = and i32 %2127, 255
  %2129 = sitofp i32 %2128 to float
  %2130 = fmul fast float %2119, 0x3F70101020000000
  %2131 = fmul fast float %2130, %2129
  %2132 = lshr i32 %2116, 2
  %2133 = getelementptr [4 x i32], [4 x i32]* %42, i32 0, i32 %2132
  %2134 = load i32, i32* %2133, align 4, !tbaa !65, !noalias !112
  %2135 = shl i32 %2116, 3
  %2136 = and i32 %2135, 24
  %2137 = lshr i32 %2134, %2136
  %2138 = and i32 %2137, 255
  %2139 = sitofp i32 %2138 to float
  %2140 = fmul fast float %2118, 0x3F70101020000000
  %2141 = fmul fast float %2140, %2139
  %2142 = lshr i32 %2115, 2
  %2143 = getelementptr [4 x i32], [4 x i32]* %42, i32 0, i32 %2142
  %2144 = load i32, i32* %2143, align 4, !tbaa !65, !noalias !112
  %2145 = shl i32 %2115, 3
  %2146 = and i32 %2145, 24
  %2147 = lshr i32 %2144, %2146
  %2148 = and i32 %2147, 255
  %2149 = sitofp i32 %2148 to float
  %2150 = fmul fast float %2121, 0x3F70101020000000
  %2151 = fmul fast float %2150, %2149
  %2152 = fsub fast float 1.000000e+00, %2131
  %2153 = fsub fast float %2152, %2141
  %2154 = fsub fast float %2153, %2151
  %2155 = fmul fast float %1883, 2.000000e+01
  %2156 = fadd fast float %2155, 1.000000e+00
  %2157 = fmul fast float %2154, 2.000000e+01
  %2158 = fsub fast float %2156, %2157
  %2159 = call float @dx.op.unary.f32(i32 7, float %2158)  ; Saturate(value)
  br label %2160

; <label>:2160                                    ; preds = %2114, %2066
  %2161 = phi float [ %2159, %2114 ], [ 1.000000e+00, %2066 ]
  store float %2161, float* %1972, align 4, !tbaa !80, !noalias !112
  %2162 = fadd fast float %2161, %2067
  %2163 = icmp slt i32 %1965, 0
  br i1 %2163, label %2164, label %2255, !dx.controlflow.hints !110

; <label>:2164                                    ; preds = %2160
  %2165 = fsub fast float 1.000000e+00, %1884
  %2166 = fdiv fast float 1.000000e+00, %2165
  %2167 = shl i32 %1873, 6
  %2168 = or i32 %2167, 32
  %2169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2168, i32 undef)  ; BufferLoad(srv,index,wot)
  %2170 = extractvalue %dx.types.ResRet.i32 %2169, 0
  %2171 = extractvalue %dx.types.ResRet.i32 %2169, 1
  %2172 = extractvalue %dx.types.ResRet.i32 %2169, 2
  %2173 = extractvalue %dx.types.ResRet.i32 %2169, 3
  %2174 = fmul fast float %2166, %1882
  %2175 = fmul fast float %2166, %1883
  %2176 = getelementptr inbounds [4 x i32], [4 x i32]* %42, i32 0, i32 0
  store i32 %2170, i32* %2176, align 4
  %2177 = getelementptr inbounds [4 x i32], [4 x i32]* %42, i32 0, i32 1
  store i32 %2171, i32* %2177, align 4
  %2178 = getelementptr inbounds [4 x i32], [4 x i32]* %42, i32 0, i32 2
  store i32 %2172, i32* %2178, align 4
  %2179 = getelementptr inbounds [4 x i32], [4 x i32]* %42, i32 0, i32 3
  store i32 %2173, i32* %2179, align 4
  %2180 = fmul fast float %2175, 4.000000e+00
  %2181 = call float @dx.op.unary.f32(i32 27, float %2180)  ; Round_ni(value)
  %2182 = fmul fast float %2174, 4.000000e+00
  %2183 = call float @dx.op.unary.f32(i32 27, float %2182)  ; Round_ni(value)
  %2184 = fsub fast float 1.100000e+01, %2181
  %2185 = fmul fast float %2181, 5.000000e-01
  %2186 = fmul fast float %2185, %2184
  %2187 = fadd fast float %2183, 5.000000e-01
  %2188 = fadd fast float %2187, %2186
  %2189 = fptosi float %2188 to i32
  %2190 = fptosi float %2181 to i32
  %2191 = sub nsw i32 5, %2190
  %2192 = fmul fast float %2183, 2.500000e-01
  %2193 = fmul fast float %2181, 2.500000e-01
  %2194 = add nsw i32 %2189, 1
  %2195 = add nsw i32 %2189, %2191
  %2196 = fsub fast float %2174, %2192
  %2197 = fmul fast float %2196, 4.000000e+00
  %2198 = fsub fast float %2175, %2193
  %2199 = fmul fast float %2198, 4.000000e+00
  %2200 = fadd fast float %2196, %2198
  %2201 = fmul fast float %2200, 4.000000e+00
  %2202 = fcmp fast ogt float %2201, 1.000000e+00
  br i1 %2202, label %2203, label %2209, !dx.controlflow.hints !111

; <label>:2203                                    ; preds = %2164
  %2204 = add nsw i32 %2195, 1
  %2205 = fadd fast float %2199, -1.000000e+00
  %2206 = fsub fast float -0.000000e+00, %2205
  %2207 = fadd fast float %2197, -1.000000e+00
  %2208 = fsub fast float -0.000000e+00, %2207
  br label %2209

; <label>:2209                                    ; preds = %2203, %2164
  %2210 = phi i32 [ %2204, %2203 ], [ %2189, %2164 ]
  %2211 = phi i32 [ %2194, %2203 ], [ %2195, %2164 ]
  %2212 = phi i32 [ %2195, %2203 ], [ %2194, %2164 ]
  %2213 = phi float [ %2208, %2203 ], [ %2199, %2164 ]
  %2214 = phi float [ %2206, %2203 ], [ %2197, %2164 ]
  %2215 = fsub fast float 1.000000e+00, %2213
  %2216 = fsub fast float %2215, %2214
  %2217 = lshr i32 %2212, 2
  %2218 = getelementptr [4 x i32], [4 x i32]* %42, i32 0, i32 %2217
  %2219 = load i32, i32* %2218, align 4, !tbaa !65, !noalias !112
  %2220 = shl i32 %2212, 3
  %2221 = and i32 %2220, 24
  %2222 = lshr i32 %2219, %2221
  %2223 = and i32 %2222, 255
  %2224 = sitofp i32 %2223 to float
  %2225 = fmul fast float %2214, 0x3F70101020000000
  %2226 = fmul fast float %2225, %2224
  %2227 = lshr i32 %2211, 2
  %2228 = getelementptr [4 x i32], [4 x i32]* %42, i32 0, i32 %2227
  %2229 = load i32, i32* %2228, align 4, !tbaa !65, !noalias !112
  %2230 = shl i32 %2211, 3
  %2231 = and i32 %2230, 24
  %2232 = lshr i32 %2229, %2231
  %2233 = and i32 %2232, 255
  %2234 = sitofp i32 %2233 to float
  %2235 = fmul fast float %2213, 0x3F70101020000000
  %2236 = fmul fast float %2235, %2234
  %2237 = lshr i32 %2210, 2
  %2238 = getelementptr [4 x i32], [4 x i32]* %42, i32 0, i32 %2237
  %2239 = load i32, i32* %2238, align 4, !tbaa !65, !noalias !112
  %2240 = shl i32 %2210, 3
  %2241 = and i32 %2240, 24
  %2242 = lshr i32 %2239, %2241
  %2243 = and i32 %2242, 255
  %2244 = sitofp i32 %2243 to float
  %2245 = fmul fast float %2216, 0x3F70101020000000
  %2246 = fmul fast float %2245, %2244
  %2247 = fsub fast float 1.000000e+00, %2226
  %2248 = fsub fast float %2247, %2236
  %2249 = fsub fast float %2248, %2246
  %2250 = fmul fast float %1884, 2.000000e+01
  %2251 = fadd fast float %2250, 1.000000e+00
  %2252 = fmul fast float %2249, 2.000000e+01
  %2253 = fsub fast float %2251, %2252
  %2254 = call float @dx.op.unary.f32(i32 7, float %2253)  ; Saturate(value)
  br label %2255

; <label>:2255                                    ; preds = %2209, %2160
  %2256 = phi float [ %2254, %2209 ], [ 1.000000e+00, %2160 ]
  store float %2256, float* %1973, align 4, !tbaa !80, !noalias !112
  %2257 = fadd fast float %2162, %2256
  %2258 = icmp slt i32 %1966, 0
  br i1 %2258, label %2259, label %2350, !dx.controlflow.hints !110

; <label>:2259                                    ; preds = %2255
  %2260 = fsub fast float 1.000000e+00, %1885
  %2261 = fdiv fast float 1.000000e+00, %2260
  %2262 = shl i32 %1873, 6
  %2263 = or i32 %2262, 48
  %2264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2263, i32 undef)  ; BufferLoad(srv,index,wot)
  %2265 = extractvalue %dx.types.ResRet.i32 %2264, 0
  %2266 = extractvalue %dx.types.ResRet.i32 %2264, 1
  %2267 = extractvalue %dx.types.ResRet.i32 %2264, 2
  %2268 = extractvalue %dx.types.ResRet.i32 %2264, 3
  %2269 = fmul fast float %2261, %1882
  %2270 = fmul fast float %2261, %1883
  %2271 = getelementptr inbounds [4 x i32], [4 x i32]* %42, i32 0, i32 0
  store i32 %2265, i32* %2271, align 4
  %2272 = getelementptr inbounds [4 x i32], [4 x i32]* %42, i32 0, i32 1
  store i32 %2266, i32* %2272, align 4
  %2273 = getelementptr inbounds [4 x i32], [4 x i32]* %42, i32 0, i32 2
  store i32 %2267, i32* %2273, align 4
  %2274 = getelementptr inbounds [4 x i32], [4 x i32]* %42, i32 0, i32 3
  store i32 %2268, i32* %2274, align 4
  %2275 = fmul fast float %2270, 4.000000e+00
  %2276 = call float @dx.op.unary.f32(i32 27, float %2275)  ; Round_ni(value)
  %2277 = fmul fast float %2269, 4.000000e+00
  %2278 = call float @dx.op.unary.f32(i32 27, float %2277)  ; Round_ni(value)
  %2279 = fsub fast float 1.100000e+01, %2276
  %2280 = fmul fast float %2276, 5.000000e-01
  %2281 = fmul fast float %2280, %2279
  %2282 = fadd fast float %2278, 5.000000e-01
  %2283 = fadd fast float %2282, %2281
  %2284 = fptosi float %2283 to i32
  %2285 = fptosi float %2276 to i32
  %2286 = sub nsw i32 5, %2285
  %2287 = fmul fast float %2278, 2.500000e-01
  %2288 = fmul fast float %2276, 2.500000e-01
  %2289 = add nsw i32 %2284, 1
  %2290 = add nsw i32 %2284, %2286
  %2291 = fsub fast float %2269, %2287
  %2292 = fmul fast float %2291, 4.000000e+00
  %2293 = fsub fast float %2270, %2288
  %2294 = fmul fast float %2293, 4.000000e+00
  %2295 = fadd fast float %2291, %2293
  %2296 = fmul fast float %2295, 4.000000e+00
  %2297 = fcmp fast ogt float %2296, 1.000000e+00
  br i1 %2297, label %2298, label %2304, !dx.controlflow.hints !111

; <label>:2298                                    ; preds = %2259
  %2299 = add nsw i32 %2290, 1
  %2300 = fadd fast float %2294, -1.000000e+00
  %2301 = fsub fast float -0.000000e+00, %2300
  %2302 = fadd fast float %2292, -1.000000e+00
  %2303 = fsub fast float -0.000000e+00, %2302
  br label %2304

; <label>:2304                                    ; preds = %2298, %2259
  %2305 = phi i32 [ %2299, %2298 ], [ %2284, %2259 ]
  %2306 = phi i32 [ %2289, %2298 ], [ %2290, %2259 ]
  %2307 = phi i32 [ %2290, %2298 ], [ %2289, %2259 ]
  %2308 = phi float [ %2303, %2298 ], [ %2294, %2259 ]
  %2309 = phi float [ %2301, %2298 ], [ %2292, %2259 ]
  %2310 = fsub fast float 1.000000e+00, %2308
  %2311 = fsub fast float %2310, %2309
  %2312 = lshr i32 %2307, 2
  %2313 = getelementptr [4 x i32], [4 x i32]* %42, i32 0, i32 %2312
  %2314 = load i32, i32* %2313, align 4, !tbaa !65, !noalias !112
  %2315 = shl i32 %2307, 3
  %2316 = and i32 %2315, 24
  %2317 = lshr i32 %2314, %2316
  %2318 = and i32 %2317, 255
  %2319 = sitofp i32 %2318 to float
  %2320 = fmul fast float %2309, 0x3F70101020000000
  %2321 = fmul fast float %2320, %2319
  %2322 = lshr i32 %2306, 2
  %2323 = getelementptr [4 x i32], [4 x i32]* %42, i32 0, i32 %2322
  %2324 = load i32, i32* %2323, align 4, !tbaa !65, !noalias !112
  %2325 = shl i32 %2306, 3
  %2326 = and i32 %2325, 24
  %2327 = lshr i32 %2324, %2326
  %2328 = and i32 %2327, 255
  %2329 = sitofp i32 %2328 to float
  %2330 = fmul fast float %2308, 0x3F70101020000000
  %2331 = fmul fast float %2330, %2329
  %2332 = lshr i32 %2305, 2
  %2333 = getelementptr [4 x i32], [4 x i32]* %42, i32 0, i32 %2332
  %2334 = load i32, i32* %2333, align 4, !tbaa !65, !noalias !112
  %2335 = shl i32 %2305, 3
  %2336 = and i32 %2335, 24
  %2337 = lshr i32 %2334, %2336
  %2338 = and i32 %2337, 255
  %2339 = sitofp i32 %2338 to float
  %2340 = fmul fast float %2311, 0x3F70101020000000
  %2341 = fmul fast float %2340, %2339
  %2342 = fsub fast float 1.000000e+00, %2321
  %2343 = fsub fast float %2342, %2331
  %2344 = fsub fast float %2343, %2341
  %2345 = fmul fast float %1885, 2.000000e+01
  %2346 = fadd fast float %2345, 1.000000e+00
  %2347 = fmul fast float %2344, 2.000000e+01
  %2348 = fsub fast float %2346, %2347
  %2349 = call float @dx.op.unary.f32(i32 7, float %2348)  ; Saturate(value)
  br label %2350

; <label>:2350                                    ; preds = %2304, %2255
  %2351 = phi float [ %2349, %2304 ], [ 1.000000e+00, %2255 ]
  store float %2351, float* %1974, align 4, !tbaa !80, !noalias !112
  %2352 = fadd fast float %2257, %2351
  %2353 = fcmp fast oeq float %2352, 0.000000e+00
  br i1 %2353, label %2354, label %2355, !dx.controlflow.hints !120

; <label>:2354                                    ; preds = %2350
  store float 2.500000e-01, float* %1971, align 4
  store float 2.500000e-01, float* %1972, align 4
  store float 2.500000e-01, float* %1973, align 4
  store float 2.500000e-01, float* %1974, align 4
  br label %2355

; <label>:2355                                    ; preds = %2354, %2350
  %2356 = phi float [ 2.500000e-01, %2354 ], [ %2067, %2350 ]
  br label %2357

; <label>:2357                                    ; preds = %2621, %2355
  %2358 = phi float [ %2623, %2621 ], [ %2356, %2355 ]
  %2359 = phi float [ %2591, %2621 ], [ 0.000000e+00, %2355 ]
  %2360 = phi float [ %2592, %2621 ], [ 0.000000e+00, %2355 ]
  %2361 = phi float [ %2593, %2621 ], [ 0.000000e+00, %2355 ]
  %2362 = phi float [ %2594, %2621 ], [ 0.000000e+00, %2355 ]
  %2363 = phi float [ %2595, %2621 ], [ 0.000000e+00, %2355 ]
  %2364 = phi float [ %2596, %2621 ], [ 0.000000e+00, %2355 ]
  %2365 = phi float [ %2597, %2621 ], [ 0.000000e+00, %2355 ]
  %2366 = phi float [ %2598, %2621 ], [ 0.000000e+00, %2355 ]
  %2367 = phi float [ %2599, %2621 ], [ 0.000000e+00, %2355 ]
  %2368 = phi float [ %2600, %2621 ], [ 0.000000e+00, %2355 ]
  %2369 = phi float [ %2601, %2621 ], [ 0.000000e+00, %2355 ]
  %2370 = phi float [ %2602, %2621 ], [ 0.000000e+00, %2355 ]
  %2371 = phi float [ %2603, %2621 ], [ 0.000000e+00, %2355 ]
  %2372 = phi float [ %2604, %2621 ], [ 0.000000e+00, %2355 ]
  %2373 = phi float [ %2605, %2621 ], [ 0.000000e+00, %2355 ]
  %2374 = phi float [ %2606, %2621 ], [ 0.000000e+00, %2355 ]
  %2375 = phi float [ %2607, %2621 ], [ 0.000000e+00, %2355 ]
  %2376 = phi float [ %2608, %2621 ], [ 0.000000e+00, %2355 ]
  %2377 = phi float [ %2609, %2621 ], [ 0.000000e+00, %2355 ]
  %2378 = phi float [ %2610, %2621 ], [ 0.000000e+00, %2355 ]
  %2379 = phi float [ %2611, %2621 ], [ 0.000000e+00, %2355 ]
  %2380 = phi float [ %2612, %2621 ], [ 0.000000e+00, %2355 ]
  %2381 = phi float [ %2613, %2621 ], [ 0.000000e+00, %2355 ]
  %2382 = phi float [ %2614, %2621 ], [ 0.000000e+00, %2355 ]
  %2383 = phi float [ %2615, %2621 ], [ 0.000000e+00, %2355 ]
  %2384 = phi float [ %2616, %2621 ], [ 0.000000e+00, %2355 ]
  %2385 = phi float [ %2617, %2621 ], [ 0.000000e+00, %2355 ]
  %2386 = phi float [ %2618, %2621 ], [ 0.000000e+00, %2355 ]
  %2387 = phi i32 [ %2619, %2621 ], [ 0, %2355 ]
  %2388 = fcmp fast ogt float %2358, 0.000000e+00
  br i1 %2388, label %2389, label %2590, !dx.controlflow.hints !121

; <label>:2389                                    ; preds = %2357
  %2390 = getelementptr [4 x float], [4 x float]* %43, i32 0, i32 %2387
  %2391 = load float, float* %2390, align 4, !tbaa !80, !noalias !112
  %2392 = getelementptr [4 x i32], [4 x i32]* %44, i32 0, i32 %2387
  %2393 = load i32, i32* %2392, align 4, !tbaa !65, !noalias !112
  %2394 = fmul fast float %2391, %2358
  %2395 = shl i32 %2393, 5
  %2396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %2395, i32 undef)  ; BufferLoad(srv,index,wot)
  %2397 = extractvalue %dx.types.ResRet.i32 %2396, 0
  %2398 = extractvalue %dx.types.ResRet.i32 %2396, 1
  %2399 = extractvalue %dx.types.ResRet.i32 %2396, 2
  %2400 = extractvalue %dx.types.ResRet.i32 %2396, 3
  %2401 = or i32 %2395, 16
  %2402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %2401, i32 undef)  ; BufferLoad(srv,index,wot)
  %2403 = extractvalue %dx.types.ResRet.i32 %2402, 0
  %2404 = extractvalue %dx.types.ResRet.i32 %2402, 1
  %2405 = extractvalue %dx.types.ResRet.i32 %2402, 2
  %2406 = shl i32 %2397, 4
  %2407 = and i32 %2406, 32752
  %2408 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2407)  ; LegacyF16ToF32(value)
  %2409 = lshr i32 %2397, 7
  %2410 = and i32 %2409, 32752
  %2411 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2410)  ; LegacyF16ToF32(value)
  %2412 = lshr i32 %2397, 22
  %2413 = shl nuw nsw i32 %2412, 5
  %2414 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2413)  ; LegacyF16ToF32(value)
  %2415 = and i32 %2398, 255
  %2416 = uitofp i32 %2415 to float
  %2417 = fmul fast float %2416, 0x3F80204080000000
  %2418 = fadd fast float %2417, -1.000000e+00
  %2419 = lshr i32 %2398, 8
  %2420 = and i32 %2419, 255
  %2421 = uitofp i32 %2420 to float
  %2422 = fmul fast float %2421, 0x3F80204080000000
  %2423 = fadd fast float %2422, -1.000000e+00
  %2424 = lshr i32 %2398, 16
  %2425 = and i32 %2424, 255
  %2426 = uitofp i32 %2425 to float
  %2427 = fmul fast float %2426, 0x3F80204080000000
  %2428 = fadd fast float %2427, -1.000000e+00
  %2429 = lshr i32 %2398, 24
  %2430 = uitofp i32 %2429 to float
  %2431 = fmul fast float %2430, 0x3F80204080000000
  %2432 = fadd fast float %2431, -1.000000e+00
  %2433 = and i32 %2399, 255
  %2434 = uitofp i32 %2433 to float
  %2435 = fmul fast float %2434, 0x3F80204080000000
  %2436 = fadd fast float %2435, -1.000000e+00
  %2437 = lshr i32 %2399, 8
  %2438 = and i32 %2437, 255
  %2439 = uitofp i32 %2438 to float
  %2440 = fmul fast float %2439, 0x3F80204080000000
  %2441 = fadd fast float %2440, -1.000000e+00
  %2442 = lshr i32 %2399, 16
  %2443 = and i32 %2442, 255
  %2444 = uitofp i32 %2443 to float
  %2445 = fmul fast float %2444, 0x3F80204080000000
  %2446 = fadd fast float %2445, -1.000000e+00
  %2447 = lshr i32 %2399, 24
  %2448 = uitofp i32 %2447 to float
  %2449 = fmul fast float %2448, 0x3F80204080000000
  %2450 = fadd fast float %2449, -1.000000e+00
  %2451 = and i32 %2400, 255
  %2452 = uitofp i32 %2451 to float
  %2453 = fmul fast float %2452, 0x3F80204080000000
  %2454 = fadd fast float %2453, -1.000000e+00
  %2455 = lshr i32 %2400, 8
  %2456 = and i32 %2455, 255
  %2457 = uitofp i32 %2456 to float
  %2458 = fmul fast float %2457, 0x3F80204080000000
  %2459 = fadd fast float %2458, -1.000000e+00
  %2460 = lshr i32 %2400, 16
  %2461 = and i32 %2460, 255
  %2462 = uitofp i32 %2461 to float
  %2463 = fmul fast float %2462, 0x3F80204080000000
  %2464 = fadd fast float %2463, -1.000000e+00
  %2465 = lshr i32 %2400, 24
  %2466 = uitofp i32 %2465 to float
  %2467 = fmul fast float %2466, 0x3F80204080000000
  %2468 = fadd fast float %2467, -1.000000e+00
  %2469 = and i32 %2403, 255
  %2470 = uitofp i32 %2469 to float
  %2471 = fmul fast float %2470, 0x3F80204080000000
  %2472 = fadd fast float %2471, -1.000000e+00
  %2473 = lshr i32 %2403, 8
  %2474 = and i32 %2473, 255
  %2475 = uitofp i32 %2474 to float
  %2476 = fmul fast float %2475, 0x3F80204080000000
  %2477 = fadd fast float %2476, -1.000000e+00
  %2478 = lshr i32 %2403, 16
  %2479 = and i32 %2478, 255
  %2480 = uitofp i32 %2479 to float
  %2481 = fmul fast float %2480, 0x3F80204080000000
  %2482 = fadd fast float %2481, -1.000000e+00
  %2483 = lshr i32 %2403, 24
  %2484 = uitofp i32 %2483 to float
  %2485 = fmul fast float %2484, 0x3F80204080000000
  %2486 = fadd fast float %2485, -1.000000e+00
  %2487 = and i32 %2404, 255
  %2488 = uitofp i32 %2487 to float
  %2489 = fmul fast float %2488, 0x3F80204080000000
  %2490 = fadd fast float %2489, -1.000000e+00
  %2491 = lshr i32 %2404, 8
  %2492 = and i32 %2491, 255
  %2493 = uitofp i32 %2492 to float
  %2494 = fmul fast float %2493, 0x3F80204080000000
  %2495 = fadd fast float %2494, -1.000000e+00
  %2496 = lshr i32 %2404, 16
  %2497 = and i32 %2496, 255
  %2498 = uitofp i32 %2497 to float
  %2499 = fmul fast float %2498, 0x3F80204080000000
  %2500 = fadd fast float %2499, -1.000000e+00
  %2501 = lshr i32 %2404, 24
  %2502 = uitofp i32 %2501 to float
  %2503 = fmul fast float %2502, 0x3F80204080000000
  %2504 = fadd fast float %2503, -1.000000e+00
  %2505 = and i32 %2405, 255
  %2506 = uitofp i32 %2505 to float
  %2507 = fmul fast float %2506, 0x3F80204080000000
  %2508 = fadd fast float %2507, -1.000000e+00
  %2509 = lshr i32 %2405, 8
  %2510 = and i32 %2509, 255
  %2511 = uitofp i32 %2510 to float
  %2512 = fmul fast float %2511, 0x3F80204080000000
  %2513 = fadd fast float %2512, -1.000000e+00
  %2514 = lshr i32 %2405, 16
  %2515 = and i32 %2514, 255
  %2516 = uitofp i32 %2515 to float
  %2517 = fmul fast float %2516, 0x3F80204080000000
  %2518 = fadd fast float %2517, -1.000000e+00
  %2519 = lshr i32 %2405, 24
  %2520 = uitofp i32 %2519 to float
  %2521 = fmul fast float %2520, 0x3F80204080000000
  %2522 = fadd fast float %2521, -1.000000e+00
  %2523 = fmul fast float %2408, %2394
  %2524 = fadd fast float %2523, %2367
  %2525 = fmul fast float %2394, 0x3FFBB67AE0000000
  %2526 = fmul fast float %2525, %2408
  %2527 = fmul fast float %2526, %2418
  %2528 = fadd fast float %2527, %2366
  %2529 = fmul fast float %2526, %2423
  %2530 = fadd fast float %2529, %2365
  %2531 = fmul fast float %2526, %2428
  %2532 = fadd fast float %2531, %2364
  %2533 = fmul fast float %2394, 0x3FFEFBDEC0000000
  %2534 = fmul fast float %2533, %2408
  %2535 = fmul fast float %2534, %2432
  %2536 = fadd fast float %2535, %2363
  %2537 = fmul fast float %2534, %2436
  %2538 = fadd fast float %2537, %2362
  %2539 = fmul fast float %2394, 0x4001E377A0000000
  %2540 = fmul fast float %2539, %2408
  %2541 = fmul fast float %2540, %2441
  %2542 = fadd fast float %2541, %2361
  %2543 = fmul fast float %2534, %2446
  %2544 = fadd fast float %2543, %2360
  %2545 = fmul fast float %2534, %2450
  %2546 = fadd fast float %2545, %2359
  %2547 = fmul fast float %2411, %2394
  %2548 = fadd fast float %2547, %2376
  %2549 = fmul fast float %2525, %2411
  %2550 = fmul fast float %2549, %2454
  %2551 = fadd fast float %2550, %2375
  %2552 = fmul fast float %2549, %2459
  %2553 = fadd fast float %2552, %2374
  %2554 = fmul fast float %2549, %2464
  %2555 = fadd fast float %2554, %2373
  %2556 = fmul fast float %2533, %2411
  %2557 = fmul fast float %2556, %2468
  %2558 = fadd fast float %2557, %2372
  %2559 = fmul fast float %2556, %2472
  %2560 = fadd fast float %2559, %2371
  %2561 = fmul fast float %2539, %2411
  %2562 = fmul fast float %2561, %2477
  %2563 = fadd fast float %2562, %2370
  %2564 = fmul fast float %2556, %2482
  %2565 = fadd fast float %2564, %2369
  %2566 = fmul fast float %2556, %2486
  %2567 = fadd fast float %2566, %2368
  %2568 = fmul fast float %2414, %2394
  %2569 = fadd fast float %2568, %2385
  %2570 = fmul fast float %2525, %2414
  %2571 = fmul fast float %2570, %2490
  %2572 = fadd fast float %2571, %2384
  %2573 = fmul fast float %2570, %2495
  %2574 = fadd fast float %2573, %2383
  %2575 = fmul fast float %2570, %2500
  %2576 = fadd fast float %2575, %2382
  %2577 = fmul fast float %2533, %2414
  %2578 = fmul fast float %2577, %2504
  %2579 = fadd fast float %2578, %2381
  %2580 = fmul fast float %2577, %2508
  %2581 = fadd fast float %2580, %2380
  %2582 = fmul fast float %2539, %2414
  %2583 = fmul fast float %2582, %2513
  %2584 = fadd fast float %2583, %2379
  %2585 = fmul fast float %2577, %2518
  %2586 = fadd fast float %2585, %2378
  %2587 = fmul fast float %2577, %2522
  %2588 = fadd fast float %2587, %2377
  %2589 = fadd fast float %2394, %2386
  br label %2590

; <label>:2590                                    ; preds = %2389, %2357
  %2591 = phi float [ %2546, %2389 ], [ %2359, %2357 ]
  %2592 = phi float [ %2544, %2389 ], [ %2360, %2357 ]
  %2593 = phi float [ %2542, %2389 ], [ %2361, %2357 ]
  %2594 = phi float [ %2538, %2389 ], [ %2362, %2357 ]
  %2595 = phi float [ %2536, %2389 ], [ %2363, %2357 ]
  %2596 = phi float [ %2532, %2389 ], [ %2364, %2357 ]
  %2597 = phi float [ %2530, %2389 ], [ %2365, %2357 ]
  %2598 = phi float [ %2528, %2389 ], [ %2366, %2357 ]
  %2599 = phi float [ %2524, %2389 ], [ %2367, %2357 ]
  %2600 = phi float [ %2567, %2389 ], [ %2368, %2357 ]
  %2601 = phi float [ %2565, %2389 ], [ %2369, %2357 ]
  %2602 = phi float [ %2563, %2389 ], [ %2370, %2357 ]
  %2603 = phi float [ %2560, %2389 ], [ %2371, %2357 ]
  %2604 = phi float [ %2558, %2389 ], [ %2372, %2357 ]
  %2605 = phi float [ %2555, %2389 ], [ %2373, %2357 ]
  %2606 = phi float [ %2553, %2389 ], [ %2374, %2357 ]
  %2607 = phi float [ %2551, %2389 ], [ %2375, %2357 ]
  %2608 = phi float [ %2548, %2389 ], [ %2376, %2357 ]
  %2609 = phi float [ %2588, %2389 ], [ %2377, %2357 ]
  %2610 = phi float [ %2586, %2389 ], [ %2378, %2357 ]
  %2611 = phi float [ %2584, %2389 ], [ %2379, %2357 ]
  %2612 = phi float [ %2581, %2389 ], [ %2380, %2357 ]
  %2613 = phi float [ %2579, %2389 ], [ %2381, %2357 ]
  %2614 = phi float [ %2576, %2389 ], [ %2382, %2357 ]
  %2615 = phi float [ %2574, %2389 ], [ %2383, %2357 ]
  %2616 = phi float [ %2572, %2389 ], [ %2384, %2357 ]
  %2617 = phi float [ %2569, %2389 ], [ %2385, %2357 ]
  %2618 = phi float [ %2589, %2389 ], [ %2386, %2357 ]
  %2619 = add nuw nsw i32 %2387, 1
  %2620 = icmp eq i32 %2619, 4
  br i1 %2620, label %2624, label %2621

; <label>:2621                                    ; preds = %2590
  %2622 = getelementptr [4 x float], [4 x float]* %45, i32 0, i32 %2619
  %2623 = load float, float* %2622, align 4, !tbaa !80, !noalias !112
  br label %2357

; <label>:2624                                    ; preds = %2590
  %2625 = fcmp fast ogt float %2618, 0.000000e+00
  %2626 = fdiv fast float 1.000000e+00, %2618
  %2627 = select i1 %2625, float %2626, float 1.000000e+00
  %2628 = fmul fast float %2627, %2599
  %2629 = fmul fast float %2627, %2598
  %2630 = fmul fast float %2627, %2597
  %2631 = fmul fast float %2627, %2596
  %2632 = fmul fast float %2627, %2595
  %2633 = fmul fast float %2627, %2594
  %2634 = fmul fast float %2627, %2593
  %2635 = fmul fast float %2627, %2592
  %2636 = fmul fast float %2627, %2591
  %2637 = fmul fast float %2627, %2608
  %2638 = fmul fast float %2627, %2607
  %2639 = fmul fast float %2627, %2606
  %2640 = fmul fast float %2627, %2605
  %2641 = fmul fast float %2627, %2604
  %2642 = fmul fast float %2627, %2603
  %2643 = fmul fast float %2627, %2602
  %2644 = fmul fast float %2627, %2601
  %2645 = fmul fast float %2627, %2600
  %2646 = fmul fast float %2627, %2617
  %2647 = fmul fast float %2627, %2616
  %2648 = fmul fast float %2627, %2615
  %2649 = fmul fast float %2627, %2614
  %2650 = fmul fast float %2627, %2613
  %2651 = fmul fast float %2627, %2612
  %2652 = fmul fast float %2627, %2611
  %2653 = fmul fast float %2627, %2610
  %2654 = fmul fast float %2627, %2609
  br label %2655

; <label>:2655                                    ; preds = %2624, %1887
  %2656 = phi float [ %2636, %2624 ], [ %1923, %1887 ]
  %2657 = phi float [ %2635, %2624 ], [ %1921, %1887 ]
  %2658 = phi float [ %2634, %2624 ], [ %1919, %1887 ]
  %2659 = phi float [ %2633, %2624 ], [ %1917, %1887 ]
  %2660 = phi float [ %2632, %2624 ], [ %1915, %1887 ]
  %2661 = phi float [ %2631, %2624 ], [ %1913, %1887 ]
  %2662 = phi float [ %2630, %2624 ], [ %1911, %1887 ]
  %2663 = phi float [ %2629, %2624 ], [ %1909, %1887 ]
  %2664 = phi float [ %2628, %2624 ], [ %1907, %1887 ]
  %2665 = phi float [ %2645, %2624 ], [ %1941, %1887 ]
  %2666 = phi float [ %2644, %2624 ], [ %1939, %1887 ]
  %2667 = phi float [ %2643, %2624 ], [ %1937, %1887 ]
  %2668 = phi float [ %2642, %2624 ], [ %1935, %1887 ]
  %2669 = phi float [ %2641, %2624 ], [ %1933, %1887 ]
  %2670 = phi float [ %2640, %2624 ], [ %1931, %1887 ]
  %2671 = phi float [ %2639, %2624 ], [ %1929, %1887 ]
  %2672 = phi float [ %2638, %2624 ], [ %1927, %1887 ]
  %2673 = phi float [ %2637, %2624 ], [ %1925, %1887 ]
  %2674 = phi float [ %2654, %2624 ], [ %1959, %1887 ]
  %2675 = phi float [ %2653, %2624 ], [ %1957, %1887 ]
  %2676 = phi float [ %2652, %2624 ], [ %1955, %1887 ]
  %2677 = phi float [ %2651, %2624 ], [ %1953, %1887 ]
  %2678 = phi float [ %2650, %2624 ], [ %1951, %1887 ]
  %2679 = phi float [ %2649, %2624 ], [ %1949, %1887 ]
  %2680 = phi float [ %2648, %2624 ], [ %1947, %1887 ]
  %2681 = phi float [ %2647, %2624 ], [ %1945, %1887 ]
  %2682 = phi float [ %2646, %2624 ], [ %1943, %1887 ]
  %2683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2684 = extractvalue %dx.types.CBufRet.f32 %2683, 3
  br i1 %81, label %2685, label %2808, !dx.controlflow.hints !122

; <label>:2685                                    ; preds = %2655
  %2686 = fsub fast float -0.000000e+00, %2661
  %2687 = fsub fast float %2686, %2670
  %2688 = fsub fast float -0.000000e+00, %2663
  %2689 = fsub fast float %2688, %2672
  %2690 = fadd fast float %2671, %2662
  %2691 = fsub fast float %2687, %2679
  %2692 = fsub fast float %2689, %2681
  %2693 = fadd fast float %2690, %2680
  %2694 = call float @dx.op.dot3.f32(i32 55, float %2691, float %2692, float %2693, float %2691, float %2692, float %2693)  ; Dot3(ax,ay,az,bx,by,bz)
  %2695 = call float @dx.op.unary.f32(i32 25, float %2694)  ; Rsqrt(value)
  %2696 = fmul fast float %2695, %2691
  %2697 = fmul fast float %2695, %2692
  %2698 = fmul fast float %2695, %2693
  %2699 = fmul fast float %2698, 0x3FDF454380000000
  %2700 = fmul fast float %2698, %2698
  %2701 = fmul fast float %2700, 0x3FEE471020000000
  %2702 = fadd fast float %2701, 0xBFD42F6020000000
  %2703 = fmul fast float %2696, 0xBFDF454380000000
  %2704 = fmul fast float %2697, 0xBFDF454380000000
  %2705 = fmul fast float %2698, 0xBFF17B1420000000
  %2706 = fmul fast float %2705, %2696
  %2707 = fmul fast float %2705, %2697
  %2708 = fmul fast float %2696, %2696
  %2709 = fmul fast float %2697, %2697
  %2710 = fsub fast float %2708, %2709
  %2711 = fmul fast float %2710, 0x3FE17B1420000000
  %2712 = fmul fast float %2692, 0x3FF17B1420000000
  %2713 = fmul fast float %2712, %2695
  %2714 = fmul fast float %2713, %2696
  %2715 = fmul fast float %2664, 0x3FD20DD760000000
  %2716 = fmul fast float %2704, %2663
  %2717 = fmul fast float %2699, %2662
  %2718 = fmul fast float %2703, %2661
  %2719 = fmul fast float %2714, %2660
  %2720 = fmul fast float %2707, %2659
  %2721 = fmul fast float %2702, %2658
  %2722 = fmul fast float %2706, %2657
  %2723 = fmul fast float %2711, %2656
  %2724 = fadd fast float %2720, %2722
  %2725 = fadd fast float %2724, %2721
  %2726 = fadd fast float %2725, %2723
  %2727 = fadd fast float %2726, %2719
  %2728 = fmul fast float %2727, 6.250000e-02
  %2729 = fadd fast float %2718, %2717
  %2730 = fadd fast float %2729, %2716
  %2731 = fmul fast float %2730, 0x3FDC71C720000000
  %2732 = fadd fast float %2728, %2715
  %2733 = fadd fast float %2732, %2731
  %2734 = fmul fast float %2673, 0x3FD20DD760000000
  %2735 = fmul fast float %2704, %2672
  %2736 = fmul fast float %2699, %2671
  %2737 = fmul fast float %2703, %2670
  %2738 = fmul fast float %2714, %2669
  %2739 = fmul fast float %2707, %2668
  %2740 = fmul fast float %2702, %2667
  %2741 = fmul fast float %2706, %2666
  %2742 = fmul fast float %2711, %2665
  %2743 = fadd fast float %2739, %2741
  %2744 = fadd fast float %2743, %2740
  %2745 = fadd fast float %2744, %2742
  %2746 = fadd fast float %2745, %2738
  %2747 = fmul fast float %2746, 6.250000e-02
  %2748 = fadd fast float %2737, %2736
  %2749 = fadd fast float %2748, %2735
  %2750 = fmul fast float %2749, 0x3FDC71C720000000
  %2751 = fadd fast float %2747, %2734
  %2752 = fadd fast float %2751, %2750
  %2753 = fmul fast float %2682, 0x3FD20DD760000000
  %2754 = fmul fast float %2704, %2681
  %2755 = fmul fast float %2699, %2680
  %2756 = fmul fast float %2703, %2679
  %2757 = fmul fast float %2714, %2678
  %2758 = fmul fast float %2707, %2677
  %2759 = fmul fast float %2702, %2676
  %2760 = fmul fast float %2706, %2675
  %2761 = fmul fast float %2711, %2674
  %2762 = fadd fast float %2758, %2760
  %2763 = fadd fast float %2762, %2759
  %2764 = fadd fast float %2763, %2761
  %2765 = fadd fast float %2764, %2757
  %2766 = fmul fast float %2765, 6.250000e-02
  %2767 = fadd fast float %2756, %2755
  %2768 = fadd fast float %2767, %2754
  %2769 = fmul fast float %2768, 0x3FDC71C720000000
  %2770 = fadd fast float %2766, %2753
  %2771 = fadd fast float %2770, %2769
  %2772 = fmul fast float %2664, 0x3FDCE2F220000000
  %2773 = fmul fast float %2733, 0x3FE3333340000000
  %2774 = fsub fast float %2772, %2773
  %2775 = fmul fast float %2673, 0x3FDCE2F220000000
  %2776 = fmul fast float %2752, 0x3FE3333340000000
  %2777 = fsub fast float %2775, %2776
  %2778 = fmul fast float %2682, 0x3FDCE2F220000000
  %2779 = fmul fast float %2771, 0x3FE3333340000000
  %2780 = fsub fast float %2778, %2779
  %2781 = fmul fast float %2733, 0x4003333340000000
  %2782 = fmul fast float %2664, 0x3FE5AA35A0000000
  %2783 = fsub fast float %2781, %2782
  %2784 = fmul fast float %2752, 0x4003333340000000
  %2785 = fmul fast float %2673, 0x3FE5AA35A0000000
  %2786 = fsub fast float %2784, %2785
  %2787 = fmul fast float %2771, 0x4003333340000000
  %2788 = fmul fast float %2682, 0x3FE5AA35A0000000
  %2789 = fsub fast float %2787, %2788
  %2790 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2774)  ; FMax(a,b)
  %2791 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2777)  ; FMax(a,b)
  %2792 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2780)  ; FMax(a,b)
  %2793 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2783)  ; FMax(a,b)
  %2794 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2786)  ; FMax(a,b)
  %2795 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2789)  ; FMax(a,b)
  %2796 = call float @dx.op.dot3.f32(i32 55, float %75, float %76, float %77, float %2696, float %2697, float %2698)  ; Dot3(ax,ay,az,bx,by,bz)
  %2797 = call float @dx.op.unary.f32(i32 7, float %2796)  ; Saturate(value)
  %2798 = fmul fast float %2797, %2793
  %2799 = fmul fast float %2797, %2794
  %2800 = fmul fast float %2797, %2795
  %2801 = fadd fast float %2798, %2790
  %2802 = fadd fast float %2799, %2791
  %2803 = fadd fast float %2800, %2792
  %2804 = call float @dx.op.binary.f32(i32 35, float %2801, float 0.000000e+00)  ; FMax(a,b)
  %2805 = call float @dx.op.binary.f32(i32 35, float %2802, float 0.000000e+00)  ; FMax(a,b)
  %2806 = call float @dx.op.binary.f32(i32 35, float %2803, float 0.000000e+00)  ; FMax(a,b)
  %2807 = call float @dx.op.dot3.f32(i32 55, float %2804, float %2805, float %2806, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  br label %2810

; <label>:2808                                    ; preds = %2655
  %2809 = call float @dx.op.dot3.f32(i32 55, float %2664, float %2673, float %2682, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  br label %2810

; <label>:2810                                    ; preds = %2808, %2685
  %2811 = phi float [ %2807, %2685 ], [ %2809, %2808 ]
  %2812 = fmul float %2684, %2811
  %2813 = fadd fast float %2812, %1564
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %38, i32 %39, i32 undef, float %2813, float %2813, float %2813, float %2813, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2814

; <label>:2814                                    ; preds = %2810, %53
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #1

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!49}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !38, !40, !44}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !19, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !31, !32, !34, !36, !37}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!8 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!9 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 3, i32 1, i32 11, i32 0, null}
!10 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 8, i32 1, i32 11, i32 0, null}
!11 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 4, i32 1, i32 11, i32 0, null}
!12 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 5, i32 1, i32 11, i32 0, null}
!13 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 6, i32 1, i32 11, i32 0, null}
!14 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 7, i32 1, i32 11, i32 0, null}
!15 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 28, i32 1, i32 11, i32 0, null}
!16 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 30, i32 1, i32 11, i32 0, null}
!17 = !{i32 11, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 39, i32 1, i32 2, i32 0, !18}
!18 = !{i32 0, i32 9}
!19 = !{i32 12, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 13, i32 1, i32 2, i32 0, !18}
!20 = !{i32 13, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 38, i32 1, i32 2, i32 0, !18}
!21 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 19, i32 1, i32 11, i32 0, null}
!22 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 20, i32 1, i32 11, i32 0, null}
!23 = !{i32 16, %"class.Texture1D<float>"* undef, !"", i32 0, i32 26, i32 1, i32 1, i32 0, !18}
!24 = !{i32 17, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 35, i32 1, i32 7, i32 0, !18}
!25 = !{i32 18, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 14, i32 1, i32 2, i32 0, !18}
!26 = !{i32 19, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 36, i32 1, i32 7, i32 0, !27}
!27 = !{i32 0, i32 14}
!28 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 34, i32 1, i32 11, i32 0, null}
!29 = !{i32 21, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 32, i32 1, i32 2, i32 0, !18}
!30 = !{i32 22, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 18, i32 1, i32 2, i32 0, !18}
!31 = !{i32 23, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 41, i32 1, i32 2, i32 0, !18}
!32 = !{i32 24, %"class.StructuredBuffer<GfxBSPAABBNodePacked>"* undef, !"", i32 0, i32 22, i32 1, i32 12, i32 0, !33}
!33 = !{i32 1, i32 8}
!34 = !{i32 25, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 23, i32 1, i32 10, i32 0, !35}
!35 = !{i32 0, i32 5}
!36 = !{i32 26, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 24, i32 1, i32 10, i32 0, !35}
!37 = !{i32 27, %"class.StructuredBuffer<GfxBSPAABBNodePacked>"* undef, !"", i32 0, i32 25, i32 1, i32 12, i32 0, !33}
!38 = !{!39}
!39 = !{i32 0, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !18}
!40 = !{!41, !42, !43}
!41 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!42 = !{i32 1, %GfxLGBoundConsts* undef, !"", i32 0, i32 4, i32 1, i32 16, null}
!43 = !{i32 2, %DeferredEffectLightConsts_decl* undef, !"", i32 0, i32 1, i32 1, i32 240, null}
!44 = !{!45, !46, !47, !48}
!45 = !{i32 0, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!46 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!47 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!48 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!49 = !{void ()* @cs_light_sensor_direct_and_baked, !"cs_light_sensor_direct_and_baked", null, !4, !50}
!50 = !{i32 0, i64 272, i32 4, !51}
!51 = !{i32 64, i32 1, i32 1}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 1}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 1}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 1}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 1}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 1}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = !{!66, !66, i64 0}
!66 = !{!"int", !67, i64 0}
!67 = !{!"omnipotent char", !68, i64 0}
!68 = !{!"Simple C/C++ TBAA"}
!69 = !{!70, !72}
!70 = distinct !{!70, !71, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_Sprite@@ULightIteratorOutput_Sprite@@@Z: %lightingOutput"}
!71 = distinct !{!71, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_Sprite@@ULightIteratorOutput_Sprite@@@Z"}
!72 = distinct !{!72, !73, !"\01?Lights_Iterate_Sprite@@YAXULocalAttributes@@ULightIteratorInput_Sprite@@ULightIteratorOutput_Sprite@@@Z: %lightingOutput"}
!73 = distinct !{!73, !"\01?Lights_Iterate_Sprite@@YAXULocalAttributes@@ULightIteratorInput_Sprite@@ULightIteratorOutput_Sprite@@@Z"}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 2}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 1}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 1}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 2}
!80 = !{!81, !81, i64 0}
!81 = !{!"float", !67, i64 0}
!82 = distinct !{!82, !83}
!83 = !{!"llvm.loop.unroll.disable"}
!84 = distinct !{!84, !83}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 1}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 1}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 2}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 2}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 1}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 2}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 2}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 2}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 2}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 2}
!95 = !{!72}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 2}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 2}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 1}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 1}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 1}
!101 = distinct !{!101, !83}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 2}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 2}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 2}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 2}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 2}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 2}
!108 = distinct !{!108, !83}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 2}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 2}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 2}
!112 = !{!113, !115, !116, !117, !118, !119}
!113 = distinct !{!113, !114, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %probeR"}
!114 = distinct !{!114, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z"}
!115 = distinct !{!115, !114, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %probeG"}
!116 = distinct !{!116, !114, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %probeB"}
!117 = distinct !{!117, !114, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %probeA"}
!118 = distinct !{!118, !114, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %primaryVisibility"}
!119 = distinct !{!119, !114, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %usedTet"}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 2}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 2}
!122 = distinct !{!122, !"dx.controlflow.hints", i32 2}

