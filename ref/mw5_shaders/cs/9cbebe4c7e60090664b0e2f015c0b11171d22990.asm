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
; shader hash: 1231740a825c584a223d18f2bbb4d79f
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
%"class.RWTexture2DArray<vector<float, 4> >" = type { <4 x float> }
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

define void @cs_del_sh_sample_lightgrid_reflection_volumes_1_lowres() {
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
  %38 = add i32 %37, 6
  %39 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %38, i32 0)  ; BufferLoad(srv,index,wot)
  %40 = extractvalue %dx.types.ResRet.i32 %39, 0
  %41 = icmp ult i32 %30, %40
  br i1 %41, label %42, label %1886, !dx.controlflow.hints !45

; <label>:42                                      ; preds = %0
  %43 = add i32 %37, 9
  %44 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 %43)  ; CBufferLoadLegacy(handle,regIndex)
  %45 = extractvalue %dx.types.CBufRet.i32 %44, 2
  %46 = add i32 %45, %30
  %47 = shl i32 %46, 5
  %48 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %47, i32 undef)  ; BufferLoad(srv,index,wot)
  %49 = extractvalue %dx.types.ResRet.i32 %48, 0
  %50 = extractvalue %dx.types.ResRet.i32 %48, 1
  %51 = extractvalue %dx.types.ResRet.i32 %48, 2
  %52 = extractvalue %dx.types.ResRet.i32 %48, 3
  %53 = lshr i32 %52, 14
  %54 = and i32 %53, 16383
  %55 = and i32 %52, 16383
  %56 = bitcast i32 %49 to float
  %57 = bitcast i32 %50 to float
  %58 = bitcast i32 %51 to float
  %59 = and i32 %52, 536870912
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %100, label %61, !dx.controlflow.hints !46

; <label>:61                                      ; preds = %42
  %62 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %63 = extractvalue %dx.types.CBufRet.f32 %62, 2
  %64 = extractvalue %dx.types.CBufRet.f32 %62, 3
  %65 = fmul fast float %63, %56
  %66 = fmul fast float %64, %57
  %67 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %68 = extractvalue %dx.types.CBufRet.f32 %67, 0
  %69 = extractvalue %dx.types.CBufRet.f32 %67, 1
  %70 = fadd fast float %65, %68
  %71 = fadd fast float %66, %69
  %72 = call float @dx.op.unary.f32(i32 7, float %70)  ; Saturate(value)
  %73 = call float @dx.op.unary.f32(i32 7, float %71)  ; Saturate(value)
  %74 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %26, float %72, float %73, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %75 = extractvalue %dx.types.ResRet.f32 %74, 0
  %76 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %77 = extractvalue %dx.types.CBufRet.f32 %76, 0
  %78 = fmul fast float %77, %75
  %79 = fsub fast float %70, %72
  %80 = fsub fast float %71, %73
  %81 = extractvalue %dx.types.CBufRet.f32 %62, 0
  %82 = extractvalue %dx.types.CBufRet.f32 %62, 1
  %83 = fmul fast float %81, %79
  %84 = fmul fast float %82, %80
  %85 = fmul fast float %83, %83
  %86 = fmul fast float %84, %84
  %87 = fadd fast float %85, %86
  %88 = call float @dx.op.unary.f32(i32 24, float %87)  ; Sqrt(value)
  %89 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %90 = extractvalue %dx.types.CBufRet.f32 %89, 3
  %91 = fmul fast float %90, %88
  %92 = call float @dx.op.unary.f32(i32 7, float %91)  ; Saturate(value)
  %93 = extractvalue %dx.types.CBufRet.f32 %89, 2
  %94 = fsub fast float %93, %78
  %95 = fmul fast float %94, %92
  %96 = extractvalue %dx.types.CBufRet.f32 %76, 1
  %97 = fadd fast float %78, %58
  %98 = fadd fast float %97, %96
  %99 = fadd fast float %98, %95
  br label %100

; <label>:100                                     ; preds = %61, %42
  %101 = phi float [ %99, %61 ], [ %58, %42 ]
  %102 = or i32 %47, 16
  %103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %102, i32 undef)  ; BufferLoad(srv,index,wot)
  %104 = extractvalue %dx.types.ResRet.i32 %103, 0
  %105 = extractvalue %dx.types.ResRet.i32 %103, 1
  %106 = extractvalue %dx.types.ResRet.i32 %103, 2
  %107 = extractvalue %dx.types.ResRet.i32 %103, 3
  %108 = and i32 %104, 65535
  %109 = call float @dx.op.legacyF16ToF32(i32 131, i32 %108)  ; LegacyF16ToF32(value)
  %110 = lshr i32 %104, 16
  %111 = call float @dx.op.legacyF16ToF32(i32 131, i32 %110)  ; LegacyF16ToF32(value)
  %112 = and i32 %105, 1023
  %113 = uitofp i32 %112 to float
  %114 = lshr i32 %105, 10
  %115 = and i32 %114, 1023
  %116 = uitofp i32 %115 to float
  %117 = lshr i32 %105, 20
  %118 = and i32 %117, 1023
  %119 = uitofp i32 %118 to float
  %120 = fmul fast float %113, 0x3F60040100000000
  %121 = fmul fast float %116, 0x3F60040100000000
  %122 = fmul fast float %119, 0x3F60040100000000
  %123 = fadd fast float %120, -1.000000e+00
  %124 = fadd fast float %121, -1.000000e+00
  %125 = fadd fast float %122, -1.000000e+00
  %126 = and i32 %106, 1023
  %127 = uitofp i32 %126 to float
  %128 = lshr i32 %106, 10
  %129 = and i32 %128, 1023
  %130 = uitofp i32 %129 to float
  %131 = lshr i32 %106, 20
  %132 = and i32 %131, 1023
  %133 = uitofp i32 %132 to float
  %134 = fmul fast float %127, 0x3F60040100000000
  %135 = fmul fast float %130, 0x3F60040100000000
  %136 = fmul fast float %133, 0x3F60040100000000
  %137 = fadd fast float %134, -1.000000e+00
  %138 = fadd fast float %135, -1.000000e+00
  %139 = fadd fast float %136, -1.000000e+00
  %140 = and i32 %107, 65535
  %141 = call float @dx.op.legacyF16ToF32(i32 131, i32 %140)  ; LegacyF16ToF32(value)
  %142 = call float @dx.op.unary.f32(i32 13, float %141)  ; Sin(value)
  %143 = call float @dx.op.unary.f32(i32 12, float %141)  ; Cos(value)
  %144 = fmul fast float %143, %123
  %145 = fmul fast float %124, %143
  %146 = fmul fast float %125, %143
  %147 = fmul fast float %137, %142
  %148 = fmul fast float %138, %142
  %149 = fmul fast float %139, %142
  %150 = fadd fast float %144, %147
  %151 = fadd fast float %145, %148
  %152 = fadd fast float %146, %149
  %153 = fmul fast float %150, %109
  %154 = fmul fast float %151, %109
  %155 = fmul fast float %152, %109
  %156 = fmul fast float %123, %142
  %157 = fmul fast float %124, %142
  %158 = fmul fast float %125, %142
  %159 = fmul fast float %143, %137
  %160 = fmul fast float %138, %143
  %161 = fmul fast float %139, %143
  %162 = fsub fast float %156, %159
  %163 = fsub fast float %157, %160
  %164 = fsub fast float %158, %161
  %165 = fmul fast float %162, %111
  %166 = fmul fast float %163, %111
  %167 = fmul fast float %164, %111
  %168 = add i32 %54, %31
  %169 = add i32 %55, %32
  %170 = uitofp i32 %31 to float
  %171 = uitofp i32 %32 to float
  %172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %173 = extractvalue %dx.types.CBufRet.f32 %172, 1
  %174 = fdiv fast float %170, %173
  %175 = fdiv fast float %171, %173
  %176 = extractvalue %dx.types.CBufRet.f32 %172, 2
  %177 = fadd fast float %176, %174
  %178 = fadd fast float %176, %175
  %179 = fmul fast float %177, %153
  %180 = fmul fast float %177, %154
  %181 = fmul fast float %177, %155
  %182 = fmul fast float %178, %165
  %183 = fmul fast float %178, %166
  %184 = fmul fast float %178, %167
  %185 = fadd fast float %182, %179
  %186 = fmul fast float %185, 2.000000e+00
  %187 = fsub fast float %56, %153
  %188 = fsub fast float %187, %165
  %189 = fadd fast float %188, %186
  %190 = fadd fast float %183, %180
  %191 = fmul fast float %190, 2.000000e+00
  %192 = fsub fast float %57, %154
  %193 = fsub fast float %192, %166
  %194 = fadd fast float %193, %191
  %195 = fadd fast float %184, %181
  %196 = fmul fast float %195, 2.000000e+00
  %197 = fsub fast float %101, %155
  %198 = fsub fast float %197, %167
  %199 = fadd fast float %198, %196
  %200 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %201 = extractvalue %dx.types.CBufRet.i32 %200, 0
  %202 = icmp eq i32 %201, 1
  br i1 %202, label %203, label %238, !dx.controlflow.hints !47

; <label>:203                                     ; preds = %100
  %204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %205 = extractvalue %dx.types.CBufRet.f32 %204, 0
  %206 = extractvalue %dx.types.CBufRet.f32 %204, 1
  %207 = fsub fast float %189, %205
  %208 = fsub fast float %194, %206
  %209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %210 = extractvalue %dx.types.CBufRet.f32 %209, 0
  %211 = extractvalue %dx.types.CBufRet.f32 %209, 1
  %212 = fmul fast float %207, %210
  %213 = fmul fast float %208, %211
  %214 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %212, float %213, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %215 = extractvalue %dx.types.ResRet.f32 %214, 0
  %216 = fcmp fast ogt float %215, 0.000000e+00
  %217 = extractvalue %dx.types.CBufRet.i32 %200, 3
  %218 = icmp ne i32 %217, 0
  %219 = and i1 %216, %218
  br i1 %219, label %220, label %238, !dx.controlflow.hints !48

; <label>:220                                     ; preds = %203
  %221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %222 = extractvalue %dx.types.CBufRet.f32 %221, 0
  %223 = extractvalue %dx.types.CBufRet.f32 %221, 1
  %224 = fsub fast float %189, %222
  %225 = fsub fast float %194, %223
  %226 = fmul fast float %224, %224
  %227 = fmul fast float %225, %225
  %228 = fadd fast float %226, %227
  %229 = uitofp i32 %217 to float
  %230 = fmul fast float %229, %229
  %231 = fcmp fast ogt float %228, %230
  br i1 %231, label %238, label %232, !dx.controlflow.hints !49

; <label>:232                                     ; preds = %220
  %233 = call float @dx.op.unary.f32(i32 24, float %228)  ; Sqrt(value)
  %234 = fsub fast float %229, %233
  %235 = fmul fast float %234, 0x3F75555560000000
  %236 = call float @dx.op.unary.f32(i32 7, float %235)  ; Saturate(value)
  %237 = call float @dx.op.binary.f32(i32 36, float %236, float %215)  ; FMin(a,b)
  br label %238

; <label>:238                                     ; preds = %232, %220, %203, %100
  %239 = phi float [ 1.000000e+00, %100 ], [ %237, %232 ], [ %215, %203 ], [ 0.000000e+00, %220 ]
  %240 = fcmp fast ogt float %239, 0.000000e+00
  br i1 %240, label %241, label %911, !dx.controlflow.hints !50

; <label>:241                                     ; preds = %238
  %242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %243 = extractvalue %dx.types.CBufRet.f32 %242, 0
  %244 = extractvalue %dx.types.CBufRet.f32 %242, 1
  %245 = extractvalue %dx.types.CBufRet.f32 %242, 2
  %246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %247 = extractvalue %dx.types.CBufRet.f32 %246, 0
  %248 = extractvalue %dx.types.CBufRet.f32 %246, 1
  %249 = extractvalue %dx.types.CBufRet.f32 %246, 2
  %250 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %251 = extractvalue %dx.types.CBufRet.i32 %250, 1
  %252 = fsub fast float %189, %243
  %253 = fsub fast float %194, %244
  %254 = fsub fast float %199, %245
  %255 = fmul fast float %252, %247
  %256 = fmul fast float %253, %248
  %257 = fmul fast float %254, %249
  %258 = fcmp fast ole float %255, 0.000000e+00
  %259 = fcmp fast ole float %256, 0.000000e+00
  %260 = fcmp fast ole float %257, 0.000000e+00
  %261 = or i1 %258, %259
  %262 = or i1 %260, %261
  %263 = fcmp fast oge float %255, 1.000000e+00
  %264 = fcmp fast oge float %256, 1.000000e+00
  %265 = fcmp fast oge float %257, 1.000000e+00
  %266 = or i1 %263, %264
  %267 = or i1 %265, %266
  %268 = or i1 %262, %267
  br i1 %268, label %862, label %269, !dx.controlflow.hints !51

; <label>:269                                     ; preds = %241
  %270 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %271 = extractvalue %dx.types.CBufRet.i32 %270, 0
  %272 = fptosi float %252 to i32
  %273 = fptosi float %253 to i32
  %274 = fptosi float %254 to i32
  %275 = and i32 %251, 31
  %276 = ashr i32 %272, %275
  %277 = ashr i32 %273, %275
  %278 = ashr i32 %274, %275
  %279 = mul i32 %271, %277
  %280 = add nsw i32 %279, %276
  %281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %280, i32 0)  ; BufferLoad(srv,index,wot)
  %282 = extractvalue %dx.types.ResRet.i32 %281, 0
  %283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %280, i32 4)  ; BufferLoad(srv,index,wot)
  %284 = extractvalue %dx.types.ResRet.i32 %283, 0
  %285 = icmp slt i32 %278, %282
  %286 = icmp sgt i32 %278, %284
  %287 = or i1 %285, %286
  br i1 %287, label %862, label %288, !dx.controlflow.hints !52

; <label>:288                                     ; preds = %269
  %289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %280, i32 8)  ; BufferLoad(srv,index,wot)
  %290 = extractvalue %dx.types.ResRet.i32 %289, 0
  %291 = sub i32 %278, %282
  %292 = add nsw i32 %291, %290
  %293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %292, i32 undef)  ; BufferLoad(srv,index,wot)
  %294 = extractvalue %dx.types.ResRet.i32 %293, 0
  %295 = icmp eq i32 %294, -1
  br i1 %295, label %862, label %296, !dx.controlflow.hints !53

; <label>:296                                     ; preds = %288
  %297 = getelementptr inbounds [8 x i32], [8 x i32]* %34, i32 0, i32 0
  store i32 -1, i32* %297, align 4, !tbaa !54, !noalias !58
  %298 = getelementptr inbounds [8 x i32], [8 x i32]* %34, i32 0, i32 1
  store i32 -1, i32* %298, align 4, !tbaa !54, !noalias !58
  %299 = getelementptr inbounds [8 x i32], [8 x i32]* %34, i32 0, i32 2
  store i32 -1, i32* %299, align 4, !tbaa !54, !noalias !58
  %300 = getelementptr inbounds [8 x i32], [8 x i32]* %34, i32 0, i32 3
  store i32 -1, i32* %300, align 4, !tbaa !54, !noalias !58
  %301 = getelementptr inbounds [8 x i32], [8 x i32]* %34, i32 0, i32 4
  store i32 -1, i32* %301, align 4, !tbaa !54, !noalias !58
  %302 = getelementptr inbounds [8 x i32], [8 x i32]* %34, i32 0, i32 5
  store i32 -1, i32* %302, align 4, !tbaa !54, !noalias !58
  %303 = getelementptr inbounds [8 x i32], [8 x i32]* %34, i32 0, i32 6
  store i32 -1, i32* %303, align 4, !tbaa !54, !noalias !58
  %304 = getelementptr inbounds [8 x i32], [8 x i32]* %34, i32 0, i32 7
  store i32 -1, i32* %304, align 4, !tbaa !54, !noalias !58
  br label %305

; <label>:305                                     ; preds = %409, %296
  %306 = phi i32 [ -1, %296 ], [ %406, %409 ]
  %307 = phi i32 [ -1, %296 ], [ %401, %409 ]
  %308 = phi i32 [ -1, %296 ], [ %394, %409 ]
  %309 = phi i32 [ -1, %296 ], [ %389, %409 ]
  %310 = phi i32 [ -1, %296 ], [ %380, %409 ]
  %311 = phi i32 [ -1, %296 ], [ %375, %409 ]
  %312 = phi i32 [ -1, %296 ], [ %367, %409 ]
  %313 = phi i32 [ -1, %296 ], [ %360, %409 ]
  %314 = phi i32 [ %294, %296 ], [ %429, %409 ]
  %315 = phi i32 [ %251, %296 ], [ %316, %409 ]
  %316 = add nsw i32 %315, -2
  %317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %314, i32 undef)  ; BufferLoad(srv,index,wot)
  %318 = extractvalue %dx.types.ResRet.i32 %317, 0
  %319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %314, i32 undef)  ; BufferLoad(srv,index,wot)
  %320 = extractvalue %dx.types.ResRet.i32 %319, 0
  %321 = and i32 %318, 31
  %322 = shl i32 1, %321
  %323 = add i32 %322, 1
  %324 = and i32 %316, 31
  %325 = ashr i32 %272, %324
  %326 = ashr i32 %273, %324
  %327 = ashr i32 %274, %324
  %328 = and i32 %325, 3
  %329 = and i32 %326, 3
  %330 = and i32 %327, 3
  br label %331

; <label>:331                                     ; preds = %331, %305
  %332 = phi i32 [ %306, %305 ], [ %406, %331 ]
  %333 = phi i32 [ %307, %305 ], [ %401, %331 ]
  %334 = phi i32 [ %308, %305 ], [ %394, %331 ]
  %335 = phi i32 [ %309, %305 ], [ %389, %331 ]
  %336 = phi i32 [ %310, %305 ], [ %380, %331 ]
  %337 = phi i32 [ %311, %305 ], [ %375, %331 ]
  %338 = phi i32 [ %312, %305 ], [ %367, %331 ]
  %339 = phi i32 [ %313, %305 ], [ %360, %331 ]
  %340 = phi i32 [ 0, %305 ], [ %407, %331 ]
  %341 = sub i32 2, %340
  %342 = and i32 %341, 31
  %343 = lshr i32 %328, %342
  %344 = lshr i32 %329, %342
  %345 = lshr i32 %330, %342
  %346 = sub i32 %318, %340
  %347 = and i32 %346, 31
  %348 = shl i32 %343, %347
  %349 = shl i32 %344, %347
  %350 = shl i32 %345, %347
  %351 = shl i32 1, %347
  %352 = mul i32 %350, %323
  %353 = add i32 %352, %349
  %354 = mul i32 %353, %323
  %355 = add i32 %348, %320
  %356 = add i32 %355, %354
  %357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %356, i32 undef)  ; BufferLoad(srv,index,wot)
  %358 = extractvalue %dx.types.ResRet.i32 %357, 0
  %359 = icmp ne i32 %358, -1
  %360 = select i1 %359, i32 %358, i32 %339
  store i32 %360, i32* %297, align 4, !tbaa !54, !noalias !58
  %361 = add i32 %351, %320
  %362 = add i32 %361, %348
  %363 = add i32 %362, %354
  %364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %363, i32 undef)  ; BufferLoad(srv,index,wot)
  %365 = extractvalue %dx.types.ResRet.i32 %364, 0
  %366 = icmp ne i32 %365, -1
  %367 = select i1 %366, i32 %365, i32 %338
  store i32 %367, i32* %298, align 4, !tbaa !54, !noalias !58
  %368 = add i32 %349, %351
  %369 = add i32 %368, %352
  %370 = mul i32 %369, %323
  %371 = add i32 %355, %370
  %372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %371, i32 undef)  ; BufferLoad(srv,index,wot)
  %373 = extractvalue %dx.types.ResRet.i32 %372, 0
  %374 = icmp ne i32 %373, -1
  %375 = select i1 %374, i32 %373, i32 %337
  store i32 %375, i32* %299, align 4, !tbaa !54, !noalias !58
  %376 = add i32 %362, %370
  %377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %376, i32 undef)  ; BufferLoad(srv,index,wot)
  %378 = extractvalue %dx.types.ResRet.i32 %377, 0
  %379 = icmp ne i32 %378, -1
  %380 = select i1 %379, i32 %378, i32 %336
  store i32 %380, i32* %300, align 4, !tbaa !54, !noalias !58
  %381 = add i32 %350, %351
  %382 = mul i32 %381, %323
  %383 = add i32 %382, %349
  %384 = mul i32 %383, %323
  %385 = add i32 %355, %384
  %386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %385, i32 undef)  ; BufferLoad(srv,index,wot)
  %387 = extractvalue %dx.types.ResRet.i32 %386, 0
  %388 = icmp ne i32 %387, -1
  %389 = select i1 %388, i32 %387, i32 %335
  store i32 %389, i32* %301, align 4, !tbaa !54, !noalias !58
  %390 = add i32 %362, %384
  %391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %390, i32 undef)  ; BufferLoad(srv,index,wot)
  %392 = extractvalue %dx.types.ResRet.i32 %391, 0
  %393 = icmp ne i32 %392, -1
  %394 = select i1 %393, i32 %392, i32 %334
  store i32 %394, i32* %302, align 4, !tbaa !54, !noalias !58
  %395 = add i32 %368, %382
  %396 = mul i32 %395, %323
  %397 = add i32 %355, %396
  %398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %399 = extractvalue %dx.types.ResRet.i32 %398, 0
  %400 = icmp ne i32 %399, -1
  %401 = select i1 %400, i32 %399, i32 %333
  store i32 %401, i32* %303, align 4, !tbaa !54, !noalias !58
  %402 = add i32 %362, %396
  %403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %404 = extractvalue %dx.types.ResRet.i32 %403, 0
  %405 = icmp ne i32 %404, -1
  %406 = select i1 %405, i32 %404, i32 %332
  store i32 %406, i32* %304, align 4, !tbaa !54, !noalias !58
  %407 = add i32 %340, 1
  %408 = icmp ugt i32 %407, %318
  br i1 %408, label %409, label %331

; <label>:409                                     ; preds = %331
  %410 = shl nuw nsw i32 %330, 4
  %411 = shl nuw nsw i32 %329, 2
  %412 = lshr i32 %330, 1
  %413 = and i32 %410, 16
  %414 = or i32 %411, %328
  %415 = or i32 %414, %413
  %416 = shl i32 1, %415
  %417 = shl nuw nsw i32 %412, 2
  %418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %314, i32 %417)  ; BufferLoad(srv,index,wot)
  %419 = extractvalue %dx.types.ResRet.i32 %418, 0
  %420 = and i32 %419, %416
  %421 = icmp eq i32 %420, 0
  %422 = add i32 %416, -1
  %423 = and i32 %419, %422
  %424 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %423)  ; Countbits(value)
  %425 = or i32 %417, 8
  %426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %314, i32 %425)  ; BufferLoad(srv,index,wot)
  %427 = extractvalue %dx.types.ResRet.i32 %426, 0
  %428 = add i32 %427, %424
  %429 = select i1 %421, i32 -1, i32 %428
  %430 = icmp eq i32 %429, -1
  br i1 %430, label %431, label %305

; <label>:431                                     ; preds = %409
  br label %432

; <label>:432                                     ; preds = %718, %431
  %433 = phi i32 [ %720, %718 ], [ %360, %431 ]
  %434 = phi float [ %715, %718 ], [ 0.000000e+00, %431 ]
  %435 = phi i32 [ %716, %718 ], [ 0, %431 ]
  %436 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %433, i32 undef)  ; BufferLoad(srv,index,wot)
  %437 = extractvalue %dx.types.ResRet.f32 %436, 0
  %438 = extractvalue %dx.types.ResRet.f32 %436, 1
  %439 = extractvalue %dx.types.ResRet.f32 %436, 2
  %440 = extractvalue %dx.types.ResRet.f32 %436, 3
  %441 = fsub fast float %189, %437
  %442 = fsub fast float %194, %438
  %443 = fsub fast float %199, %439
  %444 = fmul fast float %441, %440
  %445 = fmul fast float %442, %440
  %446 = fmul fast float %443, %440
  %447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %433, i32 undef)  ; BufferLoad(srv,index,wot)
  %448 = extractvalue %dx.types.ResRet.i32 %447, 0
  %449 = call float @dx.op.unary.f32(i32 6, float %444)  ; FAbs(value)
  %450 = call float @dx.op.unary.f32(i32 6, float %445)  ; FAbs(value)
  %451 = fsub fast float 1.000000e+00, %449
  %452 = fsub fast float 1.000000e+00, %450
  %453 = call float @dx.op.unary.f32(i32 7, float %451)  ; Saturate(value)
  %454 = call float @dx.op.unary.f32(i32 7, float %452)  ; Saturate(value)
  %455 = fmul fast float %454, %453
  %456 = mul i32 %448, 29
  %457 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %456, i32 undef)  ; BufferLoad(srv,index,wot)
  %458 = extractvalue %dx.types.ResRet.f32 %457, 0
  %459 = extractvalue %dx.types.ResRet.f32 %457, 1
  %460 = extractvalue %dx.types.ResRet.f32 %457, 2
  %461 = extractvalue %dx.types.ResRet.f32 %457, 3
  %462 = add i32 %456, 1
  %463 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %462, i32 undef)  ; BufferLoad(srv,index,wot)
  %464 = extractvalue %dx.types.ResRet.f32 %463, 0
  %465 = extractvalue %dx.types.ResRet.f32 %463, 1
  %466 = extractvalue %dx.types.ResRet.f32 %463, 2
  %467 = extractvalue %dx.types.ResRet.f32 %463, 3
  %468 = add i32 %456, 2
  %469 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %468, i32 undef)  ; BufferLoad(srv,index,wot)
  %470 = extractvalue %dx.types.ResRet.f32 %469, 0
  %471 = extractvalue %dx.types.ResRet.f32 %469, 1
  %472 = extractvalue %dx.types.ResRet.f32 %469, 2
  %473 = extractvalue %dx.types.ResRet.f32 %469, 3
  %474 = add i32 %456, 3
  %475 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %476 = extractvalue %dx.types.ResRet.f32 %475, 0
  %477 = extractvalue %dx.types.ResRet.f32 %475, 1
  %478 = extractvalue %dx.types.ResRet.f32 %475, 2
  %479 = extractvalue %dx.types.ResRet.f32 %475, 3
  %480 = add i32 %456, 4
  %481 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %480, i32 undef)  ; BufferLoad(srv,index,wot)
  %482 = extractvalue %dx.types.ResRet.f32 %481, 0
  %483 = extractvalue %dx.types.ResRet.f32 %481, 1
  %484 = extractvalue %dx.types.ResRet.f32 %481, 2
  %485 = extractvalue %dx.types.ResRet.f32 %481, 3
  %486 = add i32 %456, 5
  %487 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %486, i32 undef)  ; BufferLoad(srv,index,wot)
  %488 = extractvalue %dx.types.ResRet.f32 %487, 0
  %489 = extractvalue %dx.types.ResRet.f32 %487, 1
  %490 = extractvalue %dx.types.ResRet.f32 %487, 2
  %491 = extractvalue %dx.types.ResRet.f32 %487, 3
  %492 = add i32 %456, 6
  %493 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %492, i32 undef)  ; BufferLoad(srv,index,wot)
  %494 = extractvalue %dx.types.ResRet.f32 %493, 0
  %495 = extractvalue %dx.types.ResRet.f32 %493, 1
  %496 = extractvalue %dx.types.ResRet.f32 %493, 2
  %497 = extractvalue %dx.types.ResRet.f32 %493, 3
  %498 = add i32 %456, 7
  %499 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %498, i32 undef)  ; BufferLoad(srv,index,wot)
  %500 = extractvalue %dx.types.ResRet.f32 %499, 0
  %501 = extractvalue %dx.types.ResRet.f32 %499, 1
  %502 = extractvalue %dx.types.ResRet.f32 %499, 2
  %503 = extractvalue %dx.types.ResRet.f32 %499, 3
  %504 = fmul fast float %458, %444
  %505 = fmul fast float %470, %445
  %506 = fadd fast float %505, %504
  %507 = fmul fast float %482, %446
  %508 = fadd fast float %506, %507
  %509 = fmul fast float %459, %444
  %510 = fmul fast float %471, %445
  %511 = fadd fast float %510, %509
  %512 = fmul fast float %483, %446
  %513 = fadd fast float %511, %512
  %514 = fmul fast float %460, %444
  %515 = fmul fast float %472, %445
  %516 = fadd fast float %515, %514
  %517 = fmul fast float %484, %446
  %518 = fadd fast float %516, %517
  %519 = fmul fast float %461, %444
  %520 = fmul fast float %473, %445
  %521 = fadd fast float %520, %519
  %522 = fmul fast float %485, %446
  %523 = fadd fast float %521, %522
  %524 = fmul fast float %464, %444
  %525 = fmul fast float %476, %445
  %526 = fadd fast float %525, %524
  %527 = fmul fast float %488, %446
  %528 = fadd fast float %526, %527
  %529 = fmul fast float %465, %444
  %530 = fmul fast float %477, %445
  %531 = fadd fast float %530, %529
  %532 = fmul fast float %489, %446
  %533 = fadd fast float %531, %532
  %534 = fmul fast float %466, %444
  %535 = fmul fast float %478, %445
  %536 = fadd fast float %535, %534
  %537 = fmul fast float %490, %446
  %538 = fadd fast float %536, %537
  %539 = fmul fast float %467, %444
  %540 = fmul fast float %479, %445
  %541 = fadd fast float %540, %539
  %542 = fmul fast float %491, %446
  %543 = fadd fast float %541, %542
  %544 = fadd fast float %508, %494
  %545 = fadd fast float %513, %495
  %546 = fadd fast float %518, %496
  %547 = fadd fast float %523, %497
  %548 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %544)  ; FMax(a,b)
  %549 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %545)  ; FMax(a,b)
  %550 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %546)  ; FMax(a,b)
  %551 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %547)  ; FMax(a,b)
  %552 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %544)  ; FMin(a,b)
  %553 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %545)  ; FMin(a,b)
  %554 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %546)  ; FMin(a,b)
  %555 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %547)  ; FMin(a,b)
  %556 = fmul fast float %552, 0x3F847AE140000000
  %557 = fmul fast float %553, 0x3F847AE140000000
  %558 = fmul fast float %554, 0x3F847AE140000000
  %559 = fmul fast float %555, 0x3F847AE140000000
  %560 = fadd fast float %556, %548
  %561 = fadd fast float %557, %549
  %562 = fadd fast float %558, %550
  %563 = fadd fast float %559, %551
  %564 = fadd fast float %528, %500
  %565 = fadd fast float %533, %501
  %566 = fadd fast float %538, %502
  %567 = fadd fast float %543, %503
  %568 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %564)  ; FMax(a,b)
  %569 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %565)  ; FMax(a,b)
  %570 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %566)  ; FMax(a,b)
  %571 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %567)  ; FMax(a,b)
  %572 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %564)  ; FMin(a,b)
  %573 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %565)  ; FMin(a,b)
  %574 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %566)  ; FMin(a,b)
  %575 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %567)  ; FMin(a,b)
  %576 = fmul fast float %572, 0x3F847AE140000000
  %577 = fmul fast float %573, 0x3F847AE140000000
  %578 = fmul fast float %574, 0x3F847AE140000000
  %579 = fmul fast float %575, 0x3F847AE140000000
  %580 = fadd fast float %576, %568
  %581 = fadd fast float %577, %569
  %582 = fadd fast float %578, %570
  %583 = fadd fast float %579, %571
  br label %584

; <label>:584                                     ; preds = %584, %432
  %585 = phi i32 [ 0, %432 ], [ %605, %584 ]
  %586 = add i32 %456, 8
  %587 = shl i32 %585, 1
  %588 = add i32 %586, %587
  %589 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %588, i32 undef)  ; BufferLoad(srv,index,wot)
  %590 = extractvalue %dx.types.ResRet.f32 %589, 0
  %591 = extractvalue %dx.types.ResRet.f32 %589, 1
  %592 = extractvalue %dx.types.ResRet.f32 %589, 2
  %593 = extractvalue %dx.types.ResRet.f32 %589, 3
  %594 = add i32 %456, 9
  %595 = add i32 %594, %587
  %596 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %595, i32 undef)  ; BufferLoad(srv,index,wot)
  %597 = extractvalue %dx.types.ResRet.f32 %596, 0
  %598 = extractvalue %dx.types.ResRet.f32 %596, 1
  %599 = extractvalue %dx.types.ResRet.f32 %596, 2
  %600 = extractvalue %dx.types.ResRet.f32 %596, 3
  %601 = call float @dx.op.dot4.f32(i32 56, float %590, float %591, float %592, float %593, float %560, float %561, float %562, float %563)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %602 = call float @dx.op.dot4.f32(i32 56, float %597, float %598, float %599, float %600, float %580, float %581, float %582, float %583)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %603 = fadd fast float %602, %601
  %604 = getelementptr inbounds [8 x float], [8 x float]* %33, i32 0, i32 %585
  store float %603, float* %604, align 4, !tbaa !64, !noalias !58
  %605 = add nuw nsw i32 %585, 1
  %606 = icmp eq i32 %605, 8
  br i1 %606, label %607, label %584

; <label>:607                                     ; preds = %584
  %608 = call float @dx.op.unary.f32(i32 6, float %446)  ; FAbs(value)
  %609 = fsub fast float 1.000000e+00, %608
  %610 = call float @dx.op.unary.f32(i32 7, float %609)  ; Saturate(value)
  %611 = fmul fast float %455, %610
  %612 = add i32 %456, 24
  %613 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %612, i32 undef)  ; BufferLoad(srv,index,wot)
  %614 = extractvalue %dx.types.ResRet.f32 %613, 0
  %615 = extractvalue %dx.types.ResRet.f32 %613, 1
  %616 = extractvalue %dx.types.ResRet.f32 %613, 2
  %617 = extractvalue %dx.types.ResRet.f32 %613, 3
  %618 = add i32 %456, 25
  %619 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %618, i32 undef)  ; BufferLoad(srv,index,wot)
  %620 = extractvalue %dx.types.ResRet.f32 %619, 0
  %621 = extractvalue %dx.types.ResRet.f32 %619, 1
  %622 = extractvalue %dx.types.ResRet.f32 %619, 2
  %623 = extractvalue %dx.types.ResRet.f32 %619, 3
  %624 = getelementptr inbounds [8 x float], [8 x float]* %33, i32 0, i32 0
  %625 = load float, float* %624, align 4, !tbaa !64, !noalias !58
  %626 = fadd fast float %625, %614
  %627 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %626)  ; FMax(a,b)
  %628 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %626)  ; FMin(a,b)
  %629 = fmul fast float %628, 0x3F847AE140000000
  %630 = fadd fast float %629, %627
  store float %630, float* %624, align 4, !tbaa !64, !noalias !58
  %631 = getelementptr inbounds [8 x float], [8 x float]* %33, i32 0, i32 1
  %632 = load float, float* %631, align 4, !tbaa !64, !noalias !58
  %633 = fadd fast float %632, %615
  %634 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %633)  ; FMax(a,b)
  %635 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %633)  ; FMin(a,b)
  %636 = fmul fast float %635, 0x3F847AE140000000
  %637 = fadd fast float %636, %634
  store float %637, float* %631, align 4, !tbaa !64, !noalias !58
  %638 = getelementptr inbounds [8 x float], [8 x float]* %33, i32 0, i32 2
  %639 = load float, float* %638, align 4, !tbaa !64, !noalias !58
  %640 = fadd fast float %639, %616
  %641 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %640)  ; FMax(a,b)
  %642 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %640)  ; FMin(a,b)
  %643 = fmul fast float %642, 0x3F847AE140000000
  %644 = fadd fast float %643, %641
  store float %644, float* %638, align 4, !tbaa !64, !noalias !58
  %645 = getelementptr inbounds [8 x float], [8 x float]* %33, i32 0, i32 3
  %646 = load float, float* %645, align 4, !tbaa !64, !noalias !58
  %647 = fadd fast float %646, %617
  %648 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %647)  ; FMax(a,b)
  %649 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %647)  ; FMin(a,b)
  %650 = fmul fast float %649, 0x3F847AE140000000
  %651 = fadd fast float %650, %648
  store float %651, float* %645, align 4, !tbaa !64, !noalias !58
  %652 = getelementptr inbounds [8 x float], [8 x float]* %33, i32 0, i32 4
  %653 = load float, float* %652, align 4, !tbaa !64, !noalias !58
  %654 = fadd fast float %653, %620
  %655 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %654)  ; FMax(a,b)
  %656 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %654)  ; FMin(a,b)
  %657 = fmul fast float %656, 0x3F847AE140000000
  %658 = fadd fast float %657, %655
  store float %658, float* %652, align 4, !tbaa !64, !noalias !58
  %659 = getelementptr inbounds [8 x float], [8 x float]* %33, i32 0, i32 5
  %660 = load float, float* %659, align 4, !tbaa !64, !noalias !58
  %661 = fadd fast float %660, %621
  %662 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %661)  ; FMax(a,b)
  %663 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %661)  ; FMin(a,b)
  %664 = fmul fast float %663, 0x3F847AE140000000
  %665 = fadd fast float %664, %662
  store float %665, float* %659, align 4, !tbaa !64, !noalias !58
  %666 = getelementptr inbounds [8 x float], [8 x float]* %33, i32 0, i32 6
  %667 = load float, float* %666, align 4, !tbaa !64, !noalias !58
  %668 = fadd fast float %667, %622
  %669 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %668)  ; FMax(a,b)
  %670 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %668)  ; FMin(a,b)
  %671 = fmul fast float %670, 0x3F847AE140000000
  %672 = fadd fast float %671, %669
  store float %672, float* %666, align 4, !tbaa !64, !noalias !58
  %673 = getelementptr inbounds [8 x float], [8 x float]* %33, i32 0, i32 7
  %674 = load float, float* %673, align 4, !tbaa !64, !noalias !58
  %675 = fadd fast float %674, %623
  %676 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %675)  ; FMax(a,b)
  %677 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %675)  ; FMin(a,b)
  %678 = fmul fast float %677, 0x3F847AE140000000
  %679 = fadd fast float %678, %676
  store float %679, float* %673, align 4, !tbaa !64, !noalias !58
  %680 = add i32 %456, 26
  %681 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %680, i32 undef)  ; BufferLoad(srv,index,wot)
  %682 = extractvalue %dx.types.ResRet.f32 %681, 0
  %683 = extractvalue %dx.types.ResRet.f32 %681, 1
  %684 = extractvalue %dx.types.ResRet.f32 %681, 2
  %685 = extractvalue %dx.types.ResRet.f32 %681, 3
  %686 = add i32 %456, 27
  %687 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %686, i32 undef)  ; BufferLoad(srv,index,wot)
  %688 = extractvalue %dx.types.ResRet.f32 %687, 0
  %689 = extractvalue %dx.types.ResRet.f32 %687, 1
  %690 = extractvalue %dx.types.ResRet.f32 %687, 2
  %691 = extractvalue %dx.types.ResRet.f32 %687, 3
  %692 = fmul fast float %630, %682
  %693 = fmul fast float %637, %683
  %694 = fadd fast float %693, %692
  %695 = fmul fast float %644, %684
  %696 = fadd fast float %694, %695
  %697 = fmul fast float %651, %685
  %698 = fadd fast float %696, %697
  %699 = fmul fast float %658, %688
  %700 = fadd fast float %698, %699
  %701 = fmul fast float %665, %689
  %702 = fadd fast float %700, %701
  %703 = fmul fast float %672, %690
  %704 = fadd fast float %702, %703
  %705 = fmul fast float %679, %691
  %706 = fadd fast float %704, %705
  %707 = add i32 %456, 28
  %708 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %707, i32 undef)  ; BufferLoad(srv,index,wot)
  %709 = extractvalue %dx.types.ResRet.f32 %708, 0
  %710 = fadd fast float %706, %709
  %711 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %710)  ; FMax(a,b)
  %712 = fmul fast float %611, %711
  %713 = call float @dx.op.unary.f32(i32 7, float %712)  ; Saturate(value)
  %714 = getelementptr inbounds [8 x float], [8 x float]* %35, i32 0, i32 %435
  store float %713, float* %714, align 4, !tbaa !64, !noalias !58
  %715 = fadd fast float %713, %434
  %716 = add nuw nsw i32 %435, 1
  %717 = icmp eq i32 %716, 8
  br i1 %717, label %721, label %718

; <label>:718                                     ; preds = %607
  %719 = getelementptr inbounds [8 x i32], [8 x i32]* %34, i32 0, i32 %716
  %720 = load i32, i32* %719, align 4, !tbaa !54, !noalias !58
  br label %432

; <label>:721                                     ; preds = %607
  %722 = fcmp fast ugt float %715, 0x3EE4F8B580000000
  br i1 %722, label %723, label %862, !dx.controlflow.hints !66

; <label>:723                                     ; preds = %721
  %724 = fcmp fast ogt float %715, 0x3EE4F8B580000000
  %725 = fdiv fast float 1.000000e+00, %715
  %726 = select i1 %724, float %725, float 1.000000e+00
  %727 = getelementptr inbounds [8 x float], [8 x float]* %35, i32 0, i32 0
  %728 = load float, float* %727, align 4, !tbaa !64, !noalias !58
  %729 = fmul fast float %728, %726
  store float %729, float* %727, align 4, !tbaa !64, !noalias !58
  %730 = getelementptr inbounds [8 x float], [8 x float]* %35, i32 0, i32 1
  %731 = load float, float* %730, align 4, !tbaa !64, !noalias !58
  %732 = fmul fast float %731, %726
  store float %732, float* %730, align 4, !tbaa !64, !noalias !58
  %733 = getelementptr inbounds [8 x float], [8 x float]* %35, i32 0, i32 2
  %734 = load float, float* %733, align 4, !tbaa !64, !noalias !58
  %735 = fmul fast float %734, %726
  store float %735, float* %733, align 4, !tbaa !64, !noalias !58
  %736 = getelementptr inbounds [8 x float], [8 x float]* %35, i32 0, i32 3
  %737 = load float, float* %736, align 4, !tbaa !64, !noalias !58
  %738 = fmul fast float %737, %726
  store float %738, float* %736, align 4, !tbaa !64, !noalias !58
  %739 = getelementptr inbounds [8 x float], [8 x float]* %35, i32 0, i32 4
  %740 = load float, float* %739, align 4, !tbaa !64, !noalias !58
  %741 = fmul fast float %740, %726
  store float %741, float* %739, align 4, !tbaa !64, !noalias !58
  %742 = getelementptr inbounds [8 x float], [8 x float]* %35, i32 0, i32 5
  %743 = load float, float* %742, align 4, !tbaa !64, !noalias !58
  %744 = fmul fast float %743, %726
  store float %744, float* %742, align 4, !tbaa !64, !noalias !58
  %745 = getelementptr inbounds [8 x float], [8 x float]* %35, i32 0, i32 6
  %746 = load float, float* %745, align 4, !tbaa !64, !noalias !58
  %747 = fmul fast float %746, %726
  store float %747, float* %745, align 4, !tbaa !64, !noalias !58
  %748 = getelementptr inbounds [8 x float], [8 x float]* %35, i32 0, i32 7
  %749 = load float, float* %748, align 4, !tbaa !64, !noalias !58
  %750 = fmul fast float %749, %726
  store float %750, float* %748, align 4, !tbaa !64, !noalias !58
  br label %751

; <label>:751                                     ; preds = %856, %723
  %752 = phi float [ %860, %856 ], [ %729, %723 ]
  %753 = phi i32 [ %858, %856 ], [ %360, %723 ]
  %754 = phi float [ %835, %856 ], [ 0.000000e+00, %723 ]
  %755 = phi float [ %833, %856 ], [ 0.000000e+00, %723 ]
  %756 = phi float [ %831, %856 ], [ 0.000000e+00, %723 ]
  %757 = phi float [ %827, %856 ], [ 0.000000e+00, %723 ]
  %758 = phi float [ %844, %856 ], [ 0.000000e+00, %723 ]
  %759 = phi float [ %842, %856 ], [ 0.000000e+00, %723 ]
  %760 = phi float [ %840, %856 ], [ 0.000000e+00, %723 ]
  %761 = phi float [ %837, %856 ], [ 0.000000e+00, %723 ]
  %762 = phi float [ %853, %856 ], [ 0.000000e+00, %723 ]
  %763 = phi float [ %851, %856 ], [ 0.000000e+00, %723 ]
  %764 = phi float [ %849, %856 ], [ 0.000000e+00, %723 ]
  %765 = phi float [ %846, %856 ], [ 0.000000e+00, %723 ]
  %766 = phi i32 [ %854, %856 ], [ 0, %723 ]
  %767 = shl i32 %753, 5
  %768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %767, i32 undef)  ; BufferLoad(srv,index,wot)
  %769 = extractvalue %dx.types.ResRet.i32 %768, 0
  %770 = extractvalue %dx.types.ResRet.i32 %768, 1
  %771 = extractvalue %dx.types.ResRet.i32 %768, 3
  %772 = or i32 %767, 16
  %773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %772, i32 undef)  ; BufferLoad(srv,index,wot)
  %774 = extractvalue %dx.types.ResRet.i32 %773, 1
  %775 = shl i32 %769, 4
  %776 = and i32 %775, 32752
  %777 = call float @dx.op.legacyF16ToF32(i32 131, i32 %776)  ; LegacyF16ToF32(value)
  %778 = lshr i32 %769, 7
  %779 = and i32 %778, 32752
  %780 = call float @dx.op.legacyF16ToF32(i32 131, i32 %779)  ; LegacyF16ToF32(value)
  %781 = lshr i32 %769, 22
  %782 = shl nuw nsw i32 %781, 5
  %783 = call float @dx.op.legacyF16ToF32(i32 131, i32 %782)  ; LegacyF16ToF32(value)
  %784 = and i32 %770, 255
  %785 = uitofp i32 %784 to float
  %786 = fmul fast float %785, 0x3F80204080000000
  %787 = fadd fast float %786, -1.000000e+00
  %788 = lshr i32 %770, 8
  %789 = and i32 %788, 255
  %790 = uitofp i32 %789 to float
  %791 = fmul fast float %790, 0x3F80204080000000
  %792 = fadd fast float %791, -1.000000e+00
  %793 = lshr i32 %770, 16
  %794 = and i32 %793, 255
  %795 = uitofp i32 %794 to float
  %796 = fmul fast float %795, 0x3F80204080000000
  %797 = fadd fast float %796, -1.000000e+00
  %798 = and i32 %771, 255
  %799 = uitofp i32 %798 to float
  %800 = fmul fast float %799, 0x3F80204080000000
  %801 = fadd fast float %800, -1.000000e+00
  %802 = lshr i32 %771, 8
  %803 = and i32 %802, 255
  %804 = uitofp i32 %803 to float
  %805 = fmul fast float %804, 0x3F80204080000000
  %806 = fadd fast float %805, -1.000000e+00
  %807 = lshr i32 %771, 16
  %808 = and i32 %807, 255
  %809 = uitofp i32 %808 to float
  %810 = fmul fast float %809, 0x3F80204080000000
  %811 = fadd fast float %810, -1.000000e+00
  %812 = and i32 %774, 255
  %813 = uitofp i32 %812 to float
  %814 = fmul fast float %813, 0x3F80204080000000
  %815 = fadd fast float %814, -1.000000e+00
  %816 = lshr i32 %774, 8
  %817 = and i32 %816, 255
  %818 = uitofp i32 %817 to float
  %819 = fmul fast float %818, 0x3F80204080000000
  %820 = fadd fast float %819, -1.000000e+00
  %821 = lshr i32 %774, 16
  %822 = and i32 %821, 255
  %823 = uitofp i32 %822 to float
  %824 = fmul fast float %823, 0x3F80204080000000
  %825 = fadd fast float %824, -1.000000e+00
  %826 = fmul fast float %777, %752
  %827 = fadd fast float %826, %757
  %828 = fmul fast float %752, 0x3FFBB67AE0000000
  %829 = fmul fast float %828, %777
  %830 = fmul fast float %829, %787
  %831 = fadd fast float %830, %756
  %832 = fmul fast float %829, %792
  %833 = fadd fast float %832, %755
  %834 = fmul fast float %829, %797
  %835 = fadd fast float %834, %754
  %836 = fmul fast float %780, %752
  %837 = fadd fast float %836, %761
  %838 = fmul fast float %828, %780
  %839 = fmul fast float %838, %801
  %840 = fadd fast float %839, %760
  %841 = fmul fast float %838, %806
  %842 = fadd fast float %841, %759
  %843 = fmul fast float %838, %811
  %844 = fadd fast float %843, %758
  %845 = fmul fast float %783, %752
  %846 = fadd fast float %845, %765
  %847 = fmul fast float %828, %783
  %848 = fmul fast float %847, %815
  %849 = fadd fast float %848, %764
  %850 = fmul fast float %847, %820
  %851 = fadd fast float %850, %763
  %852 = fmul fast float %847, %825
  %853 = fadd fast float %852, %762
  %854 = add nuw nsw i32 %766, 1
  %855 = icmp eq i32 %854, 8
  br i1 %855, label %861, label %856

; <label>:856                                     ; preds = %751
  %857 = getelementptr inbounds [8 x i32], [8 x i32]* %34, i32 0, i32 %854
  %858 = load i32, i32* %857, align 4, !tbaa !54, !noalias !58
  %859 = getelementptr inbounds [8 x float], [8 x float]* %35, i32 0, i32 %854
  %860 = load float, float* %859, align 4, !tbaa !64, !noalias !58
  br label %751

; <label>:861                                     ; preds = %751
  br label %862

; <label>:862                                     ; preds = %861, %721, %288, %269, %241
  %863 = phi float [ 0.000000e+00, %241 ], [ 0.000000e+00, %269 ], [ 0.000000e+00, %288 ], [ 0.000000e+00, %721 ], [ %835, %861 ]
  %864 = phi float [ 0.000000e+00, %241 ], [ 0.000000e+00, %269 ], [ 0.000000e+00, %288 ], [ 0.000000e+00, %721 ], [ %833, %861 ]
  %865 = phi float [ 0.000000e+00, %241 ], [ 0.000000e+00, %269 ], [ 0.000000e+00, %288 ], [ 0.000000e+00, %721 ], [ %831, %861 ]
  %866 = phi float [ 0.000000e+00, %241 ], [ 0.000000e+00, %269 ], [ 0.000000e+00, %288 ], [ 0.000000e+00, %721 ], [ %827, %861 ]
  %867 = phi float [ 0.000000e+00, %241 ], [ 0.000000e+00, %269 ], [ 0.000000e+00, %288 ], [ 0.000000e+00, %721 ], [ %844, %861 ]
  %868 = phi float [ 0.000000e+00, %241 ], [ 0.000000e+00, %269 ], [ 0.000000e+00, %288 ], [ 0.000000e+00, %721 ], [ %842, %861 ]
  %869 = phi float [ 0.000000e+00, %241 ], [ 0.000000e+00, %269 ], [ 0.000000e+00, %288 ], [ 0.000000e+00, %721 ], [ %840, %861 ]
  %870 = phi float [ 0.000000e+00, %241 ], [ 0.000000e+00, %269 ], [ 0.000000e+00, %288 ], [ 0.000000e+00, %721 ], [ %837, %861 ]
  %871 = phi float [ 0.000000e+00, %241 ], [ 0.000000e+00, %269 ], [ 0.000000e+00, %288 ], [ 0.000000e+00, %721 ], [ %853, %861 ]
  %872 = phi float [ 0.000000e+00, %241 ], [ 0.000000e+00, %269 ], [ 0.000000e+00, %288 ], [ 0.000000e+00, %721 ], [ %851, %861 ]
  %873 = phi float [ 0.000000e+00, %241 ], [ 0.000000e+00, %269 ], [ 0.000000e+00, %288 ], [ 0.000000e+00, %721 ], [ %849, %861 ]
  %874 = phi float [ 0.000000e+00, %241 ], [ 0.000000e+00, %269 ], [ 0.000000e+00, %288 ], [ 0.000000e+00, %721 ], [ %846, %861 ]
  %875 = phi i1 [ false, %241 ], [ false, %269 ], [ false, %288 ], [ false, %721 ], [ true, %861 ]
  br i1 %875, label %911, label %876, !dx.controlflow.hints !67

; <label>:876                                     ; preds = %862
  %877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %878 = extractvalue %dx.types.ResRet.i32 %877, 1
  %879 = extractvalue %dx.types.ResRet.i32 %877, 2
  %880 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %881 = extractvalue %dx.types.ResRet.i32 %880, 0
  %882 = extractvalue %dx.types.ResRet.i32 %880, 1
  %883 = extractvalue %dx.types.ResRet.i32 %880, 2
  %884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %885 = extractvalue %dx.types.ResRet.i32 %884, 0
  %886 = extractvalue %dx.types.ResRet.i32 %884, 1
  %887 = and i32 %885, 65535
  %888 = call float @dx.op.legacyF16ToF32(i32 131, i32 %887)  ; LegacyF16ToF32(value)
  %889 = lshr i32 %885, 16
  %890 = call float @dx.op.legacyF16ToF32(i32 131, i32 %889)  ; LegacyF16ToF32(value)
  %891 = and i32 %886, 65535
  %892 = call float @dx.op.legacyF16ToF32(i32 131, i32 %891)  ; LegacyF16ToF32(value)
  %893 = lshr i32 %886, 16
  %894 = call float @dx.op.legacyF16ToF32(i32 131, i32 %893)  ; LegacyF16ToF32(value)
  %895 = lshr i32 %881, 16
  %896 = call float @dx.op.legacyF16ToF32(i32 131, i32 %895)  ; LegacyF16ToF32(value)
  %897 = and i32 %882, 65535
  %898 = call float @dx.op.legacyF16ToF32(i32 131, i32 %897)  ; LegacyF16ToF32(value)
  %899 = lshr i32 %882, 16
  %900 = call float @dx.op.legacyF16ToF32(i32 131, i32 %899)  ; LegacyF16ToF32(value)
  %901 = and i32 %883, 65535
  %902 = call float @dx.op.legacyF16ToF32(i32 131, i32 %901)  ; LegacyF16ToF32(value)
  %903 = and i32 %878, 65535
  %904 = call float @dx.op.legacyF16ToF32(i32 131, i32 %903)  ; LegacyF16ToF32(value)
  %905 = lshr i32 %878, 16
  %906 = call float @dx.op.legacyF16ToF32(i32 131, i32 %905)  ; LegacyF16ToF32(value)
  %907 = and i32 %879, 65535
  %908 = call float @dx.op.legacyF16ToF32(i32 131, i32 %907)  ; LegacyF16ToF32(value)
  %909 = lshr i32 %879, 16
  %910 = call float @dx.op.legacyF16ToF32(i32 131, i32 %909)  ; LegacyF16ToF32(value)
  br label %911

; <label>:911                                     ; preds = %876, %862, %238
  %912 = phi float [ %910, %876 ], [ %871, %862 ], [ 0.000000e+00, %238 ]
  %913 = phi float [ %908, %876 ], [ %872, %862 ], [ 0.000000e+00, %238 ]
  %914 = phi float [ %906, %876 ], [ %873, %862 ], [ 0.000000e+00, %238 ]
  %915 = phi float [ %904, %876 ], [ %874, %862 ], [ 0.000000e+00, %238 ]
  %916 = phi float [ %902, %876 ], [ %867, %862 ], [ 0.000000e+00, %238 ]
  %917 = phi float [ %900, %876 ], [ %868, %862 ], [ 0.000000e+00, %238 ]
  %918 = phi float [ %898, %876 ], [ %869, %862 ], [ 0.000000e+00, %238 ]
  %919 = phi float [ %896, %876 ], [ %870, %862 ], [ 0.000000e+00, %238 ]
  %920 = phi float [ %894, %876 ], [ %863, %862 ], [ 0.000000e+00, %238 ]
  %921 = phi float [ %892, %876 ], [ %864, %862 ], [ 0.000000e+00, %238 ]
  %922 = phi float [ %890, %876 ], [ %865, %862 ], [ 0.000000e+00, %238 ]
  %923 = phi float [ %888, %876 ], [ %866, %862 ], [ 0.000000e+00, %238 ]
  %924 = fcmp fast olt float %239, 1.000000e+00
  br i1 %924, label %925, label %1570, !dx.controlflow.hints !68

; <label>:925                                     ; preds = %911
  %926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %927 = extractvalue %dx.types.CBufRet.f32 %926, 0
  %928 = extractvalue %dx.types.CBufRet.f32 %926, 1
  %929 = fsub fast float %189, %927
  %930 = fsub fast float %194, %928
  %931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %932 = extractvalue %dx.types.CBufRet.f32 %931, 0
  %933 = extractvalue %dx.types.CBufRet.f32 %931, 1
  %934 = fmul fast float %929, %932
  %935 = fmul fast float %930, %933
  %936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %937 = extractvalue %dx.types.CBufRet.f32 %936, 0
  %938 = fmul fast float %937, %934
  %939 = extractvalue %dx.types.CBufRet.f32 %936, 1
  %940 = fadd fast float %938, %939
  %941 = extractvalue %dx.types.CBufRet.f32 %936, 2
  %942 = fmul fast float %941, %935
  %943 = extractvalue %dx.types.CBufRet.f32 %936, 3
  %944 = fadd fast float %942, %943
  %945 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %26, float %940, float %944, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %946 = extractvalue %dx.types.ResRet.f32 %945, 0
  %947 = extractvalue %dx.types.ResRet.f32 %945, 1
  %948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %949 = extractvalue %dx.types.CBufRet.f32 %948, 1
  %950 = extractvalue %dx.types.CBufRet.f32 %948, 0
  %951 = fsub fast float %949, %950
  %952 = fmul fast float %951, %946
  %953 = fadd fast float %952, %950
  %954 = extractvalue %dx.types.CBufRet.f32 %948, 3
  %955 = extractvalue %dx.types.CBufRet.f32 %948, 2
  %956 = fsub fast float %954, %955
  %957 = fmul fast float %956, %947
  %958 = fadd fast float %957, %955
  %959 = fsub fast float %199, %953
  %960 = fsub fast float %958, %953
  %961 = fdiv fast float %959, %960
  %962 = call float @dx.op.unary.f32(i32 7, float %961)  ; Saturate(value)
  %963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %964 = extractvalue %dx.types.CBufRet.f32 %963, 0
  %965 = fmul fast float %964, %962
  %966 = extractvalue %dx.types.CBufRet.f32 %963, 1
  %967 = fadd fast float %965, %966
  %968 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %26, float %940, float %944, float %967, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %969 = extractvalue %dx.types.ResRet.f32 %968, 0
  %970 = extractvalue %dx.types.ResRet.f32 %968, 1
  %971 = extractvalue %dx.types.ResRet.f32 %968, 2
  %972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %973 = extractvalue %dx.types.CBufRet.f32 %972, 0
  %974 = extractvalue %dx.types.CBufRet.f32 %972, 1
  %975 = extractvalue %dx.types.CBufRet.f32 %972, 2
  %976 = fmul fast float %973, %969
  %977 = fmul fast float %974, %970
  %978 = fmul fast float %975, %971
  %979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %980 = extractvalue %dx.types.CBufRet.f32 %979, 0
  %981 = extractvalue %dx.types.CBufRet.f32 %979, 1
  %982 = extractvalue %dx.types.CBufRet.f32 %979, 2
  %983 = fadd fast float %976, %980
  %984 = fadd fast float %977, %981
  %985 = fadd fast float %978, %982
  %986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %987 = extractvalue %dx.types.CBufRet.f32 %986, 0
  %988 = fmul fast float %987, %934
  %989 = extractvalue %dx.types.CBufRet.f32 %986, 1
  %990 = fadd fast float %988, %989
  %991 = extractvalue %dx.types.CBufRet.f32 %986, 2
  %992 = fmul fast float %991, %935
  %993 = extractvalue %dx.types.CBufRet.f32 %986, 3
  %994 = fadd fast float %992, %993
  %995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %996 = extractvalue %dx.types.CBufRet.f32 %995, 0
  %997 = extractvalue %dx.types.CBufRet.f32 %995, 1
  %998 = extractvalue %dx.types.CBufRet.f32 %995, 2
  %999 = extractvalue %dx.types.CBufRet.f32 %995, 3
  %1000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %1001 = extractvalue %dx.types.CBufRet.f32 %1000, 0
  %1002 = extractvalue %dx.types.CBufRet.f32 %1000, 1
  %1003 = extractvalue %dx.types.CBufRet.f32 %1000, 2
  %1004 = extractvalue %dx.types.CBufRet.f32 %1000, 3
  %1005 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %26, float %990, float %994, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1006 = extractvalue %dx.types.ResRet.f32 %1005, 0
  %1007 = extractvalue %dx.types.ResRet.f32 %1005, 1
  %1008 = extractvalue %dx.types.ResRet.f32 %1005, 2
  %1009 = extractvalue %dx.types.ResRet.f32 %1005, 3
  %1010 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %26, float %990, float %994, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1011 = extractvalue %dx.types.ResRet.f32 %1010, 0
  %1012 = extractvalue %dx.types.ResRet.f32 %1010, 1
  %1013 = extractvalue %dx.types.ResRet.f32 %1010, 2
  %1014 = extractvalue %dx.types.ResRet.f32 %1010, 3
  %1015 = fmul fast float %1006, %983
  %1016 = fmul fast float %1011, %983
  %1017 = fmul fast float %1013, %983
  %1018 = fmul fast float %1009, %983
  %1019 = fadd fast float %1015, %996
  %1020 = fadd fast float %1016, %997
  %1021 = fadd fast float %1017, %998
  %1022 = fadd fast float %1018, %999
  %1023 = fmul fast float %1007, %983
  %1024 = fmul fast float %1012, %983
  %1025 = fadd fast float %1023, %1001
  %1026 = fadd fast float %1024, %1002
  %1027 = fmul fast float %1008, %983
  %1028 = fmul fast float %1014, %983
  %1029 = fadd fast float %1027, %1003
  %1030 = fadd fast float %1028, %1004
  %1031 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %26, float %990, float %994, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1032 = extractvalue %dx.types.ResRet.f32 %1031, 0
  %1033 = extractvalue %dx.types.ResRet.f32 %1031, 1
  %1034 = extractvalue %dx.types.ResRet.f32 %1031, 2
  %1035 = extractvalue %dx.types.ResRet.f32 %1031, 3
  %1036 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %26, float %990, float %994, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1037 = extractvalue %dx.types.ResRet.f32 %1036, 0
  %1038 = extractvalue %dx.types.ResRet.f32 %1036, 1
  %1039 = extractvalue %dx.types.ResRet.f32 %1036, 2
  %1040 = extractvalue %dx.types.ResRet.f32 %1036, 3
  %1041 = fmul fast float %1032, %984
  %1042 = fmul fast float %1037, %984
  %1043 = fmul fast float %1039, %984
  %1044 = fmul fast float %1035, %984
  %1045 = fadd fast float %1019, %1041
  %1046 = fadd fast float %1020, %1042
  %1047 = fadd fast float %1021, %1043
  %1048 = fadd fast float %1022, %1044
  %1049 = fmul fast float %1033, %984
  %1050 = fmul fast float %1038, %984
  %1051 = fadd fast float %1025, %1049
  %1052 = fadd fast float %1026, %1050
  %1053 = fmul fast float %1034, %984
  %1054 = fmul fast float %1040, %984
  %1055 = fadd fast float %1029, %1053
  %1056 = fadd fast float %1030, %1054
  %1057 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %26, float %990, float %994, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1058 = extractvalue %dx.types.ResRet.f32 %1057, 0
  %1059 = extractvalue %dx.types.ResRet.f32 %1057, 1
  %1060 = extractvalue %dx.types.ResRet.f32 %1057, 2
  %1061 = extractvalue %dx.types.ResRet.f32 %1057, 3
  %1062 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %26, float %990, float %994, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1063 = extractvalue %dx.types.ResRet.f32 %1062, 0
  %1064 = extractvalue %dx.types.ResRet.f32 %1062, 1
  %1065 = extractvalue %dx.types.ResRet.f32 %1062, 2
  %1066 = extractvalue %dx.types.ResRet.f32 %1062, 3
  %1067 = fmul fast float %1058, %985
  %1068 = fmul fast float %1063, %985
  %1069 = fmul fast float %1065, %985
  %1070 = fmul fast float %1061, %985
  %1071 = fadd fast float %1045, %1067
  %1072 = fadd fast float %1046, %1068
  %1073 = fadd fast float %1047, %1069
  %1074 = fadd fast float %1048, %1070
  %1075 = fmul fast float %1059, %985
  %1076 = fmul fast float %1064, %985
  %1077 = fadd fast float %1051, %1075
  %1078 = fadd fast float %1052, %1076
  %1079 = fmul fast float %1060, %985
  %1080 = fmul fast float %1066, %985
  %1081 = fadd fast float %1055, %1079
  %1082 = fadd fast float %1056, %1080
  %1083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %1084 = extractvalue %dx.types.CBufRet.f32 %1083, 0
  %1085 = fsub fast float %189, %1084
  %1086 = fsub fast float %927, %189
  %1087 = call float @dx.op.binary.f32(i32 35, float %1086, float %1085)  ; FMax(a,b)
  %1088 = extractvalue %dx.types.CBufRet.f32 %1083, 1
  %1089 = fsub fast float %194, %1088
  %1090 = fsub fast float %928, %194
  %1091 = call float @dx.op.binary.f32(i32 35, float %1090, float %1089)  ; FMax(a,b)
  %1092 = call float @dx.op.binary.f32(i32 35, float %1087, float %1091)  ; FMax(a,b)
  %1093 = extractvalue %dx.types.CBufRet.f32 %931, 3
  %1094 = fmul fast float %1093, %1092
  %1095 = call float @dx.op.unary.f32(i32 7, float %1094)  ; Saturate(value)
  %1096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %1097 = extractvalue %dx.types.CBufRet.f32 %1096, 0
  %1098 = extractvalue %dx.types.CBufRet.f32 %1096, 1
  %1099 = extractvalue %dx.types.CBufRet.f32 %1096, 2
  %1100 = extractvalue %dx.types.CBufRet.f32 %1096, 3
  %1101 = fsub fast float %1097, %1071
  %1102 = fsub fast float %1098, %1072
  %1103 = fsub fast float %1099, %1073
  %1104 = fsub fast float %1100, %1074
  %1105 = fmul fast float %1101, %1095
  %1106 = fmul fast float %1102, %1095
  %1107 = fmul fast float %1103, %1095
  %1108 = fmul fast float %1104, %1095
  %1109 = fadd fast float %1105, %1071
  %1110 = fadd fast float %1106, %1072
  %1111 = fadd fast float %1107, %1073
  %1112 = fadd fast float %1108, %1074
  %1113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %1114 = extractvalue %dx.types.CBufRet.f32 %1113, 0
  %1115 = extractvalue %dx.types.CBufRet.f32 %1113, 1
  %1116 = fsub fast float %1114, %1077
  %1117 = fsub fast float %1115, %1078
  %1118 = fmul fast float %1116, %1095
  %1119 = fmul fast float %1117, %1095
  %1120 = fadd fast float %1118, %1077
  %1121 = fadd fast float %1119, %1078
  %1122 = extractvalue %dx.types.CBufRet.f32 %1113, 2
  %1123 = extractvalue %dx.types.CBufRet.f32 %1113, 3
  %1124 = fsub fast float %1122, %1081
  %1125 = fsub fast float %1123, %1082
  %1126 = fmul fast float %1124, %1095
  %1127 = fmul fast float %1125, %1095
  %1128 = fadd fast float %1126, %1081
  %1129 = fadd fast float %1127, %1082
  %1130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %1131 = extractvalue %dx.types.CBufRet.f32 %1130, 0
  %1132 = fmul fast float %1131, %1109
  %1133 = fmul fast float %1131, %1110
  %1134 = fmul fast float %1131, %1111
  %1135 = fmul fast float %1131, %1112
  %1136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %1137 = extractvalue %dx.types.CBufRet.f32 %1136, 0
  %1138 = fmul fast float %1137, %1120
  %1139 = fmul fast float %1137, %1121
  %1140 = fadd fast float %1138, %1132
  %1141 = fadd fast float %1139, %1134
  %1142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %1143 = extractvalue %dx.types.CBufRet.f32 %1142, 0
  %1144 = fmul fast float %1143, %1128
  %1145 = fmul fast float %1143, %1129
  %1146 = fadd fast float %1140, %1144
  %1147 = fadd fast float %1141, %1145
  %1148 = extractvalue %dx.types.CBufRet.f32 %1130, 1
  %1149 = fmul fast float %1148, %1109
  %1150 = fmul fast float %1148, %1110
  %1151 = fmul fast float %1148, %1111
  %1152 = fmul fast float %1148, %1112
  %1153 = extractvalue %dx.types.CBufRet.f32 %1136, 1
  %1154 = fmul fast float %1153, %1120
  %1155 = fmul fast float %1153, %1121
  %1156 = fadd fast float %1154, %1149
  %1157 = fadd fast float %1155, %1151
  %1158 = extractvalue %dx.types.CBufRet.f32 %1142, 1
  %1159 = fmul fast float %1158, %1128
  %1160 = fmul fast float %1158, %1129
  %1161 = fadd fast float %1156, %1159
  %1162 = fadd fast float %1157, %1160
  %1163 = extractvalue %dx.types.CBufRet.f32 %1130, 2
  %1164 = fmul fast float %1163, %1109
  %1165 = fmul fast float %1163, %1110
  %1166 = fmul fast float %1163, %1111
  %1167 = fmul fast float %1163, %1112
  %1168 = extractvalue %dx.types.CBufRet.f32 %1136, 2
  %1169 = fmul fast float %1168, %1120
  %1170 = fmul fast float %1168, %1121
  %1171 = fadd fast float %1169, %1164
  %1172 = fadd fast float %1170, %1166
  %1173 = extractvalue %dx.types.CBufRet.f32 %1142, 2
  %1174 = fmul fast float %1173, %1128
  %1175 = fmul fast float %1173, %1129
  %1176 = fadd fast float %1171, %1174
  %1177 = fadd fast float %1172, %1175
  %1178 = fmul fast float %1165, %1165
  %1179 = fmul fast float %1177, %1177
  %1180 = fmul fast float %1167, %1167
  %1181 = fadd fast float %1180, %1178
  %1182 = fadd fast float %1181, %1179
  %1183 = call float @dx.op.unary.f32(i32 24, float %1182)  ; Sqrt(value)
  %1184 = fcmp fast ugt float %1183, 0.000000e+00
  br i1 %1184, label %1185, label %1200, !dx.controlflow.hints !69

; <label>:1185                                    ; preds = %925
  %1186 = fsub fast float -0.000000e+00, %1167
  %1187 = fdiv fast float %1186, %1183
  %1188 = fsub fast float -0.000000e+00, %1165
  %1189 = fdiv fast float %1188, %1183
  %1190 = fdiv fast float %1177, %1183
  %1191 = fmul fast float %1176, 0x3FE279A760000000
  %1192 = fmul fast float %1189, %1165
  %1193 = fmul fast float %1190, %1177
  %1194 = fmul fast float %1187, %1167
  %1195 = fadd fast float %1192, %1194
  %1196 = fsub fast float %1195, %1193
  %1197 = call float @dx.op.unary.f32(i32 6, float %1196)  ; FAbs(value)
  %1198 = fadd fast float %1197, 0x3DDB7CDFE0000000
  %1199 = fdiv fast float %1191, %1198
  br label %1200

; <label>:1200                                    ; preds = %1185, %925
  %1201 = phi float [ %1199, %1185 ], [ 1.000000e+00, %925 ]
  %1202 = fmul fast float %1150, %1150
  %1203 = fmul fast float %1162, %1162
  %1204 = fmul fast float %1152, %1152
  %1205 = fadd fast float %1204, %1202
  %1206 = fadd fast float %1205, %1203
  %1207 = call float @dx.op.unary.f32(i32 24, float %1206)  ; Sqrt(value)
  %1208 = fcmp fast ugt float %1207, 0.000000e+00
  br i1 %1208, label %1209, label %1224, !dx.controlflow.hints !69

; <label>:1209                                    ; preds = %1200
  %1210 = fsub fast float -0.000000e+00, %1152
  %1211 = fdiv fast float %1210, %1207
  %1212 = fsub fast float -0.000000e+00, %1150
  %1213 = fdiv fast float %1212, %1207
  %1214 = fdiv fast float %1162, %1207
  %1215 = fmul fast float %1161, 0x3FE279A760000000
  %1216 = fmul fast float %1213, %1150
  %1217 = fmul fast float %1214, %1162
  %1218 = fmul fast float %1211, %1152
  %1219 = fadd fast float %1216, %1218
  %1220 = fsub fast float %1219, %1217
  %1221 = call float @dx.op.unary.f32(i32 6, float %1220)  ; FAbs(value)
  %1222 = fadd fast float %1221, 0x3DDB7CDFE0000000
  %1223 = fdiv fast float %1215, %1222
  br label %1224

; <label>:1224                                    ; preds = %1209, %1200
  %1225 = phi float [ %1223, %1209 ], [ 1.000000e+00, %1200 ]
  %1226 = call float @dx.op.binary.f32(i32 36, float %1225, float %1201)  ; FMin(a,b)
  %1227 = fmul fast float %1133, %1133
  %1228 = fmul fast float %1147, %1147
  %1229 = fmul fast float %1135, %1135
  %1230 = fadd fast float %1229, %1227
  %1231 = fadd fast float %1230, %1228
  %1232 = call float @dx.op.unary.f32(i32 24, float %1231)  ; Sqrt(value)
  %1233 = fcmp fast ugt float %1232, 0.000000e+00
  br i1 %1233, label %1234, label %1249, !dx.controlflow.hints !69

; <label>:1234                                    ; preds = %1224
  %1235 = fsub fast float -0.000000e+00, %1135
  %1236 = fdiv fast float %1235, %1232
  %1237 = fsub fast float -0.000000e+00, %1133
  %1238 = fdiv fast float %1237, %1232
  %1239 = fdiv fast float %1147, %1232
  %1240 = fmul fast float %1146, 0x3FE279A760000000
  %1241 = fmul fast float %1238, %1133
  %1242 = fmul fast float %1239, %1147
  %1243 = fmul fast float %1236, %1135
  %1244 = fadd fast float %1241, %1243
  %1245 = fsub fast float %1244, %1242
  %1246 = call float @dx.op.unary.f32(i32 6, float %1245)  ; FAbs(value)
  %1247 = fadd fast float %1246, 0x3DDB7CDFE0000000
  %1248 = fdiv fast float %1240, %1247
  br label %1249

; <label>:1249                                    ; preds = %1234, %1224
  %1250 = phi float [ %1248, %1234 ], [ 1.000000e+00, %1224 ]
  %1251 = call float @dx.op.binary.f32(i32 36, float %1250, float %1226)  ; FMin(a,b)
  %1252 = call float @dx.op.unary.f32(i32 7, float %1251)  ; Saturate(value)
  %1253 = fcmp fast olt float %1252, 1.000000e+00
  br i1 %1253, label %1254, label %1264, !dx.controlflow.hints !70

; <label>:1254                                    ; preds = %1249
  %1255 = fmul fast float %1252, %1133
  %1256 = fmul fast float %1252, %1147
  %1257 = fmul fast float %1252, %1135
  %1258 = fmul fast float %1252, %1150
  %1259 = fmul fast float %1252, %1162
  %1260 = fmul fast float %1252, %1152
  %1261 = fmul fast float %1252, %1165
  %1262 = fmul fast float %1252, %1177
  %1263 = fmul fast float %1252, %1167
  br label %1264

; <label>:1264                                    ; preds = %1254, %1249
  %1265 = phi float [ %1261, %1254 ], [ %1165, %1249 ]
  %1266 = phi float [ %1262, %1254 ], [ %1177, %1249 ]
  %1267 = phi float [ %1263, %1254 ], [ %1167, %1249 ]
  %1268 = phi float [ %1258, %1254 ], [ %1150, %1249 ]
  %1269 = phi float [ %1259, %1254 ], [ %1162, %1249 ]
  %1270 = phi float [ %1260, %1254 ], [ %1152, %1249 ]
  %1271 = phi float [ %1255, %1254 ], [ %1133, %1249 ]
  %1272 = phi float [ %1256, %1254 ], [ %1147, %1249 ]
  %1273 = phi float [ %1257, %1254 ], [ %1135, %1249 ]
  %1274 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1146)  ; FMax(a,b)
  %1275 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1161)  ; FMax(a,b)
  %1276 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1176)  ; FMax(a,b)
  %1277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %1278 = extractvalue %dx.types.CBufRet.f32 %1277, 0
  %1279 = fcmp fast ogt float %1278, 0.000000e+00
  %1280 = fcmp fast oge float %934, 0.000000e+00
  %1281 = and i1 %1280, %1279
  %1282 = fcmp fast ole float %934, 1.000000e+00
  %1283 = and i1 %1282, %1281
  %1284 = fcmp fast oge float %935, 0.000000e+00
  %1285 = and i1 %1284, %1283
  %1286 = fcmp fast ole float %935, 1.000000e+00
  %1287 = and i1 %1286, %1285
  br i1 %1287, label %1288, label %1433, !dx.controlflow.hints !71

; <label>:1288                                    ; preds = %1264
  %1289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1290 = extractvalue %dx.types.CBufRet.f32 %1289, 2
  %1291 = extractvalue %dx.types.CBufRet.f32 %1289, 3
  %1292 = fmul fast float %1290, %934
  %1293 = fmul fast float %1291, %935
  %1294 = call float @dx.op.unary.f32(i32 27, float %1292)  ; Round_ni(value)
  %1295 = call float @dx.op.unary.f32(i32 27, float %1293)  ; Round_ni(value)
  %1296 = fptosi float %1294 to i32
  %1297 = fptosi float %1295 to i32
  %1298 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %20, i32 0, i32 %1296, i32 %1297, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1299 = extractvalue %dx.types.ResRet.i32 %1298, 0
  %1300 = and i32 %1299, 65535
  %1301 = lshr i32 %1299, 16
  %1302 = icmp eq i32 %1300, 65535
  br i1 %1302, label %1339, label %1303, !dx.controlflow.hints !72

; <label>:1303                                    ; preds = %1288
  %1304 = extractvalue %dx.types.CBufRet.f32 %1277, 1
  %1305 = extractvalue %dx.types.CBufRet.f32 %1289, 0
  %1306 = extractvalue %dx.types.CBufRet.f32 %1289, 1
  %1307 = fmul fast float %1305, %934
  %1308 = fmul fast float %1306, %935
  %1309 = fmul fast float %1307, 1.250000e-01
  %1310 = fmul fast float %1308, 1.250000e-01
  %1311 = call float @dx.op.unary.f32(i32 27, float %1309)  ; Round_ni(value)
  %1312 = call float @dx.op.unary.f32(i32 27, float %1310)  ; Round_ni(value)
  %1313 = fmul fast float %1311, 8.000000e+00
  %1314 = fmul fast float %1312, 8.000000e+00
  %1315 = and i32 %1299, 255
  %1316 = lshr i32 %1299, 8
  %1317 = and i32 %1316, 255
  %1318 = mul nuw nsw i32 %1315, 9
  %1319 = uitofp i32 %1318 to float
  %1320 = mul nuw nsw i32 %1317, 9
  %1321 = uitofp i32 %1320 to float
  %1322 = fadd fast float %1319, 5.000000e-01
  %1323 = fadd fast float %1322, %1307
  %1324 = fsub fast float %1323, %1313
  %1325 = fadd fast float %1321, 5.000000e-01
  %1326 = fadd fast float %1325, %1308
  %1327 = fsub fast float %1326, %1314
  %1328 = fdiv fast float %1324, %1278
  %1329 = fdiv fast float %1327, %1304
  %1330 = fmul fast float %962, 4.375000e-01
  %1331 = fadd fast float %1330, 3.125000e-02
  %1332 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %26, float %1328, float %1329, float %1331, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1333 = extractvalue %dx.types.ResRet.f32 %1332, 0
  %1334 = extractvalue %dx.types.ResRet.f32 %1332, 1
  %1335 = extractvalue %dx.types.ResRet.f32 %1332, 2
  %1336 = fadd fast float %1333, %1274
  %1337 = fadd fast float %1334, %1275
  %1338 = fadd fast float %1335, %1276
  br label %1339

; <label>:1339                                    ; preds = %1303, %1288
  %1340 = phi float [ %1338, %1303 ], [ %1276, %1288 ]
  %1341 = phi float [ %1337, %1303 ], [ %1275, %1288 ]
  %1342 = phi float [ %1336, %1303 ], [ %1274, %1288 ]
  %1343 = icmp eq i32 %1301, 65535
  br i1 %1343, label %1433, label %1344, !dx.controlflow.hints !73

; <label>:1344                                    ; preds = %1339
  %1345 = extractvalue %dx.types.CBufRet.f32 %1277, 1
  %1346 = extractvalue %dx.types.CBufRet.f32 %1289, 0
  %1347 = extractvalue %dx.types.CBufRet.f32 %1289, 1
  %1348 = fmul fast float %1346, %934
  %1349 = fmul fast float %1347, %935
  %1350 = fmul fast float %1348, 1.250000e-01
  %1351 = fmul fast float %1349, 1.250000e-01
  %1352 = call float @dx.op.unary.f32(i32 27, float %1350)  ; Round_ni(value)
  %1353 = call float @dx.op.unary.f32(i32 27, float %1351)  ; Round_ni(value)
  %1354 = fmul fast float %1352, 8.000000e+00
  %1355 = fmul fast float %1353, 8.000000e+00
  %1356 = fsub fast float %1348, %1354
  %1357 = fsub fast float %1349, %1355
  %1358 = fadd fast float %1356, 5.000000e-01
  %1359 = fadd fast float %1357, 5.000000e-01
  %1360 = and i32 %1301, 255
  %1361 = lshr i32 %1299, 24
  %1362 = mul nuw nsw i32 %1360, 9
  %1363 = uitofp i32 %1362 to float
  %1364 = mul nuw nsw i32 %1361, 9
  %1365 = uitofp i32 %1364 to float
  %1366 = fadd fast float %1358, %1363
  %1367 = fadd fast float %1359, %1365
  %1368 = fdiv fast float %1366, %1278
  %1369 = fdiv fast float %1367, %1345
  %1370 = fmul fast float %962, 4.375000e-01
  %1371 = fadd fast float %1370, 3.125000e-02
  %1372 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %26, float %1368, float %1369, float %1371, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1373 = extractvalue %dx.types.ResRet.f32 %1372, 0
  %1374 = extractvalue %dx.types.ResRet.f32 %1372, 1
  %1375 = extractvalue %dx.types.ResRet.f32 %1372, 2
  %1376 = fadd fast float %1370, 5.312500e-01
  %1377 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %26, float %1368, float %1369, float %1376, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1378 = extractvalue %dx.types.ResRet.f32 %1377, 0
  %1379 = extractvalue %dx.types.ResRet.f32 %1377, 1
  %1380 = extractvalue %dx.types.ResRet.f32 %1377, 2
  %1381 = fmul fast float %1378, 2.000000e+00
  %1382 = fmul fast float %1379, 2.000000e+00
  %1383 = fmul fast float %1380, 2.000000e+00
  %1384 = fadd fast float %1381, -1.000000e+00
  %1385 = fadd fast float %1382, -1.000000e+00
  %1386 = fadd fast float %1383, -1.000000e+00
  %1387 = fmul fast float %1384, %1384
  %1388 = fmul fast float %1385, %1385
  %1389 = fadd fast float %1387, %1388
  %1390 = fmul fast float %1386, %1386
  %1391 = fadd fast float %1389, %1390
  %1392 = call float @dx.op.unary.f32(i32 24, float %1391)  ; Sqrt(value)
  %1393 = fcmp fast ogt float %1392, 0.000000e+00
  br i1 %1393, label %1394, label %1398, !dx.controlflow.hints !74

; <label>:1394                                    ; preds = %1344
  %1395 = fdiv fast float %1384, %1392
  %1396 = fdiv fast float %1385, %1392
  %1397 = fdiv fast float %1386, %1392
  br label %1398

; <label>:1398                                    ; preds = %1394, %1344
  %1399 = phi float [ %1395, %1394 ], [ 0.000000e+00, %1344 ]
  %1400 = phi float [ %1396, %1394 ], [ 0.000000e+00, %1344 ]
  %1401 = phi float [ %1397, %1394 ], [ 0.000000e+00, %1344 ]
  %1402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1403 = extractvalue %dx.types.CBufRet.f32 %1402, 0
  %1404 = extractvalue %dx.types.CBufRet.f32 %1402, 1
  %1405 = fsub fast float %189, %1403
  %1406 = fsub fast float %194, %1404
  %1407 = fmul fast float %1405, %1405
  %1408 = fmul fast float %1406, %1406
  %1409 = fadd fast float %1407, %1408
  %1410 = call float @dx.op.unary.f32(i32 24, float %1409)  ; Sqrt(value)
  %1411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1412 = extractvalue %dx.types.CBufRet.f32 %1411, 0
  %1413 = extractvalue %dx.types.CBufRet.f32 %1411, 1
  %1414 = fsub fast float %1410, %1412
  %1415 = fdiv fast float %1414, %1413
  %1416 = call float @dx.op.unary.f32(i32 7, float %1415)  ; Saturate(value)
  %1417 = fmul fast float %1416, 2.000000e+00
  %1418 = fsub fast float 3.000000e+00, %1417
  %1419 = fmul fast float %1416, %1416
  %1420 = fmul fast float %1419, %1418
  %1421 = call float @dx.op.dot3.f32(i32 55, float %1399, float %1400, float %1401, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1422 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1421)  ; FMax(a,b)
  %1423 = fmul fast float %1422, 0x400C5BF8A0000000
  %1424 = fmul fast float %1420, %1373
  %1425 = fmul fast float %1424, %1423
  %1426 = fadd fast float %1425, %1342
  %1427 = fmul fast float %1420, %1374
  %1428 = fmul fast float %1427, %1423
  %1429 = fadd fast float %1428, %1341
  %1430 = fmul fast float %1420, %1375
  %1431 = fmul fast float %1430, %1423
  %1432 = fadd fast float %1431, %1340
  br label %1433

; <label>:1433                                    ; preds = %1398, %1339, %1264
  %1434 = phi float [ %1432, %1398 ], [ %1340, %1339 ], [ %1276, %1264 ]
  %1435 = phi float [ %1429, %1398 ], [ %1341, %1339 ], [ %1275, %1264 ]
  %1436 = phi float [ %1426, %1398 ], [ %1342, %1339 ], [ %1274, %1264 ]
  %1437 = fcmp fast ogt float %199, %958
  %1438 = and i1 %1280, %1437
  %1439 = and i1 %1282, %1438
  %1440 = and i1 %1284, %1439
  %1441 = and i1 %1286, %1440
  br i1 %1441, label %1442, label %1499, !dx.controlflow.hints !75

; <label>:1442                                    ; preds = %1433
  %1443 = fmul fast float %960, 0x3FC24924A0000000
  %1444 = fsub fast float %199, %958
  %1445 = fdiv fast float %1444, %1443
  %1446 = call float @dx.op.unary.f32(i32 7, float %1445)  ; Saturate(value)
  %1447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %1448 = extractvalue %dx.types.CBufRet.f32 %1447, 0
  %1449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %1450 = extractvalue %dx.types.CBufRet.f32 %1449, 0
  %1451 = extractvalue %dx.types.CBufRet.f32 %1449, 1
  %1452 = extractvalue %dx.types.CBufRet.f32 %1449, 2
  %1453 = fsub fast float %1448, %1436
  %1454 = fsub fast float %1450, %1271
  %1455 = fsub fast float %1451, %1272
  %1456 = fsub fast float %1452, %1273
  %1457 = fmul fast float %1453, %1446
  %1458 = fmul fast float %1454, %1446
  %1459 = fmul fast float %1455, %1446
  %1460 = fmul fast float %1456, %1446
  %1461 = fadd fast float %1457, %1436
  %1462 = fadd fast float %1458, %1271
  %1463 = fadd fast float %1459, %1272
  %1464 = fadd fast float %1460, %1273
  %1465 = extractvalue %dx.types.CBufRet.f32 %1447, 1
  %1466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %1467 = extractvalue %dx.types.CBufRet.f32 %1466, 0
  %1468 = extractvalue %dx.types.CBufRet.f32 %1466, 1
  %1469 = extractvalue %dx.types.CBufRet.f32 %1466, 2
  %1470 = fsub fast float %1465, %1435
  %1471 = fsub fast float %1467, %1268
  %1472 = fsub fast float %1468, %1269
  %1473 = fsub fast float %1469, %1270
  %1474 = fmul fast float %1470, %1446
  %1475 = fmul fast float %1471, %1446
  %1476 = fmul fast float %1472, %1446
  %1477 = fmul fast float %1473, %1446
  %1478 = fadd fast float %1474, %1435
  %1479 = fadd fast float %1475, %1268
  %1480 = fadd fast float %1476, %1269
  %1481 = fadd fast float %1477, %1270
  %1482 = extractvalue %dx.types.CBufRet.f32 %1447, 2
  %1483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %1484 = extractvalue %dx.types.CBufRet.f32 %1483, 0
  %1485 = extractvalue %dx.types.CBufRet.f32 %1483, 1
  %1486 = extractvalue %dx.types.CBufRet.f32 %1483, 2
  %1487 = fsub fast float %1482, %1434
  %1488 = fsub fast float %1484, %1265
  %1489 = fsub fast float %1485, %1266
  %1490 = fsub fast float %1486, %1267
  %1491 = fmul fast float %1487, %1446
  %1492 = fmul fast float %1488, %1446
  %1493 = fmul fast float %1489, %1446
  %1494 = fmul fast float %1490, %1446
  %1495 = fadd fast float %1491, %1434
  %1496 = fadd fast float %1492, %1265
  %1497 = fadd fast float %1493, %1266
  %1498 = fadd fast float %1494, %1267
  br label %1499

; <label>:1499                                    ; preds = %1442, %1433
  %1500 = phi float [ %1495, %1442 ], [ %1434, %1433 ]
  %1501 = phi float [ %1496, %1442 ], [ %1265, %1433 ]
  %1502 = phi float [ %1497, %1442 ], [ %1266, %1433 ]
  %1503 = phi float [ %1498, %1442 ], [ %1267, %1433 ]
  %1504 = phi float [ %1478, %1442 ], [ %1435, %1433 ]
  %1505 = phi float [ %1479, %1442 ], [ %1268, %1433 ]
  %1506 = phi float [ %1480, %1442 ], [ %1269, %1433 ]
  %1507 = phi float [ %1481, %1442 ], [ %1270, %1433 ]
  %1508 = phi float [ %1461, %1442 ], [ %1436, %1433 ]
  %1509 = phi float [ %1462, %1442 ], [ %1271, %1433 ]
  %1510 = phi float [ %1463, %1442 ], [ %1272, %1433 ]
  %1511 = phi float [ %1464, %1442 ], [ %1273, %1433 ]
  %1512 = extractvalue %dx.types.CBufRet.f32 %1083, 3
  %1513 = fmul fast float %1512, %1508
  %1514 = fmul fast float %1512, %1504
  %1515 = fmul fast float %1512, %1500
  %1516 = fmul fast float %1509, 1.500000e+00
  %1517 = fmul fast float %1516, %1512
  %1518 = fmul fast float %1510, 1.500000e+00
  %1519 = fmul fast float %1518, %1512
  %1520 = fmul fast float %1511, 1.500000e+00
  %1521 = fmul fast float %1520, %1512
  %1522 = fmul fast float %1505, 1.500000e+00
  %1523 = fmul fast float %1522, %1512
  %1524 = fmul fast float %1506, 1.500000e+00
  %1525 = fmul fast float %1524, %1512
  %1526 = fmul fast float %1507, 1.500000e+00
  %1527 = fmul fast float %1526, %1512
  %1528 = fmul fast float %1501, 1.500000e+00
  %1529 = fmul fast float %1528, %1512
  %1530 = fmul fast float %1502, 1.500000e+00
  %1531 = fmul fast float %1530, %1512
  %1532 = fmul fast float %1503, 1.500000e+00
  %1533 = fmul fast float %1532, %1512
  %1534 = fsub fast float %923, %1513
  %1535 = fmul fast float %1534, %239
  %1536 = fadd fast float %1535, %1513
  %1537 = fsub fast float %922, %1517
  %1538 = fmul fast float %1537, %239
  %1539 = fadd fast float %1538, %1517
  %1540 = fsub fast float %921, %1519
  %1541 = fmul fast float %1540, %239
  %1542 = fadd fast float %1541, %1519
  %1543 = fsub fast float %920, %1521
  %1544 = fmul fast float %1543, %239
  %1545 = fadd fast float %1544, %1521
  %1546 = fsub fast float %919, %1514
  %1547 = fmul fast float %1546, %239
  %1548 = fadd fast float %1547, %1514
  %1549 = fsub fast float %918, %1523
  %1550 = fmul fast float %1549, %239
  %1551 = fadd fast float %1550, %1523
  %1552 = fsub fast float %917, %1525
  %1553 = fmul fast float %1552, %239
  %1554 = fadd fast float %1553, %1525
  %1555 = fsub fast float %916, %1527
  %1556 = fmul fast float %1555, %239
  %1557 = fadd fast float %1556, %1527
  %1558 = fsub fast float %915, %1515
  %1559 = fmul fast float %1558, %239
  %1560 = fadd fast float %1559, %1515
  %1561 = fsub fast float %914, %1529
  %1562 = fmul fast float %1561, %239
  %1563 = fadd fast float %1562, %1529
  %1564 = fsub fast float %913, %1531
  %1565 = fmul fast float %1564, %239
  %1566 = fadd fast float %1565, %1531
  %1567 = fsub fast float %912, %1533
  %1568 = fmul fast float %1567, %239
  %1569 = fadd fast float %1568, %1533
  br label %1570

; <label>:1570                                    ; preds = %1499, %911
  %1571 = phi float [ %912, %911 ], [ %1569, %1499 ]
  %1572 = phi float [ %913, %911 ], [ %1566, %1499 ]
  %1573 = phi float [ %914, %911 ], [ %1563, %1499 ]
  %1574 = phi float [ %915, %911 ], [ %1560, %1499 ]
  %1575 = phi float [ %916, %911 ], [ %1557, %1499 ]
  %1576 = phi float [ %917, %911 ], [ %1554, %1499 ]
  %1577 = phi float [ %918, %911 ], [ %1551, %1499 ]
  %1578 = phi float [ %919, %911 ], [ %1548, %1499 ]
  %1579 = phi float [ %920, %911 ], [ %1545, %1499 ]
  %1580 = phi float [ %921, %911 ], [ %1542, %1499 ]
  %1581 = phi float [ %922, %911 ], [ %1539, %1499 ]
  %1582 = phi float [ %923, %911 ], [ %1536, %1499 ]
  %1583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1584 = extractvalue %dx.types.CBufRet.f32 %1583, 0
  %1585 = extractvalue %dx.types.CBufRet.f32 %1583, 1
  %1586 = extractvalue %dx.types.CBufRet.f32 %1583, 2
  %1587 = fsub fast float %189, %1584
  %1588 = fsub fast float %194, %1585
  %1589 = fsub fast float %199, %1586
  %1590 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1591 = extractvalue %dx.types.CBufRet.i32 %1590, 2
  %1592 = icmp eq i32 %1591, 0
  br i1 %1592, label %1808, label %1593

; <label>:1593                                    ; preds = %1570
  br label %1594

; <label>:1594                                    ; preds = %1789, %1593
  %1595 = phi float [ %1790, %1789 ], [ 0.000000e+00, %1593 ]
  %1596 = phi float [ %1791, %1789 ], [ 0.000000e+00, %1593 ]
  %1597 = phi float [ %1792, %1789 ], [ 0.000000e+00, %1593 ]
  %1598 = phi float [ %1793, %1789 ], [ 0.000000e+00, %1593 ]
  %1599 = phi float [ %1794, %1789 ], [ 0.000000e+00, %1593 ]
  %1600 = phi float [ %1795, %1789 ], [ 0.000000e+00, %1593 ]
  %1601 = phi float [ %1796, %1789 ], [ 0.000000e+00, %1593 ]
  %1602 = phi float [ %1797, %1789 ], [ 0.000000e+00, %1593 ]
  %1603 = phi float [ %1798, %1789 ], [ 0.000000e+00, %1593 ]
  %1604 = phi float [ %1799, %1789 ], [ 0.000000e+00, %1593 ]
  %1605 = phi float [ %1800, %1789 ], [ 0.000000e+00, %1593 ]
  %1606 = phi float [ %1801, %1789 ], [ 0.000000e+00, %1593 ]
  %1607 = phi float [ %1802, %1789 ], [ 1.000000e+00, %1593 ]
  %1608 = phi i32 [ %1803, %1789 ], [ 0, %1593 ]
  %1609 = shl i32 %1608, 2
  %1610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %1609, i32 undef)  ; BufferLoad(srv,index,wot)
  %1611 = extractvalue %dx.types.ResRet.i32 %1610, 0
  %1612 = icmp ne i32 %1611, 0
  %1613 = fcmp fast ogt float %1607, 0.000000e+00
  %1614 = and i1 %1613, %1612
  br i1 %1614, label %1615, label %1789

; <label>:1615                                    ; preds = %1594
  br label %1616

; <label>:1616                                    ; preds = %1771, %1615
  %1617 = phi float [ %1772, %1771 ], [ %1595, %1615 ]
  %1618 = phi float [ %1773, %1771 ], [ %1596, %1615 ]
  %1619 = phi float [ %1774, %1771 ], [ %1597, %1615 ]
  %1620 = phi float [ %1775, %1771 ], [ %1598, %1615 ]
  %1621 = phi float [ %1776, %1771 ], [ %1599, %1615 ]
  %1622 = phi float [ %1777, %1771 ], [ %1600, %1615 ]
  %1623 = phi float [ %1778, %1771 ], [ %1601, %1615 ]
  %1624 = phi float [ %1779, %1771 ], [ %1602, %1615 ]
  %1625 = phi float [ %1780, %1771 ], [ %1603, %1615 ]
  %1626 = phi float [ %1781, %1771 ], [ %1604, %1615 ]
  %1627 = phi float [ %1782, %1771 ], [ %1605, %1615 ]
  %1628 = phi float [ %1783, %1771 ], [ %1606, %1615 ]
  %1629 = phi float [ %1784, %1771 ], [ %1607, %1615 ]
  %1630 = phi i32 [ %1634, %1771 ], [ %1611, %1615 ]
  %1631 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1630)  ; FirstbitLo(value)
  %1632 = and i32 %1631, 31
  %1633 = shl i32 1, %1632
  %1634 = xor i32 %1633, %1630
  %1635 = shl i32 %1608, 5
  %1636 = add i32 %1631, %1635
  %1637 = mul i32 %1636, 72
  %1638 = add i32 %1637, 12
  %1639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %1638, i32 undef)  ; BufferLoad(srv,index,wot)
  %1640 = extractvalue %dx.types.ResRet.i32 %1639, 0
  %1641 = add i32 %1637, 16
  %1642 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %1641, i32 undef)  ; BufferLoad(srv,index,wot)
  %1643 = extractvalue %dx.types.ResRet.f32 %1642, 0
  %1644 = extractvalue %dx.types.ResRet.f32 %1642, 1
  %1645 = extractvalue %dx.types.ResRet.f32 %1642, 2
  %1646 = mul i32 %1636, 60
  %1647 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %1646, i32 undef)  ; BufferLoad(srv,index,wot)
  %1648 = extractvalue %dx.types.ResRet.f32 %1647, 0
  %1649 = extractvalue %dx.types.ResRet.f32 %1647, 1
  %1650 = extractvalue %dx.types.ResRet.f32 %1647, 2
  %1651 = add i32 %1646, 12
  %1652 = add i32 %1646, 48
  %1653 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %1652, i32 undef)  ; BufferLoad(srv,index,wot)
  %1654 = extractvalue %dx.types.ResRet.f32 %1653, 0
  %1655 = extractvalue %dx.types.ResRet.f32 %1653, 1
  %1656 = extractvalue %dx.types.ResRet.f32 %1653, 2
  %1657 = and i32 %1640, 32767
  %1658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1659 = extractvalue %dx.types.CBufRet.f32 %1658, 0
  %1660 = extractvalue %dx.types.CBufRet.f32 %1658, 1
  %1661 = extractvalue %dx.types.CBufRet.f32 %1658, 2
  %1662 = fsub fast float %1648, %1659
  %1663 = fsub fast float %1649, %1660
  %1664 = fsub fast float %1650, %1661
  %1665 = fsub fast float %1587, %1662
  %1666 = fsub fast float %1588, %1663
  %1667 = fsub fast float %1589, %1664
  %1668 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %1651, i32 undef)  ; BufferLoad(srv,index,wot)
  %1669 = extractvalue %dx.types.ResRet.f32 %1668, 0
  %1670 = extractvalue %dx.types.ResRet.f32 %1668, 1
  %1671 = extractvalue %dx.types.ResRet.f32 %1668, 2
  %1672 = call float @dx.op.dot3.f32(i32 55, float %1665, float %1666, float %1667, float %1669, float %1670, float %1671)  ; Dot3(ax,ay,az,bx,by,bz)
  %1673 = add i32 %1646, 24
  %1674 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %1673, i32 undef)  ; BufferLoad(srv,index,wot)
  %1675 = extractvalue %dx.types.ResRet.f32 %1674, 0
  %1676 = extractvalue %dx.types.ResRet.f32 %1674, 1
  %1677 = extractvalue %dx.types.ResRet.f32 %1674, 2
  %1678 = call float @dx.op.dot3.f32(i32 55, float %1665, float %1666, float %1667, float %1675, float %1676, float %1677)  ; Dot3(ax,ay,az,bx,by,bz)
  %1679 = add i32 %1646, 36
  %1680 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %1679, i32 undef)  ; BufferLoad(srv,index,wot)
  %1681 = extractvalue %dx.types.ResRet.f32 %1680, 0
  %1682 = extractvalue %dx.types.ResRet.f32 %1680, 1
  %1683 = extractvalue %dx.types.ResRet.f32 %1680, 2
  %1684 = call float @dx.op.dot3.f32(i32 55, float %1665, float %1666, float %1667, float %1681, float %1682, float %1683)  ; Dot3(ax,ay,az,bx,by,bz)
  %1685 = call float @dx.op.unary.f32(i32 6, float %1672)  ; FAbs(value)
  %1686 = call float @dx.op.unary.f32(i32 6, float %1678)  ; FAbs(value)
  %1687 = call float @dx.op.unary.f32(i32 6, float %1684)  ; FAbs(value)
  %1688 = fsub fast float %1654, %1685
  %1689 = fsub fast float %1655, %1686
  %1690 = fsub fast float %1656, %1687
  %1691 = fmul fast float %1688, %1643
  %1692 = fmul fast float %1689, %1644
  %1693 = fmul fast float %1690, %1645
  %1694 = call float @dx.op.binary.f32(i32 36, float %1692, float %1693)  ; FMin(a,b)
  %1695 = call float @dx.op.binary.f32(i32 36, float %1691, float %1694)  ; FMin(a,b)
  %1696 = call float @dx.op.unary.f32(i32 7, float %1695)  ; Saturate(value)
  %1697 = call float @dx.op.binary.f32(i32 36, float %1629, float %1696)  ; FMin(a,b)
  %1698 = fcmp fast ogt float %1697, 0.000000e+00
  br i1 %1698, label %1699, label %1771, !dx.controlflow.hints !76

; <label>:1699                                    ; preds = %1616
  %1700 = lshr i32 %1640, 16
  %1701 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1700)  ; LegacyF16ToF32(value)
  %1702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 141)  ; CBufferLoadLegacy(handle,regIndex)
  %1703 = extractvalue %dx.types.CBufRet.f32 %1702, 3
  %1704 = bitcast float %1703 to i32
  %1705 = add i32 %1704, %1657
  %1706 = mul i32 %1705, 36
  %1707 = shl i32 %1704, 1
  %1708 = add i32 %1707, %1657
  %1709 = mul i32 %1708, 36
  %1710 = mul i32 %1704, 3
  %1711 = add i32 %1710, %1657
  %1712 = mul i32 %1711, 36
  %1713 = fmul fast float %1701, %1697
  %1714 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1706, i32 undef)  ; BufferLoad(srv,index,wot)
  %1715 = extractvalue %dx.types.ResRet.f32 %1714, 0
  %1716 = fmul fast float %1715, %1713
  %1717 = fadd fast float %1716, %1620
  %1718 = add i32 %1706, 4
  %1719 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1718, i32 undef)  ; BufferLoad(srv,index,wot)
  %1720 = extractvalue %dx.types.ResRet.f32 %1719, 0
  %1721 = fmul fast float %1720, %1713
  %1722 = fadd fast float %1721, %1619
  %1723 = add i32 %1706, 8
  %1724 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1723, i32 undef)  ; BufferLoad(srv,index,wot)
  %1725 = extractvalue %dx.types.ResRet.f32 %1724, 0
  %1726 = fmul fast float %1725, %1713
  %1727 = fadd fast float %1726, %1618
  %1728 = add i32 %1706, 12
  %1729 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1728, i32 undef)  ; BufferLoad(srv,index,wot)
  %1730 = extractvalue %dx.types.ResRet.f32 %1729, 0
  %1731 = fmul fast float %1730, %1713
  %1732 = fadd fast float %1731, %1617
  %1733 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1709, i32 undef)  ; BufferLoad(srv,index,wot)
  %1734 = extractvalue %dx.types.ResRet.f32 %1733, 0
  %1735 = fmul fast float %1734, %1713
  %1736 = fadd fast float %1735, %1624
  %1737 = add i32 %1709, 4
  %1738 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1737, i32 undef)  ; BufferLoad(srv,index,wot)
  %1739 = extractvalue %dx.types.ResRet.f32 %1738, 0
  %1740 = fmul fast float %1739, %1713
  %1741 = fadd fast float %1740, %1623
  %1742 = add i32 %1709, 8
  %1743 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1742, i32 undef)  ; BufferLoad(srv,index,wot)
  %1744 = extractvalue %dx.types.ResRet.f32 %1743, 0
  %1745 = fmul fast float %1744, %1713
  %1746 = fadd fast float %1745, %1622
  %1747 = add i32 %1709, 12
  %1748 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1747, i32 undef)  ; BufferLoad(srv,index,wot)
  %1749 = extractvalue %dx.types.ResRet.f32 %1748, 0
  %1750 = fmul fast float %1749, %1713
  %1751 = fadd fast float %1750, %1621
  %1752 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1712, i32 undef)  ; BufferLoad(srv,index,wot)
  %1753 = extractvalue %dx.types.ResRet.f32 %1752, 0
  %1754 = fmul fast float %1753, %1713
  %1755 = fadd fast float %1754, %1628
  %1756 = add i32 %1712, 4
  %1757 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1756, i32 undef)  ; BufferLoad(srv,index,wot)
  %1758 = extractvalue %dx.types.ResRet.f32 %1757, 0
  %1759 = fmul fast float %1758, %1713
  %1760 = fadd fast float %1759, %1627
  %1761 = add i32 %1712, 8
  %1762 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1761, i32 undef)  ; BufferLoad(srv,index,wot)
  %1763 = extractvalue %dx.types.ResRet.f32 %1762, 0
  %1764 = fmul fast float %1763, %1713
  %1765 = fadd fast float %1764, %1626
  %1766 = add i32 %1712, 12
  %1767 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1766, i32 undef)  ; BufferLoad(srv,index,wot)
  %1768 = extractvalue %dx.types.ResRet.f32 %1767, 0
  %1769 = fmul fast float %1768, %1713
  %1770 = fadd fast float %1769, %1625
  br label %1771

; <label>:1771                                    ; preds = %1699, %1616
  %1772 = phi float [ %1732, %1699 ], [ %1617, %1616 ]
  %1773 = phi float [ %1727, %1699 ], [ %1618, %1616 ]
  %1774 = phi float [ %1722, %1699 ], [ %1619, %1616 ]
  %1775 = phi float [ %1717, %1699 ], [ %1620, %1616 ]
  %1776 = phi float [ %1751, %1699 ], [ %1621, %1616 ]
  %1777 = phi float [ %1746, %1699 ], [ %1622, %1616 ]
  %1778 = phi float [ %1741, %1699 ], [ %1623, %1616 ]
  %1779 = phi float [ %1736, %1699 ], [ %1624, %1616 ]
  %1780 = phi float [ %1770, %1699 ], [ %1625, %1616 ]
  %1781 = phi float [ %1765, %1699 ], [ %1626, %1616 ]
  %1782 = phi float [ %1760, %1699 ], [ %1627, %1616 ]
  %1783 = phi float [ %1755, %1699 ], [ %1628, %1616 ]
  %1784 = fsub fast float %1629, %1697
  %1785 = icmp ne i32 %1630, %1633
  %1786 = fcmp fast ogt float %1784, 0.000000e+00
  %1787 = and i1 %1785, %1786
  br i1 %1787, label %1616, label %1788

; <label>:1788                                    ; preds = %1771
  br label %1789

; <label>:1789                                    ; preds = %1788, %1594
  %1790 = phi float [ %1595, %1594 ], [ %1772, %1788 ]
  %1791 = phi float [ %1596, %1594 ], [ %1773, %1788 ]
  %1792 = phi float [ %1597, %1594 ], [ %1774, %1788 ]
  %1793 = phi float [ %1598, %1594 ], [ %1775, %1788 ]
  %1794 = phi float [ %1599, %1594 ], [ %1776, %1788 ]
  %1795 = phi float [ %1600, %1594 ], [ %1777, %1788 ]
  %1796 = phi float [ %1601, %1594 ], [ %1778, %1788 ]
  %1797 = phi float [ %1602, %1594 ], [ %1779, %1788 ]
  %1798 = phi float [ %1603, %1594 ], [ %1780, %1788 ]
  %1799 = phi float [ %1604, %1594 ], [ %1781, %1788 ]
  %1800 = phi float [ %1605, %1594 ], [ %1782, %1788 ]
  %1801 = phi float [ %1606, %1594 ], [ %1783, %1788 ]
  %1802 = phi float [ %1607, %1594 ], [ %1784, %1788 ]
  %1803 = add i32 %1608, 1
  %1804 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1805 = extractvalue %dx.types.CBufRet.i32 %1804, 2
  %1806 = icmp ult i32 %1803, %1805
  br i1 %1806, label %1594, label %1807

; <label>:1807                                    ; preds = %1789
  br label %1808

; <label>:1808                                    ; preds = %1807, %1570
  %1809 = phi float [ 0.000000e+00, %1570 ], [ %1790, %1807 ]
  %1810 = phi float [ 0.000000e+00, %1570 ], [ %1791, %1807 ]
  %1811 = phi float [ 0.000000e+00, %1570 ], [ %1792, %1807 ]
  %1812 = phi float [ 0.000000e+00, %1570 ], [ %1793, %1807 ]
  %1813 = phi float [ 0.000000e+00, %1570 ], [ %1794, %1807 ]
  %1814 = phi float [ 0.000000e+00, %1570 ], [ %1795, %1807 ]
  %1815 = phi float [ 0.000000e+00, %1570 ], [ %1796, %1807 ]
  %1816 = phi float [ 0.000000e+00, %1570 ], [ %1797, %1807 ]
  %1817 = phi float [ 0.000000e+00, %1570 ], [ %1798, %1807 ]
  %1818 = phi float [ 0.000000e+00, %1570 ], [ %1799, %1807 ]
  %1819 = phi float [ 0.000000e+00, %1570 ], [ %1800, %1807 ]
  %1820 = phi float [ 0.000000e+00, %1570 ], [ %1801, %1807 ]
  %1821 = phi float [ 1.000000e+00, %1570 ], [ %1802, %1807 ]
  %1822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1823 = extractvalue %dx.types.CBufRet.f32 %1822, 3
  %1824 = fdiv fast float 1.000000e+00, %1823
  %1825 = fmul fast float %1824, %1812
  %1826 = fmul fast float %1824, %1811
  %1827 = fmul fast float %1824, %1810
  %1828 = fmul fast float %1824, %1809
  %1829 = fmul fast float %1824, %1816
  %1830 = fmul fast float %1824, %1815
  %1831 = fmul fast float %1824, %1814
  %1832 = fmul fast float %1824, %1813
  %1833 = fmul fast float %1824, %1820
  %1834 = fmul fast float %1824, %1819
  %1835 = fmul fast float %1824, %1818
  %1836 = fmul fast float %1824, %1817
  %1837 = fmul fast float %1821, %1582
  %1838 = fadd fast float %1825, %1837
  %1839 = fmul fast float %1821, %1581
  %1840 = fadd fast float %1826, %1839
  %1841 = fmul fast float %1821, %1580
  %1842 = fadd fast float %1827, %1841
  %1843 = fmul fast float %1821, %1579
  %1844 = fadd fast float %1828, %1843
  %1845 = fmul fast float %1821, %1578
  %1846 = fadd fast float %1829, %1845
  %1847 = fmul fast float %1821, %1577
  %1848 = fadd fast float %1830, %1847
  %1849 = fmul fast float %1821, %1576
  %1850 = fadd fast float %1831, %1849
  %1851 = fmul fast float %1821, %1575
  %1852 = fadd fast float %1832, %1851
  %1853 = fmul fast float %1821, %1574
  %1854 = fadd fast float %1833, %1853
  %1855 = fmul fast float %1821, %1573
  %1856 = fadd fast float %1834, %1855
  %1857 = fmul fast float %1821, %1572
  %1858 = fadd fast float %1835, %1857
  %1859 = fmul fast float %1821, %1571
  %1860 = fadd fast float %1836, %1859
  %1861 = fmul fast float %1838, %1823
  %1862 = fmul fast float %1840, %1823
  %1863 = fmul fast float %1842, %1823
  %1864 = fmul fast float %1844, %1823
  %1865 = extractvalue %dx.types.CBufRet.f32 %1822, 0
  %1866 = fmul fast float %1861, %1865
  %1867 = fmul fast float %1862, %1865
  %1868 = fmul fast float %1863, %1865
  %1869 = fmul fast float %1864, %1865
  %1870 = fmul fast float %1823, %1846
  %1871 = fmul fast float %1823, %1848
  %1872 = fmul fast float %1823, %1850
  %1873 = fmul fast float %1823, %1852
  %1874 = fmul fast float %1870, %1865
  %1875 = fmul fast float %1871, %1865
  %1876 = fmul fast float %1872, %1865
  %1877 = fmul fast float %1873, %1865
  %1878 = fmul fast float %1823, %1854
  %1879 = fmul fast float %1823, %1856
  %1880 = fmul fast float %1823, %1858
  %1881 = fmul fast float %1823, %1860
  %1882 = fmul fast float %1878, %1865
  %1883 = fmul fast float %1879, %1865
  %1884 = fmul fast float %1880, %1865
  %1885 = fmul fast float %1881, %1865
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %168, i32 %169, i32 0, float %1866, float %1867, float %1868, float %1869, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %168, i32 %169, i32 1, float %1874, float %1875, float %1876, float %1877, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %168, i32 %169, i32 2, float %1882, float %1883, float %1884, float %1885, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1886

; <label>:1886                                    ; preds = %1808, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

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

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

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
!35 = !{i32 0, %"class.RWTexture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 7, i1 false, i1 false, i1 false, !7}
!36 = !{!37, !38, !39}
!37 = !{i32 0, %GfxNeuralLightGridSetupConsts* undef, !"", i32 0, i32 4, i32 1, i32 80, null}
!38 = !{i32 1, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!39 = !{i32 2, %DeferredEffectLightConsts_decl* undef, !"", i32 0, i32 1, i32 1, i32 240, null}
!40 = !{!41}
!41 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!42 = !{void ()* @cs_del_sh_sample_lightgrid_reflection_volumes_1_lowres, !"cs_del_sh_sample_lightgrid_reflection_volumes_1_lowres", null, !4, !43}
!43 = !{i32 0, i64 272, i32 4, !44}
!44 = !{i32 64, i32 1, i32 1}
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

