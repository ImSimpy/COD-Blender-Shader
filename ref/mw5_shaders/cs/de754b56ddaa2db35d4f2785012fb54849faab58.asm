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
; shader hash: 22d96aee41315178c66078d48c7562d8
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

define void @cs_del_sh_sample_lightgrid_1() {
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
  %34 = add i32 %33, 6
  %35 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %34, i32 0)  ; BufferLoad(srv,index,wot)
  %36 = extractvalue %dx.types.ResRet.i32 %35, 0
  %37 = icmp ult i32 %25, %36
  br i1 %37, label %38, label %1837, !dx.controlflow.hints !39

; <label>:38                                      ; preds = %0
  %39 = add i32 %33, 9
  %40 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 %39)  ; CBufferLoadLegacy(handle,regIndex)
  %41 = extractvalue %dx.types.CBufRet.i32 %40, 2
  %42 = add i32 %41, %25
  %43 = shl i32 %42, 5
  %44 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %43, i32 undef)  ; BufferLoad(srv,index,wot)
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
  br i1 %56, label %96, label %57, !dx.controlflow.hints !40

; <label>:57                                      ; preds = %38
  %58 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %59 = extractvalue %dx.types.CBufRet.f32 %58, 2
  %60 = extractvalue %dx.types.CBufRet.f32 %58, 3
  %61 = fmul fast float %59, %52
  %62 = fmul fast float %60, %53
  %63 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %64 = extractvalue %dx.types.CBufRet.f32 %63, 0
  %65 = extractvalue %dx.types.CBufRet.f32 %63, 1
  %66 = fadd fast float %61, %64
  %67 = fadd fast float %62, %65
  %68 = call float @dx.op.unary.f32(i32 7, float %66)  ; Saturate(value)
  %69 = call float @dx.op.unary.f32(i32 7, float %67)  ; Saturate(value)
  %70 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %21, float %68, float %69, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %71 = extractvalue %dx.types.ResRet.f32 %70, 0
  %72 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
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
  %85 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
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
  %99 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %98, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %164 = add i32 %50, %26
  %165 = add i32 %51, %27
  %166 = uitofp i32 %26 to float
  %167 = uitofp i32 %27 to float
  %168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
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
  %196 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %197 = extractvalue %dx.types.CBufRet.i32 %196, 0
  %198 = icmp eq i32 %197, 1
  br i1 %198, label %199, label %234, !dx.controlflow.hints !41

; <label>:199                                     ; preds = %96
  %200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %201 = extractvalue %dx.types.CBufRet.f32 %200, 0
  %202 = extractvalue %dx.types.CBufRet.f32 %200, 1
  %203 = fsub fast float %185, %201
  %204 = fsub fast float %190, %202
  %205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %206 = extractvalue %dx.types.CBufRet.f32 %205, 0
  %207 = extractvalue %dx.types.CBufRet.f32 %205, 1
  %208 = fmul fast float %203, %206
  %209 = fmul fast float %204, %207
  %210 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %21, float %208, float %209, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %211 = extractvalue %dx.types.ResRet.f32 %210, 0
  %212 = fcmp fast ogt float %211, 0.000000e+00
  %213 = extractvalue %dx.types.CBufRet.i32 %196, 3
  %214 = icmp ne i32 %213, 0
  %215 = and i1 %212, %214
  br i1 %215, label %216, label %234, !dx.controlflow.hints !42

; <label>:216                                     ; preds = %199
  %217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
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
  br i1 %227, label %234, label %228, !dx.controlflow.hints !43

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
  br i1 %236, label %237, label %1138, !dx.controlflow.hints !44

; <label>:237                                     ; preds = %234
  %238 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %239 = extractvalue %dx.types.CBufRet.i32 %238, 2
  %240 = extractvalue %dx.types.CBufRet.i32 %238, 1
  %241 = extractvalue %dx.types.CBufRet.i32 %238, 0
  %242 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 0
  store float 0.000000e+00, float* %242, align 4
  %243 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 1
  store float 0.000000e+00, float* %243, align 4
  %244 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 2
  store float 0.000000e+00, float* %244, align 4
  %245 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 3
  store float 0.000000e+00, float* %245, align 4
  %246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %247 = extractvalue %dx.types.ResRet.i32 %246, 0
  %248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %249 = extractvalue %dx.types.ResRet.i32 %248, 0
  %250 = extractvalue %dx.types.ResRet.i32 %248, 1
  %251 = extractvalue %dx.types.ResRet.i32 %248, 2
  %252 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %253 = extractvalue %dx.types.ResRet.f32 %252, 0
  %254 = extractvalue %dx.types.ResRet.f32 %252, 1
  %255 = extractvalue %dx.types.ResRet.f32 %252, 2
  %256 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %257 = extractvalue %dx.types.ResRet.f32 %256, 0
  %258 = extractvalue %dx.types.ResRet.f32 %256, 1
  %259 = extractvalue %dx.types.ResRet.f32 %256, 2
  %260 = fsub fast float %185, %253
  %261 = fsub fast float %190, %254
  %262 = fsub fast float %195, %255
  %263 = fptoui float %260 to i32
  %264 = fptoui float %261 to i32
  %265 = fptoui float %262 to i32
  %266 = fcmp fast olt float %185, %253
  %267 = fcmp fast olt float %190, %254
  %268 = fcmp fast olt float %195, %255
  %269 = or i1 %266, %267
  %270 = or i1 %268, %269
  %271 = fcmp fast oge float %185, %257
  %272 = fcmp fast oge float %190, %258
  %273 = fcmp fast oge float %195, %259
  %274 = or i1 %271, %272
  %275 = or i1 %273, %274
  %276 = or i1 %270, %275
  %277 = and i32 %249, 31
  %278 = lshr i32 %263, %277
  %279 = lshr i32 %264, %277
  %280 = lshr i32 %265, %277
  %281 = mul i32 %279, %247
  %282 = add i32 %281, %278
  %283 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %284 = extractvalue %dx.types.CBufRet.i32 %283, 0
  %285 = icmp ult i32 %282, %284
  br i1 %285, label %286, label %302, !dx.controlflow.hints !45

; <label>:286                                     ; preds = %237
  %287 = mul i32 %282, 12
  %288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %287, i32 undef)  ; BufferLoad(srv,index,wot)
  %289 = extractvalue %dx.types.ResRet.i32 %288, 0
  %290 = add i32 %287, 4
  %291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %290, i32 undef)  ; BufferLoad(srv,index,wot)
  %292 = extractvalue %dx.types.ResRet.i32 %291, 0
  %293 = add i32 %287, 8
  %294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %293, i32 undef)  ; BufferLoad(srv,index,wot)
  %295 = extractvalue %dx.types.ResRet.i32 %294, 0
  %296 = icmp ult i32 %280, %292
  %297 = icmp ugt i32 %280, %295
  %298 = or i1 %296, %297
  %299 = add i32 %289, %280
  %300 = sub i32 %299, %292
  %301 = select i1 %298, i32 -2147483648, i32 %300
  br label %302

; <label>:302                                     ; preds = %286, %237
  %303 = phi i32 [ %301, %286 ], [ -2147483648, %237 ]
  %304 = select i1 %276, i32 -2147483648, i32 %303
  %305 = icmp sgt i32 %304, -1
  %306 = and i32 %250, 31
  %307 = lshr i32 %263, %306
  %308 = lshr i32 %264, %306
  %309 = lshr i32 %265, %306
  %310 = and i32 %307, 3
  %311 = and i32 %309, 3
  %312 = shl nuw nsw i32 %311, 4
  %313 = shl i32 %308, 2
  %314 = and i32 %313, 12
  %315 = and i32 %312, 16
  %316 = or i32 %314, %310
  %317 = or i32 %316, %315
  %318 = shl i32 1, %317
  %319 = extractvalue %dx.types.CBufRet.i32 %283, 1
  %320 = icmp ult i32 %304, %319
  br i1 %320, label %321, label %339, !dx.controlflow.hints !46

; <label>:321                                     ; preds = %302
  %322 = lshr i32 %311, 1
  %323 = shl i32 %304, 4
  %324 = shl nuw nsw i32 %322, 2
  %325 = or i32 %323, %324
  %326 = or i32 %325, 8
  %327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %328 = extractvalue %dx.types.ResRet.i32 %327, 0
  %329 = and i32 %328, %318
  %330 = icmp eq i32 %329, 0
  %331 = add i32 %318, -1
  %332 = and i32 %328, %331
  %333 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %332)  ; Countbits(value)
  %334 = or i32 %323, %324
  %335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %334, i32 undef)  ; BufferLoad(srv,index,wot)
  %336 = extractvalue %dx.types.ResRet.i32 %335, 0
  %337 = add i32 %336, %333
  %338 = select i1 %330, i32 -2147483648, i32 %337
  br label %339

; <label>:339                                     ; preds = %321, %302
  %340 = phi i32 [ %338, %321 ], [ -2147483648, %302 ]
  %341 = select i1 %305, i32 %340, i32 %304
  %342 = icmp sgt i32 %341, -1
  %343 = and i32 %251, 31
  %344 = lshr i32 %263, %343
  %345 = lshr i32 %264, %343
  %346 = lshr i32 %265, %343
  %347 = and i32 %344, 3
  %348 = and i32 %346, 3
  %349 = shl nuw nsw i32 %348, 4
  %350 = shl i32 %345, 2
  %351 = and i32 %350, 12
  %352 = and i32 %349, 16
  %353 = or i32 %351, %347
  %354 = or i32 %353, %352
  %355 = shl i32 1, %354
  %356 = icmp ult i32 %341, %319
  br i1 %356, label %357, label %375, !dx.controlflow.hints !46

; <label>:357                                     ; preds = %339
  %358 = lshr i32 %348, 1
  %359 = shl i32 %341, 4
  %360 = shl nuw nsw i32 %358, 2
  %361 = or i32 %359, %360
  %362 = or i32 %361, 8
  %363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %362, i32 undef)  ; BufferLoad(srv,index,wot)
  %364 = extractvalue %dx.types.ResRet.i32 %363, 0
  %365 = and i32 %364, %355
  %366 = icmp eq i32 %365, 0
  %367 = add i32 %355, -1
  %368 = and i32 %364, %367
  %369 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %368)  ; Countbits(value)
  %370 = or i32 %359, %360
  %371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %370, i32 undef)  ; BufferLoad(srv,index,wot)
  %372 = extractvalue %dx.types.ResRet.i32 %371, 0
  %373 = add i32 %372, %369
  %374 = select i1 %366, i32 -2147483648, i32 %373
  br label %375

; <label>:375                                     ; preds = %357, %339
  %376 = phi i32 [ %374, %357 ], [ -2147483648, %339 ]
  %377 = select i1 %342, i32 %376, i32 %341
  br i1 %276, label %392, label %378, !dx.controlflow.hints !47

; <label>:378                                     ; preds = %375
  %379 = icmp eq i32 %377, -2147483648
  %380 = icmp eq i32 %341, -2147483648
  %381 = select i1 %380, i32 %304, i32 %341
  %382 = select i1 %379, i32 %381, i32 %377
  %383 = icmp sgt i32 %382, -1
  %384 = icmp ne i32 %239, -1
  %385 = and i1 %384, %383
  %386 = select i1 %385, i32 %239, i32 0
  %387 = add i32 %382, %240
  %388 = add i32 %387, %386
  %389 = shl i32 %388, 2
  %390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %389, i32 undef)  ; BufferLoad(srv,index,wot)
  %391 = extractvalue %dx.types.ResRet.i32 %390, 0
  br label %392

; <label>:392                                     ; preds = %378, %375
  %393 = phi i32 [ %391, %378 ], [ -1, %375 ]
  %394 = icmp eq i32 %393, -1
  %395 = select i1 %394, i32 %241, i32 %393
  %396 = icmp eq i32 %395, -1
  br i1 %396, label %545, label %397

; <label>:397                                     ; preds = %392
  br label %398

; <label>:398                                     ; preds = %536, %397
  %399 = phi i32 [ %537, %536 ], [ 0, %397 ]
  %400 = phi i32 [ %401, %536 ], [ -1, %397 ]
  %401 = phi i32 [ %532, %536 ], [ %395, %397 ]
  %402 = phi float [ %508, %536 ], [ 0.000000e+00, %397 ]
  %403 = phi float [ %509, %536 ], [ 0.000000e+00, %397 ]
  %404 = phi float [ %510, %536 ], [ 0.000000e+00, %397 ]
  %405 = phi float [ %513, %536 ], [ 0.000000e+00, %397 ]
  %406 = icmp ugt i32 %399, 50
  br i1 %406, label %539, label %407, !dx.controlflow.hints !48

; <label>:407                                     ; preds = %398
  %408 = shl i32 %401, 4
  %409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %408, i32 undef)  ; BufferLoad(srv,index,wot)
  %410 = extractvalue %dx.types.ResRet.i32 %409, 0
  %411 = extractvalue %dx.types.ResRet.i32 %409, 1
  %412 = extractvalue %dx.types.ResRet.i32 %409, 2
  %413 = extractvalue %dx.types.ResRet.i32 %409, 3
  %414 = and i32 %410, 2147483647
  %415 = mul nsw i32 %414, 12
  %416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %415, i32 undef)  ; BufferLoad(srv,index,wot)
  %417 = extractvalue %dx.types.ResRet.i32 %416, 0
  %418 = extractvalue %dx.types.ResRet.i32 %416, 1
  %419 = extractvalue %dx.types.ResRet.i32 %416, 2
  %420 = and i32 %411, 2147483647
  %421 = mul nsw i32 %420, 12
  %422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %421, i32 undef)  ; BufferLoad(srv,index,wot)
  %423 = extractvalue %dx.types.ResRet.i32 %422, 0
  %424 = extractvalue %dx.types.ResRet.i32 %422, 1
  %425 = extractvalue %dx.types.ResRet.i32 %422, 2
  %426 = and i32 %412, 2147483647
  %427 = mul nsw i32 %426, 12
  %428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %427, i32 undef)  ; BufferLoad(srv,index,wot)
  %429 = extractvalue %dx.types.ResRet.i32 %428, 0
  %430 = extractvalue %dx.types.ResRet.i32 %428, 1
  %431 = extractvalue %dx.types.ResRet.i32 %428, 2
  %432 = and i32 %413, 2147483647
  %433 = mul nsw i32 %432, 12
  %434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %433, i32 undef)  ; BufferLoad(srv,index,wot)
  %435 = extractvalue %dx.types.ResRet.i32 %434, 0
  %436 = extractvalue %dx.types.ResRet.i32 %434, 1
  %437 = extractvalue %dx.types.ResRet.i32 %434, 2
  %438 = bitcast i32 %417 to float
  %439 = bitcast i32 %418 to float
  %440 = bitcast i32 %419 to float
  %441 = bitcast i32 %435 to float
  %442 = bitcast i32 %436 to float
  %443 = bitcast i32 %437 to float
  %444 = fsub fast float %438, %441
  %445 = fsub fast float %439, %442
  %446 = fsub fast float %440, %443
  %447 = bitcast i32 %423 to float
  %448 = bitcast i32 %424 to float
  %449 = bitcast i32 %425 to float
  %450 = fsub fast float %447, %441
  %451 = fsub fast float %448, %442
  %452 = fsub fast float %449, %443
  %453 = bitcast i32 %429 to float
  %454 = bitcast i32 %430 to float
  %455 = bitcast i32 %431 to float
  %456 = fsub fast float %453, %441
  %457 = fsub fast float %454, %442
  %458 = fsub fast float %455, %443
  %459 = fsub fast float %185, %441
  %460 = fsub fast float %190, %442
  %461 = fsub fast float %195, %443
  %462 = fmul fast float %451, %458
  %463 = fmul fast float %457, %452
  %464 = fsub fast float %462, %463
  %465 = fmul fast float %464, %444
  %466 = fmul fast float %450, %458
  %467 = fmul fast float %452, %456
  %468 = fsub fast float %466, %467
  %469 = fmul fast float %468, %445
  %470 = fsub fast float %465, %469
  %471 = fmul fast float %450, %457
  %472 = fmul fast float %451, %456
  %473 = fsub fast float %471, %472
  %474 = fmul fast float %473, %446
  %475 = fadd fast float %470, %474
  %476 = fdiv fast float 1.000000e+00, %475
  %477 = fmul fast float %464, %476
  %478 = fmul fast float %476, %468
  %479 = fsub fast float -0.000000e+00, %478
  %480 = fmul fast float %473, %476
  %481 = fmul fast float %445, %458
  %482 = fmul fast float %446, %457
  %483 = fsub fast float %481, %482
  %484 = fmul fast float %476, %483
  %485 = fsub fast float -0.000000e+00, %484
  %486 = fmul fast float %444, %458
  %487 = fmul fast float %456, %446
  %488 = fsub fast float %486, %487
  %489 = fmul fast float %488, %476
  %490 = fmul fast float %444, %457
  %491 = fmul fast float %445, %456
  %492 = fsub fast float %490, %491
  %493 = fmul fast float %476, %492
  %494 = fsub fast float -0.000000e+00, %493
  %495 = fmul fast float %445, %452
  %496 = fmul fast float %446, %451
  %497 = fsub fast float %495, %496
  %498 = fmul fast float %497, %476
  %499 = fmul fast float %444, %452
  %500 = fmul fast float %446, %450
  %501 = fsub fast float %499, %500
  %502 = fmul fast float %476, %501
  %503 = fsub fast float -0.000000e+00, %502
  %504 = fmul fast float %444, %451
  %505 = fmul fast float %445, %450
  %506 = fsub fast float %504, %505
  %507 = fmul fast float %506, %476
  %508 = call float @dx.op.dot3.f32(i32 55, float %477, float %479, float %480, float %459, float %460, float %461)  ; Dot3(ax,ay,az,bx,by,bz)
  %509 = call float @dx.op.dot3.f32(i32 55, float %485, float %489, float %494, float %459, float %460, float %461)  ; Dot3(ax,ay,az,bx,by,bz)
  %510 = call float @dx.op.dot3.f32(i32 55, float %498, float %503, float %507, float %459, float %460, float %461)  ; Dot3(ax,ay,az,bx,by,bz)
  %511 = fsub fast float 1.000000e+00, %508
  %512 = fsub fast float %511, %509
  %513 = fsub fast float %512, %510
  %514 = call float @dx.op.binary.f32(i32 36, float %508, float %509)  ; FMin(a,b)
  %515 = call float @dx.op.binary.f32(i32 36, float %514, float %510)  ; FMin(a,b)
  %516 = call float @dx.op.binary.f32(i32 36, float %515, float %513)  ; FMin(a,b)
  %517 = call float @dx.op.binary.f32(i32 35, float %508, float %509)  ; FMax(a,b)
  %518 = call float @dx.op.binary.f32(i32 35, float %517, float %510)  ; FMax(a,b)
  %519 = call float @dx.op.binary.f32(i32 35, float %518, float %513)  ; FMax(a,b)
  %520 = fcmp fast oge float %516, 0xBF50624DE0000000
  %521 = fcmp fast olt float %519, 0x3FF00068E0000000
  %522 = and i1 %520, %521
  br i1 %522, label %539, label %523, !dx.controlflow.hints !49

; <label>:523                                     ; preds = %407
  %524 = fcmp fast oeq float %516, %508
  %525 = fcmp fast oeq float %516, %509
  %526 = fcmp fast oeq float %516, %510
  %527 = select i1 %526, i32 8, i32 12
  %528 = select i1 %525, i32 4, i32 %527
  %529 = select i1 %524, i32 0, i32 %528
  %530 = or i32 %529, %408
  %531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %530, i32 undef)  ; BufferLoad(srv,index,wot)
  %532 = extractvalue %dx.types.ResRet.i32 %531, 0
  %533 = icmp ne i32 %400, -1
  %534 = icmp eq i32 %532, %400
  %535 = and i1 %533, %534
  br i1 %535, label %539, label %536, !dx.controlflow.hints !50

; <label>:536                                     ; preds = %523
  %537 = add nuw nsw i32 %399, 1
  %538 = icmp eq i32 %532, -1
  br i1 %538, label %539, label %398, !llvm.loop !51

; <label>:539                                     ; preds = %536, %523, %407, %398
  %540 = phi i32 [ %401, %523 ], [ %401, %407 ], [ -1, %536 ], [ -1, %398 ]
  %541 = phi float [ %508, %523 ], [ %508, %407 ], [ %508, %536 ], [ %402, %398 ]
  %542 = phi float [ %509, %523 ], [ %509, %407 ], [ %509, %536 ], [ %403, %398 ]
  %543 = phi float [ %510, %523 ], [ %510, %407 ], [ %510, %536 ], [ %404, %398 ]
  %544 = phi float [ %513, %523 ], [ %513, %407 ], [ %513, %536 ], [ %405, %398 ]
  br label %545

; <label>:545                                     ; preds = %539, %392
  %546 = phi i32 [ -1, %392 ], [ %540, %539 ]
  %547 = phi float [ 0.000000e+00, %392 ], [ %541, %539 ]
  %548 = phi float [ 0.000000e+00, %392 ], [ %542, %539 ]
  %549 = phi float [ 0.000000e+00, %392 ], [ %543, %539 ]
  %550 = phi float [ 0.000000e+00, %392 ], [ %544, %539 ]
  %551 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %547)  ; FMax(a,b)
  %552 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %548)  ; FMax(a,b)
  %553 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %549)  ; FMax(a,b)
  %554 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %550)  ; FMax(a,b)
  %555 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %551)  ; FMin(a,b)
  %556 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %552)  ; FMin(a,b)
  %557 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %553)  ; FMin(a,b)
  %558 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %554)  ; FMin(a,b)
  store float %555, float* %242, align 4
  store float %556, float* %243, align 4
  store float %557, float* %244, align 4
  store float %558, float* %245, align 4
  %559 = icmp eq i32 %546, -1
  br i1 %559, label %560, label %595, !dx.controlflow.hints !53

; <label>:560                                     ; preds = %545
  %561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %562 = extractvalue %dx.types.ResRet.i32 %561, 1
  %563 = extractvalue %dx.types.ResRet.i32 %561, 2
  %564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %565 = extractvalue %dx.types.ResRet.i32 %564, 0
  %566 = extractvalue %dx.types.ResRet.i32 %564, 1
  %567 = extractvalue %dx.types.ResRet.i32 %564, 2
  %568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %569 = extractvalue %dx.types.ResRet.i32 %568, 0
  %570 = extractvalue %dx.types.ResRet.i32 %568, 1
  %571 = and i32 %569, 65535
  %572 = call float @dx.op.legacyF16ToF32(i32 131, i32 %571)  ; LegacyF16ToF32(value)
  %573 = lshr i32 %569, 16
  %574 = call float @dx.op.legacyF16ToF32(i32 131, i32 %573)  ; LegacyF16ToF32(value)
  %575 = and i32 %570, 65535
  %576 = call float @dx.op.legacyF16ToF32(i32 131, i32 %575)  ; LegacyF16ToF32(value)
  %577 = lshr i32 %570, 16
  %578 = call float @dx.op.legacyF16ToF32(i32 131, i32 %577)  ; LegacyF16ToF32(value)
  %579 = lshr i32 %565, 16
  %580 = call float @dx.op.legacyF16ToF32(i32 131, i32 %579)  ; LegacyF16ToF32(value)
  %581 = and i32 %566, 65535
  %582 = call float @dx.op.legacyF16ToF32(i32 131, i32 %581)  ; LegacyF16ToF32(value)
  %583 = lshr i32 %566, 16
  %584 = call float @dx.op.legacyF16ToF32(i32 131, i32 %583)  ; LegacyF16ToF32(value)
  %585 = and i32 %567, 65535
  %586 = call float @dx.op.legacyF16ToF32(i32 131, i32 %585)  ; LegacyF16ToF32(value)
  %587 = and i32 %562, 65535
  %588 = call float @dx.op.legacyF16ToF32(i32 131, i32 %587)  ; LegacyF16ToF32(value)
  %589 = lshr i32 %562, 16
  %590 = call float @dx.op.legacyF16ToF32(i32 131, i32 %589)  ; LegacyF16ToF32(value)
  %591 = and i32 %563, 65535
  %592 = call float @dx.op.legacyF16ToF32(i32 131, i32 %591)  ; LegacyF16ToF32(value)
  %593 = lshr i32 %563, 16
  %594 = call float @dx.op.legacyF16ToF32(i32 131, i32 %593)  ; LegacyF16ToF32(value)
  br label %1138

; <label>:595                                     ; preds = %545
  %596 = shl nsw i32 %546, 4
  %597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %596, i32 undef)  ; BufferLoad(srv,index,wot)
  %598 = extractvalue %dx.types.ResRet.i32 %597, 0
  %599 = extractvalue %dx.types.ResRet.i32 %597, 1
  %600 = extractvalue %dx.types.ResRet.i32 %597, 2
  %601 = extractvalue %dx.types.ResRet.i32 %597, 3
  %602 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 0
  store i32 %598, i32* %602, align 4
  %603 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 1
  store i32 %599, i32* %603, align 4
  %604 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 2
  store i32 %600, i32* %604, align 4
  %605 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 3
  store i32 %601, i32* %605, align 4
  %606 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 0
  store float 0.000000e+00, float* %606, align 4
  %607 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 1
  store float 0.000000e+00, float* %607, align 4
  %608 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 2
  store float 0.000000e+00, float* %608, align 4
  %609 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 3
  store float 0.000000e+00, float* %609, align 4
  %610 = icmp slt i32 %598, 0
  br i1 %610, label %611, label %701, !dx.controlflow.hints !54

; <label>:611                                     ; preds = %595
  %612 = fsub fast float 1.000000e+00, %555
  %613 = fdiv fast float 1.000000e+00, %612
  %614 = shl nsw i32 %546, 6
  %615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %614, i32 undef)  ; BufferLoad(srv,index,wot)
  %616 = extractvalue %dx.types.ResRet.i32 %615, 0
  %617 = extractvalue %dx.types.ResRet.i32 %615, 1
  %618 = extractvalue %dx.types.ResRet.i32 %615, 2
  %619 = extractvalue %dx.types.ResRet.i32 %615, 3
  %620 = fmul fast float %613, %558
  %621 = fmul fast float %613, %556
  %622 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 0
  store i32 %616, i32* %622, align 4
  %623 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 1
  store i32 %617, i32* %623, align 4
  %624 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 2
  store i32 %618, i32* %624, align 4
  %625 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 3
  store i32 %619, i32* %625, align 4
  %626 = fmul fast float %621, 4.000000e+00
  %627 = call float @dx.op.unary.f32(i32 27, float %626)  ; Round_ni(value)
  %628 = fmul fast float %620, 4.000000e+00
  %629 = call float @dx.op.unary.f32(i32 27, float %628)  ; Round_ni(value)
  %630 = fsub fast float 1.100000e+01, %627
  %631 = fmul fast float %627, 5.000000e-01
  %632 = fmul fast float %631, %630
  %633 = fadd fast float %629, 5.000000e-01
  %634 = fadd fast float %633, %632
  %635 = fptosi float %634 to i32
  %636 = fptosi float %627 to i32
  %637 = sub nsw i32 5, %636
  %638 = fmul fast float %629, 2.500000e-01
  %639 = fmul fast float %627, 2.500000e-01
  %640 = add nsw i32 %635, 1
  %641 = add nsw i32 %635, %637
  %642 = fsub fast float %620, %638
  %643 = fmul fast float %642, 4.000000e+00
  %644 = fsub fast float %621, %639
  %645 = fmul fast float %644, 4.000000e+00
  %646 = fadd fast float %642, %644
  %647 = fmul fast float %646, 4.000000e+00
  %648 = fcmp fast ogt float %647, 1.000000e+00
  br i1 %648, label %649, label %655, !dx.controlflow.hints !55

; <label>:649                                     ; preds = %611
  %650 = add nsw i32 %641, 1
  %651 = fadd fast float %645, -1.000000e+00
  %652 = fsub fast float -0.000000e+00, %651
  %653 = fadd fast float %643, -1.000000e+00
  %654 = fsub fast float -0.000000e+00, %653
  br label %655

; <label>:655                                     ; preds = %649, %611
  %656 = phi i32 [ %650, %649 ], [ %635, %611 ]
  %657 = phi i32 [ %640, %649 ], [ %641, %611 ]
  %658 = phi i32 [ %641, %649 ], [ %640, %611 ]
  %659 = phi float [ %654, %649 ], [ %645, %611 ]
  %660 = phi float [ %652, %649 ], [ %643, %611 ]
  %661 = fsub fast float 1.000000e+00, %659
  %662 = fsub fast float %661, %660
  %663 = lshr i32 %658, 2
  %664 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %663
  %665 = load i32, i32* %664, align 4, !tbaa !56, !noalias !60
  %666 = shl i32 %658, 3
  %667 = and i32 %666, 24
  %668 = lshr i32 %665, %667
  %669 = and i32 %668, 255
  %670 = sitofp i32 %669 to float
  %671 = fmul fast float %660, 0x3F70101020000000
  %672 = fmul fast float %671, %670
  %673 = lshr i32 %657, 2
  %674 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %673
  %675 = load i32, i32* %674, align 4, !tbaa !56, !noalias !60
  %676 = shl i32 %657, 3
  %677 = and i32 %676, 24
  %678 = lshr i32 %675, %677
  %679 = and i32 %678, 255
  %680 = sitofp i32 %679 to float
  %681 = fmul fast float %659, 0x3F70101020000000
  %682 = fmul fast float %681, %680
  %683 = lshr i32 %656, 2
  %684 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %683
  %685 = load i32, i32* %684, align 4, !tbaa !56, !noalias !60
  %686 = shl i32 %656, 3
  %687 = and i32 %686, 24
  %688 = lshr i32 %685, %687
  %689 = and i32 %688, 255
  %690 = sitofp i32 %689 to float
  %691 = fmul fast float %662, 0x3F70101020000000
  %692 = fmul fast float %691, %690
  %693 = fsub fast float 1.000000e+00, %672
  %694 = fsub fast float %693, %682
  %695 = fsub fast float %694, %692
  %696 = fmul fast float %555, 2.000000e+01
  %697 = fadd fast float %696, 1.000000e+00
  %698 = fmul fast float %695, 2.000000e+01
  %699 = fsub fast float %697, %698
  %700 = call float @dx.op.unary.f32(i32 7, float %699)  ; Saturate(value)
  br label %701

; <label>:701                                     ; preds = %655, %595
  %702 = phi float [ %700, %655 ], [ 1.000000e+00, %595 ]
  store float %702, float* %606, align 4, !tbaa !68, !noalias !60
  %703 = icmp slt i32 %599, 0
  br i1 %703, label %704, label %795, !dx.controlflow.hints !54

; <label>:704                                     ; preds = %701
  %705 = fsub fast float 1.000000e+00, %556
  %706 = fdiv fast float 1.000000e+00, %705
  %707 = shl i32 %546, 6
  %708 = or i32 %707, 16
  %709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %708, i32 undef)  ; BufferLoad(srv,index,wot)
  %710 = extractvalue %dx.types.ResRet.i32 %709, 0
  %711 = extractvalue %dx.types.ResRet.i32 %709, 1
  %712 = extractvalue %dx.types.ResRet.i32 %709, 2
  %713 = extractvalue %dx.types.ResRet.i32 %709, 3
  %714 = fmul fast float %706, %555
  %715 = fmul fast float %706, %558
  %716 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 0
  store i32 %710, i32* %716, align 4
  %717 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 1
  store i32 %711, i32* %717, align 4
  %718 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 2
  store i32 %712, i32* %718, align 4
  %719 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 3
  store i32 %713, i32* %719, align 4
  %720 = fmul fast float %715, 4.000000e+00
  %721 = call float @dx.op.unary.f32(i32 27, float %720)  ; Round_ni(value)
  %722 = fmul fast float %714, 4.000000e+00
  %723 = call float @dx.op.unary.f32(i32 27, float %722)  ; Round_ni(value)
  %724 = fsub fast float 1.100000e+01, %721
  %725 = fmul fast float %721, 5.000000e-01
  %726 = fmul fast float %725, %724
  %727 = fadd fast float %723, 5.000000e-01
  %728 = fadd fast float %727, %726
  %729 = fptosi float %728 to i32
  %730 = fptosi float %721 to i32
  %731 = sub nsw i32 5, %730
  %732 = fmul fast float %723, 2.500000e-01
  %733 = fmul fast float %721, 2.500000e-01
  %734 = add nsw i32 %729, 1
  %735 = add nsw i32 %729, %731
  %736 = fsub fast float %714, %732
  %737 = fmul fast float %736, 4.000000e+00
  %738 = fsub fast float %715, %733
  %739 = fmul fast float %738, 4.000000e+00
  %740 = fadd fast float %736, %738
  %741 = fmul fast float %740, 4.000000e+00
  %742 = fcmp fast ogt float %741, 1.000000e+00
  br i1 %742, label %743, label %749, !dx.controlflow.hints !55

; <label>:743                                     ; preds = %704
  %744 = add nsw i32 %735, 1
  %745 = fadd fast float %739, -1.000000e+00
  %746 = fsub fast float -0.000000e+00, %745
  %747 = fadd fast float %737, -1.000000e+00
  %748 = fsub fast float -0.000000e+00, %747
  br label %749

; <label>:749                                     ; preds = %743, %704
  %750 = phi i32 [ %744, %743 ], [ %729, %704 ]
  %751 = phi i32 [ %734, %743 ], [ %735, %704 ]
  %752 = phi i32 [ %735, %743 ], [ %734, %704 ]
  %753 = phi float [ %748, %743 ], [ %739, %704 ]
  %754 = phi float [ %746, %743 ], [ %737, %704 ]
  %755 = fsub fast float 1.000000e+00, %753
  %756 = fsub fast float %755, %754
  %757 = lshr i32 %752, 2
  %758 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %757
  %759 = load i32, i32* %758, align 4, !tbaa !56, !noalias !60
  %760 = shl i32 %752, 3
  %761 = and i32 %760, 24
  %762 = lshr i32 %759, %761
  %763 = and i32 %762, 255
  %764 = sitofp i32 %763 to float
  %765 = fmul fast float %754, 0x3F70101020000000
  %766 = fmul fast float %765, %764
  %767 = lshr i32 %751, 2
  %768 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %767
  %769 = load i32, i32* %768, align 4, !tbaa !56, !noalias !60
  %770 = shl i32 %751, 3
  %771 = and i32 %770, 24
  %772 = lshr i32 %769, %771
  %773 = and i32 %772, 255
  %774 = sitofp i32 %773 to float
  %775 = fmul fast float %753, 0x3F70101020000000
  %776 = fmul fast float %775, %774
  %777 = lshr i32 %750, 2
  %778 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %777
  %779 = load i32, i32* %778, align 4, !tbaa !56, !noalias !60
  %780 = shl i32 %750, 3
  %781 = and i32 %780, 24
  %782 = lshr i32 %779, %781
  %783 = and i32 %782, 255
  %784 = sitofp i32 %783 to float
  %785 = fmul fast float %756, 0x3F70101020000000
  %786 = fmul fast float %785, %784
  %787 = fsub fast float 1.000000e+00, %766
  %788 = fsub fast float %787, %776
  %789 = fsub fast float %788, %786
  %790 = fmul fast float %556, 2.000000e+01
  %791 = fadd fast float %790, 1.000000e+00
  %792 = fmul fast float %789, 2.000000e+01
  %793 = fsub fast float %791, %792
  %794 = call float @dx.op.unary.f32(i32 7, float %793)  ; Saturate(value)
  br label %795

; <label>:795                                     ; preds = %749, %701
  %796 = phi float [ %794, %749 ], [ 1.000000e+00, %701 ]
  store float %796, float* %607, align 4, !tbaa !68, !noalias !60
  %797 = fadd fast float %796, %702
  %798 = icmp slt i32 %600, 0
  br i1 %798, label %799, label %890, !dx.controlflow.hints !54

; <label>:799                                     ; preds = %795
  %800 = fsub fast float 1.000000e+00, %557
  %801 = fdiv fast float 1.000000e+00, %800
  %802 = shl i32 %546, 6
  %803 = or i32 %802, 32
  %804 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %803, i32 undef)  ; BufferLoad(srv,index,wot)
  %805 = extractvalue %dx.types.ResRet.i32 %804, 0
  %806 = extractvalue %dx.types.ResRet.i32 %804, 1
  %807 = extractvalue %dx.types.ResRet.i32 %804, 2
  %808 = extractvalue %dx.types.ResRet.i32 %804, 3
  %809 = fmul fast float %801, %555
  %810 = fmul fast float %801, %556
  %811 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 0
  store i32 %805, i32* %811, align 4
  %812 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 1
  store i32 %806, i32* %812, align 4
  %813 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 2
  store i32 %807, i32* %813, align 4
  %814 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 3
  store i32 %808, i32* %814, align 4
  %815 = fmul fast float %810, 4.000000e+00
  %816 = call float @dx.op.unary.f32(i32 27, float %815)  ; Round_ni(value)
  %817 = fmul fast float %809, 4.000000e+00
  %818 = call float @dx.op.unary.f32(i32 27, float %817)  ; Round_ni(value)
  %819 = fsub fast float 1.100000e+01, %816
  %820 = fmul fast float %816, 5.000000e-01
  %821 = fmul fast float %820, %819
  %822 = fadd fast float %818, 5.000000e-01
  %823 = fadd fast float %822, %821
  %824 = fptosi float %823 to i32
  %825 = fptosi float %816 to i32
  %826 = sub nsw i32 5, %825
  %827 = fmul fast float %818, 2.500000e-01
  %828 = fmul fast float %816, 2.500000e-01
  %829 = add nsw i32 %824, 1
  %830 = add nsw i32 %824, %826
  %831 = fsub fast float %809, %827
  %832 = fmul fast float %831, 4.000000e+00
  %833 = fsub fast float %810, %828
  %834 = fmul fast float %833, 4.000000e+00
  %835 = fadd fast float %831, %833
  %836 = fmul fast float %835, 4.000000e+00
  %837 = fcmp fast ogt float %836, 1.000000e+00
  br i1 %837, label %838, label %844, !dx.controlflow.hints !55

; <label>:838                                     ; preds = %799
  %839 = add nsw i32 %830, 1
  %840 = fadd fast float %834, -1.000000e+00
  %841 = fsub fast float -0.000000e+00, %840
  %842 = fadd fast float %832, -1.000000e+00
  %843 = fsub fast float -0.000000e+00, %842
  br label %844

; <label>:844                                     ; preds = %838, %799
  %845 = phi i32 [ %839, %838 ], [ %824, %799 ]
  %846 = phi i32 [ %829, %838 ], [ %830, %799 ]
  %847 = phi i32 [ %830, %838 ], [ %829, %799 ]
  %848 = phi float [ %843, %838 ], [ %834, %799 ]
  %849 = phi float [ %841, %838 ], [ %832, %799 ]
  %850 = fsub fast float 1.000000e+00, %848
  %851 = fsub fast float %850, %849
  %852 = lshr i32 %847, 2
  %853 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %852
  %854 = load i32, i32* %853, align 4, !tbaa !56, !noalias !60
  %855 = shl i32 %847, 3
  %856 = and i32 %855, 24
  %857 = lshr i32 %854, %856
  %858 = and i32 %857, 255
  %859 = sitofp i32 %858 to float
  %860 = fmul fast float %849, 0x3F70101020000000
  %861 = fmul fast float %860, %859
  %862 = lshr i32 %846, 2
  %863 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %862
  %864 = load i32, i32* %863, align 4, !tbaa !56, !noalias !60
  %865 = shl i32 %846, 3
  %866 = and i32 %865, 24
  %867 = lshr i32 %864, %866
  %868 = and i32 %867, 255
  %869 = sitofp i32 %868 to float
  %870 = fmul fast float %848, 0x3F70101020000000
  %871 = fmul fast float %870, %869
  %872 = lshr i32 %845, 2
  %873 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %872
  %874 = load i32, i32* %873, align 4, !tbaa !56, !noalias !60
  %875 = shl i32 %845, 3
  %876 = and i32 %875, 24
  %877 = lshr i32 %874, %876
  %878 = and i32 %877, 255
  %879 = sitofp i32 %878 to float
  %880 = fmul fast float %851, 0x3F70101020000000
  %881 = fmul fast float %880, %879
  %882 = fsub fast float 1.000000e+00, %861
  %883 = fsub fast float %882, %871
  %884 = fsub fast float %883, %881
  %885 = fmul fast float %557, 2.000000e+01
  %886 = fadd fast float %885, 1.000000e+00
  %887 = fmul fast float %884, 2.000000e+01
  %888 = fsub fast float %886, %887
  %889 = call float @dx.op.unary.f32(i32 7, float %888)  ; Saturate(value)
  br label %890

; <label>:890                                     ; preds = %844, %795
  %891 = phi float [ %889, %844 ], [ 1.000000e+00, %795 ]
  store float %891, float* %608, align 4, !tbaa !68, !noalias !60
  %892 = fadd fast float %797, %891
  %893 = icmp slt i32 %601, 0
  br i1 %893, label %894, label %985, !dx.controlflow.hints !54

; <label>:894                                     ; preds = %890
  %895 = fsub fast float 1.000000e+00, %558
  %896 = fdiv fast float 1.000000e+00, %895
  %897 = shl i32 %546, 6
  %898 = or i32 %897, 48
  %899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %898, i32 undef)  ; BufferLoad(srv,index,wot)
  %900 = extractvalue %dx.types.ResRet.i32 %899, 0
  %901 = extractvalue %dx.types.ResRet.i32 %899, 1
  %902 = extractvalue %dx.types.ResRet.i32 %899, 2
  %903 = extractvalue %dx.types.ResRet.i32 %899, 3
  %904 = fmul fast float %896, %555
  %905 = fmul fast float %896, %556
  %906 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 0
  store i32 %900, i32* %906, align 4
  %907 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 1
  store i32 %901, i32* %907, align 4
  %908 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 2
  store i32 %902, i32* %908, align 4
  %909 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 3
  store i32 %903, i32* %909, align 4
  %910 = fmul fast float %905, 4.000000e+00
  %911 = call float @dx.op.unary.f32(i32 27, float %910)  ; Round_ni(value)
  %912 = fmul fast float %904, 4.000000e+00
  %913 = call float @dx.op.unary.f32(i32 27, float %912)  ; Round_ni(value)
  %914 = fsub fast float 1.100000e+01, %911
  %915 = fmul fast float %911, 5.000000e-01
  %916 = fmul fast float %915, %914
  %917 = fadd fast float %913, 5.000000e-01
  %918 = fadd fast float %917, %916
  %919 = fptosi float %918 to i32
  %920 = fptosi float %911 to i32
  %921 = sub nsw i32 5, %920
  %922 = fmul fast float %913, 2.500000e-01
  %923 = fmul fast float %911, 2.500000e-01
  %924 = add nsw i32 %919, 1
  %925 = add nsw i32 %919, %921
  %926 = fsub fast float %904, %922
  %927 = fmul fast float %926, 4.000000e+00
  %928 = fsub fast float %905, %923
  %929 = fmul fast float %928, 4.000000e+00
  %930 = fadd fast float %926, %928
  %931 = fmul fast float %930, 4.000000e+00
  %932 = fcmp fast ogt float %931, 1.000000e+00
  br i1 %932, label %933, label %939, !dx.controlflow.hints !55

; <label>:933                                     ; preds = %894
  %934 = add nsw i32 %925, 1
  %935 = fadd fast float %929, -1.000000e+00
  %936 = fsub fast float -0.000000e+00, %935
  %937 = fadd fast float %927, -1.000000e+00
  %938 = fsub fast float -0.000000e+00, %937
  br label %939

; <label>:939                                     ; preds = %933, %894
  %940 = phi i32 [ %934, %933 ], [ %919, %894 ]
  %941 = phi i32 [ %924, %933 ], [ %925, %894 ]
  %942 = phi i32 [ %925, %933 ], [ %924, %894 ]
  %943 = phi float [ %938, %933 ], [ %929, %894 ]
  %944 = phi float [ %936, %933 ], [ %927, %894 ]
  %945 = fsub fast float 1.000000e+00, %943
  %946 = fsub fast float %945, %944
  %947 = lshr i32 %942, 2
  %948 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %947
  %949 = load i32, i32* %948, align 4, !tbaa !56, !noalias !60
  %950 = shl i32 %942, 3
  %951 = and i32 %950, 24
  %952 = lshr i32 %949, %951
  %953 = and i32 %952, 255
  %954 = sitofp i32 %953 to float
  %955 = fmul fast float %944, 0x3F70101020000000
  %956 = fmul fast float %955, %954
  %957 = lshr i32 %941, 2
  %958 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %957
  %959 = load i32, i32* %958, align 4, !tbaa !56, !noalias !60
  %960 = shl i32 %941, 3
  %961 = and i32 %960, 24
  %962 = lshr i32 %959, %961
  %963 = and i32 %962, 255
  %964 = sitofp i32 %963 to float
  %965 = fmul fast float %943, 0x3F70101020000000
  %966 = fmul fast float %965, %964
  %967 = lshr i32 %940, 2
  %968 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %967
  %969 = load i32, i32* %968, align 4, !tbaa !56, !noalias !60
  %970 = shl i32 %940, 3
  %971 = and i32 %970, 24
  %972 = lshr i32 %969, %971
  %973 = and i32 %972, 255
  %974 = sitofp i32 %973 to float
  %975 = fmul fast float %946, 0x3F70101020000000
  %976 = fmul fast float %975, %974
  %977 = fsub fast float 1.000000e+00, %956
  %978 = fsub fast float %977, %966
  %979 = fsub fast float %978, %976
  %980 = fmul fast float %558, 2.000000e+01
  %981 = fadd fast float %980, 1.000000e+00
  %982 = fmul fast float %979, 2.000000e+01
  %983 = fsub fast float %981, %982
  %984 = call float @dx.op.unary.f32(i32 7, float %983)  ; Saturate(value)
  br label %985

; <label>:985                                     ; preds = %939, %890
  %986 = phi float [ %984, %939 ], [ 1.000000e+00, %890 ]
  store float %986, float* %609, align 4, !tbaa !68, !noalias !60
  %987 = fadd fast float %892, %986
  %988 = fcmp fast oeq float %987, 0.000000e+00
  br i1 %988, label %989, label %990, !dx.controlflow.hints !70

; <label>:989                                     ; preds = %985
  store float 2.500000e-01, float* %606, align 4
  store float 2.500000e-01, float* %607, align 4
  store float 2.500000e-01, float* %608, align 4
  store float 2.500000e-01, float* %609, align 4
  br label %990

; <label>:990                                     ; preds = %989, %985
  %991 = phi float [ 2.500000e-01, %989 ], [ %702, %985 ]
  br label %992

; <label>:992                                     ; preds = %1119, %990
  %993 = phi float [ %1121, %1119 ], [ %991, %990 ]
  %994 = phi float [ %1104, %1119 ], [ 0.000000e+00, %990 ]
  %995 = phi float [ %1105, %1119 ], [ 0.000000e+00, %990 ]
  %996 = phi float [ %1106, %1119 ], [ 0.000000e+00, %990 ]
  %997 = phi float [ %1107, %1119 ], [ 0.000000e+00, %990 ]
  %998 = phi float [ %1108, %1119 ], [ 0.000000e+00, %990 ]
  %999 = phi float [ %1109, %1119 ], [ 0.000000e+00, %990 ]
  %1000 = phi float [ %1110, %1119 ], [ 0.000000e+00, %990 ]
  %1001 = phi float [ %1111, %1119 ], [ 0.000000e+00, %990 ]
  %1002 = phi float [ %1112, %1119 ], [ 0.000000e+00, %990 ]
  %1003 = phi float [ %1113, %1119 ], [ 0.000000e+00, %990 ]
  %1004 = phi float [ %1114, %1119 ], [ 0.000000e+00, %990 ]
  %1005 = phi float [ %1115, %1119 ], [ 0.000000e+00, %990 ]
  %1006 = phi float [ %1116, %1119 ], [ 0.000000e+00, %990 ]
  %1007 = phi i32 [ %1117, %1119 ], [ 0, %990 ]
  %1008 = fcmp fast ogt float %993, 0.000000e+00
  br i1 %1008, label %1009, label %1103, !dx.controlflow.hints !71

; <label>:1009                                    ; preds = %992
  %1010 = getelementptr [4 x float], [4 x float]* %29, i32 0, i32 %1007
  %1011 = load float, float* %1010, align 4, !tbaa !68, !noalias !60
  %1012 = getelementptr [4 x i32], [4 x i32]* %30, i32 0, i32 %1007
  %1013 = load i32, i32* %1012, align 4, !tbaa !56, !noalias !60
  %1014 = fmul fast float %1011, %993
  %1015 = shl i32 %1013, 5
  %1016 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1015, i32 undef)  ; BufferLoad(srv,index,wot)
  %1017 = extractvalue %dx.types.ResRet.i32 %1016, 0
  %1018 = extractvalue %dx.types.ResRet.i32 %1016, 1
  %1019 = extractvalue %dx.types.ResRet.i32 %1016, 3
  %1020 = or i32 %1015, 16
  %1021 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1020, i32 undef)  ; BufferLoad(srv,index,wot)
  %1022 = extractvalue %dx.types.ResRet.i32 %1021, 1
  %1023 = shl i32 %1017, 4
  %1024 = and i32 %1023, 32752
  %1025 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1024)  ; LegacyF16ToF32(value)
  %1026 = lshr i32 %1017, 7
  %1027 = and i32 %1026, 32752
  %1028 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1027)  ; LegacyF16ToF32(value)
  %1029 = lshr i32 %1017, 22
  %1030 = shl nuw nsw i32 %1029, 5
  %1031 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1030)  ; LegacyF16ToF32(value)
  %1032 = and i32 %1018, 255
  %1033 = uitofp i32 %1032 to float
  %1034 = fmul fast float %1033, 0x3F80204080000000
  %1035 = fadd fast float %1034, -1.000000e+00
  %1036 = lshr i32 %1018, 8
  %1037 = and i32 %1036, 255
  %1038 = uitofp i32 %1037 to float
  %1039 = fmul fast float %1038, 0x3F80204080000000
  %1040 = fadd fast float %1039, -1.000000e+00
  %1041 = lshr i32 %1018, 16
  %1042 = and i32 %1041, 255
  %1043 = uitofp i32 %1042 to float
  %1044 = fmul fast float %1043, 0x3F80204080000000
  %1045 = fadd fast float %1044, -1.000000e+00
  %1046 = and i32 %1019, 255
  %1047 = uitofp i32 %1046 to float
  %1048 = fmul fast float %1047, 0x3F80204080000000
  %1049 = fadd fast float %1048, -1.000000e+00
  %1050 = lshr i32 %1019, 8
  %1051 = and i32 %1050, 255
  %1052 = uitofp i32 %1051 to float
  %1053 = fmul fast float %1052, 0x3F80204080000000
  %1054 = fadd fast float %1053, -1.000000e+00
  %1055 = lshr i32 %1019, 16
  %1056 = and i32 %1055, 255
  %1057 = uitofp i32 %1056 to float
  %1058 = fmul fast float %1057, 0x3F80204080000000
  %1059 = fadd fast float %1058, -1.000000e+00
  %1060 = and i32 %1022, 255
  %1061 = uitofp i32 %1060 to float
  %1062 = fmul fast float %1061, 0x3F80204080000000
  %1063 = fadd fast float %1062, -1.000000e+00
  %1064 = lshr i32 %1022, 8
  %1065 = and i32 %1064, 255
  %1066 = uitofp i32 %1065 to float
  %1067 = fmul fast float %1066, 0x3F80204080000000
  %1068 = fadd fast float %1067, -1.000000e+00
  %1069 = lshr i32 %1022, 16
  %1070 = and i32 %1069, 255
  %1071 = uitofp i32 %1070 to float
  %1072 = fmul fast float %1071, 0x3F80204080000000
  %1073 = fadd fast float %1072, -1.000000e+00
  %1074 = fmul fast float %1025, %1014
  %1075 = fadd fast float %1074, %997
  %1076 = fmul fast float %1014, 0x3FFBB67AE0000000
  %1077 = fmul fast float %1076, %1025
  %1078 = fmul fast float %1077, %1035
  %1079 = fadd fast float %1078, %996
  %1080 = fmul fast float %1077, %1040
  %1081 = fadd fast float %1080, %995
  %1082 = fmul fast float %1077, %1045
  %1083 = fadd fast float %1082, %994
  %1084 = fmul fast float %1028, %1014
  %1085 = fadd fast float %1084, %1001
  %1086 = fmul fast float %1076, %1028
  %1087 = fmul fast float %1086, %1049
  %1088 = fadd fast float %1087, %1000
  %1089 = fmul fast float %1086, %1054
  %1090 = fadd fast float %1089, %999
  %1091 = fmul fast float %1086, %1059
  %1092 = fadd fast float %1091, %998
  %1093 = fmul fast float %1031, %1014
  %1094 = fadd fast float %1093, %1005
  %1095 = fmul fast float %1076, %1031
  %1096 = fmul fast float %1095, %1063
  %1097 = fadd fast float %1096, %1004
  %1098 = fmul fast float %1095, %1068
  %1099 = fadd fast float %1098, %1003
  %1100 = fmul fast float %1095, %1073
  %1101 = fadd fast float %1100, %1002
  %1102 = fadd fast float %1014, %1006
  br label %1103

; <label>:1103                                    ; preds = %1009, %992
  %1104 = phi float [ %1083, %1009 ], [ %994, %992 ]
  %1105 = phi float [ %1081, %1009 ], [ %995, %992 ]
  %1106 = phi float [ %1079, %1009 ], [ %996, %992 ]
  %1107 = phi float [ %1075, %1009 ], [ %997, %992 ]
  %1108 = phi float [ %1092, %1009 ], [ %998, %992 ]
  %1109 = phi float [ %1090, %1009 ], [ %999, %992 ]
  %1110 = phi float [ %1088, %1009 ], [ %1000, %992 ]
  %1111 = phi float [ %1085, %1009 ], [ %1001, %992 ]
  %1112 = phi float [ %1101, %1009 ], [ %1002, %992 ]
  %1113 = phi float [ %1099, %1009 ], [ %1003, %992 ]
  %1114 = phi float [ %1097, %1009 ], [ %1004, %992 ]
  %1115 = phi float [ %1094, %1009 ], [ %1005, %992 ]
  %1116 = phi float [ %1102, %1009 ], [ %1006, %992 ]
  %1117 = add nuw nsw i32 %1007, 1
  %1118 = icmp eq i32 %1117, 4
  br i1 %1118, label %1122, label %1119

; <label>:1119                                    ; preds = %1103
  %1120 = getelementptr [4 x float], [4 x float]* %31, i32 0, i32 %1117
  %1121 = load float, float* %1120, align 4, !tbaa !68, !noalias !60
  br label %992

; <label>:1122                                    ; preds = %1103
  %1123 = fcmp fast ogt float %1116, 0.000000e+00
  %1124 = fdiv fast float 1.000000e+00, %1116
  %1125 = select i1 %1123, float %1124, float 1.000000e+00
  %1126 = fmul fast float %1125, %1107
  %1127 = fmul fast float %1125, %1106
  %1128 = fmul fast float %1125, %1105
  %1129 = fmul fast float %1125, %1104
  %1130 = fmul fast float %1125, %1111
  %1131 = fmul fast float %1125, %1110
  %1132 = fmul fast float %1125, %1109
  %1133 = fmul fast float %1125, %1108
  %1134 = fmul fast float %1125, %1115
  %1135 = fmul fast float %1125, %1114
  %1136 = fmul fast float %1125, %1113
  %1137 = fmul fast float %1125, %1112
  br label %1138

; <label>:1138                                    ; preds = %1122, %560, %234
  %1139 = phi float [ 0.000000e+00, %234 ], [ %1137, %1122 ], [ %594, %560 ]
  %1140 = phi float [ 0.000000e+00, %234 ], [ %1136, %1122 ], [ %592, %560 ]
  %1141 = phi float [ 0.000000e+00, %234 ], [ %1135, %1122 ], [ %590, %560 ]
  %1142 = phi float [ 0.000000e+00, %234 ], [ %1134, %1122 ], [ %588, %560 ]
  %1143 = phi float [ 0.000000e+00, %234 ], [ %1133, %1122 ], [ %586, %560 ]
  %1144 = phi float [ 0.000000e+00, %234 ], [ %1132, %1122 ], [ %584, %560 ]
  %1145 = phi float [ 0.000000e+00, %234 ], [ %1131, %1122 ], [ %582, %560 ]
  %1146 = phi float [ 0.000000e+00, %234 ], [ %1130, %1122 ], [ %580, %560 ]
  %1147 = phi float [ 0.000000e+00, %234 ], [ %1129, %1122 ], [ %578, %560 ]
  %1148 = phi float [ 0.000000e+00, %234 ], [ %1128, %1122 ], [ %576, %560 ]
  %1149 = phi float [ 0.000000e+00, %234 ], [ %1127, %1122 ], [ %574, %560 ]
  %1150 = phi float [ 0.000000e+00, %234 ], [ %1126, %1122 ], [ %572, %560 ]
  %1151 = fcmp fast olt float %235, 1.000000e+00
  br i1 %1151, label %1152, label %1797, !dx.controlflow.hints !72

; <label>:1152                                    ; preds = %1138
  %1153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1154 = extractvalue %dx.types.CBufRet.f32 %1153, 0
  %1155 = extractvalue %dx.types.CBufRet.f32 %1153, 1
  %1156 = fsub fast float %185, %1154
  %1157 = fsub fast float %190, %1155
  %1158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1159 = extractvalue %dx.types.CBufRet.f32 %1158, 0
  %1160 = extractvalue %dx.types.CBufRet.f32 %1158, 1
  %1161 = fmul fast float %1156, %1159
  %1162 = fmul fast float %1157, %1160
  %1163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1164 = extractvalue %dx.types.CBufRet.f32 %1163, 0
  %1165 = fmul fast float %1164, %1161
  %1166 = extractvalue %dx.types.CBufRet.f32 %1163, 1
  %1167 = fadd fast float %1165, %1166
  %1168 = extractvalue %dx.types.CBufRet.f32 %1163, 2
  %1169 = fmul fast float %1168, %1162
  %1170 = extractvalue %dx.types.CBufRet.f32 %1163, 3
  %1171 = fadd fast float %1169, %1170
  %1172 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %21, float %1167, float %1171, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1173 = extractvalue %dx.types.ResRet.f32 %1172, 0
  %1174 = extractvalue %dx.types.ResRet.f32 %1172, 1
  %1175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1176 = extractvalue %dx.types.CBufRet.f32 %1175, 1
  %1177 = extractvalue %dx.types.CBufRet.f32 %1175, 0
  %1178 = fsub fast float %1176, %1177
  %1179 = fmul fast float %1178, %1173
  %1180 = fadd fast float %1179, %1177
  %1181 = extractvalue %dx.types.CBufRet.f32 %1175, 3
  %1182 = extractvalue %dx.types.CBufRet.f32 %1175, 2
  %1183 = fsub fast float %1181, %1182
  %1184 = fmul fast float %1183, %1174
  %1185 = fadd fast float %1184, %1182
  %1186 = fsub fast float %195, %1180
  %1187 = fsub fast float %1185, %1180
  %1188 = fdiv fast float %1186, %1187
  %1189 = call float @dx.op.unary.f32(i32 7, float %1188)  ; Saturate(value)
  %1190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %1191 = extractvalue %dx.types.CBufRet.f32 %1190, 0
  %1192 = fmul fast float %1191, %1189
  %1193 = extractvalue %dx.types.CBufRet.f32 %1190, 1
  %1194 = fadd fast float %1192, %1193
  %1195 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %21, float %1167, float %1171, float %1194, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1196 = extractvalue %dx.types.ResRet.f32 %1195, 0
  %1197 = extractvalue %dx.types.ResRet.f32 %1195, 1
  %1198 = extractvalue %dx.types.ResRet.f32 %1195, 2
  %1199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %1200 = extractvalue %dx.types.CBufRet.f32 %1199, 0
  %1201 = extractvalue %dx.types.CBufRet.f32 %1199, 1
  %1202 = extractvalue %dx.types.CBufRet.f32 %1199, 2
  %1203 = fmul fast float %1200, %1196
  %1204 = fmul fast float %1201, %1197
  %1205 = fmul fast float %1202, %1198
  %1206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %1207 = extractvalue %dx.types.CBufRet.f32 %1206, 0
  %1208 = extractvalue %dx.types.CBufRet.f32 %1206, 1
  %1209 = extractvalue %dx.types.CBufRet.f32 %1206, 2
  %1210 = fadd fast float %1203, %1207
  %1211 = fadd fast float %1204, %1208
  %1212 = fadd fast float %1205, %1209
  %1213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %1214 = extractvalue %dx.types.CBufRet.f32 %1213, 0
  %1215 = fmul fast float %1214, %1161
  %1216 = extractvalue %dx.types.CBufRet.f32 %1213, 1
  %1217 = fadd fast float %1215, %1216
  %1218 = extractvalue %dx.types.CBufRet.f32 %1213, 2
  %1219 = fmul fast float %1218, %1162
  %1220 = extractvalue %dx.types.CBufRet.f32 %1213, 3
  %1221 = fadd fast float %1219, %1220
  %1222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %1223 = extractvalue %dx.types.CBufRet.f32 %1222, 0
  %1224 = extractvalue %dx.types.CBufRet.f32 %1222, 1
  %1225 = extractvalue %dx.types.CBufRet.f32 %1222, 2
  %1226 = extractvalue %dx.types.CBufRet.f32 %1222, 3
  %1227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %1228 = extractvalue %dx.types.CBufRet.f32 %1227, 0
  %1229 = extractvalue %dx.types.CBufRet.f32 %1227, 1
  %1230 = extractvalue %dx.types.CBufRet.f32 %1227, 2
  %1231 = extractvalue %dx.types.CBufRet.f32 %1227, 3
  %1232 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %21, float %1217, float %1221, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1233 = extractvalue %dx.types.ResRet.f32 %1232, 0
  %1234 = extractvalue %dx.types.ResRet.f32 %1232, 1
  %1235 = extractvalue %dx.types.ResRet.f32 %1232, 2
  %1236 = extractvalue %dx.types.ResRet.f32 %1232, 3
  %1237 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %21, float %1217, float %1221, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1238 = extractvalue %dx.types.ResRet.f32 %1237, 0
  %1239 = extractvalue %dx.types.ResRet.f32 %1237, 1
  %1240 = extractvalue %dx.types.ResRet.f32 %1237, 2
  %1241 = extractvalue %dx.types.ResRet.f32 %1237, 3
  %1242 = fmul fast float %1233, %1210
  %1243 = fmul fast float %1238, %1210
  %1244 = fmul fast float %1240, %1210
  %1245 = fmul fast float %1236, %1210
  %1246 = fadd fast float %1242, %1223
  %1247 = fadd fast float %1243, %1224
  %1248 = fadd fast float %1244, %1225
  %1249 = fadd fast float %1245, %1226
  %1250 = fmul fast float %1234, %1210
  %1251 = fmul fast float %1239, %1210
  %1252 = fadd fast float %1250, %1228
  %1253 = fadd fast float %1251, %1229
  %1254 = fmul fast float %1235, %1210
  %1255 = fmul fast float %1241, %1210
  %1256 = fadd fast float %1254, %1230
  %1257 = fadd fast float %1255, %1231
  %1258 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %21, float %1217, float %1221, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1259 = extractvalue %dx.types.ResRet.f32 %1258, 0
  %1260 = extractvalue %dx.types.ResRet.f32 %1258, 1
  %1261 = extractvalue %dx.types.ResRet.f32 %1258, 2
  %1262 = extractvalue %dx.types.ResRet.f32 %1258, 3
  %1263 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %21, float %1217, float %1221, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1264 = extractvalue %dx.types.ResRet.f32 %1263, 0
  %1265 = extractvalue %dx.types.ResRet.f32 %1263, 1
  %1266 = extractvalue %dx.types.ResRet.f32 %1263, 2
  %1267 = extractvalue %dx.types.ResRet.f32 %1263, 3
  %1268 = fmul fast float %1259, %1211
  %1269 = fmul fast float %1264, %1211
  %1270 = fmul fast float %1266, %1211
  %1271 = fmul fast float %1262, %1211
  %1272 = fadd fast float %1246, %1268
  %1273 = fadd fast float %1247, %1269
  %1274 = fadd fast float %1248, %1270
  %1275 = fadd fast float %1249, %1271
  %1276 = fmul fast float %1260, %1211
  %1277 = fmul fast float %1265, %1211
  %1278 = fadd fast float %1252, %1276
  %1279 = fadd fast float %1253, %1277
  %1280 = fmul fast float %1261, %1211
  %1281 = fmul fast float %1267, %1211
  %1282 = fadd fast float %1256, %1280
  %1283 = fadd fast float %1257, %1281
  %1284 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %21, float %1217, float %1221, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1285 = extractvalue %dx.types.ResRet.f32 %1284, 0
  %1286 = extractvalue %dx.types.ResRet.f32 %1284, 1
  %1287 = extractvalue %dx.types.ResRet.f32 %1284, 2
  %1288 = extractvalue %dx.types.ResRet.f32 %1284, 3
  %1289 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %21, float %1217, float %1221, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1290 = extractvalue %dx.types.ResRet.f32 %1289, 0
  %1291 = extractvalue %dx.types.ResRet.f32 %1289, 1
  %1292 = extractvalue %dx.types.ResRet.f32 %1289, 2
  %1293 = extractvalue %dx.types.ResRet.f32 %1289, 3
  %1294 = fmul fast float %1285, %1212
  %1295 = fmul fast float %1290, %1212
  %1296 = fmul fast float %1292, %1212
  %1297 = fmul fast float %1288, %1212
  %1298 = fadd fast float %1272, %1294
  %1299 = fadd fast float %1273, %1295
  %1300 = fadd fast float %1274, %1296
  %1301 = fadd fast float %1275, %1297
  %1302 = fmul fast float %1286, %1212
  %1303 = fmul fast float %1291, %1212
  %1304 = fadd fast float %1278, %1302
  %1305 = fadd fast float %1279, %1303
  %1306 = fmul fast float %1287, %1212
  %1307 = fmul fast float %1293, %1212
  %1308 = fadd fast float %1282, %1306
  %1309 = fadd fast float %1283, %1307
  %1310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %1311 = extractvalue %dx.types.CBufRet.f32 %1310, 0
  %1312 = fsub fast float %185, %1311
  %1313 = fsub fast float %1154, %185
  %1314 = call float @dx.op.binary.f32(i32 35, float %1313, float %1312)  ; FMax(a,b)
  %1315 = extractvalue %dx.types.CBufRet.f32 %1310, 1
  %1316 = fsub fast float %190, %1315
  %1317 = fsub fast float %1155, %190
  %1318 = call float @dx.op.binary.f32(i32 35, float %1317, float %1316)  ; FMax(a,b)
  %1319 = call float @dx.op.binary.f32(i32 35, float %1314, float %1318)  ; FMax(a,b)
  %1320 = extractvalue %dx.types.CBufRet.f32 %1158, 3
  %1321 = fmul fast float %1320, %1319
  %1322 = call float @dx.op.unary.f32(i32 7, float %1321)  ; Saturate(value)
  %1323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %1324 = extractvalue %dx.types.CBufRet.f32 %1323, 0
  %1325 = extractvalue %dx.types.CBufRet.f32 %1323, 1
  %1326 = extractvalue %dx.types.CBufRet.f32 %1323, 2
  %1327 = extractvalue %dx.types.CBufRet.f32 %1323, 3
  %1328 = fsub fast float %1324, %1298
  %1329 = fsub fast float %1325, %1299
  %1330 = fsub fast float %1326, %1300
  %1331 = fsub fast float %1327, %1301
  %1332 = fmul fast float %1328, %1322
  %1333 = fmul fast float %1329, %1322
  %1334 = fmul fast float %1330, %1322
  %1335 = fmul fast float %1331, %1322
  %1336 = fadd fast float %1332, %1298
  %1337 = fadd fast float %1333, %1299
  %1338 = fadd fast float %1334, %1300
  %1339 = fadd fast float %1335, %1301
  %1340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %1341 = extractvalue %dx.types.CBufRet.f32 %1340, 0
  %1342 = extractvalue %dx.types.CBufRet.f32 %1340, 1
  %1343 = fsub fast float %1341, %1304
  %1344 = fsub fast float %1342, %1305
  %1345 = fmul fast float %1343, %1322
  %1346 = fmul fast float %1344, %1322
  %1347 = fadd fast float %1345, %1304
  %1348 = fadd fast float %1346, %1305
  %1349 = extractvalue %dx.types.CBufRet.f32 %1340, 2
  %1350 = extractvalue %dx.types.CBufRet.f32 %1340, 3
  %1351 = fsub fast float %1349, %1308
  %1352 = fsub fast float %1350, %1309
  %1353 = fmul fast float %1351, %1322
  %1354 = fmul fast float %1352, %1322
  %1355 = fadd fast float %1353, %1308
  %1356 = fadd fast float %1354, %1309
  %1357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %1358 = extractvalue %dx.types.CBufRet.f32 %1357, 0
  %1359 = fmul fast float %1358, %1336
  %1360 = fmul fast float %1358, %1337
  %1361 = fmul fast float %1358, %1338
  %1362 = fmul fast float %1358, %1339
  %1363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %1364 = extractvalue %dx.types.CBufRet.f32 %1363, 0
  %1365 = fmul fast float %1364, %1347
  %1366 = fmul fast float %1364, %1348
  %1367 = fadd fast float %1365, %1359
  %1368 = fadd fast float %1366, %1361
  %1369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %1370 = extractvalue %dx.types.CBufRet.f32 %1369, 0
  %1371 = fmul fast float %1370, %1355
  %1372 = fmul fast float %1370, %1356
  %1373 = fadd fast float %1367, %1371
  %1374 = fadd fast float %1368, %1372
  %1375 = extractvalue %dx.types.CBufRet.f32 %1357, 1
  %1376 = fmul fast float %1375, %1336
  %1377 = fmul fast float %1375, %1337
  %1378 = fmul fast float %1375, %1338
  %1379 = fmul fast float %1375, %1339
  %1380 = extractvalue %dx.types.CBufRet.f32 %1363, 1
  %1381 = fmul fast float %1380, %1347
  %1382 = fmul fast float %1380, %1348
  %1383 = fadd fast float %1381, %1376
  %1384 = fadd fast float %1382, %1378
  %1385 = extractvalue %dx.types.CBufRet.f32 %1369, 1
  %1386 = fmul fast float %1385, %1355
  %1387 = fmul fast float %1385, %1356
  %1388 = fadd fast float %1383, %1386
  %1389 = fadd fast float %1384, %1387
  %1390 = extractvalue %dx.types.CBufRet.f32 %1357, 2
  %1391 = fmul fast float %1390, %1336
  %1392 = fmul fast float %1390, %1337
  %1393 = fmul fast float %1390, %1338
  %1394 = fmul fast float %1390, %1339
  %1395 = extractvalue %dx.types.CBufRet.f32 %1363, 2
  %1396 = fmul fast float %1395, %1347
  %1397 = fmul fast float %1395, %1348
  %1398 = fadd fast float %1396, %1391
  %1399 = fadd fast float %1397, %1393
  %1400 = extractvalue %dx.types.CBufRet.f32 %1369, 2
  %1401 = fmul fast float %1400, %1355
  %1402 = fmul fast float %1400, %1356
  %1403 = fadd fast float %1398, %1401
  %1404 = fadd fast float %1399, %1402
  %1405 = fmul fast float %1392, %1392
  %1406 = fmul fast float %1404, %1404
  %1407 = fmul fast float %1394, %1394
  %1408 = fadd fast float %1407, %1405
  %1409 = fadd fast float %1408, %1406
  %1410 = call float @dx.op.unary.f32(i32 24, float %1409)  ; Sqrt(value)
  %1411 = fcmp fast ugt float %1410, 0.000000e+00
  br i1 %1411, label %1412, label %1427, !dx.controlflow.hints !73

; <label>:1412                                    ; preds = %1152
  %1413 = fsub fast float -0.000000e+00, %1394
  %1414 = fdiv fast float %1413, %1410
  %1415 = fsub fast float -0.000000e+00, %1392
  %1416 = fdiv fast float %1415, %1410
  %1417 = fdiv fast float %1404, %1410
  %1418 = fmul fast float %1403, 0x3FE279A760000000
  %1419 = fmul fast float %1416, %1392
  %1420 = fmul fast float %1417, %1404
  %1421 = fmul fast float %1414, %1394
  %1422 = fadd fast float %1419, %1421
  %1423 = fsub fast float %1422, %1420
  %1424 = call float @dx.op.unary.f32(i32 6, float %1423)  ; FAbs(value)
  %1425 = fadd fast float %1424, 0x3DDB7CDFE0000000
  %1426 = fdiv fast float %1418, %1425
  br label %1427

; <label>:1427                                    ; preds = %1412, %1152
  %1428 = phi float [ %1426, %1412 ], [ 1.000000e+00, %1152 ]
  %1429 = fmul fast float %1377, %1377
  %1430 = fmul fast float %1389, %1389
  %1431 = fmul fast float %1379, %1379
  %1432 = fadd fast float %1431, %1429
  %1433 = fadd fast float %1432, %1430
  %1434 = call float @dx.op.unary.f32(i32 24, float %1433)  ; Sqrt(value)
  %1435 = fcmp fast ugt float %1434, 0.000000e+00
  br i1 %1435, label %1436, label %1451, !dx.controlflow.hints !73

; <label>:1436                                    ; preds = %1427
  %1437 = fsub fast float -0.000000e+00, %1379
  %1438 = fdiv fast float %1437, %1434
  %1439 = fsub fast float -0.000000e+00, %1377
  %1440 = fdiv fast float %1439, %1434
  %1441 = fdiv fast float %1389, %1434
  %1442 = fmul fast float %1388, 0x3FE279A760000000
  %1443 = fmul fast float %1440, %1377
  %1444 = fmul fast float %1441, %1389
  %1445 = fmul fast float %1438, %1379
  %1446 = fadd fast float %1443, %1445
  %1447 = fsub fast float %1446, %1444
  %1448 = call float @dx.op.unary.f32(i32 6, float %1447)  ; FAbs(value)
  %1449 = fadd fast float %1448, 0x3DDB7CDFE0000000
  %1450 = fdiv fast float %1442, %1449
  br label %1451

; <label>:1451                                    ; preds = %1436, %1427
  %1452 = phi float [ %1450, %1436 ], [ 1.000000e+00, %1427 ]
  %1453 = call float @dx.op.binary.f32(i32 36, float %1452, float %1428)  ; FMin(a,b)
  %1454 = fmul fast float %1360, %1360
  %1455 = fmul fast float %1374, %1374
  %1456 = fmul fast float %1362, %1362
  %1457 = fadd fast float %1456, %1454
  %1458 = fadd fast float %1457, %1455
  %1459 = call float @dx.op.unary.f32(i32 24, float %1458)  ; Sqrt(value)
  %1460 = fcmp fast ugt float %1459, 0.000000e+00
  br i1 %1460, label %1461, label %1476, !dx.controlflow.hints !73

; <label>:1461                                    ; preds = %1451
  %1462 = fsub fast float -0.000000e+00, %1362
  %1463 = fdiv fast float %1462, %1459
  %1464 = fsub fast float -0.000000e+00, %1360
  %1465 = fdiv fast float %1464, %1459
  %1466 = fdiv fast float %1374, %1459
  %1467 = fmul fast float %1373, 0x3FE279A760000000
  %1468 = fmul fast float %1465, %1360
  %1469 = fmul fast float %1466, %1374
  %1470 = fmul fast float %1463, %1362
  %1471 = fadd fast float %1468, %1470
  %1472 = fsub fast float %1471, %1469
  %1473 = call float @dx.op.unary.f32(i32 6, float %1472)  ; FAbs(value)
  %1474 = fadd fast float %1473, 0x3DDB7CDFE0000000
  %1475 = fdiv fast float %1467, %1474
  br label %1476

; <label>:1476                                    ; preds = %1461, %1451
  %1477 = phi float [ %1475, %1461 ], [ 1.000000e+00, %1451 ]
  %1478 = call float @dx.op.binary.f32(i32 36, float %1477, float %1453)  ; FMin(a,b)
  %1479 = call float @dx.op.unary.f32(i32 7, float %1478)  ; Saturate(value)
  %1480 = fcmp fast olt float %1479, 1.000000e+00
  br i1 %1480, label %1481, label %1491, !dx.controlflow.hints !74

; <label>:1481                                    ; preds = %1476
  %1482 = fmul fast float %1479, %1360
  %1483 = fmul fast float %1479, %1374
  %1484 = fmul fast float %1479, %1362
  %1485 = fmul fast float %1479, %1377
  %1486 = fmul fast float %1479, %1389
  %1487 = fmul fast float %1479, %1379
  %1488 = fmul fast float %1479, %1392
  %1489 = fmul fast float %1479, %1404
  %1490 = fmul fast float %1479, %1394
  br label %1491

; <label>:1491                                    ; preds = %1481, %1476
  %1492 = phi float [ %1488, %1481 ], [ %1392, %1476 ]
  %1493 = phi float [ %1489, %1481 ], [ %1404, %1476 ]
  %1494 = phi float [ %1490, %1481 ], [ %1394, %1476 ]
  %1495 = phi float [ %1485, %1481 ], [ %1377, %1476 ]
  %1496 = phi float [ %1486, %1481 ], [ %1389, %1476 ]
  %1497 = phi float [ %1487, %1481 ], [ %1379, %1476 ]
  %1498 = phi float [ %1482, %1481 ], [ %1360, %1476 ]
  %1499 = phi float [ %1483, %1481 ], [ %1374, %1476 ]
  %1500 = phi float [ %1484, %1481 ], [ %1362, %1476 ]
  %1501 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1373)  ; FMax(a,b)
  %1502 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1388)  ; FMax(a,b)
  %1503 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1403)  ; FMax(a,b)
  %1504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %1505 = extractvalue %dx.types.CBufRet.f32 %1504, 0
  %1506 = fcmp fast ogt float %1505, 0.000000e+00
  %1507 = fcmp fast oge float %1161, 0.000000e+00
  %1508 = and i1 %1507, %1506
  %1509 = fcmp fast ole float %1161, 1.000000e+00
  %1510 = and i1 %1509, %1508
  %1511 = fcmp fast oge float %1162, 0.000000e+00
  %1512 = and i1 %1511, %1510
  %1513 = fcmp fast ole float %1162, 1.000000e+00
  %1514 = and i1 %1513, %1512
  br i1 %1514, label %1515, label %1660, !dx.controlflow.hints !75

; <label>:1515                                    ; preds = %1491
  %1516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1517 = extractvalue %dx.types.CBufRet.f32 %1516, 2
  %1518 = extractvalue %dx.types.CBufRet.f32 %1516, 3
  %1519 = fmul fast float %1517, %1161
  %1520 = fmul fast float %1518, %1162
  %1521 = call float @dx.op.unary.f32(i32 27, float %1519)  ; Round_ni(value)
  %1522 = call float @dx.op.unary.f32(i32 27, float %1520)  ; Round_ni(value)
  %1523 = fptosi float %1521 to i32
  %1524 = fptosi float %1522 to i32
  %1525 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %6, i32 0, i32 %1523, i32 %1524, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1526 = extractvalue %dx.types.ResRet.i32 %1525, 0
  %1527 = and i32 %1526, 65535
  %1528 = lshr i32 %1526, 16
  %1529 = icmp eq i32 %1527, 65535
  br i1 %1529, label %1566, label %1530, !dx.controlflow.hints !76

; <label>:1530                                    ; preds = %1515
  %1531 = extractvalue %dx.types.CBufRet.f32 %1504, 1
  %1532 = extractvalue %dx.types.CBufRet.f32 %1516, 0
  %1533 = extractvalue %dx.types.CBufRet.f32 %1516, 1
  %1534 = fmul fast float %1532, %1161
  %1535 = fmul fast float %1533, %1162
  %1536 = fmul fast float %1534, 1.250000e-01
  %1537 = fmul fast float %1535, 1.250000e-01
  %1538 = call float @dx.op.unary.f32(i32 27, float %1536)  ; Round_ni(value)
  %1539 = call float @dx.op.unary.f32(i32 27, float %1537)  ; Round_ni(value)
  %1540 = fmul fast float %1538, 8.000000e+00
  %1541 = fmul fast float %1539, 8.000000e+00
  %1542 = and i32 %1526, 255
  %1543 = lshr i32 %1526, 8
  %1544 = and i32 %1543, 255
  %1545 = mul nuw nsw i32 %1542, 9
  %1546 = uitofp i32 %1545 to float
  %1547 = mul nuw nsw i32 %1544, 9
  %1548 = uitofp i32 %1547 to float
  %1549 = fadd fast float %1546, 5.000000e-01
  %1550 = fadd fast float %1549, %1534
  %1551 = fsub fast float %1550, %1540
  %1552 = fadd fast float %1548, 5.000000e-01
  %1553 = fadd fast float %1552, %1535
  %1554 = fsub fast float %1553, %1541
  %1555 = fdiv fast float %1551, %1505
  %1556 = fdiv fast float %1554, %1531
  %1557 = fmul fast float %1189, 4.375000e-01
  %1558 = fadd fast float %1557, 3.125000e-02
  %1559 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %21, float %1555, float %1556, float %1558, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1560 = extractvalue %dx.types.ResRet.f32 %1559, 0
  %1561 = extractvalue %dx.types.ResRet.f32 %1559, 1
  %1562 = extractvalue %dx.types.ResRet.f32 %1559, 2
  %1563 = fadd fast float %1560, %1501
  %1564 = fadd fast float %1561, %1502
  %1565 = fadd fast float %1562, %1503
  br label %1566

; <label>:1566                                    ; preds = %1530, %1515
  %1567 = phi float [ %1565, %1530 ], [ %1503, %1515 ]
  %1568 = phi float [ %1564, %1530 ], [ %1502, %1515 ]
  %1569 = phi float [ %1563, %1530 ], [ %1501, %1515 ]
  %1570 = icmp eq i32 %1528, 65535
  br i1 %1570, label %1660, label %1571, !dx.controlflow.hints !77

; <label>:1571                                    ; preds = %1566
  %1572 = extractvalue %dx.types.CBufRet.f32 %1504, 1
  %1573 = extractvalue %dx.types.CBufRet.f32 %1516, 0
  %1574 = extractvalue %dx.types.CBufRet.f32 %1516, 1
  %1575 = fmul fast float %1573, %1161
  %1576 = fmul fast float %1574, %1162
  %1577 = fmul fast float %1575, 1.250000e-01
  %1578 = fmul fast float %1576, 1.250000e-01
  %1579 = call float @dx.op.unary.f32(i32 27, float %1577)  ; Round_ni(value)
  %1580 = call float @dx.op.unary.f32(i32 27, float %1578)  ; Round_ni(value)
  %1581 = fmul fast float %1579, 8.000000e+00
  %1582 = fmul fast float %1580, 8.000000e+00
  %1583 = fsub fast float %1575, %1581
  %1584 = fsub fast float %1576, %1582
  %1585 = fadd fast float %1583, 5.000000e-01
  %1586 = fadd fast float %1584, 5.000000e-01
  %1587 = and i32 %1528, 255
  %1588 = lshr i32 %1526, 24
  %1589 = mul nuw nsw i32 %1587, 9
  %1590 = uitofp i32 %1589 to float
  %1591 = mul nuw nsw i32 %1588, 9
  %1592 = uitofp i32 %1591 to float
  %1593 = fadd fast float %1585, %1590
  %1594 = fadd fast float %1586, %1592
  %1595 = fdiv fast float %1593, %1505
  %1596 = fdiv fast float %1594, %1572
  %1597 = fmul fast float %1189, 4.375000e-01
  %1598 = fadd fast float %1597, 3.125000e-02
  %1599 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %21, float %1595, float %1596, float %1598, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1600 = extractvalue %dx.types.ResRet.f32 %1599, 0
  %1601 = extractvalue %dx.types.ResRet.f32 %1599, 1
  %1602 = extractvalue %dx.types.ResRet.f32 %1599, 2
  %1603 = fadd fast float %1597, 5.312500e-01
  %1604 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %21, float %1595, float %1596, float %1603, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1605 = extractvalue %dx.types.ResRet.f32 %1604, 0
  %1606 = extractvalue %dx.types.ResRet.f32 %1604, 1
  %1607 = extractvalue %dx.types.ResRet.f32 %1604, 2
  %1608 = fmul fast float %1605, 2.000000e+00
  %1609 = fmul fast float %1606, 2.000000e+00
  %1610 = fmul fast float %1607, 2.000000e+00
  %1611 = fadd fast float %1608, -1.000000e+00
  %1612 = fadd fast float %1609, -1.000000e+00
  %1613 = fadd fast float %1610, -1.000000e+00
  %1614 = fmul fast float %1611, %1611
  %1615 = fmul fast float %1612, %1612
  %1616 = fadd fast float %1614, %1615
  %1617 = fmul fast float %1613, %1613
  %1618 = fadd fast float %1616, %1617
  %1619 = call float @dx.op.unary.f32(i32 24, float %1618)  ; Sqrt(value)
  %1620 = fcmp fast ogt float %1619, 0.000000e+00
  br i1 %1620, label %1621, label %1625, !dx.controlflow.hints !78

; <label>:1621                                    ; preds = %1571
  %1622 = fdiv fast float %1611, %1619
  %1623 = fdiv fast float %1612, %1619
  %1624 = fdiv fast float %1613, %1619
  br label %1625

; <label>:1625                                    ; preds = %1621, %1571
  %1626 = phi float [ %1622, %1621 ], [ 0.000000e+00, %1571 ]
  %1627 = phi float [ %1623, %1621 ], [ 0.000000e+00, %1571 ]
  %1628 = phi float [ %1624, %1621 ], [ 0.000000e+00, %1571 ]
  %1629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1630 = extractvalue %dx.types.CBufRet.f32 %1629, 0
  %1631 = extractvalue %dx.types.CBufRet.f32 %1629, 1
  %1632 = fsub fast float %185, %1630
  %1633 = fsub fast float %190, %1631
  %1634 = fmul fast float %1632, %1632
  %1635 = fmul fast float %1633, %1633
  %1636 = fadd fast float %1634, %1635
  %1637 = call float @dx.op.unary.f32(i32 24, float %1636)  ; Sqrt(value)
  %1638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1639 = extractvalue %dx.types.CBufRet.f32 %1638, 0
  %1640 = extractvalue %dx.types.CBufRet.f32 %1638, 1
  %1641 = fsub fast float %1637, %1639
  %1642 = fdiv fast float %1641, %1640
  %1643 = call float @dx.op.unary.f32(i32 7, float %1642)  ; Saturate(value)
  %1644 = fmul fast float %1643, 2.000000e+00
  %1645 = fsub fast float 3.000000e+00, %1644
  %1646 = fmul fast float %1643, %1643
  %1647 = fmul fast float %1646, %1645
  %1648 = call float @dx.op.dot3.f32(i32 55, float %1626, float %1627, float %1628, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1649 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1648)  ; FMax(a,b)
  %1650 = fmul fast float %1649, 0x400C5BF8A0000000
  %1651 = fmul fast float %1647, %1600
  %1652 = fmul fast float %1651, %1650
  %1653 = fadd fast float %1652, %1569
  %1654 = fmul fast float %1647, %1601
  %1655 = fmul fast float %1654, %1650
  %1656 = fadd fast float %1655, %1568
  %1657 = fmul fast float %1647, %1602
  %1658 = fmul fast float %1657, %1650
  %1659 = fadd fast float %1658, %1567
  br label %1660

; <label>:1660                                    ; preds = %1625, %1566, %1491
  %1661 = phi float [ %1659, %1625 ], [ %1567, %1566 ], [ %1503, %1491 ]
  %1662 = phi float [ %1656, %1625 ], [ %1568, %1566 ], [ %1502, %1491 ]
  %1663 = phi float [ %1653, %1625 ], [ %1569, %1566 ], [ %1501, %1491 ]
  %1664 = fcmp fast ogt float %195, %1185
  %1665 = and i1 %1507, %1664
  %1666 = and i1 %1509, %1665
  %1667 = and i1 %1511, %1666
  %1668 = and i1 %1513, %1667
  br i1 %1668, label %1669, label %1726, !dx.controlflow.hints !79

; <label>:1669                                    ; preds = %1660
  %1670 = fmul fast float %1187, 0x3FC24924A0000000
  %1671 = fsub fast float %195, %1185
  %1672 = fdiv fast float %1671, %1670
  %1673 = call float @dx.op.unary.f32(i32 7, float %1672)  ; Saturate(value)
  %1674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %1675 = extractvalue %dx.types.CBufRet.f32 %1674, 0
  %1676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %1677 = extractvalue %dx.types.CBufRet.f32 %1676, 0
  %1678 = extractvalue %dx.types.CBufRet.f32 %1676, 1
  %1679 = extractvalue %dx.types.CBufRet.f32 %1676, 2
  %1680 = fsub fast float %1675, %1663
  %1681 = fsub fast float %1677, %1498
  %1682 = fsub fast float %1678, %1499
  %1683 = fsub fast float %1679, %1500
  %1684 = fmul fast float %1680, %1673
  %1685 = fmul fast float %1681, %1673
  %1686 = fmul fast float %1682, %1673
  %1687 = fmul fast float %1683, %1673
  %1688 = fadd fast float %1684, %1663
  %1689 = fadd fast float %1685, %1498
  %1690 = fadd fast float %1686, %1499
  %1691 = fadd fast float %1687, %1500
  %1692 = extractvalue %dx.types.CBufRet.f32 %1674, 1
  %1693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %1694 = extractvalue %dx.types.CBufRet.f32 %1693, 0
  %1695 = extractvalue %dx.types.CBufRet.f32 %1693, 1
  %1696 = extractvalue %dx.types.CBufRet.f32 %1693, 2
  %1697 = fsub fast float %1692, %1662
  %1698 = fsub fast float %1694, %1495
  %1699 = fsub fast float %1695, %1496
  %1700 = fsub fast float %1696, %1497
  %1701 = fmul fast float %1697, %1673
  %1702 = fmul fast float %1698, %1673
  %1703 = fmul fast float %1699, %1673
  %1704 = fmul fast float %1700, %1673
  %1705 = fadd fast float %1701, %1662
  %1706 = fadd fast float %1702, %1495
  %1707 = fadd fast float %1703, %1496
  %1708 = fadd fast float %1704, %1497
  %1709 = extractvalue %dx.types.CBufRet.f32 %1674, 2
  %1710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %1711 = extractvalue %dx.types.CBufRet.f32 %1710, 0
  %1712 = extractvalue %dx.types.CBufRet.f32 %1710, 1
  %1713 = extractvalue %dx.types.CBufRet.f32 %1710, 2
  %1714 = fsub fast float %1709, %1661
  %1715 = fsub fast float %1711, %1492
  %1716 = fsub fast float %1712, %1493
  %1717 = fsub fast float %1713, %1494
  %1718 = fmul fast float %1714, %1673
  %1719 = fmul fast float %1715, %1673
  %1720 = fmul fast float %1716, %1673
  %1721 = fmul fast float %1717, %1673
  %1722 = fadd fast float %1718, %1661
  %1723 = fadd fast float %1719, %1492
  %1724 = fadd fast float %1720, %1493
  %1725 = fadd fast float %1721, %1494
  br label %1726

; <label>:1726                                    ; preds = %1669, %1660
  %1727 = phi float [ %1722, %1669 ], [ %1661, %1660 ]
  %1728 = phi float [ %1723, %1669 ], [ %1492, %1660 ]
  %1729 = phi float [ %1724, %1669 ], [ %1493, %1660 ]
  %1730 = phi float [ %1725, %1669 ], [ %1494, %1660 ]
  %1731 = phi float [ %1705, %1669 ], [ %1662, %1660 ]
  %1732 = phi float [ %1706, %1669 ], [ %1495, %1660 ]
  %1733 = phi float [ %1707, %1669 ], [ %1496, %1660 ]
  %1734 = phi float [ %1708, %1669 ], [ %1497, %1660 ]
  %1735 = phi float [ %1688, %1669 ], [ %1663, %1660 ]
  %1736 = phi float [ %1689, %1669 ], [ %1498, %1660 ]
  %1737 = phi float [ %1690, %1669 ], [ %1499, %1660 ]
  %1738 = phi float [ %1691, %1669 ], [ %1500, %1660 ]
  %1739 = extractvalue %dx.types.CBufRet.f32 %1310, 3
  %1740 = fmul fast float %1739, %1735
  %1741 = fmul fast float %1739, %1731
  %1742 = fmul fast float %1739, %1727
  %1743 = fmul fast float %1736, 1.500000e+00
  %1744 = fmul fast float %1743, %1739
  %1745 = fmul fast float %1737, 1.500000e+00
  %1746 = fmul fast float %1745, %1739
  %1747 = fmul fast float %1738, 1.500000e+00
  %1748 = fmul fast float %1747, %1739
  %1749 = fmul fast float %1732, 1.500000e+00
  %1750 = fmul fast float %1749, %1739
  %1751 = fmul fast float %1733, 1.500000e+00
  %1752 = fmul fast float %1751, %1739
  %1753 = fmul fast float %1734, 1.500000e+00
  %1754 = fmul fast float %1753, %1739
  %1755 = fmul fast float %1728, 1.500000e+00
  %1756 = fmul fast float %1755, %1739
  %1757 = fmul fast float %1729, 1.500000e+00
  %1758 = fmul fast float %1757, %1739
  %1759 = fmul fast float %1730, 1.500000e+00
  %1760 = fmul fast float %1759, %1739
  %1761 = fsub fast float %1150, %1740
  %1762 = fmul fast float %1761, %235
  %1763 = fadd fast float %1762, %1740
  %1764 = fsub fast float %1149, %1744
  %1765 = fmul fast float %1764, %235
  %1766 = fadd fast float %1765, %1744
  %1767 = fsub fast float %1148, %1746
  %1768 = fmul fast float %1767, %235
  %1769 = fadd fast float %1768, %1746
  %1770 = fsub fast float %1147, %1748
  %1771 = fmul fast float %1770, %235
  %1772 = fadd fast float %1771, %1748
  %1773 = fsub fast float %1146, %1741
  %1774 = fmul fast float %1773, %235
  %1775 = fadd fast float %1774, %1741
  %1776 = fsub fast float %1145, %1750
  %1777 = fmul fast float %1776, %235
  %1778 = fadd fast float %1777, %1750
  %1779 = fsub fast float %1144, %1752
  %1780 = fmul fast float %1779, %235
  %1781 = fadd fast float %1780, %1752
  %1782 = fsub fast float %1143, %1754
  %1783 = fmul fast float %1782, %235
  %1784 = fadd fast float %1783, %1754
  %1785 = fsub fast float %1142, %1742
  %1786 = fmul fast float %1785, %235
  %1787 = fadd fast float %1786, %1742
  %1788 = fsub fast float %1141, %1756
  %1789 = fmul fast float %1788, %235
  %1790 = fadd fast float %1789, %1756
  %1791 = fsub fast float %1140, %1758
  %1792 = fmul fast float %1791, %235
  %1793 = fadd fast float %1792, %1758
  %1794 = fsub fast float %1139, %1760
  %1795 = fmul fast float %1794, %235
  %1796 = fadd fast float %1795, %1760
  br label %1797

; <label>:1797                                    ; preds = %1726, %1138
  %1798 = phi float [ %1139, %1138 ], [ %1796, %1726 ]
  %1799 = phi float [ %1140, %1138 ], [ %1793, %1726 ]
  %1800 = phi float [ %1141, %1138 ], [ %1790, %1726 ]
  %1801 = phi float [ %1142, %1138 ], [ %1787, %1726 ]
  %1802 = phi float [ %1143, %1138 ], [ %1784, %1726 ]
  %1803 = phi float [ %1144, %1138 ], [ %1781, %1726 ]
  %1804 = phi float [ %1145, %1138 ], [ %1778, %1726 ]
  %1805 = phi float [ %1146, %1138 ], [ %1775, %1726 ]
  %1806 = phi float [ %1147, %1138 ], [ %1772, %1726 ]
  %1807 = phi float [ %1148, %1138 ], [ %1769, %1726 ]
  %1808 = phi float [ %1149, %1138 ], [ %1766, %1726 ]
  %1809 = phi float [ %1150, %1138 ], [ %1763, %1726 ]
  %1810 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1811 = extractvalue %dx.types.CBufRet.f32 %1810, 3
  %1812 = fmul fast float %1811, %1809
  %1813 = fmul fast float %1811, %1808
  %1814 = fmul fast float %1811, %1807
  %1815 = fmul fast float %1811, %1806
  %1816 = extractvalue %dx.types.CBufRet.f32 %1810, 0
  %1817 = fmul fast float %1812, %1816
  %1818 = fmul fast float %1813, %1816
  %1819 = fmul fast float %1814, %1816
  %1820 = fmul fast float %1815, %1816
  %1821 = fmul fast float %1811, %1805
  %1822 = fmul fast float %1811, %1804
  %1823 = fmul fast float %1811, %1803
  %1824 = fmul fast float %1811, %1802
  %1825 = fmul fast float %1821, %1816
  %1826 = fmul fast float %1822, %1816
  %1827 = fmul fast float %1823, %1816
  %1828 = fmul fast float %1824, %1816
  %1829 = fmul fast float %1811, %1801
  %1830 = fmul fast float %1811, %1800
  %1831 = fmul fast float %1811, %1799
  %1832 = fmul fast float %1811, %1798
  %1833 = fmul fast float %1829, %1816
  %1834 = fmul fast float %1830, %1816
  %1835 = fmul fast float %1831, %1816
  %1836 = fmul fast float %1832, %1816
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %164, i32 %165, i32 0, float %1817, float %1818, float %1819, float %1820, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %164, i32 %165, i32 1, float %1825, float %1826, float %1827, float %1828, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %164, i32 %165, i32 2, float %1833, float %1834, float %1835, float %1836, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1837

; <label>:1837                                    ; preds = %1797, %0
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
!29 = !{i32 0, %"class.RWTexture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 7, i1 false, i1 false, i1 false, !16}
!30 = !{!31, !32, !33}
!31 = !{i32 0, %GfxLGBoundConsts* undef, !"", i32 0, i32 4, i32 1, i32 16, null}
!32 = !{i32 1, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!33 = !{i32 2, %DeferredEffectLightConsts_decl* undef, !"", i32 0, i32 1, i32 1, i32 240, null}
!34 = !{!35}
!35 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!36 = !{void ()* @cs_del_sh_sample_lightgrid_1, !"cs_del_sh_sample_lightgrid_1", null, !4, !37}
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

