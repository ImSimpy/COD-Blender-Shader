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
; shader hash: 6ac6aa5414af94b6e8a39008726a7ae2
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
;                                   texture    byte         r/o     T10            t31     1
;                                   texture    byte         r/o     T11            t43     1
;                                   texture    byte         r/o     T12            t11     1
;                                   texture    byte         r/o     T13            t12     1
;                                   texture  struct         r/o     T14             t0     1
;                                   texture     u32         buf     T15             t1     1
;                                   texture  struct         r/o     T16             t2     1
;                                   texture     u32         buf     T17             t3     1
;                                   texture     u32         buf     T18             t4     1
;                                   texture     u32         buf     T19             t5     1
;                                   texture     f32         buf     T20             t6     1
;                                   texture     u32         buf     T21             t7     1
;                                   texture     f32         buf     T22             t8     1
;                                   texture    byte         r/o     T23             t9     1
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

define void @cs_del_sh_sample_lightgrid_reflection_volumes_2() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 43, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 28, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %31 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %32 = call i32 @dx.op.threadId.i32(i32 93, i32 2)  ; ThreadId(component)
  %33 = alloca [8 x float], align 4
  %34 = alloca [8 x i32], align 4
  %35 = alloca [8 x float], align 4
  %36 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %37 = extractvalue %dx.types.CBufRet.i32 %36, 2
  %38 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %37, i32 0)  ; BufferLoad(srv,index,wot)
  %39 = extractvalue %dx.types.ResRet.i32 %38, 0
  %40 = icmp ult i32 %30, %39
  br i1 %40, label %41, label %2481, !dx.controlflow.hints !45

; <label>:41                                      ; preds = %0
  %42 = add i32 %37, 3
  %43 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 %42)  ; CBufferLoadLegacy(handle,regIndex)
  %44 = extractvalue %dx.types.CBufRet.i32 %43, 2
  %45 = add i32 %44, %30
  %46 = shl i32 %45, 5
  %47 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %46, i32 undef)  ; BufferLoad(srv,index,wot)
  %48 = extractvalue %dx.types.ResRet.i32 %47, 0
  %49 = extractvalue %dx.types.ResRet.i32 %47, 1
  %50 = extractvalue %dx.types.ResRet.i32 %47, 2
  %51 = extractvalue %dx.types.ResRet.i32 %47, 3
  %52 = lshr i32 %51, 14
  %53 = and i32 %52, 16383
  %54 = and i32 %51, 16383
  %55 = bitcast i32 %48 to float
  %56 = bitcast i32 %49 to float
  %57 = bitcast i32 %50 to float
  %58 = and i32 %51, 536870912
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %99, label %60, !dx.controlflow.hints !46

; <label>:60                                      ; preds = %41
  %61 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %62 = extractvalue %dx.types.CBufRet.f32 %61, 2
  %63 = extractvalue %dx.types.CBufRet.f32 %61, 3
  %64 = fmul fast float %62, %55
  %65 = fmul fast float %63, %56
  %66 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %67 = extractvalue %dx.types.CBufRet.f32 %66, 0
  %68 = extractvalue %dx.types.CBufRet.f32 %66, 1
  %69 = fadd fast float %64, %67
  %70 = fadd fast float %65, %68
  %71 = call float @dx.op.unary.f32(i32 7, float %69)  ; Saturate(value)
  %72 = call float @dx.op.unary.f32(i32 7, float %70)  ; Saturate(value)
  %73 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %26, float %71, float %72, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %74 = extractvalue %dx.types.ResRet.f32 %73, 0
  %75 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %76 = extractvalue %dx.types.CBufRet.f32 %75, 0
  %77 = fmul fast float %76, %74
  %78 = fsub fast float %69, %71
  %79 = fsub fast float %70, %72
  %80 = extractvalue %dx.types.CBufRet.f32 %61, 0
  %81 = extractvalue %dx.types.CBufRet.f32 %61, 1
  %82 = fmul fast float %80, %78
  %83 = fmul fast float %81, %79
  %84 = fmul fast float %82, %82
  %85 = fmul fast float %83, %83
  %86 = fadd fast float %84, %85
  %87 = call float @dx.op.unary.f32(i32 24, float %86)  ; Sqrt(value)
  %88 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %89 = extractvalue %dx.types.CBufRet.f32 %88, 3
  %90 = fmul fast float %89, %87
  %91 = call float @dx.op.unary.f32(i32 7, float %90)  ; Saturate(value)
  %92 = extractvalue %dx.types.CBufRet.f32 %88, 2
  %93 = fsub fast float %92, %77
  %94 = fmul fast float %93, %91
  %95 = extractvalue %dx.types.CBufRet.f32 %75, 1
  %96 = fadd fast float %77, %57
  %97 = fadd fast float %96, %95
  %98 = fadd fast float %97, %94
  br label %99

; <label>:99                                      ; preds = %60, %41
  %100 = phi float [ %98, %60 ], [ %57, %41 ]
  %101 = and i32 %51, 268435456
  %102 = icmp eq i32 %101, 0
  %103 = or i32 %46, 16
  %104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %103, i32 undef)  ; BufferLoad(srv,index,wot)
  %105 = extractvalue %dx.types.ResRet.i32 %104, 0
  %106 = extractvalue %dx.types.ResRet.i32 %104, 1
  %107 = extractvalue %dx.types.ResRet.i32 %104, 2
  %108 = extractvalue %dx.types.ResRet.i32 %104, 3
  %109 = and i32 %105, 65535
  %110 = call float @dx.op.legacyF16ToF32(i32 131, i32 %109)  ; LegacyF16ToF32(value)
  %111 = lshr i32 %105, 16
  %112 = call float @dx.op.legacyF16ToF32(i32 131, i32 %111)  ; LegacyF16ToF32(value)
  %113 = and i32 %106, 1023
  %114 = uitofp i32 %113 to float
  %115 = lshr i32 %106, 10
  %116 = and i32 %115, 1023
  %117 = uitofp i32 %116 to float
  %118 = lshr i32 %106, 20
  %119 = and i32 %118, 1023
  %120 = uitofp i32 %119 to float
  %121 = fmul fast float %114, 0x3F60040100000000
  %122 = fmul fast float %117, 0x3F60040100000000
  %123 = fmul fast float %120, 0x3F60040100000000
  %124 = fadd fast float %121, -1.000000e+00
  %125 = fadd fast float %122, -1.000000e+00
  %126 = fadd fast float %123, -1.000000e+00
  %127 = and i32 %107, 1023
  %128 = uitofp i32 %127 to float
  %129 = lshr i32 %107, 10
  %130 = and i32 %129, 1023
  %131 = uitofp i32 %130 to float
  %132 = lshr i32 %107, 20
  %133 = and i32 %132, 1023
  %134 = uitofp i32 %133 to float
  %135 = fmul fast float %128, 0x3F60040100000000
  %136 = fmul fast float %131, 0x3F60040100000000
  %137 = fmul fast float %134, 0x3F60040100000000
  %138 = fadd fast float %135, -1.000000e+00
  %139 = fadd fast float %136, -1.000000e+00
  %140 = fadd fast float %137, -1.000000e+00
  %141 = and i32 %108, 65535
  %142 = call float @dx.op.legacyF16ToF32(i32 131, i32 %141)  ; LegacyF16ToF32(value)
  %143 = lshr i32 %108, 16
  %144 = call float @dx.op.legacyF16ToF32(i32 131, i32 %143)  ; LegacyF16ToF32(value)
  %145 = call float @dx.op.unary.f32(i32 13, float %142)  ; Sin(value)
  %146 = call float @dx.op.unary.f32(i32 12, float %142)  ; Cos(value)
  %147 = fmul fast float %146, %124
  %148 = fmul fast float %146, %125
  %149 = fmul fast float %146, %126
  %150 = fmul fast float %145, %138
  %151 = fmul fast float %139, %145
  %152 = fmul fast float %140, %145
  %153 = fadd fast float %147, %150
  %154 = fadd fast float %148, %151
  %155 = fadd fast float %149, %152
  %156 = fmul fast float %153, %110
  %157 = fmul fast float %154, %110
  %158 = fmul fast float %155, %110
  %159 = fmul fast float %145, %124
  %160 = fmul fast float %125, %145
  %161 = fmul fast float %126, %145
  %162 = fmul fast float %146, %138
  %163 = fmul fast float %146, %139
  %164 = fmul fast float %146, %140
  %165 = fsub fast float %159, %162
  %166 = fsub fast float %160, %163
  %167 = fsub fast float %161, %164
  %168 = fmul fast float %165, %112
  %169 = fmul fast float %166, %112
  %170 = fmul fast float %167, %112
  %171 = add i32 %53, %31
  %172 = add i32 %54, %32
  %173 = uitofp i32 %31 to float
  %174 = uitofp i32 %32 to float
  %175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %176 = extractvalue %dx.types.CBufRet.f32 %175, 1
  %177 = fdiv fast float %173, %176
  %178 = fdiv fast float %174, %176
  %179 = extractvalue %dx.types.CBufRet.f32 %175, 2
  %180 = fadd fast float %179, %177
  %181 = fadd fast float %179, %178
  %182 = fmul fast float %180, %156
  %183 = fmul fast float %180, %157
  %184 = fmul fast float %180, %158
  %185 = fmul fast float %181, %168
  %186 = fmul fast float %181, %169
  %187 = fmul fast float %181, %170
  %188 = fadd fast float %185, %182
  %189 = fmul fast float %188, 2.000000e+00
  %190 = fsub fast float %55, %156
  %191 = fsub fast float %190, %168
  %192 = fadd fast float %191, %189
  %193 = fadd fast float %186, %183
  %194 = fmul fast float %193, 2.000000e+00
  %195 = fsub fast float %56, %157
  %196 = fsub fast float %195, %169
  %197 = fadd fast float %196, %194
  %198 = fadd fast float %187, %184
  %199 = fmul fast float %198, 2.000000e+00
  %200 = fsub fast float %100, %158
  %201 = fsub fast float %200, %170
  %202 = fadd fast float %201, %199
  %203 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %204 = extractvalue %dx.types.CBufRet.i32 %203, 0
  %205 = icmp eq i32 %204, 1
  br i1 %205, label %206, label %241, !dx.controlflow.hints !47

; <label>:206                                     ; preds = %99
  %207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %208 = extractvalue %dx.types.CBufRet.f32 %207, 0
  %209 = extractvalue %dx.types.CBufRet.f32 %207, 1
  %210 = fsub fast float %192, %208
  %211 = fsub fast float %197, %209
  %212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %213 = extractvalue %dx.types.CBufRet.f32 %212, 0
  %214 = extractvalue %dx.types.CBufRet.f32 %212, 1
  %215 = fmul fast float %210, %213
  %216 = fmul fast float %211, %214
  %217 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %215, float %216, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %218 = extractvalue %dx.types.ResRet.f32 %217, 0
  %219 = fcmp fast ogt float %218, 0.000000e+00
  %220 = extractvalue %dx.types.CBufRet.i32 %203, 3
  %221 = icmp ne i32 %220, 0
  %222 = and i1 %219, %221
  br i1 %222, label %223, label %241, !dx.controlflow.hints !48

; <label>:223                                     ; preds = %206
  %224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %225 = extractvalue %dx.types.CBufRet.f32 %224, 0
  %226 = extractvalue %dx.types.CBufRet.f32 %224, 1
  %227 = fsub fast float %192, %225
  %228 = fsub fast float %197, %226
  %229 = fmul fast float %227, %227
  %230 = fmul fast float %228, %228
  %231 = fadd fast float %229, %230
  %232 = uitofp i32 %220 to float
  %233 = fmul fast float %232, %232
  %234 = fcmp fast ogt float %231, %233
  br i1 %234, label %241, label %235, !dx.controlflow.hints !49

; <label>:235                                     ; preds = %223
  %236 = call float @dx.op.unary.f32(i32 24, float %231)  ; Sqrt(value)
  %237 = fsub fast float %232, %236
  %238 = fmul fast float %237, 0x3F75555560000000
  %239 = call float @dx.op.unary.f32(i32 7, float %238)  ; Saturate(value)
  %240 = call float @dx.op.binary.f32(i32 36, float %239, float %218)  ; FMin(a,b)
  br label %241

; <label>:241                                     ; preds = %235, %223, %206, %99
  %242 = phi float [ 1.000000e+00, %99 ], [ %240, %235 ], [ %218, %206 ], [ 0.000000e+00, %223 ]
  %243 = fcmp fast ogt float %242, 0.000000e+00
  br i1 %243, label %244, label %1089, !dx.controlflow.hints !50

; <label>:244                                     ; preds = %241
  %245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %246 = extractvalue %dx.types.CBufRet.f32 %245, 0
  %247 = extractvalue %dx.types.CBufRet.f32 %245, 1
  %248 = extractvalue %dx.types.CBufRet.f32 %245, 2
  %249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %250 = extractvalue %dx.types.CBufRet.f32 %249, 0
  %251 = extractvalue %dx.types.CBufRet.f32 %249, 1
  %252 = extractvalue %dx.types.CBufRet.f32 %249, 2
  %253 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %254 = extractvalue %dx.types.CBufRet.i32 %253, 1
  %255 = fsub fast float %192, %246
  %256 = fsub fast float %197, %247
  %257 = fsub fast float %202, %248
  %258 = fmul fast float %255, %250
  %259 = fmul fast float %256, %251
  %260 = fmul fast float %257, %252
  %261 = fcmp fast ole float %258, 0.000000e+00
  %262 = fcmp fast ole float %259, 0.000000e+00
  %263 = fcmp fast ole float %260, 0.000000e+00
  %264 = or i1 %261, %262
  %265 = or i1 %263, %264
  %266 = fcmp fast oge float %258, 1.000000e+00
  %267 = fcmp fast oge float %259, 1.000000e+00
  %268 = fcmp fast oge float %260, 1.000000e+00
  %269 = or i1 %266, %267
  %270 = or i1 %268, %269
  %271 = or i1 %265, %270
  br i1 %271, label %987, label %272, !dx.controlflow.hints !51

; <label>:272                                     ; preds = %244
  %273 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %274 = extractvalue %dx.types.CBufRet.i32 %273, 0
  %275 = fptosi float %255 to i32
  %276 = fptosi float %256 to i32
  %277 = fptosi float %257 to i32
  %278 = and i32 %254, 31
  %279 = ashr i32 %275, %278
  %280 = ashr i32 %276, %278
  %281 = ashr i32 %277, %278
  %282 = mul i32 %274, %280
  %283 = add nsw i32 %282, %279
  %284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %283, i32 0)  ; BufferLoad(srv,index,wot)
  %285 = extractvalue %dx.types.ResRet.i32 %284, 0
  %286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %283, i32 4)  ; BufferLoad(srv,index,wot)
  %287 = extractvalue %dx.types.ResRet.i32 %286, 0
  %288 = icmp slt i32 %281, %285
  %289 = icmp sgt i32 %281, %287
  %290 = or i1 %288, %289
  br i1 %290, label %987, label %291, !dx.controlflow.hints !52

; <label>:291                                     ; preds = %272
  %292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %283, i32 8)  ; BufferLoad(srv,index,wot)
  %293 = extractvalue %dx.types.ResRet.i32 %292, 0
  %294 = sub i32 %281, %285
  %295 = add nsw i32 %294, %293
  %296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %295, i32 undef)  ; BufferLoad(srv,index,wot)
  %297 = extractvalue %dx.types.ResRet.i32 %296, 0
  %298 = icmp eq i32 %297, -1
  br i1 %298, label %987, label %299, !dx.controlflow.hints !53

; <label>:299                                     ; preds = %291
  %300 = getelementptr inbounds [8 x i32], [8 x i32]* %34, i32 0, i32 0
  store i32 -1, i32* %300, align 4, !tbaa !54, !noalias !58
  %301 = getelementptr inbounds [8 x i32], [8 x i32]* %34, i32 0, i32 1
  store i32 -1, i32* %301, align 4, !tbaa !54, !noalias !58
  %302 = getelementptr inbounds [8 x i32], [8 x i32]* %34, i32 0, i32 2
  store i32 -1, i32* %302, align 4, !tbaa !54, !noalias !58
  %303 = getelementptr inbounds [8 x i32], [8 x i32]* %34, i32 0, i32 3
  store i32 -1, i32* %303, align 4, !tbaa !54, !noalias !58
  %304 = getelementptr inbounds [8 x i32], [8 x i32]* %34, i32 0, i32 4
  store i32 -1, i32* %304, align 4, !tbaa !54, !noalias !58
  %305 = getelementptr inbounds [8 x i32], [8 x i32]* %34, i32 0, i32 5
  store i32 -1, i32* %305, align 4, !tbaa !54, !noalias !58
  %306 = getelementptr inbounds [8 x i32], [8 x i32]* %34, i32 0, i32 6
  store i32 -1, i32* %306, align 4, !tbaa !54, !noalias !58
  %307 = getelementptr inbounds [8 x i32], [8 x i32]* %34, i32 0, i32 7
  store i32 -1, i32* %307, align 4, !tbaa !54, !noalias !58
  br label %308

; <label>:308                                     ; preds = %412, %299
  %309 = phi i32 [ -1, %299 ], [ %409, %412 ]
  %310 = phi i32 [ -1, %299 ], [ %404, %412 ]
  %311 = phi i32 [ -1, %299 ], [ %397, %412 ]
  %312 = phi i32 [ -1, %299 ], [ %392, %412 ]
  %313 = phi i32 [ -1, %299 ], [ %383, %412 ]
  %314 = phi i32 [ -1, %299 ], [ %378, %412 ]
  %315 = phi i32 [ -1, %299 ], [ %370, %412 ]
  %316 = phi i32 [ -1, %299 ], [ %363, %412 ]
  %317 = phi i32 [ %297, %299 ], [ %432, %412 ]
  %318 = phi i32 [ %254, %299 ], [ %319, %412 ]
  %319 = add nsw i32 %318, -2
  %320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %317, i32 undef)  ; BufferLoad(srv,index,wot)
  %321 = extractvalue %dx.types.ResRet.i32 %320, 0
  %322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %317, i32 undef)  ; BufferLoad(srv,index,wot)
  %323 = extractvalue %dx.types.ResRet.i32 %322, 0
  %324 = and i32 %321, 31
  %325 = shl i32 1, %324
  %326 = add i32 %325, 1
  %327 = and i32 %319, 31
  %328 = ashr i32 %275, %327
  %329 = ashr i32 %276, %327
  %330 = ashr i32 %277, %327
  %331 = and i32 %328, 3
  %332 = and i32 %329, 3
  %333 = and i32 %330, 3
  br label %334

; <label>:334                                     ; preds = %334, %308
  %335 = phi i32 [ %309, %308 ], [ %409, %334 ]
  %336 = phi i32 [ %310, %308 ], [ %404, %334 ]
  %337 = phi i32 [ %311, %308 ], [ %397, %334 ]
  %338 = phi i32 [ %312, %308 ], [ %392, %334 ]
  %339 = phi i32 [ %313, %308 ], [ %383, %334 ]
  %340 = phi i32 [ %314, %308 ], [ %378, %334 ]
  %341 = phi i32 [ %315, %308 ], [ %370, %334 ]
  %342 = phi i32 [ %316, %308 ], [ %363, %334 ]
  %343 = phi i32 [ 0, %308 ], [ %410, %334 ]
  %344 = sub i32 2, %343
  %345 = and i32 %344, 31
  %346 = lshr i32 %331, %345
  %347 = lshr i32 %332, %345
  %348 = lshr i32 %333, %345
  %349 = sub i32 %321, %343
  %350 = and i32 %349, 31
  %351 = shl i32 %346, %350
  %352 = shl i32 %347, %350
  %353 = shl i32 %348, %350
  %354 = shl i32 1, %350
  %355 = mul i32 %353, %326
  %356 = add i32 %355, %352
  %357 = mul i32 %356, %326
  %358 = add i32 %351, %323
  %359 = add i32 %358, %357
  %360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %359, i32 undef)  ; BufferLoad(srv,index,wot)
  %361 = extractvalue %dx.types.ResRet.i32 %360, 0
  %362 = icmp ne i32 %361, -1
  %363 = select i1 %362, i32 %361, i32 %342
  store i32 %363, i32* %300, align 4, !tbaa !54, !noalias !58
  %364 = add i32 %354, %323
  %365 = add i32 %364, %351
  %366 = add i32 %365, %357
  %367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %366, i32 undef)  ; BufferLoad(srv,index,wot)
  %368 = extractvalue %dx.types.ResRet.i32 %367, 0
  %369 = icmp ne i32 %368, -1
  %370 = select i1 %369, i32 %368, i32 %341
  store i32 %370, i32* %301, align 4, !tbaa !54, !noalias !58
  %371 = add i32 %352, %354
  %372 = add i32 %371, %355
  %373 = mul i32 %372, %326
  %374 = add i32 %358, %373
  %375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %374, i32 undef)  ; BufferLoad(srv,index,wot)
  %376 = extractvalue %dx.types.ResRet.i32 %375, 0
  %377 = icmp ne i32 %376, -1
  %378 = select i1 %377, i32 %376, i32 %340
  store i32 %378, i32* %302, align 4, !tbaa !54, !noalias !58
  %379 = add i32 %365, %373
  %380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %379, i32 undef)  ; BufferLoad(srv,index,wot)
  %381 = extractvalue %dx.types.ResRet.i32 %380, 0
  %382 = icmp ne i32 %381, -1
  %383 = select i1 %382, i32 %381, i32 %339
  store i32 %383, i32* %303, align 4, !tbaa !54, !noalias !58
  %384 = add i32 %353, %354
  %385 = mul i32 %384, %326
  %386 = add i32 %385, %352
  %387 = mul i32 %386, %326
  %388 = add i32 %358, %387
  %389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %388, i32 undef)  ; BufferLoad(srv,index,wot)
  %390 = extractvalue %dx.types.ResRet.i32 %389, 0
  %391 = icmp ne i32 %390, -1
  %392 = select i1 %391, i32 %390, i32 %338
  store i32 %392, i32* %304, align 4, !tbaa !54, !noalias !58
  %393 = add i32 %365, %387
  %394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %393, i32 undef)  ; BufferLoad(srv,index,wot)
  %395 = extractvalue %dx.types.ResRet.i32 %394, 0
  %396 = icmp ne i32 %395, -1
  %397 = select i1 %396, i32 %395, i32 %337
  store i32 %397, i32* %305, align 4, !tbaa !54, !noalias !58
  %398 = add i32 %371, %385
  %399 = mul i32 %398, %326
  %400 = add i32 %358, %399
  %401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %402 = extractvalue %dx.types.ResRet.i32 %401, 0
  %403 = icmp ne i32 %402, -1
  %404 = select i1 %403, i32 %402, i32 %336
  store i32 %404, i32* %306, align 4, !tbaa !54, !noalias !58
  %405 = add i32 %365, %399
  %406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %405, i32 undef)  ; BufferLoad(srv,index,wot)
  %407 = extractvalue %dx.types.ResRet.i32 %406, 0
  %408 = icmp ne i32 %407, -1
  %409 = select i1 %408, i32 %407, i32 %335
  store i32 %409, i32* %307, align 4, !tbaa !54, !noalias !58
  %410 = add i32 %343, 1
  %411 = icmp ugt i32 %410, %321
  br i1 %411, label %412, label %334

; <label>:412                                     ; preds = %334
  %413 = shl nuw nsw i32 %333, 4
  %414 = shl nuw nsw i32 %332, 2
  %415 = lshr i32 %333, 1
  %416 = and i32 %413, 16
  %417 = or i32 %414, %331
  %418 = or i32 %417, %416
  %419 = shl i32 1, %418
  %420 = shl nuw nsw i32 %415, 2
  %421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %317, i32 %420)  ; BufferLoad(srv,index,wot)
  %422 = extractvalue %dx.types.ResRet.i32 %421, 0
  %423 = and i32 %422, %419
  %424 = icmp eq i32 %423, 0
  %425 = add i32 %419, -1
  %426 = and i32 %422, %425
  %427 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %426)  ; Countbits(value)
  %428 = or i32 %420, 8
  %429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %317, i32 %428)  ; BufferLoad(srv,index,wot)
  %430 = extractvalue %dx.types.ResRet.i32 %429, 0
  %431 = add i32 %430, %427
  %432 = select i1 %424, i32 -1, i32 %431
  %433 = icmp eq i32 %432, -1
  br i1 %433, label %434, label %308

; <label>:434                                     ; preds = %412
  br label %435

; <label>:435                                     ; preds = %721, %434
  %436 = phi i32 [ %723, %721 ], [ %363, %434 ]
  %437 = phi float [ %718, %721 ], [ 0.000000e+00, %434 ]
  %438 = phi i32 [ %719, %721 ], [ 0, %434 ]
  %439 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %436, i32 undef)  ; BufferLoad(srv,index,wot)
  %440 = extractvalue %dx.types.ResRet.f32 %439, 0
  %441 = extractvalue %dx.types.ResRet.f32 %439, 1
  %442 = extractvalue %dx.types.ResRet.f32 %439, 2
  %443 = extractvalue %dx.types.ResRet.f32 %439, 3
  %444 = fsub fast float %192, %440
  %445 = fsub fast float %197, %441
  %446 = fsub fast float %202, %442
  %447 = fmul fast float %444, %443
  %448 = fmul fast float %445, %443
  %449 = fmul fast float %446, %443
  %450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %436, i32 undef)  ; BufferLoad(srv,index,wot)
  %451 = extractvalue %dx.types.ResRet.i32 %450, 0
  %452 = call float @dx.op.unary.f32(i32 6, float %447)  ; FAbs(value)
  %453 = call float @dx.op.unary.f32(i32 6, float %448)  ; FAbs(value)
  %454 = fsub fast float 1.000000e+00, %452
  %455 = fsub fast float 1.000000e+00, %453
  %456 = call float @dx.op.unary.f32(i32 7, float %454)  ; Saturate(value)
  %457 = call float @dx.op.unary.f32(i32 7, float %455)  ; Saturate(value)
  %458 = fmul fast float %457, %456
  %459 = mul i32 %451, 29
  %460 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %461 = extractvalue %dx.types.ResRet.f32 %460, 0
  %462 = extractvalue %dx.types.ResRet.f32 %460, 1
  %463 = extractvalue %dx.types.ResRet.f32 %460, 2
  %464 = extractvalue %dx.types.ResRet.f32 %460, 3
  %465 = add i32 %459, 1
  %466 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %467 = extractvalue %dx.types.ResRet.f32 %466, 0
  %468 = extractvalue %dx.types.ResRet.f32 %466, 1
  %469 = extractvalue %dx.types.ResRet.f32 %466, 2
  %470 = extractvalue %dx.types.ResRet.f32 %466, 3
  %471 = add i32 %459, 2
  %472 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %471, i32 undef)  ; BufferLoad(srv,index,wot)
  %473 = extractvalue %dx.types.ResRet.f32 %472, 0
  %474 = extractvalue %dx.types.ResRet.f32 %472, 1
  %475 = extractvalue %dx.types.ResRet.f32 %472, 2
  %476 = extractvalue %dx.types.ResRet.f32 %472, 3
  %477 = add i32 %459, 3
  %478 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %477, i32 undef)  ; BufferLoad(srv,index,wot)
  %479 = extractvalue %dx.types.ResRet.f32 %478, 0
  %480 = extractvalue %dx.types.ResRet.f32 %478, 1
  %481 = extractvalue %dx.types.ResRet.f32 %478, 2
  %482 = extractvalue %dx.types.ResRet.f32 %478, 3
  %483 = add i32 %459, 4
  %484 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %483, i32 undef)  ; BufferLoad(srv,index,wot)
  %485 = extractvalue %dx.types.ResRet.f32 %484, 0
  %486 = extractvalue %dx.types.ResRet.f32 %484, 1
  %487 = extractvalue %dx.types.ResRet.f32 %484, 2
  %488 = extractvalue %dx.types.ResRet.f32 %484, 3
  %489 = add i32 %459, 5
  %490 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %489, i32 undef)  ; BufferLoad(srv,index,wot)
  %491 = extractvalue %dx.types.ResRet.f32 %490, 0
  %492 = extractvalue %dx.types.ResRet.f32 %490, 1
  %493 = extractvalue %dx.types.ResRet.f32 %490, 2
  %494 = extractvalue %dx.types.ResRet.f32 %490, 3
  %495 = add i32 %459, 6
  %496 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %497 = extractvalue %dx.types.ResRet.f32 %496, 0
  %498 = extractvalue %dx.types.ResRet.f32 %496, 1
  %499 = extractvalue %dx.types.ResRet.f32 %496, 2
  %500 = extractvalue %dx.types.ResRet.f32 %496, 3
  %501 = add i32 %459, 7
  %502 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %501, i32 undef)  ; BufferLoad(srv,index,wot)
  %503 = extractvalue %dx.types.ResRet.f32 %502, 0
  %504 = extractvalue %dx.types.ResRet.f32 %502, 1
  %505 = extractvalue %dx.types.ResRet.f32 %502, 2
  %506 = extractvalue %dx.types.ResRet.f32 %502, 3
  %507 = fmul fast float %461, %447
  %508 = fmul fast float %473, %448
  %509 = fadd fast float %508, %507
  %510 = fmul fast float %485, %449
  %511 = fadd fast float %509, %510
  %512 = fmul fast float %462, %447
  %513 = fmul fast float %474, %448
  %514 = fadd fast float %513, %512
  %515 = fmul fast float %486, %449
  %516 = fadd fast float %514, %515
  %517 = fmul fast float %463, %447
  %518 = fmul fast float %475, %448
  %519 = fadd fast float %518, %517
  %520 = fmul fast float %487, %449
  %521 = fadd fast float %519, %520
  %522 = fmul fast float %464, %447
  %523 = fmul fast float %476, %448
  %524 = fadd fast float %523, %522
  %525 = fmul fast float %488, %449
  %526 = fadd fast float %524, %525
  %527 = fmul fast float %467, %447
  %528 = fmul fast float %479, %448
  %529 = fadd fast float %528, %527
  %530 = fmul fast float %491, %449
  %531 = fadd fast float %529, %530
  %532 = fmul fast float %468, %447
  %533 = fmul fast float %480, %448
  %534 = fadd fast float %533, %532
  %535 = fmul fast float %492, %449
  %536 = fadd fast float %534, %535
  %537 = fmul fast float %469, %447
  %538 = fmul fast float %481, %448
  %539 = fadd fast float %538, %537
  %540 = fmul fast float %493, %449
  %541 = fadd fast float %539, %540
  %542 = fmul fast float %470, %447
  %543 = fmul fast float %482, %448
  %544 = fadd fast float %543, %542
  %545 = fmul fast float %494, %449
  %546 = fadd fast float %544, %545
  %547 = fadd fast float %511, %497
  %548 = fadd fast float %516, %498
  %549 = fadd fast float %521, %499
  %550 = fadd fast float %526, %500
  %551 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %547)  ; FMax(a,b)
  %552 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %548)  ; FMax(a,b)
  %553 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %549)  ; FMax(a,b)
  %554 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %550)  ; FMax(a,b)
  %555 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %547)  ; FMin(a,b)
  %556 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %548)  ; FMin(a,b)
  %557 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %549)  ; FMin(a,b)
  %558 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %550)  ; FMin(a,b)
  %559 = fmul fast float %555, 0x3F847AE140000000
  %560 = fmul fast float %556, 0x3F847AE140000000
  %561 = fmul fast float %557, 0x3F847AE140000000
  %562 = fmul fast float %558, 0x3F847AE140000000
  %563 = fadd fast float %559, %551
  %564 = fadd fast float %560, %552
  %565 = fadd fast float %561, %553
  %566 = fadd fast float %562, %554
  %567 = fadd fast float %531, %503
  %568 = fadd fast float %536, %504
  %569 = fadd fast float %541, %505
  %570 = fadd fast float %546, %506
  %571 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %567)  ; FMax(a,b)
  %572 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %568)  ; FMax(a,b)
  %573 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %569)  ; FMax(a,b)
  %574 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %570)  ; FMax(a,b)
  %575 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %567)  ; FMin(a,b)
  %576 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %568)  ; FMin(a,b)
  %577 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %569)  ; FMin(a,b)
  %578 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %570)  ; FMin(a,b)
  %579 = fmul fast float %575, 0x3F847AE140000000
  %580 = fmul fast float %576, 0x3F847AE140000000
  %581 = fmul fast float %577, 0x3F847AE140000000
  %582 = fmul fast float %578, 0x3F847AE140000000
  %583 = fadd fast float %579, %571
  %584 = fadd fast float %580, %572
  %585 = fadd fast float %581, %573
  %586 = fadd fast float %582, %574
  br label %587

; <label>:587                                     ; preds = %587, %435
  %588 = phi i32 [ 0, %435 ], [ %608, %587 ]
  %589 = add i32 %459, 8
  %590 = shl i32 %588, 1
  %591 = add i32 %589, %590
  %592 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %591, i32 undef)  ; BufferLoad(srv,index,wot)
  %593 = extractvalue %dx.types.ResRet.f32 %592, 0
  %594 = extractvalue %dx.types.ResRet.f32 %592, 1
  %595 = extractvalue %dx.types.ResRet.f32 %592, 2
  %596 = extractvalue %dx.types.ResRet.f32 %592, 3
  %597 = add i32 %459, 9
  %598 = add i32 %597, %590
  %599 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %598, i32 undef)  ; BufferLoad(srv,index,wot)
  %600 = extractvalue %dx.types.ResRet.f32 %599, 0
  %601 = extractvalue %dx.types.ResRet.f32 %599, 1
  %602 = extractvalue %dx.types.ResRet.f32 %599, 2
  %603 = extractvalue %dx.types.ResRet.f32 %599, 3
  %604 = call float @dx.op.dot4.f32(i32 56, float %593, float %594, float %595, float %596, float %563, float %564, float %565, float %566)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %605 = call float @dx.op.dot4.f32(i32 56, float %600, float %601, float %602, float %603, float %583, float %584, float %585, float %586)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %606 = fadd fast float %605, %604
  %607 = getelementptr inbounds [8 x float], [8 x float]* %33, i32 0, i32 %588
  store float %606, float* %607, align 4, !tbaa !64, !noalias !58
  %608 = add nuw nsw i32 %588, 1
  %609 = icmp eq i32 %608, 8
  br i1 %609, label %610, label %587

; <label>:610                                     ; preds = %587
  %611 = call float @dx.op.unary.f32(i32 6, float %449)  ; FAbs(value)
  %612 = fsub fast float 1.000000e+00, %611
  %613 = call float @dx.op.unary.f32(i32 7, float %612)  ; Saturate(value)
  %614 = fmul fast float %458, %613
  %615 = add i32 %459, 24
  %616 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %615, i32 undef)  ; BufferLoad(srv,index,wot)
  %617 = extractvalue %dx.types.ResRet.f32 %616, 0
  %618 = extractvalue %dx.types.ResRet.f32 %616, 1
  %619 = extractvalue %dx.types.ResRet.f32 %616, 2
  %620 = extractvalue %dx.types.ResRet.f32 %616, 3
  %621 = add i32 %459, 25
  %622 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %621, i32 undef)  ; BufferLoad(srv,index,wot)
  %623 = extractvalue %dx.types.ResRet.f32 %622, 0
  %624 = extractvalue %dx.types.ResRet.f32 %622, 1
  %625 = extractvalue %dx.types.ResRet.f32 %622, 2
  %626 = extractvalue %dx.types.ResRet.f32 %622, 3
  %627 = getelementptr inbounds [8 x float], [8 x float]* %33, i32 0, i32 0
  %628 = load float, float* %627, align 4, !tbaa !64, !noalias !58
  %629 = fadd fast float %628, %617
  %630 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %629)  ; FMax(a,b)
  %631 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %629)  ; FMin(a,b)
  %632 = fmul fast float %631, 0x3F847AE140000000
  %633 = fadd fast float %632, %630
  store float %633, float* %627, align 4, !tbaa !64, !noalias !58
  %634 = getelementptr inbounds [8 x float], [8 x float]* %33, i32 0, i32 1
  %635 = load float, float* %634, align 4, !tbaa !64, !noalias !58
  %636 = fadd fast float %635, %618
  %637 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %636)  ; FMax(a,b)
  %638 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %636)  ; FMin(a,b)
  %639 = fmul fast float %638, 0x3F847AE140000000
  %640 = fadd fast float %639, %637
  store float %640, float* %634, align 4, !tbaa !64, !noalias !58
  %641 = getelementptr inbounds [8 x float], [8 x float]* %33, i32 0, i32 2
  %642 = load float, float* %641, align 4, !tbaa !64, !noalias !58
  %643 = fadd fast float %642, %619
  %644 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %643)  ; FMax(a,b)
  %645 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %643)  ; FMin(a,b)
  %646 = fmul fast float %645, 0x3F847AE140000000
  %647 = fadd fast float %646, %644
  store float %647, float* %641, align 4, !tbaa !64, !noalias !58
  %648 = getelementptr inbounds [8 x float], [8 x float]* %33, i32 0, i32 3
  %649 = load float, float* %648, align 4, !tbaa !64, !noalias !58
  %650 = fadd fast float %649, %620
  %651 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %650)  ; FMax(a,b)
  %652 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %650)  ; FMin(a,b)
  %653 = fmul fast float %652, 0x3F847AE140000000
  %654 = fadd fast float %653, %651
  store float %654, float* %648, align 4, !tbaa !64, !noalias !58
  %655 = getelementptr inbounds [8 x float], [8 x float]* %33, i32 0, i32 4
  %656 = load float, float* %655, align 4, !tbaa !64, !noalias !58
  %657 = fadd fast float %656, %623
  %658 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %657)  ; FMax(a,b)
  %659 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %657)  ; FMin(a,b)
  %660 = fmul fast float %659, 0x3F847AE140000000
  %661 = fadd fast float %660, %658
  store float %661, float* %655, align 4, !tbaa !64, !noalias !58
  %662 = getelementptr inbounds [8 x float], [8 x float]* %33, i32 0, i32 5
  %663 = load float, float* %662, align 4, !tbaa !64, !noalias !58
  %664 = fadd fast float %663, %624
  %665 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %664)  ; FMax(a,b)
  %666 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %664)  ; FMin(a,b)
  %667 = fmul fast float %666, 0x3F847AE140000000
  %668 = fadd fast float %667, %665
  store float %668, float* %662, align 4, !tbaa !64, !noalias !58
  %669 = getelementptr inbounds [8 x float], [8 x float]* %33, i32 0, i32 6
  %670 = load float, float* %669, align 4, !tbaa !64, !noalias !58
  %671 = fadd fast float %670, %625
  %672 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %671)  ; FMax(a,b)
  %673 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %671)  ; FMin(a,b)
  %674 = fmul fast float %673, 0x3F847AE140000000
  %675 = fadd fast float %674, %672
  store float %675, float* %669, align 4, !tbaa !64, !noalias !58
  %676 = getelementptr inbounds [8 x float], [8 x float]* %33, i32 0, i32 7
  %677 = load float, float* %676, align 4, !tbaa !64, !noalias !58
  %678 = fadd fast float %677, %626
  %679 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %678)  ; FMax(a,b)
  %680 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %678)  ; FMin(a,b)
  %681 = fmul fast float %680, 0x3F847AE140000000
  %682 = fadd fast float %681, %679
  store float %682, float* %676, align 4, !tbaa !64, !noalias !58
  %683 = add i32 %459, 26
  %684 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %683, i32 undef)  ; BufferLoad(srv,index,wot)
  %685 = extractvalue %dx.types.ResRet.f32 %684, 0
  %686 = extractvalue %dx.types.ResRet.f32 %684, 1
  %687 = extractvalue %dx.types.ResRet.f32 %684, 2
  %688 = extractvalue %dx.types.ResRet.f32 %684, 3
  %689 = add i32 %459, 27
  %690 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %689, i32 undef)  ; BufferLoad(srv,index,wot)
  %691 = extractvalue %dx.types.ResRet.f32 %690, 0
  %692 = extractvalue %dx.types.ResRet.f32 %690, 1
  %693 = extractvalue %dx.types.ResRet.f32 %690, 2
  %694 = extractvalue %dx.types.ResRet.f32 %690, 3
  %695 = fmul fast float %633, %685
  %696 = fmul fast float %640, %686
  %697 = fadd fast float %696, %695
  %698 = fmul fast float %647, %687
  %699 = fadd fast float %697, %698
  %700 = fmul fast float %654, %688
  %701 = fadd fast float %699, %700
  %702 = fmul fast float %661, %691
  %703 = fadd fast float %701, %702
  %704 = fmul fast float %668, %692
  %705 = fadd fast float %703, %704
  %706 = fmul fast float %675, %693
  %707 = fadd fast float %705, %706
  %708 = fmul fast float %682, %694
  %709 = fadd fast float %707, %708
  %710 = add i32 %459, 28
  %711 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %710, i32 undef)  ; BufferLoad(srv,index,wot)
  %712 = extractvalue %dx.types.ResRet.f32 %711, 0
  %713 = fadd fast float %709, %712
  %714 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %713)  ; FMax(a,b)
  %715 = fmul fast float %614, %714
  %716 = call float @dx.op.unary.f32(i32 7, float %715)  ; Saturate(value)
  %717 = getelementptr inbounds [8 x float], [8 x float]* %35, i32 0, i32 %438
  store float %716, float* %717, align 4, !tbaa !64, !noalias !58
  %718 = fadd fast float %716, %437
  %719 = add nuw nsw i32 %438, 1
  %720 = icmp eq i32 %719, 8
  br i1 %720, label %724, label %721

; <label>:721                                     ; preds = %610
  %722 = getelementptr inbounds [8 x i32], [8 x i32]* %34, i32 0, i32 %719
  %723 = load i32, i32* %722, align 4, !tbaa !54, !noalias !58
  br label %435

; <label>:724                                     ; preds = %610
  %725 = fcmp fast ugt float %718, 0x3EE4F8B580000000
  br i1 %725, label %726, label %987, !dx.controlflow.hints !66

; <label>:726                                     ; preds = %724
  %727 = fcmp fast ogt float %718, 0x3EE4F8B580000000
  %728 = fdiv fast float 1.000000e+00, %718
  %729 = select i1 %727, float %728, float 1.000000e+00
  %730 = getelementptr inbounds [8 x float], [8 x float]* %35, i32 0, i32 0
  %731 = load float, float* %730, align 4, !tbaa !64, !noalias !58
  %732 = fmul fast float %731, %729
  store float %732, float* %730, align 4, !tbaa !64, !noalias !58
  %733 = getelementptr inbounds [8 x float], [8 x float]* %35, i32 0, i32 1
  %734 = load float, float* %733, align 4, !tbaa !64, !noalias !58
  %735 = fmul fast float %734, %729
  store float %735, float* %733, align 4, !tbaa !64, !noalias !58
  %736 = getelementptr inbounds [8 x float], [8 x float]* %35, i32 0, i32 2
  %737 = load float, float* %736, align 4, !tbaa !64, !noalias !58
  %738 = fmul fast float %737, %729
  store float %738, float* %736, align 4, !tbaa !64, !noalias !58
  %739 = getelementptr inbounds [8 x float], [8 x float]* %35, i32 0, i32 3
  %740 = load float, float* %739, align 4, !tbaa !64, !noalias !58
  %741 = fmul fast float %740, %729
  store float %741, float* %739, align 4, !tbaa !64, !noalias !58
  %742 = getelementptr inbounds [8 x float], [8 x float]* %35, i32 0, i32 4
  %743 = load float, float* %742, align 4, !tbaa !64, !noalias !58
  %744 = fmul fast float %743, %729
  store float %744, float* %742, align 4, !tbaa !64, !noalias !58
  %745 = getelementptr inbounds [8 x float], [8 x float]* %35, i32 0, i32 5
  %746 = load float, float* %745, align 4, !tbaa !64, !noalias !58
  %747 = fmul fast float %746, %729
  store float %747, float* %745, align 4, !tbaa !64, !noalias !58
  %748 = getelementptr inbounds [8 x float], [8 x float]* %35, i32 0, i32 6
  %749 = load float, float* %748, align 4, !tbaa !64, !noalias !58
  %750 = fmul fast float %749, %729
  store float %750, float* %748, align 4, !tbaa !64, !noalias !58
  %751 = getelementptr inbounds [8 x float], [8 x float]* %35, i32 0, i32 7
  %752 = load float, float* %751, align 4, !tbaa !64, !noalias !58
  %753 = fmul fast float %752, %729
  store float %753, float* %751, align 4, !tbaa !64, !noalias !58
  br label %754

; <label>:754                                     ; preds = %981, %726
  %755 = phi float [ %985, %981 ], [ %732, %726 ]
  %756 = phi i32 [ %983, %981 ], [ %363, %726 ]
  %757 = phi float [ %957, %981 ], [ 0.000000e+00, %726 ]
  %758 = phi float [ %955, %981 ], [ 0.000000e+00, %726 ]
  %759 = phi float [ %953, %981 ], [ 0.000000e+00, %726 ]
  %760 = phi float [ %950, %981 ], [ 0.000000e+00, %726 ]
  %761 = phi float [ %948, %981 ], [ 0.000000e+00, %726 ]
  %762 = phi float [ %945, %981 ], [ 0.000000e+00, %726 ]
  %763 = phi float [ %943, %981 ], [ 0.000000e+00, %726 ]
  %764 = phi float [ %941, %981 ], [ 0.000000e+00, %726 ]
  %765 = phi float [ %938, %981 ], [ 0.000000e+00, %726 ]
  %766 = phi float [ %978, %981 ], [ 0.000000e+00, %726 ]
  %767 = phi float [ %976, %981 ], [ 0.000000e+00, %726 ]
  %768 = phi float [ %974, %981 ], [ 0.000000e+00, %726 ]
  %769 = phi float [ %971, %981 ], [ 0.000000e+00, %726 ]
  %770 = phi float [ %969, %981 ], [ 0.000000e+00, %726 ]
  %771 = phi float [ %966, %981 ], [ 0.000000e+00, %726 ]
  %772 = phi float [ %964, %981 ], [ 0.000000e+00, %726 ]
  %773 = phi float [ %962, %981 ], [ 0.000000e+00, %726 ]
  %774 = phi float [ %959, %981 ], [ 0.000000e+00, %726 ]
  %775 = phi float [ %936, %981 ], [ 0.000000e+00, %726 ]
  %776 = phi float [ %934, %981 ], [ 0.000000e+00, %726 ]
  %777 = phi float [ %932, %981 ], [ 0.000000e+00, %726 ]
  %778 = phi float [ %928, %981 ], [ 0.000000e+00, %726 ]
  %779 = phi float [ %926, %981 ], [ 0.000000e+00, %726 ]
  %780 = phi float [ %922, %981 ], [ 0.000000e+00, %726 ]
  %781 = phi float [ %920, %981 ], [ 0.000000e+00, %726 ]
  %782 = phi float [ %918, %981 ], [ 0.000000e+00, %726 ]
  %783 = phi float [ %914, %981 ], [ 0.000000e+00, %726 ]
  %784 = phi i32 [ %979, %981 ], [ 0, %726 ]
  %785 = shl i32 %756, 5
  %786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %785, i32 undef)  ; BufferLoad(srv,index,wot)
  %787 = extractvalue %dx.types.ResRet.i32 %786, 0
  %788 = extractvalue %dx.types.ResRet.i32 %786, 1
  %789 = extractvalue %dx.types.ResRet.i32 %786, 2
  %790 = extractvalue %dx.types.ResRet.i32 %786, 3
  %791 = or i32 %785, 16
  %792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %791, i32 undef)  ; BufferLoad(srv,index,wot)
  %793 = extractvalue %dx.types.ResRet.i32 %792, 0
  %794 = extractvalue %dx.types.ResRet.i32 %792, 1
  %795 = extractvalue %dx.types.ResRet.i32 %792, 2
  %796 = shl i32 %787, 4
  %797 = and i32 %796, 32752
  %798 = call float @dx.op.legacyF16ToF32(i32 131, i32 %797)  ; LegacyF16ToF32(value)
  %799 = lshr i32 %787, 7
  %800 = and i32 %799, 32752
  %801 = call float @dx.op.legacyF16ToF32(i32 131, i32 %800)  ; LegacyF16ToF32(value)
  %802 = lshr i32 %787, 22
  %803 = shl nuw nsw i32 %802, 5
  %804 = call float @dx.op.legacyF16ToF32(i32 131, i32 %803)  ; LegacyF16ToF32(value)
  %805 = and i32 %788, 255
  %806 = uitofp i32 %805 to float
  %807 = fmul fast float %806, 0x3F80204080000000
  %808 = fadd fast float %807, -1.000000e+00
  %809 = lshr i32 %788, 8
  %810 = and i32 %809, 255
  %811 = uitofp i32 %810 to float
  %812 = fmul fast float %811, 0x3F80204080000000
  %813 = fadd fast float %812, -1.000000e+00
  %814 = lshr i32 %788, 16
  %815 = and i32 %814, 255
  %816 = uitofp i32 %815 to float
  %817 = fmul fast float %816, 0x3F80204080000000
  %818 = fadd fast float %817, -1.000000e+00
  %819 = lshr i32 %788, 24
  %820 = uitofp i32 %819 to float
  %821 = fmul fast float %820, 0x3F80204080000000
  %822 = fadd fast float %821, -1.000000e+00
  %823 = and i32 %789, 255
  %824 = uitofp i32 %823 to float
  %825 = fmul fast float %824, 0x3F80204080000000
  %826 = fadd fast float %825, -1.000000e+00
  %827 = lshr i32 %789, 8
  %828 = and i32 %827, 255
  %829 = uitofp i32 %828 to float
  %830 = fmul fast float %829, 0x3F80204080000000
  %831 = fadd fast float %830, -1.000000e+00
  %832 = lshr i32 %789, 16
  %833 = and i32 %832, 255
  %834 = uitofp i32 %833 to float
  %835 = fmul fast float %834, 0x3F80204080000000
  %836 = fadd fast float %835, -1.000000e+00
  %837 = lshr i32 %789, 24
  %838 = uitofp i32 %837 to float
  %839 = fmul fast float %838, 0x3F80204080000000
  %840 = fadd fast float %839, -1.000000e+00
  %841 = and i32 %790, 255
  %842 = uitofp i32 %841 to float
  %843 = fmul fast float %842, 0x3F80204080000000
  %844 = fadd fast float %843, -1.000000e+00
  %845 = lshr i32 %790, 8
  %846 = and i32 %845, 255
  %847 = uitofp i32 %846 to float
  %848 = fmul fast float %847, 0x3F80204080000000
  %849 = fadd fast float %848, -1.000000e+00
  %850 = lshr i32 %790, 16
  %851 = and i32 %850, 255
  %852 = uitofp i32 %851 to float
  %853 = fmul fast float %852, 0x3F80204080000000
  %854 = fadd fast float %853, -1.000000e+00
  %855 = lshr i32 %790, 24
  %856 = uitofp i32 %855 to float
  %857 = fmul fast float %856, 0x3F80204080000000
  %858 = fadd fast float %857, -1.000000e+00
  %859 = and i32 %793, 255
  %860 = uitofp i32 %859 to float
  %861 = fmul fast float %860, 0x3F80204080000000
  %862 = fadd fast float %861, -1.000000e+00
  %863 = lshr i32 %793, 8
  %864 = and i32 %863, 255
  %865 = uitofp i32 %864 to float
  %866 = fmul fast float %865, 0x3F80204080000000
  %867 = fadd fast float %866, -1.000000e+00
  %868 = lshr i32 %793, 16
  %869 = and i32 %868, 255
  %870 = uitofp i32 %869 to float
  %871 = fmul fast float %870, 0x3F80204080000000
  %872 = fadd fast float %871, -1.000000e+00
  %873 = lshr i32 %793, 24
  %874 = uitofp i32 %873 to float
  %875 = fmul fast float %874, 0x3F80204080000000
  %876 = fadd fast float %875, -1.000000e+00
  %877 = and i32 %794, 255
  %878 = uitofp i32 %877 to float
  %879 = fmul fast float %878, 0x3F80204080000000
  %880 = fadd fast float %879, -1.000000e+00
  %881 = lshr i32 %794, 8
  %882 = and i32 %881, 255
  %883 = uitofp i32 %882 to float
  %884 = fmul fast float %883, 0x3F80204080000000
  %885 = fadd fast float %884, -1.000000e+00
  %886 = lshr i32 %794, 16
  %887 = and i32 %886, 255
  %888 = uitofp i32 %887 to float
  %889 = fmul fast float %888, 0x3F80204080000000
  %890 = fadd fast float %889, -1.000000e+00
  %891 = lshr i32 %794, 24
  %892 = uitofp i32 %891 to float
  %893 = fmul fast float %892, 0x3F80204080000000
  %894 = fadd fast float %893, -1.000000e+00
  %895 = and i32 %795, 255
  %896 = uitofp i32 %895 to float
  %897 = fmul fast float %896, 0x3F80204080000000
  %898 = fadd fast float %897, -1.000000e+00
  %899 = lshr i32 %795, 8
  %900 = and i32 %899, 255
  %901 = uitofp i32 %900 to float
  %902 = fmul fast float %901, 0x3F80204080000000
  %903 = fadd fast float %902, -1.000000e+00
  %904 = lshr i32 %795, 16
  %905 = and i32 %904, 255
  %906 = uitofp i32 %905 to float
  %907 = fmul fast float %906, 0x3F80204080000000
  %908 = fadd fast float %907, -1.000000e+00
  %909 = lshr i32 %795, 24
  %910 = uitofp i32 %909 to float
  %911 = fmul fast float %910, 0x3F80204080000000
  %912 = fadd fast float %911, -1.000000e+00
  %913 = fmul fast float %798, %755
  %914 = fadd fast float %913, %783
  %915 = fmul fast float %755, 0x3FFBB67AE0000000
  %916 = fmul fast float %915, %798
  %917 = fmul fast float %916, %808
  %918 = fadd fast float %917, %782
  %919 = fmul fast float %916, %813
  %920 = fadd fast float %919, %781
  %921 = fmul fast float %916, %818
  %922 = fadd fast float %921, %780
  %923 = fmul fast float %755, 0x3FFEFBDEC0000000
  %924 = fmul fast float %923, %798
  %925 = fmul fast float %924, %822
  %926 = fadd fast float %925, %779
  %927 = fmul fast float %924, %826
  %928 = fadd fast float %927, %778
  %929 = fmul fast float %755, 0x4001E377A0000000
  %930 = fmul fast float %929, %798
  %931 = fmul fast float %930, %831
  %932 = fadd fast float %931, %777
  %933 = fmul fast float %924, %836
  %934 = fadd fast float %933, %776
  %935 = fmul fast float %924, %840
  %936 = fadd fast float %935, %775
  %937 = fmul fast float %801, %755
  %938 = fadd fast float %937, %765
  %939 = fmul fast float %915, %801
  %940 = fmul fast float %939, %844
  %941 = fadd fast float %940, %764
  %942 = fmul fast float %939, %849
  %943 = fadd fast float %942, %763
  %944 = fmul fast float %939, %854
  %945 = fadd fast float %944, %762
  %946 = fmul fast float %923, %801
  %947 = fmul fast float %946, %858
  %948 = fadd fast float %947, %761
  %949 = fmul fast float %946, %862
  %950 = fadd fast float %949, %760
  %951 = fmul fast float %929, %801
  %952 = fmul fast float %951, %867
  %953 = fadd fast float %952, %759
  %954 = fmul fast float %946, %872
  %955 = fadd fast float %954, %758
  %956 = fmul fast float %946, %876
  %957 = fadd fast float %956, %757
  %958 = fmul fast float %804, %755
  %959 = fadd fast float %958, %774
  %960 = fmul fast float %915, %804
  %961 = fmul fast float %960, %880
  %962 = fadd fast float %961, %773
  %963 = fmul fast float %960, %885
  %964 = fadd fast float %963, %772
  %965 = fmul fast float %960, %890
  %966 = fadd fast float %965, %771
  %967 = fmul fast float %923, %804
  %968 = fmul fast float %967, %894
  %969 = fadd fast float %968, %770
  %970 = fmul fast float %967, %898
  %971 = fadd fast float %970, %769
  %972 = fmul fast float %929, %804
  %973 = fmul fast float %972, %903
  %974 = fadd fast float %973, %768
  %975 = fmul fast float %967, %908
  %976 = fadd fast float %975, %767
  %977 = fmul fast float %967, %912
  %978 = fadd fast float %977, %766
  %979 = add nuw nsw i32 %784, 1
  %980 = icmp eq i32 %979, 8
  br i1 %980, label %986, label %981

; <label>:981                                     ; preds = %754
  %982 = getelementptr inbounds [8 x i32], [8 x i32]* %34, i32 0, i32 %979
  %983 = load i32, i32* %982, align 4, !tbaa !54, !noalias !58
  %984 = getelementptr inbounds [8 x float], [8 x float]* %35, i32 0, i32 %979
  %985 = load float, float* %984, align 4, !tbaa !64, !noalias !58
  br label %754

; <label>:986                                     ; preds = %754
  br label %987

; <label>:987                                     ; preds = %986, %724, %291, %272, %244
  %988 = phi float [ 0.000000e+00, %244 ], [ 0.000000e+00, %272 ], [ 0.000000e+00, %291 ], [ 0.000000e+00, %724 ], [ %957, %986 ]
  %989 = phi float [ 0.000000e+00, %244 ], [ 0.000000e+00, %272 ], [ 0.000000e+00, %291 ], [ 0.000000e+00, %724 ], [ %955, %986 ]
  %990 = phi float [ 0.000000e+00, %244 ], [ 0.000000e+00, %272 ], [ 0.000000e+00, %291 ], [ 0.000000e+00, %724 ], [ %953, %986 ]
  %991 = phi float [ 0.000000e+00, %244 ], [ 0.000000e+00, %272 ], [ 0.000000e+00, %291 ], [ 0.000000e+00, %724 ], [ %950, %986 ]
  %992 = phi float [ 0.000000e+00, %244 ], [ 0.000000e+00, %272 ], [ 0.000000e+00, %291 ], [ 0.000000e+00, %724 ], [ %948, %986 ]
  %993 = phi float [ 0.000000e+00, %244 ], [ 0.000000e+00, %272 ], [ 0.000000e+00, %291 ], [ 0.000000e+00, %724 ], [ %945, %986 ]
  %994 = phi float [ 0.000000e+00, %244 ], [ 0.000000e+00, %272 ], [ 0.000000e+00, %291 ], [ 0.000000e+00, %724 ], [ %943, %986 ]
  %995 = phi float [ 0.000000e+00, %244 ], [ 0.000000e+00, %272 ], [ 0.000000e+00, %291 ], [ 0.000000e+00, %724 ], [ %941, %986 ]
  %996 = phi float [ 0.000000e+00, %244 ], [ 0.000000e+00, %272 ], [ 0.000000e+00, %291 ], [ 0.000000e+00, %724 ], [ %938, %986 ]
  %997 = phi float [ 0.000000e+00, %244 ], [ 0.000000e+00, %272 ], [ 0.000000e+00, %291 ], [ 0.000000e+00, %724 ], [ %978, %986 ]
  %998 = phi float [ 0.000000e+00, %244 ], [ 0.000000e+00, %272 ], [ 0.000000e+00, %291 ], [ 0.000000e+00, %724 ], [ %976, %986 ]
  %999 = phi float [ 0.000000e+00, %244 ], [ 0.000000e+00, %272 ], [ 0.000000e+00, %291 ], [ 0.000000e+00, %724 ], [ %974, %986 ]
  %1000 = phi float [ 0.000000e+00, %244 ], [ 0.000000e+00, %272 ], [ 0.000000e+00, %291 ], [ 0.000000e+00, %724 ], [ %971, %986 ]
  %1001 = phi float [ 0.000000e+00, %244 ], [ 0.000000e+00, %272 ], [ 0.000000e+00, %291 ], [ 0.000000e+00, %724 ], [ %969, %986 ]
  %1002 = phi float [ 0.000000e+00, %244 ], [ 0.000000e+00, %272 ], [ 0.000000e+00, %291 ], [ 0.000000e+00, %724 ], [ %966, %986 ]
  %1003 = phi float [ 0.000000e+00, %244 ], [ 0.000000e+00, %272 ], [ 0.000000e+00, %291 ], [ 0.000000e+00, %724 ], [ %964, %986 ]
  %1004 = phi float [ 0.000000e+00, %244 ], [ 0.000000e+00, %272 ], [ 0.000000e+00, %291 ], [ 0.000000e+00, %724 ], [ %962, %986 ]
  %1005 = phi float [ 0.000000e+00, %244 ], [ 0.000000e+00, %272 ], [ 0.000000e+00, %291 ], [ 0.000000e+00, %724 ], [ %959, %986 ]
  %1006 = phi float [ 0.000000e+00, %244 ], [ 0.000000e+00, %272 ], [ 0.000000e+00, %291 ], [ 0.000000e+00, %724 ], [ %936, %986 ]
  %1007 = phi float [ 0.000000e+00, %244 ], [ 0.000000e+00, %272 ], [ 0.000000e+00, %291 ], [ 0.000000e+00, %724 ], [ %934, %986 ]
  %1008 = phi float [ 0.000000e+00, %244 ], [ 0.000000e+00, %272 ], [ 0.000000e+00, %291 ], [ 0.000000e+00, %724 ], [ %932, %986 ]
  %1009 = phi float [ 0.000000e+00, %244 ], [ 0.000000e+00, %272 ], [ 0.000000e+00, %291 ], [ 0.000000e+00, %724 ], [ %928, %986 ]
  %1010 = phi float [ 0.000000e+00, %244 ], [ 0.000000e+00, %272 ], [ 0.000000e+00, %291 ], [ 0.000000e+00, %724 ], [ %926, %986 ]
  %1011 = phi float [ 0.000000e+00, %244 ], [ 0.000000e+00, %272 ], [ 0.000000e+00, %291 ], [ 0.000000e+00, %724 ], [ %922, %986 ]
  %1012 = phi float [ 0.000000e+00, %244 ], [ 0.000000e+00, %272 ], [ 0.000000e+00, %291 ], [ 0.000000e+00, %724 ], [ %920, %986 ]
  %1013 = phi float [ 0.000000e+00, %244 ], [ 0.000000e+00, %272 ], [ 0.000000e+00, %291 ], [ 0.000000e+00, %724 ], [ %918, %986 ]
  %1014 = phi float [ 0.000000e+00, %244 ], [ 0.000000e+00, %272 ], [ 0.000000e+00, %291 ], [ 0.000000e+00, %724 ], [ %914, %986 ]
  %1015 = phi i1 [ false, %244 ], [ false, %272 ], [ false, %291 ], [ false, %724 ], [ true, %986 ]
  br i1 %1015, label %1089, label %1016, !dx.controlflow.hints !67

; <label>:1016                                    ; preds = %987
  %1017 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %1018 = extractvalue %dx.types.ResRet.i32 %1017, 0
  %1019 = extractvalue %dx.types.ResRet.i32 %1017, 1
  %1020 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %1021 = extractvalue %dx.types.ResRet.i32 %1020, 0
  %1022 = extractvalue %dx.types.ResRet.i32 %1020, 1
  %1023 = extractvalue %dx.types.ResRet.i32 %1020, 2
  %1024 = extractvalue %dx.types.ResRet.i32 %1020, 3
  %1025 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %1026 = extractvalue %dx.types.ResRet.i32 %1025, 0
  %1027 = extractvalue %dx.types.ResRet.i32 %1025, 1
  %1028 = extractvalue %dx.types.ResRet.i32 %1025, 2
  %1029 = extractvalue %dx.types.ResRet.i32 %1025, 3
  %1030 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %1031 = extractvalue %dx.types.ResRet.i32 %1030, 0
  %1032 = extractvalue %dx.types.ResRet.i32 %1030, 1
  %1033 = extractvalue %dx.types.ResRet.i32 %1030, 2
  %1034 = extractvalue %dx.types.ResRet.i32 %1030, 3
  %1035 = and i32 %1031, 65535
  %1036 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1035)  ; LegacyF16ToF32(value)
  %1037 = lshr i32 %1031, 16
  %1038 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1037)  ; LegacyF16ToF32(value)
  %1039 = and i32 %1032, 65535
  %1040 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1039)  ; LegacyF16ToF32(value)
  %1041 = lshr i32 %1032, 16
  %1042 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1041)  ; LegacyF16ToF32(value)
  %1043 = and i32 %1033, 65535
  %1044 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1043)  ; LegacyF16ToF32(value)
  %1045 = lshr i32 %1033, 16
  %1046 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1045)  ; LegacyF16ToF32(value)
  %1047 = and i32 %1034, 65535
  %1048 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1047)  ; LegacyF16ToF32(value)
  %1049 = lshr i32 %1034, 16
  %1050 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1049)  ; LegacyF16ToF32(value)
  %1051 = and i32 %1026, 65535
  %1052 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1051)  ; LegacyF16ToF32(value)
  %1053 = lshr i32 %1026, 16
  %1054 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1053)  ; LegacyF16ToF32(value)
  %1055 = and i32 %1027, 65535
  %1056 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1055)  ; LegacyF16ToF32(value)
  %1057 = lshr i32 %1027, 16
  %1058 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1057)  ; LegacyF16ToF32(value)
  %1059 = and i32 %1028, 65535
  %1060 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1059)  ; LegacyF16ToF32(value)
  %1061 = lshr i32 %1028, 16
  %1062 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1061)  ; LegacyF16ToF32(value)
  %1063 = and i32 %1029, 65535
  %1064 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1063)  ; LegacyF16ToF32(value)
  %1065 = lshr i32 %1029, 16
  %1066 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1065)  ; LegacyF16ToF32(value)
  %1067 = and i32 %1021, 65535
  %1068 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1067)  ; LegacyF16ToF32(value)
  %1069 = lshr i32 %1021, 16
  %1070 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1069)  ; LegacyF16ToF32(value)
  %1071 = and i32 %1022, 65535
  %1072 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1071)  ; LegacyF16ToF32(value)
  %1073 = lshr i32 %1022, 16
  %1074 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1073)  ; LegacyF16ToF32(value)
  %1075 = and i32 %1023, 65535
  %1076 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1075)  ; LegacyF16ToF32(value)
  %1077 = lshr i32 %1023, 16
  %1078 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1077)  ; LegacyF16ToF32(value)
  %1079 = and i32 %1024, 65535
  %1080 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1079)  ; LegacyF16ToF32(value)
  %1081 = lshr i32 %1024, 16
  %1082 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1081)  ; LegacyF16ToF32(value)
  %1083 = and i32 %1018, 65535
  %1084 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1083)  ; LegacyF16ToF32(value)
  %1085 = lshr i32 %1018, 16
  %1086 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1085)  ; LegacyF16ToF32(value)
  %1087 = and i32 %1019, 65535
  %1088 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1087)  ; LegacyF16ToF32(value)
  br label %1089

; <label>:1089                                    ; preds = %1016, %987, %241
  %1090 = phi float [ %1088, %1016 ], [ %997, %987 ], [ 0.000000e+00, %241 ]
  %1091 = phi float [ %1086, %1016 ], [ %998, %987 ], [ 0.000000e+00, %241 ]
  %1092 = phi float [ %1084, %1016 ], [ %999, %987 ], [ 0.000000e+00, %241 ]
  %1093 = phi float [ %1082, %1016 ], [ %1000, %987 ], [ 0.000000e+00, %241 ]
  %1094 = phi float [ %1080, %1016 ], [ %1001, %987 ], [ 0.000000e+00, %241 ]
  %1095 = phi float [ %1078, %1016 ], [ %1002, %987 ], [ 0.000000e+00, %241 ]
  %1096 = phi float [ %1076, %1016 ], [ %1003, %987 ], [ 0.000000e+00, %241 ]
  %1097 = phi float [ %1074, %1016 ], [ %1004, %987 ], [ 0.000000e+00, %241 ]
  %1098 = phi float [ %1072, %1016 ], [ %1005, %987 ], [ 0.000000e+00, %241 ]
  %1099 = phi float [ %1070, %1016 ], [ %988, %987 ], [ 0.000000e+00, %241 ]
  %1100 = phi float [ %1068, %1016 ], [ %989, %987 ], [ 0.000000e+00, %241 ]
  %1101 = phi float [ %1066, %1016 ], [ %990, %987 ], [ 0.000000e+00, %241 ]
  %1102 = phi float [ %1064, %1016 ], [ %991, %987 ], [ 0.000000e+00, %241 ]
  %1103 = phi float [ %1062, %1016 ], [ %992, %987 ], [ 0.000000e+00, %241 ]
  %1104 = phi float [ %1060, %1016 ], [ %993, %987 ], [ 0.000000e+00, %241 ]
  %1105 = phi float [ %1058, %1016 ], [ %994, %987 ], [ 0.000000e+00, %241 ]
  %1106 = phi float [ %1056, %1016 ], [ %995, %987 ], [ 0.000000e+00, %241 ]
  %1107 = phi float [ %1054, %1016 ], [ %996, %987 ], [ 0.000000e+00, %241 ]
  %1108 = phi float [ %1052, %1016 ], [ %1006, %987 ], [ 0.000000e+00, %241 ]
  %1109 = phi float [ %1050, %1016 ], [ %1007, %987 ], [ 0.000000e+00, %241 ]
  %1110 = phi float [ %1048, %1016 ], [ %1008, %987 ], [ 0.000000e+00, %241 ]
  %1111 = phi float [ %1046, %1016 ], [ %1009, %987 ], [ 0.000000e+00, %241 ]
  %1112 = phi float [ %1044, %1016 ], [ %1010, %987 ], [ 0.000000e+00, %241 ]
  %1113 = phi float [ %1042, %1016 ], [ %1011, %987 ], [ 0.000000e+00, %241 ]
  %1114 = phi float [ %1040, %1016 ], [ %1012, %987 ], [ 0.000000e+00, %241 ]
  %1115 = phi float [ %1038, %1016 ], [ %1013, %987 ], [ 0.000000e+00, %241 ]
  %1116 = phi float [ %1036, %1016 ], [ %1014, %987 ], [ 0.000000e+00, %241 ]
  %1117 = fcmp fast olt float %242, 1.000000e+00
  br i1 %1117, label %1118, label %1778, !dx.controlflow.hints !68

; <label>:1118                                    ; preds = %1089
  %1119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1120 = extractvalue %dx.types.CBufRet.f32 %1119, 0
  %1121 = extractvalue %dx.types.CBufRet.f32 %1119, 1
  %1122 = fsub fast float %192, %1120
  %1123 = fsub fast float %197, %1121
  %1124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1125 = extractvalue %dx.types.CBufRet.f32 %1124, 0
  %1126 = extractvalue %dx.types.CBufRet.f32 %1124, 1
  %1127 = fmul fast float %1122, %1125
  %1128 = fmul fast float %1123, %1126
  %1129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1130 = extractvalue %dx.types.CBufRet.f32 %1129, 0
  %1131 = fmul fast float %1130, %1127
  %1132 = extractvalue %dx.types.CBufRet.f32 %1129, 1
  %1133 = fadd fast float %1131, %1132
  %1134 = extractvalue %dx.types.CBufRet.f32 %1129, 2
  %1135 = fmul fast float %1134, %1128
  %1136 = extractvalue %dx.types.CBufRet.f32 %1129, 3
  %1137 = fadd fast float %1135, %1136
  %1138 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %26, float %1133, float %1137, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1139 = extractvalue %dx.types.ResRet.f32 %1138, 0
  %1140 = extractvalue %dx.types.ResRet.f32 %1138, 1
  %1141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1142 = extractvalue %dx.types.CBufRet.f32 %1141, 1
  %1143 = extractvalue %dx.types.CBufRet.f32 %1141, 0
  %1144 = fsub fast float %1142, %1143
  %1145 = fmul fast float %1144, %1139
  %1146 = fadd fast float %1145, %1143
  %1147 = extractvalue %dx.types.CBufRet.f32 %1141, 3
  %1148 = extractvalue %dx.types.CBufRet.f32 %1141, 2
  %1149 = fsub fast float %1147, %1148
  %1150 = fmul fast float %1149, %1140
  %1151 = fadd fast float %1150, %1148
  %1152 = fsub fast float %202, %1146
  %1153 = fsub fast float %1151, %1146
  %1154 = fdiv fast float %1152, %1153
  %1155 = call float @dx.op.unary.f32(i32 7, float %1154)  ; Saturate(value)
  %1156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %1157 = extractvalue %dx.types.CBufRet.f32 %1156, 0
  %1158 = fmul fast float %1157, %1155
  %1159 = extractvalue %dx.types.CBufRet.f32 %1156, 1
  %1160 = fadd fast float %1158, %1159
  %1161 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %26, float %1133, float %1137, float %1160, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1162 = extractvalue %dx.types.ResRet.f32 %1161, 0
  %1163 = extractvalue %dx.types.ResRet.f32 %1161, 1
  %1164 = extractvalue %dx.types.ResRet.f32 %1161, 2
  %1165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %1166 = extractvalue %dx.types.CBufRet.f32 %1165, 0
  %1167 = extractvalue %dx.types.CBufRet.f32 %1165, 1
  %1168 = extractvalue %dx.types.CBufRet.f32 %1165, 2
  %1169 = fmul fast float %1166, %1162
  %1170 = fmul fast float %1167, %1163
  %1171 = fmul fast float %1168, %1164
  %1172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %1173 = extractvalue %dx.types.CBufRet.f32 %1172, 0
  %1174 = extractvalue %dx.types.CBufRet.f32 %1172, 1
  %1175 = extractvalue %dx.types.CBufRet.f32 %1172, 2
  %1176 = fadd fast float %1169, %1173
  %1177 = fadd fast float %1170, %1174
  %1178 = fadd fast float %1171, %1175
  %1179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %1180 = extractvalue %dx.types.CBufRet.f32 %1179, 0
  %1181 = fmul fast float %1180, %1127
  %1182 = extractvalue %dx.types.CBufRet.f32 %1179, 1
  %1183 = fadd fast float %1181, %1182
  %1184 = extractvalue %dx.types.CBufRet.f32 %1179, 2
  %1185 = fmul fast float %1184, %1128
  %1186 = extractvalue %dx.types.CBufRet.f32 %1179, 3
  %1187 = fadd fast float %1185, %1186
  %1188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %1189 = extractvalue %dx.types.CBufRet.f32 %1188, 0
  %1190 = extractvalue %dx.types.CBufRet.f32 %1188, 1
  %1191 = extractvalue %dx.types.CBufRet.f32 %1188, 2
  %1192 = extractvalue %dx.types.CBufRet.f32 %1188, 3
  %1193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %1194 = extractvalue %dx.types.CBufRet.f32 %1193, 0
  %1195 = extractvalue %dx.types.CBufRet.f32 %1193, 1
  %1196 = extractvalue %dx.types.CBufRet.f32 %1193, 2
  %1197 = extractvalue %dx.types.CBufRet.f32 %1193, 3
  %1198 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %26, float %1183, float %1187, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1199 = extractvalue %dx.types.ResRet.f32 %1198, 0
  %1200 = extractvalue %dx.types.ResRet.f32 %1198, 1
  %1201 = extractvalue %dx.types.ResRet.f32 %1198, 2
  %1202 = extractvalue %dx.types.ResRet.f32 %1198, 3
  %1203 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %26, float %1183, float %1187, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1204 = extractvalue %dx.types.ResRet.f32 %1203, 0
  %1205 = extractvalue %dx.types.ResRet.f32 %1203, 1
  %1206 = extractvalue %dx.types.ResRet.f32 %1203, 2
  %1207 = extractvalue %dx.types.ResRet.f32 %1203, 3
  %1208 = fmul fast float %1199, %1176
  %1209 = fmul fast float %1204, %1176
  %1210 = fmul fast float %1206, %1176
  %1211 = fmul fast float %1202, %1176
  %1212 = fadd fast float %1208, %1189
  %1213 = fadd fast float %1209, %1190
  %1214 = fadd fast float %1210, %1191
  %1215 = fadd fast float %1211, %1192
  %1216 = fmul fast float %1200, %1176
  %1217 = fmul fast float %1205, %1176
  %1218 = fadd fast float %1216, %1194
  %1219 = fadd fast float %1217, %1195
  %1220 = fmul fast float %1201, %1176
  %1221 = fmul fast float %1207, %1176
  %1222 = fadd fast float %1220, %1196
  %1223 = fadd fast float %1221, %1197
  %1224 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %26, float %1183, float %1187, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1225 = extractvalue %dx.types.ResRet.f32 %1224, 0
  %1226 = extractvalue %dx.types.ResRet.f32 %1224, 1
  %1227 = extractvalue %dx.types.ResRet.f32 %1224, 2
  %1228 = extractvalue %dx.types.ResRet.f32 %1224, 3
  %1229 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %26, float %1183, float %1187, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1230 = extractvalue %dx.types.ResRet.f32 %1229, 0
  %1231 = extractvalue %dx.types.ResRet.f32 %1229, 1
  %1232 = extractvalue %dx.types.ResRet.f32 %1229, 2
  %1233 = extractvalue %dx.types.ResRet.f32 %1229, 3
  %1234 = fmul fast float %1225, %1177
  %1235 = fmul fast float %1230, %1177
  %1236 = fmul fast float %1232, %1177
  %1237 = fmul fast float %1228, %1177
  %1238 = fadd fast float %1212, %1234
  %1239 = fadd fast float %1213, %1235
  %1240 = fadd fast float %1214, %1236
  %1241 = fadd fast float %1215, %1237
  %1242 = fmul fast float %1226, %1177
  %1243 = fmul fast float %1231, %1177
  %1244 = fadd fast float %1218, %1242
  %1245 = fadd fast float %1219, %1243
  %1246 = fmul fast float %1227, %1177
  %1247 = fmul fast float %1233, %1177
  %1248 = fadd fast float %1222, %1246
  %1249 = fadd fast float %1223, %1247
  %1250 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %26, float %1183, float %1187, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1251 = extractvalue %dx.types.ResRet.f32 %1250, 0
  %1252 = extractvalue %dx.types.ResRet.f32 %1250, 1
  %1253 = extractvalue %dx.types.ResRet.f32 %1250, 2
  %1254 = extractvalue %dx.types.ResRet.f32 %1250, 3
  %1255 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %26, float %1183, float %1187, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1256 = extractvalue %dx.types.ResRet.f32 %1255, 0
  %1257 = extractvalue %dx.types.ResRet.f32 %1255, 1
  %1258 = extractvalue %dx.types.ResRet.f32 %1255, 2
  %1259 = extractvalue %dx.types.ResRet.f32 %1255, 3
  %1260 = fmul fast float %1251, %1178
  %1261 = fmul fast float %1256, %1178
  %1262 = fmul fast float %1258, %1178
  %1263 = fmul fast float %1254, %1178
  %1264 = fadd fast float %1238, %1260
  %1265 = fadd fast float %1239, %1261
  %1266 = fadd fast float %1240, %1262
  %1267 = fadd fast float %1241, %1263
  %1268 = fmul fast float %1252, %1178
  %1269 = fmul fast float %1257, %1178
  %1270 = fadd fast float %1244, %1268
  %1271 = fadd fast float %1245, %1269
  %1272 = fmul fast float %1253, %1178
  %1273 = fmul fast float %1259, %1178
  %1274 = fadd fast float %1248, %1272
  %1275 = fadd fast float %1249, %1273
  %1276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %1277 = extractvalue %dx.types.CBufRet.f32 %1276, 0
  %1278 = fsub fast float %192, %1277
  %1279 = fsub fast float %1120, %192
  %1280 = call float @dx.op.binary.f32(i32 35, float %1279, float %1278)  ; FMax(a,b)
  %1281 = extractvalue %dx.types.CBufRet.f32 %1276, 1
  %1282 = fsub fast float %197, %1281
  %1283 = fsub fast float %1121, %197
  %1284 = call float @dx.op.binary.f32(i32 35, float %1283, float %1282)  ; FMax(a,b)
  %1285 = call float @dx.op.binary.f32(i32 35, float %1280, float %1284)  ; FMax(a,b)
  %1286 = extractvalue %dx.types.CBufRet.f32 %1124, 3
  %1287 = fmul fast float %1286, %1285
  %1288 = call float @dx.op.unary.f32(i32 7, float %1287)  ; Saturate(value)
  %1289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %1290 = extractvalue %dx.types.CBufRet.f32 %1289, 0
  %1291 = extractvalue %dx.types.CBufRet.f32 %1289, 1
  %1292 = extractvalue %dx.types.CBufRet.f32 %1289, 2
  %1293 = extractvalue %dx.types.CBufRet.f32 %1289, 3
  %1294 = fsub fast float %1290, %1264
  %1295 = fsub fast float %1291, %1265
  %1296 = fsub fast float %1292, %1266
  %1297 = fsub fast float %1293, %1267
  %1298 = fmul fast float %1294, %1288
  %1299 = fmul fast float %1295, %1288
  %1300 = fmul fast float %1296, %1288
  %1301 = fmul fast float %1297, %1288
  %1302 = fadd fast float %1298, %1264
  %1303 = fadd fast float %1299, %1265
  %1304 = fadd fast float %1300, %1266
  %1305 = fadd fast float %1301, %1267
  %1306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %1307 = extractvalue %dx.types.CBufRet.f32 %1306, 0
  %1308 = extractvalue %dx.types.CBufRet.f32 %1306, 1
  %1309 = fsub fast float %1307, %1270
  %1310 = fsub fast float %1308, %1271
  %1311 = fmul fast float %1309, %1288
  %1312 = fmul fast float %1310, %1288
  %1313 = fadd fast float %1311, %1270
  %1314 = fadd fast float %1312, %1271
  %1315 = extractvalue %dx.types.CBufRet.f32 %1306, 2
  %1316 = extractvalue %dx.types.CBufRet.f32 %1306, 3
  %1317 = fsub fast float %1315, %1274
  %1318 = fsub fast float %1316, %1275
  %1319 = fmul fast float %1317, %1288
  %1320 = fmul fast float %1318, %1288
  %1321 = fadd fast float %1319, %1274
  %1322 = fadd fast float %1320, %1275
  %1323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %1324 = extractvalue %dx.types.CBufRet.f32 %1323, 0
  %1325 = fmul fast float %1324, %1302
  %1326 = fmul fast float %1324, %1303
  %1327 = fmul fast float %1324, %1304
  %1328 = fmul fast float %1324, %1305
  %1329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %1330 = extractvalue %dx.types.CBufRet.f32 %1329, 0
  %1331 = fmul fast float %1330, %1313
  %1332 = fmul fast float %1330, %1314
  %1333 = fadd fast float %1331, %1325
  %1334 = fadd fast float %1332, %1327
  %1335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %1336 = extractvalue %dx.types.CBufRet.f32 %1335, 0
  %1337 = fmul fast float %1336, %1321
  %1338 = fmul fast float %1336, %1322
  %1339 = fadd fast float %1333, %1337
  %1340 = fadd fast float %1334, %1338
  %1341 = extractvalue %dx.types.CBufRet.f32 %1323, 1
  %1342 = fmul fast float %1341, %1302
  %1343 = fmul fast float %1341, %1303
  %1344 = fmul fast float %1341, %1304
  %1345 = fmul fast float %1341, %1305
  %1346 = extractvalue %dx.types.CBufRet.f32 %1329, 1
  %1347 = fmul fast float %1346, %1313
  %1348 = fmul fast float %1346, %1314
  %1349 = fadd fast float %1347, %1342
  %1350 = fadd fast float %1348, %1344
  %1351 = extractvalue %dx.types.CBufRet.f32 %1335, 1
  %1352 = fmul fast float %1351, %1321
  %1353 = fmul fast float %1351, %1322
  %1354 = fadd fast float %1349, %1352
  %1355 = fadd fast float %1350, %1353
  %1356 = extractvalue %dx.types.CBufRet.f32 %1323, 2
  %1357 = fmul fast float %1356, %1302
  %1358 = fmul fast float %1356, %1303
  %1359 = fmul fast float %1356, %1304
  %1360 = fmul fast float %1356, %1305
  %1361 = extractvalue %dx.types.CBufRet.f32 %1329, 2
  %1362 = fmul fast float %1361, %1313
  %1363 = fmul fast float %1361, %1314
  %1364 = fadd fast float %1362, %1357
  %1365 = fadd fast float %1363, %1359
  %1366 = extractvalue %dx.types.CBufRet.f32 %1335, 2
  %1367 = fmul fast float %1366, %1321
  %1368 = fmul fast float %1366, %1322
  %1369 = fadd fast float %1364, %1367
  %1370 = fadd fast float %1365, %1368
  %1371 = fmul fast float %1358, %1358
  %1372 = fmul fast float %1370, %1370
  %1373 = fmul fast float %1360, %1360
  %1374 = fadd fast float %1373, %1371
  %1375 = fadd fast float %1374, %1372
  %1376 = call float @dx.op.unary.f32(i32 24, float %1375)  ; Sqrt(value)
  %1377 = fcmp fast ugt float %1376, 0.000000e+00
  br i1 %1377, label %1378, label %1393, !dx.controlflow.hints !69

; <label>:1378                                    ; preds = %1118
  %1379 = fsub fast float -0.000000e+00, %1360
  %1380 = fdiv fast float %1379, %1376
  %1381 = fsub fast float -0.000000e+00, %1358
  %1382 = fdiv fast float %1381, %1376
  %1383 = fdiv fast float %1370, %1376
  %1384 = fmul fast float %1369, 0x3FE279A760000000
  %1385 = fmul fast float %1382, %1358
  %1386 = fmul fast float %1383, %1370
  %1387 = fmul fast float %1380, %1360
  %1388 = fadd fast float %1385, %1387
  %1389 = fsub fast float %1388, %1386
  %1390 = call float @dx.op.unary.f32(i32 6, float %1389)  ; FAbs(value)
  %1391 = fadd fast float %1390, 0x3DDB7CDFE0000000
  %1392 = fdiv fast float %1384, %1391
  br label %1393

; <label>:1393                                    ; preds = %1378, %1118
  %1394 = phi float [ %1392, %1378 ], [ 1.000000e+00, %1118 ]
  %1395 = fmul fast float %1343, %1343
  %1396 = fmul fast float %1355, %1355
  %1397 = fmul fast float %1345, %1345
  %1398 = fadd fast float %1397, %1395
  %1399 = fadd fast float %1398, %1396
  %1400 = call float @dx.op.unary.f32(i32 24, float %1399)  ; Sqrt(value)
  %1401 = fcmp fast ugt float %1400, 0.000000e+00
  br i1 %1401, label %1402, label %1417, !dx.controlflow.hints !69

; <label>:1402                                    ; preds = %1393
  %1403 = fsub fast float -0.000000e+00, %1345
  %1404 = fdiv fast float %1403, %1400
  %1405 = fsub fast float -0.000000e+00, %1343
  %1406 = fdiv fast float %1405, %1400
  %1407 = fdiv fast float %1355, %1400
  %1408 = fmul fast float %1354, 0x3FE279A760000000
  %1409 = fmul fast float %1406, %1343
  %1410 = fmul fast float %1407, %1355
  %1411 = fmul fast float %1404, %1345
  %1412 = fadd fast float %1409, %1411
  %1413 = fsub fast float %1412, %1410
  %1414 = call float @dx.op.unary.f32(i32 6, float %1413)  ; FAbs(value)
  %1415 = fadd fast float %1414, 0x3DDB7CDFE0000000
  %1416 = fdiv fast float %1408, %1415
  br label %1417

; <label>:1417                                    ; preds = %1402, %1393
  %1418 = phi float [ %1416, %1402 ], [ 1.000000e+00, %1393 ]
  %1419 = call float @dx.op.binary.f32(i32 36, float %1418, float %1394)  ; FMin(a,b)
  %1420 = fmul fast float %1326, %1326
  %1421 = fmul fast float %1340, %1340
  %1422 = fmul fast float %1328, %1328
  %1423 = fadd fast float %1422, %1420
  %1424 = fadd fast float %1423, %1421
  %1425 = call float @dx.op.unary.f32(i32 24, float %1424)  ; Sqrt(value)
  %1426 = fcmp fast ugt float %1425, 0.000000e+00
  br i1 %1426, label %1427, label %1442, !dx.controlflow.hints !69

; <label>:1427                                    ; preds = %1417
  %1428 = fsub fast float -0.000000e+00, %1328
  %1429 = fdiv fast float %1428, %1425
  %1430 = fsub fast float -0.000000e+00, %1326
  %1431 = fdiv fast float %1430, %1425
  %1432 = fdiv fast float %1340, %1425
  %1433 = fmul fast float %1339, 0x3FE279A760000000
  %1434 = fmul fast float %1431, %1326
  %1435 = fmul fast float %1432, %1340
  %1436 = fmul fast float %1429, %1328
  %1437 = fadd fast float %1434, %1436
  %1438 = fsub fast float %1437, %1435
  %1439 = call float @dx.op.unary.f32(i32 6, float %1438)  ; FAbs(value)
  %1440 = fadd fast float %1439, 0x3DDB7CDFE0000000
  %1441 = fdiv fast float %1433, %1440
  br label %1442

; <label>:1442                                    ; preds = %1427, %1417
  %1443 = phi float [ %1441, %1427 ], [ 1.000000e+00, %1417 ]
  %1444 = call float @dx.op.binary.f32(i32 36, float %1443, float %1419)  ; FMin(a,b)
  %1445 = call float @dx.op.unary.f32(i32 7, float %1444)  ; Saturate(value)
  %1446 = fcmp fast olt float %1445, 1.000000e+00
  br i1 %1446, label %1447, label %1457, !dx.controlflow.hints !70

; <label>:1447                                    ; preds = %1442
  %1448 = fmul fast float %1445, %1326
  %1449 = fmul fast float %1445, %1340
  %1450 = fmul fast float %1445, %1328
  %1451 = fmul fast float %1445, %1343
  %1452 = fmul fast float %1445, %1355
  %1453 = fmul fast float %1445, %1345
  %1454 = fmul fast float %1445, %1358
  %1455 = fmul fast float %1445, %1370
  %1456 = fmul fast float %1445, %1360
  br label %1457

; <label>:1457                                    ; preds = %1447, %1442
  %1458 = phi float [ %1454, %1447 ], [ %1358, %1442 ]
  %1459 = phi float [ %1455, %1447 ], [ %1370, %1442 ]
  %1460 = phi float [ %1456, %1447 ], [ %1360, %1442 ]
  %1461 = phi float [ %1451, %1447 ], [ %1343, %1442 ]
  %1462 = phi float [ %1452, %1447 ], [ %1355, %1442 ]
  %1463 = phi float [ %1453, %1447 ], [ %1345, %1442 ]
  %1464 = phi float [ %1448, %1447 ], [ %1326, %1442 ]
  %1465 = phi float [ %1449, %1447 ], [ %1340, %1442 ]
  %1466 = phi float [ %1450, %1447 ], [ %1328, %1442 ]
  %1467 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1339)  ; FMax(a,b)
  %1468 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1354)  ; FMax(a,b)
  %1469 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1369)  ; FMax(a,b)
  %1470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %1471 = extractvalue %dx.types.CBufRet.f32 %1470, 0
  %1472 = fcmp fast ogt float %1471, 0.000000e+00
  %1473 = fcmp fast oge float %1127, 0.000000e+00
  %1474 = and i1 %1473, %1472
  %1475 = fcmp fast ole float %1127, 1.000000e+00
  %1476 = and i1 %1475, %1474
  %1477 = fcmp fast oge float %1128, 0.000000e+00
  %1478 = and i1 %1477, %1476
  %1479 = fcmp fast ole float %1128, 1.000000e+00
  %1480 = and i1 %1479, %1478
  br i1 %1480, label %1481, label %1626, !dx.controlflow.hints !71

; <label>:1481                                    ; preds = %1457
  %1482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1483 = extractvalue %dx.types.CBufRet.f32 %1482, 2
  %1484 = extractvalue %dx.types.CBufRet.f32 %1482, 3
  %1485 = fmul fast float %1483, %1127
  %1486 = fmul fast float %1484, %1128
  %1487 = call float @dx.op.unary.f32(i32 27, float %1485)  ; Round_ni(value)
  %1488 = call float @dx.op.unary.f32(i32 27, float %1486)  ; Round_ni(value)
  %1489 = fptosi float %1487 to i32
  %1490 = fptosi float %1488 to i32
  %1491 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %20, i32 0, i32 %1489, i32 %1490, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1492 = extractvalue %dx.types.ResRet.i32 %1491, 0
  %1493 = and i32 %1492, 65535
  %1494 = lshr i32 %1492, 16
  %1495 = icmp eq i32 %1493, 65535
  br i1 %1495, label %1532, label %1496, !dx.controlflow.hints !72

; <label>:1496                                    ; preds = %1481
  %1497 = extractvalue %dx.types.CBufRet.f32 %1470, 1
  %1498 = extractvalue %dx.types.CBufRet.f32 %1482, 0
  %1499 = extractvalue %dx.types.CBufRet.f32 %1482, 1
  %1500 = fmul fast float %1498, %1127
  %1501 = fmul fast float %1499, %1128
  %1502 = fmul fast float %1500, 1.250000e-01
  %1503 = fmul fast float %1501, 1.250000e-01
  %1504 = call float @dx.op.unary.f32(i32 27, float %1502)  ; Round_ni(value)
  %1505 = call float @dx.op.unary.f32(i32 27, float %1503)  ; Round_ni(value)
  %1506 = fmul fast float %1504, 8.000000e+00
  %1507 = fmul fast float %1505, 8.000000e+00
  %1508 = and i32 %1492, 255
  %1509 = lshr i32 %1492, 8
  %1510 = and i32 %1509, 255
  %1511 = mul nuw nsw i32 %1508, 9
  %1512 = uitofp i32 %1511 to float
  %1513 = mul nuw nsw i32 %1510, 9
  %1514 = uitofp i32 %1513 to float
  %1515 = fadd fast float %1512, 5.000000e-01
  %1516 = fadd fast float %1515, %1500
  %1517 = fsub fast float %1516, %1506
  %1518 = fadd fast float %1514, 5.000000e-01
  %1519 = fadd fast float %1518, %1501
  %1520 = fsub fast float %1519, %1507
  %1521 = fdiv fast float %1517, %1471
  %1522 = fdiv fast float %1520, %1497
  %1523 = fmul fast float %1155, 4.375000e-01
  %1524 = fadd fast float %1523, 3.125000e-02
  %1525 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %26, float %1521, float %1522, float %1524, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1526 = extractvalue %dx.types.ResRet.f32 %1525, 0
  %1527 = extractvalue %dx.types.ResRet.f32 %1525, 1
  %1528 = extractvalue %dx.types.ResRet.f32 %1525, 2
  %1529 = fadd fast float %1526, %1467
  %1530 = fadd fast float %1527, %1468
  %1531 = fadd fast float %1528, %1469
  br label %1532

; <label>:1532                                    ; preds = %1496, %1481
  %1533 = phi float [ %1531, %1496 ], [ %1469, %1481 ]
  %1534 = phi float [ %1530, %1496 ], [ %1468, %1481 ]
  %1535 = phi float [ %1529, %1496 ], [ %1467, %1481 ]
  %1536 = icmp eq i32 %1494, 65535
  br i1 %1536, label %1626, label %1537, !dx.controlflow.hints !73

; <label>:1537                                    ; preds = %1532
  %1538 = extractvalue %dx.types.CBufRet.f32 %1470, 1
  %1539 = extractvalue %dx.types.CBufRet.f32 %1482, 0
  %1540 = extractvalue %dx.types.CBufRet.f32 %1482, 1
  %1541 = fmul fast float %1539, %1127
  %1542 = fmul fast float %1540, %1128
  %1543 = fmul fast float %1541, 1.250000e-01
  %1544 = fmul fast float %1542, 1.250000e-01
  %1545 = call float @dx.op.unary.f32(i32 27, float %1543)  ; Round_ni(value)
  %1546 = call float @dx.op.unary.f32(i32 27, float %1544)  ; Round_ni(value)
  %1547 = fmul fast float %1545, 8.000000e+00
  %1548 = fmul fast float %1546, 8.000000e+00
  %1549 = fsub fast float %1541, %1547
  %1550 = fsub fast float %1542, %1548
  %1551 = fadd fast float %1549, 5.000000e-01
  %1552 = fadd fast float %1550, 5.000000e-01
  %1553 = and i32 %1494, 255
  %1554 = lshr i32 %1492, 24
  %1555 = mul nuw nsw i32 %1553, 9
  %1556 = uitofp i32 %1555 to float
  %1557 = mul nuw nsw i32 %1554, 9
  %1558 = uitofp i32 %1557 to float
  %1559 = fadd fast float %1551, %1556
  %1560 = fadd fast float %1552, %1558
  %1561 = fdiv fast float %1559, %1471
  %1562 = fdiv fast float %1560, %1538
  %1563 = fmul fast float %1155, 4.375000e-01
  %1564 = fadd fast float %1563, 3.125000e-02
  %1565 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %26, float %1561, float %1562, float %1564, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1566 = extractvalue %dx.types.ResRet.f32 %1565, 0
  %1567 = extractvalue %dx.types.ResRet.f32 %1565, 1
  %1568 = extractvalue %dx.types.ResRet.f32 %1565, 2
  %1569 = fadd fast float %1563, 5.312500e-01
  %1570 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %26, float %1561, float %1562, float %1569, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1571 = extractvalue %dx.types.ResRet.f32 %1570, 0
  %1572 = extractvalue %dx.types.ResRet.f32 %1570, 1
  %1573 = extractvalue %dx.types.ResRet.f32 %1570, 2
  %1574 = fmul fast float %1571, 2.000000e+00
  %1575 = fmul fast float %1572, 2.000000e+00
  %1576 = fmul fast float %1573, 2.000000e+00
  %1577 = fadd fast float %1574, -1.000000e+00
  %1578 = fadd fast float %1575, -1.000000e+00
  %1579 = fadd fast float %1576, -1.000000e+00
  %1580 = fmul fast float %1577, %1577
  %1581 = fmul fast float %1578, %1578
  %1582 = fadd fast float %1580, %1581
  %1583 = fmul fast float %1579, %1579
  %1584 = fadd fast float %1582, %1583
  %1585 = call float @dx.op.unary.f32(i32 24, float %1584)  ; Sqrt(value)
  %1586 = fcmp fast ogt float %1585, 0.000000e+00
  br i1 %1586, label %1587, label %1591, !dx.controlflow.hints !74

; <label>:1587                                    ; preds = %1537
  %1588 = fdiv fast float %1577, %1585
  %1589 = fdiv fast float %1578, %1585
  %1590 = fdiv fast float %1579, %1585
  br label %1591

; <label>:1591                                    ; preds = %1587, %1537
  %1592 = phi float [ %1588, %1587 ], [ 0.000000e+00, %1537 ]
  %1593 = phi float [ %1589, %1587 ], [ 0.000000e+00, %1537 ]
  %1594 = phi float [ %1590, %1587 ], [ 0.000000e+00, %1537 ]
  %1595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1596 = extractvalue %dx.types.CBufRet.f32 %1595, 0
  %1597 = extractvalue %dx.types.CBufRet.f32 %1595, 1
  %1598 = fsub fast float %192, %1596
  %1599 = fsub fast float %197, %1597
  %1600 = fmul fast float %1598, %1598
  %1601 = fmul fast float %1599, %1599
  %1602 = fadd fast float %1600, %1601
  %1603 = call float @dx.op.unary.f32(i32 24, float %1602)  ; Sqrt(value)
  %1604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1605 = extractvalue %dx.types.CBufRet.f32 %1604, 0
  %1606 = extractvalue %dx.types.CBufRet.f32 %1604, 1
  %1607 = fsub fast float %1603, %1605
  %1608 = fdiv fast float %1607, %1606
  %1609 = call float @dx.op.unary.f32(i32 7, float %1608)  ; Saturate(value)
  %1610 = fmul fast float %1609, 2.000000e+00
  %1611 = fsub fast float 3.000000e+00, %1610
  %1612 = fmul fast float %1609, %1609
  %1613 = fmul fast float %1612, %1611
  %1614 = call float @dx.op.dot3.f32(i32 55, float %1592, float %1593, float %1594, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1615 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1614)  ; FMax(a,b)
  %1616 = fmul fast float %1615, 0x400C5BF8A0000000
  %1617 = fmul fast float %1613, %1566
  %1618 = fmul fast float %1617, %1616
  %1619 = fadd fast float %1618, %1535
  %1620 = fmul fast float %1613, %1567
  %1621 = fmul fast float %1620, %1616
  %1622 = fadd fast float %1621, %1534
  %1623 = fmul fast float %1613, %1568
  %1624 = fmul fast float %1623, %1616
  %1625 = fadd fast float %1624, %1533
  br label %1626

; <label>:1626                                    ; preds = %1591, %1532, %1457
  %1627 = phi float [ %1625, %1591 ], [ %1533, %1532 ], [ %1469, %1457 ]
  %1628 = phi float [ %1622, %1591 ], [ %1534, %1532 ], [ %1468, %1457 ]
  %1629 = phi float [ %1619, %1591 ], [ %1535, %1532 ], [ %1467, %1457 ]
  %1630 = fcmp fast ogt float %202, %1151
  %1631 = and i1 %1473, %1630
  %1632 = and i1 %1475, %1631
  %1633 = and i1 %1477, %1632
  %1634 = and i1 %1479, %1633
  br i1 %1634, label %1635, label %1692, !dx.controlflow.hints !75

; <label>:1635                                    ; preds = %1626
  %1636 = fmul fast float %1153, 0x3FC24924A0000000
  %1637 = fsub fast float %202, %1151
  %1638 = fdiv fast float %1637, %1636
  %1639 = call float @dx.op.unary.f32(i32 7, float %1638)  ; Saturate(value)
  %1640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %1641 = extractvalue %dx.types.CBufRet.f32 %1640, 0
  %1642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %1643 = extractvalue %dx.types.CBufRet.f32 %1642, 0
  %1644 = extractvalue %dx.types.CBufRet.f32 %1642, 1
  %1645 = extractvalue %dx.types.CBufRet.f32 %1642, 2
  %1646 = fsub fast float %1641, %1629
  %1647 = fsub fast float %1643, %1464
  %1648 = fsub fast float %1644, %1465
  %1649 = fsub fast float %1645, %1466
  %1650 = fmul fast float %1646, %1639
  %1651 = fmul fast float %1647, %1639
  %1652 = fmul fast float %1648, %1639
  %1653 = fmul fast float %1649, %1639
  %1654 = fadd fast float %1650, %1629
  %1655 = fadd fast float %1651, %1464
  %1656 = fadd fast float %1652, %1465
  %1657 = fadd fast float %1653, %1466
  %1658 = extractvalue %dx.types.CBufRet.f32 %1640, 1
  %1659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %1660 = extractvalue %dx.types.CBufRet.f32 %1659, 0
  %1661 = extractvalue %dx.types.CBufRet.f32 %1659, 1
  %1662 = extractvalue %dx.types.CBufRet.f32 %1659, 2
  %1663 = fsub fast float %1658, %1628
  %1664 = fsub fast float %1660, %1461
  %1665 = fsub fast float %1661, %1462
  %1666 = fsub fast float %1662, %1463
  %1667 = fmul fast float %1663, %1639
  %1668 = fmul fast float %1664, %1639
  %1669 = fmul fast float %1665, %1639
  %1670 = fmul fast float %1666, %1639
  %1671 = fadd fast float %1667, %1628
  %1672 = fadd fast float %1668, %1461
  %1673 = fadd fast float %1669, %1462
  %1674 = fadd fast float %1670, %1463
  %1675 = extractvalue %dx.types.CBufRet.f32 %1640, 2
  %1676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %1677 = extractvalue %dx.types.CBufRet.f32 %1676, 0
  %1678 = extractvalue %dx.types.CBufRet.f32 %1676, 1
  %1679 = extractvalue %dx.types.CBufRet.f32 %1676, 2
  %1680 = fsub fast float %1675, %1627
  %1681 = fsub fast float %1677, %1458
  %1682 = fsub fast float %1678, %1459
  %1683 = fsub fast float %1679, %1460
  %1684 = fmul fast float %1680, %1639
  %1685 = fmul fast float %1681, %1639
  %1686 = fmul fast float %1682, %1639
  %1687 = fmul fast float %1683, %1639
  %1688 = fadd fast float %1684, %1627
  %1689 = fadd fast float %1685, %1458
  %1690 = fadd fast float %1686, %1459
  %1691 = fadd fast float %1687, %1460
  br label %1692

; <label>:1692                                    ; preds = %1635, %1626
  %1693 = phi float [ %1688, %1635 ], [ %1627, %1626 ]
  %1694 = phi float [ %1689, %1635 ], [ %1458, %1626 ]
  %1695 = phi float [ %1690, %1635 ], [ %1459, %1626 ]
  %1696 = phi float [ %1691, %1635 ], [ %1460, %1626 ]
  %1697 = phi float [ %1671, %1635 ], [ %1628, %1626 ]
  %1698 = phi float [ %1672, %1635 ], [ %1461, %1626 ]
  %1699 = phi float [ %1673, %1635 ], [ %1462, %1626 ]
  %1700 = phi float [ %1674, %1635 ], [ %1463, %1626 ]
  %1701 = phi float [ %1654, %1635 ], [ %1629, %1626 ]
  %1702 = phi float [ %1655, %1635 ], [ %1464, %1626 ]
  %1703 = phi float [ %1656, %1635 ], [ %1465, %1626 ]
  %1704 = phi float [ %1657, %1635 ], [ %1466, %1626 ]
  %1705 = extractvalue %dx.types.CBufRet.f32 %1276, 3
  %1706 = fmul fast float %1705, %1701
  %1707 = fmul fast float %1705, %1697
  %1708 = fmul fast float %1705, %1693
  %1709 = fmul fast float %1702, 1.500000e+00
  %1710 = fmul fast float %1709, %1705
  %1711 = fmul fast float %1703, 1.500000e+00
  %1712 = fmul fast float %1711, %1705
  %1713 = fmul fast float %1704, 1.500000e+00
  %1714 = fmul fast float %1713, %1705
  %1715 = fmul fast float %1698, 1.500000e+00
  %1716 = fmul fast float %1715, %1705
  %1717 = fmul fast float %1699, 1.500000e+00
  %1718 = fmul fast float %1717, %1705
  %1719 = fmul fast float %1700, 1.500000e+00
  %1720 = fmul fast float %1719, %1705
  %1721 = fmul fast float %1694, 1.500000e+00
  %1722 = fmul fast float %1721, %1705
  %1723 = fmul fast float %1695, 1.500000e+00
  %1724 = fmul fast float %1723, %1705
  %1725 = fmul fast float %1696, 1.500000e+00
  %1726 = fmul fast float %1725, %1705
  %1727 = fsub fast float %1116, %1706
  %1728 = fmul fast float %1727, %242
  %1729 = fadd fast float %1728, %1706
  %1730 = fsub fast float %1115, %1710
  %1731 = fmul fast float %1730, %242
  %1732 = fadd fast float %1731, %1710
  %1733 = fsub fast float %1114, %1712
  %1734 = fmul fast float %1733, %242
  %1735 = fadd fast float %1734, %1712
  %1736 = fsub fast float %1113, %1714
  %1737 = fmul fast float %1736, %242
  %1738 = fadd fast float %1737, %1714
  %1739 = fmul fast float %1112, %242
  %1740 = fmul fast float %1111, %242
  %1741 = fmul fast float %1110, %242
  %1742 = fmul fast float %1109, %242
  %1743 = fmul fast float %1108, %242
  %1744 = fsub fast float %1107, %1707
  %1745 = fmul fast float %1744, %242
  %1746 = fadd fast float %1745, %1707
  %1747 = fsub fast float %1106, %1716
  %1748 = fmul fast float %1747, %242
  %1749 = fadd fast float %1748, %1716
  %1750 = fsub fast float %1105, %1718
  %1751 = fmul fast float %1750, %242
  %1752 = fadd fast float %1751, %1718
  %1753 = fsub fast float %1104, %1720
  %1754 = fmul fast float %1753, %242
  %1755 = fadd fast float %1754, %1720
  %1756 = fmul fast float %1103, %242
  %1757 = fmul fast float %1102, %242
  %1758 = fmul fast float %1101, %242
  %1759 = fmul fast float %1100, %242
  %1760 = fmul fast float %1099, %242
  %1761 = fsub fast float %1098, %1708
  %1762 = fmul fast float %1761, %242
  %1763 = fadd fast float %1762, %1708
  %1764 = fsub fast float %1097, %1722
  %1765 = fmul fast float %1764, %242
  %1766 = fadd fast float %1765, %1722
  %1767 = fsub fast float %1096, %1724
  %1768 = fmul fast float %1767, %242
  %1769 = fadd fast float %1768, %1724
  %1770 = fsub fast float %1095, %1726
  %1771 = fmul fast float %1770, %242
  %1772 = fadd fast float %1771, %1726
  %1773 = fmul fast float %1094, %242
  %1774 = fmul fast float %1093, %242
  %1775 = fmul fast float %1092, %242
  %1776 = fmul fast float %1091, %242
  %1777 = fmul fast float %1090, %242
  br label %1778

; <label>:1778                                    ; preds = %1692, %1089
  %1779 = phi float [ %1090, %1089 ], [ %1777, %1692 ]
  %1780 = phi float [ %1091, %1089 ], [ %1776, %1692 ]
  %1781 = phi float [ %1092, %1089 ], [ %1775, %1692 ]
  %1782 = phi float [ %1093, %1089 ], [ %1774, %1692 ]
  %1783 = phi float [ %1094, %1089 ], [ %1773, %1692 ]
  %1784 = phi float [ %1095, %1089 ], [ %1772, %1692 ]
  %1785 = phi float [ %1096, %1089 ], [ %1769, %1692 ]
  %1786 = phi float [ %1097, %1089 ], [ %1766, %1692 ]
  %1787 = phi float [ %1098, %1089 ], [ %1763, %1692 ]
  %1788 = phi float [ %1099, %1089 ], [ %1760, %1692 ]
  %1789 = phi float [ %1100, %1089 ], [ %1759, %1692 ]
  %1790 = phi float [ %1101, %1089 ], [ %1758, %1692 ]
  %1791 = phi float [ %1102, %1089 ], [ %1757, %1692 ]
  %1792 = phi float [ %1103, %1089 ], [ %1756, %1692 ]
  %1793 = phi float [ %1104, %1089 ], [ %1755, %1692 ]
  %1794 = phi float [ %1105, %1089 ], [ %1752, %1692 ]
  %1795 = phi float [ %1106, %1089 ], [ %1749, %1692 ]
  %1796 = phi float [ %1107, %1089 ], [ %1746, %1692 ]
  %1797 = phi float [ %1108, %1089 ], [ %1743, %1692 ]
  %1798 = phi float [ %1109, %1089 ], [ %1742, %1692 ]
  %1799 = phi float [ %1110, %1089 ], [ %1741, %1692 ]
  %1800 = phi float [ %1111, %1089 ], [ %1740, %1692 ]
  %1801 = phi float [ %1112, %1089 ], [ %1739, %1692 ]
  %1802 = phi float [ %1113, %1089 ], [ %1738, %1692 ]
  %1803 = phi float [ %1114, %1089 ], [ %1735, %1692 ]
  %1804 = phi float [ %1115, %1089 ], [ %1732, %1692 ]
  %1805 = phi float [ %1116, %1089 ], [ %1729, %1692 ]
  %1806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1807 = extractvalue %dx.types.CBufRet.f32 %1806, 0
  %1808 = extractvalue %dx.types.CBufRet.f32 %1806, 1
  %1809 = extractvalue %dx.types.CBufRet.f32 %1806, 2
  %1810 = fsub fast float %192, %1807
  %1811 = fsub fast float %197, %1808
  %1812 = fsub fast float %202, %1809
  %1813 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1814 = extractvalue %dx.types.CBufRet.i32 %1813, 2
  %1815 = icmp eq i32 %1814, 0
  br i1 %1815, label %2166, label %1816

; <label>:1816                                    ; preds = %1778
  br label %1817

; <label>:1817                                    ; preds = %2132, %1816
  %1818 = phi float [ %2133, %2132 ], [ 0.000000e+00, %1816 ]
  %1819 = phi float [ %2134, %2132 ], [ 0.000000e+00, %1816 ]
  %1820 = phi float [ %2135, %2132 ], [ 0.000000e+00, %1816 ]
  %1821 = phi float [ %2136, %2132 ], [ 0.000000e+00, %1816 ]
  %1822 = phi float [ %2137, %2132 ], [ 0.000000e+00, %1816 ]
  %1823 = phi float [ %2138, %2132 ], [ 0.000000e+00, %1816 ]
  %1824 = phi float [ %2139, %2132 ], [ 0.000000e+00, %1816 ]
  %1825 = phi float [ %2140, %2132 ], [ 0.000000e+00, %1816 ]
  %1826 = phi float [ %2141, %2132 ], [ 0.000000e+00, %1816 ]
  %1827 = phi float [ %2142, %2132 ], [ 0.000000e+00, %1816 ]
  %1828 = phi float [ %2143, %2132 ], [ 0.000000e+00, %1816 ]
  %1829 = phi float [ %2144, %2132 ], [ 0.000000e+00, %1816 ]
  %1830 = phi float [ %2145, %2132 ], [ 0.000000e+00, %1816 ]
  %1831 = phi float [ %2146, %2132 ], [ 0.000000e+00, %1816 ]
  %1832 = phi float [ %2147, %2132 ], [ 0.000000e+00, %1816 ]
  %1833 = phi float [ %2148, %2132 ], [ 0.000000e+00, %1816 ]
  %1834 = phi float [ %2149, %2132 ], [ 0.000000e+00, %1816 ]
  %1835 = phi float [ %2150, %2132 ], [ 0.000000e+00, %1816 ]
  %1836 = phi float [ %2151, %2132 ], [ 0.000000e+00, %1816 ]
  %1837 = phi float [ %2152, %2132 ], [ 0.000000e+00, %1816 ]
  %1838 = phi float [ %2153, %2132 ], [ 0.000000e+00, %1816 ]
  %1839 = phi float [ %2154, %2132 ], [ 0.000000e+00, %1816 ]
  %1840 = phi float [ %2155, %2132 ], [ 0.000000e+00, %1816 ]
  %1841 = phi float [ %2156, %2132 ], [ 0.000000e+00, %1816 ]
  %1842 = phi float [ %2157, %2132 ], [ 0.000000e+00, %1816 ]
  %1843 = phi float [ %2158, %2132 ], [ 0.000000e+00, %1816 ]
  %1844 = phi float [ %2159, %2132 ], [ 0.000000e+00, %1816 ]
  %1845 = phi float [ %2160, %2132 ], [ 1.000000e+00, %1816 ]
  %1846 = phi i32 [ %2161, %2132 ], [ 0, %1816 ]
  %1847 = shl i32 %1846, 2
  %1848 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %1847, i32 undef)  ; BufferLoad(srv,index,wot)
  %1849 = extractvalue %dx.types.ResRet.i32 %1848, 0
  %1850 = icmp ne i32 %1849, 0
  %1851 = fcmp fast ogt float %1845, 0.000000e+00
  %1852 = and i1 %1851, %1850
  br i1 %1852, label %1853, label %2132

; <label>:1853                                    ; preds = %1817
  br label %1854

; <label>:1854                                    ; preds = %2099, %1853
  %1855 = phi float [ %2100, %2099 ], [ %1818, %1853 ]
  %1856 = phi float [ %2101, %2099 ], [ %1819, %1853 ]
  %1857 = phi float [ %2102, %2099 ], [ %1820, %1853 ]
  %1858 = phi float [ %2103, %2099 ], [ %1821, %1853 ]
  %1859 = phi float [ %2104, %2099 ], [ %1822, %1853 ]
  %1860 = phi float [ %2105, %2099 ], [ %1823, %1853 ]
  %1861 = phi float [ %2106, %2099 ], [ %1824, %1853 ]
  %1862 = phi float [ %2107, %2099 ], [ %1825, %1853 ]
  %1863 = phi float [ %2108, %2099 ], [ %1826, %1853 ]
  %1864 = phi float [ %2109, %2099 ], [ %1827, %1853 ]
  %1865 = phi float [ %2110, %2099 ], [ %1828, %1853 ]
  %1866 = phi float [ %2111, %2099 ], [ %1829, %1853 ]
  %1867 = phi float [ %2112, %2099 ], [ %1830, %1853 ]
  %1868 = phi float [ %2113, %2099 ], [ %1831, %1853 ]
  %1869 = phi float [ %2114, %2099 ], [ %1832, %1853 ]
  %1870 = phi float [ %2115, %2099 ], [ %1833, %1853 ]
  %1871 = phi float [ %2116, %2099 ], [ %1834, %1853 ]
  %1872 = phi float [ %2117, %2099 ], [ %1835, %1853 ]
  %1873 = phi float [ %2118, %2099 ], [ %1836, %1853 ]
  %1874 = phi float [ %2119, %2099 ], [ %1837, %1853 ]
  %1875 = phi float [ %2120, %2099 ], [ %1838, %1853 ]
  %1876 = phi float [ %2121, %2099 ], [ %1839, %1853 ]
  %1877 = phi float [ %2122, %2099 ], [ %1840, %1853 ]
  %1878 = phi float [ %2123, %2099 ], [ %1841, %1853 ]
  %1879 = phi float [ %2124, %2099 ], [ %1842, %1853 ]
  %1880 = phi float [ %2125, %2099 ], [ %1843, %1853 ]
  %1881 = phi float [ %2126, %2099 ], [ %1844, %1853 ]
  %1882 = phi float [ %2127, %2099 ], [ %1845, %1853 ]
  %1883 = phi i32 [ %1887, %2099 ], [ %1849, %1853 ]
  %1884 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1883)  ; FirstbitLo(value)
  %1885 = and i32 %1884, 31
  %1886 = shl i32 1, %1885
  %1887 = xor i32 %1886, %1883
  %1888 = shl i32 %1846, 5
  %1889 = add i32 %1884, %1888
  %1890 = mul i32 %1889, 72
  %1891 = add i32 %1890, 12
  %1892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %1891, i32 undef)  ; BufferLoad(srv,index,wot)
  %1893 = extractvalue %dx.types.ResRet.i32 %1892, 0
  %1894 = add i32 %1890, 16
  %1895 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %1894, i32 undef)  ; BufferLoad(srv,index,wot)
  %1896 = extractvalue %dx.types.ResRet.f32 %1895, 0
  %1897 = extractvalue %dx.types.ResRet.f32 %1895, 1
  %1898 = extractvalue %dx.types.ResRet.f32 %1895, 2
  %1899 = mul i32 %1889, 60
  %1900 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %1899, i32 undef)  ; BufferLoad(srv,index,wot)
  %1901 = extractvalue %dx.types.ResRet.f32 %1900, 0
  %1902 = extractvalue %dx.types.ResRet.f32 %1900, 1
  %1903 = extractvalue %dx.types.ResRet.f32 %1900, 2
  %1904 = add i32 %1899, 12
  %1905 = add i32 %1899, 48
  %1906 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %1905, i32 undef)  ; BufferLoad(srv,index,wot)
  %1907 = extractvalue %dx.types.ResRet.f32 %1906, 0
  %1908 = extractvalue %dx.types.ResRet.f32 %1906, 1
  %1909 = extractvalue %dx.types.ResRet.f32 %1906, 2
  %1910 = and i32 %1893, 32767
  %1911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1912 = extractvalue %dx.types.CBufRet.f32 %1911, 0
  %1913 = extractvalue %dx.types.CBufRet.f32 %1911, 1
  %1914 = extractvalue %dx.types.CBufRet.f32 %1911, 2
  %1915 = fsub fast float %1901, %1912
  %1916 = fsub fast float %1902, %1913
  %1917 = fsub fast float %1903, %1914
  %1918 = fsub fast float %1810, %1915
  %1919 = fsub fast float %1811, %1916
  %1920 = fsub fast float %1812, %1917
  %1921 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %1904, i32 undef)  ; BufferLoad(srv,index,wot)
  %1922 = extractvalue %dx.types.ResRet.f32 %1921, 0
  %1923 = extractvalue %dx.types.ResRet.f32 %1921, 1
  %1924 = extractvalue %dx.types.ResRet.f32 %1921, 2
  %1925 = call float @dx.op.dot3.f32(i32 55, float %1918, float %1919, float %1920, float %1922, float %1923, float %1924)  ; Dot3(ax,ay,az,bx,by,bz)
  %1926 = add i32 %1899, 24
  %1927 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %1926, i32 undef)  ; BufferLoad(srv,index,wot)
  %1928 = extractvalue %dx.types.ResRet.f32 %1927, 0
  %1929 = extractvalue %dx.types.ResRet.f32 %1927, 1
  %1930 = extractvalue %dx.types.ResRet.f32 %1927, 2
  %1931 = call float @dx.op.dot3.f32(i32 55, float %1918, float %1919, float %1920, float %1928, float %1929, float %1930)  ; Dot3(ax,ay,az,bx,by,bz)
  %1932 = add i32 %1899, 36
  %1933 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %1932, i32 undef)  ; BufferLoad(srv,index,wot)
  %1934 = extractvalue %dx.types.ResRet.f32 %1933, 0
  %1935 = extractvalue %dx.types.ResRet.f32 %1933, 1
  %1936 = extractvalue %dx.types.ResRet.f32 %1933, 2
  %1937 = call float @dx.op.dot3.f32(i32 55, float %1918, float %1919, float %1920, float %1934, float %1935, float %1936)  ; Dot3(ax,ay,az,bx,by,bz)
  %1938 = call float @dx.op.unary.f32(i32 6, float %1925)  ; FAbs(value)
  %1939 = call float @dx.op.unary.f32(i32 6, float %1931)  ; FAbs(value)
  %1940 = call float @dx.op.unary.f32(i32 6, float %1937)  ; FAbs(value)
  %1941 = fsub fast float %1907, %1938
  %1942 = fsub fast float %1908, %1939
  %1943 = fsub fast float %1909, %1940
  %1944 = fmul fast float %1941, %1896
  %1945 = fmul fast float %1942, %1897
  %1946 = fmul fast float %1943, %1898
  %1947 = call float @dx.op.binary.f32(i32 36, float %1945, float %1946)  ; FMin(a,b)
  %1948 = call float @dx.op.binary.f32(i32 36, float %1944, float %1947)  ; FMin(a,b)
  %1949 = call float @dx.op.unary.f32(i32 7, float %1948)  ; Saturate(value)
  %1950 = call float @dx.op.binary.f32(i32 36, float %1882, float %1949)  ; FMin(a,b)
  %1951 = fcmp fast ogt float %1950, 0.000000e+00
  br i1 %1951, label %1952, label %2099, !dx.controlflow.hints !76

; <label>:1952                                    ; preds = %1854
  %1953 = lshr i32 %1893, 16
  %1954 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1953)  ; LegacyF16ToF32(value)
  %1955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 141)  ; CBufferLoadLegacy(handle,regIndex)
  %1956 = extractvalue %dx.types.CBufRet.f32 %1955, 3
  %1957 = bitcast float %1956 to i32
  %1958 = add i32 %1957, %1910
  %1959 = mul i32 %1958, 36
  %1960 = shl i32 %1957, 1
  %1961 = add i32 %1960, %1910
  %1962 = mul i32 %1961, 36
  %1963 = mul i32 %1957, 3
  %1964 = add i32 %1963, %1910
  %1965 = mul i32 %1964, 36
  %1966 = fmul fast float %1954, %1950
  %1967 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1959, i32 undef)  ; BufferLoad(srv,index,wot)
  %1968 = extractvalue %dx.types.ResRet.f32 %1967, 0
  %1969 = fmul fast float %1968, %1966
  %1970 = fadd fast float %1969, %1872
  %1971 = add i32 %1959, 4
  %1972 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1971, i32 undef)  ; BufferLoad(srv,index,wot)
  %1973 = extractvalue %dx.types.ResRet.f32 %1972, 0
  %1974 = fmul fast float %1973, %1966
  %1975 = fadd fast float %1974, %1871
  %1976 = add i32 %1959, 8
  %1977 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1976, i32 undef)  ; BufferLoad(srv,index,wot)
  %1978 = extractvalue %dx.types.ResRet.f32 %1977, 0
  %1979 = fmul fast float %1978, %1966
  %1980 = fadd fast float %1979, %1870
  %1981 = add i32 %1959, 12
  %1982 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1981, i32 undef)  ; BufferLoad(srv,index,wot)
  %1983 = extractvalue %dx.types.ResRet.f32 %1982, 0
  %1984 = fmul fast float %1983, %1966
  %1985 = fadd fast float %1984, %1869
  %1986 = add i32 %1959, 16
  %1987 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1986, i32 undef)  ; BufferLoad(srv,index,wot)
  %1988 = extractvalue %dx.types.ResRet.f32 %1987, 0
  %1989 = fmul fast float %1988, %1966
  %1990 = fadd fast float %1989, %1868
  %1991 = add i32 %1959, 20
  %1992 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1991, i32 undef)  ; BufferLoad(srv,index,wot)
  %1993 = extractvalue %dx.types.ResRet.f32 %1992, 0
  %1994 = fmul fast float %1993, %1966
  %1995 = fadd fast float %1994, %1867
  %1996 = add i32 %1959, 24
  %1997 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1996, i32 undef)  ; BufferLoad(srv,index,wot)
  %1998 = extractvalue %dx.types.ResRet.f32 %1997, 0
  %1999 = fmul fast float %1998, %1966
  %2000 = fadd fast float %1999, %1866
  %2001 = add i32 %1959, 28
  %2002 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2001, i32 undef)  ; BufferLoad(srv,index,wot)
  %2003 = extractvalue %dx.types.ResRet.f32 %2002, 0
  %2004 = fmul fast float %2003, %1966
  %2005 = fadd fast float %2004, %1865
  %2006 = add i32 %1959, 32
  %2007 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2006, i32 undef)  ; BufferLoad(srv,index,wot)
  %2008 = extractvalue %dx.types.ResRet.f32 %2007, 0
  %2009 = fmul fast float %2008, %1966
  %2010 = fadd fast float %2009, %1864
  %2011 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1962, i32 undef)  ; BufferLoad(srv,index,wot)
  %2012 = extractvalue %dx.types.ResRet.f32 %2011, 0
  %2013 = fmul fast float %2012, %1966
  %2014 = fadd fast float %2013, %1881
  %2015 = add i32 %1962, 4
  %2016 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2015, i32 undef)  ; BufferLoad(srv,index,wot)
  %2017 = extractvalue %dx.types.ResRet.f32 %2016, 0
  %2018 = fmul fast float %2017, %1966
  %2019 = fadd fast float %2018, %1880
  %2020 = add i32 %1962, 8
  %2021 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2020, i32 undef)  ; BufferLoad(srv,index,wot)
  %2022 = extractvalue %dx.types.ResRet.f32 %2021, 0
  %2023 = fmul fast float %2022, %1966
  %2024 = fadd fast float %2023, %1879
  %2025 = add i32 %1962, 12
  %2026 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2025, i32 undef)  ; BufferLoad(srv,index,wot)
  %2027 = extractvalue %dx.types.ResRet.f32 %2026, 0
  %2028 = fmul fast float %2027, %1966
  %2029 = fadd fast float %2028, %1878
  %2030 = add i32 %1962, 16
  %2031 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2030, i32 undef)  ; BufferLoad(srv,index,wot)
  %2032 = extractvalue %dx.types.ResRet.f32 %2031, 0
  %2033 = fmul fast float %2032, %1966
  %2034 = fadd fast float %2033, %1877
  %2035 = add i32 %1962, 20
  %2036 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2035, i32 undef)  ; BufferLoad(srv,index,wot)
  %2037 = extractvalue %dx.types.ResRet.f32 %2036, 0
  %2038 = fmul fast float %2037, %1966
  %2039 = fadd fast float %2038, %1876
  %2040 = add i32 %1962, 24
  %2041 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2040, i32 undef)  ; BufferLoad(srv,index,wot)
  %2042 = extractvalue %dx.types.ResRet.f32 %2041, 0
  %2043 = fmul fast float %2042, %1966
  %2044 = fadd fast float %2043, %1875
  %2045 = add i32 %1962, 28
  %2046 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2045, i32 undef)  ; BufferLoad(srv,index,wot)
  %2047 = extractvalue %dx.types.ResRet.f32 %2046, 0
  %2048 = fmul fast float %2047, %1966
  %2049 = fadd fast float %2048, %1874
  %2050 = add i32 %1962, 32
  %2051 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2050, i32 undef)  ; BufferLoad(srv,index,wot)
  %2052 = extractvalue %dx.types.ResRet.f32 %2051, 0
  %2053 = fmul fast float %2052, %1966
  %2054 = fadd fast float %2053, %1873
  %2055 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1965, i32 undef)  ; BufferLoad(srv,index,wot)
  %2056 = extractvalue %dx.types.ResRet.f32 %2055, 0
  %2057 = fmul fast float %2056, %1966
  %2058 = fadd fast float %2057, %1863
  %2059 = add i32 %1965, 4
  %2060 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2059, i32 undef)  ; BufferLoad(srv,index,wot)
  %2061 = extractvalue %dx.types.ResRet.f32 %2060, 0
  %2062 = fmul fast float %2061, %1966
  %2063 = fadd fast float %2062, %1862
  %2064 = add i32 %1965, 8
  %2065 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2064, i32 undef)  ; BufferLoad(srv,index,wot)
  %2066 = extractvalue %dx.types.ResRet.f32 %2065, 0
  %2067 = fmul fast float %2066, %1966
  %2068 = fadd fast float %2067, %1861
  %2069 = add i32 %1965, 12
  %2070 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2069, i32 undef)  ; BufferLoad(srv,index,wot)
  %2071 = extractvalue %dx.types.ResRet.f32 %2070, 0
  %2072 = fmul fast float %2071, %1966
  %2073 = fadd fast float %2072, %1860
  %2074 = add i32 %1965, 16
  %2075 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2074, i32 undef)  ; BufferLoad(srv,index,wot)
  %2076 = extractvalue %dx.types.ResRet.f32 %2075, 0
  %2077 = fmul fast float %2076, %1966
  %2078 = fadd fast float %2077, %1859
  %2079 = add i32 %1965, 20
  %2080 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2079, i32 undef)  ; BufferLoad(srv,index,wot)
  %2081 = extractvalue %dx.types.ResRet.f32 %2080, 0
  %2082 = fmul fast float %2081, %1966
  %2083 = fadd fast float %2082, %1858
  %2084 = add i32 %1965, 24
  %2085 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2084, i32 undef)  ; BufferLoad(srv,index,wot)
  %2086 = extractvalue %dx.types.ResRet.f32 %2085, 0
  %2087 = fmul fast float %2086, %1966
  %2088 = fadd fast float %2087, %1857
  %2089 = add i32 %1965, 28
  %2090 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2089, i32 undef)  ; BufferLoad(srv,index,wot)
  %2091 = extractvalue %dx.types.ResRet.f32 %2090, 0
  %2092 = fmul fast float %2091, %1966
  %2093 = fadd fast float %2092, %1856
  %2094 = add i32 %1965, 32
  %2095 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2094, i32 undef)  ; BufferLoad(srv,index,wot)
  %2096 = extractvalue %dx.types.ResRet.f32 %2095, 0
  %2097 = fmul fast float %2096, %1966
  %2098 = fadd fast float %2097, %1855
  br label %2099

; <label>:2099                                    ; preds = %1952, %1854
  %2100 = phi float [ %2098, %1952 ], [ %1855, %1854 ]
  %2101 = phi float [ %2093, %1952 ], [ %1856, %1854 ]
  %2102 = phi float [ %2088, %1952 ], [ %1857, %1854 ]
  %2103 = phi float [ %2083, %1952 ], [ %1858, %1854 ]
  %2104 = phi float [ %2078, %1952 ], [ %1859, %1854 ]
  %2105 = phi float [ %2073, %1952 ], [ %1860, %1854 ]
  %2106 = phi float [ %2068, %1952 ], [ %1861, %1854 ]
  %2107 = phi float [ %2063, %1952 ], [ %1862, %1854 ]
  %2108 = phi float [ %2058, %1952 ], [ %1863, %1854 ]
  %2109 = phi float [ %2010, %1952 ], [ %1864, %1854 ]
  %2110 = phi float [ %2005, %1952 ], [ %1865, %1854 ]
  %2111 = phi float [ %2000, %1952 ], [ %1866, %1854 ]
  %2112 = phi float [ %1995, %1952 ], [ %1867, %1854 ]
  %2113 = phi float [ %1990, %1952 ], [ %1868, %1854 ]
  %2114 = phi float [ %1985, %1952 ], [ %1869, %1854 ]
  %2115 = phi float [ %1980, %1952 ], [ %1870, %1854 ]
  %2116 = phi float [ %1975, %1952 ], [ %1871, %1854 ]
  %2117 = phi float [ %1970, %1952 ], [ %1872, %1854 ]
  %2118 = phi float [ %2054, %1952 ], [ %1873, %1854 ]
  %2119 = phi float [ %2049, %1952 ], [ %1874, %1854 ]
  %2120 = phi float [ %2044, %1952 ], [ %1875, %1854 ]
  %2121 = phi float [ %2039, %1952 ], [ %1876, %1854 ]
  %2122 = phi float [ %2034, %1952 ], [ %1877, %1854 ]
  %2123 = phi float [ %2029, %1952 ], [ %1878, %1854 ]
  %2124 = phi float [ %2024, %1952 ], [ %1879, %1854 ]
  %2125 = phi float [ %2019, %1952 ], [ %1880, %1854 ]
  %2126 = phi float [ %2014, %1952 ], [ %1881, %1854 ]
  %2127 = fsub fast float %1882, %1950
  %2128 = icmp ne i32 %1883, %1886
  %2129 = fcmp fast ogt float %2127, 0.000000e+00
  %2130 = and i1 %2128, %2129
  br i1 %2130, label %1854, label %2131

; <label>:2131                                    ; preds = %2099
  br label %2132

; <label>:2132                                    ; preds = %2131, %1817
  %2133 = phi float [ %1818, %1817 ], [ %2100, %2131 ]
  %2134 = phi float [ %1819, %1817 ], [ %2101, %2131 ]
  %2135 = phi float [ %1820, %1817 ], [ %2102, %2131 ]
  %2136 = phi float [ %1821, %1817 ], [ %2103, %2131 ]
  %2137 = phi float [ %1822, %1817 ], [ %2104, %2131 ]
  %2138 = phi float [ %1823, %1817 ], [ %2105, %2131 ]
  %2139 = phi float [ %1824, %1817 ], [ %2106, %2131 ]
  %2140 = phi float [ %1825, %1817 ], [ %2107, %2131 ]
  %2141 = phi float [ %1826, %1817 ], [ %2108, %2131 ]
  %2142 = phi float [ %1827, %1817 ], [ %2109, %2131 ]
  %2143 = phi float [ %1828, %1817 ], [ %2110, %2131 ]
  %2144 = phi float [ %1829, %1817 ], [ %2111, %2131 ]
  %2145 = phi float [ %1830, %1817 ], [ %2112, %2131 ]
  %2146 = phi float [ %1831, %1817 ], [ %2113, %2131 ]
  %2147 = phi float [ %1832, %1817 ], [ %2114, %2131 ]
  %2148 = phi float [ %1833, %1817 ], [ %2115, %2131 ]
  %2149 = phi float [ %1834, %1817 ], [ %2116, %2131 ]
  %2150 = phi float [ %1835, %1817 ], [ %2117, %2131 ]
  %2151 = phi float [ %1836, %1817 ], [ %2118, %2131 ]
  %2152 = phi float [ %1837, %1817 ], [ %2119, %2131 ]
  %2153 = phi float [ %1838, %1817 ], [ %2120, %2131 ]
  %2154 = phi float [ %1839, %1817 ], [ %2121, %2131 ]
  %2155 = phi float [ %1840, %1817 ], [ %2122, %2131 ]
  %2156 = phi float [ %1841, %1817 ], [ %2123, %2131 ]
  %2157 = phi float [ %1842, %1817 ], [ %2124, %2131 ]
  %2158 = phi float [ %1843, %1817 ], [ %2125, %2131 ]
  %2159 = phi float [ %1844, %1817 ], [ %2126, %2131 ]
  %2160 = phi float [ %1845, %1817 ], [ %2127, %2131 ]
  %2161 = add i32 %1846, 1
  %2162 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2163 = extractvalue %dx.types.CBufRet.i32 %2162, 2
  %2164 = icmp ult i32 %2161, %2163
  br i1 %2164, label %1817, label %2165

; <label>:2165                                    ; preds = %2132
  br label %2166

; <label>:2166                                    ; preds = %2165, %1778
  %2167 = phi float [ 0.000000e+00, %1778 ], [ %2133, %2165 ]
  %2168 = phi float [ 0.000000e+00, %1778 ], [ %2134, %2165 ]
  %2169 = phi float [ 0.000000e+00, %1778 ], [ %2135, %2165 ]
  %2170 = phi float [ 0.000000e+00, %1778 ], [ %2136, %2165 ]
  %2171 = phi float [ 0.000000e+00, %1778 ], [ %2137, %2165 ]
  %2172 = phi float [ 0.000000e+00, %1778 ], [ %2138, %2165 ]
  %2173 = phi float [ 0.000000e+00, %1778 ], [ %2139, %2165 ]
  %2174 = phi float [ 0.000000e+00, %1778 ], [ %2140, %2165 ]
  %2175 = phi float [ 0.000000e+00, %1778 ], [ %2141, %2165 ]
  %2176 = phi float [ 0.000000e+00, %1778 ], [ %2142, %2165 ]
  %2177 = phi float [ 0.000000e+00, %1778 ], [ %2143, %2165 ]
  %2178 = phi float [ 0.000000e+00, %1778 ], [ %2144, %2165 ]
  %2179 = phi float [ 0.000000e+00, %1778 ], [ %2145, %2165 ]
  %2180 = phi float [ 0.000000e+00, %1778 ], [ %2146, %2165 ]
  %2181 = phi float [ 0.000000e+00, %1778 ], [ %2147, %2165 ]
  %2182 = phi float [ 0.000000e+00, %1778 ], [ %2148, %2165 ]
  %2183 = phi float [ 0.000000e+00, %1778 ], [ %2149, %2165 ]
  %2184 = phi float [ 0.000000e+00, %1778 ], [ %2150, %2165 ]
  %2185 = phi float [ 0.000000e+00, %1778 ], [ %2151, %2165 ]
  %2186 = phi float [ 0.000000e+00, %1778 ], [ %2152, %2165 ]
  %2187 = phi float [ 0.000000e+00, %1778 ], [ %2153, %2165 ]
  %2188 = phi float [ 0.000000e+00, %1778 ], [ %2154, %2165 ]
  %2189 = phi float [ 0.000000e+00, %1778 ], [ %2155, %2165 ]
  %2190 = phi float [ 0.000000e+00, %1778 ], [ %2156, %2165 ]
  %2191 = phi float [ 0.000000e+00, %1778 ], [ %2157, %2165 ]
  %2192 = phi float [ 0.000000e+00, %1778 ], [ %2158, %2165 ]
  %2193 = phi float [ 0.000000e+00, %1778 ], [ %2159, %2165 ]
  %2194 = phi float [ 1.000000e+00, %1778 ], [ %2160, %2165 ]
  %2195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2196 = extractvalue %dx.types.CBufRet.f32 %2195, 3
  %2197 = fdiv fast float 1.000000e+00, %2196
  %2198 = fmul fast float %2197, %2184
  %2199 = fmul fast float %2197, %2183
  %2200 = fmul fast float %2197, %2182
  %2201 = fmul fast float %2197, %2181
  %2202 = fmul fast float %2197, %2180
  %2203 = fmul fast float %2197, %2179
  %2204 = fmul fast float %2197, %2178
  %2205 = fmul fast float %2197, %2177
  %2206 = fmul fast float %2197, %2176
  %2207 = fmul fast float %2197, %2193
  %2208 = fmul fast float %2197, %2192
  %2209 = fmul fast float %2197, %2191
  %2210 = fmul fast float %2197, %2190
  %2211 = fmul fast float %2197, %2189
  %2212 = fmul fast float %2197, %2188
  %2213 = fmul fast float %2197, %2187
  %2214 = fmul fast float %2197, %2186
  %2215 = fmul fast float %2197, %2185
  %2216 = fmul fast float %2197, %2175
  %2217 = fmul fast float %2197, %2174
  %2218 = fmul fast float %2197, %2173
  %2219 = fmul fast float %2197, %2172
  %2220 = fmul fast float %2197, %2171
  %2221 = fmul fast float %2197, %2170
  %2222 = fmul fast float %2197, %2169
  %2223 = fmul fast float %2197, %2168
  %2224 = fmul fast float %2197, %2167
  %2225 = fmul fast float %2194, %1805
  %2226 = fadd fast float %2198, %2225
  %2227 = fmul fast float %2194, %1804
  %2228 = fadd fast float %2199, %2227
  %2229 = fmul fast float %2194, %1803
  %2230 = fadd fast float %2200, %2229
  %2231 = fmul fast float %2194, %1802
  %2232 = fadd fast float %2201, %2231
  %2233 = fmul fast float %2194, %1801
  %2234 = fadd fast float %2202, %2233
  %2235 = fmul fast float %2194, %1800
  %2236 = fadd fast float %2203, %2235
  %2237 = fmul fast float %2194, %1799
  %2238 = fadd fast float %2204, %2237
  %2239 = fmul fast float %2194, %1798
  %2240 = fadd fast float %2205, %2239
  %2241 = fmul fast float %2194, %1797
  %2242 = fadd fast float %2206, %2241
  %2243 = fmul fast float %2194, %1796
  %2244 = fadd fast float %2207, %2243
  %2245 = fmul fast float %2194, %1795
  %2246 = fadd fast float %2208, %2245
  %2247 = fmul fast float %2194, %1794
  %2248 = fadd fast float %2209, %2247
  %2249 = fmul fast float %2194, %1793
  %2250 = fadd fast float %2210, %2249
  %2251 = fmul fast float %2194, %1792
  %2252 = fadd fast float %2211, %2251
  %2253 = fmul fast float %2194, %1791
  %2254 = fadd fast float %2212, %2253
  %2255 = fmul fast float %2194, %1790
  %2256 = fadd fast float %2213, %2255
  %2257 = fmul fast float %2194, %1789
  %2258 = fadd fast float %2214, %2257
  %2259 = fmul fast float %2194, %1788
  %2260 = fadd fast float %2215, %2259
  %2261 = fmul fast float %2194, %1787
  %2262 = fadd fast float %2216, %2261
  %2263 = fmul fast float %2194, %1786
  %2264 = fadd fast float %2217, %2263
  %2265 = fmul fast float %2194, %1785
  %2266 = fadd fast float %2218, %2265
  %2267 = fmul fast float %2194, %1784
  %2268 = fadd fast float %2219, %2267
  %2269 = fmul fast float %2194, %1783
  %2270 = fadd fast float %2220, %2269
  %2271 = fmul fast float %2194, %1782
  %2272 = fadd fast float %2221, %2271
  %2273 = fmul fast float %2194, %1781
  %2274 = fadd fast float %2222, %2273
  %2275 = fmul fast float %2194, %1780
  %2276 = fadd fast float %2223, %2275
  %2277 = fmul fast float %2194, %1779
  %2278 = fadd fast float %2224, %2277
  %2279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2280 = extractvalue %dx.types.CBufRet.f32 %2279, 0
  %2281 = extractvalue %dx.types.CBufRet.f32 %2279, 1
  %2282 = extractvalue %dx.types.CBufRet.f32 %2279, 2
  %2283 = fsub fast float %192, %2280
  %2284 = fsub fast float %197, %2281
  %2285 = fsub fast float %202, %2282
  %2286 = call float @dx.op.dot3.f32(i32 55, float %2283, float %2284, float %2285, float %2283, float %2284, float %2285)  ; Dot3(ax,ay,az,bx,by,bz)
  %2287 = call float @dx.op.unary.f32(i32 25, float %2286)  ; Rsqrt(value)
  %2288 = fmul fast float %2283, %2287
  %2289 = fmul fast float %2284, %2287
  %2290 = fmul fast float %2285, %2287
  %2291 = fsub fast float -0.000000e+00, %2288
  %2292 = fsub fast float -0.000000e+00, %2289
  %2293 = fmul fast float %2226, 0x3FD20DD760000000
  %2294 = fmul fast float %2244, 0x3FD20DD760000000
  %2295 = fmul fast float %2262, 0x3FD20DD760000000
  br i1 %102, label %2376, label %2296, !dx.controlflow.hints !77

; <label>:2296                                    ; preds = %2166
  %2297 = fmul fast float %2230, 0xBFD4D8D7C0000000
  %2298 = fmul fast float %2297, %2290
  %2299 = fmul fast float %2290, %2290
  %2300 = fmul fast float %2299, 0x3FEE471020000000
  %2301 = fadd fast float %2300, 0xBFD42F6020000000
  %2302 = fmul fast float %2301, %2238
  %2303 = fmul fast float %2232, 0x3FD4D8D7C0000000
  %2304 = fmul fast float %2228, 0x3FD4D8D7C0000000
  %2305 = fmul fast float %2304, %2289
  %2306 = fmul fast float %2290, 0x3FF17B1420000000
  %2307 = fmul fast float %2240, %2291
  %2308 = fmul fast float %2236, %2292
  %2309 = fmul fast float %2288, %2288
  %2310 = fmul fast float %2289, %2289
  %2311 = fsub fast float %2309, %2310
  %2312 = fmul fast float %2242, 0x3FC17B1420000000
  %2313 = fmul fast float %2312, %2311
  %2314 = fmul fast float %2234, 0x3FD17B1420000000
  %2315 = fmul fast float %2314, %2287
  %2316 = fmul fast float %2315, %2284
  %2317 = fadd fast float %2307, %2308
  %2318 = fmul fast float %2306, %2317
  %2319 = fadd fast float %2318, %2302
  %2320 = fmul fast float %2319, 2.500000e-01
  %2321 = fadd fast float %2316, %2303
  %2322 = fmul fast float %2321, %2288
  %2323 = fadd fast float %2298, %2293
  %2324 = fadd fast float %2323, %2305
  %2325 = fadd fast float %2324, %2313
  %2326 = fadd fast float %2325, %2320
  %2327 = fadd fast float %2326, %2322
  %2328 = fmul fast float %2248, 0xBFD4D8D7C0000000
  %2329 = fmul fast float %2328, %2290
  %2330 = fmul fast float %2301, %2256
  %2331 = fmul fast float %2250, 0x3FD4D8D7C0000000
  %2332 = fmul fast float %2246, 0x3FD4D8D7C0000000
  %2333 = fmul fast float %2332, %2289
  %2334 = fmul fast float %2258, %2291
  %2335 = fmul fast float %2254, %2292
  %2336 = fmul fast float %2260, 0x3FC17B1420000000
  %2337 = fmul fast float %2336, %2311
  %2338 = fmul fast float %2252, 0x3FD17B1420000000
  %2339 = fmul fast float %2338, %2287
  %2340 = fmul fast float %2339, %2284
  %2341 = fadd fast float %2334, %2335
  %2342 = fmul fast float %2306, %2341
  %2343 = fadd fast float %2342, %2330
  %2344 = fmul fast float %2343, 2.500000e-01
  %2345 = fadd fast float %2340, %2331
  %2346 = fmul fast float %2345, %2288
  %2347 = fadd fast float %2329, %2294
  %2348 = fadd fast float %2347, %2333
  %2349 = fadd fast float %2348, %2337
  %2350 = fadd fast float %2349, %2344
  %2351 = fadd fast float %2350, %2346
  %2352 = fmul fast float %2266, 0xBFD4D8D7C0000000
  %2353 = fmul fast float %2352, %2290
  %2354 = fmul fast float %2301, %2274
  %2355 = fmul fast float %2268, 0x3FD4D8D7C0000000
  %2356 = fmul fast float %2264, 0x3FD4D8D7C0000000
  %2357 = fmul fast float %2356, %2289
  %2358 = fmul fast float %2276, %2291
  %2359 = fmul fast float %2272, %2292
  %2360 = fmul fast float %2278, 0x3FC17B1420000000
  %2361 = fmul fast float %2360, %2311
  %2362 = fmul fast float %2270, 0x3FD17B1420000000
  %2363 = fmul fast float %2362, %2287
  %2364 = fmul fast float %2363, %2284
  %2365 = fadd fast float %2358, %2359
  %2366 = fmul fast float %2306, %2365
  %2367 = fadd fast float %2366, %2354
  %2368 = fmul fast float %2367, 2.500000e-01
  %2369 = fadd fast float %2364, %2355
  %2370 = fmul fast float %2369, %2288
  %2371 = fadd fast float %2353, %2295
  %2372 = fadd fast float %2371, %2357
  %2373 = fadd fast float %2372, %2361
  %2374 = fadd fast float %2373, %2368
  %2375 = fadd fast float %2374, %2370
  br label %2470

; <label>:2376                                    ; preds = %2166
  %2377 = fmul fast float %144, %144
  %2378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %2379 = extractvalue %dx.types.CBufRet.f32 %2378, 0
  %2380 = extractvalue %dx.types.CBufRet.f32 %2378, 1
  %2381 = extractvalue %dx.types.CBufRet.f32 %2378, 2
  %2382 = fmul fast float %2230, %144
  %2383 = fmul fast float %2382, %2381
  %2384 = fmul fast float %2381, %2381
  %2385 = fmul fast float %2384, 0x3FEE471020000000
  %2386 = fadd fast float %2385, 0xBFD42F6020000000
  %2387 = fmul fast float %2386, %2238
  %2388 = fmul fast float %2379, %2232
  %2389 = fmul fast float %2380, %2228
  %2390 = fmul fast float %2381, 0x3FF17B1420000000
  %2391 = fmul fast float %2240, %2377
  %2392 = fmul fast float %2391, %2379
  %2393 = fmul fast float %2392, %2390
  %2394 = fmul fast float %2236, %2377
  %2395 = fmul fast float %2394, %2380
  %2396 = fmul fast float %2395, %2390
  %2397 = fmul fast float %2379, %2379
  %2398 = fmul fast float %2380, %2380
  %2399 = fsub fast float %2397, %2398
  %2400 = fmul fast float %2242, 0x3FE17B1420000000
  %2401 = fmul fast float %2400, %2399
  %2402 = fmul fast float %2234, 0x3FF17B1420000000
  %2403 = fmul fast float %2402, %2380
  %2404 = fmul fast float %2403, %2379
  %2405 = fadd fast float %2401, %2404
  %2406 = fadd fast float %2405, %2387
  %2407 = fmul fast float %2406, %2377
  %2408 = fadd fast float %2389, %2388
  %2409 = fmul fast float %2408, %144
  %2410 = fsub fast float %2409, %2383
  %2411 = fmul fast float %2410, 0x3FDF454380000000
  %2412 = fsub fast float %2293, %2393
  %2413 = fsub fast float %2412, %2396
  %2414 = fadd fast float %2413, %2407
  %2415 = fadd fast float %2414, %2411
  %2416 = fmul fast float %2248, %144
  %2417 = fmul fast float %2416, %2381
  %2418 = fmul fast float %2386, %2256
  %2419 = fmul fast float %2379, %2250
  %2420 = fmul fast float %2380, %2246
  %2421 = fmul fast float %2258, %2377
  %2422 = fmul fast float %2421, %2379
  %2423 = fmul fast float %2422, %2390
  %2424 = fmul fast float %2254, %2377
  %2425 = fmul fast float %2424, %2380
  %2426 = fmul fast float %2425, %2390
  %2427 = fmul fast float %2260, 0x3FE17B1420000000
  %2428 = fmul fast float %2427, %2399
  %2429 = fmul fast float %2252, 0x3FF17B1420000000
  %2430 = fmul fast float %2429, %2380
  %2431 = fmul fast float %2430, %2379
  %2432 = fadd fast float %2428, %2431
  %2433 = fadd fast float %2432, %2418
  %2434 = fmul fast float %2433, %2377
  %2435 = fadd fast float %2420, %2419
  %2436 = fmul fast float %2435, %144
  %2437 = fsub fast float %2436, %2417
  %2438 = fmul fast float %2437, 0x3FDF454380000000
  %2439 = fsub fast float %2294, %2423
  %2440 = fsub fast float %2439, %2426
  %2441 = fadd fast float %2440, %2434
  %2442 = fadd fast float %2441, %2438
  %2443 = fmul fast float %2266, %144
  %2444 = fmul fast float %2443, %2381
  %2445 = fmul fast float %2386, %2274
  %2446 = fmul fast float %2379, %2268
  %2447 = fmul fast float %2380, %2264
  %2448 = fmul fast float %2276, %2377
  %2449 = fmul fast float %2448, %2379
  %2450 = fmul fast float %2449, %2390
  %2451 = fmul fast float %2272, %2377
  %2452 = fmul fast float %2451, %2380
  %2453 = fmul fast float %2452, %2390
  %2454 = fmul fast float %2278, 0x3FE17B1420000000
  %2455 = fmul fast float %2454, %2399
  %2456 = fmul fast float %2270, 0x3FF17B1420000000
  %2457 = fmul fast float %2456, %2380
  %2458 = fmul fast float %2457, %2379
  %2459 = fadd fast float %2455, %2458
  %2460 = fadd fast float %2459, %2445
  %2461 = fmul fast float %2460, %2377
  %2462 = fadd fast float %2447, %2446
  %2463 = fmul fast float %2462, %144
  %2464 = fsub fast float %2463, %2444
  %2465 = fmul fast float %2464, 0x3FDF454380000000
  %2466 = fsub fast float %2295, %2450
  %2467 = fsub fast float %2466, %2453
  %2468 = fadd fast float %2467, %2461
  %2469 = fadd fast float %2468, %2465
  br label %2470

; <label>:2470                                    ; preds = %2376, %2296
  %2471 = phi float [ %2327, %2296 ], [ %2415, %2376 ]
  %2472 = phi float [ %2351, %2296 ], [ %2442, %2376 ]
  %2473 = phi float [ %2375, %2296 ], [ %2469, %2376 ]
  %2474 = fmul fast float %2196, %2471
  %2475 = fmul fast float %2196, %2472
  %2476 = fmul fast float %2196, %2473
  %2477 = extractvalue %dx.types.CBufRet.f32 %2195, 0
  %2478 = fmul fast float %2474, %2477
  %2479 = fmul fast float %2475, %2477
  %2480 = fmul fast float %2476, %2477
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %171, i32 %172, i32 undef, float %2478, float %2479, float %2480, float %2478, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2481

; <label>:2481                                    ; preds = %2470, %0
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
!dx.entryPoints = !{!42}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !34, !36, !40}
!5 = !{!6, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !21, !22, !23, !25, !26, !27, !28, !29, !30, !31, !32, !33}
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
!19 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 31, i32 1, i32 11, i32 0, null}
!20 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 43, i32 1, i32 11, i32 0, null}
!21 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 11, i32 1, i32 11, i32 0, null}
!22 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 12, i32 1, i32 11, i32 0, null}
!23 = !{i32 14, %"class.StructuredBuffer<GfxNeuralLightGridTopLevelNode>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i32 0, !24}
!24 = !{i32 1, i32 16}
!25 = !{i32 15, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 10, i32 0, !13}
!26 = !{i32 16, %"class.StructuredBuffer<GfxNeuralLightGridInternalNode>"* undef, !"", i32 0, i32 2, i32 1, i32 12, i32 0, !24}
!27 = !{i32 17, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 3, i32 1, i32 10, i32 0, !13}
!28 = !{i32 18, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 4, i32 1, i32 10, i32 0, !13}
!29 = !{i32 19, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 5, i32 1, i32 10, i32 0, !13}
!30 = !{i32 20, %"class.Buffer<vector<float, 4> >"* undef, !"", i32 0, i32 6, i32 1, i32 10, i32 0, !7}
!31 = !{i32 21, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 7, i32 1, i32 10, i32 0, !13}
!32 = !{i32 22, %"class.Buffer<vector<float, 4> >"* undef, !"", i32 0, i32 8, i32 1, i32 10, i32 0, !7}
!33 = !{i32 23, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 9, i32 1, i32 11, i32 0, null}
!34 = !{!35}
!35 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!36 = !{!37, !38, !39}
!37 = !{i32 0, %GfxNeuralLightGridSetupConsts* undef, !"", i32 0, i32 4, i32 1, i32 80, null}
!38 = !{i32 1, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!39 = !{i32 2, %DeferredEffectLightConsts_decl* undef, !"", i32 0, i32 1, i32 1, i32 240, null}
!40 = !{!41}
!41 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!42 = !{void ()* @cs_del_sh_sample_lightgrid_reflection_volumes_2, !"cs_del_sh_sample_lightgrid_reflection_volumes_2", null, !4, !43}
!43 = !{i32 0, i64 272, i32 4, !44}
!44 = !{i32 16, i32 2, i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 1}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = !{!55, !55, i64 0}
!55 = !{!"int", !56, i64 0}
!56 = !{!"omnipotent char", !57, i64 0}
!57 = !{!"Simple C/C++ TBAA"}
!58 = !{!59, !61, !62, !63}
!59 = distinct !{!59, !60, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z: %probeR"}
!60 = distinct !{!60, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z"}
!61 = distinct !{!61, !60, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z: %probeG"}
!62 = distinct !{!62, !60, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z: %probeB"}
!63 = distinct !{!63, !60, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z: %probeA"}
!64 = !{!65, !65, i64 0}
!65 = !{!"float", !56, i64 0}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 2}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 1}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 2}

