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
; shader hash: f493ed6281e7b64110da3bae5a148539
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
;   [4 x i8] (type annotation not present)
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
;                                   cbuffer      NA          NA     CB1            cb0     1
;                                   cbuffer      NA          NA     CB2            cb1     1
;                                   sampler      NA          NA      S0             s0     1
;                                   sampler      NA          NA      S1             s1     1
;                                   sampler      NA          NA      S2             s2     1
;                                   sampler      NA          NA      S3             s3     1
;                                   texture     f32          2d      T0            t33     1
;                                   texture     f32          1d      T1             t2     1
;                                   texture     f32          3d      T2            t27     1
;                                   texture    byte         r/o      T3            t28     1
;                                   texture  struct         r/o      T4            t37     1
;                                   texture     f32          2d      T5            t29     1
;                                   texture     f32          2d      T6            t39     1
;                                   texture     f32          2d      T7            t13     1
;                                   texture     f32          2d      T8            t38     1
;                                   texture    byte         r/o      T9            t19     1
;                                   texture    byte         r/o     T10            t20     1
;                                   texture     f32          1d     T11            t26     1
;                                   texture     f32     2darray     T12            t35     1
;                                   texture     f32          2d     T13            t14     1
;                                   textureunorm_f32     2darray     T14            t36     1
;                                   texture    byte         r/o     T15            t34     1
;                                   texture     f32          2d     T16            t32     1
;                                   texture     f32          2d     T17            t18     1
;                                   texture     f32          2d     T18            t41     1
;                                   texture  struct         r/o     T19            t22     1
;                                   texture     u32         buf     T20            t23     1
;                                   texture     u32         buf     T21            t24     1
;                                   texture  struct         r/o     T22            t25     1
;                                       UAV     f32          2d      U0             u0     1
;                                       UAV     f32     2darray      U1             u1     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture1D<float>" = type { float, %"class.Texture1D<float>::mips_type" }
%"class.Texture1D<float>::mips_type" = type { i32 }
%"class.Texture3D<float>" = type { float, %"class.Texture3D<float>::mips_type" }
%"class.Texture3D<float>::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.StructuredBuffer<unsigned int>" = type { i32 }
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%"class.StructuredBuffer<GfxBSPAABBNodePacked>" = type { %struct.GfxBSPAABBNodePacked }
%struct.GfxBSPAABBNodePacked = type { i32, i32 }
%"class.Buffer<unsigned int>" = type { i32 }
%"class.RWTexture2D<vector<float, 3> >" = type { <3 x float> }
%"class.RWTexture2DArray<vector<float, 3> >" = type { <3 x float> }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%hostlayout.DeferredEffectLightGlobalConsts = type { <4 x float>, [4 x <4 x float>] }
%DeferredEffectLightConsts_decl = type { %struct.DeferredEffectLightConsts }
%struct.DeferredEffectLightConsts = type { i32, float, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x <4 x i32>] }
%struct.SamplerComparisonState = type { i32 }
%struct.SamplerState = type { i32 }

@PCF_OFFSETS_8.v.1dim = internal constant [16 x float] [float 0xBFE6A09020000000, float 0x3FE6A09020000000, float 0.000000e+00, float -8.750000e-01, float 0x3FE0F837C0000000, float 0x3FE0F837C0000000, float -6.250000e-01, float 0.000000e+00, float 0x3FD6A161E0000000, float 0xBFD6A161E0000000, float 0.000000e+00, float 3.750000e-01, float 0xBFC6A161E0000000, float 0xBFC6A161E0000000, float 1.250000e-01, float 0.000000e+00], align 4

define void @cs_deferred_effect_lighting_8() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 24, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 23, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 41, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 36, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 26, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 39, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 29, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 28, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = alloca [4 x i32], align 4
  %34 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %35 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %36 = call i32 @dx.op.threadId.i32(i32 93, i32 2)  ; ThreadId(component)
  %37 = alloca [12 x float], align 4
  %38 = alloca [12 x float], align 4
  %39 = alloca [3 x float], align 4
  %40 = alloca [3 x float], align 4
  %41 = alloca [3 x float], align 4
  %42 = alloca [4 x float], align 4
  %43 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %44 = extractvalue %dx.types.CBufRet.i32 %43, 2
  %45 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %44, i32 0)  ; BufferLoad(srv,index,wot)
  %46 = extractvalue %dx.types.ResRet.i32 %45, 0
  %47 = icmp ult i32 %34, %46
  br i1 %47, label %48, label %2574, !dx.controlflow.hints !49

; <label>:48                                      ; preds = %0
  %49 = uitofp i32 %35 to float
  %50 = uitofp i32 %36 to float
  %51 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %52 = extractvalue %dx.types.CBufRet.f32 %51, 1
  %53 = fdiv fast float %49, %52
  %54 = fdiv fast float %50, %52
  %55 = extractvalue %dx.types.CBufRet.f32 %51, 2
  %56 = fadd fast float %55, %53
  %57 = fadd fast float %55, %54
  %58 = add i32 %44, 3
  %59 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 %58)  ; CBufferLoadLegacy(handle,regIndex)
  %60 = extractvalue %dx.types.CBufRet.i32 %59, 2
  %61 = add i32 %60, %34
  %62 = shl i32 %61, 5
  %63 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %62, i32 undef)  ; BufferLoad(srv,index,wot)
  %64 = extractvalue %dx.types.ResRet.i32 %63, 0
  %65 = extractvalue %dx.types.ResRet.i32 %63, 1
  %66 = extractvalue %dx.types.ResRet.i32 %63, 2
  %67 = extractvalue %dx.types.ResRet.i32 %63, 3
  %68 = lshr i32 %67, 14
  %69 = and i32 %68, 16383
  %70 = and i32 %67, 16383
  %71 = bitcast i32 %64 to float
  %72 = bitcast i32 %65 to float
  %73 = bitcast i32 %66 to float
  %74 = and i32 %67, 536870912
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %115, label %76, !dx.controlflow.hints !50

; <label>:76                                      ; preds = %48
  %77 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %78 = extractvalue %dx.types.CBufRet.f32 %77, 2
  %79 = extractvalue %dx.types.CBufRet.f32 %77, 3
  %80 = fmul fast float %78, %71
  %81 = fmul fast float %79, %72
  %82 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %83 = extractvalue %dx.types.CBufRet.f32 %82, 0
  %84 = extractvalue %dx.types.CBufRet.f32 %82, 1
  %85 = fadd fast float %80, %83
  %86 = fadd fast float %81, %84
  %87 = call float @dx.op.unary.f32(i32 7, float %85)  ; Saturate(value)
  %88 = call float @dx.op.unary.f32(i32 7, float %86)  ; Saturate(value)
  %89 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %27, float %87, float %88, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %90 = extractvalue %dx.types.ResRet.f32 %89, 0
  %91 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %92 = extractvalue %dx.types.CBufRet.f32 %91, 0
  %93 = fmul fast float %92, %90
  %94 = fsub fast float %85, %87
  %95 = fsub fast float %86, %88
  %96 = extractvalue %dx.types.CBufRet.f32 %77, 0
  %97 = extractvalue %dx.types.CBufRet.f32 %77, 1
  %98 = fmul fast float %96, %94
  %99 = fmul fast float %97, %95
  %100 = fmul fast float %98, %98
  %101 = fmul fast float %99, %99
  %102 = fadd fast float %100, %101
  %103 = call float @dx.op.unary.f32(i32 24, float %102)  ; Sqrt(value)
  %104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %105 = extractvalue %dx.types.CBufRet.f32 %104, 3
  %106 = fmul fast float %105, %103
  %107 = call float @dx.op.unary.f32(i32 7, float %106)  ; Saturate(value)
  %108 = extractvalue %dx.types.CBufRet.f32 %104, 2
  %109 = fsub fast float %108, %93
  %110 = fmul fast float %109, %107
  %111 = extractvalue %dx.types.CBufRet.f32 %91, 1
  %112 = fadd fast float %93, %73
  %113 = fadd fast float %112, %111
  %114 = fadd fast float %113, %110
  br label %115

; <label>:115                                     ; preds = %76, %48
  %116 = phi float [ %114, %76 ], [ %73, %48 ]
  %117 = and i32 %67, 268435456
  %118 = icmp ne i32 %117, 0
  %119 = and i32 %67, 1073741824
  %120 = icmp ne i32 %119, 0
  %121 = or i32 %62, 16
  %122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %121, i32 undef)  ; BufferLoad(srv,index,wot)
  %123 = extractvalue %dx.types.ResRet.i32 %122, 0
  %124 = extractvalue %dx.types.ResRet.i32 %122, 1
  %125 = extractvalue %dx.types.ResRet.i32 %122, 2
  %126 = extractvalue %dx.types.ResRet.i32 %122, 3
  %127 = and i32 %123, 65535
  %128 = call float @dx.op.legacyF16ToF32(i32 131, i32 %127)  ; LegacyF16ToF32(value)
  %129 = lshr i32 %123, 16
  %130 = call float @dx.op.legacyF16ToF32(i32 131, i32 %129)  ; LegacyF16ToF32(value)
  %131 = and i32 %124, 1023
  %132 = uitofp i32 %131 to float
  %133 = lshr i32 %124, 10
  %134 = and i32 %133, 1023
  %135 = uitofp i32 %134 to float
  %136 = lshr i32 %124, 20
  %137 = and i32 %136, 1023
  %138 = uitofp i32 %137 to float
  %139 = fmul fast float %132, 0x3F60040100000000
  %140 = fmul fast float %135, 0x3F60040100000000
  %141 = fmul fast float %138, 0x3F60040100000000
  %142 = fadd fast float %139, -1.000000e+00
  %143 = fadd fast float %140, -1.000000e+00
  %144 = fadd fast float %141, -1.000000e+00
  %145 = and i32 %125, 1023
  %146 = uitofp i32 %145 to float
  %147 = lshr i32 %125, 10
  %148 = and i32 %147, 1023
  %149 = uitofp i32 %148 to float
  %150 = lshr i32 %125, 20
  %151 = and i32 %150, 1023
  %152 = uitofp i32 %151 to float
  %153 = fmul fast float %146, 0x3F60040100000000
  %154 = fmul fast float %149, 0x3F60040100000000
  %155 = fmul fast float %152, 0x3F60040100000000
  %156 = fadd fast float %153, -1.000000e+00
  %157 = fadd fast float %154, -1.000000e+00
  %158 = fadd fast float %155, -1.000000e+00
  %159 = and i32 %126, 65535
  %160 = call float @dx.op.legacyF16ToF32(i32 131, i32 %159)  ; LegacyF16ToF32(value)
  %161 = lshr i32 %126, 16
  %162 = call float @dx.op.legacyF16ToF32(i32 131, i32 %161)  ; LegacyF16ToF32(value)
  %163 = call float @dx.op.unary.f32(i32 13, float %160)  ; Sin(value)
  %164 = call float @dx.op.unary.f32(i32 12, float %160)  ; Cos(value)
  %165 = fmul fast float %164, %142
  %166 = fmul fast float %164, %143
  %167 = fmul fast float %164, %144
  %168 = fmul fast float %163, %156
  %169 = fmul fast float %157, %163
  %170 = fmul fast float %158, %163
  %171 = fadd fast float %165, %168
  %172 = fadd fast float %166, %169
  %173 = fadd fast float %167, %170
  %174 = fmul fast float %171, %128
  %175 = fmul fast float %172, %128
  %176 = fmul fast float %173, %128
  %177 = fmul fast float %163, %142
  %178 = fmul fast float %143, %163
  %179 = fmul fast float %144, %163
  %180 = fmul fast float %164, %156
  %181 = fmul fast float %164, %157
  %182 = fmul fast float %164, %158
  %183 = fsub fast float %177, %180
  %184 = fsub fast float %178, %181
  %185 = fsub fast float %179, %182
  %186 = fmul fast float %183, %130
  %187 = fmul fast float %184, %130
  %188 = fmul fast float %185, %130
  %189 = add i32 %69, %35
  %190 = add i32 %70, %36
  %191 = fmul fast float %174, %56
  %192 = fmul fast float %175, %56
  %193 = fmul fast float %176, %56
  %194 = fmul fast float %186, %57
  %195 = fmul fast float %187, %57
  %196 = fmul fast float %188, %57
  %197 = fadd fast float %194, %191
  %198 = fmul fast float %197, 2.000000e+00
  %199 = fsub fast float %71, %174
  %200 = fsub fast float %199, %186
  %201 = fadd fast float %200, %198
  %202 = fadd fast float %195, %192
  %203 = fmul fast float %202, 2.000000e+00
  %204 = fsub fast float %72, %175
  %205 = fsub fast float %204, %187
  %206 = fadd fast float %205, %203
  %207 = fadd fast float %196, %193
  %208 = fmul fast float %207, 2.000000e+00
  %209 = fsub fast float %116, %176
  %210 = fsub fast float %209, %188
  %211 = fadd fast float %210, %208
  %212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %213 = extractvalue %dx.types.CBufRet.f32 %212, 0
  %214 = extractvalue %dx.types.CBufRet.f32 %212, 1
  %215 = extractvalue %dx.types.CBufRet.f32 %212, 2
  %216 = fsub fast float %201, %213
  %217 = fsub fast float %206, %214
  %218 = fsub fast float %211, %215
  %219 = fsub fast float -0.000000e+00, %218
  %220 = call float @dx.op.dot3.f32(i32 55, float %216, float %217, float %218, float %216, float %217, float %218)  ; Dot3(ax,ay,az,bx,by,bz)
  %221 = call float @dx.op.unary.f32(i32 25, float %220)  ; Rsqrt(value)
  %222 = fmul fast float %216, %221
  %223 = fmul fast float %217, %221
  %224 = fmul fast float %218, %221
  %225 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %226 = extractvalue %dx.types.CBufRet.i32 %225, 3
  %227 = and i32 %226, 3
  %228 = icmp ne i32 %227, 0
  %229 = and i32 %226, 4
  %230 = icmp eq i32 %229, 0
  %231 = and i1 %228, %230
  %232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %233 = extractvalue %dx.types.CBufRet.f32 %232, 0
  %234 = extractvalue %dx.types.CBufRet.f32 %232, 1
  %235 = fsub fast float %201, %233
  %236 = fsub fast float %206, %234
  %237 = fmul fast float %235, %235
  %238 = fmul fast float %236, %236
  %239 = fadd fast float %237, %238
  %240 = call float @dx.op.unary.f32(i32 24, float %239)  ; Sqrt(value)
  %241 = extractvalue %dx.types.CBufRet.f32 %232, 2
  %242 = fcmp fast olt float %240, %241
  br i1 %242, label %243, label %308, !dx.controlflow.hints !51

; <label>:243                                     ; preds = %115
  %244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %245 = extractvalue %dx.types.CBufRet.f32 %244, 0
  %246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %247 = extractvalue %dx.types.CBufRet.f32 %246, 0
  %248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %249 = extractvalue %dx.types.CBufRet.f32 %248, 0
  %250 = extractvalue %dx.types.CBufRet.f32 %244, 1
  %251 = extractvalue %dx.types.CBufRet.f32 %246, 1
  %252 = extractvalue %dx.types.CBufRet.f32 %248, 1
  %253 = extractvalue %dx.types.CBufRet.f32 %244, 3
  %254 = extractvalue %dx.types.CBufRet.f32 %246, 3
  %255 = extractvalue %dx.types.CBufRet.f32 %248, 3
  %256 = fadd fast float %253, %201
  %257 = fadd fast float %254, %206
  %258 = fadd fast float %255, %211
  %259 = fmul fast float %256, %245
  %260 = call float @dx.op.tertiary.f32(i32 46, float %257, float %247, float %259)  ; FMad(a,b,c)
  %261 = call float @dx.op.tertiary.f32(i32 46, float %258, float %249, float %260)  ; FMad(a,b,c)
  %262 = fmul fast float %256, %250
  %263 = call float @dx.op.tertiary.f32(i32 46, float %257, float %251, float %262)  ; FMad(a,b,c)
  %264 = call float @dx.op.tertiary.f32(i32 46, float %258, float %252, float %263)  ; FMad(a,b,c)
  %265 = fsub fast float %261, %253
  %266 = fsub fast float %264, %254
  %267 = fsub fast float %265, %233
  %268 = fadd fast float %267, %241
  %269 = fsub fast float %266, %234
  %270 = fadd fast float %269, %241
  %271 = extractvalue %dx.types.CBufRet.f32 %232, 3
  %272 = fmul fast float %268, %271
  %273 = fmul fast float %270, %271
  %274 = call float @dx.op.unary.f32(i32 7, float %272)  ; Saturate(value)
  %275 = call float @dx.op.unary.f32(i32 7, float %273)  ; Saturate(value)
  %276 = fsub fast float 1.000000e+00, %274
  %277 = fsub fast float 1.000000e+00, %275
  %278 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %27, float %276, float %277, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %279 = extractvalue %dx.types.ResRet.f32 %278, 0
  %280 = fcmp fast ugt float %279, 0.000000e+00
  br i1 %280, label %281, label %308, !dx.controlflow.hints !52

; <label>:281                                     ; preds = %243
  %282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %283 = extractvalue %dx.types.CBufRet.f32 %282, 2
  %284 = fmul fast float %283, %279
  %285 = extractvalue %dx.types.CBufRet.f32 %282, 3
  %286 = fadd fast float %285, %284
  %287 = extractvalue %dx.types.CBufRet.f32 %248, 2
  %288 = fadd fast float %286, %255
  %289 = fmul fast float %261, %249
  %290 = call float @dx.op.tertiary.f32(i32 46, float %264, float %252, float %289)  ; FMad(a,b,c)
  %291 = call float @dx.op.tertiary.f32(i32 46, float %288, float %287, float %290)  ; FMad(a,b,c)
  %292 = fsub fast float %291, %255
  %293 = fsub fast float %292, %215
  %294 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %27, float %276, float %277, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %295 = extractvalue %dx.types.ResRet.f32 %294, 0
  %296 = extractvalue %dx.types.ResRet.f32 %294, 1
  %297 = extractvalue %dx.types.ResRet.f32 %294, 2
  %298 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %27, float %276, float %277, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %299 = extractvalue %dx.types.ResRet.f32 %298, 0
  %300 = extractvalue %dx.types.ResRet.f32 %298, 1
  %301 = extractvalue %dx.types.ResRet.f32 %298, 2
  %302 = fadd fast float %299, %295
  %303 = fmul fast float %302, 0x3F847AE140000000
  %304 = fadd fast float %300, %296
  %305 = fmul fast float %304, 0x3F847AE140000000
  %306 = fadd fast float %301, %297
  %307 = fmul fast float %306, 0x3F847AE140000000
  br label %308

; <label>:308                                     ; preds = %281, %243, %115
  %309 = phi float [ 0.000000e+00, %115 ], [ %303, %281 ], [ 0.000000e+00, %243 ]
  %310 = phi float [ 0.000000e+00, %115 ], [ %305, %281 ], [ 0.000000e+00, %243 ]
  %311 = phi float [ 0.000000e+00, %115 ], [ %307, %281 ], [ 0.000000e+00, %243 ]
  %312 = phi float [ 0.000000e+00, %115 ], [ %293, %281 ], [ -1.310720e+05, %243 ]
  %313 = phi i32 [ 0, %115 ], [ 1, %281 ], [ 0, %243 ]
  %314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %315 = extractvalue %dx.types.CBufRet.f32 %314, 3
  %316 = fcmp fast oeq float %315, 0.000000e+00
  br i1 %316, label %1279, label %317, !dx.controlflow.hints !53

; <label>:317                                     ; preds = %308
  %318 = extractvalue %dx.types.CBufRet.f32 %314, 0
  %319 = extractvalue %dx.types.CBufRet.f32 %314, 1
  %320 = extractvalue %dx.types.CBufRet.f32 %314, 2
  %321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %322 = extractvalue %dx.types.CBufRet.f32 %321, 0
  %323 = extractvalue %dx.types.CBufRet.f32 %321, 1
  %324 = extractvalue %dx.types.CBufRet.f32 %321, 2
  %325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %326 = extractvalue %dx.types.CBufRet.f32 %325, 0
  %327 = extractvalue %dx.types.CBufRet.f32 %325, 1
  %328 = call float @dx.op.dot3.f32(i32 55, float %322, float %323, float %324, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %329 = select i1 %231, float %326, float %322
  %330 = select i1 %231, float %328, float %323
  %331 = select i1 %231, float %327, float %324
  %332 = fcmp fast olt float %315, 0.000000e+00
  br i1 %332, label %975, label %333, !dx.controlflow.hints !54

; <label>:333                                     ; preds = %317
  %334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %335 = extractvalue %dx.types.CBufRet.f32 %334, 0
  %336 = extractvalue %dx.types.CBufRet.f32 %334, 1
  %337 = extractvalue %dx.types.CBufRet.f32 %334, 2
  %338 = extractvalue %dx.types.CBufRet.f32 %334, 3
  %339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %340 = extractvalue %dx.types.CBufRet.f32 %339, 0
  %341 = extractvalue %dx.types.CBufRet.f32 %339, 1
  %342 = extractvalue %dx.types.CBufRet.f32 %339, 2
  %343 = extractvalue %dx.types.CBufRet.f32 %339, 3
  %344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %345 = extractvalue %dx.types.CBufRet.f32 %344, 0
  %346 = extractvalue %dx.types.CBufRet.f32 %344, 1
  %347 = extractvalue %dx.types.CBufRet.f32 %344, 2
  %348 = extractvalue %dx.types.CBufRet.f32 %344, 3
  %349 = fmul fast float %335, %216
  %350 = call float @dx.op.tertiary.f32(i32 46, float %217, float %336, float %349)  ; FMad(a,b,c)
  %351 = call float @dx.op.tertiary.f32(i32 46, float %218, float %337, float %350)  ; FMad(a,b,c)
  %352 = fadd fast float %351, %338
  %353 = fmul fast float %340, %216
  %354 = call float @dx.op.tertiary.f32(i32 46, float %217, float %341, float %353)  ; FMad(a,b,c)
  %355 = call float @dx.op.tertiary.f32(i32 46, float %218, float %342, float %354)  ; FMad(a,b,c)
  %356 = fadd fast float %355, %343
  %357 = fmul fast float %345, %216
  %358 = call float @dx.op.tertiary.f32(i32 46, float %217, float %346, float %357)  ; FMad(a,b,c)
  %359 = call float @dx.op.tertiary.f32(i32 46, float %218, float %347, float %358)  ; FMad(a,b,c)
  %360 = fadd fast float %359, %348
  %361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %362 = extractvalue %dx.types.CBufRet.f32 %361, 0
  %363 = extractvalue %dx.types.CBufRet.f32 %361, 1
  %364 = extractvalue %dx.types.CBufRet.f32 %361, 3
  %365 = fmul fast float %364, %352
  %366 = fmul fast float %364, %356
  %367 = fadd fast float %365, %362
  %368 = fadd fast float %366, %363
  %369 = extractvalue %dx.types.CBufRet.f32 %361, 2
  %370 = fcmp fast olt float %369, 0.000000e+00
  %371 = fsub fast float -0.000000e+00, %369
  %372 = select i1 %370, float %371, float %369
  %373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %374 = extractvalue %dx.types.CBufRet.f32 %373, 1
  %375 = fadd fast float %372, %374
  %376 = fcmp fast ogt float %375, 0.000000e+00
  br i1 %376, label %377, label %409, !dx.controlflow.hints !55

; <label>:377                                     ; preds = %333
  %378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %379 = extractvalue %dx.types.CBufRet.f32 %378, 1
  %380 = fsub fast float %379, %360
  %381 = extractvalue %dx.types.CBufRet.f32 %378, 2
  %382 = fmul fast float %380, %381
  %383 = fsub fast float 1.000000e+00, %382
  %384 = call float @dx.op.unary.f32(i32 7, float %383)  ; Saturate(value)
  %385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %386 = extractvalue %dx.types.CBufRet.f32 %385, 0
  %387 = extractvalue %dx.types.CBufRet.f32 %385, 1
  %388 = fsub fast float %367, %386
  %389 = fsub fast float %368, %387
  %390 = fcmp fast olt float %388, 0.000000e+00
  %391 = fcmp fast olt float %389, 0.000000e+00
  %392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %393 = extractvalue %dx.types.CBufRet.f32 %392, 0
  %394 = extractvalue %dx.types.CBufRet.f32 %392, 1
  %395 = extractvalue %dx.types.CBufRet.f32 %392, 2
  %396 = extractvalue %dx.types.CBufRet.f32 %392, 3
  %397 = select i1 %390, float %393, float %395
  %398 = select i1 %391, float %394, float %396
  %399 = fmul fast float %397, %388
  %400 = fmul fast float %398, %389
  %401 = call float @dx.op.unary.f32(i32 6, float %399)  ; FAbs(value)
  %402 = call float @dx.op.unary.f32(i32 6, float %400)  ; FAbs(value)
  %403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %404 = extractvalue %dx.types.CBufRet.f32 %403, 0
  %405 = call float @dx.op.binary.f32(i32 35, float %401, float %402)  ; FMax(a,b)
  %406 = fsub fast float %404, %405
  %407 = call float @dx.op.unary.f32(i32 7, float %406)  ; Saturate(value)
  %408 = fmul fast float %407, %384
  br label %409

; <label>:409                                     ; preds = %377, %333
  %410 = phi float [ %408, %377 ], [ 0.000000e+00, %333 ]
  %411 = call float @dx.op.binary.f32(i32 35, float %410, float 0.000000e+00)  ; FMax(a,b)
  %412 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %411)  ; FMax(a,b)
  %413 = fcmp fast olt float %412, 1.000000e+00
  br i1 %413, label %414, label %812, !dx.controlflow.hints !56

; <label>:414                                     ; preds = %409
  %415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %416 = extractvalue %dx.types.CBufRet.f32 %415, 0
  %417 = fcmp fast une float %416, 0.000000e+00
  br i1 %417, label %418, label %812, !dx.controlflow.hints !57

; <label>:418                                     ; preds = %414
  %419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %420 = extractvalue %dx.types.CBufRet.f32 %419, 0
  %421 = extractvalue %dx.types.CBufRet.f32 %419, 1
  %422 = extractvalue %dx.types.CBufRet.f32 %419, 2
  %423 = extractvalue %dx.types.CBufRet.f32 %419, 3
  %424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %425 = extractvalue %dx.types.CBufRet.f32 %424, 0
  %426 = extractvalue %dx.types.CBufRet.f32 %424, 1
  %427 = extractvalue %dx.types.CBufRet.f32 %424, 2
  %428 = extractvalue %dx.types.CBufRet.f32 %424, 3
  %429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %430 = extractvalue %dx.types.CBufRet.f32 %429, 0
  %431 = extractvalue %dx.types.CBufRet.f32 %429, 1
  %432 = extractvalue %dx.types.CBufRet.f32 %429, 2
  %433 = extractvalue %dx.types.CBufRet.f32 %429, 3
  %434 = fmul fast float %420, %216
  %435 = call float @dx.op.tertiary.f32(i32 46, float %217, float %421, float %434)  ; FMad(a,b,c)
  %436 = call float @dx.op.tertiary.f32(i32 46, float %218, float %422, float %435)  ; FMad(a,b,c)
  %437 = fadd fast float %436, %423
  %438 = fmul fast float %425, %216
  %439 = call float @dx.op.tertiary.f32(i32 46, float %217, float %426, float %438)  ; FMad(a,b,c)
  %440 = call float @dx.op.tertiary.f32(i32 46, float %218, float %427, float %439)  ; FMad(a,b,c)
  %441 = fadd fast float %440, %428
  %442 = fmul fast float %430, %216
  %443 = call float @dx.op.tertiary.f32(i32 46, float %217, float %431, float %442)  ; FMad(a,b,c)
  %444 = call float @dx.op.tertiary.f32(i32 46, float %218, float %432, float %443)  ; FMad(a,b,c)
  %445 = fadd fast float %444, %433
  %446 = fcmp fast oge float %437, 1.000000e+00
  %447 = fcmp fast oge float %441, 1.000000e+00
  %448 = or i1 %446, %447
  %449 = fcmp fast olt float %437, 0.000000e+00
  %450 = fcmp fast olt float %441, 0.000000e+00
  %451 = or i1 %449, %450
  %452 = or i1 %448, %451
  br i1 %452, label %812, label %453, !dx.controlflow.hints !58

; <label>:453                                     ; preds = %418
  %454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %455 = extractvalue %dx.types.CBufRet.f32 %454, 0
  %456 = extractvalue %dx.types.CBufRet.f32 %454, 1
  %457 = extractvalue %dx.types.CBufRet.f32 %454, 2
  %458 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %459 = extractvalue %dx.types.CBufRet.i32 %458, 2
  %460 = uitofp i32 %459 to float
  %461 = extractvalue %dx.types.CBufRet.i32 %458, 3
  %462 = uitofp i32 %461 to float
  %463 = extractvalue %dx.types.CBufRet.f32 %454, 3
  %464 = fmul fast float %463, 2.000000e+00
  %465 = fsub fast float %437, %455
  %466 = fsub fast float %441, %456
  %467 = fmul fast float %464, %465
  %468 = fmul fast float %464, %466
  %469 = fdiv fast float 1.000000e+00, %320
  %470 = fmul fast float %468, %469
  %471 = call float @dx.op.unary.f32(i32 6, float %470)  ; FAbs(value)
  %472 = fmul fast float %457, %218
  %473 = fmul fast float %472, %464
  %474 = call float @dx.op.unary.f32(i32 6, float %473)  ; FAbs(value)
  %475 = call float @dx.op.unary.f32(i32 6, float %467)  ; FAbs(value)
  %476 = call float @dx.op.binary.f32(i32 35, float %474, float %471)  ; FMax(a,b)
  %477 = call float @dx.op.binary.f32(i32 35, float %475, float %476)  ; FMax(a,b)
  %478 = fmul fast float %477, 2.000000e+00
  %479 = call float @dx.op.unary.f32(i32 23, float %478)  ; Log(value)
  %480 = call float @dx.op.binary.f32(i32 35, float %479, float %460)  ; FMax(a,b)
  %481 = call float @dx.op.unary.f32(i32 22, float %480)  ; Frc(value)
  %482 = fadd fast float %481, 0xBFEA666660000000
  %483 = fmul fast float %482, 8.000000e+00
  %484 = call float @dx.op.unary.f32(i32 7, float %483)  ; Saturate(value)
  %485 = call float @dx.op.unary.f32(i32 27, float %480)  ; Round_ni(value)
  %486 = fadd fast float %485, %484
  %487 = call float @dx.op.binary.f32(i32 36, float %486, float %462)  ; FMin(a,b)
  %488 = call float @dx.op.unary.f32(i32 27, float %487)  ; Round_ni(value)
  %489 = fsub fast float -0.000000e+00, %488
  %490 = call float @dx.op.unary.f32(i32 21, float %489)  ; Exp(value)
  %491 = fmul fast float %490, %464
  %492 = fmul fast float %491, %437
  %493 = fmul fast float %491, %441
  %494 = fmul fast float %492, 2.500000e-01
  %495 = fmul fast float %493, 2.500000e-01
  %496 = fadd fast float %494, 5.000000e-01
  %497 = fadd fast float %495, 5.000000e-01
  %498 = fsub fast float %462, %460
  %499 = fptoui float %498 to i32
  %500 = add i32 %499, 320
  %501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 %500)  ; CBufferLoadLegacy(handle,regIndex)
  %502 = extractvalue %dx.types.CBufRet.f32 %501, 0
  %503 = extractvalue %dx.types.CBufRet.f32 %501, 1
  %504 = fcmp fast une float %487, %462
  %505 = fsub fast float %437, %502
  %506 = fsub fast float %441, %503
  %507 = call float @dx.op.unary.f32(i32 6, float %505)  ; FAbs(value)
  %508 = call float @dx.op.unary.f32(i32 6, float %506)  ; FAbs(value)
  %509 = fmul fast float %507, %491
  %510 = fmul fast float %508, %491
  %511 = fcmp fast olt float %509, 1.000000e+00
  %512 = fcmp fast olt float %510, 1.000000e+00
  %513 = and i1 %511, %512
  %514 = or i1 %504, %513
  br i1 %514, label %515, label %812, !dx.controlflow.hints !59

; <label>:515                                     ; preds = %453
  %516 = fmul fast float %493, 5.000000e-01
  %517 = fmul fast float %492, 5.000000e-01
  %518 = fadd fast float %516, 5.000000e-01
  %519 = fadd fast float %517, 5.000000e-01
  %520 = sitofp i32 %459 to float
  %521 = fsub fast float %487, %520
  %522 = call float @dx.op.unary.f32(i32 27, float %521)  ; Round_ni(value)
  %523 = call float @dx.op.unary.f32(i32 22, float %487)  ; Frc(value)
  %524 = call float @dx.op.unary.f32(i32 22, float %519)  ; Frc(value)
  %525 = call float @dx.op.unary.f32(i32 22, float %518)  ; Frc(value)
  %526 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %26, float %524, float %525, float %522, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %527 = extractvalue %dx.types.ResRet.f32 %526, 0
  %528 = extractvalue %dx.types.ResRet.f32 %526, 1
  %529 = extractvalue %dx.types.ResRet.f32 %526, 2
  %530 = extractvalue %dx.types.ResRet.f32 %526, 3
  %531 = fcmp fast ogt float %523, 0.000000e+00
  br i1 %531, label %532, label %553, !dx.controlflow.hints !60

; <label>:532                                     ; preds = %515
  %533 = fadd fast float %522, 1.000000e+00
  %534 = call float @dx.op.unary.f32(i32 22, float %496)  ; Frc(value)
  %535 = call float @dx.op.unary.f32(i32 22, float %497)  ; Frc(value)
  %536 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %26, float %534, float %535, float %533, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %537 = extractvalue %dx.types.ResRet.f32 %536, 0
  %538 = extractvalue %dx.types.ResRet.f32 %536, 1
  %539 = extractvalue %dx.types.ResRet.f32 %536, 2
  %540 = extractvalue %dx.types.ResRet.f32 %536, 3
  %541 = fsub fast float %537, %527
  %542 = fsub fast float %538, %528
  %543 = fsub fast float %539, %529
  %544 = fsub fast float %540, %530
  %545 = fmul fast float %541, %523
  %546 = fmul fast float %542, %523
  %547 = fmul fast float %543, %523
  %548 = fmul fast float %544, %523
  %549 = fadd fast float %545, %527
  %550 = fadd fast float %546, %528
  %551 = fadd fast float %547, %529
  %552 = fadd fast float %548, %530
  br label %553

; <label>:553                                     ; preds = %532, %515
  %554 = phi float [ %549, %532 ], [ %527, %515 ]
  %555 = phi float [ %550, %532 ], [ %528, %515 ]
  %556 = phi float [ %551, %532 ], [ %529, %515 ]
  %557 = phi float [ %552, %532 ], [ %530, %515 ]
  %558 = fadd fast float %554, -5.000000e-01
  %559 = fadd fast float %556, -5.000000e-01
  %560 = fmul fast float %558, 0xBFD5555560000000
  %561 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %559, float %560)  ; FMad(a,b,c)
  %562 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %555, float 0.000000e+00)  ; FMad(a,b,c)
  %563 = fadd fast float %562, %557
  %564 = fmul fast float %558, -7.500000e-01
  %565 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %559, float %564)  ; FMad(a,b,c)
  %566 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %555, float 0.000000e+00)  ; FMad(a,b,c)
  %567 = fadd fast float %566, %557
  %568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %569 = extractvalue %dx.types.CBufRet.f32 %568, 0
  %570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %571 = extractvalue %dx.types.CBufRet.f32 %570, 0
  %572 = extractvalue %dx.types.CBufRet.f32 %570, 1
  %573 = extractvalue %dx.types.CBufRet.f32 %570, 2
  %574 = extractvalue %dx.types.CBufRet.f32 %570, 3
  %575 = fsub fast float %571, %561
  %576 = fsub fast float %572, %563
  %577 = fsub fast float %573, %565
  %578 = fsub fast float %574, %567
  %579 = fmul fast float %575, %569
  %580 = fmul fast float %576, %569
  %581 = fmul fast float %577, %569
  %582 = fmul fast float %578, %569
  %583 = fadd fast float %579, %561
  %584 = fadd fast float %580, %563
  %585 = fadd fast float %581, %565
  %586 = fadd fast float %582, %567
  %587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %588 = extractvalue %dx.types.ResRet.i32 %587, 0
  %589 = and i32 %588, 536870911
  %590 = uitofp i32 %589 to float
  %591 = fmul fast float %590, %437
  %592 = fmul fast float %590, %441
  %593 = fptoui float %591 to i32
  %594 = fptoui float %592 to i32
  %595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %596 = extractvalue %dx.types.ResRet.i32 %595, 0
  %597 = and i32 %596, 31
  %598 = lshr i32 %593, %597
  %599 = lshr i32 %594, %597
  %600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %601 = extractvalue %dx.types.ResRet.i32 %600, 0
  %602 = and i32 %601, 31
  %603 = shl i32 1, %602
  %604 = call i32 @dx.op.binary.i32(i32 40, i32 %603, i32 4)  ; UMin(a,b)
  %605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %606 = extractvalue %dx.types.ResRet.i32 %605, 0
  %607 = extractvalue %dx.types.ResRet.i32 %605, 1
  %608 = icmp eq i32 %604, 0
  br i1 %608, label %650, label %609

; <label>:609                                     ; preds = %553
  br label %610

; <label>:610                                     ; preds = %638, %609
  %611 = phi i32 [ %641, %638 ], [ 0, %609 ]
  %612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %613 = extractvalue %dx.types.ResRet.i32 %612, 0
  %614 = lshr i32 %613, 16
  %615 = and i32 %614, 31
  %616 = shl i32 %599, %615
  %617 = add i32 %616, %598
  %618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %619 = extractvalue %dx.types.ResRet.i32 %618, 0
  %620 = and i32 %619, 31
  %621 = shl i32 %617, %620
  %622 = add i32 %621, %611
  %623 = shl i32 %622, 2
  %624 = add i32 %623, 32
  %625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %624, i32 undef)  ; BufferLoad(srv,index,wot)
  %626 = extractvalue %dx.types.ResRet.i32 %625, 0
  %627 = icmp slt i32 %626, 0
  %628 = getelementptr [12 x float], [12 x float]* %37, i32 0, i32 %611
  %629 = getelementptr [12 x float], [12 x float]* %38, i32 0, i32 %611
  %630 = bitcast float* %628 to i32*
  %631 = bitcast float* %629 to i32*
  br i1 %627, label %632, label %638, !dx.controlflow.hints !61

; <label>:632                                     ; preds = %610
  %633 = and i32 %626, 1073741823
  %634 = add nuw nsw i32 %633, 20
  %635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %634, i32 undef)  ; BufferLoad(srv,index,wot)
  %636 = extractvalue %dx.types.ResRet.i32 %635, 0
  %637 = extractvalue %dx.types.ResRet.i32 %635, 1
  br label %638

; <label>:638                                     ; preds = %632, %610
  %639 = phi i32 [ %636, %632 ], [ %606, %610 ]
  %640 = phi i32 [ %637, %632 ], [ %607, %610 ]
  store i32 %639, i32* %630, align 4
  store i32 %640, i32* %631, align 4
  %641 = add nuw i32 %611, 1
  %642 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %643 = extractvalue %dx.types.CBufRet.i32 %642, 2
  %644 = icmp eq i32 %643, 0
  %645 = icmp ugt i32 %626, -1073741825
  %646 = and i1 %645, %644
  %647 = icmp ult i32 %641, %604
  %648 = and i1 %646, %647
  br i1 %648, label %610, label %649, !dx.controlflow.hints !62

; <label>:649                                     ; preds = %638
  br label %650

; <label>:650                                     ; preds = %649, %553
  %651 = phi i32 [ 0, %553 ], [ %641, %649 ]
  %652 = extractvalue %dx.types.CBufRet.f32 %415, 2
  %653 = fptoui float %652 to i32
  %654 = icmp eq i32 %653, 0
  br i1 %654, label %706, label %655

; <label>:655                                     ; preds = %650
  br label %656

; <label>:656                                     ; preds = %701, %655
  %657 = phi i32 [ %702, %701 ], [ %651, %655 ]
  %658 = phi i32 [ %703, %701 ], [ 0, %655 ]
  %659 = lshr i32 %658, 2
  %660 = and i32 %658, 3
  %661 = add nuw nsw i32 %659, 83
  %662 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 %661)  ; CBufferLoadLegacy(handle,regIndex)
  %663 = extractvalue %dx.types.CBufRet.i32 %662, 0
  %664 = extractvalue %dx.types.CBufRet.i32 %662, 1
  %665 = extractvalue %dx.types.CBufRet.i32 %662, 2
  %666 = extractvalue %dx.types.CBufRet.i32 %662, 3
  %667 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i32 0, i32 0
  store i32 %663, i32* %667, align 4
  %668 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i32 0, i32 1
  store i32 %664, i32* %668, align 4
  %669 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i32 0, i32 2
  store i32 %665, i32* %669, align 4
  %670 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i32 0, i32 3
  store i32 %666, i32* %670, align 4
  %671 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i32 0, i32 %660
  %672 = load i32, i32* %671, align 4, !tbaa !63, !noalias !67
  %673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %674 = extractvalue %dx.types.ResRet.i32 %673, 0
  %675 = lshr i32 %674, 16
  %676 = and i32 %675, 31
  %677 = shl i32 %599, %676
  %678 = add i32 %677, %598
  %679 = shl i32 %678, 2
  %680 = add i32 %679, %672
  %681 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %680, i32 undef)  ; BufferLoad(srv,index,wot)
  %682 = extractvalue %dx.types.ResRet.i32 %681, 0
  %683 = icmp eq i32 %682, 0
  br i1 %683, label %701, label %684, !dx.controlflow.hints !72

; <label>:684                                     ; preds = %656
  %685 = icmp slt i32 %682, 0
  %686 = getelementptr [12 x float], [12 x float]* %37, i32 0, i32 %657
  %687 = getelementptr [12 x float], [12 x float]* %38, i32 0, i32 %657
  %688 = bitcast float* %686 to i32*
  %689 = bitcast float* %687 to i32*
  br i1 %685, label %690, label %697, !dx.controlflow.hints !73

; <label>:690                                     ; preds = %684
  %691 = and i32 %682, 1073741823
  %692 = add i32 %672, 20
  %693 = add i32 %692, %691
  %694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %693, i32 undef)  ; BufferLoad(srv,index,wot)
  %695 = extractvalue %dx.types.ResRet.i32 %694, 0
  %696 = extractvalue %dx.types.ResRet.i32 %694, 1
  br label %697

; <label>:697                                     ; preds = %690, %684
  %698 = phi i32 [ %695, %690 ], [ %606, %684 ]
  %699 = phi i32 [ %696, %690 ], [ %607, %684 ]
  store i32 %698, i32* %688, align 4
  store i32 %699, i32* %689, align 4
  %700 = add i32 %657, 1
  br label %701

; <label>:701                                     ; preds = %697, %656
  %702 = phi i32 [ %657, %656 ], [ %700, %697 ]
  %703 = add nuw i32 %658, 1
  %704 = icmp eq i32 %703, %653
  br i1 %704, label %705, label %656

; <label>:705                                     ; preds = %701
  br label %706

; <label>:706                                     ; preds = %705, %650
  %707 = phi i32 [ %651, %650 ], [ %702, %705 ]
  %708 = icmp eq i32 %707, 1
  %709 = getelementptr [12 x float], [12 x float]* %37, i32 0, i32 0
  %710 = getelementptr [12 x float], [12 x float]* %38, i32 0, i32 0
  br i1 %708, label %711, label %714, !dx.controlflow.hints !74

; <label>:711                                     ; preds = %706
  %712 = load float, float* %709, align 4
  %713 = load float, float* %710, align 4
  br label %741

; <label>:714                                     ; preds = %706
  %715 = load float, float* %709, align 4
  %716 = load float, float* %710, align 4
  %717 = fdiv fast float 1.000000e+00, %716
  %718 = fsub fast float %715, %717
  %719 = icmp ugt i32 %707, 1
  br i1 %719, label %720, label %736

; <label>:720                                     ; preds = %714
  br label %721

; <label>:721                                     ; preds = %721, %720
  %722 = phi float [ %731, %721 ], [ %718, %720 ]
  %723 = phi float [ %732, %721 ], [ %715, %720 ]
  %724 = phi i32 [ %733, %721 ], [ 1, %720 ]
  %725 = getelementptr [12 x float], [12 x float]* %37, i32 0, i32 %724
  %726 = load float, float* %725, align 4
  %727 = getelementptr [12 x float], [12 x float]* %38, i32 0, i32 %724
  %728 = load float, float* %727, align 4
  %729 = fdiv fast float 1.000000e+00, %728
  %730 = fsub fast float %726, %729
  %731 = call float @dx.op.binary.f32(i32 36, float %722, float %730)  ; FMin(a,b)
  %732 = call float @dx.op.binary.f32(i32 35, float %723, float %726)  ; FMax(a,b)
  %733 = add nuw i32 %724, 1
  %734 = icmp eq i32 %733, %707
  br i1 %734, label %735, label %721

; <label>:735                                     ; preds = %721
  br label %736

; <label>:736                                     ; preds = %735, %714
  %737 = phi float [ %718, %714 ], [ %731, %735 ]
  %738 = phi float [ %715, %714 ], [ %732, %735 ]
  %739 = fsub fast float %738, %737
  %740 = fdiv fast float 1.000000e+00, %739
  br label %741

; <label>:741                                     ; preds = %736, %711
  %742 = phi float [ %712, %711 ], [ %738, %736 ]
  %743 = phi float [ %713, %711 ], [ %740, %736 ]
  %744 = fadd fast float %445, %742
  %745 = fmul fast float %744, %743
  %746 = call float @dx.op.unary.f32(i32 7, float %745)  ; Saturate(value)
  %747 = fmul fast float %746, 2.000000e+00
  %748 = fsub fast float 1.000000e+00, %747
  %749 = fmul fast float %583, %583
  %750 = fsub fast float %584, %749
  %751 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %750)  ; FMax(a,b)
  %752 = fdiv fast float 1.000000e+00, %751
  %753 = fmul fast float %584, %583
  %754 = fsub fast float %585, %753
  %755 = fsub fast float %748, %583
  %756 = fmul fast float %748, %748
  %757 = fsub fast float %756, %584
  %758 = fmul fast float %752, %754
  %759 = fmul fast float %758, %755
  %760 = fsub fast float %757, %759
  %761 = fmul fast float %584, %584
  %762 = fsub fast float %586, %761
  %763 = fmul fast float %754, %754
  %764 = fmul fast float %763, %752
  %765 = fsub fast float %762, %764
  %766 = fdiv fast float %760, %765
  %767 = fmul fast float %766, %754
  %768 = fsub fast float %755, %767
  %769 = fmul fast float %768, %752
  %770 = fmul fast float %769, %583
  %771 = fsub fast float 1.000000e+00, %770
  %772 = fmul fast float %766, %584
  %773 = fsub fast float %771, %772
  %774 = fmul fast float %769, %769
  %775 = fmul fast float %766, 4.000000e+00
  %776 = fmul fast float %775, %773
  %777 = fsub fast float %774, %776
  %778 = call float @dx.op.unary.f32(i32 24, float %777)  ; Sqrt(value)
  %779 = fcmp fast oge float %769, 0.000000e+00
  %780 = fsub fast float -0.000000e+00, %778
  %781 = select i1 %779, float %780, float %778
  %782 = fsub fast float %781, %769
  %783 = fdiv fast float %782, %766
  %784 = fdiv fast float %773, %782
  %785 = fmul fast float %783, 5.000000e-01
  %786 = fmul fast float %784, 2.000000e+00
  %787 = select i1 %779, float %785, float %786
  %788 = select i1 %779, float %786, float %785
  %789 = call float @dx.op.binary.f32(i32 35, float %787, float %788)  ; FMax(a,b)
  %790 = call float @dx.op.binary.f32(i32 36, float %787, float %788)  ; FMin(a,b)
  %791 = fcmp fast ogt float %748, %789
  %792 = fsub fast float %748, %790
  %793 = fsub fast float %748, %789
  %794 = fsub fast float %789, %790
  %795 = select i1 %791, float %793, float %794
  %796 = fmul float %792, %795
  %797 = select i1 %791, float %790, float %748
  %798 = fcmp fast ogt float %748, %790
  %799 = fmul fast float %797, %789
  %800 = fadd fast float %797, %789
  %801 = fmul fast float %800, %583
  %802 = fadd fast float %799, %584
  %803 = fsub fast float %802, %801
  %804 = fdiv fast float %803, %796
  %805 = select i1 %798, float %804, float 0.000000e+00
  %806 = fsub fast float 1.000000e+00, %805
  %807 = select i1 %791, float %806, float %805
  %808 = call float @dx.op.unary.f32(i32 7, float %807)  ; Saturate(value)
  %809 = extractvalue %dx.types.CBufRet.f32 %568, 3
  %810 = fmul fast float %809, %808
  %811 = fsub fast float 1.000000e+00, %810
  br label %812

; <label>:812                                     ; preds = %741, %453, %418, %414, %409
  %813 = phi float [ 1.000000e+00, %409 ], [ %811, %741 ], [ 1.000000e+00, %418 ], [ 1.000000e+00, %453 ], [ 1.000000e+00, %414 ]
  %814 = fcmp fast ogt float %410, 0.000000e+00
  br i1 %814, label %815, label %970, !dx.controlflow.hints !75

; <label>:815                                     ; preds = %812
  %816 = fadd fast float %374, %360
  %817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %818 = extractvalue %dx.types.CBufRet.f32 %817, 2
  %819 = extractvalue %dx.types.CBufRet.f32 %817, 3
  %820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %821 = extractvalue %dx.types.CBufRet.f32 %820, 1
  %822 = call float @dx.op.binary.f32(i32 35, float %816, float 0.000000e+00)  ; FMax(a,b)
  %823 = fadd fast float %822, 0x3F10000000000000
  %824 = fcmp fast oeq float %821, 0.000000e+00
  br i1 %824, label %826, label %825, !dx.controlflow.hints !76

; <label>:825                                     ; preds = %815
  br label %893

; <label>:826                                     ; preds = %815
  %827 = extractvalue %dx.types.CBufRet.f32 %817, 1
  %828 = extractvalue %dx.types.CBufRet.f32 %817, 0
  %829 = fmul fast float %828, %367
  %830 = fmul fast float %827, %368
  %831 = fadd fast float %829, 5.000000e-01
  %832 = call float @dx.op.unary.f32(i32 27, float %831)  ; Round_ni(value)
  %833 = fadd fast float %830, 5.000000e-01
  %834 = call float @dx.op.unary.f32(i32 27, float %833)  ; Round_ni(value)
  %835 = fsub fast float %831, %832
  %836 = fsub fast float %833, %834
  %837 = fadd fast float %832, -5.000000e-01
  %838 = fadd fast float %834, -5.000000e-01
  %839 = fmul fast float %835, 2.000000e+00
  %840 = fsub fast float 3.000000e+00, %839
  %841 = fadd fast float %839, 1.000000e+00
  %842 = fsub fast float 2.000000e+00, %835
  %843 = bitcast float %840 to i32
  %844 = sub nsw i32 2129859010, %843
  %845 = bitcast i32 %844 to float
  %846 = fmul fast float %845, %842
  %847 = fadd fast float %846, -1.000000e+00
  %848 = bitcast float %841 to i32
  %849 = sub nsw i32 2129859010, %848
  %850 = bitcast i32 %849 to float
  %851 = fmul fast float %850, %835
  %852 = fadd fast float %851, 1.000000e+00
  %853 = fmul fast float %836, 2.000000e+00
  %854 = fsub fast float 3.000000e+00, %853
  %855 = fadd fast float %853, 1.000000e+00
  %856 = fsub fast float 2.000000e+00, %836
  %857 = bitcast float %854 to i32
  %858 = sub nsw i32 2129859010, %857
  %859 = bitcast i32 %858 to float
  %860 = fmul fast float %859, %856
  %861 = fadd fast float %860, -1.000000e+00
  %862 = bitcast float %855 to i32
  %863 = sub nsw i32 2129859010, %862
  %864 = bitcast i32 %863 to float
  %865 = fmul fast float %864, %836
  %866 = fadd fast float %865, 1.000000e+00
  %867 = fadd fast float %847, %837
  %868 = fmul fast float %867, %818
  %869 = fadd fast float %861, %838
  %870 = fmul fast float %869, %819
  %871 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %12, %dx.types.Handle %29, float %868, float %870, float undef, float undef, i32 0, i32 0, i32 undef, float %823)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %872 = extractvalue %dx.types.ResRet.f32 %871, 0
  %873 = fmul fast float %872, %840
  %874 = fadd fast float %852, %837
  %875 = fmul fast float %874, %818
  %876 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %12, %dx.types.Handle %29, float %875, float %870, float undef, float undef, i32 0, i32 0, i32 undef, float %823)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %877 = extractvalue %dx.types.ResRet.f32 %876, 0
  %878 = fmul fast float %877, %841
  %879 = fadd fast float %866, %838
  %880 = fmul fast float %879, %819
  %881 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %12, %dx.types.Handle %29, float %868, float %880, float undef, float undef, i32 0, i32 0, i32 undef, float %823)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %882 = extractvalue %dx.types.ResRet.f32 %881, 0
  %883 = fmul fast float %882, %840
  %884 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %12, %dx.types.Handle %29, float %875, float %880, float undef, float undef, i32 0, i32 0, i32 undef, float %823)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %885 = extractvalue %dx.types.ResRet.f32 %884, 0
  %886 = fmul fast float %885, %841
  %887 = fadd fast float %886, %883
  %888 = fmul fast float %887, %855
  %889 = fadd fast float %878, %873
  %890 = fmul fast float %889, %854
  %891 = fadd fast float %890, %888
  %892 = fmul fast float %891, 6.250000e-02
  br label %970

; <label>:893                                     ; preds = %939, %825
  %894 = phi float [ %934, %939 ], [ 0.000000e+00, %825 ]
  %895 = phi float [ %936, %939 ], [ 0.000000e+00, %825 ]
  %896 = phi i32 [ %940, %939 ], [ 0, %825 ]
  %897 = mul i32 %896, 2
  %898 = add i32 0, %897
  %899 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %898
  %900 = load float, float* %899, align 4
  %901 = mul i32 %896, 2
  %902 = add i32 1, %901
  %903 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %902
  %904 = load float, float* %903, align 4
  %905 = call float @dx.op.tertiary.f32(i32 46, float %904, float -0.000000e+00, float %900)  ; FMad(a,b,c)
  %906 = fmul fast float %905, %821
  %907 = fmul fast float %904, %821
  %908 = fadd fast float %906, %367
  %909 = fadd fast float %907, %368
  %910 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %12, %dx.types.Handle %28, float %908, float %909, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %911 = extractvalue %dx.types.ResRet.f32 %910, 0
  %912 = extractvalue %dx.types.ResRet.f32 %910, 1
  %913 = extractvalue %dx.types.ResRet.f32 %910, 2
  %914 = extractvalue %dx.types.ResRet.f32 %910, 3
  %915 = getelementptr inbounds [4 x float], [4 x float]* %42, i32 0, i32 0
  store float %911, float* %915, align 4
  %916 = getelementptr inbounds [4 x float], [4 x float]* %42, i32 0, i32 1
  store float %912, float* %916, align 4
  %917 = getelementptr inbounds [4 x float], [4 x float]* %42, i32 0, i32 2
  store float %913, float* %917, align 4
  %918 = getelementptr inbounds [4 x float], [4 x float]* %42, i32 0, i32 3
  store float %914, float* %918, align 4
  %919 = fsub fast float %911, %823
  %920 = fcmp fast olt float %919, 0.000000e+00
  %921 = select i1 %920, float 0.000000e+00, float 1.000000e+00
  %922 = fadd fast float %921, %894
  %923 = fmul fast float %921, %919
  %924 = fadd fast float %923, %895
  br label %925

; <label>:925                                     ; preds = %925, %893
  %926 = phi i32 [ 1, %893 ], [ %937, %925 ]
  %927 = phi float [ %924, %893 ], [ %936, %925 ]
  %928 = phi float [ %922, %893 ], [ %934, %925 ]
  %929 = getelementptr [4 x float], [4 x float]* %42, i32 0, i32 %926
  %930 = load float, float* %929, align 4, !tbaa !77, !noalias !67
  %931 = fsub fast float %930, %823
  %932 = fcmp fast olt float %931, 0.000000e+00
  %933 = select i1 %932, float 0.000000e+00, float 1.000000e+00
  %934 = fadd fast float %933, %928
  %935 = fmul fast float %933, %931
  %936 = fadd fast float %935, %927
  %937 = add nuw nsw i32 %926, 1
  %938 = icmp eq i32 %937, 4
  br i1 %938, label %939, label %925, !llvm.loop !79

; <label>:939                                     ; preds = %925
  %940 = add nuw nsw i32 %896, 1
  %941 = icmp eq i32 %940, 8
  br i1 %941, label %942, label %893, !llvm.loop !81

; <label>:942                                     ; preds = %939
  %943 = fdiv fast float 1.000000e+00, %934
  %944 = fmul fast float %943, %936
  %945 = fdiv fast float 1.000000e+00, %823
  %946 = fmul fast float %944, %945
  %947 = call float @dx.op.unary.f32(i32 7, float %946)  ; Saturate(value)
  %948 = call float @dx.op.binary.f32(i32 35, float %947, float 0.000000e+00)  ; FMax(a,b)
  %949 = fmul fast float %934, 3.125000e-02
  %950 = call float @dx.op.unary.f32(i32 7, float %949)  ; Saturate(value)
  %951 = fmul fast float %950, 2.000000e+00
  %952 = fadd fast float %951, -1.000000e+00
  %953 = fcmp fast ogt float %952, 0.000000e+00
  %954 = fcmp fast olt float %952, 0.000000e+00
  %955 = zext i1 %953 to i32
  %956 = zext i1 %954 to i32
  %957 = sub nsw i32 %955, %956
  %958 = sitofp i32 %957 to float
  %959 = fmul fast float %958, %952
  %960 = fsub fast float 1.000000e+00, %959
  %961 = fmul fast float %960, %960
  %962 = fmul fast float %961, %960
  %963 = fsub fast float %960, %962
  %964 = fmul fast float %963, %948
  %965 = fsub fast float 1.000000e+00, %962
  %966 = fsub fast float %965, %964
  %967 = fmul fast float %958, 5.000000e-01
  %968 = fmul fast float %967, %966
  %969 = fsub fast float 5.000000e-01, %968
  br label %970

; <label>:970                                     ; preds = %942, %826, %812
  %971 = phi float [ 1.000000e+00, %812 ], [ %892, %826 ], [ %969, %942 ]
  %972 = fsub fast float %971, %813
  %973 = fmul fast float %972, %410
  %974 = fadd fast float %973, %813
  br label %975

; <label>:975                                     ; preds = %970, %317
  %976 = phi float [ %974, %970 ], [ 1.000000e+00, %317 ]
  %977 = call float @dx.op.binary.f32(i32 36, float %976, float %976)  ; FMin(a,b)
  %978 = call float @dx.op.binary.f32(i32 36, float %976, float %977)  ; FMin(a,b)
  %979 = fcmp fast ogt float %978, 0.000000e+00
  br i1 %979, label %980, label %1145, !dx.controlflow.hints !82

; <label>:980                                     ; preds = %975
  %981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %982 = extractvalue %dx.types.CBufRet.f32 %981, 0
  %983 = extractvalue %dx.types.CBufRet.f32 %981, 1
  %984 = extractvalue %dx.types.CBufRet.f32 %981, 2
  %985 = extractvalue %dx.types.CBufRet.f32 %981, 3
  %986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %987 = extractvalue %dx.types.CBufRet.f32 %986, 0
  %988 = extractvalue %dx.types.CBufRet.f32 %986, 1
  %989 = extractvalue %dx.types.CBufRet.f32 %986, 2
  %990 = extractvalue %dx.types.CBufRet.f32 %986, 3
  %991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %992 = extractvalue %dx.types.CBufRet.f32 %991, 0
  %993 = extractvalue %dx.types.CBufRet.f32 %991, 1
  %994 = extractvalue %dx.types.CBufRet.f32 %991, 2
  %995 = extractvalue %dx.types.CBufRet.f32 %991, 3
  %996 = fmul fast float %982, %216
  %997 = call float @dx.op.tertiary.f32(i32 46, float %217, float %983, float %996)  ; FMad(a,b,c)
  %998 = call float @dx.op.tertiary.f32(i32 46, float %218, float %984, float %997)  ; FMad(a,b,c)
  %999 = fadd fast float %998, %985
  %1000 = fmul fast float %987, %216
  %1001 = call float @dx.op.tertiary.f32(i32 46, float %217, float %988, float %1000)  ; FMad(a,b,c)
  %1002 = call float @dx.op.tertiary.f32(i32 46, float %218, float %989, float %1001)  ; FMad(a,b,c)
  %1003 = fadd fast float %1002, %990
  %1004 = fmul fast float %992, %216
  %1005 = call float @dx.op.tertiary.f32(i32 46, float %217, float %993, float %1004)  ; FMad(a,b,c)
  %1006 = call float @dx.op.tertiary.f32(i32 46, float %218, float %994, float %1005)  ; FMad(a,b,c)
  %1007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %1008 = extractvalue %dx.types.CBufRet.f32 %1007, 0
  %1009 = extractvalue %dx.types.CBufRet.f32 %1007, 1
  %1010 = extractvalue %dx.types.CBufRet.f32 %1007, 3
  %1011 = fmul fast float %1010, %999
  %1012 = fmul fast float %1010, %1003
  %1013 = fadd fast float %1011, %1008
  %1014 = fadd fast float %1012, %1009
  %1015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %1016 = extractvalue %dx.types.CBufRet.f32 %1015, 0
  %1017 = extractvalue %dx.types.CBufRet.f32 %1015, 1
  %1018 = fsub fast float %1013, %1016
  %1019 = fsub fast float %1014, %1017
  %1020 = fcmp fast olt float %1018, 0.000000e+00
  %1021 = fcmp fast olt float %1019, 0.000000e+00
  %1022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %1023 = extractvalue %dx.types.CBufRet.f32 %1022, 0
  %1024 = extractvalue %dx.types.CBufRet.f32 %1022, 1
  %1025 = extractvalue %dx.types.CBufRet.f32 %1022, 2
  %1026 = extractvalue %dx.types.CBufRet.f32 %1022, 3
  %1027 = select i1 %1020, float %1023, float %1025
  %1028 = select i1 %1021, float %1024, float %1026
  %1029 = fmul fast float %1027, %1018
  %1030 = fmul fast float %1028, %1019
  %1031 = call float @dx.op.unary.f32(i32 6, float %1029)  ; FAbs(value)
  %1032 = call float @dx.op.unary.f32(i32 6, float %1030)  ; FAbs(value)
  %1033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %1034 = extractvalue %dx.types.CBufRet.f32 %1033, 0
  %1035 = call float @dx.op.binary.f32(i32 35, float %1031, float %1032)  ; FMax(a,b)
  %1036 = fsub fast float %1034, %1035
  %1037 = call float @dx.op.unary.f32(i32 7, float %1036)  ; Saturate(value)
  %1038 = fcmp fast ogt float %1037, 0.000000e+00
  br i1 %1038, label %1039, label %1080, !dx.controlflow.hints !83

; <label>:1039                                    ; preds = %980
  %1040 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %27, float %1013, float %1014, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1041 = extractvalue %dx.types.ResRet.f32 %1040, 1
  %1042 = fcmp fast ogt float %1041, 0.000000e+00
  br i1 %1042, label %1043, label %1075, !dx.controlflow.hints !84

; <label>:1043                                    ; preds = %1039
  %1044 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %27, float %1013, float %1014, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1045 = extractvalue %dx.types.ResRet.f32 %1044, 0
  %1046 = extractvalue %dx.types.ResRet.f32 %1044, 1
  %1047 = extractvalue %dx.types.ResRet.f32 %1044, 2
  %1048 = extractvalue %dx.types.ResRet.f32 %1044, 3
  %1049 = fsub fast float 1.000000e+00, %995
  %1050 = fsub fast float %1049, %1006
  %1051 = fmul fast float %1050, 0x400921FB60000000
  %1052 = fadd fast float %1051, 0x3FF921FB60000000
  %1053 = call float @dx.op.unary.f32(i32 13, float %1052)  ; Sin(value)
  %1054 = fadd fast float %1053, -1.000000e+00
  %1055 = fmul fast float %1054, 0x3FD45F3060000000
  %1056 = fmul fast float %1050, 0x401921FB60000000
  %1057 = fadd fast float %1056, 0x400921FB60000000
  %1058 = call float @dx.op.unary.f32(i32 13, float %1057)  ; Sin(value)
  %1059 = fadd fast float %1058, 0x3E7777A5C0000000
  %1060 = fmul fast float %1059, 0x3FC45F3060000000
  %1061 = fmul fast float %1050, 0x4022D97C80000000
  %1062 = fadd fast float %1061, 0x4012D97C80000000
  %1063 = call float @dx.op.unary.f32(i32 13, float %1062)  ; Sin(value)
  %1064 = fadd fast float %1063, 1.000000e+00
  %1065 = fmul fast float %1064, 0x3FBB2995E0000000
  %1066 = fmul fast float %1050, 0x402921FB60000000
  %1067 = fadd fast float %1066, 0x401921FB60000000
  %1068 = call float @dx.op.unary.f32(i32 13, float %1067)  ; Sin(value)
  %1069 = fadd fast float %1068, 0xBE8777A5C0000000
  %1070 = fmul fast float %1069, 0x3FB45F3060000000
  %1071 = call float @dx.op.dot4.f32(i32 56, float %1045, float %1046, float %1047, float %1048, float %1055, float %1060, float %1065, float %1070)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1072 = fmul fast float %1071, 0xBFF7154760000000
  %1073 = call float @dx.op.unary.f32(i32 21, float %1072)  ; Exp(value)
  %1074 = call float @dx.op.unary.f32(i32 7, float %1073)  ; Saturate(value)
  br label %1075

; <label>:1075                                    ; preds = %1043, %1039
  %1076 = phi float [ %1074, %1043 ], [ 1.000000e+00, %1039 ]
  %1077 = fadd fast float %1076, -1.000000e+00
  %1078 = fmul fast float %1077, %1037
  %1079 = fadd fast float %1078, 1.000000e+00
  br label %1080

; <label>:1080                                    ; preds = %1075, %980
  %1081 = phi float [ %1079, %1075 ], [ 1.000000e+00, %980 ]
  %1082 = fmul fast float %1081, %976
  %1083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1084 = extractvalue %dx.types.CBufRet.f32 %1083, 0
  %1085 = extractvalue %dx.types.CBufRet.f32 %1083, 1
  %1086 = extractvalue %dx.types.CBufRet.f32 %1083, 2
  %1087 = fadd fast float %1084, %216
  %1088 = fadd fast float %1085, %217
  %1089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %1090 = extractvalue %dx.types.CBufRet.f32 %1089, 1
  %1091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1092 = extractvalue %dx.types.CBufRet.f32 %1091, 0
  %1093 = extractvalue %dx.types.CBufRet.f32 %1091, 1
  %1094 = extractvalue %dx.types.CBufRet.f32 %1091, 2
  %1095 = fsub fast float -0.000000e+00, %1087
  %1096 = fsub fast float -0.000000e+00, %1088
  %1097 = fsub fast float %219, %1086
  %1098 = fadd fast float %1097, %1090
  %1099 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1095, float %1096, float %1098)  ; Dot3(ax,ay,az,bx,by,bz)
  %1100 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1092, float %1093, float %1094)  ; Dot3(ax,ay,az,bx,by,bz)
  %1101 = fdiv fast float 1.000000e+00, %1100
  %1102 = fmul fast float %1101, %1099
  %1103 = fmul fast float %1092, %1102
  %1104 = fmul fast float %1093, %1102
  %1105 = fadd fast float %1103, %1087
  %1106 = fadd fast float %1104, %1088
  %1107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %1108 = extractvalue %dx.types.CBufRet.f32 %1107, 0
  %1109 = extractvalue %dx.types.CBufRet.f32 %1107, 1
  %1110 = fsub fast float %1105, %1108
  %1111 = fsub fast float %1106, %1109
  %1112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %1113 = extractvalue %dx.types.CBufRet.f32 %1112, 2
  %1114 = extractvalue %dx.types.CBufRet.f32 %1112, 3
  %1115 = fmul fast float %1110, %1113
  %1116 = fmul fast float %1111, %1114
  %1117 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %1118 = extractvalue %dx.types.CBufRet.i32 %1117, 3
  %1119 = icmp eq i32 %1118, 0
  br i1 %1119, label %1125, label %1120, !dx.controlflow.hints !85

; <label>:1120                                    ; preds = %1080
  %1121 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %26, float %1115, float %1116, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1122 = extractvalue %dx.types.ResRet.f32 %1121, 0
  %1123 = extractvalue %dx.types.ResRet.f32 %1121, 1
  %1124 = extractvalue %dx.types.ResRet.f32 %1121, 2
  br label %1130

; <label>:1125                                    ; preds = %1080
  %1126 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %27, float %1115, float %1116, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1127 = extractvalue %dx.types.ResRet.f32 %1126, 0
  %1128 = extractvalue %dx.types.ResRet.f32 %1126, 1
  %1129 = extractvalue %dx.types.ResRet.f32 %1126, 2
  br label %1130

; <label>:1130                                    ; preds = %1125, %1120
  %1131 = phi float [ %1122, %1120 ], [ %1127, %1125 ]
  %1132 = phi float [ %1123, %1120 ], [ %1128, %1125 ]
  %1133 = phi float [ %1124, %1120 ], [ %1129, %1125 ]
  %1134 = extractvalue %dx.types.CBufRet.f32 %1089, 2
  %1135 = fmul fast float %1134, %1131
  %1136 = extractvalue %dx.types.CBufRet.f32 %1089, 0
  %1137 = fsub fast float %1102, %1136
  %1138 = fsub fast float %1137, %1135
  %1139 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1138)  ; FMax(a,b)
  %1140 = fmul fast float %1139, %1132
  %1141 = call float @dx.op.binary.f32(i32 36, float %1133, float %1140)  ; FMin(a,b)
  %1142 = fmul fast float %1141, 0xBFF7154760000000
  %1143 = call float @dx.op.unary.f32(i32 21, float %1142)  ; Exp(value)
  %1144 = fmul fast float %1082, %1143
  br label %1145

; <label>:1145                                    ; preds = %1130, %975
  %1146 = phi float [ %1144, %1130 ], [ %976, %975 ]
  %1147 = call float @dx.op.binary.f32(i32 36, float %1146, float %1146)  ; FMin(a,b)
  %1148 = call float @dx.op.binary.f32(i32 36, float %1146, float %1147)  ; FMin(a,b)
  %1149 = fcmp fast ogt float %1148, 0.000000e+00
  br i1 %1149, label %1150, label %1279, !dx.controlflow.hints !86

; <label>:1150                                    ; preds = %1145
  %1151 = icmp eq i32 %313, 0
  br i1 %1151, label %1229, label %1152, !dx.controlflow.hints !87

; <label>:1152                                    ; preds = %1150
  %1153 = fsub fast float %218, %312
  %1154 = fcmp fast ogt float %1153, 0.000000e+00
  %1155 = fmul fast float %318, 5.120000e+02
  %1156 = fmul fast float %319, 5.120000e+02
  %1157 = fmul fast float %320, 5.120000e+02
  %1158 = fadd fast float %1157, %218
  %1159 = fsub fast float %312, %1158
  %1160 = fmul fast float %1159, 2.000000e+00
  %1161 = fadd fast float %1160, %1158
  %1162 = select i1 %1154, float %1161, float %1158
  %1163 = fsub fast float %1162, %218
  %1164 = call float @dx.op.dot3.f32(i32 55, float %1155, float %1156, float %1163, float %1155, float %1156, float %1163)  ; Dot3(ax,ay,az,bx,by,bz)
  %1165 = call float @dx.op.unary.f32(i32 25, float %1164)  ; Rsqrt(value)
  %1166 = fmul fast float %1165, %1155
  %1167 = fmul fast float %1165, %1156
  %1168 = fmul fast float %1165, %1163
  %1169 = fsub fast float %312, %218
  %1170 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %1169)  ; Dot3(ax,ay,az,bx,by,bz)
  %1171 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1166, float %1167, float %1168)  ; Dot3(ax,ay,az,bx,by,bz)
  %1172 = fdiv fast float 1.000000e+00, %1171
  %1173 = fmul fast float %1172, %1170
  %1174 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %1153, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1175 = fcmp fast ogt float %1174, 0.000000e+00
  %1176 = fcmp fast olt float %1174, 0.000000e+00
  %1177 = zext i1 %1175 to i32
  %1178 = zext i1 %1176 to i32
  %1179 = sub nsw i32 %1177, %1178
  %1180 = sitofp i32 %1179 to float
  %1181 = fsub fast float %1162, %312
  %1182 = call float @dx.op.dot3.f32(i32 55, float %1155, float %1156, float %1181, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1183 = fcmp fast ogt float %1182, 0.000000e+00
  %1184 = fcmp fast olt float %1182, 0.000000e+00
  %1185 = zext i1 %1183 to i32
  %1186 = zext i1 %1184 to i32
  %1187 = sub nsw i32 %1185, %1186
  %1188 = sitofp i32 %1187 to float
  %1189 = fcmp fast une float %1180, %1188
  br i1 %1189, label %1190, label %1200, !dx.controlflow.hints !88

; <label>:1190                                    ; preds = %1152
  %1191 = fmul fast float %1173, %1168
  %1192 = fmul fast float %1173, %1167
  %1193 = fmul fast float %1173, %1166
  %1194 = fmul fast float %1193, %1193
  %1195 = fmul fast float %1192, %1192
  %1196 = fadd fast float %1194, %1195
  %1197 = fmul fast float %1191, %1191
  %1198 = fadd fast float %1196, %1197
  %1199 = call float @dx.op.unary.f32(i32 24, float %1198)  ; Sqrt(value)
  br label %1210

; <label>:1200                                    ; preds = %1152
  %1201 = icmp slt i32 %1179, 0
  br i1 %1201, label %1202, label %1210, !dx.controlflow.hints !89

; <label>:1202                                    ; preds = %1200
  %1203 = fsub fast float %218, %1162
  %1204 = fmul fast float %1155, %1155
  %1205 = fmul fast float %1156, %1156
  %1206 = fadd fast float %1204, %1205
  %1207 = fmul fast float %1203, %1203
  %1208 = fadd fast float %1206, %1207
  %1209 = call float @dx.op.unary.f32(i32 24, float %1208)  ; Sqrt(value)
  br label %1210

; <label>:1210                                    ; preds = %1202, %1200, %1190
  %1211 = phi float [ %1199, %1190 ], [ %1209, %1202 ], [ 0.000000e+00, %1200 ]
  %1212 = fsub fast float -0.000000e+00, %1211
  %1213 = select i1 %1154, float -0.000000e+00, float %1212
  %1214 = fmul fast float %309, 0x3FF7154760000000
  %1215 = fmul fast float %1214, %1213
  %1216 = fmul fast float %310, 0x3FF7154760000000
  %1217 = fmul fast float %1216, %1213
  %1218 = fmul fast float %311, 0x3FF7154760000000
  %1219 = fmul fast float %1218, %1213
  %1220 = call float @dx.op.unary.f32(i32 21, float %1215)  ; Exp(value)
  %1221 = call float @dx.op.unary.f32(i32 21, float %1217)  ; Exp(value)
  %1222 = call float @dx.op.unary.f32(i32 21, float %1219)  ; Exp(value)
  %1223 = call float @dx.op.unary.f32(i32 7, float %1220)  ; Saturate(value)
  %1224 = call float @dx.op.unary.f32(i32 7, float %1221)  ; Saturate(value)
  %1225 = call float @dx.op.unary.f32(i32 7, float %1222)  ; Saturate(value)
  %1226 = fmul fast float %1223, %329
  %1227 = fmul fast float %1224, %330
  %1228 = fmul fast float %1225, %331
  br label %1229

; <label>:1229                                    ; preds = %1210, %1150
  %1230 = phi float [ %1226, %1210 ], [ %329, %1150 ]
  %1231 = phi float [ %1227, %1210 ], [ %330, %1150 ]
  %1232 = phi float [ %1228, %1210 ], [ %331, %1150 ]
  %1233 = fmul fast float %1230, %1146
  %1234 = fmul fast float %1231, %1146
  %1235 = fmul fast float %1232, %1146
  br i1 %118, label %1236, label %1264, !dx.controlflow.hints !90

; <label>:1236                                    ; preds = %1229
  br i1 %120, label %1237, label %1260, !dx.controlflow.hints !91

; <label>:1237                                    ; preds = %1236
  %1238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1239 = extractvalue %dx.types.CBufRet.f32 %1238, 0
  %1240 = extractvalue %dx.types.CBufRet.f32 %1238, 1
  %1241 = fmul fast float %1240, 0x3FE5555560000000
  %1242 = fmul fast float %319, 0xBFF88F51C0000000
  %1243 = fmul fast float %320, 0x3FF88F51C0000000
  %1244 = fmul fast float %318, 0xBFF88F51C0000000
  %1245 = fmul fast float %1239, 0x3FEC5BF8C0000000
  %1246 = fmul fast float %1242, %1241
  %1247 = fmul fast float %1243, %1241
  %1248 = fmul fast float %1244, %1241
  %1249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1250 = extractvalue %dx.types.CBufRet.f32 %1249, 1
  %1251 = fmul fast float %1250, 0x3FDF454380000000
  %1252 = extractvalue %dx.types.CBufRet.f32 %1249, 2
  %1253 = fmul fast float %1252, 0xBFDF454380000000
  %1254 = extractvalue %dx.types.CBufRet.f32 %1249, 0
  %1255 = fmul fast float %1254, 0x3FDF454380000000
  %1256 = call float @dx.op.dot4.f32(i32 56, float %1245, float %1246, float %1247, float %1248, float 0x3FD20DD760000000, float %1251, float %1253, float %1255)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1257 = fmul fast float %1256, %1233
  %1258 = fmul fast float %1256, %1234
  %1259 = fmul fast float %1256, %1235
  br label %1279

; <label>:1260                                    ; preds = %1236
  %1261 = fmul fast float %1233, 0x3FE921FB60000000
  %1262 = fmul fast float %1234, 0x3FE921FB60000000
  %1263 = fmul fast float %1235, 0x3FE921FB60000000
  br label %1279

; <label>:1264                                    ; preds = %1229
  %1265 = call float @dx.op.dot3.f32(i32 55, float %318, float %319, float %320, float %222, float %223, float %224)  ; Dot3(ax,ay,az,bx,by,bz)
  %1266 = fcmp fast ogt float %162, 0.000000e+00
  %1267 = select i1 %1266, float 1.000000e+00, float -1.000000e+00
  %1268 = fmul fast float %1267, 5.000000e-01
  %1269 = fmul fast float %1268, %1265
  %1270 = fmul fast float %1267, %162
  %1271 = fadd fast float %1269, 4.921875e-01
  %1272 = fadd fast float %1270, -3.125000e-02
  %1273 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %27, float %1271, float 0x3FB25F3060000000, float %1272, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1274 = extractvalue %dx.types.ResRet.f32 %1273, 0
  %1275 = fmul fast float %1274, 0x400921FB60000000
  %1276 = fmul fast float %1275, %1233
  %1277 = fmul fast float %1275, %1234
  %1278 = fmul fast float %1275, %1235
  br label %1279

; <label>:1279                                    ; preds = %1264, %1260, %1237, %1145, %308
  %1280 = phi float [ 0.000000e+00, %308 ], [ 0.000000e+00, %1145 ], [ %1257, %1237 ], [ %1261, %1260 ], [ %1276, %1264 ]
  %1281 = phi float [ 0.000000e+00, %308 ], [ 0.000000e+00, %1145 ], [ %1258, %1237 ], [ %1262, %1260 ], [ %1277, %1264 ]
  %1282 = phi float [ 0.000000e+00, %308 ], [ 0.000000e+00, %1145 ], [ %1259, %1237 ], [ %1263, %1260 ], [ %1278, %1264 ]
  %1283 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1284 = extractvalue %dx.types.CBufRet.i32 %1283, 0
  %1285 = icmp eq i32 %1284, 0
  br i1 %1285, label %1744, label %1286, !dx.controlflow.hints !92

; <label>:1286                                    ; preds = %1279
  %1287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1288 = extractvalue %dx.types.CBufRet.f32 %1287, 0
  %1289 = extractvalue %dx.types.CBufRet.f32 %1287, 1
  %1290 = extractvalue %dx.types.CBufRet.f32 %1287, 2
  %1291 = fadd fast float %1288, %216
  %1292 = fadd fast float %1289, %217
  %1293 = fadd fast float %1290, %218
  %1294 = getelementptr inbounds [3 x float], [3 x float]* %41, i32 0, i32 0
  store float %1291, float* %1294, align 4
  %1295 = getelementptr inbounds [3 x float], [3 x float]* %41, i32 0, i32 1
  store float %1292, float* %1295, align 4
  %1296 = getelementptr inbounds [3 x float], [3 x float]* %41, i32 0, i32 2
  store float %1293, float* %1296, align 4
  br label %1297

; <label>:1297                                    ; preds = %1297, %1286
  %1298 = phi i32 [ 0, %1286 ], [ %1312, %1297 ]
  %1299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1298, i32 0)  ; BufferLoad(srv,index,wot)
  %1300 = extractvalue %dx.types.ResRet.i32 %1299, 0
  %1301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1298, i32 4)  ; BufferLoad(srv,index,wot)
  %1302 = extractvalue %dx.types.ResRet.i32 %1301, 0
  %1303 = lshr i32 %1300, 30
  %1304 = and i32 %1300, 1048575
  %1305 = uitofp i32 %1304 to float
  %1306 = fadd fast float %1305, -5.242880e+05
  %1307 = and i32 %1302, 65535
  %1308 = lshr i32 %1302, 16
  %1309 = getelementptr [3 x float], [3 x float]* %41, i32 0, i32 %1303
  %1310 = load float, float* %1309, align 4, !tbaa !77, !noalias !93
  %1311 = fcmp fast olt float %1310, %1306
  %1312 = select i1 %1311, i32 %1307, i32 %1308
  %1313 = and i32 %1312, 32768
  %1314 = icmp eq i32 %1313, 0
  br i1 %1314, label %1297, label %1315

; <label>:1315                                    ; preds = %1297
  %1316 = and i32 %1312, 32767
  %1317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1316, i32 undef)  ; BufferLoad(srv,index,wot)
  %1318 = extractvalue %dx.types.ResRet.i32 %1317, 0
  %1319 = lshr i32 %1318, 22
  br label %1320

; <label>:1320                                    ; preds = %1320, %1315
  %1321 = phi i32 [ 0, %1315 ], [ %1337, %1320 ]
  %1322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %1321, i32 0)  ; BufferLoad(srv,index,wot)
  %1323 = extractvalue %dx.types.ResRet.i32 %1322, 0
  %1324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %1321, i32 4)  ; BufferLoad(srv,index,wot)
  %1325 = extractvalue %dx.types.ResRet.i32 %1324, 0
  %1326 = lshr i32 %1323, 30
  %1327 = and i32 %1323, 1048575
  %1328 = uitofp i32 %1327 to float
  %1329 = fadd fast float %1328, -5.242880e+05
  %1330 = and i32 %1325, 65535
  %1331 = lshr i32 %1325, 16
  %1332 = icmp ne i32 %1326, 3
  %1333 = getelementptr [3 x float], [3 x float]* %41, i32 0, i32 %1326
  %1334 = load float, float* %1333, align 4, !tbaa !77, !noalias !93
  %1335 = fcmp fast olt float %1334, %1329
  %1336 = select i1 %1335, i32 %1330, i32 %1331
  %1337 = select i1 %1332, i32 %1336, i32 %1325
  %1338 = icmp eq i32 %1326, 3
  br i1 %1338, label %1339, label %1320

; <label>:1339                                    ; preds = %1320
  %1340 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1337)  ; Countbits(value)
  %1341 = add i32 %1340, %1319
  %1342 = icmp eq i32 %1341, 0
  br i1 %1342, label %1744, label %1343

; <label>:1343                                    ; preds = %1339
  %1344 = and i32 %1318, 4194303
  br label %1345

; <label>:1345                                    ; preds = %1737, %1343
  %1346 = phi float [ %1738, %1737 ], [ %1280, %1343 ]
  %1347 = phi float [ %1739, %1737 ], [ %1281, %1343 ]
  %1348 = phi float [ %1740, %1737 ], [ %1282, %1343 ]
  %1349 = phi i32 [ %1741, %1737 ], [ 0, %1343 ]
  %1350 = phi i32 [ %1352, %1737 ], [ %1344, %1343 ]
  %1351 = phi i32 [ %1368, %1737 ], [ %1337, %1343 ]
  %1352 = add i32 %1350, 1
  %1353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1350, i32 undef)  ; BufferLoad(srv,index,wot)
  %1354 = extractvalue %dx.types.ResRet.i32 %1353, 0
  %1355 = icmp ult i32 %1349, %1319
  br i1 %1355, label %1367, label %1356, !dx.controlflow.hints !94

; <label>:1356                                    ; preds = %1345
  %1357 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1351)  ; FirstbitLo(value)
  %1358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 22)  ; CBufferLoadLegacy(handle,regIndex)
  %1359 = extractvalue %dx.types.CBufRet.f32 %1358, 0
  %1360 = uitofp i32 %1357 to float
  %1361 = fadd fast float %1359, %1360
  %1362 = fptosi float %1361 to i32
  %1363 = and i32 %1357, 31
  %1364 = shl i32 1, %1363
  %1365 = xor i32 %1364, -1
  %1366 = and i32 %1351, %1365
  br label %1367

; <label>:1367                                    ; preds = %1356, %1345
  %1368 = phi i32 [ %1366, %1356 ], [ %1351, %1345 ]
  %1369 = phi i32 [ %1362, %1356 ], [ %1354, %1345 ]
  %1370 = mul i32 %1369, 112
  %1371 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1370, i32 undef)  ; BufferLoad(srv,index,wot)
  %1372 = extractvalue %dx.types.ResRet.f32 %1371, 0
  %1373 = extractvalue %dx.types.ResRet.f32 %1371, 1
  %1374 = extractvalue %dx.types.ResRet.f32 %1371, 2
  %1375 = or i32 %1370, 12
  %1376 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1375, i32 undef)  ; BufferLoad(srv,index,wot)
  %1377 = extractvalue %dx.types.ResRet.f32 %1376, 0
  %1378 = add i32 %1370, 16
  %1379 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1378, i32 undef)  ; BufferLoad(srv,index,wot)
  %1380 = extractvalue %dx.types.ResRet.f32 %1379, 0
  %1381 = extractvalue %dx.types.ResRet.f32 %1379, 1
  %1382 = extractvalue %dx.types.ResRet.f32 %1379, 2
  %1383 = add i32 %1370, 28
  %1384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1383, i32 undef)  ; BufferLoad(srv,index,wot)
  %1385 = extractvalue %dx.types.ResRet.i32 %1384, 0
  %1386 = add i32 %1370, 32
  %1387 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1386, i32 undef)  ; BufferLoad(srv,index,wot)
  %1388 = extractvalue %dx.types.ResRet.f32 %1387, 0
  %1389 = extractvalue %dx.types.ResRet.f32 %1387, 1
  %1390 = extractvalue %dx.types.ResRet.f32 %1387, 2
  %1391 = add i32 %1370, 44
  %1392 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1391, i32 undef)  ; BufferLoad(srv,index,wot)
  %1393 = extractvalue %dx.types.ResRet.f32 %1392, 0
  %1394 = add i32 %1370, 48
  %1395 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1394, i32 undef)  ; BufferLoad(srv,index,wot)
  %1396 = extractvalue %dx.types.ResRet.f32 %1395, 0
  %1397 = extractvalue %dx.types.ResRet.f32 %1395, 1
  %1398 = extractvalue %dx.types.ResRet.f32 %1395, 2
  %1399 = extractvalue %dx.types.ResRet.f32 %1395, 3
  %1400 = add i32 %1370, 64
  %1401 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1400, i32 undef)  ; BufferLoad(srv,index,wot)
  %1402 = extractvalue %dx.types.ResRet.f32 %1401, 0
  %1403 = extractvalue %dx.types.ResRet.f32 %1401, 1
  %1404 = extractvalue %dx.types.ResRet.f32 %1401, 2
  %1405 = extractvalue %dx.types.ResRet.f32 %1401, 3
  %1406 = add i32 %1370, 80
  %1407 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1406, i32 undef)  ; BufferLoad(srv,index,wot)
  %1408 = extractvalue %dx.types.ResRet.f32 %1407, 1
  %1409 = extractvalue %dx.types.ResRet.f32 %1407, 2
  %1410 = add i32 %1370, 92
  %1411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1410, i32 undef)  ; BufferLoad(srv,index,wot)
  %1412 = extractvalue %dx.types.ResRet.i32 %1411, 0
  %1413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %1414 = extractvalue %dx.types.CBufRet.f32 %1413, 2
  %1415 = lshr i32 %1385, 16
  %1416 = and i32 %1415, 255
  %1417 = uitofp i32 %1416 to float
  %1418 = fmul fast float %1417, 0x3F70101020000000
  %1419 = fmul fast float %1418, %1372
  %1420 = fmul fast float %1418, %1373
  %1421 = fmul fast float %1418, %1374
  %1422 = fmul fast float %1414, %1408
  %1423 = call float @dx.op.dot3.f32(i32 55, float %1419, float %1420, float %1421, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1424 = select i1 %231, float %1422, float %1419
  %1425 = select i1 %231, float %1423, float %1420
  %1426 = select i1 %231, float %1409, float %1421
  %1427 = and i32 %1412, 65535
  %1428 = uitofp i32 %1427 to float
  %1429 = lshr i32 %1412, 16
  %1430 = uitofp i32 %1429 to float
  %1431 = and i32 %1385, 65535
  %1432 = and i32 %1385, 50331648
  %1433 = icmp eq i32 %1432, 33554432
  %1434 = call float @dx.op.dot3.f32(i32 55, float %1388, float %1389, float %1390, float %1388, float %1389, float %1390)  ; Dot3(ax,ay,az,bx,by,bz)
  %1435 = fsub fast float %216, %1396
  %1436 = fsub fast float %217, %1397
  %1437 = fsub fast float %218, %1398
  %1438 = call float @dx.op.dot3.f32(i32 55, float %1435, float %1436, float %1437, float %1388, float %1389, float %1390)  ; Dot3(ax,ay,az,bx,by,bz)
  %1439 = fdiv fast float %1438, %1434
  %1440 = call float @dx.op.binary.f32(i32 35, float %1439, float -1.000000e+00)  ; FMax(a,b)
  %1441 = call float @dx.op.binary.f32(i32 36, float %1440, float 1.000000e+00)  ; FMin(a,b)
  %1442 = fmul fast float %1441, %1388
  %1443 = fmul fast float %1441, %1389
  %1444 = fmul fast float %1441, %1390
  %1445 = fadd fast float %1442, %1396
  %1446 = fadd fast float %1443, %1397
  %1447 = fadd fast float %1444, %1398
  %1448 = fsub fast float %1445, %216
  %1449 = fsub fast float %1446, %217
  %1450 = fsub fast float %1447, %218
  %1451 = call float @dx.op.dot3.f32(i32 55, float %1448, float %1449, float %1450, float %1448, float %1449, float %1450)  ; Dot3(ax,ay,az,bx,by,bz)
  %1452 = call float @dx.op.unary.f32(i32 24, float %1451)  ; Sqrt(value)
  %1453 = fdiv fast float 1.000000e+00, %1452
  %1454 = fmul fast float %1448, %1453
  %1455 = fmul fast float %1449, %1453
  %1456 = fmul fast float %1450, %1453
  %1457 = fadd fast float %1452, %1377
  %1458 = fdiv fast float 1.000000e+00, %1457
  %1459 = fmul float %1393, %1458
  %1460 = fmul float %1459, %1459
  %1461 = call float @dx.op.unary.f32(i32 7, float %1460)  ; Saturate(value)
  br i1 %1433, label %1462, label %1486, !dx.controlflow.hints !95

; <label>:1462                                    ; preds = %1367
  %1463 = fmul fast float %1404, %1380
  %1464 = fmul fast float %1404, %1381
  %1465 = fmul fast float %1404, %1382
  %1466 = fsub fast float %1463, %216
  %1467 = fadd fast float %1466, %1445
  %1468 = fsub fast float %1464, %217
  %1469 = fadd fast float %1468, %1446
  %1470 = fsub fast float %1465, %218
  %1471 = fadd fast float %1470, %1447
  %1472 = call float @dx.op.dot3.f32(i32 55, float %1467, float %1469, float %1471, float %1467, float %1469, float %1471)  ; Dot3(ax,ay,az,bx,by,bz)
  %1473 = call float @dx.op.unary.f32(i32 25, float %1472)  ; Rsqrt(value)
  %1474 = fmul fast float %1473, %1467
  %1475 = fmul fast float %1473, %1469
  %1476 = fmul fast float %1473, %1471
  %1477 = fsub fast float %216, %1445
  %1478 = fsub fast float %217, %1446
  %1479 = fsub fast float %218, %1447
  %1480 = fsub fast float -0.000000e+00, %1477
  %1481 = fsub fast float -0.000000e+00, %1478
  %1482 = fsub fast float -0.000000e+00, %1479
  %1483 = call float @dx.op.dot3.f32(i32 55, float %1480, float %1481, float %1482, float %1380, float %1381, float %1382)  ; Dot3(ax,ay,az,bx,by,bz)
  %1484 = fcmp fast ogt float %1483, 0.000000e+00
  %1485 = uitofp i1 %1484 to float
  br label %1486

; <label>:1486                                    ; preds = %1462, %1367
  %1487 = phi float [ %1485, %1462 ], [ 1.000000e+00, %1367 ]
  %1488 = phi float [ %1474, %1462 ], [ %1454, %1367 ]
  %1489 = phi float [ %1475, %1462 ], [ %1455, %1367 ]
  %1490 = phi float [ %1476, %1462 ], [ %1456, %1367 ]
  %1491 = call float @dx.op.dot3.f32(i32 55, float %1380, float %1381, float %1382, float %1488, float %1489, float %1490)  ; Dot3(ax,ay,az,bx,by,bz)
  %1492 = fmul fast float %1491, %1491
  %1493 = call float @dx.op.unary.f32(i32 7, float %1492)  ; Saturate(value)
  %1494 = fsub fast float 1.000000e+00, %1493
  %1495 = fmul fast float %1494, 5.000000e-01
  %1496 = fcmp fast ogt float %1491, 0.000000e+00
  %1497 = fsub fast float 1.000000e+00, %1495
  %1498 = select i1 %1496, float %1495, float %1497
  %1499 = fmul fast float %1498, %1430
  %1500 = fadd fast float %1499, %1428
  %1501 = fmul fast float %1500, 0x3EF0001000000000
  %1502 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %27, float %1501, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1503 = extractvalue %dx.types.ResRet.f32 %1502, 0
  %1504 = fmul fast float %1491, %1402
  %1505 = fadd fast float %1504, %1403
  %1506 = call float @dx.op.unary.f32(i32 7, float %1505)  ; Saturate(value)
  %1507 = select i1 %1433, float 1.000000e+00, float %1506
  %1508 = select i1 %1433, float %1506, float 1.000000e+00
  %1509 = fmul fast float %1452, %1399
  %1510 = fsub fast float 1.000000e+00, %1509
  %1511 = fmul fast float %1510, %1405
  %1512 = call float @dx.op.unary.f32(i32 7, float %1511)  ; Saturate(value)
  %1513 = fmul fast float %1512, %1508
  %1514 = fmul fast float %1513, 2.000000e+00
  %1515 = fsub fast float 3.000000e+00, %1514
  %1516 = fmul fast float %1503, %1487
  %1517 = fmul fast float %1513, %1513
  %1518 = fmul fast float %1517, %1516
  %1519 = fmul fast float %1518, %1515
  %1520 = call float @dx.op.binary.f32(i32 36, float %1519, float %1519)  ; FMin(a,b)
  %1521 = call float @dx.op.binary.f32(i32 36, float %1519, float %1520)  ; FMin(a,b)
  %1522 = fcmp fast ogt float %1521, 0.000000e+00
  br i1 %1522, label %1523, label %1737, !dx.controlflow.hints !96

; <label>:1523                                    ; preds = %1486
  %1524 = icmp eq i32 %1431, 255
  br i1 %1524, label %1600, label %1525, !dx.controlflow.hints !97

; <label>:1525                                    ; preds = %1523
  %1526 = mul nuw nsw i32 %1431, 176
  %1527 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1526, i32 undef)  ; BufferLoad(srv,index,wot)
  %1528 = extractvalue %dx.types.ResRet.f32 %1527, 0
  %1529 = extractvalue %dx.types.ResRet.f32 %1527, 1
  %1530 = extractvalue %dx.types.ResRet.f32 %1527, 2
  %1531 = extractvalue %dx.types.ResRet.f32 %1527, 3
  %1532 = add nuw nsw i32 %1526, 16
  %1533 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1532, i32 undef)  ; BufferLoad(srv,index,wot)
  %1534 = extractvalue %dx.types.ResRet.f32 %1533, 0
  %1535 = extractvalue %dx.types.ResRet.f32 %1533, 1
  %1536 = add nuw nsw i32 %1526, 32
  %1537 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1536, i32 undef)  ; BufferLoad(srv,index,wot)
  %1538 = extractvalue %dx.types.ResRet.f32 %1537, 0
  %1539 = add nuw nsw i32 %1526, 48
  %1540 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1539, i32 undef)  ; BufferLoad(srv,index,wot)
  %1541 = extractvalue %dx.types.ResRet.f32 %1540, 0
  %1542 = extractvalue %dx.types.ResRet.f32 %1540, 1
  %1543 = extractvalue %dx.types.ResRet.f32 %1540, 2
  %1544 = extractvalue %dx.types.ResRet.f32 %1540, 3
  %1545 = add nuw nsw i32 %1526, 64
  %1546 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1545, i32 undef)  ; BufferLoad(srv,index,wot)
  %1547 = extractvalue %dx.types.ResRet.f32 %1546, 0
  %1548 = extractvalue %dx.types.ResRet.f32 %1546, 1
  %1549 = extractvalue %dx.types.ResRet.f32 %1546, 2
  %1550 = extractvalue %dx.types.ResRet.f32 %1546, 3
  %1551 = add nuw nsw i32 %1526, 80
  %1552 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1551, i32 undef)  ; BufferLoad(srv,index,wot)
  %1553 = extractvalue %dx.types.ResRet.f32 %1552, 0
  %1554 = extractvalue %dx.types.ResRet.f32 %1552, 1
  %1555 = extractvalue %dx.types.ResRet.f32 %1552, 2
  %1556 = extractvalue %dx.types.ResRet.f32 %1552, 3
  %1557 = add nuw nsw i32 %1526, 96
  %1558 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1557, i32 undef)  ; BufferLoad(srv,index,wot)
  %1559 = extractvalue %dx.types.ResRet.f32 %1558, 0
  %1560 = extractvalue %dx.types.ResRet.f32 %1558, 1
  %1561 = extractvalue %dx.types.ResRet.f32 %1558, 2
  %1562 = extractvalue %dx.types.ResRet.f32 %1558, 3
  %1563 = bitcast float %1535 to i32
  %1564 = fmul fast float %1541, %216
  %1565 = call float @dx.op.tertiary.f32(i32 46, float %217, float %1547, float %1564)  ; FMad(a,b,c)
  %1566 = call float @dx.op.tertiary.f32(i32 46, float %218, float %1553, float %1565)  ; FMad(a,b,c)
  %1567 = fadd fast float %1566, %1559
  %1568 = fmul fast float %1542, %216
  %1569 = call float @dx.op.tertiary.f32(i32 46, float %217, float %1548, float %1568)  ; FMad(a,b,c)
  %1570 = call float @dx.op.tertiary.f32(i32 46, float %218, float %1554, float %1569)  ; FMad(a,b,c)
  %1571 = fadd fast float %1570, %1560
  %1572 = fmul fast float %1543, %216
  %1573 = call float @dx.op.tertiary.f32(i32 46, float %217, float %1549, float %1572)  ; FMad(a,b,c)
  %1574 = call float @dx.op.tertiary.f32(i32 46, float %218, float %1555, float %1573)  ; FMad(a,b,c)
  %1575 = fadd fast float %1574, %1561
  %1576 = fmul fast float %1544, %216
  %1577 = call float @dx.op.tertiary.f32(i32 46, float %217, float %1550, float %1576)  ; FMad(a,b,c)
  %1578 = call float @dx.op.tertiary.f32(i32 46, float %218, float %1556, float %1577)  ; FMad(a,b,c)
  %1579 = fadd fast float %1578, %1562
  %1580 = fdiv fast float %1567, %1579
  %1581 = fdiv fast float %1571, %1579
  %1582 = fdiv fast float %1575, %1579
  %1583 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %1582)  ; FMax(a,b)
  %1584 = fmul fast float %1580, %1534
  %1585 = fmul fast float %1581, %1534
  %1586 = call float @dx.op.binary.f32(i32 35, float %1584, float %1530)  ; FMax(a,b)
  %1587 = call float @dx.op.binary.f32(i32 35, float %1585, float %1530)  ; FMax(a,b)
  %1588 = call float @dx.op.binary.f32(i32 36, float %1586, float %1531)  ; FMin(a,b)
  %1589 = call float @dx.op.binary.f32(i32 36, float %1587, float %1531)  ; FMin(a,b)
  %1590 = fadd fast float %1588, %1528
  %1591 = fadd fast float %1589, %1529
  %1592 = uitofp i32 %1563 to float
  %1593 = fadd fast float %1583, %1538
  %1594 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %13, %dx.types.Handle %29, float %1590, float %1591, float %1592, float undef, i32 0, i32 0, i32 undef, float %1593)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1595 = extractvalue %dx.types.ResRet.f32 %1594, 0
  %1596 = fadd fast float %1595, -1.000000e+00
  %1597 = fmul fast float %1596, %1507
  %1598 = fadd fast float %1597, 1.000000e+00
  %1599 = fmul fast float %1598, %1519
  br label %1600

; <label>:1600                                    ; preds = %1525, %1523
  %1601 = phi float [ %1599, %1525 ], [ %1519, %1523 ]
  %1602 = call float @dx.op.binary.f32(i32 36, float %1601, float %1601)  ; FMin(a,b)
  %1603 = call float @dx.op.binary.f32(i32 36, float %1601, float %1602)  ; FMin(a,b)
  %1604 = fcmp fast ogt float %1603, 0.000000e+00
  br i1 %1604, label %1605, label %1737, !dx.controlflow.hints !98

; <label>:1605                                    ; preds = %1600
  %1606 = extractvalue %dx.types.CBufRet.f32 %1413, 1
  %1607 = fmul fast float %1601, %1461
  %1608 = call float @dx.op.binary.f32(i32 36, float %1607, float %1606)  ; FMin(a,b)
  %1609 = icmp eq i32 %313, 0
  br i1 %1609, label %1689, label %1610, !dx.controlflow.hints !87

; <label>:1610                                    ; preds = %1605
  %1611 = fsub fast float %1398, %312
  %1612 = fcmp fast ogt float %1611, 0.000000e+00
  %1613 = fsub fast float %218, %312
  %1614 = fcmp fast ogt float %1613, 0.000000e+00
  %1615 = xor i1 %1614, %1612
  %1616 = fsub fast float %312, %1398
  %1617 = fmul fast float %1616, 2.000000e+00
  %1618 = fadd fast float %1617, %1398
  %1619 = select i1 %1615, float %1398, float %1618
  %1620 = fsub fast float %1396, %216
  %1621 = fsub fast float %1397, %217
  %1622 = fsub fast float %1619, %218
  %1623 = call float @dx.op.dot3.f32(i32 55, float %1620, float %1621, float %1622, float %1620, float %1621, float %1622)  ; Dot3(ax,ay,az,bx,by,bz)
  %1624 = call float @dx.op.unary.f32(i32 25, float %1623)  ; Rsqrt(value)
  %1625 = fmul fast float %1624, %1620
  %1626 = fmul fast float %1624, %1621
  %1627 = fmul fast float %1624, %1622
  %1628 = fsub fast float %312, %218
  %1629 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %1628)  ; Dot3(ax,ay,az,bx,by,bz)
  %1630 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1625, float %1626, float %1627)  ; Dot3(ax,ay,az,bx,by,bz)
  %1631 = fdiv fast float 1.000000e+00, %1630
  %1632 = fmul fast float %1631, %1629
  %1633 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %1613, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1634 = fcmp fast ogt float %1633, 0.000000e+00
  %1635 = fcmp fast olt float %1633, 0.000000e+00
  %1636 = zext i1 %1634 to i32
  %1637 = zext i1 %1635 to i32
  %1638 = sub nsw i32 %1636, %1637
  %1639 = sitofp i32 %1638 to float
  %1640 = fsub fast float %1619, %312
  %1641 = call float @dx.op.dot3.f32(i32 55, float %1620, float %1621, float %1640, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1642 = fcmp fast ogt float %1641, 0.000000e+00
  %1643 = fcmp fast olt float %1641, 0.000000e+00
  %1644 = zext i1 %1642 to i32
  %1645 = zext i1 %1643 to i32
  %1646 = sub nsw i32 %1644, %1645
  %1647 = sitofp i32 %1646 to float
  %1648 = fcmp fast une float %1639, %1647
  br i1 %1648, label %1649, label %1659, !dx.controlflow.hints !88

; <label>:1649                                    ; preds = %1610
  %1650 = fmul fast float %1632, %1627
  %1651 = fmul fast float %1632, %1626
  %1652 = fmul fast float %1632, %1625
  %1653 = fmul fast float %1652, %1652
  %1654 = fmul fast float %1651, %1651
  %1655 = fadd fast float %1653, %1654
  %1656 = fmul fast float %1650, %1650
  %1657 = fadd fast float %1655, %1656
  %1658 = call float @dx.op.unary.f32(i32 24, float %1657)  ; Sqrt(value)
  br label %1669

; <label>:1659                                    ; preds = %1610
  %1660 = icmp slt i32 %1638, 0
  br i1 %1660, label %1661, label %1669, !dx.controlflow.hints !89

; <label>:1661                                    ; preds = %1659
  %1662 = fsub fast float %218, %1619
  %1663 = fmul fast float %1435, %1435
  %1664 = fmul fast float %1436, %1436
  %1665 = fadd fast float %1663, %1664
  %1666 = fmul fast float %1662, %1662
  %1667 = fadd fast float %1665, %1666
  %1668 = call float @dx.op.unary.f32(i32 24, float %1667)  ; Sqrt(value)
  br label %1669

; <label>:1669                                    ; preds = %1661, %1659, %1649
  %1670 = phi float [ %1658, %1649 ], [ %1668, %1661 ], [ 0.000000e+00, %1659 ]
  %1671 = and i1 %1614, %1612
  %1672 = fsub fast float -0.000000e+00, %1670
  %1673 = select i1 %1671, float -0.000000e+00, float %1672
  %1674 = fmul fast float %309, 0x3FF7154760000000
  %1675 = fmul fast float %1674, %1673
  %1676 = fmul fast float %310, 0x3FF7154760000000
  %1677 = fmul fast float %1676, %1673
  %1678 = fmul fast float %311, 0x3FF7154760000000
  %1679 = fmul fast float %1678, %1673
  %1680 = call float @dx.op.unary.f32(i32 21, float %1675)  ; Exp(value)
  %1681 = call float @dx.op.unary.f32(i32 21, float %1677)  ; Exp(value)
  %1682 = call float @dx.op.unary.f32(i32 21, float %1679)  ; Exp(value)
  %1683 = call float @dx.op.unary.f32(i32 7, float %1680)  ; Saturate(value)
  %1684 = call float @dx.op.unary.f32(i32 7, float %1681)  ; Saturate(value)
  %1685 = call float @dx.op.unary.f32(i32 7, float %1682)  ; Saturate(value)
  %1686 = fmul fast float %1683, %1424
  %1687 = fmul fast float %1684, %1425
  %1688 = fmul fast float %1685, %1426
  br label %1689

; <label>:1689                                    ; preds = %1669, %1605
  %1690 = phi float [ %1686, %1669 ], [ %1424, %1605 ]
  %1691 = phi float [ %1687, %1669 ], [ %1425, %1605 ]
  %1692 = phi float [ %1688, %1669 ], [ %1426, %1605 ]
  %1693 = fmul fast float %1608, %1690
  %1694 = fmul fast float %1608, %1691
  %1695 = fmul fast float %1608, %1692
  br i1 %118, label %1696, label %1717, !dx.controlflow.hints !90

; <label>:1696                                    ; preds = %1689
  br i1 %120, label %1697, label %1729, !dx.controlflow.hints !91

; <label>:1697                                    ; preds = %1696
  %1698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1699 = extractvalue %dx.types.CBufRet.f32 %1698, 0
  %1700 = extractvalue %dx.types.CBufRet.f32 %1698, 1
  %1701 = fmul fast float %1700, 0x3FE5555560000000
  %1702 = fmul fast float %1455, 0xBFF88F51C0000000
  %1703 = fmul fast float %1456, 0x3FF88F51C0000000
  %1704 = fmul fast float %1454, 0xBFF88F51C0000000
  %1705 = fmul fast float %1699, 0x3FEC5BF8C0000000
  %1706 = fmul fast float %1702, %1701
  %1707 = fmul fast float %1703, %1701
  %1708 = fmul fast float %1704, %1701
  %1709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1710 = extractvalue %dx.types.CBufRet.f32 %1709, 1
  %1711 = fmul fast float %1710, 0x3FDF454380000000
  %1712 = extractvalue %dx.types.CBufRet.f32 %1709, 2
  %1713 = fmul fast float %1712, 0xBFDF454380000000
  %1714 = extractvalue %dx.types.CBufRet.f32 %1709, 0
  %1715 = fmul fast float %1714, 0x3FDF454380000000
  %1716 = call float @dx.op.dot4.f32(i32 56, float %1705, float %1706, float %1707, float %1708, float 0x3FD20DD760000000, float %1711, float %1713, float %1715)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  br label %1729

; <label>:1717                                    ; preds = %1689
  %1718 = call float @dx.op.dot3.f32(i32 55, float %1454, float %1455, float %1456, float %222, float %223, float %224)  ; Dot3(ax,ay,az,bx,by,bz)
  %1719 = fcmp fast ogt float %162, 0.000000e+00
  %1720 = select i1 %1719, float 1.000000e+00, float -1.000000e+00
  %1721 = fmul fast float %1720, 5.000000e-01
  %1722 = fmul fast float %1721, %1718
  %1723 = fmul fast float %1720, %162
  %1724 = fadd fast float %1722, 4.921875e-01
  %1725 = fadd fast float %1723, -3.125000e-02
  %1726 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %27, float %1724, float 0x3FB25F3060000000, float %1725, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1727 = extractvalue %dx.types.ResRet.f32 %1726, 0
  %1728 = fmul fast float %1727, 0x400921FB60000000
  br label %1729

; <label>:1729                                    ; preds = %1717, %1697, %1696
  %1730 = phi float [ %1716, %1697 ], [ %1728, %1717 ], [ 0x3FE921FB60000000, %1696 ]
  %1731 = fmul float %1695, %1730
  %1732 = fmul float %1694, %1730
  %1733 = fmul float %1693, %1730
  %1734 = fadd fast float %1733, %1346
  %1735 = fadd fast float %1732, %1347
  %1736 = fadd fast float %1731, %1348
  br label %1737

; <label>:1737                                    ; preds = %1729, %1600, %1486
  %1738 = phi float [ %1734, %1729 ], [ %1346, %1600 ], [ %1346, %1486 ]
  %1739 = phi float [ %1735, %1729 ], [ %1347, %1600 ], [ %1347, %1486 ]
  %1740 = phi float [ %1736, %1729 ], [ %1348, %1600 ], [ %1348, %1486 ]
  %1741 = add nuw i32 %1349, 1
  %1742 = icmp eq i32 %1741, %1341
  br i1 %1742, label %1743, label %1345, !llvm.loop !99

; <label>:1743                                    ; preds = %1737
  br label %1744

; <label>:1744                                    ; preds = %1743, %1339, %1279
  %1745 = phi float [ %1280, %1279 ], [ %1280, %1339 ], [ %1738, %1743 ]
  %1746 = phi float [ %1281, %1279 ], [ %1281, %1339 ], [ %1739, %1743 ]
  %1747 = phi float [ %1282, %1279 ], [ %1282, %1339 ], [ %1740, %1743 ]
  %1748 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %20, i32 0, i32 %189, i32 %190, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1749 = extractvalue %dx.types.ResRet.f32 %1748, 0
  %1750 = extractvalue %dx.types.ResRet.f32 %1748, 1
  %1751 = extractvalue %dx.types.ResRet.f32 %1748, 2
  %1752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1753 = extractvalue %dx.types.CBufRet.f32 %1752, 1
  %1754 = fmul fast float %1753, %1749
  %1755 = fmul fast float %1753, %1750
  %1756 = fmul fast float %1753, %1751
  %1757 = fadd fast float %1754, %1745
  %1758 = fadd fast float %1755, %1746
  %1759 = fadd fast float %1756, %1747
  %1760 = extractvalue %dx.types.CBufRet.f32 %1752, 0
  %1761 = fmul fast float %1757, %1760
  %1762 = fmul fast float %1758, %1760
  %1763 = fmul fast float %1759, %1760
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %189, i32 %190, i32 undef, float %1761, float %1762, float %1763, float %1761, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %1765 = extractvalue %dx.types.CBufRet.f32 %1764, 0
  %1766 = extractvalue %dx.types.CBufRet.f32 %1764, 1
  %1767 = extractvalue %dx.types.CBufRet.f32 %1764, 2
  %1768 = extractvalue %dx.types.CBufRet.f32 %1764, 3
  %1769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %1770 = extractvalue %dx.types.CBufRet.f32 %1769, 0
  %1771 = extractvalue %dx.types.CBufRet.f32 %1769, 1
  %1772 = extractvalue %dx.types.CBufRet.f32 %1769, 2
  %1773 = extractvalue %dx.types.CBufRet.f32 %1769, 3
  %1774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %1775 = extractvalue %dx.types.CBufRet.f32 %1774, 0
  %1776 = extractvalue %dx.types.CBufRet.f32 %1774, 1
  %1777 = extractvalue %dx.types.CBufRet.f32 %1774, 2
  %1778 = extractvalue %dx.types.CBufRet.f32 %1774, 3
  %1779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %1780 = extractvalue %dx.types.CBufRet.f32 %1779, 0
  %1781 = extractvalue %dx.types.CBufRet.f32 %1779, 1
  %1782 = extractvalue %dx.types.CBufRet.f32 %1779, 2
  %1783 = extractvalue %dx.types.CBufRet.f32 %1779, 3
  %1784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %1785 = extractvalue %dx.types.CBufRet.f32 %1784, 3
  %1786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %1787 = extractvalue %dx.types.CBufRet.f32 %1786, 3
  %1788 = extractvalue %dx.types.CBufRet.f32 %1786, 0
  %1789 = extractvalue %dx.types.CBufRet.f32 %1786, 1
  %1790 = extractvalue %dx.types.CBufRet.f32 %1786, 2
  %1791 = fcmp fast olt float %1790, -5.000000e-01
  %1792 = fmul fast float %221, %220
  %1793 = fadd fast float %1792, %1768
  %1794 = call float @dx.op.dot3.f32(i32 55, float %222, float %223, float %224, float %1765, float %1766, float %1767)  ; Dot3(ax,ay,az,bx,by,bz)
  %1795 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1796 = extractvalue %dx.types.CBufRet.i32 %1795, 1
  %1797 = and i32 %1796, 1
  %1798 = icmp ne i32 %1797, 0
  %1799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1800 = extractvalue %dx.types.CBufRet.f32 %1799, 2
  %1801 = fcmp fast ogt float %1800, 0.000000e+00
  %1802 = and i1 %1798, %1801
  br i1 %1802, label %1803, label %2209, !dx.controlflow.hints !100

; <label>:1803                                    ; preds = %1744
  %1804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %1805 = extractvalue %dx.types.CBufRet.f32 %1804, 3
  %1806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1807 = extractvalue %dx.types.CBufRet.f32 %1806, 2
  %1808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1809 = extractvalue %dx.types.CBufRet.f32 %1808, 2
  %1810 = fsub fast float %1807, %1809
  %1811 = and i32 %1796, 2
  %1812 = extractvalue %dx.types.CBufRet.i32 %1795, 0
  %1813 = call i32 @dx.op.binary.i32(i32 40, i32 %1812, i32 3)  ; UMin(a,b)
  %1814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1815 = extractvalue %dx.types.CBufRet.f32 %1814, 0
  %1816 = extractvalue %dx.types.CBufRet.f32 %1814, 1
  %1817 = extractvalue %dx.types.CBufRet.f32 %1808, 0
  %1818 = extractvalue %dx.types.CBufRet.f32 %1808, 1
  %1819 = fsub fast float %1815, %1817
  %1820 = fsub fast float %1816, %1818
  %1821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1822 = extractvalue %dx.types.CBufRet.f32 %1821, 0
  %1823 = fcmp fast ogt float %1822, 0.000000e+00
  %1824 = fsub fast float -0.000000e+00, %1819
  %1825 = fsub fast float -0.000000e+00, %1820
  %1826 = call float @dx.op.dot2.f32(i32 54, float %222, float %223, float %222, float %223)  ; Dot2(ax,ay,bx,by)
  %1827 = call float @dx.op.dot2.f32(i32 54, float %222, float %223, float %1824, float %1825)  ; Dot2(ax,ay,bx,by)
  %1828 = fmul fast float %1827, 2.000000e+00
  %1829 = call float @dx.op.dot2.f32(i32 54, float %1824, float %1825, float %1824, float %1825)  ; Dot2(ax,ay,bx,by)
  %1830 = fmul fast float %1822, %1822
  %1831 = fsub fast float %1829, %1830
  %1832 = fmul fast float %1828, %1828
  %1833 = fmul fast float %1826, 4.000000e+00
  %1834 = fmul fast float %1833, %1831
  %1835 = fsub fast float %1832, %1834
  %1836 = fcmp fast ogt float %1835, 0.000000e+00
  br i1 %1836, label %1837, label %1852, !dx.controlflow.hints !101

; <label>:1837                                    ; preds = %1803
  %1838 = fcmp fast ogt float %1828, 0.000000e+00
  %1839 = call float @dx.op.unary.f32(i32 24, float %1835)  ; Sqrt(value)
  %1840 = fsub fast float -0.000000e+00, %1839
  %1841 = select i1 %1838, float %1839, float %1840
  %1842 = fadd fast float %1841, %1828
  %1843 = fmul float %1842, -5.000000e-01
  %1844 = fdiv fast float %1843, %1826
  %1845 = call float @dx.op.binary.f32(i32 35, float %1844, float 0.000000e+00)  ; FMax(a,b)
  %1846 = call float @dx.op.binary.f32(i32 36, float %1792, float %1845)  ; FMin(a,b)
  %1847 = fdiv fast float %1831, %1843
  %1848 = call float @dx.op.binary.f32(i32 35, float %1847, float 0.000000e+00)  ; FMax(a,b)
  %1849 = call float @dx.op.binary.f32(i32 36, float %1792, float %1848)  ; FMin(a,b)
  %1850 = call float @dx.op.binary.f32(i32 36, float %1846, float %1849)  ; FMin(a,b)
  %1851 = call float @dx.op.binary.f32(i32 35, float %1846, float %1849)  ; FMax(a,b)
  br label %1852

; <label>:1852                                    ; preds = %1837, %1803
  %1853 = phi float [ %1851, %1837 ], [ -1.000000e+00, %1803 ]
  %1854 = phi float [ %1850, %1837 ], [ -1.000000e+00, %1803 ]
  %1855 = phi i1 [ true, %1837 ], [ false, %1803 ]
  %1856 = and i1 %1823, %1855
  br i1 %1856, label %1857, label %1859, !dx.controlflow.hints !102

; <label>:1857                                    ; preds = %1852
  %1858 = fcmp fast oeq float %1854, %1853
  br i1 %1858, label %2162, label %1860, !dx.controlflow.hints !103

; <label>:1859                                    ; preds = %1852
  br i1 %1823, label %2162, label %1860, !dx.controlflow.hints !104

; <label>:1860                                    ; preds = %1859, %1857
  %1861 = phi float [ %1792, %1859 ], [ %1853, %1857 ]
  %1862 = phi float [ 0.000000e+00, %1859 ], [ %1854, %1857 ]
  %1863 = icmp ne i32 %1811, 0
  %1864 = fmul fast float %1861, %224
  %1865 = fadd fast float %1864, %1805
  %1866 = fmul fast float %1865, %1861
  %1867 = select i1 %1863, float 0.000000e+00, float %1866
  %1868 = fcmp fast oeq float %224, 0.000000e+00
  %1869 = fdiv fast float %1810, %224
  %1870 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1869)  ; FMax(a,b)
  %1871 = select i1 %1868, float %1861, float %1870
  %1872 = call float @dx.op.binary.f32(i32 36, float %1861, float %1871)  ; FMin(a,b)
  %1873 = fcmp fast ogt float %224, 0.000000e+00
  %1874 = fcmp fast olt float %1810, 0.000000e+00
  br i1 %1873, label %1875, label %1932, !dx.controlflow.hints !105

; <label>:1875                                    ; preds = %1860
  %1876 = icmp eq i32 %1811, 0
  br i1 %1874, label %1877, label %1921, !dx.controlflow.hints !106

; <label>:1877                                    ; preds = %1875
  %1878 = select i1 %1876, float %1861, float 0.000000e+00
  %1879 = fsub fast float -0.000000e+00, %1878
  %1880 = call float @dx.op.unary.f32(i32 6, float %1879)  ; FAbs(value)
  %1881 = fmul fast float %1878, %224
  %1882 = fadd fast float %1881, %1805
  %1883 = fmul fast float %1880, %1882
  %1884 = fsub fast float %1867, %1883
  %1885 = fsub fast float %1861, %1880
  %1886 = select i1 %1876, float %1885, float 0.000000e+00
  %1887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1888 = extractvalue %dx.types.CBufRet.f32 %1887, 0
  %1889 = extractvalue %dx.types.CBufRet.f32 %1887, 1
  %1890 = extractvalue %dx.types.CBufRet.f32 %1887, 2
  %1891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1892 = extractvalue %dx.types.CBufRet.f32 %1891, 0
  %1893 = extractvalue %dx.types.CBufRet.f32 %1891, 1
  %1894 = extractvalue %dx.types.CBufRet.f32 %1891, 2
  %1895 = extractvalue %dx.types.CBufRet.f32 %1891, 3
  %1896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1897 = extractvalue %dx.types.CBufRet.f32 %1896, 3
  %1898 = call float @dx.op.binary.f32(i32 36, float %1884, float %1897)  ; FMin(a,b)
  %1899 = fmul fast float %1895, %1886
  %1900 = call float @dx.op.unary.f32(i32 7, float %1899)  ; Saturate(value)
  %1901 = fsub fast float %1892, %1888
  %1902 = fsub fast float %1893, %1889
  %1903 = fsub fast float %1894, %1890
  %1904 = fmul fast float %1900, %1901
  %1905 = fmul fast float %1900, %1902
  %1906 = fmul fast float %1900, %1903
  %1907 = fadd fast float %1904, %1888
  %1908 = fadd fast float %1905, %1889
  %1909 = fadd fast float %1906, %1890
  %1910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1911 = extractvalue %dx.types.CBufRet.f32 %1910, 0
  %1912 = extractvalue %dx.types.CBufRet.f32 %1910, 1
  %1913 = fadd fast float %1912, %1911
  %1914 = call float @dx.op.unary.f32(i32 7, float %1913)  ; Saturate(value)
  %1915 = extractvalue %dx.types.CBufRet.f32 %1910, 2
  %1916 = extractvalue %dx.types.CBufRet.f32 %1910, 3
  %1917 = fadd fast float %1916, %1915
  %1918 = call float @dx.op.unary.f32(i32 7, float %1917)  ; Saturate(value)
  %1919 = fmul fast float %1914, %1898
  %1920 = fmul fast float %1919, %1918
  br label %2162

; <label>:1921                                    ; preds = %1875
  br i1 %1876, label %1922, label %1943, !dx.controlflow.hints !107

; <label>:1922                                    ; preds = %1921
  %1923 = call float @dx.op.binary.f32(i32 36, float %1872, float %1862)  ; FMin(a,b)
  %1924 = fsub fast float %1872, %1923
  %1925 = fsub fast float %1924, %1861
  %1926 = call float @dx.op.unary.f32(i32 6, float %1925)  ; FAbs(value)
  %1927 = fadd fast float %1924, %1861
  %1928 = fmul fast float %1927, %224
  %1929 = fadd fast float %1928, %1805
  %1930 = fmul fast float %1929, %1926
  %1931 = fsub fast float %1867, %1930
  br label %1943

; <label>:1932                                    ; preds = %1860
  br i1 %1874, label %1933, label %1943, !dx.controlflow.hints !108

; <label>:1933                                    ; preds = %1932
  %1934 = call float @dx.op.binary.f32(i32 35, float %1862, float %1872)  ; FMax(a,b)
  %1935 = icmp eq i32 %1811, 0
  %1936 = select i1 %1935, float %1872, float 0.000000e+00
  %1937 = fsub fast float -0.000000e+00, %1936
  %1938 = call float @dx.op.unary.f32(i32 6, float %1937)  ; FAbs(value)
  %1939 = fmul fast float %1936, %224
  %1940 = fadd fast float %1939, %1805
  %1941 = fmul fast float %1938, %1940
  %1942 = fsub fast float %1867, %1941
  br label %1943

; <label>:1943                                    ; preds = %1933, %1932, %1922, %1921
  %1944 = phi float [ %1862, %1921 ], [ %1862, %1922 ], [ %1934, %1933 ], [ %1862, %1932 ]
  %1945 = phi float [ 0.000000e+00, %1921 ], [ %1926, %1922 ], [ %1938, %1933 ], [ 0.000000e+00, %1932 ]
  %1946 = phi float [ %1867, %1921 ], [ %1931, %1922 ], [ %1942, %1933 ], [ %1867, %1932 ]
  %1947 = phi float [ %1872, %1921 ], [ %1872, %1922 ], [ %1861, %1933 ], [ %1861, %1932 ]
  %1948 = getelementptr inbounds [3 x float], [3 x float]* %39, i32 0, i32 0
  store float -1.000000e+00, float* %1948, align 4, !tbaa !77, !noalias !109
  %1949 = getelementptr inbounds [3 x float], [3 x float]* %39, i32 0, i32 1
  store float -1.000000e+00, float* %1949, align 4, !tbaa !77, !noalias !109
  %1950 = getelementptr inbounds [3 x float], [3 x float]* %39, i32 0, i32 2
  store float -1.000000e+00, float* %1950, align 4, !tbaa !77, !noalias !109
  %1951 = getelementptr inbounds [3 x float], [3 x float]* %40, i32 0, i32 0
  store float -1.000000e+00, float* %1951, align 4, !tbaa !77, !noalias !109
  %1952 = getelementptr inbounds [3 x float], [3 x float]* %40, i32 0, i32 1
  store float -1.000000e+00, float* %1952, align 4, !tbaa !77, !noalias !109
  %1953 = getelementptr inbounds [3 x float], [3 x float]* %40, i32 0, i32 2
  store float -1.000000e+00, float* %1953, align 4, !tbaa !77, !noalias !109
  %1954 = icmp sgt i32 %1813, 0
  br i1 %1954, label %1955, label %2016

; <label>:1955                                    ; preds = %1943
  br label %1956

; <label>:1956                                    ; preds = %2005, %1955
  %1957 = phi i32 [ %2006, %2005 ], [ 0, %1955 ]
  %1958 = phi i32 [ %2007, %2005 ], [ 0, %1955 ]
  %1959 = add nuw i32 %1958, 171
  %1960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 %1959)  ; CBufferLoadLegacy(handle,regIndex)
  %1961 = extractvalue %dx.types.CBufRet.f32 %1960, 0
  %1962 = extractvalue %dx.types.CBufRet.f32 %1960, 1
  %1963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1964 = extractvalue %dx.types.CBufRet.f32 %1963, 0
  %1965 = extractvalue %dx.types.CBufRet.f32 %1963, 1
  %1966 = fsub fast float %1961, %1964
  %1967 = fsub fast float %1962, %1965
  %1968 = extractvalue %dx.types.CBufRet.f32 %1960, 2
  %1969 = fsub fast float -0.000000e+00, %1966
  %1970 = fsub fast float -0.000000e+00, %1967
  %1971 = call float @dx.op.dot2.f32(i32 54, float %222, float %223, float %1969, float %1970)  ; Dot2(ax,ay,bx,by)
  %1972 = fmul fast float %1971, 2.000000e+00
  %1973 = call float @dx.op.dot2.f32(i32 54, float %1969, float %1970, float %1969, float %1970)  ; Dot2(ax,ay,bx,by)
  %1974 = fmul fast float %1968, %1968
  %1975 = fsub fast float %1973, %1974
  %1976 = fmul fast float %1972, %1972
  %1977 = fmul fast float %1833, %1975
  %1978 = fsub fast float %1976, %1977
  %1979 = fcmp fast ogt float %1978, 0.000000e+00
  br i1 %1979, label %1980, label %1995, !dx.controlflow.hints !101

; <label>:1980                                    ; preds = %1956
  %1981 = fcmp fast ogt float %1972, 0.000000e+00
  %1982 = call float @dx.op.unary.f32(i32 24, float %1978)  ; Sqrt(value)
  %1983 = fsub fast float -0.000000e+00, %1982
  %1984 = select i1 %1981, float %1982, float %1983
  %1985 = fadd fast float %1984, %1972
  %1986 = fmul float %1985, -5.000000e-01
  %1987 = fdiv fast float %1986, %1826
  %1988 = call float @dx.op.binary.f32(i32 35, float %1987, float 0.000000e+00)  ; FMax(a,b)
  %1989 = call float @dx.op.binary.f32(i32 36, float %1861, float %1988)  ; FMin(a,b)
  %1990 = fdiv fast float %1975, %1986
  %1991 = call float @dx.op.binary.f32(i32 35, float %1990, float 0.000000e+00)  ; FMax(a,b)
  %1992 = call float @dx.op.binary.f32(i32 36, float %1861, float %1991)  ; FMin(a,b)
  %1993 = call float @dx.op.binary.f32(i32 36, float %1989, float %1992)  ; FMin(a,b)
  %1994 = call float @dx.op.binary.f32(i32 35, float %1989, float %1992)  ; FMax(a,b)
  br label %1995

; <label>:1995                                    ; preds = %1980, %1956
  %1996 = phi float [ %1994, %1980 ], [ -1.000000e+00, %1956 ]
  %1997 = phi float [ %1993, %1980 ], [ -1.000000e+00, %1956 ]
  %1998 = phi i1 [ true, %1980 ], [ false, %1956 ]
  br i1 %1998, label %1999, label %2005, !dx.controlflow.hints !118

; <label>:1999                                    ; preds = %1995
  %2000 = call float @dx.op.binary.f32(i32 35, float %1944, float %1997)  ; FMax(a,b)
  %2001 = getelementptr inbounds [3 x float], [3 x float]* %39, i32 0, i32 %1958
  store float %2000, float* %2001, align 4, !tbaa !77, !noalias !109
  %2002 = call float @dx.op.binary.f32(i32 35, float %1944, float %1996)  ; FMax(a,b)
  %2003 = getelementptr inbounds [3 x float], [3 x float]* %40, i32 0, i32 %1958
  store float %2002, float* %2003, align 4, !tbaa !77, !noalias !109
  %2004 = add nsw i32 %1957, 1
  br label %2005

; <label>:2005                                    ; preds = %1999, %1995
  %2006 = phi i32 [ %2004, %1999 ], [ %1957, %1995 ]
  %2007 = add nuw nsw i32 %1958, 1
  %2008 = icmp eq i32 %2007, %1813
  br i1 %2008, label %2009, label %1956

; <label>:2009                                    ; preds = %2005
  %2010 = load float, float* %1950, align 4, !tbaa !77, !alias.scope !119, !noalias !122
  %2011 = load float, float* %1949, align 4, !tbaa !77, !alias.scope !125, !noalias !126
  %2012 = load float, float* %1948, align 4, !tbaa !77, !alias.scope !127, !noalias !128
  %2013 = load float, float* %1953, align 4, !tbaa !77, !alias.scope !129, !noalias !132
  %2014 = load float, float* %1952, align 4, !tbaa !77, !alias.scope !135, !noalias !136
  %2015 = load float, float* %1951, align 4, !tbaa !77, !alias.scope !137, !noalias !138
  br label %2016

; <label>:2016                                    ; preds = %2009, %1943
  %2017 = phi float [ -1.000000e+00, %1943 ], [ %2015, %2009 ]
  %2018 = phi float [ -1.000000e+00, %1943 ], [ %2014, %2009 ]
  %2019 = phi float [ -1.000000e+00, %1943 ], [ %2013, %2009 ]
  %2020 = phi float [ -1.000000e+00, %1943 ], [ %2012, %2009 ]
  %2021 = phi float [ -1.000000e+00, %1943 ], [ %2011, %2009 ]
  %2022 = phi float [ -1.000000e+00, %1943 ], [ %2010, %2009 ]
  %2023 = phi i32 [ 0, %1943 ], [ %2006, %2009 ]
  %2024 = call float @dx.op.binary.f32(i32 36, float %2021, float %2022)  ; FMin(a,b)
  %2025 = call float @dx.op.binary.f32(i32 36, float %2020, float %2024)  ; FMin(a,b)
  %2026 = call float @dx.op.binary.f32(i32 35, float %2020, float %2021)  ; FMax(a,b)
  %2027 = call float @dx.op.binary.f32(i32 36, float %2026, float %2022)  ; FMin(a,b)
  %2028 = call float @dx.op.binary.f32(i32 36, float %2020, float %2021)  ; FMin(a,b)
  %2029 = call float @dx.op.binary.f32(i32 35, float %2028, float %2027)  ; FMax(a,b)
  %2030 = call float @dx.op.binary.f32(i32 35, float %2021, float %2022)  ; FMax(a,b)
  %2031 = call float @dx.op.binary.f32(i32 35, float %2020, float %2030)  ; FMax(a,b)
  store float %2025, float* %1948, align 4, !tbaa !77, !alias.scope !127, !noalias !128
  store float %2029, float* %1949, align 4, !tbaa !77, !alias.scope !125, !noalias !126
  store float %2031, float* %1950, align 4, !tbaa !77, !alias.scope !119, !noalias !122
  %2032 = call float @dx.op.binary.f32(i32 36, float %2018, float %2019)  ; FMin(a,b)
  %2033 = call float @dx.op.binary.f32(i32 36, float %2017, float %2032)  ; FMin(a,b)
  %2034 = call float @dx.op.binary.f32(i32 35, float %2017, float %2018)  ; FMax(a,b)
  %2035 = call float @dx.op.binary.f32(i32 36, float %2034, float %2019)  ; FMin(a,b)
  %2036 = call float @dx.op.binary.f32(i32 36, float %2017, float %2018)  ; FMin(a,b)
  %2037 = call float @dx.op.binary.f32(i32 35, float %2036, float %2035)  ; FMax(a,b)
  %2038 = call float @dx.op.binary.f32(i32 35, float %2018, float %2019)  ; FMax(a,b)
  %2039 = call float @dx.op.binary.f32(i32 35, float %2017, float %2038)  ; FMax(a,b)
  store float %2033, float* %1951, align 4, !tbaa !77, !alias.scope !137, !noalias !138
  store float %2037, float* %1952, align 4, !tbaa !77, !alias.scope !135, !noalias !136
  store float %2039, float* %1953, align 4, !tbaa !77, !alias.scope !129, !noalias !132
  %2040 = sub nsw i32 3, %2023
  %2041 = icmp sgt i32 %2040, 2
  br i1 %2041, label %2042, label %2080, !dx.controlflow.hints !139

; <label>:2042                                    ; preds = %2016
  %2043 = icmp eq i32 %1811, 0
  %2044 = fsub fast float %1861, %1945
  %2045 = select i1 %2043, float %2044, float %1945
  %2046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2047 = extractvalue %dx.types.CBufRet.f32 %2046, 0
  %2048 = extractvalue %dx.types.CBufRet.f32 %2046, 1
  %2049 = extractvalue %dx.types.CBufRet.f32 %2046, 2
  %2050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2051 = extractvalue %dx.types.CBufRet.f32 %2050, 0
  %2052 = extractvalue %dx.types.CBufRet.f32 %2050, 1
  %2053 = extractvalue %dx.types.CBufRet.f32 %2050, 2
  %2054 = extractvalue %dx.types.CBufRet.f32 %2050, 3
  %2055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2056 = extractvalue %dx.types.CBufRet.f32 %2055, 3
  %2057 = call float @dx.op.binary.f32(i32 36, float %1946, float %2056)  ; FMin(a,b)
  %2058 = fmul fast float %2054, %2045
  %2059 = call float @dx.op.unary.f32(i32 7, float %2058)  ; Saturate(value)
  %2060 = fsub fast float %2051, %2047
  %2061 = fsub fast float %2052, %2048
  %2062 = fsub fast float %2053, %2049
  %2063 = fmul fast float %2059, %2060
  %2064 = fmul fast float %2059, %2061
  %2065 = fmul fast float %2059, %2062
  %2066 = fadd fast float %2063, %2047
  %2067 = fadd fast float %2064, %2048
  %2068 = fadd fast float %2065, %2049
  %2069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2070 = extractvalue %dx.types.CBufRet.f32 %2069, 0
  %2071 = extractvalue %dx.types.CBufRet.f32 %2069, 1
  %2072 = fadd fast float %2071, %2070
  %2073 = call float @dx.op.unary.f32(i32 7, float %2072)  ; Saturate(value)
  %2074 = extractvalue %dx.types.CBufRet.f32 %2069, 2
  %2075 = extractvalue %dx.types.CBufRet.f32 %2069, 3
  %2076 = fadd fast float %2075, %2074
  %2077 = call float @dx.op.unary.f32(i32 7, float %2076)  ; Saturate(value)
  %2078 = fmul fast float %2073, %2057
  %2079 = fmul fast float %2078, %2077
  br label %2162

; <label>:2080                                    ; preds = %2016
  %2081 = getelementptr inbounds [3 x float], [3 x float]* %39, i32 0, i32 %2040
  %2082 = load float, float* %2081, align 4, !tbaa !77, !noalias !109
  %2083 = fcmp fast olt float %2082, %1947
  %2084 = icmp sgt i32 %2023, 0
  %2085 = and i1 %2084, %2083
  br i1 %2085, label %2086, label %2123

; <label>:2086                                    ; preds = %2080
  br label %2087

; <label>:2087                                    ; preds = %2116, %2086
  %2088 = phi float [ %2117, %2116 ], [ %1945, %2086 ]
  %2089 = phi float [ %2118, %2116 ], [ %1946, %2086 ]
  %2090 = phi float [ %2098, %2116 ], [ %2082, %2086 ]
  %2091 = phi i32 [ %2095, %2116 ], [ %2040, %2086 ]
  %2092 = getelementptr inbounds [3 x float], [3 x float]* %40, i32 0, i32 %2091
  %2093 = load float, float* %2092, align 4, !tbaa !77, !noalias !109
  %2094 = icmp slt i32 %2091, 2
  %2095 = add nsw i32 %2091, 1
  %2096 = getelementptr inbounds [3 x float], [3 x float]* %39, i32 0, i32 %2095
  %2097 = load float, float* %2096, align 4, !tbaa !77, !noalias !109
  %2098 = select i1 %2094, float %2097, float %1861
  %2099 = call float @dx.op.binary.f32(i32 36, float %2098, float %2093)  ; FMin(a,b)
  %2100 = call float @dx.op.binary.f32(i32 36, float %1947, float %2099)  ; FMin(a,b)
  %2101 = icmp eq i32 %1811, 0
  %2102 = fadd fast float %2100, %2090
  %2103 = fmul fast float %2102, %224
  %2104 = fadd fast float %2103, %1805
  br i1 %2101, label %2110, label %2105, !dx.controlflow.hints !140

; <label>:2105                                    ; preds = %2087
  %2106 = fsub fast float %2100, %2090
  %2107 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2106)  ; FMax(a,b)
  %2108 = fmul fast float %2107, %2104
  %2109 = fadd fast float %2108, %2089
  br label %2116

; <label>:2110                                    ; preds = %2087
  %2111 = fsub fast float %2090, %2100
  %2112 = call float @dx.op.unary.f32(i32 6, float %2111)  ; FAbs(value)
  %2113 = fadd fast float %2112, %2088
  %2114 = fmul fast float %2112, %2104
  %2115 = fsub fast float %2089, %2114
  br label %2116

; <label>:2116                                    ; preds = %2110, %2105
  %2117 = phi float [ %2107, %2105 ], [ %2113, %2110 ]
  %2118 = phi float [ %2109, %2105 ], [ %2115, %2110 ]
  %2119 = fcmp fast olt float %2098, %1947
  %2120 = icmp slt i32 %2095, 3
  %2121 = and i1 %2120, %2119
  br i1 %2121, label %2087, label %2122

; <label>:2122                                    ; preds = %2116
  br label %2123

; <label>:2123                                    ; preds = %2122, %2080
  %2124 = phi float [ %1945, %2080 ], [ %2117, %2122 ]
  %2125 = phi float [ %1946, %2080 ], [ %2118, %2122 ]
  %2126 = fsub fast float %1861, %2124
  %2127 = select i1 %1863, float %2124, float %2126
  %2128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2129 = extractvalue %dx.types.CBufRet.f32 %2128, 0
  %2130 = extractvalue %dx.types.CBufRet.f32 %2128, 1
  %2131 = extractvalue %dx.types.CBufRet.f32 %2128, 2
  %2132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2133 = extractvalue %dx.types.CBufRet.f32 %2132, 0
  %2134 = extractvalue %dx.types.CBufRet.f32 %2132, 1
  %2135 = extractvalue %dx.types.CBufRet.f32 %2132, 2
  %2136 = extractvalue %dx.types.CBufRet.f32 %2132, 3
  %2137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2138 = extractvalue %dx.types.CBufRet.f32 %2137, 3
  %2139 = call float @dx.op.binary.f32(i32 36, float %2125, float %2138)  ; FMin(a,b)
  %2140 = fmul fast float %2136, %2127
  %2141 = call float @dx.op.unary.f32(i32 7, float %2140)  ; Saturate(value)
  %2142 = fsub fast float %2133, %2129
  %2143 = fsub fast float %2134, %2130
  %2144 = fsub fast float %2135, %2131
  %2145 = fmul fast float %2141, %2142
  %2146 = fmul fast float %2141, %2143
  %2147 = fmul fast float %2141, %2144
  %2148 = fadd fast float %2145, %2129
  %2149 = fadd fast float %2146, %2130
  %2150 = fadd fast float %2147, %2131
  %2151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2152 = extractvalue %dx.types.CBufRet.f32 %2151, 0
  %2153 = extractvalue %dx.types.CBufRet.f32 %2151, 1
  %2154 = fadd fast float %2153, %2152
  %2155 = call float @dx.op.unary.f32(i32 7, float %2154)  ; Saturate(value)
  %2156 = extractvalue %dx.types.CBufRet.f32 %2151, 2
  %2157 = extractvalue %dx.types.CBufRet.f32 %2151, 3
  %2158 = fadd fast float %2157, %2156
  %2159 = call float @dx.op.unary.f32(i32 7, float %2158)  ; Saturate(value)
  %2160 = fmul fast float %2155, %2139
  %2161 = fmul fast float %2160, %2159
  br label %2162

; <label>:2162                                    ; preds = %2123, %2042, %1877, %1859, %1857
  %2163 = phi float [ %1886, %1877 ], [ %2045, %2042 ], [ %2127, %2123 ], [ 0.000000e+00, %1857 ], [ 0.000000e+00, %1859 ]
  %2164 = phi float [ %1920, %1877 ], [ %2079, %2042 ], [ %2161, %2123 ], [ 0.000000e+00, %1857 ], [ 0.000000e+00, %1859 ]
  %2165 = phi float [ %1907, %1877 ], [ %2066, %2042 ], [ %2148, %2123 ], [ 0.000000e+00, %1857 ], [ 0.000000e+00, %1859 ]
  %2166 = phi float [ %1908, %1877 ], [ %2067, %2042 ], [ %2149, %2123 ], [ 0.000000e+00, %1857 ], [ 0.000000e+00, %1859 ]
  %2167 = phi float [ %1909, %1877 ], [ %2068, %2042 ], [ %2150, %2123 ], [ 0.000000e+00, %1857 ], [ 0.000000e+00, %1859 ]
  %2168 = fmul fast float %1800, %2164
  %2169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2170 = extractvalue %dx.types.CBufRet.f32 %2169, 2
  %2171 = fsub fast float %1807, %2170
  %2172 = fcmp fast olt float %2168, -2.000000e+01
  %2173 = call float @dx.op.unary.f32(i32 21, float %2168)  ; Exp(value)
  %2174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2175 = extractvalue %dx.types.CBufRet.f32 %2174, 2
  %2176 = extractvalue %dx.types.CBufRet.f32 %2174, 3
  %2177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2178 = extractvalue %dx.types.CBufRet.f32 %2177, 2
  %2179 = fmul fast float %2176, %2171
  %2180 = call float @dx.op.unary.f32(i32 7, float %2179)  ; Saturate(value)
  %2181 = fsub fast float 1.000000e+00, %2180
  %2182 = fmul fast float %224, 5.000000e-01
  %2183 = fadd fast float %2182, 5.000000e-01
  %2184 = call float @dx.op.unary.f32(i32 7, float %2183)  ; Saturate(value)
  %2185 = fsub fast float 1.000000e+00, %2184
  %2186 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2181)  ; FMax(a,b)
  %2187 = fdiv fast float %2185, %2186
  %2188 = fsub fast float %2171, %218
  %2189 = call float @dx.op.unary.f32(i32 6, float %2188)  ; FAbs(value)
  %2190 = fmul fast float %2189, %2175
  %2191 = call float @dx.op.unary.f32(i32 7, float %2187)  ; Saturate(value)
  %2192 = fsub fast float 1.000000e+00, %2190
  %2193 = fmul fast float %2192, %2191
  %2194 = fadd fast float %2193, %2190
  %2195 = fmul fast float %2178, %2171
  %2196 = call float @dx.op.unary.f32(i32 7, float %2195)  ; Saturate(value)
  %2197 = fsub fast float 1.000000e+00, %2194
  %2198 = fmul fast float %2197, %2196
  %2199 = fadd fast float %2198, %2194
  %2200 = call float @dx.op.unary.f32(i32 7, float %2199)  ; Saturate(value)
  %2201 = fadd fast float %2173, -1.000000e+00
  %2202 = select i1 %2172, float -1.000000e+00, float %2201
  %2203 = fmul fast float %2200, %2202
  %2204 = fadd fast float %2203, 1.000000e+00
  %2205 = fsub fast float -0.000000e+00, %2203
  %2206 = fmul fast float %2165, %2205
  %2207 = fmul fast float %2166, %2205
  %2208 = fmul fast float %2167, %2205
  br label %2209

; <label>:2209                                    ; preds = %2162, %1744
  %2210 = phi float [ %2163, %2162 ], [ 0.000000e+00, %1744 ]
  %2211 = phi float [ %2204, %2162 ], [ 1.000000e+00, %1744 ]
  %2212 = phi float [ %2206, %2162 ], [ 0.000000e+00, %1744 ]
  %2213 = phi float [ %2207, %2162 ], [ 0.000000e+00, %1744 ]
  %2214 = phi float [ %2208, %2162 ], [ 0.000000e+00, %1744 ]
  %2215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2216 = extractvalue %dx.types.CBufRet.f32 %2215, 1
  %2217 = fsub fast float 1.000000e+00, %2211
  %2218 = fmul fast float %2217, %1793
  %2219 = fmul fast float %2218, %2216
  %2220 = fsub fast float %1793, %2219
  br i1 %1791, label %2221, label %2250, !dx.controlflow.hints !141

; <label>:2221                                    ; preds = %2209
  %2222 = fmul fast float %1794, %1788
  %2223 = fadd fast float %2222, %1789
  %2224 = call float @dx.op.unary.f32(i32 7, float %2223)  ; Saturate(value)
  %2225 = fmul fast float %1770, %2220
  %2226 = fsub fast float -0.000000e+00, %2225
  %2227 = fmul fast float %1771, %2220
  %2228 = fsub fast float -0.000000e+00, %2227
  %2229 = call float @dx.op.unary.f32(i32 21, float %2226)  ; Exp(value)
  %2230 = call float @dx.op.unary.f32(i32 21, float %2228)  ; Exp(value)
  %2231 = call float @dx.op.binary.f32(i32 35, float %1778, float %2229)  ; FMax(a,b)
  %2232 = call float @dx.op.binary.f32(i32 35, float %1778, float %2230)  ; FMax(a,b)
  %2233 = fsub fast float %2232, %2231
  %2234 = fmul fast float %2233, %2224
  %2235 = fadd fast float %2234, %2231
  %2236 = call float @dx.op.unary.f32(i32 7, float %2235)  ; Saturate(value)
  %2237 = fsub fast float %1775, %1780
  %2238 = fsub fast float %1776, %1781
  %2239 = fsub fast float %1777, %1782
  %2240 = fmul fast float %2224, %2237
  %2241 = fmul fast float %2224, %2238
  %2242 = fmul fast float %2224, %2239
  %2243 = fadd fast float %2240, %1780
  %2244 = fadd fast float %2241, %1781
  %2245 = fadd fast float %2242, %1782
  %2246 = fsub fast float 1.000000e+00, %2236
  %2247 = fmul fast float %2246, %2243
  %2248 = fmul fast float %2246, %2244
  %2249 = fmul fast float %2246, %2245
  br label %2309

; <label>:2250                                    ; preds = %2209
  %2251 = fmul fast float %2220, %1787
  %2252 = call float @dx.op.unary.f32(i32 7, float %2251)  ; Saturate(value)
  %2253 = fsub fast float 2.000000e+00, %2252
  %2254 = fmul fast float %2252, 9.921875e-01
  %2255 = fmul fast float %2254, %2253
  %2256 = fadd fast float %2255, 3.906250e-03
  %2257 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %27, float %2256, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2258 = extractvalue %dx.types.ResRet.f32 %2257, 0
  %2259 = fsub fast float %2252, %2258
  %2260 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2259)  ; FMax(a,b)
  %2261 = fmul fast float %1773, %218
  %2262 = call float @dx.op.unary.f32(i32 6, float %2261)  ; FAbs(value)
  %2263 = fcmp fast ogt float %2262, 0x3EB0C6F7A0000000
  br i1 %2263, label %2264, label %2270, !dx.controlflow.hints !142

; <label>:2264                                    ; preds = %2250
  %2265 = fmul fast float %2261, 0xBFF7154760000000
  %2266 = call float @dx.op.unary.f32(i32 21, float %2265)  ; Exp(value)
  %2267 = fsub fast float 1.000000e+00, %2266
  %2268 = fdiv fast float %2267, %2261
  %2269 = fmul fast float %2268, %1783
  br label %2270

; <label>:2270                                    ; preds = %2264, %2250
  %2271 = phi float [ %2269, %2264 ], [ %1783, %2250 ]
  %2272 = fadd fast float %2271, %1785
  %2273 = fmul fast float %2272, %2260
  %2274 = fmul fast float %1770, %2273
  %2275 = fsub fast float -0.000000e+00, %2274
  %2276 = fmul fast float %1771, %2273
  %2277 = fsub fast float -0.000000e+00, %2276
  %2278 = fmul fast float %1772, %2273
  %2279 = fsub fast float -0.000000e+00, %2278
  %2280 = call float @dx.op.unary.f32(i32 21, float %2275)  ; Exp(value)
  %2281 = call float @dx.op.unary.f32(i32 21, float %2277)  ; Exp(value)
  %2282 = call float @dx.op.unary.f32(i32 21, float %2279)  ; Exp(value)
  %2283 = fmul fast float %1794, %1794
  %2284 = fadd fast float %2283, 1.000000e+00
  %2285 = fmul fast float %2284, 0x3FAE8EC8A0000000
  %2286 = fmul fast float %2285, %1780
  %2287 = fmul fast float %2285, %1781
  %2288 = fmul fast float %2285, %1782
  %2289 = fmul fast float %1794, %1778
  %2290 = fsub fast float 1.000000e+00, %2289
  %2291 = fmul fast float %1778, %1778
  %2292 = fsub fast float 1.000000e+00, %2291
  %2293 = fmul fast float %2292, 0x3FB45F3060000000
  %2294 = fmul fast float %2290, %2290
  %2295 = fdiv fast float 1.000000e+00, %2294
  %2296 = fmul fast float %2293, %2295
  %2297 = fmul fast float %2296, %1775
  %2298 = fmul fast float %2296, %1776
  %2299 = fmul fast float %2296, %1777
  %2300 = fadd fast float %2297, %2286
  %2301 = fadd fast float %2298, %2287
  %2302 = fadd fast float %2299, %2288
  %2303 = fsub fast float 1.000000e+00, %2280
  %2304 = fsub fast float 1.000000e+00, %2281
  %2305 = fsub fast float 1.000000e+00, %2282
  %2306 = fmul fast float %2300, %2303
  %2307 = fmul fast float %2301, %2304
  %2308 = fmul fast float %2302, %2305
  br label %2309

; <label>:2309                                    ; preds = %2270, %2221
  %2310 = phi float [ %2247, %2221 ], [ %2306, %2270 ]
  %2311 = phi float [ %2248, %2221 ], [ %2307, %2270 ]
  %2312 = phi float [ %2249, %2221 ], [ %2308, %2270 ]
  %2313 = phi float [ %2236, %2221 ], [ %2280, %2270 ]
  %2314 = phi float [ %2236, %2221 ], [ %2281, %2270 ]
  %2315 = phi float [ %2236, %2221 ], [ %2282, %2270 ]
  br i1 %1802, label %2316, label %2514, !dx.controlflow.hints !143

; <label>:2316                                    ; preds = %2309
  %2317 = extractvalue %dx.types.CBufRet.f32 %2215, 0
  %2318 = fmul fast float %2317, %2217
  %2319 = fsub fast float %2212, %2310
  %2320 = fsub fast float %2213, %2311
  %2321 = fsub fast float %2214, %2312
  %2322 = fmul fast float %2318, %2319
  %2323 = fmul fast float %2318, %2320
  %2324 = fmul fast float %2318, %2321
  %2325 = fadd fast float %2322, %2310
  %2326 = fadd fast float %2323, %2311
  %2327 = fadd fast float %2324, %2312
  %2328 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2313)  ; FMax(a,b)
  %2329 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2314)  ; FMax(a,b)
  %2330 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2315)  ; FMax(a,b)
  %2331 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2211)  ; FMax(a,b)
  %2332 = call float @dx.op.binary.f32(i32 35, float %2210, float %2220)  ; FMax(a,b)
  %2333 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2332)  ; FMax(a,b)
  %2334 = fdiv fast float %2210, %2333
  %2335 = call float @dx.op.unary.f32(i32 7, float %2334)  ; Saturate(value)
  %2336 = fdiv fast float %2220, %2333
  %2337 = call float @dx.op.unary.f32(i32 7, float %2336)  ; Saturate(value)
  %2338 = fcmp fast une float %2331, 1.000000e+00
  br i1 %2338, label %2339, label %2352, !dx.controlflow.hints !144

; <label>:2339                                    ; preds = %2316
  %2340 = call float @dx.op.unary.f32(i32 23, float %2331)  ; Log(value)
  %2341 = fmul fast float %2340, 0x3FE62E4300000000
  %2342 = fmul fast float %2212, %2341
  %2343 = fsub fast float -0.000000e+00, %2342
  %2344 = fmul fast float %2213, %2341
  %2345 = fsub fast float -0.000000e+00, %2344
  %2346 = fmul fast float %2214, %2341
  %2347 = fsub fast float -0.000000e+00, %2346
  %2348 = fsub fast float 1.000000e+00, %2331
  %2349 = fdiv fast float %2343, %2348
  %2350 = fdiv fast float %2345, %2348
  %2351 = fdiv fast float %2347, %2348
  br label %2352

; <label>:2352                                    ; preds = %2339, %2316
  %2353 = phi float [ %2349, %2339 ], [ %2212, %2316 ]
  %2354 = phi float [ %2350, %2339 ], [ %2213, %2316 ]
  %2355 = phi float [ %2351, %2339 ], [ %2214, %2316 ]
  %2356 = phi float [ %2341, %2339 ], [ 0.000000e+00, %2316 ]
  %2357 = fcmp fast une float %2328, 1.000000e+00
  br i1 %2357, label %2358, label %2365, !dx.controlflow.hints !145

; <label>:2358                                    ; preds = %2352
  %2359 = call float @dx.op.unary.f32(i32 23, float %2328)  ; Log(value)
  %2360 = fmul fast float %2359, 0x3FE62E4300000000
  %2361 = fmul fast float %2325, %2360
  %2362 = fsub fast float -0.000000e+00, %2361
  %2363 = fsub fast float 1.000000e+00, %2328
  %2364 = fdiv fast float %2362, %2363
  br label %2365

; <label>:2365                                    ; preds = %2358, %2352
  %2366 = phi float [ %2364, %2358 ], [ %2325, %2352 ]
  %2367 = phi float [ %2360, %2358 ], [ 0.000000e+00, %2352 ]
  %2368 = fcmp fast une float %2329, 1.000000e+00
  br i1 %2368, label %2369, label %2376, !dx.controlflow.hints !145

; <label>:2369                                    ; preds = %2365
  %2370 = call float @dx.op.unary.f32(i32 23, float %2329)  ; Log(value)
  %2371 = fmul fast float %2370, 0x3FE62E4300000000
  %2372 = fmul fast float %2326, %2371
  %2373 = fsub fast float -0.000000e+00, %2372
  %2374 = fsub fast float 1.000000e+00, %2329
  %2375 = fdiv fast float %2373, %2374
  br label %2376

; <label>:2376                                    ; preds = %2369, %2365
  %2377 = phi float [ %2375, %2369 ], [ %2326, %2365 ]
  %2378 = phi float [ %2371, %2369 ], [ 0.000000e+00, %2365 ]
  %2379 = fcmp fast une float %2330, 1.000000e+00
  br i1 %2379, label %2380, label %2387, !dx.controlflow.hints !145

; <label>:2380                                    ; preds = %2376
  %2381 = call float @dx.op.unary.f32(i32 23, float %2330)  ; Log(value)
  %2382 = fmul fast float %2381, 0x3FE62E4300000000
  %2383 = fmul fast float %2327, %2382
  %2384 = fsub fast float -0.000000e+00, %2383
  %2385 = fsub fast float 1.000000e+00, %2330
  %2386 = fdiv fast float %2384, %2385
  br label %2387

; <label>:2387                                    ; preds = %2380, %2376
  %2388 = phi float [ %2386, %2380 ], [ %2327, %2376 ]
  %2389 = phi float [ %2382, %2380 ], [ 0.000000e+00, %2376 ]
  %2390 = fmul fast float %2353, %2337
  %2391 = fmul fast float %2354, %2337
  %2392 = fmul fast float %2355, %2337
  %2393 = fmul fast float %2356, %2337
  %2394 = fmul fast float %2366, %2335
  %2395 = fmul fast float %2377, %2335
  %2396 = fmul fast float %2388, %2335
  %2397 = fmul fast float %2367, %2335
  %2398 = fmul fast float %2378, %2335
  %2399 = fmul fast float %2389, %2335
  %2400 = fadd fast float %2394, %2390
  %2401 = fadd fast float %2395, %2391
  %2402 = fadd fast float %2396, %2392
  %2403 = fadd fast float %2397, %2393
  %2404 = fadd fast float %2398, %2393
  %2405 = fadd fast float %2399, %2393
  %2406 = fcmp fast une float %2403, 0.000000e+00
  br i1 %2406, label %2407, label %2414, !dx.controlflow.hints !146

; <label>:2407                                    ; preds = %2387
  %2408 = fmul fast float %2403, 0x3FF7154760000000
  %2409 = call float @dx.op.unary.f32(i32 21, float %2408)  ; Exp(value)
  %2410 = fsub fast float 1.000000e+00, %2409
  %2411 = fmul fast float %2400, %2410
  %2412 = fsub fast float -0.000000e+00, %2411
  %2413 = fdiv fast float %2412, %2403
  br label %2414

; <label>:2414                                    ; preds = %2407, %2387
  %2415 = phi float [ %2409, %2407 ], [ 1.000000e+00, %2387 ]
  %2416 = phi float [ %2413, %2407 ], [ %2400, %2387 ]
  %2417 = fcmp fast une float %2404, 0.000000e+00
  br i1 %2417, label %2418, label %2425, !dx.controlflow.hints !146

; <label>:2418                                    ; preds = %2414
  %2419 = fmul fast float %2404, 0x3FF7154760000000
  %2420 = call float @dx.op.unary.f32(i32 21, float %2419)  ; Exp(value)
  %2421 = fsub fast float 1.000000e+00, %2420
  %2422 = fmul fast float %2401, %2421
  %2423 = fsub fast float -0.000000e+00, %2422
  %2424 = fdiv fast float %2423, %2404
  br label %2425

; <label>:2425                                    ; preds = %2418, %2414
  %2426 = phi float [ %2420, %2418 ], [ 1.000000e+00, %2414 ]
  %2427 = phi float [ %2424, %2418 ], [ %2401, %2414 ]
  %2428 = fcmp fast une float %2405, 0.000000e+00
  br i1 %2428, label %2429, label %2436, !dx.controlflow.hints !146

; <label>:2429                                    ; preds = %2425
  %2430 = fmul fast float %2405, 0x3FF7154760000000
  %2431 = call float @dx.op.unary.f32(i32 21, float %2430)  ; Exp(value)
  %2432 = fsub fast float 1.000000e+00, %2431
  %2433 = fmul fast float %2402, %2432
  %2434 = fsub fast float -0.000000e+00, %2433
  %2435 = fdiv fast float %2434, %2405
  br label %2436

; <label>:2436                                    ; preds = %2429, %2425
  %2437 = phi float [ %2431, %2429 ], [ 1.000000e+00, %2425 ]
  %2438 = phi float [ %2435, %2429 ], [ %2402, %2425 ]
  %2439 = fcmp fast ogt float %2335, %2337
  br i1 %2439, label %2440, label %2460, !dx.controlflow.hints !147

; <label>:2440                                    ; preds = %2436
  %2441 = fsub fast float 1.000000e+00, %2337
  %2442 = fmul fast float %2353, %2441
  %2443 = fmul fast float %2354, %2441
  %2444 = fmul fast float %2355, %2441
  %2445 = fmul fast float %2356, %2441
  %2446 = fcmp fast une float %2445, 0.000000e+00
  br i1 %2446, label %2447, label %2498, !dx.controlflow.hints !148

; <label>:2447                                    ; preds = %2440
  %2448 = fmul fast float %2445, 0x3FF7154760000000
  %2449 = call float @dx.op.unary.f32(i32 21, float %2448)  ; Exp(value)
  %2450 = fsub fast float 1.000000e+00, %2449
  %2451 = fmul fast float %2442, %2450
  %2452 = fsub fast float -0.000000e+00, %2451
  %2453 = fmul fast float %2443, %2450
  %2454 = fsub fast float -0.000000e+00, %2453
  %2455 = fmul fast float %2444, %2450
  %2456 = fsub fast float -0.000000e+00, %2455
  %2457 = fdiv fast float %2452, %2445
  %2458 = fdiv fast float %2454, %2445
  %2459 = fdiv fast float %2456, %2445
  br label %2498

; <label>:2460                                    ; preds = %2436
  %2461 = fsub fast float 1.000000e+00, %2335
  %2462 = fmul fast float %2366, %2461
  %2463 = fmul fast float %2377, %2461
  %2464 = fmul fast float %2388, %2461
  %2465 = fmul fast float %2367, %2461
  %2466 = fmul fast float %2378, %2461
  %2467 = fmul fast float %2389, %2461
  %2468 = fcmp fast une float %2465, 0.000000e+00
  br i1 %2468, label %2469, label %2476, !dx.controlflow.hints !146

; <label>:2469                                    ; preds = %2460
  %2470 = fmul fast float %2465, 0x3FF7154760000000
  %2471 = call float @dx.op.unary.f32(i32 21, float %2470)  ; Exp(value)
  %2472 = fsub fast float 1.000000e+00, %2471
  %2473 = fmul fast float %2462, %2472
  %2474 = fsub fast float -0.000000e+00, %2473
  %2475 = fdiv fast float %2474, %2465
  br label %2476

; <label>:2476                                    ; preds = %2469, %2460
  %2477 = phi float [ %2475, %2469 ], [ %2462, %2460 ]
  %2478 = phi float [ %2471, %2469 ], [ 1.000000e+00, %2460 ]
  %2479 = fcmp fast une float %2466, 0.000000e+00
  br i1 %2479, label %2480, label %2487, !dx.controlflow.hints !146

; <label>:2480                                    ; preds = %2476
  %2481 = fmul fast float %2466, 0x3FF7154760000000
  %2482 = call float @dx.op.unary.f32(i32 21, float %2481)  ; Exp(value)
  %2483 = fsub fast float 1.000000e+00, %2482
  %2484 = fmul fast float %2463, %2483
  %2485 = fsub fast float -0.000000e+00, %2484
  %2486 = fdiv fast float %2485, %2466
  br label %2487

; <label>:2487                                    ; preds = %2480, %2476
  %2488 = phi float [ %2486, %2480 ], [ %2463, %2476 ]
  %2489 = phi float [ %2482, %2480 ], [ 1.000000e+00, %2476 ]
  %2490 = fcmp fast une float %2467, 0.000000e+00
  br i1 %2490, label %2491, label %2498, !dx.controlflow.hints !146

; <label>:2491                                    ; preds = %2487
  %2492 = fmul fast float %2467, 0x3FF7154760000000
  %2493 = call float @dx.op.unary.f32(i32 21, float %2492)  ; Exp(value)
  %2494 = fsub fast float 1.000000e+00, %2493
  %2495 = fmul fast float %2464, %2494
  %2496 = fsub fast float -0.000000e+00, %2495
  %2497 = fdiv fast float %2496, %2467
  br label %2498

; <label>:2498                                    ; preds = %2491, %2487, %2447, %2440
  %2499 = phi float [ %2497, %2491 ], [ %2459, %2447 ], [ %2444, %2440 ], [ %2464, %2487 ]
  %2500 = phi float [ %2488, %2491 ], [ %2458, %2447 ], [ %2443, %2440 ], [ %2488, %2487 ]
  %2501 = phi float [ %2477, %2491 ], [ %2457, %2447 ], [ %2442, %2440 ], [ %2477, %2487 ]
  %2502 = phi float [ %2493, %2491 ], [ %2449, %2447 ], [ 1.000000e+00, %2440 ], [ 1.000000e+00, %2487 ]
  %2503 = phi float [ %2489, %2491 ], [ %2449, %2447 ], [ 1.000000e+00, %2440 ], [ %2489, %2487 ]
  %2504 = phi float [ %2478, %2491 ], [ %2449, %2447 ], [ 1.000000e+00, %2440 ], [ %2478, %2487 ]
  %2505 = fmul fast float %2504, %2416
  %2506 = fmul fast float %2503, %2427
  %2507 = fmul fast float %2502, %2438
  %2508 = fadd fast float %2505, %2501
  %2509 = fadd fast float %2506, %2500
  %2510 = fadd fast float %2507, %2499
  %2511 = fmul fast float %2504, %2415
  %2512 = fmul fast float %2503, %2426
  %2513 = fmul fast float %2502, %2437
  br label %2514

; <label>:2514                                    ; preds = %2498, %2309
  %2515 = phi float [ %2513, %2498 ], [ %2315, %2309 ]
  %2516 = phi float [ %2512, %2498 ], [ %2314, %2309 ]
  %2517 = phi float [ %2511, %2498 ], [ %2313, %2309 ]
  %2518 = phi float [ %2510, %2498 ], [ %2312, %2309 ]
  %2519 = phi float [ %2509, %2498 ], [ %2311, %2309 ]
  %2520 = phi float [ %2508, %2498 ], [ %2310, %2309 ]
  %2521 = icmp eq i32 %1797, 0
  br i1 %2521, label %2570, label %2522, !dx.controlflow.hints !149

; <label>:2522                                    ; preds = %2514
  %2523 = and i32 %1796, 2
  %2524 = extractvalue %dx.types.CBufRet.i32 %1795, 0
  %2525 = icmp eq i32 %2524, 0
  br i1 %2525, label %2552, label %2526

; <label>:2526                                    ; preds = %2522
  br label %2527

; <label>:2527                                    ; preds = %2527, %2526
  %2528 = phi i32 [ %2544, %2527 ], [ 0, %2526 ]
  %2529 = add i32 %2528, 171
  %2530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 %2529)  ; CBufferLoadLegacy(handle,regIndex)
  %2531 = extractvalue %dx.types.CBufRet.f32 %2530, 0
  %2532 = extractvalue %dx.types.CBufRet.f32 %2530, 1
  %2533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2534 = extractvalue %dx.types.CBufRet.f32 %2533, 0
  %2535 = extractvalue %dx.types.CBufRet.f32 %2533, 1
  %2536 = fsub fast float %2531, %2534
  %2537 = fsub fast float %2532, %2535
  %2538 = extractvalue %dx.types.CBufRet.f32 %2530, 2
  %2539 = fmul fast float %2538, %2538
  %2540 = fsub fast float %216, %2536
  %2541 = fsub fast float %217, %2537
  %2542 = call float @dx.op.dot2.f32(i32 54, float %2540, float %2541, float %2540, float %2541)  ; Dot2(ax,ay,bx,by)
  %2543 = fcmp fast olt float %2542, %2539
  %2544 = add nuw nsw i32 %2528, 1
  %2545 = xor i1 %2543, true
  %2546 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2547 = extractvalue %dx.types.CBufRet.i32 %2546, 0
  %2548 = icmp ult i32 %2544, %2547
  %2549 = and i1 %2548, %2545
  br i1 %2549, label %2527, label %2550

; <label>:2550                                    ; preds = %2527
  %2551 = zext i1 %2543 to i32
  br label %2552

; <label>:2552                                    ; preds = %2550, %2522
  %2553 = phi i32 [ 0, %2522 ], [ %2551, %2550 ]
  %2554 = icmp ne i32 %2523, 0
  %2555 = icmp ne i32 %2553, 0
  %2556 = icmp eq i32 %2553, 0
  %2557 = select i1 %2554, i1 %2555, i1 %2556
  %2558 = and i1 %2557, %1801
  %2559 = select i1 %2558, float 1.000000e+00, float 0.000000e+00
  %2560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2561 = extractvalue %dx.types.CBufRet.f32 %2560, 0
  %2562 = extractvalue %dx.types.CBufRet.f32 %2560, 1
  %2563 = extractvalue %dx.types.CBufRet.f32 %2560, 2
  %2564 = fmul fast float %2559, %2561
  %2565 = fmul fast float %2559, %2562
  %2566 = fmul fast float %2559, %2563
  %2567 = fadd fast float %2564, %2520
  %2568 = fadd fast float %2565, %2519
  %2569 = fadd fast float %2566, %2518
  br label %2570

; <label>:2570                                    ; preds = %2552, %2514
  %2571 = phi float [ %2567, %2552 ], [ %2520, %2514 ]
  %2572 = phi float [ %2568, %2552 ], [ %2519, %2514 ]
  %2573 = phi float [ %2569, %2552 ], [ %2518, %2514 ]
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %189, i32 %190, i32 0, float %2571, float %2572, float %2573, float %2571, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %189, i32 %190, i32 1, float %2517, float %2516, float %2515, float %2517, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2574

; <label>:2574                                    ; preds = %2570, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

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
!dx.entryPoints = !{!46}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !34, !37, !41}
!5 = !{!6, !8, !9, !10, !11, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !27, !28, !30, !32, !33}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 33, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture1D<float>"* undef, !"", i32 0, i32 2, i32 1, i32 1, i32 0, !7}
!9 = !{i32 2, %"class.Texture3D<float>"* undef, !"", i32 0, i32 27, i32 1, i32 4, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 28, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 37, i32 1, i32 12, i32 0, !12}
!12 = !{i32 1, i32 4}
!13 = !{i32 5, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 0, i32 29, i32 1, i32 2, i32 0, !7}
!14 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 39, i32 1, i32 2, i32 0, !7}
!15 = !{i32 7, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 13, i32 1, i32 2, i32 0, !7}
!16 = !{i32 8, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 38, i32 1, i32 2, i32 0, !7}
!17 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 19, i32 1, i32 11, i32 0, null}
!18 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 20, i32 1, i32 11, i32 0, null}
!19 = !{i32 11, %"class.Texture1D<float>"* undef, !"", i32 0, i32 26, i32 1, i32 1, i32 0, !7}
!20 = !{i32 12, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 35, i32 1, i32 7, i32 0, !7}
!21 = !{i32 13, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 14, i32 1, i32 2, i32 0, !7}
!22 = !{i32 14, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 36, i32 1, i32 7, i32 0, !23}
!23 = !{i32 0, i32 14}
!24 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 34, i32 1, i32 11, i32 0, null}
!25 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 32, i32 1, i32 2, i32 0, !7}
!26 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 18, i32 1, i32 2, i32 0, !7}
!27 = !{i32 18, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 41, i32 1, i32 2, i32 0, !7}
!28 = !{i32 19, %"class.StructuredBuffer<GfxBSPAABBNodePacked>"* undef, !"", i32 0, i32 22, i32 1, i32 12, i32 0, !29}
!29 = !{i32 1, i32 8}
!30 = !{i32 20, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 23, i32 1, i32 10, i32 0, !31}
!31 = !{i32 0, i32 5}
!32 = !{i32 21, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 24, i32 1, i32 10, i32 0, !31}
!33 = !{i32 22, %"class.StructuredBuffer<GfxBSPAABBNodePacked>"* undef, !"", i32 0, i32 25, i32 1, i32 12, i32 0, !29}
!34 = !{!35, !36}
!35 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!36 = !{i32 1, %"class.RWTexture2DArray<vector<float, 3> >"* undef, !"", i32 0, i32 1, i32 1, i32 7, i1 false, i1 false, i1 false, !7}
!37 = !{!38, !39, !40}
!38 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!39 = !{i32 1, %hostlayout.DeferredEffectLightGlobalConsts* undef, !"", i32 0, i32 0, i32 1, i32 80, null}
!40 = !{i32 2, %DeferredEffectLightConsts_decl* undef, !"", i32 0, i32 1, i32 1, i32 240, null}
!41 = !{!42, !43, !44, !45}
!42 = !{i32 0, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!43 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!44 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!45 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!46 = !{void ()* @cs_deferred_effect_lighting_8, !"cs_deferred_effect_lighting_8", null, !4, !47}
!47 = !{i32 0, i64 272, i32 4, !48}
!48 = !{i32 1, i32 8, i32 8}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 1}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 1}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 1}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 1}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 1}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = !{!64, !64, i64 0}
!64 = !{!"int", !65, i64 0}
!65 = !{!"omnipotent char", !66, i64 0}
!66 = !{!"Simple C/C++ TBAA"}
!67 = !{!68, !70}
!68 = distinct !{!68, !69, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_Sprite@@ULightIteratorOutput_Sprite@@@Z: %lightingOutput"}
!69 = distinct !{!69, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_Sprite@@ULightIteratorOutput_Sprite@@@Z"}
!70 = distinct !{!70, !71, !"\01?Lights_Iterate_Sprite@@YAXULocalAttributes@@ULightIteratorInput_Sprite@@ULightIteratorOutput_Sprite@@@Z: %lightingOutput"}
!71 = distinct !{!71, !"\01?Lights_Iterate_Sprite@@YAXULocalAttributes@@ULightIteratorInput_Sprite@@ULightIteratorOutput_Sprite@@@Z"}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 2}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 1}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = !{!78, !78, i64 0}
!78 = !{!"float", !65, i64 0}
!79 = distinct !{!79, !80}
!80 = !{!"llvm.loop.unroll.disable"}
!81 = distinct !{!81, !80}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 1}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 1}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 2}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 2}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 1}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 2}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 2}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 2}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 2}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 2}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 2}
!93 = !{!70}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 2}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 2}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 1}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 1}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 1}
!99 = distinct !{!99, !80}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 1}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 2}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 2}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 2}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 2}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 2}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 2}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 2}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 2}
!109 = !{!110, !112, !114, !115, !117}
!110 = distinct !{!110, !111, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!111 = distinct !{!111, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!112 = distinct !{!112, !113, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!113 = distinct !{!113, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!114 = distinct !{!114, !113, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!115 = distinct !{!115, !116, !"\01?GetFog@@YAXV?$vector@M$02@@AIAV1@1_N@Z: %extinction"}
!116 = distinct !{!116, !"\01?GetFog@@YAXV?$vector@M$02@@AIAV1@1_N@Z"}
!117 = distinct !{!117, !116, !"\01?GetFog@@YAXV?$vector@M$02@@AIAV1@1_N@Z: %scattering"}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 2}
!119 = !{!120}
!120 = distinct !{!120, !121, !"\01?sort@@YAXAIAM00@Z: %c"}
!121 = distinct !{!121, !"\01?sort@@YAXAIAM00@Z"}
!122 = !{!123, !124, !110, !112, !114, !115, !117}
!123 = distinct !{!123, !121, !"\01?sort@@YAXAIAM00@Z: %a"}
!124 = distinct !{!124, !121, !"\01?sort@@YAXAIAM00@Z: %b"}
!125 = !{!124}
!126 = !{!123, !120, !110, !112, !114, !115, !117}
!127 = !{!123}
!128 = !{!124, !120, !110, !112, !114, !115, !117}
!129 = !{!130}
!130 = distinct !{!130, !131, !"\01?sort@@YAXAIAM00@Z: %c"}
!131 = distinct !{!131, !"\01?sort@@YAXAIAM00@Z"}
!132 = !{!133, !134, !110, !112, !114, !115, !117}
!133 = distinct !{!133, !131, !"\01?sort@@YAXAIAM00@Z: %a"}
!134 = distinct !{!134, !131, !"\01?sort@@YAXAIAM00@Z: %b"}
!135 = !{!134}
!136 = !{!133, !130, !110, !112, !114, !115, !117}
!137 = !{!133}
!138 = !{!134, !130, !110, !112, !114, !115, !117}
!139 = distinct !{!139, !"dx.controlflow.hints", i32 2}
!140 = distinct !{!140, !"dx.controlflow.hints", i32 2}
!141 = distinct !{!141, !"dx.controlflow.hints", i32 1}
!142 = distinct !{!142, !"dx.controlflow.hints", i32 2}
!143 = distinct !{!143, !"dx.controlflow.hints", i32 1}
!144 = distinct !{!144, !"dx.controlflow.hints", i32 1}
!145 = distinct !{!145, !"dx.controlflow.hints", i32 1}
!146 = distinct !{!146, !"dx.controlflow.hints", i32 1}
!147 = distinct !{!147, !"dx.controlflow.hints", i32 2}
!148 = distinct !{!148, !"dx.controlflow.hints", i32 1}
!149 = distinct !{!149, !"dx.controlflow.hints", i32 1}

