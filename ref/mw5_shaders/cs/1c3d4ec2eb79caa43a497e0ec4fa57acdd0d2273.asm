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
; shader hash: 450522221e8a84a812d6eab70d10d9eb
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

define void @cs_del_sh_sample_lightgrid_reflection_volumes_8_lowres() {
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
  %36 = add i32 %35, 6
  %37 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %36, i32 0)  ; BufferLoad(srv,index,wot)
  %38 = extractvalue %dx.types.ResRet.i32 %37, 0
  %39 = icmp ult i32 %30, %38
  br i1 %39, label %40, label %1891, !dx.controlflow.hints !45

; <label>:40                                      ; preds = %0
  %41 = add i32 %35, 9
  %42 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 %41)  ; CBufferLoadLegacy(handle,regIndex)
  %43 = extractvalue %dx.types.CBufRet.i32 %42, 2
  %44 = call i32 @dx.op.threadId.i32(i32 93, i32 2)  ; ThreadId(component)
  %45 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %46 = shl i32 %45, 1
  %47 = shl i32 %44, 1
  %48 = add i32 %43, %30
  %49 = shl i32 %48, 5
  %50 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %49, i32 undef)  ; BufferLoad(srv,index,wot)
  %51 = extractvalue %dx.types.ResRet.i32 %50, 0
  %52 = extractvalue %dx.types.ResRet.i32 %50, 1
  %53 = extractvalue %dx.types.ResRet.i32 %50, 2
  %54 = extractvalue %dx.types.ResRet.i32 %50, 3
  %55 = lshr i32 %54, 14
  %56 = and i32 %55, 16383
  %57 = and i32 %54, 16383
  %58 = bitcast i32 %51 to float
  %59 = bitcast i32 %52 to float
  %60 = bitcast i32 %53 to float
  %61 = and i32 %54, 536870912
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %102, label %63, !dx.controlflow.hints !46

; <label>:63                                      ; preds = %40
  %64 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %65 = extractvalue %dx.types.CBufRet.f32 %64, 2
  %66 = extractvalue %dx.types.CBufRet.f32 %64, 3
  %67 = fmul fast float %65, %58
  %68 = fmul fast float %66, %59
  %69 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %70 = extractvalue %dx.types.CBufRet.f32 %69, 0
  %71 = extractvalue %dx.types.CBufRet.f32 %69, 1
  %72 = fadd fast float %67, %70
  %73 = fadd fast float %68, %71
  %74 = call float @dx.op.unary.f32(i32 7, float %72)  ; Saturate(value)
  %75 = call float @dx.op.unary.f32(i32 7, float %73)  ; Saturate(value)
  %76 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %26, float %74, float %75, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %77 = extractvalue %dx.types.ResRet.f32 %76, 0
  %78 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %79 = extractvalue %dx.types.CBufRet.f32 %78, 0
  %80 = fmul fast float %79, %77
  %81 = fsub fast float %72, %74
  %82 = fsub fast float %73, %75
  %83 = extractvalue %dx.types.CBufRet.f32 %64, 0
  %84 = extractvalue %dx.types.CBufRet.f32 %64, 1
  %85 = fmul fast float %83, %81
  %86 = fmul fast float %84, %82
  %87 = fmul fast float %85, %85
  %88 = fmul fast float %86, %86
  %89 = fadd fast float %87, %88
  %90 = call float @dx.op.unary.f32(i32 24, float %89)  ; Sqrt(value)
  %91 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %92 = extractvalue %dx.types.CBufRet.f32 %91, 3
  %93 = fmul fast float %92, %90
  %94 = call float @dx.op.unary.f32(i32 7, float %93)  ; Saturate(value)
  %95 = extractvalue %dx.types.CBufRet.f32 %91, 2
  %96 = fsub fast float %95, %80
  %97 = fmul fast float %96, %94
  %98 = extractvalue %dx.types.CBufRet.f32 %78, 1
  %99 = fadd fast float %80, %60
  %100 = fadd fast float %99, %98
  %101 = fadd fast float %100, %97
  br label %102

; <label>:102                                     ; preds = %63, %40
  %103 = phi float [ %101, %63 ], [ %60, %40 ]
  %104 = or i32 %49, 16
  %105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %104, i32 undef)  ; BufferLoad(srv,index,wot)
  %106 = extractvalue %dx.types.ResRet.i32 %105, 0
  %107 = extractvalue %dx.types.ResRet.i32 %105, 1
  %108 = extractvalue %dx.types.ResRet.i32 %105, 2
  %109 = extractvalue %dx.types.ResRet.i32 %105, 3
  %110 = and i32 %106, 65535
  %111 = call float @dx.op.legacyF16ToF32(i32 131, i32 %110)  ; LegacyF16ToF32(value)
  %112 = lshr i32 %106, 16
  %113 = call float @dx.op.legacyF16ToF32(i32 131, i32 %112)  ; LegacyF16ToF32(value)
  %114 = and i32 %107, 1023
  %115 = uitofp i32 %114 to float
  %116 = lshr i32 %107, 10
  %117 = and i32 %116, 1023
  %118 = uitofp i32 %117 to float
  %119 = lshr i32 %107, 20
  %120 = and i32 %119, 1023
  %121 = uitofp i32 %120 to float
  %122 = fmul fast float %115, 0x3F60040100000000
  %123 = fmul fast float %118, 0x3F60040100000000
  %124 = fmul fast float %121, 0x3F60040100000000
  %125 = fadd fast float %122, -1.000000e+00
  %126 = fadd fast float %123, -1.000000e+00
  %127 = fadd fast float %124, -1.000000e+00
  %128 = and i32 %108, 1023
  %129 = uitofp i32 %128 to float
  %130 = lshr i32 %108, 10
  %131 = and i32 %130, 1023
  %132 = uitofp i32 %131 to float
  %133 = lshr i32 %108, 20
  %134 = and i32 %133, 1023
  %135 = uitofp i32 %134 to float
  %136 = fmul fast float %129, 0x3F60040100000000
  %137 = fmul fast float %132, 0x3F60040100000000
  %138 = fmul fast float %135, 0x3F60040100000000
  %139 = fadd fast float %136, -1.000000e+00
  %140 = fadd fast float %137, -1.000000e+00
  %141 = fadd fast float %138, -1.000000e+00
  %142 = and i32 %109, 65535
  %143 = call float @dx.op.legacyF16ToF32(i32 131, i32 %142)  ; LegacyF16ToF32(value)
  %144 = call float @dx.op.unary.f32(i32 13, float %143)  ; Sin(value)
  %145 = call float @dx.op.unary.f32(i32 12, float %143)  ; Cos(value)
  %146 = fmul fast float %145, %125
  %147 = fmul fast float %126, %145
  %148 = fmul fast float %127, %145
  %149 = fmul fast float %139, %144
  %150 = fmul fast float %140, %144
  %151 = fmul fast float %141, %144
  %152 = fadd fast float %146, %149
  %153 = fadd fast float %147, %150
  %154 = fadd fast float %148, %151
  %155 = fmul fast float %152, %111
  %156 = fmul fast float %153, %111
  %157 = fmul fast float %154, %111
  %158 = fmul fast float %125, %144
  %159 = fmul fast float %126, %144
  %160 = fmul fast float %127, %144
  %161 = fmul fast float %145, %139
  %162 = fmul fast float %140, %145
  %163 = fmul fast float %141, %145
  %164 = fsub fast float %158, %161
  %165 = fsub fast float %159, %162
  %166 = fsub fast float %160, %163
  %167 = fmul fast float %164, %113
  %168 = fmul fast float %165, %113
  %169 = fmul fast float %166, %113
  %170 = add i32 %56, %46
  %171 = add i32 %57, %47
  %172 = uitofp i32 %46 to float
  %173 = uitofp i32 %47 to float
  %174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %175 = extractvalue %dx.types.CBufRet.f32 %174, 1
  %176 = fdiv fast float %172, %175
  %177 = fdiv fast float %173, %175
  %178 = extractvalue %dx.types.CBufRet.f32 %174, 2
  %179 = fmul fast float %178, 2.000000e+00
  %180 = fadd fast float %179, %176
  %181 = fadd fast float %179, %177
  %182 = fmul fast float %180, %155
  %183 = fmul fast float %180, %156
  %184 = fmul fast float %180, %157
  %185 = fmul fast float %181, %167
  %186 = fmul fast float %181, %168
  %187 = fmul fast float %181, %169
  %188 = fadd fast float %185, %182
  %189 = fmul fast float %188, 2.000000e+00
  %190 = fsub fast float %58, %155
  %191 = fsub fast float %190, %167
  %192 = fadd fast float %191, %189
  %193 = fadd fast float %186, %183
  %194 = fmul fast float %193, 2.000000e+00
  %195 = fsub fast float %59, %156
  %196 = fsub fast float %195, %168
  %197 = fadd fast float %196, %194
  %198 = fadd fast float %187, %184
  %199 = fmul fast float %198, 2.000000e+00
  %200 = fsub fast float %103, %157
  %201 = fsub fast float %200, %169
  %202 = fadd fast float %201, %199
  %203 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %204 = extractvalue %dx.types.CBufRet.i32 %203, 0
  %205 = icmp eq i32 %204, 1
  br i1 %205, label %206, label %241, !dx.controlflow.hints !47

; <label>:206                                     ; preds = %102
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

; <label>:241                                     ; preds = %235, %223, %206, %102
  %242 = phi float [ 1.000000e+00, %102 ], [ %240, %235 ], [ %218, %206 ], [ 0.000000e+00, %223 ]
  %243 = fcmp fast ogt float %242, 0.000000e+00
  br i1 %243, label %244, label %914, !dx.controlflow.hints !50

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
  br i1 %271, label %865, label %272, !dx.controlflow.hints !51

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
  br i1 %290, label %865, label %291, !dx.controlflow.hints !52

; <label>:291                                     ; preds = %272
  %292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %283, i32 8)  ; BufferLoad(srv,index,wot)
  %293 = extractvalue %dx.types.ResRet.i32 %292, 0
  %294 = sub i32 %281, %285
  %295 = add nsw i32 %294, %293
  %296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %295, i32 undef)  ; BufferLoad(srv,index,wot)
  %297 = extractvalue %dx.types.ResRet.i32 %296, 0
  %298 = icmp eq i32 %297, -1
  br i1 %298, label %865, label %299, !dx.controlflow.hints !53

; <label>:299                                     ; preds = %291
  %300 = getelementptr inbounds [8 x i32], [8 x i32]* %32, i32 0, i32 0
  store i32 -1, i32* %300, align 4, !tbaa !54, !noalias !58
  %301 = getelementptr inbounds [8 x i32], [8 x i32]* %32, i32 0, i32 1
  store i32 -1, i32* %301, align 4, !tbaa !54, !noalias !58
  %302 = getelementptr inbounds [8 x i32], [8 x i32]* %32, i32 0, i32 2
  store i32 -1, i32* %302, align 4, !tbaa !54, !noalias !58
  %303 = getelementptr inbounds [8 x i32], [8 x i32]* %32, i32 0, i32 3
  store i32 -1, i32* %303, align 4, !tbaa !54, !noalias !58
  %304 = getelementptr inbounds [8 x i32], [8 x i32]* %32, i32 0, i32 4
  store i32 -1, i32* %304, align 4, !tbaa !54, !noalias !58
  %305 = getelementptr inbounds [8 x i32], [8 x i32]* %32, i32 0, i32 5
  store i32 -1, i32* %305, align 4, !tbaa !54, !noalias !58
  %306 = getelementptr inbounds [8 x i32], [8 x i32]* %32, i32 0, i32 6
  store i32 -1, i32* %306, align 4, !tbaa !54, !noalias !58
  %307 = getelementptr inbounds [8 x i32], [8 x i32]* %32, i32 0, i32 7
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
  %607 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 %588
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
  %627 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 0
  %628 = load float, float* %627, align 4, !tbaa !64, !noalias !58
  %629 = fadd fast float %628, %617
  %630 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %629)  ; FMax(a,b)
  %631 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %629)  ; FMin(a,b)
  %632 = fmul fast float %631, 0x3F847AE140000000
  %633 = fadd fast float %632, %630
  store float %633, float* %627, align 4, !tbaa !64, !noalias !58
  %634 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 1
  %635 = load float, float* %634, align 4, !tbaa !64, !noalias !58
  %636 = fadd fast float %635, %618
  %637 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %636)  ; FMax(a,b)
  %638 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %636)  ; FMin(a,b)
  %639 = fmul fast float %638, 0x3F847AE140000000
  %640 = fadd fast float %639, %637
  store float %640, float* %634, align 4, !tbaa !64, !noalias !58
  %641 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 2
  %642 = load float, float* %641, align 4, !tbaa !64, !noalias !58
  %643 = fadd fast float %642, %619
  %644 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %643)  ; FMax(a,b)
  %645 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %643)  ; FMin(a,b)
  %646 = fmul fast float %645, 0x3F847AE140000000
  %647 = fadd fast float %646, %644
  store float %647, float* %641, align 4, !tbaa !64, !noalias !58
  %648 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 3
  %649 = load float, float* %648, align 4, !tbaa !64, !noalias !58
  %650 = fadd fast float %649, %620
  %651 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %650)  ; FMax(a,b)
  %652 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %650)  ; FMin(a,b)
  %653 = fmul fast float %652, 0x3F847AE140000000
  %654 = fadd fast float %653, %651
  store float %654, float* %648, align 4, !tbaa !64, !noalias !58
  %655 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 4
  %656 = load float, float* %655, align 4, !tbaa !64, !noalias !58
  %657 = fadd fast float %656, %623
  %658 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %657)  ; FMax(a,b)
  %659 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %657)  ; FMin(a,b)
  %660 = fmul fast float %659, 0x3F847AE140000000
  %661 = fadd fast float %660, %658
  store float %661, float* %655, align 4, !tbaa !64, !noalias !58
  %662 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 5
  %663 = load float, float* %662, align 4, !tbaa !64, !noalias !58
  %664 = fadd fast float %663, %624
  %665 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %664)  ; FMax(a,b)
  %666 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %664)  ; FMin(a,b)
  %667 = fmul fast float %666, 0x3F847AE140000000
  %668 = fadd fast float %667, %665
  store float %668, float* %662, align 4, !tbaa !64, !noalias !58
  %669 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 6
  %670 = load float, float* %669, align 4, !tbaa !64, !noalias !58
  %671 = fadd fast float %670, %625
  %672 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %671)  ; FMax(a,b)
  %673 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %671)  ; FMin(a,b)
  %674 = fmul fast float %673, 0x3F847AE140000000
  %675 = fadd fast float %674, %672
  store float %675, float* %669, align 4, !tbaa !64, !noalias !58
  %676 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 7
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
  %717 = getelementptr inbounds [8 x float], [8 x float]* %33, i32 0, i32 %438
  store float %716, float* %717, align 4, !tbaa !64, !noalias !58
  %718 = fadd fast float %716, %437
  %719 = add nuw nsw i32 %438, 1
  %720 = icmp eq i32 %719, 8
  br i1 %720, label %724, label %721

; <label>:721                                     ; preds = %610
  %722 = getelementptr inbounds [8 x i32], [8 x i32]* %32, i32 0, i32 %719
  %723 = load i32, i32* %722, align 4, !tbaa !54, !noalias !58
  br label %435

; <label>:724                                     ; preds = %610
  %725 = fcmp fast ugt float %718, 0x3EE4F8B580000000
  br i1 %725, label %726, label %865, !dx.controlflow.hints !66

; <label>:726                                     ; preds = %724
  %727 = fcmp fast ogt float %718, 0x3EE4F8B580000000
  %728 = fdiv fast float 1.000000e+00, %718
  %729 = select i1 %727, float %728, float 1.000000e+00
  %730 = getelementptr inbounds [8 x float], [8 x float]* %33, i32 0, i32 0
  %731 = load float, float* %730, align 4, !tbaa !64, !noalias !58
  %732 = fmul fast float %731, %729
  store float %732, float* %730, align 4, !tbaa !64, !noalias !58
  %733 = getelementptr inbounds [8 x float], [8 x float]* %33, i32 0, i32 1
  %734 = load float, float* %733, align 4, !tbaa !64, !noalias !58
  %735 = fmul fast float %734, %729
  store float %735, float* %733, align 4, !tbaa !64, !noalias !58
  %736 = getelementptr inbounds [8 x float], [8 x float]* %33, i32 0, i32 2
  %737 = load float, float* %736, align 4, !tbaa !64, !noalias !58
  %738 = fmul fast float %737, %729
  store float %738, float* %736, align 4, !tbaa !64, !noalias !58
  %739 = getelementptr inbounds [8 x float], [8 x float]* %33, i32 0, i32 3
  %740 = load float, float* %739, align 4, !tbaa !64, !noalias !58
  %741 = fmul fast float %740, %729
  store float %741, float* %739, align 4, !tbaa !64, !noalias !58
  %742 = getelementptr inbounds [8 x float], [8 x float]* %33, i32 0, i32 4
  %743 = load float, float* %742, align 4, !tbaa !64, !noalias !58
  %744 = fmul fast float %743, %729
  store float %744, float* %742, align 4, !tbaa !64, !noalias !58
  %745 = getelementptr inbounds [8 x float], [8 x float]* %33, i32 0, i32 5
  %746 = load float, float* %745, align 4, !tbaa !64, !noalias !58
  %747 = fmul fast float %746, %729
  store float %747, float* %745, align 4, !tbaa !64, !noalias !58
  %748 = getelementptr inbounds [8 x float], [8 x float]* %33, i32 0, i32 6
  %749 = load float, float* %748, align 4, !tbaa !64, !noalias !58
  %750 = fmul fast float %749, %729
  store float %750, float* %748, align 4, !tbaa !64, !noalias !58
  %751 = getelementptr inbounds [8 x float], [8 x float]* %33, i32 0, i32 7
  %752 = load float, float* %751, align 4, !tbaa !64, !noalias !58
  %753 = fmul fast float %752, %729
  store float %753, float* %751, align 4, !tbaa !64, !noalias !58
  br label %754

; <label>:754                                     ; preds = %859, %726
  %755 = phi float [ %863, %859 ], [ %732, %726 ]
  %756 = phi i32 [ %861, %859 ], [ %363, %726 ]
  %757 = phi float [ %838, %859 ], [ 0.000000e+00, %726 ]
  %758 = phi float [ %836, %859 ], [ 0.000000e+00, %726 ]
  %759 = phi float [ %834, %859 ], [ 0.000000e+00, %726 ]
  %760 = phi float [ %830, %859 ], [ 0.000000e+00, %726 ]
  %761 = phi float [ %847, %859 ], [ 0.000000e+00, %726 ]
  %762 = phi float [ %845, %859 ], [ 0.000000e+00, %726 ]
  %763 = phi float [ %843, %859 ], [ 0.000000e+00, %726 ]
  %764 = phi float [ %840, %859 ], [ 0.000000e+00, %726 ]
  %765 = phi float [ %856, %859 ], [ 0.000000e+00, %726 ]
  %766 = phi float [ %854, %859 ], [ 0.000000e+00, %726 ]
  %767 = phi float [ %852, %859 ], [ 0.000000e+00, %726 ]
  %768 = phi float [ %849, %859 ], [ 0.000000e+00, %726 ]
  %769 = phi i32 [ %857, %859 ], [ 0, %726 ]
  %770 = shl i32 %756, 5
  %771 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %770, i32 undef)  ; BufferLoad(srv,index,wot)
  %772 = extractvalue %dx.types.ResRet.i32 %771, 0
  %773 = extractvalue %dx.types.ResRet.i32 %771, 1
  %774 = extractvalue %dx.types.ResRet.i32 %771, 3
  %775 = or i32 %770, 16
  %776 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %775, i32 undef)  ; BufferLoad(srv,index,wot)
  %777 = extractvalue %dx.types.ResRet.i32 %776, 1
  %778 = shl i32 %772, 4
  %779 = and i32 %778, 32752
  %780 = call float @dx.op.legacyF16ToF32(i32 131, i32 %779)  ; LegacyF16ToF32(value)
  %781 = lshr i32 %772, 7
  %782 = and i32 %781, 32752
  %783 = call float @dx.op.legacyF16ToF32(i32 131, i32 %782)  ; LegacyF16ToF32(value)
  %784 = lshr i32 %772, 22
  %785 = shl nuw nsw i32 %784, 5
  %786 = call float @dx.op.legacyF16ToF32(i32 131, i32 %785)  ; LegacyF16ToF32(value)
  %787 = and i32 %773, 255
  %788 = uitofp i32 %787 to float
  %789 = fmul fast float %788, 0x3F80204080000000
  %790 = fadd fast float %789, -1.000000e+00
  %791 = lshr i32 %773, 8
  %792 = and i32 %791, 255
  %793 = uitofp i32 %792 to float
  %794 = fmul fast float %793, 0x3F80204080000000
  %795 = fadd fast float %794, -1.000000e+00
  %796 = lshr i32 %773, 16
  %797 = and i32 %796, 255
  %798 = uitofp i32 %797 to float
  %799 = fmul fast float %798, 0x3F80204080000000
  %800 = fadd fast float %799, -1.000000e+00
  %801 = and i32 %774, 255
  %802 = uitofp i32 %801 to float
  %803 = fmul fast float %802, 0x3F80204080000000
  %804 = fadd fast float %803, -1.000000e+00
  %805 = lshr i32 %774, 8
  %806 = and i32 %805, 255
  %807 = uitofp i32 %806 to float
  %808 = fmul fast float %807, 0x3F80204080000000
  %809 = fadd fast float %808, -1.000000e+00
  %810 = lshr i32 %774, 16
  %811 = and i32 %810, 255
  %812 = uitofp i32 %811 to float
  %813 = fmul fast float %812, 0x3F80204080000000
  %814 = fadd fast float %813, -1.000000e+00
  %815 = and i32 %777, 255
  %816 = uitofp i32 %815 to float
  %817 = fmul fast float %816, 0x3F80204080000000
  %818 = fadd fast float %817, -1.000000e+00
  %819 = lshr i32 %777, 8
  %820 = and i32 %819, 255
  %821 = uitofp i32 %820 to float
  %822 = fmul fast float %821, 0x3F80204080000000
  %823 = fadd fast float %822, -1.000000e+00
  %824 = lshr i32 %777, 16
  %825 = and i32 %824, 255
  %826 = uitofp i32 %825 to float
  %827 = fmul fast float %826, 0x3F80204080000000
  %828 = fadd fast float %827, -1.000000e+00
  %829 = fmul fast float %780, %755
  %830 = fadd fast float %829, %760
  %831 = fmul fast float %755, 0x3FFBB67AE0000000
  %832 = fmul fast float %831, %780
  %833 = fmul fast float %832, %790
  %834 = fadd fast float %833, %759
  %835 = fmul fast float %832, %795
  %836 = fadd fast float %835, %758
  %837 = fmul fast float %832, %800
  %838 = fadd fast float %837, %757
  %839 = fmul fast float %783, %755
  %840 = fadd fast float %839, %764
  %841 = fmul fast float %831, %783
  %842 = fmul fast float %841, %804
  %843 = fadd fast float %842, %763
  %844 = fmul fast float %841, %809
  %845 = fadd fast float %844, %762
  %846 = fmul fast float %841, %814
  %847 = fadd fast float %846, %761
  %848 = fmul fast float %786, %755
  %849 = fadd fast float %848, %768
  %850 = fmul fast float %831, %786
  %851 = fmul fast float %850, %818
  %852 = fadd fast float %851, %767
  %853 = fmul fast float %850, %823
  %854 = fadd fast float %853, %766
  %855 = fmul fast float %850, %828
  %856 = fadd fast float %855, %765
  %857 = add nuw nsw i32 %769, 1
  %858 = icmp eq i32 %857, 8
  br i1 %858, label %864, label %859

; <label>:859                                     ; preds = %754
  %860 = getelementptr inbounds [8 x i32], [8 x i32]* %32, i32 0, i32 %857
  %861 = load i32, i32* %860, align 4, !tbaa !54, !noalias !58
  %862 = getelementptr inbounds [8 x float], [8 x float]* %33, i32 0, i32 %857
  %863 = load float, float* %862, align 4, !tbaa !64, !noalias !58
  br label %754

; <label>:864                                     ; preds = %754
  br label %865

; <label>:865                                     ; preds = %864, %724, %291, %272, %244
  %866 = phi float [ 0.000000e+00, %244 ], [ 0.000000e+00, %272 ], [ 0.000000e+00, %291 ], [ 0.000000e+00, %724 ], [ %838, %864 ]
  %867 = phi float [ 0.000000e+00, %244 ], [ 0.000000e+00, %272 ], [ 0.000000e+00, %291 ], [ 0.000000e+00, %724 ], [ %836, %864 ]
  %868 = phi float [ 0.000000e+00, %244 ], [ 0.000000e+00, %272 ], [ 0.000000e+00, %291 ], [ 0.000000e+00, %724 ], [ %834, %864 ]
  %869 = phi float [ 0.000000e+00, %244 ], [ 0.000000e+00, %272 ], [ 0.000000e+00, %291 ], [ 0.000000e+00, %724 ], [ %830, %864 ]
  %870 = phi float [ 0.000000e+00, %244 ], [ 0.000000e+00, %272 ], [ 0.000000e+00, %291 ], [ 0.000000e+00, %724 ], [ %847, %864 ]
  %871 = phi float [ 0.000000e+00, %244 ], [ 0.000000e+00, %272 ], [ 0.000000e+00, %291 ], [ 0.000000e+00, %724 ], [ %845, %864 ]
  %872 = phi float [ 0.000000e+00, %244 ], [ 0.000000e+00, %272 ], [ 0.000000e+00, %291 ], [ 0.000000e+00, %724 ], [ %843, %864 ]
  %873 = phi float [ 0.000000e+00, %244 ], [ 0.000000e+00, %272 ], [ 0.000000e+00, %291 ], [ 0.000000e+00, %724 ], [ %840, %864 ]
  %874 = phi float [ 0.000000e+00, %244 ], [ 0.000000e+00, %272 ], [ 0.000000e+00, %291 ], [ 0.000000e+00, %724 ], [ %856, %864 ]
  %875 = phi float [ 0.000000e+00, %244 ], [ 0.000000e+00, %272 ], [ 0.000000e+00, %291 ], [ 0.000000e+00, %724 ], [ %854, %864 ]
  %876 = phi float [ 0.000000e+00, %244 ], [ 0.000000e+00, %272 ], [ 0.000000e+00, %291 ], [ 0.000000e+00, %724 ], [ %852, %864 ]
  %877 = phi float [ 0.000000e+00, %244 ], [ 0.000000e+00, %272 ], [ 0.000000e+00, %291 ], [ 0.000000e+00, %724 ], [ %849, %864 ]
  %878 = phi i1 [ false, %244 ], [ false, %272 ], [ false, %291 ], [ false, %724 ], [ true, %864 ]
  br i1 %878, label %914, label %879, !dx.controlflow.hints !67

; <label>:879                                     ; preds = %865
  %880 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %881 = extractvalue %dx.types.ResRet.i32 %880, 1
  %882 = extractvalue %dx.types.ResRet.i32 %880, 2
  %883 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %884 = extractvalue %dx.types.ResRet.i32 %883, 0
  %885 = extractvalue %dx.types.ResRet.i32 %883, 1
  %886 = extractvalue %dx.types.ResRet.i32 %883, 2
  %887 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %888 = extractvalue %dx.types.ResRet.i32 %887, 0
  %889 = extractvalue %dx.types.ResRet.i32 %887, 1
  %890 = and i32 %888, 65535
  %891 = call float @dx.op.legacyF16ToF32(i32 131, i32 %890)  ; LegacyF16ToF32(value)
  %892 = lshr i32 %888, 16
  %893 = call float @dx.op.legacyF16ToF32(i32 131, i32 %892)  ; LegacyF16ToF32(value)
  %894 = and i32 %889, 65535
  %895 = call float @dx.op.legacyF16ToF32(i32 131, i32 %894)  ; LegacyF16ToF32(value)
  %896 = lshr i32 %889, 16
  %897 = call float @dx.op.legacyF16ToF32(i32 131, i32 %896)  ; LegacyF16ToF32(value)
  %898 = lshr i32 %884, 16
  %899 = call float @dx.op.legacyF16ToF32(i32 131, i32 %898)  ; LegacyF16ToF32(value)
  %900 = and i32 %885, 65535
  %901 = call float @dx.op.legacyF16ToF32(i32 131, i32 %900)  ; LegacyF16ToF32(value)
  %902 = lshr i32 %885, 16
  %903 = call float @dx.op.legacyF16ToF32(i32 131, i32 %902)  ; LegacyF16ToF32(value)
  %904 = and i32 %886, 65535
  %905 = call float @dx.op.legacyF16ToF32(i32 131, i32 %904)  ; LegacyF16ToF32(value)
  %906 = and i32 %881, 65535
  %907 = call float @dx.op.legacyF16ToF32(i32 131, i32 %906)  ; LegacyF16ToF32(value)
  %908 = lshr i32 %881, 16
  %909 = call float @dx.op.legacyF16ToF32(i32 131, i32 %908)  ; LegacyF16ToF32(value)
  %910 = and i32 %882, 65535
  %911 = call float @dx.op.legacyF16ToF32(i32 131, i32 %910)  ; LegacyF16ToF32(value)
  %912 = lshr i32 %882, 16
  %913 = call float @dx.op.legacyF16ToF32(i32 131, i32 %912)  ; LegacyF16ToF32(value)
  br label %914

; <label>:914                                     ; preds = %879, %865, %241
  %915 = phi float [ %913, %879 ], [ %874, %865 ], [ 0.000000e+00, %241 ]
  %916 = phi float [ %911, %879 ], [ %875, %865 ], [ 0.000000e+00, %241 ]
  %917 = phi float [ %909, %879 ], [ %876, %865 ], [ 0.000000e+00, %241 ]
  %918 = phi float [ %907, %879 ], [ %877, %865 ], [ 0.000000e+00, %241 ]
  %919 = phi float [ %905, %879 ], [ %870, %865 ], [ 0.000000e+00, %241 ]
  %920 = phi float [ %903, %879 ], [ %871, %865 ], [ 0.000000e+00, %241 ]
  %921 = phi float [ %901, %879 ], [ %872, %865 ], [ 0.000000e+00, %241 ]
  %922 = phi float [ %899, %879 ], [ %873, %865 ], [ 0.000000e+00, %241 ]
  %923 = phi float [ %897, %879 ], [ %866, %865 ], [ 0.000000e+00, %241 ]
  %924 = phi float [ %895, %879 ], [ %867, %865 ], [ 0.000000e+00, %241 ]
  %925 = phi float [ %893, %879 ], [ %868, %865 ], [ 0.000000e+00, %241 ]
  %926 = phi float [ %891, %879 ], [ %869, %865 ], [ 0.000000e+00, %241 ]
  %927 = fcmp fast olt float %242, 1.000000e+00
  br i1 %927, label %928, label %1573, !dx.controlflow.hints !68

; <label>:928                                     ; preds = %914
  %929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %930 = extractvalue %dx.types.CBufRet.f32 %929, 0
  %931 = extractvalue %dx.types.CBufRet.f32 %929, 1
  %932 = fsub fast float %192, %930
  %933 = fsub fast float %197, %931
  %934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %935 = extractvalue %dx.types.CBufRet.f32 %934, 0
  %936 = extractvalue %dx.types.CBufRet.f32 %934, 1
  %937 = fmul fast float %932, %935
  %938 = fmul fast float %933, %936
  %939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %940 = extractvalue %dx.types.CBufRet.f32 %939, 0
  %941 = fmul fast float %940, %937
  %942 = extractvalue %dx.types.CBufRet.f32 %939, 1
  %943 = fadd fast float %941, %942
  %944 = extractvalue %dx.types.CBufRet.f32 %939, 2
  %945 = fmul fast float %944, %938
  %946 = extractvalue %dx.types.CBufRet.f32 %939, 3
  %947 = fadd fast float %945, %946
  %948 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %26, float %943, float %947, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %949 = extractvalue %dx.types.ResRet.f32 %948, 0
  %950 = extractvalue %dx.types.ResRet.f32 %948, 1
  %951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %952 = extractvalue %dx.types.CBufRet.f32 %951, 1
  %953 = extractvalue %dx.types.CBufRet.f32 %951, 0
  %954 = fsub fast float %952, %953
  %955 = fmul fast float %954, %949
  %956 = fadd fast float %955, %953
  %957 = extractvalue %dx.types.CBufRet.f32 %951, 3
  %958 = extractvalue %dx.types.CBufRet.f32 %951, 2
  %959 = fsub fast float %957, %958
  %960 = fmul fast float %959, %950
  %961 = fadd fast float %960, %958
  %962 = fsub fast float %202, %956
  %963 = fsub fast float %961, %956
  %964 = fdiv fast float %962, %963
  %965 = call float @dx.op.unary.f32(i32 7, float %964)  ; Saturate(value)
  %966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %967 = extractvalue %dx.types.CBufRet.f32 %966, 0
  %968 = fmul fast float %967, %965
  %969 = extractvalue %dx.types.CBufRet.f32 %966, 1
  %970 = fadd fast float %968, %969
  %971 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %26, float %943, float %947, float %970, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %972 = extractvalue %dx.types.ResRet.f32 %971, 0
  %973 = extractvalue %dx.types.ResRet.f32 %971, 1
  %974 = extractvalue %dx.types.ResRet.f32 %971, 2
  %975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %976 = extractvalue %dx.types.CBufRet.f32 %975, 0
  %977 = extractvalue %dx.types.CBufRet.f32 %975, 1
  %978 = extractvalue %dx.types.CBufRet.f32 %975, 2
  %979 = fmul fast float %976, %972
  %980 = fmul fast float %977, %973
  %981 = fmul fast float %978, %974
  %982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %983 = extractvalue %dx.types.CBufRet.f32 %982, 0
  %984 = extractvalue %dx.types.CBufRet.f32 %982, 1
  %985 = extractvalue %dx.types.CBufRet.f32 %982, 2
  %986 = fadd fast float %979, %983
  %987 = fadd fast float %980, %984
  %988 = fadd fast float %981, %985
  %989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %990 = extractvalue %dx.types.CBufRet.f32 %989, 0
  %991 = fmul fast float %990, %937
  %992 = extractvalue %dx.types.CBufRet.f32 %989, 1
  %993 = fadd fast float %991, %992
  %994 = extractvalue %dx.types.CBufRet.f32 %989, 2
  %995 = fmul fast float %994, %938
  %996 = extractvalue %dx.types.CBufRet.f32 %989, 3
  %997 = fadd fast float %995, %996
  %998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %999 = extractvalue %dx.types.CBufRet.f32 %998, 0
  %1000 = extractvalue %dx.types.CBufRet.f32 %998, 1
  %1001 = extractvalue %dx.types.CBufRet.f32 %998, 2
  %1002 = extractvalue %dx.types.CBufRet.f32 %998, 3
  %1003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %1004 = extractvalue %dx.types.CBufRet.f32 %1003, 0
  %1005 = extractvalue %dx.types.CBufRet.f32 %1003, 1
  %1006 = extractvalue %dx.types.CBufRet.f32 %1003, 2
  %1007 = extractvalue %dx.types.CBufRet.f32 %1003, 3
  %1008 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %26, float %993, float %997, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1009 = extractvalue %dx.types.ResRet.f32 %1008, 0
  %1010 = extractvalue %dx.types.ResRet.f32 %1008, 1
  %1011 = extractvalue %dx.types.ResRet.f32 %1008, 2
  %1012 = extractvalue %dx.types.ResRet.f32 %1008, 3
  %1013 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %26, float %993, float %997, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1014 = extractvalue %dx.types.ResRet.f32 %1013, 0
  %1015 = extractvalue %dx.types.ResRet.f32 %1013, 1
  %1016 = extractvalue %dx.types.ResRet.f32 %1013, 2
  %1017 = extractvalue %dx.types.ResRet.f32 %1013, 3
  %1018 = fmul fast float %1009, %986
  %1019 = fmul fast float %1014, %986
  %1020 = fmul fast float %1016, %986
  %1021 = fmul fast float %1012, %986
  %1022 = fadd fast float %1018, %999
  %1023 = fadd fast float %1019, %1000
  %1024 = fadd fast float %1020, %1001
  %1025 = fadd fast float %1021, %1002
  %1026 = fmul fast float %1010, %986
  %1027 = fmul fast float %1015, %986
  %1028 = fadd fast float %1026, %1004
  %1029 = fadd fast float %1027, %1005
  %1030 = fmul fast float %1011, %986
  %1031 = fmul fast float %1017, %986
  %1032 = fadd fast float %1030, %1006
  %1033 = fadd fast float %1031, %1007
  %1034 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %26, float %993, float %997, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1035 = extractvalue %dx.types.ResRet.f32 %1034, 0
  %1036 = extractvalue %dx.types.ResRet.f32 %1034, 1
  %1037 = extractvalue %dx.types.ResRet.f32 %1034, 2
  %1038 = extractvalue %dx.types.ResRet.f32 %1034, 3
  %1039 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %26, float %993, float %997, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1040 = extractvalue %dx.types.ResRet.f32 %1039, 0
  %1041 = extractvalue %dx.types.ResRet.f32 %1039, 1
  %1042 = extractvalue %dx.types.ResRet.f32 %1039, 2
  %1043 = extractvalue %dx.types.ResRet.f32 %1039, 3
  %1044 = fmul fast float %1035, %987
  %1045 = fmul fast float %1040, %987
  %1046 = fmul fast float %1042, %987
  %1047 = fmul fast float %1038, %987
  %1048 = fadd fast float %1022, %1044
  %1049 = fadd fast float %1023, %1045
  %1050 = fadd fast float %1024, %1046
  %1051 = fadd fast float %1025, %1047
  %1052 = fmul fast float %1036, %987
  %1053 = fmul fast float %1041, %987
  %1054 = fadd fast float %1028, %1052
  %1055 = fadd fast float %1029, %1053
  %1056 = fmul fast float %1037, %987
  %1057 = fmul fast float %1043, %987
  %1058 = fadd fast float %1032, %1056
  %1059 = fadd fast float %1033, %1057
  %1060 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %26, float %993, float %997, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1061 = extractvalue %dx.types.ResRet.f32 %1060, 0
  %1062 = extractvalue %dx.types.ResRet.f32 %1060, 1
  %1063 = extractvalue %dx.types.ResRet.f32 %1060, 2
  %1064 = extractvalue %dx.types.ResRet.f32 %1060, 3
  %1065 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %26, float %993, float %997, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1066 = extractvalue %dx.types.ResRet.f32 %1065, 0
  %1067 = extractvalue %dx.types.ResRet.f32 %1065, 1
  %1068 = extractvalue %dx.types.ResRet.f32 %1065, 2
  %1069 = extractvalue %dx.types.ResRet.f32 %1065, 3
  %1070 = fmul fast float %1061, %988
  %1071 = fmul fast float %1066, %988
  %1072 = fmul fast float %1068, %988
  %1073 = fmul fast float %1064, %988
  %1074 = fadd fast float %1048, %1070
  %1075 = fadd fast float %1049, %1071
  %1076 = fadd fast float %1050, %1072
  %1077 = fadd fast float %1051, %1073
  %1078 = fmul fast float %1062, %988
  %1079 = fmul fast float %1067, %988
  %1080 = fadd fast float %1054, %1078
  %1081 = fadd fast float %1055, %1079
  %1082 = fmul fast float %1063, %988
  %1083 = fmul fast float %1069, %988
  %1084 = fadd fast float %1058, %1082
  %1085 = fadd fast float %1059, %1083
  %1086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %1087 = extractvalue %dx.types.CBufRet.f32 %1086, 0
  %1088 = fsub fast float %192, %1087
  %1089 = fsub fast float %930, %192
  %1090 = call float @dx.op.binary.f32(i32 35, float %1089, float %1088)  ; FMax(a,b)
  %1091 = extractvalue %dx.types.CBufRet.f32 %1086, 1
  %1092 = fsub fast float %197, %1091
  %1093 = fsub fast float %931, %197
  %1094 = call float @dx.op.binary.f32(i32 35, float %1093, float %1092)  ; FMax(a,b)
  %1095 = call float @dx.op.binary.f32(i32 35, float %1090, float %1094)  ; FMax(a,b)
  %1096 = extractvalue %dx.types.CBufRet.f32 %934, 3
  %1097 = fmul fast float %1096, %1095
  %1098 = call float @dx.op.unary.f32(i32 7, float %1097)  ; Saturate(value)
  %1099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %1100 = extractvalue %dx.types.CBufRet.f32 %1099, 0
  %1101 = extractvalue %dx.types.CBufRet.f32 %1099, 1
  %1102 = extractvalue %dx.types.CBufRet.f32 %1099, 2
  %1103 = extractvalue %dx.types.CBufRet.f32 %1099, 3
  %1104 = fsub fast float %1100, %1074
  %1105 = fsub fast float %1101, %1075
  %1106 = fsub fast float %1102, %1076
  %1107 = fsub fast float %1103, %1077
  %1108 = fmul fast float %1104, %1098
  %1109 = fmul fast float %1105, %1098
  %1110 = fmul fast float %1106, %1098
  %1111 = fmul fast float %1107, %1098
  %1112 = fadd fast float %1108, %1074
  %1113 = fadd fast float %1109, %1075
  %1114 = fadd fast float %1110, %1076
  %1115 = fadd fast float %1111, %1077
  %1116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %1117 = extractvalue %dx.types.CBufRet.f32 %1116, 0
  %1118 = extractvalue %dx.types.CBufRet.f32 %1116, 1
  %1119 = fsub fast float %1117, %1080
  %1120 = fsub fast float %1118, %1081
  %1121 = fmul fast float %1119, %1098
  %1122 = fmul fast float %1120, %1098
  %1123 = fadd fast float %1121, %1080
  %1124 = fadd fast float %1122, %1081
  %1125 = extractvalue %dx.types.CBufRet.f32 %1116, 2
  %1126 = extractvalue %dx.types.CBufRet.f32 %1116, 3
  %1127 = fsub fast float %1125, %1084
  %1128 = fsub fast float %1126, %1085
  %1129 = fmul fast float %1127, %1098
  %1130 = fmul fast float %1128, %1098
  %1131 = fadd fast float %1129, %1084
  %1132 = fadd fast float %1130, %1085
  %1133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %1134 = extractvalue %dx.types.CBufRet.f32 %1133, 0
  %1135 = fmul fast float %1134, %1112
  %1136 = fmul fast float %1134, %1113
  %1137 = fmul fast float %1134, %1114
  %1138 = fmul fast float %1134, %1115
  %1139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %1140 = extractvalue %dx.types.CBufRet.f32 %1139, 0
  %1141 = fmul fast float %1140, %1123
  %1142 = fmul fast float %1140, %1124
  %1143 = fadd fast float %1141, %1135
  %1144 = fadd fast float %1142, %1137
  %1145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %1146 = extractvalue %dx.types.CBufRet.f32 %1145, 0
  %1147 = fmul fast float %1146, %1131
  %1148 = fmul fast float %1146, %1132
  %1149 = fadd fast float %1143, %1147
  %1150 = fadd fast float %1144, %1148
  %1151 = extractvalue %dx.types.CBufRet.f32 %1133, 1
  %1152 = fmul fast float %1151, %1112
  %1153 = fmul fast float %1151, %1113
  %1154 = fmul fast float %1151, %1114
  %1155 = fmul fast float %1151, %1115
  %1156 = extractvalue %dx.types.CBufRet.f32 %1139, 1
  %1157 = fmul fast float %1156, %1123
  %1158 = fmul fast float %1156, %1124
  %1159 = fadd fast float %1157, %1152
  %1160 = fadd fast float %1158, %1154
  %1161 = extractvalue %dx.types.CBufRet.f32 %1145, 1
  %1162 = fmul fast float %1161, %1131
  %1163 = fmul fast float %1161, %1132
  %1164 = fadd fast float %1159, %1162
  %1165 = fadd fast float %1160, %1163
  %1166 = extractvalue %dx.types.CBufRet.f32 %1133, 2
  %1167 = fmul fast float %1166, %1112
  %1168 = fmul fast float %1166, %1113
  %1169 = fmul fast float %1166, %1114
  %1170 = fmul fast float %1166, %1115
  %1171 = extractvalue %dx.types.CBufRet.f32 %1139, 2
  %1172 = fmul fast float %1171, %1123
  %1173 = fmul fast float %1171, %1124
  %1174 = fadd fast float %1172, %1167
  %1175 = fadd fast float %1173, %1169
  %1176 = extractvalue %dx.types.CBufRet.f32 %1145, 2
  %1177 = fmul fast float %1176, %1131
  %1178 = fmul fast float %1176, %1132
  %1179 = fadd fast float %1174, %1177
  %1180 = fadd fast float %1175, %1178
  %1181 = fmul fast float %1168, %1168
  %1182 = fmul fast float %1180, %1180
  %1183 = fmul fast float %1170, %1170
  %1184 = fadd fast float %1183, %1181
  %1185 = fadd fast float %1184, %1182
  %1186 = call float @dx.op.unary.f32(i32 24, float %1185)  ; Sqrt(value)
  %1187 = fcmp fast ugt float %1186, 0.000000e+00
  br i1 %1187, label %1188, label %1203, !dx.controlflow.hints !69

; <label>:1188                                    ; preds = %928
  %1189 = fsub fast float -0.000000e+00, %1170
  %1190 = fdiv fast float %1189, %1186
  %1191 = fsub fast float -0.000000e+00, %1168
  %1192 = fdiv fast float %1191, %1186
  %1193 = fdiv fast float %1180, %1186
  %1194 = fmul fast float %1179, 0x3FE279A760000000
  %1195 = fmul fast float %1192, %1168
  %1196 = fmul fast float %1193, %1180
  %1197 = fmul fast float %1190, %1170
  %1198 = fadd fast float %1195, %1197
  %1199 = fsub fast float %1198, %1196
  %1200 = call float @dx.op.unary.f32(i32 6, float %1199)  ; FAbs(value)
  %1201 = fadd fast float %1200, 0x3DDB7CDFE0000000
  %1202 = fdiv fast float %1194, %1201
  br label %1203

; <label>:1203                                    ; preds = %1188, %928
  %1204 = phi float [ %1202, %1188 ], [ 1.000000e+00, %928 ]
  %1205 = fmul fast float %1153, %1153
  %1206 = fmul fast float %1165, %1165
  %1207 = fmul fast float %1155, %1155
  %1208 = fadd fast float %1207, %1205
  %1209 = fadd fast float %1208, %1206
  %1210 = call float @dx.op.unary.f32(i32 24, float %1209)  ; Sqrt(value)
  %1211 = fcmp fast ugt float %1210, 0.000000e+00
  br i1 %1211, label %1212, label %1227, !dx.controlflow.hints !69

; <label>:1212                                    ; preds = %1203
  %1213 = fsub fast float -0.000000e+00, %1155
  %1214 = fdiv fast float %1213, %1210
  %1215 = fsub fast float -0.000000e+00, %1153
  %1216 = fdiv fast float %1215, %1210
  %1217 = fdiv fast float %1165, %1210
  %1218 = fmul fast float %1164, 0x3FE279A760000000
  %1219 = fmul fast float %1216, %1153
  %1220 = fmul fast float %1217, %1165
  %1221 = fmul fast float %1214, %1155
  %1222 = fadd fast float %1219, %1221
  %1223 = fsub fast float %1222, %1220
  %1224 = call float @dx.op.unary.f32(i32 6, float %1223)  ; FAbs(value)
  %1225 = fadd fast float %1224, 0x3DDB7CDFE0000000
  %1226 = fdiv fast float %1218, %1225
  br label %1227

; <label>:1227                                    ; preds = %1212, %1203
  %1228 = phi float [ %1226, %1212 ], [ 1.000000e+00, %1203 ]
  %1229 = call float @dx.op.binary.f32(i32 36, float %1228, float %1204)  ; FMin(a,b)
  %1230 = fmul fast float %1136, %1136
  %1231 = fmul fast float %1150, %1150
  %1232 = fmul fast float %1138, %1138
  %1233 = fadd fast float %1232, %1230
  %1234 = fadd fast float %1233, %1231
  %1235 = call float @dx.op.unary.f32(i32 24, float %1234)  ; Sqrt(value)
  %1236 = fcmp fast ugt float %1235, 0.000000e+00
  br i1 %1236, label %1237, label %1252, !dx.controlflow.hints !69

; <label>:1237                                    ; preds = %1227
  %1238 = fsub fast float -0.000000e+00, %1138
  %1239 = fdiv fast float %1238, %1235
  %1240 = fsub fast float -0.000000e+00, %1136
  %1241 = fdiv fast float %1240, %1235
  %1242 = fdiv fast float %1150, %1235
  %1243 = fmul fast float %1149, 0x3FE279A760000000
  %1244 = fmul fast float %1241, %1136
  %1245 = fmul fast float %1242, %1150
  %1246 = fmul fast float %1239, %1138
  %1247 = fadd fast float %1244, %1246
  %1248 = fsub fast float %1247, %1245
  %1249 = call float @dx.op.unary.f32(i32 6, float %1248)  ; FAbs(value)
  %1250 = fadd fast float %1249, 0x3DDB7CDFE0000000
  %1251 = fdiv fast float %1243, %1250
  br label %1252

; <label>:1252                                    ; preds = %1237, %1227
  %1253 = phi float [ %1251, %1237 ], [ 1.000000e+00, %1227 ]
  %1254 = call float @dx.op.binary.f32(i32 36, float %1253, float %1229)  ; FMin(a,b)
  %1255 = call float @dx.op.unary.f32(i32 7, float %1254)  ; Saturate(value)
  %1256 = fcmp fast olt float %1255, 1.000000e+00
  br i1 %1256, label %1257, label %1267, !dx.controlflow.hints !70

; <label>:1257                                    ; preds = %1252
  %1258 = fmul fast float %1255, %1136
  %1259 = fmul fast float %1255, %1150
  %1260 = fmul fast float %1255, %1138
  %1261 = fmul fast float %1255, %1153
  %1262 = fmul fast float %1255, %1165
  %1263 = fmul fast float %1255, %1155
  %1264 = fmul fast float %1255, %1168
  %1265 = fmul fast float %1255, %1180
  %1266 = fmul fast float %1255, %1170
  br label %1267

; <label>:1267                                    ; preds = %1257, %1252
  %1268 = phi float [ %1264, %1257 ], [ %1168, %1252 ]
  %1269 = phi float [ %1265, %1257 ], [ %1180, %1252 ]
  %1270 = phi float [ %1266, %1257 ], [ %1170, %1252 ]
  %1271 = phi float [ %1261, %1257 ], [ %1153, %1252 ]
  %1272 = phi float [ %1262, %1257 ], [ %1165, %1252 ]
  %1273 = phi float [ %1263, %1257 ], [ %1155, %1252 ]
  %1274 = phi float [ %1258, %1257 ], [ %1136, %1252 ]
  %1275 = phi float [ %1259, %1257 ], [ %1150, %1252 ]
  %1276 = phi float [ %1260, %1257 ], [ %1138, %1252 ]
  %1277 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1149)  ; FMax(a,b)
  %1278 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1164)  ; FMax(a,b)
  %1279 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1179)  ; FMax(a,b)
  %1280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %1281 = extractvalue %dx.types.CBufRet.f32 %1280, 0
  %1282 = fcmp fast ogt float %1281, 0.000000e+00
  %1283 = fcmp fast oge float %937, 0.000000e+00
  %1284 = and i1 %1283, %1282
  %1285 = fcmp fast ole float %937, 1.000000e+00
  %1286 = and i1 %1285, %1284
  %1287 = fcmp fast oge float %938, 0.000000e+00
  %1288 = and i1 %1287, %1286
  %1289 = fcmp fast ole float %938, 1.000000e+00
  %1290 = and i1 %1289, %1288
  br i1 %1290, label %1291, label %1436, !dx.controlflow.hints !71

; <label>:1291                                    ; preds = %1267
  %1292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1293 = extractvalue %dx.types.CBufRet.f32 %1292, 2
  %1294 = extractvalue %dx.types.CBufRet.f32 %1292, 3
  %1295 = fmul fast float %1293, %937
  %1296 = fmul fast float %1294, %938
  %1297 = call float @dx.op.unary.f32(i32 27, float %1295)  ; Round_ni(value)
  %1298 = call float @dx.op.unary.f32(i32 27, float %1296)  ; Round_ni(value)
  %1299 = fptosi float %1297 to i32
  %1300 = fptosi float %1298 to i32
  %1301 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %20, i32 0, i32 %1299, i32 %1300, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1302 = extractvalue %dx.types.ResRet.i32 %1301, 0
  %1303 = and i32 %1302, 65535
  %1304 = lshr i32 %1302, 16
  %1305 = icmp eq i32 %1303, 65535
  br i1 %1305, label %1342, label %1306, !dx.controlflow.hints !72

; <label>:1306                                    ; preds = %1291
  %1307 = extractvalue %dx.types.CBufRet.f32 %1280, 1
  %1308 = extractvalue %dx.types.CBufRet.f32 %1292, 0
  %1309 = extractvalue %dx.types.CBufRet.f32 %1292, 1
  %1310 = fmul fast float %1308, %937
  %1311 = fmul fast float %1309, %938
  %1312 = fmul fast float %1310, 1.250000e-01
  %1313 = fmul fast float %1311, 1.250000e-01
  %1314 = call float @dx.op.unary.f32(i32 27, float %1312)  ; Round_ni(value)
  %1315 = call float @dx.op.unary.f32(i32 27, float %1313)  ; Round_ni(value)
  %1316 = fmul fast float %1314, 8.000000e+00
  %1317 = fmul fast float %1315, 8.000000e+00
  %1318 = and i32 %1302, 255
  %1319 = lshr i32 %1302, 8
  %1320 = and i32 %1319, 255
  %1321 = mul nuw nsw i32 %1318, 9
  %1322 = uitofp i32 %1321 to float
  %1323 = mul nuw nsw i32 %1320, 9
  %1324 = uitofp i32 %1323 to float
  %1325 = fadd fast float %1322, 5.000000e-01
  %1326 = fadd fast float %1325, %1310
  %1327 = fsub fast float %1326, %1316
  %1328 = fadd fast float %1324, 5.000000e-01
  %1329 = fadd fast float %1328, %1311
  %1330 = fsub fast float %1329, %1317
  %1331 = fdiv fast float %1327, %1281
  %1332 = fdiv fast float %1330, %1307
  %1333 = fmul fast float %965, 4.375000e-01
  %1334 = fadd fast float %1333, 3.125000e-02
  %1335 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %26, float %1331, float %1332, float %1334, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1336 = extractvalue %dx.types.ResRet.f32 %1335, 0
  %1337 = extractvalue %dx.types.ResRet.f32 %1335, 1
  %1338 = extractvalue %dx.types.ResRet.f32 %1335, 2
  %1339 = fadd fast float %1336, %1277
  %1340 = fadd fast float %1337, %1278
  %1341 = fadd fast float %1338, %1279
  br label %1342

; <label>:1342                                    ; preds = %1306, %1291
  %1343 = phi float [ %1341, %1306 ], [ %1279, %1291 ]
  %1344 = phi float [ %1340, %1306 ], [ %1278, %1291 ]
  %1345 = phi float [ %1339, %1306 ], [ %1277, %1291 ]
  %1346 = icmp eq i32 %1304, 65535
  br i1 %1346, label %1436, label %1347, !dx.controlflow.hints !73

; <label>:1347                                    ; preds = %1342
  %1348 = extractvalue %dx.types.CBufRet.f32 %1280, 1
  %1349 = extractvalue %dx.types.CBufRet.f32 %1292, 0
  %1350 = extractvalue %dx.types.CBufRet.f32 %1292, 1
  %1351 = fmul fast float %1349, %937
  %1352 = fmul fast float %1350, %938
  %1353 = fmul fast float %1351, 1.250000e-01
  %1354 = fmul fast float %1352, 1.250000e-01
  %1355 = call float @dx.op.unary.f32(i32 27, float %1353)  ; Round_ni(value)
  %1356 = call float @dx.op.unary.f32(i32 27, float %1354)  ; Round_ni(value)
  %1357 = fmul fast float %1355, 8.000000e+00
  %1358 = fmul fast float %1356, 8.000000e+00
  %1359 = fsub fast float %1351, %1357
  %1360 = fsub fast float %1352, %1358
  %1361 = fadd fast float %1359, 5.000000e-01
  %1362 = fadd fast float %1360, 5.000000e-01
  %1363 = and i32 %1304, 255
  %1364 = lshr i32 %1302, 24
  %1365 = mul nuw nsw i32 %1363, 9
  %1366 = uitofp i32 %1365 to float
  %1367 = mul nuw nsw i32 %1364, 9
  %1368 = uitofp i32 %1367 to float
  %1369 = fadd fast float %1361, %1366
  %1370 = fadd fast float %1362, %1368
  %1371 = fdiv fast float %1369, %1281
  %1372 = fdiv fast float %1370, %1348
  %1373 = fmul fast float %965, 4.375000e-01
  %1374 = fadd fast float %1373, 3.125000e-02
  %1375 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %26, float %1371, float %1372, float %1374, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1376 = extractvalue %dx.types.ResRet.f32 %1375, 0
  %1377 = extractvalue %dx.types.ResRet.f32 %1375, 1
  %1378 = extractvalue %dx.types.ResRet.f32 %1375, 2
  %1379 = fadd fast float %1373, 5.312500e-01
  %1380 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %26, float %1371, float %1372, float %1379, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1381 = extractvalue %dx.types.ResRet.f32 %1380, 0
  %1382 = extractvalue %dx.types.ResRet.f32 %1380, 1
  %1383 = extractvalue %dx.types.ResRet.f32 %1380, 2
  %1384 = fmul fast float %1381, 2.000000e+00
  %1385 = fmul fast float %1382, 2.000000e+00
  %1386 = fmul fast float %1383, 2.000000e+00
  %1387 = fadd fast float %1384, -1.000000e+00
  %1388 = fadd fast float %1385, -1.000000e+00
  %1389 = fadd fast float %1386, -1.000000e+00
  %1390 = fmul fast float %1387, %1387
  %1391 = fmul fast float %1388, %1388
  %1392 = fadd fast float %1390, %1391
  %1393 = fmul fast float %1389, %1389
  %1394 = fadd fast float %1392, %1393
  %1395 = call float @dx.op.unary.f32(i32 24, float %1394)  ; Sqrt(value)
  %1396 = fcmp fast ogt float %1395, 0.000000e+00
  br i1 %1396, label %1397, label %1401, !dx.controlflow.hints !74

; <label>:1397                                    ; preds = %1347
  %1398 = fdiv fast float %1387, %1395
  %1399 = fdiv fast float %1388, %1395
  %1400 = fdiv fast float %1389, %1395
  br label %1401

; <label>:1401                                    ; preds = %1397, %1347
  %1402 = phi float [ %1398, %1397 ], [ 0.000000e+00, %1347 ]
  %1403 = phi float [ %1399, %1397 ], [ 0.000000e+00, %1347 ]
  %1404 = phi float [ %1400, %1397 ], [ 0.000000e+00, %1347 ]
  %1405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1406 = extractvalue %dx.types.CBufRet.f32 %1405, 0
  %1407 = extractvalue %dx.types.CBufRet.f32 %1405, 1
  %1408 = fsub fast float %192, %1406
  %1409 = fsub fast float %197, %1407
  %1410 = fmul fast float %1408, %1408
  %1411 = fmul fast float %1409, %1409
  %1412 = fadd fast float %1410, %1411
  %1413 = call float @dx.op.unary.f32(i32 24, float %1412)  ; Sqrt(value)
  %1414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1415 = extractvalue %dx.types.CBufRet.f32 %1414, 0
  %1416 = extractvalue %dx.types.CBufRet.f32 %1414, 1
  %1417 = fsub fast float %1413, %1415
  %1418 = fdiv fast float %1417, %1416
  %1419 = call float @dx.op.unary.f32(i32 7, float %1418)  ; Saturate(value)
  %1420 = fmul fast float %1419, 2.000000e+00
  %1421 = fsub fast float 3.000000e+00, %1420
  %1422 = fmul fast float %1419, %1419
  %1423 = fmul fast float %1422, %1421
  %1424 = call float @dx.op.dot3.f32(i32 55, float %1402, float %1403, float %1404, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1425 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1424)  ; FMax(a,b)
  %1426 = fmul fast float %1425, 0x400C5BF8A0000000
  %1427 = fmul fast float %1423, %1376
  %1428 = fmul fast float %1427, %1426
  %1429 = fadd fast float %1428, %1345
  %1430 = fmul fast float %1423, %1377
  %1431 = fmul fast float %1430, %1426
  %1432 = fadd fast float %1431, %1344
  %1433 = fmul fast float %1423, %1378
  %1434 = fmul fast float %1433, %1426
  %1435 = fadd fast float %1434, %1343
  br label %1436

; <label>:1436                                    ; preds = %1401, %1342, %1267
  %1437 = phi float [ %1435, %1401 ], [ %1343, %1342 ], [ %1279, %1267 ]
  %1438 = phi float [ %1432, %1401 ], [ %1344, %1342 ], [ %1278, %1267 ]
  %1439 = phi float [ %1429, %1401 ], [ %1345, %1342 ], [ %1277, %1267 ]
  %1440 = fcmp fast ogt float %202, %961
  %1441 = and i1 %1283, %1440
  %1442 = and i1 %1285, %1441
  %1443 = and i1 %1287, %1442
  %1444 = and i1 %1289, %1443
  br i1 %1444, label %1445, label %1502, !dx.controlflow.hints !75

; <label>:1445                                    ; preds = %1436
  %1446 = fmul fast float %963, 0x3FC24924A0000000
  %1447 = fsub fast float %202, %961
  %1448 = fdiv fast float %1447, %1446
  %1449 = call float @dx.op.unary.f32(i32 7, float %1448)  ; Saturate(value)
  %1450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %1451 = extractvalue %dx.types.CBufRet.f32 %1450, 0
  %1452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %1453 = extractvalue %dx.types.CBufRet.f32 %1452, 0
  %1454 = extractvalue %dx.types.CBufRet.f32 %1452, 1
  %1455 = extractvalue %dx.types.CBufRet.f32 %1452, 2
  %1456 = fsub fast float %1451, %1439
  %1457 = fsub fast float %1453, %1274
  %1458 = fsub fast float %1454, %1275
  %1459 = fsub fast float %1455, %1276
  %1460 = fmul fast float %1456, %1449
  %1461 = fmul fast float %1457, %1449
  %1462 = fmul fast float %1458, %1449
  %1463 = fmul fast float %1459, %1449
  %1464 = fadd fast float %1460, %1439
  %1465 = fadd fast float %1461, %1274
  %1466 = fadd fast float %1462, %1275
  %1467 = fadd fast float %1463, %1276
  %1468 = extractvalue %dx.types.CBufRet.f32 %1450, 1
  %1469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %1470 = extractvalue %dx.types.CBufRet.f32 %1469, 0
  %1471 = extractvalue %dx.types.CBufRet.f32 %1469, 1
  %1472 = extractvalue %dx.types.CBufRet.f32 %1469, 2
  %1473 = fsub fast float %1468, %1438
  %1474 = fsub fast float %1470, %1271
  %1475 = fsub fast float %1471, %1272
  %1476 = fsub fast float %1472, %1273
  %1477 = fmul fast float %1473, %1449
  %1478 = fmul fast float %1474, %1449
  %1479 = fmul fast float %1475, %1449
  %1480 = fmul fast float %1476, %1449
  %1481 = fadd fast float %1477, %1438
  %1482 = fadd fast float %1478, %1271
  %1483 = fadd fast float %1479, %1272
  %1484 = fadd fast float %1480, %1273
  %1485 = extractvalue %dx.types.CBufRet.f32 %1450, 2
  %1486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %1487 = extractvalue %dx.types.CBufRet.f32 %1486, 0
  %1488 = extractvalue %dx.types.CBufRet.f32 %1486, 1
  %1489 = extractvalue %dx.types.CBufRet.f32 %1486, 2
  %1490 = fsub fast float %1485, %1437
  %1491 = fsub fast float %1487, %1268
  %1492 = fsub fast float %1488, %1269
  %1493 = fsub fast float %1489, %1270
  %1494 = fmul fast float %1490, %1449
  %1495 = fmul fast float %1491, %1449
  %1496 = fmul fast float %1492, %1449
  %1497 = fmul fast float %1493, %1449
  %1498 = fadd fast float %1494, %1437
  %1499 = fadd fast float %1495, %1268
  %1500 = fadd fast float %1496, %1269
  %1501 = fadd fast float %1497, %1270
  br label %1502

; <label>:1502                                    ; preds = %1445, %1436
  %1503 = phi float [ %1498, %1445 ], [ %1437, %1436 ]
  %1504 = phi float [ %1499, %1445 ], [ %1268, %1436 ]
  %1505 = phi float [ %1500, %1445 ], [ %1269, %1436 ]
  %1506 = phi float [ %1501, %1445 ], [ %1270, %1436 ]
  %1507 = phi float [ %1481, %1445 ], [ %1438, %1436 ]
  %1508 = phi float [ %1482, %1445 ], [ %1271, %1436 ]
  %1509 = phi float [ %1483, %1445 ], [ %1272, %1436 ]
  %1510 = phi float [ %1484, %1445 ], [ %1273, %1436 ]
  %1511 = phi float [ %1464, %1445 ], [ %1439, %1436 ]
  %1512 = phi float [ %1465, %1445 ], [ %1274, %1436 ]
  %1513 = phi float [ %1466, %1445 ], [ %1275, %1436 ]
  %1514 = phi float [ %1467, %1445 ], [ %1276, %1436 ]
  %1515 = extractvalue %dx.types.CBufRet.f32 %1086, 3
  %1516 = fmul fast float %1515, %1511
  %1517 = fmul fast float %1515, %1507
  %1518 = fmul fast float %1515, %1503
  %1519 = fmul fast float %1512, 1.500000e+00
  %1520 = fmul fast float %1519, %1515
  %1521 = fmul fast float %1513, 1.500000e+00
  %1522 = fmul fast float %1521, %1515
  %1523 = fmul fast float %1514, 1.500000e+00
  %1524 = fmul fast float %1523, %1515
  %1525 = fmul fast float %1508, 1.500000e+00
  %1526 = fmul fast float %1525, %1515
  %1527 = fmul fast float %1509, 1.500000e+00
  %1528 = fmul fast float %1527, %1515
  %1529 = fmul fast float %1510, 1.500000e+00
  %1530 = fmul fast float %1529, %1515
  %1531 = fmul fast float %1504, 1.500000e+00
  %1532 = fmul fast float %1531, %1515
  %1533 = fmul fast float %1505, 1.500000e+00
  %1534 = fmul fast float %1533, %1515
  %1535 = fmul fast float %1506, 1.500000e+00
  %1536 = fmul fast float %1535, %1515
  %1537 = fsub fast float %926, %1516
  %1538 = fmul fast float %1537, %242
  %1539 = fadd fast float %1538, %1516
  %1540 = fsub fast float %925, %1520
  %1541 = fmul fast float %1540, %242
  %1542 = fadd fast float %1541, %1520
  %1543 = fsub fast float %924, %1522
  %1544 = fmul fast float %1543, %242
  %1545 = fadd fast float %1544, %1522
  %1546 = fsub fast float %923, %1524
  %1547 = fmul fast float %1546, %242
  %1548 = fadd fast float %1547, %1524
  %1549 = fsub fast float %922, %1517
  %1550 = fmul fast float %1549, %242
  %1551 = fadd fast float %1550, %1517
  %1552 = fsub fast float %921, %1526
  %1553 = fmul fast float %1552, %242
  %1554 = fadd fast float %1553, %1526
  %1555 = fsub fast float %920, %1528
  %1556 = fmul fast float %1555, %242
  %1557 = fadd fast float %1556, %1528
  %1558 = fsub fast float %919, %1530
  %1559 = fmul fast float %1558, %242
  %1560 = fadd fast float %1559, %1530
  %1561 = fsub fast float %918, %1518
  %1562 = fmul fast float %1561, %242
  %1563 = fadd fast float %1562, %1518
  %1564 = fsub fast float %917, %1532
  %1565 = fmul fast float %1564, %242
  %1566 = fadd fast float %1565, %1532
  %1567 = fsub fast float %916, %1534
  %1568 = fmul fast float %1567, %242
  %1569 = fadd fast float %1568, %1534
  %1570 = fsub fast float %915, %1536
  %1571 = fmul fast float %1570, %242
  %1572 = fadd fast float %1571, %1536
  br label %1573

; <label>:1573                                    ; preds = %1502, %914
  %1574 = phi float [ %915, %914 ], [ %1572, %1502 ]
  %1575 = phi float [ %916, %914 ], [ %1569, %1502 ]
  %1576 = phi float [ %917, %914 ], [ %1566, %1502 ]
  %1577 = phi float [ %918, %914 ], [ %1563, %1502 ]
  %1578 = phi float [ %919, %914 ], [ %1560, %1502 ]
  %1579 = phi float [ %920, %914 ], [ %1557, %1502 ]
  %1580 = phi float [ %921, %914 ], [ %1554, %1502 ]
  %1581 = phi float [ %922, %914 ], [ %1551, %1502 ]
  %1582 = phi float [ %923, %914 ], [ %1548, %1502 ]
  %1583 = phi float [ %924, %914 ], [ %1545, %1502 ]
  %1584 = phi float [ %925, %914 ], [ %1542, %1502 ]
  %1585 = phi float [ %926, %914 ], [ %1539, %1502 ]
  %1586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1587 = extractvalue %dx.types.CBufRet.f32 %1586, 0
  %1588 = extractvalue %dx.types.CBufRet.f32 %1586, 1
  %1589 = extractvalue %dx.types.CBufRet.f32 %1586, 2
  %1590 = fsub fast float %192, %1587
  %1591 = fsub fast float %197, %1588
  %1592 = fsub fast float %202, %1589
  %1593 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1594 = extractvalue %dx.types.CBufRet.i32 %1593, 2
  %1595 = icmp eq i32 %1594, 0
  br i1 %1595, label %1811, label %1596

; <label>:1596                                    ; preds = %1573
  br label %1597

; <label>:1597                                    ; preds = %1792, %1596
  %1598 = phi float [ %1793, %1792 ], [ 0.000000e+00, %1596 ]
  %1599 = phi float [ %1794, %1792 ], [ 0.000000e+00, %1596 ]
  %1600 = phi float [ %1795, %1792 ], [ 0.000000e+00, %1596 ]
  %1601 = phi float [ %1796, %1792 ], [ 0.000000e+00, %1596 ]
  %1602 = phi float [ %1797, %1792 ], [ 0.000000e+00, %1596 ]
  %1603 = phi float [ %1798, %1792 ], [ 0.000000e+00, %1596 ]
  %1604 = phi float [ %1799, %1792 ], [ 0.000000e+00, %1596 ]
  %1605 = phi float [ %1800, %1792 ], [ 0.000000e+00, %1596 ]
  %1606 = phi float [ %1801, %1792 ], [ 0.000000e+00, %1596 ]
  %1607 = phi float [ %1802, %1792 ], [ 0.000000e+00, %1596 ]
  %1608 = phi float [ %1803, %1792 ], [ 0.000000e+00, %1596 ]
  %1609 = phi float [ %1804, %1792 ], [ 0.000000e+00, %1596 ]
  %1610 = phi float [ %1805, %1792 ], [ 1.000000e+00, %1596 ]
  %1611 = phi i32 [ %1806, %1792 ], [ 0, %1596 ]
  %1612 = shl i32 %1611, 2
  %1613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %1612, i32 undef)  ; BufferLoad(srv,index,wot)
  %1614 = extractvalue %dx.types.ResRet.i32 %1613, 0
  %1615 = icmp ne i32 %1614, 0
  %1616 = fcmp fast ogt float %1610, 0.000000e+00
  %1617 = and i1 %1616, %1615
  br i1 %1617, label %1618, label %1792

; <label>:1618                                    ; preds = %1597
  br label %1619

; <label>:1619                                    ; preds = %1774, %1618
  %1620 = phi float [ %1775, %1774 ], [ %1598, %1618 ]
  %1621 = phi float [ %1776, %1774 ], [ %1599, %1618 ]
  %1622 = phi float [ %1777, %1774 ], [ %1600, %1618 ]
  %1623 = phi float [ %1778, %1774 ], [ %1601, %1618 ]
  %1624 = phi float [ %1779, %1774 ], [ %1602, %1618 ]
  %1625 = phi float [ %1780, %1774 ], [ %1603, %1618 ]
  %1626 = phi float [ %1781, %1774 ], [ %1604, %1618 ]
  %1627 = phi float [ %1782, %1774 ], [ %1605, %1618 ]
  %1628 = phi float [ %1783, %1774 ], [ %1606, %1618 ]
  %1629 = phi float [ %1784, %1774 ], [ %1607, %1618 ]
  %1630 = phi float [ %1785, %1774 ], [ %1608, %1618 ]
  %1631 = phi float [ %1786, %1774 ], [ %1609, %1618 ]
  %1632 = phi float [ %1787, %1774 ], [ %1610, %1618 ]
  %1633 = phi i32 [ %1637, %1774 ], [ %1614, %1618 ]
  %1634 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1633)  ; FirstbitLo(value)
  %1635 = and i32 %1634, 31
  %1636 = shl i32 1, %1635
  %1637 = xor i32 %1636, %1633
  %1638 = shl i32 %1611, 5
  %1639 = add i32 %1634, %1638
  %1640 = mul i32 %1639, 72
  %1641 = add i32 %1640, 12
  %1642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %1641, i32 undef)  ; BufferLoad(srv,index,wot)
  %1643 = extractvalue %dx.types.ResRet.i32 %1642, 0
  %1644 = add i32 %1640, 16
  %1645 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %1644, i32 undef)  ; BufferLoad(srv,index,wot)
  %1646 = extractvalue %dx.types.ResRet.f32 %1645, 0
  %1647 = extractvalue %dx.types.ResRet.f32 %1645, 1
  %1648 = extractvalue %dx.types.ResRet.f32 %1645, 2
  %1649 = mul i32 %1639, 60
  %1650 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %1649, i32 undef)  ; BufferLoad(srv,index,wot)
  %1651 = extractvalue %dx.types.ResRet.f32 %1650, 0
  %1652 = extractvalue %dx.types.ResRet.f32 %1650, 1
  %1653 = extractvalue %dx.types.ResRet.f32 %1650, 2
  %1654 = add i32 %1649, 12
  %1655 = add i32 %1649, 48
  %1656 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %1655, i32 undef)  ; BufferLoad(srv,index,wot)
  %1657 = extractvalue %dx.types.ResRet.f32 %1656, 0
  %1658 = extractvalue %dx.types.ResRet.f32 %1656, 1
  %1659 = extractvalue %dx.types.ResRet.f32 %1656, 2
  %1660 = and i32 %1643, 32767
  %1661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1662 = extractvalue %dx.types.CBufRet.f32 %1661, 0
  %1663 = extractvalue %dx.types.CBufRet.f32 %1661, 1
  %1664 = extractvalue %dx.types.CBufRet.f32 %1661, 2
  %1665 = fsub fast float %1651, %1662
  %1666 = fsub fast float %1652, %1663
  %1667 = fsub fast float %1653, %1664
  %1668 = fsub fast float %1590, %1665
  %1669 = fsub fast float %1591, %1666
  %1670 = fsub fast float %1592, %1667
  %1671 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %1654, i32 undef)  ; BufferLoad(srv,index,wot)
  %1672 = extractvalue %dx.types.ResRet.f32 %1671, 0
  %1673 = extractvalue %dx.types.ResRet.f32 %1671, 1
  %1674 = extractvalue %dx.types.ResRet.f32 %1671, 2
  %1675 = call float @dx.op.dot3.f32(i32 55, float %1668, float %1669, float %1670, float %1672, float %1673, float %1674)  ; Dot3(ax,ay,az,bx,by,bz)
  %1676 = add i32 %1649, 24
  %1677 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %1676, i32 undef)  ; BufferLoad(srv,index,wot)
  %1678 = extractvalue %dx.types.ResRet.f32 %1677, 0
  %1679 = extractvalue %dx.types.ResRet.f32 %1677, 1
  %1680 = extractvalue %dx.types.ResRet.f32 %1677, 2
  %1681 = call float @dx.op.dot3.f32(i32 55, float %1668, float %1669, float %1670, float %1678, float %1679, float %1680)  ; Dot3(ax,ay,az,bx,by,bz)
  %1682 = add i32 %1649, 36
  %1683 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %1682, i32 undef)  ; BufferLoad(srv,index,wot)
  %1684 = extractvalue %dx.types.ResRet.f32 %1683, 0
  %1685 = extractvalue %dx.types.ResRet.f32 %1683, 1
  %1686 = extractvalue %dx.types.ResRet.f32 %1683, 2
  %1687 = call float @dx.op.dot3.f32(i32 55, float %1668, float %1669, float %1670, float %1684, float %1685, float %1686)  ; Dot3(ax,ay,az,bx,by,bz)
  %1688 = call float @dx.op.unary.f32(i32 6, float %1675)  ; FAbs(value)
  %1689 = call float @dx.op.unary.f32(i32 6, float %1681)  ; FAbs(value)
  %1690 = call float @dx.op.unary.f32(i32 6, float %1687)  ; FAbs(value)
  %1691 = fsub fast float %1657, %1688
  %1692 = fsub fast float %1658, %1689
  %1693 = fsub fast float %1659, %1690
  %1694 = fmul fast float %1691, %1646
  %1695 = fmul fast float %1692, %1647
  %1696 = fmul fast float %1693, %1648
  %1697 = call float @dx.op.binary.f32(i32 36, float %1695, float %1696)  ; FMin(a,b)
  %1698 = call float @dx.op.binary.f32(i32 36, float %1694, float %1697)  ; FMin(a,b)
  %1699 = call float @dx.op.unary.f32(i32 7, float %1698)  ; Saturate(value)
  %1700 = call float @dx.op.binary.f32(i32 36, float %1632, float %1699)  ; FMin(a,b)
  %1701 = fcmp fast ogt float %1700, 0.000000e+00
  br i1 %1701, label %1702, label %1774, !dx.controlflow.hints !76

; <label>:1702                                    ; preds = %1619
  %1703 = lshr i32 %1643, 16
  %1704 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1703)  ; LegacyF16ToF32(value)
  %1705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 141)  ; CBufferLoadLegacy(handle,regIndex)
  %1706 = extractvalue %dx.types.CBufRet.f32 %1705, 3
  %1707 = bitcast float %1706 to i32
  %1708 = add i32 %1707, %1660
  %1709 = mul i32 %1708, 36
  %1710 = shl i32 %1707, 1
  %1711 = add i32 %1710, %1660
  %1712 = mul i32 %1711, 36
  %1713 = mul i32 %1707, 3
  %1714 = add i32 %1713, %1660
  %1715 = mul i32 %1714, 36
  %1716 = fmul fast float %1704, %1700
  %1717 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1709, i32 undef)  ; BufferLoad(srv,index,wot)
  %1718 = extractvalue %dx.types.ResRet.f32 %1717, 0
  %1719 = fmul fast float %1718, %1716
  %1720 = fadd fast float %1719, %1623
  %1721 = add i32 %1709, 4
  %1722 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1721, i32 undef)  ; BufferLoad(srv,index,wot)
  %1723 = extractvalue %dx.types.ResRet.f32 %1722, 0
  %1724 = fmul fast float %1723, %1716
  %1725 = fadd fast float %1724, %1622
  %1726 = add i32 %1709, 8
  %1727 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1726, i32 undef)  ; BufferLoad(srv,index,wot)
  %1728 = extractvalue %dx.types.ResRet.f32 %1727, 0
  %1729 = fmul fast float %1728, %1716
  %1730 = fadd fast float %1729, %1621
  %1731 = add i32 %1709, 12
  %1732 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1731, i32 undef)  ; BufferLoad(srv,index,wot)
  %1733 = extractvalue %dx.types.ResRet.f32 %1732, 0
  %1734 = fmul fast float %1733, %1716
  %1735 = fadd fast float %1734, %1620
  %1736 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1712, i32 undef)  ; BufferLoad(srv,index,wot)
  %1737 = extractvalue %dx.types.ResRet.f32 %1736, 0
  %1738 = fmul fast float %1737, %1716
  %1739 = fadd fast float %1738, %1627
  %1740 = add i32 %1712, 4
  %1741 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1740, i32 undef)  ; BufferLoad(srv,index,wot)
  %1742 = extractvalue %dx.types.ResRet.f32 %1741, 0
  %1743 = fmul fast float %1742, %1716
  %1744 = fadd fast float %1743, %1626
  %1745 = add i32 %1712, 8
  %1746 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1745, i32 undef)  ; BufferLoad(srv,index,wot)
  %1747 = extractvalue %dx.types.ResRet.f32 %1746, 0
  %1748 = fmul fast float %1747, %1716
  %1749 = fadd fast float %1748, %1625
  %1750 = add i32 %1712, 12
  %1751 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1750, i32 undef)  ; BufferLoad(srv,index,wot)
  %1752 = extractvalue %dx.types.ResRet.f32 %1751, 0
  %1753 = fmul fast float %1752, %1716
  %1754 = fadd fast float %1753, %1624
  %1755 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1715, i32 undef)  ; BufferLoad(srv,index,wot)
  %1756 = extractvalue %dx.types.ResRet.f32 %1755, 0
  %1757 = fmul fast float %1756, %1716
  %1758 = fadd fast float %1757, %1631
  %1759 = add i32 %1715, 4
  %1760 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1759, i32 undef)  ; BufferLoad(srv,index,wot)
  %1761 = extractvalue %dx.types.ResRet.f32 %1760, 0
  %1762 = fmul fast float %1761, %1716
  %1763 = fadd fast float %1762, %1630
  %1764 = add i32 %1715, 8
  %1765 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1764, i32 undef)  ; BufferLoad(srv,index,wot)
  %1766 = extractvalue %dx.types.ResRet.f32 %1765, 0
  %1767 = fmul fast float %1766, %1716
  %1768 = fadd fast float %1767, %1629
  %1769 = add i32 %1715, 12
  %1770 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1769, i32 undef)  ; BufferLoad(srv,index,wot)
  %1771 = extractvalue %dx.types.ResRet.f32 %1770, 0
  %1772 = fmul fast float %1771, %1716
  %1773 = fadd fast float %1772, %1628
  br label %1774

; <label>:1774                                    ; preds = %1702, %1619
  %1775 = phi float [ %1735, %1702 ], [ %1620, %1619 ]
  %1776 = phi float [ %1730, %1702 ], [ %1621, %1619 ]
  %1777 = phi float [ %1725, %1702 ], [ %1622, %1619 ]
  %1778 = phi float [ %1720, %1702 ], [ %1623, %1619 ]
  %1779 = phi float [ %1754, %1702 ], [ %1624, %1619 ]
  %1780 = phi float [ %1749, %1702 ], [ %1625, %1619 ]
  %1781 = phi float [ %1744, %1702 ], [ %1626, %1619 ]
  %1782 = phi float [ %1739, %1702 ], [ %1627, %1619 ]
  %1783 = phi float [ %1773, %1702 ], [ %1628, %1619 ]
  %1784 = phi float [ %1768, %1702 ], [ %1629, %1619 ]
  %1785 = phi float [ %1763, %1702 ], [ %1630, %1619 ]
  %1786 = phi float [ %1758, %1702 ], [ %1631, %1619 ]
  %1787 = fsub fast float %1632, %1700
  %1788 = icmp ne i32 %1633, %1636
  %1789 = fcmp fast ogt float %1787, 0.000000e+00
  %1790 = and i1 %1788, %1789
  br i1 %1790, label %1619, label %1791

; <label>:1791                                    ; preds = %1774
  br label %1792

; <label>:1792                                    ; preds = %1791, %1597
  %1793 = phi float [ %1598, %1597 ], [ %1775, %1791 ]
  %1794 = phi float [ %1599, %1597 ], [ %1776, %1791 ]
  %1795 = phi float [ %1600, %1597 ], [ %1777, %1791 ]
  %1796 = phi float [ %1601, %1597 ], [ %1778, %1791 ]
  %1797 = phi float [ %1602, %1597 ], [ %1779, %1791 ]
  %1798 = phi float [ %1603, %1597 ], [ %1780, %1791 ]
  %1799 = phi float [ %1604, %1597 ], [ %1781, %1791 ]
  %1800 = phi float [ %1605, %1597 ], [ %1782, %1791 ]
  %1801 = phi float [ %1606, %1597 ], [ %1783, %1791 ]
  %1802 = phi float [ %1607, %1597 ], [ %1784, %1791 ]
  %1803 = phi float [ %1608, %1597 ], [ %1785, %1791 ]
  %1804 = phi float [ %1609, %1597 ], [ %1786, %1791 ]
  %1805 = phi float [ %1610, %1597 ], [ %1787, %1791 ]
  %1806 = add i32 %1611, 1
  %1807 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1808 = extractvalue %dx.types.CBufRet.i32 %1807, 2
  %1809 = icmp ult i32 %1806, %1808
  br i1 %1809, label %1597, label %1810

; <label>:1810                                    ; preds = %1792
  br label %1811

; <label>:1811                                    ; preds = %1810, %1573
  %1812 = phi float [ 0.000000e+00, %1573 ], [ %1793, %1810 ]
  %1813 = phi float [ 0.000000e+00, %1573 ], [ %1794, %1810 ]
  %1814 = phi float [ 0.000000e+00, %1573 ], [ %1795, %1810 ]
  %1815 = phi float [ 0.000000e+00, %1573 ], [ %1796, %1810 ]
  %1816 = phi float [ 0.000000e+00, %1573 ], [ %1797, %1810 ]
  %1817 = phi float [ 0.000000e+00, %1573 ], [ %1798, %1810 ]
  %1818 = phi float [ 0.000000e+00, %1573 ], [ %1799, %1810 ]
  %1819 = phi float [ 0.000000e+00, %1573 ], [ %1800, %1810 ]
  %1820 = phi float [ 0.000000e+00, %1573 ], [ %1801, %1810 ]
  %1821 = phi float [ 0.000000e+00, %1573 ], [ %1802, %1810 ]
  %1822 = phi float [ 0.000000e+00, %1573 ], [ %1803, %1810 ]
  %1823 = phi float [ 0.000000e+00, %1573 ], [ %1804, %1810 ]
  %1824 = phi float [ 1.000000e+00, %1573 ], [ %1805, %1810 ]
  %1825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1826 = extractvalue %dx.types.CBufRet.f32 %1825, 3
  %1827 = fdiv fast float 1.000000e+00, %1826
  %1828 = fmul fast float %1827, %1815
  %1829 = fmul fast float %1827, %1814
  %1830 = fmul fast float %1827, %1813
  %1831 = fmul fast float %1827, %1812
  %1832 = fmul fast float %1827, %1819
  %1833 = fmul fast float %1827, %1818
  %1834 = fmul fast float %1827, %1817
  %1835 = fmul fast float %1827, %1816
  %1836 = fmul fast float %1827, %1823
  %1837 = fmul fast float %1827, %1822
  %1838 = fmul fast float %1827, %1821
  %1839 = fmul fast float %1827, %1820
  %1840 = fmul fast float %1824, %1585
  %1841 = fadd fast float %1828, %1840
  %1842 = fmul fast float %1824, %1584
  %1843 = fadd fast float %1829, %1842
  %1844 = fmul fast float %1824, %1583
  %1845 = fadd fast float %1830, %1844
  %1846 = fmul fast float %1824, %1582
  %1847 = fadd fast float %1831, %1846
  %1848 = fmul fast float %1824, %1581
  %1849 = fadd fast float %1832, %1848
  %1850 = fmul fast float %1824, %1580
  %1851 = fadd fast float %1833, %1850
  %1852 = fmul fast float %1824, %1579
  %1853 = fadd fast float %1834, %1852
  %1854 = fmul fast float %1824, %1578
  %1855 = fadd fast float %1835, %1854
  %1856 = fmul fast float %1824, %1577
  %1857 = fadd fast float %1836, %1856
  %1858 = fmul fast float %1824, %1576
  %1859 = fadd fast float %1837, %1858
  %1860 = fmul fast float %1824, %1575
  %1861 = fadd fast float %1838, %1860
  %1862 = fmul fast float %1824, %1574
  %1863 = fadd fast float %1839, %1862
  %1864 = fmul fast float %1841, %1826
  %1865 = fmul fast float %1843, %1826
  %1866 = fmul fast float %1845, %1826
  %1867 = fmul fast float %1847, %1826
  %1868 = extractvalue %dx.types.CBufRet.f32 %1825, 0
  %1869 = fmul fast float %1864, %1868
  %1870 = fmul fast float %1865, %1868
  %1871 = fmul fast float %1866, %1868
  %1872 = fmul fast float %1867, %1868
  %1873 = fmul fast float %1826, %1849
  %1874 = fmul fast float %1826, %1851
  %1875 = fmul fast float %1826, %1853
  %1876 = fmul fast float %1826, %1855
  %1877 = fmul fast float %1873, %1868
  %1878 = fmul fast float %1874, %1868
  %1879 = fmul fast float %1875, %1868
  %1880 = fmul fast float %1876, %1868
  %1881 = fmul fast float %1826, %1857
  %1882 = fmul fast float %1826, %1859
  %1883 = fmul fast float %1826, %1861
  %1884 = fmul fast float %1826, %1863
  %1885 = fmul fast float %1881, %1868
  %1886 = fmul fast float %1882, %1868
  %1887 = fmul fast float %1883, %1868
  %1888 = fmul fast float %1884, %1868
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %170, i32 %171, i32 0, float %1869, float %1870, float %1871, float %1872, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %170, i32 %171, i32 1, float %1877, float %1878, float %1879, float %1880, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %170, i32 %171, i32 2, float %1885, float %1886, float %1887, float %1888, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1889 = add i32 %171, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %170, i32 %1889, i32 0, float %1869, float %1870, float %1871, float %1872, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %170, i32 %1889, i32 1, float %1877, float %1878, float %1879, float %1880, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %170, i32 %1889, i32 2, float %1885, float %1886, float %1887, float %1888, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1890 = add i32 %170, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1890, i32 %171, i32 0, float %1869, float %1870, float %1871, float %1872, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1890, i32 %171, i32 1, float %1877, float %1878, float %1879, float %1880, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1890, i32 %171, i32 2, float %1885, float %1886, float %1887, float %1888, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1890, i32 %1889, i32 0, float %1869, float %1870, float %1871, float %1872, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1890, i32 %1889, i32 1, float %1877, float %1878, float %1879, float %1880, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1890, i32 %1889, i32 2, float %1885, float %1886, float %1887, float %1888, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1891

; <label>:1891                                    ; preds = %1811, %0
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
!42 = !{void ()* @cs_del_sh_sample_lightgrid_reflection_volumes_8_lowres, !"cs_del_sh_sample_lightgrid_reflection_volumes_8_lowres", null, !4, !43}
!43 = !{i32 0, i64 272, i32 4, !44}
!44 = !{i32 4, i32 4, i32 4}
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

