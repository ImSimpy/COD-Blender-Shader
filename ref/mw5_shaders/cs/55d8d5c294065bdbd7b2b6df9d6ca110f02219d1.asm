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
; shader hash: 369d5512c89b5e4da31927768b893ac0
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
;                                       UAV     f32     2darray      U0             u0     1
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
%"class.RWTexture2DArray<vector<float, 4> >" = type { <4 x float> }
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

define void @cs_del_sh_combine_multilightgrid_reflection_volumes_8_lowres() {
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
  %27 = add i32 %26, 6
  %28 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %27, i32 0)  ; BufferLoad(srv,index,wot)
  %29 = extractvalue %dx.types.ResRet.i32 %28, 0
  %30 = icmp ult i32 %22, %29
  br i1 %30, label %31, label %1369, !dx.controlflow.hints !36

; <label>:31                                      ; preds = %0
  %32 = add i32 %26, 9
  %33 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 %32)  ; CBufferLoadLegacy(handle,regIndex)
  %34 = extractvalue %dx.types.CBufRet.i32 %33, 2
  %35 = shl i32 %23, 1
  %36 = shl i32 %24, 1
  %37 = add i32 %34, %22
  %38 = shl i32 %37, 5
  %39 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %38, i32 undef)  ; BufferLoad(srv,index,wot)
  %40 = extractvalue %dx.types.ResRet.i32 %39, 0
  %41 = extractvalue %dx.types.ResRet.i32 %39, 1
  %42 = extractvalue %dx.types.ResRet.i32 %39, 2
  %43 = extractvalue %dx.types.ResRet.i32 %39, 3
  %44 = lshr i32 %43, 14
  %45 = and i32 %44, 16383
  %46 = and i32 %43, 16383
  %47 = bitcast i32 %40 to float
  %48 = bitcast i32 %41 to float
  %49 = bitcast i32 %42 to float
  %50 = and i32 %43, 536870912
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %91, label %52, !dx.controlflow.hints !37

; <label>:52                                      ; preds = %31
  %53 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %54 = extractvalue %dx.types.CBufRet.f32 %53, 2
  %55 = extractvalue %dx.types.CBufRet.f32 %53, 3
  %56 = fmul fast float %54, %47
  %57 = fmul fast float %55, %48
  %58 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %59 = extractvalue %dx.types.CBufRet.f32 %58, 0
  %60 = extractvalue %dx.types.CBufRet.f32 %58, 1
  %61 = fadd fast float %56, %59
  %62 = fadd fast float %57, %60
  %63 = call float @dx.op.unary.f32(i32 7, float %61)  ; Saturate(value)
  %64 = call float @dx.op.unary.f32(i32 7, float %62)  ; Saturate(value)
  %65 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %19, float %63, float %64, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %66 = extractvalue %dx.types.ResRet.f32 %65, 0
  %67 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %68 = extractvalue %dx.types.CBufRet.f32 %67, 0
  %69 = fmul fast float %68, %66
  %70 = fsub fast float %61, %63
  %71 = fsub fast float %62, %64
  %72 = extractvalue %dx.types.CBufRet.f32 %53, 0
  %73 = extractvalue %dx.types.CBufRet.f32 %53, 1
  %74 = fmul fast float %72, %70
  %75 = fmul fast float %73, %71
  %76 = fmul fast float %74, %74
  %77 = fmul fast float %75, %75
  %78 = fadd fast float %76, %77
  %79 = call float @dx.op.unary.f32(i32 24, float %78)  ; Sqrt(value)
  %80 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %81 = extractvalue %dx.types.CBufRet.f32 %80, 3
  %82 = fmul fast float %81, %79
  %83 = call float @dx.op.unary.f32(i32 7, float %82)  ; Saturate(value)
  %84 = extractvalue %dx.types.CBufRet.f32 %80, 2
  %85 = fsub fast float %84, %69
  %86 = fmul fast float %85, %83
  %87 = extractvalue %dx.types.CBufRet.f32 %67, 1
  %88 = fadd fast float %69, %49
  %89 = fadd fast float %88, %87
  %90 = fadd fast float %89, %86
  br label %91

; <label>:91                                      ; preds = %52, %31
  %92 = phi float [ %90, %52 ], [ %49, %31 ]
  %93 = or i32 %38, 16
  %94 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %93, i32 undef)  ; BufferLoad(srv,index,wot)
  %95 = extractvalue %dx.types.ResRet.i32 %94, 0
  %96 = extractvalue %dx.types.ResRet.i32 %94, 1
  %97 = extractvalue %dx.types.ResRet.i32 %94, 2
  %98 = extractvalue %dx.types.ResRet.i32 %94, 3
  %99 = and i32 %95, 65535
  %100 = call float @dx.op.legacyF16ToF32(i32 131, i32 %99)  ; LegacyF16ToF32(value)
  %101 = lshr i32 %95, 16
  %102 = call float @dx.op.legacyF16ToF32(i32 131, i32 %101)  ; LegacyF16ToF32(value)
  %103 = and i32 %96, 1023
  %104 = uitofp i32 %103 to float
  %105 = lshr i32 %96, 10
  %106 = and i32 %105, 1023
  %107 = uitofp i32 %106 to float
  %108 = lshr i32 %96, 20
  %109 = and i32 %108, 1023
  %110 = uitofp i32 %109 to float
  %111 = fmul fast float %104, 0x3F60040100000000
  %112 = fmul fast float %107, 0x3F60040100000000
  %113 = fmul fast float %110, 0x3F60040100000000
  %114 = fadd fast float %111, -1.000000e+00
  %115 = fadd fast float %112, -1.000000e+00
  %116 = fadd fast float %113, -1.000000e+00
  %117 = and i32 %97, 1023
  %118 = uitofp i32 %117 to float
  %119 = lshr i32 %97, 10
  %120 = and i32 %119, 1023
  %121 = uitofp i32 %120 to float
  %122 = lshr i32 %97, 20
  %123 = and i32 %122, 1023
  %124 = uitofp i32 %123 to float
  %125 = fmul fast float %118, 0x3F60040100000000
  %126 = fmul fast float %121, 0x3F60040100000000
  %127 = fmul fast float %124, 0x3F60040100000000
  %128 = fadd fast float %125, -1.000000e+00
  %129 = fadd fast float %126, -1.000000e+00
  %130 = fadd fast float %127, -1.000000e+00
  %131 = and i32 %98, 65535
  %132 = call float @dx.op.legacyF16ToF32(i32 131, i32 %131)  ; LegacyF16ToF32(value)
  %133 = call float @dx.op.unary.f32(i32 13, float %132)  ; Sin(value)
  %134 = call float @dx.op.unary.f32(i32 12, float %132)  ; Cos(value)
  %135 = fmul fast float %134, %114
  %136 = fmul fast float %115, %134
  %137 = fmul fast float %116, %134
  %138 = fmul fast float %128, %133
  %139 = fmul fast float %129, %133
  %140 = fmul fast float %130, %133
  %141 = fadd fast float %135, %138
  %142 = fadd fast float %136, %139
  %143 = fadd fast float %137, %140
  %144 = fmul fast float %141, %100
  %145 = fmul fast float %142, %100
  %146 = fmul fast float %143, %100
  %147 = fmul fast float %114, %133
  %148 = fmul fast float %115, %133
  %149 = fmul fast float %116, %133
  %150 = fmul fast float %134, %128
  %151 = fmul fast float %129, %134
  %152 = fmul fast float %130, %134
  %153 = fsub fast float %147, %150
  %154 = fsub fast float %148, %151
  %155 = fsub fast float %149, %152
  %156 = fmul fast float %153, %102
  %157 = fmul fast float %154, %102
  %158 = fmul fast float %155, %102
  %159 = add i32 %45, %35
  %160 = add i32 %46, %36
  %161 = uitofp i32 %35 to float
  %162 = uitofp i32 %36 to float
  %163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %164 = extractvalue %dx.types.CBufRet.f32 %163, 1
  %165 = fdiv fast float %161, %164
  %166 = fdiv fast float %162, %164
  %167 = extractvalue %dx.types.CBufRet.f32 %163, 2
  %168 = fmul fast float %167, 2.000000e+00
  %169 = fadd fast float %168, %165
  %170 = fadd fast float %168, %166
  %171 = fmul fast float %169, %144
  %172 = fmul fast float %169, %145
  %173 = fmul fast float %169, %146
  %174 = fmul fast float %170, %156
  %175 = fmul fast float %170, %157
  %176 = fmul fast float %170, %158
  %177 = fadd fast float %174, %171
  %178 = fmul fast float %177, 2.000000e+00
  %179 = fsub fast float %47, %144
  %180 = fsub fast float %179, %156
  %181 = fadd fast float %180, %178
  %182 = fadd fast float %175, %172
  %183 = fmul fast float %182, 2.000000e+00
  %184 = fsub fast float %48, %145
  %185 = fsub fast float %184, %157
  %186 = fadd fast float %185, %183
  %187 = fadd fast float %176, %173
  %188 = fmul fast float %187, 2.000000e+00
  %189 = fsub fast float %92, %146
  %190 = fsub fast float %189, %158
  %191 = fadd fast float %190, %188
  %192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %37, i32 0)  ; BufferLoad(srv,index,wot)
  %193 = extractvalue %dx.types.ResRet.i32 %192, 0
  %194 = and i32 %26, 31
  %195 = shl i32 1, %194
  %196 = shl i32 %195, %194
  %197 = shl i32 %24, %194
  %198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %37, i32 0)  ; BufferLoad(srv,index,wot)
  %199 = extractvalue %dx.types.ResRet.i32 %198, 0
  %200 = extractvalue %dx.types.CBufRet.i32 %25, 1
  %201 = icmp ne i32 %200, 0
  %202 = icmp ne i32 %199, 262144
  %203 = and i1 %202, %201
  %204 = icmp ne i32 %193, 0
  %205 = and i1 %204, %203
  br i1 %205, label %206, label %292, !dx.controlflow.hints !38

; <label>:206                                     ; preds = %91
  br label %207

; <label>:207                                     ; preds = %207, %206
  %208 = phi i32 [ %288, %207 ], [ %193, %206 ]
  %209 = phi float [ %286, %207 ], [ 0.000000e+00, %206 ]
  %210 = phi float [ %266, %207 ], [ 0.000000e+00, %206 ]
  %211 = phi float [ %267, %207 ], [ 0.000000e+00, %206 ]
  %212 = phi float [ %268, %207 ], [ 0.000000e+00, %206 ]
  %213 = phi float [ %269, %207 ], [ 0.000000e+00, %206 ]
  %214 = phi float [ %274, %207 ], [ 0.000000e+00, %206 ]
  %215 = phi float [ %275, %207 ], [ 0.000000e+00, %206 ]
  %216 = phi float [ %276, %207 ], [ 0.000000e+00, %206 ]
  %217 = phi float [ %277, %207 ], [ 0.000000e+00, %206 ]
  %218 = phi float [ %282, %207 ], [ 0.000000e+00, %206 ]
  %219 = phi float [ %283, %207 ], [ 0.000000e+00, %206 ]
  %220 = phi float [ %284, %207 ], [ 0.000000e+00, %206 ]
  %221 = phi float [ %285, %207 ], [ 0.000000e+00, %206 ]
  %222 = phi i32 [ %289, %207 ], [ 0, %206 ]
  %223 = mul i32 %222, %196
  %224 = add i32 %197, %23
  %225 = add i32 %224, %199
  %226 = add i32 %225, %223
  %227 = shl i32 %226, 2
  %228 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %227, i32 undef)  ; BufferLoad(srv,index,wot)
  %229 = extractvalue %dx.types.ResRet.f32 %228, 0
  %230 = extractvalue %dx.types.ResRet.f32 %228, 1
  %231 = extractvalue %dx.types.ResRet.f32 %228, 2
  %232 = or i32 %227, 1
  %233 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %232, i32 undef)  ; BufferLoad(srv,index,wot)
  %234 = extractvalue %dx.types.ResRet.f32 %233, 0
  %235 = extractvalue %dx.types.ResRet.f32 %233, 1
  %236 = extractvalue %dx.types.ResRet.f32 %233, 2
  %237 = or i32 %227, 2
  %238 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %237, i32 undef)  ; BufferLoad(srv,index,wot)
  %239 = extractvalue %dx.types.ResRet.f32 %238, 0
  %240 = extractvalue %dx.types.ResRet.f32 %238, 1
  %241 = extractvalue %dx.types.ResRet.f32 %238, 2
  %242 = or i32 %227, 3
  %243 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %242, i32 undef)  ; BufferLoad(srv,index,wot)
  %244 = extractvalue %dx.types.ResRet.f32 %243, 0
  %245 = extractvalue %dx.types.ResRet.f32 %243, 1
  %246 = extractvalue %dx.types.ResRet.f32 %243, 2
  %247 = fmul fast float %229, 0x3FFBB67AE0000000
  %248 = fsub fast float %234, %247
  %249 = fsub fast float %239, %247
  %250 = fsub fast float %244, %247
  %251 = fmul fast float %230, 0x3FFBB67AE0000000
  %252 = fsub fast float %235, %251
  %253 = fsub fast float %240, %251
  %254 = fsub fast float %245, %251
  %255 = fmul fast float %231, 0x3FFBB67AE0000000
  %256 = fsub fast float %236, %255
  %257 = fsub fast float %241, %255
  %258 = fsub fast float %246, %255
  %259 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %226, i32 undef)  ; BufferLoad(srv,index,wot)
  %260 = extractvalue %dx.types.ResRet.f32 %259, 0
  %261 = fmul fast float %260, %260
  %262 = fmul fast float %261, %229
  %263 = fmul fast float %261, %248
  %264 = fmul fast float %261, %249
  %265 = fmul fast float %261, %250
  %266 = fadd fast float %262, %210
  %267 = fadd fast float %263, %211
  %268 = fadd fast float %264, %212
  %269 = fadd fast float %265, %213
  %270 = fmul fast float %261, %230
  %271 = fmul fast float %261, %252
  %272 = fmul fast float %261, %253
  %273 = fmul fast float %261, %254
  %274 = fadd fast float %270, %214
  %275 = fadd fast float %271, %215
  %276 = fadd fast float %272, %216
  %277 = fadd fast float %273, %217
  %278 = fmul fast float %261, %231
  %279 = fmul fast float %261, %256
  %280 = fmul fast float %261, %257
  %281 = fmul fast float %261, %258
  %282 = fadd fast float %278, %218
  %283 = fadd fast float %279, %219
  %284 = fadd fast float %280, %220
  %285 = fadd fast float %281, %221
  %286 = fadd fast float %261, %209
  %287 = add i32 %208, -1
  %288 = and i32 %287, %208
  %289 = add i32 %222, 1
  %290 = icmp eq i32 %288, 0
  br i1 %290, label %291, label %207

; <label>:291                                     ; preds = %207
  br label %292

; <label>:292                                     ; preds = %291, %91
  %293 = phi float [ 0.000000e+00, %91 ], [ %286, %291 ]
  %294 = phi float [ 0.000000e+00, %91 ], [ %266, %291 ]
  %295 = phi float [ 0.000000e+00, %91 ], [ %267, %291 ]
  %296 = phi float [ 0.000000e+00, %91 ], [ %268, %291 ]
  %297 = phi float [ 0.000000e+00, %91 ], [ %269, %291 ]
  %298 = phi float [ 0.000000e+00, %91 ], [ %274, %291 ]
  %299 = phi float [ 0.000000e+00, %91 ], [ %275, %291 ]
  %300 = phi float [ 0.000000e+00, %91 ], [ %276, %291 ]
  %301 = phi float [ 0.000000e+00, %91 ], [ %277, %291 ]
  %302 = phi float [ 0.000000e+00, %91 ], [ %282, %291 ]
  %303 = phi float [ 0.000000e+00, %91 ], [ %283, %291 ]
  %304 = phi float [ 0.000000e+00, %91 ], [ %284, %291 ]
  %305 = phi float [ 0.000000e+00, %91 ], [ %285, %291 ]
  %306 = fcmp fast ogt float %293, 0.000000e+00
  %307 = fcmp fast une float %293, 1.000000e+00
  %308 = and i1 %306, %307
  br i1 %308, label %309, label %323, !dx.controlflow.hints !39

; <label>:309                                     ; preds = %292
  %310 = fdiv fast float 1.000000e+00, %293
  %311 = fmul fast float %310, %294
  %312 = fmul fast float %310, %295
  %313 = fmul fast float %310, %296
  %314 = fmul fast float %310, %297
  %315 = fmul fast float %310, %298
  %316 = fmul fast float %310, %299
  %317 = fmul fast float %310, %300
  %318 = fmul fast float %310, %301
  %319 = fmul fast float %310, %302
  %320 = fmul fast float %310, %303
  %321 = fmul fast float %310, %304
  %322 = fmul fast float %310, %305
  br label %323

; <label>:323                                     ; preds = %309, %292
  %324 = phi float [ 1.000000e+00, %309 ], [ %293, %292 ]
  %325 = phi float [ %311, %309 ], [ %294, %292 ]
  %326 = phi float [ %312, %309 ], [ %295, %292 ]
  %327 = phi float [ %313, %309 ], [ %296, %292 ]
  %328 = phi float [ %314, %309 ], [ %297, %292 ]
  %329 = phi float [ %315, %309 ], [ %298, %292 ]
  %330 = phi float [ %316, %309 ], [ %299, %292 ]
  %331 = phi float [ %317, %309 ], [ %300, %292 ]
  %332 = phi float [ %318, %309 ], [ %301, %292 ]
  %333 = phi float [ %319, %309 ], [ %302, %292 ]
  %334 = phi float [ %320, %309 ], [ %303, %292 ]
  %335 = phi float [ %321, %309 ], [ %304, %292 ]
  %336 = phi float [ %322, %309 ], [ %305, %292 ]
  %337 = call float @dx.op.unary.f32(i32 7, float %324)  ; Saturate(value)
  %338 = fsub fast float 1.000000e+00, %337
  %339 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %340 = extractvalue %dx.types.CBufRet.i32 %339, 0
  %341 = icmp eq i32 %340, 1
  br i1 %341, label %342, label %377, !dx.controlflow.hints !40

; <label>:342                                     ; preds = %323
  %343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %344 = extractvalue %dx.types.CBufRet.f32 %343, 0
  %345 = extractvalue %dx.types.CBufRet.f32 %343, 1
  %346 = fsub fast float %181, %344
  %347 = fsub fast float %186, %345
  %348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %349 = extractvalue %dx.types.CBufRet.f32 %348, 0
  %350 = extractvalue %dx.types.CBufRet.f32 %348, 1
  %351 = fmul fast float %346, %349
  %352 = fmul fast float %347, %350
  %353 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %19, float %351, float %352, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %354 = extractvalue %dx.types.ResRet.f32 %353, 0
  %355 = fcmp fast ogt float %354, 0.000000e+00
  %356 = extractvalue %dx.types.CBufRet.i32 %339, 3
  %357 = icmp ne i32 %356, 0
  %358 = and i1 %355, %357
  br i1 %358, label %359, label %377, !dx.controlflow.hints !41

; <label>:359                                     ; preds = %342
  %360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %361 = extractvalue %dx.types.CBufRet.f32 %360, 0
  %362 = extractvalue %dx.types.CBufRet.f32 %360, 1
  %363 = fsub fast float %181, %361
  %364 = fsub fast float %186, %362
  %365 = fmul fast float %363, %363
  %366 = fmul fast float %364, %364
  %367 = fadd fast float %365, %366
  %368 = uitofp i32 %356 to float
  %369 = fmul fast float %368, %368
  %370 = fcmp fast ogt float %367, %369
  br i1 %370, label %377, label %371, !dx.controlflow.hints !42

; <label>:371                                     ; preds = %359
  %372 = call float @dx.op.unary.f32(i32 24, float %367)  ; Sqrt(value)
  %373 = fsub fast float %368, %372
  %374 = fmul fast float %373, 0x3F75555560000000
  %375 = call float @dx.op.unary.f32(i32 7, float %374)  ; Saturate(value)
  %376 = call float @dx.op.binary.f32(i32 36, float %375, float %354)  ; FMin(a,b)
  br label %377

; <label>:377                                     ; preds = %371, %359, %342, %323
  %378 = phi float [ 1.000000e+00, %323 ], [ %376, %371 ], [ %354, %342 ], [ 0.000000e+00, %359 ]
  %379 = fcmp fast ogt float %338, 0.000000e+00
  %380 = fcmp fast olt float %378, 1.000000e+00
  %381 = or i1 %379, %380
  br i1 %381, label %382, label %1051, !dx.controlflow.hints !43

; <label>:382                                     ; preds = %377
  %383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %384 = extractvalue %dx.types.CBufRet.f32 %383, 0
  %385 = extractvalue %dx.types.CBufRet.f32 %383, 1
  %386 = fsub fast float %181, %384
  %387 = fsub fast float %186, %385
  %388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %389 = extractvalue %dx.types.CBufRet.f32 %388, 0
  %390 = extractvalue %dx.types.CBufRet.f32 %388, 1
  %391 = fmul fast float %386, %389
  %392 = fmul fast float %387, %390
  %393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %394 = extractvalue %dx.types.CBufRet.f32 %393, 0
  %395 = fmul fast float %394, %391
  %396 = extractvalue %dx.types.CBufRet.f32 %393, 1
  %397 = fadd fast float %395, %396
  %398 = extractvalue %dx.types.CBufRet.f32 %393, 2
  %399 = fmul fast float %398, %392
  %400 = extractvalue %dx.types.CBufRet.f32 %393, 3
  %401 = fadd fast float %399, %400
  %402 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %19, float %397, float %401, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %403 = extractvalue %dx.types.ResRet.f32 %402, 0
  %404 = extractvalue %dx.types.ResRet.f32 %402, 1
  %405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %406 = extractvalue %dx.types.CBufRet.f32 %405, 1
  %407 = extractvalue %dx.types.CBufRet.f32 %405, 0
  %408 = fsub fast float %406, %407
  %409 = fmul fast float %408, %403
  %410 = fadd fast float %409, %407
  %411 = extractvalue %dx.types.CBufRet.f32 %405, 3
  %412 = extractvalue %dx.types.CBufRet.f32 %405, 2
  %413 = fsub fast float %411, %412
  %414 = fmul fast float %413, %404
  %415 = fadd fast float %414, %412
  %416 = fsub fast float %191, %410
  %417 = fsub fast float %415, %410
  %418 = fdiv fast float %416, %417
  %419 = call float @dx.op.unary.f32(i32 7, float %418)  ; Saturate(value)
  %420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %421 = extractvalue %dx.types.CBufRet.f32 %420, 0
  %422 = fmul fast float %421, %419
  %423 = extractvalue %dx.types.CBufRet.f32 %420, 1
  %424 = fadd fast float %422, %423
  %425 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %19, float %397, float %401, float %424, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %426 = extractvalue %dx.types.ResRet.f32 %425, 0
  %427 = extractvalue %dx.types.ResRet.f32 %425, 1
  %428 = extractvalue %dx.types.ResRet.f32 %425, 2
  %429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %430 = extractvalue %dx.types.CBufRet.f32 %429, 0
  %431 = extractvalue %dx.types.CBufRet.f32 %429, 1
  %432 = extractvalue %dx.types.CBufRet.f32 %429, 2
  %433 = fmul fast float %430, %426
  %434 = fmul fast float %431, %427
  %435 = fmul fast float %432, %428
  %436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %437 = extractvalue %dx.types.CBufRet.f32 %436, 0
  %438 = extractvalue %dx.types.CBufRet.f32 %436, 1
  %439 = extractvalue %dx.types.CBufRet.f32 %436, 2
  %440 = fadd fast float %433, %437
  %441 = fadd fast float %434, %438
  %442 = fadd fast float %435, %439
  %443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %444 = extractvalue %dx.types.CBufRet.f32 %443, 0
  %445 = fmul fast float %444, %391
  %446 = extractvalue %dx.types.CBufRet.f32 %443, 1
  %447 = fadd fast float %445, %446
  %448 = extractvalue %dx.types.CBufRet.f32 %443, 2
  %449 = fmul fast float %448, %392
  %450 = extractvalue %dx.types.CBufRet.f32 %443, 3
  %451 = fadd fast float %449, %450
  %452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %453 = extractvalue %dx.types.CBufRet.f32 %452, 0
  %454 = extractvalue %dx.types.CBufRet.f32 %452, 1
  %455 = extractvalue %dx.types.CBufRet.f32 %452, 2
  %456 = extractvalue %dx.types.CBufRet.f32 %452, 3
  %457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %458 = extractvalue %dx.types.CBufRet.f32 %457, 0
  %459 = extractvalue %dx.types.CBufRet.f32 %457, 1
  %460 = extractvalue %dx.types.CBufRet.f32 %457, 2
  %461 = extractvalue %dx.types.CBufRet.f32 %457, 3
  %462 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %19, float %447, float %451, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %463 = extractvalue %dx.types.ResRet.f32 %462, 0
  %464 = extractvalue %dx.types.ResRet.f32 %462, 1
  %465 = extractvalue %dx.types.ResRet.f32 %462, 2
  %466 = extractvalue %dx.types.ResRet.f32 %462, 3
  %467 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %19, float %447, float %451, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %468 = extractvalue %dx.types.ResRet.f32 %467, 0
  %469 = extractvalue %dx.types.ResRet.f32 %467, 1
  %470 = extractvalue %dx.types.ResRet.f32 %467, 2
  %471 = extractvalue %dx.types.ResRet.f32 %467, 3
  %472 = fmul fast float %463, %440
  %473 = fmul fast float %468, %440
  %474 = fmul fast float %470, %440
  %475 = fmul fast float %466, %440
  %476 = fadd fast float %472, %453
  %477 = fadd fast float %473, %454
  %478 = fadd fast float %474, %455
  %479 = fadd fast float %475, %456
  %480 = fmul fast float %464, %440
  %481 = fmul fast float %469, %440
  %482 = fadd fast float %480, %458
  %483 = fadd fast float %481, %459
  %484 = fmul fast float %465, %440
  %485 = fmul fast float %471, %440
  %486 = fadd fast float %484, %460
  %487 = fadd fast float %485, %461
  %488 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %19, float %447, float %451, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %489 = extractvalue %dx.types.ResRet.f32 %488, 0
  %490 = extractvalue %dx.types.ResRet.f32 %488, 1
  %491 = extractvalue %dx.types.ResRet.f32 %488, 2
  %492 = extractvalue %dx.types.ResRet.f32 %488, 3
  %493 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %19, float %447, float %451, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %494 = extractvalue %dx.types.ResRet.f32 %493, 0
  %495 = extractvalue %dx.types.ResRet.f32 %493, 1
  %496 = extractvalue %dx.types.ResRet.f32 %493, 2
  %497 = extractvalue %dx.types.ResRet.f32 %493, 3
  %498 = fmul fast float %489, %441
  %499 = fmul fast float %494, %441
  %500 = fmul fast float %496, %441
  %501 = fmul fast float %492, %441
  %502 = fadd fast float %476, %498
  %503 = fadd fast float %477, %499
  %504 = fadd fast float %478, %500
  %505 = fadd fast float %479, %501
  %506 = fmul fast float %490, %441
  %507 = fmul fast float %495, %441
  %508 = fadd fast float %482, %506
  %509 = fadd fast float %483, %507
  %510 = fmul fast float %491, %441
  %511 = fmul fast float %497, %441
  %512 = fadd fast float %486, %510
  %513 = fadd fast float %487, %511
  %514 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %19, float %447, float %451, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %515 = extractvalue %dx.types.ResRet.f32 %514, 0
  %516 = extractvalue %dx.types.ResRet.f32 %514, 1
  %517 = extractvalue %dx.types.ResRet.f32 %514, 2
  %518 = extractvalue %dx.types.ResRet.f32 %514, 3
  %519 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %19, float %447, float %451, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %520 = extractvalue %dx.types.ResRet.f32 %519, 0
  %521 = extractvalue %dx.types.ResRet.f32 %519, 1
  %522 = extractvalue %dx.types.ResRet.f32 %519, 2
  %523 = extractvalue %dx.types.ResRet.f32 %519, 3
  %524 = fmul fast float %515, %442
  %525 = fmul fast float %520, %442
  %526 = fmul fast float %522, %442
  %527 = fmul fast float %518, %442
  %528 = fadd fast float %502, %524
  %529 = fadd fast float %503, %525
  %530 = fadd fast float %504, %526
  %531 = fadd fast float %505, %527
  %532 = fmul fast float %516, %442
  %533 = fmul fast float %521, %442
  %534 = fadd fast float %508, %532
  %535 = fadd fast float %509, %533
  %536 = fmul fast float %517, %442
  %537 = fmul fast float %523, %442
  %538 = fadd fast float %512, %536
  %539 = fadd fast float %513, %537
  %540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %541 = extractvalue %dx.types.CBufRet.f32 %540, 0
  %542 = fsub fast float %181, %541
  %543 = fsub fast float %384, %181
  %544 = call float @dx.op.binary.f32(i32 35, float %543, float %542)  ; FMax(a,b)
  %545 = extractvalue %dx.types.CBufRet.f32 %540, 1
  %546 = fsub fast float %186, %545
  %547 = fsub fast float %385, %186
  %548 = call float @dx.op.binary.f32(i32 35, float %547, float %546)  ; FMax(a,b)
  %549 = call float @dx.op.binary.f32(i32 35, float %544, float %548)  ; FMax(a,b)
  %550 = extractvalue %dx.types.CBufRet.f32 %388, 3
  %551 = fmul fast float %550, %549
  %552 = call float @dx.op.unary.f32(i32 7, float %551)  ; Saturate(value)
  %553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %554 = extractvalue %dx.types.CBufRet.f32 %553, 0
  %555 = extractvalue %dx.types.CBufRet.f32 %553, 1
  %556 = extractvalue %dx.types.CBufRet.f32 %553, 2
  %557 = extractvalue %dx.types.CBufRet.f32 %553, 3
  %558 = fsub fast float %554, %528
  %559 = fsub fast float %555, %529
  %560 = fsub fast float %556, %530
  %561 = fsub fast float %557, %531
  %562 = fmul fast float %558, %552
  %563 = fmul fast float %559, %552
  %564 = fmul fast float %560, %552
  %565 = fmul fast float %561, %552
  %566 = fadd fast float %562, %528
  %567 = fadd fast float %563, %529
  %568 = fadd fast float %564, %530
  %569 = fadd fast float %565, %531
  %570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %571 = extractvalue %dx.types.CBufRet.f32 %570, 0
  %572 = extractvalue %dx.types.CBufRet.f32 %570, 1
  %573 = fsub fast float %571, %534
  %574 = fsub fast float %572, %535
  %575 = fmul fast float %573, %552
  %576 = fmul fast float %574, %552
  %577 = fadd fast float %575, %534
  %578 = fadd fast float %576, %535
  %579 = extractvalue %dx.types.CBufRet.f32 %570, 2
  %580 = extractvalue %dx.types.CBufRet.f32 %570, 3
  %581 = fsub fast float %579, %538
  %582 = fsub fast float %580, %539
  %583 = fmul fast float %581, %552
  %584 = fmul fast float %582, %552
  %585 = fadd fast float %583, %538
  %586 = fadd fast float %584, %539
  %587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %588 = extractvalue %dx.types.CBufRet.f32 %587, 0
  %589 = fmul fast float %588, %566
  %590 = fmul fast float %588, %567
  %591 = fmul fast float %588, %568
  %592 = fmul fast float %588, %569
  %593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %594 = extractvalue %dx.types.CBufRet.f32 %593, 0
  %595 = fmul fast float %594, %577
  %596 = fmul fast float %594, %578
  %597 = fadd fast float %595, %589
  %598 = fadd fast float %596, %591
  %599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %600 = extractvalue %dx.types.CBufRet.f32 %599, 0
  %601 = fmul fast float %600, %585
  %602 = fmul fast float %600, %586
  %603 = fadd fast float %597, %601
  %604 = fadd fast float %598, %602
  %605 = extractvalue %dx.types.CBufRet.f32 %587, 1
  %606 = fmul fast float %605, %566
  %607 = fmul fast float %605, %567
  %608 = fmul fast float %605, %568
  %609 = fmul fast float %605, %569
  %610 = extractvalue %dx.types.CBufRet.f32 %593, 1
  %611 = fmul fast float %610, %577
  %612 = fmul fast float %610, %578
  %613 = fadd fast float %611, %606
  %614 = fadd fast float %612, %608
  %615 = extractvalue %dx.types.CBufRet.f32 %599, 1
  %616 = fmul fast float %615, %585
  %617 = fmul fast float %615, %586
  %618 = fadd fast float %613, %616
  %619 = fadd fast float %614, %617
  %620 = extractvalue %dx.types.CBufRet.f32 %587, 2
  %621 = fmul fast float %620, %566
  %622 = fmul fast float %620, %567
  %623 = fmul fast float %620, %568
  %624 = fmul fast float %620, %569
  %625 = extractvalue %dx.types.CBufRet.f32 %593, 2
  %626 = fmul fast float %625, %577
  %627 = fmul fast float %625, %578
  %628 = fadd fast float %626, %621
  %629 = fadd fast float %627, %623
  %630 = extractvalue %dx.types.CBufRet.f32 %599, 2
  %631 = fmul fast float %630, %585
  %632 = fmul fast float %630, %586
  %633 = fadd fast float %628, %631
  %634 = fadd fast float %629, %632
  %635 = fmul fast float %622, %622
  %636 = fmul fast float %634, %634
  %637 = fmul fast float %624, %624
  %638 = fadd fast float %637, %635
  %639 = fadd fast float %638, %636
  %640 = call float @dx.op.unary.f32(i32 24, float %639)  ; Sqrt(value)
  %641 = fcmp fast ugt float %640, 0.000000e+00
  br i1 %641, label %642, label %657, !dx.controlflow.hints !44

; <label>:642                                     ; preds = %382
  %643 = fsub fast float -0.000000e+00, %624
  %644 = fdiv fast float %643, %640
  %645 = fsub fast float -0.000000e+00, %622
  %646 = fdiv fast float %645, %640
  %647 = fdiv fast float %634, %640
  %648 = fmul fast float %633, 0x3FE279A760000000
  %649 = fmul fast float %646, %622
  %650 = fmul fast float %647, %634
  %651 = fmul fast float %644, %624
  %652 = fadd fast float %649, %651
  %653 = fsub fast float %652, %650
  %654 = call float @dx.op.unary.f32(i32 6, float %653)  ; FAbs(value)
  %655 = fadd fast float %654, 0x3DDB7CDFE0000000
  %656 = fdiv fast float %648, %655
  br label %657

; <label>:657                                     ; preds = %642, %382
  %658 = phi float [ %656, %642 ], [ 1.000000e+00, %382 ]
  %659 = fmul fast float %607, %607
  %660 = fmul fast float %619, %619
  %661 = fmul fast float %609, %609
  %662 = fadd fast float %661, %659
  %663 = fadd fast float %662, %660
  %664 = call float @dx.op.unary.f32(i32 24, float %663)  ; Sqrt(value)
  %665 = fcmp fast ugt float %664, 0.000000e+00
  br i1 %665, label %666, label %681, !dx.controlflow.hints !44

; <label>:666                                     ; preds = %657
  %667 = fsub fast float -0.000000e+00, %609
  %668 = fdiv fast float %667, %664
  %669 = fsub fast float -0.000000e+00, %607
  %670 = fdiv fast float %669, %664
  %671 = fdiv fast float %619, %664
  %672 = fmul fast float %618, 0x3FE279A760000000
  %673 = fmul fast float %670, %607
  %674 = fmul fast float %671, %619
  %675 = fmul fast float %668, %609
  %676 = fadd fast float %673, %675
  %677 = fsub fast float %676, %674
  %678 = call float @dx.op.unary.f32(i32 6, float %677)  ; FAbs(value)
  %679 = fadd fast float %678, 0x3DDB7CDFE0000000
  %680 = fdiv fast float %672, %679
  br label %681

; <label>:681                                     ; preds = %666, %657
  %682 = phi float [ %680, %666 ], [ 1.000000e+00, %657 ]
  %683 = call float @dx.op.binary.f32(i32 36, float %682, float %658)  ; FMin(a,b)
  %684 = fmul fast float %590, %590
  %685 = fmul fast float %604, %604
  %686 = fmul fast float %592, %592
  %687 = fadd fast float %686, %684
  %688 = fadd fast float %687, %685
  %689 = call float @dx.op.unary.f32(i32 24, float %688)  ; Sqrt(value)
  %690 = fcmp fast ugt float %689, 0.000000e+00
  br i1 %690, label %691, label %706, !dx.controlflow.hints !44

; <label>:691                                     ; preds = %681
  %692 = fsub fast float -0.000000e+00, %592
  %693 = fdiv fast float %692, %689
  %694 = fsub fast float -0.000000e+00, %590
  %695 = fdiv fast float %694, %689
  %696 = fdiv fast float %604, %689
  %697 = fmul fast float %603, 0x3FE279A760000000
  %698 = fmul fast float %695, %590
  %699 = fmul fast float %696, %604
  %700 = fmul fast float %693, %592
  %701 = fadd fast float %698, %700
  %702 = fsub fast float %701, %699
  %703 = call float @dx.op.unary.f32(i32 6, float %702)  ; FAbs(value)
  %704 = fadd fast float %703, 0x3DDB7CDFE0000000
  %705 = fdiv fast float %697, %704
  br label %706

; <label>:706                                     ; preds = %691, %681
  %707 = phi float [ %705, %691 ], [ 1.000000e+00, %681 ]
  %708 = call float @dx.op.binary.f32(i32 36, float %707, float %683)  ; FMin(a,b)
  %709 = call float @dx.op.unary.f32(i32 7, float %708)  ; Saturate(value)
  %710 = fcmp fast olt float %709, 1.000000e+00
  br i1 %710, label %711, label %721, !dx.controlflow.hints !45

; <label>:711                                     ; preds = %706
  %712 = fmul fast float %709, %590
  %713 = fmul fast float %709, %604
  %714 = fmul fast float %709, %592
  %715 = fmul fast float %709, %607
  %716 = fmul fast float %709, %619
  %717 = fmul fast float %709, %609
  %718 = fmul fast float %709, %622
  %719 = fmul fast float %709, %634
  %720 = fmul fast float %709, %624
  br label %721

; <label>:721                                     ; preds = %711, %706
  %722 = phi float [ %718, %711 ], [ %622, %706 ]
  %723 = phi float [ %719, %711 ], [ %634, %706 ]
  %724 = phi float [ %720, %711 ], [ %624, %706 ]
  %725 = phi float [ %715, %711 ], [ %607, %706 ]
  %726 = phi float [ %716, %711 ], [ %619, %706 ]
  %727 = phi float [ %717, %711 ], [ %609, %706 ]
  %728 = phi float [ %712, %711 ], [ %590, %706 ]
  %729 = phi float [ %713, %711 ], [ %604, %706 ]
  %730 = phi float [ %714, %711 ], [ %592, %706 ]
  %731 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %603)  ; FMax(a,b)
  %732 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %618)  ; FMax(a,b)
  %733 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %633)  ; FMax(a,b)
  %734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %735 = extractvalue %dx.types.CBufRet.f32 %734, 0
  %736 = fcmp fast ogt float %735, 0.000000e+00
  %737 = fcmp fast oge float %391, 0.000000e+00
  %738 = and i1 %737, %736
  %739 = fcmp fast ole float %391, 1.000000e+00
  %740 = and i1 %739, %738
  %741 = fcmp fast oge float %392, 0.000000e+00
  %742 = and i1 %741, %740
  %743 = fcmp fast ole float %392, 1.000000e+00
  %744 = and i1 %743, %742
  br i1 %744, label %745, label %890, !dx.controlflow.hints !46

; <label>:745                                     ; preds = %721
  %746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %747 = extractvalue %dx.types.CBufRet.f32 %746, 2
  %748 = extractvalue %dx.types.CBufRet.f32 %746, 3
  %749 = fmul fast float %747, %391
  %750 = fmul fast float %748, %392
  %751 = call float @dx.op.unary.f32(i32 27, float %749)  ; Round_ni(value)
  %752 = call float @dx.op.unary.f32(i32 27, float %750)  ; Round_ni(value)
  %753 = fptosi float %751 to i32
  %754 = fptosi float %752 to i32
  %755 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %13, i32 0, i32 %753, i32 %754, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %756 = extractvalue %dx.types.ResRet.i32 %755, 0
  %757 = and i32 %756, 65535
  %758 = lshr i32 %756, 16
  %759 = icmp eq i32 %757, 65535
  br i1 %759, label %796, label %760, !dx.controlflow.hints !47

; <label>:760                                     ; preds = %745
  %761 = extractvalue %dx.types.CBufRet.f32 %734, 1
  %762 = extractvalue %dx.types.CBufRet.f32 %746, 0
  %763 = extractvalue %dx.types.CBufRet.f32 %746, 1
  %764 = fmul fast float %762, %391
  %765 = fmul fast float %763, %392
  %766 = fmul fast float %764, 1.250000e-01
  %767 = fmul fast float %765, 1.250000e-01
  %768 = call float @dx.op.unary.f32(i32 27, float %766)  ; Round_ni(value)
  %769 = call float @dx.op.unary.f32(i32 27, float %767)  ; Round_ni(value)
  %770 = fmul fast float %768, 8.000000e+00
  %771 = fmul fast float %769, 8.000000e+00
  %772 = and i32 %756, 255
  %773 = lshr i32 %756, 8
  %774 = and i32 %773, 255
  %775 = mul nuw nsw i32 %772, 9
  %776 = uitofp i32 %775 to float
  %777 = mul nuw nsw i32 %774, 9
  %778 = uitofp i32 %777 to float
  %779 = fadd fast float %776, 5.000000e-01
  %780 = fadd fast float %779, %764
  %781 = fsub fast float %780, %770
  %782 = fadd fast float %778, 5.000000e-01
  %783 = fadd fast float %782, %765
  %784 = fsub fast float %783, %771
  %785 = fdiv fast float %781, %735
  %786 = fdiv fast float %784, %761
  %787 = fmul fast float %419, 4.375000e-01
  %788 = fadd fast float %787, 3.125000e-02
  %789 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %19, float %785, float %786, float %788, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %790 = extractvalue %dx.types.ResRet.f32 %789, 0
  %791 = extractvalue %dx.types.ResRet.f32 %789, 1
  %792 = extractvalue %dx.types.ResRet.f32 %789, 2
  %793 = fadd fast float %790, %731
  %794 = fadd fast float %791, %732
  %795 = fadd fast float %792, %733
  br label %796

; <label>:796                                     ; preds = %760, %745
  %797 = phi float [ %795, %760 ], [ %733, %745 ]
  %798 = phi float [ %794, %760 ], [ %732, %745 ]
  %799 = phi float [ %793, %760 ], [ %731, %745 ]
  %800 = icmp eq i32 %758, 65535
  br i1 %800, label %890, label %801, !dx.controlflow.hints !48

; <label>:801                                     ; preds = %796
  %802 = extractvalue %dx.types.CBufRet.f32 %734, 1
  %803 = extractvalue %dx.types.CBufRet.f32 %746, 0
  %804 = extractvalue %dx.types.CBufRet.f32 %746, 1
  %805 = fmul fast float %803, %391
  %806 = fmul fast float %804, %392
  %807 = fmul fast float %805, 1.250000e-01
  %808 = fmul fast float %806, 1.250000e-01
  %809 = call float @dx.op.unary.f32(i32 27, float %807)  ; Round_ni(value)
  %810 = call float @dx.op.unary.f32(i32 27, float %808)  ; Round_ni(value)
  %811 = fmul fast float %809, 8.000000e+00
  %812 = fmul fast float %810, 8.000000e+00
  %813 = fsub fast float %805, %811
  %814 = fsub fast float %806, %812
  %815 = fadd fast float %813, 5.000000e-01
  %816 = fadd fast float %814, 5.000000e-01
  %817 = and i32 %758, 255
  %818 = lshr i32 %756, 24
  %819 = mul nuw nsw i32 %817, 9
  %820 = uitofp i32 %819 to float
  %821 = mul nuw nsw i32 %818, 9
  %822 = uitofp i32 %821 to float
  %823 = fadd fast float %815, %820
  %824 = fadd fast float %816, %822
  %825 = fdiv fast float %823, %735
  %826 = fdiv fast float %824, %802
  %827 = fmul fast float %419, 4.375000e-01
  %828 = fadd fast float %827, 3.125000e-02
  %829 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %19, float %825, float %826, float %828, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %830 = extractvalue %dx.types.ResRet.f32 %829, 0
  %831 = extractvalue %dx.types.ResRet.f32 %829, 1
  %832 = extractvalue %dx.types.ResRet.f32 %829, 2
  %833 = fadd fast float %827, 5.312500e-01
  %834 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %19, float %825, float %826, float %833, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %835 = extractvalue %dx.types.ResRet.f32 %834, 0
  %836 = extractvalue %dx.types.ResRet.f32 %834, 1
  %837 = extractvalue %dx.types.ResRet.f32 %834, 2
  %838 = fmul fast float %835, 2.000000e+00
  %839 = fmul fast float %836, 2.000000e+00
  %840 = fmul fast float %837, 2.000000e+00
  %841 = fadd fast float %838, -1.000000e+00
  %842 = fadd fast float %839, -1.000000e+00
  %843 = fadd fast float %840, -1.000000e+00
  %844 = fmul fast float %841, %841
  %845 = fmul fast float %842, %842
  %846 = fadd fast float %844, %845
  %847 = fmul fast float %843, %843
  %848 = fadd fast float %846, %847
  %849 = call float @dx.op.unary.f32(i32 24, float %848)  ; Sqrt(value)
  %850 = fcmp fast ogt float %849, 0.000000e+00
  br i1 %850, label %851, label %855, !dx.controlflow.hints !49

; <label>:851                                     ; preds = %801
  %852 = fdiv fast float %841, %849
  %853 = fdiv fast float %842, %849
  %854 = fdiv fast float %843, %849
  br label %855

; <label>:855                                     ; preds = %851, %801
  %856 = phi float [ %852, %851 ], [ 0.000000e+00, %801 ]
  %857 = phi float [ %853, %851 ], [ 0.000000e+00, %801 ]
  %858 = phi float [ %854, %851 ], [ 0.000000e+00, %801 ]
  %859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %860 = extractvalue %dx.types.CBufRet.f32 %859, 0
  %861 = extractvalue %dx.types.CBufRet.f32 %859, 1
  %862 = fsub fast float %181, %860
  %863 = fsub fast float %186, %861
  %864 = fmul fast float %862, %862
  %865 = fmul fast float %863, %863
  %866 = fadd fast float %864, %865
  %867 = call float @dx.op.unary.f32(i32 24, float %866)  ; Sqrt(value)
  %868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %869 = extractvalue %dx.types.CBufRet.f32 %868, 0
  %870 = extractvalue %dx.types.CBufRet.f32 %868, 1
  %871 = fsub fast float %867, %869
  %872 = fdiv fast float %871, %870
  %873 = call float @dx.op.unary.f32(i32 7, float %872)  ; Saturate(value)
  %874 = fmul fast float %873, 2.000000e+00
  %875 = fsub fast float 3.000000e+00, %874
  %876 = fmul fast float %873, %873
  %877 = fmul fast float %876, %875
  %878 = call float @dx.op.dot3.f32(i32 55, float %856, float %857, float %858, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %879 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %878)  ; FMax(a,b)
  %880 = fmul fast float %879, 0x400C5BF8A0000000
  %881 = fmul fast float %877, %830
  %882 = fmul fast float %881, %880
  %883 = fadd fast float %882, %799
  %884 = fmul fast float %877, %831
  %885 = fmul fast float %884, %880
  %886 = fadd fast float %885, %798
  %887 = fmul fast float %877, %832
  %888 = fmul fast float %887, %880
  %889 = fadd fast float %888, %797
  br label %890

; <label>:890                                     ; preds = %855, %796, %721
  %891 = phi float [ %889, %855 ], [ %797, %796 ], [ %733, %721 ]
  %892 = phi float [ %886, %855 ], [ %798, %796 ], [ %732, %721 ]
  %893 = phi float [ %883, %855 ], [ %799, %796 ], [ %731, %721 ]
  %894 = fcmp fast ogt float %191, %415
  %895 = and i1 %737, %894
  %896 = and i1 %739, %895
  %897 = and i1 %741, %896
  %898 = and i1 %743, %897
  br i1 %898, label %899, label %956, !dx.controlflow.hints !50

; <label>:899                                     ; preds = %890
  %900 = fmul fast float %417, 0x3FC24924A0000000
  %901 = fsub fast float %191, %415
  %902 = fdiv fast float %901, %900
  %903 = call float @dx.op.unary.f32(i32 7, float %902)  ; Saturate(value)
  %904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %905 = extractvalue %dx.types.CBufRet.f32 %904, 0
  %906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %907 = extractvalue %dx.types.CBufRet.f32 %906, 0
  %908 = extractvalue %dx.types.CBufRet.f32 %906, 1
  %909 = extractvalue %dx.types.CBufRet.f32 %906, 2
  %910 = fsub fast float %905, %893
  %911 = fsub fast float %907, %728
  %912 = fsub fast float %908, %729
  %913 = fsub fast float %909, %730
  %914 = fmul fast float %910, %903
  %915 = fmul fast float %911, %903
  %916 = fmul fast float %912, %903
  %917 = fmul fast float %913, %903
  %918 = fadd fast float %914, %893
  %919 = fadd fast float %915, %728
  %920 = fadd fast float %916, %729
  %921 = fadd fast float %917, %730
  %922 = extractvalue %dx.types.CBufRet.f32 %904, 1
  %923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %924 = extractvalue %dx.types.CBufRet.f32 %923, 0
  %925 = extractvalue %dx.types.CBufRet.f32 %923, 1
  %926 = extractvalue %dx.types.CBufRet.f32 %923, 2
  %927 = fsub fast float %922, %892
  %928 = fsub fast float %924, %725
  %929 = fsub fast float %925, %726
  %930 = fsub fast float %926, %727
  %931 = fmul fast float %927, %903
  %932 = fmul fast float %928, %903
  %933 = fmul fast float %929, %903
  %934 = fmul fast float %930, %903
  %935 = fadd fast float %931, %892
  %936 = fadd fast float %932, %725
  %937 = fadd fast float %933, %726
  %938 = fadd fast float %934, %727
  %939 = extractvalue %dx.types.CBufRet.f32 %904, 2
  %940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %941 = extractvalue %dx.types.CBufRet.f32 %940, 0
  %942 = extractvalue %dx.types.CBufRet.f32 %940, 1
  %943 = extractvalue %dx.types.CBufRet.f32 %940, 2
  %944 = fsub fast float %939, %891
  %945 = fsub fast float %941, %722
  %946 = fsub fast float %942, %723
  %947 = fsub fast float %943, %724
  %948 = fmul fast float %944, %903
  %949 = fmul fast float %945, %903
  %950 = fmul fast float %946, %903
  %951 = fmul fast float %947, %903
  %952 = fadd fast float %948, %891
  %953 = fadd fast float %949, %722
  %954 = fadd fast float %950, %723
  %955 = fadd fast float %951, %724
  br label %956

; <label>:956                                     ; preds = %899, %890
  %957 = phi float [ %952, %899 ], [ %891, %890 ]
  %958 = phi float [ %953, %899 ], [ %722, %890 ]
  %959 = phi float [ %954, %899 ], [ %723, %890 ]
  %960 = phi float [ %955, %899 ], [ %724, %890 ]
  %961 = phi float [ %935, %899 ], [ %892, %890 ]
  %962 = phi float [ %936, %899 ], [ %725, %890 ]
  %963 = phi float [ %937, %899 ], [ %726, %890 ]
  %964 = phi float [ %938, %899 ], [ %727, %890 ]
  %965 = phi float [ %918, %899 ], [ %893, %890 ]
  %966 = phi float [ %919, %899 ], [ %728, %890 ]
  %967 = phi float [ %920, %899 ], [ %729, %890 ]
  %968 = phi float [ %921, %899 ], [ %730, %890 ]
  %969 = extractvalue %dx.types.CBufRet.f32 %540, 3
  %970 = fmul fast float %969, %965
  %971 = fmul fast float %969, %961
  %972 = fmul fast float %969, %957
  %973 = fmul fast float %966, 1.500000e+00
  %974 = fmul fast float %973, %969
  %975 = fmul fast float %967, 1.500000e+00
  %976 = fmul fast float %975, %969
  %977 = fmul fast float %968, 1.500000e+00
  %978 = fmul fast float %977, %969
  %979 = fmul fast float %962, 1.500000e+00
  %980 = fmul fast float %979, %969
  %981 = fmul fast float %963, 1.500000e+00
  %982 = fmul fast float %981, %969
  %983 = fmul fast float %964, 1.500000e+00
  %984 = fmul fast float %983, %969
  %985 = fmul fast float %958, 1.500000e+00
  %986 = fmul fast float %985, %969
  %987 = fmul fast float %959, 1.500000e+00
  %988 = fmul fast float %987, %969
  %989 = fmul fast float %960, 1.500000e+00
  %990 = fmul fast float %989, %969
  %991 = fmul fast float %970, %338
  %992 = fmul fast float %974, %338
  %993 = fmul fast float %976, %338
  %994 = fmul fast float %978, %338
  %995 = fmul fast float %971, %338
  %996 = fmul fast float %980, %338
  %997 = fmul fast float %982, %338
  %998 = fmul fast float %984, %338
  %999 = fmul fast float %972, %338
  %1000 = fmul fast float %986, %338
  %1001 = fmul fast float %988, %338
  %1002 = fmul fast float %990, %338
  %1003 = fsub fast float %325, %970
  %1004 = fadd fast float %1003, %991
  %1005 = fsub fast float %326, %974
  %1006 = fadd fast float %1005, %992
  %1007 = fsub fast float %327, %976
  %1008 = fadd fast float %1007, %993
  %1009 = fsub fast float %328, %978
  %1010 = fadd fast float %1009, %994
  %1011 = fmul fast float %1004, %378
  %1012 = fmul fast float %1006, %378
  %1013 = fmul fast float %1008, %378
  %1014 = fmul fast float %1010, %378
  %1015 = fadd fast float %1011, %970
  %1016 = fadd fast float %1012, %974
  %1017 = fadd fast float %1013, %976
  %1018 = fadd fast float %1014, %978
  %1019 = fsub fast float %329, %971
  %1020 = fadd fast float %1019, %995
  %1021 = fsub fast float %330, %980
  %1022 = fadd fast float %1021, %996
  %1023 = fsub fast float %331, %982
  %1024 = fadd fast float %1023, %997
  %1025 = fsub fast float %332, %984
  %1026 = fadd fast float %1025, %998
  %1027 = fmul fast float %1020, %378
  %1028 = fmul fast float %1022, %378
  %1029 = fmul fast float %1024, %378
  %1030 = fmul fast float %1026, %378
  %1031 = fadd fast float %1027, %971
  %1032 = fadd fast float %1028, %980
  %1033 = fadd fast float %1029, %982
  %1034 = fadd fast float %1030, %984
  %1035 = fsub fast float %333, %972
  %1036 = fadd fast float %1035, %999
  %1037 = fsub fast float %334, %986
  %1038 = fadd fast float %1037, %1000
  %1039 = fsub fast float %335, %988
  %1040 = fadd fast float %1039, %1001
  %1041 = fsub fast float %336, %990
  %1042 = fadd fast float %1041, %1002
  %1043 = fmul fast float %1036, %378
  %1044 = fmul fast float %1038, %378
  %1045 = fmul fast float %1040, %378
  %1046 = fmul fast float %1042, %378
  %1047 = fadd fast float %1043, %972
  %1048 = fadd fast float %1044, %986
  %1049 = fadd fast float %1045, %988
  %1050 = fadd fast float %1046, %990
  br label %1051

; <label>:1051                                    ; preds = %956, %377
  %1052 = phi float [ %1015, %956 ], [ %325, %377 ]
  %1053 = phi float [ %1016, %956 ], [ %326, %377 ]
  %1054 = phi float [ %1017, %956 ], [ %327, %377 ]
  %1055 = phi float [ %1018, %956 ], [ %328, %377 ]
  %1056 = phi float [ %1031, %956 ], [ %329, %377 ]
  %1057 = phi float [ %1032, %956 ], [ %330, %377 ]
  %1058 = phi float [ %1033, %956 ], [ %331, %377 ]
  %1059 = phi float [ %1034, %956 ], [ %332, %377 ]
  %1060 = phi float [ %1047, %956 ], [ %333, %377 ]
  %1061 = phi float [ %1048, %956 ], [ %334, %377 ]
  %1062 = phi float [ %1049, %956 ], [ %335, %377 ]
  %1063 = phi float [ %1050, %956 ], [ %336, %377 ]
  %1064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1065 = extractvalue %dx.types.CBufRet.f32 %1064, 0
  %1066 = extractvalue %dx.types.CBufRet.f32 %1064, 1
  %1067 = extractvalue %dx.types.CBufRet.f32 %1064, 2
  %1068 = fsub fast float %181, %1065
  %1069 = fsub fast float %186, %1066
  %1070 = fsub fast float %191, %1067
  %1071 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1072 = extractvalue %dx.types.CBufRet.i32 %1071, 2
  %1073 = icmp eq i32 %1072, 0
  br i1 %1073, label %1289, label %1074

; <label>:1074                                    ; preds = %1051
  br label %1075

; <label>:1075                                    ; preds = %1270, %1074
  %1076 = phi float [ %1271, %1270 ], [ 0.000000e+00, %1074 ]
  %1077 = phi float [ %1272, %1270 ], [ 0.000000e+00, %1074 ]
  %1078 = phi float [ %1273, %1270 ], [ 0.000000e+00, %1074 ]
  %1079 = phi float [ %1274, %1270 ], [ 0.000000e+00, %1074 ]
  %1080 = phi float [ %1275, %1270 ], [ 0.000000e+00, %1074 ]
  %1081 = phi float [ %1276, %1270 ], [ 0.000000e+00, %1074 ]
  %1082 = phi float [ %1277, %1270 ], [ 0.000000e+00, %1074 ]
  %1083 = phi float [ %1278, %1270 ], [ 0.000000e+00, %1074 ]
  %1084 = phi float [ %1279, %1270 ], [ 0.000000e+00, %1074 ]
  %1085 = phi float [ %1280, %1270 ], [ 0.000000e+00, %1074 ]
  %1086 = phi float [ %1281, %1270 ], [ 0.000000e+00, %1074 ]
  %1087 = phi float [ %1282, %1270 ], [ 0.000000e+00, %1074 ]
  %1088 = phi float [ %1283, %1270 ], [ 1.000000e+00, %1074 ]
  %1089 = phi i32 [ %1284, %1270 ], [ 0, %1074 ]
  %1090 = shl i32 %1089, 2
  %1091 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1090, i32 undef)  ; BufferLoad(srv,index,wot)
  %1092 = extractvalue %dx.types.ResRet.i32 %1091, 0
  %1093 = icmp ne i32 %1092, 0
  %1094 = fcmp fast ogt float %1088, 0.000000e+00
  %1095 = and i1 %1094, %1093
  br i1 %1095, label %1096, label %1270

; <label>:1096                                    ; preds = %1075
  br label %1097

; <label>:1097                                    ; preds = %1252, %1096
  %1098 = phi float [ %1253, %1252 ], [ %1076, %1096 ]
  %1099 = phi float [ %1254, %1252 ], [ %1077, %1096 ]
  %1100 = phi float [ %1255, %1252 ], [ %1078, %1096 ]
  %1101 = phi float [ %1256, %1252 ], [ %1079, %1096 ]
  %1102 = phi float [ %1257, %1252 ], [ %1080, %1096 ]
  %1103 = phi float [ %1258, %1252 ], [ %1081, %1096 ]
  %1104 = phi float [ %1259, %1252 ], [ %1082, %1096 ]
  %1105 = phi float [ %1260, %1252 ], [ %1083, %1096 ]
  %1106 = phi float [ %1261, %1252 ], [ %1084, %1096 ]
  %1107 = phi float [ %1262, %1252 ], [ %1085, %1096 ]
  %1108 = phi float [ %1263, %1252 ], [ %1086, %1096 ]
  %1109 = phi float [ %1264, %1252 ], [ %1087, %1096 ]
  %1110 = phi float [ %1265, %1252 ], [ %1088, %1096 ]
  %1111 = phi i32 [ %1115, %1252 ], [ %1092, %1096 ]
  %1112 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1111)  ; FirstbitLo(value)
  %1113 = and i32 %1112, 31
  %1114 = shl i32 1, %1113
  %1115 = xor i32 %1114, %1111
  %1116 = shl i32 %1089, 5
  %1117 = add i32 %1112, %1116
  %1118 = mul i32 %1117, 72
  %1119 = add i32 %1118, 12
  %1120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %1119, i32 undef)  ; BufferLoad(srv,index,wot)
  %1121 = extractvalue %dx.types.ResRet.i32 %1120, 0
  %1122 = add i32 %1118, 16
  %1123 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1122, i32 undef)  ; BufferLoad(srv,index,wot)
  %1124 = extractvalue %dx.types.ResRet.f32 %1123, 0
  %1125 = extractvalue %dx.types.ResRet.f32 %1123, 1
  %1126 = extractvalue %dx.types.ResRet.f32 %1123, 2
  %1127 = mul i32 %1117, 60
  %1128 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1127, i32 undef)  ; BufferLoad(srv,index,wot)
  %1129 = extractvalue %dx.types.ResRet.f32 %1128, 0
  %1130 = extractvalue %dx.types.ResRet.f32 %1128, 1
  %1131 = extractvalue %dx.types.ResRet.f32 %1128, 2
  %1132 = add i32 %1127, 12
  %1133 = add i32 %1127, 48
  %1134 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1133, i32 undef)  ; BufferLoad(srv,index,wot)
  %1135 = extractvalue %dx.types.ResRet.f32 %1134, 0
  %1136 = extractvalue %dx.types.ResRet.f32 %1134, 1
  %1137 = extractvalue %dx.types.ResRet.f32 %1134, 2
  %1138 = and i32 %1121, 32767
  %1139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1140 = extractvalue %dx.types.CBufRet.f32 %1139, 0
  %1141 = extractvalue %dx.types.CBufRet.f32 %1139, 1
  %1142 = extractvalue %dx.types.CBufRet.f32 %1139, 2
  %1143 = fsub fast float %1129, %1140
  %1144 = fsub fast float %1130, %1141
  %1145 = fsub fast float %1131, %1142
  %1146 = fsub fast float %1068, %1143
  %1147 = fsub fast float %1069, %1144
  %1148 = fsub fast float %1070, %1145
  %1149 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1132, i32 undef)  ; BufferLoad(srv,index,wot)
  %1150 = extractvalue %dx.types.ResRet.f32 %1149, 0
  %1151 = extractvalue %dx.types.ResRet.f32 %1149, 1
  %1152 = extractvalue %dx.types.ResRet.f32 %1149, 2
  %1153 = call float @dx.op.dot3.f32(i32 55, float %1146, float %1147, float %1148, float %1150, float %1151, float %1152)  ; Dot3(ax,ay,az,bx,by,bz)
  %1154 = add i32 %1127, 24
  %1155 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1154, i32 undef)  ; BufferLoad(srv,index,wot)
  %1156 = extractvalue %dx.types.ResRet.f32 %1155, 0
  %1157 = extractvalue %dx.types.ResRet.f32 %1155, 1
  %1158 = extractvalue %dx.types.ResRet.f32 %1155, 2
  %1159 = call float @dx.op.dot3.f32(i32 55, float %1146, float %1147, float %1148, float %1156, float %1157, float %1158)  ; Dot3(ax,ay,az,bx,by,bz)
  %1160 = add i32 %1127, 36
  %1161 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1160, i32 undef)  ; BufferLoad(srv,index,wot)
  %1162 = extractvalue %dx.types.ResRet.f32 %1161, 0
  %1163 = extractvalue %dx.types.ResRet.f32 %1161, 1
  %1164 = extractvalue %dx.types.ResRet.f32 %1161, 2
  %1165 = call float @dx.op.dot3.f32(i32 55, float %1146, float %1147, float %1148, float %1162, float %1163, float %1164)  ; Dot3(ax,ay,az,bx,by,bz)
  %1166 = call float @dx.op.unary.f32(i32 6, float %1153)  ; FAbs(value)
  %1167 = call float @dx.op.unary.f32(i32 6, float %1159)  ; FAbs(value)
  %1168 = call float @dx.op.unary.f32(i32 6, float %1165)  ; FAbs(value)
  %1169 = fsub fast float %1135, %1166
  %1170 = fsub fast float %1136, %1167
  %1171 = fsub fast float %1137, %1168
  %1172 = fmul fast float %1169, %1124
  %1173 = fmul fast float %1170, %1125
  %1174 = fmul fast float %1171, %1126
  %1175 = call float @dx.op.binary.f32(i32 36, float %1173, float %1174)  ; FMin(a,b)
  %1176 = call float @dx.op.binary.f32(i32 36, float %1172, float %1175)  ; FMin(a,b)
  %1177 = call float @dx.op.unary.f32(i32 7, float %1176)  ; Saturate(value)
  %1178 = call float @dx.op.binary.f32(i32 36, float %1110, float %1177)  ; FMin(a,b)
  %1179 = fcmp fast ogt float %1178, 0.000000e+00
  br i1 %1179, label %1180, label %1252, !dx.controlflow.hints !51

; <label>:1180                                    ; preds = %1097
  %1181 = lshr i32 %1121, 16
  %1182 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1181)  ; LegacyF16ToF32(value)
  %1183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 141)  ; CBufferLoadLegacy(handle,regIndex)
  %1184 = extractvalue %dx.types.CBufRet.f32 %1183, 3
  %1185 = bitcast float %1184 to i32
  %1186 = add i32 %1185, %1138
  %1187 = mul i32 %1186, 36
  %1188 = shl i32 %1185, 1
  %1189 = add i32 %1188, %1138
  %1190 = mul i32 %1189, 36
  %1191 = mul i32 %1185, 3
  %1192 = add i32 %1191, %1138
  %1193 = mul i32 %1192, 36
  %1194 = fmul fast float %1182, %1178
  %1195 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1187, i32 undef)  ; BufferLoad(srv,index,wot)
  %1196 = extractvalue %dx.types.ResRet.f32 %1195, 0
  %1197 = fmul fast float %1196, %1194
  %1198 = fadd fast float %1197, %1105
  %1199 = add i32 %1187, 4
  %1200 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1199, i32 undef)  ; BufferLoad(srv,index,wot)
  %1201 = extractvalue %dx.types.ResRet.f32 %1200, 0
  %1202 = fmul fast float %1201, %1194
  %1203 = fadd fast float %1202, %1104
  %1204 = add i32 %1187, 8
  %1205 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1204, i32 undef)  ; BufferLoad(srv,index,wot)
  %1206 = extractvalue %dx.types.ResRet.f32 %1205, 0
  %1207 = fmul fast float %1206, %1194
  %1208 = fadd fast float %1207, %1103
  %1209 = add i32 %1187, 12
  %1210 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1209, i32 undef)  ; BufferLoad(srv,index,wot)
  %1211 = extractvalue %dx.types.ResRet.f32 %1210, 0
  %1212 = fmul fast float %1211, %1194
  %1213 = fadd fast float %1212, %1102
  %1214 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1190, i32 undef)  ; BufferLoad(srv,index,wot)
  %1215 = extractvalue %dx.types.ResRet.f32 %1214, 0
  %1216 = fmul fast float %1215, %1194
  %1217 = fadd fast float %1216, %1101
  %1218 = add i32 %1190, 4
  %1219 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1218, i32 undef)  ; BufferLoad(srv,index,wot)
  %1220 = extractvalue %dx.types.ResRet.f32 %1219, 0
  %1221 = fmul fast float %1220, %1194
  %1222 = fadd fast float %1221, %1100
  %1223 = add i32 %1190, 8
  %1224 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1223, i32 undef)  ; BufferLoad(srv,index,wot)
  %1225 = extractvalue %dx.types.ResRet.f32 %1224, 0
  %1226 = fmul fast float %1225, %1194
  %1227 = fadd fast float %1226, %1099
  %1228 = add i32 %1190, 12
  %1229 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1228, i32 undef)  ; BufferLoad(srv,index,wot)
  %1230 = extractvalue %dx.types.ResRet.f32 %1229, 0
  %1231 = fmul fast float %1230, %1194
  %1232 = fadd fast float %1231, %1098
  %1233 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1193, i32 undef)  ; BufferLoad(srv,index,wot)
  %1234 = extractvalue %dx.types.ResRet.f32 %1233, 0
  %1235 = fmul fast float %1234, %1194
  %1236 = fadd fast float %1235, %1109
  %1237 = add i32 %1193, 4
  %1238 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1237, i32 undef)  ; BufferLoad(srv,index,wot)
  %1239 = extractvalue %dx.types.ResRet.f32 %1238, 0
  %1240 = fmul fast float %1239, %1194
  %1241 = fadd fast float %1240, %1108
  %1242 = add i32 %1193, 8
  %1243 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1242, i32 undef)  ; BufferLoad(srv,index,wot)
  %1244 = extractvalue %dx.types.ResRet.f32 %1243, 0
  %1245 = fmul fast float %1244, %1194
  %1246 = fadd fast float %1245, %1107
  %1247 = add i32 %1193, 12
  %1248 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1247, i32 undef)  ; BufferLoad(srv,index,wot)
  %1249 = extractvalue %dx.types.ResRet.f32 %1248, 0
  %1250 = fmul fast float %1249, %1194
  %1251 = fadd fast float %1250, %1106
  br label %1252

; <label>:1252                                    ; preds = %1180, %1097
  %1253 = phi float [ %1232, %1180 ], [ %1098, %1097 ]
  %1254 = phi float [ %1227, %1180 ], [ %1099, %1097 ]
  %1255 = phi float [ %1222, %1180 ], [ %1100, %1097 ]
  %1256 = phi float [ %1217, %1180 ], [ %1101, %1097 ]
  %1257 = phi float [ %1213, %1180 ], [ %1102, %1097 ]
  %1258 = phi float [ %1208, %1180 ], [ %1103, %1097 ]
  %1259 = phi float [ %1203, %1180 ], [ %1104, %1097 ]
  %1260 = phi float [ %1198, %1180 ], [ %1105, %1097 ]
  %1261 = phi float [ %1251, %1180 ], [ %1106, %1097 ]
  %1262 = phi float [ %1246, %1180 ], [ %1107, %1097 ]
  %1263 = phi float [ %1241, %1180 ], [ %1108, %1097 ]
  %1264 = phi float [ %1236, %1180 ], [ %1109, %1097 ]
  %1265 = fsub fast float %1110, %1178
  %1266 = icmp ne i32 %1111, %1114
  %1267 = fcmp fast ogt float %1265, 0.000000e+00
  %1268 = and i1 %1266, %1267
  br i1 %1268, label %1097, label %1269

; <label>:1269                                    ; preds = %1252
  br label %1270

; <label>:1270                                    ; preds = %1269, %1075
  %1271 = phi float [ %1076, %1075 ], [ %1253, %1269 ]
  %1272 = phi float [ %1077, %1075 ], [ %1254, %1269 ]
  %1273 = phi float [ %1078, %1075 ], [ %1255, %1269 ]
  %1274 = phi float [ %1079, %1075 ], [ %1256, %1269 ]
  %1275 = phi float [ %1080, %1075 ], [ %1257, %1269 ]
  %1276 = phi float [ %1081, %1075 ], [ %1258, %1269 ]
  %1277 = phi float [ %1082, %1075 ], [ %1259, %1269 ]
  %1278 = phi float [ %1083, %1075 ], [ %1260, %1269 ]
  %1279 = phi float [ %1084, %1075 ], [ %1261, %1269 ]
  %1280 = phi float [ %1085, %1075 ], [ %1262, %1269 ]
  %1281 = phi float [ %1086, %1075 ], [ %1263, %1269 ]
  %1282 = phi float [ %1087, %1075 ], [ %1264, %1269 ]
  %1283 = phi float [ %1088, %1075 ], [ %1265, %1269 ]
  %1284 = add i32 %1089, 1
  %1285 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1286 = extractvalue %dx.types.CBufRet.i32 %1285, 2
  %1287 = icmp ult i32 %1284, %1286
  br i1 %1287, label %1075, label %1288

; <label>:1288                                    ; preds = %1270
  br label %1289

; <label>:1289                                    ; preds = %1288, %1051
  %1290 = phi float [ 0.000000e+00, %1051 ], [ %1271, %1288 ]
  %1291 = phi float [ 0.000000e+00, %1051 ], [ %1272, %1288 ]
  %1292 = phi float [ 0.000000e+00, %1051 ], [ %1273, %1288 ]
  %1293 = phi float [ 0.000000e+00, %1051 ], [ %1274, %1288 ]
  %1294 = phi float [ 0.000000e+00, %1051 ], [ %1275, %1288 ]
  %1295 = phi float [ 0.000000e+00, %1051 ], [ %1276, %1288 ]
  %1296 = phi float [ 0.000000e+00, %1051 ], [ %1277, %1288 ]
  %1297 = phi float [ 0.000000e+00, %1051 ], [ %1278, %1288 ]
  %1298 = phi float [ 0.000000e+00, %1051 ], [ %1279, %1288 ]
  %1299 = phi float [ 0.000000e+00, %1051 ], [ %1280, %1288 ]
  %1300 = phi float [ 0.000000e+00, %1051 ], [ %1281, %1288 ]
  %1301 = phi float [ 0.000000e+00, %1051 ], [ %1282, %1288 ]
  %1302 = phi float [ 1.000000e+00, %1051 ], [ %1283, %1288 ]
  %1303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1304 = extractvalue %dx.types.CBufRet.f32 %1303, 3
  %1305 = fdiv fast float 1.000000e+00, %1304
  %1306 = fmul fast float %1305, %1297
  %1307 = fmul fast float %1305, %1296
  %1308 = fmul fast float %1305, %1295
  %1309 = fmul fast float %1305, %1294
  %1310 = fmul fast float %1305, %1293
  %1311 = fmul fast float %1305, %1292
  %1312 = fmul fast float %1305, %1291
  %1313 = fmul fast float %1305, %1290
  %1314 = fmul fast float %1305, %1301
  %1315 = fmul fast float %1305, %1300
  %1316 = fmul fast float %1305, %1299
  %1317 = fmul fast float %1305, %1298
  %1318 = fmul fast float %1302, %1052
  %1319 = fmul fast float %1302, %1053
  %1320 = fmul fast float %1302, %1054
  %1321 = fmul fast float %1302, %1055
  %1322 = fadd fast float %1306, %1318
  %1323 = fadd fast float %1307, %1319
  %1324 = fadd fast float %1308, %1320
  %1325 = fadd fast float %1309, %1321
  %1326 = fmul fast float %1302, %1056
  %1327 = fmul fast float %1302, %1057
  %1328 = fmul fast float %1302, %1058
  %1329 = fmul fast float %1302, %1059
  %1330 = fadd fast float %1310, %1326
  %1331 = fadd fast float %1311, %1327
  %1332 = fadd fast float %1312, %1328
  %1333 = fadd fast float %1313, %1329
  %1334 = fmul fast float %1302, %1060
  %1335 = fmul fast float %1302, %1061
  %1336 = fmul fast float %1302, %1062
  %1337 = fmul fast float %1302, %1063
  %1338 = fadd fast float %1314, %1334
  %1339 = fadd fast float %1315, %1335
  %1340 = fadd fast float %1316, %1336
  %1341 = fadd fast float %1317, %1337
  %1342 = fmul fast float %1322, %1304
  %1343 = fmul fast float %1323, %1304
  %1344 = fmul fast float %1324, %1304
  %1345 = fmul fast float %1325, %1304
  %1346 = extractvalue %dx.types.CBufRet.f32 %1303, 0
  %1347 = fmul fast float %1342, %1346
  %1348 = fmul fast float %1343, %1346
  %1349 = fmul fast float %1344, %1346
  %1350 = fmul fast float %1345, %1346
  %1351 = fmul fast float %1304, %1330
  %1352 = fmul fast float %1304, %1331
  %1353 = fmul fast float %1304, %1332
  %1354 = fmul fast float %1304, %1333
  %1355 = fmul fast float %1351, %1346
  %1356 = fmul fast float %1352, %1346
  %1357 = fmul fast float %1353, %1346
  %1358 = fmul fast float %1354, %1346
  %1359 = fmul fast float %1304, %1338
  %1360 = fmul fast float %1304, %1339
  %1361 = fmul fast float %1304, %1340
  %1362 = fmul fast float %1304, %1341
  %1363 = fmul fast float %1359, %1346
  %1364 = fmul fast float %1360, %1346
  %1365 = fmul fast float %1361, %1346
  %1366 = fmul fast float %1362, %1346
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %159, i32 %160, i32 0, float %1347, float %1348, float %1349, float %1350, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %159, i32 %160, i32 1, float %1355, float %1356, float %1357, float %1358, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %159, i32 %160, i32 2, float %1363, float %1364, float %1365, float %1366, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1367 = add i32 %160, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %159, i32 %1367, i32 0, float %1347, float %1348, float %1349, float %1350, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %159, i32 %1367, i32 1, float %1355, float %1356, float %1357, float %1358, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %159, i32 %1367, i32 2, float %1363, float %1364, float %1365, float %1366, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1368 = add i32 %159, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1368, i32 %160, i32 0, float %1347, float %1348, float %1349, float %1350, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1368, i32 %160, i32 1, float %1355, float %1356, float %1357, float %1358, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1368, i32 %160, i32 2, float %1363, float %1364, float %1365, float %1366, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1368, i32 %1367, i32 0, float %1347, float %1348, float %1349, float %1350, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1368, i32 %1367, i32 1, float %1355, float %1356, float %1357, float %1358, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1368, i32 %1367, i32 2, float %1363, float %1364, float %1365, float %1366, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1369

; <label>:1369                                    ; preds = %1289, %0
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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

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
!27 = !{i32 0, %"class.RWTexture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 7, i1 false, i1 false, i1 false, !7}
!28 = !{!29, !30}
!29 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!30 = !{i32 1, %DeferredEffectLightConsts_decl* undef, !"", i32 0, i32 1, i32 1, i32 240, null}
!31 = !{!32}
!32 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!33 = !{void ()* @cs_del_sh_combine_multilightgrid_reflection_volumes_8_lowres, !"cs_del_sh_combine_multilightgrid_reflection_volumes_8_lowres", null, !4, !34}
!34 = !{i32 0, i64 272, i32 4, !35}
!35 = !{i32 4, i32 4, i32 4}
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

