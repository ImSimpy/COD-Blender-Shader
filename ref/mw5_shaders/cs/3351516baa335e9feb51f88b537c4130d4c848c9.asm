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
; shader hash: a35a49eff38d3748de5203916d602ff5
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

define void @cs_del_sh_sample_lightgrid_reflection_volumes_4_lowres() {
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
  %36 = add i32 %35, 6
  %37 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %36, i32 0)  ; BufferLoad(srv,index,wot)
  %38 = extractvalue %dx.types.ResRet.i32 %37, 0
  %39 = icmp ult i32 %29, %38
  br i1 %39, label %40, label %2122, !dx.controlflow.hints !43

; <label>:40                                      ; preds = %0
  %41 = add i32 %35, 9
  %42 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 %41)  ; CBufferLoadLegacy(handle,regIndex)
  %43 = extractvalue %dx.types.CBufRet.i32 %42, 2
  %44 = call i32 @dx.op.threadId.i32(i32 93, i32 2)  ; ThreadId(component)
  %45 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %46 = shl i32 %45, 1
  %47 = shl i32 %44, 1
  %48 = add i32 %43, %29
  %49 = shl i32 %48, 5
  %50 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %49, i32 undef)  ; BufferLoad(srv,index,wot)
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
  br i1 %62, label %102, label %63, !dx.controlflow.hints !44

; <label>:63                                      ; preds = %40
  %64 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %65 = extractvalue %dx.types.CBufRet.f32 %64, 2
  %66 = extractvalue %dx.types.CBufRet.f32 %64, 3
  %67 = fmul fast float %65, %58
  %68 = fmul fast float %66, %59
  %69 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %70 = extractvalue %dx.types.CBufRet.f32 %69, 0
  %71 = extractvalue %dx.types.CBufRet.f32 %69, 1
  %72 = fadd fast float %67, %70
  %73 = fadd fast float %68, %71
  %74 = call float @dx.op.unary.f32(i32 7, float %72)  ; Saturate(value)
  %75 = call float @dx.op.unary.f32(i32 7, float %73)  ; Saturate(value)
  %76 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %25, float %74, float %75, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %77 = extractvalue %dx.types.ResRet.f32 %76, 0
  %78 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
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
  %91 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
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
  %105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %104, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
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
  %203 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %204 = extractvalue %dx.types.CBufRet.i32 %203, 0
  %205 = icmp eq i32 %204, 1
  br i1 %205, label %206, label %241, !dx.controlflow.hints !45

; <label>:206                                     ; preds = %102
  %207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %208 = extractvalue %dx.types.CBufRet.f32 %207, 0
  %209 = extractvalue %dx.types.CBufRet.f32 %207, 1
  %210 = fsub fast float %192, %208
  %211 = fsub fast float %197, %209
  %212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %213 = extractvalue %dx.types.CBufRet.f32 %212, 0
  %214 = extractvalue %dx.types.CBufRet.f32 %212, 1
  %215 = fmul fast float %210, %213
  %216 = fmul fast float %211, %214
  %217 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %25, float %215, float %216, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %218 = extractvalue %dx.types.ResRet.f32 %217, 0
  %219 = fcmp fast ogt float %218, 0.000000e+00
  %220 = extractvalue %dx.types.CBufRet.i32 %203, 3
  %221 = icmp ne i32 %220, 0
  %222 = and i1 %219, %221
  br i1 %222, label %223, label %241, !dx.controlflow.hints !46

; <label>:223                                     ; preds = %206
  %224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
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
  br i1 %234, label %241, label %235, !dx.controlflow.hints !47

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
  br i1 %243, label %244, label %1145, !dx.controlflow.hints !48

; <label>:244                                     ; preds = %241
  %245 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %246 = extractvalue %dx.types.CBufRet.i32 %245, 2
  %247 = extractvalue %dx.types.CBufRet.i32 %245, 1
  %248 = extractvalue %dx.types.CBufRet.i32 %245, 0
  %249 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 0
  store float 0.000000e+00, float* %249, align 4
  %250 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 1
  store float 0.000000e+00, float* %250, align 4
  %251 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 2
  store float 0.000000e+00, float* %251, align 4
  %252 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 3
  store float 0.000000e+00, float* %252, align 4
  %253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %254 = extractvalue %dx.types.ResRet.i32 %253, 0
  %255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %256 = extractvalue %dx.types.ResRet.i32 %255, 0
  %257 = extractvalue %dx.types.ResRet.i32 %255, 1
  %258 = extractvalue %dx.types.ResRet.i32 %255, 2
  %259 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %260 = extractvalue %dx.types.ResRet.f32 %259, 0
  %261 = extractvalue %dx.types.ResRet.f32 %259, 1
  %262 = extractvalue %dx.types.ResRet.f32 %259, 2
  %263 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %264 = extractvalue %dx.types.ResRet.f32 %263, 0
  %265 = extractvalue %dx.types.ResRet.f32 %263, 1
  %266 = extractvalue %dx.types.ResRet.f32 %263, 2
  %267 = fsub fast float %192, %260
  %268 = fsub fast float %197, %261
  %269 = fsub fast float %202, %262
  %270 = fptoui float %267 to i32
  %271 = fptoui float %268 to i32
  %272 = fptoui float %269 to i32
  %273 = fcmp fast olt float %192, %260
  %274 = fcmp fast olt float %197, %261
  %275 = fcmp fast olt float %202, %262
  %276 = or i1 %273, %274
  %277 = or i1 %275, %276
  %278 = fcmp fast oge float %192, %264
  %279 = fcmp fast oge float %197, %265
  %280 = fcmp fast oge float %202, %266
  %281 = or i1 %278, %279
  %282 = or i1 %280, %281
  %283 = or i1 %277, %282
  %284 = and i32 %256, 31
  %285 = lshr i32 %270, %284
  %286 = lshr i32 %271, %284
  %287 = lshr i32 %272, %284
  %288 = mul i32 %286, %254
  %289 = add i32 %288, %285
  %290 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %291 = extractvalue %dx.types.CBufRet.i32 %290, 0
  %292 = icmp ult i32 %289, %291
  br i1 %292, label %293, label %309, !dx.controlflow.hints !49

; <label>:293                                     ; preds = %244
  %294 = mul i32 %289, 12
  %295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %294, i32 undef)  ; BufferLoad(srv,index,wot)
  %296 = extractvalue %dx.types.ResRet.i32 %295, 0
  %297 = add i32 %294, 4
  %298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %299 = extractvalue %dx.types.ResRet.i32 %298, 0
  %300 = add i32 %294, 8
  %301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %300, i32 undef)  ; BufferLoad(srv,index,wot)
  %302 = extractvalue %dx.types.ResRet.i32 %301, 0
  %303 = icmp ult i32 %287, %299
  %304 = icmp ugt i32 %287, %302
  %305 = or i1 %303, %304
  %306 = add i32 %296, %287
  %307 = sub i32 %306, %299
  %308 = select i1 %305, i32 -2147483648, i32 %307
  br label %309

; <label>:309                                     ; preds = %293, %244
  %310 = phi i32 [ %308, %293 ], [ -2147483648, %244 ]
  %311 = select i1 %283, i32 -2147483648, i32 %310
  %312 = icmp sgt i32 %311, -1
  %313 = and i32 %257, 31
  %314 = lshr i32 %270, %313
  %315 = lshr i32 %271, %313
  %316 = lshr i32 %272, %313
  %317 = and i32 %314, 3
  %318 = and i32 %316, 3
  %319 = shl nuw nsw i32 %318, 4
  %320 = shl i32 %315, 2
  %321 = and i32 %320, 12
  %322 = and i32 %319, 16
  %323 = or i32 %321, %317
  %324 = or i32 %323, %322
  %325 = shl i32 1, %324
  %326 = extractvalue %dx.types.CBufRet.i32 %290, 1
  %327 = icmp ult i32 %311, %326
  br i1 %327, label %328, label %346, !dx.controlflow.hints !50

; <label>:328                                     ; preds = %309
  %329 = lshr i32 %318, 1
  %330 = shl i32 %311, 4
  %331 = shl nuw nsw i32 %329, 2
  %332 = or i32 %330, %331
  %333 = or i32 %332, 8
  %334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %333, i32 undef)  ; BufferLoad(srv,index,wot)
  %335 = extractvalue %dx.types.ResRet.i32 %334, 0
  %336 = and i32 %335, %325
  %337 = icmp eq i32 %336, 0
  %338 = add i32 %325, -1
  %339 = and i32 %335, %338
  %340 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %339)  ; Countbits(value)
  %341 = or i32 %330, %331
  %342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %341, i32 undef)  ; BufferLoad(srv,index,wot)
  %343 = extractvalue %dx.types.ResRet.i32 %342, 0
  %344 = add i32 %343, %340
  %345 = select i1 %337, i32 -2147483648, i32 %344
  br label %346

; <label>:346                                     ; preds = %328, %309
  %347 = phi i32 [ %345, %328 ], [ -2147483648, %309 ]
  %348 = select i1 %312, i32 %347, i32 %311
  %349 = icmp sgt i32 %348, -1
  %350 = and i32 %258, 31
  %351 = lshr i32 %270, %350
  %352 = lshr i32 %271, %350
  %353 = lshr i32 %272, %350
  %354 = and i32 %351, 3
  %355 = and i32 %353, 3
  %356 = shl nuw nsw i32 %355, 4
  %357 = shl i32 %352, 2
  %358 = and i32 %357, 12
  %359 = and i32 %356, 16
  %360 = or i32 %358, %354
  %361 = or i32 %360, %359
  %362 = shl i32 1, %361
  %363 = icmp ult i32 %348, %326
  br i1 %363, label %364, label %382, !dx.controlflow.hints !50

; <label>:364                                     ; preds = %346
  %365 = lshr i32 %355, 1
  %366 = shl i32 %348, 4
  %367 = shl nuw nsw i32 %365, 2
  %368 = or i32 %366, %367
  %369 = or i32 %368, 8
  %370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %369, i32 undef)  ; BufferLoad(srv,index,wot)
  %371 = extractvalue %dx.types.ResRet.i32 %370, 0
  %372 = and i32 %371, %362
  %373 = icmp eq i32 %372, 0
  %374 = add i32 %362, -1
  %375 = and i32 %371, %374
  %376 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %375)  ; Countbits(value)
  %377 = or i32 %366, %367
  %378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %377, i32 undef)  ; BufferLoad(srv,index,wot)
  %379 = extractvalue %dx.types.ResRet.i32 %378, 0
  %380 = add i32 %379, %376
  %381 = select i1 %373, i32 -2147483648, i32 %380
  br label %382

; <label>:382                                     ; preds = %364, %346
  %383 = phi i32 [ %381, %364 ], [ -2147483648, %346 ]
  %384 = select i1 %349, i32 %383, i32 %348
  br i1 %283, label %399, label %385, !dx.controlflow.hints !51

; <label>:385                                     ; preds = %382
  %386 = icmp eq i32 %384, -2147483648
  %387 = icmp eq i32 %348, -2147483648
  %388 = select i1 %387, i32 %311, i32 %348
  %389 = select i1 %386, i32 %388, i32 %384
  %390 = icmp sgt i32 %389, -1
  %391 = icmp ne i32 %246, -1
  %392 = and i1 %391, %390
  %393 = select i1 %392, i32 %246, i32 0
  %394 = add i32 %389, %247
  %395 = add i32 %394, %393
  %396 = shl i32 %395, 2
  %397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %396, i32 undef)  ; BufferLoad(srv,index,wot)
  %398 = extractvalue %dx.types.ResRet.i32 %397, 0
  br label %399

; <label>:399                                     ; preds = %385, %382
  %400 = phi i32 [ %398, %385 ], [ -1, %382 ]
  %401 = icmp eq i32 %400, -1
  %402 = select i1 %401, i32 %248, i32 %400
  %403 = icmp eq i32 %402, -1
  br i1 %403, label %552, label %404

; <label>:404                                     ; preds = %399
  br label %405

; <label>:405                                     ; preds = %543, %404
  %406 = phi i32 [ %544, %543 ], [ 0, %404 ]
  %407 = phi i32 [ %408, %543 ], [ -1, %404 ]
  %408 = phi i32 [ %539, %543 ], [ %402, %404 ]
  %409 = phi float [ %515, %543 ], [ 0.000000e+00, %404 ]
  %410 = phi float [ %516, %543 ], [ 0.000000e+00, %404 ]
  %411 = phi float [ %517, %543 ], [ 0.000000e+00, %404 ]
  %412 = phi float [ %520, %543 ], [ 0.000000e+00, %404 ]
  %413 = icmp ugt i32 %406, 50
  br i1 %413, label %546, label %414, !dx.controlflow.hints !52

; <label>:414                                     ; preds = %405
  %415 = shl i32 %408, 4
  %416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %415, i32 undef)  ; BufferLoad(srv,index,wot)
  %417 = extractvalue %dx.types.ResRet.i32 %416, 0
  %418 = extractvalue %dx.types.ResRet.i32 %416, 1
  %419 = extractvalue %dx.types.ResRet.i32 %416, 2
  %420 = extractvalue %dx.types.ResRet.i32 %416, 3
  %421 = and i32 %417, 2147483647
  %422 = mul nsw i32 %421, 12
  %423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %422, i32 undef)  ; BufferLoad(srv,index,wot)
  %424 = extractvalue %dx.types.ResRet.i32 %423, 0
  %425 = extractvalue %dx.types.ResRet.i32 %423, 1
  %426 = extractvalue %dx.types.ResRet.i32 %423, 2
  %427 = and i32 %418, 2147483647
  %428 = mul nsw i32 %427, 12
  %429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %430 = extractvalue %dx.types.ResRet.i32 %429, 0
  %431 = extractvalue %dx.types.ResRet.i32 %429, 1
  %432 = extractvalue %dx.types.ResRet.i32 %429, 2
  %433 = and i32 %419, 2147483647
  %434 = mul nsw i32 %433, 12
  %435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %434, i32 undef)  ; BufferLoad(srv,index,wot)
  %436 = extractvalue %dx.types.ResRet.i32 %435, 0
  %437 = extractvalue %dx.types.ResRet.i32 %435, 1
  %438 = extractvalue %dx.types.ResRet.i32 %435, 2
  %439 = and i32 %420, 2147483647
  %440 = mul nsw i32 %439, 12
  %441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %440, i32 undef)  ; BufferLoad(srv,index,wot)
  %442 = extractvalue %dx.types.ResRet.i32 %441, 0
  %443 = extractvalue %dx.types.ResRet.i32 %441, 1
  %444 = extractvalue %dx.types.ResRet.i32 %441, 2
  %445 = bitcast i32 %424 to float
  %446 = bitcast i32 %425 to float
  %447 = bitcast i32 %426 to float
  %448 = bitcast i32 %442 to float
  %449 = bitcast i32 %443 to float
  %450 = bitcast i32 %444 to float
  %451 = fsub fast float %445, %448
  %452 = fsub fast float %446, %449
  %453 = fsub fast float %447, %450
  %454 = bitcast i32 %430 to float
  %455 = bitcast i32 %431 to float
  %456 = bitcast i32 %432 to float
  %457 = fsub fast float %454, %448
  %458 = fsub fast float %455, %449
  %459 = fsub fast float %456, %450
  %460 = bitcast i32 %436 to float
  %461 = bitcast i32 %437 to float
  %462 = bitcast i32 %438 to float
  %463 = fsub fast float %460, %448
  %464 = fsub fast float %461, %449
  %465 = fsub fast float %462, %450
  %466 = fsub fast float %192, %448
  %467 = fsub fast float %197, %449
  %468 = fsub fast float %202, %450
  %469 = fmul fast float %458, %465
  %470 = fmul fast float %464, %459
  %471 = fsub fast float %469, %470
  %472 = fmul fast float %471, %451
  %473 = fmul fast float %457, %465
  %474 = fmul fast float %459, %463
  %475 = fsub fast float %473, %474
  %476 = fmul fast float %475, %452
  %477 = fsub fast float %472, %476
  %478 = fmul fast float %457, %464
  %479 = fmul fast float %458, %463
  %480 = fsub fast float %478, %479
  %481 = fmul fast float %480, %453
  %482 = fadd fast float %477, %481
  %483 = fdiv fast float 1.000000e+00, %482
  %484 = fmul fast float %471, %483
  %485 = fmul fast float %483, %475
  %486 = fsub fast float -0.000000e+00, %485
  %487 = fmul fast float %480, %483
  %488 = fmul fast float %452, %465
  %489 = fmul fast float %453, %464
  %490 = fsub fast float %488, %489
  %491 = fmul fast float %483, %490
  %492 = fsub fast float -0.000000e+00, %491
  %493 = fmul fast float %451, %465
  %494 = fmul fast float %463, %453
  %495 = fsub fast float %493, %494
  %496 = fmul fast float %495, %483
  %497 = fmul fast float %451, %464
  %498 = fmul fast float %452, %463
  %499 = fsub fast float %497, %498
  %500 = fmul fast float %483, %499
  %501 = fsub fast float -0.000000e+00, %500
  %502 = fmul fast float %452, %459
  %503 = fmul fast float %453, %458
  %504 = fsub fast float %502, %503
  %505 = fmul fast float %504, %483
  %506 = fmul fast float %451, %459
  %507 = fmul fast float %453, %457
  %508 = fsub fast float %506, %507
  %509 = fmul fast float %483, %508
  %510 = fsub fast float -0.000000e+00, %509
  %511 = fmul fast float %451, %458
  %512 = fmul fast float %452, %457
  %513 = fsub fast float %511, %512
  %514 = fmul fast float %513, %483
  %515 = call float @dx.op.dot3.f32(i32 55, float %484, float %486, float %487, float %466, float %467, float %468)  ; Dot3(ax,ay,az,bx,by,bz)
  %516 = call float @dx.op.dot3.f32(i32 55, float %492, float %496, float %501, float %466, float %467, float %468)  ; Dot3(ax,ay,az,bx,by,bz)
  %517 = call float @dx.op.dot3.f32(i32 55, float %505, float %510, float %514, float %466, float %467, float %468)  ; Dot3(ax,ay,az,bx,by,bz)
  %518 = fsub fast float 1.000000e+00, %515
  %519 = fsub fast float %518, %516
  %520 = fsub fast float %519, %517
  %521 = call float @dx.op.binary.f32(i32 36, float %515, float %516)  ; FMin(a,b)
  %522 = call float @dx.op.binary.f32(i32 36, float %521, float %517)  ; FMin(a,b)
  %523 = call float @dx.op.binary.f32(i32 36, float %522, float %520)  ; FMin(a,b)
  %524 = call float @dx.op.binary.f32(i32 35, float %515, float %516)  ; FMax(a,b)
  %525 = call float @dx.op.binary.f32(i32 35, float %524, float %517)  ; FMax(a,b)
  %526 = call float @dx.op.binary.f32(i32 35, float %525, float %520)  ; FMax(a,b)
  %527 = fcmp fast oge float %523, 0xBF50624DE0000000
  %528 = fcmp fast olt float %526, 0x3FF00068E0000000
  %529 = and i1 %527, %528
  br i1 %529, label %546, label %530, !dx.controlflow.hints !53

; <label>:530                                     ; preds = %414
  %531 = fcmp fast oeq float %523, %515
  %532 = fcmp fast oeq float %523, %516
  %533 = fcmp fast oeq float %523, %517
  %534 = select i1 %533, i32 8, i32 12
  %535 = select i1 %532, i32 4, i32 %534
  %536 = select i1 %531, i32 0, i32 %535
  %537 = or i32 %536, %415
  %538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %539 = extractvalue %dx.types.ResRet.i32 %538, 0
  %540 = icmp ne i32 %407, -1
  %541 = icmp eq i32 %539, %407
  %542 = and i1 %540, %541
  br i1 %542, label %546, label %543, !dx.controlflow.hints !54

; <label>:543                                     ; preds = %530
  %544 = add nuw nsw i32 %406, 1
  %545 = icmp eq i32 %539, -1
  br i1 %545, label %546, label %405, !llvm.loop !55

; <label>:546                                     ; preds = %543, %530, %414, %405
  %547 = phi i32 [ %408, %530 ], [ %408, %414 ], [ -1, %543 ], [ -1, %405 ]
  %548 = phi float [ %515, %530 ], [ %515, %414 ], [ %515, %543 ], [ %409, %405 ]
  %549 = phi float [ %516, %530 ], [ %516, %414 ], [ %516, %543 ], [ %410, %405 ]
  %550 = phi float [ %517, %530 ], [ %517, %414 ], [ %517, %543 ], [ %411, %405 ]
  %551 = phi float [ %520, %530 ], [ %520, %414 ], [ %520, %543 ], [ %412, %405 ]
  br label %552

; <label>:552                                     ; preds = %546, %399
  %553 = phi i32 [ -1, %399 ], [ %547, %546 ]
  %554 = phi float [ 0.000000e+00, %399 ], [ %548, %546 ]
  %555 = phi float [ 0.000000e+00, %399 ], [ %549, %546 ]
  %556 = phi float [ 0.000000e+00, %399 ], [ %550, %546 ]
  %557 = phi float [ 0.000000e+00, %399 ], [ %551, %546 ]
  %558 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %554)  ; FMax(a,b)
  %559 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %555)  ; FMax(a,b)
  %560 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %556)  ; FMax(a,b)
  %561 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %557)  ; FMax(a,b)
  %562 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %558)  ; FMin(a,b)
  %563 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %559)  ; FMin(a,b)
  %564 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %560)  ; FMin(a,b)
  %565 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %561)  ; FMin(a,b)
  store float %562, float* %249, align 4
  store float %563, float* %250, align 4
  store float %564, float* %251, align 4
  store float %565, float* %252, align 4
  %566 = icmp eq i32 %553, -1
  br i1 %566, label %567, label %602, !dx.controlflow.hints !57

; <label>:567                                     ; preds = %552
  %568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %569 = extractvalue %dx.types.ResRet.i32 %568, 1
  %570 = extractvalue %dx.types.ResRet.i32 %568, 2
  %571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %572 = extractvalue %dx.types.ResRet.i32 %571, 0
  %573 = extractvalue %dx.types.ResRet.i32 %571, 1
  %574 = extractvalue %dx.types.ResRet.i32 %571, 2
  %575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %576 = extractvalue %dx.types.ResRet.i32 %575, 0
  %577 = extractvalue %dx.types.ResRet.i32 %575, 1
  %578 = and i32 %576, 65535
  %579 = call float @dx.op.legacyF16ToF32(i32 131, i32 %578)  ; LegacyF16ToF32(value)
  %580 = lshr i32 %576, 16
  %581 = call float @dx.op.legacyF16ToF32(i32 131, i32 %580)  ; LegacyF16ToF32(value)
  %582 = and i32 %577, 65535
  %583 = call float @dx.op.legacyF16ToF32(i32 131, i32 %582)  ; LegacyF16ToF32(value)
  %584 = lshr i32 %577, 16
  %585 = call float @dx.op.legacyF16ToF32(i32 131, i32 %584)  ; LegacyF16ToF32(value)
  %586 = lshr i32 %572, 16
  %587 = call float @dx.op.legacyF16ToF32(i32 131, i32 %586)  ; LegacyF16ToF32(value)
  %588 = and i32 %573, 65535
  %589 = call float @dx.op.legacyF16ToF32(i32 131, i32 %588)  ; LegacyF16ToF32(value)
  %590 = lshr i32 %573, 16
  %591 = call float @dx.op.legacyF16ToF32(i32 131, i32 %590)  ; LegacyF16ToF32(value)
  %592 = and i32 %574, 65535
  %593 = call float @dx.op.legacyF16ToF32(i32 131, i32 %592)  ; LegacyF16ToF32(value)
  %594 = and i32 %569, 65535
  %595 = call float @dx.op.legacyF16ToF32(i32 131, i32 %594)  ; LegacyF16ToF32(value)
  %596 = lshr i32 %569, 16
  %597 = call float @dx.op.legacyF16ToF32(i32 131, i32 %596)  ; LegacyF16ToF32(value)
  %598 = and i32 %570, 65535
  %599 = call float @dx.op.legacyF16ToF32(i32 131, i32 %598)  ; LegacyF16ToF32(value)
  %600 = lshr i32 %570, 16
  %601 = call float @dx.op.legacyF16ToF32(i32 131, i32 %600)  ; LegacyF16ToF32(value)
  br label %1145

; <label>:602                                     ; preds = %552
  %603 = shl nsw i32 %553, 4
  %604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %603, i32 undef)  ; BufferLoad(srv,index,wot)
  %605 = extractvalue %dx.types.ResRet.i32 %604, 0
  %606 = extractvalue %dx.types.ResRet.i32 %604, 1
  %607 = extractvalue %dx.types.ResRet.i32 %604, 2
  %608 = extractvalue %dx.types.ResRet.i32 %604, 3
  %609 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i32 0, i32 0
  store i32 %605, i32* %609, align 4
  %610 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i32 0, i32 1
  store i32 %606, i32* %610, align 4
  %611 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i32 0, i32 2
  store i32 %607, i32* %611, align 4
  %612 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i32 0, i32 3
  store i32 %608, i32* %612, align 4
  %613 = getelementptr inbounds [4 x float], [4 x float]* %33, i32 0, i32 0
  store float 0.000000e+00, float* %613, align 4
  %614 = getelementptr inbounds [4 x float], [4 x float]* %33, i32 0, i32 1
  store float 0.000000e+00, float* %614, align 4
  %615 = getelementptr inbounds [4 x float], [4 x float]* %33, i32 0, i32 2
  store float 0.000000e+00, float* %615, align 4
  %616 = getelementptr inbounds [4 x float], [4 x float]* %33, i32 0, i32 3
  store float 0.000000e+00, float* %616, align 4
  %617 = icmp slt i32 %605, 0
  br i1 %617, label %618, label %708, !dx.controlflow.hints !58

; <label>:618                                     ; preds = %602
  %619 = fsub fast float 1.000000e+00, %562
  %620 = fdiv fast float 1.000000e+00, %619
  %621 = shl nsw i32 %553, 6
  %622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %621, i32 undef)  ; BufferLoad(srv,index,wot)
  %623 = extractvalue %dx.types.ResRet.i32 %622, 0
  %624 = extractvalue %dx.types.ResRet.i32 %622, 1
  %625 = extractvalue %dx.types.ResRet.i32 %622, 2
  %626 = extractvalue %dx.types.ResRet.i32 %622, 3
  %627 = fmul fast float %620, %565
  %628 = fmul fast float %620, %563
  %629 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 0
  store i32 %623, i32* %629, align 4
  %630 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 1
  store i32 %624, i32* %630, align 4
  %631 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 2
  store i32 %625, i32* %631, align 4
  %632 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 3
  store i32 %626, i32* %632, align 4
  %633 = fmul fast float %628, 4.000000e+00
  %634 = call float @dx.op.unary.f32(i32 27, float %633)  ; Round_ni(value)
  %635 = fmul fast float %627, 4.000000e+00
  %636 = call float @dx.op.unary.f32(i32 27, float %635)  ; Round_ni(value)
  %637 = fsub fast float 1.100000e+01, %634
  %638 = fmul fast float %634, 5.000000e-01
  %639 = fmul fast float %638, %637
  %640 = fadd fast float %636, 5.000000e-01
  %641 = fadd fast float %640, %639
  %642 = fptosi float %641 to i32
  %643 = fptosi float %634 to i32
  %644 = sub nsw i32 5, %643
  %645 = fmul fast float %636, 2.500000e-01
  %646 = fmul fast float %634, 2.500000e-01
  %647 = add nsw i32 %642, 1
  %648 = add nsw i32 %642, %644
  %649 = fsub fast float %627, %645
  %650 = fmul fast float %649, 4.000000e+00
  %651 = fsub fast float %628, %646
  %652 = fmul fast float %651, 4.000000e+00
  %653 = fadd fast float %649, %651
  %654 = fmul fast float %653, 4.000000e+00
  %655 = fcmp fast ogt float %654, 1.000000e+00
  br i1 %655, label %656, label %662, !dx.controlflow.hints !59

; <label>:656                                     ; preds = %618
  %657 = add nsw i32 %648, 1
  %658 = fadd fast float %652, -1.000000e+00
  %659 = fsub fast float -0.000000e+00, %658
  %660 = fadd fast float %650, -1.000000e+00
  %661 = fsub fast float -0.000000e+00, %660
  br label %662

; <label>:662                                     ; preds = %656, %618
  %663 = phi i32 [ %657, %656 ], [ %642, %618 ]
  %664 = phi i32 [ %647, %656 ], [ %648, %618 ]
  %665 = phi i32 [ %648, %656 ], [ %647, %618 ]
  %666 = phi float [ %661, %656 ], [ %652, %618 ]
  %667 = phi float [ %659, %656 ], [ %650, %618 ]
  %668 = fsub fast float 1.000000e+00, %666
  %669 = fsub fast float %668, %667
  %670 = lshr i32 %665, 2
  %671 = getelementptr [4 x i32], [4 x i32]* %30, i32 0, i32 %670
  %672 = load i32, i32* %671, align 4, !tbaa !60, !noalias !64
  %673 = shl i32 %665, 3
  %674 = and i32 %673, 24
  %675 = lshr i32 %672, %674
  %676 = and i32 %675, 255
  %677 = sitofp i32 %676 to float
  %678 = fmul fast float %667, 0x3F70101020000000
  %679 = fmul fast float %678, %677
  %680 = lshr i32 %664, 2
  %681 = getelementptr [4 x i32], [4 x i32]* %30, i32 0, i32 %680
  %682 = load i32, i32* %681, align 4, !tbaa !60, !noalias !64
  %683 = shl i32 %664, 3
  %684 = and i32 %683, 24
  %685 = lshr i32 %682, %684
  %686 = and i32 %685, 255
  %687 = sitofp i32 %686 to float
  %688 = fmul fast float %666, 0x3F70101020000000
  %689 = fmul fast float %688, %687
  %690 = lshr i32 %663, 2
  %691 = getelementptr [4 x i32], [4 x i32]* %30, i32 0, i32 %690
  %692 = load i32, i32* %691, align 4, !tbaa !60, !noalias !64
  %693 = shl i32 %663, 3
  %694 = and i32 %693, 24
  %695 = lshr i32 %692, %694
  %696 = and i32 %695, 255
  %697 = sitofp i32 %696 to float
  %698 = fmul fast float %669, 0x3F70101020000000
  %699 = fmul fast float %698, %697
  %700 = fsub fast float 1.000000e+00, %679
  %701 = fsub fast float %700, %689
  %702 = fsub fast float %701, %699
  %703 = fmul fast float %562, 2.000000e+01
  %704 = fadd fast float %703, 1.000000e+00
  %705 = fmul fast float %702, 2.000000e+01
  %706 = fsub fast float %704, %705
  %707 = call float @dx.op.unary.f32(i32 7, float %706)  ; Saturate(value)
  br label %708

; <label>:708                                     ; preds = %662, %602
  %709 = phi float [ %707, %662 ], [ 1.000000e+00, %602 ]
  store float %709, float* %613, align 4, !tbaa !72, !noalias !64
  %710 = icmp slt i32 %606, 0
  br i1 %710, label %711, label %802, !dx.controlflow.hints !58

; <label>:711                                     ; preds = %708
  %712 = fsub fast float 1.000000e+00, %563
  %713 = fdiv fast float 1.000000e+00, %712
  %714 = shl i32 %553, 6
  %715 = or i32 %714, 16
  %716 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %715, i32 undef)  ; BufferLoad(srv,index,wot)
  %717 = extractvalue %dx.types.ResRet.i32 %716, 0
  %718 = extractvalue %dx.types.ResRet.i32 %716, 1
  %719 = extractvalue %dx.types.ResRet.i32 %716, 2
  %720 = extractvalue %dx.types.ResRet.i32 %716, 3
  %721 = fmul fast float %713, %562
  %722 = fmul fast float %713, %565
  %723 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 0
  store i32 %717, i32* %723, align 4
  %724 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 1
  store i32 %718, i32* %724, align 4
  %725 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 2
  store i32 %719, i32* %725, align 4
  %726 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 3
  store i32 %720, i32* %726, align 4
  %727 = fmul fast float %722, 4.000000e+00
  %728 = call float @dx.op.unary.f32(i32 27, float %727)  ; Round_ni(value)
  %729 = fmul fast float %721, 4.000000e+00
  %730 = call float @dx.op.unary.f32(i32 27, float %729)  ; Round_ni(value)
  %731 = fsub fast float 1.100000e+01, %728
  %732 = fmul fast float %728, 5.000000e-01
  %733 = fmul fast float %732, %731
  %734 = fadd fast float %730, 5.000000e-01
  %735 = fadd fast float %734, %733
  %736 = fptosi float %735 to i32
  %737 = fptosi float %728 to i32
  %738 = sub nsw i32 5, %737
  %739 = fmul fast float %730, 2.500000e-01
  %740 = fmul fast float %728, 2.500000e-01
  %741 = add nsw i32 %736, 1
  %742 = add nsw i32 %736, %738
  %743 = fsub fast float %721, %739
  %744 = fmul fast float %743, 4.000000e+00
  %745 = fsub fast float %722, %740
  %746 = fmul fast float %745, 4.000000e+00
  %747 = fadd fast float %743, %745
  %748 = fmul fast float %747, 4.000000e+00
  %749 = fcmp fast ogt float %748, 1.000000e+00
  br i1 %749, label %750, label %756, !dx.controlflow.hints !59

; <label>:750                                     ; preds = %711
  %751 = add nsw i32 %742, 1
  %752 = fadd fast float %746, -1.000000e+00
  %753 = fsub fast float -0.000000e+00, %752
  %754 = fadd fast float %744, -1.000000e+00
  %755 = fsub fast float -0.000000e+00, %754
  br label %756

; <label>:756                                     ; preds = %750, %711
  %757 = phi i32 [ %751, %750 ], [ %736, %711 ]
  %758 = phi i32 [ %741, %750 ], [ %742, %711 ]
  %759 = phi i32 [ %742, %750 ], [ %741, %711 ]
  %760 = phi float [ %755, %750 ], [ %746, %711 ]
  %761 = phi float [ %753, %750 ], [ %744, %711 ]
  %762 = fsub fast float 1.000000e+00, %760
  %763 = fsub fast float %762, %761
  %764 = lshr i32 %759, 2
  %765 = getelementptr [4 x i32], [4 x i32]* %30, i32 0, i32 %764
  %766 = load i32, i32* %765, align 4, !tbaa !60, !noalias !64
  %767 = shl i32 %759, 3
  %768 = and i32 %767, 24
  %769 = lshr i32 %766, %768
  %770 = and i32 %769, 255
  %771 = sitofp i32 %770 to float
  %772 = fmul fast float %761, 0x3F70101020000000
  %773 = fmul fast float %772, %771
  %774 = lshr i32 %758, 2
  %775 = getelementptr [4 x i32], [4 x i32]* %30, i32 0, i32 %774
  %776 = load i32, i32* %775, align 4, !tbaa !60, !noalias !64
  %777 = shl i32 %758, 3
  %778 = and i32 %777, 24
  %779 = lshr i32 %776, %778
  %780 = and i32 %779, 255
  %781 = sitofp i32 %780 to float
  %782 = fmul fast float %760, 0x3F70101020000000
  %783 = fmul fast float %782, %781
  %784 = lshr i32 %757, 2
  %785 = getelementptr [4 x i32], [4 x i32]* %30, i32 0, i32 %784
  %786 = load i32, i32* %785, align 4, !tbaa !60, !noalias !64
  %787 = shl i32 %757, 3
  %788 = and i32 %787, 24
  %789 = lshr i32 %786, %788
  %790 = and i32 %789, 255
  %791 = sitofp i32 %790 to float
  %792 = fmul fast float %763, 0x3F70101020000000
  %793 = fmul fast float %792, %791
  %794 = fsub fast float 1.000000e+00, %773
  %795 = fsub fast float %794, %783
  %796 = fsub fast float %795, %793
  %797 = fmul fast float %563, 2.000000e+01
  %798 = fadd fast float %797, 1.000000e+00
  %799 = fmul fast float %796, 2.000000e+01
  %800 = fsub fast float %798, %799
  %801 = call float @dx.op.unary.f32(i32 7, float %800)  ; Saturate(value)
  br label %802

; <label>:802                                     ; preds = %756, %708
  %803 = phi float [ %801, %756 ], [ 1.000000e+00, %708 ]
  store float %803, float* %614, align 4, !tbaa !72, !noalias !64
  %804 = fadd fast float %803, %709
  %805 = icmp slt i32 %607, 0
  br i1 %805, label %806, label %897, !dx.controlflow.hints !58

; <label>:806                                     ; preds = %802
  %807 = fsub fast float 1.000000e+00, %564
  %808 = fdiv fast float 1.000000e+00, %807
  %809 = shl i32 %553, 6
  %810 = or i32 %809, 32
  %811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %810, i32 undef)  ; BufferLoad(srv,index,wot)
  %812 = extractvalue %dx.types.ResRet.i32 %811, 0
  %813 = extractvalue %dx.types.ResRet.i32 %811, 1
  %814 = extractvalue %dx.types.ResRet.i32 %811, 2
  %815 = extractvalue %dx.types.ResRet.i32 %811, 3
  %816 = fmul fast float %808, %562
  %817 = fmul fast float %808, %563
  %818 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 0
  store i32 %812, i32* %818, align 4
  %819 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 1
  store i32 %813, i32* %819, align 4
  %820 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 2
  store i32 %814, i32* %820, align 4
  %821 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 3
  store i32 %815, i32* %821, align 4
  %822 = fmul fast float %817, 4.000000e+00
  %823 = call float @dx.op.unary.f32(i32 27, float %822)  ; Round_ni(value)
  %824 = fmul fast float %816, 4.000000e+00
  %825 = call float @dx.op.unary.f32(i32 27, float %824)  ; Round_ni(value)
  %826 = fsub fast float 1.100000e+01, %823
  %827 = fmul fast float %823, 5.000000e-01
  %828 = fmul fast float %827, %826
  %829 = fadd fast float %825, 5.000000e-01
  %830 = fadd fast float %829, %828
  %831 = fptosi float %830 to i32
  %832 = fptosi float %823 to i32
  %833 = sub nsw i32 5, %832
  %834 = fmul fast float %825, 2.500000e-01
  %835 = fmul fast float %823, 2.500000e-01
  %836 = add nsw i32 %831, 1
  %837 = add nsw i32 %831, %833
  %838 = fsub fast float %816, %834
  %839 = fmul fast float %838, 4.000000e+00
  %840 = fsub fast float %817, %835
  %841 = fmul fast float %840, 4.000000e+00
  %842 = fadd fast float %838, %840
  %843 = fmul fast float %842, 4.000000e+00
  %844 = fcmp fast ogt float %843, 1.000000e+00
  br i1 %844, label %845, label %851, !dx.controlflow.hints !59

; <label>:845                                     ; preds = %806
  %846 = add nsw i32 %837, 1
  %847 = fadd fast float %841, -1.000000e+00
  %848 = fsub fast float -0.000000e+00, %847
  %849 = fadd fast float %839, -1.000000e+00
  %850 = fsub fast float -0.000000e+00, %849
  br label %851

; <label>:851                                     ; preds = %845, %806
  %852 = phi i32 [ %846, %845 ], [ %831, %806 ]
  %853 = phi i32 [ %836, %845 ], [ %837, %806 ]
  %854 = phi i32 [ %837, %845 ], [ %836, %806 ]
  %855 = phi float [ %850, %845 ], [ %841, %806 ]
  %856 = phi float [ %848, %845 ], [ %839, %806 ]
  %857 = fsub fast float 1.000000e+00, %855
  %858 = fsub fast float %857, %856
  %859 = lshr i32 %854, 2
  %860 = getelementptr [4 x i32], [4 x i32]* %30, i32 0, i32 %859
  %861 = load i32, i32* %860, align 4, !tbaa !60, !noalias !64
  %862 = shl i32 %854, 3
  %863 = and i32 %862, 24
  %864 = lshr i32 %861, %863
  %865 = and i32 %864, 255
  %866 = sitofp i32 %865 to float
  %867 = fmul fast float %856, 0x3F70101020000000
  %868 = fmul fast float %867, %866
  %869 = lshr i32 %853, 2
  %870 = getelementptr [4 x i32], [4 x i32]* %30, i32 0, i32 %869
  %871 = load i32, i32* %870, align 4, !tbaa !60, !noalias !64
  %872 = shl i32 %853, 3
  %873 = and i32 %872, 24
  %874 = lshr i32 %871, %873
  %875 = and i32 %874, 255
  %876 = sitofp i32 %875 to float
  %877 = fmul fast float %855, 0x3F70101020000000
  %878 = fmul fast float %877, %876
  %879 = lshr i32 %852, 2
  %880 = getelementptr [4 x i32], [4 x i32]* %30, i32 0, i32 %879
  %881 = load i32, i32* %880, align 4, !tbaa !60, !noalias !64
  %882 = shl i32 %852, 3
  %883 = and i32 %882, 24
  %884 = lshr i32 %881, %883
  %885 = and i32 %884, 255
  %886 = sitofp i32 %885 to float
  %887 = fmul fast float %858, 0x3F70101020000000
  %888 = fmul fast float %887, %886
  %889 = fsub fast float 1.000000e+00, %868
  %890 = fsub fast float %889, %878
  %891 = fsub fast float %890, %888
  %892 = fmul fast float %564, 2.000000e+01
  %893 = fadd fast float %892, 1.000000e+00
  %894 = fmul fast float %891, 2.000000e+01
  %895 = fsub fast float %893, %894
  %896 = call float @dx.op.unary.f32(i32 7, float %895)  ; Saturate(value)
  br label %897

; <label>:897                                     ; preds = %851, %802
  %898 = phi float [ %896, %851 ], [ 1.000000e+00, %802 ]
  store float %898, float* %615, align 4, !tbaa !72, !noalias !64
  %899 = fadd fast float %804, %898
  %900 = icmp slt i32 %608, 0
  br i1 %900, label %901, label %992, !dx.controlflow.hints !58

; <label>:901                                     ; preds = %897
  %902 = fsub fast float 1.000000e+00, %565
  %903 = fdiv fast float 1.000000e+00, %902
  %904 = shl i32 %553, 6
  %905 = or i32 %904, 48
  %906 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %905, i32 undef)  ; BufferLoad(srv,index,wot)
  %907 = extractvalue %dx.types.ResRet.i32 %906, 0
  %908 = extractvalue %dx.types.ResRet.i32 %906, 1
  %909 = extractvalue %dx.types.ResRet.i32 %906, 2
  %910 = extractvalue %dx.types.ResRet.i32 %906, 3
  %911 = fmul fast float %903, %562
  %912 = fmul fast float %903, %563
  %913 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 0
  store i32 %907, i32* %913, align 4
  %914 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 1
  store i32 %908, i32* %914, align 4
  %915 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 2
  store i32 %909, i32* %915, align 4
  %916 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 3
  store i32 %910, i32* %916, align 4
  %917 = fmul fast float %912, 4.000000e+00
  %918 = call float @dx.op.unary.f32(i32 27, float %917)  ; Round_ni(value)
  %919 = fmul fast float %911, 4.000000e+00
  %920 = call float @dx.op.unary.f32(i32 27, float %919)  ; Round_ni(value)
  %921 = fsub fast float 1.100000e+01, %918
  %922 = fmul fast float %918, 5.000000e-01
  %923 = fmul fast float %922, %921
  %924 = fadd fast float %920, 5.000000e-01
  %925 = fadd fast float %924, %923
  %926 = fptosi float %925 to i32
  %927 = fptosi float %918 to i32
  %928 = sub nsw i32 5, %927
  %929 = fmul fast float %920, 2.500000e-01
  %930 = fmul fast float %918, 2.500000e-01
  %931 = add nsw i32 %926, 1
  %932 = add nsw i32 %926, %928
  %933 = fsub fast float %911, %929
  %934 = fmul fast float %933, 4.000000e+00
  %935 = fsub fast float %912, %930
  %936 = fmul fast float %935, 4.000000e+00
  %937 = fadd fast float %933, %935
  %938 = fmul fast float %937, 4.000000e+00
  %939 = fcmp fast ogt float %938, 1.000000e+00
  br i1 %939, label %940, label %946, !dx.controlflow.hints !59

; <label>:940                                     ; preds = %901
  %941 = add nsw i32 %932, 1
  %942 = fadd fast float %936, -1.000000e+00
  %943 = fsub fast float -0.000000e+00, %942
  %944 = fadd fast float %934, -1.000000e+00
  %945 = fsub fast float -0.000000e+00, %944
  br label %946

; <label>:946                                     ; preds = %940, %901
  %947 = phi i32 [ %941, %940 ], [ %926, %901 ]
  %948 = phi i32 [ %931, %940 ], [ %932, %901 ]
  %949 = phi i32 [ %932, %940 ], [ %931, %901 ]
  %950 = phi float [ %945, %940 ], [ %936, %901 ]
  %951 = phi float [ %943, %940 ], [ %934, %901 ]
  %952 = fsub fast float 1.000000e+00, %950
  %953 = fsub fast float %952, %951
  %954 = lshr i32 %949, 2
  %955 = getelementptr [4 x i32], [4 x i32]* %30, i32 0, i32 %954
  %956 = load i32, i32* %955, align 4, !tbaa !60, !noalias !64
  %957 = shl i32 %949, 3
  %958 = and i32 %957, 24
  %959 = lshr i32 %956, %958
  %960 = and i32 %959, 255
  %961 = sitofp i32 %960 to float
  %962 = fmul fast float %951, 0x3F70101020000000
  %963 = fmul fast float %962, %961
  %964 = lshr i32 %948, 2
  %965 = getelementptr [4 x i32], [4 x i32]* %30, i32 0, i32 %964
  %966 = load i32, i32* %965, align 4, !tbaa !60, !noalias !64
  %967 = shl i32 %948, 3
  %968 = and i32 %967, 24
  %969 = lshr i32 %966, %968
  %970 = and i32 %969, 255
  %971 = sitofp i32 %970 to float
  %972 = fmul fast float %950, 0x3F70101020000000
  %973 = fmul fast float %972, %971
  %974 = lshr i32 %947, 2
  %975 = getelementptr [4 x i32], [4 x i32]* %30, i32 0, i32 %974
  %976 = load i32, i32* %975, align 4, !tbaa !60, !noalias !64
  %977 = shl i32 %947, 3
  %978 = and i32 %977, 24
  %979 = lshr i32 %976, %978
  %980 = and i32 %979, 255
  %981 = sitofp i32 %980 to float
  %982 = fmul fast float %953, 0x3F70101020000000
  %983 = fmul fast float %982, %981
  %984 = fsub fast float 1.000000e+00, %963
  %985 = fsub fast float %984, %973
  %986 = fsub fast float %985, %983
  %987 = fmul fast float %565, 2.000000e+01
  %988 = fadd fast float %987, 1.000000e+00
  %989 = fmul fast float %986, 2.000000e+01
  %990 = fsub fast float %988, %989
  %991 = call float @dx.op.unary.f32(i32 7, float %990)  ; Saturate(value)
  br label %992

; <label>:992                                     ; preds = %946, %897
  %993 = phi float [ %991, %946 ], [ 1.000000e+00, %897 ]
  store float %993, float* %616, align 4, !tbaa !72, !noalias !64
  %994 = fadd fast float %899, %993
  %995 = fcmp fast oeq float %994, 0.000000e+00
  br i1 %995, label %996, label %997, !dx.controlflow.hints !74

; <label>:996                                     ; preds = %992
  store float 2.500000e-01, float* %613, align 4
  store float 2.500000e-01, float* %614, align 4
  store float 2.500000e-01, float* %615, align 4
  store float 2.500000e-01, float* %616, align 4
  br label %997

; <label>:997                                     ; preds = %996, %992
  %998 = phi float [ 2.500000e-01, %996 ], [ %709, %992 ]
  br label %999

; <label>:999                                     ; preds = %1126, %997
  %1000 = phi float [ %1128, %1126 ], [ %998, %997 ]
  %1001 = phi float [ %1111, %1126 ], [ 0.000000e+00, %997 ]
  %1002 = phi float [ %1112, %1126 ], [ 0.000000e+00, %997 ]
  %1003 = phi float [ %1113, %1126 ], [ 0.000000e+00, %997 ]
  %1004 = phi float [ %1114, %1126 ], [ 0.000000e+00, %997 ]
  %1005 = phi float [ %1115, %1126 ], [ 0.000000e+00, %997 ]
  %1006 = phi float [ %1116, %1126 ], [ 0.000000e+00, %997 ]
  %1007 = phi float [ %1117, %1126 ], [ 0.000000e+00, %997 ]
  %1008 = phi float [ %1118, %1126 ], [ 0.000000e+00, %997 ]
  %1009 = phi float [ %1119, %1126 ], [ 0.000000e+00, %997 ]
  %1010 = phi float [ %1120, %1126 ], [ 0.000000e+00, %997 ]
  %1011 = phi float [ %1121, %1126 ], [ 0.000000e+00, %997 ]
  %1012 = phi float [ %1122, %1126 ], [ 0.000000e+00, %997 ]
  %1013 = phi float [ %1123, %1126 ], [ 0.000000e+00, %997 ]
  %1014 = phi i32 [ %1124, %1126 ], [ 0, %997 ]
  %1015 = fcmp fast ogt float %1000, 0.000000e+00
  br i1 %1015, label %1016, label %1110, !dx.controlflow.hints !75

; <label>:1016                                    ; preds = %999
  %1017 = getelementptr [4 x float], [4 x float]* %31, i32 0, i32 %1014
  %1018 = load float, float* %1017, align 4, !tbaa !72, !noalias !64
  %1019 = getelementptr [4 x i32], [4 x i32]* %32, i32 0, i32 %1014
  %1020 = load i32, i32* %1019, align 4, !tbaa !60, !noalias !64
  %1021 = fmul fast float %1018, %1000
  %1022 = shl i32 %1020, 5
  %1023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1022, i32 undef)  ; BufferLoad(srv,index,wot)
  %1024 = extractvalue %dx.types.ResRet.i32 %1023, 0
  %1025 = extractvalue %dx.types.ResRet.i32 %1023, 1
  %1026 = extractvalue %dx.types.ResRet.i32 %1023, 3
  %1027 = or i32 %1022, 16
  %1028 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1027, i32 undef)  ; BufferLoad(srv,index,wot)
  %1029 = extractvalue %dx.types.ResRet.i32 %1028, 1
  %1030 = shl i32 %1024, 4
  %1031 = and i32 %1030, 32752
  %1032 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1031)  ; LegacyF16ToF32(value)
  %1033 = lshr i32 %1024, 7
  %1034 = and i32 %1033, 32752
  %1035 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1034)  ; LegacyF16ToF32(value)
  %1036 = lshr i32 %1024, 22
  %1037 = shl nuw nsw i32 %1036, 5
  %1038 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1037)  ; LegacyF16ToF32(value)
  %1039 = and i32 %1025, 255
  %1040 = uitofp i32 %1039 to float
  %1041 = fmul fast float %1040, 0x3F80204080000000
  %1042 = fadd fast float %1041, -1.000000e+00
  %1043 = lshr i32 %1025, 8
  %1044 = and i32 %1043, 255
  %1045 = uitofp i32 %1044 to float
  %1046 = fmul fast float %1045, 0x3F80204080000000
  %1047 = fadd fast float %1046, -1.000000e+00
  %1048 = lshr i32 %1025, 16
  %1049 = and i32 %1048, 255
  %1050 = uitofp i32 %1049 to float
  %1051 = fmul fast float %1050, 0x3F80204080000000
  %1052 = fadd fast float %1051, -1.000000e+00
  %1053 = and i32 %1026, 255
  %1054 = uitofp i32 %1053 to float
  %1055 = fmul fast float %1054, 0x3F80204080000000
  %1056 = fadd fast float %1055, -1.000000e+00
  %1057 = lshr i32 %1026, 8
  %1058 = and i32 %1057, 255
  %1059 = uitofp i32 %1058 to float
  %1060 = fmul fast float %1059, 0x3F80204080000000
  %1061 = fadd fast float %1060, -1.000000e+00
  %1062 = lshr i32 %1026, 16
  %1063 = and i32 %1062, 255
  %1064 = uitofp i32 %1063 to float
  %1065 = fmul fast float %1064, 0x3F80204080000000
  %1066 = fadd fast float %1065, -1.000000e+00
  %1067 = and i32 %1029, 255
  %1068 = uitofp i32 %1067 to float
  %1069 = fmul fast float %1068, 0x3F80204080000000
  %1070 = fadd fast float %1069, -1.000000e+00
  %1071 = lshr i32 %1029, 8
  %1072 = and i32 %1071, 255
  %1073 = uitofp i32 %1072 to float
  %1074 = fmul fast float %1073, 0x3F80204080000000
  %1075 = fadd fast float %1074, -1.000000e+00
  %1076 = lshr i32 %1029, 16
  %1077 = and i32 %1076, 255
  %1078 = uitofp i32 %1077 to float
  %1079 = fmul fast float %1078, 0x3F80204080000000
  %1080 = fadd fast float %1079, -1.000000e+00
  %1081 = fmul fast float %1032, %1021
  %1082 = fadd fast float %1081, %1004
  %1083 = fmul fast float %1021, 0x3FFBB67AE0000000
  %1084 = fmul fast float %1083, %1032
  %1085 = fmul fast float %1084, %1042
  %1086 = fadd fast float %1085, %1003
  %1087 = fmul fast float %1084, %1047
  %1088 = fadd fast float %1087, %1002
  %1089 = fmul fast float %1084, %1052
  %1090 = fadd fast float %1089, %1001
  %1091 = fmul fast float %1035, %1021
  %1092 = fadd fast float %1091, %1008
  %1093 = fmul fast float %1083, %1035
  %1094 = fmul fast float %1093, %1056
  %1095 = fadd fast float %1094, %1007
  %1096 = fmul fast float %1093, %1061
  %1097 = fadd fast float %1096, %1006
  %1098 = fmul fast float %1093, %1066
  %1099 = fadd fast float %1098, %1005
  %1100 = fmul fast float %1038, %1021
  %1101 = fadd fast float %1100, %1012
  %1102 = fmul fast float %1083, %1038
  %1103 = fmul fast float %1102, %1070
  %1104 = fadd fast float %1103, %1011
  %1105 = fmul fast float %1102, %1075
  %1106 = fadd fast float %1105, %1010
  %1107 = fmul fast float %1102, %1080
  %1108 = fadd fast float %1107, %1009
  %1109 = fadd fast float %1021, %1013
  br label %1110

; <label>:1110                                    ; preds = %1016, %999
  %1111 = phi float [ %1090, %1016 ], [ %1001, %999 ]
  %1112 = phi float [ %1088, %1016 ], [ %1002, %999 ]
  %1113 = phi float [ %1086, %1016 ], [ %1003, %999 ]
  %1114 = phi float [ %1082, %1016 ], [ %1004, %999 ]
  %1115 = phi float [ %1099, %1016 ], [ %1005, %999 ]
  %1116 = phi float [ %1097, %1016 ], [ %1006, %999 ]
  %1117 = phi float [ %1095, %1016 ], [ %1007, %999 ]
  %1118 = phi float [ %1092, %1016 ], [ %1008, %999 ]
  %1119 = phi float [ %1108, %1016 ], [ %1009, %999 ]
  %1120 = phi float [ %1106, %1016 ], [ %1010, %999 ]
  %1121 = phi float [ %1104, %1016 ], [ %1011, %999 ]
  %1122 = phi float [ %1101, %1016 ], [ %1012, %999 ]
  %1123 = phi float [ %1109, %1016 ], [ %1013, %999 ]
  %1124 = add nuw nsw i32 %1014, 1
  %1125 = icmp eq i32 %1124, 4
  br i1 %1125, label %1129, label %1126

; <label>:1126                                    ; preds = %1110
  %1127 = getelementptr [4 x float], [4 x float]* %33, i32 0, i32 %1124
  %1128 = load float, float* %1127, align 4, !tbaa !72, !noalias !64
  br label %999

; <label>:1129                                    ; preds = %1110
  %1130 = fcmp fast ogt float %1123, 0.000000e+00
  %1131 = fdiv fast float 1.000000e+00, %1123
  %1132 = select i1 %1130, float %1131, float 1.000000e+00
  %1133 = fmul fast float %1132, %1114
  %1134 = fmul fast float %1132, %1113
  %1135 = fmul fast float %1132, %1112
  %1136 = fmul fast float %1132, %1111
  %1137 = fmul fast float %1132, %1118
  %1138 = fmul fast float %1132, %1117
  %1139 = fmul fast float %1132, %1116
  %1140 = fmul fast float %1132, %1115
  %1141 = fmul fast float %1132, %1122
  %1142 = fmul fast float %1132, %1121
  %1143 = fmul fast float %1132, %1120
  %1144 = fmul fast float %1132, %1119
  br label %1145

; <label>:1145                                    ; preds = %1129, %567, %241
  %1146 = phi float [ 0.000000e+00, %241 ], [ %1144, %1129 ], [ %601, %567 ]
  %1147 = phi float [ 0.000000e+00, %241 ], [ %1143, %1129 ], [ %599, %567 ]
  %1148 = phi float [ 0.000000e+00, %241 ], [ %1142, %1129 ], [ %597, %567 ]
  %1149 = phi float [ 0.000000e+00, %241 ], [ %1141, %1129 ], [ %595, %567 ]
  %1150 = phi float [ 0.000000e+00, %241 ], [ %1140, %1129 ], [ %593, %567 ]
  %1151 = phi float [ 0.000000e+00, %241 ], [ %1139, %1129 ], [ %591, %567 ]
  %1152 = phi float [ 0.000000e+00, %241 ], [ %1138, %1129 ], [ %589, %567 ]
  %1153 = phi float [ 0.000000e+00, %241 ], [ %1137, %1129 ], [ %587, %567 ]
  %1154 = phi float [ 0.000000e+00, %241 ], [ %1136, %1129 ], [ %585, %567 ]
  %1155 = phi float [ 0.000000e+00, %241 ], [ %1135, %1129 ], [ %583, %567 ]
  %1156 = phi float [ 0.000000e+00, %241 ], [ %1134, %1129 ], [ %581, %567 ]
  %1157 = phi float [ 0.000000e+00, %241 ], [ %1133, %1129 ], [ %579, %567 ]
  %1158 = fcmp fast olt float %242, 1.000000e+00
  br i1 %1158, label %1159, label %1804, !dx.controlflow.hints !76

; <label>:1159                                    ; preds = %1145
  %1160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1161 = extractvalue %dx.types.CBufRet.f32 %1160, 0
  %1162 = extractvalue %dx.types.CBufRet.f32 %1160, 1
  %1163 = fsub fast float %192, %1161
  %1164 = fsub fast float %197, %1162
  %1165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1166 = extractvalue %dx.types.CBufRet.f32 %1165, 0
  %1167 = extractvalue %dx.types.CBufRet.f32 %1165, 1
  %1168 = fmul fast float %1163, %1166
  %1169 = fmul fast float %1164, %1167
  %1170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1171 = extractvalue %dx.types.CBufRet.f32 %1170, 0
  %1172 = fmul fast float %1171, %1168
  %1173 = extractvalue %dx.types.CBufRet.f32 %1170, 1
  %1174 = fadd fast float %1172, %1173
  %1175 = extractvalue %dx.types.CBufRet.f32 %1170, 2
  %1176 = fmul fast float %1175, %1169
  %1177 = extractvalue %dx.types.CBufRet.f32 %1170, 3
  %1178 = fadd fast float %1176, %1177
  %1179 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %25, float %1174, float %1178, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1180 = extractvalue %dx.types.ResRet.f32 %1179, 0
  %1181 = extractvalue %dx.types.ResRet.f32 %1179, 1
  %1182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1183 = extractvalue %dx.types.CBufRet.f32 %1182, 1
  %1184 = extractvalue %dx.types.CBufRet.f32 %1182, 0
  %1185 = fsub fast float %1183, %1184
  %1186 = fmul fast float %1185, %1180
  %1187 = fadd fast float %1186, %1184
  %1188 = extractvalue %dx.types.CBufRet.f32 %1182, 3
  %1189 = extractvalue %dx.types.CBufRet.f32 %1182, 2
  %1190 = fsub fast float %1188, %1189
  %1191 = fmul fast float %1190, %1181
  %1192 = fadd fast float %1191, %1189
  %1193 = fsub fast float %202, %1187
  %1194 = fsub fast float %1192, %1187
  %1195 = fdiv fast float %1193, %1194
  %1196 = call float @dx.op.unary.f32(i32 7, float %1195)  ; Saturate(value)
  %1197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %1198 = extractvalue %dx.types.CBufRet.f32 %1197, 0
  %1199 = fmul fast float %1198, %1196
  %1200 = extractvalue %dx.types.CBufRet.f32 %1197, 1
  %1201 = fadd fast float %1199, %1200
  %1202 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %25, float %1174, float %1178, float %1201, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1203 = extractvalue %dx.types.ResRet.f32 %1202, 0
  %1204 = extractvalue %dx.types.ResRet.f32 %1202, 1
  %1205 = extractvalue %dx.types.ResRet.f32 %1202, 2
  %1206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %1207 = extractvalue %dx.types.CBufRet.f32 %1206, 0
  %1208 = extractvalue %dx.types.CBufRet.f32 %1206, 1
  %1209 = extractvalue %dx.types.CBufRet.f32 %1206, 2
  %1210 = fmul fast float %1207, %1203
  %1211 = fmul fast float %1208, %1204
  %1212 = fmul fast float %1209, %1205
  %1213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %1214 = extractvalue %dx.types.CBufRet.f32 %1213, 0
  %1215 = extractvalue %dx.types.CBufRet.f32 %1213, 1
  %1216 = extractvalue %dx.types.CBufRet.f32 %1213, 2
  %1217 = fadd fast float %1210, %1214
  %1218 = fadd fast float %1211, %1215
  %1219 = fadd fast float %1212, %1216
  %1220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %1221 = extractvalue %dx.types.CBufRet.f32 %1220, 0
  %1222 = fmul fast float %1221, %1168
  %1223 = extractvalue %dx.types.CBufRet.f32 %1220, 1
  %1224 = fadd fast float %1222, %1223
  %1225 = extractvalue %dx.types.CBufRet.f32 %1220, 2
  %1226 = fmul fast float %1225, %1169
  %1227 = extractvalue %dx.types.CBufRet.f32 %1220, 3
  %1228 = fadd fast float %1226, %1227
  %1229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %1230 = extractvalue %dx.types.CBufRet.f32 %1229, 0
  %1231 = extractvalue %dx.types.CBufRet.f32 %1229, 1
  %1232 = extractvalue %dx.types.CBufRet.f32 %1229, 2
  %1233 = extractvalue %dx.types.CBufRet.f32 %1229, 3
  %1234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %1235 = extractvalue %dx.types.CBufRet.f32 %1234, 0
  %1236 = extractvalue %dx.types.CBufRet.f32 %1234, 1
  %1237 = extractvalue %dx.types.CBufRet.f32 %1234, 2
  %1238 = extractvalue %dx.types.CBufRet.f32 %1234, 3
  %1239 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %25, float %1224, float %1228, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1240 = extractvalue %dx.types.ResRet.f32 %1239, 0
  %1241 = extractvalue %dx.types.ResRet.f32 %1239, 1
  %1242 = extractvalue %dx.types.ResRet.f32 %1239, 2
  %1243 = extractvalue %dx.types.ResRet.f32 %1239, 3
  %1244 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %25, float %1224, float %1228, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1245 = extractvalue %dx.types.ResRet.f32 %1244, 0
  %1246 = extractvalue %dx.types.ResRet.f32 %1244, 1
  %1247 = extractvalue %dx.types.ResRet.f32 %1244, 2
  %1248 = extractvalue %dx.types.ResRet.f32 %1244, 3
  %1249 = fmul fast float %1240, %1217
  %1250 = fmul fast float %1245, %1217
  %1251 = fmul fast float %1247, %1217
  %1252 = fmul fast float %1243, %1217
  %1253 = fadd fast float %1249, %1230
  %1254 = fadd fast float %1250, %1231
  %1255 = fadd fast float %1251, %1232
  %1256 = fadd fast float %1252, %1233
  %1257 = fmul fast float %1241, %1217
  %1258 = fmul fast float %1246, %1217
  %1259 = fadd fast float %1257, %1235
  %1260 = fadd fast float %1258, %1236
  %1261 = fmul fast float %1242, %1217
  %1262 = fmul fast float %1248, %1217
  %1263 = fadd fast float %1261, %1237
  %1264 = fadd fast float %1262, %1238
  %1265 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %25, float %1224, float %1228, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1266 = extractvalue %dx.types.ResRet.f32 %1265, 0
  %1267 = extractvalue %dx.types.ResRet.f32 %1265, 1
  %1268 = extractvalue %dx.types.ResRet.f32 %1265, 2
  %1269 = extractvalue %dx.types.ResRet.f32 %1265, 3
  %1270 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %25, float %1224, float %1228, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1271 = extractvalue %dx.types.ResRet.f32 %1270, 0
  %1272 = extractvalue %dx.types.ResRet.f32 %1270, 1
  %1273 = extractvalue %dx.types.ResRet.f32 %1270, 2
  %1274 = extractvalue %dx.types.ResRet.f32 %1270, 3
  %1275 = fmul fast float %1266, %1218
  %1276 = fmul fast float %1271, %1218
  %1277 = fmul fast float %1273, %1218
  %1278 = fmul fast float %1269, %1218
  %1279 = fadd fast float %1253, %1275
  %1280 = fadd fast float %1254, %1276
  %1281 = fadd fast float %1255, %1277
  %1282 = fadd fast float %1256, %1278
  %1283 = fmul fast float %1267, %1218
  %1284 = fmul fast float %1272, %1218
  %1285 = fadd fast float %1259, %1283
  %1286 = fadd fast float %1260, %1284
  %1287 = fmul fast float %1268, %1218
  %1288 = fmul fast float %1274, %1218
  %1289 = fadd fast float %1263, %1287
  %1290 = fadd fast float %1264, %1288
  %1291 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %25, float %1224, float %1228, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1292 = extractvalue %dx.types.ResRet.f32 %1291, 0
  %1293 = extractvalue %dx.types.ResRet.f32 %1291, 1
  %1294 = extractvalue %dx.types.ResRet.f32 %1291, 2
  %1295 = extractvalue %dx.types.ResRet.f32 %1291, 3
  %1296 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %25, float %1224, float %1228, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1297 = extractvalue %dx.types.ResRet.f32 %1296, 0
  %1298 = extractvalue %dx.types.ResRet.f32 %1296, 1
  %1299 = extractvalue %dx.types.ResRet.f32 %1296, 2
  %1300 = extractvalue %dx.types.ResRet.f32 %1296, 3
  %1301 = fmul fast float %1292, %1219
  %1302 = fmul fast float %1297, %1219
  %1303 = fmul fast float %1299, %1219
  %1304 = fmul fast float %1295, %1219
  %1305 = fadd fast float %1279, %1301
  %1306 = fadd fast float %1280, %1302
  %1307 = fadd fast float %1281, %1303
  %1308 = fadd fast float %1282, %1304
  %1309 = fmul fast float %1293, %1219
  %1310 = fmul fast float %1298, %1219
  %1311 = fadd fast float %1285, %1309
  %1312 = fadd fast float %1286, %1310
  %1313 = fmul fast float %1294, %1219
  %1314 = fmul fast float %1300, %1219
  %1315 = fadd fast float %1289, %1313
  %1316 = fadd fast float %1290, %1314
  %1317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %1318 = extractvalue %dx.types.CBufRet.f32 %1317, 0
  %1319 = fsub fast float %192, %1318
  %1320 = fsub fast float %1161, %192
  %1321 = call float @dx.op.binary.f32(i32 35, float %1320, float %1319)  ; FMax(a,b)
  %1322 = extractvalue %dx.types.CBufRet.f32 %1317, 1
  %1323 = fsub fast float %197, %1322
  %1324 = fsub fast float %1162, %197
  %1325 = call float @dx.op.binary.f32(i32 35, float %1324, float %1323)  ; FMax(a,b)
  %1326 = call float @dx.op.binary.f32(i32 35, float %1321, float %1325)  ; FMax(a,b)
  %1327 = extractvalue %dx.types.CBufRet.f32 %1165, 3
  %1328 = fmul fast float %1327, %1326
  %1329 = call float @dx.op.unary.f32(i32 7, float %1328)  ; Saturate(value)
  %1330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %1331 = extractvalue %dx.types.CBufRet.f32 %1330, 0
  %1332 = extractvalue %dx.types.CBufRet.f32 %1330, 1
  %1333 = extractvalue %dx.types.CBufRet.f32 %1330, 2
  %1334 = extractvalue %dx.types.CBufRet.f32 %1330, 3
  %1335 = fsub fast float %1331, %1305
  %1336 = fsub fast float %1332, %1306
  %1337 = fsub fast float %1333, %1307
  %1338 = fsub fast float %1334, %1308
  %1339 = fmul fast float %1335, %1329
  %1340 = fmul fast float %1336, %1329
  %1341 = fmul fast float %1337, %1329
  %1342 = fmul fast float %1338, %1329
  %1343 = fadd fast float %1339, %1305
  %1344 = fadd fast float %1340, %1306
  %1345 = fadd fast float %1341, %1307
  %1346 = fadd fast float %1342, %1308
  %1347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %1348 = extractvalue %dx.types.CBufRet.f32 %1347, 0
  %1349 = extractvalue %dx.types.CBufRet.f32 %1347, 1
  %1350 = fsub fast float %1348, %1311
  %1351 = fsub fast float %1349, %1312
  %1352 = fmul fast float %1350, %1329
  %1353 = fmul fast float %1351, %1329
  %1354 = fadd fast float %1352, %1311
  %1355 = fadd fast float %1353, %1312
  %1356 = extractvalue %dx.types.CBufRet.f32 %1347, 2
  %1357 = extractvalue %dx.types.CBufRet.f32 %1347, 3
  %1358 = fsub fast float %1356, %1315
  %1359 = fsub fast float %1357, %1316
  %1360 = fmul fast float %1358, %1329
  %1361 = fmul fast float %1359, %1329
  %1362 = fadd fast float %1360, %1315
  %1363 = fadd fast float %1361, %1316
  %1364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %1365 = extractvalue %dx.types.CBufRet.f32 %1364, 0
  %1366 = fmul fast float %1365, %1343
  %1367 = fmul fast float %1365, %1344
  %1368 = fmul fast float %1365, %1345
  %1369 = fmul fast float %1365, %1346
  %1370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %1371 = extractvalue %dx.types.CBufRet.f32 %1370, 0
  %1372 = fmul fast float %1371, %1354
  %1373 = fmul fast float %1371, %1355
  %1374 = fadd fast float %1372, %1366
  %1375 = fadd fast float %1373, %1368
  %1376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %1377 = extractvalue %dx.types.CBufRet.f32 %1376, 0
  %1378 = fmul fast float %1377, %1362
  %1379 = fmul fast float %1377, %1363
  %1380 = fadd fast float %1374, %1378
  %1381 = fadd fast float %1375, %1379
  %1382 = extractvalue %dx.types.CBufRet.f32 %1364, 1
  %1383 = fmul fast float %1382, %1343
  %1384 = fmul fast float %1382, %1344
  %1385 = fmul fast float %1382, %1345
  %1386 = fmul fast float %1382, %1346
  %1387 = extractvalue %dx.types.CBufRet.f32 %1370, 1
  %1388 = fmul fast float %1387, %1354
  %1389 = fmul fast float %1387, %1355
  %1390 = fadd fast float %1388, %1383
  %1391 = fadd fast float %1389, %1385
  %1392 = extractvalue %dx.types.CBufRet.f32 %1376, 1
  %1393 = fmul fast float %1392, %1362
  %1394 = fmul fast float %1392, %1363
  %1395 = fadd fast float %1390, %1393
  %1396 = fadd fast float %1391, %1394
  %1397 = extractvalue %dx.types.CBufRet.f32 %1364, 2
  %1398 = fmul fast float %1397, %1343
  %1399 = fmul fast float %1397, %1344
  %1400 = fmul fast float %1397, %1345
  %1401 = fmul fast float %1397, %1346
  %1402 = extractvalue %dx.types.CBufRet.f32 %1370, 2
  %1403 = fmul fast float %1402, %1354
  %1404 = fmul fast float %1402, %1355
  %1405 = fadd fast float %1403, %1398
  %1406 = fadd fast float %1404, %1400
  %1407 = extractvalue %dx.types.CBufRet.f32 %1376, 2
  %1408 = fmul fast float %1407, %1362
  %1409 = fmul fast float %1407, %1363
  %1410 = fadd fast float %1405, %1408
  %1411 = fadd fast float %1406, %1409
  %1412 = fmul fast float %1399, %1399
  %1413 = fmul fast float %1411, %1411
  %1414 = fmul fast float %1401, %1401
  %1415 = fadd fast float %1414, %1412
  %1416 = fadd fast float %1415, %1413
  %1417 = call float @dx.op.unary.f32(i32 24, float %1416)  ; Sqrt(value)
  %1418 = fcmp fast ugt float %1417, 0.000000e+00
  br i1 %1418, label %1419, label %1434, !dx.controlflow.hints !77

; <label>:1419                                    ; preds = %1159
  %1420 = fsub fast float -0.000000e+00, %1401
  %1421 = fdiv fast float %1420, %1417
  %1422 = fsub fast float -0.000000e+00, %1399
  %1423 = fdiv fast float %1422, %1417
  %1424 = fdiv fast float %1411, %1417
  %1425 = fmul fast float %1410, 0x3FE279A760000000
  %1426 = fmul fast float %1423, %1399
  %1427 = fmul fast float %1424, %1411
  %1428 = fmul fast float %1421, %1401
  %1429 = fadd fast float %1426, %1428
  %1430 = fsub fast float %1429, %1427
  %1431 = call float @dx.op.unary.f32(i32 6, float %1430)  ; FAbs(value)
  %1432 = fadd fast float %1431, 0x3DDB7CDFE0000000
  %1433 = fdiv fast float %1425, %1432
  br label %1434

; <label>:1434                                    ; preds = %1419, %1159
  %1435 = phi float [ %1433, %1419 ], [ 1.000000e+00, %1159 ]
  %1436 = fmul fast float %1384, %1384
  %1437 = fmul fast float %1396, %1396
  %1438 = fmul fast float %1386, %1386
  %1439 = fadd fast float %1438, %1436
  %1440 = fadd fast float %1439, %1437
  %1441 = call float @dx.op.unary.f32(i32 24, float %1440)  ; Sqrt(value)
  %1442 = fcmp fast ugt float %1441, 0.000000e+00
  br i1 %1442, label %1443, label %1458, !dx.controlflow.hints !77

; <label>:1443                                    ; preds = %1434
  %1444 = fsub fast float -0.000000e+00, %1386
  %1445 = fdiv fast float %1444, %1441
  %1446 = fsub fast float -0.000000e+00, %1384
  %1447 = fdiv fast float %1446, %1441
  %1448 = fdiv fast float %1396, %1441
  %1449 = fmul fast float %1395, 0x3FE279A760000000
  %1450 = fmul fast float %1447, %1384
  %1451 = fmul fast float %1448, %1396
  %1452 = fmul fast float %1445, %1386
  %1453 = fadd fast float %1450, %1452
  %1454 = fsub fast float %1453, %1451
  %1455 = call float @dx.op.unary.f32(i32 6, float %1454)  ; FAbs(value)
  %1456 = fadd fast float %1455, 0x3DDB7CDFE0000000
  %1457 = fdiv fast float %1449, %1456
  br label %1458

; <label>:1458                                    ; preds = %1443, %1434
  %1459 = phi float [ %1457, %1443 ], [ 1.000000e+00, %1434 ]
  %1460 = call float @dx.op.binary.f32(i32 36, float %1459, float %1435)  ; FMin(a,b)
  %1461 = fmul fast float %1367, %1367
  %1462 = fmul fast float %1381, %1381
  %1463 = fmul fast float %1369, %1369
  %1464 = fadd fast float %1463, %1461
  %1465 = fadd fast float %1464, %1462
  %1466 = call float @dx.op.unary.f32(i32 24, float %1465)  ; Sqrt(value)
  %1467 = fcmp fast ugt float %1466, 0.000000e+00
  br i1 %1467, label %1468, label %1483, !dx.controlflow.hints !77

; <label>:1468                                    ; preds = %1458
  %1469 = fsub fast float -0.000000e+00, %1369
  %1470 = fdiv fast float %1469, %1466
  %1471 = fsub fast float -0.000000e+00, %1367
  %1472 = fdiv fast float %1471, %1466
  %1473 = fdiv fast float %1381, %1466
  %1474 = fmul fast float %1380, 0x3FE279A760000000
  %1475 = fmul fast float %1472, %1367
  %1476 = fmul fast float %1473, %1381
  %1477 = fmul fast float %1470, %1369
  %1478 = fadd fast float %1475, %1477
  %1479 = fsub fast float %1478, %1476
  %1480 = call float @dx.op.unary.f32(i32 6, float %1479)  ; FAbs(value)
  %1481 = fadd fast float %1480, 0x3DDB7CDFE0000000
  %1482 = fdiv fast float %1474, %1481
  br label %1483

; <label>:1483                                    ; preds = %1468, %1458
  %1484 = phi float [ %1482, %1468 ], [ 1.000000e+00, %1458 ]
  %1485 = call float @dx.op.binary.f32(i32 36, float %1484, float %1460)  ; FMin(a,b)
  %1486 = call float @dx.op.unary.f32(i32 7, float %1485)  ; Saturate(value)
  %1487 = fcmp fast olt float %1486, 1.000000e+00
  br i1 %1487, label %1488, label %1498, !dx.controlflow.hints !78

; <label>:1488                                    ; preds = %1483
  %1489 = fmul fast float %1486, %1367
  %1490 = fmul fast float %1486, %1381
  %1491 = fmul fast float %1486, %1369
  %1492 = fmul fast float %1486, %1384
  %1493 = fmul fast float %1486, %1396
  %1494 = fmul fast float %1486, %1386
  %1495 = fmul fast float %1486, %1399
  %1496 = fmul fast float %1486, %1411
  %1497 = fmul fast float %1486, %1401
  br label %1498

; <label>:1498                                    ; preds = %1488, %1483
  %1499 = phi float [ %1495, %1488 ], [ %1399, %1483 ]
  %1500 = phi float [ %1496, %1488 ], [ %1411, %1483 ]
  %1501 = phi float [ %1497, %1488 ], [ %1401, %1483 ]
  %1502 = phi float [ %1492, %1488 ], [ %1384, %1483 ]
  %1503 = phi float [ %1493, %1488 ], [ %1396, %1483 ]
  %1504 = phi float [ %1494, %1488 ], [ %1386, %1483 ]
  %1505 = phi float [ %1489, %1488 ], [ %1367, %1483 ]
  %1506 = phi float [ %1490, %1488 ], [ %1381, %1483 ]
  %1507 = phi float [ %1491, %1488 ], [ %1369, %1483 ]
  %1508 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1380)  ; FMax(a,b)
  %1509 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1395)  ; FMax(a,b)
  %1510 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1410)  ; FMax(a,b)
  %1511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %1512 = extractvalue %dx.types.CBufRet.f32 %1511, 0
  %1513 = fcmp fast ogt float %1512, 0.000000e+00
  %1514 = fcmp fast oge float %1168, 0.000000e+00
  %1515 = and i1 %1514, %1513
  %1516 = fcmp fast ole float %1168, 1.000000e+00
  %1517 = and i1 %1516, %1515
  %1518 = fcmp fast oge float %1169, 0.000000e+00
  %1519 = and i1 %1518, %1517
  %1520 = fcmp fast ole float %1169, 1.000000e+00
  %1521 = and i1 %1520, %1519
  br i1 %1521, label %1522, label %1667, !dx.controlflow.hints !79

; <label>:1522                                    ; preds = %1498
  %1523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1524 = extractvalue %dx.types.CBufRet.f32 %1523, 2
  %1525 = extractvalue %dx.types.CBufRet.f32 %1523, 3
  %1526 = fmul fast float %1524, %1168
  %1527 = fmul fast float %1525, %1169
  %1528 = call float @dx.op.unary.f32(i32 27, float %1526)  ; Round_ni(value)
  %1529 = call float @dx.op.unary.f32(i32 27, float %1527)  ; Round_ni(value)
  %1530 = fptosi float %1528 to i32
  %1531 = fptosi float %1529 to i32
  %1532 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %1530, i32 %1531, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1533 = extractvalue %dx.types.ResRet.i32 %1532, 0
  %1534 = and i32 %1533, 65535
  %1535 = lshr i32 %1533, 16
  %1536 = icmp eq i32 %1534, 65535
  br i1 %1536, label %1573, label %1537, !dx.controlflow.hints !80

; <label>:1537                                    ; preds = %1522
  %1538 = extractvalue %dx.types.CBufRet.f32 %1511, 1
  %1539 = extractvalue %dx.types.CBufRet.f32 %1523, 0
  %1540 = extractvalue %dx.types.CBufRet.f32 %1523, 1
  %1541 = fmul fast float %1539, %1168
  %1542 = fmul fast float %1540, %1169
  %1543 = fmul fast float %1541, 1.250000e-01
  %1544 = fmul fast float %1542, 1.250000e-01
  %1545 = call float @dx.op.unary.f32(i32 27, float %1543)  ; Round_ni(value)
  %1546 = call float @dx.op.unary.f32(i32 27, float %1544)  ; Round_ni(value)
  %1547 = fmul fast float %1545, 8.000000e+00
  %1548 = fmul fast float %1546, 8.000000e+00
  %1549 = and i32 %1533, 255
  %1550 = lshr i32 %1533, 8
  %1551 = and i32 %1550, 255
  %1552 = mul nuw nsw i32 %1549, 9
  %1553 = uitofp i32 %1552 to float
  %1554 = mul nuw nsw i32 %1551, 9
  %1555 = uitofp i32 %1554 to float
  %1556 = fadd fast float %1553, 5.000000e-01
  %1557 = fadd fast float %1556, %1541
  %1558 = fsub fast float %1557, %1547
  %1559 = fadd fast float %1555, 5.000000e-01
  %1560 = fadd fast float %1559, %1542
  %1561 = fsub fast float %1560, %1548
  %1562 = fdiv fast float %1558, %1512
  %1563 = fdiv fast float %1561, %1538
  %1564 = fmul fast float %1196, 4.375000e-01
  %1565 = fadd fast float %1564, 3.125000e-02
  %1566 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %25, float %1562, float %1563, float %1565, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1567 = extractvalue %dx.types.ResRet.f32 %1566, 0
  %1568 = extractvalue %dx.types.ResRet.f32 %1566, 1
  %1569 = extractvalue %dx.types.ResRet.f32 %1566, 2
  %1570 = fadd fast float %1567, %1508
  %1571 = fadd fast float %1568, %1509
  %1572 = fadd fast float %1569, %1510
  br label %1573

; <label>:1573                                    ; preds = %1537, %1522
  %1574 = phi float [ %1572, %1537 ], [ %1510, %1522 ]
  %1575 = phi float [ %1571, %1537 ], [ %1509, %1522 ]
  %1576 = phi float [ %1570, %1537 ], [ %1508, %1522 ]
  %1577 = icmp eq i32 %1535, 65535
  br i1 %1577, label %1667, label %1578, !dx.controlflow.hints !81

; <label>:1578                                    ; preds = %1573
  %1579 = extractvalue %dx.types.CBufRet.f32 %1511, 1
  %1580 = extractvalue %dx.types.CBufRet.f32 %1523, 0
  %1581 = extractvalue %dx.types.CBufRet.f32 %1523, 1
  %1582 = fmul fast float %1580, %1168
  %1583 = fmul fast float %1581, %1169
  %1584 = fmul fast float %1582, 1.250000e-01
  %1585 = fmul fast float %1583, 1.250000e-01
  %1586 = call float @dx.op.unary.f32(i32 27, float %1584)  ; Round_ni(value)
  %1587 = call float @dx.op.unary.f32(i32 27, float %1585)  ; Round_ni(value)
  %1588 = fmul fast float %1586, 8.000000e+00
  %1589 = fmul fast float %1587, 8.000000e+00
  %1590 = fsub fast float %1582, %1588
  %1591 = fsub fast float %1583, %1589
  %1592 = fadd fast float %1590, 5.000000e-01
  %1593 = fadd fast float %1591, 5.000000e-01
  %1594 = and i32 %1535, 255
  %1595 = lshr i32 %1533, 24
  %1596 = mul nuw nsw i32 %1594, 9
  %1597 = uitofp i32 %1596 to float
  %1598 = mul nuw nsw i32 %1595, 9
  %1599 = uitofp i32 %1598 to float
  %1600 = fadd fast float %1592, %1597
  %1601 = fadd fast float %1593, %1599
  %1602 = fdiv fast float %1600, %1512
  %1603 = fdiv fast float %1601, %1579
  %1604 = fmul fast float %1196, 4.375000e-01
  %1605 = fadd fast float %1604, 3.125000e-02
  %1606 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %25, float %1602, float %1603, float %1605, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1607 = extractvalue %dx.types.ResRet.f32 %1606, 0
  %1608 = extractvalue %dx.types.ResRet.f32 %1606, 1
  %1609 = extractvalue %dx.types.ResRet.f32 %1606, 2
  %1610 = fadd fast float %1604, 5.312500e-01
  %1611 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %25, float %1602, float %1603, float %1610, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1612 = extractvalue %dx.types.ResRet.f32 %1611, 0
  %1613 = extractvalue %dx.types.ResRet.f32 %1611, 1
  %1614 = extractvalue %dx.types.ResRet.f32 %1611, 2
  %1615 = fmul fast float %1612, 2.000000e+00
  %1616 = fmul fast float %1613, 2.000000e+00
  %1617 = fmul fast float %1614, 2.000000e+00
  %1618 = fadd fast float %1615, -1.000000e+00
  %1619 = fadd fast float %1616, -1.000000e+00
  %1620 = fadd fast float %1617, -1.000000e+00
  %1621 = fmul fast float %1618, %1618
  %1622 = fmul fast float %1619, %1619
  %1623 = fadd fast float %1621, %1622
  %1624 = fmul fast float %1620, %1620
  %1625 = fadd fast float %1623, %1624
  %1626 = call float @dx.op.unary.f32(i32 24, float %1625)  ; Sqrt(value)
  %1627 = fcmp fast ogt float %1626, 0.000000e+00
  br i1 %1627, label %1628, label %1632, !dx.controlflow.hints !82

; <label>:1628                                    ; preds = %1578
  %1629 = fdiv fast float %1618, %1626
  %1630 = fdiv fast float %1619, %1626
  %1631 = fdiv fast float %1620, %1626
  br label %1632

; <label>:1632                                    ; preds = %1628, %1578
  %1633 = phi float [ %1629, %1628 ], [ 0.000000e+00, %1578 ]
  %1634 = phi float [ %1630, %1628 ], [ 0.000000e+00, %1578 ]
  %1635 = phi float [ %1631, %1628 ], [ 0.000000e+00, %1578 ]
  %1636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1637 = extractvalue %dx.types.CBufRet.f32 %1636, 0
  %1638 = extractvalue %dx.types.CBufRet.f32 %1636, 1
  %1639 = fsub fast float %192, %1637
  %1640 = fsub fast float %197, %1638
  %1641 = fmul fast float %1639, %1639
  %1642 = fmul fast float %1640, %1640
  %1643 = fadd fast float %1641, %1642
  %1644 = call float @dx.op.unary.f32(i32 24, float %1643)  ; Sqrt(value)
  %1645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1646 = extractvalue %dx.types.CBufRet.f32 %1645, 0
  %1647 = extractvalue %dx.types.CBufRet.f32 %1645, 1
  %1648 = fsub fast float %1644, %1646
  %1649 = fdiv fast float %1648, %1647
  %1650 = call float @dx.op.unary.f32(i32 7, float %1649)  ; Saturate(value)
  %1651 = fmul fast float %1650, 2.000000e+00
  %1652 = fsub fast float 3.000000e+00, %1651
  %1653 = fmul fast float %1650, %1650
  %1654 = fmul fast float %1653, %1652
  %1655 = call float @dx.op.dot3.f32(i32 55, float %1633, float %1634, float %1635, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1656 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1655)  ; FMax(a,b)
  %1657 = fmul fast float %1656, 0x400C5BF8A0000000
  %1658 = fmul fast float %1654, %1607
  %1659 = fmul fast float %1658, %1657
  %1660 = fadd fast float %1659, %1576
  %1661 = fmul fast float %1654, %1608
  %1662 = fmul fast float %1661, %1657
  %1663 = fadd fast float %1662, %1575
  %1664 = fmul fast float %1654, %1609
  %1665 = fmul fast float %1664, %1657
  %1666 = fadd fast float %1665, %1574
  br label %1667

; <label>:1667                                    ; preds = %1632, %1573, %1498
  %1668 = phi float [ %1666, %1632 ], [ %1574, %1573 ], [ %1510, %1498 ]
  %1669 = phi float [ %1663, %1632 ], [ %1575, %1573 ], [ %1509, %1498 ]
  %1670 = phi float [ %1660, %1632 ], [ %1576, %1573 ], [ %1508, %1498 ]
  %1671 = fcmp fast ogt float %202, %1192
  %1672 = and i1 %1514, %1671
  %1673 = and i1 %1516, %1672
  %1674 = and i1 %1518, %1673
  %1675 = and i1 %1520, %1674
  br i1 %1675, label %1676, label %1733, !dx.controlflow.hints !83

; <label>:1676                                    ; preds = %1667
  %1677 = fmul fast float %1194, 0x3FC24924A0000000
  %1678 = fsub fast float %202, %1192
  %1679 = fdiv fast float %1678, %1677
  %1680 = call float @dx.op.unary.f32(i32 7, float %1679)  ; Saturate(value)
  %1681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %1682 = extractvalue %dx.types.CBufRet.f32 %1681, 0
  %1683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %1684 = extractvalue %dx.types.CBufRet.f32 %1683, 0
  %1685 = extractvalue %dx.types.CBufRet.f32 %1683, 1
  %1686 = extractvalue %dx.types.CBufRet.f32 %1683, 2
  %1687 = fsub fast float %1682, %1670
  %1688 = fsub fast float %1684, %1505
  %1689 = fsub fast float %1685, %1506
  %1690 = fsub fast float %1686, %1507
  %1691 = fmul fast float %1687, %1680
  %1692 = fmul fast float %1688, %1680
  %1693 = fmul fast float %1689, %1680
  %1694 = fmul fast float %1690, %1680
  %1695 = fadd fast float %1691, %1670
  %1696 = fadd fast float %1692, %1505
  %1697 = fadd fast float %1693, %1506
  %1698 = fadd fast float %1694, %1507
  %1699 = extractvalue %dx.types.CBufRet.f32 %1681, 1
  %1700 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %1701 = extractvalue %dx.types.CBufRet.f32 %1700, 0
  %1702 = extractvalue %dx.types.CBufRet.f32 %1700, 1
  %1703 = extractvalue %dx.types.CBufRet.f32 %1700, 2
  %1704 = fsub fast float %1699, %1669
  %1705 = fsub fast float %1701, %1502
  %1706 = fsub fast float %1702, %1503
  %1707 = fsub fast float %1703, %1504
  %1708 = fmul fast float %1704, %1680
  %1709 = fmul fast float %1705, %1680
  %1710 = fmul fast float %1706, %1680
  %1711 = fmul fast float %1707, %1680
  %1712 = fadd fast float %1708, %1669
  %1713 = fadd fast float %1709, %1502
  %1714 = fadd fast float %1710, %1503
  %1715 = fadd fast float %1711, %1504
  %1716 = extractvalue %dx.types.CBufRet.f32 %1681, 2
  %1717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %1718 = extractvalue %dx.types.CBufRet.f32 %1717, 0
  %1719 = extractvalue %dx.types.CBufRet.f32 %1717, 1
  %1720 = extractvalue %dx.types.CBufRet.f32 %1717, 2
  %1721 = fsub fast float %1716, %1668
  %1722 = fsub fast float %1718, %1499
  %1723 = fsub fast float %1719, %1500
  %1724 = fsub fast float %1720, %1501
  %1725 = fmul fast float %1721, %1680
  %1726 = fmul fast float %1722, %1680
  %1727 = fmul fast float %1723, %1680
  %1728 = fmul fast float %1724, %1680
  %1729 = fadd fast float %1725, %1668
  %1730 = fadd fast float %1726, %1499
  %1731 = fadd fast float %1727, %1500
  %1732 = fadd fast float %1728, %1501
  br label %1733

; <label>:1733                                    ; preds = %1676, %1667
  %1734 = phi float [ %1729, %1676 ], [ %1668, %1667 ]
  %1735 = phi float [ %1730, %1676 ], [ %1499, %1667 ]
  %1736 = phi float [ %1731, %1676 ], [ %1500, %1667 ]
  %1737 = phi float [ %1732, %1676 ], [ %1501, %1667 ]
  %1738 = phi float [ %1712, %1676 ], [ %1669, %1667 ]
  %1739 = phi float [ %1713, %1676 ], [ %1502, %1667 ]
  %1740 = phi float [ %1714, %1676 ], [ %1503, %1667 ]
  %1741 = phi float [ %1715, %1676 ], [ %1504, %1667 ]
  %1742 = phi float [ %1695, %1676 ], [ %1670, %1667 ]
  %1743 = phi float [ %1696, %1676 ], [ %1505, %1667 ]
  %1744 = phi float [ %1697, %1676 ], [ %1506, %1667 ]
  %1745 = phi float [ %1698, %1676 ], [ %1507, %1667 ]
  %1746 = extractvalue %dx.types.CBufRet.f32 %1317, 3
  %1747 = fmul fast float %1746, %1742
  %1748 = fmul fast float %1746, %1738
  %1749 = fmul fast float %1746, %1734
  %1750 = fmul fast float %1743, 1.500000e+00
  %1751 = fmul fast float %1750, %1746
  %1752 = fmul fast float %1744, 1.500000e+00
  %1753 = fmul fast float %1752, %1746
  %1754 = fmul fast float %1745, 1.500000e+00
  %1755 = fmul fast float %1754, %1746
  %1756 = fmul fast float %1739, 1.500000e+00
  %1757 = fmul fast float %1756, %1746
  %1758 = fmul fast float %1740, 1.500000e+00
  %1759 = fmul fast float %1758, %1746
  %1760 = fmul fast float %1741, 1.500000e+00
  %1761 = fmul fast float %1760, %1746
  %1762 = fmul fast float %1735, 1.500000e+00
  %1763 = fmul fast float %1762, %1746
  %1764 = fmul fast float %1736, 1.500000e+00
  %1765 = fmul fast float %1764, %1746
  %1766 = fmul fast float %1737, 1.500000e+00
  %1767 = fmul fast float %1766, %1746
  %1768 = fsub fast float %1157, %1747
  %1769 = fmul fast float %1768, %242
  %1770 = fadd fast float %1769, %1747
  %1771 = fsub fast float %1156, %1751
  %1772 = fmul fast float %1771, %242
  %1773 = fadd fast float %1772, %1751
  %1774 = fsub fast float %1155, %1753
  %1775 = fmul fast float %1774, %242
  %1776 = fadd fast float %1775, %1753
  %1777 = fsub fast float %1154, %1755
  %1778 = fmul fast float %1777, %242
  %1779 = fadd fast float %1778, %1755
  %1780 = fsub fast float %1153, %1748
  %1781 = fmul fast float %1780, %242
  %1782 = fadd fast float %1781, %1748
  %1783 = fsub fast float %1152, %1757
  %1784 = fmul fast float %1783, %242
  %1785 = fadd fast float %1784, %1757
  %1786 = fsub fast float %1151, %1759
  %1787 = fmul fast float %1786, %242
  %1788 = fadd fast float %1787, %1759
  %1789 = fsub fast float %1150, %1761
  %1790 = fmul fast float %1789, %242
  %1791 = fadd fast float %1790, %1761
  %1792 = fsub fast float %1149, %1749
  %1793 = fmul fast float %1792, %242
  %1794 = fadd fast float %1793, %1749
  %1795 = fsub fast float %1148, %1763
  %1796 = fmul fast float %1795, %242
  %1797 = fadd fast float %1796, %1763
  %1798 = fsub fast float %1147, %1765
  %1799 = fmul fast float %1798, %242
  %1800 = fadd fast float %1799, %1765
  %1801 = fsub fast float %1146, %1767
  %1802 = fmul fast float %1801, %242
  %1803 = fadd fast float %1802, %1767
  br label %1804

; <label>:1804                                    ; preds = %1733, %1145
  %1805 = phi float [ %1146, %1145 ], [ %1803, %1733 ]
  %1806 = phi float [ %1147, %1145 ], [ %1800, %1733 ]
  %1807 = phi float [ %1148, %1145 ], [ %1797, %1733 ]
  %1808 = phi float [ %1149, %1145 ], [ %1794, %1733 ]
  %1809 = phi float [ %1150, %1145 ], [ %1791, %1733 ]
  %1810 = phi float [ %1151, %1145 ], [ %1788, %1733 ]
  %1811 = phi float [ %1152, %1145 ], [ %1785, %1733 ]
  %1812 = phi float [ %1153, %1145 ], [ %1782, %1733 ]
  %1813 = phi float [ %1154, %1145 ], [ %1779, %1733 ]
  %1814 = phi float [ %1155, %1145 ], [ %1776, %1733 ]
  %1815 = phi float [ %1156, %1145 ], [ %1773, %1733 ]
  %1816 = phi float [ %1157, %1145 ], [ %1770, %1733 ]
  %1817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1818 = extractvalue %dx.types.CBufRet.f32 %1817, 0
  %1819 = extractvalue %dx.types.CBufRet.f32 %1817, 1
  %1820 = extractvalue %dx.types.CBufRet.f32 %1817, 2
  %1821 = fsub fast float %192, %1818
  %1822 = fsub fast float %197, %1819
  %1823 = fsub fast float %202, %1820
  %1824 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1825 = extractvalue %dx.types.CBufRet.i32 %1824, 2
  %1826 = icmp eq i32 %1825, 0
  br i1 %1826, label %2042, label %1827

; <label>:1827                                    ; preds = %1804
  br label %1828

; <label>:1828                                    ; preds = %2023, %1827
  %1829 = phi float [ %2024, %2023 ], [ 0.000000e+00, %1827 ]
  %1830 = phi float [ %2025, %2023 ], [ 0.000000e+00, %1827 ]
  %1831 = phi float [ %2026, %2023 ], [ 0.000000e+00, %1827 ]
  %1832 = phi float [ %2027, %2023 ], [ 0.000000e+00, %1827 ]
  %1833 = phi float [ %2028, %2023 ], [ 0.000000e+00, %1827 ]
  %1834 = phi float [ %2029, %2023 ], [ 0.000000e+00, %1827 ]
  %1835 = phi float [ %2030, %2023 ], [ 0.000000e+00, %1827 ]
  %1836 = phi float [ %2031, %2023 ], [ 0.000000e+00, %1827 ]
  %1837 = phi float [ %2032, %2023 ], [ 0.000000e+00, %1827 ]
  %1838 = phi float [ %2033, %2023 ], [ 0.000000e+00, %1827 ]
  %1839 = phi float [ %2034, %2023 ], [ 0.000000e+00, %1827 ]
  %1840 = phi float [ %2035, %2023 ], [ 0.000000e+00, %1827 ]
  %1841 = phi float [ %2036, %2023 ], [ 1.000000e+00, %1827 ]
  %1842 = phi i32 [ %2037, %2023 ], [ 0, %1827 ]
  %1843 = shl i32 %1842, 2
  %1844 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1843, i32 undef)  ; BufferLoad(srv,index,wot)
  %1845 = extractvalue %dx.types.ResRet.i32 %1844, 0
  %1846 = icmp ne i32 %1845, 0
  %1847 = fcmp fast ogt float %1841, 0.000000e+00
  %1848 = and i1 %1847, %1846
  br i1 %1848, label %1849, label %2023

; <label>:1849                                    ; preds = %1828
  br label %1850

; <label>:1850                                    ; preds = %2005, %1849
  %1851 = phi float [ %2006, %2005 ], [ %1829, %1849 ]
  %1852 = phi float [ %2007, %2005 ], [ %1830, %1849 ]
  %1853 = phi float [ %2008, %2005 ], [ %1831, %1849 ]
  %1854 = phi float [ %2009, %2005 ], [ %1832, %1849 ]
  %1855 = phi float [ %2010, %2005 ], [ %1833, %1849 ]
  %1856 = phi float [ %2011, %2005 ], [ %1834, %1849 ]
  %1857 = phi float [ %2012, %2005 ], [ %1835, %1849 ]
  %1858 = phi float [ %2013, %2005 ], [ %1836, %1849 ]
  %1859 = phi float [ %2014, %2005 ], [ %1837, %1849 ]
  %1860 = phi float [ %2015, %2005 ], [ %1838, %1849 ]
  %1861 = phi float [ %2016, %2005 ], [ %1839, %1849 ]
  %1862 = phi float [ %2017, %2005 ], [ %1840, %1849 ]
  %1863 = phi float [ %2018, %2005 ], [ %1841, %1849 ]
  %1864 = phi i32 [ %1868, %2005 ], [ %1845, %1849 ]
  %1865 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1864)  ; FirstbitLo(value)
  %1866 = and i32 %1865, 31
  %1867 = shl i32 1, %1866
  %1868 = xor i32 %1867, %1864
  %1869 = shl i32 %1842, 5
  %1870 = add i32 %1865, %1869
  %1871 = mul i32 %1870, 72
  %1872 = add i32 %1871, 12
  %1873 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1872, i32 undef)  ; BufferLoad(srv,index,wot)
  %1874 = extractvalue %dx.types.ResRet.i32 %1873, 0
  %1875 = add i32 %1871, 16
  %1876 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %1875, i32 undef)  ; BufferLoad(srv,index,wot)
  %1877 = extractvalue %dx.types.ResRet.f32 %1876, 0
  %1878 = extractvalue %dx.types.ResRet.f32 %1876, 1
  %1879 = extractvalue %dx.types.ResRet.f32 %1876, 2
  %1880 = mul i32 %1870, 60
  %1881 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %1880, i32 undef)  ; BufferLoad(srv,index,wot)
  %1882 = extractvalue %dx.types.ResRet.f32 %1881, 0
  %1883 = extractvalue %dx.types.ResRet.f32 %1881, 1
  %1884 = extractvalue %dx.types.ResRet.f32 %1881, 2
  %1885 = add i32 %1880, 12
  %1886 = add i32 %1880, 48
  %1887 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %1886, i32 undef)  ; BufferLoad(srv,index,wot)
  %1888 = extractvalue %dx.types.ResRet.f32 %1887, 0
  %1889 = extractvalue %dx.types.ResRet.f32 %1887, 1
  %1890 = extractvalue %dx.types.ResRet.f32 %1887, 2
  %1891 = and i32 %1874, 32767
  %1892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1893 = extractvalue %dx.types.CBufRet.f32 %1892, 0
  %1894 = extractvalue %dx.types.CBufRet.f32 %1892, 1
  %1895 = extractvalue %dx.types.CBufRet.f32 %1892, 2
  %1896 = fsub fast float %1882, %1893
  %1897 = fsub fast float %1883, %1894
  %1898 = fsub fast float %1884, %1895
  %1899 = fsub fast float %1821, %1896
  %1900 = fsub fast float %1822, %1897
  %1901 = fsub fast float %1823, %1898
  %1902 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %1885, i32 undef)  ; BufferLoad(srv,index,wot)
  %1903 = extractvalue %dx.types.ResRet.f32 %1902, 0
  %1904 = extractvalue %dx.types.ResRet.f32 %1902, 1
  %1905 = extractvalue %dx.types.ResRet.f32 %1902, 2
  %1906 = call float @dx.op.dot3.f32(i32 55, float %1899, float %1900, float %1901, float %1903, float %1904, float %1905)  ; Dot3(ax,ay,az,bx,by,bz)
  %1907 = add i32 %1880, 24
  %1908 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %1907, i32 undef)  ; BufferLoad(srv,index,wot)
  %1909 = extractvalue %dx.types.ResRet.f32 %1908, 0
  %1910 = extractvalue %dx.types.ResRet.f32 %1908, 1
  %1911 = extractvalue %dx.types.ResRet.f32 %1908, 2
  %1912 = call float @dx.op.dot3.f32(i32 55, float %1899, float %1900, float %1901, float %1909, float %1910, float %1911)  ; Dot3(ax,ay,az,bx,by,bz)
  %1913 = add i32 %1880, 36
  %1914 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %1913, i32 undef)  ; BufferLoad(srv,index,wot)
  %1915 = extractvalue %dx.types.ResRet.f32 %1914, 0
  %1916 = extractvalue %dx.types.ResRet.f32 %1914, 1
  %1917 = extractvalue %dx.types.ResRet.f32 %1914, 2
  %1918 = call float @dx.op.dot3.f32(i32 55, float %1899, float %1900, float %1901, float %1915, float %1916, float %1917)  ; Dot3(ax,ay,az,bx,by,bz)
  %1919 = call float @dx.op.unary.f32(i32 6, float %1906)  ; FAbs(value)
  %1920 = call float @dx.op.unary.f32(i32 6, float %1912)  ; FAbs(value)
  %1921 = call float @dx.op.unary.f32(i32 6, float %1918)  ; FAbs(value)
  %1922 = fsub fast float %1888, %1919
  %1923 = fsub fast float %1889, %1920
  %1924 = fsub fast float %1890, %1921
  %1925 = fmul fast float %1922, %1877
  %1926 = fmul fast float %1923, %1878
  %1927 = fmul fast float %1924, %1879
  %1928 = call float @dx.op.binary.f32(i32 36, float %1926, float %1927)  ; FMin(a,b)
  %1929 = call float @dx.op.binary.f32(i32 36, float %1925, float %1928)  ; FMin(a,b)
  %1930 = call float @dx.op.unary.f32(i32 7, float %1929)  ; Saturate(value)
  %1931 = call float @dx.op.binary.f32(i32 36, float %1863, float %1930)  ; FMin(a,b)
  %1932 = fcmp fast ogt float %1931, 0.000000e+00
  br i1 %1932, label %1933, label %2005, !dx.controlflow.hints !84

; <label>:1933                                    ; preds = %1850
  %1934 = lshr i32 %1874, 16
  %1935 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1934)  ; LegacyF16ToF32(value)
  %1936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 141)  ; CBufferLoadLegacy(handle,regIndex)
  %1937 = extractvalue %dx.types.CBufRet.f32 %1936, 3
  %1938 = bitcast float %1937 to i32
  %1939 = add i32 %1938, %1891
  %1940 = mul i32 %1939, 36
  %1941 = shl i32 %1938, 1
  %1942 = add i32 %1941, %1891
  %1943 = mul i32 %1942, 36
  %1944 = mul i32 %1938, 3
  %1945 = add i32 %1944, %1891
  %1946 = mul i32 %1945, 36
  %1947 = fmul fast float %1935, %1931
  %1948 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1940, i32 undef)  ; BufferLoad(srv,index,wot)
  %1949 = extractvalue %dx.types.ResRet.f32 %1948, 0
  %1950 = fmul fast float %1949, %1947
  %1951 = fadd fast float %1950, %1862
  %1952 = add i32 %1940, 4
  %1953 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1952, i32 undef)  ; BufferLoad(srv,index,wot)
  %1954 = extractvalue %dx.types.ResRet.f32 %1953, 0
  %1955 = fmul fast float %1954, %1947
  %1956 = fadd fast float %1955, %1861
  %1957 = add i32 %1940, 8
  %1958 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1957, i32 undef)  ; BufferLoad(srv,index,wot)
  %1959 = extractvalue %dx.types.ResRet.f32 %1958, 0
  %1960 = fmul fast float %1959, %1947
  %1961 = fadd fast float %1960, %1860
  %1962 = add i32 %1940, 12
  %1963 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1962, i32 undef)  ; BufferLoad(srv,index,wot)
  %1964 = extractvalue %dx.types.ResRet.f32 %1963, 0
  %1965 = fmul fast float %1964, %1947
  %1966 = fadd fast float %1965, %1859
  %1967 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1943, i32 undef)  ; BufferLoad(srv,index,wot)
  %1968 = extractvalue %dx.types.ResRet.f32 %1967, 0
  %1969 = fmul fast float %1968, %1947
  %1970 = fadd fast float %1969, %1858
  %1971 = add i32 %1943, 4
  %1972 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1971, i32 undef)  ; BufferLoad(srv,index,wot)
  %1973 = extractvalue %dx.types.ResRet.f32 %1972, 0
  %1974 = fmul fast float %1973, %1947
  %1975 = fadd fast float %1974, %1857
  %1976 = add i32 %1943, 8
  %1977 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1976, i32 undef)  ; BufferLoad(srv,index,wot)
  %1978 = extractvalue %dx.types.ResRet.f32 %1977, 0
  %1979 = fmul fast float %1978, %1947
  %1980 = fadd fast float %1979, %1856
  %1981 = add i32 %1943, 12
  %1982 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1981, i32 undef)  ; BufferLoad(srv,index,wot)
  %1983 = extractvalue %dx.types.ResRet.f32 %1982, 0
  %1984 = fmul fast float %1983, %1947
  %1985 = fadd fast float %1984, %1855
  %1986 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1946, i32 undef)  ; BufferLoad(srv,index,wot)
  %1987 = extractvalue %dx.types.ResRet.f32 %1986, 0
  %1988 = fmul fast float %1987, %1947
  %1989 = fadd fast float %1988, %1854
  %1990 = add i32 %1946, 4
  %1991 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1990, i32 undef)  ; BufferLoad(srv,index,wot)
  %1992 = extractvalue %dx.types.ResRet.f32 %1991, 0
  %1993 = fmul fast float %1992, %1947
  %1994 = fadd fast float %1993, %1853
  %1995 = add i32 %1946, 8
  %1996 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1995, i32 undef)  ; BufferLoad(srv,index,wot)
  %1997 = extractvalue %dx.types.ResRet.f32 %1996, 0
  %1998 = fmul fast float %1997, %1947
  %1999 = fadd fast float %1998, %1852
  %2000 = add i32 %1946, 12
  %2001 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2000, i32 undef)  ; BufferLoad(srv,index,wot)
  %2002 = extractvalue %dx.types.ResRet.f32 %2001, 0
  %2003 = fmul fast float %2002, %1947
  %2004 = fadd fast float %2003, %1851
  br label %2005

; <label>:2005                                    ; preds = %1933, %1850
  %2006 = phi float [ %2004, %1933 ], [ %1851, %1850 ]
  %2007 = phi float [ %1999, %1933 ], [ %1852, %1850 ]
  %2008 = phi float [ %1994, %1933 ], [ %1853, %1850 ]
  %2009 = phi float [ %1989, %1933 ], [ %1854, %1850 ]
  %2010 = phi float [ %1985, %1933 ], [ %1855, %1850 ]
  %2011 = phi float [ %1980, %1933 ], [ %1856, %1850 ]
  %2012 = phi float [ %1975, %1933 ], [ %1857, %1850 ]
  %2013 = phi float [ %1970, %1933 ], [ %1858, %1850 ]
  %2014 = phi float [ %1966, %1933 ], [ %1859, %1850 ]
  %2015 = phi float [ %1961, %1933 ], [ %1860, %1850 ]
  %2016 = phi float [ %1956, %1933 ], [ %1861, %1850 ]
  %2017 = phi float [ %1951, %1933 ], [ %1862, %1850 ]
  %2018 = fsub fast float %1863, %1931
  %2019 = icmp ne i32 %1864, %1867
  %2020 = fcmp fast ogt float %2018, 0.000000e+00
  %2021 = and i1 %2019, %2020
  br i1 %2021, label %1850, label %2022

; <label>:2022                                    ; preds = %2005
  br label %2023

; <label>:2023                                    ; preds = %2022, %1828
  %2024 = phi float [ %1829, %1828 ], [ %2006, %2022 ]
  %2025 = phi float [ %1830, %1828 ], [ %2007, %2022 ]
  %2026 = phi float [ %1831, %1828 ], [ %2008, %2022 ]
  %2027 = phi float [ %1832, %1828 ], [ %2009, %2022 ]
  %2028 = phi float [ %1833, %1828 ], [ %2010, %2022 ]
  %2029 = phi float [ %1834, %1828 ], [ %2011, %2022 ]
  %2030 = phi float [ %1835, %1828 ], [ %2012, %2022 ]
  %2031 = phi float [ %1836, %1828 ], [ %2013, %2022 ]
  %2032 = phi float [ %1837, %1828 ], [ %2014, %2022 ]
  %2033 = phi float [ %1838, %1828 ], [ %2015, %2022 ]
  %2034 = phi float [ %1839, %1828 ], [ %2016, %2022 ]
  %2035 = phi float [ %1840, %1828 ], [ %2017, %2022 ]
  %2036 = phi float [ %1841, %1828 ], [ %2018, %2022 ]
  %2037 = add i32 %1842, 1
  %2038 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2039 = extractvalue %dx.types.CBufRet.i32 %2038, 2
  %2040 = icmp ult i32 %2037, %2039
  br i1 %2040, label %1828, label %2041

; <label>:2041                                    ; preds = %2023
  br label %2042

; <label>:2042                                    ; preds = %2041, %1804
  %2043 = phi float [ 0.000000e+00, %1804 ], [ %2024, %2041 ]
  %2044 = phi float [ 0.000000e+00, %1804 ], [ %2025, %2041 ]
  %2045 = phi float [ 0.000000e+00, %1804 ], [ %2026, %2041 ]
  %2046 = phi float [ 0.000000e+00, %1804 ], [ %2027, %2041 ]
  %2047 = phi float [ 0.000000e+00, %1804 ], [ %2028, %2041 ]
  %2048 = phi float [ 0.000000e+00, %1804 ], [ %2029, %2041 ]
  %2049 = phi float [ 0.000000e+00, %1804 ], [ %2030, %2041 ]
  %2050 = phi float [ 0.000000e+00, %1804 ], [ %2031, %2041 ]
  %2051 = phi float [ 0.000000e+00, %1804 ], [ %2032, %2041 ]
  %2052 = phi float [ 0.000000e+00, %1804 ], [ %2033, %2041 ]
  %2053 = phi float [ 0.000000e+00, %1804 ], [ %2034, %2041 ]
  %2054 = phi float [ 0.000000e+00, %1804 ], [ %2035, %2041 ]
  %2055 = phi float [ 1.000000e+00, %1804 ], [ %2036, %2041 ]
  %2056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2057 = extractvalue %dx.types.CBufRet.f32 %2056, 3
  %2058 = fdiv fast float 1.000000e+00, %2057
  %2059 = fmul fast float %2058, %2054
  %2060 = fmul fast float %2058, %2053
  %2061 = fmul fast float %2058, %2052
  %2062 = fmul fast float %2058, %2051
  %2063 = fmul fast float %2058, %2050
  %2064 = fmul fast float %2058, %2049
  %2065 = fmul fast float %2058, %2048
  %2066 = fmul fast float %2058, %2047
  %2067 = fmul fast float %2058, %2046
  %2068 = fmul fast float %2058, %2045
  %2069 = fmul fast float %2058, %2044
  %2070 = fmul fast float %2058, %2043
  %2071 = fmul fast float %2055, %1816
  %2072 = fadd fast float %2059, %2071
  %2073 = fmul fast float %2055, %1815
  %2074 = fadd fast float %2060, %2073
  %2075 = fmul fast float %2055, %1814
  %2076 = fadd fast float %2061, %2075
  %2077 = fmul fast float %2055, %1813
  %2078 = fadd fast float %2062, %2077
  %2079 = fmul fast float %2055, %1812
  %2080 = fadd fast float %2063, %2079
  %2081 = fmul fast float %2055, %1811
  %2082 = fadd fast float %2064, %2081
  %2083 = fmul fast float %2055, %1810
  %2084 = fadd fast float %2065, %2083
  %2085 = fmul fast float %2055, %1809
  %2086 = fadd fast float %2066, %2085
  %2087 = fmul fast float %2055, %1808
  %2088 = fadd fast float %2067, %2087
  %2089 = fmul fast float %2055, %1807
  %2090 = fadd fast float %2068, %2089
  %2091 = fmul fast float %2055, %1806
  %2092 = fadd fast float %2069, %2091
  %2093 = fmul fast float %2055, %1805
  %2094 = fadd fast float %2070, %2093
  %2095 = fmul fast float %2072, %2057
  %2096 = fmul fast float %2074, %2057
  %2097 = fmul fast float %2076, %2057
  %2098 = fmul fast float %2078, %2057
  %2099 = extractvalue %dx.types.CBufRet.f32 %2056, 0
  %2100 = fmul fast float %2095, %2099
  %2101 = fmul fast float %2096, %2099
  %2102 = fmul fast float %2097, %2099
  %2103 = fmul fast float %2098, %2099
  %2104 = fmul fast float %2057, %2080
  %2105 = fmul fast float %2057, %2082
  %2106 = fmul fast float %2057, %2084
  %2107 = fmul fast float %2057, %2086
  %2108 = fmul fast float %2104, %2099
  %2109 = fmul fast float %2105, %2099
  %2110 = fmul fast float %2106, %2099
  %2111 = fmul fast float %2107, %2099
  %2112 = fmul fast float %2057, %2088
  %2113 = fmul fast float %2057, %2090
  %2114 = fmul fast float %2057, %2092
  %2115 = fmul fast float %2057, %2094
  %2116 = fmul fast float %2112, %2099
  %2117 = fmul fast float %2113, %2099
  %2118 = fmul fast float %2114, %2099
  %2119 = fmul fast float %2115, %2099
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %170, i32 %171, i32 0, float %2100, float %2101, float %2102, float %2103, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %170, i32 %171, i32 1, float %2108, float %2109, float %2110, float %2111, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %170, i32 %171, i32 2, float %2116, float %2117, float %2118, float %2119, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %2120 = add i32 %171, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %170, i32 %2120, i32 0, float %2100, float %2101, float %2102, float %2103, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %170, i32 %2120, i32 1, float %2108, float %2109, float %2110, float %2111, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %170, i32 %2120, i32 2, float %2116, float %2117, float %2118, float %2119, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %2121 = add i32 %170, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %2121, i32 %171, i32 0, float %2100, float %2101, float %2102, float %2103, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %2121, i32 %171, i32 1, float %2108, float %2109, float %2110, float %2111, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %2121, i32 %171, i32 2, float %2116, float %2117, float %2118, float %2119, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %2121, i32 %2120, i32 0, float %2100, float %2101, float %2102, float %2103, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %2121, i32 %2120, i32 1, float %2108, float %2109, float %2110, float %2111, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %2121, i32 %2120, i32 2, float %2116, float %2117, float %2118, float %2119, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2122

; <label>:2122                                    ; preds = %2042, %0
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
!40 = !{void ()* @cs_del_sh_sample_lightgrid_reflection_volumes_4_lowres, !"cs_del_sh_sample_lightgrid_reflection_volumes_4_lowres", null, !4, !41}
!41 = !{i32 0, i64 272, i32 4, !42}
!42 = !{i32 16, i32 2, i32 2}
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

