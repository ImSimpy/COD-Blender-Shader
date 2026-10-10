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
; shader hash: 3b951792e8ce19a6ead62bfd6deeecdf
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
;                                   texture    byte         r/o      T1            t28     1
;                                   texture  struct         r/o      T2            t37     1
;                                   texture     f32     2darray      T3            t29     1
;                                   texture     f32          2d      T4            t39     1
;                                   texture     f32          2d      T5            t13     1
;                                   texture     f32          2d      T6            t38     1
;                                   texture    byte         r/o      T7            t19     1
;                                   texture    byte         r/o      T8            t20     1
;                                   texture     f32          1d      T9            t26     1
;                                   texture     f32          2d     T10            t40     1
;                                   texture     f32     2darray     T11            t35     1
;                                   texture     f32          2d     T12            t14     1
;                                   textureunorm_f32     2darray     T13            t36     1
;                                   texture    byte         r/o     T14            t34     1
;                                   texture     f32          2d     T15            t32     1
;                                   texture     f32          2d     T16            t18     1
;                                   texture     f32          2d     T17            t41     1
;                                   texture    byte         r/o     T18            t21     1
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
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 41, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 36, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 40, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 26, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 39, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 29, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 28, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = alloca [4 x i32], align 4
  %29 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %30 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %31 = call i32 @dx.op.threadId.i32(i32 93, i32 2)  ; ThreadId(component)
  %32 = alloca [12 x float], align 4
  %33 = alloca [12 x float], align 4
  %34 = alloca [4 x float], align 4
  %35 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %36 = extractvalue %dx.types.CBufRet.i32 %35, 2
  %37 = add i32 %36, 6
  %38 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %37, i32 0)  ; BufferLoad(srv,index,wot)
  %39 = extractvalue %dx.types.ResRet.i32 %38, 0
  %40 = icmp ult i32 %29, %39
  br i1 %40, label %41, label %1923, !dx.controlflow.hints !42

; <label>:41                                      ; preds = %0
  %42 = uitofp i32 %30 to float
  %43 = uitofp i32 %31 to float
  %44 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %45 = extractvalue %dx.types.CBufRet.f32 %44, 1
  %46 = fdiv fast float %42, %45
  %47 = fdiv fast float %43, %45
  %48 = extractvalue %dx.types.CBufRet.f32 %44, 2
  %49 = fadd fast float %48, %46
  %50 = fadd fast float %48, %47
  %51 = add i32 %36, 9
  %52 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 %51)  ; CBufferLoadLegacy(handle,regIndex)
  %53 = extractvalue %dx.types.CBufRet.i32 %52, 2
  %54 = add i32 %53, %29
  %55 = shl i32 %54, 5
  %56 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %55, i32 undef)  ; BufferLoad(srv,index,wot)
  %57 = extractvalue %dx.types.ResRet.i32 %56, 0
  %58 = extractvalue %dx.types.ResRet.i32 %56, 1
  %59 = extractvalue %dx.types.ResRet.i32 %56, 2
  %60 = extractvalue %dx.types.ResRet.i32 %56, 3
  %61 = lshr i32 %60, 14
  %62 = and i32 %61, 16383
  %63 = and i32 %60, 16383
  %64 = bitcast i32 %57 to float
  %65 = bitcast i32 %58 to float
  %66 = bitcast i32 %59 to float
  %67 = and i32 %60, 536870912
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %108, label %69, !dx.controlflow.hints !43

; <label>:69                                      ; preds = %41
  %70 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %71 = extractvalue %dx.types.CBufRet.f32 %70, 2
  %72 = extractvalue %dx.types.CBufRet.f32 %70, 3
  %73 = fmul fast float %71, %64
  %74 = fmul fast float %72, %65
  %75 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %76 = extractvalue %dx.types.CBufRet.f32 %75, 0
  %77 = extractvalue %dx.types.CBufRet.f32 %75, 1
  %78 = fadd fast float %73, %76
  %79 = fadd fast float %74, %77
  %80 = call float @dx.op.unary.f32(i32 7, float %78)  ; Saturate(value)
  %81 = call float @dx.op.unary.f32(i32 7, float %79)  ; Saturate(value)
  %82 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %22, float %80, float %81, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %83 = extractvalue %dx.types.ResRet.f32 %82, 0
  %84 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %85 = extractvalue %dx.types.CBufRet.f32 %84, 0
  %86 = fmul fast float %85, %83
  %87 = fsub fast float %78, %80
  %88 = fsub fast float %79, %81
  %89 = extractvalue %dx.types.CBufRet.f32 %70, 0
  %90 = extractvalue %dx.types.CBufRet.f32 %70, 1
  %91 = fmul fast float %89, %87
  %92 = fmul fast float %90, %88
  %93 = fmul fast float %91, %91
  %94 = fmul fast float %92, %92
  %95 = fadd fast float %93, %94
  %96 = call float @dx.op.unary.f32(i32 24, float %95)  ; Sqrt(value)
  %97 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %98 = extractvalue %dx.types.CBufRet.f32 %97, 3
  %99 = fmul fast float %98, %96
  %100 = call float @dx.op.unary.f32(i32 7, float %99)  ; Saturate(value)
  %101 = extractvalue %dx.types.CBufRet.f32 %97, 2
  %102 = fsub fast float %101, %86
  %103 = fmul fast float %102, %100
  %104 = extractvalue %dx.types.CBufRet.f32 %84, 1
  %105 = fadd fast float %86, %66
  %106 = fadd fast float %105, %104
  %107 = fadd fast float %106, %103
  br label %108

; <label>:108                                     ; preds = %69, %41
  %109 = phi float [ %107, %69 ], [ %66, %41 ]
  %110 = and i32 %60, 268435456
  %111 = icmp ne i32 %110, 0
  %112 = or i32 %55, 16
  %113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %112, i32 undef)  ; BufferLoad(srv,index,wot)
  %114 = extractvalue %dx.types.ResRet.i32 %113, 0
  %115 = extractvalue %dx.types.ResRet.i32 %113, 1
  %116 = extractvalue %dx.types.ResRet.i32 %113, 2
  %117 = extractvalue %dx.types.ResRet.i32 %113, 3
  %118 = and i32 %114, 65535
  %119 = call float @dx.op.legacyF16ToF32(i32 131, i32 %118)  ; LegacyF16ToF32(value)
  %120 = lshr i32 %114, 16
  %121 = call float @dx.op.legacyF16ToF32(i32 131, i32 %120)  ; LegacyF16ToF32(value)
  %122 = and i32 %115, 1023
  %123 = uitofp i32 %122 to float
  %124 = lshr i32 %115, 10
  %125 = and i32 %124, 1023
  %126 = uitofp i32 %125 to float
  %127 = lshr i32 %115, 20
  %128 = and i32 %127, 1023
  %129 = uitofp i32 %128 to float
  %130 = fmul fast float %123, 0x3F60040100000000
  %131 = fmul fast float %126, 0x3F60040100000000
  %132 = fmul fast float %129, 0x3F60040100000000
  %133 = fadd fast float %130, -1.000000e+00
  %134 = fadd fast float %131, -1.000000e+00
  %135 = fadd fast float %132, -1.000000e+00
  %136 = and i32 %116, 1023
  %137 = uitofp i32 %136 to float
  %138 = lshr i32 %116, 10
  %139 = and i32 %138, 1023
  %140 = uitofp i32 %139 to float
  %141 = lshr i32 %116, 20
  %142 = and i32 %141, 1023
  %143 = uitofp i32 %142 to float
  %144 = fmul fast float %137, 0x3F60040100000000
  %145 = fmul fast float %140, 0x3F60040100000000
  %146 = fmul fast float %143, 0x3F60040100000000
  %147 = fadd fast float %144, -1.000000e+00
  %148 = fadd fast float %145, -1.000000e+00
  %149 = fadd fast float %146, -1.000000e+00
  %150 = and i32 %117, 65535
  %151 = call float @dx.op.legacyF16ToF32(i32 131, i32 %150)  ; LegacyF16ToF32(value)
  %152 = lshr i32 %117, 16
  %153 = call float @dx.op.legacyF16ToF32(i32 131, i32 %152)  ; LegacyF16ToF32(value)
  %154 = call float @dx.op.unary.f32(i32 13, float %151)  ; Sin(value)
  %155 = call float @dx.op.unary.f32(i32 12, float %151)  ; Cos(value)
  %156 = fmul fast float %155, %133
  %157 = fmul fast float %155, %134
  %158 = fmul fast float %155, %135
  %159 = fmul fast float %154, %147
  %160 = fmul fast float %148, %154
  %161 = fmul fast float %149, %154
  %162 = fadd fast float %156, %159
  %163 = fadd fast float %157, %160
  %164 = fadd fast float %158, %161
  %165 = fmul fast float %162, %119
  %166 = fmul fast float %163, %119
  %167 = fmul fast float %164, %119
  %168 = fmul fast float %154, %133
  %169 = fmul fast float %134, %154
  %170 = fmul fast float %135, %154
  %171 = fmul fast float %155, %147
  %172 = fmul fast float %155, %148
  %173 = fmul fast float %155, %149
  %174 = fsub fast float %168, %171
  %175 = fsub fast float %169, %172
  %176 = fsub fast float %170, %173
  %177 = fmul fast float %174, %121
  %178 = fmul fast float %175, %121
  %179 = fmul fast float %176, %121
  %180 = add i32 %62, %30
  %181 = add i32 %63, %31
  %182 = fmul fast float %165, %49
  %183 = fmul fast float %166, %49
  %184 = fmul fast float %167, %49
  %185 = fmul fast float %177, %50
  %186 = fmul fast float %178, %50
  %187 = fmul fast float %179, %50
  %188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %189 = extractvalue %dx.types.CBufRet.f32 %188, 0
  %190 = extractvalue %dx.types.CBufRet.f32 %188, 1
  %191 = extractvalue %dx.types.CBufRet.f32 %188, 2
  %192 = fadd fast float %185, %182
  %193 = fmul fast float %192, 2.000000e+00
  %194 = fsub fast float %64, %189
  %195 = fsub fast float %194, %165
  %196 = fsub fast float %195, %177
  %197 = fadd fast float %196, %193
  %198 = fadd fast float %186, %183
  %199 = fmul fast float %198, 2.000000e+00
  %200 = fsub fast float %65, %190
  %201 = fsub fast float %200, %166
  %202 = fsub fast float %201, %178
  %203 = fadd fast float %202, %199
  %204 = fadd fast float %187, %184
  %205 = fmul fast float %204, 2.000000e+00
  %206 = fsub fast float %109, %191
  %207 = fsub fast float %206, %167
  %208 = fsub fast float %207, %179
  %209 = fadd fast float %208, %205
  %210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %211 = extractvalue %dx.types.CBufRet.f32 %210, 0
  %212 = extractvalue %dx.types.CBufRet.f32 %210, 1
  %213 = extractvalue %dx.types.CBufRet.f32 %210, 2
  %214 = extractvalue %dx.types.CBufRet.f32 %210, 3
  %215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %216 = extractvalue %dx.types.CBufRet.f32 %215, 0
  %217 = extractvalue %dx.types.CBufRet.f32 %215, 1
  %218 = extractvalue %dx.types.CBufRet.f32 %215, 2
  %219 = extractvalue %dx.types.CBufRet.f32 %215, 3
  %220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %221 = extractvalue %dx.types.CBufRet.f32 %220, 0
  %222 = extractvalue %dx.types.CBufRet.f32 %220, 1
  %223 = extractvalue %dx.types.CBufRet.f32 %220, 2
  %224 = extractvalue %dx.types.CBufRet.f32 %220, 3
  %225 = fmul fast float %197, %211
  %226 = call float @dx.op.tertiary.f32(i32 46, float %203, float %212, float %225)  ; FMad(a,b,c)
  %227 = call float @dx.op.tertiary.f32(i32 46, float %209, float %213, float %226)  ; FMad(a,b,c)
  %228 = fadd fast float %227, %214
  %229 = fmul fast float %197, %216
  %230 = call float @dx.op.tertiary.f32(i32 46, float %203, float %217, float %229)  ; FMad(a,b,c)
  %231 = call float @dx.op.tertiary.f32(i32 46, float %209, float %218, float %230)  ; FMad(a,b,c)
  %232 = fadd fast float %231, %219
  %233 = fmul fast float %197, %221
  %234 = call float @dx.op.tertiary.f32(i32 46, float %203, float %222, float %233)  ; FMad(a,b,c)
  %235 = call float @dx.op.tertiary.f32(i32 46, float %209, float %223, float %234)  ; FMad(a,b,c)
  %236 = fadd fast float %235, %224
  %237 = fdiv fast float %228, %236
  %238 = fdiv fast float %232, %236
  %239 = call float @dx.op.binary.f32(i32 35, float %237, float 0xBFEFF7CEE0000000)  ; FMax(a,b)
  %240 = call float @dx.op.binary.f32(i32 35, float %238, float 0xBFEFF7CEE0000000)  ; FMax(a,b)
  %241 = call float @dx.op.binary.f32(i32 36, float %239, float 0x3FEFF7CEE0000000)  ; FMin(a,b)
  %242 = call float @dx.op.binary.f32(i32 36, float %240, float 0x3FEFF7CEE0000000)  ; FMin(a,b)
  %243 = fadd fast float %241, 1.000000e+00
  %244 = fsub fast float 1.000000e+00, %242
  %245 = fmul fast float %243, 5.000000e-01
  %246 = fmul fast float %244, 5.000000e-01
  %247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %248 = extractvalue %dx.types.CBufRet.f32 %247, 0
  %249 = extractvalue %dx.types.CBufRet.f32 %247, 1
  %250 = fmul fast float %245, %248
  %251 = fmul fast float %246, %249
  %252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 235)  ; CBufferLoadLegacy(handle,regIndex)
  %253 = extractvalue %dx.types.CBufRet.f32 %252, 2
  %254 = call float @dx.op.binary.f32(i32 35, float %236, float %253)  ; FMax(a,b)
  %255 = extractvalue %dx.types.CBufRet.f32 %247, 2
  %256 = extractvalue %dx.types.CBufRet.f32 %247, 3
  %257 = fmul fast float %250, 2.000000e+00
  %258 = fmul fast float %257, %255
  %259 = fmul fast float %251, 2.000000e+00
  %260 = fmul fast float %259, %256
  %261 = fsub fast float 1.000000e+00, %258
  %262 = fsub fast float 1.000000e+00, %260
  %263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %264 = extractvalue %dx.types.CBufRet.f32 %263, 0
  %265 = extractvalue %dx.types.CBufRet.f32 %263, 1
  %266 = extractvalue %dx.types.CBufRet.f32 %263, 2
  %267 = fmul fast float %261, %264
  %268 = fmul fast float %261, %265
  %269 = fmul fast float %261, %266
  %270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %271 = extractvalue %dx.types.CBufRet.f32 %270, 0
  %272 = extractvalue %dx.types.CBufRet.f32 %270, 1
  %273 = extractvalue %dx.types.CBufRet.f32 %270, 2
  %274 = fmul fast float %262, %271
  %275 = fmul fast float %262, %272
  %276 = fmul fast float %262, %273
  %277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %278 = extractvalue %dx.types.CBufRet.f32 %277, 0
  %279 = extractvalue %dx.types.CBufRet.f32 %277, 1
  %280 = extractvalue %dx.types.CBufRet.f32 %277, 2
  %281 = fadd fast float %274, %278
  %282 = fadd fast float %281, %267
  %283 = fadd fast float %275, %279
  %284 = fadd fast float %283, %268
  %285 = fadd fast float %276, %280
  %286 = fadd fast float %285, %269
  %287 = fmul fast float %282, %254
  %288 = fmul fast float %284, %254
  %289 = fmul fast float %286, %254
  %290 = fsub fast float -0.000000e+00, %289
  %291 = fadd fast float %287, %189
  %292 = fadd fast float %288, %190
  %293 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %294 = extractvalue %dx.types.CBufRet.i32 %293, 3
  %295 = and i32 %294, 3
  %296 = icmp ne i32 %295, 0
  %297 = and i32 %294, 4
  %298 = icmp eq i32 %297, 0
  %299 = and i1 %296, %298
  %300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %301 = extractvalue %dx.types.CBufRet.f32 %300, 2
  %302 = fmul fast float %301, 0x3FE3C6EF40000000
  %303 = frem fast float %250, 2.560000e+02
  %304 = frem fast float %251, 2.560000e+02
  %305 = fptoui float %303 to i32
  %306 = fptoui float %304 to i32
  %307 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %10, i32 0, i32 %305, i32 %306, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %308 = extractvalue %dx.types.ResRet.f32 %307, 0
  %309 = fadd fast float %308, %302
  %310 = call float @dx.op.unary.f32(i32 22, float %309)  ; Frc(value)
  %311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %312 = extractvalue %dx.types.CBufRet.f32 %311, 0
  %313 = extractvalue %dx.types.CBufRet.f32 %311, 1
  %314 = fsub fast float %291, %312
  %315 = fsub fast float %292, %313
  %316 = fmul fast float %314, %314
  %317 = fmul fast float %315, %315
  %318 = fadd fast float %316, %317
  %319 = call float @dx.op.unary.f32(i32 24, float %318)  ; Sqrt(value)
  %320 = extractvalue %dx.types.CBufRet.f32 %311, 2
  %321 = fcmp fast olt float %319, %320
  br i1 %321, label %322, label %391, !dx.controlflow.hints !44

; <label>:322                                     ; preds = %108
  %323 = fadd fast float %289, %191
  %324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %325 = extractvalue %dx.types.CBufRet.f32 %324, 0
  %326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %327 = extractvalue %dx.types.CBufRet.f32 %326, 0
  %328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %329 = extractvalue %dx.types.CBufRet.f32 %328, 0
  %330 = extractvalue %dx.types.CBufRet.f32 %324, 1
  %331 = extractvalue %dx.types.CBufRet.f32 %326, 1
  %332 = extractvalue %dx.types.CBufRet.f32 %328, 1
  %333 = extractvalue %dx.types.CBufRet.f32 %324, 3
  %334 = extractvalue %dx.types.CBufRet.f32 %326, 3
  %335 = extractvalue %dx.types.CBufRet.f32 %328, 3
  %336 = fadd fast float %333, %291
  %337 = fadd fast float %334, %292
  %338 = fadd fast float %323, %335
  %339 = fmul fast float %336, %325
  %340 = call float @dx.op.tertiary.f32(i32 46, float %337, float %327, float %339)  ; FMad(a,b,c)
  %341 = call float @dx.op.tertiary.f32(i32 46, float %338, float %329, float %340)  ; FMad(a,b,c)
  %342 = fmul fast float %336, %330
  %343 = call float @dx.op.tertiary.f32(i32 46, float %337, float %331, float %342)  ; FMad(a,b,c)
  %344 = call float @dx.op.tertiary.f32(i32 46, float %338, float %332, float %343)  ; FMad(a,b,c)
  %345 = fsub fast float %341, %333
  %346 = fsub fast float %344, %334
  %347 = fsub fast float %345, %312
  %348 = fadd fast float %347, %320
  %349 = fsub fast float %346, %313
  %350 = fadd fast float %349, %320
  %351 = extractvalue %dx.types.CBufRet.f32 %311, 3
  %352 = fmul fast float %348, %351
  %353 = fmul fast float %350, %351
  %354 = call float @dx.op.unary.f32(i32 7, float %352)  ; Saturate(value)
  %355 = call float @dx.op.unary.f32(i32 7, float %353)  ; Saturate(value)
  %356 = fsub fast float 1.000000e+00, %354
  %357 = fsub fast float 1.000000e+00, %355
  %358 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %22, float %356, float %357, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %359 = extractvalue %dx.types.ResRet.f32 %358, 0
  %360 = fcmp fast ugt float %359, 0.000000e+00
  br i1 %360, label %361, label %391, !dx.controlflow.hints !45

; <label>:361                                     ; preds = %322
  %362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %363 = extractvalue %dx.types.CBufRet.f32 %362, 2
  %364 = fmul fast float %363, %359
  %365 = extractvalue %dx.types.CBufRet.f32 %362, 3
  %366 = fadd fast float %365, %364
  %367 = extractvalue %dx.types.CBufRet.f32 %328, 2
  %368 = fadd fast float %366, %335
  %369 = fmul fast float %341, %329
  %370 = call float @dx.op.tertiary.f32(i32 46, float %344, float %332, float %369)  ; FMad(a,b,c)
  %371 = call float @dx.op.tertiary.f32(i32 46, float %368, float %367, float %370)  ; FMad(a,b,c)
  %372 = fsub fast float %371, %335
  %373 = fsub fast float %372, %191
  %374 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %22, float %356, float %357, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %375 = extractvalue %dx.types.ResRet.f32 %374, 0
  %376 = extractvalue %dx.types.ResRet.f32 %374, 1
  %377 = extractvalue %dx.types.ResRet.f32 %374, 2
  %378 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %22, float %356, float %357, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %379 = extractvalue %dx.types.ResRet.f32 %378, 0
  %380 = extractvalue %dx.types.ResRet.f32 %378, 1
  %381 = extractvalue %dx.types.ResRet.f32 %378, 2
  %382 = fadd fast float %379, %375
  %383 = fmul fast float %382, 0x3F847AE140000000
  %384 = fadd fast float %380, %376
  %385 = fmul fast float %384, 0x3F847AE140000000
  %386 = fadd fast float %381, %377
  %387 = fmul fast float %386, 0x3F847AE140000000
  %388 = fmul float %383, 0x3FF7154760000000
  %389 = fmul float %385, 0x3FF7154760000000
  %390 = fmul float %387, 0x3FF7154760000000
  br label %391

; <label>:391                                     ; preds = %361, %322, %108
  %392 = phi float [ 0.000000e+00, %108 ], [ %388, %361 ], [ 0.000000e+00, %322 ]
  %393 = phi float [ 0.000000e+00, %108 ], [ %389, %361 ], [ 0.000000e+00, %322 ]
  %394 = phi float [ 0.000000e+00, %108 ], [ %390, %361 ], [ 0.000000e+00, %322 ]
  %395 = phi float [ 0.000000e+00, %108 ], [ %373, %361 ], [ -1.310720e+05, %322 ]
  %396 = phi i32 [ 0, %108 ], [ 1, %361 ], [ 0, %322 ]
  %397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %398 = extractvalue %dx.types.CBufRet.f32 %397, 3
  %399 = fcmp fast oeq float %398, 0.000000e+00
  br i1 %399, label %1338, label %400, !dx.controlflow.hints !46

; <label>:400                                     ; preds = %391
  %401 = extractvalue %dx.types.CBufRet.f32 %397, 0
  %402 = extractvalue %dx.types.CBufRet.f32 %397, 1
  %403 = extractvalue %dx.types.CBufRet.f32 %397, 2
  %404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %405 = extractvalue %dx.types.CBufRet.f32 %404, 0
  %406 = extractvalue %dx.types.CBufRet.f32 %404, 1
  %407 = extractvalue %dx.types.CBufRet.f32 %404, 2
  %408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %409 = extractvalue %dx.types.CBufRet.f32 %408, 0
  %410 = extractvalue %dx.types.CBufRet.f32 %408, 1
  %411 = call float @dx.op.dot3.f32(i32 55, float %405, float %406, float %407, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %412 = select i1 %299, float %409, float %405
  %413 = select i1 %299, float %411, float %406
  %414 = select i1 %299, float %410, float %407
  %415 = fcmp fast olt float %398, 0.000000e+00
  br i1 %415, label %1065, label %416, !dx.controlflow.hints !47

; <label>:416                                     ; preds = %400
  %417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %418 = extractvalue %dx.types.CBufRet.f32 %417, 0
  %419 = extractvalue %dx.types.CBufRet.f32 %417, 1
  %420 = extractvalue %dx.types.CBufRet.f32 %417, 2
  %421 = extractvalue %dx.types.CBufRet.f32 %417, 3
  %422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %423 = extractvalue %dx.types.CBufRet.f32 %422, 0
  %424 = extractvalue %dx.types.CBufRet.f32 %422, 1
  %425 = extractvalue %dx.types.CBufRet.f32 %422, 2
  %426 = extractvalue %dx.types.CBufRet.f32 %422, 3
  %427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %428 = extractvalue %dx.types.CBufRet.f32 %427, 0
  %429 = extractvalue %dx.types.CBufRet.f32 %427, 1
  %430 = extractvalue %dx.types.CBufRet.f32 %427, 2
  %431 = extractvalue %dx.types.CBufRet.f32 %427, 3
  %432 = fmul fast float %418, %287
  %433 = call float @dx.op.tertiary.f32(i32 46, float %288, float %419, float %432)  ; FMad(a,b,c)
  %434 = call float @dx.op.tertiary.f32(i32 46, float %289, float %420, float %433)  ; FMad(a,b,c)
  %435 = fadd fast float %434, %421
  %436 = fmul fast float %423, %287
  %437 = call float @dx.op.tertiary.f32(i32 46, float %288, float %424, float %436)  ; FMad(a,b,c)
  %438 = call float @dx.op.tertiary.f32(i32 46, float %289, float %425, float %437)  ; FMad(a,b,c)
  %439 = fadd fast float %438, %426
  %440 = fmul fast float %428, %287
  %441 = call float @dx.op.tertiary.f32(i32 46, float %288, float %429, float %440)  ; FMad(a,b,c)
  %442 = call float @dx.op.tertiary.f32(i32 46, float %289, float %430, float %441)  ; FMad(a,b,c)
  %443 = fadd fast float %442, %431
  %444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %445 = extractvalue %dx.types.CBufRet.f32 %444, 0
  %446 = extractvalue %dx.types.CBufRet.f32 %444, 1
  %447 = extractvalue %dx.types.CBufRet.f32 %444, 3
  %448 = fmul fast float %447, %435
  %449 = fmul fast float %447, %439
  %450 = fadd fast float %448, %445
  %451 = fadd fast float %449, %446
  %452 = extractvalue %dx.types.CBufRet.f32 %444, 2
  %453 = fcmp fast olt float %452, 0.000000e+00
  %454 = fsub fast float -0.000000e+00, %452
  %455 = select i1 %453, float %454, float %452
  %456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %457 = extractvalue %dx.types.CBufRet.f32 %456, 1
  %458 = fadd fast float %455, %457
  %459 = fcmp fast ogt float %458, 0.000000e+00
  br i1 %459, label %460, label %492, !dx.controlflow.hints !48

; <label>:460                                     ; preds = %416
  %461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %462 = extractvalue %dx.types.CBufRet.f32 %461, 1
  %463 = fsub fast float %462, %443
  %464 = extractvalue %dx.types.CBufRet.f32 %461, 2
  %465 = fmul fast float %463, %464
  %466 = fsub fast float 1.000000e+00, %465
  %467 = call float @dx.op.unary.f32(i32 7, float %466)  ; Saturate(value)
  %468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %469 = extractvalue %dx.types.CBufRet.f32 %468, 0
  %470 = extractvalue %dx.types.CBufRet.f32 %468, 1
  %471 = fsub fast float %450, %469
  %472 = fsub fast float %451, %470
  %473 = fcmp fast olt float %471, 0.000000e+00
  %474 = fcmp fast olt float %472, 0.000000e+00
  %475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %476 = extractvalue %dx.types.CBufRet.f32 %475, 0
  %477 = extractvalue %dx.types.CBufRet.f32 %475, 1
  %478 = extractvalue %dx.types.CBufRet.f32 %475, 2
  %479 = extractvalue %dx.types.CBufRet.f32 %475, 3
  %480 = select i1 %473, float %476, float %478
  %481 = select i1 %474, float %477, float %479
  %482 = fmul fast float %480, %471
  %483 = fmul fast float %481, %472
  %484 = call float @dx.op.unary.f32(i32 6, float %482)  ; FAbs(value)
  %485 = call float @dx.op.unary.f32(i32 6, float %483)  ; FAbs(value)
  %486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %487 = extractvalue %dx.types.CBufRet.f32 %486, 0
  %488 = call float @dx.op.binary.f32(i32 35, float %484, float %485)  ; FMax(a,b)
  %489 = fsub fast float %487, %488
  %490 = call float @dx.op.unary.f32(i32 7, float %489)  ; Saturate(value)
  %491 = fmul fast float %490, %467
  br label %492

; <label>:492                                     ; preds = %460, %416
  %493 = phi float [ %491, %460 ], [ 0.000000e+00, %416 ]
  %494 = call float @dx.op.binary.f32(i32 35, float %493, float 0.000000e+00)  ; FMax(a,b)
  %495 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %494)  ; FMax(a,b)
  %496 = fcmp fast olt float %495, 1.000000e+00
  br i1 %496, label %497, label %895, !dx.controlflow.hints !49

; <label>:497                                     ; preds = %492
  %498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %499 = extractvalue %dx.types.CBufRet.f32 %498, 0
  %500 = fcmp fast une float %499, 0.000000e+00
  br i1 %500, label %501, label %895, !dx.controlflow.hints !50

; <label>:501                                     ; preds = %497
  %502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %503 = extractvalue %dx.types.CBufRet.f32 %502, 0
  %504 = extractvalue %dx.types.CBufRet.f32 %502, 1
  %505 = extractvalue %dx.types.CBufRet.f32 %502, 2
  %506 = extractvalue %dx.types.CBufRet.f32 %502, 3
  %507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %508 = extractvalue %dx.types.CBufRet.f32 %507, 0
  %509 = extractvalue %dx.types.CBufRet.f32 %507, 1
  %510 = extractvalue %dx.types.CBufRet.f32 %507, 2
  %511 = extractvalue %dx.types.CBufRet.f32 %507, 3
  %512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %513 = extractvalue %dx.types.CBufRet.f32 %512, 0
  %514 = extractvalue %dx.types.CBufRet.f32 %512, 1
  %515 = extractvalue %dx.types.CBufRet.f32 %512, 2
  %516 = extractvalue %dx.types.CBufRet.f32 %512, 3
  %517 = fmul fast float %503, %287
  %518 = call float @dx.op.tertiary.f32(i32 46, float %288, float %504, float %517)  ; FMad(a,b,c)
  %519 = call float @dx.op.tertiary.f32(i32 46, float %289, float %505, float %518)  ; FMad(a,b,c)
  %520 = fadd fast float %519, %506
  %521 = fmul fast float %508, %287
  %522 = call float @dx.op.tertiary.f32(i32 46, float %288, float %509, float %521)  ; FMad(a,b,c)
  %523 = call float @dx.op.tertiary.f32(i32 46, float %289, float %510, float %522)  ; FMad(a,b,c)
  %524 = fadd fast float %523, %511
  %525 = fmul fast float %513, %287
  %526 = call float @dx.op.tertiary.f32(i32 46, float %288, float %514, float %525)  ; FMad(a,b,c)
  %527 = call float @dx.op.tertiary.f32(i32 46, float %289, float %515, float %526)  ; FMad(a,b,c)
  %528 = fadd fast float %527, %516
  %529 = fcmp fast oge float %520, 1.000000e+00
  %530 = fcmp fast oge float %524, 1.000000e+00
  %531 = or i1 %529, %530
  %532 = fcmp fast olt float %520, 0.000000e+00
  %533 = fcmp fast olt float %524, 0.000000e+00
  %534 = or i1 %532, %533
  %535 = or i1 %531, %534
  br i1 %535, label %895, label %536, !dx.controlflow.hints !51

; <label>:536                                     ; preds = %501
  %537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %538 = extractvalue %dx.types.CBufRet.f32 %537, 0
  %539 = extractvalue %dx.types.CBufRet.f32 %537, 1
  %540 = extractvalue %dx.types.CBufRet.f32 %537, 2
  %541 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %542 = extractvalue %dx.types.CBufRet.i32 %541, 2
  %543 = uitofp i32 %542 to float
  %544 = extractvalue %dx.types.CBufRet.i32 %541, 3
  %545 = uitofp i32 %544 to float
  %546 = extractvalue %dx.types.CBufRet.f32 %537, 3
  %547 = fmul fast float %546, 2.000000e+00
  %548 = fsub fast float %520, %538
  %549 = fsub fast float %524, %539
  %550 = fmul fast float %547, %548
  %551 = fmul fast float %547, %549
  %552 = fdiv fast float 1.000000e+00, %403
  %553 = fmul fast float %551, %552
  %554 = call float @dx.op.unary.f32(i32 6, float %553)  ; FAbs(value)
  %555 = fmul fast float %540, %289
  %556 = fmul fast float %555, %547
  %557 = call float @dx.op.unary.f32(i32 6, float %556)  ; FAbs(value)
  %558 = call float @dx.op.unary.f32(i32 6, float %550)  ; FAbs(value)
  %559 = call float @dx.op.binary.f32(i32 35, float %557, float %554)  ; FMax(a,b)
  %560 = call float @dx.op.binary.f32(i32 35, float %558, float %559)  ; FMax(a,b)
  %561 = fmul fast float %560, 2.000000e+00
  %562 = call float @dx.op.unary.f32(i32 23, float %561)  ; Log(value)
  %563 = call float @dx.op.binary.f32(i32 35, float %562, float %543)  ; FMax(a,b)
  %564 = call float @dx.op.unary.f32(i32 22, float %563)  ; Frc(value)
  %565 = fadd fast float %564, 0xBFEA666660000000
  %566 = fmul fast float %565, 8.000000e+00
  %567 = call float @dx.op.unary.f32(i32 7, float %566)  ; Saturate(value)
  %568 = call float @dx.op.unary.f32(i32 27, float %563)  ; Round_ni(value)
  %569 = fadd fast float %568, %567
  %570 = call float @dx.op.binary.f32(i32 36, float %569, float %545)  ; FMin(a,b)
  %571 = call float @dx.op.unary.f32(i32 27, float %570)  ; Round_ni(value)
  %572 = fsub fast float -0.000000e+00, %571
  %573 = call float @dx.op.unary.f32(i32 21, float %572)  ; Exp(value)
  %574 = fmul fast float %573, %547
  %575 = fmul fast float %574, %520
  %576 = fmul fast float %574, %524
  %577 = fmul fast float %575, 2.500000e-01
  %578 = fmul fast float %576, 2.500000e-01
  %579 = fadd fast float %577, 5.000000e-01
  %580 = fadd fast float %578, 5.000000e-01
  %581 = fsub fast float %545, %543
  %582 = fptoui float %581 to i32
  %583 = add i32 %582, 320
  %584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 %583)  ; CBufferLoadLegacy(handle,regIndex)
  %585 = extractvalue %dx.types.CBufRet.f32 %584, 0
  %586 = extractvalue %dx.types.CBufRet.f32 %584, 1
  %587 = fcmp fast une float %570, %545
  %588 = fsub fast float %520, %585
  %589 = fsub fast float %524, %586
  %590 = call float @dx.op.unary.f32(i32 6, float %588)  ; FAbs(value)
  %591 = call float @dx.op.unary.f32(i32 6, float %589)  ; FAbs(value)
  %592 = fmul fast float %590, %574
  %593 = fmul fast float %591, %574
  %594 = fcmp fast olt float %592, 1.000000e+00
  %595 = fcmp fast olt float %593, 1.000000e+00
  %596 = and i1 %594, %595
  %597 = or i1 %587, %596
  br i1 %597, label %598, label %895, !dx.controlflow.hints !52

; <label>:598                                     ; preds = %536
  %599 = fmul fast float %576, 5.000000e-01
  %600 = fmul fast float %575, 5.000000e-01
  %601 = fadd fast float %599, 5.000000e-01
  %602 = fadd fast float %600, 5.000000e-01
  %603 = sitofp i32 %542 to float
  %604 = fsub fast float %570, %603
  %605 = call float @dx.op.unary.f32(i32 27, float %604)  ; Round_ni(value)
  %606 = call float @dx.op.unary.f32(i32 22, float %570)  ; Frc(value)
  %607 = call float @dx.op.unary.f32(i32 22, float %602)  ; Frc(value)
  %608 = call float @dx.op.unary.f32(i32 22, float %601)  ; Frc(value)
  %609 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %21, float %607, float %608, float %605, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %610 = extractvalue %dx.types.ResRet.f32 %609, 0
  %611 = extractvalue %dx.types.ResRet.f32 %609, 1
  %612 = extractvalue %dx.types.ResRet.f32 %609, 2
  %613 = extractvalue %dx.types.ResRet.f32 %609, 3
  %614 = fcmp fast ogt float %606, 0.000000e+00
  br i1 %614, label %615, label %636, !dx.controlflow.hints !53

; <label>:615                                     ; preds = %598
  %616 = fadd fast float %605, 1.000000e+00
  %617 = call float @dx.op.unary.f32(i32 22, float %579)  ; Frc(value)
  %618 = call float @dx.op.unary.f32(i32 22, float %580)  ; Frc(value)
  %619 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %21, float %617, float %618, float %616, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %620 = extractvalue %dx.types.ResRet.f32 %619, 0
  %621 = extractvalue %dx.types.ResRet.f32 %619, 1
  %622 = extractvalue %dx.types.ResRet.f32 %619, 2
  %623 = extractvalue %dx.types.ResRet.f32 %619, 3
  %624 = fsub fast float %620, %610
  %625 = fsub fast float %621, %611
  %626 = fsub fast float %622, %612
  %627 = fsub fast float %623, %613
  %628 = fmul fast float %624, %606
  %629 = fmul fast float %625, %606
  %630 = fmul fast float %626, %606
  %631 = fmul fast float %627, %606
  %632 = fadd fast float %628, %610
  %633 = fadd fast float %629, %611
  %634 = fadd fast float %630, %612
  %635 = fadd fast float %631, %613
  br label %636

; <label>:636                                     ; preds = %615, %598
  %637 = phi float [ %632, %615 ], [ %610, %598 ]
  %638 = phi float [ %633, %615 ], [ %611, %598 ]
  %639 = phi float [ %634, %615 ], [ %612, %598 ]
  %640 = phi float [ %635, %615 ], [ %613, %598 ]
  %641 = fadd fast float %637, -5.000000e-01
  %642 = fadd fast float %639, -5.000000e-01
  %643 = fmul fast float %641, 0xBFD5555560000000
  %644 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %642, float %643)  ; FMad(a,b,c)
  %645 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %638, float 0.000000e+00)  ; FMad(a,b,c)
  %646 = fadd fast float %645, %640
  %647 = fmul fast float %641, -7.500000e-01
  %648 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %642, float %647)  ; FMad(a,b,c)
  %649 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %638, float 0.000000e+00)  ; FMad(a,b,c)
  %650 = fadd fast float %649, %640
  %651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %652 = extractvalue %dx.types.CBufRet.f32 %651, 0
  %653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %654 = extractvalue %dx.types.CBufRet.f32 %653, 0
  %655 = extractvalue %dx.types.CBufRet.f32 %653, 1
  %656 = extractvalue %dx.types.CBufRet.f32 %653, 2
  %657 = extractvalue %dx.types.CBufRet.f32 %653, 3
  %658 = fsub fast float %654, %644
  %659 = fsub fast float %655, %646
  %660 = fsub fast float %656, %648
  %661 = fsub fast float %657, %650
  %662 = fmul fast float %658, %652
  %663 = fmul fast float %659, %652
  %664 = fmul fast float %660, %652
  %665 = fmul fast float %661, %652
  %666 = fadd fast float %662, %644
  %667 = fadd fast float %663, %646
  %668 = fadd fast float %664, %648
  %669 = fadd fast float %665, %650
  %670 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %671 = extractvalue %dx.types.ResRet.i32 %670, 0
  %672 = and i32 %671, 536870911
  %673 = uitofp i32 %672 to float
  %674 = fmul fast float %673, %520
  %675 = fmul fast float %673, %524
  %676 = fptoui float %674 to i32
  %677 = fptoui float %675 to i32
  %678 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %679 = extractvalue %dx.types.ResRet.i32 %678, 0
  %680 = and i32 %679, 31
  %681 = lshr i32 %676, %680
  %682 = lshr i32 %677, %680
  %683 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %684 = extractvalue %dx.types.ResRet.i32 %683, 0
  %685 = and i32 %684, 31
  %686 = shl i32 1, %685
  %687 = call i32 @dx.op.binary.i32(i32 40, i32 %686, i32 4)  ; UMin(a,b)
  %688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %689 = extractvalue %dx.types.ResRet.i32 %688, 0
  %690 = extractvalue %dx.types.ResRet.i32 %688, 1
  %691 = icmp eq i32 %687, 0
  br i1 %691, label %733, label %692

; <label>:692                                     ; preds = %636
  br label %693

; <label>:693                                     ; preds = %721, %692
  %694 = phi i32 [ %724, %721 ], [ 0, %692 ]
  %695 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %696 = extractvalue %dx.types.ResRet.i32 %695, 0
  %697 = lshr i32 %696, 16
  %698 = and i32 %697, 31
  %699 = shl i32 %682, %698
  %700 = add i32 %699, %681
  %701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %702 = extractvalue %dx.types.ResRet.i32 %701, 0
  %703 = and i32 %702, 31
  %704 = shl i32 %700, %703
  %705 = add i32 %704, %694
  %706 = shl i32 %705, 2
  %707 = add i32 %706, 32
  %708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %707, i32 undef)  ; BufferLoad(srv,index,wot)
  %709 = extractvalue %dx.types.ResRet.i32 %708, 0
  %710 = icmp slt i32 %709, 0
  %711 = getelementptr [12 x float], [12 x float]* %32, i32 0, i32 %694
  %712 = getelementptr [12 x float], [12 x float]* %33, i32 0, i32 %694
  %713 = bitcast float* %711 to i32*
  %714 = bitcast float* %712 to i32*
  br i1 %710, label %715, label %721, !dx.controlflow.hints !54

; <label>:715                                     ; preds = %693
  %716 = and i32 %709, 1073741823
  %717 = add nuw nsw i32 %716, 20
  %718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %717, i32 undef)  ; BufferLoad(srv,index,wot)
  %719 = extractvalue %dx.types.ResRet.i32 %718, 0
  %720 = extractvalue %dx.types.ResRet.i32 %718, 1
  br label %721

; <label>:721                                     ; preds = %715, %693
  %722 = phi i32 [ %719, %715 ], [ %689, %693 ]
  %723 = phi i32 [ %720, %715 ], [ %690, %693 ]
  store i32 %722, i32* %713, align 4
  store i32 %723, i32* %714, align 4
  %724 = add nuw i32 %694, 1
  %725 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %726 = extractvalue %dx.types.CBufRet.i32 %725, 2
  %727 = icmp eq i32 %726, 0
  %728 = icmp ugt i32 %709, -1073741825
  %729 = and i1 %728, %727
  %730 = icmp ult i32 %724, %687
  %731 = and i1 %729, %730
  br i1 %731, label %693, label %732, !dx.controlflow.hints !55

; <label>:732                                     ; preds = %721
  br label %733

; <label>:733                                     ; preds = %732, %636
  %734 = phi i32 [ 0, %636 ], [ %724, %732 ]
  %735 = extractvalue %dx.types.CBufRet.f32 %498, 2
  %736 = fptoui float %735 to i32
  %737 = icmp eq i32 %736, 0
  br i1 %737, label %789, label %738

; <label>:738                                     ; preds = %733
  br label %739

; <label>:739                                     ; preds = %784, %738
  %740 = phi i32 [ %785, %784 ], [ %734, %738 ]
  %741 = phi i32 [ %786, %784 ], [ 0, %738 ]
  %742 = lshr i32 %741, 2
  %743 = and i32 %741, 3
  %744 = add nuw nsw i32 %742, 83
  %745 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 %744)  ; CBufferLoadLegacy(handle,regIndex)
  %746 = extractvalue %dx.types.CBufRet.i32 %745, 0
  %747 = extractvalue %dx.types.CBufRet.i32 %745, 1
  %748 = extractvalue %dx.types.CBufRet.i32 %745, 2
  %749 = extractvalue %dx.types.CBufRet.i32 %745, 3
  %750 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 0
  store i32 %746, i32* %750, align 4
  %751 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 1
  store i32 %747, i32* %751, align 4
  %752 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 2
  store i32 %748, i32* %752, align 4
  %753 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 3
  store i32 %749, i32* %753, align 4
  %754 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 %743
  %755 = load i32, i32* %754, align 4, !tbaa !56, !noalias !60
  %756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %757 = extractvalue %dx.types.ResRet.i32 %756, 0
  %758 = lshr i32 %757, 16
  %759 = and i32 %758, 31
  %760 = shl i32 %682, %759
  %761 = add i32 %760, %681
  %762 = shl i32 %761, 2
  %763 = add i32 %762, %755
  %764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %763, i32 undef)  ; BufferLoad(srv,index,wot)
  %765 = extractvalue %dx.types.ResRet.i32 %764, 0
  %766 = icmp eq i32 %765, 0
  br i1 %766, label %784, label %767, !dx.controlflow.hints !65

; <label>:767                                     ; preds = %739
  %768 = icmp slt i32 %765, 0
  %769 = getelementptr [12 x float], [12 x float]* %32, i32 0, i32 %740
  %770 = getelementptr [12 x float], [12 x float]* %33, i32 0, i32 %740
  %771 = bitcast float* %769 to i32*
  %772 = bitcast float* %770 to i32*
  br i1 %768, label %773, label %780, !dx.controlflow.hints !66

; <label>:773                                     ; preds = %767
  %774 = and i32 %765, 1073741823
  %775 = add i32 %755, 20
  %776 = add i32 %775, %774
  %777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %776, i32 undef)  ; BufferLoad(srv,index,wot)
  %778 = extractvalue %dx.types.ResRet.i32 %777, 0
  %779 = extractvalue %dx.types.ResRet.i32 %777, 1
  br label %780

; <label>:780                                     ; preds = %773, %767
  %781 = phi i32 [ %778, %773 ], [ %689, %767 ]
  %782 = phi i32 [ %779, %773 ], [ %690, %767 ]
  store i32 %781, i32* %771, align 4
  store i32 %782, i32* %772, align 4
  %783 = add i32 %740, 1
  br label %784

; <label>:784                                     ; preds = %780, %739
  %785 = phi i32 [ %740, %739 ], [ %783, %780 ]
  %786 = add nuw i32 %741, 1
  %787 = icmp eq i32 %786, %736
  br i1 %787, label %788, label %739

; <label>:788                                     ; preds = %784
  br label %789

; <label>:789                                     ; preds = %788, %733
  %790 = phi i32 [ %734, %733 ], [ %785, %788 ]
  %791 = icmp eq i32 %790, 1
  %792 = getelementptr [12 x float], [12 x float]* %32, i32 0, i32 0
  %793 = getelementptr [12 x float], [12 x float]* %33, i32 0, i32 0
  br i1 %791, label %794, label %797, !dx.controlflow.hints !67

; <label>:794                                     ; preds = %789
  %795 = load float, float* %792, align 4
  %796 = load float, float* %793, align 4
  br label %824

; <label>:797                                     ; preds = %789
  %798 = load float, float* %792, align 4
  %799 = load float, float* %793, align 4
  %800 = fdiv fast float 1.000000e+00, %799
  %801 = fsub fast float %798, %800
  %802 = icmp ugt i32 %790, 1
  br i1 %802, label %803, label %819

; <label>:803                                     ; preds = %797
  br label %804

; <label>:804                                     ; preds = %804, %803
  %805 = phi float [ %814, %804 ], [ %801, %803 ]
  %806 = phi float [ %815, %804 ], [ %798, %803 ]
  %807 = phi i32 [ %816, %804 ], [ 1, %803 ]
  %808 = getelementptr [12 x float], [12 x float]* %32, i32 0, i32 %807
  %809 = load float, float* %808, align 4
  %810 = getelementptr [12 x float], [12 x float]* %33, i32 0, i32 %807
  %811 = load float, float* %810, align 4
  %812 = fdiv fast float 1.000000e+00, %811
  %813 = fsub fast float %809, %812
  %814 = call float @dx.op.binary.f32(i32 36, float %805, float %813)  ; FMin(a,b)
  %815 = call float @dx.op.binary.f32(i32 35, float %806, float %809)  ; FMax(a,b)
  %816 = add nuw i32 %807, 1
  %817 = icmp eq i32 %816, %790
  br i1 %817, label %818, label %804

; <label>:818                                     ; preds = %804
  br label %819

; <label>:819                                     ; preds = %818, %797
  %820 = phi float [ %801, %797 ], [ %814, %818 ]
  %821 = phi float [ %798, %797 ], [ %815, %818 ]
  %822 = fsub fast float %821, %820
  %823 = fdiv fast float 1.000000e+00, %822
  br label %824

; <label>:824                                     ; preds = %819, %794
  %825 = phi float [ %795, %794 ], [ %821, %819 ]
  %826 = phi float [ %796, %794 ], [ %823, %819 ]
  %827 = fadd fast float %528, %825
  %828 = fmul fast float %827, %826
  %829 = call float @dx.op.unary.f32(i32 7, float %828)  ; Saturate(value)
  %830 = fmul fast float %829, 2.000000e+00
  %831 = fsub fast float 1.000000e+00, %830
  %832 = fmul fast float %666, %666
  %833 = fsub fast float %667, %832
  %834 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %833)  ; FMax(a,b)
  %835 = fdiv fast float 1.000000e+00, %834
  %836 = fmul fast float %667, %666
  %837 = fsub fast float %668, %836
  %838 = fsub fast float %831, %666
  %839 = fmul fast float %831, %831
  %840 = fsub fast float %839, %667
  %841 = fmul fast float %835, %837
  %842 = fmul fast float %841, %838
  %843 = fsub fast float %840, %842
  %844 = fmul fast float %667, %667
  %845 = fsub fast float %669, %844
  %846 = fmul fast float %837, %837
  %847 = fmul fast float %846, %835
  %848 = fsub fast float %845, %847
  %849 = fdiv fast float %843, %848
  %850 = fmul fast float %849, %837
  %851 = fsub fast float %838, %850
  %852 = fmul fast float %851, %835
  %853 = fmul fast float %852, %666
  %854 = fsub fast float 1.000000e+00, %853
  %855 = fmul fast float %849, %667
  %856 = fsub fast float %854, %855
  %857 = fmul fast float %852, %852
  %858 = fmul fast float %849, 4.000000e+00
  %859 = fmul fast float %858, %856
  %860 = fsub fast float %857, %859
  %861 = call float @dx.op.unary.f32(i32 24, float %860)  ; Sqrt(value)
  %862 = fcmp fast oge float %852, 0.000000e+00
  %863 = fsub fast float -0.000000e+00, %861
  %864 = select i1 %862, float %863, float %861
  %865 = fsub fast float %864, %852
  %866 = fdiv fast float %865, %849
  %867 = fdiv fast float %856, %865
  %868 = fmul fast float %866, 5.000000e-01
  %869 = fmul fast float %867, 2.000000e+00
  %870 = select i1 %862, float %868, float %869
  %871 = select i1 %862, float %869, float %868
  %872 = call float @dx.op.binary.f32(i32 35, float %870, float %871)  ; FMax(a,b)
  %873 = call float @dx.op.binary.f32(i32 36, float %870, float %871)  ; FMin(a,b)
  %874 = fcmp fast ogt float %831, %872
  %875 = fsub fast float %831, %873
  %876 = fsub fast float %831, %872
  %877 = fsub fast float %872, %873
  %878 = select i1 %874, float %876, float %877
  %879 = fmul float %875, %878
  %880 = select i1 %874, float %873, float %831
  %881 = fcmp fast ogt float %831, %873
  %882 = fmul fast float %880, %872
  %883 = fadd fast float %880, %872
  %884 = fmul fast float %883, %666
  %885 = fadd fast float %882, %667
  %886 = fsub fast float %885, %884
  %887 = fdiv fast float %886, %879
  %888 = select i1 %881, float %887, float 0.000000e+00
  %889 = fsub fast float 1.000000e+00, %888
  %890 = select i1 %874, float %889, float %888
  %891 = call float @dx.op.unary.f32(i32 7, float %890)  ; Saturate(value)
  %892 = extractvalue %dx.types.CBufRet.f32 %651, 3
  %893 = fmul fast float %892, %891
  %894 = fsub fast float 1.000000e+00, %893
  br label %895

; <label>:895                                     ; preds = %824, %536, %501, %497, %492
  %896 = phi float [ 1.000000e+00, %492 ], [ %894, %824 ], [ 1.000000e+00, %501 ], [ 1.000000e+00, %536 ], [ 1.000000e+00, %497 ]
  %897 = fcmp fast ogt float %493, 0.000000e+00
  br i1 %897, label %898, label %1060, !dx.controlflow.hints !68

; <label>:898                                     ; preds = %895
  %899 = fadd fast float %457, %443
  %900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %901 = extractvalue %dx.types.CBufRet.f32 %900, 2
  %902 = extractvalue %dx.types.CBufRet.f32 %900, 3
  %903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %904 = extractvalue %dx.types.CBufRet.f32 %903, 1
  %905 = call float @dx.op.binary.f32(i32 35, float %899, float 0.000000e+00)  ; FMax(a,b)
  %906 = fadd fast float %905, 0x3F10000000000000
  %907 = fcmp fast oeq float %904, 0.000000e+00
  br i1 %907, label %908, label %975, !dx.controlflow.hints !69

; <label>:908                                     ; preds = %898
  %909 = extractvalue %dx.types.CBufRet.f32 %900, 1
  %910 = extractvalue %dx.types.CBufRet.f32 %900, 0
  %911 = fmul fast float %910, %450
  %912 = fmul fast float %909, %451
  %913 = fadd fast float %911, 5.000000e-01
  %914 = call float @dx.op.unary.f32(i32 27, float %913)  ; Round_ni(value)
  %915 = fadd fast float %912, 5.000000e-01
  %916 = call float @dx.op.unary.f32(i32 27, float %915)  ; Round_ni(value)
  %917 = fsub fast float %913, %914
  %918 = fsub fast float %915, %916
  %919 = fadd fast float %914, -5.000000e-01
  %920 = fadd fast float %916, -5.000000e-01
  %921 = fmul fast float %917, 2.000000e+00
  %922 = fsub fast float 3.000000e+00, %921
  %923 = fadd fast float %921, 1.000000e+00
  %924 = fsub fast float 2.000000e+00, %917
  %925 = bitcast float %922 to i32
  %926 = sub nsw i32 2129859010, %925
  %927 = bitcast i32 %926 to float
  %928 = fmul fast float %927, %924
  %929 = fadd fast float %928, -1.000000e+00
  %930 = bitcast float %923 to i32
  %931 = sub nsw i32 2129859010, %930
  %932 = bitcast i32 %931 to float
  %933 = fmul fast float %932, %917
  %934 = fadd fast float %933, 1.000000e+00
  %935 = fmul fast float %918, 2.000000e+00
  %936 = fsub fast float 3.000000e+00, %935
  %937 = fadd fast float %935, 1.000000e+00
  %938 = fsub fast float 2.000000e+00, %918
  %939 = bitcast float %936 to i32
  %940 = sub nsw i32 2129859010, %939
  %941 = bitcast i32 %940 to float
  %942 = fmul fast float %941, %938
  %943 = fadd fast float %942, -1.000000e+00
  %944 = bitcast float %937 to i32
  %945 = sub nsw i32 2129859010, %944
  %946 = bitcast i32 %945 to float
  %947 = fmul fast float %946, %918
  %948 = fadd fast float %947, 1.000000e+00
  %949 = fadd fast float %929, %919
  %950 = fmul fast float %949, %901
  %951 = fadd fast float %943, %920
  %952 = fmul fast float %951, %902
  %953 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %24, float %950, float %952, float undef, float undef, i32 0, i32 0, i32 undef, float %906)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %954 = extractvalue %dx.types.ResRet.f32 %953, 0
  %955 = fmul fast float %954, %922
  %956 = fadd fast float %934, %919
  %957 = fmul fast float %956, %901
  %958 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %24, float %957, float %952, float undef, float undef, i32 0, i32 0, i32 undef, float %906)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %959 = extractvalue %dx.types.ResRet.f32 %958, 0
  %960 = fmul fast float %959, %923
  %961 = fadd fast float %948, %920
  %962 = fmul fast float %961, %902
  %963 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %24, float %950, float %962, float undef, float undef, i32 0, i32 0, i32 undef, float %906)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %964 = extractvalue %dx.types.ResRet.f32 %963, 0
  %965 = fmul fast float %964, %922
  %966 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %24, float %957, float %962, float undef, float undef, i32 0, i32 0, i32 undef, float %906)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %967 = extractvalue %dx.types.ResRet.f32 %966, 0
  %968 = fmul fast float %967, %923
  %969 = fadd fast float %968, %965
  %970 = fmul fast float %969, %937
  %971 = fadd fast float %960, %955
  %972 = fmul fast float %971, %936
  %973 = fadd fast float %972, %970
  %974 = fmul fast float %973, 6.250000e-02
  br label %1060

; <label>:975                                     ; preds = %898
  %976 = fmul fast float %310, 0x401921FB60000000
  %977 = call float @dx.op.unary.f32(i32 13, float %976)  ; Sin(value)
  %978 = call float @dx.op.unary.f32(i32 12, float %976)  ; Cos(value)
  %979 = fsub fast float -0.000000e+00, %977
  br label %980

; <label>:980                                     ; preds = %1029, %975
  %981 = phi float [ 0.000000e+00, %975 ], [ %1024, %1029 ]
  %982 = phi float [ 0.000000e+00, %975 ], [ %1026, %1029 ]
  %983 = phi i32 [ 0, %975 ], [ %1030, %1029 ]
  %984 = mul i32 %983, 2
  %985 = add i32 0, %984
  %986 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %985
  %987 = load float, float* %986, align 4
  %988 = mul i32 %983, 2
  %989 = add i32 1, %988
  %990 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %989
  %991 = load float, float* %990, align 4
  %992 = fmul fast float %987, %978
  %993 = call float @dx.op.tertiary.f32(i32 46, float %991, float %979, float %992)  ; FMad(a,b,c)
  %994 = fmul fast float %987, %977
  %995 = call float @dx.op.tertiary.f32(i32 46, float %991, float %978, float %994)  ; FMad(a,b,c)
  %996 = fmul fast float %993, %904
  %997 = fmul fast float %995, %904
  %998 = fadd fast float %996, %450
  %999 = fadd fast float %997, %451
  %1000 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %8, %dx.types.Handle %23, float %998, float %999, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1001 = extractvalue %dx.types.ResRet.f32 %1000, 0
  %1002 = extractvalue %dx.types.ResRet.f32 %1000, 1
  %1003 = extractvalue %dx.types.ResRet.f32 %1000, 2
  %1004 = extractvalue %dx.types.ResRet.f32 %1000, 3
  %1005 = getelementptr inbounds [4 x float], [4 x float]* %34, i32 0, i32 0
  store float %1001, float* %1005, align 4
  %1006 = getelementptr inbounds [4 x float], [4 x float]* %34, i32 0, i32 1
  store float %1002, float* %1006, align 4
  %1007 = getelementptr inbounds [4 x float], [4 x float]* %34, i32 0, i32 2
  store float %1003, float* %1007, align 4
  %1008 = getelementptr inbounds [4 x float], [4 x float]* %34, i32 0, i32 3
  store float %1004, float* %1008, align 4
  %1009 = fsub fast float %1001, %906
  %1010 = fcmp fast olt float %1009, 0.000000e+00
  %1011 = select i1 %1010, float 0.000000e+00, float 1.000000e+00
  %1012 = fadd fast float %1011, %981
  %1013 = fmul fast float %1011, %1009
  %1014 = fadd fast float %1013, %982
  br label %1015

; <label>:1015                                    ; preds = %1015, %980
  %1016 = phi i32 [ 1, %980 ], [ %1027, %1015 ]
  %1017 = phi float [ %1014, %980 ], [ %1026, %1015 ]
  %1018 = phi float [ %1012, %980 ], [ %1024, %1015 ]
  %1019 = getelementptr [4 x float], [4 x float]* %34, i32 0, i32 %1016
  %1020 = load float, float* %1019, align 4, !tbaa !70, !noalias !60
  %1021 = fsub fast float %1020, %906
  %1022 = fcmp fast olt float %1021, 0.000000e+00
  %1023 = select i1 %1022, float 0.000000e+00, float 1.000000e+00
  %1024 = fadd fast float %1023, %1018
  %1025 = fmul fast float %1023, %1021
  %1026 = fadd fast float %1025, %1017
  %1027 = add nuw nsw i32 %1016, 1
  %1028 = icmp eq i32 %1027, 4
  br i1 %1028, label %1029, label %1015, !llvm.loop !72

; <label>:1029                                    ; preds = %1015
  %1030 = add nuw nsw i32 %983, 1
  %1031 = icmp eq i32 %1030, 8
  br i1 %1031, label %1032, label %980, !llvm.loop !74

; <label>:1032                                    ; preds = %1029
  %1033 = fdiv fast float 1.000000e+00, %1024
  %1034 = fmul fast float %1033, %1026
  %1035 = fdiv fast float 1.000000e+00, %906
  %1036 = fmul fast float %1034, %1035
  %1037 = call float @dx.op.unary.f32(i32 7, float %1036)  ; Saturate(value)
  %1038 = call float @dx.op.binary.f32(i32 35, float %1037, float 0.000000e+00)  ; FMax(a,b)
  %1039 = fmul fast float %1024, 3.125000e-02
  %1040 = call float @dx.op.unary.f32(i32 7, float %1039)  ; Saturate(value)
  %1041 = fmul fast float %1040, 2.000000e+00
  %1042 = fadd fast float %1041, -1.000000e+00
  %1043 = fcmp fast ogt float %1042, 0.000000e+00
  %1044 = fcmp fast olt float %1042, 0.000000e+00
  %1045 = zext i1 %1043 to i32
  %1046 = zext i1 %1044 to i32
  %1047 = sub nsw i32 %1045, %1046
  %1048 = sitofp i32 %1047 to float
  %1049 = fmul fast float %1048, %1042
  %1050 = fsub fast float 1.000000e+00, %1049
  %1051 = fmul fast float %1050, %1050
  %1052 = fmul fast float %1051, %1050
  %1053 = fsub fast float %1050, %1052
  %1054 = fmul fast float %1053, %1038
  %1055 = fsub fast float 1.000000e+00, %1052
  %1056 = fsub fast float %1055, %1054
  %1057 = fmul fast float %1048, 5.000000e-01
  %1058 = fmul fast float %1057, %1056
  %1059 = fsub fast float 5.000000e-01, %1058
  br label %1060

; <label>:1060                                    ; preds = %1032, %908, %895
  %1061 = phi float [ 1.000000e+00, %895 ], [ %974, %908 ], [ %1059, %1032 ]
  %1062 = fsub fast float %1061, %896
  %1063 = fmul fast float %1062, %493
  %1064 = fadd fast float %1063, %896
  br label %1065

; <label>:1065                                    ; preds = %1060, %400
  %1066 = phi float [ %1064, %1060 ], [ 1.000000e+00, %400 ]
  %1067 = call float @dx.op.binary.f32(i32 36, float %1066, float %1066)  ; FMin(a,b)
  %1068 = call float @dx.op.binary.f32(i32 36, float %1066, float %1067)  ; FMin(a,b)
  %1069 = fcmp fast ogt float %1068, 0.000000e+00
  br i1 %1069, label %1070, label %1235, !dx.controlflow.hints !75

; <label>:1070                                    ; preds = %1065
  %1071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %1072 = extractvalue %dx.types.CBufRet.f32 %1071, 0
  %1073 = extractvalue %dx.types.CBufRet.f32 %1071, 1
  %1074 = extractvalue %dx.types.CBufRet.f32 %1071, 2
  %1075 = extractvalue %dx.types.CBufRet.f32 %1071, 3
  %1076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %1077 = extractvalue %dx.types.CBufRet.f32 %1076, 0
  %1078 = extractvalue %dx.types.CBufRet.f32 %1076, 1
  %1079 = extractvalue %dx.types.CBufRet.f32 %1076, 2
  %1080 = extractvalue %dx.types.CBufRet.f32 %1076, 3
  %1081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %1082 = extractvalue %dx.types.CBufRet.f32 %1081, 0
  %1083 = extractvalue %dx.types.CBufRet.f32 %1081, 1
  %1084 = extractvalue %dx.types.CBufRet.f32 %1081, 2
  %1085 = extractvalue %dx.types.CBufRet.f32 %1081, 3
  %1086 = fmul fast float %1072, %287
  %1087 = call float @dx.op.tertiary.f32(i32 46, float %288, float %1073, float %1086)  ; FMad(a,b,c)
  %1088 = call float @dx.op.tertiary.f32(i32 46, float %289, float %1074, float %1087)  ; FMad(a,b,c)
  %1089 = fadd fast float %1088, %1075
  %1090 = fmul fast float %1077, %287
  %1091 = call float @dx.op.tertiary.f32(i32 46, float %288, float %1078, float %1090)  ; FMad(a,b,c)
  %1092 = call float @dx.op.tertiary.f32(i32 46, float %289, float %1079, float %1091)  ; FMad(a,b,c)
  %1093 = fadd fast float %1092, %1080
  %1094 = fmul fast float %1082, %287
  %1095 = call float @dx.op.tertiary.f32(i32 46, float %288, float %1083, float %1094)  ; FMad(a,b,c)
  %1096 = call float @dx.op.tertiary.f32(i32 46, float %289, float %1084, float %1095)  ; FMad(a,b,c)
  %1097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %1098 = extractvalue %dx.types.CBufRet.f32 %1097, 0
  %1099 = extractvalue %dx.types.CBufRet.f32 %1097, 1
  %1100 = extractvalue %dx.types.CBufRet.f32 %1097, 3
  %1101 = fmul fast float %1100, %1089
  %1102 = fmul fast float %1100, %1093
  %1103 = fadd fast float %1101, %1098
  %1104 = fadd fast float %1102, %1099
  %1105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %1106 = extractvalue %dx.types.CBufRet.f32 %1105, 0
  %1107 = extractvalue %dx.types.CBufRet.f32 %1105, 1
  %1108 = fsub fast float %1103, %1106
  %1109 = fsub fast float %1104, %1107
  %1110 = fcmp fast olt float %1108, 0.000000e+00
  %1111 = fcmp fast olt float %1109, 0.000000e+00
  %1112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %1113 = extractvalue %dx.types.CBufRet.f32 %1112, 0
  %1114 = extractvalue %dx.types.CBufRet.f32 %1112, 1
  %1115 = extractvalue %dx.types.CBufRet.f32 %1112, 2
  %1116 = extractvalue %dx.types.CBufRet.f32 %1112, 3
  %1117 = select i1 %1110, float %1113, float %1115
  %1118 = select i1 %1111, float %1114, float %1116
  %1119 = fmul fast float %1117, %1108
  %1120 = fmul fast float %1118, %1109
  %1121 = call float @dx.op.unary.f32(i32 6, float %1119)  ; FAbs(value)
  %1122 = call float @dx.op.unary.f32(i32 6, float %1120)  ; FAbs(value)
  %1123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %1124 = extractvalue %dx.types.CBufRet.f32 %1123, 0
  %1125 = call float @dx.op.binary.f32(i32 35, float %1121, float %1122)  ; FMax(a,b)
  %1126 = fsub fast float %1124, %1125
  %1127 = call float @dx.op.unary.f32(i32 7, float %1126)  ; Saturate(value)
  %1128 = fcmp fast ogt float %1127, 0.000000e+00
  br i1 %1128, label %1129, label %1170, !dx.controlflow.hints !76

; <label>:1129                                    ; preds = %1070
  %1130 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %22, float %1103, float %1104, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1131 = extractvalue %dx.types.ResRet.f32 %1130, 1
  %1132 = fcmp fast ogt float %1131, 0.000000e+00
  br i1 %1132, label %1133, label %1166, !dx.controlflow.hints !77

; <label>:1133                                    ; preds = %1129
  %1134 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %22, float %1103, float %1104, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1135 = extractvalue %dx.types.ResRet.f32 %1134, 0
  %1136 = extractvalue %dx.types.ResRet.f32 %1134, 1
  %1137 = extractvalue %dx.types.ResRet.f32 %1134, 2
  %1138 = extractvalue %dx.types.ResRet.f32 %1134, 3
  %1139 = fsub fast float 1.000000e+00, %1085
  %1140 = fsub fast float %1139, %1096
  %1141 = fmul fast float %1140, 0x400921FB60000000
  %1142 = fadd fast float %1141, 0x3FF921FB60000000
  %1143 = call float @dx.op.unary.f32(i32 13, float %1142)  ; Sin(value)
  %1144 = fadd fast float %1143, -1.000000e+00
  %1145 = fmul fast float %1144, 0x3FD45F3060000000
  %1146 = fmul fast float %1140, 0x401921FB60000000
  %1147 = fadd fast float %1146, 0x400921FB60000000
  %1148 = call float @dx.op.unary.f32(i32 13, float %1147)  ; Sin(value)
  %1149 = fadd fast float %1148, 0x3E7777A5C0000000
  %1150 = fmul fast float %1149, 0x3FC45F3060000000
  %1151 = fmul fast float %1140, 0x4022D97C80000000
  %1152 = fadd fast float %1151, 0x4012D97C80000000
  %1153 = call float @dx.op.unary.f32(i32 13, float %1152)  ; Sin(value)
  %1154 = fadd fast float %1153, 1.000000e+00
  %1155 = fmul fast float %1154, 0x3FBB2995E0000000
  %1156 = fmul fast float %1140, 0x402921FB60000000
  %1157 = fadd fast float %1156, 0x401921FB60000000
  %1158 = call float @dx.op.unary.f32(i32 13, float %1157)  ; Sin(value)
  %1159 = fadd fast float %1158, 0xBE8777A5C0000000
  %1160 = fmul fast float %1159, 0x3FB45F3060000000
  %1161 = call float @dx.op.dot4.f32(i32 56, float %1135, float %1136, float %1137, float %1138, float %1145, float %1150, float %1155, float %1160)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1162 = fmul fast float %1161, 0xBFF7154760000000
  %1163 = call float @dx.op.unary.f32(i32 21, float %1162)  ; Exp(value)
  %1164 = call float @dx.op.unary.f32(i32 7, float %1163)  ; Saturate(value)
  %1165 = fadd float %1164, -1.000000e+00
  br label %1166

; <label>:1166                                    ; preds = %1133, %1129
  %1167 = phi float [ %1165, %1133 ], [ 0.000000e+00, %1129 ]
  %1168 = fmul fast float %1167, %1127
  %1169 = fadd fast float %1168, 1.000000e+00
  br label %1170

; <label>:1170                                    ; preds = %1166, %1070
  %1171 = phi float [ %1169, %1166 ], [ 1.000000e+00, %1070 ]
  %1172 = fmul fast float %1171, %1066
  %1173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1174 = extractvalue %dx.types.CBufRet.f32 %1173, 0
  %1175 = extractvalue %dx.types.CBufRet.f32 %1173, 1
  %1176 = extractvalue %dx.types.CBufRet.f32 %1173, 2
  %1177 = fadd fast float %1174, %287
  %1178 = fadd fast float %1175, %288
  %1179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %1180 = extractvalue %dx.types.CBufRet.f32 %1179, 1
  %1181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1182 = extractvalue %dx.types.CBufRet.f32 %1181, 0
  %1183 = extractvalue %dx.types.CBufRet.f32 %1181, 1
  %1184 = extractvalue %dx.types.CBufRet.f32 %1181, 2
  %1185 = fsub fast float -0.000000e+00, %1177
  %1186 = fsub fast float -0.000000e+00, %1178
  %1187 = fsub fast float %290, %1176
  %1188 = fadd fast float %1187, %1180
  %1189 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1185, float %1186, float %1188)  ; Dot3(ax,ay,az,bx,by,bz)
  %1190 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1182, float %1183, float %1184)  ; Dot3(ax,ay,az,bx,by,bz)
  %1191 = fdiv fast float 1.000000e+00, %1190
  %1192 = fmul fast float %1191, %1189
  %1193 = fmul fast float %1182, %1192
  %1194 = fmul fast float %1183, %1192
  %1195 = fadd fast float %1193, %1177
  %1196 = fadd fast float %1194, %1178
  %1197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %1198 = extractvalue %dx.types.CBufRet.f32 %1197, 0
  %1199 = extractvalue %dx.types.CBufRet.f32 %1197, 1
  %1200 = fsub fast float %1195, %1198
  %1201 = fsub fast float %1196, %1199
  %1202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %1203 = extractvalue %dx.types.CBufRet.f32 %1202, 2
  %1204 = extractvalue %dx.types.CBufRet.f32 %1202, 3
  %1205 = fmul fast float %1200, %1203
  %1206 = fmul fast float %1201, %1204
  %1207 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %1208 = extractvalue %dx.types.CBufRet.i32 %1207, 3
  %1209 = icmp eq i32 %1208, 0
  br i1 %1209, label %1215, label %1210, !dx.controlflow.hints !78

; <label>:1210                                    ; preds = %1170
  %1211 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %21, float %1205, float %1206, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1212 = extractvalue %dx.types.ResRet.f32 %1211, 0
  %1213 = extractvalue %dx.types.ResRet.f32 %1211, 1
  %1214 = extractvalue %dx.types.ResRet.f32 %1211, 2
  br label %1220

; <label>:1215                                    ; preds = %1170
  %1216 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %22, float %1205, float %1206, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1217 = extractvalue %dx.types.ResRet.f32 %1216, 0
  %1218 = extractvalue %dx.types.ResRet.f32 %1216, 1
  %1219 = extractvalue %dx.types.ResRet.f32 %1216, 2
  br label %1220

; <label>:1220                                    ; preds = %1215, %1210
  %1221 = phi float [ %1212, %1210 ], [ %1217, %1215 ]
  %1222 = phi float [ %1213, %1210 ], [ %1218, %1215 ]
  %1223 = phi float [ %1214, %1210 ], [ %1219, %1215 ]
  %1224 = extractvalue %dx.types.CBufRet.f32 %1179, 2
  %1225 = fmul fast float %1224, %1221
  %1226 = extractvalue %dx.types.CBufRet.f32 %1179, 0
  %1227 = fsub fast float %1192, %1226
  %1228 = fsub fast float %1227, %1225
  %1229 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1228)  ; FMax(a,b)
  %1230 = fmul fast float %1229, %1222
  %1231 = call float @dx.op.binary.f32(i32 36, float %1223, float %1230)  ; FMin(a,b)
  %1232 = fmul fast float %1231, 0xBFF7154760000000
  %1233 = call float @dx.op.unary.f32(i32 21, float %1232)  ; Exp(value)
  %1234 = fmul fast float %1172, %1233
  br label %1235

; <label>:1235                                    ; preds = %1220, %1065
  %1236 = phi float [ %1234, %1220 ], [ %1066, %1065 ]
  %1237 = call float @dx.op.binary.f32(i32 36, float %1236, float %1236)  ; FMin(a,b)
  %1238 = call float @dx.op.binary.f32(i32 36, float %1236, float %1237)  ; FMin(a,b)
  %1239 = fcmp fast ogt float %1238, 0.000000e+00
  br i1 %1239, label %1240, label %1338, !dx.controlflow.hints !79

; <label>:1240                                    ; preds = %1235
  %1241 = icmp eq i32 %396, 0
  br i1 %1241, label %1316, label %1242, !dx.controlflow.hints !80

; <label>:1242                                    ; preds = %1240
  %1243 = fsub fast float %289, %395
  %1244 = fcmp fast ogt float %1243, 0.000000e+00
  %1245 = fmul fast float %401, 5.120000e+02
  %1246 = fmul fast float %402, 5.120000e+02
  %1247 = fmul fast float %403, 5.120000e+02
  %1248 = fadd fast float %1247, %289
  %1249 = fsub fast float %395, %1248
  %1250 = fmul fast float %1249, 2.000000e+00
  %1251 = fadd fast float %1250, %1248
  %1252 = select i1 %1244, float %1251, float %1248
  %1253 = fsub fast float %1252, %289
  %1254 = call float @dx.op.dot3.f32(i32 55, float %1245, float %1246, float %1253, float %1245, float %1246, float %1253)  ; Dot3(ax,ay,az,bx,by,bz)
  %1255 = call float @dx.op.unary.f32(i32 25, float %1254)  ; Rsqrt(value)
  %1256 = fmul fast float %1255, %1245
  %1257 = fmul fast float %1255, %1246
  %1258 = fmul fast float %1255, %1253
  %1259 = fsub fast float %395, %289
  %1260 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %1259)  ; Dot3(ax,ay,az,bx,by,bz)
  %1261 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1256, float %1257, float %1258)  ; Dot3(ax,ay,az,bx,by,bz)
  %1262 = fdiv fast float 1.000000e+00, %1261
  %1263 = fmul fast float %1262, %1260
  %1264 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %1243, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1265 = fcmp fast ogt float %1264, 0.000000e+00
  %1266 = fcmp fast olt float %1264, 0.000000e+00
  %1267 = zext i1 %1265 to i32
  %1268 = zext i1 %1266 to i32
  %1269 = sub nsw i32 %1267, %1268
  %1270 = sitofp i32 %1269 to float
  %1271 = fsub fast float %1252, %395
  %1272 = call float @dx.op.dot3.f32(i32 55, float %1245, float %1246, float %1271, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1273 = fcmp fast ogt float %1272, 0.000000e+00
  %1274 = fcmp fast olt float %1272, 0.000000e+00
  %1275 = zext i1 %1273 to i32
  %1276 = zext i1 %1274 to i32
  %1277 = sub nsw i32 %1275, %1276
  %1278 = sitofp i32 %1277 to float
  %1279 = fcmp fast une float %1270, %1278
  br i1 %1279, label %1280, label %1290, !dx.controlflow.hints !81

; <label>:1280                                    ; preds = %1242
  %1281 = fmul fast float %1263, %1258
  %1282 = fmul fast float %1263, %1257
  %1283 = fmul fast float %1263, %1256
  %1284 = fmul fast float %1283, %1283
  %1285 = fmul fast float %1282, %1282
  %1286 = fadd fast float %1284, %1285
  %1287 = fmul fast float %1281, %1281
  %1288 = fadd fast float %1286, %1287
  %1289 = call float @dx.op.unary.f32(i32 24, float %1288)  ; Sqrt(value)
  br label %1300

; <label>:1290                                    ; preds = %1242
  %1291 = icmp slt i32 %1269, 0
  br i1 %1291, label %1292, label %1300, !dx.controlflow.hints !82

; <label>:1292                                    ; preds = %1290
  %1293 = fsub fast float %289, %1252
  %1294 = fmul fast float %1245, %1245
  %1295 = fmul fast float %1246, %1246
  %1296 = fadd fast float %1294, %1295
  %1297 = fmul fast float %1293, %1293
  %1298 = fadd fast float %1296, %1297
  %1299 = call float @dx.op.unary.f32(i32 24, float %1298)  ; Sqrt(value)
  br label %1300

; <label>:1300                                    ; preds = %1292, %1290, %1280
  %1301 = phi float [ %1289, %1280 ], [ %1299, %1292 ], [ 0.000000e+00, %1290 ]
  %1302 = fsub fast float -0.000000e+00, %1301
  %1303 = select i1 %1244, float -0.000000e+00, float %1302
  %1304 = fmul fast float %392, %1303
  %1305 = fmul fast float %393, %1303
  %1306 = fmul fast float %394, %1303
  %1307 = call float @dx.op.unary.f32(i32 21, float %1304)  ; Exp(value)
  %1308 = call float @dx.op.unary.f32(i32 21, float %1305)  ; Exp(value)
  %1309 = call float @dx.op.unary.f32(i32 21, float %1306)  ; Exp(value)
  %1310 = call float @dx.op.unary.f32(i32 7, float %1307)  ; Saturate(value)
  %1311 = call float @dx.op.unary.f32(i32 7, float %1308)  ; Saturate(value)
  %1312 = call float @dx.op.unary.f32(i32 7, float %1309)  ; Saturate(value)
  %1313 = fmul fast float %1310, %412
  %1314 = fmul fast float %1311, %413
  %1315 = fmul fast float %1312, %414
  br label %1316

; <label>:1316                                    ; preds = %1300, %1240
  %1317 = phi float [ %1313, %1300 ], [ %412, %1240 ]
  %1318 = phi float [ %1314, %1300 ], [ %413, %1240 ]
  %1319 = phi float [ %1315, %1300 ], [ %414, %1240 ]
  %1320 = fmul fast float %1317, %1236
  %1321 = fmul fast float %1318, %1236
  %1322 = fmul fast float %1319, %1236
  %1323 = fmul fast float %1320, 0x3FEC5BF8C0000000
  %1324 = fmul fast float %402, 0xBFF88F51C0000000
  %1325 = fmul fast float %1324, %1320
  %1326 = fmul fast float %403, 0x3FF88F51C0000000
  %1327 = fmul fast float %1326, %1320
  %1328 = fmul fast float %401, 0xBFF88F51C0000000
  %1329 = fmul fast float %1328, %1320
  %1330 = fmul fast float %1321, 0x3FEC5BF8C0000000
  %1331 = fmul fast float %1324, %1321
  %1332 = fmul fast float %1326, %1321
  %1333 = fmul fast float %1328, %1321
  %1334 = fmul fast float %1322, 0x3FEC5BF8C0000000
  %1335 = fmul fast float %1324, %1322
  %1336 = fmul fast float %1326, %1322
  %1337 = fmul fast float %1328, %1322
  br label %1338

; <label>:1338                                    ; preds = %1316, %1235, %391
  %1339 = phi float [ %1334, %1316 ], [ 0.000000e+00, %391 ], [ 0.000000e+00, %1235 ]
  %1340 = phi float [ %1335, %1316 ], [ 0.000000e+00, %391 ], [ 0.000000e+00, %1235 ]
  %1341 = phi float [ %1336, %1316 ], [ 0.000000e+00, %391 ], [ 0.000000e+00, %1235 ]
  %1342 = phi float [ %1337, %1316 ], [ 0.000000e+00, %391 ], [ 0.000000e+00, %1235 ]
  %1343 = phi float [ %1330, %1316 ], [ 0.000000e+00, %391 ], [ 0.000000e+00, %1235 ]
  %1344 = phi float [ %1331, %1316 ], [ 0.000000e+00, %391 ], [ 0.000000e+00, %1235 ]
  %1345 = phi float [ %1332, %1316 ], [ 0.000000e+00, %391 ], [ 0.000000e+00, %1235 ]
  %1346 = phi float [ %1333, %1316 ], [ 0.000000e+00, %391 ], [ 0.000000e+00, %1235 ]
  %1347 = phi float [ %1323, %1316 ], [ 0.000000e+00, %391 ], [ 0.000000e+00, %1235 ]
  %1348 = phi float [ %1325, %1316 ], [ 0.000000e+00, %391 ], [ 0.000000e+00, %1235 ]
  %1349 = phi float [ %1327, %1316 ], [ 0.000000e+00, %391 ], [ 0.000000e+00, %1235 ]
  %1350 = phi float [ %1329, %1316 ], [ 0.000000e+00, %391 ], [ 0.000000e+00, %1235 ]
  %1351 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1352 = extractvalue %dx.types.CBufRet.i32 %1351, 0
  %1353 = icmp eq i32 %1352, 0
  br i1 %1353, label %1813, label %1354, !dx.controlflow.hints !83

; <label>:1354                                    ; preds = %1338
  %1355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %1356 = extractvalue %dx.types.CBufRet.f32 %1355, 2
  %1357 = extractvalue %dx.types.CBufRet.f32 %1355, 3
  %1358 = fmul fast float %1356, %250
  %1359 = fmul fast float %1357, %251
  %1360 = fptoui float %1358 to i32
  %1361 = fptoui float %1359 to i32
  %1362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1363 = extractvalue %dx.types.CBufRet.f32 %1362, 0
  %1364 = extractvalue %dx.types.CBufRet.f32 %1362, 2
  %1365 = extractvalue %dx.types.CBufRet.f32 %1362, 3
  %1366 = fadd fast float %254, -4.000000e+00
  %1367 = call float @dx.op.binary.f32(i32 35, float %1366, float 0.000000e+00)  ; FMax(a,b)
  %1368 = fadd fast float %1367, %1363
  %1369 = fmul fast float %1368, %1364
  %1370 = call float @dx.op.unary.f32(i32 23, float %1369)  ; Log(value)
  %1371 = fmul fast float %1370, %1365
  %1372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1373 = extractvalue %dx.types.CBufRet.f32 %1372, 2
  %1374 = fmul fast float %1371, %1373
  %1375 = call float @dx.op.unary.f32(i32 7, float %1374)  ; Saturate(value)
  %1376 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1377 = extractvalue %dx.types.CBufRet.i32 %1376, 1
  %1378 = add i32 %1377, -1
  %1379 = uitofp i32 %1377 to float
  %1380 = fmul fast float %1379, %1375
  %1381 = fptoui float %1380 to i32
  %1382 = call i32 @dx.op.binary.i32(i32 40, i32 %1381, i32 %1378)  ; UMin(a,b)
  %1383 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %1384 = extractvalue %dx.types.CBufRet.i32 %1383, 2
  %1385 = extractvalue %dx.types.CBufRet.i32 %1383, 3
  %1386 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1361, i32 %1384, i32 %1360)  ; UMad(a,b,c)
  %1387 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1382, i32 %1385, i32 %1386)  ; UMad(a,b,c)
  %1388 = add nsw i32 %1352, -1
  %1389 = call i32 @dx.op.binary.i32(i32 37, i32 %1388, i32 0)  ; IMax(a,b)
  br label %1390

; <label>:1390                                    ; preds = %1797, %1354
  %1391 = phi i32 [ 0, %1354 ], [ %1810, %1797 ]
  %1392 = phi float [ %1339, %1354 ], [ %1798, %1797 ]
  %1393 = phi float [ %1340, %1354 ], [ %1799, %1797 ]
  %1394 = phi float [ %1341, %1354 ], [ %1800, %1797 ]
  %1395 = phi float [ %1342, %1354 ], [ %1801, %1797 ]
  %1396 = phi float [ %1343, %1354 ], [ %1802, %1797 ]
  %1397 = phi float [ %1344, %1354 ], [ %1803, %1797 ]
  %1398 = phi float [ %1345, %1354 ], [ %1804, %1797 ]
  %1399 = phi float [ %1346, %1354 ], [ %1805, %1797 ]
  %1400 = phi float [ %1347, %1354 ], [ %1806, %1797 ]
  %1401 = phi float [ %1348, %1354 ], [ %1807, %1797 ]
  %1402 = phi float [ %1349, %1354 ], [ %1808, %1797 ]
  %1403 = phi float [ %1350, %1354 ], [ %1809, %1797 ]
  %1404 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1405 = extractvalue %dx.types.CBufRet.i32 %1404, 0
  %1406 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1387, i32 %1405, i32 %1391)  ; UMad(a,b,c)
  %1407 = shl i32 %1406, 2
  %1408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1407, i32 undef)  ; BufferLoad(srv,index,wot)
  %1409 = extractvalue %dx.types.ResRet.i32 %1408, 0
  %1410 = icmp eq i32 %1409, 0
  br i1 %1410, label %1797, label %1411

; <label>:1411                                    ; preds = %1390
  br label %1412

; <label>:1412                                    ; preds = %1585, %1411
  %1413 = phi i32 [ %1431, %1585 ], [ %1409, %1411 ]
  %1414 = phi float [ %1586, %1585 ], [ %1392, %1411 ]
  %1415 = phi float [ %1587, %1585 ], [ %1393, %1411 ]
  %1416 = phi float [ %1588, %1585 ], [ %1394, %1411 ]
  %1417 = phi float [ %1589, %1585 ], [ %1395, %1411 ]
  %1418 = phi float [ %1590, %1585 ], [ %1396, %1411 ]
  %1419 = phi float [ %1591, %1585 ], [ %1397, %1411 ]
  %1420 = phi float [ %1592, %1585 ], [ %1398, %1411 ]
  %1421 = phi float [ %1593, %1585 ], [ %1399, %1411 ]
  %1422 = phi float [ %1594, %1585 ], [ %1400, %1411 ]
  %1423 = phi float [ %1595, %1585 ], [ %1401, %1411 ]
  %1424 = phi float [ %1596, %1585 ], [ %1402, %1411 ]
  %1425 = phi float [ %1597, %1585 ], [ %1403, %1411 ]
  %1426 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1413)  ; FirstbitLo(value)
  %1427 = shl i32 %1391, 5
  %1428 = add i32 %1426, %1427
  %1429 = and i32 %1426, 31
  %1430 = shl i32 1, %1429
  %1431 = xor i32 %1430, %1413
  %1432 = mul i32 %1428, 112
  %1433 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %1432, i32 undef)  ; BufferLoad(srv,index,wot)
  %1434 = extractvalue %dx.types.ResRet.f32 %1433, 0
  %1435 = extractvalue %dx.types.ResRet.f32 %1433, 1
  %1436 = extractvalue %dx.types.ResRet.f32 %1433, 2
  %1437 = or i32 %1432, 12
  %1438 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %1437, i32 undef)  ; BufferLoad(srv,index,wot)
  %1439 = extractvalue %dx.types.ResRet.f32 %1438, 0
  %1440 = add i32 %1432, 16
  %1441 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %1440, i32 undef)  ; BufferLoad(srv,index,wot)
  %1442 = extractvalue %dx.types.ResRet.f32 %1441, 0
  %1443 = extractvalue %dx.types.ResRet.f32 %1441, 1
  %1444 = extractvalue %dx.types.ResRet.f32 %1441, 2
  %1445 = add i32 %1432, 28
  %1446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %1445, i32 undef)  ; BufferLoad(srv,index,wot)
  %1447 = extractvalue %dx.types.ResRet.i32 %1446, 0
  %1448 = add i32 %1432, 32
  %1449 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %1448, i32 undef)  ; BufferLoad(srv,index,wot)
  %1450 = extractvalue %dx.types.ResRet.f32 %1449, 0
  %1451 = extractvalue %dx.types.ResRet.f32 %1449, 1
  %1452 = extractvalue %dx.types.ResRet.f32 %1449, 2
  %1453 = add i32 %1432, 44
  %1454 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %1453, i32 undef)  ; BufferLoad(srv,index,wot)
  %1455 = extractvalue %dx.types.ResRet.f32 %1454, 0
  %1456 = add i32 %1432, 48
  %1457 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %1456, i32 undef)  ; BufferLoad(srv,index,wot)
  %1458 = extractvalue %dx.types.ResRet.f32 %1457, 0
  %1459 = extractvalue %dx.types.ResRet.f32 %1457, 1
  %1460 = extractvalue %dx.types.ResRet.f32 %1457, 2
  %1461 = extractvalue %dx.types.ResRet.f32 %1457, 3
  %1462 = add i32 %1432, 64
  %1463 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %1462, i32 undef)  ; BufferLoad(srv,index,wot)
  %1464 = extractvalue %dx.types.ResRet.f32 %1463, 0
  %1465 = extractvalue %dx.types.ResRet.f32 %1463, 1
  %1466 = extractvalue %dx.types.ResRet.f32 %1463, 2
  %1467 = extractvalue %dx.types.ResRet.f32 %1463, 3
  %1468 = add i32 %1432, 80
  %1469 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %1468, i32 undef)  ; BufferLoad(srv,index,wot)
  %1470 = extractvalue %dx.types.ResRet.f32 %1469, 1
  %1471 = extractvalue %dx.types.ResRet.f32 %1469, 2
  %1472 = add i32 %1432, 92
  %1473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %1472, i32 undef)  ; BufferLoad(srv,index,wot)
  %1474 = extractvalue %dx.types.ResRet.i32 %1473, 0
  %1475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %1476 = extractvalue %dx.types.CBufRet.f32 %1475, 2
  %1477 = lshr i32 %1447, 16
  %1478 = and i32 %1477, 255
  %1479 = uitofp i32 %1478 to float
  %1480 = fmul fast float %1479, 0x3F70101020000000
  %1481 = fmul fast float %1480, %1434
  %1482 = fmul fast float %1480, %1435
  %1483 = fmul fast float %1480, %1436
  %1484 = fmul fast float %1476, %1470
  %1485 = call float @dx.op.dot3.f32(i32 55, float %1481, float %1482, float %1483, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1486 = select i1 %299, float %1484, float %1481
  %1487 = select i1 %299, float %1485, float %1482
  %1488 = select i1 %299, float %1471, float %1483
  %1489 = and i32 %1474, 65535
  %1490 = uitofp i32 %1489 to float
  %1491 = lshr i32 %1474, 16
  %1492 = uitofp i32 %1491 to float
  %1493 = and i32 %1447, 65535
  %1494 = and i32 %1447, 50331648
  %1495 = icmp eq i32 %1494, 33554432
  %1496 = call float @dx.op.dot3.f32(i32 55, float %1450, float %1451, float %1452, float %1450, float %1451, float %1452)  ; Dot3(ax,ay,az,bx,by,bz)
  %1497 = fsub fast float %287, %1458
  %1498 = fsub fast float %288, %1459
  %1499 = fsub fast float %289, %1460
  %1500 = call float @dx.op.dot3.f32(i32 55, float %1497, float %1498, float %1499, float %1450, float %1451, float %1452)  ; Dot3(ax,ay,az,bx,by,bz)
  %1501 = fdiv fast float %1500, %1496
  %1502 = call float @dx.op.binary.f32(i32 35, float %1501, float -1.000000e+00)  ; FMax(a,b)
  %1503 = call float @dx.op.binary.f32(i32 36, float %1502, float 1.000000e+00)  ; FMin(a,b)
  %1504 = fmul fast float %1503, %1450
  %1505 = fmul fast float %1503, %1451
  %1506 = fmul fast float %1503, %1452
  %1507 = fadd fast float %1504, %1458
  %1508 = fadd fast float %1505, %1459
  %1509 = fadd fast float %1506, %1460
  %1510 = fsub fast float %1507, %287
  %1511 = fsub fast float %1508, %288
  %1512 = fsub fast float %1509, %289
  %1513 = call float @dx.op.dot3.f32(i32 55, float %1510, float %1511, float %1512, float %1510, float %1511, float %1512)  ; Dot3(ax,ay,az,bx,by,bz)
  %1514 = call float @dx.op.unary.f32(i32 24, float %1513)  ; Sqrt(value)
  %1515 = fdiv fast float 1.000000e+00, %1514
  %1516 = fmul fast float %1510, %1515
  %1517 = fmul fast float %1511, %1515
  %1518 = fmul fast float %1512, %1515
  %1519 = fadd fast float %1514, %1439
  %1520 = fdiv fast float 1.000000e+00, %1519
  %1521 = fmul float %1455, %1520
  %1522 = fmul float %1521, %1521
  %1523 = call float @dx.op.unary.f32(i32 7, float %1522)  ; Saturate(value)
  br i1 %1495, label %1524, label %1548, !dx.controlflow.hints !84

; <label>:1524                                    ; preds = %1412
  %1525 = fmul fast float %1466, %1442
  %1526 = fmul fast float %1466, %1443
  %1527 = fmul fast float %1466, %1444
  %1528 = fsub fast float %1525, %287
  %1529 = fadd fast float %1528, %1507
  %1530 = fsub fast float %1526, %288
  %1531 = fadd fast float %1530, %1508
  %1532 = fsub fast float %1527, %289
  %1533 = fadd fast float %1532, %1509
  %1534 = call float @dx.op.dot3.f32(i32 55, float %1529, float %1531, float %1533, float %1529, float %1531, float %1533)  ; Dot3(ax,ay,az,bx,by,bz)
  %1535 = call float @dx.op.unary.f32(i32 25, float %1534)  ; Rsqrt(value)
  %1536 = fmul fast float %1535, %1529
  %1537 = fmul fast float %1535, %1531
  %1538 = fmul fast float %1535, %1533
  %1539 = fsub fast float %287, %1507
  %1540 = fsub fast float %288, %1508
  %1541 = fsub fast float %289, %1509
  %1542 = fsub fast float -0.000000e+00, %1539
  %1543 = fsub fast float -0.000000e+00, %1540
  %1544 = fsub fast float -0.000000e+00, %1541
  %1545 = call float @dx.op.dot3.f32(i32 55, float %1542, float %1543, float %1544, float %1442, float %1443, float %1444)  ; Dot3(ax,ay,az,bx,by,bz)
  %1546 = fcmp fast ogt float %1545, 0.000000e+00
  %1547 = uitofp i1 %1546 to float
  br label %1548

; <label>:1548                                    ; preds = %1524, %1412
  %1549 = phi float [ %1547, %1524 ], [ 1.000000e+00, %1412 ]
  %1550 = phi float [ %1536, %1524 ], [ %1516, %1412 ]
  %1551 = phi float [ %1537, %1524 ], [ %1517, %1412 ]
  %1552 = phi float [ %1538, %1524 ], [ %1518, %1412 ]
  %1553 = call float @dx.op.dot3.f32(i32 55, float %1442, float %1443, float %1444, float %1550, float %1551, float %1552)  ; Dot3(ax,ay,az,bx,by,bz)
  %1554 = fmul fast float %1553, %1553
  %1555 = call float @dx.op.unary.f32(i32 7, float %1554)  ; Saturate(value)
  %1556 = fsub fast float 1.000000e+00, %1555
  %1557 = fmul fast float %1556, 5.000000e-01
  %1558 = fcmp fast ogt float %1553, 0.000000e+00
  %1559 = fsub fast float 1.000000e+00, %1557
  %1560 = select i1 %1558, float %1557, float %1559
  %1561 = fmul fast float %1560, %1492
  %1562 = fadd fast float %1561, %1490
  %1563 = fmul fast float %1562, 0x3EF0001000000000
  %1564 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %22, float %1563, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1565 = extractvalue %dx.types.ResRet.f32 %1564, 0
  %1566 = fmul fast float %1553, %1464
  %1567 = fadd fast float %1566, %1465
  %1568 = call float @dx.op.unary.f32(i32 7, float %1567)  ; Saturate(value)
  %1569 = select i1 %1495, float 1.000000e+00, float %1568
  %1570 = select i1 %1495, float %1568, float 1.000000e+00
  %1571 = fmul fast float %1514, %1461
  %1572 = fsub fast float 1.000000e+00, %1571
  %1573 = fmul fast float %1572, %1467
  %1574 = call float @dx.op.unary.f32(i32 7, float %1573)  ; Saturate(value)
  %1575 = fmul fast float %1574, %1570
  %1576 = fmul fast float %1575, 2.000000e+00
  %1577 = fsub fast float 3.000000e+00, %1576
  %1578 = fmul fast float %1565, %1549
  %1579 = fmul fast float %1575, %1575
  %1580 = fmul fast float %1579, %1578
  %1581 = fmul fast float %1580, %1577
  %1582 = call float @dx.op.binary.f32(i32 36, float %1581, float %1581)  ; FMin(a,b)
  %1583 = call float @dx.op.binary.f32(i32 36, float %1581, float %1582)  ; FMin(a,b)
  %1584 = fcmp fast ogt float %1583, 0.000000e+00
  br i1 %1584, label %1599, label %1585, !dx.controlflow.hints !85

; <label>:1585                                    ; preds = %1762, %1676, %1548
  %1586 = phi float [ %1792, %1762 ], [ %1414, %1676 ], [ %1414, %1548 ]
  %1587 = phi float [ %1793, %1762 ], [ %1415, %1676 ], [ %1415, %1548 ]
  %1588 = phi float [ %1794, %1762 ], [ %1416, %1676 ], [ %1416, %1548 ]
  %1589 = phi float [ %1795, %1762 ], [ %1417, %1676 ], [ %1417, %1548 ]
  %1590 = phi float [ %1784, %1762 ], [ %1418, %1676 ], [ %1418, %1548 ]
  %1591 = phi float [ %1785, %1762 ], [ %1419, %1676 ], [ %1419, %1548 ]
  %1592 = phi float [ %1786, %1762 ], [ %1420, %1676 ], [ %1420, %1548 ]
  %1593 = phi float [ %1787, %1762 ], [ %1421, %1676 ], [ %1421, %1548 ]
  %1594 = phi float [ %1776, %1762 ], [ %1422, %1676 ], [ %1422, %1548 ]
  %1595 = phi float [ %1777, %1762 ], [ %1423, %1676 ], [ %1423, %1548 ]
  %1596 = phi float [ %1778, %1762 ], [ %1424, %1676 ], [ %1424, %1548 ]
  %1597 = phi float [ %1779, %1762 ], [ %1425, %1676 ], [ %1425, %1548 ]
  %1598 = icmp eq i32 %1413, %1430
  br i1 %1598, label %1796, label %1412

; <label>:1599                                    ; preds = %1548
  %1600 = icmp eq i32 %1493, 255
  br i1 %1600, label %1676, label %1601, !dx.controlflow.hints !86

; <label>:1601                                    ; preds = %1599
  %1602 = mul nuw nsw i32 %1493, 176
  %1603 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1602, i32 undef)  ; BufferLoad(srv,index,wot)
  %1604 = extractvalue %dx.types.ResRet.f32 %1603, 0
  %1605 = extractvalue %dx.types.ResRet.f32 %1603, 1
  %1606 = extractvalue %dx.types.ResRet.f32 %1603, 2
  %1607 = extractvalue %dx.types.ResRet.f32 %1603, 3
  %1608 = add nuw nsw i32 %1602, 16
  %1609 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1608, i32 undef)  ; BufferLoad(srv,index,wot)
  %1610 = extractvalue %dx.types.ResRet.f32 %1609, 0
  %1611 = extractvalue %dx.types.ResRet.f32 %1609, 1
  %1612 = add nuw nsw i32 %1602, 32
  %1613 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1612, i32 undef)  ; BufferLoad(srv,index,wot)
  %1614 = extractvalue %dx.types.ResRet.f32 %1613, 0
  %1615 = add nuw nsw i32 %1602, 48
  %1616 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1615, i32 undef)  ; BufferLoad(srv,index,wot)
  %1617 = extractvalue %dx.types.ResRet.f32 %1616, 0
  %1618 = extractvalue %dx.types.ResRet.f32 %1616, 1
  %1619 = extractvalue %dx.types.ResRet.f32 %1616, 2
  %1620 = extractvalue %dx.types.ResRet.f32 %1616, 3
  %1621 = add nuw nsw i32 %1602, 64
  %1622 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1621, i32 undef)  ; BufferLoad(srv,index,wot)
  %1623 = extractvalue %dx.types.ResRet.f32 %1622, 0
  %1624 = extractvalue %dx.types.ResRet.f32 %1622, 1
  %1625 = extractvalue %dx.types.ResRet.f32 %1622, 2
  %1626 = extractvalue %dx.types.ResRet.f32 %1622, 3
  %1627 = add nuw nsw i32 %1602, 80
  %1628 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1627, i32 undef)  ; BufferLoad(srv,index,wot)
  %1629 = extractvalue %dx.types.ResRet.f32 %1628, 0
  %1630 = extractvalue %dx.types.ResRet.f32 %1628, 1
  %1631 = extractvalue %dx.types.ResRet.f32 %1628, 2
  %1632 = extractvalue %dx.types.ResRet.f32 %1628, 3
  %1633 = add nuw nsw i32 %1602, 96
  %1634 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1633, i32 undef)  ; BufferLoad(srv,index,wot)
  %1635 = extractvalue %dx.types.ResRet.f32 %1634, 0
  %1636 = extractvalue %dx.types.ResRet.f32 %1634, 1
  %1637 = extractvalue %dx.types.ResRet.f32 %1634, 2
  %1638 = extractvalue %dx.types.ResRet.f32 %1634, 3
  %1639 = bitcast float %1611 to i32
  %1640 = fmul fast float %1617, %287
  %1641 = call float @dx.op.tertiary.f32(i32 46, float %288, float %1623, float %1640)  ; FMad(a,b,c)
  %1642 = call float @dx.op.tertiary.f32(i32 46, float %289, float %1629, float %1641)  ; FMad(a,b,c)
  %1643 = fadd fast float %1642, %1635
  %1644 = fmul fast float %1618, %287
  %1645 = call float @dx.op.tertiary.f32(i32 46, float %288, float %1624, float %1644)  ; FMad(a,b,c)
  %1646 = call float @dx.op.tertiary.f32(i32 46, float %289, float %1630, float %1645)  ; FMad(a,b,c)
  %1647 = fadd fast float %1646, %1636
  %1648 = fmul fast float %1619, %287
  %1649 = call float @dx.op.tertiary.f32(i32 46, float %288, float %1625, float %1648)  ; FMad(a,b,c)
  %1650 = call float @dx.op.tertiary.f32(i32 46, float %289, float %1631, float %1649)  ; FMad(a,b,c)
  %1651 = fadd fast float %1650, %1637
  %1652 = fmul fast float %1620, %287
  %1653 = call float @dx.op.tertiary.f32(i32 46, float %288, float %1626, float %1652)  ; FMad(a,b,c)
  %1654 = call float @dx.op.tertiary.f32(i32 46, float %289, float %1632, float %1653)  ; FMad(a,b,c)
  %1655 = fadd fast float %1654, %1638
  %1656 = fdiv fast float %1643, %1655
  %1657 = fdiv fast float %1647, %1655
  %1658 = fdiv fast float %1651, %1655
  %1659 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %1658)  ; FMax(a,b)
  %1660 = fmul fast float %1656, %1610
  %1661 = fmul fast float %1657, %1610
  %1662 = call float @dx.op.binary.f32(i32 35, float %1660, float %1606)  ; FMax(a,b)
  %1663 = call float @dx.op.binary.f32(i32 35, float %1661, float %1606)  ; FMax(a,b)
  %1664 = call float @dx.op.binary.f32(i32 36, float %1662, float %1607)  ; FMin(a,b)
  %1665 = call float @dx.op.binary.f32(i32 36, float %1663, float %1607)  ; FMin(a,b)
  %1666 = fadd fast float %1664, %1604
  %1667 = fadd fast float %1665, %1605
  %1668 = uitofp i32 %1639 to float
  %1669 = fadd fast float %1659, %1614
  %1670 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %24, float %1666, float %1667, float %1668, float undef, i32 0, i32 0, i32 undef, float %1669)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1671 = extractvalue %dx.types.ResRet.f32 %1670, 0
  %1672 = fadd fast float %1671, -1.000000e+00
  %1673 = fmul fast float %1672, %1569
  %1674 = fadd fast float %1673, 1.000000e+00
  %1675 = fmul fast float %1674, %1581
  br label %1676

; <label>:1676                                    ; preds = %1601, %1599
  %1677 = phi float [ %1675, %1601 ], [ %1581, %1599 ]
  %1678 = call float @dx.op.binary.f32(i32 36, float %1677, float %1677)  ; FMin(a,b)
  %1679 = call float @dx.op.binary.f32(i32 36, float %1677, float %1678)  ; FMin(a,b)
  %1680 = fcmp fast ogt float %1679, 0.000000e+00
  br i1 %1680, label %1681, label %1585, !dx.controlflow.hints !87

; <label>:1681                                    ; preds = %1676
  %1682 = extractvalue %dx.types.CBufRet.f32 %1475, 1
  %1683 = fmul fast float %1677, %1523
  %1684 = call float @dx.op.binary.f32(i32 36, float %1683, float %1682)  ; FMin(a,b)
  %1685 = icmp eq i32 %396, 0
  br i1 %1685, label %1762, label %1686, !dx.controlflow.hints !80

; <label>:1686                                    ; preds = %1681
  %1687 = fsub fast float %1460, %395
  %1688 = fcmp fast ogt float %1687, 0.000000e+00
  %1689 = fsub fast float %289, %395
  %1690 = fcmp fast ogt float %1689, 0.000000e+00
  %1691 = xor i1 %1690, %1688
  %1692 = fsub fast float %395, %1460
  %1693 = fmul fast float %1692, 2.000000e+00
  %1694 = fadd fast float %1693, %1460
  %1695 = select i1 %1691, float %1460, float %1694
  %1696 = fsub fast float %1458, %287
  %1697 = fsub fast float %1459, %288
  %1698 = fsub fast float %1695, %289
  %1699 = call float @dx.op.dot3.f32(i32 55, float %1696, float %1697, float %1698, float %1696, float %1697, float %1698)  ; Dot3(ax,ay,az,bx,by,bz)
  %1700 = call float @dx.op.unary.f32(i32 25, float %1699)  ; Rsqrt(value)
  %1701 = fmul fast float %1700, %1696
  %1702 = fmul fast float %1700, %1697
  %1703 = fmul fast float %1700, %1698
  %1704 = fsub fast float %395, %289
  %1705 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %1704)  ; Dot3(ax,ay,az,bx,by,bz)
  %1706 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1701, float %1702, float %1703)  ; Dot3(ax,ay,az,bx,by,bz)
  %1707 = fdiv fast float 1.000000e+00, %1706
  %1708 = fmul fast float %1707, %1705
  %1709 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %1689, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1710 = fcmp fast ogt float %1709, 0.000000e+00
  %1711 = fcmp fast olt float %1709, 0.000000e+00
  %1712 = zext i1 %1710 to i32
  %1713 = zext i1 %1711 to i32
  %1714 = sub nsw i32 %1712, %1713
  %1715 = sitofp i32 %1714 to float
  %1716 = fsub fast float %1695, %395
  %1717 = call float @dx.op.dot3.f32(i32 55, float %1696, float %1697, float %1716, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1718 = fcmp fast ogt float %1717, 0.000000e+00
  %1719 = fcmp fast olt float %1717, 0.000000e+00
  %1720 = zext i1 %1718 to i32
  %1721 = zext i1 %1719 to i32
  %1722 = sub nsw i32 %1720, %1721
  %1723 = sitofp i32 %1722 to float
  %1724 = fcmp fast une float %1715, %1723
  br i1 %1724, label %1725, label %1735, !dx.controlflow.hints !81

; <label>:1725                                    ; preds = %1686
  %1726 = fmul fast float %1708, %1703
  %1727 = fmul fast float %1708, %1702
  %1728 = fmul fast float %1708, %1701
  %1729 = fmul fast float %1728, %1728
  %1730 = fmul fast float %1727, %1727
  %1731 = fadd fast float %1729, %1730
  %1732 = fmul fast float %1726, %1726
  %1733 = fadd fast float %1731, %1732
  %1734 = call float @dx.op.unary.f32(i32 24, float %1733)  ; Sqrt(value)
  br label %1745

; <label>:1735                                    ; preds = %1686
  %1736 = icmp slt i32 %1714, 0
  br i1 %1736, label %1737, label %1745, !dx.controlflow.hints !82

; <label>:1737                                    ; preds = %1735
  %1738 = fsub fast float %289, %1695
  %1739 = fmul fast float %1497, %1497
  %1740 = fmul fast float %1498, %1498
  %1741 = fadd fast float %1739, %1740
  %1742 = fmul fast float %1738, %1738
  %1743 = fadd fast float %1741, %1742
  %1744 = call float @dx.op.unary.f32(i32 24, float %1743)  ; Sqrt(value)
  br label %1745

; <label>:1745                                    ; preds = %1737, %1735, %1725
  %1746 = phi float [ %1734, %1725 ], [ %1744, %1737 ], [ 0.000000e+00, %1735 ]
  %1747 = and i1 %1690, %1688
  %1748 = fsub fast float -0.000000e+00, %1746
  %1749 = select i1 %1747, float -0.000000e+00, float %1748
  %1750 = fmul fast float %392, %1749
  %1751 = fmul fast float %393, %1749
  %1752 = fmul fast float %394, %1749
  %1753 = call float @dx.op.unary.f32(i32 21, float %1750)  ; Exp(value)
  %1754 = call float @dx.op.unary.f32(i32 21, float %1751)  ; Exp(value)
  %1755 = call float @dx.op.unary.f32(i32 21, float %1752)  ; Exp(value)
  %1756 = call float @dx.op.unary.f32(i32 7, float %1753)  ; Saturate(value)
  %1757 = call float @dx.op.unary.f32(i32 7, float %1754)  ; Saturate(value)
  %1758 = call float @dx.op.unary.f32(i32 7, float %1755)  ; Saturate(value)
  %1759 = fmul fast float %1756, %1486
  %1760 = fmul fast float %1757, %1487
  %1761 = fmul fast float %1758, %1488
  br label %1762

; <label>:1762                                    ; preds = %1745, %1681
  %1763 = phi float [ %1759, %1745 ], [ %1486, %1681 ]
  %1764 = phi float [ %1760, %1745 ], [ %1487, %1681 ]
  %1765 = phi float [ %1761, %1745 ], [ %1488, %1681 ]
  %1766 = fmul fast float %1763, %1684
  %1767 = fmul fast float %1764, %1684
  %1768 = fmul fast float %1765, %1684
  %1769 = fmul fast float %1766, 0x3FEC5BF8C0000000
  %1770 = fmul fast float %1517, 0x3FF88F51C0000000
  %1771 = fmul fast float %1770, %1766
  %1772 = fmul fast float %1518, 0x3FF88F51C0000000
  %1773 = fmul fast float %1772, %1766
  %1774 = fmul fast float %1516, 0x3FF88F51C0000000
  %1775 = fmul fast float %1774, %1766
  %1776 = fadd fast float %1769, %1422
  %1777 = fsub fast float %1423, %1771
  %1778 = fadd fast float %1773, %1424
  %1779 = fsub fast float %1425, %1775
  %1780 = fmul fast float %1767, 0x3FEC5BF8C0000000
  %1781 = fmul fast float %1770, %1767
  %1782 = fmul fast float %1772, %1767
  %1783 = fmul fast float %1774, %1767
  %1784 = fadd fast float %1780, %1418
  %1785 = fsub fast float %1419, %1781
  %1786 = fadd fast float %1782, %1420
  %1787 = fsub fast float %1421, %1783
  %1788 = fmul fast float %1768, 0x3FEC5BF8C0000000
  %1789 = fmul fast float %1770, %1768
  %1790 = fmul fast float %1772, %1768
  %1791 = fmul fast float %1774, %1768
  %1792 = fadd fast float %1788, %1414
  %1793 = fsub fast float %1415, %1789
  %1794 = fadd fast float %1790, %1416
  %1795 = fsub fast float %1417, %1791
  br label %1585

; <label>:1796                                    ; preds = %1585
  br label %1797

; <label>:1797                                    ; preds = %1796, %1390
  %1798 = phi float [ %1392, %1390 ], [ %1586, %1796 ]
  %1799 = phi float [ %1393, %1390 ], [ %1587, %1796 ]
  %1800 = phi float [ %1394, %1390 ], [ %1588, %1796 ]
  %1801 = phi float [ %1395, %1390 ], [ %1589, %1796 ]
  %1802 = phi float [ %1396, %1390 ], [ %1590, %1796 ]
  %1803 = phi float [ %1397, %1390 ], [ %1591, %1796 ]
  %1804 = phi float [ %1398, %1390 ], [ %1592, %1796 ]
  %1805 = phi float [ %1399, %1390 ], [ %1593, %1796 ]
  %1806 = phi float [ %1400, %1390 ], [ %1594, %1796 ]
  %1807 = phi float [ %1401, %1390 ], [ %1595, %1796 ]
  %1808 = phi float [ %1402, %1390 ], [ %1596, %1796 ]
  %1809 = phi float [ %1403, %1390 ], [ %1597, %1796 ]
  %1810 = add i32 %1391, 1
  %1811 = icmp ugt i32 %1810, %1389
  br i1 %1811, label %1812, label %1390

; <label>:1812                                    ; preds = %1797
  br label %1813

; <label>:1813                                    ; preds = %1812, %1338
  %1814 = phi float [ %1339, %1338 ], [ %1798, %1812 ]
  %1815 = phi float [ %1340, %1338 ], [ %1799, %1812 ]
  %1816 = phi float [ %1341, %1338 ], [ %1800, %1812 ]
  %1817 = phi float [ %1342, %1338 ], [ %1801, %1812 ]
  %1818 = phi float [ %1343, %1338 ], [ %1802, %1812 ]
  %1819 = phi float [ %1344, %1338 ], [ %1803, %1812 ]
  %1820 = phi float [ %1345, %1338 ], [ %1804, %1812 ]
  %1821 = phi float [ %1346, %1338 ], [ %1805, %1812 ]
  %1822 = phi float [ %1347, %1338 ], [ %1806, %1812 ]
  %1823 = phi float [ %1348, %1338 ], [ %1807, %1812 ]
  %1824 = phi float [ %1349, %1338 ], [ %1808, %1812 ]
  %1825 = phi float [ %1350, %1338 ], [ %1809, %1812 ]
  %1826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1827 = extractvalue %dx.types.CBufRet.f32 %1826, 0
  %1828 = extractvalue %dx.types.CBufRet.f32 %1826, 1
  %1829 = fmul fast float %1827, %1822
  %1830 = fmul fast float %1828, %1823
  %1831 = fmul fast float %1828, %1824
  %1832 = fmul fast float %1828, %1825
  %1833 = fmul fast float %1827, %1818
  %1834 = fmul fast float %1828, %1819
  %1835 = fmul fast float %1828, %1820
  %1836 = fmul fast float %1828, %1821
  %1837 = fmul fast float %1827, %1814
  %1838 = fmul fast float %1828, %1815
  %1839 = fmul fast float %1828, %1816
  %1840 = fmul fast float %1828, %1817
  %1841 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %17, i32 0, i32 %180, i32 %181, i32 0, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1842 = extractvalue %dx.types.ResRet.f32 %1841, 0
  %1843 = extractvalue %dx.types.ResRet.f32 %1841, 1
  %1844 = extractvalue %dx.types.ResRet.f32 %1841, 2
  %1845 = extractvalue %dx.types.ResRet.f32 %1841, 3
  %1846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1847 = extractvalue %dx.types.CBufRet.f32 %1846, 1
  %1848 = fmul fast float %1847, %1842
  %1849 = fmul fast float %1847, %1843
  %1850 = fmul fast float %1847, %1844
  %1851 = fmul fast float %1847, %1845
  %1852 = extractvalue %dx.types.CBufRet.f32 %1826, 2
  %1853 = extractvalue %dx.types.CBufRet.f32 %1826, 3
  %1854 = fmul fast float %1848, %1852
  %1855 = fmul fast float %1849, %1853
  %1856 = fmul fast float %1850, %1853
  %1857 = fmul fast float %1851, %1853
  %1858 = fadd fast float %1854, %1829
  %1859 = fadd fast float %1855, %1830
  %1860 = fadd fast float %1856, %1831
  %1861 = fadd fast float %1857, %1832
  %1862 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %17, i32 0, i32 %180, i32 %181, i32 1, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1863 = extractvalue %dx.types.ResRet.f32 %1862, 0
  %1864 = extractvalue %dx.types.ResRet.f32 %1862, 1
  %1865 = extractvalue %dx.types.ResRet.f32 %1862, 2
  %1866 = extractvalue %dx.types.ResRet.f32 %1862, 3
  %1867 = fmul fast float %1847, %1863
  %1868 = fmul fast float %1847, %1864
  %1869 = fmul fast float %1847, %1865
  %1870 = fmul fast float %1847, %1866
  %1871 = fmul fast float %1867, %1852
  %1872 = fmul fast float %1868, %1853
  %1873 = fmul fast float %1869, %1853
  %1874 = fmul fast float %1870, %1853
  %1875 = fadd fast float %1871, %1833
  %1876 = fadd fast float %1872, %1834
  %1877 = fadd fast float %1873, %1835
  %1878 = fadd fast float %1874, %1836
  %1879 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %17, i32 0, i32 %180, i32 %181, i32 2, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1880 = extractvalue %dx.types.ResRet.f32 %1879, 0
  %1881 = extractvalue %dx.types.ResRet.f32 %1879, 1
  %1882 = extractvalue %dx.types.ResRet.f32 %1879, 2
  %1883 = extractvalue %dx.types.ResRet.f32 %1879, 3
  %1884 = fmul fast float %1847, %1880
  %1885 = fmul fast float %1847, %1881
  %1886 = fmul fast float %1847, %1882
  %1887 = fmul fast float %1847, %1883
  %1888 = fmul fast float %1884, %1852
  %1889 = fmul fast float %1885, %1853
  %1890 = fmul fast float %1886, %1853
  %1891 = fmul fast float %1887, %1853
  %1892 = fadd fast float %1888, %1837
  %1893 = fadd fast float %1889, %1838
  %1894 = fadd fast float %1890, %1839
  %1895 = fadd fast float %1891, %1840
  %1896 = select i1 %111, float 0x3FE5555560000000, float %153
  %1897 = fmul fast float %1859, %1896
  %1898 = fmul fast float %1860, %1896
  %1899 = fmul fast float %1861, %1896
  %1900 = fmul fast float %1876, %1896
  %1901 = fmul fast float %1877, %1896
  %1902 = fmul fast float %1878, %1896
  %1903 = fmul fast float %1893, %1896
  %1904 = fmul fast float %1894, %1896
  %1905 = fmul fast float %1895, %1896
  %1906 = extractvalue %dx.types.CBufRet.f32 %1846, 0
  %1907 = fmul fast float %1906, %1858
  %1908 = fmul fast float %1897, %1906
  %1909 = fmul fast float %1898, %1906
  %1910 = fmul fast float %1899, %1906
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %180, i32 %181, i32 0, float %1907, float %1908, float %1909, float %1910, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1912 = extractvalue %dx.types.CBufRet.f32 %1911, 0
  %1913 = fmul fast float %1912, %1875
  %1914 = fmul fast float %1900, %1912
  %1915 = fmul fast float %1901, %1912
  %1916 = fmul fast float %1902, %1912
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %180, i32 %181, i32 1, float %1913, float %1914, float %1915, float %1916, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1918 = extractvalue %dx.types.CBufRet.f32 %1917, 0
  %1919 = fmul fast float %1918, %1892
  %1920 = fmul fast float %1903, %1918
  %1921 = fmul fast float %1904, %1918
  %1922 = fmul fast float %1905, %1918
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %180, i32 %181, i32 2, float %1919, float %1920, float %1921, float %1922, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1923

; <label>:1923                                    ; preds = %1813, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

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
!dx.entryPoints = !{!39}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !28, !30, !34}
!5 = !{!6, !8, !9, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !23, !24, !25, !26, !27}
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
!18 = !{i32 10, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 40, i32 1, i32 2, i32 0, !7}
!19 = !{i32 11, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 35, i32 1, i32 7, i32 0, !7}
!20 = !{i32 12, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 14, i32 1, i32 2, i32 0, !7}
!21 = !{i32 13, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 36, i32 1, i32 7, i32 0, !22}
!22 = !{i32 0, i32 14}
!23 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 34, i32 1, i32 11, i32 0, null}
!24 = !{i32 15, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 32, i32 1, i32 2, i32 0, !7}
!25 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 18, i32 1, i32 2, i32 0, !7}
!26 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 41, i32 1, i32 2, i32 0, !7}
!27 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 21, i32 1, i32 11, i32 0, null}
!28 = !{!29}
!29 = !{i32 0, %"class.RWTexture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 7, i1 false, i1 false, i1 false, !7}
!30 = !{!31, !32, !33}
!31 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!32 = !{i32 1, %hostlayout.DeferredEffectLightGlobalConsts* undef, !"", i32 0, i32 0, i32 1, i32 80, null}
!33 = !{i32 2, %DeferredEffectLightConsts_decl* undef, !"", i32 0, i32 1, i32 1, i32 240, null}
!34 = !{!35, !36, !37, !38}
!35 = !{i32 0, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!36 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!37 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!38 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!39 = !{void ()* @cs_deferred_effect_lighting_4, !"cs_deferred_effect_lighting_4", null, !4, !40}
!40 = !{i32 0, i64 272, i32 4, !41}
!41 = !{i32 4, i32 4, i32 4}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 1}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 1}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 1}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 1}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 1}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = !{!57, !57, i64 0}
!57 = !{!"int", !58, i64 0}
!58 = !{!"omnipotent char", !59, i64 0}
!59 = !{!"Simple C/C++ TBAA"}
!60 = !{!61, !63}
!61 = distinct !{!61, !62, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_Sprite@@ULightIteratorOutput_Sprite@@@Z: %lightingOutput"}
!62 = distinct !{!62, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_Sprite@@ULightIteratorOutput_Sprite@@@Z"}
!63 = distinct !{!63, !64, !"\01?Lights_Iterate_Sprite@@YAXULocalAttributes@@ULightIteratorInput_Sprite@@ULightIteratorOutput_Sprite@@@Z: %lightingOutput"}
!64 = distinct !{!64, !"\01?Lights_Iterate_Sprite@@YAXULocalAttributes@@ULightIteratorInput_Sprite@@ULightIteratorOutput_Sprite@@@Z"}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 1}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = !{!71, !71, i64 0}
!71 = !{!"float", !58, i64 0}
!72 = distinct !{!72, !73}
!73 = !{!"llvm.loop.unroll.disable"}
!74 = distinct !{!74, !73}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 1}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 1}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 2}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 2}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 1}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 2}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 2}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 2}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 2}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 2}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 1}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 1}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 1}

