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
; shader hash: 674c6c03d32578c035f377506ba493ae
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

define void @cs_del_sh_sample_lightgrid_1_lowres() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 28, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %26 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %27 = call i32 @dx.op.threadId.i32(i32 93, i32 2)  ; ThreadId(component)
  %28 = alloca [4 x i32], align 4
  %29 = alloca [4 x float], align 4
  %30 = alloca [4 x i32], align 4
  %31 = alloca [4 x float], align 4
  %32 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %33 = extractvalue %dx.types.CBufRet.i32 %32, 2
  %34 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %33, i32 0)  ; BufferLoad(srv,index,wot)
  %35 = extractvalue %dx.types.ResRet.i32 %34, 0
  %36 = icmp ult i32 %25, %35
  br i1 %36, label %37, label %2252, !dx.controlflow.hints !39

; <label>:37                                      ; preds = %0
  %38 = add i32 %33, 3
  %39 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 %38)  ; CBufferLoadLegacy(handle,regIndex)
  %40 = extractvalue %dx.types.CBufRet.i32 %39, 2
  %41 = add i32 %40, %25
  %42 = shl i32 %41, 5
  %43 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %42, i32 undef)  ; BufferLoad(srv,index,wot)
  %44 = extractvalue %dx.types.ResRet.i32 %43, 0
  %45 = extractvalue %dx.types.ResRet.i32 %43, 1
  %46 = extractvalue %dx.types.ResRet.i32 %43, 2
  %47 = extractvalue %dx.types.ResRet.i32 %43, 3
  %48 = lshr i32 %47, 14
  %49 = and i32 %48, 16383
  %50 = and i32 %47, 16383
  %51 = bitcast i32 %44 to float
  %52 = bitcast i32 %45 to float
  %53 = bitcast i32 %46 to float
  %54 = and i32 %47, 536870912
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %95, label %56, !dx.controlflow.hints !40

; <label>:56                                      ; preds = %37
  %57 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %58 = extractvalue %dx.types.CBufRet.f32 %57, 2
  %59 = extractvalue %dx.types.CBufRet.f32 %57, 3
  %60 = fmul fast float %58, %51
  %61 = fmul fast float %59, %52
  %62 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %63 = extractvalue %dx.types.CBufRet.f32 %62, 0
  %64 = extractvalue %dx.types.CBufRet.f32 %62, 1
  %65 = fadd fast float %60, %63
  %66 = fadd fast float %61, %64
  %67 = call float @dx.op.unary.f32(i32 7, float %65)  ; Saturate(value)
  %68 = call float @dx.op.unary.f32(i32 7, float %66)  ; Saturate(value)
  %69 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %21, float %67, float %68, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %70 = extractvalue %dx.types.ResRet.f32 %69, 0
  %71 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %72 = extractvalue %dx.types.CBufRet.f32 %71, 0
  %73 = fmul fast float %72, %70
  %74 = fsub fast float %65, %67
  %75 = fsub fast float %66, %68
  %76 = extractvalue %dx.types.CBufRet.f32 %57, 0
  %77 = extractvalue %dx.types.CBufRet.f32 %57, 1
  %78 = fmul fast float %76, %74
  %79 = fmul fast float %77, %75
  %80 = fmul fast float %78, %78
  %81 = fmul fast float %79, %79
  %82 = fadd fast float %80, %81
  %83 = call float @dx.op.unary.f32(i32 24, float %82)  ; Sqrt(value)
  %84 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %85 = extractvalue %dx.types.CBufRet.f32 %84, 3
  %86 = fmul fast float %85, %83
  %87 = call float @dx.op.unary.f32(i32 7, float %86)  ; Saturate(value)
  %88 = extractvalue %dx.types.CBufRet.f32 %84, 2
  %89 = fsub fast float %88, %73
  %90 = fmul fast float %89, %87
  %91 = extractvalue %dx.types.CBufRet.f32 %71, 1
  %92 = fadd fast float %73, %53
  %93 = fadd fast float %92, %91
  %94 = fadd fast float %93, %90
  br label %95

; <label>:95                                      ; preds = %56, %37
  %96 = phi float [ %94, %56 ], [ %53, %37 ]
  %97 = and i32 %47, 268435456
  %98 = icmp eq i32 %97, 0
  %99 = or i32 %42, 16
  %100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %99, i32 undef)  ; BufferLoad(srv,index,wot)
  %101 = extractvalue %dx.types.ResRet.i32 %100, 0
  %102 = extractvalue %dx.types.ResRet.i32 %100, 1
  %103 = extractvalue %dx.types.ResRet.i32 %100, 2
  %104 = extractvalue %dx.types.ResRet.i32 %100, 3
  %105 = and i32 %101, 65535
  %106 = call float @dx.op.legacyF16ToF32(i32 131, i32 %105)  ; LegacyF16ToF32(value)
  %107 = lshr i32 %101, 16
  %108 = call float @dx.op.legacyF16ToF32(i32 131, i32 %107)  ; LegacyF16ToF32(value)
  %109 = and i32 %102, 1023
  %110 = uitofp i32 %109 to float
  %111 = lshr i32 %102, 10
  %112 = and i32 %111, 1023
  %113 = uitofp i32 %112 to float
  %114 = lshr i32 %102, 20
  %115 = and i32 %114, 1023
  %116 = uitofp i32 %115 to float
  %117 = fmul fast float %110, 0x3F60040100000000
  %118 = fmul fast float %113, 0x3F60040100000000
  %119 = fmul fast float %116, 0x3F60040100000000
  %120 = fadd fast float %117, -1.000000e+00
  %121 = fadd fast float %118, -1.000000e+00
  %122 = fadd fast float %119, -1.000000e+00
  %123 = and i32 %103, 1023
  %124 = uitofp i32 %123 to float
  %125 = lshr i32 %103, 10
  %126 = and i32 %125, 1023
  %127 = uitofp i32 %126 to float
  %128 = lshr i32 %103, 20
  %129 = and i32 %128, 1023
  %130 = uitofp i32 %129 to float
  %131 = fmul fast float %124, 0x3F60040100000000
  %132 = fmul fast float %127, 0x3F60040100000000
  %133 = fmul fast float %130, 0x3F60040100000000
  %134 = fadd fast float %131, -1.000000e+00
  %135 = fadd fast float %132, -1.000000e+00
  %136 = fadd fast float %133, -1.000000e+00
  %137 = and i32 %104, 65535
  %138 = call float @dx.op.legacyF16ToF32(i32 131, i32 %137)  ; LegacyF16ToF32(value)
  %139 = lshr i32 %104, 16
  %140 = call float @dx.op.legacyF16ToF32(i32 131, i32 %139)  ; LegacyF16ToF32(value)
  %141 = call float @dx.op.unary.f32(i32 13, float %138)  ; Sin(value)
  %142 = call float @dx.op.unary.f32(i32 12, float %138)  ; Cos(value)
  %143 = fmul fast float %142, %120
  %144 = fmul fast float %142, %121
  %145 = fmul fast float %142, %122
  %146 = fmul fast float %141, %134
  %147 = fmul fast float %135, %141
  %148 = fmul fast float %136, %141
  %149 = fadd fast float %143, %146
  %150 = fadd fast float %144, %147
  %151 = fadd fast float %145, %148
  %152 = fmul fast float %149, %106
  %153 = fmul fast float %150, %106
  %154 = fmul fast float %151, %106
  %155 = fmul fast float %141, %120
  %156 = fmul fast float %121, %141
  %157 = fmul fast float %122, %141
  %158 = fmul fast float %142, %134
  %159 = fmul fast float %142, %135
  %160 = fmul fast float %142, %136
  %161 = fsub fast float %155, %158
  %162 = fsub fast float %156, %159
  %163 = fsub fast float %157, %160
  %164 = fmul fast float %161, %108
  %165 = fmul fast float %162, %108
  %166 = fmul fast float %163, %108
  %167 = add i32 %49, %26
  %168 = add i32 %50, %27
  %169 = uitofp i32 %26 to float
  %170 = uitofp i32 %27 to float
  %171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %172 = extractvalue %dx.types.CBufRet.f32 %171, 1
  %173 = fdiv fast float %169, %172
  %174 = fdiv fast float %170, %172
  %175 = extractvalue %dx.types.CBufRet.f32 %171, 2
  %176 = fadd fast float %175, %173
  %177 = fadd fast float %175, %174
  %178 = fmul fast float %176, %152
  %179 = fmul fast float %176, %153
  %180 = fmul fast float %176, %154
  %181 = fmul fast float %177, %164
  %182 = fmul fast float %177, %165
  %183 = fmul fast float %177, %166
  %184 = fadd fast float %181, %178
  %185 = fmul fast float %184, 2.000000e+00
  %186 = fsub fast float %51, %152
  %187 = fsub fast float %186, %164
  %188 = fadd fast float %187, %185
  %189 = fadd fast float %182, %179
  %190 = fmul fast float %189, 2.000000e+00
  %191 = fsub fast float %52, %153
  %192 = fsub fast float %191, %165
  %193 = fadd fast float %192, %190
  %194 = fadd fast float %183, %180
  %195 = fmul fast float %194, 2.000000e+00
  %196 = fsub fast float %96, %154
  %197 = fsub fast float %196, %166
  %198 = fadd fast float %197, %195
  %199 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %200 = extractvalue %dx.types.CBufRet.i32 %199, 0
  %201 = icmp eq i32 %200, 1
  br i1 %201, label %202, label %237, !dx.controlflow.hints !41

; <label>:202                                     ; preds = %95
  %203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %204 = extractvalue %dx.types.CBufRet.f32 %203, 0
  %205 = extractvalue %dx.types.CBufRet.f32 %203, 1
  %206 = fsub fast float %188, %204
  %207 = fsub fast float %193, %205
  %208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %209 = extractvalue %dx.types.CBufRet.f32 %208, 0
  %210 = extractvalue %dx.types.CBufRet.f32 %208, 1
  %211 = fmul fast float %206, %209
  %212 = fmul fast float %207, %210
  %213 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %21, float %211, float %212, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %214 = extractvalue %dx.types.ResRet.f32 %213, 0
  %215 = fcmp fast ogt float %214, 0.000000e+00
  %216 = extractvalue %dx.types.CBufRet.i32 %199, 3
  %217 = icmp ne i32 %216, 0
  %218 = and i1 %215, %217
  br i1 %218, label %219, label %237, !dx.controlflow.hints !42

; <label>:219                                     ; preds = %202
  %220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
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
  br i1 %230, label %237, label %231, !dx.controlflow.hints !43

; <label>:231                                     ; preds = %219
  %232 = call float @dx.op.unary.f32(i32 24, float %227)  ; Sqrt(value)
  %233 = fsub fast float %228, %232
  %234 = fmul fast float %233, 0x3F75555560000000
  %235 = call float @dx.op.unary.f32(i32 7, float %234)  ; Saturate(value)
  %236 = call float @dx.op.binary.f32(i32 36, float %235, float %214)  ; FMin(a,b)
  br label %237

; <label>:237                                     ; preds = %231, %219, %202, %95
  %238 = phi float [ 1.000000e+00, %95 ], [ %236, %231 ], [ %214, %202 ], [ 0.000000e+00, %219 ]
  %239 = fcmp fast ogt float %238, 0.000000e+00
  br i1 %239, label %240, label %1331, !dx.controlflow.hints !44

; <label>:240                                     ; preds = %237
  %241 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %242 = extractvalue %dx.types.CBufRet.i32 %241, 2
  %243 = extractvalue %dx.types.CBufRet.i32 %241, 1
  %244 = extractvalue %dx.types.CBufRet.i32 %241, 0
  %245 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 0
  store float 0.000000e+00, float* %245, align 4
  %246 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 1
  store float 0.000000e+00, float* %246, align 4
  %247 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 2
  store float 0.000000e+00, float* %247, align 4
  %248 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 3
  store float 0.000000e+00, float* %248, align 4
  %249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %250 = extractvalue %dx.types.ResRet.i32 %249, 0
  %251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %252 = extractvalue %dx.types.ResRet.i32 %251, 0
  %253 = extractvalue %dx.types.ResRet.i32 %251, 1
  %254 = extractvalue %dx.types.ResRet.i32 %251, 2
  %255 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %256 = extractvalue %dx.types.ResRet.f32 %255, 0
  %257 = extractvalue %dx.types.ResRet.f32 %255, 1
  %258 = extractvalue %dx.types.ResRet.f32 %255, 2
  %259 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %260 = extractvalue %dx.types.ResRet.f32 %259, 0
  %261 = extractvalue %dx.types.ResRet.f32 %259, 1
  %262 = extractvalue %dx.types.ResRet.f32 %259, 2
  %263 = fsub fast float %188, %256
  %264 = fsub fast float %193, %257
  %265 = fsub fast float %198, %258
  %266 = fptoui float %263 to i32
  %267 = fptoui float %264 to i32
  %268 = fptoui float %265 to i32
  %269 = fcmp fast olt float %188, %256
  %270 = fcmp fast olt float %193, %257
  %271 = fcmp fast olt float %198, %258
  %272 = or i1 %269, %270
  %273 = or i1 %271, %272
  %274 = fcmp fast oge float %188, %260
  %275 = fcmp fast oge float %193, %261
  %276 = fcmp fast oge float %198, %262
  %277 = or i1 %274, %275
  %278 = or i1 %276, %277
  %279 = or i1 %273, %278
  %280 = and i32 %252, 31
  %281 = lshr i32 %266, %280
  %282 = lshr i32 %267, %280
  %283 = lshr i32 %268, %280
  %284 = mul i32 %282, %250
  %285 = add i32 %284, %281
  %286 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %287 = extractvalue %dx.types.CBufRet.i32 %286, 0
  %288 = icmp ult i32 %285, %287
  br i1 %288, label %289, label %305, !dx.controlflow.hints !45

; <label>:289                                     ; preds = %240
  %290 = mul i32 %285, 12
  %291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %290, i32 undef)  ; BufferLoad(srv,index,wot)
  %292 = extractvalue %dx.types.ResRet.i32 %291, 0
  %293 = add i32 %290, 4
  %294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %293, i32 undef)  ; BufferLoad(srv,index,wot)
  %295 = extractvalue %dx.types.ResRet.i32 %294, 0
  %296 = add i32 %290, 8
  %297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %296, i32 undef)  ; BufferLoad(srv,index,wot)
  %298 = extractvalue %dx.types.ResRet.i32 %297, 0
  %299 = icmp ult i32 %283, %295
  %300 = icmp ugt i32 %283, %298
  %301 = or i1 %299, %300
  %302 = add i32 %292, %283
  %303 = sub i32 %302, %295
  %304 = select i1 %301, i32 -2147483648, i32 %303
  br label %305

; <label>:305                                     ; preds = %289, %240
  %306 = phi i32 [ %304, %289 ], [ -2147483648, %240 ]
  %307 = select i1 %279, i32 -2147483648, i32 %306
  %308 = icmp sgt i32 %307, -1
  %309 = and i32 %253, 31
  %310 = lshr i32 %266, %309
  %311 = lshr i32 %267, %309
  %312 = lshr i32 %268, %309
  %313 = and i32 %310, 3
  %314 = and i32 %312, 3
  %315 = shl nuw nsw i32 %314, 4
  %316 = shl i32 %311, 2
  %317 = and i32 %316, 12
  %318 = and i32 %315, 16
  %319 = or i32 %317, %313
  %320 = or i32 %319, %318
  %321 = shl i32 1, %320
  %322 = extractvalue %dx.types.CBufRet.i32 %286, 1
  %323 = icmp ult i32 %307, %322
  br i1 %323, label %324, label %342, !dx.controlflow.hints !46

; <label>:324                                     ; preds = %305
  %325 = lshr i32 %314, 1
  %326 = shl i32 %307, 4
  %327 = shl nuw nsw i32 %325, 2
  %328 = or i32 %326, %327
  %329 = or i32 %328, 8
  %330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %329, i32 undef)  ; BufferLoad(srv,index,wot)
  %331 = extractvalue %dx.types.ResRet.i32 %330, 0
  %332 = and i32 %331, %321
  %333 = icmp eq i32 %332, 0
  %334 = add i32 %321, -1
  %335 = and i32 %331, %334
  %336 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %335)  ; Countbits(value)
  %337 = or i32 %326, %327
  %338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %337, i32 undef)  ; BufferLoad(srv,index,wot)
  %339 = extractvalue %dx.types.ResRet.i32 %338, 0
  %340 = add i32 %339, %336
  %341 = select i1 %333, i32 -2147483648, i32 %340
  br label %342

; <label>:342                                     ; preds = %324, %305
  %343 = phi i32 [ %341, %324 ], [ -2147483648, %305 ]
  %344 = select i1 %308, i32 %343, i32 %307
  %345 = icmp sgt i32 %344, -1
  %346 = and i32 %254, 31
  %347 = lshr i32 %266, %346
  %348 = lshr i32 %267, %346
  %349 = lshr i32 %268, %346
  %350 = and i32 %347, 3
  %351 = and i32 %349, 3
  %352 = shl nuw nsw i32 %351, 4
  %353 = shl i32 %348, 2
  %354 = and i32 %353, 12
  %355 = and i32 %352, 16
  %356 = or i32 %354, %350
  %357 = or i32 %356, %355
  %358 = shl i32 1, %357
  %359 = icmp ult i32 %344, %322
  br i1 %359, label %360, label %378, !dx.controlflow.hints !46

; <label>:360                                     ; preds = %342
  %361 = lshr i32 %351, 1
  %362 = shl i32 %344, 4
  %363 = shl nuw nsw i32 %361, 2
  %364 = or i32 %362, %363
  %365 = or i32 %364, 8
  %366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %365, i32 undef)  ; BufferLoad(srv,index,wot)
  %367 = extractvalue %dx.types.ResRet.i32 %366, 0
  %368 = and i32 %367, %358
  %369 = icmp eq i32 %368, 0
  %370 = add i32 %358, -1
  %371 = and i32 %367, %370
  %372 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %371)  ; Countbits(value)
  %373 = or i32 %362, %363
  %374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %373, i32 undef)  ; BufferLoad(srv,index,wot)
  %375 = extractvalue %dx.types.ResRet.i32 %374, 0
  %376 = add i32 %375, %372
  %377 = select i1 %369, i32 -2147483648, i32 %376
  br label %378

; <label>:378                                     ; preds = %360, %342
  %379 = phi i32 [ %377, %360 ], [ -2147483648, %342 ]
  %380 = select i1 %345, i32 %379, i32 %344
  br i1 %279, label %395, label %381, !dx.controlflow.hints !47

; <label>:381                                     ; preds = %378
  %382 = icmp eq i32 %380, -2147483648
  %383 = icmp eq i32 %344, -2147483648
  %384 = select i1 %383, i32 %307, i32 %344
  %385 = select i1 %382, i32 %384, i32 %380
  %386 = icmp sgt i32 %385, -1
  %387 = icmp ne i32 %242, -1
  %388 = and i1 %387, %386
  %389 = select i1 %388, i32 %242, i32 0
  %390 = add i32 %385, %243
  %391 = add i32 %390, %389
  %392 = shl i32 %391, 2
  %393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %392, i32 undef)  ; BufferLoad(srv,index,wot)
  %394 = extractvalue %dx.types.ResRet.i32 %393, 0
  br label %395

; <label>:395                                     ; preds = %381, %378
  %396 = phi i32 [ %394, %381 ], [ -1, %378 ]
  %397 = icmp eq i32 %396, -1
  %398 = select i1 %397, i32 %244, i32 %396
  %399 = icmp eq i32 %398, -1
  br i1 %399, label %548, label %400

; <label>:400                                     ; preds = %395
  br label %401

; <label>:401                                     ; preds = %539, %400
  %402 = phi i32 [ %540, %539 ], [ 0, %400 ]
  %403 = phi i32 [ %404, %539 ], [ -1, %400 ]
  %404 = phi i32 [ %535, %539 ], [ %398, %400 ]
  %405 = phi float [ %511, %539 ], [ 0.000000e+00, %400 ]
  %406 = phi float [ %512, %539 ], [ 0.000000e+00, %400 ]
  %407 = phi float [ %513, %539 ], [ 0.000000e+00, %400 ]
  %408 = phi float [ %516, %539 ], [ 0.000000e+00, %400 ]
  %409 = icmp ugt i32 %402, 50
  br i1 %409, label %542, label %410, !dx.controlflow.hints !48

; <label>:410                                     ; preds = %401
  %411 = shl i32 %404, 4
  %412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %413 = extractvalue %dx.types.ResRet.i32 %412, 0
  %414 = extractvalue %dx.types.ResRet.i32 %412, 1
  %415 = extractvalue %dx.types.ResRet.i32 %412, 2
  %416 = extractvalue %dx.types.ResRet.i32 %412, 3
  %417 = and i32 %413, 2147483647
  %418 = mul nsw i32 %417, 12
  %419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %418, i32 undef)  ; BufferLoad(srv,index,wot)
  %420 = extractvalue %dx.types.ResRet.i32 %419, 0
  %421 = extractvalue %dx.types.ResRet.i32 %419, 1
  %422 = extractvalue %dx.types.ResRet.i32 %419, 2
  %423 = and i32 %414, 2147483647
  %424 = mul nsw i32 %423, 12
  %425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %424, i32 undef)  ; BufferLoad(srv,index,wot)
  %426 = extractvalue %dx.types.ResRet.i32 %425, 0
  %427 = extractvalue %dx.types.ResRet.i32 %425, 1
  %428 = extractvalue %dx.types.ResRet.i32 %425, 2
  %429 = and i32 %415, 2147483647
  %430 = mul nsw i32 %429, 12
  %431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %432 = extractvalue %dx.types.ResRet.i32 %431, 0
  %433 = extractvalue %dx.types.ResRet.i32 %431, 1
  %434 = extractvalue %dx.types.ResRet.i32 %431, 2
  %435 = and i32 %416, 2147483647
  %436 = mul nsw i32 %435, 12
  %437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %436, i32 undef)  ; BufferLoad(srv,index,wot)
  %438 = extractvalue %dx.types.ResRet.i32 %437, 0
  %439 = extractvalue %dx.types.ResRet.i32 %437, 1
  %440 = extractvalue %dx.types.ResRet.i32 %437, 2
  %441 = bitcast i32 %420 to float
  %442 = bitcast i32 %421 to float
  %443 = bitcast i32 %422 to float
  %444 = bitcast i32 %438 to float
  %445 = bitcast i32 %439 to float
  %446 = bitcast i32 %440 to float
  %447 = fsub fast float %441, %444
  %448 = fsub fast float %442, %445
  %449 = fsub fast float %443, %446
  %450 = bitcast i32 %426 to float
  %451 = bitcast i32 %427 to float
  %452 = bitcast i32 %428 to float
  %453 = fsub fast float %450, %444
  %454 = fsub fast float %451, %445
  %455 = fsub fast float %452, %446
  %456 = bitcast i32 %432 to float
  %457 = bitcast i32 %433 to float
  %458 = bitcast i32 %434 to float
  %459 = fsub fast float %456, %444
  %460 = fsub fast float %457, %445
  %461 = fsub fast float %458, %446
  %462 = fsub fast float %188, %444
  %463 = fsub fast float %193, %445
  %464 = fsub fast float %198, %446
  %465 = fmul fast float %454, %461
  %466 = fmul fast float %460, %455
  %467 = fsub fast float %465, %466
  %468 = fmul fast float %467, %447
  %469 = fmul fast float %453, %461
  %470 = fmul fast float %455, %459
  %471 = fsub fast float %469, %470
  %472 = fmul fast float %471, %448
  %473 = fsub fast float %468, %472
  %474 = fmul fast float %453, %460
  %475 = fmul fast float %454, %459
  %476 = fsub fast float %474, %475
  %477 = fmul fast float %476, %449
  %478 = fadd fast float %473, %477
  %479 = fdiv fast float 1.000000e+00, %478
  %480 = fmul fast float %467, %479
  %481 = fmul fast float %479, %471
  %482 = fsub fast float -0.000000e+00, %481
  %483 = fmul fast float %476, %479
  %484 = fmul fast float %448, %461
  %485 = fmul fast float %449, %460
  %486 = fsub fast float %484, %485
  %487 = fmul fast float %479, %486
  %488 = fsub fast float -0.000000e+00, %487
  %489 = fmul fast float %447, %461
  %490 = fmul fast float %459, %449
  %491 = fsub fast float %489, %490
  %492 = fmul fast float %491, %479
  %493 = fmul fast float %447, %460
  %494 = fmul fast float %448, %459
  %495 = fsub fast float %493, %494
  %496 = fmul fast float %479, %495
  %497 = fsub fast float -0.000000e+00, %496
  %498 = fmul fast float %448, %455
  %499 = fmul fast float %449, %454
  %500 = fsub fast float %498, %499
  %501 = fmul fast float %500, %479
  %502 = fmul fast float %447, %455
  %503 = fmul fast float %449, %453
  %504 = fsub fast float %502, %503
  %505 = fmul fast float %479, %504
  %506 = fsub fast float -0.000000e+00, %505
  %507 = fmul fast float %447, %454
  %508 = fmul fast float %448, %453
  %509 = fsub fast float %507, %508
  %510 = fmul fast float %509, %479
  %511 = call float @dx.op.dot3.f32(i32 55, float %480, float %482, float %483, float %462, float %463, float %464)  ; Dot3(ax,ay,az,bx,by,bz)
  %512 = call float @dx.op.dot3.f32(i32 55, float %488, float %492, float %497, float %462, float %463, float %464)  ; Dot3(ax,ay,az,bx,by,bz)
  %513 = call float @dx.op.dot3.f32(i32 55, float %501, float %506, float %510, float %462, float %463, float %464)  ; Dot3(ax,ay,az,bx,by,bz)
  %514 = fsub fast float 1.000000e+00, %511
  %515 = fsub fast float %514, %512
  %516 = fsub fast float %515, %513
  %517 = call float @dx.op.binary.f32(i32 36, float %511, float %512)  ; FMin(a,b)
  %518 = call float @dx.op.binary.f32(i32 36, float %517, float %513)  ; FMin(a,b)
  %519 = call float @dx.op.binary.f32(i32 36, float %518, float %516)  ; FMin(a,b)
  %520 = call float @dx.op.binary.f32(i32 35, float %511, float %512)  ; FMax(a,b)
  %521 = call float @dx.op.binary.f32(i32 35, float %520, float %513)  ; FMax(a,b)
  %522 = call float @dx.op.binary.f32(i32 35, float %521, float %516)  ; FMax(a,b)
  %523 = fcmp fast oge float %519, 0xBF50624DE0000000
  %524 = fcmp fast olt float %522, 0x3FF00068E0000000
  %525 = and i1 %523, %524
  br i1 %525, label %542, label %526, !dx.controlflow.hints !49

; <label>:526                                     ; preds = %410
  %527 = fcmp fast oeq float %519, %511
  %528 = fcmp fast oeq float %519, %512
  %529 = fcmp fast oeq float %519, %513
  %530 = select i1 %529, i32 8, i32 12
  %531 = select i1 %528, i32 4, i32 %530
  %532 = select i1 %527, i32 0, i32 %531
  %533 = or i32 %532, %411
  %534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %533, i32 undef)  ; BufferLoad(srv,index,wot)
  %535 = extractvalue %dx.types.ResRet.i32 %534, 0
  %536 = icmp ne i32 %403, -1
  %537 = icmp eq i32 %535, %403
  %538 = and i1 %536, %537
  br i1 %538, label %542, label %539, !dx.controlflow.hints !50

; <label>:539                                     ; preds = %526
  %540 = add nuw nsw i32 %402, 1
  %541 = icmp eq i32 %535, -1
  br i1 %541, label %542, label %401, !llvm.loop !51

; <label>:542                                     ; preds = %539, %526, %410, %401
  %543 = phi i32 [ %404, %526 ], [ %404, %410 ], [ -1, %539 ], [ -1, %401 ]
  %544 = phi float [ %511, %526 ], [ %511, %410 ], [ %511, %539 ], [ %405, %401 ]
  %545 = phi float [ %512, %526 ], [ %512, %410 ], [ %512, %539 ], [ %406, %401 ]
  %546 = phi float [ %513, %526 ], [ %513, %410 ], [ %513, %539 ], [ %407, %401 ]
  %547 = phi float [ %516, %526 ], [ %516, %410 ], [ %516, %539 ], [ %408, %401 ]
  br label %548

; <label>:548                                     ; preds = %542, %395
  %549 = phi i32 [ -1, %395 ], [ %543, %542 ]
  %550 = phi float [ 0.000000e+00, %395 ], [ %544, %542 ]
  %551 = phi float [ 0.000000e+00, %395 ], [ %545, %542 ]
  %552 = phi float [ 0.000000e+00, %395 ], [ %546, %542 ]
  %553 = phi float [ 0.000000e+00, %395 ], [ %547, %542 ]
  %554 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %550)  ; FMax(a,b)
  %555 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %551)  ; FMax(a,b)
  %556 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %552)  ; FMax(a,b)
  %557 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %553)  ; FMax(a,b)
  %558 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %554)  ; FMin(a,b)
  %559 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %555)  ; FMin(a,b)
  %560 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %556)  ; FMin(a,b)
  %561 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %557)  ; FMin(a,b)
  store float %558, float* %245, align 4
  store float %559, float* %246, align 4
  store float %560, float* %247, align 4
  store float %561, float* %248, align 4
  %562 = icmp eq i32 %549, -1
  br i1 %562, label %563, label %636, !dx.controlflow.hints !53

; <label>:563                                     ; preds = %548
  %564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %565 = extractvalue %dx.types.ResRet.i32 %564, 0
  %566 = extractvalue %dx.types.ResRet.i32 %564, 1
  %567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %568 = extractvalue %dx.types.ResRet.i32 %567, 0
  %569 = extractvalue %dx.types.ResRet.i32 %567, 1
  %570 = extractvalue %dx.types.ResRet.i32 %567, 2
  %571 = extractvalue %dx.types.ResRet.i32 %567, 3
  %572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %573 = extractvalue %dx.types.ResRet.i32 %572, 0
  %574 = extractvalue %dx.types.ResRet.i32 %572, 1
  %575 = extractvalue %dx.types.ResRet.i32 %572, 2
  %576 = extractvalue %dx.types.ResRet.i32 %572, 3
  %577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %578 = extractvalue %dx.types.ResRet.i32 %577, 0
  %579 = extractvalue %dx.types.ResRet.i32 %577, 1
  %580 = extractvalue %dx.types.ResRet.i32 %577, 2
  %581 = extractvalue %dx.types.ResRet.i32 %577, 3
  %582 = and i32 %578, 65535
  %583 = call float @dx.op.legacyF16ToF32(i32 131, i32 %582)  ; LegacyF16ToF32(value)
  %584 = lshr i32 %578, 16
  %585 = call float @dx.op.legacyF16ToF32(i32 131, i32 %584)  ; LegacyF16ToF32(value)
  %586 = and i32 %579, 65535
  %587 = call float @dx.op.legacyF16ToF32(i32 131, i32 %586)  ; LegacyF16ToF32(value)
  %588 = lshr i32 %579, 16
  %589 = call float @dx.op.legacyF16ToF32(i32 131, i32 %588)  ; LegacyF16ToF32(value)
  %590 = and i32 %580, 65535
  %591 = call float @dx.op.legacyF16ToF32(i32 131, i32 %590)  ; LegacyF16ToF32(value)
  %592 = lshr i32 %580, 16
  %593 = call float @dx.op.legacyF16ToF32(i32 131, i32 %592)  ; LegacyF16ToF32(value)
  %594 = and i32 %581, 65535
  %595 = call float @dx.op.legacyF16ToF32(i32 131, i32 %594)  ; LegacyF16ToF32(value)
  %596 = lshr i32 %581, 16
  %597 = call float @dx.op.legacyF16ToF32(i32 131, i32 %596)  ; LegacyF16ToF32(value)
  %598 = and i32 %573, 65535
  %599 = call float @dx.op.legacyF16ToF32(i32 131, i32 %598)  ; LegacyF16ToF32(value)
  %600 = lshr i32 %573, 16
  %601 = call float @dx.op.legacyF16ToF32(i32 131, i32 %600)  ; LegacyF16ToF32(value)
  %602 = and i32 %574, 65535
  %603 = call float @dx.op.legacyF16ToF32(i32 131, i32 %602)  ; LegacyF16ToF32(value)
  %604 = lshr i32 %574, 16
  %605 = call float @dx.op.legacyF16ToF32(i32 131, i32 %604)  ; LegacyF16ToF32(value)
  %606 = and i32 %575, 65535
  %607 = call float @dx.op.legacyF16ToF32(i32 131, i32 %606)  ; LegacyF16ToF32(value)
  %608 = lshr i32 %575, 16
  %609 = call float @dx.op.legacyF16ToF32(i32 131, i32 %608)  ; LegacyF16ToF32(value)
  %610 = and i32 %576, 65535
  %611 = call float @dx.op.legacyF16ToF32(i32 131, i32 %610)  ; LegacyF16ToF32(value)
  %612 = lshr i32 %576, 16
  %613 = call float @dx.op.legacyF16ToF32(i32 131, i32 %612)  ; LegacyF16ToF32(value)
  %614 = and i32 %568, 65535
  %615 = call float @dx.op.legacyF16ToF32(i32 131, i32 %614)  ; LegacyF16ToF32(value)
  %616 = lshr i32 %568, 16
  %617 = call float @dx.op.legacyF16ToF32(i32 131, i32 %616)  ; LegacyF16ToF32(value)
  %618 = and i32 %569, 65535
  %619 = call float @dx.op.legacyF16ToF32(i32 131, i32 %618)  ; LegacyF16ToF32(value)
  %620 = lshr i32 %569, 16
  %621 = call float @dx.op.legacyF16ToF32(i32 131, i32 %620)  ; LegacyF16ToF32(value)
  %622 = and i32 %570, 65535
  %623 = call float @dx.op.legacyF16ToF32(i32 131, i32 %622)  ; LegacyF16ToF32(value)
  %624 = lshr i32 %570, 16
  %625 = call float @dx.op.legacyF16ToF32(i32 131, i32 %624)  ; LegacyF16ToF32(value)
  %626 = and i32 %571, 65535
  %627 = call float @dx.op.legacyF16ToF32(i32 131, i32 %626)  ; LegacyF16ToF32(value)
  %628 = lshr i32 %571, 16
  %629 = call float @dx.op.legacyF16ToF32(i32 131, i32 %628)  ; LegacyF16ToF32(value)
  %630 = and i32 %565, 65535
  %631 = call float @dx.op.legacyF16ToF32(i32 131, i32 %630)  ; LegacyF16ToF32(value)
  %632 = lshr i32 %565, 16
  %633 = call float @dx.op.legacyF16ToF32(i32 131, i32 %632)  ; LegacyF16ToF32(value)
  %634 = and i32 %566, 65535
  %635 = call float @dx.op.legacyF16ToF32(i32 131, i32 %634)  ; LegacyF16ToF32(value)
  br label %1331

; <label>:636                                     ; preds = %548
  %637 = shl nsw i32 %549, 4
  %638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %637, i32 undef)  ; BufferLoad(srv,index,wot)
  %639 = extractvalue %dx.types.ResRet.i32 %638, 0
  %640 = extractvalue %dx.types.ResRet.i32 %638, 1
  %641 = extractvalue %dx.types.ResRet.i32 %638, 2
  %642 = extractvalue %dx.types.ResRet.i32 %638, 3
  %643 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 0
  store i32 %639, i32* %643, align 4
  %644 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 1
  store i32 %640, i32* %644, align 4
  %645 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 2
  store i32 %641, i32* %645, align 4
  %646 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 3
  store i32 %642, i32* %646, align 4
  %647 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 0
  store float 0.000000e+00, float* %647, align 4
  %648 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 1
  store float 0.000000e+00, float* %648, align 4
  %649 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 2
  store float 0.000000e+00, float* %649, align 4
  %650 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 3
  store float 0.000000e+00, float* %650, align 4
  %651 = icmp slt i32 %639, 0
  br i1 %651, label %652, label %742, !dx.controlflow.hints !54

; <label>:652                                     ; preds = %636
  %653 = fsub fast float 1.000000e+00, %558
  %654 = fdiv fast float 1.000000e+00, %653
  %655 = shl nsw i32 %549, 6
  %656 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %655, i32 undef)  ; BufferLoad(srv,index,wot)
  %657 = extractvalue %dx.types.ResRet.i32 %656, 0
  %658 = extractvalue %dx.types.ResRet.i32 %656, 1
  %659 = extractvalue %dx.types.ResRet.i32 %656, 2
  %660 = extractvalue %dx.types.ResRet.i32 %656, 3
  %661 = fmul fast float %654, %561
  %662 = fmul fast float %654, %559
  %663 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 0
  store i32 %657, i32* %663, align 4
  %664 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 1
  store i32 %658, i32* %664, align 4
  %665 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 2
  store i32 %659, i32* %665, align 4
  %666 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 3
  store i32 %660, i32* %666, align 4
  %667 = fmul fast float %662, 4.000000e+00
  %668 = call float @dx.op.unary.f32(i32 27, float %667)  ; Round_ni(value)
  %669 = fmul fast float %661, 4.000000e+00
  %670 = call float @dx.op.unary.f32(i32 27, float %669)  ; Round_ni(value)
  %671 = fsub fast float 1.100000e+01, %668
  %672 = fmul fast float %668, 5.000000e-01
  %673 = fmul fast float %672, %671
  %674 = fadd fast float %670, 5.000000e-01
  %675 = fadd fast float %674, %673
  %676 = fptosi float %675 to i32
  %677 = fptosi float %668 to i32
  %678 = sub nsw i32 5, %677
  %679 = fmul fast float %670, 2.500000e-01
  %680 = fmul fast float %668, 2.500000e-01
  %681 = add nsw i32 %676, 1
  %682 = add nsw i32 %676, %678
  %683 = fsub fast float %661, %679
  %684 = fmul fast float %683, 4.000000e+00
  %685 = fsub fast float %662, %680
  %686 = fmul fast float %685, 4.000000e+00
  %687 = fadd fast float %683, %685
  %688 = fmul fast float %687, 4.000000e+00
  %689 = fcmp fast ogt float %688, 1.000000e+00
  br i1 %689, label %690, label %696, !dx.controlflow.hints !55

; <label>:690                                     ; preds = %652
  %691 = add nsw i32 %682, 1
  %692 = fadd fast float %686, -1.000000e+00
  %693 = fsub fast float -0.000000e+00, %692
  %694 = fadd fast float %684, -1.000000e+00
  %695 = fsub fast float -0.000000e+00, %694
  br label %696

; <label>:696                                     ; preds = %690, %652
  %697 = phi i32 [ %691, %690 ], [ %676, %652 ]
  %698 = phi i32 [ %681, %690 ], [ %682, %652 ]
  %699 = phi i32 [ %682, %690 ], [ %681, %652 ]
  %700 = phi float [ %695, %690 ], [ %686, %652 ]
  %701 = phi float [ %693, %690 ], [ %684, %652 ]
  %702 = fsub fast float 1.000000e+00, %700
  %703 = fsub fast float %702, %701
  %704 = lshr i32 %699, 2
  %705 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %704
  %706 = load i32, i32* %705, align 4, !tbaa !56, !noalias !60
  %707 = shl i32 %699, 3
  %708 = and i32 %707, 24
  %709 = lshr i32 %706, %708
  %710 = and i32 %709, 255
  %711 = sitofp i32 %710 to float
  %712 = fmul fast float %701, 0x3F70101020000000
  %713 = fmul fast float %712, %711
  %714 = lshr i32 %698, 2
  %715 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %714
  %716 = load i32, i32* %715, align 4, !tbaa !56, !noalias !60
  %717 = shl i32 %698, 3
  %718 = and i32 %717, 24
  %719 = lshr i32 %716, %718
  %720 = and i32 %719, 255
  %721 = sitofp i32 %720 to float
  %722 = fmul fast float %700, 0x3F70101020000000
  %723 = fmul fast float %722, %721
  %724 = lshr i32 %697, 2
  %725 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %724
  %726 = load i32, i32* %725, align 4, !tbaa !56, !noalias !60
  %727 = shl i32 %697, 3
  %728 = and i32 %727, 24
  %729 = lshr i32 %726, %728
  %730 = and i32 %729, 255
  %731 = sitofp i32 %730 to float
  %732 = fmul fast float %703, 0x3F70101020000000
  %733 = fmul fast float %732, %731
  %734 = fsub fast float 1.000000e+00, %713
  %735 = fsub fast float %734, %723
  %736 = fsub fast float %735, %733
  %737 = fmul fast float %558, 2.000000e+01
  %738 = fadd fast float %737, 1.000000e+00
  %739 = fmul fast float %736, 2.000000e+01
  %740 = fsub fast float %738, %739
  %741 = call float @dx.op.unary.f32(i32 7, float %740)  ; Saturate(value)
  br label %742

; <label>:742                                     ; preds = %696, %636
  %743 = phi float [ %741, %696 ], [ 1.000000e+00, %636 ]
  store float %743, float* %647, align 4, !tbaa !68, !noalias !60
  %744 = icmp slt i32 %640, 0
  br i1 %744, label %745, label %836, !dx.controlflow.hints !54

; <label>:745                                     ; preds = %742
  %746 = fsub fast float 1.000000e+00, %559
  %747 = fdiv fast float 1.000000e+00, %746
  %748 = shl i32 %549, 6
  %749 = or i32 %748, 16
  %750 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %749, i32 undef)  ; BufferLoad(srv,index,wot)
  %751 = extractvalue %dx.types.ResRet.i32 %750, 0
  %752 = extractvalue %dx.types.ResRet.i32 %750, 1
  %753 = extractvalue %dx.types.ResRet.i32 %750, 2
  %754 = extractvalue %dx.types.ResRet.i32 %750, 3
  %755 = fmul fast float %747, %558
  %756 = fmul fast float %747, %561
  %757 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 0
  store i32 %751, i32* %757, align 4
  %758 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 1
  store i32 %752, i32* %758, align 4
  %759 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 2
  store i32 %753, i32* %759, align 4
  %760 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 3
  store i32 %754, i32* %760, align 4
  %761 = fmul fast float %756, 4.000000e+00
  %762 = call float @dx.op.unary.f32(i32 27, float %761)  ; Round_ni(value)
  %763 = fmul fast float %755, 4.000000e+00
  %764 = call float @dx.op.unary.f32(i32 27, float %763)  ; Round_ni(value)
  %765 = fsub fast float 1.100000e+01, %762
  %766 = fmul fast float %762, 5.000000e-01
  %767 = fmul fast float %766, %765
  %768 = fadd fast float %764, 5.000000e-01
  %769 = fadd fast float %768, %767
  %770 = fptosi float %769 to i32
  %771 = fptosi float %762 to i32
  %772 = sub nsw i32 5, %771
  %773 = fmul fast float %764, 2.500000e-01
  %774 = fmul fast float %762, 2.500000e-01
  %775 = add nsw i32 %770, 1
  %776 = add nsw i32 %770, %772
  %777 = fsub fast float %755, %773
  %778 = fmul fast float %777, 4.000000e+00
  %779 = fsub fast float %756, %774
  %780 = fmul fast float %779, 4.000000e+00
  %781 = fadd fast float %777, %779
  %782 = fmul fast float %781, 4.000000e+00
  %783 = fcmp fast ogt float %782, 1.000000e+00
  br i1 %783, label %784, label %790, !dx.controlflow.hints !55

; <label>:784                                     ; preds = %745
  %785 = add nsw i32 %776, 1
  %786 = fadd fast float %780, -1.000000e+00
  %787 = fsub fast float -0.000000e+00, %786
  %788 = fadd fast float %778, -1.000000e+00
  %789 = fsub fast float -0.000000e+00, %788
  br label %790

; <label>:790                                     ; preds = %784, %745
  %791 = phi i32 [ %785, %784 ], [ %770, %745 ]
  %792 = phi i32 [ %775, %784 ], [ %776, %745 ]
  %793 = phi i32 [ %776, %784 ], [ %775, %745 ]
  %794 = phi float [ %789, %784 ], [ %780, %745 ]
  %795 = phi float [ %787, %784 ], [ %778, %745 ]
  %796 = fsub fast float 1.000000e+00, %794
  %797 = fsub fast float %796, %795
  %798 = lshr i32 %793, 2
  %799 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %798
  %800 = load i32, i32* %799, align 4, !tbaa !56, !noalias !60
  %801 = shl i32 %793, 3
  %802 = and i32 %801, 24
  %803 = lshr i32 %800, %802
  %804 = and i32 %803, 255
  %805 = sitofp i32 %804 to float
  %806 = fmul fast float %795, 0x3F70101020000000
  %807 = fmul fast float %806, %805
  %808 = lshr i32 %792, 2
  %809 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %808
  %810 = load i32, i32* %809, align 4, !tbaa !56, !noalias !60
  %811 = shl i32 %792, 3
  %812 = and i32 %811, 24
  %813 = lshr i32 %810, %812
  %814 = and i32 %813, 255
  %815 = sitofp i32 %814 to float
  %816 = fmul fast float %794, 0x3F70101020000000
  %817 = fmul fast float %816, %815
  %818 = lshr i32 %791, 2
  %819 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %818
  %820 = load i32, i32* %819, align 4, !tbaa !56, !noalias !60
  %821 = shl i32 %791, 3
  %822 = and i32 %821, 24
  %823 = lshr i32 %820, %822
  %824 = and i32 %823, 255
  %825 = sitofp i32 %824 to float
  %826 = fmul fast float %797, 0x3F70101020000000
  %827 = fmul fast float %826, %825
  %828 = fsub fast float 1.000000e+00, %807
  %829 = fsub fast float %828, %817
  %830 = fsub fast float %829, %827
  %831 = fmul fast float %559, 2.000000e+01
  %832 = fadd fast float %831, 1.000000e+00
  %833 = fmul fast float %830, 2.000000e+01
  %834 = fsub fast float %832, %833
  %835 = call float @dx.op.unary.f32(i32 7, float %834)  ; Saturate(value)
  br label %836

; <label>:836                                     ; preds = %790, %742
  %837 = phi float [ %835, %790 ], [ 1.000000e+00, %742 ]
  store float %837, float* %648, align 4, !tbaa !68, !noalias !60
  %838 = fadd fast float %837, %743
  %839 = icmp slt i32 %641, 0
  br i1 %839, label %840, label %931, !dx.controlflow.hints !54

; <label>:840                                     ; preds = %836
  %841 = fsub fast float 1.000000e+00, %560
  %842 = fdiv fast float 1.000000e+00, %841
  %843 = shl i32 %549, 6
  %844 = or i32 %843, 32
  %845 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %844, i32 undef)  ; BufferLoad(srv,index,wot)
  %846 = extractvalue %dx.types.ResRet.i32 %845, 0
  %847 = extractvalue %dx.types.ResRet.i32 %845, 1
  %848 = extractvalue %dx.types.ResRet.i32 %845, 2
  %849 = extractvalue %dx.types.ResRet.i32 %845, 3
  %850 = fmul fast float %842, %558
  %851 = fmul fast float %842, %559
  %852 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 0
  store i32 %846, i32* %852, align 4
  %853 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 1
  store i32 %847, i32* %853, align 4
  %854 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 2
  store i32 %848, i32* %854, align 4
  %855 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 3
  store i32 %849, i32* %855, align 4
  %856 = fmul fast float %851, 4.000000e+00
  %857 = call float @dx.op.unary.f32(i32 27, float %856)  ; Round_ni(value)
  %858 = fmul fast float %850, 4.000000e+00
  %859 = call float @dx.op.unary.f32(i32 27, float %858)  ; Round_ni(value)
  %860 = fsub fast float 1.100000e+01, %857
  %861 = fmul fast float %857, 5.000000e-01
  %862 = fmul fast float %861, %860
  %863 = fadd fast float %859, 5.000000e-01
  %864 = fadd fast float %863, %862
  %865 = fptosi float %864 to i32
  %866 = fptosi float %857 to i32
  %867 = sub nsw i32 5, %866
  %868 = fmul fast float %859, 2.500000e-01
  %869 = fmul fast float %857, 2.500000e-01
  %870 = add nsw i32 %865, 1
  %871 = add nsw i32 %865, %867
  %872 = fsub fast float %850, %868
  %873 = fmul fast float %872, 4.000000e+00
  %874 = fsub fast float %851, %869
  %875 = fmul fast float %874, 4.000000e+00
  %876 = fadd fast float %872, %874
  %877 = fmul fast float %876, 4.000000e+00
  %878 = fcmp fast ogt float %877, 1.000000e+00
  br i1 %878, label %879, label %885, !dx.controlflow.hints !55

; <label>:879                                     ; preds = %840
  %880 = add nsw i32 %871, 1
  %881 = fadd fast float %875, -1.000000e+00
  %882 = fsub fast float -0.000000e+00, %881
  %883 = fadd fast float %873, -1.000000e+00
  %884 = fsub fast float -0.000000e+00, %883
  br label %885

; <label>:885                                     ; preds = %879, %840
  %886 = phi i32 [ %880, %879 ], [ %865, %840 ]
  %887 = phi i32 [ %870, %879 ], [ %871, %840 ]
  %888 = phi i32 [ %871, %879 ], [ %870, %840 ]
  %889 = phi float [ %884, %879 ], [ %875, %840 ]
  %890 = phi float [ %882, %879 ], [ %873, %840 ]
  %891 = fsub fast float 1.000000e+00, %889
  %892 = fsub fast float %891, %890
  %893 = lshr i32 %888, 2
  %894 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %893
  %895 = load i32, i32* %894, align 4, !tbaa !56, !noalias !60
  %896 = shl i32 %888, 3
  %897 = and i32 %896, 24
  %898 = lshr i32 %895, %897
  %899 = and i32 %898, 255
  %900 = sitofp i32 %899 to float
  %901 = fmul fast float %890, 0x3F70101020000000
  %902 = fmul fast float %901, %900
  %903 = lshr i32 %887, 2
  %904 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %903
  %905 = load i32, i32* %904, align 4, !tbaa !56, !noalias !60
  %906 = shl i32 %887, 3
  %907 = and i32 %906, 24
  %908 = lshr i32 %905, %907
  %909 = and i32 %908, 255
  %910 = sitofp i32 %909 to float
  %911 = fmul fast float %889, 0x3F70101020000000
  %912 = fmul fast float %911, %910
  %913 = lshr i32 %886, 2
  %914 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %913
  %915 = load i32, i32* %914, align 4, !tbaa !56, !noalias !60
  %916 = shl i32 %886, 3
  %917 = and i32 %916, 24
  %918 = lshr i32 %915, %917
  %919 = and i32 %918, 255
  %920 = sitofp i32 %919 to float
  %921 = fmul fast float %892, 0x3F70101020000000
  %922 = fmul fast float %921, %920
  %923 = fsub fast float 1.000000e+00, %902
  %924 = fsub fast float %923, %912
  %925 = fsub fast float %924, %922
  %926 = fmul fast float %560, 2.000000e+01
  %927 = fadd fast float %926, 1.000000e+00
  %928 = fmul fast float %925, 2.000000e+01
  %929 = fsub fast float %927, %928
  %930 = call float @dx.op.unary.f32(i32 7, float %929)  ; Saturate(value)
  br label %931

; <label>:931                                     ; preds = %885, %836
  %932 = phi float [ %930, %885 ], [ 1.000000e+00, %836 ]
  store float %932, float* %649, align 4, !tbaa !68, !noalias !60
  %933 = fadd fast float %838, %932
  %934 = icmp slt i32 %642, 0
  br i1 %934, label %935, label %1026, !dx.controlflow.hints !54

; <label>:935                                     ; preds = %931
  %936 = fsub fast float 1.000000e+00, %561
  %937 = fdiv fast float 1.000000e+00, %936
  %938 = shl i32 %549, 6
  %939 = or i32 %938, 48
  %940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %939, i32 undef)  ; BufferLoad(srv,index,wot)
  %941 = extractvalue %dx.types.ResRet.i32 %940, 0
  %942 = extractvalue %dx.types.ResRet.i32 %940, 1
  %943 = extractvalue %dx.types.ResRet.i32 %940, 2
  %944 = extractvalue %dx.types.ResRet.i32 %940, 3
  %945 = fmul fast float %937, %558
  %946 = fmul fast float %937, %559
  %947 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 0
  store i32 %941, i32* %947, align 4
  %948 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 1
  store i32 %942, i32* %948, align 4
  %949 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 2
  store i32 %943, i32* %949, align 4
  %950 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 3
  store i32 %944, i32* %950, align 4
  %951 = fmul fast float %946, 4.000000e+00
  %952 = call float @dx.op.unary.f32(i32 27, float %951)  ; Round_ni(value)
  %953 = fmul fast float %945, 4.000000e+00
  %954 = call float @dx.op.unary.f32(i32 27, float %953)  ; Round_ni(value)
  %955 = fsub fast float 1.100000e+01, %952
  %956 = fmul fast float %952, 5.000000e-01
  %957 = fmul fast float %956, %955
  %958 = fadd fast float %954, 5.000000e-01
  %959 = fadd fast float %958, %957
  %960 = fptosi float %959 to i32
  %961 = fptosi float %952 to i32
  %962 = sub nsw i32 5, %961
  %963 = fmul fast float %954, 2.500000e-01
  %964 = fmul fast float %952, 2.500000e-01
  %965 = add nsw i32 %960, 1
  %966 = add nsw i32 %960, %962
  %967 = fsub fast float %945, %963
  %968 = fmul fast float %967, 4.000000e+00
  %969 = fsub fast float %946, %964
  %970 = fmul fast float %969, 4.000000e+00
  %971 = fadd fast float %967, %969
  %972 = fmul fast float %971, 4.000000e+00
  %973 = fcmp fast ogt float %972, 1.000000e+00
  br i1 %973, label %974, label %980, !dx.controlflow.hints !55

; <label>:974                                     ; preds = %935
  %975 = add nsw i32 %966, 1
  %976 = fadd fast float %970, -1.000000e+00
  %977 = fsub fast float -0.000000e+00, %976
  %978 = fadd fast float %968, -1.000000e+00
  %979 = fsub fast float -0.000000e+00, %978
  br label %980

; <label>:980                                     ; preds = %974, %935
  %981 = phi i32 [ %975, %974 ], [ %960, %935 ]
  %982 = phi i32 [ %965, %974 ], [ %966, %935 ]
  %983 = phi i32 [ %966, %974 ], [ %965, %935 ]
  %984 = phi float [ %979, %974 ], [ %970, %935 ]
  %985 = phi float [ %977, %974 ], [ %968, %935 ]
  %986 = fsub fast float 1.000000e+00, %984
  %987 = fsub fast float %986, %985
  %988 = lshr i32 %983, 2
  %989 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %988
  %990 = load i32, i32* %989, align 4, !tbaa !56, !noalias !60
  %991 = shl i32 %983, 3
  %992 = and i32 %991, 24
  %993 = lshr i32 %990, %992
  %994 = and i32 %993, 255
  %995 = sitofp i32 %994 to float
  %996 = fmul fast float %985, 0x3F70101020000000
  %997 = fmul fast float %996, %995
  %998 = lshr i32 %982, 2
  %999 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %998
  %1000 = load i32, i32* %999, align 4, !tbaa !56, !noalias !60
  %1001 = shl i32 %982, 3
  %1002 = and i32 %1001, 24
  %1003 = lshr i32 %1000, %1002
  %1004 = and i32 %1003, 255
  %1005 = sitofp i32 %1004 to float
  %1006 = fmul fast float %984, 0x3F70101020000000
  %1007 = fmul fast float %1006, %1005
  %1008 = lshr i32 %981, 2
  %1009 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %1008
  %1010 = load i32, i32* %1009, align 4, !tbaa !56, !noalias !60
  %1011 = shl i32 %981, 3
  %1012 = and i32 %1011, 24
  %1013 = lshr i32 %1010, %1012
  %1014 = and i32 %1013, 255
  %1015 = sitofp i32 %1014 to float
  %1016 = fmul fast float %987, 0x3F70101020000000
  %1017 = fmul fast float %1016, %1015
  %1018 = fsub fast float 1.000000e+00, %997
  %1019 = fsub fast float %1018, %1007
  %1020 = fsub fast float %1019, %1017
  %1021 = fmul fast float %561, 2.000000e+01
  %1022 = fadd fast float %1021, 1.000000e+00
  %1023 = fmul fast float %1020, 2.000000e+01
  %1024 = fsub fast float %1022, %1023
  %1025 = call float @dx.op.unary.f32(i32 7, float %1024)  ; Saturate(value)
  br label %1026

; <label>:1026                                    ; preds = %980, %931
  %1027 = phi float [ %1025, %980 ], [ 1.000000e+00, %931 ]
  store float %1027, float* %650, align 4, !tbaa !68, !noalias !60
  %1028 = fadd fast float %933, %1027
  %1029 = fcmp fast oeq float %1028, 0.000000e+00
  br i1 %1029, label %1030, label %1031, !dx.controlflow.hints !70

; <label>:1030                                    ; preds = %1026
  store float 2.500000e-01, float* %647, align 4
  store float 2.500000e-01, float* %648, align 4
  store float 2.500000e-01, float* %649, align 4
  store float 2.500000e-01, float* %650, align 4
  br label %1031

; <label>:1031                                    ; preds = %1030, %1026
  %1032 = phi float [ 2.500000e-01, %1030 ], [ %743, %1026 ]
  br label %1033

; <label>:1033                                    ; preds = %1297, %1031
  %1034 = phi float [ %1299, %1297 ], [ %1032, %1031 ]
  %1035 = phi float [ %1267, %1297 ], [ 0.000000e+00, %1031 ]
  %1036 = phi float [ %1268, %1297 ], [ 0.000000e+00, %1031 ]
  %1037 = phi float [ %1269, %1297 ], [ 0.000000e+00, %1031 ]
  %1038 = phi float [ %1270, %1297 ], [ 0.000000e+00, %1031 ]
  %1039 = phi float [ %1271, %1297 ], [ 0.000000e+00, %1031 ]
  %1040 = phi float [ %1272, %1297 ], [ 0.000000e+00, %1031 ]
  %1041 = phi float [ %1273, %1297 ], [ 0.000000e+00, %1031 ]
  %1042 = phi float [ %1274, %1297 ], [ 0.000000e+00, %1031 ]
  %1043 = phi float [ %1275, %1297 ], [ 0.000000e+00, %1031 ]
  %1044 = phi float [ %1276, %1297 ], [ 0.000000e+00, %1031 ]
  %1045 = phi float [ %1277, %1297 ], [ 0.000000e+00, %1031 ]
  %1046 = phi float [ %1278, %1297 ], [ 0.000000e+00, %1031 ]
  %1047 = phi float [ %1279, %1297 ], [ 0.000000e+00, %1031 ]
  %1048 = phi float [ %1280, %1297 ], [ 0.000000e+00, %1031 ]
  %1049 = phi float [ %1281, %1297 ], [ 0.000000e+00, %1031 ]
  %1050 = phi float [ %1282, %1297 ], [ 0.000000e+00, %1031 ]
  %1051 = phi float [ %1283, %1297 ], [ 0.000000e+00, %1031 ]
  %1052 = phi float [ %1284, %1297 ], [ 0.000000e+00, %1031 ]
  %1053 = phi float [ %1285, %1297 ], [ 0.000000e+00, %1031 ]
  %1054 = phi float [ %1286, %1297 ], [ 0.000000e+00, %1031 ]
  %1055 = phi float [ %1287, %1297 ], [ 0.000000e+00, %1031 ]
  %1056 = phi float [ %1288, %1297 ], [ 0.000000e+00, %1031 ]
  %1057 = phi float [ %1289, %1297 ], [ 0.000000e+00, %1031 ]
  %1058 = phi float [ %1290, %1297 ], [ 0.000000e+00, %1031 ]
  %1059 = phi float [ %1291, %1297 ], [ 0.000000e+00, %1031 ]
  %1060 = phi float [ %1292, %1297 ], [ 0.000000e+00, %1031 ]
  %1061 = phi float [ %1293, %1297 ], [ 0.000000e+00, %1031 ]
  %1062 = phi float [ %1294, %1297 ], [ 0.000000e+00, %1031 ]
  %1063 = phi i32 [ %1295, %1297 ], [ 0, %1031 ]
  %1064 = fcmp fast ogt float %1034, 0.000000e+00
  br i1 %1064, label %1065, label %1266, !dx.controlflow.hints !71

; <label>:1065                                    ; preds = %1033
  %1066 = getelementptr [4 x float], [4 x float]* %29, i32 0, i32 %1063
  %1067 = load float, float* %1066, align 4, !tbaa !68, !noalias !60
  %1068 = getelementptr [4 x i32], [4 x i32]* %30, i32 0, i32 %1063
  %1069 = load i32, i32* %1068, align 4, !tbaa !56, !noalias !60
  %1070 = fmul fast float %1067, %1034
  %1071 = shl i32 %1069, 5
  %1072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1071, i32 undef)  ; BufferLoad(srv,index,wot)
  %1073 = extractvalue %dx.types.ResRet.i32 %1072, 0
  %1074 = extractvalue %dx.types.ResRet.i32 %1072, 1
  %1075 = extractvalue %dx.types.ResRet.i32 %1072, 2
  %1076 = extractvalue %dx.types.ResRet.i32 %1072, 3
  %1077 = or i32 %1071, 16
  %1078 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1077, i32 undef)  ; BufferLoad(srv,index,wot)
  %1079 = extractvalue %dx.types.ResRet.i32 %1078, 0
  %1080 = extractvalue %dx.types.ResRet.i32 %1078, 1
  %1081 = extractvalue %dx.types.ResRet.i32 %1078, 2
  %1082 = shl i32 %1073, 4
  %1083 = and i32 %1082, 32752
  %1084 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1083)  ; LegacyF16ToF32(value)
  %1085 = lshr i32 %1073, 7
  %1086 = and i32 %1085, 32752
  %1087 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1086)  ; LegacyF16ToF32(value)
  %1088 = lshr i32 %1073, 22
  %1089 = shl nuw nsw i32 %1088, 5
  %1090 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1089)  ; LegacyF16ToF32(value)
  %1091 = and i32 %1074, 255
  %1092 = uitofp i32 %1091 to float
  %1093 = fmul fast float %1092, 0x3F80204080000000
  %1094 = fadd fast float %1093, -1.000000e+00
  %1095 = lshr i32 %1074, 8
  %1096 = and i32 %1095, 255
  %1097 = uitofp i32 %1096 to float
  %1098 = fmul fast float %1097, 0x3F80204080000000
  %1099 = fadd fast float %1098, -1.000000e+00
  %1100 = lshr i32 %1074, 16
  %1101 = and i32 %1100, 255
  %1102 = uitofp i32 %1101 to float
  %1103 = fmul fast float %1102, 0x3F80204080000000
  %1104 = fadd fast float %1103, -1.000000e+00
  %1105 = lshr i32 %1074, 24
  %1106 = uitofp i32 %1105 to float
  %1107 = fmul fast float %1106, 0x3F80204080000000
  %1108 = fadd fast float %1107, -1.000000e+00
  %1109 = and i32 %1075, 255
  %1110 = uitofp i32 %1109 to float
  %1111 = fmul fast float %1110, 0x3F80204080000000
  %1112 = fadd fast float %1111, -1.000000e+00
  %1113 = lshr i32 %1075, 8
  %1114 = and i32 %1113, 255
  %1115 = uitofp i32 %1114 to float
  %1116 = fmul fast float %1115, 0x3F80204080000000
  %1117 = fadd fast float %1116, -1.000000e+00
  %1118 = lshr i32 %1075, 16
  %1119 = and i32 %1118, 255
  %1120 = uitofp i32 %1119 to float
  %1121 = fmul fast float %1120, 0x3F80204080000000
  %1122 = fadd fast float %1121, -1.000000e+00
  %1123 = lshr i32 %1075, 24
  %1124 = uitofp i32 %1123 to float
  %1125 = fmul fast float %1124, 0x3F80204080000000
  %1126 = fadd fast float %1125, -1.000000e+00
  %1127 = and i32 %1076, 255
  %1128 = uitofp i32 %1127 to float
  %1129 = fmul fast float %1128, 0x3F80204080000000
  %1130 = fadd fast float %1129, -1.000000e+00
  %1131 = lshr i32 %1076, 8
  %1132 = and i32 %1131, 255
  %1133 = uitofp i32 %1132 to float
  %1134 = fmul fast float %1133, 0x3F80204080000000
  %1135 = fadd fast float %1134, -1.000000e+00
  %1136 = lshr i32 %1076, 16
  %1137 = and i32 %1136, 255
  %1138 = uitofp i32 %1137 to float
  %1139 = fmul fast float %1138, 0x3F80204080000000
  %1140 = fadd fast float %1139, -1.000000e+00
  %1141 = lshr i32 %1076, 24
  %1142 = uitofp i32 %1141 to float
  %1143 = fmul fast float %1142, 0x3F80204080000000
  %1144 = fadd fast float %1143, -1.000000e+00
  %1145 = and i32 %1079, 255
  %1146 = uitofp i32 %1145 to float
  %1147 = fmul fast float %1146, 0x3F80204080000000
  %1148 = fadd fast float %1147, -1.000000e+00
  %1149 = lshr i32 %1079, 8
  %1150 = and i32 %1149, 255
  %1151 = uitofp i32 %1150 to float
  %1152 = fmul fast float %1151, 0x3F80204080000000
  %1153 = fadd fast float %1152, -1.000000e+00
  %1154 = lshr i32 %1079, 16
  %1155 = and i32 %1154, 255
  %1156 = uitofp i32 %1155 to float
  %1157 = fmul fast float %1156, 0x3F80204080000000
  %1158 = fadd fast float %1157, -1.000000e+00
  %1159 = lshr i32 %1079, 24
  %1160 = uitofp i32 %1159 to float
  %1161 = fmul fast float %1160, 0x3F80204080000000
  %1162 = fadd fast float %1161, -1.000000e+00
  %1163 = and i32 %1080, 255
  %1164 = uitofp i32 %1163 to float
  %1165 = fmul fast float %1164, 0x3F80204080000000
  %1166 = fadd fast float %1165, -1.000000e+00
  %1167 = lshr i32 %1080, 8
  %1168 = and i32 %1167, 255
  %1169 = uitofp i32 %1168 to float
  %1170 = fmul fast float %1169, 0x3F80204080000000
  %1171 = fadd fast float %1170, -1.000000e+00
  %1172 = lshr i32 %1080, 16
  %1173 = and i32 %1172, 255
  %1174 = uitofp i32 %1173 to float
  %1175 = fmul fast float %1174, 0x3F80204080000000
  %1176 = fadd fast float %1175, -1.000000e+00
  %1177 = lshr i32 %1080, 24
  %1178 = uitofp i32 %1177 to float
  %1179 = fmul fast float %1178, 0x3F80204080000000
  %1180 = fadd fast float %1179, -1.000000e+00
  %1181 = and i32 %1081, 255
  %1182 = uitofp i32 %1181 to float
  %1183 = fmul fast float %1182, 0x3F80204080000000
  %1184 = fadd fast float %1183, -1.000000e+00
  %1185 = lshr i32 %1081, 8
  %1186 = and i32 %1185, 255
  %1187 = uitofp i32 %1186 to float
  %1188 = fmul fast float %1187, 0x3F80204080000000
  %1189 = fadd fast float %1188, -1.000000e+00
  %1190 = lshr i32 %1081, 16
  %1191 = and i32 %1190, 255
  %1192 = uitofp i32 %1191 to float
  %1193 = fmul fast float %1192, 0x3F80204080000000
  %1194 = fadd fast float %1193, -1.000000e+00
  %1195 = lshr i32 %1081, 24
  %1196 = uitofp i32 %1195 to float
  %1197 = fmul fast float %1196, 0x3F80204080000000
  %1198 = fadd fast float %1197, -1.000000e+00
  %1199 = fmul fast float %1084, %1070
  %1200 = fadd fast float %1199, %1043
  %1201 = fmul fast float %1070, 0x3FFBB67AE0000000
  %1202 = fmul fast float %1201, %1084
  %1203 = fmul fast float %1202, %1094
  %1204 = fadd fast float %1203, %1042
  %1205 = fmul fast float %1202, %1099
  %1206 = fadd fast float %1205, %1041
  %1207 = fmul fast float %1202, %1104
  %1208 = fadd fast float %1207, %1040
  %1209 = fmul fast float %1070, 0x3FFEFBDEC0000000
  %1210 = fmul fast float %1209, %1084
  %1211 = fmul fast float %1210, %1108
  %1212 = fadd fast float %1211, %1039
  %1213 = fmul fast float %1210, %1112
  %1214 = fadd fast float %1213, %1038
  %1215 = fmul fast float %1070, 0x4001E377A0000000
  %1216 = fmul fast float %1215, %1084
  %1217 = fmul fast float %1216, %1117
  %1218 = fadd fast float %1217, %1037
  %1219 = fmul fast float %1210, %1122
  %1220 = fadd fast float %1219, %1036
  %1221 = fmul fast float %1210, %1126
  %1222 = fadd fast float %1221, %1035
  %1223 = fmul fast float %1087, %1070
  %1224 = fadd fast float %1223, %1052
  %1225 = fmul fast float %1201, %1087
  %1226 = fmul fast float %1225, %1130
  %1227 = fadd fast float %1226, %1051
  %1228 = fmul fast float %1225, %1135
  %1229 = fadd fast float %1228, %1050
  %1230 = fmul fast float %1225, %1140
  %1231 = fadd fast float %1230, %1049
  %1232 = fmul fast float %1209, %1087
  %1233 = fmul fast float %1232, %1144
  %1234 = fadd fast float %1233, %1048
  %1235 = fmul fast float %1232, %1148
  %1236 = fadd fast float %1235, %1047
  %1237 = fmul fast float %1215, %1087
  %1238 = fmul fast float %1237, %1153
  %1239 = fadd fast float %1238, %1046
  %1240 = fmul fast float %1232, %1158
  %1241 = fadd fast float %1240, %1045
  %1242 = fmul fast float %1232, %1162
  %1243 = fadd fast float %1242, %1044
  %1244 = fmul fast float %1090, %1070
  %1245 = fadd fast float %1244, %1061
  %1246 = fmul fast float %1201, %1090
  %1247 = fmul fast float %1246, %1166
  %1248 = fadd fast float %1247, %1060
  %1249 = fmul fast float %1246, %1171
  %1250 = fadd fast float %1249, %1059
  %1251 = fmul fast float %1246, %1176
  %1252 = fadd fast float %1251, %1058
  %1253 = fmul fast float %1209, %1090
  %1254 = fmul fast float %1253, %1180
  %1255 = fadd fast float %1254, %1057
  %1256 = fmul fast float %1253, %1184
  %1257 = fadd fast float %1256, %1056
  %1258 = fmul fast float %1215, %1090
  %1259 = fmul fast float %1258, %1189
  %1260 = fadd fast float %1259, %1055
  %1261 = fmul fast float %1253, %1194
  %1262 = fadd fast float %1261, %1054
  %1263 = fmul fast float %1253, %1198
  %1264 = fadd fast float %1263, %1053
  %1265 = fadd fast float %1070, %1062
  br label %1266

; <label>:1266                                    ; preds = %1065, %1033
  %1267 = phi float [ %1222, %1065 ], [ %1035, %1033 ]
  %1268 = phi float [ %1220, %1065 ], [ %1036, %1033 ]
  %1269 = phi float [ %1218, %1065 ], [ %1037, %1033 ]
  %1270 = phi float [ %1214, %1065 ], [ %1038, %1033 ]
  %1271 = phi float [ %1212, %1065 ], [ %1039, %1033 ]
  %1272 = phi float [ %1208, %1065 ], [ %1040, %1033 ]
  %1273 = phi float [ %1206, %1065 ], [ %1041, %1033 ]
  %1274 = phi float [ %1204, %1065 ], [ %1042, %1033 ]
  %1275 = phi float [ %1200, %1065 ], [ %1043, %1033 ]
  %1276 = phi float [ %1243, %1065 ], [ %1044, %1033 ]
  %1277 = phi float [ %1241, %1065 ], [ %1045, %1033 ]
  %1278 = phi float [ %1239, %1065 ], [ %1046, %1033 ]
  %1279 = phi float [ %1236, %1065 ], [ %1047, %1033 ]
  %1280 = phi float [ %1234, %1065 ], [ %1048, %1033 ]
  %1281 = phi float [ %1231, %1065 ], [ %1049, %1033 ]
  %1282 = phi float [ %1229, %1065 ], [ %1050, %1033 ]
  %1283 = phi float [ %1227, %1065 ], [ %1051, %1033 ]
  %1284 = phi float [ %1224, %1065 ], [ %1052, %1033 ]
  %1285 = phi float [ %1264, %1065 ], [ %1053, %1033 ]
  %1286 = phi float [ %1262, %1065 ], [ %1054, %1033 ]
  %1287 = phi float [ %1260, %1065 ], [ %1055, %1033 ]
  %1288 = phi float [ %1257, %1065 ], [ %1056, %1033 ]
  %1289 = phi float [ %1255, %1065 ], [ %1057, %1033 ]
  %1290 = phi float [ %1252, %1065 ], [ %1058, %1033 ]
  %1291 = phi float [ %1250, %1065 ], [ %1059, %1033 ]
  %1292 = phi float [ %1248, %1065 ], [ %1060, %1033 ]
  %1293 = phi float [ %1245, %1065 ], [ %1061, %1033 ]
  %1294 = phi float [ %1265, %1065 ], [ %1062, %1033 ]
  %1295 = add nuw nsw i32 %1063, 1
  %1296 = icmp eq i32 %1295, 4
  br i1 %1296, label %1300, label %1297

; <label>:1297                                    ; preds = %1266
  %1298 = getelementptr [4 x float], [4 x float]* %31, i32 0, i32 %1295
  %1299 = load float, float* %1298, align 4, !tbaa !68, !noalias !60
  br label %1033

; <label>:1300                                    ; preds = %1266
  %1301 = fcmp fast ogt float %1294, 0.000000e+00
  %1302 = fdiv fast float 1.000000e+00, %1294
  %1303 = select i1 %1301, float %1302, float 1.000000e+00
  %1304 = fmul fast float %1303, %1275
  %1305 = fmul fast float %1303, %1274
  %1306 = fmul fast float %1303, %1273
  %1307 = fmul fast float %1303, %1272
  %1308 = fmul fast float %1303, %1271
  %1309 = fmul fast float %1303, %1270
  %1310 = fmul fast float %1303, %1269
  %1311 = fmul fast float %1303, %1268
  %1312 = fmul fast float %1303, %1267
  %1313 = fmul fast float %1303, %1284
  %1314 = fmul fast float %1303, %1283
  %1315 = fmul fast float %1303, %1282
  %1316 = fmul fast float %1303, %1281
  %1317 = fmul fast float %1303, %1280
  %1318 = fmul fast float %1303, %1279
  %1319 = fmul fast float %1303, %1278
  %1320 = fmul fast float %1303, %1277
  %1321 = fmul fast float %1303, %1276
  %1322 = fmul fast float %1303, %1293
  %1323 = fmul fast float %1303, %1292
  %1324 = fmul fast float %1303, %1291
  %1325 = fmul fast float %1303, %1290
  %1326 = fmul fast float %1303, %1289
  %1327 = fmul fast float %1303, %1288
  %1328 = fmul fast float %1303, %1287
  %1329 = fmul fast float %1303, %1286
  %1330 = fmul fast float %1303, %1285
  br label %1331

; <label>:1331                                    ; preds = %1300, %563, %237
  %1332 = phi float [ 0.000000e+00, %237 ], [ %1321, %1300 ], [ %617, %563 ]
  %1333 = phi float [ 0.000000e+00, %237 ], [ %1320, %1300 ], [ %615, %563 ]
  %1334 = phi float [ 0.000000e+00, %237 ], [ %1319, %1300 ], [ %613, %563 ]
  %1335 = phi float [ 0.000000e+00, %237 ], [ %1318, %1300 ], [ %611, %563 ]
  %1336 = phi float [ 0.000000e+00, %237 ], [ %1317, %1300 ], [ %609, %563 ]
  %1337 = phi float [ 0.000000e+00, %237 ], [ %1316, %1300 ], [ %607, %563 ]
  %1338 = phi float [ 0.000000e+00, %237 ], [ %1315, %1300 ], [ %605, %563 ]
  %1339 = phi float [ 0.000000e+00, %237 ], [ %1314, %1300 ], [ %603, %563 ]
  %1340 = phi float [ 0.000000e+00, %237 ], [ %1313, %1300 ], [ %601, %563 ]
  %1341 = phi float [ 0.000000e+00, %237 ], [ %1312, %1300 ], [ %599, %563 ]
  %1342 = phi float [ 0.000000e+00, %237 ], [ %1311, %1300 ], [ %597, %563 ]
  %1343 = phi float [ 0.000000e+00, %237 ], [ %1310, %1300 ], [ %595, %563 ]
  %1344 = phi float [ 0.000000e+00, %237 ], [ %1309, %1300 ], [ %593, %563 ]
  %1345 = phi float [ 0.000000e+00, %237 ], [ %1308, %1300 ], [ %591, %563 ]
  %1346 = phi float [ 0.000000e+00, %237 ], [ %1307, %1300 ], [ %589, %563 ]
  %1347 = phi float [ 0.000000e+00, %237 ], [ %1306, %1300 ], [ %587, %563 ]
  %1348 = phi float [ 0.000000e+00, %237 ], [ %1305, %1300 ], [ %585, %563 ]
  %1349 = phi float [ 0.000000e+00, %237 ], [ %1304, %1300 ], [ %583, %563 ]
  %1350 = phi float [ 0.000000e+00, %237 ], [ %1330, %1300 ], [ %635, %563 ]
  %1351 = phi float [ 0.000000e+00, %237 ], [ %1329, %1300 ], [ %633, %563 ]
  %1352 = phi float [ 0.000000e+00, %237 ], [ %1328, %1300 ], [ %631, %563 ]
  %1353 = phi float [ 0.000000e+00, %237 ], [ %1327, %1300 ], [ %629, %563 ]
  %1354 = phi float [ 0.000000e+00, %237 ], [ %1326, %1300 ], [ %627, %563 ]
  %1355 = phi float [ 0.000000e+00, %237 ], [ %1325, %1300 ], [ %625, %563 ]
  %1356 = phi float [ 0.000000e+00, %237 ], [ %1324, %1300 ], [ %623, %563 ]
  %1357 = phi float [ 0.000000e+00, %237 ], [ %1323, %1300 ], [ %621, %563 ]
  %1358 = phi float [ 0.000000e+00, %237 ], [ %1322, %1300 ], [ %619, %563 ]
  %1359 = fcmp fast olt float %238, 1.000000e+00
  br i1 %1359, label %1360, label %2020, !dx.controlflow.hints !72

; <label>:1360                                    ; preds = %1331
  %1361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1362 = extractvalue %dx.types.CBufRet.f32 %1361, 0
  %1363 = extractvalue %dx.types.CBufRet.f32 %1361, 1
  %1364 = fsub fast float %188, %1362
  %1365 = fsub fast float %193, %1363
  %1366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1367 = extractvalue %dx.types.CBufRet.f32 %1366, 0
  %1368 = extractvalue %dx.types.CBufRet.f32 %1366, 1
  %1369 = fmul fast float %1364, %1367
  %1370 = fmul fast float %1365, %1368
  %1371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1372 = extractvalue %dx.types.CBufRet.f32 %1371, 0
  %1373 = fmul fast float %1372, %1369
  %1374 = extractvalue %dx.types.CBufRet.f32 %1371, 1
  %1375 = fadd fast float %1373, %1374
  %1376 = extractvalue %dx.types.CBufRet.f32 %1371, 2
  %1377 = fmul fast float %1376, %1370
  %1378 = extractvalue %dx.types.CBufRet.f32 %1371, 3
  %1379 = fadd fast float %1377, %1378
  %1380 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %21, float %1375, float %1379, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1381 = extractvalue %dx.types.ResRet.f32 %1380, 0
  %1382 = extractvalue %dx.types.ResRet.f32 %1380, 1
  %1383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1384 = extractvalue %dx.types.CBufRet.f32 %1383, 1
  %1385 = extractvalue %dx.types.CBufRet.f32 %1383, 0
  %1386 = fsub fast float %1384, %1385
  %1387 = fmul fast float %1386, %1381
  %1388 = fadd fast float %1387, %1385
  %1389 = extractvalue %dx.types.CBufRet.f32 %1383, 3
  %1390 = extractvalue %dx.types.CBufRet.f32 %1383, 2
  %1391 = fsub fast float %1389, %1390
  %1392 = fmul fast float %1391, %1382
  %1393 = fadd fast float %1392, %1390
  %1394 = fsub fast float %198, %1388
  %1395 = fsub fast float %1393, %1388
  %1396 = fdiv fast float %1394, %1395
  %1397 = call float @dx.op.unary.f32(i32 7, float %1396)  ; Saturate(value)
  %1398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %1399 = extractvalue %dx.types.CBufRet.f32 %1398, 0
  %1400 = fmul fast float %1399, %1397
  %1401 = extractvalue %dx.types.CBufRet.f32 %1398, 1
  %1402 = fadd fast float %1400, %1401
  %1403 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %21, float %1375, float %1379, float %1402, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1404 = extractvalue %dx.types.ResRet.f32 %1403, 0
  %1405 = extractvalue %dx.types.ResRet.f32 %1403, 1
  %1406 = extractvalue %dx.types.ResRet.f32 %1403, 2
  %1407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %1408 = extractvalue %dx.types.CBufRet.f32 %1407, 0
  %1409 = extractvalue %dx.types.CBufRet.f32 %1407, 1
  %1410 = extractvalue %dx.types.CBufRet.f32 %1407, 2
  %1411 = fmul fast float %1408, %1404
  %1412 = fmul fast float %1409, %1405
  %1413 = fmul fast float %1410, %1406
  %1414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %1415 = extractvalue %dx.types.CBufRet.f32 %1414, 0
  %1416 = extractvalue %dx.types.CBufRet.f32 %1414, 1
  %1417 = extractvalue %dx.types.CBufRet.f32 %1414, 2
  %1418 = fadd fast float %1411, %1415
  %1419 = fadd fast float %1412, %1416
  %1420 = fadd fast float %1413, %1417
  %1421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %1422 = extractvalue %dx.types.CBufRet.f32 %1421, 0
  %1423 = fmul fast float %1422, %1369
  %1424 = extractvalue %dx.types.CBufRet.f32 %1421, 1
  %1425 = fadd fast float %1423, %1424
  %1426 = extractvalue %dx.types.CBufRet.f32 %1421, 2
  %1427 = fmul fast float %1426, %1370
  %1428 = extractvalue %dx.types.CBufRet.f32 %1421, 3
  %1429 = fadd fast float %1427, %1428
  %1430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %1431 = extractvalue %dx.types.CBufRet.f32 %1430, 0
  %1432 = extractvalue %dx.types.CBufRet.f32 %1430, 1
  %1433 = extractvalue %dx.types.CBufRet.f32 %1430, 2
  %1434 = extractvalue %dx.types.CBufRet.f32 %1430, 3
  %1435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %1436 = extractvalue %dx.types.CBufRet.f32 %1435, 0
  %1437 = extractvalue %dx.types.CBufRet.f32 %1435, 1
  %1438 = extractvalue %dx.types.CBufRet.f32 %1435, 2
  %1439 = extractvalue %dx.types.CBufRet.f32 %1435, 3
  %1440 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %21, float %1425, float %1429, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1441 = extractvalue %dx.types.ResRet.f32 %1440, 0
  %1442 = extractvalue %dx.types.ResRet.f32 %1440, 1
  %1443 = extractvalue %dx.types.ResRet.f32 %1440, 2
  %1444 = extractvalue %dx.types.ResRet.f32 %1440, 3
  %1445 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %21, float %1425, float %1429, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1446 = extractvalue %dx.types.ResRet.f32 %1445, 0
  %1447 = extractvalue %dx.types.ResRet.f32 %1445, 1
  %1448 = extractvalue %dx.types.ResRet.f32 %1445, 2
  %1449 = extractvalue %dx.types.ResRet.f32 %1445, 3
  %1450 = fmul fast float %1441, %1418
  %1451 = fmul fast float %1446, %1418
  %1452 = fmul fast float %1448, %1418
  %1453 = fmul fast float %1444, %1418
  %1454 = fadd fast float %1450, %1431
  %1455 = fadd fast float %1451, %1432
  %1456 = fadd fast float %1452, %1433
  %1457 = fadd fast float %1453, %1434
  %1458 = fmul fast float %1442, %1418
  %1459 = fmul fast float %1447, %1418
  %1460 = fadd fast float %1458, %1436
  %1461 = fadd fast float %1459, %1437
  %1462 = fmul fast float %1443, %1418
  %1463 = fmul fast float %1449, %1418
  %1464 = fadd fast float %1462, %1438
  %1465 = fadd fast float %1463, %1439
  %1466 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %21, float %1425, float %1429, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1467 = extractvalue %dx.types.ResRet.f32 %1466, 0
  %1468 = extractvalue %dx.types.ResRet.f32 %1466, 1
  %1469 = extractvalue %dx.types.ResRet.f32 %1466, 2
  %1470 = extractvalue %dx.types.ResRet.f32 %1466, 3
  %1471 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %21, float %1425, float %1429, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1472 = extractvalue %dx.types.ResRet.f32 %1471, 0
  %1473 = extractvalue %dx.types.ResRet.f32 %1471, 1
  %1474 = extractvalue %dx.types.ResRet.f32 %1471, 2
  %1475 = extractvalue %dx.types.ResRet.f32 %1471, 3
  %1476 = fmul fast float %1467, %1419
  %1477 = fmul fast float %1472, %1419
  %1478 = fmul fast float %1474, %1419
  %1479 = fmul fast float %1470, %1419
  %1480 = fadd fast float %1454, %1476
  %1481 = fadd fast float %1455, %1477
  %1482 = fadd fast float %1456, %1478
  %1483 = fadd fast float %1457, %1479
  %1484 = fmul fast float %1468, %1419
  %1485 = fmul fast float %1473, %1419
  %1486 = fadd fast float %1460, %1484
  %1487 = fadd fast float %1461, %1485
  %1488 = fmul fast float %1469, %1419
  %1489 = fmul fast float %1475, %1419
  %1490 = fadd fast float %1464, %1488
  %1491 = fadd fast float %1465, %1489
  %1492 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %21, float %1425, float %1429, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1493 = extractvalue %dx.types.ResRet.f32 %1492, 0
  %1494 = extractvalue %dx.types.ResRet.f32 %1492, 1
  %1495 = extractvalue %dx.types.ResRet.f32 %1492, 2
  %1496 = extractvalue %dx.types.ResRet.f32 %1492, 3
  %1497 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %21, float %1425, float %1429, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1498 = extractvalue %dx.types.ResRet.f32 %1497, 0
  %1499 = extractvalue %dx.types.ResRet.f32 %1497, 1
  %1500 = extractvalue %dx.types.ResRet.f32 %1497, 2
  %1501 = extractvalue %dx.types.ResRet.f32 %1497, 3
  %1502 = fmul fast float %1493, %1420
  %1503 = fmul fast float %1498, %1420
  %1504 = fmul fast float %1500, %1420
  %1505 = fmul fast float %1496, %1420
  %1506 = fadd fast float %1480, %1502
  %1507 = fadd fast float %1481, %1503
  %1508 = fadd fast float %1482, %1504
  %1509 = fadd fast float %1483, %1505
  %1510 = fmul fast float %1494, %1420
  %1511 = fmul fast float %1499, %1420
  %1512 = fadd fast float %1486, %1510
  %1513 = fadd fast float %1487, %1511
  %1514 = fmul fast float %1495, %1420
  %1515 = fmul fast float %1501, %1420
  %1516 = fadd fast float %1490, %1514
  %1517 = fadd fast float %1491, %1515
  %1518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %1519 = extractvalue %dx.types.CBufRet.f32 %1518, 0
  %1520 = fsub fast float %188, %1519
  %1521 = fsub fast float %1362, %188
  %1522 = call float @dx.op.binary.f32(i32 35, float %1521, float %1520)  ; FMax(a,b)
  %1523 = extractvalue %dx.types.CBufRet.f32 %1518, 1
  %1524 = fsub fast float %193, %1523
  %1525 = fsub fast float %1363, %193
  %1526 = call float @dx.op.binary.f32(i32 35, float %1525, float %1524)  ; FMax(a,b)
  %1527 = call float @dx.op.binary.f32(i32 35, float %1522, float %1526)  ; FMax(a,b)
  %1528 = extractvalue %dx.types.CBufRet.f32 %1366, 3
  %1529 = fmul fast float %1528, %1527
  %1530 = call float @dx.op.unary.f32(i32 7, float %1529)  ; Saturate(value)
  %1531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %1532 = extractvalue %dx.types.CBufRet.f32 %1531, 0
  %1533 = extractvalue %dx.types.CBufRet.f32 %1531, 1
  %1534 = extractvalue %dx.types.CBufRet.f32 %1531, 2
  %1535 = extractvalue %dx.types.CBufRet.f32 %1531, 3
  %1536 = fsub fast float %1532, %1506
  %1537 = fsub fast float %1533, %1507
  %1538 = fsub fast float %1534, %1508
  %1539 = fsub fast float %1535, %1509
  %1540 = fmul fast float %1536, %1530
  %1541 = fmul fast float %1537, %1530
  %1542 = fmul fast float %1538, %1530
  %1543 = fmul fast float %1539, %1530
  %1544 = fadd fast float %1540, %1506
  %1545 = fadd fast float %1541, %1507
  %1546 = fadd fast float %1542, %1508
  %1547 = fadd fast float %1543, %1509
  %1548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %1549 = extractvalue %dx.types.CBufRet.f32 %1548, 0
  %1550 = extractvalue %dx.types.CBufRet.f32 %1548, 1
  %1551 = fsub fast float %1549, %1512
  %1552 = fsub fast float %1550, %1513
  %1553 = fmul fast float %1551, %1530
  %1554 = fmul fast float %1552, %1530
  %1555 = fadd fast float %1553, %1512
  %1556 = fadd fast float %1554, %1513
  %1557 = extractvalue %dx.types.CBufRet.f32 %1548, 2
  %1558 = extractvalue %dx.types.CBufRet.f32 %1548, 3
  %1559 = fsub fast float %1557, %1516
  %1560 = fsub fast float %1558, %1517
  %1561 = fmul fast float %1559, %1530
  %1562 = fmul fast float %1560, %1530
  %1563 = fadd fast float %1561, %1516
  %1564 = fadd fast float %1562, %1517
  %1565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %1566 = extractvalue %dx.types.CBufRet.f32 %1565, 0
  %1567 = fmul fast float %1566, %1544
  %1568 = fmul fast float %1566, %1545
  %1569 = fmul fast float %1566, %1546
  %1570 = fmul fast float %1566, %1547
  %1571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %1572 = extractvalue %dx.types.CBufRet.f32 %1571, 0
  %1573 = fmul fast float %1572, %1555
  %1574 = fmul fast float %1572, %1556
  %1575 = fadd fast float %1573, %1567
  %1576 = fadd fast float %1574, %1569
  %1577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %1578 = extractvalue %dx.types.CBufRet.f32 %1577, 0
  %1579 = fmul fast float %1578, %1563
  %1580 = fmul fast float %1578, %1564
  %1581 = fadd fast float %1575, %1579
  %1582 = fadd fast float %1576, %1580
  %1583 = extractvalue %dx.types.CBufRet.f32 %1565, 1
  %1584 = fmul fast float %1583, %1544
  %1585 = fmul fast float %1583, %1545
  %1586 = fmul fast float %1583, %1546
  %1587 = fmul fast float %1583, %1547
  %1588 = extractvalue %dx.types.CBufRet.f32 %1571, 1
  %1589 = fmul fast float %1588, %1555
  %1590 = fmul fast float %1588, %1556
  %1591 = fadd fast float %1589, %1584
  %1592 = fadd fast float %1590, %1586
  %1593 = extractvalue %dx.types.CBufRet.f32 %1577, 1
  %1594 = fmul fast float %1593, %1563
  %1595 = fmul fast float %1593, %1564
  %1596 = fadd fast float %1591, %1594
  %1597 = fadd fast float %1592, %1595
  %1598 = extractvalue %dx.types.CBufRet.f32 %1565, 2
  %1599 = fmul fast float %1598, %1544
  %1600 = fmul fast float %1598, %1545
  %1601 = fmul fast float %1598, %1546
  %1602 = fmul fast float %1598, %1547
  %1603 = extractvalue %dx.types.CBufRet.f32 %1571, 2
  %1604 = fmul fast float %1603, %1555
  %1605 = fmul fast float %1603, %1556
  %1606 = fadd fast float %1604, %1599
  %1607 = fadd fast float %1605, %1601
  %1608 = extractvalue %dx.types.CBufRet.f32 %1577, 2
  %1609 = fmul fast float %1608, %1563
  %1610 = fmul fast float %1608, %1564
  %1611 = fadd fast float %1606, %1609
  %1612 = fadd fast float %1607, %1610
  %1613 = fmul fast float %1600, %1600
  %1614 = fmul fast float %1612, %1612
  %1615 = fmul fast float %1602, %1602
  %1616 = fadd fast float %1615, %1613
  %1617 = fadd fast float %1616, %1614
  %1618 = call float @dx.op.unary.f32(i32 24, float %1617)  ; Sqrt(value)
  %1619 = fcmp fast ugt float %1618, 0.000000e+00
  br i1 %1619, label %1620, label %1635, !dx.controlflow.hints !73

; <label>:1620                                    ; preds = %1360
  %1621 = fsub fast float -0.000000e+00, %1602
  %1622 = fdiv fast float %1621, %1618
  %1623 = fsub fast float -0.000000e+00, %1600
  %1624 = fdiv fast float %1623, %1618
  %1625 = fdiv fast float %1612, %1618
  %1626 = fmul fast float %1611, 0x3FE279A760000000
  %1627 = fmul fast float %1624, %1600
  %1628 = fmul fast float %1625, %1612
  %1629 = fmul fast float %1622, %1602
  %1630 = fadd fast float %1627, %1629
  %1631 = fsub fast float %1630, %1628
  %1632 = call float @dx.op.unary.f32(i32 6, float %1631)  ; FAbs(value)
  %1633 = fadd fast float %1632, 0x3DDB7CDFE0000000
  %1634 = fdiv fast float %1626, %1633
  br label %1635

; <label>:1635                                    ; preds = %1620, %1360
  %1636 = phi float [ %1634, %1620 ], [ 1.000000e+00, %1360 ]
  %1637 = fmul fast float %1585, %1585
  %1638 = fmul fast float %1597, %1597
  %1639 = fmul fast float %1587, %1587
  %1640 = fadd fast float %1639, %1637
  %1641 = fadd fast float %1640, %1638
  %1642 = call float @dx.op.unary.f32(i32 24, float %1641)  ; Sqrt(value)
  %1643 = fcmp fast ugt float %1642, 0.000000e+00
  br i1 %1643, label %1644, label %1659, !dx.controlflow.hints !73

; <label>:1644                                    ; preds = %1635
  %1645 = fsub fast float -0.000000e+00, %1587
  %1646 = fdiv fast float %1645, %1642
  %1647 = fsub fast float -0.000000e+00, %1585
  %1648 = fdiv fast float %1647, %1642
  %1649 = fdiv fast float %1597, %1642
  %1650 = fmul fast float %1596, 0x3FE279A760000000
  %1651 = fmul fast float %1648, %1585
  %1652 = fmul fast float %1649, %1597
  %1653 = fmul fast float %1646, %1587
  %1654 = fadd fast float %1651, %1653
  %1655 = fsub fast float %1654, %1652
  %1656 = call float @dx.op.unary.f32(i32 6, float %1655)  ; FAbs(value)
  %1657 = fadd fast float %1656, 0x3DDB7CDFE0000000
  %1658 = fdiv fast float %1650, %1657
  br label %1659

; <label>:1659                                    ; preds = %1644, %1635
  %1660 = phi float [ %1658, %1644 ], [ 1.000000e+00, %1635 ]
  %1661 = call float @dx.op.binary.f32(i32 36, float %1660, float %1636)  ; FMin(a,b)
  %1662 = fmul fast float %1568, %1568
  %1663 = fmul fast float %1582, %1582
  %1664 = fmul fast float %1570, %1570
  %1665 = fadd fast float %1664, %1662
  %1666 = fadd fast float %1665, %1663
  %1667 = call float @dx.op.unary.f32(i32 24, float %1666)  ; Sqrt(value)
  %1668 = fcmp fast ugt float %1667, 0.000000e+00
  br i1 %1668, label %1669, label %1684, !dx.controlflow.hints !73

; <label>:1669                                    ; preds = %1659
  %1670 = fsub fast float -0.000000e+00, %1570
  %1671 = fdiv fast float %1670, %1667
  %1672 = fsub fast float -0.000000e+00, %1568
  %1673 = fdiv fast float %1672, %1667
  %1674 = fdiv fast float %1582, %1667
  %1675 = fmul fast float %1581, 0x3FE279A760000000
  %1676 = fmul fast float %1673, %1568
  %1677 = fmul fast float %1674, %1582
  %1678 = fmul fast float %1671, %1570
  %1679 = fadd fast float %1676, %1678
  %1680 = fsub fast float %1679, %1677
  %1681 = call float @dx.op.unary.f32(i32 6, float %1680)  ; FAbs(value)
  %1682 = fadd fast float %1681, 0x3DDB7CDFE0000000
  %1683 = fdiv fast float %1675, %1682
  br label %1684

; <label>:1684                                    ; preds = %1669, %1659
  %1685 = phi float [ %1683, %1669 ], [ 1.000000e+00, %1659 ]
  %1686 = call float @dx.op.binary.f32(i32 36, float %1685, float %1661)  ; FMin(a,b)
  %1687 = call float @dx.op.unary.f32(i32 7, float %1686)  ; Saturate(value)
  %1688 = fcmp fast olt float %1687, 1.000000e+00
  br i1 %1688, label %1689, label %1699, !dx.controlflow.hints !74

; <label>:1689                                    ; preds = %1684
  %1690 = fmul fast float %1687, %1568
  %1691 = fmul fast float %1687, %1582
  %1692 = fmul fast float %1687, %1570
  %1693 = fmul fast float %1687, %1585
  %1694 = fmul fast float %1687, %1597
  %1695 = fmul fast float %1687, %1587
  %1696 = fmul fast float %1687, %1600
  %1697 = fmul fast float %1687, %1612
  %1698 = fmul fast float %1687, %1602
  br label %1699

; <label>:1699                                    ; preds = %1689, %1684
  %1700 = phi float [ %1696, %1689 ], [ %1600, %1684 ]
  %1701 = phi float [ %1697, %1689 ], [ %1612, %1684 ]
  %1702 = phi float [ %1698, %1689 ], [ %1602, %1684 ]
  %1703 = phi float [ %1693, %1689 ], [ %1585, %1684 ]
  %1704 = phi float [ %1694, %1689 ], [ %1597, %1684 ]
  %1705 = phi float [ %1695, %1689 ], [ %1587, %1684 ]
  %1706 = phi float [ %1690, %1689 ], [ %1568, %1684 ]
  %1707 = phi float [ %1691, %1689 ], [ %1582, %1684 ]
  %1708 = phi float [ %1692, %1689 ], [ %1570, %1684 ]
  %1709 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1581)  ; FMax(a,b)
  %1710 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1596)  ; FMax(a,b)
  %1711 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1611)  ; FMax(a,b)
  %1712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %1713 = extractvalue %dx.types.CBufRet.f32 %1712, 0
  %1714 = fcmp fast ogt float %1713, 0.000000e+00
  %1715 = fcmp fast oge float %1369, 0.000000e+00
  %1716 = and i1 %1715, %1714
  %1717 = fcmp fast ole float %1369, 1.000000e+00
  %1718 = and i1 %1717, %1716
  %1719 = fcmp fast oge float %1370, 0.000000e+00
  %1720 = and i1 %1719, %1718
  %1721 = fcmp fast ole float %1370, 1.000000e+00
  %1722 = and i1 %1721, %1720
  br i1 %1722, label %1723, label %1868, !dx.controlflow.hints !75

; <label>:1723                                    ; preds = %1699
  %1724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1725 = extractvalue %dx.types.CBufRet.f32 %1724, 2
  %1726 = extractvalue %dx.types.CBufRet.f32 %1724, 3
  %1727 = fmul fast float %1725, %1369
  %1728 = fmul fast float %1726, %1370
  %1729 = call float @dx.op.unary.f32(i32 27, float %1727)  ; Round_ni(value)
  %1730 = call float @dx.op.unary.f32(i32 27, float %1728)  ; Round_ni(value)
  %1731 = fptosi float %1729 to i32
  %1732 = fptosi float %1730 to i32
  %1733 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %6, i32 0, i32 %1731, i32 %1732, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1734 = extractvalue %dx.types.ResRet.i32 %1733, 0
  %1735 = and i32 %1734, 65535
  %1736 = lshr i32 %1734, 16
  %1737 = icmp eq i32 %1735, 65535
  br i1 %1737, label %1774, label %1738, !dx.controlflow.hints !76

; <label>:1738                                    ; preds = %1723
  %1739 = extractvalue %dx.types.CBufRet.f32 %1712, 1
  %1740 = extractvalue %dx.types.CBufRet.f32 %1724, 0
  %1741 = extractvalue %dx.types.CBufRet.f32 %1724, 1
  %1742 = fmul fast float %1740, %1369
  %1743 = fmul fast float %1741, %1370
  %1744 = fmul fast float %1742, 1.250000e-01
  %1745 = fmul fast float %1743, 1.250000e-01
  %1746 = call float @dx.op.unary.f32(i32 27, float %1744)  ; Round_ni(value)
  %1747 = call float @dx.op.unary.f32(i32 27, float %1745)  ; Round_ni(value)
  %1748 = fmul fast float %1746, 8.000000e+00
  %1749 = fmul fast float %1747, 8.000000e+00
  %1750 = and i32 %1734, 255
  %1751 = lshr i32 %1734, 8
  %1752 = and i32 %1751, 255
  %1753 = mul nuw nsw i32 %1750, 9
  %1754 = uitofp i32 %1753 to float
  %1755 = mul nuw nsw i32 %1752, 9
  %1756 = uitofp i32 %1755 to float
  %1757 = fadd fast float %1754, 5.000000e-01
  %1758 = fadd fast float %1757, %1742
  %1759 = fsub fast float %1758, %1748
  %1760 = fadd fast float %1756, 5.000000e-01
  %1761 = fadd fast float %1760, %1743
  %1762 = fsub fast float %1761, %1749
  %1763 = fdiv fast float %1759, %1713
  %1764 = fdiv fast float %1762, %1739
  %1765 = fmul fast float %1397, 4.375000e-01
  %1766 = fadd fast float %1765, 3.125000e-02
  %1767 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %21, float %1763, float %1764, float %1766, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1768 = extractvalue %dx.types.ResRet.f32 %1767, 0
  %1769 = extractvalue %dx.types.ResRet.f32 %1767, 1
  %1770 = extractvalue %dx.types.ResRet.f32 %1767, 2
  %1771 = fadd fast float %1768, %1709
  %1772 = fadd fast float %1769, %1710
  %1773 = fadd fast float %1770, %1711
  br label %1774

; <label>:1774                                    ; preds = %1738, %1723
  %1775 = phi float [ %1773, %1738 ], [ %1711, %1723 ]
  %1776 = phi float [ %1772, %1738 ], [ %1710, %1723 ]
  %1777 = phi float [ %1771, %1738 ], [ %1709, %1723 ]
  %1778 = icmp eq i32 %1736, 65535
  br i1 %1778, label %1868, label %1779, !dx.controlflow.hints !77

; <label>:1779                                    ; preds = %1774
  %1780 = extractvalue %dx.types.CBufRet.f32 %1712, 1
  %1781 = extractvalue %dx.types.CBufRet.f32 %1724, 0
  %1782 = extractvalue %dx.types.CBufRet.f32 %1724, 1
  %1783 = fmul fast float %1781, %1369
  %1784 = fmul fast float %1782, %1370
  %1785 = fmul fast float %1783, 1.250000e-01
  %1786 = fmul fast float %1784, 1.250000e-01
  %1787 = call float @dx.op.unary.f32(i32 27, float %1785)  ; Round_ni(value)
  %1788 = call float @dx.op.unary.f32(i32 27, float %1786)  ; Round_ni(value)
  %1789 = fmul fast float %1787, 8.000000e+00
  %1790 = fmul fast float %1788, 8.000000e+00
  %1791 = fsub fast float %1783, %1789
  %1792 = fsub fast float %1784, %1790
  %1793 = fadd fast float %1791, 5.000000e-01
  %1794 = fadd fast float %1792, 5.000000e-01
  %1795 = and i32 %1736, 255
  %1796 = lshr i32 %1734, 24
  %1797 = mul nuw nsw i32 %1795, 9
  %1798 = uitofp i32 %1797 to float
  %1799 = mul nuw nsw i32 %1796, 9
  %1800 = uitofp i32 %1799 to float
  %1801 = fadd fast float %1793, %1798
  %1802 = fadd fast float %1794, %1800
  %1803 = fdiv fast float %1801, %1713
  %1804 = fdiv fast float %1802, %1780
  %1805 = fmul fast float %1397, 4.375000e-01
  %1806 = fadd fast float %1805, 3.125000e-02
  %1807 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %21, float %1803, float %1804, float %1806, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1808 = extractvalue %dx.types.ResRet.f32 %1807, 0
  %1809 = extractvalue %dx.types.ResRet.f32 %1807, 1
  %1810 = extractvalue %dx.types.ResRet.f32 %1807, 2
  %1811 = fadd fast float %1805, 5.312500e-01
  %1812 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %21, float %1803, float %1804, float %1811, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1813 = extractvalue %dx.types.ResRet.f32 %1812, 0
  %1814 = extractvalue %dx.types.ResRet.f32 %1812, 1
  %1815 = extractvalue %dx.types.ResRet.f32 %1812, 2
  %1816 = fmul fast float %1813, 2.000000e+00
  %1817 = fmul fast float %1814, 2.000000e+00
  %1818 = fmul fast float %1815, 2.000000e+00
  %1819 = fadd fast float %1816, -1.000000e+00
  %1820 = fadd fast float %1817, -1.000000e+00
  %1821 = fadd fast float %1818, -1.000000e+00
  %1822 = fmul fast float %1819, %1819
  %1823 = fmul fast float %1820, %1820
  %1824 = fadd fast float %1822, %1823
  %1825 = fmul fast float %1821, %1821
  %1826 = fadd fast float %1824, %1825
  %1827 = call float @dx.op.unary.f32(i32 24, float %1826)  ; Sqrt(value)
  %1828 = fcmp fast ogt float %1827, 0.000000e+00
  br i1 %1828, label %1829, label %1833, !dx.controlflow.hints !78

; <label>:1829                                    ; preds = %1779
  %1830 = fdiv fast float %1819, %1827
  %1831 = fdiv fast float %1820, %1827
  %1832 = fdiv fast float %1821, %1827
  br label %1833

; <label>:1833                                    ; preds = %1829, %1779
  %1834 = phi float [ %1830, %1829 ], [ 0.000000e+00, %1779 ]
  %1835 = phi float [ %1831, %1829 ], [ 0.000000e+00, %1779 ]
  %1836 = phi float [ %1832, %1829 ], [ 0.000000e+00, %1779 ]
  %1837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1838 = extractvalue %dx.types.CBufRet.f32 %1837, 0
  %1839 = extractvalue %dx.types.CBufRet.f32 %1837, 1
  %1840 = fsub fast float %188, %1838
  %1841 = fsub fast float %193, %1839
  %1842 = fmul fast float %1840, %1840
  %1843 = fmul fast float %1841, %1841
  %1844 = fadd fast float %1842, %1843
  %1845 = call float @dx.op.unary.f32(i32 24, float %1844)  ; Sqrt(value)
  %1846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1847 = extractvalue %dx.types.CBufRet.f32 %1846, 0
  %1848 = extractvalue %dx.types.CBufRet.f32 %1846, 1
  %1849 = fsub fast float %1845, %1847
  %1850 = fdiv fast float %1849, %1848
  %1851 = call float @dx.op.unary.f32(i32 7, float %1850)  ; Saturate(value)
  %1852 = fmul fast float %1851, 2.000000e+00
  %1853 = fsub fast float 3.000000e+00, %1852
  %1854 = fmul fast float %1851, %1851
  %1855 = fmul fast float %1854, %1853
  %1856 = call float @dx.op.dot3.f32(i32 55, float %1834, float %1835, float %1836, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1857 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1856)  ; FMax(a,b)
  %1858 = fmul fast float %1857, 0x400C5BF8A0000000
  %1859 = fmul fast float %1855, %1808
  %1860 = fmul fast float %1859, %1858
  %1861 = fadd fast float %1860, %1777
  %1862 = fmul fast float %1855, %1809
  %1863 = fmul fast float %1862, %1858
  %1864 = fadd fast float %1863, %1776
  %1865 = fmul fast float %1855, %1810
  %1866 = fmul fast float %1865, %1858
  %1867 = fadd fast float %1866, %1775
  br label %1868

; <label>:1868                                    ; preds = %1833, %1774, %1699
  %1869 = phi float [ %1867, %1833 ], [ %1775, %1774 ], [ %1711, %1699 ]
  %1870 = phi float [ %1864, %1833 ], [ %1776, %1774 ], [ %1710, %1699 ]
  %1871 = phi float [ %1861, %1833 ], [ %1777, %1774 ], [ %1709, %1699 ]
  %1872 = fcmp fast ogt float %198, %1393
  %1873 = and i1 %1715, %1872
  %1874 = and i1 %1717, %1873
  %1875 = and i1 %1719, %1874
  %1876 = and i1 %1721, %1875
  br i1 %1876, label %1877, label %1934, !dx.controlflow.hints !79

; <label>:1877                                    ; preds = %1868
  %1878 = fmul fast float %1395, 0x3FC24924A0000000
  %1879 = fsub fast float %198, %1393
  %1880 = fdiv fast float %1879, %1878
  %1881 = call float @dx.op.unary.f32(i32 7, float %1880)  ; Saturate(value)
  %1882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %1883 = extractvalue %dx.types.CBufRet.f32 %1882, 0
  %1884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %1885 = extractvalue %dx.types.CBufRet.f32 %1884, 0
  %1886 = extractvalue %dx.types.CBufRet.f32 %1884, 1
  %1887 = extractvalue %dx.types.CBufRet.f32 %1884, 2
  %1888 = fsub fast float %1883, %1871
  %1889 = fsub fast float %1885, %1706
  %1890 = fsub fast float %1886, %1707
  %1891 = fsub fast float %1887, %1708
  %1892 = fmul fast float %1888, %1881
  %1893 = fmul fast float %1889, %1881
  %1894 = fmul fast float %1890, %1881
  %1895 = fmul fast float %1891, %1881
  %1896 = fadd fast float %1892, %1871
  %1897 = fadd fast float %1893, %1706
  %1898 = fadd fast float %1894, %1707
  %1899 = fadd fast float %1895, %1708
  %1900 = extractvalue %dx.types.CBufRet.f32 %1882, 1
  %1901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %1902 = extractvalue %dx.types.CBufRet.f32 %1901, 0
  %1903 = extractvalue %dx.types.CBufRet.f32 %1901, 1
  %1904 = extractvalue %dx.types.CBufRet.f32 %1901, 2
  %1905 = fsub fast float %1900, %1870
  %1906 = fsub fast float %1902, %1703
  %1907 = fsub fast float %1903, %1704
  %1908 = fsub fast float %1904, %1705
  %1909 = fmul fast float %1905, %1881
  %1910 = fmul fast float %1906, %1881
  %1911 = fmul fast float %1907, %1881
  %1912 = fmul fast float %1908, %1881
  %1913 = fadd fast float %1909, %1870
  %1914 = fadd fast float %1910, %1703
  %1915 = fadd fast float %1911, %1704
  %1916 = fadd fast float %1912, %1705
  %1917 = extractvalue %dx.types.CBufRet.f32 %1882, 2
  %1918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %1919 = extractvalue %dx.types.CBufRet.f32 %1918, 0
  %1920 = extractvalue %dx.types.CBufRet.f32 %1918, 1
  %1921 = extractvalue %dx.types.CBufRet.f32 %1918, 2
  %1922 = fsub fast float %1917, %1869
  %1923 = fsub fast float %1919, %1700
  %1924 = fsub fast float %1920, %1701
  %1925 = fsub fast float %1921, %1702
  %1926 = fmul fast float %1922, %1881
  %1927 = fmul fast float %1923, %1881
  %1928 = fmul fast float %1924, %1881
  %1929 = fmul fast float %1925, %1881
  %1930 = fadd fast float %1926, %1869
  %1931 = fadd fast float %1927, %1700
  %1932 = fadd fast float %1928, %1701
  %1933 = fadd fast float %1929, %1702
  br label %1934

; <label>:1934                                    ; preds = %1877, %1868
  %1935 = phi float [ %1930, %1877 ], [ %1869, %1868 ]
  %1936 = phi float [ %1931, %1877 ], [ %1700, %1868 ]
  %1937 = phi float [ %1932, %1877 ], [ %1701, %1868 ]
  %1938 = phi float [ %1933, %1877 ], [ %1702, %1868 ]
  %1939 = phi float [ %1913, %1877 ], [ %1870, %1868 ]
  %1940 = phi float [ %1914, %1877 ], [ %1703, %1868 ]
  %1941 = phi float [ %1915, %1877 ], [ %1704, %1868 ]
  %1942 = phi float [ %1916, %1877 ], [ %1705, %1868 ]
  %1943 = phi float [ %1896, %1877 ], [ %1871, %1868 ]
  %1944 = phi float [ %1897, %1877 ], [ %1706, %1868 ]
  %1945 = phi float [ %1898, %1877 ], [ %1707, %1868 ]
  %1946 = phi float [ %1899, %1877 ], [ %1708, %1868 ]
  %1947 = extractvalue %dx.types.CBufRet.f32 %1518, 3
  %1948 = fmul fast float %1947, %1943
  %1949 = fmul fast float %1947, %1939
  %1950 = fmul fast float %1947, %1935
  %1951 = fmul fast float %1944, 1.500000e+00
  %1952 = fmul fast float %1951, %1947
  %1953 = fmul fast float %1945, 1.500000e+00
  %1954 = fmul fast float %1953, %1947
  %1955 = fmul fast float %1946, 1.500000e+00
  %1956 = fmul fast float %1955, %1947
  %1957 = fmul fast float %1940, 1.500000e+00
  %1958 = fmul fast float %1957, %1947
  %1959 = fmul fast float %1941, 1.500000e+00
  %1960 = fmul fast float %1959, %1947
  %1961 = fmul fast float %1942, 1.500000e+00
  %1962 = fmul fast float %1961, %1947
  %1963 = fmul fast float %1936, 1.500000e+00
  %1964 = fmul fast float %1963, %1947
  %1965 = fmul fast float %1937, 1.500000e+00
  %1966 = fmul fast float %1965, %1947
  %1967 = fmul fast float %1938, 1.500000e+00
  %1968 = fmul fast float %1967, %1947
  %1969 = fsub fast float %1349, %1948
  %1970 = fmul fast float %1969, %238
  %1971 = fadd fast float %1970, %1948
  %1972 = fsub fast float %1348, %1952
  %1973 = fmul fast float %1972, %238
  %1974 = fadd fast float %1973, %1952
  %1975 = fsub fast float %1347, %1954
  %1976 = fmul fast float %1975, %238
  %1977 = fadd fast float %1976, %1954
  %1978 = fsub fast float %1346, %1956
  %1979 = fmul fast float %1978, %238
  %1980 = fadd fast float %1979, %1956
  %1981 = fmul fast float %1345, %238
  %1982 = fmul fast float %1344, %238
  %1983 = fmul fast float %1343, %238
  %1984 = fmul fast float %1342, %238
  %1985 = fmul fast float %1341, %238
  %1986 = fsub fast float %1340, %1949
  %1987 = fmul fast float %1986, %238
  %1988 = fadd fast float %1987, %1949
  %1989 = fsub fast float %1339, %1958
  %1990 = fmul fast float %1989, %238
  %1991 = fadd fast float %1990, %1958
  %1992 = fsub fast float %1338, %1960
  %1993 = fmul fast float %1992, %238
  %1994 = fadd fast float %1993, %1960
  %1995 = fsub fast float %1337, %1962
  %1996 = fmul fast float %1995, %238
  %1997 = fadd fast float %1996, %1962
  %1998 = fmul fast float %1336, %238
  %1999 = fmul fast float %1335, %238
  %2000 = fmul fast float %1334, %238
  %2001 = fmul fast float %1333, %238
  %2002 = fmul fast float %1332, %238
  %2003 = fsub fast float %1358, %1950
  %2004 = fmul fast float %2003, %238
  %2005 = fadd fast float %2004, %1950
  %2006 = fsub fast float %1357, %1964
  %2007 = fmul fast float %2006, %238
  %2008 = fadd fast float %2007, %1964
  %2009 = fsub fast float %1356, %1966
  %2010 = fmul fast float %2009, %238
  %2011 = fadd fast float %2010, %1966
  %2012 = fsub fast float %1355, %1968
  %2013 = fmul fast float %2012, %238
  %2014 = fadd fast float %2013, %1968
  %2015 = fmul fast float %1354, %238
  %2016 = fmul fast float %1353, %238
  %2017 = fmul fast float %1352, %238
  %2018 = fmul fast float %1351, %238
  %2019 = fmul fast float %1350, %238
  br label %2020

; <label>:2020                                    ; preds = %1934, %1331
  %2021 = phi float [ %1332, %1331 ], [ %2002, %1934 ]
  %2022 = phi float [ %1333, %1331 ], [ %2001, %1934 ]
  %2023 = phi float [ %1334, %1331 ], [ %2000, %1934 ]
  %2024 = phi float [ %1335, %1331 ], [ %1999, %1934 ]
  %2025 = phi float [ %1336, %1331 ], [ %1998, %1934 ]
  %2026 = phi float [ %1337, %1331 ], [ %1997, %1934 ]
  %2027 = phi float [ %1338, %1331 ], [ %1994, %1934 ]
  %2028 = phi float [ %1339, %1331 ], [ %1991, %1934 ]
  %2029 = phi float [ %1340, %1331 ], [ %1988, %1934 ]
  %2030 = phi float [ %1341, %1331 ], [ %1985, %1934 ]
  %2031 = phi float [ %1342, %1331 ], [ %1984, %1934 ]
  %2032 = phi float [ %1343, %1331 ], [ %1983, %1934 ]
  %2033 = phi float [ %1344, %1331 ], [ %1982, %1934 ]
  %2034 = phi float [ %1345, %1331 ], [ %1981, %1934 ]
  %2035 = phi float [ %1346, %1331 ], [ %1980, %1934 ]
  %2036 = phi float [ %1347, %1331 ], [ %1977, %1934 ]
  %2037 = phi float [ %1348, %1331 ], [ %1974, %1934 ]
  %2038 = phi float [ %1349, %1331 ], [ %1971, %1934 ]
  %2039 = phi float [ %1350, %1331 ], [ %2019, %1934 ]
  %2040 = phi float [ %1351, %1331 ], [ %2018, %1934 ]
  %2041 = phi float [ %1352, %1331 ], [ %2017, %1934 ]
  %2042 = phi float [ %1353, %1331 ], [ %2016, %1934 ]
  %2043 = phi float [ %1354, %1331 ], [ %2015, %1934 ]
  %2044 = phi float [ %1355, %1331 ], [ %2014, %1934 ]
  %2045 = phi float [ %1356, %1331 ], [ %2011, %1934 ]
  %2046 = phi float [ %1357, %1331 ], [ %2008, %1934 ]
  %2047 = phi float [ %1358, %1331 ], [ %2005, %1934 ]
  %2048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2049 = extractvalue %dx.types.CBufRet.f32 %2048, 0
  %2050 = extractvalue %dx.types.CBufRet.f32 %2048, 1
  %2051 = extractvalue %dx.types.CBufRet.f32 %2048, 2
  %2052 = fsub fast float %188, %2049
  %2053 = fsub fast float %193, %2050
  %2054 = fsub fast float %198, %2051
  %2055 = call float @dx.op.dot3.f32(i32 55, float %2052, float %2053, float %2054, float %2052, float %2053, float %2054)  ; Dot3(ax,ay,az,bx,by,bz)
  %2056 = call float @dx.op.unary.f32(i32 25, float %2055)  ; Rsqrt(value)
  %2057 = fmul fast float %2052, %2056
  %2058 = fmul fast float %2053, %2056
  %2059 = fmul fast float %2054, %2056
  %2060 = fsub fast float -0.000000e+00, %2057
  %2061 = fsub fast float -0.000000e+00, %2058
  %2062 = fmul fast float %2038, 0x3FD20DD760000000
  %2063 = fmul fast float %2029, 0x3FD20DD760000000
  %2064 = fmul fast float %2047, 0x3FD20DD760000000
  br i1 %98, label %2145, label %2065, !dx.controlflow.hints !80

; <label>:2065                                    ; preds = %2020
  %2066 = fmul fast float %2036, 0xBFD4D8D7C0000000
  %2067 = fmul fast float %2066, %2059
  %2068 = fmul fast float %2059, %2059
  %2069 = fmul fast float %2068, 0x3FEE471020000000
  %2070 = fadd fast float %2069, 0xBFD42F6020000000
  %2071 = fmul fast float %2070, %2032
  %2072 = fmul fast float %2035, 0x3FD4D8D7C0000000
  %2073 = fmul fast float %2037, 0x3FD4D8D7C0000000
  %2074 = fmul fast float %2073, %2058
  %2075 = fmul fast float %2059, 0x3FF17B1420000000
  %2076 = fmul fast float %2031, %2060
  %2077 = fmul fast float %2033, %2061
  %2078 = fmul fast float %2057, %2057
  %2079 = fmul fast float %2058, %2058
  %2080 = fsub fast float %2078, %2079
  %2081 = fmul fast float %2030, 0x3FC17B1420000000
  %2082 = fmul fast float %2081, %2080
  %2083 = fmul fast float %2034, 0x3FD17B1420000000
  %2084 = fmul fast float %2083, %2056
  %2085 = fmul fast float %2084, %2053
  %2086 = fadd fast float %2076, %2077
  %2087 = fmul fast float %2075, %2086
  %2088 = fadd fast float %2087, %2071
  %2089 = fmul fast float %2088, 2.500000e-01
  %2090 = fadd fast float %2085, %2072
  %2091 = fmul fast float %2090, %2057
  %2092 = fadd fast float %2067, %2062
  %2093 = fadd fast float %2092, %2074
  %2094 = fadd fast float %2093, %2082
  %2095 = fadd fast float %2094, %2089
  %2096 = fadd fast float %2095, %2091
  %2097 = fmul fast float %2027, 0xBFD4D8D7C0000000
  %2098 = fmul fast float %2097, %2059
  %2099 = fmul fast float %2070, %2023
  %2100 = fmul fast float %2026, 0x3FD4D8D7C0000000
  %2101 = fmul fast float %2028, 0x3FD4D8D7C0000000
  %2102 = fmul fast float %2101, %2058
  %2103 = fmul fast float %2022, %2060
  %2104 = fmul fast float %2024, %2061
  %2105 = fmul fast float %2021, 0x3FC17B1420000000
  %2106 = fmul fast float %2105, %2080
  %2107 = fmul fast float %2025, 0x3FD17B1420000000
  %2108 = fmul fast float %2107, %2056
  %2109 = fmul fast float %2108, %2053
  %2110 = fadd fast float %2103, %2104
  %2111 = fmul fast float %2075, %2110
  %2112 = fadd fast float %2111, %2099
  %2113 = fmul fast float %2112, 2.500000e-01
  %2114 = fadd fast float %2109, %2100
  %2115 = fmul fast float %2114, %2057
  %2116 = fadd fast float %2098, %2063
  %2117 = fadd fast float %2116, %2102
  %2118 = fadd fast float %2117, %2106
  %2119 = fadd fast float %2118, %2113
  %2120 = fadd fast float %2119, %2115
  %2121 = fmul fast float %2045, 0xBFD4D8D7C0000000
  %2122 = fmul fast float %2121, %2059
  %2123 = fmul fast float %2070, %2041
  %2124 = fmul fast float %2044, 0x3FD4D8D7C0000000
  %2125 = fmul fast float %2046, 0x3FD4D8D7C0000000
  %2126 = fmul fast float %2125, %2058
  %2127 = fmul fast float %2040, %2060
  %2128 = fmul fast float %2042, %2061
  %2129 = fmul fast float %2039, 0x3FC17B1420000000
  %2130 = fmul fast float %2129, %2080
  %2131 = fmul fast float %2043, 0x3FD17B1420000000
  %2132 = fmul fast float %2131, %2056
  %2133 = fmul fast float %2132, %2053
  %2134 = fadd fast float %2127, %2128
  %2135 = fmul fast float %2075, %2134
  %2136 = fadd fast float %2135, %2123
  %2137 = fmul fast float %2136, 2.500000e-01
  %2138 = fadd fast float %2133, %2124
  %2139 = fmul fast float %2138, %2057
  %2140 = fadd fast float %2122, %2064
  %2141 = fadd fast float %2140, %2126
  %2142 = fadd fast float %2141, %2130
  %2143 = fadd fast float %2142, %2137
  %2144 = fadd fast float %2143, %2139
  br label %2239

; <label>:2145                                    ; preds = %2020
  %2146 = fmul fast float %140, %140
  %2147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %2148 = extractvalue %dx.types.CBufRet.f32 %2147, 0
  %2149 = extractvalue %dx.types.CBufRet.f32 %2147, 1
  %2150 = extractvalue %dx.types.CBufRet.f32 %2147, 2
  %2151 = fmul fast float %2036, %140
  %2152 = fmul fast float %2151, %2150
  %2153 = fmul fast float %2150, %2150
  %2154 = fmul fast float %2153, 0x3FEE471020000000
  %2155 = fadd fast float %2154, 0xBFD42F6020000000
  %2156 = fmul fast float %2155, %2032
  %2157 = fmul fast float %2148, %2035
  %2158 = fmul fast float %2149, %2037
  %2159 = fmul fast float %2150, 0x3FF17B1420000000
  %2160 = fmul fast float %2031, %2146
  %2161 = fmul fast float %2160, %2148
  %2162 = fmul fast float %2161, %2159
  %2163 = fmul fast float %2033, %2146
  %2164 = fmul fast float %2163, %2149
  %2165 = fmul fast float %2164, %2159
  %2166 = fmul fast float %2148, %2148
  %2167 = fmul fast float %2149, %2149
  %2168 = fsub fast float %2166, %2167
  %2169 = fmul fast float %2030, 0x3FE17B1420000000
  %2170 = fmul fast float %2169, %2168
  %2171 = fmul fast float %2034, 0x3FF17B1420000000
  %2172 = fmul fast float %2171, %2149
  %2173 = fmul fast float %2172, %2148
  %2174 = fadd fast float %2170, %2173
  %2175 = fadd fast float %2174, %2156
  %2176 = fmul fast float %2175, %2146
  %2177 = fadd fast float %2158, %2157
  %2178 = fmul fast float %2177, %140
  %2179 = fsub fast float %2178, %2152
  %2180 = fmul fast float %2179, 0x3FDF454380000000
  %2181 = fsub fast float %2062, %2162
  %2182 = fsub fast float %2181, %2165
  %2183 = fadd fast float %2182, %2176
  %2184 = fadd fast float %2183, %2180
  %2185 = fmul fast float %2027, %140
  %2186 = fmul fast float %2185, %2150
  %2187 = fmul fast float %2155, %2023
  %2188 = fmul fast float %2148, %2026
  %2189 = fmul fast float %2149, %2028
  %2190 = fmul fast float %2022, %2146
  %2191 = fmul fast float %2190, %2148
  %2192 = fmul fast float %2191, %2159
  %2193 = fmul fast float %2024, %2146
  %2194 = fmul fast float %2193, %2149
  %2195 = fmul fast float %2194, %2159
  %2196 = fmul fast float %2021, 0x3FE17B1420000000
  %2197 = fmul fast float %2196, %2168
  %2198 = fmul fast float %2025, 0x3FF17B1420000000
  %2199 = fmul fast float %2198, %2149
  %2200 = fmul fast float %2199, %2148
  %2201 = fadd fast float %2197, %2200
  %2202 = fadd fast float %2201, %2187
  %2203 = fmul fast float %2202, %2146
  %2204 = fadd fast float %2189, %2188
  %2205 = fmul fast float %2204, %140
  %2206 = fsub fast float %2205, %2186
  %2207 = fmul fast float %2206, 0x3FDF454380000000
  %2208 = fsub fast float %2063, %2192
  %2209 = fsub fast float %2208, %2195
  %2210 = fadd fast float %2209, %2203
  %2211 = fadd fast float %2210, %2207
  %2212 = fmul fast float %2045, %140
  %2213 = fmul fast float %2212, %2150
  %2214 = fmul fast float %2155, %2041
  %2215 = fmul fast float %2148, %2044
  %2216 = fmul fast float %2149, %2046
  %2217 = fmul fast float %2040, %2146
  %2218 = fmul fast float %2217, %2148
  %2219 = fmul fast float %2218, %2159
  %2220 = fmul fast float %2042, %2146
  %2221 = fmul fast float %2220, %2149
  %2222 = fmul fast float %2221, %2159
  %2223 = fmul fast float %2039, 0x3FE17B1420000000
  %2224 = fmul fast float %2223, %2168
  %2225 = fmul fast float %2043, 0x3FF17B1420000000
  %2226 = fmul fast float %2225, %2149
  %2227 = fmul fast float %2226, %2148
  %2228 = fadd fast float %2224, %2227
  %2229 = fadd fast float %2228, %2214
  %2230 = fmul fast float %2229, %2146
  %2231 = fadd fast float %2216, %2215
  %2232 = fmul fast float %2231, %140
  %2233 = fsub fast float %2232, %2213
  %2234 = fmul fast float %2233, 0x3FDF454380000000
  %2235 = fsub fast float %2064, %2219
  %2236 = fsub fast float %2235, %2222
  %2237 = fadd fast float %2236, %2230
  %2238 = fadd fast float %2237, %2234
  br label %2239

; <label>:2239                                    ; preds = %2145, %2065
  %2240 = phi float [ %2096, %2065 ], [ %2184, %2145 ]
  %2241 = phi float [ %2120, %2065 ], [ %2211, %2145 ]
  %2242 = phi float [ %2144, %2065 ], [ %2238, %2145 ]
  %2243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2244 = extractvalue %dx.types.CBufRet.f32 %2243, 3
  %2245 = fmul fast float %2244, %2240
  %2246 = fmul fast float %2244, %2241
  %2247 = fmul fast float %2244, %2242
  %2248 = extractvalue %dx.types.CBufRet.f32 %2243, 0
  %2249 = fmul fast float %2245, %2248
  %2250 = fmul fast float %2246, %2248
  %2251 = fmul fast float %2247, %2248
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %167, i32 %168, i32 undef, float %2249, float %2250, float %2251, float %2249, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2252

; <label>:2252                                    ; preds = %2239, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

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
!dx.entryPoints = !{!36}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !28, !30, !34}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !17, !18, !19, !20, !21, !23, !24, !25, !27}
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
!28 = !{!29}
!29 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !16}
!30 = !{!31, !32, !33}
!31 = !{i32 0, %GfxLGBoundConsts* undef, !"", i32 0, i32 4, i32 1, i32 16, null}
!32 = !{i32 1, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!33 = !{i32 2, %DeferredEffectLightConsts_decl* undef, !"", i32 0, i32 1, i32 1, i32 240, null}
!34 = !{!35}
!35 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!36 = !{void ()* @cs_del_sh_sample_lightgrid_1_lowres, !"cs_del_sh_sample_lightgrid_1_lowres", null, !4, !37}
!37 = !{i32 0, i64 272, i32 4, !38}
!38 = !{i32 64, i32 1, i32 1}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 1}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !52}
!52 = !{!"llvm.loop.unroll.disable"}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = !{!57, !57, i64 0}
!57 = !{!"int", !58, i64 0}
!58 = !{!"omnipotent char", !59, i64 0}
!59 = !{!"Simple C/C++ TBAA"}
!60 = !{!61, !63, !64, !65, !66, !67}
!61 = distinct !{!61, !62, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %probeR"}
!62 = distinct !{!62, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z"}
!63 = distinct !{!63, !62, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %probeG"}
!64 = distinct !{!64, !62, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %probeB"}
!65 = distinct !{!65, !62, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %probeA"}
!66 = distinct !{!66, !62, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %primaryVisibility"}
!67 = distinct !{!67, !62, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %usedTet"}
!68 = !{!69, !69, i64 0}
!69 = !{!"float", !58, i64 0}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 2}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 2}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 1}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 2}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 2}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 1}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 2}

