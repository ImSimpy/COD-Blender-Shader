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
; shader hash: 554251b3fc627e0f6ea2c11562ba3611
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
;                                   texture    byte         r/o      T1            t28     1
;                                   texture  struct         r/o      T2            t37     1
;                                   texture     f32     2darray      T3            t29     1
;                                   texture     f32          2d      T4            t39     1
;                                   texture     f32          2d      T5            t13     1
;                                   texture     f32          2d      T6            t38     1
;                                   texture    byte         r/o      T7            t19     1
;                                   texture    byte         r/o      T8            t20     1
;                                   texture     f32          1d      T9            t26     1
;                                   texture     f32     2darray     T10            t35     1
;                                   texture     f32          2d     T11            t14     1
;                                   textureunorm_f32     2darray     T12            t36     1
;                                   texture    byte         r/o     T13            t34     1
;                                   texture     f32          2d     T14            t32     1
;                                   texture     f32          2d     T15            t18     1
;                                   texture     f32          2d     T16            t41     1
;                                   texture  struct         r/o     T17            t22     1
;                                   texture     u32         buf     T18            t23     1
;                                   texture     u32         buf     T19            t24     1
;                                   texture  struct         r/o     T20            t25     1
;                                       UAV     f32     2darray      U0             u0     1
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
%struct.ByteAddressBuffer = type { i32 }
%"class.StructuredBuffer<unsigned int>" = type { i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture1D<float>" = type { float, %"class.Texture1D<float>::mips_type" }
%"class.Texture1D<float>::mips_type" = type { i32 }
%"class.StructuredBuffer<GfxBSPAABBNodePacked>" = type { %struct.GfxBSPAABBNodePacked }
%struct.GfxBSPAABBNodePacked = type { i32, i32 }
%"class.Buffer<unsigned int>" = type { i32 }
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
%hostlayout.DeferredEffectLightGlobalConsts = type { <4 x float>, [4 x <4 x float>] }
%DeferredEffectLightConsts_decl = type { %struct.DeferredEffectLightConsts }
%struct.DeferredEffectLightConsts = type { i32, float, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x <4 x i32>] }
%struct.SamplerComparisonState = type { i32 }
%struct.SamplerState = type { i32 }

@PCF_OFFSETS_8.v.1dim = internal constant [16 x float] [float 0xBFE6A09020000000, float 0x3FE6A09020000000, float 0.000000e+00, float -8.750000e-01, float 0x3FE0F837C0000000, float 0x3FE0F837C0000000, float -6.250000e-01, float 0.000000e+00, float 0x3FD6A161E0000000, float 0xBFD6A161E0000000, float 0.000000e+00, float 3.750000e-01, float 0xBFC6A161E0000000, float 0xBFC6A161E0000000, float 1.250000e-01, float 0.000000e+00], align 4

define void @cs_deferred_effect_lighting_4() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 24, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 23, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 41, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 36, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 26, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 39, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 29, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 28, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = alloca [4 x i32], align 4
  %31 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %32 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %33 = call i32 @dx.op.threadId.i32(i32 93, i32 2)  ; ThreadId(component)
  %34 = alloca [12 x float], align 4
  %35 = alloca [12 x float], align 4
  %36 = alloca [3 x float], align 4
  %37 = alloca [4 x float], align 4
  %38 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %39 = extractvalue %dx.types.CBufRet.i32 %38, 2
  %40 = add i32 %39, 6
  %41 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %40, i32 0)  ; BufferLoad(srv,index,wot)
  %42 = extractvalue %dx.types.ResRet.i32 %41, 0
  %43 = icmp ult i32 %31, %42
  br i1 %43, label %44, label %1825, !dx.controlflow.hints !46

; <label>:44                                      ; preds = %0
  %45 = uitofp i32 %32 to float
  %46 = uitofp i32 %33 to float
  %47 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %48 = extractvalue %dx.types.CBufRet.f32 %47, 1
  %49 = fdiv fast float %45, %48
  %50 = fdiv fast float %46, %48
  %51 = extractvalue %dx.types.CBufRet.f32 %47, 2
  %52 = fadd fast float %51, %49
  %53 = fadd fast float %51, %50
  %54 = add i32 %39, 9
  %55 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 %54)  ; CBufferLoadLegacy(handle,regIndex)
  %56 = extractvalue %dx.types.CBufRet.i32 %55, 2
  %57 = add i32 %56, %31
  %58 = shl i32 %57, 5
  %59 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %58, i32 undef)  ; BufferLoad(srv,index,wot)
  %60 = extractvalue %dx.types.ResRet.i32 %59, 0
  %61 = extractvalue %dx.types.ResRet.i32 %59, 1
  %62 = extractvalue %dx.types.ResRet.i32 %59, 2
  %63 = extractvalue %dx.types.ResRet.i32 %59, 3
  %64 = lshr i32 %63, 14
  %65 = and i32 %64, 16383
  %66 = and i32 %63, 16383
  %67 = bitcast i32 %60 to float
  %68 = bitcast i32 %61 to float
  %69 = bitcast i32 %62 to float
  %70 = and i32 %63, 536870912
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %111, label %72, !dx.controlflow.hints !47

; <label>:72                                      ; preds = %44
  %73 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %74 = extractvalue %dx.types.CBufRet.f32 %73, 2
  %75 = extractvalue %dx.types.CBufRet.f32 %73, 3
  %76 = fmul fast float %74, %67
  %77 = fmul fast float %75, %68
  %78 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %79 = extractvalue %dx.types.CBufRet.f32 %78, 0
  %80 = extractvalue %dx.types.CBufRet.f32 %78, 1
  %81 = fadd fast float %76, %79
  %82 = fadd fast float %77, %80
  %83 = call float @dx.op.unary.f32(i32 7, float %81)  ; Saturate(value)
  %84 = call float @dx.op.unary.f32(i32 7, float %82)  ; Saturate(value)
  %85 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %24, float %83, float %84, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %86 = extractvalue %dx.types.ResRet.f32 %85, 0
  %87 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %88 = extractvalue %dx.types.CBufRet.f32 %87, 0
  %89 = fmul fast float %88, %86
  %90 = fsub fast float %81, %83
  %91 = fsub fast float %82, %84
  %92 = extractvalue %dx.types.CBufRet.f32 %73, 0
  %93 = extractvalue %dx.types.CBufRet.f32 %73, 1
  %94 = fmul fast float %92, %90
  %95 = fmul fast float %93, %91
  %96 = fmul fast float %94, %94
  %97 = fmul fast float %95, %95
  %98 = fadd fast float %96, %97
  %99 = call float @dx.op.unary.f32(i32 24, float %98)  ; Sqrt(value)
  %100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %101 = extractvalue %dx.types.CBufRet.f32 %100, 3
  %102 = fmul fast float %101, %99
  %103 = call float @dx.op.unary.f32(i32 7, float %102)  ; Saturate(value)
  %104 = extractvalue %dx.types.CBufRet.f32 %100, 2
  %105 = fsub fast float %104, %89
  %106 = fmul fast float %105, %103
  %107 = extractvalue %dx.types.CBufRet.f32 %87, 1
  %108 = fadd fast float %89, %69
  %109 = fadd fast float %108, %107
  %110 = fadd fast float %109, %106
  br label %111

; <label>:111                                     ; preds = %72, %44
  %112 = phi float [ %110, %72 ], [ %69, %44 ]
  %113 = and i32 %63, 268435456
  %114 = icmp ne i32 %113, 0
  %115 = or i32 %58, 16
  %116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %115, i32 undef)  ; BufferLoad(srv,index,wot)
  %117 = extractvalue %dx.types.ResRet.i32 %116, 0
  %118 = extractvalue %dx.types.ResRet.i32 %116, 1
  %119 = extractvalue %dx.types.ResRet.i32 %116, 2
  %120 = extractvalue %dx.types.ResRet.i32 %116, 3
  %121 = and i32 %117, 65535
  %122 = call float @dx.op.legacyF16ToF32(i32 131, i32 %121)  ; LegacyF16ToF32(value)
  %123 = lshr i32 %117, 16
  %124 = call float @dx.op.legacyF16ToF32(i32 131, i32 %123)  ; LegacyF16ToF32(value)
  %125 = and i32 %118, 1023
  %126 = uitofp i32 %125 to float
  %127 = lshr i32 %118, 10
  %128 = and i32 %127, 1023
  %129 = uitofp i32 %128 to float
  %130 = lshr i32 %118, 20
  %131 = and i32 %130, 1023
  %132 = uitofp i32 %131 to float
  %133 = fmul fast float %126, 0x3F60040100000000
  %134 = fmul fast float %129, 0x3F60040100000000
  %135 = fmul fast float %132, 0x3F60040100000000
  %136 = fadd fast float %133, -1.000000e+00
  %137 = fadd fast float %134, -1.000000e+00
  %138 = fadd fast float %135, -1.000000e+00
  %139 = and i32 %119, 1023
  %140 = uitofp i32 %139 to float
  %141 = lshr i32 %119, 10
  %142 = and i32 %141, 1023
  %143 = uitofp i32 %142 to float
  %144 = lshr i32 %119, 20
  %145 = and i32 %144, 1023
  %146 = uitofp i32 %145 to float
  %147 = fmul fast float %140, 0x3F60040100000000
  %148 = fmul fast float %143, 0x3F60040100000000
  %149 = fmul fast float %146, 0x3F60040100000000
  %150 = fadd fast float %147, -1.000000e+00
  %151 = fadd fast float %148, -1.000000e+00
  %152 = fadd fast float %149, -1.000000e+00
  %153 = and i32 %120, 65535
  %154 = call float @dx.op.legacyF16ToF32(i32 131, i32 %153)  ; LegacyF16ToF32(value)
  %155 = lshr i32 %120, 16
  %156 = call float @dx.op.legacyF16ToF32(i32 131, i32 %155)  ; LegacyF16ToF32(value)
  %157 = call float @dx.op.unary.f32(i32 13, float %154)  ; Sin(value)
  %158 = call float @dx.op.unary.f32(i32 12, float %154)  ; Cos(value)
  %159 = fmul fast float %158, %136
  %160 = fmul fast float %158, %137
  %161 = fmul fast float %158, %138
  %162 = fmul fast float %157, %150
  %163 = fmul fast float %151, %157
  %164 = fmul fast float %152, %157
  %165 = fadd fast float %159, %162
  %166 = fadd fast float %160, %163
  %167 = fadd fast float %161, %164
  %168 = fmul fast float %165, %122
  %169 = fmul fast float %166, %122
  %170 = fmul fast float %167, %122
  %171 = fmul fast float %157, %136
  %172 = fmul fast float %137, %157
  %173 = fmul fast float %138, %157
  %174 = fmul fast float %158, %150
  %175 = fmul fast float %158, %151
  %176 = fmul fast float %158, %152
  %177 = fsub fast float %171, %174
  %178 = fsub fast float %172, %175
  %179 = fsub fast float %173, %176
  %180 = fmul fast float %177, %124
  %181 = fmul fast float %178, %124
  %182 = fmul fast float %179, %124
  %183 = add i32 %65, %32
  %184 = add i32 %66, %33
  %185 = fmul fast float %168, %52
  %186 = fmul fast float %169, %52
  %187 = fmul fast float %170, %52
  %188 = fmul fast float %180, %53
  %189 = fmul fast float %181, %53
  %190 = fmul fast float %182, %53
  %191 = fadd fast float %188, %185
  %192 = fmul fast float %191, 2.000000e+00
  %193 = fsub fast float %67, %168
  %194 = fsub fast float %193, %180
  %195 = fadd fast float %194, %192
  %196 = fadd fast float %189, %186
  %197 = fmul fast float %196, 2.000000e+00
  %198 = fsub fast float %68, %169
  %199 = fsub fast float %198, %181
  %200 = fadd fast float %199, %197
  %201 = fadd fast float %190, %187
  %202 = fmul fast float %201, 2.000000e+00
  %203 = fsub fast float %112, %170
  %204 = fsub fast float %203, %182
  %205 = fadd fast float %204, %202
  %206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %207 = extractvalue %dx.types.CBufRet.f32 %206, 0
  %208 = extractvalue %dx.types.CBufRet.f32 %206, 1
  %209 = extractvalue %dx.types.CBufRet.f32 %206, 2
  %210 = fsub fast float %195, %207
  %211 = fsub fast float %200, %208
  %212 = fsub fast float %205, %209
  %213 = fsub fast float -0.000000e+00, %212
  %214 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %215 = extractvalue %dx.types.CBufRet.i32 %214, 3
  %216 = and i32 %215, 3
  %217 = icmp ne i32 %216, 0
  %218 = and i32 %215, 4
  %219 = icmp eq i32 %218, 0
  %220 = and i1 %217, %219
  %221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %222 = extractvalue %dx.types.CBufRet.f32 %221, 0
  %223 = extractvalue %dx.types.CBufRet.f32 %221, 1
  %224 = fsub fast float %195, %222
  %225 = fsub fast float %200, %223
  %226 = fmul fast float %224, %224
  %227 = fmul fast float %225, %225
  %228 = fadd fast float %226, %227
  %229 = call float @dx.op.unary.f32(i32 24, float %228)  ; Sqrt(value)
  %230 = extractvalue %dx.types.CBufRet.f32 %221, 2
  %231 = fcmp fast olt float %229, %230
  br i1 %231, label %232, label %300, !dx.controlflow.hints !48

; <label>:232                                     ; preds = %111
  %233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %234 = extractvalue %dx.types.CBufRet.f32 %233, 0
  %235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %236 = extractvalue %dx.types.CBufRet.f32 %235, 0
  %237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %238 = extractvalue %dx.types.CBufRet.f32 %237, 0
  %239 = extractvalue %dx.types.CBufRet.f32 %233, 1
  %240 = extractvalue %dx.types.CBufRet.f32 %235, 1
  %241 = extractvalue %dx.types.CBufRet.f32 %237, 1
  %242 = extractvalue %dx.types.CBufRet.f32 %233, 3
  %243 = extractvalue %dx.types.CBufRet.f32 %235, 3
  %244 = extractvalue %dx.types.CBufRet.f32 %237, 3
  %245 = fadd fast float %242, %195
  %246 = fadd fast float %243, %200
  %247 = fadd fast float %244, %205
  %248 = fmul fast float %245, %234
  %249 = call float @dx.op.tertiary.f32(i32 46, float %246, float %236, float %248)  ; FMad(a,b,c)
  %250 = call float @dx.op.tertiary.f32(i32 46, float %247, float %238, float %249)  ; FMad(a,b,c)
  %251 = fmul fast float %245, %239
  %252 = call float @dx.op.tertiary.f32(i32 46, float %246, float %240, float %251)  ; FMad(a,b,c)
  %253 = call float @dx.op.tertiary.f32(i32 46, float %247, float %241, float %252)  ; FMad(a,b,c)
  %254 = fsub fast float %250, %242
  %255 = fsub fast float %253, %243
  %256 = fsub fast float %254, %222
  %257 = fadd fast float %256, %230
  %258 = fsub fast float %255, %223
  %259 = fadd fast float %258, %230
  %260 = extractvalue %dx.types.CBufRet.f32 %221, 3
  %261 = fmul fast float %257, %260
  %262 = fmul fast float %259, %260
  %263 = call float @dx.op.unary.f32(i32 7, float %261)  ; Saturate(value)
  %264 = call float @dx.op.unary.f32(i32 7, float %262)  ; Saturate(value)
  %265 = fsub fast float 1.000000e+00, %263
  %266 = fsub fast float 1.000000e+00, %264
  %267 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %24, float %265, float %266, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %268 = extractvalue %dx.types.ResRet.f32 %267, 0
  %269 = fcmp fast ugt float %268, 0.000000e+00
  br i1 %269, label %270, label %300, !dx.controlflow.hints !49

; <label>:270                                     ; preds = %232
  %271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %272 = extractvalue %dx.types.CBufRet.f32 %271, 2
  %273 = fmul fast float %272, %268
  %274 = extractvalue %dx.types.CBufRet.f32 %271, 3
  %275 = fadd fast float %274, %273
  %276 = extractvalue %dx.types.CBufRet.f32 %237, 2
  %277 = fadd fast float %275, %244
  %278 = fmul fast float %250, %238
  %279 = call float @dx.op.tertiary.f32(i32 46, float %253, float %241, float %278)  ; FMad(a,b,c)
  %280 = call float @dx.op.tertiary.f32(i32 46, float %277, float %276, float %279)  ; FMad(a,b,c)
  %281 = fsub fast float %280, %244
  %282 = fsub fast float %281, %209
  %283 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %24, float %265, float %266, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %284 = extractvalue %dx.types.ResRet.f32 %283, 0
  %285 = extractvalue %dx.types.ResRet.f32 %283, 1
  %286 = extractvalue %dx.types.ResRet.f32 %283, 2
  %287 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %24, float %265, float %266, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %288 = extractvalue %dx.types.ResRet.f32 %287, 0
  %289 = extractvalue %dx.types.ResRet.f32 %287, 1
  %290 = extractvalue %dx.types.ResRet.f32 %287, 2
  %291 = fadd fast float %288, %284
  %292 = fmul fast float %291, 0x3F847AE140000000
  %293 = fadd fast float %289, %285
  %294 = fmul fast float %293, 0x3F847AE140000000
  %295 = fadd fast float %290, %286
  %296 = fmul fast float %295, 0x3F847AE140000000
  %297 = fmul float %292, 0x3FF7154760000000
  %298 = fmul float %294, 0x3FF7154760000000
  %299 = fmul float %296, 0x3FF7154760000000
  br label %300

; <label>:300                                     ; preds = %270, %232, %111
  %301 = phi float [ 0.000000e+00, %111 ], [ %297, %270 ], [ 0.000000e+00, %232 ]
  %302 = phi float [ 0.000000e+00, %111 ], [ %298, %270 ], [ 0.000000e+00, %232 ]
  %303 = phi float [ 0.000000e+00, %111 ], [ %299, %270 ], [ 0.000000e+00, %232 ]
  %304 = phi float [ 0.000000e+00, %111 ], [ %282, %270 ], [ -1.310720e+05, %232 ]
  %305 = phi i32 [ 0, %111 ], [ 1, %270 ], [ 0, %232 ]
  %306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %307 = extractvalue %dx.types.CBufRet.f32 %306, 3
  %308 = fcmp fast oeq float %307, 0.000000e+00
  br i1 %308, label %1240, label %309, !dx.controlflow.hints !50

; <label>:309                                     ; preds = %300
  %310 = extractvalue %dx.types.CBufRet.f32 %306, 0
  %311 = extractvalue %dx.types.CBufRet.f32 %306, 1
  %312 = extractvalue %dx.types.CBufRet.f32 %306, 2
  %313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %314 = extractvalue %dx.types.CBufRet.f32 %313, 0
  %315 = extractvalue %dx.types.CBufRet.f32 %313, 1
  %316 = extractvalue %dx.types.CBufRet.f32 %313, 2
  %317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %318 = extractvalue %dx.types.CBufRet.f32 %317, 0
  %319 = extractvalue %dx.types.CBufRet.f32 %317, 1
  %320 = call float @dx.op.dot3.f32(i32 55, float %314, float %315, float %316, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %321 = select i1 %220, float %318, float %314
  %322 = select i1 %220, float %320, float %315
  %323 = select i1 %220, float %319, float %316
  %324 = fcmp fast olt float %307, 0.000000e+00
  br i1 %324, label %967, label %325, !dx.controlflow.hints !51

; <label>:325                                     ; preds = %309
  %326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %327 = extractvalue %dx.types.CBufRet.f32 %326, 0
  %328 = extractvalue %dx.types.CBufRet.f32 %326, 1
  %329 = extractvalue %dx.types.CBufRet.f32 %326, 2
  %330 = extractvalue %dx.types.CBufRet.f32 %326, 3
  %331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %332 = extractvalue %dx.types.CBufRet.f32 %331, 0
  %333 = extractvalue %dx.types.CBufRet.f32 %331, 1
  %334 = extractvalue %dx.types.CBufRet.f32 %331, 2
  %335 = extractvalue %dx.types.CBufRet.f32 %331, 3
  %336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %337 = extractvalue %dx.types.CBufRet.f32 %336, 0
  %338 = extractvalue %dx.types.CBufRet.f32 %336, 1
  %339 = extractvalue %dx.types.CBufRet.f32 %336, 2
  %340 = extractvalue %dx.types.CBufRet.f32 %336, 3
  %341 = fmul fast float %327, %210
  %342 = call float @dx.op.tertiary.f32(i32 46, float %211, float %328, float %341)  ; FMad(a,b,c)
  %343 = call float @dx.op.tertiary.f32(i32 46, float %212, float %329, float %342)  ; FMad(a,b,c)
  %344 = fadd fast float %343, %330
  %345 = fmul fast float %332, %210
  %346 = call float @dx.op.tertiary.f32(i32 46, float %211, float %333, float %345)  ; FMad(a,b,c)
  %347 = call float @dx.op.tertiary.f32(i32 46, float %212, float %334, float %346)  ; FMad(a,b,c)
  %348 = fadd fast float %347, %335
  %349 = fmul fast float %337, %210
  %350 = call float @dx.op.tertiary.f32(i32 46, float %211, float %338, float %349)  ; FMad(a,b,c)
  %351 = call float @dx.op.tertiary.f32(i32 46, float %212, float %339, float %350)  ; FMad(a,b,c)
  %352 = fadd fast float %351, %340
  %353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %354 = extractvalue %dx.types.CBufRet.f32 %353, 0
  %355 = extractvalue %dx.types.CBufRet.f32 %353, 1
  %356 = extractvalue %dx.types.CBufRet.f32 %353, 3
  %357 = fmul fast float %356, %344
  %358 = fmul fast float %356, %348
  %359 = fadd fast float %357, %354
  %360 = fadd fast float %358, %355
  %361 = extractvalue %dx.types.CBufRet.f32 %353, 2
  %362 = fcmp fast olt float %361, 0.000000e+00
  %363 = fsub fast float -0.000000e+00, %361
  %364 = select i1 %362, float %363, float %361
  %365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %366 = extractvalue %dx.types.CBufRet.f32 %365, 1
  %367 = fadd fast float %364, %366
  %368 = fcmp fast ogt float %367, 0.000000e+00
  br i1 %368, label %369, label %401, !dx.controlflow.hints !52

; <label>:369                                     ; preds = %325
  %370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %371 = extractvalue %dx.types.CBufRet.f32 %370, 1
  %372 = fsub fast float %371, %352
  %373 = extractvalue %dx.types.CBufRet.f32 %370, 2
  %374 = fmul fast float %372, %373
  %375 = fsub fast float 1.000000e+00, %374
  %376 = call float @dx.op.unary.f32(i32 7, float %375)  ; Saturate(value)
  %377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %378 = extractvalue %dx.types.CBufRet.f32 %377, 0
  %379 = extractvalue %dx.types.CBufRet.f32 %377, 1
  %380 = fsub fast float %359, %378
  %381 = fsub fast float %360, %379
  %382 = fcmp fast olt float %380, 0.000000e+00
  %383 = fcmp fast olt float %381, 0.000000e+00
  %384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %385 = extractvalue %dx.types.CBufRet.f32 %384, 0
  %386 = extractvalue %dx.types.CBufRet.f32 %384, 1
  %387 = extractvalue %dx.types.CBufRet.f32 %384, 2
  %388 = extractvalue %dx.types.CBufRet.f32 %384, 3
  %389 = select i1 %382, float %385, float %387
  %390 = select i1 %383, float %386, float %388
  %391 = fmul fast float %389, %380
  %392 = fmul fast float %390, %381
  %393 = call float @dx.op.unary.f32(i32 6, float %391)  ; FAbs(value)
  %394 = call float @dx.op.unary.f32(i32 6, float %392)  ; FAbs(value)
  %395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %396 = extractvalue %dx.types.CBufRet.f32 %395, 0
  %397 = call float @dx.op.binary.f32(i32 35, float %393, float %394)  ; FMax(a,b)
  %398 = fsub fast float %396, %397
  %399 = call float @dx.op.unary.f32(i32 7, float %398)  ; Saturate(value)
  %400 = fmul fast float %399, %376
  br label %401

; <label>:401                                     ; preds = %369, %325
  %402 = phi float [ %400, %369 ], [ 0.000000e+00, %325 ]
  %403 = call float @dx.op.binary.f32(i32 35, float %402, float 0.000000e+00)  ; FMax(a,b)
  %404 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %403)  ; FMax(a,b)
  %405 = fcmp fast olt float %404, 1.000000e+00
  br i1 %405, label %406, label %804, !dx.controlflow.hints !53

; <label>:406                                     ; preds = %401
  %407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %408 = extractvalue %dx.types.CBufRet.f32 %407, 0
  %409 = fcmp fast une float %408, 0.000000e+00
  br i1 %409, label %410, label %804, !dx.controlflow.hints !54

; <label>:410                                     ; preds = %406
  %411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %412 = extractvalue %dx.types.CBufRet.f32 %411, 0
  %413 = extractvalue %dx.types.CBufRet.f32 %411, 1
  %414 = extractvalue %dx.types.CBufRet.f32 %411, 2
  %415 = extractvalue %dx.types.CBufRet.f32 %411, 3
  %416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %417 = extractvalue %dx.types.CBufRet.f32 %416, 0
  %418 = extractvalue %dx.types.CBufRet.f32 %416, 1
  %419 = extractvalue %dx.types.CBufRet.f32 %416, 2
  %420 = extractvalue %dx.types.CBufRet.f32 %416, 3
  %421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %422 = extractvalue %dx.types.CBufRet.f32 %421, 0
  %423 = extractvalue %dx.types.CBufRet.f32 %421, 1
  %424 = extractvalue %dx.types.CBufRet.f32 %421, 2
  %425 = extractvalue %dx.types.CBufRet.f32 %421, 3
  %426 = fmul fast float %412, %210
  %427 = call float @dx.op.tertiary.f32(i32 46, float %211, float %413, float %426)  ; FMad(a,b,c)
  %428 = call float @dx.op.tertiary.f32(i32 46, float %212, float %414, float %427)  ; FMad(a,b,c)
  %429 = fadd fast float %428, %415
  %430 = fmul fast float %417, %210
  %431 = call float @dx.op.tertiary.f32(i32 46, float %211, float %418, float %430)  ; FMad(a,b,c)
  %432 = call float @dx.op.tertiary.f32(i32 46, float %212, float %419, float %431)  ; FMad(a,b,c)
  %433 = fadd fast float %432, %420
  %434 = fmul fast float %422, %210
  %435 = call float @dx.op.tertiary.f32(i32 46, float %211, float %423, float %434)  ; FMad(a,b,c)
  %436 = call float @dx.op.tertiary.f32(i32 46, float %212, float %424, float %435)  ; FMad(a,b,c)
  %437 = fadd fast float %436, %425
  %438 = fcmp fast oge float %429, 1.000000e+00
  %439 = fcmp fast oge float %433, 1.000000e+00
  %440 = or i1 %438, %439
  %441 = fcmp fast olt float %429, 0.000000e+00
  %442 = fcmp fast olt float %433, 0.000000e+00
  %443 = or i1 %441, %442
  %444 = or i1 %440, %443
  br i1 %444, label %804, label %445, !dx.controlflow.hints !55

; <label>:445                                     ; preds = %410
  %446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %447 = extractvalue %dx.types.CBufRet.f32 %446, 0
  %448 = extractvalue %dx.types.CBufRet.f32 %446, 1
  %449 = extractvalue %dx.types.CBufRet.f32 %446, 2
  %450 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %451 = extractvalue %dx.types.CBufRet.i32 %450, 2
  %452 = uitofp i32 %451 to float
  %453 = extractvalue %dx.types.CBufRet.i32 %450, 3
  %454 = uitofp i32 %453 to float
  %455 = extractvalue %dx.types.CBufRet.f32 %446, 3
  %456 = fmul fast float %455, 2.000000e+00
  %457 = fsub fast float %429, %447
  %458 = fsub fast float %433, %448
  %459 = fmul fast float %456, %457
  %460 = fmul fast float %456, %458
  %461 = fdiv fast float 1.000000e+00, %312
  %462 = fmul fast float %460, %461
  %463 = call float @dx.op.unary.f32(i32 6, float %462)  ; FAbs(value)
  %464 = fmul fast float %449, %212
  %465 = fmul fast float %464, %456
  %466 = call float @dx.op.unary.f32(i32 6, float %465)  ; FAbs(value)
  %467 = call float @dx.op.unary.f32(i32 6, float %459)  ; FAbs(value)
  %468 = call float @dx.op.binary.f32(i32 35, float %466, float %463)  ; FMax(a,b)
  %469 = call float @dx.op.binary.f32(i32 35, float %467, float %468)  ; FMax(a,b)
  %470 = fmul fast float %469, 2.000000e+00
  %471 = call float @dx.op.unary.f32(i32 23, float %470)  ; Log(value)
  %472 = call float @dx.op.binary.f32(i32 35, float %471, float %452)  ; FMax(a,b)
  %473 = call float @dx.op.unary.f32(i32 22, float %472)  ; Frc(value)
  %474 = fadd fast float %473, 0xBFEA666660000000
  %475 = fmul fast float %474, 8.000000e+00
  %476 = call float @dx.op.unary.f32(i32 7, float %475)  ; Saturate(value)
  %477 = call float @dx.op.unary.f32(i32 27, float %472)  ; Round_ni(value)
  %478 = fadd fast float %477, %476
  %479 = call float @dx.op.binary.f32(i32 36, float %478, float %454)  ; FMin(a,b)
  %480 = call float @dx.op.unary.f32(i32 27, float %479)  ; Round_ni(value)
  %481 = fsub fast float -0.000000e+00, %480
  %482 = call float @dx.op.unary.f32(i32 21, float %481)  ; Exp(value)
  %483 = fmul fast float %482, %456
  %484 = fmul fast float %483, %429
  %485 = fmul fast float %483, %433
  %486 = fmul fast float %484, 2.500000e-01
  %487 = fmul fast float %485, 2.500000e-01
  %488 = fadd fast float %486, 5.000000e-01
  %489 = fadd fast float %487, 5.000000e-01
  %490 = fsub fast float %454, %452
  %491 = fptoui float %490 to i32
  %492 = add i32 %491, 320
  %493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 %492)  ; CBufferLoadLegacy(handle,regIndex)
  %494 = extractvalue %dx.types.CBufRet.f32 %493, 0
  %495 = extractvalue %dx.types.CBufRet.f32 %493, 1
  %496 = fcmp fast une float %479, %454
  %497 = fsub fast float %429, %494
  %498 = fsub fast float %433, %495
  %499 = call float @dx.op.unary.f32(i32 6, float %497)  ; FAbs(value)
  %500 = call float @dx.op.unary.f32(i32 6, float %498)  ; FAbs(value)
  %501 = fmul fast float %499, %483
  %502 = fmul fast float %500, %483
  %503 = fcmp fast olt float %501, 1.000000e+00
  %504 = fcmp fast olt float %502, 1.000000e+00
  %505 = and i1 %503, %504
  %506 = or i1 %496, %505
  br i1 %506, label %507, label %804, !dx.controlflow.hints !56

; <label>:507                                     ; preds = %445
  %508 = fmul fast float %485, 5.000000e-01
  %509 = fmul fast float %484, 5.000000e-01
  %510 = fadd fast float %508, 5.000000e-01
  %511 = fadd fast float %509, 5.000000e-01
  %512 = sitofp i32 %451 to float
  %513 = fsub fast float %479, %512
  %514 = call float @dx.op.unary.f32(i32 27, float %513)  ; Round_ni(value)
  %515 = call float @dx.op.unary.f32(i32 22, float %479)  ; Frc(value)
  %516 = call float @dx.op.unary.f32(i32 22, float %511)  ; Frc(value)
  %517 = call float @dx.op.unary.f32(i32 22, float %510)  ; Frc(value)
  %518 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %23, float %516, float %517, float %514, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %519 = extractvalue %dx.types.ResRet.f32 %518, 0
  %520 = extractvalue %dx.types.ResRet.f32 %518, 1
  %521 = extractvalue %dx.types.ResRet.f32 %518, 2
  %522 = extractvalue %dx.types.ResRet.f32 %518, 3
  %523 = fcmp fast ogt float %515, 0.000000e+00
  br i1 %523, label %524, label %545, !dx.controlflow.hints !57

; <label>:524                                     ; preds = %507
  %525 = fadd fast float %514, 1.000000e+00
  %526 = call float @dx.op.unary.f32(i32 22, float %488)  ; Frc(value)
  %527 = call float @dx.op.unary.f32(i32 22, float %489)  ; Frc(value)
  %528 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %23, float %526, float %527, float %525, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %529 = extractvalue %dx.types.ResRet.f32 %528, 0
  %530 = extractvalue %dx.types.ResRet.f32 %528, 1
  %531 = extractvalue %dx.types.ResRet.f32 %528, 2
  %532 = extractvalue %dx.types.ResRet.f32 %528, 3
  %533 = fsub fast float %529, %519
  %534 = fsub fast float %530, %520
  %535 = fsub fast float %531, %521
  %536 = fsub fast float %532, %522
  %537 = fmul fast float %533, %515
  %538 = fmul fast float %534, %515
  %539 = fmul fast float %535, %515
  %540 = fmul fast float %536, %515
  %541 = fadd fast float %537, %519
  %542 = fadd fast float %538, %520
  %543 = fadd fast float %539, %521
  %544 = fadd fast float %540, %522
  br label %545

; <label>:545                                     ; preds = %524, %507
  %546 = phi float [ %541, %524 ], [ %519, %507 ]
  %547 = phi float [ %542, %524 ], [ %520, %507 ]
  %548 = phi float [ %543, %524 ], [ %521, %507 ]
  %549 = phi float [ %544, %524 ], [ %522, %507 ]
  %550 = fadd fast float %546, -5.000000e-01
  %551 = fadd fast float %548, -5.000000e-01
  %552 = fmul fast float %550, 0xBFD5555560000000
  %553 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %551, float %552)  ; FMad(a,b,c)
  %554 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %547, float 0.000000e+00)  ; FMad(a,b,c)
  %555 = fadd fast float %554, %549
  %556 = fmul fast float %550, -7.500000e-01
  %557 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %551, float %556)  ; FMad(a,b,c)
  %558 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %547, float 0.000000e+00)  ; FMad(a,b,c)
  %559 = fadd fast float %558, %549
  %560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %561 = extractvalue %dx.types.CBufRet.f32 %560, 0
  %562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %563 = extractvalue %dx.types.CBufRet.f32 %562, 0
  %564 = extractvalue %dx.types.CBufRet.f32 %562, 1
  %565 = extractvalue %dx.types.CBufRet.f32 %562, 2
  %566 = extractvalue %dx.types.CBufRet.f32 %562, 3
  %567 = fsub fast float %563, %553
  %568 = fsub fast float %564, %555
  %569 = fsub fast float %565, %557
  %570 = fsub fast float %566, %559
  %571 = fmul fast float %567, %561
  %572 = fmul fast float %568, %561
  %573 = fmul fast float %569, %561
  %574 = fmul fast float %570, %561
  %575 = fadd fast float %571, %553
  %576 = fadd fast float %572, %555
  %577 = fadd fast float %573, %557
  %578 = fadd fast float %574, %559
  %579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %580 = extractvalue %dx.types.ResRet.i32 %579, 0
  %581 = and i32 %580, 536870911
  %582 = uitofp i32 %581 to float
  %583 = fmul fast float %582, %429
  %584 = fmul fast float %582, %433
  %585 = fptoui float %583 to i32
  %586 = fptoui float %584 to i32
  %587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %588 = extractvalue %dx.types.ResRet.i32 %587, 0
  %589 = and i32 %588, 31
  %590 = lshr i32 %585, %589
  %591 = lshr i32 %586, %589
  %592 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %593 = extractvalue %dx.types.ResRet.i32 %592, 0
  %594 = and i32 %593, 31
  %595 = shl i32 1, %594
  %596 = call i32 @dx.op.binary.i32(i32 40, i32 %595, i32 4)  ; UMin(a,b)
  %597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %598 = extractvalue %dx.types.ResRet.i32 %597, 0
  %599 = extractvalue %dx.types.ResRet.i32 %597, 1
  %600 = icmp eq i32 %596, 0
  br i1 %600, label %642, label %601

; <label>:601                                     ; preds = %545
  br label %602

; <label>:602                                     ; preds = %630, %601
  %603 = phi i32 [ %633, %630 ], [ 0, %601 ]
  %604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %605 = extractvalue %dx.types.ResRet.i32 %604, 0
  %606 = lshr i32 %605, 16
  %607 = and i32 %606, 31
  %608 = shl i32 %591, %607
  %609 = add i32 %608, %590
  %610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %611 = extractvalue %dx.types.ResRet.i32 %610, 0
  %612 = and i32 %611, 31
  %613 = shl i32 %609, %612
  %614 = add i32 %613, %603
  %615 = shl i32 %614, 2
  %616 = add i32 %615, 32
  %617 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %616, i32 undef)  ; BufferLoad(srv,index,wot)
  %618 = extractvalue %dx.types.ResRet.i32 %617, 0
  %619 = icmp slt i32 %618, 0
  %620 = getelementptr [12 x float], [12 x float]* %34, i32 0, i32 %603
  %621 = getelementptr [12 x float], [12 x float]* %35, i32 0, i32 %603
  %622 = bitcast float* %620 to i32*
  %623 = bitcast float* %621 to i32*
  br i1 %619, label %624, label %630, !dx.controlflow.hints !58

; <label>:624                                     ; preds = %602
  %625 = and i32 %618, 1073741823
  %626 = add nuw nsw i32 %625, 20
  %627 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %626, i32 undef)  ; BufferLoad(srv,index,wot)
  %628 = extractvalue %dx.types.ResRet.i32 %627, 0
  %629 = extractvalue %dx.types.ResRet.i32 %627, 1
  br label %630

; <label>:630                                     ; preds = %624, %602
  %631 = phi i32 [ %628, %624 ], [ %598, %602 ]
  %632 = phi i32 [ %629, %624 ], [ %599, %602 ]
  store i32 %631, i32* %622, align 4
  store i32 %632, i32* %623, align 4
  %633 = add nuw i32 %603, 1
  %634 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %635 = extractvalue %dx.types.CBufRet.i32 %634, 2
  %636 = icmp eq i32 %635, 0
  %637 = icmp ugt i32 %618, -1073741825
  %638 = and i1 %637, %636
  %639 = icmp ult i32 %633, %596
  %640 = and i1 %638, %639
  br i1 %640, label %602, label %641, !dx.controlflow.hints !59

; <label>:641                                     ; preds = %630
  br label %642

; <label>:642                                     ; preds = %641, %545
  %643 = phi i32 [ 0, %545 ], [ %633, %641 ]
  %644 = extractvalue %dx.types.CBufRet.f32 %407, 2
  %645 = fptoui float %644 to i32
  %646 = icmp eq i32 %645, 0
  br i1 %646, label %698, label %647

; <label>:647                                     ; preds = %642
  br label %648

; <label>:648                                     ; preds = %693, %647
  %649 = phi i32 [ %694, %693 ], [ %643, %647 ]
  %650 = phi i32 [ %695, %693 ], [ 0, %647 ]
  %651 = lshr i32 %650, 2
  %652 = and i32 %650, 3
  %653 = add nuw nsw i32 %651, 83
  %654 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 %653)  ; CBufferLoadLegacy(handle,regIndex)
  %655 = extractvalue %dx.types.CBufRet.i32 %654, 0
  %656 = extractvalue %dx.types.CBufRet.i32 %654, 1
  %657 = extractvalue %dx.types.CBufRet.i32 %654, 2
  %658 = extractvalue %dx.types.CBufRet.i32 %654, 3
  %659 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 0
  store i32 %655, i32* %659, align 4
  %660 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 1
  store i32 %656, i32* %660, align 4
  %661 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 2
  store i32 %657, i32* %661, align 4
  %662 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 3
  store i32 %658, i32* %662, align 4
  %663 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 %652
  %664 = load i32, i32* %663, align 4, !tbaa !60, !noalias !64
  %665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %666 = extractvalue %dx.types.ResRet.i32 %665, 0
  %667 = lshr i32 %666, 16
  %668 = and i32 %667, 31
  %669 = shl i32 %591, %668
  %670 = add i32 %669, %590
  %671 = shl i32 %670, 2
  %672 = add i32 %671, %664
  %673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %672, i32 undef)  ; BufferLoad(srv,index,wot)
  %674 = extractvalue %dx.types.ResRet.i32 %673, 0
  %675 = icmp eq i32 %674, 0
  br i1 %675, label %693, label %676, !dx.controlflow.hints !69

; <label>:676                                     ; preds = %648
  %677 = icmp slt i32 %674, 0
  %678 = getelementptr [12 x float], [12 x float]* %34, i32 0, i32 %649
  %679 = getelementptr [12 x float], [12 x float]* %35, i32 0, i32 %649
  %680 = bitcast float* %678 to i32*
  %681 = bitcast float* %679 to i32*
  br i1 %677, label %682, label %689, !dx.controlflow.hints !70

; <label>:682                                     ; preds = %676
  %683 = and i32 %674, 1073741823
  %684 = add i32 %664, 20
  %685 = add i32 %684, %683
  %686 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %685, i32 undef)  ; BufferLoad(srv,index,wot)
  %687 = extractvalue %dx.types.ResRet.i32 %686, 0
  %688 = extractvalue %dx.types.ResRet.i32 %686, 1
  br label %689

; <label>:689                                     ; preds = %682, %676
  %690 = phi i32 [ %687, %682 ], [ %598, %676 ]
  %691 = phi i32 [ %688, %682 ], [ %599, %676 ]
  store i32 %690, i32* %680, align 4
  store i32 %691, i32* %681, align 4
  %692 = add i32 %649, 1
  br label %693

; <label>:693                                     ; preds = %689, %648
  %694 = phi i32 [ %649, %648 ], [ %692, %689 ]
  %695 = add nuw i32 %650, 1
  %696 = icmp eq i32 %695, %645
  br i1 %696, label %697, label %648

; <label>:697                                     ; preds = %693
  br label %698

; <label>:698                                     ; preds = %697, %642
  %699 = phi i32 [ %643, %642 ], [ %694, %697 ]
  %700 = icmp eq i32 %699, 1
  %701 = getelementptr [12 x float], [12 x float]* %34, i32 0, i32 0
  %702 = getelementptr [12 x float], [12 x float]* %35, i32 0, i32 0
  br i1 %700, label %703, label %706, !dx.controlflow.hints !71

; <label>:703                                     ; preds = %698
  %704 = load float, float* %701, align 4
  %705 = load float, float* %702, align 4
  br label %733

; <label>:706                                     ; preds = %698
  %707 = load float, float* %701, align 4
  %708 = load float, float* %702, align 4
  %709 = fdiv fast float 1.000000e+00, %708
  %710 = fsub fast float %707, %709
  %711 = icmp ugt i32 %699, 1
  br i1 %711, label %712, label %728

; <label>:712                                     ; preds = %706
  br label %713

; <label>:713                                     ; preds = %713, %712
  %714 = phi float [ %723, %713 ], [ %710, %712 ]
  %715 = phi float [ %724, %713 ], [ %707, %712 ]
  %716 = phi i32 [ %725, %713 ], [ 1, %712 ]
  %717 = getelementptr [12 x float], [12 x float]* %34, i32 0, i32 %716
  %718 = load float, float* %717, align 4
  %719 = getelementptr [12 x float], [12 x float]* %35, i32 0, i32 %716
  %720 = load float, float* %719, align 4
  %721 = fdiv fast float 1.000000e+00, %720
  %722 = fsub fast float %718, %721
  %723 = call float @dx.op.binary.f32(i32 36, float %714, float %722)  ; FMin(a,b)
  %724 = call float @dx.op.binary.f32(i32 35, float %715, float %718)  ; FMax(a,b)
  %725 = add nuw i32 %716, 1
  %726 = icmp eq i32 %725, %699
  br i1 %726, label %727, label %713

; <label>:727                                     ; preds = %713
  br label %728

; <label>:728                                     ; preds = %727, %706
  %729 = phi float [ %710, %706 ], [ %723, %727 ]
  %730 = phi float [ %707, %706 ], [ %724, %727 ]
  %731 = fsub fast float %730, %729
  %732 = fdiv fast float 1.000000e+00, %731
  br label %733

; <label>:733                                     ; preds = %728, %703
  %734 = phi float [ %704, %703 ], [ %730, %728 ]
  %735 = phi float [ %705, %703 ], [ %732, %728 ]
  %736 = fadd fast float %437, %734
  %737 = fmul fast float %736, %735
  %738 = call float @dx.op.unary.f32(i32 7, float %737)  ; Saturate(value)
  %739 = fmul fast float %738, 2.000000e+00
  %740 = fsub fast float 1.000000e+00, %739
  %741 = fmul fast float %575, %575
  %742 = fsub fast float %576, %741
  %743 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %742)  ; FMax(a,b)
  %744 = fdiv fast float 1.000000e+00, %743
  %745 = fmul fast float %576, %575
  %746 = fsub fast float %577, %745
  %747 = fsub fast float %740, %575
  %748 = fmul fast float %740, %740
  %749 = fsub fast float %748, %576
  %750 = fmul fast float %744, %746
  %751 = fmul fast float %750, %747
  %752 = fsub fast float %749, %751
  %753 = fmul fast float %576, %576
  %754 = fsub fast float %578, %753
  %755 = fmul fast float %746, %746
  %756 = fmul fast float %755, %744
  %757 = fsub fast float %754, %756
  %758 = fdiv fast float %752, %757
  %759 = fmul fast float %758, %746
  %760 = fsub fast float %747, %759
  %761 = fmul fast float %760, %744
  %762 = fmul fast float %761, %575
  %763 = fsub fast float 1.000000e+00, %762
  %764 = fmul fast float %758, %576
  %765 = fsub fast float %763, %764
  %766 = fmul fast float %761, %761
  %767 = fmul fast float %758, 4.000000e+00
  %768 = fmul fast float %767, %765
  %769 = fsub fast float %766, %768
  %770 = call float @dx.op.unary.f32(i32 24, float %769)  ; Sqrt(value)
  %771 = fcmp fast oge float %761, 0.000000e+00
  %772 = fsub fast float -0.000000e+00, %770
  %773 = select i1 %771, float %772, float %770
  %774 = fsub fast float %773, %761
  %775 = fdiv fast float %774, %758
  %776 = fdiv fast float %765, %774
  %777 = fmul fast float %775, 5.000000e-01
  %778 = fmul fast float %776, 2.000000e+00
  %779 = select i1 %771, float %777, float %778
  %780 = select i1 %771, float %778, float %777
  %781 = call float @dx.op.binary.f32(i32 35, float %779, float %780)  ; FMax(a,b)
  %782 = call float @dx.op.binary.f32(i32 36, float %779, float %780)  ; FMin(a,b)
  %783 = fcmp fast ogt float %740, %781
  %784 = fsub fast float %740, %782
  %785 = fsub fast float %740, %781
  %786 = fsub fast float %781, %782
  %787 = select i1 %783, float %785, float %786
  %788 = fmul float %784, %787
  %789 = select i1 %783, float %782, float %740
  %790 = fcmp fast ogt float %740, %782
  %791 = fmul fast float %789, %781
  %792 = fadd fast float %789, %781
  %793 = fmul fast float %792, %575
  %794 = fadd fast float %791, %576
  %795 = fsub fast float %794, %793
  %796 = fdiv fast float %795, %788
  %797 = select i1 %790, float %796, float 0.000000e+00
  %798 = fsub fast float 1.000000e+00, %797
  %799 = select i1 %783, float %798, float %797
  %800 = call float @dx.op.unary.f32(i32 7, float %799)  ; Saturate(value)
  %801 = extractvalue %dx.types.CBufRet.f32 %560, 3
  %802 = fmul fast float %801, %800
  %803 = fsub fast float 1.000000e+00, %802
  br label %804

; <label>:804                                     ; preds = %733, %445, %410, %406, %401
  %805 = phi float [ 1.000000e+00, %401 ], [ %803, %733 ], [ 1.000000e+00, %410 ], [ 1.000000e+00, %445 ], [ 1.000000e+00, %406 ]
  %806 = fcmp fast ogt float %402, 0.000000e+00
  br i1 %806, label %807, label %962, !dx.controlflow.hints !72

; <label>:807                                     ; preds = %804
  %808 = fadd fast float %366, %352
  %809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %810 = extractvalue %dx.types.CBufRet.f32 %809, 2
  %811 = extractvalue %dx.types.CBufRet.f32 %809, 3
  %812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %813 = extractvalue %dx.types.CBufRet.f32 %812, 1
  %814 = call float @dx.op.binary.f32(i32 35, float %808, float 0.000000e+00)  ; FMax(a,b)
  %815 = fadd fast float %814, 0x3F10000000000000
  %816 = fcmp fast oeq float %813, 0.000000e+00
  br i1 %816, label %818, label %817, !dx.controlflow.hints !73

; <label>:817                                     ; preds = %807
  br label %885

; <label>:818                                     ; preds = %807
  %819 = extractvalue %dx.types.CBufRet.f32 %809, 1
  %820 = extractvalue %dx.types.CBufRet.f32 %809, 0
  %821 = fmul fast float %820, %359
  %822 = fmul fast float %819, %360
  %823 = fadd fast float %821, 5.000000e-01
  %824 = call float @dx.op.unary.f32(i32 27, float %823)  ; Round_ni(value)
  %825 = fadd fast float %822, 5.000000e-01
  %826 = call float @dx.op.unary.f32(i32 27, float %825)  ; Round_ni(value)
  %827 = fsub fast float %823, %824
  %828 = fsub fast float %825, %826
  %829 = fadd fast float %824, -5.000000e-01
  %830 = fadd fast float %826, -5.000000e-01
  %831 = fmul fast float %827, 2.000000e+00
  %832 = fsub fast float 3.000000e+00, %831
  %833 = fadd fast float %831, 1.000000e+00
  %834 = fsub fast float 2.000000e+00, %827
  %835 = bitcast float %832 to i32
  %836 = sub nsw i32 2129859010, %835
  %837 = bitcast i32 %836 to float
  %838 = fmul fast float %837, %834
  %839 = fadd fast float %838, -1.000000e+00
  %840 = bitcast float %833 to i32
  %841 = sub nsw i32 2129859010, %840
  %842 = bitcast i32 %841 to float
  %843 = fmul fast float %842, %827
  %844 = fadd fast float %843, 1.000000e+00
  %845 = fmul fast float %828, 2.000000e+00
  %846 = fsub fast float 3.000000e+00, %845
  %847 = fadd fast float %845, 1.000000e+00
  %848 = fsub fast float 2.000000e+00, %828
  %849 = bitcast float %846 to i32
  %850 = sub nsw i32 2129859010, %849
  %851 = bitcast i32 %850 to float
  %852 = fmul fast float %851, %848
  %853 = fadd fast float %852, -1.000000e+00
  %854 = bitcast float %847 to i32
  %855 = sub nsw i32 2129859010, %854
  %856 = bitcast i32 %855 to float
  %857 = fmul fast float %856, %828
  %858 = fadd fast float %857, 1.000000e+00
  %859 = fadd fast float %839, %829
  %860 = fmul fast float %859, %810
  %861 = fadd fast float %853, %830
  %862 = fmul fast float %861, %811
  %863 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %26, float %860, float %862, float undef, float undef, i32 0, i32 0, i32 undef, float %815)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %864 = extractvalue %dx.types.ResRet.f32 %863, 0
  %865 = fmul fast float %864, %832
  %866 = fadd fast float %844, %829
  %867 = fmul fast float %866, %810
  %868 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %26, float %867, float %862, float undef, float undef, i32 0, i32 0, i32 undef, float %815)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %869 = extractvalue %dx.types.ResRet.f32 %868, 0
  %870 = fmul fast float %869, %833
  %871 = fadd fast float %858, %830
  %872 = fmul fast float %871, %811
  %873 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %26, float %860, float %872, float undef, float undef, i32 0, i32 0, i32 undef, float %815)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %874 = extractvalue %dx.types.ResRet.f32 %873, 0
  %875 = fmul fast float %874, %832
  %876 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %26, float %867, float %872, float undef, float undef, i32 0, i32 0, i32 undef, float %815)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %877 = extractvalue %dx.types.ResRet.f32 %876, 0
  %878 = fmul fast float %877, %833
  %879 = fadd fast float %878, %875
  %880 = fmul fast float %879, %847
  %881 = fadd fast float %870, %865
  %882 = fmul fast float %881, %846
  %883 = fadd fast float %882, %880
  %884 = fmul fast float %883, 6.250000e-02
  br label %962

; <label>:885                                     ; preds = %931, %817
  %886 = phi float [ %926, %931 ], [ 0.000000e+00, %817 ]
  %887 = phi float [ %928, %931 ], [ 0.000000e+00, %817 ]
  %888 = phi i32 [ %932, %931 ], [ 0, %817 ]
  %889 = mul i32 %888, 2
  %890 = add i32 0, %889
  %891 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %890
  %892 = load float, float* %891, align 4
  %893 = mul i32 %888, 2
  %894 = add i32 1, %893
  %895 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %894
  %896 = load float, float* %895, align 4
  %897 = call float @dx.op.tertiary.f32(i32 46, float %896, float -0.000000e+00, float %892)  ; FMad(a,b,c)
  %898 = fmul fast float %897, %813
  %899 = fmul fast float %896, %813
  %900 = fadd fast float %898, %359
  %901 = fadd fast float %899, %360
  %902 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %11, %dx.types.Handle %25, float %900, float %901, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %903 = extractvalue %dx.types.ResRet.f32 %902, 0
  %904 = extractvalue %dx.types.ResRet.f32 %902, 1
  %905 = extractvalue %dx.types.ResRet.f32 %902, 2
  %906 = extractvalue %dx.types.ResRet.f32 %902, 3
  %907 = getelementptr inbounds [4 x float], [4 x float]* %37, i32 0, i32 0
  store float %903, float* %907, align 4
  %908 = getelementptr inbounds [4 x float], [4 x float]* %37, i32 0, i32 1
  store float %904, float* %908, align 4
  %909 = getelementptr inbounds [4 x float], [4 x float]* %37, i32 0, i32 2
  store float %905, float* %909, align 4
  %910 = getelementptr inbounds [4 x float], [4 x float]* %37, i32 0, i32 3
  store float %906, float* %910, align 4
  %911 = fsub fast float %903, %815
  %912 = fcmp fast olt float %911, 0.000000e+00
  %913 = select i1 %912, float 0.000000e+00, float 1.000000e+00
  %914 = fadd fast float %913, %886
  %915 = fmul fast float %913, %911
  %916 = fadd fast float %915, %887
  br label %917

; <label>:917                                     ; preds = %917, %885
  %918 = phi i32 [ 1, %885 ], [ %929, %917 ]
  %919 = phi float [ %916, %885 ], [ %928, %917 ]
  %920 = phi float [ %914, %885 ], [ %926, %917 ]
  %921 = getelementptr [4 x float], [4 x float]* %37, i32 0, i32 %918
  %922 = load float, float* %921, align 4, !tbaa !74, !noalias !64
  %923 = fsub fast float %922, %815
  %924 = fcmp fast olt float %923, 0.000000e+00
  %925 = select i1 %924, float 0.000000e+00, float 1.000000e+00
  %926 = fadd fast float %925, %920
  %927 = fmul fast float %925, %923
  %928 = fadd fast float %927, %919
  %929 = add nuw nsw i32 %918, 1
  %930 = icmp eq i32 %929, 4
  br i1 %930, label %931, label %917, !llvm.loop !76

; <label>:931                                     ; preds = %917
  %932 = add nuw nsw i32 %888, 1
  %933 = icmp eq i32 %932, 8
  br i1 %933, label %934, label %885, !llvm.loop !78

; <label>:934                                     ; preds = %931
  %935 = fdiv fast float 1.000000e+00, %926
  %936 = fmul fast float %935, %928
  %937 = fdiv fast float 1.000000e+00, %815
  %938 = fmul fast float %936, %937
  %939 = call float @dx.op.unary.f32(i32 7, float %938)  ; Saturate(value)
  %940 = call float @dx.op.binary.f32(i32 35, float %939, float 0.000000e+00)  ; FMax(a,b)
  %941 = fmul fast float %926, 3.125000e-02
  %942 = call float @dx.op.unary.f32(i32 7, float %941)  ; Saturate(value)
  %943 = fmul fast float %942, 2.000000e+00
  %944 = fadd fast float %943, -1.000000e+00
  %945 = fcmp fast ogt float %944, 0.000000e+00
  %946 = fcmp fast olt float %944, 0.000000e+00
  %947 = zext i1 %945 to i32
  %948 = zext i1 %946 to i32
  %949 = sub nsw i32 %947, %948
  %950 = sitofp i32 %949 to float
  %951 = fmul fast float %950, %944
  %952 = fsub fast float 1.000000e+00, %951
  %953 = fmul fast float %952, %952
  %954 = fmul fast float %953, %952
  %955 = fsub fast float %952, %954
  %956 = fmul fast float %955, %940
  %957 = fsub fast float 1.000000e+00, %954
  %958 = fsub fast float %957, %956
  %959 = fmul fast float %950, 5.000000e-01
  %960 = fmul fast float %959, %958
  %961 = fsub fast float 5.000000e-01, %960
  br label %962

; <label>:962                                     ; preds = %934, %818, %804
  %963 = phi float [ 1.000000e+00, %804 ], [ %884, %818 ], [ %961, %934 ]
  %964 = fsub fast float %963, %805
  %965 = fmul fast float %964, %402
  %966 = fadd fast float %965, %805
  br label %967

; <label>:967                                     ; preds = %962, %309
  %968 = phi float [ %966, %962 ], [ 1.000000e+00, %309 ]
  %969 = call float @dx.op.binary.f32(i32 36, float %968, float %968)  ; FMin(a,b)
  %970 = call float @dx.op.binary.f32(i32 36, float %968, float %969)  ; FMin(a,b)
  %971 = fcmp fast ogt float %970, 0.000000e+00
  br i1 %971, label %972, label %1137, !dx.controlflow.hints !79

; <label>:972                                     ; preds = %967
  %973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %974 = extractvalue %dx.types.CBufRet.f32 %973, 0
  %975 = extractvalue %dx.types.CBufRet.f32 %973, 1
  %976 = extractvalue %dx.types.CBufRet.f32 %973, 2
  %977 = extractvalue %dx.types.CBufRet.f32 %973, 3
  %978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %979 = extractvalue %dx.types.CBufRet.f32 %978, 0
  %980 = extractvalue %dx.types.CBufRet.f32 %978, 1
  %981 = extractvalue %dx.types.CBufRet.f32 %978, 2
  %982 = extractvalue %dx.types.CBufRet.f32 %978, 3
  %983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %984 = extractvalue %dx.types.CBufRet.f32 %983, 0
  %985 = extractvalue %dx.types.CBufRet.f32 %983, 1
  %986 = extractvalue %dx.types.CBufRet.f32 %983, 2
  %987 = extractvalue %dx.types.CBufRet.f32 %983, 3
  %988 = fmul fast float %974, %210
  %989 = call float @dx.op.tertiary.f32(i32 46, float %211, float %975, float %988)  ; FMad(a,b,c)
  %990 = call float @dx.op.tertiary.f32(i32 46, float %212, float %976, float %989)  ; FMad(a,b,c)
  %991 = fadd fast float %990, %977
  %992 = fmul fast float %979, %210
  %993 = call float @dx.op.tertiary.f32(i32 46, float %211, float %980, float %992)  ; FMad(a,b,c)
  %994 = call float @dx.op.tertiary.f32(i32 46, float %212, float %981, float %993)  ; FMad(a,b,c)
  %995 = fadd fast float %994, %982
  %996 = fmul fast float %984, %210
  %997 = call float @dx.op.tertiary.f32(i32 46, float %211, float %985, float %996)  ; FMad(a,b,c)
  %998 = call float @dx.op.tertiary.f32(i32 46, float %212, float %986, float %997)  ; FMad(a,b,c)
  %999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %1000 = extractvalue %dx.types.CBufRet.f32 %999, 0
  %1001 = extractvalue %dx.types.CBufRet.f32 %999, 1
  %1002 = extractvalue %dx.types.CBufRet.f32 %999, 3
  %1003 = fmul fast float %1002, %991
  %1004 = fmul fast float %1002, %995
  %1005 = fadd fast float %1003, %1000
  %1006 = fadd fast float %1004, %1001
  %1007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %1008 = extractvalue %dx.types.CBufRet.f32 %1007, 0
  %1009 = extractvalue %dx.types.CBufRet.f32 %1007, 1
  %1010 = fsub fast float %1005, %1008
  %1011 = fsub fast float %1006, %1009
  %1012 = fcmp fast olt float %1010, 0.000000e+00
  %1013 = fcmp fast olt float %1011, 0.000000e+00
  %1014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %1015 = extractvalue %dx.types.CBufRet.f32 %1014, 0
  %1016 = extractvalue %dx.types.CBufRet.f32 %1014, 1
  %1017 = extractvalue %dx.types.CBufRet.f32 %1014, 2
  %1018 = extractvalue %dx.types.CBufRet.f32 %1014, 3
  %1019 = select i1 %1012, float %1015, float %1017
  %1020 = select i1 %1013, float %1016, float %1018
  %1021 = fmul fast float %1019, %1010
  %1022 = fmul fast float %1020, %1011
  %1023 = call float @dx.op.unary.f32(i32 6, float %1021)  ; FAbs(value)
  %1024 = call float @dx.op.unary.f32(i32 6, float %1022)  ; FAbs(value)
  %1025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %1026 = extractvalue %dx.types.CBufRet.f32 %1025, 0
  %1027 = call float @dx.op.binary.f32(i32 35, float %1023, float %1024)  ; FMax(a,b)
  %1028 = fsub fast float %1026, %1027
  %1029 = call float @dx.op.unary.f32(i32 7, float %1028)  ; Saturate(value)
  %1030 = fcmp fast ogt float %1029, 0.000000e+00
  br i1 %1030, label %1031, label %1072, !dx.controlflow.hints !80

; <label>:1031                                    ; preds = %972
  %1032 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %24, float %1005, float %1006, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1033 = extractvalue %dx.types.ResRet.f32 %1032, 1
  %1034 = fcmp fast ogt float %1033, 0.000000e+00
  br i1 %1034, label %1035, label %1068, !dx.controlflow.hints !81

; <label>:1035                                    ; preds = %1031
  %1036 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %24, float %1005, float %1006, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1037 = extractvalue %dx.types.ResRet.f32 %1036, 0
  %1038 = extractvalue %dx.types.ResRet.f32 %1036, 1
  %1039 = extractvalue %dx.types.ResRet.f32 %1036, 2
  %1040 = extractvalue %dx.types.ResRet.f32 %1036, 3
  %1041 = fsub fast float 1.000000e+00, %987
  %1042 = fsub fast float %1041, %998
  %1043 = fmul fast float %1042, 0x400921FB60000000
  %1044 = fadd fast float %1043, 0x3FF921FB60000000
  %1045 = call float @dx.op.unary.f32(i32 13, float %1044)  ; Sin(value)
  %1046 = fadd fast float %1045, -1.000000e+00
  %1047 = fmul fast float %1046, 0x3FD45F3060000000
  %1048 = fmul fast float %1042, 0x401921FB60000000
  %1049 = fadd fast float %1048, 0x400921FB60000000
  %1050 = call float @dx.op.unary.f32(i32 13, float %1049)  ; Sin(value)
  %1051 = fadd fast float %1050, 0x3E7777A5C0000000
  %1052 = fmul fast float %1051, 0x3FC45F3060000000
  %1053 = fmul fast float %1042, 0x4022D97C80000000
  %1054 = fadd fast float %1053, 0x4012D97C80000000
  %1055 = call float @dx.op.unary.f32(i32 13, float %1054)  ; Sin(value)
  %1056 = fadd fast float %1055, 1.000000e+00
  %1057 = fmul fast float %1056, 0x3FBB2995E0000000
  %1058 = fmul fast float %1042, 0x402921FB60000000
  %1059 = fadd fast float %1058, 0x401921FB60000000
  %1060 = call float @dx.op.unary.f32(i32 13, float %1059)  ; Sin(value)
  %1061 = fadd fast float %1060, 0xBE8777A5C0000000
  %1062 = fmul fast float %1061, 0x3FB45F3060000000
  %1063 = call float @dx.op.dot4.f32(i32 56, float %1037, float %1038, float %1039, float %1040, float %1047, float %1052, float %1057, float %1062)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1064 = fmul fast float %1063, 0xBFF7154760000000
  %1065 = call float @dx.op.unary.f32(i32 21, float %1064)  ; Exp(value)
  %1066 = call float @dx.op.unary.f32(i32 7, float %1065)  ; Saturate(value)
  %1067 = fadd float %1066, -1.000000e+00
  br label %1068

; <label>:1068                                    ; preds = %1035, %1031
  %1069 = phi float [ %1067, %1035 ], [ 0.000000e+00, %1031 ]
  %1070 = fmul fast float %1069, %1029
  %1071 = fadd fast float %1070, 1.000000e+00
  br label %1072

; <label>:1072                                    ; preds = %1068, %972
  %1073 = phi float [ %1071, %1068 ], [ 1.000000e+00, %972 ]
  %1074 = fmul fast float %1073, %968
  %1075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1076 = extractvalue %dx.types.CBufRet.f32 %1075, 0
  %1077 = extractvalue %dx.types.CBufRet.f32 %1075, 1
  %1078 = extractvalue %dx.types.CBufRet.f32 %1075, 2
  %1079 = fadd fast float %1076, %210
  %1080 = fadd fast float %1077, %211
  %1081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %1082 = extractvalue %dx.types.CBufRet.f32 %1081, 1
  %1083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1084 = extractvalue %dx.types.CBufRet.f32 %1083, 0
  %1085 = extractvalue %dx.types.CBufRet.f32 %1083, 1
  %1086 = extractvalue %dx.types.CBufRet.f32 %1083, 2
  %1087 = fsub fast float -0.000000e+00, %1079
  %1088 = fsub fast float -0.000000e+00, %1080
  %1089 = fsub fast float %213, %1078
  %1090 = fadd fast float %1089, %1082
  %1091 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1087, float %1088, float %1090)  ; Dot3(ax,ay,az,bx,by,bz)
  %1092 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1084, float %1085, float %1086)  ; Dot3(ax,ay,az,bx,by,bz)
  %1093 = fdiv fast float 1.000000e+00, %1092
  %1094 = fmul fast float %1093, %1091
  %1095 = fmul fast float %1084, %1094
  %1096 = fmul fast float %1085, %1094
  %1097 = fadd fast float %1095, %1079
  %1098 = fadd fast float %1096, %1080
  %1099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %1100 = extractvalue %dx.types.CBufRet.f32 %1099, 0
  %1101 = extractvalue %dx.types.CBufRet.f32 %1099, 1
  %1102 = fsub fast float %1097, %1100
  %1103 = fsub fast float %1098, %1101
  %1104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %1105 = extractvalue %dx.types.CBufRet.f32 %1104, 2
  %1106 = extractvalue %dx.types.CBufRet.f32 %1104, 3
  %1107 = fmul fast float %1102, %1105
  %1108 = fmul fast float %1103, %1106
  %1109 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %1110 = extractvalue %dx.types.CBufRet.i32 %1109, 3
  %1111 = icmp eq i32 %1110, 0
  br i1 %1111, label %1117, label %1112, !dx.controlflow.hints !82

; <label>:1112                                    ; preds = %1072
  %1113 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %23, float %1107, float %1108, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1114 = extractvalue %dx.types.ResRet.f32 %1113, 0
  %1115 = extractvalue %dx.types.ResRet.f32 %1113, 1
  %1116 = extractvalue %dx.types.ResRet.f32 %1113, 2
  br label %1122

; <label>:1117                                    ; preds = %1072
  %1118 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %24, float %1107, float %1108, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1119 = extractvalue %dx.types.ResRet.f32 %1118, 0
  %1120 = extractvalue %dx.types.ResRet.f32 %1118, 1
  %1121 = extractvalue %dx.types.ResRet.f32 %1118, 2
  br label %1122

; <label>:1122                                    ; preds = %1117, %1112
  %1123 = phi float [ %1114, %1112 ], [ %1119, %1117 ]
  %1124 = phi float [ %1115, %1112 ], [ %1120, %1117 ]
  %1125 = phi float [ %1116, %1112 ], [ %1121, %1117 ]
  %1126 = extractvalue %dx.types.CBufRet.f32 %1081, 2
  %1127 = fmul fast float %1126, %1123
  %1128 = extractvalue %dx.types.CBufRet.f32 %1081, 0
  %1129 = fsub fast float %1094, %1128
  %1130 = fsub fast float %1129, %1127
  %1131 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1130)  ; FMax(a,b)
  %1132 = fmul fast float %1131, %1124
  %1133 = call float @dx.op.binary.f32(i32 36, float %1125, float %1132)  ; FMin(a,b)
  %1134 = fmul fast float %1133, 0xBFF7154760000000
  %1135 = call float @dx.op.unary.f32(i32 21, float %1134)  ; Exp(value)
  %1136 = fmul fast float %1074, %1135
  br label %1137

; <label>:1137                                    ; preds = %1122, %967
  %1138 = phi float [ %1136, %1122 ], [ %968, %967 ]
  %1139 = call float @dx.op.binary.f32(i32 36, float %1138, float %1138)  ; FMin(a,b)
  %1140 = call float @dx.op.binary.f32(i32 36, float %1138, float %1139)  ; FMin(a,b)
  %1141 = fcmp fast ogt float %1140, 0.000000e+00
  br i1 %1141, label %1142, label %1240, !dx.controlflow.hints !83

; <label>:1142                                    ; preds = %1137
  %1143 = icmp eq i32 %305, 0
  br i1 %1143, label %1218, label %1144, !dx.controlflow.hints !84

; <label>:1144                                    ; preds = %1142
  %1145 = fsub fast float %212, %304
  %1146 = fcmp fast ogt float %1145, 0.000000e+00
  %1147 = fmul fast float %310, 5.120000e+02
  %1148 = fmul fast float %311, 5.120000e+02
  %1149 = fmul fast float %312, 5.120000e+02
  %1150 = fadd fast float %1149, %212
  %1151 = fsub fast float %304, %1150
  %1152 = fmul fast float %1151, 2.000000e+00
  %1153 = fadd fast float %1152, %1150
  %1154 = select i1 %1146, float %1153, float %1150
  %1155 = fsub fast float %1154, %212
  %1156 = call float @dx.op.dot3.f32(i32 55, float %1147, float %1148, float %1155, float %1147, float %1148, float %1155)  ; Dot3(ax,ay,az,bx,by,bz)
  %1157 = call float @dx.op.unary.f32(i32 25, float %1156)  ; Rsqrt(value)
  %1158 = fmul fast float %1157, %1147
  %1159 = fmul fast float %1157, %1148
  %1160 = fmul fast float %1157, %1155
  %1161 = fsub fast float %304, %212
  %1162 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %1161)  ; Dot3(ax,ay,az,bx,by,bz)
  %1163 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1158, float %1159, float %1160)  ; Dot3(ax,ay,az,bx,by,bz)
  %1164 = fdiv fast float 1.000000e+00, %1163
  %1165 = fmul fast float %1164, %1162
  %1166 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %1145, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1167 = fcmp fast ogt float %1166, 0.000000e+00
  %1168 = fcmp fast olt float %1166, 0.000000e+00
  %1169 = zext i1 %1167 to i32
  %1170 = zext i1 %1168 to i32
  %1171 = sub nsw i32 %1169, %1170
  %1172 = sitofp i32 %1171 to float
  %1173 = fsub fast float %1154, %304
  %1174 = call float @dx.op.dot3.f32(i32 55, float %1147, float %1148, float %1173, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1175 = fcmp fast ogt float %1174, 0.000000e+00
  %1176 = fcmp fast olt float %1174, 0.000000e+00
  %1177 = zext i1 %1175 to i32
  %1178 = zext i1 %1176 to i32
  %1179 = sub nsw i32 %1177, %1178
  %1180 = sitofp i32 %1179 to float
  %1181 = fcmp fast une float %1172, %1180
  br i1 %1181, label %1182, label %1192, !dx.controlflow.hints !85

; <label>:1182                                    ; preds = %1144
  %1183 = fmul fast float %1165, %1160
  %1184 = fmul fast float %1165, %1159
  %1185 = fmul fast float %1165, %1158
  %1186 = fmul fast float %1185, %1185
  %1187 = fmul fast float %1184, %1184
  %1188 = fadd fast float %1186, %1187
  %1189 = fmul fast float %1183, %1183
  %1190 = fadd fast float %1188, %1189
  %1191 = call float @dx.op.unary.f32(i32 24, float %1190)  ; Sqrt(value)
  br label %1202

; <label>:1192                                    ; preds = %1144
  %1193 = icmp slt i32 %1171, 0
  br i1 %1193, label %1194, label %1202, !dx.controlflow.hints !86

; <label>:1194                                    ; preds = %1192
  %1195 = fsub fast float %212, %1154
  %1196 = fmul fast float %1147, %1147
  %1197 = fmul fast float %1148, %1148
  %1198 = fadd fast float %1196, %1197
  %1199 = fmul fast float %1195, %1195
  %1200 = fadd fast float %1198, %1199
  %1201 = call float @dx.op.unary.f32(i32 24, float %1200)  ; Sqrt(value)
  br label %1202

; <label>:1202                                    ; preds = %1194, %1192, %1182
  %1203 = phi float [ %1191, %1182 ], [ %1201, %1194 ], [ 0.000000e+00, %1192 ]
  %1204 = fsub fast float -0.000000e+00, %1203
  %1205 = select i1 %1146, float -0.000000e+00, float %1204
  %1206 = fmul fast float %301, %1205
  %1207 = fmul fast float %302, %1205
  %1208 = fmul fast float %303, %1205
  %1209 = call float @dx.op.unary.f32(i32 21, float %1206)  ; Exp(value)
  %1210 = call float @dx.op.unary.f32(i32 21, float %1207)  ; Exp(value)
  %1211 = call float @dx.op.unary.f32(i32 21, float %1208)  ; Exp(value)
  %1212 = call float @dx.op.unary.f32(i32 7, float %1209)  ; Saturate(value)
  %1213 = call float @dx.op.unary.f32(i32 7, float %1210)  ; Saturate(value)
  %1214 = call float @dx.op.unary.f32(i32 7, float %1211)  ; Saturate(value)
  %1215 = fmul fast float %1212, %321
  %1216 = fmul fast float %1213, %322
  %1217 = fmul fast float %1214, %323
  br label %1218

; <label>:1218                                    ; preds = %1202, %1142
  %1219 = phi float [ %1215, %1202 ], [ %321, %1142 ]
  %1220 = phi float [ %1216, %1202 ], [ %322, %1142 ]
  %1221 = phi float [ %1217, %1202 ], [ %323, %1142 ]
  %1222 = fmul fast float %1219, %1138
  %1223 = fmul fast float %1220, %1138
  %1224 = fmul fast float %1221, %1138
  %1225 = fmul fast float %1222, 0x3FEC5BF8C0000000
  %1226 = fmul fast float %311, 0xBFF88F51C0000000
  %1227 = fmul fast float %1226, %1222
  %1228 = fmul fast float %312, 0x3FF88F51C0000000
  %1229 = fmul fast float %1228, %1222
  %1230 = fmul fast float %310, 0xBFF88F51C0000000
  %1231 = fmul fast float %1230, %1222
  %1232 = fmul fast float %1223, 0x3FEC5BF8C0000000
  %1233 = fmul fast float %1226, %1223
  %1234 = fmul fast float %1228, %1223
  %1235 = fmul fast float %1230, %1223
  %1236 = fmul fast float %1224, 0x3FEC5BF8C0000000
  %1237 = fmul fast float %1226, %1224
  %1238 = fmul fast float %1228, %1224
  %1239 = fmul fast float %1230, %1224
  br label %1240

; <label>:1240                                    ; preds = %1218, %1137, %300
  %1241 = phi float [ %1236, %1218 ], [ 0.000000e+00, %300 ], [ 0.000000e+00, %1137 ]
  %1242 = phi float [ %1237, %1218 ], [ 0.000000e+00, %300 ], [ 0.000000e+00, %1137 ]
  %1243 = phi float [ %1238, %1218 ], [ 0.000000e+00, %300 ], [ 0.000000e+00, %1137 ]
  %1244 = phi float [ %1239, %1218 ], [ 0.000000e+00, %300 ], [ 0.000000e+00, %1137 ]
  %1245 = phi float [ %1232, %1218 ], [ 0.000000e+00, %300 ], [ 0.000000e+00, %1137 ]
  %1246 = phi float [ %1233, %1218 ], [ 0.000000e+00, %300 ], [ 0.000000e+00, %1137 ]
  %1247 = phi float [ %1234, %1218 ], [ 0.000000e+00, %300 ], [ 0.000000e+00, %1137 ]
  %1248 = phi float [ %1235, %1218 ], [ 0.000000e+00, %300 ], [ 0.000000e+00, %1137 ]
  %1249 = phi float [ %1225, %1218 ], [ 0.000000e+00, %300 ], [ 0.000000e+00, %1137 ]
  %1250 = phi float [ %1227, %1218 ], [ 0.000000e+00, %300 ], [ 0.000000e+00, %1137 ]
  %1251 = phi float [ %1229, %1218 ], [ 0.000000e+00, %300 ], [ 0.000000e+00, %1137 ]
  %1252 = phi float [ %1231, %1218 ], [ 0.000000e+00, %300 ], [ 0.000000e+00, %1137 ]
  %1253 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1254 = extractvalue %dx.types.CBufRet.i32 %1253, 0
  %1255 = icmp eq i32 %1254, 0
  br i1 %1255, label %1715, label %1256, !dx.controlflow.hints !87

; <label>:1256                                    ; preds = %1240
  %1257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1258 = extractvalue %dx.types.CBufRet.f32 %1257, 0
  %1259 = extractvalue %dx.types.CBufRet.f32 %1257, 1
  %1260 = extractvalue %dx.types.CBufRet.f32 %1257, 2
  %1261 = fadd fast float %1258, %210
  %1262 = fadd fast float %1259, %211
  %1263 = fadd fast float %1260, %212
  %1264 = getelementptr inbounds [3 x float], [3 x float]* %36, i32 0, i32 0
  store float %1261, float* %1264, align 4
  %1265 = getelementptr inbounds [3 x float], [3 x float]* %36, i32 0, i32 1
  store float %1262, float* %1265, align 4
  %1266 = getelementptr inbounds [3 x float], [3 x float]* %36, i32 0, i32 2
  store float %1263, float* %1266, align 4
  br label %1267

; <label>:1267                                    ; preds = %1267, %1256
  %1268 = phi i32 [ 0, %1256 ], [ %1282, %1267 ]
  %1269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1268, i32 0)  ; BufferLoad(srv,index,wot)
  %1270 = extractvalue %dx.types.ResRet.i32 %1269, 0
  %1271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1268, i32 4)  ; BufferLoad(srv,index,wot)
  %1272 = extractvalue %dx.types.ResRet.i32 %1271, 0
  %1273 = lshr i32 %1270, 30
  %1274 = and i32 %1270, 1048575
  %1275 = uitofp i32 %1274 to float
  %1276 = fadd fast float %1275, -5.242880e+05
  %1277 = and i32 %1272, 65535
  %1278 = lshr i32 %1272, 16
  %1279 = getelementptr [3 x float], [3 x float]* %36, i32 0, i32 %1273
  %1280 = load float, float* %1279, align 4, !tbaa !74, !noalias !88
  %1281 = fcmp fast olt float %1280, %1276
  %1282 = select i1 %1281, i32 %1277, i32 %1278
  %1283 = and i32 %1282, 32768
  %1284 = icmp eq i32 %1283, 0
  br i1 %1284, label %1267, label %1285

; <label>:1285                                    ; preds = %1267
  %1286 = and i32 %1282, 32767
  %1287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1286, i32 undef)  ; BufferLoad(srv,index,wot)
  %1288 = extractvalue %dx.types.ResRet.i32 %1287, 0
  %1289 = lshr i32 %1288, 22
  br label %1290

; <label>:1290                                    ; preds = %1290, %1285
  %1291 = phi i32 [ 0, %1285 ], [ %1307, %1290 ]
  %1292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1291, i32 0)  ; BufferLoad(srv,index,wot)
  %1293 = extractvalue %dx.types.ResRet.i32 %1292, 0
  %1294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1291, i32 4)  ; BufferLoad(srv,index,wot)
  %1295 = extractvalue %dx.types.ResRet.i32 %1294, 0
  %1296 = lshr i32 %1293, 30
  %1297 = and i32 %1293, 1048575
  %1298 = uitofp i32 %1297 to float
  %1299 = fadd fast float %1298, -5.242880e+05
  %1300 = and i32 %1295, 65535
  %1301 = lshr i32 %1295, 16
  %1302 = icmp ne i32 %1296, 3
  %1303 = getelementptr [3 x float], [3 x float]* %36, i32 0, i32 %1296
  %1304 = load float, float* %1303, align 4, !tbaa !74, !noalias !88
  %1305 = fcmp fast olt float %1304, %1299
  %1306 = select i1 %1305, i32 %1300, i32 %1301
  %1307 = select i1 %1302, i32 %1306, i32 %1295
  %1308 = icmp eq i32 %1296, 3
  br i1 %1308, label %1309, label %1290

; <label>:1309                                    ; preds = %1290
  %1310 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1307)  ; Countbits(value)
  %1311 = add i32 %1310, %1289
  %1312 = icmp eq i32 %1311, 0
  br i1 %1312, label %1715, label %1313

; <label>:1313                                    ; preds = %1309
  %1314 = and i32 %1288, 4194303
  br label %1315

; <label>:1315                                    ; preds = %1699, %1313
  %1316 = phi float [ %1700, %1699 ], [ %1241, %1313 ]
  %1317 = phi float [ %1701, %1699 ], [ %1242, %1313 ]
  %1318 = phi float [ %1702, %1699 ], [ %1243, %1313 ]
  %1319 = phi float [ %1703, %1699 ], [ %1244, %1313 ]
  %1320 = phi float [ %1704, %1699 ], [ %1245, %1313 ]
  %1321 = phi float [ %1705, %1699 ], [ %1246, %1313 ]
  %1322 = phi float [ %1706, %1699 ], [ %1247, %1313 ]
  %1323 = phi float [ %1707, %1699 ], [ %1248, %1313 ]
  %1324 = phi float [ %1708, %1699 ], [ %1249, %1313 ]
  %1325 = phi float [ %1709, %1699 ], [ %1250, %1313 ]
  %1326 = phi float [ %1710, %1699 ], [ %1251, %1313 ]
  %1327 = phi float [ %1711, %1699 ], [ %1252, %1313 ]
  %1328 = phi i32 [ %1712, %1699 ], [ 0, %1313 ]
  %1329 = phi i32 [ %1331, %1699 ], [ %1314, %1313 ]
  %1330 = phi i32 [ %1347, %1699 ], [ %1307, %1313 ]
  %1331 = add i32 %1329, 1
  %1332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %1329, i32 undef)  ; BufferLoad(srv,index,wot)
  %1333 = extractvalue %dx.types.ResRet.i32 %1332, 0
  %1334 = icmp ult i32 %1328, %1289
  br i1 %1334, label %1346, label %1335, !dx.controlflow.hints !89

; <label>:1335                                    ; preds = %1315
  %1336 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1330)  ; FirstbitLo(value)
  %1337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 22)  ; CBufferLoadLegacy(handle,regIndex)
  %1338 = extractvalue %dx.types.CBufRet.f32 %1337, 0
  %1339 = uitofp i32 %1336 to float
  %1340 = fadd fast float %1338, %1339
  %1341 = fptosi float %1340 to i32
  %1342 = and i32 %1336, 31
  %1343 = shl i32 1, %1342
  %1344 = xor i32 %1343, -1
  %1345 = and i32 %1330, %1344
  br label %1346

; <label>:1346                                    ; preds = %1335, %1315
  %1347 = phi i32 [ %1345, %1335 ], [ %1330, %1315 ]
  %1348 = phi i32 [ %1341, %1335 ], [ %1333, %1315 ]
  %1349 = mul i32 %1348, 112
  %1350 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1349, i32 undef)  ; BufferLoad(srv,index,wot)
  %1351 = extractvalue %dx.types.ResRet.f32 %1350, 0
  %1352 = extractvalue %dx.types.ResRet.f32 %1350, 1
  %1353 = extractvalue %dx.types.ResRet.f32 %1350, 2
  %1354 = or i32 %1349, 12
  %1355 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1354, i32 undef)  ; BufferLoad(srv,index,wot)
  %1356 = extractvalue %dx.types.ResRet.f32 %1355, 0
  %1357 = add i32 %1349, 16
  %1358 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1357, i32 undef)  ; BufferLoad(srv,index,wot)
  %1359 = extractvalue %dx.types.ResRet.f32 %1358, 0
  %1360 = extractvalue %dx.types.ResRet.f32 %1358, 1
  %1361 = extractvalue %dx.types.ResRet.f32 %1358, 2
  %1362 = add i32 %1349, 28
  %1363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1362, i32 undef)  ; BufferLoad(srv,index,wot)
  %1364 = extractvalue %dx.types.ResRet.i32 %1363, 0
  %1365 = add i32 %1349, 32
  %1366 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1365, i32 undef)  ; BufferLoad(srv,index,wot)
  %1367 = extractvalue %dx.types.ResRet.f32 %1366, 0
  %1368 = extractvalue %dx.types.ResRet.f32 %1366, 1
  %1369 = extractvalue %dx.types.ResRet.f32 %1366, 2
  %1370 = add i32 %1349, 44
  %1371 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1370, i32 undef)  ; BufferLoad(srv,index,wot)
  %1372 = extractvalue %dx.types.ResRet.f32 %1371, 0
  %1373 = add i32 %1349, 48
  %1374 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1373, i32 undef)  ; BufferLoad(srv,index,wot)
  %1375 = extractvalue %dx.types.ResRet.f32 %1374, 0
  %1376 = extractvalue %dx.types.ResRet.f32 %1374, 1
  %1377 = extractvalue %dx.types.ResRet.f32 %1374, 2
  %1378 = extractvalue %dx.types.ResRet.f32 %1374, 3
  %1379 = add i32 %1349, 64
  %1380 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1379, i32 undef)  ; BufferLoad(srv,index,wot)
  %1381 = extractvalue %dx.types.ResRet.f32 %1380, 0
  %1382 = extractvalue %dx.types.ResRet.f32 %1380, 1
  %1383 = extractvalue %dx.types.ResRet.f32 %1380, 2
  %1384 = extractvalue %dx.types.ResRet.f32 %1380, 3
  %1385 = add i32 %1349, 80
  %1386 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1385, i32 undef)  ; BufferLoad(srv,index,wot)
  %1387 = extractvalue %dx.types.ResRet.f32 %1386, 1
  %1388 = extractvalue %dx.types.ResRet.f32 %1386, 2
  %1389 = add i32 %1349, 92
  %1390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1389, i32 undef)  ; BufferLoad(srv,index,wot)
  %1391 = extractvalue %dx.types.ResRet.i32 %1390, 0
  %1392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %1393 = extractvalue %dx.types.CBufRet.f32 %1392, 2
  %1394 = lshr i32 %1364, 16
  %1395 = and i32 %1394, 255
  %1396 = uitofp i32 %1395 to float
  %1397 = fmul fast float %1396, 0x3F70101020000000
  %1398 = fmul fast float %1397, %1351
  %1399 = fmul fast float %1397, %1352
  %1400 = fmul fast float %1397, %1353
  %1401 = fmul fast float %1393, %1387
  %1402 = call float @dx.op.dot3.f32(i32 55, float %1398, float %1399, float %1400, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1403 = select i1 %220, float %1401, float %1398
  %1404 = select i1 %220, float %1402, float %1399
  %1405 = select i1 %220, float %1388, float %1400
  %1406 = and i32 %1391, 65535
  %1407 = uitofp i32 %1406 to float
  %1408 = lshr i32 %1391, 16
  %1409 = uitofp i32 %1408 to float
  %1410 = and i32 %1364, 65535
  %1411 = and i32 %1364, 50331648
  %1412 = icmp eq i32 %1411, 33554432
  %1413 = call float @dx.op.dot3.f32(i32 55, float %1367, float %1368, float %1369, float %1367, float %1368, float %1369)  ; Dot3(ax,ay,az,bx,by,bz)
  %1414 = fsub fast float %210, %1375
  %1415 = fsub fast float %211, %1376
  %1416 = fsub fast float %212, %1377
  %1417 = call float @dx.op.dot3.f32(i32 55, float %1414, float %1415, float %1416, float %1367, float %1368, float %1369)  ; Dot3(ax,ay,az,bx,by,bz)
  %1418 = fdiv fast float %1417, %1413
  %1419 = call float @dx.op.binary.f32(i32 35, float %1418, float -1.000000e+00)  ; FMax(a,b)
  %1420 = call float @dx.op.binary.f32(i32 36, float %1419, float 1.000000e+00)  ; FMin(a,b)
  %1421 = fmul fast float %1420, %1367
  %1422 = fmul fast float %1420, %1368
  %1423 = fmul fast float %1420, %1369
  %1424 = fadd fast float %1421, %1375
  %1425 = fadd fast float %1422, %1376
  %1426 = fadd fast float %1423, %1377
  %1427 = fsub fast float %1424, %210
  %1428 = fsub fast float %1425, %211
  %1429 = fsub fast float %1426, %212
  %1430 = call float @dx.op.dot3.f32(i32 55, float %1427, float %1428, float %1429, float %1427, float %1428, float %1429)  ; Dot3(ax,ay,az,bx,by,bz)
  %1431 = call float @dx.op.unary.f32(i32 24, float %1430)  ; Sqrt(value)
  %1432 = fdiv fast float 1.000000e+00, %1431
  %1433 = fmul fast float %1427, %1432
  %1434 = fmul fast float %1428, %1432
  %1435 = fmul fast float %1429, %1432
  %1436 = fadd fast float %1431, %1356
  %1437 = fdiv fast float 1.000000e+00, %1436
  %1438 = fmul float %1372, %1437
  %1439 = fmul float %1438, %1438
  %1440 = call float @dx.op.unary.f32(i32 7, float %1439)  ; Saturate(value)
  br i1 %1412, label %1441, label %1465, !dx.controlflow.hints !90

; <label>:1441                                    ; preds = %1346
  %1442 = fmul fast float %1383, %1359
  %1443 = fmul fast float %1383, %1360
  %1444 = fmul fast float %1383, %1361
  %1445 = fsub fast float %1442, %210
  %1446 = fadd fast float %1445, %1424
  %1447 = fsub fast float %1443, %211
  %1448 = fadd fast float %1447, %1425
  %1449 = fsub fast float %1444, %212
  %1450 = fadd fast float %1449, %1426
  %1451 = call float @dx.op.dot3.f32(i32 55, float %1446, float %1448, float %1450, float %1446, float %1448, float %1450)  ; Dot3(ax,ay,az,bx,by,bz)
  %1452 = call float @dx.op.unary.f32(i32 25, float %1451)  ; Rsqrt(value)
  %1453 = fmul fast float %1452, %1446
  %1454 = fmul fast float %1452, %1448
  %1455 = fmul fast float %1452, %1450
  %1456 = fsub fast float %210, %1424
  %1457 = fsub fast float %211, %1425
  %1458 = fsub fast float %212, %1426
  %1459 = fsub fast float -0.000000e+00, %1456
  %1460 = fsub fast float -0.000000e+00, %1457
  %1461 = fsub fast float -0.000000e+00, %1458
  %1462 = call float @dx.op.dot3.f32(i32 55, float %1459, float %1460, float %1461, float %1359, float %1360, float %1361)  ; Dot3(ax,ay,az,bx,by,bz)
  %1463 = fcmp fast ogt float %1462, 0.000000e+00
  %1464 = uitofp i1 %1463 to float
  br label %1465

; <label>:1465                                    ; preds = %1441, %1346
  %1466 = phi float [ %1464, %1441 ], [ 1.000000e+00, %1346 ]
  %1467 = phi float [ %1453, %1441 ], [ %1433, %1346 ]
  %1468 = phi float [ %1454, %1441 ], [ %1434, %1346 ]
  %1469 = phi float [ %1455, %1441 ], [ %1435, %1346 ]
  %1470 = call float @dx.op.dot3.f32(i32 55, float %1359, float %1360, float %1361, float %1467, float %1468, float %1469)  ; Dot3(ax,ay,az,bx,by,bz)
  %1471 = fmul fast float %1470, %1470
  %1472 = call float @dx.op.unary.f32(i32 7, float %1471)  ; Saturate(value)
  %1473 = fsub fast float 1.000000e+00, %1472
  %1474 = fmul fast float %1473, 5.000000e-01
  %1475 = fcmp fast ogt float %1470, 0.000000e+00
  %1476 = fsub fast float 1.000000e+00, %1474
  %1477 = select i1 %1475, float %1474, float %1476
  %1478 = fmul fast float %1477, %1409
  %1479 = fadd fast float %1478, %1407
  %1480 = fmul fast float %1479, 0x3EF0001000000000
  %1481 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %24, float %1480, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1482 = extractvalue %dx.types.ResRet.f32 %1481, 0
  %1483 = fmul fast float %1470, %1381
  %1484 = fadd fast float %1483, %1382
  %1485 = call float @dx.op.unary.f32(i32 7, float %1484)  ; Saturate(value)
  %1486 = select i1 %1412, float 1.000000e+00, float %1485
  %1487 = select i1 %1412, float %1485, float 1.000000e+00
  %1488 = fmul fast float %1431, %1378
  %1489 = fsub fast float 1.000000e+00, %1488
  %1490 = fmul fast float %1489, %1384
  %1491 = call float @dx.op.unary.f32(i32 7, float %1490)  ; Saturate(value)
  %1492 = fmul fast float %1491, %1487
  %1493 = fmul fast float %1492, 2.000000e+00
  %1494 = fsub fast float 3.000000e+00, %1493
  %1495 = fmul fast float %1482, %1466
  %1496 = fmul fast float %1492, %1492
  %1497 = fmul fast float %1496, %1495
  %1498 = fmul fast float %1497, %1494
  %1499 = call float @dx.op.binary.f32(i32 36, float %1498, float %1498)  ; FMin(a,b)
  %1500 = call float @dx.op.binary.f32(i32 36, float %1498, float %1499)  ; FMin(a,b)
  %1501 = fcmp fast ogt float %1500, 0.000000e+00
  br i1 %1501, label %1502, label %1699, !dx.controlflow.hints !91

; <label>:1502                                    ; preds = %1465
  %1503 = icmp eq i32 %1410, 255
  br i1 %1503, label %1579, label %1504, !dx.controlflow.hints !92

; <label>:1504                                    ; preds = %1502
  %1505 = mul nuw nsw i32 %1410, 176
  %1506 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %1505, i32 undef)  ; BufferLoad(srv,index,wot)
  %1507 = extractvalue %dx.types.ResRet.f32 %1506, 0
  %1508 = extractvalue %dx.types.ResRet.f32 %1506, 1
  %1509 = extractvalue %dx.types.ResRet.f32 %1506, 2
  %1510 = extractvalue %dx.types.ResRet.f32 %1506, 3
  %1511 = add nuw nsw i32 %1505, 16
  %1512 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %1511, i32 undef)  ; BufferLoad(srv,index,wot)
  %1513 = extractvalue %dx.types.ResRet.f32 %1512, 0
  %1514 = extractvalue %dx.types.ResRet.f32 %1512, 1
  %1515 = add nuw nsw i32 %1505, 32
  %1516 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %1515, i32 undef)  ; BufferLoad(srv,index,wot)
  %1517 = extractvalue %dx.types.ResRet.f32 %1516, 0
  %1518 = add nuw nsw i32 %1505, 48
  %1519 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %1518, i32 undef)  ; BufferLoad(srv,index,wot)
  %1520 = extractvalue %dx.types.ResRet.f32 %1519, 0
  %1521 = extractvalue %dx.types.ResRet.f32 %1519, 1
  %1522 = extractvalue %dx.types.ResRet.f32 %1519, 2
  %1523 = extractvalue %dx.types.ResRet.f32 %1519, 3
  %1524 = add nuw nsw i32 %1505, 64
  %1525 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %1524, i32 undef)  ; BufferLoad(srv,index,wot)
  %1526 = extractvalue %dx.types.ResRet.f32 %1525, 0
  %1527 = extractvalue %dx.types.ResRet.f32 %1525, 1
  %1528 = extractvalue %dx.types.ResRet.f32 %1525, 2
  %1529 = extractvalue %dx.types.ResRet.f32 %1525, 3
  %1530 = add nuw nsw i32 %1505, 80
  %1531 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %1530, i32 undef)  ; BufferLoad(srv,index,wot)
  %1532 = extractvalue %dx.types.ResRet.f32 %1531, 0
  %1533 = extractvalue %dx.types.ResRet.f32 %1531, 1
  %1534 = extractvalue %dx.types.ResRet.f32 %1531, 2
  %1535 = extractvalue %dx.types.ResRet.f32 %1531, 3
  %1536 = add nuw nsw i32 %1505, 96
  %1537 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %1536, i32 undef)  ; BufferLoad(srv,index,wot)
  %1538 = extractvalue %dx.types.ResRet.f32 %1537, 0
  %1539 = extractvalue %dx.types.ResRet.f32 %1537, 1
  %1540 = extractvalue %dx.types.ResRet.f32 %1537, 2
  %1541 = extractvalue %dx.types.ResRet.f32 %1537, 3
  %1542 = bitcast float %1514 to i32
  %1543 = fmul fast float %1520, %210
  %1544 = call float @dx.op.tertiary.f32(i32 46, float %211, float %1526, float %1543)  ; FMad(a,b,c)
  %1545 = call float @dx.op.tertiary.f32(i32 46, float %212, float %1532, float %1544)  ; FMad(a,b,c)
  %1546 = fadd fast float %1545, %1538
  %1547 = fmul fast float %1521, %210
  %1548 = call float @dx.op.tertiary.f32(i32 46, float %211, float %1527, float %1547)  ; FMad(a,b,c)
  %1549 = call float @dx.op.tertiary.f32(i32 46, float %212, float %1533, float %1548)  ; FMad(a,b,c)
  %1550 = fadd fast float %1549, %1539
  %1551 = fmul fast float %1522, %210
  %1552 = call float @dx.op.tertiary.f32(i32 46, float %211, float %1528, float %1551)  ; FMad(a,b,c)
  %1553 = call float @dx.op.tertiary.f32(i32 46, float %212, float %1534, float %1552)  ; FMad(a,b,c)
  %1554 = fadd fast float %1553, %1540
  %1555 = fmul fast float %1523, %210
  %1556 = call float @dx.op.tertiary.f32(i32 46, float %211, float %1529, float %1555)  ; FMad(a,b,c)
  %1557 = call float @dx.op.tertiary.f32(i32 46, float %212, float %1535, float %1556)  ; FMad(a,b,c)
  %1558 = fadd fast float %1557, %1541
  %1559 = fdiv fast float %1546, %1558
  %1560 = fdiv fast float %1550, %1558
  %1561 = fdiv fast float %1554, %1558
  %1562 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %1561)  ; FMax(a,b)
  %1563 = fmul fast float %1559, %1513
  %1564 = fmul fast float %1560, %1513
  %1565 = call float @dx.op.binary.f32(i32 35, float %1563, float %1509)  ; FMax(a,b)
  %1566 = call float @dx.op.binary.f32(i32 35, float %1564, float %1509)  ; FMax(a,b)
  %1567 = call float @dx.op.binary.f32(i32 36, float %1565, float %1510)  ; FMin(a,b)
  %1568 = call float @dx.op.binary.f32(i32 36, float %1566, float %1510)  ; FMin(a,b)
  %1569 = fadd fast float %1567, %1507
  %1570 = fadd fast float %1568, %1508
  %1571 = uitofp i32 %1542 to float
  %1572 = fadd fast float %1562, %1517
  %1573 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %12, %dx.types.Handle %26, float %1569, float %1570, float %1571, float undef, i32 0, i32 0, i32 undef, float %1572)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1574 = extractvalue %dx.types.ResRet.f32 %1573, 0
  %1575 = fadd fast float %1574, -1.000000e+00
  %1576 = fmul fast float %1575, %1486
  %1577 = fadd fast float %1576, 1.000000e+00
  %1578 = fmul fast float %1577, %1498
  br label %1579

; <label>:1579                                    ; preds = %1504, %1502
  %1580 = phi float [ %1578, %1504 ], [ %1498, %1502 ]
  %1581 = call float @dx.op.binary.f32(i32 36, float %1580, float %1580)  ; FMin(a,b)
  %1582 = call float @dx.op.binary.f32(i32 36, float %1580, float %1581)  ; FMin(a,b)
  %1583 = fcmp fast ogt float %1582, 0.000000e+00
  br i1 %1583, label %1584, label %1699, !dx.controlflow.hints !93

; <label>:1584                                    ; preds = %1579
  %1585 = extractvalue %dx.types.CBufRet.f32 %1392, 1
  %1586 = fmul fast float %1580, %1440
  %1587 = call float @dx.op.binary.f32(i32 36, float %1586, float %1585)  ; FMin(a,b)
  %1588 = icmp eq i32 %305, 0
  br i1 %1588, label %1665, label %1589, !dx.controlflow.hints !84

; <label>:1589                                    ; preds = %1584
  %1590 = fsub fast float %1377, %304
  %1591 = fcmp fast ogt float %1590, 0.000000e+00
  %1592 = fsub fast float %212, %304
  %1593 = fcmp fast ogt float %1592, 0.000000e+00
  %1594 = xor i1 %1593, %1591
  %1595 = fsub fast float %304, %1377
  %1596 = fmul fast float %1595, 2.000000e+00
  %1597 = fadd fast float %1596, %1377
  %1598 = select i1 %1594, float %1377, float %1597
  %1599 = fsub fast float %1375, %210
  %1600 = fsub fast float %1376, %211
  %1601 = fsub fast float %1598, %212
  %1602 = call float @dx.op.dot3.f32(i32 55, float %1599, float %1600, float %1601, float %1599, float %1600, float %1601)  ; Dot3(ax,ay,az,bx,by,bz)
  %1603 = call float @dx.op.unary.f32(i32 25, float %1602)  ; Rsqrt(value)
  %1604 = fmul fast float %1603, %1599
  %1605 = fmul fast float %1603, %1600
  %1606 = fmul fast float %1603, %1601
  %1607 = fsub fast float %304, %212
  %1608 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %1607)  ; Dot3(ax,ay,az,bx,by,bz)
  %1609 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1604, float %1605, float %1606)  ; Dot3(ax,ay,az,bx,by,bz)
  %1610 = fdiv fast float 1.000000e+00, %1609
  %1611 = fmul fast float %1610, %1608
  %1612 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %1592, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1613 = fcmp fast ogt float %1612, 0.000000e+00
  %1614 = fcmp fast olt float %1612, 0.000000e+00
  %1615 = zext i1 %1613 to i32
  %1616 = zext i1 %1614 to i32
  %1617 = sub nsw i32 %1615, %1616
  %1618 = sitofp i32 %1617 to float
  %1619 = fsub fast float %1598, %304
  %1620 = call float @dx.op.dot3.f32(i32 55, float %1599, float %1600, float %1619, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1621 = fcmp fast ogt float %1620, 0.000000e+00
  %1622 = fcmp fast olt float %1620, 0.000000e+00
  %1623 = zext i1 %1621 to i32
  %1624 = zext i1 %1622 to i32
  %1625 = sub nsw i32 %1623, %1624
  %1626 = sitofp i32 %1625 to float
  %1627 = fcmp fast une float %1618, %1626
  br i1 %1627, label %1628, label %1638, !dx.controlflow.hints !85

; <label>:1628                                    ; preds = %1589
  %1629 = fmul fast float %1611, %1606
  %1630 = fmul fast float %1611, %1605
  %1631 = fmul fast float %1611, %1604
  %1632 = fmul fast float %1631, %1631
  %1633 = fmul fast float %1630, %1630
  %1634 = fadd fast float %1632, %1633
  %1635 = fmul fast float %1629, %1629
  %1636 = fadd fast float %1634, %1635
  %1637 = call float @dx.op.unary.f32(i32 24, float %1636)  ; Sqrt(value)
  br label %1648

; <label>:1638                                    ; preds = %1589
  %1639 = icmp slt i32 %1617, 0
  br i1 %1639, label %1640, label %1648, !dx.controlflow.hints !86

; <label>:1640                                    ; preds = %1638
  %1641 = fsub fast float %212, %1598
  %1642 = fmul fast float %1414, %1414
  %1643 = fmul fast float %1415, %1415
  %1644 = fadd fast float %1642, %1643
  %1645 = fmul fast float %1641, %1641
  %1646 = fadd fast float %1644, %1645
  %1647 = call float @dx.op.unary.f32(i32 24, float %1646)  ; Sqrt(value)
  br label %1648

; <label>:1648                                    ; preds = %1640, %1638, %1628
  %1649 = phi float [ %1637, %1628 ], [ %1647, %1640 ], [ 0.000000e+00, %1638 ]
  %1650 = and i1 %1593, %1591
  %1651 = fsub fast float -0.000000e+00, %1649
  %1652 = select i1 %1650, float -0.000000e+00, float %1651
  %1653 = fmul fast float %301, %1652
  %1654 = fmul fast float %302, %1652
  %1655 = fmul fast float %303, %1652
  %1656 = call float @dx.op.unary.f32(i32 21, float %1653)  ; Exp(value)
  %1657 = call float @dx.op.unary.f32(i32 21, float %1654)  ; Exp(value)
  %1658 = call float @dx.op.unary.f32(i32 21, float %1655)  ; Exp(value)
  %1659 = call float @dx.op.unary.f32(i32 7, float %1656)  ; Saturate(value)
  %1660 = call float @dx.op.unary.f32(i32 7, float %1657)  ; Saturate(value)
  %1661 = call float @dx.op.unary.f32(i32 7, float %1658)  ; Saturate(value)
  %1662 = fmul fast float %1659, %1403
  %1663 = fmul fast float %1660, %1404
  %1664 = fmul fast float %1661, %1405
  br label %1665

; <label>:1665                                    ; preds = %1648, %1584
  %1666 = phi float [ %1662, %1648 ], [ %1403, %1584 ]
  %1667 = phi float [ %1663, %1648 ], [ %1404, %1584 ]
  %1668 = phi float [ %1664, %1648 ], [ %1405, %1584 ]
  %1669 = fmul fast float %1666, %1587
  %1670 = fmul fast float %1667, %1587
  %1671 = fmul fast float %1668, %1587
  %1672 = fmul fast float %1669, 0x3FEC5BF8C0000000
  %1673 = fmul fast float %1434, 0x3FF88F51C0000000
  %1674 = fmul fast float %1673, %1669
  %1675 = fmul fast float %1435, 0x3FF88F51C0000000
  %1676 = fmul fast float %1675, %1669
  %1677 = fmul fast float %1433, 0x3FF88F51C0000000
  %1678 = fmul fast float %1677, %1669
  %1679 = fadd fast float %1672, %1324
  %1680 = fsub fast float %1325, %1674
  %1681 = fadd fast float %1676, %1326
  %1682 = fsub fast float %1327, %1678
  %1683 = fmul fast float %1670, 0x3FEC5BF8C0000000
  %1684 = fmul fast float %1673, %1670
  %1685 = fmul fast float %1675, %1670
  %1686 = fmul fast float %1677, %1670
  %1687 = fadd fast float %1683, %1320
  %1688 = fsub fast float %1321, %1684
  %1689 = fadd fast float %1685, %1322
  %1690 = fsub fast float %1323, %1686
  %1691 = fmul fast float %1671, 0x3FEC5BF8C0000000
  %1692 = fmul fast float %1673, %1671
  %1693 = fmul fast float %1675, %1671
  %1694 = fmul fast float %1677, %1671
  %1695 = fadd fast float %1691, %1316
  %1696 = fsub fast float %1317, %1692
  %1697 = fadd fast float %1693, %1318
  %1698 = fsub fast float %1319, %1694
  br label %1699

; <label>:1699                                    ; preds = %1665, %1579, %1465
  %1700 = phi float [ %1695, %1665 ], [ %1316, %1579 ], [ %1316, %1465 ]
  %1701 = phi float [ %1696, %1665 ], [ %1317, %1579 ], [ %1317, %1465 ]
  %1702 = phi float [ %1697, %1665 ], [ %1318, %1579 ], [ %1318, %1465 ]
  %1703 = phi float [ %1698, %1665 ], [ %1319, %1579 ], [ %1319, %1465 ]
  %1704 = phi float [ %1687, %1665 ], [ %1320, %1579 ], [ %1320, %1465 ]
  %1705 = phi float [ %1688, %1665 ], [ %1321, %1579 ], [ %1321, %1465 ]
  %1706 = phi float [ %1689, %1665 ], [ %1322, %1579 ], [ %1322, %1465 ]
  %1707 = phi float [ %1690, %1665 ], [ %1323, %1579 ], [ %1323, %1465 ]
  %1708 = phi float [ %1679, %1665 ], [ %1324, %1579 ], [ %1324, %1465 ]
  %1709 = phi float [ %1680, %1665 ], [ %1325, %1579 ], [ %1325, %1465 ]
  %1710 = phi float [ %1681, %1665 ], [ %1326, %1579 ], [ %1326, %1465 ]
  %1711 = phi float [ %1682, %1665 ], [ %1327, %1579 ], [ %1327, %1465 ]
  %1712 = add nuw i32 %1328, 1
  %1713 = icmp eq i32 %1712, %1311
  br i1 %1713, label %1714, label %1315, !llvm.loop !94

; <label>:1714                                    ; preds = %1699
  br label %1715

; <label>:1715                                    ; preds = %1714, %1309, %1240
  %1716 = phi float [ %1241, %1240 ], [ %1241, %1309 ], [ %1700, %1714 ]
  %1717 = phi float [ %1242, %1240 ], [ %1242, %1309 ], [ %1701, %1714 ]
  %1718 = phi float [ %1243, %1240 ], [ %1243, %1309 ], [ %1702, %1714 ]
  %1719 = phi float [ %1244, %1240 ], [ %1244, %1309 ], [ %1703, %1714 ]
  %1720 = phi float [ %1245, %1240 ], [ %1245, %1309 ], [ %1704, %1714 ]
  %1721 = phi float [ %1246, %1240 ], [ %1246, %1309 ], [ %1705, %1714 ]
  %1722 = phi float [ %1247, %1240 ], [ %1247, %1309 ], [ %1706, %1714 ]
  %1723 = phi float [ %1248, %1240 ], [ %1248, %1309 ], [ %1707, %1714 ]
  %1724 = phi float [ %1249, %1240 ], [ %1249, %1309 ], [ %1708, %1714 ]
  %1725 = phi float [ %1250, %1240 ], [ %1250, %1309 ], [ %1709, %1714 ]
  %1726 = phi float [ %1251, %1240 ], [ %1251, %1309 ], [ %1710, %1714 ]
  %1727 = phi float [ %1252, %1240 ], [ %1252, %1309 ], [ %1711, %1714 ]
  %1728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1729 = extractvalue %dx.types.CBufRet.f32 %1728, 0
  %1730 = extractvalue %dx.types.CBufRet.f32 %1728, 1
  %1731 = fmul fast float %1729, %1724
  %1732 = fmul fast float %1730, %1725
  %1733 = fmul fast float %1730, %1726
  %1734 = fmul fast float %1730, %1727
  %1735 = fmul fast float %1729, %1720
  %1736 = fmul fast float %1730, %1721
  %1737 = fmul fast float %1730, %1722
  %1738 = fmul fast float %1730, %1723
  %1739 = fmul fast float %1729, %1716
  %1740 = fmul fast float %1730, %1717
  %1741 = fmul fast float %1730, %1718
  %1742 = fmul fast float %1730, %1719
  %1743 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %19, i32 0, i32 %183, i32 %184, i32 0, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1744 = extractvalue %dx.types.ResRet.f32 %1743, 0
  %1745 = extractvalue %dx.types.ResRet.f32 %1743, 1
  %1746 = extractvalue %dx.types.ResRet.f32 %1743, 2
  %1747 = extractvalue %dx.types.ResRet.f32 %1743, 3
  %1748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1749 = extractvalue %dx.types.CBufRet.f32 %1748, 1
  %1750 = fmul fast float %1749, %1744
  %1751 = fmul fast float %1749, %1745
  %1752 = fmul fast float %1749, %1746
  %1753 = fmul fast float %1749, %1747
  %1754 = extractvalue %dx.types.CBufRet.f32 %1728, 2
  %1755 = extractvalue %dx.types.CBufRet.f32 %1728, 3
  %1756 = fmul fast float %1750, %1754
  %1757 = fmul fast float %1751, %1755
  %1758 = fmul fast float %1752, %1755
  %1759 = fmul fast float %1753, %1755
  %1760 = fadd fast float %1756, %1731
  %1761 = fadd fast float %1757, %1732
  %1762 = fadd fast float %1758, %1733
  %1763 = fadd fast float %1759, %1734
  %1764 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %19, i32 0, i32 %183, i32 %184, i32 1, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1765 = extractvalue %dx.types.ResRet.f32 %1764, 0
  %1766 = extractvalue %dx.types.ResRet.f32 %1764, 1
  %1767 = extractvalue %dx.types.ResRet.f32 %1764, 2
  %1768 = extractvalue %dx.types.ResRet.f32 %1764, 3
  %1769 = fmul fast float %1749, %1765
  %1770 = fmul fast float %1749, %1766
  %1771 = fmul fast float %1749, %1767
  %1772 = fmul fast float %1749, %1768
  %1773 = fmul fast float %1769, %1754
  %1774 = fmul fast float %1770, %1755
  %1775 = fmul fast float %1771, %1755
  %1776 = fmul fast float %1772, %1755
  %1777 = fadd fast float %1773, %1735
  %1778 = fadd fast float %1774, %1736
  %1779 = fadd fast float %1775, %1737
  %1780 = fadd fast float %1776, %1738
  %1781 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %19, i32 0, i32 %183, i32 %184, i32 2, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1782 = extractvalue %dx.types.ResRet.f32 %1781, 0
  %1783 = extractvalue %dx.types.ResRet.f32 %1781, 1
  %1784 = extractvalue %dx.types.ResRet.f32 %1781, 2
  %1785 = extractvalue %dx.types.ResRet.f32 %1781, 3
  %1786 = fmul fast float %1749, %1782
  %1787 = fmul fast float %1749, %1783
  %1788 = fmul fast float %1749, %1784
  %1789 = fmul fast float %1749, %1785
  %1790 = fmul fast float %1786, %1754
  %1791 = fmul fast float %1787, %1755
  %1792 = fmul fast float %1788, %1755
  %1793 = fmul fast float %1789, %1755
  %1794 = fadd fast float %1790, %1739
  %1795 = fadd fast float %1791, %1740
  %1796 = fadd fast float %1792, %1741
  %1797 = fadd fast float %1793, %1742
  %1798 = select i1 %114, float 0x3FE5555560000000, float %156
  %1799 = fmul fast float %1761, %1798
  %1800 = fmul fast float %1762, %1798
  %1801 = fmul fast float %1763, %1798
  %1802 = fmul fast float %1778, %1798
  %1803 = fmul fast float %1779, %1798
  %1804 = fmul fast float %1780, %1798
  %1805 = fmul fast float %1795, %1798
  %1806 = fmul fast float %1796, %1798
  %1807 = fmul fast float %1797, %1798
  %1808 = extractvalue %dx.types.CBufRet.f32 %1748, 0
  %1809 = fmul fast float %1808, %1760
  %1810 = fmul fast float %1799, %1808
  %1811 = fmul fast float %1800, %1808
  %1812 = fmul fast float %1801, %1808
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %183, i32 %184, i32 0, float %1809, float %1810, float %1811, float %1812, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1814 = extractvalue %dx.types.CBufRet.f32 %1813, 0
  %1815 = fmul fast float %1814, %1777
  %1816 = fmul fast float %1802, %1814
  %1817 = fmul fast float %1803, %1814
  %1818 = fmul fast float %1804, %1814
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %183, i32 %184, i32 1, float %1815, float %1816, float %1817, float %1818, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1820 = extractvalue %dx.types.CBufRet.f32 %1819, 0
  %1821 = fmul fast float %1820, %1794
  %1822 = fmul fast float %1805, %1820
  %1823 = fmul fast float %1806, %1820
  %1824 = fmul fast float %1807, %1820
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %183, i32 %184, i32 2, float %1821, float %1822, float %1823, float %1824, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1825

; <label>:1825                                    ; preds = %1715, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

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
!dx.entryPoints = !{!43}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !32, !34, !38}
!5 = !{!6, !8, !9, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !22, !23, !24, !25, !26, !28, !30, !31}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 33, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 28, i32 1, i32 11, i32 0, null}
!9 = !{i32 2, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 37, i32 1, i32 12, i32 0, !10}
!10 = !{i32 1, i32 4}
!11 = !{i32 3, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 29, i32 1, i32 7, i32 0, !7}
!12 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 39, i32 1, i32 2, i32 0, !7}
!13 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 13, i32 1, i32 2, i32 0, !7}
!14 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 38, i32 1, i32 2, i32 0, !7}
!15 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 19, i32 1, i32 11, i32 0, null}
!16 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 20, i32 1, i32 11, i32 0, null}
!17 = !{i32 9, %"class.Texture1D<float>"* undef, !"", i32 0, i32 26, i32 1, i32 1, i32 0, !7}
!18 = !{i32 10, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 35, i32 1, i32 7, i32 0, !7}
!19 = !{i32 11, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 14, i32 1, i32 2, i32 0, !7}
!20 = !{i32 12, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 36, i32 1, i32 7, i32 0, !21}
!21 = !{i32 0, i32 14}
!22 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 34, i32 1, i32 11, i32 0, null}
!23 = !{i32 14, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 32, i32 1, i32 2, i32 0, !7}
!24 = !{i32 15, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 18, i32 1, i32 2, i32 0, !7}
!25 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 41, i32 1, i32 2, i32 0, !7}
!26 = !{i32 17, %"class.StructuredBuffer<GfxBSPAABBNodePacked>"* undef, !"", i32 0, i32 22, i32 1, i32 12, i32 0, !27}
!27 = !{i32 1, i32 8}
!28 = !{i32 18, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 23, i32 1, i32 10, i32 0, !29}
!29 = !{i32 0, i32 5}
!30 = !{i32 19, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 24, i32 1, i32 10, i32 0, !29}
!31 = !{i32 20, %"class.StructuredBuffer<GfxBSPAABBNodePacked>"* undef, !"", i32 0, i32 25, i32 1, i32 12, i32 0, !27}
!32 = !{!33}
!33 = !{i32 0, %"class.RWTexture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 7, i1 false, i1 false, i1 false, !7}
!34 = !{!35, !36, !37}
!35 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!36 = !{i32 1, %hostlayout.DeferredEffectLightGlobalConsts* undef, !"", i32 0, i32 0, i32 1, i32 80, null}
!37 = !{i32 2, %DeferredEffectLightConsts_decl* undef, !"", i32 0, i32 1, i32 1, i32 240, null}
!38 = !{!39, !40, !41, !42}
!39 = !{i32 0, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!40 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!41 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!42 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!43 = !{void ()* @cs_deferred_effect_lighting_4, !"cs_deferred_effect_lighting_4", null, !4, !44}
!44 = !{i32 0, i64 272, i32 4, !45}
!45 = !{i32 4, i32 4, i32 4}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 1}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 1}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 1}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 1}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 1}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = !{!61, !61, i64 0}
!61 = !{!"int", !62, i64 0}
!62 = !{!"omnipotent char", !63, i64 0}
!63 = !{!"Simple C/C++ TBAA"}
!64 = !{!65, !67}
!65 = distinct !{!65, !66, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_Sprite@@ULightIteratorOutput_Sprite@@@Z: %lightingOutput"}
!66 = distinct !{!66, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_Sprite@@ULightIteratorOutput_Sprite@@@Z"}
!67 = distinct !{!67, !68, !"\01?Lights_Iterate_Sprite@@YAXULocalAttributes@@ULightIteratorInput_Sprite@@ULightIteratorOutput_Sprite@@@Z: %lightingOutput"}
!68 = distinct !{!68, !"\01?Lights_Iterate_Sprite@@YAXULocalAttributes@@ULightIteratorInput_Sprite@@ULightIteratorOutput_Sprite@@@Z"}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 2}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
!74 = !{!75, !75, i64 0}
!75 = !{!"float", !62, i64 0}
!76 = distinct !{!76, !77}
!77 = !{!"llvm.loop.unroll.disable"}
!78 = distinct !{!78, !77}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 1}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 1}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 2}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 2}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 1}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 2}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 2}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 2}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 2}
!88 = !{!67}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 2}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 2}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 1}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 1}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 1}
!94 = distinct !{!94, !77}

