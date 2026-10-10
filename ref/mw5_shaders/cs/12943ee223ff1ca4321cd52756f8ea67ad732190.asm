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
; shader hash: 88e628e39812473149f5fc0010af27ce
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

define void @cs_del_sh_sample_lightgrid_8_lowres() {
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
  %32 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %31, i32 0)  ; BufferLoad(srv,index,wot)
  %33 = extractvalue %dx.types.ResRet.i32 %32, 0
  %34 = icmp ult i32 %26, %33
  br i1 %34, label %35, label %2011, !dx.controlflow.hints !41

; <label>:35                                      ; preds = %0
  %36 = add i32 %31, 3
  %37 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 %36)  ; CBufferLoadLegacy(handle,regIndex)
  %38 = extractvalue %dx.types.CBufRet.i32 %37, 2
  %39 = call i32 @dx.op.threadId.i32(i32 93, i32 2)  ; ThreadId(component)
  %40 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %41 = shl i32 %40, 1
  %42 = shl i32 %39, 1
  %43 = add i32 %38, %26
  %44 = shl i32 %43, 5
  %45 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %44, i32 undef)  ; BufferLoad(srv,index,wot)
  %46 = extractvalue %dx.types.ResRet.i32 %45, 0
  %47 = extractvalue %dx.types.ResRet.i32 %45, 1
  %48 = extractvalue %dx.types.ResRet.i32 %45, 2
  %49 = extractvalue %dx.types.ResRet.i32 %45, 3
  %50 = lshr i32 %49, 14
  %51 = and i32 %50, 16383
  %52 = and i32 %49, 16383
  %53 = bitcast i32 %46 to float
  %54 = bitcast i32 %47 to float
  %55 = bitcast i32 %48 to float
  %56 = and i32 %49, 536870912
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %97, label %58, !dx.controlflow.hints !42

; <label>:58                                      ; preds = %35
  %59 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %60 = extractvalue %dx.types.CBufRet.f32 %59, 2
  %61 = extractvalue %dx.types.CBufRet.f32 %59, 3
  %62 = fmul fast float %60, %53
  %63 = fmul fast float %61, %54
  %64 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %65 = extractvalue %dx.types.CBufRet.f32 %64, 0
  %66 = extractvalue %dx.types.CBufRet.f32 %64, 1
  %67 = fadd fast float %62, %65
  %68 = fadd fast float %63, %66
  %69 = call float @dx.op.unary.f32(i32 7, float %67)  ; Saturate(value)
  %70 = call float @dx.op.unary.f32(i32 7, float %68)  ; Saturate(value)
  %71 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %22, float %69, float %70, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %72 = extractvalue %dx.types.ResRet.f32 %71, 0
  %73 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %74 = extractvalue %dx.types.CBufRet.f32 %73, 0
  %75 = fmul fast float %74, %72
  %76 = fsub fast float %67, %69
  %77 = fsub fast float %68, %70
  %78 = extractvalue %dx.types.CBufRet.f32 %59, 0
  %79 = extractvalue %dx.types.CBufRet.f32 %59, 1
  %80 = fmul fast float %78, %76
  %81 = fmul fast float %79, %77
  %82 = fmul fast float %80, %80
  %83 = fmul fast float %81, %81
  %84 = fadd fast float %82, %83
  %85 = call float @dx.op.unary.f32(i32 24, float %84)  ; Sqrt(value)
  %86 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %87 = extractvalue %dx.types.CBufRet.f32 %86, 3
  %88 = fmul fast float %87, %85
  %89 = call float @dx.op.unary.f32(i32 7, float %88)  ; Saturate(value)
  %90 = extractvalue %dx.types.CBufRet.f32 %86, 2
  %91 = fsub fast float %90, %75
  %92 = fmul fast float %91, %89
  %93 = extractvalue %dx.types.CBufRet.f32 %73, 1
  %94 = fadd fast float %75, %55
  %95 = fadd fast float %94, %93
  %96 = fadd fast float %95, %92
  br label %97

; <label>:97                                      ; preds = %58, %35
  %98 = phi float [ %96, %58 ], [ %55, %35 ]
  %99 = and i32 %49, 268435456
  %100 = icmp eq i32 %99, 0
  %101 = or i32 %44, 16
  %102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %101, i32 undef)  ; BufferLoad(srv,index,wot)
  %103 = extractvalue %dx.types.ResRet.i32 %102, 0
  %104 = extractvalue %dx.types.ResRet.i32 %102, 1
  %105 = extractvalue %dx.types.ResRet.i32 %102, 2
  %106 = extractvalue %dx.types.ResRet.i32 %102, 3
  %107 = and i32 %103, 65535
  %108 = call float @dx.op.legacyF16ToF32(i32 131, i32 %107)  ; LegacyF16ToF32(value)
  %109 = lshr i32 %103, 16
  %110 = call float @dx.op.legacyF16ToF32(i32 131, i32 %109)  ; LegacyF16ToF32(value)
  %111 = and i32 %104, 1023
  %112 = uitofp i32 %111 to float
  %113 = lshr i32 %104, 10
  %114 = and i32 %113, 1023
  %115 = uitofp i32 %114 to float
  %116 = lshr i32 %104, 20
  %117 = and i32 %116, 1023
  %118 = uitofp i32 %117 to float
  %119 = fmul fast float %112, 0x3F60040100000000
  %120 = fmul fast float %115, 0x3F60040100000000
  %121 = fmul fast float %118, 0x3F60040100000000
  %122 = fadd fast float %119, -1.000000e+00
  %123 = fadd fast float %120, -1.000000e+00
  %124 = fadd fast float %121, -1.000000e+00
  %125 = and i32 %105, 1023
  %126 = uitofp i32 %125 to float
  %127 = lshr i32 %105, 10
  %128 = and i32 %127, 1023
  %129 = uitofp i32 %128 to float
  %130 = lshr i32 %105, 20
  %131 = and i32 %130, 1023
  %132 = uitofp i32 %131 to float
  %133 = fmul fast float %126, 0x3F60040100000000
  %134 = fmul fast float %129, 0x3F60040100000000
  %135 = fmul fast float %132, 0x3F60040100000000
  %136 = fadd fast float %133, -1.000000e+00
  %137 = fadd fast float %134, -1.000000e+00
  %138 = fadd fast float %135, -1.000000e+00
  %139 = and i32 %106, 65535
  %140 = call float @dx.op.legacyF16ToF32(i32 131, i32 %139)  ; LegacyF16ToF32(value)
  %141 = lshr i32 %106, 16
  %142 = call float @dx.op.legacyF16ToF32(i32 131, i32 %141)  ; LegacyF16ToF32(value)
  %143 = call float @dx.op.unary.f32(i32 13, float %140)  ; Sin(value)
  %144 = call float @dx.op.unary.f32(i32 12, float %140)  ; Cos(value)
  %145 = fmul fast float %144, %122
  %146 = fmul fast float %144, %123
  %147 = fmul fast float %144, %124
  %148 = fmul fast float %143, %136
  %149 = fmul fast float %137, %143
  %150 = fmul fast float %138, %143
  %151 = fadd fast float %145, %148
  %152 = fadd fast float %146, %149
  %153 = fadd fast float %147, %150
  %154 = fmul fast float %151, %108
  %155 = fmul fast float %152, %108
  %156 = fmul fast float %153, %108
  %157 = fmul fast float %143, %122
  %158 = fmul fast float %123, %143
  %159 = fmul fast float %124, %143
  %160 = fmul fast float %144, %136
  %161 = fmul fast float %144, %137
  %162 = fmul fast float %144, %138
  %163 = fsub fast float %157, %160
  %164 = fsub fast float %158, %161
  %165 = fsub fast float %159, %162
  %166 = fmul fast float %163, %110
  %167 = fmul fast float %164, %110
  %168 = fmul fast float %165, %110
  %169 = add i32 %51, %41
  %170 = add i32 %52, %42
  %171 = uitofp i32 %41 to float
  %172 = uitofp i32 %42 to float
  %173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %174 = extractvalue %dx.types.CBufRet.f32 %173, 1
  %175 = fdiv fast float %171, %174
  %176 = fdiv fast float %172, %174
  %177 = extractvalue %dx.types.CBufRet.f32 %173, 2
  %178 = fmul fast float %177, 2.000000e+00
  %179 = fadd fast float %178, %175
  %180 = fadd fast float %178, %176
  %181 = fmul fast float %179, %154
  %182 = fmul fast float %179, %155
  %183 = fmul fast float %179, %156
  %184 = fmul fast float %180, %166
  %185 = fmul fast float %180, %167
  %186 = fmul fast float %180, %168
  %187 = fadd fast float %184, %181
  %188 = fmul fast float %187, 2.000000e+00
  %189 = fsub fast float %53, %154
  %190 = fsub fast float %189, %166
  %191 = fadd fast float %190, %188
  %192 = fadd fast float %185, %182
  %193 = fmul fast float %192, 2.000000e+00
  %194 = fsub fast float %54, %155
  %195 = fsub fast float %194, %167
  %196 = fadd fast float %195, %193
  %197 = fadd fast float %186, %183
  %198 = fmul fast float %197, 2.000000e+00
  %199 = fsub fast float %98, %156
  %200 = fsub fast float %199, %168
  %201 = fadd fast float %200, %198
  %202 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %203 = extractvalue %dx.types.CBufRet.i32 %202, 0
  %204 = icmp eq i32 %203, 1
  br i1 %204, label %205, label %240, !dx.controlflow.hints !43

; <label>:205                                     ; preds = %97
  %206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %207 = extractvalue %dx.types.CBufRet.f32 %206, 0
  %208 = extractvalue %dx.types.CBufRet.f32 %206, 1
  %209 = fsub fast float %191, %207
  %210 = fsub fast float %196, %208
  %211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %212 = extractvalue %dx.types.CBufRet.f32 %211, 0
  %213 = extractvalue %dx.types.CBufRet.f32 %211, 1
  %214 = fmul fast float %209, %212
  %215 = fmul fast float %210, %213
  %216 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %22, float %214, float %215, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %217 = extractvalue %dx.types.ResRet.f32 %216, 0
  %218 = fcmp fast ogt float %217, 0.000000e+00
  %219 = extractvalue %dx.types.CBufRet.i32 %202, 3
  %220 = icmp ne i32 %219, 0
  %221 = and i1 %218, %220
  br i1 %221, label %222, label %240, !dx.controlflow.hints !44

; <label>:222                                     ; preds = %205
  %223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %224 = extractvalue %dx.types.CBufRet.f32 %223, 0
  %225 = extractvalue %dx.types.CBufRet.f32 %223, 1
  %226 = fsub fast float %191, %224
  %227 = fsub fast float %196, %225
  %228 = fmul fast float %226, %226
  %229 = fmul fast float %227, %227
  %230 = fadd fast float %228, %229
  %231 = uitofp i32 %219 to float
  %232 = fmul fast float %231, %231
  %233 = fcmp fast ogt float %230, %232
  br i1 %233, label %240, label %234, !dx.controlflow.hints !45

; <label>:234                                     ; preds = %222
  %235 = call float @dx.op.unary.f32(i32 24, float %230)  ; Sqrt(value)
  %236 = fsub fast float %231, %235
  %237 = fmul fast float %236, 0x3F75555560000000
  %238 = call float @dx.op.unary.f32(i32 7, float %237)  ; Saturate(value)
  %239 = call float @dx.op.binary.f32(i32 36, float %238, float %217)  ; FMin(a,b)
  br label %240

; <label>:240                                     ; preds = %234, %222, %205, %97
  %241 = phi float [ 1.000000e+00, %97 ], [ %239, %234 ], [ %217, %205 ], [ 0.000000e+00, %222 ]
  %242 = fcmp fast ogt float %241, 0.000000e+00
  br i1 %242, label %243, label %1088, !dx.controlflow.hints !46

; <label>:243                                     ; preds = %240
  %244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %245 = extractvalue %dx.types.CBufRet.f32 %244, 0
  %246 = extractvalue %dx.types.CBufRet.f32 %244, 1
  %247 = extractvalue %dx.types.CBufRet.f32 %244, 2
  %248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %249 = extractvalue %dx.types.CBufRet.f32 %248, 0
  %250 = extractvalue %dx.types.CBufRet.f32 %248, 1
  %251 = extractvalue %dx.types.CBufRet.f32 %248, 2
  %252 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %253 = extractvalue %dx.types.CBufRet.i32 %252, 1
  %254 = fsub fast float %191, %245
  %255 = fsub fast float %196, %246
  %256 = fsub fast float %201, %247
  %257 = fmul fast float %254, %249
  %258 = fmul fast float %255, %250
  %259 = fmul fast float %256, %251
  %260 = fcmp fast ole float %257, 0.000000e+00
  %261 = fcmp fast ole float %258, 0.000000e+00
  %262 = fcmp fast ole float %259, 0.000000e+00
  %263 = or i1 %260, %261
  %264 = or i1 %262, %263
  %265 = fcmp fast oge float %257, 1.000000e+00
  %266 = fcmp fast oge float %258, 1.000000e+00
  %267 = fcmp fast oge float %259, 1.000000e+00
  %268 = or i1 %265, %266
  %269 = or i1 %267, %268
  %270 = or i1 %264, %269
  br i1 %270, label %986, label %271, !dx.controlflow.hints !47

; <label>:271                                     ; preds = %243
  %272 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %273 = extractvalue %dx.types.CBufRet.i32 %272, 0
  %274 = fptosi float %254 to i32
  %275 = fptosi float %255 to i32
  %276 = fptosi float %256 to i32
  %277 = and i32 %253, 31
  %278 = ashr i32 %274, %277
  %279 = ashr i32 %275, %277
  %280 = ashr i32 %276, %277
  %281 = mul i32 %273, %279
  %282 = add nsw i32 %281, %278
  %283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %282, i32 0)  ; BufferLoad(srv,index,wot)
  %284 = extractvalue %dx.types.ResRet.i32 %283, 0
  %285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %282, i32 4)  ; BufferLoad(srv,index,wot)
  %286 = extractvalue %dx.types.ResRet.i32 %285, 0
  %287 = icmp slt i32 %280, %284
  %288 = icmp sgt i32 %280, %286
  %289 = or i1 %287, %288
  br i1 %289, label %986, label %290, !dx.controlflow.hints !48

; <label>:290                                     ; preds = %271
  %291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %282, i32 8)  ; BufferLoad(srv,index,wot)
  %292 = extractvalue %dx.types.ResRet.i32 %291, 0
  %293 = sub i32 %280, %284
  %294 = add nsw i32 %293, %292
  %295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %294, i32 undef)  ; BufferLoad(srv,index,wot)
  %296 = extractvalue %dx.types.ResRet.i32 %295, 0
  %297 = icmp eq i32 %296, -1
  br i1 %297, label %986, label %298, !dx.controlflow.hints !49

; <label>:298                                     ; preds = %290
  %299 = getelementptr inbounds [8 x i32], [8 x i32]* %28, i32 0, i32 0
  store i32 -1, i32* %299, align 4, !tbaa !50, !noalias !54
  %300 = getelementptr inbounds [8 x i32], [8 x i32]* %28, i32 0, i32 1
  store i32 -1, i32* %300, align 4, !tbaa !50, !noalias !54
  %301 = getelementptr inbounds [8 x i32], [8 x i32]* %28, i32 0, i32 2
  store i32 -1, i32* %301, align 4, !tbaa !50, !noalias !54
  %302 = getelementptr inbounds [8 x i32], [8 x i32]* %28, i32 0, i32 3
  store i32 -1, i32* %302, align 4, !tbaa !50, !noalias !54
  %303 = getelementptr inbounds [8 x i32], [8 x i32]* %28, i32 0, i32 4
  store i32 -1, i32* %303, align 4, !tbaa !50, !noalias !54
  %304 = getelementptr inbounds [8 x i32], [8 x i32]* %28, i32 0, i32 5
  store i32 -1, i32* %304, align 4, !tbaa !50, !noalias !54
  %305 = getelementptr inbounds [8 x i32], [8 x i32]* %28, i32 0, i32 6
  store i32 -1, i32* %305, align 4, !tbaa !50, !noalias !54
  %306 = getelementptr inbounds [8 x i32], [8 x i32]* %28, i32 0, i32 7
  store i32 -1, i32* %306, align 4, !tbaa !50, !noalias !54
  br label %307

; <label>:307                                     ; preds = %411, %298
  %308 = phi i32 [ -1, %298 ], [ %408, %411 ]
  %309 = phi i32 [ -1, %298 ], [ %403, %411 ]
  %310 = phi i32 [ -1, %298 ], [ %396, %411 ]
  %311 = phi i32 [ -1, %298 ], [ %391, %411 ]
  %312 = phi i32 [ -1, %298 ], [ %382, %411 ]
  %313 = phi i32 [ -1, %298 ], [ %377, %411 ]
  %314 = phi i32 [ -1, %298 ], [ %369, %411 ]
  %315 = phi i32 [ -1, %298 ], [ %362, %411 ]
  %316 = phi i32 [ %296, %298 ], [ %431, %411 ]
  %317 = phi i32 [ %253, %298 ], [ %318, %411 ]
  %318 = add nsw i32 %317, -2
  %319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %316, i32 undef)  ; BufferLoad(srv,index,wot)
  %320 = extractvalue %dx.types.ResRet.i32 %319, 0
  %321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %316, i32 undef)  ; BufferLoad(srv,index,wot)
  %322 = extractvalue %dx.types.ResRet.i32 %321, 0
  %323 = and i32 %320, 31
  %324 = shl i32 1, %323
  %325 = add i32 %324, 1
  %326 = and i32 %318, 31
  %327 = ashr i32 %274, %326
  %328 = ashr i32 %275, %326
  %329 = ashr i32 %276, %326
  %330 = and i32 %327, 3
  %331 = and i32 %328, 3
  %332 = and i32 %329, 3
  br label %333

; <label>:333                                     ; preds = %333, %307
  %334 = phi i32 [ %308, %307 ], [ %408, %333 ]
  %335 = phi i32 [ %309, %307 ], [ %403, %333 ]
  %336 = phi i32 [ %310, %307 ], [ %396, %333 ]
  %337 = phi i32 [ %311, %307 ], [ %391, %333 ]
  %338 = phi i32 [ %312, %307 ], [ %382, %333 ]
  %339 = phi i32 [ %313, %307 ], [ %377, %333 ]
  %340 = phi i32 [ %314, %307 ], [ %369, %333 ]
  %341 = phi i32 [ %315, %307 ], [ %362, %333 ]
  %342 = phi i32 [ 0, %307 ], [ %409, %333 ]
  %343 = sub i32 2, %342
  %344 = and i32 %343, 31
  %345 = lshr i32 %330, %344
  %346 = lshr i32 %331, %344
  %347 = lshr i32 %332, %344
  %348 = sub i32 %320, %342
  %349 = and i32 %348, 31
  %350 = shl i32 %345, %349
  %351 = shl i32 %346, %349
  %352 = shl i32 %347, %349
  %353 = shl i32 1, %349
  %354 = mul i32 %352, %325
  %355 = add i32 %354, %351
  %356 = mul i32 %355, %325
  %357 = add i32 %350, %322
  %358 = add i32 %357, %356
  %359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %358, i32 undef)  ; BufferLoad(srv,index,wot)
  %360 = extractvalue %dx.types.ResRet.i32 %359, 0
  %361 = icmp ne i32 %360, -1
  %362 = select i1 %361, i32 %360, i32 %341
  store i32 %362, i32* %299, align 4, !tbaa !50, !noalias !54
  %363 = add i32 %353, %322
  %364 = add i32 %363, %350
  %365 = add i32 %364, %356
  %366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %365, i32 undef)  ; BufferLoad(srv,index,wot)
  %367 = extractvalue %dx.types.ResRet.i32 %366, 0
  %368 = icmp ne i32 %367, -1
  %369 = select i1 %368, i32 %367, i32 %340
  store i32 %369, i32* %300, align 4, !tbaa !50, !noalias !54
  %370 = add i32 %351, %353
  %371 = add i32 %370, %354
  %372 = mul i32 %371, %325
  %373 = add i32 %357, %372
  %374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %373, i32 undef)  ; BufferLoad(srv,index,wot)
  %375 = extractvalue %dx.types.ResRet.i32 %374, 0
  %376 = icmp ne i32 %375, -1
  %377 = select i1 %376, i32 %375, i32 %339
  store i32 %377, i32* %301, align 4, !tbaa !50, !noalias !54
  %378 = add i32 %364, %372
  %379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %378, i32 undef)  ; BufferLoad(srv,index,wot)
  %380 = extractvalue %dx.types.ResRet.i32 %379, 0
  %381 = icmp ne i32 %380, -1
  %382 = select i1 %381, i32 %380, i32 %338
  store i32 %382, i32* %302, align 4, !tbaa !50, !noalias !54
  %383 = add i32 %352, %353
  %384 = mul i32 %383, %325
  %385 = add i32 %384, %351
  %386 = mul i32 %385, %325
  %387 = add i32 %357, %386
  %388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %387, i32 undef)  ; BufferLoad(srv,index,wot)
  %389 = extractvalue %dx.types.ResRet.i32 %388, 0
  %390 = icmp ne i32 %389, -1
  %391 = select i1 %390, i32 %389, i32 %337
  store i32 %391, i32* %303, align 4, !tbaa !50, !noalias !54
  %392 = add i32 %364, %386
  %393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %392, i32 undef)  ; BufferLoad(srv,index,wot)
  %394 = extractvalue %dx.types.ResRet.i32 %393, 0
  %395 = icmp ne i32 %394, -1
  %396 = select i1 %395, i32 %394, i32 %336
  store i32 %396, i32* %304, align 4, !tbaa !50, !noalias !54
  %397 = add i32 %370, %384
  %398 = mul i32 %397, %325
  %399 = add i32 %357, %398
  %400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %399, i32 undef)  ; BufferLoad(srv,index,wot)
  %401 = extractvalue %dx.types.ResRet.i32 %400, 0
  %402 = icmp ne i32 %401, -1
  %403 = select i1 %402, i32 %401, i32 %335
  store i32 %403, i32* %305, align 4, !tbaa !50, !noalias !54
  %404 = add i32 %364, %398
  %405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
  %406 = extractvalue %dx.types.ResRet.i32 %405, 0
  %407 = icmp ne i32 %406, -1
  %408 = select i1 %407, i32 %406, i32 %334
  store i32 %408, i32* %306, align 4, !tbaa !50, !noalias !54
  %409 = add i32 %342, 1
  %410 = icmp ugt i32 %409, %320
  br i1 %410, label %411, label %333

; <label>:411                                     ; preds = %333
  %412 = shl nuw nsw i32 %332, 4
  %413 = shl nuw nsw i32 %331, 2
  %414 = lshr i32 %332, 1
  %415 = and i32 %412, 16
  %416 = or i32 %413, %330
  %417 = or i32 %416, %415
  %418 = shl i32 1, %417
  %419 = shl nuw nsw i32 %414, 2
  %420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %316, i32 %419)  ; BufferLoad(srv,index,wot)
  %421 = extractvalue %dx.types.ResRet.i32 %420, 0
  %422 = and i32 %421, %418
  %423 = icmp eq i32 %422, 0
  %424 = add i32 %418, -1
  %425 = and i32 %421, %424
  %426 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %425)  ; Countbits(value)
  %427 = or i32 %419, 8
  %428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %316, i32 %427)  ; BufferLoad(srv,index,wot)
  %429 = extractvalue %dx.types.ResRet.i32 %428, 0
  %430 = add i32 %429, %426
  %431 = select i1 %423, i32 -1, i32 %430
  %432 = icmp eq i32 %431, -1
  br i1 %432, label %433, label %307

; <label>:433                                     ; preds = %411
  br label %434

; <label>:434                                     ; preds = %720, %433
  %435 = phi i32 [ %722, %720 ], [ %362, %433 ]
  %436 = phi float [ %717, %720 ], [ 0.000000e+00, %433 ]
  %437 = phi i32 [ %718, %720 ], [ 0, %433 ]
  %438 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %435, i32 undef)  ; BufferLoad(srv,index,wot)
  %439 = extractvalue %dx.types.ResRet.f32 %438, 0
  %440 = extractvalue %dx.types.ResRet.f32 %438, 1
  %441 = extractvalue %dx.types.ResRet.f32 %438, 2
  %442 = extractvalue %dx.types.ResRet.f32 %438, 3
  %443 = fsub fast float %191, %439
  %444 = fsub fast float %196, %440
  %445 = fsub fast float %201, %441
  %446 = fmul fast float %443, %442
  %447 = fmul fast float %444, %442
  %448 = fmul fast float %445, %442
  %449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %435, i32 undef)  ; BufferLoad(srv,index,wot)
  %450 = extractvalue %dx.types.ResRet.i32 %449, 0
  %451 = call float @dx.op.unary.f32(i32 6, float %446)  ; FAbs(value)
  %452 = call float @dx.op.unary.f32(i32 6, float %447)  ; FAbs(value)
  %453 = fsub fast float 1.000000e+00, %451
  %454 = fsub fast float 1.000000e+00, %452
  %455 = call float @dx.op.unary.f32(i32 7, float %453)  ; Saturate(value)
  %456 = call float @dx.op.unary.f32(i32 7, float %454)  ; Saturate(value)
  %457 = fmul fast float %456, %455
  %458 = mul i32 %450, 29
  %459 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %458, i32 undef)  ; BufferLoad(srv,index,wot)
  %460 = extractvalue %dx.types.ResRet.f32 %459, 0
  %461 = extractvalue %dx.types.ResRet.f32 %459, 1
  %462 = extractvalue %dx.types.ResRet.f32 %459, 2
  %463 = extractvalue %dx.types.ResRet.f32 %459, 3
  %464 = add i32 %458, 1
  %465 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %464, i32 undef)  ; BufferLoad(srv,index,wot)
  %466 = extractvalue %dx.types.ResRet.f32 %465, 0
  %467 = extractvalue %dx.types.ResRet.f32 %465, 1
  %468 = extractvalue %dx.types.ResRet.f32 %465, 2
  %469 = extractvalue %dx.types.ResRet.f32 %465, 3
  %470 = add i32 %458, 2
  %471 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %470, i32 undef)  ; BufferLoad(srv,index,wot)
  %472 = extractvalue %dx.types.ResRet.f32 %471, 0
  %473 = extractvalue %dx.types.ResRet.f32 %471, 1
  %474 = extractvalue %dx.types.ResRet.f32 %471, 2
  %475 = extractvalue %dx.types.ResRet.f32 %471, 3
  %476 = add i32 %458, 3
  %477 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %476, i32 undef)  ; BufferLoad(srv,index,wot)
  %478 = extractvalue %dx.types.ResRet.f32 %477, 0
  %479 = extractvalue %dx.types.ResRet.f32 %477, 1
  %480 = extractvalue %dx.types.ResRet.f32 %477, 2
  %481 = extractvalue %dx.types.ResRet.f32 %477, 3
  %482 = add i32 %458, 4
  %483 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %482, i32 undef)  ; BufferLoad(srv,index,wot)
  %484 = extractvalue %dx.types.ResRet.f32 %483, 0
  %485 = extractvalue %dx.types.ResRet.f32 %483, 1
  %486 = extractvalue %dx.types.ResRet.f32 %483, 2
  %487 = extractvalue %dx.types.ResRet.f32 %483, 3
  %488 = add i32 %458, 5
  %489 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %488, i32 undef)  ; BufferLoad(srv,index,wot)
  %490 = extractvalue %dx.types.ResRet.f32 %489, 0
  %491 = extractvalue %dx.types.ResRet.f32 %489, 1
  %492 = extractvalue %dx.types.ResRet.f32 %489, 2
  %493 = extractvalue %dx.types.ResRet.f32 %489, 3
  %494 = add i32 %458, 6
  %495 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %494, i32 undef)  ; BufferLoad(srv,index,wot)
  %496 = extractvalue %dx.types.ResRet.f32 %495, 0
  %497 = extractvalue %dx.types.ResRet.f32 %495, 1
  %498 = extractvalue %dx.types.ResRet.f32 %495, 2
  %499 = extractvalue %dx.types.ResRet.f32 %495, 3
  %500 = add i32 %458, 7
  %501 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %500, i32 undef)  ; BufferLoad(srv,index,wot)
  %502 = extractvalue %dx.types.ResRet.f32 %501, 0
  %503 = extractvalue %dx.types.ResRet.f32 %501, 1
  %504 = extractvalue %dx.types.ResRet.f32 %501, 2
  %505 = extractvalue %dx.types.ResRet.f32 %501, 3
  %506 = fmul fast float %460, %446
  %507 = fmul fast float %472, %447
  %508 = fadd fast float %507, %506
  %509 = fmul fast float %484, %448
  %510 = fadd fast float %508, %509
  %511 = fmul fast float %461, %446
  %512 = fmul fast float %473, %447
  %513 = fadd fast float %512, %511
  %514 = fmul fast float %485, %448
  %515 = fadd fast float %513, %514
  %516 = fmul fast float %462, %446
  %517 = fmul fast float %474, %447
  %518 = fadd fast float %517, %516
  %519 = fmul fast float %486, %448
  %520 = fadd fast float %518, %519
  %521 = fmul fast float %463, %446
  %522 = fmul fast float %475, %447
  %523 = fadd fast float %522, %521
  %524 = fmul fast float %487, %448
  %525 = fadd fast float %523, %524
  %526 = fmul fast float %466, %446
  %527 = fmul fast float %478, %447
  %528 = fadd fast float %527, %526
  %529 = fmul fast float %490, %448
  %530 = fadd fast float %528, %529
  %531 = fmul fast float %467, %446
  %532 = fmul fast float %479, %447
  %533 = fadd fast float %532, %531
  %534 = fmul fast float %491, %448
  %535 = fadd fast float %533, %534
  %536 = fmul fast float %468, %446
  %537 = fmul fast float %480, %447
  %538 = fadd fast float %537, %536
  %539 = fmul fast float %492, %448
  %540 = fadd fast float %538, %539
  %541 = fmul fast float %469, %446
  %542 = fmul fast float %481, %447
  %543 = fadd fast float %542, %541
  %544 = fmul fast float %493, %448
  %545 = fadd fast float %543, %544
  %546 = fadd fast float %510, %496
  %547 = fadd fast float %515, %497
  %548 = fadd fast float %520, %498
  %549 = fadd fast float %525, %499
  %550 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %546)  ; FMax(a,b)
  %551 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %547)  ; FMax(a,b)
  %552 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %548)  ; FMax(a,b)
  %553 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %549)  ; FMax(a,b)
  %554 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %546)  ; FMin(a,b)
  %555 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %547)  ; FMin(a,b)
  %556 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %548)  ; FMin(a,b)
  %557 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %549)  ; FMin(a,b)
  %558 = fmul fast float %554, 0x3F847AE140000000
  %559 = fmul fast float %555, 0x3F847AE140000000
  %560 = fmul fast float %556, 0x3F847AE140000000
  %561 = fmul fast float %557, 0x3F847AE140000000
  %562 = fadd fast float %558, %550
  %563 = fadd fast float %559, %551
  %564 = fadd fast float %560, %552
  %565 = fadd fast float %561, %553
  %566 = fadd fast float %530, %502
  %567 = fadd fast float %535, %503
  %568 = fadd fast float %540, %504
  %569 = fadd fast float %545, %505
  %570 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %566)  ; FMax(a,b)
  %571 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %567)  ; FMax(a,b)
  %572 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %568)  ; FMax(a,b)
  %573 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %569)  ; FMax(a,b)
  %574 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %566)  ; FMin(a,b)
  %575 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %567)  ; FMin(a,b)
  %576 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %568)  ; FMin(a,b)
  %577 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %569)  ; FMin(a,b)
  %578 = fmul fast float %574, 0x3F847AE140000000
  %579 = fmul fast float %575, 0x3F847AE140000000
  %580 = fmul fast float %576, 0x3F847AE140000000
  %581 = fmul fast float %577, 0x3F847AE140000000
  %582 = fadd fast float %578, %570
  %583 = fadd fast float %579, %571
  %584 = fadd fast float %580, %572
  %585 = fadd fast float %581, %573
  br label %586

; <label>:586                                     ; preds = %586, %434
  %587 = phi i32 [ 0, %434 ], [ %607, %586 ]
  %588 = add i32 %458, 8
  %589 = shl i32 %587, 1
  %590 = add i32 %588, %589
  %591 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %590, i32 undef)  ; BufferLoad(srv,index,wot)
  %592 = extractvalue %dx.types.ResRet.f32 %591, 0
  %593 = extractvalue %dx.types.ResRet.f32 %591, 1
  %594 = extractvalue %dx.types.ResRet.f32 %591, 2
  %595 = extractvalue %dx.types.ResRet.f32 %591, 3
  %596 = add i32 %458, 9
  %597 = add i32 %596, %589
  %598 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %597, i32 undef)  ; BufferLoad(srv,index,wot)
  %599 = extractvalue %dx.types.ResRet.f32 %598, 0
  %600 = extractvalue %dx.types.ResRet.f32 %598, 1
  %601 = extractvalue %dx.types.ResRet.f32 %598, 2
  %602 = extractvalue %dx.types.ResRet.f32 %598, 3
  %603 = call float @dx.op.dot4.f32(i32 56, float %592, float %593, float %594, float %595, float %562, float %563, float %564, float %565)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %604 = call float @dx.op.dot4.f32(i32 56, float %599, float %600, float %601, float %602, float %582, float %583, float %584, float %585)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %605 = fadd fast float %604, %603
  %606 = getelementptr inbounds [8 x float], [8 x float]* %27, i32 0, i32 %587
  store float %605, float* %606, align 4, !tbaa !60, !noalias !54
  %607 = add nuw nsw i32 %587, 1
  %608 = icmp eq i32 %607, 8
  br i1 %608, label %609, label %586

; <label>:609                                     ; preds = %586
  %610 = call float @dx.op.unary.f32(i32 6, float %448)  ; FAbs(value)
  %611 = fsub fast float 1.000000e+00, %610
  %612 = call float @dx.op.unary.f32(i32 7, float %611)  ; Saturate(value)
  %613 = fmul fast float %457, %612
  %614 = add i32 %458, 24
  %615 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %614, i32 undef)  ; BufferLoad(srv,index,wot)
  %616 = extractvalue %dx.types.ResRet.f32 %615, 0
  %617 = extractvalue %dx.types.ResRet.f32 %615, 1
  %618 = extractvalue %dx.types.ResRet.f32 %615, 2
  %619 = extractvalue %dx.types.ResRet.f32 %615, 3
  %620 = add i32 %458, 25
  %621 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %620, i32 undef)  ; BufferLoad(srv,index,wot)
  %622 = extractvalue %dx.types.ResRet.f32 %621, 0
  %623 = extractvalue %dx.types.ResRet.f32 %621, 1
  %624 = extractvalue %dx.types.ResRet.f32 %621, 2
  %625 = extractvalue %dx.types.ResRet.f32 %621, 3
  %626 = getelementptr inbounds [8 x float], [8 x float]* %27, i32 0, i32 0
  %627 = load float, float* %626, align 4, !tbaa !60, !noalias !54
  %628 = fadd fast float %627, %616
  %629 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %628)  ; FMax(a,b)
  %630 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %628)  ; FMin(a,b)
  %631 = fmul fast float %630, 0x3F847AE140000000
  %632 = fadd fast float %631, %629
  store float %632, float* %626, align 4, !tbaa !60, !noalias !54
  %633 = getelementptr inbounds [8 x float], [8 x float]* %27, i32 0, i32 1
  %634 = load float, float* %633, align 4, !tbaa !60, !noalias !54
  %635 = fadd fast float %634, %617
  %636 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %635)  ; FMax(a,b)
  %637 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %635)  ; FMin(a,b)
  %638 = fmul fast float %637, 0x3F847AE140000000
  %639 = fadd fast float %638, %636
  store float %639, float* %633, align 4, !tbaa !60, !noalias !54
  %640 = getelementptr inbounds [8 x float], [8 x float]* %27, i32 0, i32 2
  %641 = load float, float* %640, align 4, !tbaa !60, !noalias !54
  %642 = fadd fast float %641, %618
  %643 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %642)  ; FMax(a,b)
  %644 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %642)  ; FMin(a,b)
  %645 = fmul fast float %644, 0x3F847AE140000000
  %646 = fadd fast float %645, %643
  store float %646, float* %640, align 4, !tbaa !60, !noalias !54
  %647 = getelementptr inbounds [8 x float], [8 x float]* %27, i32 0, i32 3
  %648 = load float, float* %647, align 4, !tbaa !60, !noalias !54
  %649 = fadd fast float %648, %619
  %650 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %649)  ; FMax(a,b)
  %651 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %649)  ; FMin(a,b)
  %652 = fmul fast float %651, 0x3F847AE140000000
  %653 = fadd fast float %652, %650
  store float %653, float* %647, align 4, !tbaa !60, !noalias !54
  %654 = getelementptr inbounds [8 x float], [8 x float]* %27, i32 0, i32 4
  %655 = load float, float* %654, align 4, !tbaa !60, !noalias !54
  %656 = fadd fast float %655, %622
  %657 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %656)  ; FMax(a,b)
  %658 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %656)  ; FMin(a,b)
  %659 = fmul fast float %658, 0x3F847AE140000000
  %660 = fadd fast float %659, %657
  store float %660, float* %654, align 4, !tbaa !60, !noalias !54
  %661 = getelementptr inbounds [8 x float], [8 x float]* %27, i32 0, i32 5
  %662 = load float, float* %661, align 4, !tbaa !60, !noalias !54
  %663 = fadd fast float %662, %623
  %664 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %663)  ; FMax(a,b)
  %665 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %663)  ; FMin(a,b)
  %666 = fmul fast float %665, 0x3F847AE140000000
  %667 = fadd fast float %666, %664
  store float %667, float* %661, align 4, !tbaa !60, !noalias !54
  %668 = getelementptr inbounds [8 x float], [8 x float]* %27, i32 0, i32 6
  %669 = load float, float* %668, align 4, !tbaa !60, !noalias !54
  %670 = fadd fast float %669, %624
  %671 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %670)  ; FMax(a,b)
  %672 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %670)  ; FMin(a,b)
  %673 = fmul fast float %672, 0x3F847AE140000000
  %674 = fadd fast float %673, %671
  store float %674, float* %668, align 4, !tbaa !60, !noalias !54
  %675 = getelementptr inbounds [8 x float], [8 x float]* %27, i32 0, i32 7
  %676 = load float, float* %675, align 4, !tbaa !60, !noalias !54
  %677 = fadd fast float %676, %625
  %678 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %677)  ; FMax(a,b)
  %679 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %677)  ; FMin(a,b)
  %680 = fmul fast float %679, 0x3F847AE140000000
  %681 = fadd fast float %680, %678
  store float %681, float* %675, align 4, !tbaa !60, !noalias !54
  %682 = add i32 %458, 26
  %683 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %682, i32 undef)  ; BufferLoad(srv,index,wot)
  %684 = extractvalue %dx.types.ResRet.f32 %683, 0
  %685 = extractvalue %dx.types.ResRet.f32 %683, 1
  %686 = extractvalue %dx.types.ResRet.f32 %683, 2
  %687 = extractvalue %dx.types.ResRet.f32 %683, 3
  %688 = add i32 %458, 27
  %689 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %688, i32 undef)  ; BufferLoad(srv,index,wot)
  %690 = extractvalue %dx.types.ResRet.f32 %689, 0
  %691 = extractvalue %dx.types.ResRet.f32 %689, 1
  %692 = extractvalue %dx.types.ResRet.f32 %689, 2
  %693 = extractvalue %dx.types.ResRet.f32 %689, 3
  %694 = fmul fast float %632, %684
  %695 = fmul fast float %639, %685
  %696 = fadd fast float %695, %694
  %697 = fmul fast float %646, %686
  %698 = fadd fast float %696, %697
  %699 = fmul fast float %653, %687
  %700 = fadd fast float %698, %699
  %701 = fmul fast float %660, %690
  %702 = fadd fast float %700, %701
  %703 = fmul fast float %667, %691
  %704 = fadd fast float %702, %703
  %705 = fmul fast float %674, %692
  %706 = fadd fast float %704, %705
  %707 = fmul fast float %681, %693
  %708 = fadd fast float %706, %707
  %709 = add i32 %458, 28
  %710 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %709, i32 undef)  ; BufferLoad(srv,index,wot)
  %711 = extractvalue %dx.types.ResRet.f32 %710, 0
  %712 = fadd fast float %708, %711
  %713 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %712)  ; FMax(a,b)
  %714 = fmul fast float %613, %713
  %715 = call float @dx.op.unary.f32(i32 7, float %714)  ; Saturate(value)
  %716 = getelementptr inbounds [8 x float], [8 x float]* %29, i32 0, i32 %437
  store float %715, float* %716, align 4, !tbaa !60, !noalias !54
  %717 = fadd fast float %715, %436
  %718 = add nuw nsw i32 %437, 1
  %719 = icmp eq i32 %718, 8
  br i1 %719, label %723, label %720

; <label>:720                                     ; preds = %609
  %721 = getelementptr inbounds [8 x i32], [8 x i32]* %28, i32 0, i32 %718
  %722 = load i32, i32* %721, align 4, !tbaa !50, !noalias !54
  br label %434

; <label>:723                                     ; preds = %609
  %724 = fcmp fast ugt float %717, 0x3EE4F8B580000000
  br i1 %724, label %725, label %986, !dx.controlflow.hints !62

; <label>:725                                     ; preds = %723
  %726 = fcmp fast ogt float %717, 0x3EE4F8B580000000
  %727 = fdiv fast float 1.000000e+00, %717
  %728 = select i1 %726, float %727, float 1.000000e+00
  %729 = getelementptr inbounds [8 x float], [8 x float]* %29, i32 0, i32 0
  %730 = load float, float* %729, align 4, !tbaa !60, !noalias !54
  %731 = fmul fast float %730, %728
  store float %731, float* %729, align 4, !tbaa !60, !noalias !54
  %732 = getelementptr inbounds [8 x float], [8 x float]* %29, i32 0, i32 1
  %733 = load float, float* %732, align 4, !tbaa !60, !noalias !54
  %734 = fmul fast float %733, %728
  store float %734, float* %732, align 4, !tbaa !60, !noalias !54
  %735 = getelementptr inbounds [8 x float], [8 x float]* %29, i32 0, i32 2
  %736 = load float, float* %735, align 4, !tbaa !60, !noalias !54
  %737 = fmul fast float %736, %728
  store float %737, float* %735, align 4, !tbaa !60, !noalias !54
  %738 = getelementptr inbounds [8 x float], [8 x float]* %29, i32 0, i32 3
  %739 = load float, float* %738, align 4, !tbaa !60, !noalias !54
  %740 = fmul fast float %739, %728
  store float %740, float* %738, align 4, !tbaa !60, !noalias !54
  %741 = getelementptr inbounds [8 x float], [8 x float]* %29, i32 0, i32 4
  %742 = load float, float* %741, align 4, !tbaa !60, !noalias !54
  %743 = fmul fast float %742, %728
  store float %743, float* %741, align 4, !tbaa !60, !noalias !54
  %744 = getelementptr inbounds [8 x float], [8 x float]* %29, i32 0, i32 5
  %745 = load float, float* %744, align 4, !tbaa !60, !noalias !54
  %746 = fmul fast float %745, %728
  store float %746, float* %744, align 4, !tbaa !60, !noalias !54
  %747 = getelementptr inbounds [8 x float], [8 x float]* %29, i32 0, i32 6
  %748 = load float, float* %747, align 4, !tbaa !60, !noalias !54
  %749 = fmul fast float %748, %728
  store float %749, float* %747, align 4, !tbaa !60, !noalias !54
  %750 = getelementptr inbounds [8 x float], [8 x float]* %29, i32 0, i32 7
  %751 = load float, float* %750, align 4, !tbaa !60, !noalias !54
  %752 = fmul fast float %751, %728
  store float %752, float* %750, align 4, !tbaa !60, !noalias !54
  br label %753

; <label>:753                                     ; preds = %980, %725
  %754 = phi float [ %984, %980 ], [ %731, %725 ]
  %755 = phi i32 [ %982, %980 ], [ %362, %725 ]
  %756 = phi float [ %956, %980 ], [ 0.000000e+00, %725 ]
  %757 = phi float [ %954, %980 ], [ 0.000000e+00, %725 ]
  %758 = phi float [ %952, %980 ], [ 0.000000e+00, %725 ]
  %759 = phi float [ %949, %980 ], [ 0.000000e+00, %725 ]
  %760 = phi float [ %947, %980 ], [ 0.000000e+00, %725 ]
  %761 = phi float [ %944, %980 ], [ 0.000000e+00, %725 ]
  %762 = phi float [ %942, %980 ], [ 0.000000e+00, %725 ]
  %763 = phi float [ %940, %980 ], [ 0.000000e+00, %725 ]
  %764 = phi float [ %937, %980 ], [ 0.000000e+00, %725 ]
  %765 = phi float [ %977, %980 ], [ 0.000000e+00, %725 ]
  %766 = phi float [ %975, %980 ], [ 0.000000e+00, %725 ]
  %767 = phi float [ %973, %980 ], [ 0.000000e+00, %725 ]
  %768 = phi float [ %970, %980 ], [ 0.000000e+00, %725 ]
  %769 = phi float [ %968, %980 ], [ 0.000000e+00, %725 ]
  %770 = phi float [ %965, %980 ], [ 0.000000e+00, %725 ]
  %771 = phi float [ %963, %980 ], [ 0.000000e+00, %725 ]
  %772 = phi float [ %961, %980 ], [ 0.000000e+00, %725 ]
  %773 = phi float [ %958, %980 ], [ 0.000000e+00, %725 ]
  %774 = phi float [ %935, %980 ], [ 0.000000e+00, %725 ]
  %775 = phi float [ %933, %980 ], [ 0.000000e+00, %725 ]
  %776 = phi float [ %931, %980 ], [ 0.000000e+00, %725 ]
  %777 = phi float [ %927, %980 ], [ 0.000000e+00, %725 ]
  %778 = phi float [ %925, %980 ], [ 0.000000e+00, %725 ]
  %779 = phi float [ %921, %980 ], [ 0.000000e+00, %725 ]
  %780 = phi float [ %919, %980 ], [ 0.000000e+00, %725 ]
  %781 = phi float [ %917, %980 ], [ 0.000000e+00, %725 ]
  %782 = phi float [ %913, %980 ], [ 0.000000e+00, %725 ]
  %783 = phi i32 [ %978, %980 ], [ 0, %725 ]
  %784 = shl i32 %755, 5
  %785 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %784, i32 undef)  ; BufferLoad(srv,index,wot)
  %786 = extractvalue %dx.types.ResRet.i32 %785, 0
  %787 = extractvalue %dx.types.ResRet.i32 %785, 1
  %788 = extractvalue %dx.types.ResRet.i32 %785, 2
  %789 = extractvalue %dx.types.ResRet.i32 %785, 3
  %790 = or i32 %784, 16
  %791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %790, i32 undef)  ; BufferLoad(srv,index,wot)
  %792 = extractvalue %dx.types.ResRet.i32 %791, 0
  %793 = extractvalue %dx.types.ResRet.i32 %791, 1
  %794 = extractvalue %dx.types.ResRet.i32 %791, 2
  %795 = shl i32 %786, 4
  %796 = and i32 %795, 32752
  %797 = call float @dx.op.legacyF16ToF32(i32 131, i32 %796)  ; LegacyF16ToF32(value)
  %798 = lshr i32 %786, 7
  %799 = and i32 %798, 32752
  %800 = call float @dx.op.legacyF16ToF32(i32 131, i32 %799)  ; LegacyF16ToF32(value)
  %801 = lshr i32 %786, 22
  %802 = shl nuw nsw i32 %801, 5
  %803 = call float @dx.op.legacyF16ToF32(i32 131, i32 %802)  ; LegacyF16ToF32(value)
  %804 = and i32 %787, 255
  %805 = uitofp i32 %804 to float
  %806 = fmul fast float %805, 0x3F80204080000000
  %807 = fadd fast float %806, -1.000000e+00
  %808 = lshr i32 %787, 8
  %809 = and i32 %808, 255
  %810 = uitofp i32 %809 to float
  %811 = fmul fast float %810, 0x3F80204080000000
  %812 = fadd fast float %811, -1.000000e+00
  %813 = lshr i32 %787, 16
  %814 = and i32 %813, 255
  %815 = uitofp i32 %814 to float
  %816 = fmul fast float %815, 0x3F80204080000000
  %817 = fadd fast float %816, -1.000000e+00
  %818 = lshr i32 %787, 24
  %819 = uitofp i32 %818 to float
  %820 = fmul fast float %819, 0x3F80204080000000
  %821 = fadd fast float %820, -1.000000e+00
  %822 = and i32 %788, 255
  %823 = uitofp i32 %822 to float
  %824 = fmul fast float %823, 0x3F80204080000000
  %825 = fadd fast float %824, -1.000000e+00
  %826 = lshr i32 %788, 8
  %827 = and i32 %826, 255
  %828 = uitofp i32 %827 to float
  %829 = fmul fast float %828, 0x3F80204080000000
  %830 = fadd fast float %829, -1.000000e+00
  %831 = lshr i32 %788, 16
  %832 = and i32 %831, 255
  %833 = uitofp i32 %832 to float
  %834 = fmul fast float %833, 0x3F80204080000000
  %835 = fadd fast float %834, -1.000000e+00
  %836 = lshr i32 %788, 24
  %837 = uitofp i32 %836 to float
  %838 = fmul fast float %837, 0x3F80204080000000
  %839 = fadd fast float %838, -1.000000e+00
  %840 = and i32 %789, 255
  %841 = uitofp i32 %840 to float
  %842 = fmul fast float %841, 0x3F80204080000000
  %843 = fadd fast float %842, -1.000000e+00
  %844 = lshr i32 %789, 8
  %845 = and i32 %844, 255
  %846 = uitofp i32 %845 to float
  %847 = fmul fast float %846, 0x3F80204080000000
  %848 = fadd fast float %847, -1.000000e+00
  %849 = lshr i32 %789, 16
  %850 = and i32 %849, 255
  %851 = uitofp i32 %850 to float
  %852 = fmul fast float %851, 0x3F80204080000000
  %853 = fadd fast float %852, -1.000000e+00
  %854 = lshr i32 %789, 24
  %855 = uitofp i32 %854 to float
  %856 = fmul fast float %855, 0x3F80204080000000
  %857 = fadd fast float %856, -1.000000e+00
  %858 = and i32 %792, 255
  %859 = uitofp i32 %858 to float
  %860 = fmul fast float %859, 0x3F80204080000000
  %861 = fadd fast float %860, -1.000000e+00
  %862 = lshr i32 %792, 8
  %863 = and i32 %862, 255
  %864 = uitofp i32 %863 to float
  %865 = fmul fast float %864, 0x3F80204080000000
  %866 = fadd fast float %865, -1.000000e+00
  %867 = lshr i32 %792, 16
  %868 = and i32 %867, 255
  %869 = uitofp i32 %868 to float
  %870 = fmul fast float %869, 0x3F80204080000000
  %871 = fadd fast float %870, -1.000000e+00
  %872 = lshr i32 %792, 24
  %873 = uitofp i32 %872 to float
  %874 = fmul fast float %873, 0x3F80204080000000
  %875 = fadd fast float %874, -1.000000e+00
  %876 = and i32 %793, 255
  %877 = uitofp i32 %876 to float
  %878 = fmul fast float %877, 0x3F80204080000000
  %879 = fadd fast float %878, -1.000000e+00
  %880 = lshr i32 %793, 8
  %881 = and i32 %880, 255
  %882 = uitofp i32 %881 to float
  %883 = fmul fast float %882, 0x3F80204080000000
  %884 = fadd fast float %883, -1.000000e+00
  %885 = lshr i32 %793, 16
  %886 = and i32 %885, 255
  %887 = uitofp i32 %886 to float
  %888 = fmul fast float %887, 0x3F80204080000000
  %889 = fadd fast float %888, -1.000000e+00
  %890 = lshr i32 %793, 24
  %891 = uitofp i32 %890 to float
  %892 = fmul fast float %891, 0x3F80204080000000
  %893 = fadd fast float %892, -1.000000e+00
  %894 = and i32 %794, 255
  %895 = uitofp i32 %894 to float
  %896 = fmul fast float %895, 0x3F80204080000000
  %897 = fadd fast float %896, -1.000000e+00
  %898 = lshr i32 %794, 8
  %899 = and i32 %898, 255
  %900 = uitofp i32 %899 to float
  %901 = fmul fast float %900, 0x3F80204080000000
  %902 = fadd fast float %901, -1.000000e+00
  %903 = lshr i32 %794, 16
  %904 = and i32 %903, 255
  %905 = uitofp i32 %904 to float
  %906 = fmul fast float %905, 0x3F80204080000000
  %907 = fadd fast float %906, -1.000000e+00
  %908 = lshr i32 %794, 24
  %909 = uitofp i32 %908 to float
  %910 = fmul fast float %909, 0x3F80204080000000
  %911 = fadd fast float %910, -1.000000e+00
  %912 = fmul fast float %797, %754
  %913 = fadd fast float %912, %782
  %914 = fmul fast float %754, 0x3FFBB67AE0000000
  %915 = fmul fast float %914, %797
  %916 = fmul fast float %915, %807
  %917 = fadd fast float %916, %781
  %918 = fmul fast float %915, %812
  %919 = fadd fast float %918, %780
  %920 = fmul fast float %915, %817
  %921 = fadd fast float %920, %779
  %922 = fmul fast float %754, 0x3FFEFBDEC0000000
  %923 = fmul fast float %922, %797
  %924 = fmul fast float %923, %821
  %925 = fadd fast float %924, %778
  %926 = fmul fast float %923, %825
  %927 = fadd fast float %926, %777
  %928 = fmul fast float %754, 0x4001E377A0000000
  %929 = fmul fast float %928, %797
  %930 = fmul fast float %929, %830
  %931 = fadd fast float %930, %776
  %932 = fmul fast float %923, %835
  %933 = fadd fast float %932, %775
  %934 = fmul fast float %923, %839
  %935 = fadd fast float %934, %774
  %936 = fmul fast float %800, %754
  %937 = fadd fast float %936, %764
  %938 = fmul fast float %914, %800
  %939 = fmul fast float %938, %843
  %940 = fadd fast float %939, %763
  %941 = fmul fast float %938, %848
  %942 = fadd fast float %941, %762
  %943 = fmul fast float %938, %853
  %944 = fadd fast float %943, %761
  %945 = fmul fast float %922, %800
  %946 = fmul fast float %945, %857
  %947 = fadd fast float %946, %760
  %948 = fmul fast float %945, %861
  %949 = fadd fast float %948, %759
  %950 = fmul fast float %928, %800
  %951 = fmul fast float %950, %866
  %952 = fadd fast float %951, %758
  %953 = fmul fast float %945, %871
  %954 = fadd fast float %953, %757
  %955 = fmul fast float %945, %875
  %956 = fadd fast float %955, %756
  %957 = fmul fast float %803, %754
  %958 = fadd fast float %957, %773
  %959 = fmul fast float %914, %803
  %960 = fmul fast float %959, %879
  %961 = fadd fast float %960, %772
  %962 = fmul fast float %959, %884
  %963 = fadd fast float %962, %771
  %964 = fmul fast float %959, %889
  %965 = fadd fast float %964, %770
  %966 = fmul fast float %922, %803
  %967 = fmul fast float %966, %893
  %968 = fadd fast float %967, %769
  %969 = fmul fast float %966, %897
  %970 = fadd fast float %969, %768
  %971 = fmul fast float %928, %803
  %972 = fmul fast float %971, %902
  %973 = fadd fast float %972, %767
  %974 = fmul fast float %966, %907
  %975 = fadd fast float %974, %766
  %976 = fmul fast float %966, %911
  %977 = fadd fast float %976, %765
  %978 = add nuw nsw i32 %783, 1
  %979 = icmp eq i32 %978, 8
  br i1 %979, label %985, label %980

; <label>:980                                     ; preds = %753
  %981 = getelementptr inbounds [8 x i32], [8 x i32]* %28, i32 0, i32 %978
  %982 = load i32, i32* %981, align 4, !tbaa !50, !noalias !54
  %983 = getelementptr inbounds [8 x float], [8 x float]* %29, i32 0, i32 %978
  %984 = load float, float* %983, align 4, !tbaa !60, !noalias !54
  br label %753

; <label>:985                                     ; preds = %753
  br label %986

; <label>:986                                     ; preds = %985, %723, %290, %271, %243
  %987 = phi float [ 0.000000e+00, %243 ], [ 0.000000e+00, %271 ], [ 0.000000e+00, %290 ], [ 0.000000e+00, %723 ], [ %956, %985 ]
  %988 = phi float [ 0.000000e+00, %243 ], [ 0.000000e+00, %271 ], [ 0.000000e+00, %290 ], [ 0.000000e+00, %723 ], [ %954, %985 ]
  %989 = phi float [ 0.000000e+00, %243 ], [ 0.000000e+00, %271 ], [ 0.000000e+00, %290 ], [ 0.000000e+00, %723 ], [ %952, %985 ]
  %990 = phi float [ 0.000000e+00, %243 ], [ 0.000000e+00, %271 ], [ 0.000000e+00, %290 ], [ 0.000000e+00, %723 ], [ %949, %985 ]
  %991 = phi float [ 0.000000e+00, %243 ], [ 0.000000e+00, %271 ], [ 0.000000e+00, %290 ], [ 0.000000e+00, %723 ], [ %947, %985 ]
  %992 = phi float [ 0.000000e+00, %243 ], [ 0.000000e+00, %271 ], [ 0.000000e+00, %290 ], [ 0.000000e+00, %723 ], [ %944, %985 ]
  %993 = phi float [ 0.000000e+00, %243 ], [ 0.000000e+00, %271 ], [ 0.000000e+00, %290 ], [ 0.000000e+00, %723 ], [ %942, %985 ]
  %994 = phi float [ 0.000000e+00, %243 ], [ 0.000000e+00, %271 ], [ 0.000000e+00, %290 ], [ 0.000000e+00, %723 ], [ %940, %985 ]
  %995 = phi float [ 0.000000e+00, %243 ], [ 0.000000e+00, %271 ], [ 0.000000e+00, %290 ], [ 0.000000e+00, %723 ], [ %937, %985 ]
  %996 = phi float [ 0.000000e+00, %243 ], [ 0.000000e+00, %271 ], [ 0.000000e+00, %290 ], [ 0.000000e+00, %723 ], [ %977, %985 ]
  %997 = phi float [ 0.000000e+00, %243 ], [ 0.000000e+00, %271 ], [ 0.000000e+00, %290 ], [ 0.000000e+00, %723 ], [ %975, %985 ]
  %998 = phi float [ 0.000000e+00, %243 ], [ 0.000000e+00, %271 ], [ 0.000000e+00, %290 ], [ 0.000000e+00, %723 ], [ %973, %985 ]
  %999 = phi float [ 0.000000e+00, %243 ], [ 0.000000e+00, %271 ], [ 0.000000e+00, %290 ], [ 0.000000e+00, %723 ], [ %970, %985 ]
  %1000 = phi float [ 0.000000e+00, %243 ], [ 0.000000e+00, %271 ], [ 0.000000e+00, %290 ], [ 0.000000e+00, %723 ], [ %968, %985 ]
  %1001 = phi float [ 0.000000e+00, %243 ], [ 0.000000e+00, %271 ], [ 0.000000e+00, %290 ], [ 0.000000e+00, %723 ], [ %965, %985 ]
  %1002 = phi float [ 0.000000e+00, %243 ], [ 0.000000e+00, %271 ], [ 0.000000e+00, %290 ], [ 0.000000e+00, %723 ], [ %963, %985 ]
  %1003 = phi float [ 0.000000e+00, %243 ], [ 0.000000e+00, %271 ], [ 0.000000e+00, %290 ], [ 0.000000e+00, %723 ], [ %961, %985 ]
  %1004 = phi float [ 0.000000e+00, %243 ], [ 0.000000e+00, %271 ], [ 0.000000e+00, %290 ], [ 0.000000e+00, %723 ], [ %958, %985 ]
  %1005 = phi float [ 0.000000e+00, %243 ], [ 0.000000e+00, %271 ], [ 0.000000e+00, %290 ], [ 0.000000e+00, %723 ], [ %935, %985 ]
  %1006 = phi float [ 0.000000e+00, %243 ], [ 0.000000e+00, %271 ], [ 0.000000e+00, %290 ], [ 0.000000e+00, %723 ], [ %933, %985 ]
  %1007 = phi float [ 0.000000e+00, %243 ], [ 0.000000e+00, %271 ], [ 0.000000e+00, %290 ], [ 0.000000e+00, %723 ], [ %931, %985 ]
  %1008 = phi float [ 0.000000e+00, %243 ], [ 0.000000e+00, %271 ], [ 0.000000e+00, %290 ], [ 0.000000e+00, %723 ], [ %927, %985 ]
  %1009 = phi float [ 0.000000e+00, %243 ], [ 0.000000e+00, %271 ], [ 0.000000e+00, %290 ], [ 0.000000e+00, %723 ], [ %925, %985 ]
  %1010 = phi float [ 0.000000e+00, %243 ], [ 0.000000e+00, %271 ], [ 0.000000e+00, %290 ], [ 0.000000e+00, %723 ], [ %921, %985 ]
  %1011 = phi float [ 0.000000e+00, %243 ], [ 0.000000e+00, %271 ], [ 0.000000e+00, %290 ], [ 0.000000e+00, %723 ], [ %919, %985 ]
  %1012 = phi float [ 0.000000e+00, %243 ], [ 0.000000e+00, %271 ], [ 0.000000e+00, %290 ], [ 0.000000e+00, %723 ], [ %917, %985 ]
  %1013 = phi float [ 0.000000e+00, %243 ], [ 0.000000e+00, %271 ], [ 0.000000e+00, %290 ], [ 0.000000e+00, %723 ], [ %913, %985 ]
  %1014 = phi i1 [ false, %243 ], [ false, %271 ], [ false, %290 ], [ false, %723 ], [ true, %985 ]
  br i1 %1014, label %1088, label %1015, !dx.controlflow.hints !63

; <label>:1015                                    ; preds = %986
  %1016 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %1017 = extractvalue %dx.types.ResRet.i32 %1016, 0
  %1018 = extractvalue %dx.types.ResRet.i32 %1016, 1
  %1019 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %1020 = extractvalue %dx.types.ResRet.i32 %1019, 0
  %1021 = extractvalue %dx.types.ResRet.i32 %1019, 1
  %1022 = extractvalue %dx.types.ResRet.i32 %1019, 2
  %1023 = extractvalue %dx.types.ResRet.i32 %1019, 3
  %1024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %1025 = extractvalue %dx.types.ResRet.i32 %1024, 0
  %1026 = extractvalue %dx.types.ResRet.i32 %1024, 1
  %1027 = extractvalue %dx.types.ResRet.i32 %1024, 2
  %1028 = extractvalue %dx.types.ResRet.i32 %1024, 3
  %1029 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %1030 = extractvalue %dx.types.ResRet.i32 %1029, 0
  %1031 = extractvalue %dx.types.ResRet.i32 %1029, 1
  %1032 = extractvalue %dx.types.ResRet.i32 %1029, 2
  %1033 = extractvalue %dx.types.ResRet.i32 %1029, 3
  %1034 = and i32 %1030, 65535
  %1035 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1034)  ; LegacyF16ToF32(value)
  %1036 = lshr i32 %1030, 16
  %1037 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1036)  ; LegacyF16ToF32(value)
  %1038 = and i32 %1031, 65535
  %1039 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1038)  ; LegacyF16ToF32(value)
  %1040 = lshr i32 %1031, 16
  %1041 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1040)  ; LegacyF16ToF32(value)
  %1042 = and i32 %1032, 65535
  %1043 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1042)  ; LegacyF16ToF32(value)
  %1044 = lshr i32 %1032, 16
  %1045 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1044)  ; LegacyF16ToF32(value)
  %1046 = and i32 %1033, 65535
  %1047 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1046)  ; LegacyF16ToF32(value)
  %1048 = lshr i32 %1033, 16
  %1049 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1048)  ; LegacyF16ToF32(value)
  %1050 = and i32 %1025, 65535
  %1051 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1050)  ; LegacyF16ToF32(value)
  %1052 = lshr i32 %1025, 16
  %1053 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1052)  ; LegacyF16ToF32(value)
  %1054 = and i32 %1026, 65535
  %1055 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1054)  ; LegacyF16ToF32(value)
  %1056 = lshr i32 %1026, 16
  %1057 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1056)  ; LegacyF16ToF32(value)
  %1058 = and i32 %1027, 65535
  %1059 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1058)  ; LegacyF16ToF32(value)
  %1060 = lshr i32 %1027, 16
  %1061 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1060)  ; LegacyF16ToF32(value)
  %1062 = and i32 %1028, 65535
  %1063 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1062)  ; LegacyF16ToF32(value)
  %1064 = lshr i32 %1028, 16
  %1065 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1064)  ; LegacyF16ToF32(value)
  %1066 = and i32 %1020, 65535
  %1067 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1066)  ; LegacyF16ToF32(value)
  %1068 = lshr i32 %1020, 16
  %1069 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1068)  ; LegacyF16ToF32(value)
  %1070 = and i32 %1021, 65535
  %1071 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1070)  ; LegacyF16ToF32(value)
  %1072 = lshr i32 %1021, 16
  %1073 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1072)  ; LegacyF16ToF32(value)
  %1074 = and i32 %1022, 65535
  %1075 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1074)  ; LegacyF16ToF32(value)
  %1076 = lshr i32 %1022, 16
  %1077 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1076)  ; LegacyF16ToF32(value)
  %1078 = and i32 %1023, 65535
  %1079 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1078)  ; LegacyF16ToF32(value)
  %1080 = lshr i32 %1023, 16
  %1081 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1080)  ; LegacyF16ToF32(value)
  %1082 = and i32 %1017, 65535
  %1083 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1082)  ; LegacyF16ToF32(value)
  %1084 = lshr i32 %1017, 16
  %1085 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1084)  ; LegacyF16ToF32(value)
  %1086 = and i32 %1018, 65535
  %1087 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1086)  ; LegacyF16ToF32(value)
  br label %1088

; <label>:1088                                    ; preds = %1015, %986, %240
  %1089 = phi float [ %1087, %1015 ], [ %996, %986 ], [ 0.000000e+00, %240 ]
  %1090 = phi float [ %1085, %1015 ], [ %997, %986 ], [ 0.000000e+00, %240 ]
  %1091 = phi float [ %1083, %1015 ], [ %998, %986 ], [ 0.000000e+00, %240 ]
  %1092 = phi float [ %1081, %1015 ], [ %999, %986 ], [ 0.000000e+00, %240 ]
  %1093 = phi float [ %1079, %1015 ], [ %1000, %986 ], [ 0.000000e+00, %240 ]
  %1094 = phi float [ %1077, %1015 ], [ %1001, %986 ], [ 0.000000e+00, %240 ]
  %1095 = phi float [ %1075, %1015 ], [ %1002, %986 ], [ 0.000000e+00, %240 ]
  %1096 = phi float [ %1073, %1015 ], [ %1003, %986 ], [ 0.000000e+00, %240 ]
  %1097 = phi float [ %1071, %1015 ], [ %1004, %986 ], [ 0.000000e+00, %240 ]
  %1098 = phi float [ %1069, %1015 ], [ %987, %986 ], [ 0.000000e+00, %240 ]
  %1099 = phi float [ %1067, %1015 ], [ %988, %986 ], [ 0.000000e+00, %240 ]
  %1100 = phi float [ %1065, %1015 ], [ %989, %986 ], [ 0.000000e+00, %240 ]
  %1101 = phi float [ %1063, %1015 ], [ %990, %986 ], [ 0.000000e+00, %240 ]
  %1102 = phi float [ %1061, %1015 ], [ %991, %986 ], [ 0.000000e+00, %240 ]
  %1103 = phi float [ %1059, %1015 ], [ %992, %986 ], [ 0.000000e+00, %240 ]
  %1104 = phi float [ %1057, %1015 ], [ %993, %986 ], [ 0.000000e+00, %240 ]
  %1105 = phi float [ %1055, %1015 ], [ %994, %986 ], [ 0.000000e+00, %240 ]
  %1106 = phi float [ %1053, %1015 ], [ %995, %986 ], [ 0.000000e+00, %240 ]
  %1107 = phi float [ %1051, %1015 ], [ %1005, %986 ], [ 0.000000e+00, %240 ]
  %1108 = phi float [ %1049, %1015 ], [ %1006, %986 ], [ 0.000000e+00, %240 ]
  %1109 = phi float [ %1047, %1015 ], [ %1007, %986 ], [ 0.000000e+00, %240 ]
  %1110 = phi float [ %1045, %1015 ], [ %1008, %986 ], [ 0.000000e+00, %240 ]
  %1111 = phi float [ %1043, %1015 ], [ %1009, %986 ], [ 0.000000e+00, %240 ]
  %1112 = phi float [ %1041, %1015 ], [ %1010, %986 ], [ 0.000000e+00, %240 ]
  %1113 = phi float [ %1039, %1015 ], [ %1011, %986 ], [ 0.000000e+00, %240 ]
  %1114 = phi float [ %1037, %1015 ], [ %1012, %986 ], [ 0.000000e+00, %240 ]
  %1115 = phi float [ %1035, %1015 ], [ %1013, %986 ], [ 0.000000e+00, %240 ]
  %1116 = fcmp fast olt float %241, 1.000000e+00
  br i1 %1116, label %1117, label %1777, !dx.controlflow.hints !64

; <label>:1117                                    ; preds = %1088
  %1118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1119 = extractvalue %dx.types.CBufRet.f32 %1118, 0
  %1120 = extractvalue %dx.types.CBufRet.f32 %1118, 1
  %1121 = fsub fast float %191, %1119
  %1122 = fsub fast float %196, %1120
  %1123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1124 = extractvalue %dx.types.CBufRet.f32 %1123, 0
  %1125 = extractvalue %dx.types.CBufRet.f32 %1123, 1
  %1126 = fmul fast float %1121, %1124
  %1127 = fmul fast float %1122, %1125
  %1128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1129 = extractvalue %dx.types.CBufRet.f32 %1128, 0
  %1130 = fmul fast float %1129, %1126
  %1131 = extractvalue %dx.types.CBufRet.f32 %1128, 1
  %1132 = fadd fast float %1130, %1131
  %1133 = extractvalue %dx.types.CBufRet.f32 %1128, 2
  %1134 = fmul fast float %1133, %1127
  %1135 = extractvalue %dx.types.CBufRet.f32 %1128, 3
  %1136 = fadd fast float %1134, %1135
  %1137 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %22, float %1132, float %1136, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1138 = extractvalue %dx.types.ResRet.f32 %1137, 0
  %1139 = extractvalue %dx.types.ResRet.f32 %1137, 1
  %1140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1141 = extractvalue %dx.types.CBufRet.f32 %1140, 1
  %1142 = extractvalue %dx.types.CBufRet.f32 %1140, 0
  %1143 = fsub fast float %1141, %1142
  %1144 = fmul fast float %1143, %1138
  %1145 = fadd fast float %1144, %1142
  %1146 = extractvalue %dx.types.CBufRet.f32 %1140, 3
  %1147 = extractvalue %dx.types.CBufRet.f32 %1140, 2
  %1148 = fsub fast float %1146, %1147
  %1149 = fmul fast float %1148, %1139
  %1150 = fadd fast float %1149, %1147
  %1151 = fsub fast float %201, %1145
  %1152 = fsub fast float %1150, %1145
  %1153 = fdiv fast float %1151, %1152
  %1154 = call float @dx.op.unary.f32(i32 7, float %1153)  ; Saturate(value)
  %1155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %1156 = extractvalue %dx.types.CBufRet.f32 %1155, 0
  %1157 = fmul fast float %1156, %1154
  %1158 = extractvalue %dx.types.CBufRet.f32 %1155, 1
  %1159 = fadd fast float %1157, %1158
  %1160 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %22, float %1132, float %1136, float %1159, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1161 = extractvalue %dx.types.ResRet.f32 %1160, 0
  %1162 = extractvalue %dx.types.ResRet.f32 %1160, 1
  %1163 = extractvalue %dx.types.ResRet.f32 %1160, 2
  %1164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %1165 = extractvalue %dx.types.CBufRet.f32 %1164, 0
  %1166 = extractvalue %dx.types.CBufRet.f32 %1164, 1
  %1167 = extractvalue %dx.types.CBufRet.f32 %1164, 2
  %1168 = fmul fast float %1165, %1161
  %1169 = fmul fast float %1166, %1162
  %1170 = fmul fast float %1167, %1163
  %1171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %1172 = extractvalue %dx.types.CBufRet.f32 %1171, 0
  %1173 = extractvalue %dx.types.CBufRet.f32 %1171, 1
  %1174 = extractvalue %dx.types.CBufRet.f32 %1171, 2
  %1175 = fadd fast float %1168, %1172
  %1176 = fadd fast float %1169, %1173
  %1177 = fadd fast float %1170, %1174
  %1178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %1179 = extractvalue %dx.types.CBufRet.f32 %1178, 0
  %1180 = fmul fast float %1179, %1126
  %1181 = extractvalue %dx.types.CBufRet.f32 %1178, 1
  %1182 = fadd fast float %1180, %1181
  %1183 = extractvalue %dx.types.CBufRet.f32 %1178, 2
  %1184 = fmul fast float %1183, %1127
  %1185 = extractvalue %dx.types.CBufRet.f32 %1178, 3
  %1186 = fadd fast float %1184, %1185
  %1187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %1188 = extractvalue %dx.types.CBufRet.f32 %1187, 0
  %1189 = extractvalue %dx.types.CBufRet.f32 %1187, 1
  %1190 = extractvalue %dx.types.CBufRet.f32 %1187, 2
  %1191 = extractvalue %dx.types.CBufRet.f32 %1187, 3
  %1192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %1193 = extractvalue %dx.types.CBufRet.f32 %1192, 0
  %1194 = extractvalue %dx.types.CBufRet.f32 %1192, 1
  %1195 = extractvalue %dx.types.CBufRet.f32 %1192, 2
  %1196 = extractvalue %dx.types.CBufRet.f32 %1192, 3
  %1197 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %22, float %1182, float %1186, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1198 = extractvalue %dx.types.ResRet.f32 %1197, 0
  %1199 = extractvalue %dx.types.ResRet.f32 %1197, 1
  %1200 = extractvalue %dx.types.ResRet.f32 %1197, 2
  %1201 = extractvalue %dx.types.ResRet.f32 %1197, 3
  %1202 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %22, float %1182, float %1186, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1203 = extractvalue %dx.types.ResRet.f32 %1202, 0
  %1204 = extractvalue %dx.types.ResRet.f32 %1202, 1
  %1205 = extractvalue %dx.types.ResRet.f32 %1202, 2
  %1206 = extractvalue %dx.types.ResRet.f32 %1202, 3
  %1207 = fmul fast float %1198, %1175
  %1208 = fmul fast float %1203, %1175
  %1209 = fmul fast float %1205, %1175
  %1210 = fmul fast float %1201, %1175
  %1211 = fadd fast float %1207, %1188
  %1212 = fadd fast float %1208, %1189
  %1213 = fadd fast float %1209, %1190
  %1214 = fadd fast float %1210, %1191
  %1215 = fmul fast float %1199, %1175
  %1216 = fmul fast float %1204, %1175
  %1217 = fadd fast float %1215, %1193
  %1218 = fadd fast float %1216, %1194
  %1219 = fmul fast float %1200, %1175
  %1220 = fmul fast float %1206, %1175
  %1221 = fadd fast float %1219, %1195
  %1222 = fadd fast float %1220, %1196
  %1223 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %22, float %1182, float %1186, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1224 = extractvalue %dx.types.ResRet.f32 %1223, 0
  %1225 = extractvalue %dx.types.ResRet.f32 %1223, 1
  %1226 = extractvalue %dx.types.ResRet.f32 %1223, 2
  %1227 = extractvalue %dx.types.ResRet.f32 %1223, 3
  %1228 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %22, float %1182, float %1186, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1229 = extractvalue %dx.types.ResRet.f32 %1228, 0
  %1230 = extractvalue %dx.types.ResRet.f32 %1228, 1
  %1231 = extractvalue %dx.types.ResRet.f32 %1228, 2
  %1232 = extractvalue %dx.types.ResRet.f32 %1228, 3
  %1233 = fmul fast float %1224, %1176
  %1234 = fmul fast float %1229, %1176
  %1235 = fmul fast float %1231, %1176
  %1236 = fmul fast float %1227, %1176
  %1237 = fadd fast float %1211, %1233
  %1238 = fadd fast float %1212, %1234
  %1239 = fadd fast float %1213, %1235
  %1240 = fadd fast float %1214, %1236
  %1241 = fmul fast float %1225, %1176
  %1242 = fmul fast float %1230, %1176
  %1243 = fadd fast float %1217, %1241
  %1244 = fadd fast float %1218, %1242
  %1245 = fmul fast float %1226, %1176
  %1246 = fmul fast float %1232, %1176
  %1247 = fadd fast float %1221, %1245
  %1248 = fadd fast float %1222, %1246
  %1249 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %22, float %1182, float %1186, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1250 = extractvalue %dx.types.ResRet.f32 %1249, 0
  %1251 = extractvalue %dx.types.ResRet.f32 %1249, 1
  %1252 = extractvalue %dx.types.ResRet.f32 %1249, 2
  %1253 = extractvalue %dx.types.ResRet.f32 %1249, 3
  %1254 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %22, float %1182, float %1186, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1255 = extractvalue %dx.types.ResRet.f32 %1254, 0
  %1256 = extractvalue %dx.types.ResRet.f32 %1254, 1
  %1257 = extractvalue %dx.types.ResRet.f32 %1254, 2
  %1258 = extractvalue %dx.types.ResRet.f32 %1254, 3
  %1259 = fmul fast float %1250, %1177
  %1260 = fmul fast float %1255, %1177
  %1261 = fmul fast float %1257, %1177
  %1262 = fmul fast float %1253, %1177
  %1263 = fadd fast float %1237, %1259
  %1264 = fadd fast float %1238, %1260
  %1265 = fadd fast float %1239, %1261
  %1266 = fadd fast float %1240, %1262
  %1267 = fmul fast float %1251, %1177
  %1268 = fmul fast float %1256, %1177
  %1269 = fadd fast float %1243, %1267
  %1270 = fadd fast float %1244, %1268
  %1271 = fmul fast float %1252, %1177
  %1272 = fmul fast float %1258, %1177
  %1273 = fadd fast float %1247, %1271
  %1274 = fadd fast float %1248, %1272
  %1275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %1276 = extractvalue %dx.types.CBufRet.f32 %1275, 0
  %1277 = fsub fast float %191, %1276
  %1278 = fsub fast float %1119, %191
  %1279 = call float @dx.op.binary.f32(i32 35, float %1278, float %1277)  ; FMax(a,b)
  %1280 = extractvalue %dx.types.CBufRet.f32 %1275, 1
  %1281 = fsub fast float %196, %1280
  %1282 = fsub fast float %1120, %196
  %1283 = call float @dx.op.binary.f32(i32 35, float %1282, float %1281)  ; FMax(a,b)
  %1284 = call float @dx.op.binary.f32(i32 35, float %1279, float %1283)  ; FMax(a,b)
  %1285 = extractvalue %dx.types.CBufRet.f32 %1123, 3
  %1286 = fmul fast float %1285, %1284
  %1287 = call float @dx.op.unary.f32(i32 7, float %1286)  ; Saturate(value)
  %1288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %1289 = extractvalue %dx.types.CBufRet.f32 %1288, 0
  %1290 = extractvalue %dx.types.CBufRet.f32 %1288, 1
  %1291 = extractvalue %dx.types.CBufRet.f32 %1288, 2
  %1292 = extractvalue %dx.types.CBufRet.f32 %1288, 3
  %1293 = fsub fast float %1289, %1263
  %1294 = fsub fast float %1290, %1264
  %1295 = fsub fast float %1291, %1265
  %1296 = fsub fast float %1292, %1266
  %1297 = fmul fast float %1293, %1287
  %1298 = fmul fast float %1294, %1287
  %1299 = fmul fast float %1295, %1287
  %1300 = fmul fast float %1296, %1287
  %1301 = fadd fast float %1297, %1263
  %1302 = fadd fast float %1298, %1264
  %1303 = fadd fast float %1299, %1265
  %1304 = fadd fast float %1300, %1266
  %1305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %1306 = extractvalue %dx.types.CBufRet.f32 %1305, 0
  %1307 = extractvalue %dx.types.CBufRet.f32 %1305, 1
  %1308 = fsub fast float %1306, %1269
  %1309 = fsub fast float %1307, %1270
  %1310 = fmul fast float %1308, %1287
  %1311 = fmul fast float %1309, %1287
  %1312 = fadd fast float %1310, %1269
  %1313 = fadd fast float %1311, %1270
  %1314 = extractvalue %dx.types.CBufRet.f32 %1305, 2
  %1315 = extractvalue %dx.types.CBufRet.f32 %1305, 3
  %1316 = fsub fast float %1314, %1273
  %1317 = fsub fast float %1315, %1274
  %1318 = fmul fast float %1316, %1287
  %1319 = fmul fast float %1317, %1287
  %1320 = fadd fast float %1318, %1273
  %1321 = fadd fast float %1319, %1274
  %1322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %1323 = extractvalue %dx.types.CBufRet.f32 %1322, 0
  %1324 = fmul fast float %1323, %1301
  %1325 = fmul fast float %1323, %1302
  %1326 = fmul fast float %1323, %1303
  %1327 = fmul fast float %1323, %1304
  %1328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %1329 = extractvalue %dx.types.CBufRet.f32 %1328, 0
  %1330 = fmul fast float %1329, %1312
  %1331 = fmul fast float %1329, %1313
  %1332 = fadd fast float %1330, %1324
  %1333 = fadd fast float %1331, %1326
  %1334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %1335 = extractvalue %dx.types.CBufRet.f32 %1334, 0
  %1336 = fmul fast float %1335, %1320
  %1337 = fmul fast float %1335, %1321
  %1338 = fadd fast float %1332, %1336
  %1339 = fadd fast float %1333, %1337
  %1340 = extractvalue %dx.types.CBufRet.f32 %1322, 1
  %1341 = fmul fast float %1340, %1301
  %1342 = fmul fast float %1340, %1302
  %1343 = fmul fast float %1340, %1303
  %1344 = fmul fast float %1340, %1304
  %1345 = extractvalue %dx.types.CBufRet.f32 %1328, 1
  %1346 = fmul fast float %1345, %1312
  %1347 = fmul fast float %1345, %1313
  %1348 = fadd fast float %1346, %1341
  %1349 = fadd fast float %1347, %1343
  %1350 = extractvalue %dx.types.CBufRet.f32 %1334, 1
  %1351 = fmul fast float %1350, %1320
  %1352 = fmul fast float %1350, %1321
  %1353 = fadd fast float %1348, %1351
  %1354 = fadd fast float %1349, %1352
  %1355 = extractvalue %dx.types.CBufRet.f32 %1322, 2
  %1356 = fmul fast float %1355, %1301
  %1357 = fmul fast float %1355, %1302
  %1358 = fmul fast float %1355, %1303
  %1359 = fmul fast float %1355, %1304
  %1360 = extractvalue %dx.types.CBufRet.f32 %1328, 2
  %1361 = fmul fast float %1360, %1312
  %1362 = fmul fast float %1360, %1313
  %1363 = fadd fast float %1361, %1356
  %1364 = fadd fast float %1362, %1358
  %1365 = extractvalue %dx.types.CBufRet.f32 %1334, 2
  %1366 = fmul fast float %1365, %1320
  %1367 = fmul fast float %1365, %1321
  %1368 = fadd fast float %1363, %1366
  %1369 = fadd fast float %1364, %1367
  %1370 = fmul fast float %1357, %1357
  %1371 = fmul fast float %1369, %1369
  %1372 = fmul fast float %1359, %1359
  %1373 = fadd fast float %1372, %1370
  %1374 = fadd fast float %1373, %1371
  %1375 = call float @dx.op.unary.f32(i32 24, float %1374)  ; Sqrt(value)
  %1376 = fcmp fast ugt float %1375, 0.000000e+00
  br i1 %1376, label %1377, label %1392, !dx.controlflow.hints !65

; <label>:1377                                    ; preds = %1117
  %1378 = fsub fast float -0.000000e+00, %1359
  %1379 = fdiv fast float %1378, %1375
  %1380 = fsub fast float -0.000000e+00, %1357
  %1381 = fdiv fast float %1380, %1375
  %1382 = fdiv fast float %1369, %1375
  %1383 = fmul fast float %1368, 0x3FE279A760000000
  %1384 = fmul fast float %1381, %1357
  %1385 = fmul fast float %1382, %1369
  %1386 = fmul fast float %1379, %1359
  %1387 = fadd fast float %1384, %1386
  %1388 = fsub fast float %1387, %1385
  %1389 = call float @dx.op.unary.f32(i32 6, float %1388)  ; FAbs(value)
  %1390 = fadd fast float %1389, 0x3DDB7CDFE0000000
  %1391 = fdiv fast float %1383, %1390
  br label %1392

; <label>:1392                                    ; preds = %1377, %1117
  %1393 = phi float [ %1391, %1377 ], [ 1.000000e+00, %1117 ]
  %1394 = fmul fast float %1342, %1342
  %1395 = fmul fast float %1354, %1354
  %1396 = fmul fast float %1344, %1344
  %1397 = fadd fast float %1396, %1394
  %1398 = fadd fast float %1397, %1395
  %1399 = call float @dx.op.unary.f32(i32 24, float %1398)  ; Sqrt(value)
  %1400 = fcmp fast ugt float %1399, 0.000000e+00
  br i1 %1400, label %1401, label %1416, !dx.controlflow.hints !65

; <label>:1401                                    ; preds = %1392
  %1402 = fsub fast float -0.000000e+00, %1344
  %1403 = fdiv fast float %1402, %1399
  %1404 = fsub fast float -0.000000e+00, %1342
  %1405 = fdiv fast float %1404, %1399
  %1406 = fdiv fast float %1354, %1399
  %1407 = fmul fast float %1353, 0x3FE279A760000000
  %1408 = fmul fast float %1405, %1342
  %1409 = fmul fast float %1406, %1354
  %1410 = fmul fast float %1403, %1344
  %1411 = fadd fast float %1408, %1410
  %1412 = fsub fast float %1411, %1409
  %1413 = call float @dx.op.unary.f32(i32 6, float %1412)  ; FAbs(value)
  %1414 = fadd fast float %1413, 0x3DDB7CDFE0000000
  %1415 = fdiv fast float %1407, %1414
  br label %1416

; <label>:1416                                    ; preds = %1401, %1392
  %1417 = phi float [ %1415, %1401 ], [ 1.000000e+00, %1392 ]
  %1418 = call float @dx.op.binary.f32(i32 36, float %1417, float %1393)  ; FMin(a,b)
  %1419 = fmul fast float %1325, %1325
  %1420 = fmul fast float %1339, %1339
  %1421 = fmul fast float %1327, %1327
  %1422 = fadd fast float %1421, %1419
  %1423 = fadd fast float %1422, %1420
  %1424 = call float @dx.op.unary.f32(i32 24, float %1423)  ; Sqrt(value)
  %1425 = fcmp fast ugt float %1424, 0.000000e+00
  br i1 %1425, label %1426, label %1441, !dx.controlflow.hints !65

; <label>:1426                                    ; preds = %1416
  %1427 = fsub fast float -0.000000e+00, %1327
  %1428 = fdiv fast float %1427, %1424
  %1429 = fsub fast float -0.000000e+00, %1325
  %1430 = fdiv fast float %1429, %1424
  %1431 = fdiv fast float %1339, %1424
  %1432 = fmul fast float %1338, 0x3FE279A760000000
  %1433 = fmul fast float %1430, %1325
  %1434 = fmul fast float %1431, %1339
  %1435 = fmul fast float %1428, %1327
  %1436 = fadd fast float %1433, %1435
  %1437 = fsub fast float %1436, %1434
  %1438 = call float @dx.op.unary.f32(i32 6, float %1437)  ; FAbs(value)
  %1439 = fadd fast float %1438, 0x3DDB7CDFE0000000
  %1440 = fdiv fast float %1432, %1439
  br label %1441

; <label>:1441                                    ; preds = %1426, %1416
  %1442 = phi float [ %1440, %1426 ], [ 1.000000e+00, %1416 ]
  %1443 = call float @dx.op.binary.f32(i32 36, float %1442, float %1418)  ; FMin(a,b)
  %1444 = call float @dx.op.unary.f32(i32 7, float %1443)  ; Saturate(value)
  %1445 = fcmp fast olt float %1444, 1.000000e+00
  br i1 %1445, label %1446, label %1456, !dx.controlflow.hints !66

; <label>:1446                                    ; preds = %1441
  %1447 = fmul fast float %1444, %1325
  %1448 = fmul fast float %1444, %1339
  %1449 = fmul fast float %1444, %1327
  %1450 = fmul fast float %1444, %1342
  %1451 = fmul fast float %1444, %1354
  %1452 = fmul fast float %1444, %1344
  %1453 = fmul fast float %1444, %1357
  %1454 = fmul fast float %1444, %1369
  %1455 = fmul fast float %1444, %1359
  br label %1456

; <label>:1456                                    ; preds = %1446, %1441
  %1457 = phi float [ %1453, %1446 ], [ %1357, %1441 ]
  %1458 = phi float [ %1454, %1446 ], [ %1369, %1441 ]
  %1459 = phi float [ %1455, %1446 ], [ %1359, %1441 ]
  %1460 = phi float [ %1450, %1446 ], [ %1342, %1441 ]
  %1461 = phi float [ %1451, %1446 ], [ %1354, %1441 ]
  %1462 = phi float [ %1452, %1446 ], [ %1344, %1441 ]
  %1463 = phi float [ %1447, %1446 ], [ %1325, %1441 ]
  %1464 = phi float [ %1448, %1446 ], [ %1339, %1441 ]
  %1465 = phi float [ %1449, %1446 ], [ %1327, %1441 ]
  %1466 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1338)  ; FMax(a,b)
  %1467 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1353)  ; FMax(a,b)
  %1468 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1368)  ; FMax(a,b)
  %1469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %1470 = extractvalue %dx.types.CBufRet.f32 %1469, 0
  %1471 = fcmp fast ogt float %1470, 0.000000e+00
  %1472 = fcmp fast oge float %1126, 0.000000e+00
  %1473 = and i1 %1472, %1471
  %1474 = fcmp fast ole float %1126, 1.000000e+00
  %1475 = and i1 %1474, %1473
  %1476 = fcmp fast oge float %1127, 0.000000e+00
  %1477 = and i1 %1476, %1475
  %1478 = fcmp fast ole float %1127, 1.000000e+00
  %1479 = and i1 %1478, %1477
  br i1 %1479, label %1480, label %1625, !dx.controlflow.hints !67

; <label>:1480                                    ; preds = %1456
  %1481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1482 = extractvalue %dx.types.CBufRet.f32 %1481, 2
  %1483 = extractvalue %dx.types.CBufRet.f32 %1481, 3
  %1484 = fmul fast float %1482, %1126
  %1485 = fmul fast float %1483, %1127
  %1486 = call float @dx.op.unary.f32(i32 27, float %1484)  ; Round_ni(value)
  %1487 = call float @dx.op.unary.f32(i32 27, float %1485)  ; Round_ni(value)
  %1488 = fptosi float %1486 to i32
  %1489 = fptosi float %1487 to i32
  %1490 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %16, i32 0, i32 %1488, i32 %1489, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1491 = extractvalue %dx.types.ResRet.i32 %1490, 0
  %1492 = and i32 %1491, 65535
  %1493 = lshr i32 %1491, 16
  %1494 = icmp eq i32 %1492, 65535
  br i1 %1494, label %1531, label %1495, !dx.controlflow.hints !68

; <label>:1495                                    ; preds = %1480
  %1496 = extractvalue %dx.types.CBufRet.f32 %1469, 1
  %1497 = extractvalue %dx.types.CBufRet.f32 %1481, 0
  %1498 = extractvalue %dx.types.CBufRet.f32 %1481, 1
  %1499 = fmul fast float %1497, %1126
  %1500 = fmul fast float %1498, %1127
  %1501 = fmul fast float %1499, 1.250000e-01
  %1502 = fmul fast float %1500, 1.250000e-01
  %1503 = call float @dx.op.unary.f32(i32 27, float %1501)  ; Round_ni(value)
  %1504 = call float @dx.op.unary.f32(i32 27, float %1502)  ; Round_ni(value)
  %1505 = fmul fast float %1503, 8.000000e+00
  %1506 = fmul fast float %1504, 8.000000e+00
  %1507 = and i32 %1491, 255
  %1508 = lshr i32 %1491, 8
  %1509 = and i32 %1508, 255
  %1510 = mul nuw nsw i32 %1507, 9
  %1511 = uitofp i32 %1510 to float
  %1512 = mul nuw nsw i32 %1509, 9
  %1513 = uitofp i32 %1512 to float
  %1514 = fadd fast float %1511, 5.000000e-01
  %1515 = fadd fast float %1514, %1499
  %1516 = fsub fast float %1515, %1505
  %1517 = fadd fast float %1513, 5.000000e-01
  %1518 = fadd fast float %1517, %1500
  %1519 = fsub fast float %1518, %1506
  %1520 = fdiv fast float %1516, %1470
  %1521 = fdiv fast float %1519, %1496
  %1522 = fmul fast float %1154, 4.375000e-01
  %1523 = fadd fast float %1522, 3.125000e-02
  %1524 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %22, float %1520, float %1521, float %1523, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1525 = extractvalue %dx.types.ResRet.f32 %1524, 0
  %1526 = extractvalue %dx.types.ResRet.f32 %1524, 1
  %1527 = extractvalue %dx.types.ResRet.f32 %1524, 2
  %1528 = fadd fast float %1525, %1466
  %1529 = fadd fast float %1526, %1467
  %1530 = fadd fast float %1527, %1468
  br label %1531

; <label>:1531                                    ; preds = %1495, %1480
  %1532 = phi float [ %1530, %1495 ], [ %1468, %1480 ]
  %1533 = phi float [ %1529, %1495 ], [ %1467, %1480 ]
  %1534 = phi float [ %1528, %1495 ], [ %1466, %1480 ]
  %1535 = icmp eq i32 %1493, 65535
  br i1 %1535, label %1625, label %1536, !dx.controlflow.hints !69

; <label>:1536                                    ; preds = %1531
  %1537 = extractvalue %dx.types.CBufRet.f32 %1469, 1
  %1538 = extractvalue %dx.types.CBufRet.f32 %1481, 0
  %1539 = extractvalue %dx.types.CBufRet.f32 %1481, 1
  %1540 = fmul fast float %1538, %1126
  %1541 = fmul fast float %1539, %1127
  %1542 = fmul fast float %1540, 1.250000e-01
  %1543 = fmul fast float %1541, 1.250000e-01
  %1544 = call float @dx.op.unary.f32(i32 27, float %1542)  ; Round_ni(value)
  %1545 = call float @dx.op.unary.f32(i32 27, float %1543)  ; Round_ni(value)
  %1546 = fmul fast float %1544, 8.000000e+00
  %1547 = fmul fast float %1545, 8.000000e+00
  %1548 = fsub fast float %1540, %1546
  %1549 = fsub fast float %1541, %1547
  %1550 = fadd fast float %1548, 5.000000e-01
  %1551 = fadd fast float %1549, 5.000000e-01
  %1552 = and i32 %1493, 255
  %1553 = lshr i32 %1491, 24
  %1554 = mul nuw nsw i32 %1552, 9
  %1555 = uitofp i32 %1554 to float
  %1556 = mul nuw nsw i32 %1553, 9
  %1557 = uitofp i32 %1556 to float
  %1558 = fadd fast float %1550, %1555
  %1559 = fadd fast float %1551, %1557
  %1560 = fdiv fast float %1558, %1470
  %1561 = fdiv fast float %1559, %1537
  %1562 = fmul fast float %1154, 4.375000e-01
  %1563 = fadd fast float %1562, 3.125000e-02
  %1564 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %22, float %1560, float %1561, float %1563, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1565 = extractvalue %dx.types.ResRet.f32 %1564, 0
  %1566 = extractvalue %dx.types.ResRet.f32 %1564, 1
  %1567 = extractvalue %dx.types.ResRet.f32 %1564, 2
  %1568 = fadd fast float %1562, 5.312500e-01
  %1569 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %22, float %1560, float %1561, float %1568, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1570 = extractvalue %dx.types.ResRet.f32 %1569, 0
  %1571 = extractvalue %dx.types.ResRet.f32 %1569, 1
  %1572 = extractvalue %dx.types.ResRet.f32 %1569, 2
  %1573 = fmul fast float %1570, 2.000000e+00
  %1574 = fmul fast float %1571, 2.000000e+00
  %1575 = fmul fast float %1572, 2.000000e+00
  %1576 = fadd fast float %1573, -1.000000e+00
  %1577 = fadd fast float %1574, -1.000000e+00
  %1578 = fadd fast float %1575, -1.000000e+00
  %1579 = fmul fast float %1576, %1576
  %1580 = fmul fast float %1577, %1577
  %1581 = fadd fast float %1579, %1580
  %1582 = fmul fast float %1578, %1578
  %1583 = fadd fast float %1581, %1582
  %1584 = call float @dx.op.unary.f32(i32 24, float %1583)  ; Sqrt(value)
  %1585 = fcmp fast ogt float %1584, 0.000000e+00
  br i1 %1585, label %1586, label %1590, !dx.controlflow.hints !70

; <label>:1586                                    ; preds = %1536
  %1587 = fdiv fast float %1576, %1584
  %1588 = fdiv fast float %1577, %1584
  %1589 = fdiv fast float %1578, %1584
  br label %1590

; <label>:1590                                    ; preds = %1586, %1536
  %1591 = phi float [ %1587, %1586 ], [ 0.000000e+00, %1536 ]
  %1592 = phi float [ %1588, %1586 ], [ 0.000000e+00, %1536 ]
  %1593 = phi float [ %1589, %1586 ], [ 0.000000e+00, %1536 ]
  %1594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1595 = extractvalue %dx.types.CBufRet.f32 %1594, 0
  %1596 = extractvalue %dx.types.CBufRet.f32 %1594, 1
  %1597 = fsub fast float %191, %1595
  %1598 = fsub fast float %196, %1596
  %1599 = fmul fast float %1597, %1597
  %1600 = fmul fast float %1598, %1598
  %1601 = fadd fast float %1599, %1600
  %1602 = call float @dx.op.unary.f32(i32 24, float %1601)  ; Sqrt(value)
  %1603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1604 = extractvalue %dx.types.CBufRet.f32 %1603, 0
  %1605 = extractvalue %dx.types.CBufRet.f32 %1603, 1
  %1606 = fsub fast float %1602, %1604
  %1607 = fdiv fast float %1606, %1605
  %1608 = call float @dx.op.unary.f32(i32 7, float %1607)  ; Saturate(value)
  %1609 = fmul fast float %1608, 2.000000e+00
  %1610 = fsub fast float 3.000000e+00, %1609
  %1611 = fmul fast float %1608, %1608
  %1612 = fmul fast float %1611, %1610
  %1613 = call float @dx.op.dot3.f32(i32 55, float %1591, float %1592, float %1593, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1614 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1613)  ; FMax(a,b)
  %1615 = fmul fast float %1614, 0x400C5BF8A0000000
  %1616 = fmul fast float %1612, %1565
  %1617 = fmul fast float %1616, %1615
  %1618 = fadd fast float %1617, %1534
  %1619 = fmul fast float %1612, %1566
  %1620 = fmul fast float %1619, %1615
  %1621 = fadd fast float %1620, %1533
  %1622 = fmul fast float %1612, %1567
  %1623 = fmul fast float %1622, %1615
  %1624 = fadd fast float %1623, %1532
  br label %1625

; <label>:1625                                    ; preds = %1590, %1531, %1456
  %1626 = phi float [ %1624, %1590 ], [ %1532, %1531 ], [ %1468, %1456 ]
  %1627 = phi float [ %1621, %1590 ], [ %1533, %1531 ], [ %1467, %1456 ]
  %1628 = phi float [ %1618, %1590 ], [ %1534, %1531 ], [ %1466, %1456 ]
  %1629 = fcmp fast ogt float %201, %1150
  %1630 = and i1 %1472, %1629
  %1631 = and i1 %1474, %1630
  %1632 = and i1 %1476, %1631
  %1633 = and i1 %1478, %1632
  br i1 %1633, label %1634, label %1691, !dx.controlflow.hints !71

; <label>:1634                                    ; preds = %1625
  %1635 = fmul fast float %1152, 0x3FC24924A0000000
  %1636 = fsub fast float %201, %1150
  %1637 = fdiv fast float %1636, %1635
  %1638 = call float @dx.op.unary.f32(i32 7, float %1637)  ; Saturate(value)
  %1639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %1640 = extractvalue %dx.types.CBufRet.f32 %1639, 0
  %1641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %1642 = extractvalue %dx.types.CBufRet.f32 %1641, 0
  %1643 = extractvalue %dx.types.CBufRet.f32 %1641, 1
  %1644 = extractvalue %dx.types.CBufRet.f32 %1641, 2
  %1645 = fsub fast float %1640, %1628
  %1646 = fsub fast float %1642, %1463
  %1647 = fsub fast float %1643, %1464
  %1648 = fsub fast float %1644, %1465
  %1649 = fmul fast float %1645, %1638
  %1650 = fmul fast float %1646, %1638
  %1651 = fmul fast float %1647, %1638
  %1652 = fmul fast float %1648, %1638
  %1653 = fadd fast float %1649, %1628
  %1654 = fadd fast float %1650, %1463
  %1655 = fadd fast float %1651, %1464
  %1656 = fadd fast float %1652, %1465
  %1657 = extractvalue %dx.types.CBufRet.f32 %1639, 1
  %1658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %1659 = extractvalue %dx.types.CBufRet.f32 %1658, 0
  %1660 = extractvalue %dx.types.CBufRet.f32 %1658, 1
  %1661 = extractvalue %dx.types.CBufRet.f32 %1658, 2
  %1662 = fsub fast float %1657, %1627
  %1663 = fsub fast float %1659, %1460
  %1664 = fsub fast float %1660, %1461
  %1665 = fsub fast float %1661, %1462
  %1666 = fmul fast float %1662, %1638
  %1667 = fmul fast float %1663, %1638
  %1668 = fmul fast float %1664, %1638
  %1669 = fmul fast float %1665, %1638
  %1670 = fadd fast float %1666, %1627
  %1671 = fadd fast float %1667, %1460
  %1672 = fadd fast float %1668, %1461
  %1673 = fadd fast float %1669, %1462
  %1674 = extractvalue %dx.types.CBufRet.f32 %1639, 2
  %1675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %1676 = extractvalue %dx.types.CBufRet.f32 %1675, 0
  %1677 = extractvalue %dx.types.CBufRet.f32 %1675, 1
  %1678 = extractvalue %dx.types.CBufRet.f32 %1675, 2
  %1679 = fsub fast float %1674, %1626
  %1680 = fsub fast float %1676, %1457
  %1681 = fsub fast float %1677, %1458
  %1682 = fsub fast float %1678, %1459
  %1683 = fmul fast float %1679, %1638
  %1684 = fmul fast float %1680, %1638
  %1685 = fmul fast float %1681, %1638
  %1686 = fmul fast float %1682, %1638
  %1687 = fadd fast float %1683, %1626
  %1688 = fadd fast float %1684, %1457
  %1689 = fadd fast float %1685, %1458
  %1690 = fadd fast float %1686, %1459
  br label %1691

; <label>:1691                                    ; preds = %1634, %1625
  %1692 = phi float [ %1687, %1634 ], [ %1626, %1625 ]
  %1693 = phi float [ %1688, %1634 ], [ %1457, %1625 ]
  %1694 = phi float [ %1689, %1634 ], [ %1458, %1625 ]
  %1695 = phi float [ %1690, %1634 ], [ %1459, %1625 ]
  %1696 = phi float [ %1670, %1634 ], [ %1627, %1625 ]
  %1697 = phi float [ %1671, %1634 ], [ %1460, %1625 ]
  %1698 = phi float [ %1672, %1634 ], [ %1461, %1625 ]
  %1699 = phi float [ %1673, %1634 ], [ %1462, %1625 ]
  %1700 = phi float [ %1653, %1634 ], [ %1628, %1625 ]
  %1701 = phi float [ %1654, %1634 ], [ %1463, %1625 ]
  %1702 = phi float [ %1655, %1634 ], [ %1464, %1625 ]
  %1703 = phi float [ %1656, %1634 ], [ %1465, %1625 ]
  %1704 = extractvalue %dx.types.CBufRet.f32 %1275, 3
  %1705 = fmul fast float %1704, %1700
  %1706 = fmul fast float %1704, %1696
  %1707 = fmul fast float %1704, %1692
  %1708 = fmul fast float %1701, 1.500000e+00
  %1709 = fmul fast float %1708, %1704
  %1710 = fmul fast float %1702, 1.500000e+00
  %1711 = fmul fast float %1710, %1704
  %1712 = fmul fast float %1703, 1.500000e+00
  %1713 = fmul fast float %1712, %1704
  %1714 = fmul fast float %1697, 1.500000e+00
  %1715 = fmul fast float %1714, %1704
  %1716 = fmul fast float %1698, 1.500000e+00
  %1717 = fmul fast float %1716, %1704
  %1718 = fmul fast float %1699, 1.500000e+00
  %1719 = fmul fast float %1718, %1704
  %1720 = fmul fast float %1693, 1.500000e+00
  %1721 = fmul fast float %1720, %1704
  %1722 = fmul fast float %1694, 1.500000e+00
  %1723 = fmul fast float %1722, %1704
  %1724 = fmul fast float %1695, 1.500000e+00
  %1725 = fmul fast float %1724, %1704
  %1726 = fsub fast float %1115, %1705
  %1727 = fmul fast float %1726, %241
  %1728 = fadd fast float %1727, %1705
  %1729 = fsub fast float %1114, %1709
  %1730 = fmul fast float %1729, %241
  %1731 = fadd fast float %1730, %1709
  %1732 = fsub fast float %1113, %1711
  %1733 = fmul fast float %1732, %241
  %1734 = fadd fast float %1733, %1711
  %1735 = fsub fast float %1112, %1713
  %1736 = fmul fast float %1735, %241
  %1737 = fadd fast float %1736, %1713
  %1738 = fmul fast float %1111, %241
  %1739 = fmul fast float %1110, %241
  %1740 = fmul fast float %1109, %241
  %1741 = fmul fast float %1108, %241
  %1742 = fmul fast float %1107, %241
  %1743 = fsub fast float %1106, %1706
  %1744 = fmul fast float %1743, %241
  %1745 = fadd fast float %1744, %1706
  %1746 = fsub fast float %1105, %1715
  %1747 = fmul fast float %1746, %241
  %1748 = fadd fast float %1747, %1715
  %1749 = fsub fast float %1104, %1717
  %1750 = fmul fast float %1749, %241
  %1751 = fadd fast float %1750, %1717
  %1752 = fsub fast float %1103, %1719
  %1753 = fmul fast float %1752, %241
  %1754 = fadd fast float %1753, %1719
  %1755 = fmul fast float %1102, %241
  %1756 = fmul fast float %1101, %241
  %1757 = fmul fast float %1100, %241
  %1758 = fmul fast float %1099, %241
  %1759 = fmul fast float %1098, %241
  %1760 = fsub fast float %1097, %1707
  %1761 = fmul fast float %1760, %241
  %1762 = fadd fast float %1761, %1707
  %1763 = fsub fast float %1096, %1721
  %1764 = fmul fast float %1763, %241
  %1765 = fadd fast float %1764, %1721
  %1766 = fsub fast float %1095, %1723
  %1767 = fmul fast float %1766, %241
  %1768 = fadd fast float %1767, %1723
  %1769 = fsub fast float %1094, %1725
  %1770 = fmul fast float %1769, %241
  %1771 = fadd fast float %1770, %1725
  %1772 = fmul fast float %1093, %241
  %1773 = fmul fast float %1092, %241
  %1774 = fmul fast float %1091, %241
  %1775 = fmul fast float %1090, %241
  %1776 = fmul fast float %1089, %241
  br label %1777

; <label>:1777                                    ; preds = %1691, %1088
  %1778 = phi float [ %1089, %1088 ], [ %1776, %1691 ]
  %1779 = phi float [ %1090, %1088 ], [ %1775, %1691 ]
  %1780 = phi float [ %1091, %1088 ], [ %1774, %1691 ]
  %1781 = phi float [ %1092, %1088 ], [ %1773, %1691 ]
  %1782 = phi float [ %1093, %1088 ], [ %1772, %1691 ]
  %1783 = phi float [ %1094, %1088 ], [ %1771, %1691 ]
  %1784 = phi float [ %1095, %1088 ], [ %1768, %1691 ]
  %1785 = phi float [ %1096, %1088 ], [ %1765, %1691 ]
  %1786 = phi float [ %1097, %1088 ], [ %1762, %1691 ]
  %1787 = phi float [ %1098, %1088 ], [ %1759, %1691 ]
  %1788 = phi float [ %1099, %1088 ], [ %1758, %1691 ]
  %1789 = phi float [ %1100, %1088 ], [ %1757, %1691 ]
  %1790 = phi float [ %1101, %1088 ], [ %1756, %1691 ]
  %1791 = phi float [ %1102, %1088 ], [ %1755, %1691 ]
  %1792 = phi float [ %1103, %1088 ], [ %1754, %1691 ]
  %1793 = phi float [ %1104, %1088 ], [ %1751, %1691 ]
  %1794 = phi float [ %1105, %1088 ], [ %1748, %1691 ]
  %1795 = phi float [ %1106, %1088 ], [ %1745, %1691 ]
  %1796 = phi float [ %1107, %1088 ], [ %1742, %1691 ]
  %1797 = phi float [ %1108, %1088 ], [ %1741, %1691 ]
  %1798 = phi float [ %1109, %1088 ], [ %1740, %1691 ]
  %1799 = phi float [ %1110, %1088 ], [ %1739, %1691 ]
  %1800 = phi float [ %1111, %1088 ], [ %1738, %1691 ]
  %1801 = phi float [ %1112, %1088 ], [ %1737, %1691 ]
  %1802 = phi float [ %1113, %1088 ], [ %1734, %1691 ]
  %1803 = phi float [ %1114, %1088 ], [ %1731, %1691 ]
  %1804 = phi float [ %1115, %1088 ], [ %1728, %1691 ]
  %1805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1806 = extractvalue %dx.types.CBufRet.f32 %1805, 0
  %1807 = extractvalue %dx.types.CBufRet.f32 %1805, 1
  %1808 = extractvalue %dx.types.CBufRet.f32 %1805, 2
  %1809 = fsub fast float %191, %1806
  %1810 = fsub fast float %196, %1807
  %1811 = fsub fast float %201, %1808
  %1812 = call float @dx.op.dot3.f32(i32 55, float %1809, float %1810, float %1811, float %1809, float %1810, float %1811)  ; Dot3(ax,ay,az,bx,by,bz)
  %1813 = call float @dx.op.unary.f32(i32 25, float %1812)  ; Rsqrt(value)
  %1814 = fmul fast float %1809, %1813
  %1815 = fmul fast float %1810, %1813
  %1816 = fmul fast float %1811, %1813
  %1817 = fsub fast float -0.000000e+00, %1814
  %1818 = fsub fast float -0.000000e+00, %1815
  %1819 = fmul fast float %1804, 0x3FD20DD760000000
  %1820 = fmul fast float %1795, 0x3FD20DD760000000
  %1821 = fmul fast float %1786, 0x3FD20DD760000000
  br i1 %100, label %1902, label %1822, !dx.controlflow.hints !72

; <label>:1822                                    ; preds = %1777
  %1823 = fmul fast float %1802, 0xBFD4D8D7C0000000
  %1824 = fmul fast float %1823, %1816
  %1825 = fmul fast float %1816, %1816
  %1826 = fmul fast float %1825, 0x3FEE471020000000
  %1827 = fadd fast float %1826, 0xBFD42F6020000000
  %1828 = fmul fast float %1827, %1798
  %1829 = fmul fast float %1801, 0x3FD4D8D7C0000000
  %1830 = fmul fast float %1803, 0x3FD4D8D7C0000000
  %1831 = fmul fast float %1830, %1815
  %1832 = fmul fast float %1816, 0x3FF17B1420000000
  %1833 = fmul fast float %1797, %1817
  %1834 = fmul fast float %1799, %1818
  %1835 = fmul fast float %1814, %1814
  %1836 = fmul fast float %1815, %1815
  %1837 = fsub fast float %1835, %1836
  %1838 = fmul fast float %1796, 0x3FC17B1420000000
  %1839 = fmul fast float %1838, %1837
  %1840 = fmul fast float %1800, 0x3FD17B1420000000
  %1841 = fmul fast float %1840, %1813
  %1842 = fmul fast float %1841, %1810
  %1843 = fadd fast float %1833, %1834
  %1844 = fmul fast float %1832, %1843
  %1845 = fadd fast float %1844, %1828
  %1846 = fmul fast float %1845, 2.500000e-01
  %1847 = fadd fast float %1842, %1829
  %1848 = fmul fast float %1847, %1814
  %1849 = fadd fast float %1824, %1819
  %1850 = fadd fast float %1849, %1831
  %1851 = fadd fast float %1850, %1839
  %1852 = fadd fast float %1851, %1846
  %1853 = fadd fast float %1852, %1848
  %1854 = fmul fast float %1793, 0xBFD4D8D7C0000000
  %1855 = fmul fast float %1854, %1816
  %1856 = fmul fast float %1827, %1789
  %1857 = fmul fast float %1792, 0x3FD4D8D7C0000000
  %1858 = fmul fast float %1794, 0x3FD4D8D7C0000000
  %1859 = fmul fast float %1858, %1815
  %1860 = fmul fast float %1788, %1817
  %1861 = fmul fast float %1790, %1818
  %1862 = fmul fast float %1787, 0x3FC17B1420000000
  %1863 = fmul fast float %1862, %1837
  %1864 = fmul fast float %1791, 0x3FD17B1420000000
  %1865 = fmul fast float %1864, %1813
  %1866 = fmul fast float %1865, %1810
  %1867 = fadd fast float %1860, %1861
  %1868 = fmul fast float %1832, %1867
  %1869 = fadd fast float %1868, %1856
  %1870 = fmul fast float %1869, 2.500000e-01
  %1871 = fadd fast float %1866, %1857
  %1872 = fmul fast float %1871, %1814
  %1873 = fadd fast float %1855, %1820
  %1874 = fadd fast float %1873, %1859
  %1875 = fadd fast float %1874, %1863
  %1876 = fadd fast float %1875, %1870
  %1877 = fadd fast float %1876, %1872
  %1878 = fmul fast float %1784, 0xBFD4D8D7C0000000
  %1879 = fmul fast float %1878, %1816
  %1880 = fmul fast float %1827, %1780
  %1881 = fmul fast float %1783, 0x3FD4D8D7C0000000
  %1882 = fmul fast float %1785, 0x3FD4D8D7C0000000
  %1883 = fmul fast float %1882, %1815
  %1884 = fmul fast float %1779, %1817
  %1885 = fmul fast float %1781, %1818
  %1886 = fmul fast float %1778, 0x3FC17B1420000000
  %1887 = fmul fast float %1886, %1837
  %1888 = fmul fast float %1782, 0x3FD17B1420000000
  %1889 = fmul fast float %1888, %1813
  %1890 = fmul fast float %1889, %1810
  %1891 = fadd fast float %1884, %1885
  %1892 = fmul fast float %1832, %1891
  %1893 = fadd fast float %1892, %1880
  %1894 = fmul fast float %1893, 2.500000e-01
  %1895 = fadd fast float %1890, %1881
  %1896 = fmul fast float %1895, %1814
  %1897 = fadd fast float %1879, %1821
  %1898 = fadd fast float %1897, %1883
  %1899 = fadd fast float %1898, %1887
  %1900 = fadd fast float %1899, %1894
  %1901 = fadd fast float %1900, %1896
  br label %1996

; <label>:1902                                    ; preds = %1777
  %1903 = fmul fast float %142, %142
  %1904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1905 = extractvalue %dx.types.CBufRet.f32 %1904, 0
  %1906 = extractvalue %dx.types.CBufRet.f32 %1904, 1
  %1907 = extractvalue %dx.types.CBufRet.f32 %1904, 2
  %1908 = fmul fast float %1802, %142
  %1909 = fmul fast float %1908, %1907
  %1910 = fmul fast float %1907, %1907
  %1911 = fmul fast float %1910, 0x3FEE471020000000
  %1912 = fadd fast float %1911, 0xBFD42F6020000000
  %1913 = fmul fast float %1912, %1798
  %1914 = fmul fast float %1905, %1801
  %1915 = fmul fast float %1906, %1803
  %1916 = fmul fast float %1907, 0x3FF17B1420000000
  %1917 = fmul fast float %1797, %1903
  %1918 = fmul fast float %1917, %1905
  %1919 = fmul fast float %1918, %1916
  %1920 = fmul fast float %1799, %1903
  %1921 = fmul fast float %1920, %1906
  %1922 = fmul fast float %1921, %1916
  %1923 = fmul fast float %1905, %1905
  %1924 = fmul fast float %1906, %1906
  %1925 = fsub fast float %1923, %1924
  %1926 = fmul fast float %1796, 0x3FE17B1420000000
  %1927 = fmul fast float %1926, %1925
  %1928 = fmul fast float %1800, 0x3FF17B1420000000
  %1929 = fmul fast float %1928, %1906
  %1930 = fmul fast float %1929, %1905
  %1931 = fadd fast float %1927, %1930
  %1932 = fadd fast float %1931, %1913
  %1933 = fmul fast float %1932, %1903
  %1934 = fadd fast float %1915, %1914
  %1935 = fmul fast float %1934, %142
  %1936 = fsub fast float %1935, %1909
  %1937 = fmul fast float %1936, 0x3FDF454380000000
  %1938 = fsub fast float %1819, %1919
  %1939 = fsub fast float %1938, %1922
  %1940 = fadd fast float %1939, %1933
  %1941 = fadd fast float %1940, %1937
  %1942 = fmul fast float %1793, %142
  %1943 = fmul fast float %1942, %1907
  %1944 = fmul fast float %1912, %1789
  %1945 = fmul fast float %1905, %1792
  %1946 = fmul fast float %1906, %1794
  %1947 = fmul fast float %1788, %1903
  %1948 = fmul fast float %1947, %1905
  %1949 = fmul fast float %1948, %1916
  %1950 = fmul fast float %1790, %1903
  %1951 = fmul fast float %1950, %1906
  %1952 = fmul fast float %1951, %1916
  %1953 = fmul fast float %1787, 0x3FE17B1420000000
  %1954 = fmul fast float %1953, %1925
  %1955 = fmul fast float %1791, 0x3FF17B1420000000
  %1956 = fmul fast float %1955, %1906
  %1957 = fmul fast float %1956, %1905
  %1958 = fadd fast float %1954, %1957
  %1959 = fadd fast float %1958, %1944
  %1960 = fmul fast float %1959, %1903
  %1961 = fadd fast float %1946, %1945
  %1962 = fmul fast float %1961, %142
  %1963 = fsub fast float %1962, %1943
  %1964 = fmul fast float %1963, 0x3FDF454380000000
  %1965 = fsub fast float %1820, %1949
  %1966 = fsub fast float %1965, %1952
  %1967 = fadd fast float %1966, %1960
  %1968 = fadd fast float %1967, %1964
  %1969 = fmul fast float %1784, %142
  %1970 = fmul fast float %1969, %1907
  %1971 = fmul fast float %1912, %1780
  %1972 = fmul fast float %1905, %1783
  %1973 = fmul fast float %1906, %1785
  %1974 = fmul fast float %1779, %1903
  %1975 = fmul fast float %1974, %1905
  %1976 = fmul fast float %1975, %1916
  %1977 = fmul fast float %1781, %1903
  %1978 = fmul fast float %1977, %1906
  %1979 = fmul fast float %1978, %1916
  %1980 = fmul fast float %1778, 0x3FE17B1420000000
  %1981 = fmul fast float %1980, %1925
  %1982 = fmul fast float %1782, 0x3FF17B1420000000
  %1983 = fmul fast float %1982, %1906
  %1984 = fmul fast float %1983, %1905
  %1985 = fadd fast float %1981, %1984
  %1986 = fadd fast float %1985, %1971
  %1987 = fmul fast float %1986, %1903
  %1988 = fadd fast float %1973, %1972
  %1989 = fmul fast float %1988, %142
  %1990 = fsub fast float %1989, %1970
  %1991 = fmul fast float %1990, 0x3FDF454380000000
  %1992 = fsub fast float %1821, %1976
  %1993 = fsub fast float %1992, %1979
  %1994 = fadd fast float %1993, %1987
  %1995 = fadd fast float %1994, %1991
  br label %1996

; <label>:1996                                    ; preds = %1902, %1822
  %1997 = phi float [ %1853, %1822 ], [ %1941, %1902 ]
  %1998 = phi float [ %1877, %1822 ], [ %1968, %1902 ]
  %1999 = phi float [ %1901, %1822 ], [ %1995, %1902 ]
  %2000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2001 = extractvalue %dx.types.CBufRet.f32 %2000, 3
  %2002 = fmul fast float %2001, %1997
  %2003 = fmul fast float %2001, %1998
  %2004 = fmul fast float %2001, %1999
  %2005 = extractvalue %dx.types.CBufRet.f32 %2000, 0
  %2006 = fmul fast float %2002, %2005
  %2007 = fmul fast float %2003, %2005
  %2008 = fmul fast float %2004, %2005
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %169, i32 %170, i32 undef, float %2006, float %2007, float %2008, float %2006, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %2009 = add i32 %170, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %169, i32 %2009, i32 undef, float %2006, float %2007, float %2008, float %2006, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %2010 = add i32 %169, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %2010, i32 %170, i32 undef, float %2006, float %2007, float %2008, float %2006, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %2010, i32 %2009, i32 undef, float %2006, float %2007, float %2008, float %2006, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2011

; <label>:2011                                    ; preds = %1996, %0
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
!38 = !{void ()* @cs_del_sh_sample_lightgrid_8_lowres, !"cs_del_sh_sample_lightgrid_8_lowres", null, !4, !39}
!39 = !{i32 0, i64 272, i32 4, !40}
!40 = !{i32 4, i32 4, i32 4}
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

