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
; shader hash: 9408d11608c37ce73274e10f154d88a9
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
  %38 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %37, i32 0)  ; BufferLoad(srv,index,wot)
  %39 = extractvalue %dx.types.ResRet.i32 %38, 0
  %40 = icmp ult i32 %29, %39
  br i1 %40, label %41, label %2727, !dx.controlflow.hints !43

; <label>:41                                      ; preds = %0
  %42 = add i32 %37, 3
  %43 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 %42)  ; CBufferLoadLegacy(handle,regIndex)
  %44 = extractvalue %dx.types.CBufRet.i32 %43, 2
  %45 = add i32 %44, %29
  %46 = shl i32 %45, 5
  %47 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %46, i32 undef)  ; BufferLoad(srv,index,wot)
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
  br i1 %59, label %99, label %60, !dx.controlflow.hints !44

; <label>:60                                      ; preds = %41
  %61 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %62 = extractvalue %dx.types.CBufRet.f32 %61, 2
  %63 = extractvalue %dx.types.CBufRet.f32 %61, 3
  %64 = fmul fast float %62, %55
  %65 = fmul fast float %63, %56
  %66 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %67 = extractvalue %dx.types.CBufRet.f32 %66, 0
  %68 = extractvalue %dx.types.CBufRet.f32 %66, 1
  %69 = fadd fast float %64, %67
  %70 = fadd fast float %65, %68
  %71 = call float @dx.op.unary.f32(i32 7, float %69)  ; Saturate(value)
  %72 = call float @dx.op.unary.f32(i32 7, float %70)  ; Saturate(value)
  %73 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %25, float %71, float %72, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %74 = extractvalue %dx.types.ResRet.f32 %73, 0
  %75 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
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
  %88 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
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
  %104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %103, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %171 = add i32 %53, %30
  %172 = add i32 %54, %31
  %173 = uitofp i32 %30 to float
  %174 = uitofp i32 %31 to float
  %175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
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
  %203 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %204 = extractvalue %dx.types.CBufRet.i32 %203, 0
  %205 = icmp eq i32 %204, 1
  br i1 %205, label %206, label %241, !dx.controlflow.hints !45

; <label>:206                                     ; preds = %99
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

; <label>:241                                     ; preds = %235, %223, %206, %99
  %242 = phi float [ 1.000000e+00, %99 ], [ %240, %235 ], [ %218, %206 ], [ 0.000000e+00, %223 ]
  %243 = fcmp fast ogt float %242, 0.000000e+00
  br i1 %243, label %244, label %1335, !dx.controlflow.hints !48

; <label>:244                                     ; preds = %241
  %245 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %246 = extractvalue %dx.types.CBufRet.i32 %245, 2
  %247 = extractvalue %dx.types.CBufRet.i32 %245, 1
  %248 = extractvalue %dx.types.CBufRet.i32 %245, 0
  %249 = getelementptr inbounds [4 x float], [4 x float]* %33, i32 0, i32 0
  store float 0.000000e+00, float* %249, align 4
  %250 = getelementptr inbounds [4 x float], [4 x float]* %33, i32 0, i32 1
  store float 0.000000e+00, float* %250, align 4
  %251 = getelementptr inbounds [4 x float], [4 x float]* %33, i32 0, i32 2
  store float 0.000000e+00, float* %251, align 4
  %252 = getelementptr inbounds [4 x float], [4 x float]* %33, i32 0, i32 3
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
  br i1 %566, label %567, label %640, !dx.controlflow.hints !57

; <label>:567                                     ; preds = %552
  %568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %569 = extractvalue %dx.types.ResRet.i32 %568, 0
  %570 = extractvalue %dx.types.ResRet.i32 %568, 1
  %571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %572 = extractvalue %dx.types.ResRet.i32 %571, 0
  %573 = extractvalue %dx.types.ResRet.i32 %571, 1
  %574 = extractvalue %dx.types.ResRet.i32 %571, 2
  %575 = extractvalue %dx.types.ResRet.i32 %571, 3
  %576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %577 = extractvalue %dx.types.ResRet.i32 %576, 0
  %578 = extractvalue %dx.types.ResRet.i32 %576, 1
  %579 = extractvalue %dx.types.ResRet.i32 %576, 2
  %580 = extractvalue %dx.types.ResRet.i32 %576, 3
  %581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %582 = extractvalue %dx.types.ResRet.i32 %581, 0
  %583 = extractvalue %dx.types.ResRet.i32 %581, 1
  %584 = extractvalue %dx.types.ResRet.i32 %581, 2
  %585 = extractvalue %dx.types.ResRet.i32 %581, 3
  %586 = and i32 %582, 65535
  %587 = call float @dx.op.legacyF16ToF32(i32 131, i32 %586)  ; LegacyF16ToF32(value)
  %588 = lshr i32 %582, 16
  %589 = call float @dx.op.legacyF16ToF32(i32 131, i32 %588)  ; LegacyF16ToF32(value)
  %590 = and i32 %583, 65535
  %591 = call float @dx.op.legacyF16ToF32(i32 131, i32 %590)  ; LegacyF16ToF32(value)
  %592 = lshr i32 %583, 16
  %593 = call float @dx.op.legacyF16ToF32(i32 131, i32 %592)  ; LegacyF16ToF32(value)
  %594 = and i32 %584, 65535
  %595 = call float @dx.op.legacyF16ToF32(i32 131, i32 %594)  ; LegacyF16ToF32(value)
  %596 = lshr i32 %584, 16
  %597 = call float @dx.op.legacyF16ToF32(i32 131, i32 %596)  ; LegacyF16ToF32(value)
  %598 = and i32 %585, 65535
  %599 = call float @dx.op.legacyF16ToF32(i32 131, i32 %598)  ; LegacyF16ToF32(value)
  %600 = lshr i32 %585, 16
  %601 = call float @dx.op.legacyF16ToF32(i32 131, i32 %600)  ; LegacyF16ToF32(value)
  %602 = and i32 %577, 65535
  %603 = call float @dx.op.legacyF16ToF32(i32 131, i32 %602)  ; LegacyF16ToF32(value)
  %604 = lshr i32 %577, 16
  %605 = call float @dx.op.legacyF16ToF32(i32 131, i32 %604)  ; LegacyF16ToF32(value)
  %606 = and i32 %578, 65535
  %607 = call float @dx.op.legacyF16ToF32(i32 131, i32 %606)  ; LegacyF16ToF32(value)
  %608 = lshr i32 %578, 16
  %609 = call float @dx.op.legacyF16ToF32(i32 131, i32 %608)  ; LegacyF16ToF32(value)
  %610 = and i32 %579, 65535
  %611 = call float @dx.op.legacyF16ToF32(i32 131, i32 %610)  ; LegacyF16ToF32(value)
  %612 = lshr i32 %579, 16
  %613 = call float @dx.op.legacyF16ToF32(i32 131, i32 %612)  ; LegacyF16ToF32(value)
  %614 = and i32 %580, 65535
  %615 = call float @dx.op.legacyF16ToF32(i32 131, i32 %614)  ; LegacyF16ToF32(value)
  %616 = lshr i32 %580, 16
  %617 = call float @dx.op.legacyF16ToF32(i32 131, i32 %616)  ; LegacyF16ToF32(value)
  %618 = and i32 %572, 65535
  %619 = call float @dx.op.legacyF16ToF32(i32 131, i32 %618)  ; LegacyF16ToF32(value)
  %620 = lshr i32 %572, 16
  %621 = call float @dx.op.legacyF16ToF32(i32 131, i32 %620)  ; LegacyF16ToF32(value)
  %622 = and i32 %573, 65535
  %623 = call float @dx.op.legacyF16ToF32(i32 131, i32 %622)  ; LegacyF16ToF32(value)
  %624 = lshr i32 %573, 16
  %625 = call float @dx.op.legacyF16ToF32(i32 131, i32 %624)  ; LegacyF16ToF32(value)
  %626 = and i32 %574, 65535
  %627 = call float @dx.op.legacyF16ToF32(i32 131, i32 %626)  ; LegacyF16ToF32(value)
  %628 = lshr i32 %574, 16
  %629 = call float @dx.op.legacyF16ToF32(i32 131, i32 %628)  ; LegacyF16ToF32(value)
  %630 = and i32 %575, 65535
  %631 = call float @dx.op.legacyF16ToF32(i32 131, i32 %630)  ; LegacyF16ToF32(value)
  %632 = lshr i32 %575, 16
  %633 = call float @dx.op.legacyF16ToF32(i32 131, i32 %632)  ; LegacyF16ToF32(value)
  %634 = and i32 %569, 65535
  %635 = call float @dx.op.legacyF16ToF32(i32 131, i32 %634)  ; LegacyF16ToF32(value)
  %636 = lshr i32 %569, 16
  %637 = call float @dx.op.legacyF16ToF32(i32 131, i32 %636)  ; LegacyF16ToF32(value)
  %638 = and i32 %570, 65535
  %639 = call float @dx.op.legacyF16ToF32(i32 131, i32 %638)  ; LegacyF16ToF32(value)
  br label %1335

; <label>:640                                     ; preds = %552
  %641 = shl nsw i32 %553, 4
  %642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %641, i32 undef)  ; BufferLoad(srv,index,wot)
  %643 = extractvalue %dx.types.ResRet.i32 %642, 0
  %644 = extractvalue %dx.types.ResRet.i32 %642, 1
  %645 = extractvalue %dx.types.ResRet.i32 %642, 2
  %646 = extractvalue %dx.types.ResRet.i32 %642, 3
  %647 = getelementptr inbounds [4 x i32], [4 x i32]* %34, i32 0, i32 0
  store i32 %643, i32* %647, align 4
  %648 = getelementptr inbounds [4 x i32], [4 x i32]* %34, i32 0, i32 1
  store i32 %644, i32* %648, align 4
  %649 = getelementptr inbounds [4 x i32], [4 x i32]* %34, i32 0, i32 2
  store i32 %645, i32* %649, align 4
  %650 = getelementptr inbounds [4 x i32], [4 x i32]* %34, i32 0, i32 3
  store i32 %646, i32* %650, align 4
  %651 = getelementptr inbounds [4 x float], [4 x float]* %35, i32 0, i32 0
  store float 0.000000e+00, float* %651, align 4
  %652 = getelementptr inbounds [4 x float], [4 x float]* %35, i32 0, i32 1
  store float 0.000000e+00, float* %652, align 4
  %653 = getelementptr inbounds [4 x float], [4 x float]* %35, i32 0, i32 2
  store float 0.000000e+00, float* %653, align 4
  %654 = getelementptr inbounds [4 x float], [4 x float]* %35, i32 0, i32 3
  store float 0.000000e+00, float* %654, align 4
  %655 = icmp slt i32 %643, 0
  br i1 %655, label %656, label %746, !dx.controlflow.hints !58

; <label>:656                                     ; preds = %640
  %657 = fsub fast float 1.000000e+00, %562
  %658 = fdiv fast float 1.000000e+00, %657
  %659 = shl nsw i32 %553, 6
  %660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %659, i32 undef)  ; BufferLoad(srv,index,wot)
  %661 = extractvalue %dx.types.ResRet.i32 %660, 0
  %662 = extractvalue %dx.types.ResRet.i32 %660, 1
  %663 = extractvalue %dx.types.ResRet.i32 %660, 2
  %664 = extractvalue %dx.types.ResRet.i32 %660, 3
  %665 = fmul fast float %658, %565
  %666 = fmul fast float %658, %563
  %667 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i32 0, i32 0
  store i32 %661, i32* %667, align 4
  %668 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i32 0, i32 1
  store i32 %662, i32* %668, align 4
  %669 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i32 0, i32 2
  store i32 %663, i32* %669, align 4
  %670 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i32 0, i32 3
  store i32 %664, i32* %670, align 4
  %671 = fmul fast float %666, 4.000000e+00
  %672 = call float @dx.op.unary.f32(i32 27, float %671)  ; Round_ni(value)
  %673 = fmul fast float %665, 4.000000e+00
  %674 = call float @dx.op.unary.f32(i32 27, float %673)  ; Round_ni(value)
  %675 = fsub fast float 1.100000e+01, %672
  %676 = fmul fast float %672, 5.000000e-01
  %677 = fmul fast float %676, %675
  %678 = fadd fast float %674, 5.000000e-01
  %679 = fadd fast float %678, %677
  %680 = fptosi float %679 to i32
  %681 = fptosi float %672 to i32
  %682 = sub nsw i32 5, %681
  %683 = fmul fast float %674, 2.500000e-01
  %684 = fmul fast float %672, 2.500000e-01
  %685 = add nsw i32 %680, 1
  %686 = add nsw i32 %680, %682
  %687 = fsub fast float %665, %683
  %688 = fmul fast float %687, 4.000000e+00
  %689 = fsub fast float %666, %684
  %690 = fmul fast float %689, 4.000000e+00
  %691 = fadd fast float %687, %689
  %692 = fmul fast float %691, 4.000000e+00
  %693 = fcmp fast ogt float %692, 1.000000e+00
  br i1 %693, label %694, label %700, !dx.controlflow.hints !59

; <label>:694                                     ; preds = %656
  %695 = add nsw i32 %686, 1
  %696 = fadd fast float %690, -1.000000e+00
  %697 = fsub fast float -0.000000e+00, %696
  %698 = fadd fast float %688, -1.000000e+00
  %699 = fsub fast float -0.000000e+00, %698
  br label %700

; <label>:700                                     ; preds = %694, %656
  %701 = phi i32 [ %695, %694 ], [ %680, %656 ]
  %702 = phi i32 [ %685, %694 ], [ %686, %656 ]
  %703 = phi i32 [ %686, %694 ], [ %685, %656 ]
  %704 = phi float [ %699, %694 ], [ %690, %656 ]
  %705 = phi float [ %697, %694 ], [ %688, %656 ]
  %706 = fsub fast float 1.000000e+00, %704
  %707 = fsub fast float %706, %705
  %708 = lshr i32 %703, 2
  %709 = getelementptr [4 x i32], [4 x i32]* %32, i32 0, i32 %708
  %710 = load i32, i32* %709, align 4, !tbaa !60, !noalias !64
  %711 = shl i32 %703, 3
  %712 = and i32 %711, 24
  %713 = lshr i32 %710, %712
  %714 = and i32 %713, 255
  %715 = sitofp i32 %714 to float
  %716 = fmul fast float %705, 0x3F70101020000000
  %717 = fmul fast float %716, %715
  %718 = lshr i32 %702, 2
  %719 = getelementptr [4 x i32], [4 x i32]* %32, i32 0, i32 %718
  %720 = load i32, i32* %719, align 4, !tbaa !60, !noalias !64
  %721 = shl i32 %702, 3
  %722 = and i32 %721, 24
  %723 = lshr i32 %720, %722
  %724 = and i32 %723, 255
  %725 = sitofp i32 %724 to float
  %726 = fmul fast float %704, 0x3F70101020000000
  %727 = fmul fast float %726, %725
  %728 = lshr i32 %701, 2
  %729 = getelementptr [4 x i32], [4 x i32]* %32, i32 0, i32 %728
  %730 = load i32, i32* %729, align 4, !tbaa !60, !noalias !64
  %731 = shl i32 %701, 3
  %732 = and i32 %731, 24
  %733 = lshr i32 %730, %732
  %734 = and i32 %733, 255
  %735 = sitofp i32 %734 to float
  %736 = fmul fast float %707, 0x3F70101020000000
  %737 = fmul fast float %736, %735
  %738 = fsub fast float 1.000000e+00, %717
  %739 = fsub fast float %738, %727
  %740 = fsub fast float %739, %737
  %741 = fmul fast float %562, 2.000000e+01
  %742 = fadd fast float %741, 1.000000e+00
  %743 = fmul fast float %740, 2.000000e+01
  %744 = fsub fast float %742, %743
  %745 = call float @dx.op.unary.f32(i32 7, float %744)  ; Saturate(value)
  br label %746

; <label>:746                                     ; preds = %700, %640
  %747 = phi float [ %745, %700 ], [ 1.000000e+00, %640 ]
  store float %747, float* %651, align 4, !tbaa !72, !noalias !64
  %748 = icmp slt i32 %644, 0
  br i1 %748, label %749, label %840, !dx.controlflow.hints !58

; <label>:749                                     ; preds = %746
  %750 = fsub fast float 1.000000e+00, %563
  %751 = fdiv fast float 1.000000e+00, %750
  %752 = shl i32 %553, 6
  %753 = or i32 %752, 16
  %754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %753, i32 undef)  ; BufferLoad(srv,index,wot)
  %755 = extractvalue %dx.types.ResRet.i32 %754, 0
  %756 = extractvalue %dx.types.ResRet.i32 %754, 1
  %757 = extractvalue %dx.types.ResRet.i32 %754, 2
  %758 = extractvalue %dx.types.ResRet.i32 %754, 3
  %759 = fmul fast float %751, %562
  %760 = fmul fast float %751, %565
  %761 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i32 0, i32 0
  store i32 %755, i32* %761, align 4
  %762 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i32 0, i32 1
  store i32 %756, i32* %762, align 4
  %763 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i32 0, i32 2
  store i32 %757, i32* %763, align 4
  %764 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i32 0, i32 3
  store i32 %758, i32* %764, align 4
  %765 = fmul fast float %760, 4.000000e+00
  %766 = call float @dx.op.unary.f32(i32 27, float %765)  ; Round_ni(value)
  %767 = fmul fast float %759, 4.000000e+00
  %768 = call float @dx.op.unary.f32(i32 27, float %767)  ; Round_ni(value)
  %769 = fsub fast float 1.100000e+01, %766
  %770 = fmul fast float %766, 5.000000e-01
  %771 = fmul fast float %770, %769
  %772 = fadd fast float %768, 5.000000e-01
  %773 = fadd fast float %772, %771
  %774 = fptosi float %773 to i32
  %775 = fptosi float %766 to i32
  %776 = sub nsw i32 5, %775
  %777 = fmul fast float %768, 2.500000e-01
  %778 = fmul fast float %766, 2.500000e-01
  %779 = add nsw i32 %774, 1
  %780 = add nsw i32 %774, %776
  %781 = fsub fast float %759, %777
  %782 = fmul fast float %781, 4.000000e+00
  %783 = fsub fast float %760, %778
  %784 = fmul fast float %783, 4.000000e+00
  %785 = fadd fast float %781, %783
  %786 = fmul fast float %785, 4.000000e+00
  %787 = fcmp fast ogt float %786, 1.000000e+00
  br i1 %787, label %788, label %794, !dx.controlflow.hints !59

; <label>:788                                     ; preds = %749
  %789 = add nsw i32 %780, 1
  %790 = fadd fast float %784, -1.000000e+00
  %791 = fsub fast float -0.000000e+00, %790
  %792 = fadd fast float %782, -1.000000e+00
  %793 = fsub fast float -0.000000e+00, %792
  br label %794

; <label>:794                                     ; preds = %788, %749
  %795 = phi i32 [ %789, %788 ], [ %774, %749 ]
  %796 = phi i32 [ %779, %788 ], [ %780, %749 ]
  %797 = phi i32 [ %780, %788 ], [ %779, %749 ]
  %798 = phi float [ %793, %788 ], [ %784, %749 ]
  %799 = phi float [ %791, %788 ], [ %782, %749 ]
  %800 = fsub fast float 1.000000e+00, %798
  %801 = fsub fast float %800, %799
  %802 = lshr i32 %797, 2
  %803 = getelementptr [4 x i32], [4 x i32]* %32, i32 0, i32 %802
  %804 = load i32, i32* %803, align 4, !tbaa !60, !noalias !64
  %805 = shl i32 %797, 3
  %806 = and i32 %805, 24
  %807 = lshr i32 %804, %806
  %808 = and i32 %807, 255
  %809 = sitofp i32 %808 to float
  %810 = fmul fast float %799, 0x3F70101020000000
  %811 = fmul fast float %810, %809
  %812 = lshr i32 %796, 2
  %813 = getelementptr [4 x i32], [4 x i32]* %32, i32 0, i32 %812
  %814 = load i32, i32* %813, align 4, !tbaa !60, !noalias !64
  %815 = shl i32 %796, 3
  %816 = and i32 %815, 24
  %817 = lshr i32 %814, %816
  %818 = and i32 %817, 255
  %819 = sitofp i32 %818 to float
  %820 = fmul fast float %798, 0x3F70101020000000
  %821 = fmul fast float %820, %819
  %822 = lshr i32 %795, 2
  %823 = getelementptr [4 x i32], [4 x i32]* %32, i32 0, i32 %822
  %824 = load i32, i32* %823, align 4, !tbaa !60, !noalias !64
  %825 = shl i32 %795, 3
  %826 = and i32 %825, 24
  %827 = lshr i32 %824, %826
  %828 = and i32 %827, 255
  %829 = sitofp i32 %828 to float
  %830 = fmul fast float %801, 0x3F70101020000000
  %831 = fmul fast float %830, %829
  %832 = fsub fast float 1.000000e+00, %811
  %833 = fsub fast float %832, %821
  %834 = fsub fast float %833, %831
  %835 = fmul fast float %563, 2.000000e+01
  %836 = fadd fast float %835, 1.000000e+00
  %837 = fmul fast float %834, 2.000000e+01
  %838 = fsub fast float %836, %837
  %839 = call float @dx.op.unary.f32(i32 7, float %838)  ; Saturate(value)
  br label %840

; <label>:840                                     ; preds = %794, %746
  %841 = phi float [ %839, %794 ], [ 1.000000e+00, %746 ]
  store float %841, float* %652, align 4, !tbaa !72, !noalias !64
  %842 = fadd fast float %841, %747
  %843 = icmp slt i32 %645, 0
  br i1 %843, label %844, label %935, !dx.controlflow.hints !58

; <label>:844                                     ; preds = %840
  %845 = fsub fast float 1.000000e+00, %564
  %846 = fdiv fast float 1.000000e+00, %845
  %847 = shl i32 %553, 6
  %848 = or i32 %847, 32
  %849 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %848, i32 undef)  ; BufferLoad(srv,index,wot)
  %850 = extractvalue %dx.types.ResRet.i32 %849, 0
  %851 = extractvalue %dx.types.ResRet.i32 %849, 1
  %852 = extractvalue %dx.types.ResRet.i32 %849, 2
  %853 = extractvalue %dx.types.ResRet.i32 %849, 3
  %854 = fmul fast float %846, %562
  %855 = fmul fast float %846, %563
  %856 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i32 0, i32 0
  store i32 %850, i32* %856, align 4
  %857 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i32 0, i32 1
  store i32 %851, i32* %857, align 4
  %858 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i32 0, i32 2
  store i32 %852, i32* %858, align 4
  %859 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i32 0, i32 3
  store i32 %853, i32* %859, align 4
  %860 = fmul fast float %855, 4.000000e+00
  %861 = call float @dx.op.unary.f32(i32 27, float %860)  ; Round_ni(value)
  %862 = fmul fast float %854, 4.000000e+00
  %863 = call float @dx.op.unary.f32(i32 27, float %862)  ; Round_ni(value)
  %864 = fsub fast float 1.100000e+01, %861
  %865 = fmul fast float %861, 5.000000e-01
  %866 = fmul fast float %865, %864
  %867 = fadd fast float %863, 5.000000e-01
  %868 = fadd fast float %867, %866
  %869 = fptosi float %868 to i32
  %870 = fptosi float %861 to i32
  %871 = sub nsw i32 5, %870
  %872 = fmul fast float %863, 2.500000e-01
  %873 = fmul fast float %861, 2.500000e-01
  %874 = add nsw i32 %869, 1
  %875 = add nsw i32 %869, %871
  %876 = fsub fast float %854, %872
  %877 = fmul fast float %876, 4.000000e+00
  %878 = fsub fast float %855, %873
  %879 = fmul fast float %878, 4.000000e+00
  %880 = fadd fast float %876, %878
  %881 = fmul fast float %880, 4.000000e+00
  %882 = fcmp fast ogt float %881, 1.000000e+00
  br i1 %882, label %883, label %889, !dx.controlflow.hints !59

; <label>:883                                     ; preds = %844
  %884 = add nsw i32 %875, 1
  %885 = fadd fast float %879, -1.000000e+00
  %886 = fsub fast float -0.000000e+00, %885
  %887 = fadd fast float %877, -1.000000e+00
  %888 = fsub fast float -0.000000e+00, %887
  br label %889

; <label>:889                                     ; preds = %883, %844
  %890 = phi i32 [ %884, %883 ], [ %869, %844 ]
  %891 = phi i32 [ %874, %883 ], [ %875, %844 ]
  %892 = phi i32 [ %875, %883 ], [ %874, %844 ]
  %893 = phi float [ %888, %883 ], [ %879, %844 ]
  %894 = phi float [ %886, %883 ], [ %877, %844 ]
  %895 = fsub fast float 1.000000e+00, %893
  %896 = fsub fast float %895, %894
  %897 = lshr i32 %892, 2
  %898 = getelementptr [4 x i32], [4 x i32]* %32, i32 0, i32 %897
  %899 = load i32, i32* %898, align 4, !tbaa !60, !noalias !64
  %900 = shl i32 %892, 3
  %901 = and i32 %900, 24
  %902 = lshr i32 %899, %901
  %903 = and i32 %902, 255
  %904 = sitofp i32 %903 to float
  %905 = fmul fast float %894, 0x3F70101020000000
  %906 = fmul fast float %905, %904
  %907 = lshr i32 %891, 2
  %908 = getelementptr [4 x i32], [4 x i32]* %32, i32 0, i32 %907
  %909 = load i32, i32* %908, align 4, !tbaa !60, !noalias !64
  %910 = shl i32 %891, 3
  %911 = and i32 %910, 24
  %912 = lshr i32 %909, %911
  %913 = and i32 %912, 255
  %914 = sitofp i32 %913 to float
  %915 = fmul fast float %893, 0x3F70101020000000
  %916 = fmul fast float %915, %914
  %917 = lshr i32 %890, 2
  %918 = getelementptr [4 x i32], [4 x i32]* %32, i32 0, i32 %917
  %919 = load i32, i32* %918, align 4, !tbaa !60, !noalias !64
  %920 = shl i32 %890, 3
  %921 = and i32 %920, 24
  %922 = lshr i32 %919, %921
  %923 = and i32 %922, 255
  %924 = sitofp i32 %923 to float
  %925 = fmul fast float %896, 0x3F70101020000000
  %926 = fmul fast float %925, %924
  %927 = fsub fast float 1.000000e+00, %906
  %928 = fsub fast float %927, %916
  %929 = fsub fast float %928, %926
  %930 = fmul fast float %564, 2.000000e+01
  %931 = fadd fast float %930, 1.000000e+00
  %932 = fmul fast float %929, 2.000000e+01
  %933 = fsub fast float %931, %932
  %934 = call float @dx.op.unary.f32(i32 7, float %933)  ; Saturate(value)
  br label %935

; <label>:935                                     ; preds = %889, %840
  %936 = phi float [ %934, %889 ], [ 1.000000e+00, %840 ]
  store float %936, float* %653, align 4, !tbaa !72, !noalias !64
  %937 = fadd fast float %842, %936
  %938 = icmp slt i32 %646, 0
  br i1 %938, label %939, label %1030, !dx.controlflow.hints !58

; <label>:939                                     ; preds = %935
  %940 = fsub fast float 1.000000e+00, %565
  %941 = fdiv fast float 1.000000e+00, %940
  %942 = shl i32 %553, 6
  %943 = or i32 %942, 48
  %944 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %943, i32 undef)  ; BufferLoad(srv,index,wot)
  %945 = extractvalue %dx.types.ResRet.i32 %944, 0
  %946 = extractvalue %dx.types.ResRet.i32 %944, 1
  %947 = extractvalue %dx.types.ResRet.i32 %944, 2
  %948 = extractvalue %dx.types.ResRet.i32 %944, 3
  %949 = fmul fast float %941, %562
  %950 = fmul fast float %941, %563
  %951 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i32 0, i32 0
  store i32 %945, i32* %951, align 4
  %952 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i32 0, i32 1
  store i32 %946, i32* %952, align 4
  %953 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i32 0, i32 2
  store i32 %947, i32* %953, align 4
  %954 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i32 0, i32 3
  store i32 %948, i32* %954, align 4
  %955 = fmul fast float %950, 4.000000e+00
  %956 = call float @dx.op.unary.f32(i32 27, float %955)  ; Round_ni(value)
  %957 = fmul fast float %949, 4.000000e+00
  %958 = call float @dx.op.unary.f32(i32 27, float %957)  ; Round_ni(value)
  %959 = fsub fast float 1.100000e+01, %956
  %960 = fmul fast float %956, 5.000000e-01
  %961 = fmul fast float %960, %959
  %962 = fadd fast float %958, 5.000000e-01
  %963 = fadd fast float %962, %961
  %964 = fptosi float %963 to i32
  %965 = fptosi float %956 to i32
  %966 = sub nsw i32 5, %965
  %967 = fmul fast float %958, 2.500000e-01
  %968 = fmul fast float %956, 2.500000e-01
  %969 = add nsw i32 %964, 1
  %970 = add nsw i32 %964, %966
  %971 = fsub fast float %949, %967
  %972 = fmul fast float %971, 4.000000e+00
  %973 = fsub fast float %950, %968
  %974 = fmul fast float %973, 4.000000e+00
  %975 = fadd fast float %971, %973
  %976 = fmul fast float %975, 4.000000e+00
  %977 = fcmp fast ogt float %976, 1.000000e+00
  br i1 %977, label %978, label %984, !dx.controlflow.hints !59

; <label>:978                                     ; preds = %939
  %979 = add nsw i32 %970, 1
  %980 = fadd fast float %974, -1.000000e+00
  %981 = fsub fast float -0.000000e+00, %980
  %982 = fadd fast float %972, -1.000000e+00
  %983 = fsub fast float -0.000000e+00, %982
  br label %984

; <label>:984                                     ; preds = %978, %939
  %985 = phi i32 [ %979, %978 ], [ %964, %939 ]
  %986 = phi i32 [ %969, %978 ], [ %970, %939 ]
  %987 = phi i32 [ %970, %978 ], [ %969, %939 ]
  %988 = phi float [ %983, %978 ], [ %974, %939 ]
  %989 = phi float [ %981, %978 ], [ %972, %939 ]
  %990 = fsub fast float 1.000000e+00, %988
  %991 = fsub fast float %990, %989
  %992 = lshr i32 %987, 2
  %993 = getelementptr [4 x i32], [4 x i32]* %32, i32 0, i32 %992
  %994 = load i32, i32* %993, align 4, !tbaa !60, !noalias !64
  %995 = shl i32 %987, 3
  %996 = and i32 %995, 24
  %997 = lshr i32 %994, %996
  %998 = and i32 %997, 255
  %999 = sitofp i32 %998 to float
  %1000 = fmul fast float %989, 0x3F70101020000000
  %1001 = fmul fast float %1000, %999
  %1002 = lshr i32 %986, 2
  %1003 = getelementptr [4 x i32], [4 x i32]* %32, i32 0, i32 %1002
  %1004 = load i32, i32* %1003, align 4, !tbaa !60, !noalias !64
  %1005 = shl i32 %986, 3
  %1006 = and i32 %1005, 24
  %1007 = lshr i32 %1004, %1006
  %1008 = and i32 %1007, 255
  %1009 = sitofp i32 %1008 to float
  %1010 = fmul fast float %988, 0x3F70101020000000
  %1011 = fmul fast float %1010, %1009
  %1012 = lshr i32 %985, 2
  %1013 = getelementptr [4 x i32], [4 x i32]* %32, i32 0, i32 %1012
  %1014 = load i32, i32* %1013, align 4, !tbaa !60, !noalias !64
  %1015 = shl i32 %985, 3
  %1016 = and i32 %1015, 24
  %1017 = lshr i32 %1014, %1016
  %1018 = and i32 %1017, 255
  %1019 = sitofp i32 %1018 to float
  %1020 = fmul fast float %991, 0x3F70101020000000
  %1021 = fmul fast float %1020, %1019
  %1022 = fsub fast float 1.000000e+00, %1001
  %1023 = fsub fast float %1022, %1011
  %1024 = fsub fast float %1023, %1021
  %1025 = fmul fast float %565, 2.000000e+01
  %1026 = fadd fast float %1025, 1.000000e+00
  %1027 = fmul fast float %1024, 2.000000e+01
  %1028 = fsub fast float %1026, %1027
  %1029 = call float @dx.op.unary.f32(i32 7, float %1028)  ; Saturate(value)
  br label %1030

; <label>:1030                                    ; preds = %984, %935
  %1031 = phi float [ %1029, %984 ], [ 1.000000e+00, %935 ]
  store float %1031, float* %654, align 4, !tbaa !72, !noalias !64
  %1032 = fadd fast float %937, %1031
  %1033 = fcmp fast oeq float %1032, 0.000000e+00
  br i1 %1033, label %1034, label %1035, !dx.controlflow.hints !74

; <label>:1034                                    ; preds = %1030
  store float 2.500000e-01, float* %651, align 4
  store float 2.500000e-01, float* %652, align 4
  store float 2.500000e-01, float* %653, align 4
  store float 2.500000e-01, float* %654, align 4
  br label %1035

; <label>:1035                                    ; preds = %1034, %1030
  %1036 = phi float [ 2.500000e-01, %1034 ], [ %747, %1030 ]
  br label %1037

; <label>:1037                                    ; preds = %1301, %1035
  %1038 = phi float [ %1303, %1301 ], [ %1036, %1035 ]
  %1039 = phi float [ %1271, %1301 ], [ 0.000000e+00, %1035 ]
  %1040 = phi float [ %1272, %1301 ], [ 0.000000e+00, %1035 ]
  %1041 = phi float [ %1273, %1301 ], [ 0.000000e+00, %1035 ]
  %1042 = phi float [ %1274, %1301 ], [ 0.000000e+00, %1035 ]
  %1043 = phi float [ %1275, %1301 ], [ 0.000000e+00, %1035 ]
  %1044 = phi float [ %1276, %1301 ], [ 0.000000e+00, %1035 ]
  %1045 = phi float [ %1277, %1301 ], [ 0.000000e+00, %1035 ]
  %1046 = phi float [ %1278, %1301 ], [ 0.000000e+00, %1035 ]
  %1047 = phi float [ %1279, %1301 ], [ 0.000000e+00, %1035 ]
  %1048 = phi float [ %1280, %1301 ], [ 0.000000e+00, %1035 ]
  %1049 = phi float [ %1281, %1301 ], [ 0.000000e+00, %1035 ]
  %1050 = phi float [ %1282, %1301 ], [ 0.000000e+00, %1035 ]
  %1051 = phi float [ %1283, %1301 ], [ 0.000000e+00, %1035 ]
  %1052 = phi float [ %1284, %1301 ], [ 0.000000e+00, %1035 ]
  %1053 = phi float [ %1285, %1301 ], [ 0.000000e+00, %1035 ]
  %1054 = phi float [ %1286, %1301 ], [ 0.000000e+00, %1035 ]
  %1055 = phi float [ %1287, %1301 ], [ 0.000000e+00, %1035 ]
  %1056 = phi float [ %1288, %1301 ], [ 0.000000e+00, %1035 ]
  %1057 = phi float [ %1289, %1301 ], [ 0.000000e+00, %1035 ]
  %1058 = phi float [ %1290, %1301 ], [ 0.000000e+00, %1035 ]
  %1059 = phi float [ %1291, %1301 ], [ 0.000000e+00, %1035 ]
  %1060 = phi float [ %1292, %1301 ], [ 0.000000e+00, %1035 ]
  %1061 = phi float [ %1293, %1301 ], [ 0.000000e+00, %1035 ]
  %1062 = phi float [ %1294, %1301 ], [ 0.000000e+00, %1035 ]
  %1063 = phi float [ %1295, %1301 ], [ 0.000000e+00, %1035 ]
  %1064 = phi float [ %1296, %1301 ], [ 0.000000e+00, %1035 ]
  %1065 = phi float [ %1297, %1301 ], [ 0.000000e+00, %1035 ]
  %1066 = phi float [ %1298, %1301 ], [ 0.000000e+00, %1035 ]
  %1067 = phi i32 [ %1299, %1301 ], [ 0, %1035 ]
  %1068 = fcmp fast ogt float %1038, 0.000000e+00
  br i1 %1068, label %1069, label %1270, !dx.controlflow.hints !75

; <label>:1069                                    ; preds = %1037
  %1070 = getelementptr [4 x float], [4 x float]* %33, i32 0, i32 %1067
  %1071 = load float, float* %1070, align 4, !tbaa !72, !noalias !64
  %1072 = getelementptr [4 x i32], [4 x i32]* %34, i32 0, i32 %1067
  %1073 = load i32, i32* %1072, align 4, !tbaa !60, !noalias !64
  %1074 = fmul fast float %1071, %1038
  %1075 = shl i32 %1073, 5
  %1076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1075, i32 undef)  ; BufferLoad(srv,index,wot)
  %1077 = extractvalue %dx.types.ResRet.i32 %1076, 0
  %1078 = extractvalue %dx.types.ResRet.i32 %1076, 1
  %1079 = extractvalue %dx.types.ResRet.i32 %1076, 2
  %1080 = extractvalue %dx.types.ResRet.i32 %1076, 3
  %1081 = or i32 %1075, 16
  %1082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1081, i32 undef)  ; BufferLoad(srv,index,wot)
  %1083 = extractvalue %dx.types.ResRet.i32 %1082, 0
  %1084 = extractvalue %dx.types.ResRet.i32 %1082, 1
  %1085 = extractvalue %dx.types.ResRet.i32 %1082, 2
  %1086 = shl i32 %1077, 4
  %1087 = and i32 %1086, 32752
  %1088 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1087)  ; LegacyF16ToF32(value)
  %1089 = lshr i32 %1077, 7
  %1090 = and i32 %1089, 32752
  %1091 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1090)  ; LegacyF16ToF32(value)
  %1092 = lshr i32 %1077, 22
  %1093 = shl nuw nsw i32 %1092, 5
  %1094 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1093)  ; LegacyF16ToF32(value)
  %1095 = and i32 %1078, 255
  %1096 = uitofp i32 %1095 to float
  %1097 = fmul fast float %1096, 0x3F80204080000000
  %1098 = fadd fast float %1097, -1.000000e+00
  %1099 = lshr i32 %1078, 8
  %1100 = and i32 %1099, 255
  %1101 = uitofp i32 %1100 to float
  %1102 = fmul fast float %1101, 0x3F80204080000000
  %1103 = fadd fast float %1102, -1.000000e+00
  %1104 = lshr i32 %1078, 16
  %1105 = and i32 %1104, 255
  %1106 = uitofp i32 %1105 to float
  %1107 = fmul fast float %1106, 0x3F80204080000000
  %1108 = fadd fast float %1107, -1.000000e+00
  %1109 = lshr i32 %1078, 24
  %1110 = uitofp i32 %1109 to float
  %1111 = fmul fast float %1110, 0x3F80204080000000
  %1112 = fadd fast float %1111, -1.000000e+00
  %1113 = and i32 %1079, 255
  %1114 = uitofp i32 %1113 to float
  %1115 = fmul fast float %1114, 0x3F80204080000000
  %1116 = fadd fast float %1115, -1.000000e+00
  %1117 = lshr i32 %1079, 8
  %1118 = and i32 %1117, 255
  %1119 = uitofp i32 %1118 to float
  %1120 = fmul fast float %1119, 0x3F80204080000000
  %1121 = fadd fast float %1120, -1.000000e+00
  %1122 = lshr i32 %1079, 16
  %1123 = and i32 %1122, 255
  %1124 = uitofp i32 %1123 to float
  %1125 = fmul fast float %1124, 0x3F80204080000000
  %1126 = fadd fast float %1125, -1.000000e+00
  %1127 = lshr i32 %1079, 24
  %1128 = uitofp i32 %1127 to float
  %1129 = fmul fast float %1128, 0x3F80204080000000
  %1130 = fadd fast float %1129, -1.000000e+00
  %1131 = and i32 %1080, 255
  %1132 = uitofp i32 %1131 to float
  %1133 = fmul fast float %1132, 0x3F80204080000000
  %1134 = fadd fast float %1133, -1.000000e+00
  %1135 = lshr i32 %1080, 8
  %1136 = and i32 %1135, 255
  %1137 = uitofp i32 %1136 to float
  %1138 = fmul fast float %1137, 0x3F80204080000000
  %1139 = fadd fast float %1138, -1.000000e+00
  %1140 = lshr i32 %1080, 16
  %1141 = and i32 %1140, 255
  %1142 = uitofp i32 %1141 to float
  %1143 = fmul fast float %1142, 0x3F80204080000000
  %1144 = fadd fast float %1143, -1.000000e+00
  %1145 = lshr i32 %1080, 24
  %1146 = uitofp i32 %1145 to float
  %1147 = fmul fast float %1146, 0x3F80204080000000
  %1148 = fadd fast float %1147, -1.000000e+00
  %1149 = and i32 %1083, 255
  %1150 = uitofp i32 %1149 to float
  %1151 = fmul fast float %1150, 0x3F80204080000000
  %1152 = fadd fast float %1151, -1.000000e+00
  %1153 = lshr i32 %1083, 8
  %1154 = and i32 %1153, 255
  %1155 = uitofp i32 %1154 to float
  %1156 = fmul fast float %1155, 0x3F80204080000000
  %1157 = fadd fast float %1156, -1.000000e+00
  %1158 = lshr i32 %1083, 16
  %1159 = and i32 %1158, 255
  %1160 = uitofp i32 %1159 to float
  %1161 = fmul fast float %1160, 0x3F80204080000000
  %1162 = fadd fast float %1161, -1.000000e+00
  %1163 = lshr i32 %1083, 24
  %1164 = uitofp i32 %1163 to float
  %1165 = fmul fast float %1164, 0x3F80204080000000
  %1166 = fadd fast float %1165, -1.000000e+00
  %1167 = and i32 %1084, 255
  %1168 = uitofp i32 %1167 to float
  %1169 = fmul fast float %1168, 0x3F80204080000000
  %1170 = fadd fast float %1169, -1.000000e+00
  %1171 = lshr i32 %1084, 8
  %1172 = and i32 %1171, 255
  %1173 = uitofp i32 %1172 to float
  %1174 = fmul fast float %1173, 0x3F80204080000000
  %1175 = fadd fast float %1174, -1.000000e+00
  %1176 = lshr i32 %1084, 16
  %1177 = and i32 %1176, 255
  %1178 = uitofp i32 %1177 to float
  %1179 = fmul fast float %1178, 0x3F80204080000000
  %1180 = fadd fast float %1179, -1.000000e+00
  %1181 = lshr i32 %1084, 24
  %1182 = uitofp i32 %1181 to float
  %1183 = fmul fast float %1182, 0x3F80204080000000
  %1184 = fadd fast float %1183, -1.000000e+00
  %1185 = and i32 %1085, 255
  %1186 = uitofp i32 %1185 to float
  %1187 = fmul fast float %1186, 0x3F80204080000000
  %1188 = fadd fast float %1187, -1.000000e+00
  %1189 = lshr i32 %1085, 8
  %1190 = and i32 %1189, 255
  %1191 = uitofp i32 %1190 to float
  %1192 = fmul fast float %1191, 0x3F80204080000000
  %1193 = fadd fast float %1192, -1.000000e+00
  %1194 = lshr i32 %1085, 16
  %1195 = and i32 %1194, 255
  %1196 = uitofp i32 %1195 to float
  %1197 = fmul fast float %1196, 0x3F80204080000000
  %1198 = fadd fast float %1197, -1.000000e+00
  %1199 = lshr i32 %1085, 24
  %1200 = uitofp i32 %1199 to float
  %1201 = fmul fast float %1200, 0x3F80204080000000
  %1202 = fadd fast float %1201, -1.000000e+00
  %1203 = fmul fast float %1088, %1074
  %1204 = fadd fast float %1203, %1047
  %1205 = fmul fast float %1074, 0x3FFBB67AE0000000
  %1206 = fmul fast float %1205, %1088
  %1207 = fmul fast float %1206, %1098
  %1208 = fadd fast float %1207, %1046
  %1209 = fmul fast float %1206, %1103
  %1210 = fadd fast float %1209, %1045
  %1211 = fmul fast float %1206, %1108
  %1212 = fadd fast float %1211, %1044
  %1213 = fmul fast float %1074, 0x3FFEFBDEC0000000
  %1214 = fmul fast float %1213, %1088
  %1215 = fmul fast float %1214, %1112
  %1216 = fadd fast float %1215, %1043
  %1217 = fmul fast float %1214, %1116
  %1218 = fadd fast float %1217, %1042
  %1219 = fmul fast float %1074, 0x4001E377A0000000
  %1220 = fmul fast float %1219, %1088
  %1221 = fmul fast float %1220, %1121
  %1222 = fadd fast float %1221, %1041
  %1223 = fmul fast float %1214, %1126
  %1224 = fadd fast float %1223, %1040
  %1225 = fmul fast float %1214, %1130
  %1226 = fadd fast float %1225, %1039
  %1227 = fmul fast float %1091, %1074
  %1228 = fadd fast float %1227, %1056
  %1229 = fmul fast float %1205, %1091
  %1230 = fmul fast float %1229, %1134
  %1231 = fadd fast float %1230, %1055
  %1232 = fmul fast float %1229, %1139
  %1233 = fadd fast float %1232, %1054
  %1234 = fmul fast float %1229, %1144
  %1235 = fadd fast float %1234, %1053
  %1236 = fmul fast float %1213, %1091
  %1237 = fmul fast float %1236, %1148
  %1238 = fadd fast float %1237, %1052
  %1239 = fmul fast float %1236, %1152
  %1240 = fadd fast float %1239, %1051
  %1241 = fmul fast float %1219, %1091
  %1242 = fmul fast float %1241, %1157
  %1243 = fadd fast float %1242, %1050
  %1244 = fmul fast float %1236, %1162
  %1245 = fadd fast float %1244, %1049
  %1246 = fmul fast float %1236, %1166
  %1247 = fadd fast float %1246, %1048
  %1248 = fmul fast float %1094, %1074
  %1249 = fadd fast float %1248, %1065
  %1250 = fmul fast float %1205, %1094
  %1251 = fmul fast float %1250, %1170
  %1252 = fadd fast float %1251, %1064
  %1253 = fmul fast float %1250, %1175
  %1254 = fadd fast float %1253, %1063
  %1255 = fmul fast float %1250, %1180
  %1256 = fadd fast float %1255, %1062
  %1257 = fmul fast float %1213, %1094
  %1258 = fmul fast float %1257, %1184
  %1259 = fadd fast float %1258, %1061
  %1260 = fmul fast float %1257, %1188
  %1261 = fadd fast float %1260, %1060
  %1262 = fmul fast float %1219, %1094
  %1263 = fmul fast float %1262, %1193
  %1264 = fadd fast float %1263, %1059
  %1265 = fmul fast float %1257, %1198
  %1266 = fadd fast float %1265, %1058
  %1267 = fmul fast float %1257, %1202
  %1268 = fadd fast float %1267, %1057
  %1269 = fadd fast float %1074, %1066
  br label %1270

; <label>:1270                                    ; preds = %1069, %1037
  %1271 = phi float [ %1226, %1069 ], [ %1039, %1037 ]
  %1272 = phi float [ %1224, %1069 ], [ %1040, %1037 ]
  %1273 = phi float [ %1222, %1069 ], [ %1041, %1037 ]
  %1274 = phi float [ %1218, %1069 ], [ %1042, %1037 ]
  %1275 = phi float [ %1216, %1069 ], [ %1043, %1037 ]
  %1276 = phi float [ %1212, %1069 ], [ %1044, %1037 ]
  %1277 = phi float [ %1210, %1069 ], [ %1045, %1037 ]
  %1278 = phi float [ %1208, %1069 ], [ %1046, %1037 ]
  %1279 = phi float [ %1204, %1069 ], [ %1047, %1037 ]
  %1280 = phi float [ %1247, %1069 ], [ %1048, %1037 ]
  %1281 = phi float [ %1245, %1069 ], [ %1049, %1037 ]
  %1282 = phi float [ %1243, %1069 ], [ %1050, %1037 ]
  %1283 = phi float [ %1240, %1069 ], [ %1051, %1037 ]
  %1284 = phi float [ %1238, %1069 ], [ %1052, %1037 ]
  %1285 = phi float [ %1235, %1069 ], [ %1053, %1037 ]
  %1286 = phi float [ %1233, %1069 ], [ %1054, %1037 ]
  %1287 = phi float [ %1231, %1069 ], [ %1055, %1037 ]
  %1288 = phi float [ %1228, %1069 ], [ %1056, %1037 ]
  %1289 = phi float [ %1268, %1069 ], [ %1057, %1037 ]
  %1290 = phi float [ %1266, %1069 ], [ %1058, %1037 ]
  %1291 = phi float [ %1264, %1069 ], [ %1059, %1037 ]
  %1292 = phi float [ %1261, %1069 ], [ %1060, %1037 ]
  %1293 = phi float [ %1259, %1069 ], [ %1061, %1037 ]
  %1294 = phi float [ %1256, %1069 ], [ %1062, %1037 ]
  %1295 = phi float [ %1254, %1069 ], [ %1063, %1037 ]
  %1296 = phi float [ %1252, %1069 ], [ %1064, %1037 ]
  %1297 = phi float [ %1249, %1069 ], [ %1065, %1037 ]
  %1298 = phi float [ %1269, %1069 ], [ %1066, %1037 ]
  %1299 = add nuw nsw i32 %1067, 1
  %1300 = icmp eq i32 %1299, 4
  br i1 %1300, label %1304, label %1301

; <label>:1301                                    ; preds = %1270
  %1302 = getelementptr [4 x float], [4 x float]* %35, i32 0, i32 %1299
  %1303 = load float, float* %1302, align 4, !tbaa !72, !noalias !64
  br label %1037

; <label>:1304                                    ; preds = %1270
  %1305 = fcmp fast ogt float %1298, 0.000000e+00
  %1306 = fdiv fast float 1.000000e+00, %1298
  %1307 = select i1 %1305, float %1306, float 1.000000e+00
  %1308 = fmul fast float %1307, %1279
  %1309 = fmul fast float %1307, %1278
  %1310 = fmul fast float %1307, %1277
  %1311 = fmul fast float %1307, %1276
  %1312 = fmul fast float %1307, %1275
  %1313 = fmul fast float %1307, %1274
  %1314 = fmul fast float %1307, %1273
  %1315 = fmul fast float %1307, %1272
  %1316 = fmul fast float %1307, %1271
  %1317 = fmul fast float %1307, %1288
  %1318 = fmul fast float %1307, %1287
  %1319 = fmul fast float %1307, %1286
  %1320 = fmul fast float %1307, %1285
  %1321 = fmul fast float %1307, %1284
  %1322 = fmul fast float %1307, %1283
  %1323 = fmul fast float %1307, %1282
  %1324 = fmul fast float %1307, %1281
  %1325 = fmul fast float %1307, %1280
  %1326 = fmul fast float %1307, %1297
  %1327 = fmul fast float %1307, %1296
  %1328 = fmul fast float %1307, %1295
  %1329 = fmul fast float %1307, %1294
  %1330 = fmul fast float %1307, %1293
  %1331 = fmul fast float %1307, %1292
  %1332 = fmul fast float %1307, %1291
  %1333 = fmul fast float %1307, %1290
  %1334 = fmul fast float %1307, %1289
  br label %1335

; <label>:1335                                    ; preds = %1304, %567, %241
  %1336 = phi float [ 0.000000e+00, %241 ], [ %1325, %1304 ], [ %621, %567 ]
  %1337 = phi float [ 0.000000e+00, %241 ], [ %1324, %1304 ], [ %619, %567 ]
  %1338 = phi float [ 0.000000e+00, %241 ], [ %1323, %1304 ], [ %617, %567 ]
  %1339 = phi float [ 0.000000e+00, %241 ], [ %1322, %1304 ], [ %615, %567 ]
  %1340 = phi float [ 0.000000e+00, %241 ], [ %1321, %1304 ], [ %613, %567 ]
  %1341 = phi float [ 0.000000e+00, %241 ], [ %1320, %1304 ], [ %611, %567 ]
  %1342 = phi float [ 0.000000e+00, %241 ], [ %1319, %1304 ], [ %609, %567 ]
  %1343 = phi float [ 0.000000e+00, %241 ], [ %1318, %1304 ], [ %607, %567 ]
  %1344 = phi float [ 0.000000e+00, %241 ], [ %1317, %1304 ], [ %605, %567 ]
  %1345 = phi float [ 0.000000e+00, %241 ], [ %1316, %1304 ], [ %603, %567 ]
  %1346 = phi float [ 0.000000e+00, %241 ], [ %1315, %1304 ], [ %601, %567 ]
  %1347 = phi float [ 0.000000e+00, %241 ], [ %1314, %1304 ], [ %599, %567 ]
  %1348 = phi float [ 0.000000e+00, %241 ], [ %1313, %1304 ], [ %597, %567 ]
  %1349 = phi float [ 0.000000e+00, %241 ], [ %1312, %1304 ], [ %595, %567 ]
  %1350 = phi float [ 0.000000e+00, %241 ], [ %1311, %1304 ], [ %593, %567 ]
  %1351 = phi float [ 0.000000e+00, %241 ], [ %1310, %1304 ], [ %591, %567 ]
  %1352 = phi float [ 0.000000e+00, %241 ], [ %1309, %1304 ], [ %589, %567 ]
  %1353 = phi float [ 0.000000e+00, %241 ], [ %1308, %1304 ], [ %587, %567 ]
  %1354 = phi float [ 0.000000e+00, %241 ], [ %1334, %1304 ], [ %639, %567 ]
  %1355 = phi float [ 0.000000e+00, %241 ], [ %1333, %1304 ], [ %637, %567 ]
  %1356 = phi float [ 0.000000e+00, %241 ], [ %1332, %1304 ], [ %635, %567 ]
  %1357 = phi float [ 0.000000e+00, %241 ], [ %1331, %1304 ], [ %633, %567 ]
  %1358 = phi float [ 0.000000e+00, %241 ], [ %1330, %1304 ], [ %631, %567 ]
  %1359 = phi float [ 0.000000e+00, %241 ], [ %1329, %1304 ], [ %629, %567 ]
  %1360 = phi float [ 0.000000e+00, %241 ], [ %1328, %1304 ], [ %627, %567 ]
  %1361 = phi float [ 0.000000e+00, %241 ], [ %1327, %1304 ], [ %625, %567 ]
  %1362 = phi float [ 0.000000e+00, %241 ], [ %1326, %1304 ], [ %623, %567 ]
  %1363 = fcmp fast olt float %242, 1.000000e+00
  br i1 %1363, label %1364, label %2024, !dx.controlflow.hints !76

; <label>:1364                                    ; preds = %1335
  %1365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1366 = extractvalue %dx.types.CBufRet.f32 %1365, 0
  %1367 = extractvalue %dx.types.CBufRet.f32 %1365, 1
  %1368 = fsub fast float %192, %1366
  %1369 = fsub fast float %197, %1367
  %1370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1371 = extractvalue %dx.types.CBufRet.f32 %1370, 0
  %1372 = extractvalue %dx.types.CBufRet.f32 %1370, 1
  %1373 = fmul fast float %1368, %1371
  %1374 = fmul fast float %1369, %1372
  %1375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1376 = extractvalue %dx.types.CBufRet.f32 %1375, 0
  %1377 = fmul fast float %1376, %1373
  %1378 = extractvalue %dx.types.CBufRet.f32 %1375, 1
  %1379 = fadd fast float %1377, %1378
  %1380 = extractvalue %dx.types.CBufRet.f32 %1375, 2
  %1381 = fmul fast float %1380, %1374
  %1382 = extractvalue %dx.types.CBufRet.f32 %1375, 3
  %1383 = fadd fast float %1381, %1382
  %1384 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %25, float %1379, float %1383, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1385 = extractvalue %dx.types.ResRet.f32 %1384, 0
  %1386 = extractvalue %dx.types.ResRet.f32 %1384, 1
  %1387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1388 = extractvalue %dx.types.CBufRet.f32 %1387, 1
  %1389 = extractvalue %dx.types.CBufRet.f32 %1387, 0
  %1390 = fsub fast float %1388, %1389
  %1391 = fmul fast float %1390, %1385
  %1392 = fadd fast float %1391, %1389
  %1393 = extractvalue %dx.types.CBufRet.f32 %1387, 3
  %1394 = extractvalue %dx.types.CBufRet.f32 %1387, 2
  %1395 = fsub fast float %1393, %1394
  %1396 = fmul fast float %1395, %1386
  %1397 = fadd fast float %1396, %1394
  %1398 = fsub fast float %202, %1392
  %1399 = fsub fast float %1397, %1392
  %1400 = fdiv fast float %1398, %1399
  %1401 = call float @dx.op.unary.f32(i32 7, float %1400)  ; Saturate(value)
  %1402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %1403 = extractvalue %dx.types.CBufRet.f32 %1402, 0
  %1404 = fmul fast float %1403, %1401
  %1405 = extractvalue %dx.types.CBufRet.f32 %1402, 1
  %1406 = fadd fast float %1404, %1405
  %1407 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %25, float %1379, float %1383, float %1406, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1408 = extractvalue %dx.types.ResRet.f32 %1407, 0
  %1409 = extractvalue %dx.types.ResRet.f32 %1407, 1
  %1410 = extractvalue %dx.types.ResRet.f32 %1407, 2
  %1411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %1412 = extractvalue %dx.types.CBufRet.f32 %1411, 0
  %1413 = extractvalue %dx.types.CBufRet.f32 %1411, 1
  %1414 = extractvalue %dx.types.CBufRet.f32 %1411, 2
  %1415 = fmul fast float %1412, %1408
  %1416 = fmul fast float %1413, %1409
  %1417 = fmul fast float %1414, %1410
  %1418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %1419 = extractvalue %dx.types.CBufRet.f32 %1418, 0
  %1420 = extractvalue %dx.types.CBufRet.f32 %1418, 1
  %1421 = extractvalue %dx.types.CBufRet.f32 %1418, 2
  %1422 = fadd fast float %1415, %1419
  %1423 = fadd fast float %1416, %1420
  %1424 = fadd fast float %1417, %1421
  %1425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %1426 = extractvalue %dx.types.CBufRet.f32 %1425, 0
  %1427 = fmul fast float %1426, %1373
  %1428 = extractvalue %dx.types.CBufRet.f32 %1425, 1
  %1429 = fadd fast float %1427, %1428
  %1430 = extractvalue %dx.types.CBufRet.f32 %1425, 2
  %1431 = fmul fast float %1430, %1374
  %1432 = extractvalue %dx.types.CBufRet.f32 %1425, 3
  %1433 = fadd fast float %1431, %1432
  %1434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %1435 = extractvalue %dx.types.CBufRet.f32 %1434, 0
  %1436 = extractvalue %dx.types.CBufRet.f32 %1434, 1
  %1437 = extractvalue %dx.types.CBufRet.f32 %1434, 2
  %1438 = extractvalue %dx.types.CBufRet.f32 %1434, 3
  %1439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %1440 = extractvalue %dx.types.CBufRet.f32 %1439, 0
  %1441 = extractvalue %dx.types.CBufRet.f32 %1439, 1
  %1442 = extractvalue %dx.types.CBufRet.f32 %1439, 2
  %1443 = extractvalue %dx.types.CBufRet.f32 %1439, 3
  %1444 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %25, float %1429, float %1433, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1445 = extractvalue %dx.types.ResRet.f32 %1444, 0
  %1446 = extractvalue %dx.types.ResRet.f32 %1444, 1
  %1447 = extractvalue %dx.types.ResRet.f32 %1444, 2
  %1448 = extractvalue %dx.types.ResRet.f32 %1444, 3
  %1449 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %25, float %1429, float %1433, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1450 = extractvalue %dx.types.ResRet.f32 %1449, 0
  %1451 = extractvalue %dx.types.ResRet.f32 %1449, 1
  %1452 = extractvalue %dx.types.ResRet.f32 %1449, 2
  %1453 = extractvalue %dx.types.ResRet.f32 %1449, 3
  %1454 = fmul fast float %1445, %1422
  %1455 = fmul fast float %1450, %1422
  %1456 = fmul fast float %1452, %1422
  %1457 = fmul fast float %1448, %1422
  %1458 = fadd fast float %1454, %1435
  %1459 = fadd fast float %1455, %1436
  %1460 = fadd fast float %1456, %1437
  %1461 = fadd fast float %1457, %1438
  %1462 = fmul fast float %1446, %1422
  %1463 = fmul fast float %1451, %1422
  %1464 = fadd fast float %1462, %1440
  %1465 = fadd fast float %1463, %1441
  %1466 = fmul fast float %1447, %1422
  %1467 = fmul fast float %1453, %1422
  %1468 = fadd fast float %1466, %1442
  %1469 = fadd fast float %1467, %1443
  %1470 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %25, float %1429, float %1433, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1471 = extractvalue %dx.types.ResRet.f32 %1470, 0
  %1472 = extractvalue %dx.types.ResRet.f32 %1470, 1
  %1473 = extractvalue %dx.types.ResRet.f32 %1470, 2
  %1474 = extractvalue %dx.types.ResRet.f32 %1470, 3
  %1475 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %25, float %1429, float %1433, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1476 = extractvalue %dx.types.ResRet.f32 %1475, 0
  %1477 = extractvalue %dx.types.ResRet.f32 %1475, 1
  %1478 = extractvalue %dx.types.ResRet.f32 %1475, 2
  %1479 = extractvalue %dx.types.ResRet.f32 %1475, 3
  %1480 = fmul fast float %1471, %1423
  %1481 = fmul fast float %1476, %1423
  %1482 = fmul fast float %1478, %1423
  %1483 = fmul fast float %1474, %1423
  %1484 = fadd fast float %1458, %1480
  %1485 = fadd fast float %1459, %1481
  %1486 = fadd fast float %1460, %1482
  %1487 = fadd fast float %1461, %1483
  %1488 = fmul fast float %1472, %1423
  %1489 = fmul fast float %1477, %1423
  %1490 = fadd fast float %1464, %1488
  %1491 = fadd fast float %1465, %1489
  %1492 = fmul fast float %1473, %1423
  %1493 = fmul fast float %1479, %1423
  %1494 = fadd fast float %1468, %1492
  %1495 = fadd fast float %1469, %1493
  %1496 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %25, float %1429, float %1433, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1497 = extractvalue %dx.types.ResRet.f32 %1496, 0
  %1498 = extractvalue %dx.types.ResRet.f32 %1496, 1
  %1499 = extractvalue %dx.types.ResRet.f32 %1496, 2
  %1500 = extractvalue %dx.types.ResRet.f32 %1496, 3
  %1501 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %25, float %1429, float %1433, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1502 = extractvalue %dx.types.ResRet.f32 %1501, 0
  %1503 = extractvalue %dx.types.ResRet.f32 %1501, 1
  %1504 = extractvalue %dx.types.ResRet.f32 %1501, 2
  %1505 = extractvalue %dx.types.ResRet.f32 %1501, 3
  %1506 = fmul fast float %1497, %1424
  %1507 = fmul fast float %1502, %1424
  %1508 = fmul fast float %1504, %1424
  %1509 = fmul fast float %1500, %1424
  %1510 = fadd fast float %1484, %1506
  %1511 = fadd fast float %1485, %1507
  %1512 = fadd fast float %1486, %1508
  %1513 = fadd fast float %1487, %1509
  %1514 = fmul fast float %1498, %1424
  %1515 = fmul fast float %1503, %1424
  %1516 = fadd fast float %1490, %1514
  %1517 = fadd fast float %1491, %1515
  %1518 = fmul fast float %1499, %1424
  %1519 = fmul fast float %1505, %1424
  %1520 = fadd fast float %1494, %1518
  %1521 = fadd fast float %1495, %1519
  %1522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %1523 = extractvalue %dx.types.CBufRet.f32 %1522, 0
  %1524 = fsub fast float %192, %1523
  %1525 = fsub fast float %1366, %192
  %1526 = call float @dx.op.binary.f32(i32 35, float %1525, float %1524)  ; FMax(a,b)
  %1527 = extractvalue %dx.types.CBufRet.f32 %1522, 1
  %1528 = fsub fast float %197, %1527
  %1529 = fsub fast float %1367, %197
  %1530 = call float @dx.op.binary.f32(i32 35, float %1529, float %1528)  ; FMax(a,b)
  %1531 = call float @dx.op.binary.f32(i32 35, float %1526, float %1530)  ; FMax(a,b)
  %1532 = extractvalue %dx.types.CBufRet.f32 %1370, 3
  %1533 = fmul fast float %1532, %1531
  %1534 = call float @dx.op.unary.f32(i32 7, float %1533)  ; Saturate(value)
  %1535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %1536 = extractvalue %dx.types.CBufRet.f32 %1535, 0
  %1537 = extractvalue %dx.types.CBufRet.f32 %1535, 1
  %1538 = extractvalue %dx.types.CBufRet.f32 %1535, 2
  %1539 = extractvalue %dx.types.CBufRet.f32 %1535, 3
  %1540 = fsub fast float %1536, %1510
  %1541 = fsub fast float %1537, %1511
  %1542 = fsub fast float %1538, %1512
  %1543 = fsub fast float %1539, %1513
  %1544 = fmul fast float %1540, %1534
  %1545 = fmul fast float %1541, %1534
  %1546 = fmul fast float %1542, %1534
  %1547 = fmul fast float %1543, %1534
  %1548 = fadd fast float %1544, %1510
  %1549 = fadd fast float %1545, %1511
  %1550 = fadd fast float %1546, %1512
  %1551 = fadd fast float %1547, %1513
  %1552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %1553 = extractvalue %dx.types.CBufRet.f32 %1552, 0
  %1554 = extractvalue %dx.types.CBufRet.f32 %1552, 1
  %1555 = fsub fast float %1553, %1516
  %1556 = fsub fast float %1554, %1517
  %1557 = fmul fast float %1555, %1534
  %1558 = fmul fast float %1556, %1534
  %1559 = fadd fast float %1557, %1516
  %1560 = fadd fast float %1558, %1517
  %1561 = extractvalue %dx.types.CBufRet.f32 %1552, 2
  %1562 = extractvalue %dx.types.CBufRet.f32 %1552, 3
  %1563 = fsub fast float %1561, %1520
  %1564 = fsub fast float %1562, %1521
  %1565 = fmul fast float %1563, %1534
  %1566 = fmul fast float %1564, %1534
  %1567 = fadd fast float %1565, %1520
  %1568 = fadd fast float %1566, %1521
  %1569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %1570 = extractvalue %dx.types.CBufRet.f32 %1569, 0
  %1571 = fmul fast float %1570, %1548
  %1572 = fmul fast float %1570, %1549
  %1573 = fmul fast float %1570, %1550
  %1574 = fmul fast float %1570, %1551
  %1575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %1576 = extractvalue %dx.types.CBufRet.f32 %1575, 0
  %1577 = fmul fast float %1576, %1559
  %1578 = fmul fast float %1576, %1560
  %1579 = fadd fast float %1577, %1571
  %1580 = fadd fast float %1578, %1573
  %1581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %1582 = extractvalue %dx.types.CBufRet.f32 %1581, 0
  %1583 = fmul fast float %1582, %1567
  %1584 = fmul fast float %1582, %1568
  %1585 = fadd fast float %1579, %1583
  %1586 = fadd fast float %1580, %1584
  %1587 = extractvalue %dx.types.CBufRet.f32 %1569, 1
  %1588 = fmul fast float %1587, %1548
  %1589 = fmul fast float %1587, %1549
  %1590 = fmul fast float %1587, %1550
  %1591 = fmul fast float %1587, %1551
  %1592 = extractvalue %dx.types.CBufRet.f32 %1575, 1
  %1593 = fmul fast float %1592, %1559
  %1594 = fmul fast float %1592, %1560
  %1595 = fadd fast float %1593, %1588
  %1596 = fadd fast float %1594, %1590
  %1597 = extractvalue %dx.types.CBufRet.f32 %1581, 1
  %1598 = fmul fast float %1597, %1567
  %1599 = fmul fast float %1597, %1568
  %1600 = fadd fast float %1595, %1598
  %1601 = fadd fast float %1596, %1599
  %1602 = extractvalue %dx.types.CBufRet.f32 %1569, 2
  %1603 = fmul fast float %1602, %1548
  %1604 = fmul fast float %1602, %1549
  %1605 = fmul fast float %1602, %1550
  %1606 = fmul fast float %1602, %1551
  %1607 = extractvalue %dx.types.CBufRet.f32 %1575, 2
  %1608 = fmul fast float %1607, %1559
  %1609 = fmul fast float %1607, %1560
  %1610 = fadd fast float %1608, %1603
  %1611 = fadd fast float %1609, %1605
  %1612 = extractvalue %dx.types.CBufRet.f32 %1581, 2
  %1613 = fmul fast float %1612, %1567
  %1614 = fmul fast float %1612, %1568
  %1615 = fadd fast float %1610, %1613
  %1616 = fadd fast float %1611, %1614
  %1617 = fmul fast float %1604, %1604
  %1618 = fmul fast float %1616, %1616
  %1619 = fmul fast float %1606, %1606
  %1620 = fadd fast float %1619, %1617
  %1621 = fadd fast float %1620, %1618
  %1622 = call float @dx.op.unary.f32(i32 24, float %1621)  ; Sqrt(value)
  %1623 = fcmp fast ugt float %1622, 0.000000e+00
  br i1 %1623, label %1624, label %1639, !dx.controlflow.hints !77

; <label>:1624                                    ; preds = %1364
  %1625 = fsub fast float -0.000000e+00, %1606
  %1626 = fdiv fast float %1625, %1622
  %1627 = fsub fast float -0.000000e+00, %1604
  %1628 = fdiv fast float %1627, %1622
  %1629 = fdiv fast float %1616, %1622
  %1630 = fmul fast float %1615, 0x3FE279A760000000
  %1631 = fmul fast float %1628, %1604
  %1632 = fmul fast float %1629, %1616
  %1633 = fmul fast float %1626, %1606
  %1634 = fadd fast float %1631, %1633
  %1635 = fsub fast float %1634, %1632
  %1636 = call float @dx.op.unary.f32(i32 6, float %1635)  ; FAbs(value)
  %1637 = fadd fast float %1636, 0x3DDB7CDFE0000000
  %1638 = fdiv fast float %1630, %1637
  br label %1639

; <label>:1639                                    ; preds = %1624, %1364
  %1640 = phi float [ %1638, %1624 ], [ 1.000000e+00, %1364 ]
  %1641 = fmul fast float %1589, %1589
  %1642 = fmul fast float %1601, %1601
  %1643 = fmul fast float %1591, %1591
  %1644 = fadd fast float %1643, %1641
  %1645 = fadd fast float %1644, %1642
  %1646 = call float @dx.op.unary.f32(i32 24, float %1645)  ; Sqrt(value)
  %1647 = fcmp fast ugt float %1646, 0.000000e+00
  br i1 %1647, label %1648, label %1663, !dx.controlflow.hints !77

; <label>:1648                                    ; preds = %1639
  %1649 = fsub fast float -0.000000e+00, %1591
  %1650 = fdiv fast float %1649, %1646
  %1651 = fsub fast float -0.000000e+00, %1589
  %1652 = fdiv fast float %1651, %1646
  %1653 = fdiv fast float %1601, %1646
  %1654 = fmul fast float %1600, 0x3FE279A760000000
  %1655 = fmul fast float %1652, %1589
  %1656 = fmul fast float %1653, %1601
  %1657 = fmul fast float %1650, %1591
  %1658 = fadd fast float %1655, %1657
  %1659 = fsub fast float %1658, %1656
  %1660 = call float @dx.op.unary.f32(i32 6, float %1659)  ; FAbs(value)
  %1661 = fadd fast float %1660, 0x3DDB7CDFE0000000
  %1662 = fdiv fast float %1654, %1661
  br label %1663

; <label>:1663                                    ; preds = %1648, %1639
  %1664 = phi float [ %1662, %1648 ], [ 1.000000e+00, %1639 ]
  %1665 = call float @dx.op.binary.f32(i32 36, float %1664, float %1640)  ; FMin(a,b)
  %1666 = fmul fast float %1572, %1572
  %1667 = fmul fast float %1586, %1586
  %1668 = fmul fast float %1574, %1574
  %1669 = fadd fast float %1668, %1666
  %1670 = fadd fast float %1669, %1667
  %1671 = call float @dx.op.unary.f32(i32 24, float %1670)  ; Sqrt(value)
  %1672 = fcmp fast ugt float %1671, 0.000000e+00
  br i1 %1672, label %1673, label %1688, !dx.controlflow.hints !77

; <label>:1673                                    ; preds = %1663
  %1674 = fsub fast float -0.000000e+00, %1574
  %1675 = fdiv fast float %1674, %1671
  %1676 = fsub fast float -0.000000e+00, %1572
  %1677 = fdiv fast float %1676, %1671
  %1678 = fdiv fast float %1586, %1671
  %1679 = fmul fast float %1585, 0x3FE279A760000000
  %1680 = fmul fast float %1677, %1572
  %1681 = fmul fast float %1678, %1586
  %1682 = fmul fast float %1675, %1574
  %1683 = fadd fast float %1680, %1682
  %1684 = fsub fast float %1683, %1681
  %1685 = call float @dx.op.unary.f32(i32 6, float %1684)  ; FAbs(value)
  %1686 = fadd fast float %1685, 0x3DDB7CDFE0000000
  %1687 = fdiv fast float %1679, %1686
  br label %1688

; <label>:1688                                    ; preds = %1673, %1663
  %1689 = phi float [ %1687, %1673 ], [ 1.000000e+00, %1663 ]
  %1690 = call float @dx.op.binary.f32(i32 36, float %1689, float %1665)  ; FMin(a,b)
  %1691 = call float @dx.op.unary.f32(i32 7, float %1690)  ; Saturate(value)
  %1692 = fcmp fast olt float %1691, 1.000000e+00
  br i1 %1692, label %1693, label %1703, !dx.controlflow.hints !78

; <label>:1693                                    ; preds = %1688
  %1694 = fmul fast float %1691, %1572
  %1695 = fmul fast float %1691, %1586
  %1696 = fmul fast float %1691, %1574
  %1697 = fmul fast float %1691, %1589
  %1698 = fmul fast float %1691, %1601
  %1699 = fmul fast float %1691, %1591
  %1700 = fmul fast float %1691, %1604
  %1701 = fmul fast float %1691, %1616
  %1702 = fmul fast float %1691, %1606
  br label %1703

; <label>:1703                                    ; preds = %1693, %1688
  %1704 = phi float [ %1700, %1693 ], [ %1604, %1688 ]
  %1705 = phi float [ %1701, %1693 ], [ %1616, %1688 ]
  %1706 = phi float [ %1702, %1693 ], [ %1606, %1688 ]
  %1707 = phi float [ %1697, %1693 ], [ %1589, %1688 ]
  %1708 = phi float [ %1698, %1693 ], [ %1601, %1688 ]
  %1709 = phi float [ %1699, %1693 ], [ %1591, %1688 ]
  %1710 = phi float [ %1694, %1693 ], [ %1572, %1688 ]
  %1711 = phi float [ %1695, %1693 ], [ %1586, %1688 ]
  %1712 = phi float [ %1696, %1693 ], [ %1574, %1688 ]
  %1713 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1585)  ; FMax(a,b)
  %1714 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1600)  ; FMax(a,b)
  %1715 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1615)  ; FMax(a,b)
  %1716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %1717 = extractvalue %dx.types.CBufRet.f32 %1716, 0
  %1718 = fcmp fast ogt float %1717, 0.000000e+00
  %1719 = fcmp fast oge float %1373, 0.000000e+00
  %1720 = and i1 %1719, %1718
  %1721 = fcmp fast ole float %1373, 1.000000e+00
  %1722 = and i1 %1721, %1720
  %1723 = fcmp fast oge float %1374, 0.000000e+00
  %1724 = and i1 %1723, %1722
  %1725 = fcmp fast ole float %1374, 1.000000e+00
  %1726 = and i1 %1725, %1724
  br i1 %1726, label %1727, label %1872, !dx.controlflow.hints !79

; <label>:1727                                    ; preds = %1703
  %1728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1729 = extractvalue %dx.types.CBufRet.f32 %1728, 2
  %1730 = extractvalue %dx.types.CBufRet.f32 %1728, 3
  %1731 = fmul fast float %1729, %1373
  %1732 = fmul fast float %1730, %1374
  %1733 = call float @dx.op.unary.f32(i32 27, float %1731)  ; Round_ni(value)
  %1734 = call float @dx.op.unary.f32(i32 27, float %1732)  ; Round_ni(value)
  %1735 = fptosi float %1733 to i32
  %1736 = fptosi float %1734 to i32
  %1737 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %1735, i32 %1736, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1738 = extractvalue %dx.types.ResRet.i32 %1737, 0
  %1739 = and i32 %1738, 65535
  %1740 = lshr i32 %1738, 16
  %1741 = icmp eq i32 %1739, 65535
  br i1 %1741, label %1778, label %1742, !dx.controlflow.hints !80

; <label>:1742                                    ; preds = %1727
  %1743 = extractvalue %dx.types.CBufRet.f32 %1716, 1
  %1744 = extractvalue %dx.types.CBufRet.f32 %1728, 0
  %1745 = extractvalue %dx.types.CBufRet.f32 %1728, 1
  %1746 = fmul fast float %1744, %1373
  %1747 = fmul fast float %1745, %1374
  %1748 = fmul fast float %1746, 1.250000e-01
  %1749 = fmul fast float %1747, 1.250000e-01
  %1750 = call float @dx.op.unary.f32(i32 27, float %1748)  ; Round_ni(value)
  %1751 = call float @dx.op.unary.f32(i32 27, float %1749)  ; Round_ni(value)
  %1752 = fmul fast float %1750, 8.000000e+00
  %1753 = fmul fast float %1751, 8.000000e+00
  %1754 = and i32 %1738, 255
  %1755 = lshr i32 %1738, 8
  %1756 = and i32 %1755, 255
  %1757 = mul nuw nsw i32 %1754, 9
  %1758 = uitofp i32 %1757 to float
  %1759 = mul nuw nsw i32 %1756, 9
  %1760 = uitofp i32 %1759 to float
  %1761 = fadd fast float %1758, 5.000000e-01
  %1762 = fadd fast float %1761, %1746
  %1763 = fsub fast float %1762, %1752
  %1764 = fadd fast float %1760, 5.000000e-01
  %1765 = fadd fast float %1764, %1747
  %1766 = fsub fast float %1765, %1753
  %1767 = fdiv fast float %1763, %1717
  %1768 = fdiv fast float %1766, %1743
  %1769 = fmul fast float %1401, 4.375000e-01
  %1770 = fadd fast float %1769, 3.125000e-02
  %1771 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %25, float %1767, float %1768, float %1770, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1772 = extractvalue %dx.types.ResRet.f32 %1771, 0
  %1773 = extractvalue %dx.types.ResRet.f32 %1771, 1
  %1774 = extractvalue %dx.types.ResRet.f32 %1771, 2
  %1775 = fadd fast float %1772, %1713
  %1776 = fadd fast float %1773, %1714
  %1777 = fadd fast float %1774, %1715
  br label %1778

; <label>:1778                                    ; preds = %1742, %1727
  %1779 = phi float [ %1777, %1742 ], [ %1715, %1727 ]
  %1780 = phi float [ %1776, %1742 ], [ %1714, %1727 ]
  %1781 = phi float [ %1775, %1742 ], [ %1713, %1727 ]
  %1782 = icmp eq i32 %1740, 65535
  br i1 %1782, label %1872, label %1783, !dx.controlflow.hints !81

; <label>:1783                                    ; preds = %1778
  %1784 = extractvalue %dx.types.CBufRet.f32 %1716, 1
  %1785 = extractvalue %dx.types.CBufRet.f32 %1728, 0
  %1786 = extractvalue %dx.types.CBufRet.f32 %1728, 1
  %1787 = fmul fast float %1785, %1373
  %1788 = fmul fast float %1786, %1374
  %1789 = fmul fast float %1787, 1.250000e-01
  %1790 = fmul fast float %1788, 1.250000e-01
  %1791 = call float @dx.op.unary.f32(i32 27, float %1789)  ; Round_ni(value)
  %1792 = call float @dx.op.unary.f32(i32 27, float %1790)  ; Round_ni(value)
  %1793 = fmul fast float %1791, 8.000000e+00
  %1794 = fmul fast float %1792, 8.000000e+00
  %1795 = fsub fast float %1787, %1793
  %1796 = fsub fast float %1788, %1794
  %1797 = fadd fast float %1795, 5.000000e-01
  %1798 = fadd fast float %1796, 5.000000e-01
  %1799 = and i32 %1740, 255
  %1800 = lshr i32 %1738, 24
  %1801 = mul nuw nsw i32 %1799, 9
  %1802 = uitofp i32 %1801 to float
  %1803 = mul nuw nsw i32 %1800, 9
  %1804 = uitofp i32 %1803 to float
  %1805 = fadd fast float %1797, %1802
  %1806 = fadd fast float %1798, %1804
  %1807 = fdiv fast float %1805, %1717
  %1808 = fdiv fast float %1806, %1784
  %1809 = fmul fast float %1401, 4.375000e-01
  %1810 = fadd fast float %1809, 3.125000e-02
  %1811 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %25, float %1807, float %1808, float %1810, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1812 = extractvalue %dx.types.ResRet.f32 %1811, 0
  %1813 = extractvalue %dx.types.ResRet.f32 %1811, 1
  %1814 = extractvalue %dx.types.ResRet.f32 %1811, 2
  %1815 = fadd fast float %1809, 5.312500e-01
  %1816 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %25, float %1807, float %1808, float %1815, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1817 = extractvalue %dx.types.ResRet.f32 %1816, 0
  %1818 = extractvalue %dx.types.ResRet.f32 %1816, 1
  %1819 = extractvalue %dx.types.ResRet.f32 %1816, 2
  %1820 = fmul fast float %1817, 2.000000e+00
  %1821 = fmul fast float %1818, 2.000000e+00
  %1822 = fmul fast float %1819, 2.000000e+00
  %1823 = fadd fast float %1820, -1.000000e+00
  %1824 = fadd fast float %1821, -1.000000e+00
  %1825 = fadd fast float %1822, -1.000000e+00
  %1826 = fmul fast float %1823, %1823
  %1827 = fmul fast float %1824, %1824
  %1828 = fadd fast float %1826, %1827
  %1829 = fmul fast float %1825, %1825
  %1830 = fadd fast float %1828, %1829
  %1831 = call float @dx.op.unary.f32(i32 24, float %1830)  ; Sqrt(value)
  %1832 = fcmp fast ogt float %1831, 0.000000e+00
  br i1 %1832, label %1833, label %1837, !dx.controlflow.hints !82

; <label>:1833                                    ; preds = %1783
  %1834 = fdiv fast float %1823, %1831
  %1835 = fdiv fast float %1824, %1831
  %1836 = fdiv fast float %1825, %1831
  br label %1837

; <label>:1837                                    ; preds = %1833, %1783
  %1838 = phi float [ %1834, %1833 ], [ 0.000000e+00, %1783 ]
  %1839 = phi float [ %1835, %1833 ], [ 0.000000e+00, %1783 ]
  %1840 = phi float [ %1836, %1833 ], [ 0.000000e+00, %1783 ]
  %1841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1842 = extractvalue %dx.types.CBufRet.f32 %1841, 0
  %1843 = extractvalue %dx.types.CBufRet.f32 %1841, 1
  %1844 = fsub fast float %192, %1842
  %1845 = fsub fast float %197, %1843
  %1846 = fmul fast float %1844, %1844
  %1847 = fmul fast float %1845, %1845
  %1848 = fadd fast float %1846, %1847
  %1849 = call float @dx.op.unary.f32(i32 24, float %1848)  ; Sqrt(value)
  %1850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1851 = extractvalue %dx.types.CBufRet.f32 %1850, 0
  %1852 = extractvalue %dx.types.CBufRet.f32 %1850, 1
  %1853 = fsub fast float %1849, %1851
  %1854 = fdiv fast float %1853, %1852
  %1855 = call float @dx.op.unary.f32(i32 7, float %1854)  ; Saturate(value)
  %1856 = fmul fast float %1855, 2.000000e+00
  %1857 = fsub fast float 3.000000e+00, %1856
  %1858 = fmul fast float %1855, %1855
  %1859 = fmul fast float %1858, %1857
  %1860 = call float @dx.op.dot3.f32(i32 55, float %1838, float %1839, float %1840, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1861 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1860)  ; FMax(a,b)
  %1862 = fmul fast float %1861, 0x400C5BF8A0000000
  %1863 = fmul fast float %1859, %1812
  %1864 = fmul fast float %1863, %1862
  %1865 = fadd fast float %1864, %1781
  %1866 = fmul fast float %1859, %1813
  %1867 = fmul fast float %1866, %1862
  %1868 = fadd fast float %1867, %1780
  %1869 = fmul fast float %1859, %1814
  %1870 = fmul fast float %1869, %1862
  %1871 = fadd fast float %1870, %1779
  br label %1872

; <label>:1872                                    ; preds = %1837, %1778, %1703
  %1873 = phi float [ %1871, %1837 ], [ %1779, %1778 ], [ %1715, %1703 ]
  %1874 = phi float [ %1868, %1837 ], [ %1780, %1778 ], [ %1714, %1703 ]
  %1875 = phi float [ %1865, %1837 ], [ %1781, %1778 ], [ %1713, %1703 ]
  %1876 = fcmp fast ogt float %202, %1397
  %1877 = and i1 %1719, %1876
  %1878 = and i1 %1721, %1877
  %1879 = and i1 %1723, %1878
  %1880 = and i1 %1725, %1879
  br i1 %1880, label %1881, label %1938, !dx.controlflow.hints !83

; <label>:1881                                    ; preds = %1872
  %1882 = fmul fast float %1399, 0x3FC24924A0000000
  %1883 = fsub fast float %202, %1397
  %1884 = fdiv fast float %1883, %1882
  %1885 = call float @dx.op.unary.f32(i32 7, float %1884)  ; Saturate(value)
  %1886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %1887 = extractvalue %dx.types.CBufRet.f32 %1886, 0
  %1888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %1889 = extractvalue %dx.types.CBufRet.f32 %1888, 0
  %1890 = extractvalue %dx.types.CBufRet.f32 %1888, 1
  %1891 = extractvalue %dx.types.CBufRet.f32 %1888, 2
  %1892 = fsub fast float %1887, %1875
  %1893 = fsub fast float %1889, %1710
  %1894 = fsub fast float %1890, %1711
  %1895 = fsub fast float %1891, %1712
  %1896 = fmul fast float %1892, %1885
  %1897 = fmul fast float %1893, %1885
  %1898 = fmul fast float %1894, %1885
  %1899 = fmul fast float %1895, %1885
  %1900 = fadd fast float %1896, %1875
  %1901 = fadd fast float %1897, %1710
  %1902 = fadd fast float %1898, %1711
  %1903 = fadd fast float %1899, %1712
  %1904 = extractvalue %dx.types.CBufRet.f32 %1886, 1
  %1905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %1906 = extractvalue %dx.types.CBufRet.f32 %1905, 0
  %1907 = extractvalue %dx.types.CBufRet.f32 %1905, 1
  %1908 = extractvalue %dx.types.CBufRet.f32 %1905, 2
  %1909 = fsub fast float %1904, %1874
  %1910 = fsub fast float %1906, %1707
  %1911 = fsub fast float %1907, %1708
  %1912 = fsub fast float %1908, %1709
  %1913 = fmul fast float %1909, %1885
  %1914 = fmul fast float %1910, %1885
  %1915 = fmul fast float %1911, %1885
  %1916 = fmul fast float %1912, %1885
  %1917 = fadd fast float %1913, %1874
  %1918 = fadd fast float %1914, %1707
  %1919 = fadd fast float %1915, %1708
  %1920 = fadd fast float %1916, %1709
  %1921 = extractvalue %dx.types.CBufRet.f32 %1886, 2
  %1922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %1923 = extractvalue %dx.types.CBufRet.f32 %1922, 0
  %1924 = extractvalue %dx.types.CBufRet.f32 %1922, 1
  %1925 = extractvalue %dx.types.CBufRet.f32 %1922, 2
  %1926 = fsub fast float %1921, %1873
  %1927 = fsub fast float %1923, %1704
  %1928 = fsub fast float %1924, %1705
  %1929 = fsub fast float %1925, %1706
  %1930 = fmul fast float %1926, %1885
  %1931 = fmul fast float %1927, %1885
  %1932 = fmul fast float %1928, %1885
  %1933 = fmul fast float %1929, %1885
  %1934 = fadd fast float %1930, %1873
  %1935 = fadd fast float %1931, %1704
  %1936 = fadd fast float %1932, %1705
  %1937 = fadd fast float %1933, %1706
  br label %1938

; <label>:1938                                    ; preds = %1881, %1872
  %1939 = phi float [ %1934, %1881 ], [ %1873, %1872 ]
  %1940 = phi float [ %1935, %1881 ], [ %1704, %1872 ]
  %1941 = phi float [ %1936, %1881 ], [ %1705, %1872 ]
  %1942 = phi float [ %1937, %1881 ], [ %1706, %1872 ]
  %1943 = phi float [ %1917, %1881 ], [ %1874, %1872 ]
  %1944 = phi float [ %1918, %1881 ], [ %1707, %1872 ]
  %1945 = phi float [ %1919, %1881 ], [ %1708, %1872 ]
  %1946 = phi float [ %1920, %1881 ], [ %1709, %1872 ]
  %1947 = phi float [ %1900, %1881 ], [ %1875, %1872 ]
  %1948 = phi float [ %1901, %1881 ], [ %1710, %1872 ]
  %1949 = phi float [ %1902, %1881 ], [ %1711, %1872 ]
  %1950 = phi float [ %1903, %1881 ], [ %1712, %1872 ]
  %1951 = extractvalue %dx.types.CBufRet.f32 %1522, 3
  %1952 = fmul fast float %1951, %1947
  %1953 = fmul fast float %1951, %1943
  %1954 = fmul fast float %1951, %1939
  %1955 = fmul fast float %1948, 1.500000e+00
  %1956 = fmul fast float %1955, %1951
  %1957 = fmul fast float %1949, 1.500000e+00
  %1958 = fmul fast float %1957, %1951
  %1959 = fmul fast float %1950, 1.500000e+00
  %1960 = fmul fast float %1959, %1951
  %1961 = fmul fast float %1944, 1.500000e+00
  %1962 = fmul fast float %1961, %1951
  %1963 = fmul fast float %1945, 1.500000e+00
  %1964 = fmul fast float %1963, %1951
  %1965 = fmul fast float %1946, 1.500000e+00
  %1966 = fmul fast float %1965, %1951
  %1967 = fmul fast float %1940, 1.500000e+00
  %1968 = fmul fast float %1967, %1951
  %1969 = fmul fast float %1941, 1.500000e+00
  %1970 = fmul fast float %1969, %1951
  %1971 = fmul fast float %1942, 1.500000e+00
  %1972 = fmul fast float %1971, %1951
  %1973 = fsub fast float %1353, %1952
  %1974 = fmul fast float %1973, %242
  %1975 = fadd fast float %1974, %1952
  %1976 = fsub fast float %1352, %1956
  %1977 = fmul fast float %1976, %242
  %1978 = fadd fast float %1977, %1956
  %1979 = fsub fast float %1351, %1958
  %1980 = fmul fast float %1979, %242
  %1981 = fadd fast float %1980, %1958
  %1982 = fsub fast float %1350, %1960
  %1983 = fmul fast float %1982, %242
  %1984 = fadd fast float %1983, %1960
  %1985 = fmul fast float %1349, %242
  %1986 = fmul fast float %1348, %242
  %1987 = fmul fast float %1347, %242
  %1988 = fmul fast float %1346, %242
  %1989 = fmul fast float %1345, %242
  %1990 = fsub fast float %1344, %1953
  %1991 = fmul fast float %1990, %242
  %1992 = fadd fast float %1991, %1953
  %1993 = fsub fast float %1343, %1962
  %1994 = fmul fast float %1993, %242
  %1995 = fadd fast float %1994, %1962
  %1996 = fsub fast float %1342, %1964
  %1997 = fmul fast float %1996, %242
  %1998 = fadd fast float %1997, %1964
  %1999 = fsub fast float %1341, %1966
  %2000 = fmul fast float %1999, %242
  %2001 = fadd fast float %2000, %1966
  %2002 = fmul fast float %1340, %242
  %2003 = fmul fast float %1339, %242
  %2004 = fmul fast float %1338, %242
  %2005 = fmul fast float %1337, %242
  %2006 = fmul fast float %1336, %242
  %2007 = fsub fast float %1362, %1954
  %2008 = fmul fast float %2007, %242
  %2009 = fadd fast float %2008, %1954
  %2010 = fsub fast float %1361, %1968
  %2011 = fmul fast float %2010, %242
  %2012 = fadd fast float %2011, %1968
  %2013 = fsub fast float %1360, %1970
  %2014 = fmul fast float %2013, %242
  %2015 = fadd fast float %2014, %1970
  %2016 = fsub fast float %1359, %1972
  %2017 = fmul fast float %2016, %242
  %2018 = fadd fast float %2017, %1972
  %2019 = fmul fast float %1358, %242
  %2020 = fmul fast float %1357, %242
  %2021 = fmul fast float %1356, %242
  %2022 = fmul fast float %1355, %242
  %2023 = fmul fast float %1354, %242
  br label %2024

; <label>:2024                                    ; preds = %1938, %1335
  %2025 = phi float [ %1336, %1335 ], [ %2006, %1938 ]
  %2026 = phi float [ %1337, %1335 ], [ %2005, %1938 ]
  %2027 = phi float [ %1338, %1335 ], [ %2004, %1938 ]
  %2028 = phi float [ %1339, %1335 ], [ %2003, %1938 ]
  %2029 = phi float [ %1340, %1335 ], [ %2002, %1938 ]
  %2030 = phi float [ %1341, %1335 ], [ %2001, %1938 ]
  %2031 = phi float [ %1342, %1335 ], [ %1998, %1938 ]
  %2032 = phi float [ %1343, %1335 ], [ %1995, %1938 ]
  %2033 = phi float [ %1344, %1335 ], [ %1992, %1938 ]
  %2034 = phi float [ %1345, %1335 ], [ %1989, %1938 ]
  %2035 = phi float [ %1346, %1335 ], [ %1988, %1938 ]
  %2036 = phi float [ %1347, %1335 ], [ %1987, %1938 ]
  %2037 = phi float [ %1348, %1335 ], [ %1986, %1938 ]
  %2038 = phi float [ %1349, %1335 ], [ %1985, %1938 ]
  %2039 = phi float [ %1350, %1335 ], [ %1984, %1938 ]
  %2040 = phi float [ %1351, %1335 ], [ %1981, %1938 ]
  %2041 = phi float [ %1352, %1335 ], [ %1978, %1938 ]
  %2042 = phi float [ %1353, %1335 ], [ %1975, %1938 ]
  %2043 = phi float [ %1354, %1335 ], [ %2023, %1938 ]
  %2044 = phi float [ %1355, %1335 ], [ %2022, %1938 ]
  %2045 = phi float [ %1356, %1335 ], [ %2021, %1938 ]
  %2046 = phi float [ %1357, %1335 ], [ %2020, %1938 ]
  %2047 = phi float [ %1358, %1335 ], [ %2019, %1938 ]
  %2048 = phi float [ %1359, %1335 ], [ %2018, %1938 ]
  %2049 = phi float [ %1360, %1335 ], [ %2015, %1938 ]
  %2050 = phi float [ %1361, %1335 ], [ %2012, %1938 ]
  %2051 = phi float [ %1362, %1335 ], [ %2009, %1938 ]
  %2052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2053 = extractvalue %dx.types.CBufRet.f32 %2052, 0
  %2054 = extractvalue %dx.types.CBufRet.f32 %2052, 1
  %2055 = extractvalue %dx.types.CBufRet.f32 %2052, 2
  %2056 = fsub fast float %192, %2053
  %2057 = fsub fast float %197, %2054
  %2058 = fsub fast float %202, %2055
  %2059 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2060 = extractvalue %dx.types.CBufRet.i32 %2059, 2
  %2061 = icmp eq i32 %2060, 0
  br i1 %2061, label %2412, label %2062

; <label>:2062                                    ; preds = %2024
  br label %2063

; <label>:2063                                    ; preds = %2378, %2062
  %2064 = phi float [ %2379, %2378 ], [ 0.000000e+00, %2062 ]
  %2065 = phi float [ %2380, %2378 ], [ 0.000000e+00, %2062 ]
  %2066 = phi float [ %2381, %2378 ], [ 0.000000e+00, %2062 ]
  %2067 = phi float [ %2382, %2378 ], [ 0.000000e+00, %2062 ]
  %2068 = phi float [ %2383, %2378 ], [ 0.000000e+00, %2062 ]
  %2069 = phi float [ %2384, %2378 ], [ 0.000000e+00, %2062 ]
  %2070 = phi float [ %2385, %2378 ], [ 0.000000e+00, %2062 ]
  %2071 = phi float [ %2386, %2378 ], [ 0.000000e+00, %2062 ]
  %2072 = phi float [ %2387, %2378 ], [ 0.000000e+00, %2062 ]
  %2073 = phi float [ %2388, %2378 ], [ 0.000000e+00, %2062 ]
  %2074 = phi float [ %2389, %2378 ], [ 0.000000e+00, %2062 ]
  %2075 = phi float [ %2390, %2378 ], [ 0.000000e+00, %2062 ]
  %2076 = phi float [ %2391, %2378 ], [ 0.000000e+00, %2062 ]
  %2077 = phi float [ %2392, %2378 ], [ 0.000000e+00, %2062 ]
  %2078 = phi float [ %2393, %2378 ], [ 0.000000e+00, %2062 ]
  %2079 = phi float [ %2394, %2378 ], [ 0.000000e+00, %2062 ]
  %2080 = phi float [ %2395, %2378 ], [ 0.000000e+00, %2062 ]
  %2081 = phi float [ %2396, %2378 ], [ 0.000000e+00, %2062 ]
  %2082 = phi float [ %2397, %2378 ], [ 0.000000e+00, %2062 ]
  %2083 = phi float [ %2398, %2378 ], [ 0.000000e+00, %2062 ]
  %2084 = phi float [ %2399, %2378 ], [ 0.000000e+00, %2062 ]
  %2085 = phi float [ %2400, %2378 ], [ 0.000000e+00, %2062 ]
  %2086 = phi float [ %2401, %2378 ], [ 0.000000e+00, %2062 ]
  %2087 = phi float [ %2402, %2378 ], [ 0.000000e+00, %2062 ]
  %2088 = phi float [ %2403, %2378 ], [ 0.000000e+00, %2062 ]
  %2089 = phi float [ %2404, %2378 ], [ 0.000000e+00, %2062 ]
  %2090 = phi float [ %2405, %2378 ], [ 0.000000e+00, %2062 ]
  %2091 = phi float [ %2406, %2378 ], [ 1.000000e+00, %2062 ]
  %2092 = phi i32 [ %2407, %2378 ], [ 0, %2062 ]
  %2093 = shl i32 %2092, 2
  %2094 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %2093, i32 undef)  ; BufferLoad(srv,index,wot)
  %2095 = extractvalue %dx.types.ResRet.i32 %2094, 0
  %2096 = icmp ne i32 %2095, 0
  %2097 = fcmp fast ogt float %2091, 0.000000e+00
  %2098 = and i1 %2097, %2096
  br i1 %2098, label %2099, label %2378

; <label>:2099                                    ; preds = %2063
  br label %2100

; <label>:2100                                    ; preds = %2345, %2099
  %2101 = phi float [ %2346, %2345 ], [ %2064, %2099 ]
  %2102 = phi float [ %2347, %2345 ], [ %2065, %2099 ]
  %2103 = phi float [ %2348, %2345 ], [ %2066, %2099 ]
  %2104 = phi float [ %2349, %2345 ], [ %2067, %2099 ]
  %2105 = phi float [ %2350, %2345 ], [ %2068, %2099 ]
  %2106 = phi float [ %2351, %2345 ], [ %2069, %2099 ]
  %2107 = phi float [ %2352, %2345 ], [ %2070, %2099 ]
  %2108 = phi float [ %2353, %2345 ], [ %2071, %2099 ]
  %2109 = phi float [ %2354, %2345 ], [ %2072, %2099 ]
  %2110 = phi float [ %2355, %2345 ], [ %2073, %2099 ]
  %2111 = phi float [ %2356, %2345 ], [ %2074, %2099 ]
  %2112 = phi float [ %2357, %2345 ], [ %2075, %2099 ]
  %2113 = phi float [ %2358, %2345 ], [ %2076, %2099 ]
  %2114 = phi float [ %2359, %2345 ], [ %2077, %2099 ]
  %2115 = phi float [ %2360, %2345 ], [ %2078, %2099 ]
  %2116 = phi float [ %2361, %2345 ], [ %2079, %2099 ]
  %2117 = phi float [ %2362, %2345 ], [ %2080, %2099 ]
  %2118 = phi float [ %2363, %2345 ], [ %2081, %2099 ]
  %2119 = phi float [ %2364, %2345 ], [ %2082, %2099 ]
  %2120 = phi float [ %2365, %2345 ], [ %2083, %2099 ]
  %2121 = phi float [ %2366, %2345 ], [ %2084, %2099 ]
  %2122 = phi float [ %2367, %2345 ], [ %2085, %2099 ]
  %2123 = phi float [ %2368, %2345 ], [ %2086, %2099 ]
  %2124 = phi float [ %2369, %2345 ], [ %2087, %2099 ]
  %2125 = phi float [ %2370, %2345 ], [ %2088, %2099 ]
  %2126 = phi float [ %2371, %2345 ], [ %2089, %2099 ]
  %2127 = phi float [ %2372, %2345 ], [ %2090, %2099 ]
  %2128 = phi float [ %2373, %2345 ], [ %2091, %2099 ]
  %2129 = phi i32 [ %2133, %2345 ], [ %2095, %2099 ]
  %2130 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2129)  ; FirstbitLo(value)
  %2131 = and i32 %2130, 31
  %2132 = shl i32 1, %2131
  %2133 = xor i32 %2132, %2129
  %2134 = shl i32 %2092, 5
  %2135 = add i32 %2130, %2134
  %2136 = mul i32 %2135, 72
  %2137 = add i32 %2136, 12
  %2138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %2137, i32 undef)  ; BufferLoad(srv,index,wot)
  %2139 = extractvalue %dx.types.ResRet.i32 %2138, 0
  %2140 = add i32 %2136, 16
  %2141 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %2140, i32 undef)  ; BufferLoad(srv,index,wot)
  %2142 = extractvalue %dx.types.ResRet.f32 %2141, 0
  %2143 = extractvalue %dx.types.ResRet.f32 %2141, 1
  %2144 = extractvalue %dx.types.ResRet.f32 %2141, 2
  %2145 = mul i32 %2135, 60
  %2146 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %2145, i32 undef)  ; BufferLoad(srv,index,wot)
  %2147 = extractvalue %dx.types.ResRet.f32 %2146, 0
  %2148 = extractvalue %dx.types.ResRet.f32 %2146, 1
  %2149 = extractvalue %dx.types.ResRet.f32 %2146, 2
  %2150 = add i32 %2145, 12
  %2151 = add i32 %2145, 48
  %2152 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %2151, i32 undef)  ; BufferLoad(srv,index,wot)
  %2153 = extractvalue %dx.types.ResRet.f32 %2152, 0
  %2154 = extractvalue %dx.types.ResRet.f32 %2152, 1
  %2155 = extractvalue %dx.types.ResRet.f32 %2152, 2
  %2156 = and i32 %2139, 32767
  %2157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2158 = extractvalue %dx.types.CBufRet.f32 %2157, 0
  %2159 = extractvalue %dx.types.CBufRet.f32 %2157, 1
  %2160 = extractvalue %dx.types.CBufRet.f32 %2157, 2
  %2161 = fsub fast float %2147, %2158
  %2162 = fsub fast float %2148, %2159
  %2163 = fsub fast float %2149, %2160
  %2164 = fsub fast float %2056, %2161
  %2165 = fsub fast float %2057, %2162
  %2166 = fsub fast float %2058, %2163
  %2167 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %2150, i32 undef)  ; BufferLoad(srv,index,wot)
  %2168 = extractvalue %dx.types.ResRet.f32 %2167, 0
  %2169 = extractvalue %dx.types.ResRet.f32 %2167, 1
  %2170 = extractvalue %dx.types.ResRet.f32 %2167, 2
  %2171 = call float @dx.op.dot3.f32(i32 55, float %2164, float %2165, float %2166, float %2168, float %2169, float %2170)  ; Dot3(ax,ay,az,bx,by,bz)
  %2172 = add i32 %2145, 24
  %2173 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %2172, i32 undef)  ; BufferLoad(srv,index,wot)
  %2174 = extractvalue %dx.types.ResRet.f32 %2173, 0
  %2175 = extractvalue %dx.types.ResRet.f32 %2173, 1
  %2176 = extractvalue %dx.types.ResRet.f32 %2173, 2
  %2177 = call float @dx.op.dot3.f32(i32 55, float %2164, float %2165, float %2166, float %2174, float %2175, float %2176)  ; Dot3(ax,ay,az,bx,by,bz)
  %2178 = add i32 %2145, 36
  %2179 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %2178, i32 undef)  ; BufferLoad(srv,index,wot)
  %2180 = extractvalue %dx.types.ResRet.f32 %2179, 0
  %2181 = extractvalue %dx.types.ResRet.f32 %2179, 1
  %2182 = extractvalue %dx.types.ResRet.f32 %2179, 2
  %2183 = call float @dx.op.dot3.f32(i32 55, float %2164, float %2165, float %2166, float %2180, float %2181, float %2182)  ; Dot3(ax,ay,az,bx,by,bz)
  %2184 = call float @dx.op.unary.f32(i32 6, float %2171)  ; FAbs(value)
  %2185 = call float @dx.op.unary.f32(i32 6, float %2177)  ; FAbs(value)
  %2186 = call float @dx.op.unary.f32(i32 6, float %2183)  ; FAbs(value)
  %2187 = fsub fast float %2153, %2184
  %2188 = fsub fast float %2154, %2185
  %2189 = fsub fast float %2155, %2186
  %2190 = fmul fast float %2187, %2142
  %2191 = fmul fast float %2188, %2143
  %2192 = fmul fast float %2189, %2144
  %2193 = call float @dx.op.binary.f32(i32 36, float %2191, float %2192)  ; FMin(a,b)
  %2194 = call float @dx.op.binary.f32(i32 36, float %2190, float %2193)  ; FMin(a,b)
  %2195 = call float @dx.op.unary.f32(i32 7, float %2194)  ; Saturate(value)
  %2196 = call float @dx.op.binary.f32(i32 36, float %2128, float %2195)  ; FMin(a,b)
  %2197 = fcmp fast ogt float %2196, 0.000000e+00
  br i1 %2197, label %2198, label %2345, !dx.controlflow.hints !84

; <label>:2198                                    ; preds = %2100
  %2199 = lshr i32 %2139, 16
  %2200 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2199)  ; LegacyF16ToF32(value)
  %2201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 141)  ; CBufferLoadLegacy(handle,regIndex)
  %2202 = extractvalue %dx.types.CBufRet.f32 %2201, 3
  %2203 = bitcast float %2202 to i32
  %2204 = add i32 %2203, %2156
  %2205 = mul i32 %2204, 36
  %2206 = shl i32 %2203, 1
  %2207 = add i32 %2206, %2156
  %2208 = mul i32 %2207, 36
  %2209 = mul i32 %2203, 3
  %2210 = add i32 %2209, %2156
  %2211 = mul i32 %2210, 36
  %2212 = fmul fast float %2200, %2196
  %2213 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2205, i32 undef)  ; BufferLoad(srv,index,wot)
  %2214 = extractvalue %dx.types.ResRet.f32 %2213, 0
  %2215 = fmul fast float %2214, %2212
  %2216 = fadd fast float %2215, %2109
  %2217 = add i32 %2205, 4
  %2218 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2217, i32 undef)  ; BufferLoad(srv,index,wot)
  %2219 = extractvalue %dx.types.ResRet.f32 %2218, 0
  %2220 = fmul fast float %2219, %2212
  %2221 = fadd fast float %2220, %2108
  %2222 = add i32 %2205, 8
  %2223 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2222, i32 undef)  ; BufferLoad(srv,index,wot)
  %2224 = extractvalue %dx.types.ResRet.f32 %2223, 0
  %2225 = fmul fast float %2224, %2212
  %2226 = fadd fast float %2225, %2107
  %2227 = add i32 %2205, 12
  %2228 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2227, i32 undef)  ; BufferLoad(srv,index,wot)
  %2229 = extractvalue %dx.types.ResRet.f32 %2228, 0
  %2230 = fmul fast float %2229, %2212
  %2231 = fadd fast float %2230, %2106
  %2232 = add i32 %2205, 16
  %2233 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2232, i32 undef)  ; BufferLoad(srv,index,wot)
  %2234 = extractvalue %dx.types.ResRet.f32 %2233, 0
  %2235 = fmul fast float %2234, %2212
  %2236 = fadd fast float %2235, %2105
  %2237 = add i32 %2205, 20
  %2238 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2237, i32 undef)  ; BufferLoad(srv,index,wot)
  %2239 = extractvalue %dx.types.ResRet.f32 %2238, 0
  %2240 = fmul fast float %2239, %2212
  %2241 = fadd fast float %2240, %2104
  %2242 = add i32 %2205, 24
  %2243 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2242, i32 undef)  ; BufferLoad(srv,index,wot)
  %2244 = extractvalue %dx.types.ResRet.f32 %2243, 0
  %2245 = fmul fast float %2244, %2212
  %2246 = fadd fast float %2245, %2103
  %2247 = add i32 %2205, 28
  %2248 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2247, i32 undef)  ; BufferLoad(srv,index,wot)
  %2249 = extractvalue %dx.types.ResRet.f32 %2248, 0
  %2250 = fmul fast float %2249, %2212
  %2251 = fadd fast float %2250, %2102
  %2252 = add i32 %2205, 32
  %2253 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2252, i32 undef)  ; BufferLoad(srv,index,wot)
  %2254 = extractvalue %dx.types.ResRet.f32 %2253, 0
  %2255 = fmul fast float %2254, %2212
  %2256 = fadd fast float %2255, %2101
  %2257 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2208, i32 undef)  ; BufferLoad(srv,index,wot)
  %2258 = extractvalue %dx.types.ResRet.f32 %2257, 0
  %2259 = fmul fast float %2258, %2212
  %2260 = fadd fast float %2259, %2118
  %2261 = add i32 %2208, 4
  %2262 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2261, i32 undef)  ; BufferLoad(srv,index,wot)
  %2263 = extractvalue %dx.types.ResRet.f32 %2262, 0
  %2264 = fmul fast float %2263, %2212
  %2265 = fadd fast float %2264, %2117
  %2266 = add i32 %2208, 8
  %2267 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2266, i32 undef)  ; BufferLoad(srv,index,wot)
  %2268 = extractvalue %dx.types.ResRet.f32 %2267, 0
  %2269 = fmul fast float %2268, %2212
  %2270 = fadd fast float %2269, %2116
  %2271 = add i32 %2208, 12
  %2272 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2271, i32 undef)  ; BufferLoad(srv,index,wot)
  %2273 = extractvalue %dx.types.ResRet.f32 %2272, 0
  %2274 = fmul fast float %2273, %2212
  %2275 = fadd fast float %2274, %2115
  %2276 = add i32 %2208, 16
  %2277 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2276, i32 undef)  ; BufferLoad(srv,index,wot)
  %2278 = extractvalue %dx.types.ResRet.f32 %2277, 0
  %2279 = fmul fast float %2278, %2212
  %2280 = fadd fast float %2279, %2114
  %2281 = add i32 %2208, 20
  %2282 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2281, i32 undef)  ; BufferLoad(srv,index,wot)
  %2283 = extractvalue %dx.types.ResRet.f32 %2282, 0
  %2284 = fmul fast float %2283, %2212
  %2285 = fadd fast float %2284, %2113
  %2286 = add i32 %2208, 24
  %2287 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2286, i32 undef)  ; BufferLoad(srv,index,wot)
  %2288 = extractvalue %dx.types.ResRet.f32 %2287, 0
  %2289 = fmul fast float %2288, %2212
  %2290 = fadd fast float %2289, %2112
  %2291 = add i32 %2208, 28
  %2292 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2291, i32 undef)  ; BufferLoad(srv,index,wot)
  %2293 = extractvalue %dx.types.ResRet.f32 %2292, 0
  %2294 = fmul fast float %2293, %2212
  %2295 = fadd fast float %2294, %2111
  %2296 = add i32 %2208, 32
  %2297 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2296, i32 undef)  ; BufferLoad(srv,index,wot)
  %2298 = extractvalue %dx.types.ResRet.f32 %2297, 0
  %2299 = fmul fast float %2298, %2212
  %2300 = fadd fast float %2299, %2110
  %2301 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2211, i32 undef)  ; BufferLoad(srv,index,wot)
  %2302 = extractvalue %dx.types.ResRet.f32 %2301, 0
  %2303 = fmul fast float %2302, %2212
  %2304 = fadd fast float %2303, %2127
  %2305 = add i32 %2211, 4
  %2306 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2305, i32 undef)  ; BufferLoad(srv,index,wot)
  %2307 = extractvalue %dx.types.ResRet.f32 %2306, 0
  %2308 = fmul fast float %2307, %2212
  %2309 = fadd fast float %2308, %2126
  %2310 = add i32 %2211, 8
  %2311 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2310, i32 undef)  ; BufferLoad(srv,index,wot)
  %2312 = extractvalue %dx.types.ResRet.f32 %2311, 0
  %2313 = fmul fast float %2312, %2212
  %2314 = fadd fast float %2313, %2125
  %2315 = add i32 %2211, 12
  %2316 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2315, i32 undef)  ; BufferLoad(srv,index,wot)
  %2317 = extractvalue %dx.types.ResRet.f32 %2316, 0
  %2318 = fmul fast float %2317, %2212
  %2319 = fadd fast float %2318, %2124
  %2320 = add i32 %2211, 16
  %2321 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2320, i32 undef)  ; BufferLoad(srv,index,wot)
  %2322 = extractvalue %dx.types.ResRet.f32 %2321, 0
  %2323 = fmul fast float %2322, %2212
  %2324 = fadd fast float %2323, %2123
  %2325 = add i32 %2211, 20
  %2326 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2325, i32 undef)  ; BufferLoad(srv,index,wot)
  %2327 = extractvalue %dx.types.ResRet.f32 %2326, 0
  %2328 = fmul fast float %2327, %2212
  %2329 = fadd fast float %2328, %2122
  %2330 = add i32 %2211, 24
  %2331 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2330, i32 undef)  ; BufferLoad(srv,index,wot)
  %2332 = extractvalue %dx.types.ResRet.f32 %2331, 0
  %2333 = fmul fast float %2332, %2212
  %2334 = fadd fast float %2333, %2121
  %2335 = add i32 %2211, 28
  %2336 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2335, i32 undef)  ; BufferLoad(srv,index,wot)
  %2337 = extractvalue %dx.types.ResRet.f32 %2336, 0
  %2338 = fmul fast float %2337, %2212
  %2339 = fadd fast float %2338, %2120
  %2340 = add i32 %2211, 32
  %2341 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2340, i32 undef)  ; BufferLoad(srv,index,wot)
  %2342 = extractvalue %dx.types.ResRet.f32 %2341, 0
  %2343 = fmul fast float %2342, %2212
  %2344 = fadd fast float %2343, %2119
  br label %2345

; <label>:2345                                    ; preds = %2198, %2100
  %2346 = phi float [ %2256, %2198 ], [ %2101, %2100 ]
  %2347 = phi float [ %2251, %2198 ], [ %2102, %2100 ]
  %2348 = phi float [ %2246, %2198 ], [ %2103, %2100 ]
  %2349 = phi float [ %2241, %2198 ], [ %2104, %2100 ]
  %2350 = phi float [ %2236, %2198 ], [ %2105, %2100 ]
  %2351 = phi float [ %2231, %2198 ], [ %2106, %2100 ]
  %2352 = phi float [ %2226, %2198 ], [ %2107, %2100 ]
  %2353 = phi float [ %2221, %2198 ], [ %2108, %2100 ]
  %2354 = phi float [ %2216, %2198 ], [ %2109, %2100 ]
  %2355 = phi float [ %2300, %2198 ], [ %2110, %2100 ]
  %2356 = phi float [ %2295, %2198 ], [ %2111, %2100 ]
  %2357 = phi float [ %2290, %2198 ], [ %2112, %2100 ]
  %2358 = phi float [ %2285, %2198 ], [ %2113, %2100 ]
  %2359 = phi float [ %2280, %2198 ], [ %2114, %2100 ]
  %2360 = phi float [ %2275, %2198 ], [ %2115, %2100 ]
  %2361 = phi float [ %2270, %2198 ], [ %2116, %2100 ]
  %2362 = phi float [ %2265, %2198 ], [ %2117, %2100 ]
  %2363 = phi float [ %2260, %2198 ], [ %2118, %2100 ]
  %2364 = phi float [ %2344, %2198 ], [ %2119, %2100 ]
  %2365 = phi float [ %2339, %2198 ], [ %2120, %2100 ]
  %2366 = phi float [ %2334, %2198 ], [ %2121, %2100 ]
  %2367 = phi float [ %2329, %2198 ], [ %2122, %2100 ]
  %2368 = phi float [ %2324, %2198 ], [ %2123, %2100 ]
  %2369 = phi float [ %2319, %2198 ], [ %2124, %2100 ]
  %2370 = phi float [ %2314, %2198 ], [ %2125, %2100 ]
  %2371 = phi float [ %2309, %2198 ], [ %2126, %2100 ]
  %2372 = phi float [ %2304, %2198 ], [ %2127, %2100 ]
  %2373 = fsub fast float %2128, %2196
  %2374 = icmp ne i32 %2129, %2132
  %2375 = fcmp fast ogt float %2373, 0.000000e+00
  %2376 = and i1 %2374, %2375
  br i1 %2376, label %2100, label %2377

; <label>:2377                                    ; preds = %2345
  br label %2378

; <label>:2378                                    ; preds = %2377, %2063
  %2379 = phi float [ %2064, %2063 ], [ %2346, %2377 ]
  %2380 = phi float [ %2065, %2063 ], [ %2347, %2377 ]
  %2381 = phi float [ %2066, %2063 ], [ %2348, %2377 ]
  %2382 = phi float [ %2067, %2063 ], [ %2349, %2377 ]
  %2383 = phi float [ %2068, %2063 ], [ %2350, %2377 ]
  %2384 = phi float [ %2069, %2063 ], [ %2351, %2377 ]
  %2385 = phi float [ %2070, %2063 ], [ %2352, %2377 ]
  %2386 = phi float [ %2071, %2063 ], [ %2353, %2377 ]
  %2387 = phi float [ %2072, %2063 ], [ %2354, %2377 ]
  %2388 = phi float [ %2073, %2063 ], [ %2355, %2377 ]
  %2389 = phi float [ %2074, %2063 ], [ %2356, %2377 ]
  %2390 = phi float [ %2075, %2063 ], [ %2357, %2377 ]
  %2391 = phi float [ %2076, %2063 ], [ %2358, %2377 ]
  %2392 = phi float [ %2077, %2063 ], [ %2359, %2377 ]
  %2393 = phi float [ %2078, %2063 ], [ %2360, %2377 ]
  %2394 = phi float [ %2079, %2063 ], [ %2361, %2377 ]
  %2395 = phi float [ %2080, %2063 ], [ %2362, %2377 ]
  %2396 = phi float [ %2081, %2063 ], [ %2363, %2377 ]
  %2397 = phi float [ %2082, %2063 ], [ %2364, %2377 ]
  %2398 = phi float [ %2083, %2063 ], [ %2365, %2377 ]
  %2399 = phi float [ %2084, %2063 ], [ %2366, %2377 ]
  %2400 = phi float [ %2085, %2063 ], [ %2367, %2377 ]
  %2401 = phi float [ %2086, %2063 ], [ %2368, %2377 ]
  %2402 = phi float [ %2087, %2063 ], [ %2369, %2377 ]
  %2403 = phi float [ %2088, %2063 ], [ %2370, %2377 ]
  %2404 = phi float [ %2089, %2063 ], [ %2371, %2377 ]
  %2405 = phi float [ %2090, %2063 ], [ %2372, %2377 ]
  %2406 = phi float [ %2091, %2063 ], [ %2373, %2377 ]
  %2407 = add i32 %2092, 1
  %2408 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2409 = extractvalue %dx.types.CBufRet.i32 %2408, 2
  %2410 = icmp ult i32 %2407, %2409
  br i1 %2410, label %2063, label %2411

; <label>:2411                                    ; preds = %2378
  br label %2412

; <label>:2412                                    ; preds = %2411, %2024
  %2413 = phi float [ 0.000000e+00, %2024 ], [ %2379, %2411 ]
  %2414 = phi float [ 0.000000e+00, %2024 ], [ %2380, %2411 ]
  %2415 = phi float [ 0.000000e+00, %2024 ], [ %2381, %2411 ]
  %2416 = phi float [ 0.000000e+00, %2024 ], [ %2382, %2411 ]
  %2417 = phi float [ 0.000000e+00, %2024 ], [ %2383, %2411 ]
  %2418 = phi float [ 0.000000e+00, %2024 ], [ %2384, %2411 ]
  %2419 = phi float [ 0.000000e+00, %2024 ], [ %2385, %2411 ]
  %2420 = phi float [ 0.000000e+00, %2024 ], [ %2386, %2411 ]
  %2421 = phi float [ 0.000000e+00, %2024 ], [ %2387, %2411 ]
  %2422 = phi float [ 0.000000e+00, %2024 ], [ %2388, %2411 ]
  %2423 = phi float [ 0.000000e+00, %2024 ], [ %2389, %2411 ]
  %2424 = phi float [ 0.000000e+00, %2024 ], [ %2390, %2411 ]
  %2425 = phi float [ 0.000000e+00, %2024 ], [ %2391, %2411 ]
  %2426 = phi float [ 0.000000e+00, %2024 ], [ %2392, %2411 ]
  %2427 = phi float [ 0.000000e+00, %2024 ], [ %2393, %2411 ]
  %2428 = phi float [ 0.000000e+00, %2024 ], [ %2394, %2411 ]
  %2429 = phi float [ 0.000000e+00, %2024 ], [ %2395, %2411 ]
  %2430 = phi float [ 0.000000e+00, %2024 ], [ %2396, %2411 ]
  %2431 = phi float [ 0.000000e+00, %2024 ], [ %2397, %2411 ]
  %2432 = phi float [ 0.000000e+00, %2024 ], [ %2398, %2411 ]
  %2433 = phi float [ 0.000000e+00, %2024 ], [ %2399, %2411 ]
  %2434 = phi float [ 0.000000e+00, %2024 ], [ %2400, %2411 ]
  %2435 = phi float [ 0.000000e+00, %2024 ], [ %2401, %2411 ]
  %2436 = phi float [ 0.000000e+00, %2024 ], [ %2402, %2411 ]
  %2437 = phi float [ 0.000000e+00, %2024 ], [ %2403, %2411 ]
  %2438 = phi float [ 0.000000e+00, %2024 ], [ %2404, %2411 ]
  %2439 = phi float [ 0.000000e+00, %2024 ], [ %2405, %2411 ]
  %2440 = phi float [ 1.000000e+00, %2024 ], [ %2406, %2411 ]
  %2441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2442 = extractvalue %dx.types.CBufRet.f32 %2441, 3
  %2443 = fdiv fast float 1.000000e+00, %2442
  %2444 = fmul fast float %2443, %2421
  %2445 = fmul fast float %2443, %2420
  %2446 = fmul fast float %2443, %2419
  %2447 = fmul fast float %2443, %2418
  %2448 = fmul fast float %2443, %2417
  %2449 = fmul fast float %2443, %2416
  %2450 = fmul fast float %2443, %2415
  %2451 = fmul fast float %2443, %2414
  %2452 = fmul fast float %2443, %2413
  %2453 = fmul fast float %2443, %2430
  %2454 = fmul fast float %2443, %2429
  %2455 = fmul fast float %2443, %2428
  %2456 = fmul fast float %2443, %2427
  %2457 = fmul fast float %2443, %2426
  %2458 = fmul fast float %2443, %2425
  %2459 = fmul fast float %2443, %2424
  %2460 = fmul fast float %2443, %2423
  %2461 = fmul fast float %2443, %2422
  %2462 = fmul fast float %2443, %2439
  %2463 = fmul fast float %2443, %2438
  %2464 = fmul fast float %2443, %2437
  %2465 = fmul fast float %2443, %2436
  %2466 = fmul fast float %2443, %2435
  %2467 = fmul fast float %2443, %2434
  %2468 = fmul fast float %2443, %2433
  %2469 = fmul fast float %2443, %2432
  %2470 = fmul fast float %2443, %2431
  %2471 = fmul fast float %2440, %2042
  %2472 = fadd fast float %2444, %2471
  %2473 = fmul fast float %2440, %2041
  %2474 = fadd fast float %2445, %2473
  %2475 = fmul fast float %2440, %2040
  %2476 = fadd fast float %2446, %2475
  %2477 = fmul fast float %2440, %2039
  %2478 = fadd fast float %2447, %2477
  %2479 = fmul fast float %2440, %2038
  %2480 = fadd fast float %2448, %2479
  %2481 = fmul fast float %2440, %2037
  %2482 = fadd fast float %2449, %2481
  %2483 = fmul fast float %2440, %2036
  %2484 = fadd fast float %2450, %2483
  %2485 = fmul fast float %2440, %2035
  %2486 = fadd fast float %2451, %2485
  %2487 = fmul fast float %2440, %2034
  %2488 = fadd fast float %2452, %2487
  %2489 = fmul fast float %2440, %2033
  %2490 = fadd fast float %2453, %2489
  %2491 = fmul fast float %2440, %2032
  %2492 = fadd fast float %2454, %2491
  %2493 = fmul fast float %2440, %2031
  %2494 = fadd fast float %2455, %2493
  %2495 = fmul fast float %2440, %2030
  %2496 = fadd fast float %2456, %2495
  %2497 = fmul fast float %2440, %2029
  %2498 = fadd fast float %2457, %2497
  %2499 = fmul fast float %2440, %2028
  %2500 = fadd fast float %2458, %2499
  %2501 = fmul fast float %2440, %2027
  %2502 = fadd fast float %2459, %2501
  %2503 = fmul fast float %2440, %2026
  %2504 = fadd fast float %2460, %2503
  %2505 = fmul fast float %2440, %2025
  %2506 = fadd fast float %2461, %2505
  %2507 = fmul fast float %2440, %2051
  %2508 = fadd fast float %2462, %2507
  %2509 = fmul fast float %2440, %2050
  %2510 = fadd fast float %2463, %2509
  %2511 = fmul fast float %2440, %2049
  %2512 = fadd fast float %2464, %2511
  %2513 = fmul fast float %2440, %2048
  %2514 = fadd fast float %2465, %2513
  %2515 = fmul fast float %2440, %2047
  %2516 = fadd fast float %2466, %2515
  %2517 = fmul fast float %2440, %2046
  %2518 = fadd fast float %2467, %2517
  %2519 = fmul fast float %2440, %2045
  %2520 = fadd fast float %2468, %2519
  %2521 = fmul fast float %2440, %2044
  %2522 = fadd fast float %2469, %2521
  %2523 = fmul fast float %2440, %2043
  %2524 = fadd fast float %2470, %2523
  %2525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2526 = extractvalue %dx.types.CBufRet.f32 %2525, 0
  %2527 = extractvalue %dx.types.CBufRet.f32 %2525, 1
  %2528 = extractvalue %dx.types.CBufRet.f32 %2525, 2
  %2529 = fsub fast float %192, %2526
  %2530 = fsub fast float %197, %2527
  %2531 = fsub fast float %202, %2528
  %2532 = call float @dx.op.dot3.f32(i32 55, float %2529, float %2530, float %2531, float %2529, float %2530, float %2531)  ; Dot3(ax,ay,az,bx,by,bz)
  %2533 = call float @dx.op.unary.f32(i32 25, float %2532)  ; Rsqrt(value)
  %2534 = fmul fast float %2529, %2533
  %2535 = fmul fast float %2530, %2533
  %2536 = fmul fast float %2531, %2533
  %2537 = fsub fast float -0.000000e+00, %2534
  %2538 = fsub fast float -0.000000e+00, %2535
  %2539 = fmul fast float %2472, 0x3FD20DD760000000
  %2540 = fmul fast float %2490, 0x3FD20DD760000000
  %2541 = fmul fast float %2508, 0x3FD20DD760000000
  br i1 %102, label %2622, label %2542, !dx.controlflow.hints !85

; <label>:2542                                    ; preds = %2412
  %2543 = fmul fast float %2476, 0xBFD4D8D7C0000000
  %2544 = fmul fast float %2543, %2536
  %2545 = fmul fast float %2536, %2536
  %2546 = fmul fast float %2545, 0x3FEE471020000000
  %2547 = fadd fast float %2546, 0xBFD42F6020000000
  %2548 = fmul fast float %2547, %2484
  %2549 = fmul fast float %2478, 0x3FD4D8D7C0000000
  %2550 = fmul fast float %2474, 0x3FD4D8D7C0000000
  %2551 = fmul fast float %2550, %2535
  %2552 = fmul fast float %2536, 0x3FF17B1420000000
  %2553 = fmul fast float %2486, %2537
  %2554 = fmul fast float %2482, %2538
  %2555 = fmul fast float %2534, %2534
  %2556 = fmul fast float %2535, %2535
  %2557 = fsub fast float %2555, %2556
  %2558 = fmul fast float %2488, 0x3FC17B1420000000
  %2559 = fmul fast float %2558, %2557
  %2560 = fmul fast float %2480, 0x3FD17B1420000000
  %2561 = fmul fast float %2560, %2533
  %2562 = fmul fast float %2561, %2530
  %2563 = fadd fast float %2553, %2554
  %2564 = fmul fast float %2552, %2563
  %2565 = fadd fast float %2564, %2548
  %2566 = fmul fast float %2565, 2.500000e-01
  %2567 = fadd fast float %2562, %2549
  %2568 = fmul fast float %2567, %2534
  %2569 = fadd fast float %2544, %2539
  %2570 = fadd fast float %2569, %2551
  %2571 = fadd fast float %2570, %2559
  %2572 = fadd fast float %2571, %2566
  %2573 = fadd fast float %2572, %2568
  %2574 = fmul fast float %2494, 0xBFD4D8D7C0000000
  %2575 = fmul fast float %2574, %2536
  %2576 = fmul fast float %2547, %2502
  %2577 = fmul fast float %2496, 0x3FD4D8D7C0000000
  %2578 = fmul fast float %2492, 0x3FD4D8D7C0000000
  %2579 = fmul fast float %2578, %2535
  %2580 = fmul fast float %2504, %2537
  %2581 = fmul fast float %2500, %2538
  %2582 = fmul fast float %2506, 0x3FC17B1420000000
  %2583 = fmul fast float %2582, %2557
  %2584 = fmul fast float %2498, 0x3FD17B1420000000
  %2585 = fmul fast float %2584, %2533
  %2586 = fmul fast float %2585, %2530
  %2587 = fadd fast float %2580, %2581
  %2588 = fmul fast float %2552, %2587
  %2589 = fadd fast float %2588, %2576
  %2590 = fmul fast float %2589, 2.500000e-01
  %2591 = fadd fast float %2586, %2577
  %2592 = fmul fast float %2591, %2534
  %2593 = fadd fast float %2575, %2540
  %2594 = fadd fast float %2593, %2579
  %2595 = fadd fast float %2594, %2583
  %2596 = fadd fast float %2595, %2590
  %2597 = fadd fast float %2596, %2592
  %2598 = fmul fast float %2512, 0xBFD4D8D7C0000000
  %2599 = fmul fast float %2598, %2536
  %2600 = fmul fast float %2547, %2520
  %2601 = fmul fast float %2514, 0x3FD4D8D7C0000000
  %2602 = fmul fast float %2510, 0x3FD4D8D7C0000000
  %2603 = fmul fast float %2602, %2535
  %2604 = fmul fast float %2522, %2537
  %2605 = fmul fast float %2518, %2538
  %2606 = fmul fast float %2524, 0x3FC17B1420000000
  %2607 = fmul fast float %2606, %2557
  %2608 = fmul fast float %2516, 0x3FD17B1420000000
  %2609 = fmul fast float %2608, %2533
  %2610 = fmul fast float %2609, %2530
  %2611 = fadd fast float %2604, %2605
  %2612 = fmul fast float %2552, %2611
  %2613 = fadd fast float %2612, %2600
  %2614 = fmul fast float %2613, 2.500000e-01
  %2615 = fadd fast float %2610, %2601
  %2616 = fmul fast float %2615, %2534
  %2617 = fadd fast float %2599, %2541
  %2618 = fadd fast float %2617, %2603
  %2619 = fadd fast float %2618, %2607
  %2620 = fadd fast float %2619, %2614
  %2621 = fadd fast float %2620, %2616
  br label %2716

; <label>:2622                                    ; preds = %2412
  %2623 = fmul fast float %144, %144
  %2624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %2625 = extractvalue %dx.types.CBufRet.f32 %2624, 0
  %2626 = extractvalue %dx.types.CBufRet.f32 %2624, 1
  %2627 = extractvalue %dx.types.CBufRet.f32 %2624, 2
  %2628 = fmul fast float %2476, %144
  %2629 = fmul fast float %2628, %2627
  %2630 = fmul fast float %2627, %2627
  %2631 = fmul fast float %2630, 0x3FEE471020000000
  %2632 = fadd fast float %2631, 0xBFD42F6020000000
  %2633 = fmul fast float %2632, %2484
  %2634 = fmul fast float %2625, %2478
  %2635 = fmul fast float %2626, %2474
  %2636 = fmul fast float %2627, 0x3FF17B1420000000
  %2637 = fmul fast float %2486, %2623
  %2638 = fmul fast float %2637, %2625
  %2639 = fmul fast float %2638, %2636
  %2640 = fmul fast float %2482, %2623
  %2641 = fmul fast float %2640, %2626
  %2642 = fmul fast float %2641, %2636
  %2643 = fmul fast float %2625, %2625
  %2644 = fmul fast float %2626, %2626
  %2645 = fsub fast float %2643, %2644
  %2646 = fmul fast float %2488, 0x3FE17B1420000000
  %2647 = fmul fast float %2646, %2645
  %2648 = fmul fast float %2480, 0x3FF17B1420000000
  %2649 = fmul fast float %2648, %2626
  %2650 = fmul fast float %2649, %2625
  %2651 = fadd fast float %2647, %2650
  %2652 = fadd fast float %2651, %2633
  %2653 = fmul fast float %2652, %2623
  %2654 = fadd fast float %2635, %2634
  %2655 = fmul fast float %2654, %144
  %2656 = fsub fast float %2655, %2629
  %2657 = fmul fast float %2656, 0x3FDF454380000000
  %2658 = fsub fast float %2539, %2639
  %2659 = fsub fast float %2658, %2642
  %2660 = fadd fast float %2659, %2653
  %2661 = fadd fast float %2660, %2657
  %2662 = fmul fast float %2494, %144
  %2663 = fmul fast float %2662, %2627
  %2664 = fmul fast float %2632, %2502
  %2665 = fmul fast float %2625, %2496
  %2666 = fmul fast float %2626, %2492
  %2667 = fmul fast float %2504, %2623
  %2668 = fmul fast float %2667, %2625
  %2669 = fmul fast float %2668, %2636
  %2670 = fmul fast float %2500, %2623
  %2671 = fmul fast float %2670, %2626
  %2672 = fmul fast float %2671, %2636
  %2673 = fmul fast float %2506, 0x3FE17B1420000000
  %2674 = fmul fast float %2673, %2645
  %2675 = fmul fast float %2498, 0x3FF17B1420000000
  %2676 = fmul fast float %2675, %2626
  %2677 = fmul fast float %2676, %2625
  %2678 = fadd fast float %2674, %2677
  %2679 = fadd fast float %2678, %2664
  %2680 = fmul fast float %2679, %2623
  %2681 = fadd fast float %2666, %2665
  %2682 = fmul fast float %2681, %144
  %2683 = fsub fast float %2682, %2663
  %2684 = fmul fast float %2683, 0x3FDF454380000000
  %2685 = fsub fast float %2540, %2669
  %2686 = fsub fast float %2685, %2672
  %2687 = fadd fast float %2686, %2680
  %2688 = fadd fast float %2687, %2684
  %2689 = fmul fast float %2512, %144
  %2690 = fmul fast float %2689, %2627
  %2691 = fmul fast float %2632, %2520
  %2692 = fmul fast float %2625, %2514
  %2693 = fmul fast float %2626, %2510
  %2694 = fmul fast float %2522, %2623
  %2695 = fmul fast float %2694, %2625
  %2696 = fmul fast float %2695, %2636
  %2697 = fmul fast float %2518, %2623
  %2698 = fmul fast float %2697, %2626
  %2699 = fmul fast float %2698, %2636
  %2700 = fmul fast float %2524, 0x3FE17B1420000000
  %2701 = fmul fast float %2700, %2645
  %2702 = fmul fast float %2516, 0x3FF17B1420000000
  %2703 = fmul fast float %2702, %2626
  %2704 = fmul fast float %2703, %2625
  %2705 = fadd fast float %2701, %2704
  %2706 = fadd fast float %2705, %2691
  %2707 = fmul fast float %2706, %2623
  %2708 = fadd fast float %2693, %2692
  %2709 = fmul fast float %2708, %144
  %2710 = fsub fast float %2709, %2690
  %2711 = fmul fast float %2710, 0x3FDF454380000000
  %2712 = fsub fast float %2541, %2696
  %2713 = fsub fast float %2712, %2699
  %2714 = fadd fast float %2713, %2707
  %2715 = fadd fast float %2714, %2711
  br label %2716

; <label>:2716                                    ; preds = %2622, %2542
  %2717 = phi float [ %2573, %2542 ], [ %2661, %2622 ]
  %2718 = phi float [ %2597, %2542 ], [ %2688, %2622 ]
  %2719 = phi float [ %2621, %2542 ], [ %2715, %2622 ]
  %2720 = fmul fast float %2442, %2717
  %2721 = fmul fast float %2442, %2718
  %2722 = fmul fast float %2442, %2719
  %2723 = extractvalue %dx.types.CBufRet.f32 %2441, 0
  %2724 = fmul fast float %2720, %2723
  %2725 = fmul fast float %2721, %2723
  %2726 = fmul fast float %2722, %2723
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %171, i32 %172, i32 undef, float %2724, float %2725, float %2726, float %2724, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2727

; <label>:2727                                    ; preds = %2716, %0
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
!85 = distinct !{!85, !"dx.controlflow.hints", i32 2}

