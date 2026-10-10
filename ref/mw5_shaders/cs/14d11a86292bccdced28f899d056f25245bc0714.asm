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
; shader hash: 2314ccd6251b44bb540bf9320596544c
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
;                                   texture     f32          2d     T12            t40     1
;                                   texture     f32     2darray     T13            t35     1
;                                   texture     f32          2d     T14            t14     1
;                                   textureunorm_f32     2darray     T15            t36     1
;                                   texture    byte         r/o     T16            t34     1
;                                   texture     f32          2d     T17            t32     1
;                                   texture     f32          2d     T18            t18     1
;                                   texture     f32          2d     T19            t41     1
;                                   texture    byte         r/o     T20            t21     1
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

define void @cs_deferred_effect_lighting_2() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 41, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 36, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 40, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 26, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 39, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 29, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 28, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = alloca [4 x i32], align 4
  %32 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %33 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %34 = call i32 @dx.op.threadId.i32(i32 93, i32 2)  ; ThreadId(component)
  %35 = alloca [12 x float], align 4
  %36 = alloca [12 x float], align 4
  %37 = alloca [3 x float], align 4
  %38 = alloca [3 x float], align 4
  %39 = alloca [4 x float], align 4
  %40 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %41 = extractvalue %dx.types.CBufRet.i32 %40, 2
  %42 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %41, i32 0)  ; BufferLoad(srv,index,wot)
  %43 = extractvalue %dx.types.ResRet.i32 %42, 0
  %44 = icmp ult i32 %32, %43
  br i1 %44, label %45, label %2659, !dx.controlflow.hints !45

; <label>:45                                      ; preds = %0
  %46 = uitofp i32 %33 to float
  %47 = uitofp i32 %34 to float
  %48 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %49 = extractvalue %dx.types.CBufRet.f32 %48, 1
  %50 = fdiv fast float %46, %49
  %51 = fdiv fast float %47, %49
  %52 = extractvalue %dx.types.CBufRet.f32 %48, 2
  %53 = fadd fast float %52, %50
  %54 = fadd fast float %52, %51
  %55 = add i32 %41, 3
  %56 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 %55)  ; CBufferLoadLegacy(handle,regIndex)
  %57 = extractvalue %dx.types.CBufRet.i32 %56, 2
  %58 = add i32 %57, %32
  %59 = shl i32 %58, 5
  %60 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %59, i32 undef)  ; BufferLoad(srv,index,wot)
  %61 = extractvalue %dx.types.ResRet.i32 %60, 0
  %62 = extractvalue %dx.types.ResRet.i32 %60, 1
  %63 = extractvalue %dx.types.ResRet.i32 %60, 2
  %64 = extractvalue %dx.types.ResRet.i32 %60, 3
  %65 = lshr i32 %64, 14
  %66 = and i32 %65, 16383
  %67 = and i32 %64, 16383
  %68 = bitcast i32 %61 to float
  %69 = bitcast i32 %62 to float
  %70 = bitcast i32 %63 to float
  %71 = and i32 %64, 536870912
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %112, label %73, !dx.controlflow.hints !46

; <label>:73                                      ; preds = %45
  %74 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %75 = extractvalue %dx.types.CBufRet.f32 %74, 2
  %76 = extractvalue %dx.types.CBufRet.f32 %74, 3
  %77 = fmul fast float %75, %68
  %78 = fmul fast float %76, %69
  %79 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %80 = extractvalue %dx.types.CBufRet.f32 %79, 0
  %81 = extractvalue %dx.types.CBufRet.f32 %79, 1
  %82 = fadd fast float %77, %80
  %83 = fadd fast float %78, %81
  %84 = call float @dx.op.unary.f32(i32 7, float %82)  ; Saturate(value)
  %85 = call float @dx.op.unary.f32(i32 7, float %83)  ; Saturate(value)
  %86 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %25, float %84, float %85, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %87 = extractvalue %dx.types.ResRet.f32 %86, 0
  %88 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %89 = extractvalue %dx.types.CBufRet.f32 %88, 0
  %90 = fmul fast float %89, %87
  %91 = fsub fast float %82, %84
  %92 = fsub fast float %83, %85
  %93 = extractvalue %dx.types.CBufRet.f32 %74, 0
  %94 = extractvalue %dx.types.CBufRet.f32 %74, 1
  %95 = fmul fast float %93, %91
  %96 = fmul fast float %94, %92
  %97 = fmul fast float %95, %95
  %98 = fmul fast float %96, %96
  %99 = fadd fast float %97, %98
  %100 = call float @dx.op.unary.f32(i32 24, float %99)  ; Sqrt(value)
  %101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %102 = extractvalue %dx.types.CBufRet.f32 %101, 3
  %103 = fmul fast float %102, %100
  %104 = call float @dx.op.unary.f32(i32 7, float %103)  ; Saturate(value)
  %105 = extractvalue %dx.types.CBufRet.f32 %101, 2
  %106 = fsub fast float %105, %90
  %107 = fmul fast float %106, %104
  %108 = extractvalue %dx.types.CBufRet.f32 %88, 1
  %109 = fadd fast float %90, %70
  %110 = fadd fast float %109, %108
  %111 = fadd fast float %110, %107
  br label %112

; <label>:112                                     ; preds = %73, %45
  %113 = phi float [ %111, %73 ], [ %70, %45 ]
  %114 = and i32 %64, 268435456
  %115 = icmp ne i32 %114, 0
  %116 = and i32 %64, 1073741824
  %117 = icmp ne i32 %116, 0
  %118 = or i32 %59, 16
  %119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %118, i32 undef)  ; BufferLoad(srv,index,wot)
  %120 = extractvalue %dx.types.ResRet.i32 %119, 0
  %121 = extractvalue %dx.types.ResRet.i32 %119, 1
  %122 = extractvalue %dx.types.ResRet.i32 %119, 2
  %123 = extractvalue %dx.types.ResRet.i32 %119, 3
  %124 = and i32 %120, 65535
  %125 = call float @dx.op.legacyF16ToF32(i32 131, i32 %124)  ; LegacyF16ToF32(value)
  %126 = lshr i32 %120, 16
  %127 = call float @dx.op.legacyF16ToF32(i32 131, i32 %126)  ; LegacyF16ToF32(value)
  %128 = and i32 %121, 1023
  %129 = uitofp i32 %128 to float
  %130 = lshr i32 %121, 10
  %131 = and i32 %130, 1023
  %132 = uitofp i32 %131 to float
  %133 = lshr i32 %121, 20
  %134 = and i32 %133, 1023
  %135 = uitofp i32 %134 to float
  %136 = fmul fast float %129, 0x3F60040100000000
  %137 = fmul fast float %132, 0x3F60040100000000
  %138 = fmul fast float %135, 0x3F60040100000000
  %139 = fadd fast float %136, -1.000000e+00
  %140 = fadd fast float %137, -1.000000e+00
  %141 = fadd fast float %138, -1.000000e+00
  %142 = and i32 %122, 1023
  %143 = uitofp i32 %142 to float
  %144 = lshr i32 %122, 10
  %145 = and i32 %144, 1023
  %146 = uitofp i32 %145 to float
  %147 = lshr i32 %122, 20
  %148 = and i32 %147, 1023
  %149 = uitofp i32 %148 to float
  %150 = fmul fast float %143, 0x3F60040100000000
  %151 = fmul fast float %146, 0x3F60040100000000
  %152 = fmul fast float %149, 0x3F60040100000000
  %153 = fadd fast float %150, -1.000000e+00
  %154 = fadd fast float %151, -1.000000e+00
  %155 = fadd fast float %152, -1.000000e+00
  %156 = and i32 %123, 65535
  %157 = call float @dx.op.legacyF16ToF32(i32 131, i32 %156)  ; LegacyF16ToF32(value)
  %158 = lshr i32 %123, 16
  %159 = call float @dx.op.legacyF16ToF32(i32 131, i32 %158)  ; LegacyF16ToF32(value)
  %160 = call float @dx.op.unary.f32(i32 13, float %157)  ; Sin(value)
  %161 = call float @dx.op.unary.f32(i32 12, float %157)  ; Cos(value)
  %162 = fmul fast float %161, %139
  %163 = fmul fast float %161, %140
  %164 = fmul fast float %161, %141
  %165 = fmul fast float %160, %153
  %166 = fmul fast float %154, %160
  %167 = fmul fast float %155, %160
  %168 = fadd fast float %162, %165
  %169 = fadd fast float %163, %166
  %170 = fadd fast float %164, %167
  %171 = fmul fast float %168, %125
  %172 = fmul fast float %169, %125
  %173 = fmul fast float %170, %125
  %174 = fmul fast float %160, %139
  %175 = fmul fast float %140, %160
  %176 = fmul fast float %141, %160
  %177 = fmul fast float %161, %153
  %178 = fmul fast float %161, %154
  %179 = fmul fast float %161, %155
  %180 = fsub fast float %174, %177
  %181 = fsub fast float %175, %178
  %182 = fsub fast float %176, %179
  %183 = fmul fast float %180, %127
  %184 = fmul fast float %181, %127
  %185 = fmul fast float %182, %127
  %186 = add i32 %66, %33
  %187 = add i32 %67, %34
  %188 = fmul fast float %171, %53
  %189 = fmul fast float %172, %53
  %190 = fmul fast float %173, %53
  %191 = fmul fast float %183, %54
  %192 = fmul fast float %184, %54
  %193 = fmul fast float %185, %54
  %194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %195 = extractvalue %dx.types.CBufRet.f32 %194, 0
  %196 = extractvalue %dx.types.CBufRet.f32 %194, 1
  %197 = extractvalue %dx.types.CBufRet.f32 %194, 2
  %198 = fadd fast float %191, %188
  %199 = fmul fast float %198, 2.000000e+00
  %200 = fsub fast float %68, %195
  %201 = fsub fast float %200, %171
  %202 = fsub fast float %201, %183
  %203 = fadd fast float %202, %199
  %204 = fadd fast float %192, %189
  %205 = fmul fast float %204, 2.000000e+00
  %206 = fsub fast float %69, %196
  %207 = fsub fast float %206, %172
  %208 = fsub fast float %207, %184
  %209 = fadd fast float %208, %205
  %210 = fadd fast float %193, %190
  %211 = fmul fast float %210, 2.000000e+00
  %212 = fsub fast float %113, %197
  %213 = fsub fast float %212, %173
  %214 = fsub fast float %213, %185
  %215 = fadd fast float %214, %211
  %216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %217 = extractvalue %dx.types.CBufRet.f32 %216, 0
  %218 = extractvalue %dx.types.CBufRet.f32 %216, 1
  %219 = extractvalue %dx.types.CBufRet.f32 %216, 2
  %220 = extractvalue %dx.types.CBufRet.f32 %216, 3
  %221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %222 = extractvalue %dx.types.CBufRet.f32 %221, 0
  %223 = extractvalue %dx.types.CBufRet.f32 %221, 1
  %224 = extractvalue %dx.types.CBufRet.f32 %221, 2
  %225 = extractvalue %dx.types.CBufRet.f32 %221, 3
  %226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %227 = extractvalue %dx.types.CBufRet.f32 %226, 0
  %228 = extractvalue %dx.types.CBufRet.f32 %226, 1
  %229 = extractvalue %dx.types.CBufRet.f32 %226, 2
  %230 = extractvalue %dx.types.CBufRet.f32 %226, 3
  %231 = fmul fast float %203, %217
  %232 = call float @dx.op.tertiary.f32(i32 46, float %209, float %218, float %231)  ; FMad(a,b,c)
  %233 = call float @dx.op.tertiary.f32(i32 46, float %215, float %219, float %232)  ; FMad(a,b,c)
  %234 = fadd fast float %233, %220
  %235 = fmul fast float %203, %222
  %236 = call float @dx.op.tertiary.f32(i32 46, float %209, float %223, float %235)  ; FMad(a,b,c)
  %237 = call float @dx.op.tertiary.f32(i32 46, float %215, float %224, float %236)  ; FMad(a,b,c)
  %238 = fadd fast float %237, %225
  %239 = fmul fast float %203, %227
  %240 = call float @dx.op.tertiary.f32(i32 46, float %209, float %228, float %239)  ; FMad(a,b,c)
  %241 = call float @dx.op.tertiary.f32(i32 46, float %215, float %229, float %240)  ; FMad(a,b,c)
  %242 = fadd fast float %241, %230
  %243 = fdiv fast float %234, %242
  %244 = fdiv fast float %238, %242
  %245 = call float @dx.op.binary.f32(i32 35, float %243, float 0xBFEFF7CEE0000000)  ; FMax(a,b)
  %246 = call float @dx.op.binary.f32(i32 35, float %244, float 0xBFEFF7CEE0000000)  ; FMax(a,b)
  %247 = call float @dx.op.binary.f32(i32 36, float %245, float 0x3FEFF7CEE0000000)  ; FMin(a,b)
  %248 = call float @dx.op.binary.f32(i32 36, float %246, float 0x3FEFF7CEE0000000)  ; FMin(a,b)
  %249 = fadd fast float %247, 1.000000e+00
  %250 = fsub fast float 1.000000e+00, %248
  %251 = fmul fast float %249, 5.000000e-01
  %252 = fmul fast float %250, 5.000000e-01
  %253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %254 = extractvalue %dx.types.CBufRet.f32 %253, 0
  %255 = extractvalue %dx.types.CBufRet.f32 %253, 1
  %256 = fmul fast float %251, %254
  %257 = fmul fast float %252, %255
  %258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 235)  ; CBufferLoadLegacy(handle,regIndex)
  %259 = extractvalue %dx.types.CBufRet.f32 %258, 2
  %260 = call float @dx.op.binary.f32(i32 35, float %242, float %259)  ; FMax(a,b)
  %261 = extractvalue %dx.types.CBufRet.f32 %253, 2
  %262 = extractvalue %dx.types.CBufRet.f32 %253, 3
  %263 = fmul fast float %256, 2.000000e+00
  %264 = fmul fast float %263, %261
  %265 = fmul fast float %257, 2.000000e+00
  %266 = fmul fast float %265, %262
  %267 = fsub fast float 1.000000e+00, %264
  %268 = fsub fast float 1.000000e+00, %266
  %269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %270 = extractvalue %dx.types.CBufRet.f32 %269, 0
  %271 = extractvalue %dx.types.CBufRet.f32 %269, 1
  %272 = extractvalue %dx.types.CBufRet.f32 %269, 2
  %273 = fmul fast float %267, %270
  %274 = fmul fast float %267, %271
  %275 = fmul fast float %267, %272
  %276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %277 = extractvalue %dx.types.CBufRet.f32 %276, 0
  %278 = extractvalue %dx.types.CBufRet.f32 %276, 1
  %279 = extractvalue %dx.types.CBufRet.f32 %276, 2
  %280 = fmul fast float %268, %277
  %281 = fmul fast float %268, %278
  %282 = fmul fast float %268, %279
  %283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %284 = extractvalue %dx.types.CBufRet.f32 %283, 0
  %285 = extractvalue %dx.types.CBufRet.f32 %283, 1
  %286 = extractvalue %dx.types.CBufRet.f32 %283, 2
  %287 = fadd fast float %280, %284
  %288 = fadd fast float %287, %273
  %289 = fadd fast float %281, %285
  %290 = fadd fast float %289, %274
  %291 = fadd fast float %282, %286
  %292 = fadd fast float %291, %275
  %293 = fmul fast float %288, %260
  %294 = fmul fast float %290, %260
  %295 = fmul fast float %292, %260
  %296 = fsub fast float -0.000000e+00, %295
  %297 = fadd fast float %293, %195
  %298 = fadd fast float %294, %196
  %299 = call float @dx.op.dot3.f32(i32 55, float %293, float %294, float %295, float %293, float %294, float %295)  ; Dot3(ax,ay,az,bx,by,bz)
  %300 = call float @dx.op.unary.f32(i32 25, float %299)  ; Rsqrt(value)
  %301 = fmul fast float %293, %300
  %302 = fmul fast float %294, %300
  %303 = fmul fast float %295, %300
  %304 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %305 = extractvalue %dx.types.CBufRet.i32 %304, 3
  %306 = and i32 %305, 3
  %307 = icmp ne i32 %306, 0
  %308 = and i32 %305, 4
  %309 = icmp eq i32 %308, 0
  %310 = and i1 %307, %309
  %311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %312 = extractvalue %dx.types.CBufRet.f32 %311, 2
  %313 = fmul fast float %312, 0x3FE3C6EF40000000
  %314 = frem fast float %256, 2.560000e+02
  %315 = frem fast float %257, 2.560000e+02
  %316 = fptoui float %314 to i32
  %317 = fptoui float %315 to i32
  %318 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 0, i32 %316, i32 %317, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %319 = extractvalue %dx.types.ResRet.f32 %318, 0
  %320 = fadd fast float %319, %313
  %321 = call float @dx.op.unary.f32(i32 22, float %320)  ; Frc(value)
  %322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %323 = extractvalue %dx.types.CBufRet.f32 %322, 0
  %324 = extractvalue %dx.types.CBufRet.f32 %322, 1
  %325 = fsub fast float %297, %323
  %326 = fsub fast float %298, %324
  %327 = fmul fast float %325, %325
  %328 = fmul fast float %326, %326
  %329 = fadd fast float %327, %328
  %330 = call float @dx.op.unary.f32(i32 24, float %329)  ; Sqrt(value)
  %331 = extractvalue %dx.types.CBufRet.f32 %322, 2
  %332 = fcmp fast olt float %330, %331
  br i1 %332, label %333, label %399, !dx.controlflow.hints !47

; <label>:333                                     ; preds = %112
  %334 = fadd fast float %295, %197
  %335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %336 = extractvalue %dx.types.CBufRet.f32 %335, 0
  %337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %338 = extractvalue %dx.types.CBufRet.f32 %337, 0
  %339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %340 = extractvalue %dx.types.CBufRet.f32 %339, 0
  %341 = extractvalue %dx.types.CBufRet.f32 %335, 1
  %342 = extractvalue %dx.types.CBufRet.f32 %337, 1
  %343 = extractvalue %dx.types.CBufRet.f32 %339, 1
  %344 = extractvalue %dx.types.CBufRet.f32 %335, 3
  %345 = extractvalue %dx.types.CBufRet.f32 %337, 3
  %346 = extractvalue %dx.types.CBufRet.f32 %339, 3
  %347 = fadd fast float %344, %297
  %348 = fadd fast float %345, %298
  %349 = fadd fast float %334, %346
  %350 = fmul fast float %347, %336
  %351 = call float @dx.op.tertiary.f32(i32 46, float %348, float %338, float %350)  ; FMad(a,b,c)
  %352 = call float @dx.op.tertiary.f32(i32 46, float %349, float %340, float %351)  ; FMad(a,b,c)
  %353 = fmul fast float %347, %341
  %354 = call float @dx.op.tertiary.f32(i32 46, float %348, float %342, float %353)  ; FMad(a,b,c)
  %355 = call float @dx.op.tertiary.f32(i32 46, float %349, float %343, float %354)  ; FMad(a,b,c)
  %356 = fsub fast float %352, %344
  %357 = fsub fast float %355, %345
  %358 = fsub fast float %356, %323
  %359 = fadd fast float %358, %331
  %360 = fsub fast float %357, %324
  %361 = fadd fast float %360, %331
  %362 = extractvalue %dx.types.CBufRet.f32 %322, 3
  %363 = fmul fast float %359, %362
  %364 = fmul fast float %361, %362
  %365 = call float @dx.op.unary.f32(i32 7, float %363)  ; Saturate(value)
  %366 = call float @dx.op.unary.f32(i32 7, float %364)  ; Saturate(value)
  %367 = fsub fast float 1.000000e+00, %365
  %368 = fsub fast float 1.000000e+00, %366
  %369 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %25, float %367, float %368, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %370 = extractvalue %dx.types.ResRet.f32 %369, 0
  %371 = fcmp fast ugt float %370, 0.000000e+00
  br i1 %371, label %372, label %399, !dx.controlflow.hints !48

; <label>:372                                     ; preds = %333
  %373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %374 = extractvalue %dx.types.CBufRet.f32 %373, 2
  %375 = fmul fast float %374, %370
  %376 = extractvalue %dx.types.CBufRet.f32 %373, 3
  %377 = fadd fast float %376, %375
  %378 = extractvalue %dx.types.CBufRet.f32 %339, 2
  %379 = fadd fast float %377, %346
  %380 = fmul fast float %352, %340
  %381 = call float @dx.op.tertiary.f32(i32 46, float %355, float %343, float %380)  ; FMad(a,b,c)
  %382 = call float @dx.op.tertiary.f32(i32 46, float %379, float %378, float %381)  ; FMad(a,b,c)
  %383 = fsub fast float %382, %346
  %384 = fsub fast float %383, %197
  %385 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %25, float %367, float %368, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %386 = extractvalue %dx.types.ResRet.f32 %385, 0
  %387 = extractvalue %dx.types.ResRet.f32 %385, 1
  %388 = extractvalue %dx.types.ResRet.f32 %385, 2
  %389 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %25, float %367, float %368, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %390 = extractvalue %dx.types.ResRet.f32 %389, 0
  %391 = extractvalue %dx.types.ResRet.f32 %389, 1
  %392 = extractvalue %dx.types.ResRet.f32 %389, 2
  %393 = fadd fast float %390, %386
  %394 = fmul fast float %393, 0x3F847AE140000000
  %395 = fadd fast float %391, %387
  %396 = fmul fast float %395, 0x3F847AE140000000
  %397 = fadd fast float %392, %388
  %398 = fmul fast float %397, 0x3F847AE140000000
  br label %399

; <label>:399                                     ; preds = %372, %333, %112
  %400 = phi float [ 0.000000e+00, %112 ], [ %394, %372 ], [ 0.000000e+00, %333 ]
  %401 = phi float [ 0.000000e+00, %112 ], [ %396, %372 ], [ 0.000000e+00, %333 ]
  %402 = phi float [ 0.000000e+00, %112 ], [ %398, %372 ], [ 0.000000e+00, %333 ]
  %403 = phi float [ 0.000000e+00, %112 ], [ %384, %372 ], [ -1.310720e+05, %333 ]
  %404 = phi i32 [ 0, %112 ], [ 1, %372 ], [ 0, %333 ]
  %405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %406 = extractvalue %dx.types.CBufRet.f32 %405, 3
  %407 = fcmp fast oeq float %406, 0.000000e+00
  br i1 %407, label %1377, label %408, !dx.controlflow.hints !49

; <label>:408                                     ; preds = %399
  %409 = extractvalue %dx.types.CBufRet.f32 %405, 0
  %410 = extractvalue %dx.types.CBufRet.f32 %405, 1
  %411 = extractvalue %dx.types.CBufRet.f32 %405, 2
  %412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %413 = extractvalue %dx.types.CBufRet.f32 %412, 0
  %414 = extractvalue %dx.types.CBufRet.f32 %412, 1
  %415 = extractvalue %dx.types.CBufRet.f32 %412, 2
  %416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %417 = extractvalue %dx.types.CBufRet.f32 %416, 0
  %418 = extractvalue %dx.types.CBufRet.f32 %416, 1
  %419 = call float @dx.op.dot3.f32(i32 55, float %413, float %414, float %415, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %420 = select i1 %310, float %417, float %413
  %421 = select i1 %310, float %419, float %414
  %422 = select i1 %310, float %418, float %415
  %423 = fcmp fast olt float %406, 0.000000e+00
  br i1 %423, label %1073, label %424, !dx.controlflow.hints !50

; <label>:424                                     ; preds = %408
  %425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %426 = extractvalue %dx.types.CBufRet.f32 %425, 0
  %427 = extractvalue %dx.types.CBufRet.f32 %425, 1
  %428 = extractvalue %dx.types.CBufRet.f32 %425, 2
  %429 = extractvalue %dx.types.CBufRet.f32 %425, 3
  %430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %431 = extractvalue %dx.types.CBufRet.f32 %430, 0
  %432 = extractvalue %dx.types.CBufRet.f32 %430, 1
  %433 = extractvalue %dx.types.CBufRet.f32 %430, 2
  %434 = extractvalue %dx.types.CBufRet.f32 %430, 3
  %435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %436 = extractvalue %dx.types.CBufRet.f32 %435, 0
  %437 = extractvalue %dx.types.CBufRet.f32 %435, 1
  %438 = extractvalue %dx.types.CBufRet.f32 %435, 2
  %439 = extractvalue %dx.types.CBufRet.f32 %435, 3
  %440 = fmul fast float %426, %293
  %441 = call float @dx.op.tertiary.f32(i32 46, float %294, float %427, float %440)  ; FMad(a,b,c)
  %442 = call float @dx.op.tertiary.f32(i32 46, float %295, float %428, float %441)  ; FMad(a,b,c)
  %443 = fadd fast float %442, %429
  %444 = fmul fast float %431, %293
  %445 = call float @dx.op.tertiary.f32(i32 46, float %294, float %432, float %444)  ; FMad(a,b,c)
  %446 = call float @dx.op.tertiary.f32(i32 46, float %295, float %433, float %445)  ; FMad(a,b,c)
  %447 = fadd fast float %446, %434
  %448 = fmul fast float %436, %293
  %449 = call float @dx.op.tertiary.f32(i32 46, float %294, float %437, float %448)  ; FMad(a,b,c)
  %450 = call float @dx.op.tertiary.f32(i32 46, float %295, float %438, float %449)  ; FMad(a,b,c)
  %451 = fadd fast float %450, %439
  %452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %453 = extractvalue %dx.types.CBufRet.f32 %452, 0
  %454 = extractvalue %dx.types.CBufRet.f32 %452, 1
  %455 = extractvalue %dx.types.CBufRet.f32 %452, 3
  %456 = fmul fast float %455, %443
  %457 = fmul fast float %455, %447
  %458 = fadd fast float %456, %453
  %459 = fadd fast float %457, %454
  %460 = extractvalue %dx.types.CBufRet.f32 %452, 2
  %461 = fcmp fast olt float %460, 0.000000e+00
  %462 = fsub fast float -0.000000e+00, %460
  %463 = select i1 %461, float %462, float %460
  %464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %465 = extractvalue %dx.types.CBufRet.f32 %464, 1
  %466 = fadd fast float %463, %465
  %467 = fcmp fast ogt float %466, 0.000000e+00
  br i1 %467, label %468, label %500, !dx.controlflow.hints !51

; <label>:468                                     ; preds = %424
  %469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %470 = extractvalue %dx.types.CBufRet.f32 %469, 1
  %471 = fsub fast float %470, %451
  %472 = extractvalue %dx.types.CBufRet.f32 %469, 2
  %473 = fmul fast float %471, %472
  %474 = fsub fast float 1.000000e+00, %473
  %475 = call float @dx.op.unary.f32(i32 7, float %474)  ; Saturate(value)
  %476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %477 = extractvalue %dx.types.CBufRet.f32 %476, 0
  %478 = extractvalue %dx.types.CBufRet.f32 %476, 1
  %479 = fsub fast float %458, %477
  %480 = fsub fast float %459, %478
  %481 = fcmp fast olt float %479, 0.000000e+00
  %482 = fcmp fast olt float %480, 0.000000e+00
  %483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %484 = extractvalue %dx.types.CBufRet.f32 %483, 0
  %485 = extractvalue %dx.types.CBufRet.f32 %483, 1
  %486 = extractvalue %dx.types.CBufRet.f32 %483, 2
  %487 = extractvalue %dx.types.CBufRet.f32 %483, 3
  %488 = select i1 %481, float %484, float %486
  %489 = select i1 %482, float %485, float %487
  %490 = fmul fast float %488, %479
  %491 = fmul fast float %489, %480
  %492 = call float @dx.op.unary.f32(i32 6, float %490)  ; FAbs(value)
  %493 = call float @dx.op.unary.f32(i32 6, float %491)  ; FAbs(value)
  %494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %495 = extractvalue %dx.types.CBufRet.f32 %494, 0
  %496 = call float @dx.op.binary.f32(i32 35, float %492, float %493)  ; FMax(a,b)
  %497 = fsub fast float %495, %496
  %498 = call float @dx.op.unary.f32(i32 7, float %497)  ; Saturate(value)
  %499 = fmul fast float %498, %475
  br label %500

; <label>:500                                     ; preds = %468, %424
  %501 = phi float [ %499, %468 ], [ 0.000000e+00, %424 ]
  %502 = call float @dx.op.binary.f32(i32 35, float %501, float 0.000000e+00)  ; FMax(a,b)
  %503 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %502)  ; FMax(a,b)
  %504 = fcmp fast olt float %503, 1.000000e+00
  br i1 %504, label %505, label %903, !dx.controlflow.hints !52

; <label>:505                                     ; preds = %500
  %506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %507 = extractvalue %dx.types.CBufRet.f32 %506, 0
  %508 = fcmp fast une float %507, 0.000000e+00
  br i1 %508, label %509, label %903, !dx.controlflow.hints !53

; <label>:509                                     ; preds = %505
  %510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %511 = extractvalue %dx.types.CBufRet.f32 %510, 0
  %512 = extractvalue %dx.types.CBufRet.f32 %510, 1
  %513 = extractvalue %dx.types.CBufRet.f32 %510, 2
  %514 = extractvalue %dx.types.CBufRet.f32 %510, 3
  %515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %516 = extractvalue %dx.types.CBufRet.f32 %515, 0
  %517 = extractvalue %dx.types.CBufRet.f32 %515, 1
  %518 = extractvalue %dx.types.CBufRet.f32 %515, 2
  %519 = extractvalue %dx.types.CBufRet.f32 %515, 3
  %520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %521 = extractvalue %dx.types.CBufRet.f32 %520, 0
  %522 = extractvalue %dx.types.CBufRet.f32 %520, 1
  %523 = extractvalue %dx.types.CBufRet.f32 %520, 2
  %524 = extractvalue %dx.types.CBufRet.f32 %520, 3
  %525 = fmul fast float %511, %293
  %526 = call float @dx.op.tertiary.f32(i32 46, float %294, float %512, float %525)  ; FMad(a,b,c)
  %527 = call float @dx.op.tertiary.f32(i32 46, float %295, float %513, float %526)  ; FMad(a,b,c)
  %528 = fadd fast float %527, %514
  %529 = fmul fast float %516, %293
  %530 = call float @dx.op.tertiary.f32(i32 46, float %294, float %517, float %529)  ; FMad(a,b,c)
  %531 = call float @dx.op.tertiary.f32(i32 46, float %295, float %518, float %530)  ; FMad(a,b,c)
  %532 = fadd fast float %531, %519
  %533 = fmul fast float %521, %293
  %534 = call float @dx.op.tertiary.f32(i32 46, float %294, float %522, float %533)  ; FMad(a,b,c)
  %535 = call float @dx.op.tertiary.f32(i32 46, float %295, float %523, float %534)  ; FMad(a,b,c)
  %536 = fadd fast float %535, %524
  %537 = fcmp fast oge float %528, 1.000000e+00
  %538 = fcmp fast oge float %532, 1.000000e+00
  %539 = or i1 %537, %538
  %540 = fcmp fast olt float %528, 0.000000e+00
  %541 = fcmp fast olt float %532, 0.000000e+00
  %542 = or i1 %540, %541
  %543 = or i1 %539, %542
  br i1 %543, label %903, label %544, !dx.controlflow.hints !54

; <label>:544                                     ; preds = %509
  %545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %546 = extractvalue %dx.types.CBufRet.f32 %545, 0
  %547 = extractvalue %dx.types.CBufRet.f32 %545, 1
  %548 = extractvalue %dx.types.CBufRet.f32 %545, 2
  %549 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %550 = extractvalue %dx.types.CBufRet.i32 %549, 2
  %551 = uitofp i32 %550 to float
  %552 = extractvalue %dx.types.CBufRet.i32 %549, 3
  %553 = uitofp i32 %552 to float
  %554 = extractvalue %dx.types.CBufRet.f32 %545, 3
  %555 = fmul fast float %554, 2.000000e+00
  %556 = fsub fast float %528, %546
  %557 = fsub fast float %532, %547
  %558 = fmul fast float %555, %556
  %559 = fmul fast float %555, %557
  %560 = fdiv fast float 1.000000e+00, %411
  %561 = fmul fast float %559, %560
  %562 = call float @dx.op.unary.f32(i32 6, float %561)  ; FAbs(value)
  %563 = fmul fast float %548, %295
  %564 = fmul fast float %563, %555
  %565 = call float @dx.op.unary.f32(i32 6, float %564)  ; FAbs(value)
  %566 = call float @dx.op.unary.f32(i32 6, float %558)  ; FAbs(value)
  %567 = call float @dx.op.binary.f32(i32 35, float %565, float %562)  ; FMax(a,b)
  %568 = call float @dx.op.binary.f32(i32 35, float %566, float %567)  ; FMax(a,b)
  %569 = fmul fast float %568, 2.000000e+00
  %570 = call float @dx.op.unary.f32(i32 23, float %569)  ; Log(value)
  %571 = call float @dx.op.binary.f32(i32 35, float %570, float %551)  ; FMax(a,b)
  %572 = call float @dx.op.unary.f32(i32 22, float %571)  ; Frc(value)
  %573 = fadd fast float %572, 0xBFEA666660000000
  %574 = fmul fast float %573, 8.000000e+00
  %575 = call float @dx.op.unary.f32(i32 7, float %574)  ; Saturate(value)
  %576 = call float @dx.op.unary.f32(i32 27, float %571)  ; Round_ni(value)
  %577 = fadd fast float %576, %575
  %578 = call float @dx.op.binary.f32(i32 36, float %577, float %553)  ; FMin(a,b)
  %579 = call float @dx.op.unary.f32(i32 27, float %578)  ; Round_ni(value)
  %580 = fsub fast float -0.000000e+00, %579
  %581 = call float @dx.op.unary.f32(i32 21, float %580)  ; Exp(value)
  %582 = fmul fast float %581, %555
  %583 = fmul fast float %582, %528
  %584 = fmul fast float %582, %532
  %585 = fmul fast float %583, 2.500000e-01
  %586 = fmul fast float %584, 2.500000e-01
  %587 = fadd fast float %585, 5.000000e-01
  %588 = fadd fast float %586, 5.000000e-01
  %589 = fsub fast float %553, %551
  %590 = fptoui float %589 to i32
  %591 = add i32 %590, 320
  %592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 %591)  ; CBufferLoadLegacy(handle,regIndex)
  %593 = extractvalue %dx.types.CBufRet.f32 %592, 0
  %594 = extractvalue %dx.types.CBufRet.f32 %592, 1
  %595 = fcmp fast une float %578, %553
  %596 = fsub fast float %528, %593
  %597 = fsub fast float %532, %594
  %598 = call float @dx.op.unary.f32(i32 6, float %596)  ; FAbs(value)
  %599 = call float @dx.op.unary.f32(i32 6, float %597)  ; FAbs(value)
  %600 = fmul fast float %598, %582
  %601 = fmul fast float %599, %582
  %602 = fcmp fast olt float %600, 1.000000e+00
  %603 = fcmp fast olt float %601, 1.000000e+00
  %604 = and i1 %602, %603
  %605 = or i1 %595, %604
  br i1 %605, label %606, label %903, !dx.controlflow.hints !55

; <label>:606                                     ; preds = %544
  %607 = fmul fast float %584, 5.000000e-01
  %608 = fmul fast float %583, 5.000000e-01
  %609 = fadd fast float %607, 5.000000e-01
  %610 = fadd fast float %608, 5.000000e-01
  %611 = sitofp i32 %550 to float
  %612 = fsub fast float %578, %611
  %613 = call float @dx.op.unary.f32(i32 27, float %612)  ; Round_ni(value)
  %614 = call float @dx.op.unary.f32(i32 22, float %578)  ; Frc(value)
  %615 = call float @dx.op.unary.f32(i32 22, float %610)  ; Frc(value)
  %616 = call float @dx.op.unary.f32(i32 22, float %609)  ; Frc(value)
  %617 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %24, float %615, float %616, float %613, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %618 = extractvalue %dx.types.ResRet.f32 %617, 0
  %619 = extractvalue %dx.types.ResRet.f32 %617, 1
  %620 = extractvalue %dx.types.ResRet.f32 %617, 2
  %621 = extractvalue %dx.types.ResRet.f32 %617, 3
  %622 = fcmp fast ogt float %614, 0.000000e+00
  br i1 %622, label %623, label %644, !dx.controlflow.hints !56

; <label>:623                                     ; preds = %606
  %624 = fadd fast float %613, 1.000000e+00
  %625 = call float @dx.op.unary.f32(i32 22, float %587)  ; Frc(value)
  %626 = call float @dx.op.unary.f32(i32 22, float %588)  ; Frc(value)
  %627 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %24, float %625, float %626, float %624, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %628 = extractvalue %dx.types.ResRet.f32 %627, 0
  %629 = extractvalue %dx.types.ResRet.f32 %627, 1
  %630 = extractvalue %dx.types.ResRet.f32 %627, 2
  %631 = extractvalue %dx.types.ResRet.f32 %627, 3
  %632 = fsub fast float %628, %618
  %633 = fsub fast float %629, %619
  %634 = fsub fast float %630, %620
  %635 = fsub fast float %631, %621
  %636 = fmul fast float %632, %614
  %637 = fmul fast float %633, %614
  %638 = fmul fast float %634, %614
  %639 = fmul fast float %635, %614
  %640 = fadd fast float %636, %618
  %641 = fadd fast float %637, %619
  %642 = fadd fast float %638, %620
  %643 = fadd fast float %639, %621
  br label %644

; <label>:644                                     ; preds = %623, %606
  %645 = phi float [ %640, %623 ], [ %618, %606 ]
  %646 = phi float [ %641, %623 ], [ %619, %606 ]
  %647 = phi float [ %642, %623 ], [ %620, %606 ]
  %648 = phi float [ %643, %623 ], [ %621, %606 ]
  %649 = fadd fast float %645, -5.000000e-01
  %650 = fadd fast float %647, -5.000000e-01
  %651 = fmul fast float %649, 0xBFD5555560000000
  %652 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %650, float %651)  ; FMad(a,b,c)
  %653 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %646, float 0.000000e+00)  ; FMad(a,b,c)
  %654 = fadd fast float %653, %648
  %655 = fmul fast float %649, -7.500000e-01
  %656 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %650, float %655)  ; FMad(a,b,c)
  %657 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %646, float 0.000000e+00)  ; FMad(a,b,c)
  %658 = fadd fast float %657, %648
  %659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %660 = extractvalue %dx.types.CBufRet.f32 %659, 0
  %661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %662 = extractvalue %dx.types.CBufRet.f32 %661, 0
  %663 = extractvalue %dx.types.CBufRet.f32 %661, 1
  %664 = extractvalue %dx.types.CBufRet.f32 %661, 2
  %665 = extractvalue %dx.types.CBufRet.f32 %661, 3
  %666 = fsub fast float %662, %652
  %667 = fsub fast float %663, %654
  %668 = fsub fast float %664, %656
  %669 = fsub fast float %665, %658
  %670 = fmul fast float %666, %660
  %671 = fmul fast float %667, %660
  %672 = fmul fast float %668, %660
  %673 = fmul fast float %669, %660
  %674 = fadd fast float %670, %652
  %675 = fadd fast float %671, %654
  %676 = fadd fast float %672, %656
  %677 = fadd fast float %673, %658
  %678 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %679 = extractvalue %dx.types.ResRet.i32 %678, 0
  %680 = and i32 %679, 536870911
  %681 = uitofp i32 %680 to float
  %682 = fmul fast float %681, %528
  %683 = fmul fast float %681, %532
  %684 = fptoui float %682 to i32
  %685 = fptoui float %683 to i32
  %686 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %687 = extractvalue %dx.types.ResRet.i32 %686, 0
  %688 = and i32 %687, 31
  %689 = lshr i32 %684, %688
  %690 = lshr i32 %685, %688
  %691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %692 = extractvalue %dx.types.ResRet.i32 %691, 0
  %693 = and i32 %692, 31
  %694 = shl i32 1, %693
  %695 = call i32 @dx.op.binary.i32(i32 40, i32 %694, i32 4)  ; UMin(a,b)
  %696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %697 = extractvalue %dx.types.ResRet.i32 %696, 0
  %698 = extractvalue %dx.types.ResRet.i32 %696, 1
  %699 = icmp eq i32 %695, 0
  br i1 %699, label %741, label %700

; <label>:700                                     ; preds = %644
  br label %701

; <label>:701                                     ; preds = %729, %700
  %702 = phi i32 [ %732, %729 ], [ 0, %700 ]
  %703 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %704 = extractvalue %dx.types.ResRet.i32 %703, 0
  %705 = lshr i32 %704, 16
  %706 = and i32 %705, 31
  %707 = shl i32 %690, %706
  %708 = add i32 %707, %689
  %709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %710 = extractvalue %dx.types.ResRet.i32 %709, 0
  %711 = and i32 %710, 31
  %712 = shl i32 %708, %711
  %713 = add i32 %712, %702
  %714 = shl i32 %713, 2
  %715 = add i32 %714, 32
  %716 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %715, i32 undef)  ; BufferLoad(srv,index,wot)
  %717 = extractvalue %dx.types.ResRet.i32 %716, 0
  %718 = icmp slt i32 %717, 0
  %719 = getelementptr [12 x float], [12 x float]* %35, i32 0, i32 %702
  %720 = getelementptr [12 x float], [12 x float]* %36, i32 0, i32 %702
  %721 = bitcast float* %719 to i32*
  %722 = bitcast float* %720 to i32*
  br i1 %718, label %723, label %729, !dx.controlflow.hints !57

; <label>:723                                     ; preds = %701
  %724 = and i32 %717, 1073741823
  %725 = add nuw nsw i32 %724, 20
  %726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %725, i32 undef)  ; BufferLoad(srv,index,wot)
  %727 = extractvalue %dx.types.ResRet.i32 %726, 0
  %728 = extractvalue %dx.types.ResRet.i32 %726, 1
  br label %729

; <label>:729                                     ; preds = %723, %701
  %730 = phi i32 [ %727, %723 ], [ %697, %701 ]
  %731 = phi i32 [ %728, %723 ], [ %698, %701 ]
  store i32 %730, i32* %721, align 4
  store i32 %731, i32* %722, align 4
  %732 = add nuw i32 %702, 1
  %733 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %734 = extractvalue %dx.types.CBufRet.i32 %733, 2
  %735 = icmp eq i32 %734, 0
  %736 = icmp ugt i32 %717, -1073741825
  %737 = and i1 %736, %735
  %738 = icmp ult i32 %732, %695
  %739 = and i1 %737, %738
  br i1 %739, label %701, label %740, !dx.controlflow.hints !58

; <label>:740                                     ; preds = %729
  br label %741

; <label>:741                                     ; preds = %740, %644
  %742 = phi i32 [ 0, %644 ], [ %732, %740 ]
  %743 = extractvalue %dx.types.CBufRet.f32 %506, 2
  %744 = fptoui float %743 to i32
  %745 = icmp eq i32 %744, 0
  br i1 %745, label %797, label %746

; <label>:746                                     ; preds = %741
  br label %747

; <label>:747                                     ; preds = %792, %746
  %748 = phi i32 [ %793, %792 ], [ %742, %746 ]
  %749 = phi i32 [ %794, %792 ], [ 0, %746 ]
  %750 = lshr i32 %749, 2
  %751 = and i32 %749, 3
  %752 = add nuw nsw i32 %750, 83
  %753 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 %752)  ; CBufferLoadLegacy(handle,regIndex)
  %754 = extractvalue %dx.types.CBufRet.i32 %753, 0
  %755 = extractvalue %dx.types.CBufRet.i32 %753, 1
  %756 = extractvalue %dx.types.CBufRet.i32 %753, 2
  %757 = extractvalue %dx.types.CBufRet.i32 %753, 3
  %758 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 0
  store i32 %754, i32* %758, align 4
  %759 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 1
  store i32 %755, i32* %759, align 4
  %760 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 2
  store i32 %756, i32* %760, align 4
  %761 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 3
  store i32 %757, i32* %761, align 4
  %762 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 %751
  %763 = load i32, i32* %762, align 4, !tbaa !59, !noalias !63
  %764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %765 = extractvalue %dx.types.ResRet.i32 %764, 0
  %766 = lshr i32 %765, 16
  %767 = and i32 %766, 31
  %768 = shl i32 %690, %767
  %769 = add i32 %768, %689
  %770 = shl i32 %769, 2
  %771 = add i32 %770, %763
  %772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %771, i32 undef)  ; BufferLoad(srv,index,wot)
  %773 = extractvalue %dx.types.ResRet.i32 %772, 0
  %774 = icmp eq i32 %773, 0
  br i1 %774, label %792, label %775, !dx.controlflow.hints !68

; <label>:775                                     ; preds = %747
  %776 = icmp slt i32 %773, 0
  %777 = getelementptr [12 x float], [12 x float]* %35, i32 0, i32 %748
  %778 = getelementptr [12 x float], [12 x float]* %36, i32 0, i32 %748
  %779 = bitcast float* %777 to i32*
  %780 = bitcast float* %778 to i32*
  br i1 %776, label %781, label %788, !dx.controlflow.hints !69

; <label>:781                                     ; preds = %775
  %782 = and i32 %773, 1073741823
  %783 = add i32 %763, 20
  %784 = add i32 %783, %782
  %785 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %784, i32 undef)  ; BufferLoad(srv,index,wot)
  %786 = extractvalue %dx.types.ResRet.i32 %785, 0
  %787 = extractvalue %dx.types.ResRet.i32 %785, 1
  br label %788

; <label>:788                                     ; preds = %781, %775
  %789 = phi i32 [ %786, %781 ], [ %697, %775 ]
  %790 = phi i32 [ %787, %781 ], [ %698, %775 ]
  store i32 %789, i32* %779, align 4
  store i32 %790, i32* %780, align 4
  %791 = add i32 %748, 1
  br label %792

; <label>:792                                     ; preds = %788, %747
  %793 = phi i32 [ %748, %747 ], [ %791, %788 ]
  %794 = add nuw i32 %749, 1
  %795 = icmp eq i32 %794, %744
  br i1 %795, label %796, label %747

; <label>:796                                     ; preds = %792
  br label %797

; <label>:797                                     ; preds = %796, %741
  %798 = phi i32 [ %742, %741 ], [ %793, %796 ]
  %799 = icmp eq i32 %798, 1
  %800 = getelementptr [12 x float], [12 x float]* %35, i32 0, i32 0
  %801 = getelementptr [12 x float], [12 x float]* %36, i32 0, i32 0
  br i1 %799, label %802, label %805, !dx.controlflow.hints !70

; <label>:802                                     ; preds = %797
  %803 = load float, float* %800, align 4
  %804 = load float, float* %801, align 4
  br label %832

; <label>:805                                     ; preds = %797
  %806 = load float, float* %800, align 4
  %807 = load float, float* %801, align 4
  %808 = fdiv fast float 1.000000e+00, %807
  %809 = fsub fast float %806, %808
  %810 = icmp ugt i32 %798, 1
  br i1 %810, label %811, label %827

; <label>:811                                     ; preds = %805
  br label %812

; <label>:812                                     ; preds = %812, %811
  %813 = phi float [ %822, %812 ], [ %809, %811 ]
  %814 = phi float [ %823, %812 ], [ %806, %811 ]
  %815 = phi i32 [ %824, %812 ], [ 1, %811 ]
  %816 = getelementptr [12 x float], [12 x float]* %35, i32 0, i32 %815
  %817 = load float, float* %816, align 4
  %818 = getelementptr [12 x float], [12 x float]* %36, i32 0, i32 %815
  %819 = load float, float* %818, align 4
  %820 = fdiv fast float 1.000000e+00, %819
  %821 = fsub fast float %817, %820
  %822 = call float @dx.op.binary.f32(i32 36, float %813, float %821)  ; FMin(a,b)
  %823 = call float @dx.op.binary.f32(i32 35, float %814, float %817)  ; FMax(a,b)
  %824 = add nuw i32 %815, 1
  %825 = icmp eq i32 %824, %798
  br i1 %825, label %826, label %812

; <label>:826                                     ; preds = %812
  br label %827

; <label>:827                                     ; preds = %826, %805
  %828 = phi float [ %809, %805 ], [ %822, %826 ]
  %829 = phi float [ %806, %805 ], [ %823, %826 ]
  %830 = fsub fast float %829, %828
  %831 = fdiv fast float 1.000000e+00, %830
  br label %832

; <label>:832                                     ; preds = %827, %802
  %833 = phi float [ %803, %802 ], [ %829, %827 ]
  %834 = phi float [ %804, %802 ], [ %831, %827 ]
  %835 = fadd fast float %536, %833
  %836 = fmul fast float %835, %834
  %837 = call float @dx.op.unary.f32(i32 7, float %836)  ; Saturate(value)
  %838 = fmul fast float %837, 2.000000e+00
  %839 = fsub fast float 1.000000e+00, %838
  %840 = fmul fast float %674, %674
  %841 = fsub fast float %675, %840
  %842 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %841)  ; FMax(a,b)
  %843 = fdiv fast float 1.000000e+00, %842
  %844 = fmul fast float %675, %674
  %845 = fsub fast float %676, %844
  %846 = fsub fast float %839, %674
  %847 = fmul fast float %839, %839
  %848 = fsub fast float %847, %675
  %849 = fmul fast float %843, %845
  %850 = fmul fast float %849, %846
  %851 = fsub fast float %848, %850
  %852 = fmul fast float %675, %675
  %853 = fsub fast float %677, %852
  %854 = fmul fast float %845, %845
  %855 = fmul fast float %854, %843
  %856 = fsub fast float %853, %855
  %857 = fdiv fast float %851, %856
  %858 = fmul fast float %857, %845
  %859 = fsub fast float %846, %858
  %860 = fmul fast float %859, %843
  %861 = fmul fast float %860, %674
  %862 = fsub fast float 1.000000e+00, %861
  %863 = fmul fast float %857, %675
  %864 = fsub fast float %862, %863
  %865 = fmul fast float %860, %860
  %866 = fmul fast float %857, 4.000000e+00
  %867 = fmul fast float %866, %864
  %868 = fsub fast float %865, %867
  %869 = call float @dx.op.unary.f32(i32 24, float %868)  ; Sqrt(value)
  %870 = fcmp fast oge float %860, 0.000000e+00
  %871 = fsub fast float -0.000000e+00, %869
  %872 = select i1 %870, float %871, float %869
  %873 = fsub fast float %872, %860
  %874 = fdiv fast float %873, %857
  %875 = fdiv fast float %864, %873
  %876 = fmul fast float %874, 5.000000e-01
  %877 = fmul fast float %875, 2.000000e+00
  %878 = select i1 %870, float %876, float %877
  %879 = select i1 %870, float %877, float %876
  %880 = call float @dx.op.binary.f32(i32 35, float %878, float %879)  ; FMax(a,b)
  %881 = call float @dx.op.binary.f32(i32 36, float %878, float %879)  ; FMin(a,b)
  %882 = fcmp fast ogt float %839, %880
  %883 = fsub fast float %839, %881
  %884 = fsub fast float %839, %880
  %885 = fsub fast float %880, %881
  %886 = select i1 %882, float %884, float %885
  %887 = fmul float %883, %886
  %888 = select i1 %882, float %881, float %839
  %889 = fcmp fast ogt float %839, %881
  %890 = fmul fast float %888, %880
  %891 = fadd fast float %888, %880
  %892 = fmul fast float %891, %674
  %893 = fadd fast float %890, %675
  %894 = fsub fast float %893, %892
  %895 = fdiv fast float %894, %887
  %896 = select i1 %889, float %895, float 0.000000e+00
  %897 = fsub fast float 1.000000e+00, %896
  %898 = select i1 %882, float %897, float %896
  %899 = call float @dx.op.unary.f32(i32 7, float %898)  ; Saturate(value)
  %900 = extractvalue %dx.types.CBufRet.f32 %659, 3
  %901 = fmul fast float %900, %899
  %902 = fsub fast float 1.000000e+00, %901
  br label %903

; <label>:903                                     ; preds = %832, %544, %509, %505, %500
  %904 = phi float [ 1.000000e+00, %500 ], [ %902, %832 ], [ 1.000000e+00, %509 ], [ 1.000000e+00, %544 ], [ 1.000000e+00, %505 ]
  %905 = fcmp fast ogt float %501, 0.000000e+00
  br i1 %905, label %906, label %1068, !dx.controlflow.hints !71

; <label>:906                                     ; preds = %903
  %907 = fadd fast float %465, %451
  %908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %909 = extractvalue %dx.types.CBufRet.f32 %908, 2
  %910 = extractvalue %dx.types.CBufRet.f32 %908, 3
  %911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %912 = extractvalue %dx.types.CBufRet.f32 %911, 1
  %913 = call float @dx.op.binary.f32(i32 35, float %907, float 0.000000e+00)  ; FMax(a,b)
  %914 = fadd fast float %913, 0x3F10000000000000
  %915 = fcmp fast oeq float %912, 0.000000e+00
  br i1 %915, label %916, label %983, !dx.controlflow.hints !72

; <label>:916                                     ; preds = %906
  %917 = extractvalue %dx.types.CBufRet.f32 %908, 1
  %918 = extractvalue %dx.types.CBufRet.f32 %908, 0
  %919 = fmul fast float %918, %458
  %920 = fmul fast float %917, %459
  %921 = fadd fast float %919, 5.000000e-01
  %922 = call float @dx.op.unary.f32(i32 27, float %921)  ; Round_ni(value)
  %923 = fadd fast float %920, 5.000000e-01
  %924 = call float @dx.op.unary.f32(i32 27, float %923)  ; Round_ni(value)
  %925 = fsub fast float %921, %922
  %926 = fsub fast float %923, %924
  %927 = fadd fast float %922, -5.000000e-01
  %928 = fadd fast float %924, -5.000000e-01
  %929 = fmul fast float %925, 2.000000e+00
  %930 = fsub fast float 3.000000e+00, %929
  %931 = fadd fast float %929, 1.000000e+00
  %932 = fsub fast float 2.000000e+00, %925
  %933 = bitcast float %930 to i32
  %934 = sub nsw i32 2129859010, %933
  %935 = bitcast i32 %934 to float
  %936 = fmul fast float %935, %932
  %937 = fadd fast float %936, -1.000000e+00
  %938 = bitcast float %931 to i32
  %939 = sub nsw i32 2129859010, %938
  %940 = bitcast i32 %939 to float
  %941 = fmul fast float %940, %925
  %942 = fadd fast float %941, 1.000000e+00
  %943 = fmul fast float %926, 2.000000e+00
  %944 = fsub fast float 3.000000e+00, %943
  %945 = fadd fast float %943, 1.000000e+00
  %946 = fsub fast float 2.000000e+00, %926
  %947 = bitcast float %944 to i32
  %948 = sub nsw i32 2129859010, %947
  %949 = bitcast i32 %948 to float
  %950 = fmul fast float %949, %946
  %951 = fadd fast float %950, -1.000000e+00
  %952 = bitcast float %945 to i32
  %953 = sub nsw i32 2129859010, %952
  %954 = bitcast i32 %953 to float
  %955 = fmul fast float %954, %926
  %956 = fadd fast float %955, 1.000000e+00
  %957 = fadd fast float %937, %927
  %958 = fmul fast float %957, %909
  %959 = fadd fast float %951, %928
  %960 = fmul fast float %959, %910
  %961 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %27, float %958, float %960, float undef, float undef, i32 0, i32 0, i32 undef, float %914)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %962 = extractvalue %dx.types.ResRet.f32 %961, 0
  %963 = fmul fast float %962, %930
  %964 = fadd fast float %942, %927
  %965 = fmul fast float %964, %909
  %966 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %27, float %965, float %960, float undef, float undef, i32 0, i32 0, i32 undef, float %914)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %967 = extractvalue %dx.types.ResRet.f32 %966, 0
  %968 = fmul fast float %967, %931
  %969 = fadd fast float %956, %928
  %970 = fmul fast float %969, %910
  %971 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %27, float %958, float %970, float undef, float undef, i32 0, i32 0, i32 undef, float %914)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %972 = extractvalue %dx.types.ResRet.f32 %971, 0
  %973 = fmul fast float %972, %930
  %974 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %27, float %965, float %970, float undef, float undef, i32 0, i32 0, i32 undef, float %914)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %975 = extractvalue %dx.types.ResRet.f32 %974, 0
  %976 = fmul fast float %975, %931
  %977 = fadd fast float %976, %973
  %978 = fmul fast float %977, %945
  %979 = fadd fast float %968, %963
  %980 = fmul fast float %979, %944
  %981 = fadd fast float %980, %978
  %982 = fmul fast float %981, 6.250000e-02
  br label %1068

; <label>:983                                     ; preds = %906
  %984 = fmul fast float %321, 0x401921FB60000000
  %985 = call float @dx.op.unary.f32(i32 13, float %984)  ; Sin(value)
  %986 = call float @dx.op.unary.f32(i32 12, float %984)  ; Cos(value)
  %987 = fsub fast float -0.000000e+00, %985
  br label %988

; <label>:988                                     ; preds = %1037, %983
  %989 = phi float [ 0.000000e+00, %983 ], [ %1032, %1037 ]
  %990 = phi float [ 0.000000e+00, %983 ], [ %1034, %1037 ]
  %991 = phi i32 [ 0, %983 ], [ %1038, %1037 ]
  %992 = mul i32 %991, 2
  %993 = add i32 0, %992
  %994 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %993
  %995 = load float, float* %994, align 4
  %996 = mul i32 %991, 2
  %997 = add i32 1, %996
  %998 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %997
  %999 = load float, float* %998, align 4
  %1000 = fmul fast float %995, %986
  %1001 = call float @dx.op.tertiary.f32(i32 46, float %999, float %987, float %1000)  ; FMad(a,b,c)
  %1002 = fmul fast float %995, %985
  %1003 = call float @dx.op.tertiary.f32(i32 46, float %999, float %986, float %1002)  ; FMad(a,b,c)
  %1004 = fmul fast float %1001, %912
  %1005 = fmul fast float %1003, %912
  %1006 = fadd fast float %1004, %458
  %1007 = fadd fast float %1005, %459
  %1008 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %9, %dx.types.Handle %26, float %1006, float %1007, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1009 = extractvalue %dx.types.ResRet.f32 %1008, 0
  %1010 = extractvalue %dx.types.ResRet.f32 %1008, 1
  %1011 = extractvalue %dx.types.ResRet.f32 %1008, 2
  %1012 = extractvalue %dx.types.ResRet.f32 %1008, 3
  %1013 = getelementptr inbounds [4 x float], [4 x float]* %39, i32 0, i32 0
  store float %1009, float* %1013, align 4
  %1014 = getelementptr inbounds [4 x float], [4 x float]* %39, i32 0, i32 1
  store float %1010, float* %1014, align 4
  %1015 = getelementptr inbounds [4 x float], [4 x float]* %39, i32 0, i32 2
  store float %1011, float* %1015, align 4
  %1016 = getelementptr inbounds [4 x float], [4 x float]* %39, i32 0, i32 3
  store float %1012, float* %1016, align 4
  %1017 = fsub fast float %1009, %914
  %1018 = fcmp fast olt float %1017, 0.000000e+00
  %1019 = select i1 %1018, float 0.000000e+00, float 1.000000e+00
  %1020 = fadd fast float %1019, %989
  %1021 = fmul fast float %1019, %1017
  %1022 = fadd fast float %1021, %990
  br label %1023

; <label>:1023                                    ; preds = %1023, %988
  %1024 = phi i32 [ 1, %988 ], [ %1035, %1023 ]
  %1025 = phi float [ %1022, %988 ], [ %1034, %1023 ]
  %1026 = phi float [ %1020, %988 ], [ %1032, %1023 ]
  %1027 = getelementptr [4 x float], [4 x float]* %39, i32 0, i32 %1024
  %1028 = load float, float* %1027, align 4, !tbaa !73, !noalias !63
  %1029 = fsub fast float %1028, %914
  %1030 = fcmp fast olt float %1029, 0.000000e+00
  %1031 = select i1 %1030, float 0.000000e+00, float 1.000000e+00
  %1032 = fadd fast float %1031, %1026
  %1033 = fmul fast float %1031, %1029
  %1034 = fadd fast float %1033, %1025
  %1035 = add nuw nsw i32 %1024, 1
  %1036 = icmp eq i32 %1035, 4
  br i1 %1036, label %1037, label %1023, !llvm.loop !75

; <label>:1037                                    ; preds = %1023
  %1038 = add nuw nsw i32 %991, 1
  %1039 = icmp eq i32 %1038, 8
  br i1 %1039, label %1040, label %988, !llvm.loop !77

; <label>:1040                                    ; preds = %1037
  %1041 = fdiv fast float 1.000000e+00, %1032
  %1042 = fmul fast float %1041, %1034
  %1043 = fdiv fast float 1.000000e+00, %914
  %1044 = fmul fast float %1042, %1043
  %1045 = call float @dx.op.unary.f32(i32 7, float %1044)  ; Saturate(value)
  %1046 = call float @dx.op.binary.f32(i32 35, float %1045, float 0.000000e+00)  ; FMax(a,b)
  %1047 = fmul fast float %1032, 3.125000e-02
  %1048 = call float @dx.op.unary.f32(i32 7, float %1047)  ; Saturate(value)
  %1049 = fmul fast float %1048, 2.000000e+00
  %1050 = fadd fast float %1049, -1.000000e+00
  %1051 = fcmp fast ogt float %1050, 0.000000e+00
  %1052 = fcmp fast olt float %1050, 0.000000e+00
  %1053 = zext i1 %1051 to i32
  %1054 = zext i1 %1052 to i32
  %1055 = sub nsw i32 %1053, %1054
  %1056 = sitofp i32 %1055 to float
  %1057 = fmul fast float %1056, %1050
  %1058 = fsub fast float 1.000000e+00, %1057
  %1059 = fmul fast float %1058, %1058
  %1060 = fmul fast float %1059, %1058
  %1061 = fsub fast float %1058, %1060
  %1062 = fmul fast float %1061, %1046
  %1063 = fsub fast float 1.000000e+00, %1060
  %1064 = fsub fast float %1063, %1062
  %1065 = fmul fast float %1056, 5.000000e-01
  %1066 = fmul fast float %1065, %1064
  %1067 = fsub fast float 5.000000e-01, %1066
  br label %1068

; <label>:1068                                    ; preds = %1040, %916, %903
  %1069 = phi float [ 1.000000e+00, %903 ], [ %982, %916 ], [ %1067, %1040 ]
  %1070 = fsub fast float %1069, %904
  %1071 = fmul fast float %1070, %501
  %1072 = fadd fast float %1071, %904
  br label %1073

; <label>:1073                                    ; preds = %1068, %408
  %1074 = phi float [ %1072, %1068 ], [ 1.000000e+00, %408 ]
  %1075 = call float @dx.op.binary.f32(i32 36, float %1074, float %1074)  ; FMin(a,b)
  %1076 = call float @dx.op.binary.f32(i32 36, float %1074, float %1075)  ; FMin(a,b)
  %1077 = fcmp fast ogt float %1076, 0.000000e+00
  br i1 %1077, label %1078, label %1243, !dx.controlflow.hints !78

; <label>:1078                                    ; preds = %1073
  %1079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %1080 = extractvalue %dx.types.CBufRet.f32 %1079, 0
  %1081 = extractvalue %dx.types.CBufRet.f32 %1079, 1
  %1082 = extractvalue %dx.types.CBufRet.f32 %1079, 2
  %1083 = extractvalue %dx.types.CBufRet.f32 %1079, 3
  %1084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %1085 = extractvalue %dx.types.CBufRet.f32 %1084, 0
  %1086 = extractvalue %dx.types.CBufRet.f32 %1084, 1
  %1087 = extractvalue %dx.types.CBufRet.f32 %1084, 2
  %1088 = extractvalue %dx.types.CBufRet.f32 %1084, 3
  %1089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %1090 = extractvalue %dx.types.CBufRet.f32 %1089, 0
  %1091 = extractvalue %dx.types.CBufRet.f32 %1089, 1
  %1092 = extractvalue %dx.types.CBufRet.f32 %1089, 2
  %1093 = extractvalue %dx.types.CBufRet.f32 %1089, 3
  %1094 = fmul fast float %1080, %293
  %1095 = call float @dx.op.tertiary.f32(i32 46, float %294, float %1081, float %1094)  ; FMad(a,b,c)
  %1096 = call float @dx.op.tertiary.f32(i32 46, float %295, float %1082, float %1095)  ; FMad(a,b,c)
  %1097 = fadd fast float %1096, %1083
  %1098 = fmul fast float %1085, %293
  %1099 = call float @dx.op.tertiary.f32(i32 46, float %294, float %1086, float %1098)  ; FMad(a,b,c)
  %1100 = call float @dx.op.tertiary.f32(i32 46, float %295, float %1087, float %1099)  ; FMad(a,b,c)
  %1101 = fadd fast float %1100, %1088
  %1102 = fmul fast float %1090, %293
  %1103 = call float @dx.op.tertiary.f32(i32 46, float %294, float %1091, float %1102)  ; FMad(a,b,c)
  %1104 = call float @dx.op.tertiary.f32(i32 46, float %295, float %1092, float %1103)  ; FMad(a,b,c)
  %1105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %1106 = extractvalue %dx.types.CBufRet.f32 %1105, 0
  %1107 = extractvalue %dx.types.CBufRet.f32 %1105, 1
  %1108 = extractvalue %dx.types.CBufRet.f32 %1105, 3
  %1109 = fmul fast float %1108, %1097
  %1110 = fmul fast float %1108, %1101
  %1111 = fadd fast float %1109, %1106
  %1112 = fadd fast float %1110, %1107
  %1113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %1114 = extractvalue %dx.types.CBufRet.f32 %1113, 0
  %1115 = extractvalue %dx.types.CBufRet.f32 %1113, 1
  %1116 = fsub fast float %1111, %1114
  %1117 = fsub fast float %1112, %1115
  %1118 = fcmp fast olt float %1116, 0.000000e+00
  %1119 = fcmp fast olt float %1117, 0.000000e+00
  %1120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %1121 = extractvalue %dx.types.CBufRet.f32 %1120, 0
  %1122 = extractvalue %dx.types.CBufRet.f32 %1120, 1
  %1123 = extractvalue %dx.types.CBufRet.f32 %1120, 2
  %1124 = extractvalue %dx.types.CBufRet.f32 %1120, 3
  %1125 = select i1 %1118, float %1121, float %1123
  %1126 = select i1 %1119, float %1122, float %1124
  %1127 = fmul fast float %1125, %1116
  %1128 = fmul fast float %1126, %1117
  %1129 = call float @dx.op.unary.f32(i32 6, float %1127)  ; FAbs(value)
  %1130 = call float @dx.op.unary.f32(i32 6, float %1128)  ; FAbs(value)
  %1131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %1132 = extractvalue %dx.types.CBufRet.f32 %1131, 0
  %1133 = call float @dx.op.binary.f32(i32 35, float %1129, float %1130)  ; FMax(a,b)
  %1134 = fsub fast float %1132, %1133
  %1135 = call float @dx.op.unary.f32(i32 7, float %1134)  ; Saturate(value)
  %1136 = fcmp fast ogt float %1135, 0.000000e+00
  br i1 %1136, label %1137, label %1178, !dx.controlflow.hints !79

; <label>:1137                                    ; preds = %1078
  %1138 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %25, float %1111, float %1112, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1139 = extractvalue %dx.types.ResRet.f32 %1138, 1
  %1140 = fcmp fast ogt float %1139, 0.000000e+00
  br i1 %1140, label %1141, label %1173, !dx.controlflow.hints !80

; <label>:1141                                    ; preds = %1137
  %1142 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %25, float %1111, float %1112, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1143 = extractvalue %dx.types.ResRet.f32 %1142, 0
  %1144 = extractvalue %dx.types.ResRet.f32 %1142, 1
  %1145 = extractvalue %dx.types.ResRet.f32 %1142, 2
  %1146 = extractvalue %dx.types.ResRet.f32 %1142, 3
  %1147 = fsub fast float 1.000000e+00, %1093
  %1148 = fsub fast float %1147, %1104
  %1149 = fmul fast float %1148, 0x400921FB60000000
  %1150 = fadd fast float %1149, 0x3FF921FB60000000
  %1151 = call float @dx.op.unary.f32(i32 13, float %1150)  ; Sin(value)
  %1152 = fadd fast float %1151, -1.000000e+00
  %1153 = fmul fast float %1152, 0x3FD45F3060000000
  %1154 = fmul fast float %1148, 0x401921FB60000000
  %1155 = fadd fast float %1154, 0x400921FB60000000
  %1156 = call float @dx.op.unary.f32(i32 13, float %1155)  ; Sin(value)
  %1157 = fadd fast float %1156, 0x3E7777A5C0000000
  %1158 = fmul fast float %1157, 0x3FC45F3060000000
  %1159 = fmul fast float %1148, 0x4022D97C80000000
  %1160 = fadd fast float %1159, 0x4012D97C80000000
  %1161 = call float @dx.op.unary.f32(i32 13, float %1160)  ; Sin(value)
  %1162 = fadd fast float %1161, 1.000000e+00
  %1163 = fmul fast float %1162, 0x3FBB2995E0000000
  %1164 = fmul fast float %1148, 0x402921FB60000000
  %1165 = fadd fast float %1164, 0x401921FB60000000
  %1166 = call float @dx.op.unary.f32(i32 13, float %1165)  ; Sin(value)
  %1167 = fadd fast float %1166, 0xBE8777A5C0000000
  %1168 = fmul fast float %1167, 0x3FB45F3060000000
  %1169 = call float @dx.op.dot4.f32(i32 56, float %1143, float %1144, float %1145, float %1146, float %1153, float %1158, float %1163, float %1168)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1170 = fmul fast float %1169, 0xBFF7154760000000
  %1171 = call float @dx.op.unary.f32(i32 21, float %1170)  ; Exp(value)
  %1172 = call float @dx.op.unary.f32(i32 7, float %1171)  ; Saturate(value)
  br label %1173

; <label>:1173                                    ; preds = %1141, %1137
  %1174 = phi float [ %1172, %1141 ], [ 1.000000e+00, %1137 ]
  %1175 = fadd fast float %1174, -1.000000e+00
  %1176 = fmul fast float %1175, %1135
  %1177 = fadd fast float %1176, 1.000000e+00
  br label %1178

; <label>:1178                                    ; preds = %1173, %1078
  %1179 = phi float [ %1177, %1173 ], [ 1.000000e+00, %1078 ]
  %1180 = fmul fast float %1179, %1074
  %1181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1182 = extractvalue %dx.types.CBufRet.f32 %1181, 0
  %1183 = extractvalue %dx.types.CBufRet.f32 %1181, 1
  %1184 = extractvalue %dx.types.CBufRet.f32 %1181, 2
  %1185 = fadd fast float %1182, %293
  %1186 = fadd fast float %1183, %294
  %1187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %1188 = extractvalue %dx.types.CBufRet.f32 %1187, 1
  %1189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1190 = extractvalue %dx.types.CBufRet.f32 %1189, 0
  %1191 = extractvalue %dx.types.CBufRet.f32 %1189, 1
  %1192 = extractvalue %dx.types.CBufRet.f32 %1189, 2
  %1193 = fsub fast float -0.000000e+00, %1185
  %1194 = fsub fast float -0.000000e+00, %1186
  %1195 = fsub fast float %296, %1184
  %1196 = fadd fast float %1195, %1188
  %1197 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1193, float %1194, float %1196)  ; Dot3(ax,ay,az,bx,by,bz)
  %1198 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1190, float %1191, float %1192)  ; Dot3(ax,ay,az,bx,by,bz)
  %1199 = fdiv fast float 1.000000e+00, %1198
  %1200 = fmul fast float %1199, %1197
  %1201 = fmul fast float %1190, %1200
  %1202 = fmul fast float %1191, %1200
  %1203 = fadd fast float %1201, %1185
  %1204 = fadd fast float %1202, %1186
  %1205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %1206 = extractvalue %dx.types.CBufRet.f32 %1205, 0
  %1207 = extractvalue %dx.types.CBufRet.f32 %1205, 1
  %1208 = fsub fast float %1203, %1206
  %1209 = fsub fast float %1204, %1207
  %1210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %1211 = extractvalue %dx.types.CBufRet.f32 %1210, 2
  %1212 = extractvalue %dx.types.CBufRet.f32 %1210, 3
  %1213 = fmul fast float %1208, %1211
  %1214 = fmul fast float %1209, %1212
  %1215 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %1216 = extractvalue %dx.types.CBufRet.i32 %1215, 3
  %1217 = icmp eq i32 %1216, 0
  br i1 %1217, label %1223, label %1218, !dx.controlflow.hints !81

; <label>:1218                                    ; preds = %1178
  %1219 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %24, float %1213, float %1214, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1220 = extractvalue %dx.types.ResRet.f32 %1219, 0
  %1221 = extractvalue %dx.types.ResRet.f32 %1219, 1
  %1222 = extractvalue %dx.types.ResRet.f32 %1219, 2
  br label %1228

; <label>:1223                                    ; preds = %1178
  %1224 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %25, float %1213, float %1214, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1225 = extractvalue %dx.types.ResRet.f32 %1224, 0
  %1226 = extractvalue %dx.types.ResRet.f32 %1224, 1
  %1227 = extractvalue %dx.types.ResRet.f32 %1224, 2
  br label %1228

; <label>:1228                                    ; preds = %1223, %1218
  %1229 = phi float [ %1220, %1218 ], [ %1225, %1223 ]
  %1230 = phi float [ %1221, %1218 ], [ %1226, %1223 ]
  %1231 = phi float [ %1222, %1218 ], [ %1227, %1223 ]
  %1232 = extractvalue %dx.types.CBufRet.f32 %1187, 2
  %1233 = fmul fast float %1232, %1229
  %1234 = extractvalue %dx.types.CBufRet.f32 %1187, 0
  %1235 = fsub fast float %1200, %1234
  %1236 = fsub fast float %1235, %1233
  %1237 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1236)  ; FMax(a,b)
  %1238 = fmul fast float %1237, %1230
  %1239 = call float @dx.op.binary.f32(i32 36, float %1231, float %1238)  ; FMin(a,b)
  %1240 = fmul fast float %1239, 0xBFF7154760000000
  %1241 = call float @dx.op.unary.f32(i32 21, float %1240)  ; Exp(value)
  %1242 = fmul fast float %1180, %1241
  br label %1243

; <label>:1243                                    ; preds = %1228, %1073
  %1244 = phi float [ %1242, %1228 ], [ %1074, %1073 ]
  %1245 = call float @dx.op.binary.f32(i32 36, float %1244, float %1244)  ; FMin(a,b)
  %1246 = call float @dx.op.binary.f32(i32 36, float %1244, float %1245)  ; FMin(a,b)
  %1247 = fcmp fast ogt float %1246, 0.000000e+00
  br i1 %1247, label %1248, label %1377, !dx.controlflow.hints !82

; <label>:1248                                    ; preds = %1243
  %1249 = icmp eq i32 %404, 0
  br i1 %1249, label %1327, label %1250, !dx.controlflow.hints !83

; <label>:1250                                    ; preds = %1248
  %1251 = fsub fast float %295, %403
  %1252 = fcmp fast ogt float %1251, 0.000000e+00
  %1253 = fmul fast float %409, 5.120000e+02
  %1254 = fmul fast float %410, 5.120000e+02
  %1255 = fmul fast float %411, 5.120000e+02
  %1256 = fadd fast float %1255, %295
  %1257 = fsub fast float %403, %1256
  %1258 = fmul fast float %1257, 2.000000e+00
  %1259 = fadd fast float %1258, %1256
  %1260 = select i1 %1252, float %1259, float %1256
  %1261 = fsub fast float %1260, %295
  %1262 = call float @dx.op.dot3.f32(i32 55, float %1253, float %1254, float %1261, float %1253, float %1254, float %1261)  ; Dot3(ax,ay,az,bx,by,bz)
  %1263 = call float @dx.op.unary.f32(i32 25, float %1262)  ; Rsqrt(value)
  %1264 = fmul fast float %1263, %1253
  %1265 = fmul fast float %1263, %1254
  %1266 = fmul fast float %1263, %1261
  %1267 = fsub fast float %403, %295
  %1268 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %1267)  ; Dot3(ax,ay,az,bx,by,bz)
  %1269 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1264, float %1265, float %1266)  ; Dot3(ax,ay,az,bx,by,bz)
  %1270 = fdiv fast float 1.000000e+00, %1269
  %1271 = fmul fast float %1270, %1268
  %1272 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %1251, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1273 = fcmp fast ogt float %1272, 0.000000e+00
  %1274 = fcmp fast olt float %1272, 0.000000e+00
  %1275 = zext i1 %1273 to i32
  %1276 = zext i1 %1274 to i32
  %1277 = sub nsw i32 %1275, %1276
  %1278 = sitofp i32 %1277 to float
  %1279 = fsub fast float %1260, %403
  %1280 = call float @dx.op.dot3.f32(i32 55, float %1253, float %1254, float %1279, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1281 = fcmp fast ogt float %1280, 0.000000e+00
  %1282 = fcmp fast olt float %1280, 0.000000e+00
  %1283 = zext i1 %1281 to i32
  %1284 = zext i1 %1282 to i32
  %1285 = sub nsw i32 %1283, %1284
  %1286 = sitofp i32 %1285 to float
  %1287 = fcmp fast une float %1278, %1286
  br i1 %1287, label %1288, label %1298, !dx.controlflow.hints !84

; <label>:1288                                    ; preds = %1250
  %1289 = fmul fast float %1271, %1266
  %1290 = fmul fast float %1271, %1265
  %1291 = fmul fast float %1271, %1264
  %1292 = fmul fast float %1291, %1291
  %1293 = fmul fast float %1290, %1290
  %1294 = fadd fast float %1292, %1293
  %1295 = fmul fast float %1289, %1289
  %1296 = fadd fast float %1294, %1295
  %1297 = call float @dx.op.unary.f32(i32 24, float %1296)  ; Sqrt(value)
  br label %1308

; <label>:1298                                    ; preds = %1250
  %1299 = icmp slt i32 %1277, 0
  br i1 %1299, label %1300, label %1308, !dx.controlflow.hints !85

; <label>:1300                                    ; preds = %1298
  %1301 = fsub fast float %295, %1260
  %1302 = fmul fast float %1253, %1253
  %1303 = fmul fast float %1254, %1254
  %1304 = fadd fast float %1302, %1303
  %1305 = fmul fast float %1301, %1301
  %1306 = fadd fast float %1304, %1305
  %1307 = call float @dx.op.unary.f32(i32 24, float %1306)  ; Sqrt(value)
  br label %1308

; <label>:1308                                    ; preds = %1300, %1298, %1288
  %1309 = phi float [ %1297, %1288 ], [ %1307, %1300 ], [ 0.000000e+00, %1298 ]
  %1310 = fsub fast float -0.000000e+00, %1309
  %1311 = select i1 %1252, float -0.000000e+00, float %1310
  %1312 = fmul fast float %400, 0x3FF7154760000000
  %1313 = fmul fast float %1312, %1311
  %1314 = fmul fast float %401, 0x3FF7154760000000
  %1315 = fmul fast float %1314, %1311
  %1316 = fmul fast float %402, 0x3FF7154760000000
  %1317 = fmul fast float %1316, %1311
  %1318 = call float @dx.op.unary.f32(i32 21, float %1313)  ; Exp(value)
  %1319 = call float @dx.op.unary.f32(i32 21, float %1315)  ; Exp(value)
  %1320 = call float @dx.op.unary.f32(i32 21, float %1317)  ; Exp(value)
  %1321 = call float @dx.op.unary.f32(i32 7, float %1318)  ; Saturate(value)
  %1322 = call float @dx.op.unary.f32(i32 7, float %1319)  ; Saturate(value)
  %1323 = call float @dx.op.unary.f32(i32 7, float %1320)  ; Saturate(value)
  %1324 = fmul fast float %1321, %420
  %1325 = fmul fast float %1322, %421
  %1326 = fmul fast float %1323, %422
  br label %1327

; <label>:1327                                    ; preds = %1308, %1248
  %1328 = phi float [ %1324, %1308 ], [ %420, %1248 ]
  %1329 = phi float [ %1325, %1308 ], [ %421, %1248 ]
  %1330 = phi float [ %1326, %1308 ], [ %422, %1248 ]
  %1331 = fmul fast float %1328, %1244
  %1332 = fmul fast float %1329, %1244
  %1333 = fmul fast float %1330, %1244
  br i1 %115, label %1334, label %1362, !dx.controlflow.hints !86

; <label>:1334                                    ; preds = %1327
  br i1 %117, label %1335, label %1358, !dx.controlflow.hints !87

; <label>:1335                                    ; preds = %1334
  %1336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1337 = extractvalue %dx.types.CBufRet.f32 %1336, 0
  %1338 = extractvalue %dx.types.CBufRet.f32 %1336, 1
  %1339 = fmul fast float %1338, 0x3FE5555560000000
  %1340 = fmul fast float %410, 0xBFF88F51C0000000
  %1341 = fmul fast float %411, 0x3FF88F51C0000000
  %1342 = fmul fast float %409, 0xBFF88F51C0000000
  %1343 = fmul fast float %1337, 0x3FEC5BF8C0000000
  %1344 = fmul fast float %1340, %1339
  %1345 = fmul fast float %1341, %1339
  %1346 = fmul fast float %1342, %1339
  %1347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1348 = extractvalue %dx.types.CBufRet.f32 %1347, 1
  %1349 = fmul fast float %1348, 0x3FDF454380000000
  %1350 = extractvalue %dx.types.CBufRet.f32 %1347, 2
  %1351 = fmul fast float %1350, 0xBFDF454380000000
  %1352 = extractvalue %dx.types.CBufRet.f32 %1347, 0
  %1353 = fmul fast float %1352, 0x3FDF454380000000
  %1354 = call float @dx.op.dot4.f32(i32 56, float %1343, float %1344, float %1345, float %1346, float 0x3FD20DD760000000, float %1349, float %1351, float %1353)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1355 = fmul fast float %1354, %1331
  %1356 = fmul fast float %1354, %1332
  %1357 = fmul fast float %1354, %1333
  br label %1377

; <label>:1358                                    ; preds = %1334
  %1359 = fmul fast float %1331, 0x3FE921FB60000000
  %1360 = fmul fast float %1332, 0x3FE921FB60000000
  %1361 = fmul fast float %1333, 0x3FE921FB60000000
  br label %1377

; <label>:1362                                    ; preds = %1327
  %1363 = call float @dx.op.dot3.f32(i32 55, float %409, float %410, float %411, float %301, float %302, float %303)  ; Dot3(ax,ay,az,bx,by,bz)
  %1364 = fcmp fast ogt float %159, 0.000000e+00
  %1365 = select i1 %1364, float 1.000000e+00, float -1.000000e+00
  %1366 = fmul fast float %1365, 5.000000e-01
  %1367 = fmul fast float %1366, %1363
  %1368 = fmul fast float %1365, %159
  %1369 = fadd fast float %1367, 4.921875e-01
  %1370 = fadd fast float %1368, -3.125000e-02
  %1371 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %25, float %1369, float 0x3FB25F3060000000, float %1370, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1372 = extractvalue %dx.types.ResRet.f32 %1371, 0
  %1373 = fmul fast float %1372, 0x400921FB60000000
  %1374 = fmul fast float %1373, %1331
  %1375 = fmul fast float %1373, %1332
  %1376 = fmul fast float %1373, %1333
  br label %1377

; <label>:1377                                    ; preds = %1362, %1358, %1335, %1243, %399
  %1378 = phi float [ 0.000000e+00, %399 ], [ 0.000000e+00, %1243 ], [ %1355, %1335 ], [ %1359, %1358 ], [ %1374, %1362 ]
  %1379 = phi float [ 0.000000e+00, %399 ], [ 0.000000e+00, %1243 ], [ %1356, %1335 ], [ %1360, %1358 ], [ %1375, %1362 ]
  %1380 = phi float [ 0.000000e+00, %399 ], [ 0.000000e+00, %1243 ], [ %1357, %1335 ], [ %1361, %1358 ], [ %1376, %1362 ]
  %1381 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1382 = extractvalue %dx.types.CBufRet.i32 %1381, 0
  %1383 = icmp eq i32 %1382, 0
  br i1 %1383, label %1824, label %1384, !dx.controlflow.hints !88

; <label>:1384                                    ; preds = %1377
  %1385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %1386 = extractvalue %dx.types.CBufRet.f32 %1385, 2
  %1387 = extractvalue %dx.types.CBufRet.f32 %1385, 3
  %1388 = fmul fast float %1386, %256
  %1389 = fmul fast float %1387, %257
  %1390 = fptoui float %1388 to i32
  %1391 = fptoui float %1389 to i32
  %1392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1393 = extractvalue %dx.types.CBufRet.f32 %1392, 0
  %1394 = extractvalue %dx.types.CBufRet.f32 %1392, 2
  %1395 = extractvalue %dx.types.CBufRet.f32 %1392, 3
  %1396 = fadd fast float %260, -4.000000e+00
  %1397 = call float @dx.op.binary.f32(i32 35, float %1396, float 0.000000e+00)  ; FMax(a,b)
  %1398 = fadd fast float %1397, %1393
  %1399 = fmul fast float %1398, %1394
  %1400 = call float @dx.op.unary.f32(i32 23, float %1399)  ; Log(value)
  %1401 = fmul fast float %1400, %1395
  %1402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1403 = extractvalue %dx.types.CBufRet.f32 %1402, 2
  %1404 = fmul fast float %1401, %1403
  %1405 = call float @dx.op.unary.f32(i32 7, float %1404)  ; Saturate(value)
  %1406 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1407 = extractvalue %dx.types.CBufRet.i32 %1406, 1
  %1408 = add i32 %1407, -1
  %1409 = uitofp i32 %1407 to float
  %1410 = fmul fast float %1409, %1405
  %1411 = fptoui float %1410 to i32
  %1412 = call i32 @dx.op.binary.i32(i32 40, i32 %1411, i32 %1408)  ; UMin(a,b)
  %1413 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %1414 = extractvalue %dx.types.CBufRet.i32 %1413, 2
  %1415 = extractvalue %dx.types.CBufRet.i32 %1413, 3
  %1416 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1391, i32 %1414, i32 %1390)  ; UMad(a,b,c)
  %1417 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1412, i32 %1415, i32 %1416)  ; UMad(a,b,c)
  %1418 = add nsw i32 %1382, -1
  %1419 = call i32 @dx.op.binary.i32(i32 37, i32 %1418, i32 0)  ; IMax(a,b)
  br label %1420

; <label>:1420                                    ; preds = %1817, %1384
  %1421 = phi float [ %1378, %1384 ], [ %1818, %1817 ]
  %1422 = phi float [ %1379, %1384 ], [ %1819, %1817 ]
  %1423 = phi float [ %1380, %1384 ], [ %1820, %1817 ]
  %1424 = phi i32 [ 0, %1384 ], [ %1821, %1817 ]
  %1425 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1426 = extractvalue %dx.types.CBufRet.i32 %1425, 0
  %1427 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1417, i32 %1426, i32 %1424)  ; UMad(a,b,c)
  %1428 = shl i32 %1427, 2
  %1429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %1428, i32 undef)  ; BufferLoad(srv,index,wot)
  %1430 = extractvalue %dx.types.ResRet.i32 %1429, 0
  %1431 = icmp eq i32 %1430, 0
  br i1 %1431, label %1817, label %1432

; <label>:1432                                    ; preds = %1420
  br label %1433

; <label>:1433                                    ; preds = %1597, %1432
  %1434 = phi float [ %1598, %1597 ], [ %1421, %1432 ]
  %1435 = phi float [ %1599, %1597 ], [ %1422, %1432 ]
  %1436 = phi float [ %1600, %1597 ], [ %1423, %1432 ]
  %1437 = phi i32 [ %1443, %1597 ], [ %1430, %1432 ]
  %1438 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1437)  ; FirstbitLo(value)
  %1439 = shl i32 %1424, 5
  %1440 = add i32 %1438, %1439
  %1441 = and i32 %1438, 31
  %1442 = shl i32 1, %1441
  %1443 = xor i32 %1442, %1437
  %1444 = mul i32 %1440, 112
  %1445 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %1444, i32 undef)  ; BufferLoad(srv,index,wot)
  %1446 = extractvalue %dx.types.ResRet.f32 %1445, 0
  %1447 = extractvalue %dx.types.ResRet.f32 %1445, 1
  %1448 = extractvalue %dx.types.ResRet.f32 %1445, 2
  %1449 = or i32 %1444, 12
  %1450 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %1449, i32 undef)  ; BufferLoad(srv,index,wot)
  %1451 = extractvalue %dx.types.ResRet.f32 %1450, 0
  %1452 = add i32 %1444, 16
  %1453 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %1452, i32 undef)  ; BufferLoad(srv,index,wot)
  %1454 = extractvalue %dx.types.ResRet.f32 %1453, 0
  %1455 = extractvalue %dx.types.ResRet.f32 %1453, 1
  %1456 = extractvalue %dx.types.ResRet.f32 %1453, 2
  %1457 = add i32 %1444, 28
  %1458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %1457, i32 undef)  ; BufferLoad(srv,index,wot)
  %1459 = extractvalue %dx.types.ResRet.i32 %1458, 0
  %1460 = add i32 %1444, 32
  %1461 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %1460, i32 undef)  ; BufferLoad(srv,index,wot)
  %1462 = extractvalue %dx.types.ResRet.f32 %1461, 0
  %1463 = extractvalue %dx.types.ResRet.f32 %1461, 1
  %1464 = extractvalue %dx.types.ResRet.f32 %1461, 2
  %1465 = add i32 %1444, 44
  %1466 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %1465, i32 undef)  ; BufferLoad(srv,index,wot)
  %1467 = extractvalue %dx.types.ResRet.f32 %1466, 0
  %1468 = add i32 %1444, 48
  %1469 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %1468, i32 undef)  ; BufferLoad(srv,index,wot)
  %1470 = extractvalue %dx.types.ResRet.f32 %1469, 0
  %1471 = extractvalue %dx.types.ResRet.f32 %1469, 1
  %1472 = extractvalue %dx.types.ResRet.f32 %1469, 2
  %1473 = extractvalue %dx.types.ResRet.f32 %1469, 3
  %1474 = add i32 %1444, 64
  %1475 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %1474, i32 undef)  ; BufferLoad(srv,index,wot)
  %1476 = extractvalue %dx.types.ResRet.f32 %1475, 0
  %1477 = extractvalue %dx.types.ResRet.f32 %1475, 1
  %1478 = extractvalue %dx.types.ResRet.f32 %1475, 2
  %1479 = extractvalue %dx.types.ResRet.f32 %1475, 3
  %1480 = add i32 %1444, 80
  %1481 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %1480, i32 undef)  ; BufferLoad(srv,index,wot)
  %1482 = extractvalue %dx.types.ResRet.f32 %1481, 1
  %1483 = extractvalue %dx.types.ResRet.f32 %1481, 2
  %1484 = add i32 %1444, 92
  %1485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %1484, i32 undef)  ; BufferLoad(srv,index,wot)
  %1486 = extractvalue %dx.types.ResRet.i32 %1485, 0
  %1487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %1488 = extractvalue %dx.types.CBufRet.f32 %1487, 2
  %1489 = lshr i32 %1459, 16
  %1490 = and i32 %1489, 255
  %1491 = uitofp i32 %1490 to float
  %1492 = fmul fast float %1491, 0x3F70101020000000
  %1493 = fmul fast float %1492, %1446
  %1494 = fmul fast float %1492, %1447
  %1495 = fmul fast float %1492, %1448
  %1496 = fmul fast float %1488, %1482
  %1497 = call float @dx.op.dot3.f32(i32 55, float %1493, float %1494, float %1495, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1498 = select i1 %310, float %1496, float %1493
  %1499 = select i1 %310, float %1497, float %1494
  %1500 = select i1 %310, float %1483, float %1495
  %1501 = and i32 %1486, 65535
  %1502 = uitofp i32 %1501 to float
  %1503 = lshr i32 %1486, 16
  %1504 = uitofp i32 %1503 to float
  %1505 = and i32 %1459, 65535
  %1506 = and i32 %1459, 50331648
  %1507 = icmp eq i32 %1506, 33554432
  %1508 = call float @dx.op.dot3.f32(i32 55, float %1462, float %1463, float %1464, float %1462, float %1463, float %1464)  ; Dot3(ax,ay,az,bx,by,bz)
  %1509 = fsub fast float %293, %1470
  %1510 = fsub fast float %294, %1471
  %1511 = fsub fast float %295, %1472
  %1512 = call float @dx.op.dot3.f32(i32 55, float %1509, float %1510, float %1511, float %1462, float %1463, float %1464)  ; Dot3(ax,ay,az,bx,by,bz)
  %1513 = fdiv fast float %1512, %1508
  %1514 = call float @dx.op.binary.f32(i32 35, float %1513, float -1.000000e+00)  ; FMax(a,b)
  %1515 = call float @dx.op.binary.f32(i32 36, float %1514, float 1.000000e+00)  ; FMin(a,b)
  %1516 = fmul fast float %1515, %1462
  %1517 = fmul fast float %1515, %1463
  %1518 = fmul fast float %1515, %1464
  %1519 = fadd fast float %1516, %1470
  %1520 = fadd fast float %1517, %1471
  %1521 = fadd fast float %1518, %1472
  %1522 = fsub fast float %1519, %293
  %1523 = fsub fast float %1520, %294
  %1524 = fsub fast float %1521, %295
  %1525 = call float @dx.op.dot3.f32(i32 55, float %1522, float %1523, float %1524, float %1522, float %1523, float %1524)  ; Dot3(ax,ay,az,bx,by,bz)
  %1526 = call float @dx.op.unary.f32(i32 24, float %1525)  ; Sqrt(value)
  %1527 = fdiv fast float 1.000000e+00, %1526
  %1528 = fmul fast float %1522, %1527
  %1529 = fmul fast float %1523, %1527
  %1530 = fmul fast float %1524, %1527
  %1531 = fadd fast float %1526, %1451
  %1532 = fdiv fast float 1.000000e+00, %1531
  %1533 = fmul float %1467, %1532
  %1534 = fmul float %1533, %1533
  %1535 = call float @dx.op.unary.f32(i32 7, float %1534)  ; Saturate(value)
  br i1 %1507, label %1536, label %1560, !dx.controlflow.hints !89

; <label>:1536                                    ; preds = %1433
  %1537 = fmul fast float %1478, %1454
  %1538 = fmul fast float %1478, %1455
  %1539 = fmul fast float %1478, %1456
  %1540 = fsub fast float %1537, %293
  %1541 = fadd fast float %1540, %1519
  %1542 = fsub fast float %1538, %294
  %1543 = fadd fast float %1542, %1520
  %1544 = fsub fast float %1539, %295
  %1545 = fadd fast float %1544, %1521
  %1546 = call float @dx.op.dot3.f32(i32 55, float %1541, float %1543, float %1545, float %1541, float %1543, float %1545)  ; Dot3(ax,ay,az,bx,by,bz)
  %1547 = call float @dx.op.unary.f32(i32 25, float %1546)  ; Rsqrt(value)
  %1548 = fmul fast float %1547, %1541
  %1549 = fmul fast float %1547, %1543
  %1550 = fmul fast float %1547, %1545
  %1551 = fsub fast float %293, %1519
  %1552 = fsub fast float %294, %1520
  %1553 = fsub fast float %295, %1521
  %1554 = fsub fast float -0.000000e+00, %1551
  %1555 = fsub fast float -0.000000e+00, %1552
  %1556 = fsub fast float -0.000000e+00, %1553
  %1557 = call float @dx.op.dot3.f32(i32 55, float %1554, float %1555, float %1556, float %1454, float %1455, float %1456)  ; Dot3(ax,ay,az,bx,by,bz)
  %1558 = fcmp fast ogt float %1557, 0.000000e+00
  %1559 = uitofp i1 %1558 to float
  br label %1560

; <label>:1560                                    ; preds = %1536, %1433
  %1561 = phi float [ %1559, %1536 ], [ 1.000000e+00, %1433 ]
  %1562 = phi float [ %1548, %1536 ], [ %1528, %1433 ]
  %1563 = phi float [ %1549, %1536 ], [ %1529, %1433 ]
  %1564 = phi float [ %1550, %1536 ], [ %1530, %1433 ]
  %1565 = call float @dx.op.dot3.f32(i32 55, float %1454, float %1455, float %1456, float %1562, float %1563, float %1564)  ; Dot3(ax,ay,az,bx,by,bz)
  %1566 = fmul fast float %1565, %1565
  %1567 = call float @dx.op.unary.f32(i32 7, float %1566)  ; Saturate(value)
  %1568 = fsub fast float 1.000000e+00, %1567
  %1569 = fmul fast float %1568, 5.000000e-01
  %1570 = fcmp fast ogt float %1565, 0.000000e+00
  %1571 = fsub fast float 1.000000e+00, %1569
  %1572 = select i1 %1570, float %1569, float %1571
  %1573 = fmul fast float %1572, %1504
  %1574 = fadd fast float %1573, %1502
  %1575 = fmul fast float %1574, 0x3EF0001000000000
  %1576 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %25, float %1575, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1577 = extractvalue %dx.types.ResRet.f32 %1576, 0
  %1578 = fmul fast float %1565, %1476
  %1579 = fadd fast float %1578, %1477
  %1580 = call float @dx.op.unary.f32(i32 7, float %1579)  ; Saturate(value)
  %1581 = select i1 %1507, float 1.000000e+00, float %1580
  %1582 = select i1 %1507, float %1580, float 1.000000e+00
  %1583 = fmul fast float %1526, %1473
  %1584 = fsub fast float 1.000000e+00, %1583
  %1585 = fmul fast float %1584, %1479
  %1586 = call float @dx.op.unary.f32(i32 7, float %1585)  ; Saturate(value)
  %1587 = fmul fast float %1586, %1582
  %1588 = fmul fast float %1587, 2.000000e+00
  %1589 = fsub fast float 3.000000e+00, %1588
  %1590 = fmul fast float %1577, %1561
  %1591 = fmul fast float %1587, %1587
  %1592 = fmul fast float %1591, %1590
  %1593 = fmul fast float %1592, %1589
  %1594 = call float @dx.op.binary.f32(i32 36, float %1593, float %1593)  ; FMin(a,b)
  %1595 = call float @dx.op.binary.f32(i32 36, float %1593, float %1594)  ; FMin(a,b)
  %1596 = fcmp fast ogt float %1595, 0.000000e+00
  br i1 %1596, label %1602, label %1597, !dx.controlflow.hints !90

; <label>:1597                                    ; preds = %1808, %1679, %1560
  %1598 = phi float [ %1813, %1808 ], [ %1434, %1679 ], [ %1434, %1560 ]
  %1599 = phi float [ %1814, %1808 ], [ %1435, %1679 ], [ %1435, %1560 ]
  %1600 = phi float [ %1815, %1808 ], [ %1436, %1679 ], [ %1436, %1560 ]
  %1601 = icmp eq i32 %1437, %1442
  br i1 %1601, label %1816, label %1433

; <label>:1602                                    ; preds = %1560
  %1603 = icmp eq i32 %1505, 255
  br i1 %1603, label %1679, label %1604, !dx.controlflow.hints !91

; <label>:1604                                    ; preds = %1602
  %1605 = mul nuw nsw i32 %1505, 176
  %1606 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %1605, i32 undef)  ; BufferLoad(srv,index,wot)
  %1607 = extractvalue %dx.types.ResRet.f32 %1606, 0
  %1608 = extractvalue %dx.types.ResRet.f32 %1606, 1
  %1609 = extractvalue %dx.types.ResRet.f32 %1606, 2
  %1610 = extractvalue %dx.types.ResRet.f32 %1606, 3
  %1611 = add nuw nsw i32 %1605, 16
  %1612 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %1611, i32 undef)  ; BufferLoad(srv,index,wot)
  %1613 = extractvalue %dx.types.ResRet.f32 %1612, 0
  %1614 = extractvalue %dx.types.ResRet.f32 %1612, 1
  %1615 = add nuw nsw i32 %1605, 32
  %1616 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %1615, i32 undef)  ; BufferLoad(srv,index,wot)
  %1617 = extractvalue %dx.types.ResRet.f32 %1616, 0
  %1618 = add nuw nsw i32 %1605, 48
  %1619 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %1618, i32 undef)  ; BufferLoad(srv,index,wot)
  %1620 = extractvalue %dx.types.ResRet.f32 %1619, 0
  %1621 = extractvalue %dx.types.ResRet.f32 %1619, 1
  %1622 = extractvalue %dx.types.ResRet.f32 %1619, 2
  %1623 = extractvalue %dx.types.ResRet.f32 %1619, 3
  %1624 = add nuw nsw i32 %1605, 64
  %1625 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %1624, i32 undef)  ; BufferLoad(srv,index,wot)
  %1626 = extractvalue %dx.types.ResRet.f32 %1625, 0
  %1627 = extractvalue %dx.types.ResRet.f32 %1625, 1
  %1628 = extractvalue %dx.types.ResRet.f32 %1625, 2
  %1629 = extractvalue %dx.types.ResRet.f32 %1625, 3
  %1630 = add nuw nsw i32 %1605, 80
  %1631 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %1630, i32 undef)  ; BufferLoad(srv,index,wot)
  %1632 = extractvalue %dx.types.ResRet.f32 %1631, 0
  %1633 = extractvalue %dx.types.ResRet.f32 %1631, 1
  %1634 = extractvalue %dx.types.ResRet.f32 %1631, 2
  %1635 = extractvalue %dx.types.ResRet.f32 %1631, 3
  %1636 = add nuw nsw i32 %1605, 96
  %1637 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %1636, i32 undef)  ; BufferLoad(srv,index,wot)
  %1638 = extractvalue %dx.types.ResRet.f32 %1637, 0
  %1639 = extractvalue %dx.types.ResRet.f32 %1637, 1
  %1640 = extractvalue %dx.types.ResRet.f32 %1637, 2
  %1641 = extractvalue %dx.types.ResRet.f32 %1637, 3
  %1642 = bitcast float %1614 to i32
  %1643 = fmul fast float %1620, %293
  %1644 = call float @dx.op.tertiary.f32(i32 46, float %294, float %1626, float %1643)  ; FMad(a,b,c)
  %1645 = call float @dx.op.tertiary.f32(i32 46, float %295, float %1632, float %1644)  ; FMad(a,b,c)
  %1646 = fadd fast float %1645, %1638
  %1647 = fmul fast float %1621, %293
  %1648 = call float @dx.op.tertiary.f32(i32 46, float %294, float %1627, float %1647)  ; FMad(a,b,c)
  %1649 = call float @dx.op.tertiary.f32(i32 46, float %295, float %1633, float %1648)  ; FMad(a,b,c)
  %1650 = fadd fast float %1649, %1639
  %1651 = fmul fast float %1622, %293
  %1652 = call float @dx.op.tertiary.f32(i32 46, float %294, float %1628, float %1651)  ; FMad(a,b,c)
  %1653 = call float @dx.op.tertiary.f32(i32 46, float %295, float %1634, float %1652)  ; FMad(a,b,c)
  %1654 = fadd fast float %1653, %1640
  %1655 = fmul fast float %1623, %293
  %1656 = call float @dx.op.tertiary.f32(i32 46, float %294, float %1629, float %1655)  ; FMad(a,b,c)
  %1657 = call float @dx.op.tertiary.f32(i32 46, float %295, float %1635, float %1656)  ; FMad(a,b,c)
  %1658 = fadd fast float %1657, %1641
  %1659 = fdiv fast float %1646, %1658
  %1660 = fdiv fast float %1650, %1658
  %1661 = fdiv fast float %1654, %1658
  %1662 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %1661)  ; FMax(a,b)
  %1663 = fmul fast float %1659, %1613
  %1664 = fmul fast float %1660, %1613
  %1665 = call float @dx.op.binary.f32(i32 35, float %1663, float %1609)  ; FMax(a,b)
  %1666 = call float @dx.op.binary.f32(i32 35, float %1664, float %1609)  ; FMax(a,b)
  %1667 = call float @dx.op.binary.f32(i32 36, float %1665, float %1610)  ; FMin(a,b)
  %1668 = call float @dx.op.binary.f32(i32 36, float %1666, float %1610)  ; FMin(a,b)
  %1669 = fadd fast float %1667, %1607
  %1670 = fadd fast float %1668, %1608
  %1671 = uitofp i32 %1642 to float
  %1672 = fadd fast float %1662, %1617
  %1673 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %27, float %1669, float %1670, float %1671, float undef, i32 0, i32 0, i32 undef, float %1672)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1674 = extractvalue %dx.types.ResRet.f32 %1673, 0
  %1675 = fadd fast float %1674, -1.000000e+00
  %1676 = fmul fast float %1675, %1581
  %1677 = fadd fast float %1676, 1.000000e+00
  %1678 = fmul fast float %1677, %1593
  br label %1679

; <label>:1679                                    ; preds = %1604, %1602
  %1680 = phi float [ %1678, %1604 ], [ %1593, %1602 ]
  %1681 = call float @dx.op.binary.f32(i32 36, float %1680, float %1680)  ; FMin(a,b)
  %1682 = call float @dx.op.binary.f32(i32 36, float %1680, float %1681)  ; FMin(a,b)
  %1683 = fcmp fast ogt float %1682, 0.000000e+00
  br i1 %1683, label %1684, label %1597, !dx.controlflow.hints !92

; <label>:1684                                    ; preds = %1679
  %1685 = extractvalue %dx.types.CBufRet.f32 %1487, 1
  %1686 = fmul fast float %1680, %1535
  %1687 = call float @dx.op.binary.f32(i32 36, float %1686, float %1685)  ; FMin(a,b)
  %1688 = icmp eq i32 %404, 0
  br i1 %1688, label %1768, label %1689, !dx.controlflow.hints !83

; <label>:1689                                    ; preds = %1684
  %1690 = fsub fast float %1472, %403
  %1691 = fcmp fast ogt float %1690, 0.000000e+00
  %1692 = fsub fast float %295, %403
  %1693 = fcmp fast ogt float %1692, 0.000000e+00
  %1694 = xor i1 %1693, %1691
  %1695 = fsub fast float %403, %1472
  %1696 = fmul fast float %1695, 2.000000e+00
  %1697 = fadd fast float %1696, %1472
  %1698 = select i1 %1694, float %1472, float %1697
  %1699 = fsub fast float %1470, %293
  %1700 = fsub fast float %1471, %294
  %1701 = fsub fast float %1698, %295
  %1702 = call float @dx.op.dot3.f32(i32 55, float %1699, float %1700, float %1701, float %1699, float %1700, float %1701)  ; Dot3(ax,ay,az,bx,by,bz)
  %1703 = call float @dx.op.unary.f32(i32 25, float %1702)  ; Rsqrt(value)
  %1704 = fmul fast float %1703, %1699
  %1705 = fmul fast float %1703, %1700
  %1706 = fmul fast float %1703, %1701
  %1707 = fsub fast float %403, %295
  %1708 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %1707)  ; Dot3(ax,ay,az,bx,by,bz)
  %1709 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1704, float %1705, float %1706)  ; Dot3(ax,ay,az,bx,by,bz)
  %1710 = fdiv fast float 1.000000e+00, %1709
  %1711 = fmul fast float %1710, %1708
  %1712 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %1692, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1713 = fcmp fast ogt float %1712, 0.000000e+00
  %1714 = fcmp fast olt float %1712, 0.000000e+00
  %1715 = zext i1 %1713 to i32
  %1716 = zext i1 %1714 to i32
  %1717 = sub nsw i32 %1715, %1716
  %1718 = sitofp i32 %1717 to float
  %1719 = fsub fast float %1698, %403
  %1720 = call float @dx.op.dot3.f32(i32 55, float %1699, float %1700, float %1719, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1721 = fcmp fast ogt float %1720, 0.000000e+00
  %1722 = fcmp fast olt float %1720, 0.000000e+00
  %1723 = zext i1 %1721 to i32
  %1724 = zext i1 %1722 to i32
  %1725 = sub nsw i32 %1723, %1724
  %1726 = sitofp i32 %1725 to float
  %1727 = fcmp fast une float %1718, %1726
  br i1 %1727, label %1728, label %1738, !dx.controlflow.hints !84

; <label>:1728                                    ; preds = %1689
  %1729 = fmul fast float %1711, %1706
  %1730 = fmul fast float %1711, %1705
  %1731 = fmul fast float %1711, %1704
  %1732 = fmul fast float %1731, %1731
  %1733 = fmul fast float %1730, %1730
  %1734 = fadd fast float %1732, %1733
  %1735 = fmul fast float %1729, %1729
  %1736 = fadd fast float %1734, %1735
  %1737 = call float @dx.op.unary.f32(i32 24, float %1736)  ; Sqrt(value)
  br label %1748

; <label>:1738                                    ; preds = %1689
  %1739 = icmp slt i32 %1717, 0
  br i1 %1739, label %1740, label %1748, !dx.controlflow.hints !85

; <label>:1740                                    ; preds = %1738
  %1741 = fsub fast float %295, %1698
  %1742 = fmul fast float %1509, %1509
  %1743 = fmul fast float %1510, %1510
  %1744 = fadd fast float %1742, %1743
  %1745 = fmul fast float %1741, %1741
  %1746 = fadd fast float %1744, %1745
  %1747 = call float @dx.op.unary.f32(i32 24, float %1746)  ; Sqrt(value)
  br label %1748

; <label>:1748                                    ; preds = %1740, %1738, %1728
  %1749 = phi float [ %1737, %1728 ], [ %1747, %1740 ], [ 0.000000e+00, %1738 ]
  %1750 = and i1 %1693, %1691
  %1751 = fsub fast float -0.000000e+00, %1749
  %1752 = select i1 %1750, float -0.000000e+00, float %1751
  %1753 = fmul fast float %400, 0x3FF7154760000000
  %1754 = fmul fast float %1753, %1752
  %1755 = fmul fast float %401, 0x3FF7154760000000
  %1756 = fmul fast float %1755, %1752
  %1757 = fmul fast float %402, 0x3FF7154760000000
  %1758 = fmul fast float %1757, %1752
  %1759 = call float @dx.op.unary.f32(i32 21, float %1754)  ; Exp(value)
  %1760 = call float @dx.op.unary.f32(i32 21, float %1756)  ; Exp(value)
  %1761 = call float @dx.op.unary.f32(i32 21, float %1758)  ; Exp(value)
  %1762 = call float @dx.op.unary.f32(i32 7, float %1759)  ; Saturate(value)
  %1763 = call float @dx.op.unary.f32(i32 7, float %1760)  ; Saturate(value)
  %1764 = call float @dx.op.unary.f32(i32 7, float %1761)  ; Saturate(value)
  %1765 = fmul fast float %1762, %1498
  %1766 = fmul fast float %1763, %1499
  %1767 = fmul fast float %1764, %1500
  br label %1768

; <label>:1768                                    ; preds = %1748, %1684
  %1769 = phi float [ %1765, %1748 ], [ %1498, %1684 ]
  %1770 = phi float [ %1766, %1748 ], [ %1499, %1684 ]
  %1771 = phi float [ %1767, %1748 ], [ %1500, %1684 ]
  %1772 = fmul fast float %1687, %1769
  %1773 = fmul fast float %1687, %1770
  %1774 = fmul fast float %1687, %1771
  br i1 %115, label %1775, label %1796, !dx.controlflow.hints !86

; <label>:1775                                    ; preds = %1768
  br i1 %117, label %1776, label %1808, !dx.controlflow.hints !87

; <label>:1776                                    ; preds = %1775
  %1777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1778 = extractvalue %dx.types.CBufRet.f32 %1777, 0
  %1779 = extractvalue %dx.types.CBufRet.f32 %1777, 1
  %1780 = fmul fast float %1779, 0x3FE5555560000000
  %1781 = fmul fast float %1529, 0xBFF88F51C0000000
  %1782 = fmul fast float %1530, 0x3FF88F51C0000000
  %1783 = fmul fast float %1528, 0xBFF88F51C0000000
  %1784 = fmul fast float %1778, 0x3FEC5BF8C0000000
  %1785 = fmul fast float %1781, %1780
  %1786 = fmul fast float %1782, %1780
  %1787 = fmul fast float %1783, %1780
  %1788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1789 = extractvalue %dx.types.CBufRet.f32 %1788, 1
  %1790 = fmul fast float %1789, 0x3FDF454380000000
  %1791 = extractvalue %dx.types.CBufRet.f32 %1788, 2
  %1792 = fmul fast float %1791, 0xBFDF454380000000
  %1793 = extractvalue %dx.types.CBufRet.f32 %1788, 0
  %1794 = fmul fast float %1793, 0x3FDF454380000000
  %1795 = call float @dx.op.dot4.f32(i32 56, float %1784, float %1785, float %1786, float %1787, float 0x3FD20DD760000000, float %1790, float %1792, float %1794)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  br label %1808

; <label>:1796                                    ; preds = %1768
  %1797 = call float @dx.op.dot3.f32(i32 55, float %1528, float %1529, float %1530, float %301, float %302, float %303)  ; Dot3(ax,ay,az,bx,by,bz)
  %1798 = fcmp fast ogt float %159, 0.000000e+00
  %1799 = select i1 %1798, float 1.000000e+00, float -1.000000e+00
  %1800 = fmul fast float %1799, 5.000000e-01
  %1801 = fmul fast float %1800, %1797
  %1802 = fmul fast float %1799, %159
  %1803 = fadd fast float %1801, 4.921875e-01
  %1804 = fadd fast float %1802, -3.125000e-02
  %1805 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %25, float %1803, float 0x3FB25F3060000000, float %1804, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1806 = extractvalue %dx.types.ResRet.f32 %1805, 0
  %1807 = fmul fast float %1806, 0x400921FB60000000
  br label %1808

; <label>:1808                                    ; preds = %1796, %1776, %1775
  %1809 = phi float [ %1795, %1776 ], [ %1807, %1796 ], [ 0x3FE921FB60000000, %1775 ]
  %1810 = fmul float %1774, %1809
  %1811 = fmul float %1773, %1809
  %1812 = fmul float %1772, %1809
  %1813 = fadd fast float %1812, %1434
  %1814 = fadd fast float %1811, %1435
  %1815 = fadd fast float %1810, %1436
  br label %1597

; <label>:1816                                    ; preds = %1597
  br label %1817

; <label>:1817                                    ; preds = %1816, %1420
  %1818 = phi float [ %1421, %1420 ], [ %1598, %1816 ]
  %1819 = phi float [ %1422, %1420 ], [ %1599, %1816 ]
  %1820 = phi float [ %1423, %1420 ], [ %1600, %1816 ]
  %1821 = add i32 %1424, 1
  %1822 = icmp ugt i32 %1821, %1419
  br i1 %1822, label %1823, label %1420

; <label>:1823                                    ; preds = %1817
  br label %1824

; <label>:1824                                    ; preds = %1823, %1377
  %1825 = phi float [ %1378, %1377 ], [ %1818, %1823 ]
  %1826 = phi float [ %1379, %1377 ], [ %1819, %1823 ]
  %1827 = phi float [ %1380, %1377 ], [ %1820, %1823 ]
  %1828 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %18, i32 0, i32 %186, i32 %187, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1829 = extractvalue %dx.types.ResRet.f32 %1828, 0
  %1830 = extractvalue %dx.types.ResRet.f32 %1828, 1
  %1831 = extractvalue %dx.types.ResRet.f32 %1828, 2
  %1832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1833 = extractvalue %dx.types.CBufRet.f32 %1832, 1
  %1834 = fmul fast float %1833, %1829
  %1835 = fmul fast float %1833, %1830
  %1836 = fmul fast float %1833, %1831
  %1837 = fadd fast float %1834, %1825
  %1838 = fadd fast float %1835, %1826
  %1839 = fadd fast float %1836, %1827
  %1840 = extractvalue %dx.types.CBufRet.f32 %1832, 0
  %1841 = fmul fast float %1837, %1840
  %1842 = fmul fast float %1838, %1840
  %1843 = fmul fast float %1839, %1840
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %186, i32 %187, i32 undef, float %1841, float %1842, float %1843, float %1841, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %1845 = extractvalue %dx.types.CBufRet.f32 %1844, 0
  %1846 = extractvalue %dx.types.CBufRet.f32 %1844, 1
  %1847 = extractvalue %dx.types.CBufRet.f32 %1844, 2
  %1848 = extractvalue %dx.types.CBufRet.f32 %1844, 3
  %1849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %1850 = extractvalue %dx.types.CBufRet.f32 %1849, 0
  %1851 = extractvalue %dx.types.CBufRet.f32 %1849, 1
  %1852 = extractvalue %dx.types.CBufRet.f32 %1849, 2
  %1853 = extractvalue %dx.types.CBufRet.f32 %1849, 3
  %1854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %1855 = extractvalue %dx.types.CBufRet.f32 %1854, 0
  %1856 = extractvalue %dx.types.CBufRet.f32 %1854, 1
  %1857 = extractvalue %dx.types.CBufRet.f32 %1854, 2
  %1858 = extractvalue %dx.types.CBufRet.f32 %1854, 3
  %1859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %1860 = extractvalue %dx.types.CBufRet.f32 %1859, 0
  %1861 = extractvalue %dx.types.CBufRet.f32 %1859, 1
  %1862 = extractvalue %dx.types.CBufRet.f32 %1859, 2
  %1863 = extractvalue %dx.types.CBufRet.f32 %1859, 3
  %1864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %1865 = extractvalue %dx.types.CBufRet.f32 %1864, 3
  %1866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %1867 = extractvalue %dx.types.CBufRet.f32 %1866, 3
  %1868 = extractvalue %dx.types.CBufRet.f32 %1866, 0
  %1869 = extractvalue %dx.types.CBufRet.f32 %1866, 1
  %1870 = extractvalue %dx.types.CBufRet.f32 %1866, 2
  %1871 = fcmp fast olt float %1870, -5.000000e-01
  %1872 = call float @dx.op.dot3.f32(i32 55, float %203, float %209, float %215, float %203, float %209, float %215)  ; Dot3(ax,ay,az,bx,by,bz)
  %1873 = call float @dx.op.unary.f32(i32 25, float %1872)  ; Rsqrt(value)
  %1874 = fmul fast float %1873, %1872
  %1875 = fmul fast float %1873, %203
  %1876 = fmul fast float %1873, %209
  %1877 = fmul fast float %1873, %215
  %1878 = fadd fast float %1874, %1848
  %1879 = call float @dx.op.dot3.f32(i32 55, float %1875, float %1876, float %1877, float %1845, float %1846, float %1847)  ; Dot3(ax,ay,az,bx,by,bz)
  %1880 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1881 = extractvalue %dx.types.CBufRet.i32 %1880, 1
  %1882 = and i32 %1881, 1
  %1883 = icmp ne i32 %1882, 0
  %1884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1885 = extractvalue %dx.types.CBufRet.f32 %1884, 2
  %1886 = fcmp fast ogt float %1885, 0.000000e+00
  %1887 = and i1 %1883, %1886
  br i1 %1887, label %1888, label %2294, !dx.controlflow.hints !93

; <label>:1888                                    ; preds = %1824
  %1889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %1890 = extractvalue %dx.types.CBufRet.f32 %1889, 3
  %1891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1892 = extractvalue %dx.types.CBufRet.f32 %1891, 2
  %1893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1894 = extractvalue %dx.types.CBufRet.f32 %1893, 2
  %1895 = fsub fast float %1892, %1894
  %1896 = and i32 %1881, 2
  %1897 = extractvalue %dx.types.CBufRet.i32 %1880, 0
  %1898 = call i32 @dx.op.binary.i32(i32 40, i32 %1897, i32 3)  ; UMin(a,b)
  %1899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1900 = extractvalue %dx.types.CBufRet.f32 %1899, 0
  %1901 = extractvalue %dx.types.CBufRet.f32 %1899, 1
  %1902 = extractvalue %dx.types.CBufRet.f32 %1893, 0
  %1903 = extractvalue %dx.types.CBufRet.f32 %1893, 1
  %1904 = fsub fast float %1900, %1902
  %1905 = fsub fast float %1901, %1903
  %1906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1907 = extractvalue %dx.types.CBufRet.f32 %1906, 0
  %1908 = fcmp fast ogt float %1907, 0.000000e+00
  %1909 = fsub fast float -0.000000e+00, %1904
  %1910 = fsub fast float -0.000000e+00, %1905
  %1911 = call float @dx.op.dot2.f32(i32 54, float %1875, float %1876, float %1875, float %1876)  ; Dot2(ax,ay,bx,by)
  %1912 = call float @dx.op.dot2.f32(i32 54, float %1875, float %1876, float %1909, float %1910)  ; Dot2(ax,ay,bx,by)
  %1913 = fmul fast float %1912, 2.000000e+00
  %1914 = call float @dx.op.dot2.f32(i32 54, float %1909, float %1910, float %1909, float %1910)  ; Dot2(ax,ay,bx,by)
  %1915 = fmul fast float %1907, %1907
  %1916 = fsub fast float %1914, %1915
  %1917 = fmul fast float %1913, %1913
  %1918 = fmul fast float %1911, 4.000000e+00
  %1919 = fmul fast float %1918, %1916
  %1920 = fsub fast float %1917, %1919
  %1921 = fcmp fast ogt float %1920, 0.000000e+00
  br i1 %1921, label %1922, label %1937, !dx.controlflow.hints !94

; <label>:1922                                    ; preds = %1888
  %1923 = fcmp fast ogt float %1913, 0.000000e+00
  %1924 = call float @dx.op.unary.f32(i32 24, float %1920)  ; Sqrt(value)
  %1925 = fsub fast float -0.000000e+00, %1924
  %1926 = select i1 %1923, float %1924, float %1925
  %1927 = fadd fast float %1926, %1913
  %1928 = fmul float %1927, -5.000000e-01
  %1929 = fdiv fast float %1928, %1911
  %1930 = call float @dx.op.binary.f32(i32 35, float %1929, float 0.000000e+00)  ; FMax(a,b)
  %1931 = call float @dx.op.binary.f32(i32 36, float %1874, float %1930)  ; FMin(a,b)
  %1932 = fdiv fast float %1916, %1928
  %1933 = call float @dx.op.binary.f32(i32 35, float %1932, float 0.000000e+00)  ; FMax(a,b)
  %1934 = call float @dx.op.binary.f32(i32 36, float %1874, float %1933)  ; FMin(a,b)
  %1935 = call float @dx.op.binary.f32(i32 36, float %1931, float %1934)  ; FMin(a,b)
  %1936 = call float @dx.op.binary.f32(i32 35, float %1931, float %1934)  ; FMax(a,b)
  br label %1937

; <label>:1937                                    ; preds = %1922, %1888
  %1938 = phi float [ %1936, %1922 ], [ -1.000000e+00, %1888 ]
  %1939 = phi float [ %1935, %1922 ], [ -1.000000e+00, %1888 ]
  %1940 = phi i1 [ true, %1922 ], [ false, %1888 ]
  %1941 = and i1 %1908, %1940
  br i1 %1941, label %1942, label %1944, !dx.controlflow.hints !95

; <label>:1942                                    ; preds = %1937
  %1943 = fcmp fast oeq float %1939, %1938
  br i1 %1943, label %2247, label %1945, !dx.controlflow.hints !96

; <label>:1944                                    ; preds = %1937
  br i1 %1908, label %2247, label %1945, !dx.controlflow.hints !97

; <label>:1945                                    ; preds = %1944, %1942
  %1946 = phi float [ %1874, %1944 ], [ %1938, %1942 ]
  %1947 = phi float [ 0.000000e+00, %1944 ], [ %1939, %1942 ]
  %1948 = icmp ne i32 %1896, 0
  %1949 = fmul fast float %1946, %1877
  %1950 = fadd fast float %1949, %1890
  %1951 = fmul fast float %1950, %1946
  %1952 = select i1 %1948, float 0.000000e+00, float %1951
  %1953 = fcmp fast oeq float %1877, 0.000000e+00
  %1954 = fdiv fast float %1895, %1877
  %1955 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1954)  ; FMax(a,b)
  %1956 = select i1 %1953, float %1946, float %1955
  %1957 = call float @dx.op.binary.f32(i32 36, float %1946, float %1956)  ; FMin(a,b)
  %1958 = fcmp fast ogt float %1877, 0.000000e+00
  %1959 = fcmp fast olt float %1895, 0.000000e+00
  br i1 %1958, label %1960, label %2017, !dx.controlflow.hints !98

; <label>:1960                                    ; preds = %1945
  %1961 = icmp eq i32 %1896, 0
  br i1 %1959, label %1962, label %2006, !dx.controlflow.hints !99

; <label>:1962                                    ; preds = %1960
  %1963 = select i1 %1961, float %1946, float 0.000000e+00
  %1964 = fsub fast float -0.000000e+00, %1963
  %1965 = call float @dx.op.unary.f32(i32 6, float %1964)  ; FAbs(value)
  %1966 = fmul fast float %1963, %1877
  %1967 = fadd fast float %1966, %1890
  %1968 = fmul fast float %1965, %1967
  %1969 = fsub fast float %1952, %1968
  %1970 = fsub fast float %1946, %1965
  %1971 = select i1 %1961, float %1970, float 0.000000e+00
  %1972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1973 = extractvalue %dx.types.CBufRet.f32 %1972, 0
  %1974 = extractvalue %dx.types.CBufRet.f32 %1972, 1
  %1975 = extractvalue %dx.types.CBufRet.f32 %1972, 2
  %1976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1977 = extractvalue %dx.types.CBufRet.f32 %1976, 0
  %1978 = extractvalue %dx.types.CBufRet.f32 %1976, 1
  %1979 = extractvalue %dx.types.CBufRet.f32 %1976, 2
  %1980 = extractvalue %dx.types.CBufRet.f32 %1976, 3
  %1981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1982 = extractvalue %dx.types.CBufRet.f32 %1981, 3
  %1983 = call float @dx.op.binary.f32(i32 36, float %1969, float %1982)  ; FMin(a,b)
  %1984 = fmul fast float %1980, %1971
  %1985 = call float @dx.op.unary.f32(i32 7, float %1984)  ; Saturate(value)
  %1986 = fsub fast float %1977, %1973
  %1987 = fsub fast float %1978, %1974
  %1988 = fsub fast float %1979, %1975
  %1989 = fmul fast float %1985, %1986
  %1990 = fmul fast float %1985, %1987
  %1991 = fmul fast float %1985, %1988
  %1992 = fadd fast float %1989, %1973
  %1993 = fadd fast float %1990, %1974
  %1994 = fadd fast float %1991, %1975
  %1995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1996 = extractvalue %dx.types.CBufRet.f32 %1995, 0
  %1997 = extractvalue %dx.types.CBufRet.f32 %1995, 1
  %1998 = fadd fast float %1997, %1996
  %1999 = call float @dx.op.unary.f32(i32 7, float %1998)  ; Saturate(value)
  %2000 = extractvalue %dx.types.CBufRet.f32 %1995, 2
  %2001 = extractvalue %dx.types.CBufRet.f32 %1995, 3
  %2002 = fadd fast float %2001, %2000
  %2003 = call float @dx.op.unary.f32(i32 7, float %2002)  ; Saturate(value)
  %2004 = fmul fast float %1999, %1983
  %2005 = fmul fast float %2004, %2003
  br label %2247

; <label>:2006                                    ; preds = %1960
  br i1 %1961, label %2007, label %2028, !dx.controlflow.hints !100

; <label>:2007                                    ; preds = %2006
  %2008 = call float @dx.op.binary.f32(i32 36, float %1957, float %1947)  ; FMin(a,b)
  %2009 = fsub fast float %1957, %2008
  %2010 = fsub fast float %2009, %1946
  %2011 = call float @dx.op.unary.f32(i32 6, float %2010)  ; FAbs(value)
  %2012 = fadd fast float %2009, %1946
  %2013 = fmul fast float %2012, %1877
  %2014 = fadd fast float %2013, %1890
  %2015 = fmul fast float %2014, %2011
  %2016 = fsub fast float %1952, %2015
  br label %2028

; <label>:2017                                    ; preds = %1945
  br i1 %1959, label %2018, label %2028, !dx.controlflow.hints !101

; <label>:2018                                    ; preds = %2017
  %2019 = call float @dx.op.binary.f32(i32 35, float %1947, float %1957)  ; FMax(a,b)
  %2020 = icmp eq i32 %1896, 0
  %2021 = select i1 %2020, float %1957, float 0.000000e+00
  %2022 = fsub fast float -0.000000e+00, %2021
  %2023 = call float @dx.op.unary.f32(i32 6, float %2022)  ; FAbs(value)
  %2024 = fmul fast float %2021, %1877
  %2025 = fadd fast float %2024, %1890
  %2026 = fmul fast float %2023, %2025
  %2027 = fsub fast float %1952, %2026
  br label %2028

; <label>:2028                                    ; preds = %2018, %2017, %2007, %2006
  %2029 = phi float [ %1947, %2006 ], [ %1947, %2007 ], [ %2019, %2018 ], [ %1947, %2017 ]
  %2030 = phi float [ 0.000000e+00, %2006 ], [ %2011, %2007 ], [ %2023, %2018 ], [ 0.000000e+00, %2017 ]
  %2031 = phi float [ %1952, %2006 ], [ %2016, %2007 ], [ %2027, %2018 ], [ %1952, %2017 ]
  %2032 = phi float [ %1957, %2006 ], [ %1957, %2007 ], [ %1946, %2018 ], [ %1946, %2017 ]
  %2033 = getelementptr inbounds [3 x float], [3 x float]* %37, i32 0, i32 0
  store float -1.000000e+00, float* %2033, align 4, !tbaa !73, !noalias !102
  %2034 = getelementptr inbounds [3 x float], [3 x float]* %37, i32 0, i32 1
  store float -1.000000e+00, float* %2034, align 4, !tbaa !73, !noalias !102
  %2035 = getelementptr inbounds [3 x float], [3 x float]* %37, i32 0, i32 2
  store float -1.000000e+00, float* %2035, align 4, !tbaa !73, !noalias !102
  %2036 = getelementptr inbounds [3 x float], [3 x float]* %38, i32 0, i32 0
  store float -1.000000e+00, float* %2036, align 4, !tbaa !73, !noalias !102
  %2037 = getelementptr inbounds [3 x float], [3 x float]* %38, i32 0, i32 1
  store float -1.000000e+00, float* %2037, align 4, !tbaa !73, !noalias !102
  %2038 = getelementptr inbounds [3 x float], [3 x float]* %38, i32 0, i32 2
  store float -1.000000e+00, float* %2038, align 4, !tbaa !73, !noalias !102
  %2039 = icmp sgt i32 %1898, 0
  br i1 %2039, label %2040, label %2101

; <label>:2040                                    ; preds = %2028
  br label %2041

; <label>:2041                                    ; preds = %2090, %2040
  %2042 = phi i32 [ %2091, %2090 ], [ 0, %2040 ]
  %2043 = phi i32 [ %2092, %2090 ], [ 0, %2040 ]
  %2044 = add nuw i32 %2043, 171
  %2045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 %2044)  ; CBufferLoadLegacy(handle,regIndex)
  %2046 = extractvalue %dx.types.CBufRet.f32 %2045, 0
  %2047 = extractvalue %dx.types.CBufRet.f32 %2045, 1
  %2048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2049 = extractvalue %dx.types.CBufRet.f32 %2048, 0
  %2050 = extractvalue %dx.types.CBufRet.f32 %2048, 1
  %2051 = fsub fast float %2046, %2049
  %2052 = fsub fast float %2047, %2050
  %2053 = extractvalue %dx.types.CBufRet.f32 %2045, 2
  %2054 = fsub fast float -0.000000e+00, %2051
  %2055 = fsub fast float -0.000000e+00, %2052
  %2056 = call float @dx.op.dot2.f32(i32 54, float %1875, float %1876, float %2054, float %2055)  ; Dot2(ax,ay,bx,by)
  %2057 = fmul fast float %2056, 2.000000e+00
  %2058 = call float @dx.op.dot2.f32(i32 54, float %2054, float %2055, float %2054, float %2055)  ; Dot2(ax,ay,bx,by)
  %2059 = fmul fast float %2053, %2053
  %2060 = fsub fast float %2058, %2059
  %2061 = fmul fast float %2057, %2057
  %2062 = fmul fast float %1918, %2060
  %2063 = fsub fast float %2061, %2062
  %2064 = fcmp fast ogt float %2063, 0.000000e+00
  br i1 %2064, label %2065, label %2080, !dx.controlflow.hints !94

; <label>:2065                                    ; preds = %2041
  %2066 = fcmp fast ogt float %2057, 0.000000e+00
  %2067 = call float @dx.op.unary.f32(i32 24, float %2063)  ; Sqrt(value)
  %2068 = fsub fast float -0.000000e+00, %2067
  %2069 = select i1 %2066, float %2067, float %2068
  %2070 = fadd fast float %2069, %2057
  %2071 = fmul float %2070, -5.000000e-01
  %2072 = fdiv fast float %2071, %1911
  %2073 = call float @dx.op.binary.f32(i32 35, float %2072, float 0.000000e+00)  ; FMax(a,b)
  %2074 = call float @dx.op.binary.f32(i32 36, float %1946, float %2073)  ; FMin(a,b)
  %2075 = fdiv fast float %2060, %2071
  %2076 = call float @dx.op.binary.f32(i32 35, float %2075, float 0.000000e+00)  ; FMax(a,b)
  %2077 = call float @dx.op.binary.f32(i32 36, float %1946, float %2076)  ; FMin(a,b)
  %2078 = call float @dx.op.binary.f32(i32 36, float %2074, float %2077)  ; FMin(a,b)
  %2079 = call float @dx.op.binary.f32(i32 35, float %2074, float %2077)  ; FMax(a,b)
  br label %2080

; <label>:2080                                    ; preds = %2065, %2041
  %2081 = phi float [ %2079, %2065 ], [ -1.000000e+00, %2041 ]
  %2082 = phi float [ %2078, %2065 ], [ -1.000000e+00, %2041 ]
  %2083 = phi i1 [ true, %2065 ], [ false, %2041 ]
  br i1 %2083, label %2084, label %2090, !dx.controlflow.hints !111

; <label>:2084                                    ; preds = %2080
  %2085 = call float @dx.op.binary.f32(i32 35, float %2029, float %2082)  ; FMax(a,b)
  %2086 = getelementptr inbounds [3 x float], [3 x float]* %37, i32 0, i32 %2043
  store float %2085, float* %2086, align 4, !tbaa !73, !noalias !102
  %2087 = call float @dx.op.binary.f32(i32 35, float %2029, float %2081)  ; FMax(a,b)
  %2088 = getelementptr inbounds [3 x float], [3 x float]* %38, i32 0, i32 %2043
  store float %2087, float* %2088, align 4, !tbaa !73, !noalias !102
  %2089 = add nsw i32 %2042, 1
  br label %2090

; <label>:2090                                    ; preds = %2084, %2080
  %2091 = phi i32 [ %2089, %2084 ], [ %2042, %2080 ]
  %2092 = add nuw nsw i32 %2043, 1
  %2093 = icmp eq i32 %2092, %1898
  br i1 %2093, label %2094, label %2041

; <label>:2094                                    ; preds = %2090
  %2095 = load float, float* %2035, align 4, !tbaa !73, !alias.scope !112, !noalias !115
  %2096 = load float, float* %2034, align 4, !tbaa !73, !alias.scope !118, !noalias !119
  %2097 = load float, float* %2033, align 4, !tbaa !73, !alias.scope !120, !noalias !121
  %2098 = load float, float* %2038, align 4, !tbaa !73, !alias.scope !122, !noalias !125
  %2099 = load float, float* %2037, align 4, !tbaa !73, !alias.scope !128, !noalias !129
  %2100 = load float, float* %2036, align 4, !tbaa !73, !alias.scope !130, !noalias !131
  br label %2101

; <label>:2101                                    ; preds = %2094, %2028
  %2102 = phi float [ -1.000000e+00, %2028 ], [ %2100, %2094 ]
  %2103 = phi float [ -1.000000e+00, %2028 ], [ %2099, %2094 ]
  %2104 = phi float [ -1.000000e+00, %2028 ], [ %2098, %2094 ]
  %2105 = phi float [ -1.000000e+00, %2028 ], [ %2097, %2094 ]
  %2106 = phi float [ -1.000000e+00, %2028 ], [ %2096, %2094 ]
  %2107 = phi float [ -1.000000e+00, %2028 ], [ %2095, %2094 ]
  %2108 = phi i32 [ 0, %2028 ], [ %2091, %2094 ]
  %2109 = call float @dx.op.binary.f32(i32 36, float %2106, float %2107)  ; FMin(a,b)
  %2110 = call float @dx.op.binary.f32(i32 36, float %2105, float %2109)  ; FMin(a,b)
  %2111 = call float @dx.op.binary.f32(i32 35, float %2105, float %2106)  ; FMax(a,b)
  %2112 = call float @dx.op.binary.f32(i32 36, float %2111, float %2107)  ; FMin(a,b)
  %2113 = call float @dx.op.binary.f32(i32 36, float %2105, float %2106)  ; FMin(a,b)
  %2114 = call float @dx.op.binary.f32(i32 35, float %2113, float %2112)  ; FMax(a,b)
  %2115 = call float @dx.op.binary.f32(i32 35, float %2106, float %2107)  ; FMax(a,b)
  %2116 = call float @dx.op.binary.f32(i32 35, float %2105, float %2115)  ; FMax(a,b)
  store float %2110, float* %2033, align 4, !tbaa !73, !alias.scope !120, !noalias !121
  store float %2114, float* %2034, align 4, !tbaa !73, !alias.scope !118, !noalias !119
  store float %2116, float* %2035, align 4, !tbaa !73, !alias.scope !112, !noalias !115
  %2117 = call float @dx.op.binary.f32(i32 36, float %2103, float %2104)  ; FMin(a,b)
  %2118 = call float @dx.op.binary.f32(i32 36, float %2102, float %2117)  ; FMin(a,b)
  %2119 = call float @dx.op.binary.f32(i32 35, float %2102, float %2103)  ; FMax(a,b)
  %2120 = call float @dx.op.binary.f32(i32 36, float %2119, float %2104)  ; FMin(a,b)
  %2121 = call float @dx.op.binary.f32(i32 36, float %2102, float %2103)  ; FMin(a,b)
  %2122 = call float @dx.op.binary.f32(i32 35, float %2121, float %2120)  ; FMax(a,b)
  %2123 = call float @dx.op.binary.f32(i32 35, float %2103, float %2104)  ; FMax(a,b)
  %2124 = call float @dx.op.binary.f32(i32 35, float %2102, float %2123)  ; FMax(a,b)
  store float %2118, float* %2036, align 4, !tbaa !73, !alias.scope !130, !noalias !131
  store float %2122, float* %2037, align 4, !tbaa !73, !alias.scope !128, !noalias !129
  store float %2124, float* %2038, align 4, !tbaa !73, !alias.scope !122, !noalias !125
  %2125 = sub nsw i32 3, %2108
  %2126 = icmp sgt i32 %2125, 2
  br i1 %2126, label %2127, label %2165, !dx.controlflow.hints !132

; <label>:2127                                    ; preds = %2101
  %2128 = icmp eq i32 %1896, 0
  %2129 = fsub fast float %1946, %2030
  %2130 = select i1 %2128, float %2129, float %2030
  %2131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2132 = extractvalue %dx.types.CBufRet.f32 %2131, 0
  %2133 = extractvalue %dx.types.CBufRet.f32 %2131, 1
  %2134 = extractvalue %dx.types.CBufRet.f32 %2131, 2
  %2135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2136 = extractvalue %dx.types.CBufRet.f32 %2135, 0
  %2137 = extractvalue %dx.types.CBufRet.f32 %2135, 1
  %2138 = extractvalue %dx.types.CBufRet.f32 %2135, 2
  %2139 = extractvalue %dx.types.CBufRet.f32 %2135, 3
  %2140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2141 = extractvalue %dx.types.CBufRet.f32 %2140, 3
  %2142 = call float @dx.op.binary.f32(i32 36, float %2031, float %2141)  ; FMin(a,b)
  %2143 = fmul fast float %2139, %2130
  %2144 = call float @dx.op.unary.f32(i32 7, float %2143)  ; Saturate(value)
  %2145 = fsub fast float %2136, %2132
  %2146 = fsub fast float %2137, %2133
  %2147 = fsub fast float %2138, %2134
  %2148 = fmul fast float %2144, %2145
  %2149 = fmul fast float %2144, %2146
  %2150 = fmul fast float %2144, %2147
  %2151 = fadd fast float %2148, %2132
  %2152 = fadd fast float %2149, %2133
  %2153 = fadd fast float %2150, %2134
  %2154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2155 = extractvalue %dx.types.CBufRet.f32 %2154, 0
  %2156 = extractvalue %dx.types.CBufRet.f32 %2154, 1
  %2157 = fadd fast float %2156, %2155
  %2158 = call float @dx.op.unary.f32(i32 7, float %2157)  ; Saturate(value)
  %2159 = extractvalue %dx.types.CBufRet.f32 %2154, 2
  %2160 = extractvalue %dx.types.CBufRet.f32 %2154, 3
  %2161 = fadd fast float %2160, %2159
  %2162 = call float @dx.op.unary.f32(i32 7, float %2161)  ; Saturate(value)
  %2163 = fmul fast float %2158, %2142
  %2164 = fmul fast float %2163, %2162
  br label %2247

; <label>:2165                                    ; preds = %2101
  %2166 = getelementptr inbounds [3 x float], [3 x float]* %37, i32 0, i32 %2125
  %2167 = load float, float* %2166, align 4, !tbaa !73, !noalias !102
  %2168 = fcmp fast olt float %2167, %2032
  %2169 = icmp sgt i32 %2108, 0
  %2170 = and i1 %2169, %2168
  br i1 %2170, label %2171, label %2208

; <label>:2171                                    ; preds = %2165
  br label %2172

; <label>:2172                                    ; preds = %2201, %2171
  %2173 = phi float [ %2202, %2201 ], [ %2030, %2171 ]
  %2174 = phi float [ %2203, %2201 ], [ %2031, %2171 ]
  %2175 = phi float [ %2183, %2201 ], [ %2167, %2171 ]
  %2176 = phi i32 [ %2180, %2201 ], [ %2125, %2171 ]
  %2177 = getelementptr inbounds [3 x float], [3 x float]* %38, i32 0, i32 %2176
  %2178 = load float, float* %2177, align 4, !tbaa !73, !noalias !102
  %2179 = icmp slt i32 %2176, 2
  %2180 = add nsw i32 %2176, 1
  %2181 = getelementptr inbounds [3 x float], [3 x float]* %37, i32 0, i32 %2180
  %2182 = load float, float* %2181, align 4, !tbaa !73, !noalias !102
  %2183 = select i1 %2179, float %2182, float %1946
  %2184 = call float @dx.op.binary.f32(i32 36, float %2183, float %2178)  ; FMin(a,b)
  %2185 = call float @dx.op.binary.f32(i32 36, float %2032, float %2184)  ; FMin(a,b)
  %2186 = icmp eq i32 %1896, 0
  %2187 = fadd fast float %2185, %2175
  %2188 = fmul fast float %2187, %1877
  %2189 = fadd fast float %2188, %1890
  br i1 %2186, label %2195, label %2190, !dx.controlflow.hints !133

; <label>:2190                                    ; preds = %2172
  %2191 = fsub fast float %2185, %2175
  %2192 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2191)  ; FMax(a,b)
  %2193 = fmul fast float %2192, %2189
  %2194 = fadd fast float %2193, %2174
  br label %2201

; <label>:2195                                    ; preds = %2172
  %2196 = fsub fast float %2175, %2185
  %2197 = call float @dx.op.unary.f32(i32 6, float %2196)  ; FAbs(value)
  %2198 = fadd fast float %2197, %2173
  %2199 = fmul fast float %2197, %2189
  %2200 = fsub fast float %2174, %2199
  br label %2201

; <label>:2201                                    ; preds = %2195, %2190
  %2202 = phi float [ %2192, %2190 ], [ %2198, %2195 ]
  %2203 = phi float [ %2194, %2190 ], [ %2200, %2195 ]
  %2204 = fcmp fast olt float %2183, %2032
  %2205 = icmp slt i32 %2180, 3
  %2206 = and i1 %2205, %2204
  br i1 %2206, label %2172, label %2207

; <label>:2207                                    ; preds = %2201
  br label %2208

; <label>:2208                                    ; preds = %2207, %2165
  %2209 = phi float [ %2030, %2165 ], [ %2202, %2207 ]
  %2210 = phi float [ %2031, %2165 ], [ %2203, %2207 ]
  %2211 = fsub fast float %1946, %2209
  %2212 = select i1 %1948, float %2209, float %2211
  %2213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2214 = extractvalue %dx.types.CBufRet.f32 %2213, 0
  %2215 = extractvalue %dx.types.CBufRet.f32 %2213, 1
  %2216 = extractvalue %dx.types.CBufRet.f32 %2213, 2
  %2217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2218 = extractvalue %dx.types.CBufRet.f32 %2217, 0
  %2219 = extractvalue %dx.types.CBufRet.f32 %2217, 1
  %2220 = extractvalue %dx.types.CBufRet.f32 %2217, 2
  %2221 = extractvalue %dx.types.CBufRet.f32 %2217, 3
  %2222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2223 = extractvalue %dx.types.CBufRet.f32 %2222, 3
  %2224 = call float @dx.op.binary.f32(i32 36, float %2210, float %2223)  ; FMin(a,b)
  %2225 = fmul fast float %2221, %2212
  %2226 = call float @dx.op.unary.f32(i32 7, float %2225)  ; Saturate(value)
  %2227 = fsub fast float %2218, %2214
  %2228 = fsub fast float %2219, %2215
  %2229 = fsub fast float %2220, %2216
  %2230 = fmul fast float %2226, %2227
  %2231 = fmul fast float %2226, %2228
  %2232 = fmul fast float %2226, %2229
  %2233 = fadd fast float %2230, %2214
  %2234 = fadd fast float %2231, %2215
  %2235 = fadd fast float %2232, %2216
  %2236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2237 = extractvalue %dx.types.CBufRet.f32 %2236, 0
  %2238 = extractvalue %dx.types.CBufRet.f32 %2236, 1
  %2239 = fadd fast float %2238, %2237
  %2240 = call float @dx.op.unary.f32(i32 7, float %2239)  ; Saturate(value)
  %2241 = extractvalue %dx.types.CBufRet.f32 %2236, 2
  %2242 = extractvalue %dx.types.CBufRet.f32 %2236, 3
  %2243 = fadd fast float %2242, %2241
  %2244 = call float @dx.op.unary.f32(i32 7, float %2243)  ; Saturate(value)
  %2245 = fmul fast float %2240, %2224
  %2246 = fmul fast float %2245, %2244
  br label %2247

; <label>:2247                                    ; preds = %2208, %2127, %1962, %1944, %1942
  %2248 = phi float [ %1971, %1962 ], [ %2130, %2127 ], [ %2212, %2208 ], [ 0.000000e+00, %1942 ], [ 0.000000e+00, %1944 ]
  %2249 = phi float [ %2005, %1962 ], [ %2164, %2127 ], [ %2246, %2208 ], [ 0.000000e+00, %1942 ], [ 0.000000e+00, %1944 ]
  %2250 = phi float [ %1992, %1962 ], [ %2151, %2127 ], [ %2233, %2208 ], [ 0.000000e+00, %1942 ], [ 0.000000e+00, %1944 ]
  %2251 = phi float [ %1993, %1962 ], [ %2152, %2127 ], [ %2234, %2208 ], [ 0.000000e+00, %1942 ], [ 0.000000e+00, %1944 ]
  %2252 = phi float [ %1994, %1962 ], [ %2153, %2127 ], [ %2235, %2208 ], [ 0.000000e+00, %1942 ], [ 0.000000e+00, %1944 ]
  %2253 = fmul fast float %1885, %2249
  %2254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2255 = extractvalue %dx.types.CBufRet.f32 %2254, 2
  %2256 = fsub fast float %1892, %2255
  %2257 = fcmp fast olt float %2253, -2.000000e+01
  %2258 = call float @dx.op.unary.f32(i32 21, float %2253)  ; Exp(value)
  %2259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2260 = extractvalue %dx.types.CBufRet.f32 %2259, 2
  %2261 = extractvalue %dx.types.CBufRet.f32 %2259, 3
  %2262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2263 = extractvalue %dx.types.CBufRet.f32 %2262, 2
  %2264 = fmul fast float %2261, %2256
  %2265 = call float @dx.op.unary.f32(i32 7, float %2264)  ; Saturate(value)
  %2266 = fsub fast float 1.000000e+00, %2265
  %2267 = fmul fast float %1877, 5.000000e-01
  %2268 = fadd fast float %2267, 5.000000e-01
  %2269 = call float @dx.op.unary.f32(i32 7, float %2268)  ; Saturate(value)
  %2270 = fsub fast float 1.000000e+00, %2269
  %2271 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2266)  ; FMax(a,b)
  %2272 = fdiv fast float %2270, %2271
  %2273 = fsub fast float %2256, %215
  %2274 = call float @dx.op.unary.f32(i32 6, float %2273)  ; FAbs(value)
  %2275 = fmul fast float %2274, %2260
  %2276 = call float @dx.op.unary.f32(i32 7, float %2272)  ; Saturate(value)
  %2277 = fsub fast float 1.000000e+00, %2275
  %2278 = fmul fast float %2277, %2276
  %2279 = fadd fast float %2278, %2275
  %2280 = fmul fast float %2263, %2256
  %2281 = call float @dx.op.unary.f32(i32 7, float %2280)  ; Saturate(value)
  %2282 = fsub fast float 1.000000e+00, %2279
  %2283 = fmul fast float %2282, %2281
  %2284 = fadd fast float %2283, %2279
  %2285 = call float @dx.op.unary.f32(i32 7, float %2284)  ; Saturate(value)
  %2286 = fadd fast float %2258, -1.000000e+00
  %2287 = select i1 %2257, float -1.000000e+00, float %2286
  %2288 = fmul fast float %2285, %2287
  %2289 = fadd fast float %2288, 1.000000e+00
  %2290 = fsub fast float -0.000000e+00, %2288
  %2291 = fmul fast float %2250, %2290
  %2292 = fmul fast float %2251, %2290
  %2293 = fmul fast float %2252, %2290
  br label %2294

; <label>:2294                                    ; preds = %2247, %1824
  %2295 = phi float [ %2248, %2247 ], [ 0.000000e+00, %1824 ]
  %2296 = phi float [ %2289, %2247 ], [ 1.000000e+00, %1824 ]
  %2297 = phi float [ %2291, %2247 ], [ 0.000000e+00, %1824 ]
  %2298 = phi float [ %2292, %2247 ], [ 0.000000e+00, %1824 ]
  %2299 = phi float [ %2293, %2247 ], [ 0.000000e+00, %1824 ]
  %2300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2301 = extractvalue %dx.types.CBufRet.f32 %2300, 1
  %2302 = fsub fast float 1.000000e+00, %2296
  %2303 = fmul fast float %2302, %1878
  %2304 = fmul fast float %2303, %2301
  %2305 = fsub fast float %1878, %2304
  br i1 %1871, label %2306, label %2335, !dx.controlflow.hints !134

; <label>:2306                                    ; preds = %2294
  %2307 = fmul fast float %1879, %1868
  %2308 = fadd fast float %2307, %1869
  %2309 = call float @dx.op.unary.f32(i32 7, float %2308)  ; Saturate(value)
  %2310 = fmul fast float %1850, %2305
  %2311 = fsub fast float -0.000000e+00, %2310
  %2312 = fmul fast float %1851, %2305
  %2313 = fsub fast float -0.000000e+00, %2312
  %2314 = call float @dx.op.unary.f32(i32 21, float %2311)  ; Exp(value)
  %2315 = call float @dx.op.unary.f32(i32 21, float %2313)  ; Exp(value)
  %2316 = call float @dx.op.binary.f32(i32 35, float %1858, float %2314)  ; FMax(a,b)
  %2317 = call float @dx.op.binary.f32(i32 35, float %1858, float %2315)  ; FMax(a,b)
  %2318 = fsub fast float %2317, %2316
  %2319 = fmul fast float %2318, %2309
  %2320 = fadd fast float %2319, %2316
  %2321 = call float @dx.op.unary.f32(i32 7, float %2320)  ; Saturate(value)
  %2322 = fsub fast float %1855, %1860
  %2323 = fsub fast float %1856, %1861
  %2324 = fsub fast float %1857, %1862
  %2325 = fmul fast float %2309, %2322
  %2326 = fmul fast float %2309, %2323
  %2327 = fmul fast float %2309, %2324
  %2328 = fadd fast float %2325, %1860
  %2329 = fadd fast float %2326, %1861
  %2330 = fadd fast float %2327, %1862
  %2331 = fsub fast float 1.000000e+00, %2321
  %2332 = fmul fast float %2331, %2328
  %2333 = fmul fast float %2331, %2329
  %2334 = fmul fast float %2331, %2330
  br label %2394

; <label>:2335                                    ; preds = %2294
  %2336 = fmul fast float %2305, %1867
  %2337 = call float @dx.op.unary.f32(i32 7, float %2336)  ; Saturate(value)
  %2338 = fsub fast float 2.000000e+00, %2337
  %2339 = fmul fast float %2337, 9.921875e-01
  %2340 = fmul fast float %2339, %2338
  %2341 = fadd fast float %2340, 3.906250e-03
  %2342 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %25, float %2341, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2343 = extractvalue %dx.types.ResRet.f32 %2342, 0
  %2344 = fsub fast float %2337, %2343
  %2345 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2344)  ; FMax(a,b)
  %2346 = fmul fast float %1853, %215
  %2347 = call float @dx.op.unary.f32(i32 6, float %2346)  ; FAbs(value)
  %2348 = fcmp fast ogt float %2347, 0x3EB0C6F7A0000000
  br i1 %2348, label %2349, label %2355, !dx.controlflow.hints !135

; <label>:2349                                    ; preds = %2335
  %2350 = fmul fast float %2346, 0xBFF7154760000000
  %2351 = call float @dx.op.unary.f32(i32 21, float %2350)  ; Exp(value)
  %2352 = fsub fast float 1.000000e+00, %2351
  %2353 = fdiv fast float %2352, %2346
  %2354 = fmul fast float %2353, %1863
  br label %2355

; <label>:2355                                    ; preds = %2349, %2335
  %2356 = phi float [ %2354, %2349 ], [ %1863, %2335 ]
  %2357 = fadd fast float %2356, %1865
  %2358 = fmul fast float %2357, %2345
  %2359 = fmul fast float %1850, %2358
  %2360 = fsub fast float -0.000000e+00, %2359
  %2361 = fmul fast float %1851, %2358
  %2362 = fsub fast float -0.000000e+00, %2361
  %2363 = fmul fast float %1852, %2358
  %2364 = fsub fast float -0.000000e+00, %2363
  %2365 = call float @dx.op.unary.f32(i32 21, float %2360)  ; Exp(value)
  %2366 = call float @dx.op.unary.f32(i32 21, float %2362)  ; Exp(value)
  %2367 = call float @dx.op.unary.f32(i32 21, float %2364)  ; Exp(value)
  %2368 = fmul fast float %1879, %1879
  %2369 = fadd fast float %2368, 1.000000e+00
  %2370 = fmul fast float %2369, 0x3FAE8EC8A0000000
  %2371 = fmul fast float %2370, %1860
  %2372 = fmul fast float %2370, %1861
  %2373 = fmul fast float %2370, %1862
  %2374 = fmul fast float %1879, %1858
  %2375 = fsub fast float 1.000000e+00, %2374
  %2376 = fmul fast float %1858, %1858
  %2377 = fsub fast float 1.000000e+00, %2376
  %2378 = fmul fast float %2377, 0x3FB45F3060000000
  %2379 = fmul fast float %2375, %2375
  %2380 = fdiv fast float 1.000000e+00, %2379
  %2381 = fmul fast float %2378, %2380
  %2382 = fmul fast float %2381, %1855
  %2383 = fmul fast float %2381, %1856
  %2384 = fmul fast float %2381, %1857
  %2385 = fadd fast float %2382, %2371
  %2386 = fadd fast float %2383, %2372
  %2387 = fadd fast float %2384, %2373
  %2388 = fsub fast float 1.000000e+00, %2365
  %2389 = fsub fast float 1.000000e+00, %2366
  %2390 = fsub fast float 1.000000e+00, %2367
  %2391 = fmul fast float %2385, %2388
  %2392 = fmul fast float %2386, %2389
  %2393 = fmul fast float %2387, %2390
  br label %2394

; <label>:2394                                    ; preds = %2355, %2306
  %2395 = phi float [ %2332, %2306 ], [ %2391, %2355 ]
  %2396 = phi float [ %2333, %2306 ], [ %2392, %2355 ]
  %2397 = phi float [ %2334, %2306 ], [ %2393, %2355 ]
  %2398 = phi float [ %2321, %2306 ], [ %2365, %2355 ]
  %2399 = phi float [ %2321, %2306 ], [ %2366, %2355 ]
  %2400 = phi float [ %2321, %2306 ], [ %2367, %2355 ]
  br i1 %1887, label %2401, label %2599, !dx.controlflow.hints !136

; <label>:2401                                    ; preds = %2394
  %2402 = extractvalue %dx.types.CBufRet.f32 %2300, 0
  %2403 = fmul fast float %2402, %2302
  %2404 = fsub fast float %2297, %2395
  %2405 = fsub fast float %2298, %2396
  %2406 = fsub fast float %2299, %2397
  %2407 = fmul fast float %2403, %2404
  %2408 = fmul fast float %2403, %2405
  %2409 = fmul fast float %2403, %2406
  %2410 = fadd fast float %2407, %2395
  %2411 = fadd fast float %2408, %2396
  %2412 = fadd fast float %2409, %2397
  %2413 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2398)  ; FMax(a,b)
  %2414 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2399)  ; FMax(a,b)
  %2415 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2400)  ; FMax(a,b)
  %2416 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2296)  ; FMax(a,b)
  %2417 = call float @dx.op.binary.f32(i32 35, float %2295, float %2305)  ; FMax(a,b)
  %2418 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2417)  ; FMax(a,b)
  %2419 = fdiv fast float %2295, %2418
  %2420 = call float @dx.op.unary.f32(i32 7, float %2419)  ; Saturate(value)
  %2421 = fdiv fast float %2305, %2418
  %2422 = call float @dx.op.unary.f32(i32 7, float %2421)  ; Saturate(value)
  %2423 = fcmp fast une float %2416, 1.000000e+00
  br i1 %2423, label %2424, label %2437, !dx.controlflow.hints !137

; <label>:2424                                    ; preds = %2401
  %2425 = call float @dx.op.unary.f32(i32 23, float %2416)  ; Log(value)
  %2426 = fmul fast float %2425, 0x3FE62E4300000000
  %2427 = fmul fast float %2297, %2426
  %2428 = fsub fast float -0.000000e+00, %2427
  %2429 = fmul fast float %2298, %2426
  %2430 = fsub fast float -0.000000e+00, %2429
  %2431 = fmul fast float %2299, %2426
  %2432 = fsub fast float -0.000000e+00, %2431
  %2433 = fsub fast float 1.000000e+00, %2416
  %2434 = fdiv fast float %2428, %2433
  %2435 = fdiv fast float %2430, %2433
  %2436 = fdiv fast float %2432, %2433
  br label %2437

; <label>:2437                                    ; preds = %2424, %2401
  %2438 = phi float [ %2434, %2424 ], [ %2297, %2401 ]
  %2439 = phi float [ %2435, %2424 ], [ %2298, %2401 ]
  %2440 = phi float [ %2436, %2424 ], [ %2299, %2401 ]
  %2441 = phi float [ %2426, %2424 ], [ 0.000000e+00, %2401 ]
  %2442 = fcmp fast une float %2413, 1.000000e+00
  br i1 %2442, label %2443, label %2450, !dx.controlflow.hints !138

; <label>:2443                                    ; preds = %2437
  %2444 = call float @dx.op.unary.f32(i32 23, float %2413)  ; Log(value)
  %2445 = fmul fast float %2444, 0x3FE62E4300000000
  %2446 = fmul fast float %2410, %2445
  %2447 = fsub fast float -0.000000e+00, %2446
  %2448 = fsub fast float 1.000000e+00, %2413
  %2449 = fdiv fast float %2447, %2448
  br label %2450

; <label>:2450                                    ; preds = %2443, %2437
  %2451 = phi float [ %2449, %2443 ], [ %2410, %2437 ]
  %2452 = phi float [ %2445, %2443 ], [ 0.000000e+00, %2437 ]
  %2453 = fcmp fast une float %2414, 1.000000e+00
  br i1 %2453, label %2454, label %2461, !dx.controlflow.hints !138

; <label>:2454                                    ; preds = %2450
  %2455 = call float @dx.op.unary.f32(i32 23, float %2414)  ; Log(value)
  %2456 = fmul fast float %2455, 0x3FE62E4300000000
  %2457 = fmul fast float %2411, %2456
  %2458 = fsub fast float -0.000000e+00, %2457
  %2459 = fsub fast float 1.000000e+00, %2414
  %2460 = fdiv fast float %2458, %2459
  br label %2461

; <label>:2461                                    ; preds = %2454, %2450
  %2462 = phi float [ %2460, %2454 ], [ %2411, %2450 ]
  %2463 = phi float [ %2456, %2454 ], [ 0.000000e+00, %2450 ]
  %2464 = fcmp fast une float %2415, 1.000000e+00
  br i1 %2464, label %2465, label %2472, !dx.controlflow.hints !138

; <label>:2465                                    ; preds = %2461
  %2466 = call float @dx.op.unary.f32(i32 23, float %2415)  ; Log(value)
  %2467 = fmul fast float %2466, 0x3FE62E4300000000
  %2468 = fmul fast float %2412, %2467
  %2469 = fsub fast float -0.000000e+00, %2468
  %2470 = fsub fast float 1.000000e+00, %2415
  %2471 = fdiv fast float %2469, %2470
  br label %2472

; <label>:2472                                    ; preds = %2465, %2461
  %2473 = phi float [ %2471, %2465 ], [ %2412, %2461 ]
  %2474 = phi float [ %2467, %2465 ], [ 0.000000e+00, %2461 ]
  %2475 = fmul fast float %2438, %2422
  %2476 = fmul fast float %2439, %2422
  %2477 = fmul fast float %2440, %2422
  %2478 = fmul fast float %2441, %2422
  %2479 = fmul fast float %2451, %2420
  %2480 = fmul fast float %2462, %2420
  %2481 = fmul fast float %2473, %2420
  %2482 = fmul fast float %2452, %2420
  %2483 = fmul fast float %2463, %2420
  %2484 = fmul fast float %2474, %2420
  %2485 = fadd fast float %2479, %2475
  %2486 = fadd fast float %2480, %2476
  %2487 = fadd fast float %2481, %2477
  %2488 = fadd fast float %2482, %2478
  %2489 = fadd fast float %2483, %2478
  %2490 = fadd fast float %2484, %2478
  %2491 = fcmp fast une float %2488, 0.000000e+00
  br i1 %2491, label %2492, label %2499, !dx.controlflow.hints !139

; <label>:2492                                    ; preds = %2472
  %2493 = fmul fast float %2488, 0x3FF7154760000000
  %2494 = call float @dx.op.unary.f32(i32 21, float %2493)  ; Exp(value)
  %2495 = fsub fast float 1.000000e+00, %2494
  %2496 = fmul fast float %2485, %2495
  %2497 = fsub fast float -0.000000e+00, %2496
  %2498 = fdiv fast float %2497, %2488
  br label %2499

; <label>:2499                                    ; preds = %2492, %2472
  %2500 = phi float [ %2494, %2492 ], [ 1.000000e+00, %2472 ]
  %2501 = phi float [ %2498, %2492 ], [ %2485, %2472 ]
  %2502 = fcmp fast une float %2489, 0.000000e+00
  br i1 %2502, label %2503, label %2510, !dx.controlflow.hints !139

; <label>:2503                                    ; preds = %2499
  %2504 = fmul fast float %2489, 0x3FF7154760000000
  %2505 = call float @dx.op.unary.f32(i32 21, float %2504)  ; Exp(value)
  %2506 = fsub fast float 1.000000e+00, %2505
  %2507 = fmul fast float %2486, %2506
  %2508 = fsub fast float -0.000000e+00, %2507
  %2509 = fdiv fast float %2508, %2489
  br label %2510

; <label>:2510                                    ; preds = %2503, %2499
  %2511 = phi float [ %2505, %2503 ], [ 1.000000e+00, %2499 ]
  %2512 = phi float [ %2509, %2503 ], [ %2486, %2499 ]
  %2513 = fcmp fast une float %2490, 0.000000e+00
  br i1 %2513, label %2514, label %2521, !dx.controlflow.hints !139

; <label>:2514                                    ; preds = %2510
  %2515 = fmul fast float %2490, 0x3FF7154760000000
  %2516 = call float @dx.op.unary.f32(i32 21, float %2515)  ; Exp(value)
  %2517 = fsub fast float 1.000000e+00, %2516
  %2518 = fmul fast float %2487, %2517
  %2519 = fsub fast float -0.000000e+00, %2518
  %2520 = fdiv fast float %2519, %2490
  br label %2521

; <label>:2521                                    ; preds = %2514, %2510
  %2522 = phi float [ %2516, %2514 ], [ 1.000000e+00, %2510 ]
  %2523 = phi float [ %2520, %2514 ], [ %2487, %2510 ]
  %2524 = fcmp fast ogt float %2420, %2422
  br i1 %2524, label %2525, label %2545, !dx.controlflow.hints !140

; <label>:2525                                    ; preds = %2521
  %2526 = fsub fast float 1.000000e+00, %2422
  %2527 = fmul fast float %2438, %2526
  %2528 = fmul fast float %2439, %2526
  %2529 = fmul fast float %2440, %2526
  %2530 = fmul fast float %2441, %2526
  %2531 = fcmp fast une float %2530, 0.000000e+00
  br i1 %2531, label %2532, label %2583, !dx.controlflow.hints !141

; <label>:2532                                    ; preds = %2525
  %2533 = fmul fast float %2530, 0x3FF7154760000000
  %2534 = call float @dx.op.unary.f32(i32 21, float %2533)  ; Exp(value)
  %2535 = fsub fast float 1.000000e+00, %2534
  %2536 = fmul fast float %2527, %2535
  %2537 = fsub fast float -0.000000e+00, %2536
  %2538 = fmul fast float %2528, %2535
  %2539 = fsub fast float -0.000000e+00, %2538
  %2540 = fmul fast float %2529, %2535
  %2541 = fsub fast float -0.000000e+00, %2540
  %2542 = fdiv fast float %2537, %2530
  %2543 = fdiv fast float %2539, %2530
  %2544 = fdiv fast float %2541, %2530
  br label %2583

; <label>:2545                                    ; preds = %2521
  %2546 = fsub fast float 1.000000e+00, %2420
  %2547 = fmul fast float %2451, %2546
  %2548 = fmul fast float %2462, %2546
  %2549 = fmul fast float %2473, %2546
  %2550 = fmul fast float %2452, %2546
  %2551 = fmul fast float %2463, %2546
  %2552 = fmul fast float %2474, %2546
  %2553 = fcmp fast une float %2550, 0.000000e+00
  br i1 %2553, label %2554, label %2561, !dx.controlflow.hints !139

; <label>:2554                                    ; preds = %2545
  %2555 = fmul fast float %2550, 0x3FF7154760000000
  %2556 = call float @dx.op.unary.f32(i32 21, float %2555)  ; Exp(value)
  %2557 = fsub fast float 1.000000e+00, %2556
  %2558 = fmul fast float %2547, %2557
  %2559 = fsub fast float -0.000000e+00, %2558
  %2560 = fdiv fast float %2559, %2550
  br label %2561

; <label>:2561                                    ; preds = %2554, %2545
  %2562 = phi float [ %2560, %2554 ], [ %2547, %2545 ]
  %2563 = phi float [ %2556, %2554 ], [ 1.000000e+00, %2545 ]
  %2564 = fcmp fast une float %2551, 0.000000e+00
  br i1 %2564, label %2565, label %2572, !dx.controlflow.hints !139

; <label>:2565                                    ; preds = %2561
  %2566 = fmul fast float %2551, 0x3FF7154760000000
  %2567 = call float @dx.op.unary.f32(i32 21, float %2566)  ; Exp(value)
  %2568 = fsub fast float 1.000000e+00, %2567
  %2569 = fmul fast float %2548, %2568
  %2570 = fsub fast float -0.000000e+00, %2569
  %2571 = fdiv fast float %2570, %2551
  br label %2572

; <label>:2572                                    ; preds = %2565, %2561
  %2573 = phi float [ %2571, %2565 ], [ %2548, %2561 ]
  %2574 = phi float [ %2567, %2565 ], [ 1.000000e+00, %2561 ]
  %2575 = fcmp fast une float %2552, 0.000000e+00
  br i1 %2575, label %2576, label %2583, !dx.controlflow.hints !139

; <label>:2576                                    ; preds = %2572
  %2577 = fmul fast float %2552, 0x3FF7154760000000
  %2578 = call float @dx.op.unary.f32(i32 21, float %2577)  ; Exp(value)
  %2579 = fsub fast float 1.000000e+00, %2578
  %2580 = fmul fast float %2549, %2579
  %2581 = fsub fast float -0.000000e+00, %2580
  %2582 = fdiv fast float %2581, %2552
  br label %2583

; <label>:2583                                    ; preds = %2576, %2572, %2532, %2525
  %2584 = phi float [ %2582, %2576 ], [ %2544, %2532 ], [ %2529, %2525 ], [ %2549, %2572 ]
  %2585 = phi float [ %2573, %2576 ], [ %2543, %2532 ], [ %2528, %2525 ], [ %2573, %2572 ]
  %2586 = phi float [ %2562, %2576 ], [ %2542, %2532 ], [ %2527, %2525 ], [ %2562, %2572 ]
  %2587 = phi float [ %2578, %2576 ], [ %2534, %2532 ], [ 1.000000e+00, %2525 ], [ 1.000000e+00, %2572 ]
  %2588 = phi float [ %2574, %2576 ], [ %2534, %2532 ], [ 1.000000e+00, %2525 ], [ %2574, %2572 ]
  %2589 = phi float [ %2563, %2576 ], [ %2534, %2532 ], [ 1.000000e+00, %2525 ], [ %2563, %2572 ]
  %2590 = fmul fast float %2589, %2501
  %2591 = fmul fast float %2588, %2512
  %2592 = fmul fast float %2587, %2523
  %2593 = fadd fast float %2590, %2586
  %2594 = fadd fast float %2591, %2585
  %2595 = fadd fast float %2592, %2584
  %2596 = fmul fast float %2589, %2500
  %2597 = fmul fast float %2588, %2511
  %2598 = fmul fast float %2587, %2522
  br label %2599

; <label>:2599                                    ; preds = %2583, %2394
  %2600 = phi float [ %2598, %2583 ], [ %2400, %2394 ]
  %2601 = phi float [ %2597, %2583 ], [ %2399, %2394 ]
  %2602 = phi float [ %2596, %2583 ], [ %2398, %2394 ]
  %2603 = phi float [ %2595, %2583 ], [ %2397, %2394 ]
  %2604 = phi float [ %2594, %2583 ], [ %2396, %2394 ]
  %2605 = phi float [ %2593, %2583 ], [ %2395, %2394 ]
  %2606 = icmp eq i32 %1882, 0
  br i1 %2606, label %2655, label %2607, !dx.controlflow.hints !142

; <label>:2607                                    ; preds = %2599
  %2608 = and i32 %1881, 2
  %2609 = extractvalue %dx.types.CBufRet.i32 %1880, 0
  %2610 = icmp eq i32 %2609, 0
  br i1 %2610, label %2637, label %2611

; <label>:2611                                    ; preds = %2607
  br label %2612

; <label>:2612                                    ; preds = %2612, %2611
  %2613 = phi i32 [ %2629, %2612 ], [ 0, %2611 ]
  %2614 = add i32 %2613, 171
  %2615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 %2614)  ; CBufferLoadLegacy(handle,regIndex)
  %2616 = extractvalue %dx.types.CBufRet.f32 %2615, 0
  %2617 = extractvalue %dx.types.CBufRet.f32 %2615, 1
  %2618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2619 = extractvalue %dx.types.CBufRet.f32 %2618, 0
  %2620 = extractvalue %dx.types.CBufRet.f32 %2618, 1
  %2621 = fsub fast float %2616, %2619
  %2622 = fsub fast float %2617, %2620
  %2623 = extractvalue %dx.types.CBufRet.f32 %2615, 2
  %2624 = fmul fast float %2623, %2623
  %2625 = fsub fast float %203, %2621
  %2626 = fsub fast float %209, %2622
  %2627 = call float @dx.op.dot2.f32(i32 54, float %2625, float %2626, float %2625, float %2626)  ; Dot2(ax,ay,bx,by)
  %2628 = fcmp fast olt float %2627, %2624
  %2629 = add nuw nsw i32 %2613, 1
  %2630 = xor i1 %2628, true
  %2631 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2632 = extractvalue %dx.types.CBufRet.i32 %2631, 0
  %2633 = icmp ult i32 %2629, %2632
  %2634 = and i1 %2633, %2630
  br i1 %2634, label %2612, label %2635

; <label>:2635                                    ; preds = %2612
  %2636 = zext i1 %2628 to i32
  br label %2637

; <label>:2637                                    ; preds = %2635, %2607
  %2638 = phi i32 [ 0, %2607 ], [ %2636, %2635 ]
  %2639 = icmp ne i32 %2608, 0
  %2640 = icmp ne i32 %2638, 0
  %2641 = icmp eq i32 %2638, 0
  %2642 = select i1 %2639, i1 %2640, i1 %2641
  %2643 = and i1 %2642, %1886
  %2644 = select i1 %2643, float 1.000000e+00, float 0.000000e+00
  %2645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2646 = extractvalue %dx.types.CBufRet.f32 %2645, 0
  %2647 = extractvalue %dx.types.CBufRet.f32 %2645, 1
  %2648 = extractvalue %dx.types.CBufRet.f32 %2645, 2
  %2649 = fmul fast float %2644, %2646
  %2650 = fmul fast float %2644, %2647
  %2651 = fmul fast float %2644, %2648
  %2652 = fadd fast float %2649, %2605
  %2653 = fadd fast float %2650, %2604
  %2654 = fadd fast float %2651, %2603
  br label %2655

; <label>:2655                                    ; preds = %2637, %2599
  %2656 = phi float [ %2652, %2637 ], [ %2605, %2599 ]
  %2657 = phi float [ %2653, %2637 ], [ %2604, %2599 ]
  %2658 = phi float [ %2654, %2637 ], [ %2603, %2599 ]
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %186, i32 %187, i32 0, float %2656, float %2657, float %2658, float %2656, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %186, i32 %187, i32 1, float %2602, float %2601, float %2600, float %2602, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2659

; <label>:2659                                    ; preds = %2655, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

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
!dx.entryPoints = !{!42}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !30, !33, !37}
!5 = !{!6, !8, !9, !10, !11, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !28, !29}
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
!20 = !{i32 12, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 40, i32 1, i32 2, i32 0, !7}
!21 = !{i32 13, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 35, i32 1, i32 7, i32 0, !7}
!22 = !{i32 14, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 14, i32 1, i32 2, i32 0, !7}
!23 = !{i32 15, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 36, i32 1, i32 7, i32 0, !24}
!24 = !{i32 0, i32 14}
!25 = !{i32 16, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 34, i32 1, i32 11, i32 0, null}
!26 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 32, i32 1, i32 2, i32 0, !7}
!27 = !{i32 18, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 18, i32 1, i32 2, i32 0, !7}
!28 = !{i32 19, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 41, i32 1, i32 2, i32 0, !7}
!29 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 21, i32 1, i32 11, i32 0, null}
!30 = !{!31, !32}
!31 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!32 = !{i32 1, %"class.RWTexture2DArray<vector<float, 3> >"* undef, !"", i32 0, i32 1, i32 1, i32 7, i1 false, i1 false, i1 false, !7}
!33 = !{!34, !35, !36}
!34 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!35 = !{i32 1, %hostlayout.DeferredEffectLightGlobalConsts* undef, !"", i32 0, i32 0, i32 1, i32 80, null}
!36 = !{i32 2, %DeferredEffectLightConsts_decl* undef, !"", i32 0, i32 1, i32 1, i32 240, null}
!37 = !{!38, !39, !40, !41}
!38 = !{i32 0, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!39 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!40 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!41 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!42 = !{void ()* @cs_deferred_effect_lighting_2, !"cs_deferred_effect_lighting_2", null, !4, !43}
!43 = !{i32 0, i64 272, i32 4, !44}
!44 = !{i32 16, i32 2, i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 1}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 1}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 1}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 1}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 1}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = !{!60, !60, i64 0}
!60 = !{!"int", !61, i64 0}
!61 = !{!"omnipotent char", !62, i64 0}
!62 = !{!"Simple C/C++ TBAA"}
!63 = !{!64, !66}
!64 = distinct !{!64, !65, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_Sprite@@ULightIteratorOutput_Sprite@@@Z: %lightingOutput"}
!65 = distinct !{!65, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_Sprite@@ULightIteratorOutput_Sprite@@@Z"}
!66 = distinct !{!66, !67, !"\01?Lights_Iterate_Sprite@@YAXULocalAttributes@@ULightIteratorInput_Sprite@@ULightIteratorOutput_Sprite@@@Z: %lightingOutput"}
!67 = distinct !{!67, !"\01?Lights_Iterate_Sprite@@YAXULocalAttributes@@ULightIteratorInput_Sprite@@ULightIteratorOutput_Sprite@@@Z"}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 2}
!73 = !{!74, !74, i64 0}
!74 = !{!"float", !61, i64 0}
!75 = distinct !{!75, !76}
!76 = !{!"llvm.loop.unroll.disable"}
!77 = distinct !{!77, !76}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 1}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 1}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 2}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 2}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 1}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 2}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 2}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 2}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 2}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 2}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 2}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 2}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 1}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 1}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 1}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 1}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 2}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 2}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 2}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 2}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 2}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 2}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 2}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 2}
!102 = !{!103, !105, !107, !108, !110}
!103 = distinct !{!103, !104, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!104 = distinct !{!104, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!105 = distinct !{!105, !106, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!106 = distinct !{!106, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!107 = distinct !{!107, !106, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!108 = distinct !{!108, !109, !"\01?GetFog@@YAXV?$vector@M$02@@AIAV1@1_N@Z: %extinction"}
!109 = distinct !{!109, !"\01?GetFog@@YAXV?$vector@M$02@@AIAV1@1_N@Z"}
!110 = distinct !{!110, !109, !"\01?GetFog@@YAXV?$vector@M$02@@AIAV1@1_N@Z: %scattering"}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 2}
!112 = !{!113}
!113 = distinct !{!113, !114, !"\01?sort@@YAXAIAM00@Z: %c"}
!114 = distinct !{!114, !"\01?sort@@YAXAIAM00@Z"}
!115 = !{!116, !117, !103, !105, !107, !108, !110}
!116 = distinct !{!116, !114, !"\01?sort@@YAXAIAM00@Z: %a"}
!117 = distinct !{!117, !114, !"\01?sort@@YAXAIAM00@Z: %b"}
!118 = !{!117}
!119 = !{!116, !113, !103, !105, !107, !108, !110}
!120 = !{!116}
!121 = !{!117, !113, !103, !105, !107, !108, !110}
!122 = !{!123}
!123 = distinct !{!123, !124, !"\01?sort@@YAXAIAM00@Z: %c"}
!124 = distinct !{!124, !"\01?sort@@YAXAIAM00@Z"}
!125 = !{!126, !127, !103, !105, !107, !108, !110}
!126 = distinct !{!126, !124, !"\01?sort@@YAXAIAM00@Z: %a"}
!127 = distinct !{!127, !124, !"\01?sort@@YAXAIAM00@Z: %b"}
!128 = !{!127}
!129 = !{!126, !123, !103, !105, !107, !108, !110}
!130 = !{!126}
!131 = !{!127, !123, !103, !105, !107, !108, !110}
!132 = distinct !{!132, !"dx.controlflow.hints", i32 2}
!133 = distinct !{!133, !"dx.controlflow.hints", i32 2}
!134 = distinct !{!134, !"dx.controlflow.hints", i32 1}
!135 = distinct !{!135, !"dx.controlflow.hints", i32 2}
!136 = distinct !{!136, !"dx.controlflow.hints", i32 1}
!137 = distinct !{!137, !"dx.controlflow.hints", i32 1}
!138 = distinct !{!138, !"dx.controlflow.hints", i32 1}
!139 = distinct !{!139, !"dx.controlflow.hints", i32 1}
!140 = distinct !{!140, !"dx.controlflow.hints", i32 2}
!141 = distinct !{!141, !"dx.controlflow.hints", i32 1}
!142 = distinct !{!142, !"dx.controlflow.hints", i32 1}

