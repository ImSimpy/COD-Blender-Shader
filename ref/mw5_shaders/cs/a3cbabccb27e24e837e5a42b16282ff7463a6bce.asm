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
; shader hash: 607b8ddad6bb07b2cf14d949f81a12d1
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
;   [80 x i8] (type annotation not present)
;
; }
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
;   [80 x i8] (type annotation not present)
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
;   [4 x i8] (type annotation not present)
;
; }
;
; Resource bind info for 
; {
;
;   [8 x i8] (type annotation not present)
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
;   [16 x i8] (type annotation not present)
; }
;
; Resource bind info for 
; {
;
;   [16 x i8] (type annotation not present)
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb4     1
;                                   cbuffer      NA          NA     CB1            cb3     1
;                                   cbuffer      NA          NA     CB2            cb1     1
;                                   sampler      NA          NA      S0             s2     1
;                                   texture     f32          2d      T0            t33     1
;                                   texture    byte         r/o      T1            t28     1
;                                   texture  struct         r/o      T2            t37     1
;                                   texture  struct         r/o      T3            t38     1
;                                   texture    byte         r/o      T4            t30     1
;                                   texture  struct         r/o      T5            t22     1
;                                   texture  struct         r/o      T6            t23     1
;                                   texture  struct         r/o      T7            t21     1
;                                   texture  struct         r/o      T8            t25     1
;                                   texture  struct         r/o      T9             t0     1
;                                   texture     u32         buf     T10             t1     1
;                                   texture  struct         r/o     T11             t2     1
;                                   texture     u32         buf     T12             t3     1
;                                   texture     u32         buf     T13             t4     1
;                                   texture     u32         buf     T14             t5     1
;                                   texture     f32         buf     T15             t6     1
;                                   texture     u32         buf     T16             t7     1
;                                   texture     f32         buf     T17             t8     1
;                                   texture    byte         r/o     T18             t9     1
;                                       UAV     f32         buf      U0             u2     1
;                                       UAV     f32         buf      U1             u3     1
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
%"class.StructuredBuffer<GfxMultiLightGridLightingCount>" = type { %struct.GfxMultiLightGridLightingCount }
%struct.GfxMultiLightGridLightingCount = type { [20 x i32] }
%"class.StructuredBuffer<vector<unsigned int, 2> >" = type { <2 x i32> }
%"class.StructuredBuffer<GfxNeuralLightGridTopLevelNode>" = type { %struct.GfxNeuralLightGridTopLevelNode }
%struct.GfxNeuralLightGridTopLevelNode = type { i32, i32, i32, i32 }
%"class.Buffer<unsigned int>" = type { i32 }
%"class.StructuredBuffer<GfxNeuralLightGridInternalNode>" = type { %struct.GfxNeuralLightGridInternalNode }
%struct.GfxNeuralLightGridInternalNode = type { <2 x i32>, <2 x i32> }
%"class.Buffer<vector<float, 4> >" = type { <4 x float> }
%"class.RWBuffer<vector<float, 3> >" = type { <3 x float> }
%"class.RWBuffer<float>" = type { float }
%GfxNeuralLightGridSetupConsts = type { <3 x float>, i32, <3 x float>, i32, <3 x float>, i32, <3 x i32>, i32, float, i32, i32, i32 }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%DeferredEffectLightConsts_decl = type { %struct.DeferredEffectLightConsts }
%struct.DeferredEffectLightConsts = type { i32, float, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x <4 x i32>] }
%struct.SamplerState = type { i32 }

define void @cs_del_sh_sample_lightgrid_2_lowres() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 23, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 28, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %27 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %28 = call i32 @dx.op.threadId.i32(i32 93, i32 2)  ; ThreadId(component)
  %29 = alloca [8 x float], align 4
  %30 = alloca [8 x i32], align 4
  %31 = alloca [8 x float], align 4
  %32 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %33 = extractvalue %dx.types.CBufRet.i32 %32, 1
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %44, !dx.controlflow.hints !43

; <label>:35                                      ; preds = %0
  %36 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %37 = extractvalue %dx.types.CBufRet.i32 %36, 2
  %38 = add i32 %37, 6
  %39 = extractvalue %dx.types.CBufRet.i32 %36, 0
  %40 = shl i32 %39, 2
  %41 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %38, i32 %40)  ; BufferLoad(srv,index,wot)
  %42 = extractvalue %dx.types.ResRet.i32 %41, 0
  %43 = icmp ult i32 %26, %42
  br i1 %43, label %46, label %1018, !dx.controlflow.hints !44

; <label>:44                                      ; preds = %0
  %45 = icmp ult i32 %26, %33
  br i1 %45, label %46, label %1018, !dx.controlflow.hints !45

; <label>:46                                      ; preds = %44, %35
  %47 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %48 = extractvalue %dx.types.CBufRet.i32 %47, 2
  %49 = add i32 %48, 9
  %50 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 %49)  ; CBufferLoadLegacy(handle,regIndex)
  %51 = extractvalue %dx.types.CBufRet.i32 %50, 1
  %52 = extractvalue %dx.types.CBufRet.i32 %50, 2
  %53 = extractvalue %dx.types.CBufRet.i32 %50, 3
  %54 = mul i32 %53, 20
  %55 = extractvalue %dx.types.CBufRet.i32 %47, 0
  %56 = mul i32 %55, %51
  %57 = add i32 %56, %54
  %58 = add i32 %48, 6
  %59 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %58, i32 0)  ; BufferLoad(srv,index,wot)
  %60 = extractvalue %dx.types.ResRet.i32 %59, 0
  %61 = add i32 %60, 63
  %62 = lshr i32 %61, 6
  %63 = icmp ugt i32 %61, 127
  br i1 %63, label %64, label %86

; <label>:64                                      ; preds = %46
  br label %65

; <label>:65                                      ; preds = %65, %64
  %66 = phi i32 [ %77, %65 ], [ 0, %64 ]
  %67 = phi i32 [ %78, %65 ], [ 0, %64 ]
  %68 = phi i32 [ %79, %65 ], [ %62, %64 ]
  %69 = sub i32 %68, %66
  %70 = lshr i32 %69, 1
  %71 = add i32 %70, %66
  %72 = add i32 %57, -1
  %73 = add i32 %72, %71
  %74 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %73, i32 0)  ; BufferLoad(srv,index,wot)
  %75 = extractvalue %dx.types.ResRet.i32 %74, 0
  %76 = icmp ult i32 %26, %75
  %77 = select i1 %76, i32 %66, i32 %71
  %78 = select i1 %76, i32 %67, i32 %75
  %79 = select i1 %76, i32 %71, i32 %68
  %80 = sub i32 %68, %71
  %81 = select i1 %76, i32 %70, i32 %80
  %82 = icmp ugt i32 %81, 1
  br i1 %82, label %65, label %83

; <label>:83                                      ; preds = %65
  %84 = icmp eq i32 %77, 0
  %85 = select i1 %84, i32 0, i32 %78
  br label %86

; <label>:86                                      ; preds = %83, %46
  %87 = phi i32 [ 0, %46 ], [ %85, %83 ]
  %88 = phi i32 [ %62, %46 ], [ %79, %83 ]
  %89 = add i32 %88, -1
  %90 = add i32 %89, %57
  %91 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %90, i32 0)  ; BufferLoad(srv,index,wot)
  %92 = extractvalue %dx.types.ResRet.i32 %91, 0
  %93 = extractvalue %dx.types.ResRet.i32 %91, 1
  %94 = sub i32 %26, %87
  %95 = and i32 %92, %93
  %96 = icmp eq i32 %95, -1
  br i1 %96, label %132, label %97, !dx.controlflow.hints !46

; <label>:97                                      ; preds = %86
  %98 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %92)  ; Countbits(value)
  %99 = icmp uge i32 %94, %98
  %100 = select i1 %99, i32 %93, i32 %92
  %101 = select i1 %99, i32 %98, i32 0
  %102 = sub i32 %94, %101
  %103 = select i1 %99, i32 32, i32 0
  %104 = and i32 %102, 31
  %105 = shl i32 -1, %104
  %106 = xor i32 %105, -1
  %107 = and i32 %100, %106
  %108 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %107)  ; Countbits(value)
  %109 = add i32 %102, 1
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %129, label %111, !dx.controlflow.hints !47

; <label>:111                                     ; preds = %97
  %112 = and i32 %105, %100
  %113 = icmp eq i32 %102, %108
  br i1 %113, label %126, label %114

; <label>:114                                     ; preds = %111
  %115 = sub i32 %102, %108
  br label %116

; <label>:116                                     ; preds = %116, %114
  %117 = phi i32 [ %123, %116 ], [ %115, %114 ]
  %118 = phi i32 [ %122, %116 ], [ %112, %114 ]
  %119 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %118)  ; FirstbitLo(value)
  %120 = and i32 %119, 31
  %121 = shl i32 1, %120
  %122 = xor i32 %121, %118
  %123 = add i32 %117, -1
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %116

; <label>:125                                     ; preds = %116
  br label %126

; <label>:126                                     ; preds = %125, %111
  %127 = phi i32 [ %112, %111 ], [ %122, %125 ]
  %128 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %127)  ; FirstbitLo(value)
  br label %129

; <label>:129                                     ; preds = %126, %97
  %130 = phi i32 [ %128, %126 ], [ %102, %97 ]
  %131 = add i32 %130, %103
  br label %132

; <label>:132                                     ; preds = %129, %86
  %133 = phi i32 [ %131, %129 ], [ %94, %86 ]
  %134 = shl i32 %89, 6
  %135 = add i32 %133, %134
  %136 = icmp ult i32 %135, %60
  br i1 %136, label %137, label %1018, !dx.controlflow.hints !48

; <label>:137                                     ; preds = %132
  %138 = shl i32 %27, 1
  %139 = shl i32 %28, 1
  %140 = add i32 %135, %52
  %141 = shl i32 %140, 5
  %142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %141, i32 undef)  ; BufferLoad(srv,index,wot)
  %143 = extractvalue %dx.types.ResRet.i32 %142, 0
  %144 = extractvalue %dx.types.ResRet.i32 %142, 1
  %145 = extractvalue %dx.types.ResRet.i32 %142, 2
  %146 = extractvalue %dx.types.ResRet.i32 %142, 3
  %147 = bitcast i32 %143 to float
  %148 = bitcast i32 %144 to float
  %149 = bitcast i32 %145 to float
  %150 = and i32 %146, 536870912
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %191, label %152, !dx.controlflow.hints !49

; <label>:152                                     ; preds = %137
  %153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %154 = extractvalue %dx.types.CBufRet.f32 %153, 2
  %155 = extractvalue %dx.types.CBufRet.f32 %153, 3
  %156 = fmul fast float %154, %147
  %157 = fmul fast float %155, %148
  %158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %159 = extractvalue %dx.types.CBufRet.f32 %158, 0
  %160 = extractvalue %dx.types.CBufRet.f32 %158, 1
  %161 = fadd fast float %156, %159
  %162 = fadd fast float %157, %160
  %163 = call float @dx.op.unary.f32(i32 7, float %161)  ; Saturate(value)
  %164 = call float @dx.op.unary.f32(i32 7, float %162)  ; Saturate(value)
  %165 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %22, float %163, float %164, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %166 = extractvalue %dx.types.ResRet.f32 %165, 0
  %167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %168 = extractvalue %dx.types.CBufRet.f32 %167, 0
  %169 = fmul fast float %168, %166
  %170 = fsub fast float %161, %163
  %171 = fsub fast float %162, %164
  %172 = extractvalue %dx.types.CBufRet.f32 %153, 0
  %173 = extractvalue %dx.types.CBufRet.f32 %153, 1
  %174 = fmul fast float %172, %170
  %175 = fmul fast float %173, %171
  %176 = fmul fast float %174, %174
  %177 = fmul fast float %175, %175
  %178 = fadd fast float %176, %177
  %179 = call float @dx.op.unary.f32(i32 24, float %178)  ; Sqrt(value)
  %180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %181 = extractvalue %dx.types.CBufRet.f32 %180, 3
  %182 = fmul fast float %181, %179
  %183 = call float @dx.op.unary.f32(i32 7, float %182)  ; Saturate(value)
  %184 = extractvalue %dx.types.CBufRet.f32 %180, 2
  %185 = fsub fast float %184, %169
  %186 = fmul fast float %185, %183
  %187 = extractvalue %dx.types.CBufRet.f32 %167, 1
  %188 = fadd fast float %169, %149
  %189 = fadd fast float %188, %187
  %190 = fadd fast float %189, %186
  br label %191

; <label>:191                                     ; preds = %152, %137
  %192 = phi float [ %190, %152 ], [ %149, %137 ]
  %193 = or i32 %141, 16
  %194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %193, i32 undef)  ; BufferLoad(srv,index,wot)
  %195 = extractvalue %dx.types.ResRet.i32 %194, 0
  %196 = extractvalue %dx.types.ResRet.i32 %194, 1
  %197 = extractvalue %dx.types.ResRet.i32 %194, 2
  %198 = extractvalue %dx.types.ResRet.i32 %194, 3
  %199 = and i32 %195, 65535
  %200 = call float @dx.op.legacyF16ToF32(i32 131, i32 %199)  ; LegacyF16ToF32(value)
  %201 = lshr i32 %195, 16
  %202 = call float @dx.op.legacyF16ToF32(i32 131, i32 %201)  ; LegacyF16ToF32(value)
  %203 = and i32 %196, 1023
  %204 = uitofp i32 %203 to float
  %205 = lshr i32 %196, 10
  %206 = and i32 %205, 1023
  %207 = uitofp i32 %206 to float
  %208 = lshr i32 %196, 20
  %209 = and i32 %208, 1023
  %210 = uitofp i32 %209 to float
  %211 = fmul fast float %204, 0x3F60040100000000
  %212 = fmul fast float %207, 0x3F60040100000000
  %213 = fmul fast float %210, 0x3F60040100000000
  %214 = fadd fast float %211, -1.000000e+00
  %215 = fadd fast float %212, -1.000000e+00
  %216 = fadd fast float %213, -1.000000e+00
  %217 = and i32 %197, 1023
  %218 = uitofp i32 %217 to float
  %219 = lshr i32 %197, 10
  %220 = and i32 %219, 1023
  %221 = uitofp i32 %220 to float
  %222 = lshr i32 %197, 20
  %223 = and i32 %222, 1023
  %224 = uitofp i32 %223 to float
  %225 = fmul fast float %218, 0x3F60040100000000
  %226 = fmul fast float %221, 0x3F60040100000000
  %227 = fmul fast float %224, 0x3F60040100000000
  %228 = fadd fast float %225, -1.000000e+00
  %229 = fadd fast float %226, -1.000000e+00
  %230 = fadd fast float %227, -1.000000e+00
  %231 = and i32 %198, 65535
  %232 = call float @dx.op.legacyF16ToF32(i32 131, i32 %231)  ; LegacyF16ToF32(value)
  %233 = call float @dx.op.unary.f32(i32 13, float %232)  ; Sin(value)
  %234 = call float @dx.op.unary.f32(i32 12, float %232)  ; Cos(value)
  %235 = fmul fast float %234, %214
  %236 = fmul fast float %215, %234
  %237 = fmul fast float %216, %234
  %238 = fmul fast float %228, %233
  %239 = fmul fast float %229, %233
  %240 = fmul fast float %230, %233
  %241 = fadd fast float %235, %238
  %242 = fadd fast float %236, %239
  %243 = fadd fast float %237, %240
  %244 = fmul fast float %241, %200
  %245 = fmul fast float %242, %200
  %246 = fmul fast float %243, %200
  %247 = fmul fast float %214, %233
  %248 = fmul fast float %215, %233
  %249 = fmul fast float %216, %233
  %250 = fmul fast float %234, %228
  %251 = fmul fast float %229, %234
  %252 = fmul fast float %230, %234
  %253 = fsub fast float %247, %250
  %254 = fsub fast float %248, %251
  %255 = fsub fast float %249, %252
  %256 = fmul fast float %253, %202
  %257 = fmul fast float %254, %202
  %258 = fmul fast float %255, %202
  %259 = uitofp i32 %138 to float
  %260 = uitofp i32 %139 to float
  %261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %262 = extractvalue %dx.types.CBufRet.f32 %261, 1
  %263 = fdiv fast float %259, %262
  %264 = fdiv fast float %260, %262
  %265 = extractvalue %dx.types.CBufRet.f32 %261, 2
  %266 = fmul fast float %265, 2.000000e+00
  %267 = fadd fast float %266, %263
  %268 = fadd fast float %266, %264
  %269 = fmul fast float %267, %244
  %270 = fmul fast float %267, %245
  %271 = fmul fast float %267, %246
  %272 = fmul fast float %268, %256
  %273 = fmul fast float %268, %257
  %274 = fmul fast float %268, %258
  %275 = fadd fast float %272, %269
  %276 = fmul fast float %275, 2.000000e+00
  %277 = fsub fast float %147, %244
  %278 = fsub fast float %277, %256
  %279 = fadd fast float %278, %276
  %280 = fadd fast float %273, %270
  %281 = fmul fast float %280, 2.000000e+00
  %282 = fsub fast float %148, %245
  %283 = fsub fast float %282, %257
  %284 = fadd fast float %283, %281
  %285 = fadd fast float %274, %271
  %286 = fmul fast float %285, 2.000000e+00
  %287 = fsub fast float %192, %246
  %288 = fsub fast float %287, %258
  %289 = fadd fast float %288, %286
  %290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %291 = extractvalue %dx.types.CBufRet.f32 %290, 0
  %292 = extractvalue %dx.types.CBufRet.f32 %290, 1
  %293 = extractvalue %dx.types.CBufRet.f32 %290, 2
  %294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %295 = extractvalue %dx.types.CBufRet.f32 %294, 0
  %296 = extractvalue %dx.types.CBufRet.f32 %294, 1
  %297 = extractvalue %dx.types.CBufRet.f32 %294, 2
  %298 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %299 = extractvalue %dx.types.CBufRet.i32 %298, 1
  %300 = fsub fast float %279, %291
  %301 = fsub fast float %284, %292
  %302 = fsub fast float %289, %293
  %303 = fmul fast float %300, %295
  %304 = fmul fast float %301, %296
  %305 = fmul fast float %302, %297
  %306 = fcmp fast ole float %303, 0.000000e+00
  %307 = fcmp fast ole float %304, 0.000000e+00
  %308 = fcmp fast ole float %305, 0.000000e+00
  %309 = or i1 %306, %307
  %310 = or i1 %308, %309
  %311 = fcmp fast oge float %303, 1.000000e+00
  %312 = fcmp fast oge float %304, 1.000000e+00
  %313 = fcmp fast oge float %305, 1.000000e+00
  %314 = or i1 %311, %312
  %315 = or i1 %313, %314
  %316 = or i1 %310, %315
  br i1 %316, label %910, label %317, !dx.controlflow.hints !50

; <label>:317                                     ; preds = %191
  %318 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %319 = extractvalue %dx.types.CBufRet.i32 %318, 0
  %320 = fptosi float %300 to i32
  %321 = fptosi float %301 to i32
  %322 = fptosi float %302 to i32
  %323 = and i32 %299, 31
  %324 = ashr i32 %320, %323
  %325 = ashr i32 %321, %323
  %326 = ashr i32 %322, %323
  %327 = mul i32 %319, %325
  %328 = add nsw i32 %327, %324
  %329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %328, i32 0)  ; BufferLoad(srv,index,wot)
  %330 = extractvalue %dx.types.ResRet.i32 %329, 0
  %331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %328, i32 4)  ; BufferLoad(srv,index,wot)
  %332 = extractvalue %dx.types.ResRet.i32 %331, 0
  %333 = icmp slt i32 %326, %330
  %334 = icmp sgt i32 %326, %332
  %335 = or i1 %333, %334
  br i1 %335, label %910, label %336, !dx.controlflow.hints !51

; <label>:336                                     ; preds = %317
  %337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %328, i32 8)  ; BufferLoad(srv,index,wot)
  %338 = extractvalue %dx.types.ResRet.i32 %337, 0
  %339 = sub i32 %326, %330
  %340 = add nsw i32 %339, %338
  %341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %342 = extractvalue %dx.types.ResRet.i32 %341, 0
  %343 = icmp eq i32 %342, -1
  br i1 %343, label %910, label %344, !dx.controlflow.hints !52

; <label>:344                                     ; preds = %336
  %345 = getelementptr inbounds [8 x i32], [8 x i32]* %30, i32 0, i32 0
  store i32 -1, i32* %345, align 4, !tbaa !53, !noalias !57
  %346 = getelementptr inbounds [8 x i32], [8 x i32]* %30, i32 0, i32 1
  store i32 -1, i32* %346, align 4, !tbaa !53, !noalias !57
  %347 = getelementptr inbounds [8 x i32], [8 x i32]* %30, i32 0, i32 2
  store i32 -1, i32* %347, align 4, !tbaa !53, !noalias !57
  %348 = getelementptr inbounds [8 x i32], [8 x i32]* %30, i32 0, i32 3
  store i32 -1, i32* %348, align 4, !tbaa !53, !noalias !57
  %349 = getelementptr inbounds [8 x i32], [8 x i32]* %30, i32 0, i32 4
  store i32 -1, i32* %349, align 4, !tbaa !53, !noalias !57
  %350 = getelementptr inbounds [8 x i32], [8 x i32]* %30, i32 0, i32 5
  store i32 -1, i32* %350, align 4, !tbaa !53, !noalias !57
  %351 = getelementptr inbounds [8 x i32], [8 x i32]* %30, i32 0, i32 6
  store i32 -1, i32* %351, align 4, !tbaa !53, !noalias !57
  %352 = getelementptr inbounds [8 x i32], [8 x i32]* %30, i32 0, i32 7
  store i32 -1, i32* %352, align 4, !tbaa !53, !noalias !57
  br label %353

; <label>:353                                     ; preds = %457, %344
  %354 = phi i32 [ -1, %344 ], [ %454, %457 ]
  %355 = phi i32 [ -1, %344 ], [ %449, %457 ]
  %356 = phi i32 [ -1, %344 ], [ %442, %457 ]
  %357 = phi i32 [ -1, %344 ], [ %437, %457 ]
  %358 = phi i32 [ -1, %344 ], [ %428, %457 ]
  %359 = phi i32 [ -1, %344 ], [ %423, %457 ]
  %360 = phi i32 [ -1, %344 ], [ %415, %457 ]
  %361 = phi i32 [ -1, %344 ], [ %408, %457 ]
  %362 = phi i32 [ %342, %344 ], [ %477, %457 ]
  %363 = phi i32 [ %299, %344 ], [ %364, %457 ]
  %364 = add nsw i32 %363, -2
  %365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %362, i32 undef)  ; BufferLoad(srv,index,wot)
  %366 = extractvalue %dx.types.ResRet.i32 %365, 0
  %367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %362, i32 undef)  ; BufferLoad(srv,index,wot)
  %368 = extractvalue %dx.types.ResRet.i32 %367, 0
  %369 = and i32 %366, 31
  %370 = shl i32 1, %369
  %371 = add i32 %370, 1
  %372 = and i32 %364, 31
  %373 = ashr i32 %320, %372
  %374 = ashr i32 %321, %372
  %375 = ashr i32 %322, %372
  %376 = and i32 %373, 3
  %377 = and i32 %374, 3
  %378 = and i32 %375, 3
  br label %379

; <label>:379                                     ; preds = %379, %353
  %380 = phi i32 [ %354, %353 ], [ %454, %379 ]
  %381 = phi i32 [ %355, %353 ], [ %449, %379 ]
  %382 = phi i32 [ %356, %353 ], [ %442, %379 ]
  %383 = phi i32 [ %357, %353 ], [ %437, %379 ]
  %384 = phi i32 [ %358, %353 ], [ %428, %379 ]
  %385 = phi i32 [ %359, %353 ], [ %423, %379 ]
  %386 = phi i32 [ %360, %353 ], [ %415, %379 ]
  %387 = phi i32 [ %361, %353 ], [ %408, %379 ]
  %388 = phi i32 [ 0, %353 ], [ %455, %379 ]
  %389 = sub i32 2, %388
  %390 = and i32 %389, 31
  %391 = lshr i32 %376, %390
  %392 = lshr i32 %377, %390
  %393 = lshr i32 %378, %390
  %394 = sub i32 %366, %388
  %395 = and i32 %394, 31
  %396 = shl i32 %391, %395
  %397 = shl i32 %392, %395
  %398 = shl i32 %393, %395
  %399 = shl i32 1, %395
  %400 = mul i32 %398, %371
  %401 = add i32 %400, %397
  %402 = mul i32 %401, %371
  %403 = add i32 %396, %368
  %404 = add i32 %403, %402
  %405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
  %406 = extractvalue %dx.types.ResRet.i32 %405, 0
  %407 = icmp ne i32 %406, -1
  %408 = select i1 %407, i32 %406, i32 %387
  store i32 %408, i32* %345, align 4, !tbaa !53, !noalias !57
  %409 = add i32 %399, %368
  %410 = add i32 %409, %396
  %411 = add i32 %410, %402
  %412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %413 = extractvalue %dx.types.ResRet.i32 %412, 0
  %414 = icmp ne i32 %413, -1
  %415 = select i1 %414, i32 %413, i32 %386
  store i32 %415, i32* %346, align 4, !tbaa !53, !noalias !57
  %416 = add i32 %397, %399
  %417 = add i32 %416, %400
  %418 = mul i32 %417, %371
  %419 = add i32 %403, %418
  %420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %419, i32 undef)  ; BufferLoad(srv,index,wot)
  %421 = extractvalue %dx.types.ResRet.i32 %420, 0
  %422 = icmp ne i32 %421, -1
  %423 = select i1 %422, i32 %421, i32 %385
  store i32 %423, i32* %347, align 4, !tbaa !53, !noalias !57
  %424 = add i32 %410, %418
  %425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %424, i32 undef)  ; BufferLoad(srv,index,wot)
  %426 = extractvalue %dx.types.ResRet.i32 %425, 0
  %427 = icmp ne i32 %426, -1
  %428 = select i1 %427, i32 %426, i32 %384
  store i32 %428, i32* %348, align 4, !tbaa !53, !noalias !57
  %429 = add i32 %398, %399
  %430 = mul i32 %429, %371
  %431 = add i32 %430, %397
  %432 = mul i32 %431, %371
  %433 = add i32 %403, %432
  %434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %433, i32 undef)  ; BufferLoad(srv,index,wot)
  %435 = extractvalue %dx.types.ResRet.i32 %434, 0
  %436 = icmp ne i32 %435, -1
  %437 = select i1 %436, i32 %435, i32 %383
  store i32 %437, i32* %349, align 4, !tbaa !53, !noalias !57
  %438 = add i32 %410, %432
  %439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %438, i32 undef)  ; BufferLoad(srv,index,wot)
  %440 = extractvalue %dx.types.ResRet.i32 %439, 0
  %441 = icmp ne i32 %440, -1
  %442 = select i1 %441, i32 %440, i32 %382
  store i32 %442, i32* %350, align 4, !tbaa !53, !noalias !57
  %443 = add i32 %416, %430
  %444 = mul i32 %443, %371
  %445 = add i32 %403, %444
  %446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %445, i32 undef)  ; BufferLoad(srv,index,wot)
  %447 = extractvalue %dx.types.ResRet.i32 %446, 0
  %448 = icmp ne i32 %447, -1
  %449 = select i1 %448, i32 %447, i32 %381
  store i32 %449, i32* %351, align 4, !tbaa !53, !noalias !57
  %450 = add i32 %410, %444
  %451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %450, i32 undef)  ; BufferLoad(srv,index,wot)
  %452 = extractvalue %dx.types.ResRet.i32 %451, 0
  %453 = icmp ne i32 %452, -1
  %454 = select i1 %453, i32 %452, i32 %380
  store i32 %454, i32* %352, align 4, !tbaa !53, !noalias !57
  %455 = add i32 %388, 1
  %456 = icmp ugt i32 %455, %366
  br i1 %456, label %457, label %379

; <label>:457                                     ; preds = %379
  %458 = shl nuw nsw i32 %378, 4
  %459 = shl nuw nsw i32 %377, 2
  %460 = lshr i32 %378, 1
  %461 = and i32 %458, 16
  %462 = or i32 %459, %376
  %463 = or i32 %462, %461
  %464 = shl i32 1, %463
  %465 = shl nuw nsw i32 %460, 2
  %466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %362, i32 %465)  ; BufferLoad(srv,index,wot)
  %467 = extractvalue %dx.types.ResRet.i32 %466, 0
  %468 = and i32 %467, %464
  %469 = icmp eq i32 %468, 0
  %470 = add i32 %464, -1
  %471 = and i32 %467, %470
  %472 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %471)  ; Countbits(value)
  %473 = or i32 %465, 8
  %474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %362, i32 %473)  ; BufferLoad(srv,index,wot)
  %475 = extractvalue %dx.types.ResRet.i32 %474, 0
  %476 = add i32 %475, %472
  %477 = select i1 %469, i32 -1, i32 %476
  %478 = icmp eq i32 %477, -1
  br i1 %478, label %479, label %353

; <label>:479                                     ; preds = %457
  br label %480

; <label>:480                                     ; preds = %766, %479
  %481 = phi i32 [ %768, %766 ], [ %408, %479 ]
  %482 = phi float [ %763, %766 ], [ 0.000000e+00, %479 ]
  %483 = phi i32 [ %764, %766 ], [ 0, %479 ]
  %484 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %481, i32 undef)  ; BufferLoad(srv,index,wot)
  %485 = extractvalue %dx.types.ResRet.f32 %484, 0
  %486 = extractvalue %dx.types.ResRet.f32 %484, 1
  %487 = extractvalue %dx.types.ResRet.f32 %484, 2
  %488 = extractvalue %dx.types.ResRet.f32 %484, 3
  %489 = fsub fast float %279, %485
  %490 = fsub fast float %284, %486
  %491 = fsub fast float %289, %487
  %492 = fmul fast float %489, %488
  %493 = fmul fast float %490, %488
  %494 = fmul fast float %491, %488
  %495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %481, i32 undef)  ; BufferLoad(srv,index,wot)
  %496 = extractvalue %dx.types.ResRet.i32 %495, 0
  %497 = call float @dx.op.unary.f32(i32 6, float %492)  ; FAbs(value)
  %498 = call float @dx.op.unary.f32(i32 6, float %493)  ; FAbs(value)
  %499 = fsub fast float 1.000000e+00, %497
  %500 = fsub fast float 1.000000e+00, %498
  %501 = call float @dx.op.unary.f32(i32 7, float %499)  ; Saturate(value)
  %502 = call float @dx.op.unary.f32(i32 7, float %500)  ; Saturate(value)
  %503 = fmul fast float %502, %501
  %504 = mul i32 %496, 29
  %505 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %504, i32 undef)  ; BufferLoad(srv,index,wot)
  %506 = extractvalue %dx.types.ResRet.f32 %505, 0
  %507 = extractvalue %dx.types.ResRet.f32 %505, 1
  %508 = extractvalue %dx.types.ResRet.f32 %505, 2
  %509 = extractvalue %dx.types.ResRet.f32 %505, 3
  %510 = add i32 %504, 1
  %511 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %510, i32 undef)  ; BufferLoad(srv,index,wot)
  %512 = extractvalue %dx.types.ResRet.f32 %511, 0
  %513 = extractvalue %dx.types.ResRet.f32 %511, 1
  %514 = extractvalue %dx.types.ResRet.f32 %511, 2
  %515 = extractvalue %dx.types.ResRet.f32 %511, 3
  %516 = add i32 %504, 2
  %517 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %516, i32 undef)  ; BufferLoad(srv,index,wot)
  %518 = extractvalue %dx.types.ResRet.f32 %517, 0
  %519 = extractvalue %dx.types.ResRet.f32 %517, 1
  %520 = extractvalue %dx.types.ResRet.f32 %517, 2
  %521 = extractvalue %dx.types.ResRet.f32 %517, 3
  %522 = add i32 %504, 3
  %523 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %522, i32 undef)  ; BufferLoad(srv,index,wot)
  %524 = extractvalue %dx.types.ResRet.f32 %523, 0
  %525 = extractvalue %dx.types.ResRet.f32 %523, 1
  %526 = extractvalue %dx.types.ResRet.f32 %523, 2
  %527 = extractvalue %dx.types.ResRet.f32 %523, 3
  %528 = add i32 %504, 4
  %529 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %528, i32 undef)  ; BufferLoad(srv,index,wot)
  %530 = extractvalue %dx.types.ResRet.f32 %529, 0
  %531 = extractvalue %dx.types.ResRet.f32 %529, 1
  %532 = extractvalue %dx.types.ResRet.f32 %529, 2
  %533 = extractvalue %dx.types.ResRet.f32 %529, 3
  %534 = add i32 %504, 5
  %535 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %534, i32 undef)  ; BufferLoad(srv,index,wot)
  %536 = extractvalue %dx.types.ResRet.f32 %535, 0
  %537 = extractvalue %dx.types.ResRet.f32 %535, 1
  %538 = extractvalue %dx.types.ResRet.f32 %535, 2
  %539 = extractvalue %dx.types.ResRet.f32 %535, 3
  %540 = add i32 %504, 6
  %541 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %540, i32 undef)  ; BufferLoad(srv,index,wot)
  %542 = extractvalue %dx.types.ResRet.f32 %541, 0
  %543 = extractvalue %dx.types.ResRet.f32 %541, 1
  %544 = extractvalue %dx.types.ResRet.f32 %541, 2
  %545 = extractvalue %dx.types.ResRet.f32 %541, 3
  %546 = add i32 %504, 7
  %547 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %546, i32 undef)  ; BufferLoad(srv,index,wot)
  %548 = extractvalue %dx.types.ResRet.f32 %547, 0
  %549 = extractvalue %dx.types.ResRet.f32 %547, 1
  %550 = extractvalue %dx.types.ResRet.f32 %547, 2
  %551 = extractvalue %dx.types.ResRet.f32 %547, 3
  %552 = fmul fast float %506, %492
  %553 = fmul fast float %518, %493
  %554 = fadd fast float %553, %552
  %555 = fmul fast float %530, %494
  %556 = fadd fast float %554, %555
  %557 = fmul fast float %507, %492
  %558 = fmul fast float %519, %493
  %559 = fadd fast float %558, %557
  %560 = fmul fast float %531, %494
  %561 = fadd fast float %559, %560
  %562 = fmul fast float %508, %492
  %563 = fmul fast float %520, %493
  %564 = fadd fast float %563, %562
  %565 = fmul fast float %532, %494
  %566 = fadd fast float %564, %565
  %567 = fmul fast float %509, %492
  %568 = fmul fast float %521, %493
  %569 = fadd fast float %568, %567
  %570 = fmul fast float %533, %494
  %571 = fadd fast float %569, %570
  %572 = fmul fast float %512, %492
  %573 = fmul fast float %524, %493
  %574 = fadd fast float %573, %572
  %575 = fmul fast float %536, %494
  %576 = fadd fast float %574, %575
  %577 = fmul fast float %513, %492
  %578 = fmul fast float %525, %493
  %579 = fadd fast float %578, %577
  %580 = fmul fast float %537, %494
  %581 = fadd fast float %579, %580
  %582 = fmul fast float %514, %492
  %583 = fmul fast float %526, %493
  %584 = fadd fast float %583, %582
  %585 = fmul fast float %538, %494
  %586 = fadd fast float %584, %585
  %587 = fmul fast float %515, %492
  %588 = fmul fast float %527, %493
  %589 = fadd fast float %588, %587
  %590 = fmul fast float %539, %494
  %591 = fadd fast float %589, %590
  %592 = fadd fast float %556, %542
  %593 = fadd fast float %561, %543
  %594 = fadd fast float %566, %544
  %595 = fadd fast float %571, %545
  %596 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %592)  ; FMax(a,b)
  %597 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %593)  ; FMax(a,b)
  %598 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %594)  ; FMax(a,b)
  %599 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %595)  ; FMax(a,b)
  %600 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %592)  ; FMin(a,b)
  %601 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %593)  ; FMin(a,b)
  %602 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %594)  ; FMin(a,b)
  %603 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %595)  ; FMin(a,b)
  %604 = fmul fast float %600, 0x3F847AE140000000
  %605 = fmul fast float %601, 0x3F847AE140000000
  %606 = fmul fast float %602, 0x3F847AE140000000
  %607 = fmul fast float %603, 0x3F847AE140000000
  %608 = fadd fast float %604, %596
  %609 = fadd fast float %605, %597
  %610 = fadd fast float %606, %598
  %611 = fadd fast float %607, %599
  %612 = fadd fast float %576, %548
  %613 = fadd fast float %581, %549
  %614 = fadd fast float %586, %550
  %615 = fadd fast float %591, %551
  %616 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %612)  ; FMax(a,b)
  %617 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %613)  ; FMax(a,b)
  %618 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %614)  ; FMax(a,b)
  %619 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %615)  ; FMax(a,b)
  %620 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %612)  ; FMin(a,b)
  %621 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %613)  ; FMin(a,b)
  %622 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %614)  ; FMin(a,b)
  %623 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %615)  ; FMin(a,b)
  %624 = fmul fast float %620, 0x3F847AE140000000
  %625 = fmul fast float %621, 0x3F847AE140000000
  %626 = fmul fast float %622, 0x3F847AE140000000
  %627 = fmul fast float %623, 0x3F847AE140000000
  %628 = fadd fast float %624, %616
  %629 = fadd fast float %625, %617
  %630 = fadd fast float %626, %618
  %631 = fadd fast float %627, %619
  br label %632

; <label>:632                                     ; preds = %632, %480
  %633 = phi i32 [ 0, %480 ], [ %653, %632 ]
  %634 = add i32 %504, 8
  %635 = shl i32 %633, 1
  %636 = add i32 %634, %635
  %637 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %636, i32 undef)  ; BufferLoad(srv,index,wot)
  %638 = extractvalue %dx.types.ResRet.f32 %637, 0
  %639 = extractvalue %dx.types.ResRet.f32 %637, 1
  %640 = extractvalue %dx.types.ResRet.f32 %637, 2
  %641 = extractvalue %dx.types.ResRet.f32 %637, 3
  %642 = add i32 %504, 9
  %643 = add i32 %642, %635
  %644 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %643, i32 undef)  ; BufferLoad(srv,index,wot)
  %645 = extractvalue %dx.types.ResRet.f32 %644, 0
  %646 = extractvalue %dx.types.ResRet.f32 %644, 1
  %647 = extractvalue %dx.types.ResRet.f32 %644, 2
  %648 = extractvalue %dx.types.ResRet.f32 %644, 3
  %649 = call float @dx.op.dot4.f32(i32 56, float %638, float %639, float %640, float %641, float %608, float %609, float %610, float %611)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %650 = call float @dx.op.dot4.f32(i32 56, float %645, float %646, float %647, float %648, float %628, float %629, float %630, float %631)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %651 = fadd fast float %650, %649
  %652 = getelementptr inbounds [8 x float], [8 x float]* %29, i32 0, i32 %633
  store float %651, float* %652, align 4, !tbaa !63, !noalias !57
  %653 = add nuw nsw i32 %633, 1
  %654 = icmp eq i32 %653, 8
  br i1 %654, label %655, label %632

; <label>:655                                     ; preds = %632
  %656 = call float @dx.op.unary.f32(i32 6, float %494)  ; FAbs(value)
  %657 = fsub fast float 1.000000e+00, %656
  %658 = call float @dx.op.unary.f32(i32 7, float %657)  ; Saturate(value)
  %659 = fmul fast float %503, %658
  %660 = add i32 %504, 24
  %661 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %660, i32 undef)  ; BufferLoad(srv,index,wot)
  %662 = extractvalue %dx.types.ResRet.f32 %661, 0
  %663 = extractvalue %dx.types.ResRet.f32 %661, 1
  %664 = extractvalue %dx.types.ResRet.f32 %661, 2
  %665 = extractvalue %dx.types.ResRet.f32 %661, 3
  %666 = add i32 %504, 25
  %667 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %666, i32 undef)  ; BufferLoad(srv,index,wot)
  %668 = extractvalue %dx.types.ResRet.f32 %667, 0
  %669 = extractvalue %dx.types.ResRet.f32 %667, 1
  %670 = extractvalue %dx.types.ResRet.f32 %667, 2
  %671 = extractvalue %dx.types.ResRet.f32 %667, 3
  %672 = getelementptr inbounds [8 x float], [8 x float]* %29, i32 0, i32 0
  %673 = load float, float* %672, align 4, !tbaa !63, !noalias !57
  %674 = fadd fast float %673, %662
  %675 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %674)  ; FMax(a,b)
  %676 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %674)  ; FMin(a,b)
  %677 = fmul fast float %676, 0x3F847AE140000000
  %678 = fadd fast float %677, %675
  store float %678, float* %672, align 4, !tbaa !63, !noalias !57
  %679 = getelementptr inbounds [8 x float], [8 x float]* %29, i32 0, i32 1
  %680 = load float, float* %679, align 4, !tbaa !63, !noalias !57
  %681 = fadd fast float %680, %663
  %682 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %681)  ; FMax(a,b)
  %683 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %681)  ; FMin(a,b)
  %684 = fmul fast float %683, 0x3F847AE140000000
  %685 = fadd fast float %684, %682
  store float %685, float* %679, align 4, !tbaa !63, !noalias !57
  %686 = getelementptr inbounds [8 x float], [8 x float]* %29, i32 0, i32 2
  %687 = load float, float* %686, align 4, !tbaa !63, !noalias !57
  %688 = fadd fast float %687, %664
  %689 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %688)  ; FMax(a,b)
  %690 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %688)  ; FMin(a,b)
  %691 = fmul fast float %690, 0x3F847AE140000000
  %692 = fadd fast float %691, %689
  store float %692, float* %686, align 4, !tbaa !63, !noalias !57
  %693 = getelementptr inbounds [8 x float], [8 x float]* %29, i32 0, i32 3
  %694 = load float, float* %693, align 4, !tbaa !63, !noalias !57
  %695 = fadd fast float %694, %665
  %696 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %695)  ; FMax(a,b)
  %697 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %695)  ; FMin(a,b)
  %698 = fmul fast float %697, 0x3F847AE140000000
  %699 = fadd fast float %698, %696
  store float %699, float* %693, align 4, !tbaa !63, !noalias !57
  %700 = getelementptr inbounds [8 x float], [8 x float]* %29, i32 0, i32 4
  %701 = load float, float* %700, align 4, !tbaa !63, !noalias !57
  %702 = fadd fast float %701, %668
  %703 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %702)  ; FMax(a,b)
  %704 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %702)  ; FMin(a,b)
  %705 = fmul fast float %704, 0x3F847AE140000000
  %706 = fadd fast float %705, %703
  store float %706, float* %700, align 4, !tbaa !63, !noalias !57
  %707 = getelementptr inbounds [8 x float], [8 x float]* %29, i32 0, i32 5
  %708 = load float, float* %707, align 4, !tbaa !63, !noalias !57
  %709 = fadd fast float %708, %669
  %710 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %709)  ; FMax(a,b)
  %711 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %709)  ; FMin(a,b)
  %712 = fmul fast float %711, 0x3F847AE140000000
  %713 = fadd fast float %712, %710
  store float %713, float* %707, align 4, !tbaa !63, !noalias !57
  %714 = getelementptr inbounds [8 x float], [8 x float]* %29, i32 0, i32 6
  %715 = load float, float* %714, align 4, !tbaa !63, !noalias !57
  %716 = fadd fast float %715, %670
  %717 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %716)  ; FMax(a,b)
  %718 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %716)  ; FMin(a,b)
  %719 = fmul fast float %718, 0x3F847AE140000000
  %720 = fadd fast float %719, %717
  store float %720, float* %714, align 4, !tbaa !63, !noalias !57
  %721 = getelementptr inbounds [8 x float], [8 x float]* %29, i32 0, i32 7
  %722 = load float, float* %721, align 4, !tbaa !63, !noalias !57
  %723 = fadd fast float %722, %671
  %724 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %723)  ; FMax(a,b)
  %725 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %723)  ; FMin(a,b)
  %726 = fmul fast float %725, 0x3F847AE140000000
  %727 = fadd fast float %726, %724
  store float %727, float* %721, align 4, !tbaa !63, !noalias !57
  %728 = add i32 %504, 26
  %729 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %728, i32 undef)  ; BufferLoad(srv,index,wot)
  %730 = extractvalue %dx.types.ResRet.f32 %729, 0
  %731 = extractvalue %dx.types.ResRet.f32 %729, 1
  %732 = extractvalue %dx.types.ResRet.f32 %729, 2
  %733 = extractvalue %dx.types.ResRet.f32 %729, 3
  %734 = add i32 %504, 27
  %735 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %734, i32 undef)  ; BufferLoad(srv,index,wot)
  %736 = extractvalue %dx.types.ResRet.f32 %735, 0
  %737 = extractvalue %dx.types.ResRet.f32 %735, 1
  %738 = extractvalue %dx.types.ResRet.f32 %735, 2
  %739 = extractvalue %dx.types.ResRet.f32 %735, 3
  %740 = fmul fast float %678, %730
  %741 = fmul fast float %685, %731
  %742 = fadd fast float %741, %740
  %743 = fmul fast float %692, %732
  %744 = fadd fast float %742, %743
  %745 = fmul fast float %699, %733
  %746 = fadd fast float %744, %745
  %747 = fmul fast float %706, %736
  %748 = fadd fast float %746, %747
  %749 = fmul fast float %713, %737
  %750 = fadd fast float %748, %749
  %751 = fmul fast float %720, %738
  %752 = fadd fast float %750, %751
  %753 = fmul fast float %727, %739
  %754 = fadd fast float %752, %753
  %755 = add i32 %504, 28
  %756 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %755, i32 undef)  ; BufferLoad(srv,index,wot)
  %757 = extractvalue %dx.types.ResRet.f32 %756, 0
  %758 = fadd fast float %754, %757
  %759 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %758)  ; FMax(a,b)
  %760 = fmul fast float %659, %759
  %761 = call float @dx.op.unary.f32(i32 7, float %760)  ; Saturate(value)
  %762 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 %483
  store float %761, float* %762, align 4, !tbaa !63, !noalias !57
  %763 = fadd fast float %761, %482
  %764 = add nuw nsw i32 %483, 1
  %765 = icmp eq i32 %764, 8
  br i1 %765, label %769, label %766

; <label>:766                                     ; preds = %655
  %767 = getelementptr inbounds [8 x i32], [8 x i32]* %30, i32 0, i32 %764
  %768 = load i32, i32* %767, align 4, !tbaa !53, !noalias !57
  br label %480

; <label>:769                                     ; preds = %655
  %770 = fcmp fast ugt float %763, 0x3EE4F8B580000000
  br i1 %770, label %771, label %910, !dx.controlflow.hints !65

; <label>:771                                     ; preds = %769
  %772 = fcmp fast ogt float %763, 0x3EE4F8B580000000
  %773 = fdiv fast float 1.000000e+00, %763
  %774 = select i1 %772, float %773, float 1.000000e+00
  %775 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 0
  %776 = load float, float* %775, align 4, !tbaa !63, !noalias !57
  %777 = fmul fast float %776, %774
  store float %777, float* %775, align 4, !tbaa !63, !noalias !57
  %778 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 1
  %779 = load float, float* %778, align 4, !tbaa !63, !noalias !57
  %780 = fmul fast float %779, %774
  store float %780, float* %778, align 4, !tbaa !63, !noalias !57
  %781 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 2
  %782 = load float, float* %781, align 4, !tbaa !63, !noalias !57
  %783 = fmul fast float %782, %774
  store float %783, float* %781, align 4, !tbaa !63, !noalias !57
  %784 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 3
  %785 = load float, float* %784, align 4, !tbaa !63, !noalias !57
  %786 = fmul fast float %785, %774
  store float %786, float* %784, align 4, !tbaa !63, !noalias !57
  %787 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 4
  %788 = load float, float* %787, align 4, !tbaa !63, !noalias !57
  %789 = fmul fast float %788, %774
  store float %789, float* %787, align 4, !tbaa !63, !noalias !57
  %790 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 5
  %791 = load float, float* %790, align 4, !tbaa !63, !noalias !57
  %792 = fmul fast float %791, %774
  store float %792, float* %790, align 4, !tbaa !63, !noalias !57
  %793 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 6
  %794 = load float, float* %793, align 4, !tbaa !63, !noalias !57
  %795 = fmul fast float %794, %774
  store float %795, float* %793, align 4, !tbaa !63, !noalias !57
  %796 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 7
  %797 = load float, float* %796, align 4, !tbaa !63, !noalias !57
  %798 = fmul fast float %797, %774
  store float %798, float* %796, align 4, !tbaa !63, !noalias !57
  br label %799

; <label>:799                                     ; preds = %904, %771
  %800 = phi float [ %908, %904 ], [ %777, %771 ]
  %801 = phi i32 [ %906, %904 ], [ %408, %771 ]
  %802 = phi float [ %883, %904 ], [ 0.000000e+00, %771 ]
  %803 = phi float [ %881, %904 ], [ 0.000000e+00, %771 ]
  %804 = phi float [ %879, %904 ], [ 0.000000e+00, %771 ]
  %805 = phi float [ %875, %904 ], [ 0.000000e+00, %771 ]
  %806 = phi float [ %892, %904 ], [ 0.000000e+00, %771 ]
  %807 = phi float [ %890, %904 ], [ 0.000000e+00, %771 ]
  %808 = phi float [ %888, %904 ], [ 0.000000e+00, %771 ]
  %809 = phi float [ %885, %904 ], [ 0.000000e+00, %771 ]
  %810 = phi float [ %901, %904 ], [ 0.000000e+00, %771 ]
  %811 = phi float [ %899, %904 ], [ 0.000000e+00, %771 ]
  %812 = phi float [ %897, %904 ], [ 0.000000e+00, %771 ]
  %813 = phi float [ %894, %904 ], [ 0.000000e+00, %771 ]
  %814 = phi i32 [ %902, %904 ], [ 0, %771 ]
  %815 = shl i32 %801, 5
  %816 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %815, i32 undef)  ; BufferLoad(srv,index,wot)
  %817 = extractvalue %dx.types.ResRet.i32 %816, 0
  %818 = extractvalue %dx.types.ResRet.i32 %816, 1
  %819 = extractvalue %dx.types.ResRet.i32 %816, 3
  %820 = or i32 %815, 16
  %821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %820, i32 undef)  ; BufferLoad(srv,index,wot)
  %822 = extractvalue %dx.types.ResRet.i32 %821, 1
  %823 = shl i32 %817, 4
  %824 = and i32 %823, 32752
  %825 = call float @dx.op.legacyF16ToF32(i32 131, i32 %824)  ; LegacyF16ToF32(value)
  %826 = lshr i32 %817, 7
  %827 = and i32 %826, 32752
  %828 = call float @dx.op.legacyF16ToF32(i32 131, i32 %827)  ; LegacyF16ToF32(value)
  %829 = lshr i32 %817, 22
  %830 = shl nuw nsw i32 %829, 5
  %831 = call float @dx.op.legacyF16ToF32(i32 131, i32 %830)  ; LegacyF16ToF32(value)
  %832 = and i32 %818, 255
  %833 = uitofp i32 %832 to float
  %834 = fmul fast float %833, 0x3F80204080000000
  %835 = fadd fast float %834, -1.000000e+00
  %836 = lshr i32 %818, 8
  %837 = and i32 %836, 255
  %838 = uitofp i32 %837 to float
  %839 = fmul fast float %838, 0x3F80204080000000
  %840 = fadd fast float %839, -1.000000e+00
  %841 = lshr i32 %818, 16
  %842 = and i32 %841, 255
  %843 = uitofp i32 %842 to float
  %844 = fmul fast float %843, 0x3F80204080000000
  %845 = fadd fast float %844, -1.000000e+00
  %846 = and i32 %819, 255
  %847 = uitofp i32 %846 to float
  %848 = fmul fast float %847, 0x3F80204080000000
  %849 = fadd fast float %848, -1.000000e+00
  %850 = lshr i32 %819, 8
  %851 = and i32 %850, 255
  %852 = uitofp i32 %851 to float
  %853 = fmul fast float %852, 0x3F80204080000000
  %854 = fadd fast float %853, -1.000000e+00
  %855 = lshr i32 %819, 16
  %856 = and i32 %855, 255
  %857 = uitofp i32 %856 to float
  %858 = fmul fast float %857, 0x3F80204080000000
  %859 = fadd fast float %858, -1.000000e+00
  %860 = and i32 %822, 255
  %861 = uitofp i32 %860 to float
  %862 = fmul fast float %861, 0x3F80204080000000
  %863 = fadd fast float %862, -1.000000e+00
  %864 = lshr i32 %822, 8
  %865 = and i32 %864, 255
  %866 = uitofp i32 %865 to float
  %867 = fmul fast float %866, 0x3F80204080000000
  %868 = fadd fast float %867, -1.000000e+00
  %869 = lshr i32 %822, 16
  %870 = and i32 %869, 255
  %871 = uitofp i32 %870 to float
  %872 = fmul fast float %871, 0x3F80204080000000
  %873 = fadd fast float %872, -1.000000e+00
  %874 = fmul fast float %825, %800
  %875 = fadd fast float %874, %805
  %876 = fmul fast float %800, 0x3FFBB67AE0000000
  %877 = fmul fast float %876, %825
  %878 = fmul fast float %877, %835
  %879 = fadd fast float %878, %804
  %880 = fmul fast float %877, %840
  %881 = fadd fast float %880, %803
  %882 = fmul fast float %877, %845
  %883 = fadd fast float %882, %802
  %884 = fmul fast float %828, %800
  %885 = fadd fast float %884, %809
  %886 = fmul fast float %876, %828
  %887 = fmul fast float %886, %849
  %888 = fadd fast float %887, %808
  %889 = fmul fast float %886, %854
  %890 = fadd fast float %889, %807
  %891 = fmul fast float %886, %859
  %892 = fadd fast float %891, %806
  %893 = fmul fast float %831, %800
  %894 = fadd fast float %893, %813
  %895 = fmul fast float %876, %831
  %896 = fmul fast float %895, %863
  %897 = fadd fast float %896, %812
  %898 = fmul fast float %895, %868
  %899 = fadd fast float %898, %811
  %900 = fmul fast float %895, %873
  %901 = fadd fast float %900, %810
  %902 = add nuw nsw i32 %814, 1
  %903 = icmp eq i32 %902, 8
  br i1 %903, label %909, label %904

; <label>:904                                     ; preds = %799
  %905 = getelementptr inbounds [8 x i32], [8 x i32]* %30, i32 0, i32 %902
  %906 = load i32, i32* %905, align 4, !tbaa !53, !noalias !57
  %907 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 %902
  %908 = load float, float* %907, align 4, !tbaa !63, !noalias !57
  br label %799

; <label>:909                                     ; preds = %799
  br label %910

; <label>:910                                     ; preds = %909, %769, %336, %317, %191
  %911 = phi float [ 0.000000e+00, %191 ], [ 0.000000e+00, %317 ], [ 0.000000e+00, %336 ], [ 0.000000e+00, %769 ], [ %883, %909 ]
  %912 = phi float [ 0.000000e+00, %191 ], [ 0.000000e+00, %317 ], [ 0.000000e+00, %336 ], [ 0.000000e+00, %769 ], [ %881, %909 ]
  %913 = phi float [ 0.000000e+00, %191 ], [ 0.000000e+00, %317 ], [ 0.000000e+00, %336 ], [ 0.000000e+00, %769 ], [ %879, %909 ]
  %914 = phi float [ 0.000000e+00, %191 ], [ 0.000000e+00, %317 ], [ 0.000000e+00, %336 ], [ 0.000000e+00, %769 ], [ %875, %909 ]
  %915 = phi float [ 0.000000e+00, %191 ], [ 0.000000e+00, %317 ], [ 0.000000e+00, %336 ], [ 0.000000e+00, %769 ], [ %892, %909 ]
  %916 = phi float [ 0.000000e+00, %191 ], [ 0.000000e+00, %317 ], [ 0.000000e+00, %336 ], [ 0.000000e+00, %769 ], [ %890, %909 ]
  %917 = phi float [ 0.000000e+00, %191 ], [ 0.000000e+00, %317 ], [ 0.000000e+00, %336 ], [ 0.000000e+00, %769 ], [ %888, %909 ]
  %918 = phi float [ 0.000000e+00, %191 ], [ 0.000000e+00, %317 ], [ 0.000000e+00, %336 ], [ 0.000000e+00, %769 ], [ %885, %909 ]
  %919 = phi float [ 0.000000e+00, %191 ], [ 0.000000e+00, %317 ], [ 0.000000e+00, %336 ], [ 0.000000e+00, %769 ], [ %901, %909 ]
  %920 = phi float [ 0.000000e+00, %191 ], [ 0.000000e+00, %317 ], [ 0.000000e+00, %336 ], [ 0.000000e+00, %769 ], [ %899, %909 ]
  %921 = phi float [ 0.000000e+00, %191 ], [ 0.000000e+00, %317 ], [ 0.000000e+00, %336 ], [ 0.000000e+00, %769 ], [ %897, %909 ]
  %922 = phi float [ 0.000000e+00, %191 ], [ 0.000000e+00, %317 ], [ 0.000000e+00, %336 ], [ 0.000000e+00, %769 ], [ %894, %909 ]
  %923 = phi i1 [ false, %191 ], [ false, %317 ], [ false, %336 ], [ false, %769 ], [ true, %909 ]
  %924 = phi float [ 1.000000e+00, %191 ], [ 1.000000e+00, %317 ], [ 1.000000e+00, %336 ], [ 0.000000e+00, %769 ], [ 1.000000e+00, %909 ]
  br i1 %923, label %964, label %925, !dx.controlflow.hints !66

; <label>:925                                     ; preds = %910
  %926 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %927 = extractvalue %dx.types.ResRet.i32 %926, 2
  %928 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %929 = extractvalue %dx.types.ResRet.i32 %928, 1
  %930 = extractvalue %dx.types.ResRet.i32 %928, 2
  %931 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %932 = extractvalue %dx.types.ResRet.i32 %931, 0
  %933 = extractvalue %dx.types.ResRet.i32 %931, 1
  %934 = extractvalue %dx.types.ResRet.i32 %931, 2
  %935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %936 = extractvalue %dx.types.ResRet.i32 %935, 0
  %937 = extractvalue %dx.types.ResRet.i32 %935, 1
  %938 = and i32 %936, 65535
  %939 = call float @dx.op.legacyF16ToF32(i32 131, i32 %938)  ; LegacyF16ToF32(value)
  %940 = lshr i32 %936, 16
  %941 = call float @dx.op.legacyF16ToF32(i32 131, i32 %940)  ; LegacyF16ToF32(value)
  %942 = and i32 %937, 65535
  %943 = call float @dx.op.legacyF16ToF32(i32 131, i32 %942)  ; LegacyF16ToF32(value)
  %944 = lshr i32 %937, 16
  %945 = call float @dx.op.legacyF16ToF32(i32 131, i32 %944)  ; LegacyF16ToF32(value)
  %946 = lshr i32 %932, 16
  %947 = call float @dx.op.legacyF16ToF32(i32 131, i32 %946)  ; LegacyF16ToF32(value)
  %948 = and i32 %933, 65535
  %949 = call float @dx.op.legacyF16ToF32(i32 131, i32 %948)  ; LegacyF16ToF32(value)
  %950 = lshr i32 %933, 16
  %951 = call float @dx.op.legacyF16ToF32(i32 131, i32 %950)  ; LegacyF16ToF32(value)
  %952 = and i32 %934, 65535
  %953 = call float @dx.op.legacyF16ToF32(i32 131, i32 %952)  ; LegacyF16ToF32(value)
  %954 = and i32 %929, 65535
  %955 = call float @dx.op.legacyF16ToF32(i32 131, i32 %954)  ; LegacyF16ToF32(value)
  %956 = lshr i32 %929, 16
  %957 = call float @dx.op.legacyF16ToF32(i32 131, i32 %956)  ; LegacyF16ToF32(value)
  %958 = and i32 %930, 65535
  %959 = call float @dx.op.legacyF16ToF32(i32 131, i32 %958)  ; LegacyF16ToF32(value)
  %960 = lshr i32 %930, 16
  %961 = call float @dx.op.legacyF16ToF32(i32 131, i32 %960)  ; LegacyF16ToF32(value)
  %962 = and i32 %927, 65535
  %963 = call float @dx.op.legacyF16ToF32(i32 131, i32 %962)  ; LegacyF16ToF32(value)
  br label %964

; <label>:964                                     ; preds = %925, %910
  %965 = phi float [ %915, %910 ], [ %953, %925 ]
  %966 = phi float [ %916, %910 ], [ %951, %925 ]
  %967 = phi float [ %917, %910 ], [ %949, %925 ]
  %968 = phi float [ %918, %910 ], [ %947, %925 ]
  %969 = phi float [ %919, %910 ], [ %961, %925 ]
  %970 = phi float [ %920, %910 ], [ %959, %925 ]
  %971 = phi float [ %921, %910 ], [ %957, %925 ]
  %972 = phi float [ %922, %910 ], [ %955, %925 ]
  %973 = phi float [ %911, %910 ], [ %945, %925 ]
  %974 = phi float [ %912, %910 ], [ %943, %925 ]
  %975 = phi float [ %913, %910 ], [ %941, %925 ]
  %976 = phi float [ %914, %910 ], [ %939, %925 ]
  %977 = phi float [ %924, %910 ], [ %963, %925 ]
  %978 = select i1 %923, float %977, float 3.125000e-02
  %979 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %140, i32 0)  ; BufferLoad(srv,index,wot)
  %980 = extractvalue %dx.types.ResRet.i32 %979, 0
  %981 = icmp eq i32 %980, 262144
  br i1 %981, label %998, label %982, !dx.controlflow.hints !67

; <label>:982                                     ; preds = %964
  %983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %140, i32 0)  ; BufferLoad(srv,index,wot)
  %984 = extractvalue %dx.types.ResRet.i32 %983, 0
  %985 = and i32 %55, 31
  %986 = shl i32 1, %985
  %987 = add i32 %986, -1
  %988 = and i32 %987, %984
  %989 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %988)  ; Countbits(value)
  %990 = and i32 %48, 31
  %991 = shl i32 1, %990
  %992 = shl i32 %991, %990
  %993 = shl i32 %28, %990
  %994 = mul i32 %992, %989
  %995 = add i32 %980, %27
  %996 = add i32 %995, %993
  %997 = add i32 %996, %994
  br label %998

; <label>:998                                     ; preds = %982, %964
  %999 = phi i32 [ %997, %982 ], [ -1, %964 ]
  %1000 = icmp eq i32 %999, -1
  br i1 %1000, label %1018, label %1001, !dx.controlflow.hints !68

; <label>:1001                                    ; preds = %998
  %1002 = fmul fast float %976, 0x3FFBB67AE0000000
  %1003 = fadd fast float %1002, %975
  %1004 = fadd fast float %1002, %974
  %1005 = fadd fast float %1002, %973
  %1006 = fmul fast float %968, 0x3FFBB67AE0000000
  %1007 = fadd fast float %1006, %967
  %1008 = fadd fast float %1006, %966
  %1009 = fadd fast float %1006, %965
  %1010 = fmul fast float %972, 0x3FFBB67AE0000000
  %1011 = fadd fast float %1010, %971
  %1012 = fadd fast float %1010, %970
  %1013 = fadd fast float %1010, %969
  %1014 = shl i32 %999, 2
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %2, i32 %1014, i32 undef, float %976, float %968, float %972, float %976, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1015 = or i32 %1014, 1
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %2, i32 %1015, i32 undef, float %1003, float %1007, float %1011, float %1003, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1016 = or i32 %1014, 2
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %2, i32 %1016, i32 undef, float %1004, float %1008, float %1012, float %1004, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1017 = or i32 %1014, 3
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %2, i32 %1017, i32 undef, float %1005, float %1009, float %1013, float %1005, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %999, i32 undef, float %978, float %978, float %978, float %978, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1018

; <label>:1018                                    ; preds = %1001, %998, %132, %44, %35
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.bufferStore.f32(i32, %dx.types.Handle, i32, i32, float, float, float, float, i8) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!40}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !31, !34, !38}
!5 = !{!6, !8, !9, !11, !13, !14, !15, !16, !18, !19, !21, !23, !24, !25, !26, !27, !28, !29, !30}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 33, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 28, i32 1, i32 11, i32 0, null}
!9 = !{i32 2, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 37, i32 1, i32 12, i32 0, !10}
!10 = !{i32 1, i32 4}
!11 = !{i32 3, %"class.StructuredBuffer<GfxMultiLightGridLightingCount>"* undef, !"", i32 0, i32 38, i32 1, i32 12, i32 0, !12}
!12 = !{i32 1, i32 80}
!13 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 30, i32 1, i32 11, i32 0, null}
!14 = !{i32 5, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 22, i32 1, i32 12, i32 0, !10}
!15 = !{i32 6, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 23, i32 1, i32 12, i32 0, !10}
!16 = !{i32 7, %"class.StructuredBuffer<vector<unsigned int, 2> >"* undef, !"", i32 0, i32 21, i32 1, i32 12, i32 0, !17}
!17 = !{i32 1, i32 8}
!18 = !{i32 8, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 25, i32 1, i32 12, i32 0, !10}
!19 = !{i32 9, %"class.StructuredBuffer<GfxNeuralLightGridTopLevelNode>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i32 0, !20}
!20 = !{i32 1, i32 16}
!21 = !{i32 10, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 10, i32 0, !22}
!22 = !{i32 0, i32 5}
!23 = !{i32 11, %"class.StructuredBuffer<GfxNeuralLightGridInternalNode>"* undef, !"", i32 0, i32 2, i32 1, i32 12, i32 0, !20}
!24 = !{i32 12, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 3, i32 1, i32 10, i32 0, !22}
!25 = !{i32 13, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 4, i32 1, i32 10, i32 0, !22}
!26 = !{i32 14, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 5, i32 1, i32 10, i32 0, !22}
!27 = !{i32 15, %"class.Buffer<vector<float, 4> >"* undef, !"", i32 0, i32 6, i32 1, i32 10, i32 0, !7}
!28 = !{i32 16, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 7, i32 1, i32 10, i32 0, !22}
!29 = !{i32 17, %"class.Buffer<vector<float, 4> >"* undef, !"", i32 0, i32 8, i32 1, i32 10, i32 0, !7}
!30 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 9, i32 1, i32 11, i32 0, null}
!31 = !{!32, !33}
!32 = !{i32 0, %"class.RWBuffer<vector<float, 3> >"* undef, !"", i32 0, i32 2, i32 1, i32 10, i1 false, i1 false, i1 false, !7}
!33 = !{i32 1, %"class.RWBuffer<float>"* undef, !"", i32 0, i32 3, i32 1, i32 10, i1 false, i1 false, i1 false, !7}
!34 = !{!35, !36, !37}
!35 = !{i32 0, %GfxNeuralLightGridSetupConsts* undef, !"", i32 0, i32 4, i32 1, i32 80, null}
!36 = !{i32 1, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!37 = !{i32 2, %DeferredEffectLightConsts_decl* undef, !"", i32 0, i32 1, i32 1, i32 240, null}
!38 = !{!39}
!39 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!40 = !{void ()* @cs_del_sh_sample_lightgrid_2_lowres, !"cs_del_sh_sample_lightgrid_2_lowres", null, !4, !41}
!41 = !{i32 0, i64 272, i32 4, !42}
!42 = !{i32 64, i32 1, i32 1}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = !{!54, !54, i64 0}
!54 = !{!"int", !55, i64 0}
!55 = !{!"omnipotent char", !56, i64 0}
!56 = !{!"Simple C/C++ TBAA"}
!57 = !{!58, !60, !61, !62}
!58 = distinct !{!58, !59, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z: %probeR"}
!59 = distinct !{!59, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z"}
!60 = distinct !{!60, !59, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z: %probeG"}
!61 = distinct !{!61, !59, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z: %probeB"}
!62 = distinct !{!62, !59, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z: %probeA"}
!63 = !{!64, !64, i64 0}
!64 = !{!"float", !55, i64 0}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}

