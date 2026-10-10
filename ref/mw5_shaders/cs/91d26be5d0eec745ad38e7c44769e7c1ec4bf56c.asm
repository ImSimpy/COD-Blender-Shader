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
; shader hash: e585b29fe374bda2d6f468a41a097640
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

define void @cs_del_sh_sample_lightgrid_4_lowres() {
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
  br i1 %42, label %45, label %1389, !dx.controlflow.hints !44

; <label>:43                                      ; preds = %0
  %44 = icmp ult i32 %26, %33
  br i1 %44, label %45, label %1389, !dx.controlflow.hints !45

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
  br i1 %135, label %136, label %1389, !dx.controlflow.hints !48

; <label>:136                                     ; preds = %131
  %137 = shl i32 %27, 1
  %138 = shl i32 %28, 1
  %139 = add i32 %134, %51
  %140 = shl i32 %139, 5
  %141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %140, i32 undef)  ; BufferLoad(srv,index,wot)
  %142 = extractvalue %dx.types.ResRet.i32 %141, 0
  %143 = extractvalue %dx.types.ResRet.i32 %141, 1
  %144 = extractvalue %dx.types.ResRet.i32 %141, 2
  %145 = extractvalue %dx.types.ResRet.i32 %141, 3
  %146 = bitcast i32 %142 to float
  %147 = bitcast i32 %143 to float
  %148 = bitcast i32 %144 to float
  %149 = and i32 %145, 536870912
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %190, label %151, !dx.controlflow.hints !49

; <label>:151                                     ; preds = %136
  %152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %153 = extractvalue %dx.types.CBufRet.f32 %152, 2
  %154 = extractvalue %dx.types.CBufRet.f32 %152, 3
  %155 = fmul fast float %153, %146
  %156 = fmul fast float %154, %147
  %157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %158 = extractvalue %dx.types.CBufRet.f32 %157, 0
  %159 = extractvalue %dx.types.CBufRet.f32 %157, 1
  %160 = fadd fast float %155, %158
  %161 = fadd fast float %156, %159
  %162 = call float @dx.op.unary.f32(i32 7, float %160)  ; Saturate(value)
  %163 = call float @dx.op.unary.f32(i32 7, float %161)  ; Saturate(value)
  %164 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %22, float %162, float %163, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %165 = extractvalue %dx.types.ResRet.f32 %164, 0
  %166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %167 = extractvalue %dx.types.CBufRet.f32 %166, 0
  %168 = fmul fast float %167, %165
  %169 = fsub fast float %160, %162
  %170 = fsub fast float %161, %163
  %171 = extractvalue %dx.types.CBufRet.f32 %152, 0
  %172 = extractvalue %dx.types.CBufRet.f32 %152, 1
  %173 = fmul fast float %171, %169
  %174 = fmul fast float %172, %170
  %175 = fmul fast float %173, %173
  %176 = fmul fast float %174, %174
  %177 = fadd fast float %175, %176
  %178 = call float @dx.op.unary.f32(i32 24, float %177)  ; Sqrt(value)
  %179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %180 = extractvalue %dx.types.CBufRet.f32 %179, 3
  %181 = fmul fast float %180, %178
  %182 = call float @dx.op.unary.f32(i32 7, float %181)  ; Saturate(value)
  %183 = extractvalue %dx.types.CBufRet.f32 %179, 2
  %184 = fsub fast float %183, %168
  %185 = fmul fast float %184, %182
  %186 = extractvalue %dx.types.CBufRet.f32 %166, 1
  %187 = fadd fast float %168, %148
  %188 = fadd fast float %187, %186
  %189 = fadd fast float %188, %185
  br label %190

; <label>:190                                     ; preds = %151, %136
  %191 = phi float [ %189, %151 ], [ %148, %136 ]
  %192 = and i32 %145, 268435456
  %193 = icmp eq i32 %192, 0
  %194 = or i32 %140, 16
  %195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %194, i32 undef)  ; BufferLoad(srv,index,wot)
  %196 = extractvalue %dx.types.ResRet.i32 %195, 0
  %197 = extractvalue %dx.types.ResRet.i32 %195, 1
  %198 = extractvalue %dx.types.ResRet.i32 %195, 2
  %199 = extractvalue %dx.types.ResRet.i32 %195, 3
  %200 = and i32 %196, 65535
  %201 = call float @dx.op.legacyF16ToF32(i32 131, i32 %200)  ; LegacyF16ToF32(value)
  %202 = lshr i32 %196, 16
  %203 = call float @dx.op.legacyF16ToF32(i32 131, i32 %202)  ; LegacyF16ToF32(value)
  %204 = and i32 %197, 1023
  %205 = uitofp i32 %204 to float
  %206 = lshr i32 %197, 10
  %207 = and i32 %206, 1023
  %208 = uitofp i32 %207 to float
  %209 = lshr i32 %197, 20
  %210 = and i32 %209, 1023
  %211 = uitofp i32 %210 to float
  %212 = fmul fast float %205, 0x3F60040100000000
  %213 = fmul fast float %208, 0x3F60040100000000
  %214 = fmul fast float %211, 0x3F60040100000000
  %215 = fadd fast float %212, -1.000000e+00
  %216 = fadd fast float %213, -1.000000e+00
  %217 = fadd fast float %214, -1.000000e+00
  %218 = and i32 %198, 1023
  %219 = uitofp i32 %218 to float
  %220 = lshr i32 %198, 10
  %221 = and i32 %220, 1023
  %222 = uitofp i32 %221 to float
  %223 = lshr i32 %198, 20
  %224 = and i32 %223, 1023
  %225 = uitofp i32 %224 to float
  %226 = fmul fast float %219, 0x3F60040100000000
  %227 = fmul fast float %222, 0x3F60040100000000
  %228 = fmul fast float %225, 0x3F60040100000000
  %229 = fadd fast float %226, -1.000000e+00
  %230 = fadd fast float %227, -1.000000e+00
  %231 = fadd fast float %228, -1.000000e+00
  %232 = and i32 %199, 65535
  %233 = call float @dx.op.legacyF16ToF32(i32 131, i32 %232)  ; LegacyF16ToF32(value)
  %234 = lshr i32 %199, 16
  %235 = call float @dx.op.legacyF16ToF32(i32 131, i32 %234)  ; LegacyF16ToF32(value)
  %236 = call float @dx.op.unary.f32(i32 13, float %233)  ; Sin(value)
  %237 = call float @dx.op.unary.f32(i32 12, float %233)  ; Cos(value)
  %238 = fmul fast float %237, %215
  %239 = fmul fast float %237, %216
  %240 = fmul fast float %237, %217
  %241 = fmul fast float %236, %229
  %242 = fmul fast float %230, %236
  %243 = fmul fast float %231, %236
  %244 = fadd fast float %238, %241
  %245 = fadd fast float %239, %242
  %246 = fadd fast float %240, %243
  %247 = fmul fast float %244, %201
  %248 = fmul fast float %245, %201
  %249 = fmul fast float %246, %201
  %250 = fmul fast float %236, %215
  %251 = fmul fast float %216, %236
  %252 = fmul fast float %217, %236
  %253 = fmul fast float %237, %229
  %254 = fmul fast float %237, %230
  %255 = fmul fast float %237, %231
  %256 = fsub fast float %250, %253
  %257 = fsub fast float %251, %254
  %258 = fsub fast float %252, %255
  %259 = fmul fast float %256, %203
  %260 = fmul fast float %257, %203
  %261 = fmul fast float %258, %203
  %262 = uitofp i32 %137 to float
  %263 = uitofp i32 %138 to float
  %264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %265 = extractvalue %dx.types.CBufRet.f32 %264, 1
  %266 = fdiv fast float %262, %265
  %267 = fdiv fast float %263, %265
  %268 = extractvalue %dx.types.CBufRet.f32 %264, 2
  %269 = fmul fast float %268, 2.000000e+00
  %270 = fadd fast float %269, %266
  %271 = fadd fast float %269, %267
  %272 = fmul fast float %270, %247
  %273 = fmul fast float %270, %248
  %274 = fmul fast float %270, %249
  %275 = fmul fast float %271, %259
  %276 = fmul fast float %271, %260
  %277 = fmul fast float %271, %261
  %278 = fadd fast float %275, %272
  %279 = fmul fast float %278, 2.000000e+00
  %280 = fsub fast float %146, %247
  %281 = fsub fast float %280, %259
  %282 = fadd fast float %281, %279
  %283 = fadd fast float %276, %273
  %284 = fmul fast float %283, 2.000000e+00
  %285 = fsub fast float %147, %248
  %286 = fsub fast float %285, %260
  %287 = fadd fast float %286, %284
  %288 = fadd fast float %277, %274
  %289 = fmul fast float %288, 2.000000e+00
  %290 = fsub fast float %191, %249
  %291 = fsub fast float %290, %261
  %292 = fadd fast float %291, %289
  %293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %294 = extractvalue %dx.types.CBufRet.f32 %293, 0
  %295 = extractvalue %dx.types.CBufRet.f32 %293, 1
  %296 = extractvalue %dx.types.CBufRet.f32 %293, 2
  %297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %298 = extractvalue %dx.types.CBufRet.f32 %297, 0
  %299 = extractvalue %dx.types.CBufRet.f32 %297, 1
  %300 = extractvalue %dx.types.CBufRet.f32 %297, 2
  %301 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %302 = extractvalue %dx.types.CBufRet.i32 %301, 1
  %303 = fsub fast float %282, %294
  %304 = fsub fast float %287, %295
  %305 = fsub fast float %292, %296
  %306 = fmul fast float %303, %298
  %307 = fmul fast float %304, %299
  %308 = fmul fast float %305, %300
  %309 = fcmp fast ole float %306, 0.000000e+00
  %310 = fcmp fast ole float %307, 0.000000e+00
  %311 = fcmp fast ole float %308, 0.000000e+00
  %312 = or i1 %309, %310
  %313 = or i1 %311, %312
  %314 = fcmp fast oge float %306, 1.000000e+00
  %315 = fcmp fast oge float %307, 1.000000e+00
  %316 = fcmp fast oge float %308, 1.000000e+00
  %317 = or i1 %314, %315
  %318 = or i1 %316, %317
  %319 = or i1 %313, %318
  br i1 %319, label %1035, label %320, !dx.controlflow.hints !50

; <label>:320                                     ; preds = %190
  %321 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %322 = extractvalue %dx.types.CBufRet.i32 %321, 0
  %323 = fptosi float %303 to i32
  %324 = fptosi float %304 to i32
  %325 = fptosi float %305 to i32
  %326 = and i32 %302, 31
  %327 = ashr i32 %323, %326
  %328 = ashr i32 %324, %326
  %329 = ashr i32 %325, %326
  %330 = mul i32 %322, %328
  %331 = add nsw i32 %330, %327
  %332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %331, i32 0)  ; BufferLoad(srv,index,wot)
  %333 = extractvalue %dx.types.ResRet.i32 %332, 0
  %334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %331, i32 4)  ; BufferLoad(srv,index,wot)
  %335 = extractvalue %dx.types.ResRet.i32 %334, 0
  %336 = icmp slt i32 %329, %333
  %337 = icmp sgt i32 %329, %335
  %338 = or i1 %336, %337
  br i1 %338, label %1035, label %339, !dx.controlflow.hints !51

; <label>:339                                     ; preds = %320
  %340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %331, i32 8)  ; BufferLoad(srv,index,wot)
  %341 = extractvalue %dx.types.ResRet.i32 %340, 0
  %342 = sub i32 %329, %333
  %343 = add nsw i32 %342, %341
  %344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %343, i32 undef)  ; BufferLoad(srv,index,wot)
  %345 = extractvalue %dx.types.ResRet.i32 %344, 0
  %346 = icmp eq i32 %345, -1
  br i1 %346, label %1035, label %347, !dx.controlflow.hints !52

; <label>:347                                     ; preds = %339
  %348 = getelementptr inbounds [8 x i32], [8 x i32]* %30, i32 0, i32 0
  store i32 -1, i32* %348, align 4, !tbaa !53, !noalias !57
  %349 = getelementptr inbounds [8 x i32], [8 x i32]* %30, i32 0, i32 1
  store i32 -1, i32* %349, align 4, !tbaa !53, !noalias !57
  %350 = getelementptr inbounds [8 x i32], [8 x i32]* %30, i32 0, i32 2
  store i32 -1, i32* %350, align 4, !tbaa !53, !noalias !57
  %351 = getelementptr inbounds [8 x i32], [8 x i32]* %30, i32 0, i32 3
  store i32 -1, i32* %351, align 4, !tbaa !53, !noalias !57
  %352 = getelementptr inbounds [8 x i32], [8 x i32]* %30, i32 0, i32 4
  store i32 -1, i32* %352, align 4, !tbaa !53, !noalias !57
  %353 = getelementptr inbounds [8 x i32], [8 x i32]* %30, i32 0, i32 5
  store i32 -1, i32* %353, align 4, !tbaa !53, !noalias !57
  %354 = getelementptr inbounds [8 x i32], [8 x i32]* %30, i32 0, i32 6
  store i32 -1, i32* %354, align 4, !tbaa !53, !noalias !57
  %355 = getelementptr inbounds [8 x i32], [8 x i32]* %30, i32 0, i32 7
  store i32 -1, i32* %355, align 4, !tbaa !53, !noalias !57
  br label %356

; <label>:356                                     ; preds = %460, %347
  %357 = phi i32 [ -1, %347 ], [ %457, %460 ]
  %358 = phi i32 [ -1, %347 ], [ %452, %460 ]
  %359 = phi i32 [ -1, %347 ], [ %445, %460 ]
  %360 = phi i32 [ -1, %347 ], [ %440, %460 ]
  %361 = phi i32 [ -1, %347 ], [ %431, %460 ]
  %362 = phi i32 [ -1, %347 ], [ %426, %460 ]
  %363 = phi i32 [ -1, %347 ], [ %418, %460 ]
  %364 = phi i32 [ -1, %347 ], [ %411, %460 ]
  %365 = phi i32 [ %345, %347 ], [ %480, %460 ]
  %366 = phi i32 [ %302, %347 ], [ %367, %460 ]
  %367 = add nsw i32 %366, -2
  %368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %365, i32 undef)  ; BufferLoad(srv,index,wot)
  %369 = extractvalue %dx.types.ResRet.i32 %368, 0
  %370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %365, i32 undef)  ; BufferLoad(srv,index,wot)
  %371 = extractvalue %dx.types.ResRet.i32 %370, 0
  %372 = and i32 %369, 31
  %373 = shl i32 1, %372
  %374 = add i32 %373, 1
  %375 = and i32 %367, 31
  %376 = ashr i32 %323, %375
  %377 = ashr i32 %324, %375
  %378 = ashr i32 %325, %375
  %379 = and i32 %376, 3
  %380 = and i32 %377, 3
  %381 = and i32 %378, 3
  br label %382

; <label>:382                                     ; preds = %382, %356
  %383 = phi i32 [ %357, %356 ], [ %457, %382 ]
  %384 = phi i32 [ %358, %356 ], [ %452, %382 ]
  %385 = phi i32 [ %359, %356 ], [ %445, %382 ]
  %386 = phi i32 [ %360, %356 ], [ %440, %382 ]
  %387 = phi i32 [ %361, %356 ], [ %431, %382 ]
  %388 = phi i32 [ %362, %356 ], [ %426, %382 ]
  %389 = phi i32 [ %363, %356 ], [ %418, %382 ]
  %390 = phi i32 [ %364, %356 ], [ %411, %382 ]
  %391 = phi i32 [ 0, %356 ], [ %458, %382 ]
  %392 = sub i32 2, %391
  %393 = and i32 %392, 31
  %394 = lshr i32 %379, %393
  %395 = lshr i32 %380, %393
  %396 = lshr i32 %381, %393
  %397 = sub i32 %369, %391
  %398 = and i32 %397, 31
  %399 = shl i32 %394, %398
  %400 = shl i32 %395, %398
  %401 = shl i32 %396, %398
  %402 = shl i32 1, %398
  %403 = mul i32 %401, %374
  %404 = add i32 %403, %400
  %405 = mul i32 %404, %374
  %406 = add i32 %399, %371
  %407 = add i32 %406, %405
  %408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %407, i32 undef)  ; BufferLoad(srv,index,wot)
  %409 = extractvalue %dx.types.ResRet.i32 %408, 0
  %410 = icmp ne i32 %409, -1
  %411 = select i1 %410, i32 %409, i32 %390
  store i32 %411, i32* %348, align 4, !tbaa !53, !noalias !57
  %412 = add i32 %402, %371
  %413 = add i32 %412, %399
  %414 = add i32 %413, %405
  %415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %414, i32 undef)  ; BufferLoad(srv,index,wot)
  %416 = extractvalue %dx.types.ResRet.i32 %415, 0
  %417 = icmp ne i32 %416, -1
  %418 = select i1 %417, i32 %416, i32 %389
  store i32 %418, i32* %349, align 4, !tbaa !53, !noalias !57
  %419 = add i32 %400, %402
  %420 = add i32 %419, %403
  %421 = mul i32 %420, %374
  %422 = add i32 %406, %421
  %423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %422, i32 undef)  ; BufferLoad(srv,index,wot)
  %424 = extractvalue %dx.types.ResRet.i32 %423, 0
  %425 = icmp ne i32 %424, -1
  %426 = select i1 %425, i32 %424, i32 %388
  store i32 %426, i32* %350, align 4, !tbaa !53, !noalias !57
  %427 = add i32 %413, %421
  %428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %427, i32 undef)  ; BufferLoad(srv,index,wot)
  %429 = extractvalue %dx.types.ResRet.i32 %428, 0
  %430 = icmp ne i32 %429, -1
  %431 = select i1 %430, i32 %429, i32 %387
  store i32 %431, i32* %351, align 4, !tbaa !53, !noalias !57
  %432 = add i32 %401, %402
  %433 = mul i32 %432, %374
  %434 = add i32 %433, %400
  %435 = mul i32 %434, %374
  %436 = add i32 %406, %435
  %437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %436, i32 undef)  ; BufferLoad(srv,index,wot)
  %438 = extractvalue %dx.types.ResRet.i32 %437, 0
  %439 = icmp ne i32 %438, -1
  %440 = select i1 %439, i32 %438, i32 %386
  store i32 %440, i32* %352, align 4, !tbaa !53, !noalias !57
  %441 = add i32 %413, %435
  %442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %441, i32 undef)  ; BufferLoad(srv,index,wot)
  %443 = extractvalue %dx.types.ResRet.i32 %442, 0
  %444 = icmp ne i32 %443, -1
  %445 = select i1 %444, i32 %443, i32 %385
  store i32 %445, i32* %353, align 4, !tbaa !53, !noalias !57
  %446 = add i32 %419, %433
  %447 = mul i32 %446, %374
  %448 = add i32 %406, %447
  %449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %448, i32 undef)  ; BufferLoad(srv,index,wot)
  %450 = extractvalue %dx.types.ResRet.i32 %449, 0
  %451 = icmp ne i32 %450, -1
  %452 = select i1 %451, i32 %450, i32 %384
  store i32 %452, i32* %354, align 4, !tbaa !53, !noalias !57
  %453 = add i32 %413, %447
  %454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %453, i32 undef)  ; BufferLoad(srv,index,wot)
  %455 = extractvalue %dx.types.ResRet.i32 %454, 0
  %456 = icmp ne i32 %455, -1
  %457 = select i1 %456, i32 %455, i32 %383
  store i32 %457, i32* %355, align 4, !tbaa !53, !noalias !57
  %458 = add i32 %391, 1
  %459 = icmp ugt i32 %458, %369
  br i1 %459, label %460, label %382

; <label>:460                                     ; preds = %382
  %461 = shl nuw nsw i32 %381, 4
  %462 = shl nuw nsw i32 %380, 2
  %463 = lshr i32 %381, 1
  %464 = and i32 %461, 16
  %465 = or i32 %462, %379
  %466 = or i32 %465, %464
  %467 = shl i32 1, %466
  %468 = shl nuw nsw i32 %463, 2
  %469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %365, i32 %468)  ; BufferLoad(srv,index,wot)
  %470 = extractvalue %dx.types.ResRet.i32 %469, 0
  %471 = and i32 %470, %467
  %472 = icmp eq i32 %471, 0
  %473 = add i32 %467, -1
  %474 = and i32 %470, %473
  %475 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %474)  ; Countbits(value)
  %476 = or i32 %468, 8
  %477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %365, i32 %476)  ; BufferLoad(srv,index,wot)
  %478 = extractvalue %dx.types.ResRet.i32 %477, 0
  %479 = add i32 %478, %475
  %480 = select i1 %472, i32 -1, i32 %479
  %481 = icmp eq i32 %480, -1
  br i1 %481, label %482, label %356

; <label>:482                                     ; preds = %460
  br label %483

; <label>:483                                     ; preds = %769, %482
  %484 = phi i32 [ %771, %769 ], [ %411, %482 ]
  %485 = phi float [ %766, %769 ], [ 0.000000e+00, %482 ]
  %486 = phi i32 [ %767, %769 ], [ 0, %482 ]
  %487 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %484, i32 undef)  ; BufferLoad(srv,index,wot)
  %488 = extractvalue %dx.types.ResRet.f32 %487, 0
  %489 = extractvalue %dx.types.ResRet.f32 %487, 1
  %490 = extractvalue %dx.types.ResRet.f32 %487, 2
  %491 = extractvalue %dx.types.ResRet.f32 %487, 3
  %492 = fsub fast float %282, %488
  %493 = fsub fast float %287, %489
  %494 = fsub fast float %292, %490
  %495 = fmul fast float %492, %491
  %496 = fmul fast float %493, %491
  %497 = fmul fast float %494, %491
  %498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %484, i32 undef)  ; BufferLoad(srv,index,wot)
  %499 = extractvalue %dx.types.ResRet.i32 %498, 0
  %500 = call float @dx.op.unary.f32(i32 6, float %495)  ; FAbs(value)
  %501 = call float @dx.op.unary.f32(i32 6, float %496)  ; FAbs(value)
  %502 = fsub fast float 1.000000e+00, %500
  %503 = fsub fast float 1.000000e+00, %501
  %504 = call float @dx.op.unary.f32(i32 7, float %502)  ; Saturate(value)
  %505 = call float @dx.op.unary.f32(i32 7, float %503)  ; Saturate(value)
  %506 = fmul fast float %505, %504
  %507 = mul i32 %499, 29
  %508 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %507, i32 undef)  ; BufferLoad(srv,index,wot)
  %509 = extractvalue %dx.types.ResRet.f32 %508, 0
  %510 = extractvalue %dx.types.ResRet.f32 %508, 1
  %511 = extractvalue %dx.types.ResRet.f32 %508, 2
  %512 = extractvalue %dx.types.ResRet.f32 %508, 3
  %513 = add i32 %507, 1
  %514 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %513, i32 undef)  ; BufferLoad(srv,index,wot)
  %515 = extractvalue %dx.types.ResRet.f32 %514, 0
  %516 = extractvalue %dx.types.ResRet.f32 %514, 1
  %517 = extractvalue %dx.types.ResRet.f32 %514, 2
  %518 = extractvalue %dx.types.ResRet.f32 %514, 3
  %519 = add i32 %507, 2
  %520 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %519, i32 undef)  ; BufferLoad(srv,index,wot)
  %521 = extractvalue %dx.types.ResRet.f32 %520, 0
  %522 = extractvalue %dx.types.ResRet.f32 %520, 1
  %523 = extractvalue %dx.types.ResRet.f32 %520, 2
  %524 = extractvalue %dx.types.ResRet.f32 %520, 3
  %525 = add i32 %507, 3
  %526 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %527 = extractvalue %dx.types.ResRet.f32 %526, 0
  %528 = extractvalue %dx.types.ResRet.f32 %526, 1
  %529 = extractvalue %dx.types.ResRet.f32 %526, 2
  %530 = extractvalue %dx.types.ResRet.f32 %526, 3
  %531 = add i32 %507, 4
  %532 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %531, i32 undef)  ; BufferLoad(srv,index,wot)
  %533 = extractvalue %dx.types.ResRet.f32 %532, 0
  %534 = extractvalue %dx.types.ResRet.f32 %532, 1
  %535 = extractvalue %dx.types.ResRet.f32 %532, 2
  %536 = extractvalue %dx.types.ResRet.f32 %532, 3
  %537 = add i32 %507, 5
  %538 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %539 = extractvalue %dx.types.ResRet.f32 %538, 0
  %540 = extractvalue %dx.types.ResRet.f32 %538, 1
  %541 = extractvalue %dx.types.ResRet.f32 %538, 2
  %542 = extractvalue %dx.types.ResRet.f32 %538, 3
  %543 = add i32 %507, 6
  %544 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %543, i32 undef)  ; BufferLoad(srv,index,wot)
  %545 = extractvalue %dx.types.ResRet.f32 %544, 0
  %546 = extractvalue %dx.types.ResRet.f32 %544, 1
  %547 = extractvalue %dx.types.ResRet.f32 %544, 2
  %548 = extractvalue %dx.types.ResRet.f32 %544, 3
  %549 = add i32 %507, 7
  %550 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %549, i32 undef)  ; BufferLoad(srv,index,wot)
  %551 = extractvalue %dx.types.ResRet.f32 %550, 0
  %552 = extractvalue %dx.types.ResRet.f32 %550, 1
  %553 = extractvalue %dx.types.ResRet.f32 %550, 2
  %554 = extractvalue %dx.types.ResRet.f32 %550, 3
  %555 = fmul fast float %509, %495
  %556 = fmul fast float %521, %496
  %557 = fadd fast float %556, %555
  %558 = fmul fast float %533, %497
  %559 = fadd fast float %557, %558
  %560 = fmul fast float %510, %495
  %561 = fmul fast float %522, %496
  %562 = fadd fast float %561, %560
  %563 = fmul fast float %534, %497
  %564 = fadd fast float %562, %563
  %565 = fmul fast float %511, %495
  %566 = fmul fast float %523, %496
  %567 = fadd fast float %566, %565
  %568 = fmul fast float %535, %497
  %569 = fadd fast float %567, %568
  %570 = fmul fast float %512, %495
  %571 = fmul fast float %524, %496
  %572 = fadd fast float %571, %570
  %573 = fmul fast float %536, %497
  %574 = fadd fast float %572, %573
  %575 = fmul fast float %515, %495
  %576 = fmul fast float %527, %496
  %577 = fadd fast float %576, %575
  %578 = fmul fast float %539, %497
  %579 = fadd fast float %577, %578
  %580 = fmul fast float %516, %495
  %581 = fmul fast float %528, %496
  %582 = fadd fast float %581, %580
  %583 = fmul fast float %540, %497
  %584 = fadd fast float %582, %583
  %585 = fmul fast float %517, %495
  %586 = fmul fast float %529, %496
  %587 = fadd fast float %586, %585
  %588 = fmul fast float %541, %497
  %589 = fadd fast float %587, %588
  %590 = fmul fast float %518, %495
  %591 = fmul fast float %530, %496
  %592 = fadd fast float %591, %590
  %593 = fmul fast float %542, %497
  %594 = fadd fast float %592, %593
  %595 = fadd fast float %559, %545
  %596 = fadd fast float %564, %546
  %597 = fadd fast float %569, %547
  %598 = fadd fast float %574, %548
  %599 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %595)  ; FMax(a,b)
  %600 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %596)  ; FMax(a,b)
  %601 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %597)  ; FMax(a,b)
  %602 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %598)  ; FMax(a,b)
  %603 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %595)  ; FMin(a,b)
  %604 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %596)  ; FMin(a,b)
  %605 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %597)  ; FMin(a,b)
  %606 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %598)  ; FMin(a,b)
  %607 = fmul fast float %603, 0x3F847AE140000000
  %608 = fmul fast float %604, 0x3F847AE140000000
  %609 = fmul fast float %605, 0x3F847AE140000000
  %610 = fmul fast float %606, 0x3F847AE140000000
  %611 = fadd fast float %607, %599
  %612 = fadd fast float %608, %600
  %613 = fadd fast float %609, %601
  %614 = fadd fast float %610, %602
  %615 = fadd fast float %579, %551
  %616 = fadd fast float %584, %552
  %617 = fadd fast float %589, %553
  %618 = fadd fast float %594, %554
  %619 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %615)  ; FMax(a,b)
  %620 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %616)  ; FMax(a,b)
  %621 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %617)  ; FMax(a,b)
  %622 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %618)  ; FMax(a,b)
  %623 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %615)  ; FMin(a,b)
  %624 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %616)  ; FMin(a,b)
  %625 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %617)  ; FMin(a,b)
  %626 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %618)  ; FMin(a,b)
  %627 = fmul fast float %623, 0x3F847AE140000000
  %628 = fmul fast float %624, 0x3F847AE140000000
  %629 = fmul fast float %625, 0x3F847AE140000000
  %630 = fmul fast float %626, 0x3F847AE140000000
  %631 = fadd fast float %627, %619
  %632 = fadd fast float %628, %620
  %633 = fadd fast float %629, %621
  %634 = fadd fast float %630, %622
  br label %635

; <label>:635                                     ; preds = %635, %483
  %636 = phi i32 [ 0, %483 ], [ %656, %635 ]
  %637 = add i32 %507, 8
  %638 = shl i32 %636, 1
  %639 = add i32 %637, %638
  %640 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %639, i32 undef)  ; BufferLoad(srv,index,wot)
  %641 = extractvalue %dx.types.ResRet.f32 %640, 0
  %642 = extractvalue %dx.types.ResRet.f32 %640, 1
  %643 = extractvalue %dx.types.ResRet.f32 %640, 2
  %644 = extractvalue %dx.types.ResRet.f32 %640, 3
  %645 = add i32 %507, 9
  %646 = add i32 %645, %638
  %647 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %646, i32 undef)  ; BufferLoad(srv,index,wot)
  %648 = extractvalue %dx.types.ResRet.f32 %647, 0
  %649 = extractvalue %dx.types.ResRet.f32 %647, 1
  %650 = extractvalue %dx.types.ResRet.f32 %647, 2
  %651 = extractvalue %dx.types.ResRet.f32 %647, 3
  %652 = call float @dx.op.dot4.f32(i32 56, float %641, float %642, float %643, float %644, float %611, float %612, float %613, float %614)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %653 = call float @dx.op.dot4.f32(i32 56, float %648, float %649, float %650, float %651, float %631, float %632, float %633, float %634)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %654 = fadd fast float %653, %652
  %655 = getelementptr inbounds [8 x float], [8 x float]* %29, i32 0, i32 %636
  store float %654, float* %655, align 4, !tbaa !63, !noalias !57
  %656 = add nuw nsw i32 %636, 1
  %657 = icmp eq i32 %656, 8
  br i1 %657, label %658, label %635

; <label>:658                                     ; preds = %635
  %659 = call float @dx.op.unary.f32(i32 6, float %497)  ; FAbs(value)
  %660 = fsub fast float 1.000000e+00, %659
  %661 = call float @dx.op.unary.f32(i32 7, float %660)  ; Saturate(value)
  %662 = fmul fast float %506, %661
  %663 = add i32 %507, 24
  %664 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %663, i32 undef)  ; BufferLoad(srv,index,wot)
  %665 = extractvalue %dx.types.ResRet.f32 %664, 0
  %666 = extractvalue %dx.types.ResRet.f32 %664, 1
  %667 = extractvalue %dx.types.ResRet.f32 %664, 2
  %668 = extractvalue %dx.types.ResRet.f32 %664, 3
  %669 = add i32 %507, 25
  %670 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %669, i32 undef)  ; BufferLoad(srv,index,wot)
  %671 = extractvalue %dx.types.ResRet.f32 %670, 0
  %672 = extractvalue %dx.types.ResRet.f32 %670, 1
  %673 = extractvalue %dx.types.ResRet.f32 %670, 2
  %674 = extractvalue %dx.types.ResRet.f32 %670, 3
  %675 = getelementptr inbounds [8 x float], [8 x float]* %29, i32 0, i32 0
  %676 = load float, float* %675, align 4, !tbaa !63, !noalias !57
  %677 = fadd fast float %676, %665
  %678 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %677)  ; FMax(a,b)
  %679 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %677)  ; FMin(a,b)
  %680 = fmul fast float %679, 0x3F847AE140000000
  %681 = fadd fast float %680, %678
  store float %681, float* %675, align 4, !tbaa !63, !noalias !57
  %682 = getelementptr inbounds [8 x float], [8 x float]* %29, i32 0, i32 1
  %683 = load float, float* %682, align 4, !tbaa !63, !noalias !57
  %684 = fadd fast float %683, %666
  %685 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %684)  ; FMax(a,b)
  %686 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %684)  ; FMin(a,b)
  %687 = fmul fast float %686, 0x3F847AE140000000
  %688 = fadd fast float %687, %685
  store float %688, float* %682, align 4, !tbaa !63, !noalias !57
  %689 = getelementptr inbounds [8 x float], [8 x float]* %29, i32 0, i32 2
  %690 = load float, float* %689, align 4, !tbaa !63, !noalias !57
  %691 = fadd fast float %690, %667
  %692 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %691)  ; FMax(a,b)
  %693 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %691)  ; FMin(a,b)
  %694 = fmul fast float %693, 0x3F847AE140000000
  %695 = fadd fast float %694, %692
  store float %695, float* %689, align 4, !tbaa !63, !noalias !57
  %696 = getelementptr inbounds [8 x float], [8 x float]* %29, i32 0, i32 3
  %697 = load float, float* %696, align 4, !tbaa !63, !noalias !57
  %698 = fadd fast float %697, %668
  %699 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %698)  ; FMax(a,b)
  %700 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %698)  ; FMin(a,b)
  %701 = fmul fast float %700, 0x3F847AE140000000
  %702 = fadd fast float %701, %699
  store float %702, float* %696, align 4, !tbaa !63, !noalias !57
  %703 = getelementptr inbounds [8 x float], [8 x float]* %29, i32 0, i32 4
  %704 = load float, float* %703, align 4, !tbaa !63, !noalias !57
  %705 = fadd fast float %704, %671
  %706 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %705)  ; FMax(a,b)
  %707 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %705)  ; FMin(a,b)
  %708 = fmul fast float %707, 0x3F847AE140000000
  %709 = fadd fast float %708, %706
  store float %709, float* %703, align 4, !tbaa !63, !noalias !57
  %710 = getelementptr inbounds [8 x float], [8 x float]* %29, i32 0, i32 5
  %711 = load float, float* %710, align 4, !tbaa !63, !noalias !57
  %712 = fadd fast float %711, %672
  %713 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %712)  ; FMax(a,b)
  %714 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %712)  ; FMin(a,b)
  %715 = fmul fast float %714, 0x3F847AE140000000
  %716 = fadd fast float %715, %713
  store float %716, float* %710, align 4, !tbaa !63, !noalias !57
  %717 = getelementptr inbounds [8 x float], [8 x float]* %29, i32 0, i32 6
  %718 = load float, float* %717, align 4, !tbaa !63, !noalias !57
  %719 = fadd fast float %718, %673
  %720 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %719)  ; FMax(a,b)
  %721 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %719)  ; FMin(a,b)
  %722 = fmul fast float %721, 0x3F847AE140000000
  %723 = fadd fast float %722, %720
  store float %723, float* %717, align 4, !tbaa !63, !noalias !57
  %724 = getelementptr inbounds [8 x float], [8 x float]* %29, i32 0, i32 7
  %725 = load float, float* %724, align 4, !tbaa !63, !noalias !57
  %726 = fadd fast float %725, %674
  %727 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %726)  ; FMax(a,b)
  %728 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %726)  ; FMin(a,b)
  %729 = fmul fast float %728, 0x3F847AE140000000
  %730 = fadd fast float %729, %727
  store float %730, float* %724, align 4, !tbaa !63, !noalias !57
  %731 = add i32 %507, 26
  %732 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %731, i32 undef)  ; BufferLoad(srv,index,wot)
  %733 = extractvalue %dx.types.ResRet.f32 %732, 0
  %734 = extractvalue %dx.types.ResRet.f32 %732, 1
  %735 = extractvalue %dx.types.ResRet.f32 %732, 2
  %736 = extractvalue %dx.types.ResRet.f32 %732, 3
  %737 = add i32 %507, 27
  %738 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %737, i32 undef)  ; BufferLoad(srv,index,wot)
  %739 = extractvalue %dx.types.ResRet.f32 %738, 0
  %740 = extractvalue %dx.types.ResRet.f32 %738, 1
  %741 = extractvalue %dx.types.ResRet.f32 %738, 2
  %742 = extractvalue %dx.types.ResRet.f32 %738, 3
  %743 = fmul fast float %681, %733
  %744 = fmul fast float %688, %734
  %745 = fadd fast float %744, %743
  %746 = fmul fast float %695, %735
  %747 = fadd fast float %745, %746
  %748 = fmul fast float %702, %736
  %749 = fadd fast float %747, %748
  %750 = fmul fast float %709, %739
  %751 = fadd fast float %749, %750
  %752 = fmul fast float %716, %740
  %753 = fadd fast float %751, %752
  %754 = fmul fast float %723, %741
  %755 = fadd fast float %753, %754
  %756 = fmul fast float %730, %742
  %757 = fadd fast float %755, %756
  %758 = add i32 %507, 28
  %759 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %758, i32 undef)  ; BufferLoad(srv,index,wot)
  %760 = extractvalue %dx.types.ResRet.f32 %759, 0
  %761 = fadd fast float %757, %760
  %762 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %761)  ; FMax(a,b)
  %763 = fmul fast float %662, %762
  %764 = call float @dx.op.unary.f32(i32 7, float %763)  ; Saturate(value)
  %765 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 %486
  store float %764, float* %765, align 4, !tbaa !63, !noalias !57
  %766 = fadd fast float %764, %485
  %767 = add nuw nsw i32 %486, 1
  %768 = icmp eq i32 %767, 8
  br i1 %768, label %772, label %769

; <label>:769                                     ; preds = %658
  %770 = getelementptr inbounds [8 x i32], [8 x i32]* %30, i32 0, i32 %767
  %771 = load i32, i32* %770, align 4, !tbaa !53, !noalias !57
  br label %483

; <label>:772                                     ; preds = %658
  %773 = fcmp fast ugt float %766, 0x3EE4F8B580000000
  br i1 %773, label %774, label %1035, !dx.controlflow.hints !65

; <label>:774                                     ; preds = %772
  %775 = fcmp fast ogt float %766, 0x3EE4F8B580000000
  %776 = fdiv fast float 1.000000e+00, %766
  %777 = select i1 %775, float %776, float 1.000000e+00
  %778 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 0
  %779 = load float, float* %778, align 4, !tbaa !63, !noalias !57
  %780 = fmul fast float %779, %777
  store float %780, float* %778, align 4, !tbaa !63, !noalias !57
  %781 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 1
  %782 = load float, float* %781, align 4, !tbaa !63, !noalias !57
  %783 = fmul fast float %782, %777
  store float %783, float* %781, align 4, !tbaa !63, !noalias !57
  %784 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 2
  %785 = load float, float* %784, align 4, !tbaa !63, !noalias !57
  %786 = fmul fast float %785, %777
  store float %786, float* %784, align 4, !tbaa !63, !noalias !57
  %787 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 3
  %788 = load float, float* %787, align 4, !tbaa !63, !noalias !57
  %789 = fmul fast float %788, %777
  store float %789, float* %787, align 4, !tbaa !63, !noalias !57
  %790 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 4
  %791 = load float, float* %790, align 4, !tbaa !63, !noalias !57
  %792 = fmul fast float %791, %777
  store float %792, float* %790, align 4, !tbaa !63, !noalias !57
  %793 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 5
  %794 = load float, float* %793, align 4, !tbaa !63, !noalias !57
  %795 = fmul fast float %794, %777
  store float %795, float* %793, align 4, !tbaa !63, !noalias !57
  %796 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 6
  %797 = load float, float* %796, align 4, !tbaa !63, !noalias !57
  %798 = fmul fast float %797, %777
  store float %798, float* %796, align 4, !tbaa !63, !noalias !57
  %799 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 7
  %800 = load float, float* %799, align 4, !tbaa !63, !noalias !57
  %801 = fmul fast float %800, %777
  store float %801, float* %799, align 4, !tbaa !63, !noalias !57
  br label %802

; <label>:802                                     ; preds = %1029, %774
  %803 = phi float [ %1033, %1029 ], [ %780, %774 ]
  %804 = phi i32 [ %1031, %1029 ], [ %411, %774 ]
  %805 = phi float [ %984, %1029 ], [ 0.000000e+00, %774 ]
  %806 = phi float [ %982, %1029 ], [ 0.000000e+00, %774 ]
  %807 = phi float [ %980, %1029 ], [ 0.000000e+00, %774 ]
  %808 = phi float [ %976, %1029 ], [ 0.000000e+00, %774 ]
  %809 = phi float [ %974, %1029 ], [ 0.000000e+00, %774 ]
  %810 = phi float [ %970, %1029 ], [ 0.000000e+00, %774 ]
  %811 = phi float [ %968, %1029 ], [ 0.000000e+00, %774 ]
  %812 = phi float [ %966, %1029 ], [ 0.000000e+00, %774 ]
  %813 = phi float [ %962, %1029 ], [ 0.000000e+00, %774 ]
  %814 = phi float [ %1005, %1029 ], [ 0.000000e+00, %774 ]
  %815 = phi float [ %1003, %1029 ], [ 0.000000e+00, %774 ]
  %816 = phi float [ %1001, %1029 ], [ 0.000000e+00, %774 ]
  %817 = phi float [ %998, %1029 ], [ 0.000000e+00, %774 ]
  %818 = phi float [ %996, %1029 ], [ 0.000000e+00, %774 ]
  %819 = phi float [ %993, %1029 ], [ 0.000000e+00, %774 ]
  %820 = phi float [ %991, %1029 ], [ 0.000000e+00, %774 ]
  %821 = phi float [ %989, %1029 ], [ 0.000000e+00, %774 ]
  %822 = phi float [ %986, %1029 ], [ 0.000000e+00, %774 ]
  %823 = phi float [ %1026, %1029 ], [ 0.000000e+00, %774 ]
  %824 = phi float [ %1024, %1029 ], [ 0.000000e+00, %774 ]
  %825 = phi float [ %1022, %1029 ], [ 0.000000e+00, %774 ]
  %826 = phi float [ %1019, %1029 ], [ 0.000000e+00, %774 ]
  %827 = phi float [ %1017, %1029 ], [ 0.000000e+00, %774 ]
  %828 = phi float [ %1014, %1029 ], [ 0.000000e+00, %774 ]
  %829 = phi float [ %1012, %1029 ], [ 0.000000e+00, %774 ]
  %830 = phi float [ %1010, %1029 ], [ 0.000000e+00, %774 ]
  %831 = phi float [ %1007, %1029 ], [ 0.000000e+00, %774 ]
  %832 = phi i32 [ %1027, %1029 ], [ 0, %774 ]
  %833 = shl i32 %804, 5
  %834 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %833, i32 undef)  ; BufferLoad(srv,index,wot)
  %835 = extractvalue %dx.types.ResRet.i32 %834, 0
  %836 = extractvalue %dx.types.ResRet.i32 %834, 1
  %837 = extractvalue %dx.types.ResRet.i32 %834, 2
  %838 = extractvalue %dx.types.ResRet.i32 %834, 3
  %839 = or i32 %833, 16
  %840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %839, i32 undef)  ; BufferLoad(srv,index,wot)
  %841 = extractvalue %dx.types.ResRet.i32 %840, 0
  %842 = extractvalue %dx.types.ResRet.i32 %840, 1
  %843 = extractvalue %dx.types.ResRet.i32 %840, 2
  %844 = shl i32 %835, 4
  %845 = and i32 %844, 32752
  %846 = call float @dx.op.legacyF16ToF32(i32 131, i32 %845)  ; LegacyF16ToF32(value)
  %847 = lshr i32 %835, 7
  %848 = and i32 %847, 32752
  %849 = call float @dx.op.legacyF16ToF32(i32 131, i32 %848)  ; LegacyF16ToF32(value)
  %850 = lshr i32 %835, 22
  %851 = shl nuw nsw i32 %850, 5
  %852 = call float @dx.op.legacyF16ToF32(i32 131, i32 %851)  ; LegacyF16ToF32(value)
  %853 = and i32 %836, 255
  %854 = uitofp i32 %853 to float
  %855 = fmul fast float %854, 0x3F80204080000000
  %856 = fadd fast float %855, -1.000000e+00
  %857 = lshr i32 %836, 8
  %858 = and i32 %857, 255
  %859 = uitofp i32 %858 to float
  %860 = fmul fast float %859, 0x3F80204080000000
  %861 = fadd fast float %860, -1.000000e+00
  %862 = lshr i32 %836, 16
  %863 = and i32 %862, 255
  %864 = uitofp i32 %863 to float
  %865 = fmul fast float %864, 0x3F80204080000000
  %866 = fadd fast float %865, -1.000000e+00
  %867 = lshr i32 %836, 24
  %868 = uitofp i32 %867 to float
  %869 = fmul fast float %868, 0x3F80204080000000
  %870 = fadd fast float %869, -1.000000e+00
  %871 = and i32 %837, 255
  %872 = uitofp i32 %871 to float
  %873 = fmul fast float %872, 0x3F80204080000000
  %874 = fadd fast float %873, -1.000000e+00
  %875 = lshr i32 %837, 8
  %876 = and i32 %875, 255
  %877 = uitofp i32 %876 to float
  %878 = fmul fast float %877, 0x3F80204080000000
  %879 = fadd fast float %878, -1.000000e+00
  %880 = lshr i32 %837, 16
  %881 = and i32 %880, 255
  %882 = uitofp i32 %881 to float
  %883 = fmul fast float %882, 0x3F80204080000000
  %884 = fadd fast float %883, -1.000000e+00
  %885 = lshr i32 %837, 24
  %886 = uitofp i32 %885 to float
  %887 = fmul fast float %886, 0x3F80204080000000
  %888 = fadd fast float %887, -1.000000e+00
  %889 = and i32 %838, 255
  %890 = uitofp i32 %889 to float
  %891 = fmul fast float %890, 0x3F80204080000000
  %892 = fadd fast float %891, -1.000000e+00
  %893 = lshr i32 %838, 8
  %894 = and i32 %893, 255
  %895 = uitofp i32 %894 to float
  %896 = fmul fast float %895, 0x3F80204080000000
  %897 = fadd fast float %896, -1.000000e+00
  %898 = lshr i32 %838, 16
  %899 = and i32 %898, 255
  %900 = uitofp i32 %899 to float
  %901 = fmul fast float %900, 0x3F80204080000000
  %902 = fadd fast float %901, -1.000000e+00
  %903 = lshr i32 %838, 24
  %904 = uitofp i32 %903 to float
  %905 = fmul fast float %904, 0x3F80204080000000
  %906 = fadd fast float %905, -1.000000e+00
  %907 = and i32 %841, 255
  %908 = uitofp i32 %907 to float
  %909 = fmul fast float %908, 0x3F80204080000000
  %910 = fadd fast float %909, -1.000000e+00
  %911 = lshr i32 %841, 8
  %912 = and i32 %911, 255
  %913 = uitofp i32 %912 to float
  %914 = fmul fast float %913, 0x3F80204080000000
  %915 = fadd fast float %914, -1.000000e+00
  %916 = lshr i32 %841, 16
  %917 = and i32 %916, 255
  %918 = uitofp i32 %917 to float
  %919 = fmul fast float %918, 0x3F80204080000000
  %920 = fadd fast float %919, -1.000000e+00
  %921 = lshr i32 %841, 24
  %922 = uitofp i32 %921 to float
  %923 = fmul fast float %922, 0x3F80204080000000
  %924 = fadd fast float %923, -1.000000e+00
  %925 = and i32 %842, 255
  %926 = uitofp i32 %925 to float
  %927 = fmul fast float %926, 0x3F80204080000000
  %928 = fadd fast float %927, -1.000000e+00
  %929 = lshr i32 %842, 8
  %930 = and i32 %929, 255
  %931 = uitofp i32 %930 to float
  %932 = fmul fast float %931, 0x3F80204080000000
  %933 = fadd fast float %932, -1.000000e+00
  %934 = lshr i32 %842, 16
  %935 = and i32 %934, 255
  %936 = uitofp i32 %935 to float
  %937 = fmul fast float %936, 0x3F80204080000000
  %938 = fadd fast float %937, -1.000000e+00
  %939 = lshr i32 %842, 24
  %940 = uitofp i32 %939 to float
  %941 = fmul fast float %940, 0x3F80204080000000
  %942 = fadd fast float %941, -1.000000e+00
  %943 = and i32 %843, 255
  %944 = uitofp i32 %943 to float
  %945 = fmul fast float %944, 0x3F80204080000000
  %946 = fadd fast float %945, -1.000000e+00
  %947 = lshr i32 %843, 8
  %948 = and i32 %947, 255
  %949 = uitofp i32 %948 to float
  %950 = fmul fast float %949, 0x3F80204080000000
  %951 = fadd fast float %950, -1.000000e+00
  %952 = lshr i32 %843, 16
  %953 = and i32 %952, 255
  %954 = uitofp i32 %953 to float
  %955 = fmul fast float %954, 0x3F80204080000000
  %956 = fadd fast float %955, -1.000000e+00
  %957 = lshr i32 %843, 24
  %958 = uitofp i32 %957 to float
  %959 = fmul fast float %958, 0x3F80204080000000
  %960 = fadd fast float %959, -1.000000e+00
  %961 = fmul fast float %846, %803
  %962 = fadd fast float %961, %813
  %963 = fmul fast float %803, 0x3FFBB67AE0000000
  %964 = fmul fast float %963, %846
  %965 = fmul fast float %964, %856
  %966 = fadd fast float %965, %812
  %967 = fmul fast float %964, %861
  %968 = fadd fast float %967, %811
  %969 = fmul fast float %964, %866
  %970 = fadd fast float %969, %810
  %971 = fmul fast float %803, 0x3FFEFBDEC0000000
  %972 = fmul fast float %971, %846
  %973 = fmul fast float %972, %870
  %974 = fadd fast float %973, %809
  %975 = fmul fast float %972, %874
  %976 = fadd fast float %975, %808
  %977 = fmul fast float %803, 0x4001E377A0000000
  %978 = fmul fast float %977, %846
  %979 = fmul fast float %978, %879
  %980 = fadd fast float %979, %807
  %981 = fmul fast float %972, %884
  %982 = fadd fast float %981, %806
  %983 = fmul fast float %972, %888
  %984 = fadd fast float %983, %805
  %985 = fmul fast float %849, %803
  %986 = fadd fast float %985, %822
  %987 = fmul fast float %963, %849
  %988 = fmul fast float %987, %892
  %989 = fadd fast float %988, %821
  %990 = fmul fast float %987, %897
  %991 = fadd fast float %990, %820
  %992 = fmul fast float %987, %902
  %993 = fadd fast float %992, %819
  %994 = fmul fast float %971, %849
  %995 = fmul fast float %994, %906
  %996 = fadd fast float %995, %818
  %997 = fmul fast float %994, %910
  %998 = fadd fast float %997, %817
  %999 = fmul fast float %977, %849
  %1000 = fmul fast float %999, %915
  %1001 = fadd fast float %1000, %816
  %1002 = fmul fast float %994, %920
  %1003 = fadd fast float %1002, %815
  %1004 = fmul fast float %994, %924
  %1005 = fadd fast float %1004, %814
  %1006 = fmul fast float %852, %803
  %1007 = fadd fast float %1006, %831
  %1008 = fmul fast float %963, %852
  %1009 = fmul fast float %1008, %928
  %1010 = fadd fast float %1009, %830
  %1011 = fmul fast float %1008, %933
  %1012 = fadd fast float %1011, %829
  %1013 = fmul fast float %1008, %938
  %1014 = fadd fast float %1013, %828
  %1015 = fmul fast float %971, %852
  %1016 = fmul fast float %1015, %942
  %1017 = fadd fast float %1016, %827
  %1018 = fmul fast float %1015, %946
  %1019 = fadd fast float %1018, %826
  %1020 = fmul fast float %977, %852
  %1021 = fmul fast float %1020, %951
  %1022 = fadd fast float %1021, %825
  %1023 = fmul fast float %1015, %956
  %1024 = fadd fast float %1023, %824
  %1025 = fmul fast float %1015, %960
  %1026 = fadd fast float %1025, %823
  %1027 = add nuw nsw i32 %832, 1
  %1028 = icmp eq i32 %1027, 8
  br i1 %1028, label %1034, label %1029

; <label>:1029                                    ; preds = %802
  %1030 = getelementptr inbounds [8 x i32], [8 x i32]* %30, i32 0, i32 %1027
  %1031 = load i32, i32* %1030, align 4, !tbaa !53, !noalias !57
  %1032 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 %1027
  %1033 = load float, float* %1032, align 4, !tbaa !63, !noalias !57
  br label %802

; <label>:1034                                    ; preds = %802
  br label %1035

; <label>:1035                                    ; preds = %1034, %772, %339, %320, %190
  %1036 = phi float [ 0.000000e+00, %190 ], [ 0.000000e+00, %320 ], [ 0.000000e+00, %339 ], [ 0.000000e+00, %772 ], [ %984, %1034 ]
  %1037 = phi float [ 0.000000e+00, %190 ], [ 0.000000e+00, %320 ], [ 0.000000e+00, %339 ], [ 0.000000e+00, %772 ], [ %982, %1034 ]
  %1038 = phi float [ 0.000000e+00, %190 ], [ 0.000000e+00, %320 ], [ 0.000000e+00, %339 ], [ 0.000000e+00, %772 ], [ %980, %1034 ]
  %1039 = phi float [ 0.000000e+00, %190 ], [ 0.000000e+00, %320 ], [ 0.000000e+00, %339 ], [ 0.000000e+00, %772 ], [ %976, %1034 ]
  %1040 = phi float [ 0.000000e+00, %190 ], [ 0.000000e+00, %320 ], [ 0.000000e+00, %339 ], [ 0.000000e+00, %772 ], [ %974, %1034 ]
  %1041 = phi float [ 0.000000e+00, %190 ], [ 0.000000e+00, %320 ], [ 0.000000e+00, %339 ], [ 0.000000e+00, %772 ], [ %970, %1034 ]
  %1042 = phi float [ 0.000000e+00, %190 ], [ 0.000000e+00, %320 ], [ 0.000000e+00, %339 ], [ 0.000000e+00, %772 ], [ %968, %1034 ]
  %1043 = phi float [ 0.000000e+00, %190 ], [ 0.000000e+00, %320 ], [ 0.000000e+00, %339 ], [ 0.000000e+00, %772 ], [ %966, %1034 ]
  %1044 = phi float [ 0.000000e+00, %190 ], [ 0.000000e+00, %320 ], [ 0.000000e+00, %339 ], [ 0.000000e+00, %772 ], [ %962, %1034 ]
  %1045 = phi float [ 0.000000e+00, %190 ], [ 0.000000e+00, %320 ], [ 0.000000e+00, %339 ], [ 0.000000e+00, %772 ], [ %1005, %1034 ]
  %1046 = phi float [ 0.000000e+00, %190 ], [ 0.000000e+00, %320 ], [ 0.000000e+00, %339 ], [ 0.000000e+00, %772 ], [ %1003, %1034 ]
  %1047 = phi float [ 0.000000e+00, %190 ], [ 0.000000e+00, %320 ], [ 0.000000e+00, %339 ], [ 0.000000e+00, %772 ], [ %1001, %1034 ]
  %1048 = phi float [ 0.000000e+00, %190 ], [ 0.000000e+00, %320 ], [ 0.000000e+00, %339 ], [ 0.000000e+00, %772 ], [ %998, %1034 ]
  %1049 = phi float [ 0.000000e+00, %190 ], [ 0.000000e+00, %320 ], [ 0.000000e+00, %339 ], [ 0.000000e+00, %772 ], [ %996, %1034 ]
  %1050 = phi float [ 0.000000e+00, %190 ], [ 0.000000e+00, %320 ], [ 0.000000e+00, %339 ], [ 0.000000e+00, %772 ], [ %993, %1034 ]
  %1051 = phi float [ 0.000000e+00, %190 ], [ 0.000000e+00, %320 ], [ 0.000000e+00, %339 ], [ 0.000000e+00, %772 ], [ %991, %1034 ]
  %1052 = phi float [ 0.000000e+00, %190 ], [ 0.000000e+00, %320 ], [ 0.000000e+00, %339 ], [ 0.000000e+00, %772 ], [ %989, %1034 ]
  %1053 = phi float [ 0.000000e+00, %190 ], [ 0.000000e+00, %320 ], [ 0.000000e+00, %339 ], [ 0.000000e+00, %772 ], [ %986, %1034 ]
  %1054 = phi float [ 0.000000e+00, %190 ], [ 0.000000e+00, %320 ], [ 0.000000e+00, %339 ], [ 0.000000e+00, %772 ], [ %1026, %1034 ]
  %1055 = phi float [ 0.000000e+00, %190 ], [ 0.000000e+00, %320 ], [ 0.000000e+00, %339 ], [ 0.000000e+00, %772 ], [ %1024, %1034 ]
  %1056 = phi float [ 0.000000e+00, %190 ], [ 0.000000e+00, %320 ], [ 0.000000e+00, %339 ], [ 0.000000e+00, %772 ], [ %1022, %1034 ]
  %1057 = phi float [ 0.000000e+00, %190 ], [ 0.000000e+00, %320 ], [ 0.000000e+00, %339 ], [ 0.000000e+00, %772 ], [ %1019, %1034 ]
  %1058 = phi float [ 0.000000e+00, %190 ], [ 0.000000e+00, %320 ], [ 0.000000e+00, %339 ], [ 0.000000e+00, %772 ], [ %1017, %1034 ]
  %1059 = phi float [ 0.000000e+00, %190 ], [ 0.000000e+00, %320 ], [ 0.000000e+00, %339 ], [ 0.000000e+00, %772 ], [ %1014, %1034 ]
  %1060 = phi float [ 0.000000e+00, %190 ], [ 0.000000e+00, %320 ], [ 0.000000e+00, %339 ], [ 0.000000e+00, %772 ], [ %1012, %1034 ]
  %1061 = phi float [ 0.000000e+00, %190 ], [ 0.000000e+00, %320 ], [ 0.000000e+00, %339 ], [ 0.000000e+00, %772 ], [ %1010, %1034 ]
  %1062 = phi float [ 0.000000e+00, %190 ], [ 0.000000e+00, %320 ], [ 0.000000e+00, %339 ], [ 0.000000e+00, %772 ], [ %1007, %1034 ]
  %1063 = phi i1 [ false, %190 ], [ false, %320 ], [ false, %339 ], [ false, %772 ], [ true, %1034 ]
  %1064 = phi float [ 1.000000e+00, %190 ], [ 1.000000e+00, %320 ], [ 1.000000e+00, %339 ], [ 0.000000e+00, %772 ], [ 1.000000e+00, %1034 ]
  br i1 %1063, label %1141, label %1065, !dx.controlflow.hints !66

; <label>:1065                                    ; preds = %1035
  %1066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %1067 = extractvalue %dx.types.ResRet.i32 %1066, 0
  %1068 = extractvalue %dx.types.ResRet.i32 %1066, 1
  %1069 = extractvalue %dx.types.ResRet.i32 %1066, 2
  %1070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %1071 = extractvalue %dx.types.ResRet.i32 %1070, 0
  %1072 = extractvalue %dx.types.ResRet.i32 %1070, 1
  %1073 = extractvalue %dx.types.ResRet.i32 %1070, 2
  %1074 = extractvalue %dx.types.ResRet.i32 %1070, 3
  %1075 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %1076 = extractvalue %dx.types.ResRet.i32 %1075, 0
  %1077 = extractvalue %dx.types.ResRet.i32 %1075, 1
  %1078 = extractvalue %dx.types.ResRet.i32 %1075, 2
  %1079 = extractvalue %dx.types.ResRet.i32 %1075, 3
  %1080 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %1081 = extractvalue %dx.types.ResRet.i32 %1080, 0
  %1082 = extractvalue %dx.types.ResRet.i32 %1080, 1
  %1083 = extractvalue %dx.types.ResRet.i32 %1080, 2
  %1084 = extractvalue %dx.types.ResRet.i32 %1080, 3
  %1085 = and i32 %1081, 65535
  %1086 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1085)  ; LegacyF16ToF32(value)
  %1087 = lshr i32 %1081, 16
  %1088 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1087)  ; LegacyF16ToF32(value)
  %1089 = and i32 %1082, 65535
  %1090 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1089)  ; LegacyF16ToF32(value)
  %1091 = lshr i32 %1082, 16
  %1092 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1091)  ; LegacyF16ToF32(value)
  %1093 = and i32 %1083, 65535
  %1094 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1093)  ; LegacyF16ToF32(value)
  %1095 = lshr i32 %1083, 16
  %1096 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1095)  ; LegacyF16ToF32(value)
  %1097 = and i32 %1084, 65535
  %1098 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1097)  ; LegacyF16ToF32(value)
  %1099 = lshr i32 %1084, 16
  %1100 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1099)  ; LegacyF16ToF32(value)
  %1101 = and i32 %1076, 65535
  %1102 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1101)  ; LegacyF16ToF32(value)
  %1103 = lshr i32 %1076, 16
  %1104 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1103)  ; LegacyF16ToF32(value)
  %1105 = and i32 %1077, 65535
  %1106 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1105)  ; LegacyF16ToF32(value)
  %1107 = lshr i32 %1077, 16
  %1108 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1107)  ; LegacyF16ToF32(value)
  %1109 = and i32 %1078, 65535
  %1110 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1109)  ; LegacyF16ToF32(value)
  %1111 = lshr i32 %1078, 16
  %1112 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1111)  ; LegacyF16ToF32(value)
  %1113 = and i32 %1079, 65535
  %1114 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1113)  ; LegacyF16ToF32(value)
  %1115 = lshr i32 %1079, 16
  %1116 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1115)  ; LegacyF16ToF32(value)
  %1117 = and i32 %1071, 65535
  %1118 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1117)  ; LegacyF16ToF32(value)
  %1119 = lshr i32 %1071, 16
  %1120 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1119)  ; LegacyF16ToF32(value)
  %1121 = and i32 %1072, 65535
  %1122 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1121)  ; LegacyF16ToF32(value)
  %1123 = lshr i32 %1072, 16
  %1124 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1123)  ; LegacyF16ToF32(value)
  %1125 = and i32 %1073, 65535
  %1126 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1125)  ; LegacyF16ToF32(value)
  %1127 = lshr i32 %1073, 16
  %1128 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1127)  ; LegacyF16ToF32(value)
  %1129 = and i32 %1074, 65535
  %1130 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1129)  ; LegacyF16ToF32(value)
  %1131 = lshr i32 %1074, 16
  %1132 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1131)  ; LegacyF16ToF32(value)
  %1133 = and i32 %1067, 65535
  %1134 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1133)  ; LegacyF16ToF32(value)
  %1135 = lshr i32 %1067, 16
  %1136 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1135)  ; LegacyF16ToF32(value)
  %1137 = and i32 %1068, 65535
  %1138 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1137)  ; LegacyF16ToF32(value)
  %1139 = and i32 %1069, 65535
  %1140 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1139)  ; LegacyF16ToF32(value)
  br label %1141

; <label>:1141                                    ; preds = %1065, %1035
  %1142 = phi float [ %1054, %1035 ], [ %1138, %1065 ]
  %1143 = phi float [ %1055, %1035 ], [ %1136, %1065 ]
  %1144 = phi float [ %1056, %1035 ], [ %1134, %1065 ]
  %1145 = phi float [ %1057, %1035 ], [ %1132, %1065 ]
  %1146 = phi float [ %1058, %1035 ], [ %1130, %1065 ]
  %1147 = phi float [ %1059, %1035 ], [ %1128, %1065 ]
  %1148 = phi float [ %1060, %1035 ], [ %1126, %1065 ]
  %1149 = phi float [ %1061, %1035 ], [ %1124, %1065 ]
  %1150 = phi float [ %1062, %1035 ], [ %1122, %1065 ]
  %1151 = phi float [ %1045, %1035 ], [ %1120, %1065 ]
  %1152 = phi float [ %1046, %1035 ], [ %1118, %1065 ]
  %1153 = phi float [ %1047, %1035 ], [ %1116, %1065 ]
  %1154 = phi float [ %1048, %1035 ], [ %1114, %1065 ]
  %1155 = phi float [ %1049, %1035 ], [ %1112, %1065 ]
  %1156 = phi float [ %1050, %1035 ], [ %1110, %1065 ]
  %1157 = phi float [ %1051, %1035 ], [ %1108, %1065 ]
  %1158 = phi float [ %1052, %1035 ], [ %1106, %1065 ]
  %1159 = phi float [ %1053, %1035 ], [ %1104, %1065 ]
  %1160 = phi float [ %1036, %1035 ], [ %1102, %1065 ]
  %1161 = phi float [ %1037, %1035 ], [ %1100, %1065 ]
  %1162 = phi float [ %1038, %1035 ], [ %1098, %1065 ]
  %1163 = phi float [ %1039, %1035 ], [ %1096, %1065 ]
  %1164 = phi float [ %1040, %1035 ], [ %1094, %1065 ]
  %1165 = phi float [ %1041, %1035 ], [ %1092, %1065 ]
  %1166 = phi float [ %1042, %1035 ], [ %1090, %1065 ]
  %1167 = phi float [ %1043, %1035 ], [ %1088, %1065 ]
  %1168 = phi float [ %1044, %1035 ], [ %1086, %1065 ]
  %1169 = phi float [ %1064, %1035 ], [ %1140, %1065 ]
  %1170 = select i1 %1063, float %1169, float 3.125000e-02
  %1171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1172 = extractvalue %dx.types.CBufRet.f32 %1171, 0
  %1173 = extractvalue %dx.types.CBufRet.f32 %1171, 1
  %1174 = extractvalue %dx.types.CBufRet.f32 %1171, 2
  %1175 = fsub fast float %282, %1172
  %1176 = fsub fast float %287, %1173
  %1177 = fsub fast float %292, %1174
  %1178 = call float @dx.op.dot3.f32(i32 55, float %1175, float %1176, float %1177, float %1175, float %1176, float %1177)  ; Dot3(ax,ay,az,bx,by,bz)
  %1179 = call float @dx.op.unary.f32(i32 25, float %1178)  ; Rsqrt(value)
  %1180 = fmul fast float %1175, %1179
  %1181 = fmul fast float %1176, %1179
  %1182 = fmul fast float %1177, %1179
  %1183 = fsub fast float -0.000000e+00, %1180
  %1184 = fsub fast float -0.000000e+00, %1181
  %1185 = fmul fast float %1168, 0x3FD20DD760000000
  %1186 = fmul fast float %1159, 0x3FD20DD760000000
  %1187 = fmul fast float %1150, 0x3FD20DD760000000
  br i1 %193, label %1268, label %1188, !dx.controlflow.hints !67

; <label>:1188                                    ; preds = %1141
  %1189 = fmul fast float %1166, 0xBFD4D8D7C0000000
  %1190 = fmul fast float %1189, %1182
  %1191 = fmul fast float %1182, %1182
  %1192 = fmul fast float %1191, 0x3FEE471020000000
  %1193 = fadd fast float %1192, 0xBFD42F6020000000
  %1194 = fmul fast float %1193, %1162
  %1195 = fmul fast float %1165, 0x3FD4D8D7C0000000
  %1196 = fmul fast float %1167, 0x3FD4D8D7C0000000
  %1197 = fmul fast float %1196, %1181
  %1198 = fmul fast float %1182, 0x3FF17B1420000000
  %1199 = fmul fast float %1161, %1183
  %1200 = fmul fast float %1163, %1184
  %1201 = fmul fast float %1180, %1180
  %1202 = fmul fast float %1181, %1181
  %1203 = fsub fast float %1201, %1202
  %1204 = fmul fast float %1160, 0x3FC17B1420000000
  %1205 = fmul fast float %1204, %1203
  %1206 = fmul fast float %1164, 0x3FD17B1420000000
  %1207 = fmul fast float %1206, %1179
  %1208 = fmul fast float %1207, %1176
  %1209 = fadd fast float %1199, %1200
  %1210 = fmul fast float %1198, %1209
  %1211 = fadd fast float %1210, %1194
  %1212 = fmul fast float %1211, 2.500000e-01
  %1213 = fadd fast float %1208, %1195
  %1214 = fmul fast float %1213, %1180
  %1215 = fadd fast float %1190, %1185
  %1216 = fadd fast float %1215, %1197
  %1217 = fadd fast float %1216, %1205
  %1218 = fadd fast float %1217, %1212
  %1219 = fadd fast float %1218, %1214
  %1220 = fmul fast float %1157, 0xBFD4D8D7C0000000
  %1221 = fmul fast float %1220, %1182
  %1222 = fmul fast float %1193, %1153
  %1223 = fmul fast float %1156, 0x3FD4D8D7C0000000
  %1224 = fmul fast float %1158, 0x3FD4D8D7C0000000
  %1225 = fmul fast float %1224, %1181
  %1226 = fmul fast float %1152, %1183
  %1227 = fmul fast float %1154, %1184
  %1228 = fmul fast float %1151, 0x3FC17B1420000000
  %1229 = fmul fast float %1228, %1203
  %1230 = fmul fast float %1155, 0x3FD17B1420000000
  %1231 = fmul fast float %1230, %1179
  %1232 = fmul fast float %1231, %1176
  %1233 = fadd fast float %1226, %1227
  %1234 = fmul fast float %1198, %1233
  %1235 = fadd fast float %1234, %1222
  %1236 = fmul fast float %1235, 2.500000e-01
  %1237 = fadd fast float %1232, %1223
  %1238 = fmul fast float %1237, %1180
  %1239 = fadd fast float %1221, %1186
  %1240 = fadd fast float %1239, %1225
  %1241 = fadd fast float %1240, %1229
  %1242 = fadd fast float %1241, %1236
  %1243 = fadd fast float %1242, %1238
  %1244 = fmul fast float %1148, 0xBFD4D8D7C0000000
  %1245 = fmul fast float %1244, %1182
  %1246 = fmul fast float %1193, %1144
  %1247 = fmul fast float %1147, 0x3FD4D8D7C0000000
  %1248 = fmul fast float %1149, 0x3FD4D8D7C0000000
  %1249 = fmul fast float %1248, %1181
  %1250 = fmul fast float %1143, %1183
  %1251 = fmul fast float %1145, %1184
  %1252 = fmul fast float %1142, 0x3FC17B1420000000
  %1253 = fmul fast float %1252, %1203
  %1254 = fmul fast float %1146, 0x3FD17B1420000000
  %1255 = fmul fast float %1254, %1179
  %1256 = fmul fast float %1255, %1176
  %1257 = fadd fast float %1250, %1251
  %1258 = fmul fast float %1198, %1257
  %1259 = fadd fast float %1258, %1246
  %1260 = fmul fast float %1259, 2.500000e-01
  %1261 = fadd fast float %1256, %1247
  %1262 = fmul fast float %1261, %1180
  %1263 = fadd fast float %1245, %1187
  %1264 = fadd fast float %1263, %1249
  %1265 = fadd fast float %1264, %1253
  %1266 = fadd fast float %1265, %1260
  %1267 = fadd fast float %1266, %1262
  br label %1362

; <label>:1268                                    ; preds = %1141
  %1269 = fmul fast float %235, %235
  %1270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1271 = extractvalue %dx.types.CBufRet.f32 %1270, 0
  %1272 = extractvalue %dx.types.CBufRet.f32 %1270, 1
  %1273 = extractvalue %dx.types.CBufRet.f32 %1270, 2
  %1274 = fmul fast float %1166, %235
  %1275 = fmul fast float %1274, %1273
  %1276 = fmul fast float %1273, %1273
  %1277 = fmul fast float %1276, 0x3FEE471020000000
  %1278 = fadd fast float %1277, 0xBFD42F6020000000
  %1279 = fmul fast float %1278, %1162
  %1280 = fmul fast float %1271, %1165
  %1281 = fmul fast float %1272, %1167
  %1282 = fmul fast float %1273, 0x3FF17B1420000000
  %1283 = fmul fast float %1161, %1269
  %1284 = fmul fast float %1283, %1271
  %1285 = fmul fast float %1284, %1282
  %1286 = fmul fast float %1163, %1269
  %1287 = fmul fast float %1286, %1272
  %1288 = fmul fast float %1287, %1282
  %1289 = fmul fast float %1271, %1271
  %1290 = fmul fast float %1272, %1272
  %1291 = fsub fast float %1289, %1290
  %1292 = fmul fast float %1160, 0x3FE17B1420000000
  %1293 = fmul fast float %1292, %1291
  %1294 = fmul fast float %1164, 0x3FF17B1420000000
  %1295 = fmul fast float %1294, %1272
  %1296 = fmul fast float %1295, %1271
  %1297 = fadd fast float %1293, %1296
  %1298 = fadd fast float %1297, %1279
  %1299 = fmul fast float %1298, %1269
  %1300 = fadd fast float %1281, %1280
  %1301 = fmul fast float %1300, %235
  %1302 = fsub fast float %1301, %1275
  %1303 = fmul fast float %1302, 0x3FDF454380000000
  %1304 = fsub fast float %1185, %1285
  %1305 = fsub fast float %1304, %1288
  %1306 = fadd fast float %1305, %1299
  %1307 = fadd fast float %1306, %1303
  %1308 = fmul fast float %1157, %235
  %1309 = fmul fast float %1308, %1273
  %1310 = fmul fast float %1278, %1153
  %1311 = fmul fast float %1271, %1156
  %1312 = fmul fast float %1272, %1158
  %1313 = fmul fast float %1152, %1269
  %1314 = fmul fast float %1313, %1271
  %1315 = fmul fast float %1314, %1282
  %1316 = fmul fast float %1154, %1269
  %1317 = fmul fast float %1316, %1272
  %1318 = fmul fast float %1317, %1282
  %1319 = fmul fast float %1151, 0x3FE17B1420000000
  %1320 = fmul fast float %1319, %1291
  %1321 = fmul fast float %1155, 0x3FF17B1420000000
  %1322 = fmul fast float %1321, %1272
  %1323 = fmul fast float %1322, %1271
  %1324 = fadd fast float %1320, %1323
  %1325 = fadd fast float %1324, %1310
  %1326 = fmul fast float %1325, %1269
  %1327 = fadd fast float %1312, %1311
  %1328 = fmul fast float %1327, %235
  %1329 = fsub fast float %1328, %1309
  %1330 = fmul fast float %1329, 0x3FDF454380000000
  %1331 = fsub fast float %1186, %1315
  %1332 = fsub fast float %1331, %1318
  %1333 = fadd fast float %1332, %1326
  %1334 = fadd fast float %1333, %1330
  %1335 = fmul fast float %1148, %235
  %1336 = fmul fast float %1335, %1273
  %1337 = fmul fast float %1278, %1144
  %1338 = fmul fast float %1271, %1147
  %1339 = fmul fast float %1272, %1149
  %1340 = fmul fast float %1143, %1269
  %1341 = fmul fast float %1340, %1271
  %1342 = fmul fast float %1341, %1282
  %1343 = fmul fast float %1145, %1269
  %1344 = fmul fast float %1343, %1272
  %1345 = fmul fast float %1344, %1282
  %1346 = fmul fast float %1142, 0x3FE17B1420000000
  %1347 = fmul fast float %1346, %1291
  %1348 = fmul fast float %1146, 0x3FF17B1420000000
  %1349 = fmul fast float %1348, %1272
  %1350 = fmul fast float %1349, %1271
  %1351 = fadd fast float %1347, %1350
  %1352 = fadd fast float %1351, %1337
  %1353 = fmul fast float %1352, %1269
  %1354 = fadd fast float %1339, %1338
  %1355 = fmul fast float %1354, %235
  %1356 = fsub fast float %1355, %1336
  %1357 = fmul fast float %1356, 0x3FDF454380000000
  %1358 = fsub fast float %1187, %1342
  %1359 = fsub fast float %1358, %1345
  %1360 = fadd fast float %1359, %1353
  %1361 = fadd fast float %1360, %1357
  br label %1362

; <label>:1362                                    ; preds = %1268, %1188
  %1363 = phi float [ %1219, %1188 ], [ %1307, %1268 ]
  %1364 = phi float [ %1243, %1188 ], [ %1334, %1268 ]
  %1365 = phi float [ %1267, %1188 ], [ %1361, %1268 ]
  %1366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %139, i32 0)  ; BufferLoad(srv,index,wot)
  %1367 = extractvalue %dx.types.ResRet.i32 %1366, 0
  %1368 = icmp eq i32 %1367, 262144
  br i1 %1368, label %1385, label %1369, !dx.controlflow.hints !68

; <label>:1369                                    ; preds = %1362
  %1370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %139, i32 0)  ; BufferLoad(srv,index,wot)
  %1371 = extractvalue %dx.types.ResRet.i32 %1370, 0
  %1372 = and i32 %54, 31
  %1373 = shl i32 1, %1372
  %1374 = add i32 %1373, -1
  %1375 = and i32 %1374, %1371
  %1376 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1375)  ; Countbits(value)
  %1377 = and i32 %47, 31
  %1378 = shl i32 1, %1377
  %1379 = shl i32 %1378, %1377
  %1380 = shl i32 %28, %1377
  %1381 = mul i32 %1379, %1376
  %1382 = add i32 %1367, %27
  %1383 = add i32 %1382, %1380
  %1384 = add i32 %1383, %1381
  br label %1385

; <label>:1385                                    ; preds = %1369, %1362
  %1386 = phi i32 [ %1384, %1369 ], [ -1, %1362 ]
  %1387 = icmp eq i32 %1386, -1
  br i1 %1387, label %1389, label %1388, !dx.controlflow.hints !69

; <label>:1388                                    ; preds = %1385
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %2, i32 %1386, i32 undef, float %1363, float %1364, float %1365, float %1363, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %1386, i32 undef, float %1170, float %1170, float %1170, float %1170, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1389

; <label>:1389                                    ; preds = %1388, %1385, %131, %43, %35
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
!40 = !{void ()* @cs_del_sh_sample_lightgrid_4_lowres, !"cs_del_sh_sample_lightgrid_4_lowres", null, !4, !41}
!41 = !{i32 0, i64 272, i32 4, !42}
!42 = !{i32 16, i32 2, i32 2}
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

