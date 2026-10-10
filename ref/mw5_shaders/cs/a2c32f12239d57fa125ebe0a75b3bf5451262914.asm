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
; shader hash: c7f39d376f7be852e86b6b27302d4529
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

define void @cs_del_sh_sample_lightgrid_2() {
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
  %34 = add i32 %33, 6
  %35 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %34, i32 0)  ; BufferLoad(srv,index,wot)
  %36 = extractvalue %dx.types.ResRet.i32 %35, 0
  %37 = icmp ult i32 %26, %36
  br i1 %37, label %38, label %1606, !dx.controlflow.hints !41

; <label>:38                                      ; preds = %0
  %39 = add i32 %33, 9
  %40 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 %39)  ; CBufferLoadLegacy(handle,regIndex)
  %41 = extractvalue %dx.types.CBufRet.i32 %40, 2
  %42 = add i32 %41, %26
  %43 = shl i32 %42, 5
  %44 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %43, i32 undef)  ; BufferLoad(srv,index,wot)
  %45 = extractvalue %dx.types.ResRet.i32 %44, 0
  %46 = extractvalue %dx.types.ResRet.i32 %44, 1
  %47 = extractvalue %dx.types.ResRet.i32 %44, 2
  %48 = extractvalue %dx.types.ResRet.i32 %44, 3
  %49 = lshr i32 %48, 14
  %50 = and i32 %49, 16383
  %51 = and i32 %48, 16383
  %52 = bitcast i32 %45 to float
  %53 = bitcast i32 %46 to float
  %54 = bitcast i32 %47 to float
  %55 = and i32 %48, 536870912
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %96, label %57, !dx.controlflow.hints !42

; <label>:57                                      ; preds = %38
  %58 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %59 = extractvalue %dx.types.CBufRet.f32 %58, 2
  %60 = extractvalue %dx.types.CBufRet.f32 %58, 3
  %61 = fmul fast float %59, %52
  %62 = fmul fast float %60, %53
  %63 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %64 = extractvalue %dx.types.CBufRet.f32 %63, 0
  %65 = extractvalue %dx.types.CBufRet.f32 %63, 1
  %66 = fadd fast float %61, %64
  %67 = fadd fast float %62, %65
  %68 = call float @dx.op.unary.f32(i32 7, float %66)  ; Saturate(value)
  %69 = call float @dx.op.unary.f32(i32 7, float %67)  ; Saturate(value)
  %70 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %22, float %68, float %69, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %71 = extractvalue %dx.types.ResRet.f32 %70, 0
  %72 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %73 = extractvalue %dx.types.CBufRet.f32 %72, 0
  %74 = fmul fast float %73, %71
  %75 = fsub fast float %66, %68
  %76 = fsub fast float %67, %69
  %77 = extractvalue %dx.types.CBufRet.f32 %58, 0
  %78 = extractvalue %dx.types.CBufRet.f32 %58, 1
  %79 = fmul fast float %77, %75
  %80 = fmul fast float %78, %76
  %81 = fmul fast float %79, %79
  %82 = fmul fast float %80, %80
  %83 = fadd fast float %81, %82
  %84 = call float @dx.op.unary.f32(i32 24, float %83)  ; Sqrt(value)
  %85 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %86 = extractvalue %dx.types.CBufRet.f32 %85, 3
  %87 = fmul fast float %86, %84
  %88 = call float @dx.op.unary.f32(i32 7, float %87)  ; Saturate(value)
  %89 = extractvalue %dx.types.CBufRet.f32 %85, 2
  %90 = fsub fast float %89, %74
  %91 = fmul fast float %90, %88
  %92 = extractvalue %dx.types.CBufRet.f32 %72, 1
  %93 = fadd fast float %74, %54
  %94 = fadd fast float %93, %92
  %95 = fadd fast float %94, %91
  br label %96

; <label>:96                                      ; preds = %57, %38
  %97 = phi float [ %95, %57 ], [ %54, %38 ]
  %98 = or i32 %43, 16
  %99 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %98, i32 undef)  ; BufferLoad(srv,index,wot)
  %100 = extractvalue %dx.types.ResRet.i32 %99, 0
  %101 = extractvalue %dx.types.ResRet.i32 %99, 1
  %102 = extractvalue %dx.types.ResRet.i32 %99, 2
  %103 = extractvalue %dx.types.ResRet.i32 %99, 3
  %104 = and i32 %100, 65535
  %105 = call float @dx.op.legacyF16ToF32(i32 131, i32 %104)  ; LegacyF16ToF32(value)
  %106 = lshr i32 %100, 16
  %107 = call float @dx.op.legacyF16ToF32(i32 131, i32 %106)  ; LegacyF16ToF32(value)
  %108 = and i32 %101, 1023
  %109 = uitofp i32 %108 to float
  %110 = lshr i32 %101, 10
  %111 = and i32 %110, 1023
  %112 = uitofp i32 %111 to float
  %113 = lshr i32 %101, 20
  %114 = and i32 %113, 1023
  %115 = uitofp i32 %114 to float
  %116 = fmul fast float %109, 0x3F60040100000000
  %117 = fmul fast float %112, 0x3F60040100000000
  %118 = fmul fast float %115, 0x3F60040100000000
  %119 = fadd fast float %116, -1.000000e+00
  %120 = fadd fast float %117, -1.000000e+00
  %121 = fadd fast float %118, -1.000000e+00
  %122 = and i32 %102, 1023
  %123 = uitofp i32 %122 to float
  %124 = lshr i32 %102, 10
  %125 = and i32 %124, 1023
  %126 = uitofp i32 %125 to float
  %127 = lshr i32 %102, 20
  %128 = and i32 %127, 1023
  %129 = uitofp i32 %128 to float
  %130 = fmul fast float %123, 0x3F60040100000000
  %131 = fmul fast float %126, 0x3F60040100000000
  %132 = fmul fast float %129, 0x3F60040100000000
  %133 = fadd fast float %130, -1.000000e+00
  %134 = fadd fast float %131, -1.000000e+00
  %135 = fadd fast float %132, -1.000000e+00
  %136 = and i32 %103, 65535
  %137 = call float @dx.op.legacyF16ToF32(i32 131, i32 %136)  ; LegacyF16ToF32(value)
  %138 = call float @dx.op.unary.f32(i32 13, float %137)  ; Sin(value)
  %139 = call float @dx.op.unary.f32(i32 12, float %137)  ; Cos(value)
  %140 = fmul fast float %139, %119
  %141 = fmul fast float %120, %139
  %142 = fmul fast float %121, %139
  %143 = fmul fast float %133, %138
  %144 = fmul fast float %134, %138
  %145 = fmul fast float %135, %138
  %146 = fadd fast float %140, %143
  %147 = fadd fast float %141, %144
  %148 = fadd fast float %142, %145
  %149 = fmul fast float %146, %105
  %150 = fmul fast float %147, %105
  %151 = fmul fast float %148, %105
  %152 = fmul fast float %119, %138
  %153 = fmul fast float %120, %138
  %154 = fmul fast float %121, %138
  %155 = fmul fast float %139, %133
  %156 = fmul fast float %134, %139
  %157 = fmul fast float %135, %139
  %158 = fsub fast float %152, %155
  %159 = fsub fast float %153, %156
  %160 = fsub fast float %154, %157
  %161 = fmul fast float %158, %107
  %162 = fmul fast float %159, %107
  %163 = fmul fast float %160, %107
  %164 = add i32 %50, %27
  %165 = add i32 %51, %28
  %166 = uitofp i32 %27 to float
  %167 = uitofp i32 %28 to float
  %168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %169 = extractvalue %dx.types.CBufRet.f32 %168, 1
  %170 = fdiv fast float %166, %169
  %171 = fdiv fast float %167, %169
  %172 = extractvalue %dx.types.CBufRet.f32 %168, 2
  %173 = fadd fast float %172, %170
  %174 = fadd fast float %172, %171
  %175 = fmul fast float %173, %149
  %176 = fmul fast float %173, %150
  %177 = fmul fast float %173, %151
  %178 = fmul fast float %174, %161
  %179 = fmul fast float %174, %162
  %180 = fmul fast float %174, %163
  %181 = fadd fast float %178, %175
  %182 = fmul fast float %181, 2.000000e+00
  %183 = fsub fast float %52, %149
  %184 = fsub fast float %183, %161
  %185 = fadd fast float %184, %182
  %186 = fadd fast float %179, %176
  %187 = fmul fast float %186, 2.000000e+00
  %188 = fsub fast float %53, %150
  %189 = fsub fast float %188, %162
  %190 = fadd fast float %189, %187
  %191 = fadd fast float %180, %177
  %192 = fmul fast float %191, 2.000000e+00
  %193 = fsub fast float %97, %151
  %194 = fsub fast float %193, %163
  %195 = fadd fast float %194, %192
  %196 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %197 = extractvalue %dx.types.CBufRet.i32 %196, 0
  %198 = icmp eq i32 %197, 1
  br i1 %198, label %199, label %234, !dx.controlflow.hints !43

; <label>:199                                     ; preds = %96
  %200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %201 = extractvalue %dx.types.CBufRet.f32 %200, 0
  %202 = extractvalue %dx.types.CBufRet.f32 %200, 1
  %203 = fsub fast float %185, %201
  %204 = fsub fast float %190, %202
  %205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %206 = extractvalue %dx.types.CBufRet.f32 %205, 0
  %207 = extractvalue %dx.types.CBufRet.f32 %205, 1
  %208 = fmul fast float %203, %206
  %209 = fmul fast float %204, %207
  %210 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %22, float %208, float %209, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %211 = extractvalue %dx.types.ResRet.f32 %210, 0
  %212 = fcmp fast ogt float %211, 0.000000e+00
  %213 = extractvalue %dx.types.CBufRet.i32 %196, 3
  %214 = icmp ne i32 %213, 0
  %215 = and i1 %212, %214
  br i1 %215, label %216, label %234, !dx.controlflow.hints !44

; <label>:216                                     ; preds = %199
  %217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %218 = extractvalue %dx.types.CBufRet.f32 %217, 0
  %219 = extractvalue %dx.types.CBufRet.f32 %217, 1
  %220 = fsub fast float %185, %218
  %221 = fsub fast float %190, %219
  %222 = fmul fast float %220, %220
  %223 = fmul fast float %221, %221
  %224 = fadd fast float %222, %223
  %225 = uitofp i32 %213 to float
  %226 = fmul fast float %225, %225
  %227 = fcmp fast ogt float %224, %226
  br i1 %227, label %234, label %228, !dx.controlflow.hints !45

; <label>:228                                     ; preds = %216
  %229 = call float @dx.op.unary.f32(i32 24, float %224)  ; Sqrt(value)
  %230 = fsub fast float %225, %229
  %231 = fmul fast float %230, 0x3F75555560000000
  %232 = call float @dx.op.unary.f32(i32 7, float %231)  ; Saturate(value)
  %233 = call float @dx.op.binary.f32(i32 36, float %232, float %211)  ; FMin(a,b)
  br label %234

; <label>:234                                     ; preds = %228, %216, %199, %96
  %235 = phi float [ 1.000000e+00, %96 ], [ %233, %228 ], [ %211, %199 ], [ 0.000000e+00, %216 ]
  %236 = fcmp fast ogt float %235, 0.000000e+00
  br i1 %236, label %237, label %907, !dx.controlflow.hints !46

; <label>:237                                     ; preds = %234
  %238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %239 = extractvalue %dx.types.CBufRet.f32 %238, 0
  %240 = extractvalue %dx.types.CBufRet.f32 %238, 1
  %241 = extractvalue %dx.types.CBufRet.f32 %238, 2
  %242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %243 = extractvalue %dx.types.CBufRet.f32 %242, 0
  %244 = extractvalue %dx.types.CBufRet.f32 %242, 1
  %245 = extractvalue %dx.types.CBufRet.f32 %242, 2
  %246 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %247 = extractvalue %dx.types.CBufRet.i32 %246, 1
  %248 = fsub fast float %185, %239
  %249 = fsub fast float %190, %240
  %250 = fsub fast float %195, %241
  %251 = fmul fast float %248, %243
  %252 = fmul fast float %249, %244
  %253 = fmul fast float %250, %245
  %254 = fcmp fast ole float %251, 0.000000e+00
  %255 = fcmp fast ole float %252, 0.000000e+00
  %256 = fcmp fast ole float %253, 0.000000e+00
  %257 = or i1 %254, %255
  %258 = or i1 %256, %257
  %259 = fcmp fast oge float %251, 1.000000e+00
  %260 = fcmp fast oge float %252, 1.000000e+00
  %261 = fcmp fast oge float %253, 1.000000e+00
  %262 = or i1 %259, %260
  %263 = or i1 %261, %262
  %264 = or i1 %258, %263
  br i1 %264, label %858, label %265, !dx.controlflow.hints !47

; <label>:265                                     ; preds = %237
  %266 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %267 = extractvalue %dx.types.CBufRet.i32 %266, 0
  %268 = fptosi float %248 to i32
  %269 = fptosi float %249 to i32
  %270 = fptosi float %250 to i32
  %271 = and i32 %247, 31
  %272 = ashr i32 %268, %271
  %273 = ashr i32 %269, %271
  %274 = ashr i32 %270, %271
  %275 = mul i32 %267, %273
  %276 = add nsw i32 %275, %272
  %277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %276, i32 0)  ; BufferLoad(srv,index,wot)
  %278 = extractvalue %dx.types.ResRet.i32 %277, 0
  %279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %276, i32 4)  ; BufferLoad(srv,index,wot)
  %280 = extractvalue %dx.types.ResRet.i32 %279, 0
  %281 = icmp slt i32 %274, %278
  %282 = icmp sgt i32 %274, %280
  %283 = or i1 %281, %282
  br i1 %283, label %858, label %284, !dx.controlflow.hints !48

; <label>:284                                     ; preds = %265
  %285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %276, i32 8)  ; BufferLoad(srv,index,wot)
  %286 = extractvalue %dx.types.ResRet.i32 %285, 0
  %287 = sub i32 %274, %278
  %288 = add nsw i32 %287, %286
  %289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %288, i32 undef)  ; BufferLoad(srv,index,wot)
  %290 = extractvalue %dx.types.ResRet.i32 %289, 0
  %291 = icmp eq i32 %290, -1
  br i1 %291, label %858, label %292, !dx.controlflow.hints !49

; <label>:292                                     ; preds = %284
  %293 = getelementptr inbounds [8 x i32], [8 x i32]* %30, i32 0, i32 0
  store i32 -1, i32* %293, align 4, !tbaa !50, !noalias !54
  %294 = getelementptr inbounds [8 x i32], [8 x i32]* %30, i32 0, i32 1
  store i32 -1, i32* %294, align 4, !tbaa !50, !noalias !54
  %295 = getelementptr inbounds [8 x i32], [8 x i32]* %30, i32 0, i32 2
  store i32 -1, i32* %295, align 4, !tbaa !50, !noalias !54
  %296 = getelementptr inbounds [8 x i32], [8 x i32]* %30, i32 0, i32 3
  store i32 -1, i32* %296, align 4, !tbaa !50, !noalias !54
  %297 = getelementptr inbounds [8 x i32], [8 x i32]* %30, i32 0, i32 4
  store i32 -1, i32* %297, align 4, !tbaa !50, !noalias !54
  %298 = getelementptr inbounds [8 x i32], [8 x i32]* %30, i32 0, i32 5
  store i32 -1, i32* %298, align 4, !tbaa !50, !noalias !54
  %299 = getelementptr inbounds [8 x i32], [8 x i32]* %30, i32 0, i32 6
  store i32 -1, i32* %299, align 4, !tbaa !50, !noalias !54
  %300 = getelementptr inbounds [8 x i32], [8 x i32]* %30, i32 0, i32 7
  store i32 -1, i32* %300, align 4, !tbaa !50, !noalias !54
  br label %301

; <label>:301                                     ; preds = %405, %292
  %302 = phi i32 [ -1, %292 ], [ %402, %405 ]
  %303 = phi i32 [ -1, %292 ], [ %397, %405 ]
  %304 = phi i32 [ -1, %292 ], [ %390, %405 ]
  %305 = phi i32 [ -1, %292 ], [ %385, %405 ]
  %306 = phi i32 [ -1, %292 ], [ %376, %405 ]
  %307 = phi i32 [ -1, %292 ], [ %371, %405 ]
  %308 = phi i32 [ -1, %292 ], [ %363, %405 ]
  %309 = phi i32 [ -1, %292 ], [ %356, %405 ]
  %310 = phi i32 [ %290, %292 ], [ %425, %405 ]
  %311 = phi i32 [ %247, %292 ], [ %312, %405 ]
  %312 = add nsw i32 %311, -2
  %313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %310, i32 undef)  ; BufferLoad(srv,index,wot)
  %314 = extractvalue %dx.types.ResRet.i32 %313, 0
  %315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %310, i32 undef)  ; BufferLoad(srv,index,wot)
  %316 = extractvalue %dx.types.ResRet.i32 %315, 0
  %317 = and i32 %314, 31
  %318 = shl i32 1, %317
  %319 = add i32 %318, 1
  %320 = and i32 %312, 31
  %321 = ashr i32 %268, %320
  %322 = ashr i32 %269, %320
  %323 = ashr i32 %270, %320
  %324 = and i32 %321, 3
  %325 = and i32 %322, 3
  %326 = and i32 %323, 3
  br label %327

; <label>:327                                     ; preds = %327, %301
  %328 = phi i32 [ %302, %301 ], [ %402, %327 ]
  %329 = phi i32 [ %303, %301 ], [ %397, %327 ]
  %330 = phi i32 [ %304, %301 ], [ %390, %327 ]
  %331 = phi i32 [ %305, %301 ], [ %385, %327 ]
  %332 = phi i32 [ %306, %301 ], [ %376, %327 ]
  %333 = phi i32 [ %307, %301 ], [ %371, %327 ]
  %334 = phi i32 [ %308, %301 ], [ %363, %327 ]
  %335 = phi i32 [ %309, %301 ], [ %356, %327 ]
  %336 = phi i32 [ 0, %301 ], [ %403, %327 ]
  %337 = sub i32 2, %336
  %338 = and i32 %337, 31
  %339 = lshr i32 %324, %338
  %340 = lshr i32 %325, %338
  %341 = lshr i32 %326, %338
  %342 = sub i32 %314, %336
  %343 = and i32 %342, 31
  %344 = shl i32 %339, %343
  %345 = shl i32 %340, %343
  %346 = shl i32 %341, %343
  %347 = shl i32 1, %343
  %348 = mul i32 %346, %319
  %349 = add i32 %348, %345
  %350 = mul i32 %349, %319
  %351 = add i32 %344, %316
  %352 = add i32 %351, %350
  %353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %352, i32 undef)  ; BufferLoad(srv,index,wot)
  %354 = extractvalue %dx.types.ResRet.i32 %353, 0
  %355 = icmp ne i32 %354, -1
  %356 = select i1 %355, i32 %354, i32 %335
  store i32 %356, i32* %293, align 4, !tbaa !50, !noalias !54
  %357 = add i32 %347, %316
  %358 = add i32 %357, %344
  %359 = add i32 %358, %350
  %360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %359, i32 undef)  ; BufferLoad(srv,index,wot)
  %361 = extractvalue %dx.types.ResRet.i32 %360, 0
  %362 = icmp ne i32 %361, -1
  %363 = select i1 %362, i32 %361, i32 %334
  store i32 %363, i32* %294, align 4, !tbaa !50, !noalias !54
  %364 = add i32 %345, %347
  %365 = add i32 %364, %348
  %366 = mul i32 %365, %319
  %367 = add i32 %351, %366
  %368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %367, i32 undef)  ; BufferLoad(srv,index,wot)
  %369 = extractvalue %dx.types.ResRet.i32 %368, 0
  %370 = icmp ne i32 %369, -1
  %371 = select i1 %370, i32 %369, i32 %333
  store i32 %371, i32* %295, align 4, !tbaa !50, !noalias !54
  %372 = add i32 %358, %366
  %373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %372, i32 undef)  ; BufferLoad(srv,index,wot)
  %374 = extractvalue %dx.types.ResRet.i32 %373, 0
  %375 = icmp ne i32 %374, -1
  %376 = select i1 %375, i32 %374, i32 %332
  store i32 %376, i32* %296, align 4, !tbaa !50, !noalias !54
  %377 = add i32 %346, %347
  %378 = mul i32 %377, %319
  %379 = add i32 %378, %345
  %380 = mul i32 %379, %319
  %381 = add i32 %351, %380
  %382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %381, i32 undef)  ; BufferLoad(srv,index,wot)
  %383 = extractvalue %dx.types.ResRet.i32 %382, 0
  %384 = icmp ne i32 %383, -1
  %385 = select i1 %384, i32 %383, i32 %331
  store i32 %385, i32* %297, align 4, !tbaa !50, !noalias !54
  %386 = add i32 %358, %380
  %387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %386, i32 undef)  ; BufferLoad(srv,index,wot)
  %388 = extractvalue %dx.types.ResRet.i32 %387, 0
  %389 = icmp ne i32 %388, -1
  %390 = select i1 %389, i32 %388, i32 %330
  store i32 %390, i32* %298, align 4, !tbaa !50, !noalias !54
  %391 = add i32 %364, %378
  %392 = mul i32 %391, %319
  %393 = add i32 %351, %392
  %394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %393, i32 undef)  ; BufferLoad(srv,index,wot)
  %395 = extractvalue %dx.types.ResRet.i32 %394, 0
  %396 = icmp ne i32 %395, -1
  %397 = select i1 %396, i32 %395, i32 %329
  store i32 %397, i32* %299, align 4, !tbaa !50, !noalias !54
  %398 = add i32 %358, %392
  %399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %398, i32 undef)  ; BufferLoad(srv,index,wot)
  %400 = extractvalue %dx.types.ResRet.i32 %399, 0
  %401 = icmp ne i32 %400, -1
  %402 = select i1 %401, i32 %400, i32 %328
  store i32 %402, i32* %300, align 4, !tbaa !50, !noalias !54
  %403 = add i32 %336, 1
  %404 = icmp ugt i32 %403, %314
  br i1 %404, label %405, label %327

; <label>:405                                     ; preds = %327
  %406 = shl nuw nsw i32 %326, 4
  %407 = shl nuw nsw i32 %325, 2
  %408 = lshr i32 %326, 1
  %409 = and i32 %406, 16
  %410 = or i32 %407, %324
  %411 = or i32 %410, %409
  %412 = shl i32 1, %411
  %413 = shl nuw nsw i32 %408, 2
  %414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %310, i32 %413)  ; BufferLoad(srv,index,wot)
  %415 = extractvalue %dx.types.ResRet.i32 %414, 0
  %416 = and i32 %415, %412
  %417 = icmp eq i32 %416, 0
  %418 = add i32 %412, -1
  %419 = and i32 %415, %418
  %420 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %419)  ; Countbits(value)
  %421 = or i32 %413, 8
  %422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %310, i32 %421)  ; BufferLoad(srv,index,wot)
  %423 = extractvalue %dx.types.ResRet.i32 %422, 0
  %424 = add i32 %423, %420
  %425 = select i1 %417, i32 -1, i32 %424
  %426 = icmp eq i32 %425, -1
  br i1 %426, label %427, label %301

; <label>:427                                     ; preds = %405
  br label %428

; <label>:428                                     ; preds = %714, %427
  %429 = phi i32 [ %716, %714 ], [ %356, %427 ]
  %430 = phi float [ %711, %714 ], [ 0.000000e+00, %427 ]
  %431 = phi i32 [ %712, %714 ], [ 0, %427 ]
  %432 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %433 = extractvalue %dx.types.ResRet.f32 %432, 0
  %434 = extractvalue %dx.types.ResRet.f32 %432, 1
  %435 = extractvalue %dx.types.ResRet.f32 %432, 2
  %436 = extractvalue %dx.types.ResRet.f32 %432, 3
  %437 = fsub fast float %185, %433
  %438 = fsub fast float %190, %434
  %439 = fsub fast float %195, %435
  %440 = fmul fast float %437, %436
  %441 = fmul fast float %438, %436
  %442 = fmul fast float %439, %436
  %443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %444 = extractvalue %dx.types.ResRet.i32 %443, 0
  %445 = call float @dx.op.unary.f32(i32 6, float %440)  ; FAbs(value)
  %446 = call float @dx.op.unary.f32(i32 6, float %441)  ; FAbs(value)
  %447 = fsub fast float 1.000000e+00, %445
  %448 = fsub fast float 1.000000e+00, %446
  %449 = call float @dx.op.unary.f32(i32 7, float %447)  ; Saturate(value)
  %450 = call float @dx.op.unary.f32(i32 7, float %448)  ; Saturate(value)
  %451 = fmul fast float %450, %449
  %452 = mul i32 %444, 29
  %453 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %452, i32 undef)  ; BufferLoad(srv,index,wot)
  %454 = extractvalue %dx.types.ResRet.f32 %453, 0
  %455 = extractvalue %dx.types.ResRet.f32 %453, 1
  %456 = extractvalue %dx.types.ResRet.f32 %453, 2
  %457 = extractvalue %dx.types.ResRet.f32 %453, 3
  %458 = add i32 %452, 1
  %459 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %458, i32 undef)  ; BufferLoad(srv,index,wot)
  %460 = extractvalue %dx.types.ResRet.f32 %459, 0
  %461 = extractvalue %dx.types.ResRet.f32 %459, 1
  %462 = extractvalue %dx.types.ResRet.f32 %459, 2
  %463 = extractvalue %dx.types.ResRet.f32 %459, 3
  %464 = add i32 %452, 2
  %465 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %464, i32 undef)  ; BufferLoad(srv,index,wot)
  %466 = extractvalue %dx.types.ResRet.f32 %465, 0
  %467 = extractvalue %dx.types.ResRet.f32 %465, 1
  %468 = extractvalue %dx.types.ResRet.f32 %465, 2
  %469 = extractvalue %dx.types.ResRet.f32 %465, 3
  %470 = add i32 %452, 3
  %471 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %470, i32 undef)  ; BufferLoad(srv,index,wot)
  %472 = extractvalue %dx.types.ResRet.f32 %471, 0
  %473 = extractvalue %dx.types.ResRet.f32 %471, 1
  %474 = extractvalue %dx.types.ResRet.f32 %471, 2
  %475 = extractvalue %dx.types.ResRet.f32 %471, 3
  %476 = add i32 %452, 4
  %477 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %476, i32 undef)  ; BufferLoad(srv,index,wot)
  %478 = extractvalue %dx.types.ResRet.f32 %477, 0
  %479 = extractvalue %dx.types.ResRet.f32 %477, 1
  %480 = extractvalue %dx.types.ResRet.f32 %477, 2
  %481 = extractvalue %dx.types.ResRet.f32 %477, 3
  %482 = add i32 %452, 5
  %483 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %482, i32 undef)  ; BufferLoad(srv,index,wot)
  %484 = extractvalue %dx.types.ResRet.f32 %483, 0
  %485 = extractvalue %dx.types.ResRet.f32 %483, 1
  %486 = extractvalue %dx.types.ResRet.f32 %483, 2
  %487 = extractvalue %dx.types.ResRet.f32 %483, 3
  %488 = add i32 %452, 6
  %489 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %488, i32 undef)  ; BufferLoad(srv,index,wot)
  %490 = extractvalue %dx.types.ResRet.f32 %489, 0
  %491 = extractvalue %dx.types.ResRet.f32 %489, 1
  %492 = extractvalue %dx.types.ResRet.f32 %489, 2
  %493 = extractvalue %dx.types.ResRet.f32 %489, 3
  %494 = add i32 %452, 7
  %495 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %494, i32 undef)  ; BufferLoad(srv,index,wot)
  %496 = extractvalue %dx.types.ResRet.f32 %495, 0
  %497 = extractvalue %dx.types.ResRet.f32 %495, 1
  %498 = extractvalue %dx.types.ResRet.f32 %495, 2
  %499 = extractvalue %dx.types.ResRet.f32 %495, 3
  %500 = fmul fast float %454, %440
  %501 = fmul fast float %466, %441
  %502 = fadd fast float %501, %500
  %503 = fmul fast float %478, %442
  %504 = fadd fast float %502, %503
  %505 = fmul fast float %455, %440
  %506 = fmul fast float %467, %441
  %507 = fadd fast float %506, %505
  %508 = fmul fast float %479, %442
  %509 = fadd fast float %507, %508
  %510 = fmul fast float %456, %440
  %511 = fmul fast float %468, %441
  %512 = fadd fast float %511, %510
  %513 = fmul fast float %480, %442
  %514 = fadd fast float %512, %513
  %515 = fmul fast float %457, %440
  %516 = fmul fast float %469, %441
  %517 = fadd fast float %516, %515
  %518 = fmul fast float %481, %442
  %519 = fadd fast float %517, %518
  %520 = fmul fast float %460, %440
  %521 = fmul fast float %472, %441
  %522 = fadd fast float %521, %520
  %523 = fmul fast float %484, %442
  %524 = fadd fast float %522, %523
  %525 = fmul fast float %461, %440
  %526 = fmul fast float %473, %441
  %527 = fadd fast float %526, %525
  %528 = fmul fast float %485, %442
  %529 = fadd fast float %527, %528
  %530 = fmul fast float %462, %440
  %531 = fmul fast float %474, %441
  %532 = fadd fast float %531, %530
  %533 = fmul fast float %486, %442
  %534 = fadd fast float %532, %533
  %535 = fmul fast float %463, %440
  %536 = fmul fast float %475, %441
  %537 = fadd fast float %536, %535
  %538 = fmul fast float %487, %442
  %539 = fadd fast float %537, %538
  %540 = fadd fast float %504, %490
  %541 = fadd fast float %509, %491
  %542 = fadd fast float %514, %492
  %543 = fadd fast float %519, %493
  %544 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %540)  ; FMax(a,b)
  %545 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %541)  ; FMax(a,b)
  %546 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %542)  ; FMax(a,b)
  %547 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %543)  ; FMax(a,b)
  %548 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %540)  ; FMin(a,b)
  %549 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %541)  ; FMin(a,b)
  %550 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %542)  ; FMin(a,b)
  %551 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %543)  ; FMin(a,b)
  %552 = fmul fast float %548, 0x3F847AE140000000
  %553 = fmul fast float %549, 0x3F847AE140000000
  %554 = fmul fast float %550, 0x3F847AE140000000
  %555 = fmul fast float %551, 0x3F847AE140000000
  %556 = fadd fast float %552, %544
  %557 = fadd fast float %553, %545
  %558 = fadd fast float %554, %546
  %559 = fadd fast float %555, %547
  %560 = fadd fast float %524, %496
  %561 = fadd fast float %529, %497
  %562 = fadd fast float %534, %498
  %563 = fadd fast float %539, %499
  %564 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %560)  ; FMax(a,b)
  %565 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %561)  ; FMax(a,b)
  %566 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %562)  ; FMax(a,b)
  %567 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %563)  ; FMax(a,b)
  %568 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %560)  ; FMin(a,b)
  %569 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %561)  ; FMin(a,b)
  %570 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %562)  ; FMin(a,b)
  %571 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %563)  ; FMin(a,b)
  %572 = fmul fast float %568, 0x3F847AE140000000
  %573 = fmul fast float %569, 0x3F847AE140000000
  %574 = fmul fast float %570, 0x3F847AE140000000
  %575 = fmul fast float %571, 0x3F847AE140000000
  %576 = fadd fast float %572, %564
  %577 = fadd fast float %573, %565
  %578 = fadd fast float %574, %566
  %579 = fadd fast float %575, %567
  br label %580

; <label>:580                                     ; preds = %580, %428
  %581 = phi i32 [ 0, %428 ], [ %601, %580 ]
  %582 = add i32 %452, 8
  %583 = shl i32 %581, 1
  %584 = add i32 %582, %583
  %585 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %584, i32 undef)  ; BufferLoad(srv,index,wot)
  %586 = extractvalue %dx.types.ResRet.f32 %585, 0
  %587 = extractvalue %dx.types.ResRet.f32 %585, 1
  %588 = extractvalue %dx.types.ResRet.f32 %585, 2
  %589 = extractvalue %dx.types.ResRet.f32 %585, 3
  %590 = add i32 %452, 9
  %591 = add i32 %590, %583
  %592 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %591, i32 undef)  ; BufferLoad(srv,index,wot)
  %593 = extractvalue %dx.types.ResRet.f32 %592, 0
  %594 = extractvalue %dx.types.ResRet.f32 %592, 1
  %595 = extractvalue %dx.types.ResRet.f32 %592, 2
  %596 = extractvalue %dx.types.ResRet.f32 %592, 3
  %597 = call float @dx.op.dot4.f32(i32 56, float %586, float %587, float %588, float %589, float %556, float %557, float %558, float %559)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %598 = call float @dx.op.dot4.f32(i32 56, float %593, float %594, float %595, float %596, float %576, float %577, float %578, float %579)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %599 = fadd fast float %598, %597
  %600 = getelementptr inbounds [8 x float], [8 x float]* %29, i32 0, i32 %581
  store float %599, float* %600, align 4, !tbaa !60, !noalias !54
  %601 = add nuw nsw i32 %581, 1
  %602 = icmp eq i32 %601, 8
  br i1 %602, label %603, label %580

; <label>:603                                     ; preds = %580
  %604 = call float @dx.op.unary.f32(i32 6, float %442)  ; FAbs(value)
  %605 = fsub fast float 1.000000e+00, %604
  %606 = call float @dx.op.unary.f32(i32 7, float %605)  ; Saturate(value)
  %607 = fmul fast float %451, %606
  %608 = add i32 %452, 24
  %609 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %608, i32 undef)  ; BufferLoad(srv,index,wot)
  %610 = extractvalue %dx.types.ResRet.f32 %609, 0
  %611 = extractvalue %dx.types.ResRet.f32 %609, 1
  %612 = extractvalue %dx.types.ResRet.f32 %609, 2
  %613 = extractvalue %dx.types.ResRet.f32 %609, 3
  %614 = add i32 %452, 25
  %615 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %614, i32 undef)  ; BufferLoad(srv,index,wot)
  %616 = extractvalue %dx.types.ResRet.f32 %615, 0
  %617 = extractvalue %dx.types.ResRet.f32 %615, 1
  %618 = extractvalue %dx.types.ResRet.f32 %615, 2
  %619 = extractvalue %dx.types.ResRet.f32 %615, 3
  %620 = getelementptr inbounds [8 x float], [8 x float]* %29, i32 0, i32 0
  %621 = load float, float* %620, align 4, !tbaa !60, !noalias !54
  %622 = fadd fast float %621, %610
  %623 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %622)  ; FMax(a,b)
  %624 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %622)  ; FMin(a,b)
  %625 = fmul fast float %624, 0x3F847AE140000000
  %626 = fadd fast float %625, %623
  store float %626, float* %620, align 4, !tbaa !60, !noalias !54
  %627 = getelementptr inbounds [8 x float], [8 x float]* %29, i32 0, i32 1
  %628 = load float, float* %627, align 4, !tbaa !60, !noalias !54
  %629 = fadd fast float %628, %611
  %630 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %629)  ; FMax(a,b)
  %631 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %629)  ; FMin(a,b)
  %632 = fmul fast float %631, 0x3F847AE140000000
  %633 = fadd fast float %632, %630
  store float %633, float* %627, align 4, !tbaa !60, !noalias !54
  %634 = getelementptr inbounds [8 x float], [8 x float]* %29, i32 0, i32 2
  %635 = load float, float* %634, align 4, !tbaa !60, !noalias !54
  %636 = fadd fast float %635, %612
  %637 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %636)  ; FMax(a,b)
  %638 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %636)  ; FMin(a,b)
  %639 = fmul fast float %638, 0x3F847AE140000000
  %640 = fadd fast float %639, %637
  store float %640, float* %634, align 4, !tbaa !60, !noalias !54
  %641 = getelementptr inbounds [8 x float], [8 x float]* %29, i32 0, i32 3
  %642 = load float, float* %641, align 4, !tbaa !60, !noalias !54
  %643 = fadd fast float %642, %613
  %644 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %643)  ; FMax(a,b)
  %645 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %643)  ; FMin(a,b)
  %646 = fmul fast float %645, 0x3F847AE140000000
  %647 = fadd fast float %646, %644
  store float %647, float* %641, align 4, !tbaa !60, !noalias !54
  %648 = getelementptr inbounds [8 x float], [8 x float]* %29, i32 0, i32 4
  %649 = load float, float* %648, align 4, !tbaa !60, !noalias !54
  %650 = fadd fast float %649, %616
  %651 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %650)  ; FMax(a,b)
  %652 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %650)  ; FMin(a,b)
  %653 = fmul fast float %652, 0x3F847AE140000000
  %654 = fadd fast float %653, %651
  store float %654, float* %648, align 4, !tbaa !60, !noalias !54
  %655 = getelementptr inbounds [8 x float], [8 x float]* %29, i32 0, i32 5
  %656 = load float, float* %655, align 4, !tbaa !60, !noalias !54
  %657 = fadd fast float %656, %617
  %658 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %657)  ; FMax(a,b)
  %659 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %657)  ; FMin(a,b)
  %660 = fmul fast float %659, 0x3F847AE140000000
  %661 = fadd fast float %660, %658
  store float %661, float* %655, align 4, !tbaa !60, !noalias !54
  %662 = getelementptr inbounds [8 x float], [8 x float]* %29, i32 0, i32 6
  %663 = load float, float* %662, align 4, !tbaa !60, !noalias !54
  %664 = fadd fast float %663, %618
  %665 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %664)  ; FMax(a,b)
  %666 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %664)  ; FMin(a,b)
  %667 = fmul fast float %666, 0x3F847AE140000000
  %668 = fadd fast float %667, %665
  store float %668, float* %662, align 4, !tbaa !60, !noalias !54
  %669 = getelementptr inbounds [8 x float], [8 x float]* %29, i32 0, i32 7
  %670 = load float, float* %669, align 4, !tbaa !60, !noalias !54
  %671 = fadd fast float %670, %619
  %672 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %671)  ; FMax(a,b)
  %673 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %671)  ; FMin(a,b)
  %674 = fmul fast float %673, 0x3F847AE140000000
  %675 = fadd fast float %674, %672
  store float %675, float* %669, align 4, !tbaa !60, !noalias !54
  %676 = add i32 %452, 26
  %677 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %676, i32 undef)  ; BufferLoad(srv,index,wot)
  %678 = extractvalue %dx.types.ResRet.f32 %677, 0
  %679 = extractvalue %dx.types.ResRet.f32 %677, 1
  %680 = extractvalue %dx.types.ResRet.f32 %677, 2
  %681 = extractvalue %dx.types.ResRet.f32 %677, 3
  %682 = add i32 %452, 27
  %683 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %682, i32 undef)  ; BufferLoad(srv,index,wot)
  %684 = extractvalue %dx.types.ResRet.f32 %683, 0
  %685 = extractvalue %dx.types.ResRet.f32 %683, 1
  %686 = extractvalue %dx.types.ResRet.f32 %683, 2
  %687 = extractvalue %dx.types.ResRet.f32 %683, 3
  %688 = fmul fast float %626, %678
  %689 = fmul fast float %633, %679
  %690 = fadd fast float %689, %688
  %691 = fmul fast float %640, %680
  %692 = fadd fast float %690, %691
  %693 = fmul fast float %647, %681
  %694 = fadd fast float %692, %693
  %695 = fmul fast float %654, %684
  %696 = fadd fast float %694, %695
  %697 = fmul fast float %661, %685
  %698 = fadd fast float %696, %697
  %699 = fmul fast float %668, %686
  %700 = fadd fast float %698, %699
  %701 = fmul fast float %675, %687
  %702 = fadd fast float %700, %701
  %703 = add i32 %452, 28
  %704 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %703, i32 undef)  ; BufferLoad(srv,index,wot)
  %705 = extractvalue %dx.types.ResRet.f32 %704, 0
  %706 = fadd fast float %702, %705
  %707 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %706)  ; FMax(a,b)
  %708 = fmul fast float %607, %707
  %709 = call float @dx.op.unary.f32(i32 7, float %708)  ; Saturate(value)
  %710 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 %431
  store float %709, float* %710, align 4, !tbaa !60, !noalias !54
  %711 = fadd fast float %709, %430
  %712 = add nuw nsw i32 %431, 1
  %713 = icmp eq i32 %712, 8
  br i1 %713, label %717, label %714

; <label>:714                                     ; preds = %603
  %715 = getelementptr inbounds [8 x i32], [8 x i32]* %30, i32 0, i32 %712
  %716 = load i32, i32* %715, align 4, !tbaa !50, !noalias !54
  br label %428

; <label>:717                                     ; preds = %603
  %718 = fcmp fast ugt float %711, 0x3EE4F8B580000000
  br i1 %718, label %719, label %858, !dx.controlflow.hints !62

; <label>:719                                     ; preds = %717
  %720 = fcmp fast ogt float %711, 0x3EE4F8B580000000
  %721 = fdiv fast float 1.000000e+00, %711
  %722 = select i1 %720, float %721, float 1.000000e+00
  %723 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 0
  %724 = load float, float* %723, align 4, !tbaa !60, !noalias !54
  %725 = fmul fast float %724, %722
  store float %725, float* %723, align 4, !tbaa !60, !noalias !54
  %726 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 1
  %727 = load float, float* %726, align 4, !tbaa !60, !noalias !54
  %728 = fmul fast float %727, %722
  store float %728, float* %726, align 4, !tbaa !60, !noalias !54
  %729 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 2
  %730 = load float, float* %729, align 4, !tbaa !60, !noalias !54
  %731 = fmul fast float %730, %722
  store float %731, float* %729, align 4, !tbaa !60, !noalias !54
  %732 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 3
  %733 = load float, float* %732, align 4, !tbaa !60, !noalias !54
  %734 = fmul fast float %733, %722
  store float %734, float* %732, align 4, !tbaa !60, !noalias !54
  %735 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 4
  %736 = load float, float* %735, align 4, !tbaa !60, !noalias !54
  %737 = fmul fast float %736, %722
  store float %737, float* %735, align 4, !tbaa !60, !noalias !54
  %738 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 5
  %739 = load float, float* %738, align 4, !tbaa !60, !noalias !54
  %740 = fmul fast float %739, %722
  store float %740, float* %738, align 4, !tbaa !60, !noalias !54
  %741 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 6
  %742 = load float, float* %741, align 4, !tbaa !60, !noalias !54
  %743 = fmul fast float %742, %722
  store float %743, float* %741, align 4, !tbaa !60, !noalias !54
  %744 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 7
  %745 = load float, float* %744, align 4, !tbaa !60, !noalias !54
  %746 = fmul fast float %745, %722
  store float %746, float* %744, align 4, !tbaa !60, !noalias !54
  br label %747

; <label>:747                                     ; preds = %852, %719
  %748 = phi float [ %856, %852 ], [ %725, %719 ]
  %749 = phi i32 [ %854, %852 ], [ %356, %719 ]
  %750 = phi float [ %831, %852 ], [ 0.000000e+00, %719 ]
  %751 = phi float [ %829, %852 ], [ 0.000000e+00, %719 ]
  %752 = phi float [ %827, %852 ], [ 0.000000e+00, %719 ]
  %753 = phi float [ %823, %852 ], [ 0.000000e+00, %719 ]
  %754 = phi float [ %840, %852 ], [ 0.000000e+00, %719 ]
  %755 = phi float [ %838, %852 ], [ 0.000000e+00, %719 ]
  %756 = phi float [ %836, %852 ], [ 0.000000e+00, %719 ]
  %757 = phi float [ %833, %852 ], [ 0.000000e+00, %719 ]
  %758 = phi float [ %849, %852 ], [ 0.000000e+00, %719 ]
  %759 = phi float [ %847, %852 ], [ 0.000000e+00, %719 ]
  %760 = phi float [ %845, %852 ], [ 0.000000e+00, %719 ]
  %761 = phi float [ %842, %852 ], [ 0.000000e+00, %719 ]
  %762 = phi i32 [ %850, %852 ], [ 0, %719 ]
  %763 = shl i32 %749, 5
  %764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %763, i32 undef)  ; BufferLoad(srv,index,wot)
  %765 = extractvalue %dx.types.ResRet.i32 %764, 0
  %766 = extractvalue %dx.types.ResRet.i32 %764, 1
  %767 = extractvalue %dx.types.ResRet.i32 %764, 3
  %768 = or i32 %763, 16
  %769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %768, i32 undef)  ; BufferLoad(srv,index,wot)
  %770 = extractvalue %dx.types.ResRet.i32 %769, 1
  %771 = shl i32 %765, 4
  %772 = and i32 %771, 32752
  %773 = call float @dx.op.legacyF16ToF32(i32 131, i32 %772)  ; LegacyF16ToF32(value)
  %774 = lshr i32 %765, 7
  %775 = and i32 %774, 32752
  %776 = call float @dx.op.legacyF16ToF32(i32 131, i32 %775)  ; LegacyF16ToF32(value)
  %777 = lshr i32 %765, 22
  %778 = shl nuw nsw i32 %777, 5
  %779 = call float @dx.op.legacyF16ToF32(i32 131, i32 %778)  ; LegacyF16ToF32(value)
  %780 = and i32 %766, 255
  %781 = uitofp i32 %780 to float
  %782 = fmul fast float %781, 0x3F80204080000000
  %783 = fadd fast float %782, -1.000000e+00
  %784 = lshr i32 %766, 8
  %785 = and i32 %784, 255
  %786 = uitofp i32 %785 to float
  %787 = fmul fast float %786, 0x3F80204080000000
  %788 = fadd fast float %787, -1.000000e+00
  %789 = lshr i32 %766, 16
  %790 = and i32 %789, 255
  %791 = uitofp i32 %790 to float
  %792 = fmul fast float %791, 0x3F80204080000000
  %793 = fadd fast float %792, -1.000000e+00
  %794 = and i32 %767, 255
  %795 = uitofp i32 %794 to float
  %796 = fmul fast float %795, 0x3F80204080000000
  %797 = fadd fast float %796, -1.000000e+00
  %798 = lshr i32 %767, 8
  %799 = and i32 %798, 255
  %800 = uitofp i32 %799 to float
  %801 = fmul fast float %800, 0x3F80204080000000
  %802 = fadd fast float %801, -1.000000e+00
  %803 = lshr i32 %767, 16
  %804 = and i32 %803, 255
  %805 = uitofp i32 %804 to float
  %806 = fmul fast float %805, 0x3F80204080000000
  %807 = fadd fast float %806, -1.000000e+00
  %808 = and i32 %770, 255
  %809 = uitofp i32 %808 to float
  %810 = fmul fast float %809, 0x3F80204080000000
  %811 = fadd fast float %810, -1.000000e+00
  %812 = lshr i32 %770, 8
  %813 = and i32 %812, 255
  %814 = uitofp i32 %813 to float
  %815 = fmul fast float %814, 0x3F80204080000000
  %816 = fadd fast float %815, -1.000000e+00
  %817 = lshr i32 %770, 16
  %818 = and i32 %817, 255
  %819 = uitofp i32 %818 to float
  %820 = fmul fast float %819, 0x3F80204080000000
  %821 = fadd fast float %820, -1.000000e+00
  %822 = fmul fast float %773, %748
  %823 = fadd fast float %822, %753
  %824 = fmul fast float %748, 0x3FFBB67AE0000000
  %825 = fmul fast float %824, %773
  %826 = fmul fast float %825, %783
  %827 = fadd fast float %826, %752
  %828 = fmul fast float %825, %788
  %829 = fadd fast float %828, %751
  %830 = fmul fast float %825, %793
  %831 = fadd fast float %830, %750
  %832 = fmul fast float %776, %748
  %833 = fadd fast float %832, %757
  %834 = fmul fast float %824, %776
  %835 = fmul fast float %834, %797
  %836 = fadd fast float %835, %756
  %837 = fmul fast float %834, %802
  %838 = fadd fast float %837, %755
  %839 = fmul fast float %834, %807
  %840 = fadd fast float %839, %754
  %841 = fmul fast float %779, %748
  %842 = fadd fast float %841, %761
  %843 = fmul fast float %824, %779
  %844 = fmul fast float %843, %811
  %845 = fadd fast float %844, %760
  %846 = fmul fast float %843, %816
  %847 = fadd fast float %846, %759
  %848 = fmul fast float %843, %821
  %849 = fadd fast float %848, %758
  %850 = add nuw nsw i32 %762, 1
  %851 = icmp eq i32 %850, 8
  br i1 %851, label %857, label %852

; <label>:852                                     ; preds = %747
  %853 = getelementptr inbounds [8 x i32], [8 x i32]* %30, i32 0, i32 %850
  %854 = load i32, i32* %853, align 4, !tbaa !50, !noalias !54
  %855 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 %850
  %856 = load float, float* %855, align 4, !tbaa !60, !noalias !54
  br label %747

; <label>:857                                     ; preds = %747
  br label %858

; <label>:858                                     ; preds = %857, %717, %284, %265, %237
  %859 = phi float [ 0.000000e+00, %237 ], [ 0.000000e+00, %265 ], [ 0.000000e+00, %284 ], [ 0.000000e+00, %717 ], [ %831, %857 ]
  %860 = phi float [ 0.000000e+00, %237 ], [ 0.000000e+00, %265 ], [ 0.000000e+00, %284 ], [ 0.000000e+00, %717 ], [ %829, %857 ]
  %861 = phi float [ 0.000000e+00, %237 ], [ 0.000000e+00, %265 ], [ 0.000000e+00, %284 ], [ 0.000000e+00, %717 ], [ %827, %857 ]
  %862 = phi float [ 0.000000e+00, %237 ], [ 0.000000e+00, %265 ], [ 0.000000e+00, %284 ], [ 0.000000e+00, %717 ], [ %823, %857 ]
  %863 = phi float [ 0.000000e+00, %237 ], [ 0.000000e+00, %265 ], [ 0.000000e+00, %284 ], [ 0.000000e+00, %717 ], [ %840, %857 ]
  %864 = phi float [ 0.000000e+00, %237 ], [ 0.000000e+00, %265 ], [ 0.000000e+00, %284 ], [ 0.000000e+00, %717 ], [ %838, %857 ]
  %865 = phi float [ 0.000000e+00, %237 ], [ 0.000000e+00, %265 ], [ 0.000000e+00, %284 ], [ 0.000000e+00, %717 ], [ %836, %857 ]
  %866 = phi float [ 0.000000e+00, %237 ], [ 0.000000e+00, %265 ], [ 0.000000e+00, %284 ], [ 0.000000e+00, %717 ], [ %833, %857 ]
  %867 = phi float [ 0.000000e+00, %237 ], [ 0.000000e+00, %265 ], [ 0.000000e+00, %284 ], [ 0.000000e+00, %717 ], [ %849, %857 ]
  %868 = phi float [ 0.000000e+00, %237 ], [ 0.000000e+00, %265 ], [ 0.000000e+00, %284 ], [ 0.000000e+00, %717 ], [ %847, %857 ]
  %869 = phi float [ 0.000000e+00, %237 ], [ 0.000000e+00, %265 ], [ 0.000000e+00, %284 ], [ 0.000000e+00, %717 ], [ %845, %857 ]
  %870 = phi float [ 0.000000e+00, %237 ], [ 0.000000e+00, %265 ], [ 0.000000e+00, %284 ], [ 0.000000e+00, %717 ], [ %842, %857 ]
  %871 = phi i1 [ false, %237 ], [ false, %265 ], [ false, %284 ], [ false, %717 ], [ true, %857 ]
  br i1 %871, label %907, label %872, !dx.controlflow.hints !63

; <label>:872                                     ; preds = %858
  %873 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %874 = extractvalue %dx.types.ResRet.i32 %873, 1
  %875 = extractvalue %dx.types.ResRet.i32 %873, 2
  %876 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %877 = extractvalue %dx.types.ResRet.i32 %876, 0
  %878 = extractvalue %dx.types.ResRet.i32 %876, 1
  %879 = extractvalue %dx.types.ResRet.i32 %876, 2
  %880 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %881 = extractvalue %dx.types.ResRet.i32 %880, 0
  %882 = extractvalue %dx.types.ResRet.i32 %880, 1
  %883 = and i32 %881, 65535
  %884 = call float @dx.op.legacyF16ToF32(i32 131, i32 %883)  ; LegacyF16ToF32(value)
  %885 = lshr i32 %881, 16
  %886 = call float @dx.op.legacyF16ToF32(i32 131, i32 %885)  ; LegacyF16ToF32(value)
  %887 = and i32 %882, 65535
  %888 = call float @dx.op.legacyF16ToF32(i32 131, i32 %887)  ; LegacyF16ToF32(value)
  %889 = lshr i32 %882, 16
  %890 = call float @dx.op.legacyF16ToF32(i32 131, i32 %889)  ; LegacyF16ToF32(value)
  %891 = lshr i32 %877, 16
  %892 = call float @dx.op.legacyF16ToF32(i32 131, i32 %891)  ; LegacyF16ToF32(value)
  %893 = and i32 %878, 65535
  %894 = call float @dx.op.legacyF16ToF32(i32 131, i32 %893)  ; LegacyF16ToF32(value)
  %895 = lshr i32 %878, 16
  %896 = call float @dx.op.legacyF16ToF32(i32 131, i32 %895)  ; LegacyF16ToF32(value)
  %897 = and i32 %879, 65535
  %898 = call float @dx.op.legacyF16ToF32(i32 131, i32 %897)  ; LegacyF16ToF32(value)
  %899 = and i32 %874, 65535
  %900 = call float @dx.op.legacyF16ToF32(i32 131, i32 %899)  ; LegacyF16ToF32(value)
  %901 = lshr i32 %874, 16
  %902 = call float @dx.op.legacyF16ToF32(i32 131, i32 %901)  ; LegacyF16ToF32(value)
  %903 = and i32 %875, 65535
  %904 = call float @dx.op.legacyF16ToF32(i32 131, i32 %903)  ; LegacyF16ToF32(value)
  %905 = lshr i32 %875, 16
  %906 = call float @dx.op.legacyF16ToF32(i32 131, i32 %905)  ; LegacyF16ToF32(value)
  br label %907

; <label>:907                                     ; preds = %872, %858, %234
  %908 = phi float [ %906, %872 ], [ %867, %858 ], [ 0.000000e+00, %234 ]
  %909 = phi float [ %904, %872 ], [ %868, %858 ], [ 0.000000e+00, %234 ]
  %910 = phi float [ %902, %872 ], [ %869, %858 ], [ 0.000000e+00, %234 ]
  %911 = phi float [ %900, %872 ], [ %870, %858 ], [ 0.000000e+00, %234 ]
  %912 = phi float [ %898, %872 ], [ %863, %858 ], [ 0.000000e+00, %234 ]
  %913 = phi float [ %896, %872 ], [ %864, %858 ], [ 0.000000e+00, %234 ]
  %914 = phi float [ %894, %872 ], [ %865, %858 ], [ 0.000000e+00, %234 ]
  %915 = phi float [ %892, %872 ], [ %866, %858 ], [ 0.000000e+00, %234 ]
  %916 = phi float [ %890, %872 ], [ %859, %858 ], [ 0.000000e+00, %234 ]
  %917 = phi float [ %888, %872 ], [ %860, %858 ], [ 0.000000e+00, %234 ]
  %918 = phi float [ %886, %872 ], [ %861, %858 ], [ 0.000000e+00, %234 ]
  %919 = phi float [ %884, %872 ], [ %862, %858 ], [ 0.000000e+00, %234 ]
  %920 = fcmp fast olt float %235, 1.000000e+00
  br i1 %920, label %921, label %1566, !dx.controlflow.hints !64

; <label>:921                                     ; preds = %907
  %922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %923 = extractvalue %dx.types.CBufRet.f32 %922, 0
  %924 = extractvalue %dx.types.CBufRet.f32 %922, 1
  %925 = fsub fast float %185, %923
  %926 = fsub fast float %190, %924
  %927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %928 = extractvalue %dx.types.CBufRet.f32 %927, 0
  %929 = extractvalue %dx.types.CBufRet.f32 %927, 1
  %930 = fmul fast float %925, %928
  %931 = fmul fast float %926, %929
  %932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %933 = extractvalue %dx.types.CBufRet.f32 %932, 0
  %934 = fmul fast float %933, %930
  %935 = extractvalue %dx.types.CBufRet.f32 %932, 1
  %936 = fadd fast float %934, %935
  %937 = extractvalue %dx.types.CBufRet.f32 %932, 2
  %938 = fmul fast float %937, %931
  %939 = extractvalue %dx.types.CBufRet.f32 %932, 3
  %940 = fadd fast float %938, %939
  %941 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %22, float %936, float %940, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %942 = extractvalue %dx.types.ResRet.f32 %941, 0
  %943 = extractvalue %dx.types.ResRet.f32 %941, 1
  %944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %945 = extractvalue %dx.types.CBufRet.f32 %944, 1
  %946 = extractvalue %dx.types.CBufRet.f32 %944, 0
  %947 = fsub fast float %945, %946
  %948 = fmul fast float %947, %942
  %949 = fadd fast float %948, %946
  %950 = extractvalue %dx.types.CBufRet.f32 %944, 3
  %951 = extractvalue %dx.types.CBufRet.f32 %944, 2
  %952 = fsub fast float %950, %951
  %953 = fmul fast float %952, %943
  %954 = fadd fast float %953, %951
  %955 = fsub fast float %195, %949
  %956 = fsub fast float %954, %949
  %957 = fdiv fast float %955, %956
  %958 = call float @dx.op.unary.f32(i32 7, float %957)  ; Saturate(value)
  %959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %960 = extractvalue %dx.types.CBufRet.f32 %959, 0
  %961 = fmul fast float %960, %958
  %962 = extractvalue %dx.types.CBufRet.f32 %959, 1
  %963 = fadd fast float %961, %962
  %964 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %22, float %936, float %940, float %963, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %965 = extractvalue %dx.types.ResRet.f32 %964, 0
  %966 = extractvalue %dx.types.ResRet.f32 %964, 1
  %967 = extractvalue %dx.types.ResRet.f32 %964, 2
  %968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %969 = extractvalue %dx.types.CBufRet.f32 %968, 0
  %970 = extractvalue %dx.types.CBufRet.f32 %968, 1
  %971 = extractvalue %dx.types.CBufRet.f32 %968, 2
  %972 = fmul fast float %969, %965
  %973 = fmul fast float %970, %966
  %974 = fmul fast float %971, %967
  %975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %976 = extractvalue %dx.types.CBufRet.f32 %975, 0
  %977 = extractvalue %dx.types.CBufRet.f32 %975, 1
  %978 = extractvalue %dx.types.CBufRet.f32 %975, 2
  %979 = fadd fast float %972, %976
  %980 = fadd fast float %973, %977
  %981 = fadd fast float %974, %978
  %982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %983 = extractvalue %dx.types.CBufRet.f32 %982, 0
  %984 = fmul fast float %983, %930
  %985 = extractvalue %dx.types.CBufRet.f32 %982, 1
  %986 = fadd fast float %984, %985
  %987 = extractvalue %dx.types.CBufRet.f32 %982, 2
  %988 = fmul fast float %987, %931
  %989 = extractvalue %dx.types.CBufRet.f32 %982, 3
  %990 = fadd fast float %988, %989
  %991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %992 = extractvalue %dx.types.CBufRet.f32 %991, 0
  %993 = extractvalue %dx.types.CBufRet.f32 %991, 1
  %994 = extractvalue %dx.types.CBufRet.f32 %991, 2
  %995 = extractvalue %dx.types.CBufRet.f32 %991, 3
  %996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %997 = extractvalue %dx.types.CBufRet.f32 %996, 0
  %998 = extractvalue %dx.types.CBufRet.f32 %996, 1
  %999 = extractvalue %dx.types.CBufRet.f32 %996, 2
  %1000 = extractvalue %dx.types.CBufRet.f32 %996, 3
  %1001 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %22, float %986, float %990, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1002 = extractvalue %dx.types.ResRet.f32 %1001, 0
  %1003 = extractvalue %dx.types.ResRet.f32 %1001, 1
  %1004 = extractvalue %dx.types.ResRet.f32 %1001, 2
  %1005 = extractvalue %dx.types.ResRet.f32 %1001, 3
  %1006 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %22, float %986, float %990, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1007 = extractvalue %dx.types.ResRet.f32 %1006, 0
  %1008 = extractvalue %dx.types.ResRet.f32 %1006, 1
  %1009 = extractvalue %dx.types.ResRet.f32 %1006, 2
  %1010 = extractvalue %dx.types.ResRet.f32 %1006, 3
  %1011 = fmul fast float %1002, %979
  %1012 = fmul fast float %1007, %979
  %1013 = fmul fast float %1009, %979
  %1014 = fmul fast float %1005, %979
  %1015 = fadd fast float %1011, %992
  %1016 = fadd fast float %1012, %993
  %1017 = fadd fast float %1013, %994
  %1018 = fadd fast float %1014, %995
  %1019 = fmul fast float %1003, %979
  %1020 = fmul fast float %1008, %979
  %1021 = fadd fast float %1019, %997
  %1022 = fadd fast float %1020, %998
  %1023 = fmul fast float %1004, %979
  %1024 = fmul fast float %1010, %979
  %1025 = fadd fast float %1023, %999
  %1026 = fadd fast float %1024, %1000
  %1027 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %22, float %986, float %990, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1028 = extractvalue %dx.types.ResRet.f32 %1027, 0
  %1029 = extractvalue %dx.types.ResRet.f32 %1027, 1
  %1030 = extractvalue %dx.types.ResRet.f32 %1027, 2
  %1031 = extractvalue %dx.types.ResRet.f32 %1027, 3
  %1032 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %22, float %986, float %990, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1033 = extractvalue %dx.types.ResRet.f32 %1032, 0
  %1034 = extractvalue %dx.types.ResRet.f32 %1032, 1
  %1035 = extractvalue %dx.types.ResRet.f32 %1032, 2
  %1036 = extractvalue %dx.types.ResRet.f32 %1032, 3
  %1037 = fmul fast float %1028, %980
  %1038 = fmul fast float %1033, %980
  %1039 = fmul fast float %1035, %980
  %1040 = fmul fast float %1031, %980
  %1041 = fadd fast float %1015, %1037
  %1042 = fadd fast float %1016, %1038
  %1043 = fadd fast float %1017, %1039
  %1044 = fadd fast float %1018, %1040
  %1045 = fmul fast float %1029, %980
  %1046 = fmul fast float %1034, %980
  %1047 = fadd fast float %1021, %1045
  %1048 = fadd fast float %1022, %1046
  %1049 = fmul fast float %1030, %980
  %1050 = fmul fast float %1036, %980
  %1051 = fadd fast float %1025, %1049
  %1052 = fadd fast float %1026, %1050
  %1053 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %22, float %986, float %990, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1054 = extractvalue %dx.types.ResRet.f32 %1053, 0
  %1055 = extractvalue %dx.types.ResRet.f32 %1053, 1
  %1056 = extractvalue %dx.types.ResRet.f32 %1053, 2
  %1057 = extractvalue %dx.types.ResRet.f32 %1053, 3
  %1058 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %22, float %986, float %990, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1059 = extractvalue %dx.types.ResRet.f32 %1058, 0
  %1060 = extractvalue %dx.types.ResRet.f32 %1058, 1
  %1061 = extractvalue %dx.types.ResRet.f32 %1058, 2
  %1062 = extractvalue %dx.types.ResRet.f32 %1058, 3
  %1063 = fmul fast float %1054, %981
  %1064 = fmul fast float %1059, %981
  %1065 = fmul fast float %1061, %981
  %1066 = fmul fast float %1057, %981
  %1067 = fadd fast float %1041, %1063
  %1068 = fadd fast float %1042, %1064
  %1069 = fadd fast float %1043, %1065
  %1070 = fadd fast float %1044, %1066
  %1071 = fmul fast float %1055, %981
  %1072 = fmul fast float %1060, %981
  %1073 = fadd fast float %1047, %1071
  %1074 = fadd fast float %1048, %1072
  %1075 = fmul fast float %1056, %981
  %1076 = fmul fast float %1062, %981
  %1077 = fadd fast float %1051, %1075
  %1078 = fadd fast float %1052, %1076
  %1079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %1080 = extractvalue %dx.types.CBufRet.f32 %1079, 0
  %1081 = fsub fast float %185, %1080
  %1082 = fsub fast float %923, %185
  %1083 = call float @dx.op.binary.f32(i32 35, float %1082, float %1081)  ; FMax(a,b)
  %1084 = extractvalue %dx.types.CBufRet.f32 %1079, 1
  %1085 = fsub fast float %190, %1084
  %1086 = fsub fast float %924, %190
  %1087 = call float @dx.op.binary.f32(i32 35, float %1086, float %1085)  ; FMax(a,b)
  %1088 = call float @dx.op.binary.f32(i32 35, float %1083, float %1087)  ; FMax(a,b)
  %1089 = extractvalue %dx.types.CBufRet.f32 %927, 3
  %1090 = fmul fast float %1089, %1088
  %1091 = call float @dx.op.unary.f32(i32 7, float %1090)  ; Saturate(value)
  %1092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %1093 = extractvalue %dx.types.CBufRet.f32 %1092, 0
  %1094 = extractvalue %dx.types.CBufRet.f32 %1092, 1
  %1095 = extractvalue %dx.types.CBufRet.f32 %1092, 2
  %1096 = extractvalue %dx.types.CBufRet.f32 %1092, 3
  %1097 = fsub fast float %1093, %1067
  %1098 = fsub fast float %1094, %1068
  %1099 = fsub fast float %1095, %1069
  %1100 = fsub fast float %1096, %1070
  %1101 = fmul fast float %1097, %1091
  %1102 = fmul fast float %1098, %1091
  %1103 = fmul fast float %1099, %1091
  %1104 = fmul fast float %1100, %1091
  %1105 = fadd fast float %1101, %1067
  %1106 = fadd fast float %1102, %1068
  %1107 = fadd fast float %1103, %1069
  %1108 = fadd fast float %1104, %1070
  %1109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %1110 = extractvalue %dx.types.CBufRet.f32 %1109, 0
  %1111 = extractvalue %dx.types.CBufRet.f32 %1109, 1
  %1112 = fsub fast float %1110, %1073
  %1113 = fsub fast float %1111, %1074
  %1114 = fmul fast float %1112, %1091
  %1115 = fmul fast float %1113, %1091
  %1116 = fadd fast float %1114, %1073
  %1117 = fadd fast float %1115, %1074
  %1118 = extractvalue %dx.types.CBufRet.f32 %1109, 2
  %1119 = extractvalue %dx.types.CBufRet.f32 %1109, 3
  %1120 = fsub fast float %1118, %1077
  %1121 = fsub fast float %1119, %1078
  %1122 = fmul fast float %1120, %1091
  %1123 = fmul fast float %1121, %1091
  %1124 = fadd fast float %1122, %1077
  %1125 = fadd fast float %1123, %1078
  %1126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %1127 = extractvalue %dx.types.CBufRet.f32 %1126, 0
  %1128 = fmul fast float %1127, %1105
  %1129 = fmul fast float %1127, %1106
  %1130 = fmul fast float %1127, %1107
  %1131 = fmul fast float %1127, %1108
  %1132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %1133 = extractvalue %dx.types.CBufRet.f32 %1132, 0
  %1134 = fmul fast float %1133, %1116
  %1135 = fmul fast float %1133, %1117
  %1136 = fadd fast float %1134, %1128
  %1137 = fadd fast float %1135, %1130
  %1138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %1139 = extractvalue %dx.types.CBufRet.f32 %1138, 0
  %1140 = fmul fast float %1139, %1124
  %1141 = fmul fast float %1139, %1125
  %1142 = fadd fast float %1136, %1140
  %1143 = fadd fast float %1137, %1141
  %1144 = extractvalue %dx.types.CBufRet.f32 %1126, 1
  %1145 = fmul fast float %1144, %1105
  %1146 = fmul fast float %1144, %1106
  %1147 = fmul fast float %1144, %1107
  %1148 = fmul fast float %1144, %1108
  %1149 = extractvalue %dx.types.CBufRet.f32 %1132, 1
  %1150 = fmul fast float %1149, %1116
  %1151 = fmul fast float %1149, %1117
  %1152 = fadd fast float %1150, %1145
  %1153 = fadd fast float %1151, %1147
  %1154 = extractvalue %dx.types.CBufRet.f32 %1138, 1
  %1155 = fmul fast float %1154, %1124
  %1156 = fmul fast float %1154, %1125
  %1157 = fadd fast float %1152, %1155
  %1158 = fadd fast float %1153, %1156
  %1159 = extractvalue %dx.types.CBufRet.f32 %1126, 2
  %1160 = fmul fast float %1159, %1105
  %1161 = fmul fast float %1159, %1106
  %1162 = fmul fast float %1159, %1107
  %1163 = fmul fast float %1159, %1108
  %1164 = extractvalue %dx.types.CBufRet.f32 %1132, 2
  %1165 = fmul fast float %1164, %1116
  %1166 = fmul fast float %1164, %1117
  %1167 = fadd fast float %1165, %1160
  %1168 = fadd fast float %1166, %1162
  %1169 = extractvalue %dx.types.CBufRet.f32 %1138, 2
  %1170 = fmul fast float %1169, %1124
  %1171 = fmul fast float %1169, %1125
  %1172 = fadd fast float %1167, %1170
  %1173 = fadd fast float %1168, %1171
  %1174 = fmul fast float %1161, %1161
  %1175 = fmul fast float %1173, %1173
  %1176 = fmul fast float %1163, %1163
  %1177 = fadd fast float %1176, %1174
  %1178 = fadd fast float %1177, %1175
  %1179 = call float @dx.op.unary.f32(i32 24, float %1178)  ; Sqrt(value)
  %1180 = fcmp fast ugt float %1179, 0.000000e+00
  br i1 %1180, label %1181, label %1196, !dx.controlflow.hints !65

; <label>:1181                                    ; preds = %921
  %1182 = fsub fast float -0.000000e+00, %1163
  %1183 = fdiv fast float %1182, %1179
  %1184 = fsub fast float -0.000000e+00, %1161
  %1185 = fdiv fast float %1184, %1179
  %1186 = fdiv fast float %1173, %1179
  %1187 = fmul fast float %1172, 0x3FE279A760000000
  %1188 = fmul fast float %1185, %1161
  %1189 = fmul fast float %1186, %1173
  %1190 = fmul fast float %1183, %1163
  %1191 = fadd fast float %1188, %1190
  %1192 = fsub fast float %1191, %1189
  %1193 = call float @dx.op.unary.f32(i32 6, float %1192)  ; FAbs(value)
  %1194 = fadd fast float %1193, 0x3DDB7CDFE0000000
  %1195 = fdiv fast float %1187, %1194
  br label %1196

; <label>:1196                                    ; preds = %1181, %921
  %1197 = phi float [ %1195, %1181 ], [ 1.000000e+00, %921 ]
  %1198 = fmul fast float %1146, %1146
  %1199 = fmul fast float %1158, %1158
  %1200 = fmul fast float %1148, %1148
  %1201 = fadd fast float %1200, %1198
  %1202 = fadd fast float %1201, %1199
  %1203 = call float @dx.op.unary.f32(i32 24, float %1202)  ; Sqrt(value)
  %1204 = fcmp fast ugt float %1203, 0.000000e+00
  br i1 %1204, label %1205, label %1220, !dx.controlflow.hints !65

; <label>:1205                                    ; preds = %1196
  %1206 = fsub fast float -0.000000e+00, %1148
  %1207 = fdiv fast float %1206, %1203
  %1208 = fsub fast float -0.000000e+00, %1146
  %1209 = fdiv fast float %1208, %1203
  %1210 = fdiv fast float %1158, %1203
  %1211 = fmul fast float %1157, 0x3FE279A760000000
  %1212 = fmul fast float %1209, %1146
  %1213 = fmul fast float %1210, %1158
  %1214 = fmul fast float %1207, %1148
  %1215 = fadd fast float %1212, %1214
  %1216 = fsub fast float %1215, %1213
  %1217 = call float @dx.op.unary.f32(i32 6, float %1216)  ; FAbs(value)
  %1218 = fadd fast float %1217, 0x3DDB7CDFE0000000
  %1219 = fdiv fast float %1211, %1218
  br label %1220

; <label>:1220                                    ; preds = %1205, %1196
  %1221 = phi float [ %1219, %1205 ], [ 1.000000e+00, %1196 ]
  %1222 = call float @dx.op.binary.f32(i32 36, float %1221, float %1197)  ; FMin(a,b)
  %1223 = fmul fast float %1129, %1129
  %1224 = fmul fast float %1143, %1143
  %1225 = fmul fast float %1131, %1131
  %1226 = fadd fast float %1225, %1223
  %1227 = fadd fast float %1226, %1224
  %1228 = call float @dx.op.unary.f32(i32 24, float %1227)  ; Sqrt(value)
  %1229 = fcmp fast ugt float %1228, 0.000000e+00
  br i1 %1229, label %1230, label %1245, !dx.controlflow.hints !65

; <label>:1230                                    ; preds = %1220
  %1231 = fsub fast float -0.000000e+00, %1131
  %1232 = fdiv fast float %1231, %1228
  %1233 = fsub fast float -0.000000e+00, %1129
  %1234 = fdiv fast float %1233, %1228
  %1235 = fdiv fast float %1143, %1228
  %1236 = fmul fast float %1142, 0x3FE279A760000000
  %1237 = fmul fast float %1234, %1129
  %1238 = fmul fast float %1235, %1143
  %1239 = fmul fast float %1232, %1131
  %1240 = fadd fast float %1237, %1239
  %1241 = fsub fast float %1240, %1238
  %1242 = call float @dx.op.unary.f32(i32 6, float %1241)  ; FAbs(value)
  %1243 = fadd fast float %1242, 0x3DDB7CDFE0000000
  %1244 = fdiv fast float %1236, %1243
  br label %1245

; <label>:1245                                    ; preds = %1230, %1220
  %1246 = phi float [ %1244, %1230 ], [ 1.000000e+00, %1220 ]
  %1247 = call float @dx.op.binary.f32(i32 36, float %1246, float %1222)  ; FMin(a,b)
  %1248 = call float @dx.op.unary.f32(i32 7, float %1247)  ; Saturate(value)
  %1249 = fcmp fast olt float %1248, 1.000000e+00
  br i1 %1249, label %1250, label %1260, !dx.controlflow.hints !66

; <label>:1250                                    ; preds = %1245
  %1251 = fmul fast float %1248, %1129
  %1252 = fmul fast float %1248, %1143
  %1253 = fmul fast float %1248, %1131
  %1254 = fmul fast float %1248, %1146
  %1255 = fmul fast float %1248, %1158
  %1256 = fmul fast float %1248, %1148
  %1257 = fmul fast float %1248, %1161
  %1258 = fmul fast float %1248, %1173
  %1259 = fmul fast float %1248, %1163
  br label %1260

; <label>:1260                                    ; preds = %1250, %1245
  %1261 = phi float [ %1257, %1250 ], [ %1161, %1245 ]
  %1262 = phi float [ %1258, %1250 ], [ %1173, %1245 ]
  %1263 = phi float [ %1259, %1250 ], [ %1163, %1245 ]
  %1264 = phi float [ %1254, %1250 ], [ %1146, %1245 ]
  %1265 = phi float [ %1255, %1250 ], [ %1158, %1245 ]
  %1266 = phi float [ %1256, %1250 ], [ %1148, %1245 ]
  %1267 = phi float [ %1251, %1250 ], [ %1129, %1245 ]
  %1268 = phi float [ %1252, %1250 ], [ %1143, %1245 ]
  %1269 = phi float [ %1253, %1250 ], [ %1131, %1245 ]
  %1270 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1142)  ; FMax(a,b)
  %1271 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1157)  ; FMax(a,b)
  %1272 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1172)  ; FMax(a,b)
  %1273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %1274 = extractvalue %dx.types.CBufRet.f32 %1273, 0
  %1275 = fcmp fast ogt float %1274, 0.000000e+00
  %1276 = fcmp fast oge float %930, 0.000000e+00
  %1277 = and i1 %1276, %1275
  %1278 = fcmp fast ole float %930, 1.000000e+00
  %1279 = and i1 %1278, %1277
  %1280 = fcmp fast oge float %931, 0.000000e+00
  %1281 = and i1 %1280, %1279
  %1282 = fcmp fast ole float %931, 1.000000e+00
  %1283 = and i1 %1282, %1281
  br i1 %1283, label %1284, label %1429, !dx.controlflow.hints !67

; <label>:1284                                    ; preds = %1260
  %1285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1286 = extractvalue %dx.types.CBufRet.f32 %1285, 2
  %1287 = extractvalue %dx.types.CBufRet.f32 %1285, 3
  %1288 = fmul fast float %1286, %930
  %1289 = fmul fast float %1287, %931
  %1290 = call float @dx.op.unary.f32(i32 27, float %1288)  ; Round_ni(value)
  %1291 = call float @dx.op.unary.f32(i32 27, float %1289)  ; Round_ni(value)
  %1292 = fptosi float %1290 to i32
  %1293 = fptosi float %1291 to i32
  %1294 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %16, i32 0, i32 %1292, i32 %1293, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1295 = extractvalue %dx.types.ResRet.i32 %1294, 0
  %1296 = and i32 %1295, 65535
  %1297 = lshr i32 %1295, 16
  %1298 = icmp eq i32 %1296, 65535
  br i1 %1298, label %1335, label %1299, !dx.controlflow.hints !68

; <label>:1299                                    ; preds = %1284
  %1300 = extractvalue %dx.types.CBufRet.f32 %1273, 1
  %1301 = extractvalue %dx.types.CBufRet.f32 %1285, 0
  %1302 = extractvalue %dx.types.CBufRet.f32 %1285, 1
  %1303 = fmul fast float %1301, %930
  %1304 = fmul fast float %1302, %931
  %1305 = fmul fast float %1303, 1.250000e-01
  %1306 = fmul fast float %1304, 1.250000e-01
  %1307 = call float @dx.op.unary.f32(i32 27, float %1305)  ; Round_ni(value)
  %1308 = call float @dx.op.unary.f32(i32 27, float %1306)  ; Round_ni(value)
  %1309 = fmul fast float %1307, 8.000000e+00
  %1310 = fmul fast float %1308, 8.000000e+00
  %1311 = and i32 %1295, 255
  %1312 = lshr i32 %1295, 8
  %1313 = and i32 %1312, 255
  %1314 = mul nuw nsw i32 %1311, 9
  %1315 = uitofp i32 %1314 to float
  %1316 = mul nuw nsw i32 %1313, 9
  %1317 = uitofp i32 %1316 to float
  %1318 = fadd fast float %1315, 5.000000e-01
  %1319 = fadd fast float %1318, %1303
  %1320 = fsub fast float %1319, %1309
  %1321 = fadd fast float %1317, 5.000000e-01
  %1322 = fadd fast float %1321, %1304
  %1323 = fsub fast float %1322, %1310
  %1324 = fdiv fast float %1320, %1274
  %1325 = fdiv fast float %1323, %1300
  %1326 = fmul fast float %958, 4.375000e-01
  %1327 = fadd fast float %1326, 3.125000e-02
  %1328 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %22, float %1324, float %1325, float %1327, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1329 = extractvalue %dx.types.ResRet.f32 %1328, 0
  %1330 = extractvalue %dx.types.ResRet.f32 %1328, 1
  %1331 = extractvalue %dx.types.ResRet.f32 %1328, 2
  %1332 = fadd fast float %1329, %1270
  %1333 = fadd fast float %1330, %1271
  %1334 = fadd fast float %1331, %1272
  br label %1335

; <label>:1335                                    ; preds = %1299, %1284
  %1336 = phi float [ %1334, %1299 ], [ %1272, %1284 ]
  %1337 = phi float [ %1333, %1299 ], [ %1271, %1284 ]
  %1338 = phi float [ %1332, %1299 ], [ %1270, %1284 ]
  %1339 = icmp eq i32 %1297, 65535
  br i1 %1339, label %1429, label %1340, !dx.controlflow.hints !69

; <label>:1340                                    ; preds = %1335
  %1341 = extractvalue %dx.types.CBufRet.f32 %1273, 1
  %1342 = extractvalue %dx.types.CBufRet.f32 %1285, 0
  %1343 = extractvalue %dx.types.CBufRet.f32 %1285, 1
  %1344 = fmul fast float %1342, %930
  %1345 = fmul fast float %1343, %931
  %1346 = fmul fast float %1344, 1.250000e-01
  %1347 = fmul fast float %1345, 1.250000e-01
  %1348 = call float @dx.op.unary.f32(i32 27, float %1346)  ; Round_ni(value)
  %1349 = call float @dx.op.unary.f32(i32 27, float %1347)  ; Round_ni(value)
  %1350 = fmul fast float %1348, 8.000000e+00
  %1351 = fmul fast float %1349, 8.000000e+00
  %1352 = fsub fast float %1344, %1350
  %1353 = fsub fast float %1345, %1351
  %1354 = fadd fast float %1352, 5.000000e-01
  %1355 = fadd fast float %1353, 5.000000e-01
  %1356 = and i32 %1297, 255
  %1357 = lshr i32 %1295, 24
  %1358 = mul nuw nsw i32 %1356, 9
  %1359 = uitofp i32 %1358 to float
  %1360 = mul nuw nsw i32 %1357, 9
  %1361 = uitofp i32 %1360 to float
  %1362 = fadd fast float %1354, %1359
  %1363 = fadd fast float %1355, %1361
  %1364 = fdiv fast float %1362, %1274
  %1365 = fdiv fast float %1363, %1341
  %1366 = fmul fast float %958, 4.375000e-01
  %1367 = fadd fast float %1366, 3.125000e-02
  %1368 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %22, float %1364, float %1365, float %1367, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1369 = extractvalue %dx.types.ResRet.f32 %1368, 0
  %1370 = extractvalue %dx.types.ResRet.f32 %1368, 1
  %1371 = extractvalue %dx.types.ResRet.f32 %1368, 2
  %1372 = fadd fast float %1366, 5.312500e-01
  %1373 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %22, float %1364, float %1365, float %1372, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1374 = extractvalue %dx.types.ResRet.f32 %1373, 0
  %1375 = extractvalue %dx.types.ResRet.f32 %1373, 1
  %1376 = extractvalue %dx.types.ResRet.f32 %1373, 2
  %1377 = fmul fast float %1374, 2.000000e+00
  %1378 = fmul fast float %1375, 2.000000e+00
  %1379 = fmul fast float %1376, 2.000000e+00
  %1380 = fadd fast float %1377, -1.000000e+00
  %1381 = fadd fast float %1378, -1.000000e+00
  %1382 = fadd fast float %1379, -1.000000e+00
  %1383 = fmul fast float %1380, %1380
  %1384 = fmul fast float %1381, %1381
  %1385 = fadd fast float %1383, %1384
  %1386 = fmul fast float %1382, %1382
  %1387 = fadd fast float %1385, %1386
  %1388 = call float @dx.op.unary.f32(i32 24, float %1387)  ; Sqrt(value)
  %1389 = fcmp fast ogt float %1388, 0.000000e+00
  br i1 %1389, label %1390, label %1394, !dx.controlflow.hints !70

; <label>:1390                                    ; preds = %1340
  %1391 = fdiv fast float %1380, %1388
  %1392 = fdiv fast float %1381, %1388
  %1393 = fdiv fast float %1382, %1388
  br label %1394

; <label>:1394                                    ; preds = %1390, %1340
  %1395 = phi float [ %1391, %1390 ], [ 0.000000e+00, %1340 ]
  %1396 = phi float [ %1392, %1390 ], [ 0.000000e+00, %1340 ]
  %1397 = phi float [ %1393, %1390 ], [ 0.000000e+00, %1340 ]
  %1398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1399 = extractvalue %dx.types.CBufRet.f32 %1398, 0
  %1400 = extractvalue %dx.types.CBufRet.f32 %1398, 1
  %1401 = fsub fast float %185, %1399
  %1402 = fsub fast float %190, %1400
  %1403 = fmul fast float %1401, %1401
  %1404 = fmul fast float %1402, %1402
  %1405 = fadd fast float %1403, %1404
  %1406 = call float @dx.op.unary.f32(i32 24, float %1405)  ; Sqrt(value)
  %1407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1408 = extractvalue %dx.types.CBufRet.f32 %1407, 0
  %1409 = extractvalue %dx.types.CBufRet.f32 %1407, 1
  %1410 = fsub fast float %1406, %1408
  %1411 = fdiv fast float %1410, %1409
  %1412 = call float @dx.op.unary.f32(i32 7, float %1411)  ; Saturate(value)
  %1413 = fmul fast float %1412, 2.000000e+00
  %1414 = fsub fast float 3.000000e+00, %1413
  %1415 = fmul fast float %1412, %1412
  %1416 = fmul fast float %1415, %1414
  %1417 = call float @dx.op.dot3.f32(i32 55, float %1395, float %1396, float %1397, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1418 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1417)  ; FMax(a,b)
  %1419 = fmul fast float %1418, 0x400C5BF8A0000000
  %1420 = fmul fast float %1416, %1369
  %1421 = fmul fast float %1420, %1419
  %1422 = fadd fast float %1421, %1338
  %1423 = fmul fast float %1416, %1370
  %1424 = fmul fast float %1423, %1419
  %1425 = fadd fast float %1424, %1337
  %1426 = fmul fast float %1416, %1371
  %1427 = fmul fast float %1426, %1419
  %1428 = fadd fast float %1427, %1336
  br label %1429

; <label>:1429                                    ; preds = %1394, %1335, %1260
  %1430 = phi float [ %1428, %1394 ], [ %1336, %1335 ], [ %1272, %1260 ]
  %1431 = phi float [ %1425, %1394 ], [ %1337, %1335 ], [ %1271, %1260 ]
  %1432 = phi float [ %1422, %1394 ], [ %1338, %1335 ], [ %1270, %1260 ]
  %1433 = fcmp fast ogt float %195, %954
  %1434 = and i1 %1276, %1433
  %1435 = and i1 %1278, %1434
  %1436 = and i1 %1280, %1435
  %1437 = and i1 %1282, %1436
  br i1 %1437, label %1438, label %1495, !dx.controlflow.hints !71

; <label>:1438                                    ; preds = %1429
  %1439 = fmul fast float %956, 0x3FC24924A0000000
  %1440 = fsub fast float %195, %954
  %1441 = fdiv fast float %1440, %1439
  %1442 = call float @dx.op.unary.f32(i32 7, float %1441)  ; Saturate(value)
  %1443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %1444 = extractvalue %dx.types.CBufRet.f32 %1443, 0
  %1445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %1446 = extractvalue %dx.types.CBufRet.f32 %1445, 0
  %1447 = extractvalue %dx.types.CBufRet.f32 %1445, 1
  %1448 = extractvalue %dx.types.CBufRet.f32 %1445, 2
  %1449 = fsub fast float %1444, %1432
  %1450 = fsub fast float %1446, %1267
  %1451 = fsub fast float %1447, %1268
  %1452 = fsub fast float %1448, %1269
  %1453 = fmul fast float %1449, %1442
  %1454 = fmul fast float %1450, %1442
  %1455 = fmul fast float %1451, %1442
  %1456 = fmul fast float %1452, %1442
  %1457 = fadd fast float %1453, %1432
  %1458 = fadd fast float %1454, %1267
  %1459 = fadd fast float %1455, %1268
  %1460 = fadd fast float %1456, %1269
  %1461 = extractvalue %dx.types.CBufRet.f32 %1443, 1
  %1462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %1463 = extractvalue %dx.types.CBufRet.f32 %1462, 0
  %1464 = extractvalue %dx.types.CBufRet.f32 %1462, 1
  %1465 = extractvalue %dx.types.CBufRet.f32 %1462, 2
  %1466 = fsub fast float %1461, %1431
  %1467 = fsub fast float %1463, %1264
  %1468 = fsub fast float %1464, %1265
  %1469 = fsub fast float %1465, %1266
  %1470 = fmul fast float %1466, %1442
  %1471 = fmul fast float %1467, %1442
  %1472 = fmul fast float %1468, %1442
  %1473 = fmul fast float %1469, %1442
  %1474 = fadd fast float %1470, %1431
  %1475 = fadd fast float %1471, %1264
  %1476 = fadd fast float %1472, %1265
  %1477 = fadd fast float %1473, %1266
  %1478 = extractvalue %dx.types.CBufRet.f32 %1443, 2
  %1479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %1480 = extractvalue %dx.types.CBufRet.f32 %1479, 0
  %1481 = extractvalue %dx.types.CBufRet.f32 %1479, 1
  %1482 = extractvalue %dx.types.CBufRet.f32 %1479, 2
  %1483 = fsub fast float %1478, %1430
  %1484 = fsub fast float %1480, %1261
  %1485 = fsub fast float %1481, %1262
  %1486 = fsub fast float %1482, %1263
  %1487 = fmul fast float %1483, %1442
  %1488 = fmul fast float %1484, %1442
  %1489 = fmul fast float %1485, %1442
  %1490 = fmul fast float %1486, %1442
  %1491 = fadd fast float %1487, %1430
  %1492 = fadd fast float %1488, %1261
  %1493 = fadd fast float %1489, %1262
  %1494 = fadd fast float %1490, %1263
  br label %1495

; <label>:1495                                    ; preds = %1438, %1429
  %1496 = phi float [ %1491, %1438 ], [ %1430, %1429 ]
  %1497 = phi float [ %1492, %1438 ], [ %1261, %1429 ]
  %1498 = phi float [ %1493, %1438 ], [ %1262, %1429 ]
  %1499 = phi float [ %1494, %1438 ], [ %1263, %1429 ]
  %1500 = phi float [ %1474, %1438 ], [ %1431, %1429 ]
  %1501 = phi float [ %1475, %1438 ], [ %1264, %1429 ]
  %1502 = phi float [ %1476, %1438 ], [ %1265, %1429 ]
  %1503 = phi float [ %1477, %1438 ], [ %1266, %1429 ]
  %1504 = phi float [ %1457, %1438 ], [ %1432, %1429 ]
  %1505 = phi float [ %1458, %1438 ], [ %1267, %1429 ]
  %1506 = phi float [ %1459, %1438 ], [ %1268, %1429 ]
  %1507 = phi float [ %1460, %1438 ], [ %1269, %1429 ]
  %1508 = extractvalue %dx.types.CBufRet.f32 %1079, 3
  %1509 = fmul fast float %1508, %1504
  %1510 = fmul fast float %1508, %1500
  %1511 = fmul fast float %1508, %1496
  %1512 = fmul fast float %1505, 1.500000e+00
  %1513 = fmul fast float %1512, %1508
  %1514 = fmul fast float %1506, 1.500000e+00
  %1515 = fmul fast float %1514, %1508
  %1516 = fmul fast float %1507, 1.500000e+00
  %1517 = fmul fast float %1516, %1508
  %1518 = fmul fast float %1501, 1.500000e+00
  %1519 = fmul fast float %1518, %1508
  %1520 = fmul fast float %1502, 1.500000e+00
  %1521 = fmul fast float %1520, %1508
  %1522 = fmul fast float %1503, 1.500000e+00
  %1523 = fmul fast float %1522, %1508
  %1524 = fmul fast float %1497, 1.500000e+00
  %1525 = fmul fast float %1524, %1508
  %1526 = fmul fast float %1498, 1.500000e+00
  %1527 = fmul fast float %1526, %1508
  %1528 = fmul fast float %1499, 1.500000e+00
  %1529 = fmul fast float %1528, %1508
  %1530 = fsub fast float %919, %1509
  %1531 = fmul fast float %1530, %235
  %1532 = fadd fast float %1531, %1509
  %1533 = fsub fast float %918, %1513
  %1534 = fmul fast float %1533, %235
  %1535 = fadd fast float %1534, %1513
  %1536 = fsub fast float %917, %1515
  %1537 = fmul fast float %1536, %235
  %1538 = fadd fast float %1537, %1515
  %1539 = fsub fast float %916, %1517
  %1540 = fmul fast float %1539, %235
  %1541 = fadd fast float %1540, %1517
  %1542 = fsub fast float %915, %1510
  %1543 = fmul fast float %1542, %235
  %1544 = fadd fast float %1543, %1510
  %1545 = fsub fast float %914, %1519
  %1546 = fmul fast float %1545, %235
  %1547 = fadd fast float %1546, %1519
  %1548 = fsub fast float %913, %1521
  %1549 = fmul fast float %1548, %235
  %1550 = fadd fast float %1549, %1521
  %1551 = fsub fast float %912, %1523
  %1552 = fmul fast float %1551, %235
  %1553 = fadd fast float %1552, %1523
  %1554 = fsub fast float %911, %1511
  %1555 = fmul fast float %1554, %235
  %1556 = fadd fast float %1555, %1511
  %1557 = fsub fast float %910, %1525
  %1558 = fmul fast float %1557, %235
  %1559 = fadd fast float %1558, %1525
  %1560 = fsub fast float %909, %1527
  %1561 = fmul fast float %1560, %235
  %1562 = fadd fast float %1561, %1527
  %1563 = fsub fast float %908, %1529
  %1564 = fmul fast float %1563, %235
  %1565 = fadd fast float %1564, %1529
  br label %1566

; <label>:1566                                    ; preds = %1495, %907
  %1567 = phi float [ %908, %907 ], [ %1565, %1495 ]
  %1568 = phi float [ %909, %907 ], [ %1562, %1495 ]
  %1569 = phi float [ %910, %907 ], [ %1559, %1495 ]
  %1570 = phi float [ %911, %907 ], [ %1556, %1495 ]
  %1571 = phi float [ %912, %907 ], [ %1553, %1495 ]
  %1572 = phi float [ %913, %907 ], [ %1550, %1495 ]
  %1573 = phi float [ %914, %907 ], [ %1547, %1495 ]
  %1574 = phi float [ %915, %907 ], [ %1544, %1495 ]
  %1575 = phi float [ %916, %907 ], [ %1541, %1495 ]
  %1576 = phi float [ %917, %907 ], [ %1538, %1495 ]
  %1577 = phi float [ %918, %907 ], [ %1535, %1495 ]
  %1578 = phi float [ %919, %907 ], [ %1532, %1495 ]
  %1579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1580 = extractvalue %dx.types.CBufRet.f32 %1579, 3
  %1581 = fmul fast float %1580, %1578
  %1582 = fmul fast float %1580, %1577
  %1583 = fmul fast float %1580, %1576
  %1584 = fmul fast float %1580, %1575
  %1585 = extractvalue %dx.types.CBufRet.f32 %1579, 0
  %1586 = fmul fast float %1581, %1585
  %1587 = fmul fast float %1582, %1585
  %1588 = fmul fast float %1583, %1585
  %1589 = fmul fast float %1584, %1585
  %1590 = fmul fast float %1580, %1574
  %1591 = fmul fast float %1580, %1573
  %1592 = fmul fast float %1580, %1572
  %1593 = fmul fast float %1580, %1571
  %1594 = fmul fast float %1590, %1585
  %1595 = fmul fast float %1591, %1585
  %1596 = fmul fast float %1592, %1585
  %1597 = fmul fast float %1593, %1585
  %1598 = fmul fast float %1580, %1570
  %1599 = fmul fast float %1580, %1569
  %1600 = fmul fast float %1580, %1568
  %1601 = fmul fast float %1580, %1567
  %1602 = fmul fast float %1598, %1585
  %1603 = fmul fast float %1599, %1585
  %1604 = fmul fast float %1600, %1585
  %1605 = fmul fast float %1601, %1585
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %164, i32 %165, i32 0, float %1586, float %1587, float %1588, float %1589, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %164, i32 %165, i32 1, float %1594, float %1595, float %1596, float %1597, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %164, i32 %165, i32 2, float %1602, float %1603, float %1604, float %1605, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1606

; <label>:1606                                    ; preds = %1566, %0
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
!31 = !{i32 0, %"class.RWTexture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 7, i1 false, i1 false, i1 false, !7}
!32 = !{!33, !34, !35}
!33 = !{i32 0, %GfxNeuralLightGridSetupConsts* undef, !"", i32 0, i32 4, i32 1, i32 80, null}
!34 = !{i32 1, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!35 = !{i32 2, %DeferredEffectLightConsts_decl* undef, !"", i32 0, i32 1, i32 1, i32 240, null}
!36 = !{!37}
!37 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!38 = !{void ()* @cs_del_sh_sample_lightgrid_2, !"cs_del_sh_sample_lightgrid_2", null, !4, !39}
!39 = !{i32 0, i64 272, i32 4, !40}
!40 = !{i32 16, i32 2, i32 2}
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

