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
; shader hash: 6075c03f363f2970aee702a26e16334e
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
;                                   texture     f32     2darray      T1            t16     1
;                                   texture     f32          3d      T2            t15     1
;                                   texture     f32          2d      T3            t14     1
;                                   texture     f32          2d      T4            t13     1
;                                   texture     u32          2d      T5            t17     1
;                                   texture     f32          3d      T6            t18     1
;                                   texture    byte         r/o      T7            t28     1
;                                   texture  struct         r/o      T8            t37     1
;                                   texture    byte         r/o      T9            t30     1
;                                   texture  struct         r/o     T10             t0     1
;                                   texture     u32         buf     T11             t1     1
;                                   texture  struct         r/o     T12             t2     1
;                                   texture     u32         buf     T13             t3     1
;                                   texture     u32         buf     T14             t4     1
;                                   texture     u32         buf     T15             t5     1
;                                   texture     f32         buf     T16             t6     1
;                                   texture     u32         buf     T17             t7     1
;                                   texture     f32         buf     T18             t8     1
;                                   texture    byte         r/o     T19             t9     1
;                                       UAV     f32          2d      U0             u0     1
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
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 2> >" = type { <2 x float>, %"class.Texture2D<vector<float, 2> >::mips_type" }
%"class.Texture2D<vector<float, 2> >::mips_type" = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 3> >" = type { <3 x float>, %"class.Texture3D<vector<float, 3> >::mips_type" }
%"class.Texture3D<vector<float, 3> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.StructuredBuffer<unsigned int>" = type { i32 }
%"class.StructuredBuffer<GfxNeuralLightGridTopLevelNode>" = type { %struct.GfxNeuralLightGridTopLevelNode }
%struct.GfxNeuralLightGridTopLevelNode = type { i32, i32, i32, i32 }
%"class.Buffer<unsigned int>" = type { i32 }
%"class.StructuredBuffer<GfxNeuralLightGridInternalNode>" = type { %struct.GfxNeuralLightGridInternalNode }
%struct.GfxNeuralLightGridInternalNode = type { <2 x i32>, <2 x i32> }
%"class.Buffer<vector<float, 4> >" = type { <4 x float> }
%"class.RWTexture2D<vector<float, 3> >" = type { <3 x float> }
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

define void @cs_del_sh_sample_lightgrid_8() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 28, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
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
  %33 = extractvalue %dx.types.CBufRet.i32 %32, 2
  %34 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %33, i32 0)  ; BufferLoad(srv,index,wot)
  %35 = extractvalue %dx.types.ResRet.i32 %34, 0
  %36 = icmp ult i32 %26, %35
  br i1 %36, label %37, label %2006, !dx.controlflow.hints !41

; <label>:37                                      ; preds = %0
  %38 = add i32 %33, 3
  %39 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 %38)  ; CBufferLoadLegacy(handle,regIndex)
  %40 = extractvalue %dx.types.CBufRet.i32 %39, 2
  %41 = add i32 %40, %26
  %42 = shl i32 %41, 5
  %43 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %42, i32 undef)  ; BufferLoad(srv,index,wot)
  %44 = extractvalue %dx.types.ResRet.i32 %43, 0
  %45 = extractvalue %dx.types.ResRet.i32 %43, 1
  %46 = extractvalue %dx.types.ResRet.i32 %43, 2
  %47 = extractvalue %dx.types.ResRet.i32 %43, 3
  %48 = lshr i32 %47, 14
  %49 = and i32 %48, 16383
  %50 = and i32 %47, 16383
  %51 = bitcast i32 %44 to float
  %52 = bitcast i32 %45 to float
  %53 = bitcast i32 %46 to float
  %54 = and i32 %47, 536870912
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %95, label %56, !dx.controlflow.hints !42

; <label>:56                                      ; preds = %37
  %57 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %58 = extractvalue %dx.types.CBufRet.f32 %57, 2
  %59 = extractvalue %dx.types.CBufRet.f32 %57, 3
  %60 = fmul fast float %58, %51
  %61 = fmul fast float %59, %52
  %62 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %63 = extractvalue %dx.types.CBufRet.f32 %62, 0
  %64 = extractvalue %dx.types.CBufRet.f32 %62, 1
  %65 = fadd fast float %60, %63
  %66 = fadd fast float %61, %64
  %67 = call float @dx.op.unary.f32(i32 7, float %65)  ; Saturate(value)
  %68 = call float @dx.op.unary.f32(i32 7, float %66)  ; Saturate(value)
  %69 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %22, float %67, float %68, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %70 = extractvalue %dx.types.ResRet.f32 %69, 0
  %71 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %72 = extractvalue %dx.types.CBufRet.f32 %71, 0
  %73 = fmul fast float %72, %70
  %74 = fsub fast float %65, %67
  %75 = fsub fast float %66, %68
  %76 = extractvalue %dx.types.CBufRet.f32 %57, 0
  %77 = extractvalue %dx.types.CBufRet.f32 %57, 1
  %78 = fmul fast float %76, %74
  %79 = fmul fast float %77, %75
  %80 = fmul fast float %78, %78
  %81 = fmul fast float %79, %79
  %82 = fadd fast float %80, %81
  %83 = call float @dx.op.unary.f32(i32 24, float %82)  ; Sqrt(value)
  %84 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %85 = extractvalue %dx.types.CBufRet.f32 %84, 3
  %86 = fmul fast float %85, %83
  %87 = call float @dx.op.unary.f32(i32 7, float %86)  ; Saturate(value)
  %88 = extractvalue %dx.types.CBufRet.f32 %84, 2
  %89 = fsub fast float %88, %73
  %90 = fmul fast float %89, %87
  %91 = extractvalue %dx.types.CBufRet.f32 %71, 1
  %92 = fadd fast float %73, %53
  %93 = fadd fast float %92, %91
  %94 = fadd fast float %93, %90
  br label %95

; <label>:95                                      ; preds = %56, %37
  %96 = phi float [ %94, %56 ], [ %53, %37 ]
  %97 = and i32 %47, 268435456
  %98 = icmp eq i32 %97, 0
  %99 = or i32 %42, 16
  %100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %99, i32 undef)  ; BufferLoad(srv,index,wot)
  %101 = extractvalue %dx.types.ResRet.i32 %100, 0
  %102 = extractvalue %dx.types.ResRet.i32 %100, 1
  %103 = extractvalue %dx.types.ResRet.i32 %100, 2
  %104 = extractvalue %dx.types.ResRet.i32 %100, 3
  %105 = and i32 %101, 65535
  %106 = call float @dx.op.legacyF16ToF32(i32 131, i32 %105)  ; LegacyF16ToF32(value)
  %107 = lshr i32 %101, 16
  %108 = call float @dx.op.legacyF16ToF32(i32 131, i32 %107)  ; LegacyF16ToF32(value)
  %109 = and i32 %102, 1023
  %110 = uitofp i32 %109 to float
  %111 = lshr i32 %102, 10
  %112 = and i32 %111, 1023
  %113 = uitofp i32 %112 to float
  %114 = lshr i32 %102, 20
  %115 = and i32 %114, 1023
  %116 = uitofp i32 %115 to float
  %117 = fmul fast float %110, 0x3F60040100000000
  %118 = fmul fast float %113, 0x3F60040100000000
  %119 = fmul fast float %116, 0x3F60040100000000
  %120 = fadd fast float %117, -1.000000e+00
  %121 = fadd fast float %118, -1.000000e+00
  %122 = fadd fast float %119, -1.000000e+00
  %123 = and i32 %103, 1023
  %124 = uitofp i32 %123 to float
  %125 = lshr i32 %103, 10
  %126 = and i32 %125, 1023
  %127 = uitofp i32 %126 to float
  %128 = lshr i32 %103, 20
  %129 = and i32 %128, 1023
  %130 = uitofp i32 %129 to float
  %131 = fmul fast float %124, 0x3F60040100000000
  %132 = fmul fast float %127, 0x3F60040100000000
  %133 = fmul fast float %130, 0x3F60040100000000
  %134 = fadd fast float %131, -1.000000e+00
  %135 = fadd fast float %132, -1.000000e+00
  %136 = fadd fast float %133, -1.000000e+00
  %137 = and i32 %104, 65535
  %138 = call float @dx.op.legacyF16ToF32(i32 131, i32 %137)  ; LegacyF16ToF32(value)
  %139 = lshr i32 %104, 16
  %140 = call float @dx.op.legacyF16ToF32(i32 131, i32 %139)  ; LegacyF16ToF32(value)
  %141 = call float @dx.op.unary.f32(i32 13, float %138)  ; Sin(value)
  %142 = call float @dx.op.unary.f32(i32 12, float %138)  ; Cos(value)
  %143 = fmul fast float %142, %120
  %144 = fmul fast float %142, %121
  %145 = fmul fast float %142, %122
  %146 = fmul fast float %141, %134
  %147 = fmul fast float %135, %141
  %148 = fmul fast float %136, %141
  %149 = fadd fast float %143, %146
  %150 = fadd fast float %144, %147
  %151 = fadd fast float %145, %148
  %152 = fmul fast float %149, %106
  %153 = fmul fast float %150, %106
  %154 = fmul fast float %151, %106
  %155 = fmul fast float %141, %120
  %156 = fmul fast float %121, %141
  %157 = fmul fast float %122, %141
  %158 = fmul fast float %142, %134
  %159 = fmul fast float %142, %135
  %160 = fmul fast float %142, %136
  %161 = fsub fast float %155, %158
  %162 = fsub fast float %156, %159
  %163 = fsub fast float %157, %160
  %164 = fmul fast float %161, %108
  %165 = fmul fast float %162, %108
  %166 = fmul fast float %163, %108
  %167 = add i32 %49, %27
  %168 = add i32 %50, %28
  %169 = uitofp i32 %27 to float
  %170 = uitofp i32 %28 to float
  %171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %172 = extractvalue %dx.types.CBufRet.f32 %171, 1
  %173 = fdiv fast float %169, %172
  %174 = fdiv fast float %170, %172
  %175 = extractvalue %dx.types.CBufRet.f32 %171, 2
  %176 = fadd fast float %175, %173
  %177 = fadd fast float %175, %174
  %178 = fmul fast float %176, %152
  %179 = fmul fast float %176, %153
  %180 = fmul fast float %176, %154
  %181 = fmul fast float %177, %164
  %182 = fmul fast float %177, %165
  %183 = fmul fast float %177, %166
  %184 = fadd fast float %181, %178
  %185 = fmul fast float %184, 2.000000e+00
  %186 = fsub fast float %51, %152
  %187 = fsub fast float %186, %164
  %188 = fadd fast float %187, %185
  %189 = fadd fast float %182, %179
  %190 = fmul fast float %189, 2.000000e+00
  %191 = fsub fast float %52, %153
  %192 = fsub fast float %191, %165
  %193 = fadd fast float %192, %190
  %194 = fadd fast float %183, %180
  %195 = fmul fast float %194, 2.000000e+00
  %196 = fsub fast float %96, %154
  %197 = fsub fast float %196, %166
  %198 = fadd fast float %197, %195
  %199 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %200 = extractvalue %dx.types.CBufRet.i32 %199, 0
  %201 = icmp eq i32 %200, 1
  br i1 %201, label %202, label %237, !dx.controlflow.hints !43

; <label>:202                                     ; preds = %95
  %203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %204 = extractvalue %dx.types.CBufRet.f32 %203, 0
  %205 = extractvalue %dx.types.CBufRet.f32 %203, 1
  %206 = fsub fast float %188, %204
  %207 = fsub fast float %193, %205
  %208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %209 = extractvalue %dx.types.CBufRet.f32 %208, 0
  %210 = extractvalue %dx.types.CBufRet.f32 %208, 1
  %211 = fmul fast float %206, %209
  %212 = fmul fast float %207, %210
  %213 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %22, float %211, float %212, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %214 = extractvalue %dx.types.ResRet.f32 %213, 0
  %215 = fcmp fast ogt float %214, 0.000000e+00
  %216 = extractvalue %dx.types.CBufRet.i32 %199, 3
  %217 = icmp ne i32 %216, 0
  %218 = and i1 %215, %217
  br i1 %218, label %219, label %237, !dx.controlflow.hints !44

; <label>:219                                     ; preds = %202
  %220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %221 = extractvalue %dx.types.CBufRet.f32 %220, 0
  %222 = extractvalue %dx.types.CBufRet.f32 %220, 1
  %223 = fsub fast float %188, %221
  %224 = fsub fast float %193, %222
  %225 = fmul fast float %223, %223
  %226 = fmul fast float %224, %224
  %227 = fadd fast float %225, %226
  %228 = uitofp i32 %216 to float
  %229 = fmul fast float %228, %228
  %230 = fcmp fast ogt float %227, %229
  br i1 %230, label %237, label %231, !dx.controlflow.hints !45

; <label>:231                                     ; preds = %219
  %232 = call float @dx.op.unary.f32(i32 24, float %227)  ; Sqrt(value)
  %233 = fsub fast float %228, %232
  %234 = fmul fast float %233, 0x3F75555560000000
  %235 = call float @dx.op.unary.f32(i32 7, float %234)  ; Saturate(value)
  %236 = call float @dx.op.binary.f32(i32 36, float %235, float %214)  ; FMin(a,b)
  br label %237

; <label>:237                                     ; preds = %231, %219, %202, %95
  %238 = phi float [ 1.000000e+00, %95 ], [ %236, %231 ], [ %214, %202 ], [ 0.000000e+00, %219 ]
  %239 = fcmp fast ogt float %238, 0.000000e+00
  br i1 %239, label %240, label %1085, !dx.controlflow.hints !46

; <label>:240                                     ; preds = %237
  %241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %242 = extractvalue %dx.types.CBufRet.f32 %241, 0
  %243 = extractvalue %dx.types.CBufRet.f32 %241, 1
  %244 = extractvalue %dx.types.CBufRet.f32 %241, 2
  %245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %246 = extractvalue %dx.types.CBufRet.f32 %245, 0
  %247 = extractvalue %dx.types.CBufRet.f32 %245, 1
  %248 = extractvalue %dx.types.CBufRet.f32 %245, 2
  %249 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %250 = extractvalue %dx.types.CBufRet.i32 %249, 1
  %251 = fsub fast float %188, %242
  %252 = fsub fast float %193, %243
  %253 = fsub fast float %198, %244
  %254 = fmul fast float %251, %246
  %255 = fmul fast float %252, %247
  %256 = fmul fast float %253, %248
  %257 = fcmp fast ole float %254, 0.000000e+00
  %258 = fcmp fast ole float %255, 0.000000e+00
  %259 = fcmp fast ole float %256, 0.000000e+00
  %260 = or i1 %257, %258
  %261 = or i1 %259, %260
  %262 = fcmp fast oge float %254, 1.000000e+00
  %263 = fcmp fast oge float %255, 1.000000e+00
  %264 = fcmp fast oge float %256, 1.000000e+00
  %265 = or i1 %262, %263
  %266 = or i1 %264, %265
  %267 = or i1 %261, %266
  br i1 %267, label %983, label %268, !dx.controlflow.hints !47

; <label>:268                                     ; preds = %240
  %269 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %270 = extractvalue %dx.types.CBufRet.i32 %269, 0
  %271 = fptosi float %251 to i32
  %272 = fptosi float %252 to i32
  %273 = fptosi float %253 to i32
  %274 = and i32 %250, 31
  %275 = ashr i32 %271, %274
  %276 = ashr i32 %272, %274
  %277 = ashr i32 %273, %274
  %278 = mul i32 %270, %276
  %279 = add nsw i32 %278, %275
  %280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %279, i32 0)  ; BufferLoad(srv,index,wot)
  %281 = extractvalue %dx.types.ResRet.i32 %280, 0
  %282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %279, i32 4)  ; BufferLoad(srv,index,wot)
  %283 = extractvalue %dx.types.ResRet.i32 %282, 0
  %284 = icmp slt i32 %277, %281
  %285 = icmp sgt i32 %277, %283
  %286 = or i1 %284, %285
  br i1 %286, label %983, label %287, !dx.controlflow.hints !48

; <label>:287                                     ; preds = %268
  %288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %279, i32 8)  ; BufferLoad(srv,index,wot)
  %289 = extractvalue %dx.types.ResRet.i32 %288, 0
  %290 = sub i32 %277, %281
  %291 = add nsw i32 %290, %289
  %292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %291, i32 undef)  ; BufferLoad(srv,index,wot)
  %293 = extractvalue %dx.types.ResRet.i32 %292, 0
  %294 = icmp eq i32 %293, -1
  br i1 %294, label %983, label %295, !dx.controlflow.hints !49

; <label>:295                                     ; preds = %287
  %296 = getelementptr inbounds [8 x i32], [8 x i32]* %30, i32 0, i32 0
  store i32 -1, i32* %296, align 4, !tbaa !50, !noalias !54
  %297 = getelementptr inbounds [8 x i32], [8 x i32]* %30, i32 0, i32 1
  store i32 -1, i32* %297, align 4, !tbaa !50, !noalias !54
  %298 = getelementptr inbounds [8 x i32], [8 x i32]* %30, i32 0, i32 2
  store i32 -1, i32* %298, align 4, !tbaa !50, !noalias !54
  %299 = getelementptr inbounds [8 x i32], [8 x i32]* %30, i32 0, i32 3
  store i32 -1, i32* %299, align 4, !tbaa !50, !noalias !54
  %300 = getelementptr inbounds [8 x i32], [8 x i32]* %30, i32 0, i32 4
  store i32 -1, i32* %300, align 4, !tbaa !50, !noalias !54
  %301 = getelementptr inbounds [8 x i32], [8 x i32]* %30, i32 0, i32 5
  store i32 -1, i32* %301, align 4, !tbaa !50, !noalias !54
  %302 = getelementptr inbounds [8 x i32], [8 x i32]* %30, i32 0, i32 6
  store i32 -1, i32* %302, align 4, !tbaa !50, !noalias !54
  %303 = getelementptr inbounds [8 x i32], [8 x i32]* %30, i32 0, i32 7
  store i32 -1, i32* %303, align 4, !tbaa !50, !noalias !54
  br label %304

; <label>:304                                     ; preds = %408, %295
  %305 = phi i32 [ -1, %295 ], [ %405, %408 ]
  %306 = phi i32 [ -1, %295 ], [ %400, %408 ]
  %307 = phi i32 [ -1, %295 ], [ %393, %408 ]
  %308 = phi i32 [ -1, %295 ], [ %388, %408 ]
  %309 = phi i32 [ -1, %295 ], [ %379, %408 ]
  %310 = phi i32 [ -1, %295 ], [ %374, %408 ]
  %311 = phi i32 [ -1, %295 ], [ %366, %408 ]
  %312 = phi i32 [ -1, %295 ], [ %359, %408 ]
  %313 = phi i32 [ %293, %295 ], [ %428, %408 ]
  %314 = phi i32 [ %250, %295 ], [ %315, %408 ]
  %315 = add nsw i32 %314, -2
  %316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
  %317 = extractvalue %dx.types.ResRet.i32 %316, 0
  %318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
  %319 = extractvalue %dx.types.ResRet.i32 %318, 0
  %320 = and i32 %317, 31
  %321 = shl i32 1, %320
  %322 = add i32 %321, 1
  %323 = and i32 %315, 31
  %324 = ashr i32 %271, %323
  %325 = ashr i32 %272, %323
  %326 = ashr i32 %273, %323
  %327 = and i32 %324, 3
  %328 = and i32 %325, 3
  %329 = and i32 %326, 3
  br label %330

; <label>:330                                     ; preds = %330, %304
  %331 = phi i32 [ %305, %304 ], [ %405, %330 ]
  %332 = phi i32 [ %306, %304 ], [ %400, %330 ]
  %333 = phi i32 [ %307, %304 ], [ %393, %330 ]
  %334 = phi i32 [ %308, %304 ], [ %388, %330 ]
  %335 = phi i32 [ %309, %304 ], [ %379, %330 ]
  %336 = phi i32 [ %310, %304 ], [ %374, %330 ]
  %337 = phi i32 [ %311, %304 ], [ %366, %330 ]
  %338 = phi i32 [ %312, %304 ], [ %359, %330 ]
  %339 = phi i32 [ 0, %304 ], [ %406, %330 ]
  %340 = sub i32 2, %339
  %341 = and i32 %340, 31
  %342 = lshr i32 %327, %341
  %343 = lshr i32 %328, %341
  %344 = lshr i32 %329, %341
  %345 = sub i32 %317, %339
  %346 = and i32 %345, 31
  %347 = shl i32 %342, %346
  %348 = shl i32 %343, %346
  %349 = shl i32 %344, %346
  %350 = shl i32 1, %346
  %351 = mul i32 %349, %322
  %352 = add i32 %351, %348
  %353 = mul i32 %352, %322
  %354 = add i32 %347, %319
  %355 = add i32 %354, %353
  %356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %355, i32 undef)  ; BufferLoad(srv,index,wot)
  %357 = extractvalue %dx.types.ResRet.i32 %356, 0
  %358 = icmp ne i32 %357, -1
  %359 = select i1 %358, i32 %357, i32 %338
  store i32 %359, i32* %296, align 4, !tbaa !50, !noalias !54
  %360 = add i32 %350, %319
  %361 = add i32 %360, %347
  %362 = add i32 %361, %353
  %363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %362, i32 undef)  ; BufferLoad(srv,index,wot)
  %364 = extractvalue %dx.types.ResRet.i32 %363, 0
  %365 = icmp ne i32 %364, -1
  %366 = select i1 %365, i32 %364, i32 %337
  store i32 %366, i32* %297, align 4, !tbaa !50, !noalias !54
  %367 = add i32 %348, %350
  %368 = add i32 %367, %351
  %369 = mul i32 %368, %322
  %370 = add i32 %354, %369
  %371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %370, i32 undef)  ; BufferLoad(srv,index,wot)
  %372 = extractvalue %dx.types.ResRet.i32 %371, 0
  %373 = icmp ne i32 %372, -1
  %374 = select i1 %373, i32 %372, i32 %336
  store i32 %374, i32* %298, align 4, !tbaa !50, !noalias !54
  %375 = add i32 %361, %369
  %376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %375, i32 undef)  ; BufferLoad(srv,index,wot)
  %377 = extractvalue %dx.types.ResRet.i32 %376, 0
  %378 = icmp ne i32 %377, -1
  %379 = select i1 %378, i32 %377, i32 %335
  store i32 %379, i32* %299, align 4, !tbaa !50, !noalias !54
  %380 = add i32 %349, %350
  %381 = mul i32 %380, %322
  %382 = add i32 %381, %348
  %383 = mul i32 %382, %322
  %384 = add i32 %354, %383
  %385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %384, i32 undef)  ; BufferLoad(srv,index,wot)
  %386 = extractvalue %dx.types.ResRet.i32 %385, 0
  %387 = icmp ne i32 %386, -1
  %388 = select i1 %387, i32 %386, i32 %334
  store i32 %388, i32* %300, align 4, !tbaa !50, !noalias !54
  %389 = add i32 %361, %383
  %390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %389, i32 undef)  ; BufferLoad(srv,index,wot)
  %391 = extractvalue %dx.types.ResRet.i32 %390, 0
  %392 = icmp ne i32 %391, -1
  %393 = select i1 %392, i32 %391, i32 %333
  store i32 %393, i32* %301, align 4, !tbaa !50, !noalias !54
  %394 = add i32 %367, %381
  %395 = mul i32 %394, %322
  %396 = add i32 %354, %395
  %397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %396, i32 undef)  ; BufferLoad(srv,index,wot)
  %398 = extractvalue %dx.types.ResRet.i32 %397, 0
  %399 = icmp ne i32 %398, -1
  %400 = select i1 %399, i32 %398, i32 %332
  store i32 %400, i32* %302, align 4, !tbaa !50, !noalias !54
  %401 = add i32 %361, %395
  %402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %401, i32 undef)  ; BufferLoad(srv,index,wot)
  %403 = extractvalue %dx.types.ResRet.i32 %402, 0
  %404 = icmp ne i32 %403, -1
  %405 = select i1 %404, i32 %403, i32 %331
  store i32 %405, i32* %303, align 4, !tbaa !50, !noalias !54
  %406 = add i32 %339, 1
  %407 = icmp ugt i32 %406, %317
  br i1 %407, label %408, label %330

; <label>:408                                     ; preds = %330
  %409 = shl nuw nsw i32 %329, 4
  %410 = shl nuw nsw i32 %328, 2
  %411 = lshr i32 %329, 1
  %412 = and i32 %409, 16
  %413 = or i32 %410, %327
  %414 = or i32 %413, %412
  %415 = shl i32 1, %414
  %416 = shl nuw nsw i32 %411, 2
  %417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %313, i32 %416)  ; BufferLoad(srv,index,wot)
  %418 = extractvalue %dx.types.ResRet.i32 %417, 0
  %419 = and i32 %418, %415
  %420 = icmp eq i32 %419, 0
  %421 = add i32 %415, -1
  %422 = and i32 %418, %421
  %423 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %422)  ; Countbits(value)
  %424 = or i32 %416, 8
  %425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %313, i32 %424)  ; BufferLoad(srv,index,wot)
  %426 = extractvalue %dx.types.ResRet.i32 %425, 0
  %427 = add i32 %426, %423
  %428 = select i1 %420, i32 -1, i32 %427
  %429 = icmp eq i32 %428, -1
  br i1 %429, label %430, label %304

; <label>:430                                     ; preds = %408
  br label %431

; <label>:431                                     ; preds = %717, %430
  %432 = phi i32 [ %719, %717 ], [ %359, %430 ]
  %433 = phi float [ %714, %717 ], [ 0.000000e+00, %430 ]
  %434 = phi i32 [ %715, %717 ], [ 0, %430 ]
  %435 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %432, i32 undef)  ; BufferLoad(srv,index,wot)
  %436 = extractvalue %dx.types.ResRet.f32 %435, 0
  %437 = extractvalue %dx.types.ResRet.f32 %435, 1
  %438 = extractvalue %dx.types.ResRet.f32 %435, 2
  %439 = extractvalue %dx.types.ResRet.f32 %435, 3
  %440 = fsub fast float %188, %436
  %441 = fsub fast float %193, %437
  %442 = fsub fast float %198, %438
  %443 = fmul fast float %440, %439
  %444 = fmul fast float %441, %439
  %445 = fmul fast float %442, %439
  %446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %432, i32 undef)  ; BufferLoad(srv,index,wot)
  %447 = extractvalue %dx.types.ResRet.i32 %446, 0
  %448 = call float @dx.op.unary.f32(i32 6, float %443)  ; FAbs(value)
  %449 = call float @dx.op.unary.f32(i32 6, float %444)  ; FAbs(value)
  %450 = fsub fast float 1.000000e+00, %448
  %451 = fsub fast float 1.000000e+00, %449
  %452 = call float @dx.op.unary.f32(i32 7, float %450)  ; Saturate(value)
  %453 = call float @dx.op.unary.f32(i32 7, float %451)  ; Saturate(value)
  %454 = fmul fast float %453, %452
  %455 = mul i32 %447, 29
  %456 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %455, i32 undef)  ; BufferLoad(srv,index,wot)
  %457 = extractvalue %dx.types.ResRet.f32 %456, 0
  %458 = extractvalue %dx.types.ResRet.f32 %456, 1
  %459 = extractvalue %dx.types.ResRet.f32 %456, 2
  %460 = extractvalue %dx.types.ResRet.f32 %456, 3
  %461 = add i32 %455, 1
  %462 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %463 = extractvalue %dx.types.ResRet.f32 %462, 0
  %464 = extractvalue %dx.types.ResRet.f32 %462, 1
  %465 = extractvalue %dx.types.ResRet.f32 %462, 2
  %466 = extractvalue %dx.types.ResRet.f32 %462, 3
  %467 = add i32 %455, 2
  %468 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %467, i32 undef)  ; BufferLoad(srv,index,wot)
  %469 = extractvalue %dx.types.ResRet.f32 %468, 0
  %470 = extractvalue %dx.types.ResRet.f32 %468, 1
  %471 = extractvalue %dx.types.ResRet.f32 %468, 2
  %472 = extractvalue %dx.types.ResRet.f32 %468, 3
  %473 = add i32 %455, 3
  %474 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %473, i32 undef)  ; BufferLoad(srv,index,wot)
  %475 = extractvalue %dx.types.ResRet.f32 %474, 0
  %476 = extractvalue %dx.types.ResRet.f32 %474, 1
  %477 = extractvalue %dx.types.ResRet.f32 %474, 2
  %478 = extractvalue %dx.types.ResRet.f32 %474, 3
  %479 = add i32 %455, 4
  %480 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %479, i32 undef)  ; BufferLoad(srv,index,wot)
  %481 = extractvalue %dx.types.ResRet.f32 %480, 0
  %482 = extractvalue %dx.types.ResRet.f32 %480, 1
  %483 = extractvalue %dx.types.ResRet.f32 %480, 2
  %484 = extractvalue %dx.types.ResRet.f32 %480, 3
  %485 = add i32 %455, 5
  %486 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %485, i32 undef)  ; BufferLoad(srv,index,wot)
  %487 = extractvalue %dx.types.ResRet.f32 %486, 0
  %488 = extractvalue %dx.types.ResRet.f32 %486, 1
  %489 = extractvalue %dx.types.ResRet.f32 %486, 2
  %490 = extractvalue %dx.types.ResRet.f32 %486, 3
  %491 = add i32 %455, 6
  %492 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %491, i32 undef)  ; BufferLoad(srv,index,wot)
  %493 = extractvalue %dx.types.ResRet.f32 %492, 0
  %494 = extractvalue %dx.types.ResRet.f32 %492, 1
  %495 = extractvalue %dx.types.ResRet.f32 %492, 2
  %496 = extractvalue %dx.types.ResRet.f32 %492, 3
  %497 = add i32 %455, 7
  %498 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %497, i32 undef)  ; BufferLoad(srv,index,wot)
  %499 = extractvalue %dx.types.ResRet.f32 %498, 0
  %500 = extractvalue %dx.types.ResRet.f32 %498, 1
  %501 = extractvalue %dx.types.ResRet.f32 %498, 2
  %502 = extractvalue %dx.types.ResRet.f32 %498, 3
  %503 = fmul fast float %457, %443
  %504 = fmul fast float %469, %444
  %505 = fadd fast float %504, %503
  %506 = fmul fast float %481, %445
  %507 = fadd fast float %505, %506
  %508 = fmul fast float %458, %443
  %509 = fmul fast float %470, %444
  %510 = fadd fast float %509, %508
  %511 = fmul fast float %482, %445
  %512 = fadd fast float %510, %511
  %513 = fmul fast float %459, %443
  %514 = fmul fast float %471, %444
  %515 = fadd fast float %514, %513
  %516 = fmul fast float %483, %445
  %517 = fadd fast float %515, %516
  %518 = fmul fast float %460, %443
  %519 = fmul fast float %472, %444
  %520 = fadd fast float %519, %518
  %521 = fmul fast float %484, %445
  %522 = fadd fast float %520, %521
  %523 = fmul fast float %463, %443
  %524 = fmul fast float %475, %444
  %525 = fadd fast float %524, %523
  %526 = fmul fast float %487, %445
  %527 = fadd fast float %525, %526
  %528 = fmul fast float %464, %443
  %529 = fmul fast float %476, %444
  %530 = fadd fast float %529, %528
  %531 = fmul fast float %488, %445
  %532 = fadd fast float %530, %531
  %533 = fmul fast float %465, %443
  %534 = fmul fast float %477, %444
  %535 = fadd fast float %534, %533
  %536 = fmul fast float %489, %445
  %537 = fadd fast float %535, %536
  %538 = fmul fast float %466, %443
  %539 = fmul fast float %478, %444
  %540 = fadd fast float %539, %538
  %541 = fmul fast float %490, %445
  %542 = fadd fast float %540, %541
  %543 = fadd fast float %507, %493
  %544 = fadd fast float %512, %494
  %545 = fadd fast float %517, %495
  %546 = fadd fast float %522, %496
  %547 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %543)  ; FMax(a,b)
  %548 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %544)  ; FMax(a,b)
  %549 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %545)  ; FMax(a,b)
  %550 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %546)  ; FMax(a,b)
  %551 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %543)  ; FMin(a,b)
  %552 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %544)  ; FMin(a,b)
  %553 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %545)  ; FMin(a,b)
  %554 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %546)  ; FMin(a,b)
  %555 = fmul fast float %551, 0x3F847AE140000000
  %556 = fmul fast float %552, 0x3F847AE140000000
  %557 = fmul fast float %553, 0x3F847AE140000000
  %558 = fmul fast float %554, 0x3F847AE140000000
  %559 = fadd fast float %555, %547
  %560 = fadd fast float %556, %548
  %561 = fadd fast float %557, %549
  %562 = fadd fast float %558, %550
  %563 = fadd fast float %527, %499
  %564 = fadd fast float %532, %500
  %565 = fadd fast float %537, %501
  %566 = fadd fast float %542, %502
  %567 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %563)  ; FMax(a,b)
  %568 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %564)  ; FMax(a,b)
  %569 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %565)  ; FMax(a,b)
  %570 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %566)  ; FMax(a,b)
  %571 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %563)  ; FMin(a,b)
  %572 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %564)  ; FMin(a,b)
  %573 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %565)  ; FMin(a,b)
  %574 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %566)  ; FMin(a,b)
  %575 = fmul fast float %571, 0x3F847AE140000000
  %576 = fmul fast float %572, 0x3F847AE140000000
  %577 = fmul fast float %573, 0x3F847AE140000000
  %578 = fmul fast float %574, 0x3F847AE140000000
  %579 = fadd fast float %575, %567
  %580 = fadd fast float %576, %568
  %581 = fadd fast float %577, %569
  %582 = fadd fast float %578, %570
  br label %583

; <label>:583                                     ; preds = %583, %431
  %584 = phi i32 [ 0, %431 ], [ %604, %583 ]
  %585 = add i32 %455, 8
  %586 = shl i32 %584, 1
  %587 = add i32 %585, %586
  %588 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %587, i32 undef)  ; BufferLoad(srv,index,wot)
  %589 = extractvalue %dx.types.ResRet.f32 %588, 0
  %590 = extractvalue %dx.types.ResRet.f32 %588, 1
  %591 = extractvalue %dx.types.ResRet.f32 %588, 2
  %592 = extractvalue %dx.types.ResRet.f32 %588, 3
  %593 = add i32 %455, 9
  %594 = add i32 %593, %586
  %595 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %594, i32 undef)  ; BufferLoad(srv,index,wot)
  %596 = extractvalue %dx.types.ResRet.f32 %595, 0
  %597 = extractvalue %dx.types.ResRet.f32 %595, 1
  %598 = extractvalue %dx.types.ResRet.f32 %595, 2
  %599 = extractvalue %dx.types.ResRet.f32 %595, 3
  %600 = call float @dx.op.dot4.f32(i32 56, float %589, float %590, float %591, float %592, float %559, float %560, float %561, float %562)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %601 = call float @dx.op.dot4.f32(i32 56, float %596, float %597, float %598, float %599, float %579, float %580, float %581, float %582)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %602 = fadd fast float %601, %600
  %603 = getelementptr inbounds [8 x float], [8 x float]* %29, i32 0, i32 %584
  store float %602, float* %603, align 4, !tbaa !60, !noalias !54
  %604 = add nuw nsw i32 %584, 1
  %605 = icmp eq i32 %604, 8
  br i1 %605, label %606, label %583

; <label>:606                                     ; preds = %583
  %607 = call float @dx.op.unary.f32(i32 6, float %445)  ; FAbs(value)
  %608 = fsub fast float 1.000000e+00, %607
  %609 = call float @dx.op.unary.f32(i32 7, float %608)  ; Saturate(value)
  %610 = fmul fast float %454, %609
  %611 = add i32 %455, 24
  %612 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %611, i32 undef)  ; BufferLoad(srv,index,wot)
  %613 = extractvalue %dx.types.ResRet.f32 %612, 0
  %614 = extractvalue %dx.types.ResRet.f32 %612, 1
  %615 = extractvalue %dx.types.ResRet.f32 %612, 2
  %616 = extractvalue %dx.types.ResRet.f32 %612, 3
  %617 = add i32 %455, 25
  %618 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %617, i32 undef)  ; BufferLoad(srv,index,wot)
  %619 = extractvalue %dx.types.ResRet.f32 %618, 0
  %620 = extractvalue %dx.types.ResRet.f32 %618, 1
  %621 = extractvalue %dx.types.ResRet.f32 %618, 2
  %622 = extractvalue %dx.types.ResRet.f32 %618, 3
  %623 = getelementptr inbounds [8 x float], [8 x float]* %29, i32 0, i32 0
  %624 = load float, float* %623, align 4, !tbaa !60, !noalias !54
  %625 = fadd fast float %624, %613
  %626 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %625)  ; FMax(a,b)
  %627 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %625)  ; FMin(a,b)
  %628 = fmul fast float %627, 0x3F847AE140000000
  %629 = fadd fast float %628, %626
  store float %629, float* %623, align 4, !tbaa !60, !noalias !54
  %630 = getelementptr inbounds [8 x float], [8 x float]* %29, i32 0, i32 1
  %631 = load float, float* %630, align 4, !tbaa !60, !noalias !54
  %632 = fadd fast float %631, %614
  %633 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %632)  ; FMax(a,b)
  %634 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %632)  ; FMin(a,b)
  %635 = fmul fast float %634, 0x3F847AE140000000
  %636 = fadd fast float %635, %633
  store float %636, float* %630, align 4, !tbaa !60, !noalias !54
  %637 = getelementptr inbounds [8 x float], [8 x float]* %29, i32 0, i32 2
  %638 = load float, float* %637, align 4, !tbaa !60, !noalias !54
  %639 = fadd fast float %638, %615
  %640 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %639)  ; FMax(a,b)
  %641 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %639)  ; FMin(a,b)
  %642 = fmul fast float %641, 0x3F847AE140000000
  %643 = fadd fast float %642, %640
  store float %643, float* %637, align 4, !tbaa !60, !noalias !54
  %644 = getelementptr inbounds [8 x float], [8 x float]* %29, i32 0, i32 3
  %645 = load float, float* %644, align 4, !tbaa !60, !noalias !54
  %646 = fadd fast float %645, %616
  %647 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %646)  ; FMax(a,b)
  %648 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %646)  ; FMin(a,b)
  %649 = fmul fast float %648, 0x3F847AE140000000
  %650 = fadd fast float %649, %647
  store float %650, float* %644, align 4, !tbaa !60, !noalias !54
  %651 = getelementptr inbounds [8 x float], [8 x float]* %29, i32 0, i32 4
  %652 = load float, float* %651, align 4, !tbaa !60, !noalias !54
  %653 = fadd fast float %652, %619
  %654 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %653)  ; FMax(a,b)
  %655 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %653)  ; FMin(a,b)
  %656 = fmul fast float %655, 0x3F847AE140000000
  %657 = fadd fast float %656, %654
  store float %657, float* %651, align 4, !tbaa !60, !noalias !54
  %658 = getelementptr inbounds [8 x float], [8 x float]* %29, i32 0, i32 5
  %659 = load float, float* %658, align 4, !tbaa !60, !noalias !54
  %660 = fadd fast float %659, %620
  %661 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %660)  ; FMax(a,b)
  %662 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %660)  ; FMin(a,b)
  %663 = fmul fast float %662, 0x3F847AE140000000
  %664 = fadd fast float %663, %661
  store float %664, float* %658, align 4, !tbaa !60, !noalias !54
  %665 = getelementptr inbounds [8 x float], [8 x float]* %29, i32 0, i32 6
  %666 = load float, float* %665, align 4, !tbaa !60, !noalias !54
  %667 = fadd fast float %666, %621
  %668 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %667)  ; FMax(a,b)
  %669 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %667)  ; FMin(a,b)
  %670 = fmul fast float %669, 0x3F847AE140000000
  %671 = fadd fast float %670, %668
  store float %671, float* %665, align 4, !tbaa !60, !noalias !54
  %672 = getelementptr inbounds [8 x float], [8 x float]* %29, i32 0, i32 7
  %673 = load float, float* %672, align 4, !tbaa !60, !noalias !54
  %674 = fadd fast float %673, %622
  %675 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %674)  ; FMax(a,b)
  %676 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %674)  ; FMin(a,b)
  %677 = fmul fast float %676, 0x3F847AE140000000
  %678 = fadd fast float %677, %675
  store float %678, float* %672, align 4, !tbaa !60, !noalias !54
  %679 = add i32 %455, 26
  %680 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %679, i32 undef)  ; BufferLoad(srv,index,wot)
  %681 = extractvalue %dx.types.ResRet.f32 %680, 0
  %682 = extractvalue %dx.types.ResRet.f32 %680, 1
  %683 = extractvalue %dx.types.ResRet.f32 %680, 2
  %684 = extractvalue %dx.types.ResRet.f32 %680, 3
  %685 = add i32 %455, 27
  %686 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %685, i32 undef)  ; BufferLoad(srv,index,wot)
  %687 = extractvalue %dx.types.ResRet.f32 %686, 0
  %688 = extractvalue %dx.types.ResRet.f32 %686, 1
  %689 = extractvalue %dx.types.ResRet.f32 %686, 2
  %690 = extractvalue %dx.types.ResRet.f32 %686, 3
  %691 = fmul fast float %629, %681
  %692 = fmul fast float %636, %682
  %693 = fadd fast float %692, %691
  %694 = fmul fast float %643, %683
  %695 = fadd fast float %693, %694
  %696 = fmul fast float %650, %684
  %697 = fadd fast float %695, %696
  %698 = fmul fast float %657, %687
  %699 = fadd fast float %697, %698
  %700 = fmul fast float %664, %688
  %701 = fadd fast float %699, %700
  %702 = fmul fast float %671, %689
  %703 = fadd fast float %701, %702
  %704 = fmul fast float %678, %690
  %705 = fadd fast float %703, %704
  %706 = add i32 %455, 28
  %707 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %706, i32 undef)  ; BufferLoad(srv,index,wot)
  %708 = extractvalue %dx.types.ResRet.f32 %707, 0
  %709 = fadd fast float %705, %708
  %710 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %709)  ; FMax(a,b)
  %711 = fmul fast float %610, %710
  %712 = call float @dx.op.unary.f32(i32 7, float %711)  ; Saturate(value)
  %713 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 %434
  store float %712, float* %713, align 4, !tbaa !60, !noalias !54
  %714 = fadd fast float %712, %433
  %715 = add nuw nsw i32 %434, 1
  %716 = icmp eq i32 %715, 8
  br i1 %716, label %720, label %717

; <label>:717                                     ; preds = %606
  %718 = getelementptr inbounds [8 x i32], [8 x i32]* %30, i32 0, i32 %715
  %719 = load i32, i32* %718, align 4, !tbaa !50, !noalias !54
  br label %431

; <label>:720                                     ; preds = %606
  %721 = fcmp fast ugt float %714, 0x3EE4F8B580000000
  br i1 %721, label %722, label %983, !dx.controlflow.hints !62

; <label>:722                                     ; preds = %720
  %723 = fcmp fast ogt float %714, 0x3EE4F8B580000000
  %724 = fdiv fast float 1.000000e+00, %714
  %725 = select i1 %723, float %724, float 1.000000e+00
  %726 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 0
  %727 = load float, float* %726, align 4, !tbaa !60, !noalias !54
  %728 = fmul fast float %727, %725
  store float %728, float* %726, align 4, !tbaa !60, !noalias !54
  %729 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 1
  %730 = load float, float* %729, align 4, !tbaa !60, !noalias !54
  %731 = fmul fast float %730, %725
  store float %731, float* %729, align 4, !tbaa !60, !noalias !54
  %732 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 2
  %733 = load float, float* %732, align 4, !tbaa !60, !noalias !54
  %734 = fmul fast float %733, %725
  store float %734, float* %732, align 4, !tbaa !60, !noalias !54
  %735 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 3
  %736 = load float, float* %735, align 4, !tbaa !60, !noalias !54
  %737 = fmul fast float %736, %725
  store float %737, float* %735, align 4, !tbaa !60, !noalias !54
  %738 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 4
  %739 = load float, float* %738, align 4, !tbaa !60, !noalias !54
  %740 = fmul fast float %739, %725
  store float %740, float* %738, align 4, !tbaa !60, !noalias !54
  %741 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 5
  %742 = load float, float* %741, align 4, !tbaa !60, !noalias !54
  %743 = fmul fast float %742, %725
  store float %743, float* %741, align 4, !tbaa !60, !noalias !54
  %744 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 6
  %745 = load float, float* %744, align 4, !tbaa !60, !noalias !54
  %746 = fmul fast float %745, %725
  store float %746, float* %744, align 4, !tbaa !60, !noalias !54
  %747 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 7
  %748 = load float, float* %747, align 4, !tbaa !60, !noalias !54
  %749 = fmul fast float %748, %725
  store float %749, float* %747, align 4, !tbaa !60, !noalias !54
  br label %750

; <label>:750                                     ; preds = %977, %722
  %751 = phi float [ %981, %977 ], [ %728, %722 ]
  %752 = phi i32 [ %979, %977 ], [ %359, %722 ]
  %753 = phi float [ %953, %977 ], [ 0.000000e+00, %722 ]
  %754 = phi float [ %951, %977 ], [ 0.000000e+00, %722 ]
  %755 = phi float [ %949, %977 ], [ 0.000000e+00, %722 ]
  %756 = phi float [ %946, %977 ], [ 0.000000e+00, %722 ]
  %757 = phi float [ %944, %977 ], [ 0.000000e+00, %722 ]
  %758 = phi float [ %941, %977 ], [ 0.000000e+00, %722 ]
  %759 = phi float [ %939, %977 ], [ 0.000000e+00, %722 ]
  %760 = phi float [ %937, %977 ], [ 0.000000e+00, %722 ]
  %761 = phi float [ %934, %977 ], [ 0.000000e+00, %722 ]
  %762 = phi float [ %974, %977 ], [ 0.000000e+00, %722 ]
  %763 = phi float [ %972, %977 ], [ 0.000000e+00, %722 ]
  %764 = phi float [ %970, %977 ], [ 0.000000e+00, %722 ]
  %765 = phi float [ %967, %977 ], [ 0.000000e+00, %722 ]
  %766 = phi float [ %965, %977 ], [ 0.000000e+00, %722 ]
  %767 = phi float [ %962, %977 ], [ 0.000000e+00, %722 ]
  %768 = phi float [ %960, %977 ], [ 0.000000e+00, %722 ]
  %769 = phi float [ %958, %977 ], [ 0.000000e+00, %722 ]
  %770 = phi float [ %955, %977 ], [ 0.000000e+00, %722 ]
  %771 = phi float [ %932, %977 ], [ 0.000000e+00, %722 ]
  %772 = phi float [ %930, %977 ], [ 0.000000e+00, %722 ]
  %773 = phi float [ %928, %977 ], [ 0.000000e+00, %722 ]
  %774 = phi float [ %924, %977 ], [ 0.000000e+00, %722 ]
  %775 = phi float [ %922, %977 ], [ 0.000000e+00, %722 ]
  %776 = phi float [ %918, %977 ], [ 0.000000e+00, %722 ]
  %777 = phi float [ %916, %977 ], [ 0.000000e+00, %722 ]
  %778 = phi float [ %914, %977 ], [ 0.000000e+00, %722 ]
  %779 = phi float [ %910, %977 ], [ 0.000000e+00, %722 ]
  %780 = phi i32 [ %975, %977 ], [ 0, %722 ]
  %781 = shl i32 %752, 5
  %782 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %781, i32 undef)  ; BufferLoad(srv,index,wot)
  %783 = extractvalue %dx.types.ResRet.i32 %782, 0
  %784 = extractvalue %dx.types.ResRet.i32 %782, 1
  %785 = extractvalue %dx.types.ResRet.i32 %782, 2
  %786 = extractvalue %dx.types.ResRet.i32 %782, 3
  %787 = or i32 %781, 16
  %788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %787, i32 undef)  ; BufferLoad(srv,index,wot)
  %789 = extractvalue %dx.types.ResRet.i32 %788, 0
  %790 = extractvalue %dx.types.ResRet.i32 %788, 1
  %791 = extractvalue %dx.types.ResRet.i32 %788, 2
  %792 = shl i32 %783, 4
  %793 = and i32 %792, 32752
  %794 = call float @dx.op.legacyF16ToF32(i32 131, i32 %793)  ; LegacyF16ToF32(value)
  %795 = lshr i32 %783, 7
  %796 = and i32 %795, 32752
  %797 = call float @dx.op.legacyF16ToF32(i32 131, i32 %796)  ; LegacyF16ToF32(value)
  %798 = lshr i32 %783, 22
  %799 = shl nuw nsw i32 %798, 5
  %800 = call float @dx.op.legacyF16ToF32(i32 131, i32 %799)  ; LegacyF16ToF32(value)
  %801 = and i32 %784, 255
  %802 = uitofp i32 %801 to float
  %803 = fmul fast float %802, 0x3F80204080000000
  %804 = fadd fast float %803, -1.000000e+00
  %805 = lshr i32 %784, 8
  %806 = and i32 %805, 255
  %807 = uitofp i32 %806 to float
  %808 = fmul fast float %807, 0x3F80204080000000
  %809 = fadd fast float %808, -1.000000e+00
  %810 = lshr i32 %784, 16
  %811 = and i32 %810, 255
  %812 = uitofp i32 %811 to float
  %813 = fmul fast float %812, 0x3F80204080000000
  %814 = fadd fast float %813, -1.000000e+00
  %815 = lshr i32 %784, 24
  %816 = uitofp i32 %815 to float
  %817 = fmul fast float %816, 0x3F80204080000000
  %818 = fadd fast float %817, -1.000000e+00
  %819 = and i32 %785, 255
  %820 = uitofp i32 %819 to float
  %821 = fmul fast float %820, 0x3F80204080000000
  %822 = fadd fast float %821, -1.000000e+00
  %823 = lshr i32 %785, 8
  %824 = and i32 %823, 255
  %825 = uitofp i32 %824 to float
  %826 = fmul fast float %825, 0x3F80204080000000
  %827 = fadd fast float %826, -1.000000e+00
  %828 = lshr i32 %785, 16
  %829 = and i32 %828, 255
  %830 = uitofp i32 %829 to float
  %831 = fmul fast float %830, 0x3F80204080000000
  %832 = fadd fast float %831, -1.000000e+00
  %833 = lshr i32 %785, 24
  %834 = uitofp i32 %833 to float
  %835 = fmul fast float %834, 0x3F80204080000000
  %836 = fadd fast float %835, -1.000000e+00
  %837 = and i32 %786, 255
  %838 = uitofp i32 %837 to float
  %839 = fmul fast float %838, 0x3F80204080000000
  %840 = fadd fast float %839, -1.000000e+00
  %841 = lshr i32 %786, 8
  %842 = and i32 %841, 255
  %843 = uitofp i32 %842 to float
  %844 = fmul fast float %843, 0x3F80204080000000
  %845 = fadd fast float %844, -1.000000e+00
  %846 = lshr i32 %786, 16
  %847 = and i32 %846, 255
  %848 = uitofp i32 %847 to float
  %849 = fmul fast float %848, 0x3F80204080000000
  %850 = fadd fast float %849, -1.000000e+00
  %851 = lshr i32 %786, 24
  %852 = uitofp i32 %851 to float
  %853 = fmul fast float %852, 0x3F80204080000000
  %854 = fadd fast float %853, -1.000000e+00
  %855 = and i32 %789, 255
  %856 = uitofp i32 %855 to float
  %857 = fmul fast float %856, 0x3F80204080000000
  %858 = fadd fast float %857, -1.000000e+00
  %859 = lshr i32 %789, 8
  %860 = and i32 %859, 255
  %861 = uitofp i32 %860 to float
  %862 = fmul fast float %861, 0x3F80204080000000
  %863 = fadd fast float %862, -1.000000e+00
  %864 = lshr i32 %789, 16
  %865 = and i32 %864, 255
  %866 = uitofp i32 %865 to float
  %867 = fmul fast float %866, 0x3F80204080000000
  %868 = fadd fast float %867, -1.000000e+00
  %869 = lshr i32 %789, 24
  %870 = uitofp i32 %869 to float
  %871 = fmul fast float %870, 0x3F80204080000000
  %872 = fadd fast float %871, -1.000000e+00
  %873 = and i32 %790, 255
  %874 = uitofp i32 %873 to float
  %875 = fmul fast float %874, 0x3F80204080000000
  %876 = fadd fast float %875, -1.000000e+00
  %877 = lshr i32 %790, 8
  %878 = and i32 %877, 255
  %879 = uitofp i32 %878 to float
  %880 = fmul fast float %879, 0x3F80204080000000
  %881 = fadd fast float %880, -1.000000e+00
  %882 = lshr i32 %790, 16
  %883 = and i32 %882, 255
  %884 = uitofp i32 %883 to float
  %885 = fmul fast float %884, 0x3F80204080000000
  %886 = fadd fast float %885, -1.000000e+00
  %887 = lshr i32 %790, 24
  %888 = uitofp i32 %887 to float
  %889 = fmul fast float %888, 0x3F80204080000000
  %890 = fadd fast float %889, -1.000000e+00
  %891 = and i32 %791, 255
  %892 = uitofp i32 %891 to float
  %893 = fmul fast float %892, 0x3F80204080000000
  %894 = fadd fast float %893, -1.000000e+00
  %895 = lshr i32 %791, 8
  %896 = and i32 %895, 255
  %897 = uitofp i32 %896 to float
  %898 = fmul fast float %897, 0x3F80204080000000
  %899 = fadd fast float %898, -1.000000e+00
  %900 = lshr i32 %791, 16
  %901 = and i32 %900, 255
  %902 = uitofp i32 %901 to float
  %903 = fmul fast float %902, 0x3F80204080000000
  %904 = fadd fast float %903, -1.000000e+00
  %905 = lshr i32 %791, 24
  %906 = uitofp i32 %905 to float
  %907 = fmul fast float %906, 0x3F80204080000000
  %908 = fadd fast float %907, -1.000000e+00
  %909 = fmul fast float %794, %751
  %910 = fadd fast float %909, %779
  %911 = fmul fast float %751, 0x3FFBB67AE0000000
  %912 = fmul fast float %911, %794
  %913 = fmul fast float %912, %804
  %914 = fadd fast float %913, %778
  %915 = fmul fast float %912, %809
  %916 = fadd fast float %915, %777
  %917 = fmul fast float %912, %814
  %918 = fadd fast float %917, %776
  %919 = fmul fast float %751, 0x3FFEFBDEC0000000
  %920 = fmul fast float %919, %794
  %921 = fmul fast float %920, %818
  %922 = fadd fast float %921, %775
  %923 = fmul fast float %920, %822
  %924 = fadd fast float %923, %774
  %925 = fmul fast float %751, 0x4001E377A0000000
  %926 = fmul fast float %925, %794
  %927 = fmul fast float %926, %827
  %928 = fadd fast float %927, %773
  %929 = fmul fast float %920, %832
  %930 = fadd fast float %929, %772
  %931 = fmul fast float %920, %836
  %932 = fadd fast float %931, %771
  %933 = fmul fast float %797, %751
  %934 = fadd fast float %933, %761
  %935 = fmul fast float %911, %797
  %936 = fmul fast float %935, %840
  %937 = fadd fast float %936, %760
  %938 = fmul fast float %935, %845
  %939 = fadd fast float %938, %759
  %940 = fmul fast float %935, %850
  %941 = fadd fast float %940, %758
  %942 = fmul fast float %919, %797
  %943 = fmul fast float %942, %854
  %944 = fadd fast float %943, %757
  %945 = fmul fast float %942, %858
  %946 = fadd fast float %945, %756
  %947 = fmul fast float %925, %797
  %948 = fmul fast float %947, %863
  %949 = fadd fast float %948, %755
  %950 = fmul fast float %942, %868
  %951 = fadd fast float %950, %754
  %952 = fmul fast float %942, %872
  %953 = fadd fast float %952, %753
  %954 = fmul fast float %800, %751
  %955 = fadd fast float %954, %770
  %956 = fmul fast float %911, %800
  %957 = fmul fast float %956, %876
  %958 = fadd fast float %957, %769
  %959 = fmul fast float %956, %881
  %960 = fadd fast float %959, %768
  %961 = fmul fast float %956, %886
  %962 = fadd fast float %961, %767
  %963 = fmul fast float %919, %800
  %964 = fmul fast float %963, %890
  %965 = fadd fast float %964, %766
  %966 = fmul fast float %963, %894
  %967 = fadd fast float %966, %765
  %968 = fmul fast float %925, %800
  %969 = fmul fast float %968, %899
  %970 = fadd fast float %969, %764
  %971 = fmul fast float %963, %904
  %972 = fadd fast float %971, %763
  %973 = fmul fast float %963, %908
  %974 = fadd fast float %973, %762
  %975 = add nuw nsw i32 %780, 1
  %976 = icmp eq i32 %975, 8
  br i1 %976, label %982, label %977

; <label>:977                                     ; preds = %750
  %978 = getelementptr inbounds [8 x i32], [8 x i32]* %30, i32 0, i32 %975
  %979 = load i32, i32* %978, align 4, !tbaa !50, !noalias !54
  %980 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 %975
  %981 = load float, float* %980, align 4, !tbaa !60, !noalias !54
  br label %750

; <label>:982                                     ; preds = %750
  br label %983

; <label>:983                                     ; preds = %982, %720, %287, %268, %240
  %984 = phi float [ 0.000000e+00, %240 ], [ 0.000000e+00, %268 ], [ 0.000000e+00, %287 ], [ 0.000000e+00, %720 ], [ %953, %982 ]
  %985 = phi float [ 0.000000e+00, %240 ], [ 0.000000e+00, %268 ], [ 0.000000e+00, %287 ], [ 0.000000e+00, %720 ], [ %951, %982 ]
  %986 = phi float [ 0.000000e+00, %240 ], [ 0.000000e+00, %268 ], [ 0.000000e+00, %287 ], [ 0.000000e+00, %720 ], [ %949, %982 ]
  %987 = phi float [ 0.000000e+00, %240 ], [ 0.000000e+00, %268 ], [ 0.000000e+00, %287 ], [ 0.000000e+00, %720 ], [ %946, %982 ]
  %988 = phi float [ 0.000000e+00, %240 ], [ 0.000000e+00, %268 ], [ 0.000000e+00, %287 ], [ 0.000000e+00, %720 ], [ %944, %982 ]
  %989 = phi float [ 0.000000e+00, %240 ], [ 0.000000e+00, %268 ], [ 0.000000e+00, %287 ], [ 0.000000e+00, %720 ], [ %941, %982 ]
  %990 = phi float [ 0.000000e+00, %240 ], [ 0.000000e+00, %268 ], [ 0.000000e+00, %287 ], [ 0.000000e+00, %720 ], [ %939, %982 ]
  %991 = phi float [ 0.000000e+00, %240 ], [ 0.000000e+00, %268 ], [ 0.000000e+00, %287 ], [ 0.000000e+00, %720 ], [ %937, %982 ]
  %992 = phi float [ 0.000000e+00, %240 ], [ 0.000000e+00, %268 ], [ 0.000000e+00, %287 ], [ 0.000000e+00, %720 ], [ %934, %982 ]
  %993 = phi float [ 0.000000e+00, %240 ], [ 0.000000e+00, %268 ], [ 0.000000e+00, %287 ], [ 0.000000e+00, %720 ], [ %974, %982 ]
  %994 = phi float [ 0.000000e+00, %240 ], [ 0.000000e+00, %268 ], [ 0.000000e+00, %287 ], [ 0.000000e+00, %720 ], [ %972, %982 ]
  %995 = phi float [ 0.000000e+00, %240 ], [ 0.000000e+00, %268 ], [ 0.000000e+00, %287 ], [ 0.000000e+00, %720 ], [ %970, %982 ]
  %996 = phi float [ 0.000000e+00, %240 ], [ 0.000000e+00, %268 ], [ 0.000000e+00, %287 ], [ 0.000000e+00, %720 ], [ %967, %982 ]
  %997 = phi float [ 0.000000e+00, %240 ], [ 0.000000e+00, %268 ], [ 0.000000e+00, %287 ], [ 0.000000e+00, %720 ], [ %965, %982 ]
  %998 = phi float [ 0.000000e+00, %240 ], [ 0.000000e+00, %268 ], [ 0.000000e+00, %287 ], [ 0.000000e+00, %720 ], [ %962, %982 ]
  %999 = phi float [ 0.000000e+00, %240 ], [ 0.000000e+00, %268 ], [ 0.000000e+00, %287 ], [ 0.000000e+00, %720 ], [ %960, %982 ]
  %1000 = phi float [ 0.000000e+00, %240 ], [ 0.000000e+00, %268 ], [ 0.000000e+00, %287 ], [ 0.000000e+00, %720 ], [ %958, %982 ]
  %1001 = phi float [ 0.000000e+00, %240 ], [ 0.000000e+00, %268 ], [ 0.000000e+00, %287 ], [ 0.000000e+00, %720 ], [ %955, %982 ]
  %1002 = phi float [ 0.000000e+00, %240 ], [ 0.000000e+00, %268 ], [ 0.000000e+00, %287 ], [ 0.000000e+00, %720 ], [ %932, %982 ]
  %1003 = phi float [ 0.000000e+00, %240 ], [ 0.000000e+00, %268 ], [ 0.000000e+00, %287 ], [ 0.000000e+00, %720 ], [ %930, %982 ]
  %1004 = phi float [ 0.000000e+00, %240 ], [ 0.000000e+00, %268 ], [ 0.000000e+00, %287 ], [ 0.000000e+00, %720 ], [ %928, %982 ]
  %1005 = phi float [ 0.000000e+00, %240 ], [ 0.000000e+00, %268 ], [ 0.000000e+00, %287 ], [ 0.000000e+00, %720 ], [ %924, %982 ]
  %1006 = phi float [ 0.000000e+00, %240 ], [ 0.000000e+00, %268 ], [ 0.000000e+00, %287 ], [ 0.000000e+00, %720 ], [ %922, %982 ]
  %1007 = phi float [ 0.000000e+00, %240 ], [ 0.000000e+00, %268 ], [ 0.000000e+00, %287 ], [ 0.000000e+00, %720 ], [ %918, %982 ]
  %1008 = phi float [ 0.000000e+00, %240 ], [ 0.000000e+00, %268 ], [ 0.000000e+00, %287 ], [ 0.000000e+00, %720 ], [ %916, %982 ]
  %1009 = phi float [ 0.000000e+00, %240 ], [ 0.000000e+00, %268 ], [ 0.000000e+00, %287 ], [ 0.000000e+00, %720 ], [ %914, %982 ]
  %1010 = phi float [ 0.000000e+00, %240 ], [ 0.000000e+00, %268 ], [ 0.000000e+00, %287 ], [ 0.000000e+00, %720 ], [ %910, %982 ]
  %1011 = phi i1 [ false, %240 ], [ false, %268 ], [ false, %287 ], [ false, %720 ], [ true, %982 ]
  br i1 %1011, label %1085, label %1012, !dx.controlflow.hints !63

; <label>:1012                                    ; preds = %983
  %1013 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %1014 = extractvalue %dx.types.ResRet.i32 %1013, 0
  %1015 = extractvalue %dx.types.ResRet.i32 %1013, 1
  %1016 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %1017 = extractvalue %dx.types.ResRet.i32 %1016, 0
  %1018 = extractvalue %dx.types.ResRet.i32 %1016, 1
  %1019 = extractvalue %dx.types.ResRet.i32 %1016, 2
  %1020 = extractvalue %dx.types.ResRet.i32 %1016, 3
  %1021 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %1022 = extractvalue %dx.types.ResRet.i32 %1021, 0
  %1023 = extractvalue %dx.types.ResRet.i32 %1021, 1
  %1024 = extractvalue %dx.types.ResRet.i32 %1021, 2
  %1025 = extractvalue %dx.types.ResRet.i32 %1021, 3
  %1026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %1027 = extractvalue %dx.types.ResRet.i32 %1026, 0
  %1028 = extractvalue %dx.types.ResRet.i32 %1026, 1
  %1029 = extractvalue %dx.types.ResRet.i32 %1026, 2
  %1030 = extractvalue %dx.types.ResRet.i32 %1026, 3
  %1031 = and i32 %1027, 65535
  %1032 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1031)  ; LegacyF16ToF32(value)
  %1033 = lshr i32 %1027, 16
  %1034 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1033)  ; LegacyF16ToF32(value)
  %1035 = and i32 %1028, 65535
  %1036 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1035)  ; LegacyF16ToF32(value)
  %1037 = lshr i32 %1028, 16
  %1038 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1037)  ; LegacyF16ToF32(value)
  %1039 = and i32 %1029, 65535
  %1040 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1039)  ; LegacyF16ToF32(value)
  %1041 = lshr i32 %1029, 16
  %1042 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1041)  ; LegacyF16ToF32(value)
  %1043 = and i32 %1030, 65535
  %1044 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1043)  ; LegacyF16ToF32(value)
  %1045 = lshr i32 %1030, 16
  %1046 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1045)  ; LegacyF16ToF32(value)
  %1047 = and i32 %1022, 65535
  %1048 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1047)  ; LegacyF16ToF32(value)
  %1049 = lshr i32 %1022, 16
  %1050 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1049)  ; LegacyF16ToF32(value)
  %1051 = and i32 %1023, 65535
  %1052 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1051)  ; LegacyF16ToF32(value)
  %1053 = lshr i32 %1023, 16
  %1054 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1053)  ; LegacyF16ToF32(value)
  %1055 = and i32 %1024, 65535
  %1056 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1055)  ; LegacyF16ToF32(value)
  %1057 = lshr i32 %1024, 16
  %1058 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1057)  ; LegacyF16ToF32(value)
  %1059 = and i32 %1025, 65535
  %1060 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1059)  ; LegacyF16ToF32(value)
  %1061 = lshr i32 %1025, 16
  %1062 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1061)  ; LegacyF16ToF32(value)
  %1063 = and i32 %1017, 65535
  %1064 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1063)  ; LegacyF16ToF32(value)
  %1065 = lshr i32 %1017, 16
  %1066 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1065)  ; LegacyF16ToF32(value)
  %1067 = and i32 %1018, 65535
  %1068 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1067)  ; LegacyF16ToF32(value)
  %1069 = lshr i32 %1018, 16
  %1070 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1069)  ; LegacyF16ToF32(value)
  %1071 = and i32 %1019, 65535
  %1072 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1071)  ; LegacyF16ToF32(value)
  %1073 = lshr i32 %1019, 16
  %1074 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1073)  ; LegacyF16ToF32(value)
  %1075 = and i32 %1020, 65535
  %1076 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1075)  ; LegacyF16ToF32(value)
  %1077 = lshr i32 %1020, 16
  %1078 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1077)  ; LegacyF16ToF32(value)
  %1079 = and i32 %1014, 65535
  %1080 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1079)  ; LegacyF16ToF32(value)
  %1081 = lshr i32 %1014, 16
  %1082 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1081)  ; LegacyF16ToF32(value)
  %1083 = and i32 %1015, 65535
  %1084 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1083)  ; LegacyF16ToF32(value)
  br label %1085

; <label>:1085                                    ; preds = %1012, %983, %237
  %1086 = phi float [ %1084, %1012 ], [ %993, %983 ], [ 0.000000e+00, %237 ]
  %1087 = phi float [ %1082, %1012 ], [ %994, %983 ], [ 0.000000e+00, %237 ]
  %1088 = phi float [ %1080, %1012 ], [ %995, %983 ], [ 0.000000e+00, %237 ]
  %1089 = phi float [ %1078, %1012 ], [ %996, %983 ], [ 0.000000e+00, %237 ]
  %1090 = phi float [ %1076, %1012 ], [ %997, %983 ], [ 0.000000e+00, %237 ]
  %1091 = phi float [ %1074, %1012 ], [ %998, %983 ], [ 0.000000e+00, %237 ]
  %1092 = phi float [ %1072, %1012 ], [ %999, %983 ], [ 0.000000e+00, %237 ]
  %1093 = phi float [ %1070, %1012 ], [ %1000, %983 ], [ 0.000000e+00, %237 ]
  %1094 = phi float [ %1068, %1012 ], [ %1001, %983 ], [ 0.000000e+00, %237 ]
  %1095 = phi float [ %1066, %1012 ], [ %984, %983 ], [ 0.000000e+00, %237 ]
  %1096 = phi float [ %1064, %1012 ], [ %985, %983 ], [ 0.000000e+00, %237 ]
  %1097 = phi float [ %1062, %1012 ], [ %986, %983 ], [ 0.000000e+00, %237 ]
  %1098 = phi float [ %1060, %1012 ], [ %987, %983 ], [ 0.000000e+00, %237 ]
  %1099 = phi float [ %1058, %1012 ], [ %988, %983 ], [ 0.000000e+00, %237 ]
  %1100 = phi float [ %1056, %1012 ], [ %989, %983 ], [ 0.000000e+00, %237 ]
  %1101 = phi float [ %1054, %1012 ], [ %990, %983 ], [ 0.000000e+00, %237 ]
  %1102 = phi float [ %1052, %1012 ], [ %991, %983 ], [ 0.000000e+00, %237 ]
  %1103 = phi float [ %1050, %1012 ], [ %992, %983 ], [ 0.000000e+00, %237 ]
  %1104 = phi float [ %1048, %1012 ], [ %1002, %983 ], [ 0.000000e+00, %237 ]
  %1105 = phi float [ %1046, %1012 ], [ %1003, %983 ], [ 0.000000e+00, %237 ]
  %1106 = phi float [ %1044, %1012 ], [ %1004, %983 ], [ 0.000000e+00, %237 ]
  %1107 = phi float [ %1042, %1012 ], [ %1005, %983 ], [ 0.000000e+00, %237 ]
  %1108 = phi float [ %1040, %1012 ], [ %1006, %983 ], [ 0.000000e+00, %237 ]
  %1109 = phi float [ %1038, %1012 ], [ %1007, %983 ], [ 0.000000e+00, %237 ]
  %1110 = phi float [ %1036, %1012 ], [ %1008, %983 ], [ 0.000000e+00, %237 ]
  %1111 = phi float [ %1034, %1012 ], [ %1009, %983 ], [ 0.000000e+00, %237 ]
  %1112 = phi float [ %1032, %1012 ], [ %1010, %983 ], [ 0.000000e+00, %237 ]
  %1113 = fcmp fast olt float %238, 1.000000e+00
  br i1 %1113, label %1114, label %1774, !dx.controlflow.hints !64

; <label>:1114                                    ; preds = %1085
  %1115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1116 = extractvalue %dx.types.CBufRet.f32 %1115, 0
  %1117 = extractvalue %dx.types.CBufRet.f32 %1115, 1
  %1118 = fsub fast float %188, %1116
  %1119 = fsub fast float %193, %1117
  %1120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1121 = extractvalue %dx.types.CBufRet.f32 %1120, 0
  %1122 = extractvalue %dx.types.CBufRet.f32 %1120, 1
  %1123 = fmul fast float %1118, %1121
  %1124 = fmul fast float %1119, %1122
  %1125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1126 = extractvalue %dx.types.CBufRet.f32 %1125, 0
  %1127 = fmul fast float %1126, %1123
  %1128 = extractvalue %dx.types.CBufRet.f32 %1125, 1
  %1129 = fadd fast float %1127, %1128
  %1130 = extractvalue %dx.types.CBufRet.f32 %1125, 2
  %1131 = fmul fast float %1130, %1124
  %1132 = extractvalue %dx.types.CBufRet.f32 %1125, 3
  %1133 = fadd fast float %1131, %1132
  %1134 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %22, float %1129, float %1133, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1135 = extractvalue %dx.types.ResRet.f32 %1134, 0
  %1136 = extractvalue %dx.types.ResRet.f32 %1134, 1
  %1137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1138 = extractvalue %dx.types.CBufRet.f32 %1137, 1
  %1139 = extractvalue %dx.types.CBufRet.f32 %1137, 0
  %1140 = fsub fast float %1138, %1139
  %1141 = fmul fast float %1140, %1135
  %1142 = fadd fast float %1141, %1139
  %1143 = extractvalue %dx.types.CBufRet.f32 %1137, 3
  %1144 = extractvalue %dx.types.CBufRet.f32 %1137, 2
  %1145 = fsub fast float %1143, %1144
  %1146 = fmul fast float %1145, %1136
  %1147 = fadd fast float %1146, %1144
  %1148 = fsub fast float %198, %1142
  %1149 = fsub fast float %1147, %1142
  %1150 = fdiv fast float %1148, %1149
  %1151 = call float @dx.op.unary.f32(i32 7, float %1150)  ; Saturate(value)
  %1152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %1153 = extractvalue %dx.types.CBufRet.f32 %1152, 0
  %1154 = fmul fast float %1153, %1151
  %1155 = extractvalue %dx.types.CBufRet.f32 %1152, 1
  %1156 = fadd fast float %1154, %1155
  %1157 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %22, float %1129, float %1133, float %1156, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1158 = extractvalue %dx.types.ResRet.f32 %1157, 0
  %1159 = extractvalue %dx.types.ResRet.f32 %1157, 1
  %1160 = extractvalue %dx.types.ResRet.f32 %1157, 2
  %1161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %1162 = extractvalue %dx.types.CBufRet.f32 %1161, 0
  %1163 = extractvalue %dx.types.CBufRet.f32 %1161, 1
  %1164 = extractvalue %dx.types.CBufRet.f32 %1161, 2
  %1165 = fmul fast float %1162, %1158
  %1166 = fmul fast float %1163, %1159
  %1167 = fmul fast float %1164, %1160
  %1168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %1169 = extractvalue %dx.types.CBufRet.f32 %1168, 0
  %1170 = extractvalue %dx.types.CBufRet.f32 %1168, 1
  %1171 = extractvalue %dx.types.CBufRet.f32 %1168, 2
  %1172 = fadd fast float %1165, %1169
  %1173 = fadd fast float %1166, %1170
  %1174 = fadd fast float %1167, %1171
  %1175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %1176 = extractvalue %dx.types.CBufRet.f32 %1175, 0
  %1177 = fmul fast float %1176, %1123
  %1178 = extractvalue %dx.types.CBufRet.f32 %1175, 1
  %1179 = fadd fast float %1177, %1178
  %1180 = extractvalue %dx.types.CBufRet.f32 %1175, 2
  %1181 = fmul fast float %1180, %1124
  %1182 = extractvalue %dx.types.CBufRet.f32 %1175, 3
  %1183 = fadd fast float %1181, %1182
  %1184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %1185 = extractvalue %dx.types.CBufRet.f32 %1184, 0
  %1186 = extractvalue %dx.types.CBufRet.f32 %1184, 1
  %1187 = extractvalue %dx.types.CBufRet.f32 %1184, 2
  %1188 = extractvalue %dx.types.CBufRet.f32 %1184, 3
  %1189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %1190 = extractvalue %dx.types.CBufRet.f32 %1189, 0
  %1191 = extractvalue %dx.types.CBufRet.f32 %1189, 1
  %1192 = extractvalue %dx.types.CBufRet.f32 %1189, 2
  %1193 = extractvalue %dx.types.CBufRet.f32 %1189, 3
  %1194 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %22, float %1179, float %1183, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1195 = extractvalue %dx.types.ResRet.f32 %1194, 0
  %1196 = extractvalue %dx.types.ResRet.f32 %1194, 1
  %1197 = extractvalue %dx.types.ResRet.f32 %1194, 2
  %1198 = extractvalue %dx.types.ResRet.f32 %1194, 3
  %1199 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %22, float %1179, float %1183, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1200 = extractvalue %dx.types.ResRet.f32 %1199, 0
  %1201 = extractvalue %dx.types.ResRet.f32 %1199, 1
  %1202 = extractvalue %dx.types.ResRet.f32 %1199, 2
  %1203 = extractvalue %dx.types.ResRet.f32 %1199, 3
  %1204 = fmul fast float %1195, %1172
  %1205 = fmul fast float %1200, %1172
  %1206 = fmul fast float %1202, %1172
  %1207 = fmul fast float %1198, %1172
  %1208 = fadd fast float %1204, %1185
  %1209 = fadd fast float %1205, %1186
  %1210 = fadd fast float %1206, %1187
  %1211 = fadd fast float %1207, %1188
  %1212 = fmul fast float %1196, %1172
  %1213 = fmul fast float %1201, %1172
  %1214 = fadd fast float %1212, %1190
  %1215 = fadd fast float %1213, %1191
  %1216 = fmul fast float %1197, %1172
  %1217 = fmul fast float %1203, %1172
  %1218 = fadd fast float %1216, %1192
  %1219 = fadd fast float %1217, %1193
  %1220 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %22, float %1179, float %1183, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1221 = extractvalue %dx.types.ResRet.f32 %1220, 0
  %1222 = extractvalue %dx.types.ResRet.f32 %1220, 1
  %1223 = extractvalue %dx.types.ResRet.f32 %1220, 2
  %1224 = extractvalue %dx.types.ResRet.f32 %1220, 3
  %1225 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %22, float %1179, float %1183, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1226 = extractvalue %dx.types.ResRet.f32 %1225, 0
  %1227 = extractvalue %dx.types.ResRet.f32 %1225, 1
  %1228 = extractvalue %dx.types.ResRet.f32 %1225, 2
  %1229 = extractvalue %dx.types.ResRet.f32 %1225, 3
  %1230 = fmul fast float %1221, %1173
  %1231 = fmul fast float %1226, %1173
  %1232 = fmul fast float %1228, %1173
  %1233 = fmul fast float %1224, %1173
  %1234 = fadd fast float %1208, %1230
  %1235 = fadd fast float %1209, %1231
  %1236 = fadd fast float %1210, %1232
  %1237 = fadd fast float %1211, %1233
  %1238 = fmul fast float %1222, %1173
  %1239 = fmul fast float %1227, %1173
  %1240 = fadd fast float %1214, %1238
  %1241 = fadd fast float %1215, %1239
  %1242 = fmul fast float %1223, %1173
  %1243 = fmul fast float %1229, %1173
  %1244 = fadd fast float %1218, %1242
  %1245 = fadd fast float %1219, %1243
  %1246 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %22, float %1179, float %1183, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1247 = extractvalue %dx.types.ResRet.f32 %1246, 0
  %1248 = extractvalue %dx.types.ResRet.f32 %1246, 1
  %1249 = extractvalue %dx.types.ResRet.f32 %1246, 2
  %1250 = extractvalue %dx.types.ResRet.f32 %1246, 3
  %1251 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %22, float %1179, float %1183, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1252 = extractvalue %dx.types.ResRet.f32 %1251, 0
  %1253 = extractvalue %dx.types.ResRet.f32 %1251, 1
  %1254 = extractvalue %dx.types.ResRet.f32 %1251, 2
  %1255 = extractvalue %dx.types.ResRet.f32 %1251, 3
  %1256 = fmul fast float %1247, %1174
  %1257 = fmul fast float %1252, %1174
  %1258 = fmul fast float %1254, %1174
  %1259 = fmul fast float %1250, %1174
  %1260 = fadd fast float %1234, %1256
  %1261 = fadd fast float %1235, %1257
  %1262 = fadd fast float %1236, %1258
  %1263 = fadd fast float %1237, %1259
  %1264 = fmul fast float %1248, %1174
  %1265 = fmul fast float %1253, %1174
  %1266 = fadd fast float %1240, %1264
  %1267 = fadd fast float %1241, %1265
  %1268 = fmul fast float %1249, %1174
  %1269 = fmul fast float %1255, %1174
  %1270 = fadd fast float %1244, %1268
  %1271 = fadd fast float %1245, %1269
  %1272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %1273 = extractvalue %dx.types.CBufRet.f32 %1272, 0
  %1274 = fsub fast float %188, %1273
  %1275 = fsub fast float %1116, %188
  %1276 = call float @dx.op.binary.f32(i32 35, float %1275, float %1274)  ; FMax(a,b)
  %1277 = extractvalue %dx.types.CBufRet.f32 %1272, 1
  %1278 = fsub fast float %193, %1277
  %1279 = fsub fast float %1117, %193
  %1280 = call float @dx.op.binary.f32(i32 35, float %1279, float %1278)  ; FMax(a,b)
  %1281 = call float @dx.op.binary.f32(i32 35, float %1276, float %1280)  ; FMax(a,b)
  %1282 = extractvalue %dx.types.CBufRet.f32 %1120, 3
  %1283 = fmul fast float %1282, %1281
  %1284 = call float @dx.op.unary.f32(i32 7, float %1283)  ; Saturate(value)
  %1285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %1286 = extractvalue %dx.types.CBufRet.f32 %1285, 0
  %1287 = extractvalue %dx.types.CBufRet.f32 %1285, 1
  %1288 = extractvalue %dx.types.CBufRet.f32 %1285, 2
  %1289 = extractvalue %dx.types.CBufRet.f32 %1285, 3
  %1290 = fsub fast float %1286, %1260
  %1291 = fsub fast float %1287, %1261
  %1292 = fsub fast float %1288, %1262
  %1293 = fsub fast float %1289, %1263
  %1294 = fmul fast float %1290, %1284
  %1295 = fmul fast float %1291, %1284
  %1296 = fmul fast float %1292, %1284
  %1297 = fmul fast float %1293, %1284
  %1298 = fadd fast float %1294, %1260
  %1299 = fadd fast float %1295, %1261
  %1300 = fadd fast float %1296, %1262
  %1301 = fadd fast float %1297, %1263
  %1302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %1303 = extractvalue %dx.types.CBufRet.f32 %1302, 0
  %1304 = extractvalue %dx.types.CBufRet.f32 %1302, 1
  %1305 = fsub fast float %1303, %1266
  %1306 = fsub fast float %1304, %1267
  %1307 = fmul fast float %1305, %1284
  %1308 = fmul fast float %1306, %1284
  %1309 = fadd fast float %1307, %1266
  %1310 = fadd fast float %1308, %1267
  %1311 = extractvalue %dx.types.CBufRet.f32 %1302, 2
  %1312 = extractvalue %dx.types.CBufRet.f32 %1302, 3
  %1313 = fsub fast float %1311, %1270
  %1314 = fsub fast float %1312, %1271
  %1315 = fmul fast float %1313, %1284
  %1316 = fmul fast float %1314, %1284
  %1317 = fadd fast float %1315, %1270
  %1318 = fadd fast float %1316, %1271
  %1319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %1320 = extractvalue %dx.types.CBufRet.f32 %1319, 0
  %1321 = fmul fast float %1320, %1298
  %1322 = fmul fast float %1320, %1299
  %1323 = fmul fast float %1320, %1300
  %1324 = fmul fast float %1320, %1301
  %1325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %1326 = extractvalue %dx.types.CBufRet.f32 %1325, 0
  %1327 = fmul fast float %1326, %1309
  %1328 = fmul fast float %1326, %1310
  %1329 = fadd fast float %1327, %1321
  %1330 = fadd fast float %1328, %1323
  %1331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %1332 = extractvalue %dx.types.CBufRet.f32 %1331, 0
  %1333 = fmul fast float %1332, %1317
  %1334 = fmul fast float %1332, %1318
  %1335 = fadd fast float %1329, %1333
  %1336 = fadd fast float %1330, %1334
  %1337 = extractvalue %dx.types.CBufRet.f32 %1319, 1
  %1338 = fmul fast float %1337, %1298
  %1339 = fmul fast float %1337, %1299
  %1340 = fmul fast float %1337, %1300
  %1341 = fmul fast float %1337, %1301
  %1342 = extractvalue %dx.types.CBufRet.f32 %1325, 1
  %1343 = fmul fast float %1342, %1309
  %1344 = fmul fast float %1342, %1310
  %1345 = fadd fast float %1343, %1338
  %1346 = fadd fast float %1344, %1340
  %1347 = extractvalue %dx.types.CBufRet.f32 %1331, 1
  %1348 = fmul fast float %1347, %1317
  %1349 = fmul fast float %1347, %1318
  %1350 = fadd fast float %1345, %1348
  %1351 = fadd fast float %1346, %1349
  %1352 = extractvalue %dx.types.CBufRet.f32 %1319, 2
  %1353 = fmul fast float %1352, %1298
  %1354 = fmul fast float %1352, %1299
  %1355 = fmul fast float %1352, %1300
  %1356 = fmul fast float %1352, %1301
  %1357 = extractvalue %dx.types.CBufRet.f32 %1325, 2
  %1358 = fmul fast float %1357, %1309
  %1359 = fmul fast float %1357, %1310
  %1360 = fadd fast float %1358, %1353
  %1361 = fadd fast float %1359, %1355
  %1362 = extractvalue %dx.types.CBufRet.f32 %1331, 2
  %1363 = fmul fast float %1362, %1317
  %1364 = fmul fast float %1362, %1318
  %1365 = fadd fast float %1360, %1363
  %1366 = fadd fast float %1361, %1364
  %1367 = fmul fast float %1354, %1354
  %1368 = fmul fast float %1366, %1366
  %1369 = fmul fast float %1356, %1356
  %1370 = fadd fast float %1369, %1367
  %1371 = fadd fast float %1370, %1368
  %1372 = call float @dx.op.unary.f32(i32 24, float %1371)  ; Sqrt(value)
  %1373 = fcmp fast ugt float %1372, 0.000000e+00
  br i1 %1373, label %1374, label %1389, !dx.controlflow.hints !65

; <label>:1374                                    ; preds = %1114
  %1375 = fsub fast float -0.000000e+00, %1356
  %1376 = fdiv fast float %1375, %1372
  %1377 = fsub fast float -0.000000e+00, %1354
  %1378 = fdiv fast float %1377, %1372
  %1379 = fdiv fast float %1366, %1372
  %1380 = fmul fast float %1365, 0x3FE279A760000000
  %1381 = fmul fast float %1378, %1354
  %1382 = fmul fast float %1379, %1366
  %1383 = fmul fast float %1376, %1356
  %1384 = fadd fast float %1381, %1383
  %1385 = fsub fast float %1384, %1382
  %1386 = call float @dx.op.unary.f32(i32 6, float %1385)  ; FAbs(value)
  %1387 = fadd fast float %1386, 0x3DDB7CDFE0000000
  %1388 = fdiv fast float %1380, %1387
  br label %1389

; <label>:1389                                    ; preds = %1374, %1114
  %1390 = phi float [ %1388, %1374 ], [ 1.000000e+00, %1114 ]
  %1391 = fmul fast float %1339, %1339
  %1392 = fmul fast float %1351, %1351
  %1393 = fmul fast float %1341, %1341
  %1394 = fadd fast float %1393, %1391
  %1395 = fadd fast float %1394, %1392
  %1396 = call float @dx.op.unary.f32(i32 24, float %1395)  ; Sqrt(value)
  %1397 = fcmp fast ugt float %1396, 0.000000e+00
  br i1 %1397, label %1398, label %1413, !dx.controlflow.hints !65

; <label>:1398                                    ; preds = %1389
  %1399 = fsub fast float -0.000000e+00, %1341
  %1400 = fdiv fast float %1399, %1396
  %1401 = fsub fast float -0.000000e+00, %1339
  %1402 = fdiv fast float %1401, %1396
  %1403 = fdiv fast float %1351, %1396
  %1404 = fmul fast float %1350, 0x3FE279A760000000
  %1405 = fmul fast float %1402, %1339
  %1406 = fmul fast float %1403, %1351
  %1407 = fmul fast float %1400, %1341
  %1408 = fadd fast float %1405, %1407
  %1409 = fsub fast float %1408, %1406
  %1410 = call float @dx.op.unary.f32(i32 6, float %1409)  ; FAbs(value)
  %1411 = fadd fast float %1410, 0x3DDB7CDFE0000000
  %1412 = fdiv fast float %1404, %1411
  br label %1413

; <label>:1413                                    ; preds = %1398, %1389
  %1414 = phi float [ %1412, %1398 ], [ 1.000000e+00, %1389 ]
  %1415 = call float @dx.op.binary.f32(i32 36, float %1414, float %1390)  ; FMin(a,b)
  %1416 = fmul fast float %1322, %1322
  %1417 = fmul fast float %1336, %1336
  %1418 = fmul fast float %1324, %1324
  %1419 = fadd fast float %1418, %1416
  %1420 = fadd fast float %1419, %1417
  %1421 = call float @dx.op.unary.f32(i32 24, float %1420)  ; Sqrt(value)
  %1422 = fcmp fast ugt float %1421, 0.000000e+00
  br i1 %1422, label %1423, label %1438, !dx.controlflow.hints !65

; <label>:1423                                    ; preds = %1413
  %1424 = fsub fast float -0.000000e+00, %1324
  %1425 = fdiv fast float %1424, %1421
  %1426 = fsub fast float -0.000000e+00, %1322
  %1427 = fdiv fast float %1426, %1421
  %1428 = fdiv fast float %1336, %1421
  %1429 = fmul fast float %1335, 0x3FE279A760000000
  %1430 = fmul fast float %1427, %1322
  %1431 = fmul fast float %1428, %1336
  %1432 = fmul fast float %1425, %1324
  %1433 = fadd fast float %1430, %1432
  %1434 = fsub fast float %1433, %1431
  %1435 = call float @dx.op.unary.f32(i32 6, float %1434)  ; FAbs(value)
  %1436 = fadd fast float %1435, 0x3DDB7CDFE0000000
  %1437 = fdiv fast float %1429, %1436
  br label %1438

; <label>:1438                                    ; preds = %1423, %1413
  %1439 = phi float [ %1437, %1423 ], [ 1.000000e+00, %1413 ]
  %1440 = call float @dx.op.binary.f32(i32 36, float %1439, float %1415)  ; FMin(a,b)
  %1441 = call float @dx.op.unary.f32(i32 7, float %1440)  ; Saturate(value)
  %1442 = fcmp fast olt float %1441, 1.000000e+00
  br i1 %1442, label %1443, label %1453, !dx.controlflow.hints !66

; <label>:1443                                    ; preds = %1438
  %1444 = fmul fast float %1441, %1322
  %1445 = fmul fast float %1441, %1336
  %1446 = fmul fast float %1441, %1324
  %1447 = fmul fast float %1441, %1339
  %1448 = fmul fast float %1441, %1351
  %1449 = fmul fast float %1441, %1341
  %1450 = fmul fast float %1441, %1354
  %1451 = fmul fast float %1441, %1366
  %1452 = fmul fast float %1441, %1356
  br label %1453

; <label>:1453                                    ; preds = %1443, %1438
  %1454 = phi float [ %1450, %1443 ], [ %1354, %1438 ]
  %1455 = phi float [ %1451, %1443 ], [ %1366, %1438 ]
  %1456 = phi float [ %1452, %1443 ], [ %1356, %1438 ]
  %1457 = phi float [ %1447, %1443 ], [ %1339, %1438 ]
  %1458 = phi float [ %1448, %1443 ], [ %1351, %1438 ]
  %1459 = phi float [ %1449, %1443 ], [ %1341, %1438 ]
  %1460 = phi float [ %1444, %1443 ], [ %1322, %1438 ]
  %1461 = phi float [ %1445, %1443 ], [ %1336, %1438 ]
  %1462 = phi float [ %1446, %1443 ], [ %1324, %1438 ]
  %1463 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1335)  ; FMax(a,b)
  %1464 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1350)  ; FMax(a,b)
  %1465 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1365)  ; FMax(a,b)
  %1466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %1467 = extractvalue %dx.types.CBufRet.f32 %1466, 0
  %1468 = fcmp fast ogt float %1467, 0.000000e+00
  %1469 = fcmp fast oge float %1123, 0.000000e+00
  %1470 = and i1 %1469, %1468
  %1471 = fcmp fast ole float %1123, 1.000000e+00
  %1472 = and i1 %1471, %1470
  %1473 = fcmp fast oge float %1124, 0.000000e+00
  %1474 = and i1 %1473, %1472
  %1475 = fcmp fast ole float %1124, 1.000000e+00
  %1476 = and i1 %1475, %1474
  br i1 %1476, label %1477, label %1622, !dx.controlflow.hints !67

; <label>:1477                                    ; preds = %1453
  %1478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1479 = extractvalue %dx.types.CBufRet.f32 %1478, 2
  %1480 = extractvalue %dx.types.CBufRet.f32 %1478, 3
  %1481 = fmul fast float %1479, %1123
  %1482 = fmul fast float %1480, %1124
  %1483 = call float @dx.op.unary.f32(i32 27, float %1481)  ; Round_ni(value)
  %1484 = call float @dx.op.unary.f32(i32 27, float %1482)  ; Round_ni(value)
  %1485 = fptosi float %1483 to i32
  %1486 = fptosi float %1484 to i32
  %1487 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %16, i32 0, i32 %1485, i32 %1486, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1488 = extractvalue %dx.types.ResRet.i32 %1487, 0
  %1489 = and i32 %1488, 65535
  %1490 = lshr i32 %1488, 16
  %1491 = icmp eq i32 %1489, 65535
  br i1 %1491, label %1528, label %1492, !dx.controlflow.hints !68

; <label>:1492                                    ; preds = %1477
  %1493 = extractvalue %dx.types.CBufRet.f32 %1466, 1
  %1494 = extractvalue %dx.types.CBufRet.f32 %1478, 0
  %1495 = extractvalue %dx.types.CBufRet.f32 %1478, 1
  %1496 = fmul fast float %1494, %1123
  %1497 = fmul fast float %1495, %1124
  %1498 = fmul fast float %1496, 1.250000e-01
  %1499 = fmul fast float %1497, 1.250000e-01
  %1500 = call float @dx.op.unary.f32(i32 27, float %1498)  ; Round_ni(value)
  %1501 = call float @dx.op.unary.f32(i32 27, float %1499)  ; Round_ni(value)
  %1502 = fmul fast float %1500, 8.000000e+00
  %1503 = fmul fast float %1501, 8.000000e+00
  %1504 = and i32 %1488, 255
  %1505 = lshr i32 %1488, 8
  %1506 = and i32 %1505, 255
  %1507 = mul nuw nsw i32 %1504, 9
  %1508 = uitofp i32 %1507 to float
  %1509 = mul nuw nsw i32 %1506, 9
  %1510 = uitofp i32 %1509 to float
  %1511 = fadd fast float %1508, 5.000000e-01
  %1512 = fadd fast float %1511, %1496
  %1513 = fsub fast float %1512, %1502
  %1514 = fadd fast float %1510, 5.000000e-01
  %1515 = fadd fast float %1514, %1497
  %1516 = fsub fast float %1515, %1503
  %1517 = fdiv fast float %1513, %1467
  %1518 = fdiv fast float %1516, %1493
  %1519 = fmul fast float %1151, 4.375000e-01
  %1520 = fadd fast float %1519, 3.125000e-02
  %1521 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %22, float %1517, float %1518, float %1520, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1522 = extractvalue %dx.types.ResRet.f32 %1521, 0
  %1523 = extractvalue %dx.types.ResRet.f32 %1521, 1
  %1524 = extractvalue %dx.types.ResRet.f32 %1521, 2
  %1525 = fadd fast float %1522, %1463
  %1526 = fadd fast float %1523, %1464
  %1527 = fadd fast float %1524, %1465
  br label %1528

; <label>:1528                                    ; preds = %1492, %1477
  %1529 = phi float [ %1527, %1492 ], [ %1465, %1477 ]
  %1530 = phi float [ %1526, %1492 ], [ %1464, %1477 ]
  %1531 = phi float [ %1525, %1492 ], [ %1463, %1477 ]
  %1532 = icmp eq i32 %1490, 65535
  br i1 %1532, label %1622, label %1533, !dx.controlflow.hints !69

; <label>:1533                                    ; preds = %1528
  %1534 = extractvalue %dx.types.CBufRet.f32 %1466, 1
  %1535 = extractvalue %dx.types.CBufRet.f32 %1478, 0
  %1536 = extractvalue %dx.types.CBufRet.f32 %1478, 1
  %1537 = fmul fast float %1535, %1123
  %1538 = fmul fast float %1536, %1124
  %1539 = fmul fast float %1537, 1.250000e-01
  %1540 = fmul fast float %1538, 1.250000e-01
  %1541 = call float @dx.op.unary.f32(i32 27, float %1539)  ; Round_ni(value)
  %1542 = call float @dx.op.unary.f32(i32 27, float %1540)  ; Round_ni(value)
  %1543 = fmul fast float %1541, 8.000000e+00
  %1544 = fmul fast float %1542, 8.000000e+00
  %1545 = fsub fast float %1537, %1543
  %1546 = fsub fast float %1538, %1544
  %1547 = fadd fast float %1545, 5.000000e-01
  %1548 = fadd fast float %1546, 5.000000e-01
  %1549 = and i32 %1490, 255
  %1550 = lshr i32 %1488, 24
  %1551 = mul nuw nsw i32 %1549, 9
  %1552 = uitofp i32 %1551 to float
  %1553 = mul nuw nsw i32 %1550, 9
  %1554 = uitofp i32 %1553 to float
  %1555 = fadd fast float %1547, %1552
  %1556 = fadd fast float %1548, %1554
  %1557 = fdiv fast float %1555, %1467
  %1558 = fdiv fast float %1556, %1534
  %1559 = fmul fast float %1151, 4.375000e-01
  %1560 = fadd fast float %1559, 3.125000e-02
  %1561 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %22, float %1557, float %1558, float %1560, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1562 = extractvalue %dx.types.ResRet.f32 %1561, 0
  %1563 = extractvalue %dx.types.ResRet.f32 %1561, 1
  %1564 = extractvalue %dx.types.ResRet.f32 %1561, 2
  %1565 = fadd fast float %1559, 5.312500e-01
  %1566 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %22, float %1557, float %1558, float %1565, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1567 = extractvalue %dx.types.ResRet.f32 %1566, 0
  %1568 = extractvalue %dx.types.ResRet.f32 %1566, 1
  %1569 = extractvalue %dx.types.ResRet.f32 %1566, 2
  %1570 = fmul fast float %1567, 2.000000e+00
  %1571 = fmul fast float %1568, 2.000000e+00
  %1572 = fmul fast float %1569, 2.000000e+00
  %1573 = fadd fast float %1570, -1.000000e+00
  %1574 = fadd fast float %1571, -1.000000e+00
  %1575 = fadd fast float %1572, -1.000000e+00
  %1576 = fmul fast float %1573, %1573
  %1577 = fmul fast float %1574, %1574
  %1578 = fadd fast float %1576, %1577
  %1579 = fmul fast float %1575, %1575
  %1580 = fadd fast float %1578, %1579
  %1581 = call float @dx.op.unary.f32(i32 24, float %1580)  ; Sqrt(value)
  %1582 = fcmp fast ogt float %1581, 0.000000e+00
  br i1 %1582, label %1583, label %1587, !dx.controlflow.hints !70

; <label>:1583                                    ; preds = %1533
  %1584 = fdiv fast float %1573, %1581
  %1585 = fdiv fast float %1574, %1581
  %1586 = fdiv fast float %1575, %1581
  br label %1587

; <label>:1587                                    ; preds = %1583, %1533
  %1588 = phi float [ %1584, %1583 ], [ 0.000000e+00, %1533 ]
  %1589 = phi float [ %1585, %1583 ], [ 0.000000e+00, %1533 ]
  %1590 = phi float [ %1586, %1583 ], [ 0.000000e+00, %1533 ]
  %1591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1592 = extractvalue %dx.types.CBufRet.f32 %1591, 0
  %1593 = extractvalue %dx.types.CBufRet.f32 %1591, 1
  %1594 = fsub fast float %188, %1592
  %1595 = fsub fast float %193, %1593
  %1596 = fmul fast float %1594, %1594
  %1597 = fmul fast float %1595, %1595
  %1598 = fadd fast float %1596, %1597
  %1599 = call float @dx.op.unary.f32(i32 24, float %1598)  ; Sqrt(value)
  %1600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1601 = extractvalue %dx.types.CBufRet.f32 %1600, 0
  %1602 = extractvalue %dx.types.CBufRet.f32 %1600, 1
  %1603 = fsub fast float %1599, %1601
  %1604 = fdiv fast float %1603, %1602
  %1605 = call float @dx.op.unary.f32(i32 7, float %1604)  ; Saturate(value)
  %1606 = fmul fast float %1605, 2.000000e+00
  %1607 = fsub fast float 3.000000e+00, %1606
  %1608 = fmul fast float %1605, %1605
  %1609 = fmul fast float %1608, %1607
  %1610 = call float @dx.op.dot3.f32(i32 55, float %1588, float %1589, float %1590, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1611 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1610)  ; FMax(a,b)
  %1612 = fmul fast float %1611, 0x400C5BF8A0000000
  %1613 = fmul fast float %1609, %1562
  %1614 = fmul fast float %1613, %1612
  %1615 = fadd fast float %1614, %1531
  %1616 = fmul fast float %1609, %1563
  %1617 = fmul fast float %1616, %1612
  %1618 = fadd fast float %1617, %1530
  %1619 = fmul fast float %1609, %1564
  %1620 = fmul fast float %1619, %1612
  %1621 = fadd fast float %1620, %1529
  br label %1622

; <label>:1622                                    ; preds = %1587, %1528, %1453
  %1623 = phi float [ %1621, %1587 ], [ %1529, %1528 ], [ %1465, %1453 ]
  %1624 = phi float [ %1618, %1587 ], [ %1530, %1528 ], [ %1464, %1453 ]
  %1625 = phi float [ %1615, %1587 ], [ %1531, %1528 ], [ %1463, %1453 ]
  %1626 = fcmp fast ogt float %198, %1147
  %1627 = and i1 %1469, %1626
  %1628 = and i1 %1471, %1627
  %1629 = and i1 %1473, %1628
  %1630 = and i1 %1475, %1629
  br i1 %1630, label %1631, label %1688, !dx.controlflow.hints !71

; <label>:1631                                    ; preds = %1622
  %1632 = fmul fast float %1149, 0x3FC24924A0000000
  %1633 = fsub fast float %198, %1147
  %1634 = fdiv fast float %1633, %1632
  %1635 = call float @dx.op.unary.f32(i32 7, float %1634)  ; Saturate(value)
  %1636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %1637 = extractvalue %dx.types.CBufRet.f32 %1636, 0
  %1638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %1639 = extractvalue %dx.types.CBufRet.f32 %1638, 0
  %1640 = extractvalue %dx.types.CBufRet.f32 %1638, 1
  %1641 = extractvalue %dx.types.CBufRet.f32 %1638, 2
  %1642 = fsub fast float %1637, %1625
  %1643 = fsub fast float %1639, %1460
  %1644 = fsub fast float %1640, %1461
  %1645 = fsub fast float %1641, %1462
  %1646 = fmul fast float %1642, %1635
  %1647 = fmul fast float %1643, %1635
  %1648 = fmul fast float %1644, %1635
  %1649 = fmul fast float %1645, %1635
  %1650 = fadd fast float %1646, %1625
  %1651 = fadd fast float %1647, %1460
  %1652 = fadd fast float %1648, %1461
  %1653 = fadd fast float %1649, %1462
  %1654 = extractvalue %dx.types.CBufRet.f32 %1636, 1
  %1655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %1656 = extractvalue %dx.types.CBufRet.f32 %1655, 0
  %1657 = extractvalue %dx.types.CBufRet.f32 %1655, 1
  %1658 = extractvalue %dx.types.CBufRet.f32 %1655, 2
  %1659 = fsub fast float %1654, %1624
  %1660 = fsub fast float %1656, %1457
  %1661 = fsub fast float %1657, %1458
  %1662 = fsub fast float %1658, %1459
  %1663 = fmul fast float %1659, %1635
  %1664 = fmul fast float %1660, %1635
  %1665 = fmul fast float %1661, %1635
  %1666 = fmul fast float %1662, %1635
  %1667 = fadd fast float %1663, %1624
  %1668 = fadd fast float %1664, %1457
  %1669 = fadd fast float %1665, %1458
  %1670 = fadd fast float %1666, %1459
  %1671 = extractvalue %dx.types.CBufRet.f32 %1636, 2
  %1672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %1673 = extractvalue %dx.types.CBufRet.f32 %1672, 0
  %1674 = extractvalue %dx.types.CBufRet.f32 %1672, 1
  %1675 = extractvalue %dx.types.CBufRet.f32 %1672, 2
  %1676 = fsub fast float %1671, %1623
  %1677 = fsub fast float %1673, %1454
  %1678 = fsub fast float %1674, %1455
  %1679 = fsub fast float %1675, %1456
  %1680 = fmul fast float %1676, %1635
  %1681 = fmul fast float %1677, %1635
  %1682 = fmul fast float %1678, %1635
  %1683 = fmul fast float %1679, %1635
  %1684 = fadd fast float %1680, %1623
  %1685 = fadd fast float %1681, %1454
  %1686 = fadd fast float %1682, %1455
  %1687 = fadd fast float %1683, %1456
  br label %1688

; <label>:1688                                    ; preds = %1631, %1622
  %1689 = phi float [ %1684, %1631 ], [ %1623, %1622 ]
  %1690 = phi float [ %1685, %1631 ], [ %1454, %1622 ]
  %1691 = phi float [ %1686, %1631 ], [ %1455, %1622 ]
  %1692 = phi float [ %1687, %1631 ], [ %1456, %1622 ]
  %1693 = phi float [ %1667, %1631 ], [ %1624, %1622 ]
  %1694 = phi float [ %1668, %1631 ], [ %1457, %1622 ]
  %1695 = phi float [ %1669, %1631 ], [ %1458, %1622 ]
  %1696 = phi float [ %1670, %1631 ], [ %1459, %1622 ]
  %1697 = phi float [ %1650, %1631 ], [ %1625, %1622 ]
  %1698 = phi float [ %1651, %1631 ], [ %1460, %1622 ]
  %1699 = phi float [ %1652, %1631 ], [ %1461, %1622 ]
  %1700 = phi float [ %1653, %1631 ], [ %1462, %1622 ]
  %1701 = extractvalue %dx.types.CBufRet.f32 %1272, 3
  %1702 = fmul fast float %1701, %1697
  %1703 = fmul fast float %1701, %1693
  %1704 = fmul fast float %1701, %1689
  %1705 = fmul fast float %1698, 1.500000e+00
  %1706 = fmul fast float %1705, %1701
  %1707 = fmul fast float %1699, 1.500000e+00
  %1708 = fmul fast float %1707, %1701
  %1709 = fmul fast float %1700, 1.500000e+00
  %1710 = fmul fast float %1709, %1701
  %1711 = fmul fast float %1694, 1.500000e+00
  %1712 = fmul fast float %1711, %1701
  %1713 = fmul fast float %1695, 1.500000e+00
  %1714 = fmul fast float %1713, %1701
  %1715 = fmul fast float %1696, 1.500000e+00
  %1716 = fmul fast float %1715, %1701
  %1717 = fmul fast float %1690, 1.500000e+00
  %1718 = fmul fast float %1717, %1701
  %1719 = fmul fast float %1691, 1.500000e+00
  %1720 = fmul fast float %1719, %1701
  %1721 = fmul fast float %1692, 1.500000e+00
  %1722 = fmul fast float %1721, %1701
  %1723 = fsub fast float %1112, %1702
  %1724 = fmul fast float %1723, %238
  %1725 = fadd fast float %1724, %1702
  %1726 = fsub fast float %1111, %1706
  %1727 = fmul fast float %1726, %238
  %1728 = fadd fast float %1727, %1706
  %1729 = fsub fast float %1110, %1708
  %1730 = fmul fast float %1729, %238
  %1731 = fadd fast float %1730, %1708
  %1732 = fsub fast float %1109, %1710
  %1733 = fmul fast float %1732, %238
  %1734 = fadd fast float %1733, %1710
  %1735 = fmul fast float %1108, %238
  %1736 = fmul fast float %1107, %238
  %1737 = fmul fast float %1106, %238
  %1738 = fmul fast float %1105, %238
  %1739 = fmul fast float %1104, %238
  %1740 = fsub fast float %1103, %1703
  %1741 = fmul fast float %1740, %238
  %1742 = fadd fast float %1741, %1703
  %1743 = fsub fast float %1102, %1712
  %1744 = fmul fast float %1743, %238
  %1745 = fadd fast float %1744, %1712
  %1746 = fsub fast float %1101, %1714
  %1747 = fmul fast float %1746, %238
  %1748 = fadd fast float %1747, %1714
  %1749 = fsub fast float %1100, %1716
  %1750 = fmul fast float %1749, %238
  %1751 = fadd fast float %1750, %1716
  %1752 = fmul fast float %1099, %238
  %1753 = fmul fast float %1098, %238
  %1754 = fmul fast float %1097, %238
  %1755 = fmul fast float %1096, %238
  %1756 = fmul fast float %1095, %238
  %1757 = fsub fast float %1094, %1704
  %1758 = fmul fast float %1757, %238
  %1759 = fadd fast float %1758, %1704
  %1760 = fsub fast float %1093, %1718
  %1761 = fmul fast float %1760, %238
  %1762 = fadd fast float %1761, %1718
  %1763 = fsub fast float %1092, %1720
  %1764 = fmul fast float %1763, %238
  %1765 = fadd fast float %1764, %1720
  %1766 = fsub fast float %1091, %1722
  %1767 = fmul fast float %1766, %238
  %1768 = fadd fast float %1767, %1722
  %1769 = fmul fast float %1090, %238
  %1770 = fmul fast float %1089, %238
  %1771 = fmul fast float %1088, %238
  %1772 = fmul fast float %1087, %238
  %1773 = fmul fast float %1086, %238
  br label %1774

; <label>:1774                                    ; preds = %1688, %1085
  %1775 = phi float [ %1086, %1085 ], [ %1773, %1688 ]
  %1776 = phi float [ %1087, %1085 ], [ %1772, %1688 ]
  %1777 = phi float [ %1088, %1085 ], [ %1771, %1688 ]
  %1778 = phi float [ %1089, %1085 ], [ %1770, %1688 ]
  %1779 = phi float [ %1090, %1085 ], [ %1769, %1688 ]
  %1780 = phi float [ %1091, %1085 ], [ %1768, %1688 ]
  %1781 = phi float [ %1092, %1085 ], [ %1765, %1688 ]
  %1782 = phi float [ %1093, %1085 ], [ %1762, %1688 ]
  %1783 = phi float [ %1094, %1085 ], [ %1759, %1688 ]
  %1784 = phi float [ %1095, %1085 ], [ %1756, %1688 ]
  %1785 = phi float [ %1096, %1085 ], [ %1755, %1688 ]
  %1786 = phi float [ %1097, %1085 ], [ %1754, %1688 ]
  %1787 = phi float [ %1098, %1085 ], [ %1753, %1688 ]
  %1788 = phi float [ %1099, %1085 ], [ %1752, %1688 ]
  %1789 = phi float [ %1100, %1085 ], [ %1751, %1688 ]
  %1790 = phi float [ %1101, %1085 ], [ %1748, %1688 ]
  %1791 = phi float [ %1102, %1085 ], [ %1745, %1688 ]
  %1792 = phi float [ %1103, %1085 ], [ %1742, %1688 ]
  %1793 = phi float [ %1104, %1085 ], [ %1739, %1688 ]
  %1794 = phi float [ %1105, %1085 ], [ %1738, %1688 ]
  %1795 = phi float [ %1106, %1085 ], [ %1737, %1688 ]
  %1796 = phi float [ %1107, %1085 ], [ %1736, %1688 ]
  %1797 = phi float [ %1108, %1085 ], [ %1735, %1688 ]
  %1798 = phi float [ %1109, %1085 ], [ %1734, %1688 ]
  %1799 = phi float [ %1110, %1085 ], [ %1731, %1688 ]
  %1800 = phi float [ %1111, %1085 ], [ %1728, %1688 ]
  %1801 = phi float [ %1112, %1085 ], [ %1725, %1688 ]
  %1802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1803 = extractvalue %dx.types.CBufRet.f32 %1802, 0
  %1804 = extractvalue %dx.types.CBufRet.f32 %1802, 1
  %1805 = extractvalue %dx.types.CBufRet.f32 %1802, 2
  %1806 = fsub fast float %188, %1803
  %1807 = fsub fast float %193, %1804
  %1808 = fsub fast float %198, %1805
  %1809 = call float @dx.op.dot3.f32(i32 55, float %1806, float %1807, float %1808, float %1806, float %1807, float %1808)  ; Dot3(ax,ay,az,bx,by,bz)
  %1810 = call float @dx.op.unary.f32(i32 25, float %1809)  ; Rsqrt(value)
  %1811 = fmul fast float %1806, %1810
  %1812 = fmul fast float %1807, %1810
  %1813 = fmul fast float %1808, %1810
  %1814 = fsub fast float -0.000000e+00, %1811
  %1815 = fsub fast float -0.000000e+00, %1812
  %1816 = fmul fast float %1801, 0x3FD20DD760000000
  %1817 = fmul fast float %1792, 0x3FD20DD760000000
  %1818 = fmul fast float %1783, 0x3FD20DD760000000
  br i1 %98, label %1899, label %1819, !dx.controlflow.hints !72

; <label>:1819                                    ; preds = %1774
  %1820 = fmul fast float %1799, 0xBFD4D8D7C0000000
  %1821 = fmul fast float %1820, %1813
  %1822 = fmul fast float %1813, %1813
  %1823 = fmul fast float %1822, 0x3FEE471020000000
  %1824 = fadd fast float %1823, 0xBFD42F6020000000
  %1825 = fmul fast float %1824, %1795
  %1826 = fmul fast float %1798, 0x3FD4D8D7C0000000
  %1827 = fmul fast float %1800, 0x3FD4D8D7C0000000
  %1828 = fmul fast float %1827, %1812
  %1829 = fmul fast float %1813, 0x3FF17B1420000000
  %1830 = fmul fast float %1794, %1814
  %1831 = fmul fast float %1796, %1815
  %1832 = fmul fast float %1811, %1811
  %1833 = fmul fast float %1812, %1812
  %1834 = fsub fast float %1832, %1833
  %1835 = fmul fast float %1793, 0x3FC17B1420000000
  %1836 = fmul fast float %1835, %1834
  %1837 = fmul fast float %1797, 0x3FD17B1420000000
  %1838 = fmul fast float %1837, %1810
  %1839 = fmul fast float %1838, %1807
  %1840 = fadd fast float %1830, %1831
  %1841 = fmul fast float %1829, %1840
  %1842 = fadd fast float %1841, %1825
  %1843 = fmul fast float %1842, 2.500000e-01
  %1844 = fadd fast float %1839, %1826
  %1845 = fmul fast float %1844, %1811
  %1846 = fadd fast float %1821, %1816
  %1847 = fadd fast float %1846, %1828
  %1848 = fadd fast float %1847, %1836
  %1849 = fadd fast float %1848, %1843
  %1850 = fadd fast float %1849, %1845
  %1851 = fmul fast float %1790, 0xBFD4D8D7C0000000
  %1852 = fmul fast float %1851, %1813
  %1853 = fmul fast float %1824, %1786
  %1854 = fmul fast float %1789, 0x3FD4D8D7C0000000
  %1855 = fmul fast float %1791, 0x3FD4D8D7C0000000
  %1856 = fmul fast float %1855, %1812
  %1857 = fmul fast float %1785, %1814
  %1858 = fmul fast float %1787, %1815
  %1859 = fmul fast float %1784, 0x3FC17B1420000000
  %1860 = fmul fast float %1859, %1834
  %1861 = fmul fast float %1788, 0x3FD17B1420000000
  %1862 = fmul fast float %1861, %1810
  %1863 = fmul fast float %1862, %1807
  %1864 = fadd fast float %1857, %1858
  %1865 = fmul fast float %1829, %1864
  %1866 = fadd fast float %1865, %1853
  %1867 = fmul fast float %1866, 2.500000e-01
  %1868 = fadd fast float %1863, %1854
  %1869 = fmul fast float %1868, %1811
  %1870 = fadd fast float %1852, %1817
  %1871 = fadd fast float %1870, %1856
  %1872 = fadd fast float %1871, %1860
  %1873 = fadd fast float %1872, %1867
  %1874 = fadd fast float %1873, %1869
  %1875 = fmul fast float %1781, 0xBFD4D8D7C0000000
  %1876 = fmul fast float %1875, %1813
  %1877 = fmul fast float %1824, %1777
  %1878 = fmul fast float %1780, 0x3FD4D8D7C0000000
  %1879 = fmul fast float %1782, 0x3FD4D8D7C0000000
  %1880 = fmul fast float %1879, %1812
  %1881 = fmul fast float %1776, %1814
  %1882 = fmul fast float %1778, %1815
  %1883 = fmul fast float %1775, 0x3FC17B1420000000
  %1884 = fmul fast float %1883, %1834
  %1885 = fmul fast float %1779, 0x3FD17B1420000000
  %1886 = fmul fast float %1885, %1810
  %1887 = fmul fast float %1886, %1807
  %1888 = fadd fast float %1881, %1882
  %1889 = fmul fast float %1829, %1888
  %1890 = fadd fast float %1889, %1877
  %1891 = fmul fast float %1890, 2.500000e-01
  %1892 = fadd fast float %1887, %1878
  %1893 = fmul fast float %1892, %1811
  %1894 = fadd fast float %1876, %1818
  %1895 = fadd fast float %1894, %1880
  %1896 = fadd fast float %1895, %1884
  %1897 = fadd fast float %1896, %1891
  %1898 = fadd fast float %1897, %1893
  br label %1993

; <label>:1899                                    ; preds = %1774
  %1900 = fmul fast float %140, %140
  %1901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1902 = extractvalue %dx.types.CBufRet.f32 %1901, 0
  %1903 = extractvalue %dx.types.CBufRet.f32 %1901, 1
  %1904 = extractvalue %dx.types.CBufRet.f32 %1901, 2
  %1905 = fmul fast float %1799, %140
  %1906 = fmul fast float %1905, %1904
  %1907 = fmul fast float %1904, %1904
  %1908 = fmul fast float %1907, 0x3FEE471020000000
  %1909 = fadd fast float %1908, 0xBFD42F6020000000
  %1910 = fmul fast float %1909, %1795
  %1911 = fmul fast float %1902, %1798
  %1912 = fmul fast float %1903, %1800
  %1913 = fmul fast float %1904, 0x3FF17B1420000000
  %1914 = fmul fast float %1794, %1900
  %1915 = fmul fast float %1914, %1902
  %1916 = fmul fast float %1915, %1913
  %1917 = fmul fast float %1796, %1900
  %1918 = fmul fast float %1917, %1903
  %1919 = fmul fast float %1918, %1913
  %1920 = fmul fast float %1902, %1902
  %1921 = fmul fast float %1903, %1903
  %1922 = fsub fast float %1920, %1921
  %1923 = fmul fast float %1793, 0x3FE17B1420000000
  %1924 = fmul fast float %1923, %1922
  %1925 = fmul fast float %1797, 0x3FF17B1420000000
  %1926 = fmul fast float %1925, %1903
  %1927 = fmul fast float %1926, %1902
  %1928 = fadd fast float %1924, %1927
  %1929 = fadd fast float %1928, %1910
  %1930 = fmul fast float %1929, %1900
  %1931 = fadd fast float %1912, %1911
  %1932 = fmul fast float %1931, %140
  %1933 = fsub fast float %1932, %1906
  %1934 = fmul fast float %1933, 0x3FDF454380000000
  %1935 = fsub fast float %1816, %1916
  %1936 = fsub fast float %1935, %1919
  %1937 = fadd fast float %1936, %1930
  %1938 = fadd fast float %1937, %1934
  %1939 = fmul fast float %1790, %140
  %1940 = fmul fast float %1939, %1904
  %1941 = fmul fast float %1909, %1786
  %1942 = fmul fast float %1902, %1789
  %1943 = fmul fast float %1903, %1791
  %1944 = fmul fast float %1785, %1900
  %1945 = fmul fast float %1944, %1902
  %1946 = fmul fast float %1945, %1913
  %1947 = fmul fast float %1787, %1900
  %1948 = fmul fast float %1947, %1903
  %1949 = fmul fast float %1948, %1913
  %1950 = fmul fast float %1784, 0x3FE17B1420000000
  %1951 = fmul fast float %1950, %1922
  %1952 = fmul fast float %1788, 0x3FF17B1420000000
  %1953 = fmul fast float %1952, %1903
  %1954 = fmul fast float %1953, %1902
  %1955 = fadd fast float %1951, %1954
  %1956 = fadd fast float %1955, %1941
  %1957 = fmul fast float %1956, %1900
  %1958 = fadd fast float %1943, %1942
  %1959 = fmul fast float %1958, %140
  %1960 = fsub fast float %1959, %1940
  %1961 = fmul fast float %1960, 0x3FDF454380000000
  %1962 = fsub fast float %1817, %1946
  %1963 = fsub fast float %1962, %1949
  %1964 = fadd fast float %1963, %1957
  %1965 = fadd fast float %1964, %1961
  %1966 = fmul fast float %1781, %140
  %1967 = fmul fast float %1966, %1904
  %1968 = fmul fast float %1909, %1777
  %1969 = fmul fast float %1902, %1780
  %1970 = fmul fast float %1903, %1782
  %1971 = fmul fast float %1776, %1900
  %1972 = fmul fast float %1971, %1902
  %1973 = fmul fast float %1972, %1913
  %1974 = fmul fast float %1778, %1900
  %1975 = fmul fast float %1974, %1903
  %1976 = fmul fast float %1975, %1913
  %1977 = fmul fast float %1775, 0x3FE17B1420000000
  %1978 = fmul fast float %1977, %1922
  %1979 = fmul fast float %1779, 0x3FF17B1420000000
  %1980 = fmul fast float %1979, %1903
  %1981 = fmul fast float %1980, %1902
  %1982 = fadd fast float %1978, %1981
  %1983 = fadd fast float %1982, %1968
  %1984 = fmul fast float %1983, %1900
  %1985 = fadd fast float %1970, %1969
  %1986 = fmul fast float %1985, %140
  %1987 = fsub fast float %1986, %1967
  %1988 = fmul fast float %1987, 0x3FDF454380000000
  %1989 = fsub fast float %1818, %1973
  %1990 = fsub fast float %1989, %1976
  %1991 = fadd fast float %1990, %1984
  %1992 = fadd fast float %1991, %1988
  br label %1993

; <label>:1993                                    ; preds = %1899, %1819
  %1994 = phi float [ %1850, %1819 ], [ %1938, %1899 ]
  %1995 = phi float [ %1874, %1819 ], [ %1965, %1899 ]
  %1996 = phi float [ %1898, %1819 ], [ %1992, %1899 ]
  %1997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1998 = extractvalue %dx.types.CBufRet.f32 %1997, 3
  %1999 = fmul fast float %1998, %1994
  %2000 = fmul fast float %1998, %1995
  %2001 = fmul fast float %1998, %1996
  %2002 = extractvalue %dx.types.CBufRet.f32 %1997, 0
  %2003 = fmul fast float %1999, %2002
  %2004 = fmul fast float %2000, %2002
  %2005 = fmul fast float %2001, %2002
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %167, i32 %168, i32 undef, float %2003, float %2004, float %2005, float %2003, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2006

; <label>:2006                                    ; preds = %1993, %0
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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

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
!dx.entryPoints = !{!38}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !30, !32, !36}
!5 = !{!6, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !21, !22, !23, !24, !25, !26, !27, !28, !29}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 33, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 16, i32 1, i32 7, i32 0, !7}
!9 = !{i32 2, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 15, i32 1, i32 4, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<float>"* undef, !"", i32 0, i32 14, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 0, i32 13, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<unsigned int>"* undef, !"", i32 0, i32 17, i32 1, i32 2, i32 0, !13}
!13 = !{i32 0, i32 5}
!14 = !{i32 6, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 0, i32 18, i32 1, i32 4, i32 0, !7}
!15 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 28, i32 1, i32 11, i32 0, null}
!16 = !{i32 8, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 37, i32 1, i32 12, i32 0, !17}
!17 = !{i32 1, i32 4}
!18 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 30, i32 1, i32 11, i32 0, null}
!19 = !{i32 10, %"class.StructuredBuffer<GfxNeuralLightGridTopLevelNode>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i32 0, !20}
!20 = !{i32 1, i32 16}
!21 = !{i32 11, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 10, i32 0, !13}
!22 = !{i32 12, %"class.StructuredBuffer<GfxNeuralLightGridInternalNode>"* undef, !"", i32 0, i32 2, i32 1, i32 12, i32 0, !20}
!23 = !{i32 13, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 3, i32 1, i32 10, i32 0, !13}
!24 = !{i32 14, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 4, i32 1, i32 10, i32 0, !13}
!25 = !{i32 15, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 5, i32 1, i32 10, i32 0, !13}
!26 = !{i32 16, %"class.Buffer<vector<float, 4> >"* undef, !"", i32 0, i32 6, i32 1, i32 10, i32 0, !7}
!27 = !{i32 17, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 7, i32 1, i32 10, i32 0, !13}
!28 = !{i32 18, %"class.Buffer<vector<float, 4> >"* undef, !"", i32 0, i32 8, i32 1, i32 10, i32 0, !7}
!29 = !{i32 19, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 9, i32 1, i32 11, i32 0, null}
!30 = !{!31}
!31 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!32 = !{!33, !34, !35}
!33 = !{i32 0, %GfxNeuralLightGridSetupConsts* undef, !"", i32 0, i32 4, i32 1, i32 80, null}
!34 = !{i32 1, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!35 = !{i32 2, %DeferredEffectLightConsts_decl* undef, !"", i32 0, i32 1, i32 1, i32 240, null}
!36 = !{!37}
!37 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!38 = !{void ()* @cs_del_sh_sample_lightgrid_8, !"cs_del_sh_sample_lightgrid_8", null, !4, !39}
!39 = !{i32 0, i64 272, i32 4, !40}
!40 = !{i32 1, i32 8, i32 8}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 1}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = !{!51, !51, i64 0}
!51 = !{!"int", !52, i64 0}
!52 = !{!"omnipotent char", !53, i64 0}
!53 = !{!"Simple C/C++ TBAA"}
!54 = !{!55, !57, !58, !59}
!55 = distinct !{!55, !56, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z: %probeR"}
!56 = distinct !{!56, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z"}
!57 = distinct !{!57, !56, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z: %probeG"}
!58 = distinct !{!58, !56, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z: %probeB"}
!59 = distinct !{!59, !56, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z: %probeA"}
!60 = !{!61, !61, i64 0}
!61 = !{!"float", !52, i64 0}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 1}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 2}

