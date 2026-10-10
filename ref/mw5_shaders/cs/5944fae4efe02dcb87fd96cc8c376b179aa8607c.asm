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
; shader hash: 780c54e8d19ecd527c85510668a14296
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

define void @cs_del_sh_sample_lightgrid_2_lowres() {
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
  %26 = alloca [4 x i32], align 4
  %27 = alloca [4 x float], align 4
  %28 = alloca [4 x i32], align 4
  %29 = alloca [4 x float], align 4
  %30 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %31 = extractvalue %dx.types.CBufRet.i32 %30, 2
  %32 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %31, i32 0)  ; BufferLoad(srv,index,wot)
  %33 = extractvalue %dx.types.ResRet.i32 %32, 0
  %34 = icmp ult i32 %25, %33
  br i1 %34, label %35, label %2257, !dx.controlflow.hints !39

; <label>:35                                      ; preds = %0
  %36 = add i32 %31, 3
  %37 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 %36)  ; CBufferLoadLegacy(handle,regIndex)
  %38 = extractvalue %dx.types.CBufRet.i32 %37, 2
  %39 = call i32 @dx.op.threadId.i32(i32 93, i32 2)  ; ThreadId(component)
  %40 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %41 = shl i32 %40, 1
  %42 = shl i32 %39, 1
  %43 = add i32 %38, %25
  %44 = shl i32 %43, 5
  %45 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %44, i32 undef)  ; BufferLoad(srv,index,wot)
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
  br i1 %57, label %97, label %58, !dx.controlflow.hints !40

; <label>:58                                      ; preds = %35
  %59 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %60 = extractvalue %dx.types.CBufRet.f32 %59, 2
  %61 = extractvalue %dx.types.CBufRet.f32 %59, 3
  %62 = fmul fast float %60, %53
  %63 = fmul fast float %61, %54
  %64 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %65 = extractvalue %dx.types.CBufRet.f32 %64, 0
  %66 = extractvalue %dx.types.CBufRet.f32 %64, 1
  %67 = fadd fast float %62, %65
  %68 = fadd fast float %63, %66
  %69 = call float @dx.op.unary.f32(i32 7, float %67)  ; Saturate(value)
  %70 = call float @dx.op.unary.f32(i32 7, float %68)  ; Saturate(value)
  %71 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %21, float %69, float %70, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %72 = extractvalue %dx.types.ResRet.f32 %71, 0
  %73 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
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
  %86 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
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
  %102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %101, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
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
  %202 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %203 = extractvalue %dx.types.CBufRet.i32 %202, 0
  %204 = icmp eq i32 %203, 1
  br i1 %204, label %205, label %240, !dx.controlflow.hints !41

; <label>:205                                     ; preds = %97
  %206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %207 = extractvalue %dx.types.CBufRet.f32 %206, 0
  %208 = extractvalue %dx.types.CBufRet.f32 %206, 1
  %209 = fsub fast float %191, %207
  %210 = fsub fast float %196, %208
  %211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %212 = extractvalue %dx.types.CBufRet.f32 %211, 0
  %213 = extractvalue %dx.types.CBufRet.f32 %211, 1
  %214 = fmul fast float %209, %212
  %215 = fmul fast float %210, %213
  %216 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %21, float %214, float %215, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %217 = extractvalue %dx.types.ResRet.f32 %216, 0
  %218 = fcmp fast ogt float %217, 0.000000e+00
  %219 = extractvalue %dx.types.CBufRet.i32 %202, 3
  %220 = icmp ne i32 %219, 0
  %221 = and i1 %218, %220
  br i1 %221, label %222, label %240, !dx.controlflow.hints !42

; <label>:222                                     ; preds = %205
  %223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
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
  br i1 %233, label %240, label %234, !dx.controlflow.hints !43

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
  br i1 %242, label %243, label %1334, !dx.controlflow.hints !44

; <label>:243                                     ; preds = %240
  %244 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %245 = extractvalue %dx.types.CBufRet.i32 %244, 2
  %246 = extractvalue %dx.types.CBufRet.i32 %244, 1
  %247 = extractvalue %dx.types.CBufRet.i32 %244, 0
  %248 = getelementptr inbounds [4 x float], [4 x float]* %27, i32 0, i32 0
  store float 0.000000e+00, float* %248, align 4
  %249 = getelementptr inbounds [4 x float], [4 x float]* %27, i32 0, i32 1
  store float 0.000000e+00, float* %249, align 4
  %250 = getelementptr inbounds [4 x float], [4 x float]* %27, i32 0, i32 2
  store float 0.000000e+00, float* %250, align 4
  %251 = getelementptr inbounds [4 x float], [4 x float]* %27, i32 0, i32 3
  store float 0.000000e+00, float* %251, align 4
  %252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %253 = extractvalue %dx.types.ResRet.i32 %252, 0
  %254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %255 = extractvalue %dx.types.ResRet.i32 %254, 0
  %256 = extractvalue %dx.types.ResRet.i32 %254, 1
  %257 = extractvalue %dx.types.ResRet.i32 %254, 2
  %258 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %259 = extractvalue %dx.types.ResRet.f32 %258, 0
  %260 = extractvalue %dx.types.ResRet.f32 %258, 1
  %261 = extractvalue %dx.types.ResRet.f32 %258, 2
  %262 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %263 = extractvalue %dx.types.ResRet.f32 %262, 0
  %264 = extractvalue %dx.types.ResRet.f32 %262, 1
  %265 = extractvalue %dx.types.ResRet.f32 %262, 2
  %266 = fsub fast float %191, %259
  %267 = fsub fast float %196, %260
  %268 = fsub fast float %201, %261
  %269 = fptoui float %266 to i32
  %270 = fptoui float %267 to i32
  %271 = fptoui float %268 to i32
  %272 = fcmp fast olt float %191, %259
  %273 = fcmp fast olt float %196, %260
  %274 = fcmp fast olt float %201, %261
  %275 = or i1 %272, %273
  %276 = or i1 %274, %275
  %277 = fcmp fast oge float %191, %263
  %278 = fcmp fast oge float %196, %264
  %279 = fcmp fast oge float %201, %265
  %280 = or i1 %277, %278
  %281 = or i1 %279, %280
  %282 = or i1 %276, %281
  %283 = and i32 %255, 31
  %284 = lshr i32 %269, %283
  %285 = lshr i32 %270, %283
  %286 = lshr i32 %271, %283
  %287 = mul i32 %285, %253
  %288 = add i32 %287, %284
  %289 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %290 = extractvalue %dx.types.CBufRet.i32 %289, 0
  %291 = icmp ult i32 %288, %290
  br i1 %291, label %292, label %308, !dx.controlflow.hints !45

; <label>:292                                     ; preds = %243
  %293 = mul i32 %288, 12
  %294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %293, i32 undef)  ; BufferLoad(srv,index,wot)
  %295 = extractvalue %dx.types.ResRet.i32 %294, 0
  %296 = add i32 %293, 4
  %297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %296, i32 undef)  ; BufferLoad(srv,index,wot)
  %298 = extractvalue %dx.types.ResRet.i32 %297, 0
  %299 = add i32 %293, 8
  %300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %301 = extractvalue %dx.types.ResRet.i32 %300, 0
  %302 = icmp ult i32 %286, %298
  %303 = icmp ugt i32 %286, %301
  %304 = or i1 %302, %303
  %305 = add i32 %295, %286
  %306 = sub i32 %305, %298
  %307 = select i1 %304, i32 -2147483648, i32 %306
  br label %308

; <label>:308                                     ; preds = %292, %243
  %309 = phi i32 [ %307, %292 ], [ -2147483648, %243 ]
  %310 = select i1 %282, i32 -2147483648, i32 %309
  %311 = icmp sgt i32 %310, -1
  %312 = and i32 %256, 31
  %313 = lshr i32 %269, %312
  %314 = lshr i32 %270, %312
  %315 = lshr i32 %271, %312
  %316 = and i32 %313, 3
  %317 = and i32 %315, 3
  %318 = shl nuw nsw i32 %317, 4
  %319 = shl i32 %314, 2
  %320 = and i32 %319, 12
  %321 = and i32 %318, 16
  %322 = or i32 %320, %316
  %323 = or i32 %322, %321
  %324 = shl i32 1, %323
  %325 = extractvalue %dx.types.CBufRet.i32 %289, 1
  %326 = icmp ult i32 %310, %325
  br i1 %326, label %327, label %345, !dx.controlflow.hints !46

; <label>:327                                     ; preds = %308
  %328 = lshr i32 %317, 1
  %329 = shl i32 %310, 4
  %330 = shl nuw nsw i32 %328, 2
  %331 = or i32 %329, %330
  %332 = or i32 %331, 8
  %333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %332, i32 undef)  ; BufferLoad(srv,index,wot)
  %334 = extractvalue %dx.types.ResRet.i32 %333, 0
  %335 = and i32 %334, %324
  %336 = icmp eq i32 %335, 0
  %337 = add i32 %324, -1
  %338 = and i32 %334, %337
  %339 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %338)  ; Countbits(value)
  %340 = or i32 %329, %330
  %341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %342 = extractvalue %dx.types.ResRet.i32 %341, 0
  %343 = add i32 %342, %339
  %344 = select i1 %336, i32 -2147483648, i32 %343
  br label %345

; <label>:345                                     ; preds = %327, %308
  %346 = phi i32 [ %344, %327 ], [ -2147483648, %308 ]
  %347 = select i1 %311, i32 %346, i32 %310
  %348 = icmp sgt i32 %347, -1
  %349 = and i32 %257, 31
  %350 = lshr i32 %269, %349
  %351 = lshr i32 %270, %349
  %352 = lshr i32 %271, %349
  %353 = and i32 %350, 3
  %354 = and i32 %352, 3
  %355 = shl nuw nsw i32 %354, 4
  %356 = shl i32 %351, 2
  %357 = and i32 %356, 12
  %358 = and i32 %355, 16
  %359 = or i32 %357, %353
  %360 = or i32 %359, %358
  %361 = shl i32 1, %360
  %362 = icmp ult i32 %347, %325
  br i1 %362, label %363, label %381, !dx.controlflow.hints !46

; <label>:363                                     ; preds = %345
  %364 = lshr i32 %354, 1
  %365 = shl i32 %347, 4
  %366 = shl nuw nsw i32 %364, 2
  %367 = or i32 %365, %366
  %368 = or i32 %367, 8
  %369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %370 = extractvalue %dx.types.ResRet.i32 %369, 0
  %371 = and i32 %370, %361
  %372 = icmp eq i32 %371, 0
  %373 = add i32 %361, -1
  %374 = and i32 %370, %373
  %375 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %374)  ; Countbits(value)
  %376 = or i32 %365, %366
  %377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %376, i32 undef)  ; BufferLoad(srv,index,wot)
  %378 = extractvalue %dx.types.ResRet.i32 %377, 0
  %379 = add i32 %378, %375
  %380 = select i1 %372, i32 -2147483648, i32 %379
  br label %381

; <label>:381                                     ; preds = %363, %345
  %382 = phi i32 [ %380, %363 ], [ -2147483648, %345 ]
  %383 = select i1 %348, i32 %382, i32 %347
  br i1 %282, label %398, label %384, !dx.controlflow.hints !47

; <label>:384                                     ; preds = %381
  %385 = icmp eq i32 %383, -2147483648
  %386 = icmp eq i32 %347, -2147483648
  %387 = select i1 %386, i32 %310, i32 %347
  %388 = select i1 %385, i32 %387, i32 %383
  %389 = icmp sgt i32 %388, -1
  %390 = icmp ne i32 %245, -1
  %391 = and i1 %390, %389
  %392 = select i1 %391, i32 %245, i32 0
  %393 = add i32 %388, %246
  %394 = add i32 %393, %392
  %395 = shl i32 %394, 2
  %396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %395, i32 undef)  ; BufferLoad(srv,index,wot)
  %397 = extractvalue %dx.types.ResRet.i32 %396, 0
  br label %398

; <label>:398                                     ; preds = %384, %381
  %399 = phi i32 [ %397, %384 ], [ -1, %381 ]
  %400 = icmp eq i32 %399, -1
  %401 = select i1 %400, i32 %247, i32 %399
  %402 = icmp eq i32 %401, -1
  br i1 %402, label %551, label %403

; <label>:403                                     ; preds = %398
  br label %404

; <label>:404                                     ; preds = %542, %403
  %405 = phi i32 [ %543, %542 ], [ 0, %403 ]
  %406 = phi i32 [ %407, %542 ], [ -1, %403 ]
  %407 = phi i32 [ %538, %542 ], [ %401, %403 ]
  %408 = phi float [ %514, %542 ], [ 0.000000e+00, %403 ]
  %409 = phi float [ %515, %542 ], [ 0.000000e+00, %403 ]
  %410 = phi float [ %516, %542 ], [ 0.000000e+00, %403 ]
  %411 = phi float [ %519, %542 ], [ 0.000000e+00, %403 ]
  %412 = icmp ugt i32 %405, 50
  br i1 %412, label %545, label %413, !dx.controlflow.hints !48

; <label>:413                                     ; preds = %404
  %414 = shl i32 %407, 4
  %415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %414, i32 undef)  ; BufferLoad(srv,index,wot)
  %416 = extractvalue %dx.types.ResRet.i32 %415, 0
  %417 = extractvalue %dx.types.ResRet.i32 %415, 1
  %418 = extractvalue %dx.types.ResRet.i32 %415, 2
  %419 = extractvalue %dx.types.ResRet.i32 %415, 3
  %420 = and i32 %416, 2147483647
  %421 = mul nsw i32 %420, 12
  %422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %421, i32 undef)  ; BufferLoad(srv,index,wot)
  %423 = extractvalue %dx.types.ResRet.i32 %422, 0
  %424 = extractvalue %dx.types.ResRet.i32 %422, 1
  %425 = extractvalue %dx.types.ResRet.i32 %422, 2
  %426 = and i32 %417, 2147483647
  %427 = mul nsw i32 %426, 12
  %428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %427, i32 undef)  ; BufferLoad(srv,index,wot)
  %429 = extractvalue %dx.types.ResRet.i32 %428, 0
  %430 = extractvalue %dx.types.ResRet.i32 %428, 1
  %431 = extractvalue %dx.types.ResRet.i32 %428, 2
  %432 = and i32 %418, 2147483647
  %433 = mul nsw i32 %432, 12
  %434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %433, i32 undef)  ; BufferLoad(srv,index,wot)
  %435 = extractvalue %dx.types.ResRet.i32 %434, 0
  %436 = extractvalue %dx.types.ResRet.i32 %434, 1
  %437 = extractvalue %dx.types.ResRet.i32 %434, 2
  %438 = and i32 %419, 2147483647
  %439 = mul nsw i32 %438, 12
  %440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %441 = extractvalue %dx.types.ResRet.i32 %440, 0
  %442 = extractvalue %dx.types.ResRet.i32 %440, 1
  %443 = extractvalue %dx.types.ResRet.i32 %440, 2
  %444 = bitcast i32 %423 to float
  %445 = bitcast i32 %424 to float
  %446 = bitcast i32 %425 to float
  %447 = bitcast i32 %441 to float
  %448 = bitcast i32 %442 to float
  %449 = bitcast i32 %443 to float
  %450 = fsub fast float %444, %447
  %451 = fsub fast float %445, %448
  %452 = fsub fast float %446, %449
  %453 = bitcast i32 %429 to float
  %454 = bitcast i32 %430 to float
  %455 = bitcast i32 %431 to float
  %456 = fsub fast float %453, %447
  %457 = fsub fast float %454, %448
  %458 = fsub fast float %455, %449
  %459 = bitcast i32 %435 to float
  %460 = bitcast i32 %436 to float
  %461 = bitcast i32 %437 to float
  %462 = fsub fast float %459, %447
  %463 = fsub fast float %460, %448
  %464 = fsub fast float %461, %449
  %465 = fsub fast float %191, %447
  %466 = fsub fast float %196, %448
  %467 = fsub fast float %201, %449
  %468 = fmul fast float %457, %464
  %469 = fmul fast float %463, %458
  %470 = fsub fast float %468, %469
  %471 = fmul fast float %470, %450
  %472 = fmul fast float %456, %464
  %473 = fmul fast float %458, %462
  %474 = fsub fast float %472, %473
  %475 = fmul fast float %474, %451
  %476 = fsub fast float %471, %475
  %477 = fmul fast float %456, %463
  %478 = fmul fast float %457, %462
  %479 = fsub fast float %477, %478
  %480 = fmul fast float %479, %452
  %481 = fadd fast float %476, %480
  %482 = fdiv fast float 1.000000e+00, %481
  %483 = fmul fast float %470, %482
  %484 = fmul fast float %482, %474
  %485 = fsub fast float -0.000000e+00, %484
  %486 = fmul fast float %479, %482
  %487 = fmul fast float %451, %464
  %488 = fmul fast float %452, %463
  %489 = fsub fast float %487, %488
  %490 = fmul fast float %482, %489
  %491 = fsub fast float -0.000000e+00, %490
  %492 = fmul fast float %450, %464
  %493 = fmul fast float %462, %452
  %494 = fsub fast float %492, %493
  %495 = fmul fast float %494, %482
  %496 = fmul fast float %450, %463
  %497 = fmul fast float %451, %462
  %498 = fsub fast float %496, %497
  %499 = fmul fast float %482, %498
  %500 = fsub fast float -0.000000e+00, %499
  %501 = fmul fast float %451, %458
  %502 = fmul fast float %452, %457
  %503 = fsub fast float %501, %502
  %504 = fmul fast float %503, %482
  %505 = fmul fast float %450, %458
  %506 = fmul fast float %452, %456
  %507 = fsub fast float %505, %506
  %508 = fmul fast float %482, %507
  %509 = fsub fast float -0.000000e+00, %508
  %510 = fmul fast float %450, %457
  %511 = fmul fast float %451, %456
  %512 = fsub fast float %510, %511
  %513 = fmul fast float %512, %482
  %514 = call float @dx.op.dot3.f32(i32 55, float %483, float %485, float %486, float %465, float %466, float %467)  ; Dot3(ax,ay,az,bx,by,bz)
  %515 = call float @dx.op.dot3.f32(i32 55, float %491, float %495, float %500, float %465, float %466, float %467)  ; Dot3(ax,ay,az,bx,by,bz)
  %516 = call float @dx.op.dot3.f32(i32 55, float %504, float %509, float %513, float %465, float %466, float %467)  ; Dot3(ax,ay,az,bx,by,bz)
  %517 = fsub fast float 1.000000e+00, %514
  %518 = fsub fast float %517, %515
  %519 = fsub fast float %518, %516
  %520 = call float @dx.op.binary.f32(i32 36, float %514, float %515)  ; FMin(a,b)
  %521 = call float @dx.op.binary.f32(i32 36, float %520, float %516)  ; FMin(a,b)
  %522 = call float @dx.op.binary.f32(i32 36, float %521, float %519)  ; FMin(a,b)
  %523 = call float @dx.op.binary.f32(i32 35, float %514, float %515)  ; FMax(a,b)
  %524 = call float @dx.op.binary.f32(i32 35, float %523, float %516)  ; FMax(a,b)
  %525 = call float @dx.op.binary.f32(i32 35, float %524, float %519)  ; FMax(a,b)
  %526 = fcmp fast oge float %522, 0xBF50624DE0000000
  %527 = fcmp fast olt float %525, 0x3FF00068E0000000
  %528 = and i1 %526, %527
  br i1 %528, label %545, label %529, !dx.controlflow.hints !49

; <label>:529                                     ; preds = %413
  %530 = fcmp fast oeq float %522, %514
  %531 = fcmp fast oeq float %522, %515
  %532 = fcmp fast oeq float %522, %516
  %533 = select i1 %532, i32 8, i32 12
  %534 = select i1 %531, i32 4, i32 %533
  %535 = select i1 %530, i32 0, i32 %534
  %536 = or i32 %535, %414
  %537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %536, i32 undef)  ; BufferLoad(srv,index,wot)
  %538 = extractvalue %dx.types.ResRet.i32 %537, 0
  %539 = icmp ne i32 %406, -1
  %540 = icmp eq i32 %538, %406
  %541 = and i1 %539, %540
  br i1 %541, label %545, label %542, !dx.controlflow.hints !50

; <label>:542                                     ; preds = %529
  %543 = add nuw nsw i32 %405, 1
  %544 = icmp eq i32 %538, -1
  br i1 %544, label %545, label %404, !llvm.loop !51

; <label>:545                                     ; preds = %542, %529, %413, %404
  %546 = phi i32 [ %407, %529 ], [ %407, %413 ], [ -1, %542 ], [ -1, %404 ]
  %547 = phi float [ %514, %529 ], [ %514, %413 ], [ %514, %542 ], [ %408, %404 ]
  %548 = phi float [ %515, %529 ], [ %515, %413 ], [ %515, %542 ], [ %409, %404 ]
  %549 = phi float [ %516, %529 ], [ %516, %413 ], [ %516, %542 ], [ %410, %404 ]
  %550 = phi float [ %519, %529 ], [ %519, %413 ], [ %519, %542 ], [ %411, %404 ]
  br label %551

; <label>:551                                     ; preds = %545, %398
  %552 = phi i32 [ -1, %398 ], [ %546, %545 ]
  %553 = phi float [ 0.000000e+00, %398 ], [ %547, %545 ]
  %554 = phi float [ 0.000000e+00, %398 ], [ %548, %545 ]
  %555 = phi float [ 0.000000e+00, %398 ], [ %549, %545 ]
  %556 = phi float [ 0.000000e+00, %398 ], [ %550, %545 ]
  %557 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %553)  ; FMax(a,b)
  %558 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %554)  ; FMax(a,b)
  %559 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %555)  ; FMax(a,b)
  %560 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %556)  ; FMax(a,b)
  %561 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %557)  ; FMin(a,b)
  %562 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %558)  ; FMin(a,b)
  %563 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %559)  ; FMin(a,b)
  %564 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %560)  ; FMin(a,b)
  store float %561, float* %248, align 4
  store float %562, float* %249, align 4
  store float %563, float* %250, align 4
  store float %564, float* %251, align 4
  %565 = icmp eq i32 %552, -1
  br i1 %565, label %566, label %639, !dx.controlflow.hints !53

; <label>:566                                     ; preds = %551
  %567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %568 = extractvalue %dx.types.ResRet.i32 %567, 0
  %569 = extractvalue %dx.types.ResRet.i32 %567, 1
  %570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %571 = extractvalue %dx.types.ResRet.i32 %570, 0
  %572 = extractvalue %dx.types.ResRet.i32 %570, 1
  %573 = extractvalue %dx.types.ResRet.i32 %570, 2
  %574 = extractvalue %dx.types.ResRet.i32 %570, 3
  %575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %576 = extractvalue %dx.types.ResRet.i32 %575, 0
  %577 = extractvalue %dx.types.ResRet.i32 %575, 1
  %578 = extractvalue %dx.types.ResRet.i32 %575, 2
  %579 = extractvalue %dx.types.ResRet.i32 %575, 3
  %580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %581 = extractvalue %dx.types.ResRet.i32 %580, 0
  %582 = extractvalue %dx.types.ResRet.i32 %580, 1
  %583 = extractvalue %dx.types.ResRet.i32 %580, 2
  %584 = extractvalue %dx.types.ResRet.i32 %580, 3
  %585 = and i32 %581, 65535
  %586 = call float @dx.op.legacyF16ToF32(i32 131, i32 %585)  ; LegacyF16ToF32(value)
  %587 = lshr i32 %581, 16
  %588 = call float @dx.op.legacyF16ToF32(i32 131, i32 %587)  ; LegacyF16ToF32(value)
  %589 = and i32 %582, 65535
  %590 = call float @dx.op.legacyF16ToF32(i32 131, i32 %589)  ; LegacyF16ToF32(value)
  %591 = lshr i32 %582, 16
  %592 = call float @dx.op.legacyF16ToF32(i32 131, i32 %591)  ; LegacyF16ToF32(value)
  %593 = and i32 %583, 65535
  %594 = call float @dx.op.legacyF16ToF32(i32 131, i32 %593)  ; LegacyF16ToF32(value)
  %595 = lshr i32 %583, 16
  %596 = call float @dx.op.legacyF16ToF32(i32 131, i32 %595)  ; LegacyF16ToF32(value)
  %597 = and i32 %584, 65535
  %598 = call float @dx.op.legacyF16ToF32(i32 131, i32 %597)  ; LegacyF16ToF32(value)
  %599 = lshr i32 %584, 16
  %600 = call float @dx.op.legacyF16ToF32(i32 131, i32 %599)  ; LegacyF16ToF32(value)
  %601 = and i32 %576, 65535
  %602 = call float @dx.op.legacyF16ToF32(i32 131, i32 %601)  ; LegacyF16ToF32(value)
  %603 = lshr i32 %576, 16
  %604 = call float @dx.op.legacyF16ToF32(i32 131, i32 %603)  ; LegacyF16ToF32(value)
  %605 = and i32 %577, 65535
  %606 = call float @dx.op.legacyF16ToF32(i32 131, i32 %605)  ; LegacyF16ToF32(value)
  %607 = lshr i32 %577, 16
  %608 = call float @dx.op.legacyF16ToF32(i32 131, i32 %607)  ; LegacyF16ToF32(value)
  %609 = and i32 %578, 65535
  %610 = call float @dx.op.legacyF16ToF32(i32 131, i32 %609)  ; LegacyF16ToF32(value)
  %611 = lshr i32 %578, 16
  %612 = call float @dx.op.legacyF16ToF32(i32 131, i32 %611)  ; LegacyF16ToF32(value)
  %613 = and i32 %579, 65535
  %614 = call float @dx.op.legacyF16ToF32(i32 131, i32 %613)  ; LegacyF16ToF32(value)
  %615 = lshr i32 %579, 16
  %616 = call float @dx.op.legacyF16ToF32(i32 131, i32 %615)  ; LegacyF16ToF32(value)
  %617 = and i32 %571, 65535
  %618 = call float @dx.op.legacyF16ToF32(i32 131, i32 %617)  ; LegacyF16ToF32(value)
  %619 = lshr i32 %571, 16
  %620 = call float @dx.op.legacyF16ToF32(i32 131, i32 %619)  ; LegacyF16ToF32(value)
  %621 = and i32 %572, 65535
  %622 = call float @dx.op.legacyF16ToF32(i32 131, i32 %621)  ; LegacyF16ToF32(value)
  %623 = lshr i32 %572, 16
  %624 = call float @dx.op.legacyF16ToF32(i32 131, i32 %623)  ; LegacyF16ToF32(value)
  %625 = and i32 %573, 65535
  %626 = call float @dx.op.legacyF16ToF32(i32 131, i32 %625)  ; LegacyF16ToF32(value)
  %627 = lshr i32 %573, 16
  %628 = call float @dx.op.legacyF16ToF32(i32 131, i32 %627)  ; LegacyF16ToF32(value)
  %629 = and i32 %574, 65535
  %630 = call float @dx.op.legacyF16ToF32(i32 131, i32 %629)  ; LegacyF16ToF32(value)
  %631 = lshr i32 %574, 16
  %632 = call float @dx.op.legacyF16ToF32(i32 131, i32 %631)  ; LegacyF16ToF32(value)
  %633 = and i32 %568, 65535
  %634 = call float @dx.op.legacyF16ToF32(i32 131, i32 %633)  ; LegacyF16ToF32(value)
  %635 = lshr i32 %568, 16
  %636 = call float @dx.op.legacyF16ToF32(i32 131, i32 %635)  ; LegacyF16ToF32(value)
  %637 = and i32 %569, 65535
  %638 = call float @dx.op.legacyF16ToF32(i32 131, i32 %637)  ; LegacyF16ToF32(value)
  br label %1334

; <label>:639                                     ; preds = %551
  %640 = shl nsw i32 %552, 4
  %641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %640, i32 undef)  ; BufferLoad(srv,index,wot)
  %642 = extractvalue %dx.types.ResRet.i32 %641, 0
  %643 = extractvalue %dx.types.ResRet.i32 %641, 1
  %644 = extractvalue %dx.types.ResRet.i32 %641, 2
  %645 = extractvalue %dx.types.ResRet.i32 %641, 3
  %646 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 0
  store i32 %642, i32* %646, align 4
  %647 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 1
  store i32 %643, i32* %647, align 4
  %648 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 2
  store i32 %644, i32* %648, align 4
  %649 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 3
  store i32 %645, i32* %649, align 4
  %650 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 0
  store float 0.000000e+00, float* %650, align 4
  %651 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 1
  store float 0.000000e+00, float* %651, align 4
  %652 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 2
  store float 0.000000e+00, float* %652, align 4
  %653 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 3
  store float 0.000000e+00, float* %653, align 4
  %654 = icmp slt i32 %642, 0
  br i1 %654, label %655, label %745, !dx.controlflow.hints !54

; <label>:655                                     ; preds = %639
  %656 = fsub fast float 1.000000e+00, %561
  %657 = fdiv fast float 1.000000e+00, %656
  %658 = shl nsw i32 %552, 6
  %659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %658, i32 undef)  ; BufferLoad(srv,index,wot)
  %660 = extractvalue %dx.types.ResRet.i32 %659, 0
  %661 = extractvalue %dx.types.ResRet.i32 %659, 1
  %662 = extractvalue %dx.types.ResRet.i32 %659, 2
  %663 = extractvalue %dx.types.ResRet.i32 %659, 3
  %664 = fmul fast float %657, %564
  %665 = fmul fast float %657, %562
  %666 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 0
  store i32 %660, i32* %666, align 4
  %667 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 1
  store i32 %661, i32* %667, align 4
  %668 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 2
  store i32 %662, i32* %668, align 4
  %669 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 3
  store i32 %663, i32* %669, align 4
  %670 = fmul fast float %665, 4.000000e+00
  %671 = call float @dx.op.unary.f32(i32 27, float %670)  ; Round_ni(value)
  %672 = fmul fast float %664, 4.000000e+00
  %673 = call float @dx.op.unary.f32(i32 27, float %672)  ; Round_ni(value)
  %674 = fsub fast float 1.100000e+01, %671
  %675 = fmul fast float %671, 5.000000e-01
  %676 = fmul fast float %675, %674
  %677 = fadd fast float %673, 5.000000e-01
  %678 = fadd fast float %677, %676
  %679 = fptosi float %678 to i32
  %680 = fptosi float %671 to i32
  %681 = sub nsw i32 5, %680
  %682 = fmul fast float %673, 2.500000e-01
  %683 = fmul fast float %671, 2.500000e-01
  %684 = add nsw i32 %679, 1
  %685 = add nsw i32 %679, %681
  %686 = fsub fast float %664, %682
  %687 = fmul fast float %686, 4.000000e+00
  %688 = fsub fast float %665, %683
  %689 = fmul fast float %688, 4.000000e+00
  %690 = fadd fast float %686, %688
  %691 = fmul fast float %690, 4.000000e+00
  %692 = fcmp fast ogt float %691, 1.000000e+00
  br i1 %692, label %693, label %699, !dx.controlflow.hints !55

; <label>:693                                     ; preds = %655
  %694 = add nsw i32 %685, 1
  %695 = fadd fast float %689, -1.000000e+00
  %696 = fsub fast float -0.000000e+00, %695
  %697 = fadd fast float %687, -1.000000e+00
  %698 = fsub fast float -0.000000e+00, %697
  br label %699

; <label>:699                                     ; preds = %693, %655
  %700 = phi i32 [ %694, %693 ], [ %679, %655 ]
  %701 = phi i32 [ %684, %693 ], [ %685, %655 ]
  %702 = phi i32 [ %685, %693 ], [ %684, %655 ]
  %703 = phi float [ %698, %693 ], [ %689, %655 ]
  %704 = phi float [ %696, %693 ], [ %687, %655 ]
  %705 = fsub fast float 1.000000e+00, %703
  %706 = fsub fast float %705, %704
  %707 = lshr i32 %702, 2
  %708 = getelementptr [4 x i32], [4 x i32]* %26, i32 0, i32 %707
  %709 = load i32, i32* %708, align 4, !tbaa !56, !noalias !60
  %710 = shl i32 %702, 3
  %711 = and i32 %710, 24
  %712 = lshr i32 %709, %711
  %713 = and i32 %712, 255
  %714 = sitofp i32 %713 to float
  %715 = fmul fast float %704, 0x3F70101020000000
  %716 = fmul fast float %715, %714
  %717 = lshr i32 %701, 2
  %718 = getelementptr [4 x i32], [4 x i32]* %26, i32 0, i32 %717
  %719 = load i32, i32* %718, align 4, !tbaa !56, !noalias !60
  %720 = shl i32 %701, 3
  %721 = and i32 %720, 24
  %722 = lshr i32 %719, %721
  %723 = and i32 %722, 255
  %724 = sitofp i32 %723 to float
  %725 = fmul fast float %703, 0x3F70101020000000
  %726 = fmul fast float %725, %724
  %727 = lshr i32 %700, 2
  %728 = getelementptr [4 x i32], [4 x i32]* %26, i32 0, i32 %727
  %729 = load i32, i32* %728, align 4, !tbaa !56, !noalias !60
  %730 = shl i32 %700, 3
  %731 = and i32 %730, 24
  %732 = lshr i32 %729, %731
  %733 = and i32 %732, 255
  %734 = sitofp i32 %733 to float
  %735 = fmul fast float %706, 0x3F70101020000000
  %736 = fmul fast float %735, %734
  %737 = fsub fast float 1.000000e+00, %716
  %738 = fsub fast float %737, %726
  %739 = fsub fast float %738, %736
  %740 = fmul fast float %561, 2.000000e+01
  %741 = fadd fast float %740, 1.000000e+00
  %742 = fmul fast float %739, 2.000000e+01
  %743 = fsub fast float %741, %742
  %744 = call float @dx.op.unary.f32(i32 7, float %743)  ; Saturate(value)
  br label %745

; <label>:745                                     ; preds = %699, %639
  %746 = phi float [ %744, %699 ], [ 1.000000e+00, %639 ]
  store float %746, float* %650, align 4, !tbaa !68, !noalias !60
  %747 = icmp slt i32 %643, 0
  br i1 %747, label %748, label %839, !dx.controlflow.hints !54

; <label>:748                                     ; preds = %745
  %749 = fsub fast float 1.000000e+00, %562
  %750 = fdiv fast float 1.000000e+00, %749
  %751 = shl i32 %552, 6
  %752 = or i32 %751, 16
  %753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %752, i32 undef)  ; BufferLoad(srv,index,wot)
  %754 = extractvalue %dx.types.ResRet.i32 %753, 0
  %755 = extractvalue %dx.types.ResRet.i32 %753, 1
  %756 = extractvalue %dx.types.ResRet.i32 %753, 2
  %757 = extractvalue %dx.types.ResRet.i32 %753, 3
  %758 = fmul fast float %750, %561
  %759 = fmul fast float %750, %564
  %760 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 0
  store i32 %754, i32* %760, align 4
  %761 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 1
  store i32 %755, i32* %761, align 4
  %762 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 2
  store i32 %756, i32* %762, align 4
  %763 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 3
  store i32 %757, i32* %763, align 4
  %764 = fmul fast float %759, 4.000000e+00
  %765 = call float @dx.op.unary.f32(i32 27, float %764)  ; Round_ni(value)
  %766 = fmul fast float %758, 4.000000e+00
  %767 = call float @dx.op.unary.f32(i32 27, float %766)  ; Round_ni(value)
  %768 = fsub fast float 1.100000e+01, %765
  %769 = fmul fast float %765, 5.000000e-01
  %770 = fmul fast float %769, %768
  %771 = fadd fast float %767, 5.000000e-01
  %772 = fadd fast float %771, %770
  %773 = fptosi float %772 to i32
  %774 = fptosi float %765 to i32
  %775 = sub nsw i32 5, %774
  %776 = fmul fast float %767, 2.500000e-01
  %777 = fmul fast float %765, 2.500000e-01
  %778 = add nsw i32 %773, 1
  %779 = add nsw i32 %773, %775
  %780 = fsub fast float %758, %776
  %781 = fmul fast float %780, 4.000000e+00
  %782 = fsub fast float %759, %777
  %783 = fmul fast float %782, 4.000000e+00
  %784 = fadd fast float %780, %782
  %785 = fmul fast float %784, 4.000000e+00
  %786 = fcmp fast ogt float %785, 1.000000e+00
  br i1 %786, label %787, label %793, !dx.controlflow.hints !55

; <label>:787                                     ; preds = %748
  %788 = add nsw i32 %779, 1
  %789 = fadd fast float %783, -1.000000e+00
  %790 = fsub fast float -0.000000e+00, %789
  %791 = fadd fast float %781, -1.000000e+00
  %792 = fsub fast float -0.000000e+00, %791
  br label %793

; <label>:793                                     ; preds = %787, %748
  %794 = phi i32 [ %788, %787 ], [ %773, %748 ]
  %795 = phi i32 [ %778, %787 ], [ %779, %748 ]
  %796 = phi i32 [ %779, %787 ], [ %778, %748 ]
  %797 = phi float [ %792, %787 ], [ %783, %748 ]
  %798 = phi float [ %790, %787 ], [ %781, %748 ]
  %799 = fsub fast float 1.000000e+00, %797
  %800 = fsub fast float %799, %798
  %801 = lshr i32 %796, 2
  %802 = getelementptr [4 x i32], [4 x i32]* %26, i32 0, i32 %801
  %803 = load i32, i32* %802, align 4, !tbaa !56, !noalias !60
  %804 = shl i32 %796, 3
  %805 = and i32 %804, 24
  %806 = lshr i32 %803, %805
  %807 = and i32 %806, 255
  %808 = sitofp i32 %807 to float
  %809 = fmul fast float %798, 0x3F70101020000000
  %810 = fmul fast float %809, %808
  %811 = lshr i32 %795, 2
  %812 = getelementptr [4 x i32], [4 x i32]* %26, i32 0, i32 %811
  %813 = load i32, i32* %812, align 4, !tbaa !56, !noalias !60
  %814 = shl i32 %795, 3
  %815 = and i32 %814, 24
  %816 = lshr i32 %813, %815
  %817 = and i32 %816, 255
  %818 = sitofp i32 %817 to float
  %819 = fmul fast float %797, 0x3F70101020000000
  %820 = fmul fast float %819, %818
  %821 = lshr i32 %794, 2
  %822 = getelementptr [4 x i32], [4 x i32]* %26, i32 0, i32 %821
  %823 = load i32, i32* %822, align 4, !tbaa !56, !noalias !60
  %824 = shl i32 %794, 3
  %825 = and i32 %824, 24
  %826 = lshr i32 %823, %825
  %827 = and i32 %826, 255
  %828 = sitofp i32 %827 to float
  %829 = fmul fast float %800, 0x3F70101020000000
  %830 = fmul fast float %829, %828
  %831 = fsub fast float 1.000000e+00, %810
  %832 = fsub fast float %831, %820
  %833 = fsub fast float %832, %830
  %834 = fmul fast float %562, 2.000000e+01
  %835 = fadd fast float %834, 1.000000e+00
  %836 = fmul fast float %833, 2.000000e+01
  %837 = fsub fast float %835, %836
  %838 = call float @dx.op.unary.f32(i32 7, float %837)  ; Saturate(value)
  br label %839

; <label>:839                                     ; preds = %793, %745
  %840 = phi float [ %838, %793 ], [ 1.000000e+00, %745 ]
  store float %840, float* %651, align 4, !tbaa !68, !noalias !60
  %841 = fadd fast float %840, %746
  %842 = icmp slt i32 %644, 0
  br i1 %842, label %843, label %934, !dx.controlflow.hints !54

; <label>:843                                     ; preds = %839
  %844 = fsub fast float 1.000000e+00, %563
  %845 = fdiv fast float 1.000000e+00, %844
  %846 = shl i32 %552, 6
  %847 = or i32 %846, 32
  %848 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %847, i32 undef)  ; BufferLoad(srv,index,wot)
  %849 = extractvalue %dx.types.ResRet.i32 %848, 0
  %850 = extractvalue %dx.types.ResRet.i32 %848, 1
  %851 = extractvalue %dx.types.ResRet.i32 %848, 2
  %852 = extractvalue %dx.types.ResRet.i32 %848, 3
  %853 = fmul fast float %845, %561
  %854 = fmul fast float %845, %562
  %855 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 0
  store i32 %849, i32* %855, align 4
  %856 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 1
  store i32 %850, i32* %856, align 4
  %857 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 2
  store i32 %851, i32* %857, align 4
  %858 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 3
  store i32 %852, i32* %858, align 4
  %859 = fmul fast float %854, 4.000000e+00
  %860 = call float @dx.op.unary.f32(i32 27, float %859)  ; Round_ni(value)
  %861 = fmul fast float %853, 4.000000e+00
  %862 = call float @dx.op.unary.f32(i32 27, float %861)  ; Round_ni(value)
  %863 = fsub fast float 1.100000e+01, %860
  %864 = fmul fast float %860, 5.000000e-01
  %865 = fmul fast float %864, %863
  %866 = fadd fast float %862, 5.000000e-01
  %867 = fadd fast float %866, %865
  %868 = fptosi float %867 to i32
  %869 = fptosi float %860 to i32
  %870 = sub nsw i32 5, %869
  %871 = fmul fast float %862, 2.500000e-01
  %872 = fmul fast float %860, 2.500000e-01
  %873 = add nsw i32 %868, 1
  %874 = add nsw i32 %868, %870
  %875 = fsub fast float %853, %871
  %876 = fmul fast float %875, 4.000000e+00
  %877 = fsub fast float %854, %872
  %878 = fmul fast float %877, 4.000000e+00
  %879 = fadd fast float %875, %877
  %880 = fmul fast float %879, 4.000000e+00
  %881 = fcmp fast ogt float %880, 1.000000e+00
  br i1 %881, label %882, label %888, !dx.controlflow.hints !55

; <label>:882                                     ; preds = %843
  %883 = add nsw i32 %874, 1
  %884 = fadd fast float %878, -1.000000e+00
  %885 = fsub fast float -0.000000e+00, %884
  %886 = fadd fast float %876, -1.000000e+00
  %887 = fsub fast float -0.000000e+00, %886
  br label %888

; <label>:888                                     ; preds = %882, %843
  %889 = phi i32 [ %883, %882 ], [ %868, %843 ]
  %890 = phi i32 [ %873, %882 ], [ %874, %843 ]
  %891 = phi i32 [ %874, %882 ], [ %873, %843 ]
  %892 = phi float [ %887, %882 ], [ %878, %843 ]
  %893 = phi float [ %885, %882 ], [ %876, %843 ]
  %894 = fsub fast float 1.000000e+00, %892
  %895 = fsub fast float %894, %893
  %896 = lshr i32 %891, 2
  %897 = getelementptr [4 x i32], [4 x i32]* %26, i32 0, i32 %896
  %898 = load i32, i32* %897, align 4, !tbaa !56, !noalias !60
  %899 = shl i32 %891, 3
  %900 = and i32 %899, 24
  %901 = lshr i32 %898, %900
  %902 = and i32 %901, 255
  %903 = sitofp i32 %902 to float
  %904 = fmul fast float %893, 0x3F70101020000000
  %905 = fmul fast float %904, %903
  %906 = lshr i32 %890, 2
  %907 = getelementptr [4 x i32], [4 x i32]* %26, i32 0, i32 %906
  %908 = load i32, i32* %907, align 4, !tbaa !56, !noalias !60
  %909 = shl i32 %890, 3
  %910 = and i32 %909, 24
  %911 = lshr i32 %908, %910
  %912 = and i32 %911, 255
  %913 = sitofp i32 %912 to float
  %914 = fmul fast float %892, 0x3F70101020000000
  %915 = fmul fast float %914, %913
  %916 = lshr i32 %889, 2
  %917 = getelementptr [4 x i32], [4 x i32]* %26, i32 0, i32 %916
  %918 = load i32, i32* %917, align 4, !tbaa !56, !noalias !60
  %919 = shl i32 %889, 3
  %920 = and i32 %919, 24
  %921 = lshr i32 %918, %920
  %922 = and i32 %921, 255
  %923 = sitofp i32 %922 to float
  %924 = fmul fast float %895, 0x3F70101020000000
  %925 = fmul fast float %924, %923
  %926 = fsub fast float 1.000000e+00, %905
  %927 = fsub fast float %926, %915
  %928 = fsub fast float %927, %925
  %929 = fmul fast float %563, 2.000000e+01
  %930 = fadd fast float %929, 1.000000e+00
  %931 = fmul fast float %928, 2.000000e+01
  %932 = fsub fast float %930, %931
  %933 = call float @dx.op.unary.f32(i32 7, float %932)  ; Saturate(value)
  br label %934

; <label>:934                                     ; preds = %888, %839
  %935 = phi float [ %933, %888 ], [ 1.000000e+00, %839 ]
  store float %935, float* %652, align 4, !tbaa !68, !noalias !60
  %936 = fadd fast float %841, %935
  %937 = icmp slt i32 %645, 0
  br i1 %937, label %938, label %1029, !dx.controlflow.hints !54

; <label>:938                                     ; preds = %934
  %939 = fsub fast float 1.000000e+00, %564
  %940 = fdiv fast float 1.000000e+00, %939
  %941 = shl i32 %552, 6
  %942 = or i32 %941, 48
  %943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %942, i32 undef)  ; BufferLoad(srv,index,wot)
  %944 = extractvalue %dx.types.ResRet.i32 %943, 0
  %945 = extractvalue %dx.types.ResRet.i32 %943, 1
  %946 = extractvalue %dx.types.ResRet.i32 %943, 2
  %947 = extractvalue %dx.types.ResRet.i32 %943, 3
  %948 = fmul fast float %940, %561
  %949 = fmul fast float %940, %562
  %950 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 0
  store i32 %944, i32* %950, align 4
  %951 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 1
  store i32 %945, i32* %951, align 4
  %952 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 2
  store i32 %946, i32* %952, align 4
  %953 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 3
  store i32 %947, i32* %953, align 4
  %954 = fmul fast float %949, 4.000000e+00
  %955 = call float @dx.op.unary.f32(i32 27, float %954)  ; Round_ni(value)
  %956 = fmul fast float %948, 4.000000e+00
  %957 = call float @dx.op.unary.f32(i32 27, float %956)  ; Round_ni(value)
  %958 = fsub fast float 1.100000e+01, %955
  %959 = fmul fast float %955, 5.000000e-01
  %960 = fmul fast float %959, %958
  %961 = fadd fast float %957, 5.000000e-01
  %962 = fadd fast float %961, %960
  %963 = fptosi float %962 to i32
  %964 = fptosi float %955 to i32
  %965 = sub nsw i32 5, %964
  %966 = fmul fast float %957, 2.500000e-01
  %967 = fmul fast float %955, 2.500000e-01
  %968 = add nsw i32 %963, 1
  %969 = add nsw i32 %963, %965
  %970 = fsub fast float %948, %966
  %971 = fmul fast float %970, 4.000000e+00
  %972 = fsub fast float %949, %967
  %973 = fmul fast float %972, 4.000000e+00
  %974 = fadd fast float %970, %972
  %975 = fmul fast float %974, 4.000000e+00
  %976 = fcmp fast ogt float %975, 1.000000e+00
  br i1 %976, label %977, label %983, !dx.controlflow.hints !55

; <label>:977                                     ; preds = %938
  %978 = add nsw i32 %969, 1
  %979 = fadd fast float %973, -1.000000e+00
  %980 = fsub fast float -0.000000e+00, %979
  %981 = fadd fast float %971, -1.000000e+00
  %982 = fsub fast float -0.000000e+00, %981
  br label %983

; <label>:983                                     ; preds = %977, %938
  %984 = phi i32 [ %978, %977 ], [ %963, %938 ]
  %985 = phi i32 [ %968, %977 ], [ %969, %938 ]
  %986 = phi i32 [ %969, %977 ], [ %968, %938 ]
  %987 = phi float [ %982, %977 ], [ %973, %938 ]
  %988 = phi float [ %980, %977 ], [ %971, %938 ]
  %989 = fsub fast float 1.000000e+00, %987
  %990 = fsub fast float %989, %988
  %991 = lshr i32 %986, 2
  %992 = getelementptr [4 x i32], [4 x i32]* %26, i32 0, i32 %991
  %993 = load i32, i32* %992, align 4, !tbaa !56, !noalias !60
  %994 = shl i32 %986, 3
  %995 = and i32 %994, 24
  %996 = lshr i32 %993, %995
  %997 = and i32 %996, 255
  %998 = sitofp i32 %997 to float
  %999 = fmul fast float %988, 0x3F70101020000000
  %1000 = fmul fast float %999, %998
  %1001 = lshr i32 %985, 2
  %1002 = getelementptr [4 x i32], [4 x i32]* %26, i32 0, i32 %1001
  %1003 = load i32, i32* %1002, align 4, !tbaa !56, !noalias !60
  %1004 = shl i32 %985, 3
  %1005 = and i32 %1004, 24
  %1006 = lshr i32 %1003, %1005
  %1007 = and i32 %1006, 255
  %1008 = sitofp i32 %1007 to float
  %1009 = fmul fast float %987, 0x3F70101020000000
  %1010 = fmul fast float %1009, %1008
  %1011 = lshr i32 %984, 2
  %1012 = getelementptr [4 x i32], [4 x i32]* %26, i32 0, i32 %1011
  %1013 = load i32, i32* %1012, align 4, !tbaa !56, !noalias !60
  %1014 = shl i32 %984, 3
  %1015 = and i32 %1014, 24
  %1016 = lshr i32 %1013, %1015
  %1017 = and i32 %1016, 255
  %1018 = sitofp i32 %1017 to float
  %1019 = fmul fast float %990, 0x3F70101020000000
  %1020 = fmul fast float %1019, %1018
  %1021 = fsub fast float 1.000000e+00, %1000
  %1022 = fsub fast float %1021, %1010
  %1023 = fsub fast float %1022, %1020
  %1024 = fmul fast float %564, 2.000000e+01
  %1025 = fadd fast float %1024, 1.000000e+00
  %1026 = fmul fast float %1023, 2.000000e+01
  %1027 = fsub fast float %1025, %1026
  %1028 = call float @dx.op.unary.f32(i32 7, float %1027)  ; Saturate(value)
  br label %1029

; <label>:1029                                    ; preds = %983, %934
  %1030 = phi float [ %1028, %983 ], [ 1.000000e+00, %934 ]
  store float %1030, float* %653, align 4, !tbaa !68, !noalias !60
  %1031 = fadd fast float %936, %1030
  %1032 = fcmp fast oeq float %1031, 0.000000e+00
  br i1 %1032, label %1033, label %1034, !dx.controlflow.hints !70

; <label>:1033                                    ; preds = %1029
  store float 2.500000e-01, float* %650, align 4
  store float 2.500000e-01, float* %651, align 4
  store float 2.500000e-01, float* %652, align 4
  store float 2.500000e-01, float* %653, align 4
  br label %1034

; <label>:1034                                    ; preds = %1033, %1029
  %1035 = phi float [ 2.500000e-01, %1033 ], [ %746, %1029 ]
  br label %1036

; <label>:1036                                    ; preds = %1300, %1034
  %1037 = phi float [ %1302, %1300 ], [ %1035, %1034 ]
  %1038 = phi float [ %1270, %1300 ], [ 0.000000e+00, %1034 ]
  %1039 = phi float [ %1271, %1300 ], [ 0.000000e+00, %1034 ]
  %1040 = phi float [ %1272, %1300 ], [ 0.000000e+00, %1034 ]
  %1041 = phi float [ %1273, %1300 ], [ 0.000000e+00, %1034 ]
  %1042 = phi float [ %1274, %1300 ], [ 0.000000e+00, %1034 ]
  %1043 = phi float [ %1275, %1300 ], [ 0.000000e+00, %1034 ]
  %1044 = phi float [ %1276, %1300 ], [ 0.000000e+00, %1034 ]
  %1045 = phi float [ %1277, %1300 ], [ 0.000000e+00, %1034 ]
  %1046 = phi float [ %1278, %1300 ], [ 0.000000e+00, %1034 ]
  %1047 = phi float [ %1279, %1300 ], [ 0.000000e+00, %1034 ]
  %1048 = phi float [ %1280, %1300 ], [ 0.000000e+00, %1034 ]
  %1049 = phi float [ %1281, %1300 ], [ 0.000000e+00, %1034 ]
  %1050 = phi float [ %1282, %1300 ], [ 0.000000e+00, %1034 ]
  %1051 = phi float [ %1283, %1300 ], [ 0.000000e+00, %1034 ]
  %1052 = phi float [ %1284, %1300 ], [ 0.000000e+00, %1034 ]
  %1053 = phi float [ %1285, %1300 ], [ 0.000000e+00, %1034 ]
  %1054 = phi float [ %1286, %1300 ], [ 0.000000e+00, %1034 ]
  %1055 = phi float [ %1287, %1300 ], [ 0.000000e+00, %1034 ]
  %1056 = phi float [ %1288, %1300 ], [ 0.000000e+00, %1034 ]
  %1057 = phi float [ %1289, %1300 ], [ 0.000000e+00, %1034 ]
  %1058 = phi float [ %1290, %1300 ], [ 0.000000e+00, %1034 ]
  %1059 = phi float [ %1291, %1300 ], [ 0.000000e+00, %1034 ]
  %1060 = phi float [ %1292, %1300 ], [ 0.000000e+00, %1034 ]
  %1061 = phi float [ %1293, %1300 ], [ 0.000000e+00, %1034 ]
  %1062 = phi float [ %1294, %1300 ], [ 0.000000e+00, %1034 ]
  %1063 = phi float [ %1295, %1300 ], [ 0.000000e+00, %1034 ]
  %1064 = phi float [ %1296, %1300 ], [ 0.000000e+00, %1034 ]
  %1065 = phi float [ %1297, %1300 ], [ 0.000000e+00, %1034 ]
  %1066 = phi i32 [ %1298, %1300 ], [ 0, %1034 ]
  %1067 = fcmp fast ogt float %1037, 0.000000e+00
  br i1 %1067, label %1068, label %1269, !dx.controlflow.hints !71

; <label>:1068                                    ; preds = %1036
  %1069 = getelementptr [4 x float], [4 x float]* %27, i32 0, i32 %1066
  %1070 = load float, float* %1069, align 4, !tbaa !68, !noalias !60
  %1071 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %1066
  %1072 = load i32, i32* %1071, align 4, !tbaa !56, !noalias !60
  %1073 = fmul fast float %1070, %1037
  %1074 = shl i32 %1072, 5
  %1075 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1074, i32 undef)  ; BufferLoad(srv,index,wot)
  %1076 = extractvalue %dx.types.ResRet.i32 %1075, 0
  %1077 = extractvalue %dx.types.ResRet.i32 %1075, 1
  %1078 = extractvalue %dx.types.ResRet.i32 %1075, 2
  %1079 = extractvalue %dx.types.ResRet.i32 %1075, 3
  %1080 = or i32 %1074, 16
  %1081 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1080, i32 undef)  ; BufferLoad(srv,index,wot)
  %1082 = extractvalue %dx.types.ResRet.i32 %1081, 0
  %1083 = extractvalue %dx.types.ResRet.i32 %1081, 1
  %1084 = extractvalue %dx.types.ResRet.i32 %1081, 2
  %1085 = shl i32 %1076, 4
  %1086 = and i32 %1085, 32752
  %1087 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1086)  ; LegacyF16ToF32(value)
  %1088 = lshr i32 %1076, 7
  %1089 = and i32 %1088, 32752
  %1090 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1089)  ; LegacyF16ToF32(value)
  %1091 = lshr i32 %1076, 22
  %1092 = shl nuw nsw i32 %1091, 5
  %1093 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1092)  ; LegacyF16ToF32(value)
  %1094 = and i32 %1077, 255
  %1095 = uitofp i32 %1094 to float
  %1096 = fmul fast float %1095, 0x3F80204080000000
  %1097 = fadd fast float %1096, -1.000000e+00
  %1098 = lshr i32 %1077, 8
  %1099 = and i32 %1098, 255
  %1100 = uitofp i32 %1099 to float
  %1101 = fmul fast float %1100, 0x3F80204080000000
  %1102 = fadd fast float %1101, -1.000000e+00
  %1103 = lshr i32 %1077, 16
  %1104 = and i32 %1103, 255
  %1105 = uitofp i32 %1104 to float
  %1106 = fmul fast float %1105, 0x3F80204080000000
  %1107 = fadd fast float %1106, -1.000000e+00
  %1108 = lshr i32 %1077, 24
  %1109 = uitofp i32 %1108 to float
  %1110 = fmul fast float %1109, 0x3F80204080000000
  %1111 = fadd fast float %1110, -1.000000e+00
  %1112 = and i32 %1078, 255
  %1113 = uitofp i32 %1112 to float
  %1114 = fmul fast float %1113, 0x3F80204080000000
  %1115 = fadd fast float %1114, -1.000000e+00
  %1116 = lshr i32 %1078, 8
  %1117 = and i32 %1116, 255
  %1118 = uitofp i32 %1117 to float
  %1119 = fmul fast float %1118, 0x3F80204080000000
  %1120 = fadd fast float %1119, -1.000000e+00
  %1121 = lshr i32 %1078, 16
  %1122 = and i32 %1121, 255
  %1123 = uitofp i32 %1122 to float
  %1124 = fmul fast float %1123, 0x3F80204080000000
  %1125 = fadd fast float %1124, -1.000000e+00
  %1126 = lshr i32 %1078, 24
  %1127 = uitofp i32 %1126 to float
  %1128 = fmul fast float %1127, 0x3F80204080000000
  %1129 = fadd fast float %1128, -1.000000e+00
  %1130 = and i32 %1079, 255
  %1131 = uitofp i32 %1130 to float
  %1132 = fmul fast float %1131, 0x3F80204080000000
  %1133 = fadd fast float %1132, -1.000000e+00
  %1134 = lshr i32 %1079, 8
  %1135 = and i32 %1134, 255
  %1136 = uitofp i32 %1135 to float
  %1137 = fmul fast float %1136, 0x3F80204080000000
  %1138 = fadd fast float %1137, -1.000000e+00
  %1139 = lshr i32 %1079, 16
  %1140 = and i32 %1139, 255
  %1141 = uitofp i32 %1140 to float
  %1142 = fmul fast float %1141, 0x3F80204080000000
  %1143 = fadd fast float %1142, -1.000000e+00
  %1144 = lshr i32 %1079, 24
  %1145 = uitofp i32 %1144 to float
  %1146 = fmul fast float %1145, 0x3F80204080000000
  %1147 = fadd fast float %1146, -1.000000e+00
  %1148 = and i32 %1082, 255
  %1149 = uitofp i32 %1148 to float
  %1150 = fmul fast float %1149, 0x3F80204080000000
  %1151 = fadd fast float %1150, -1.000000e+00
  %1152 = lshr i32 %1082, 8
  %1153 = and i32 %1152, 255
  %1154 = uitofp i32 %1153 to float
  %1155 = fmul fast float %1154, 0x3F80204080000000
  %1156 = fadd fast float %1155, -1.000000e+00
  %1157 = lshr i32 %1082, 16
  %1158 = and i32 %1157, 255
  %1159 = uitofp i32 %1158 to float
  %1160 = fmul fast float %1159, 0x3F80204080000000
  %1161 = fadd fast float %1160, -1.000000e+00
  %1162 = lshr i32 %1082, 24
  %1163 = uitofp i32 %1162 to float
  %1164 = fmul fast float %1163, 0x3F80204080000000
  %1165 = fadd fast float %1164, -1.000000e+00
  %1166 = and i32 %1083, 255
  %1167 = uitofp i32 %1166 to float
  %1168 = fmul fast float %1167, 0x3F80204080000000
  %1169 = fadd fast float %1168, -1.000000e+00
  %1170 = lshr i32 %1083, 8
  %1171 = and i32 %1170, 255
  %1172 = uitofp i32 %1171 to float
  %1173 = fmul fast float %1172, 0x3F80204080000000
  %1174 = fadd fast float %1173, -1.000000e+00
  %1175 = lshr i32 %1083, 16
  %1176 = and i32 %1175, 255
  %1177 = uitofp i32 %1176 to float
  %1178 = fmul fast float %1177, 0x3F80204080000000
  %1179 = fadd fast float %1178, -1.000000e+00
  %1180 = lshr i32 %1083, 24
  %1181 = uitofp i32 %1180 to float
  %1182 = fmul fast float %1181, 0x3F80204080000000
  %1183 = fadd fast float %1182, -1.000000e+00
  %1184 = and i32 %1084, 255
  %1185 = uitofp i32 %1184 to float
  %1186 = fmul fast float %1185, 0x3F80204080000000
  %1187 = fadd fast float %1186, -1.000000e+00
  %1188 = lshr i32 %1084, 8
  %1189 = and i32 %1188, 255
  %1190 = uitofp i32 %1189 to float
  %1191 = fmul fast float %1190, 0x3F80204080000000
  %1192 = fadd fast float %1191, -1.000000e+00
  %1193 = lshr i32 %1084, 16
  %1194 = and i32 %1193, 255
  %1195 = uitofp i32 %1194 to float
  %1196 = fmul fast float %1195, 0x3F80204080000000
  %1197 = fadd fast float %1196, -1.000000e+00
  %1198 = lshr i32 %1084, 24
  %1199 = uitofp i32 %1198 to float
  %1200 = fmul fast float %1199, 0x3F80204080000000
  %1201 = fadd fast float %1200, -1.000000e+00
  %1202 = fmul fast float %1087, %1073
  %1203 = fadd fast float %1202, %1046
  %1204 = fmul fast float %1073, 0x3FFBB67AE0000000
  %1205 = fmul fast float %1204, %1087
  %1206 = fmul fast float %1205, %1097
  %1207 = fadd fast float %1206, %1045
  %1208 = fmul fast float %1205, %1102
  %1209 = fadd fast float %1208, %1044
  %1210 = fmul fast float %1205, %1107
  %1211 = fadd fast float %1210, %1043
  %1212 = fmul fast float %1073, 0x3FFEFBDEC0000000
  %1213 = fmul fast float %1212, %1087
  %1214 = fmul fast float %1213, %1111
  %1215 = fadd fast float %1214, %1042
  %1216 = fmul fast float %1213, %1115
  %1217 = fadd fast float %1216, %1041
  %1218 = fmul fast float %1073, 0x4001E377A0000000
  %1219 = fmul fast float %1218, %1087
  %1220 = fmul fast float %1219, %1120
  %1221 = fadd fast float %1220, %1040
  %1222 = fmul fast float %1213, %1125
  %1223 = fadd fast float %1222, %1039
  %1224 = fmul fast float %1213, %1129
  %1225 = fadd fast float %1224, %1038
  %1226 = fmul fast float %1090, %1073
  %1227 = fadd fast float %1226, %1055
  %1228 = fmul fast float %1204, %1090
  %1229 = fmul fast float %1228, %1133
  %1230 = fadd fast float %1229, %1054
  %1231 = fmul fast float %1228, %1138
  %1232 = fadd fast float %1231, %1053
  %1233 = fmul fast float %1228, %1143
  %1234 = fadd fast float %1233, %1052
  %1235 = fmul fast float %1212, %1090
  %1236 = fmul fast float %1235, %1147
  %1237 = fadd fast float %1236, %1051
  %1238 = fmul fast float %1235, %1151
  %1239 = fadd fast float %1238, %1050
  %1240 = fmul fast float %1218, %1090
  %1241 = fmul fast float %1240, %1156
  %1242 = fadd fast float %1241, %1049
  %1243 = fmul fast float %1235, %1161
  %1244 = fadd fast float %1243, %1048
  %1245 = fmul fast float %1235, %1165
  %1246 = fadd fast float %1245, %1047
  %1247 = fmul fast float %1093, %1073
  %1248 = fadd fast float %1247, %1064
  %1249 = fmul fast float %1204, %1093
  %1250 = fmul fast float %1249, %1169
  %1251 = fadd fast float %1250, %1063
  %1252 = fmul fast float %1249, %1174
  %1253 = fadd fast float %1252, %1062
  %1254 = fmul fast float %1249, %1179
  %1255 = fadd fast float %1254, %1061
  %1256 = fmul fast float %1212, %1093
  %1257 = fmul fast float %1256, %1183
  %1258 = fadd fast float %1257, %1060
  %1259 = fmul fast float %1256, %1187
  %1260 = fadd fast float %1259, %1059
  %1261 = fmul fast float %1218, %1093
  %1262 = fmul fast float %1261, %1192
  %1263 = fadd fast float %1262, %1058
  %1264 = fmul fast float %1256, %1197
  %1265 = fadd fast float %1264, %1057
  %1266 = fmul fast float %1256, %1201
  %1267 = fadd fast float %1266, %1056
  %1268 = fadd fast float %1073, %1065
  br label %1269

; <label>:1269                                    ; preds = %1068, %1036
  %1270 = phi float [ %1225, %1068 ], [ %1038, %1036 ]
  %1271 = phi float [ %1223, %1068 ], [ %1039, %1036 ]
  %1272 = phi float [ %1221, %1068 ], [ %1040, %1036 ]
  %1273 = phi float [ %1217, %1068 ], [ %1041, %1036 ]
  %1274 = phi float [ %1215, %1068 ], [ %1042, %1036 ]
  %1275 = phi float [ %1211, %1068 ], [ %1043, %1036 ]
  %1276 = phi float [ %1209, %1068 ], [ %1044, %1036 ]
  %1277 = phi float [ %1207, %1068 ], [ %1045, %1036 ]
  %1278 = phi float [ %1203, %1068 ], [ %1046, %1036 ]
  %1279 = phi float [ %1246, %1068 ], [ %1047, %1036 ]
  %1280 = phi float [ %1244, %1068 ], [ %1048, %1036 ]
  %1281 = phi float [ %1242, %1068 ], [ %1049, %1036 ]
  %1282 = phi float [ %1239, %1068 ], [ %1050, %1036 ]
  %1283 = phi float [ %1237, %1068 ], [ %1051, %1036 ]
  %1284 = phi float [ %1234, %1068 ], [ %1052, %1036 ]
  %1285 = phi float [ %1232, %1068 ], [ %1053, %1036 ]
  %1286 = phi float [ %1230, %1068 ], [ %1054, %1036 ]
  %1287 = phi float [ %1227, %1068 ], [ %1055, %1036 ]
  %1288 = phi float [ %1267, %1068 ], [ %1056, %1036 ]
  %1289 = phi float [ %1265, %1068 ], [ %1057, %1036 ]
  %1290 = phi float [ %1263, %1068 ], [ %1058, %1036 ]
  %1291 = phi float [ %1260, %1068 ], [ %1059, %1036 ]
  %1292 = phi float [ %1258, %1068 ], [ %1060, %1036 ]
  %1293 = phi float [ %1255, %1068 ], [ %1061, %1036 ]
  %1294 = phi float [ %1253, %1068 ], [ %1062, %1036 ]
  %1295 = phi float [ %1251, %1068 ], [ %1063, %1036 ]
  %1296 = phi float [ %1248, %1068 ], [ %1064, %1036 ]
  %1297 = phi float [ %1268, %1068 ], [ %1065, %1036 ]
  %1298 = add nuw nsw i32 %1066, 1
  %1299 = icmp eq i32 %1298, 4
  br i1 %1299, label %1303, label %1300

; <label>:1300                                    ; preds = %1269
  %1301 = getelementptr [4 x float], [4 x float]* %29, i32 0, i32 %1298
  %1302 = load float, float* %1301, align 4, !tbaa !68, !noalias !60
  br label %1036

; <label>:1303                                    ; preds = %1269
  %1304 = fcmp fast ogt float %1297, 0.000000e+00
  %1305 = fdiv fast float 1.000000e+00, %1297
  %1306 = select i1 %1304, float %1305, float 1.000000e+00
  %1307 = fmul fast float %1306, %1278
  %1308 = fmul fast float %1306, %1277
  %1309 = fmul fast float %1306, %1276
  %1310 = fmul fast float %1306, %1275
  %1311 = fmul fast float %1306, %1274
  %1312 = fmul fast float %1306, %1273
  %1313 = fmul fast float %1306, %1272
  %1314 = fmul fast float %1306, %1271
  %1315 = fmul fast float %1306, %1270
  %1316 = fmul fast float %1306, %1287
  %1317 = fmul fast float %1306, %1286
  %1318 = fmul fast float %1306, %1285
  %1319 = fmul fast float %1306, %1284
  %1320 = fmul fast float %1306, %1283
  %1321 = fmul fast float %1306, %1282
  %1322 = fmul fast float %1306, %1281
  %1323 = fmul fast float %1306, %1280
  %1324 = fmul fast float %1306, %1279
  %1325 = fmul fast float %1306, %1296
  %1326 = fmul fast float %1306, %1295
  %1327 = fmul fast float %1306, %1294
  %1328 = fmul fast float %1306, %1293
  %1329 = fmul fast float %1306, %1292
  %1330 = fmul fast float %1306, %1291
  %1331 = fmul fast float %1306, %1290
  %1332 = fmul fast float %1306, %1289
  %1333 = fmul fast float %1306, %1288
  br label %1334

; <label>:1334                                    ; preds = %1303, %566, %240
  %1335 = phi float [ 0.000000e+00, %240 ], [ %1324, %1303 ], [ %620, %566 ]
  %1336 = phi float [ 0.000000e+00, %240 ], [ %1323, %1303 ], [ %618, %566 ]
  %1337 = phi float [ 0.000000e+00, %240 ], [ %1322, %1303 ], [ %616, %566 ]
  %1338 = phi float [ 0.000000e+00, %240 ], [ %1321, %1303 ], [ %614, %566 ]
  %1339 = phi float [ 0.000000e+00, %240 ], [ %1320, %1303 ], [ %612, %566 ]
  %1340 = phi float [ 0.000000e+00, %240 ], [ %1319, %1303 ], [ %610, %566 ]
  %1341 = phi float [ 0.000000e+00, %240 ], [ %1318, %1303 ], [ %608, %566 ]
  %1342 = phi float [ 0.000000e+00, %240 ], [ %1317, %1303 ], [ %606, %566 ]
  %1343 = phi float [ 0.000000e+00, %240 ], [ %1316, %1303 ], [ %604, %566 ]
  %1344 = phi float [ 0.000000e+00, %240 ], [ %1315, %1303 ], [ %602, %566 ]
  %1345 = phi float [ 0.000000e+00, %240 ], [ %1314, %1303 ], [ %600, %566 ]
  %1346 = phi float [ 0.000000e+00, %240 ], [ %1313, %1303 ], [ %598, %566 ]
  %1347 = phi float [ 0.000000e+00, %240 ], [ %1312, %1303 ], [ %596, %566 ]
  %1348 = phi float [ 0.000000e+00, %240 ], [ %1311, %1303 ], [ %594, %566 ]
  %1349 = phi float [ 0.000000e+00, %240 ], [ %1310, %1303 ], [ %592, %566 ]
  %1350 = phi float [ 0.000000e+00, %240 ], [ %1309, %1303 ], [ %590, %566 ]
  %1351 = phi float [ 0.000000e+00, %240 ], [ %1308, %1303 ], [ %588, %566 ]
  %1352 = phi float [ 0.000000e+00, %240 ], [ %1307, %1303 ], [ %586, %566 ]
  %1353 = phi float [ 0.000000e+00, %240 ], [ %1333, %1303 ], [ %638, %566 ]
  %1354 = phi float [ 0.000000e+00, %240 ], [ %1332, %1303 ], [ %636, %566 ]
  %1355 = phi float [ 0.000000e+00, %240 ], [ %1331, %1303 ], [ %634, %566 ]
  %1356 = phi float [ 0.000000e+00, %240 ], [ %1330, %1303 ], [ %632, %566 ]
  %1357 = phi float [ 0.000000e+00, %240 ], [ %1329, %1303 ], [ %630, %566 ]
  %1358 = phi float [ 0.000000e+00, %240 ], [ %1328, %1303 ], [ %628, %566 ]
  %1359 = phi float [ 0.000000e+00, %240 ], [ %1327, %1303 ], [ %626, %566 ]
  %1360 = phi float [ 0.000000e+00, %240 ], [ %1326, %1303 ], [ %624, %566 ]
  %1361 = phi float [ 0.000000e+00, %240 ], [ %1325, %1303 ], [ %622, %566 ]
  %1362 = fcmp fast olt float %241, 1.000000e+00
  br i1 %1362, label %1363, label %2023, !dx.controlflow.hints !72

; <label>:1363                                    ; preds = %1334
  %1364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1365 = extractvalue %dx.types.CBufRet.f32 %1364, 0
  %1366 = extractvalue %dx.types.CBufRet.f32 %1364, 1
  %1367 = fsub fast float %191, %1365
  %1368 = fsub fast float %196, %1366
  %1369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1370 = extractvalue %dx.types.CBufRet.f32 %1369, 0
  %1371 = extractvalue %dx.types.CBufRet.f32 %1369, 1
  %1372 = fmul fast float %1367, %1370
  %1373 = fmul fast float %1368, %1371
  %1374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1375 = extractvalue %dx.types.CBufRet.f32 %1374, 0
  %1376 = fmul fast float %1375, %1372
  %1377 = extractvalue %dx.types.CBufRet.f32 %1374, 1
  %1378 = fadd fast float %1376, %1377
  %1379 = extractvalue %dx.types.CBufRet.f32 %1374, 2
  %1380 = fmul fast float %1379, %1373
  %1381 = extractvalue %dx.types.CBufRet.f32 %1374, 3
  %1382 = fadd fast float %1380, %1381
  %1383 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %21, float %1378, float %1382, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1384 = extractvalue %dx.types.ResRet.f32 %1383, 0
  %1385 = extractvalue %dx.types.ResRet.f32 %1383, 1
  %1386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1387 = extractvalue %dx.types.CBufRet.f32 %1386, 1
  %1388 = extractvalue %dx.types.CBufRet.f32 %1386, 0
  %1389 = fsub fast float %1387, %1388
  %1390 = fmul fast float %1389, %1384
  %1391 = fadd fast float %1390, %1388
  %1392 = extractvalue %dx.types.CBufRet.f32 %1386, 3
  %1393 = extractvalue %dx.types.CBufRet.f32 %1386, 2
  %1394 = fsub fast float %1392, %1393
  %1395 = fmul fast float %1394, %1385
  %1396 = fadd fast float %1395, %1393
  %1397 = fsub fast float %201, %1391
  %1398 = fsub fast float %1396, %1391
  %1399 = fdiv fast float %1397, %1398
  %1400 = call float @dx.op.unary.f32(i32 7, float %1399)  ; Saturate(value)
  %1401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %1402 = extractvalue %dx.types.CBufRet.f32 %1401, 0
  %1403 = fmul fast float %1402, %1400
  %1404 = extractvalue %dx.types.CBufRet.f32 %1401, 1
  %1405 = fadd fast float %1403, %1404
  %1406 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %21, float %1378, float %1382, float %1405, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1407 = extractvalue %dx.types.ResRet.f32 %1406, 0
  %1408 = extractvalue %dx.types.ResRet.f32 %1406, 1
  %1409 = extractvalue %dx.types.ResRet.f32 %1406, 2
  %1410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %1411 = extractvalue %dx.types.CBufRet.f32 %1410, 0
  %1412 = extractvalue %dx.types.CBufRet.f32 %1410, 1
  %1413 = extractvalue %dx.types.CBufRet.f32 %1410, 2
  %1414 = fmul fast float %1411, %1407
  %1415 = fmul fast float %1412, %1408
  %1416 = fmul fast float %1413, %1409
  %1417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %1418 = extractvalue %dx.types.CBufRet.f32 %1417, 0
  %1419 = extractvalue %dx.types.CBufRet.f32 %1417, 1
  %1420 = extractvalue %dx.types.CBufRet.f32 %1417, 2
  %1421 = fadd fast float %1414, %1418
  %1422 = fadd fast float %1415, %1419
  %1423 = fadd fast float %1416, %1420
  %1424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %1425 = extractvalue %dx.types.CBufRet.f32 %1424, 0
  %1426 = fmul fast float %1425, %1372
  %1427 = extractvalue %dx.types.CBufRet.f32 %1424, 1
  %1428 = fadd fast float %1426, %1427
  %1429 = extractvalue %dx.types.CBufRet.f32 %1424, 2
  %1430 = fmul fast float %1429, %1373
  %1431 = extractvalue %dx.types.CBufRet.f32 %1424, 3
  %1432 = fadd fast float %1430, %1431
  %1433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %1434 = extractvalue %dx.types.CBufRet.f32 %1433, 0
  %1435 = extractvalue %dx.types.CBufRet.f32 %1433, 1
  %1436 = extractvalue %dx.types.CBufRet.f32 %1433, 2
  %1437 = extractvalue %dx.types.CBufRet.f32 %1433, 3
  %1438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %1439 = extractvalue %dx.types.CBufRet.f32 %1438, 0
  %1440 = extractvalue %dx.types.CBufRet.f32 %1438, 1
  %1441 = extractvalue %dx.types.CBufRet.f32 %1438, 2
  %1442 = extractvalue %dx.types.CBufRet.f32 %1438, 3
  %1443 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %21, float %1428, float %1432, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1444 = extractvalue %dx.types.ResRet.f32 %1443, 0
  %1445 = extractvalue %dx.types.ResRet.f32 %1443, 1
  %1446 = extractvalue %dx.types.ResRet.f32 %1443, 2
  %1447 = extractvalue %dx.types.ResRet.f32 %1443, 3
  %1448 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %21, float %1428, float %1432, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1449 = extractvalue %dx.types.ResRet.f32 %1448, 0
  %1450 = extractvalue %dx.types.ResRet.f32 %1448, 1
  %1451 = extractvalue %dx.types.ResRet.f32 %1448, 2
  %1452 = extractvalue %dx.types.ResRet.f32 %1448, 3
  %1453 = fmul fast float %1444, %1421
  %1454 = fmul fast float %1449, %1421
  %1455 = fmul fast float %1451, %1421
  %1456 = fmul fast float %1447, %1421
  %1457 = fadd fast float %1453, %1434
  %1458 = fadd fast float %1454, %1435
  %1459 = fadd fast float %1455, %1436
  %1460 = fadd fast float %1456, %1437
  %1461 = fmul fast float %1445, %1421
  %1462 = fmul fast float %1450, %1421
  %1463 = fadd fast float %1461, %1439
  %1464 = fadd fast float %1462, %1440
  %1465 = fmul fast float %1446, %1421
  %1466 = fmul fast float %1452, %1421
  %1467 = fadd fast float %1465, %1441
  %1468 = fadd fast float %1466, %1442
  %1469 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %21, float %1428, float %1432, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1470 = extractvalue %dx.types.ResRet.f32 %1469, 0
  %1471 = extractvalue %dx.types.ResRet.f32 %1469, 1
  %1472 = extractvalue %dx.types.ResRet.f32 %1469, 2
  %1473 = extractvalue %dx.types.ResRet.f32 %1469, 3
  %1474 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %21, float %1428, float %1432, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1475 = extractvalue %dx.types.ResRet.f32 %1474, 0
  %1476 = extractvalue %dx.types.ResRet.f32 %1474, 1
  %1477 = extractvalue %dx.types.ResRet.f32 %1474, 2
  %1478 = extractvalue %dx.types.ResRet.f32 %1474, 3
  %1479 = fmul fast float %1470, %1422
  %1480 = fmul fast float %1475, %1422
  %1481 = fmul fast float %1477, %1422
  %1482 = fmul fast float %1473, %1422
  %1483 = fadd fast float %1457, %1479
  %1484 = fadd fast float %1458, %1480
  %1485 = fadd fast float %1459, %1481
  %1486 = fadd fast float %1460, %1482
  %1487 = fmul fast float %1471, %1422
  %1488 = fmul fast float %1476, %1422
  %1489 = fadd fast float %1463, %1487
  %1490 = fadd fast float %1464, %1488
  %1491 = fmul fast float %1472, %1422
  %1492 = fmul fast float %1478, %1422
  %1493 = fadd fast float %1467, %1491
  %1494 = fadd fast float %1468, %1492
  %1495 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %21, float %1428, float %1432, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1496 = extractvalue %dx.types.ResRet.f32 %1495, 0
  %1497 = extractvalue %dx.types.ResRet.f32 %1495, 1
  %1498 = extractvalue %dx.types.ResRet.f32 %1495, 2
  %1499 = extractvalue %dx.types.ResRet.f32 %1495, 3
  %1500 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %21, float %1428, float %1432, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1501 = extractvalue %dx.types.ResRet.f32 %1500, 0
  %1502 = extractvalue %dx.types.ResRet.f32 %1500, 1
  %1503 = extractvalue %dx.types.ResRet.f32 %1500, 2
  %1504 = extractvalue %dx.types.ResRet.f32 %1500, 3
  %1505 = fmul fast float %1496, %1423
  %1506 = fmul fast float %1501, %1423
  %1507 = fmul fast float %1503, %1423
  %1508 = fmul fast float %1499, %1423
  %1509 = fadd fast float %1483, %1505
  %1510 = fadd fast float %1484, %1506
  %1511 = fadd fast float %1485, %1507
  %1512 = fadd fast float %1486, %1508
  %1513 = fmul fast float %1497, %1423
  %1514 = fmul fast float %1502, %1423
  %1515 = fadd fast float %1489, %1513
  %1516 = fadd fast float %1490, %1514
  %1517 = fmul fast float %1498, %1423
  %1518 = fmul fast float %1504, %1423
  %1519 = fadd fast float %1493, %1517
  %1520 = fadd fast float %1494, %1518
  %1521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %1522 = extractvalue %dx.types.CBufRet.f32 %1521, 0
  %1523 = fsub fast float %191, %1522
  %1524 = fsub fast float %1365, %191
  %1525 = call float @dx.op.binary.f32(i32 35, float %1524, float %1523)  ; FMax(a,b)
  %1526 = extractvalue %dx.types.CBufRet.f32 %1521, 1
  %1527 = fsub fast float %196, %1526
  %1528 = fsub fast float %1366, %196
  %1529 = call float @dx.op.binary.f32(i32 35, float %1528, float %1527)  ; FMax(a,b)
  %1530 = call float @dx.op.binary.f32(i32 35, float %1525, float %1529)  ; FMax(a,b)
  %1531 = extractvalue %dx.types.CBufRet.f32 %1369, 3
  %1532 = fmul fast float %1531, %1530
  %1533 = call float @dx.op.unary.f32(i32 7, float %1532)  ; Saturate(value)
  %1534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %1535 = extractvalue %dx.types.CBufRet.f32 %1534, 0
  %1536 = extractvalue %dx.types.CBufRet.f32 %1534, 1
  %1537 = extractvalue %dx.types.CBufRet.f32 %1534, 2
  %1538 = extractvalue %dx.types.CBufRet.f32 %1534, 3
  %1539 = fsub fast float %1535, %1509
  %1540 = fsub fast float %1536, %1510
  %1541 = fsub fast float %1537, %1511
  %1542 = fsub fast float %1538, %1512
  %1543 = fmul fast float %1539, %1533
  %1544 = fmul fast float %1540, %1533
  %1545 = fmul fast float %1541, %1533
  %1546 = fmul fast float %1542, %1533
  %1547 = fadd fast float %1543, %1509
  %1548 = fadd fast float %1544, %1510
  %1549 = fadd fast float %1545, %1511
  %1550 = fadd fast float %1546, %1512
  %1551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %1552 = extractvalue %dx.types.CBufRet.f32 %1551, 0
  %1553 = extractvalue %dx.types.CBufRet.f32 %1551, 1
  %1554 = fsub fast float %1552, %1515
  %1555 = fsub fast float %1553, %1516
  %1556 = fmul fast float %1554, %1533
  %1557 = fmul fast float %1555, %1533
  %1558 = fadd fast float %1556, %1515
  %1559 = fadd fast float %1557, %1516
  %1560 = extractvalue %dx.types.CBufRet.f32 %1551, 2
  %1561 = extractvalue %dx.types.CBufRet.f32 %1551, 3
  %1562 = fsub fast float %1560, %1519
  %1563 = fsub fast float %1561, %1520
  %1564 = fmul fast float %1562, %1533
  %1565 = fmul fast float %1563, %1533
  %1566 = fadd fast float %1564, %1519
  %1567 = fadd fast float %1565, %1520
  %1568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %1569 = extractvalue %dx.types.CBufRet.f32 %1568, 0
  %1570 = fmul fast float %1569, %1547
  %1571 = fmul fast float %1569, %1548
  %1572 = fmul fast float %1569, %1549
  %1573 = fmul fast float %1569, %1550
  %1574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %1575 = extractvalue %dx.types.CBufRet.f32 %1574, 0
  %1576 = fmul fast float %1575, %1558
  %1577 = fmul fast float %1575, %1559
  %1578 = fadd fast float %1576, %1570
  %1579 = fadd fast float %1577, %1572
  %1580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %1581 = extractvalue %dx.types.CBufRet.f32 %1580, 0
  %1582 = fmul fast float %1581, %1566
  %1583 = fmul fast float %1581, %1567
  %1584 = fadd fast float %1578, %1582
  %1585 = fadd fast float %1579, %1583
  %1586 = extractvalue %dx.types.CBufRet.f32 %1568, 1
  %1587 = fmul fast float %1586, %1547
  %1588 = fmul fast float %1586, %1548
  %1589 = fmul fast float %1586, %1549
  %1590 = fmul fast float %1586, %1550
  %1591 = extractvalue %dx.types.CBufRet.f32 %1574, 1
  %1592 = fmul fast float %1591, %1558
  %1593 = fmul fast float %1591, %1559
  %1594 = fadd fast float %1592, %1587
  %1595 = fadd fast float %1593, %1589
  %1596 = extractvalue %dx.types.CBufRet.f32 %1580, 1
  %1597 = fmul fast float %1596, %1566
  %1598 = fmul fast float %1596, %1567
  %1599 = fadd fast float %1594, %1597
  %1600 = fadd fast float %1595, %1598
  %1601 = extractvalue %dx.types.CBufRet.f32 %1568, 2
  %1602 = fmul fast float %1601, %1547
  %1603 = fmul fast float %1601, %1548
  %1604 = fmul fast float %1601, %1549
  %1605 = fmul fast float %1601, %1550
  %1606 = extractvalue %dx.types.CBufRet.f32 %1574, 2
  %1607 = fmul fast float %1606, %1558
  %1608 = fmul fast float %1606, %1559
  %1609 = fadd fast float %1607, %1602
  %1610 = fadd fast float %1608, %1604
  %1611 = extractvalue %dx.types.CBufRet.f32 %1580, 2
  %1612 = fmul fast float %1611, %1566
  %1613 = fmul fast float %1611, %1567
  %1614 = fadd fast float %1609, %1612
  %1615 = fadd fast float %1610, %1613
  %1616 = fmul fast float %1603, %1603
  %1617 = fmul fast float %1615, %1615
  %1618 = fmul fast float %1605, %1605
  %1619 = fadd fast float %1618, %1616
  %1620 = fadd fast float %1619, %1617
  %1621 = call float @dx.op.unary.f32(i32 24, float %1620)  ; Sqrt(value)
  %1622 = fcmp fast ugt float %1621, 0.000000e+00
  br i1 %1622, label %1623, label %1638, !dx.controlflow.hints !73

; <label>:1623                                    ; preds = %1363
  %1624 = fsub fast float -0.000000e+00, %1605
  %1625 = fdiv fast float %1624, %1621
  %1626 = fsub fast float -0.000000e+00, %1603
  %1627 = fdiv fast float %1626, %1621
  %1628 = fdiv fast float %1615, %1621
  %1629 = fmul fast float %1614, 0x3FE279A760000000
  %1630 = fmul fast float %1627, %1603
  %1631 = fmul fast float %1628, %1615
  %1632 = fmul fast float %1625, %1605
  %1633 = fadd fast float %1630, %1632
  %1634 = fsub fast float %1633, %1631
  %1635 = call float @dx.op.unary.f32(i32 6, float %1634)  ; FAbs(value)
  %1636 = fadd fast float %1635, 0x3DDB7CDFE0000000
  %1637 = fdiv fast float %1629, %1636
  br label %1638

; <label>:1638                                    ; preds = %1623, %1363
  %1639 = phi float [ %1637, %1623 ], [ 1.000000e+00, %1363 ]
  %1640 = fmul fast float %1588, %1588
  %1641 = fmul fast float %1600, %1600
  %1642 = fmul fast float %1590, %1590
  %1643 = fadd fast float %1642, %1640
  %1644 = fadd fast float %1643, %1641
  %1645 = call float @dx.op.unary.f32(i32 24, float %1644)  ; Sqrt(value)
  %1646 = fcmp fast ugt float %1645, 0.000000e+00
  br i1 %1646, label %1647, label %1662, !dx.controlflow.hints !73

; <label>:1647                                    ; preds = %1638
  %1648 = fsub fast float -0.000000e+00, %1590
  %1649 = fdiv fast float %1648, %1645
  %1650 = fsub fast float -0.000000e+00, %1588
  %1651 = fdiv fast float %1650, %1645
  %1652 = fdiv fast float %1600, %1645
  %1653 = fmul fast float %1599, 0x3FE279A760000000
  %1654 = fmul fast float %1651, %1588
  %1655 = fmul fast float %1652, %1600
  %1656 = fmul fast float %1649, %1590
  %1657 = fadd fast float %1654, %1656
  %1658 = fsub fast float %1657, %1655
  %1659 = call float @dx.op.unary.f32(i32 6, float %1658)  ; FAbs(value)
  %1660 = fadd fast float %1659, 0x3DDB7CDFE0000000
  %1661 = fdiv fast float %1653, %1660
  br label %1662

; <label>:1662                                    ; preds = %1647, %1638
  %1663 = phi float [ %1661, %1647 ], [ 1.000000e+00, %1638 ]
  %1664 = call float @dx.op.binary.f32(i32 36, float %1663, float %1639)  ; FMin(a,b)
  %1665 = fmul fast float %1571, %1571
  %1666 = fmul fast float %1585, %1585
  %1667 = fmul fast float %1573, %1573
  %1668 = fadd fast float %1667, %1665
  %1669 = fadd fast float %1668, %1666
  %1670 = call float @dx.op.unary.f32(i32 24, float %1669)  ; Sqrt(value)
  %1671 = fcmp fast ugt float %1670, 0.000000e+00
  br i1 %1671, label %1672, label %1687, !dx.controlflow.hints !73

; <label>:1672                                    ; preds = %1662
  %1673 = fsub fast float -0.000000e+00, %1573
  %1674 = fdiv fast float %1673, %1670
  %1675 = fsub fast float -0.000000e+00, %1571
  %1676 = fdiv fast float %1675, %1670
  %1677 = fdiv fast float %1585, %1670
  %1678 = fmul fast float %1584, 0x3FE279A760000000
  %1679 = fmul fast float %1676, %1571
  %1680 = fmul fast float %1677, %1585
  %1681 = fmul fast float %1674, %1573
  %1682 = fadd fast float %1679, %1681
  %1683 = fsub fast float %1682, %1680
  %1684 = call float @dx.op.unary.f32(i32 6, float %1683)  ; FAbs(value)
  %1685 = fadd fast float %1684, 0x3DDB7CDFE0000000
  %1686 = fdiv fast float %1678, %1685
  br label %1687

; <label>:1687                                    ; preds = %1672, %1662
  %1688 = phi float [ %1686, %1672 ], [ 1.000000e+00, %1662 ]
  %1689 = call float @dx.op.binary.f32(i32 36, float %1688, float %1664)  ; FMin(a,b)
  %1690 = call float @dx.op.unary.f32(i32 7, float %1689)  ; Saturate(value)
  %1691 = fcmp fast olt float %1690, 1.000000e+00
  br i1 %1691, label %1692, label %1702, !dx.controlflow.hints !74

; <label>:1692                                    ; preds = %1687
  %1693 = fmul fast float %1690, %1571
  %1694 = fmul fast float %1690, %1585
  %1695 = fmul fast float %1690, %1573
  %1696 = fmul fast float %1690, %1588
  %1697 = fmul fast float %1690, %1600
  %1698 = fmul fast float %1690, %1590
  %1699 = fmul fast float %1690, %1603
  %1700 = fmul fast float %1690, %1615
  %1701 = fmul fast float %1690, %1605
  br label %1702

; <label>:1702                                    ; preds = %1692, %1687
  %1703 = phi float [ %1699, %1692 ], [ %1603, %1687 ]
  %1704 = phi float [ %1700, %1692 ], [ %1615, %1687 ]
  %1705 = phi float [ %1701, %1692 ], [ %1605, %1687 ]
  %1706 = phi float [ %1696, %1692 ], [ %1588, %1687 ]
  %1707 = phi float [ %1697, %1692 ], [ %1600, %1687 ]
  %1708 = phi float [ %1698, %1692 ], [ %1590, %1687 ]
  %1709 = phi float [ %1693, %1692 ], [ %1571, %1687 ]
  %1710 = phi float [ %1694, %1692 ], [ %1585, %1687 ]
  %1711 = phi float [ %1695, %1692 ], [ %1573, %1687 ]
  %1712 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1584)  ; FMax(a,b)
  %1713 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1599)  ; FMax(a,b)
  %1714 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1614)  ; FMax(a,b)
  %1715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %1716 = extractvalue %dx.types.CBufRet.f32 %1715, 0
  %1717 = fcmp fast ogt float %1716, 0.000000e+00
  %1718 = fcmp fast oge float %1372, 0.000000e+00
  %1719 = and i1 %1718, %1717
  %1720 = fcmp fast ole float %1372, 1.000000e+00
  %1721 = and i1 %1720, %1719
  %1722 = fcmp fast oge float %1373, 0.000000e+00
  %1723 = and i1 %1722, %1721
  %1724 = fcmp fast ole float %1373, 1.000000e+00
  %1725 = and i1 %1724, %1723
  br i1 %1725, label %1726, label %1871, !dx.controlflow.hints !75

; <label>:1726                                    ; preds = %1702
  %1727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1728 = extractvalue %dx.types.CBufRet.f32 %1727, 2
  %1729 = extractvalue %dx.types.CBufRet.f32 %1727, 3
  %1730 = fmul fast float %1728, %1372
  %1731 = fmul fast float %1729, %1373
  %1732 = call float @dx.op.unary.f32(i32 27, float %1730)  ; Round_ni(value)
  %1733 = call float @dx.op.unary.f32(i32 27, float %1731)  ; Round_ni(value)
  %1734 = fptosi float %1732 to i32
  %1735 = fptosi float %1733 to i32
  %1736 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %6, i32 0, i32 %1734, i32 %1735, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1737 = extractvalue %dx.types.ResRet.i32 %1736, 0
  %1738 = and i32 %1737, 65535
  %1739 = lshr i32 %1737, 16
  %1740 = icmp eq i32 %1738, 65535
  br i1 %1740, label %1777, label %1741, !dx.controlflow.hints !76

; <label>:1741                                    ; preds = %1726
  %1742 = extractvalue %dx.types.CBufRet.f32 %1715, 1
  %1743 = extractvalue %dx.types.CBufRet.f32 %1727, 0
  %1744 = extractvalue %dx.types.CBufRet.f32 %1727, 1
  %1745 = fmul fast float %1743, %1372
  %1746 = fmul fast float %1744, %1373
  %1747 = fmul fast float %1745, 1.250000e-01
  %1748 = fmul fast float %1746, 1.250000e-01
  %1749 = call float @dx.op.unary.f32(i32 27, float %1747)  ; Round_ni(value)
  %1750 = call float @dx.op.unary.f32(i32 27, float %1748)  ; Round_ni(value)
  %1751 = fmul fast float %1749, 8.000000e+00
  %1752 = fmul fast float %1750, 8.000000e+00
  %1753 = and i32 %1737, 255
  %1754 = lshr i32 %1737, 8
  %1755 = and i32 %1754, 255
  %1756 = mul nuw nsw i32 %1753, 9
  %1757 = uitofp i32 %1756 to float
  %1758 = mul nuw nsw i32 %1755, 9
  %1759 = uitofp i32 %1758 to float
  %1760 = fadd fast float %1757, 5.000000e-01
  %1761 = fadd fast float %1760, %1745
  %1762 = fsub fast float %1761, %1751
  %1763 = fadd fast float %1759, 5.000000e-01
  %1764 = fadd fast float %1763, %1746
  %1765 = fsub fast float %1764, %1752
  %1766 = fdiv fast float %1762, %1716
  %1767 = fdiv fast float %1765, %1742
  %1768 = fmul fast float %1400, 4.375000e-01
  %1769 = fadd fast float %1768, 3.125000e-02
  %1770 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %21, float %1766, float %1767, float %1769, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1771 = extractvalue %dx.types.ResRet.f32 %1770, 0
  %1772 = extractvalue %dx.types.ResRet.f32 %1770, 1
  %1773 = extractvalue %dx.types.ResRet.f32 %1770, 2
  %1774 = fadd fast float %1771, %1712
  %1775 = fadd fast float %1772, %1713
  %1776 = fadd fast float %1773, %1714
  br label %1777

; <label>:1777                                    ; preds = %1741, %1726
  %1778 = phi float [ %1776, %1741 ], [ %1714, %1726 ]
  %1779 = phi float [ %1775, %1741 ], [ %1713, %1726 ]
  %1780 = phi float [ %1774, %1741 ], [ %1712, %1726 ]
  %1781 = icmp eq i32 %1739, 65535
  br i1 %1781, label %1871, label %1782, !dx.controlflow.hints !77

; <label>:1782                                    ; preds = %1777
  %1783 = extractvalue %dx.types.CBufRet.f32 %1715, 1
  %1784 = extractvalue %dx.types.CBufRet.f32 %1727, 0
  %1785 = extractvalue %dx.types.CBufRet.f32 %1727, 1
  %1786 = fmul fast float %1784, %1372
  %1787 = fmul fast float %1785, %1373
  %1788 = fmul fast float %1786, 1.250000e-01
  %1789 = fmul fast float %1787, 1.250000e-01
  %1790 = call float @dx.op.unary.f32(i32 27, float %1788)  ; Round_ni(value)
  %1791 = call float @dx.op.unary.f32(i32 27, float %1789)  ; Round_ni(value)
  %1792 = fmul fast float %1790, 8.000000e+00
  %1793 = fmul fast float %1791, 8.000000e+00
  %1794 = fsub fast float %1786, %1792
  %1795 = fsub fast float %1787, %1793
  %1796 = fadd fast float %1794, 5.000000e-01
  %1797 = fadd fast float %1795, 5.000000e-01
  %1798 = and i32 %1739, 255
  %1799 = lshr i32 %1737, 24
  %1800 = mul nuw nsw i32 %1798, 9
  %1801 = uitofp i32 %1800 to float
  %1802 = mul nuw nsw i32 %1799, 9
  %1803 = uitofp i32 %1802 to float
  %1804 = fadd fast float %1796, %1801
  %1805 = fadd fast float %1797, %1803
  %1806 = fdiv fast float %1804, %1716
  %1807 = fdiv fast float %1805, %1783
  %1808 = fmul fast float %1400, 4.375000e-01
  %1809 = fadd fast float %1808, 3.125000e-02
  %1810 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %21, float %1806, float %1807, float %1809, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1811 = extractvalue %dx.types.ResRet.f32 %1810, 0
  %1812 = extractvalue %dx.types.ResRet.f32 %1810, 1
  %1813 = extractvalue %dx.types.ResRet.f32 %1810, 2
  %1814 = fadd fast float %1808, 5.312500e-01
  %1815 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %21, float %1806, float %1807, float %1814, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1816 = extractvalue %dx.types.ResRet.f32 %1815, 0
  %1817 = extractvalue %dx.types.ResRet.f32 %1815, 1
  %1818 = extractvalue %dx.types.ResRet.f32 %1815, 2
  %1819 = fmul fast float %1816, 2.000000e+00
  %1820 = fmul fast float %1817, 2.000000e+00
  %1821 = fmul fast float %1818, 2.000000e+00
  %1822 = fadd fast float %1819, -1.000000e+00
  %1823 = fadd fast float %1820, -1.000000e+00
  %1824 = fadd fast float %1821, -1.000000e+00
  %1825 = fmul fast float %1822, %1822
  %1826 = fmul fast float %1823, %1823
  %1827 = fadd fast float %1825, %1826
  %1828 = fmul fast float %1824, %1824
  %1829 = fadd fast float %1827, %1828
  %1830 = call float @dx.op.unary.f32(i32 24, float %1829)  ; Sqrt(value)
  %1831 = fcmp fast ogt float %1830, 0.000000e+00
  br i1 %1831, label %1832, label %1836, !dx.controlflow.hints !78

; <label>:1832                                    ; preds = %1782
  %1833 = fdiv fast float %1822, %1830
  %1834 = fdiv fast float %1823, %1830
  %1835 = fdiv fast float %1824, %1830
  br label %1836

; <label>:1836                                    ; preds = %1832, %1782
  %1837 = phi float [ %1833, %1832 ], [ 0.000000e+00, %1782 ]
  %1838 = phi float [ %1834, %1832 ], [ 0.000000e+00, %1782 ]
  %1839 = phi float [ %1835, %1832 ], [ 0.000000e+00, %1782 ]
  %1840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1841 = extractvalue %dx.types.CBufRet.f32 %1840, 0
  %1842 = extractvalue %dx.types.CBufRet.f32 %1840, 1
  %1843 = fsub fast float %191, %1841
  %1844 = fsub fast float %196, %1842
  %1845 = fmul fast float %1843, %1843
  %1846 = fmul fast float %1844, %1844
  %1847 = fadd fast float %1845, %1846
  %1848 = call float @dx.op.unary.f32(i32 24, float %1847)  ; Sqrt(value)
  %1849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1850 = extractvalue %dx.types.CBufRet.f32 %1849, 0
  %1851 = extractvalue %dx.types.CBufRet.f32 %1849, 1
  %1852 = fsub fast float %1848, %1850
  %1853 = fdiv fast float %1852, %1851
  %1854 = call float @dx.op.unary.f32(i32 7, float %1853)  ; Saturate(value)
  %1855 = fmul fast float %1854, 2.000000e+00
  %1856 = fsub fast float 3.000000e+00, %1855
  %1857 = fmul fast float %1854, %1854
  %1858 = fmul fast float %1857, %1856
  %1859 = call float @dx.op.dot3.f32(i32 55, float %1837, float %1838, float %1839, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1860 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1859)  ; FMax(a,b)
  %1861 = fmul fast float %1860, 0x400C5BF8A0000000
  %1862 = fmul fast float %1858, %1811
  %1863 = fmul fast float %1862, %1861
  %1864 = fadd fast float %1863, %1780
  %1865 = fmul fast float %1858, %1812
  %1866 = fmul fast float %1865, %1861
  %1867 = fadd fast float %1866, %1779
  %1868 = fmul fast float %1858, %1813
  %1869 = fmul fast float %1868, %1861
  %1870 = fadd fast float %1869, %1778
  br label %1871

; <label>:1871                                    ; preds = %1836, %1777, %1702
  %1872 = phi float [ %1870, %1836 ], [ %1778, %1777 ], [ %1714, %1702 ]
  %1873 = phi float [ %1867, %1836 ], [ %1779, %1777 ], [ %1713, %1702 ]
  %1874 = phi float [ %1864, %1836 ], [ %1780, %1777 ], [ %1712, %1702 ]
  %1875 = fcmp fast ogt float %201, %1396
  %1876 = and i1 %1718, %1875
  %1877 = and i1 %1720, %1876
  %1878 = and i1 %1722, %1877
  %1879 = and i1 %1724, %1878
  br i1 %1879, label %1880, label %1937, !dx.controlflow.hints !79

; <label>:1880                                    ; preds = %1871
  %1881 = fmul fast float %1398, 0x3FC24924A0000000
  %1882 = fsub fast float %201, %1396
  %1883 = fdiv fast float %1882, %1881
  %1884 = call float @dx.op.unary.f32(i32 7, float %1883)  ; Saturate(value)
  %1885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %1886 = extractvalue %dx.types.CBufRet.f32 %1885, 0
  %1887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %1888 = extractvalue %dx.types.CBufRet.f32 %1887, 0
  %1889 = extractvalue %dx.types.CBufRet.f32 %1887, 1
  %1890 = extractvalue %dx.types.CBufRet.f32 %1887, 2
  %1891 = fsub fast float %1886, %1874
  %1892 = fsub fast float %1888, %1709
  %1893 = fsub fast float %1889, %1710
  %1894 = fsub fast float %1890, %1711
  %1895 = fmul fast float %1891, %1884
  %1896 = fmul fast float %1892, %1884
  %1897 = fmul fast float %1893, %1884
  %1898 = fmul fast float %1894, %1884
  %1899 = fadd fast float %1895, %1874
  %1900 = fadd fast float %1896, %1709
  %1901 = fadd fast float %1897, %1710
  %1902 = fadd fast float %1898, %1711
  %1903 = extractvalue %dx.types.CBufRet.f32 %1885, 1
  %1904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %1905 = extractvalue %dx.types.CBufRet.f32 %1904, 0
  %1906 = extractvalue %dx.types.CBufRet.f32 %1904, 1
  %1907 = extractvalue %dx.types.CBufRet.f32 %1904, 2
  %1908 = fsub fast float %1903, %1873
  %1909 = fsub fast float %1905, %1706
  %1910 = fsub fast float %1906, %1707
  %1911 = fsub fast float %1907, %1708
  %1912 = fmul fast float %1908, %1884
  %1913 = fmul fast float %1909, %1884
  %1914 = fmul fast float %1910, %1884
  %1915 = fmul fast float %1911, %1884
  %1916 = fadd fast float %1912, %1873
  %1917 = fadd fast float %1913, %1706
  %1918 = fadd fast float %1914, %1707
  %1919 = fadd fast float %1915, %1708
  %1920 = extractvalue %dx.types.CBufRet.f32 %1885, 2
  %1921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %1922 = extractvalue %dx.types.CBufRet.f32 %1921, 0
  %1923 = extractvalue %dx.types.CBufRet.f32 %1921, 1
  %1924 = extractvalue %dx.types.CBufRet.f32 %1921, 2
  %1925 = fsub fast float %1920, %1872
  %1926 = fsub fast float %1922, %1703
  %1927 = fsub fast float %1923, %1704
  %1928 = fsub fast float %1924, %1705
  %1929 = fmul fast float %1925, %1884
  %1930 = fmul fast float %1926, %1884
  %1931 = fmul fast float %1927, %1884
  %1932 = fmul fast float %1928, %1884
  %1933 = fadd fast float %1929, %1872
  %1934 = fadd fast float %1930, %1703
  %1935 = fadd fast float %1931, %1704
  %1936 = fadd fast float %1932, %1705
  br label %1937

; <label>:1937                                    ; preds = %1880, %1871
  %1938 = phi float [ %1933, %1880 ], [ %1872, %1871 ]
  %1939 = phi float [ %1934, %1880 ], [ %1703, %1871 ]
  %1940 = phi float [ %1935, %1880 ], [ %1704, %1871 ]
  %1941 = phi float [ %1936, %1880 ], [ %1705, %1871 ]
  %1942 = phi float [ %1916, %1880 ], [ %1873, %1871 ]
  %1943 = phi float [ %1917, %1880 ], [ %1706, %1871 ]
  %1944 = phi float [ %1918, %1880 ], [ %1707, %1871 ]
  %1945 = phi float [ %1919, %1880 ], [ %1708, %1871 ]
  %1946 = phi float [ %1899, %1880 ], [ %1874, %1871 ]
  %1947 = phi float [ %1900, %1880 ], [ %1709, %1871 ]
  %1948 = phi float [ %1901, %1880 ], [ %1710, %1871 ]
  %1949 = phi float [ %1902, %1880 ], [ %1711, %1871 ]
  %1950 = extractvalue %dx.types.CBufRet.f32 %1521, 3
  %1951 = fmul fast float %1950, %1946
  %1952 = fmul fast float %1950, %1942
  %1953 = fmul fast float %1950, %1938
  %1954 = fmul fast float %1947, 1.500000e+00
  %1955 = fmul fast float %1954, %1950
  %1956 = fmul fast float %1948, 1.500000e+00
  %1957 = fmul fast float %1956, %1950
  %1958 = fmul fast float %1949, 1.500000e+00
  %1959 = fmul fast float %1958, %1950
  %1960 = fmul fast float %1943, 1.500000e+00
  %1961 = fmul fast float %1960, %1950
  %1962 = fmul fast float %1944, 1.500000e+00
  %1963 = fmul fast float %1962, %1950
  %1964 = fmul fast float %1945, 1.500000e+00
  %1965 = fmul fast float %1964, %1950
  %1966 = fmul fast float %1939, 1.500000e+00
  %1967 = fmul fast float %1966, %1950
  %1968 = fmul fast float %1940, 1.500000e+00
  %1969 = fmul fast float %1968, %1950
  %1970 = fmul fast float %1941, 1.500000e+00
  %1971 = fmul fast float %1970, %1950
  %1972 = fsub fast float %1352, %1951
  %1973 = fmul fast float %1972, %241
  %1974 = fadd fast float %1973, %1951
  %1975 = fsub fast float %1351, %1955
  %1976 = fmul fast float %1975, %241
  %1977 = fadd fast float %1976, %1955
  %1978 = fsub fast float %1350, %1957
  %1979 = fmul fast float %1978, %241
  %1980 = fadd fast float %1979, %1957
  %1981 = fsub fast float %1349, %1959
  %1982 = fmul fast float %1981, %241
  %1983 = fadd fast float %1982, %1959
  %1984 = fmul fast float %1348, %241
  %1985 = fmul fast float %1347, %241
  %1986 = fmul fast float %1346, %241
  %1987 = fmul fast float %1345, %241
  %1988 = fmul fast float %1344, %241
  %1989 = fsub fast float %1343, %1952
  %1990 = fmul fast float %1989, %241
  %1991 = fadd fast float %1990, %1952
  %1992 = fsub fast float %1342, %1961
  %1993 = fmul fast float %1992, %241
  %1994 = fadd fast float %1993, %1961
  %1995 = fsub fast float %1341, %1963
  %1996 = fmul fast float %1995, %241
  %1997 = fadd fast float %1996, %1963
  %1998 = fsub fast float %1340, %1965
  %1999 = fmul fast float %1998, %241
  %2000 = fadd fast float %1999, %1965
  %2001 = fmul fast float %1339, %241
  %2002 = fmul fast float %1338, %241
  %2003 = fmul fast float %1337, %241
  %2004 = fmul fast float %1336, %241
  %2005 = fmul fast float %1335, %241
  %2006 = fsub fast float %1361, %1953
  %2007 = fmul fast float %2006, %241
  %2008 = fadd fast float %2007, %1953
  %2009 = fsub fast float %1360, %1967
  %2010 = fmul fast float %2009, %241
  %2011 = fadd fast float %2010, %1967
  %2012 = fsub fast float %1359, %1969
  %2013 = fmul fast float %2012, %241
  %2014 = fadd fast float %2013, %1969
  %2015 = fsub fast float %1358, %1971
  %2016 = fmul fast float %2015, %241
  %2017 = fadd fast float %2016, %1971
  %2018 = fmul fast float %1357, %241
  %2019 = fmul fast float %1356, %241
  %2020 = fmul fast float %1355, %241
  %2021 = fmul fast float %1354, %241
  %2022 = fmul fast float %1353, %241
  br label %2023

; <label>:2023                                    ; preds = %1937, %1334
  %2024 = phi float [ %1335, %1334 ], [ %2005, %1937 ]
  %2025 = phi float [ %1336, %1334 ], [ %2004, %1937 ]
  %2026 = phi float [ %1337, %1334 ], [ %2003, %1937 ]
  %2027 = phi float [ %1338, %1334 ], [ %2002, %1937 ]
  %2028 = phi float [ %1339, %1334 ], [ %2001, %1937 ]
  %2029 = phi float [ %1340, %1334 ], [ %2000, %1937 ]
  %2030 = phi float [ %1341, %1334 ], [ %1997, %1937 ]
  %2031 = phi float [ %1342, %1334 ], [ %1994, %1937 ]
  %2032 = phi float [ %1343, %1334 ], [ %1991, %1937 ]
  %2033 = phi float [ %1344, %1334 ], [ %1988, %1937 ]
  %2034 = phi float [ %1345, %1334 ], [ %1987, %1937 ]
  %2035 = phi float [ %1346, %1334 ], [ %1986, %1937 ]
  %2036 = phi float [ %1347, %1334 ], [ %1985, %1937 ]
  %2037 = phi float [ %1348, %1334 ], [ %1984, %1937 ]
  %2038 = phi float [ %1349, %1334 ], [ %1983, %1937 ]
  %2039 = phi float [ %1350, %1334 ], [ %1980, %1937 ]
  %2040 = phi float [ %1351, %1334 ], [ %1977, %1937 ]
  %2041 = phi float [ %1352, %1334 ], [ %1974, %1937 ]
  %2042 = phi float [ %1353, %1334 ], [ %2022, %1937 ]
  %2043 = phi float [ %1354, %1334 ], [ %2021, %1937 ]
  %2044 = phi float [ %1355, %1334 ], [ %2020, %1937 ]
  %2045 = phi float [ %1356, %1334 ], [ %2019, %1937 ]
  %2046 = phi float [ %1357, %1334 ], [ %2018, %1937 ]
  %2047 = phi float [ %1358, %1334 ], [ %2017, %1937 ]
  %2048 = phi float [ %1359, %1334 ], [ %2014, %1937 ]
  %2049 = phi float [ %1360, %1334 ], [ %2011, %1937 ]
  %2050 = phi float [ %1361, %1334 ], [ %2008, %1937 ]
  %2051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2052 = extractvalue %dx.types.CBufRet.f32 %2051, 0
  %2053 = extractvalue %dx.types.CBufRet.f32 %2051, 1
  %2054 = extractvalue %dx.types.CBufRet.f32 %2051, 2
  %2055 = fsub fast float %191, %2052
  %2056 = fsub fast float %196, %2053
  %2057 = fsub fast float %201, %2054
  %2058 = call float @dx.op.dot3.f32(i32 55, float %2055, float %2056, float %2057, float %2055, float %2056, float %2057)  ; Dot3(ax,ay,az,bx,by,bz)
  %2059 = call float @dx.op.unary.f32(i32 25, float %2058)  ; Rsqrt(value)
  %2060 = fmul fast float %2055, %2059
  %2061 = fmul fast float %2056, %2059
  %2062 = fmul fast float %2057, %2059
  %2063 = fsub fast float -0.000000e+00, %2060
  %2064 = fsub fast float -0.000000e+00, %2061
  %2065 = fmul fast float %2041, 0x3FD20DD760000000
  %2066 = fmul fast float %2032, 0x3FD20DD760000000
  %2067 = fmul fast float %2050, 0x3FD20DD760000000
  br i1 %100, label %2148, label %2068, !dx.controlflow.hints !80

; <label>:2068                                    ; preds = %2023
  %2069 = fmul fast float %2039, 0xBFD4D8D7C0000000
  %2070 = fmul fast float %2069, %2062
  %2071 = fmul fast float %2062, %2062
  %2072 = fmul fast float %2071, 0x3FEE471020000000
  %2073 = fadd fast float %2072, 0xBFD42F6020000000
  %2074 = fmul fast float %2073, %2035
  %2075 = fmul fast float %2038, 0x3FD4D8D7C0000000
  %2076 = fmul fast float %2040, 0x3FD4D8D7C0000000
  %2077 = fmul fast float %2076, %2061
  %2078 = fmul fast float %2062, 0x3FF17B1420000000
  %2079 = fmul fast float %2034, %2063
  %2080 = fmul fast float %2036, %2064
  %2081 = fmul fast float %2060, %2060
  %2082 = fmul fast float %2061, %2061
  %2083 = fsub fast float %2081, %2082
  %2084 = fmul fast float %2033, 0x3FC17B1420000000
  %2085 = fmul fast float %2084, %2083
  %2086 = fmul fast float %2037, 0x3FD17B1420000000
  %2087 = fmul fast float %2086, %2059
  %2088 = fmul fast float %2087, %2056
  %2089 = fadd fast float %2079, %2080
  %2090 = fmul fast float %2078, %2089
  %2091 = fadd fast float %2090, %2074
  %2092 = fmul fast float %2091, 2.500000e-01
  %2093 = fadd fast float %2088, %2075
  %2094 = fmul fast float %2093, %2060
  %2095 = fadd fast float %2070, %2065
  %2096 = fadd fast float %2095, %2077
  %2097 = fadd fast float %2096, %2085
  %2098 = fadd fast float %2097, %2092
  %2099 = fadd fast float %2098, %2094
  %2100 = fmul fast float %2030, 0xBFD4D8D7C0000000
  %2101 = fmul fast float %2100, %2062
  %2102 = fmul fast float %2073, %2026
  %2103 = fmul fast float %2029, 0x3FD4D8D7C0000000
  %2104 = fmul fast float %2031, 0x3FD4D8D7C0000000
  %2105 = fmul fast float %2104, %2061
  %2106 = fmul fast float %2025, %2063
  %2107 = fmul fast float %2027, %2064
  %2108 = fmul fast float %2024, 0x3FC17B1420000000
  %2109 = fmul fast float %2108, %2083
  %2110 = fmul fast float %2028, 0x3FD17B1420000000
  %2111 = fmul fast float %2110, %2059
  %2112 = fmul fast float %2111, %2056
  %2113 = fadd fast float %2106, %2107
  %2114 = fmul fast float %2078, %2113
  %2115 = fadd fast float %2114, %2102
  %2116 = fmul fast float %2115, 2.500000e-01
  %2117 = fadd fast float %2112, %2103
  %2118 = fmul fast float %2117, %2060
  %2119 = fadd fast float %2101, %2066
  %2120 = fadd fast float %2119, %2105
  %2121 = fadd fast float %2120, %2109
  %2122 = fadd fast float %2121, %2116
  %2123 = fadd fast float %2122, %2118
  %2124 = fmul fast float %2048, 0xBFD4D8D7C0000000
  %2125 = fmul fast float %2124, %2062
  %2126 = fmul fast float %2073, %2044
  %2127 = fmul fast float %2047, 0x3FD4D8D7C0000000
  %2128 = fmul fast float %2049, 0x3FD4D8D7C0000000
  %2129 = fmul fast float %2128, %2061
  %2130 = fmul fast float %2043, %2063
  %2131 = fmul fast float %2045, %2064
  %2132 = fmul fast float %2042, 0x3FC17B1420000000
  %2133 = fmul fast float %2132, %2083
  %2134 = fmul fast float %2046, 0x3FD17B1420000000
  %2135 = fmul fast float %2134, %2059
  %2136 = fmul fast float %2135, %2056
  %2137 = fadd fast float %2130, %2131
  %2138 = fmul fast float %2078, %2137
  %2139 = fadd fast float %2138, %2126
  %2140 = fmul fast float %2139, 2.500000e-01
  %2141 = fadd fast float %2136, %2127
  %2142 = fmul fast float %2141, %2060
  %2143 = fadd fast float %2125, %2067
  %2144 = fadd fast float %2143, %2129
  %2145 = fadd fast float %2144, %2133
  %2146 = fadd fast float %2145, %2140
  %2147 = fadd fast float %2146, %2142
  br label %2242

; <label>:2148                                    ; preds = %2023
  %2149 = fmul fast float %142, %142
  %2150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %2151 = extractvalue %dx.types.CBufRet.f32 %2150, 0
  %2152 = extractvalue %dx.types.CBufRet.f32 %2150, 1
  %2153 = extractvalue %dx.types.CBufRet.f32 %2150, 2
  %2154 = fmul fast float %2039, %142
  %2155 = fmul fast float %2154, %2153
  %2156 = fmul fast float %2153, %2153
  %2157 = fmul fast float %2156, 0x3FEE471020000000
  %2158 = fadd fast float %2157, 0xBFD42F6020000000
  %2159 = fmul fast float %2158, %2035
  %2160 = fmul fast float %2151, %2038
  %2161 = fmul fast float %2152, %2040
  %2162 = fmul fast float %2153, 0x3FF17B1420000000
  %2163 = fmul fast float %2034, %2149
  %2164 = fmul fast float %2163, %2151
  %2165 = fmul fast float %2164, %2162
  %2166 = fmul fast float %2036, %2149
  %2167 = fmul fast float %2166, %2152
  %2168 = fmul fast float %2167, %2162
  %2169 = fmul fast float %2151, %2151
  %2170 = fmul fast float %2152, %2152
  %2171 = fsub fast float %2169, %2170
  %2172 = fmul fast float %2033, 0x3FE17B1420000000
  %2173 = fmul fast float %2172, %2171
  %2174 = fmul fast float %2037, 0x3FF17B1420000000
  %2175 = fmul fast float %2174, %2152
  %2176 = fmul fast float %2175, %2151
  %2177 = fadd fast float %2173, %2176
  %2178 = fadd fast float %2177, %2159
  %2179 = fmul fast float %2178, %2149
  %2180 = fadd fast float %2161, %2160
  %2181 = fmul fast float %2180, %142
  %2182 = fsub fast float %2181, %2155
  %2183 = fmul fast float %2182, 0x3FDF454380000000
  %2184 = fsub fast float %2065, %2165
  %2185 = fsub fast float %2184, %2168
  %2186 = fadd fast float %2185, %2179
  %2187 = fadd fast float %2186, %2183
  %2188 = fmul fast float %2030, %142
  %2189 = fmul fast float %2188, %2153
  %2190 = fmul fast float %2158, %2026
  %2191 = fmul fast float %2151, %2029
  %2192 = fmul fast float %2152, %2031
  %2193 = fmul fast float %2025, %2149
  %2194 = fmul fast float %2193, %2151
  %2195 = fmul fast float %2194, %2162
  %2196 = fmul fast float %2027, %2149
  %2197 = fmul fast float %2196, %2152
  %2198 = fmul fast float %2197, %2162
  %2199 = fmul fast float %2024, 0x3FE17B1420000000
  %2200 = fmul fast float %2199, %2171
  %2201 = fmul fast float %2028, 0x3FF17B1420000000
  %2202 = fmul fast float %2201, %2152
  %2203 = fmul fast float %2202, %2151
  %2204 = fadd fast float %2200, %2203
  %2205 = fadd fast float %2204, %2190
  %2206 = fmul fast float %2205, %2149
  %2207 = fadd fast float %2192, %2191
  %2208 = fmul fast float %2207, %142
  %2209 = fsub fast float %2208, %2189
  %2210 = fmul fast float %2209, 0x3FDF454380000000
  %2211 = fsub fast float %2066, %2195
  %2212 = fsub fast float %2211, %2198
  %2213 = fadd fast float %2212, %2206
  %2214 = fadd fast float %2213, %2210
  %2215 = fmul fast float %2048, %142
  %2216 = fmul fast float %2215, %2153
  %2217 = fmul fast float %2158, %2044
  %2218 = fmul fast float %2151, %2047
  %2219 = fmul fast float %2152, %2049
  %2220 = fmul fast float %2043, %2149
  %2221 = fmul fast float %2220, %2151
  %2222 = fmul fast float %2221, %2162
  %2223 = fmul fast float %2045, %2149
  %2224 = fmul fast float %2223, %2152
  %2225 = fmul fast float %2224, %2162
  %2226 = fmul fast float %2042, 0x3FE17B1420000000
  %2227 = fmul fast float %2226, %2171
  %2228 = fmul fast float %2046, 0x3FF17B1420000000
  %2229 = fmul fast float %2228, %2152
  %2230 = fmul fast float %2229, %2151
  %2231 = fadd fast float %2227, %2230
  %2232 = fadd fast float %2231, %2217
  %2233 = fmul fast float %2232, %2149
  %2234 = fadd fast float %2219, %2218
  %2235 = fmul fast float %2234, %142
  %2236 = fsub fast float %2235, %2216
  %2237 = fmul fast float %2236, 0x3FDF454380000000
  %2238 = fsub fast float %2067, %2222
  %2239 = fsub fast float %2238, %2225
  %2240 = fadd fast float %2239, %2233
  %2241 = fadd fast float %2240, %2237
  br label %2242

; <label>:2242                                    ; preds = %2148, %2068
  %2243 = phi float [ %2099, %2068 ], [ %2187, %2148 ]
  %2244 = phi float [ %2123, %2068 ], [ %2214, %2148 ]
  %2245 = phi float [ %2147, %2068 ], [ %2241, %2148 ]
  %2246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2247 = extractvalue %dx.types.CBufRet.f32 %2246, 3
  %2248 = fmul fast float %2247, %2243
  %2249 = fmul fast float %2247, %2244
  %2250 = fmul fast float %2247, %2245
  %2251 = extractvalue %dx.types.CBufRet.f32 %2246, 0
  %2252 = fmul fast float %2248, %2251
  %2253 = fmul fast float %2249, %2251
  %2254 = fmul fast float %2250, %2251
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %169, i32 %170, i32 undef, float %2252, float %2253, float %2254, float %2252, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %2255 = add i32 %170, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %169, i32 %2255, i32 undef, float %2252, float %2253, float %2254, float %2252, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %2256 = add i32 %169, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %2256, i32 %170, i32 undef, float %2252, float %2253, float %2254, float %2252, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %2256, i32 %2255, i32 undef, float %2252, float %2253, float %2254, float %2252, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2257

; <label>:2257                                    ; preds = %2242, %0
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
!36 = !{void ()* @cs_del_sh_sample_lightgrid_2_lowres, !"cs_del_sh_sample_lightgrid_2_lowres", null, !4, !37}
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

