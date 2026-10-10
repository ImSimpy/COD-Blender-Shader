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
; shader hash: 9d628bf1b8d1b70a0f16d939a76e1ddf
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

define void @cs_del_sh_sample_lightgrid_1() {
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
  br i1 %34, label %35, label %43, !dx.controlflow.hints !43

; <label>:35                                      ; preds = %0
  %36 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %37 = extractvalue %dx.types.CBufRet.i32 %36, 2
  %38 = extractvalue %dx.types.CBufRet.i32 %36, 0
  %39 = shl i32 %38, 2
  %40 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %37, i32 %39)  ; BufferLoad(srv,index,wot)
  %41 = extractvalue %dx.types.ResRet.i32 %40, 0
  %42 = icmp ult i32 %26, %41
  br i1 %42, label %45, label %1386, !dx.controlflow.hints !44

; <label>:43                                      ; preds = %0
  %44 = icmp ult i32 %26, %33
  br i1 %44, label %45, label %1386, !dx.controlflow.hints !45

; <label>:45                                      ; preds = %43, %35
  %46 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %47 = extractvalue %dx.types.CBufRet.i32 %46, 2
  %48 = add i32 %47, 3
  %49 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 %48)  ; CBufferLoadLegacy(handle,regIndex)
  %50 = extractvalue %dx.types.CBufRet.i32 %49, 1
  %51 = extractvalue %dx.types.CBufRet.i32 %49, 2
  %52 = extractvalue %dx.types.CBufRet.i32 %49, 3
  %53 = mul i32 %52, 20
  %54 = extractvalue %dx.types.CBufRet.i32 %46, 0
  %55 = mul i32 %54, %50
  %56 = add i32 %55, %53
  %57 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %47, i32 0)  ; BufferLoad(srv,index,wot)
  %58 = extractvalue %dx.types.ResRet.i32 %57, 0
  %59 = add i32 %58, 63
  %60 = lshr i32 %59, 6
  %61 = icmp ugt i32 %59, 127
  br i1 %61, label %62, label %82

; <label>:62                                      ; preds = %45
  br label %63

; <label>:63                                      ; preds = %63, %62
  %64 = phi i32 [ %75, %63 ], [ 0, %62 ]
  %65 = phi i32 [ %76, %63 ], [ 0, %62 ]
  %66 = phi i32 [ %77, %63 ], [ %60, %62 ]
  %67 = sub i32 %66, %64
  %68 = lshr i32 %67, 1
  %69 = add i32 %68, %64
  %70 = add i32 %56, -1
  %71 = add i32 %70, %69
  %72 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %71, i32 0)  ; BufferLoad(srv,index,wot)
  %73 = extractvalue %dx.types.ResRet.i32 %72, 0
  %74 = icmp ult i32 %26, %73
  %75 = select i1 %74, i32 %64, i32 %69
  %76 = select i1 %74, i32 %65, i32 %73
  %77 = select i1 %74, i32 %69, i32 %66
  %78 = sub i32 %66, %69
  %79 = select i1 %74, i32 %68, i32 %78
  %80 = icmp ugt i32 %79, 1
  br i1 %80, label %63, label %81

; <label>:81                                      ; preds = %63
  br label %82

; <label>:82                                      ; preds = %81, %45
  %83 = phi i32 [ 0, %45 ], [ %75, %81 ]
  %84 = phi i32 [ 0, %45 ], [ %76, %81 ]
  %85 = phi i32 [ %60, %45 ], [ %77, %81 ]
  %86 = add i32 %85, -1
  %87 = icmp eq i32 %83, 0
  %88 = select i1 %87, i32 0, i32 %84
  %89 = add i32 %86, %56
  %90 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %89, i32 0)  ; BufferLoad(srv,index,wot)
  %91 = extractvalue %dx.types.ResRet.i32 %90, 0
  %92 = extractvalue %dx.types.ResRet.i32 %90, 1
  %93 = sub i32 %26, %88
  %94 = and i32 %91, %92
  %95 = icmp eq i32 %94, -1
  br i1 %95, label %131, label %96, !dx.controlflow.hints !46

; <label>:96                                      ; preds = %82
  %97 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %91)  ; Countbits(value)
  %98 = icmp uge i32 %93, %97
  %99 = select i1 %98, i32 %92, i32 %91
  %100 = select i1 %98, i32 %97, i32 0
  %101 = sub i32 %93, %100
  %102 = select i1 %98, i32 32, i32 0
  %103 = and i32 %101, 31
  %104 = shl i32 -1, %103
  %105 = xor i32 %104, -1
  %106 = and i32 %99, %105
  %107 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %106)  ; Countbits(value)
  %108 = add i32 %101, 1
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %128, label %110, !dx.controlflow.hints !47

; <label>:110                                     ; preds = %96
  %111 = and i32 %104, %99
  %112 = icmp eq i32 %101, %107
  br i1 %112, label %125, label %113

; <label>:113                                     ; preds = %110
  %114 = sub i32 %101, %107
  br label %115

; <label>:115                                     ; preds = %115, %113
  %116 = phi i32 [ %122, %115 ], [ %114, %113 ]
  %117 = phi i32 [ %121, %115 ], [ %111, %113 ]
  %118 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %117)  ; FirstbitLo(value)
  %119 = and i32 %118, 31
  %120 = shl i32 1, %119
  %121 = xor i32 %120, %117
  %122 = add i32 %116, -1
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %115

; <label>:124                                     ; preds = %115
  br label %125

; <label>:125                                     ; preds = %124, %110
  %126 = phi i32 [ %111, %110 ], [ %121, %124 ]
  %127 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %126)  ; FirstbitLo(value)
  br label %128

; <label>:128                                     ; preds = %125, %96
  %129 = phi i32 [ %127, %125 ], [ %101, %96 ]
  %130 = add i32 %129, %102
  br label %131

; <label>:131                                     ; preds = %128, %82
  %132 = phi i32 [ %130, %128 ], [ %93, %82 ]
  %133 = shl i32 %86, 6
  %134 = add i32 %132, %133
  %135 = icmp ult i32 %134, %58
  br i1 %135, label %136, label %1386, !dx.controlflow.hints !48

; <label>:136                                     ; preds = %131
  %137 = add i32 %134, %51
  %138 = shl i32 %137, 5
  %139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %138, i32 undef)  ; BufferLoad(srv,index,wot)
  %140 = extractvalue %dx.types.ResRet.i32 %139, 0
  %141 = extractvalue %dx.types.ResRet.i32 %139, 1
  %142 = extractvalue %dx.types.ResRet.i32 %139, 2
  %143 = extractvalue %dx.types.ResRet.i32 %139, 3
  %144 = bitcast i32 %140 to float
  %145 = bitcast i32 %141 to float
  %146 = bitcast i32 %142 to float
  %147 = and i32 %143, 536870912
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %188, label %149, !dx.controlflow.hints !49

; <label>:149                                     ; preds = %136
  %150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %151 = extractvalue %dx.types.CBufRet.f32 %150, 2
  %152 = extractvalue %dx.types.CBufRet.f32 %150, 3
  %153 = fmul fast float %151, %144
  %154 = fmul fast float %152, %145
  %155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %156 = extractvalue %dx.types.CBufRet.f32 %155, 0
  %157 = extractvalue %dx.types.CBufRet.f32 %155, 1
  %158 = fadd fast float %153, %156
  %159 = fadd fast float %154, %157
  %160 = call float @dx.op.unary.f32(i32 7, float %158)  ; Saturate(value)
  %161 = call float @dx.op.unary.f32(i32 7, float %159)  ; Saturate(value)
  %162 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %22, float %160, float %161, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %163 = extractvalue %dx.types.ResRet.f32 %162, 0
  %164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %165 = extractvalue %dx.types.CBufRet.f32 %164, 0
  %166 = fmul fast float %165, %163
  %167 = fsub fast float %158, %160
  %168 = fsub fast float %159, %161
  %169 = extractvalue %dx.types.CBufRet.f32 %150, 0
  %170 = extractvalue %dx.types.CBufRet.f32 %150, 1
  %171 = fmul fast float %169, %167
  %172 = fmul fast float %170, %168
  %173 = fmul fast float %171, %171
  %174 = fmul fast float %172, %172
  %175 = fadd fast float %173, %174
  %176 = call float @dx.op.unary.f32(i32 24, float %175)  ; Sqrt(value)
  %177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %178 = extractvalue %dx.types.CBufRet.f32 %177, 3
  %179 = fmul fast float %178, %176
  %180 = call float @dx.op.unary.f32(i32 7, float %179)  ; Saturate(value)
  %181 = extractvalue %dx.types.CBufRet.f32 %177, 2
  %182 = fsub fast float %181, %166
  %183 = fmul fast float %182, %180
  %184 = extractvalue %dx.types.CBufRet.f32 %164, 1
  %185 = fadd fast float %166, %146
  %186 = fadd fast float %185, %184
  %187 = fadd fast float %186, %183
  br label %188

; <label>:188                                     ; preds = %149, %136
  %189 = phi float [ %187, %149 ], [ %146, %136 ]
  %190 = and i32 %143, 268435456
  %191 = icmp eq i32 %190, 0
  %192 = or i32 %138, 16
  %193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %192, i32 undef)  ; BufferLoad(srv,index,wot)
  %194 = extractvalue %dx.types.ResRet.i32 %193, 0
  %195 = extractvalue %dx.types.ResRet.i32 %193, 1
  %196 = extractvalue %dx.types.ResRet.i32 %193, 2
  %197 = extractvalue %dx.types.ResRet.i32 %193, 3
  %198 = and i32 %194, 65535
  %199 = call float @dx.op.legacyF16ToF32(i32 131, i32 %198)  ; LegacyF16ToF32(value)
  %200 = lshr i32 %194, 16
  %201 = call float @dx.op.legacyF16ToF32(i32 131, i32 %200)  ; LegacyF16ToF32(value)
  %202 = and i32 %195, 1023
  %203 = uitofp i32 %202 to float
  %204 = lshr i32 %195, 10
  %205 = and i32 %204, 1023
  %206 = uitofp i32 %205 to float
  %207 = lshr i32 %195, 20
  %208 = and i32 %207, 1023
  %209 = uitofp i32 %208 to float
  %210 = fmul fast float %203, 0x3F60040100000000
  %211 = fmul fast float %206, 0x3F60040100000000
  %212 = fmul fast float %209, 0x3F60040100000000
  %213 = fadd fast float %210, -1.000000e+00
  %214 = fadd fast float %211, -1.000000e+00
  %215 = fadd fast float %212, -1.000000e+00
  %216 = and i32 %196, 1023
  %217 = uitofp i32 %216 to float
  %218 = lshr i32 %196, 10
  %219 = and i32 %218, 1023
  %220 = uitofp i32 %219 to float
  %221 = lshr i32 %196, 20
  %222 = and i32 %221, 1023
  %223 = uitofp i32 %222 to float
  %224 = fmul fast float %217, 0x3F60040100000000
  %225 = fmul fast float %220, 0x3F60040100000000
  %226 = fmul fast float %223, 0x3F60040100000000
  %227 = fadd fast float %224, -1.000000e+00
  %228 = fadd fast float %225, -1.000000e+00
  %229 = fadd fast float %226, -1.000000e+00
  %230 = and i32 %197, 65535
  %231 = call float @dx.op.legacyF16ToF32(i32 131, i32 %230)  ; LegacyF16ToF32(value)
  %232 = lshr i32 %197, 16
  %233 = call float @dx.op.legacyF16ToF32(i32 131, i32 %232)  ; LegacyF16ToF32(value)
  %234 = call float @dx.op.unary.f32(i32 13, float %231)  ; Sin(value)
  %235 = call float @dx.op.unary.f32(i32 12, float %231)  ; Cos(value)
  %236 = fmul fast float %235, %213
  %237 = fmul fast float %235, %214
  %238 = fmul fast float %235, %215
  %239 = fmul fast float %234, %227
  %240 = fmul fast float %228, %234
  %241 = fmul fast float %229, %234
  %242 = fadd fast float %236, %239
  %243 = fadd fast float %237, %240
  %244 = fadd fast float %238, %241
  %245 = fmul fast float %242, %199
  %246 = fmul fast float %243, %199
  %247 = fmul fast float %244, %199
  %248 = fmul fast float %234, %213
  %249 = fmul fast float %214, %234
  %250 = fmul fast float %215, %234
  %251 = fmul fast float %235, %227
  %252 = fmul fast float %235, %228
  %253 = fmul fast float %235, %229
  %254 = fsub fast float %248, %251
  %255 = fsub fast float %249, %252
  %256 = fsub fast float %250, %253
  %257 = fmul fast float %254, %201
  %258 = fmul fast float %255, %201
  %259 = fmul fast float %256, %201
  %260 = uitofp i32 %27 to float
  %261 = uitofp i32 %28 to float
  %262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %263 = extractvalue %dx.types.CBufRet.f32 %262, 1
  %264 = fdiv fast float %260, %263
  %265 = fdiv fast float %261, %263
  %266 = extractvalue %dx.types.CBufRet.f32 %262, 2
  %267 = fadd fast float %266, %264
  %268 = fadd fast float %266, %265
  %269 = fmul fast float %267, %245
  %270 = fmul fast float %267, %246
  %271 = fmul fast float %267, %247
  %272 = fmul fast float %268, %257
  %273 = fmul fast float %268, %258
  %274 = fmul fast float %268, %259
  %275 = fadd fast float %272, %269
  %276 = fmul fast float %275, 2.000000e+00
  %277 = fsub fast float %144, %245
  %278 = fsub fast float %277, %257
  %279 = fadd fast float %278, %276
  %280 = fadd fast float %273, %270
  %281 = fmul fast float %280, 2.000000e+00
  %282 = fsub fast float %145, %246
  %283 = fsub fast float %282, %258
  %284 = fadd fast float %283, %281
  %285 = fadd fast float %274, %271
  %286 = fmul fast float %285, 2.000000e+00
  %287 = fsub fast float %189, %247
  %288 = fsub fast float %287, %259
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
  br i1 %316, label %1032, label %317, !dx.controlflow.hints !50

; <label>:317                                     ; preds = %188
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
  br i1 %335, label %1032, label %336, !dx.controlflow.hints !51

; <label>:336                                     ; preds = %317
  %337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %328, i32 8)  ; BufferLoad(srv,index,wot)
  %338 = extractvalue %dx.types.ResRet.i32 %337, 0
  %339 = sub i32 %326, %330
  %340 = add nsw i32 %339, %338
  %341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %342 = extractvalue %dx.types.ResRet.i32 %341, 0
  %343 = icmp eq i32 %342, -1
  br i1 %343, label %1032, label %344, !dx.controlflow.hints !52

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
  br i1 %770, label %771, label %1032, !dx.controlflow.hints !65

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

; <label>:799                                     ; preds = %1026, %771
  %800 = phi float [ %1030, %1026 ], [ %777, %771 ]
  %801 = phi i32 [ %1028, %1026 ], [ %408, %771 ]
  %802 = phi float [ %981, %1026 ], [ 0.000000e+00, %771 ]
  %803 = phi float [ %979, %1026 ], [ 0.000000e+00, %771 ]
  %804 = phi float [ %977, %1026 ], [ 0.000000e+00, %771 ]
  %805 = phi float [ %973, %1026 ], [ 0.000000e+00, %771 ]
  %806 = phi float [ %971, %1026 ], [ 0.000000e+00, %771 ]
  %807 = phi float [ %967, %1026 ], [ 0.000000e+00, %771 ]
  %808 = phi float [ %965, %1026 ], [ 0.000000e+00, %771 ]
  %809 = phi float [ %963, %1026 ], [ 0.000000e+00, %771 ]
  %810 = phi float [ %959, %1026 ], [ 0.000000e+00, %771 ]
  %811 = phi float [ %1002, %1026 ], [ 0.000000e+00, %771 ]
  %812 = phi float [ %1000, %1026 ], [ 0.000000e+00, %771 ]
  %813 = phi float [ %998, %1026 ], [ 0.000000e+00, %771 ]
  %814 = phi float [ %995, %1026 ], [ 0.000000e+00, %771 ]
  %815 = phi float [ %993, %1026 ], [ 0.000000e+00, %771 ]
  %816 = phi float [ %990, %1026 ], [ 0.000000e+00, %771 ]
  %817 = phi float [ %988, %1026 ], [ 0.000000e+00, %771 ]
  %818 = phi float [ %986, %1026 ], [ 0.000000e+00, %771 ]
  %819 = phi float [ %983, %1026 ], [ 0.000000e+00, %771 ]
  %820 = phi float [ %1023, %1026 ], [ 0.000000e+00, %771 ]
  %821 = phi float [ %1021, %1026 ], [ 0.000000e+00, %771 ]
  %822 = phi float [ %1019, %1026 ], [ 0.000000e+00, %771 ]
  %823 = phi float [ %1016, %1026 ], [ 0.000000e+00, %771 ]
  %824 = phi float [ %1014, %1026 ], [ 0.000000e+00, %771 ]
  %825 = phi float [ %1011, %1026 ], [ 0.000000e+00, %771 ]
  %826 = phi float [ %1009, %1026 ], [ 0.000000e+00, %771 ]
  %827 = phi float [ %1007, %1026 ], [ 0.000000e+00, %771 ]
  %828 = phi float [ %1004, %1026 ], [ 0.000000e+00, %771 ]
  %829 = phi i32 [ %1024, %1026 ], [ 0, %771 ]
  %830 = shl i32 %801, 5
  %831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %830, i32 undef)  ; BufferLoad(srv,index,wot)
  %832 = extractvalue %dx.types.ResRet.i32 %831, 0
  %833 = extractvalue %dx.types.ResRet.i32 %831, 1
  %834 = extractvalue %dx.types.ResRet.i32 %831, 2
  %835 = extractvalue %dx.types.ResRet.i32 %831, 3
  %836 = or i32 %830, 16
  %837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %836, i32 undef)  ; BufferLoad(srv,index,wot)
  %838 = extractvalue %dx.types.ResRet.i32 %837, 0
  %839 = extractvalue %dx.types.ResRet.i32 %837, 1
  %840 = extractvalue %dx.types.ResRet.i32 %837, 2
  %841 = shl i32 %832, 4
  %842 = and i32 %841, 32752
  %843 = call float @dx.op.legacyF16ToF32(i32 131, i32 %842)  ; LegacyF16ToF32(value)
  %844 = lshr i32 %832, 7
  %845 = and i32 %844, 32752
  %846 = call float @dx.op.legacyF16ToF32(i32 131, i32 %845)  ; LegacyF16ToF32(value)
  %847 = lshr i32 %832, 22
  %848 = shl nuw nsw i32 %847, 5
  %849 = call float @dx.op.legacyF16ToF32(i32 131, i32 %848)  ; LegacyF16ToF32(value)
  %850 = and i32 %833, 255
  %851 = uitofp i32 %850 to float
  %852 = fmul fast float %851, 0x3F80204080000000
  %853 = fadd fast float %852, -1.000000e+00
  %854 = lshr i32 %833, 8
  %855 = and i32 %854, 255
  %856 = uitofp i32 %855 to float
  %857 = fmul fast float %856, 0x3F80204080000000
  %858 = fadd fast float %857, -1.000000e+00
  %859 = lshr i32 %833, 16
  %860 = and i32 %859, 255
  %861 = uitofp i32 %860 to float
  %862 = fmul fast float %861, 0x3F80204080000000
  %863 = fadd fast float %862, -1.000000e+00
  %864 = lshr i32 %833, 24
  %865 = uitofp i32 %864 to float
  %866 = fmul fast float %865, 0x3F80204080000000
  %867 = fadd fast float %866, -1.000000e+00
  %868 = and i32 %834, 255
  %869 = uitofp i32 %868 to float
  %870 = fmul fast float %869, 0x3F80204080000000
  %871 = fadd fast float %870, -1.000000e+00
  %872 = lshr i32 %834, 8
  %873 = and i32 %872, 255
  %874 = uitofp i32 %873 to float
  %875 = fmul fast float %874, 0x3F80204080000000
  %876 = fadd fast float %875, -1.000000e+00
  %877 = lshr i32 %834, 16
  %878 = and i32 %877, 255
  %879 = uitofp i32 %878 to float
  %880 = fmul fast float %879, 0x3F80204080000000
  %881 = fadd fast float %880, -1.000000e+00
  %882 = lshr i32 %834, 24
  %883 = uitofp i32 %882 to float
  %884 = fmul fast float %883, 0x3F80204080000000
  %885 = fadd fast float %884, -1.000000e+00
  %886 = and i32 %835, 255
  %887 = uitofp i32 %886 to float
  %888 = fmul fast float %887, 0x3F80204080000000
  %889 = fadd fast float %888, -1.000000e+00
  %890 = lshr i32 %835, 8
  %891 = and i32 %890, 255
  %892 = uitofp i32 %891 to float
  %893 = fmul fast float %892, 0x3F80204080000000
  %894 = fadd fast float %893, -1.000000e+00
  %895 = lshr i32 %835, 16
  %896 = and i32 %895, 255
  %897 = uitofp i32 %896 to float
  %898 = fmul fast float %897, 0x3F80204080000000
  %899 = fadd fast float %898, -1.000000e+00
  %900 = lshr i32 %835, 24
  %901 = uitofp i32 %900 to float
  %902 = fmul fast float %901, 0x3F80204080000000
  %903 = fadd fast float %902, -1.000000e+00
  %904 = and i32 %838, 255
  %905 = uitofp i32 %904 to float
  %906 = fmul fast float %905, 0x3F80204080000000
  %907 = fadd fast float %906, -1.000000e+00
  %908 = lshr i32 %838, 8
  %909 = and i32 %908, 255
  %910 = uitofp i32 %909 to float
  %911 = fmul fast float %910, 0x3F80204080000000
  %912 = fadd fast float %911, -1.000000e+00
  %913 = lshr i32 %838, 16
  %914 = and i32 %913, 255
  %915 = uitofp i32 %914 to float
  %916 = fmul fast float %915, 0x3F80204080000000
  %917 = fadd fast float %916, -1.000000e+00
  %918 = lshr i32 %838, 24
  %919 = uitofp i32 %918 to float
  %920 = fmul fast float %919, 0x3F80204080000000
  %921 = fadd fast float %920, -1.000000e+00
  %922 = and i32 %839, 255
  %923 = uitofp i32 %922 to float
  %924 = fmul fast float %923, 0x3F80204080000000
  %925 = fadd fast float %924, -1.000000e+00
  %926 = lshr i32 %839, 8
  %927 = and i32 %926, 255
  %928 = uitofp i32 %927 to float
  %929 = fmul fast float %928, 0x3F80204080000000
  %930 = fadd fast float %929, -1.000000e+00
  %931 = lshr i32 %839, 16
  %932 = and i32 %931, 255
  %933 = uitofp i32 %932 to float
  %934 = fmul fast float %933, 0x3F80204080000000
  %935 = fadd fast float %934, -1.000000e+00
  %936 = lshr i32 %839, 24
  %937 = uitofp i32 %936 to float
  %938 = fmul fast float %937, 0x3F80204080000000
  %939 = fadd fast float %938, -1.000000e+00
  %940 = and i32 %840, 255
  %941 = uitofp i32 %940 to float
  %942 = fmul fast float %941, 0x3F80204080000000
  %943 = fadd fast float %942, -1.000000e+00
  %944 = lshr i32 %840, 8
  %945 = and i32 %944, 255
  %946 = uitofp i32 %945 to float
  %947 = fmul fast float %946, 0x3F80204080000000
  %948 = fadd fast float %947, -1.000000e+00
  %949 = lshr i32 %840, 16
  %950 = and i32 %949, 255
  %951 = uitofp i32 %950 to float
  %952 = fmul fast float %951, 0x3F80204080000000
  %953 = fadd fast float %952, -1.000000e+00
  %954 = lshr i32 %840, 24
  %955 = uitofp i32 %954 to float
  %956 = fmul fast float %955, 0x3F80204080000000
  %957 = fadd fast float %956, -1.000000e+00
  %958 = fmul fast float %843, %800
  %959 = fadd fast float %958, %810
  %960 = fmul fast float %800, 0x3FFBB67AE0000000
  %961 = fmul fast float %960, %843
  %962 = fmul fast float %961, %853
  %963 = fadd fast float %962, %809
  %964 = fmul fast float %961, %858
  %965 = fadd fast float %964, %808
  %966 = fmul fast float %961, %863
  %967 = fadd fast float %966, %807
  %968 = fmul fast float %800, 0x3FFEFBDEC0000000
  %969 = fmul fast float %968, %843
  %970 = fmul fast float %969, %867
  %971 = fadd fast float %970, %806
  %972 = fmul fast float %969, %871
  %973 = fadd fast float %972, %805
  %974 = fmul fast float %800, 0x4001E377A0000000
  %975 = fmul fast float %974, %843
  %976 = fmul fast float %975, %876
  %977 = fadd fast float %976, %804
  %978 = fmul fast float %969, %881
  %979 = fadd fast float %978, %803
  %980 = fmul fast float %969, %885
  %981 = fadd fast float %980, %802
  %982 = fmul fast float %846, %800
  %983 = fadd fast float %982, %819
  %984 = fmul fast float %960, %846
  %985 = fmul fast float %984, %889
  %986 = fadd fast float %985, %818
  %987 = fmul fast float %984, %894
  %988 = fadd fast float %987, %817
  %989 = fmul fast float %984, %899
  %990 = fadd fast float %989, %816
  %991 = fmul fast float %968, %846
  %992 = fmul fast float %991, %903
  %993 = fadd fast float %992, %815
  %994 = fmul fast float %991, %907
  %995 = fadd fast float %994, %814
  %996 = fmul fast float %974, %846
  %997 = fmul fast float %996, %912
  %998 = fadd fast float %997, %813
  %999 = fmul fast float %991, %917
  %1000 = fadd fast float %999, %812
  %1001 = fmul fast float %991, %921
  %1002 = fadd fast float %1001, %811
  %1003 = fmul fast float %849, %800
  %1004 = fadd fast float %1003, %828
  %1005 = fmul fast float %960, %849
  %1006 = fmul fast float %1005, %925
  %1007 = fadd fast float %1006, %827
  %1008 = fmul fast float %1005, %930
  %1009 = fadd fast float %1008, %826
  %1010 = fmul fast float %1005, %935
  %1011 = fadd fast float %1010, %825
  %1012 = fmul fast float %968, %849
  %1013 = fmul fast float %1012, %939
  %1014 = fadd fast float %1013, %824
  %1015 = fmul fast float %1012, %943
  %1016 = fadd fast float %1015, %823
  %1017 = fmul fast float %974, %849
  %1018 = fmul fast float %1017, %948
  %1019 = fadd fast float %1018, %822
  %1020 = fmul fast float %1012, %953
  %1021 = fadd fast float %1020, %821
  %1022 = fmul fast float %1012, %957
  %1023 = fadd fast float %1022, %820
  %1024 = add nuw nsw i32 %829, 1
  %1025 = icmp eq i32 %1024, 8
  br i1 %1025, label %1031, label %1026

; <label>:1026                                    ; preds = %799
  %1027 = getelementptr inbounds [8 x i32], [8 x i32]* %30, i32 0, i32 %1024
  %1028 = load i32, i32* %1027, align 4, !tbaa !53, !noalias !57
  %1029 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 %1024
  %1030 = load float, float* %1029, align 4, !tbaa !63, !noalias !57
  br label %799

; <label>:1031                                    ; preds = %799
  br label %1032

; <label>:1032                                    ; preds = %1031, %769, %336, %317, %188
  %1033 = phi float [ 0.000000e+00, %188 ], [ 0.000000e+00, %317 ], [ 0.000000e+00, %336 ], [ 0.000000e+00, %769 ], [ %981, %1031 ]
  %1034 = phi float [ 0.000000e+00, %188 ], [ 0.000000e+00, %317 ], [ 0.000000e+00, %336 ], [ 0.000000e+00, %769 ], [ %979, %1031 ]
  %1035 = phi float [ 0.000000e+00, %188 ], [ 0.000000e+00, %317 ], [ 0.000000e+00, %336 ], [ 0.000000e+00, %769 ], [ %977, %1031 ]
  %1036 = phi float [ 0.000000e+00, %188 ], [ 0.000000e+00, %317 ], [ 0.000000e+00, %336 ], [ 0.000000e+00, %769 ], [ %973, %1031 ]
  %1037 = phi float [ 0.000000e+00, %188 ], [ 0.000000e+00, %317 ], [ 0.000000e+00, %336 ], [ 0.000000e+00, %769 ], [ %971, %1031 ]
  %1038 = phi float [ 0.000000e+00, %188 ], [ 0.000000e+00, %317 ], [ 0.000000e+00, %336 ], [ 0.000000e+00, %769 ], [ %967, %1031 ]
  %1039 = phi float [ 0.000000e+00, %188 ], [ 0.000000e+00, %317 ], [ 0.000000e+00, %336 ], [ 0.000000e+00, %769 ], [ %965, %1031 ]
  %1040 = phi float [ 0.000000e+00, %188 ], [ 0.000000e+00, %317 ], [ 0.000000e+00, %336 ], [ 0.000000e+00, %769 ], [ %963, %1031 ]
  %1041 = phi float [ 0.000000e+00, %188 ], [ 0.000000e+00, %317 ], [ 0.000000e+00, %336 ], [ 0.000000e+00, %769 ], [ %959, %1031 ]
  %1042 = phi float [ 0.000000e+00, %188 ], [ 0.000000e+00, %317 ], [ 0.000000e+00, %336 ], [ 0.000000e+00, %769 ], [ %1002, %1031 ]
  %1043 = phi float [ 0.000000e+00, %188 ], [ 0.000000e+00, %317 ], [ 0.000000e+00, %336 ], [ 0.000000e+00, %769 ], [ %1000, %1031 ]
  %1044 = phi float [ 0.000000e+00, %188 ], [ 0.000000e+00, %317 ], [ 0.000000e+00, %336 ], [ 0.000000e+00, %769 ], [ %998, %1031 ]
  %1045 = phi float [ 0.000000e+00, %188 ], [ 0.000000e+00, %317 ], [ 0.000000e+00, %336 ], [ 0.000000e+00, %769 ], [ %995, %1031 ]
  %1046 = phi float [ 0.000000e+00, %188 ], [ 0.000000e+00, %317 ], [ 0.000000e+00, %336 ], [ 0.000000e+00, %769 ], [ %993, %1031 ]
  %1047 = phi float [ 0.000000e+00, %188 ], [ 0.000000e+00, %317 ], [ 0.000000e+00, %336 ], [ 0.000000e+00, %769 ], [ %990, %1031 ]
  %1048 = phi float [ 0.000000e+00, %188 ], [ 0.000000e+00, %317 ], [ 0.000000e+00, %336 ], [ 0.000000e+00, %769 ], [ %988, %1031 ]
  %1049 = phi float [ 0.000000e+00, %188 ], [ 0.000000e+00, %317 ], [ 0.000000e+00, %336 ], [ 0.000000e+00, %769 ], [ %986, %1031 ]
  %1050 = phi float [ 0.000000e+00, %188 ], [ 0.000000e+00, %317 ], [ 0.000000e+00, %336 ], [ 0.000000e+00, %769 ], [ %983, %1031 ]
  %1051 = phi float [ 0.000000e+00, %188 ], [ 0.000000e+00, %317 ], [ 0.000000e+00, %336 ], [ 0.000000e+00, %769 ], [ %1023, %1031 ]
  %1052 = phi float [ 0.000000e+00, %188 ], [ 0.000000e+00, %317 ], [ 0.000000e+00, %336 ], [ 0.000000e+00, %769 ], [ %1021, %1031 ]
  %1053 = phi float [ 0.000000e+00, %188 ], [ 0.000000e+00, %317 ], [ 0.000000e+00, %336 ], [ 0.000000e+00, %769 ], [ %1019, %1031 ]
  %1054 = phi float [ 0.000000e+00, %188 ], [ 0.000000e+00, %317 ], [ 0.000000e+00, %336 ], [ 0.000000e+00, %769 ], [ %1016, %1031 ]
  %1055 = phi float [ 0.000000e+00, %188 ], [ 0.000000e+00, %317 ], [ 0.000000e+00, %336 ], [ 0.000000e+00, %769 ], [ %1014, %1031 ]
  %1056 = phi float [ 0.000000e+00, %188 ], [ 0.000000e+00, %317 ], [ 0.000000e+00, %336 ], [ 0.000000e+00, %769 ], [ %1011, %1031 ]
  %1057 = phi float [ 0.000000e+00, %188 ], [ 0.000000e+00, %317 ], [ 0.000000e+00, %336 ], [ 0.000000e+00, %769 ], [ %1009, %1031 ]
  %1058 = phi float [ 0.000000e+00, %188 ], [ 0.000000e+00, %317 ], [ 0.000000e+00, %336 ], [ 0.000000e+00, %769 ], [ %1007, %1031 ]
  %1059 = phi float [ 0.000000e+00, %188 ], [ 0.000000e+00, %317 ], [ 0.000000e+00, %336 ], [ 0.000000e+00, %769 ], [ %1004, %1031 ]
  %1060 = phi i1 [ false, %188 ], [ false, %317 ], [ false, %336 ], [ false, %769 ], [ true, %1031 ]
  %1061 = phi float [ 1.000000e+00, %188 ], [ 1.000000e+00, %317 ], [ 1.000000e+00, %336 ], [ 0.000000e+00, %769 ], [ 1.000000e+00, %1031 ]
  br i1 %1060, label %1138, label %1062, !dx.controlflow.hints !66

; <label>:1062                                    ; preds = %1032
  %1063 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %1064 = extractvalue %dx.types.ResRet.i32 %1063, 0
  %1065 = extractvalue %dx.types.ResRet.i32 %1063, 1
  %1066 = extractvalue %dx.types.ResRet.i32 %1063, 2
  %1067 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %1068 = extractvalue %dx.types.ResRet.i32 %1067, 0
  %1069 = extractvalue %dx.types.ResRet.i32 %1067, 1
  %1070 = extractvalue %dx.types.ResRet.i32 %1067, 2
  %1071 = extractvalue %dx.types.ResRet.i32 %1067, 3
  %1072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %1073 = extractvalue %dx.types.ResRet.i32 %1072, 0
  %1074 = extractvalue %dx.types.ResRet.i32 %1072, 1
  %1075 = extractvalue %dx.types.ResRet.i32 %1072, 2
  %1076 = extractvalue %dx.types.ResRet.i32 %1072, 3
  %1077 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %1078 = extractvalue %dx.types.ResRet.i32 %1077, 0
  %1079 = extractvalue %dx.types.ResRet.i32 %1077, 1
  %1080 = extractvalue %dx.types.ResRet.i32 %1077, 2
  %1081 = extractvalue %dx.types.ResRet.i32 %1077, 3
  %1082 = and i32 %1078, 65535
  %1083 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1082)  ; LegacyF16ToF32(value)
  %1084 = lshr i32 %1078, 16
  %1085 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1084)  ; LegacyF16ToF32(value)
  %1086 = and i32 %1079, 65535
  %1087 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1086)  ; LegacyF16ToF32(value)
  %1088 = lshr i32 %1079, 16
  %1089 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1088)  ; LegacyF16ToF32(value)
  %1090 = and i32 %1080, 65535
  %1091 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1090)  ; LegacyF16ToF32(value)
  %1092 = lshr i32 %1080, 16
  %1093 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1092)  ; LegacyF16ToF32(value)
  %1094 = and i32 %1081, 65535
  %1095 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1094)  ; LegacyF16ToF32(value)
  %1096 = lshr i32 %1081, 16
  %1097 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1096)  ; LegacyF16ToF32(value)
  %1098 = and i32 %1073, 65535
  %1099 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1098)  ; LegacyF16ToF32(value)
  %1100 = lshr i32 %1073, 16
  %1101 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1100)  ; LegacyF16ToF32(value)
  %1102 = and i32 %1074, 65535
  %1103 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1102)  ; LegacyF16ToF32(value)
  %1104 = lshr i32 %1074, 16
  %1105 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1104)  ; LegacyF16ToF32(value)
  %1106 = and i32 %1075, 65535
  %1107 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1106)  ; LegacyF16ToF32(value)
  %1108 = lshr i32 %1075, 16
  %1109 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1108)  ; LegacyF16ToF32(value)
  %1110 = and i32 %1076, 65535
  %1111 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1110)  ; LegacyF16ToF32(value)
  %1112 = lshr i32 %1076, 16
  %1113 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1112)  ; LegacyF16ToF32(value)
  %1114 = and i32 %1068, 65535
  %1115 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1114)  ; LegacyF16ToF32(value)
  %1116 = lshr i32 %1068, 16
  %1117 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1116)  ; LegacyF16ToF32(value)
  %1118 = and i32 %1069, 65535
  %1119 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1118)  ; LegacyF16ToF32(value)
  %1120 = lshr i32 %1069, 16
  %1121 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1120)  ; LegacyF16ToF32(value)
  %1122 = and i32 %1070, 65535
  %1123 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1122)  ; LegacyF16ToF32(value)
  %1124 = lshr i32 %1070, 16
  %1125 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1124)  ; LegacyF16ToF32(value)
  %1126 = and i32 %1071, 65535
  %1127 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1126)  ; LegacyF16ToF32(value)
  %1128 = lshr i32 %1071, 16
  %1129 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1128)  ; LegacyF16ToF32(value)
  %1130 = and i32 %1064, 65535
  %1131 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1130)  ; LegacyF16ToF32(value)
  %1132 = lshr i32 %1064, 16
  %1133 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1132)  ; LegacyF16ToF32(value)
  %1134 = and i32 %1065, 65535
  %1135 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1134)  ; LegacyF16ToF32(value)
  %1136 = and i32 %1066, 65535
  %1137 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1136)  ; LegacyF16ToF32(value)
  br label %1138

; <label>:1138                                    ; preds = %1062, %1032
  %1139 = phi float [ %1051, %1032 ], [ %1135, %1062 ]
  %1140 = phi float [ %1052, %1032 ], [ %1133, %1062 ]
  %1141 = phi float [ %1053, %1032 ], [ %1131, %1062 ]
  %1142 = phi float [ %1054, %1032 ], [ %1129, %1062 ]
  %1143 = phi float [ %1055, %1032 ], [ %1127, %1062 ]
  %1144 = phi float [ %1056, %1032 ], [ %1125, %1062 ]
  %1145 = phi float [ %1057, %1032 ], [ %1123, %1062 ]
  %1146 = phi float [ %1058, %1032 ], [ %1121, %1062 ]
  %1147 = phi float [ %1059, %1032 ], [ %1119, %1062 ]
  %1148 = phi float [ %1042, %1032 ], [ %1117, %1062 ]
  %1149 = phi float [ %1043, %1032 ], [ %1115, %1062 ]
  %1150 = phi float [ %1044, %1032 ], [ %1113, %1062 ]
  %1151 = phi float [ %1045, %1032 ], [ %1111, %1062 ]
  %1152 = phi float [ %1046, %1032 ], [ %1109, %1062 ]
  %1153 = phi float [ %1047, %1032 ], [ %1107, %1062 ]
  %1154 = phi float [ %1048, %1032 ], [ %1105, %1062 ]
  %1155 = phi float [ %1049, %1032 ], [ %1103, %1062 ]
  %1156 = phi float [ %1050, %1032 ], [ %1101, %1062 ]
  %1157 = phi float [ %1033, %1032 ], [ %1099, %1062 ]
  %1158 = phi float [ %1034, %1032 ], [ %1097, %1062 ]
  %1159 = phi float [ %1035, %1032 ], [ %1095, %1062 ]
  %1160 = phi float [ %1036, %1032 ], [ %1093, %1062 ]
  %1161 = phi float [ %1037, %1032 ], [ %1091, %1062 ]
  %1162 = phi float [ %1038, %1032 ], [ %1089, %1062 ]
  %1163 = phi float [ %1039, %1032 ], [ %1087, %1062 ]
  %1164 = phi float [ %1040, %1032 ], [ %1085, %1062 ]
  %1165 = phi float [ %1041, %1032 ], [ %1083, %1062 ]
  %1166 = phi float [ %1061, %1032 ], [ %1137, %1062 ]
  %1167 = select i1 %1060, float %1166, float 3.125000e-02
  %1168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1169 = extractvalue %dx.types.CBufRet.f32 %1168, 0
  %1170 = extractvalue %dx.types.CBufRet.f32 %1168, 1
  %1171 = extractvalue %dx.types.CBufRet.f32 %1168, 2
  %1172 = fsub fast float %279, %1169
  %1173 = fsub fast float %284, %1170
  %1174 = fsub fast float %289, %1171
  %1175 = call float @dx.op.dot3.f32(i32 55, float %1172, float %1173, float %1174, float %1172, float %1173, float %1174)  ; Dot3(ax,ay,az,bx,by,bz)
  %1176 = call float @dx.op.unary.f32(i32 25, float %1175)  ; Rsqrt(value)
  %1177 = fmul fast float %1172, %1176
  %1178 = fmul fast float %1173, %1176
  %1179 = fmul fast float %1174, %1176
  %1180 = fsub fast float -0.000000e+00, %1177
  %1181 = fsub fast float -0.000000e+00, %1178
  %1182 = fmul fast float %1165, 0x3FD20DD760000000
  %1183 = fmul fast float %1156, 0x3FD20DD760000000
  %1184 = fmul fast float %1147, 0x3FD20DD760000000
  br i1 %191, label %1265, label %1185, !dx.controlflow.hints !67

; <label>:1185                                    ; preds = %1138
  %1186 = fmul fast float %1163, 0xBFD4D8D7C0000000
  %1187 = fmul fast float %1186, %1179
  %1188 = fmul fast float %1179, %1179
  %1189 = fmul fast float %1188, 0x3FEE471020000000
  %1190 = fadd fast float %1189, 0xBFD42F6020000000
  %1191 = fmul fast float %1190, %1159
  %1192 = fmul fast float %1162, 0x3FD4D8D7C0000000
  %1193 = fmul fast float %1164, 0x3FD4D8D7C0000000
  %1194 = fmul fast float %1193, %1178
  %1195 = fmul fast float %1179, 0x3FF17B1420000000
  %1196 = fmul fast float %1158, %1180
  %1197 = fmul fast float %1160, %1181
  %1198 = fmul fast float %1177, %1177
  %1199 = fmul fast float %1178, %1178
  %1200 = fsub fast float %1198, %1199
  %1201 = fmul fast float %1157, 0x3FC17B1420000000
  %1202 = fmul fast float %1201, %1200
  %1203 = fmul fast float %1161, 0x3FD17B1420000000
  %1204 = fmul fast float %1203, %1176
  %1205 = fmul fast float %1204, %1173
  %1206 = fadd fast float %1196, %1197
  %1207 = fmul fast float %1195, %1206
  %1208 = fadd fast float %1207, %1191
  %1209 = fmul fast float %1208, 2.500000e-01
  %1210 = fadd fast float %1205, %1192
  %1211 = fmul fast float %1210, %1177
  %1212 = fadd fast float %1187, %1182
  %1213 = fadd fast float %1212, %1194
  %1214 = fadd fast float %1213, %1202
  %1215 = fadd fast float %1214, %1209
  %1216 = fadd fast float %1215, %1211
  %1217 = fmul fast float %1154, 0xBFD4D8D7C0000000
  %1218 = fmul fast float %1217, %1179
  %1219 = fmul fast float %1190, %1150
  %1220 = fmul fast float %1153, 0x3FD4D8D7C0000000
  %1221 = fmul fast float %1155, 0x3FD4D8D7C0000000
  %1222 = fmul fast float %1221, %1178
  %1223 = fmul fast float %1149, %1180
  %1224 = fmul fast float %1151, %1181
  %1225 = fmul fast float %1148, 0x3FC17B1420000000
  %1226 = fmul fast float %1225, %1200
  %1227 = fmul fast float %1152, 0x3FD17B1420000000
  %1228 = fmul fast float %1227, %1176
  %1229 = fmul fast float %1228, %1173
  %1230 = fadd fast float %1223, %1224
  %1231 = fmul fast float %1195, %1230
  %1232 = fadd fast float %1231, %1219
  %1233 = fmul fast float %1232, 2.500000e-01
  %1234 = fadd fast float %1229, %1220
  %1235 = fmul fast float %1234, %1177
  %1236 = fadd fast float %1218, %1183
  %1237 = fadd fast float %1236, %1222
  %1238 = fadd fast float %1237, %1226
  %1239 = fadd fast float %1238, %1233
  %1240 = fadd fast float %1239, %1235
  %1241 = fmul fast float %1145, 0xBFD4D8D7C0000000
  %1242 = fmul fast float %1241, %1179
  %1243 = fmul fast float %1190, %1141
  %1244 = fmul fast float %1144, 0x3FD4D8D7C0000000
  %1245 = fmul fast float %1146, 0x3FD4D8D7C0000000
  %1246 = fmul fast float %1245, %1178
  %1247 = fmul fast float %1140, %1180
  %1248 = fmul fast float %1142, %1181
  %1249 = fmul fast float %1139, 0x3FC17B1420000000
  %1250 = fmul fast float %1249, %1200
  %1251 = fmul fast float %1143, 0x3FD17B1420000000
  %1252 = fmul fast float %1251, %1176
  %1253 = fmul fast float %1252, %1173
  %1254 = fadd fast float %1247, %1248
  %1255 = fmul fast float %1195, %1254
  %1256 = fadd fast float %1255, %1243
  %1257 = fmul fast float %1256, 2.500000e-01
  %1258 = fadd fast float %1253, %1244
  %1259 = fmul fast float %1258, %1177
  %1260 = fadd fast float %1242, %1184
  %1261 = fadd fast float %1260, %1246
  %1262 = fadd fast float %1261, %1250
  %1263 = fadd fast float %1262, %1257
  %1264 = fadd fast float %1263, %1259
  br label %1359

; <label>:1265                                    ; preds = %1138
  %1266 = fmul fast float %233, %233
  %1267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1268 = extractvalue %dx.types.CBufRet.f32 %1267, 0
  %1269 = extractvalue %dx.types.CBufRet.f32 %1267, 1
  %1270 = extractvalue %dx.types.CBufRet.f32 %1267, 2
  %1271 = fmul fast float %1163, %233
  %1272 = fmul fast float %1271, %1270
  %1273 = fmul fast float %1270, %1270
  %1274 = fmul fast float %1273, 0x3FEE471020000000
  %1275 = fadd fast float %1274, 0xBFD42F6020000000
  %1276 = fmul fast float %1275, %1159
  %1277 = fmul fast float %1268, %1162
  %1278 = fmul fast float %1269, %1164
  %1279 = fmul fast float %1270, 0x3FF17B1420000000
  %1280 = fmul fast float %1158, %1266
  %1281 = fmul fast float %1280, %1268
  %1282 = fmul fast float %1281, %1279
  %1283 = fmul fast float %1160, %1266
  %1284 = fmul fast float %1283, %1269
  %1285 = fmul fast float %1284, %1279
  %1286 = fmul fast float %1268, %1268
  %1287 = fmul fast float %1269, %1269
  %1288 = fsub fast float %1286, %1287
  %1289 = fmul fast float %1157, 0x3FE17B1420000000
  %1290 = fmul fast float %1289, %1288
  %1291 = fmul fast float %1161, 0x3FF17B1420000000
  %1292 = fmul fast float %1291, %1269
  %1293 = fmul fast float %1292, %1268
  %1294 = fadd fast float %1290, %1293
  %1295 = fadd fast float %1294, %1276
  %1296 = fmul fast float %1295, %1266
  %1297 = fadd fast float %1278, %1277
  %1298 = fmul fast float %1297, %233
  %1299 = fsub fast float %1298, %1272
  %1300 = fmul fast float %1299, 0x3FDF454380000000
  %1301 = fsub fast float %1182, %1282
  %1302 = fsub fast float %1301, %1285
  %1303 = fadd fast float %1302, %1296
  %1304 = fadd fast float %1303, %1300
  %1305 = fmul fast float %1154, %233
  %1306 = fmul fast float %1305, %1270
  %1307 = fmul fast float %1275, %1150
  %1308 = fmul fast float %1268, %1153
  %1309 = fmul fast float %1269, %1155
  %1310 = fmul fast float %1149, %1266
  %1311 = fmul fast float %1310, %1268
  %1312 = fmul fast float %1311, %1279
  %1313 = fmul fast float %1151, %1266
  %1314 = fmul fast float %1313, %1269
  %1315 = fmul fast float %1314, %1279
  %1316 = fmul fast float %1148, 0x3FE17B1420000000
  %1317 = fmul fast float %1316, %1288
  %1318 = fmul fast float %1152, 0x3FF17B1420000000
  %1319 = fmul fast float %1318, %1269
  %1320 = fmul fast float %1319, %1268
  %1321 = fadd fast float %1317, %1320
  %1322 = fadd fast float %1321, %1307
  %1323 = fmul fast float %1322, %1266
  %1324 = fadd fast float %1309, %1308
  %1325 = fmul fast float %1324, %233
  %1326 = fsub fast float %1325, %1306
  %1327 = fmul fast float %1326, 0x3FDF454380000000
  %1328 = fsub fast float %1183, %1312
  %1329 = fsub fast float %1328, %1315
  %1330 = fadd fast float %1329, %1323
  %1331 = fadd fast float %1330, %1327
  %1332 = fmul fast float %1145, %233
  %1333 = fmul fast float %1332, %1270
  %1334 = fmul fast float %1275, %1141
  %1335 = fmul fast float %1268, %1144
  %1336 = fmul fast float %1269, %1146
  %1337 = fmul fast float %1140, %1266
  %1338 = fmul fast float %1337, %1268
  %1339 = fmul fast float %1338, %1279
  %1340 = fmul fast float %1142, %1266
  %1341 = fmul fast float %1340, %1269
  %1342 = fmul fast float %1341, %1279
  %1343 = fmul fast float %1139, 0x3FE17B1420000000
  %1344 = fmul fast float %1343, %1288
  %1345 = fmul fast float %1143, 0x3FF17B1420000000
  %1346 = fmul fast float %1345, %1269
  %1347 = fmul fast float %1346, %1268
  %1348 = fadd fast float %1344, %1347
  %1349 = fadd fast float %1348, %1334
  %1350 = fmul fast float %1349, %1266
  %1351 = fadd fast float %1336, %1335
  %1352 = fmul fast float %1351, %233
  %1353 = fsub fast float %1352, %1333
  %1354 = fmul fast float %1353, 0x3FDF454380000000
  %1355 = fsub fast float %1184, %1339
  %1356 = fsub fast float %1355, %1342
  %1357 = fadd fast float %1356, %1350
  %1358 = fadd fast float %1357, %1354
  br label %1359

; <label>:1359                                    ; preds = %1265, %1185
  %1360 = phi float [ %1216, %1185 ], [ %1304, %1265 ]
  %1361 = phi float [ %1240, %1185 ], [ %1331, %1265 ]
  %1362 = phi float [ %1264, %1185 ], [ %1358, %1265 ]
  %1363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %137, i32 0)  ; BufferLoad(srv,index,wot)
  %1364 = extractvalue %dx.types.ResRet.i32 %1363, 0
  %1365 = icmp eq i32 %1364, 262144
  br i1 %1365, label %1382, label %1366, !dx.controlflow.hints !68

; <label>:1366                                    ; preds = %1359
  %1367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %137, i32 0)  ; BufferLoad(srv,index,wot)
  %1368 = extractvalue %dx.types.ResRet.i32 %1367, 0
  %1369 = and i32 %54, 31
  %1370 = shl i32 1, %1369
  %1371 = add i32 %1370, -1
  %1372 = and i32 %1371, %1368
  %1373 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1372)  ; Countbits(value)
  %1374 = and i32 %47, 31
  %1375 = shl i32 1, %1374
  %1376 = shl i32 %1375, %1374
  %1377 = shl i32 %28, %1374
  %1378 = mul i32 %1376, %1373
  %1379 = add i32 %1364, %27
  %1380 = add i32 %1379, %1377
  %1381 = add i32 %1380, %1378
  br label %1382

; <label>:1382                                    ; preds = %1366, %1359
  %1383 = phi i32 [ %1381, %1366 ], [ -1, %1359 ]
  %1384 = icmp eq i32 %1383, -1
  br i1 %1384, label %1386, label %1385, !dx.controlflow.hints !69

; <label>:1385                                    ; preds = %1382
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %2, i32 %1383, i32 undef, float %1360, float %1361, float %1362, float %1360, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %1383, i32 undef, float %1167, float %1167, float %1167, float %1167, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1386

; <label>:1386                                    ; preds = %1385, %1382, %131, %43, %35
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

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
!40 = !{void ()* @cs_del_sh_sample_lightgrid_1, !"cs_del_sh_sample_lightgrid_1", null, !4, !41}
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
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}

