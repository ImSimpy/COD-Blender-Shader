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
; shader hash: b5a8f63918a58b53a37b5a55f5c3dc33
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

define void @cs_del_sh_sample_lightgrid_1_lowres() {
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
  br i1 %43, label %46, label %1015, !dx.controlflow.hints !44

; <label>:44                                      ; preds = %0
  %45 = icmp ult i32 %26, %33
  br i1 %45, label %46, label %1015, !dx.controlflow.hints !45

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
  br i1 %136, label %137, label %1015, !dx.controlflow.hints !48

; <label>:137                                     ; preds = %132
  %138 = add i32 %135, %52
  %139 = shl i32 %138, 5
  %140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %139, i32 undef)  ; BufferLoad(srv,index,wot)
  %141 = extractvalue %dx.types.ResRet.i32 %140, 0
  %142 = extractvalue %dx.types.ResRet.i32 %140, 1
  %143 = extractvalue %dx.types.ResRet.i32 %140, 2
  %144 = extractvalue %dx.types.ResRet.i32 %140, 3
  %145 = bitcast i32 %141 to float
  %146 = bitcast i32 %142 to float
  %147 = bitcast i32 %143 to float
  %148 = and i32 %144, 536870912
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %189, label %150, !dx.controlflow.hints !49

; <label>:150                                     ; preds = %137
  %151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %152 = extractvalue %dx.types.CBufRet.f32 %151, 2
  %153 = extractvalue %dx.types.CBufRet.f32 %151, 3
  %154 = fmul fast float %152, %145
  %155 = fmul fast float %153, %146
  %156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %157 = extractvalue %dx.types.CBufRet.f32 %156, 0
  %158 = extractvalue %dx.types.CBufRet.f32 %156, 1
  %159 = fadd fast float %154, %157
  %160 = fadd fast float %155, %158
  %161 = call float @dx.op.unary.f32(i32 7, float %159)  ; Saturate(value)
  %162 = call float @dx.op.unary.f32(i32 7, float %160)  ; Saturate(value)
  %163 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %22, float %161, float %162, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %164 = extractvalue %dx.types.ResRet.f32 %163, 0
  %165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %166 = extractvalue %dx.types.CBufRet.f32 %165, 0
  %167 = fmul fast float %166, %164
  %168 = fsub fast float %159, %161
  %169 = fsub fast float %160, %162
  %170 = extractvalue %dx.types.CBufRet.f32 %151, 0
  %171 = extractvalue %dx.types.CBufRet.f32 %151, 1
  %172 = fmul fast float %170, %168
  %173 = fmul fast float %171, %169
  %174 = fmul fast float %172, %172
  %175 = fmul fast float %173, %173
  %176 = fadd fast float %174, %175
  %177 = call float @dx.op.unary.f32(i32 24, float %176)  ; Sqrt(value)
  %178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %179 = extractvalue %dx.types.CBufRet.f32 %178, 3
  %180 = fmul fast float %179, %177
  %181 = call float @dx.op.unary.f32(i32 7, float %180)  ; Saturate(value)
  %182 = extractvalue %dx.types.CBufRet.f32 %178, 2
  %183 = fsub fast float %182, %167
  %184 = fmul fast float %183, %181
  %185 = extractvalue %dx.types.CBufRet.f32 %165, 1
  %186 = fadd fast float %167, %147
  %187 = fadd fast float %186, %185
  %188 = fadd fast float %187, %184
  br label %189

; <label>:189                                     ; preds = %150, %137
  %190 = phi float [ %188, %150 ], [ %147, %137 ]
  %191 = or i32 %139, 16
  %192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %191, i32 undef)  ; BufferLoad(srv,index,wot)
  %193 = extractvalue %dx.types.ResRet.i32 %192, 0
  %194 = extractvalue %dx.types.ResRet.i32 %192, 1
  %195 = extractvalue %dx.types.ResRet.i32 %192, 2
  %196 = extractvalue %dx.types.ResRet.i32 %192, 3
  %197 = and i32 %193, 65535
  %198 = call float @dx.op.legacyF16ToF32(i32 131, i32 %197)  ; LegacyF16ToF32(value)
  %199 = lshr i32 %193, 16
  %200 = call float @dx.op.legacyF16ToF32(i32 131, i32 %199)  ; LegacyF16ToF32(value)
  %201 = and i32 %194, 1023
  %202 = uitofp i32 %201 to float
  %203 = lshr i32 %194, 10
  %204 = and i32 %203, 1023
  %205 = uitofp i32 %204 to float
  %206 = lshr i32 %194, 20
  %207 = and i32 %206, 1023
  %208 = uitofp i32 %207 to float
  %209 = fmul fast float %202, 0x3F60040100000000
  %210 = fmul fast float %205, 0x3F60040100000000
  %211 = fmul fast float %208, 0x3F60040100000000
  %212 = fadd fast float %209, -1.000000e+00
  %213 = fadd fast float %210, -1.000000e+00
  %214 = fadd fast float %211, -1.000000e+00
  %215 = and i32 %195, 1023
  %216 = uitofp i32 %215 to float
  %217 = lshr i32 %195, 10
  %218 = and i32 %217, 1023
  %219 = uitofp i32 %218 to float
  %220 = lshr i32 %195, 20
  %221 = and i32 %220, 1023
  %222 = uitofp i32 %221 to float
  %223 = fmul fast float %216, 0x3F60040100000000
  %224 = fmul fast float %219, 0x3F60040100000000
  %225 = fmul fast float %222, 0x3F60040100000000
  %226 = fadd fast float %223, -1.000000e+00
  %227 = fadd fast float %224, -1.000000e+00
  %228 = fadd fast float %225, -1.000000e+00
  %229 = and i32 %196, 65535
  %230 = call float @dx.op.legacyF16ToF32(i32 131, i32 %229)  ; LegacyF16ToF32(value)
  %231 = call float @dx.op.unary.f32(i32 13, float %230)  ; Sin(value)
  %232 = call float @dx.op.unary.f32(i32 12, float %230)  ; Cos(value)
  %233 = fmul fast float %232, %212
  %234 = fmul fast float %213, %232
  %235 = fmul fast float %214, %232
  %236 = fmul fast float %226, %231
  %237 = fmul fast float %227, %231
  %238 = fmul fast float %228, %231
  %239 = fadd fast float %233, %236
  %240 = fadd fast float %234, %237
  %241 = fadd fast float %235, %238
  %242 = fmul fast float %239, %198
  %243 = fmul fast float %240, %198
  %244 = fmul fast float %241, %198
  %245 = fmul fast float %212, %231
  %246 = fmul fast float %213, %231
  %247 = fmul fast float %214, %231
  %248 = fmul fast float %232, %226
  %249 = fmul fast float %227, %232
  %250 = fmul fast float %228, %232
  %251 = fsub fast float %245, %248
  %252 = fsub fast float %246, %249
  %253 = fsub fast float %247, %250
  %254 = fmul fast float %251, %200
  %255 = fmul fast float %252, %200
  %256 = fmul fast float %253, %200
  %257 = uitofp i32 %27 to float
  %258 = uitofp i32 %28 to float
  %259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %260 = extractvalue %dx.types.CBufRet.f32 %259, 1
  %261 = fdiv fast float %257, %260
  %262 = fdiv fast float %258, %260
  %263 = extractvalue %dx.types.CBufRet.f32 %259, 2
  %264 = fadd fast float %263, %261
  %265 = fadd fast float %263, %262
  %266 = fmul fast float %264, %242
  %267 = fmul fast float %264, %243
  %268 = fmul fast float %264, %244
  %269 = fmul fast float %265, %254
  %270 = fmul fast float %265, %255
  %271 = fmul fast float %265, %256
  %272 = fadd fast float %269, %266
  %273 = fmul fast float %272, 2.000000e+00
  %274 = fsub fast float %145, %242
  %275 = fsub fast float %274, %254
  %276 = fadd fast float %275, %273
  %277 = fadd fast float %270, %267
  %278 = fmul fast float %277, 2.000000e+00
  %279 = fsub fast float %146, %243
  %280 = fsub fast float %279, %255
  %281 = fadd fast float %280, %278
  %282 = fadd fast float %271, %268
  %283 = fmul fast float %282, 2.000000e+00
  %284 = fsub fast float %190, %244
  %285 = fsub fast float %284, %256
  %286 = fadd fast float %285, %283
  %287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %288 = extractvalue %dx.types.CBufRet.f32 %287, 0
  %289 = extractvalue %dx.types.CBufRet.f32 %287, 1
  %290 = extractvalue %dx.types.CBufRet.f32 %287, 2
  %291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %292 = extractvalue %dx.types.CBufRet.f32 %291, 0
  %293 = extractvalue %dx.types.CBufRet.f32 %291, 1
  %294 = extractvalue %dx.types.CBufRet.f32 %291, 2
  %295 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %296 = extractvalue %dx.types.CBufRet.i32 %295, 1
  %297 = fsub fast float %276, %288
  %298 = fsub fast float %281, %289
  %299 = fsub fast float %286, %290
  %300 = fmul fast float %297, %292
  %301 = fmul fast float %298, %293
  %302 = fmul fast float %299, %294
  %303 = fcmp fast ole float %300, 0.000000e+00
  %304 = fcmp fast ole float %301, 0.000000e+00
  %305 = fcmp fast ole float %302, 0.000000e+00
  %306 = or i1 %303, %304
  %307 = or i1 %305, %306
  %308 = fcmp fast oge float %300, 1.000000e+00
  %309 = fcmp fast oge float %301, 1.000000e+00
  %310 = fcmp fast oge float %302, 1.000000e+00
  %311 = or i1 %308, %309
  %312 = or i1 %310, %311
  %313 = or i1 %307, %312
  br i1 %313, label %907, label %314, !dx.controlflow.hints !50

; <label>:314                                     ; preds = %189
  %315 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %316 = extractvalue %dx.types.CBufRet.i32 %315, 0
  %317 = fptosi float %297 to i32
  %318 = fptosi float %298 to i32
  %319 = fptosi float %299 to i32
  %320 = and i32 %296, 31
  %321 = ashr i32 %317, %320
  %322 = ashr i32 %318, %320
  %323 = ashr i32 %319, %320
  %324 = mul i32 %316, %322
  %325 = add nsw i32 %324, %321
  %326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %325, i32 0)  ; BufferLoad(srv,index,wot)
  %327 = extractvalue %dx.types.ResRet.i32 %326, 0
  %328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %325, i32 4)  ; BufferLoad(srv,index,wot)
  %329 = extractvalue %dx.types.ResRet.i32 %328, 0
  %330 = icmp slt i32 %323, %327
  %331 = icmp sgt i32 %323, %329
  %332 = or i1 %330, %331
  br i1 %332, label %907, label %333, !dx.controlflow.hints !51

; <label>:333                                     ; preds = %314
  %334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %325, i32 8)  ; BufferLoad(srv,index,wot)
  %335 = extractvalue %dx.types.ResRet.i32 %334, 0
  %336 = sub i32 %323, %327
  %337 = add nsw i32 %336, %335
  %338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %337, i32 undef)  ; BufferLoad(srv,index,wot)
  %339 = extractvalue %dx.types.ResRet.i32 %338, 0
  %340 = icmp eq i32 %339, -1
  br i1 %340, label %907, label %341, !dx.controlflow.hints !52

; <label>:341                                     ; preds = %333
  %342 = getelementptr inbounds [8 x i32], [8 x i32]* %30, i32 0, i32 0
  store i32 -1, i32* %342, align 4, !tbaa !53, !noalias !57
  %343 = getelementptr inbounds [8 x i32], [8 x i32]* %30, i32 0, i32 1
  store i32 -1, i32* %343, align 4, !tbaa !53, !noalias !57
  %344 = getelementptr inbounds [8 x i32], [8 x i32]* %30, i32 0, i32 2
  store i32 -1, i32* %344, align 4, !tbaa !53, !noalias !57
  %345 = getelementptr inbounds [8 x i32], [8 x i32]* %30, i32 0, i32 3
  store i32 -1, i32* %345, align 4, !tbaa !53, !noalias !57
  %346 = getelementptr inbounds [8 x i32], [8 x i32]* %30, i32 0, i32 4
  store i32 -1, i32* %346, align 4, !tbaa !53, !noalias !57
  %347 = getelementptr inbounds [8 x i32], [8 x i32]* %30, i32 0, i32 5
  store i32 -1, i32* %347, align 4, !tbaa !53, !noalias !57
  %348 = getelementptr inbounds [8 x i32], [8 x i32]* %30, i32 0, i32 6
  store i32 -1, i32* %348, align 4, !tbaa !53, !noalias !57
  %349 = getelementptr inbounds [8 x i32], [8 x i32]* %30, i32 0, i32 7
  store i32 -1, i32* %349, align 4, !tbaa !53, !noalias !57
  br label %350

; <label>:350                                     ; preds = %454, %341
  %351 = phi i32 [ -1, %341 ], [ %451, %454 ]
  %352 = phi i32 [ -1, %341 ], [ %446, %454 ]
  %353 = phi i32 [ -1, %341 ], [ %439, %454 ]
  %354 = phi i32 [ -1, %341 ], [ %434, %454 ]
  %355 = phi i32 [ -1, %341 ], [ %425, %454 ]
  %356 = phi i32 [ -1, %341 ], [ %420, %454 ]
  %357 = phi i32 [ -1, %341 ], [ %412, %454 ]
  %358 = phi i32 [ -1, %341 ], [ %405, %454 ]
  %359 = phi i32 [ %339, %341 ], [ %474, %454 ]
  %360 = phi i32 [ %296, %341 ], [ %361, %454 ]
  %361 = add nsw i32 %360, -2
  %362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %359, i32 undef)  ; BufferLoad(srv,index,wot)
  %363 = extractvalue %dx.types.ResRet.i32 %362, 0
  %364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %359, i32 undef)  ; BufferLoad(srv,index,wot)
  %365 = extractvalue %dx.types.ResRet.i32 %364, 0
  %366 = and i32 %363, 31
  %367 = shl i32 1, %366
  %368 = add i32 %367, 1
  %369 = and i32 %361, 31
  %370 = ashr i32 %317, %369
  %371 = ashr i32 %318, %369
  %372 = ashr i32 %319, %369
  %373 = and i32 %370, 3
  %374 = and i32 %371, 3
  %375 = and i32 %372, 3
  br label %376

; <label>:376                                     ; preds = %376, %350
  %377 = phi i32 [ %351, %350 ], [ %451, %376 ]
  %378 = phi i32 [ %352, %350 ], [ %446, %376 ]
  %379 = phi i32 [ %353, %350 ], [ %439, %376 ]
  %380 = phi i32 [ %354, %350 ], [ %434, %376 ]
  %381 = phi i32 [ %355, %350 ], [ %425, %376 ]
  %382 = phi i32 [ %356, %350 ], [ %420, %376 ]
  %383 = phi i32 [ %357, %350 ], [ %412, %376 ]
  %384 = phi i32 [ %358, %350 ], [ %405, %376 ]
  %385 = phi i32 [ 0, %350 ], [ %452, %376 ]
  %386 = sub i32 2, %385
  %387 = and i32 %386, 31
  %388 = lshr i32 %373, %387
  %389 = lshr i32 %374, %387
  %390 = lshr i32 %375, %387
  %391 = sub i32 %363, %385
  %392 = and i32 %391, 31
  %393 = shl i32 %388, %392
  %394 = shl i32 %389, %392
  %395 = shl i32 %390, %392
  %396 = shl i32 1, %392
  %397 = mul i32 %395, %368
  %398 = add i32 %397, %394
  %399 = mul i32 %398, %368
  %400 = add i32 %393, %365
  %401 = add i32 %400, %399
  %402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %401, i32 undef)  ; BufferLoad(srv,index,wot)
  %403 = extractvalue %dx.types.ResRet.i32 %402, 0
  %404 = icmp ne i32 %403, -1
  %405 = select i1 %404, i32 %403, i32 %384
  store i32 %405, i32* %342, align 4, !tbaa !53, !noalias !57
  %406 = add i32 %396, %365
  %407 = add i32 %406, %393
  %408 = add i32 %407, %399
  %409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %408, i32 undef)  ; BufferLoad(srv,index,wot)
  %410 = extractvalue %dx.types.ResRet.i32 %409, 0
  %411 = icmp ne i32 %410, -1
  %412 = select i1 %411, i32 %410, i32 %383
  store i32 %412, i32* %343, align 4, !tbaa !53, !noalias !57
  %413 = add i32 %394, %396
  %414 = add i32 %413, %397
  %415 = mul i32 %414, %368
  %416 = add i32 %400, %415
  %417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %416, i32 undef)  ; BufferLoad(srv,index,wot)
  %418 = extractvalue %dx.types.ResRet.i32 %417, 0
  %419 = icmp ne i32 %418, -1
  %420 = select i1 %419, i32 %418, i32 %382
  store i32 %420, i32* %344, align 4, !tbaa !53, !noalias !57
  %421 = add i32 %407, %415
  %422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %421, i32 undef)  ; BufferLoad(srv,index,wot)
  %423 = extractvalue %dx.types.ResRet.i32 %422, 0
  %424 = icmp ne i32 %423, -1
  %425 = select i1 %424, i32 %423, i32 %381
  store i32 %425, i32* %345, align 4, !tbaa !53, !noalias !57
  %426 = add i32 %395, %396
  %427 = mul i32 %426, %368
  %428 = add i32 %427, %394
  %429 = mul i32 %428, %368
  %430 = add i32 %400, %429
  %431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %432 = extractvalue %dx.types.ResRet.i32 %431, 0
  %433 = icmp ne i32 %432, -1
  %434 = select i1 %433, i32 %432, i32 %380
  store i32 %434, i32* %346, align 4, !tbaa !53, !noalias !57
  %435 = add i32 %407, %429
  %436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %435, i32 undef)  ; BufferLoad(srv,index,wot)
  %437 = extractvalue %dx.types.ResRet.i32 %436, 0
  %438 = icmp ne i32 %437, -1
  %439 = select i1 %438, i32 %437, i32 %379
  store i32 %439, i32* %347, align 4, !tbaa !53, !noalias !57
  %440 = add i32 %413, %427
  %441 = mul i32 %440, %368
  %442 = add i32 %400, %441
  %443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %444 = extractvalue %dx.types.ResRet.i32 %443, 0
  %445 = icmp ne i32 %444, -1
  %446 = select i1 %445, i32 %444, i32 %378
  store i32 %446, i32* %348, align 4, !tbaa !53, !noalias !57
  %447 = add i32 %407, %441
  %448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %447, i32 undef)  ; BufferLoad(srv,index,wot)
  %449 = extractvalue %dx.types.ResRet.i32 %448, 0
  %450 = icmp ne i32 %449, -1
  %451 = select i1 %450, i32 %449, i32 %377
  store i32 %451, i32* %349, align 4, !tbaa !53, !noalias !57
  %452 = add i32 %385, 1
  %453 = icmp ugt i32 %452, %363
  br i1 %453, label %454, label %376

; <label>:454                                     ; preds = %376
  %455 = shl nuw nsw i32 %375, 4
  %456 = shl nuw nsw i32 %374, 2
  %457 = lshr i32 %375, 1
  %458 = and i32 %455, 16
  %459 = or i32 %456, %373
  %460 = or i32 %459, %458
  %461 = shl i32 1, %460
  %462 = shl nuw nsw i32 %457, 2
  %463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %359, i32 %462)  ; BufferLoad(srv,index,wot)
  %464 = extractvalue %dx.types.ResRet.i32 %463, 0
  %465 = and i32 %464, %461
  %466 = icmp eq i32 %465, 0
  %467 = add i32 %461, -1
  %468 = and i32 %464, %467
  %469 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %468)  ; Countbits(value)
  %470 = or i32 %462, 8
  %471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %359, i32 %470)  ; BufferLoad(srv,index,wot)
  %472 = extractvalue %dx.types.ResRet.i32 %471, 0
  %473 = add i32 %472, %469
  %474 = select i1 %466, i32 -1, i32 %473
  %475 = icmp eq i32 %474, -1
  br i1 %475, label %476, label %350

; <label>:476                                     ; preds = %454
  br label %477

; <label>:477                                     ; preds = %763, %476
  %478 = phi i32 [ %765, %763 ], [ %405, %476 ]
  %479 = phi float [ %760, %763 ], [ 0.000000e+00, %476 ]
  %480 = phi i32 [ %761, %763 ], [ 0, %476 ]
  %481 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %478, i32 undef)  ; BufferLoad(srv,index,wot)
  %482 = extractvalue %dx.types.ResRet.f32 %481, 0
  %483 = extractvalue %dx.types.ResRet.f32 %481, 1
  %484 = extractvalue %dx.types.ResRet.f32 %481, 2
  %485 = extractvalue %dx.types.ResRet.f32 %481, 3
  %486 = fsub fast float %276, %482
  %487 = fsub fast float %281, %483
  %488 = fsub fast float %286, %484
  %489 = fmul fast float %486, %485
  %490 = fmul fast float %487, %485
  %491 = fmul fast float %488, %485
  %492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %478, i32 undef)  ; BufferLoad(srv,index,wot)
  %493 = extractvalue %dx.types.ResRet.i32 %492, 0
  %494 = call float @dx.op.unary.f32(i32 6, float %489)  ; FAbs(value)
  %495 = call float @dx.op.unary.f32(i32 6, float %490)  ; FAbs(value)
  %496 = fsub fast float 1.000000e+00, %494
  %497 = fsub fast float 1.000000e+00, %495
  %498 = call float @dx.op.unary.f32(i32 7, float %496)  ; Saturate(value)
  %499 = call float @dx.op.unary.f32(i32 7, float %497)  ; Saturate(value)
  %500 = fmul fast float %499, %498
  %501 = mul i32 %493, 29
  %502 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %501, i32 undef)  ; BufferLoad(srv,index,wot)
  %503 = extractvalue %dx.types.ResRet.f32 %502, 0
  %504 = extractvalue %dx.types.ResRet.f32 %502, 1
  %505 = extractvalue %dx.types.ResRet.f32 %502, 2
  %506 = extractvalue %dx.types.ResRet.f32 %502, 3
  %507 = add i32 %501, 1
  %508 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %507, i32 undef)  ; BufferLoad(srv,index,wot)
  %509 = extractvalue %dx.types.ResRet.f32 %508, 0
  %510 = extractvalue %dx.types.ResRet.f32 %508, 1
  %511 = extractvalue %dx.types.ResRet.f32 %508, 2
  %512 = extractvalue %dx.types.ResRet.f32 %508, 3
  %513 = add i32 %501, 2
  %514 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %513, i32 undef)  ; BufferLoad(srv,index,wot)
  %515 = extractvalue %dx.types.ResRet.f32 %514, 0
  %516 = extractvalue %dx.types.ResRet.f32 %514, 1
  %517 = extractvalue %dx.types.ResRet.f32 %514, 2
  %518 = extractvalue %dx.types.ResRet.f32 %514, 3
  %519 = add i32 %501, 3
  %520 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %519, i32 undef)  ; BufferLoad(srv,index,wot)
  %521 = extractvalue %dx.types.ResRet.f32 %520, 0
  %522 = extractvalue %dx.types.ResRet.f32 %520, 1
  %523 = extractvalue %dx.types.ResRet.f32 %520, 2
  %524 = extractvalue %dx.types.ResRet.f32 %520, 3
  %525 = add i32 %501, 4
  %526 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %527 = extractvalue %dx.types.ResRet.f32 %526, 0
  %528 = extractvalue %dx.types.ResRet.f32 %526, 1
  %529 = extractvalue %dx.types.ResRet.f32 %526, 2
  %530 = extractvalue %dx.types.ResRet.f32 %526, 3
  %531 = add i32 %501, 5
  %532 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %531, i32 undef)  ; BufferLoad(srv,index,wot)
  %533 = extractvalue %dx.types.ResRet.f32 %532, 0
  %534 = extractvalue %dx.types.ResRet.f32 %532, 1
  %535 = extractvalue %dx.types.ResRet.f32 %532, 2
  %536 = extractvalue %dx.types.ResRet.f32 %532, 3
  %537 = add i32 %501, 6
  %538 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %539 = extractvalue %dx.types.ResRet.f32 %538, 0
  %540 = extractvalue %dx.types.ResRet.f32 %538, 1
  %541 = extractvalue %dx.types.ResRet.f32 %538, 2
  %542 = extractvalue %dx.types.ResRet.f32 %538, 3
  %543 = add i32 %501, 7
  %544 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %543, i32 undef)  ; BufferLoad(srv,index,wot)
  %545 = extractvalue %dx.types.ResRet.f32 %544, 0
  %546 = extractvalue %dx.types.ResRet.f32 %544, 1
  %547 = extractvalue %dx.types.ResRet.f32 %544, 2
  %548 = extractvalue %dx.types.ResRet.f32 %544, 3
  %549 = fmul fast float %503, %489
  %550 = fmul fast float %515, %490
  %551 = fadd fast float %550, %549
  %552 = fmul fast float %527, %491
  %553 = fadd fast float %551, %552
  %554 = fmul fast float %504, %489
  %555 = fmul fast float %516, %490
  %556 = fadd fast float %555, %554
  %557 = fmul fast float %528, %491
  %558 = fadd fast float %556, %557
  %559 = fmul fast float %505, %489
  %560 = fmul fast float %517, %490
  %561 = fadd fast float %560, %559
  %562 = fmul fast float %529, %491
  %563 = fadd fast float %561, %562
  %564 = fmul fast float %506, %489
  %565 = fmul fast float %518, %490
  %566 = fadd fast float %565, %564
  %567 = fmul fast float %530, %491
  %568 = fadd fast float %566, %567
  %569 = fmul fast float %509, %489
  %570 = fmul fast float %521, %490
  %571 = fadd fast float %570, %569
  %572 = fmul fast float %533, %491
  %573 = fadd fast float %571, %572
  %574 = fmul fast float %510, %489
  %575 = fmul fast float %522, %490
  %576 = fadd fast float %575, %574
  %577 = fmul fast float %534, %491
  %578 = fadd fast float %576, %577
  %579 = fmul fast float %511, %489
  %580 = fmul fast float %523, %490
  %581 = fadd fast float %580, %579
  %582 = fmul fast float %535, %491
  %583 = fadd fast float %581, %582
  %584 = fmul fast float %512, %489
  %585 = fmul fast float %524, %490
  %586 = fadd fast float %585, %584
  %587 = fmul fast float %536, %491
  %588 = fadd fast float %586, %587
  %589 = fadd fast float %553, %539
  %590 = fadd fast float %558, %540
  %591 = fadd fast float %563, %541
  %592 = fadd fast float %568, %542
  %593 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %589)  ; FMax(a,b)
  %594 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %590)  ; FMax(a,b)
  %595 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %591)  ; FMax(a,b)
  %596 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %592)  ; FMax(a,b)
  %597 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %589)  ; FMin(a,b)
  %598 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %590)  ; FMin(a,b)
  %599 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %591)  ; FMin(a,b)
  %600 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %592)  ; FMin(a,b)
  %601 = fmul fast float %597, 0x3F847AE140000000
  %602 = fmul fast float %598, 0x3F847AE140000000
  %603 = fmul fast float %599, 0x3F847AE140000000
  %604 = fmul fast float %600, 0x3F847AE140000000
  %605 = fadd fast float %601, %593
  %606 = fadd fast float %602, %594
  %607 = fadd fast float %603, %595
  %608 = fadd fast float %604, %596
  %609 = fadd fast float %573, %545
  %610 = fadd fast float %578, %546
  %611 = fadd fast float %583, %547
  %612 = fadd fast float %588, %548
  %613 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %609)  ; FMax(a,b)
  %614 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %610)  ; FMax(a,b)
  %615 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %611)  ; FMax(a,b)
  %616 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %612)  ; FMax(a,b)
  %617 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %609)  ; FMin(a,b)
  %618 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %610)  ; FMin(a,b)
  %619 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %611)  ; FMin(a,b)
  %620 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %612)  ; FMin(a,b)
  %621 = fmul fast float %617, 0x3F847AE140000000
  %622 = fmul fast float %618, 0x3F847AE140000000
  %623 = fmul fast float %619, 0x3F847AE140000000
  %624 = fmul fast float %620, 0x3F847AE140000000
  %625 = fadd fast float %621, %613
  %626 = fadd fast float %622, %614
  %627 = fadd fast float %623, %615
  %628 = fadd fast float %624, %616
  br label %629

; <label>:629                                     ; preds = %629, %477
  %630 = phi i32 [ 0, %477 ], [ %650, %629 ]
  %631 = add i32 %501, 8
  %632 = shl i32 %630, 1
  %633 = add i32 %631, %632
  %634 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %633, i32 undef)  ; BufferLoad(srv,index,wot)
  %635 = extractvalue %dx.types.ResRet.f32 %634, 0
  %636 = extractvalue %dx.types.ResRet.f32 %634, 1
  %637 = extractvalue %dx.types.ResRet.f32 %634, 2
  %638 = extractvalue %dx.types.ResRet.f32 %634, 3
  %639 = add i32 %501, 9
  %640 = add i32 %639, %632
  %641 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %640, i32 undef)  ; BufferLoad(srv,index,wot)
  %642 = extractvalue %dx.types.ResRet.f32 %641, 0
  %643 = extractvalue %dx.types.ResRet.f32 %641, 1
  %644 = extractvalue %dx.types.ResRet.f32 %641, 2
  %645 = extractvalue %dx.types.ResRet.f32 %641, 3
  %646 = call float @dx.op.dot4.f32(i32 56, float %635, float %636, float %637, float %638, float %605, float %606, float %607, float %608)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %647 = call float @dx.op.dot4.f32(i32 56, float %642, float %643, float %644, float %645, float %625, float %626, float %627, float %628)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %648 = fadd fast float %647, %646
  %649 = getelementptr inbounds [8 x float], [8 x float]* %29, i32 0, i32 %630
  store float %648, float* %649, align 4, !tbaa !63, !noalias !57
  %650 = add nuw nsw i32 %630, 1
  %651 = icmp eq i32 %650, 8
  br i1 %651, label %652, label %629

; <label>:652                                     ; preds = %629
  %653 = call float @dx.op.unary.f32(i32 6, float %491)  ; FAbs(value)
  %654 = fsub fast float 1.000000e+00, %653
  %655 = call float @dx.op.unary.f32(i32 7, float %654)  ; Saturate(value)
  %656 = fmul fast float %500, %655
  %657 = add i32 %501, 24
  %658 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %657, i32 undef)  ; BufferLoad(srv,index,wot)
  %659 = extractvalue %dx.types.ResRet.f32 %658, 0
  %660 = extractvalue %dx.types.ResRet.f32 %658, 1
  %661 = extractvalue %dx.types.ResRet.f32 %658, 2
  %662 = extractvalue %dx.types.ResRet.f32 %658, 3
  %663 = add i32 %501, 25
  %664 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %663, i32 undef)  ; BufferLoad(srv,index,wot)
  %665 = extractvalue %dx.types.ResRet.f32 %664, 0
  %666 = extractvalue %dx.types.ResRet.f32 %664, 1
  %667 = extractvalue %dx.types.ResRet.f32 %664, 2
  %668 = extractvalue %dx.types.ResRet.f32 %664, 3
  %669 = getelementptr inbounds [8 x float], [8 x float]* %29, i32 0, i32 0
  %670 = load float, float* %669, align 4, !tbaa !63, !noalias !57
  %671 = fadd fast float %670, %659
  %672 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %671)  ; FMax(a,b)
  %673 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %671)  ; FMin(a,b)
  %674 = fmul fast float %673, 0x3F847AE140000000
  %675 = fadd fast float %674, %672
  store float %675, float* %669, align 4, !tbaa !63, !noalias !57
  %676 = getelementptr inbounds [8 x float], [8 x float]* %29, i32 0, i32 1
  %677 = load float, float* %676, align 4, !tbaa !63, !noalias !57
  %678 = fadd fast float %677, %660
  %679 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %678)  ; FMax(a,b)
  %680 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %678)  ; FMin(a,b)
  %681 = fmul fast float %680, 0x3F847AE140000000
  %682 = fadd fast float %681, %679
  store float %682, float* %676, align 4, !tbaa !63, !noalias !57
  %683 = getelementptr inbounds [8 x float], [8 x float]* %29, i32 0, i32 2
  %684 = load float, float* %683, align 4, !tbaa !63, !noalias !57
  %685 = fadd fast float %684, %661
  %686 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %685)  ; FMax(a,b)
  %687 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %685)  ; FMin(a,b)
  %688 = fmul fast float %687, 0x3F847AE140000000
  %689 = fadd fast float %688, %686
  store float %689, float* %683, align 4, !tbaa !63, !noalias !57
  %690 = getelementptr inbounds [8 x float], [8 x float]* %29, i32 0, i32 3
  %691 = load float, float* %690, align 4, !tbaa !63, !noalias !57
  %692 = fadd fast float %691, %662
  %693 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %692)  ; FMax(a,b)
  %694 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %692)  ; FMin(a,b)
  %695 = fmul fast float %694, 0x3F847AE140000000
  %696 = fadd fast float %695, %693
  store float %696, float* %690, align 4, !tbaa !63, !noalias !57
  %697 = getelementptr inbounds [8 x float], [8 x float]* %29, i32 0, i32 4
  %698 = load float, float* %697, align 4, !tbaa !63, !noalias !57
  %699 = fadd fast float %698, %665
  %700 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %699)  ; FMax(a,b)
  %701 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %699)  ; FMin(a,b)
  %702 = fmul fast float %701, 0x3F847AE140000000
  %703 = fadd fast float %702, %700
  store float %703, float* %697, align 4, !tbaa !63, !noalias !57
  %704 = getelementptr inbounds [8 x float], [8 x float]* %29, i32 0, i32 5
  %705 = load float, float* %704, align 4, !tbaa !63, !noalias !57
  %706 = fadd fast float %705, %666
  %707 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %706)  ; FMax(a,b)
  %708 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %706)  ; FMin(a,b)
  %709 = fmul fast float %708, 0x3F847AE140000000
  %710 = fadd fast float %709, %707
  store float %710, float* %704, align 4, !tbaa !63, !noalias !57
  %711 = getelementptr inbounds [8 x float], [8 x float]* %29, i32 0, i32 6
  %712 = load float, float* %711, align 4, !tbaa !63, !noalias !57
  %713 = fadd fast float %712, %667
  %714 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %713)  ; FMax(a,b)
  %715 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %713)  ; FMin(a,b)
  %716 = fmul fast float %715, 0x3F847AE140000000
  %717 = fadd fast float %716, %714
  store float %717, float* %711, align 4, !tbaa !63, !noalias !57
  %718 = getelementptr inbounds [8 x float], [8 x float]* %29, i32 0, i32 7
  %719 = load float, float* %718, align 4, !tbaa !63, !noalias !57
  %720 = fadd fast float %719, %668
  %721 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %720)  ; FMax(a,b)
  %722 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %720)  ; FMin(a,b)
  %723 = fmul fast float %722, 0x3F847AE140000000
  %724 = fadd fast float %723, %721
  store float %724, float* %718, align 4, !tbaa !63, !noalias !57
  %725 = add i32 %501, 26
  %726 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %725, i32 undef)  ; BufferLoad(srv,index,wot)
  %727 = extractvalue %dx.types.ResRet.f32 %726, 0
  %728 = extractvalue %dx.types.ResRet.f32 %726, 1
  %729 = extractvalue %dx.types.ResRet.f32 %726, 2
  %730 = extractvalue %dx.types.ResRet.f32 %726, 3
  %731 = add i32 %501, 27
  %732 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %731, i32 undef)  ; BufferLoad(srv,index,wot)
  %733 = extractvalue %dx.types.ResRet.f32 %732, 0
  %734 = extractvalue %dx.types.ResRet.f32 %732, 1
  %735 = extractvalue %dx.types.ResRet.f32 %732, 2
  %736 = extractvalue %dx.types.ResRet.f32 %732, 3
  %737 = fmul fast float %675, %727
  %738 = fmul fast float %682, %728
  %739 = fadd fast float %738, %737
  %740 = fmul fast float %689, %729
  %741 = fadd fast float %739, %740
  %742 = fmul fast float %696, %730
  %743 = fadd fast float %741, %742
  %744 = fmul fast float %703, %733
  %745 = fadd fast float %743, %744
  %746 = fmul fast float %710, %734
  %747 = fadd fast float %745, %746
  %748 = fmul fast float %717, %735
  %749 = fadd fast float %747, %748
  %750 = fmul fast float %724, %736
  %751 = fadd fast float %749, %750
  %752 = add i32 %501, 28
  %753 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %752, i32 undef)  ; BufferLoad(srv,index,wot)
  %754 = extractvalue %dx.types.ResRet.f32 %753, 0
  %755 = fadd fast float %751, %754
  %756 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %755)  ; FMax(a,b)
  %757 = fmul fast float %656, %756
  %758 = call float @dx.op.unary.f32(i32 7, float %757)  ; Saturate(value)
  %759 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 %480
  store float %758, float* %759, align 4, !tbaa !63, !noalias !57
  %760 = fadd fast float %758, %479
  %761 = add nuw nsw i32 %480, 1
  %762 = icmp eq i32 %761, 8
  br i1 %762, label %766, label %763

; <label>:763                                     ; preds = %652
  %764 = getelementptr inbounds [8 x i32], [8 x i32]* %30, i32 0, i32 %761
  %765 = load i32, i32* %764, align 4, !tbaa !53, !noalias !57
  br label %477

; <label>:766                                     ; preds = %652
  %767 = fcmp fast ugt float %760, 0x3EE4F8B580000000
  br i1 %767, label %768, label %907, !dx.controlflow.hints !65

; <label>:768                                     ; preds = %766
  %769 = fcmp fast ogt float %760, 0x3EE4F8B580000000
  %770 = fdiv fast float 1.000000e+00, %760
  %771 = select i1 %769, float %770, float 1.000000e+00
  %772 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 0
  %773 = load float, float* %772, align 4, !tbaa !63, !noalias !57
  %774 = fmul fast float %773, %771
  store float %774, float* %772, align 4, !tbaa !63, !noalias !57
  %775 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 1
  %776 = load float, float* %775, align 4, !tbaa !63, !noalias !57
  %777 = fmul fast float %776, %771
  store float %777, float* %775, align 4, !tbaa !63, !noalias !57
  %778 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 2
  %779 = load float, float* %778, align 4, !tbaa !63, !noalias !57
  %780 = fmul fast float %779, %771
  store float %780, float* %778, align 4, !tbaa !63, !noalias !57
  %781 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 3
  %782 = load float, float* %781, align 4, !tbaa !63, !noalias !57
  %783 = fmul fast float %782, %771
  store float %783, float* %781, align 4, !tbaa !63, !noalias !57
  %784 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 4
  %785 = load float, float* %784, align 4, !tbaa !63, !noalias !57
  %786 = fmul fast float %785, %771
  store float %786, float* %784, align 4, !tbaa !63, !noalias !57
  %787 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 5
  %788 = load float, float* %787, align 4, !tbaa !63, !noalias !57
  %789 = fmul fast float %788, %771
  store float %789, float* %787, align 4, !tbaa !63, !noalias !57
  %790 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 6
  %791 = load float, float* %790, align 4, !tbaa !63, !noalias !57
  %792 = fmul fast float %791, %771
  store float %792, float* %790, align 4, !tbaa !63, !noalias !57
  %793 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 7
  %794 = load float, float* %793, align 4, !tbaa !63, !noalias !57
  %795 = fmul fast float %794, %771
  store float %795, float* %793, align 4, !tbaa !63, !noalias !57
  br label %796

; <label>:796                                     ; preds = %901, %768
  %797 = phi float [ %905, %901 ], [ %774, %768 ]
  %798 = phi i32 [ %903, %901 ], [ %405, %768 ]
  %799 = phi float [ %880, %901 ], [ 0.000000e+00, %768 ]
  %800 = phi float [ %878, %901 ], [ 0.000000e+00, %768 ]
  %801 = phi float [ %876, %901 ], [ 0.000000e+00, %768 ]
  %802 = phi float [ %872, %901 ], [ 0.000000e+00, %768 ]
  %803 = phi float [ %889, %901 ], [ 0.000000e+00, %768 ]
  %804 = phi float [ %887, %901 ], [ 0.000000e+00, %768 ]
  %805 = phi float [ %885, %901 ], [ 0.000000e+00, %768 ]
  %806 = phi float [ %882, %901 ], [ 0.000000e+00, %768 ]
  %807 = phi float [ %898, %901 ], [ 0.000000e+00, %768 ]
  %808 = phi float [ %896, %901 ], [ 0.000000e+00, %768 ]
  %809 = phi float [ %894, %901 ], [ 0.000000e+00, %768 ]
  %810 = phi float [ %891, %901 ], [ 0.000000e+00, %768 ]
  %811 = phi i32 [ %899, %901 ], [ 0, %768 ]
  %812 = shl i32 %798, 5
  %813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %812, i32 undef)  ; BufferLoad(srv,index,wot)
  %814 = extractvalue %dx.types.ResRet.i32 %813, 0
  %815 = extractvalue %dx.types.ResRet.i32 %813, 1
  %816 = extractvalue %dx.types.ResRet.i32 %813, 3
  %817 = or i32 %812, 16
  %818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %817, i32 undef)  ; BufferLoad(srv,index,wot)
  %819 = extractvalue %dx.types.ResRet.i32 %818, 1
  %820 = shl i32 %814, 4
  %821 = and i32 %820, 32752
  %822 = call float @dx.op.legacyF16ToF32(i32 131, i32 %821)  ; LegacyF16ToF32(value)
  %823 = lshr i32 %814, 7
  %824 = and i32 %823, 32752
  %825 = call float @dx.op.legacyF16ToF32(i32 131, i32 %824)  ; LegacyF16ToF32(value)
  %826 = lshr i32 %814, 22
  %827 = shl nuw nsw i32 %826, 5
  %828 = call float @dx.op.legacyF16ToF32(i32 131, i32 %827)  ; LegacyF16ToF32(value)
  %829 = and i32 %815, 255
  %830 = uitofp i32 %829 to float
  %831 = fmul fast float %830, 0x3F80204080000000
  %832 = fadd fast float %831, -1.000000e+00
  %833 = lshr i32 %815, 8
  %834 = and i32 %833, 255
  %835 = uitofp i32 %834 to float
  %836 = fmul fast float %835, 0x3F80204080000000
  %837 = fadd fast float %836, -1.000000e+00
  %838 = lshr i32 %815, 16
  %839 = and i32 %838, 255
  %840 = uitofp i32 %839 to float
  %841 = fmul fast float %840, 0x3F80204080000000
  %842 = fadd fast float %841, -1.000000e+00
  %843 = and i32 %816, 255
  %844 = uitofp i32 %843 to float
  %845 = fmul fast float %844, 0x3F80204080000000
  %846 = fadd fast float %845, -1.000000e+00
  %847 = lshr i32 %816, 8
  %848 = and i32 %847, 255
  %849 = uitofp i32 %848 to float
  %850 = fmul fast float %849, 0x3F80204080000000
  %851 = fadd fast float %850, -1.000000e+00
  %852 = lshr i32 %816, 16
  %853 = and i32 %852, 255
  %854 = uitofp i32 %853 to float
  %855 = fmul fast float %854, 0x3F80204080000000
  %856 = fadd fast float %855, -1.000000e+00
  %857 = and i32 %819, 255
  %858 = uitofp i32 %857 to float
  %859 = fmul fast float %858, 0x3F80204080000000
  %860 = fadd fast float %859, -1.000000e+00
  %861 = lshr i32 %819, 8
  %862 = and i32 %861, 255
  %863 = uitofp i32 %862 to float
  %864 = fmul fast float %863, 0x3F80204080000000
  %865 = fadd fast float %864, -1.000000e+00
  %866 = lshr i32 %819, 16
  %867 = and i32 %866, 255
  %868 = uitofp i32 %867 to float
  %869 = fmul fast float %868, 0x3F80204080000000
  %870 = fadd fast float %869, -1.000000e+00
  %871 = fmul fast float %822, %797
  %872 = fadd fast float %871, %802
  %873 = fmul fast float %797, 0x3FFBB67AE0000000
  %874 = fmul fast float %873, %822
  %875 = fmul fast float %874, %832
  %876 = fadd fast float %875, %801
  %877 = fmul fast float %874, %837
  %878 = fadd fast float %877, %800
  %879 = fmul fast float %874, %842
  %880 = fadd fast float %879, %799
  %881 = fmul fast float %825, %797
  %882 = fadd fast float %881, %806
  %883 = fmul fast float %873, %825
  %884 = fmul fast float %883, %846
  %885 = fadd fast float %884, %805
  %886 = fmul fast float %883, %851
  %887 = fadd fast float %886, %804
  %888 = fmul fast float %883, %856
  %889 = fadd fast float %888, %803
  %890 = fmul fast float %828, %797
  %891 = fadd fast float %890, %810
  %892 = fmul fast float %873, %828
  %893 = fmul fast float %892, %860
  %894 = fadd fast float %893, %809
  %895 = fmul fast float %892, %865
  %896 = fadd fast float %895, %808
  %897 = fmul fast float %892, %870
  %898 = fadd fast float %897, %807
  %899 = add nuw nsw i32 %811, 1
  %900 = icmp eq i32 %899, 8
  br i1 %900, label %906, label %901

; <label>:901                                     ; preds = %796
  %902 = getelementptr inbounds [8 x i32], [8 x i32]* %30, i32 0, i32 %899
  %903 = load i32, i32* %902, align 4, !tbaa !53, !noalias !57
  %904 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 %899
  %905 = load float, float* %904, align 4, !tbaa !63, !noalias !57
  br label %796

; <label>:906                                     ; preds = %796
  br label %907

; <label>:907                                     ; preds = %906, %766, %333, %314, %189
  %908 = phi float [ 0.000000e+00, %189 ], [ 0.000000e+00, %314 ], [ 0.000000e+00, %333 ], [ 0.000000e+00, %766 ], [ %880, %906 ]
  %909 = phi float [ 0.000000e+00, %189 ], [ 0.000000e+00, %314 ], [ 0.000000e+00, %333 ], [ 0.000000e+00, %766 ], [ %878, %906 ]
  %910 = phi float [ 0.000000e+00, %189 ], [ 0.000000e+00, %314 ], [ 0.000000e+00, %333 ], [ 0.000000e+00, %766 ], [ %876, %906 ]
  %911 = phi float [ 0.000000e+00, %189 ], [ 0.000000e+00, %314 ], [ 0.000000e+00, %333 ], [ 0.000000e+00, %766 ], [ %872, %906 ]
  %912 = phi float [ 0.000000e+00, %189 ], [ 0.000000e+00, %314 ], [ 0.000000e+00, %333 ], [ 0.000000e+00, %766 ], [ %889, %906 ]
  %913 = phi float [ 0.000000e+00, %189 ], [ 0.000000e+00, %314 ], [ 0.000000e+00, %333 ], [ 0.000000e+00, %766 ], [ %887, %906 ]
  %914 = phi float [ 0.000000e+00, %189 ], [ 0.000000e+00, %314 ], [ 0.000000e+00, %333 ], [ 0.000000e+00, %766 ], [ %885, %906 ]
  %915 = phi float [ 0.000000e+00, %189 ], [ 0.000000e+00, %314 ], [ 0.000000e+00, %333 ], [ 0.000000e+00, %766 ], [ %882, %906 ]
  %916 = phi float [ 0.000000e+00, %189 ], [ 0.000000e+00, %314 ], [ 0.000000e+00, %333 ], [ 0.000000e+00, %766 ], [ %898, %906 ]
  %917 = phi float [ 0.000000e+00, %189 ], [ 0.000000e+00, %314 ], [ 0.000000e+00, %333 ], [ 0.000000e+00, %766 ], [ %896, %906 ]
  %918 = phi float [ 0.000000e+00, %189 ], [ 0.000000e+00, %314 ], [ 0.000000e+00, %333 ], [ 0.000000e+00, %766 ], [ %894, %906 ]
  %919 = phi float [ 0.000000e+00, %189 ], [ 0.000000e+00, %314 ], [ 0.000000e+00, %333 ], [ 0.000000e+00, %766 ], [ %891, %906 ]
  %920 = phi i1 [ false, %189 ], [ false, %314 ], [ false, %333 ], [ false, %766 ], [ true, %906 ]
  %921 = phi float [ 1.000000e+00, %189 ], [ 1.000000e+00, %314 ], [ 1.000000e+00, %333 ], [ 0.000000e+00, %766 ], [ 1.000000e+00, %906 ]
  br i1 %920, label %961, label %922, !dx.controlflow.hints !66

; <label>:922                                     ; preds = %907
  %923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %924 = extractvalue %dx.types.ResRet.i32 %923, 2
  %925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %926 = extractvalue %dx.types.ResRet.i32 %925, 1
  %927 = extractvalue %dx.types.ResRet.i32 %925, 2
  %928 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %929 = extractvalue %dx.types.ResRet.i32 %928, 0
  %930 = extractvalue %dx.types.ResRet.i32 %928, 1
  %931 = extractvalue %dx.types.ResRet.i32 %928, 2
  %932 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %933 = extractvalue %dx.types.ResRet.i32 %932, 0
  %934 = extractvalue %dx.types.ResRet.i32 %932, 1
  %935 = and i32 %933, 65535
  %936 = call float @dx.op.legacyF16ToF32(i32 131, i32 %935)  ; LegacyF16ToF32(value)
  %937 = lshr i32 %933, 16
  %938 = call float @dx.op.legacyF16ToF32(i32 131, i32 %937)  ; LegacyF16ToF32(value)
  %939 = and i32 %934, 65535
  %940 = call float @dx.op.legacyF16ToF32(i32 131, i32 %939)  ; LegacyF16ToF32(value)
  %941 = lshr i32 %934, 16
  %942 = call float @dx.op.legacyF16ToF32(i32 131, i32 %941)  ; LegacyF16ToF32(value)
  %943 = lshr i32 %929, 16
  %944 = call float @dx.op.legacyF16ToF32(i32 131, i32 %943)  ; LegacyF16ToF32(value)
  %945 = and i32 %930, 65535
  %946 = call float @dx.op.legacyF16ToF32(i32 131, i32 %945)  ; LegacyF16ToF32(value)
  %947 = lshr i32 %930, 16
  %948 = call float @dx.op.legacyF16ToF32(i32 131, i32 %947)  ; LegacyF16ToF32(value)
  %949 = and i32 %931, 65535
  %950 = call float @dx.op.legacyF16ToF32(i32 131, i32 %949)  ; LegacyF16ToF32(value)
  %951 = and i32 %926, 65535
  %952 = call float @dx.op.legacyF16ToF32(i32 131, i32 %951)  ; LegacyF16ToF32(value)
  %953 = lshr i32 %926, 16
  %954 = call float @dx.op.legacyF16ToF32(i32 131, i32 %953)  ; LegacyF16ToF32(value)
  %955 = and i32 %927, 65535
  %956 = call float @dx.op.legacyF16ToF32(i32 131, i32 %955)  ; LegacyF16ToF32(value)
  %957 = lshr i32 %927, 16
  %958 = call float @dx.op.legacyF16ToF32(i32 131, i32 %957)  ; LegacyF16ToF32(value)
  %959 = and i32 %924, 65535
  %960 = call float @dx.op.legacyF16ToF32(i32 131, i32 %959)  ; LegacyF16ToF32(value)
  br label %961

; <label>:961                                     ; preds = %922, %907
  %962 = phi float [ %912, %907 ], [ %950, %922 ]
  %963 = phi float [ %913, %907 ], [ %948, %922 ]
  %964 = phi float [ %914, %907 ], [ %946, %922 ]
  %965 = phi float [ %915, %907 ], [ %944, %922 ]
  %966 = phi float [ %916, %907 ], [ %958, %922 ]
  %967 = phi float [ %917, %907 ], [ %956, %922 ]
  %968 = phi float [ %918, %907 ], [ %954, %922 ]
  %969 = phi float [ %919, %907 ], [ %952, %922 ]
  %970 = phi float [ %908, %907 ], [ %942, %922 ]
  %971 = phi float [ %909, %907 ], [ %940, %922 ]
  %972 = phi float [ %910, %907 ], [ %938, %922 ]
  %973 = phi float [ %911, %907 ], [ %936, %922 ]
  %974 = phi float [ %921, %907 ], [ %960, %922 ]
  %975 = select i1 %920, float %974, float 3.125000e-02
  %976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %138, i32 0)  ; BufferLoad(srv,index,wot)
  %977 = extractvalue %dx.types.ResRet.i32 %976, 0
  %978 = icmp eq i32 %977, 262144
  br i1 %978, label %995, label %979, !dx.controlflow.hints !67

; <label>:979                                     ; preds = %961
  %980 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %138, i32 0)  ; BufferLoad(srv,index,wot)
  %981 = extractvalue %dx.types.ResRet.i32 %980, 0
  %982 = and i32 %55, 31
  %983 = shl i32 1, %982
  %984 = add i32 %983, -1
  %985 = and i32 %984, %981
  %986 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %985)  ; Countbits(value)
  %987 = and i32 %48, 31
  %988 = shl i32 1, %987
  %989 = shl i32 %988, %987
  %990 = shl i32 %28, %987
  %991 = mul i32 %989, %986
  %992 = add i32 %977, %27
  %993 = add i32 %992, %990
  %994 = add i32 %993, %991
  br label %995

; <label>:995                                     ; preds = %979, %961
  %996 = phi i32 [ %994, %979 ], [ -1, %961 ]
  %997 = icmp eq i32 %996, -1
  br i1 %997, label %1015, label %998, !dx.controlflow.hints !68

; <label>:998                                     ; preds = %995
  %999 = fmul fast float %973, 0x3FFBB67AE0000000
  %1000 = fadd fast float %999, %972
  %1001 = fadd fast float %999, %971
  %1002 = fadd fast float %999, %970
  %1003 = fmul fast float %965, 0x3FFBB67AE0000000
  %1004 = fadd fast float %1003, %964
  %1005 = fadd fast float %1003, %963
  %1006 = fadd fast float %1003, %962
  %1007 = fmul fast float %969, 0x3FFBB67AE0000000
  %1008 = fadd fast float %1007, %968
  %1009 = fadd fast float %1007, %967
  %1010 = fadd fast float %1007, %966
  %1011 = shl i32 %996, 2
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %2, i32 %1011, i32 undef, float %973, float %965, float %969, float %973, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1012 = or i32 %1011, 1
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %2, i32 %1012, i32 undef, float %1000, float %1004, float %1008, float %1000, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1013 = or i32 %1011, 2
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %2, i32 %1013, i32 undef, float %1001, float %1005, float %1009, float %1001, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1014 = or i32 %1011, 3
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %2, i32 %1014, i32 undef, float %1002, float %1006, float %1010, float %1002, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %996, i32 undef, float %975, float %975, float %975, float %975, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1015

; <label>:1015                                    ; preds = %998, %995, %132, %44, %35
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
!40 = !{void ()* @cs_del_sh_sample_lightgrid_1_lowres, !"cs_del_sh_sample_lightgrid_1_lowres", null, !4, !41}
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

