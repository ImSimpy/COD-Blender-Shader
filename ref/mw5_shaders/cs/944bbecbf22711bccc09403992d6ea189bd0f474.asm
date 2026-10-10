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
; shader hash: d85427a1c51de0bf7ecf9b5ef30421ce
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

define void @cs_del_sh_sample_lightgrid_4_lowres() {
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
  %32 = add i32 %31, 6
  %33 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %32, i32 0)  ; BufferLoad(srv,index,wot)
  %34 = extractvalue %dx.types.ResRet.i32 %33, 0
  %35 = icmp ult i32 %25, %34
  br i1 %35, label %36, label %1842, !dx.controlflow.hints !39

; <label>:36                                      ; preds = %0
  %37 = add i32 %31, 9
  %38 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 %37)  ; CBufferLoadLegacy(handle,regIndex)
  %39 = extractvalue %dx.types.CBufRet.i32 %38, 2
  %40 = call i32 @dx.op.threadId.i32(i32 93, i32 2)  ; ThreadId(component)
  %41 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %42 = shl i32 %41, 1
  %43 = shl i32 %40, 1
  %44 = add i32 %39, %25
  %45 = shl i32 %44, 5
  %46 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %45, i32 undef)  ; BufferLoad(srv,index,wot)
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
  br i1 %58, label %98, label %59, !dx.controlflow.hints !40

; <label>:59                                      ; preds = %36
  %60 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %61 = extractvalue %dx.types.CBufRet.f32 %60, 2
  %62 = extractvalue %dx.types.CBufRet.f32 %60, 3
  %63 = fmul fast float %61, %54
  %64 = fmul fast float %62, %55
  %65 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %66 = extractvalue %dx.types.CBufRet.f32 %65, 0
  %67 = extractvalue %dx.types.CBufRet.f32 %65, 1
  %68 = fadd fast float %63, %66
  %69 = fadd fast float %64, %67
  %70 = call float @dx.op.unary.f32(i32 7, float %68)  ; Saturate(value)
  %71 = call float @dx.op.unary.f32(i32 7, float %69)  ; Saturate(value)
  %72 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %21, float %70, float %71, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %73 = extractvalue %dx.types.ResRet.f32 %72, 0
  %74 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
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
  %87 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
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
  %101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %100, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
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
  %199 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %200 = extractvalue %dx.types.CBufRet.i32 %199, 0
  %201 = icmp eq i32 %200, 1
  br i1 %201, label %202, label %237, !dx.controlflow.hints !41

; <label>:202                                     ; preds = %98
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

; <label>:237                                     ; preds = %231, %219, %202, %98
  %238 = phi float [ 1.000000e+00, %98 ], [ %236, %231 ], [ %214, %202 ], [ 0.000000e+00, %219 ]
  %239 = fcmp fast ogt float %238, 0.000000e+00
  br i1 %239, label %240, label %1141, !dx.controlflow.hints !44

; <label>:240                                     ; preds = %237
  %241 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %242 = extractvalue %dx.types.CBufRet.i32 %241, 2
  %243 = extractvalue %dx.types.CBufRet.i32 %241, 1
  %244 = extractvalue %dx.types.CBufRet.i32 %241, 0
  %245 = getelementptr inbounds [4 x float], [4 x float]* %27, i32 0, i32 0
  store float 0.000000e+00, float* %245, align 4
  %246 = getelementptr inbounds [4 x float], [4 x float]* %27, i32 0, i32 1
  store float 0.000000e+00, float* %246, align 4
  %247 = getelementptr inbounds [4 x float], [4 x float]* %27, i32 0, i32 2
  store float 0.000000e+00, float* %247, align 4
  %248 = getelementptr inbounds [4 x float], [4 x float]* %27, i32 0, i32 3
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
  br i1 %562, label %563, label %598, !dx.controlflow.hints !53

; <label>:563                                     ; preds = %548
  %564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %565 = extractvalue %dx.types.ResRet.i32 %564, 1
  %566 = extractvalue %dx.types.ResRet.i32 %564, 2
  %567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %568 = extractvalue %dx.types.ResRet.i32 %567, 0
  %569 = extractvalue %dx.types.ResRet.i32 %567, 1
  %570 = extractvalue %dx.types.ResRet.i32 %567, 2
  %571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %572 = extractvalue %dx.types.ResRet.i32 %571, 0
  %573 = extractvalue %dx.types.ResRet.i32 %571, 1
  %574 = and i32 %572, 65535
  %575 = call float @dx.op.legacyF16ToF32(i32 131, i32 %574)  ; LegacyF16ToF32(value)
  %576 = lshr i32 %572, 16
  %577 = call float @dx.op.legacyF16ToF32(i32 131, i32 %576)  ; LegacyF16ToF32(value)
  %578 = and i32 %573, 65535
  %579 = call float @dx.op.legacyF16ToF32(i32 131, i32 %578)  ; LegacyF16ToF32(value)
  %580 = lshr i32 %573, 16
  %581 = call float @dx.op.legacyF16ToF32(i32 131, i32 %580)  ; LegacyF16ToF32(value)
  %582 = lshr i32 %568, 16
  %583 = call float @dx.op.legacyF16ToF32(i32 131, i32 %582)  ; LegacyF16ToF32(value)
  %584 = and i32 %569, 65535
  %585 = call float @dx.op.legacyF16ToF32(i32 131, i32 %584)  ; LegacyF16ToF32(value)
  %586 = lshr i32 %569, 16
  %587 = call float @dx.op.legacyF16ToF32(i32 131, i32 %586)  ; LegacyF16ToF32(value)
  %588 = and i32 %570, 65535
  %589 = call float @dx.op.legacyF16ToF32(i32 131, i32 %588)  ; LegacyF16ToF32(value)
  %590 = and i32 %565, 65535
  %591 = call float @dx.op.legacyF16ToF32(i32 131, i32 %590)  ; LegacyF16ToF32(value)
  %592 = lshr i32 %565, 16
  %593 = call float @dx.op.legacyF16ToF32(i32 131, i32 %592)  ; LegacyF16ToF32(value)
  %594 = and i32 %566, 65535
  %595 = call float @dx.op.legacyF16ToF32(i32 131, i32 %594)  ; LegacyF16ToF32(value)
  %596 = lshr i32 %566, 16
  %597 = call float @dx.op.legacyF16ToF32(i32 131, i32 %596)  ; LegacyF16ToF32(value)
  br label %1141

; <label>:598                                     ; preds = %548
  %599 = shl nsw i32 %549, 4
  %600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %599, i32 undef)  ; BufferLoad(srv,index,wot)
  %601 = extractvalue %dx.types.ResRet.i32 %600, 0
  %602 = extractvalue %dx.types.ResRet.i32 %600, 1
  %603 = extractvalue %dx.types.ResRet.i32 %600, 2
  %604 = extractvalue %dx.types.ResRet.i32 %600, 3
  %605 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 0
  store i32 %601, i32* %605, align 4
  %606 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 1
  store i32 %602, i32* %606, align 4
  %607 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 2
  store i32 %603, i32* %607, align 4
  %608 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 3
  store i32 %604, i32* %608, align 4
  %609 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 0
  store float 0.000000e+00, float* %609, align 4
  %610 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 1
  store float 0.000000e+00, float* %610, align 4
  %611 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 2
  store float 0.000000e+00, float* %611, align 4
  %612 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 3
  store float 0.000000e+00, float* %612, align 4
  %613 = icmp slt i32 %601, 0
  br i1 %613, label %614, label %704, !dx.controlflow.hints !54

; <label>:614                                     ; preds = %598
  %615 = fsub fast float 1.000000e+00, %558
  %616 = fdiv fast float 1.000000e+00, %615
  %617 = shl nsw i32 %549, 6
  %618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %617, i32 undef)  ; BufferLoad(srv,index,wot)
  %619 = extractvalue %dx.types.ResRet.i32 %618, 0
  %620 = extractvalue %dx.types.ResRet.i32 %618, 1
  %621 = extractvalue %dx.types.ResRet.i32 %618, 2
  %622 = extractvalue %dx.types.ResRet.i32 %618, 3
  %623 = fmul fast float %616, %561
  %624 = fmul fast float %616, %559
  %625 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 0
  store i32 %619, i32* %625, align 4
  %626 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 1
  store i32 %620, i32* %626, align 4
  %627 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 2
  store i32 %621, i32* %627, align 4
  %628 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 3
  store i32 %622, i32* %628, align 4
  %629 = fmul fast float %624, 4.000000e+00
  %630 = call float @dx.op.unary.f32(i32 27, float %629)  ; Round_ni(value)
  %631 = fmul fast float %623, 4.000000e+00
  %632 = call float @dx.op.unary.f32(i32 27, float %631)  ; Round_ni(value)
  %633 = fsub fast float 1.100000e+01, %630
  %634 = fmul fast float %630, 5.000000e-01
  %635 = fmul fast float %634, %633
  %636 = fadd fast float %632, 5.000000e-01
  %637 = fadd fast float %636, %635
  %638 = fptosi float %637 to i32
  %639 = fptosi float %630 to i32
  %640 = sub nsw i32 5, %639
  %641 = fmul fast float %632, 2.500000e-01
  %642 = fmul fast float %630, 2.500000e-01
  %643 = add nsw i32 %638, 1
  %644 = add nsw i32 %638, %640
  %645 = fsub fast float %623, %641
  %646 = fmul fast float %645, 4.000000e+00
  %647 = fsub fast float %624, %642
  %648 = fmul fast float %647, 4.000000e+00
  %649 = fadd fast float %645, %647
  %650 = fmul fast float %649, 4.000000e+00
  %651 = fcmp fast ogt float %650, 1.000000e+00
  br i1 %651, label %652, label %658, !dx.controlflow.hints !55

; <label>:652                                     ; preds = %614
  %653 = add nsw i32 %644, 1
  %654 = fadd fast float %648, -1.000000e+00
  %655 = fsub fast float -0.000000e+00, %654
  %656 = fadd fast float %646, -1.000000e+00
  %657 = fsub fast float -0.000000e+00, %656
  br label %658

; <label>:658                                     ; preds = %652, %614
  %659 = phi i32 [ %653, %652 ], [ %638, %614 ]
  %660 = phi i32 [ %643, %652 ], [ %644, %614 ]
  %661 = phi i32 [ %644, %652 ], [ %643, %614 ]
  %662 = phi float [ %657, %652 ], [ %648, %614 ]
  %663 = phi float [ %655, %652 ], [ %646, %614 ]
  %664 = fsub fast float 1.000000e+00, %662
  %665 = fsub fast float %664, %663
  %666 = lshr i32 %661, 2
  %667 = getelementptr [4 x i32], [4 x i32]* %26, i32 0, i32 %666
  %668 = load i32, i32* %667, align 4, !tbaa !56, !noalias !60
  %669 = shl i32 %661, 3
  %670 = and i32 %669, 24
  %671 = lshr i32 %668, %670
  %672 = and i32 %671, 255
  %673 = sitofp i32 %672 to float
  %674 = fmul fast float %663, 0x3F70101020000000
  %675 = fmul fast float %674, %673
  %676 = lshr i32 %660, 2
  %677 = getelementptr [4 x i32], [4 x i32]* %26, i32 0, i32 %676
  %678 = load i32, i32* %677, align 4, !tbaa !56, !noalias !60
  %679 = shl i32 %660, 3
  %680 = and i32 %679, 24
  %681 = lshr i32 %678, %680
  %682 = and i32 %681, 255
  %683 = sitofp i32 %682 to float
  %684 = fmul fast float %662, 0x3F70101020000000
  %685 = fmul fast float %684, %683
  %686 = lshr i32 %659, 2
  %687 = getelementptr [4 x i32], [4 x i32]* %26, i32 0, i32 %686
  %688 = load i32, i32* %687, align 4, !tbaa !56, !noalias !60
  %689 = shl i32 %659, 3
  %690 = and i32 %689, 24
  %691 = lshr i32 %688, %690
  %692 = and i32 %691, 255
  %693 = sitofp i32 %692 to float
  %694 = fmul fast float %665, 0x3F70101020000000
  %695 = fmul fast float %694, %693
  %696 = fsub fast float 1.000000e+00, %675
  %697 = fsub fast float %696, %685
  %698 = fsub fast float %697, %695
  %699 = fmul fast float %558, 2.000000e+01
  %700 = fadd fast float %699, 1.000000e+00
  %701 = fmul fast float %698, 2.000000e+01
  %702 = fsub fast float %700, %701
  %703 = call float @dx.op.unary.f32(i32 7, float %702)  ; Saturate(value)
  br label %704

; <label>:704                                     ; preds = %658, %598
  %705 = phi float [ %703, %658 ], [ 1.000000e+00, %598 ]
  store float %705, float* %609, align 4, !tbaa !68, !noalias !60
  %706 = icmp slt i32 %602, 0
  br i1 %706, label %707, label %798, !dx.controlflow.hints !54

; <label>:707                                     ; preds = %704
  %708 = fsub fast float 1.000000e+00, %559
  %709 = fdiv fast float 1.000000e+00, %708
  %710 = shl i32 %549, 6
  %711 = or i32 %710, 16
  %712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %711, i32 undef)  ; BufferLoad(srv,index,wot)
  %713 = extractvalue %dx.types.ResRet.i32 %712, 0
  %714 = extractvalue %dx.types.ResRet.i32 %712, 1
  %715 = extractvalue %dx.types.ResRet.i32 %712, 2
  %716 = extractvalue %dx.types.ResRet.i32 %712, 3
  %717 = fmul fast float %709, %558
  %718 = fmul fast float %709, %561
  %719 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 0
  store i32 %713, i32* %719, align 4
  %720 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 1
  store i32 %714, i32* %720, align 4
  %721 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 2
  store i32 %715, i32* %721, align 4
  %722 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 3
  store i32 %716, i32* %722, align 4
  %723 = fmul fast float %718, 4.000000e+00
  %724 = call float @dx.op.unary.f32(i32 27, float %723)  ; Round_ni(value)
  %725 = fmul fast float %717, 4.000000e+00
  %726 = call float @dx.op.unary.f32(i32 27, float %725)  ; Round_ni(value)
  %727 = fsub fast float 1.100000e+01, %724
  %728 = fmul fast float %724, 5.000000e-01
  %729 = fmul fast float %728, %727
  %730 = fadd fast float %726, 5.000000e-01
  %731 = fadd fast float %730, %729
  %732 = fptosi float %731 to i32
  %733 = fptosi float %724 to i32
  %734 = sub nsw i32 5, %733
  %735 = fmul fast float %726, 2.500000e-01
  %736 = fmul fast float %724, 2.500000e-01
  %737 = add nsw i32 %732, 1
  %738 = add nsw i32 %732, %734
  %739 = fsub fast float %717, %735
  %740 = fmul fast float %739, 4.000000e+00
  %741 = fsub fast float %718, %736
  %742 = fmul fast float %741, 4.000000e+00
  %743 = fadd fast float %739, %741
  %744 = fmul fast float %743, 4.000000e+00
  %745 = fcmp fast ogt float %744, 1.000000e+00
  br i1 %745, label %746, label %752, !dx.controlflow.hints !55

; <label>:746                                     ; preds = %707
  %747 = add nsw i32 %738, 1
  %748 = fadd fast float %742, -1.000000e+00
  %749 = fsub fast float -0.000000e+00, %748
  %750 = fadd fast float %740, -1.000000e+00
  %751 = fsub fast float -0.000000e+00, %750
  br label %752

; <label>:752                                     ; preds = %746, %707
  %753 = phi i32 [ %747, %746 ], [ %732, %707 ]
  %754 = phi i32 [ %737, %746 ], [ %738, %707 ]
  %755 = phi i32 [ %738, %746 ], [ %737, %707 ]
  %756 = phi float [ %751, %746 ], [ %742, %707 ]
  %757 = phi float [ %749, %746 ], [ %740, %707 ]
  %758 = fsub fast float 1.000000e+00, %756
  %759 = fsub fast float %758, %757
  %760 = lshr i32 %755, 2
  %761 = getelementptr [4 x i32], [4 x i32]* %26, i32 0, i32 %760
  %762 = load i32, i32* %761, align 4, !tbaa !56, !noalias !60
  %763 = shl i32 %755, 3
  %764 = and i32 %763, 24
  %765 = lshr i32 %762, %764
  %766 = and i32 %765, 255
  %767 = sitofp i32 %766 to float
  %768 = fmul fast float %757, 0x3F70101020000000
  %769 = fmul fast float %768, %767
  %770 = lshr i32 %754, 2
  %771 = getelementptr [4 x i32], [4 x i32]* %26, i32 0, i32 %770
  %772 = load i32, i32* %771, align 4, !tbaa !56, !noalias !60
  %773 = shl i32 %754, 3
  %774 = and i32 %773, 24
  %775 = lshr i32 %772, %774
  %776 = and i32 %775, 255
  %777 = sitofp i32 %776 to float
  %778 = fmul fast float %756, 0x3F70101020000000
  %779 = fmul fast float %778, %777
  %780 = lshr i32 %753, 2
  %781 = getelementptr [4 x i32], [4 x i32]* %26, i32 0, i32 %780
  %782 = load i32, i32* %781, align 4, !tbaa !56, !noalias !60
  %783 = shl i32 %753, 3
  %784 = and i32 %783, 24
  %785 = lshr i32 %782, %784
  %786 = and i32 %785, 255
  %787 = sitofp i32 %786 to float
  %788 = fmul fast float %759, 0x3F70101020000000
  %789 = fmul fast float %788, %787
  %790 = fsub fast float 1.000000e+00, %769
  %791 = fsub fast float %790, %779
  %792 = fsub fast float %791, %789
  %793 = fmul fast float %559, 2.000000e+01
  %794 = fadd fast float %793, 1.000000e+00
  %795 = fmul fast float %792, 2.000000e+01
  %796 = fsub fast float %794, %795
  %797 = call float @dx.op.unary.f32(i32 7, float %796)  ; Saturate(value)
  br label %798

; <label>:798                                     ; preds = %752, %704
  %799 = phi float [ %797, %752 ], [ 1.000000e+00, %704 ]
  store float %799, float* %610, align 4, !tbaa !68, !noalias !60
  %800 = fadd fast float %799, %705
  %801 = icmp slt i32 %603, 0
  br i1 %801, label %802, label %893, !dx.controlflow.hints !54

; <label>:802                                     ; preds = %798
  %803 = fsub fast float 1.000000e+00, %560
  %804 = fdiv fast float 1.000000e+00, %803
  %805 = shl i32 %549, 6
  %806 = or i32 %805, 32
  %807 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %806, i32 undef)  ; BufferLoad(srv,index,wot)
  %808 = extractvalue %dx.types.ResRet.i32 %807, 0
  %809 = extractvalue %dx.types.ResRet.i32 %807, 1
  %810 = extractvalue %dx.types.ResRet.i32 %807, 2
  %811 = extractvalue %dx.types.ResRet.i32 %807, 3
  %812 = fmul fast float %804, %558
  %813 = fmul fast float %804, %559
  %814 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 0
  store i32 %808, i32* %814, align 4
  %815 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 1
  store i32 %809, i32* %815, align 4
  %816 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 2
  store i32 %810, i32* %816, align 4
  %817 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 3
  store i32 %811, i32* %817, align 4
  %818 = fmul fast float %813, 4.000000e+00
  %819 = call float @dx.op.unary.f32(i32 27, float %818)  ; Round_ni(value)
  %820 = fmul fast float %812, 4.000000e+00
  %821 = call float @dx.op.unary.f32(i32 27, float %820)  ; Round_ni(value)
  %822 = fsub fast float 1.100000e+01, %819
  %823 = fmul fast float %819, 5.000000e-01
  %824 = fmul fast float %823, %822
  %825 = fadd fast float %821, 5.000000e-01
  %826 = fadd fast float %825, %824
  %827 = fptosi float %826 to i32
  %828 = fptosi float %819 to i32
  %829 = sub nsw i32 5, %828
  %830 = fmul fast float %821, 2.500000e-01
  %831 = fmul fast float %819, 2.500000e-01
  %832 = add nsw i32 %827, 1
  %833 = add nsw i32 %827, %829
  %834 = fsub fast float %812, %830
  %835 = fmul fast float %834, 4.000000e+00
  %836 = fsub fast float %813, %831
  %837 = fmul fast float %836, 4.000000e+00
  %838 = fadd fast float %834, %836
  %839 = fmul fast float %838, 4.000000e+00
  %840 = fcmp fast ogt float %839, 1.000000e+00
  br i1 %840, label %841, label %847, !dx.controlflow.hints !55

; <label>:841                                     ; preds = %802
  %842 = add nsw i32 %833, 1
  %843 = fadd fast float %837, -1.000000e+00
  %844 = fsub fast float -0.000000e+00, %843
  %845 = fadd fast float %835, -1.000000e+00
  %846 = fsub fast float -0.000000e+00, %845
  br label %847

; <label>:847                                     ; preds = %841, %802
  %848 = phi i32 [ %842, %841 ], [ %827, %802 ]
  %849 = phi i32 [ %832, %841 ], [ %833, %802 ]
  %850 = phi i32 [ %833, %841 ], [ %832, %802 ]
  %851 = phi float [ %846, %841 ], [ %837, %802 ]
  %852 = phi float [ %844, %841 ], [ %835, %802 ]
  %853 = fsub fast float 1.000000e+00, %851
  %854 = fsub fast float %853, %852
  %855 = lshr i32 %850, 2
  %856 = getelementptr [4 x i32], [4 x i32]* %26, i32 0, i32 %855
  %857 = load i32, i32* %856, align 4, !tbaa !56, !noalias !60
  %858 = shl i32 %850, 3
  %859 = and i32 %858, 24
  %860 = lshr i32 %857, %859
  %861 = and i32 %860, 255
  %862 = sitofp i32 %861 to float
  %863 = fmul fast float %852, 0x3F70101020000000
  %864 = fmul fast float %863, %862
  %865 = lshr i32 %849, 2
  %866 = getelementptr [4 x i32], [4 x i32]* %26, i32 0, i32 %865
  %867 = load i32, i32* %866, align 4, !tbaa !56, !noalias !60
  %868 = shl i32 %849, 3
  %869 = and i32 %868, 24
  %870 = lshr i32 %867, %869
  %871 = and i32 %870, 255
  %872 = sitofp i32 %871 to float
  %873 = fmul fast float %851, 0x3F70101020000000
  %874 = fmul fast float %873, %872
  %875 = lshr i32 %848, 2
  %876 = getelementptr [4 x i32], [4 x i32]* %26, i32 0, i32 %875
  %877 = load i32, i32* %876, align 4, !tbaa !56, !noalias !60
  %878 = shl i32 %848, 3
  %879 = and i32 %878, 24
  %880 = lshr i32 %877, %879
  %881 = and i32 %880, 255
  %882 = sitofp i32 %881 to float
  %883 = fmul fast float %854, 0x3F70101020000000
  %884 = fmul fast float %883, %882
  %885 = fsub fast float 1.000000e+00, %864
  %886 = fsub fast float %885, %874
  %887 = fsub fast float %886, %884
  %888 = fmul fast float %560, 2.000000e+01
  %889 = fadd fast float %888, 1.000000e+00
  %890 = fmul fast float %887, 2.000000e+01
  %891 = fsub fast float %889, %890
  %892 = call float @dx.op.unary.f32(i32 7, float %891)  ; Saturate(value)
  br label %893

; <label>:893                                     ; preds = %847, %798
  %894 = phi float [ %892, %847 ], [ 1.000000e+00, %798 ]
  store float %894, float* %611, align 4, !tbaa !68, !noalias !60
  %895 = fadd fast float %800, %894
  %896 = icmp slt i32 %604, 0
  br i1 %896, label %897, label %988, !dx.controlflow.hints !54

; <label>:897                                     ; preds = %893
  %898 = fsub fast float 1.000000e+00, %561
  %899 = fdiv fast float 1.000000e+00, %898
  %900 = shl i32 %549, 6
  %901 = or i32 %900, 48
  %902 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %901, i32 undef)  ; BufferLoad(srv,index,wot)
  %903 = extractvalue %dx.types.ResRet.i32 %902, 0
  %904 = extractvalue %dx.types.ResRet.i32 %902, 1
  %905 = extractvalue %dx.types.ResRet.i32 %902, 2
  %906 = extractvalue %dx.types.ResRet.i32 %902, 3
  %907 = fmul fast float %899, %558
  %908 = fmul fast float %899, %559
  %909 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 0
  store i32 %903, i32* %909, align 4
  %910 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 1
  store i32 %904, i32* %910, align 4
  %911 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 2
  store i32 %905, i32* %911, align 4
  %912 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 3
  store i32 %906, i32* %912, align 4
  %913 = fmul fast float %908, 4.000000e+00
  %914 = call float @dx.op.unary.f32(i32 27, float %913)  ; Round_ni(value)
  %915 = fmul fast float %907, 4.000000e+00
  %916 = call float @dx.op.unary.f32(i32 27, float %915)  ; Round_ni(value)
  %917 = fsub fast float 1.100000e+01, %914
  %918 = fmul fast float %914, 5.000000e-01
  %919 = fmul fast float %918, %917
  %920 = fadd fast float %916, 5.000000e-01
  %921 = fadd fast float %920, %919
  %922 = fptosi float %921 to i32
  %923 = fptosi float %914 to i32
  %924 = sub nsw i32 5, %923
  %925 = fmul fast float %916, 2.500000e-01
  %926 = fmul fast float %914, 2.500000e-01
  %927 = add nsw i32 %922, 1
  %928 = add nsw i32 %922, %924
  %929 = fsub fast float %907, %925
  %930 = fmul fast float %929, 4.000000e+00
  %931 = fsub fast float %908, %926
  %932 = fmul fast float %931, 4.000000e+00
  %933 = fadd fast float %929, %931
  %934 = fmul fast float %933, 4.000000e+00
  %935 = fcmp fast ogt float %934, 1.000000e+00
  br i1 %935, label %936, label %942, !dx.controlflow.hints !55

; <label>:936                                     ; preds = %897
  %937 = add nsw i32 %928, 1
  %938 = fadd fast float %932, -1.000000e+00
  %939 = fsub fast float -0.000000e+00, %938
  %940 = fadd fast float %930, -1.000000e+00
  %941 = fsub fast float -0.000000e+00, %940
  br label %942

; <label>:942                                     ; preds = %936, %897
  %943 = phi i32 [ %937, %936 ], [ %922, %897 ]
  %944 = phi i32 [ %927, %936 ], [ %928, %897 ]
  %945 = phi i32 [ %928, %936 ], [ %927, %897 ]
  %946 = phi float [ %941, %936 ], [ %932, %897 ]
  %947 = phi float [ %939, %936 ], [ %930, %897 ]
  %948 = fsub fast float 1.000000e+00, %946
  %949 = fsub fast float %948, %947
  %950 = lshr i32 %945, 2
  %951 = getelementptr [4 x i32], [4 x i32]* %26, i32 0, i32 %950
  %952 = load i32, i32* %951, align 4, !tbaa !56, !noalias !60
  %953 = shl i32 %945, 3
  %954 = and i32 %953, 24
  %955 = lshr i32 %952, %954
  %956 = and i32 %955, 255
  %957 = sitofp i32 %956 to float
  %958 = fmul fast float %947, 0x3F70101020000000
  %959 = fmul fast float %958, %957
  %960 = lshr i32 %944, 2
  %961 = getelementptr [4 x i32], [4 x i32]* %26, i32 0, i32 %960
  %962 = load i32, i32* %961, align 4, !tbaa !56, !noalias !60
  %963 = shl i32 %944, 3
  %964 = and i32 %963, 24
  %965 = lshr i32 %962, %964
  %966 = and i32 %965, 255
  %967 = sitofp i32 %966 to float
  %968 = fmul fast float %946, 0x3F70101020000000
  %969 = fmul fast float %968, %967
  %970 = lshr i32 %943, 2
  %971 = getelementptr [4 x i32], [4 x i32]* %26, i32 0, i32 %970
  %972 = load i32, i32* %971, align 4, !tbaa !56, !noalias !60
  %973 = shl i32 %943, 3
  %974 = and i32 %973, 24
  %975 = lshr i32 %972, %974
  %976 = and i32 %975, 255
  %977 = sitofp i32 %976 to float
  %978 = fmul fast float %949, 0x3F70101020000000
  %979 = fmul fast float %978, %977
  %980 = fsub fast float 1.000000e+00, %959
  %981 = fsub fast float %980, %969
  %982 = fsub fast float %981, %979
  %983 = fmul fast float %561, 2.000000e+01
  %984 = fadd fast float %983, 1.000000e+00
  %985 = fmul fast float %982, 2.000000e+01
  %986 = fsub fast float %984, %985
  %987 = call float @dx.op.unary.f32(i32 7, float %986)  ; Saturate(value)
  br label %988

; <label>:988                                     ; preds = %942, %893
  %989 = phi float [ %987, %942 ], [ 1.000000e+00, %893 ]
  store float %989, float* %612, align 4, !tbaa !68, !noalias !60
  %990 = fadd fast float %895, %989
  %991 = fcmp fast oeq float %990, 0.000000e+00
  br i1 %991, label %992, label %993, !dx.controlflow.hints !70

; <label>:992                                     ; preds = %988
  store float 2.500000e-01, float* %609, align 4
  store float 2.500000e-01, float* %610, align 4
  store float 2.500000e-01, float* %611, align 4
  store float 2.500000e-01, float* %612, align 4
  br label %993

; <label>:993                                     ; preds = %992, %988
  %994 = phi float [ 2.500000e-01, %992 ], [ %705, %988 ]
  br label %995

; <label>:995                                     ; preds = %1122, %993
  %996 = phi float [ %1124, %1122 ], [ %994, %993 ]
  %997 = phi float [ %1107, %1122 ], [ 0.000000e+00, %993 ]
  %998 = phi float [ %1108, %1122 ], [ 0.000000e+00, %993 ]
  %999 = phi float [ %1109, %1122 ], [ 0.000000e+00, %993 ]
  %1000 = phi float [ %1110, %1122 ], [ 0.000000e+00, %993 ]
  %1001 = phi float [ %1111, %1122 ], [ 0.000000e+00, %993 ]
  %1002 = phi float [ %1112, %1122 ], [ 0.000000e+00, %993 ]
  %1003 = phi float [ %1113, %1122 ], [ 0.000000e+00, %993 ]
  %1004 = phi float [ %1114, %1122 ], [ 0.000000e+00, %993 ]
  %1005 = phi float [ %1115, %1122 ], [ 0.000000e+00, %993 ]
  %1006 = phi float [ %1116, %1122 ], [ 0.000000e+00, %993 ]
  %1007 = phi float [ %1117, %1122 ], [ 0.000000e+00, %993 ]
  %1008 = phi float [ %1118, %1122 ], [ 0.000000e+00, %993 ]
  %1009 = phi float [ %1119, %1122 ], [ 0.000000e+00, %993 ]
  %1010 = phi i32 [ %1120, %1122 ], [ 0, %993 ]
  %1011 = fcmp fast ogt float %996, 0.000000e+00
  br i1 %1011, label %1012, label %1106, !dx.controlflow.hints !71

; <label>:1012                                    ; preds = %995
  %1013 = getelementptr [4 x float], [4 x float]* %27, i32 0, i32 %1010
  %1014 = load float, float* %1013, align 4, !tbaa !68, !noalias !60
  %1015 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %1010
  %1016 = load i32, i32* %1015, align 4, !tbaa !56, !noalias !60
  %1017 = fmul fast float %1014, %996
  %1018 = shl i32 %1016, 5
  %1019 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1018, i32 undef)  ; BufferLoad(srv,index,wot)
  %1020 = extractvalue %dx.types.ResRet.i32 %1019, 0
  %1021 = extractvalue %dx.types.ResRet.i32 %1019, 1
  %1022 = extractvalue %dx.types.ResRet.i32 %1019, 3
  %1023 = or i32 %1018, 16
  %1024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1023, i32 undef)  ; BufferLoad(srv,index,wot)
  %1025 = extractvalue %dx.types.ResRet.i32 %1024, 1
  %1026 = shl i32 %1020, 4
  %1027 = and i32 %1026, 32752
  %1028 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1027)  ; LegacyF16ToF32(value)
  %1029 = lshr i32 %1020, 7
  %1030 = and i32 %1029, 32752
  %1031 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1030)  ; LegacyF16ToF32(value)
  %1032 = lshr i32 %1020, 22
  %1033 = shl nuw nsw i32 %1032, 5
  %1034 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1033)  ; LegacyF16ToF32(value)
  %1035 = and i32 %1021, 255
  %1036 = uitofp i32 %1035 to float
  %1037 = fmul fast float %1036, 0x3F80204080000000
  %1038 = fadd fast float %1037, -1.000000e+00
  %1039 = lshr i32 %1021, 8
  %1040 = and i32 %1039, 255
  %1041 = uitofp i32 %1040 to float
  %1042 = fmul fast float %1041, 0x3F80204080000000
  %1043 = fadd fast float %1042, -1.000000e+00
  %1044 = lshr i32 %1021, 16
  %1045 = and i32 %1044, 255
  %1046 = uitofp i32 %1045 to float
  %1047 = fmul fast float %1046, 0x3F80204080000000
  %1048 = fadd fast float %1047, -1.000000e+00
  %1049 = and i32 %1022, 255
  %1050 = uitofp i32 %1049 to float
  %1051 = fmul fast float %1050, 0x3F80204080000000
  %1052 = fadd fast float %1051, -1.000000e+00
  %1053 = lshr i32 %1022, 8
  %1054 = and i32 %1053, 255
  %1055 = uitofp i32 %1054 to float
  %1056 = fmul fast float %1055, 0x3F80204080000000
  %1057 = fadd fast float %1056, -1.000000e+00
  %1058 = lshr i32 %1022, 16
  %1059 = and i32 %1058, 255
  %1060 = uitofp i32 %1059 to float
  %1061 = fmul fast float %1060, 0x3F80204080000000
  %1062 = fadd fast float %1061, -1.000000e+00
  %1063 = and i32 %1025, 255
  %1064 = uitofp i32 %1063 to float
  %1065 = fmul fast float %1064, 0x3F80204080000000
  %1066 = fadd fast float %1065, -1.000000e+00
  %1067 = lshr i32 %1025, 8
  %1068 = and i32 %1067, 255
  %1069 = uitofp i32 %1068 to float
  %1070 = fmul fast float %1069, 0x3F80204080000000
  %1071 = fadd fast float %1070, -1.000000e+00
  %1072 = lshr i32 %1025, 16
  %1073 = and i32 %1072, 255
  %1074 = uitofp i32 %1073 to float
  %1075 = fmul fast float %1074, 0x3F80204080000000
  %1076 = fadd fast float %1075, -1.000000e+00
  %1077 = fmul fast float %1028, %1017
  %1078 = fadd fast float %1077, %1000
  %1079 = fmul fast float %1017, 0x3FFBB67AE0000000
  %1080 = fmul fast float %1079, %1028
  %1081 = fmul fast float %1080, %1038
  %1082 = fadd fast float %1081, %999
  %1083 = fmul fast float %1080, %1043
  %1084 = fadd fast float %1083, %998
  %1085 = fmul fast float %1080, %1048
  %1086 = fadd fast float %1085, %997
  %1087 = fmul fast float %1031, %1017
  %1088 = fadd fast float %1087, %1004
  %1089 = fmul fast float %1079, %1031
  %1090 = fmul fast float %1089, %1052
  %1091 = fadd fast float %1090, %1003
  %1092 = fmul fast float %1089, %1057
  %1093 = fadd fast float %1092, %1002
  %1094 = fmul fast float %1089, %1062
  %1095 = fadd fast float %1094, %1001
  %1096 = fmul fast float %1034, %1017
  %1097 = fadd fast float %1096, %1008
  %1098 = fmul fast float %1079, %1034
  %1099 = fmul fast float %1098, %1066
  %1100 = fadd fast float %1099, %1007
  %1101 = fmul fast float %1098, %1071
  %1102 = fadd fast float %1101, %1006
  %1103 = fmul fast float %1098, %1076
  %1104 = fadd fast float %1103, %1005
  %1105 = fadd fast float %1017, %1009
  br label %1106

; <label>:1106                                    ; preds = %1012, %995
  %1107 = phi float [ %1086, %1012 ], [ %997, %995 ]
  %1108 = phi float [ %1084, %1012 ], [ %998, %995 ]
  %1109 = phi float [ %1082, %1012 ], [ %999, %995 ]
  %1110 = phi float [ %1078, %1012 ], [ %1000, %995 ]
  %1111 = phi float [ %1095, %1012 ], [ %1001, %995 ]
  %1112 = phi float [ %1093, %1012 ], [ %1002, %995 ]
  %1113 = phi float [ %1091, %1012 ], [ %1003, %995 ]
  %1114 = phi float [ %1088, %1012 ], [ %1004, %995 ]
  %1115 = phi float [ %1104, %1012 ], [ %1005, %995 ]
  %1116 = phi float [ %1102, %1012 ], [ %1006, %995 ]
  %1117 = phi float [ %1100, %1012 ], [ %1007, %995 ]
  %1118 = phi float [ %1097, %1012 ], [ %1008, %995 ]
  %1119 = phi float [ %1105, %1012 ], [ %1009, %995 ]
  %1120 = add nuw nsw i32 %1010, 1
  %1121 = icmp eq i32 %1120, 4
  br i1 %1121, label %1125, label %1122

; <label>:1122                                    ; preds = %1106
  %1123 = getelementptr [4 x float], [4 x float]* %29, i32 0, i32 %1120
  %1124 = load float, float* %1123, align 4, !tbaa !68, !noalias !60
  br label %995

; <label>:1125                                    ; preds = %1106
  %1126 = fcmp fast ogt float %1119, 0.000000e+00
  %1127 = fdiv fast float 1.000000e+00, %1119
  %1128 = select i1 %1126, float %1127, float 1.000000e+00
  %1129 = fmul fast float %1128, %1110
  %1130 = fmul fast float %1128, %1109
  %1131 = fmul fast float %1128, %1108
  %1132 = fmul fast float %1128, %1107
  %1133 = fmul fast float %1128, %1114
  %1134 = fmul fast float %1128, %1113
  %1135 = fmul fast float %1128, %1112
  %1136 = fmul fast float %1128, %1111
  %1137 = fmul fast float %1128, %1118
  %1138 = fmul fast float %1128, %1117
  %1139 = fmul fast float %1128, %1116
  %1140 = fmul fast float %1128, %1115
  br label %1141

; <label>:1141                                    ; preds = %1125, %563, %237
  %1142 = phi float [ 0.000000e+00, %237 ], [ %1140, %1125 ], [ %597, %563 ]
  %1143 = phi float [ 0.000000e+00, %237 ], [ %1139, %1125 ], [ %595, %563 ]
  %1144 = phi float [ 0.000000e+00, %237 ], [ %1138, %1125 ], [ %593, %563 ]
  %1145 = phi float [ 0.000000e+00, %237 ], [ %1137, %1125 ], [ %591, %563 ]
  %1146 = phi float [ 0.000000e+00, %237 ], [ %1136, %1125 ], [ %589, %563 ]
  %1147 = phi float [ 0.000000e+00, %237 ], [ %1135, %1125 ], [ %587, %563 ]
  %1148 = phi float [ 0.000000e+00, %237 ], [ %1134, %1125 ], [ %585, %563 ]
  %1149 = phi float [ 0.000000e+00, %237 ], [ %1133, %1125 ], [ %583, %563 ]
  %1150 = phi float [ 0.000000e+00, %237 ], [ %1132, %1125 ], [ %581, %563 ]
  %1151 = phi float [ 0.000000e+00, %237 ], [ %1131, %1125 ], [ %579, %563 ]
  %1152 = phi float [ 0.000000e+00, %237 ], [ %1130, %1125 ], [ %577, %563 ]
  %1153 = phi float [ 0.000000e+00, %237 ], [ %1129, %1125 ], [ %575, %563 ]
  %1154 = fcmp fast olt float %238, 1.000000e+00
  br i1 %1154, label %1155, label %1800, !dx.controlflow.hints !72

; <label>:1155                                    ; preds = %1141
  %1156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1157 = extractvalue %dx.types.CBufRet.f32 %1156, 0
  %1158 = extractvalue %dx.types.CBufRet.f32 %1156, 1
  %1159 = fsub fast float %188, %1157
  %1160 = fsub fast float %193, %1158
  %1161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1162 = extractvalue %dx.types.CBufRet.f32 %1161, 0
  %1163 = extractvalue %dx.types.CBufRet.f32 %1161, 1
  %1164 = fmul fast float %1159, %1162
  %1165 = fmul fast float %1160, %1163
  %1166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1167 = extractvalue %dx.types.CBufRet.f32 %1166, 0
  %1168 = fmul fast float %1167, %1164
  %1169 = extractvalue %dx.types.CBufRet.f32 %1166, 1
  %1170 = fadd fast float %1168, %1169
  %1171 = extractvalue %dx.types.CBufRet.f32 %1166, 2
  %1172 = fmul fast float %1171, %1165
  %1173 = extractvalue %dx.types.CBufRet.f32 %1166, 3
  %1174 = fadd fast float %1172, %1173
  %1175 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %21, float %1170, float %1174, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1176 = extractvalue %dx.types.ResRet.f32 %1175, 0
  %1177 = extractvalue %dx.types.ResRet.f32 %1175, 1
  %1178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1179 = extractvalue %dx.types.CBufRet.f32 %1178, 1
  %1180 = extractvalue %dx.types.CBufRet.f32 %1178, 0
  %1181 = fsub fast float %1179, %1180
  %1182 = fmul fast float %1181, %1176
  %1183 = fadd fast float %1182, %1180
  %1184 = extractvalue %dx.types.CBufRet.f32 %1178, 3
  %1185 = extractvalue %dx.types.CBufRet.f32 %1178, 2
  %1186 = fsub fast float %1184, %1185
  %1187 = fmul fast float %1186, %1177
  %1188 = fadd fast float %1187, %1185
  %1189 = fsub fast float %198, %1183
  %1190 = fsub fast float %1188, %1183
  %1191 = fdiv fast float %1189, %1190
  %1192 = call float @dx.op.unary.f32(i32 7, float %1191)  ; Saturate(value)
  %1193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %1194 = extractvalue %dx.types.CBufRet.f32 %1193, 0
  %1195 = fmul fast float %1194, %1192
  %1196 = extractvalue %dx.types.CBufRet.f32 %1193, 1
  %1197 = fadd fast float %1195, %1196
  %1198 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %21, float %1170, float %1174, float %1197, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1199 = extractvalue %dx.types.ResRet.f32 %1198, 0
  %1200 = extractvalue %dx.types.ResRet.f32 %1198, 1
  %1201 = extractvalue %dx.types.ResRet.f32 %1198, 2
  %1202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %1203 = extractvalue %dx.types.CBufRet.f32 %1202, 0
  %1204 = extractvalue %dx.types.CBufRet.f32 %1202, 1
  %1205 = extractvalue %dx.types.CBufRet.f32 %1202, 2
  %1206 = fmul fast float %1203, %1199
  %1207 = fmul fast float %1204, %1200
  %1208 = fmul fast float %1205, %1201
  %1209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %1210 = extractvalue %dx.types.CBufRet.f32 %1209, 0
  %1211 = extractvalue %dx.types.CBufRet.f32 %1209, 1
  %1212 = extractvalue %dx.types.CBufRet.f32 %1209, 2
  %1213 = fadd fast float %1206, %1210
  %1214 = fadd fast float %1207, %1211
  %1215 = fadd fast float %1208, %1212
  %1216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %1217 = extractvalue %dx.types.CBufRet.f32 %1216, 0
  %1218 = fmul fast float %1217, %1164
  %1219 = extractvalue %dx.types.CBufRet.f32 %1216, 1
  %1220 = fadd fast float %1218, %1219
  %1221 = extractvalue %dx.types.CBufRet.f32 %1216, 2
  %1222 = fmul fast float %1221, %1165
  %1223 = extractvalue %dx.types.CBufRet.f32 %1216, 3
  %1224 = fadd fast float %1222, %1223
  %1225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %1226 = extractvalue %dx.types.CBufRet.f32 %1225, 0
  %1227 = extractvalue %dx.types.CBufRet.f32 %1225, 1
  %1228 = extractvalue %dx.types.CBufRet.f32 %1225, 2
  %1229 = extractvalue %dx.types.CBufRet.f32 %1225, 3
  %1230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %1231 = extractvalue %dx.types.CBufRet.f32 %1230, 0
  %1232 = extractvalue %dx.types.CBufRet.f32 %1230, 1
  %1233 = extractvalue %dx.types.CBufRet.f32 %1230, 2
  %1234 = extractvalue %dx.types.CBufRet.f32 %1230, 3
  %1235 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %21, float %1220, float %1224, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1236 = extractvalue %dx.types.ResRet.f32 %1235, 0
  %1237 = extractvalue %dx.types.ResRet.f32 %1235, 1
  %1238 = extractvalue %dx.types.ResRet.f32 %1235, 2
  %1239 = extractvalue %dx.types.ResRet.f32 %1235, 3
  %1240 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %21, float %1220, float %1224, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1241 = extractvalue %dx.types.ResRet.f32 %1240, 0
  %1242 = extractvalue %dx.types.ResRet.f32 %1240, 1
  %1243 = extractvalue %dx.types.ResRet.f32 %1240, 2
  %1244 = extractvalue %dx.types.ResRet.f32 %1240, 3
  %1245 = fmul fast float %1236, %1213
  %1246 = fmul fast float %1241, %1213
  %1247 = fmul fast float %1243, %1213
  %1248 = fmul fast float %1239, %1213
  %1249 = fadd fast float %1245, %1226
  %1250 = fadd fast float %1246, %1227
  %1251 = fadd fast float %1247, %1228
  %1252 = fadd fast float %1248, %1229
  %1253 = fmul fast float %1237, %1213
  %1254 = fmul fast float %1242, %1213
  %1255 = fadd fast float %1253, %1231
  %1256 = fadd fast float %1254, %1232
  %1257 = fmul fast float %1238, %1213
  %1258 = fmul fast float %1244, %1213
  %1259 = fadd fast float %1257, %1233
  %1260 = fadd fast float %1258, %1234
  %1261 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %21, float %1220, float %1224, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1262 = extractvalue %dx.types.ResRet.f32 %1261, 0
  %1263 = extractvalue %dx.types.ResRet.f32 %1261, 1
  %1264 = extractvalue %dx.types.ResRet.f32 %1261, 2
  %1265 = extractvalue %dx.types.ResRet.f32 %1261, 3
  %1266 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %21, float %1220, float %1224, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1267 = extractvalue %dx.types.ResRet.f32 %1266, 0
  %1268 = extractvalue %dx.types.ResRet.f32 %1266, 1
  %1269 = extractvalue %dx.types.ResRet.f32 %1266, 2
  %1270 = extractvalue %dx.types.ResRet.f32 %1266, 3
  %1271 = fmul fast float %1262, %1214
  %1272 = fmul fast float %1267, %1214
  %1273 = fmul fast float %1269, %1214
  %1274 = fmul fast float %1265, %1214
  %1275 = fadd fast float %1249, %1271
  %1276 = fadd fast float %1250, %1272
  %1277 = fadd fast float %1251, %1273
  %1278 = fadd fast float %1252, %1274
  %1279 = fmul fast float %1263, %1214
  %1280 = fmul fast float %1268, %1214
  %1281 = fadd fast float %1255, %1279
  %1282 = fadd fast float %1256, %1280
  %1283 = fmul fast float %1264, %1214
  %1284 = fmul fast float %1270, %1214
  %1285 = fadd fast float %1259, %1283
  %1286 = fadd fast float %1260, %1284
  %1287 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %21, float %1220, float %1224, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1288 = extractvalue %dx.types.ResRet.f32 %1287, 0
  %1289 = extractvalue %dx.types.ResRet.f32 %1287, 1
  %1290 = extractvalue %dx.types.ResRet.f32 %1287, 2
  %1291 = extractvalue %dx.types.ResRet.f32 %1287, 3
  %1292 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %21, float %1220, float %1224, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1293 = extractvalue %dx.types.ResRet.f32 %1292, 0
  %1294 = extractvalue %dx.types.ResRet.f32 %1292, 1
  %1295 = extractvalue %dx.types.ResRet.f32 %1292, 2
  %1296 = extractvalue %dx.types.ResRet.f32 %1292, 3
  %1297 = fmul fast float %1288, %1215
  %1298 = fmul fast float %1293, %1215
  %1299 = fmul fast float %1295, %1215
  %1300 = fmul fast float %1291, %1215
  %1301 = fadd fast float %1275, %1297
  %1302 = fadd fast float %1276, %1298
  %1303 = fadd fast float %1277, %1299
  %1304 = fadd fast float %1278, %1300
  %1305 = fmul fast float %1289, %1215
  %1306 = fmul fast float %1294, %1215
  %1307 = fadd fast float %1281, %1305
  %1308 = fadd fast float %1282, %1306
  %1309 = fmul fast float %1290, %1215
  %1310 = fmul fast float %1296, %1215
  %1311 = fadd fast float %1285, %1309
  %1312 = fadd fast float %1286, %1310
  %1313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %1314 = extractvalue %dx.types.CBufRet.f32 %1313, 0
  %1315 = fsub fast float %188, %1314
  %1316 = fsub fast float %1157, %188
  %1317 = call float @dx.op.binary.f32(i32 35, float %1316, float %1315)  ; FMax(a,b)
  %1318 = extractvalue %dx.types.CBufRet.f32 %1313, 1
  %1319 = fsub fast float %193, %1318
  %1320 = fsub fast float %1158, %193
  %1321 = call float @dx.op.binary.f32(i32 35, float %1320, float %1319)  ; FMax(a,b)
  %1322 = call float @dx.op.binary.f32(i32 35, float %1317, float %1321)  ; FMax(a,b)
  %1323 = extractvalue %dx.types.CBufRet.f32 %1161, 3
  %1324 = fmul fast float %1323, %1322
  %1325 = call float @dx.op.unary.f32(i32 7, float %1324)  ; Saturate(value)
  %1326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %1327 = extractvalue %dx.types.CBufRet.f32 %1326, 0
  %1328 = extractvalue %dx.types.CBufRet.f32 %1326, 1
  %1329 = extractvalue %dx.types.CBufRet.f32 %1326, 2
  %1330 = extractvalue %dx.types.CBufRet.f32 %1326, 3
  %1331 = fsub fast float %1327, %1301
  %1332 = fsub fast float %1328, %1302
  %1333 = fsub fast float %1329, %1303
  %1334 = fsub fast float %1330, %1304
  %1335 = fmul fast float %1331, %1325
  %1336 = fmul fast float %1332, %1325
  %1337 = fmul fast float %1333, %1325
  %1338 = fmul fast float %1334, %1325
  %1339 = fadd fast float %1335, %1301
  %1340 = fadd fast float %1336, %1302
  %1341 = fadd fast float %1337, %1303
  %1342 = fadd fast float %1338, %1304
  %1343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %1344 = extractvalue %dx.types.CBufRet.f32 %1343, 0
  %1345 = extractvalue %dx.types.CBufRet.f32 %1343, 1
  %1346 = fsub fast float %1344, %1307
  %1347 = fsub fast float %1345, %1308
  %1348 = fmul fast float %1346, %1325
  %1349 = fmul fast float %1347, %1325
  %1350 = fadd fast float %1348, %1307
  %1351 = fadd fast float %1349, %1308
  %1352 = extractvalue %dx.types.CBufRet.f32 %1343, 2
  %1353 = extractvalue %dx.types.CBufRet.f32 %1343, 3
  %1354 = fsub fast float %1352, %1311
  %1355 = fsub fast float %1353, %1312
  %1356 = fmul fast float %1354, %1325
  %1357 = fmul fast float %1355, %1325
  %1358 = fadd fast float %1356, %1311
  %1359 = fadd fast float %1357, %1312
  %1360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %1361 = extractvalue %dx.types.CBufRet.f32 %1360, 0
  %1362 = fmul fast float %1361, %1339
  %1363 = fmul fast float %1361, %1340
  %1364 = fmul fast float %1361, %1341
  %1365 = fmul fast float %1361, %1342
  %1366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %1367 = extractvalue %dx.types.CBufRet.f32 %1366, 0
  %1368 = fmul fast float %1367, %1350
  %1369 = fmul fast float %1367, %1351
  %1370 = fadd fast float %1368, %1362
  %1371 = fadd fast float %1369, %1364
  %1372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %1373 = extractvalue %dx.types.CBufRet.f32 %1372, 0
  %1374 = fmul fast float %1373, %1358
  %1375 = fmul fast float %1373, %1359
  %1376 = fadd fast float %1370, %1374
  %1377 = fadd fast float %1371, %1375
  %1378 = extractvalue %dx.types.CBufRet.f32 %1360, 1
  %1379 = fmul fast float %1378, %1339
  %1380 = fmul fast float %1378, %1340
  %1381 = fmul fast float %1378, %1341
  %1382 = fmul fast float %1378, %1342
  %1383 = extractvalue %dx.types.CBufRet.f32 %1366, 1
  %1384 = fmul fast float %1383, %1350
  %1385 = fmul fast float %1383, %1351
  %1386 = fadd fast float %1384, %1379
  %1387 = fadd fast float %1385, %1381
  %1388 = extractvalue %dx.types.CBufRet.f32 %1372, 1
  %1389 = fmul fast float %1388, %1358
  %1390 = fmul fast float %1388, %1359
  %1391 = fadd fast float %1386, %1389
  %1392 = fadd fast float %1387, %1390
  %1393 = extractvalue %dx.types.CBufRet.f32 %1360, 2
  %1394 = fmul fast float %1393, %1339
  %1395 = fmul fast float %1393, %1340
  %1396 = fmul fast float %1393, %1341
  %1397 = fmul fast float %1393, %1342
  %1398 = extractvalue %dx.types.CBufRet.f32 %1366, 2
  %1399 = fmul fast float %1398, %1350
  %1400 = fmul fast float %1398, %1351
  %1401 = fadd fast float %1399, %1394
  %1402 = fadd fast float %1400, %1396
  %1403 = extractvalue %dx.types.CBufRet.f32 %1372, 2
  %1404 = fmul fast float %1403, %1358
  %1405 = fmul fast float %1403, %1359
  %1406 = fadd fast float %1401, %1404
  %1407 = fadd fast float %1402, %1405
  %1408 = fmul fast float %1395, %1395
  %1409 = fmul fast float %1407, %1407
  %1410 = fmul fast float %1397, %1397
  %1411 = fadd fast float %1410, %1408
  %1412 = fadd fast float %1411, %1409
  %1413 = call float @dx.op.unary.f32(i32 24, float %1412)  ; Sqrt(value)
  %1414 = fcmp fast ugt float %1413, 0.000000e+00
  br i1 %1414, label %1415, label %1430, !dx.controlflow.hints !73

; <label>:1415                                    ; preds = %1155
  %1416 = fsub fast float -0.000000e+00, %1397
  %1417 = fdiv fast float %1416, %1413
  %1418 = fsub fast float -0.000000e+00, %1395
  %1419 = fdiv fast float %1418, %1413
  %1420 = fdiv fast float %1407, %1413
  %1421 = fmul fast float %1406, 0x3FE279A760000000
  %1422 = fmul fast float %1419, %1395
  %1423 = fmul fast float %1420, %1407
  %1424 = fmul fast float %1417, %1397
  %1425 = fadd fast float %1422, %1424
  %1426 = fsub fast float %1425, %1423
  %1427 = call float @dx.op.unary.f32(i32 6, float %1426)  ; FAbs(value)
  %1428 = fadd fast float %1427, 0x3DDB7CDFE0000000
  %1429 = fdiv fast float %1421, %1428
  br label %1430

; <label>:1430                                    ; preds = %1415, %1155
  %1431 = phi float [ %1429, %1415 ], [ 1.000000e+00, %1155 ]
  %1432 = fmul fast float %1380, %1380
  %1433 = fmul fast float %1392, %1392
  %1434 = fmul fast float %1382, %1382
  %1435 = fadd fast float %1434, %1432
  %1436 = fadd fast float %1435, %1433
  %1437 = call float @dx.op.unary.f32(i32 24, float %1436)  ; Sqrt(value)
  %1438 = fcmp fast ugt float %1437, 0.000000e+00
  br i1 %1438, label %1439, label %1454, !dx.controlflow.hints !73

; <label>:1439                                    ; preds = %1430
  %1440 = fsub fast float -0.000000e+00, %1382
  %1441 = fdiv fast float %1440, %1437
  %1442 = fsub fast float -0.000000e+00, %1380
  %1443 = fdiv fast float %1442, %1437
  %1444 = fdiv fast float %1392, %1437
  %1445 = fmul fast float %1391, 0x3FE279A760000000
  %1446 = fmul fast float %1443, %1380
  %1447 = fmul fast float %1444, %1392
  %1448 = fmul fast float %1441, %1382
  %1449 = fadd fast float %1446, %1448
  %1450 = fsub fast float %1449, %1447
  %1451 = call float @dx.op.unary.f32(i32 6, float %1450)  ; FAbs(value)
  %1452 = fadd fast float %1451, 0x3DDB7CDFE0000000
  %1453 = fdiv fast float %1445, %1452
  br label %1454

; <label>:1454                                    ; preds = %1439, %1430
  %1455 = phi float [ %1453, %1439 ], [ 1.000000e+00, %1430 ]
  %1456 = call float @dx.op.binary.f32(i32 36, float %1455, float %1431)  ; FMin(a,b)
  %1457 = fmul fast float %1363, %1363
  %1458 = fmul fast float %1377, %1377
  %1459 = fmul fast float %1365, %1365
  %1460 = fadd fast float %1459, %1457
  %1461 = fadd fast float %1460, %1458
  %1462 = call float @dx.op.unary.f32(i32 24, float %1461)  ; Sqrt(value)
  %1463 = fcmp fast ugt float %1462, 0.000000e+00
  br i1 %1463, label %1464, label %1479, !dx.controlflow.hints !73

; <label>:1464                                    ; preds = %1454
  %1465 = fsub fast float -0.000000e+00, %1365
  %1466 = fdiv fast float %1465, %1462
  %1467 = fsub fast float -0.000000e+00, %1363
  %1468 = fdiv fast float %1467, %1462
  %1469 = fdiv fast float %1377, %1462
  %1470 = fmul fast float %1376, 0x3FE279A760000000
  %1471 = fmul fast float %1468, %1363
  %1472 = fmul fast float %1469, %1377
  %1473 = fmul fast float %1466, %1365
  %1474 = fadd fast float %1471, %1473
  %1475 = fsub fast float %1474, %1472
  %1476 = call float @dx.op.unary.f32(i32 6, float %1475)  ; FAbs(value)
  %1477 = fadd fast float %1476, 0x3DDB7CDFE0000000
  %1478 = fdiv fast float %1470, %1477
  br label %1479

; <label>:1479                                    ; preds = %1464, %1454
  %1480 = phi float [ %1478, %1464 ], [ 1.000000e+00, %1454 ]
  %1481 = call float @dx.op.binary.f32(i32 36, float %1480, float %1456)  ; FMin(a,b)
  %1482 = call float @dx.op.unary.f32(i32 7, float %1481)  ; Saturate(value)
  %1483 = fcmp fast olt float %1482, 1.000000e+00
  br i1 %1483, label %1484, label %1494, !dx.controlflow.hints !74

; <label>:1484                                    ; preds = %1479
  %1485 = fmul fast float %1482, %1363
  %1486 = fmul fast float %1482, %1377
  %1487 = fmul fast float %1482, %1365
  %1488 = fmul fast float %1482, %1380
  %1489 = fmul fast float %1482, %1392
  %1490 = fmul fast float %1482, %1382
  %1491 = fmul fast float %1482, %1395
  %1492 = fmul fast float %1482, %1407
  %1493 = fmul fast float %1482, %1397
  br label %1494

; <label>:1494                                    ; preds = %1484, %1479
  %1495 = phi float [ %1491, %1484 ], [ %1395, %1479 ]
  %1496 = phi float [ %1492, %1484 ], [ %1407, %1479 ]
  %1497 = phi float [ %1493, %1484 ], [ %1397, %1479 ]
  %1498 = phi float [ %1488, %1484 ], [ %1380, %1479 ]
  %1499 = phi float [ %1489, %1484 ], [ %1392, %1479 ]
  %1500 = phi float [ %1490, %1484 ], [ %1382, %1479 ]
  %1501 = phi float [ %1485, %1484 ], [ %1363, %1479 ]
  %1502 = phi float [ %1486, %1484 ], [ %1377, %1479 ]
  %1503 = phi float [ %1487, %1484 ], [ %1365, %1479 ]
  %1504 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1376)  ; FMax(a,b)
  %1505 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1391)  ; FMax(a,b)
  %1506 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1406)  ; FMax(a,b)
  %1507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %1508 = extractvalue %dx.types.CBufRet.f32 %1507, 0
  %1509 = fcmp fast ogt float %1508, 0.000000e+00
  %1510 = fcmp fast oge float %1164, 0.000000e+00
  %1511 = and i1 %1510, %1509
  %1512 = fcmp fast ole float %1164, 1.000000e+00
  %1513 = and i1 %1512, %1511
  %1514 = fcmp fast oge float %1165, 0.000000e+00
  %1515 = and i1 %1514, %1513
  %1516 = fcmp fast ole float %1165, 1.000000e+00
  %1517 = and i1 %1516, %1515
  br i1 %1517, label %1518, label %1663, !dx.controlflow.hints !75

; <label>:1518                                    ; preds = %1494
  %1519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1520 = extractvalue %dx.types.CBufRet.f32 %1519, 2
  %1521 = extractvalue %dx.types.CBufRet.f32 %1519, 3
  %1522 = fmul fast float %1520, %1164
  %1523 = fmul fast float %1521, %1165
  %1524 = call float @dx.op.unary.f32(i32 27, float %1522)  ; Round_ni(value)
  %1525 = call float @dx.op.unary.f32(i32 27, float %1523)  ; Round_ni(value)
  %1526 = fptosi float %1524 to i32
  %1527 = fptosi float %1525 to i32
  %1528 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %6, i32 0, i32 %1526, i32 %1527, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1529 = extractvalue %dx.types.ResRet.i32 %1528, 0
  %1530 = and i32 %1529, 65535
  %1531 = lshr i32 %1529, 16
  %1532 = icmp eq i32 %1530, 65535
  br i1 %1532, label %1569, label %1533, !dx.controlflow.hints !76

; <label>:1533                                    ; preds = %1518
  %1534 = extractvalue %dx.types.CBufRet.f32 %1507, 1
  %1535 = extractvalue %dx.types.CBufRet.f32 %1519, 0
  %1536 = extractvalue %dx.types.CBufRet.f32 %1519, 1
  %1537 = fmul fast float %1535, %1164
  %1538 = fmul fast float %1536, %1165
  %1539 = fmul fast float %1537, 1.250000e-01
  %1540 = fmul fast float %1538, 1.250000e-01
  %1541 = call float @dx.op.unary.f32(i32 27, float %1539)  ; Round_ni(value)
  %1542 = call float @dx.op.unary.f32(i32 27, float %1540)  ; Round_ni(value)
  %1543 = fmul fast float %1541, 8.000000e+00
  %1544 = fmul fast float %1542, 8.000000e+00
  %1545 = and i32 %1529, 255
  %1546 = lshr i32 %1529, 8
  %1547 = and i32 %1546, 255
  %1548 = mul nuw nsw i32 %1545, 9
  %1549 = uitofp i32 %1548 to float
  %1550 = mul nuw nsw i32 %1547, 9
  %1551 = uitofp i32 %1550 to float
  %1552 = fadd fast float %1549, 5.000000e-01
  %1553 = fadd fast float %1552, %1537
  %1554 = fsub fast float %1553, %1543
  %1555 = fadd fast float %1551, 5.000000e-01
  %1556 = fadd fast float %1555, %1538
  %1557 = fsub fast float %1556, %1544
  %1558 = fdiv fast float %1554, %1508
  %1559 = fdiv fast float %1557, %1534
  %1560 = fmul fast float %1192, 4.375000e-01
  %1561 = fadd fast float %1560, 3.125000e-02
  %1562 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %21, float %1558, float %1559, float %1561, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1563 = extractvalue %dx.types.ResRet.f32 %1562, 0
  %1564 = extractvalue %dx.types.ResRet.f32 %1562, 1
  %1565 = extractvalue %dx.types.ResRet.f32 %1562, 2
  %1566 = fadd fast float %1563, %1504
  %1567 = fadd fast float %1564, %1505
  %1568 = fadd fast float %1565, %1506
  br label %1569

; <label>:1569                                    ; preds = %1533, %1518
  %1570 = phi float [ %1568, %1533 ], [ %1506, %1518 ]
  %1571 = phi float [ %1567, %1533 ], [ %1505, %1518 ]
  %1572 = phi float [ %1566, %1533 ], [ %1504, %1518 ]
  %1573 = icmp eq i32 %1531, 65535
  br i1 %1573, label %1663, label %1574, !dx.controlflow.hints !77

; <label>:1574                                    ; preds = %1569
  %1575 = extractvalue %dx.types.CBufRet.f32 %1507, 1
  %1576 = extractvalue %dx.types.CBufRet.f32 %1519, 0
  %1577 = extractvalue %dx.types.CBufRet.f32 %1519, 1
  %1578 = fmul fast float %1576, %1164
  %1579 = fmul fast float %1577, %1165
  %1580 = fmul fast float %1578, 1.250000e-01
  %1581 = fmul fast float %1579, 1.250000e-01
  %1582 = call float @dx.op.unary.f32(i32 27, float %1580)  ; Round_ni(value)
  %1583 = call float @dx.op.unary.f32(i32 27, float %1581)  ; Round_ni(value)
  %1584 = fmul fast float %1582, 8.000000e+00
  %1585 = fmul fast float %1583, 8.000000e+00
  %1586 = fsub fast float %1578, %1584
  %1587 = fsub fast float %1579, %1585
  %1588 = fadd fast float %1586, 5.000000e-01
  %1589 = fadd fast float %1587, 5.000000e-01
  %1590 = and i32 %1531, 255
  %1591 = lshr i32 %1529, 24
  %1592 = mul nuw nsw i32 %1590, 9
  %1593 = uitofp i32 %1592 to float
  %1594 = mul nuw nsw i32 %1591, 9
  %1595 = uitofp i32 %1594 to float
  %1596 = fadd fast float %1588, %1593
  %1597 = fadd fast float %1589, %1595
  %1598 = fdiv fast float %1596, %1508
  %1599 = fdiv fast float %1597, %1575
  %1600 = fmul fast float %1192, 4.375000e-01
  %1601 = fadd fast float %1600, 3.125000e-02
  %1602 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %21, float %1598, float %1599, float %1601, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1603 = extractvalue %dx.types.ResRet.f32 %1602, 0
  %1604 = extractvalue %dx.types.ResRet.f32 %1602, 1
  %1605 = extractvalue %dx.types.ResRet.f32 %1602, 2
  %1606 = fadd fast float %1600, 5.312500e-01
  %1607 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %21, float %1598, float %1599, float %1606, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1608 = extractvalue %dx.types.ResRet.f32 %1607, 0
  %1609 = extractvalue %dx.types.ResRet.f32 %1607, 1
  %1610 = extractvalue %dx.types.ResRet.f32 %1607, 2
  %1611 = fmul fast float %1608, 2.000000e+00
  %1612 = fmul fast float %1609, 2.000000e+00
  %1613 = fmul fast float %1610, 2.000000e+00
  %1614 = fadd fast float %1611, -1.000000e+00
  %1615 = fadd fast float %1612, -1.000000e+00
  %1616 = fadd fast float %1613, -1.000000e+00
  %1617 = fmul fast float %1614, %1614
  %1618 = fmul fast float %1615, %1615
  %1619 = fadd fast float %1617, %1618
  %1620 = fmul fast float %1616, %1616
  %1621 = fadd fast float %1619, %1620
  %1622 = call float @dx.op.unary.f32(i32 24, float %1621)  ; Sqrt(value)
  %1623 = fcmp fast ogt float %1622, 0.000000e+00
  br i1 %1623, label %1624, label %1628, !dx.controlflow.hints !78

; <label>:1624                                    ; preds = %1574
  %1625 = fdiv fast float %1614, %1622
  %1626 = fdiv fast float %1615, %1622
  %1627 = fdiv fast float %1616, %1622
  br label %1628

; <label>:1628                                    ; preds = %1624, %1574
  %1629 = phi float [ %1625, %1624 ], [ 0.000000e+00, %1574 ]
  %1630 = phi float [ %1626, %1624 ], [ 0.000000e+00, %1574 ]
  %1631 = phi float [ %1627, %1624 ], [ 0.000000e+00, %1574 ]
  %1632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1633 = extractvalue %dx.types.CBufRet.f32 %1632, 0
  %1634 = extractvalue %dx.types.CBufRet.f32 %1632, 1
  %1635 = fsub fast float %188, %1633
  %1636 = fsub fast float %193, %1634
  %1637 = fmul fast float %1635, %1635
  %1638 = fmul fast float %1636, %1636
  %1639 = fadd fast float %1637, %1638
  %1640 = call float @dx.op.unary.f32(i32 24, float %1639)  ; Sqrt(value)
  %1641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1642 = extractvalue %dx.types.CBufRet.f32 %1641, 0
  %1643 = extractvalue %dx.types.CBufRet.f32 %1641, 1
  %1644 = fsub fast float %1640, %1642
  %1645 = fdiv fast float %1644, %1643
  %1646 = call float @dx.op.unary.f32(i32 7, float %1645)  ; Saturate(value)
  %1647 = fmul fast float %1646, 2.000000e+00
  %1648 = fsub fast float 3.000000e+00, %1647
  %1649 = fmul fast float %1646, %1646
  %1650 = fmul fast float %1649, %1648
  %1651 = call float @dx.op.dot3.f32(i32 55, float %1629, float %1630, float %1631, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1652 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1651)  ; FMax(a,b)
  %1653 = fmul fast float %1652, 0x400C5BF8A0000000
  %1654 = fmul fast float %1650, %1603
  %1655 = fmul fast float %1654, %1653
  %1656 = fadd fast float %1655, %1572
  %1657 = fmul fast float %1650, %1604
  %1658 = fmul fast float %1657, %1653
  %1659 = fadd fast float %1658, %1571
  %1660 = fmul fast float %1650, %1605
  %1661 = fmul fast float %1660, %1653
  %1662 = fadd fast float %1661, %1570
  br label %1663

; <label>:1663                                    ; preds = %1628, %1569, %1494
  %1664 = phi float [ %1662, %1628 ], [ %1570, %1569 ], [ %1506, %1494 ]
  %1665 = phi float [ %1659, %1628 ], [ %1571, %1569 ], [ %1505, %1494 ]
  %1666 = phi float [ %1656, %1628 ], [ %1572, %1569 ], [ %1504, %1494 ]
  %1667 = fcmp fast ogt float %198, %1188
  %1668 = and i1 %1510, %1667
  %1669 = and i1 %1512, %1668
  %1670 = and i1 %1514, %1669
  %1671 = and i1 %1516, %1670
  br i1 %1671, label %1672, label %1729, !dx.controlflow.hints !79

; <label>:1672                                    ; preds = %1663
  %1673 = fmul fast float %1190, 0x3FC24924A0000000
  %1674 = fsub fast float %198, %1188
  %1675 = fdiv fast float %1674, %1673
  %1676 = call float @dx.op.unary.f32(i32 7, float %1675)  ; Saturate(value)
  %1677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %1678 = extractvalue %dx.types.CBufRet.f32 %1677, 0
  %1679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %1680 = extractvalue %dx.types.CBufRet.f32 %1679, 0
  %1681 = extractvalue %dx.types.CBufRet.f32 %1679, 1
  %1682 = extractvalue %dx.types.CBufRet.f32 %1679, 2
  %1683 = fsub fast float %1678, %1666
  %1684 = fsub fast float %1680, %1501
  %1685 = fsub fast float %1681, %1502
  %1686 = fsub fast float %1682, %1503
  %1687 = fmul fast float %1683, %1676
  %1688 = fmul fast float %1684, %1676
  %1689 = fmul fast float %1685, %1676
  %1690 = fmul fast float %1686, %1676
  %1691 = fadd fast float %1687, %1666
  %1692 = fadd fast float %1688, %1501
  %1693 = fadd fast float %1689, %1502
  %1694 = fadd fast float %1690, %1503
  %1695 = extractvalue %dx.types.CBufRet.f32 %1677, 1
  %1696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %1697 = extractvalue %dx.types.CBufRet.f32 %1696, 0
  %1698 = extractvalue %dx.types.CBufRet.f32 %1696, 1
  %1699 = extractvalue %dx.types.CBufRet.f32 %1696, 2
  %1700 = fsub fast float %1695, %1665
  %1701 = fsub fast float %1697, %1498
  %1702 = fsub fast float %1698, %1499
  %1703 = fsub fast float %1699, %1500
  %1704 = fmul fast float %1700, %1676
  %1705 = fmul fast float %1701, %1676
  %1706 = fmul fast float %1702, %1676
  %1707 = fmul fast float %1703, %1676
  %1708 = fadd fast float %1704, %1665
  %1709 = fadd fast float %1705, %1498
  %1710 = fadd fast float %1706, %1499
  %1711 = fadd fast float %1707, %1500
  %1712 = extractvalue %dx.types.CBufRet.f32 %1677, 2
  %1713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %1714 = extractvalue %dx.types.CBufRet.f32 %1713, 0
  %1715 = extractvalue %dx.types.CBufRet.f32 %1713, 1
  %1716 = extractvalue %dx.types.CBufRet.f32 %1713, 2
  %1717 = fsub fast float %1712, %1664
  %1718 = fsub fast float %1714, %1495
  %1719 = fsub fast float %1715, %1496
  %1720 = fsub fast float %1716, %1497
  %1721 = fmul fast float %1717, %1676
  %1722 = fmul fast float %1718, %1676
  %1723 = fmul fast float %1719, %1676
  %1724 = fmul fast float %1720, %1676
  %1725 = fadd fast float %1721, %1664
  %1726 = fadd fast float %1722, %1495
  %1727 = fadd fast float %1723, %1496
  %1728 = fadd fast float %1724, %1497
  br label %1729

; <label>:1729                                    ; preds = %1672, %1663
  %1730 = phi float [ %1725, %1672 ], [ %1664, %1663 ]
  %1731 = phi float [ %1726, %1672 ], [ %1495, %1663 ]
  %1732 = phi float [ %1727, %1672 ], [ %1496, %1663 ]
  %1733 = phi float [ %1728, %1672 ], [ %1497, %1663 ]
  %1734 = phi float [ %1708, %1672 ], [ %1665, %1663 ]
  %1735 = phi float [ %1709, %1672 ], [ %1498, %1663 ]
  %1736 = phi float [ %1710, %1672 ], [ %1499, %1663 ]
  %1737 = phi float [ %1711, %1672 ], [ %1500, %1663 ]
  %1738 = phi float [ %1691, %1672 ], [ %1666, %1663 ]
  %1739 = phi float [ %1692, %1672 ], [ %1501, %1663 ]
  %1740 = phi float [ %1693, %1672 ], [ %1502, %1663 ]
  %1741 = phi float [ %1694, %1672 ], [ %1503, %1663 ]
  %1742 = extractvalue %dx.types.CBufRet.f32 %1313, 3
  %1743 = fmul fast float %1742, %1738
  %1744 = fmul fast float %1742, %1734
  %1745 = fmul fast float %1742, %1730
  %1746 = fmul fast float %1739, 1.500000e+00
  %1747 = fmul fast float %1746, %1742
  %1748 = fmul fast float %1740, 1.500000e+00
  %1749 = fmul fast float %1748, %1742
  %1750 = fmul fast float %1741, 1.500000e+00
  %1751 = fmul fast float %1750, %1742
  %1752 = fmul fast float %1735, 1.500000e+00
  %1753 = fmul fast float %1752, %1742
  %1754 = fmul fast float %1736, 1.500000e+00
  %1755 = fmul fast float %1754, %1742
  %1756 = fmul fast float %1737, 1.500000e+00
  %1757 = fmul fast float %1756, %1742
  %1758 = fmul fast float %1731, 1.500000e+00
  %1759 = fmul fast float %1758, %1742
  %1760 = fmul fast float %1732, 1.500000e+00
  %1761 = fmul fast float %1760, %1742
  %1762 = fmul fast float %1733, 1.500000e+00
  %1763 = fmul fast float %1762, %1742
  %1764 = fsub fast float %1153, %1743
  %1765 = fmul fast float %1764, %238
  %1766 = fadd fast float %1765, %1743
  %1767 = fsub fast float %1152, %1747
  %1768 = fmul fast float %1767, %238
  %1769 = fadd fast float %1768, %1747
  %1770 = fsub fast float %1151, %1749
  %1771 = fmul fast float %1770, %238
  %1772 = fadd fast float %1771, %1749
  %1773 = fsub fast float %1150, %1751
  %1774 = fmul fast float %1773, %238
  %1775 = fadd fast float %1774, %1751
  %1776 = fsub fast float %1149, %1744
  %1777 = fmul fast float %1776, %238
  %1778 = fadd fast float %1777, %1744
  %1779 = fsub fast float %1148, %1753
  %1780 = fmul fast float %1779, %238
  %1781 = fadd fast float %1780, %1753
  %1782 = fsub fast float %1147, %1755
  %1783 = fmul fast float %1782, %238
  %1784 = fadd fast float %1783, %1755
  %1785 = fsub fast float %1146, %1757
  %1786 = fmul fast float %1785, %238
  %1787 = fadd fast float %1786, %1757
  %1788 = fsub fast float %1145, %1745
  %1789 = fmul fast float %1788, %238
  %1790 = fadd fast float %1789, %1745
  %1791 = fsub fast float %1144, %1759
  %1792 = fmul fast float %1791, %238
  %1793 = fadd fast float %1792, %1759
  %1794 = fsub fast float %1143, %1761
  %1795 = fmul fast float %1794, %238
  %1796 = fadd fast float %1795, %1761
  %1797 = fsub fast float %1142, %1763
  %1798 = fmul fast float %1797, %238
  %1799 = fadd fast float %1798, %1763
  br label %1800

; <label>:1800                                    ; preds = %1729, %1141
  %1801 = phi float [ %1142, %1141 ], [ %1799, %1729 ]
  %1802 = phi float [ %1143, %1141 ], [ %1796, %1729 ]
  %1803 = phi float [ %1144, %1141 ], [ %1793, %1729 ]
  %1804 = phi float [ %1145, %1141 ], [ %1790, %1729 ]
  %1805 = phi float [ %1146, %1141 ], [ %1787, %1729 ]
  %1806 = phi float [ %1147, %1141 ], [ %1784, %1729 ]
  %1807 = phi float [ %1148, %1141 ], [ %1781, %1729 ]
  %1808 = phi float [ %1149, %1141 ], [ %1778, %1729 ]
  %1809 = phi float [ %1150, %1141 ], [ %1775, %1729 ]
  %1810 = phi float [ %1151, %1141 ], [ %1772, %1729 ]
  %1811 = phi float [ %1152, %1141 ], [ %1769, %1729 ]
  %1812 = phi float [ %1153, %1141 ], [ %1766, %1729 ]
  %1813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1814 = extractvalue %dx.types.CBufRet.f32 %1813, 3
  %1815 = fmul fast float %1814, %1812
  %1816 = fmul fast float %1814, %1811
  %1817 = fmul fast float %1814, %1810
  %1818 = fmul fast float %1814, %1809
  %1819 = extractvalue %dx.types.CBufRet.f32 %1813, 0
  %1820 = fmul fast float %1815, %1819
  %1821 = fmul fast float %1816, %1819
  %1822 = fmul fast float %1817, %1819
  %1823 = fmul fast float %1818, %1819
  %1824 = fmul fast float %1814, %1808
  %1825 = fmul fast float %1814, %1807
  %1826 = fmul fast float %1814, %1806
  %1827 = fmul fast float %1814, %1805
  %1828 = fmul fast float %1824, %1819
  %1829 = fmul fast float %1825, %1819
  %1830 = fmul fast float %1826, %1819
  %1831 = fmul fast float %1827, %1819
  %1832 = fmul fast float %1814, %1804
  %1833 = fmul fast float %1814, %1803
  %1834 = fmul fast float %1814, %1802
  %1835 = fmul fast float %1814, %1801
  %1836 = fmul fast float %1832, %1819
  %1837 = fmul fast float %1833, %1819
  %1838 = fmul fast float %1834, %1819
  %1839 = fmul fast float %1835, %1819
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %166, i32 %167, i32 0, float %1820, float %1821, float %1822, float %1823, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %166, i32 %167, i32 1, float %1828, float %1829, float %1830, float %1831, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %166, i32 %167, i32 2, float %1836, float %1837, float %1838, float %1839, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1840 = add i32 %167, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %166, i32 %1840, i32 0, float %1820, float %1821, float %1822, float %1823, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %166, i32 %1840, i32 1, float %1828, float %1829, float %1830, float %1831, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %166, i32 %1840, i32 2, float %1836, float %1837, float %1838, float %1839, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1841 = add i32 %166, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1841, i32 %167, i32 0, float %1820, float %1821, float %1822, float %1823, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1841, i32 %167, i32 1, float %1828, float %1829, float %1830, float %1831, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1841, i32 %167, i32 2, float %1836, float %1837, float %1838, float %1839, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1841, i32 %1840, i32 0, float %1820, float %1821, float %1822, float %1823, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1841, i32 %1840, i32 1, float %1828, float %1829, float %1830, float %1831, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1841, i32 %1840, i32 2, float %1836, float %1837, float %1838, float %1839, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1842

; <label>:1842                                    ; preds = %1800, %0
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
!36 = !{void ()* @cs_del_sh_sample_lightgrid_4_lowres, !"cs_del_sh_sample_lightgrid_4_lowres", null, !4, !37}
!37 = !{i32 0, i64 272, i32 4, !38}
!38 = !{i32 16, i32 2, i32 2}
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

