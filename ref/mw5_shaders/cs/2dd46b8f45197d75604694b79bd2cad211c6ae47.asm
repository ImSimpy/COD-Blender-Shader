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
; shader hash: fbe1bbb2b66e452bd2feac623a50959c
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
;   [80 x i8] (type annotation not present)
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
;   [16 x i8] (type annotation not present)
; }
;
; Resource bind info for 
; {
;
;   [16 x i8] (type annotation not present)
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
;                                   texture    byte         r/o      T0            t28     1
;                                   texture     f32          2d      T1            t39     1
;                                   texture     f32          2d      T2            t13     1
;                                   texture     f32          2d      T3            t38     1
;                                   texture  struct         r/o      T4             t0     1
;                                   texture     u32         buf      T5             t1     1
;                                   texture  struct         r/o      T6             t2     1
;                                   texture     u32         buf      T7             t3     1
;                                   texture     u32         buf      T8             t4     1
;                                   texture     u32         buf      T9             t5     1
;                                   texture     f32         buf     T10             t6     1
;                                   texture     u32         buf     T11             t7     1
;                                   texture     f32         buf     T12             t8     1
;                                   texture    byte         r/o     T13             t9     1
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
%"class.StructuredBuffer<GfxNeuralLightGridTopLevelNode>" = type { %struct.GfxNeuralLightGridTopLevelNode }
%struct.GfxNeuralLightGridTopLevelNode = type { i32, i32, i32, i32 }
%"class.Buffer<unsigned int>" = type { i32 }
%"class.StructuredBuffer<GfxNeuralLightGridInternalNode>" = type { %struct.GfxNeuralLightGridInternalNode }
%struct.GfxNeuralLightGridInternalNode = type { <2 x i32>, <2 x i32> }
%"class.Buffer<vector<float, 4> >" = type { <4 x float> }
%"class.Texture1D<float>" = type { float, %"class.Texture1D<float>::mips_type" }
%"class.Texture1D<float>::mips_type" = type { i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%"class.StructuredBuffer<GfxBSPAABBNodePacked>" = type { %struct.GfxBSPAABBNodePacked }
%struct.GfxBSPAABBNodePacked = type { i32, i32 }
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
%GfxNeuralLightGridSetupConsts = type { <3 x float>, i32, <3 x float>, i32, <3 x float>, i32, <3 x i32>, i32, float, i32, i32, i32 }
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
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 39, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 28, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
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
  %42 = alloca [8 x float], align 4
  %43 = alloca [8 x i32], align 4
  %44 = alloca [8 x float], align 4
  %45 = alloca [3 x float], align 4
  %46 = alloca [4 x float], align 4
  %47 = shl i32 %39, 6
  %48 = add i32 %47, %38
  %49 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %50 = extractvalue %dx.types.CBufRet.i32 %49, 0
  %51 = icmp ult i32 %48, %50
  br i1 %51, label %53, label %52, !dx.controlflow.hints !53

; <label>:52                                      ; preds = %0
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %38, i32 %39, i32 undef, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2462

; <label>:53                                      ; preds = %0
  %54 = shl i32 %48, 4
  %55 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %54, i32 undef)  ; BufferLoad(srv,index,wot)
  %56 = extractvalue %dx.types.ResRet.i32 %55, 0
  %57 = extractvalue %dx.types.ResRet.i32 %55, 1
  %58 = extractvalue %dx.types.ResRet.i32 %55, 2
  %59 = extractvalue %dx.types.ResRet.i32 %55, 3
  %60 = bitcast i32 %56 to float
  %61 = bitcast i32 %57 to float
  %62 = bitcast i32 %58 to float
  %63 = and i32 %59, 255
  %64 = lshr i32 %59, 8
  %65 = and i32 %64, 255
  %66 = lshr i32 %59, 16
  %67 = and i32 %66, 255
  %68 = sitofp i32 %63 to float
  %69 = sitofp i32 %65 to float
  %70 = sitofp i32 %67 to float
  %71 = fmul fast float %68, 0x3F80101020000000
  %72 = fmul fast float %69, 0x3F80101020000000
  %73 = fmul fast float %70, 0x3F80101020000000
  %74 = fadd fast float %71, -1.000000e+00
  %75 = fadd fast float %72, -1.000000e+00
  %76 = fadd fast float %73, -1.000000e+00
  %77 = lshr i32 %59, 24
  %78 = uitofp i32 %77 to float
  %79 = call float @dx.op.dot3.f32(i32 55, float %74, float %75, float %76, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %80 = fcmp fast ogt float %79, 0x3FE9EB8520000000
  %81 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %82 = extractvalue %dx.types.CBufRet.f32 %81, 0
  %83 = extractvalue %dx.types.CBufRet.f32 %81, 1
  %84 = extractvalue %dx.types.CBufRet.f32 %81, 2
  %85 = fsub fast float %60, %82
  %86 = fsub fast float %61, %83
  %87 = fsub fast float %62, %84
  %88 = fsub fast float -0.000000e+00, %87
  %89 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %36, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %90 = extractvalue %dx.types.CBufRet.i32 %89, 3
  %91 = and i32 %90, 3
  %92 = icmp ne i32 %91, 0
  %93 = and i32 %90, 4
  %94 = icmp eq i32 %93, 0
  %95 = and i1 %92, %94
  %96 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %97 = extractvalue %dx.types.CBufRet.f32 %96, 0
  %98 = extractvalue %dx.types.CBufRet.f32 %96, 1
  %99 = fsub fast float %60, %97
  %100 = fsub fast float %61, %98
  %101 = fmul fast float %99, %99
  %102 = fmul fast float %100, %100
  %103 = fadd fast float %101, %102
  %104 = call float @dx.op.unary.f32(i32 24, float %103)  ; Sqrt(value)
  %105 = extractvalue %dx.types.CBufRet.f32 %96, 2
  %106 = fcmp fast olt float %104, %105
  br i1 %106, label %107, label %175, !dx.controlflow.hints !54

; <label>:107                                     ; preds = %53
  %108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %109 = extractvalue %dx.types.CBufRet.f32 %108, 0
  %110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %111 = extractvalue %dx.types.CBufRet.f32 %110, 0
  %112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %113 = extractvalue %dx.types.CBufRet.f32 %112, 0
  %114 = extractvalue %dx.types.CBufRet.f32 %108, 1
  %115 = extractvalue %dx.types.CBufRet.f32 %110, 1
  %116 = extractvalue %dx.types.CBufRet.f32 %112, 1
  %117 = extractvalue %dx.types.CBufRet.f32 %108, 3
  %118 = extractvalue %dx.types.CBufRet.f32 %110, 3
  %119 = extractvalue %dx.types.CBufRet.f32 %112, 3
  %120 = fadd fast float %117, %60
  %121 = fadd fast float %118, %61
  %122 = fadd fast float %119, %62
  %123 = fmul fast float %120, %109
  %124 = call float @dx.op.tertiary.f32(i32 46, float %121, float %111, float %123)  ; FMad(a,b,c)
  %125 = call float @dx.op.tertiary.f32(i32 46, float %122, float %113, float %124)  ; FMad(a,b,c)
  %126 = fmul fast float %120, %114
  %127 = call float @dx.op.tertiary.f32(i32 46, float %121, float %115, float %126)  ; FMad(a,b,c)
  %128 = call float @dx.op.tertiary.f32(i32 46, float %122, float %116, float %127)  ; FMad(a,b,c)
  %129 = fsub fast float %125, %117
  %130 = fsub fast float %128, %118
  %131 = fsub fast float %129, %97
  %132 = fadd fast float %131, %105
  %133 = fsub fast float %130, %98
  %134 = fadd fast float %133, %105
  %135 = extractvalue %dx.types.CBufRet.f32 %96, 3
  %136 = fmul fast float %132, %135
  %137 = fmul fast float %134, %135
  %138 = call float @dx.op.unary.f32(i32 7, float %136)  ; Saturate(value)
  %139 = call float @dx.op.unary.f32(i32 7, float %137)  ; Saturate(value)
  %140 = fsub fast float 1.000000e+00, %138
  %141 = fsub fast float 1.000000e+00, %139
  %142 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %31, float %140, float %141, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %143 = extractvalue %dx.types.ResRet.f32 %142, 0
  %144 = fcmp fast ugt float %143, 0.000000e+00
  br i1 %144, label %145, label %175, !dx.controlflow.hints !55

; <label>:145                                     ; preds = %107
  %146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %147 = extractvalue %dx.types.CBufRet.f32 %146, 2
  %148 = fmul fast float %147, %143
  %149 = extractvalue %dx.types.CBufRet.f32 %146, 3
  %150 = fadd fast float %149, %148
  %151 = extractvalue %dx.types.CBufRet.f32 %112, 2
  %152 = fadd fast float %150, %119
  %153 = fmul fast float %125, %113
  %154 = call float @dx.op.tertiary.f32(i32 46, float %128, float %116, float %153)  ; FMad(a,b,c)
  %155 = call float @dx.op.tertiary.f32(i32 46, float %152, float %151, float %154)  ; FMad(a,b,c)
  %156 = fsub fast float %155, %119
  %157 = fsub fast float %156, %84
  %158 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %31, float %140, float %141, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %159 = extractvalue %dx.types.ResRet.f32 %158, 0
  %160 = extractvalue %dx.types.ResRet.f32 %158, 1
  %161 = extractvalue %dx.types.ResRet.f32 %158, 2
  %162 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %31, float %140, float %141, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %163 = extractvalue %dx.types.ResRet.f32 %162, 0
  %164 = extractvalue %dx.types.ResRet.f32 %162, 1
  %165 = extractvalue %dx.types.ResRet.f32 %162, 2
  %166 = fadd fast float %163, %159
  %167 = fmul fast float %166, 0x3F847AE140000000
  %168 = fadd fast float %164, %160
  %169 = fmul fast float %168, 0x3F847AE140000000
  %170 = fadd fast float %165, %161
  %171 = fmul fast float %170, 0x3F847AE140000000
  %172 = fmul float %167, 0x3FF7154760000000
  %173 = fmul float %169, 0x3FF7154760000000
  %174 = fmul float %171, 0x3FF7154760000000
  br label %175

; <label>:175                                     ; preds = %145, %107, %53
  %176 = phi float [ 0.000000e+00, %53 ], [ %172, %145 ], [ 0.000000e+00, %107 ]
  %177 = phi float [ 0.000000e+00, %53 ], [ %173, %145 ], [ 0.000000e+00, %107 ]
  %178 = phi float [ 0.000000e+00, %53 ], [ %174, %145 ], [ 0.000000e+00, %107 ]
  %179 = phi float [ 0.000000e+00, %53 ], [ %157, %145 ], [ -1.310720e+05, %107 ]
  %180 = phi i32 [ 0, %53 ], [ 1, %145 ], [ 0, %107 ]
  %181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %182 = extractvalue %dx.types.CBufRet.f32 %181, 3
  %183 = fcmp fast oeq float %182, 0.000000e+00
  br i1 %183, label %1115, label %184, !dx.controlflow.hints !56

; <label>:184                                     ; preds = %175
  %185 = extractvalue %dx.types.CBufRet.f32 %181, 0
  %186 = extractvalue %dx.types.CBufRet.f32 %181, 1
  %187 = extractvalue %dx.types.CBufRet.f32 %181, 2
  %188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %189 = extractvalue %dx.types.CBufRet.f32 %188, 0
  %190 = extractvalue %dx.types.CBufRet.f32 %188, 1
  %191 = extractvalue %dx.types.CBufRet.f32 %188, 2
  %192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %193 = extractvalue %dx.types.CBufRet.f32 %192, 0
  %194 = extractvalue %dx.types.CBufRet.f32 %192, 1
  %195 = call float @dx.op.dot3.f32(i32 55, float %189, float %190, float %191, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %196 = select i1 %95, float %193, float %189
  %197 = select i1 %95, float %195, float %190
  %198 = select i1 %95, float %194, float %191
  %199 = fmul fast float %185, %78
  %200 = fmul fast float %186, %78
  %201 = fmul fast float %187, %78
  %202 = fadd fast float %199, %85
  %203 = fadd fast float %200, %86
  %204 = fadd fast float %201, %87
  %205 = fcmp fast olt float %182, 0.000000e+00
  br i1 %205, label %851, label %206, !dx.controlflow.hints !57

; <label>:206                                     ; preds = %184
  %207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %208 = extractvalue %dx.types.CBufRet.f32 %207, 0
  %209 = extractvalue %dx.types.CBufRet.f32 %207, 1
  %210 = extractvalue %dx.types.CBufRet.f32 %207, 2
  %211 = extractvalue %dx.types.CBufRet.f32 %207, 3
  %212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %213 = extractvalue %dx.types.CBufRet.f32 %212, 0
  %214 = extractvalue %dx.types.CBufRet.f32 %212, 1
  %215 = extractvalue %dx.types.CBufRet.f32 %212, 2
  %216 = extractvalue %dx.types.CBufRet.f32 %212, 3
  %217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %218 = extractvalue %dx.types.CBufRet.f32 %217, 0
  %219 = extractvalue %dx.types.CBufRet.f32 %217, 1
  %220 = extractvalue %dx.types.CBufRet.f32 %217, 2
  %221 = extractvalue %dx.types.CBufRet.f32 %217, 3
  %222 = fmul fast float %208, %202
  %223 = call float @dx.op.tertiary.f32(i32 46, float %203, float %209, float %222)  ; FMad(a,b,c)
  %224 = call float @dx.op.tertiary.f32(i32 46, float %204, float %210, float %223)  ; FMad(a,b,c)
  %225 = fadd fast float %224, %211
  %226 = fmul fast float %213, %202
  %227 = call float @dx.op.tertiary.f32(i32 46, float %203, float %214, float %226)  ; FMad(a,b,c)
  %228 = call float @dx.op.tertiary.f32(i32 46, float %204, float %215, float %227)  ; FMad(a,b,c)
  %229 = fadd fast float %228, %216
  %230 = fmul fast float %218, %202
  %231 = call float @dx.op.tertiary.f32(i32 46, float %203, float %219, float %230)  ; FMad(a,b,c)
  %232 = call float @dx.op.tertiary.f32(i32 46, float %204, float %220, float %231)  ; FMad(a,b,c)
  %233 = fadd fast float %232, %221
  %234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %235 = extractvalue %dx.types.CBufRet.f32 %234, 0
  %236 = extractvalue %dx.types.CBufRet.f32 %234, 1
  %237 = extractvalue %dx.types.CBufRet.f32 %234, 3
  %238 = fmul fast float %237, %225
  %239 = fmul fast float %237, %229
  %240 = fadd fast float %238, %235
  %241 = fadd fast float %239, %236
  %242 = extractvalue %dx.types.CBufRet.f32 %234, 2
  %243 = fcmp fast olt float %242, 0.000000e+00
  %244 = fsub fast float -0.000000e+00, %242
  %245 = select i1 %243, float %244, float %242
  %246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %247 = extractvalue %dx.types.CBufRet.f32 %246, 1
  %248 = fadd fast float %245, %247
  %249 = fcmp fast ogt float %248, 0.000000e+00
  br i1 %249, label %250, label %282, !dx.controlflow.hints !58

; <label>:250                                     ; preds = %206
  %251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %252 = extractvalue %dx.types.CBufRet.f32 %251, 1
  %253 = fsub fast float %252, %233
  %254 = extractvalue %dx.types.CBufRet.f32 %251, 2
  %255 = fmul fast float %253, %254
  %256 = fsub fast float 1.000000e+00, %255
  %257 = call float @dx.op.unary.f32(i32 7, float %256)  ; Saturate(value)
  %258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %259 = extractvalue %dx.types.CBufRet.f32 %258, 0
  %260 = extractvalue %dx.types.CBufRet.f32 %258, 1
  %261 = fsub fast float %240, %259
  %262 = fsub fast float %241, %260
  %263 = fcmp fast olt float %261, 0.000000e+00
  %264 = fcmp fast olt float %262, 0.000000e+00
  %265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %266 = extractvalue %dx.types.CBufRet.f32 %265, 0
  %267 = extractvalue %dx.types.CBufRet.f32 %265, 1
  %268 = extractvalue %dx.types.CBufRet.f32 %265, 2
  %269 = extractvalue %dx.types.CBufRet.f32 %265, 3
  %270 = select i1 %263, float %266, float %268
  %271 = select i1 %264, float %267, float %269
  %272 = fmul fast float %270, %261
  %273 = fmul fast float %271, %262
  %274 = call float @dx.op.unary.f32(i32 6, float %272)  ; FAbs(value)
  %275 = call float @dx.op.unary.f32(i32 6, float %273)  ; FAbs(value)
  %276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %277 = extractvalue %dx.types.CBufRet.f32 %276, 0
  %278 = call float @dx.op.binary.f32(i32 35, float %274, float %275)  ; FMax(a,b)
  %279 = fsub fast float %277, %278
  %280 = call float @dx.op.unary.f32(i32 7, float %279)  ; Saturate(value)
  %281 = fmul fast float %280, %257
  br label %282

; <label>:282                                     ; preds = %250, %206
  %283 = phi float [ %281, %250 ], [ 0.000000e+00, %206 ]
  %284 = call float @dx.op.binary.f32(i32 35, float %283, float 0.000000e+00)  ; FMax(a,b)
  %285 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %284)  ; FMax(a,b)
  %286 = fcmp fast olt float %285, 1.000000e+00
  br i1 %286, label %287, label %685, !dx.controlflow.hints !59

; <label>:287                                     ; preds = %282
  %288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %289 = extractvalue %dx.types.CBufRet.f32 %288, 0
  %290 = fcmp fast une float %289, 0.000000e+00
  br i1 %290, label %291, label %685, !dx.controlflow.hints !60

; <label>:291                                     ; preds = %287
  %292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %293 = extractvalue %dx.types.CBufRet.f32 %292, 0
  %294 = extractvalue %dx.types.CBufRet.f32 %292, 1
  %295 = extractvalue %dx.types.CBufRet.f32 %292, 2
  %296 = extractvalue %dx.types.CBufRet.f32 %292, 3
  %297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %298 = extractvalue %dx.types.CBufRet.f32 %297, 0
  %299 = extractvalue %dx.types.CBufRet.f32 %297, 1
  %300 = extractvalue %dx.types.CBufRet.f32 %297, 2
  %301 = extractvalue %dx.types.CBufRet.f32 %297, 3
  %302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %303 = extractvalue %dx.types.CBufRet.f32 %302, 0
  %304 = extractvalue %dx.types.CBufRet.f32 %302, 1
  %305 = extractvalue %dx.types.CBufRet.f32 %302, 2
  %306 = extractvalue %dx.types.CBufRet.f32 %302, 3
  %307 = fmul fast float %293, %202
  %308 = call float @dx.op.tertiary.f32(i32 46, float %203, float %294, float %307)  ; FMad(a,b,c)
  %309 = call float @dx.op.tertiary.f32(i32 46, float %204, float %295, float %308)  ; FMad(a,b,c)
  %310 = fadd fast float %309, %296
  %311 = fmul fast float %298, %202
  %312 = call float @dx.op.tertiary.f32(i32 46, float %203, float %299, float %311)  ; FMad(a,b,c)
  %313 = call float @dx.op.tertiary.f32(i32 46, float %204, float %300, float %312)  ; FMad(a,b,c)
  %314 = fadd fast float %313, %301
  %315 = fmul fast float %303, %202
  %316 = call float @dx.op.tertiary.f32(i32 46, float %203, float %304, float %315)  ; FMad(a,b,c)
  %317 = call float @dx.op.tertiary.f32(i32 46, float %204, float %305, float %316)  ; FMad(a,b,c)
  %318 = fadd fast float %317, %306
  %319 = fcmp fast oge float %310, 1.000000e+00
  %320 = fcmp fast oge float %314, 1.000000e+00
  %321 = or i1 %319, %320
  %322 = fcmp fast olt float %310, 0.000000e+00
  %323 = fcmp fast olt float %314, 0.000000e+00
  %324 = or i1 %322, %323
  %325 = or i1 %321, %324
  br i1 %325, label %685, label %326, !dx.controlflow.hints !61

; <label>:326                                     ; preds = %291
  %327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %328 = extractvalue %dx.types.CBufRet.f32 %327, 0
  %329 = extractvalue %dx.types.CBufRet.f32 %327, 1
  %330 = extractvalue %dx.types.CBufRet.f32 %327, 2
  %331 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %36, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %332 = extractvalue %dx.types.CBufRet.i32 %331, 2
  %333 = uitofp i32 %332 to float
  %334 = extractvalue %dx.types.CBufRet.i32 %331, 3
  %335 = uitofp i32 %334 to float
  %336 = extractvalue %dx.types.CBufRet.f32 %327, 3
  %337 = fmul fast float %336, 2.000000e+00
  %338 = fsub fast float %310, %328
  %339 = fsub fast float %314, %329
  %340 = fmul fast float %337, %338
  %341 = fmul fast float %337, %339
  %342 = fdiv fast float 1.000000e+00, %187
  %343 = fmul fast float %341, %342
  %344 = call float @dx.op.unary.f32(i32 6, float %343)  ; FAbs(value)
  %345 = fmul fast float %330, %204
  %346 = fmul fast float %345, %337
  %347 = call float @dx.op.unary.f32(i32 6, float %346)  ; FAbs(value)
  %348 = call float @dx.op.unary.f32(i32 6, float %340)  ; FAbs(value)
  %349 = call float @dx.op.binary.f32(i32 35, float %347, float %344)  ; FMax(a,b)
  %350 = call float @dx.op.binary.f32(i32 35, float %348, float %349)  ; FMax(a,b)
  %351 = fmul fast float %350, 2.000000e+00
  %352 = call float @dx.op.unary.f32(i32 23, float %351)  ; Log(value)
  %353 = call float @dx.op.binary.f32(i32 35, float %352, float %333)  ; FMax(a,b)
  %354 = call float @dx.op.unary.f32(i32 22, float %353)  ; Frc(value)
  %355 = fadd fast float %354, 0xBFEA666660000000
  %356 = fmul fast float %355, 8.000000e+00
  %357 = call float @dx.op.unary.f32(i32 7, float %356)  ; Saturate(value)
  %358 = call float @dx.op.unary.f32(i32 27, float %353)  ; Round_ni(value)
  %359 = fadd fast float %358, %357
  %360 = call float @dx.op.binary.f32(i32 36, float %359, float %335)  ; FMin(a,b)
  %361 = call float @dx.op.unary.f32(i32 27, float %360)  ; Round_ni(value)
  %362 = fsub fast float -0.000000e+00, %361
  %363 = call float @dx.op.unary.f32(i32 21, float %362)  ; Exp(value)
  %364 = fmul fast float %363, %337
  %365 = fmul fast float %364, %310
  %366 = fmul fast float %364, %314
  %367 = fmul fast float %365, 2.500000e-01
  %368 = fmul fast float %366, 2.500000e-01
  %369 = fadd fast float %367, 5.000000e-01
  %370 = fadd fast float %368, 5.000000e-01
  %371 = fsub fast float %335, %333
  %372 = fptoui float %371 to i32
  %373 = add i32 %372, 320
  %374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 %373)  ; CBufferLoadLegacy(handle,regIndex)
  %375 = extractvalue %dx.types.CBufRet.f32 %374, 0
  %376 = extractvalue %dx.types.CBufRet.f32 %374, 1
  %377 = fcmp fast une float %360, %335
  %378 = fsub fast float %310, %375
  %379 = fsub fast float %314, %376
  %380 = call float @dx.op.unary.f32(i32 6, float %378)  ; FAbs(value)
  %381 = call float @dx.op.unary.f32(i32 6, float %379)  ; FAbs(value)
  %382 = fmul fast float %380, %364
  %383 = fmul fast float %381, %364
  %384 = fcmp fast olt float %382, 1.000000e+00
  %385 = fcmp fast olt float %383, 1.000000e+00
  %386 = and i1 %384, %385
  %387 = or i1 %377, %386
  br i1 %387, label %388, label %685, !dx.controlflow.hints !62

; <label>:388                                     ; preds = %326
  %389 = fmul fast float %366, 5.000000e-01
  %390 = fmul fast float %365, 5.000000e-01
  %391 = fadd fast float %389, 5.000000e-01
  %392 = fadd fast float %390, 5.000000e-01
  %393 = sitofp i32 %332 to float
  %394 = fsub fast float %360, %393
  %395 = call float @dx.op.unary.f32(i32 27, float %394)  ; Round_ni(value)
  %396 = call float @dx.op.unary.f32(i32 22, float %360)  ; Frc(value)
  %397 = call float @dx.op.unary.f32(i32 22, float %392)  ; Frc(value)
  %398 = call float @dx.op.unary.f32(i32 22, float %391)  ; Frc(value)
  %399 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %30, float %397, float %398, float %395, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %400 = extractvalue %dx.types.ResRet.f32 %399, 0
  %401 = extractvalue %dx.types.ResRet.f32 %399, 1
  %402 = extractvalue %dx.types.ResRet.f32 %399, 2
  %403 = extractvalue %dx.types.ResRet.f32 %399, 3
  %404 = fcmp fast ogt float %396, 0.000000e+00
  br i1 %404, label %405, label %426, !dx.controlflow.hints !63

; <label>:405                                     ; preds = %388
  %406 = fadd fast float %395, 1.000000e+00
  %407 = call float @dx.op.unary.f32(i32 22, float %369)  ; Frc(value)
  %408 = call float @dx.op.unary.f32(i32 22, float %370)  ; Frc(value)
  %409 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %30, float %407, float %408, float %406, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %410 = extractvalue %dx.types.ResRet.f32 %409, 0
  %411 = extractvalue %dx.types.ResRet.f32 %409, 1
  %412 = extractvalue %dx.types.ResRet.f32 %409, 2
  %413 = extractvalue %dx.types.ResRet.f32 %409, 3
  %414 = fsub fast float %410, %400
  %415 = fsub fast float %411, %401
  %416 = fsub fast float %412, %402
  %417 = fsub fast float %413, %403
  %418 = fmul fast float %414, %396
  %419 = fmul fast float %415, %396
  %420 = fmul fast float %416, %396
  %421 = fmul fast float %417, %396
  %422 = fadd fast float %418, %400
  %423 = fadd fast float %419, %401
  %424 = fadd fast float %420, %402
  %425 = fadd fast float %421, %403
  br label %426

; <label>:426                                     ; preds = %405, %388
  %427 = phi float [ %422, %405 ], [ %400, %388 ]
  %428 = phi float [ %423, %405 ], [ %401, %388 ]
  %429 = phi float [ %424, %405 ], [ %402, %388 ]
  %430 = phi float [ %425, %405 ], [ %403, %388 ]
  %431 = fadd fast float %427, -5.000000e-01
  %432 = fadd fast float %429, -5.000000e-01
  %433 = fmul fast float %431, 0xBFD5555560000000
  %434 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %432, float %433)  ; FMad(a,b,c)
  %435 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %428, float 0.000000e+00)  ; FMad(a,b,c)
  %436 = fadd fast float %435, %430
  %437 = fmul fast float %431, -7.500000e-01
  %438 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %432, float %437)  ; FMad(a,b,c)
  %439 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %428, float 0.000000e+00)  ; FMad(a,b,c)
  %440 = fadd fast float %439, %430
  %441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %442 = extractvalue %dx.types.CBufRet.f32 %441, 0
  %443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %444 = extractvalue %dx.types.CBufRet.f32 %443, 0
  %445 = extractvalue %dx.types.CBufRet.f32 %443, 1
  %446 = extractvalue %dx.types.CBufRet.f32 %443, 2
  %447 = extractvalue %dx.types.CBufRet.f32 %443, 3
  %448 = fsub fast float %444, %434
  %449 = fsub fast float %445, %436
  %450 = fsub fast float %446, %438
  %451 = fsub fast float %447, %440
  %452 = fmul fast float %448, %442
  %453 = fmul fast float %449, %442
  %454 = fmul fast float %450, %442
  %455 = fmul fast float %451, %442
  %456 = fadd fast float %452, %434
  %457 = fadd fast float %453, %436
  %458 = fadd fast float %454, %438
  %459 = fadd fast float %455, %440
  %460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %461 = extractvalue %dx.types.ResRet.i32 %460, 0
  %462 = and i32 %461, 536870911
  %463 = uitofp i32 %462 to float
  %464 = fmul fast float %463, %310
  %465 = fmul fast float %463, %314
  %466 = fptoui float %464 to i32
  %467 = fptoui float %465 to i32
  %468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %469 = extractvalue %dx.types.ResRet.i32 %468, 0
  %470 = and i32 %469, 31
  %471 = lshr i32 %466, %470
  %472 = lshr i32 %467, %470
  %473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %474 = extractvalue %dx.types.ResRet.i32 %473, 0
  %475 = and i32 %474, 31
  %476 = shl i32 1, %475
  %477 = call i32 @dx.op.binary.i32(i32 40, i32 %476, i32 4)  ; UMin(a,b)
  %478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %479 = extractvalue %dx.types.ResRet.i32 %478, 0
  %480 = extractvalue %dx.types.ResRet.i32 %478, 1
  %481 = icmp eq i32 %477, 0
  br i1 %481, label %523, label %482

; <label>:482                                     ; preds = %426
  br label %483

; <label>:483                                     ; preds = %511, %482
  %484 = phi i32 [ %514, %511 ], [ 0, %482 ]
  %485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %486 = extractvalue %dx.types.ResRet.i32 %485, 0
  %487 = lshr i32 %486, 16
  %488 = and i32 %487, 31
  %489 = shl i32 %472, %488
  %490 = add i32 %489, %471
  %491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %492 = extractvalue %dx.types.ResRet.i32 %491, 0
  %493 = and i32 %492, 31
  %494 = shl i32 %490, %493
  %495 = add i32 %494, %484
  %496 = shl i32 %495, 2
  %497 = add i32 %496, 32
  %498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %497, i32 undef)  ; BufferLoad(srv,index,wot)
  %499 = extractvalue %dx.types.ResRet.i32 %498, 0
  %500 = icmp slt i32 %499, 0
  %501 = getelementptr [12 x float], [12 x float]* %40, i32 0, i32 %484
  %502 = getelementptr [12 x float], [12 x float]* %41, i32 0, i32 %484
  %503 = bitcast float* %501 to i32*
  %504 = bitcast float* %502 to i32*
  br i1 %500, label %505, label %511, !dx.controlflow.hints !64

; <label>:505                                     ; preds = %483
  %506 = and i32 %499, 1073741823
  %507 = add nuw nsw i32 %506, 20
  %508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %507, i32 undef)  ; BufferLoad(srv,index,wot)
  %509 = extractvalue %dx.types.ResRet.i32 %508, 0
  %510 = extractvalue %dx.types.ResRet.i32 %508, 1
  br label %511

; <label>:511                                     ; preds = %505, %483
  %512 = phi i32 [ %509, %505 ], [ %479, %483 ]
  %513 = phi i32 [ %510, %505 ], [ %480, %483 ]
  store i32 %512, i32* %503, align 4
  store i32 %513, i32* %504, align 4
  %514 = add nuw i32 %484, 1
  %515 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %36, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %516 = extractvalue %dx.types.CBufRet.i32 %515, 2
  %517 = icmp eq i32 %516, 0
  %518 = icmp ugt i32 %499, -1073741825
  %519 = and i1 %518, %517
  %520 = icmp ult i32 %514, %477
  %521 = and i1 %519, %520
  br i1 %521, label %483, label %522, !dx.controlflow.hints !65

; <label>:522                                     ; preds = %511
  br label %523

; <label>:523                                     ; preds = %522, %426
  %524 = phi i32 [ 0, %426 ], [ %514, %522 ]
  %525 = extractvalue %dx.types.CBufRet.f32 %288, 2
  %526 = fptoui float %525 to i32
  %527 = icmp eq i32 %526, 0
  br i1 %527, label %579, label %528

; <label>:528                                     ; preds = %523
  br label %529

; <label>:529                                     ; preds = %574, %528
  %530 = phi i32 [ %575, %574 ], [ %524, %528 ]
  %531 = phi i32 [ %576, %574 ], [ 0, %528 ]
  %532 = lshr i32 %531, 2
  %533 = and i32 %531, 3
  %534 = add nuw nsw i32 %532, 83
  %535 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %36, i32 %534)  ; CBufferLoadLegacy(handle,regIndex)
  %536 = extractvalue %dx.types.CBufRet.i32 %535, 0
  %537 = extractvalue %dx.types.CBufRet.i32 %535, 1
  %538 = extractvalue %dx.types.CBufRet.i32 %535, 2
  %539 = extractvalue %dx.types.CBufRet.i32 %535, 3
  %540 = getelementptr inbounds [4 x i32], [4 x i32]* %37, i32 0, i32 0
  store i32 %536, i32* %540, align 4
  %541 = getelementptr inbounds [4 x i32], [4 x i32]* %37, i32 0, i32 1
  store i32 %537, i32* %541, align 4
  %542 = getelementptr inbounds [4 x i32], [4 x i32]* %37, i32 0, i32 2
  store i32 %538, i32* %542, align 4
  %543 = getelementptr inbounds [4 x i32], [4 x i32]* %37, i32 0, i32 3
  store i32 %539, i32* %543, align 4
  %544 = getelementptr inbounds [4 x i32], [4 x i32]* %37, i32 0, i32 %533
  %545 = load i32, i32* %544, align 4, !tbaa !66, !noalias !70
  %546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %547 = extractvalue %dx.types.ResRet.i32 %546, 0
  %548 = lshr i32 %547, 16
  %549 = and i32 %548, 31
  %550 = shl i32 %472, %549
  %551 = add i32 %550, %471
  %552 = shl i32 %551, 2
  %553 = add i32 %552, %545
  %554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %553, i32 undef)  ; BufferLoad(srv,index,wot)
  %555 = extractvalue %dx.types.ResRet.i32 %554, 0
  %556 = icmp eq i32 %555, 0
  br i1 %556, label %574, label %557, !dx.controlflow.hints !75

; <label>:557                                     ; preds = %529
  %558 = icmp slt i32 %555, 0
  %559 = getelementptr [12 x float], [12 x float]* %40, i32 0, i32 %530
  %560 = getelementptr [12 x float], [12 x float]* %41, i32 0, i32 %530
  %561 = bitcast float* %559 to i32*
  %562 = bitcast float* %560 to i32*
  br i1 %558, label %563, label %570, !dx.controlflow.hints !76

; <label>:563                                     ; preds = %557
  %564 = and i32 %555, 1073741823
  %565 = add i32 %545, 20
  %566 = add i32 %565, %564
  %567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %566, i32 undef)  ; BufferLoad(srv,index,wot)
  %568 = extractvalue %dx.types.ResRet.i32 %567, 0
  %569 = extractvalue %dx.types.ResRet.i32 %567, 1
  br label %570

; <label>:570                                     ; preds = %563, %557
  %571 = phi i32 [ %568, %563 ], [ %479, %557 ]
  %572 = phi i32 [ %569, %563 ], [ %480, %557 ]
  store i32 %571, i32* %561, align 4
  store i32 %572, i32* %562, align 4
  %573 = add i32 %530, 1
  br label %574

; <label>:574                                     ; preds = %570, %529
  %575 = phi i32 [ %530, %529 ], [ %573, %570 ]
  %576 = add nuw i32 %531, 1
  %577 = icmp eq i32 %576, %526
  br i1 %577, label %578, label %529

; <label>:578                                     ; preds = %574
  br label %579

; <label>:579                                     ; preds = %578, %523
  %580 = phi i32 [ %524, %523 ], [ %575, %578 ]
  %581 = icmp eq i32 %580, 1
  %582 = getelementptr [12 x float], [12 x float]* %40, i32 0, i32 0
  %583 = getelementptr [12 x float], [12 x float]* %41, i32 0, i32 0
  br i1 %581, label %584, label %587, !dx.controlflow.hints !77

; <label>:584                                     ; preds = %579
  %585 = load float, float* %582, align 4
  %586 = load float, float* %583, align 4
  br label %614

; <label>:587                                     ; preds = %579
  %588 = load float, float* %582, align 4
  %589 = load float, float* %583, align 4
  %590 = fdiv fast float 1.000000e+00, %589
  %591 = fsub fast float %588, %590
  %592 = icmp ugt i32 %580, 1
  br i1 %592, label %593, label %609

; <label>:593                                     ; preds = %587
  br label %594

; <label>:594                                     ; preds = %594, %593
  %595 = phi float [ %604, %594 ], [ %591, %593 ]
  %596 = phi float [ %605, %594 ], [ %588, %593 ]
  %597 = phi i32 [ %606, %594 ], [ 1, %593 ]
  %598 = getelementptr [12 x float], [12 x float]* %40, i32 0, i32 %597
  %599 = load float, float* %598, align 4
  %600 = getelementptr [12 x float], [12 x float]* %41, i32 0, i32 %597
  %601 = load float, float* %600, align 4
  %602 = fdiv fast float 1.000000e+00, %601
  %603 = fsub fast float %599, %602
  %604 = call float @dx.op.binary.f32(i32 36, float %595, float %603)  ; FMin(a,b)
  %605 = call float @dx.op.binary.f32(i32 35, float %596, float %599)  ; FMax(a,b)
  %606 = add nuw i32 %597, 1
  %607 = icmp eq i32 %606, %580
  br i1 %607, label %608, label %594

; <label>:608                                     ; preds = %594
  br label %609

; <label>:609                                     ; preds = %608, %587
  %610 = phi float [ %591, %587 ], [ %604, %608 ]
  %611 = phi float [ %588, %587 ], [ %605, %608 ]
  %612 = fsub fast float %611, %610
  %613 = fdiv fast float 1.000000e+00, %612
  br label %614

; <label>:614                                     ; preds = %609, %584
  %615 = phi float [ %585, %584 ], [ %611, %609 ]
  %616 = phi float [ %586, %584 ], [ %613, %609 ]
  %617 = fadd fast float %318, %615
  %618 = fmul fast float %617, %616
  %619 = call float @dx.op.unary.f32(i32 7, float %618)  ; Saturate(value)
  %620 = fmul fast float %619, 2.000000e+00
  %621 = fsub fast float 1.000000e+00, %620
  %622 = fmul fast float %456, %456
  %623 = fsub fast float %457, %622
  %624 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %623)  ; FMax(a,b)
  %625 = fdiv fast float 1.000000e+00, %624
  %626 = fmul fast float %457, %456
  %627 = fsub fast float %458, %626
  %628 = fsub fast float %621, %456
  %629 = fmul fast float %621, %621
  %630 = fsub fast float %629, %457
  %631 = fmul fast float %625, %627
  %632 = fmul fast float %631, %628
  %633 = fsub fast float %630, %632
  %634 = fmul fast float %457, %457
  %635 = fsub fast float %459, %634
  %636 = fmul fast float %627, %627
  %637 = fmul fast float %636, %625
  %638 = fsub fast float %635, %637
  %639 = fdiv fast float %633, %638
  %640 = fmul fast float %639, %627
  %641 = fsub fast float %628, %640
  %642 = fmul fast float %641, %625
  %643 = fmul fast float %642, %456
  %644 = fsub fast float 1.000000e+00, %643
  %645 = fmul fast float %639, %457
  %646 = fsub fast float %644, %645
  %647 = fmul fast float %642, %642
  %648 = fmul fast float %639, 4.000000e+00
  %649 = fmul fast float %648, %646
  %650 = fsub fast float %647, %649
  %651 = call float @dx.op.unary.f32(i32 24, float %650)  ; Sqrt(value)
  %652 = fcmp fast oge float %642, 0.000000e+00
  %653 = fsub fast float -0.000000e+00, %651
  %654 = select i1 %652, float %653, float %651
  %655 = fsub fast float %654, %642
  %656 = fdiv fast float %655, %639
  %657 = fdiv fast float %646, %655
  %658 = fmul fast float %656, 5.000000e-01
  %659 = fmul fast float %657, 2.000000e+00
  %660 = select i1 %652, float %658, float %659
  %661 = select i1 %652, float %659, float %658
  %662 = call float @dx.op.binary.f32(i32 35, float %660, float %661)  ; FMax(a,b)
  %663 = call float @dx.op.binary.f32(i32 36, float %660, float %661)  ; FMin(a,b)
  %664 = fcmp fast ogt float %621, %662
  %665 = fsub fast float %621, %663
  %666 = fsub fast float %621, %662
  %667 = fsub fast float %662, %663
  %668 = select i1 %664, float %666, float %667
  %669 = fmul float %665, %668
  %670 = select i1 %664, float %663, float %621
  %671 = fcmp fast ogt float %621, %663
  %672 = fmul fast float %670, %662
  %673 = fadd fast float %670, %662
  %674 = fmul fast float %673, %456
  %675 = fadd fast float %672, %457
  %676 = fsub fast float %675, %674
  %677 = fdiv fast float %676, %669
  %678 = select i1 %671, float %677, float 0.000000e+00
  %679 = fsub fast float 1.000000e+00, %678
  %680 = select i1 %664, float %679, float %678
  %681 = call float @dx.op.unary.f32(i32 7, float %680)  ; Saturate(value)
  %682 = extractvalue %dx.types.CBufRet.f32 %441, 3
  %683 = fmul fast float %682, %681
  %684 = fsub fast float 1.000000e+00, %683
  br label %685

; <label>:685                                     ; preds = %614, %326, %291, %287, %282
  %686 = phi float [ 1.000000e+00, %282 ], [ %684, %614 ], [ 1.000000e+00, %291 ], [ 1.000000e+00, %326 ], [ 1.000000e+00, %287 ]
  br i1 %286, label %687, label %688, !dx.controlflow.hints !78

; <label>:687                                     ; preds = %685
  br label %688

; <label>:688                                     ; preds = %687, %685
  %689 = phi float [ -1.310720e+05, %687 ], [ %686, %685 ]
  %690 = fcmp fast ogt float %283, 0.000000e+00
  br i1 %690, label %691, label %846, !dx.controlflow.hints !79

; <label>:691                                     ; preds = %688
  %692 = fadd fast float %247, %233
  %693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %694 = extractvalue %dx.types.CBufRet.f32 %693, 2
  %695 = extractvalue %dx.types.CBufRet.f32 %693, 3
  %696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %697 = extractvalue %dx.types.CBufRet.f32 %696, 1
  %698 = call float @dx.op.binary.f32(i32 35, float %692, float 0.000000e+00)  ; FMax(a,b)
  %699 = fadd fast float %698, 0x3F10000000000000
  %700 = fcmp fast oeq float %697, 0.000000e+00
  br i1 %700, label %702, label %701, !dx.controlflow.hints !80

; <label>:701                                     ; preds = %691
  br label %769

; <label>:702                                     ; preds = %691
  %703 = extractvalue %dx.types.CBufRet.f32 %693, 1
  %704 = extractvalue %dx.types.CBufRet.f32 %693, 0
  %705 = fmul fast float %704, %240
  %706 = fmul fast float %703, %241
  %707 = fadd fast float %705, 5.000000e-01
  %708 = call float @dx.op.unary.f32(i32 27, float %707)  ; Round_ni(value)
  %709 = fadd fast float %706, 5.000000e-01
  %710 = call float @dx.op.unary.f32(i32 27, float %709)  ; Round_ni(value)
  %711 = fsub fast float %707, %708
  %712 = fsub fast float %709, %710
  %713 = fadd fast float %708, -5.000000e-01
  %714 = fadd fast float %710, -5.000000e-01
  %715 = fmul fast float %711, 2.000000e+00
  %716 = fsub fast float 3.000000e+00, %715
  %717 = fadd fast float %715, 1.000000e+00
  %718 = fsub fast float 2.000000e+00, %711
  %719 = bitcast float %716 to i32
  %720 = sub nsw i32 2129859010, %719
  %721 = bitcast i32 %720 to float
  %722 = fmul fast float %721, %718
  %723 = fadd fast float %722, -1.000000e+00
  %724 = bitcast float %717 to i32
  %725 = sub nsw i32 2129859010, %724
  %726 = bitcast i32 %725 to float
  %727 = fmul fast float %726, %711
  %728 = fadd fast float %727, 1.000000e+00
  %729 = fmul fast float %712, 2.000000e+00
  %730 = fsub fast float 3.000000e+00, %729
  %731 = fadd fast float %729, 1.000000e+00
  %732 = fsub fast float 2.000000e+00, %712
  %733 = bitcast float %730 to i32
  %734 = sub nsw i32 2129859010, %733
  %735 = bitcast i32 %734 to float
  %736 = fmul fast float %735, %732
  %737 = fadd fast float %736, -1.000000e+00
  %738 = bitcast float %731 to i32
  %739 = sub nsw i32 2129859010, %738
  %740 = bitcast i32 %739 to float
  %741 = fmul fast float %740, %712
  %742 = fadd fast float %741, 1.000000e+00
  %743 = fadd fast float %723, %713
  %744 = fmul fast float %743, %694
  %745 = fadd fast float %737, %714
  %746 = fmul fast float %745, %695
  %747 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %33, float %744, float %746, float undef, float undef, i32 0, i32 0, i32 undef, float %699)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %748 = extractvalue %dx.types.ResRet.f32 %747, 0
  %749 = fmul fast float %748, %716
  %750 = fadd fast float %728, %713
  %751 = fmul fast float %750, %694
  %752 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %33, float %751, float %746, float undef, float undef, i32 0, i32 0, i32 undef, float %699)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %753 = extractvalue %dx.types.ResRet.f32 %752, 0
  %754 = fmul fast float %753, %717
  %755 = fadd fast float %742, %714
  %756 = fmul fast float %755, %695
  %757 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %33, float %744, float %756, float undef, float undef, i32 0, i32 0, i32 undef, float %699)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %758 = extractvalue %dx.types.ResRet.f32 %757, 0
  %759 = fmul fast float %758, %716
  %760 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %33, float %751, float %756, float undef, float undef, i32 0, i32 0, i32 undef, float %699)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %761 = extractvalue %dx.types.ResRet.f32 %760, 0
  %762 = fmul fast float %761, %717
  %763 = fadd fast float %762, %759
  %764 = fmul fast float %763, %731
  %765 = fadd fast float %754, %749
  %766 = fmul fast float %765, %730
  %767 = fadd fast float %766, %764
  %768 = fmul fast float %767, 6.250000e-02
  br label %846

; <label>:769                                     ; preds = %815, %701
  %770 = phi float [ %810, %815 ], [ 0.000000e+00, %701 ]
  %771 = phi float [ %812, %815 ], [ 0.000000e+00, %701 ]
  %772 = phi i32 [ %816, %815 ], [ 0, %701 ]
  %773 = mul i32 %772, 2
  %774 = add i32 0, %773
  %775 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %774
  %776 = load float, float* %775, align 4
  %777 = mul i32 %772, 2
  %778 = add i32 1, %777
  %779 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %778
  %780 = load float, float* %779, align 4
  %781 = call float @dx.op.tertiary.f32(i32 46, float %780, float -0.000000e+00, float %776)  ; FMad(a,b,c)
  %782 = fmul fast float %781, %697
  %783 = fmul fast float %780, %697
  %784 = fadd fast float %782, %240
  %785 = fadd fast float %783, %241
  %786 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %11, %dx.types.Handle %32, float %784, float %785, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %787 = extractvalue %dx.types.ResRet.f32 %786, 0
  %788 = extractvalue %dx.types.ResRet.f32 %786, 1
  %789 = extractvalue %dx.types.ResRet.f32 %786, 2
  %790 = extractvalue %dx.types.ResRet.f32 %786, 3
  %791 = getelementptr inbounds [4 x float], [4 x float]* %46, i32 0, i32 0
  store float %787, float* %791, align 4
  %792 = getelementptr inbounds [4 x float], [4 x float]* %46, i32 0, i32 1
  store float %788, float* %792, align 4
  %793 = getelementptr inbounds [4 x float], [4 x float]* %46, i32 0, i32 2
  store float %789, float* %793, align 4
  %794 = getelementptr inbounds [4 x float], [4 x float]* %46, i32 0, i32 3
  store float %790, float* %794, align 4
  %795 = fsub fast float %787, %699
  %796 = fcmp fast olt float %795, 0.000000e+00
  %797 = select i1 %796, float 0.000000e+00, float 1.000000e+00
  %798 = fadd fast float %797, %770
  %799 = fmul fast float %797, %795
  %800 = fadd fast float %799, %771
  br label %801

; <label>:801                                     ; preds = %801, %769
  %802 = phi i32 [ 1, %769 ], [ %813, %801 ]
  %803 = phi float [ %800, %769 ], [ %812, %801 ]
  %804 = phi float [ %798, %769 ], [ %810, %801 ]
  %805 = getelementptr [4 x float], [4 x float]* %46, i32 0, i32 %802
  %806 = load float, float* %805, align 4, !tbaa !81, !noalias !70
  %807 = fsub fast float %806, %699
  %808 = fcmp fast olt float %807, 0.000000e+00
  %809 = select i1 %808, float 0.000000e+00, float 1.000000e+00
  %810 = fadd fast float %809, %804
  %811 = fmul fast float %809, %807
  %812 = fadd fast float %811, %803
  %813 = add nuw nsw i32 %802, 1
  %814 = icmp eq i32 %813, 4
  br i1 %814, label %815, label %801, !llvm.loop !83

; <label>:815                                     ; preds = %801
  %816 = add nuw nsw i32 %772, 1
  %817 = icmp eq i32 %816, 8
  br i1 %817, label %818, label %769, !llvm.loop !85

; <label>:818                                     ; preds = %815
  %819 = fdiv fast float 1.000000e+00, %810
  %820 = fmul fast float %819, %812
  %821 = fdiv fast float 1.000000e+00, %699
  %822 = fmul fast float %820, %821
  %823 = call float @dx.op.unary.f32(i32 7, float %822)  ; Saturate(value)
  %824 = call float @dx.op.binary.f32(i32 35, float %823, float 0.000000e+00)  ; FMax(a,b)
  %825 = fmul fast float %810, 3.125000e-02
  %826 = call float @dx.op.unary.f32(i32 7, float %825)  ; Saturate(value)
  %827 = fmul fast float %826, 2.000000e+00
  %828 = fadd fast float %827, -1.000000e+00
  %829 = fcmp fast ogt float %828, 0.000000e+00
  %830 = fcmp fast olt float %828, 0.000000e+00
  %831 = zext i1 %829 to i32
  %832 = zext i1 %830 to i32
  %833 = sub nsw i32 %831, %832
  %834 = sitofp i32 %833 to float
  %835 = fmul fast float %834, %828
  %836 = fsub fast float 1.000000e+00, %835
  %837 = fmul fast float %836, %836
  %838 = fmul fast float %837, %836
  %839 = fsub fast float %836, %838
  %840 = fmul fast float %839, %824
  %841 = fsub fast float 1.000000e+00, %838
  %842 = fsub fast float %841, %840
  %843 = fmul fast float %834, 5.000000e-01
  %844 = fmul fast float %843, %842
  %845 = fsub fast float 5.000000e-01, %844
  br label %846

; <label>:846                                     ; preds = %818, %702, %688
  %847 = phi float [ 1.000000e+00, %688 ], [ %768, %702 ], [ %845, %818 ]
  %848 = fsub fast float %847, %689
  %849 = fmul fast float %848, %283
  %850 = fadd fast float %849, %689
  br label %851

; <label>:851                                     ; preds = %846, %184
  %852 = phi float [ %850, %846 ], [ 1.000000e+00, %184 ]
  %853 = call float @dx.op.binary.f32(i32 36, float %852, float %852)  ; FMin(a,b)
  %854 = call float @dx.op.binary.f32(i32 36, float %852, float %853)  ; FMin(a,b)
  %855 = fcmp fast ogt float %854, 0.000000e+00
  br i1 %855, label %856, label %1021, !dx.controlflow.hints !86

; <label>:856                                     ; preds = %851
  %857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %858 = extractvalue %dx.types.CBufRet.f32 %857, 0
  %859 = extractvalue %dx.types.CBufRet.f32 %857, 1
  %860 = extractvalue %dx.types.CBufRet.f32 %857, 2
  %861 = extractvalue %dx.types.CBufRet.f32 %857, 3
  %862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %863 = extractvalue %dx.types.CBufRet.f32 %862, 0
  %864 = extractvalue %dx.types.CBufRet.f32 %862, 1
  %865 = extractvalue %dx.types.CBufRet.f32 %862, 2
  %866 = extractvalue %dx.types.CBufRet.f32 %862, 3
  %867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %868 = extractvalue %dx.types.CBufRet.f32 %867, 0
  %869 = extractvalue %dx.types.CBufRet.f32 %867, 1
  %870 = extractvalue %dx.types.CBufRet.f32 %867, 2
  %871 = extractvalue %dx.types.CBufRet.f32 %867, 3
  %872 = fmul fast float %858, %202
  %873 = call float @dx.op.tertiary.f32(i32 46, float %203, float %859, float %872)  ; FMad(a,b,c)
  %874 = call float @dx.op.tertiary.f32(i32 46, float %204, float %860, float %873)  ; FMad(a,b,c)
  %875 = fadd fast float %874, %861
  %876 = fmul fast float %863, %202
  %877 = call float @dx.op.tertiary.f32(i32 46, float %203, float %864, float %876)  ; FMad(a,b,c)
  %878 = call float @dx.op.tertiary.f32(i32 46, float %204, float %865, float %877)  ; FMad(a,b,c)
  %879 = fadd fast float %878, %866
  %880 = fmul fast float %868, %202
  %881 = call float @dx.op.tertiary.f32(i32 46, float %203, float %869, float %880)  ; FMad(a,b,c)
  %882 = call float @dx.op.tertiary.f32(i32 46, float %204, float %870, float %881)  ; FMad(a,b,c)
  %883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %884 = extractvalue %dx.types.CBufRet.f32 %883, 0
  %885 = extractvalue %dx.types.CBufRet.f32 %883, 1
  %886 = extractvalue %dx.types.CBufRet.f32 %883, 3
  %887 = fmul fast float %886, %875
  %888 = fmul fast float %886, %879
  %889 = fadd fast float %887, %884
  %890 = fadd fast float %888, %885
  %891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %892 = extractvalue %dx.types.CBufRet.f32 %891, 0
  %893 = extractvalue %dx.types.CBufRet.f32 %891, 1
  %894 = fsub fast float %889, %892
  %895 = fsub fast float %890, %893
  %896 = fcmp fast olt float %894, 0.000000e+00
  %897 = fcmp fast olt float %895, 0.000000e+00
  %898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %899 = extractvalue %dx.types.CBufRet.f32 %898, 0
  %900 = extractvalue %dx.types.CBufRet.f32 %898, 1
  %901 = extractvalue %dx.types.CBufRet.f32 %898, 2
  %902 = extractvalue %dx.types.CBufRet.f32 %898, 3
  %903 = select i1 %896, float %899, float %901
  %904 = select i1 %897, float %900, float %902
  %905 = fmul fast float %903, %894
  %906 = fmul fast float %904, %895
  %907 = call float @dx.op.unary.f32(i32 6, float %905)  ; FAbs(value)
  %908 = call float @dx.op.unary.f32(i32 6, float %906)  ; FAbs(value)
  %909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %910 = extractvalue %dx.types.CBufRet.f32 %909, 0
  %911 = call float @dx.op.binary.f32(i32 35, float %907, float %908)  ; FMax(a,b)
  %912 = fsub fast float %910, %911
  %913 = call float @dx.op.unary.f32(i32 7, float %912)  ; Saturate(value)
  %914 = fcmp fast ogt float %913, 0.000000e+00
  br i1 %914, label %915, label %956, !dx.controlflow.hints !87

; <label>:915                                     ; preds = %856
  %916 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %31, float %889, float %890, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %917 = extractvalue %dx.types.ResRet.f32 %916, 1
  %918 = fcmp fast ogt float %917, 0.000000e+00
  br i1 %918, label %919, label %951, !dx.controlflow.hints !88

; <label>:919                                     ; preds = %915
  %920 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %31, float %889, float %890, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %921 = extractvalue %dx.types.ResRet.f32 %920, 0
  %922 = extractvalue %dx.types.ResRet.f32 %920, 1
  %923 = extractvalue %dx.types.ResRet.f32 %920, 2
  %924 = extractvalue %dx.types.ResRet.f32 %920, 3
  %925 = fsub fast float 1.000000e+00, %871
  %926 = fsub fast float %925, %882
  %927 = fmul fast float %926, 0x400921FB60000000
  %928 = fadd fast float %927, 0x3FF921FB60000000
  %929 = call float @dx.op.unary.f32(i32 13, float %928)  ; Sin(value)
  %930 = fadd fast float %929, -1.000000e+00
  %931 = fmul fast float %930, 0x3FD45F3060000000
  %932 = fmul fast float %926, 0x401921FB60000000
  %933 = fadd fast float %932, 0x400921FB60000000
  %934 = call float @dx.op.unary.f32(i32 13, float %933)  ; Sin(value)
  %935 = fadd fast float %934, 0x3E7777A5C0000000
  %936 = fmul fast float %935, 0x3FC45F3060000000
  %937 = fmul fast float %926, 0x4022D97C80000000
  %938 = fadd fast float %937, 0x4012D97C80000000
  %939 = call float @dx.op.unary.f32(i32 13, float %938)  ; Sin(value)
  %940 = fadd fast float %939, 1.000000e+00
  %941 = fmul fast float %940, 0x3FBB2995E0000000
  %942 = fmul fast float %926, 0x402921FB60000000
  %943 = fadd fast float %942, 0x401921FB60000000
  %944 = call float @dx.op.unary.f32(i32 13, float %943)  ; Sin(value)
  %945 = fadd fast float %944, 0xBE8777A5C0000000
  %946 = fmul fast float %945, 0x3FB45F3060000000
  %947 = call float @dx.op.dot4.f32(i32 56, float %921, float %922, float %923, float %924, float %931, float %936, float %941, float %946)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %948 = fmul fast float %947, 0xBFF7154760000000
  %949 = call float @dx.op.unary.f32(i32 21, float %948)  ; Exp(value)
  %950 = call float @dx.op.unary.f32(i32 7, float %949)  ; Saturate(value)
  br label %951

; <label>:951                                     ; preds = %919, %915
  %952 = phi float [ %950, %919 ], [ 1.000000e+00, %915 ]
  %953 = fadd fast float %952, -1.000000e+00
  %954 = fmul fast float %953, %913
  %955 = fadd fast float %954, 1.000000e+00
  br label %956

; <label>:956                                     ; preds = %951, %856
  %957 = phi float [ %955, %951 ], [ 1.000000e+00, %856 ]
  %958 = fmul fast float %957, %852
  %959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %960 = extractvalue %dx.types.CBufRet.f32 %959, 0
  %961 = extractvalue %dx.types.CBufRet.f32 %959, 1
  %962 = extractvalue %dx.types.CBufRet.f32 %959, 2
  %963 = fadd fast float %960, %85
  %964 = fadd fast float %961, %86
  %965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %966 = extractvalue %dx.types.CBufRet.f32 %965, 1
  %967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %968 = extractvalue %dx.types.CBufRet.f32 %967, 0
  %969 = extractvalue %dx.types.CBufRet.f32 %967, 1
  %970 = extractvalue %dx.types.CBufRet.f32 %967, 2
  %971 = fsub fast float -0.000000e+00, %963
  %972 = fsub fast float -0.000000e+00, %964
  %973 = fsub fast float %88, %962
  %974 = fadd fast float %973, %966
  %975 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %971, float %972, float %974)  ; Dot3(ax,ay,az,bx,by,bz)
  %976 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %968, float %969, float %970)  ; Dot3(ax,ay,az,bx,by,bz)
  %977 = fdiv fast float 1.000000e+00, %976
  %978 = fmul fast float %977, %975
  %979 = fmul fast float %968, %978
  %980 = fmul fast float %969, %978
  %981 = fadd fast float %979, %963
  %982 = fadd fast float %980, %964
  %983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %984 = extractvalue %dx.types.CBufRet.f32 %983, 0
  %985 = extractvalue %dx.types.CBufRet.f32 %983, 1
  %986 = fsub fast float %981, %984
  %987 = fsub fast float %982, %985
  %988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %989 = extractvalue %dx.types.CBufRet.f32 %988, 2
  %990 = extractvalue %dx.types.CBufRet.f32 %988, 3
  %991 = fmul fast float %986, %989
  %992 = fmul fast float %987, %990
  %993 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %36, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %994 = extractvalue %dx.types.CBufRet.i32 %993, 3
  %995 = icmp eq i32 %994, 0
  br i1 %995, label %1001, label %996, !dx.controlflow.hints !89

; <label>:996                                     ; preds = %956
  %997 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %30, float %991, float %992, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %998 = extractvalue %dx.types.ResRet.f32 %997, 0
  %999 = extractvalue %dx.types.ResRet.f32 %997, 1
  %1000 = extractvalue %dx.types.ResRet.f32 %997, 2
  br label %1006

; <label>:1001                                    ; preds = %956
  %1002 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %31, float %991, float %992, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1003 = extractvalue %dx.types.ResRet.f32 %1002, 0
  %1004 = extractvalue %dx.types.ResRet.f32 %1002, 1
  %1005 = extractvalue %dx.types.ResRet.f32 %1002, 2
  br label %1006

; <label>:1006                                    ; preds = %1001, %996
  %1007 = phi float [ %998, %996 ], [ %1003, %1001 ]
  %1008 = phi float [ %999, %996 ], [ %1004, %1001 ]
  %1009 = phi float [ %1000, %996 ], [ %1005, %1001 ]
  %1010 = extractvalue %dx.types.CBufRet.f32 %965, 2
  %1011 = fmul fast float %1010, %1007
  %1012 = extractvalue %dx.types.CBufRet.f32 %965, 0
  %1013 = fsub fast float %978, %1012
  %1014 = fsub fast float %1013, %1011
  %1015 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1014)  ; FMax(a,b)
  %1016 = fmul fast float %1015, %1008
  %1017 = call float @dx.op.binary.f32(i32 36, float %1009, float %1016)  ; FMin(a,b)
  %1018 = fmul fast float %1017, 0xBFF7154760000000
  %1019 = call float @dx.op.unary.f32(i32 21, float %1018)  ; Exp(value)
  %1020 = fmul fast float %958, %1019
  br label %1021

; <label>:1021                                    ; preds = %1006, %851
  %1022 = phi float [ %1020, %1006 ], [ %852, %851 ]
  %1023 = call float @dx.op.binary.f32(i32 36, float %1022, float %1022)  ; FMin(a,b)
  %1024 = call float @dx.op.binary.f32(i32 36, float %1022, float %1023)  ; FMin(a,b)
  %1025 = fcmp fast ogt float %1024, 0.000000e+00
  br i1 %1025, label %1026, label %1115, !dx.controlflow.hints !90

; <label>:1026                                    ; preds = %1021
  %1027 = icmp eq i32 %180, 0
  br i1 %1027, label %1102, label %1028, !dx.controlflow.hints !91

; <label>:1028                                    ; preds = %1026
  %1029 = fsub fast float %87, %179
  %1030 = fcmp fast ogt float %1029, 0.000000e+00
  %1031 = fmul fast float %185, 5.120000e+02
  %1032 = fmul fast float %186, 5.120000e+02
  %1033 = fmul fast float %187, 5.120000e+02
  %1034 = fadd fast float %1033, %87
  %1035 = fsub fast float %179, %1034
  %1036 = fmul fast float %1035, 2.000000e+00
  %1037 = fadd fast float %1036, %1034
  %1038 = select i1 %1030, float %1037, float %1034
  %1039 = fsub fast float %1038, %87
  %1040 = call float @dx.op.dot3.f32(i32 55, float %1031, float %1032, float %1039, float %1031, float %1032, float %1039)  ; Dot3(ax,ay,az,bx,by,bz)
  %1041 = call float @dx.op.unary.f32(i32 25, float %1040)  ; Rsqrt(value)
  %1042 = fmul fast float %1041, %1031
  %1043 = fmul fast float %1041, %1032
  %1044 = fmul fast float %1041, %1039
  %1045 = fsub fast float %179, %87
  %1046 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %1045)  ; Dot3(ax,ay,az,bx,by,bz)
  %1047 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1042, float %1043, float %1044)  ; Dot3(ax,ay,az,bx,by,bz)
  %1048 = fdiv fast float 1.000000e+00, %1047
  %1049 = fmul fast float %1048, %1046
  %1050 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %1029, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1051 = fcmp fast ogt float %1050, 0.000000e+00
  %1052 = fcmp fast olt float %1050, 0.000000e+00
  %1053 = zext i1 %1051 to i32
  %1054 = zext i1 %1052 to i32
  %1055 = sub nsw i32 %1053, %1054
  %1056 = sitofp i32 %1055 to float
  %1057 = fsub fast float %1038, %179
  %1058 = call float @dx.op.dot3.f32(i32 55, float %1031, float %1032, float %1057, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1059 = fcmp fast ogt float %1058, 0.000000e+00
  %1060 = fcmp fast olt float %1058, 0.000000e+00
  %1061 = zext i1 %1059 to i32
  %1062 = zext i1 %1060 to i32
  %1063 = sub nsw i32 %1061, %1062
  %1064 = sitofp i32 %1063 to float
  %1065 = fcmp fast une float %1056, %1064
  br i1 %1065, label %1066, label %1076, !dx.controlflow.hints !92

; <label>:1066                                    ; preds = %1028
  %1067 = fmul fast float %1049, %1044
  %1068 = fmul fast float %1049, %1043
  %1069 = fmul fast float %1049, %1042
  %1070 = fmul fast float %1069, %1069
  %1071 = fmul fast float %1068, %1068
  %1072 = fadd fast float %1070, %1071
  %1073 = fmul fast float %1067, %1067
  %1074 = fadd fast float %1072, %1073
  %1075 = call float @dx.op.unary.f32(i32 24, float %1074)  ; Sqrt(value)
  br label %1086

; <label>:1076                                    ; preds = %1028
  %1077 = icmp slt i32 %1055, 0
  br i1 %1077, label %1078, label %1086, !dx.controlflow.hints !93

; <label>:1078                                    ; preds = %1076
  %1079 = fsub fast float %87, %1038
  %1080 = fmul fast float %1031, %1031
  %1081 = fmul fast float %1032, %1032
  %1082 = fadd fast float %1080, %1081
  %1083 = fmul fast float %1079, %1079
  %1084 = fadd fast float %1082, %1083
  %1085 = call float @dx.op.unary.f32(i32 24, float %1084)  ; Sqrt(value)
  br label %1086

; <label>:1086                                    ; preds = %1078, %1076, %1066
  %1087 = phi float [ %1075, %1066 ], [ %1085, %1078 ], [ 0.000000e+00, %1076 ]
  %1088 = fsub fast float -0.000000e+00, %1087
  %1089 = select i1 %1030, float -0.000000e+00, float %1088
  %1090 = fmul fast float %176, %1089
  %1091 = fmul fast float %177, %1089
  %1092 = fmul fast float %178, %1089
  %1093 = call float @dx.op.unary.f32(i32 21, float %1090)  ; Exp(value)
  %1094 = call float @dx.op.unary.f32(i32 21, float %1091)  ; Exp(value)
  %1095 = call float @dx.op.unary.f32(i32 21, float %1092)  ; Exp(value)
  %1096 = call float @dx.op.unary.f32(i32 7, float %1093)  ; Saturate(value)
  %1097 = call float @dx.op.unary.f32(i32 7, float %1094)  ; Saturate(value)
  %1098 = call float @dx.op.unary.f32(i32 7, float %1095)  ; Saturate(value)
  %1099 = fmul fast float %1096, %196
  %1100 = fmul fast float %1097, %197
  %1101 = fmul fast float %1098, %198
  br label %1102

; <label>:1102                                    ; preds = %1086, %1026
  %1103 = phi float [ %1099, %1086 ], [ %196, %1026 ]
  %1104 = phi float [ %1100, %1086 ], [ %197, %1026 ]
  %1105 = phi float [ %1101, %1086 ], [ %198, %1026 ]
  %1106 = fmul fast float %1103, %1022
  %1107 = fmul fast float %1104, %1022
  %1108 = fmul fast float %1105, %1022
  br i1 %80, label %1109, label %1115, !dx.controlflow.hints !94

; <label>:1109                                    ; preds = %1102
  %1110 = call float @dx.op.dot3.f32(i32 55, float %185, float %186, float %187, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %1111 = call float @dx.op.unary.f32(i32 7, float %1110)  ; Saturate(value)
  %1112 = fmul fast float %1111, %1106
  %1113 = fmul fast float %1111, %1107
  %1114 = fmul fast float %1111, %1108
  br label %1115

; <label>:1115                                    ; preds = %1109, %1102, %1021, %175
  %1116 = phi float [ 0.000000e+00, %175 ], [ 0.000000e+00, %1021 ], [ %1112, %1109 ], [ %1106, %1102 ]
  %1117 = phi float [ 0.000000e+00, %175 ], [ 0.000000e+00, %1021 ], [ %1113, %1109 ], [ %1107, %1102 ]
  %1118 = phi float [ 0.000000e+00, %175 ], [ 0.000000e+00, %1021 ], [ %1114, %1109 ], [ %1108, %1102 ]
  %1119 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %36, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1120 = extractvalue %dx.types.CBufRet.i32 %1119, 0
  %1121 = icmp eq i32 %1120, 0
  br i1 %1121, label %1555, label %1122, !dx.controlflow.hints !95

; <label>:1122                                    ; preds = %1115
  %1123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1124 = extractvalue %dx.types.CBufRet.f32 %1123, 0
  %1125 = extractvalue %dx.types.CBufRet.f32 %1123, 1
  %1126 = extractvalue %dx.types.CBufRet.f32 %1123, 2
  %1127 = fadd fast float %1124, %85
  %1128 = fadd fast float %1125, %86
  %1129 = fadd fast float %1126, %87
  %1130 = getelementptr inbounds [3 x float], [3 x float]* %45, i32 0, i32 0
  store float %1127, float* %1130, align 4
  %1131 = getelementptr inbounds [3 x float], [3 x float]* %45, i32 0, i32 1
  store float %1128, float* %1131, align 4
  %1132 = getelementptr inbounds [3 x float], [3 x float]* %45, i32 0, i32 2
  store float %1129, float* %1132, align 4
  br label %1133

; <label>:1133                                    ; preds = %1133, %1122
  %1134 = phi i32 [ 0, %1122 ], [ %1148, %1133 ]
  %1135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1134, i32 0)  ; BufferLoad(srv,index,wot)
  %1136 = extractvalue %dx.types.ResRet.i32 %1135, 0
  %1137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1134, i32 4)  ; BufferLoad(srv,index,wot)
  %1138 = extractvalue %dx.types.ResRet.i32 %1137, 0
  %1139 = lshr i32 %1136, 30
  %1140 = and i32 %1136, 1048575
  %1141 = uitofp i32 %1140 to float
  %1142 = fadd fast float %1141, -5.242880e+05
  %1143 = and i32 %1138, 65535
  %1144 = lshr i32 %1138, 16
  %1145 = getelementptr [3 x float], [3 x float]* %45, i32 0, i32 %1139
  %1146 = load float, float* %1145, align 4, !tbaa !81, !noalias !96
  %1147 = fcmp fast olt float %1146, %1142
  %1148 = select i1 %1147, i32 %1143, i32 %1144
  %1149 = and i32 %1148, 32768
  %1150 = icmp eq i32 %1149, 0
  br i1 %1150, label %1133, label %1151

; <label>:1151                                    ; preds = %1133
  %1152 = and i32 %1148, 32767
  %1153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1152, i32 undef)  ; BufferLoad(srv,index,wot)
  %1154 = extractvalue %dx.types.ResRet.i32 %1153, 0
  %1155 = lshr i32 %1154, 22
  br label %1156

; <label>:1156                                    ; preds = %1156, %1151
  %1157 = phi i32 [ 0, %1151 ], [ %1173, %1156 ]
  %1158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1157, i32 0)  ; BufferLoad(srv,index,wot)
  %1159 = extractvalue %dx.types.ResRet.i32 %1158, 0
  %1160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1157, i32 4)  ; BufferLoad(srv,index,wot)
  %1161 = extractvalue %dx.types.ResRet.i32 %1160, 0
  %1162 = lshr i32 %1159, 30
  %1163 = and i32 %1159, 1048575
  %1164 = uitofp i32 %1163 to float
  %1165 = fadd fast float %1164, -5.242880e+05
  %1166 = and i32 %1161, 65535
  %1167 = lshr i32 %1161, 16
  %1168 = icmp ne i32 %1162, 3
  %1169 = getelementptr [3 x float], [3 x float]* %45, i32 0, i32 %1162
  %1170 = load float, float* %1169, align 4, !tbaa !81, !noalias !96
  %1171 = fcmp fast olt float %1170, %1165
  %1172 = select i1 %1171, i32 %1166, i32 %1167
  %1173 = select i1 %1168, i32 %1172, i32 %1161
  %1174 = icmp eq i32 %1162, 3
  br i1 %1174, label %1175, label %1156

; <label>:1175                                    ; preds = %1156
  %1176 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1173)  ; Countbits(value)
  %1177 = add i32 %1176, %1155
  %1178 = icmp eq i32 %1177, 0
  br i1 %1178, label %1555, label %1179

; <label>:1179                                    ; preds = %1175
  %1180 = and i32 %1154, 4194303
  br label %1181

; <label>:1181                                    ; preds = %1548, %1179
  %1182 = phi i32 [ %1552, %1548 ], [ 0, %1179 ]
  %1183 = phi float [ %1549, %1548 ], [ %1116, %1179 ]
  %1184 = phi float [ %1550, %1548 ], [ %1117, %1179 ]
  %1185 = phi float [ %1551, %1548 ], [ %1118, %1179 ]
  %1186 = phi i32 [ %1188, %1548 ], [ %1180, %1179 ]
  %1187 = phi i32 [ %1204, %1548 ], [ %1173, %1179 ]
  %1188 = add i32 %1186, 1
  %1189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %1186, i32 undef)  ; BufferLoad(srv,index,wot)
  %1190 = extractvalue %dx.types.ResRet.i32 %1189, 0
  %1191 = icmp ult i32 %1182, %1155
  br i1 %1191, label %1203, label %1192, !dx.controlflow.hints !97

; <label>:1192                                    ; preds = %1181
  %1193 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1187)  ; FirstbitLo(value)
  %1194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 22)  ; CBufferLoadLegacy(handle,regIndex)
  %1195 = extractvalue %dx.types.CBufRet.f32 %1194, 0
  %1196 = uitofp i32 %1193 to float
  %1197 = fadd fast float %1195, %1196
  %1198 = fptosi float %1197 to i32
  %1199 = and i32 %1193, 31
  %1200 = shl i32 1, %1199
  %1201 = xor i32 %1200, -1
  %1202 = and i32 %1187, %1201
  br label %1203

; <label>:1203                                    ; preds = %1192, %1181
  %1204 = phi i32 [ %1202, %1192 ], [ %1187, %1181 ]
  %1205 = phi i32 [ %1198, %1192 ], [ %1190, %1181 ]
  %1206 = mul i32 %1205, 112
  %1207 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1206, i32 undef)  ; BufferLoad(srv,index,wot)
  %1208 = extractvalue %dx.types.ResRet.f32 %1207, 0
  %1209 = extractvalue %dx.types.ResRet.f32 %1207, 1
  %1210 = extractvalue %dx.types.ResRet.f32 %1207, 2
  %1211 = or i32 %1206, 12
  %1212 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1211, i32 undef)  ; BufferLoad(srv,index,wot)
  %1213 = extractvalue %dx.types.ResRet.f32 %1212, 0
  %1214 = add i32 %1206, 16
  %1215 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1214, i32 undef)  ; BufferLoad(srv,index,wot)
  %1216 = extractvalue %dx.types.ResRet.f32 %1215, 0
  %1217 = extractvalue %dx.types.ResRet.f32 %1215, 1
  %1218 = extractvalue %dx.types.ResRet.f32 %1215, 2
  %1219 = add i32 %1206, 28
  %1220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1219, i32 undef)  ; BufferLoad(srv,index,wot)
  %1221 = extractvalue %dx.types.ResRet.i32 %1220, 0
  %1222 = add i32 %1206, 32
  %1223 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1222, i32 undef)  ; BufferLoad(srv,index,wot)
  %1224 = extractvalue %dx.types.ResRet.f32 %1223, 0
  %1225 = extractvalue %dx.types.ResRet.f32 %1223, 1
  %1226 = extractvalue %dx.types.ResRet.f32 %1223, 2
  %1227 = add i32 %1206, 44
  %1228 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1227, i32 undef)  ; BufferLoad(srv,index,wot)
  %1229 = extractvalue %dx.types.ResRet.f32 %1228, 0
  %1230 = add i32 %1206, 48
  %1231 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1230, i32 undef)  ; BufferLoad(srv,index,wot)
  %1232 = extractvalue %dx.types.ResRet.f32 %1231, 0
  %1233 = extractvalue %dx.types.ResRet.f32 %1231, 1
  %1234 = extractvalue %dx.types.ResRet.f32 %1231, 2
  %1235 = extractvalue %dx.types.ResRet.f32 %1231, 3
  %1236 = add i32 %1206, 64
  %1237 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1236, i32 undef)  ; BufferLoad(srv,index,wot)
  %1238 = extractvalue %dx.types.ResRet.f32 %1237, 0
  %1239 = extractvalue %dx.types.ResRet.f32 %1237, 1
  %1240 = extractvalue %dx.types.ResRet.f32 %1237, 2
  %1241 = extractvalue %dx.types.ResRet.f32 %1237, 3
  %1242 = add i32 %1206, 80
  %1243 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1242, i32 undef)  ; BufferLoad(srv,index,wot)
  %1244 = extractvalue %dx.types.ResRet.f32 %1243, 1
  %1245 = extractvalue %dx.types.ResRet.f32 %1243, 2
  %1246 = add i32 %1206, 92
  %1247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1246, i32 undef)  ; BufferLoad(srv,index,wot)
  %1248 = extractvalue %dx.types.ResRet.i32 %1247, 0
  %1249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %1250 = extractvalue %dx.types.CBufRet.f32 %1249, 2
  %1251 = lshr i32 %1221, 16
  %1252 = and i32 %1251, 255
  %1253 = uitofp i32 %1252 to float
  %1254 = fmul fast float %1253, 0x3F70101020000000
  %1255 = fmul fast float %1254, %1208
  %1256 = fmul fast float %1254, %1209
  %1257 = fmul fast float %1254, %1210
  %1258 = fmul fast float %1250, %1244
  %1259 = call float @dx.op.dot3.f32(i32 55, float %1255, float %1256, float %1257, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1260 = select i1 %95, float %1258, float %1255
  %1261 = select i1 %95, float %1259, float %1256
  %1262 = select i1 %95, float %1245, float %1257
  %1263 = and i32 %1248, 65535
  %1264 = uitofp i32 %1263 to float
  %1265 = lshr i32 %1248, 16
  %1266 = uitofp i32 %1265 to float
  %1267 = and i32 %1221, 65535
  %1268 = and i32 %1221, 50331648
  %1269 = icmp eq i32 %1268, 33554432
  %1270 = call float @dx.op.dot3.f32(i32 55, float %1224, float %1225, float %1226, float %1224, float %1225, float %1226)  ; Dot3(ax,ay,az,bx,by,bz)
  %1271 = fsub fast float %85, %1232
  %1272 = fsub fast float %86, %1233
  %1273 = fsub fast float %87, %1234
  %1274 = call float @dx.op.dot3.f32(i32 55, float %1271, float %1272, float %1273, float %1224, float %1225, float %1226)  ; Dot3(ax,ay,az,bx,by,bz)
  %1275 = fdiv fast float %1274, %1270
  %1276 = call float @dx.op.binary.f32(i32 35, float %1275, float -1.000000e+00)  ; FMax(a,b)
  %1277 = call float @dx.op.binary.f32(i32 36, float %1276, float 1.000000e+00)  ; FMin(a,b)
  %1278 = fmul fast float %1277, %1224
  %1279 = fmul fast float %1277, %1225
  %1280 = fmul fast float %1277, %1226
  %1281 = fadd fast float %1278, %1232
  %1282 = fadd fast float %1279, %1233
  %1283 = fadd fast float %1280, %1234
  %1284 = fsub fast float %1281, %85
  %1285 = fsub fast float %1282, %86
  %1286 = fsub fast float %1283, %87
  %1287 = call float @dx.op.dot3.f32(i32 55, float %1284, float %1285, float %1286, float %1284, float %1285, float %1286)  ; Dot3(ax,ay,az,bx,by,bz)
  %1288 = call float @dx.op.unary.f32(i32 24, float %1287)  ; Sqrt(value)
  %1289 = fdiv fast float 1.000000e+00, %1288
  %1290 = fmul fast float %1284, %1289
  %1291 = fmul fast float %1285, %1289
  %1292 = fmul fast float %1286, %1289
  %1293 = fadd fast float %1288, %1213
  %1294 = fdiv fast float 1.000000e+00, %1293
  %1295 = fmul float %1229, %1294
  %1296 = fmul float %1295, %1295
  %1297 = call float @dx.op.unary.f32(i32 7, float %1296)  ; Saturate(value)
  br i1 %1269, label %1298, label %1322, !dx.controlflow.hints !98

; <label>:1298                                    ; preds = %1203
  %1299 = fmul fast float %1240, %1216
  %1300 = fmul fast float %1240, %1217
  %1301 = fmul fast float %1240, %1218
  %1302 = fsub fast float %1299, %85
  %1303 = fadd fast float %1302, %1281
  %1304 = fsub fast float %1300, %86
  %1305 = fadd fast float %1304, %1282
  %1306 = fsub fast float %1301, %87
  %1307 = fadd fast float %1306, %1283
  %1308 = call float @dx.op.dot3.f32(i32 55, float %1303, float %1305, float %1307, float %1303, float %1305, float %1307)  ; Dot3(ax,ay,az,bx,by,bz)
  %1309 = call float @dx.op.unary.f32(i32 25, float %1308)  ; Rsqrt(value)
  %1310 = fmul fast float %1309, %1303
  %1311 = fmul fast float %1309, %1305
  %1312 = fmul fast float %1309, %1307
  %1313 = fsub fast float %85, %1281
  %1314 = fsub fast float %86, %1282
  %1315 = fsub fast float %87, %1283
  %1316 = fsub fast float -0.000000e+00, %1313
  %1317 = fsub fast float -0.000000e+00, %1314
  %1318 = fsub fast float -0.000000e+00, %1315
  %1319 = call float @dx.op.dot3.f32(i32 55, float %1316, float %1317, float %1318, float %1216, float %1217, float %1218)  ; Dot3(ax,ay,az,bx,by,bz)
  %1320 = fcmp fast ogt float %1319, 0.000000e+00
  %1321 = uitofp i1 %1320 to float
  br label %1322

; <label>:1322                                    ; preds = %1298, %1203
  %1323 = phi float [ %1321, %1298 ], [ 1.000000e+00, %1203 ]
  %1324 = phi float [ %1310, %1298 ], [ %1290, %1203 ]
  %1325 = phi float [ %1311, %1298 ], [ %1291, %1203 ]
  %1326 = phi float [ %1312, %1298 ], [ %1292, %1203 ]
  %1327 = call float @dx.op.dot3.f32(i32 55, float %1216, float %1217, float %1218, float %1324, float %1325, float %1326)  ; Dot3(ax,ay,az,bx,by,bz)
  %1328 = fmul fast float %1327, %1327
  %1329 = call float @dx.op.unary.f32(i32 7, float %1328)  ; Saturate(value)
  %1330 = fsub fast float 1.000000e+00, %1329
  %1331 = fmul fast float %1330, 5.000000e-01
  %1332 = fcmp fast ogt float %1327, 0.000000e+00
  %1333 = fsub fast float 1.000000e+00, %1331
  %1334 = select i1 %1332, float %1331, float %1333
  %1335 = fmul fast float %1334, %1266
  %1336 = fadd fast float %1335, %1264
  %1337 = fmul fast float %1336, 0x3EF0001000000000
  %1338 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %31, float %1337, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1339 = extractvalue %dx.types.ResRet.f32 %1338, 0
  %1340 = fmul fast float %1327, %1238
  %1341 = fadd fast float %1340, %1239
  %1342 = call float @dx.op.unary.f32(i32 7, float %1341)  ; Saturate(value)
  %1343 = select i1 %1269, float 1.000000e+00, float %1342
  %1344 = select i1 %1269, float %1342, float 1.000000e+00
  %1345 = fmul fast float %1288, %1235
  %1346 = fsub fast float 1.000000e+00, %1345
  %1347 = fmul fast float %1346, %1241
  %1348 = call float @dx.op.unary.f32(i32 7, float %1347)  ; Saturate(value)
  %1349 = fmul fast float %1348, %1344
  %1350 = fmul fast float %1349, 2.000000e+00
  %1351 = fsub fast float 3.000000e+00, %1350
  %1352 = fmul fast float %1339, %1323
  %1353 = fmul fast float %1349, %1349
  %1354 = fmul fast float %1353, %1352
  %1355 = fmul fast float %1354, %1351
  %1356 = call float @dx.op.binary.f32(i32 36, float %1355, float %1355)  ; FMin(a,b)
  %1357 = call float @dx.op.binary.f32(i32 36, float %1355, float %1356)  ; FMin(a,b)
  %1358 = fcmp fast ogt float %1357, 0.000000e+00
  br i1 %1358, label %1359, label %1548, !dx.controlflow.hints !99

; <label>:1359                                    ; preds = %1322
  %1360 = fmul fast float %1290, %78
  %1361 = fmul fast float %1291, %78
  %1362 = fmul fast float %1292, %78
  %1363 = fadd fast float %1360, %85
  %1364 = fadd fast float %1361, %86
  %1365 = fadd fast float %1362, %87
  %1366 = icmp eq i32 %1267, 255
  br i1 %1366, label %1442, label %1367, !dx.controlflow.hints !100

; <label>:1367                                    ; preds = %1359
  %1368 = mul nuw nsw i32 %1267, 176
  %1369 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %1368, i32 undef)  ; BufferLoad(srv,index,wot)
  %1370 = extractvalue %dx.types.ResRet.f32 %1369, 0
  %1371 = extractvalue %dx.types.ResRet.f32 %1369, 1
  %1372 = extractvalue %dx.types.ResRet.f32 %1369, 2
  %1373 = extractvalue %dx.types.ResRet.f32 %1369, 3
  %1374 = add nuw nsw i32 %1368, 16
  %1375 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %1374, i32 undef)  ; BufferLoad(srv,index,wot)
  %1376 = extractvalue %dx.types.ResRet.f32 %1375, 0
  %1377 = extractvalue %dx.types.ResRet.f32 %1375, 1
  %1378 = add nuw nsw i32 %1368, 32
  %1379 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %1378, i32 undef)  ; BufferLoad(srv,index,wot)
  %1380 = extractvalue %dx.types.ResRet.f32 %1379, 0
  %1381 = add nuw nsw i32 %1368, 48
  %1382 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %1381, i32 undef)  ; BufferLoad(srv,index,wot)
  %1383 = extractvalue %dx.types.ResRet.f32 %1382, 0
  %1384 = extractvalue %dx.types.ResRet.f32 %1382, 1
  %1385 = extractvalue %dx.types.ResRet.f32 %1382, 2
  %1386 = extractvalue %dx.types.ResRet.f32 %1382, 3
  %1387 = add nuw nsw i32 %1368, 64
  %1388 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %1387, i32 undef)  ; BufferLoad(srv,index,wot)
  %1389 = extractvalue %dx.types.ResRet.f32 %1388, 0
  %1390 = extractvalue %dx.types.ResRet.f32 %1388, 1
  %1391 = extractvalue %dx.types.ResRet.f32 %1388, 2
  %1392 = extractvalue %dx.types.ResRet.f32 %1388, 3
  %1393 = add nuw nsw i32 %1368, 80
  %1394 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %1393, i32 undef)  ; BufferLoad(srv,index,wot)
  %1395 = extractvalue %dx.types.ResRet.f32 %1394, 0
  %1396 = extractvalue %dx.types.ResRet.f32 %1394, 1
  %1397 = extractvalue %dx.types.ResRet.f32 %1394, 2
  %1398 = extractvalue %dx.types.ResRet.f32 %1394, 3
  %1399 = add nuw nsw i32 %1368, 96
  %1400 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %1399, i32 undef)  ; BufferLoad(srv,index,wot)
  %1401 = extractvalue %dx.types.ResRet.f32 %1400, 0
  %1402 = extractvalue %dx.types.ResRet.f32 %1400, 1
  %1403 = extractvalue %dx.types.ResRet.f32 %1400, 2
  %1404 = extractvalue %dx.types.ResRet.f32 %1400, 3
  %1405 = bitcast float %1377 to i32
  %1406 = fmul fast float %1383, %1363
  %1407 = call float @dx.op.tertiary.f32(i32 46, float %1364, float %1389, float %1406)  ; FMad(a,b,c)
  %1408 = call float @dx.op.tertiary.f32(i32 46, float %1365, float %1395, float %1407)  ; FMad(a,b,c)
  %1409 = fadd fast float %1408, %1401
  %1410 = fmul fast float %1384, %1363
  %1411 = call float @dx.op.tertiary.f32(i32 46, float %1364, float %1390, float %1410)  ; FMad(a,b,c)
  %1412 = call float @dx.op.tertiary.f32(i32 46, float %1365, float %1396, float %1411)  ; FMad(a,b,c)
  %1413 = fadd fast float %1412, %1402
  %1414 = fmul fast float %1385, %1363
  %1415 = call float @dx.op.tertiary.f32(i32 46, float %1364, float %1391, float %1414)  ; FMad(a,b,c)
  %1416 = call float @dx.op.tertiary.f32(i32 46, float %1365, float %1397, float %1415)  ; FMad(a,b,c)
  %1417 = fadd fast float %1416, %1403
  %1418 = fmul fast float %1386, %1363
  %1419 = call float @dx.op.tertiary.f32(i32 46, float %1364, float %1392, float %1418)  ; FMad(a,b,c)
  %1420 = call float @dx.op.tertiary.f32(i32 46, float %1365, float %1398, float %1419)  ; FMad(a,b,c)
  %1421 = fadd fast float %1420, %1404
  %1422 = fdiv fast float %1409, %1421
  %1423 = fdiv fast float %1413, %1421
  %1424 = fdiv fast float %1417, %1421
  %1425 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %1424)  ; FMax(a,b)
  %1426 = fmul fast float %1422, %1376
  %1427 = fmul fast float %1423, %1376
  %1428 = call float @dx.op.binary.f32(i32 35, float %1426, float %1372)  ; FMax(a,b)
  %1429 = call float @dx.op.binary.f32(i32 35, float %1427, float %1372)  ; FMax(a,b)
  %1430 = call float @dx.op.binary.f32(i32 36, float %1428, float %1373)  ; FMin(a,b)
  %1431 = call float @dx.op.binary.f32(i32 36, float %1429, float %1373)  ; FMin(a,b)
  %1432 = fadd fast float %1430, %1370
  %1433 = fadd fast float %1431, %1371
  %1434 = uitofp i32 %1405 to float
  %1435 = fadd fast float %1425, %1380
  %1436 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %12, %dx.types.Handle %33, float %1432, float %1433, float %1434, float undef, i32 0, i32 0, i32 undef, float %1435)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1437 = extractvalue %dx.types.ResRet.f32 %1436, 0
  %1438 = fadd fast float %1437, -1.000000e+00
  %1439 = fmul fast float %1438, %1343
  %1440 = fadd fast float %1439, 1.000000e+00
  %1441 = fmul fast float %1440, %1355
  br label %1442

; <label>:1442                                    ; preds = %1367, %1359
  %1443 = phi float [ %1441, %1367 ], [ %1355, %1359 ]
  %1444 = call float @dx.op.binary.f32(i32 36, float %1443, float %1443)  ; FMin(a,b)
  %1445 = call float @dx.op.binary.f32(i32 36, float %1443, float %1444)  ; FMin(a,b)
  %1446 = fcmp fast ogt float %1445, 0.000000e+00
  br i1 %1446, label %1447, label %1548, !dx.controlflow.hints !101

; <label>:1447                                    ; preds = %1442
  %1448 = extractvalue %dx.types.CBufRet.f32 %1249, 1
  %1449 = fmul fast float %1443, %1297
  %1450 = call float @dx.op.binary.f32(i32 36, float %1449, float %1448)  ; FMin(a,b)
  %1451 = icmp eq i32 %180, 0
  br i1 %1451, label %1528, label %1452, !dx.controlflow.hints !91

; <label>:1452                                    ; preds = %1447
  %1453 = fsub fast float %1234, %179
  %1454 = fcmp fast ogt float %1453, 0.000000e+00
  %1455 = fsub fast float %87, %179
  %1456 = fcmp fast ogt float %1455, 0.000000e+00
  %1457 = xor i1 %1456, %1454
  %1458 = fsub fast float %179, %1234
  %1459 = fmul fast float %1458, 2.000000e+00
  %1460 = fadd fast float %1459, %1234
  %1461 = select i1 %1457, float %1234, float %1460
  %1462 = fsub fast float %1232, %85
  %1463 = fsub fast float %1233, %86
  %1464 = fsub fast float %1461, %87
  %1465 = call float @dx.op.dot3.f32(i32 55, float %1462, float %1463, float %1464, float %1462, float %1463, float %1464)  ; Dot3(ax,ay,az,bx,by,bz)
  %1466 = call float @dx.op.unary.f32(i32 25, float %1465)  ; Rsqrt(value)
  %1467 = fmul fast float %1466, %1462
  %1468 = fmul fast float %1466, %1463
  %1469 = fmul fast float %1466, %1464
  %1470 = fsub fast float %179, %87
  %1471 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %1470)  ; Dot3(ax,ay,az,bx,by,bz)
  %1472 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1467, float %1468, float %1469)  ; Dot3(ax,ay,az,bx,by,bz)
  %1473 = fdiv fast float 1.000000e+00, %1472
  %1474 = fmul fast float %1473, %1471
  %1475 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %1455, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1476 = fcmp fast ogt float %1475, 0.000000e+00
  %1477 = fcmp fast olt float %1475, 0.000000e+00
  %1478 = zext i1 %1476 to i32
  %1479 = zext i1 %1477 to i32
  %1480 = sub nsw i32 %1478, %1479
  %1481 = sitofp i32 %1480 to float
  %1482 = fsub fast float %1461, %179
  %1483 = call float @dx.op.dot3.f32(i32 55, float %1462, float %1463, float %1482, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1484 = fcmp fast ogt float %1483, 0.000000e+00
  %1485 = fcmp fast olt float %1483, 0.000000e+00
  %1486 = zext i1 %1484 to i32
  %1487 = zext i1 %1485 to i32
  %1488 = sub nsw i32 %1486, %1487
  %1489 = sitofp i32 %1488 to float
  %1490 = fcmp fast une float %1481, %1489
  br i1 %1490, label %1491, label %1501, !dx.controlflow.hints !92

; <label>:1491                                    ; preds = %1452
  %1492 = fmul fast float %1474, %1469
  %1493 = fmul fast float %1474, %1468
  %1494 = fmul fast float %1474, %1467
  %1495 = fmul fast float %1494, %1494
  %1496 = fmul fast float %1493, %1493
  %1497 = fadd fast float %1495, %1496
  %1498 = fmul fast float %1492, %1492
  %1499 = fadd fast float %1497, %1498
  %1500 = call float @dx.op.unary.f32(i32 24, float %1499)  ; Sqrt(value)
  br label %1511

; <label>:1501                                    ; preds = %1452
  %1502 = icmp slt i32 %1480, 0
  br i1 %1502, label %1503, label %1511, !dx.controlflow.hints !93

; <label>:1503                                    ; preds = %1501
  %1504 = fsub fast float %87, %1461
  %1505 = fmul fast float %1271, %1271
  %1506 = fmul fast float %1272, %1272
  %1507 = fadd fast float %1505, %1506
  %1508 = fmul fast float %1504, %1504
  %1509 = fadd fast float %1507, %1508
  %1510 = call float @dx.op.unary.f32(i32 24, float %1509)  ; Sqrt(value)
  br label %1511

; <label>:1511                                    ; preds = %1503, %1501, %1491
  %1512 = phi float [ %1500, %1491 ], [ %1510, %1503 ], [ 0.000000e+00, %1501 ]
  %1513 = and i1 %1456, %1454
  %1514 = fsub fast float -0.000000e+00, %1512
  %1515 = select i1 %1513, float -0.000000e+00, float %1514
  %1516 = fmul fast float %176, %1515
  %1517 = fmul fast float %177, %1515
  %1518 = fmul fast float %178, %1515
  %1519 = call float @dx.op.unary.f32(i32 21, float %1516)  ; Exp(value)
  %1520 = call float @dx.op.unary.f32(i32 21, float %1517)  ; Exp(value)
  %1521 = call float @dx.op.unary.f32(i32 21, float %1518)  ; Exp(value)
  %1522 = call float @dx.op.unary.f32(i32 7, float %1519)  ; Saturate(value)
  %1523 = call float @dx.op.unary.f32(i32 7, float %1520)  ; Saturate(value)
  %1524 = call float @dx.op.unary.f32(i32 7, float %1521)  ; Saturate(value)
  %1525 = fmul fast float %1522, %1260
  %1526 = fmul fast float %1523, %1261
  %1527 = fmul fast float %1524, %1262
  br label %1528

; <label>:1528                                    ; preds = %1511, %1447
  %1529 = phi float [ %1525, %1511 ], [ %1260, %1447 ]
  %1530 = phi float [ %1526, %1511 ], [ %1261, %1447 ]
  %1531 = phi float [ %1527, %1511 ], [ %1262, %1447 ]
  %1532 = fmul fast float %1529, %1450
  %1533 = fmul fast float %1530, %1450
  %1534 = fmul fast float %1531, %1450
  br i1 %80, label %1535, label %1541, !dx.controlflow.hints !94

; <label>:1535                                    ; preds = %1528
  %1536 = call float @dx.op.dot3.f32(i32 55, float %1290, float %1291, float %1292, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %1537 = call float @dx.op.unary.f32(i32 7, float %1536)  ; Saturate(value)
  %1538 = fmul fast float %1537, %1532
  %1539 = fmul fast float %1537, %1533
  %1540 = fmul fast float %1537, %1534
  br label %1541

; <label>:1541                                    ; preds = %1535, %1528
  %1542 = phi float [ %1538, %1535 ], [ %1532, %1528 ]
  %1543 = phi float [ %1539, %1535 ], [ %1533, %1528 ]
  %1544 = phi float [ %1540, %1535 ], [ %1534, %1528 ]
  %1545 = fadd fast float %1542, %1183
  %1546 = fadd fast float %1543, %1184
  %1547 = fadd fast float %1544, %1185
  br label %1548

; <label>:1548                                    ; preds = %1541, %1442, %1322
  %1549 = phi float [ %1545, %1541 ], [ %1183, %1442 ], [ %1183, %1322 ]
  %1550 = phi float [ %1546, %1541 ], [ %1184, %1442 ], [ %1184, %1322 ]
  %1551 = phi float [ %1547, %1541 ], [ %1185, %1442 ], [ %1185, %1322 ]
  %1552 = add nuw i32 %1182, 1
  %1553 = icmp eq i32 %1552, %1177
  br i1 %1553, label %1554, label %1181, !llvm.loop !102

; <label>:1554                                    ; preds = %1548
  br label %1555

; <label>:1555                                    ; preds = %1554, %1175, %1115
  %1556 = phi float [ %1116, %1115 ], [ %1116, %1175 ], [ %1549, %1554 ]
  %1557 = phi float [ %1117, %1115 ], [ %1117, %1175 ], [ %1550, %1554 ]
  %1558 = phi float [ %1118, %1115 ], [ %1118, %1175 ], [ %1551, %1554 ]
  %1559 = call float @dx.op.dot3.f32(i32 55, float %1556, float %1557, float %1558, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1560 = select i1 %95, float %1557, float %1559
  %1561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1562 = extractvalue %dx.types.CBufRet.f32 %1561, 0
  %1563 = extractvalue %dx.types.CBufRet.f32 %1561, 1
  %1564 = extractvalue %dx.types.CBufRet.f32 %1561, 2
  %1565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1566 = extractvalue %dx.types.CBufRet.f32 %1565, 0
  %1567 = extractvalue %dx.types.CBufRet.f32 %1565, 1
  %1568 = extractvalue %dx.types.CBufRet.f32 %1565, 2
  %1569 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1570 = extractvalue %dx.types.CBufRet.i32 %1569, 1
  %1571 = fsub fast float %60, %1562
  %1572 = fsub fast float %61, %1563
  %1573 = fsub fast float %62, %1564
  %1574 = fmul fast float %1571, %1566
  %1575 = fmul fast float %1572, %1567
  %1576 = fmul fast float %1573, %1568
  %1577 = fcmp fast ole float %1574, 0.000000e+00
  %1578 = fcmp fast ole float %1575, 0.000000e+00
  %1579 = fcmp fast ole float %1576, 0.000000e+00
  %1580 = or i1 %1577, %1578
  %1581 = or i1 %1579, %1580
  %1582 = fcmp fast oge float %1574, 1.000000e+00
  %1583 = fcmp fast oge float %1575, 1.000000e+00
  %1584 = fcmp fast oge float %1576, 1.000000e+00
  %1585 = or i1 %1582, %1583
  %1586 = or i1 %1584, %1585
  %1587 = or i1 %1581, %1586
  br i1 %1587, label %2303, label %1588, !dx.controlflow.hints !103

; <label>:1588                                    ; preds = %1555
  %1589 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %1590 = extractvalue %dx.types.CBufRet.i32 %1589, 0
  %1591 = fptosi float %1571 to i32
  %1592 = fptosi float %1572 to i32
  %1593 = fptosi float %1573 to i32
  %1594 = and i32 %1570, 31
  %1595 = ashr i32 %1591, %1594
  %1596 = ashr i32 %1592, %1594
  %1597 = ashr i32 %1593, %1594
  %1598 = mul i32 %1590, %1596
  %1599 = add nsw i32 %1598, %1595
  %1600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1599, i32 0)  ; BufferLoad(srv,index,wot)
  %1601 = extractvalue %dx.types.ResRet.i32 %1600, 0
  %1602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1599, i32 4)  ; BufferLoad(srv,index,wot)
  %1603 = extractvalue %dx.types.ResRet.i32 %1602, 0
  %1604 = icmp slt i32 %1597, %1601
  %1605 = icmp sgt i32 %1597, %1603
  %1606 = or i1 %1604, %1605
  br i1 %1606, label %2303, label %1607, !dx.controlflow.hints !104

; <label>:1607                                    ; preds = %1588
  %1608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1599, i32 8)  ; BufferLoad(srv,index,wot)
  %1609 = extractvalue %dx.types.ResRet.i32 %1608, 0
  %1610 = sub i32 %1597, %1601
  %1611 = add nsw i32 %1610, %1609
  %1612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1611, i32 undef)  ; BufferLoad(srv,index,wot)
  %1613 = extractvalue %dx.types.ResRet.i32 %1612, 0
  %1614 = icmp eq i32 %1613, -1
  br i1 %1614, label %2303, label %1615, !dx.controlflow.hints !105

; <label>:1615                                    ; preds = %1607
  %1616 = getelementptr inbounds [8 x i32], [8 x i32]* %43, i32 0, i32 0
  store i32 -1, i32* %1616, align 4, !tbaa !66, !noalias !106
  %1617 = getelementptr inbounds [8 x i32], [8 x i32]* %43, i32 0, i32 1
  store i32 -1, i32* %1617, align 4, !tbaa !66, !noalias !106
  %1618 = getelementptr inbounds [8 x i32], [8 x i32]* %43, i32 0, i32 2
  store i32 -1, i32* %1618, align 4, !tbaa !66, !noalias !106
  %1619 = getelementptr inbounds [8 x i32], [8 x i32]* %43, i32 0, i32 3
  store i32 -1, i32* %1619, align 4, !tbaa !66, !noalias !106
  %1620 = getelementptr inbounds [8 x i32], [8 x i32]* %43, i32 0, i32 4
  store i32 -1, i32* %1620, align 4, !tbaa !66, !noalias !106
  %1621 = getelementptr inbounds [8 x i32], [8 x i32]* %43, i32 0, i32 5
  store i32 -1, i32* %1621, align 4, !tbaa !66, !noalias !106
  %1622 = getelementptr inbounds [8 x i32], [8 x i32]* %43, i32 0, i32 6
  store i32 -1, i32* %1622, align 4, !tbaa !66, !noalias !106
  %1623 = getelementptr inbounds [8 x i32], [8 x i32]* %43, i32 0, i32 7
  store i32 -1, i32* %1623, align 4, !tbaa !66, !noalias !106
  br label %1624

; <label>:1624                                    ; preds = %1728, %1615
  %1625 = phi i32 [ -1, %1615 ], [ %1725, %1728 ]
  %1626 = phi i32 [ -1, %1615 ], [ %1720, %1728 ]
  %1627 = phi i32 [ -1, %1615 ], [ %1713, %1728 ]
  %1628 = phi i32 [ -1, %1615 ], [ %1708, %1728 ]
  %1629 = phi i32 [ -1, %1615 ], [ %1699, %1728 ]
  %1630 = phi i32 [ -1, %1615 ], [ %1694, %1728 ]
  %1631 = phi i32 [ -1, %1615 ], [ %1686, %1728 ]
  %1632 = phi i32 [ -1, %1615 ], [ %1679, %1728 ]
  %1633 = phi i32 [ %1613, %1615 ], [ %1748, %1728 ]
  %1634 = phi i32 [ %1570, %1615 ], [ %1635, %1728 ]
  %1635 = add nsw i32 %1634, -2
  %1636 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1633, i32 undef)  ; BufferLoad(srv,index,wot)
  %1637 = extractvalue %dx.types.ResRet.i32 %1636, 0
  %1638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1633, i32 undef)  ; BufferLoad(srv,index,wot)
  %1639 = extractvalue %dx.types.ResRet.i32 %1638, 0
  %1640 = and i32 %1637, 31
  %1641 = shl i32 1, %1640
  %1642 = add i32 %1641, 1
  %1643 = and i32 %1635, 31
  %1644 = ashr i32 %1591, %1643
  %1645 = ashr i32 %1592, %1643
  %1646 = ashr i32 %1593, %1643
  %1647 = and i32 %1644, 3
  %1648 = and i32 %1645, 3
  %1649 = and i32 %1646, 3
  br label %1650

; <label>:1650                                    ; preds = %1650, %1624
  %1651 = phi i32 [ %1625, %1624 ], [ %1725, %1650 ]
  %1652 = phi i32 [ %1626, %1624 ], [ %1720, %1650 ]
  %1653 = phi i32 [ %1627, %1624 ], [ %1713, %1650 ]
  %1654 = phi i32 [ %1628, %1624 ], [ %1708, %1650 ]
  %1655 = phi i32 [ %1629, %1624 ], [ %1699, %1650 ]
  %1656 = phi i32 [ %1630, %1624 ], [ %1694, %1650 ]
  %1657 = phi i32 [ %1631, %1624 ], [ %1686, %1650 ]
  %1658 = phi i32 [ %1632, %1624 ], [ %1679, %1650 ]
  %1659 = phi i32 [ 0, %1624 ], [ %1726, %1650 ]
  %1660 = sub i32 2, %1659
  %1661 = and i32 %1660, 31
  %1662 = lshr i32 %1647, %1661
  %1663 = lshr i32 %1648, %1661
  %1664 = lshr i32 %1649, %1661
  %1665 = sub i32 %1637, %1659
  %1666 = and i32 %1665, 31
  %1667 = shl i32 %1662, %1666
  %1668 = shl i32 %1663, %1666
  %1669 = shl i32 %1664, %1666
  %1670 = shl i32 1, %1666
  %1671 = mul i32 %1669, %1642
  %1672 = add i32 %1671, %1668
  %1673 = mul i32 %1672, %1642
  %1674 = add i32 %1667, %1639
  %1675 = add i32 %1674, %1673
  %1676 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1675, i32 undef)  ; BufferLoad(srv,index,wot)
  %1677 = extractvalue %dx.types.ResRet.i32 %1676, 0
  %1678 = icmp ne i32 %1677, -1
  %1679 = select i1 %1678, i32 %1677, i32 %1658
  store i32 %1679, i32* %1616, align 4, !tbaa !66, !noalias !106
  %1680 = add i32 %1670, %1639
  %1681 = add i32 %1680, %1667
  %1682 = add i32 %1681, %1673
  %1683 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1682, i32 undef)  ; BufferLoad(srv,index,wot)
  %1684 = extractvalue %dx.types.ResRet.i32 %1683, 0
  %1685 = icmp ne i32 %1684, -1
  %1686 = select i1 %1685, i32 %1684, i32 %1657
  store i32 %1686, i32* %1617, align 4, !tbaa !66, !noalias !106
  %1687 = add i32 %1668, %1670
  %1688 = add i32 %1687, %1671
  %1689 = mul i32 %1688, %1642
  %1690 = add i32 %1674, %1689
  %1691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1690, i32 undef)  ; BufferLoad(srv,index,wot)
  %1692 = extractvalue %dx.types.ResRet.i32 %1691, 0
  %1693 = icmp ne i32 %1692, -1
  %1694 = select i1 %1693, i32 %1692, i32 %1656
  store i32 %1694, i32* %1618, align 4, !tbaa !66, !noalias !106
  %1695 = add i32 %1681, %1689
  %1696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1695, i32 undef)  ; BufferLoad(srv,index,wot)
  %1697 = extractvalue %dx.types.ResRet.i32 %1696, 0
  %1698 = icmp ne i32 %1697, -1
  %1699 = select i1 %1698, i32 %1697, i32 %1655
  store i32 %1699, i32* %1619, align 4, !tbaa !66, !noalias !106
  %1700 = add i32 %1669, %1670
  %1701 = mul i32 %1700, %1642
  %1702 = add i32 %1701, %1668
  %1703 = mul i32 %1702, %1642
  %1704 = add i32 %1674, %1703
  %1705 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1704, i32 undef)  ; BufferLoad(srv,index,wot)
  %1706 = extractvalue %dx.types.ResRet.i32 %1705, 0
  %1707 = icmp ne i32 %1706, -1
  %1708 = select i1 %1707, i32 %1706, i32 %1654
  store i32 %1708, i32* %1620, align 4, !tbaa !66, !noalias !106
  %1709 = add i32 %1681, %1703
  %1710 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1709, i32 undef)  ; BufferLoad(srv,index,wot)
  %1711 = extractvalue %dx.types.ResRet.i32 %1710, 0
  %1712 = icmp ne i32 %1711, -1
  %1713 = select i1 %1712, i32 %1711, i32 %1653
  store i32 %1713, i32* %1621, align 4, !tbaa !66, !noalias !106
  %1714 = add i32 %1687, %1701
  %1715 = mul i32 %1714, %1642
  %1716 = add i32 %1674, %1715
  %1717 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1716, i32 undef)  ; BufferLoad(srv,index,wot)
  %1718 = extractvalue %dx.types.ResRet.i32 %1717, 0
  %1719 = icmp ne i32 %1718, -1
  %1720 = select i1 %1719, i32 %1718, i32 %1652
  store i32 %1720, i32* %1622, align 4, !tbaa !66, !noalias !106
  %1721 = add i32 %1681, %1715
  %1722 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1721, i32 undef)  ; BufferLoad(srv,index,wot)
  %1723 = extractvalue %dx.types.ResRet.i32 %1722, 0
  %1724 = icmp ne i32 %1723, -1
  %1725 = select i1 %1724, i32 %1723, i32 %1651
  store i32 %1725, i32* %1623, align 4, !tbaa !66, !noalias !106
  %1726 = add i32 %1659, 1
  %1727 = icmp ugt i32 %1726, %1637
  br i1 %1727, label %1728, label %1650

; <label>:1728                                    ; preds = %1650
  %1729 = shl nuw nsw i32 %1649, 4
  %1730 = shl nuw nsw i32 %1648, 2
  %1731 = lshr i32 %1649, 1
  %1732 = and i32 %1729, 16
  %1733 = or i32 %1730, %1647
  %1734 = or i32 %1733, %1732
  %1735 = shl i32 1, %1734
  %1736 = shl nuw nsw i32 %1731, 2
  %1737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1633, i32 %1736)  ; BufferLoad(srv,index,wot)
  %1738 = extractvalue %dx.types.ResRet.i32 %1737, 0
  %1739 = and i32 %1738, %1735
  %1740 = icmp eq i32 %1739, 0
  %1741 = add i32 %1735, -1
  %1742 = and i32 %1738, %1741
  %1743 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1742)  ; Countbits(value)
  %1744 = or i32 %1736, 8
  %1745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1633, i32 %1744)  ; BufferLoad(srv,index,wot)
  %1746 = extractvalue %dx.types.ResRet.i32 %1745, 0
  %1747 = add i32 %1746, %1743
  %1748 = select i1 %1740, i32 -1, i32 %1747
  %1749 = icmp eq i32 %1748, -1
  br i1 %1749, label %1750, label %1624

; <label>:1750                                    ; preds = %1728
  br label %1751

; <label>:1751                                    ; preds = %2037, %1750
  %1752 = phi i32 [ %2039, %2037 ], [ %1679, %1750 ]
  %1753 = phi float [ %2034, %2037 ], [ 0.000000e+00, %1750 ]
  %1754 = phi i32 [ %2035, %2037 ], [ 0, %1750 ]
  %1755 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1752, i32 undef)  ; BufferLoad(srv,index,wot)
  %1756 = extractvalue %dx.types.ResRet.f32 %1755, 0
  %1757 = extractvalue %dx.types.ResRet.f32 %1755, 1
  %1758 = extractvalue %dx.types.ResRet.f32 %1755, 2
  %1759 = extractvalue %dx.types.ResRet.f32 %1755, 3
  %1760 = fsub fast float %60, %1756
  %1761 = fsub fast float %61, %1757
  %1762 = fsub fast float %62, %1758
  %1763 = fmul fast float %1760, %1759
  %1764 = fmul fast float %1761, %1759
  %1765 = fmul fast float %1762, %1759
  %1766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1752, i32 undef)  ; BufferLoad(srv,index,wot)
  %1767 = extractvalue %dx.types.ResRet.i32 %1766, 0
  %1768 = call float @dx.op.unary.f32(i32 6, float %1763)  ; FAbs(value)
  %1769 = call float @dx.op.unary.f32(i32 6, float %1764)  ; FAbs(value)
  %1770 = fsub fast float 1.000000e+00, %1768
  %1771 = fsub fast float 1.000000e+00, %1769
  %1772 = call float @dx.op.unary.f32(i32 7, float %1770)  ; Saturate(value)
  %1773 = call float @dx.op.unary.f32(i32 7, float %1771)  ; Saturate(value)
  %1774 = fmul fast float %1773, %1772
  %1775 = mul i32 %1767, 29
  %1776 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1775, i32 undef)  ; BufferLoad(srv,index,wot)
  %1777 = extractvalue %dx.types.ResRet.f32 %1776, 0
  %1778 = extractvalue %dx.types.ResRet.f32 %1776, 1
  %1779 = extractvalue %dx.types.ResRet.f32 %1776, 2
  %1780 = extractvalue %dx.types.ResRet.f32 %1776, 3
  %1781 = add i32 %1775, 1
  %1782 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1781, i32 undef)  ; BufferLoad(srv,index,wot)
  %1783 = extractvalue %dx.types.ResRet.f32 %1782, 0
  %1784 = extractvalue %dx.types.ResRet.f32 %1782, 1
  %1785 = extractvalue %dx.types.ResRet.f32 %1782, 2
  %1786 = extractvalue %dx.types.ResRet.f32 %1782, 3
  %1787 = add i32 %1775, 2
  %1788 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1787, i32 undef)  ; BufferLoad(srv,index,wot)
  %1789 = extractvalue %dx.types.ResRet.f32 %1788, 0
  %1790 = extractvalue %dx.types.ResRet.f32 %1788, 1
  %1791 = extractvalue %dx.types.ResRet.f32 %1788, 2
  %1792 = extractvalue %dx.types.ResRet.f32 %1788, 3
  %1793 = add i32 %1775, 3
  %1794 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1793, i32 undef)  ; BufferLoad(srv,index,wot)
  %1795 = extractvalue %dx.types.ResRet.f32 %1794, 0
  %1796 = extractvalue %dx.types.ResRet.f32 %1794, 1
  %1797 = extractvalue %dx.types.ResRet.f32 %1794, 2
  %1798 = extractvalue %dx.types.ResRet.f32 %1794, 3
  %1799 = add i32 %1775, 4
  %1800 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1799, i32 undef)  ; BufferLoad(srv,index,wot)
  %1801 = extractvalue %dx.types.ResRet.f32 %1800, 0
  %1802 = extractvalue %dx.types.ResRet.f32 %1800, 1
  %1803 = extractvalue %dx.types.ResRet.f32 %1800, 2
  %1804 = extractvalue %dx.types.ResRet.f32 %1800, 3
  %1805 = add i32 %1775, 5
  %1806 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1805, i32 undef)  ; BufferLoad(srv,index,wot)
  %1807 = extractvalue %dx.types.ResRet.f32 %1806, 0
  %1808 = extractvalue %dx.types.ResRet.f32 %1806, 1
  %1809 = extractvalue %dx.types.ResRet.f32 %1806, 2
  %1810 = extractvalue %dx.types.ResRet.f32 %1806, 3
  %1811 = add i32 %1775, 6
  %1812 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1811, i32 undef)  ; BufferLoad(srv,index,wot)
  %1813 = extractvalue %dx.types.ResRet.f32 %1812, 0
  %1814 = extractvalue %dx.types.ResRet.f32 %1812, 1
  %1815 = extractvalue %dx.types.ResRet.f32 %1812, 2
  %1816 = extractvalue %dx.types.ResRet.f32 %1812, 3
  %1817 = add i32 %1775, 7
  %1818 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1817, i32 undef)  ; BufferLoad(srv,index,wot)
  %1819 = extractvalue %dx.types.ResRet.f32 %1818, 0
  %1820 = extractvalue %dx.types.ResRet.f32 %1818, 1
  %1821 = extractvalue %dx.types.ResRet.f32 %1818, 2
  %1822 = extractvalue %dx.types.ResRet.f32 %1818, 3
  %1823 = fmul fast float %1777, %1763
  %1824 = fmul fast float %1789, %1764
  %1825 = fadd fast float %1824, %1823
  %1826 = fmul fast float %1801, %1765
  %1827 = fadd fast float %1825, %1826
  %1828 = fmul fast float %1778, %1763
  %1829 = fmul fast float %1790, %1764
  %1830 = fadd fast float %1829, %1828
  %1831 = fmul fast float %1802, %1765
  %1832 = fadd fast float %1830, %1831
  %1833 = fmul fast float %1779, %1763
  %1834 = fmul fast float %1791, %1764
  %1835 = fadd fast float %1834, %1833
  %1836 = fmul fast float %1803, %1765
  %1837 = fadd fast float %1835, %1836
  %1838 = fmul fast float %1780, %1763
  %1839 = fmul fast float %1792, %1764
  %1840 = fadd fast float %1839, %1838
  %1841 = fmul fast float %1804, %1765
  %1842 = fadd fast float %1840, %1841
  %1843 = fmul fast float %1783, %1763
  %1844 = fmul fast float %1795, %1764
  %1845 = fadd fast float %1844, %1843
  %1846 = fmul fast float %1807, %1765
  %1847 = fadd fast float %1845, %1846
  %1848 = fmul fast float %1784, %1763
  %1849 = fmul fast float %1796, %1764
  %1850 = fadd fast float %1849, %1848
  %1851 = fmul fast float %1808, %1765
  %1852 = fadd fast float %1850, %1851
  %1853 = fmul fast float %1785, %1763
  %1854 = fmul fast float %1797, %1764
  %1855 = fadd fast float %1854, %1853
  %1856 = fmul fast float %1809, %1765
  %1857 = fadd fast float %1855, %1856
  %1858 = fmul fast float %1786, %1763
  %1859 = fmul fast float %1798, %1764
  %1860 = fadd fast float %1859, %1858
  %1861 = fmul fast float %1810, %1765
  %1862 = fadd fast float %1860, %1861
  %1863 = fadd fast float %1827, %1813
  %1864 = fadd fast float %1832, %1814
  %1865 = fadd fast float %1837, %1815
  %1866 = fadd fast float %1842, %1816
  %1867 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1863)  ; FMax(a,b)
  %1868 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1864)  ; FMax(a,b)
  %1869 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1865)  ; FMax(a,b)
  %1870 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1866)  ; FMax(a,b)
  %1871 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %1863)  ; FMin(a,b)
  %1872 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %1864)  ; FMin(a,b)
  %1873 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %1865)  ; FMin(a,b)
  %1874 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %1866)  ; FMin(a,b)
  %1875 = fmul fast float %1871, 0x3F847AE140000000
  %1876 = fmul fast float %1872, 0x3F847AE140000000
  %1877 = fmul fast float %1873, 0x3F847AE140000000
  %1878 = fmul fast float %1874, 0x3F847AE140000000
  %1879 = fadd fast float %1875, %1867
  %1880 = fadd fast float %1876, %1868
  %1881 = fadd fast float %1877, %1869
  %1882 = fadd fast float %1878, %1870
  %1883 = fadd fast float %1847, %1819
  %1884 = fadd fast float %1852, %1820
  %1885 = fadd fast float %1857, %1821
  %1886 = fadd fast float %1862, %1822
  %1887 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1883)  ; FMax(a,b)
  %1888 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1884)  ; FMax(a,b)
  %1889 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1885)  ; FMax(a,b)
  %1890 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1886)  ; FMax(a,b)
  %1891 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %1883)  ; FMin(a,b)
  %1892 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %1884)  ; FMin(a,b)
  %1893 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %1885)  ; FMin(a,b)
  %1894 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %1886)  ; FMin(a,b)
  %1895 = fmul fast float %1891, 0x3F847AE140000000
  %1896 = fmul fast float %1892, 0x3F847AE140000000
  %1897 = fmul fast float %1893, 0x3F847AE140000000
  %1898 = fmul fast float %1894, 0x3F847AE140000000
  %1899 = fadd fast float %1895, %1887
  %1900 = fadd fast float %1896, %1888
  %1901 = fadd fast float %1897, %1889
  %1902 = fadd fast float %1898, %1890
  br label %1903

; <label>:1903                                    ; preds = %1903, %1751
  %1904 = phi i32 [ 0, %1751 ], [ %1924, %1903 ]
  %1905 = add i32 %1775, 8
  %1906 = shl i32 %1904, 1
  %1907 = add i32 %1905, %1906
  %1908 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1907, i32 undef)  ; BufferLoad(srv,index,wot)
  %1909 = extractvalue %dx.types.ResRet.f32 %1908, 0
  %1910 = extractvalue %dx.types.ResRet.f32 %1908, 1
  %1911 = extractvalue %dx.types.ResRet.f32 %1908, 2
  %1912 = extractvalue %dx.types.ResRet.f32 %1908, 3
  %1913 = add i32 %1775, 9
  %1914 = add i32 %1913, %1906
  %1915 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1914, i32 undef)  ; BufferLoad(srv,index,wot)
  %1916 = extractvalue %dx.types.ResRet.f32 %1915, 0
  %1917 = extractvalue %dx.types.ResRet.f32 %1915, 1
  %1918 = extractvalue %dx.types.ResRet.f32 %1915, 2
  %1919 = extractvalue %dx.types.ResRet.f32 %1915, 3
  %1920 = call float @dx.op.dot4.f32(i32 56, float %1909, float %1910, float %1911, float %1912, float %1879, float %1880, float %1881, float %1882)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1921 = call float @dx.op.dot4.f32(i32 56, float %1916, float %1917, float %1918, float %1919, float %1899, float %1900, float %1901, float %1902)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1922 = fadd fast float %1921, %1920
  %1923 = getelementptr inbounds [8 x float], [8 x float]* %42, i32 0, i32 %1904
  store float %1922, float* %1923, align 4, !tbaa !81, !noalias !106
  %1924 = add nuw nsw i32 %1904, 1
  %1925 = icmp eq i32 %1924, 8
  br i1 %1925, label %1926, label %1903

; <label>:1926                                    ; preds = %1903
  %1927 = call float @dx.op.unary.f32(i32 6, float %1765)  ; FAbs(value)
  %1928 = fsub fast float 1.000000e+00, %1927
  %1929 = call float @dx.op.unary.f32(i32 7, float %1928)  ; Saturate(value)
  %1930 = fmul fast float %1774, %1929
  %1931 = add i32 %1775, 24
  %1932 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1931, i32 undef)  ; BufferLoad(srv,index,wot)
  %1933 = extractvalue %dx.types.ResRet.f32 %1932, 0
  %1934 = extractvalue %dx.types.ResRet.f32 %1932, 1
  %1935 = extractvalue %dx.types.ResRet.f32 %1932, 2
  %1936 = extractvalue %dx.types.ResRet.f32 %1932, 3
  %1937 = add i32 %1775, 25
  %1938 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1937, i32 undef)  ; BufferLoad(srv,index,wot)
  %1939 = extractvalue %dx.types.ResRet.f32 %1938, 0
  %1940 = extractvalue %dx.types.ResRet.f32 %1938, 1
  %1941 = extractvalue %dx.types.ResRet.f32 %1938, 2
  %1942 = extractvalue %dx.types.ResRet.f32 %1938, 3
  %1943 = getelementptr inbounds [8 x float], [8 x float]* %42, i32 0, i32 0
  %1944 = load float, float* %1943, align 4, !tbaa !81, !noalias !106
  %1945 = fadd fast float %1944, %1933
  %1946 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1945)  ; FMax(a,b)
  %1947 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %1945)  ; FMin(a,b)
  %1948 = fmul fast float %1947, 0x3F847AE140000000
  %1949 = fadd fast float %1948, %1946
  store float %1949, float* %1943, align 4, !tbaa !81, !noalias !106
  %1950 = getelementptr inbounds [8 x float], [8 x float]* %42, i32 0, i32 1
  %1951 = load float, float* %1950, align 4, !tbaa !81, !noalias !106
  %1952 = fadd fast float %1951, %1934
  %1953 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1952)  ; FMax(a,b)
  %1954 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %1952)  ; FMin(a,b)
  %1955 = fmul fast float %1954, 0x3F847AE140000000
  %1956 = fadd fast float %1955, %1953
  store float %1956, float* %1950, align 4, !tbaa !81, !noalias !106
  %1957 = getelementptr inbounds [8 x float], [8 x float]* %42, i32 0, i32 2
  %1958 = load float, float* %1957, align 4, !tbaa !81, !noalias !106
  %1959 = fadd fast float %1958, %1935
  %1960 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1959)  ; FMax(a,b)
  %1961 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %1959)  ; FMin(a,b)
  %1962 = fmul fast float %1961, 0x3F847AE140000000
  %1963 = fadd fast float %1962, %1960
  store float %1963, float* %1957, align 4, !tbaa !81, !noalias !106
  %1964 = getelementptr inbounds [8 x float], [8 x float]* %42, i32 0, i32 3
  %1965 = load float, float* %1964, align 4, !tbaa !81, !noalias !106
  %1966 = fadd fast float %1965, %1936
  %1967 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1966)  ; FMax(a,b)
  %1968 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %1966)  ; FMin(a,b)
  %1969 = fmul fast float %1968, 0x3F847AE140000000
  %1970 = fadd fast float %1969, %1967
  store float %1970, float* %1964, align 4, !tbaa !81, !noalias !106
  %1971 = getelementptr inbounds [8 x float], [8 x float]* %42, i32 0, i32 4
  %1972 = load float, float* %1971, align 4, !tbaa !81, !noalias !106
  %1973 = fadd fast float %1972, %1939
  %1974 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1973)  ; FMax(a,b)
  %1975 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %1973)  ; FMin(a,b)
  %1976 = fmul fast float %1975, 0x3F847AE140000000
  %1977 = fadd fast float %1976, %1974
  store float %1977, float* %1971, align 4, !tbaa !81, !noalias !106
  %1978 = getelementptr inbounds [8 x float], [8 x float]* %42, i32 0, i32 5
  %1979 = load float, float* %1978, align 4, !tbaa !81, !noalias !106
  %1980 = fadd fast float %1979, %1940
  %1981 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1980)  ; FMax(a,b)
  %1982 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %1980)  ; FMin(a,b)
  %1983 = fmul fast float %1982, 0x3F847AE140000000
  %1984 = fadd fast float %1983, %1981
  store float %1984, float* %1978, align 4, !tbaa !81, !noalias !106
  %1985 = getelementptr inbounds [8 x float], [8 x float]* %42, i32 0, i32 6
  %1986 = load float, float* %1985, align 4, !tbaa !81, !noalias !106
  %1987 = fadd fast float %1986, %1941
  %1988 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1987)  ; FMax(a,b)
  %1989 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %1987)  ; FMin(a,b)
  %1990 = fmul fast float %1989, 0x3F847AE140000000
  %1991 = fadd fast float %1990, %1988
  store float %1991, float* %1985, align 4, !tbaa !81, !noalias !106
  %1992 = getelementptr inbounds [8 x float], [8 x float]* %42, i32 0, i32 7
  %1993 = load float, float* %1992, align 4, !tbaa !81, !noalias !106
  %1994 = fadd fast float %1993, %1942
  %1995 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1994)  ; FMax(a,b)
  %1996 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %1994)  ; FMin(a,b)
  %1997 = fmul fast float %1996, 0x3F847AE140000000
  %1998 = fadd fast float %1997, %1995
  store float %1998, float* %1992, align 4, !tbaa !81, !noalias !106
  %1999 = add i32 %1775, 26
  %2000 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1999, i32 undef)  ; BufferLoad(srv,index,wot)
  %2001 = extractvalue %dx.types.ResRet.f32 %2000, 0
  %2002 = extractvalue %dx.types.ResRet.f32 %2000, 1
  %2003 = extractvalue %dx.types.ResRet.f32 %2000, 2
  %2004 = extractvalue %dx.types.ResRet.f32 %2000, 3
  %2005 = add i32 %1775, 27
  %2006 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %2005, i32 undef)  ; BufferLoad(srv,index,wot)
  %2007 = extractvalue %dx.types.ResRet.f32 %2006, 0
  %2008 = extractvalue %dx.types.ResRet.f32 %2006, 1
  %2009 = extractvalue %dx.types.ResRet.f32 %2006, 2
  %2010 = extractvalue %dx.types.ResRet.f32 %2006, 3
  %2011 = fmul fast float %1949, %2001
  %2012 = fmul fast float %1956, %2002
  %2013 = fadd fast float %2012, %2011
  %2014 = fmul fast float %1963, %2003
  %2015 = fadd fast float %2013, %2014
  %2016 = fmul fast float %1970, %2004
  %2017 = fadd fast float %2015, %2016
  %2018 = fmul fast float %1977, %2007
  %2019 = fadd fast float %2017, %2018
  %2020 = fmul fast float %1984, %2008
  %2021 = fadd fast float %2019, %2020
  %2022 = fmul fast float %1991, %2009
  %2023 = fadd fast float %2021, %2022
  %2024 = fmul fast float %1998, %2010
  %2025 = fadd fast float %2023, %2024
  %2026 = add i32 %1775, 28
  %2027 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %2026, i32 undef)  ; BufferLoad(srv,index,wot)
  %2028 = extractvalue %dx.types.ResRet.f32 %2027, 0
  %2029 = fadd fast float %2025, %2028
  %2030 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2029)  ; FMax(a,b)
  %2031 = fmul fast float %1930, %2030
  %2032 = call float @dx.op.unary.f32(i32 7, float %2031)  ; Saturate(value)
  %2033 = getelementptr inbounds [8 x float], [8 x float]* %44, i32 0, i32 %1754
  store float %2032, float* %2033, align 4, !tbaa !81, !noalias !106
  %2034 = fadd fast float %2032, %1753
  %2035 = add nuw nsw i32 %1754, 1
  %2036 = icmp eq i32 %2035, 8
  br i1 %2036, label %2040, label %2037

; <label>:2037                                    ; preds = %1926
  %2038 = getelementptr inbounds [8 x i32], [8 x i32]* %43, i32 0, i32 %2035
  %2039 = load i32, i32* %2038, align 4, !tbaa !66, !noalias !106
  br label %1751

; <label>:2040                                    ; preds = %1926
  %2041 = fcmp fast ugt float %2034, 0x3EE4F8B580000000
  br i1 %2041, label %2042, label %2303, !dx.controlflow.hints !112

; <label>:2042                                    ; preds = %2040
  %2043 = fcmp fast ogt float %2034, 0x3EE4F8B580000000
  %2044 = fdiv fast float 1.000000e+00, %2034
  %2045 = select i1 %2043, float %2044, float 1.000000e+00
  %2046 = getelementptr inbounds [8 x float], [8 x float]* %44, i32 0, i32 0
  %2047 = load float, float* %2046, align 4, !tbaa !81, !noalias !106
  %2048 = fmul fast float %2047, %2045
  store float %2048, float* %2046, align 4, !tbaa !81, !noalias !106
  %2049 = getelementptr inbounds [8 x float], [8 x float]* %44, i32 0, i32 1
  %2050 = load float, float* %2049, align 4, !tbaa !81, !noalias !106
  %2051 = fmul fast float %2050, %2045
  store float %2051, float* %2049, align 4, !tbaa !81, !noalias !106
  %2052 = getelementptr inbounds [8 x float], [8 x float]* %44, i32 0, i32 2
  %2053 = load float, float* %2052, align 4, !tbaa !81, !noalias !106
  %2054 = fmul fast float %2053, %2045
  store float %2054, float* %2052, align 4, !tbaa !81, !noalias !106
  %2055 = getelementptr inbounds [8 x float], [8 x float]* %44, i32 0, i32 3
  %2056 = load float, float* %2055, align 4, !tbaa !81, !noalias !106
  %2057 = fmul fast float %2056, %2045
  store float %2057, float* %2055, align 4, !tbaa !81, !noalias !106
  %2058 = getelementptr inbounds [8 x float], [8 x float]* %44, i32 0, i32 4
  %2059 = load float, float* %2058, align 4, !tbaa !81, !noalias !106
  %2060 = fmul fast float %2059, %2045
  store float %2060, float* %2058, align 4, !tbaa !81, !noalias !106
  %2061 = getelementptr inbounds [8 x float], [8 x float]* %44, i32 0, i32 5
  %2062 = load float, float* %2061, align 4, !tbaa !81, !noalias !106
  %2063 = fmul fast float %2062, %2045
  store float %2063, float* %2061, align 4, !tbaa !81, !noalias !106
  %2064 = getelementptr inbounds [8 x float], [8 x float]* %44, i32 0, i32 6
  %2065 = load float, float* %2064, align 4, !tbaa !81, !noalias !106
  %2066 = fmul fast float %2065, %2045
  store float %2066, float* %2064, align 4, !tbaa !81, !noalias !106
  %2067 = getelementptr inbounds [8 x float], [8 x float]* %44, i32 0, i32 7
  %2068 = load float, float* %2067, align 4, !tbaa !81, !noalias !106
  %2069 = fmul fast float %2068, %2045
  store float %2069, float* %2067, align 4, !tbaa !81, !noalias !106
  br label %2070

; <label>:2070                                    ; preds = %2297, %2042
  %2071 = phi float [ %2301, %2297 ], [ %2048, %2042 ]
  %2072 = phi i32 [ %2299, %2297 ], [ %1679, %2042 ]
  %2073 = phi float [ %2273, %2297 ], [ 0.000000e+00, %2042 ]
  %2074 = phi float [ %2271, %2297 ], [ 0.000000e+00, %2042 ]
  %2075 = phi float [ %2269, %2297 ], [ 0.000000e+00, %2042 ]
  %2076 = phi float [ %2266, %2297 ], [ 0.000000e+00, %2042 ]
  %2077 = phi float [ %2264, %2297 ], [ 0.000000e+00, %2042 ]
  %2078 = phi float [ %2261, %2297 ], [ 0.000000e+00, %2042 ]
  %2079 = phi float [ %2259, %2297 ], [ 0.000000e+00, %2042 ]
  %2080 = phi float [ %2257, %2297 ], [ 0.000000e+00, %2042 ]
  %2081 = phi float [ %2254, %2297 ], [ 0.000000e+00, %2042 ]
  %2082 = phi float [ %2294, %2297 ], [ 0.000000e+00, %2042 ]
  %2083 = phi float [ %2292, %2297 ], [ 0.000000e+00, %2042 ]
  %2084 = phi float [ %2290, %2297 ], [ 0.000000e+00, %2042 ]
  %2085 = phi float [ %2287, %2297 ], [ 0.000000e+00, %2042 ]
  %2086 = phi float [ %2285, %2297 ], [ 0.000000e+00, %2042 ]
  %2087 = phi float [ %2282, %2297 ], [ 0.000000e+00, %2042 ]
  %2088 = phi float [ %2280, %2297 ], [ 0.000000e+00, %2042 ]
  %2089 = phi float [ %2278, %2297 ], [ 0.000000e+00, %2042 ]
  %2090 = phi float [ %2275, %2297 ], [ 0.000000e+00, %2042 ]
  %2091 = phi float [ %2252, %2297 ], [ 0.000000e+00, %2042 ]
  %2092 = phi float [ %2250, %2297 ], [ 0.000000e+00, %2042 ]
  %2093 = phi float [ %2248, %2297 ], [ 0.000000e+00, %2042 ]
  %2094 = phi float [ %2244, %2297 ], [ 0.000000e+00, %2042 ]
  %2095 = phi float [ %2242, %2297 ], [ 0.000000e+00, %2042 ]
  %2096 = phi float [ %2238, %2297 ], [ 0.000000e+00, %2042 ]
  %2097 = phi float [ %2236, %2297 ], [ 0.000000e+00, %2042 ]
  %2098 = phi float [ %2234, %2297 ], [ 0.000000e+00, %2042 ]
  %2099 = phi float [ %2230, %2297 ], [ 0.000000e+00, %2042 ]
  %2100 = phi i32 [ %2295, %2297 ], [ 0, %2042 ]
  %2101 = shl i32 %2072, 5
  %2102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2101, i32 undef)  ; BufferLoad(srv,index,wot)
  %2103 = extractvalue %dx.types.ResRet.i32 %2102, 0
  %2104 = extractvalue %dx.types.ResRet.i32 %2102, 1
  %2105 = extractvalue %dx.types.ResRet.i32 %2102, 2
  %2106 = extractvalue %dx.types.ResRet.i32 %2102, 3
  %2107 = or i32 %2101, 16
  %2108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2107, i32 undef)  ; BufferLoad(srv,index,wot)
  %2109 = extractvalue %dx.types.ResRet.i32 %2108, 0
  %2110 = extractvalue %dx.types.ResRet.i32 %2108, 1
  %2111 = extractvalue %dx.types.ResRet.i32 %2108, 2
  %2112 = shl i32 %2103, 4
  %2113 = and i32 %2112, 32752
  %2114 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2113)  ; LegacyF16ToF32(value)
  %2115 = lshr i32 %2103, 7
  %2116 = and i32 %2115, 32752
  %2117 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2116)  ; LegacyF16ToF32(value)
  %2118 = lshr i32 %2103, 22
  %2119 = shl nuw nsw i32 %2118, 5
  %2120 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2119)  ; LegacyF16ToF32(value)
  %2121 = and i32 %2104, 255
  %2122 = uitofp i32 %2121 to float
  %2123 = fmul fast float %2122, 0x3F80204080000000
  %2124 = fadd fast float %2123, -1.000000e+00
  %2125 = lshr i32 %2104, 8
  %2126 = and i32 %2125, 255
  %2127 = uitofp i32 %2126 to float
  %2128 = fmul fast float %2127, 0x3F80204080000000
  %2129 = fadd fast float %2128, -1.000000e+00
  %2130 = lshr i32 %2104, 16
  %2131 = and i32 %2130, 255
  %2132 = uitofp i32 %2131 to float
  %2133 = fmul fast float %2132, 0x3F80204080000000
  %2134 = fadd fast float %2133, -1.000000e+00
  %2135 = lshr i32 %2104, 24
  %2136 = uitofp i32 %2135 to float
  %2137 = fmul fast float %2136, 0x3F80204080000000
  %2138 = fadd fast float %2137, -1.000000e+00
  %2139 = and i32 %2105, 255
  %2140 = uitofp i32 %2139 to float
  %2141 = fmul fast float %2140, 0x3F80204080000000
  %2142 = fadd fast float %2141, -1.000000e+00
  %2143 = lshr i32 %2105, 8
  %2144 = and i32 %2143, 255
  %2145 = uitofp i32 %2144 to float
  %2146 = fmul fast float %2145, 0x3F80204080000000
  %2147 = fadd fast float %2146, -1.000000e+00
  %2148 = lshr i32 %2105, 16
  %2149 = and i32 %2148, 255
  %2150 = uitofp i32 %2149 to float
  %2151 = fmul fast float %2150, 0x3F80204080000000
  %2152 = fadd fast float %2151, -1.000000e+00
  %2153 = lshr i32 %2105, 24
  %2154 = uitofp i32 %2153 to float
  %2155 = fmul fast float %2154, 0x3F80204080000000
  %2156 = fadd fast float %2155, -1.000000e+00
  %2157 = and i32 %2106, 255
  %2158 = uitofp i32 %2157 to float
  %2159 = fmul fast float %2158, 0x3F80204080000000
  %2160 = fadd fast float %2159, -1.000000e+00
  %2161 = lshr i32 %2106, 8
  %2162 = and i32 %2161, 255
  %2163 = uitofp i32 %2162 to float
  %2164 = fmul fast float %2163, 0x3F80204080000000
  %2165 = fadd fast float %2164, -1.000000e+00
  %2166 = lshr i32 %2106, 16
  %2167 = and i32 %2166, 255
  %2168 = uitofp i32 %2167 to float
  %2169 = fmul fast float %2168, 0x3F80204080000000
  %2170 = fadd fast float %2169, -1.000000e+00
  %2171 = lshr i32 %2106, 24
  %2172 = uitofp i32 %2171 to float
  %2173 = fmul fast float %2172, 0x3F80204080000000
  %2174 = fadd fast float %2173, -1.000000e+00
  %2175 = and i32 %2109, 255
  %2176 = uitofp i32 %2175 to float
  %2177 = fmul fast float %2176, 0x3F80204080000000
  %2178 = fadd fast float %2177, -1.000000e+00
  %2179 = lshr i32 %2109, 8
  %2180 = and i32 %2179, 255
  %2181 = uitofp i32 %2180 to float
  %2182 = fmul fast float %2181, 0x3F80204080000000
  %2183 = fadd fast float %2182, -1.000000e+00
  %2184 = lshr i32 %2109, 16
  %2185 = and i32 %2184, 255
  %2186 = uitofp i32 %2185 to float
  %2187 = fmul fast float %2186, 0x3F80204080000000
  %2188 = fadd fast float %2187, -1.000000e+00
  %2189 = lshr i32 %2109, 24
  %2190 = uitofp i32 %2189 to float
  %2191 = fmul fast float %2190, 0x3F80204080000000
  %2192 = fadd fast float %2191, -1.000000e+00
  %2193 = and i32 %2110, 255
  %2194 = uitofp i32 %2193 to float
  %2195 = fmul fast float %2194, 0x3F80204080000000
  %2196 = fadd fast float %2195, -1.000000e+00
  %2197 = lshr i32 %2110, 8
  %2198 = and i32 %2197, 255
  %2199 = uitofp i32 %2198 to float
  %2200 = fmul fast float %2199, 0x3F80204080000000
  %2201 = fadd fast float %2200, -1.000000e+00
  %2202 = lshr i32 %2110, 16
  %2203 = and i32 %2202, 255
  %2204 = uitofp i32 %2203 to float
  %2205 = fmul fast float %2204, 0x3F80204080000000
  %2206 = fadd fast float %2205, -1.000000e+00
  %2207 = lshr i32 %2110, 24
  %2208 = uitofp i32 %2207 to float
  %2209 = fmul fast float %2208, 0x3F80204080000000
  %2210 = fadd fast float %2209, -1.000000e+00
  %2211 = and i32 %2111, 255
  %2212 = uitofp i32 %2211 to float
  %2213 = fmul fast float %2212, 0x3F80204080000000
  %2214 = fadd fast float %2213, -1.000000e+00
  %2215 = lshr i32 %2111, 8
  %2216 = and i32 %2215, 255
  %2217 = uitofp i32 %2216 to float
  %2218 = fmul fast float %2217, 0x3F80204080000000
  %2219 = fadd fast float %2218, -1.000000e+00
  %2220 = lshr i32 %2111, 16
  %2221 = and i32 %2220, 255
  %2222 = uitofp i32 %2221 to float
  %2223 = fmul fast float %2222, 0x3F80204080000000
  %2224 = fadd fast float %2223, -1.000000e+00
  %2225 = lshr i32 %2111, 24
  %2226 = uitofp i32 %2225 to float
  %2227 = fmul fast float %2226, 0x3F80204080000000
  %2228 = fadd fast float %2227, -1.000000e+00
  %2229 = fmul fast float %2114, %2071
  %2230 = fadd fast float %2229, %2099
  %2231 = fmul fast float %2071, 0x3FFBB67AE0000000
  %2232 = fmul fast float %2231, %2114
  %2233 = fmul fast float %2232, %2124
  %2234 = fadd fast float %2233, %2098
  %2235 = fmul fast float %2232, %2129
  %2236 = fadd fast float %2235, %2097
  %2237 = fmul fast float %2232, %2134
  %2238 = fadd fast float %2237, %2096
  %2239 = fmul fast float %2071, 0x3FFEFBDEC0000000
  %2240 = fmul fast float %2239, %2114
  %2241 = fmul fast float %2240, %2138
  %2242 = fadd fast float %2241, %2095
  %2243 = fmul fast float %2240, %2142
  %2244 = fadd fast float %2243, %2094
  %2245 = fmul fast float %2071, 0x4001E377A0000000
  %2246 = fmul fast float %2245, %2114
  %2247 = fmul fast float %2246, %2147
  %2248 = fadd fast float %2247, %2093
  %2249 = fmul fast float %2240, %2152
  %2250 = fadd fast float %2249, %2092
  %2251 = fmul fast float %2240, %2156
  %2252 = fadd fast float %2251, %2091
  %2253 = fmul fast float %2117, %2071
  %2254 = fadd fast float %2253, %2081
  %2255 = fmul fast float %2231, %2117
  %2256 = fmul fast float %2255, %2160
  %2257 = fadd fast float %2256, %2080
  %2258 = fmul fast float %2255, %2165
  %2259 = fadd fast float %2258, %2079
  %2260 = fmul fast float %2255, %2170
  %2261 = fadd fast float %2260, %2078
  %2262 = fmul fast float %2239, %2117
  %2263 = fmul fast float %2262, %2174
  %2264 = fadd fast float %2263, %2077
  %2265 = fmul fast float %2262, %2178
  %2266 = fadd fast float %2265, %2076
  %2267 = fmul fast float %2245, %2117
  %2268 = fmul fast float %2267, %2183
  %2269 = fadd fast float %2268, %2075
  %2270 = fmul fast float %2262, %2188
  %2271 = fadd fast float %2270, %2074
  %2272 = fmul fast float %2262, %2192
  %2273 = fadd fast float %2272, %2073
  %2274 = fmul fast float %2120, %2071
  %2275 = fadd fast float %2274, %2090
  %2276 = fmul fast float %2231, %2120
  %2277 = fmul fast float %2276, %2196
  %2278 = fadd fast float %2277, %2089
  %2279 = fmul fast float %2276, %2201
  %2280 = fadd fast float %2279, %2088
  %2281 = fmul fast float %2276, %2206
  %2282 = fadd fast float %2281, %2087
  %2283 = fmul fast float %2239, %2120
  %2284 = fmul fast float %2283, %2210
  %2285 = fadd fast float %2284, %2086
  %2286 = fmul fast float %2283, %2214
  %2287 = fadd fast float %2286, %2085
  %2288 = fmul fast float %2245, %2120
  %2289 = fmul fast float %2288, %2219
  %2290 = fadd fast float %2289, %2084
  %2291 = fmul fast float %2283, %2224
  %2292 = fadd fast float %2291, %2083
  %2293 = fmul fast float %2283, %2228
  %2294 = fadd fast float %2293, %2082
  %2295 = add nuw nsw i32 %2100, 1
  %2296 = icmp eq i32 %2295, 8
  br i1 %2296, label %2302, label %2297

; <label>:2297                                    ; preds = %2070
  %2298 = getelementptr inbounds [8 x i32], [8 x i32]* %43, i32 0, i32 %2295
  %2299 = load i32, i32* %2298, align 4, !tbaa !66, !noalias !106
  %2300 = getelementptr inbounds [8 x float], [8 x float]* %44, i32 0, i32 %2295
  %2301 = load float, float* %2300, align 4, !tbaa !81, !noalias !106
  br label %2070

; <label>:2302                                    ; preds = %2070
  br label %2303

; <label>:2303                                    ; preds = %2302, %2040, %1607, %1588, %1555
  %2304 = phi float [ 0.000000e+00, %2040 ], [ 0.000000e+00, %1607 ], [ 0.000000e+00, %1588 ], [ 0.000000e+00, %1555 ], [ %2273, %2302 ]
  %2305 = phi float [ 0.000000e+00, %2040 ], [ 0.000000e+00, %1607 ], [ 0.000000e+00, %1588 ], [ 0.000000e+00, %1555 ], [ %2271, %2302 ]
  %2306 = phi float [ 0.000000e+00, %2040 ], [ 0.000000e+00, %1607 ], [ 0.000000e+00, %1588 ], [ 0.000000e+00, %1555 ], [ %2269, %2302 ]
  %2307 = phi float [ 0.000000e+00, %2040 ], [ 0.000000e+00, %1607 ], [ 0.000000e+00, %1588 ], [ 0.000000e+00, %1555 ], [ %2266, %2302 ]
  %2308 = phi float [ 0.000000e+00, %2040 ], [ 0.000000e+00, %1607 ], [ 0.000000e+00, %1588 ], [ 0.000000e+00, %1555 ], [ %2264, %2302 ]
  %2309 = phi float [ 0.000000e+00, %2040 ], [ 0.000000e+00, %1607 ], [ 0.000000e+00, %1588 ], [ 0.000000e+00, %1555 ], [ %2261, %2302 ]
  %2310 = phi float [ 0.000000e+00, %2040 ], [ 0.000000e+00, %1607 ], [ 0.000000e+00, %1588 ], [ 0.000000e+00, %1555 ], [ %2259, %2302 ]
  %2311 = phi float [ 0.000000e+00, %2040 ], [ 0.000000e+00, %1607 ], [ 0.000000e+00, %1588 ], [ 0.000000e+00, %1555 ], [ %2257, %2302 ]
  %2312 = phi float [ 0.000000e+00, %2040 ], [ 0.000000e+00, %1607 ], [ 0.000000e+00, %1588 ], [ 0.000000e+00, %1555 ], [ %2254, %2302 ]
  %2313 = phi float [ 0.000000e+00, %2040 ], [ 0.000000e+00, %1607 ], [ 0.000000e+00, %1588 ], [ 0.000000e+00, %1555 ], [ %2294, %2302 ]
  %2314 = phi float [ 0.000000e+00, %2040 ], [ 0.000000e+00, %1607 ], [ 0.000000e+00, %1588 ], [ 0.000000e+00, %1555 ], [ %2292, %2302 ]
  %2315 = phi float [ 0.000000e+00, %2040 ], [ 0.000000e+00, %1607 ], [ 0.000000e+00, %1588 ], [ 0.000000e+00, %1555 ], [ %2290, %2302 ]
  %2316 = phi float [ 0.000000e+00, %2040 ], [ 0.000000e+00, %1607 ], [ 0.000000e+00, %1588 ], [ 0.000000e+00, %1555 ], [ %2287, %2302 ]
  %2317 = phi float [ 0.000000e+00, %2040 ], [ 0.000000e+00, %1607 ], [ 0.000000e+00, %1588 ], [ 0.000000e+00, %1555 ], [ %2285, %2302 ]
  %2318 = phi float [ 0.000000e+00, %2040 ], [ 0.000000e+00, %1607 ], [ 0.000000e+00, %1588 ], [ 0.000000e+00, %1555 ], [ %2282, %2302 ]
  %2319 = phi float [ 0.000000e+00, %2040 ], [ 0.000000e+00, %1607 ], [ 0.000000e+00, %1588 ], [ 0.000000e+00, %1555 ], [ %2280, %2302 ]
  %2320 = phi float [ 0.000000e+00, %2040 ], [ 0.000000e+00, %1607 ], [ 0.000000e+00, %1588 ], [ 0.000000e+00, %1555 ], [ %2278, %2302 ]
  %2321 = phi float [ 0.000000e+00, %2040 ], [ 0.000000e+00, %1607 ], [ 0.000000e+00, %1588 ], [ 0.000000e+00, %1555 ], [ %2275, %2302 ]
  %2322 = phi float [ 0.000000e+00, %2040 ], [ 0.000000e+00, %1607 ], [ 0.000000e+00, %1588 ], [ 0.000000e+00, %1555 ], [ %2252, %2302 ]
  %2323 = phi float [ 0.000000e+00, %2040 ], [ 0.000000e+00, %1607 ], [ 0.000000e+00, %1588 ], [ 0.000000e+00, %1555 ], [ %2250, %2302 ]
  %2324 = phi float [ 0.000000e+00, %2040 ], [ 0.000000e+00, %1607 ], [ 0.000000e+00, %1588 ], [ 0.000000e+00, %1555 ], [ %2248, %2302 ]
  %2325 = phi float [ 0.000000e+00, %2040 ], [ 0.000000e+00, %1607 ], [ 0.000000e+00, %1588 ], [ 0.000000e+00, %1555 ], [ %2244, %2302 ]
  %2326 = phi float [ 0.000000e+00, %2040 ], [ 0.000000e+00, %1607 ], [ 0.000000e+00, %1588 ], [ 0.000000e+00, %1555 ], [ %2242, %2302 ]
  %2327 = phi float [ 0.000000e+00, %2040 ], [ 0.000000e+00, %1607 ], [ 0.000000e+00, %1588 ], [ 0.000000e+00, %1555 ], [ %2238, %2302 ]
  %2328 = phi float [ 0.000000e+00, %2040 ], [ 0.000000e+00, %1607 ], [ 0.000000e+00, %1588 ], [ 0.000000e+00, %1555 ], [ %2236, %2302 ]
  %2329 = phi float [ 0.000000e+00, %2040 ], [ 0.000000e+00, %1607 ], [ 0.000000e+00, %1588 ], [ 0.000000e+00, %1555 ], [ %2234, %2302 ]
  %2330 = phi float [ 0.000000e+00, %2040 ], [ 0.000000e+00, %1607 ], [ 0.000000e+00, %1588 ], [ 0.000000e+00, %1555 ], [ %2230, %2302 ]
  %2331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2332 = extractvalue %dx.types.CBufRet.f32 %2331, 3
  br i1 %80, label %2333, label %2456, !dx.controlflow.hints !113

; <label>:2333                                    ; preds = %2303
  %2334 = fsub fast float -0.000000e+00, %2309
  %2335 = fsub fast float -0.000000e+00, %2311
  %2336 = fsub fast float %2334, %2318
  %2337 = fsub fast float %2336, %2327
  %2338 = fsub fast float %2335, %2320
  %2339 = fsub fast float %2338, %2329
  %2340 = fadd fast float %2319, %2310
  %2341 = fadd fast float %2340, %2328
  %2342 = call float @dx.op.dot3.f32(i32 55, float %2337, float %2339, float %2341, float %2337, float %2339, float %2341)  ; Dot3(ax,ay,az,bx,by,bz)
  %2343 = call float @dx.op.unary.f32(i32 25, float %2342)  ; Rsqrt(value)
  %2344 = fmul fast float %2343, %2337
  %2345 = fmul fast float %2343, %2339
  %2346 = fmul fast float %2343, %2341
  %2347 = fmul fast float %2346, 0x3FDF454380000000
  %2348 = fmul fast float %2346, %2346
  %2349 = fmul fast float %2348, 0x3FEE471020000000
  %2350 = fadd fast float %2349, 0xBFD42F6020000000
  %2351 = fmul fast float %2344, 0xBFDF454380000000
  %2352 = fmul fast float %2345, 0xBFDF454380000000
  %2353 = fmul fast float %2346, 0xBFF17B1420000000
  %2354 = fmul fast float %2353, %2344
  %2355 = fmul fast float %2353, %2345
  %2356 = fmul fast float %2344, %2344
  %2357 = fmul fast float %2345, %2345
  %2358 = fsub fast float %2356, %2357
  %2359 = fmul fast float %2358, 0x3FE17B1420000000
  %2360 = fmul fast float %2339, 0x3FF17B1420000000
  %2361 = fmul fast float %2360, %2343
  %2362 = fmul fast float %2361, %2344
  %2363 = fmul fast float %2330, 0x3FD20DD760000000
  %2364 = fmul fast float %2352, %2329
  %2365 = fmul fast float %2347, %2328
  %2366 = fmul fast float %2351, %2327
  %2367 = fmul fast float %2362, %2326
  %2368 = fmul fast float %2355, %2325
  %2369 = fmul fast float %2350, %2324
  %2370 = fmul fast float %2354, %2323
  %2371 = fmul fast float %2359, %2322
  %2372 = fadd fast float %2368, %2370
  %2373 = fadd fast float %2372, %2369
  %2374 = fadd fast float %2373, %2371
  %2375 = fadd fast float %2374, %2367
  %2376 = fmul fast float %2375, 6.250000e-02
  %2377 = fadd fast float %2366, %2365
  %2378 = fadd fast float %2377, %2364
  %2379 = fmul fast float %2378, 0x3FDC71C720000000
  %2380 = fadd fast float %2376, %2363
  %2381 = fadd fast float %2380, %2379
  %2382 = fmul fast float %2312, 0x3FD20DD760000000
  %2383 = fmul fast float %2352, %2311
  %2384 = fmul fast float %2347, %2310
  %2385 = fmul fast float %2351, %2309
  %2386 = fmul fast float %2362, %2308
  %2387 = fmul fast float %2355, %2307
  %2388 = fmul fast float %2350, %2306
  %2389 = fmul fast float %2354, %2305
  %2390 = fmul fast float %2359, %2304
  %2391 = fadd fast float %2387, %2389
  %2392 = fadd fast float %2391, %2388
  %2393 = fadd fast float %2392, %2390
  %2394 = fadd fast float %2393, %2386
  %2395 = fmul fast float %2394, 6.250000e-02
  %2396 = fadd fast float %2385, %2384
  %2397 = fadd fast float %2396, %2383
  %2398 = fmul fast float %2397, 0x3FDC71C720000000
  %2399 = fadd fast float %2395, %2382
  %2400 = fadd fast float %2399, %2398
  %2401 = fmul fast float %2321, 0x3FD20DD760000000
  %2402 = fmul fast float %2352, %2320
  %2403 = fmul fast float %2347, %2319
  %2404 = fmul fast float %2351, %2318
  %2405 = fmul fast float %2362, %2317
  %2406 = fmul fast float %2355, %2316
  %2407 = fmul fast float %2350, %2315
  %2408 = fmul fast float %2354, %2314
  %2409 = fmul fast float %2359, %2313
  %2410 = fadd fast float %2406, %2408
  %2411 = fadd fast float %2410, %2407
  %2412 = fadd fast float %2411, %2409
  %2413 = fadd fast float %2412, %2405
  %2414 = fmul fast float %2413, 6.250000e-02
  %2415 = fadd fast float %2404, %2403
  %2416 = fadd fast float %2415, %2402
  %2417 = fmul fast float %2416, 0x3FDC71C720000000
  %2418 = fadd fast float %2414, %2401
  %2419 = fadd fast float %2418, %2417
  %2420 = fmul fast float %2330, 0x3FDCE2F220000000
  %2421 = fmul fast float %2381, 0x3FE3333340000000
  %2422 = fsub fast float %2420, %2421
  %2423 = fmul fast float %2312, 0x3FDCE2F220000000
  %2424 = fmul fast float %2400, 0x3FE3333340000000
  %2425 = fsub fast float %2423, %2424
  %2426 = fmul fast float %2321, 0x3FDCE2F220000000
  %2427 = fmul fast float %2419, 0x3FE3333340000000
  %2428 = fsub fast float %2426, %2427
  %2429 = fmul fast float %2381, 0x4003333340000000
  %2430 = fmul fast float %2330, 0x3FE5AA35A0000000
  %2431 = fsub fast float %2429, %2430
  %2432 = fmul fast float %2400, 0x4003333340000000
  %2433 = fmul fast float %2312, 0x3FE5AA35A0000000
  %2434 = fsub fast float %2432, %2433
  %2435 = fmul fast float %2419, 0x4003333340000000
  %2436 = fmul fast float %2321, 0x3FE5AA35A0000000
  %2437 = fsub fast float %2435, %2436
  %2438 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2422)  ; FMax(a,b)
  %2439 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2425)  ; FMax(a,b)
  %2440 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2428)  ; FMax(a,b)
  %2441 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2431)  ; FMax(a,b)
  %2442 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2434)  ; FMax(a,b)
  %2443 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2437)  ; FMax(a,b)
  %2444 = call float @dx.op.dot3.f32(i32 55, float %74, float %75, float %76, float %2344, float %2345, float %2346)  ; Dot3(ax,ay,az,bx,by,bz)
  %2445 = call float @dx.op.unary.f32(i32 7, float %2444)  ; Saturate(value)
  %2446 = fmul fast float %2445, %2441
  %2447 = fmul fast float %2445, %2442
  %2448 = fmul fast float %2445, %2443
  %2449 = fadd fast float %2446, %2438
  %2450 = fadd fast float %2447, %2439
  %2451 = fadd fast float %2448, %2440
  %2452 = call float @dx.op.binary.f32(i32 35, float %2449, float 0.000000e+00)  ; FMax(a,b)
  %2453 = call float @dx.op.binary.f32(i32 35, float %2450, float 0.000000e+00)  ; FMax(a,b)
  %2454 = call float @dx.op.binary.f32(i32 35, float %2451, float 0.000000e+00)  ; FMax(a,b)
  %2455 = call float @dx.op.dot3.f32(i32 55, float %2452, float %2453, float %2454, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  br label %2458

; <label>:2456                                    ; preds = %2303
  %2457 = call float @dx.op.dot3.f32(i32 55, float %2330, float %2312, float %2321, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  br label %2458

; <label>:2458                                    ; preds = %2456, %2333
  %2459 = phi float [ %2455, %2333 ], [ %2457, %2456 ]
  %2460 = fmul float %2332, %2459
  %2461 = fadd fast float %2460, %1560
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %38, i32 %39, i32 undef, float %2461, float %2461, float %2461, float %2461, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2462

; <label>:2462                                    ; preds = %2458, %52
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
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!50}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !39, !41, !45}
!5 = !{!6, !7, !9, !10, !11, !13, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !33, !34, !36, !37, !38}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 28, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 39, i32 1, i32 2, i32 0, !8}
!8 = !{i32 0, i32 9}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 13, i32 1, i32 2, i32 0, !8}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 38, i32 1, i32 2, i32 0, !8}
!11 = !{i32 4, %"class.StructuredBuffer<GfxNeuralLightGridTopLevelNode>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i32 0, !12}
!12 = !{i32 1, i32 16}
!13 = !{i32 5, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 10, i32 0, !14}
!14 = !{i32 0, i32 5}
!15 = !{i32 6, %"class.StructuredBuffer<GfxNeuralLightGridInternalNode>"* undef, !"", i32 0, i32 2, i32 1, i32 12, i32 0, !12}
!16 = !{i32 7, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 3, i32 1, i32 10, i32 0, !14}
!17 = !{i32 8, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 4, i32 1, i32 10, i32 0, !14}
!18 = !{i32 9, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 5, i32 1, i32 10, i32 0, !14}
!19 = !{i32 10, %"class.Buffer<vector<float, 4> >"* undef, !"", i32 0, i32 6, i32 1, i32 10, i32 0, !8}
!20 = !{i32 11, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 7, i32 1, i32 10, i32 0, !14}
!21 = !{i32 12, %"class.Buffer<vector<float, 4> >"* undef, !"", i32 0, i32 8, i32 1, i32 10, i32 0, !8}
!22 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 9, i32 1, i32 11, i32 0, null}
!23 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 19, i32 1, i32 11, i32 0, null}
!24 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 20, i32 1, i32 11, i32 0, null}
!25 = !{i32 16, %"class.Texture1D<float>"* undef, !"", i32 0, i32 26, i32 1, i32 1, i32 0, !8}
!26 = !{i32 17, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 35, i32 1, i32 7, i32 0, !8}
!27 = !{i32 18, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 14, i32 1, i32 2, i32 0, !8}
!28 = !{i32 19, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 36, i32 1, i32 7, i32 0, !29}
!29 = !{i32 0, i32 14}
!30 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 34, i32 1, i32 11, i32 0, null}
!31 = !{i32 21, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 32, i32 1, i32 2, i32 0, !8}
!32 = !{i32 22, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 18, i32 1, i32 2, i32 0, !8}
!33 = !{i32 23, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 41, i32 1, i32 2, i32 0, !8}
!34 = !{i32 24, %"class.StructuredBuffer<GfxBSPAABBNodePacked>"* undef, !"", i32 0, i32 22, i32 1, i32 12, i32 0, !35}
!35 = !{i32 1, i32 8}
!36 = !{i32 25, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 23, i32 1, i32 10, i32 0, !14}
!37 = !{i32 26, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 24, i32 1, i32 10, i32 0, !14}
!38 = !{i32 27, %"class.StructuredBuffer<GfxBSPAABBNodePacked>"* undef, !"", i32 0, i32 25, i32 1, i32 12, i32 0, !35}
!39 = !{!40}
!40 = !{i32 0, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !8}
!41 = !{!42, !43, !44}
!42 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!43 = !{i32 1, %GfxNeuralLightGridSetupConsts* undef, !"", i32 0, i32 4, i32 1, i32 80, null}
!44 = !{i32 2, %DeferredEffectLightConsts_decl* undef, !"", i32 0, i32 1, i32 1, i32 240, null}
!45 = !{!46, !47, !48, !49}
!46 = !{i32 0, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!47 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!48 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!49 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!50 = !{void ()* @cs_light_sensor_direct_and_baked, !"cs_light_sensor_direct_and_baked", null, !4, !51}
!51 = !{i32 0, i64 272, i32 4, !52}
!52 = !{i32 64, i32 1, i32 1}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 1}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 1}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 1}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 1}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 1}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = !{!67, !67, i64 0}
!67 = !{!"int", !68, i64 0}
!68 = !{!"omnipotent char", !69, i64 0}
!69 = !{!"Simple C/C++ TBAA"}
!70 = !{!71, !73}
!71 = distinct !{!71, !72, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_Sprite@@ULightIteratorOutput_Sprite@@@Z: %lightingOutput"}
!72 = distinct !{!72, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_Sprite@@ULightIteratorOutput_Sprite@@@Z"}
!73 = distinct !{!73, !74, !"\01?Lights_Iterate_Sprite@@YAXULocalAttributes@@ULightIteratorInput_Sprite@@ULightIteratorOutput_Sprite@@@Z: %lightingOutput"}
!74 = distinct !{!74, !"\01?Lights_Iterate_Sprite@@YAXULocalAttributes@@ULightIteratorInput_Sprite@@ULightIteratorOutput_Sprite@@@Z"}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 2}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 2}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 1}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 1}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 2}
!81 = !{!82, !82, i64 0}
!82 = !{!"float", !68, i64 0}
!83 = distinct !{!83, !84}
!84 = !{!"llvm.loop.unroll.disable"}
!85 = distinct !{!85, !84}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 1}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 1}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 2}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 2}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 1}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 2}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 2}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 2}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 2}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 2}
!96 = !{!73}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 2}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 2}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 1}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 1}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 1}
!102 = distinct !{!102, !84}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 2}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 2}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 2}
!106 = !{!107, !109, !110, !111}
!107 = distinct !{!107, !108, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z: %probeR"}
!108 = distinct !{!108, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z"}
!109 = distinct !{!109, !108, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z: %probeG"}
!110 = distinct !{!110, !108, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z: %probeB"}
!111 = distinct !{!111, !108, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z: %probeA"}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 2}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 2}

