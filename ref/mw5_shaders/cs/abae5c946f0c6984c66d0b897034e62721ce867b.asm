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
; shader hash: c65c31ca49296549dff0eb1d78d08139
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
;   [4 x i8] (type annotation not present)
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
;                                   cbuffer      NA          NA     CB0            cb3     1
;                                   cbuffer      NA          NA     CB1            cb1     1
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
;                                   texture    byte         r/o      T9            t31     1
;                                   texture    byte         r/o     T10            t43     1
;                                   texture    byte         r/o     T11            t11     1
;                                   texture    byte         r/o     T12            t12     1
;                                   texture     f32         buf     T13            t19     1
;                                   texture     f32         buf     T14            t20     1
;                                   texture  struct         r/o     T15            t22     1
;                                   texture  struct         r/o     T16            t23     1
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
%"class.Buffer<vector<float, 3> >" = type { <3 x float> }
%"class.Buffer<float>" = type { float }
%"class.RWTexture2D<vector<float, 3> >" = type { <3 x float> }
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

define void @cs_del_sh_combine_multilightgrid_reflection_volumes_2_lowres() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 23, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 43, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 28, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %23 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %24 = call i32 @dx.op.threadId.i32(i32 93, i32 2)  ; ThreadId(component)
  %25 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %26 = extractvalue %dx.types.CBufRet.i32 %25, 2
  %27 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %26, i32 0)  ; BufferLoad(srv,index,wot)
  %28 = extractvalue %dx.types.ResRet.i32 %27, 0
  %29 = icmp ult i32 %22, %28
  br i1 %29, label %30, label %1595, !dx.controlflow.hints !36

; <label>:30                                      ; preds = %0
  %31 = add i32 %26, 3
  %32 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 %31)  ; CBufferLoadLegacy(handle,regIndex)
  %33 = extractvalue %dx.types.CBufRet.i32 %32, 2
  %34 = shl i32 %23, 1
  %35 = shl i32 %24, 1
  %36 = add i32 %33, %22
  %37 = shl i32 %36, 5
  %38 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %37, i32 undef)  ; BufferLoad(srv,index,wot)
  %39 = extractvalue %dx.types.ResRet.i32 %38, 0
  %40 = extractvalue %dx.types.ResRet.i32 %38, 1
  %41 = extractvalue %dx.types.ResRet.i32 %38, 2
  %42 = extractvalue %dx.types.ResRet.i32 %38, 3
  %43 = lshr i32 %42, 14
  %44 = and i32 %43, 16383
  %45 = and i32 %42, 16383
  %46 = bitcast i32 %39 to float
  %47 = bitcast i32 %40 to float
  %48 = bitcast i32 %41 to float
  %49 = and i32 %42, 536870912
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %90, label %51, !dx.controlflow.hints !37

; <label>:51                                      ; preds = %30
  %52 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %53 = extractvalue %dx.types.CBufRet.f32 %52, 2
  %54 = extractvalue %dx.types.CBufRet.f32 %52, 3
  %55 = fmul fast float %53, %46
  %56 = fmul fast float %54, %47
  %57 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %58 = extractvalue %dx.types.CBufRet.f32 %57, 0
  %59 = extractvalue %dx.types.CBufRet.f32 %57, 1
  %60 = fadd fast float %55, %58
  %61 = fadd fast float %56, %59
  %62 = call float @dx.op.unary.f32(i32 7, float %60)  ; Saturate(value)
  %63 = call float @dx.op.unary.f32(i32 7, float %61)  ; Saturate(value)
  %64 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %19, float %62, float %63, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %65 = extractvalue %dx.types.ResRet.f32 %64, 0
  %66 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %67 = extractvalue %dx.types.CBufRet.f32 %66, 0
  %68 = fmul fast float %67, %65
  %69 = fsub fast float %60, %62
  %70 = fsub fast float %61, %63
  %71 = extractvalue %dx.types.CBufRet.f32 %52, 0
  %72 = extractvalue %dx.types.CBufRet.f32 %52, 1
  %73 = fmul fast float %71, %69
  %74 = fmul fast float %72, %70
  %75 = fmul fast float %73, %73
  %76 = fmul fast float %74, %74
  %77 = fadd fast float %75, %76
  %78 = call float @dx.op.unary.f32(i32 24, float %77)  ; Sqrt(value)
  %79 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %80 = extractvalue %dx.types.CBufRet.f32 %79, 3
  %81 = fmul fast float %80, %78
  %82 = call float @dx.op.unary.f32(i32 7, float %81)  ; Saturate(value)
  %83 = extractvalue %dx.types.CBufRet.f32 %79, 2
  %84 = fsub fast float %83, %68
  %85 = fmul fast float %84, %82
  %86 = extractvalue %dx.types.CBufRet.f32 %66, 1
  %87 = fadd fast float %68, %48
  %88 = fadd fast float %87, %86
  %89 = fadd fast float %88, %85
  br label %90

; <label>:90                                      ; preds = %51, %30
  %91 = phi float [ %89, %51 ], [ %48, %30 ]
  %92 = and i32 %42, 268435456
  %93 = icmp ne i32 %92, 0
  %94 = or i32 %37, 16
  %95 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %94, i32 undef)  ; BufferLoad(srv,index,wot)
  %96 = extractvalue %dx.types.ResRet.i32 %95, 0
  %97 = extractvalue %dx.types.ResRet.i32 %95, 1
  %98 = extractvalue %dx.types.ResRet.i32 %95, 2
  %99 = extractvalue %dx.types.ResRet.i32 %95, 3
  %100 = and i32 %96, 65535
  %101 = call float @dx.op.legacyF16ToF32(i32 131, i32 %100)  ; LegacyF16ToF32(value)
  %102 = lshr i32 %96, 16
  %103 = call float @dx.op.legacyF16ToF32(i32 131, i32 %102)  ; LegacyF16ToF32(value)
  %104 = and i32 %97, 1023
  %105 = uitofp i32 %104 to float
  %106 = lshr i32 %97, 10
  %107 = and i32 %106, 1023
  %108 = uitofp i32 %107 to float
  %109 = lshr i32 %97, 20
  %110 = and i32 %109, 1023
  %111 = uitofp i32 %110 to float
  %112 = fmul fast float %105, 0x3F60040100000000
  %113 = fmul fast float %108, 0x3F60040100000000
  %114 = fmul fast float %111, 0x3F60040100000000
  %115 = fadd fast float %112, -1.000000e+00
  %116 = fadd fast float %113, -1.000000e+00
  %117 = fadd fast float %114, -1.000000e+00
  %118 = and i32 %98, 1023
  %119 = uitofp i32 %118 to float
  %120 = lshr i32 %98, 10
  %121 = and i32 %120, 1023
  %122 = uitofp i32 %121 to float
  %123 = lshr i32 %98, 20
  %124 = and i32 %123, 1023
  %125 = uitofp i32 %124 to float
  %126 = fmul fast float %119, 0x3F60040100000000
  %127 = fmul fast float %122, 0x3F60040100000000
  %128 = fmul fast float %125, 0x3F60040100000000
  %129 = fadd fast float %126, -1.000000e+00
  %130 = fadd fast float %127, -1.000000e+00
  %131 = fadd fast float %128, -1.000000e+00
  %132 = and i32 %99, 65535
  %133 = call float @dx.op.legacyF16ToF32(i32 131, i32 %132)  ; LegacyF16ToF32(value)
  %134 = lshr i32 %99, 16
  %135 = call float @dx.op.legacyF16ToF32(i32 131, i32 %134)  ; LegacyF16ToF32(value)
  %136 = call float @dx.op.unary.f32(i32 13, float %133)  ; Sin(value)
  %137 = call float @dx.op.unary.f32(i32 12, float %133)  ; Cos(value)
  %138 = fmul fast float %137, %115
  %139 = fmul fast float %137, %116
  %140 = fmul fast float %137, %117
  %141 = fmul fast float %136, %129
  %142 = fmul fast float %130, %136
  %143 = fmul fast float %131, %136
  %144 = fadd fast float %138, %141
  %145 = fadd fast float %139, %142
  %146 = fadd fast float %140, %143
  %147 = fmul fast float %144, %101
  %148 = fmul fast float %145, %101
  %149 = fmul fast float %146, %101
  %150 = fmul fast float %136, %115
  %151 = fmul fast float %116, %136
  %152 = fmul fast float %117, %136
  %153 = fmul fast float %137, %129
  %154 = fmul fast float %137, %130
  %155 = fmul fast float %137, %131
  %156 = fsub fast float %150, %153
  %157 = fsub fast float %151, %154
  %158 = fsub fast float %152, %155
  %159 = fmul fast float %156, %103
  %160 = fmul fast float %157, %103
  %161 = fmul fast float %158, %103
  %162 = add i32 %44, %34
  %163 = add i32 %45, %35
  %164 = uitofp i32 %34 to float
  %165 = uitofp i32 %35 to float
  %166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %167 = extractvalue %dx.types.CBufRet.f32 %166, 1
  %168 = fdiv fast float %164, %167
  %169 = fdiv fast float %165, %167
  %170 = extractvalue %dx.types.CBufRet.f32 %166, 2
  %171 = fmul fast float %170, 2.000000e+00
  %172 = fadd fast float %171, %168
  %173 = fadd fast float %171, %169
  %174 = fmul fast float %172, %147
  %175 = fmul fast float %172, %148
  %176 = fmul fast float %172, %149
  %177 = fmul fast float %173, %159
  %178 = fmul fast float %173, %160
  %179 = fmul fast float %173, %161
  %180 = fadd fast float %177, %174
  %181 = fmul fast float %180, 2.000000e+00
  %182 = fsub fast float %46, %147
  %183 = fsub fast float %182, %159
  %184 = fadd fast float %183, %181
  %185 = fadd fast float %178, %175
  %186 = fmul fast float %185, 2.000000e+00
  %187 = fsub fast float %47, %148
  %188 = fsub fast float %187, %160
  %189 = fadd fast float %188, %186
  %190 = fadd fast float %179, %176
  %191 = fmul fast float %190, 2.000000e+00
  %192 = fsub fast float %91, %149
  %193 = fsub fast float %192, %161
  %194 = fadd fast float %193, %191
  %195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %196 = extractvalue %dx.types.CBufRet.f32 %195, 0
  %197 = extractvalue %dx.types.CBufRet.f32 %195, 1
  %198 = extractvalue %dx.types.CBufRet.f32 %195, 2
  %199 = fsub fast float %184, %196
  %200 = fsub fast float %189, %197
  %201 = fsub fast float %194, %198
  %202 = call float @dx.op.dot3.f32(i32 55, float %199, float %200, float %201, float %199, float %200, float %201)  ; Dot3(ax,ay,az,bx,by,bz)
  %203 = call float @dx.op.unary.f32(i32 25, float %202)  ; Rsqrt(value)
  %204 = fmul fast float %199, %203
  %205 = fmul fast float %200, %203
  %206 = fmul fast float %201, %203
  %207 = fsub fast float -0.000000e+00, %204
  %208 = fsub fast float -0.000000e+00, %205
  %209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %36, i32 0)  ; BufferLoad(srv,index,wot)
  %210 = extractvalue %dx.types.ResRet.i32 %209, 0
  %211 = and i32 %26, 31
  %212 = shl i32 1, %211
  %213 = shl i32 %212, %211
  %214 = shl i32 %24, %211
  %215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %36, i32 0)  ; BufferLoad(srv,index,wot)
  %216 = extractvalue %dx.types.ResRet.i32 %215, 0
  %217 = extractvalue %dx.types.CBufRet.i32 %25, 1
  %218 = icmp ne i32 %217, 0
  %219 = icmp ne i32 %216, 262144
  %220 = and i1 %219, %218
  %221 = icmp ne i32 %210, 0
  %222 = and i1 %221, %220
  br i1 %222, label %223, label %254, !dx.controlflow.hints !38

; <label>:223                                     ; preds = %90
  br label %224

; <label>:224                                     ; preds = %224, %223
  %225 = phi i32 [ %250, %224 ], [ %210, %223 ]
  %226 = phi float [ %248, %224 ], [ 0.000000e+00, %223 ]
  %227 = phi float [ %245, %224 ], [ 0.000000e+00, %223 ]
  %228 = phi float [ %246, %224 ], [ 0.000000e+00, %223 ]
  %229 = phi float [ %247, %224 ], [ 0.000000e+00, %223 ]
  %230 = phi i32 [ %251, %224 ], [ 0, %223 ]
  %231 = mul i32 %230, %213
  %232 = add i32 %214, %23
  %233 = add i32 %232, %216
  %234 = add i32 %233, %231
  %235 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %234, i32 undef)  ; BufferLoad(srv,index,wot)
  %236 = extractvalue %dx.types.ResRet.f32 %235, 0
  %237 = extractvalue %dx.types.ResRet.f32 %235, 1
  %238 = extractvalue %dx.types.ResRet.f32 %235, 2
  %239 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %234, i32 undef)  ; BufferLoad(srv,index,wot)
  %240 = extractvalue %dx.types.ResRet.f32 %239, 0
  %241 = fmul fast float %240, %240
  %242 = fmul fast float %241, %236
  %243 = fmul fast float %241, %237
  %244 = fmul fast float %241, %238
  %245 = fadd fast float %242, %227
  %246 = fadd fast float %243, %228
  %247 = fadd fast float %244, %229
  %248 = fadd fast float %241, %226
  %249 = add i32 %225, -1
  %250 = and i32 %249, %225
  %251 = add i32 %230, 1
  %252 = icmp eq i32 %250, 0
  br i1 %252, label %253, label %224

; <label>:253                                     ; preds = %224
  br label %254

; <label>:254                                     ; preds = %253, %90
  %255 = phi float [ 0.000000e+00, %90 ], [ %248, %253 ]
  %256 = phi float [ 0.000000e+00, %90 ], [ %245, %253 ]
  %257 = phi float [ 0.000000e+00, %90 ], [ %246, %253 ]
  %258 = phi float [ 0.000000e+00, %90 ], [ %247, %253 ]
  %259 = fcmp fast ogt float %255, 0.000000e+00
  %260 = fcmp fast une float %255, 1.000000e+00
  %261 = and i1 %259, %260
  br i1 %261, label %262, label %267, !dx.controlflow.hints !39

; <label>:262                                     ; preds = %254
  %263 = fdiv fast float 1.000000e+00, %255
  %264 = fmul fast float %263, %256
  %265 = fmul fast float %263, %257
  %266 = fmul fast float %263, %258
  br label %267

; <label>:267                                     ; preds = %262, %254
  %268 = phi float [ 1.000000e+00, %262 ], [ %255, %254 ]
  %269 = phi float [ %264, %262 ], [ %256, %254 ]
  %270 = phi float [ %265, %262 ], [ %257, %254 ]
  %271 = phi float [ %266, %262 ], [ %258, %254 ]
  %272 = call float @dx.op.unary.f32(i32 7, float %268)  ; Saturate(value)
  %273 = fsub fast float 1.000000e+00, %272
  %274 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %275 = extractvalue %dx.types.CBufRet.i32 %274, 0
  %276 = icmp eq i32 %275, 1
  br i1 %276, label %277, label %307, !dx.controlflow.hints !40

; <label>:277                                     ; preds = %267
  %278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %279 = extractvalue %dx.types.CBufRet.f32 %278, 0
  %280 = extractvalue %dx.types.CBufRet.f32 %278, 1
  %281 = fsub fast float %184, %279
  %282 = fsub fast float %189, %280
  %283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %284 = extractvalue %dx.types.CBufRet.f32 %283, 0
  %285 = extractvalue %dx.types.CBufRet.f32 %283, 1
  %286 = fmul fast float %281, %284
  %287 = fmul fast float %282, %285
  %288 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %19, float %286, float %287, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %289 = extractvalue %dx.types.ResRet.f32 %288, 0
  %290 = fcmp fast ogt float %289, 0.000000e+00
  %291 = extractvalue %dx.types.CBufRet.i32 %274, 3
  %292 = icmp ne i32 %291, 0
  %293 = and i1 %290, %292
  br i1 %293, label %294, label %307, !dx.controlflow.hints !41

; <label>:294                                     ; preds = %277
  %295 = fmul fast float %199, %199
  %296 = fmul fast float %200, %200
  %297 = fadd fast float %295, %296
  %298 = uitofp i32 %291 to float
  %299 = fmul fast float %298, %298
  %300 = fcmp fast ogt float %297, %299
  br i1 %300, label %307, label %301, !dx.controlflow.hints !42

; <label>:301                                     ; preds = %294
  %302 = call float @dx.op.unary.f32(i32 24, float %297)  ; Sqrt(value)
  %303 = fsub fast float %298, %302
  %304 = fmul fast float %303, 0x3F75555560000000
  %305 = call float @dx.op.unary.f32(i32 7, float %304)  ; Saturate(value)
  %306 = call float @dx.op.binary.f32(i32 36, float %305, float %289)  ; FMin(a,b)
  br label %307

; <label>:307                                     ; preds = %301, %294, %277, %267
  %308 = phi float [ 1.000000e+00, %267 ], [ %306, %301 ], [ %289, %277 ], [ 0.000000e+00, %294 ]
  %309 = fcmp fast ogt float %273, 0.000000e+00
  %310 = fcmp fast olt float %308, 1.000000e+00
  %311 = or i1 %309, %310
  br i1 %311, label %312, label %993, !dx.controlflow.hints !43

; <label>:312                                     ; preds = %307
  %313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %314 = extractvalue %dx.types.CBufRet.f32 %313, 0
  %315 = extractvalue %dx.types.CBufRet.f32 %313, 1
  %316 = fsub fast float %184, %314
  %317 = fsub fast float %189, %315
  %318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %319 = extractvalue %dx.types.CBufRet.f32 %318, 0
  %320 = extractvalue %dx.types.CBufRet.f32 %318, 1
  %321 = fmul fast float %316, %319
  %322 = fmul fast float %317, %320
  %323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %324 = extractvalue %dx.types.CBufRet.f32 %323, 0
  %325 = fmul fast float %324, %321
  %326 = extractvalue %dx.types.CBufRet.f32 %323, 1
  %327 = fadd fast float %325, %326
  %328 = extractvalue %dx.types.CBufRet.f32 %323, 2
  %329 = fmul fast float %328, %322
  %330 = extractvalue %dx.types.CBufRet.f32 %323, 3
  %331 = fadd fast float %329, %330
  %332 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %19, float %327, float %331, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %333 = extractvalue %dx.types.ResRet.f32 %332, 0
  %334 = extractvalue %dx.types.ResRet.f32 %332, 1
  %335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %336 = extractvalue %dx.types.CBufRet.f32 %335, 1
  %337 = extractvalue %dx.types.CBufRet.f32 %335, 0
  %338 = fsub fast float %336, %337
  %339 = fmul fast float %338, %333
  %340 = fadd fast float %339, %337
  %341 = extractvalue %dx.types.CBufRet.f32 %335, 3
  %342 = extractvalue %dx.types.CBufRet.f32 %335, 2
  %343 = fsub fast float %341, %342
  %344 = fmul fast float %343, %334
  %345 = fadd fast float %344, %342
  %346 = fsub fast float %194, %340
  %347 = fsub fast float %345, %340
  %348 = fdiv fast float %346, %347
  %349 = call float @dx.op.unary.f32(i32 7, float %348)  ; Saturate(value)
  %350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %351 = extractvalue %dx.types.CBufRet.f32 %350, 0
  %352 = fmul fast float %351, %349
  %353 = extractvalue %dx.types.CBufRet.f32 %350, 1
  %354 = fadd fast float %352, %353
  %355 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %19, float %327, float %331, float %354, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %356 = extractvalue %dx.types.ResRet.f32 %355, 0
  %357 = extractvalue %dx.types.ResRet.f32 %355, 1
  %358 = extractvalue %dx.types.ResRet.f32 %355, 2
  %359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %360 = extractvalue %dx.types.CBufRet.f32 %359, 0
  %361 = extractvalue %dx.types.CBufRet.f32 %359, 1
  %362 = extractvalue %dx.types.CBufRet.f32 %359, 2
  %363 = fmul fast float %360, %356
  %364 = fmul fast float %361, %357
  %365 = fmul fast float %362, %358
  %366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %367 = extractvalue %dx.types.CBufRet.f32 %366, 0
  %368 = extractvalue %dx.types.CBufRet.f32 %366, 1
  %369 = extractvalue %dx.types.CBufRet.f32 %366, 2
  %370 = fadd fast float %363, %367
  %371 = fadd fast float %364, %368
  %372 = fadd fast float %365, %369
  %373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %374 = extractvalue %dx.types.CBufRet.f32 %373, 0
  %375 = fmul fast float %374, %321
  %376 = extractvalue %dx.types.CBufRet.f32 %373, 1
  %377 = fadd fast float %375, %376
  %378 = extractvalue %dx.types.CBufRet.f32 %373, 2
  %379 = fmul fast float %378, %322
  %380 = extractvalue %dx.types.CBufRet.f32 %373, 3
  %381 = fadd fast float %379, %380
  %382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %383 = extractvalue %dx.types.CBufRet.f32 %382, 0
  %384 = extractvalue %dx.types.CBufRet.f32 %382, 1
  %385 = extractvalue %dx.types.CBufRet.f32 %382, 2
  %386 = extractvalue %dx.types.CBufRet.f32 %382, 3
  %387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %388 = extractvalue %dx.types.CBufRet.f32 %387, 0
  %389 = extractvalue %dx.types.CBufRet.f32 %387, 1
  %390 = extractvalue %dx.types.CBufRet.f32 %387, 2
  %391 = extractvalue %dx.types.CBufRet.f32 %387, 3
  %392 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %19, float %377, float %381, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %393 = extractvalue %dx.types.ResRet.f32 %392, 0
  %394 = extractvalue %dx.types.ResRet.f32 %392, 1
  %395 = extractvalue %dx.types.ResRet.f32 %392, 2
  %396 = extractvalue %dx.types.ResRet.f32 %392, 3
  %397 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %19, float %377, float %381, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %398 = extractvalue %dx.types.ResRet.f32 %397, 0
  %399 = extractvalue %dx.types.ResRet.f32 %397, 1
  %400 = extractvalue %dx.types.ResRet.f32 %397, 2
  %401 = extractvalue %dx.types.ResRet.f32 %397, 3
  %402 = fmul fast float %393, %370
  %403 = fmul fast float %398, %370
  %404 = fmul fast float %400, %370
  %405 = fmul fast float %396, %370
  %406 = fadd fast float %402, %383
  %407 = fadd fast float %403, %384
  %408 = fadd fast float %404, %385
  %409 = fadd fast float %405, %386
  %410 = fmul fast float %394, %370
  %411 = fmul fast float %399, %370
  %412 = fadd fast float %410, %388
  %413 = fadd fast float %411, %389
  %414 = fmul fast float %395, %370
  %415 = fmul fast float %401, %370
  %416 = fadd fast float %414, %390
  %417 = fadd fast float %415, %391
  %418 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %19, float %377, float %381, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %419 = extractvalue %dx.types.ResRet.f32 %418, 0
  %420 = extractvalue %dx.types.ResRet.f32 %418, 1
  %421 = extractvalue %dx.types.ResRet.f32 %418, 2
  %422 = extractvalue %dx.types.ResRet.f32 %418, 3
  %423 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %19, float %377, float %381, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %424 = extractvalue %dx.types.ResRet.f32 %423, 0
  %425 = extractvalue %dx.types.ResRet.f32 %423, 1
  %426 = extractvalue %dx.types.ResRet.f32 %423, 2
  %427 = extractvalue %dx.types.ResRet.f32 %423, 3
  %428 = fmul fast float %419, %371
  %429 = fmul fast float %424, %371
  %430 = fmul fast float %426, %371
  %431 = fmul fast float %422, %371
  %432 = fadd fast float %406, %428
  %433 = fadd fast float %407, %429
  %434 = fadd fast float %408, %430
  %435 = fadd fast float %409, %431
  %436 = fmul fast float %420, %371
  %437 = fmul fast float %425, %371
  %438 = fadd fast float %412, %436
  %439 = fadd fast float %413, %437
  %440 = fmul fast float %421, %371
  %441 = fmul fast float %427, %371
  %442 = fadd fast float %416, %440
  %443 = fadd fast float %417, %441
  %444 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %19, float %377, float %381, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %445 = extractvalue %dx.types.ResRet.f32 %444, 0
  %446 = extractvalue %dx.types.ResRet.f32 %444, 1
  %447 = extractvalue %dx.types.ResRet.f32 %444, 2
  %448 = extractvalue %dx.types.ResRet.f32 %444, 3
  %449 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %19, float %377, float %381, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %450 = extractvalue %dx.types.ResRet.f32 %449, 0
  %451 = extractvalue %dx.types.ResRet.f32 %449, 1
  %452 = extractvalue %dx.types.ResRet.f32 %449, 2
  %453 = extractvalue %dx.types.ResRet.f32 %449, 3
  %454 = fmul fast float %445, %372
  %455 = fmul fast float %450, %372
  %456 = fmul fast float %452, %372
  %457 = fmul fast float %448, %372
  %458 = fadd fast float %432, %454
  %459 = fadd fast float %433, %455
  %460 = fadd fast float %434, %456
  %461 = fadd fast float %435, %457
  %462 = fmul fast float %446, %372
  %463 = fmul fast float %451, %372
  %464 = fadd fast float %438, %462
  %465 = fadd fast float %439, %463
  %466 = fmul fast float %447, %372
  %467 = fmul fast float %453, %372
  %468 = fadd fast float %442, %466
  %469 = fadd fast float %443, %467
  %470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %471 = extractvalue %dx.types.CBufRet.f32 %470, 0
  %472 = fsub fast float %184, %471
  %473 = fsub fast float %314, %184
  %474 = call float @dx.op.binary.f32(i32 35, float %473, float %472)  ; FMax(a,b)
  %475 = extractvalue %dx.types.CBufRet.f32 %470, 1
  %476 = fsub fast float %189, %475
  %477 = fsub fast float %315, %189
  %478 = call float @dx.op.binary.f32(i32 35, float %477, float %476)  ; FMax(a,b)
  %479 = call float @dx.op.binary.f32(i32 35, float %474, float %478)  ; FMax(a,b)
  %480 = extractvalue %dx.types.CBufRet.f32 %318, 3
  %481 = fmul fast float %480, %479
  %482 = call float @dx.op.unary.f32(i32 7, float %481)  ; Saturate(value)
  %483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %484 = extractvalue %dx.types.CBufRet.f32 %483, 0
  %485 = extractvalue %dx.types.CBufRet.f32 %483, 1
  %486 = extractvalue %dx.types.CBufRet.f32 %483, 2
  %487 = extractvalue %dx.types.CBufRet.f32 %483, 3
  %488 = fsub fast float %484, %458
  %489 = fsub fast float %485, %459
  %490 = fsub fast float %486, %460
  %491 = fsub fast float %487, %461
  %492 = fmul fast float %488, %482
  %493 = fmul fast float %489, %482
  %494 = fmul fast float %490, %482
  %495 = fmul fast float %491, %482
  %496 = fadd fast float %492, %458
  %497 = fadd fast float %493, %459
  %498 = fadd fast float %494, %460
  %499 = fadd fast float %495, %461
  %500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %501 = extractvalue %dx.types.CBufRet.f32 %500, 0
  %502 = extractvalue %dx.types.CBufRet.f32 %500, 1
  %503 = fsub fast float %501, %464
  %504 = fsub fast float %502, %465
  %505 = fmul fast float %503, %482
  %506 = fmul fast float %504, %482
  %507 = fadd fast float %505, %464
  %508 = fadd fast float %506, %465
  %509 = extractvalue %dx.types.CBufRet.f32 %500, 2
  %510 = extractvalue %dx.types.CBufRet.f32 %500, 3
  %511 = fsub fast float %509, %468
  %512 = fsub fast float %510, %469
  %513 = fmul fast float %511, %482
  %514 = fmul fast float %512, %482
  %515 = fadd fast float %513, %468
  %516 = fadd fast float %514, %469
  %517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %518 = extractvalue %dx.types.CBufRet.f32 %517, 0
  %519 = fmul fast float %518, %496
  %520 = fmul fast float %518, %497
  %521 = fmul fast float %518, %498
  %522 = fmul fast float %518, %499
  %523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %524 = extractvalue %dx.types.CBufRet.f32 %523, 0
  %525 = fmul fast float %524, %507
  %526 = fmul fast float %524, %508
  %527 = fadd fast float %525, %519
  %528 = fadd fast float %526, %521
  %529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %530 = extractvalue %dx.types.CBufRet.f32 %529, 0
  %531 = fmul fast float %530, %515
  %532 = fmul fast float %530, %516
  %533 = fadd fast float %527, %531
  %534 = fadd fast float %528, %532
  %535 = extractvalue %dx.types.CBufRet.f32 %517, 1
  %536 = fmul fast float %535, %496
  %537 = fmul fast float %535, %497
  %538 = fmul fast float %535, %498
  %539 = fmul fast float %535, %499
  %540 = extractvalue %dx.types.CBufRet.f32 %523, 1
  %541 = fmul fast float %540, %507
  %542 = fmul fast float %540, %508
  %543 = fadd fast float %541, %536
  %544 = fadd fast float %542, %538
  %545 = extractvalue %dx.types.CBufRet.f32 %529, 1
  %546 = fmul fast float %545, %515
  %547 = fmul fast float %545, %516
  %548 = fadd fast float %543, %546
  %549 = fadd fast float %544, %547
  %550 = extractvalue %dx.types.CBufRet.f32 %517, 2
  %551 = fmul fast float %550, %496
  %552 = fmul fast float %550, %497
  %553 = fmul fast float %550, %498
  %554 = fmul fast float %550, %499
  %555 = extractvalue %dx.types.CBufRet.f32 %523, 2
  %556 = fmul fast float %555, %507
  %557 = fmul fast float %555, %508
  %558 = fadd fast float %556, %551
  %559 = fadd fast float %557, %553
  %560 = extractvalue %dx.types.CBufRet.f32 %529, 2
  %561 = fmul fast float %560, %515
  %562 = fmul fast float %560, %516
  %563 = fadd fast float %558, %561
  %564 = fadd fast float %559, %562
  %565 = fmul fast float %552, %552
  %566 = fmul fast float %564, %564
  %567 = fmul fast float %554, %554
  %568 = fadd fast float %567, %565
  %569 = fadd fast float %568, %566
  %570 = call float @dx.op.unary.f32(i32 24, float %569)  ; Sqrt(value)
  %571 = fcmp fast ugt float %570, 0.000000e+00
  br i1 %571, label %572, label %587, !dx.controlflow.hints !44

; <label>:572                                     ; preds = %312
  %573 = fsub fast float -0.000000e+00, %554
  %574 = fdiv fast float %573, %570
  %575 = fsub fast float -0.000000e+00, %552
  %576 = fdiv fast float %575, %570
  %577 = fdiv fast float %564, %570
  %578 = fmul fast float %563, 0x3FE279A760000000
  %579 = fmul fast float %576, %552
  %580 = fmul fast float %577, %564
  %581 = fmul fast float %574, %554
  %582 = fadd fast float %579, %581
  %583 = fsub fast float %582, %580
  %584 = call float @dx.op.unary.f32(i32 6, float %583)  ; FAbs(value)
  %585 = fadd fast float %584, 0x3DDB7CDFE0000000
  %586 = fdiv fast float %578, %585
  br label %587

; <label>:587                                     ; preds = %572, %312
  %588 = phi float [ %586, %572 ], [ 1.000000e+00, %312 ]
  %589 = fmul fast float %537, %537
  %590 = fmul fast float %549, %549
  %591 = fmul fast float %539, %539
  %592 = fadd fast float %591, %589
  %593 = fadd fast float %592, %590
  %594 = call float @dx.op.unary.f32(i32 24, float %593)  ; Sqrt(value)
  %595 = fcmp fast ugt float %594, 0.000000e+00
  br i1 %595, label %596, label %611, !dx.controlflow.hints !44

; <label>:596                                     ; preds = %587
  %597 = fsub fast float -0.000000e+00, %539
  %598 = fdiv fast float %597, %594
  %599 = fsub fast float -0.000000e+00, %537
  %600 = fdiv fast float %599, %594
  %601 = fdiv fast float %549, %594
  %602 = fmul fast float %548, 0x3FE279A760000000
  %603 = fmul fast float %600, %537
  %604 = fmul fast float %601, %549
  %605 = fmul fast float %598, %539
  %606 = fadd fast float %603, %605
  %607 = fsub fast float %606, %604
  %608 = call float @dx.op.unary.f32(i32 6, float %607)  ; FAbs(value)
  %609 = fadd fast float %608, 0x3DDB7CDFE0000000
  %610 = fdiv fast float %602, %609
  br label %611

; <label>:611                                     ; preds = %596, %587
  %612 = phi float [ %610, %596 ], [ 1.000000e+00, %587 ]
  %613 = call float @dx.op.binary.f32(i32 36, float %612, float %588)  ; FMin(a,b)
  %614 = fmul fast float %520, %520
  %615 = fmul fast float %534, %534
  %616 = fmul fast float %522, %522
  %617 = fadd fast float %616, %614
  %618 = fadd fast float %617, %615
  %619 = call float @dx.op.unary.f32(i32 24, float %618)  ; Sqrt(value)
  %620 = fcmp fast ugt float %619, 0.000000e+00
  br i1 %620, label %621, label %636, !dx.controlflow.hints !44

; <label>:621                                     ; preds = %611
  %622 = fsub fast float -0.000000e+00, %522
  %623 = fdiv fast float %622, %619
  %624 = fsub fast float -0.000000e+00, %520
  %625 = fdiv fast float %624, %619
  %626 = fdiv fast float %534, %619
  %627 = fmul fast float %533, 0x3FE279A760000000
  %628 = fmul fast float %625, %520
  %629 = fmul fast float %626, %534
  %630 = fmul fast float %623, %522
  %631 = fadd fast float %628, %630
  %632 = fsub fast float %631, %629
  %633 = call float @dx.op.unary.f32(i32 6, float %632)  ; FAbs(value)
  %634 = fadd fast float %633, 0x3DDB7CDFE0000000
  %635 = fdiv fast float %627, %634
  br label %636

; <label>:636                                     ; preds = %621, %611
  %637 = phi float [ %635, %621 ], [ 1.000000e+00, %611 ]
  %638 = call float @dx.op.binary.f32(i32 36, float %637, float %613)  ; FMin(a,b)
  %639 = call float @dx.op.unary.f32(i32 7, float %638)  ; Saturate(value)
  %640 = fcmp fast olt float %639, 1.000000e+00
  br i1 %640, label %641, label %651, !dx.controlflow.hints !45

; <label>:641                                     ; preds = %636
  %642 = fmul fast float %639, %520
  %643 = fmul fast float %639, %534
  %644 = fmul fast float %639, %522
  %645 = fmul fast float %639, %537
  %646 = fmul fast float %639, %549
  %647 = fmul fast float %639, %539
  %648 = fmul fast float %639, %552
  %649 = fmul fast float %639, %564
  %650 = fmul fast float %639, %554
  br label %651

; <label>:651                                     ; preds = %641, %636
  %652 = phi float [ %648, %641 ], [ %552, %636 ]
  %653 = phi float [ %649, %641 ], [ %564, %636 ]
  %654 = phi float [ %650, %641 ], [ %554, %636 ]
  %655 = phi float [ %645, %641 ], [ %537, %636 ]
  %656 = phi float [ %646, %641 ], [ %549, %636 ]
  %657 = phi float [ %647, %641 ], [ %539, %636 ]
  %658 = phi float [ %642, %641 ], [ %520, %636 ]
  %659 = phi float [ %643, %641 ], [ %534, %636 ]
  %660 = phi float [ %644, %641 ], [ %522, %636 ]
  %661 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %533)  ; FMax(a,b)
  %662 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %548)  ; FMax(a,b)
  %663 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %563)  ; FMax(a,b)
  %664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %665 = extractvalue %dx.types.CBufRet.f32 %664, 0
  %666 = fcmp fast ogt float %665, 0.000000e+00
  %667 = fcmp fast oge float %321, 0.000000e+00
  %668 = and i1 %667, %666
  %669 = fcmp fast ole float %321, 1.000000e+00
  %670 = and i1 %669, %668
  %671 = fcmp fast oge float %322, 0.000000e+00
  %672 = and i1 %671, %670
  %673 = fcmp fast ole float %322, 1.000000e+00
  %674 = and i1 %673, %672
  br i1 %674, label %675, label %815, !dx.controlflow.hints !46

; <label>:675                                     ; preds = %651
  %676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %677 = extractvalue %dx.types.CBufRet.f32 %676, 2
  %678 = extractvalue %dx.types.CBufRet.f32 %676, 3
  %679 = fmul fast float %677, %321
  %680 = fmul fast float %678, %322
  %681 = call float @dx.op.unary.f32(i32 27, float %679)  ; Round_ni(value)
  %682 = call float @dx.op.unary.f32(i32 27, float %680)  ; Round_ni(value)
  %683 = fptosi float %681 to i32
  %684 = fptosi float %682 to i32
  %685 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %13, i32 0, i32 %683, i32 %684, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %686 = extractvalue %dx.types.ResRet.i32 %685, 0
  %687 = and i32 %686, 65535
  %688 = lshr i32 %686, 16
  %689 = icmp eq i32 %687, 65535
  br i1 %689, label %726, label %690, !dx.controlflow.hints !47

; <label>:690                                     ; preds = %675
  %691 = extractvalue %dx.types.CBufRet.f32 %664, 1
  %692 = extractvalue %dx.types.CBufRet.f32 %676, 0
  %693 = extractvalue %dx.types.CBufRet.f32 %676, 1
  %694 = fmul fast float %692, %321
  %695 = fmul fast float %693, %322
  %696 = fmul fast float %694, 1.250000e-01
  %697 = fmul fast float %695, 1.250000e-01
  %698 = call float @dx.op.unary.f32(i32 27, float %696)  ; Round_ni(value)
  %699 = call float @dx.op.unary.f32(i32 27, float %697)  ; Round_ni(value)
  %700 = fmul fast float %698, 8.000000e+00
  %701 = fmul fast float %699, 8.000000e+00
  %702 = and i32 %686, 255
  %703 = lshr i32 %686, 8
  %704 = and i32 %703, 255
  %705 = mul nuw nsw i32 %702, 9
  %706 = uitofp i32 %705 to float
  %707 = mul nuw nsw i32 %704, 9
  %708 = uitofp i32 %707 to float
  %709 = fadd fast float %706, 5.000000e-01
  %710 = fadd fast float %709, %694
  %711 = fsub fast float %710, %700
  %712 = fadd fast float %708, 5.000000e-01
  %713 = fadd fast float %712, %695
  %714 = fsub fast float %713, %701
  %715 = fdiv fast float %711, %665
  %716 = fdiv fast float %714, %691
  %717 = fmul fast float %349, 4.375000e-01
  %718 = fadd fast float %717, 3.125000e-02
  %719 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %19, float %715, float %716, float %718, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %720 = extractvalue %dx.types.ResRet.f32 %719, 0
  %721 = extractvalue %dx.types.ResRet.f32 %719, 1
  %722 = extractvalue %dx.types.ResRet.f32 %719, 2
  %723 = fadd fast float %720, %661
  %724 = fadd fast float %721, %662
  %725 = fadd fast float %722, %663
  br label %726

; <label>:726                                     ; preds = %690, %675
  %727 = phi float [ %725, %690 ], [ %663, %675 ]
  %728 = phi float [ %724, %690 ], [ %662, %675 ]
  %729 = phi float [ %723, %690 ], [ %661, %675 ]
  %730 = icmp eq i32 %688, 65535
  br i1 %730, label %815, label %731, !dx.controlflow.hints !48

; <label>:731                                     ; preds = %726
  %732 = extractvalue %dx.types.CBufRet.f32 %664, 1
  %733 = extractvalue %dx.types.CBufRet.f32 %676, 0
  %734 = extractvalue %dx.types.CBufRet.f32 %676, 1
  %735 = fmul fast float %733, %321
  %736 = fmul fast float %734, %322
  %737 = fmul fast float %735, 1.250000e-01
  %738 = fmul fast float %736, 1.250000e-01
  %739 = call float @dx.op.unary.f32(i32 27, float %737)  ; Round_ni(value)
  %740 = call float @dx.op.unary.f32(i32 27, float %738)  ; Round_ni(value)
  %741 = fmul fast float %739, 8.000000e+00
  %742 = fmul fast float %740, 8.000000e+00
  %743 = fsub fast float %735, %741
  %744 = fsub fast float %736, %742
  %745 = fadd fast float %743, 5.000000e-01
  %746 = fadd fast float %744, 5.000000e-01
  %747 = and i32 %688, 255
  %748 = lshr i32 %686, 24
  %749 = mul nuw nsw i32 %747, 9
  %750 = uitofp i32 %749 to float
  %751 = mul nuw nsw i32 %748, 9
  %752 = uitofp i32 %751 to float
  %753 = fadd fast float %745, %750
  %754 = fadd fast float %746, %752
  %755 = fdiv fast float %753, %665
  %756 = fdiv fast float %754, %732
  %757 = fmul fast float %349, 4.375000e-01
  %758 = fadd fast float %757, 3.125000e-02
  %759 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %19, float %755, float %756, float %758, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %760 = extractvalue %dx.types.ResRet.f32 %759, 0
  %761 = extractvalue %dx.types.ResRet.f32 %759, 1
  %762 = extractvalue %dx.types.ResRet.f32 %759, 2
  %763 = fadd fast float %757, 5.312500e-01
  %764 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %19, float %755, float %756, float %763, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %765 = extractvalue %dx.types.ResRet.f32 %764, 0
  %766 = extractvalue %dx.types.ResRet.f32 %764, 1
  %767 = extractvalue %dx.types.ResRet.f32 %764, 2
  %768 = fmul fast float %765, 2.000000e+00
  %769 = fmul fast float %766, 2.000000e+00
  %770 = fmul fast float %767, 2.000000e+00
  %771 = fadd fast float %768, -1.000000e+00
  %772 = fadd fast float %769, -1.000000e+00
  %773 = fadd fast float %770, -1.000000e+00
  %774 = fmul fast float %771, %771
  %775 = fmul fast float %772, %772
  %776 = fadd fast float %774, %775
  %777 = fmul fast float %773, %773
  %778 = fadd fast float %776, %777
  %779 = call float @dx.op.unary.f32(i32 24, float %778)  ; Sqrt(value)
  %780 = fcmp fast ogt float %779, 0.000000e+00
  br i1 %780, label %781, label %785, !dx.controlflow.hints !49

; <label>:781                                     ; preds = %731
  %782 = fdiv fast float %771, %779
  %783 = fdiv fast float %772, %779
  %784 = fdiv fast float %773, %779
  br label %785

; <label>:785                                     ; preds = %781, %731
  %786 = phi float [ %782, %781 ], [ 0.000000e+00, %731 ]
  %787 = phi float [ %783, %781 ], [ 0.000000e+00, %731 ]
  %788 = phi float [ %784, %781 ], [ 0.000000e+00, %731 ]
  %789 = fmul fast float %199, %199
  %790 = fmul fast float %200, %200
  %791 = fadd fast float %789, %790
  %792 = call float @dx.op.unary.f32(i32 24, float %791)  ; Sqrt(value)
  %793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %794 = extractvalue %dx.types.CBufRet.f32 %793, 0
  %795 = extractvalue %dx.types.CBufRet.f32 %793, 1
  %796 = fsub fast float %792, %794
  %797 = fdiv fast float %796, %795
  %798 = call float @dx.op.unary.f32(i32 7, float %797)  ; Saturate(value)
  %799 = fmul fast float %798, 2.000000e+00
  %800 = fsub fast float 3.000000e+00, %799
  %801 = fmul fast float %798, %798
  %802 = fmul fast float %801, %800
  %803 = call float @dx.op.dot3.f32(i32 55, float %786, float %787, float %788, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %804 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %803)  ; FMax(a,b)
  %805 = fmul fast float %804, 0x400C5BF8A0000000
  %806 = fmul fast float %802, %760
  %807 = fmul fast float %806, %805
  %808 = fadd fast float %807, %729
  %809 = fmul fast float %802, %761
  %810 = fmul fast float %809, %805
  %811 = fadd fast float %810, %728
  %812 = fmul fast float %802, %762
  %813 = fmul fast float %812, %805
  %814 = fadd fast float %813, %727
  br label %815

; <label>:815                                     ; preds = %785, %726, %651
  %816 = phi float [ %814, %785 ], [ %727, %726 ], [ %663, %651 ]
  %817 = phi float [ %811, %785 ], [ %728, %726 ], [ %662, %651 ]
  %818 = phi float [ %808, %785 ], [ %729, %726 ], [ %661, %651 ]
  %819 = fcmp fast ogt float %194, %345
  %820 = and i1 %667, %819
  %821 = and i1 %669, %820
  %822 = and i1 %671, %821
  %823 = and i1 %673, %822
  br i1 %823, label %824, label %881, !dx.controlflow.hints !50

; <label>:824                                     ; preds = %815
  %825 = fmul fast float %347, 0x3FC24924A0000000
  %826 = fsub fast float %194, %345
  %827 = fdiv fast float %826, %825
  %828 = call float @dx.op.unary.f32(i32 7, float %827)  ; Saturate(value)
  %829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %830 = extractvalue %dx.types.CBufRet.f32 %829, 0
  %831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %832 = extractvalue %dx.types.CBufRet.f32 %831, 0
  %833 = extractvalue %dx.types.CBufRet.f32 %831, 1
  %834 = extractvalue %dx.types.CBufRet.f32 %831, 2
  %835 = fsub fast float %830, %818
  %836 = fsub fast float %832, %658
  %837 = fsub fast float %833, %659
  %838 = fsub fast float %834, %660
  %839 = fmul fast float %835, %828
  %840 = fmul fast float %836, %828
  %841 = fmul fast float %837, %828
  %842 = fmul fast float %838, %828
  %843 = fadd fast float %839, %818
  %844 = fadd fast float %840, %658
  %845 = fadd fast float %841, %659
  %846 = fadd fast float %842, %660
  %847 = extractvalue %dx.types.CBufRet.f32 %829, 1
  %848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %849 = extractvalue %dx.types.CBufRet.f32 %848, 0
  %850 = extractvalue %dx.types.CBufRet.f32 %848, 1
  %851 = extractvalue %dx.types.CBufRet.f32 %848, 2
  %852 = fsub fast float %847, %817
  %853 = fsub fast float %849, %655
  %854 = fsub fast float %850, %656
  %855 = fsub fast float %851, %657
  %856 = fmul fast float %852, %828
  %857 = fmul fast float %853, %828
  %858 = fmul fast float %854, %828
  %859 = fmul fast float %855, %828
  %860 = fadd fast float %856, %817
  %861 = fadd fast float %857, %655
  %862 = fadd fast float %858, %656
  %863 = fadd fast float %859, %657
  %864 = extractvalue %dx.types.CBufRet.f32 %829, 2
  %865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %866 = extractvalue %dx.types.CBufRet.f32 %865, 0
  %867 = extractvalue %dx.types.CBufRet.f32 %865, 1
  %868 = extractvalue %dx.types.CBufRet.f32 %865, 2
  %869 = fsub fast float %864, %816
  %870 = fsub fast float %866, %652
  %871 = fsub fast float %867, %653
  %872 = fsub fast float %868, %654
  %873 = fmul fast float %869, %828
  %874 = fmul fast float %870, %828
  %875 = fmul fast float %871, %828
  %876 = fmul fast float %872, %828
  %877 = fadd fast float %873, %816
  %878 = fadd fast float %874, %652
  %879 = fadd fast float %875, %653
  %880 = fadd fast float %876, %654
  br label %881

; <label>:881                                     ; preds = %824, %815
  %882 = phi float [ %877, %824 ], [ %816, %815 ]
  %883 = phi float [ %878, %824 ], [ %652, %815 ]
  %884 = phi float [ %879, %824 ], [ %653, %815 ]
  %885 = phi float [ %880, %824 ], [ %654, %815 ]
  %886 = phi float [ %860, %824 ], [ %817, %815 ]
  %887 = phi float [ %861, %824 ], [ %655, %815 ]
  %888 = phi float [ %862, %824 ], [ %656, %815 ]
  %889 = phi float [ %863, %824 ], [ %657, %815 ]
  %890 = phi float [ %843, %824 ], [ %818, %815 ]
  %891 = phi float [ %844, %824 ], [ %658, %815 ]
  %892 = phi float [ %845, %824 ], [ %659, %815 ]
  %893 = phi float [ %846, %824 ], [ %660, %815 ]
  %894 = extractvalue %dx.types.CBufRet.f32 %470, 3
  %895 = fmul fast float %894, %890
  %896 = fmul fast float %894, %886
  %897 = fmul fast float %894, %882
  %898 = fmul fast float %891, 1.500000e+00
  %899 = fmul fast float %898, %894
  %900 = fmul fast float %892, 1.500000e+00
  %901 = fmul fast float %900, %894
  %902 = fmul fast float %893, 1.500000e+00
  %903 = fmul fast float %902, %894
  %904 = fmul fast float %887, 1.500000e+00
  %905 = fmul fast float %904, %894
  %906 = fmul fast float %888, 1.500000e+00
  %907 = fmul fast float %906, %894
  %908 = fmul fast float %889, 1.500000e+00
  %909 = fmul fast float %908, %894
  %910 = fmul fast float %883, 1.500000e+00
  %911 = fmul fast float %910, %894
  %912 = fmul fast float %884, 1.500000e+00
  %913 = fmul fast float %912, %894
  %914 = fmul fast float %885, 1.500000e+00
  %915 = fmul fast float %914, %894
  %916 = fmul fast float %895, 0x3FD20DD760000000
  %917 = fmul fast float %896, 0x3FD20DD760000000
  %918 = fmul fast float %897, 0x3FD20DD760000000
  br i1 %93, label %919, label %942, !dx.controlflow.hints !51

; <label>:919                                     ; preds = %881
  %920 = fmul fast float %206, 0xBFD4D8D7C0000000
  %921 = fmul fast float %920, %901
  %922 = fmul fast float %903, %204
  %923 = fmul fast float %899, %205
  %924 = fadd fast float %923, %922
  %925 = fmul fast float %924, 0x3FD4D8D7C0000000
  %926 = fadd fast float %921, %916
  %927 = fadd fast float %926, %925
  %928 = fmul fast float %920, %907
  %929 = fmul fast float %909, %204
  %930 = fmul fast float %905, %205
  %931 = fadd fast float %930, %929
  %932 = fmul fast float %931, 0x3FD4D8D7C0000000
  %933 = fadd fast float %928, %917
  %934 = fadd fast float %933, %932
  %935 = fmul fast float %920, %913
  %936 = fmul fast float %915, %204
  %937 = fmul fast float %911, %205
  %938 = fadd fast float %937, %936
  %939 = fmul fast float %938, 0x3FD4D8D7C0000000
  %940 = fadd fast float %935, %918
  %941 = fadd fast float %940, %939
  br label %974

; <label>:942                                     ; preds = %881
  %943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %944 = extractvalue %dx.types.CBufRet.f32 %943, 0
  %945 = extractvalue %dx.types.CBufRet.f32 %943, 1
  %946 = extractvalue %dx.types.CBufRet.f32 %943, 2
  %947 = fmul fast float %901, %135
  %948 = fmul fast float %947, %946
  %949 = fmul fast float %944, %903
  %950 = fmul fast float %945, %899
  %951 = fadd fast float %950, %949
  %952 = fmul fast float %951, %135
  %953 = fsub fast float %952, %948
  %954 = fmul fast float %953, 0x3FDF454380000000
  %955 = fadd fast float %954, %916
  %956 = fmul fast float %907, %135
  %957 = fmul fast float %956, %946
  %958 = fmul fast float %944, %909
  %959 = fmul fast float %945, %905
  %960 = fadd fast float %959, %958
  %961 = fmul fast float %960, %135
  %962 = fsub fast float %961, %957
  %963 = fmul fast float %962, 0x3FDF454380000000
  %964 = fadd fast float %963, %917
  %965 = fmul fast float %913, %135
  %966 = fmul fast float %965, %946
  %967 = fmul fast float %944, %915
  %968 = fmul fast float %945, %911
  %969 = fadd fast float %968, %967
  %970 = fmul fast float %969, %135
  %971 = fsub fast float %970, %966
  %972 = fmul fast float %971, 0x3FDF454380000000
  %973 = fadd fast float %972, %918
  br label %974

; <label>:974                                     ; preds = %942, %919
  %975 = phi float [ %927, %919 ], [ %955, %942 ]
  %976 = phi float [ %934, %919 ], [ %964, %942 ]
  %977 = phi float [ %941, %919 ], [ %973, %942 ]
  %978 = fmul fast float %975, %273
  %979 = fmul fast float %976, %273
  %980 = fmul fast float %977, %273
  %981 = fsub fast float %269, %975
  %982 = fadd fast float %981, %978
  %983 = fsub fast float %270, %976
  %984 = fadd fast float %983, %979
  %985 = fsub fast float %271, %977
  %986 = fadd fast float %985, %980
  %987 = fmul fast float %982, %308
  %988 = fmul fast float %984, %308
  %989 = fmul fast float %986, %308
  %990 = fadd fast float %987, %975
  %991 = fadd fast float %988, %976
  %992 = fadd fast float %989, %977
  br label %993

; <label>:993                                     ; preds = %974, %307
  %994 = phi float [ %990, %974 ], [ %269, %307 ]
  %995 = phi float [ %991, %974 ], [ %270, %307 ]
  %996 = phi float [ %992, %974 ], [ %271, %307 ]
  %997 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %998 = extractvalue %dx.types.CBufRet.i32 %997, 2
  %999 = icmp eq i32 %998, 0
  br i1 %999, label %1350, label %1000

; <label>:1000                                    ; preds = %993
  br label %1001

; <label>:1001                                    ; preds = %1316, %1000
  %1002 = phi float [ %1317, %1316 ], [ 0.000000e+00, %1000 ]
  %1003 = phi float [ %1318, %1316 ], [ 0.000000e+00, %1000 ]
  %1004 = phi float [ %1319, %1316 ], [ 0.000000e+00, %1000 ]
  %1005 = phi float [ %1320, %1316 ], [ 0.000000e+00, %1000 ]
  %1006 = phi float [ %1321, %1316 ], [ 0.000000e+00, %1000 ]
  %1007 = phi float [ %1322, %1316 ], [ 0.000000e+00, %1000 ]
  %1008 = phi float [ %1323, %1316 ], [ 0.000000e+00, %1000 ]
  %1009 = phi float [ %1324, %1316 ], [ 0.000000e+00, %1000 ]
  %1010 = phi float [ %1325, %1316 ], [ 0.000000e+00, %1000 ]
  %1011 = phi float [ %1326, %1316 ], [ 0.000000e+00, %1000 ]
  %1012 = phi float [ %1327, %1316 ], [ 0.000000e+00, %1000 ]
  %1013 = phi float [ %1328, %1316 ], [ 0.000000e+00, %1000 ]
  %1014 = phi float [ %1329, %1316 ], [ 0.000000e+00, %1000 ]
  %1015 = phi float [ %1330, %1316 ], [ 0.000000e+00, %1000 ]
  %1016 = phi float [ %1331, %1316 ], [ 0.000000e+00, %1000 ]
  %1017 = phi float [ %1332, %1316 ], [ 0.000000e+00, %1000 ]
  %1018 = phi float [ %1333, %1316 ], [ 0.000000e+00, %1000 ]
  %1019 = phi float [ %1334, %1316 ], [ 0.000000e+00, %1000 ]
  %1020 = phi float [ %1335, %1316 ], [ 0.000000e+00, %1000 ]
  %1021 = phi float [ %1336, %1316 ], [ 0.000000e+00, %1000 ]
  %1022 = phi float [ %1337, %1316 ], [ 0.000000e+00, %1000 ]
  %1023 = phi float [ %1338, %1316 ], [ 0.000000e+00, %1000 ]
  %1024 = phi float [ %1339, %1316 ], [ 0.000000e+00, %1000 ]
  %1025 = phi float [ %1340, %1316 ], [ 0.000000e+00, %1000 ]
  %1026 = phi float [ %1341, %1316 ], [ 0.000000e+00, %1000 ]
  %1027 = phi float [ %1342, %1316 ], [ 0.000000e+00, %1000 ]
  %1028 = phi float [ %1343, %1316 ], [ 0.000000e+00, %1000 ]
  %1029 = phi float [ %1344, %1316 ], [ 1.000000e+00, %1000 ]
  %1030 = phi i32 [ %1345, %1316 ], [ 0, %1000 ]
  %1031 = shl i32 %1030, 2
  %1032 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1031, i32 undef)  ; BufferLoad(srv,index,wot)
  %1033 = extractvalue %dx.types.ResRet.i32 %1032, 0
  %1034 = icmp ne i32 %1033, 0
  %1035 = fcmp fast ogt float %1029, 0.000000e+00
  %1036 = and i1 %1035, %1034
  br i1 %1036, label %1037, label %1316

; <label>:1037                                    ; preds = %1001
  br label %1038

; <label>:1038                                    ; preds = %1283, %1037
  %1039 = phi float [ %1284, %1283 ], [ %1002, %1037 ]
  %1040 = phi float [ %1285, %1283 ], [ %1003, %1037 ]
  %1041 = phi float [ %1286, %1283 ], [ %1004, %1037 ]
  %1042 = phi float [ %1287, %1283 ], [ %1005, %1037 ]
  %1043 = phi float [ %1288, %1283 ], [ %1006, %1037 ]
  %1044 = phi float [ %1289, %1283 ], [ %1007, %1037 ]
  %1045 = phi float [ %1290, %1283 ], [ %1008, %1037 ]
  %1046 = phi float [ %1291, %1283 ], [ %1009, %1037 ]
  %1047 = phi float [ %1292, %1283 ], [ %1010, %1037 ]
  %1048 = phi float [ %1293, %1283 ], [ %1011, %1037 ]
  %1049 = phi float [ %1294, %1283 ], [ %1012, %1037 ]
  %1050 = phi float [ %1295, %1283 ], [ %1013, %1037 ]
  %1051 = phi float [ %1296, %1283 ], [ %1014, %1037 ]
  %1052 = phi float [ %1297, %1283 ], [ %1015, %1037 ]
  %1053 = phi float [ %1298, %1283 ], [ %1016, %1037 ]
  %1054 = phi float [ %1299, %1283 ], [ %1017, %1037 ]
  %1055 = phi float [ %1300, %1283 ], [ %1018, %1037 ]
  %1056 = phi float [ %1301, %1283 ], [ %1019, %1037 ]
  %1057 = phi float [ %1302, %1283 ], [ %1020, %1037 ]
  %1058 = phi float [ %1303, %1283 ], [ %1021, %1037 ]
  %1059 = phi float [ %1304, %1283 ], [ %1022, %1037 ]
  %1060 = phi float [ %1305, %1283 ], [ %1023, %1037 ]
  %1061 = phi float [ %1306, %1283 ], [ %1024, %1037 ]
  %1062 = phi float [ %1307, %1283 ], [ %1025, %1037 ]
  %1063 = phi float [ %1308, %1283 ], [ %1026, %1037 ]
  %1064 = phi float [ %1309, %1283 ], [ %1027, %1037 ]
  %1065 = phi float [ %1310, %1283 ], [ %1028, %1037 ]
  %1066 = phi float [ %1311, %1283 ], [ %1029, %1037 ]
  %1067 = phi i32 [ %1071, %1283 ], [ %1033, %1037 ]
  %1068 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1067)  ; FirstbitLo(value)
  %1069 = and i32 %1068, 31
  %1070 = shl i32 1, %1069
  %1071 = xor i32 %1070, %1067
  %1072 = shl i32 %1030, 5
  %1073 = add i32 %1068, %1072
  %1074 = mul i32 %1073, 72
  %1075 = add i32 %1074, 12
  %1076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %1075, i32 undef)  ; BufferLoad(srv,index,wot)
  %1077 = extractvalue %dx.types.ResRet.i32 %1076, 0
  %1078 = add i32 %1074, 16
  %1079 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1078, i32 undef)  ; BufferLoad(srv,index,wot)
  %1080 = extractvalue %dx.types.ResRet.f32 %1079, 0
  %1081 = extractvalue %dx.types.ResRet.f32 %1079, 1
  %1082 = extractvalue %dx.types.ResRet.f32 %1079, 2
  %1083 = mul i32 %1073, 60
  %1084 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1083, i32 undef)  ; BufferLoad(srv,index,wot)
  %1085 = extractvalue %dx.types.ResRet.f32 %1084, 0
  %1086 = extractvalue %dx.types.ResRet.f32 %1084, 1
  %1087 = extractvalue %dx.types.ResRet.f32 %1084, 2
  %1088 = add i32 %1083, 12
  %1089 = add i32 %1083, 48
  %1090 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1089, i32 undef)  ; BufferLoad(srv,index,wot)
  %1091 = extractvalue %dx.types.ResRet.f32 %1090, 0
  %1092 = extractvalue %dx.types.ResRet.f32 %1090, 1
  %1093 = extractvalue %dx.types.ResRet.f32 %1090, 2
  %1094 = and i32 %1077, 32767
  %1095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1096 = extractvalue %dx.types.CBufRet.f32 %1095, 0
  %1097 = extractvalue %dx.types.CBufRet.f32 %1095, 1
  %1098 = extractvalue %dx.types.CBufRet.f32 %1095, 2
  %1099 = fsub fast float %1085, %1096
  %1100 = fsub fast float %1086, %1097
  %1101 = fsub fast float %1087, %1098
  %1102 = fsub fast float %199, %1099
  %1103 = fsub fast float %200, %1100
  %1104 = fsub fast float %201, %1101
  %1105 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1088, i32 undef)  ; BufferLoad(srv,index,wot)
  %1106 = extractvalue %dx.types.ResRet.f32 %1105, 0
  %1107 = extractvalue %dx.types.ResRet.f32 %1105, 1
  %1108 = extractvalue %dx.types.ResRet.f32 %1105, 2
  %1109 = call float @dx.op.dot3.f32(i32 55, float %1102, float %1103, float %1104, float %1106, float %1107, float %1108)  ; Dot3(ax,ay,az,bx,by,bz)
  %1110 = add i32 %1083, 24
  %1111 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1110, i32 undef)  ; BufferLoad(srv,index,wot)
  %1112 = extractvalue %dx.types.ResRet.f32 %1111, 0
  %1113 = extractvalue %dx.types.ResRet.f32 %1111, 1
  %1114 = extractvalue %dx.types.ResRet.f32 %1111, 2
  %1115 = call float @dx.op.dot3.f32(i32 55, float %1102, float %1103, float %1104, float %1112, float %1113, float %1114)  ; Dot3(ax,ay,az,bx,by,bz)
  %1116 = add i32 %1083, 36
  %1117 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1116, i32 undef)  ; BufferLoad(srv,index,wot)
  %1118 = extractvalue %dx.types.ResRet.f32 %1117, 0
  %1119 = extractvalue %dx.types.ResRet.f32 %1117, 1
  %1120 = extractvalue %dx.types.ResRet.f32 %1117, 2
  %1121 = call float @dx.op.dot3.f32(i32 55, float %1102, float %1103, float %1104, float %1118, float %1119, float %1120)  ; Dot3(ax,ay,az,bx,by,bz)
  %1122 = call float @dx.op.unary.f32(i32 6, float %1109)  ; FAbs(value)
  %1123 = call float @dx.op.unary.f32(i32 6, float %1115)  ; FAbs(value)
  %1124 = call float @dx.op.unary.f32(i32 6, float %1121)  ; FAbs(value)
  %1125 = fsub fast float %1091, %1122
  %1126 = fsub fast float %1092, %1123
  %1127 = fsub fast float %1093, %1124
  %1128 = fmul fast float %1125, %1080
  %1129 = fmul fast float %1126, %1081
  %1130 = fmul fast float %1127, %1082
  %1131 = call float @dx.op.binary.f32(i32 36, float %1129, float %1130)  ; FMin(a,b)
  %1132 = call float @dx.op.binary.f32(i32 36, float %1128, float %1131)  ; FMin(a,b)
  %1133 = call float @dx.op.unary.f32(i32 7, float %1132)  ; Saturate(value)
  %1134 = call float @dx.op.binary.f32(i32 36, float %1066, float %1133)  ; FMin(a,b)
  %1135 = fcmp fast ogt float %1134, 0.000000e+00
  br i1 %1135, label %1136, label %1283, !dx.controlflow.hints !52

; <label>:1136                                    ; preds = %1038
  %1137 = lshr i32 %1077, 16
  %1138 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1137)  ; LegacyF16ToF32(value)
  %1139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 141)  ; CBufferLoadLegacy(handle,regIndex)
  %1140 = extractvalue %dx.types.CBufRet.f32 %1139, 3
  %1141 = bitcast float %1140 to i32
  %1142 = add i32 %1141, %1094
  %1143 = mul i32 %1142, 36
  %1144 = shl i32 %1141, 1
  %1145 = add i32 %1144, %1094
  %1146 = mul i32 %1145, 36
  %1147 = mul i32 %1141, 3
  %1148 = add i32 %1147, %1094
  %1149 = mul i32 %1148, 36
  %1150 = fmul fast float %1138, %1134
  %1151 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1143, i32 undef)  ; BufferLoad(srv,index,wot)
  %1152 = extractvalue %dx.types.ResRet.f32 %1151, 0
  %1153 = fmul fast float %1152, %1150
  %1154 = fadd fast float %1153, %1047
  %1155 = add i32 %1143, 4
  %1156 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1155, i32 undef)  ; BufferLoad(srv,index,wot)
  %1157 = extractvalue %dx.types.ResRet.f32 %1156, 0
  %1158 = fmul fast float %1157, %1150
  %1159 = fadd fast float %1158, %1046
  %1160 = add i32 %1143, 8
  %1161 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1160, i32 undef)  ; BufferLoad(srv,index,wot)
  %1162 = extractvalue %dx.types.ResRet.f32 %1161, 0
  %1163 = fmul fast float %1162, %1150
  %1164 = fadd fast float %1163, %1045
  %1165 = add i32 %1143, 12
  %1166 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1165, i32 undef)  ; BufferLoad(srv,index,wot)
  %1167 = extractvalue %dx.types.ResRet.f32 %1166, 0
  %1168 = fmul fast float %1167, %1150
  %1169 = fadd fast float %1168, %1044
  %1170 = add i32 %1143, 16
  %1171 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1170, i32 undef)  ; BufferLoad(srv,index,wot)
  %1172 = extractvalue %dx.types.ResRet.f32 %1171, 0
  %1173 = fmul fast float %1172, %1150
  %1174 = fadd fast float %1173, %1043
  %1175 = add i32 %1143, 20
  %1176 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1175, i32 undef)  ; BufferLoad(srv,index,wot)
  %1177 = extractvalue %dx.types.ResRet.f32 %1176, 0
  %1178 = fmul fast float %1177, %1150
  %1179 = fadd fast float %1178, %1042
  %1180 = add i32 %1143, 24
  %1181 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1180, i32 undef)  ; BufferLoad(srv,index,wot)
  %1182 = extractvalue %dx.types.ResRet.f32 %1181, 0
  %1183 = fmul fast float %1182, %1150
  %1184 = fadd fast float %1183, %1041
  %1185 = add i32 %1143, 28
  %1186 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1185, i32 undef)  ; BufferLoad(srv,index,wot)
  %1187 = extractvalue %dx.types.ResRet.f32 %1186, 0
  %1188 = fmul fast float %1187, %1150
  %1189 = fadd fast float %1188, %1040
  %1190 = add i32 %1143, 32
  %1191 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1190, i32 undef)  ; BufferLoad(srv,index,wot)
  %1192 = extractvalue %dx.types.ResRet.f32 %1191, 0
  %1193 = fmul fast float %1192, %1150
  %1194 = fadd fast float %1193, %1039
  %1195 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1146, i32 undef)  ; BufferLoad(srv,index,wot)
  %1196 = extractvalue %dx.types.ResRet.f32 %1195, 0
  %1197 = fmul fast float %1196, %1150
  %1198 = fadd fast float %1197, %1056
  %1199 = add i32 %1146, 4
  %1200 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1199, i32 undef)  ; BufferLoad(srv,index,wot)
  %1201 = extractvalue %dx.types.ResRet.f32 %1200, 0
  %1202 = fmul fast float %1201, %1150
  %1203 = fadd fast float %1202, %1055
  %1204 = add i32 %1146, 8
  %1205 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1204, i32 undef)  ; BufferLoad(srv,index,wot)
  %1206 = extractvalue %dx.types.ResRet.f32 %1205, 0
  %1207 = fmul fast float %1206, %1150
  %1208 = fadd fast float %1207, %1054
  %1209 = add i32 %1146, 12
  %1210 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1209, i32 undef)  ; BufferLoad(srv,index,wot)
  %1211 = extractvalue %dx.types.ResRet.f32 %1210, 0
  %1212 = fmul fast float %1211, %1150
  %1213 = fadd fast float %1212, %1053
  %1214 = add i32 %1146, 16
  %1215 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1214, i32 undef)  ; BufferLoad(srv,index,wot)
  %1216 = extractvalue %dx.types.ResRet.f32 %1215, 0
  %1217 = fmul fast float %1216, %1150
  %1218 = fadd fast float %1217, %1052
  %1219 = add i32 %1146, 20
  %1220 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1219, i32 undef)  ; BufferLoad(srv,index,wot)
  %1221 = extractvalue %dx.types.ResRet.f32 %1220, 0
  %1222 = fmul fast float %1221, %1150
  %1223 = fadd fast float %1222, %1051
  %1224 = add i32 %1146, 24
  %1225 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1224, i32 undef)  ; BufferLoad(srv,index,wot)
  %1226 = extractvalue %dx.types.ResRet.f32 %1225, 0
  %1227 = fmul fast float %1226, %1150
  %1228 = fadd fast float %1227, %1050
  %1229 = add i32 %1146, 28
  %1230 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1229, i32 undef)  ; BufferLoad(srv,index,wot)
  %1231 = extractvalue %dx.types.ResRet.f32 %1230, 0
  %1232 = fmul fast float %1231, %1150
  %1233 = fadd fast float %1232, %1049
  %1234 = add i32 %1146, 32
  %1235 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1234, i32 undef)  ; BufferLoad(srv,index,wot)
  %1236 = extractvalue %dx.types.ResRet.f32 %1235, 0
  %1237 = fmul fast float %1236, %1150
  %1238 = fadd fast float %1237, %1048
  %1239 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1149, i32 undef)  ; BufferLoad(srv,index,wot)
  %1240 = extractvalue %dx.types.ResRet.f32 %1239, 0
  %1241 = fmul fast float %1240, %1150
  %1242 = fadd fast float %1241, %1065
  %1243 = add i32 %1149, 4
  %1244 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1243, i32 undef)  ; BufferLoad(srv,index,wot)
  %1245 = extractvalue %dx.types.ResRet.f32 %1244, 0
  %1246 = fmul fast float %1245, %1150
  %1247 = fadd fast float %1246, %1064
  %1248 = add i32 %1149, 8
  %1249 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1248, i32 undef)  ; BufferLoad(srv,index,wot)
  %1250 = extractvalue %dx.types.ResRet.f32 %1249, 0
  %1251 = fmul fast float %1250, %1150
  %1252 = fadd fast float %1251, %1063
  %1253 = add i32 %1149, 12
  %1254 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1253, i32 undef)  ; BufferLoad(srv,index,wot)
  %1255 = extractvalue %dx.types.ResRet.f32 %1254, 0
  %1256 = fmul fast float %1255, %1150
  %1257 = fadd fast float %1256, %1062
  %1258 = add i32 %1149, 16
  %1259 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1258, i32 undef)  ; BufferLoad(srv,index,wot)
  %1260 = extractvalue %dx.types.ResRet.f32 %1259, 0
  %1261 = fmul fast float %1260, %1150
  %1262 = fadd fast float %1261, %1061
  %1263 = add i32 %1149, 20
  %1264 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1263, i32 undef)  ; BufferLoad(srv,index,wot)
  %1265 = extractvalue %dx.types.ResRet.f32 %1264, 0
  %1266 = fmul fast float %1265, %1150
  %1267 = fadd fast float %1266, %1060
  %1268 = add i32 %1149, 24
  %1269 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1268, i32 undef)  ; BufferLoad(srv,index,wot)
  %1270 = extractvalue %dx.types.ResRet.f32 %1269, 0
  %1271 = fmul fast float %1270, %1150
  %1272 = fadd fast float %1271, %1059
  %1273 = add i32 %1149, 28
  %1274 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1273, i32 undef)  ; BufferLoad(srv,index,wot)
  %1275 = extractvalue %dx.types.ResRet.f32 %1274, 0
  %1276 = fmul fast float %1275, %1150
  %1277 = fadd fast float %1276, %1058
  %1278 = add i32 %1149, 32
  %1279 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1278, i32 undef)  ; BufferLoad(srv,index,wot)
  %1280 = extractvalue %dx.types.ResRet.f32 %1279, 0
  %1281 = fmul fast float %1280, %1150
  %1282 = fadd fast float %1281, %1057
  br label %1283

; <label>:1283                                    ; preds = %1136, %1038
  %1284 = phi float [ %1194, %1136 ], [ %1039, %1038 ]
  %1285 = phi float [ %1189, %1136 ], [ %1040, %1038 ]
  %1286 = phi float [ %1184, %1136 ], [ %1041, %1038 ]
  %1287 = phi float [ %1179, %1136 ], [ %1042, %1038 ]
  %1288 = phi float [ %1174, %1136 ], [ %1043, %1038 ]
  %1289 = phi float [ %1169, %1136 ], [ %1044, %1038 ]
  %1290 = phi float [ %1164, %1136 ], [ %1045, %1038 ]
  %1291 = phi float [ %1159, %1136 ], [ %1046, %1038 ]
  %1292 = phi float [ %1154, %1136 ], [ %1047, %1038 ]
  %1293 = phi float [ %1238, %1136 ], [ %1048, %1038 ]
  %1294 = phi float [ %1233, %1136 ], [ %1049, %1038 ]
  %1295 = phi float [ %1228, %1136 ], [ %1050, %1038 ]
  %1296 = phi float [ %1223, %1136 ], [ %1051, %1038 ]
  %1297 = phi float [ %1218, %1136 ], [ %1052, %1038 ]
  %1298 = phi float [ %1213, %1136 ], [ %1053, %1038 ]
  %1299 = phi float [ %1208, %1136 ], [ %1054, %1038 ]
  %1300 = phi float [ %1203, %1136 ], [ %1055, %1038 ]
  %1301 = phi float [ %1198, %1136 ], [ %1056, %1038 ]
  %1302 = phi float [ %1282, %1136 ], [ %1057, %1038 ]
  %1303 = phi float [ %1277, %1136 ], [ %1058, %1038 ]
  %1304 = phi float [ %1272, %1136 ], [ %1059, %1038 ]
  %1305 = phi float [ %1267, %1136 ], [ %1060, %1038 ]
  %1306 = phi float [ %1262, %1136 ], [ %1061, %1038 ]
  %1307 = phi float [ %1257, %1136 ], [ %1062, %1038 ]
  %1308 = phi float [ %1252, %1136 ], [ %1063, %1038 ]
  %1309 = phi float [ %1247, %1136 ], [ %1064, %1038 ]
  %1310 = phi float [ %1242, %1136 ], [ %1065, %1038 ]
  %1311 = fsub fast float %1066, %1134
  %1312 = icmp ne i32 %1067, %1070
  %1313 = fcmp fast ogt float %1311, 0.000000e+00
  %1314 = and i1 %1312, %1313
  br i1 %1314, label %1038, label %1315

; <label>:1315                                    ; preds = %1283
  br label %1316

; <label>:1316                                    ; preds = %1315, %1001
  %1317 = phi float [ %1002, %1001 ], [ %1284, %1315 ]
  %1318 = phi float [ %1003, %1001 ], [ %1285, %1315 ]
  %1319 = phi float [ %1004, %1001 ], [ %1286, %1315 ]
  %1320 = phi float [ %1005, %1001 ], [ %1287, %1315 ]
  %1321 = phi float [ %1006, %1001 ], [ %1288, %1315 ]
  %1322 = phi float [ %1007, %1001 ], [ %1289, %1315 ]
  %1323 = phi float [ %1008, %1001 ], [ %1290, %1315 ]
  %1324 = phi float [ %1009, %1001 ], [ %1291, %1315 ]
  %1325 = phi float [ %1010, %1001 ], [ %1292, %1315 ]
  %1326 = phi float [ %1011, %1001 ], [ %1293, %1315 ]
  %1327 = phi float [ %1012, %1001 ], [ %1294, %1315 ]
  %1328 = phi float [ %1013, %1001 ], [ %1295, %1315 ]
  %1329 = phi float [ %1014, %1001 ], [ %1296, %1315 ]
  %1330 = phi float [ %1015, %1001 ], [ %1297, %1315 ]
  %1331 = phi float [ %1016, %1001 ], [ %1298, %1315 ]
  %1332 = phi float [ %1017, %1001 ], [ %1299, %1315 ]
  %1333 = phi float [ %1018, %1001 ], [ %1300, %1315 ]
  %1334 = phi float [ %1019, %1001 ], [ %1301, %1315 ]
  %1335 = phi float [ %1020, %1001 ], [ %1302, %1315 ]
  %1336 = phi float [ %1021, %1001 ], [ %1303, %1315 ]
  %1337 = phi float [ %1022, %1001 ], [ %1304, %1315 ]
  %1338 = phi float [ %1023, %1001 ], [ %1305, %1315 ]
  %1339 = phi float [ %1024, %1001 ], [ %1306, %1315 ]
  %1340 = phi float [ %1025, %1001 ], [ %1307, %1315 ]
  %1341 = phi float [ %1026, %1001 ], [ %1308, %1315 ]
  %1342 = phi float [ %1027, %1001 ], [ %1309, %1315 ]
  %1343 = phi float [ %1028, %1001 ], [ %1310, %1315 ]
  %1344 = phi float [ %1029, %1001 ], [ %1311, %1315 ]
  %1345 = add i32 %1030, 1
  %1346 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1347 = extractvalue %dx.types.CBufRet.i32 %1346, 2
  %1348 = icmp ult i32 %1345, %1347
  br i1 %1348, label %1001, label %1349

; <label>:1349                                    ; preds = %1316
  br label %1350

; <label>:1350                                    ; preds = %1349, %993
  %1351 = phi float [ 0.000000e+00, %993 ], [ %1317, %1349 ]
  %1352 = phi float [ 0.000000e+00, %993 ], [ %1318, %1349 ]
  %1353 = phi float [ 0.000000e+00, %993 ], [ %1319, %1349 ]
  %1354 = phi float [ 0.000000e+00, %993 ], [ %1320, %1349 ]
  %1355 = phi float [ 0.000000e+00, %993 ], [ %1321, %1349 ]
  %1356 = phi float [ 0.000000e+00, %993 ], [ %1322, %1349 ]
  %1357 = phi float [ 0.000000e+00, %993 ], [ %1323, %1349 ]
  %1358 = phi float [ 0.000000e+00, %993 ], [ %1324, %1349 ]
  %1359 = phi float [ 0.000000e+00, %993 ], [ %1325, %1349 ]
  %1360 = phi float [ 0.000000e+00, %993 ], [ %1326, %1349 ]
  %1361 = phi float [ 0.000000e+00, %993 ], [ %1327, %1349 ]
  %1362 = phi float [ 0.000000e+00, %993 ], [ %1328, %1349 ]
  %1363 = phi float [ 0.000000e+00, %993 ], [ %1329, %1349 ]
  %1364 = phi float [ 0.000000e+00, %993 ], [ %1330, %1349 ]
  %1365 = phi float [ 0.000000e+00, %993 ], [ %1331, %1349 ]
  %1366 = phi float [ 0.000000e+00, %993 ], [ %1332, %1349 ]
  %1367 = phi float [ 0.000000e+00, %993 ], [ %1333, %1349 ]
  %1368 = phi float [ 0.000000e+00, %993 ], [ %1334, %1349 ]
  %1369 = phi float [ 0.000000e+00, %993 ], [ %1335, %1349 ]
  %1370 = phi float [ 0.000000e+00, %993 ], [ %1336, %1349 ]
  %1371 = phi float [ 0.000000e+00, %993 ], [ %1337, %1349 ]
  %1372 = phi float [ 0.000000e+00, %993 ], [ %1338, %1349 ]
  %1373 = phi float [ 0.000000e+00, %993 ], [ %1339, %1349 ]
  %1374 = phi float [ 0.000000e+00, %993 ], [ %1340, %1349 ]
  %1375 = phi float [ 0.000000e+00, %993 ], [ %1341, %1349 ]
  %1376 = phi float [ 0.000000e+00, %993 ], [ %1342, %1349 ]
  %1377 = phi float [ 0.000000e+00, %993 ], [ %1343, %1349 ]
  %1378 = phi float [ 1.000000e+00, %993 ], [ %1344, %1349 ]
  %1379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1380 = extractvalue %dx.types.CBufRet.f32 %1379, 3
  %1381 = fdiv fast float 1.000000e+00, %1380
  %1382 = fmul fast float %1381, %1359
  %1383 = fmul fast float %1381, %1358
  %1384 = fmul fast float %1381, %1357
  %1385 = fmul fast float %1381, %1356
  %1386 = fmul fast float %1381, %1355
  %1387 = fmul fast float %1381, %1354
  %1388 = fmul fast float %1381, %1353
  %1389 = fmul fast float %1381, %1352
  %1390 = fmul fast float %1381, %1351
  %1391 = fmul fast float %1381, %1368
  %1392 = fmul fast float %1381, %1367
  %1393 = fmul fast float %1381, %1366
  %1394 = fmul fast float %1381, %1365
  %1395 = fmul fast float %1381, %1364
  %1396 = fmul fast float %1381, %1363
  %1397 = fmul fast float %1381, %1362
  %1398 = fmul fast float %1381, %1361
  %1399 = fmul fast float %1381, %1360
  %1400 = fmul fast float %1381, %1377
  %1401 = fmul fast float %1381, %1376
  %1402 = fmul fast float %1381, %1375
  %1403 = fmul fast float %1381, %1374
  %1404 = fmul fast float %1381, %1373
  %1405 = fmul fast float %1381, %1372
  %1406 = fmul fast float %1381, %1371
  %1407 = fmul fast float %1381, %1370
  %1408 = fmul fast float %1381, %1369
  %1409 = fmul fast float %1382, 0x3FD20DD760000000
  %1410 = fmul fast float %1391, 0x3FD20DD760000000
  %1411 = fmul fast float %1400, 0x3FD20DD760000000
  br i1 %93, label %1412, label %1482, !dx.controlflow.hints !51

; <label>:1412                                    ; preds = %1350
  %1413 = fmul fast float %206, 0xBFD4D8D7C0000000
  %1414 = fmul fast float %1413, %1384
  %1415 = fmul fast float %206, %206
  %1416 = fmul fast float %1415, 0x3FEE471020000000
  %1417 = fadd fast float %1416, 0xBFD42F6020000000
  %1418 = fmul fast float %1388, %1417
  %1419 = fmul fast float %1385, %204
  %1420 = fmul fast float %1383, %205
  %1421 = fmul fast float %206, 0x3FF17B1420000000
  %1422 = fmul fast float %1389, %207
  %1423 = fmul fast float %1387, %208
  %1424 = fmul fast float %204, %204
  %1425 = fmul fast float %205, %205
  %1426 = fsub fast float %1424, %1425
  %1427 = fmul fast float %1426, 0x3FC17B1420000000
  %1428 = fmul fast float %1427, %1390
  %1429 = fmul fast float %203, 0x3FD17B1420000000
  %1430 = fmul fast float %1429, %200
  %1431 = fmul fast float %1430, %204
  %1432 = fmul fast float %1431, %1386
  %1433 = fadd fast float %1422, %1423
  %1434 = fmul fast float %1421, %1433
  %1435 = fadd fast float %1434, %1418
  %1436 = fmul fast float %1435, 2.500000e-01
  %1437 = fadd fast float %1420, %1419
  %1438 = fmul fast float %1437, 0x3FD4D8D7C0000000
  %1439 = fadd fast float %1414, %1409
  %1440 = fadd fast float %1439, %1428
  %1441 = fadd fast float %1440, %1432
  %1442 = fadd fast float %1441, %1436
  %1443 = fadd fast float %1442, %1438
  %1444 = fmul fast float %1413, %1393
  %1445 = fmul fast float %1397, %1417
  %1446 = fmul fast float %1394, %204
  %1447 = fmul fast float %1392, %205
  %1448 = fmul fast float %1398, %207
  %1449 = fmul fast float %1396, %208
  %1450 = fmul fast float %1427, %1399
  %1451 = fmul fast float %1431, %1395
  %1452 = fadd fast float %1448, %1449
  %1453 = fmul fast float %1421, %1452
  %1454 = fadd fast float %1453, %1445
  %1455 = fmul fast float %1454, 2.500000e-01
  %1456 = fadd fast float %1447, %1446
  %1457 = fmul fast float %1456, 0x3FD4D8D7C0000000
  %1458 = fadd fast float %1444, %1410
  %1459 = fadd fast float %1458, %1450
  %1460 = fadd fast float %1459, %1451
  %1461 = fadd fast float %1460, %1455
  %1462 = fadd fast float %1461, %1457
  %1463 = fmul fast float %1413, %1402
  %1464 = fmul fast float %1406, %1417
  %1465 = fmul fast float %1403, %204
  %1466 = fmul fast float %1401, %205
  %1467 = fmul fast float %1407, %207
  %1468 = fmul fast float %1405, %208
  %1469 = fmul fast float %1427, %1408
  %1470 = fmul fast float %1431, %1404
  %1471 = fadd fast float %1467, %1468
  %1472 = fmul fast float %1421, %1471
  %1473 = fadd fast float %1472, %1464
  %1474 = fmul fast float %1473, 2.500000e-01
  %1475 = fadd fast float %1466, %1465
  %1476 = fmul fast float %1475, 0x3FD4D8D7C0000000
  %1477 = fadd fast float %1463, %1411
  %1478 = fadd fast float %1477, %1469
  %1479 = fadd fast float %1478, %1470
  %1480 = fadd fast float %1479, %1474
  %1481 = fadd fast float %1480, %1476
  br label %1576

; <label>:1482                                    ; preds = %1350
  %1483 = fmul fast float %135, %135
  %1484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1485 = extractvalue %dx.types.CBufRet.f32 %1484, 0
  %1486 = extractvalue %dx.types.CBufRet.f32 %1484, 1
  %1487 = extractvalue %dx.types.CBufRet.f32 %1484, 2
  %1488 = fmul fast float %1384, %135
  %1489 = fmul fast float %1488, %1487
  %1490 = fmul fast float %1487, %1487
  %1491 = fmul fast float %1490, 0x3FEE471020000000
  %1492 = fadd fast float %1491, 0xBFD42F6020000000
  %1493 = fmul fast float %1492, %1388
  %1494 = fmul fast float %1485, %1385
  %1495 = fmul fast float %1486, %1383
  %1496 = fmul fast float %1487, 0x3FF17B1420000000
  %1497 = fmul fast float %1389, %1483
  %1498 = fmul fast float %1497, %1485
  %1499 = fmul fast float %1498, %1496
  %1500 = fmul fast float %1387, %1483
  %1501 = fmul fast float %1500, %1486
  %1502 = fmul fast float %1501, %1496
  %1503 = fmul fast float %1485, %1485
  %1504 = fmul fast float %1486, %1486
  %1505 = fsub fast float %1503, %1504
  %1506 = fmul fast float %1390, 0x3FE17B1420000000
  %1507 = fmul fast float %1506, %1505
  %1508 = fmul fast float %1386, 0x3FF17B1420000000
  %1509 = fmul fast float %1508, %1486
  %1510 = fmul fast float %1509, %1485
  %1511 = fadd fast float %1507, %1510
  %1512 = fadd fast float %1511, %1493
  %1513 = fmul fast float %1512, %1483
  %1514 = fadd fast float %1495, %1494
  %1515 = fmul fast float %1514, %135
  %1516 = fsub fast float %1515, %1489
  %1517 = fmul fast float %1516, 0x3FDF454380000000
  %1518 = fsub fast float %1409, %1499
  %1519 = fsub fast float %1518, %1502
  %1520 = fadd fast float %1519, %1513
  %1521 = fadd fast float %1520, %1517
  %1522 = fmul fast float %1393, %135
  %1523 = fmul fast float %1522, %1487
  %1524 = fmul fast float %1492, %1397
  %1525 = fmul fast float %1485, %1394
  %1526 = fmul fast float %1486, %1392
  %1527 = fmul fast float %1398, %1483
  %1528 = fmul fast float %1527, %1485
  %1529 = fmul fast float %1528, %1496
  %1530 = fmul fast float %1396, %1483
  %1531 = fmul fast float %1530, %1486
  %1532 = fmul fast float %1531, %1496
  %1533 = fmul fast float %1399, 0x3FE17B1420000000
  %1534 = fmul fast float %1533, %1505
  %1535 = fmul fast float %1395, 0x3FF17B1420000000
  %1536 = fmul fast float %1535, %1486
  %1537 = fmul fast float %1536, %1485
  %1538 = fadd fast float %1534, %1537
  %1539 = fadd fast float %1538, %1524
  %1540 = fmul fast float %1539, %1483
  %1541 = fadd fast float %1526, %1525
  %1542 = fmul fast float %1541, %135
  %1543 = fsub fast float %1542, %1523
  %1544 = fmul fast float %1543, 0x3FDF454380000000
  %1545 = fsub fast float %1410, %1529
  %1546 = fsub fast float %1545, %1532
  %1547 = fadd fast float %1546, %1540
  %1548 = fadd fast float %1547, %1544
  %1549 = fmul fast float %1402, %135
  %1550 = fmul fast float %1549, %1487
  %1551 = fmul fast float %1492, %1406
  %1552 = fmul fast float %1485, %1403
  %1553 = fmul fast float %1486, %1401
  %1554 = fmul fast float %1407, %1483
  %1555 = fmul fast float %1554, %1485
  %1556 = fmul fast float %1555, %1496
  %1557 = fmul fast float %1405, %1483
  %1558 = fmul fast float %1557, %1486
  %1559 = fmul fast float %1558, %1496
  %1560 = fmul fast float %1408, 0x3FE17B1420000000
  %1561 = fmul fast float %1560, %1505
  %1562 = fmul fast float %1404, 0x3FF17B1420000000
  %1563 = fmul fast float %1562, %1486
  %1564 = fmul fast float %1563, %1485
  %1565 = fadd fast float %1561, %1564
  %1566 = fadd fast float %1565, %1551
  %1567 = fmul fast float %1566, %1483
  %1568 = fadd fast float %1553, %1552
  %1569 = fmul fast float %1568, %135
  %1570 = fsub fast float %1569, %1550
  %1571 = fmul fast float %1570, 0x3FDF454380000000
  %1572 = fsub fast float %1411, %1556
  %1573 = fsub fast float %1572, %1559
  %1574 = fadd fast float %1573, %1567
  %1575 = fadd fast float %1574, %1571
  br label %1576

; <label>:1576                                    ; preds = %1482, %1412
  %1577 = phi float [ %1443, %1412 ], [ %1521, %1482 ]
  %1578 = phi float [ %1462, %1412 ], [ %1548, %1482 ]
  %1579 = phi float [ %1481, %1412 ], [ %1575, %1482 ]
  %1580 = fmul fast float %1378, %994
  %1581 = fmul fast float %1378, %995
  %1582 = fmul fast float %1378, %996
  %1583 = fadd fast float %1577, %1580
  %1584 = fadd fast float %1578, %1581
  %1585 = fadd fast float %1579, %1582
  %1586 = fmul fast float %1380, %1583
  %1587 = fmul fast float %1380, %1584
  %1588 = fmul fast float %1380, %1585
  %1589 = extractvalue %dx.types.CBufRet.f32 %1379, 0
  %1590 = fmul fast float %1586, %1589
  %1591 = fmul fast float %1587, %1589
  %1592 = fmul fast float %1588, %1589
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %162, i32 %163, i32 undef, float %1590, float %1591, float %1592, float %1590, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1593 = add i32 %163, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %162, i32 %1593, i32 undef, float %1590, float %1591, float %1592, float %1590, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1594 = add i32 %162, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1594, i32 %163, i32 undef, float %1590, float %1591, float %1592, float %1590, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1594, i32 %1593, i32 undef, float %1590, float %1591, float %1592, float %1590, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1595

; <label>:1595                                    ; preds = %1576, %0
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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!33}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !26, !28, !31}
!5 = !{!6, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !21, !22, !23, !24, !25}
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
!18 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 31, i32 1, i32 11, i32 0, null}
!19 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 43, i32 1, i32 11, i32 0, null}
!20 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 11, i32 1, i32 11, i32 0, null}
!21 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 12, i32 1, i32 11, i32 0, null}
!22 = !{i32 13, %"class.Buffer<vector<float, 3> >"* undef, !"", i32 0, i32 19, i32 1, i32 10, i32 0, !7}
!23 = !{i32 14, %"class.Buffer<float>"* undef, !"", i32 0, i32 20, i32 1, i32 10, i32 0, !7}
!24 = !{i32 15, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 22, i32 1, i32 12, i32 0, !17}
!25 = !{i32 16, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 23, i32 1, i32 12, i32 0, !17}
!26 = !{!27}
!27 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!28 = !{!29, !30}
!29 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!30 = !{i32 1, %DeferredEffectLightConsts_decl* undef, !"", i32 0, i32 1, i32 1, i32 240, null}
!31 = !{!32}
!32 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!33 = !{void ()* @cs_del_sh_combine_multilightgrid_reflection_volumes_2_lowres, !"cs_del_sh_combine_multilightgrid_reflection_volumes_2_lowres", null, !4, !34}
!34 = !{i32 0, i64 272, i32 4, !35}
!35 = !{i32 64, i32 1, i32 1}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 1}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 1}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 1}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 1}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}

