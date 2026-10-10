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
; shader hash: b680b855a831061efd4559d752ab06f0
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

define void @cs_del_sh_sample_lightgrid_reflection_volumes_2_lowres() {
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
  %31 = alloca [8 x float], align 4
  %32 = alloca [8 x i32], align 4
  %33 = alloca [8 x float], align 4
  %34 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %35 = extractvalue %dx.types.CBufRet.i32 %34, 2
  %36 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %35, i32 0)  ; BufferLoad(srv,index,wot)
  %37 = extractvalue %dx.types.ResRet.i32 %36, 0
  %38 = icmp ult i32 %30, %37
  br i1 %38, label %39, label %2486, !dx.controlflow.hints !45

; <label>:39                                      ; preds = %0
  %40 = add i32 %35, 3
  %41 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 %40)  ; CBufferLoadLegacy(handle,regIndex)
  %42 = extractvalue %dx.types.CBufRet.i32 %41, 2
  %43 = call i32 @dx.op.threadId.i32(i32 93, i32 2)  ; ThreadId(component)
  %44 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %45 = shl i32 %44, 1
  %46 = shl i32 %43, 1
  %47 = add i32 %42, %30
  %48 = shl i32 %47, 5
  %49 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %48, i32 undef)  ; BufferLoad(srv,index,wot)
  %50 = extractvalue %dx.types.ResRet.i32 %49, 0
  %51 = extractvalue %dx.types.ResRet.i32 %49, 1
  %52 = extractvalue %dx.types.ResRet.i32 %49, 2
  %53 = extractvalue %dx.types.ResRet.i32 %49, 3
  %54 = lshr i32 %53, 14
  %55 = and i32 %54, 16383
  %56 = and i32 %53, 16383
  %57 = bitcast i32 %50 to float
  %58 = bitcast i32 %51 to float
  %59 = bitcast i32 %52 to float
  %60 = and i32 %53, 536870912
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %101, label %62, !dx.controlflow.hints !46

; <label>:62                                      ; preds = %39
  %63 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %64 = extractvalue %dx.types.CBufRet.f32 %63, 2
  %65 = extractvalue %dx.types.CBufRet.f32 %63, 3
  %66 = fmul fast float %64, %57
  %67 = fmul fast float %65, %58
  %68 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %69 = extractvalue %dx.types.CBufRet.f32 %68, 0
  %70 = extractvalue %dx.types.CBufRet.f32 %68, 1
  %71 = fadd fast float %66, %69
  %72 = fadd fast float %67, %70
  %73 = call float @dx.op.unary.f32(i32 7, float %71)  ; Saturate(value)
  %74 = call float @dx.op.unary.f32(i32 7, float %72)  ; Saturate(value)
  %75 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %26, float %73, float %74, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %76 = extractvalue %dx.types.ResRet.f32 %75, 0
  %77 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %78 = extractvalue %dx.types.CBufRet.f32 %77, 0
  %79 = fmul fast float %78, %76
  %80 = fsub fast float %71, %73
  %81 = fsub fast float %72, %74
  %82 = extractvalue %dx.types.CBufRet.f32 %63, 0
  %83 = extractvalue %dx.types.CBufRet.f32 %63, 1
  %84 = fmul fast float %82, %80
  %85 = fmul fast float %83, %81
  %86 = fmul fast float %84, %84
  %87 = fmul fast float %85, %85
  %88 = fadd fast float %86, %87
  %89 = call float @dx.op.unary.f32(i32 24, float %88)  ; Sqrt(value)
  %90 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %91 = extractvalue %dx.types.CBufRet.f32 %90, 3
  %92 = fmul fast float %91, %89
  %93 = call float @dx.op.unary.f32(i32 7, float %92)  ; Saturate(value)
  %94 = extractvalue %dx.types.CBufRet.f32 %90, 2
  %95 = fsub fast float %94, %79
  %96 = fmul fast float %95, %93
  %97 = extractvalue %dx.types.CBufRet.f32 %77, 1
  %98 = fadd fast float %79, %59
  %99 = fadd fast float %98, %97
  %100 = fadd fast float %99, %96
  br label %101

; <label>:101                                     ; preds = %62, %39
  %102 = phi float [ %100, %62 ], [ %59, %39 ]
  %103 = and i32 %53, 268435456
  %104 = icmp eq i32 %103, 0
  %105 = or i32 %48, 16
  %106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %105, i32 undef)  ; BufferLoad(srv,index,wot)
  %107 = extractvalue %dx.types.ResRet.i32 %106, 0
  %108 = extractvalue %dx.types.ResRet.i32 %106, 1
  %109 = extractvalue %dx.types.ResRet.i32 %106, 2
  %110 = extractvalue %dx.types.ResRet.i32 %106, 3
  %111 = and i32 %107, 65535
  %112 = call float @dx.op.legacyF16ToF32(i32 131, i32 %111)  ; LegacyF16ToF32(value)
  %113 = lshr i32 %107, 16
  %114 = call float @dx.op.legacyF16ToF32(i32 131, i32 %113)  ; LegacyF16ToF32(value)
  %115 = and i32 %108, 1023
  %116 = uitofp i32 %115 to float
  %117 = lshr i32 %108, 10
  %118 = and i32 %117, 1023
  %119 = uitofp i32 %118 to float
  %120 = lshr i32 %108, 20
  %121 = and i32 %120, 1023
  %122 = uitofp i32 %121 to float
  %123 = fmul fast float %116, 0x3F60040100000000
  %124 = fmul fast float %119, 0x3F60040100000000
  %125 = fmul fast float %122, 0x3F60040100000000
  %126 = fadd fast float %123, -1.000000e+00
  %127 = fadd fast float %124, -1.000000e+00
  %128 = fadd fast float %125, -1.000000e+00
  %129 = and i32 %109, 1023
  %130 = uitofp i32 %129 to float
  %131 = lshr i32 %109, 10
  %132 = and i32 %131, 1023
  %133 = uitofp i32 %132 to float
  %134 = lshr i32 %109, 20
  %135 = and i32 %134, 1023
  %136 = uitofp i32 %135 to float
  %137 = fmul fast float %130, 0x3F60040100000000
  %138 = fmul fast float %133, 0x3F60040100000000
  %139 = fmul fast float %136, 0x3F60040100000000
  %140 = fadd fast float %137, -1.000000e+00
  %141 = fadd fast float %138, -1.000000e+00
  %142 = fadd fast float %139, -1.000000e+00
  %143 = and i32 %110, 65535
  %144 = call float @dx.op.legacyF16ToF32(i32 131, i32 %143)  ; LegacyF16ToF32(value)
  %145 = lshr i32 %110, 16
  %146 = call float @dx.op.legacyF16ToF32(i32 131, i32 %145)  ; LegacyF16ToF32(value)
  %147 = call float @dx.op.unary.f32(i32 13, float %144)  ; Sin(value)
  %148 = call float @dx.op.unary.f32(i32 12, float %144)  ; Cos(value)
  %149 = fmul fast float %148, %126
  %150 = fmul fast float %148, %127
  %151 = fmul fast float %148, %128
  %152 = fmul fast float %147, %140
  %153 = fmul fast float %141, %147
  %154 = fmul fast float %142, %147
  %155 = fadd fast float %149, %152
  %156 = fadd fast float %150, %153
  %157 = fadd fast float %151, %154
  %158 = fmul fast float %155, %112
  %159 = fmul fast float %156, %112
  %160 = fmul fast float %157, %112
  %161 = fmul fast float %147, %126
  %162 = fmul fast float %127, %147
  %163 = fmul fast float %128, %147
  %164 = fmul fast float %148, %140
  %165 = fmul fast float %148, %141
  %166 = fmul fast float %148, %142
  %167 = fsub fast float %161, %164
  %168 = fsub fast float %162, %165
  %169 = fsub fast float %163, %166
  %170 = fmul fast float %167, %114
  %171 = fmul fast float %168, %114
  %172 = fmul fast float %169, %114
  %173 = add i32 %55, %45
  %174 = add i32 %56, %46
  %175 = uitofp i32 %45 to float
  %176 = uitofp i32 %46 to float
  %177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %178 = extractvalue %dx.types.CBufRet.f32 %177, 1
  %179 = fdiv fast float %175, %178
  %180 = fdiv fast float %176, %178
  %181 = extractvalue %dx.types.CBufRet.f32 %177, 2
  %182 = fmul fast float %181, 2.000000e+00
  %183 = fadd fast float %182, %179
  %184 = fadd fast float %182, %180
  %185 = fmul fast float %183, %158
  %186 = fmul fast float %183, %159
  %187 = fmul fast float %183, %160
  %188 = fmul fast float %184, %170
  %189 = fmul fast float %184, %171
  %190 = fmul fast float %184, %172
  %191 = fadd fast float %188, %185
  %192 = fmul fast float %191, 2.000000e+00
  %193 = fsub fast float %57, %158
  %194 = fsub fast float %193, %170
  %195 = fadd fast float %194, %192
  %196 = fadd fast float %189, %186
  %197 = fmul fast float %196, 2.000000e+00
  %198 = fsub fast float %58, %159
  %199 = fsub fast float %198, %171
  %200 = fadd fast float %199, %197
  %201 = fadd fast float %190, %187
  %202 = fmul fast float %201, 2.000000e+00
  %203 = fsub fast float %102, %160
  %204 = fsub fast float %203, %172
  %205 = fadd fast float %204, %202
  %206 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %207 = extractvalue %dx.types.CBufRet.i32 %206, 0
  %208 = icmp eq i32 %207, 1
  br i1 %208, label %209, label %244, !dx.controlflow.hints !47

; <label>:209                                     ; preds = %101
  %210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %211 = extractvalue %dx.types.CBufRet.f32 %210, 0
  %212 = extractvalue %dx.types.CBufRet.f32 %210, 1
  %213 = fsub fast float %195, %211
  %214 = fsub fast float %200, %212
  %215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %216 = extractvalue %dx.types.CBufRet.f32 %215, 0
  %217 = extractvalue %dx.types.CBufRet.f32 %215, 1
  %218 = fmul fast float %213, %216
  %219 = fmul fast float %214, %217
  %220 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %218, float %219, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %221 = extractvalue %dx.types.ResRet.f32 %220, 0
  %222 = fcmp fast ogt float %221, 0.000000e+00
  %223 = extractvalue %dx.types.CBufRet.i32 %206, 3
  %224 = icmp ne i32 %223, 0
  %225 = and i1 %222, %224
  br i1 %225, label %226, label %244, !dx.controlflow.hints !48

; <label>:226                                     ; preds = %209
  %227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %228 = extractvalue %dx.types.CBufRet.f32 %227, 0
  %229 = extractvalue %dx.types.CBufRet.f32 %227, 1
  %230 = fsub fast float %195, %228
  %231 = fsub fast float %200, %229
  %232 = fmul fast float %230, %230
  %233 = fmul fast float %231, %231
  %234 = fadd fast float %232, %233
  %235 = uitofp i32 %223 to float
  %236 = fmul fast float %235, %235
  %237 = fcmp fast ogt float %234, %236
  br i1 %237, label %244, label %238, !dx.controlflow.hints !49

; <label>:238                                     ; preds = %226
  %239 = call float @dx.op.unary.f32(i32 24, float %234)  ; Sqrt(value)
  %240 = fsub fast float %235, %239
  %241 = fmul fast float %240, 0x3F75555560000000
  %242 = call float @dx.op.unary.f32(i32 7, float %241)  ; Saturate(value)
  %243 = call float @dx.op.binary.f32(i32 36, float %242, float %221)  ; FMin(a,b)
  br label %244

; <label>:244                                     ; preds = %238, %226, %209, %101
  %245 = phi float [ 1.000000e+00, %101 ], [ %243, %238 ], [ %221, %209 ], [ 0.000000e+00, %226 ]
  %246 = fcmp fast ogt float %245, 0.000000e+00
  br i1 %246, label %247, label %1092, !dx.controlflow.hints !50

; <label>:247                                     ; preds = %244
  %248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %249 = extractvalue %dx.types.CBufRet.f32 %248, 0
  %250 = extractvalue %dx.types.CBufRet.f32 %248, 1
  %251 = extractvalue %dx.types.CBufRet.f32 %248, 2
  %252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %253 = extractvalue %dx.types.CBufRet.f32 %252, 0
  %254 = extractvalue %dx.types.CBufRet.f32 %252, 1
  %255 = extractvalue %dx.types.CBufRet.f32 %252, 2
  %256 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %257 = extractvalue %dx.types.CBufRet.i32 %256, 1
  %258 = fsub fast float %195, %249
  %259 = fsub fast float %200, %250
  %260 = fsub fast float %205, %251
  %261 = fmul fast float %258, %253
  %262 = fmul fast float %259, %254
  %263 = fmul fast float %260, %255
  %264 = fcmp fast ole float %261, 0.000000e+00
  %265 = fcmp fast ole float %262, 0.000000e+00
  %266 = fcmp fast ole float %263, 0.000000e+00
  %267 = or i1 %264, %265
  %268 = or i1 %266, %267
  %269 = fcmp fast oge float %261, 1.000000e+00
  %270 = fcmp fast oge float %262, 1.000000e+00
  %271 = fcmp fast oge float %263, 1.000000e+00
  %272 = or i1 %269, %270
  %273 = or i1 %271, %272
  %274 = or i1 %268, %273
  br i1 %274, label %990, label %275, !dx.controlflow.hints !51

; <label>:275                                     ; preds = %247
  %276 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %277 = extractvalue %dx.types.CBufRet.i32 %276, 0
  %278 = fptosi float %258 to i32
  %279 = fptosi float %259 to i32
  %280 = fptosi float %260 to i32
  %281 = and i32 %257, 31
  %282 = ashr i32 %278, %281
  %283 = ashr i32 %279, %281
  %284 = ashr i32 %280, %281
  %285 = mul i32 %277, %283
  %286 = add nsw i32 %285, %282
  %287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %286, i32 0)  ; BufferLoad(srv,index,wot)
  %288 = extractvalue %dx.types.ResRet.i32 %287, 0
  %289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %286, i32 4)  ; BufferLoad(srv,index,wot)
  %290 = extractvalue %dx.types.ResRet.i32 %289, 0
  %291 = icmp slt i32 %284, %288
  %292 = icmp sgt i32 %284, %290
  %293 = or i1 %291, %292
  br i1 %293, label %990, label %294, !dx.controlflow.hints !52

; <label>:294                                     ; preds = %275
  %295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %286, i32 8)  ; BufferLoad(srv,index,wot)
  %296 = extractvalue %dx.types.ResRet.i32 %295, 0
  %297 = sub i32 %284, %288
  %298 = add nsw i32 %297, %296
  %299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %298, i32 undef)  ; BufferLoad(srv,index,wot)
  %300 = extractvalue %dx.types.ResRet.i32 %299, 0
  %301 = icmp eq i32 %300, -1
  br i1 %301, label %990, label %302, !dx.controlflow.hints !53

; <label>:302                                     ; preds = %294
  %303 = getelementptr inbounds [8 x i32], [8 x i32]* %32, i32 0, i32 0
  store i32 -1, i32* %303, align 4, !tbaa !54, !noalias !58
  %304 = getelementptr inbounds [8 x i32], [8 x i32]* %32, i32 0, i32 1
  store i32 -1, i32* %304, align 4, !tbaa !54, !noalias !58
  %305 = getelementptr inbounds [8 x i32], [8 x i32]* %32, i32 0, i32 2
  store i32 -1, i32* %305, align 4, !tbaa !54, !noalias !58
  %306 = getelementptr inbounds [8 x i32], [8 x i32]* %32, i32 0, i32 3
  store i32 -1, i32* %306, align 4, !tbaa !54, !noalias !58
  %307 = getelementptr inbounds [8 x i32], [8 x i32]* %32, i32 0, i32 4
  store i32 -1, i32* %307, align 4, !tbaa !54, !noalias !58
  %308 = getelementptr inbounds [8 x i32], [8 x i32]* %32, i32 0, i32 5
  store i32 -1, i32* %308, align 4, !tbaa !54, !noalias !58
  %309 = getelementptr inbounds [8 x i32], [8 x i32]* %32, i32 0, i32 6
  store i32 -1, i32* %309, align 4, !tbaa !54, !noalias !58
  %310 = getelementptr inbounds [8 x i32], [8 x i32]* %32, i32 0, i32 7
  store i32 -1, i32* %310, align 4, !tbaa !54, !noalias !58
  br label %311

; <label>:311                                     ; preds = %415, %302
  %312 = phi i32 [ -1, %302 ], [ %412, %415 ]
  %313 = phi i32 [ -1, %302 ], [ %407, %415 ]
  %314 = phi i32 [ -1, %302 ], [ %400, %415 ]
  %315 = phi i32 [ -1, %302 ], [ %395, %415 ]
  %316 = phi i32 [ -1, %302 ], [ %386, %415 ]
  %317 = phi i32 [ -1, %302 ], [ %381, %415 ]
  %318 = phi i32 [ -1, %302 ], [ %373, %415 ]
  %319 = phi i32 [ -1, %302 ], [ %366, %415 ]
  %320 = phi i32 [ %300, %302 ], [ %435, %415 ]
  %321 = phi i32 [ %257, %302 ], [ %322, %415 ]
  %322 = add nsw i32 %321, -2
  %323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %320, i32 undef)  ; BufferLoad(srv,index,wot)
  %324 = extractvalue %dx.types.ResRet.i32 %323, 0
  %325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %320, i32 undef)  ; BufferLoad(srv,index,wot)
  %326 = extractvalue %dx.types.ResRet.i32 %325, 0
  %327 = and i32 %324, 31
  %328 = shl i32 1, %327
  %329 = add i32 %328, 1
  %330 = and i32 %322, 31
  %331 = ashr i32 %278, %330
  %332 = ashr i32 %279, %330
  %333 = ashr i32 %280, %330
  %334 = and i32 %331, 3
  %335 = and i32 %332, 3
  %336 = and i32 %333, 3
  br label %337

; <label>:337                                     ; preds = %337, %311
  %338 = phi i32 [ %312, %311 ], [ %412, %337 ]
  %339 = phi i32 [ %313, %311 ], [ %407, %337 ]
  %340 = phi i32 [ %314, %311 ], [ %400, %337 ]
  %341 = phi i32 [ %315, %311 ], [ %395, %337 ]
  %342 = phi i32 [ %316, %311 ], [ %386, %337 ]
  %343 = phi i32 [ %317, %311 ], [ %381, %337 ]
  %344 = phi i32 [ %318, %311 ], [ %373, %337 ]
  %345 = phi i32 [ %319, %311 ], [ %366, %337 ]
  %346 = phi i32 [ 0, %311 ], [ %413, %337 ]
  %347 = sub i32 2, %346
  %348 = and i32 %347, 31
  %349 = lshr i32 %334, %348
  %350 = lshr i32 %335, %348
  %351 = lshr i32 %336, %348
  %352 = sub i32 %324, %346
  %353 = and i32 %352, 31
  %354 = shl i32 %349, %353
  %355 = shl i32 %350, %353
  %356 = shl i32 %351, %353
  %357 = shl i32 1, %353
  %358 = mul i32 %356, %329
  %359 = add i32 %358, %355
  %360 = mul i32 %359, %329
  %361 = add i32 %354, %326
  %362 = add i32 %361, %360
  %363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %362, i32 undef)  ; BufferLoad(srv,index,wot)
  %364 = extractvalue %dx.types.ResRet.i32 %363, 0
  %365 = icmp ne i32 %364, -1
  %366 = select i1 %365, i32 %364, i32 %345
  store i32 %366, i32* %303, align 4, !tbaa !54, !noalias !58
  %367 = add i32 %357, %326
  %368 = add i32 %367, %354
  %369 = add i32 %368, %360
  %370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %369, i32 undef)  ; BufferLoad(srv,index,wot)
  %371 = extractvalue %dx.types.ResRet.i32 %370, 0
  %372 = icmp ne i32 %371, -1
  %373 = select i1 %372, i32 %371, i32 %344
  store i32 %373, i32* %304, align 4, !tbaa !54, !noalias !58
  %374 = add i32 %355, %357
  %375 = add i32 %374, %358
  %376 = mul i32 %375, %329
  %377 = add i32 %361, %376
  %378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %377, i32 undef)  ; BufferLoad(srv,index,wot)
  %379 = extractvalue %dx.types.ResRet.i32 %378, 0
  %380 = icmp ne i32 %379, -1
  %381 = select i1 %380, i32 %379, i32 %343
  store i32 %381, i32* %305, align 4, !tbaa !54, !noalias !58
  %382 = add i32 %368, %376
  %383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %382, i32 undef)  ; BufferLoad(srv,index,wot)
  %384 = extractvalue %dx.types.ResRet.i32 %383, 0
  %385 = icmp ne i32 %384, -1
  %386 = select i1 %385, i32 %384, i32 %342
  store i32 %386, i32* %306, align 4, !tbaa !54, !noalias !58
  %387 = add i32 %356, %357
  %388 = mul i32 %387, %329
  %389 = add i32 %388, %355
  %390 = mul i32 %389, %329
  %391 = add i32 %361, %390
  %392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %391, i32 undef)  ; BufferLoad(srv,index,wot)
  %393 = extractvalue %dx.types.ResRet.i32 %392, 0
  %394 = icmp ne i32 %393, -1
  %395 = select i1 %394, i32 %393, i32 %341
  store i32 %395, i32* %307, align 4, !tbaa !54, !noalias !58
  %396 = add i32 %368, %390
  %397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %396, i32 undef)  ; BufferLoad(srv,index,wot)
  %398 = extractvalue %dx.types.ResRet.i32 %397, 0
  %399 = icmp ne i32 %398, -1
  %400 = select i1 %399, i32 %398, i32 %340
  store i32 %400, i32* %308, align 4, !tbaa !54, !noalias !58
  %401 = add i32 %374, %388
  %402 = mul i32 %401, %329
  %403 = add i32 %361, %402
  %404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %403, i32 undef)  ; BufferLoad(srv,index,wot)
  %405 = extractvalue %dx.types.ResRet.i32 %404, 0
  %406 = icmp ne i32 %405, -1
  %407 = select i1 %406, i32 %405, i32 %339
  store i32 %407, i32* %309, align 4, !tbaa !54, !noalias !58
  %408 = add i32 %368, %402
  %409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %408, i32 undef)  ; BufferLoad(srv,index,wot)
  %410 = extractvalue %dx.types.ResRet.i32 %409, 0
  %411 = icmp ne i32 %410, -1
  %412 = select i1 %411, i32 %410, i32 %338
  store i32 %412, i32* %310, align 4, !tbaa !54, !noalias !58
  %413 = add i32 %346, 1
  %414 = icmp ugt i32 %413, %324
  br i1 %414, label %415, label %337

; <label>:415                                     ; preds = %337
  %416 = shl nuw nsw i32 %336, 4
  %417 = shl nuw nsw i32 %335, 2
  %418 = lshr i32 %336, 1
  %419 = and i32 %416, 16
  %420 = or i32 %417, %334
  %421 = or i32 %420, %419
  %422 = shl i32 1, %421
  %423 = shl nuw nsw i32 %418, 2
  %424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %320, i32 %423)  ; BufferLoad(srv,index,wot)
  %425 = extractvalue %dx.types.ResRet.i32 %424, 0
  %426 = and i32 %425, %422
  %427 = icmp eq i32 %426, 0
  %428 = add i32 %422, -1
  %429 = and i32 %425, %428
  %430 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %429)  ; Countbits(value)
  %431 = or i32 %423, 8
  %432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %320, i32 %431)  ; BufferLoad(srv,index,wot)
  %433 = extractvalue %dx.types.ResRet.i32 %432, 0
  %434 = add i32 %433, %430
  %435 = select i1 %427, i32 -1, i32 %434
  %436 = icmp eq i32 %435, -1
  br i1 %436, label %437, label %311

; <label>:437                                     ; preds = %415
  br label %438

; <label>:438                                     ; preds = %724, %437
  %439 = phi i32 [ %726, %724 ], [ %366, %437 ]
  %440 = phi float [ %721, %724 ], [ 0.000000e+00, %437 ]
  %441 = phi i32 [ %722, %724 ], [ 0, %437 ]
  %442 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %443 = extractvalue %dx.types.ResRet.f32 %442, 0
  %444 = extractvalue %dx.types.ResRet.f32 %442, 1
  %445 = extractvalue %dx.types.ResRet.f32 %442, 2
  %446 = extractvalue %dx.types.ResRet.f32 %442, 3
  %447 = fsub fast float %195, %443
  %448 = fsub fast float %200, %444
  %449 = fsub fast float %205, %445
  %450 = fmul fast float %447, %446
  %451 = fmul fast float %448, %446
  %452 = fmul fast float %449, %446
  %453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %454 = extractvalue %dx.types.ResRet.i32 %453, 0
  %455 = call float @dx.op.unary.f32(i32 6, float %450)  ; FAbs(value)
  %456 = call float @dx.op.unary.f32(i32 6, float %451)  ; FAbs(value)
  %457 = fsub fast float 1.000000e+00, %455
  %458 = fsub fast float 1.000000e+00, %456
  %459 = call float @dx.op.unary.f32(i32 7, float %457)  ; Saturate(value)
  %460 = call float @dx.op.unary.f32(i32 7, float %458)  ; Saturate(value)
  %461 = fmul fast float %460, %459
  %462 = mul i32 %454, 29
  %463 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %462, i32 undef)  ; BufferLoad(srv,index,wot)
  %464 = extractvalue %dx.types.ResRet.f32 %463, 0
  %465 = extractvalue %dx.types.ResRet.f32 %463, 1
  %466 = extractvalue %dx.types.ResRet.f32 %463, 2
  %467 = extractvalue %dx.types.ResRet.f32 %463, 3
  %468 = add i32 %462, 1
  %469 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %468, i32 undef)  ; BufferLoad(srv,index,wot)
  %470 = extractvalue %dx.types.ResRet.f32 %469, 0
  %471 = extractvalue %dx.types.ResRet.f32 %469, 1
  %472 = extractvalue %dx.types.ResRet.f32 %469, 2
  %473 = extractvalue %dx.types.ResRet.f32 %469, 3
  %474 = add i32 %462, 2
  %475 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %476 = extractvalue %dx.types.ResRet.f32 %475, 0
  %477 = extractvalue %dx.types.ResRet.f32 %475, 1
  %478 = extractvalue %dx.types.ResRet.f32 %475, 2
  %479 = extractvalue %dx.types.ResRet.f32 %475, 3
  %480 = add i32 %462, 3
  %481 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %480, i32 undef)  ; BufferLoad(srv,index,wot)
  %482 = extractvalue %dx.types.ResRet.f32 %481, 0
  %483 = extractvalue %dx.types.ResRet.f32 %481, 1
  %484 = extractvalue %dx.types.ResRet.f32 %481, 2
  %485 = extractvalue %dx.types.ResRet.f32 %481, 3
  %486 = add i32 %462, 4
  %487 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %486, i32 undef)  ; BufferLoad(srv,index,wot)
  %488 = extractvalue %dx.types.ResRet.f32 %487, 0
  %489 = extractvalue %dx.types.ResRet.f32 %487, 1
  %490 = extractvalue %dx.types.ResRet.f32 %487, 2
  %491 = extractvalue %dx.types.ResRet.f32 %487, 3
  %492 = add i32 %462, 5
  %493 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %492, i32 undef)  ; BufferLoad(srv,index,wot)
  %494 = extractvalue %dx.types.ResRet.f32 %493, 0
  %495 = extractvalue %dx.types.ResRet.f32 %493, 1
  %496 = extractvalue %dx.types.ResRet.f32 %493, 2
  %497 = extractvalue %dx.types.ResRet.f32 %493, 3
  %498 = add i32 %462, 6
  %499 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %498, i32 undef)  ; BufferLoad(srv,index,wot)
  %500 = extractvalue %dx.types.ResRet.f32 %499, 0
  %501 = extractvalue %dx.types.ResRet.f32 %499, 1
  %502 = extractvalue %dx.types.ResRet.f32 %499, 2
  %503 = extractvalue %dx.types.ResRet.f32 %499, 3
  %504 = add i32 %462, 7
  %505 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %504, i32 undef)  ; BufferLoad(srv,index,wot)
  %506 = extractvalue %dx.types.ResRet.f32 %505, 0
  %507 = extractvalue %dx.types.ResRet.f32 %505, 1
  %508 = extractvalue %dx.types.ResRet.f32 %505, 2
  %509 = extractvalue %dx.types.ResRet.f32 %505, 3
  %510 = fmul fast float %464, %450
  %511 = fmul fast float %476, %451
  %512 = fadd fast float %511, %510
  %513 = fmul fast float %488, %452
  %514 = fadd fast float %512, %513
  %515 = fmul fast float %465, %450
  %516 = fmul fast float %477, %451
  %517 = fadd fast float %516, %515
  %518 = fmul fast float %489, %452
  %519 = fadd fast float %517, %518
  %520 = fmul fast float %466, %450
  %521 = fmul fast float %478, %451
  %522 = fadd fast float %521, %520
  %523 = fmul fast float %490, %452
  %524 = fadd fast float %522, %523
  %525 = fmul fast float %467, %450
  %526 = fmul fast float %479, %451
  %527 = fadd fast float %526, %525
  %528 = fmul fast float %491, %452
  %529 = fadd fast float %527, %528
  %530 = fmul fast float %470, %450
  %531 = fmul fast float %482, %451
  %532 = fadd fast float %531, %530
  %533 = fmul fast float %494, %452
  %534 = fadd fast float %532, %533
  %535 = fmul fast float %471, %450
  %536 = fmul fast float %483, %451
  %537 = fadd fast float %536, %535
  %538 = fmul fast float %495, %452
  %539 = fadd fast float %537, %538
  %540 = fmul fast float %472, %450
  %541 = fmul fast float %484, %451
  %542 = fadd fast float %541, %540
  %543 = fmul fast float %496, %452
  %544 = fadd fast float %542, %543
  %545 = fmul fast float %473, %450
  %546 = fmul fast float %485, %451
  %547 = fadd fast float %546, %545
  %548 = fmul fast float %497, %452
  %549 = fadd fast float %547, %548
  %550 = fadd fast float %514, %500
  %551 = fadd fast float %519, %501
  %552 = fadd fast float %524, %502
  %553 = fadd fast float %529, %503
  %554 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %550)  ; FMax(a,b)
  %555 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %551)  ; FMax(a,b)
  %556 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %552)  ; FMax(a,b)
  %557 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %553)  ; FMax(a,b)
  %558 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %550)  ; FMin(a,b)
  %559 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %551)  ; FMin(a,b)
  %560 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %552)  ; FMin(a,b)
  %561 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %553)  ; FMin(a,b)
  %562 = fmul fast float %558, 0x3F847AE140000000
  %563 = fmul fast float %559, 0x3F847AE140000000
  %564 = fmul fast float %560, 0x3F847AE140000000
  %565 = fmul fast float %561, 0x3F847AE140000000
  %566 = fadd fast float %562, %554
  %567 = fadd fast float %563, %555
  %568 = fadd fast float %564, %556
  %569 = fadd fast float %565, %557
  %570 = fadd fast float %534, %506
  %571 = fadd fast float %539, %507
  %572 = fadd fast float %544, %508
  %573 = fadd fast float %549, %509
  %574 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %570)  ; FMax(a,b)
  %575 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %571)  ; FMax(a,b)
  %576 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %572)  ; FMax(a,b)
  %577 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %573)  ; FMax(a,b)
  %578 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %570)  ; FMin(a,b)
  %579 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %571)  ; FMin(a,b)
  %580 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %572)  ; FMin(a,b)
  %581 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %573)  ; FMin(a,b)
  %582 = fmul fast float %578, 0x3F847AE140000000
  %583 = fmul fast float %579, 0x3F847AE140000000
  %584 = fmul fast float %580, 0x3F847AE140000000
  %585 = fmul fast float %581, 0x3F847AE140000000
  %586 = fadd fast float %582, %574
  %587 = fadd fast float %583, %575
  %588 = fadd fast float %584, %576
  %589 = fadd fast float %585, %577
  br label %590

; <label>:590                                     ; preds = %590, %438
  %591 = phi i32 [ 0, %438 ], [ %611, %590 ]
  %592 = add i32 %462, 8
  %593 = shl i32 %591, 1
  %594 = add i32 %592, %593
  %595 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %594, i32 undef)  ; BufferLoad(srv,index,wot)
  %596 = extractvalue %dx.types.ResRet.f32 %595, 0
  %597 = extractvalue %dx.types.ResRet.f32 %595, 1
  %598 = extractvalue %dx.types.ResRet.f32 %595, 2
  %599 = extractvalue %dx.types.ResRet.f32 %595, 3
  %600 = add i32 %462, 9
  %601 = add i32 %600, %593
  %602 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %601, i32 undef)  ; BufferLoad(srv,index,wot)
  %603 = extractvalue %dx.types.ResRet.f32 %602, 0
  %604 = extractvalue %dx.types.ResRet.f32 %602, 1
  %605 = extractvalue %dx.types.ResRet.f32 %602, 2
  %606 = extractvalue %dx.types.ResRet.f32 %602, 3
  %607 = call float @dx.op.dot4.f32(i32 56, float %596, float %597, float %598, float %599, float %566, float %567, float %568, float %569)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %608 = call float @dx.op.dot4.f32(i32 56, float %603, float %604, float %605, float %606, float %586, float %587, float %588, float %589)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %609 = fadd fast float %608, %607
  %610 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 %591
  store float %609, float* %610, align 4, !tbaa !64, !noalias !58
  %611 = add nuw nsw i32 %591, 1
  %612 = icmp eq i32 %611, 8
  br i1 %612, label %613, label %590

; <label>:613                                     ; preds = %590
  %614 = call float @dx.op.unary.f32(i32 6, float %452)  ; FAbs(value)
  %615 = fsub fast float 1.000000e+00, %614
  %616 = call float @dx.op.unary.f32(i32 7, float %615)  ; Saturate(value)
  %617 = fmul fast float %461, %616
  %618 = add i32 %462, 24
  %619 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %618, i32 undef)  ; BufferLoad(srv,index,wot)
  %620 = extractvalue %dx.types.ResRet.f32 %619, 0
  %621 = extractvalue %dx.types.ResRet.f32 %619, 1
  %622 = extractvalue %dx.types.ResRet.f32 %619, 2
  %623 = extractvalue %dx.types.ResRet.f32 %619, 3
  %624 = add i32 %462, 25
  %625 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %624, i32 undef)  ; BufferLoad(srv,index,wot)
  %626 = extractvalue %dx.types.ResRet.f32 %625, 0
  %627 = extractvalue %dx.types.ResRet.f32 %625, 1
  %628 = extractvalue %dx.types.ResRet.f32 %625, 2
  %629 = extractvalue %dx.types.ResRet.f32 %625, 3
  %630 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 0
  %631 = load float, float* %630, align 4, !tbaa !64, !noalias !58
  %632 = fadd fast float %631, %620
  %633 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %632)  ; FMax(a,b)
  %634 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %632)  ; FMin(a,b)
  %635 = fmul fast float %634, 0x3F847AE140000000
  %636 = fadd fast float %635, %633
  store float %636, float* %630, align 4, !tbaa !64, !noalias !58
  %637 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 1
  %638 = load float, float* %637, align 4, !tbaa !64, !noalias !58
  %639 = fadd fast float %638, %621
  %640 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %639)  ; FMax(a,b)
  %641 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %639)  ; FMin(a,b)
  %642 = fmul fast float %641, 0x3F847AE140000000
  %643 = fadd fast float %642, %640
  store float %643, float* %637, align 4, !tbaa !64, !noalias !58
  %644 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 2
  %645 = load float, float* %644, align 4, !tbaa !64, !noalias !58
  %646 = fadd fast float %645, %622
  %647 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %646)  ; FMax(a,b)
  %648 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %646)  ; FMin(a,b)
  %649 = fmul fast float %648, 0x3F847AE140000000
  %650 = fadd fast float %649, %647
  store float %650, float* %644, align 4, !tbaa !64, !noalias !58
  %651 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 3
  %652 = load float, float* %651, align 4, !tbaa !64, !noalias !58
  %653 = fadd fast float %652, %623
  %654 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %653)  ; FMax(a,b)
  %655 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %653)  ; FMin(a,b)
  %656 = fmul fast float %655, 0x3F847AE140000000
  %657 = fadd fast float %656, %654
  store float %657, float* %651, align 4, !tbaa !64, !noalias !58
  %658 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 4
  %659 = load float, float* %658, align 4, !tbaa !64, !noalias !58
  %660 = fadd fast float %659, %626
  %661 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %660)  ; FMax(a,b)
  %662 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %660)  ; FMin(a,b)
  %663 = fmul fast float %662, 0x3F847AE140000000
  %664 = fadd fast float %663, %661
  store float %664, float* %658, align 4, !tbaa !64, !noalias !58
  %665 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 5
  %666 = load float, float* %665, align 4, !tbaa !64, !noalias !58
  %667 = fadd fast float %666, %627
  %668 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %667)  ; FMax(a,b)
  %669 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %667)  ; FMin(a,b)
  %670 = fmul fast float %669, 0x3F847AE140000000
  %671 = fadd fast float %670, %668
  store float %671, float* %665, align 4, !tbaa !64, !noalias !58
  %672 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 6
  %673 = load float, float* %672, align 4, !tbaa !64, !noalias !58
  %674 = fadd fast float %673, %628
  %675 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %674)  ; FMax(a,b)
  %676 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %674)  ; FMin(a,b)
  %677 = fmul fast float %676, 0x3F847AE140000000
  %678 = fadd fast float %677, %675
  store float %678, float* %672, align 4, !tbaa !64, !noalias !58
  %679 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 7
  %680 = load float, float* %679, align 4, !tbaa !64, !noalias !58
  %681 = fadd fast float %680, %629
  %682 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %681)  ; FMax(a,b)
  %683 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %681)  ; FMin(a,b)
  %684 = fmul fast float %683, 0x3F847AE140000000
  %685 = fadd fast float %684, %682
  store float %685, float* %679, align 4, !tbaa !64, !noalias !58
  %686 = add i32 %462, 26
  %687 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %686, i32 undef)  ; BufferLoad(srv,index,wot)
  %688 = extractvalue %dx.types.ResRet.f32 %687, 0
  %689 = extractvalue %dx.types.ResRet.f32 %687, 1
  %690 = extractvalue %dx.types.ResRet.f32 %687, 2
  %691 = extractvalue %dx.types.ResRet.f32 %687, 3
  %692 = add i32 %462, 27
  %693 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %692, i32 undef)  ; BufferLoad(srv,index,wot)
  %694 = extractvalue %dx.types.ResRet.f32 %693, 0
  %695 = extractvalue %dx.types.ResRet.f32 %693, 1
  %696 = extractvalue %dx.types.ResRet.f32 %693, 2
  %697 = extractvalue %dx.types.ResRet.f32 %693, 3
  %698 = fmul fast float %636, %688
  %699 = fmul fast float %643, %689
  %700 = fadd fast float %699, %698
  %701 = fmul fast float %650, %690
  %702 = fadd fast float %700, %701
  %703 = fmul fast float %657, %691
  %704 = fadd fast float %702, %703
  %705 = fmul fast float %664, %694
  %706 = fadd fast float %704, %705
  %707 = fmul fast float %671, %695
  %708 = fadd fast float %706, %707
  %709 = fmul fast float %678, %696
  %710 = fadd fast float %708, %709
  %711 = fmul fast float %685, %697
  %712 = fadd fast float %710, %711
  %713 = add i32 %462, 28
  %714 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %713, i32 undef)  ; BufferLoad(srv,index,wot)
  %715 = extractvalue %dx.types.ResRet.f32 %714, 0
  %716 = fadd fast float %712, %715
  %717 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %716)  ; FMax(a,b)
  %718 = fmul fast float %617, %717
  %719 = call float @dx.op.unary.f32(i32 7, float %718)  ; Saturate(value)
  %720 = getelementptr inbounds [8 x float], [8 x float]* %33, i32 0, i32 %441
  store float %719, float* %720, align 4, !tbaa !64, !noalias !58
  %721 = fadd fast float %719, %440
  %722 = add nuw nsw i32 %441, 1
  %723 = icmp eq i32 %722, 8
  br i1 %723, label %727, label %724

; <label>:724                                     ; preds = %613
  %725 = getelementptr inbounds [8 x i32], [8 x i32]* %32, i32 0, i32 %722
  %726 = load i32, i32* %725, align 4, !tbaa !54, !noalias !58
  br label %438

; <label>:727                                     ; preds = %613
  %728 = fcmp fast ugt float %721, 0x3EE4F8B580000000
  br i1 %728, label %729, label %990, !dx.controlflow.hints !66

; <label>:729                                     ; preds = %727
  %730 = fcmp fast ogt float %721, 0x3EE4F8B580000000
  %731 = fdiv fast float 1.000000e+00, %721
  %732 = select i1 %730, float %731, float 1.000000e+00
  %733 = getelementptr inbounds [8 x float], [8 x float]* %33, i32 0, i32 0
  %734 = load float, float* %733, align 4, !tbaa !64, !noalias !58
  %735 = fmul fast float %734, %732
  store float %735, float* %733, align 4, !tbaa !64, !noalias !58
  %736 = getelementptr inbounds [8 x float], [8 x float]* %33, i32 0, i32 1
  %737 = load float, float* %736, align 4, !tbaa !64, !noalias !58
  %738 = fmul fast float %737, %732
  store float %738, float* %736, align 4, !tbaa !64, !noalias !58
  %739 = getelementptr inbounds [8 x float], [8 x float]* %33, i32 0, i32 2
  %740 = load float, float* %739, align 4, !tbaa !64, !noalias !58
  %741 = fmul fast float %740, %732
  store float %741, float* %739, align 4, !tbaa !64, !noalias !58
  %742 = getelementptr inbounds [8 x float], [8 x float]* %33, i32 0, i32 3
  %743 = load float, float* %742, align 4, !tbaa !64, !noalias !58
  %744 = fmul fast float %743, %732
  store float %744, float* %742, align 4, !tbaa !64, !noalias !58
  %745 = getelementptr inbounds [8 x float], [8 x float]* %33, i32 0, i32 4
  %746 = load float, float* %745, align 4, !tbaa !64, !noalias !58
  %747 = fmul fast float %746, %732
  store float %747, float* %745, align 4, !tbaa !64, !noalias !58
  %748 = getelementptr inbounds [8 x float], [8 x float]* %33, i32 0, i32 5
  %749 = load float, float* %748, align 4, !tbaa !64, !noalias !58
  %750 = fmul fast float %749, %732
  store float %750, float* %748, align 4, !tbaa !64, !noalias !58
  %751 = getelementptr inbounds [8 x float], [8 x float]* %33, i32 0, i32 6
  %752 = load float, float* %751, align 4, !tbaa !64, !noalias !58
  %753 = fmul fast float %752, %732
  store float %753, float* %751, align 4, !tbaa !64, !noalias !58
  %754 = getelementptr inbounds [8 x float], [8 x float]* %33, i32 0, i32 7
  %755 = load float, float* %754, align 4, !tbaa !64, !noalias !58
  %756 = fmul fast float %755, %732
  store float %756, float* %754, align 4, !tbaa !64, !noalias !58
  br label %757

; <label>:757                                     ; preds = %984, %729
  %758 = phi float [ %988, %984 ], [ %735, %729 ]
  %759 = phi i32 [ %986, %984 ], [ %366, %729 ]
  %760 = phi float [ %960, %984 ], [ 0.000000e+00, %729 ]
  %761 = phi float [ %958, %984 ], [ 0.000000e+00, %729 ]
  %762 = phi float [ %956, %984 ], [ 0.000000e+00, %729 ]
  %763 = phi float [ %953, %984 ], [ 0.000000e+00, %729 ]
  %764 = phi float [ %951, %984 ], [ 0.000000e+00, %729 ]
  %765 = phi float [ %948, %984 ], [ 0.000000e+00, %729 ]
  %766 = phi float [ %946, %984 ], [ 0.000000e+00, %729 ]
  %767 = phi float [ %944, %984 ], [ 0.000000e+00, %729 ]
  %768 = phi float [ %941, %984 ], [ 0.000000e+00, %729 ]
  %769 = phi float [ %981, %984 ], [ 0.000000e+00, %729 ]
  %770 = phi float [ %979, %984 ], [ 0.000000e+00, %729 ]
  %771 = phi float [ %977, %984 ], [ 0.000000e+00, %729 ]
  %772 = phi float [ %974, %984 ], [ 0.000000e+00, %729 ]
  %773 = phi float [ %972, %984 ], [ 0.000000e+00, %729 ]
  %774 = phi float [ %969, %984 ], [ 0.000000e+00, %729 ]
  %775 = phi float [ %967, %984 ], [ 0.000000e+00, %729 ]
  %776 = phi float [ %965, %984 ], [ 0.000000e+00, %729 ]
  %777 = phi float [ %962, %984 ], [ 0.000000e+00, %729 ]
  %778 = phi float [ %939, %984 ], [ 0.000000e+00, %729 ]
  %779 = phi float [ %937, %984 ], [ 0.000000e+00, %729 ]
  %780 = phi float [ %935, %984 ], [ 0.000000e+00, %729 ]
  %781 = phi float [ %931, %984 ], [ 0.000000e+00, %729 ]
  %782 = phi float [ %929, %984 ], [ 0.000000e+00, %729 ]
  %783 = phi float [ %925, %984 ], [ 0.000000e+00, %729 ]
  %784 = phi float [ %923, %984 ], [ 0.000000e+00, %729 ]
  %785 = phi float [ %921, %984 ], [ 0.000000e+00, %729 ]
  %786 = phi float [ %917, %984 ], [ 0.000000e+00, %729 ]
  %787 = phi i32 [ %982, %984 ], [ 0, %729 ]
  %788 = shl i32 %759, 5
  %789 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %788, i32 undef)  ; BufferLoad(srv,index,wot)
  %790 = extractvalue %dx.types.ResRet.i32 %789, 0
  %791 = extractvalue %dx.types.ResRet.i32 %789, 1
  %792 = extractvalue %dx.types.ResRet.i32 %789, 2
  %793 = extractvalue %dx.types.ResRet.i32 %789, 3
  %794 = or i32 %788, 16
  %795 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %794, i32 undef)  ; BufferLoad(srv,index,wot)
  %796 = extractvalue %dx.types.ResRet.i32 %795, 0
  %797 = extractvalue %dx.types.ResRet.i32 %795, 1
  %798 = extractvalue %dx.types.ResRet.i32 %795, 2
  %799 = shl i32 %790, 4
  %800 = and i32 %799, 32752
  %801 = call float @dx.op.legacyF16ToF32(i32 131, i32 %800)  ; LegacyF16ToF32(value)
  %802 = lshr i32 %790, 7
  %803 = and i32 %802, 32752
  %804 = call float @dx.op.legacyF16ToF32(i32 131, i32 %803)  ; LegacyF16ToF32(value)
  %805 = lshr i32 %790, 22
  %806 = shl nuw nsw i32 %805, 5
  %807 = call float @dx.op.legacyF16ToF32(i32 131, i32 %806)  ; LegacyF16ToF32(value)
  %808 = and i32 %791, 255
  %809 = uitofp i32 %808 to float
  %810 = fmul fast float %809, 0x3F80204080000000
  %811 = fadd fast float %810, -1.000000e+00
  %812 = lshr i32 %791, 8
  %813 = and i32 %812, 255
  %814 = uitofp i32 %813 to float
  %815 = fmul fast float %814, 0x3F80204080000000
  %816 = fadd fast float %815, -1.000000e+00
  %817 = lshr i32 %791, 16
  %818 = and i32 %817, 255
  %819 = uitofp i32 %818 to float
  %820 = fmul fast float %819, 0x3F80204080000000
  %821 = fadd fast float %820, -1.000000e+00
  %822 = lshr i32 %791, 24
  %823 = uitofp i32 %822 to float
  %824 = fmul fast float %823, 0x3F80204080000000
  %825 = fadd fast float %824, -1.000000e+00
  %826 = and i32 %792, 255
  %827 = uitofp i32 %826 to float
  %828 = fmul fast float %827, 0x3F80204080000000
  %829 = fadd fast float %828, -1.000000e+00
  %830 = lshr i32 %792, 8
  %831 = and i32 %830, 255
  %832 = uitofp i32 %831 to float
  %833 = fmul fast float %832, 0x3F80204080000000
  %834 = fadd fast float %833, -1.000000e+00
  %835 = lshr i32 %792, 16
  %836 = and i32 %835, 255
  %837 = uitofp i32 %836 to float
  %838 = fmul fast float %837, 0x3F80204080000000
  %839 = fadd fast float %838, -1.000000e+00
  %840 = lshr i32 %792, 24
  %841 = uitofp i32 %840 to float
  %842 = fmul fast float %841, 0x3F80204080000000
  %843 = fadd fast float %842, -1.000000e+00
  %844 = and i32 %793, 255
  %845 = uitofp i32 %844 to float
  %846 = fmul fast float %845, 0x3F80204080000000
  %847 = fadd fast float %846, -1.000000e+00
  %848 = lshr i32 %793, 8
  %849 = and i32 %848, 255
  %850 = uitofp i32 %849 to float
  %851 = fmul fast float %850, 0x3F80204080000000
  %852 = fadd fast float %851, -1.000000e+00
  %853 = lshr i32 %793, 16
  %854 = and i32 %853, 255
  %855 = uitofp i32 %854 to float
  %856 = fmul fast float %855, 0x3F80204080000000
  %857 = fadd fast float %856, -1.000000e+00
  %858 = lshr i32 %793, 24
  %859 = uitofp i32 %858 to float
  %860 = fmul fast float %859, 0x3F80204080000000
  %861 = fadd fast float %860, -1.000000e+00
  %862 = and i32 %796, 255
  %863 = uitofp i32 %862 to float
  %864 = fmul fast float %863, 0x3F80204080000000
  %865 = fadd fast float %864, -1.000000e+00
  %866 = lshr i32 %796, 8
  %867 = and i32 %866, 255
  %868 = uitofp i32 %867 to float
  %869 = fmul fast float %868, 0x3F80204080000000
  %870 = fadd fast float %869, -1.000000e+00
  %871 = lshr i32 %796, 16
  %872 = and i32 %871, 255
  %873 = uitofp i32 %872 to float
  %874 = fmul fast float %873, 0x3F80204080000000
  %875 = fadd fast float %874, -1.000000e+00
  %876 = lshr i32 %796, 24
  %877 = uitofp i32 %876 to float
  %878 = fmul fast float %877, 0x3F80204080000000
  %879 = fadd fast float %878, -1.000000e+00
  %880 = and i32 %797, 255
  %881 = uitofp i32 %880 to float
  %882 = fmul fast float %881, 0x3F80204080000000
  %883 = fadd fast float %882, -1.000000e+00
  %884 = lshr i32 %797, 8
  %885 = and i32 %884, 255
  %886 = uitofp i32 %885 to float
  %887 = fmul fast float %886, 0x3F80204080000000
  %888 = fadd fast float %887, -1.000000e+00
  %889 = lshr i32 %797, 16
  %890 = and i32 %889, 255
  %891 = uitofp i32 %890 to float
  %892 = fmul fast float %891, 0x3F80204080000000
  %893 = fadd fast float %892, -1.000000e+00
  %894 = lshr i32 %797, 24
  %895 = uitofp i32 %894 to float
  %896 = fmul fast float %895, 0x3F80204080000000
  %897 = fadd fast float %896, -1.000000e+00
  %898 = and i32 %798, 255
  %899 = uitofp i32 %898 to float
  %900 = fmul fast float %899, 0x3F80204080000000
  %901 = fadd fast float %900, -1.000000e+00
  %902 = lshr i32 %798, 8
  %903 = and i32 %902, 255
  %904 = uitofp i32 %903 to float
  %905 = fmul fast float %904, 0x3F80204080000000
  %906 = fadd fast float %905, -1.000000e+00
  %907 = lshr i32 %798, 16
  %908 = and i32 %907, 255
  %909 = uitofp i32 %908 to float
  %910 = fmul fast float %909, 0x3F80204080000000
  %911 = fadd fast float %910, -1.000000e+00
  %912 = lshr i32 %798, 24
  %913 = uitofp i32 %912 to float
  %914 = fmul fast float %913, 0x3F80204080000000
  %915 = fadd fast float %914, -1.000000e+00
  %916 = fmul fast float %801, %758
  %917 = fadd fast float %916, %786
  %918 = fmul fast float %758, 0x3FFBB67AE0000000
  %919 = fmul fast float %918, %801
  %920 = fmul fast float %919, %811
  %921 = fadd fast float %920, %785
  %922 = fmul fast float %919, %816
  %923 = fadd fast float %922, %784
  %924 = fmul fast float %919, %821
  %925 = fadd fast float %924, %783
  %926 = fmul fast float %758, 0x3FFEFBDEC0000000
  %927 = fmul fast float %926, %801
  %928 = fmul fast float %927, %825
  %929 = fadd fast float %928, %782
  %930 = fmul fast float %927, %829
  %931 = fadd fast float %930, %781
  %932 = fmul fast float %758, 0x4001E377A0000000
  %933 = fmul fast float %932, %801
  %934 = fmul fast float %933, %834
  %935 = fadd fast float %934, %780
  %936 = fmul fast float %927, %839
  %937 = fadd fast float %936, %779
  %938 = fmul fast float %927, %843
  %939 = fadd fast float %938, %778
  %940 = fmul fast float %804, %758
  %941 = fadd fast float %940, %768
  %942 = fmul fast float %918, %804
  %943 = fmul fast float %942, %847
  %944 = fadd fast float %943, %767
  %945 = fmul fast float %942, %852
  %946 = fadd fast float %945, %766
  %947 = fmul fast float %942, %857
  %948 = fadd fast float %947, %765
  %949 = fmul fast float %926, %804
  %950 = fmul fast float %949, %861
  %951 = fadd fast float %950, %764
  %952 = fmul fast float %949, %865
  %953 = fadd fast float %952, %763
  %954 = fmul fast float %932, %804
  %955 = fmul fast float %954, %870
  %956 = fadd fast float %955, %762
  %957 = fmul fast float %949, %875
  %958 = fadd fast float %957, %761
  %959 = fmul fast float %949, %879
  %960 = fadd fast float %959, %760
  %961 = fmul fast float %807, %758
  %962 = fadd fast float %961, %777
  %963 = fmul fast float %918, %807
  %964 = fmul fast float %963, %883
  %965 = fadd fast float %964, %776
  %966 = fmul fast float %963, %888
  %967 = fadd fast float %966, %775
  %968 = fmul fast float %963, %893
  %969 = fadd fast float %968, %774
  %970 = fmul fast float %926, %807
  %971 = fmul fast float %970, %897
  %972 = fadd fast float %971, %773
  %973 = fmul fast float %970, %901
  %974 = fadd fast float %973, %772
  %975 = fmul fast float %932, %807
  %976 = fmul fast float %975, %906
  %977 = fadd fast float %976, %771
  %978 = fmul fast float %970, %911
  %979 = fadd fast float %978, %770
  %980 = fmul fast float %970, %915
  %981 = fadd fast float %980, %769
  %982 = add nuw nsw i32 %787, 1
  %983 = icmp eq i32 %982, 8
  br i1 %983, label %989, label %984

; <label>:984                                     ; preds = %757
  %985 = getelementptr inbounds [8 x i32], [8 x i32]* %32, i32 0, i32 %982
  %986 = load i32, i32* %985, align 4, !tbaa !54, !noalias !58
  %987 = getelementptr inbounds [8 x float], [8 x float]* %33, i32 0, i32 %982
  %988 = load float, float* %987, align 4, !tbaa !64, !noalias !58
  br label %757

; <label>:989                                     ; preds = %757
  br label %990

; <label>:990                                     ; preds = %989, %727, %294, %275, %247
  %991 = phi float [ 0.000000e+00, %247 ], [ 0.000000e+00, %275 ], [ 0.000000e+00, %294 ], [ 0.000000e+00, %727 ], [ %960, %989 ]
  %992 = phi float [ 0.000000e+00, %247 ], [ 0.000000e+00, %275 ], [ 0.000000e+00, %294 ], [ 0.000000e+00, %727 ], [ %958, %989 ]
  %993 = phi float [ 0.000000e+00, %247 ], [ 0.000000e+00, %275 ], [ 0.000000e+00, %294 ], [ 0.000000e+00, %727 ], [ %956, %989 ]
  %994 = phi float [ 0.000000e+00, %247 ], [ 0.000000e+00, %275 ], [ 0.000000e+00, %294 ], [ 0.000000e+00, %727 ], [ %953, %989 ]
  %995 = phi float [ 0.000000e+00, %247 ], [ 0.000000e+00, %275 ], [ 0.000000e+00, %294 ], [ 0.000000e+00, %727 ], [ %951, %989 ]
  %996 = phi float [ 0.000000e+00, %247 ], [ 0.000000e+00, %275 ], [ 0.000000e+00, %294 ], [ 0.000000e+00, %727 ], [ %948, %989 ]
  %997 = phi float [ 0.000000e+00, %247 ], [ 0.000000e+00, %275 ], [ 0.000000e+00, %294 ], [ 0.000000e+00, %727 ], [ %946, %989 ]
  %998 = phi float [ 0.000000e+00, %247 ], [ 0.000000e+00, %275 ], [ 0.000000e+00, %294 ], [ 0.000000e+00, %727 ], [ %944, %989 ]
  %999 = phi float [ 0.000000e+00, %247 ], [ 0.000000e+00, %275 ], [ 0.000000e+00, %294 ], [ 0.000000e+00, %727 ], [ %941, %989 ]
  %1000 = phi float [ 0.000000e+00, %247 ], [ 0.000000e+00, %275 ], [ 0.000000e+00, %294 ], [ 0.000000e+00, %727 ], [ %981, %989 ]
  %1001 = phi float [ 0.000000e+00, %247 ], [ 0.000000e+00, %275 ], [ 0.000000e+00, %294 ], [ 0.000000e+00, %727 ], [ %979, %989 ]
  %1002 = phi float [ 0.000000e+00, %247 ], [ 0.000000e+00, %275 ], [ 0.000000e+00, %294 ], [ 0.000000e+00, %727 ], [ %977, %989 ]
  %1003 = phi float [ 0.000000e+00, %247 ], [ 0.000000e+00, %275 ], [ 0.000000e+00, %294 ], [ 0.000000e+00, %727 ], [ %974, %989 ]
  %1004 = phi float [ 0.000000e+00, %247 ], [ 0.000000e+00, %275 ], [ 0.000000e+00, %294 ], [ 0.000000e+00, %727 ], [ %972, %989 ]
  %1005 = phi float [ 0.000000e+00, %247 ], [ 0.000000e+00, %275 ], [ 0.000000e+00, %294 ], [ 0.000000e+00, %727 ], [ %969, %989 ]
  %1006 = phi float [ 0.000000e+00, %247 ], [ 0.000000e+00, %275 ], [ 0.000000e+00, %294 ], [ 0.000000e+00, %727 ], [ %967, %989 ]
  %1007 = phi float [ 0.000000e+00, %247 ], [ 0.000000e+00, %275 ], [ 0.000000e+00, %294 ], [ 0.000000e+00, %727 ], [ %965, %989 ]
  %1008 = phi float [ 0.000000e+00, %247 ], [ 0.000000e+00, %275 ], [ 0.000000e+00, %294 ], [ 0.000000e+00, %727 ], [ %962, %989 ]
  %1009 = phi float [ 0.000000e+00, %247 ], [ 0.000000e+00, %275 ], [ 0.000000e+00, %294 ], [ 0.000000e+00, %727 ], [ %939, %989 ]
  %1010 = phi float [ 0.000000e+00, %247 ], [ 0.000000e+00, %275 ], [ 0.000000e+00, %294 ], [ 0.000000e+00, %727 ], [ %937, %989 ]
  %1011 = phi float [ 0.000000e+00, %247 ], [ 0.000000e+00, %275 ], [ 0.000000e+00, %294 ], [ 0.000000e+00, %727 ], [ %935, %989 ]
  %1012 = phi float [ 0.000000e+00, %247 ], [ 0.000000e+00, %275 ], [ 0.000000e+00, %294 ], [ 0.000000e+00, %727 ], [ %931, %989 ]
  %1013 = phi float [ 0.000000e+00, %247 ], [ 0.000000e+00, %275 ], [ 0.000000e+00, %294 ], [ 0.000000e+00, %727 ], [ %929, %989 ]
  %1014 = phi float [ 0.000000e+00, %247 ], [ 0.000000e+00, %275 ], [ 0.000000e+00, %294 ], [ 0.000000e+00, %727 ], [ %925, %989 ]
  %1015 = phi float [ 0.000000e+00, %247 ], [ 0.000000e+00, %275 ], [ 0.000000e+00, %294 ], [ 0.000000e+00, %727 ], [ %923, %989 ]
  %1016 = phi float [ 0.000000e+00, %247 ], [ 0.000000e+00, %275 ], [ 0.000000e+00, %294 ], [ 0.000000e+00, %727 ], [ %921, %989 ]
  %1017 = phi float [ 0.000000e+00, %247 ], [ 0.000000e+00, %275 ], [ 0.000000e+00, %294 ], [ 0.000000e+00, %727 ], [ %917, %989 ]
  %1018 = phi i1 [ false, %247 ], [ false, %275 ], [ false, %294 ], [ false, %727 ], [ true, %989 ]
  br i1 %1018, label %1092, label %1019, !dx.controlflow.hints !67

; <label>:1019                                    ; preds = %990
  %1020 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %1021 = extractvalue %dx.types.ResRet.i32 %1020, 0
  %1022 = extractvalue %dx.types.ResRet.i32 %1020, 1
  %1023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %1024 = extractvalue %dx.types.ResRet.i32 %1023, 0
  %1025 = extractvalue %dx.types.ResRet.i32 %1023, 1
  %1026 = extractvalue %dx.types.ResRet.i32 %1023, 2
  %1027 = extractvalue %dx.types.ResRet.i32 %1023, 3
  %1028 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %1029 = extractvalue %dx.types.ResRet.i32 %1028, 0
  %1030 = extractvalue %dx.types.ResRet.i32 %1028, 1
  %1031 = extractvalue %dx.types.ResRet.i32 %1028, 2
  %1032 = extractvalue %dx.types.ResRet.i32 %1028, 3
  %1033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %1034 = extractvalue %dx.types.ResRet.i32 %1033, 0
  %1035 = extractvalue %dx.types.ResRet.i32 %1033, 1
  %1036 = extractvalue %dx.types.ResRet.i32 %1033, 2
  %1037 = extractvalue %dx.types.ResRet.i32 %1033, 3
  %1038 = and i32 %1034, 65535
  %1039 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1038)  ; LegacyF16ToF32(value)
  %1040 = lshr i32 %1034, 16
  %1041 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1040)  ; LegacyF16ToF32(value)
  %1042 = and i32 %1035, 65535
  %1043 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1042)  ; LegacyF16ToF32(value)
  %1044 = lshr i32 %1035, 16
  %1045 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1044)  ; LegacyF16ToF32(value)
  %1046 = and i32 %1036, 65535
  %1047 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1046)  ; LegacyF16ToF32(value)
  %1048 = lshr i32 %1036, 16
  %1049 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1048)  ; LegacyF16ToF32(value)
  %1050 = and i32 %1037, 65535
  %1051 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1050)  ; LegacyF16ToF32(value)
  %1052 = lshr i32 %1037, 16
  %1053 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1052)  ; LegacyF16ToF32(value)
  %1054 = and i32 %1029, 65535
  %1055 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1054)  ; LegacyF16ToF32(value)
  %1056 = lshr i32 %1029, 16
  %1057 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1056)  ; LegacyF16ToF32(value)
  %1058 = and i32 %1030, 65535
  %1059 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1058)  ; LegacyF16ToF32(value)
  %1060 = lshr i32 %1030, 16
  %1061 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1060)  ; LegacyF16ToF32(value)
  %1062 = and i32 %1031, 65535
  %1063 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1062)  ; LegacyF16ToF32(value)
  %1064 = lshr i32 %1031, 16
  %1065 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1064)  ; LegacyF16ToF32(value)
  %1066 = and i32 %1032, 65535
  %1067 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1066)  ; LegacyF16ToF32(value)
  %1068 = lshr i32 %1032, 16
  %1069 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1068)  ; LegacyF16ToF32(value)
  %1070 = and i32 %1024, 65535
  %1071 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1070)  ; LegacyF16ToF32(value)
  %1072 = lshr i32 %1024, 16
  %1073 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1072)  ; LegacyF16ToF32(value)
  %1074 = and i32 %1025, 65535
  %1075 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1074)  ; LegacyF16ToF32(value)
  %1076 = lshr i32 %1025, 16
  %1077 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1076)  ; LegacyF16ToF32(value)
  %1078 = and i32 %1026, 65535
  %1079 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1078)  ; LegacyF16ToF32(value)
  %1080 = lshr i32 %1026, 16
  %1081 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1080)  ; LegacyF16ToF32(value)
  %1082 = and i32 %1027, 65535
  %1083 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1082)  ; LegacyF16ToF32(value)
  %1084 = lshr i32 %1027, 16
  %1085 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1084)  ; LegacyF16ToF32(value)
  %1086 = and i32 %1021, 65535
  %1087 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1086)  ; LegacyF16ToF32(value)
  %1088 = lshr i32 %1021, 16
  %1089 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1088)  ; LegacyF16ToF32(value)
  %1090 = and i32 %1022, 65535
  %1091 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1090)  ; LegacyF16ToF32(value)
  br label %1092

; <label>:1092                                    ; preds = %1019, %990, %244
  %1093 = phi float [ %1091, %1019 ], [ %1000, %990 ], [ 0.000000e+00, %244 ]
  %1094 = phi float [ %1089, %1019 ], [ %1001, %990 ], [ 0.000000e+00, %244 ]
  %1095 = phi float [ %1087, %1019 ], [ %1002, %990 ], [ 0.000000e+00, %244 ]
  %1096 = phi float [ %1085, %1019 ], [ %1003, %990 ], [ 0.000000e+00, %244 ]
  %1097 = phi float [ %1083, %1019 ], [ %1004, %990 ], [ 0.000000e+00, %244 ]
  %1098 = phi float [ %1081, %1019 ], [ %1005, %990 ], [ 0.000000e+00, %244 ]
  %1099 = phi float [ %1079, %1019 ], [ %1006, %990 ], [ 0.000000e+00, %244 ]
  %1100 = phi float [ %1077, %1019 ], [ %1007, %990 ], [ 0.000000e+00, %244 ]
  %1101 = phi float [ %1075, %1019 ], [ %1008, %990 ], [ 0.000000e+00, %244 ]
  %1102 = phi float [ %1073, %1019 ], [ %991, %990 ], [ 0.000000e+00, %244 ]
  %1103 = phi float [ %1071, %1019 ], [ %992, %990 ], [ 0.000000e+00, %244 ]
  %1104 = phi float [ %1069, %1019 ], [ %993, %990 ], [ 0.000000e+00, %244 ]
  %1105 = phi float [ %1067, %1019 ], [ %994, %990 ], [ 0.000000e+00, %244 ]
  %1106 = phi float [ %1065, %1019 ], [ %995, %990 ], [ 0.000000e+00, %244 ]
  %1107 = phi float [ %1063, %1019 ], [ %996, %990 ], [ 0.000000e+00, %244 ]
  %1108 = phi float [ %1061, %1019 ], [ %997, %990 ], [ 0.000000e+00, %244 ]
  %1109 = phi float [ %1059, %1019 ], [ %998, %990 ], [ 0.000000e+00, %244 ]
  %1110 = phi float [ %1057, %1019 ], [ %999, %990 ], [ 0.000000e+00, %244 ]
  %1111 = phi float [ %1055, %1019 ], [ %1009, %990 ], [ 0.000000e+00, %244 ]
  %1112 = phi float [ %1053, %1019 ], [ %1010, %990 ], [ 0.000000e+00, %244 ]
  %1113 = phi float [ %1051, %1019 ], [ %1011, %990 ], [ 0.000000e+00, %244 ]
  %1114 = phi float [ %1049, %1019 ], [ %1012, %990 ], [ 0.000000e+00, %244 ]
  %1115 = phi float [ %1047, %1019 ], [ %1013, %990 ], [ 0.000000e+00, %244 ]
  %1116 = phi float [ %1045, %1019 ], [ %1014, %990 ], [ 0.000000e+00, %244 ]
  %1117 = phi float [ %1043, %1019 ], [ %1015, %990 ], [ 0.000000e+00, %244 ]
  %1118 = phi float [ %1041, %1019 ], [ %1016, %990 ], [ 0.000000e+00, %244 ]
  %1119 = phi float [ %1039, %1019 ], [ %1017, %990 ], [ 0.000000e+00, %244 ]
  %1120 = fcmp fast olt float %245, 1.000000e+00
  br i1 %1120, label %1121, label %1781, !dx.controlflow.hints !68

; <label>:1121                                    ; preds = %1092
  %1122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1123 = extractvalue %dx.types.CBufRet.f32 %1122, 0
  %1124 = extractvalue %dx.types.CBufRet.f32 %1122, 1
  %1125 = fsub fast float %195, %1123
  %1126 = fsub fast float %200, %1124
  %1127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1128 = extractvalue %dx.types.CBufRet.f32 %1127, 0
  %1129 = extractvalue %dx.types.CBufRet.f32 %1127, 1
  %1130 = fmul fast float %1125, %1128
  %1131 = fmul fast float %1126, %1129
  %1132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1133 = extractvalue %dx.types.CBufRet.f32 %1132, 0
  %1134 = fmul fast float %1133, %1130
  %1135 = extractvalue %dx.types.CBufRet.f32 %1132, 1
  %1136 = fadd fast float %1134, %1135
  %1137 = extractvalue %dx.types.CBufRet.f32 %1132, 2
  %1138 = fmul fast float %1137, %1131
  %1139 = extractvalue %dx.types.CBufRet.f32 %1132, 3
  %1140 = fadd fast float %1138, %1139
  %1141 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %26, float %1136, float %1140, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1142 = extractvalue %dx.types.ResRet.f32 %1141, 0
  %1143 = extractvalue %dx.types.ResRet.f32 %1141, 1
  %1144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1145 = extractvalue %dx.types.CBufRet.f32 %1144, 1
  %1146 = extractvalue %dx.types.CBufRet.f32 %1144, 0
  %1147 = fsub fast float %1145, %1146
  %1148 = fmul fast float %1147, %1142
  %1149 = fadd fast float %1148, %1146
  %1150 = extractvalue %dx.types.CBufRet.f32 %1144, 3
  %1151 = extractvalue %dx.types.CBufRet.f32 %1144, 2
  %1152 = fsub fast float %1150, %1151
  %1153 = fmul fast float %1152, %1143
  %1154 = fadd fast float %1153, %1151
  %1155 = fsub fast float %205, %1149
  %1156 = fsub fast float %1154, %1149
  %1157 = fdiv fast float %1155, %1156
  %1158 = call float @dx.op.unary.f32(i32 7, float %1157)  ; Saturate(value)
  %1159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %1160 = extractvalue %dx.types.CBufRet.f32 %1159, 0
  %1161 = fmul fast float %1160, %1158
  %1162 = extractvalue %dx.types.CBufRet.f32 %1159, 1
  %1163 = fadd fast float %1161, %1162
  %1164 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %26, float %1136, float %1140, float %1163, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1165 = extractvalue %dx.types.ResRet.f32 %1164, 0
  %1166 = extractvalue %dx.types.ResRet.f32 %1164, 1
  %1167 = extractvalue %dx.types.ResRet.f32 %1164, 2
  %1168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %1169 = extractvalue %dx.types.CBufRet.f32 %1168, 0
  %1170 = extractvalue %dx.types.CBufRet.f32 %1168, 1
  %1171 = extractvalue %dx.types.CBufRet.f32 %1168, 2
  %1172 = fmul fast float %1169, %1165
  %1173 = fmul fast float %1170, %1166
  %1174 = fmul fast float %1171, %1167
  %1175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %1176 = extractvalue %dx.types.CBufRet.f32 %1175, 0
  %1177 = extractvalue %dx.types.CBufRet.f32 %1175, 1
  %1178 = extractvalue %dx.types.CBufRet.f32 %1175, 2
  %1179 = fadd fast float %1172, %1176
  %1180 = fadd fast float %1173, %1177
  %1181 = fadd fast float %1174, %1178
  %1182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %1183 = extractvalue %dx.types.CBufRet.f32 %1182, 0
  %1184 = fmul fast float %1183, %1130
  %1185 = extractvalue %dx.types.CBufRet.f32 %1182, 1
  %1186 = fadd fast float %1184, %1185
  %1187 = extractvalue %dx.types.CBufRet.f32 %1182, 2
  %1188 = fmul fast float %1187, %1131
  %1189 = extractvalue %dx.types.CBufRet.f32 %1182, 3
  %1190 = fadd fast float %1188, %1189
  %1191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %1192 = extractvalue %dx.types.CBufRet.f32 %1191, 0
  %1193 = extractvalue %dx.types.CBufRet.f32 %1191, 1
  %1194 = extractvalue %dx.types.CBufRet.f32 %1191, 2
  %1195 = extractvalue %dx.types.CBufRet.f32 %1191, 3
  %1196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %1197 = extractvalue %dx.types.CBufRet.f32 %1196, 0
  %1198 = extractvalue %dx.types.CBufRet.f32 %1196, 1
  %1199 = extractvalue %dx.types.CBufRet.f32 %1196, 2
  %1200 = extractvalue %dx.types.CBufRet.f32 %1196, 3
  %1201 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %26, float %1186, float %1190, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1202 = extractvalue %dx.types.ResRet.f32 %1201, 0
  %1203 = extractvalue %dx.types.ResRet.f32 %1201, 1
  %1204 = extractvalue %dx.types.ResRet.f32 %1201, 2
  %1205 = extractvalue %dx.types.ResRet.f32 %1201, 3
  %1206 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %26, float %1186, float %1190, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1207 = extractvalue %dx.types.ResRet.f32 %1206, 0
  %1208 = extractvalue %dx.types.ResRet.f32 %1206, 1
  %1209 = extractvalue %dx.types.ResRet.f32 %1206, 2
  %1210 = extractvalue %dx.types.ResRet.f32 %1206, 3
  %1211 = fmul fast float %1202, %1179
  %1212 = fmul fast float %1207, %1179
  %1213 = fmul fast float %1209, %1179
  %1214 = fmul fast float %1205, %1179
  %1215 = fadd fast float %1211, %1192
  %1216 = fadd fast float %1212, %1193
  %1217 = fadd fast float %1213, %1194
  %1218 = fadd fast float %1214, %1195
  %1219 = fmul fast float %1203, %1179
  %1220 = fmul fast float %1208, %1179
  %1221 = fadd fast float %1219, %1197
  %1222 = fadd fast float %1220, %1198
  %1223 = fmul fast float %1204, %1179
  %1224 = fmul fast float %1210, %1179
  %1225 = fadd fast float %1223, %1199
  %1226 = fadd fast float %1224, %1200
  %1227 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %26, float %1186, float %1190, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1228 = extractvalue %dx.types.ResRet.f32 %1227, 0
  %1229 = extractvalue %dx.types.ResRet.f32 %1227, 1
  %1230 = extractvalue %dx.types.ResRet.f32 %1227, 2
  %1231 = extractvalue %dx.types.ResRet.f32 %1227, 3
  %1232 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %26, float %1186, float %1190, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1233 = extractvalue %dx.types.ResRet.f32 %1232, 0
  %1234 = extractvalue %dx.types.ResRet.f32 %1232, 1
  %1235 = extractvalue %dx.types.ResRet.f32 %1232, 2
  %1236 = extractvalue %dx.types.ResRet.f32 %1232, 3
  %1237 = fmul fast float %1228, %1180
  %1238 = fmul fast float %1233, %1180
  %1239 = fmul fast float %1235, %1180
  %1240 = fmul fast float %1231, %1180
  %1241 = fadd fast float %1215, %1237
  %1242 = fadd fast float %1216, %1238
  %1243 = fadd fast float %1217, %1239
  %1244 = fadd fast float %1218, %1240
  %1245 = fmul fast float %1229, %1180
  %1246 = fmul fast float %1234, %1180
  %1247 = fadd fast float %1221, %1245
  %1248 = fadd fast float %1222, %1246
  %1249 = fmul fast float %1230, %1180
  %1250 = fmul fast float %1236, %1180
  %1251 = fadd fast float %1225, %1249
  %1252 = fadd fast float %1226, %1250
  %1253 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %26, float %1186, float %1190, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1254 = extractvalue %dx.types.ResRet.f32 %1253, 0
  %1255 = extractvalue %dx.types.ResRet.f32 %1253, 1
  %1256 = extractvalue %dx.types.ResRet.f32 %1253, 2
  %1257 = extractvalue %dx.types.ResRet.f32 %1253, 3
  %1258 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %26, float %1186, float %1190, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1259 = extractvalue %dx.types.ResRet.f32 %1258, 0
  %1260 = extractvalue %dx.types.ResRet.f32 %1258, 1
  %1261 = extractvalue %dx.types.ResRet.f32 %1258, 2
  %1262 = extractvalue %dx.types.ResRet.f32 %1258, 3
  %1263 = fmul fast float %1254, %1181
  %1264 = fmul fast float %1259, %1181
  %1265 = fmul fast float %1261, %1181
  %1266 = fmul fast float %1257, %1181
  %1267 = fadd fast float %1241, %1263
  %1268 = fadd fast float %1242, %1264
  %1269 = fadd fast float %1243, %1265
  %1270 = fadd fast float %1244, %1266
  %1271 = fmul fast float %1255, %1181
  %1272 = fmul fast float %1260, %1181
  %1273 = fadd fast float %1247, %1271
  %1274 = fadd fast float %1248, %1272
  %1275 = fmul fast float %1256, %1181
  %1276 = fmul fast float %1262, %1181
  %1277 = fadd fast float %1251, %1275
  %1278 = fadd fast float %1252, %1276
  %1279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %1280 = extractvalue %dx.types.CBufRet.f32 %1279, 0
  %1281 = fsub fast float %195, %1280
  %1282 = fsub fast float %1123, %195
  %1283 = call float @dx.op.binary.f32(i32 35, float %1282, float %1281)  ; FMax(a,b)
  %1284 = extractvalue %dx.types.CBufRet.f32 %1279, 1
  %1285 = fsub fast float %200, %1284
  %1286 = fsub fast float %1124, %200
  %1287 = call float @dx.op.binary.f32(i32 35, float %1286, float %1285)  ; FMax(a,b)
  %1288 = call float @dx.op.binary.f32(i32 35, float %1283, float %1287)  ; FMax(a,b)
  %1289 = extractvalue %dx.types.CBufRet.f32 %1127, 3
  %1290 = fmul fast float %1289, %1288
  %1291 = call float @dx.op.unary.f32(i32 7, float %1290)  ; Saturate(value)
  %1292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %1293 = extractvalue %dx.types.CBufRet.f32 %1292, 0
  %1294 = extractvalue %dx.types.CBufRet.f32 %1292, 1
  %1295 = extractvalue %dx.types.CBufRet.f32 %1292, 2
  %1296 = extractvalue %dx.types.CBufRet.f32 %1292, 3
  %1297 = fsub fast float %1293, %1267
  %1298 = fsub fast float %1294, %1268
  %1299 = fsub fast float %1295, %1269
  %1300 = fsub fast float %1296, %1270
  %1301 = fmul fast float %1297, %1291
  %1302 = fmul fast float %1298, %1291
  %1303 = fmul fast float %1299, %1291
  %1304 = fmul fast float %1300, %1291
  %1305 = fadd fast float %1301, %1267
  %1306 = fadd fast float %1302, %1268
  %1307 = fadd fast float %1303, %1269
  %1308 = fadd fast float %1304, %1270
  %1309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %1310 = extractvalue %dx.types.CBufRet.f32 %1309, 0
  %1311 = extractvalue %dx.types.CBufRet.f32 %1309, 1
  %1312 = fsub fast float %1310, %1273
  %1313 = fsub fast float %1311, %1274
  %1314 = fmul fast float %1312, %1291
  %1315 = fmul fast float %1313, %1291
  %1316 = fadd fast float %1314, %1273
  %1317 = fadd fast float %1315, %1274
  %1318 = extractvalue %dx.types.CBufRet.f32 %1309, 2
  %1319 = extractvalue %dx.types.CBufRet.f32 %1309, 3
  %1320 = fsub fast float %1318, %1277
  %1321 = fsub fast float %1319, %1278
  %1322 = fmul fast float %1320, %1291
  %1323 = fmul fast float %1321, %1291
  %1324 = fadd fast float %1322, %1277
  %1325 = fadd fast float %1323, %1278
  %1326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %1327 = extractvalue %dx.types.CBufRet.f32 %1326, 0
  %1328 = fmul fast float %1327, %1305
  %1329 = fmul fast float %1327, %1306
  %1330 = fmul fast float %1327, %1307
  %1331 = fmul fast float %1327, %1308
  %1332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %1333 = extractvalue %dx.types.CBufRet.f32 %1332, 0
  %1334 = fmul fast float %1333, %1316
  %1335 = fmul fast float %1333, %1317
  %1336 = fadd fast float %1334, %1328
  %1337 = fadd fast float %1335, %1330
  %1338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %1339 = extractvalue %dx.types.CBufRet.f32 %1338, 0
  %1340 = fmul fast float %1339, %1324
  %1341 = fmul fast float %1339, %1325
  %1342 = fadd fast float %1336, %1340
  %1343 = fadd fast float %1337, %1341
  %1344 = extractvalue %dx.types.CBufRet.f32 %1326, 1
  %1345 = fmul fast float %1344, %1305
  %1346 = fmul fast float %1344, %1306
  %1347 = fmul fast float %1344, %1307
  %1348 = fmul fast float %1344, %1308
  %1349 = extractvalue %dx.types.CBufRet.f32 %1332, 1
  %1350 = fmul fast float %1349, %1316
  %1351 = fmul fast float %1349, %1317
  %1352 = fadd fast float %1350, %1345
  %1353 = fadd fast float %1351, %1347
  %1354 = extractvalue %dx.types.CBufRet.f32 %1338, 1
  %1355 = fmul fast float %1354, %1324
  %1356 = fmul fast float %1354, %1325
  %1357 = fadd fast float %1352, %1355
  %1358 = fadd fast float %1353, %1356
  %1359 = extractvalue %dx.types.CBufRet.f32 %1326, 2
  %1360 = fmul fast float %1359, %1305
  %1361 = fmul fast float %1359, %1306
  %1362 = fmul fast float %1359, %1307
  %1363 = fmul fast float %1359, %1308
  %1364 = extractvalue %dx.types.CBufRet.f32 %1332, 2
  %1365 = fmul fast float %1364, %1316
  %1366 = fmul fast float %1364, %1317
  %1367 = fadd fast float %1365, %1360
  %1368 = fadd fast float %1366, %1362
  %1369 = extractvalue %dx.types.CBufRet.f32 %1338, 2
  %1370 = fmul fast float %1369, %1324
  %1371 = fmul fast float %1369, %1325
  %1372 = fadd fast float %1367, %1370
  %1373 = fadd fast float %1368, %1371
  %1374 = fmul fast float %1361, %1361
  %1375 = fmul fast float %1373, %1373
  %1376 = fmul fast float %1363, %1363
  %1377 = fadd fast float %1376, %1374
  %1378 = fadd fast float %1377, %1375
  %1379 = call float @dx.op.unary.f32(i32 24, float %1378)  ; Sqrt(value)
  %1380 = fcmp fast ugt float %1379, 0.000000e+00
  br i1 %1380, label %1381, label %1396, !dx.controlflow.hints !69

; <label>:1381                                    ; preds = %1121
  %1382 = fsub fast float -0.000000e+00, %1363
  %1383 = fdiv fast float %1382, %1379
  %1384 = fsub fast float -0.000000e+00, %1361
  %1385 = fdiv fast float %1384, %1379
  %1386 = fdiv fast float %1373, %1379
  %1387 = fmul fast float %1372, 0x3FE279A760000000
  %1388 = fmul fast float %1385, %1361
  %1389 = fmul fast float %1386, %1373
  %1390 = fmul fast float %1383, %1363
  %1391 = fadd fast float %1388, %1390
  %1392 = fsub fast float %1391, %1389
  %1393 = call float @dx.op.unary.f32(i32 6, float %1392)  ; FAbs(value)
  %1394 = fadd fast float %1393, 0x3DDB7CDFE0000000
  %1395 = fdiv fast float %1387, %1394
  br label %1396

; <label>:1396                                    ; preds = %1381, %1121
  %1397 = phi float [ %1395, %1381 ], [ 1.000000e+00, %1121 ]
  %1398 = fmul fast float %1346, %1346
  %1399 = fmul fast float %1358, %1358
  %1400 = fmul fast float %1348, %1348
  %1401 = fadd fast float %1400, %1398
  %1402 = fadd fast float %1401, %1399
  %1403 = call float @dx.op.unary.f32(i32 24, float %1402)  ; Sqrt(value)
  %1404 = fcmp fast ugt float %1403, 0.000000e+00
  br i1 %1404, label %1405, label %1420, !dx.controlflow.hints !69

; <label>:1405                                    ; preds = %1396
  %1406 = fsub fast float -0.000000e+00, %1348
  %1407 = fdiv fast float %1406, %1403
  %1408 = fsub fast float -0.000000e+00, %1346
  %1409 = fdiv fast float %1408, %1403
  %1410 = fdiv fast float %1358, %1403
  %1411 = fmul fast float %1357, 0x3FE279A760000000
  %1412 = fmul fast float %1409, %1346
  %1413 = fmul fast float %1410, %1358
  %1414 = fmul fast float %1407, %1348
  %1415 = fadd fast float %1412, %1414
  %1416 = fsub fast float %1415, %1413
  %1417 = call float @dx.op.unary.f32(i32 6, float %1416)  ; FAbs(value)
  %1418 = fadd fast float %1417, 0x3DDB7CDFE0000000
  %1419 = fdiv fast float %1411, %1418
  br label %1420

; <label>:1420                                    ; preds = %1405, %1396
  %1421 = phi float [ %1419, %1405 ], [ 1.000000e+00, %1396 ]
  %1422 = call float @dx.op.binary.f32(i32 36, float %1421, float %1397)  ; FMin(a,b)
  %1423 = fmul fast float %1329, %1329
  %1424 = fmul fast float %1343, %1343
  %1425 = fmul fast float %1331, %1331
  %1426 = fadd fast float %1425, %1423
  %1427 = fadd fast float %1426, %1424
  %1428 = call float @dx.op.unary.f32(i32 24, float %1427)  ; Sqrt(value)
  %1429 = fcmp fast ugt float %1428, 0.000000e+00
  br i1 %1429, label %1430, label %1445, !dx.controlflow.hints !69

; <label>:1430                                    ; preds = %1420
  %1431 = fsub fast float -0.000000e+00, %1331
  %1432 = fdiv fast float %1431, %1428
  %1433 = fsub fast float -0.000000e+00, %1329
  %1434 = fdiv fast float %1433, %1428
  %1435 = fdiv fast float %1343, %1428
  %1436 = fmul fast float %1342, 0x3FE279A760000000
  %1437 = fmul fast float %1434, %1329
  %1438 = fmul fast float %1435, %1343
  %1439 = fmul fast float %1432, %1331
  %1440 = fadd fast float %1437, %1439
  %1441 = fsub fast float %1440, %1438
  %1442 = call float @dx.op.unary.f32(i32 6, float %1441)  ; FAbs(value)
  %1443 = fadd fast float %1442, 0x3DDB7CDFE0000000
  %1444 = fdiv fast float %1436, %1443
  br label %1445

; <label>:1445                                    ; preds = %1430, %1420
  %1446 = phi float [ %1444, %1430 ], [ 1.000000e+00, %1420 ]
  %1447 = call float @dx.op.binary.f32(i32 36, float %1446, float %1422)  ; FMin(a,b)
  %1448 = call float @dx.op.unary.f32(i32 7, float %1447)  ; Saturate(value)
  %1449 = fcmp fast olt float %1448, 1.000000e+00
  br i1 %1449, label %1450, label %1460, !dx.controlflow.hints !70

; <label>:1450                                    ; preds = %1445
  %1451 = fmul fast float %1448, %1329
  %1452 = fmul fast float %1448, %1343
  %1453 = fmul fast float %1448, %1331
  %1454 = fmul fast float %1448, %1346
  %1455 = fmul fast float %1448, %1358
  %1456 = fmul fast float %1448, %1348
  %1457 = fmul fast float %1448, %1361
  %1458 = fmul fast float %1448, %1373
  %1459 = fmul fast float %1448, %1363
  br label %1460

; <label>:1460                                    ; preds = %1450, %1445
  %1461 = phi float [ %1457, %1450 ], [ %1361, %1445 ]
  %1462 = phi float [ %1458, %1450 ], [ %1373, %1445 ]
  %1463 = phi float [ %1459, %1450 ], [ %1363, %1445 ]
  %1464 = phi float [ %1454, %1450 ], [ %1346, %1445 ]
  %1465 = phi float [ %1455, %1450 ], [ %1358, %1445 ]
  %1466 = phi float [ %1456, %1450 ], [ %1348, %1445 ]
  %1467 = phi float [ %1451, %1450 ], [ %1329, %1445 ]
  %1468 = phi float [ %1452, %1450 ], [ %1343, %1445 ]
  %1469 = phi float [ %1453, %1450 ], [ %1331, %1445 ]
  %1470 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1342)  ; FMax(a,b)
  %1471 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1357)  ; FMax(a,b)
  %1472 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1372)  ; FMax(a,b)
  %1473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %1474 = extractvalue %dx.types.CBufRet.f32 %1473, 0
  %1475 = fcmp fast ogt float %1474, 0.000000e+00
  %1476 = fcmp fast oge float %1130, 0.000000e+00
  %1477 = and i1 %1476, %1475
  %1478 = fcmp fast ole float %1130, 1.000000e+00
  %1479 = and i1 %1478, %1477
  %1480 = fcmp fast oge float %1131, 0.000000e+00
  %1481 = and i1 %1480, %1479
  %1482 = fcmp fast ole float %1131, 1.000000e+00
  %1483 = and i1 %1482, %1481
  br i1 %1483, label %1484, label %1629, !dx.controlflow.hints !71

; <label>:1484                                    ; preds = %1460
  %1485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1486 = extractvalue %dx.types.CBufRet.f32 %1485, 2
  %1487 = extractvalue %dx.types.CBufRet.f32 %1485, 3
  %1488 = fmul fast float %1486, %1130
  %1489 = fmul fast float %1487, %1131
  %1490 = call float @dx.op.unary.f32(i32 27, float %1488)  ; Round_ni(value)
  %1491 = call float @dx.op.unary.f32(i32 27, float %1489)  ; Round_ni(value)
  %1492 = fptosi float %1490 to i32
  %1493 = fptosi float %1491 to i32
  %1494 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %20, i32 0, i32 %1492, i32 %1493, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1495 = extractvalue %dx.types.ResRet.i32 %1494, 0
  %1496 = and i32 %1495, 65535
  %1497 = lshr i32 %1495, 16
  %1498 = icmp eq i32 %1496, 65535
  br i1 %1498, label %1535, label %1499, !dx.controlflow.hints !72

; <label>:1499                                    ; preds = %1484
  %1500 = extractvalue %dx.types.CBufRet.f32 %1473, 1
  %1501 = extractvalue %dx.types.CBufRet.f32 %1485, 0
  %1502 = extractvalue %dx.types.CBufRet.f32 %1485, 1
  %1503 = fmul fast float %1501, %1130
  %1504 = fmul fast float %1502, %1131
  %1505 = fmul fast float %1503, 1.250000e-01
  %1506 = fmul fast float %1504, 1.250000e-01
  %1507 = call float @dx.op.unary.f32(i32 27, float %1505)  ; Round_ni(value)
  %1508 = call float @dx.op.unary.f32(i32 27, float %1506)  ; Round_ni(value)
  %1509 = fmul fast float %1507, 8.000000e+00
  %1510 = fmul fast float %1508, 8.000000e+00
  %1511 = and i32 %1495, 255
  %1512 = lshr i32 %1495, 8
  %1513 = and i32 %1512, 255
  %1514 = mul nuw nsw i32 %1511, 9
  %1515 = uitofp i32 %1514 to float
  %1516 = mul nuw nsw i32 %1513, 9
  %1517 = uitofp i32 %1516 to float
  %1518 = fadd fast float %1515, 5.000000e-01
  %1519 = fadd fast float %1518, %1503
  %1520 = fsub fast float %1519, %1509
  %1521 = fadd fast float %1517, 5.000000e-01
  %1522 = fadd fast float %1521, %1504
  %1523 = fsub fast float %1522, %1510
  %1524 = fdiv fast float %1520, %1474
  %1525 = fdiv fast float %1523, %1500
  %1526 = fmul fast float %1158, 4.375000e-01
  %1527 = fadd fast float %1526, 3.125000e-02
  %1528 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %26, float %1524, float %1525, float %1527, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1529 = extractvalue %dx.types.ResRet.f32 %1528, 0
  %1530 = extractvalue %dx.types.ResRet.f32 %1528, 1
  %1531 = extractvalue %dx.types.ResRet.f32 %1528, 2
  %1532 = fadd fast float %1529, %1470
  %1533 = fadd fast float %1530, %1471
  %1534 = fadd fast float %1531, %1472
  br label %1535

; <label>:1535                                    ; preds = %1499, %1484
  %1536 = phi float [ %1534, %1499 ], [ %1472, %1484 ]
  %1537 = phi float [ %1533, %1499 ], [ %1471, %1484 ]
  %1538 = phi float [ %1532, %1499 ], [ %1470, %1484 ]
  %1539 = icmp eq i32 %1497, 65535
  br i1 %1539, label %1629, label %1540, !dx.controlflow.hints !73

; <label>:1540                                    ; preds = %1535
  %1541 = extractvalue %dx.types.CBufRet.f32 %1473, 1
  %1542 = extractvalue %dx.types.CBufRet.f32 %1485, 0
  %1543 = extractvalue %dx.types.CBufRet.f32 %1485, 1
  %1544 = fmul fast float %1542, %1130
  %1545 = fmul fast float %1543, %1131
  %1546 = fmul fast float %1544, 1.250000e-01
  %1547 = fmul fast float %1545, 1.250000e-01
  %1548 = call float @dx.op.unary.f32(i32 27, float %1546)  ; Round_ni(value)
  %1549 = call float @dx.op.unary.f32(i32 27, float %1547)  ; Round_ni(value)
  %1550 = fmul fast float %1548, 8.000000e+00
  %1551 = fmul fast float %1549, 8.000000e+00
  %1552 = fsub fast float %1544, %1550
  %1553 = fsub fast float %1545, %1551
  %1554 = fadd fast float %1552, 5.000000e-01
  %1555 = fadd fast float %1553, 5.000000e-01
  %1556 = and i32 %1497, 255
  %1557 = lshr i32 %1495, 24
  %1558 = mul nuw nsw i32 %1556, 9
  %1559 = uitofp i32 %1558 to float
  %1560 = mul nuw nsw i32 %1557, 9
  %1561 = uitofp i32 %1560 to float
  %1562 = fadd fast float %1554, %1559
  %1563 = fadd fast float %1555, %1561
  %1564 = fdiv fast float %1562, %1474
  %1565 = fdiv fast float %1563, %1541
  %1566 = fmul fast float %1158, 4.375000e-01
  %1567 = fadd fast float %1566, 3.125000e-02
  %1568 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %26, float %1564, float %1565, float %1567, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1569 = extractvalue %dx.types.ResRet.f32 %1568, 0
  %1570 = extractvalue %dx.types.ResRet.f32 %1568, 1
  %1571 = extractvalue %dx.types.ResRet.f32 %1568, 2
  %1572 = fadd fast float %1566, 5.312500e-01
  %1573 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %26, float %1564, float %1565, float %1572, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1574 = extractvalue %dx.types.ResRet.f32 %1573, 0
  %1575 = extractvalue %dx.types.ResRet.f32 %1573, 1
  %1576 = extractvalue %dx.types.ResRet.f32 %1573, 2
  %1577 = fmul fast float %1574, 2.000000e+00
  %1578 = fmul fast float %1575, 2.000000e+00
  %1579 = fmul fast float %1576, 2.000000e+00
  %1580 = fadd fast float %1577, -1.000000e+00
  %1581 = fadd fast float %1578, -1.000000e+00
  %1582 = fadd fast float %1579, -1.000000e+00
  %1583 = fmul fast float %1580, %1580
  %1584 = fmul fast float %1581, %1581
  %1585 = fadd fast float %1583, %1584
  %1586 = fmul fast float %1582, %1582
  %1587 = fadd fast float %1585, %1586
  %1588 = call float @dx.op.unary.f32(i32 24, float %1587)  ; Sqrt(value)
  %1589 = fcmp fast ogt float %1588, 0.000000e+00
  br i1 %1589, label %1590, label %1594, !dx.controlflow.hints !74

; <label>:1590                                    ; preds = %1540
  %1591 = fdiv fast float %1580, %1588
  %1592 = fdiv fast float %1581, %1588
  %1593 = fdiv fast float %1582, %1588
  br label %1594

; <label>:1594                                    ; preds = %1590, %1540
  %1595 = phi float [ %1591, %1590 ], [ 0.000000e+00, %1540 ]
  %1596 = phi float [ %1592, %1590 ], [ 0.000000e+00, %1540 ]
  %1597 = phi float [ %1593, %1590 ], [ 0.000000e+00, %1540 ]
  %1598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1599 = extractvalue %dx.types.CBufRet.f32 %1598, 0
  %1600 = extractvalue %dx.types.CBufRet.f32 %1598, 1
  %1601 = fsub fast float %195, %1599
  %1602 = fsub fast float %200, %1600
  %1603 = fmul fast float %1601, %1601
  %1604 = fmul fast float %1602, %1602
  %1605 = fadd fast float %1603, %1604
  %1606 = call float @dx.op.unary.f32(i32 24, float %1605)  ; Sqrt(value)
  %1607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1608 = extractvalue %dx.types.CBufRet.f32 %1607, 0
  %1609 = extractvalue %dx.types.CBufRet.f32 %1607, 1
  %1610 = fsub fast float %1606, %1608
  %1611 = fdiv fast float %1610, %1609
  %1612 = call float @dx.op.unary.f32(i32 7, float %1611)  ; Saturate(value)
  %1613 = fmul fast float %1612, 2.000000e+00
  %1614 = fsub fast float 3.000000e+00, %1613
  %1615 = fmul fast float %1612, %1612
  %1616 = fmul fast float %1615, %1614
  %1617 = call float @dx.op.dot3.f32(i32 55, float %1595, float %1596, float %1597, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1618 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1617)  ; FMax(a,b)
  %1619 = fmul fast float %1618, 0x400C5BF8A0000000
  %1620 = fmul fast float %1616, %1569
  %1621 = fmul fast float %1620, %1619
  %1622 = fadd fast float %1621, %1538
  %1623 = fmul fast float %1616, %1570
  %1624 = fmul fast float %1623, %1619
  %1625 = fadd fast float %1624, %1537
  %1626 = fmul fast float %1616, %1571
  %1627 = fmul fast float %1626, %1619
  %1628 = fadd fast float %1627, %1536
  br label %1629

; <label>:1629                                    ; preds = %1594, %1535, %1460
  %1630 = phi float [ %1628, %1594 ], [ %1536, %1535 ], [ %1472, %1460 ]
  %1631 = phi float [ %1625, %1594 ], [ %1537, %1535 ], [ %1471, %1460 ]
  %1632 = phi float [ %1622, %1594 ], [ %1538, %1535 ], [ %1470, %1460 ]
  %1633 = fcmp fast ogt float %205, %1154
  %1634 = and i1 %1476, %1633
  %1635 = and i1 %1478, %1634
  %1636 = and i1 %1480, %1635
  %1637 = and i1 %1482, %1636
  br i1 %1637, label %1638, label %1695, !dx.controlflow.hints !75

; <label>:1638                                    ; preds = %1629
  %1639 = fmul fast float %1156, 0x3FC24924A0000000
  %1640 = fsub fast float %205, %1154
  %1641 = fdiv fast float %1640, %1639
  %1642 = call float @dx.op.unary.f32(i32 7, float %1641)  ; Saturate(value)
  %1643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %1644 = extractvalue %dx.types.CBufRet.f32 %1643, 0
  %1645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %1646 = extractvalue %dx.types.CBufRet.f32 %1645, 0
  %1647 = extractvalue %dx.types.CBufRet.f32 %1645, 1
  %1648 = extractvalue %dx.types.CBufRet.f32 %1645, 2
  %1649 = fsub fast float %1644, %1632
  %1650 = fsub fast float %1646, %1467
  %1651 = fsub fast float %1647, %1468
  %1652 = fsub fast float %1648, %1469
  %1653 = fmul fast float %1649, %1642
  %1654 = fmul fast float %1650, %1642
  %1655 = fmul fast float %1651, %1642
  %1656 = fmul fast float %1652, %1642
  %1657 = fadd fast float %1653, %1632
  %1658 = fadd fast float %1654, %1467
  %1659 = fadd fast float %1655, %1468
  %1660 = fadd fast float %1656, %1469
  %1661 = extractvalue %dx.types.CBufRet.f32 %1643, 1
  %1662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %1663 = extractvalue %dx.types.CBufRet.f32 %1662, 0
  %1664 = extractvalue %dx.types.CBufRet.f32 %1662, 1
  %1665 = extractvalue %dx.types.CBufRet.f32 %1662, 2
  %1666 = fsub fast float %1661, %1631
  %1667 = fsub fast float %1663, %1464
  %1668 = fsub fast float %1664, %1465
  %1669 = fsub fast float %1665, %1466
  %1670 = fmul fast float %1666, %1642
  %1671 = fmul fast float %1667, %1642
  %1672 = fmul fast float %1668, %1642
  %1673 = fmul fast float %1669, %1642
  %1674 = fadd fast float %1670, %1631
  %1675 = fadd fast float %1671, %1464
  %1676 = fadd fast float %1672, %1465
  %1677 = fadd fast float %1673, %1466
  %1678 = extractvalue %dx.types.CBufRet.f32 %1643, 2
  %1679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %1680 = extractvalue %dx.types.CBufRet.f32 %1679, 0
  %1681 = extractvalue %dx.types.CBufRet.f32 %1679, 1
  %1682 = extractvalue %dx.types.CBufRet.f32 %1679, 2
  %1683 = fsub fast float %1678, %1630
  %1684 = fsub fast float %1680, %1461
  %1685 = fsub fast float %1681, %1462
  %1686 = fsub fast float %1682, %1463
  %1687 = fmul fast float %1683, %1642
  %1688 = fmul fast float %1684, %1642
  %1689 = fmul fast float %1685, %1642
  %1690 = fmul fast float %1686, %1642
  %1691 = fadd fast float %1687, %1630
  %1692 = fadd fast float %1688, %1461
  %1693 = fadd fast float %1689, %1462
  %1694 = fadd fast float %1690, %1463
  br label %1695

; <label>:1695                                    ; preds = %1638, %1629
  %1696 = phi float [ %1691, %1638 ], [ %1630, %1629 ]
  %1697 = phi float [ %1692, %1638 ], [ %1461, %1629 ]
  %1698 = phi float [ %1693, %1638 ], [ %1462, %1629 ]
  %1699 = phi float [ %1694, %1638 ], [ %1463, %1629 ]
  %1700 = phi float [ %1674, %1638 ], [ %1631, %1629 ]
  %1701 = phi float [ %1675, %1638 ], [ %1464, %1629 ]
  %1702 = phi float [ %1676, %1638 ], [ %1465, %1629 ]
  %1703 = phi float [ %1677, %1638 ], [ %1466, %1629 ]
  %1704 = phi float [ %1657, %1638 ], [ %1632, %1629 ]
  %1705 = phi float [ %1658, %1638 ], [ %1467, %1629 ]
  %1706 = phi float [ %1659, %1638 ], [ %1468, %1629 ]
  %1707 = phi float [ %1660, %1638 ], [ %1469, %1629 ]
  %1708 = extractvalue %dx.types.CBufRet.f32 %1279, 3
  %1709 = fmul fast float %1708, %1704
  %1710 = fmul fast float %1708, %1700
  %1711 = fmul fast float %1708, %1696
  %1712 = fmul fast float %1705, 1.500000e+00
  %1713 = fmul fast float %1712, %1708
  %1714 = fmul fast float %1706, 1.500000e+00
  %1715 = fmul fast float %1714, %1708
  %1716 = fmul fast float %1707, 1.500000e+00
  %1717 = fmul fast float %1716, %1708
  %1718 = fmul fast float %1701, 1.500000e+00
  %1719 = fmul fast float %1718, %1708
  %1720 = fmul fast float %1702, 1.500000e+00
  %1721 = fmul fast float %1720, %1708
  %1722 = fmul fast float %1703, 1.500000e+00
  %1723 = fmul fast float %1722, %1708
  %1724 = fmul fast float %1697, 1.500000e+00
  %1725 = fmul fast float %1724, %1708
  %1726 = fmul fast float %1698, 1.500000e+00
  %1727 = fmul fast float %1726, %1708
  %1728 = fmul fast float %1699, 1.500000e+00
  %1729 = fmul fast float %1728, %1708
  %1730 = fsub fast float %1119, %1709
  %1731 = fmul fast float %1730, %245
  %1732 = fadd fast float %1731, %1709
  %1733 = fsub fast float %1118, %1713
  %1734 = fmul fast float %1733, %245
  %1735 = fadd fast float %1734, %1713
  %1736 = fsub fast float %1117, %1715
  %1737 = fmul fast float %1736, %245
  %1738 = fadd fast float %1737, %1715
  %1739 = fsub fast float %1116, %1717
  %1740 = fmul fast float %1739, %245
  %1741 = fadd fast float %1740, %1717
  %1742 = fmul fast float %1115, %245
  %1743 = fmul fast float %1114, %245
  %1744 = fmul fast float %1113, %245
  %1745 = fmul fast float %1112, %245
  %1746 = fmul fast float %1111, %245
  %1747 = fsub fast float %1110, %1710
  %1748 = fmul fast float %1747, %245
  %1749 = fadd fast float %1748, %1710
  %1750 = fsub fast float %1109, %1719
  %1751 = fmul fast float %1750, %245
  %1752 = fadd fast float %1751, %1719
  %1753 = fsub fast float %1108, %1721
  %1754 = fmul fast float %1753, %245
  %1755 = fadd fast float %1754, %1721
  %1756 = fsub fast float %1107, %1723
  %1757 = fmul fast float %1756, %245
  %1758 = fadd fast float %1757, %1723
  %1759 = fmul fast float %1106, %245
  %1760 = fmul fast float %1105, %245
  %1761 = fmul fast float %1104, %245
  %1762 = fmul fast float %1103, %245
  %1763 = fmul fast float %1102, %245
  %1764 = fsub fast float %1101, %1711
  %1765 = fmul fast float %1764, %245
  %1766 = fadd fast float %1765, %1711
  %1767 = fsub fast float %1100, %1725
  %1768 = fmul fast float %1767, %245
  %1769 = fadd fast float %1768, %1725
  %1770 = fsub fast float %1099, %1727
  %1771 = fmul fast float %1770, %245
  %1772 = fadd fast float %1771, %1727
  %1773 = fsub fast float %1098, %1729
  %1774 = fmul fast float %1773, %245
  %1775 = fadd fast float %1774, %1729
  %1776 = fmul fast float %1097, %245
  %1777 = fmul fast float %1096, %245
  %1778 = fmul fast float %1095, %245
  %1779 = fmul fast float %1094, %245
  %1780 = fmul fast float %1093, %245
  br label %1781

; <label>:1781                                    ; preds = %1695, %1092
  %1782 = phi float [ %1093, %1092 ], [ %1780, %1695 ]
  %1783 = phi float [ %1094, %1092 ], [ %1779, %1695 ]
  %1784 = phi float [ %1095, %1092 ], [ %1778, %1695 ]
  %1785 = phi float [ %1096, %1092 ], [ %1777, %1695 ]
  %1786 = phi float [ %1097, %1092 ], [ %1776, %1695 ]
  %1787 = phi float [ %1098, %1092 ], [ %1775, %1695 ]
  %1788 = phi float [ %1099, %1092 ], [ %1772, %1695 ]
  %1789 = phi float [ %1100, %1092 ], [ %1769, %1695 ]
  %1790 = phi float [ %1101, %1092 ], [ %1766, %1695 ]
  %1791 = phi float [ %1102, %1092 ], [ %1763, %1695 ]
  %1792 = phi float [ %1103, %1092 ], [ %1762, %1695 ]
  %1793 = phi float [ %1104, %1092 ], [ %1761, %1695 ]
  %1794 = phi float [ %1105, %1092 ], [ %1760, %1695 ]
  %1795 = phi float [ %1106, %1092 ], [ %1759, %1695 ]
  %1796 = phi float [ %1107, %1092 ], [ %1758, %1695 ]
  %1797 = phi float [ %1108, %1092 ], [ %1755, %1695 ]
  %1798 = phi float [ %1109, %1092 ], [ %1752, %1695 ]
  %1799 = phi float [ %1110, %1092 ], [ %1749, %1695 ]
  %1800 = phi float [ %1111, %1092 ], [ %1746, %1695 ]
  %1801 = phi float [ %1112, %1092 ], [ %1745, %1695 ]
  %1802 = phi float [ %1113, %1092 ], [ %1744, %1695 ]
  %1803 = phi float [ %1114, %1092 ], [ %1743, %1695 ]
  %1804 = phi float [ %1115, %1092 ], [ %1742, %1695 ]
  %1805 = phi float [ %1116, %1092 ], [ %1741, %1695 ]
  %1806 = phi float [ %1117, %1092 ], [ %1738, %1695 ]
  %1807 = phi float [ %1118, %1092 ], [ %1735, %1695 ]
  %1808 = phi float [ %1119, %1092 ], [ %1732, %1695 ]
  %1809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1810 = extractvalue %dx.types.CBufRet.f32 %1809, 0
  %1811 = extractvalue %dx.types.CBufRet.f32 %1809, 1
  %1812 = extractvalue %dx.types.CBufRet.f32 %1809, 2
  %1813 = fsub fast float %195, %1810
  %1814 = fsub fast float %200, %1811
  %1815 = fsub fast float %205, %1812
  %1816 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1817 = extractvalue %dx.types.CBufRet.i32 %1816, 2
  %1818 = icmp eq i32 %1817, 0
  br i1 %1818, label %2169, label %1819

; <label>:1819                                    ; preds = %1781
  br label %1820

; <label>:1820                                    ; preds = %2135, %1819
  %1821 = phi float [ %2136, %2135 ], [ 0.000000e+00, %1819 ]
  %1822 = phi float [ %2137, %2135 ], [ 0.000000e+00, %1819 ]
  %1823 = phi float [ %2138, %2135 ], [ 0.000000e+00, %1819 ]
  %1824 = phi float [ %2139, %2135 ], [ 0.000000e+00, %1819 ]
  %1825 = phi float [ %2140, %2135 ], [ 0.000000e+00, %1819 ]
  %1826 = phi float [ %2141, %2135 ], [ 0.000000e+00, %1819 ]
  %1827 = phi float [ %2142, %2135 ], [ 0.000000e+00, %1819 ]
  %1828 = phi float [ %2143, %2135 ], [ 0.000000e+00, %1819 ]
  %1829 = phi float [ %2144, %2135 ], [ 0.000000e+00, %1819 ]
  %1830 = phi float [ %2145, %2135 ], [ 0.000000e+00, %1819 ]
  %1831 = phi float [ %2146, %2135 ], [ 0.000000e+00, %1819 ]
  %1832 = phi float [ %2147, %2135 ], [ 0.000000e+00, %1819 ]
  %1833 = phi float [ %2148, %2135 ], [ 0.000000e+00, %1819 ]
  %1834 = phi float [ %2149, %2135 ], [ 0.000000e+00, %1819 ]
  %1835 = phi float [ %2150, %2135 ], [ 0.000000e+00, %1819 ]
  %1836 = phi float [ %2151, %2135 ], [ 0.000000e+00, %1819 ]
  %1837 = phi float [ %2152, %2135 ], [ 0.000000e+00, %1819 ]
  %1838 = phi float [ %2153, %2135 ], [ 0.000000e+00, %1819 ]
  %1839 = phi float [ %2154, %2135 ], [ 0.000000e+00, %1819 ]
  %1840 = phi float [ %2155, %2135 ], [ 0.000000e+00, %1819 ]
  %1841 = phi float [ %2156, %2135 ], [ 0.000000e+00, %1819 ]
  %1842 = phi float [ %2157, %2135 ], [ 0.000000e+00, %1819 ]
  %1843 = phi float [ %2158, %2135 ], [ 0.000000e+00, %1819 ]
  %1844 = phi float [ %2159, %2135 ], [ 0.000000e+00, %1819 ]
  %1845 = phi float [ %2160, %2135 ], [ 0.000000e+00, %1819 ]
  %1846 = phi float [ %2161, %2135 ], [ 0.000000e+00, %1819 ]
  %1847 = phi float [ %2162, %2135 ], [ 0.000000e+00, %1819 ]
  %1848 = phi float [ %2163, %2135 ], [ 1.000000e+00, %1819 ]
  %1849 = phi i32 [ %2164, %2135 ], [ 0, %1819 ]
  %1850 = shl i32 %1849, 2
  %1851 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %1850, i32 undef)  ; BufferLoad(srv,index,wot)
  %1852 = extractvalue %dx.types.ResRet.i32 %1851, 0
  %1853 = icmp ne i32 %1852, 0
  %1854 = fcmp fast ogt float %1848, 0.000000e+00
  %1855 = and i1 %1854, %1853
  br i1 %1855, label %1856, label %2135

; <label>:1856                                    ; preds = %1820
  br label %1857

; <label>:1857                                    ; preds = %2102, %1856
  %1858 = phi float [ %2103, %2102 ], [ %1821, %1856 ]
  %1859 = phi float [ %2104, %2102 ], [ %1822, %1856 ]
  %1860 = phi float [ %2105, %2102 ], [ %1823, %1856 ]
  %1861 = phi float [ %2106, %2102 ], [ %1824, %1856 ]
  %1862 = phi float [ %2107, %2102 ], [ %1825, %1856 ]
  %1863 = phi float [ %2108, %2102 ], [ %1826, %1856 ]
  %1864 = phi float [ %2109, %2102 ], [ %1827, %1856 ]
  %1865 = phi float [ %2110, %2102 ], [ %1828, %1856 ]
  %1866 = phi float [ %2111, %2102 ], [ %1829, %1856 ]
  %1867 = phi float [ %2112, %2102 ], [ %1830, %1856 ]
  %1868 = phi float [ %2113, %2102 ], [ %1831, %1856 ]
  %1869 = phi float [ %2114, %2102 ], [ %1832, %1856 ]
  %1870 = phi float [ %2115, %2102 ], [ %1833, %1856 ]
  %1871 = phi float [ %2116, %2102 ], [ %1834, %1856 ]
  %1872 = phi float [ %2117, %2102 ], [ %1835, %1856 ]
  %1873 = phi float [ %2118, %2102 ], [ %1836, %1856 ]
  %1874 = phi float [ %2119, %2102 ], [ %1837, %1856 ]
  %1875 = phi float [ %2120, %2102 ], [ %1838, %1856 ]
  %1876 = phi float [ %2121, %2102 ], [ %1839, %1856 ]
  %1877 = phi float [ %2122, %2102 ], [ %1840, %1856 ]
  %1878 = phi float [ %2123, %2102 ], [ %1841, %1856 ]
  %1879 = phi float [ %2124, %2102 ], [ %1842, %1856 ]
  %1880 = phi float [ %2125, %2102 ], [ %1843, %1856 ]
  %1881 = phi float [ %2126, %2102 ], [ %1844, %1856 ]
  %1882 = phi float [ %2127, %2102 ], [ %1845, %1856 ]
  %1883 = phi float [ %2128, %2102 ], [ %1846, %1856 ]
  %1884 = phi float [ %2129, %2102 ], [ %1847, %1856 ]
  %1885 = phi float [ %2130, %2102 ], [ %1848, %1856 ]
  %1886 = phi i32 [ %1890, %2102 ], [ %1852, %1856 ]
  %1887 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1886)  ; FirstbitLo(value)
  %1888 = and i32 %1887, 31
  %1889 = shl i32 1, %1888
  %1890 = xor i32 %1889, %1886
  %1891 = shl i32 %1849, 5
  %1892 = add i32 %1887, %1891
  %1893 = mul i32 %1892, 72
  %1894 = add i32 %1893, 12
  %1895 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %1894, i32 undef)  ; BufferLoad(srv,index,wot)
  %1896 = extractvalue %dx.types.ResRet.i32 %1895, 0
  %1897 = add i32 %1893, 16
  %1898 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %1897, i32 undef)  ; BufferLoad(srv,index,wot)
  %1899 = extractvalue %dx.types.ResRet.f32 %1898, 0
  %1900 = extractvalue %dx.types.ResRet.f32 %1898, 1
  %1901 = extractvalue %dx.types.ResRet.f32 %1898, 2
  %1902 = mul i32 %1892, 60
  %1903 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %1902, i32 undef)  ; BufferLoad(srv,index,wot)
  %1904 = extractvalue %dx.types.ResRet.f32 %1903, 0
  %1905 = extractvalue %dx.types.ResRet.f32 %1903, 1
  %1906 = extractvalue %dx.types.ResRet.f32 %1903, 2
  %1907 = add i32 %1902, 12
  %1908 = add i32 %1902, 48
  %1909 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %1908, i32 undef)  ; BufferLoad(srv,index,wot)
  %1910 = extractvalue %dx.types.ResRet.f32 %1909, 0
  %1911 = extractvalue %dx.types.ResRet.f32 %1909, 1
  %1912 = extractvalue %dx.types.ResRet.f32 %1909, 2
  %1913 = and i32 %1896, 32767
  %1914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1915 = extractvalue %dx.types.CBufRet.f32 %1914, 0
  %1916 = extractvalue %dx.types.CBufRet.f32 %1914, 1
  %1917 = extractvalue %dx.types.CBufRet.f32 %1914, 2
  %1918 = fsub fast float %1904, %1915
  %1919 = fsub fast float %1905, %1916
  %1920 = fsub fast float %1906, %1917
  %1921 = fsub fast float %1813, %1918
  %1922 = fsub fast float %1814, %1919
  %1923 = fsub fast float %1815, %1920
  %1924 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %1907, i32 undef)  ; BufferLoad(srv,index,wot)
  %1925 = extractvalue %dx.types.ResRet.f32 %1924, 0
  %1926 = extractvalue %dx.types.ResRet.f32 %1924, 1
  %1927 = extractvalue %dx.types.ResRet.f32 %1924, 2
  %1928 = call float @dx.op.dot3.f32(i32 55, float %1921, float %1922, float %1923, float %1925, float %1926, float %1927)  ; Dot3(ax,ay,az,bx,by,bz)
  %1929 = add i32 %1902, 24
  %1930 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %1929, i32 undef)  ; BufferLoad(srv,index,wot)
  %1931 = extractvalue %dx.types.ResRet.f32 %1930, 0
  %1932 = extractvalue %dx.types.ResRet.f32 %1930, 1
  %1933 = extractvalue %dx.types.ResRet.f32 %1930, 2
  %1934 = call float @dx.op.dot3.f32(i32 55, float %1921, float %1922, float %1923, float %1931, float %1932, float %1933)  ; Dot3(ax,ay,az,bx,by,bz)
  %1935 = add i32 %1902, 36
  %1936 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %1935, i32 undef)  ; BufferLoad(srv,index,wot)
  %1937 = extractvalue %dx.types.ResRet.f32 %1936, 0
  %1938 = extractvalue %dx.types.ResRet.f32 %1936, 1
  %1939 = extractvalue %dx.types.ResRet.f32 %1936, 2
  %1940 = call float @dx.op.dot3.f32(i32 55, float %1921, float %1922, float %1923, float %1937, float %1938, float %1939)  ; Dot3(ax,ay,az,bx,by,bz)
  %1941 = call float @dx.op.unary.f32(i32 6, float %1928)  ; FAbs(value)
  %1942 = call float @dx.op.unary.f32(i32 6, float %1934)  ; FAbs(value)
  %1943 = call float @dx.op.unary.f32(i32 6, float %1940)  ; FAbs(value)
  %1944 = fsub fast float %1910, %1941
  %1945 = fsub fast float %1911, %1942
  %1946 = fsub fast float %1912, %1943
  %1947 = fmul fast float %1944, %1899
  %1948 = fmul fast float %1945, %1900
  %1949 = fmul fast float %1946, %1901
  %1950 = call float @dx.op.binary.f32(i32 36, float %1948, float %1949)  ; FMin(a,b)
  %1951 = call float @dx.op.binary.f32(i32 36, float %1947, float %1950)  ; FMin(a,b)
  %1952 = call float @dx.op.unary.f32(i32 7, float %1951)  ; Saturate(value)
  %1953 = call float @dx.op.binary.f32(i32 36, float %1885, float %1952)  ; FMin(a,b)
  %1954 = fcmp fast ogt float %1953, 0.000000e+00
  br i1 %1954, label %1955, label %2102, !dx.controlflow.hints !76

; <label>:1955                                    ; preds = %1857
  %1956 = lshr i32 %1896, 16
  %1957 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1956)  ; LegacyF16ToF32(value)
  %1958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 141)  ; CBufferLoadLegacy(handle,regIndex)
  %1959 = extractvalue %dx.types.CBufRet.f32 %1958, 3
  %1960 = bitcast float %1959 to i32
  %1961 = add i32 %1960, %1913
  %1962 = mul i32 %1961, 36
  %1963 = shl i32 %1960, 1
  %1964 = add i32 %1963, %1913
  %1965 = mul i32 %1964, 36
  %1966 = mul i32 %1960, 3
  %1967 = add i32 %1966, %1913
  %1968 = mul i32 %1967, 36
  %1969 = fmul fast float %1957, %1953
  %1970 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1962, i32 undef)  ; BufferLoad(srv,index,wot)
  %1971 = extractvalue %dx.types.ResRet.f32 %1970, 0
  %1972 = fmul fast float %1971, %1969
  %1973 = fadd fast float %1972, %1875
  %1974 = add i32 %1962, 4
  %1975 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1974, i32 undef)  ; BufferLoad(srv,index,wot)
  %1976 = extractvalue %dx.types.ResRet.f32 %1975, 0
  %1977 = fmul fast float %1976, %1969
  %1978 = fadd fast float %1977, %1874
  %1979 = add i32 %1962, 8
  %1980 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1979, i32 undef)  ; BufferLoad(srv,index,wot)
  %1981 = extractvalue %dx.types.ResRet.f32 %1980, 0
  %1982 = fmul fast float %1981, %1969
  %1983 = fadd fast float %1982, %1873
  %1984 = add i32 %1962, 12
  %1985 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1984, i32 undef)  ; BufferLoad(srv,index,wot)
  %1986 = extractvalue %dx.types.ResRet.f32 %1985, 0
  %1987 = fmul fast float %1986, %1969
  %1988 = fadd fast float %1987, %1872
  %1989 = add i32 %1962, 16
  %1990 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1989, i32 undef)  ; BufferLoad(srv,index,wot)
  %1991 = extractvalue %dx.types.ResRet.f32 %1990, 0
  %1992 = fmul fast float %1991, %1969
  %1993 = fadd fast float %1992, %1871
  %1994 = add i32 %1962, 20
  %1995 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1994, i32 undef)  ; BufferLoad(srv,index,wot)
  %1996 = extractvalue %dx.types.ResRet.f32 %1995, 0
  %1997 = fmul fast float %1996, %1969
  %1998 = fadd fast float %1997, %1870
  %1999 = add i32 %1962, 24
  %2000 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1999, i32 undef)  ; BufferLoad(srv,index,wot)
  %2001 = extractvalue %dx.types.ResRet.f32 %2000, 0
  %2002 = fmul fast float %2001, %1969
  %2003 = fadd fast float %2002, %1869
  %2004 = add i32 %1962, 28
  %2005 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2004, i32 undef)  ; BufferLoad(srv,index,wot)
  %2006 = extractvalue %dx.types.ResRet.f32 %2005, 0
  %2007 = fmul fast float %2006, %1969
  %2008 = fadd fast float %2007, %1868
  %2009 = add i32 %1962, 32
  %2010 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2009, i32 undef)  ; BufferLoad(srv,index,wot)
  %2011 = extractvalue %dx.types.ResRet.f32 %2010, 0
  %2012 = fmul fast float %2011, %1969
  %2013 = fadd fast float %2012, %1867
  %2014 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1965, i32 undef)  ; BufferLoad(srv,index,wot)
  %2015 = extractvalue %dx.types.ResRet.f32 %2014, 0
  %2016 = fmul fast float %2015, %1969
  %2017 = fadd fast float %2016, %1884
  %2018 = add i32 %1965, 4
  %2019 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2018, i32 undef)  ; BufferLoad(srv,index,wot)
  %2020 = extractvalue %dx.types.ResRet.f32 %2019, 0
  %2021 = fmul fast float %2020, %1969
  %2022 = fadd fast float %2021, %1883
  %2023 = add i32 %1965, 8
  %2024 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2023, i32 undef)  ; BufferLoad(srv,index,wot)
  %2025 = extractvalue %dx.types.ResRet.f32 %2024, 0
  %2026 = fmul fast float %2025, %1969
  %2027 = fadd fast float %2026, %1882
  %2028 = add i32 %1965, 12
  %2029 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2028, i32 undef)  ; BufferLoad(srv,index,wot)
  %2030 = extractvalue %dx.types.ResRet.f32 %2029, 0
  %2031 = fmul fast float %2030, %1969
  %2032 = fadd fast float %2031, %1881
  %2033 = add i32 %1965, 16
  %2034 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2033, i32 undef)  ; BufferLoad(srv,index,wot)
  %2035 = extractvalue %dx.types.ResRet.f32 %2034, 0
  %2036 = fmul fast float %2035, %1969
  %2037 = fadd fast float %2036, %1880
  %2038 = add i32 %1965, 20
  %2039 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2038, i32 undef)  ; BufferLoad(srv,index,wot)
  %2040 = extractvalue %dx.types.ResRet.f32 %2039, 0
  %2041 = fmul fast float %2040, %1969
  %2042 = fadd fast float %2041, %1879
  %2043 = add i32 %1965, 24
  %2044 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2043, i32 undef)  ; BufferLoad(srv,index,wot)
  %2045 = extractvalue %dx.types.ResRet.f32 %2044, 0
  %2046 = fmul fast float %2045, %1969
  %2047 = fadd fast float %2046, %1878
  %2048 = add i32 %1965, 28
  %2049 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2048, i32 undef)  ; BufferLoad(srv,index,wot)
  %2050 = extractvalue %dx.types.ResRet.f32 %2049, 0
  %2051 = fmul fast float %2050, %1969
  %2052 = fadd fast float %2051, %1877
  %2053 = add i32 %1965, 32
  %2054 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2053, i32 undef)  ; BufferLoad(srv,index,wot)
  %2055 = extractvalue %dx.types.ResRet.f32 %2054, 0
  %2056 = fmul fast float %2055, %1969
  %2057 = fadd fast float %2056, %1876
  %2058 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1968, i32 undef)  ; BufferLoad(srv,index,wot)
  %2059 = extractvalue %dx.types.ResRet.f32 %2058, 0
  %2060 = fmul fast float %2059, %1969
  %2061 = fadd fast float %2060, %1866
  %2062 = add i32 %1968, 4
  %2063 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2062, i32 undef)  ; BufferLoad(srv,index,wot)
  %2064 = extractvalue %dx.types.ResRet.f32 %2063, 0
  %2065 = fmul fast float %2064, %1969
  %2066 = fadd fast float %2065, %1865
  %2067 = add i32 %1968, 8
  %2068 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2067, i32 undef)  ; BufferLoad(srv,index,wot)
  %2069 = extractvalue %dx.types.ResRet.f32 %2068, 0
  %2070 = fmul fast float %2069, %1969
  %2071 = fadd fast float %2070, %1864
  %2072 = add i32 %1968, 12
  %2073 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2072, i32 undef)  ; BufferLoad(srv,index,wot)
  %2074 = extractvalue %dx.types.ResRet.f32 %2073, 0
  %2075 = fmul fast float %2074, %1969
  %2076 = fadd fast float %2075, %1863
  %2077 = add i32 %1968, 16
  %2078 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2077, i32 undef)  ; BufferLoad(srv,index,wot)
  %2079 = extractvalue %dx.types.ResRet.f32 %2078, 0
  %2080 = fmul fast float %2079, %1969
  %2081 = fadd fast float %2080, %1862
  %2082 = add i32 %1968, 20
  %2083 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2082, i32 undef)  ; BufferLoad(srv,index,wot)
  %2084 = extractvalue %dx.types.ResRet.f32 %2083, 0
  %2085 = fmul fast float %2084, %1969
  %2086 = fadd fast float %2085, %1861
  %2087 = add i32 %1968, 24
  %2088 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2087, i32 undef)  ; BufferLoad(srv,index,wot)
  %2089 = extractvalue %dx.types.ResRet.f32 %2088, 0
  %2090 = fmul fast float %2089, %1969
  %2091 = fadd fast float %2090, %1860
  %2092 = add i32 %1968, 28
  %2093 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2092, i32 undef)  ; BufferLoad(srv,index,wot)
  %2094 = extractvalue %dx.types.ResRet.f32 %2093, 0
  %2095 = fmul fast float %2094, %1969
  %2096 = fadd fast float %2095, %1859
  %2097 = add i32 %1968, 32
  %2098 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2097, i32 undef)  ; BufferLoad(srv,index,wot)
  %2099 = extractvalue %dx.types.ResRet.f32 %2098, 0
  %2100 = fmul fast float %2099, %1969
  %2101 = fadd fast float %2100, %1858
  br label %2102

; <label>:2102                                    ; preds = %1955, %1857
  %2103 = phi float [ %2101, %1955 ], [ %1858, %1857 ]
  %2104 = phi float [ %2096, %1955 ], [ %1859, %1857 ]
  %2105 = phi float [ %2091, %1955 ], [ %1860, %1857 ]
  %2106 = phi float [ %2086, %1955 ], [ %1861, %1857 ]
  %2107 = phi float [ %2081, %1955 ], [ %1862, %1857 ]
  %2108 = phi float [ %2076, %1955 ], [ %1863, %1857 ]
  %2109 = phi float [ %2071, %1955 ], [ %1864, %1857 ]
  %2110 = phi float [ %2066, %1955 ], [ %1865, %1857 ]
  %2111 = phi float [ %2061, %1955 ], [ %1866, %1857 ]
  %2112 = phi float [ %2013, %1955 ], [ %1867, %1857 ]
  %2113 = phi float [ %2008, %1955 ], [ %1868, %1857 ]
  %2114 = phi float [ %2003, %1955 ], [ %1869, %1857 ]
  %2115 = phi float [ %1998, %1955 ], [ %1870, %1857 ]
  %2116 = phi float [ %1993, %1955 ], [ %1871, %1857 ]
  %2117 = phi float [ %1988, %1955 ], [ %1872, %1857 ]
  %2118 = phi float [ %1983, %1955 ], [ %1873, %1857 ]
  %2119 = phi float [ %1978, %1955 ], [ %1874, %1857 ]
  %2120 = phi float [ %1973, %1955 ], [ %1875, %1857 ]
  %2121 = phi float [ %2057, %1955 ], [ %1876, %1857 ]
  %2122 = phi float [ %2052, %1955 ], [ %1877, %1857 ]
  %2123 = phi float [ %2047, %1955 ], [ %1878, %1857 ]
  %2124 = phi float [ %2042, %1955 ], [ %1879, %1857 ]
  %2125 = phi float [ %2037, %1955 ], [ %1880, %1857 ]
  %2126 = phi float [ %2032, %1955 ], [ %1881, %1857 ]
  %2127 = phi float [ %2027, %1955 ], [ %1882, %1857 ]
  %2128 = phi float [ %2022, %1955 ], [ %1883, %1857 ]
  %2129 = phi float [ %2017, %1955 ], [ %1884, %1857 ]
  %2130 = fsub fast float %1885, %1953
  %2131 = icmp ne i32 %1886, %1889
  %2132 = fcmp fast ogt float %2130, 0.000000e+00
  %2133 = and i1 %2131, %2132
  br i1 %2133, label %1857, label %2134

; <label>:2134                                    ; preds = %2102
  br label %2135

; <label>:2135                                    ; preds = %2134, %1820
  %2136 = phi float [ %1821, %1820 ], [ %2103, %2134 ]
  %2137 = phi float [ %1822, %1820 ], [ %2104, %2134 ]
  %2138 = phi float [ %1823, %1820 ], [ %2105, %2134 ]
  %2139 = phi float [ %1824, %1820 ], [ %2106, %2134 ]
  %2140 = phi float [ %1825, %1820 ], [ %2107, %2134 ]
  %2141 = phi float [ %1826, %1820 ], [ %2108, %2134 ]
  %2142 = phi float [ %1827, %1820 ], [ %2109, %2134 ]
  %2143 = phi float [ %1828, %1820 ], [ %2110, %2134 ]
  %2144 = phi float [ %1829, %1820 ], [ %2111, %2134 ]
  %2145 = phi float [ %1830, %1820 ], [ %2112, %2134 ]
  %2146 = phi float [ %1831, %1820 ], [ %2113, %2134 ]
  %2147 = phi float [ %1832, %1820 ], [ %2114, %2134 ]
  %2148 = phi float [ %1833, %1820 ], [ %2115, %2134 ]
  %2149 = phi float [ %1834, %1820 ], [ %2116, %2134 ]
  %2150 = phi float [ %1835, %1820 ], [ %2117, %2134 ]
  %2151 = phi float [ %1836, %1820 ], [ %2118, %2134 ]
  %2152 = phi float [ %1837, %1820 ], [ %2119, %2134 ]
  %2153 = phi float [ %1838, %1820 ], [ %2120, %2134 ]
  %2154 = phi float [ %1839, %1820 ], [ %2121, %2134 ]
  %2155 = phi float [ %1840, %1820 ], [ %2122, %2134 ]
  %2156 = phi float [ %1841, %1820 ], [ %2123, %2134 ]
  %2157 = phi float [ %1842, %1820 ], [ %2124, %2134 ]
  %2158 = phi float [ %1843, %1820 ], [ %2125, %2134 ]
  %2159 = phi float [ %1844, %1820 ], [ %2126, %2134 ]
  %2160 = phi float [ %1845, %1820 ], [ %2127, %2134 ]
  %2161 = phi float [ %1846, %1820 ], [ %2128, %2134 ]
  %2162 = phi float [ %1847, %1820 ], [ %2129, %2134 ]
  %2163 = phi float [ %1848, %1820 ], [ %2130, %2134 ]
  %2164 = add i32 %1849, 1
  %2165 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2166 = extractvalue %dx.types.CBufRet.i32 %2165, 2
  %2167 = icmp ult i32 %2164, %2166
  br i1 %2167, label %1820, label %2168

; <label>:2168                                    ; preds = %2135
  br label %2169

; <label>:2169                                    ; preds = %2168, %1781
  %2170 = phi float [ 0.000000e+00, %1781 ], [ %2136, %2168 ]
  %2171 = phi float [ 0.000000e+00, %1781 ], [ %2137, %2168 ]
  %2172 = phi float [ 0.000000e+00, %1781 ], [ %2138, %2168 ]
  %2173 = phi float [ 0.000000e+00, %1781 ], [ %2139, %2168 ]
  %2174 = phi float [ 0.000000e+00, %1781 ], [ %2140, %2168 ]
  %2175 = phi float [ 0.000000e+00, %1781 ], [ %2141, %2168 ]
  %2176 = phi float [ 0.000000e+00, %1781 ], [ %2142, %2168 ]
  %2177 = phi float [ 0.000000e+00, %1781 ], [ %2143, %2168 ]
  %2178 = phi float [ 0.000000e+00, %1781 ], [ %2144, %2168 ]
  %2179 = phi float [ 0.000000e+00, %1781 ], [ %2145, %2168 ]
  %2180 = phi float [ 0.000000e+00, %1781 ], [ %2146, %2168 ]
  %2181 = phi float [ 0.000000e+00, %1781 ], [ %2147, %2168 ]
  %2182 = phi float [ 0.000000e+00, %1781 ], [ %2148, %2168 ]
  %2183 = phi float [ 0.000000e+00, %1781 ], [ %2149, %2168 ]
  %2184 = phi float [ 0.000000e+00, %1781 ], [ %2150, %2168 ]
  %2185 = phi float [ 0.000000e+00, %1781 ], [ %2151, %2168 ]
  %2186 = phi float [ 0.000000e+00, %1781 ], [ %2152, %2168 ]
  %2187 = phi float [ 0.000000e+00, %1781 ], [ %2153, %2168 ]
  %2188 = phi float [ 0.000000e+00, %1781 ], [ %2154, %2168 ]
  %2189 = phi float [ 0.000000e+00, %1781 ], [ %2155, %2168 ]
  %2190 = phi float [ 0.000000e+00, %1781 ], [ %2156, %2168 ]
  %2191 = phi float [ 0.000000e+00, %1781 ], [ %2157, %2168 ]
  %2192 = phi float [ 0.000000e+00, %1781 ], [ %2158, %2168 ]
  %2193 = phi float [ 0.000000e+00, %1781 ], [ %2159, %2168 ]
  %2194 = phi float [ 0.000000e+00, %1781 ], [ %2160, %2168 ]
  %2195 = phi float [ 0.000000e+00, %1781 ], [ %2161, %2168 ]
  %2196 = phi float [ 0.000000e+00, %1781 ], [ %2162, %2168 ]
  %2197 = phi float [ 1.000000e+00, %1781 ], [ %2163, %2168 ]
  %2198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2199 = extractvalue %dx.types.CBufRet.f32 %2198, 3
  %2200 = fdiv fast float 1.000000e+00, %2199
  %2201 = fmul fast float %2200, %2187
  %2202 = fmul fast float %2200, %2186
  %2203 = fmul fast float %2200, %2185
  %2204 = fmul fast float %2200, %2184
  %2205 = fmul fast float %2200, %2183
  %2206 = fmul fast float %2200, %2182
  %2207 = fmul fast float %2200, %2181
  %2208 = fmul fast float %2200, %2180
  %2209 = fmul fast float %2200, %2179
  %2210 = fmul fast float %2200, %2196
  %2211 = fmul fast float %2200, %2195
  %2212 = fmul fast float %2200, %2194
  %2213 = fmul fast float %2200, %2193
  %2214 = fmul fast float %2200, %2192
  %2215 = fmul fast float %2200, %2191
  %2216 = fmul fast float %2200, %2190
  %2217 = fmul fast float %2200, %2189
  %2218 = fmul fast float %2200, %2188
  %2219 = fmul fast float %2200, %2178
  %2220 = fmul fast float %2200, %2177
  %2221 = fmul fast float %2200, %2176
  %2222 = fmul fast float %2200, %2175
  %2223 = fmul fast float %2200, %2174
  %2224 = fmul fast float %2200, %2173
  %2225 = fmul fast float %2200, %2172
  %2226 = fmul fast float %2200, %2171
  %2227 = fmul fast float %2200, %2170
  %2228 = fmul fast float %2197, %1808
  %2229 = fadd fast float %2201, %2228
  %2230 = fmul fast float %2197, %1807
  %2231 = fadd fast float %2202, %2230
  %2232 = fmul fast float %2197, %1806
  %2233 = fadd fast float %2203, %2232
  %2234 = fmul fast float %2197, %1805
  %2235 = fadd fast float %2204, %2234
  %2236 = fmul fast float %2197, %1804
  %2237 = fadd fast float %2205, %2236
  %2238 = fmul fast float %2197, %1803
  %2239 = fadd fast float %2206, %2238
  %2240 = fmul fast float %2197, %1802
  %2241 = fadd fast float %2207, %2240
  %2242 = fmul fast float %2197, %1801
  %2243 = fadd fast float %2208, %2242
  %2244 = fmul fast float %2197, %1800
  %2245 = fadd fast float %2209, %2244
  %2246 = fmul fast float %2197, %1799
  %2247 = fadd fast float %2210, %2246
  %2248 = fmul fast float %2197, %1798
  %2249 = fadd fast float %2211, %2248
  %2250 = fmul fast float %2197, %1797
  %2251 = fadd fast float %2212, %2250
  %2252 = fmul fast float %2197, %1796
  %2253 = fadd fast float %2213, %2252
  %2254 = fmul fast float %2197, %1795
  %2255 = fadd fast float %2214, %2254
  %2256 = fmul fast float %2197, %1794
  %2257 = fadd fast float %2215, %2256
  %2258 = fmul fast float %2197, %1793
  %2259 = fadd fast float %2216, %2258
  %2260 = fmul fast float %2197, %1792
  %2261 = fadd fast float %2217, %2260
  %2262 = fmul fast float %2197, %1791
  %2263 = fadd fast float %2218, %2262
  %2264 = fmul fast float %2197, %1790
  %2265 = fadd fast float %2219, %2264
  %2266 = fmul fast float %2197, %1789
  %2267 = fadd fast float %2220, %2266
  %2268 = fmul fast float %2197, %1788
  %2269 = fadd fast float %2221, %2268
  %2270 = fmul fast float %2197, %1787
  %2271 = fadd fast float %2222, %2270
  %2272 = fmul fast float %2197, %1786
  %2273 = fadd fast float %2223, %2272
  %2274 = fmul fast float %2197, %1785
  %2275 = fadd fast float %2224, %2274
  %2276 = fmul fast float %2197, %1784
  %2277 = fadd fast float %2225, %2276
  %2278 = fmul fast float %2197, %1783
  %2279 = fadd fast float %2226, %2278
  %2280 = fmul fast float %2197, %1782
  %2281 = fadd fast float %2227, %2280
  %2282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2283 = extractvalue %dx.types.CBufRet.f32 %2282, 0
  %2284 = extractvalue %dx.types.CBufRet.f32 %2282, 1
  %2285 = extractvalue %dx.types.CBufRet.f32 %2282, 2
  %2286 = fsub fast float %195, %2283
  %2287 = fsub fast float %200, %2284
  %2288 = fsub fast float %205, %2285
  %2289 = call float @dx.op.dot3.f32(i32 55, float %2286, float %2287, float %2288, float %2286, float %2287, float %2288)  ; Dot3(ax,ay,az,bx,by,bz)
  %2290 = call float @dx.op.unary.f32(i32 25, float %2289)  ; Rsqrt(value)
  %2291 = fmul fast float %2286, %2290
  %2292 = fmul fast float %2287, %2290
  %2293 = fmul fast float %2288, %2290
  %2294 = fsub fast float -0.000000e+00, %2291
  %2295 = fsub fast float -0.000000e+00, %2292
  %2296 = fmul fast float %2229, 0x3FD20DD760000000
  %2297 = fmul fast float %2247, 0x3FD20DD760000000
  %2298 = fmul fast float %2265, 0x3FD20DD760000000
  br i1 %104, label %2379, label %2299, !dx.controlflow.hints !77

; <label>:2299                                    ; preds = %2169
  %2300 = fmul fast float %2233, 0xBFD4D8D7C0000000
  %2301 = fmul fast float %2300, %2293
  %2302 = fmul fast float %2293, %2293
  %2303 = fmul fast float %2302, 0x3FEE471020000000
  %2304 = fadd fast float %2303, 0xBFD42F6020000000
  %2305 = fmul fast float %2304, %2241
  %2306 = fmul fast float %2235, 0x3FD4D8D7C0000000
  %2307 = fmul fast float %2231, 0x3FD4D8D7C0000000
  %2308 = fmul fast float %2307, %2292
  %2309 = fmul fast float %2293, 0x3FF17B1420000000
  %2310 = fmul fast float %2243, %2294
  %2311 = fmul fast float %2239, %2295
  %2312 = fmul fast float %2291, %2291
  %2313 = fmul fast float %2292, %2292
  %2314 = fsub fast float %2312, %2313
  %2315 = fmul fast float %2245, 0x3FC17B1420000000
  %2316 = fmul fast float %2315, %2314
  %2317 = fmul fast float %2237, 0x3FD17B1420000000
  %2318 = fmul fast float %2317, %2290
  %2319 = fmul fast float %2318, %2287
  %2320 = fadd fast float %2310, %2311
  %2321 = fmul fast float %2309, %2320
  %2322 = fadd fast float %2321, %2305
  %2323 = fmul fast float %2322, 2.500000e-01
  %2324 = fadd fast float %2319, %2306
  %2325 = fmul fast float %2324, %2291
  %2326 = fadd fast float %2301, %2296
  %2327 = fadd fast float %2326, %2308
  %2328 = fadd fast float %2327, %2316
  %2329 = fadd fast float %2328, %2323
  %2330 = fadd fast float %2329, %2325
  %2331 = fmul fast float %2251, 0xBFD4D8D7C0000000
  %2332 = fmul fast float %2331, %2293
  %2333 = fmul fast float %2304, %2259
  %2334 = fmul fast float %2253, 0x3FD4D8D7C0000000
  %2335 = fmul fast float %2249, 0x3FD4D8D7C0000000
  %2336 = fmul fast float %2335, %2292
  %2337 = fmul fast float %2261, %2294
  %2338 = fmul fast float %2257, %2295
  %2339 = fmul fast float %2263, 0x3FC17B1420000000
  %2340 = fmul fast float %2339, %2314
  %2341 = fmul fast float %2255, 0x3FD17B1420000000
  %2342 = fmul fast float %2341, %2290
  %2343 = fmul fast float %2342, %2287
  %2344 = fadd fast float %2337, %2338
  %2345 = fmul fast float %2309, %2344
  %2346 = fadd fast float %2345, %2333
  %2347 = fmul fast float %2346, 2.500000e-01
  %2348 = fadd fast float %2343, %2334
  %2349 = fmul fast float %2348, %2291
  %2350 = fadd fast float %2332, %2297
  %2351 = fadd fast float %2350, %2336
  %2352 = fadd fast float %2351, %2340
  %2353 = fadd fast float %2352, %2347
  %2354 = fadd fast float %2353, %2349
  %2355 = fmul fast float %2269, 0xBFD4D8D7C0000000
  %2356 = fmul fast float %2355, %2293
  %2357 = fmul fast float %2304, %2277
  %2358 = fmul fast float %2271, 0x3FD4D8D7C0000000
  %2359 = fmul fast float %2267, 0x3FD4D8D7C0000000
  %2360 = fmul fast float %2359, %2292
  %2361 = fmul fast float %2279, %2294
  %2362 = fmul fast float %2275, %2295
  %2363 = fmul fast float %2281, 0x3FC17B1420000000
  %2364 = fmul fast float %2363, %2314
  %2365 = fmul fast float %2273, 0x3FD17B1420000000
  %2366 = fmul fast float %2365, %2290
  %2367 = fmul fast float %2366, %2287
  %2368 = fadd fast float %2361, %2362
  %2369 = fmul fast float %2309, %2368
  %2370 = fadd fast float %2369, %2357
  %2371 = fmul fast float %2370, 2.500000e-01
  %2372 = fadd fast float %2367, %2358
  %2373 = fmul fast float %2372, %2291
  %2374 = fadd fast float %2356, %2298
  %2375 = fadd fast float %2374, %2360
  %2376 = fadd fast float %2375, %2364
  %2377 = fadd fast float %2376, %2371
  %2378 = fadd fast float %2377, %2373
  br label %2473

; <label>:2379                                    ; preds = %2169
  %2380 = fmul fast float %146, %146
  %2381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %2382 = extractvalue %dx.types.CBufRet.f32 %2381, 0
  %2383 = extractvalue %dx.types.CBufRet.f32 %2381, 1
  %2384 = extractvalue %dx.types.CBufRet.f32 %2381, 2
  %2385 = fmul fast float %2233, %146
  %2386 = fmul fast float %2385, %2384
  %2387 = fmul fast float %2384, %2384
  %2388 = fmul fast float %2387, 0x3FEE471020000000
  %2389 = fadd fast float %2388, 0xBFD42F6020000000
  %2390 = fmul fast float %2389, %2241
  %2391 = fmul fast float %2382, %2235
  %2392 = fmul fast float %2383, %2231
  %2393 = fmul fast float %2384, 0x3FF17B1420000000
  %2394 = fmul fast float %2243, %2380
  %2395 = fmul fast float %2394, %2382
  %2396 = fmul fast float %2395, %2393
  %2397 = fmul fast float %2239, %2380
  %2398 = fmul fast float %2397, %2383
  %2399 = fmul fast float %2398, %2393
  %2400 = fmul fast float %2382, %2382
  %2401 = fmul fast float %2383, %2383
  %2402 = fsub fast float %2400, %2401
  %2403 = fmul fast float %2245, 0x3FE17B1420000000
  %2404 = fmul fast float %2403, %2402
  %2405 = fmul fast float %2237, 0x3FF17B1420000000
  %2406 = fmul fast float %2405, %2383
  %2407 = fmul fast float %2406, %2382
  %2408 = fadd fast float %2404, %2407
  %2409 = fadd fast float %2408, %2390
  %2410 = fmul fast float %2409, %2380
  %2411 = fadd fast float %2392, %2391
  %2412 = fmul fast float %2411, %146
  %2413 = fsub fast float %2412, %2386
  %2414 = fmul fast float %2413, 0x3FDF454380000000
  %2415 = fsub fast float %2296, %2396
  %2416 = fsub fast float %2415, %2399
  %2417 = fadd fast float %2416, %2410
  %2418 = fadd fast float %2417, %2414
  %2419 = fmul fast float %2251, %146
  %2420 = fmul fast float %2419, %2384
  %2421 = fmul fast float %2389, %2259
  %2422 = fmul fast float %2382, %2253
  %2423 = fmul fast float %2383, %2249
  %2424 = fmul fast float %2261, %2380
  %2425 = fmul fast float %2424, %2382
  %2426 = fmul fast float %2425, %2393
  %2427 = fmul fast float %2257, %2380
  %2428 = fmul fast float %2427, %2383
  %2429 = fmul fast float %2428, %2393
  %2430 = fmul fast float %2263, 0x3FE17B1420000000
  %2431 = fmul fast float %2430, %2402
  %2432 = fmul fast float %2255, 0x3FF17B1420000000
  %2433 = fmul fast float %2432, %2383
  %2434 = fmul fast float %2433, %2382
  %2435 = fadd fast float %2431, %2434
  %2436 = fadd fast float %2435, %2421
  %2437 = fmul fast float %2436, %2380
  %2438 = fadd fast float %2423, %2422
  %2439 = fmul fast float %2438, %146
  %2440 = fsub fast float %2439, %2420
  %2441 = fmul fast float %2440, 0x3FDF454380000000
  %2442 = fsub fast float %2297, %2426
  %2443 = fsub fast float %2442, %2429
  %2444 = fadd fast float %2443, %2437
  %2445 = fadd fast float %2444, %2441
  %2446 = fmul fast float %2269, %146
  %2447 = fmul fast float %2446, %2384
  %2448 = fmul fast float %2389, %2277
  %2449 = fmul fast float %2382, %2271
  %2450 = fmul fast float %2383, %2267
  %2451 = fmul fast float %2279, %2380
  %2452 = fmul fast float %2451, %2382
  %2453 = fmul fast float %2452, %2393
  %2454 = fmul fast float %2275, %2380
  %2455 = fmul fast float %2454, %2383
  %2456 = fmul fast float %2455, %2393
  %2457 = fmul fast float %2281, 0x3FE17B1420000000
  %2458 = fmul fast float %2457, %2402
  %2459 = fmul fast float %2273, 0x3FF17B1420000000
  %2460 = fmul fast float %2459, %2383
  %2461 = fmul fast float %2460, %2382
  %2462 = fadd fast float %2458, %2461
  %2463 = fadd fast float %2462, %2448
  %2464 = fmul fast float %2463, %2380
  %2465 = fadd fast float %2450, %2449
  %2466 = fmul fast float %2465, %146
  %2467 = fsub fast float %2466, %2447
  %2468 = fmul fast float %2467, 0x3FDF454380000000
  %2469 = fsub fast float %2298, %2453
  %2470 = fsub fast float %2469, %2456
  %2471 = fadd fast float %2470, %2464
  %2472 = fadd fast float %2471, %2468
  br label %2473

; <label>:2473                                    ; preds = %2379, %2299
  %2474 = phi float [ %2330, %2299 ], [ %2418, %2379 ]
  %2475 = phi float [ %2354, %2299 ], [ %2445, %2379 ]
  %2476 = phi float [ %2378, %2299 ], [ %2472, %2379 ]
  %2477 = fmul fast float %2199, %2474
  %2478 = fmul fast float %2199, %2475
  %2479 = fmul fast float %2199, %2476
  %2480 = extractvalue %dx.types.CBufRet.f32 %2198, 0
  %2481 = fmul fast float %2477, %2480
  %2482 = fmul fast float %2478, %2480
  %2483 = fmul fast float %2479, %2480
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %173, i32 %174, i32 undef, float %2481, float %2482, float %2483, float %2481, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %2484 = add i32 %174, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %173, i32 %2484, i32 undef, float %2481, float %2482, float %2483, float %2481, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %2485 = add i32 %173, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %2485, i32 %174, i32 undef, float %2481, float %2482, float %2483, float %2481, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %2485, i32 %2484, i32 undef, float %2481, float %2482, float %2483, float %2481, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2486

; <label>:2486                                    ; preds = %2473, %0
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
!42 = !{void ()* @cs_del_sh_sample_lightgrid_reflection_volumes_2_lowres, !"cs_del_sh_sample_lightgrid_reflection_volumes_2_lowres", null, !4, !43}
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
!77 = distinct !{!77, !"dx.controlflow.hints", i32 2}

