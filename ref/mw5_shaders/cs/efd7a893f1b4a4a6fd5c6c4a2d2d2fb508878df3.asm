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
; shader hash: 0f345a89c738b44b090ec2a2c823bee9
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
;   [16 x i8] (type annotation not present)
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
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb4     1
;                                   cbuffer      NA          NA     CB1            cb3     1
;                                   cbuffer      NA          NA     CB2            cb1     1
;                                   sampler      NA          NA      S0             s2     1
;                                   texture    byte         r/o      T0             t0     1
;                                   texture    byte         r/o      T1             t1     1
;                                   texture    byte         r/o      T2             t2     1
;                                   texture    byte         r/o      T3             t3     1
;                                   texture    byte         r/o      T4             t8     1
;                                   texture    byte         r/o      T5             t4     1
;                                   texture    byte         r/o      T6             t5     1
;                                   texture    byte         r/o      T7             t6     1
;                                   texture    byte         r/o      T8             t7     1
;                                   texture     f32          2d      T9            t33     1
;                                   texture     f32     2darray     T10            t16     1
;                                   texture     f32          3d     T11            t15     1
;                                   texture     f32          2d     T12            t14     1
;                                   texture     f32          2d     T13            t13     1
;                                   texture     u32          2d     T14            t17     1
;                                   texture     f32          3d     T15            t18     1
;                                   texture    byte         r/o     T16            t28     1
;                                   texture  struct         r/o     T17            t37     1
;                                   texture    byte         r/o     T18            t30     1
;                                   texture    byte         r/o     T19            t31     1
;                                   texture    byte         r/o     T20            t43     1
;                                   texture    byte         r/o     T21            t11     1
;                                   texture    byte         r/o     T22            t12     1
;                                       UAV     f32     2darray      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%struct.ByteAddressBuffer = type { i32 }
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
%"class.StructuredBuffer<unsigned int>" = type { i32 }
%"class.RWTexture2DArray<vector<float, 4> >" = type { <4 x float> }
%GfxLGBoundConsts = type { i32, i32, i32, i32 }
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
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 43, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 28, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %30 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %31 = call i32 @dx.op.threadId.i32(i32 93, i32 2)  ; ThreadId(component)
  %32 = alloca [4 x i32], align 4
  %33 = alloca [4 x float], align 4
  %34 = alloca [4 x i32], align 4
  %35 = alloca [4 x float], align 4
  %36 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %37 = extractvalue %dx.types.CBufRet.i32 %36, 2
  %38 = add i32 %37, 6
  %39 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %38, i32 0)  ; BufferLoad(srv,index,wot)
  %40 = extractvalue %dx.types.ResRet.i32 %39, 0
  %41 = icmp ult i32 %29, %40
  br i1 %41, label %42, label %2117, !dx.controlflow.hints !43

; <label>:42                                      ; preds = %0
  %43 = add i32 %37, 9
  %44 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 %43)  ; CBufferLoadLegacy(handle,regIndex)
  %45 = extractvalue %dx.types.CBufRet.i32 %44, 2
  %46 = add i32 %45, %29
  %47 = shl i32 %46, 5
  %48 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %47, i32 undef)  ; BufferLoad(srv,index,wot)
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
  br i1 %60, label %100, label %61, !dx.controlflow.hints !44

; <label>:61                                      ; preds = %42
  %62 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %63 = extractvalue %dx.types.CBufRet.f32 %62, 2
  %64 = extractvalue %dx.types.CBufRet.f32 %62, 3
  %65 = fmul fast float %63, %56
  %66 = fmul fast float %64, %57
  %67 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %68 = extractvalue %dx.types.CBufRet.f32 %67, 0
  %69 = extractvalue %dx.types.CBufRet.f32 %67, 1
  %70 = fadd fast float %65, %68
  %71 = fadd fast float %66, %69
  %72 = call float @dx.op.unary.f32(i32 7, float %70)  ; Saturate(value)
  %73 = call float @dx.op.unary.f32(i32 7, float %71)  ; Saturate(value)
  %74 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %25, float %72, float %73, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %75 = extractvalue %dx.types.ResRet.f32 %74, 0
  %76 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
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
  %89 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
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
  %103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %102, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %168 = add i32 %54, %30
  %169 = add i32 %55, %31
  %170 = uitofp i32 %30 to float
  %171 = uitofp i32 %31 to float
  %172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
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
  %200 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %201 = extractvalue %dx.types.CBufRet.i32 %200, 0
  %202 = icmp eq i32 %201, 1
  br i1 %202, label %203, label %238, !dx.controlflow.hints !45

; <label>:203                                     ; preds = %100
  %204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %205 = extractvalue %dx.types.CBufRet.f32 %204, 0
  %206 = extractvalue %dx.types.CBufRet.f32 %204, 1
  %207 = fsub fast float %189, %205
  %208 = fsub fast float %194, %206
  %209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %210 = extractvalue %dx.types.CBufRet.f32 %209, 0
  %211 = extractvalue %dx.types.CBufRet.f32 %209, 1
  %212 = fmul fast float %207, %210
  %213 = fmul fast float %208, %211
  %214 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %25, float %212, float %213, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %215 = extractvalue %dx.types.ResRet.f32 %214, 0
  %216 = fcmp fast ogt float %215, 0.000000e+00
  %217 = extractvalue %dx.types.CBufRet.i32 %200, 3
  %218 = icmp ne i32 %217, 0
  %219 = and i1 %216, %218
  br i1 %219, label %220, label %238, !dx.controlflow.hints !46

; <label>:220                                     ; preds = %203
  %221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
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
  br i1 %231, label %238, label %232, !dx.controlflow.hints !47

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
  br i1 %240, label %241, label %1142, !dx.controlflow.hints !48

; <label>:241                                     ; preds = %238
  %242 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %243 = extractvalue %dx.types.CBufRet.i32 %242, 2
  %244 = extractvalue %dx.types.CBufRet.i32 %242, 1
  %245 = extractvalue %dx.types.CBufRet.i32 %242, 0
  %246 = getelementptr inbounds [4 x float], [4 x float]* %33, i32 0, i32 0
  store float 0.000000e+00, float* %246, align 4
  %247 = getelementptr inbounds [4 x float], [4 x float]* %33, i32 0, i32 1
  store float 0.000000e+00, float* %247, align 4
  %248 = getelementptr inbounds [4 x float], [4 x float]* %33, i32 0, i32 2
  store float 0.000000e+00, float* %248, align 4
  %249 = getelementptr inbounds [4 x float], [4 x float]* %33, i32 0, i32 3
  store float 0.000000e+00, float* %249, align 4
  %250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %251 = extractvalue %dx.types.ResRet.i32 %250, 0
  %252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %253 = extractvalue %dx.types.ResRet.i32 %252, 0
  %254 = extractvalue %dx.types.ResRet.i32 %252, 1
  %255 = extractvalue %dx.types.ResRet.i32 %252, 2
  %256 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %257 = extractvalue %dx.types.ResRet.f32 %256, 0
  %258 = extractvalue %dx.types.ResRet.f32 %256, 1
  %259 = extractvalue %dx.types.ResRet.f32 %256, 2
  %260 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %261 = extractvalue %dx.types.ResRet.f32 %260, 0
  %262 = extractvalue %dx.types.ResRet.f32 %260, 1
  %263 = extractvalue %dx.types.ResRet.f32 %260, 2
  %264 = fsub fast float %189, %257
  %265 = fsub fast float %194, %258
  %266 = fsub fast float %199, %259
  %267 = fptoui float %264 to i32
  %268 = fptoui float %265 to i32
  %269 = fptoui float %266 to i32
  %270 = fcmp fast olt float %189, %257
  %271 = fcmp fast olt float %194, %258
  %272 = fcmp fast olt float %199, %259
  %273 = or i1 %270, %271
  %274 = or i1 %272, %273
  %275 = fcmp fast oge float %189, %261
  %276 = fcmp fast oge float %194, %262
  %277 = fcmp fast oge float %199, %263
  %278 = or i1 %275, %276
  %279 = or i1 %277, %278
  %280 = or i1 %274, %279
  %281 = and i32 %253, 31
  %282 = lshr i32 %267, %281
  %283 = lshr i32 %268, %281
  %284 = lshr i32 %269, %281
  %285 = mul i32 %283, %251
  %286 = add i32 %285, %282
  %287 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %288 = extractvalue %dx.types.CBufRet.i32 %287, 0
  %289 = icmp ult i32 %286, %288
  br i1 %289, label %290, label %306, !dx.controlflow.hints !49

; <label>:290                                     ; preds = %241
  %291 = mul i32 %286, 12
  %292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %291, i32 undef)  ; BufferLoad(srv,index,wot)
  %293 = extractvalue %dx.types.ResRet.i32 %292, 0
  %294 = add i32 %291, 4
  %295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %294, i32 undef)  ; BufferLoad(srv,index,wot)
  %296 = extractvalue %dx.types.ResRet.i32 %295, 0
  %297 = add i32 %291, 8
  %298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %299 = extractvalue %dx.types.ResRet.i32 %298, 0
  %300 = icmp ult i32 %284, %296
  %301 = icmp ugt i32 %284, %299
  %302 = or i1 %300, %301
  %303 = add i32 %293, %284
  %304 = sub i32 %303, %296
  %305 = select i1 %302, i32 -2147483648, i32 %304
  br label %306

; <label>:306                                     ; preds = %290, %241
  %307 = phi i32 [ %305, %290 ], [ -2147483648, %241 ]
  %308 = select i1 %280, i32 -2147483648, i32 %307
  %309 = icmp sgt i32 %308, -1
  %310 = and i32 %254, 31
  %311 = lshr i32 %267, %310
  %312 = lshr i32 %268, %310
  %313 = lshr i32 %269, %310
  %314 = and i32 %311, 3
  %315 = and i32 %313, 3
  %316 = shl nuw nsw i32 %315, 4
  %317 = shl i32 %312, 2
  %318 = and i32 %317, 12
  %319 = and i32 %316, 16
  %320 = or i32 %318, %314
  %321 = or i32 %320, %319
  %322 = shl i32 1, %321
  %323 = extractvalue %dx.types.CBufRet.i32 %287, 1
  %324 = icmp ult i32 %308, %323
  br i1 %324, label %325, label %343, !dx.controlflow.hints !50

; <label>:325                                     ; preds = %306
  %326 = lshr i32 %315, 1
  %327 = shl i32 %308, 4
  %328 = shl nuw nsw i32 %326, 2
  %329 = or i32 %327, %328
  %330 = or i32 %329, 8
  %331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %330, i32 undef)  ; BufferLoad(srv,index,wot)
  %332 = extractvalue %dx.types.ResRet.i32 %331, 0
  %333 = and i32 %332, %322
  %334 = icmp eq i32 %333, 0
  %335 = add i32 %322, -1
  %336 = and i32 %332, %335
  %337 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %336)  ; Countbits(value)
  %338 = or i32 %327, %328
  %339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %338, i32 undef)  ; BufferLoad(srv,index,wot)
  %340 = extractvalue %dx.types.ResRet.i32 %339, 0
  %341 = add i32 %340, %337
  %342 = select i1 %334, i32 -2147483648, i32 %341
  br label %343

; <label>:343                                     ; preds = %325, %306
  %344 = phi i32 [ %342, %325 ], [ -2147483648, %306 ]
  %345 = select i1 %309, i32 %344, i32 %308
  %346 = icmp sgt i32 %345, -1
  %347 = and i32 %255, 31
  %348 = lshr i32 %267, %347
  %349 = lshr i32 %268, %347
  %350 = lshr i32 %269, %347
  %351 = and i32 %348, 3
  %352 = and i32 %350, 3
  %353 = shl nuw nsw i32 %352, 4
  %354 = shl i32 %349, 2
  %355 = and i32 %354, 12
  %356 = and i32 %353, 16
  %357 = or i32 %355, %351
  %358 = or i32 %357, %356
  %359 = shl i32 1, %358
  %360 = icmp ult i32 %345, %323
  br i1 %360, label %361, label %379, !dx.controlflow.hints !50

; <label>:361                                     ; preds = %343
  %362 = lshr i32 %352, 1
  %363 = shl i32 %345, 4
  %364 = shl nuw nsw i32 %362, 2
  %365 = or i32 %363, %364
  %366 = or i32 %365, 8
  %367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %366, i32 undef)  ; BufferLoad(srv,index,wot)
  %368 = extractvalue %dx.types.ResRet.i32 %367, 0
  %369 = and i32 %368, %359
  %370 = icmp eq i32 %369, 0
  %371 = add i32 %359, -1
  %372 = and i32 %368, %371
  %373 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %372)  ; Countbits(value)
  %374 = or i32 %363, %364
  %375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %374, i32 undef)  ; BufferLoad(srv,index,wot)
  %376 = extractvalue %dx.types.ResRet.i32 %375, 0
  %377 = add i32 %376, %373
  %378 = select i1 %370, i32 -2147483648, i32 %377
  br label %379

; <label>:379                                     ; preds = %361, %343
  %380 = phi i32 [ %378, %361 ], [ -2147483648, %343 ]
  %381 = select i1 %346, i32 %380, i32 %345
  br i1 %280, label %396, label %382, !dx.controlflow.hints !51

; <label>:382                                     ; preds = %379
  %383 = icmp eq i32 %381, -2147483648
  %384 = icmp eq i32 %345, -2147483648
  %385 = select i1 %384, i32 %308, i32 %345
  %386 = select i1 %383, i32 %385, i32 %381
  %387 = icmp sgt i32 %386, -1
  %388 = icmp ne i32 %243, -1
  %389 = and i1 %388, %387
  %390 = select i1 %389, i32 %243, i32 0
  %391 = add i32 %386, %244
  %392 = add i32 %391, %390
  %393 = shl i32 %392, 2
  %394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %393, i32 undef)  ; BufferLoad(srv,index,wot)
  %395 = extractvalue %dx.types.ResRet.i32 %394, 0
  br label %396

; <label>:396                                     ; preds = %382, %379
  %397 = phi i32 [ %395, %382 ], [ -1, %379 ]
  %398 = icmp eq i32 %397, -1
  %399 = select i1 %398, i32 %245, i32 %397
  %400 = icmp eq i32 %399, -1
  br i1 %400, label %549, label %401

; <label>:401                                     ; preds = %396
  br label %402

; <label>:402                                     ; preds = %540, %401
  %403 = phi i32 [ %541, %540 ], [ 0, %401 ]
  %404 = phi i32 [ %405, %540 ], [ -1, %401 ]
  %405 = phi i32 [ %536, %540 ], [ %399, %401 ]
  %406 = phi float [ %512, %540 ], [ 0.000000e+00, %401 ]
  %407 = phi float [ %513, %540 ], [ 0.000000e+00, %401 ]
  %408 = phi float [ %514, %540 ], [ 0.000000e+00, %401 ]
  %409 = phi float [ %517, %540 ], [ 0.000000e+00, %401 ]
  %410 = icmp ugt i32 %403, 50
  br i1 %410, label %543, label %411, !dx.controlflow.hints !52

; <label>:411                                     ; preds = %402
  %412 = shl i32 %405, 4
  %413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %412, i32 undef)  ; BufferLoad(srv,index,wot)
  %414 = extractvalue %dx.types.ResRet.i32 %413, 0
  %415 = extractvalue %dx.types.ResRet.i32 %413, 1
  %416 = extractvalue %dx.types.ResRet.i32 %413, 2
  %417 = extractvalue %dx.types.ResRet.i32 %413, 3
  %418 = and i32 %414, 2147483647
  %419 = mul nsw i32 %418, 12
  %420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %419, i32 undef)  ; BufferLoad(srv,index,wot)
  %421 = extractvalue %dx.types.ResRet.i32 %420, 0
  %422 = extractvalue %dx.types.ResRet.i32 %420, 1
  %423 = extractvalue %dx.types.ResRet.i32 %420, 2
  %424 = and i32 %415, 2147483647
  %425 = mul nsw i32 %424, 12
  %426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %425, i32 undef)  ; BufferLoad(srv,index,wot)
  %427 = extractvalue %dx.types.ResRet.i32 %426, 0
  %428 = extractvalue %dx.types.ResRet.i32 %426, 1
  %429 = extractvalue %dx.types.ResRet.i32 %426, 2
  %430 = and i32 %416, 2147483647
  %431 = mul nsw i32 %430, 12
  %432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %431, i32 undef)  ; BufferLoad(srv,index,wot)
  %433 = extractvalue %dx.types.ResRet.i32 %432, 0
  %434 = extractvalue %dx.types.ResRet.i32 %432, 1
  %435 = extractvalue %dx.types.ResRet.i32 %432, 2
  %436 = and i32 %417, 2147483647
  %437 = mul nsw i32 %436, 12
  %438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %437, i32 undef)  ; BufferLoad(srv,index,wot)
  %439 = extractvalue %dx.types.ResRet.i32 %438, 0
  %440 = extractvalue %dx.types.ResRet.i32 %438, 1
  %441 = extractvalue %dx.types.ResRet.i32 %438, 2
  %442 = bitcast i32 %421 to float
  %443 = bitcast i32 %422 to float
  %444 = bitcast i32 %423 to float
  %445 = bitcast i32 %439 to float
  %446 = bitcast i32 %440 to float
  %447 = bitcast i32 %441 to float
  %448 = fsub fast float %442, %445
  %449 = fsub fast float %443, %446
  %450 = fsub fast float %444, %447
  %451 = bitcast i32 %427 to float
  %452 = bitcast i32 %428 to float
  %453 = bitcast i32 %429 to float
  %454 = fsub fast float %451, %445
  %455 = fsub fast float %452, %446
  %456 = fsub fast float %453, %447
  %457 = bitcast i32 %433 to float
  %458 = bitcast i32 %434 to float
  %459 = bitcast i32 %435 to float
  %460 = fsub fast float %457, %445
  %461 = fsub fast float %458, %446
  %462 = fsub fast float %459, %447
  %463 = fsub fast float %189, %445
  %464 = fsub fast float %194, %446
  %465 = fsub fast float %199, %447
  %466 = fmul fast float %455, %462
  %467 = fmul fast float %461, %456
  %468 = fsub fast float %466, %467
  %469 = fmul fast float %468, %448
  %470 = fmul fast float %454, %462
  %471 = fmul fast float %456, %460
  %472 = fsub fast float %470, %471
  %473 = fmul fast float %472, %449
  %474 = fsub fast float %469, %473
  %475 = fmul fast float %454, %461
  %476 = fmul fast float %455, %460
  %477 = fsub fast float %475, %476
  %478 = fmul fast float %477, %450
  %479 = fadd fast float %474, %478
  %480 = fdiv fast float 1.000000e+00, %479
  %481 = fmul fast float %468, %480
  %482 = fmul fast float %480, %472
  %483 = fsub fast float -0.000000e+00, %482
  %484 = fmul fast float %477, %480
  %485 = fmul fast float %449, %462
  %486 = fmul fast float %450, %461
  %487 = fsub fast float %485, %486
  %488 = fmul fast float %480, %487
  %489 = fsub fast float -0.000000e+00, %488
  %490 = fmul fast float %448, %462
  %491 = fmul fast float %460, %450
  %492 = fsub fast float %490, %491
  %493 = fmul fast float %492, %480
  %494 = fmul fast float %448, %461
  %495 = fmul fast float %449, %460
  %496 = fsub fast float %494, %495
  %497 = fmul fast float %480, %496
  %498 = fsub fast float -0.000000e+00, %497
  %499 = fmul fast float %449, %456
  %500 = fmul fast float %450, %455
  %501 = fsub fast float %499, %500
  %502 = fmul fast float %501, %480
  %503 = fmul fast float %448, %456
  %504 = fmul fast float %450, %454
  %505 = fsub fast float %503, %504
  %506 = fmul fast float %480, %505
  %507 = fsub fast float -0.000000e+00, %506
  %508 = fmul fast float %448, %455
  %509 = fmul fast float %449, %454
  %510 = fsub fast float %508, %509
  %511 = fmul fast float %510, %480
  %512 = call float @dx.op.dot3.f32(i32 55, float %481, float %483, float %484, float %463, float %464, float %465)  ; Dot3(ax,ay,az,bx,by,bz)
  %513 = call float @dx.op.dot3.f32(i32 55, float %489, float %493, float %498, float %463, float %464, float %465)  ; Dot3(ax,ay,az,bx,by,bz)
  %514 = call float @dx.op.dot3.f32(i32 55, float %502, float %507, float %511, float %463, float %464, float %465)  ; Dot3(ax,ay,az,bx,by,bz)
  %515 = fsub fast float 1.000000e+00, %512
  %516 = fsub fast float %515, %513
  %517 = fsub fast float %516, %514
  %518 = call float @dx.op.binary.f32(i32 36, float %512, float %513)  ; FMin(a,b)
  %519 = call float @dx.op.binary.f32(i32 36, float %518, float %514)  ; FMin(a,b)
  %520 = call float @dx.op.binary.f32(i32 36, float %519, float %517)  ; FMin(a,b)
  %521 = call float @dx.op.binary.f32(i32 35, float %512, float %513)  ; FMax(a,b)
  %522 = call float @dx.op.binary.f32(i32 35, float %521, float %514)  ; FMax(a,b)
  %523 = call float @dx.op.binary.f32(i32 35, float %522, float %517)  ; FMax(a,b)
  %524 = fcmp fast oge float %520, 0xBF50624DE0000000
  %525 = fcmp fast olt float %523, 0x3FF00068E0000000
  %526 = and i1 %524, %525
  br i1 %526, label %543, label %527, !dx.controlflow.hints !53

; <label>:527                                     ; preds = %411
  %528 = fcmp fast oeq float %520, %512
  %529 = fcmp fast oeq float %520, %513
  %530 = fcmp fast oeq float %520, %514
  %531 = select i1 %530, i32 8, i32 12
  %532 = select i1 %529, i32 4, i32 %531
  %533 = select i1 %528, i32 0, i32 %532
  %534 = or i32 %533, %412
  %535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %534, i32 undef)  ; BufferLoad(srv,index,wot)
  %536 = extractvalue %dx.types.ResRet.i32 %535, 0
  %537 = icmp ne i32 %404, -1
  %538 = icmp eq i32 %536, %404
  %539 = and i1 %537, %538
  br i1 %539, label %543, label %540, !dx.controlflow.hints !54

; <label>:540                                     ; preds = %527
  %541 = add nuw nsw i32 %403, 1
  %542 = icmp eq i32 %536, -1
  br i1 %542, label %543, label %402, !llvm.loop !55

; <label>:543                                     ; preds = %540, %527, %411, %402
  %544 = phi i32 [ %405, %527 ], [ %405, %411 ], [ -1, %540 ], [ -1, %402 ]
  %545 = phi float [ %512, %527 ], [ %512, %411 ], [ %512, %540 ], [ %406, %402 ]
  %546 = phi float [ %513, %527 ], [ %513, %411 ], [ %513, %540 ], [ %407, %402 ]
  %547 = phi float [ %514, %527 ], [ %514, %411 ], [ %514, %540 ], [ %408, %402 ]
  %548 = phi float [ %517, %527 ], [ %517, %411 ], [ %517, %540 ], [ %409, %402 ]
  br label %549

; <label>:549                                     ; preds = %543, %396
  %550 = phi i32 [ -1, %396 ], [ %544, %543 ]
  %551 = phi float [ 0.000000e+00, %396 ], [ %545, %543 ]
  %552 = phi float [ 0.000000e+00, %396 ], [ %546, %543 ]
  %553 = phi float [ 0.000000e+00, %396 ], [ %547, %543 ]
  %554 = phi float [ 0.000000e+00, %396 ], [ %548, %543 ]
  %555 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %551)  ; FMax(a,b)
  %556 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %552)  ; FMax(a,b)
  %557 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %553)  ; FMax(a,b)
  %558 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %554)  ; FMax(a,b)
  %559 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %555)  ; FMin(a,b)
  %560 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %556)  ; FMin(a,b)
  %561 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %557)  ; FMin(a,b)
  %562 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %558)  ; FMin(a,b)
  store float %559, float* %246, align 4
  store float %560, float* %247, align 4
  store float %561, float* %248, align 4
  store float %562, float* %249, align 4
  %563 = icmp eq i32 %550, -1
  br i1 %563, label %564, label %599, !dx.controlflow.hints !57

; <label>:564                                     ; preds = %549
  %565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %566 = extractvalue %dx.types.ResRet.i32 %565, 1
  %567 = extractvalue %dx.types.ResRet.i32 %565, 2
  %568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %569 = extractvalue %dx.types.ResRet.i32 %568, 0
  %570 = extractvalue %dx.types.ResRet.i32 %568, 1
  %571 = extractvalue %dx.types.ResRet.i32 %568, 2
  %572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %573 = extractvalue %dx.types.ResRet.i32 %572, 0
  %574 = extractvalue %dx.types.ResRet.i32 %572, 1
  %575 = and i32 %573, 65535
  %576 = call float @dx.op.legacyF16ToF32(i32 131, i32 %575)  ; LegacyF16ToF32(value)
  %577 = lshr i32 %573, 16
  %578 = call float @dx.op.legacyF16ToF32(i32 131, i32 %577)  ; LegacyF16ToF32(value)
  %579 = and i32 %574, 65535
  %580 = call float @dx.op.legacyF16ToF32(i32 131, i32 %579)  ; LegacyF16ToF32(value)
  %581 = lshr i32 %574, 16
  %582 = call float @dx.op.legacyF16ToF32(i32 131, i32 %581)  ; LegacyF16ToF32(value)
  %583 = lshr i32 %569, 16
  %584 = call float @dx.op.legacyF16ToF32(i32 131, i32 %583)  ; LegacyF16ToF32(value)
  %585 = and i32 %570, 65535
  %586 = call float @dx.op.legacyF16ToF32(i32 131, i32 %585)  ; LegacyF16ToF32(value)
  %587 = lshr i32 %570, 16
  %588 = call float @dx.op.legacyF16ToF32(i32 131, i32 %587)  ; LegacyF16ToF32(value)
  %589 = and i32 %571, 65535
  %590 = call float @dx.op.legacyF16ToF32(i32 131, i32 %589)  ; LegacyF16ToF32(value)
  %591 = and i32 %566, 65535
  %592 = call float @dx.op.legacyF16ToF32(i32 131, i32 %591)  ; LegacyF16ToF32(value)
  %593 = lshr i32 %566, 16
  %594 = call float @dx.op.legacyF16ToF32(i32 131, i32 %593)  ; LegacyF16ToF32(value)
  %595 = and i32 %567, 65535
  %596 = call float @dx.op.legacyF16ToF32(i32 131, i32 %595)  ; LegacyF16ToF32(value)
  %597 = lshr i32 %567, 16
  %598 = call float @dx.op.legacyF16ToF32(i32 131, i32 %597)  ; LegacyF16ToF32(value)
  br label %1142

; <label>:599                                     ; preds = %549
  %600 = shl nsw i32 %550, 4
  %601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %600, i32 undef)  ; BufferLoad(srv,index,wot)
  %602 = extractvalue %dx.types.ResRet.i32 %601, 0
  %603 = extractvalue %dx.types.ResRet.i32 %601, 1
  %604 = extractvalue %dx.types.ResRet.i32 %601, 2
  %605 = extractvalue %dx.types.ResRet.i32 %601, 3
  %606 = getelementptr inbounds [4 x i32], [4 x i32]* %34, i32 0, i32 0
  store i32 %602, i32* %606, align 4
  %607 = getelementptr inbounds [4 x i32], [4 x i32]* %34, i32 0, i32 1
  store i32 %603, i32* %607, align 4
  %608 = getelementptr inbounds [4 x i32], [4 x i32]* %34, i32 0, i32 2
  store i32 %604, i32* %608, align 4
  %609 = getelementptr inbounds [4 x i32], [4 x i32]* %34, i32 0, i32 3
  store i32 %605, i32* %609, align 4
  %610 = getelementptr inbounds [4 x float], [4 x float]* %35, i32 0, i32 0
  store float 0.000000e+00, float* %610, align 4
  %611 = getelementptr inbounds [4 x float], [4 x float]* %35, i32 0, i32 1
  store float 0.000000e+00, float* %611, align 4
  %612 = getelementptr inbounds [4 x float], [4 x float]* %35, i32 0, i32 2
  store float 0.000000e+00, float* %612, align 4
  %613 = getelementptr inbounds [4 x float], [4 x float]* %35, i32 0, i32 3
  store float 0.000000e+00, float* %613, align 4
  %614 = icmp slt i32 %602, 0
  br i1 %614, label %615, label %705, !dx.controlflow.hints !58

; <label>:615                                     ; preds = %599
  %616 = fsub fast float 1.000000e+00, %559
  %617 = fdiv fast float 1.000000e+00, %616
  %618 = shl nsw i32 %550, 6
  %619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %618, i32 undef)  ; BufferLoad(srv,index,wot)
  %620 = extractvalue %dx.types.ResRet.i32 %619, 0
  %621 = extractvalue %dx.types.ResRet.i32 %619, 1
  %622 = extractvalue %dx.types.ResRet.i32 %619, 2
  %623 = extractvalue %dx.types.ResRet.i32 %619, 3
  %624 = fmul fast float %617, %562
  %625 = fmul fast float %617, %560
  %626 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i32 0, i32 0
  store i32 %620, i32* %626, align 4
  %627 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i32 0, i32 1
  store i32 %621, i32* %627, align 4
  %628 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i32 0, i32 2
  store i32 %622, i32* %628, align 4
  %629 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i32 0, i32 3
  store i32 %623, i32* %629, align 4
  %630 = fmul fast float %625, 4.000000e+00
  %631 = call float @dx.op.unary.f32(i32 27, float %630)  ; Round_ni(value)
  %632 = fmul fast float %624, 4.000000e+00
  %633 = call float @dx.op.unary.f32(i32 27, float %632)  ; Round_ni(value)
  %634 = fsub fast float 1.100000e+01, %631
  %635 = fmul fast float %631, 5.000000e-01
  %636 = fmul fast float %635, %634
  %637 = fadd fast float %633, 5.000000e-01
  %638 = fadd fast float %637, %636
  %639 = fptosi float %638 to i32
  %640 = fptosi float %631 to i32
  %641 = sub nsw i32 5, %640
  %642 = fmul fast float %633, 2.500000e-01
  %643 = fmul fast float %631, 2.500000e-01
  %644 = add nsw i32 %639, 1
  %645 = add nsw i32 %639, %641
  %646 = fsub fast float %624, %642
  %647 = fmul fast float %646, 4.000000e+00
  %648 = fsub fast float %625, %643
  %649 = fmul fast float %648, 4.000000e+00
  %650 = fadd fast float %646, %648
  %651 = fmul fast float %650, 4.000000e+00
  %652 = fcmp fast ogt float %651, 1.000000e+00
  br i1 %652, label %653, label %659, !dx.controlflow.hints !59

; <label>:653                                     ; preds = %615
  %654 = add nsw i32 %645, 1
  %655 = fadd fast float %649, -1.000000e+00
  %656 = fsub fast float -0.000000e+00, %655
  %657 = fadd fast float %647, -1.000000e+00
  %658 = fsub fast float -0.000000e+00, %657
  br label %659

; <label>:659                                     ; preds = %653, %615
  %660 = phi i32 [ %654, %653 ], [ %639, %615 ]
  %661 = phi i32 [ %644, %653 ], [ %645, %615 ]
  %662 = phi i32 [ %645, %653 ], [ %644, %615 ]
  %663 = phi float [ %658, %653 ], [ %649, %615 ]
  %664 = phi float [ %656, %653 ], [ %647, %615 ]
  %665 = fsub fast float 1.000000e+00, %663
  %666 = fsub fast float %665, %664
  %667 = lshr i32 %662, 2
  %668 = getelementptr [4 x i32], [4 x i32]* %32, i32 0, i32 %667
  %669 = load i32, i32* %668, align 4, !tbaa !60, !noalias !64
  %670 = shl i32 %662, 3
  %671 = and i32 %670, 24
  %672 = lshr i32 %669, %671
  %673 = and i32 %672, 255
  %674 = sitofp i32 %673 to float
  %675 = fmul fast float %664, 0x3F70101020000000
  %676 = fmul fast float %675, %674
  %677 = lshr i32 %661, 2
  %678 = getelementptr [4 x i32], [4 x i32]* %32, i32 0, i32 %677
  %679 = load i32, i32* %678, align 4, !tbaa !60, !noalias !64
  %680 = shl i32 %661, 3
  %681 = and i32 %680, 24
  %682 = lshr i32 %679, %681
  %683 = and i32 %682, 255
  %684 = sitofp i32 %683 to float
  %685 = fmul fast float %663, 0x3F70101020000000
  %686 = fmul fast float %685, %684
  %687 = lshr i32 %660, 2
  %688 = getelementptr [4 x i32], [4 x i32]* %32, i32 0, i32 %687
  %689 = load i32, i32* %688, align 4, !tbaa !60, !noalias !64
  %690 = shl i32 %660, 3
  %691 = and i32 %690, 24
  %692 = lshr i32 %689, %691
  %693 = and i32 %692, 255
  %694 = sitofp i32 %693 to float
  %695 = fmul fast float %666, 0x3F70101020000000
  %696 = fmul fast float %695, %694
  %697 = fsub fast float 1.000000e+00, %676
  %698 = fsub fast float %697, %686
  %699 = fsub fast float %698, %696
  %700 = fmul fast float %559, 2.000000e+01
  %701 = fadd fast float %700, 1.000000e+00
  %702 = fmul fast float %699, 2.000000e+01
  %703 = fsub fast float %701, %702
  %704 = call float @dx.op.unary.f32(i32 7, float %703)  ; Saturate(value)
  br label %705

; <label>:705                                     ; preds = %659, %599
  %706 = phi float [ %704, %659 ], [ 1.000000e+00, %599 ]
  store float %706, float* %610, align 4, !tbaa !72, !noalias !64
  %707 = icmp slt i32 %603, 0
  br i1 %707, label %708, label %799, !dx.controlflow.hints !58

; <label>:708                                     ; preds = %705
  %709 = fsub fast float 1.000000e+00, %560
  %710 = fdiv fast float 1.000000e+00, %709
  %711 = shl i32 %550, 6
  %712 = or i32 %711, 16
  %713 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %712, i32 undef)  ; BufferLoad(srv,index,wot)
  %714 = extractvalue %dx.types.ResRet.i32 %713, 0
  %715 = extractvalue %dx.types.ResRet.i32 %713, 1
  %716 = extractvalue %dx.types.ResRet.i32 %713, 2
  %717 = extractvalue %dx.types.ResRet.i32 %713, 3
  %718 = fmul fast float %710, %559
  %719 = fmul fast float %710, %562
  %720 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i32 0, i32 0
  store i32 %714, i32* %720, align 4
  %721 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i32 0, i32 1
  store i32 %715, i32* %721, align 4
  %722 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i32 0, i32 2
  store i32 %716, i32* %722, align 4
  %723 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i32 0, i32 3
  store i32 %717, i32* %723, align 4
  %724 = fmul fast float %719, 4.000000e+00
  %725 = call float @dx.op.unary.f32(i32 27, float %724)  ; Round_ni(value)
  %726 = fmul fast float %718, 4.000000e+00
  %727 = call float @dx.op.unary.f32(i32 27, float %726)  ; Round_ni(value)
  %728 = fsub fast float 1.100000e+01, %725
  %729 = fmul fast float %725, 5.000000e-01
  %730 = fmul fast float %729, %728
  %731 = fadd fast float %727, 5.000000e-01
  %732 = fadd fast float %731, %730
  %733 = fptosi float %732 to i32
  %734 = fptosi float %725 to i32
  %735 = sub nsw i32 5, %734
  %736 = fmul fast float %727, 2.500000e-01
  %737 = fmul fast float %725, 2.500000e-01
  %738 = add nsw i32 %733, 1
  %739 = add nsw i32 %733, %735
  %740 = fsub fast float %718, %736
  %741 = fmul fast float %740, 4.000000e+00
  %742 = fsub fast float %719, %737
  %743 = fmul fast float %742, 4.000000e+00
  %744 = fadd fast float %740, %742
  %745 = fmul fast float %744, 4.000000e+00
  %746 = fcmp fast ogt float %745, 1.000000e+00
  br i1 %746, label %747, label %753, !dx.controlflow.hints !59

; <label>:747                                     ; preds = %708
  %748 = add nsw i32 %739, 1
  %749 = fadd fast float %743, -1.000000e+00
  %750 = fsub fast float -0.000000e+00, %749
  %751 = fadd fast float %741, -1.000000e+00
  %752 = fsub fast float -0.000000e+00, %751
  br label %753

; <label>:753                                     ; preds = %747, %708
  %754 = phi i32 [ %748, %747 ], [ %733, %708 ]
  %755 = phi i32 [ %738, %747 ], [ %739, %708 ]
  %756 = phi i32 [ %739, %747 ], [ %738, %708 ]
  %757 = phi float [ %752, %747 ], [ %743, %708 ]
  %758 = phi float [ %750, %747 ], [ %741, %708 ]
  %759 = fsub fast float 1.000000e+00, %757
  %760 = fsub fast float %759, %758
  %761 = lshr i32 %756, 2
  %762 = getelementptr [4 x i32], [4 x i32]* %32, i32 0, i32 %761
  %763 = load i32, i32* %762, align 4, !tbaa !60, !noalias !64
  %764 = shl i32 %756, 3
  %765 = and i32 %764, 24
  %766 = lshr i32 %763, %765
  %767 = and i32 %766, 255
  %768 = sitofp i32 %767 to float
  %769 = fmul fast float %758, 0x3F70101020000000
  %770 = fmul fast float %769, %768
  %771 = lshr i32 %755, 2
  %772 = getelementptr [4 x i32], [4 x i32]* %32, i32 0, i32 %771
  %773 = load i32, i32* %772, align 4, !tbaa !60, !noalias !64
  %774 = shl i32 %755, 3
  %775 = and i32 %774, 24
  %776 = lshr i32 %773, %775
  %777 = and i32 %776, 255
  %778 = sitofp i32 %777 to float
  %779 = fmul fast float %757, 0x3F70101020000000
  %780 = fmul fast float %779, %778
  %781 = lshr i32 %754, 2
  %782 = getelementptr [4 x i32], [4 x i32]* %32, i32 0, i32 %781
  %783 = load i32, i32* %782, align 4, !tbaa !60, !noalias !64
  %784 = shl i32 %754, 3
  %785 = and i32 %784, 24
  %786 = lshr i32 %783, %785
  %787 = and i32 %786, 255
  %788 = sitofp i32 %787 to float
  %789 = fmul fast float %760, 0x3F70101020000000
  %790 = fmul fast float %789, %788
  %791 = fsub fast float 1.000000e+00, %770
  %792 = fsub fast float %791, %780
  %793 = fsub fast float %792, %790
  %794 = fmul fast float %560, 2.000000e+01
  %795 = fadd fast float %794, 1.000000e+00
  %796 = fmul fast float %793, 2.000000e+01
  %797 = fsub fast float %795, %796
  %798 = call float @dx.op.unary.f32(i32 7, float %797)  ; Saturate(value)
  br label %799

; <label>:799                                     ; preds = %753, %705
  %800 = phi float [ %798, %753 ], [ 1.000000e+00, %705 ]
  store float %800, float* %611, align 4, !tbaa !72, !noalias !64
  %801 = fadd fast float %800, %706
  %802 = icmp slt i32 %604, 0
  br i1 %802, label %803, label %894, !dx.controlflow.hints !58

; <label>:803                                     ; preds = %799
  %804 = fsub fast float 1.000000e+00, %561
  %805 = fdiv fast float 1.000000e+00, %804
  %806 = shl i32 %550, 6
  %807 = or i32 %806, 32
  %808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %807, i32 undef)  ; BufferLoad(srv,index,wot)
  %809 = extractvalue %dx.types.ResRet.i32 %808, 0
  %810 = extractvalue %dx.types.ResRet.i32 %808, 1
  %811 = extractvalue %dx.types.ResRet.i32 %808, 2
  %812 = extractvalue %dx.types.ResRet.i32 %808, 3
  %813 = fmul fast float %805, %559
  %814 = fmul fast float %805, %560
  %815 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i32 0, i32 0
  store i32 %809, i32* %815, align 4
  %816 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i32 0, i32 1
  store i32 %810, i32* %816, align 4
  %817 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i32 0, i32 2
  store i32 %811, i32* %817, align 4
  %818 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i32 0, i32 3
  store i32 %812, i32* %818, align 4
  %819 = fmul fast float %814, 4.000000e+00
  %820 = call float @dx.op.unary.f32(i32 27, float %819)  ; Round_ni(value)
  %821 = fmul fast float %813, 4.000000e+00
  %822 = call float @dx.op.unary.f32(i32 27, float %821)  ; Round_ni(value)
  %823 = fsub fast float 1.100000e+01, %820
  %824 = fmul fast float %820, 5.000000e-01
  %825 = fmul fast float %824, %823
  %826 = fadd fast float %822, 5.000000e-01
  %827 = fadd fast float %826, %825
  %828 = fptosi float %827 to i32
  %829 = fptosi float %820 to i32
  %830 = sub nsw i32 5, %829
  %831 = fmul fast float %822, 2.500000e-01
  %832 = fmul fast float %820, 2.500000e-01
  %833 = add nsw i32 %828, 1
  %834 = add nsw i32 %828, %830
  %835 = fsub fast float %813, %831
  %836 = fmul fast float %835, 4.000000e+00
  %837 = fsub fast float %814, %832
  %838 = fmul fast float %837, 4.000000e+00
  %839 = fadd fast float %835, %837
  %840 = fmul fast float %839, 4.000000e+00
  %841 = fcmp fast ogt float %840, 1.000000e+00
  br i1 %841, label %842, label %848, !dx.controlflow.hints !59

; <label>:842                                     ; preds = %803
  %843 = add nsw i32 %834, 1
  %844 = fadd fast float %838, -1.000000e+00
  %845 = fsub fast float -0.000000e+00, %844
  %846 = fadd fast float %836, -1.000000e+00
  %847 = fsub fast float -0.000000e+00, %846
  br label %848

; <label>:848                                     ; preds = %842, %803
  %849 = phi i32 [ %843, %842 ], [ %828, %803 ]
  %850 = phi i32 [ %833, %842 ], [ %834, %803 ]
  %851 = phi i32 [ %834, %842 ], [ %833, %803 ]
  %852 = phi float [ %847, %842 ], [ %838, %803 ]
  %853 = phi float [ %845, %842 ], [ %836, %803 ]
  %854 = fsub fast float 1.000000e+00, %852
  %855 = fsub fast float %854, %853
  %856 = lshr i32 %851, 2
  %857 = getelementptr [4 x i32], [4 x i32]* %32, i32 0, i32 %856
  %858 = load i32, i32* %857, align 4, !tbaa !60, !noalias !64
  %859 = shl i32 %851, 3
  %860 = and i32 %859, 24
  %861 = lshr i32 %858, %860
  %862 = and i32 %861, 255
  %863 = sitofp i32 %862 to float
  %864 = fmul fast float %853, 0x3F70101020000000
  %865 = fmul fast float %864, %863
  %866 = lshr i32 %850, 2
  %867 = getelementptr [4 x i32], [4 x i32]* %32, i32 0, i32 %866
  %868 = load i32, i32* %867, align 4, !tbaa !60, !noalias !64
  %869 = shl i32 %850, 3
  %870 = and i32 %869, 24
  %871 = lshr i32 %868, %870
  %872 = and i32 %871, 255
  %873 = sitofp i32 %872 to float
  %874 = fmul fast float %852, 0x3F70101020000000
  %875 = fmul fast float %874, %873
  %876 = lshr i32 %849, 2
  %877 = getelementptr [4 x i32], [4 x i32]* %32, i32 0, i32 %876
  %878 = load i32, i32* %877, align 4, !tbaa !60, !noalias !64
  %879 = shl i32 %849, 3
  %880 = and i32 %879, 24
  %881 = lshr i32 %878, %880
  %882 = and i32 %881, 255
  %883 = sitofp i32 %882 to float
  %884 = fmul fast float %855, 0x3F70101020000000
  %885 = fmul fast float %884, %883
  %886 = fsub fast float 1.000000e+00, %865
  %887 = fsub fast float %886, %875
  %888 = fsub fast float %887, %885
  %889 = fmul fast float %561, 2.000000e+01
  %890 = fadd fast float %889, 1.000000e+00
  %891 = fmul fast float %888, 2.000000e+01
  %892 = fsub fast float %890, %891
  %893 = call float @dx.op.unary.f32(i32 7, float %892)  ; Saturate(value)
  br label %894

; <label>:894                                     ; preds = %848, %799
  %895 = phi float [ %893, %848 ], [ 1.000000e+00, %799 ]
  store float %895, float* %612, align 4, !tbaa !72, !noalias !64
  %896 = fadd fast float %801, %895
  %897 = icmp slt i32 %605, 0
  br i1 %897, label %898, label %989, !dx.controlflow.hints !58

; <label>:898                                     ; preds = %894
  %899 = fsub fast float 1.000000e+00, %562
  %900 = fdiv fast float 1.000000e+00, %899
  %901 = shl i32 %550, 6
  %902 = or i32 %901, 48
  %903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %902, i32 undef)  ; BufferLoad(srv,index,wot)
  %904 = extractvalue %dx.types.ResRet.i32 %903, 0
  %905 = extractvalue %dx.types.ResRet.i32 %903, 1
  %906 = extractvalue %dx.types.ResRet.i32 %903, 2
  %907 = extractvalue %dx.types.ResRet.i32 %903, 3
  %908 = fmul fast float %900, %559
  %909 = fmul fast float %900, %560
  %910 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i32 0, i32 0
  store i32 %904, i32* %910, align 4
  %911 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i32 0, i32 1
  store i32 %905, i32* %911, align 4
  %912 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i32 0, i32 2
  store i32 %906, i32* %912, align 4
  %913 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i32 0, i32 3
  store i32 %907, i32* %913, align 4
  %914 = fmul fast float %909, 4.000000e+00
  %915 = call float @dx.op.unary.f32(i32 27, float %914)  ; Round_ni(value)
  %916 = fmul fast float %908, 4.000000e+00
  %917 = call float @dx.op.unary.f32(i32 27, float %916)  ; Round_ni(value)
  %918 = fsub fast float 1.100000e+01, %915
  %919 = fmul fast float %915, 5.000000e-01
  %920 = fmul fast float %919, %918
  %921 = fadd fast float %917, 5.000000e-01
  %922 = fadd fast float %921, %920
  %923 = fptosi float %922 to i32
  %924 = fptosi float %915 to i32
  %925 = sub nsw i32 5, %924
  %926 = fmul fast float %917, 2.500000e-01
  %927 = fmul fast float %915, 2.500000e-01
  %928 = add nsw i32 %923, 1
  %929 = add nsw i32 %923, %925
  %930 = fsub fast float %908, %926
  %931 = fmul fast float %930, 4.000000e+00
  %932 = fsub fast float %909, %927
  %933 = fmul fast float %932, 4.000000e+00
  %934 = fadd fast float %930, %932
  %935 = fmul fast float %934, 4.000000e+00
  %936 = fcmp fast ogt float %935, 1.000000e+00
  br i1 %936, label %937, label %943, !dx.controlflow.hints !59

; <label>:937                                     ; preds = %898
  %938 = add nsw i32 %929, 1
  %939 = fadd fast float %933, -1.000000e+00
  %940 = fsub fast float -0.000000e+00, %939
  %941 = fadd fast float %931, -1.000000e+00
  %942 = fsub fast float -0.000000e+00, %941
  br label %943

; <label>:943                                     ; preds = %937, %898
  %944 = phi i32 [ %938, %937 ], [ %923, %898 ]
  %945 = phi i32 [ %928, %937 ], [ %929, %898 ]
  %946 = phi i32 [ %929, %937 ], [ %928, %898 ]
  %947 = phi float [ %942, %937 ], [ %933, %898 ]
  %948 = phi float [ %940, %937 ], [ %931, %898 ]
  %949 = fsub fast float 1.000000e+00, %947
  %950 = fsub fast float %949, %948
  %951 = lshr i32 %946, 2
  %952 = getelementptr [4 x i32], [4 x i32]* %32, i32 0, i32 %951
  %953 = load i32, i32* %952, align 4, !tbaa !60, !noalias !64
  %954 = shl i32 %946, 3
  %955 = and i32 %954, 24
  %956 = lshr i32 %953, %955
  %957 = and i32 %956, 255
  %958 = sitofp i32 %957 to float
  %959 = fmul fast float %948, 0x3F70101020000000
  %960 = fmul fast float %959, %958
  %961 = lshr i32 %945, 2
  %962 = getelementptr [4 x i32], [4 x i32]* %32, i32 0, i32 %961
  %963 = load i32, i32* %962, align 4, !tbaa !60, !noalias !64
  %964 = shl i32 %945, 3
  %965 = and i32 %964, 24
  %966 = lshr i32 %963, %965
  %967 = and i32 %966, 255
  %968 = sitofp i32 %967 to float
  %969 = fmul fast float %947, 0x3F70101020000000
  %970 = fmul fast float %969, %968
  %971 = lshr i32 %944, 2
  %972 = getelementptr [4 x i32], [4 x i32]* %32, i32 0, i32 %971
  %973 = load i32, i32* %972, align 4, !tbaa !60, !noalias !64
  %974 = shl i32 %944, 3
  %975 = and i32 %974, 24
  %976 = lshr i32 %973, %975
  %977 = and i32 %976, 255
  %978 = sitofp i32 %977 to float
  %979 = fmul fast float %950, 0x3F70101020000000
  %980 = fmul fast float %979, %978
  %981 = fsub fast float 1.000000e+00, %960
  %982 = fsub fast float %981, %970
  %983 = fsub fast float %982, %980
  %984 = fmul fast float %562, 2.000000e+01
  %985 = fadd fast float %984, 1.000000e+00
  %986 = fmul fast float %983, 2.000000e+01
  %987 = fsub fast float %985, %986
  %988 = call float @dx.op.unary.f32(i32 7, float %987)  ; Saturate(value)
  br label %989

; <label>:989                                     ; preds = %943, %894
  %990 = phi float [ %988, %943 ], [ 1.000000e+00, %894 ]
  store float %990, float* %613, align 4, !tbaa !72, !noalias !64
  %991 = fadd fast float %896, %990
  %992 = fcmp fast oeq float %991, 0.000000e+00
  br i1 %992, label %993, label %994, !dx.controlflow.hints !74

; <label>:993                                     ; preds = %989
  store float 2.500000e-01, float* %610, align 4
  store float 2.500000e-01, float* %611, align 4
  store float 2.500000e-01, float* %612, align 4
  store float 2.500000e-01, float* %613, align 4
  br label %994

; <label>:994                                     ; preds = %993, %989
  %995 = phi float [ 2.500000e-01, %993 ], [ %706, %989 ]
  br label %996

; <label>:996                                     ; preds = %1123, %994
  %997 = phi float [ %1125, %1123 ], [ %995, %994 ]
  %998 = phi float [ %1108, %1123 ], [ 0.000000e+00, %994 ]
  %999 = phi float [ %1109, %1123 ], [ 0.000000e+00, %994 ]
  %1000 = phi float [ %1110, %1123 ], [ 0.000000e+00, %994 ]
  %1001 = phi float [ %1111, %1123 ], [ 0.000000e+00, %994 ]
  %1002 = phi float [ %1112, %1123 ], [ 0.000000e+00, %994 ]
  %1003 = phi float [ %1113, %1123 ], [ 0.000000e+00, %994 ]
  %1004 = phi float [ %1114, %1123 ], [ 0.000000e+00, %994 ]
  %1005 = phi float [ %1115, %1123 ], [ 0.000000e+00, %994 ]
  %1006 = phi float [ %1116, %1123 ], [ 0.000000e+00, %994 ]
  %1007 = phi float [ %1117, %1123 ], [ 0.000000e+00, %994 ]
  %1008 = phi float [ %1118, %1123 ], [ 0.000000e+00, %994 ]
  %1009 = phi float [ %1119, %1123 ], [ 0.000000e+00, %994 ]
  %1010 = phi float [ %1120, %1123 ], [ 0.000000e+00, %994 ]
  %1011 = phi i32 [ %1121, %1123 ], [ 0, %994 ]
  %1012 = fcmp fast ogt float %997, 0.000000e+00
  br i1 %1012, label %1013, label %1107, !dx.controlflow.hints !75

; <label>:1013                                    ; preds = %996
  %1014 = getelementptr [4 x float], [4 x float]* %33, i32 0, i32 %1011
  %1015 = load float, float* %1014, align 4, !tbaa !72, !noalias !64
  %1016 = getelementptr [4 x i32], [4 x i32]* %34, i32 0, i32 %1011
  %1017 = load i32, i32* %1016, align 4, !tbaa !60, !noalias !64
  %1018 = fmul fast float %1015, %997
  %1019 = shl i32 %1017, 5
  %1020 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1019, i32 undef)  ; BufferLoad(srv,index,wot)
  %1021 = extractvalue %dx.types.ResRet.i32 %1020, 0
  %1022 = extractvalue %dx.types.ResRet.i32 %1020, 1
  %1023 = extractvalue %dx.types.ResRet.i32 %1020, 3
  %1024 = or i32 %1019, 16
  %1025 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1024, i32 undef)  ; BufferLoad(srv,index,wot)
  %1026 = extractvalue %dx.types.ResRet.i32 %1025, 1
  %1027 = shl i32 %1021, 4
  %1028 = and i32 %1027, 32752
  %1029 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1028)  ; LegacyF16ToF32(value)
  %1030 = lshr i32 %1021, 7
  %1031 = and i32 %1030, 32752
  %1032 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1031)  ; LegacyF16ToF32(value)
  %1033 = lshr i32 %1021, 22
  %1034 = shl nuw nsw i32 %1033, 5
  %1035 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1034)  ; LegacyF16ToF32(value)
  %1036 = and i32 %1022, 255
  %1037 = uitofp i32 %1036 to float
  %1038 = fmul fast float %1037, 0x3F80204080000000
  %1039 = fadd fast float %1038, -1.000000e+00
  %1040 = lshr i32 %1022, 8
  %1041 = and i32 %1040, 255
  %1042 = uitofp i32 %1041 to float
  %1043 = fmul fast float %1042, 0x3F80204080000000
  %1044 = fadd fast float %1043, -1.000000e+00
  %1045 = lshr i32 %1022, 16
  %1046 = and i32 %1045, 255
  %1047 = uitofp i32 %1046 to float
  %1048 = fmul fast float %1047, 0x3F80204080000000
  %1049 = fadd fast float %1048, -1.000000e+00
  %1050 = and i32 %1023, 255
  %1051 = uitofp i32 %1050 to float
  %1052 = fmul fast float %1051, 0x3F80204080000000
  %1053 = fadd fast float %1052, -1.000000e+00
  %1054 = lshr i32 %1023, 8
  %1055 = and i32 %1054, 255
  %1056 = uitofp i32 %1055 to float
  %1057 = fmul fast float %1056, 0x3F80204080000000
  %1058 = fadd fast float %1057, -1.000000e+00
  %1059 = lshr i32 %1023, 16
  %1060 = and i32 %1059, 255
  %1061 = uitofp i32 %1060 to float
  %1062 = fmul fast float %1061, 0x3F80204080000000
  %1063 = fadd fast float %1062, -1.000000e+00
  %1064 = and i32 %1026, 255
  %1065 = uitofp i32 %1064 to float
  %1066 = fmul fast float %1065, 0x3F80204080000000
  %1067 = fadd fast float %1066, -1.000000e+00
  %1068 = lshr i32 %1026, 8
  %1069 = and i32 %1068, 255
  %1070 = uitofp i32 %1069 to float
  %1071 = fmul fast float %1070, 0x3F80204080000000
  %1072 = fadd fast float %1071, -1.000000e+00
  %1073 = lshr i32 %1026, 16
  %1074 = and i32 %1073, 255
  %1075 = uitofp i32 %1074 to float
  %1076 = fmul fast float %1075, 0x3F80204080000000
  %1077 = fadd fast float %1076, -1.000000e+00
  %1078 = fmul fast float %1029, %1018
  %1079 = fadd fast float %1078, %1001
  %1080 = fmul fast float %1018, 0x3FFBB67AE0000000
  %1081 = fmul fast float %1080, %1029
  %1082 = fmul fast float %1081, %1039
  %1083 = fadd fast float %1082, %1000
  %1084 = fmul fast float %1081, %1044
  %1085 = fadd fast float %1084, %999
  %1086 = fmul fast float %1081, %1049
  %1087 = fadd fast float %1086, %998
  %1088 = fmul fast float %1032, %1018
  %1089 = fadd fast float %1088, %1005
  %1090 = fmul fast float %1080, %1032
  %1091 = fmul fast float %1090, %1053
  %1092 = fadd fast float %1091, %1004
  %1093 = fmul fast float %1090, %1058
  %1094 = fadd fast float %1093, %1003
  %1095 = fmul fast float %1090, %1063
  %1096 = fadd fast float %1095, %1002
  %1097 = fmul fast float %1035, %1018
  %1098 = fadd fast float %1097, %1009
  %1099 = fmul fast float %1080, %1035
  %1100 = fmul fast float %1099, %1067
  %1101 = fadd fast float %1100, %1008
  %1102 = fmul fast float %1099, %1072
  %1103 = fadd fast float %1102, %1007
  %1104 = fmul fast float %1099, %1077
  %1105 = fadd fast float %1104, %1006
  %1106 = fadd fast float %1018, %1010
  br label %1107

; <label>:1107                                    ; preds = %1013, %996
  %1108 = phi float [ %1087, %1013 ], [ %998, %996 ]
  %1109 = phi float [ %1085, %1013 ], [ %999, %996 ]
  %1110 = phi float [ %1083, %1013 ], [ %1000, %996 ]
  %1111 = phi float [ %1079, %1013 ], [ %1001, %996 ]
  %1112 = phi float [ %1096, %1013 ], [ %1002, %996 ]
  %1113 = phi float [ %1094, %1013 ], [ %1003, %996 ]
  %1114 = phi float [ %1092, %1013 ], [ %1004, %996 ]
  %1115 = phi float [ %1089, %1013 ], [ %1005, %996 ]
  %1116 = phi float [ %1105, %1013 ], [ %1006, %996 ]
  %1117 = phi float [ %1103, %1013 ], [ %1007, %996 ]
  %1118 = phi float [ %1101, %1013 ], [ %1008, %996 ]
  %1119 = phi float [ %1098, %1013 ], [ %1009, %996 ]
  %1120 = phi float [ %1106, %1013 ], [ %1010, %996 ]
  %1121 = add nuw nsw i32 %1011, 1
  %1122 = icmp eq i32 %1121, 4
  br i1 %1122, label %1126, label %1123

; <label>:1123                                    ; preds = %1107
  %1124 = getelementptr [4 x float], [4 x float]* %35, i32 0, i32 %1121
  %1125 = load float, float* %1124, align 4, !tbaa !72, !noalias !64
  br label %996

; <label>:1126                                    ; preds = %1107
  %1127 = fcmp fast ogt float %1120, 0.000000e+00
  %1128 = fdiv fast float 1.000000e+00, %1120
  %1129 = select i1 %1127, float %1128, float 1.000000e+00
  %1130 = fmul fast float %1129, %1111
  %1131 = fmul fast float %1129, %1110
  %1132 = fmul fast float %1129, %1109
  %1133 = fmul fast float %1129, %1108
  %1134 = fmul fast float %1129, %1115
  %1135 = fmul fast float %1129, %1114
  %1136 = fmul fast float %1129, %1113
  %1137 = fmul fast float %1129, %1112
  %1138 = fmul fast float %1129, %1119
  %1139 = fmul fast float %1129, %1118
  %1140 = fmul fast float %1129, %1117
  %1141 = fmul fast float %1129, %1116
  br label %1142

; <label>:1142                                    ; preds = %1126, %564, %238
  %1143 = phi float [ 0.000000e+00, %238 ], [ %1141, %1126 ], [ %598, %564 ]
  %1144 = phi float [ 0.000000e+00, %238 ], [ %1140, %1126 ], [ %596, %564 ]
  %1145 = phi float [ 0.000000e+00, %238 ], [ %1139, %1126 ], [ %594, %564 ]
  %1146 = phi float [ 0.000000e+00, %238 ], [ %1138, %1126 ], [ %592, %564 ]
  %1147 = phi float [ 0.000000e+00, %238 ], [ %1137, %1126 ], [ %590, %564 ]
  %1148 = phi float [ 0.000000e+00, %238 ], [ %1136, %1126 ], [ %588, %564 ]
  %1149 = phi float [ 0.000000e+00, %238 ], [ %1135, %1126 ], [ %586, %564 ]
  %1150 = phi float [ 0.000000e+00, %238 ], [ %1134, %1126 ], [ %584, %564 ]
  %1151 = phi float [ 0.000000e+00, %238 ], [ %1133, %1126 ], [ %582, %564 ]
  %1152 = phi float [ 0.000000e+00, %238 ], [ %1132, %1126 ], [ %580, %564 ]
  %1153 = phi float [ 0.000000e+00, %238 ], [ %1131, %1126 ], [ %578, %564 ]
  %1154 = phi float [ 0.000000e+00, %238 ], [ %1130, %1126 ], [ %576, %564 ]
  %1155 = fcmp fast olt float %239, 1.000000e+00
  br i1 %1155, label %1156, label %1801, !dx.controlflow.hints !76

; <label>:1156                                    ; preds = %1142
  %1157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1158 = extractvalue %dx.types.CBufRet.f32 %1157, 0
  %1159 = extractvalue %dx.types.CBufRet.f32 %1157, 1
  %1160 = fsub fast float %189, %1158
  %1161 = fsub fast float %194, %1159
  %1162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1163 = extractvalue %dx.types.CBufRet.f32 %1162, 0
  %1164 = extractvalue %dx.types.CBufRet.f32 %1162, 1
  %1165 = fmul fast float %1160, %1163
  %1166 = fmul fast float %1161, %1164
  %1167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1168 = extractvalue %dx.types.CBufRet.f32 %1167, 0
  %1169 = fmul fast float %1168, %1165
  %1170 = extractvalue %dx.types.CBufRet.f32 %1167, 1
  %1171 = fadd fast float %1169, %1170
  %1172 = extractvalue %dx.types.CBufRet.f32 %1167, 2
  %1173 = fmul fast float %1172, %1166
  %1174 = extractvalue %dx.types.CBufRet.f32 %1167, 3
  %1175 = fadd fast float %1173, %1174
  %1176 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %25, float %1171, float %1175, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1177 = extractvalue %dx.types.ResRet.f32 %1176, 0
  %1178 = extractvalue %dx.types.ResRet.f32 %1176, 1
  %1179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1180 = extractvalue %dx.types.CBufRet.f32 %1179, 1
  %1181 = extractvalue %dx.types.CBufRet.f32 %1179, 0
  %1182 = fsub fast float %1180, %1181
  %1183 = fmul fast float %1182, %1177
  %1184 = fadd fast float %1183, %1181
  %1185 = extractvalue %dx.types.CBufRet.f32 %1179, 3
  %1186 = extractvalue %dx.types.CBufRet.f32 %1179, 2
  %1187 = fsub fast float %1185, %1186
  %1188 = fmul fast float %1187, %1178
  %1189 = fadd fast float %1188, %1186
  %1190 = fsub fast float %199, %1184
  %1191 = fsub fast float %1189, %1184
  %1192 = fdiv fast float %1190, %1191
  %1193 = call float @dx.op.unary.f32(i32 7, float %1192)  ; Saturate(value)
  %1194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %1195 = extractvalue %dx.types.CBufRet.f32 %1194, 0
  %1196 = fmul fast float %1195, %1193
  %1197 = extractvalue %dx.types.CBufRet.f32 %1194, 1
  %1198 = fadd fast float %1196, %1197
  %1199 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %25, float %1171, float %1175, float %1198, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1200 = extractvalue %dx.types.ResRet.f32 %1199, 0
  %1201 = extractvalue %dx.types.ResRet.f32 %1199, 1
  %1202 = extractvalue %dx.types.ResRet.f32 %1199, 2
  %1203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %1204 = extractvalue %dx.types.CBufRet.f32 %1203, 0
  %1205 = extractvalue %dx.types.CBufRet.f32 %1203, 1
  %1206 = extractvalue %dx.types.CBufRet.f32 %1203, 2
  %1207 = fmul fast float %1204, %1200
  %1208 = fmul fast float %1205, %1201
  %1209 = fmul fast float %1206, %1202
  %1210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %1211 = extractvalue %dx.types.CBufRet.f32 %1210, 0
  %1212 = extractvalue %dx.types.CBufRet.f32 %1210, 1
  %1213 = extractvalue %dx.types.CBufRet.f32 %1210, 2
  %1214 = fadd fast float %1207, %1211
  %1215 = fadd fast float %1208, %1212
  %1216 = fadd fast float %1209, %1213
  %1217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %1218 = extractvalue %dx.types.CBufRet.f32 %1217, 0
  %1219 = fmul fast float %1218, %1165
  %1220 = extractvalue %dx.types.CBufRet.f32 %1217, 1
  %1221 = fadd fast float %1219, %1220
  %1222 = extractvalue %dx.types.CBufRet.f32 %1217, 2
  %1223 = fmul fast float %1222, %1166
  %1224 = extractvalue %dx.types.CBufRet.f32 %1217, 3
  %1225 = fadd fast float %1223, %1224
  %1226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %1227 = extractvalue %dx.types.CBufRet.f32 %1226, 0
  %1228 = extractvalue %dx.types.CBufRet.f32 %1226, 1
  %1229 = extractvalue %dx.types.CBufRet.f32 %1226, 2
  %1230 = extractvalue %dx.types.CBufRet.f32 %1226, 3
  %1231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %1232 = extractvalue %dx.types.CBufRet.f32 %1231, 0
  %1233 = extractvalue %dx.types.CBufRet.f32 %1231, 1
  %1234 = extractvalue %dx.types.CBufRet.f32 %1231, 2
  %1235 = extractvalue %dx.types.CBufRet.f32 %1231, 3
  %1236 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %25, float %1221, float %1225, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1237 = extractvalue %dx.types.ResRet.f32 %1236, 0
  %1238 = extractvalue %dx.types.ResRet.f32 %1236, 1
  %1239 = extractvalue %dx.types.ResRet.f32 %1236, 2
  %1240 = extractvalue %dx.types.ResRet.f32 %1236, 3
  %1241 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %25, float %1221, float %1225, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1242 = extractvalue %dx.types.ResRet.f32 %1241, 0
  %1243 = extractvalue %dx.types.ResRet.f32 %1241, 1
  %1244 = extractvalue %dx.types.ResRet.f32 %1241, 2
  %1245 = extractvalue %dx.types.ResRet.f32 %1241, 3
  %1246 = fmul fast float %1237, %1214
  %1247 = fmul fast float %1242, %1214
  %1248 = fmul fast float %1244, %1214
  %1249 = fmul fast float %1240, %1214
  %1250 = fadd fast float %1246, %1227
  %1251 = fadd fast float %1247, %1228
  %1252 = fadd fast float %1248, %1229
  %1253 = fadd fast float %1249, %1230
  %1254 = fmul fast float %1238, %1214
  %1255 = fmul fast float %1243, %1214
  %1256 = fadd fast float %1254, %1232
  %1257 = fadd fast float %1255, %1233
  %1258 = fmul fast float %1239, %1214
  %1259 = fmul fast float %1245, %1214
  %1260 = fadd fast float %1258, %1234
  %1261 = fadd fast float %1259, %1235
  %1262 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %25, float %1221, float %1225, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1263 = extractvalue %dx.types.ResRet.f32 %1262, 0
  %1264 = extractvalue %dx.types.ResRet.f32 %1262, 1
  %1265 = extractvalue %dx.types.ResRet.f32 %1262, 2
  %1266 = extractvalue %dx.types.ResRet.f32 %1262, 3
  %1267 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %25, float %1221, float %1225, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1268 = extractvalue %dx.types.ResRet.f32 %1267, 0
  %1269 = extractvalue %dx.types.ResRet.f32 %1267, 1
  %1270 = extractvalue %dx.types.ResRet.f32 %1267, 2
  %1271 = extractvalue %dx.types.ResRet.f32 %1267, 3
  %1272 = fmul fast float %1263, %1215
  %1273 = fmul fast float %1268, %1215
  %1274 = fmul fast float %1270, %1215
  %1275 = fmul fast float %1266, %1215
  %1276 = fadd fast float %1250, %1272
  %1277 = fadd fast float %1251, %1273
  %1278 = fadd fast float %1252, %1274
  %1279 = fadd fast float %1253, %1275
  %1280 = fmul fast float %1264, %1215
  %1281 = fmul fast float %1269, %1215
  %1282 = fadd fast float %1256, %1280
  %1283 = fadd fast float %1257, %1281
  %1284 = fmul fast float %1265, %1215
  %1285 = fmul fast float %1271, %1215
  %1286 = fadd fast float %1260, %1284
  %1287 = fadd fast float %1261, %1285
  %1288 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %25, float %1221, float %1225, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1289 = extractvalue %dx.types.ResRet.f32 %1288, 0
  %1290 = extractvalue %dx.types.ResRet.f32 %1288, 1
  %1291 = extractvalue %dx.types.ResRet.f32 %1288, 2
  %1292 = extractvalue %dx.types.ResRet.f32 %1288, 3
  %1293 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %25, float %1221, float %1225, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1294 = extractvalue %dx.types.ResRet.f32 %1293, 0
  %1295 = extractvalue %dx.types.ResRet.f32 %1293, 1
  %1296 = extractvalue %dx.types.ResRet.f32 %1293, 2
  %1297 = extractvalue %dx.types.ResRet.f32 %1293, 3
  %1298 = fmul fast float %1289, %1216
  %1299 = fmul fast float %1294, %1216
  %1300 = fmul fast float %1296, %1216
  %1301 = fmul fast float %1292, %1216
  %1302 = fadd fast float %1276, %1298
  %1303 = fadd fast float %1277, %1299
  %1304 = fadd fast float %1278, %1300
  %1305 = fadd fast float %1279, %1301
  %1306 = fmul fast float %1290, %1216
  %1307 = fmul fast float %1295, %1216
  %1308 = fadd fast float %1282, %1306
  %1309 = fadd fast float %1283, %1307
  %1310 = fmul fast float %1291, %1216
  %1311 = fmul fast float %1297, %1216
  %1312 = fadd fast float %1286, %1310
  %1313 = fadd fast float %1287, %1311
  %1314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %1315 = extractvalue %dx.types.CBufRet.f32 %1314, 0
  %1316 = fsub fast float %189, %1315
  %1317 = fsub fast float %1158, %189
  %1318 = call float @dx.op.binary.f32(i32 35, float %1317, float %1316)  ; FMax(a,b)
  %1319 = extractvalue %dx.types.CBufRet.f32 %1314, 1
  %1320 = fsub fast float %194, %1319
  %1321 = fsub fast float %1159, %194
  %1322 = call float @dx.op.binary.f32(i32 35, float %1321, float %1320)  ; FMax(a,b)
  %1323 = call float @dx.op.binary.f32(i32 35, float %1318, float %1322)  ; FMax(a,b)
  %1324 = extractvalue %dx.types.CBufRet.f32 %1162, 3
  %1325 = fmul fast float %1324, %1323
  %1326 = call float @dx.op.unary.f32(i32 7, float %1325)  ; Saturate(value)
  %1327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %1328 = extractvalue %dx.types.CBufRet.f32 %1327, 0
  %1329 = extractvalue %dx.types.CBufRet.f32 %1327, 1
  %1330 = extractvalue %dx.types.CBufRet.f32 %1327, 2
  %1331 = extractvalue %dx.types.CBufRet.f32 %1327, 3
  %1332 = fsub fast float %1328, %1302
  %1333 = fsub fast float %1329, %1303
  %1334 = fsub fast float %1330, %1304
  %1335 = fsub fast float %1331, %1305
  %1336 = fmul fast float %1332, %1326
  %1337 = fmul fast float %1333, %1326
  %1338 = fmul fast float %1334, %1326
  %1339 = fmul fast float %1335, %1326
  %1340 = fadd fast float %1336, %1302
  %1341 = fadd fast float %1337, %1303
  %1342 = fadd fast float %1338, %1304
  %1343 = fadd fast float %1339, %1305
  %1344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %1345 = extractvalue %dx.types.CBufRet.f32 %1344, 0
  %1346 = extractvalue %dx.types.CBufRet.f32 %1344, 1
  %1347 = fsub fast float %1345, %1308
  %1348 = fsub fast float %1346, %1309
  %1349 = fmul fast float %1347, %1326
  %1350 = fmul fast float %1348, %1326
  %1351 = fadd fast float %1349, %1308
  %1352 = fadd fast float %1350, %1309
  %1353 = extractvalue %dx.types.CBufRet.f32 %1344, 2
  %1354 = extractvalue %dx.types.CBufRet.f32 %1344, 3
  %1355 = fsub fast float %1353, %1312
  %1356 = fsub fast float %1354, %1313
  %1357 = fmul fast float %1355, %1326
  %1358 = fmul fast float %1356, %1326
  %1359 = fadd fast float %1357, %1312
  %1360 = fadd fast float %1358, %1313
  %1361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %1362 = extractvalue %dx.types.CBufRet.f32 %1361, 0
  %1363 = fmul fast float %1362, %1340
  %1364 = fmul fast float %1362, %1341
  %1365 = fmul fast float %1362, %1342
  %1366 = fmul fast float %1362, %1343
  %1367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %1368 = extractvalue %dx.types.CBufRet.f32 %1367, 0
  %1369 = fmul fast float %1368, %1351
  %1370 = fmul fast float %1368, %1352
  %1371 = fadd fast float %1369, %1363
  %1372 = fadd fast float %1370, %1365
  %1373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %1374 = extractvalue %dx.types.CBufRet.f32 %1373, 0
  %1375 = fmul fast float %1374, %1359
  %1376 = fmul fast float %1374, %1360
  %1377 = fadd fast float %1371, %1375
  %1378 = fadd fast float %1372, %1376
  %1379 = extractvalue %dx.types.CBufRet.f32 %1361, 1
  %1380 = fmul fast float %1379, %1340
  %1381 = fmul fast float %1379, %1341
  %1382 = fmul fast float %1379, %1342
  %1383 = fmul fast float %1379, %1343
  %1384 = extractvalue %dx.types.CBufRet.f32 %1367, 1
  %1385 = fmul fast float %1384, %1351
  %1386 = fmul fast float %1384, %1352
  %1387 = fadd fast float %1385, %1380
  %1388 = fadd fast float %1386, %1382
  %1389 = extractvalue %dx.types.CBufRet.f32 %1373, 1
  %1390 = fmul fast float %1389, %1359
  %1391 = fmul fast float %1389, %1360
  %1392 = fadd fast float %1387, %1390
  %1393 = fadd fast float %1388, %1391
  %1394 = extractvalue %dx.types.CBufRet.f32 %1361, 2
  %1395 = fmul fast float %1394, %1340
  %1396 = fmul fast float %1394, %1341
  %1397 = fmul fast float %1394, %1342
  %1398 = fmul fast float %1394, %1343
  %1399 = extractvalue %dx.types.CBufRet.f32 %1367, 2
  %1400 = fmul fast float %1399, %1351
  %1401 = fmul fast float %1399, %1352
  %1402 = fadd fast float %1400, %1395
  %1403 = fadd fast float %1401, %1397
  %1404 = extractvalue %dx.types.CBufRet.f32 %1373, 2
  %1405 = fmul fast float %1404, %1359
  %1406 = fmul fast float %1404, %1360
  %1407 = fadd fast float %1402, %1405
  %1408 = fadd fast float %1403, %1406
  %1409 = fmul fast float %1396, %1396
  %1410 = fmul fast float %1408, %1408
  %1411 = fmul fast float %1398, %1398
  %1412 = fadd fast float %1411, %1409
  %1413 = fadd fast float %1412, %1410
  %1414 = call float @dx.op.unary.f32(i32 24, float %1413)  ; Sqrt(value)
  %1415 = fcmp fast ugt float %1414, 0.000000e+00
  br i1 %1415, label %1416, label %1431, !dx.controlflow.hints !77

; <label>:1416                                    ; preds = %1156
  %1417 = fsub fast float -0.000000e+00, %1398
  %1418 = fdiv fast float %1417, %1414
  %1419 = fsub fast float -0.000000e+00, %1396
  %1420 = fdiv fast float %1419, %1414
  %1421 = fdiv fast float %1408, %1414
  %1422 = fmul fast float %1407, 0x3FE279A760000000
  %1423 = fmul fast float %1420, %1396
  %1424 = fmul fast float %1421, %1408
  %1425 = fmul fast float %1418, %1398
  %1426 = fadd fast float %1423, %1425
  %1427 = fsub fast float %1426, %1424
  %1428 = call float @dx.op.unary.f32(i32 6, float %1427)  ; FAbs(value)
  %1429 = fadd fast float %1428, 0x3DDB7CDFE0000000
  %1430 = fdiv fast float %1422, %1429
  br label %1431

; <label>:1431                                    ; preds = %1416, %1156
  %1432 = phi float [ %1430, %1416 ], [ 1.000000e+00, %1156 ]
  %1433 = fmul fast float %1381, %1381
  %1434 = fmul fast float %1393, %1393
  %1435 = fmul fast float %1383, %1383
  %1436 = fadd fast float %1435, %1433
  %1437 = fadd fast float %1436, %1434
  %1438 = call float @dx.op.unary.f32(i32 24, float %1437)  ; Sqrt(value)
  %1439 = fcmp fast ugt float %1438, 0.000000e+00
  br i1 %1439, label %1440, label %1455, !dx.controlflow.hints !77

; <label>:1440                                    ; preds = %1431
  %1441 = fsub fast float -0.000000e+00, %1383
  %1442 = fdiv fast float %1441, %1438
  %1443 = fsub fast float -0.000000e+00, %1381
  %1444 = fdiv fast float %1443, %1438
  %1445 = fdiv fast float %1393, %1438
  %1446 = fmul fast float %1392, 0x3FE279A760000000
  %1447 = fmul fast float %1444, %1381
  %1448 = fmul fast float %1445, %1393
  %1449 = fmul fast float %1442, %1383
  %1450 = fadd fast float %1447, %1449
  %1451 = fsub fast float %1450, %1448
  %1452 = call float @dx.op.unary.f32(i32 6, float %1451)  ; FAbs(value)
  %1453 = fadd fast float %1452, 0x3DDB7CDFE0000000
  %1454 = fdiv fast float %1446, %1453
  br label %1455

; <label>:1455                                    ; preds = %1440, %1431
  %1456 = phi float [ %1454, %1440 ], [ 1.000000e+00, %1431 ]
  %1457 = call float @dx.op.binary.f32(i32 36, float %1456, float %1432)  ; FMin(a,b)
  %1458 = fmul fast float %1364, %1364
  %1459 = fmul fast float %1378, %1378
  %1460 = fmul fast float %1366, %1366
  %1461 = fadd fast float %1460, %1458
  %1462 = fadd fast float %1461, %1459
  %1463 = call float @dx.op.unary.f32(i32 24, float %1462)  ; Sqrt(value)
  %1464 = fcmp fast ugt float %1463, 0.000000e+00
  br i1 %1464, label %1465, label %1480, !dx.controlflow.hints !77

; <label>:1465                                    ; preds = %1455
  %1466 = fsub fast float -0.000000e+00, %1366
  %1467 = fdiv fast float %1466, %1463
  %1468 = fsub fast float -0.000000e+00, %1364
  %1469 = fdiv fast float %1468, %1463
  %1470 = fdiv fast float %1378, %1463
  %1471 = fmul fast float %1377, 0x3FE279A760000000
  %1472 = fmul fast float %1469, %1364
  %1473 = fmul fast float %1470, %1378
  %1474 = fmul fast float %1467, %1366
  %1475 = fadd fast float %1472, %1474
  %1476 = fsub fast float %1475, %1473
  %1477 = call float @dx.op.unary.f32(i32 6, float %1476)  ; FAbs(value)
  %1478 = fadd fast float %1477, 0x3DDB7CDFE0000000
  %1479 = fdiv fast float %1471, %1478
  br label %1480

; <label>:1480                                    ; preds = %1465, %1455
  %1481 = phi float [ %1479, %1465 ], [ 1.000000e+00, %1455 ]
  %1482 = call float @dx.op.binary.f32(i32 36, float %1481, float %1457)  ; FMin(a,b)
  %1483 = call float @dx.op.unary.f32(i32 7, float %1482)  ; Saturate(value)
  %1484 = fcmp fast olt float %1483, 1.000000e+00
  br i1 %1484, label %1485, label %1495, !dx.controlflow.hints !78

; <label>:1485                                    ; preds = %1480
  %1486 = fmul fast float %1483, %1364
  %1487 = fmul fast float %1483, %1378
  %1488 = fmul fast float %1483, %1366
  %1489 = fmul fast float %1483, %1381
  %1490 = fmul fast float %1483, %1393
  %1491 = fmul fast float %1483, %1383
  %1492 = fmul fast float %1483, %1396
  %1493 = fmul fast float %1483, %1408
  %1494 = fmul fast float %1483, %1398
  br label %1495

; <label>:1495                                    ; preds = %1485, %1480
  %1496 = phi float [ %1492, %1485 ], [ %1396, %1480 ]
  %1497 = phi float [ %1493, %1485 ], [ %1408, %1480 ]
  %1498 = phi float [ %1494, %1485 ], [ %1398, %1480 ]
  %1499 = phi float [ %1489, %1485 ], [ %1381, %1480 ]
  %1500 = phi float [ %1490, %1485 ], [ %1393, %1480 ]
  %1501 = phi float [ %1491, %1485 ], [ %1383, %1480 ]
  %1502 = phi float [ %1486, %1485 ], [ %1364, %1480 ]
  %1503 = phi float [ %1487, %1485 ], [ %1378, %1480 ]
  %1504 = phi float [ %1488, %1485 ], [ %1366, %1480 ]
  %1505 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1377)  ; FMax(a,b)
  %1506 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1392)  ; FMax(a,b)
  %1507 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1407)  ; FMax(a,b)
  %1508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %1509 = extractvalue %dx.types.CBufRet.f32 %1508, 0
  %1510 = fcmp fast ogt float %1509, 0.000000e+00
  %1511 = fcmp fast oge float %1165, 0.000000e+00
  %1512 = and i1 %1511, %1510
  %1513 = fcmp fast ole float %1165, 1.000000e+00
  %1514 = and i1 %1513, %1512
  %1515 = fcmp fast oge float %1166, 0.000000e+00
  %1516 = and i1 %1515, %1514
  %1517 = fcmp fast ole float %1166, 1.000000e+00
  %1518 = and i1 %1517, %1516
  br i1 %1518, label %1519, label %1664, !dx.controlflow.hints !79

; <label>:1519                                    ; preds = %1495
  %1520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1521 = extractvalue %dx.types.CBufRet.f32 %1520, 2
  %1522 = extractvalue %dx.types.CBufRet.f32 %1520, 3
  %1523 = fmul fast float %1521, %1165
  %1524 = fmul fast float %1522, %1166
  %1525 = call float @dx.op.unary.f32(i32 27, float %1523)  ; Round_ni(value)
  %1526 = call float @dx.op.unary.f32(i32 27, float %1524)  ; Round_ni(value)
  %1527 = fptosi float %1525 to i32
  %1528 = fptosi float %1526 to i32
  %1529 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %1527, i32 %1528, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1530 = extractvalue %dx.types.ResRet.i32 %1529, 0
  %1531 = and i32 %1530, 65535
  %1532 = lshr i32 %1530, 16
  %1533 = icmp eq i32 %1531, 65535
  br i1 %1533, label %1570, label %1534, !dx.controlflow.hints !80

; <label>:1534                                    ; preds = %1519
  %1535 = extractvalue %dx.types.CBufRet.f32 %1508, 1
  %1536 = extractvalue %dx.types.CBufRet.f32 %1520, 0
  %1537 = extractvalue %dx.types.CBufRet.f32 %1520, 1
  %1538 = fmul fast float %1536, %1165
  %1539 = fmul fast float %1537, %1166
  %1540 = fmul fast float %1538, 1.250000e-01
  %1541 = fmul fast float %1539, 1.250000e-01
  %1542 = call float @dx.op.unary.f32(i32 27, float %1540)  ; Round_ni(value)
  %1543 = call float @dx.op.unary.f32(i32 27, float %1541)  ; Round_ni(value)
  %1544 = fmul fast float %1542, 8.000000e+00
  %1545 = fmul fast float %1543, 8.000000e+00
  %1546 = and i32 %1530, 255
  %1547 = lshr i32 %1530, 8
  %1548 = and i32 %1547, 255
  %1549 = mul nuw nsw i32 %1546, 9
  %1550 = uitofp i32 %1549 to float
  %1551 = mul nuw nsw i32 %1548, 9
  %1552 = uitofp i32 %1551 to float
  %1553 = fadd fast float %1550, 5.000000e-01
  %1554 = fadd fast float %1553, %1538
  %1555 = fsub fast float %1554, %1544
  %1556 = fadd fast float %1552, 5.000000e-01
  %1557 = fadd fast float %1556, %1539
  %1558 = fsub fast float %1557, %1545
  %1559 = fdiv fast float %1555, %1509
  %1560 = fdiv fast float %1558, %1535
  %1561 = fmul fast float %1193, 4.375000e-01
  %1562 = fadd fast float %1561, 3.125000e-02
  %1563 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %25, float %1559, float %1560, float %1562, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1564 = extractvalue %dx.types.ResRet.f32 %1563, 0
  %1565 = extractvalue %dx.types.ResRet.f32 %1563, 1
  %1566 = extractvalue %dx.types.ResRet.f32 %1563, 2
  %1567 = fadd fast float %1564, %1505
  %1568 = fadd fast float %1565, %1506
  %1569 = fadd fast float %1566, %1507
  br label %1570

; <label>:1570                                    ; preds = %1534, %1519
  %1571 = phi float [ %1569, %1534 ], [ %1507, %1519 ]
  %1572 = phi float [ %1568, %1534 ], [ %1506, %1519 ]
  %1573 = phi float [ %1567, %1534 ], [ %1505, %1519 ]
  %1574 = icmp eq i32 %1532, 65535
  br i1 %1574, label %1664, label %1575, !dx.controlflow.hints !81

; <label>:1575                                    ; preds = %1570
  %1576 = extractvalue %dx.types.CBufRet.f32 %1508, 1
  %1577 = extractvalue %dx.types.CBufRet.f32 %1520, 0
  %1578 = extractvalue %dx.types.CBufRet.f32 %1520, 1
  %1579 = fmul fast float %1577, %1165
  %1580 = fmul fast float %1578, %1166
  %1581 = fmul fast float %1579, 1.250000e-01
  %1582 = fmul fast float %1580, 1.250000e-01
  %1583 = call float @dx.op.unary.f32(i32 27, float %1581)  ; Round_ni(value)
  %1584 = call float @dx.op.unary.f32(i32 27, float %1582)  ; Round_ni(value)
  %1585 = fmul fast float %1583, 8.000000e+00
  %1586 = fmul fast float %1584, 8.000000e+00
  %1587 = fsub fast float %1579, %1585
  %1588 = fsub fast float %1580, %1586
  %1589 = fadd fast float %1587, 5.000000e-01
  %1590 = fadd fast float %1588, 5.000000e-01
  %1591 = and i32 %1532, 255
  %1592 = lshr i32 %1530, 24
  %1593 = mul nuw nsw i32 %1591, 9
  %1594 = uitofp i32 %1593 to float
  %1595 = mul nuw nsw i32 %1592, 9
  %1596 = uitofp i32 %1595 to float
  %1597 = fadd fast float %1589, %1594
  %1598 = fadd fast float %1590, %1596
  %1599 = fdiv fast float %1597, %1509
  %1600 = fdiv fast float %1598, %1576
  %1601 = fmul fast float %1193, 4.375000e-01
  %1602 = fadd fast float %1601, 3.125000e-02
  %1603 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %25, float %1599, float %1600, float %1602, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1604 = extractvalue %dx.types.ResRet.f32 %1603, 0
  %1605 = extractvalue %dx.types.ResRet.f32 %1603, 1
  %1606 = extractvalue %dx.types.ResRet.f32 %1603, 2
  %1607 = fadd fast float %1601, 5.312500e-01
  %1608 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %25, float %1599, float %1600, float %1607, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1609 = extractvalue %dx.types.ResRet.f32 %1608, 0
  %1610 = extractvalue %dx.types.ResRet.f32 %1608, 1
  %1611 = extractvalue %dx.types.ResRet.f32 %1608, 2
  %1612 = fmul fast float %1609, 2.000000e+00
  %1613 = fmul fast float %1610, 2.000000e+00
  %1614 = fmul fast float %1611, 2.000000e+00
  %1615 = fadd fast float %1612, -1.000000e+00
  %1616 = fadd fast float %1613, -1.000000e+00
  %1617 = fadd fast float %1614, -1.000000e+00
  %1618 = fmul fast float %1615, %1615
  %1619 = fmul fast float %1616, %1616
  %1620 = fadd fast float %1618, %1619
  %1621 = fmul fast float %1617, %1617
  %1622 = fadd fast float %1620, %1621
  %1623 = call float @dx.op.unary.f32(i32 24, float %1622)  ; Sqrt(value)
  %1624 = fcmp fast ogt float %1623, 0.000000e+00
  br i1 %1624, label %1625, label %1629, !dx.controlflow.hints !82

; <label>:1625                                    ; preds = %1575
  %1626 = fdiv fast float %1615, %1623
  %1627 = fdiv fast float %1616, %1623
  %1628 = fdiv fast float %1617, %1623
  br label %1629

; <label>:1629                                    ; preds = %1625, %1575
  %1630 = phi float [ %1626, %1625 ], [ 0.000000e+00, %1575 ]
  %1631 = phi float [ %1627, %1625 ], [ 0.000000e+00, %1575 ]
  %1632 = phi float [ %1628, %1625 ], [ 0.000000e+00, %1575 ]
  %1633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1634 = extractvalue %dx.types.CBufRet.f32 %1633, 0
  %1635 = extractvalue %dx.types.CBufRet.f32 %1633, 1
  %1636 = fsub fast float %189, %1634
  %1637 = fsub fast float %194, %1635
  %1638 = fmul fast float %1636, %1636
  %1639 = fmul fast float %1637, %1637
  %1640 = fadd fast float %1638, %1639
  %1641 = call float @dx.op.unary.f32(i32 24, float %1640)  ; Sqrt(value)
  %1642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1643 = extractvalue %dx.types.CBufRet.f32 %1642, 0
  %1644 = extractvalue %dx.types.CBufRet.f32 %1642, 1
  %1645 = fsub fast float %1641, %1643
  %1646 = fdiv fast float %1645, %1644
  %1647 = call float @dx.op.unary.f32(i32 7, float %1646)  ; Saturate(value)
  %1648 = fmul fast float %1647, 2.000000e+00
  %1649 = fsub fast float 3.000000e+00, %1648
  %1650 = fmul fast float %1647, %1647
  %1651 = fmul fast float %1650, %1649
  %1652 = call float @dx.op.dot3.f32(i32 55, float %1630, float %1631, float %1632, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1653 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1652)  ; FMax(a,b)
  %1654 = fmul fast float %1653, 0x400C5BF8A0000000
  %1655 = fmul fast float %1651, %1604
  %1656 = fmul fast float %1655, %1654
  %1657 = fadd fast float %1656, %1573
  %1658 = fmul fast float %1651, %1605
  %1659 = fmul fast float %1658, %1654
  %1660 = fadd fast float %1659, %1572
  %1661 = fmul fast float %1651, %1606
  %1662 = fmul fast float %1661, %1654
  %1663 = fadd fast float %1662, %1571
  br label %1664

; <label>:1664                                    ; preds = %1629, %1570, %1495
  %1665 = phi float [ %1663, %1629 ], [ %1571, %1570 ], [ %1507, %1495 ]
  %1666 = phi float [ %1660, %1629 ], [ %1572, %1570 ], [ %1506, %1495 ]
  %1667 = phi float [ %1657, %1629 ], [ %1573, %1570 ], [ %1505, %1495 ]
  %1668 = fcmp fast ogt float %199, %1189
  %1669 = and i1 %1511, %1668
  %1670 = and i1 %1513, %1669
  %1671 = and i1 %1515, %1670
  %1672 = and i1 %1517, %1671
  br i1 %1672, label %1673, label %1730, !dx.controlflow.hints !83

; <label>:1673                                    ; preds = %1664
  %1674 = fmul fast float %1191, 0x3FC24924A0000000
  %1675 = fsub fast float %199, %1189
  %1676 = fdiv fast float %1675, %1674
  %1677 = call float @dx.op.unary.f32(i32 7, float %1676)  ; Saturate(value)
  %1678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %1679 = extractvalue %dx.types.CBufRet.f32 %1678, 0
  %1680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %1681 = extractvalue %dx.types.CBufRet.f32 %1680, 0
  %1682 = extractvalue %dx.types.CBufRet.f32 %1680, 1
  %1683 = extractvalue %dx.types.CBufRet.f32 %1680, 2
  %1684 = fsub fast float %1679, %1667
  %1685 = fsub fast float %1681, %1502
  %1686 = fsub fast float %1682, %1503
  %1687 = fsub fast float %1683, %1504
  %1688 = fmul fast float %1684, %1677
  %1689 = fmul fast float %1685, %1677
  %1690 = fmul fast float %1686, %1677
  %1691 = fmul fast float %1687, %1677
  %1692 = fadd fast float %1688, %1667
  %1693 = fadd fast float %1689, %1502
  %1694 = fadd fast float %1690, %1503
  %1695 = fadd fast float %1691, %1504
  %1696 = extractvalue %dx.types.CBufRet.f32 %1678, 1
  %1697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %1698 = extractvalue %dx.types.CBufRet.f32 %1697, 0
  %1699 = extractvalue %dx.types.CBufRet.f32 %1697, 1
  %1700 = extractvalue %dx.types.CBufRet.f32 %1697, 2
  %1701 = fsub fast float %1696, %1666
  %1702 = fsub fast float %1698, %1499
  %1703 = fsub fast float %1699, %1500
  %1704 = fsub fast float %1700, %1501
  %1705 = fmul fast float %1701, %1677
  %1706 = fmul fast float %1702, %1677
  %1707 = fmul fast float %1703, %1677
  %1708 = fmul fast float %1704, %1677
  %1709 = fadd fast float %1705, %1666
  %1710 = fadd fast float %1706, %1499
  %1711 = fadd fast float %1707, %1500
  %1712 = fadd fast float %1708, %1501
  %1713 = extractvalue %dx.types.CBufRet.f32 %1678, 2
  %1714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %1715 = extractvalue %dx.types.CBufRet.f32 %1714, 0
  %1716 = extractvalue %dx.types.CBufRet.f32 %1714, 1
  %1717 = extractvalue %dx.types.CBufRet.f32 %1714, 2
  %1718 = fsub fast float %1713, %1665
  %1719 = fsub fast float %1715, %1496
  %1720 = fsub fast float %1716, %1497
  %1721 = fsub fast float %1717, %1498
  %1722 = fmul fast float %1718, %1677
  %1723 = fmul fast float %1719, %1677
  %1724 = fmul fast float %1720, %1677
  %1725 = fmul fast float %1721, %1677
  %1726 = fadd fast float %1722, %1665
  %1727 = fadd fast float %1723, %1496
  %1728 = fadd fast float %1724, %1497
  %1729 = fadd fast float %1725, %1498
  br label %1730

; <label>:1730                                    ; preds = %1673, %1664
  %1731 = phi float [ %1726, %1673 ], [ %1665, %1664 ]
  %1732 = phi float [ %1727, %1673 ], [ %1496, %1664 ]
  %1733 = phi float [ %1728, %1673 ], [ %1497, %1664 ]
  %1734 = phi float [ %1729, %1673 ], [ %1498, %1664 ]
  %1735 = phi float [ %1709, %1673 ], [ %1666, %1664 ]
  %1736 = phi float [ %1710, %1673 ], [ %1499, %1664 ]
  %1737 = phi float [ %1711, %1673 ], [ %1500, %1664 ]
  %1738 = phi float [ %1712, %1673 ], [ %1501, %1664 ]
  %1739 = phi float [ %1692, %1673 ], [ %1667, %1664 ]
  %1740 = phi float [ %1693, %1673 ], [ %1502, %1664 ]
  %1741 = phi float [ %1694, %1673 ], [ %1503, %1664 ]
  %1742 = phi float [ %1695, %1673 ], [ %1504, %1664 ]
  %1743 = extractvalue %dx.types.CBufRet.f32 %1314, 3
  %1744 = fmul fast float %1743, %1739
  %1745 = fmul fast float %1743, %1735
  %1746 = fmul fast float %1743, %1731
  %1747 = fmul fast float %1740, 1.500000e+00
  %1748 = fmul fast float %1747, %1743
  %1749 = fmul fast float %1741, 1.500000e+00
  %1750 = fmul fast float %1749, %1743
  %1751 = fmul fast float %1742, 1.500000e+00
  %1752 = fmul fast float %1751, %1743
  %1753 = fmul fast float %1736, 1.500000e+00
  %1754 = fmul fast float %1753, %1743
  %1755 = fmul fast float %1737, 1.500000e+00
  %1756 = fmul fast float %1755, %1743
  %1757 = fmul fast float %1738, 1.500000e+00
  %1758 = fmul fast float %1757, %1743
  %1759 = fmul fast float %1732, 1.500000e+00
  %1760 = fmul fast float %1759, %1743
  %1761 = fmul fast float %1733, 1.500000e+00
  %1762 = fmul fast float %1761, %1743
  %1763 = fmul fast float %1734, 1.500000e+00
  %1764 = fmul fast float %1763, %1743
  %1765 = fsub fast float %1154, %1744
  %1766 = fmul fast float %1765, %239
  %1767 = fadd fast float %1766, %1744
  %1768 = fsub fast float %1153, %1748
  %1769 = fmul fast float %1768, %239
  %1770 = fadd fast float %1769, %1748
  %1771 = fsub fast float %1152, %1750
  %1772 = fmul fast float %1771, %239
  %1773 = fadd fast float %1772, %1750
  %1774 = fsub fast float %1151, %1752
  %1775 = fmul fast float %1774, %239
  %1776 = fadd fast float %1775, %1752
  %1777 = fsub fast float %1150, %1745
  %1778 = fmul fast float %1777, %239
  %1779 = fadd fast float %1778, %1745
  %1780 = fsub fast float %1149, %1754
  %1781 = fmul fast float %1780, %239
  %1782 = fadd fast float %1781, %1754
  %1783 = fsub fast float %1148, %1756
  %1784 = fmul fast float %1783, %239
  %1785 = fadd fast float %1784, %1756
  %1786 = fsub fast float %1147, %1758
  %1787 = fmul fast float %1786, %239
  %1788 = fadd fast float %1787, %1758
  %1789 = fsub fast float %1146, %1746
  %1790 = fmul fast float %1789, %239
  %1791 = fadd fast float %1790, %1746
  %1792 = fsub fast float %1145, %1760
  %1793 = fmul fast float %1792, %239
  %1794 = fadd fast float %1793, %1760
  %1795 = fsub fast float %1144, %1762
  %1796 = fmul fast float %1795, %239
  %1797 = fadd fast float %1796, %1762
  %1798 = fsub fast float %1143, %1764
  %1799 = fmul fast float %1798, %239
  %1800 = fadd fast float %1799, %1764
  br label %1801

; <label>:1801                                    ; preds = %1730, %1142
  %1802 = phi float [ %1143, %1142 ], [ %1800, %1730 ]
  %1803 = phi float [ %1144, %1142 ], [ %1797, %1730 ]
  %1804 = phi float [ %1145, %1142 ], [ %1794, %1730 ]
  %1805 = phi float [ %1146, %1142 ], [ %1791, %1730 ]
  %1806 = phi float [ %1147, %1142 ], [ %1788, %1730 ]
  %1807 = phi float [ %1148, %1142 ], [ %1785, %1730 ]
  %1808 = phi float [ %1149, %1142 ], [ %1782, %1730 ]
  %1809 = phi float [ %1150, %1142 ], [ %1779, %1730 ]
  %1810 = phi float [ %1151, %1142 ], [ %1776, %1730 ]
  %1811 = phi float [ %1152, %1142 ], [ %1773, %1730 ]
  %1812 = phi float [ %1153, %1142 ], [ %1770, %1730 ]
  %1813 = phi float [ %1154, %1142 ], [ %1767, %1730 ]
  %1814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1815 = extractvalue %dx.types.CBufRet.f32 %1814, 0
  %1816 = extractvalue %dx.types.CBufRet.f32 %1814, 1
  %1817 = extractvalue %dx.types.CBufRet.f32 %1814, 2
  %1818 = fsub fast float %189, %1815
  %1819 = fsub fast float %194, %1816
  %1820 = fsub fast float %199, %1817
  %1821 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1822 = extractvalue %dx.types.CBufRet.i32 %1821, 2
  %1823 = icmp eq i32 %1822, 0
  br i1 %1823, label %2039, label %1824

; <label>:1824                                    ; preds = %1801
  br label %1825

; <label>:1825                                    ; preds = %2020, %1824
  %1826 = phi float [ %2021, %2020 ], [ 0.000000e+00, %1824 ]
  %1827 = phi float [ %2022, %2020 ], [ 0.000000e+00, %1824 ]
  %1828 = phi float [ %2023, %2020 ], [ 0.000000e+00, %1824 ]
  %1829 = phi float [ %2024, %2020 ], [ 0.000000e+00, %1824 ]
  %1830 = phi float [ %2025, %2020 ], [ 0.000000e+00, %1824 ]
  %1831 = phi float [ %2026, %2020 ], [ 0.000000e+00, %1824 ]
  %1832 = phi float [ %2027, %2020 ], [ 0.000000e+00, %1824 ]
  %1833 = phi float [ %2028, %2020 ], [ 0.000000e+00, %1824 ]
  %1834 = phi float [ %2029, %2020 ], [ 0.000000e+00, %1824 ]
  %1835 = phi float [ %2030, %2020 ], [ 0.000000e+00, %1824 ]
  %1836 = phi float [ %2031, %2020 ], [ 0.000000e+00, %1824 ]
  %1837 = phi float [ %2032, %2020 ], [ 0.000000e+00, %1824 ]
  %1838 = phi float [ %2033, %2020 ], [ 1.000000e+00, %1824 ]
  %1839 = phi i32 [ %2034, %2020 ], [ 0, %1824 ]
  %1840 = shl i32 %1839, 2
  %1841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1840, i32 undef)  ; BufferLoad(srv,index,wot)
  %1842 = extractvalue %dx.types.ResRet.i32 %1841, 0
  %1843 = icmp ne i32 %1842, 0
  %1844 = fcmp fast ogt float %1838, 0.000000e+00
  %1845 = and i1 %1844, %1843
  br i1 %1845, label %1846, label %2020

; <label>:1846                                    ; preds = %1825
  br label %1847

; <label>:1847                                    ; preds = %2002, %1846
  %1848 = phi float [ %2003, %2002 ], [ %1826, %1846 ]
  %1849 = phi float [ %2004, %2002 ], [ %1827, %1846 ]
  %1850 = phi float [ %2005, %2002 ], [ %1828, %1846 ]
  %1851 = phi float [ %2006, %2002 ], [ %1829, %1846 ]
  %1852 = phi float [ %2007, %2002 ], [ %1830, %1846 ]
  %1853 = phi float [ %2008, %2002 ], [ %1831, %1846 ]
  %1854 = phi float [ %2009, %2002 ], [ %1832, %1846 ]
  %1855 = phi float [ %2010, %2002 ], [ %1833, %1846 ]
  %1856 = phi float [ %2011, %2002 ], [ %1834, %1846 ]
  %1857 = phi float [ %2012, %2002 ], [ %1835, %1846 ]
  %1858 = phi float [ %2013, %2002 ], [ %1836, %1846 ]
  %1859 = phi float [ %2014, %2002 ], [ %1837, %1846 ]
  %1860 = phi float [ %2015, %2002 ], [ %1838, %1846 ]
  %1861 = phi i32 [ %1865, %2002 ], [ %1842, %1846 ]
  %1862 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1861)  ; FirstbitLo(value)
  %1863 = and i32 %1862, 31
  %1864 = shl i32 1, %1863
  %1865 = xor i32 %1864, %1861
  %1866 = shl i32 %1839, 5
  %1867 = add i32 %1862, %1866
  %1868 = mul i32 %1867, 72
  %1869 = add i32 %1868, 12
  %1870 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1869, i32 undef)  ; BufferLoad(srv,index,wot)
  %1871 = extractvalue %dx.types.ResRet.i32 %1870, 0
  %1872 = add i32 %1868, 16
  %1873 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %1872, i32 undef)  ; BufferLoad(srv,index,wot)
  %1874 = extractvalue %dx.types.ResRet.f32 %1873, 0
  %1875 = extractvalue %dx.types.ResRet.f32 %1873, 1
  %1876 = extractvalue %dx.types.ResRet.f32 %1873, 2
  %1877 = mul i32 %1867, 60
  %1878 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %1877, i32 undef)  ; BufferLoad(srv,index,wot)
  %1879 = extractvalue %dx.types.ResRet.f32 %1878, 0
  %1880 = extractvalue %dx.types.ResRet.f32 %1878, 1
  %1881 = extractvalue %dx.types.ResRet.f32 %1878, 2
  %1882 = add i32 %1877, 12
  %1883 = add i32 %1877, 48
  %1884 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %1883, i32 undef)  ; BufferLoad(srv,index,wot)
  %1885 = extractvalue %dx.types.ResRet.f32 %1884, 0
  %1886 = extractvalue %dx.types.ResRet.f32 %1884, 1
  %1887 = extractvalue %dx.types.ResRet.f32 %1884, 2
  %1888 = and i32 %1871, 32767
  %1889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1890 = extractvalue %dx.types.CBufRet.f32 %1889, 0
  %1891 = extractvalue %dx.types.CBufRet.f32 %1889, 1
  %1892 = extractvalue %dx.types.CBufRet.f32 %1889, 2
  %1893 = fsub fast float %1879, %1890
  %1894 = fsub fast float %1880, %1891
  %1895 = fsub fast float %1881, %1892
  %1896 = fsub fast float %1818, %1893
  %1897 = fsub fast float %1819, %1894
  %1898 = fsub fast float %1820, %1895
  %1899 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %1882, i32 undef)  ; BufferLoad(srv,index,wot)
  %1900 = extractvalue %dx.types.ResRet.f32 %1899, 0
  %1901 = extractvalue %dx.types.ResRet.f32 %1899, 1
  %1902 = extractvalue %dx.types.ResRet.f32 %1899, 2
  %1903 = call float @dx.op.dot3.f32(i32 55, float %1896, float %1897, float %1898, float %1900, float %1901, float %1902)  ; Dot3(ax,ay,az,bx,by,bz)
  %1904 = add i32 %1877, 24
  %1905 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %1904, i32 undef)  ; BufferLoad(srv,index,wot)
  %1906 = extractvalue %dx.types.ResRet.f32 %1905, 0
  %1907 = extractvalue %dx.types.ResRet.f32 %1905, 1
  %1908 = extractvalue %dx.types.ResRet.f32 %1905, 2
  %1909 = call float @dx.op.dot3.f32(i32 55, float %1896, float %1897, float %1898, float %1906, float %1907, float %1908)  ; Dot3(ax,ay,az,bx,by,bz)
  %1910 = add i32 %1877, 36
  %1911 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %1910, i32 undef)  ; BufferLoad(srv,index,wot)
  %1912 = extractvalue %dx.types.ResRet.f32 %1911, 0
  %1913 = extractvalue %dx.types.ResRet.f32 %1911, 1
  %1914 = extractvalue %dx.types.ResRet.f32 %1911, 2
  %1915 = call float @dx.op.dot3.f32(i32 55, float %1896, float %1897, float %1898, float %1912, float %1913, float %1914)  ; Dot3(ax,ay,az,bx,by,bz)
  %1916 = call float @dx.op.unary.f32(i32 6, float %1903)  ; FAbs(value)
  %1917 = call float @dx.op.unary.f32(i32 6, float %1909)  ; FAbs(value)
  %1918 = call float @dx.op.unary.f32(i32 6, float %1915)  ; FAbs(value)
  %1919 = fsub fast float %1885, %1916
  %1920 = fsub fast float %1886, %1917
  %1921 = fsub fast float %1887, %1918
  %1922 = fmul fast float %1919, %1874
  %1923 = fmul fast float %1920, %1875
  %1924 = fmul fast float %1921, %1876
  %1925 = call float @dx.op.binary.f32(i32 36, float %1923, float %1924)  ; FMin(a,b)
  %1926 = call float @dx.op.binary.f32(i32 36, float %1922, float %1925)  ; FMin(a,b)
  %1927 = call float @dx.op.unary.f32(i32 7, float %1926)  ; Saturate(value)
  %1928 = call float @dx.op.binary.f32(i32 36, float %1860, float %1927)  ; FMin(a,b)
  %1929 = fcmp fast ogt float %1928, 0.000000e+00
  br i1 %1929, label %1930, label %2002, !dx.controlflow.hints !84

; <label>:1930                                    ; preds = %1847
  %1931 = lshr i32 %1871, 16
  %1932 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1931)  ; LegacyF16ToF32(value)
  %1933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 141)  ; CBufferLoadLegacy(handle,regIndex)
  %1934 = extractvalue %dx.types.CBufRet.f32 %1933, 3
  %1935 = bitcast float %1934 to i32
  %1936 = add i32 %1935, %1888
  %1937 = mul i32 %1936, 36
  %1938 = shl i32 %1935, 1
  %1939 = add i32 %1938, %1888
  %1940 = mul i32 %1939, 36
  %1941 = mul i32 %1935, 3
  %1942 = add i32 %1941, %1888
  %1943 = mul i32 %1942, 36
  %1944 = fmul fast float %1932, %1928
  %1945 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1937, i32 undef)  ; BufferLoad(srv,index,wot)
  %1946 = extractvalue %dx.types.ResRet.f32 %1945, 0
  %1947 = fmul fast float %1946, %1944
  %1948 = fadd fast float %1947, %1859
  %1949 = add i32 %1937, 4
  %1950 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1949, i32 undef)  ; BufferLoad(srv,index,wot)
  %1951 = extractvalue %dx.types.ResRet.f32 %1950, 0
  %1952 = fmul fast float %1951, %1944
  %1953 = fadd fast float %1952, %1858
  %1954 = add i32 %1937, 8
  %1955 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1954, i32 undef)  ; BufferLoad(srv,index,wot)
  %1956 = extractvalue %dx.types.ResRet.f32 %1955, 0
  %1957 = fmul fast float %1956, %1944
  %1958 = fadd fast float %1957, %1857
  %1959 = add i32 %1937, 12
  %1960 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1959, i32 undef)  ; BufferLoad(srv,index,wot)
  %1961 = extractvalue %dx.types.ResRet.f32 %1960, 0
  %1962 = fmul fast float %1961, %1944
  %1963 = fadd fast float %1962, %1856
  %1964 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1940, i32 undef)  ; BufferLoad(srv,index,wot)
  %1965 = extractvalue %dx.types.ResRet.f32 %1964, 0
  %1966 = fmul fast float %1965, %1944
  %1967 = fadd fast float %1966, %1855
  %1968 = add i32 %1940, 4
  %1969 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1968, i32 undef)  ; BufferLoad(srv,index,wot)
  %1970 = extractvalue %dx.types.ResRet.f32 %1969, 0
  %1971 = fmul fast float %1970, %1944
  %1972 = fadd fast float %1971, %1854
  %1973 = add i32 %1940, 8
  %1974 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1973, i32 undef)  ; BufferLoad(srv,index,wot)
  %1975 = extractvalue %dx.types.ResRet.f32 %1974, 0
  %1976 = fmul fast float %1975, %1944
  %1977 = fadd fast float %1976, %1853
  %1978 = add i32 %1940, 12
  %1979 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1978, i32 undef)  ; BufferLoad(srv,index,wot)
  %1980 = extractvalue %dx.types.ResRet.f32 %1979, 0
  %1981 = fmul fast float %1980, %1944
  %1982 = fadd fast float %1981, %1852
  %1983 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1943, i32 undef)  ; BufferLoad(srv,index,wot)
  %1984 = extractvalue %dx.types.ResRet.f32 %1983, 0
  %1985 = fmul fast float %1984, %1944
  %1986 = fadd fast float %1985, %1851
  %1987 = add i32 %1943, 4
  %1988 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1987, i32 undef)  ; BufferLoad(srv,index,wot)
  %1989 = extractvalue %dx.types.ResRet.f32 %1988, 0
  %1990 = fmul fast float %1989, %1944
  %1991 = fadd fast float %1990, %1850
  %1992 = add i32 %1943, 8
  %1993 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1992, i32 undef)  ; BufferLoad(srv,index,wot)
  %1994 = extractvalue %dx.types.ResRet.f32 %1993, 0
  %1995 = fmul fast float %1994, %1944
  %1996 = fadd fast float %1995, %1849
  %1997 = add i32 %1943, 12
  %1998 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1997, i32 undef)  ; BufferLoad(srv,index,wot)
  %1999 = extractvalue %dx.types.ResRet.f32 %1998, 0
  %2000 = fmul fast float %1999, %1944
  %2001 = fadd fast float %2000, %1848
  br label %2002

; <label>:2002                                    ; preds = %1930, %1847
  %2003 = phi float [ %2001, %1930 ], [ %1848, %1847 ]
  %2004 = phi float [ %1996, %1930 ], [ %1849, %1847 ]
  %2005 = phi float [ %1991, %1930 ], [ %1850, %1847 ]
  %2006 = phi float [ %1986, %1930 ], [ %1851, %1847 ]
  %2007 = phi float [ %1982, %1930 ], [ %1852, %1847 ]
  %2008 = phi float [ %1977, %1930 ], [ %1853, %1847 ]
  %2009 = phi float [ %1972, %1930 ], [ %1854, %1847 ]
  %2010 = phi float [ %1967, %1930 ], [ %1855, %1847 ]
  %2011 = phi float [ %1963, %1930 ], [ %1856, %1847 ]
  %2012 = phi float [ %1958, %1930 ], [ %1857, %1847 ]
  %2013 = phi float [ %1953, %1930 ], [ %1858, %1847 ]
  %2014 = phi float [ %1948, %1930 ], [ %1859, %1847 ]
  %2015 = fsub fast float %1860, %1928
  %2016 = icmp ne i32 %1861, %1864
  %2017 = fcmp fast ogt float %2015, 0.000000e+00
  %2018 = and i1 %2016, %2017
  br i1 %2018, label %1847, label %2019

; <label>:2019                                    ; preds = %2002
  br label %2020

; <label>:2020                                    ; preds = %2019, %1825
  %2021 = phi float [ %1826, %1825 ], [ %2003, %2019 ]
  %2022 = phi float [ %1827, %1825 ], [ %2004, %2019 ]
  %2023 = phi float [ %1828, %1825 ], [ %2005, %2019 ]
  %2024 = phi float [ %1829, %1825 ], [ %2006, %2019 ]
  %2025 = phi float [ %1830, %1825 ], [ %2007, %2019 ]
  %2026 = phi float [ %1831, %1825 ], [ %2008, %2019 ]
  %2027 = phi float [ %1832, %1825 ], [ %2009, %2019 ]
  %2028 = phi float [ %1833, %1825 ], [ %2010, %2019 ]
  %2029 = phi float [ %1834, %1825 ], [ %2011, %2019 ]
  %2030 = phi float [ %1835, %1825 ], [ %2012, %2019 ]
  %2031 = phi float [ %1836, %1825 ], [ %2013, %2019 ]
  %2032 = phi float [ %1837, %1825 ], [ %2014, %2019 ]
  %2033 = phi float [ %1838, %1825 ], [ %2015, %2019 ]
  %2034 = add i32 %1839, 1
  %2035 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2036 = extractvalue %dx.types.CBufRet.i32 %2035, 2
  %2037 = icmp ult i32 %2034, %2036
  br i1 %2037, label %1825, label %2038

; <label>:2038                                    ; preds = %2020
  br label %2039

; <label>:2039                                    ; preds = %2038, %1801
  %2040 = phi float [ 0.000000e+00, %1801 ], [ %2021, %2038 ]
  %2041 = phi float [ 0.000000e+00, %1801 ], [ %2022, %2038 ]
  %2042 = phi float [ 0.000000e+00, %1801 ], [ %2023, %2038 ]
  %2043 = phi float [ 0.000000e+00, %1801 ], [ %2024, %2038 ]
  %2044 = phi float [ 0.000000e+00, %1801 ], [ %2025, %2038 ]
  %2045 = phi float [ 0.000000e+00, %1801 ], [ %2026, %2038 ]
  %2046 = phi float [ 0.000000e+00, %1801 ], [ %2027, %2038 ]
  %2047 = phi float [ 0.000000e+00, %1801 ], [ %2028, %2038 ]
  %2048 = phi float [ 0.000000e+00, %1801 ], [ %2029, %2038 ]
  %2049 = phi float [ 0.000000e+00, %1801 ], [ %2030, %2038 ]
  %2050 = phi float [ 0.000000e+00, %1801 ], [ %2031, %2038 ]
  %2051 = phi float [ 0.000000e+00, %1801 ], [ %2032, %2038 ]
  %2052 = phi float [ 1.000000e+00, %1801 ], [ %2033, %2038 ]
  %2053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2054 = extractvalue %dx.types.CBufRet.f32 %2053, 3
  %2055 = fdiv fast float 1.000000e+00, %2054
  %2056 = fmul fast float %2055, %2051
  %2057 = fmul fast float %2055, %2050
  %2058 = fmul fast float %2055, %2049
  %2059 = fmul fast float %2055, %2048
  %2060 = fmul fast float %2055, %2047
  %2061 = fmul fast float %2055, %2046
  %2062 = fmul fast float %2055, %2045
  %2063 = fmul fast float %2055, %2044
  %2064 = fmul fast float %2055, %2043
  %2065 = fmul fast float %2055, %2042
  %2066 = fmul fast float %2055, %2041
  %2067 = fmul fast float %2055, %2040
  %2068 = fmul fast float %2052, %1813
  %2069 = fadd fast float %2056, %2068
  %2070 = fmul fast float %2052, %1812
  %2071 = fadd fast float %2057, %2070
  %2072 = fmul fast float %2052, %1811
  %2073 = fadd fast float %2058, %2072
  %2074 = fmul fast float %2052, %1810
  %2075 = fadd fast float %2059, %2074
  %2076 = fmul fast float %2052, %1809
  %2077 = fadd fast float %2060, %2076
  %2078 = fmul fast float %2052, %1808
  %2079 = fadd fast float %2061, %2078
  %2080 = fmul fast float %2052, %1807
  %2081 = fadd fast float %2062, %2080
  %2082 = fmul fast float %2052, %1806
  %2083 = fadd fast float %2063, %2082
  %2084 = fmul fast float %2052, %1805
  %2085 = fadd fast float %2064, %2084
  %2086 = fmul fast float %2052, %1804
  %2087 = fadd fast float %2065, %2086
  %2088 = fmul fast float %2052, %1803
  %2089 = fadd fast float %2066, %2088
  %2090 = fmul fast float %2052, %1802
  %2091 = fadd fast float %2067, %2090
  %2092 = fmul fast float %2069, %2054
  %2093 = fmul fast float %2071, %2054
  %2094 = fmul fast float %2073, %2054
  %2095 = fmul fast float %2075, %2054
  %2096 = extractvalue %dx.types.CBufRet.f32 %2053, 0
  %2097 = fmul fast float %2092, %2096
  %2098 = fmul fast float %2093, %2096
  %2099 = fmul fast float %2094, %2096
  %2100 = fmul fast float %2095, %2096
  %2101 = fmul fast float %2054, %2077
  %2102 = fmul fast float %2054, %2079
  %2103 = fmul fast float %2054, %2081
  %2104 = fmul fast float %2054, %2083
  %2105 = fmul fast float %2101, %2096
  %2106 = fmul fast float %2102, %2096
  %2107 = fmul fast float %2103, %2096
  %2108 = fmul fast float %2104, %2096
  %2109 = fmul fast float %2054, %2085
  %2110 = fmul fast float %2054, %2087
  %2111 = fmul fast float %2054, %2089
  %2112 = fmul fast float %2054, %2091
  %2113 = fmul fast float %2109, %2096
  %2114 = fmul fast float %2110, %2096
  %2115 = fmul fast float %2111, %2096
  %2116 = fmul fast float %2112, %2096
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %168, i32 %169, i32 0, float %2097, float %2098, float %2099, float %2100, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %168, i32 %169, i32 1, float %2105, float %2106, float %2107, float %2108, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %168, i32 %169, i32 2, float %2113, float %2114, float %2115, float %2116, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2117

; <label>:2117                                    ; preds = %2039, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #1

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
!4 = !{!5, !32, !34, !38}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !17, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !30, !31}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!8 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!9 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 3, i32 1, i32 11, i32 0, null}
!10 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 8, i32 1, i32 11, i32 0, null}
!11 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 4, i32 1, i32 11, i32 0, null}
!12 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 5, i32 1, i32 11, i32 0, null}
!13 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 6, i32 1, i32 11, i32 0, null}
!14 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 7, i32 1, i32 11, i32 0, null}
!15 = !{i32 9, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 33, i32 1, i32 2, i32 0, !16}
!16 = !{i32 0, i32 9}
!17 = !{i32 10, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 16, i32 1, i32 7, i32 0, !16}
!18 = !{i32 11, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 15, i32 1, i32 4, i32 0, !16}
!19 = !{i32 12, %"class.Texture2D<float>"* undef, !"", i32 0, i32 14, i32 1, i32 2, i32 0, !16}
!20 = !{i32 13, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 0, i32 13, i32 1, i32 2, i32 0, !16}
!21 = !{i32 14, %"class.Texture2D<unsigned int>"* undef, !"", i32 0, i32 17, i32 1, i32 2, i32 0, !22}
!22 = !{i32 0, i32 5}
!23 = !{i32 15, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 0, i32 18, i32 1, i32 4, i32 0, !16}
!24 = !{i32 16, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 28, i32 1, i32 11, i32 0, null}
!25 = !{i32 17, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 37, i32 1, i32 12, i32 0, !26}
!26 = !{i32 1, i32 4}
!27 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 30, i32 1, i32 11, i32 0, null}
!28 = !{i32 19, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 31, i32 1, i32 11, i32 0, null}
!29 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 43, i32 1, i32 11, i32 0, null}
!30 = !{i32 21, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 11, i32 1, i32 11, i32 0, null}
!31 = !{i32 22, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 12, i32 1, i32 11, i32 0, null}
!32 = !{!33}
!33 = !{i32 0, %"class.RWTexture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 7, i1 false, i1 false, i1 false, !16}
!34 = !{!35, !36, !37}
!35 = !{i32 0, %GfxLGBoundConsts* undef, !"", i32 0, i32 4, i32 1, i32 16, null}
!36 = !{i32 1, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!37 = !{i32 2, %DeferredEffectLightConsts_decl* undef, !"", i32 0, i32 1, i32 1, i32 240, null}
!38 = !{!39}
!39 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!40 = !{void ()* @cs_del_sh_sample_lightgrid_reflection_volumes_1_lowres, !"cs_del_sh_sample_lightgrid_reflection_volumes_1_lowres", null, !4, !41}
!41 = !{i32 0, i64 272, i32 4, !42}
!42 = !{i32 64, i32 1, i32 1}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 1}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !56}
!56 = !{!"llvm.loop.unroll.disable"}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = !{!61, !61, i64 0}
!61 = !{!"int", !62, i64 0}
!62 = !{!"omnipotent char", !63, i64 0}
!63 = !{!"Simple C/C++ TBAA"}
!64 = !{!65, !67, !68, !69, !70, !71}
!65 = distinct !{!65, !66, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %probeR"}
!66 = distinct !{!66, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z"}
!67 = distinct !{!67, !66, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %probeG"}
!68 = distinct !{!68, !66, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %probeB"}
!69 = distinct !{!69, !66, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %probeA"}
!70 = distinct !{!70, !66, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %primaryVisibility"}
!71 = distinct !{!71, !66, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %usedTet"}
!72 = !{!73, !73, i64 0}
!73 = !{!"float", !62, i64 0}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 2}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 2}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 2}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 1}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 2}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 2}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 2}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 1}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 2}

