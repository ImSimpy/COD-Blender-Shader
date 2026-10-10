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
; shader hash: 75e9b6e9a01109240a9c79a9ca15ef9f
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
;                                       UAV     f32          2d      U0             u0     1
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
%"class.RWTexture2D<vector<float, 3> >" = type { <3 x float> }
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

define void @cs_del_sh_sample_lightgrid_reflection_volumes_8_lowres() {
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
  %30 = alloca [4 x i32], align 4
  %31 = alloca [4 x float], align 4
  %32 = alloca [4 x i32], align 4
  %33 = alloca [4 x float], align 4
  %34 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %35 = extractvalue %dx.types.CBufRet.i32 %34, 2
  %36 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %35, i32 0)  ; BufferLoad(srv,index,wot)
  %37 = extractvalue %dx.types.ResRet.i32 %36, 0
  %38 = icmp ult i32 %29, %37
  br i1 %38, label %39, label %2732, !dx.controlflow.hints !43

; <label>:39                                      ; preds = %0
  %40 = add i32 %35, 3
  %41 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 %40)  ; CBufferLoadLegacy(handle,regIndex)
  %42 = extractvalue %dx.types.CBufRet.i32 %41, 2
  %43 = call i32 @dx.op.threadId.i32(i32 93, i32 2)  ; ThreadId(component)
  %44 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %45 = shl i32 %44, 1
  %46 = shl i32 %43, 1
  %47 = add i32 %42, %29
  %48 = shl i32 %47, 5
  %49 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %48, i32 undef)  ; BufferLoad(srv,index,wot)
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
  br i1 %61, label %101, label %62, !dx.controlflow.hints !44

; <label>:62                                      ; preds = %39
  %63 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %64 = extractvalue %dx.types.CBufRet.f32 %63, 2
  %65 = extractvalue %dx.types.CBufRet.f32 %63, 3
  %66 = fmul fast float %64, %57
  %67 = fmul fast float %65, %58
  %68 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %69 = extractvalue %dx.types.CBufRet.f32 %68, 0
  %70 = extractvalue %dx.types.CBufRet.f32 %68, 1
  %71 = fadd fast float %66, %69
  %72 = fadd fast float %67, %70
  %73 = call float @dx.op.unary.f32(i32 7, float %71)  ; Saturate(value)
  %74 = call float @dx.op.unary.f32(i32 7, float %72)  ; Saturate(value)
  %75 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %25, float %73, float %74, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %76 = extractvalue %dx.types.ResRet.f32 %75, 0
  %77 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
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
  %90 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
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
  %106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %105, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
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
  %206 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %207 = extractvalue %dx.types.CBufRet.i32 %206, 0
  %208 = icmp eq i32 %207, 1
  br i1 %208, label %209, label %244, !dx.controlflow.hints !45

; <label>:209                                     ; preds = %101
  %210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %211 = extractvalue %dx.types.CBufRet.f32 %210, 0
  %212 = extractvalue %dx.types.CBufRet.f32 %210, 1
  %213 = fsub fast float %195, %211
  %214 = fsub fast float %200, %212
  %215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %216 = extractvalue %dx.types.CBufRet.f32 %215, 0
  %217 = extractvalue %dx.types.CBufRet.f32 %215, 1
  %218 = fmul fast float %213, %216
  %219 = fmul fast float %214, %217
  %220 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %25, float %218, float %219, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %221 = extractvalue %dx.types.ResRet.f32 %220, 0
  %222 = fcmp fast ogt float %221, 0.000000e+00
  %223 = extractvalue %dx.types.CBufRet.i32 %206, 3
  %224 = icmp ne i32 %223, 0
  %225 = and i1 %222, %224
  br i1 %225, label %226, label %244, !dx.controlflow.hints !46

; <label>:226                                     ; preds = %209
  %227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
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
  br i1 %237, label %244, label %238, !dx.controlflow.hints !47

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
  br i1 %246, label %247, label %1338, !dx.controlflow.hints !48

; <label>:247                                     ; preds = %244
  %248 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %249 = extractvalue %dx.types.CBufRet.i32 %248, 2
  %250 = extractvalue %dx.types.CBufRet.i32 %248, 1
  %251 = extractvalue %dx.types.CBufRet.i32 %248, 0
  %252 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 0
  store float 0.000000e+00, float* %252, align 4
  %253 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 1
  store float 0.000000e+00, float* %253, align 4
  %254 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 2
  store float 0.000000e+00, float* %254, align 4
  %255 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 3
  store float 0.000000e+00, float* %255, align 4
  %256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %257 = extractvalue %dx.types.ResRet.i32 %256, 0
  %258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %259 = extractvalue %dx.types.ResRet.i32 %258, 0
  %260 = extractvalue %dx.types.ResRet.i32 %258, 1
  %261 = extractvalue %dx.types.ResRet.i32 %258, 2
  %262 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %263 = extractvalue %dx.types.ResRet.f32 %262, 0
  %264 = extractvalue %dx.types.ResRet.f32 %262, 1
  %265 = extractvalue %dx.types.ResRet.f32 %262, 2
  %266 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %267 = extractvalue %dx.types.ResRet.f32 %266, 0
  %268 = extractvalue %dx.types.ResRet.f32 %266, 1
  %269 = extractvalue %dx.types.ResRet.f32 %266, 2
  %270 = fsub fast float %195, %263
  %271 = fsub fast float %200, %264
  %272 = fsub fast float %205, %265
  %273 = fptoui float %270 to i32
  %274 = fptoui float %271 to i32
  %275 = fptoui float %272 to i32
  %276 = fcmp fast olt float %195, %263
  %277 = fcmp fast olt float %200, %264
  %278 = fcmp fast olt float %205, %265
  %279 = or i1 %276, %277
  %280 = or i1 %278, %279
  %281 = fcmp fast oge float %195, %267
  %282 = fcmp fast oge float %200, %268
  %283 = fcmp fast oge float %205, %269
  %284 = or i1 %281, %282
  %285 = or i1 %283, %284
  %286 = or i1 %280, %285
  %287 = and i32 %259, 31
  %288 = lshr i32 %273, %287
  %289 = lshr i32 %274, %287
  %290 = lshr i32 %275, %287
  %291 = mul i32 %289, %257
  %292 = add i32 %291, %288
  %293 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %294 = extractvalue %dx.types.CBufRet.i32 %293, 0
  %295 = icmp ult i32 %292, %294
  br i1 %295, label %296, label %312, !dx.controlflow.hints !49

; <label>:296                                     ; preds = %247
  %297 = mul i32 %292, 12
  %298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %299 = extractvalue %dx.types.ResRet.i32 %298, 0
  %300 = add i32 %297, 4
  %301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %300, i32 undef)  ; BufferLoad(srv,index,wot)
  %302 = extractvalue %dx.types.ResRet.i32 %301, 0
  %303 = add i32 %297, 8
  %304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %303, i32 undef)  ; BufferLoad(srv,index,wot)
  %305 = extractvalue %dx.types.ResRet.i32 %304, 0
  %306 = icmp ult i32 %290, %302
  %307 = icmp ugt i32 %290, %305
  %308 = or i1 %306, %307
  %309 = add i32 %299, %290
  %310 = sub i32 %309, %302
  %311 = select i1 %308, i32 -2147483648, i32 %310
  br label %312

; <label>:312                                     ; preds = %296, %247
  %313 = phi i32 [ %311, %296 ], [ -2147483648, %247 ]
  %314 = select i1 %286, i32 -2147483648, i32 %313
  %315 = icmp sgt i32 %314, -1
  %316 = and i32 %260, 31
  %317 = lshr i32 %273, %316
  %318 = lshr i32 %274, %316
  %319 = lshr i32 %275, %316
  %320 = and i32 %317, 3
  %321 = and i32 %319, 3
  %322 = shl nuw nsw i32 %321, 4
  %323 = shl i32 %318, 2
  %324 = and i32 %323, 12
  %325 = and i32 %322, 16
  %326 = or i32 %324, %320
  %327 = or i32 %326, %325
  %328 = shl i32 1, %327
  %329 = extractvalue %dx.types.CBufRet.i32 %293, 1
  %330 = icmp ult i32 %314, %329
  br i1 %330, label %331, label %349, !dx.controlflow.hints !50

; <label>:331                                     ; preds = %312
  %332 = lshr i32 %321, 1
  %333 = shl i32 %314, 4
  %334 = shl nuw nsw i32 %332, 2
  %335 = or i32 %333, %334
  %336 = or i32 %335, 8
  %337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %336, i32 undef)  ; BufferLoad(srv,index,wot)
  %338 = extractvalue %dx.types.ResRet.i32 %337, 0
  %339 = and i32 %338, %328
  %340 = icmp eq i32 %339, 0
  %341 = add i32 %328, -1
  %342 = and i32 %338, %341
  %343 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %342)  ; Countbits(value)
  %344 = or i32 %333, %334
  %345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %344, i32 undef)  ; BufferLoad(srv,index,wot)
  %346 = extractvalue %dx.types.ResRet.i32 %345, 0
  %347 = add i32 %346, %343
  %348 = select i1 %340, i32 -2147483648, i32 %347
  br label %349

; <label>:349                                     ; preds = %331, %312
  %350 = phi i32 [ %348, %331 ], [ -2147483648, %312 ]
  %351 = select i1 %315, i32 %350, i32 %314
  %352 = icmp sgt i32 %351, -1
  %353 = and i32 %261, 31
  %354 = lshr i32 %273, %353
  %355 = lshr i32 %274, %353
  %356 = lshr i32 %275, %353
  %357 = and i32 %354, 3
  %358 = and i32 %356, 3
  %359 = shl nuw nsw i32 %358, 4
  %360 = shl i32 %355, 2
  %361 = and i32 %360, 12
  %362 = and i32 %359, 16
  %363 = or i32 %361, %357
  %364 = or i32 %363, %362
  %365 = shl i32 1, %364
  %366 = icmp ult i32 %351, %329
  br i1 %366, label %367, label %385, !dx.controlflow.hints !50

; <label>:367                                     ; preds = %349
  %368 = lshr i32 %358, 1
  %369 = shl i32 %351, 4
  %370 = shl nuw nsw i32 %368, 2
  %371 = or i32 %369, %370
  %372 = or i32 %371, 8
  %373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %372, i32 undef)  ; BufferLoad(srv,index,wot)
  %374 = extractvalue %dx.types.ResRet.i32 %373, 0
  %375 = and i32 %374, %365
  %376 = icmp eq i32 %375, 0
  %377 = add i32 %365, -1
  %378 = and i32 %374, %377
  %379 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %378)  ; Countbits(value)
  %380 = or i32 %369, %370
  %381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %380, i32 undef)  ; BufferLoad(srv,index,wot)
  %382 = extractvalue %dx.types.ResRet.i32 %381, 0
  %383 = add i32 %382, %379
  %384 = select i1 %376, i32 -2147483648, i32 %383
  br label %385

; <label>:385                                     ; preds = %367, %349
  %386 = phi i32 [ %384, %367 ], [ -2147483648, %349 ]
  %387 = select i1 %352, i32 %386, i32 %351
  br i1 %286, label %402, label %388, !dx.controlflow.hints !51

; <label>:388                                     ; preds = %385
  %389 = icmp eq i32 %387, -2147483648
  %390 = icmp eq i32 %351, -2147483648
  %391 = select i1 %390, i32 %314, i32 %351
  %392 = select i1 %389, i32 %391, i32 %387
  %393 = icmp sgt i32 %392, -1
  %394 = icmp ne i32 %249, -1
  %395 = and i1 %394, %393
  %396 = select i1 %395, i32 %249, i32 0
  %397 = add i32 %392, %250
  %398 = add i32 %397, %396
  %399 = shl i32 %398, 2
  %400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %399, i32 undef)  ; BufferLoad(srv,index,wot)
  %401 = extractvalue %dx.types.ResRet.i32 %400, 0
  br label %402

; <label>:402                                     ; preds = %388, %385
  %403 = phi i32 [ %401, %388 ], [ -1, %385 ]
  %404 = icmp eq i32 %403, -1
  %405 = select i1 %404, i32 %251, i32 %403
  %406 = icmp eq i32 %405, -1
  br i1 %406, label %555, label %407

; <label>:407                                     ; preds = %402
  br label %408

; <label>:408                                     ; preds = %546, %407
  %409 = phi i32 [ %547, %546 ], [ 0, %407 ]
  %410 = phi i32 [ %411, %546 ], [ -1, %407 ]
  %411 = phi i32 [ %542, %546 ], [ %405, %407 ]
  %412 = phi float [ %518, %546 ], [ 0.000000e+00, %407 ]
  %413 = phi float [ %519, %546 ], [ 0.000000e+00, %407 ]
  %414 = phi float [ %520, %546 ], [ 0.000000e+00, %407 ]
  %415 = phi float [ %523, %546 ], [ 0.000000e+00, %407 ]
  %416 = icmp ugt i32 %409, 50
  br i1 %416, label %549, label %417, !dx.controlflow.hints !52

; <label>:417                                     ; preds = %408
  %418 = shl i32 %411, 4
  %419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %418, i32 undef)  ; BufferLoad(srv,index,wot)
  %420 = extractvalue %dx.types.ResRet.i32 %419, 0
  %421 = extractvalue %dx.types.ResRet.i32 %419, 1
  %422 = extractvalue %dx.types.ResRet.i32 %419, 2
  %423 = extractvalue %dx.types.ResRet.i32 %419, 3
  %424 = and i32 %420, 2147483647
  %425 = mul nsw i32 %424, 12
  %426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %425, i32 undef)  ; BufferLoad(srv,index,wot)
  %427 = extractvalue %dx.types.ResRet.i32 %426, 0
  %428 = extractvalue %dx.types.ResRet.i32 %426, 1
  %429 = extractvalue %dx.types.ResRet.i32 %426, 2
  %430 = and i32 %421, 2147483647
  %431 = mul nsw i32 %430, 12
  %432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %431, i32 undef)  ; BufferLoad(srv,index,wot)
  %433 = extractvalue %dx.types.ResRet.i32 %432, 0
  %434 = extractvalue %dx.types.ResRet.i32 %432, 1
  %435 = extractvalue %dx.types.ResRet.i32 %432, 2
  %436 = and i32 %422, 2147483647
  %437 = mul nsw i32 %436, 12
  %438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %437, i32 undef)  ; BufferLoad(srv,index,wot)
  %439 = extractvalue %dx.types.ResRet.i32 %438, 0
  %440 = extractvalue %dx.types.ResRet.i32 %438, 1
  %441 = extractvalue %dx.types.ResRet.i32 %438, 2
  %442 = and i32 %423, 2147483647
  %443 = mul nsw i32 %442, 12
  %444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %443, i32 undef)  ; BufferLoad(srv,index,wot)
  %445 = extractvalue %dx.types.ResRet.i32 %444, 0
  %446 = extractvalue %dx.types.ResRet.i32 %444, 1
  %447 = extractvalue %dx.types.ResRet.i32 %444, 2
  %448 = bitcast i32 %427 to float
  %449 = bitcast i32 %428 to float
  %450 = bitcast i32 %429 to float
  %451 = bitcast i32 %445 to float
  %452 = bitcast i32 %446 to float
  %453 = bitcast i32 %447 to float
  %454 = fsub fast float %448, %451
  %455 = fsub fast float %449, %452
  %456 = fsub fast float %450, %453
  %457 = bitcast i32 %433 to float
  %458 = bitcast i32 %434 to float
  %459 = bitcast i32 %435 to float
  %460 = fsub fast float %457, %451
  %461 = fsub fast float %458, %452
  %462 = fsub fast float %459, %453
  %463 = bitcast i32 %439 to float
  %464 = bitcast i32 %440 to float
  %465 = bitcast i32 %441 to float
  %466 = fsub fast float %463, %451
  %467 = fsub fast float %464, %452
  %468 = fsub fast float %465, %453
  %469 = fsub fast float %195, %451
  %470 = fsub fast float %200, %452
  %471 = fsub fast float %205, %453
  %472 = fmul fast float %461, %468
  %473 = fmul fast float %467, %462
  %474 = fsub fast float %472, %473
  %475 = fmul fast float %474, %454
  %476 = fmul fast float %460, %468
  %477 = fmul fast float %462, %466
  %478 = fsub fast float %476, %477
  %479 = fmul fast float %478, %455
  %480 = fsub fast float %475, %479
  %481 = fmul fast float %460, %467
  %482 = fmul fast float %461, %466
  %483 = fsub fast float %481, %482
  %484 = fmul fast float %483, %456
  %485 = fadd fast float %480, %484
  %486 = fdiv fast float 1.000000e+00, %485
  %487 = fmul fast float %474, %486
  %488 = fmul fast float %486, %478
  %489 = fsub fast float -0.000000e+00, %488
  %490 = fmul fast float %483, %486
  %491 = fmul fast float %455, %468
  %492 = fmul fast float %456, %467
  %493 = fsub fast float %491, %492
  %494 = fmul fast float %486, %493
  %495 = fsub fast float -0.000000e+00, %494
  %496 = fmul fast float %454, %468
  %497 = fmul fast float %466, %456
  %498 = fsub fast float %496, %497
  %499 = fmul fast float %498, %486
  %500 = fmul fast float %454, %467
  %501 = fmul fast float %455, %466
  %502 = fsub fast float %500, %501
  %503 = fmul fast float %486, %502
  %504 = fsub fast float -0.000000e+00, %503
  %505 = fmul fast float %455, %462
  %506 = fmul fast float %456, %461
  %507 = fsub fast float %505, %506
  %508 = fmul fast float %507, %486
  %509 = fmul fast float %454, %462
  %510 = fmul fast float %456, %460
  %511 = fsub fast float %509, %510
  %512 = fmul fast float %486, %511
  %513 = fsub fast float -0.000000e+00, %512
  %514 = fmul fast float %454, %461
  %515 = fmul fast float %455, %460
  %516 = fsub fast float %514, %515
  %517 = fmul fast float %516, %486
  %518 = call float @dx.op.dot3.f32(i32 55, float %487, float %489, float %490, float %469, float %470, float %471)  ; Dot3(ax,ay,az,bx,by,bz)
  %519 = call float @dx.op.dot3.f32(i32 55, float %495, float %499, float %504, float %469, float %470, float %471)  ; Dot3(ax,ay,az,bx,by,bz)
  %520 = call float @dx.op.dot3.f32(i32 55, float %508, float %513, float %517, float %469, float %470, float %471)  ; Dot3(ax,ay,az,bx,by,bz)
  %521 = fsub fast float 1.000000e+00, %518
  %522 = fsub fast float %521, %519
  %523 = fsub fast float %522, %520
  %524 = call float @dx.op.binary.f32(i32 36, float %518, float %519)  ; FMin(a,b)
  %525 = call float @dx.op.binary.f32(i32 36, float %524, float %520)  ; FMin(a,b)
  %526 = call float @dx.op.binary.f32(i32 36, float %525, float %523)  ; FMin(a,b)
  %527 = call float @dx.op.binary.f32(i32 35, float %518, float %519)  ; FMax(a,b)
  %528 = call float @dx.op.binary.f32(i32 35, float %527, float %520)  ; FMax(a,b)
  %529 = call float @dx.op.binary.f32(i32 35, float %528, float %523)  ; FMax(a,b)
  %530 = fcmp fast oge float %526, 0xBF50624DE0000000
  %531 = fcmp fast olt float %529, 0x3FF00068E0000000
  %532 = and i1 %530, %531
  br i1 %532, label %549, label %533, !dx.controlflow.hints !53

; <label>:533                                     ; preds = %417
  %534 = fcmp fast oeq float %526, %518
  %535 = fcmp fast oeq float %526, %519
  %536 = fcmp fast oeq float %526, %520
  %537 = select i1 %536, i32 8, i32 12
  %538 = select i1 %535, i32 4, i32 %537
  %539 = select i1 %534, i32 0, i32 %538
  %540 = or i32 %539, %418
  %541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %540, i32 undef)  ; BufferLoad(srv,index,wot)
  %542 = extractvalue %dx.types.ResRet.i32 %541, 0
  %543 = icmp ne i32 %410, -1
  %544 = icmp eq i32 %542, %410
  %545 = and i1 %543, %544
  br i1 %545, label %549, label %546, !dx.controlflow.hints !54

; <label>:546                                     ; preds = %533
  %547 = add nuw nsw i32 %409, 1
  %548 = icmp eq i32 %542, -1
  br i1 %548, label %549, label %408, !llvm.loop !55

; <label>:549                                     ; preds = %546, %533, %417, %408
  %550 = phi i32 [ %411, %533 ], [ %411, %417 ], [ -1, %546 ], [ -1, %408 ]
  %551 = phi float [ %518, %533 ], [ %518, %417 ], [ %518, %546 ], [ %412, %408 ]
  %552 = phi float [ %519, %533 ], [ %519, %417 ], [ %519, %546 ], [ %413, %408 ]
  %553 = phi float [ %520, %533 ], [ %520, %417 ], [ %520, %546 ], [ %414, %408 ]
  %554 = phi float [ %523, %533 ], [ %523, %417 ], [ %523, %546 ], [ %415, %408 ]
  br label %555

; <label>:555                                     ; preds = %549, %402
  %556 = phi i32 [ -1, %402 ], [ %550, %549 ]
  %557 = phi float [ 0.000000e+00, %402 ], [ %551, %549 ]
  %558 = phi float [ 0.000000e+00, %402 ], [ %552, %549 ]
  %559 = phi float [ 0.000000e+00, %402 ], [ %553, %549 ]
  %560 = phi float [ 0.000000e+00, %402 ], [ %554, %549 ]
  %561 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %557)  ; FMax(a,b)
  %562 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %558)  ; FMax(a,b)
  %563 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %559)  ; FMax(a,b)
  %564 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %560)  ; FMax(a,b)
  %565 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %561)  ; FMin(a,b)
  %566 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %562)  ; FMin(a,b)
  %567 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %563)  ; FMin(a,b)
  %568 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %564)  ; FMin(a,b)
  store float %565, float* %252, align 4
  store float %566, float* %253, align 4
  store float %567, float* %254, align 4
  store float %568, float* %255, align 4
  %569 = icmp eq i32 %556, -1
  br i1 %569, label %570, label %643, !dx.controlflow.hints !57

; <label>:570                                     ; preds = %555
  %571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %572 = extractvalue %dx.types.ResRet.i32 %571, 0
  %573 = extractvalue %dx.types.ResRet.i32 %571, 1
  %574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %575 = extractvalue %dx.types.ResRet.i32 %574, 0
  %576 = extractvalue %dx.types.ResRet.i32 %574, 1
  %577 = extractvalue %dx.types.ResRet.i32 %574, 2
  %578 = extractvalue %dx.types.ResRet.i32 %574, 3
  %579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %580 = extractvalue %dx.types.ResRet.i32 %579, 0
  %581 = extractvalue %dx.types.ResRet.i32 %579, 1
  %582 = extractvalue %dx.types.ResRet.i32 %579, 2
  %583 = extractvalue %dx.types.ResRet.i32 %579, 3
  %584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %585 = extractvalue %dx.types.ResRet.i32 %584, 0
  %586 = extractvalue %dx.types.ResRet.i32 %584, 1
  %587 = extractvalue %dx.types.ResRet.i32 %584, 2
  %588 = extractvalue %dx.types.ResRet.i32 %584, 3
  %589 = and i32 %585, 65535
  %590 = call float @dx.op.legacyF16ToF32(i32 131, i32 %589)  ; LegacyF16ToF32(value)
  %591 = lshr i32 %585, 16
  %592 = call float @dx.op.legacyF16ToF32(i32 131, i32 %591)  ; LegacyF16ToF32(value)
  %593 = and i32 %586, 65535
  %594 = call float @dx.op.legacyF16ToF32(i32 131, i32 %593)  ; LegacyF16ToF32(value)
  %595 = lshr i32 %586, 16
  %596 = call float @dx.op.legacyF16ToF32(i32 131, i32 %595)  ; LegacyF16ToF32(value)
  %597 = and i32 %587, 65535
  %598 = call float @dx.op.legacyF16ToF32(i32 131, i32 %597)  ; LegacyF16ToF32(value)
  %599 = lshr i32 %587, 16
  %600 = call float @dx.op.legacyF16ToF32(i32 131, i32 %599)  ; LegacyF16ToF32(value)
  %601 = and i32 %588, 65535
  %602 = call float @dx.op.legacyF16ToF32(i32 131, i32 %601)  ; LegacyF16ToF32(value)
  %603 = lshr i32 %588, 16
  %604 = call float @dx.op.legacyF16ToF32(i32 131, i32 %603)  ; LegacyF16ToF32(value)
  %605 = and i32 %580, 65535
  %606 = call float @dx.op.legacyF16ToF32(i32 131, i32 %605)  ; LegacyF16ToF32(value)
  %607 = lshr i32 %580, 16
  %608 = call float @dx.op.legacyF16ToF32(i32 131, i32 %607)  ; LegacyF16ToF32(value)
  %609 = and i32 %581, 65535
  %610 = call float @dx.op.legacyF16ToF32(i32 131, i32 %609)  ; LegacyF16ToF32(value)
  %611 = lshr i32 %581, 16
  %612 = call float @dx.op.legacyF16ToF32(i32 131, i32 %611)  ; LegacyF16ToF32(value)
  %613 = and i32 %582, 65535
  %614 = call float @dx.op.legacyF16ToF32(i32 131, i32 %613)  ; LegacyF16ToF32(value)
  %615 = lshr i32 %582, 16
  %616 = call float @dx.op.legacyF16ToF32(i32 131, i32 %615)  ; LegacyF16ToF32(value)
  %617 = and i32 %583, 65535
  %618 = call float @dx.op.legacyF16ToF32(i32 131, i32 %617)  ; LegacyF16ToF32(value)
  %619 = lshr i32 %583, 16
  %620 = call float @dx.op.legacyF16ToF32(i32 131, i32 %619)  ; LegacyF16ToF32(value)
  %621 = and i32 %575, 65535
  %622 = call float @dx.op.legacyF16ToF32(i32 131, i32 %621)  ; LegacyF16ToF32(value)
  %623 = lshr i32 %575, 16
  %624 = call float @dx.op.legacyF16ToF32(i32 131, i32 %623)  ; LegacyF16ToF32(value)
  %625 = and i32 %576, 65535
  %626 = call float @dx.op.legacyF16ToF32(i32 131, i32 %625)  ; LegacyF16ToF32(value)
  %627 = lshr i32 %576, 16
  %628 = call float @dx.op.legacyF16ToF32(i32 131, i32 %627)  ; LegacyF16ToF32(value)
  %629 = and i32 %577, 65535
  %630 = call float @dx.op.legacyF16ToF32(i32 131, i32 %629)  ; LegacyF16ToF32(value)
  %631 = lshr i32 %577, 16
  %632 = call float @dx.op.legacyF16ToF32(i32 131, i32 %631)  ; LegacyF16ToF32(value)
  %633 = and i32 %578, 65535
  %634 = call float @dx.op.legacyF16ToF32(i32 131, i32 %633)  ; LegacyF16ToF32(value)
  %635 = lshr i32 %578, 16
  %636 = call float @dx.op.legacyF16ToF32(i32 131, i32 %635)  ; LegacyF16ToF32(value)
  %637 = and i32 %572, 65535
  %638 = call float @dx.op.legacyF16ToF32(i32 131, i32 %637)  ; LegacyF16ToF32(value)
  %639 = lshr i32 %572, 16
  %640 = call float @dx.op.legacyF16ToF32(i32 131, i32 %639)  ; LegacyF16ToF32(value)
  %641 = and i32 %573, 65535
  %642 = call float @dx.op.legacyF16ToF32(i32 131, i32 %641)  ; LegacyF16ToF32(value)
  br label %1338

; <label>:643                                     ; preds = %555
  %644 = shl nsw i32 %556, 4
  %645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %644, i32 undef)  ; BufferLoad(srv,index,wot)
  %646 = extractvalue %dx.types.ResRet.i32 %645, 0
  %647 = extractvalue %dx.types.ResRet.i32 %645, 1
  %648 = extractvalue %dx.types.ResRet.i32 %645, 2
  %649 = extractvalue %dx.types.ResRet.i32 %645, 3
  %650 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i32 0, i32 0
  store i32 %646, i32* %650, align 4
  %651 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i32 0, i32 1
  store i32 %647, i32* %651, align 4
  %652 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i32 0, i32 2
  store i32 %648, i32* %652, align 4
  %653 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i32 0, i32 3
  store i32 %649, i32* %653, align 4
  %654 = getelementptr inbounds [4 x float], [4 x float]* %33, i32 0, i32 0
  store float 0.000000e+00, float* %654, align 4
  %655 = getelementptr inbounds [4 x float], [4 x float]* %33, i32 0, i32 1
  store float 0.000000e+00, float* %655, align 4
  %656 = getelementptr inbounds [4 x float], [4 x float]* %33, i32 0, i32 2
  store float 0.000000e+00, float* %656, align 4
  %657 = getelementptr inbounds [4 x float], [4 x float]* %33, i32 0, i32 3
  store float 0.000000e+00, float* %657, align 4
  %658 = icmp slt i32 %646, 0
  br i1 %658, label %659, label %749, !dx.controlflow.hints !58

; <label>:659                                     ; preds = %643
  %660 = fsub fast float 1.000000e+00, %565
  %661 = fdiv fast float 1.000000e+00, %660
  %662 = shl nsw i32 %556, 6
  %663 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %662, i32 undef)  ; BufferLoad(srv,index,wot)
  %664 = extractvalue %dx.types.ResRet.i32 %663, 0
  %665 = extractvalue %dx.types.ResRet.i32 %663, 1
  %666 = extractvalue %dx.types.ResRet.i32 %663, 2
  %667 = extractvalue %dx.types.ResRet.i32 %663, 3
  %668 = fmul fast float %661, %568
  %669 = fmul fast float %661, %566
  %670 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 0
  store i32 %664, i32* %670, align 4
  %671 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 1
  store i32 %665, i32* %671, align 4
  %672 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 2
  store i32 %666, i32* %672, align 4
  %673 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 3
  store i32 %667, i32* %673, align 4
  %674 = fmul fast float %669, 4.000000e+00
  %675 = call float @dx.op.unary.f32(i32 27, float %674)  ; Round_ni(value)
  %676 = fmul fast float %668, 4.000000e+00
  %677 = call float @dx.op.unary.f32(i32 27, float %676)  ; Round_ni(value)
  %678 = fsub fast float 1.100000e+01, %675
  %679 = fmul fast float %675, 5.000000e-01
  %680 = fmul fast float %679, %678
  %681 = fadd fast float %677, 5.000000e-01
  %682 = fadd fast float %681, %680
  %683 = fptosi float %682 to i32
  %684 = fptosi float %675 to i32
  %685 = sub nsw i32 5, %684
  %686 = fmul fast float %677, 2.500000e-01
  %687 = fmul fast float %675, 2.500000e-01
  %688 = add nsw i32 %683, 1
  %689 = add nsw i32 %683, %685
  %690 = fsub fast float %668, %686
  %691 = fmul fast float %690, 4.000000e+00
  %692 = fsub fast float %669, %687
  %693 = fmul fast float %692, 4.000000e+00
  %694 = fadd fast float %690, %692
  %695 = fmul fast float %694, 4.000000e+00
  %696 = fcmp fast ogt float %695, 1.000000e+00
  br i1 %696, label %697, label %703, !dx.controlflow.hints !59

; <label>:697                                     ; preds = %659
  %698 = add nsw i32 %689, 1
  %699 = fadd fast float %693, -1.000000e+00
  %700 = fsub fast float -0.000000e+00, %699
  %701 = fadd fast float %691, -1.000000e+00
  %702 = fsub fast float -0.000000e+00, %701
  br label %703

; <label>:703                                     ; preds = %697, %659
  %704 = phi i32 [ %698, %697 ], [ %683, %659 ]
  %705 = phi i32 [ %688, %697 ], [ %689, %659 ]
  %706 = phi i32 [ %689, %697 ], [ %688, %659 ]
  %707 = phi float [ %702, %697 ], [ %693, %659 ]
  %708 = phi float [ %700, %697 ], [ %691, %659 ]
  %709 = fsub fast float 1.000000e+00, %707
  %710 = fsub fast float %709, %708
  %711 = lshr i32 %706, 2
  %712 = getelementptr [4 x i32], [4 x i32]* %30, i32 0, i32 %711
  %713 = load i32, i32* %712, align 4, !tbaa !60, !noalias !64
  %714 = shl i32 %706, 3
  %715 = and i32 %714, 24
  %716 = lshr i32 %713, %715
  %717 = and i32 %716, 255
  %718 = sitofp i32 %717 to float
  %719 = fmul fast float %708, 0x3F70101020000000
  %720 = fmul fast float %719, %718
  %721 = lshr i32 %705, 2
  %722 = getelementptr [4 x i32], [4 x i32]* %30, i32 0, i32 %721
  %723 = load i32, i32* %722, align 4, !tbaa !60, !noalias !64
  %724 = shl i32 %705, 3
  %725 = and i32 %724, 24
  %726 = lshr i32 %723, %725
  %727 = and i32 %726, 255
  %728 = sitofp i32 %727 to float
  %729 = fmul fast float %707, 0x3F70101020000000
  %730 = fmul fast float %729, %728
  %731 = lshr i32 %704, 2
  %732 = getelementptr [4 x i32], [4 x i32]* %30, i32 0, i32 %731
  %733 = load i32, i32* %732, align 4, !tbaa !60, !noalias !64
  %734 = shl i32 %704, 3
  %735 = and i32 %734, 24
  %736 = lshr i32 %733, %735
  %737 = and i32 %736, 255
  %738 = sitofp i32 %737 to float
  %739 = fmul fast float %710, 0x3F70101020000000
  %740 = fmul fast float %739, %738
  %741 = fsub fast float 1.000000e+00, %720
  %742 = fsub fast float %741, %730
  %743 = fsub fast float %742, %740
  %744 = fmul fast float %565, 2.000000e+01
  %745 = fadd fast float %744, 1.000000e+00
  %746 = fmul fast float %743, 2.000000e+01
  %747 = fsub fast float %745, %746
  %748 = call float @dx.op.unary.f32(i32 7, float %747)  ; Saturate(value)
  br label %749

; <label>:749                                     ; preds = %703, %643
  %750 = phi float [ %748, %703 ], [ 1.000000e+00, %643 ]
  store float %750, float* %654, align 4, !tbaa !72, !noalias !64
  %751 = icmp slt i32 %647, 0
  br i1 %751, label %752, label %843, !dx.controlflow.hints !58

; <label>:752                                     ; preds = %749
  %753 = fsub fast float 1.000000e+00, %566
  %754 = fdiv fast float 1.000000e+00, %753
  %755 = shl i32 %556, 6
  %756 = or i32 %755, 16
  %757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %756, i32 undef)  ; BufferLoad(srv,index,wot)
  %758 = extractvalue %dx.types.ResRet.i32 %757, 0
  %759 = extractvalue %dx.types.ResRet.i32 %757, 1
  %760 = extractvalue %dx.types.ResRet.i32 %757, 2
  %761 = extractvalue %dx.types.ResRet.i32 %757, 3
  %762 = fmul fast float %754, %565
  %763 = fmul fast float %754, %568
  %764 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 0
  store i32 %758, i32* %764, align 4
  %765 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 1
  store i32 %759, i32* %765, align 4
  %766 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 2
  store i32 %760, i32* %766, align 4
  %767 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 3
  store i32 %761, i32* %767, align 4
  %768 = fmul fast float %763, 4.000000e+00
  %769 = call float @dx.op.unary.f32(i32 27, float %768)  ; Round_ni(value)
  %770 = fmul fast float %762, 4.000000e+00
  %771 = call float @dx.op.unary.f32(i32 27, float %770)  ; Round_ni(value)
  %772 = fsub fast float 1.100000e+01, %769
  %773 = fmul fast float %769, 5.000000e-01
  %774 = fmul fast float %773, %772
  %775 = fadd fast float %771, 5.000000e-01
  %776 = fadd fast float %775, %774
  %777 = fptosi float %776 to i32
  %778 = fptosi float %769 to i32
  %779 = sub nsw i32 5, %778
  %780 = fmul fast float %771, 2.500000e-01
  %781 = fmul fast float %769, 2.500000e-01
  %782 = add nsw i32 %777, 1
  %783 = add nsw i32 %777, %779
  %784 = fsub fast float %762, %780
  %785 = fmul fast float %784, 4.000000e+00
  %786 = fsub fast float %763, %781
  %787 = fmul fast float %786, 4.000000e+00
  %788 = fadd fast float %784, %786
  %789 = fmul fast float %788, 4.000000e+00
  %790 = fcmp fast ogt float %789, 1.000000e+00
  br i1 %790, label %791, label %797, !dx.controlflow.hints !59

; <label>:791                                     ; preds = %752
  %792 = add nsw i32 %783, 1
  %793 = fadd fast float %787, -1.000000e+00
  %794 = fsub fast float -0.000000e+00, %793
  %795 = fadd fast float %785, -1.000000e+00
  %796 = fsub fast float -0.000000e+00, %795
  br label %797

; <label>:797                                     ; preds = %791, %752
  %798 = phi i32 [ %792, %791 ], [ %777, %752 ]
  %799 = phi i32 [ %782, %791 ], [ %783, %752 ]
  %800 = phi i32 [ %783, %791 ], [ %782, %752 ]
  %801 = phi float [ %796, %791 ], [ %787, %752 ]
  %802 = phi float [ %794, %791 ], [ %785, %752 ]
  %803 = fsub fast float 1.000000e+00, %801
  %804 = fsub fast float %803, %802
  %805 = lshr i32 %800, 2
  %806 = getelementptr [4 x i32], [4 x i32]* %30, i32 0, i32 %805
  %807 = load i32, i32* %806, align 4, !tbaa !60, !noalias !64
  %808 = shl i32 %800, 3
  %809 = and i32 %808, 24
  %810 = lshr i32 %807, %809
  %811 = and i32 %810, 255
  %812 = sitofp i32 %811 to float
  %813 = fmul fast float %802, 0x3F70101020000000
  %814 = fmul fast float %813, %812
  %815 = lshr i32 %799, 2
  %816 = getelementptr [4 x i32], [4 x i32]* %30, i32 0, i32 %815
  %817 = load i32, i32* %816, align 4, !tbaa !60, !noalias !64
  %818 = shl i32 %799, 3
  %819 = and i32 %818, 24
  %820 = lshr i32 %817, %819
  %821 = and i32 %820, 255
  %822 = sitofp i32 %821 to float
  %823 = fmul fast float %801, 0x3F70101020000000
  %824 = fmul fast float %823, %822
  %825 = lshr i32 %798, 2
  %826 = getelementptr [4 x i32], [4 x i32]* %30, i32 0, i32 %825
  %827 = load i32, i32* %826, align 4, !tbaa !60, !noalias !64
  %828 = shl i32 %798, 3
  %829 = and i32 %828, 24
  %830 = lshr i32 %827, %829
  %831 = and i32 %830, 255
  %832 = sitofp i32 %831 to float
  %833 = fmul fast float %804, 0x3F70101020000000
  %834 = fmul fast float %833, %832
  %835 = fsub fast float 1.000000e+00, %814
  %836 = fsub fast float %835, %824
  %837 = fsub fast float %836, %834
  %838 = fmul fast float %566, 2.000000e+01
  %839 = fadd fast float %838, 1.000000e+00
  %840 = fmul fast float %837, 2.000000e+01
  %841 = fsub fast float %839, %840
  %842 = call float @dx.op.unary.f32(i32 7, float %841)  ; Saturate(value)
  br label %843

; <label>:843                                     ; preds = %797, %749
  %844 = phi float [ %842, %797 ], [ 1.000000e+00, %749 ]
  store float %844, float* %655, align 4, !tbaa !72, !noalias !64
  %845 = fadd fast float %844, %750
  %846 = icmp slt i32 %648, 0
  br i1 %846, label %847, label %938, !dx.controlflow.hints !58

; <label>:847                                     ; preds = %843
  %848 = fsub fast float 1.000000e+00, %567
  %849 = fdiv fast float 1.000000e+00, %848
  %850 = shl i32 %556, 6
  %851 = or i32 %850, 32
  %852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %851, i32 undef)  ; BufferLoad(srv,index,wot)
  %853 = extractvalue %dx.types.ResRet.i32 %852, 0
  %854 = extractvalue %dx.types.ResRet.i32 %852, 1
  %855 = extractvalue %dx.types.ResRet.i32 %852, 2
  %856 = extractvalue %dx.types.ResRet.i32 %852, 3
  %857 = fmul fast float %849, %565
  %858 = fmul fast float %849, %566
  %859 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 0
  store i32 %853, i32* %859, align 4
  %860 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 1
  store i32 %854, i32* %860, align 4
  %861 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 2
  store i32 %855, i32* %861, align 4
  %862 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 3
  store i32 %856, i32* %862, align 4
  %863 = fmul fast float %858, 4.000000e+00
  %864 = call float @dx.op.unary.f32(i32 27, float %863)  ; Round_ni(value)
  %865 = fmul fast float %857, 4.000000e+00
  %866 = call float @dx.op.unary.f32(i32 27, float %865)  ; Round_ni(value)
  %867 = fsub fast float 1.100000e+01, %864
  %868 = fmul fast float %864, 5.000000e-01
  %869 = fmul fast float %868, %867
  %870 = fadd fast float %866, 5.000000e-01
  %871 = fadd fast float %870, %869
  %872 = fptosi float %871 to i32
  %873 = fptosi float %864 to i32
  %874 = sub nsw i32 5, %873
  %875 = fmul fast float %866, 2.500000e-01
  %876 = fmul fast float %864, 2.500000e-01
  %877 = add nsw i32 %872, 1
  %878 = add nsw i32 %872, %874
  %879 = fsub fast float %857, %875
  %880 = fmul fast float %879, 4.000000e+00
  %881 = fsub fast float %858, %876
  %882 = fmul fast float %881, 4.000000e+00
  %883 = fadd fast float %879, %881
  %884 = fmul fast float %883, 4.000000e+00
  %885 = fcmp fast ogt float %884, 1.000000e+00
  br i1 %885, label %886, label %892, !dx.controlflow.hints !59

; <label>:886                                     ; preds = %847
  %887 = add nsw i32 %878, 1
  %888 = fadd fast float %882, -1.000000e+00
  %889 = fsub fast float -0.000000e+00, %888
  %890 = fadd fast float %880, -1.000000e+00
  %891 = fsub fast float -0.000000e+00, %890
  br label %892

; <label>:892                                     ; preds = %886, %847
  %893 = phi i32 [ %887, %886 ], [ %872, %847 ]
  %894 = phi i32 [ %877, %886 ], [ %878, %847 ]
  %895 = phi i32 [ %878, %886 ], [ %877, %847 ]
  %896 = phi float [ %891, %886 ], [ %882, %847 ]
  %897 = phi float [ %889, %886 ], [ %880, %847 ]
  %898 = fsub fast float 1.000000e+00, %896
  %899 = fsub fast float %898, %897
  %900 = lshr i32 %895, 2
  %901 = getelementptr [4 x i32], [4 x i32]* %30, i32 0, i32 %900
  %902 = load i32, i32* %901, align 4, !tbaa !60, !noalias !64
  %903 = shl i32 %895, 3
  %904 = and i32 %903, 24
  %905 = lshr i32 %902, %904
  %906 = and i32 %905, 255
  %907 = sitofp i32 %906 to float
  %908 = fmul fast float %897, 0x3F70101020000000
  %909 = fmul fast float %908, %907
  %910 = lshr i32 %894, 2
  %911 = getelementptr [4 x i32], [4 x i32]* %30, i32 0, i32 %910
  %912 = load i32, i32* %911, align 4, !tbaa !60, !noalias !64
  %913 = shl i32 %894, 3
  %914 = and i32 %913, 24
  %915 = lshr i32 %912, %914
  %916 = and i32 %915, 255
  %917 = sitofp i32 %916 to float
  %918 = fmul fast float %896, 0x3F70101020000000
  %919 = fmul fast float %918, %917
  %920 = lshr i32 %893, 2
  %921 = getelementptr [4 x i32], [4 x i32]* %30, i32 0, i32 %920
  %922 = load i32, i32* %921, align 4, !tbaa !60, !noalias !64
  %923 = shl i32 %893, 3
  %924 = and i32 %923, 24
  %925 = lshr i32 %922, %924
  %926 = and i32 %925, 255
  %927 = sitofp i32 %926 to float
  %928 = fmul fast float %899, 0x3F70101020000000
  %929 = fmul fast float %928, %927
  %930 = fsub fast float 1.000000e+00, %909
  %931 = fsub fast float %930, %919
  %932 = fsub fast float %931, %929
  %933 = fmul fast float %567, 2.000000e+01
  %934 = fadd fast float %933, 1.000000e+00
  %935 = fmul fast float %932, 2.000000e+01
  %936 = fsub fast float %934, %935
  %937 = call float @dx.op.unary.f32(i32 7, float %936)  ; Saturate(value)
  br label %938

; <label>:938                                     ; preds = %892, %843
  %939 = phi float [ %937, %892 ], [ 1.000000e+00, %843 ]
  store float %939, float* %656, align 4, !tbaa !72, !noalias !64
  %940 = fadd fast float %845, %939
  %941 = icmp slt i32 %649, 0
  br i1 %941, label %942, label %1033, !dx.controlflow.hints !58

; <label>:942                                     ; preds = %938
  %943 = fsub fast float 1.000000e+00, %568
  %944 = fdiv fast float 1.000000e+00, %943
  %945 = shl i32 %556, 6
  %946 = or i32 %945, 48
  %947 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %946, i32 undef)  ; BufferLoad(srv,index,wot)
  %948 = extractvalue %dx.types.ResRet.i32 %947, 0
  %949 = extractvalue %dx.types.ResRet.i32 %947, 1
  %950 = extractvalue %dx.types.ResRet.i32 %947, 2
  %951 = extractvalue %dx.types.ResRet.i32 %947, 3
  %952 = fmul fast float %944, %565
  %953 = fmul fast float %944, %566
  %954 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 0
  store i32 %948, i32* %954, align 4
  %955 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 1
  store i32 %949, i32* %955, align 4
  %956 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 2
  store i32 %950, i32* %956, align 4
  %957 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 3
  store i32 %951, i32* %957, align 4
  %958 = fmul fast float %953, 4.000000e+00
  %959 = call float @dx.op.unary.f32(i32 27, float %958)  ; Round_ni(value)
  %960 = fmul fast float %952, 4.000000e+00
  %961 = call float @dx.op.unary.f32(i32 27, float %960)  ; Round_ni(value)
  %962 = fsub fast float 1.100000e+01, %959
  %963 = fmul fast float %959, 5.000000e-01
  %964 = fmul fast float %963, %962
  %965 = fadd fast float %961, 5.000000e-01
  %966 = fadd fast float %965, %964
  %967 = fptosi float %966 to i32
  %968 = fptosi float %959 to i32
  %969 = sub nsw i32 5, %968
  %970 = fmul fast float %961, 2.500000e-01
  %971 = fmul fast float %959, 2.500000e-01
  %972 = add nsw i32 %967, 1
  %973 = add nsw i32 %967, %969
  %974 = fsub fast float %952, %970
  %975 = fmul fast float %974, 4.000000e+00
  %976 = fsub fast float %953, %971
  %977 = fmul fast float %976, 4.000000e+00
  %978 = fadd fast float %974, %976
  %979 = fmul fast float %978, 4.000000e+00
  %980 = fcmp fast ogt float %979, 1.000000e+00
  br i1 %980, label %981, label %987, !dx.controlflow.hints !59

; <label>:981                                     ; preds = %942
  %982 = add nsw i32 %973, 1
  %983 = fadd fast float %977, -1.000000e+00
  %984 = fsub fast float -0.000000e+00, %983
  %985 = fadd fast float %975, -1.000000e+00
  %986 = fsub fast float -0.000000e+00, %985
  br label %987

; <label>:987                                     ; preds = %981, %942
  %988 = phi i32 [ %982, %981 ], [ %967, %942 ]
  %989 = phi i32 [ %972, %981 ], [ %973, %942 ]
  %990 = phi i32 [ %973, %981 ], [ %972, %942 ]
  %991 = phi float [ %986, %981 ], [ %977, %942 ]
  %992 = phi float [ %984, %981 ], [ %975, %942 ]
  %993 = fsub fast float 1.000000e+00, %991
  %994 = fsub fast float %993, %992
  %995 = lshr i32 %990, 2
  %996 = getelementptr [4 x i32], [4 x i32]* %30, i32 0, i32 %995
  %997 = load i32, i32* %996, align 4, !tbaa !60, !noalias !64
  %998 = shl i32 %990, 3
  %999 = and i32 %998, 24
  %1000 = lshr i32 %997, %999
  %1001 = and i32 %1000, 255
  %1002 = sitofp i32 %1001 to float
  %1003 = fmul fast float %992, 0x3F70101020000000
  %1004 = fmul fast float %1003, %1002
  %1005 = lshr i32 %989, 2
  %1006 = getelementptr [4 x i32], [4 x i32]* %30, i32 0, i32 %1005
  %1007 = load i32, i32* %1006, align 4, !tbaa !60, !noalias !64
  %1008 = shl i32 %989, 3
  %1009 = and i32 %1008, 24
  %1010 = lshr i32 %1007, %1009
  %1011 = and i32 %1010, 255
  %1012 = sitofp i32 %1011 to float
  %1013 = fmul fast float %991, 0x3F70101020000000
  %1014 = fmul fast float %1013, %1012
  %1015 = lshr i32 %988, 2
  %1016 = getelementptr [4 x i32], [4 x i32]* %30, i32 0, i32 %1015
  %1017 = load i32, i32* %1016, align 4, !tbaa !60, !noalias !64
  %1018 = shl i32 %988, 3
  %1019 = and i32 %1018, 24
  %1020 = lshr i32 %1017, %1019
  %1021 = and i32 %1020, 255
  %1022 = sitofp i32 %1021 to float
  %1023 = fmul fast float %994, 0x3F70101020000000
  %1024 = fmul fast float %1023, %1022
  %1025 = fsub fast float 1.000000e+00, %1004
  %1026 = fsub fast float %1025, %1014
  %1027 = fsub fast float %1026, %1024
  %1028 = fmul fast float %568, 2.000000e+01
  %1029 = fadd fast float %1028, 1.000000e+00
  %1030 = fmul fast float %1027, 2.000000e+01
  %1031 = fsub fast float %1029, %1030
  %1032 = call float @dx.op.unary.f32(i32 7, float %1031)  ; Saturate(value)
  br label %1033

; <label>:1033                                    ; preds = %987, %938
  %1034 = phi float [ %1032, %987 ], [ 1.000000e+00, %938 ]
  store float %1034, float* %657, align 4, !tbaa !72, !noalias !64
  %1035 = fadd fast float %940, %1034
  %1036 = fcmp fast oeq float %1035, 0.000000e+00
  br i1 %1036, label %1037, label %1038, !dx.controlflow.hints !74

; <label>:1037                                    ; preds = %1033
  store float 2.500000e-01, float* %654, align 4
  store float 2.500000e-01, float* %655, align 4
  store float 2.500000e-01, float* %656, align 4
  store float 2.500000e-01, float* %657, align 4
  br label %1038

; <label>:1038                                    ; preds = %1037, %1033
  %1039 = phi float [ 2.500000e-01, %1037 ], [ %750, %1033 ]
  br label %1040

; <label>:1040                                    ; preds = %1304, %1038
  %1041 = phi float [ %1306, %1304 ], [ %1039, %1038 ]
  %1042 = phi float [ %1274, %1304 ], [ 0.000000e+00, %1038 ]
  %1043 = phi float [ %1275, %1304 ], [ 0.000000e+00, %1038 ]
  %1044 = phi float [ %1276, %1304 ], [ 0.000000e+00, %1038 ]
  %1045 = phi float [ %1277, %1304 ], [ 0.000000e+00, %1038 ]
  %1046 = phi float [ %1278, %1304 ], [ 0.000000e+00, %1038 ]
  %1047 = phi float [ %1279, %1304 ], [ 0.000000e+00, %1038 ]
  %1048 = phi float [ %1280, %1304 ], [ 0.000000e+00, %1038 ]
  %1049 = phi float [ %1281, %1304 ], [ 0.000000e+00, %1038 ]
  %1050 = phi float [ %1282, %1304 ], [ 0.000000e+00, %1038 ]
  %1051 = phi float [ %1283, %1304 ], [ 0.000000e+00, %1038 ]
  %1052 = phi float [ %1284, %1304 ], [ 0.000000e+00, %1038 ]
  %1053 = phi float [ %1285, %1304 ], [ 0.000000e+00, %1038 ]
  %1054 = phi float [ %1286, %1304 ], [ 0.000000e+00, %1038 ]
  %1055 = phi float [ %1287, %1304 ], [ 0.000000e+00, %1038 ]
  %1056 = phi float [ %1288, %1304 ], [ 0.000000e+00, %1038 ]
  %1057 = phi float [ %1289, %1304 ], [ 0.000000e+00, %1038 ]
  %1058 = phi float [ %1290, %1304 ], [ 0.000000e+00, %1038 ]
  %1059 = phi float [ %1291, %1304 ], [ 0.000000e+00, %1038 ]
  %1060 = phi float [ %1292, %1304 ], [ 0.000000e+00, %1038 ]
  %1061 = phi float [ %1293, %1304 ], [ 0.000000e+00, %1038 ]
  %1062 = phi float [ %1294, %1304 ], [ 0.000000e+00, %1038 ]
  %1063 = phi float [ %1295, %1304 ], [ 0.000000e+00, %1038 ]
  %1064 = phi float [ %1296, %1304 ], [ 0.000000e+00, %1038 ]
  %1065 = phi float [ %1297, %1304 ], [ 0.000000e+00, %1038 ]
  %1066 = phi float [ %1298, %1304 ], [ 0.000000e+00, %1038 ]
  %1067 = phi float [ %1299, %1304 ], [ 0.000000e+00, %1038 ]
  %1068 = phi float [ %1300, %1304 ], [ 0.000000e+00, %1038 ]
  %1069 = phi float [ %1301, %1304 ], [ 0.000000e+00, %1038 ]
  %1070 = phi i32 [ %1302, %1304 ], [ 0, %1038 ]
  %1071 = fcmp fast ogt float %1041, 0.000000e+00
  br i1 %1071, label %1072, label %1273, !dx.controlflow.hints !75

; <label>:1072                                    ; preds = %1040
  %1073 = getelementptr [4 x float], [4 x float]* %31, i32 0, i32 %1070
  %1074 = load float, float* %1073, align 4, !tbaa !72, !noalias !64
  %1075 = getelementptr [4 x i32], [4 x i32]* %32, i32 0, i32 %1070
  %1076 = load i32, i32* %1075, align 4, !tbaa !60, !noalias !64
  %1077 = fmul fast float %1074, %1041
  %1078 = shl i32 %1076, 5
  %1079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1078, i32 undef)  ; BufferLoad(srv,index,wot)
  %1080 = extractvalue %dx.types.ResRet.i32 %1079, 0
  %1081 = extractvalue %dx.types.ResRet.i32 %1079, 1
  %1082 = extractvalue %dx.types.ResRet.i32 %1079, 2
  %1083 = extractvalue %dx.types.ResRet.i32 %1079, 3
  %1084 = or i32 %1078, 16
  %1085 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1084, i32 undef)  ; BufferLoad(srv,index,wot)
  %1086 = extractvalue %dx.types.ResRet.i32 %1085, 0
  %1087 = extractvalue %dx.types.ResRet.i32 %1085, 1
  %1088 = extractvalue %dx.types.ResRet.i32 %1085, 2
  %1089 = shl i32 %1080, 4
  %1090 = and i32 %1089, 32752
  %1091 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1090)  ; LegacyF16ToF32(value)
  %1092 = lshr i32 %1080, 7
  %1093 = and i32 %1092, 32752
  %1094 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1093)  ; LegacyF16ToF32(value)
  %1095 = lshr i32 %1080, 22
  %1096 = shl nuw nsw i32 %1095, 5
  %1097 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1096)  ; LegacyF16ToF32(value)
  %1098 = and i32 %1081, 255
  %1099 = uitofp i32 %1098 to float
  %1100 = fmul fast float %1099, 0x3F80204080000000
  %1101 = fadd fast float %1100, -1.000000e+00
  %1102 = lshr i32 %1081, 8
  %1103 = and i32 %1102, 255
  %1104 = uitofp i32 %1103 to float
  %1105 = fmul fast float %1104, 0x3F80204080000000
  %1106 = fadd fast float %1105, -1.000000e+00
  %1107 = lshr i32 %1081, 16
  %1108 = and i32 %1107, 255
  %1109 = uitofp i32 %1108 to float
  %1110 = fmul fast float %1109, 0x3F80204080000000
  %1111 = fadd fast float %1110, -1.000000e+00
  %1112 = lshr i32 %1081, 24
  %1113 = uitofp i32 %1112 to float
  %1114 = fmul fast float %1113, 0x3F80204080000000
  %1115 = fadd fast float %1114, -1.000000e+00
  %1116 = and i32 %1082, 255
  %1117 = uitofp i32 %1116 to float
  %1118 = fmul fast float %1117, 0x3F80204080000000
  %1119 = fadd fast float %1118, -1.000000e+00
  %1120 = lshr i32 %1082, 8
  %1121 = and i32 %1120, 255
  %1122 = uitofp i32 %1121 to float
  %1123 = fmul fast float %1122, 0x3F80204080000000
  %1124 = fadd fast float %1123, -1.000000e+00
  %1125 = lshr i32 %1082, 16
  %1126 = and i32 %1125, 255
  %1127 = uitofp i32 %1126 to float
  %1128 = fmul fast float %1127, 0x3F80204080000000
  %1129 = fadd fast float %1128, -1.000000e+00
  %1130 = lshr i32 %1082, 24
  %1131 = uitofp i32 %1130 to float
  %1132 = fmul fast float %1131, 0x3F80204080000000
  %1133 = fadd fast float %1132, -1.000000e+00
  %1134 = and i32 %1083, 255
  %1135 = uitofp i32 %1134 to float
  %1136 = fmul fast float %1135, 0x3F80204080000000
  %1137 = fadd fast float %1136, -1.000000e+00
  %1138 = lshr i32 %1083, 8
  %1139 = and i32 %1138, 255
  %1140 = uitofp i32 %1139 to float
  %1141 = fmul fast float %1140, 0x3F80204080000000
  %1142 = fadd fast float %1141, -1.000000e+00
  %1143 = lshr i32 %1083, 16
  %1144 = and i32 %1143, 255
  %1145 = uitofp i32 %1144 to float
  %1146 = fmul fast float %1145, 0x3F80204080000000
  %1147 = fadd fast float %1146, -1.000000e+00
  %1148 = lshr i32 %1083, 24
  %1149 = uitofp i32 %1148 to float
  %1150 = fmul fast float %1149, 0x3F80204080000000
  %1151 = fadd fast float %1150, -1.000000e+00
  %1152 = and i32 %1086, 255
  %1153 = uitofp i32 %1152 to float
  %1154 = fmul fast float %1153, 0x3F80204080000000
  %1155 = fadd fast float %1154, -1.000000e+00
  %1156 = lshr i32 %1086, 8
  %1157 = and i32 %1156, 255
  %1158 = uitofp i32 %1157 to float
  %1159 = fmul fast float %1158, 0x3F80204080000000
  %1160 = fadd fast float %1159, -1.000000e+00
  %1161 = lshr i32 %1086, 16
  %1162 = and i32 %1161, 255
  %1163 = uitofp i32 %1162 to float
  %1164 = fmul fast float %1163, 0x3F80204080000000
  %1165 = fadd fast float %1164, -1.000000e+00
  %1166 = lshr i32 %1086, 24
  %1167 = uitofp i32 %1166 to float
  %1168 = fmul fast float %1167, 0x3F80204080000000
  %1169 = fadd fast float %1168, -1.000000e+00
  %1170 = and i32 %1087, 255
  %1171 = uitofp i32 %1170 to float
  %1172 = fmul fast float %1171, 0x3F80204080000000
  %1173 = fadd fast float %1172, -1.000000e+00
  %1174 = lshr i32 %1087, 8
  %1175 = and i32 %1174, 255
  %1176 = uitofp i32 %1175 to float
  %1177 = fmul fast float %1176, 0x3F80204080000000
  %1178 = fadd fast float %1177, -1.000000e+00
  %1179 = lshr i32 %1087, 16
  %1180 = and i32 %1179, 255
  %1181 = uitofp i32 %1180 to float
  %1182 = fmul fast float %1181, 0x3F80204080000000
  %1183 = fadd fast float %1182, -1.000000e+00
  %1184 = lshr i32 %1087, 24
  %1185 = uitofp i32 %1184 to float
  %1186 = fmul fast float %1185, 0x3F80204080000000
  %1187 = fadd fast float %1186, -1.000000e+00
  %1188 = and i32 %1088, 255
  %1189 = uitofp i32 %1188 to float
  %1190 = fmul fast float %1189, 0x3F80204080000000
  %1191 = fadd fast float %1190, -1.000000e+00
  %1192 = lshr i32 %1088, 8
  %1193 = and i32 %1192, 255
  %1194 = uitofp i32 %1193 to float
  %1195 = fmul fast float %1194, 0x3F80204080000000
  %1196 = fadd fast float %1195, -1.000000e+00
  %1197 = lshr i32 %1088, 16
  %1198 = and i32 %1197, 255
  %1199 = uitofp i32 %1198 to float
  %1200 = fmul fast float %1199, 0x3F80204080000000
  %1201 = fadd fast float %1200, -1.000000e+00
  %1202 = lshr i32 %1088, 24
  %1203 = uitofp i32 %1202 to float
  %1204 = fmul fast float %1203, 0x3F80204080000000
  %1205 = fadd fast float %1204, -1.000000e+00
  %1206 = fmul fast float %1091, %1077
  %1207 = fadd fast float %1206, %1050
  %1208 = fmul fast float %1077, 0x3FFBB67AE0000000
  %1209 = fmul fast float %1208, %1091
  %1210 = fmul fast float %1209, %1101
  %1211 = fadd fast float %1210, %1049
  %1212 = fmul fast float %1209, %1106
  %1213 = fadd fast float %1212, %1048
  %1214 = fmul fast float %1209, %1111
  %1215 = fadd fast float %1214, %1047
  %1216 = fmul fast float %1077, 0x3FFEFBDEC0000000
  %1217 = fmul fast float %1216, %1091
  %1218 = fmul fast float %1217, %1115
  %1219 = fadd fast float %1218, %1046
  %1220 = fmul fast float %1217, %1119
  %1221 = fadd fast float %1220, %1045
  %1222 = fmul fast float %1077, 0x4001E377A0000000
  %1223 = fmul fast float %1222, %1091
  %1224 = fmul fast float %1223, %1124
  %1225 = fadd fast float %1224, %1044
  %1226 = fmul fast float %1217, %1129
  %1227 = fadd fast float %1226, %1043
  %1228 = fmul fast float %1217, %1133
  %1229 = fadd fast float %1228, %1042
  %1230 = fmul fast float %1094, %1077
  %1231 = fadd fast float %1230, %1059
  %1232 = fmul fast float %1208, %1094
  %1233 = fmul fast float %1232, %1137
  %1234 = fadd fast float %1233, %1058
  %1235 = fmul fast float %1232, %1142
  %1236 = fadd fast float %1235, %1057
  %1237 = fmul fast float %1232, %1147
  %1238 = fadd fast float %1237, %1056
  %1239 = fmul fast float %1216, %1094
  %1240 = fmul fast float %1239, %1151
  %1241 = fadd fast float %1240, %1055
  %1242 = fmul fast float %1239, %1155
  %1243 = fadd fast float %1242, %1054
  %1244 = fmul fast float %1222, %1094
  %1245 = fmul fast float %1244, %1160
  %1246 = fadd fast float %1245, %1053
  %1247 = fmul fast float %1239, %1165
  %1248 = fadd fast float %1247, %1052
  %1249 = fmul fast float %1239, %1169
  %1250 = fadd fast float %1249, %1051
  %1251 = fmul fast float %1097, %1077
  %1252 = fadd fast float %1251, %1068
  %1253 = fmul fast float %1208, %1097
  %1254 = fmul fast float %1253, %1173
  %1255 = fadd fast float %1254, %1067
  %1256 = fmul fast float %1253, %1178
  %1257 = fadd fast float %1256, %1066
  %1258 = fmul fast float %1253, %1183
  %1259 = fadd fast float %1258, %1065
  %1260 = fmul fast float %1216, %1097
  %1261 = fmul fast float %1260, %1187
  %1262 = fadd fast float %1261, %1064
  %1263 = fmul fast float %1260, %1191
  %1264 = fadd fast float %1263, %1063
  %1265 = fmul fast float %1222, %1097
  %1266 = fmul fast float %1265, %1196
  %1267 = fadd fast float %1266, %1062
  %1268 = fmul fast float %1260, %1201
  %1269 = fadd fast float %1268, %1061
  %1270 = fmul fast float %1260, %1205
  %1271 = fadd fast float %1270, %1060
  %1272 = fadd fast float %1077, %1069
  br label %1273

; <label>:1273                                    ; preds = %1072, %1040
  %1274 = phi float [ %1229, %1072 ], [ %1042, %1040 ]
  %1275 = phi float [ %1227, %1072 ], [ %1043, %1040 ]
  %1276 = phi float [ %1225, %1072 ], [ %1044, %1040 ]
  %1277 = phi float [ %1221, %1072 ], [ %1045, %1040 ]
  %1278 = phi float [ %1219, %1072 ], [ %1046, %1040 ]
  %1279 = phi float [ %1215, %1072 ], [ %1047, %1040 ]
  %1280 = phi float [ %1213, %1072 ], [ %1048, %1040 ]
  %1281 = phi float [ %1211, %1072 ], [ %1049, %1040 ]
  %1282 = phi float [ %1207, %1072 ], [ %1050, %1040 ]
  %1283 = phi float [ %1250, %1072 ], [ %1051, %1040 ]
  %1284 = phi float [ %1248, %1072 ], [ %1052, %1040 ]
  %1285 = phi float [ %1246, %1072 ], [ %1053, %1040 ]
  %1286 = phi float [ %1243, %1072 ], [ %1054, %1040 ]
  %1287 = phi float [ %1241, %1072 ], [ %1055, %1040 ]
  %1288 = phi float [ %1238, %1072 ], [ %1056, %1040 ]
  %1289 = phi float [ %1236, %1072 ], [ %1057, %1040 ]
  %1290 = phi float [ %1234, %1072 ], [ %1058, %1040 ]
  %1291 = phi float [ %1231, %1072 ], [ %1059, %1040 ]
  %1292 = phi float [ %1271, %1072 ], [ %1060, %1040 ]
  %1293 = phi float [ %1269, %1072 ], [ %1061, %1040 ]
  %1294 = phi float [ %1267, %1072 ], [ %1062, %1040 ]
  %1295 = phi float [ %1264, %1072 ], [ %1063, %1040 ]
  %1296 = phi float [ %1262, %1072 ], [ %1064, %1040 ]
  %1297 = phi float [ %1259, %1072 ], [ %1065, %1040 ]
  %1298 = phi float [ %1257, %1072 ], [ %1066, %1040 ]
  %1299 = phi float [ %1255, %1072 ], [ %1067, %1040 ]
  %1300 = phi float [ %1252, %1072 ], [ %1068, %1040 ]
  %1301 = phi float [ %1272, %1072 ], [ %1069, %1040 ]
  %1302 = add nuw nsw i32 %1070, 1
  %1303 = icmp eq i32 %1302, 4
  br i1 %1303, label %1307, label %1304

; <label>:1304                                    ; preds = %1273
  %1305 = getelementptr [4 x float], [4 x float]* %33, i32 0, i32 %1302
  %1306 = load float, float* %1305, align 4, !tbaa !72, !noalias !64
  br label %1040

; <label>:1307                                    ; preds = %1273
  %1308 = fcmp fast ogt float %1301, 0.000000e+00
  %1309 = fdiv fast float 1.000000e+00, %1301
  %1310 = select i1 %1308, float %1309, float 1.000000e+00
  %1311 = fmul fast float %1310, %1282
  %1312 = fmul fast float %1310, %1281
  %1313 = fmul fast float %1310, %1280
  %1314 = fmul fast float %1310, %1279
  %1315 = fmul fast float %1310, %1278
  %1316 = fmul fast float %1310, %1277
  %1317 = fmul fast float %1310, %1276
  %1318 = fmul fast float %1310, %1275
  %1319 = fmul fast float %1310, %1274
  %1320 = fmul fast float %1310, %1291
  %1321 = fmul fast float %1310, %1290
  %1322 = fmul fast float %1310, %1289
  %1323 = fmul fast float %1310, %1288
  %1324 = fmul fast float %1310, %1287
  %1325 = fmul fast float %1310, %1286
  %1326 = fmul fast float %1310, %1285
  %1327 = fmul fast float %1310, %1284
  %1328 = fmul fast float %1310, %1283
  %1329 = fmul fast float %1310, %1300
  %1330 = fmul fast float %1310, %1299
  %1331 = fmul fast float %1310, %1298
  %1332 = fmul fast float %1310, %1297
  %1333 = fmul fast float %1310, %1296
  %1334 = fmul fast float %1310, %1295
  %1335 = fmul fast float %1310, %1294
  %1336 = fmul fast float %1310, %1293
  %1337 = fmul fast float %1310, %1292
  br label %1338

; <label>:1338                                    ; preds = %1307, %570, %244
  %1339 = phi float [ 0.000000e+00, %244 ], [ %1328, %1307 ], [ %624, %570 ]
  %1340 = phi float [ 0.000000e+00, %244 ], [ %1327, %1307 ], [ %622, %570 ]
  %1341 = phi float [ 0.000000e+00, %244 ], [ %1326, %1307 ], [ %620, %570 ]
  %1342 = phi float [ 0.000000e+00, %244 ], [ %1325, %1307 ], [ %618, %570 ]
  %1343 = phi float [ 0.000000e+00, %244 ], [ %1324, %1307 ], [ %616, %570 ]
  %1344 = phi float [ 0.000000e+00, %244 ], [ %1323, %1307 ], [ %614, %570 ]
  %1345 = phi float [ 0.000000e+00, %244 ], [ %1322, %1307 ], [ %612, %570 ]
  %1346 = phi float [ 0.000000e+00, %244 ], [ %1321, %1307 ], [ %610, %570 ]
  %1347 = phi float [ 0.000000e+00, %244 ], [ %1320, %1307 ], [ %608, %570 ]
  %1348 = phi float [ 0.000000e+00, %244 ], [ %1319, %1307 ], [ %606, %570 ]
  %1349 = phi float [ 0.000000e+00, %244 ], [ %1318, %1307 ], [ %604, %570 ]
  %1350 = phi float [ 0.000000e+00, %244 ], [ %1317, %1307 ], [ %602, %570 ]
  %1351 = phi float [ 0.000000e+00, %244 ], [ %1316, %1307 ], [ %600, %570 ]
  %1352 = phi float [ 0.000000e+00, %244 ], [ %1315, %1307 ], [ %598, %570 ]
  %1353 = phi float [ 0.000000e+00, %244 ], [ %1314, %1307 ], [ %596, %570 ]
  %1354 = phi float [ 0.000000e+00, %244 ], [ %1313, %1307 ], [ %594, %570 ]
  %1355 = phi float [ 0.000000e+00, %244 ], [ %1312, %1307 ], [ %592, %570 ]
  %1356 = phi float [ 0.000000e+00, %244 ], [ %1311, %1307 ], [ %590, %570 ]
  %1357 = phi float [ 0.000000e+00, %244 ], [ %1337, %1307 ], [ %642, %570 ]
  %1358 = phi float [ 0.000000e+00, %244 ], [ %1336, %1307 ], [ %640, %570 ]
  %1359 = phi float [ 0.000000e+00, %244 ], [ %1335, %1307 ], [ %638, %570 ]
  %1360 = phi float [ 0.000000e+00, %244 ], [ %1334, %1307 ], [ %636, %570 ]
  %1361 = phi float [ 0.000000e+00, %244 ], [ %1333, %1307 ], [ %634, %570 ]
  %1362 = phi float [ 0.000000e+00, %244 ], [ %1332, %1307 ], [ %632, %570 ]
  %1363 = phi float [ 0.000000e+00, %244 ], [ %1331, %1307 ], [ %630, %570 ]
  %1364 = phi float [ 0.000000e+00, %244 ], [ %1330, %1307 ], [ %628, %570 ]
  %1365 = phi float [ 0.000000e+00, %244 ], [ %1329, %1307 ], [ %626, %570 ]
  %1366 = fcmp fast olt float %245, 1.000000e+00
  br i1 %1366, label %1367, label %2027, !dx.controlflow.hints !76

; <label>:1367                                    ; preds = %1338
  %1368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1369 = extractvalue %dx.types.CBufRet.f32 %1368, 0
  %1370 = extractvalue %dx.types.CBufRet.f32 %1368, 1
  %1371 = fsub fast float %195, %1369
  %1372 = fsub fast float %200, %1370
  %1373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1374 = extractvalue %dx.types.CBufRet.f32 %1373, 0
  %1375 = extractvalue %dx.types.CBufRet.f32 %1373, 1
  %1376 = fmul fast float %1371, %1374
  %1377 = fmul fast float %1372, %1375
  %1378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1379 = extractvalue %dx.types.CBufRet.f32 %1378, 0
  %1380 = fmul fast float %1379, %1376
  %1381 = extractvalue %dx.types.CBufRet.f32 %1378, 1
  %1382 = fadd fast float %1380, %1381
  %1383 = extractvalue %dx.types.CBufRet.f32 %1378, 2
  %1384 = fmul fast float %1383, %1377
  %1385 = extractvalue %dx.types.CBufRet.f32 %1378, 3
  %1386 = fadd fast float %1384, %1385
  %1387 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %25, float %1382, float %1386, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1388 = extractvalue %dx.types.ResRet.f32 %1387, 0
  %1389 = extractvalue %dx.types.ResRet.f32 %1387, 1
  %1390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1391 = extractvalue %dx.types.CBufRet.f32 %1390, 1
  %1392 = extractvalue %dx.types.CBufRet.f32 %1390, 0
  %1393 = fsub fast float %1391, %1392
  %1394 = fmul fast float %1393, %1388
  %1395 = fadd fast float %1394, %1392
  %1396 = extractvalue %dx.types.CBufRet.f32 %1390, 3
  %1397 = extractvalue %dx.types.CBufRet.f32 %1390, 2
  %1398 = fsub fast float %1396, %1397
  %1399 = fmul fast float %1398, %1389
  %1400 = fadd fast float %1399, %1397
  %1401 = fsub fast float %205, %1395
  %1402 = fsub fast float %1400, %1395
  %1403 = fdiv fast float %1401, %1402
  %1404 = call float @dx.op.unary.f32(i32 7, float %1403)  ; Saturate(value)
  %1405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %1406 = extractvalue %dx.types.CBufRet.f32 %1405, 0
  %1407 = fmul fast float %1406, %1404
  %1408 = extractvalue %dx.types.CBufRet.f32 %1405, 1
  %1409 = fadd fast float %1407, %1408
  %1410 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %25, float %1382, float %1386, float %1409, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1411 = extractvalue %dx.types.ResRet.f32 %1410, 0
  %1412 = extractvalue %dx.types.ResRet.f32 %1410, 1
  %1413 = extractvalue %dx.types.ResRet.f32 %1410, 2
  %1414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %1415 = extractvalue %dx.types.CBufRet.f32 %1414, 0
  %1416 = extractvalue %dx.types.CBufRet.f32 %1414, 1
  %1417 = extractvalue %dx.types.CBufRet.f32 %1414, 2
  %1418 = fmul fast float %1415, %1411
  %1419 = fmul fast float %1416, %1412
  %1420 = fmul fast float %1417, %1413
  %1421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %1422 = extractvalue %dx.types.CBufRet.f32 %1421, 0
  %1423 = extractvalue %dx.types.CBufRet.f32 %1421, 1
  %1424 = extractvalue %dx.types.CBufRet.f32 %1421, 2
  %1425 = fadd fast float %1418, %1422
  %1426 = fadd fast float %1419, %1423
  %1427 = fadd fast float %1420, %1424
  %1428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %1429 = extractvalue %dx.types.CBufRet.f32 %1428, 0
  %1430 = fmul fast float %1429, %1376
  %1431 = extractvalue %dx.types.CBufRet.f32 %1428, 1
  %1432 = fadd fast float %1430, %1431
  %1433 = extractvalue %dx.types.CBufRet.f32 %1428, 2
  %1434 = fmul fast float %1433, %1377
  %1435 = extractvalue %dx.types.CBufRet.f32 %1428, 3
  %1436 = fadd fast float %1434, %1435
  %1437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %1438 = extractvalue %dx.types.CBufRet.f32 %1437, 0
  %1439 = extractvalue %dx.types.CBufRet.f32 %1437, 1
  %1440 = extractvalue %dx.types.CBufRet.f32 %1437, 2
  %1441 = extractvalue %dx.types.CBufRet.f32 %1437, 3
  %1442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %1443 = extractvalue %dx.types.CBufRet.f32 %1442, 0
  %1444 = extractvalue %dx.types.CBufRet.f32 %1442, 1
  %1445 = extractvalue %dx.types.CBufRet.f32 %1442, 2
  %1446 = extractvalue %dx.types.CBufRet.f32 %1442, 3
  %1447 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %25, float %1432, float %1436, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1448 = extractvalue %dx.types.ResRet.f32 %1447, 0
  %1449 = extractvalue %dx.types.ResRet.f32 %1447, 1
  %1450 = extractvalue %dx.types.ResRet.f32 %1447, 2
  %1451 = extractvalue %dx.types.ResRet.f32 %1447, 3
  %1452 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %25, float %1432, float %1436, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1453 = extractvalue %dx.types.ResRet.f32 %1452, 0
  %1454 = extractvalue %dx.types.ResRet.f32 %1452, 1
  %1455 = extractvalue %dx.types.ResRet.f32 %1452, 2
  %1456 = extractvalue %dx.types.ResRet.f32 %1452, 3
  %1457 = fmul fast float %1448, %1425
  %1458 = fmul fast float %1453, %1425
  %1459 = fmul fast float %1455, %1425
  %1460 = fmul fast float %1451, %1425
  %1461 = fadd fast float %1457, %1438
  %1462 = fadd fast float %1458, %1439
  %1463 = fadd fast float %1459, %1440
  %1464 = fadd fast float %1460, %1441
  %1465 = fmul fast float %1449, %1425
  %1466 = fmul fast float %1454, %1425
  %1467 = fadd fast float %1465, %1443
  %1468 = fadd fast float %1466, %1444
  %1469 = fmul fast float %1450, %1425
  %1470 = fmul fast float %1456, %1425
  %1471 = fadd fast float %1469, %1445
  %1472 = fadd fast float %1470, %1446
  %1473 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %25, float %1432, float %1436, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1474 = extractvalue %dx.types.ResRet.f32 %1473, 0
  %1475 = extractvalue %dx.types.ResRet.f32 %1473, 1
  %1476 = extractvalue %dx.types.ResRet.f32 %1473, 2
  %1477 = extractvalue %dx.types.ResRet.f32 %1473, 3
  %1478 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %25, float %1432, float %1436, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1479 = extractvalue %dx.types.ResRet.f32 %1478, 0
  %1480 = extractvalue %dx.types.ResRet.f32 %1478, 1
  %1481 = extractvalue %dx.types.ResRet.f32 %1478, 2
  %1482 = extractvalue %dx.types.ResRet.f32 %1478, 3
  %1483 = fmul fast float %1474, %1426
  %1484 = fmul fast float %1479, %1426
  %1485 = fmul fast float %1481, %1426
  %1486 = fmul fast float %1477, %1426
  %1487 = fadd fast float %1461, %1483
  %1488 = fadd fast float %1462, %1484
  %1489 = fadd fast float %1463, %1485
  %1490 = fadd fast float %1464, %1486
  %1491 = fmul fast float %1475, %1426
  %1492 = fmul fast float %1480, %1426
  %1493 = fadd fast float %1467, %1491
  %1494 = fadd fast float %1468, %1492
  %1495 = fmul fast float %1476, %1426
  %1496 = fmul fast float %1482, %1426
  %1497 = fadd fast float %1471, %1495
  %1498 = fadd fast float %1472, %1496
  %1499 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %25, float %1432, float %1436, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1500 = extractvalue %dx.types.ResRet.f32 %1499, 0
  %1501 = extractvalue %dx.types.ResRet.f32 %1499, 1
  %1502 = extractvalue %dx.types.ResRet.f32 %1499, 2
  %1503 = extractvalue %dx.types.ResRet.f32 %1499, 3
  %1504 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %25, float %1432, float %1436, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1505 = extractvalue %dx.types.ResRet.f32 %1504, 0
  %1506 = extractvalue %dx.types.ResRet.f32 %1504, 1
  %1507 = extractvalue %dx.types.ResRet.f32 %1504, 2
  %1508 = extractvalue %dx.types.ResRet.f32 %1504, 3
  %1509 = fmul fast float %1500, %1427
  %1510 = fmul fast float %1505, %1427
  %1511 = fmul fast float %1507, %1427
  %1512 = fmul fast float %1503, %1427
  %1513 = fadd fast float %1487, %1509
  %1514 = fadd fast float %1488, %1510
  %1515 = fadd fast float %1489, %1511
  %1516 = fadd fast float %1490, %1512
  %1517 = fmul fast float %1501, %1427
  %1518 = fmul fast float %1506, %1427
  %1519 = fadd fast float %1493, %1517
  %1520 = fadd fast float %1494, %1518
  %1521 = fmul fast float %1502, %1427
  %1522 = fmul fast float %1508, %1427
  %1523 = fadd fast float %1497, %1521
  %1524 = fadd fast float %1498, %1522
  %1525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %1526 = extractvalue %dx.types.CBufRet.f32 %1525, 0
  %1527 = fsub fast float %195, %1526
  %1528 = fsub fast float %1369, %195
  %1529 = call float @dx.op.binary.f32(i32 35, float %1528, float %1527)  ; FMax(a,b)
  %1530 = extractvalue %dx.types.CBufRet.f32 %1525, 1
  %1531 = fsub fast float %200, %1530
  %1532 = fsub fast float %1370, %200
  %1533 = call float @dx.op.binary.f32(i32 35, float %1532, float %1531)  ; FMax(a,b)
  %1534 = call float @dx.op.binary.f32(i32 35, float %1529, float %1533)  ; FMax(a,b)
  %1535 = extractvalue %dx.types.CBufRet.f32 %1373, 3
  %1536 = fmul fast float %1535, %1534
  %1537 = call float @dx.op.unary.f32(i32 7, float %1536)  ; Saturate(value)
  %1538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %1539 = extractvalue %dx.types.CBufRet.f32 %1538, 0
  %1540 = extractvalue %dx.types.CBufRet.f32 %1538, 1
  %1541 = extractvalue %dx.types.CBufRet.f32 %1538, 2
  %1542 = extractvalue %dx.types.CBufRet.f32 %1538, 3
  %1543 = fsub fast float %1539, %1513
  %1544 = fsub fast float %1540, %1514
  %1545 = fsub fast float %1541, %1515
  %1546 = fsub fast float %1542, %1516
  %1547 = fmul fast float %1543, %1537
  %1548 = fmul fast float %1544, %1537
  %1549 = fmul fast float %1545, %1537
  %1550 = fmul fast float %1546, %1537
  %1551 = fadd fast float %1547, %1513
  %1552 = fadd fast float %1548, %1514
  %1553 = fadd fast float %1549, %1515
  %1554 = fadd fast float %1550, %1516
  %1555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %1556 = extractvalue %dx.types.CBufRet.f32 %1555, 0
  %1557 = extractvalue %dx.types.CBufRet.f32 %1555, 1
  %1558 = fsub fast float %1556, %1519
  %1559 = fsub fast float %1557, %1520
  %1560 = fmul fast float %1558, %1537
  %1561 = fmul fast float %1559, %1537
  %1562 = fadd fast float %1560, %1519
  %1563 = fadd fast float %1561, %1520
  %1564 = extractvalue %dx.types.CBufRet.f32 %1555, 2
  %1565 = extractvalue %dx.types.CBufRet.f32 %1555, 3
  %1566 = fsub fast float %1564, %1523
  %1567 = fsub fast float %1565, %1524
  %1568 = fmul fast float %1566, %1537
  %1569 = fmul fast float %1567, %1537
  %1570 = fadd fast float %1568, %1523
  %1571 = fadd fast float %1569, %1524
  %1572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %1573 = extractvalue %dx.types.CBufRet.f32 %1572, 0
  %1574 = fmul fast float %1573, %1551
  %1575 = fmul fast float %1573, %1552
  %1576 = fmul fast float %1573, %1553
  %1577 = fmul fast float %1573, %1554
  %1578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %1579 = extractvalue %dx.types.CBufRet.f32 %1578, 0
  %1580 = fmul fast float %1579, %1562
  %1581 = fmul fast float %1579, %1563
  %1582 = fadd fast float %1580, %1574
  %1583 = fadd fast float %1581, %1576
  %1584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %1585 = extractvalue %dx.types.CBufRet.f32 %1584, 0
  %1586 = fmul fast float %1585, %1570
  %1587 = fmul fast float %1585, %1571
  %1588 = fadd fast float %1582, %1586
  %1589 = fadd fast float %1583, %1587
  %1590 = extractvalue %dx.types.CBufRet.f32 %1572, 1
  %1591 = fmul fast float %1590, %1551
  %1592 = fmul fast float %1590, %1552
  %1593 = fmul fast float %1590, %1553
  %1594 = fmul fast float %1590, %1554
  %1595 = extractvalue %dx.types.CBufRet.f32 %1578, 1
  %1596 = fmul fast float %1595, %1562
  %1597 = fmul fast float %1595, %1563
  %1598 = fadd fast float %1596, %1591
  %1599 = fadd fast float %1597, %1593
  %1600 = extractvalue %dx.types.CBufRet.f32 %1584, 1
  %1601 = fmul fast float %1600, %1570
  %1602 = fmul fast float %1600, %1571
  %1603 = fadd fast float %1598, %1601
  %1604 = fadd fast float %1599, %1602
  %1605 = extractvalue %dx.types.CBufRet.f32 %1572, 2
  %1606 = fmul fast float %1605, %1551
  %1607 = fmul fast float %1605, %1552
  %1608 = fmul fast float %1605, %1553
  %1609 = fmul fast float %1605, %1554
  %1610 = extractvalue %dx.types.CBufRet.f32 %1578, 2
  %1611 = fmul fast float %1610, %1562
  %1612 = fmul fast float %1610, %1563
  %1613 = fadd fast float %1611, %1606
  %1614 = fadd fast float %1612, %1608
  %1615 = extractvalue %dx.types.CBufRet.f32 %1584, 2
  %1616 = fmul fast float %1615, %1570
  %1617 = fmul fast float %1615, %1571
  %1618 = fadd fast float %1613, %1616
  %1619 = fadd fast float %1614, %1617
  %1620 = fmul fast float %1607, %1607
  %1621 = fmul fast float %1619, %1619
  %1622 = fmul fast float %1609, %1609
  %1623 = fadd fast float %1622, %1620
  %1624 = fadd fast float %1623, %1621
  %1625 = call float @dx.op.unary.f32(i32 24, float %1624)  ; Sqrt(value)
  %1626 = fcmp fast ugt float %1625, 0.000000e+00
  br i1 %1626, label %1627, label %1642, !dx.controlflow.hints !77

; <label>:1627                                    ; preds = %1367
  %1628 = fsub fast float -0.000000e+00, %1609
  %1629 = fdiv fast float %1628, %1625
  %1630 = fsub fast float -0.000000e+00, %1607
  %1631 = fdiv fast float %1630, %1625
  %1632 = fdiv fast float %1619, %1625
  %1633 = fmul fast float %1618, 0x3FE279A760000000
  %1634 = fmul fast float %1631, %1607
  %1635 = fmul fast float %1632, %1619
  %1636 = fmul fast float %1629, %1609
  %1637 = fadd fast float %1634, %1636
  %1638 = fsub fast float %1637, %1635
  %1639 = call float @dx.op.unary.f32(i32 6, float %1638)  ; FAbs(value)
  %1640 = fadd fast float %1639, 0x3DDB7CDFE0000000
  %1641 = fdiv fast float %1633, %1640
  br label %1642

; <label>:1642                                    ; preds = %1627, %1367
  %1643 = phi float [ %1641, %1627 ], [ 1.000000e+00, %1367 ]
  %1644 = fmul fast float %1592, %1592
  %1645 = fmul fast float %1604, %1604
  %1646 = fmul fast float %1594, %1594
  %1647 = fadd fast float %1646, %1644
  %1648 = fadd fast float %1647, %1645
  %1649 = call float @dx.op.unary.f32(i32 24, float %1648)  ; Sqrt(value)
  %1650 = fcmp fast ugt float %1649, 0.000000e+00
  br i1 %1650, label %1651, label %1666, !dx.controlflow.hints !77

; <label>:1651                                    ; preds = %1642
  %1652 = fsub fast float -0.000000e+00, %1594
  %1653 = fdiv fast float %1652, %1649
  %1654 = fsub fast float -0.000000e+00, %1592
  %1655 = fdiv fast float %1654, %1649
  %1656 = fdiv fast float %1604, %1649
  %1657 = fmul fast float %1603, 0x3FE279A760000000
  %1658 = fmul fast float %1655, %1592
  %1659 = fmul fast float %1656, %1604
  %1660 = fmul fast float %1653, %1594
  %1661 = fadd fast float %1658, %1660
  %1662 = fsub fast float %1661, %1659
  %1663 = call float @dx.op.unary.f32(i32 6, float %1662)  ; FAbs(value)
  %1664 = fadd fast float %1663, 0x3DDB7CDFE0000000
  %1665 = fdiv fast float %1657, %1664
  br label %1666

; <label>:1666                                    ; preds = %1651, %1642
  %1667 = phi float [ %1665, %1651 ], [ 1.000000e+00, %1642 ]
  %1668 = call float @dx.op.binary.f32(i32 36, float %1667, float %1643)  ; FMin(a,b)
  %1669 = fmul fast float %1575, %1575
  %1670 = fmul fast float %1589, %1589
  %1671 = fmul fast float %1577, %1577
  %1672 = fadd fast float %1671, %1669
  %1673 = fadd fast float %1672, %1670
  %1674 = call float @dx.op.unary.f32(i32 24, float %1673)  ; Sqrt(value)
  %1675 = fcmp fast ugt float %1674, 0.000000e+00
  br i1 %1675, label %1676, label %1691, !dx.controlflow.hints !77

; <label>:1676                                    ; preds = %1666
  %1677 = fsub fast float -0.000000e+00, %1577
  %1678 = fdiv fast float %1677, %1674
  %1679 = fsub fast float -0.000000e+00, %1575
  %1680 = fdiv fast float %1679, %1674
  %1681 = fdiv fast float %1589, %1674
  %1682 = fmul fast float %1588, 0x3FE279A760000000
  %1683 = fmul fast float %1680, %1575
  %1684 = fmul fast float %1681, %1589
  %1685 = fmul fast float %1678, %1577
  %1686 = fadd fast float %1683, %1685
  %1687 = fsub fast float %1686, %1684
  %1688 = call float @dx.op.unary.f32(i32 6, float %1687)  ; FAbs(value)
  %1689 = fadd fast float %1688, 0x3DDB7CDFE0000000
  %1690 = fdiv fast float %1682, %1689
  br label %1691

; <label>:1691                                    ; preds = %1676, %1666
  %1692 = phi float [ %1690, %1676 ], [ 1.000000e+00, %1666 ]
  %1693 = call float @dx.op.binary.f32(i32 36, float %1692, float %1668)  ; FMin(a,b)
  %1694 = call float @dx.op.unary.f32(i32 7, float %1693)  ; Saturate(value)
  %1695 = fcmp fast olt float %1694, 1.000000e+00
  br i1 %1695, label %1696, label %1706, !dx.controlflow.hints !78

; <label>:1696                                    ; preds = %1691
  %1697 = fmul fast float %1694, %1575
  %1698 = fmul fast float %1694, %1589
  %1699 = fmul fast float %1694, %1577
  %1700 = fmul fast float %1694, %1592
  %1701 = fmul fast float %1694, %1604
  %1702 = fmul fast float %1694, %1594
  %1703 = fmul fast float %1694, %1607
  %1704 = fmul fast float %1694, %1619
  %1705 = fmul fast float %1694, %1609
  br label %1706

; <label>:1706                                    ; preds = %1696, %1691
  %1707 = phi float [ %1703, %1696 ], [ %1607, %1691 ]
  %1708 = phi float [ %1704, %1696 ], [ %1619, %1691 ]
  %1709 = phi float [ %1705, %1696 ], [ %1609, %1691 ]
  %1710 = phi float [ %1700, %1696 ], [ %1592, %1691 ]
  %1711 = phi float [ %1701, %1696 ], [ %1604, %1691 ]
  %1712 = phi float [ %1702, %1696 ], [ %1594, %1691 ]
  %1713 = phi float [ %1697, %1696 ], [ %1575, %1691 ]
  %1714 = phi float [ %1698, %1696 ], [ %1589, %1691 ]
  %1715 = phi float [ %1699, %1696 ], [ %1577, %1691 ]
  %1716 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1588)  ; FMax(a,b)
  %1717 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1603)  ; FMax(a,b)
  %1718 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1618)  ; FMax(a,b)
  %1719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %1720 = extractvalue %dx.types.CBufRet.f32 %1719, 0
  %1721 = fcmp fast ogt float %1720, 0.000000e+00
  %1722 = fcmp fast oge float %1376, 0.000000e+00
  %1723 = and i1 %1722, %1721
  %1724 = fcmp fast ole float %1376, 1.000000e+00
  %1725 = and i1 %1724, %1723
  %1726 = fcmp fast oge float %1377, 0.000000e+00
  %1727 = and i1 %1726, %1725
  %1728 = fcmp fast ole float %1377, 1.000000e+00
  %1729 = and i1 %1728, %1727
  br i1 %1729, label %1730, label %1875, !dx.controlflow.hints !79

; <label>:1730                                    ; preds = %1706
  %1731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1732 = extractvalue %dx.types.CBufRet.f32 %1731, 2
  %1733 = extractvalue %dx.types.CBufRet.f32 %1731, 3
  %1734 = fmul fast float %1732, %1376
  %1735 = fmul fast float %1733, %1377
  %1736 = call float @dx.op.unary.f32(i32 27, float %1734)  ; Round_ni(value)
  %1737 = call float @dx.op.unary.f32(i32 27, float %1735)  ; Round_ni(value)
  %1738 = fptosi float %1736 to i32
  %1739 = fptosi float %1737 to i32
  %1740 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %1738, i32 %1739, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1741 = extractvalue %dx.types.ResRet.i32 %1740, 0
  %1742 = and i32 %1741, 65535
  %1743 = lshr i32 %1741, 16
  %1744 = icmp eq i32 %1742, 65535
  br i1 %1744, label %1781, label %1745, !dx.controlflow.hints !80

; <label>:1745                                    ; preds = %1730
  %1746 = extractvalue %dx.types.CBufRet.f32 %1719, 1
  %1747 = extractvalue %dx.types.CBufRet.f32 %1731, 0
  %1748 = extractvalue %dx.types.CBufRet.f32 %1731, 1
  %1749 = fmul fast float %1747, %1376
  %1750 = fmul fast float %1748, %1377
  %1751 = fmul fast float %1749, 1.250000e-01
  %1752 = fmul fast float %1750, 1.250000e-01
  %1753 = call float @dx.op.unary.f32(i32 27, float %1751)  ; Round_ni(value)
  %1754 = call float @dx.op.unary.f32(i32 27, float %1752)  ; Round_ni(value)
  %1755 = fmul fast float %1753, 8.000000e+00
  %1756 = fmul fast float %1754, 8.000000e+00
  %1757 = and i32 %1741, 255
  %1758 = lshr i32 %1741, 8
  %1759 = and i32 %1758, 255
  %1760 = mul nuw nsw i32 %1757, 9
  %1761 = uitofp i32 %1760 to float
  %1762 = mul nuw nsw i32 %1759, 9
  %1763 = uitofp i32 %1762 to float
  %1764 = fadd fast float %1761, 5.000000e-01
  %1765 = fadd fast float %1764, %1749
  %1766 = fsub fast float %1765, %1755
  %1767 = fadd fast float %1763, 5.000000e-01
  %1768 = fadd fast float %1767, %1750
  %1769 = fsub fast float %1768, %1756
  %1770 = fdiv fast float %1766, %1720
  %1771 = fdiv fast float %1769, %1746
  %1772 = fmul fast float %1404, 4.375000e-01
  %1773 = fadd fast float %1772, 3.125000e-02
  %1774 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %25, float %1770, float %1771, float %1773, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1775 = extractvalue %dx.types.ResRet.f32 %1774, 0
  %1776 = extractvalue %dx.types.ResRet.f32 %1774, 1
  %1777 = extractvalue %dx.types.ResRet.f32 %1774, 2
  %1778 = fadd fast float %1775, %1716
  %1779 = fadd fast float %1776, %1717
  %1780 = fadd fast float %1777, %1718
  br label %1781

; <label>:1781                                    ; preds = %1745, %1730
  %1782 = phi float [ %1780, %1745 ], [ %1718, %1730 ]
  %1783 = phi float [ %1779, %1745 ], [ %1717, %1730 ]
  %1784 = phi float [ %1778, %1745 ], [ %1716, %1730 ]
  %1785 = icmp eq i32 %1743, 65535
  br i1 %1785, label %1875, label %1786, !dx.controlflow.hints !81

; <label>:1786                                    ; preds = %1781
  %1787 = extractvalue %dx.types.CBufRet.f32 %1719, 1
  %1788 = extractvalue %dx.types.CBufRet.f32 %1731, 0
  %1789 = extractvalue %dx.types.CBufRet.f32 %1731, 1
  %1790 = fmul fast float %1788, %1376
  %1791 = fmul fast float %1789, %1377
  %1792 = fmul fast float %1790, 1.250000e-01
  %1793 = fmul fast float %1791, 1.250000e-01
  %1794 = call float @dx.op.unary.f32(i32 27, float %1792)  ; Round_ni(value)
  %1795 = call float @dx.op.unary.f32(i32 27, float %1793)  ; Round_ni(value)
  %1796 = fmul fast float %1794, 8.000000e+00
  %1797 = fmul fast float %1795, 8.000000e+00
  %1798 = fsub fast float %1790, %1796
  %1799 = fsub fast float %1791, %1797
  %1800 = fadd fast float %1798, 5.000000e-01
  %1801 = fadd fast float %1799, 5.000000e-01
  %1802 = and i32 %1743, 255
  %1803 = lshr i32 %1741, 24
  %1804 = mul nuw nsw i32 %1802, 9
  %1805 = uitofp i32 %1804 to float
  %1806 = mul nuw nsw i32 %1803, 9
  %1807 = uitofp i32 %1806 to float
  %1808 = fadd fast float %1800, %1805
  %1809 = fadd fast float %1801, %1807
  %1810 = fdiv fast float %1808, %1720
  %1811 = fdiv fast float %1809, %1787
  %1812 = fmul fast float %1404, 4.375000e-01
  %1813 = fadd fast float %1812, 3.125000e-02
  %1814 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %25, float %1810, float %1811, float %1813, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1815 = extractvalue %dx.types.ResRet.f32 %1814, 0
  %1816 = extractvalue %dx.types.ResRet.f32 %1814, 1
  %1817 = extractvalue %dx.types.ResRet.f32 %1814, 2
  %1818 = fadd fast float %1812, 5.312500e-01
  %1819 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %25, float %1810, float %1811, float %1818, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1820 = extractvalue %dx.types.ResRet.f32 %1819, 0
  %1821 = extractvalue %dx.types.ResRet.f32 %1819, 1
  %1822 = extractvalue %dx.types.ResRet.f32 %1819, 2
  %1823 = fmul fast float %1820, 2.000000e+00
  %1824 = fmul fast float %1821, 2.000000e+00
  %1825 = fmul fast float %1822, 2.000000e+00
  %1826 = fadd fast float %1823, -1.000000e+00
  %1827 = fadd fast float %1824, -1.000000e+00
  %1828 = fadd fast float %1825, -1.000000e+00
  %1829 = fmul fast float %1826, %1826
  %1830 = fmul fast float %1827, %1827
  %1831 = fadd fast float %1829, %1830
  %1832 = fmul fast float %1828, %1828
  %1833 = fadd fast float %1831, %1832
  %1834 = call float @dx.op.unary.f32(i32 24, float %1833)  ; Sqrt(value)
  %1835 = fcmp fast ogt float %1834, 0.000000e+00
  br i1 %1835, label %1836, label %1840, !dx.controlflow.hints !82

; <label>:1836                                    ; preds = %1786
  %1837 = fdiv fast float %1826, %1834
  %1838 = fdiv fast float %1827, %1834
  %1839 = fdiv fast float %1828, %1834
  br label %1840

; <label>:1840                                    ; preds = %1836, %1786
  %1841 = phi float [ %1837, %1836 ], [ 0.000000e+00, %1786 ]
  %1842 = phi float [ %1838, %1836 ], [ 0.000000e+00, %1786 ]
  %1843 = phi float [ %1839, %1836 ], [ 0.000000e+00, %1786 ]
  %1844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1845 = extractvalue %dx.types.CBufRet.f32 %1844, 0
  %1846 = extractvalue %dx.types.CBufRet.f32 %1844, 1
  %1847 = fsub fast float %195, %1845
  %1848 = fsub fast float %200, %1846
  %1849 = fmul fast float %1847, %1847
  %1850 = fmul fast float %1848, %1848
  %1851 = fadd fast float %1849, %1850
  %1852 = call float @dx.op.unary.f32(i32 24, float %1851)  ; Sqrt(value)
  %1853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1854 = extractvalue %dx.types.CBufRet.f32 %1853, 0
  %1855 = extractvalue %dx.types.CBufRet.f32 %1853, 1
  %1856 = fsub fast float %1852, %1854
  %1857 = fdiv fast float %1856, %1855
  %1858 = call float @dx.op.unary.f32(i32 7, float %1857)  ; Saturate(value)
  %1859 = fmul fast float %1858, 2.000000e+00
  %1860 = fsub fast float 3.000000e+00, %1859
  %1861 = fmul fast float %1858, %1858
  %1862 = fmul fast float %1861, %1860
  %1863 = call float @dx.op.dot3.f32(i32 55, float %1841, float %1842, float %1843, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1864 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1863)  ; FMax(a,b)
  %1865 = fmul fast float %1864, 0x400C5BF8A0000000
  %1866 = fmul fast float %1862, %1815
  %1867 = fmul fast float %1866, %1865
  %1868 = fadd fast float %1867, %1784
  %1869 = fmul fast float %1862, %1816
  %1870 = fmul fast float %1869, %1865
  %1871 = fadd fast float %1870, %1783
  %1872 = fmul fast float %1862, %1817
  %1873 = fmul fast float %1872, %1865
  %1874 = fadd fast float %1873, %1782
  br label %1875

; <label>:1875                                    ; preds = %1840, %1781, %1706
  %1876 = phi float [ %1874, %1840 ], [ %1782, %1781 ], [ %1718, %1706 ]
  %1877 = phi float [ %1871, %1840 ], [ %1783, %1781 ], [ %1717, %1706 ]
  %1878 = phi float [ %1868, %1840 ], [ %1784, %1781 ], [ %1716, %1706 ]
  %1879 = fcmp fast ogt float %205, %1400
  %1880 = and i1 %1722, %1879
  %1881 = and i1 %1724, %1880
  %1882 = and i1 %1726, %1881
  %1883 = and i1 %1728, %1882
  br i1 %1883, label %1884, label %1941, !dx.controlflow.hints !83

; <label>:1884                                    ; preds = %1875
  %1885 = fmul fast float %1402, 0x3FC24924A0000000
  %1886 = fsub fast float %205, %1400
  %1887 = fdiv fast float %1886, %1885
  %1888 = call float @dx.op.unary.f32(i32 7, float %1887)  ; Saturate(value)
  %1889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %1890 = extractvalue %dx.types.CBufRet.f32 %1889, 0
  %1891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %1892 = extractvalue %dx.types.CBufRet.f32 %1891, 0
  %1893 = extractvalue %dx.types.CBufRet.f32 %1891, 1
  %1894 = extractvalue %dx.types.CBufRet.f32 %1891, 2
  %1895 = fsub fast float %1890, %1878
  %1896 = fsub fast float %1892, %1713
  %1897 = fsub fast float %1893, %1714
  %1898 = fsub fast float %1894, %1715
  %1899 = fmul fast float %1895, %1888
  %1900 = fmul fast float %1896, %1888
  %1901 = fmul fast float %1897, %1888
  %1902 = fmul fast float %1898, %1888
  %1903 = fadd fast float %1899, %1878
  %1904 = fadd fast float %1900, %1713
  %1905 = fadd fast float %1901, %1714
  %1906 = fadd fast float %1902, %1715
  %1907 = extractvalue %dx.types.CBufRet.f32 %1889, 1
  %1908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %1909 = extractvalue %dx.types.CBufRet.f32 %1908, 0
  %1910 = extractvalue %dx.types.CBufRet.f32 %1908, 1
  %1911 = extractvalue %dx.types.CBufRet.f32 %1908, 2
  %1912 = fsub fast float %1907, %1877
  %1913 = fsub fast float %1909, %1710
  %1914 = fsub fast float %1910, %1711
  %1915 = fsub fast float %1911, %1712
  %1916 = fmul fast float %1912, %1888
  %1917 = fmul fast float %1913, %1888
  %1918 = fmul fast float %1914, %1888
  %1919 = fmul fast float %1915, %1888
  %1920 = fadd fast float %1916, %1877
  %1921 = fadd fast float %1917, %1710
  %1922 = fadd fast float %1918, %1711
  %1923 = fadd fast float %1919, %1712
  %1924 = extractvalue %dx.types.CBufRet.f32 %1889, 2
  %1925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %1926 = extractvalue %dx.types.CBufRet.f32 %1925, 0
  %1927 = extractvalue %dx.types.CBufRet.f32 %1925, 1
  %1928 = extractvalue %dx.types.CBufRet.f32 %1925, 2
  %1929 = fsub fast float %1924, %1876
  %1930 = fsub fast float %1926, %1707
  %1931 = fsub fast float %1927, %1708
  %1932 = fsub fast float %1928, %1709
  %1933 = fmul fast float %1929, %1888
  %1934 = fmul fast float %1930, %1888
  %1935 = fmul fast float %1931, %1888
  %1936 = fmul fast float %1932, %1888
  %1937 = fadd fast float %1933, %1876
  %1938 = fadd fast float %1934, %1707
  %1939 = fadd fast float %1935, %1708
  %1940 = fadd fast float %1936, %1709
  br label %1941

; <label>:1941                                    ; preds = %1884, %1875
  %1942 = phi float [ %1937, %1884 ], [ %1876, %1875 ]
  %1943 = phi float [ %1938, %1884 ], [ %1707, %1875 ]
  %1944 = phi float [ %1939, %1884 ], [ %1708, %1875 ]
  %1945 = phi float [ %1940, %1884 ], [ %1709, %1875 ]
  %1946 = phi float [ %1920, %1884 ], [ %1877, %1875 ]
  %1947 = phi float [ %1921, %1884 ], [ %1710, %1875 ]
  %1948 = phi float [ %1922, %1884 ], [ %1711, %1875 ]
  %1949 = phi float [ %1923, %1884 ], [ %1712, %1875 ]
  %1950 = phi float [ %1903, %1884 ], [ %1878, %1875 ]
  %1951 = phi float [ %1904, %1884 ], [ %1713, %1875 ]
  %1952 = phi float [ %1905, %1884 ], [ %1714, %1875 ]
  %1953 = phi float [ %1906, %1884 ], [ %1715, %1875 ]
  %1954 = extractvalue %dx.types.CBufRet.f32 %1525, 3
  %1955 = fmul fast float %1954, %1950
  %1956 = fmul fast float %1954, %1946
  %1957 = fmul fast float %1954, %1942
  %1958 = fmul fast float %1951, 1.500000e+00
  %1959 = fmul fast float %1958, %1954
  %1960 = fmul fast float %1952, 1.500000e+00
  %1961 = fmul fast float %1960, %1954
  %1962 = fmul fast float %1953, 1.500000e+00
  %1963 = fmul fast float %1962, %1954
  %1964 = fmul fast float %1947, 1.500000e+00
  %1965 = fmul fast float %1964, %1954
  %1966 = fmul fast float %1948, 1.500000e+00
  %1967 = fmul fast float %1966, %1954
  %1968 = fmul fast float %1949, 1.500000e+00
  %1969 = fmul fast float %1968, %1954
  %1970 = fmul fast float %1943, 1.500000e+00
  %1971 = fmul fast float %1970, %1954
  %1972 = fmul fast float %1944, 1.500000e+00
  %1973 = fmul fast float %1972, %1954
  %1974 = fmul fast float %1945, 1.500000e+00
  %1975 = fmul fast float %1974, %1954
  %1976 = fsub fast float %1356, %1955
  %1977 = fmul fast float %1976, %245
  %1978 = fadd fast float %1977, %1955
  %1979 = fsub fast float %1355, %1959
  %1980 = fmul fast float %1979, %245
  %1981 = fadd fast float %1980, %1959
  %1982 = fsub fast float %1354, %1961
  %1983 = fmul fast float %1982, %245
  %1984 = fadd fast float %1983, %1961
  %1985 = fsub fast float %1353, %1963
  %1986 = fmul fast float %1985, %245
  %1987 = fadd fast float %1986, %1963
  %1988 = fmul fast float %1352, %245
  %1989 = fmul fast float %1351, %245
  %1990 = fmul fast float %1350, %245
  %1991 = fmul fast float %1349, %245
  %1992 = fmul fast float %1348, %245
  %1993 = fsub fast float %1347, %1956
  %1994 = fmul fast float %1993, %245
  %1995 = fadd fast float %1994, %1956
  %1996 = fsub fast float %1346, %1965
  %1997 = fmul fast float %1996, %245
  %1998 = fadd fast float %1997, %1965
  %1999 = fsub fast float %1345, %1967
  %2000 = fmul fast float %1999, %245
  %2001 = fadd fast float %2000, %1967
  %2002 = fsub fast float %1344, %1969
  %2003 = fmul fast float %2002, %245
  %2004 = fadd fast float %2003, %1969
  %2005 = fmul fast float %1343, %245
  %2006 = fmul fast float %1342, %245
  %2007 = fmul fast float %1341, %245
  %2008 = fmul fast float %1340, %245
  %2009 = fmul fast float %1339, %245
  %2010 = fsub fast float %1365, %1957
  %2011 = fmul fast float %2010, %245
  %2012 = fadd fast float %2011, %1957
  %2013 = fsub fast float %1364, %1971
  %2014 = fmul fast float %2013, %245
  %2015 = fadd fast float %2014, %1971
  %2016 = fsub fast float %1363, %1973
  %2017 = fmul fast float %2016, %245
  %2018 = fadd fast float %2017, %1973
  %2019 = fsub fast float %1362, %1975
  %2020 = fmul fast float %2019, %245
  %2021 = fadd fast float %2020, %1975
  %2022 = fmul fast float %1361, %245
  %2023 = fmul fast float %1360, %245
  %2024 = fmul fast float %1359, %245
  %2025 = fmul fast float %1358, %245
  %2026 = fmul fast float %1357, %245
  br label %2027

; <label>:2027                                    ; preds = %1941, %1338
  %2028 = phi float [ %1339, %1338 ], [ %2009, %1941 ]
  %2029 = phi float [ %1340, %1338 ], [ %2008, %1941 ]
  %2030 = phi float [ %1341, %1338 ], [ %2007, %1941 ]
  %2031 = phi float [ %1342, %1338 ], [ %2006, %1941 ]
  %2032 = phi float [ %1343, %1338 ], [ %2005, %1941 ]
  %2033 = phi float [ %1344, %1338 ], [ %2004, %1941 ]
  %2034 = phi float [ %1345, %1338 ], [ %2001, %1941 ]
  %2035 = phi float [ %1346, %1338 ], [ %1998, %1941 ]
  %2036 = phi float [ %1347, %1338 ], [ %1995, %1941 ]
  %2037 = phi float [ %1348, %1338 ], [ %1992, %1941 ]
  %2038 = phi float [ %1349, %1338 ], [ %1991, %1941 ]
  %2039 = phi float [ %1350, %1338 ], [ %1990, %1941 ]
  %2040 = phi float [ %1351, %1338 ], [ %1989, %1941 ]
  %2041 = phi float [ %1352, %1338 ], [ %1988, %1941 ]
  %2042 = phi float [ %1353, %1338 ], [ %1987, %1941 ]
  %2043 = phi float [ %1354, %1338 ], [ %1984, %1941 ]
  %2044 = phi float [ %1355, %1338 ], [ %1981, %1941 ]
  %2045 = phi float [ %1356, %1338 ], [ %1978, %1941 ]
  %2046 = phi float [ %1357, %1338 ], [ %2026, %1941 ]
  %2047 = phi float [ %1358, %1338 ], [ %2025, %1941 ]
  %2048 = phi float [ %1359, %1338 ], [ %2024, %1941 ]
  %2049 = phi float [ %1360, %1338 ], [ %2023, %1941 ]
  %2050 = phi float [ %1361, %1338 ], [ %2022, %1941 ]
  %2051 = phi float [ %1362, %1338 ], [ %2021, %1941 ]
  %2052 = phi float [ %1363, %1338 ], [ %2018, %1941 ]
  %2053 = phi float [ %1364, %1338 ], [ %2015, %1941 ]
  %2054 = phi float [ %1365, %1338 ], [ %2012, %1941 ]
  %2055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2056 = extractvalue %dx.types.CBufRet.f32 %2055, 0
  %2057 = extractvalue %dx.types.CBufRet.f32 %2055, 1
  %2058 = extractvalue %dx.types.CBufRet.f32 %2055, 2
  %2059 = fsub fast float %195, %2056
  %2060 = fsub fast float %200, %2057
  %2061 = fsub fast float %205, %2058
  %2062 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2063 = extractvalue %dx.types.CBufRet.i32 %2062, 2
  %2064 = icmp eq i32 %2063, 0
  br i1 %2064, label %2415, label %2065

; <label>:2065                                    ; preds = %2027
  br label %2066

; <label>:2066                                    ; preds = %2381, %2065
  %2067 = phi float [ %2382, %2381 ], [ 0.000000e+00, %2065 ]
  %2068 = phi float [ %2383, %2381 ], [ 0.000000e+00, %2065 ]
  %2069 = phi float [ %2384, %2381 ], [ 0.000000e+00, %2065 ]
  %2070 = phi float [ %2385, %2381 ], [ 0.000000e+00, %2065 ]
  %2071 = phi float [ %2386, %2381 ], [ 0.000000e+00, %2065 ]
  %2072 = phi float [ %2387, %2381 ], [ 0.000000e+00, %2065 ]
  %2073 = phi float [ %2388, %2381 ], [ 0.000000e+00, %2065 ]
  %2074 = phi float [ %2389, %2381 ], [ 0.000000e+00, %2065 ]
  %2075 = phi float [ %2390, %2381 ], [ 0.000000e+00, %2065 ]
  %2076 = phi float [ %2391, %2381 ], [ 0.000000e+00, %2065 ]
  %2077 = phi float [ %2392, %2381 ], [ 0.000000e+00, %2065 ]
  %2078 = phi float [ %2393, %2381 ], [ 0.000000e+00, %2065 ]
  %2079 = phi float [ %2394, %2381 ], [ 0.000000e+00, %2065 ]
  %2080 = phi float [ %2395, %2381 ], [ 0.000000e+00, %2065 ]
  %2081 = phi float [ %2396, %2381 ], [ 0.000000e+00, %2065 ]
  %2082 = phi float [ %2397, %2381 ], [ 0.000000e+00, %2065 ]
  %2083 = phi float [ %2398, %2381 ], [ 0.000000e+00, %2065 ]
  %2084 = phi float [ %2399, %2381 ], [ 0.000000e+00, %2065 ]
  %2085 = phi float [ %2400, %2381 ], [ 0.000000e+00, %2065 ]
  %2086 = phi float [ %2401, %2381 ], [ 0.000000e+00, %2065 ]
  %2087 = phi float [ %2402, %2381 ], [ 0.000000e+00, %2065 ]
  %2088 = phi float [ %2403, %2381 ], [ 0.000000e+00, %2065 ]
  %2089 = phi float [ %2404, %2381 ], [ 0.000000e+00, %2065 ]
  %2090 = phi float [ %2405, %2381 ], [ 0.000000e+00, %2065 ]
  %2091 = phi float [ %2406, %2381 ], [ 0.000000e+00, %2065 ]
  %2092 = phi float [ %2407, %2381 ], [ 0.000000e+00, %2065 ]
  %2093 = phi float [ %2408, %2381 ], [ 0.000000e+00, %2065 ]
  %2094 = phi float [ %2409, %2381 ], [ 1.000000e+00, %2065 ]
  %2095 = phi i32 [ %2410, %2381 ], [ 0, %2065 ]
  %2096 = shl i32 %2095, 2
  %2097 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %2096, i32 undef)  ; BufferLoad(srv,index,wot)
  %2098 = extractvalue %dx.types.ResRet.i32 %2097, 0
  %2099 = icmp ne i32 %2098, 0
  %2100 = fcmp fast ogt float %2094, 0.000000e+00
  %2101 = and i1 %2100, %2099
  br i1 %2101, label %2102, label %2381

; <label>:2102                                    ; preds = %2066
  br label %2103

; <label>:2103                                    ; preds = %2348, %2102
  %2104 = phi float [ %2349, %2348 ], [ %2067, %2102 ]
  %2105 = phi float [ %2350, %2348 ], [ %2068, %2102 ]
  %2106 = phi float [ %2351, %2348 ], [ %2069, %2102 ]
  %2107 = phi float [ %2352, %2348 ], [ %2070, %2102 ]
  %2108 = phi float [ %2353, %2348 ], [ %2071, %2102 ]
  %2109 = phi float [ %2354, %2348 ], [ %2072, %2102 ]
  %2110 = phi float [ %2355, %2348 ], [ %2073, %2102 ]
  %2111 = phi float [ %2356, %2348 ], [ %2074, %2102 ]
  %2112 = phi float [ %2357, %2348 ], [ %2075, %2102 ]
  %2113 = phi float [ %2358, %2348 ], [ %2076, %2102 ]
  %2114 = phi float [ %2359, %2348 ], [ %2077, %2102 ]
  %2115 = phi float [ %2360, %2348 ], [ %2078, %2102 ]
  %2116 = phi float [ %2361, %2348 ], [ %2079, %2102 ]
  %2117 = phi float [ %2362, %2348 ], [ %2080, %2102 ]
  %2118 = phi float [ %2363, %2348 ], [ %2081, %2102 ]
  %2119 = phi float [ %2364, %2348 ], [ %2082, %2102 ]
  %2120 = phi float [ %2365, %2348 ], [ %2083, %2102 ]
  %2121 = phi float [ %2366, %2348 ], [ %2084, %2102 ]
  %2122 = phi float [ %2367, %2348 ], [ %2085, %2102 ]
  %2123 = phi float [ %2368, %2348 ], [ %2086, %2102 ]
  %2124 = phi float [ %2369, %2348 ], [ %2087, %2102 ]
  %2125 = phi float [ %2370, %2348 ], [ %2088, %2102 ]
  %2126 = phi float [ %2371, %2348 ], [ %2089, %2102 ]
  %2127 = phi float [ %2372, %2348 ], [ %2090, %2102 ]
  %2128 = phi float [ %2373, %2348 ], [ %2091, %2102 ]
  %2129 = phi float [ %2374, %2348 ], [ %2092, %2102 ]
  %2130 = phi float [ %2375, %2348 ], [ %2093, %2102 ]
  %2131 = phi float [ %2376, %2348 ], [ %2094, %2102 ]
  %2132 = phi i32 [ %2136, %2348 ], [ %2098, %2102 ]
  %2133 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2132)  ; FirstbitLo(value)
  %2134 = and i32 %2133, 31
  %2135 = shl i32 1, %2134
  %2136 = xor i32 %2135, %2132
  %2137 = shl i32 %2095, 5
  %2138 = add i32 %2133, %2137
  %2139 = mul i32 %2138, 72
  %2140 = add i32 %2139, 12
  %2141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %2140, i32 undef)  ; BufferLoad(srv,index,wot)
  %2142 = extractvalue %dx.types.ResRet.i32 %2141, 0
  %2143 = add i32 %2139, 16
  %2144 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %2143, i32 undef)  ; BufferLoad(srv,index,wot)
  %2145 = extractvalue %dx.types.ResRet.f32 %2144, 0
  %2146 = extractvalue %dx.types.ResRet.f32 %2144, 1
  %2147 = extractvalue %dx.types.ResRet.f32 %2144, 2
  %2148 = mul i32 %2138, 60
  %2149 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %2148, i32 undef)  ; BufferLoad(srv,index,wot)
  %2150 = extractvalue %dx.types.ResRet.f32 %2149, 0
  %2151 = extractvalue %dx.types.ResRet.f32 %2149, 1
  %2152 = extractvalue %dx.types.ResRet.f32 %2149, 2
  %2153 = add i32 %2148, 12
  %2154 = add i32 %2148, 48
  %2155 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %2154, i32 undef)  ; BufferLoad(srv,index,wot)
  %2156 = extractvalue %dx.types.ResRet.f32 %2155, 0
  %2157 = extractvalue %dx.types.ResRet.f32 %2155, 1
  %2158 = extractvalue %dx.types.ResRet.f32 %2155, 2
  %2159 = and i32 %2142, 32767
  %2160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2161 = extractvalue %dx.types.CBufRet.f32 %2160, 0
  %2162 = extractvalue %dx.types.CBufRet.f32 %2160, 1
  %2163 = extractvalue %dx.types.CBufRet.f32 %2160, 2
  %2164 = fsub fast float %2150, %2161
  %2165 = fsub fast float %2151, %2162
  %2166 = fsub fast float %2152, %2163
  %2167 = fsub fast float %2059, %2164
  %2168 = fsub fast float %2060, %2165
  %2169 = fsub fast float %2061, %2166
  %2170 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %2153, i32 undef)  ; BufferLoad(srv,index,wot)
  %2171 = extractvalue %dx.types.ResRet.f32 %2170, 0
  %2172 = extractvalue %dx.types.ResRet.f32 %2170, 1
  %2173 = extractvalue %dx.types.ResRet.f32 %2170, 2
  %2174 = call float @dx.op.dot3.f32(i32 55, float %2167, float %2168, float %2169, float %2171, float %2172, float %2173)  ; Dot3(ax,ay,az,bx,by,bz)
  %2175 = add i32 %2148, 24
  %2176 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %2175, i32 undef)  ; BufferLoad(srv,index,wot)
  %2177 = extractvalue %dx.types.ResRet.f32 %2176, 0
  %2178 = extractvalue %dx.types.ResRet.f32 %2176, 1
  %2179 = extractvalue %dx.types.ResRet.f32 %2176, 2
  %2180 = call float @dx.op.dot3.f32(i32 55, float %2167, float %2168, float %2169, float %2177, float %2178, float %2179)  ; Dot3(ax,ay,az,bx,by,bz)
  %2181 = add i32 %2148, 36
  %2182 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %2181, i32 undef)  ; BufferLoad(srv,index,wot)
  %2183 = extractvalue %dx.types.ResRet.f32 %2182, 0
  %2184 = extractvalue %dx.types.ResRet.f32 %2182, 1
  %2185 = extractvalue %dx.types.ResRet.f32 %2182, 2
  %2186 = call float @dx.op.dot3.f32(i32 55, float %2167, float %2168, float %2169, float %2183, float %2184, float %2185)  ; Dot3(ax,ay,az,bx,by,bz)
  %2187 = call float @dx.op.unary.f32(i32 6, float %2174)  ; FAbs(value)
  %2188 = call float @dx.op.unary.f32(i32 6, float %2180)  ; FAbs(value)
  %2189 = call float @dx.op.unary.f32(i32 6, float %2186)  ; FAbs(value)
  %2190 = fsub fast float %2156, %2187
  %2191 = fsub fast float %2157, %2188
  %2192 = fsub fast float %2158, %2189
  %2193 = fmul fast float %2190, %2145
  %2194 = fmul fast float %2191, %2146
  %2195 = fmul fast float %2192, %2147
  %2196 = call float @dx.op.binary.f32(i32 36, float %2194, float %2195)  ; FMin(a,b)
  %2197 = call float @dx.op.binary.f32(i32 36, float %2193, float %2196)  ; FMin(a,b)
  %2198 = call float @dx.op.unary.f32(i32 7, float %2197)  ; Saturate(value)
  %2199 = call float @dx.op.binary.f32(i32 36, float %2131, float %2198)  ; FMin(a,b)
  %2200 = fcmp fast ogt float %2199, 0.000000e+00
  br i1 %2200, label %2201, label %2348, !dx.controlflow.hints !84

; <label>:2201                                    ; preds = %2103
  %2202 = lshr i32 %2142, 16
  %2203 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2202)  ; LegacyF16ToF32(value)
  %2204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 141)  ; CBufferLoadLegacy(handle,regIndex)
  %2205 = extractvalue %dx.types.CBufRet.f32 %2204, 3
  %2206 = bitcast float %2205 to i32
  %2207 = add i32 %2206, %2159
  %2208 = mul i32 %2207, 36
  %2209 = shl i32 %2206, 1
  %2210 = add i32 %2209, %2159
  %2211 = mul i32 %2210, 36
  %2212 = mul i32 %2206, 3
  %2213 = add i32 %2212, %2159
  %2214 = mul i32 %2213, 36
  %2215 = fmul fast float %2203, %2199
  %2216 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2208, i32 undef)  ; BufferLoad(srv,index,wot)
  %2217 = extractvalue %dx.types.ResRet.f32 %2216, 0
  %2218 = fmul fast float %2217, %2215
  %2219 = fadd fast float %2218, %2112
  %2220 = add i32 %2208, 4
  %2221 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2220, i32 undef)  ; BufferLoad(srv,index,wot)
  %2222 = extractvalue %dx.types.ResRet.f32 %2221, 0
  %2223 = fmul fast float %2222, %2215
  %2224 = fadd fast float %2223, %2111
  %2225 = add i32 %2208, 8
  %2226 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2225, i32 undef)  ; BufferLoad(srv,index,wot)
  %2227 = extractvalue %dx.types.ResRet.f32 %2226, 0
  %2228 = fmul fast float %2227, %2215
  %2229 = fadd fast float %2228, %2110
  %2230 = add i32 %2208, 12
  %2231 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2230, i32 undef)  ; BufferLoad(srv,index,wot)
  %2232 = extractvalue %dx.types.ResRet.f32 %2231, 0
  %2233 = fmul fast float %2232, %2215
  %2234 = fadd fast float %2233, %2109
  %2235 = add i32 %2208, 16
  %2236 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2235, i32 undef)  ; BufferLoad(srv,index,wot)
  %2237 = extractvalue %dx.types.ResRet.f32 %2236, 0
  %2238 = fmul fast float %2237, %2215
  %2239 = fadd fast float %2238, %2108
  %2240 = add i32 %2208, 20
  %2241 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2240, i32 undef)  ; BufferLoad(srv,index,wot)
  %2242 = extractvalue %dx.types.ResRet.f32 %2241, 0
  %2243 = fmul fast float %2242, %2215
  %2244 = fadd fast float %2243, %2107
  %2245 = add i32 %2208, 24
  %2246 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2245, i32 undef)  ; BufferLoad(srv,index,wot)
  %2247 = extractvalue %dx.types.ResRet.f32 %2246, 0
  %2248 = fmul fast float %2247, %2215
  %2249 = fadd fast float %2248, %2106
  %2250 = add i32 %2208, 28
  %2251 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2250, i32 undef)  ; BufferLoad(srv,index,wot)
  %2252 = extractvalue %dx.types.ResRet.f32 %2251, 0
  %2253 = fmul fast float %2252, %2215
  %2254 = fadd fast float %2253, %2105
  %2255 = add i32 %2208, 32
  %2256 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2255, i32 undef)  ; BufferLoad(srv,index,wot)
  %2257 = extractvalue %dx.types.ResRet.f32 %2256, 0
  %2258 = fmul fast float %2257, %2215
  %2259 = fadd fast float %2258, %2104
  %2260 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2211, i32 undef)  ; BufferLoad(srv,index,wot)
  %2261 = extractvalue %dx.types.ResRet.f32 %2260, 0
  %2262 = fmul fast float %2261, %2215
  %2263 = fadd fast float %2262, %2121
  %2264 = add i32 %2211, 4
  %2265 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2264, i32 undef)  ; BufferLoad(srv,index,wot)
  %2266 = extractvalue %dx.types.ResRet.f32 %2265, 0
  %2267 = fmul fast float %2266, %2215
  %2268 = fadd fast float %2267, %2120
  %2269 = add i32 %2211, 8
  %2270 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2269, i32 undef)  ; BufferLoad(srv,index,wot)
  %2271 = extractvalue %dx.types.ResRet.f32 %2270, 0
  %2272 = fmul fast float %2271, %2215
  %2273 = fadd fast float %2272, %2119
  %2274 = add i32 %2211, 12
  %2275 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2274, i32 undef)  ; BufferLoad(srv,index,wot)
  %2276 = extractvalue %dx.types.ResRet.f32 %2275, 0
  %2277 = fmul fast float %2276, %2215
  %2278 = fadd fast float %2277, %2118
  %2279 = add i32 %2211, 16
  %2280 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2279, i32 undef)  ; BufferLoad(srv,index,wot)
  %2281 = extractvalue %dx.types.ResRet.f32 %2280, 0
  %2282 = fmul fast float %2281, %2215
  %2283 = fadd fast float %2282, %2117
  %2284 = add i32 %2211, 20
  %2285 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2284, i32 undef)  ; BufferLoad(srv,index,wot)
  %2286 = extractvalue %dx.types.ResRet.f32 %2285, 0
  %2287 = fmul fast float %2286, %2215
  %2288 = fadd fast float %2287, %2116
  %2289 = add i32 %2211, 24
  %2290 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2289, i32 undef)  ; BufferLoad(srv,index,wot)
  %2291 = extractvalue %dx.types.ResRet.f32 %2290, 0
  %2292 = fmul fast float %2291, %2215
  %2293 = fadd fast float %2292, %2115
  %2294 = add i32 %2211, 28
  %2295 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2294, i32 undef)  ; BufferLoad(srv,index,wot)
  %2296 = extractvalue %dx.types.ResRet.f32 %2295, 0
  %2297 = fmul fast float %2296, %2215
  %2298 = fadd fast float %2297, %2114
  %2299 = add i32 %2211, 32
  %2300 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2299, i32 undef)  ; BufferLoad(srv,index,wot)
  %2301 = extractvalue %dx.types.ResRet.f32 %2300, 0
  %2302 = fmul fast float %2301, %2215
  %2303 = fadd fast float %2302, %2113
  %2304 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2214, i32 undef)  ; BufferLoad(srv,index,wot)
  %2305 = extractvalue %dx.types.ResRet.f32 %2304, 0
  %2306 = fmul fast float %2305, %2215
  %2307 = fadd fast float %2306, %2130
  %2308 = add i32 %2214, 4
  %2309 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2308, i32 undef)  ; BufferLoad(srv,index,wot)
  %2310 = extractvalue %dx.types.ResRet.f32 %2309, 0
  %2311 = fmul fast float %2310, %2215
  %2312 = fadd fast float %2311, %2129
  %2313 = add i32 %2214, 8
  %2314 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2313, i32 undef)  ; BufferLoad(srv,index,wot)
  %2315 = extractvalue %dx.types.ResRet.f32 %2314, 0
  %2316 = fmul fast float %2315, %2215
  %2317 = fadd fast float %2316, %2128
  %2318 = add i32 %2214, 12
  %2319 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2318, i32 undef)  ; BufferLoad(srv,index,wot)
  %2320 = extractvalue %dx.types.ResRet.f32 %2319, 0
  %2321 = fmul fast float %2320, %2215
  %2322 = fadd fast float %2321, %2127
  %2323 = add i32 %2214, 16
  %2324 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2323, i32 undef)  ; BufferLoad(srv,index,wot)
  %2325 = extractvalue %dx.types.ResRet.f32 %2324, 0
  %2326 = fmul fast float %2325, %2215
  %2327 = fadd fast float %2326, %2126
  %2328 = add i32 %2214, 20
  %2329 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2328, i32 undef)  ; BufferLoad(srv,index,wot)
  %2330 = extractvalue %dx.types.ResRet.f32 %2329, 0
  %2331 = fmul fast float %2330, %2215
  %2332 = fadd fast float %2331, %2125
  %2333 = add i32 %2214, 24
  %2334 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2333, i32 undef)  ; BufferLoad(srv,index,wot)
  %2335 = extractvalue %dx.types.ResRet.f32 %2334, 0
  %2336 = fmul fast float %2335, %2215
  %2337 = fadd fast float %2336, %2124
  %2338 = add i32 %2214, 28
  %2339 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2338, i32 undef)  ; BufferLoad(srv,index,wot)
  %2340 = extractvalue %dx.types.ResRet.f32 %2339, 0
  %2341 = fmul fast float %2340, %2215
  %2342 = fadd fast float %2341, %2123
  %2343 = add i32 %2214, 32
  %2344 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2343, i32 undef)  ; BufferLoad(srv,index,wot)
  %2345 = extractvalue %dx.types.ResRet.f32 %2344, 0
  %2346 = fmul fast float %2345, %2215
  %2347 = fadd fast float %2346, %2122
  br label %2348

; <label>:2348                                    ; preds = %2201, %2103
  %2349 = phi float [ %2259, %2201 ], [ %2104, %2103 ]
  %2350 = phi float [ %2254, %2201 ], [ %2105, %2103 ]
  %2351 = phi float [ %2249, %2201 ], [ %2106, %2103 ]
  %2352 = phi float [ %2244, %2201 ], [ %2107, %2103 ]
  %2353 = phi float [ %2239, %2201 ], [ %2108, %2103 ]
  %2354 = phi float [ %2234, %2201 ], [ %2109, %2103 ]
  %2355 = phi float [ %2229, %2201 ], [ %2110, %2103 ]
  %2356 = phi float [ %2224, %2201 ], [ %2111, %2103 ]
  %2357 = phi float [ %2219, %2201 ], [ %2112, %2103 ]
  %2358 = phi float [ %2303, %2201 ], [ %2113, %2103 ]
  %2359 = phi float [ %2298, %2201 ], [ %2114, %2103 ]
  %2360 = phi float [ %2293, %2201 ], [ %2115, %2103 ]
  %2361 = phi float [ %2288, %2201 ], [ %2116, %2103 ]
  %2362 = phi float [ %2283, %2201 ], [ %2117, %2103 ]
  %2363 = phi float [ %2278, %2201 ], [ %2118, %2103 ]
  %2364 = phi float [ %2273, %2201 ], [ %2119, %2103 ]
  %2365 = phi float [ %2268, %2201 ], [ %2120, %2103 ]
  %2366 = phi float [ %2263, %2201 ], [ %2121, %2103 ]
  %2367 = phi float [ %2347, %2201 ], [ %2122, %2103 ]
  %2368 = phi float [ %2342, %2201 ], [ %2123, %2103 ]
  %2369 = phi float [ %2337, %2201 ], [ %2124, %2103 ]
  %2370 = phi float [ %2332, %2201 ], [ %2125, %2103 ]
  %2371 = phi float [ %2327, %2201 ], [ %2126, %2103 ]
  %2372 = phi float [ %2322, %2201 ], [ %2127, %2103 ]
  %2373 = phi float [ %2317, %2201 ], [ %2128, %2103 ]
  %2374 = phi float [ %2312, %2201 ], [ %2129, %2103 ]
  %2375 = phi float [ %2307, %2201 ], [ %2130, %2103 ]
  %2376 = fsub fast float %2131, %2199
  %2377 = icmp ne i32 %2132, %2135
  %2378 = fcmp fast ogt float %2376, 0.000000e+00
  %2379 = and i1 %2377, %2378
  br i1 %2379, label %2103, label %2380

; <label>:2380                                    ; preds = %2348
  br label %2381

; <label>:2381                                    ; preds = %2380, %2066
  %2382 = phi float [ %2067, %2066 ], [ %2349, %2380 ]
  %2383 = phi float [ %2068, %2066 ], [ %2350, %2380 ]
  %2384 = phi float [ %2069, %2066 ], [ %2351, %2380 ]
  %2385 = phi float [ %2070, %2066 ], [ %2352, %2380 ]
  %2386 = phi float [ %2071, %2066 ], [ %2353, %2380 ]
  %2387 = phi float [ %2072, %2066 ], [ %2354, %2380 ]
  %2388 = phi float [ %2073, %2066 ], [ %2355, %2380 ]
  %2389 = phi float [ %2074, %2066 ], [ %2356, %2380 ]
  %2390 = phi float [ %2075, %2066 ], [ %2357, %2380 ]
  %2391 = phi float [ %2076, %2066 ], [ %2358, %2380 ]
  %2392 = phi float [ %2077, %2066 ], [ %2359, %2380 ]
  %2393 = phi float [ %2078, %2066 ], [ %2360, %2380 ]
  %2394 = phi float [ %2079, %2066 ], [ %2361, %2380 ]
  %2395 = phi float [ %2080, %2066 ], [ %2362, %2380 ]
  %2396 = phi float [ %2081, %2066 ], [ %2363, %2380 ]
  %2397 = phi float [ %2082, %2066 ], [ %2364, %2380 ]
  %2398 = phi float [ %2083, %2066 ], [ %2365, %2380 ]
  %2399 = phi float [ %2084, %2066 ], [ %2366, %2380 ]
  %2400 = phi float [ %2085, %2066 ], [ %2367, %2380 ]
  %2401 = phi float [ %2086, %2066 ], [ %2368, %2380 ]
  %2402 = phi float [ %2087, %2066 ], [ %2369, %2380 ]
  %2403 = phi float [ %2088, %2066 ], [ %2370, %2380 ]
  %2404 = phi float [ %2089, %2066 ], [ %2371, %2380 ]
  %2405 = phi float [ %2090, %2066 ], [ %2372, %2380 ]
  %2406 = phi float [ %2091, %2066 ], [ %2373, %2380 ]
  %2407 = phi float [ %2092, %2066 ], [ %2374, %2380 ]
  %2408 = phi float [ %2093, %2066 ], [ %2375, %2380 ]
  %2409 = phi float [ %2094, %2066 ], [ %2376, %2380 ]
  %2410 = add i32 %2095, 1
  %2411 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2412 = extractvalue %dx.types.CBufRet.i32 %2411, 2
  %2413 = icmp ult i32 %2410, %2412
  br i1 %2413, label %2066, label %2414

; <label>:2414                                    ; preds = %2381
  br label %2415

; <label>:2415                                    ; preds = %2414, %2027
  %2416 = phi float [ 0.000000e+00, %2027 ], [ %2382, %2414 ]
  %2417 = phi float [ 0.000000e+00, %2027 ], [ %2383, %2414 ]
  %2418 = phi float [ 0.000000e+00, %2027 ], [ %2384, %2414 ]
  %2419 = phi float [ 0.000000e+00, %2027 ], [ %2385, %2414 ]
  %2420 = phi float [ 0.000000e+00, %2027 ], [ %2386, %2414 ]
  %2421 = phi float [ 0.000000e+00, %2027 ], [ %2387, %2414 ]
  %2422 = phi float [ 0.000000e+00, %2027 ], [ %2388, %2414 ]
  %2423 = phi float [ 0.000000e+00, %2027 ], [ %2389, %2414 ]
  %2424 = phi float [ 0.000000e+00, %2027 ], [ %2390, %2414 ]
  %2425 = phi float [ 0.000000e+00, %2027 ], [ %2391, %2414 ]
  %2426 = phi float [ 0.000000e+00, %2027 ], [ %2392, %2414 ]
  %2427 = phi float [ 0.000000e+00, %2027 ], [ %2393, %2414 ]
  %2428 = phi float [ 0.000000e+00, %2027 ], [ %2394, %2414 ]
  %2429 = phi float [ 0.000000e+00, %2027 ], [ %2395, %2414 ]
  %2430 = phi float [ 0.000000e+00, %2027 ], [ %2396, %2414 ]
  %2431 = phi float [ 0.000000e+00, %2027 ], [ %2397, %2414 ]
  %2432 = phi float [ 0.000000e+00, %2027 ], [ %2398, %2414 ]
  %2433 = phi float [ 0.000000e+00, %2027 ], [ %2399, %2414 ]
  %2434 = phi float [ 0.000000e+00, %2027 ], [ %2400, %2414 ]
  %2435 = phi float [ 0.000000e+00, %2027 ], [ %2401, %2414 ]
  %2436 = phi float [ 0.000000e+00, %2027 ], [ %2402, %2414 ]
  %2437 = phi float [ 0.000000e+00, %2027 ], [ %2403, %2414 ]
  %2438 = phi float [ 0.000000e+00, %2027 ], [ %2404, %2414 ]
  %2439 = phi float [ 0.000000e+00, %2027 ], [ %2405, %2414 ]
  %2440 = phi float [ 0.000000e+00, %2027 ], [ %2406, %2414 ]
  %2441 = phi float [ 0.000000e+00, %2027 ], [ %2407, %2414 ]
  %2442 = phi float [ 0.000000e+00, %2027 ], [ %2408, %2414 ]
  %2443 = phi float [ 1.000000e+00, %2027 ], [ %2409, %2414 ]
  %2444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2445 = extractvalue %dx.types.CBufRet.f32 %2444, 3
  %2446 = fdiv fast float 1.000000e+00, %2445
  %2447 = fmul fast float %2446, %2424
  %2448 = fmul fast float %2446, %2423
  %2449 = fmul fast float %2446, %2422
  %2450 = fmul fast float %2446, %2421
  %2451 = fmul fast float %2446, %2420
  %2452 = fmul fast float %2446, %2419
  %2453 = fmul fast float %2446, %2418
  %2454 = fmul fast float %2446, %2417
  %2455 = fmul fast float %2446, %2416
  %2456 = fmul fast float %2446, %2433
  %2457 = fmul fast float %2446, %2432
  %2458 = fmul fast float %2446, %2431
  %2459 = fmul fast float %2446, %2430
  %2460 = fmul fast float %2446, %2429
  %2461 = fmul fast float %2446, %2428
  %2462 = fmul fast float %2446, %2427
  %2463 = fmul fast float %2446, %2426
  %2464 = fmul fast float %2446, %2425
  %2465 = fmul fast float %2446, %2442
  %2466 = fmul fast float %2446, %2441
  %2467 = fmul fast float %2446, %2440
  %2468 = fmul fast float %2446, %2439
  %2469 = fmul fast float %2446, %2438
  %2470 = fmul fast float %2446, %2437
  %2471 = fmul fast float %2446, %2436
  %2472 = fmul fast float %2446, %2435
  %2473 = fmul fast float %2446, %2434
  %2474 = fmul fast float %2443, %2045
  %2475 = fadd fast float %2447, %2474
  %2476 = fmul fast float %2443, %2044
  %2477 = fadd fast float %2448, %2476
  %2478 = fmul fast float %2443, %2043
  %2479 = fadd fast float %2449, %2478
  %2480 = fmul fast float %2443, %2042
  %2481 = fadd fast float %2450, %2480
  %2482 = fmul fast float %2443, %2041
  %2483 = fadd fast float %2451, %2482
  %2484 = fmul fast float %2443, %2040
  %2485 = fadd fast float %2452, %2484
  %2486 = fmul fast float %2443, %2039
  %2487 = fadd fast float %2453, %2486
  %2488 = fmul fast float %2443, %2038
  %2489 = fadd fast float %2454, %2488
  %2490 = fmul fast float %2443, %2037
  %2491 = fadd fast float %2455, %2490
  %2492 = fmul fast float %2443, %2036
  %2493 = fadd fast float %2456, %2492
  %2494 = fmul fast float %2443, %2035
  %2495 = fadd fast float %2457, %2494
  %2496 = fmul fast float %2443, %2034
  %2497 = fadd fast float %2458, %2496
  %2498 = fmul fast float %2443, %2033
  %2499 = fadd fast float %2459, %2498
  %2500 = fmul fast float %2443, %2032
  %2501 = fadd fast float %2460, %2500
  %2502 = fmul fast float %2443, %2031
  %2503 = fadd fast float %2461, %2502
  %2504 = fmul fast float %2443, %2030
  %2505 = fadd fast float %2462, %2504
  %2506 = fmul fast float %2443, %2029
  %2507 = fadd fast float %2463, %2506
  %2508 = fmul fast float %2443, %2028
  %2509 = fadd fast float %2464, %2508
  %2510 = fmul fast float %2443, %2054
  %2511 = fadd fast float %2465, %2510
  %2512 = fmul fast float %2443, %2053
  %2513 = fadd fast float %2466, %2512
  %2514 = fmul fast float %2443, %2052
  %2515 = fadd fast float %2467, %2514
  %2516 = fmul fast float %2443, %2051
  %2517 = fadd fast float %2468, %2516
  %2518 = fmul fast float %2443, %2050
  %2519 = fadd fast float %2469, %2518
  %2520 = fmul fast float %2443, %2049
  %2521 = fadd fast float %2470, %2520
  %2522 = fmul fast float %2443, %2048
  %2523 = fadd fast float %2471, %2522
  %2524 = fmul fast float %2443, %2047
  %2525 = fadd fast float %2472, %2524
  %2526 = fmul fast float %2443, %2046
  %2527 = fadd fast float %2473, %2526
  %2528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2529 = extractvalue %dx.types.CBufRet.f32 %2528, 0
  %2530 = extractvalue %dx.types.CBufRet.f32 %2528, 1
  %2531 = extractvalue %dx.types.CBufRet.f32 %2528, 2
  %2532 = fsub fast float %195, %2529
  %2533 = fsub fast float %200, %2530
  %2534 = fsub fast float %205, %2531
  %2535 = call float @dx.op.dot3.f32(i32 55, float %2532, float %2533, float %2534, float %2532, float %2533, float %2534)  ; Dot3(ax,ay,az,bx,by,bz)
  %2536 = call float @dx.op.unary.f32(i32 25, float %2535)  ; Rsqrt(value)
  %2537 = fmul fast float %2532, %2536
  %2538 = fmul fast float %2533, %2536
  %2539 = fmul fast float %2534, %2536
  %2540 = fsub fast float -0.000000e+00, %2537
  %2541 = fsub fast float -0.000000e+00, %2538
  %2542 = fmul fast float %2475, 0x3FD20DD760000000
  %2543 = fmul fast float %2493, 0x3FD20DD760000000
  %2544 = fmul fast float %2511, 0x3FD20DD760000000
  br i1 %104, label %2625, label %2545, !dx.controlflow.hints !85

; <label>:2545                                    ; preds = %2415
  %2546 = fmul fast float %2479, 0xBFD4D8D7C0000000
  %2547 = fmul fast float %2546, %2539
  %2548 = fmul fast float %2539, %2539
  %2549 = fmul fast float %2548, 0x3FEE471020000000
  %2550 = fadd fast float %2549, 0xBFD42F6020000000
  %2551 = fmul fast float %2550, %2487
  %2552 = fmul fast float %2481, 0x3FD4D8D7C0000000
  %2553 = fmul fast float %2477, 0x3FD4D8D7C0000000
  %2554 = fmul fast float %2553, %2538
  %2555 = fmul fast float %2539, 0x3FF17B1420000000
  %2556 = fmul fast float %2489, %2540
  %2557 = fmul fast float %2485, %2541
  %2558 = fmul fast float %2537, %2537
  %2559 = fmul fast float %2538, %2538
  %2560 = fsub fast float %2558, %2559
  %2561 = fmul fast float %2491, 0x3FC17B1420000000
  %2562 = fmul fast float %2561, %2560
  %2563 = fmul fast float %2483, 0x3FD17B1420000000
  %2564 = fmul fast float %2563, %2536
  %2565 = fmul fast float %2564, %2533
  %2566 = fadd fast float %2556, %2557
  %2567 = fmul fast float %2555, %2566
  %2568 = fadd fast float %2567, %2551
  %2569 = fmul fast float %2568, 2.500000e-01
  %2570 = fadd fast float %2565, %2552
  %2571 = fmul fast float %2570, %2537
  %2572 = fadd fast float %2547, %2542
  %2573 = fadd fast float %2572, %2554
  %2574 = fadd fast float %2573, %2562
  %2575 = fadd fast float %2574, %2569
  %2576 = fadd fast float %2575, %2571
  %2577 = fmul fast float %2497, 0xBFD4D8D7C0000000
  %2578 = fmul fast float %2577, %2539
  %2579 = fmul fast float %2550, %2505
  %2580 = fmul fast float %2499, 0x3FD4D8D7C0000000
  %2581 = fmul fast float %2495, 0x3FD4D8D7C0000000
  %2582 = fmul fast float %2581, %2538
  %2583 = fmul fast float %2507, %2540
  %2584 = fmul fast float %2503, %2541
  %2585 = fmul fast float %2509, 0x3FC17B1420000000
  %2586 = fmul fast float %2585, %2560
  %2587 = fmul fast float %2501, 0x3FD17B1420000000
  %2588 = fmul fast float %2587, %2536
  %2589 = fmul fast float %2588, %2533
  %2590 = fadd fast float %2583, %2584
  %2591 = fmul fast float %2555, %2590
  %2592 = fadd fast float %2591, %2579
  %2593 = fmul fast float %2592, 2.500000e-01
  %2594 = fadd fast float %2589, %2580
  %2595 = fmul fast float %2594, %2537
  %2596 = fadd fast float %2578, %2543
  %2597 = fadd fast float %2596, %2582
  %2598 = fadd fast float %2597, %2586
  %2599 = fadd fast float %2598, %2593
  %2600 = fadd fast float %2599, %2595
  %2601 = fmul fast float %2515, 0xBFD4D8D7C0000000
  %2602 = fmul fast float %2601, %2539
  %2603 = fmul fast float %2550, %2523
  %2604 = fmul fast float %2517, 0x3FD4D8D7C0000000
  %2605 = fmul fast float %2513, 0x3FD4D8D7C0000000
  %2606 = fmul fast float %2605, %2538
  %2607 = fmul fast float %2525, %2540
  %2608 = fmul fast float %2521, %2541
  %2609 = fmul fast float %2527, 0x3FC17B1420000000
  %2610 = fmul fast float %2609, %2560
  %2611 = fmul fast float %2519, 0x3FD17B1420000000
  %2612 = fmul fast float %2611, %2536
  %2613 = fmul fast float %2612, %2533
  %2614 = fadd fast float %2607, %2608
  %2615 = fmul fast float %2555, %2614
  %2616 = fadd fast float %2615, %2603
  %2617 = fmul fast float %2616, 2.500000e-01
  %2618 = fadd fast float %2613, %2604
  %2619 = fmul fast float %2618, %2537
  %2620 = fadd fast float %2602, %2544
  %2621 = fadd fast float %2620, %2606
  %2622 = fadd fast float %2621, %2610
  %2623 = fadd fast float %2622, %2617
  %2624 = fadd fast float %2623, %2619
  br label %2719

; <label>:2625                                    ; preds = %2415
  %2626 = fmul fast float %146, %146
  %2627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %2628 = extractvalue %dx.types.CBufRet.f32 %2627, 0
  %2629 = extractvalue %dx.types.CBufRet.f32 %2627, 1
  %2630 = extractvalue %dx.types.CBufRet.f32 %2627, 2
  %2631 = fmul fast float %2479, %146
  %2632 = fmul fast float %2631, %2630
  %2633 = fmul fast float %2630, %2630
  %2634 = fmul fast float %2633, 0x3FEE471020000000
  %2635 = fadd fast float %2634, 0xBFD42F6020000000
  %2636 = fmul fast float %2635, %2487
  %2637 = fmul fast float %2628, %2481
  %2638 = fmul fast float %2629, %2477
  %2639 = fmul fast float %2630, 0x3FF17B1420000000
  %2640 = fmul fast float %2489, %2626
  %2641 = fmul fast float %2640, %2628
  %2642 = fmul fast float %2641, %2639
  %2643 = fmul fast float %2485, %2626
  %2644 = fmul fast float %2643, %2629
  %2645 = fmul fast float %2644, %2639
  %2646 = fmul fast float %2628, %2628
  %2647 = fmul fast float %2629, %2629
  %2648 = fsub fast float %2646, %2647
  %2649 = fmul fast float %2491, 0x3FE17B1420000000
  %2650 = fmul fast float %2649, %2648
  %2651 = fmul fast float %2483, 0x3FF17B1420000000
  %2652 = fmul fast float %2651, %2629
  %2653 = fmul fast float %2652, %2628
  %2654 = fadd fast float %2650, %2653
  %2655 = fadd fast float %2654, %2636
  %2656 = fmul fast float %2655, %2626
  %2657 = fadd fast float %2638, %2637
  %2658 = fmul fast float %2657, %146
  %2659 = fsub fast float %2658, %2632
  %2660 = fmul fast float %2659, 0x3FDF454380000000
  %2661 = fsub fast float %2542, %2642
  %2662 = fsub fast float %2661, %2645
  %2663 = fadd fast float %2662, %2656
  %2664 = fadd fast float %2663, %2660
  %2665 = fmul fast float %2497, %146
  %2666 = fmul fast float %2665, %2630
  %2667 = fmul fast float %2635, %2505
  %2668 = fmul fast float %2628, %2499
  %2669 = fmul fast float %2629, %2495
  %2670 = fmul fast float %2507, %2626
  %2671 = fmul fast float %2670, %2628
  %2672 = fmul fast float %2671, %2639
  %2673 = fmul fast float %2503, %2626
  %2674 = fmul fast float %2673, %2629
  %2675 = fmul fast float %2674, %2639
  %2676 = fmul fast float %2509, 0x3FE17B1420000000
  %2677 = fmul fast float %2676, %2648
  %2678 = fmul fast float %2501, 0x3FF17B1420000000
  %2679 = fmul fast float %2678, %2629
  %2680 = fmul fast float %2679, %2628
  %2681 = fadd fast float %2677, %2680
  %2682 = fadd fast float %2681, %2667
  %2683 = fmul fast float %2682, %2626
  %2684 = fadd fast float %2669, %2668
  %2685 = fmul fast float %2684, %146
  %2686 = fsub fast float %2685, %2666
  %2687 = fmul fast float %2686, 0x3FDF454380000000
  %2688 = fsub fast float %2543, %2672
  %2689 = fsub fast float %2688, %2675
  %2690 = fadd fast float %2689, %2683
  %2691 = fadd fast float %2690, %2687
  %2692 = fmul fast float %2515, %146
  %2693 = fmul fast float %2692, %2630
  %2694 = fmul fast float %2635, %2523
  %2695 = fmul fast float %2628, %2517
  %2696 = fmul fast float %2629, %2513
  %2697 = fmul fast float %2525, %2626
  %2698 = fmul fast float %2697, %2628
  %2699 = fmul fast float %2698, %2639
  %2700 = fmul fast float %2521, %2626
  %2701 = fmul fast float %2700, %2629
  %2702 = fmul fast float %2701, %2639
  %2703 = fmul fast float %2527, 0x3FE17B1420000000
  %2704 = fmul fast float %2703, %2648
  %2705 = fmul fast float %2519, 0x3FF17B1420000000
  %2706 = fmul fast float %2705, %2629
  %2707 = fmul fast float %2706, %2628
  %2708 = fadd fast float %2704, %2707
  %2709 = fadd fast float %2708, %2694
  %2710 = fmul fast float %2709, %2626
  %2711 = fadd fast float %2696, %2695
  %2712 = fmul fast float %2711, %146
  %2713 = fsub fast float %2712, %2693
  %2714 = fmul fast float %2713, 0x3FDF454380000000
  %2715 = fsub fast float %2544, %2699
  %2716 = fsub fast float %2715, %2702
  %2717 = fadd fast float %2716, %2710
  %2718 = fadd fast float %2717, %2714
  br label %2719

; <label>:2719                                    ; preds = %2625, %2545
  %2720 = phi float [ %2576, %2545 ], [ %2664, %2625 ]
  %2721 = phi float [ %2600, %2545 ], [ %2691, %2625 ]
  %2722 = phi float [ %2624, %2545 ], [ %2718, %2625 ]
  %2723 = fmul fast float %2445, %2720
  %2724 = fmul fast float %2445, %2721
  %2725 = fmul fast float %2445, %2722
  %2726 = extractvalue %dx.types.CBufRet.f32 %2444, 0
  %2727 = fmul fast float %2723, %2726
  %2728 = fmul fast float %2724, %2726
  %2729 = fmul fast float %2725, %2726
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %173, i32 %174, i32 undef, float %2727, float %2728, float %2729, float %2727, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %2730 = add i32 %174, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %173, i32 %2730, i32 undef, float %2727, float %2728, float %2729, float %2727, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %2731 = add i32 %173, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %2731, i32 %174, i32 undef, float %2727, float %2728, float %2729, float %2727, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %2731, i32 %2730, i32 undef, float %2727, float %2728, float %2729, float %2727, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2732

; <label>:2732                                    ; preds = %2719, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

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
!33 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !16}
!34 = !{!35, !36, !37}
!35 = !{i32 0, %GfxLGBoundConsts* undef, !"", i32 0, i32 4, i32 1, i32 16, null}
!36 = !{i32 1, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!37 = !{i32 2, %DeferredEffectLightConsts_decl* undef, !"", i32 0, i32 1, i32 1, i32 240, null}
!38 = !{!39}
!39 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!40 = !{void ()* @cs_del_sh_sample_lightgrid_reflection_volumes_8_lowres, !"cs_del_sh_sample_lightgrid_reflection_volumes_8_lowres", null, !4, !41}
!41 = !{i32 0, i64 272, i32 4, !42}
!42 = !{i32 4, i32 4, i32 4}
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
!85 = distinct !{!85, !"dx.controlflow.hints", i32 2}

