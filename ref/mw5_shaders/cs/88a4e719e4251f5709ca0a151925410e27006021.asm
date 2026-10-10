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
; shader hash: 7815605583b85ebb8183e7e0579b16af
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

define void @cs_del_sh_sample_lightgrid_4_lowres() {
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
  %27 = alloca [8 x float], align 4
  %28 = alloca [8 x i32], align 4
  %29 = alloca [8 x float], align 4
  %30 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %31 = extractvalue %dx.types.CBufRet.i32 %30, 2
  %32 = add i32 %31, 6
  %33 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %32, i32 0)  ; BufferLoad(srv,index,wot)
  %34 = extractvalue %dx.types.ResRet.i32 %33, 0
  %35 = icmp ult i32 %26, %34
  br i1 %35, label %36, label %1611, !dx.controlflow.hints !41

; <label>:36                                      ; preds = %0
  %37 = add i32 %31, 9
  %38 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 %37)  ; CBufferLoadLegacy(handle,regIndex)
  %39 = extractvalue %dx.types.CBufRet.i32 %38, 2
  %40 = call i32 @dx.op.threadId.i32(i32 93, i32 2)  ; ThreadId(component)
  %41 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %42 = shl i32 %41, 1
  %43 = shl i32 %40, 1
  %44 = add i32 %39, %26
  %45 = shl i32 %44, 5
  %46 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %45, i32 undef)  ; BufferLoad(srv,index,wot)
  %47 = extractvalue %dx.types.ResRet.i32 %46, 0
  %48 = extractvalue %dx.types.ResRet.i32 %46, 1
  %49 = extractvalue %dx.types.ResRet.i32 %46, 2
  %50 = extractvalue %dx.types.ResRet.i32 %46, 3
  %51 = lshr i32 %50, 14
  %52 = and i32 %51, 16383
  %53 = and i32 %50, 16383
  %54 = bitcast i32 %47 to float
  %55 = bitcast i32 %48 to float
  %56 = bitcast i32 %49 to float
  %57 = and i32 %50, 536870912
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %98, label %59, !dx.controlflow.hints !42

; <label>:59                                      ; preds = %36
  %60 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %61 = extractvalue %dx.types.CBufRet.f32 %60, 2
  %62 = extractvalue %dx.types.CBufRet.f32 %60, 3
  %63 = fmul fast float %61, %54
  %64 = fmul fast float %62, %55
  %65 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %66 = extractvalue %dx.types.CBufRet.f32 %65, 0
  %67 = extractvalue %dx.types.CBufRet.f32 %65, 1
  %68 = fadd fast float %63, %66
  %69 = fadd fast float %64, %67
  %70 = call float @dx.op.unary.f32(i32 7, float %68)  ; Saturate(value)
  %71 = call float @dx.op.unary.f32(i32 7, float %69)  ; Saturate(value)
  %72 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %22, float %70, float %71, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %73 = extractvalue %dx.types.ResRet.f32 %72, 0
  %74 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %75 = extractvalue %dx.types.CBufRet.f32 %74, 0
  %76 = fmul fast float %75, %73
  %77 = fsub fast float %68, %70
  %78 = fsub fast float %69, %71
  %79 = extractvalue %dx.types.CBufRet.f32 %60, 0
  %80 = extractvalue %dx.types.CBufRet.f32 %60, 1
  %81 = fmul fast float %79, %77
  %82 = fmul fast float %80, %78
  %83 = fmul fast float %81, %81
  %84 = fmul fast float %82, %82
  %85 = fadd fast float %83, %84
  %86 = call float @dx.op.unary.f32(i32 24, float %85)  ; Sqrt(value)
  %87 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %88 = extractvalue %dx.types.CBufRet.f32 %87, 3
  %89 = fmul fast float %88, %86
  %90 = call float @dx.op.unary.f32(i32 7, float %89)  ; Saturate(value)
  %91 = extractvalue %dx.types.CBufRet.f32 %87, 2
  %92 = fsub fast float %91, %76
  %93 = fmul fast float %92, %90
  %94 = extractvalue %dx.types.CBufRet.f32 %74, 1
  %95 = fadd fast float %76, %56
  %96 = fadd fast float %95, %94
  %97 = fadd fast float %96, %93
  br label %98

; <label>:98                                      ; preds = %59, %36
  %99 = phi float [ %97, %59 ], [ %56, %36 ]
  %100 = or i32 %45, 16
  %101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %100, i32 undef)  ; BufferLoad(srv,index,wot)
  %102 = extractvalue %dx.types.ResRet.i32 %101, 0
  %103 = extractvalue %dx.types.ResRet.i32 %101, 1
  %104 = extractvalue %dx.types.ResRet.i32 %101, 2
  %105 = extractvalue %dx.types.ResRet.i32 %101, 3
  %106 = and i32 %102, 65535
  %107 = call float @dx.op.legacyF16ToF32(i32 131, i32 %106)  ; LegacyF16ToF32(value)
  %108 = lshr i32 %102, 16
  %109 = call float @dx.op.legacyF16ToF32(i32 131, i32 %108)  ; LegacyF16ToF32(value)
  %110 = and i32 %103, 1023
  %111 = uitofp i32 %110 to float
  %112 = lshr i32 %103, 10
  %113 = and i32 %112, 1023
  %114 = uitofp i32 %113 to float
  %115 = lshr i32 %103, 20
  %116 = and i32 %115, 1023
  %117 = uitofp i32 %116 to float
  %118 = fmul fast float %111, 0x3F60040100000000
  %119 = fmul fast float %114, 0x3F60040100000000
  %120 = fmul fast float %117, 0x3F60040100000000
  %121 = fadd fast float %118, -1.000000e+00
  %122 = fadd fast float %119, -1.000000e+00
  %123 = fadd fast float %120, -1.000000e+00
  %124 = and i32 %104, 1023
  %125 = uitofp i32 %124 to float
  %126 = lshr i32 %104, 10
  %127 = and i32 %126, 1023
  %128 = uitofp i32 %127 to float
  %129 = lshr i32 %104, 20
  %130 = and i32 %129, 1023
  %131 = uitofp i32 %130 to float
  %132 = fmul fast float %125, 0x3F60040100000000
  %133 = fmul fast float %128, 0x3F60040100000000
  %134 = fmul fast float %131, 0x3F60040100000000
  %135 = fadd fast float %132, -1.000000e+00
  %136 = fadd fast float %133, -1.000000e+00
  %137 = fadd fast float %134, -1.000000e+00
  %138 = and i32 %105, 65535
  %139 = call float @dx.op.legacyF16ToF32(i32 131, i32 %138)  ; LegacyF16ToF32(value)
  %140 = call float @dx.op.unary.f32(i32 13, float %139)  ; Sin(value)
  %141 = call float @dx.op.unary.f32(i32 12, float %139)  ; Cos(value)
  %142 = fmul fast float %141, %121
  %143 = fmul fast float %122, %141
  %144 = fmul fast float %123, %141
  %145 = fmul fast float %135, %140
  %146 = fmul fast float %136, %140
  %147 = fmul fast float %137, %140
  %148 = fadd fast float %142, %145
  %149 = fadd fast float %143, %146
  %150 = fadd fast float %144, %147
  %151 = fmul fast float %148, %107
  %152 = fmul fast float %149, %107
  %153 = fmul fast float %150, %107
  %154 = fmul fast float %121, %140
  %155 = fmul fast float %122, %140
  %156 = fmul fast float %123, %140
  %157 = fmul fast float %141, %135
  %158 = fmul fast float %136, %141
  %159 = fmul fast float %137, %141
  %160 = fsub fast float %154, %157
  %161 = fsub fast float %155, %158
  %162 = fsub fast float %156, %159
  %163 = fmul fast float %160, %109
  %164 = fmul fast float %161, %109
  %165 = fmul fast float %162, %109
  %166 = add i32 %52, %42
  %167 = add i32 %53, %43
  %168 = uitofp i32 %42 to float
  %169 = uitofp i32 %43 to float
  %170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %171 = extractvalue %dx.types.CBufRet.f32 %170, 1
  %172 = fdiv fast float %168, %171
  %173 = fdiv fast float %169, %171
  %174 = extractvalue %dx.types.CBufRet.f32 %170, 2
  %175 = fmul fast float %174, 2.000000e+00
  %176 = fadd fast float %175, %172
  %177 = fadd fast float %175, %173
  %178 = fmul fast float %176, %151
  %179 = fmul fast float %176, %152
  %180 = fmul fast float %176, %153
  %181 = fmul fast float %177, %163
  %182 = fmul fast float %177, %164
  %183 = fmul fast float %177, %165
  %184 = fadd fast float %181, %178
  %185 = fmul fast float %184, 2.000000e+00
  %186 = fsub fast float %54, %151
  %187 = fsub fast float %186, %163
  %188 = fadd fast float %187, %185
  %189 = fadd fast float %182, %179
  %190 = fmul fast float %189, 2.000000e+00
  %191 = fsub fast float %55, %152
  %192 = fsub fast float %191, %164
  %193 = fadd fast float %192, %190
  %194 = fadd fast float %183, %180
  %195 = fmul fast float %194, 2.000000e+00
  %196 = fsub fast float %99, %153
  %197 = fsub fast float %196, %165
  %198 = fadd fast float %197, %195
  %199 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %200 = extractvalue %dx.types.CBufRet.i32 %199, 0
  %201 = icmp eq i32 %200, 1
  br i1 %201, label %202, label %237, !dx.controlflow.hints !43

; <label>:202                                     ; preds = %98
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

; <label>:237                                     ; preds = %231, %219, %202, %98
  %238 = phi float [ 1.000000e+00, %98 ], [ %236, %231 ], [ %214, %202 ], [ 0.000000e+00, %219 ]
  %239 = fcmp fast ogt float %238, 0.000000e+00
  br i1 %239, label %240, label %910, !dx.controlflow.hints !46

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
  br i1 %267, label %861, label %268, !dx.controlflow.hints !47

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
  br i1 %286, label %861, label %287, !dx.controlflow.hints !48

; <label>:287                                     ; preds = %268
  %288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %279, i32 8)  ; BufferLoad(srv,index,wot)
  %289 = extractvalue %dx.types.ResRet.i32 %288, 0
  %290 = sub i32 %277, %281
  %291 = add nsw i32 %290, %289
  %292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %291, i32 undef)  ; BufferLoad(srv,index,wot)
  %293 = extractvalue %dx.types.ResRet.i32 %292, 0
  %294 = icmp eq i32 %293, -1
  br i1 %294, label %861, label %295, !dx.controlflow.hints !49

; <label>:295                                     ; preds = %287
  %296 = getelementptr inbounds [8 x i32], [8 x i32]* %28, i32 0, i32 0
  store i32 -1, i32* %296, align 4, !tbaa !50, !noalias !54
  %297 = getelementptr inbounds [8 x i32], [8 x i32]* %28, i32 0, i32 1
  store i32 -1, i32* %297, align 4, !tbaa !50, !noalias !54
  %298 = getelementptr inbounds [8 x i32], [8 x i32]* %28, i32 0, i32 2
  store i32 -1, i32* %298, align 4, !tbaa !50, !noalias !54
  %299 = getelementptr inbounds [8 x i32], [8 x i32]* %28, i32 0, i32 3
  store i32 -1, i32* %299, align 4, !tbaa !50, !noalias !54
  %300 = getelementptr inbounds [8 x i32], [8 x i32]* %28, i32 0, i32 4
  store i32 -1, i32* %300, align 4, !tbaa !50, !noalias !54
  %301 = getelementptr inbounds [8 x i32], [8 x i32]* %28, i32 0, i32 5
  store i32 -1, i32* %301, align 4, !tbaa !50, !noalias !54
  %302 = getelementptr inbounds [8 x i32], [8 x i32]* %28, i32 0, i32 6
  store i32 -1, i32* %302, align 4, !tbaa !50, !noalias !54
  %303 = getelementptr inbounds [8 x i32], [8 x i32]* %28, i32 0, i32 7
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
  %603 = getelementptr inbounds [8 x float], [8 x float]* %27, i32 0, i32 %584
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
  %623 = getelementptr inbounds [8 x float], [8 x float]* %27, i32 0, i32 0
  %624 = load float, float* %623, align 4, !tbaa !60, !noalias !54
  %625 = fadd fast float %624, %613
  %626 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %625)  ; FMax(a,b)
  %627 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %625)  ; FMin(a,b)
  %628 = fmul fast float %627, 0x3F847AE140000000
  %629 = fadd fast float %628, %626
  store float %629, float* %623, align 4, !tbaa !60, !noalias !54
  %630 = getelementptr inbounds [8 x float], [8 x float]* %27, i32 0, i32 1
  %631 = load float, float* %630, align 4, !tbaa !60, !noalias !54
  %632 = fadd fast float %631, %614
  %633 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %632)  ; FMax(a,b)
  %634 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %632)  ; FMin(a,b)
  %635 = fmul fast float %634, 0x3F847AE140000000
  %636 = fadd fast float %635, %633
  store float %636, float* %630, align 4, !tbaa !60, !noalias !54
  %637 = getelementptr inbounds [8 x float], [8 x float]* %27, i32 0, i32 2
  %638 = load float, float* %637, align 4, !tbaa !60, !noalias !54
  %639 = fadd fast float %638, %615
  %640 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %639)  ; FMax(a,b)
  %641 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %639)  ; FMin(a,b)
  %642 = fmul fast float %641, 0x3F847AE140000000
  %643 = fadd fast float %642, %640
  store float %643, float* %637, align 4, !tbaa !60, !noalias !54
  %644 = getelementptr inbounds [8 x float], [8 x float]* %27, i32 0, i32 3
  %645 = load float, float* %644, align 4, !tbaa !60, !noalias !54
  %646 = fadd fast float %645, %616
  %647 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %646)  ; FMax(a,b)
  %648 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %646)  ; FMin(a,b)
  %649 = fmul fast float %648, 0x3F847AE140000000
  %650 = fadd fast float %649, %647
  store float %650, float* %644, align 4, !tbaa !60, !noalias !54
  %651 = getelementptr inbounds [8 x float], [8 x float]* %27, i32 0, i32 4
  %652 = load float, float* %651, align 4, !tbaa !60, !noalias !54
  %653 = fadd fast float %652, %619
  %654 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %653)  ; FMax(a,b)
  %655 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %653)  ; FMin(a,b)
  %656 = fmul fast float %655, 0x3F847AE140000000
  %657 = fadd fast float %656, %654
  store float %657, float* %651, align 4, !tbaa !60, !noalias !54
  %658 = getelementptr inbounds [8 x float], [8 x float]* %27, i32 0, i32 5
  %659 = load float, float* %658, align 4, !tbaa !60, !noalias !54
  %660 = fadd fast float %659, %620
  %661 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %660)  ; FMax(a,b)
  %662 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %660)  ; FMin(a,b)
  %663 = fmul fast float %662, 0x3F847AE140000000
  %664 = fadd fast float %663, %661
  store float %664, float* %658, align 4, !tbaa !60, !noalias !54
  %665 = getelementptr inbounds [8 x float], [8 x float]* %27, i32 0, i32 6
  %666 = load float, float* %665, align 4, !tbaa !60, !noalias !54
  %667 = fadd fast float %666, %621
  %668 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %667)  ; FMax(a,b)
  %669 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %667)  ; FMin(a,b)
  %670 = fmul fast float %669, 0x3F847AE140000000
  %671 = fadd fast float %670, %668
  store float %671, float* %665, align 4, !tbaa !60, !noalias !54
  %672 = getelementptr inbounds [8 x float], [8 x float]* %27, i32 0, i32 7
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
  %713 = getelementptr inbounds [8 x float], [8 x float]* %29, i32 0, i32 %434
  store float %712, float* %713, align 4, !tbaa !60, !noalias !54
  %714 = fadd fast float %712, %433
  %715 = add nuw nsw i32 %434, 1
  %716 = icmp eq i32 %715, 8
  br i1 %716, label %720, label %717

; <label>:717                                     ; preds = %606
  %718 = getelementptr inbounds [8 x i32], [8 x i32]* %28, i32 0, i32 %715
  %719 = load i32, i32* %718, align 4, !tbaa !50, !noalias !54
  br label %431

; <label>:720                                     ; preds = %606
  %721 = fcmp fast ugt float %714, 0x3EE4F8B580000000
  br i1 %721, label %722, label %861, !dx.controlflow.hints !62

; <label>:722                                     ; preds = %720
  %723 = fcmp fast ogt float %714, 0x3EE4F8B580000000
  %724 = fdiv fast float 1.000000e+00, %714
  %725 = select i1 %723, float %724, float 1.000000e+00
  %726 = getelementptr inbounds [8 x float], [8 x float]* %29, i32 0, i32 0
  %727 = load float, float* %726, align 4, !tbaa !60, !noalias !54
  %728 = fmul fast float %727, %725
  store float %728, float* %726, align 4, !tbaa !60, !noalias !54
  %729 = getelementptr inbounds [8 x float], [8 x float]* %29, i32 0, i32 1
  %730 = load float, float* %729, align 4, !tbaa !60, !noalias !54
  %731 = fmul fast float %730, %725
  store float %731, float* %729, align 4, !tbaa !60, !noalias !54
  %732 = getelementptr inbounds [8 x float], [8 x float]* %29, i32 0, i32 2
  %733 = load float, float* %732, align 4, !tbaa !60, !noalias !54
  %734 = fmul fast float %733, %725
  store float %734, float* %732, align 4, !tbaa !60, !noalias !54
  %735 = getelementptr inbounds [8 x float], [8 x float]* %29, i32 0, i32 3
  %736 = load float, float* %735, align 4, !tbaa !60, !noalias !54
  %737 = fmul fast float %736, %725
  store float %737, float* %735, align 4, !tbaa !60, !noalias !54
  %738 = getelementptr inbounds [8 x float], [8 x float]* %29, i32 0, i32 4
  %739 = load float, float* %738, align 4, !tbaa !60, !noalias !54
  %740 = fmul fast float %739, %725
  store float %740, float* %738, align 4, !tbaa !60, !noalias !54
  %741 = getelementptr inbounds [8 x float], [8 x float]* %29, i32 0, i32 5
  %742 = load float, float* %741, align 4, !tbaa !60, !noalias !54
  %743 = fmul fast float %742, %725
  store float %743, float* %741, align 4, !tbaa !60, !noalias !54
  %744 = getelementptr inbounds [8 x float], [8 x float]* %29, i32 0, i32 6
  %745 = load float, float* %744, align 4, !tbaa !60, !noalias !54
  %746 = fmul fast float %745, %725
  store float %746, float* %744, align 4, !tbaa !60, !noalias !54
  %747 = getelementptr inbounds [8 x float], [8 x float]* %29, i32 0, i32 7
  %748 = load float, float* %747, align 4, !tbaa !60, !noalias !54
  %749 = fmul fast float %748, %725
  store float %749, float* %747, align 4, !tbaa !60, !noalias !54
  br label %750

; <label>:750                                     ; preds = %855, %722
  %751 = phi float [ %859, %855 ], [ %728, %722 ]
  %752 = phi i32 [ %857, %855 ], [ %359, %722 ]
  %753 = phi float [ %834, %855 ], [ 0.000000e+00, %722 ]
  %754 = phi float [ %832, %855 ], [ 0.000000e+00, %722 ]
  %755 = phi float [ %830, %855 ], [ 0.000000e+00, %722 ]
  %756 = phi float [ %826, %855 ], [ 0.000000e+00, %722 ]
  %757 = phi float [ %843, %855 ], [ 0.000000e+00, %722 ]
  %758 = phi float [ %841, %855 ], [ 0.000000e+00, %722 ]
  %759 = phi float [ %839, %855 ], [ 0.000000e+00, %722 ]
  %760 = phi float [ %836, %855 ], [ 0.000000e+00, %722 ]
  %761 = phi float [ %852, %855 ], [ 0.000000e+00, %722 ]
  %762 = phi float [ %850, %855 ], [ 0.000000e+00, %722 ]
  %763 = phi float [ %848, %855 ], [ 0.000000e+00, %722 ]
  %764 = phi float [ %845, %855 ], [ 0.000000e+00, %722 ]
  %765 = phi i32 [ %853, %855 ], [ 0, %722 ]
  %766 = shl i32 %752, 5
  %767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %766, i32 undef)  ; BufferLoad(srv,index,wot)
  %768 = extractvalue %dx.types.ResRet.i32 %767, 0
  %769 = extractvalue %dx.types.ResRet.i32 %767, 1
  %770 = extractvalue %dx.types.ResRet.i32 %767, 3
  %771 = or i32 %766, 16
  %772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %771, i32 undef)  ; BufferLoad(srv,index,wot)
  %773 = extractvalue %dx.types.ResRet.i32 %772, 1
  %774 = shl i32 %768, 4
  %775 = and i32 %774, 32752
  %776 = call float @dx.op.legacyF16ToF32(i32 131, i32 %775)  ; LegacyF16ToF32(value)
  %777 = lshr i32 %768, 7
  %778 = and i32 %777, 32752
  %779 = call float @dx.op.legacyF16ToF32(i32 131, i32 %778)  ; LegacyF16ToF32(value)
  %780 = lshr i32 %768, 22
  %781 = shl nuw nsw i32 %780, 5
  %782 = call float @dx.op.legacyF16ToF32(i32 131, i32 %781)  ; LegacyF16ToF32(value)
  %783 = and i32 %769, 255
  %784 = uitofp i32 %783 to float
  %785 = fmul fast float %784, 0x3F80204080000000
  %786 = fadd fast float %785, -1.000000e+00
  %787 = lshr i32 %769, 8
  %788 = and i32 %787, 255
  %789 = uitofp i32 %788 to float
  %790 = fmul fast float %789, 0x3F80204080000000
  %791 = fadd fast float %790, -1.000000e+00
  %792 = lshr i32 %769, 16
  %793 = and i32 %792, 255
  %794 = uitofp i32 %793 to float
  %795 = fmul fast float %794, 0x3F80204080000000
  %796 = fadd fast float %795, -1.000000e+00
  %797 = and i32 %770, 255
  %798 = uitofp i32 %797 to float
  %799 = fmul fast float %798, 0x3F80204080000000
  %800 = fadd fast float %799, -1.000000e+00
  %801 = lshr i32 %770, 8
  %802 = and i32 %801, 255
  %803 = uitofp i32 %802 to float
  %804 = fmul fast float %803, 0x3F80204080000000
  %805 = fadd fast float %804, -1.000000e+00
  %806 = lshr i32 %770, 16
  %807 = and i32 %806, 255
  %808 = uitofp i32 %807 to float
  %809 = fmul fast float %808, 0x3F80204080000000
  %810 = fadd fast float %809, -1.000000e+00
  %811 = and i32 %773, 255
  %812 = uitofp i32 %811 to float
  %813 = fmul fast float %812, 0x3F80204080000000
  %814 = fadd fast float %813, -1.000000e+00
  %815 = lshr i32 %773, 8
  %816 = and i32 %815, 255
  %817 = uitofp i32 %816 to float
  %818 = fmul fast float %817, 0x3F80204080000000
  %819 = fadd fast float %818, -1.000000e+00
  %820 = lshr i32 %773, 16
  %821 = and i32 %820, 255
  %822 = uitofp i32 %821 to float
  %823 = fmul fast float %822, 0x3F80204080000000
  %824 = fadd fast float %823, -1.000000e+00
  %825 = fmul fast float %776, %751
  %826 = fadd fast float %825, %756
  %827 = fmul fast float %751, 0x3FFBB67AE0000000
  %828 = fmul fast float %827, %776
  %829 = fmul fast float %828, %786
  %830 = fadd fast float %829, %755
  %831 = fmul fast float %828, %791
  %832 = fadd fast float %831, %754
  %833 = fmul fast float %828, %796
  %834 = fadd fast float %833, %753
  %835 = fmul fast float %779, %751
  %836 = fadd fast float %835, %760
  %837 = fmul fast float %827, %779
  %838 = fmul fast float %837, %800
  %839 = fadd fast float %838, %759
  %840 = fmul fast float %837, %805
  %841 = fadd fast float %840, %758
  %842 = fmul fast float %837, %810
  %843 = fadd fast float %842, %757
  %844 = fmul fast float %782, %751
  %845 = fadd fast float %844, %764
  %846 = fmul fast float %827, %782
  %847 = fmul fast float %846, %814
  %848 = fadd fast float %847, %763
  %849 = fmul fast float %846, %819
  %850 = fadd fast float %849, %762
  %851 = fmul fast float %846, %824
  %852 = fadd fast float %851, %761
  %853 = add nuw nsw i32 %765, 1
  %854 = icmp eq i32 %853, 8
  br i1 %854, label %860, label %855

; <label>:855                                     ; preds = %750
  %856 = getelementptr inbounds [8 x i32], [8 x i32]* %28, i32 0, i32 %853
  %857 = load i32, i32* %856, align 4, !tbaa !50, !noalias !54
  %858 = getelementptr inbounds [8 x float], [8 x float]* %29, i32 0, i32 %853
  %859 = load float, float* %858, align 4, !tbaa !60, !noalias !54
  br label %750

; <label>:860                                     ; preds = %750
  br label %861

; <label>:861                                     ; preds = %860, %720, %287, %268, %240
  %862 = phi float [ 0.000000e+00, %240 ], [ 0.000000e+00, %268 ], [ 0.000000e+00, %287 ], [ 0.000000e+00, %720 ], [ %834, %860 ]
  %863 = phi float [ 0.000000e+00, %240 ], [ 0.000000e+00, %268 ], [ 0.000000e+00, %287 ], [ 0.000000e+00, %720 ], [ %832, %860 ]
  %864 = phi float [ 0.000000e+00, %240 ], [ 0.000000e+00, %268 ], [ 0.000000e+00, %287 ], [ 0.000000e+00, %720 ], [ %830, %860 ]
  %865 = phi float [ 0.000000e+00, %240 ], [ 0.000000e+00, %268 ], [ 0.000000e+00, %287 ], [ 0.000000e+00, %720 ], [ %826, %860 ]
  %866 = phi float [ 0.000000e+00, %240 ], [ 0.000000e+00, %268 ], [ 0.000000e+00, %287 ], [ 0.000000e+00, %720 ], [ %843, %860 ]
  %867 = phi float [ 0.000000e+00, %240 ], [ 0.000000e+00, %268 ], [ 0.000000e+00, %287 ], [ 0.000000e+00, %720 ], [ %841, %860 ]
  %868 = phi float [ 0.000000e+00, %240 ], [ 0.000000e+00, %268 ], [ 0.000000e+00, %287 ], [ 0.000000e+00, %720 ], [ %839, %860 ]
  %869 = phi float [ 0.000000e+00, %240 ], [ 0.000000e+00, %268 ], [ 0.000000e+00, %287 ], [ 0.000000e+00, %720 ], [ %836, %860 ]
  %870 = phi float [ 0.000000e+00, %240 ], [ 0.000000e+00, %268 ], [ 0.000000e+00, %287 ], [ 0.000000e+00, %720 ], [ %852, %860 ]
  %871 = phi float [ 0.000000e+00, %240 ], [ 0.000000e+00, %268 ], [ 0.000000e+00, %287 ], [ 0.000000e+00, %720 ], [ %850, %860 ]
  %872 = phi float [ 0.000000e+00, %240 ], [ 0.000000e+00, %268 ], [ 0.000000e+00, %287 ], [ 0.000000e+00, %720 ], [ %848, %860 ]
  %873 = phi float [ 0.000000e+00, %240 ], [ 0.000000e+00, %268 ], [ 0.000000e+00, %287 ], [ 0.000000e+00, %720 ], [ %845, %860 ]
  %874 = phi i1 [ false, %240 ], [ false, %268 ], [ false, %287 ], [ false, %720 ], [ true, %860 ]
  br i1 %874, label %910, label %875, !dx.controlflow.hints !63

; <label>:875                                     ; preds = %861
  %876 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %877 = extractvalue %dx.types.ResRet.i32 %876, 1
  %878 = extractvalue %dx.types.ResRet.i32 %876, 2
  %879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %880 = extractvalue %dx.types.ResRet.i32 %879, 0
  %881 = extractvalue %dx.types.ResRet.i32 %879, 1
  %882 = extractvalue %dx.types.ResRet.i32 %879, 2
  %883 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %884 = extractvalue %dx.types.ResRet.i32 %883, 0
  %885 = extractvalue %dx.types.ResRet.i32 %883, 1
  %886 = and i32 %884, 65535
  %887 = call float @dx.op.legacyF16ToF32(i32 131, i32 %886)  ; LegacyF16ToF32(value)
  %888 = lshr i32 %884, 16
  %889 = call float @dx.op.legacyF16ToF32(i32 131, i32 %888)  ; LegacyF16ToF32(value)
  %890 = and i32 %885, 65535
  %891 = call float @dx.op.legacyF16ToF32(i32 131, i32 %890)  ; LegacyF16ToF32(value)
  %892 = lshr i32 %885, 16
  %893 = call float @dx.op.legacyF16ToF32(i32 131, i32 %892)  ; LegacyF16ToF32(value)
  %894 = lshr i32 %880, 16
  %895 = call float @dx.op.legacyF16ToF32(i32 131, i32 %894)  ; LegacyF16ToF32(value)
  %896 = and i32 %881, 65535
  %897 = call float @dx.op.legacyF16ToF32(i32 131, i32 %896)  ; LegacyF16ToF32(value)
  %898 = lshr i32 %881, 16
  %899 = call float @dx.op.legacyF16ToF32(i32 131, i32 %898)  ; LegacyF16ToF32(value)
  %900 = and i32 %882, 65535
  %901 = call float @dx.op.legacyF16ToF32(i32 131, i32 %900)  ; LegacyF16ToF32(value)
  %902 = and i32 %877, 65535
  %903 = call float @dx.op.legacyF16ToF32(i32 131, i32 %902)  ; LegacyF16ToF32(value)
  %904 = lshr i32 %877, 16
  %905 = call float @dx.op.legacyF16ToF32(i32 131, i32 %904)  ; LegacyF16ToF32(value)
  %906 = and i32 %878, 65535
  %907 = call float @dx.op.legacyF16ToF32(i32 131, i32 %906)  ; LegacyF16ToF32(value)
  %908 = lshr i32 %878, 16
  %909 = call float @dx.op.legacyF16ToF32(i32 131, i32 %908)  ; LegacyF16ToF32(value)
  br label %910

; <label>:910                                     ; preds = %875, %861, %237
  %911 = phi float [ %909, %875 ], [ %870, %861 ], [ 0.000000e+00, %237 ]
  %912 = phi float [ %907, %875 ], [ %871, %861 ], [ 0.000000e+00, %237 ]
  %913 = phi float [ %905, %875 ], [ %872, %861 ], [ 0.000000e+00, %237 ]
  %914 = phi float [ %903, %875 ], [ %873, %861 ], [ 0.000000e+00, %237 ]
  %915 = phi float [ %901, %875 ], [ %866, %861 ], [ 0.000000e+00, %237 ]
  %916 = phi float [ %899, %875 ], [ %867, %861 ], [ 0.000000e+00, %237 ]
  %917 = phi float [ %897, %875 ], [ %868, %861 ], [ 0.000000e+00, %237 ]
  %918 = phi float [ %895, %875 ], [ %869, %861 ], [ 0.000000e+00, %237 ]
  %919 = phi float [ %893, %875 ], [ %862, %861 ], [ 0.000000e+00, %237 ]
  %920 = phi float [ %891, %875 ], [ %863, %861 ], [ 0.000000e+00, %237 ]
  %921 = phi float [ %889, %875 ], [ %864, %861 ], [ 0.000000e+00, %237 ]
  %922 = phi float [ %887, %875 ], [ %865, %861 ], [ 0.000000e+00, %237 ]
  %923 = fcmp fast olt float %238, 1.000000e+00
  br i1 %923, label %924, label %1569, !dx.controlflow.hints !64

; <label>:924                                     ; preds = %910
  %925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %926 = extractvalue %dx.types.CBufRet.f32 %925, 0
  %927 = extractvalue %dx.types.CBufRet.f32 %925, 1
  %928 = fsub fast float %188, %926
  %929 = fsub fast float %193, %927
  %930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %931 = extractvalue %dx.types.CBufRet.f32 %930, 0
  %932 = extractvalue %dx.types.CBufRet.f32 %930, 1
  %933 = fmul fast float %928, %931
  %934 = fmul fast float %929, %932
  %935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %936 = extractvalue %dx.types.CBufRet.f32 %935, 0
  %937 = fmul fast float %936, %933
  %938 = extractvalue %dx.types.CBufRet.f32 %935, 1
  %939 = fadd fast float %937, %938
  %940 = extractvalue %dx.types.CBufRet.f32 %935, 2
  %941 = fmul fast float %940, %934
  %942 = extractvalue %dx.types.CBufRet.f32 %935, 3
  %943 = fadd fast float %941, %942
  %944 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %22, float %939, float %943, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %945 = extractvalue %dx.types.ResRet.f32 %944, 0
  %946 = extractvalue %dx.types.ResRet.f32 %944, 1
  %947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %948 = extractvalue %dx.types.CBufRet.f32 %947, 1
  %949 = extractvalue %dx.types.CBufRet.f32 %947, 0
  %950 = fsub fast float %948, %949
  %951 = fmul fast float %950, %945
  %952 = fadd fast float %951, %949
  %953 = extractvalue %dx.types.CBufRet.f32 %947, 3
  %954 = extractvalue %dx.types.CBufRet.f32 %947, 2
  %955 = fsub fast float %953, %954
  %956 = fmul fast float %955, %946
  %957 = fadd fast float %956, %954
  %958 = fsub fast float %198, %952
  %959 = fsub fast float %957, %952
  %960 = fdiv fast float %958, %959
  %961 = call float @dx.op.unary.f32(i32 7, float %960)  ; Saturate(value)
  %962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %963 = extractvalue %dx.types.CBufRet.f32 %962, 0
  %964 = fmul fast float %963, %961
  %965 = extractvalue %dx.types.CBufRet.f32 %962, 1
  %966 = fadd fast float %964, %965
  %967 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %22, float %939, float %943, float %966, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %968 = extractvalue %dx.types.ResRet.f32 %967, 0
  %969 = extractvalue %dx.types.ResRet.f32 %967, 1
  %970 = extractvalue %dx.types.ResRet.f32 %967, 2
  %971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %972 = extractvalue %dx.types.CBufRet.f32 %971, 0
  %973 = extractvalue %dx.types.CBufRet.f32 %971, 1
  %974 = extractvalue %dx.types.CBufRet.f32 %971, 2
  %975 = fmul fast float %972, %968
  %976 = fmul fast float %973, %969
  %977 = fmul fast float %974, %970
  %978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %979 = extractvalue %dx.types.CBufRet.f32 %978, 0
  %980 = extractvalue %dx.types.CBufRet.f32 %978, 1
  %981 = extractvalue %dx.types.CBufRet.f32 %978, 2
  %982 = fadd fast float %975, %979
  %983 = fadd fast float %976, %980
  %984 = fadd fast float %977, %981
  %985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %986 = extractvalue %dx.types.CBufRet.f32 %985, 0
  %987 = fmul fast float %986, %933
  %988 = extractvalue %dx.types.CBufRet.f32 %985, 1
  %989 = fadd fast float %987, %988
  %990 = extractvalue %dx.types.CBufRet.f32 %985, 2
  %991 = fmul fast float %990, %934
  %992 = extractvalue %dx.types.CBufRet.f32 %985, 3
  %993 = fadd fast float %991, %992
  %994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %995 = extractvalue %dx.types.CBufRet.f32 %994, 0
  %996 = extractvalue %dx.types.CBufRet.f32 %994, 1
  %997 = extractvalue %dx.types.CBufRet.f32 %994, 2
  %998 = extractvalue %dx.types.CBufRet.f32 %994, 3
  %999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %1000 = extractvalue %dx.types.CBufRet.f32 %999, 0
  %1001 = extractvalue %dx.types.CBufRet.f32 %999, 1
  %1002 = extractvalue %dx.types.CBufRet.f32 %999, 2
  %1003 = extractvalue %dx.types.CBufRet.f32 %999, 3
  %1004 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %22, float %989, float %993, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1005 = extractvalue %dx.types.ResRet.f32 %1004, 0
  %1006 = extractvalue %dx.types.ResRet.f32 %1004, 1
  %1007 = extractvalue %dx.types.ResRet.f32 %1004, 2
  %1008 = extractvalue %dx.types.ResRet.f32 %1004, 3
  %1009 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %22, float %989, float %993, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1010 = extractvalue %dx.types.ResRet.f32 %1009, 0
  %1011 = extractvalue %dx.types.ResRet.f32 %1009, 1
  %1012 = extractvalue %dx.types.ResRet.f32 %1009, 2
  %1013 = extractvalue %dx.types.ResRet.f32 %1009, 3
  %1014 = fmul fast float %1005, %982
  %1015 = fmul fast float %1010, %982
  %1016 = fmul fast float %1012, %982
  %1017 = fmul fast float %1008, %982
  %1018 = fadd fast float %1014, %995
  %1019 = fadd fast float %1015, %996
  %1020 = fadd fast float %1016, %997
  %1021 = fadd fast float %1017, %998
  %1022 = fmul fast float %1006, %982
  %1023 = fmul fast float %1011, %982
  %1024 = fadd fast float %1022, %1000
  %1025 = fadd fast float %1023, %1001
  %1026 = fmul fast float %1007, %982
  %1027 = fmul fast float %1013, %982
  %1028 = fadd fast float %1026, %1002
  %1029 = fadd fast float %1027, %1003
  %1030 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %22, float %989, float %993, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1031 = extractvalue %dx.types.ResRet.f32 %1030, 0
  %1032 = extractvalue %dx.types.ResRet.f32 %1030, 1
  %1033 = extractvalue %dx.types.ResRet.f32 %1030, 2
  %1034 = extractvalue %dx.types.ResRet.f32 %1030, 3
  %1035 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %22, float %989, float %993, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1036 = extractvalue %dx.types.ResRet.f32 %1035, 0
  %1037 = extractvalue %dx.types.ResRet.f32 %1035, 1
  %1038 = extractvalue %dx.types.ResRet.f32 %1035, 2
  %1039 = extractvalue %dx.types.ResRet.f32 %1035, 3
  %1040 = fmul fast float %1031, %983
  %1041 = fmul fast float %1036, %983
  %1042 = fmul fast float %1038, %983
  %1043 = fmul fast float %1034, %983
  %1044 = fadd fast float %1018, %1040
  %1045 = fadd fast float %1019, %1041
  %1046 = fadd fast float %1020, %1042
  %1047 = fadd fast float %1021, %1043
  %1048 = fmul fast float %1032, %983
  %1049 = fmul fast float %1037, %983
  %1050 = fadd fast float %1024, %1048
  %1051 = fadd fast float %1025, %1049
  %1052 = fmul fast float %1033, %983
  %1053 = fmul fast float %1039, %983
  %1054 = fadd fast float %1028, %1052
  %1055 = fadd fast float %1029, %1053
  %1056 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %22, float %989, float %993, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1057 = extractvalue %dx.types.ResRet.f32 %1056, 0
  %1058 = extractvalue %dx.types.ResRet.f32 %1056, 1
  %1059 = extractvalue %dx.types.ResRet.f32 %1056, 2
  %1060 = extractvalue %dx.types.ResRet.f32 %1056, 3
  %1061 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %22, float %989, float %993, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1062 = extractvalue %dx.types.ResRet.f32 %1061, 0
  %1063 = extractvalue %dx.types.ResRet.f32 %1061, 1
  %1064 = extractvalue %dx.types.ResRet.f32 %1061, 2
  %1065 = extractvalue %dx.types.ResRet.f32 %1061, 3
  %1066 = fmul fast float %1057, %984
  %1067 = fmul fast float %1062, %984
  %1068 = fmul fast float %1064, %984
  %1069 = fmul fast float %1060, %984
  %1070 = fadd fast float %1044, %1066
  %1071 = fadd fast float %1045, %1067
  %1072 = fadd fast float %1046, %1068
  %1073 = fadd fast float %1047, %1069
  %1074 = fmul fast float %1058, %984
  %1075 = fmul fast float %1063, %984
  %1076 = fadd fast float %1050, %1074
  %1077 = fadd fast float %1051, %1075
  %1078 = fmul fast float %1059, %984
  %1079 = fmul fast float %1065, %984
  %1080 = fadd fast float %1054, %1078
  %1081 = fadd fast float %1055, %1079
  %1082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %1083 = extractvalue %dx.types.CBufRet.f32 %1082, 0
  %1084 = fsub fast float %188, %1083
  %1085 = fsub fast float %926, %188
  %1086 = call float @dx.op.binary.f32(i32 35, float %1085, float %1084)  ; FMax(a,b)
  %1087 = extractvalue %dx.types.CBufRet.f32 %1082, 1
  %1088 = fsub fast float %193, %1087
  %1089 = fsub fast float %927, %193
  %1090 = call float @dx.op.binary.f32(i32 35, float %1089, float %1088)  ; FMax(a,b)
  %1091 = call float @dx.op.binary.f32(i32 35, float %1086, float %1090)  ; FMax(a,b)
  %1092 = extractvalue %dx.types.CBufRet.f32 %930, 3
  %1093 = fmul fast float %1092, %1091
  %1094 = call float @dx.op.unary.f32(i32 7, float %1093)  ; Saturate(value)
  %1095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %1096 = extractvalue %dx.types.CBufRet.f32 %1095, 0
  %1097 = extractvalue %dx.types.CBufRet.f32 %1095, 1
  %1098 = extractvalue %dx.types.CBufRet.f32 %1095, 2
  %1099 = extractvalue %dx.types.CBufRet.f32 %1095, 3
  %1100 = fsub fast float %1096, %1070
  %1101 = fsub fast float %1097, %1071
  %1102 = fsub fast float %1098, %1072
  %1103 = fsub fast float %1099, %1073
  %1104 = fmul fast float %1100, %1094
  %1105 = fmul fast float %1101, %1094
  %1106 = fmul fast float %1102, %1094
  %1107 = fmul fast float %1103, %1094
  %1108 = fadd fast float %1104, %1070
  %1109 = fadd fast float %1105, %1071
  %1110 = fadd fast float %1106, %1072
  %1111 = fadd fast float %1107, %1073
  %1112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %1113 = extractvalue %dx.types.CBufRet.f32 %1112, 0
  %1114 = extractvalue %dx.types.CBufRet.f32 %1112, 1
  %1115 = fsub fast float %1113, %1076
  %1116 = fsub fast float %1114, %1077
  %1117 = fmul fast float %1115, %1094
  %1118 = fmul fast float %1116, %1094
  %1119 = fadd fast float %1117, %1076
  %1120 = fadd fast float %1118, %1077
  %1121 = extractvalue %dx.types.CBufRet.f32 %1112, 2
  %1122 = extractvalue %dx.types.CBufRet.f32 %1112, 3
  %1123 = fsub fast float %1121, %1080
  %1124 = fsub fast float %1122, %1081
  %1125 = fmul fast float %1123, %1094
  %1126 = fmul fast float %1124, %1094
  %1127 = fadd fast float %1125, %1080
  %1128 = fadd fast float %1126, %1081
  %1129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %1130 = extractvalue %dx.types.CBufRet.f32 %1129, 0
  %1131 = fmul fast float %1130, %1108
  %1132 = fmul fast float %1130, %1109
  %1133 = fmul fast float %1130, %1110
  %1134 = fmul fast float %1130, %1111
  %1135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %1136 = extractvalue %dx.types.CBufRet.f32 %1135, 0
  %1137 = fmul fast float %1136, %1119
  %1138 = fmul fast float %1136, %1120
  %1139 = fadd fast float %1137, %1131
  %1140 = fadd fast float %1138, %1133
  %1141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %1142 = extractvalue %dx.types.CBufRet.f32 %1141, 0
  %1143 = fmul fast float %1142, %1127
  %1144 = fmul fast float %1142, %1128
  %1145 = fadd fast float %1139, %1143
  %1146 = fadd fast float %1140, %1144
  %1147 = extractvalue %dx.types.CBufRet.f32 %1129, 1
  %1148 = fmul fast float %1147, %1108
  %1149 = fmul fast float %1147, %1109
  %1150 = fmul fast float %1147, %1110
  %1151 = fmul fast float %1147, %1111
  %1152 = extractvalue %dx.types.CBufRet.f32 %1135, 1
  %1153 = fmul fast float %1152, %1119
  %1154 = fmul fast float %1152, %1120
  %1155 = fadd fast float %1153, %1148
  %1156 = fadd fast float %1154, %1150
  %1157 = extractvalue %dx.types.CBufRet.f32 %1141, 1
  %1158 = fmul fast float %1157, %1127
  %1159 = fmul fast float %1157, %1128
  %1160 = fadd fast float %1155, %1158
  %1161 = fadd fast float %1156, %1159
  %1162 = extractvalue %dx.types.CBufRet.f32 %1129, 2
  %1163 = fmul fast float %1162, %1108
  %1164 = fmul fast float %1162, %1109
  %1165 = fmul fast float %1162, %1110
  %1166 = fmul fast float %1162, %1111
  %1167 = extractvalue %dx.types.CBufRet.f32 %1135, 2
  %1168 = fmul fast float %1167, %1119
  %1169 = fmul fast float %1167, %1120
  %1170 = fadd fast float %1168, %1163
  %1171 = fadd fast float %1169, %1165
  %1172 = extractvalue %dx.types.CBufRet.f32 %1141, 2
  %1173 = fmul fast float %1172, %1127
  %1174 = fmul fast float %1172, %1128
  %1175 = fadd fast float %1170, %1173
  %1176 = fadd fast float %1171, %1174
  %1177 = fmul fast float %1164, %1164
  %1178 = fmul fast float %1176, %1176
  %1179 = fmul fast float %1166, %1166
  %1180 = fadd fast float %1179, %1177
  %1181 = fadd fast float %1180, %1178
  %1182 = call float @dx.op.unary.f32(i32 24, float %1181)  ; Sqrt(value)
  %1183 = fcmp fast ugt float %1182, 0.000000e+00
  br i1 %1183, label %1184, label %1199, !dx.controlflow.hints !65

; <label>:1184                                    ; preds = %924
  %1185 = fsub fast float -0.000000e+00, %1166
  %1186 = fdiv fast float %1185, %1182
  %1187 = fsub fast float -0.000000e+00, %1164
  %1188 = fdiv fast float %1187, %1182
  %1189 = fdiv fast float %1176, %1182
  %1190 = fmul fast float %1175, 0x3FE279A760000000
  %1191 = fmul fast float %1188, %1164
  %1192 = fmul fast float %1189, %1176
  %1193 = fmul fast float %1186, %1166
  %1194 = fadd fast float %1191, %1193
  %1195 = fsub fast float %1194, %1192
  %1196 = call float @dx.op.unary.f32(i32 6, float %1195)  ; FAbs(value)
  %1197 = fadd fast float %1196, 0x3DDB7CDFE0000000
  %1198 = fdiv fast float %1190, %1197
  br label %1199

; <label>:1199                                    ; preds = %1184, %924
  %1200 = phi float [ %1198, %1184 ], [ 1.000000e+00, %924 ]
  %1201 = fmul fast float %1149, %1149
  %1202 = fmul fast float %1161, %1161
  %1203 = fmul fast float %1151, %1151
  %1204 = fadd fast float %1203, %1201
  %1205 = fadd fast float %1204, %1202
  %1206 = call float @dx.op.unary.f32(i32 24, float %1205)  ; Sqrt(value)
  %1207 = fcmp fast ugt float %1206, 0.000000e+00
  br i1 %1207, label %1208, label %1223, !dx.controlflow.hints !65

; <label>:1208                                    ; preds = %1199
  %1209 = fsub fast float -0.000000e+00, %1151
  %1210 = fdiv fast float %1209, %1206
  %1211 = fsub fast float -0.000000e+00, %1149
  %1212 = fdiv fast float %1211, %1206
  %1213 = fdiv fast float %1161, %1206
  %1214 = fmul fast float %1160, 0x3FE279A760000000
  %1215 = fmul fast float %1212, %1149
  %1216 = fmul fast float %1213, %1161
  %1217 = fmul fast float %1210, %1151
  %1218 = fadd fast float %1215, %1217
  %1219 = fsub fast float %1218, %1216
  %1220 = call float @dx.op.unary.f32(i32 6, float %1219)  ; FAbs(value)
  %1221 = fadd fast float %1220, 0x3DDB7CDFE0000000
  %1222 = fdiv fast float %1214, %1221
  br label %1223

; <label>:1223                                    ; preds = %1208, %1199
  %1224 = phi float [ %1222, %1208 ], [ 1.000000e+00, %1199 ]
  %1225 = call float @dx.op.binary.f32(i32 36, float %1224, float %1200)  ; FMin(a,b)
  %1226 = fmul fast float %1132, %1132
  %1227 = fmul fast float %1146, %1146
  %1228 = fmul fast float %1134, %1134
  %1229 = fadd fast float %1228, %1226
  %1230 = fadd fast float %1229, %1227
  %1231 = call float @dx.op.unary.f32(i32 24, float %1230)  ; Sqrt(value)
  %1232 = fcmp fast ugt float %1231, 0.000000e+00
  br i1 %1232, label %1233, label %1248, !dx.controlflow.hints !65

; <label>:1233                                    ; preds = %1223
  %1234 = fsub fast float -0.000000e+00, %1134
  %1235 = fdiv fast float %1234, %1231
  %1236 = fsub fast float -0.000000e+00, %1132
  %1237 = fdiv fast float %1236, %1231
  %1238 = fdiv fast float %1146, %1231
  %1239 = fmul fast float %1145, 0x3FE279A760000000
  %1240 = fmul fast float %1237, %1132
  %1241 = fmul fast float %1238, %1146
  %1242 = fmul fast float %1235, %1134
  %1243 = fadd fast float %1240, %1242
  %1244 = fsub fast float %1243, %1241
  %1245 = call float @dx.op.unary.f32(i32 6, float %1244)  ; FAbs(value)
  %1246 = fadd fast float %1245, 0x3DDB7CDFE0000000
  %1247 = fdiv fast float %1239, %1246
  br label %1248

; <label>:1248                                    ; preds = %1233, %1223
  %1249 = phi float [ %1247, %1233 ], [ 1.000000e+00, %1223 ]
  %1250 = call float @dx.op.binary.f32(i32 36, float %1249, float %1225)  ; FMin(a,b)
  %1251 = call float @dx.op.unary.f32(i32 7, float %1250)  ; Saturate(value)
  %1252 = fcmp fast olt float %1251, 1.000000e+00
  br i1 %1252, label %1253, label %1263, !dx.controlflow.hints !66

; <label>:1253                                    ; preds = %1248
  %1254 = fmul fast float %1251, %1132
  %1255 = fmul fast float %1251, %1146
  %1256 = fmul fast float %1251, %1134
  %1257 = fmul fast float %1251, %1149
  %1258 = fmul fast float %1251, %1161
  %1259 = fmul fast float %1251, %1151
  %1260 = fmul fast float %1251, %1164
  %1261 = fmul fast float %1251, %1176
  %1262 = fmul fast float %1251, %1166
  br label %1263

; <label>:1263                                    ; preds = %1253, %1248
  %1264 = phi float [ %1260, %1253 ], [ %1164, %1248 ]
  %1265 = phi float [ %1261, %1253 ], [ %1176, %1248 ]
  %1266 = phi float [ %1262, %1253 ], [ %1166, %1248 ]
  %1267 = phi float [ %1257, %1253 ], [ %1149, %1248 ]
  %1268 = phi float [ %1258, %1253 ], [ %1161, %1248 ]
  %1269 = phi float [ %1259, %1253 ], [ %1151, %1248 ]
  %1270 = phi float [ %1254, %1253 ], [ %1132, %1248 ]
  %1271 = phi float [ %1255, %1253 ], [ %1146, %1248 ]
  %1272 = phi float [ %1256, %1253 ], [ %1134, %1248 ]
  %1273 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1145)  ; FMax(a,b)
  %1274 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1160)  ; FMax(a,b)
  %1275 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1175)  ; FMax(a,b)
  %1276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %1277 = extractvalue %dx.types.CBufRet.f32 %1276, 0
  %1278 = fcmp fast ogt float %1277, 0.000000e+00
  %1279 = fcmp fast oge float %933, 0.000000e+00
  %1280 = and i1 %1279, %1278
  %1281 = fcmp fast ole float %933, 1.000000e+00
  %1282 = and i1 %1281, %1280
  %1283 = fcmp fast oge float %934, 0.000000e+00
  %1284 = and i1 %1283, %1282
  %1285 = fcmp fast ole float %934, 1.000000e+00
  %1286 = and i1 %1285, %1284
  br i1 %1286, label %1287, label %1432, !dx.controlflow.hints !67

; <label>:1287                                    ; preds = %1263
  %1288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1289 = extractvalue %dx.types.CBufRet.f32 %1288, 2
  %1290 = extractvalue %dx.types.CBufRet.f32 %1288, 3
  %1291 = fmul fast float %1289, %933
  %1292 = fmul fast float %1290, %934
  %1293 = call float @dx.op.unary.f32(i32 27, float %1291)  ; Round_ni(value)
  %1294 = call float @dx.op.unary.f32(i32 27, float %1292)  ; Round_ni(value)
  %1295 = fptosi float %1293 to i32
  %1296 = fptosi float %1294 to i32
  %1297 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %16, i32 0, i32 %1295, i32 %1296, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1298 = extractvalue %dx.types.ResRet.i32 %1297, 0
  %1299 = and i32 %1298, 65535
  %1300 = lshr i32 %1298, 16
  %1301 = icmp eq i32 %1299, 65535
  br i1 %1301, label %1338, label %1302, !dx.controlflow.hints !68

; <label>:1302                                    ; preds = %1287
  %1303 = extractvalue %dx.types.CBufRet.f32 %1276, 1
  %1304 = extractvalue %dx.types.CBufRet.f32 %1288, 0
  %1305 = extractvalue %dx.types.CBufRet.f32 %1288, 1
  %1306 = fmul fast float %1304, %933
  %1307 = fmul fast float %1305, %934
  %1308 = fmul fast float %1306, 1.250000e-01
  %1309 = fmul fast float %1307, 1.250000e-01
  %1310 = call float @dx.op.unary.f32(i32 27, float %1308)  ; Round_ni(value)
  %1311 = call float @dx.op.unary.f32(i32 27, float %1309)  ; Round_ni(value)
  %1312 = fmul fast float %1310, 8.000000e+00
  %1313 = fmul fast float %1311, 8.000000e+00
  %1314 = and i32 %1298, 255
  %1315 = lshr i32 %1298, 8
  %1316 = and i32 %1315, 255
  %1317 = mul nuw nsw i32 %1314, 9
  %1318 = uitofp i32 %1317 to float
  %1319 = mul nuw nsw i32 %1316, 9
  %1320 = uitofp i32 %1319 to float
  %1321 = fadd fast float %1318, 5.000000e-01
  %1322 = fadd fast float %1321, %1306
  %1323 = fsub fast float %1322, %1312
  %1324 = fadd fast float %1320, 5.000000e-01
  %1325 = fadd fast float %1324, %1307
  %1326 = fsub fast float %1325, %1313
  %1327 = fdiv fast float %1323, %1277
  %1328 = fdiv fast float %1326, %1303
  %1329 = fmul fast float %961, 4.375000e-01
  %1330 = fadd fast float %1329, 3.125000e-02
  %1331 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %22, float %1327, float %1328, float %1330, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1332 = extractvalue %dx.types.ResRet.f32 %1331, 0
  %1333 = extractvalue %dx.types.ResRet.f32 %1331, 1
  %1334 = extractvalue %dx.types.ResRet.f32 %1331, 2
  %1335 = fadd fast float %1332, %1273
  %1336 = fadd fast float %1333, %1274
  %1337 = fadd fast float %1334, %1275
  br label %1338

; <label>:1338                                    ; preds = %1302, %1287
  %1339 = phi float [ %1337, %1302 ], [ %1275, %1287 ]
  %1340 = phi float [ %1336, %1302 ], [ %1274, %1287 ]
  %1341 = phi float [ %1335, %1302 ], [ %1273, %1287 ]
  %1342 = icmp eq i32 %1300, 65535
  br i1 %1342, label %1432, label %1343, !dx.controlflow.hints !69

; <label>:1343                                    ; preds = %1338
  %1344 = extractvalue %dx.types.CBufRet.f32 %1276, 1
  %1345 = extractvalue %dx.types.CBufRet.f32 %1288, 0
  %1346 = extractvalue %dx.types.CBufRet.f32 %1288, 1
  %1347 = fmul fast float %1345, %933
  %1348 = fmul fast float %1346, %934
  %1349 = fmul fast float %1347, 1.250000e-01
  %1350 = fmul fast float %1348, 1.250000e-01
  %1351 = call float @dx.op.unary.f32(i32 27, float %1349)  ; Round_ni(value)
  %1352 = call float @dx.op.unary.f32(i32 27, float %1350)  ; Round_ni(value)
  %1353 = fmul fast float %1351, 8.000000e+00
  %1354 = fmul fast float %1352, 8.000000e+00
  %1355 = fsub fast float %1347, %1353
  %1356 = fsub fast float %1348, %1354
  %1357 = fadd fast float %1355, 5.000000e-01
  %1358 = fadd fast float %1356, 5.000000e-01
  %1359 = and i32 %1300, 255
  %1360 = lshr i32 %1298, 24
  %1361 = mul nuw nsw i32 %1359, 9
  %1362 = uitofp i32 %1361 to float
  %1363 = mul nuw nsw i32 %1360, 9
  %1364 = uitofp i32 %1363 to float
  %1365 = fadd fast float %1357, %1362
  %1366 = fadd fast float %1358, %1364
  %1367 = fdiv fast float %1365, %1277
  %1368 = fdiv fast float %1366, %1344
  %1369 = fmul fast float %961, 4.375000e-01
  %1370 = fadd fast float %1369, 3.125000e-02
  %1371 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %22, float %1367, float %1368, float %1370, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1372 = extractvalue %dx.types.ResRet.f32 %1371, 0
  %1373 = extractvalue %dx.types.ResRet.f32 %1371, 1
  %1374 = extractvalue %dx.types.ResRet.f32 %1371, 2
  %1375 = fadd fast float %1369, 5.312500e-01
  %1376 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %22, float %1367, float %1368, float %1375, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1377 = extractvalue %dx.types.ResRet.f32 %1376, 0
  %1378 = extractvalue %dx.types.ResRet.f32 %1376, 1
  %1379 = extractvalue %dx.types.ResRet.f32 %1376, 2
  %1380 = fmul fast float %1377, 2.000000e+00
  %1381 = fmul fast float %1378, 2.000000e+00
  %1382 = fmul fast float %1379, 2.000000e+00
  %1383 = fadd fast float %1380, -1.000000e+00
  %1384 = fadd fast float %1381, -1.000000e+00
  %1385 = fadd fast float %1382, -1.000000e+00
  %1386 = fmul fast float %1383, %1383
  %1387 = fmul fast float %1384, %1384
  %1388 = fadd fast float %1386, %1387
  %1389 = fmul fast float %1385, %1385
  %1390 = fadd fast float %1388, %1389
  %1391 = call float @dx.op.unary.f32(i32 24, float %1390)  ; Sqrt(value)
  %1392 = fcmp fast ogt float %1391, 0.000000e+00
  br i1 %1392, label %1393, label %1397, !dx.controlflow.hints !70

; <label>:1393                                    ; preds = %1343
  %1394 = fdiv fast float %1383, %1391
  %1395 = fdiv fast float %1384, %1391
  %1396 = fdiv fast float %1385, %1391
  br label %1397

; <label>:1397                                    ; preds = %1393, %1343
  %1398 = phi float [ %1394, %1393 ], [ 0.000000e+00, %1343 ]
  %1399 = phi float [ %1395, %1393 ], [ 0.000000e+00, %1343 ]
  %1400 = phi float [ %1396, %1393 ], [ 0.000000e+00, %1343 ]
  %1401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1402 = extractvalue %dx.types.CBufRet.f32 %1401, 0
  %1403 = extractvalue %dx.types.CBufRet.f32 %1401, 1
  %1404 = fsub fast float %188, %1402
  %1405 = fsub fast float %193, %1403
  %1406 = fmul fast float %1404, %1404
  %1407 = fmul fast float %1405, %1405
  %1408 = fadd fast float %1406, %1407
  %1409 = call float @dx.op.unary.f32(i32 24, float %1408)  ; Sqrt(value)
  %1410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1411 = extractvalue %dx.types.CBufRet.f32 %1410, 0
  %1412 = extractvalue %dx.types.CBufRet.f32 %1410, 1
  %1413 = fsub fast float %1409, %1411
  %1414 = fdiv fast float %1413, %1412
  %1415 = call float @dx.op.unary.f32(i32 7, float %1414)  ; Saturate(value)
  %1416 = fmul fast float %1415, 2.000000e+00
  %1417 = fsub fast float 3.000000e+00, %1416
  %1418 = fmul fast float %1415, %1415
  %1419 = fmul fast float %1418, %1417
  %1420 = call float @dx.op.dot3.f32(i32 55, float %1398, float %1399, float %1400, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1421 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1420)  ; FMax(a,b)
  %1422 = fmul fast float %1421, 0x400C5BF8A0000000
  %1423 = fmul fast float %1419, %1372
  %1424 = fmul fast float %1423, %1422
  %1425 = fadd fast float %1424, %1341
  %1426 = fmul fast float %1419, %1373
  %1427 = fmul fast float %1426, %1422
  %1428 = fadd fast float %1427, %1340
  %1429 = fmul fast float %1419, %1374
  %1430 = fmul fast float %1429, %1422
  %1431 = fadd fast float %1430, %1339
  br label %1432

; <label>:1432                                    ; preds = %1397, %1338, %1263
  %1433 = phi float [ %1431, %1397 ], [ %1339, %1338 ], [ %1275, %1263 ]
  %1434 = phi float [ %1428, %1397 ], [ %1340, %1338 ], [ %1274, %1263 ]
  %1435 = phi float [ %1425, %1397 ], [ %1341, %1338 ], [ %1273, %1263 ]
  %1436 = fcmp fast ogt float %198, %957
  %1437 = and i1 %1279, %1436
  %1438 = and i1 %1281, %1437
  %1439 = and i1 %1283, %1438
  %1440 = and i1 %1285, %1439
  br i1 %1440, label %1441, label %1498, !dx.controlflow.hints !71

; <label>:1441                                    ; preds = %1432
  %1442 = fmul fast float %959, 0x3FC24924A0000000
  %1443 = fsub fast float %198, %957
  %1444 = fdiv fast float %1443, %1442
  %1445 = call float @dx.op.unary.f32(i32 7, float %1444)  ; Saturate(value)
  %1446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %1447 = extractvalue %dx.types.CBufRet.f32 %1446, 0
  %1448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %1449 = extractvalue %dx.types.CBufRet.f32 %1448, 0
  %1450 = extractvalue %dx.types.CBufRet.f32 %1448, 1
  %1451 = extractvalue %dx.types.CBufRet.f32 %1448, 2
  %1452 = fsub fast float %1447, %1435
  %1453 = fsub fast float %1449, %1270
  %1454 = fsub fast float %1450, %1271
  %1455 = fsub fast float %1451, %1272
  %1456 = fmul fast float %1452, %1445
  %1457 = fmul fast float %1453, %1445
  %1458 = fmul fast float %1454, %1445
  %1459 = fmul fast float %1455, %1445
  %1460 = fadd fast float %1456, %1435
  %1461 = fadd fast float %1457, %1270
  %1462 = fadd fast float %1458, %1271
  %1463 = fadd fast float %1459, %1272
  %1464 = extractvalue %dx.types.CBufRet.f32 %1446, 1
  %1465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %1466 = extractvalue %dx.types.CBufRet.f32 %1465, 0
  %1467 = extractvalue %dx.types.CBufRet.f32 %1465, 1
  %1468 = extractvalue %dx.types.CBufRet.f32 %1465, 2
  %1469 = fsub fast float %1464, %1434
  %1470 = fsub fast float %1466, %1267
  %1471 = fsub fast float %1467, %1268
  %1472 = fsub fast float %1468, %1269
  %1473 = fmul fast float %1469, %1445
  %1474 = fmul fast float %1470, %1445
  %1475 = fmul fast float %1471, %1445
  %1476 = fmul fast float %1472, %1445
  %1477 = fadd fast float %1473, %1434
  %1478 = fadd fast float %1474, %1267
  %1479 = fadd fast float %1475, %1268
  %1480 = fadd fast float %1476, %1269
  %1481 = extractvalue %dx.types.CBufRet.f32 %1446, 2
  %1482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %1483 = extractvalue %dx.types.CBufRet.f32 %1482, 0
  %1484 = extractvalue %dx.types.CBufRet.f32 %1482, 1
  %1485 = extractvalue %dx.types.CBufRet.f32 %1482, 2
  %1486 = fsub fast float %1481, %1433
  %1487 = fsub fast float %1483, %1264
  %1488 = fsub fast float %1484, %1265
  %1489 = fsub fast float %1485, %1266
  %1490 = fmul fast float %1486, %1445
  %1491 = fmul fast float %1487, %1445
  %1492 = fmul fast float %1488, %1445
  %1493 = fmul fast float %1489, %1445
  %1494 = fadd fast float %1490, %1433
  %1495 = fadd fast float %1491, %1264
  %1496 = fadd fast float %1492, %1265
  %1497 = fadd fast float %1493, %1266
  br label %1498

; <label>:1498                                    ; preds = %1441, %1432
  %1499 = phi float [ %1494, %1441 ], [ %1433, %1432 ]
  %1500 = phi float [ %1495, %1441 ], [ %1264, %1432 ]
  %1501 = phi float [ %1496, %1441 ], [ %1265, %1432 ]
  %1502 = phi float [ %1497, %1441 ], [ %1266, %1432 ]
  %1503 = phi float [ %1477, %1441 ], [ %1434, %1432 ]
  %1504 = phi float [ %1478, %1441 ], [ %1267, %1432 ]
  %1505 = phi float [ %1479, %1441 ], [ %1268, %1432 ]
  %1506 = phi float [ %1480, %1441 ], [ %1269, %1432 ]
  %1507 = phi float [ %1460, %1441 ], [ %1435, %1432 ]
  %1508 = phi float [ %1461, %1441 ], [ %1270, %1432 ]
  %1509 = phi float [ %1462, %1441 ], [ %1271, %1432 ]
  %1510 = phi float [ %1463, %1441 ], [ %1272, %1432 ]
  %1511 = extractvalue %dx.types.CBufRet.f32 %1082, 3
  %1512 = fmul fast float %1511, %1507
  %1513 = fmul fast float %1511, %1503
  %1514 = fmul fast float %1511, %1499
  %1515 = fmul fast float %1508, 1.500000e+00
  %1516 = fmul fast float %1515, %1511
  %1517 = fmul fast float %1509, 1.500000e+00
  %1518 = fmul fast float %1517, %1511
  %1519 = fmul fast float %1510, 1.500000e+00
  %1520 = fmul fast float %1519, %1511
  %1521 = fmul fast float %1504, 1.500000e+00
  %1522 = fmul fast float %1521, %1511
  %1523 = fmul fast float %1505, 1.500000e+00
  %1524 = fmul fast float %1523, %1511
  %1525 = fmul fast float %1506, 1.500000e+00
  %1526 = fmul fast float %1525, %1511
  %1527 = fmul fast float %1500, 1.500000e+00
  %1528 = fmul fast float %1527, %1511
  %1529 = fmul fast float %1501, 1.500000e+00
  %1530 = fmul fast float %1529, %1511
  %1531 = fmul fast float %1502, 1.500000e+00
  %1532 = fmul fast float %1531, %1511
  %1533 = fsub fast float %922, %1512
  %1534 = fmul fast float %1533, %238
  %1535 = fadd fast float %1534, %1512
  %1536 = fsub fast float %921, %1516
  %1537 = fmul fast float %1536, %238
  %1538 = fadd fast float %1537, %1516
  %1539 = fsub fast float %920, %1518
  %1540 = fmul fast float %1539, %238
  %1541 = fadd fast float %1540, %1518
  %1542 = fsub fast float %919, %1520
  %1543 = fmul fast float %1542, %238
  %1544 = fadd fast float %1543, %1520
  %1545 = fsub fast float %918, %1513
  %1546 = fmul fast float %1545, %238
  %1547 = fadd fast float %1546, %1513
  %1548 = fsub fast float %917, %1522
  %1549 = fmul fast float %1548, %238
  %1550 = fadd fast float %1549, %1522
  %1551 = fsub fast float %916, %1524
  %1552 = fmul fast float %1551, %238
  %1553 = fadd fast float %1552, %1524
  %1554 = fsub fast float %915, %1526
  %1555 = fmul fast float %1554, %238
  %1556 = fadd fast float %1555, %1526
  %1557 = fsub fast float %914, %1514
  %1558 = fmul fast float %1557, %238
  %1559 = fadd fast float %1558, %1514
  %1560 = fsub fast float %913, %1528
  %1561 = fmul fast float %1560, %238
  %1562 = fadd fast float %1561, %1528
  %1563 = fsub fast float %912, %1530
  %1564 = fmul fast float %1563, %238
  %1565 = fadd fast float %1564, %1530
  %1566 = fsub fast float %911, %1532
  %1567 = fmul fast float %1566, %238
  %1568 = fadd fast float %1567, %1532
  br label %1569

; <label>:1569                                    ; preds = %1498, %910
  %1570 = phi float [ %911, %910 ], [ %1568, %1498 ]
  %1571 = phi float [ %912, %910 ], [ %1565, %1498 ]
  %1572 = phi float [ %913, %910 ], [ %1562, %1498 ]
  %1573 = phi float [ %914, %910 ], [ %1559, %1498 ]
  %1574 = phi float [ %915, %910 ], [ %1556, %1498 ]
  %1575 = phi float [ %916, %910 ], [ %1553, %1498 ]
  %1576 = phi float [ %917, %910 ], [ %1550, %1498 ]
  %1577 = phi float [ %918, %910 ], [ %1547, %1498 ]
  %1578 = phi float [ %919, %910 ], [ %1544, %1498 ]
  %1579 = phi float [ %920, %910 ], [ %1541, %1498 ]
  %1580 = phi float [ %921, %910 ], [ %1538, %1498 ]
  %1581 = phi float [ %922, %910 ], [ %1535, %1498 ]
  %1582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1583 = extractvalue %dx.types.CBufRet.f32 %1582, 3
  %1584 = fmul fast float %1583, %1581
  %1585 = fmul fast float %1583, %1580
  %1586 = fmul fast float %1583, %1579
  %1587 = fmul fast float %1583, %1578
  %1588 = extractvalue %dx.types.CBufRet.f32 %1582, 0
  %1589 = fmul fast float %1584, %1588
  %1590 = fmul fast float %1585, %1588
  %1591 = fmul fast float %1586, %1588
  %1592 = fmul fast float %1587, %1588
  %1593 = fmul fast float %1583, %1577
  %1594 = fmul fast float %1583, %1576
  %1595 = fmul fast float %1583, %1575
  %1596 = fmul fast float %1583, %1574
  %1597 = fmul fast float %1593, %1588
  %1598 = fmul fast float %1594, %1588
  %1599 = fmul fast float %1595, %1588
  %1600 = fmul fast float %1596, %1588
  %1601 = fmul fast float %1583, %1573
  %1602 = fmul fast float %1583, %1572
  %1603 = fmul fast float %1583, %1571
  %1604 = fmul fast float %1583, %1570
  %1605 = fmul fast float %1601, %1588
  %1606 = fmul fast float %1602, %1588
  %1607 = fmul fast float %1603, %1588
  %1608 = fmul fast float %1604, %1588
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %166, i32 %167, i32 0, float %1589, float %1590, float %1591, float %1592, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %166, i32 %167, i32 1, float %1597, float %1598, float %1599, float %1600, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %166, i32 %167, i32 2, float %1605, float %1606, float %1607, float %1608, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1609 = add i32 %167, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %166, i32 %1609, i32 0, float %1589, float %1590, float %1591, float %1592, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %166, i32 %1609, i32 1, float %1597, float %1598, float %1599, float %1600, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %166, i32 %1609, i32 2, float %1605, float %1606, float %1607, float %1608, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1610 = add i32 %166, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1610, i32 %167, i32 0, float %1589, float %1590, float %1591, float %1592, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1610, i32 %167, i32 1, float %1597, float %1598, float %1599, float %1600, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1610, i32 %167, i32 2, float %1605, float %1606, float %1607, float %1608, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1610, i32 %1609, i32 0, float %1589, float %1590, float %1591, float %1592, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1610, i32 %1609, i32 1, float %1597, float %1598, float %1599, float %1600, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1610, i32 %1609, i32 2, float %1605, float %1606, float %1607, float %1608, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1611

; <label>:1611                                    ; preds = %1569, %0
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
!38 = !{void ()* @cs_del_sh_sample_lightgrid_4_lowres, !"cs_del_sh_sample_lightgrid_4_lowres", null, !4, !39}
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

