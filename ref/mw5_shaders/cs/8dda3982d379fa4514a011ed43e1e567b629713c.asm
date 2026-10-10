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
; shader hash: 251df14dd819e5f8a872b07edb8183b5
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

define void @cs_del_sh_combine_multilightgrid_reflection_volumes_1() {
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
  br i1 %30, label %31, label %1364, !dx.controlflow.hints !36

; <label>:31                                      ; preds = %0
  %32 = add i32 %26, 9
  %33 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 %32)  ; CBufferLoadLegacy(handle,regIndex)
  %34 = extractvalue %dx.types.CBufRet.i32 %33, 2
  %35 = add i32 %34, %22
  %36 = shl i32 %35, 5
  %37 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %36, i32 undef)  ; BufferLoad(srv,index,wot)
  %38 = extractvalue %dx.types.ResRet.i32 %37, 0
  %39 = extractvalue %dx.types.ResRet.i32 %37, 1
  %40 = extractvalue %dx.types.ResRet.i32 %37, 2
  %41 = extractvalue %dx.types.ResRet.i32 %37, 3
  %42 = lshr i32 %41, 14
  %43 = and i32 %42, 16383
  %44 = and i32 %41, 16383
  %45 = bitcast i32 %38 to float
  %46 = bitcast i32 %39 to float
  %47 = bitcast i32 %40 to float
  %48 = and i32 %41, 536870912
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %89, label %50, !dx.controlflow.hints !37

; <label>:50                                      ; preds = %31
  %51 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %52 = extractvalue %dx.types.CBufRet.f32 %51, 2
  %53 = extractvalue %dx.types.CBufRet.f32 %51, 3
  %54 = fmul fast float %52, %45
  %55 = fmul fast float %53, %46
  %56 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %57 = extractvalue %dx.types.CBufRet.f32 %56, 0
  %58 = extractvalue %dx.types.CBufRet.f32 %56, 1
  %59 = fadd fast float %54, %57
  %60 = fadd fast float %55, %58
  %61 = call float @dx.op.unary.f32(i32 7, float %59)  ; Saturate(value)
  %62 = call float @dx.op.unary.f32(i32 7, float %60)  ; Saturate(value)
  %63 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %19, float %61, float %62, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %64 = extractvalue %dx.types.ResRet.f32 %63, 0
  %65 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %66 = extractvalue %dx.types.CBufRet.f32 %65, 0
  %67 = fmul fast float %66, %64
  %68 = fsub fast float %59, %61
  %69 = fsub fast float %60, %62
  %70 = extractvalue %dx.types.CBufRet.f32 %51, 0
  %71 = extractvalue %dx.types.CBufRet.f32 %51, 1
  %72 = fmul fast float %70, %68
  %73 = fmul fast float %71, %69
  %74 = fmul fast float %72, %72
  %75 = fmul fast float %73, %73
  %76 = fadd fast float %74, %75
  %77 = call float @dx.op.unary.f32(i32 24, float %76)  ; Sqrt(value)
  %78 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %79 = extractvalue %dx.types.CBufRet.f32 %78, 3
  %80 = fmul fast float %79, %77
  %81 = call float @dx.op.unary.f32(i32 7, float %80)  ; Saturate(value)
  %82 = extractvalue %dx.types.CBufRet.f32 %78, 2
  %83 = fsub fast float %82, %67
  %84 = fmul fast float %83, %81
  %85 = extractvalue %dx.types.CBufRet.f32 %65, 1
  %86 = fadd fast float %67, %47
  %87 = fadd fast float %86, %85
  %88 = fadd fast float %87, %84
  br label %89

; <label>:89                                      ; preds = %50, %31
  %90 = phi float [ %88, %50 ], [ %47, %31 ]
  %91 = or i32 %36, 16
  %92 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %91, i32 undef)  ; BufferLoad(srv,index,wot)
  %93 = extractvalue %dx.types.ResRet.i32 %92, 0
  %94 = extractvalue %dx.types.ResRet.i32 %92, 1
  %95 = extractvalue %dx.types.ResRet.i32 %92, 2
  %96 = extractvalue %dx.types.ResRet.i32 %92, 3
  %97 = and i32 %93, 65535
  %98 = call float @dx.op.legacyF16ToF32(i32 131, i32 %97)  ; LegacyF16ToF32(value)
  %99 = lshr i32 %93, 16
  %100 = call float @dx.op.legacyF16ToF32(i32 131, i32 %99)  ; LegacyF16ToF32(value)
  %101 = and i32 %94, 1023
  %102 = uitofp i32 %101 to float
  %103 = lshr i32 %94, 10
  %104 = and i32 %103, 1023
  %105 = uitofp i32 %104 to float
  %106 = lshr i32 %94, 20
  %107 = and i32 %106, 1023
  %108 = uitofp i32 %107 to float
  %109 = fmul fast float %102, 0x3F60040100000000
  %110 = fmul fast float %105, 0x3F60040100000000
  %111 = fmul fast float %108, 0x3F60040100000000
  %112 = fadd fast float %109, -1.000000e+00
  %113 = fadd fast float %110, -1.000000e+00
  %114 = fadd fast float %111, -1.000000e+00
  %115 = and i32 %95, 1023
  %116 = uitofp i32 %115 to float
  %117 = lshr i32 %95, 10
  %118 = and i32 %117, 1023
  %119 = uitofp i32 %118 to float
  %120 = lshr i32 %95, 20
  %121 = and i32 %120, 1023
  %122 = uitofp i32 %121 to float
  %123 = fmul fast float %116, 0x3F60040100000000
  %124 = fmul fast float %119, 0x3F60040100000000
  %125 = fmul fast float %122, 0x3F60040100000000
  %126 = fadd fast float %123, -1.000000e+00
  %127 = fadd fast float %124, -1.000000e+00
  %128 = fadd fast float %125, -1.000000e+00
  %129 = and i32 %96, 65535
  %130 = call float @dx.op.legacyF16ToF32(i32 131, i32 %129)  ; LegacyF16ToF32(value)
  %131 = call float @dx.op.unary.f32(i32 13, float %130)  ; Sin(value)
  %132 = call float @dx.op.unary.f32(i32 12, float %130)  ; Cos(value)
  %133 = fmul fast float %132, %112
  %134 = fmul fast float %113, %132
  %135 = fmul fast float %114, %132
  %136 = fmul fast float %126, %131
  %137 = fmul fast float %127, %131
  %138 = fmul fast float %128, %131
  %139 = fadd fast float %133, %136
  %140 = fadd fast float %134, %137
  %141 = fadd fast float %135, %138
  %142 = fmul fast float %139, %98
  %143 = fmul fast float %140, %98
  %144 = fmul fast float %141, %98
  %145 = fmul fast float %112, %131
  %146 = fmul fast float %113, %131
  %147 = fmul fast float %114, %131
  %148 = fmul fast float %132, %126
  %149 = fmul fast float %127, %132
  %150 = fmul fast float %128, %132
  %151 = fsub fast float %145, %148
  %152 = fsub fast float %146, %149
  %153 = fsub fast float %147, %150
  %154 = fmul fast float %151, %100
  %155 = fmul fast float %152, %100
  %156 = fmul fast float %153, %100
  %157 = add i32 %43, %23
  %158 = add i32 %44, %24
  %159 = uitofp i32 %23 to float
  %160 = uitofp i32 %24 to float
  %161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %162 = extractvalue %dx.types.CBufRet.f32 %161, 1
  %163 = fdiv fast float %159, %162
  %164 = fdiv fast float %160, %162
  %165 = extractvalue %dx.types.CBufRet.f32 %161, 2
  %166 = fadd fast float %165, %163
  %167 = fadd fast float %165, %164
  %168 = fmul fast float %166, %142
  %169 = fmul fast float %166, %143
  %170 = fmul fast float %166, %144
  %171 = fmul fast float %167, %154
  %172 = fmul fast float %167, %155
  %173 = fmul fast float %167, %156
  %174 = fadd fast float %171, %168
  %175 = fmul fast float %174, 2.000000e+00
  %176 = fsub fast float %45, %142
  %177 = fsub fast float %176, %154
  %178 = fadd fast float %177, %175
  %179 = fadd fast float %172, %169
  %180 = fmul fast float %179, 2.000000e+00
  %181 = fsub fast float %46, %143
  %182 = fsub fast float %181, %155
  %183 = fadd fast float %182, %180
  %184 = fadd fast float %173, %170
  %185 = fmul fast float %184, 2.000000e+00
  %186 = fsub fast float %90, %144
  %187 = fsub fast float %186, %156
  %188 = fadd fast float %187, %185
  %189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %35, i32 0)  ; BufferLoad(srv,index,wot)
  %190 = extractvalue %dx.types.ResRet.i32 %189, 0
  %191 = and i32 %26, 31
  %192 = shl i32 1, %191
  %193 = shl i32 %192, %191
  %194 = shl i32 %24, %191
  %195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %35, i32 0)  ; BufferLoad(srv,index,wot)
  %196 = extractvalue %dx.types.ResRet.i32 %195, 0
  %197 = extractvalue %dx.types.CBufRet.i32 %25, 1
  %198 = icmp ne i32 %197, 0
  %199 = icmp ne i32 %196, 262144
  %200 = and i1 %199, %198
  %201 = icmp ne i32 %190, 0
  %202 = and i1 %201, %200
  br i1 %202, label %203, label %289, !dx.controlflow.hints !38

; <label>:203                                     ; preds = %89
  br label %204

; <label>:204                                     ; preds = %204, %203
  %205 = phi i32 [ %285, %204 ], [ %190, %203 ]
  %206 = phi float [ %283, %204 ], [ 0.000000e+00, %203 ]
  %207 = phi float [ %263, %204 ], [ 0.000000e+00, %203 ]
  %208 = phi float [ %264, %204 ], [ 0.000000e+00, %203 ]
  %209 = phi float [ %265, %204 ], [ 0.000000e+00, %203 ]
  %210 = phi float [ %266, %204 ], [ 0.000000e+00, %203 ]
  %211 = phi float [ %271, %204 ], [ 0.000000e+00, %203 ]
  %212 = phi float [ %272, %204 ], [ 0.000000e+00, %203 ]
  %213 = phi float [ %273, %204 ], [ 0.000000e+00, %203 ]
  %214 = phi float [ %274, %204 ], [ 0.000000e+00, %203 ]
  %215 = phi float [ %279, %204 ], [ 0.000000e+00, %203 ]
  %216 = phi float [ %280, %204 ], [ 0.000000e+00, %203 ]
  %217 = phi float [ %281, %204 ], [ 0.000000e+00, %203 ]
  %218 = phi float [ %282, %204 ], [ 0.000000e+00, %203 ]
  %219 = phi i32 [ %286, %204 ], [ 0, %203 ]
  %220 = mul i32 %219, %193
  %221 = add i32 %194, %23
  %222 = add i32 %221, %196
  %223 = add i32 %222, %220
  %224 = shl i32 %223, 2
  %225 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %224, i32 undef)  ; BufferLoad(srv,index,wot)
  %226 = extractvalue %dx.types.ResRet.f32 %225, 0
  %227 = extractvalue %dx.types.ResRet.f32 %225, 1
  %228 = extractvalue %dx.types.ResRet.f32 %225, 2
  %229 = or i32 %224, 1
  %230 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %229, i32 undef)  ; BufferLoad(srv,index,wot)
  %231 = extractvalue %dx.types.ResRet.f32 %230, 0
  %232 = extractvalue %dx.types.ResRet.f32 %230, 1
  %233 = extractvalue %dx.types.ResRet.f32 %230, 2
  %234 = or i32 %224, 2
  %235 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %234, i32 undef)  ; BufferLoad(srv,index,wot)
  %236 = extractvalue %dx.types.ResRet.f32 %235, 0
  %237 = extractvalue %dx.types.ResRet.f32 %235, 1
  %238 = extractvalue %dx.types.ResRet.f32 %235, 2
  %239 = or i32 %224, 3
  %240 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %239, i32 undef)  ; BufferLoad(srv,index,wot)
  %241 = extractvalue %dx.types.ResRet.f32 %240, 0
  %242 = extractvalue %dx.types.ResRet.f32 %240, 1
  %243 = extractvalue %dx.types.ResRet.f32 %240, 2
  %244 = fmul fast float %226, 0x3FFBB67AE0000000
  %245 = fsub fast float %231, %244
  %246 = fsub fast float %236, %244
  %247 = fsub fast float %241, %244
  %248 = fmul fast float %227, 0x3FFBB67AE0000000
  %249 = fsub fast float %232, %248
  %250 = fsub fast float %237, %248
  %251 = fsub fast float %242, %248
  %252 = fmul fast float %228, 0x3FFBB67AE0000000
  %253 = fsub fast float %233, %252
  %254 = fsub fast float %238, %252
  %255 = fsub fast float %243, %252
  %256 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %223, i32 undef)  ; BufferLoad(srv,index,wot)
  %257 = extractvalue %dx.types.ResRet.f32 %256, 0
  %258 = fmul fast float %257, %257
  %259 = fmul fast float %258, %226
  %260 = fmul fast float %258, %245
  %261 = fmul fast float %258, %246
  %262 = fmul fast float %258, %247
  %263 = fadd fast float %259, %207
  %264 = fadd fast float %260, %208
  %265 = fadd fast float %261, %209
  %266 = fadd fast float %262, %210
  %267 = fmul fast float %258, %227
  %268 = fmul fast float %258, %249
  %269 = fmul fast float %258, %250
  %270 = fmul fast float %258, %251
  %271 = fadd fast float %267, %211
  %272 = fadd fast float %268, %212
  %273 = fadd fast float %269, %213
  %274 = fadd fast float %270, %214
  %275 = fmul fast float %258, %228
  %276 = fmul fast float %258, %253
  %277 = fmul fast float %258, %254
  %278 = fmul fast float %258, %255
  %279 = fadd fast float %275, %215
  %280 = fadd fast float %276, %216
  %281 = fadd fast float %277, %217
  %282 = fadd fast float %278, %218
  %283 = fadd fast float %258, %206
  %284 = add i32 %205, -1
  %285 = and i32 %284, %205
  %286 = add i32 %219, 1
  %287 = icmp eq i32 %285, 0
  br i1 %287, label %288, label %204

; <label>:288                                     ; preds = %204
  br label %289

; <label>:289                                     ; preds = %288, %89
  %290 = phi float [ 0.000000e+00, %89 ], [ %283, %288 ]
  %291 = phi float [ 0.000000e+00, %89 ], [ %263, %288 ]
  %292 = phi float [ 0.000000e+00, %89 ], [ %264, %288 ]
  %293 = phi float [ 0.000000e+00, %89 ], [ %265, %288 ]
  %294 = phi float [ 0.000000e+00, %89 ], [ %266, %288 ]
  %295 = phi float [ 0.000000e+00, %89 ], [ %271, %288 ]
  %296 = phi float [ 0.000000e+00, %89 ], [ %272, %288 ]
  %297 = phi float [ 0.000000e+00, %89 ], [ %273, %288 ]
  %298 = phi float [ 0.000000e+00, %89 ], [ %274, %288 ]
  %299 = phi float [ 0.000000e+00, %89 ], [ %279, %288 ]
  %300 = phi float [ 0.000000e+00, %89 ], [ %280, %288 ]
  %301 = phi float [ 0.000000e+00, %89 ], [ %281, %288 ]
  %302 = phi float [ 0.000000e+00, %89 ], [ %282, %288 ]
  %303 = fcmp fast ogt float %290, 0.000000e+00
  %304 = fcmp fast une float %290, 1.000000e+00
  %305 = and i1 %303, %304
  br i1 %305, label %306, label %320, !dx.controlflow.hints !39

; <label>:306                                     ; preds = %289
  %307 = fdiv fast float 1.000000e+00, %290
  %308 = fmul fast float %307, %291
  %309 = fmul fast float %307, %292
  %310 = fmul fast float %307, %293
  %311 = fmul fast float %307, %294
  %312 = fmul fast float %307, %295
  %313 = fmul fast float %307, %296
  %314 = fmul fast float %307, %297
  %315 = fmul fast float %307, %298
  %316 = fmul fast float %307, %299
  %317 = fmul fast float %307, %300
  %318 = fmul fast float %307, %301
  %319 = fmul fast float %307, %302
  br label %320

; <label>:320                                     ; preds = %306, %289
  %321 = phi float [ 1.000000e+00, %306 ], [ %290, %289 ]
  %322 = phi float [ %308, %306 ], [ %291, %289 ]
  %323 = phi float [ %309, %306 ], [ %292, %289 ]
  %324 = phi float [ %310, %306 ], [ %293, %289 ]
  %325 = phi float [ %311, %306 ], [ %294, %289 ]
  %326 = phi float [ %312, %306 ], [ %295, %289 ]
  %327 = phi float [ %313, %306 ], [ %296, %289 ]
  %328 = phi float [ %314, %306 ], [ %297, %289 ]
  %329 = phi float [ %315, %306 ], [ %298, %289 ]
  %330 = phi float [ %316, %306 ], [ %299, %289 ]
  %331 = phi float [ %317, %306 ], [ %300, %289 ]
  %332 = phi float [ %318, %306 ], [ %301, %289 ]
  %333 = phi float [ %319, %306 ], [ %302, %289 ]
  %334 = call float @dx.op.unary.f32(i32 7, float %321)  ; Saturate(value)
  %335 = fsub fast float 1.000000e+00, %334
  %336 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %337 = extractvalue %dx.types.CBufRet.i32 %336, 0
  %338 = icmp eq i32 %337, 1
  br i1 %338, label %339, label %374, !dx.controlflow.hints !40

; <label>:339                                     ; preds = %320
  %340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %341 = extractvalue %dx.types.CBufRet.f32 %340, 0
  %342 = extractvalue %dx.types.CBufRet.f32 %340, 1
  %343 = fsub fast float %178, %341
  %344 = fsub fast float %183, %342
  %345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %346 = extractvalue %dx.types.CBufRet.f32 %345, 0
  %347 = extractvalue %dx.types.CBufRet.f32 %345, 1
  %348 = fmul fast float %343, %346
  %349 = fmul fast float %344, %347
  %350 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %19, float %348, float %349, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %351 = extractvalue %dx.types.ResRet.f32 %350, 0
  %352 = fcmp fast ogt float %351, 0.000000e+00
  %353 = extractvalue %dx.types.CBufRet.i32 %336, 3
  %354 = icmp ne i32 %353, 0
  %355 = and i1 %352, %354
  br i1 %355, label %356, label %374, !dx.controlflow.hints !41

; <label>:356                                     ; preds = %339
  %357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %358 = extractvalue %dx.types.CBufRet.f32 %357, 0
  %359 = extractvalue %dx.types.CBufRet.f32 %357, 1
  %360 = fsub fast float %178, %358
  %361 = fsub fast float %183, %359
  %362 = fmul fast float %360, %360
  %363 = fmul fast float %361, %361
  %364 = fadd fast float %362, %363
  %365 = uitofp i32 %353 to float
  %366 = fmul fast float %365, %365
  %367 = fcmp fast ogt float %364, %366
  br i1 %367, label %374, label %368, !dx.controlflow.hints !42

; <label>:368                                     ; preds = %356
  %369 = call float @dx.op.unary.f32(i32 24, float %364)  ; Sqrt(value)
  %370 = fsub fast float %365, %369
  %371 = fmul fast float %370, 0x3F75555560000000
  %372 = call float @dx.op.unary.f32(i32 7, float %371)  ; Saturate(value)
  %373 = call float @dx.op.binary.f32(i32 36, float %372, float %351)  ; FMin(a,b)
  br label %374

; <label>:374                                     ; preds = %368, %356, %339, %320
  %375 = phi float [ 1.000000e+00, %320 ], [ %373, %368 ], [ %351, %339 ], [ 0.000000e+00, %356 ]
  %376 = fcmp fast ogt float %335, 0.000000e+00
  %377 = fcmp fast olt float %375, 1.000000e+00
  %378 = or i1 %376, %377
  br i1 %378, label %379, label %1048, !dx.controlflow.hints !43

; <label>:379                                     ; preds = %374
  %380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %381 = extractvalue %dx.types.CBufRet.f32 %380, 0
  %382 = extractvalue %dx.types.CBufRet.f32 %380, 1
  %383 = fsub fast float %178, %381
  %384 = fsub fast float %183, %382
  %385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %386 = extractvalue %dx.types.CBufRet.f32 %385, 0
  %387 = extractvalue %dx.types.CBufRet.f32 %385, 1
  %388 = fmul fast float %383, %386
  %389 = fmul fast float %384, %387
  %390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %391 = extractvalue %dx.types.CBufRet.f32 %390, 0
  %392 = fmul fast float %391, %388
  %393 = extractvalue %dx.types.CBufRet.f32 %390, 1
  %394 = fadd fast float %392, %393
  %395 = extractvalue %dx.types.CBufRet.f32 %390, 2
  %396 = fmul fast float %395, %389
  %397 = extractvalue %dx.types.CBufRet.f32 %390, 3
  %398 = fadd fast float %396, %397
  %399 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %19, float %394, float %398, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %400 = extractvalue %dx.types.ResRet.f32 %399, 0
  %401 = extractvalue %dx.types.ResRet.f32 %399, 1
  %402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %403 = extractvalue %dx.types.CBufRet.f32 %402, 1
  %404 = extractvalue %dx.types.CBufRet.f32 %402, 0
  %405 = fsub fast float %403, %404
  %406 = fmul fast float %405, %400
  %407 = fadd fast float %406, %404
  %408 = extractvalue %dx.types.CBufRet.f32 %402, 3
  %409 = extractvalue %dx.types.CBufRet.f32 %402, 2
  %410 = fsub fast float %408, %409
  %411 = fmul fast float %410, %401
  %412 = fadd fast float %411, %409
  %413 = fsub fast float %188, %407
  %414 = fsub fast float %412, %407
  %415 = fdiv fast float %413, %414
  %416 = call float @dx.op.unary.f32(i32 7, float %415)  ; Saturate(value)
  %417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %418 = extractvalue %dx.types.CBufRet.f32 %417, 0
  %419 = fmul fast float %418, %416
  %420 = extractvalue %dx.types.CBufRet.f32 %417, 1
  %421 = fadd fast float %419, %420
  %422 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %19, float %394, float %398, float %421, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %423 = extractvalue %dx.types.ResRet.f32 %422, 0
  %424 = extractvalue %dx.types.ResRet.f32 %422, 1
  %425 = extractvalue %dx.types.ResRet.f32 %422, 2
  %426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %427 = extractvalue %dx.types.CBufRet.f32 %426, 0
  %428 = extractvalue %dx.types.CBufRet.f32 %426, 1
  %429 = extractvalue %dx.types.CBufRet.f32 %426, 2
  %430 = fmul fast float %427, %423
  %431 = fmul fast float %428, %424
  %432 = fmul fast float %429, %425
  %433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %434 = extractvalue %dx.types.CBufRet.f32 %433, 0
  %435 = extractvalue %dx.types.CBufRet.f32 %433, 1
  %436 = extractvalue %dx.types.CBufRet.f32 %433, 2
  %437 = fadd fast float %430, %434
  %438 = fadd fast float %431, %435
  %439 = fadd fast float %432, %436
  %440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %441 = extractvalue %dx.types.CBufRet.f32 %440, 0
  %442 = fmul fast float %441, %388
  %443 = extractvalue %dx.types.CBufRet.f32 %440, 1
  %444 = fadd fast float %442, %443
  %445 = extractvalue %dx.types.CBufRet.f32 %440, 2
  %446 = fmul fast float %445, %389
  %447 = extractvalue %dx.types.CBufRet.f32 %440, 3
  %448 = fadd fast float %446, %447
  %449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %450 = extractvalue %dx.types.CBufRet.f32 %449, 0
  %451 = extractvalue %dx.types.CBufRet.f32 %449, 1
  %452 = extractvalue %dx.types.CBufRet.f32 %449, 2
  %453 = extractvalue %dx.types.CBufRet.f32 %449, 3
  %454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %455 = extractvalue %dx.types.CBufRet.f32 %454, 0
  %456 = extractvalue %dx.types.CBufRet.f32 %454, 1
  %457 = extractvalue %dx.types.CBufRet.f32 %454, 2
  %458 = extractvalue %dx.types.CBufRet.f32 %454, 3
  %459 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %19, float %444, float %448, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %460 = extractvalue %dx.types.ResRet.f32 %459, 0
  %461 = extractvalue %dx.types.ResRet.f32 %459, 1
  %462 = extractvalue %dx.types.ResRet.f32 %459, 2
  %463 = extractvalue %dx.types.ResRet.f32 %459, 3
  %464 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %19, float %444, float %448, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %465 = extractvalue %dx.types.ResRet.f32 %464, 0
  %466 = extractvalue %dx.types.ResRet.f32 %464, 1
  %467 = extractvalue %dx.types.ResRet.f32 %464, 2
  %468 = extractvalue %dx.types.ResRet.f32 %464, 3
  %469 = fmul fast float %460, %437
  %470 = fmul fast float %465, %437
  %471 = fmul fast float %467, %437
  %472 = fmul fast float %463, %437
  %473 = fadd fast float %469, %450
  %474 = fadd fast float %470, %451
  %475 = fadd fast float %471, %452
  %476 = fadd fast float %472, %453
  %477 = fmul fast float %461, %437
  %478 = fmul fast float %466, %437
  %479 = fadd fast float %477, %455
  %480 = fadd fast float %478, %456
  %481 = fmul fast float %462, %437
  %482 = fmul fast float %468, %437
  %483 = fadd fast float %481, %457
  %484 = fadd fast float %482, %458
  %485 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %19, float %444, float %448, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %486 = extractvalue %dx.types.ResRet.f32 %485, 0
  %487 = extractvalue %dx.types.ResRet.f32 %485, 1
  %488 = extractvalue %dx.types.ResRet.f32 %485, 2
  %489 = extractvalue %dx.types.ResRet.f32 %485, 3
  %490 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %19, float %444, float %448, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %491 = extractvalue %dx.types.ResRet.f32 %490, 0
  %492 = extractvalue %dx.types.ResRet.f32 %490, 1
  %493 = extractvalue %dx.types.ResRet.f32 %490, 2
  %494 = extractvalue %dx.types.ResRet.f32 %490, 3
  %495 = fmul fast float %486, %438
  %496 = fmul fast float %491, %438
  %497 = fmul fast float %493, %438
  %498 = fmul fast float %489, %438
  %499 = fadd fast float %473, %495
  %500 = fadd fast float %474, %496
  %501 = fadd fast float %475, %497
  %502 = fadd fast float %476, %498
  %503 = fmul fast float %487, %438
  %504 = fmul fast float %492, %438
  %505 = fadd fast float %479, %503
  %506 = fadd fast float %480, %504
  %507 = fmul fast float %488, %438
  %508 = fmul fast float %494, %438
  %509 = fadd fast float %483, %507
  %510 = fadd fast float %484, %508
  %511 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %19, float %444, float %448, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %512 = extractvalue %dx.types.ResRet.f32 %511, 0
  %513 = extractvalue %dx.types.ResRet.f32 %511, 1
  %514 = extractvalue %dx.types.ResRet.f32 %511, 2
  %515 = extractvalue %dx.types.ResRet.f32 %511, 3
  %516 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %19, float %444, float %448, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %517 = extractvalue %dx.types.ResRet.f32 %516, 0
  %518 = extractvalue %dx.types.ResRet.f32 %516, 1
  %519 = extractvalue %dx.types.ResRet.f32 %516, 2
  %520 = extractvalue %dx.types.ResRet.f32 %516, 3
  %521 = fmul fast float %512, %439
  %522 = fmul fast float %517, %439
  %523 = fmul fast float %519, %439
  %524 = fmul fast float %515, %439
  %525 = fadd fast float %499, %521
  %526 = fadd fast float %500, %522
  %527 = fadd fast float %501, %523
  %528 = fadd fast float %502, %524
  %529 = fmul fast float %513, %439
  %530 = fmul fast float %518, %439
  %531 = fadd fast float %505, %529
  %532 = fadd fast float %506, %530
  %533 = fmul fast float %514, %439
  %534 = fmul fast float %520, %439
  %535 = fadd fast float %509, %533
  %536 = fadd fast float %510, %534
  %537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %538 = extractvalue %dx.types.CBufRet.f32 %537, 0
  %539 = fsub fast float %178, %538
  %540 = fsub fast float %381, %178
  %541 = call float @dx.op.binary.f32(i32 35, float %540, float %539)  ; FMax(a,b)
  %542 = extractvalue %dx.types.CBufRet.f32 %537, 1
  %543 = fsub fast float %183, %542
  %544 = fsub fast float %382, %183
  %545 = call float @dx.op.binary.f32(i32 35, float %544, float %543)  ; FMax(a,b)
  %546 = call float @dx.op.binary.f32(i32 35, float %541, float %545)  ; FMax(a,b)
  %547 = extractvalue %dx.types.CBufRet.f32 %385, 3
  %548 = fmul fast float %547, %546
  %549 = call float @dx.op.unary.f32(i32 7, float %548)  ; Saturate(value)
  %550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %551 = extractvalue %dx.types.CBufRet.f32 %550, 0
  %552 = extractvalue %dx.types.CBufRet.f32 %550, 1
  %553 = extractvalue %dx.types.CBufRet.f32 %550, 2
  %554 = extractvalue %dx.types.CBufRet.f32 %550, 3
  %555 = fsub fast float %551, %525
  %556 = fsub fast float %552, %526
  %557 = fsub fast float %553, %527
  %558 = fsub fast float %554, %528
  %559 = fmul fast float %555, %549
  %560 = fmul fast float %556, %549
  %561 = fmul fast float %557, %549
  %562 = fmul fast float %558, %549
  %563 = fadd fast float %559, %525
  %564 = fadd fast float %560, %526
  %565 = fadd fast float %561, %527
  %566 = fadd fast float %562, %528
  %567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %568 = extractvalue %dx.types.CBufRet.f32 %567, 0
  %569 = extractvalue %dx.types.CBufRet.f32 %567, 1
  %570 = fsub fast float %568, %531
  %571 = fsub fast float %569, %532
  %572 = fmul fast float %570, %549
  %573 = fmul fast float %571, %549
  %574 = fadd fast float %572, %531
  %575 = fadd fast float %573, %532
  %576 = extractvalue %dx.types.CBufRet.f32 %567, 2
  %577 = extractvalue %dx.types.CBufRet.f32 %567, 3
  %578 = fsub fast float %576, %535
  %579 = fsub fast float %577, %536
  %580 = fmul fast float %578, %549
  %581 = fmul fast float %579, %549
  %582 = fadd fast float %580, %535
  %583 = fadd fast float %581, %536
  %584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %585 = extractvalue %dx.types.CBufRet.f32 %584, 0
  %586 = fmul fast float %585, %563
  %587 = fmul fast float %585, %564
  %588 = fmul fast float %585, %565
  %589 = fmul fast float %585, %566
  %590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %591 = extractvalue %dx.types.CBufRet.f32 %590, 0
  %592 = fmul fast float %591, %574
  %593 = fmul fast float %591, %575
  %594 = fadd fast float %592, %586
  %595 = fadd fast float %593, %588
  %596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %597 = extractvalue %dx.types.CBufRet.f32 %596, 0
  %598 = fmul fast float %597, %582
  %599 = fmul fast float %597, %583
  %600 = fadd fast float %594, %598
  %601 = fadd fast float %595, %599
  %602 = extractvalue %dx.types.CBufRet.f32 %584, 1
  %603 = fmul fast float %602, %563
  %604 = fmul fast float %602, %564
  %605 = fmul fast float %602, %565
  %606 = fmul fast float %602, %566
  %607 = extractvalue %dx.types.CBufRet.f32 %590, 1
  %608 = fmul fast float %607, %574
  %609 = fmul fast float %607, %575
  %610 = fadd fast float %608, %603
  %611 = fadd fast float %609, %605
  %612 = extractvalue %dx.types.CBufRet.f32 %596, 1
  %613 = fmul fast float %612, %582
  %614 = fmul fast float %612, %583
  %615 = fadd fast float %610, %613
  %616 = fadd fast float %611, %614
  %617 = extractvalue %dx.types.CBufRet.f32 %584, 2
  %618 = fmul fast float %617, %563
  %619 = fmul fast float %617, %564
  %620 = fmul fast float %617, %565
  %621 = fmul fast float %617, %566
  %622 = extractvalue %dx.types.CBufRet.f32 %590, 2
  %623 = fmul fast float %622, %574
  %624 = fmul fast float %622, %575
  %625 = fadd fast float %623, %618
  %626 = fadd fast float %624, %620
  %627 = extractvalue %dx.types.CBufRet.f32 %596, 2
  %628 = fmul fast float %627, %582
  %629 = fmul fast float %627, %583
  %630 = fadd fast float %625, %628
  %631 = fadd fast float %626, %629
  %632 = fmul fast float %619, %619
  %633 = fmul fast float %631, %631
  %634 = fmul fast float %621, %621
  %635 = fadd fast float %634, %632
  %636 = fadd fast float %635, %633
  %637 = call float @dx.op.unary.f32(i32 24, float %636)  ; Sqrt(value)
  %638 = fcmp fast ugt float %637, 0.000000e+00
  br i1 %638, label %639, label %654, !dx.controlflow.hints !44

; <label>:639                                     ; preds = %379
  %640 = fsub fast float -0.000000e+00, %621
  %641 = fdiv fast float %640, %637
  %642 = fsub fast float -0.000000e+00, %619
  %643 = fdiv fast float %642, %637
  %644 = fdiv fast float %631, %637
  %645 = fmul fast float %630, 0x3FE279A760000000
  %646 = fmul fast float %643, %619
  %647 = fmul fast float %644, %631
  %648 = fmul fast float %641, %621
  %649 = fadd fast float %646, %648
  %650 = fsub fast float %649, %647
  %651 = call float @dx.op.unary.f32(i32 6, float %650)  ; FAbs(value)
  %652 = fadd fast float %651, 0x3DDB7CDFE0000000
  %653 = fdiv fast float %645, %652
  br label %654

; <label>:654                                     ; preds = %639, %379
  %655 = phi float [ %653, %639 ], [ 1.000000e+00, %379 ]
  %656 = fmul fast float %604, %604
  %657 = fmul fast float %616, %616
  %658 = fmul fast float %606, %606
  %659 = fadd fast float %658, %656
  %660 = fadd fast float %659, %657
  %661 = call float @dx.op.unary.f32(i32 24, float %660)  ; Sqrt(value)
  %662 = fcmp fast ugt float %661, 0.000000e+00
  br i1 %662, label %663, label %678, !dx.controlflow.hints !44

; <label>:663                                     ; preds = %654
  %664 = fsub fast float -0.000000e+00, %606
  %665 = fdiv fast float %664, %661
  %666 = fsub fast float -0.000000e+00, %604
  %667 = fdiv fast float %666, %661
  %668 = fdiv fast float %616, %661
  %669 = fmul fast float %615, 0x3FE279A760000000
  %670 = fmul fast float %667, %604
  %671 = fmul fast float %668, %616
  %672 = fmul fast float %665, %606
  %673 = fadd fast float %670, %672
  %674 = fsub fast float %673, %671
  %675 = call float @dx.op.unary.f32(i32 6, float %674)  ; FAbs(value)
  %676 = fadd fast float %675, 0x3DDB7CDFE0000000
  %677 = fdiv fast float %669, %676
  br label %678

; <label>:678                                     ; preds = %663, %654
  %679 = phi float [ %677, %663 ], [ 1.000000e+00, %654 ]
  %680 = call float @dx.op.binary.f32(i32 36, float %679, float %655)  ; FMin(a,b)
  %681 = fmul fast float %587, %587
  %682 = fmul fast float %601, %601
  %683 = fmul fast float %589, %589
  %684 = fadd fast float %683, %681
  %685 = fadd fast float %684, %682
  %686 = call float @dx.op.unary.f32(i32 24, float %685)  ; Sqrt(value)
  %687 = fcmp fast ugt float %686, 0.000000e+00
  br i1 %687, label %688, label %703, !dx.controlflow.hints !44

; <label>:688                                     ; preds = %678
  %689 = fsub fast float -0.000000e+00, %589
  %690 = fdiv fast float %689, %686
  %691 = fsub fast float -0.000000e+00, %587
  %692 = fdiv fast float %691, %686
  %693 = fdiv fast float %601, %686
  %694 = fmul fast float %600, 0x3FE279A760000000
  %695 = fmul fast float %692, %587
  %696 = fmul fast float %693, %601
  %697 = fmul fast float %690, %589
  %698 = fadd fast float %695, %697
  %699 = fsub fast float %698, %696
  %700 = call float @dx.op.unary.f32(i32 6, float %699)  ; FAbs(value)
  %701 = fadd fast float %700, 0x3DDB7CDFE0000000
  %702 = fdiv fast float %694, %701
  br label %703

; <label>:703                                     ; preds = %688, %678
  %704 = phi float [ %702, %688 ], [ 1.000000e+00, %678 ]
  %705 = call float @dx.op.binary.f32(i32 36, float %704, float %680)  ; FMin(a,b)
  %706 = call float @dx.op.unary.f32(i32 7, float %705)  ; Saturate(value)
  %707 = fcmp fast olt float %706, 1.000000e+00
  br i1 %707, label %708, label %718, !dx.controlflow.hints !45

; <label>:708                                     ; preds = %703
  %709 = fmul fast float %706, %587
  %710 = fmul fast float %706, %601
  %711 = fmul fast float %706, %589
  %712 = fmul fast float %706, %604
  %713 = fmul fast float %706, %616
  %714 = fmul fast float %706, %606
  %715 = fmul fast float %706, %619
  %716 = fmul fast float %706, %631
  %717 = fmul fast float %706, %621
  br label %718

; <label>:718                                     ; preds = %708, %703
  %719 = phi float [ %715, %708 ], [ %619, %703 ]
  %720 = phi float [ %716, %708 ], [ %631, %703 ]
  %721 = phi float [ %717, %708 ], [ %621, %703 ]
  %722 = phi float [ %712, %708 ], [ %604, %703 ]
  %723 = phi float [ %713, %708 ], [ %616, %703 ]
  %724 = phi float [ %714, %708 ], [ %606, %703 ]
  %725 = phi float [ %709, %708 ], [ %587, %703 ]
  %726 = phi float [ %710, %708 ], [ %601, %703 ]
  %727 = phi float [ %711, %708 ], [ %589, %703 ]
  %728 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %600)  ; FMax(a,b)
  %729 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %615)  ; FMax(a,b)
  %730 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %630)  ; FMax(a,b)
  %731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %732 = extractvalue %dx.types.CBufRet.f32 %731, 0
  %733 = fcmp fast ogt float %732, 0.000000e+00
  %734 = fcmp fast oge float %388, 0.000000e+00
  %735 = and i1 %734, %733
  %736 = fcmp fast ole float %388, 1.000000e+00
  %737 = and i1 %736, %735
  %738 = fcmp fast oge float %389, 0.000000e+00
  %739 = and i1 %738, %737
  %740 = fcmp fast ole float %389, 1.000000e+00
  %741 = and i1 %740, %739
  br i1 %741, label %742, label %887, !dx.controlflow.hints !46

; <label>:742                                     ; preds = %718
  %743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %744 = extractvalue %dx.types.CBufRet.f32 %743, 2
  %745 = extractvalue %dx.types.CBufRet.f32 %743, 3
  %746 = fmul fast float %744, %388
  %747 = fmul fast float %745, %389
  %748 = call float @dx.op.unary.f32(i32 27, float %746)  ; Round_ni(value)
  %749 = call float @dx.op.unary.f32(i32 27, float %747)  ; Round_ni(value)
  %750 = fptosi float %748 to i32
  %751 = fptosi float %749 to i32
  %752 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %13, i32 0, i32 %750, i32 %751, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %753 = extractvalue %dx.types.ResRet.i32 %752, 0
  %754 = and i32 %753, 65535
  %755 = lshr i32 %753, 16
  %756 = icmp eq i32 %754, 65535
  br i1 %756, label %793, label %757, !dx.controlflow.hints !47

; <label>:757                                     ; preds = %742
  %758 = extractvalue %dx.types.CBufRet.f32 %731, 1
  %759 = extractvalue %dx.types.CBufRet.f32 %743, 0
  %760 = extractvalue %dx.types.CBufRet.f32 %743, 1
  %761 = fmul fast float %759, %388
  %762 = fmul fast float %760, %389
  %763 = fmul fast float %761, 1.250000e-01
  %764 = fmul fast float %762, 1.250000e-01
  %765 = call float @dx.op.unary.f32(i32 27, float %763)  ; Round_ni(value)
  %766 = call float @dx.op.unary.f32(i32 27, float %764)  ; Round_ni(value)
  %767 = fmul fast float %765, 8.000000e+00
  %768 = fmul fast float %766, 8.000000e+00
  %769 = and i32 %753, 255
  %770 = lshr i32 %753, 8
  %771 = and i32 %770, 255
  %772 = mul nuw nsw i32 %769, 9
  %773 = uitofp i32 %772 to float
  %774 = mul nuw nsw i32 %771, 9
  %775 = uitofp i32 %774 to float
  %776 = fadd fast float %773, 5.000000e-01
  %777 = fadd fast float %776, %761
  %778 = fsub fast float %777, %767
  %779 = fadd fast float %775, 5.000000e-01
  %780 = fadd fast float %779, %762
  %781 = fsub fast float %780, %768
  %782 = fdiv fast float %778, %732
  %783 = fdiv fast float %781, %758
  %784 = fmul fast float %416, 4.375000e-01
  %785 = fadd fast float %784, 3.125000e-02
  %786 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %19, float %782, float %783, float %785, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %787 = extractvalue %dx.types.ResRet.f32 %786, 0
  %788 = extractvalue %dx.types.ResRet.f32 %786, 1
  %789 = extractvalue %dx.types.ResRet.f32 %786, 2
  %790 = fadd fast float %787, %728
  %791 = fadd fast float %788, %729
  %792 = fadd fast float %789, %730
  br label %793

; <label>:793                                     ; preds = %757, %742
  %794 = phi float [ %792, %757 ], [ %730, %742 ]
  %795 = phi float [ %791, %757 ], [ %729, %742 ]
  %796 = phi float [ %790, %757 ], [ %728, %742 ]
  %797 = icmp eq i32 %755, 65535
  br i1 %797, label %887, label %798, !dx.controlflow.hints !48

; <label>:798                                     ; preds = %793
  %799 = extractvalue %dx.types.CBufRet.f32 %731, 1
  %800 = extractvalue %dx.types.CBufRet.f32 %743, 0
  %801 = extractvalue %dx.types.CBufRet.f32 %743, 1
  %802 = fmul fast float %800, %388
  %803 = fmul fast float %801, %389
  %804 = fmul fast float %802, 1.250000e-01
  %805 = fmul fast float %803, 1.250000e-01
  %806 = call float @dx.op.unary.f32(i32 27, float %804)  ; Round_ni(value)
  %807 = call float @dx.op.unary.f32(i32 27, float %805)  ; Round_ni(value)
  %808 = fmul fast float %806, 8.000000e+00
  %809 = fmul fast float %807, 8.000000e+00
  %810 = fsub fast float %802, %808
  %811 = fsub fast float %803, %809
  %812 = fadd fast float %810, 5.000000e-01
  %813 = fadd fast float %811, 5.000000e-01
  %814 = and i32 %755, 255
  %815 = lshr i32 %753, 24
  %816 = mul nuw nsw i32 %814, 9
  %817 = uitofp i32 %816 to float
  %818 = mul nuw nsw i32 %815, 9
  %819 = uitofp i32 %818 to float
  %820 = fadd fast float %812, %817
  %821 = fadd fast float %813, %819
  %822 = fdiv fast float %820, %732
  %823 = fdiv fast float %821, %799
  %824 = fmul fast float %416, 4.375000e-01
  %825 = fadd fast float %824, 3.125000e-02
  %826 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %19, float %822, float %823, float %825, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %827 = extractvalue %dx.types.ResRet.f32 %826, 0
  %828 = extractvalue %dx.types.ResRet.f32 %826, 1
  %829 = extractvalue %dx.types.ResRet.f32 %826, 2
  %830 = fadd fast float %824, 5.312500e-01
  %831 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %19, float %822, float %823, float %830, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %832 = extractvalue %dx.types.ResRet.f32 %831, 0
  %833 = extractvalue %dx.types.ResRet.f32 %831, 1
  %834 = extractvalue %dx.types.ResRet.f32 %831, 2
  %835 = fmul fast float %832, 2.000000e+00
  %836 = fmul fast float %833, 2.000000e+00
  %837 = fmul fast float %834, 2.000000e+00
  %838 = fadd fast float %835, -1.000000e+00
  %839 = fadd fast float %836, -1.000000e+00
  %840 = fadd fast float %837, -1.000000e+00
  %841 = fmul fast float %838, %838
  %842 = fmul fast float %839, %839
  %843 = fadd fast float %841, %842
  %844 = fmul fast float %840, %840
  %845 = fadd fast float %843, %844
  %846 = call float @dx.op.unary.f32(i32 24, float %845)  ; Sqrt(value)
  %847 = fcmp fast ogt float %846, 0.000000e+00
  br i1 %847, label %848, label %852, !dx.controlflow.hints !49

; <label>:848                                     ; preds = %798
  %849 = fdiv fast float %838, %846
  %850 = fdiv fast float %839, %846
  %851 = fdiv fast float %840, %846
  br label %852

; <label>:852                                     ; preds = %848, %798
  %853 = phi float [ %849, %848 ], [ 0.000000e+00, %798 ]
  %854 = phi float [ %850, %848 ], [ 0.000000e+00, %798 ]
  %855 = phi float [ %851, %848 ], [ 0.000000e+00, %798 ]
  %856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %857 = extractvalue %dx.types.CBufRet.f32 %856, 0
  %858 = extractvalue %dx.types.CBufRet.f32 %856, 1
  %859 = fsub fast float %178, %857
  %860 = fsub fast float %183, %858
  %861 = fmul fast float %859, %859
  %862 = fmul fast float %860, %860
  %863 = fadd fast float %861, %862
  %864 = call float @dx.op.unary.f32(i32 24, float %863)  ; Sqrt(value)
  %865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %866 = extractvalue %dx.types.CBufRet.f32 %865, 0
  %867 = extractvalue %dx.types.CBufRet.f32 %865, 1
  %868 = fsub fast float %864, %866
  %869 = fdiv fast float %868, %867
  %870 = call float @dx.op.unary.f32(i32 7, float %869)  ; Saturate(value)
  %871 = fmul fast float %870, 2.000000e+00
  %872 = fsub fast float 3.000000e+00, %871
  %873 = fmul fast float %870, %870
  %874 = fmul fast float %873, %872
  %875 = call float @dx.op.dot3.f32(i32 55, float %853, float %854, float %855, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %876 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %875)  ; FMax(a,b)
  %877 = fmul fast float %876, 0x400C5BF8A0000000
  %878 = fmul fast float %874, %827
  %879 = fmul fast float %878, %877
  %880 = fadd fast float %879, %796
  %881 = fmul fast float %874, %828
  %882 = fmul fast float %881, %877
  %883 = fadd fast float %882, %795
  %884 = fmul fast float %874, %829
  %885 = fmul fast float %884, %877
  %886 = fadd fast float %885, %794
  br label %887

; <label>:887                                     ; preds = %852, %793, %718
  %888 = phi float [ %886, %852 ], [ %794, %793 ], [ %730, %718 ]
  %889 = phi float [ %883, %852 ], [ %795, %793 ], [ %729, %718 ]
  %890 = phi float [ %880, %852 ], [ %796, %793 ], [ %728, %718 ]
  %891 = fcmp fast ogt float %188, %412
  %892 = and i1 %734, %891
  %893 = and i1 %736, %892
  %894 = and i1 %738, %893
  %895 = and i1 %740, %894
  br i1 %895, label %896, label %953, !dx.controlflow.hints !50

; <label>:896                                     ; preds = %887
  %897 = fmul fast float %414, 0x3FC24924A0000000
  %898 = fsub fast float %188, %412
  %899 = fdiv fast float %898, %897
  %900 = call float @dx.op.unary.f32(i32 7, float %899)  ; Saturate(value)
  %901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %902 = extractvalue %dx.types.CBufRet.f32 %901, 0
  %903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %904 = extractvalue %dx.types.CBufRet.f32 %903, 0
  %905 = extractvalue %dx.types.CBufRet.f32 %903, 1
  %906 = extractvalue %dx.types.CBufRet.f32 %903, 2
  %907 = fsub fast float %902, %890
  %908 = fsub fast float %904, %725
  %909 = fsub fast float %905, %726
  %910 = fsub fast float %906, %727
  %911 = fmul fast float %907, %900
  %912 = fmul fast float %908, %900
  %913 = fmul fast float %909, %900
  %914 = fmul fast float %910, %900
  %915 = fadd fast float %911, %890
  %916 = fadd fast float %912, %725
  %917 = fadd fast float %913, %726
  %918 = fadd fast float %914, %727
  %919 = extractvalue %dx.types.CBufRet.f32 %901, 1
  %920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %921 = extractvalue %dx.types.CBufRet.f32 %920, 0
  %922 = extractvalue %dx.types.CBufRet.f32 %920, 1
  %923 = extractvalue %dx.types.CBufRet.f32 %920, 2
  %924 = fsub fast float %919, %889
  %925 = fsub fast float %921, %722
  %926 = fsub fast float %922, %723
  %927 = fsub fast float %923, %724
  %928 = fmul fast float %924, %900
  %929 = fmul fast float %925, %900
  %930 = fmul fast float %926, %900
  %931 = fmul fast float %927, %900
  %932 = fadd fast float %928, %889
  %933 = fadd fast float %929, %722
  %934 = fadd fast float %930, %723
  %935 = fadd fast float %931, %724
  %936 = extractvalue %dx.types.CBufRet.f32 %901, 2
  %937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %938 = extractvalue %dx.types.CBufRet.f32 %937, 0
  %939 = extractvalue %dx.types.CBufRet.f32 %937, 1
  %940 = extractvalue %dx.types.CBufRet.f32 %937, 2
  %941 = fsub fast float %936, %888
  %942 = fsub fast float %938, %719
  %943 = fsub fast float %939, %720
  %944 = fsub fast float %940, %721
  %945 = fmul fast float %941, %900
  %946 = fmul fast float %942, %900
  %947 = fmul fast float %943, %900
  %948 = fmul fast float %944, %900
  %949 = fadd fast float %945, %888
  %950 = fadd fast float %946, %719
  %951 = fadd fast float %947, %720
  %952 = fadd fast float %948, %721
  br label %953

; <label>:953                                     ; preds = %896, %887
  %954 = phi float [ %949, %896 ], [ %888, %887 ]
  %955 = phi float [ %950, %896 ], [ %719, %887 ]
  %956 = phi float [ %951, %896 ], [ %720, %887 ]
  %957 = phi float [ %952, %896 ], [ %721, %887 ]
  %958 = phi float [ %932, %896 ], [ %889, %887 ]
  %959 = phi float [ %933, %896 ], [ %722, %887 ]
  %960 = phi float [ %934, %896 ], [ %723, %887 ]
  %961 = phi float [ %935, %896 ], [ %724, %887 ]
  %962 = phi float [ %915, %896 ], [ %890, %887 ]
  %963 = phi float [ %916, %896 ], [ %725, %887 ]
  %964 = phi float [ %917, %896 ], [ %726, %887 ]
  %965 = phi float [ %918, %896 ], [ %727, %887 ]
  %966 = extractvalue %dx.types.CBufRet.f32 %537, 3
  %967 = fmul fast float %966, %962
  %968 = fmul fast float %966, %958
  %969 = fmul fast float %966, %954
  %970 = fmul fast float %963, 1.500000e+00
  %971 = fmul fast float %970, %966
  %972 = fmul fast float %964, 1.500000e+00
  %973 = fmul fast float %972, %966
  %974 = fmul fast float %965, 1.500000e+00
  %975 = fmul fast float %974, %966
  %976 = fmul fast float %959, 1.500000e+00
  %977 = fmul fast float %976, %966
  %978 = fmul fast float %960, 1.500000e+00
  %979 = fmul fast float %978, %966
  %980 = fmul fast float %961, 1.500000e+00
  %981 = fmul fast float %980, %966
  %982 = fmul fast float %955, 1.500000e+00
  %983 = fmul fast float %982, %966
  %984 = fmul fast float %956, 1.500000e+00
  %985 = fmul fast float %984, %966
  %986 = fmul fast float %957, 1.500000e+00
  %987 = fmul fast float %986, %966
  %988 = fmul fast float %967, %335
  %989 = fmul fast float %971, %335
  %990 = fmul fast float %973, %335
  %991 = fmul fast float %975, %335
  %992 = fmul fast float %968, %335
  %993 = fmul fast float %977, %335
  %994 = fmul fast float %979, %335
  %995 = fmul fast float %981, %335
  %996 = fmul fast float %969, %335
  %997 = fmul fast float %983, %335
  %998 = fmul fast float %985, %335
  %999 = fmul fast float %987, %335
  %1000 = fsub fast float %322, %967
  %1001 = fadd fast float %1000, %988
  %1002 = fsub fast float %323, %971
  %1003 = fadd fast float %1002, %989
  %1004 = fsub fast float %324, %973
  %1005 = fadd fast float %1004, %990
  %1006 = fsub fast float %325, %975
  %1007 = fadd fast float %1006, %991
  %1008 = fmul fast float %1001, %375
  %1009 = fmul fast float %1003, %375
  %1010 = fmul fast float %1005, %375
  %1011 = fmul fast float %1007, %375
  %1012 = fadd fast float %1008, %967
  %1013 = fadd fast float %1009, %971
  %1014 = fadd fast float %1010, %973
  %1015 = fadd fast float %1011, %975
  %1016 = fsub fast float %326, %968
  %1017 = fadd fast float %1016, %992
  %1018 = fsub fast float %327, %977
  %1019 = fadd fast float %1018, %993
  %1020 = fsub fast float %328, %979
  %1021 = fadd fast float %1020, %994
  %1022 = fsub fast float %329, %981
  %1023 = fadd fast float %1022, %995
  %1024 = fmul fast float %1017, %375
  %1025 = fmul fast float %1019, %375
  %1026 = fmul fast float %1021, %375
  %1027 = fmul fast float %1023, %375
  %1028 = fadd fast float %1024, %968
  %1029 = fadd fast float %1025, %977
  %1030 = fadd fast float %1026, %979
  %1031 = fadd fast float %1027, %981
  %1032 = fsub fast float %330, %969
  %1033 = fadd fast float %1032, %996
  %1034 = fsub fast float %331, %983
  %1035 = fadd fast float %1034, %997
  %1036 = fsub fast float %332, %985
  %1037 = fadd fast float %1036, %998
  %1038 = fsub fast float %333, %987
  %1039 = fadd fast float %1038, %999
  %1040 = fmul fast float %1033, %375
  %1041 = fmul fast float %1035, %375
  %1042 = fmul fast float %1037, %375
  %1043 = fmul fast float %1039, %375
  %1044 = fadd fast float %1040, %969
  %1045 = fadd fast float %1041, %983
  %1046 = fadd fast float %1042, %985
  %1047 = fadd fast float %1043, %987
  br label %1048

; <label>:1048                                    ; preds = %953, %374
  %1049 = phi float [ %1012, %953 ], [ %322, %374 ]
  %1050 = phi float [ %1013, %953 ], [ %323, %374 ]
  %1051 = phi float [ %1014, %953 ], [ %324, %374 ]
  %1052 = phi float [ %1015, %953 ], [ %325, %374 ]
  %1053 = phi float [ %1028, %953 ], [ %326, %374 ]
  %1054 = phi float [ %1029, %953 ], [ %327, %374 ]
  %1055 = phi float [ %1030, %953 ], [ %328, %374 ]
  %1056 = phi float [ %1031, %953 ], [ %329, %374 ]
  %1057 = phi float [ %1044, %953 ], [ %330, %374 ]
  %1058 = phi float [ %1045, %953 ], [ %331, %374 ]
  %1059 = phi float [ %1046, %953 ], [ %332, %374 ]
  %1060 = phi float [ %1047, %953 ], [ %333, %374 ]
  %1061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1062 = extractvalue %dx.types.CBufRet.f32 %1061, 0
  %1063 = extractvalue %dx.types.CBufRet.f32 %1061, 1
  %1064 = extractvalue %dx.types.CBufRet.f32 %1061, 2
  %1065 = fsub fast float %178, %1062
  %1066 = fsub fast float %183, %1063
  %1067 = fsub fast float %188, %1064
  %1068 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1069 = extractvalue %dx.types.CBufRet.i32 %1068, 2
  %1070 = icmp eq i32 %1069, 0
  br i1 %1070, label %1286, label %1071

; <label>:1071                                    ; preds = %1048
  br label %1072

; <label>:1072                                    ; preds = %1267, %1071
  %1073 = phi float [ %1268, %1267 ], [ 0.000000e+00, %1071 ]
  %1074 = phi float [ %1269, %1267 ], [ 0.000000e+00, %1071 ]
  %1075 = phi float [ %1270, %1267 ], [ 0.000000e+00, %1071 ]
  %1076 = phi float [ %1271, %1267 ], [ 0.000000e+00, %1071 ]
  %1077 = phi float [ %1272, %1267 ], [ 0.000000e+00, %1071 ]
  %1078 = phi float [ %1273, %1267 ], [ 0.000000e+00, %1071 ]
  %1079 = phi float [ %1274, %1267 ], [ 0.000000e+00, %1071 ]
  %1080 = phi float [ %1275, %1267 ], [ 0.000000e+00, %1071 ]
  %1081 = phi float [ %1276, %1267 ], [ 0.000000e+00, %1071 ]
  %1082 = phi float [ %1277, %1267 ], [ 0.000000e+00, %1071 ]
  %1083 = phi float [ %1278, %1267 ], [ 0.000000e+00, %1071 ]
  %1084 = phi float [ %1279, %1267 ], [ 0.000000e+00, %1071 ]
  %1085 = phi float [ %1280, %1267 ], [ 1.000000e+00, %1071 ]
  %1086 = phi i32 [ %1281, %1267 ], [ 0, %1071 ]
  %1087 = shl i32 %1086, 2
  %1088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1087, i32 undef)  ; BufferLoad(srv,index,wot)
  %1089 = extractvalue %dx.types.ResRet.i32 %1088, 0
  %1090 = icmp ne i32 %1089, 0
  %1091 = fcmp fast ogt float %1085, 0.000000e+00
  %1092 = and i1 %1091, %1090
  br i1 %1092, label %1093, label %1267

; <label>:1093                                    ; preds = %1072
  br label %1094

; <label>:1094                                    ; preds = %1249, %1093
  %1095 = phi float [ %1250, %1249 ], [ %1073, %1093 ]
  %1096 = phi float [ %1251, %1249 ], [ %1074, %1093 ]
  %1097 = phi float [ %1252, %1249 ], [ %1075, %1093 ]
  %1098 = phi float [ %1253, %1249 ], [ %1076, %1093 ]
  %1099 = phi float [ %1254, %1249 ], [ %1077, %1093 ]
  %1100 = phi float [ %1255, %1249 ], [ %1078, %1093 ]
  %1101 = phi float [ %1256, %1249 ], [ %1079, %1093 ]
  %1102 = phi float [ %1257, %1249 ], [ %1080, %1093 ]
  %1103 = phi float [ %1258, %1249 ], [ %1081, %1093 ]
  %1104 = phi float [ %1259, %1249 ], [ %1082, %1093 ]
  %1105 = phi float [ %1260, %1249 ], [ %1083, %1093 ]
  %1106 = phi float [ %1261, %1249 ], [ %1084, %1093 ]
  %1107 = phi float [ %1262, %1249 ], [ %1085, %1093 ]
  %1108 = phi i32 [ %1112, %1249 ], [ %1089, %1093 ]
  %1109 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1108)  ; FirstbitLo(value)
  %1110 = and i32 %1109, 31
  %1111 = shl i32 1, %1110
  %1112 = xor i32 %1111, %1108
  %1113 = shl i32 %1086, 5
  %1114 = add i32 %1109, %1113
  %1115 = mul i32 %1114, 72
  %1116 = add i32 %1115, 12
  %1117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %1116, i32 undef)  ; BufferLoad(srv,index,wot)
  %1118 = extractvalue %dx.types.ResRet.i32 %1117, 0
  %1119 = add i32 %1115, 16
  %1120 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1119, i32 undef)  ; BufferLoad(srv,index,wot)
  %1121 = extractvalue %dx.types.ResRet.f32 %1120, 0
  %1122 = extractvalue %dx.types.ResRet.f32 %1120, 1
  %1123 = extractvalue %dx.types.ResRet.f32 %1120, 2
  %1124 = mul i32 %1114, 60
  %1125 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1124, i32 undef)  ; BufferLoad(srv,index,wot)
  %1126 = extractvalue %dx.types.ResRet.f32 %1125, 0
  %1127 = extractvalue %dx.types.ResRet.f32 %1125, 1
  %1128 = extractvalue %dx.types.ResRet.f32 %1125, 2
  %1129 = add i32 %1124, 12
  %1130 = add i32 %1124, 48
  %1131 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1130, i32 undef)  ; BufferLoad(srv,index,wot)
  %1132 = extractvalue %dx.types.ResRet.f32 %1131, 0
  %1133 = extractvalue %dx.types.ResRet.f32 %1131, 1
  %1134 = extractvalue %dx.types.ResRet.f32 %1131, 2
  %1135 = and i32 %1118, 32767
  %1136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1137 = extractvalue %dx.types.CBufRet.f32 %1136, 0
  %1138 = extractvalue %dx.types.CBufRet.f32 %1136, 1
  %1139 = extractvalue %dx.types.CBufRet.f32 %1136, 2
  %1140 = fsub fast float %1126, %1137
  %1141 = fsub fast float %1127, %1138
  %1142 = fsub fast float %1128, %1139
  %1143 = fsub fast float %1065, %1140
  %1144 = fsub fast float %1066, %1141
  %1145 = fsub fast float %1067, %1142
  %1146 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1129, i32 undef)  ; BufferLoad(srv,index,wot)
  %1147 = extractvalue %dx.types.ResRet.f32 %1146, 0
  %1148 = extractvalue %dx.types.ResRet.f32 %1146, 1
  %1149 = extractvalue %dx.types.ResRet.f32 %1146, 2
  %1150 = call float @dx.op.dot3.f32(i32 55, float %1143, float %1144, float %1145, float %1147, float %1148, float %1149)  ; Dot3(ax,ay,az,bx,by,bz)
  %1151 = add i32 %1124, 24
  %1152 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1151, i32 undef)  ; BufferLoad(srv,index,wot)
  %1153 = extractvalue %dx.types.ResRet.f32 %1152, 0
  %1154 = extractvalue %dx.types.ResRet.f32 %1152, 1
  %1155 = extractvalue %dx.types.ResRet.f32 %1152, 2
  %1156 = call float @dx.op.dot3.f32(i32 55, float %1143, float %1144, float %1145, float %1153, float %1154, float %1155)  ; Dot3(ax,ay,az,bx,by,bz)
  %1157 = add i32 %1124, 36
  %1158 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1157, i32 undef)  ; BufferLoad(srv,index,wot)
  %1159 = extractvalue %dx.types.ResRet.f32 %1158, 0
  %1160 = extractvalue %dx.types.ResRet.f32 %1158, 1
  %1161 = extractvalue %dx.types.ResRet.f32 %1158, 2
  %1162 = call float @dx.op.dot3.f32(i32 55, float %1143, float %1144, float %1145, float %1159, float %1160, float %1161)  ; Dot3(ax,ay,az,bx,by,bz)
  %1163 = call float @dx.op.unary.f32(i32 6, float %1150)  ; FAbs(value)
  %1164 = call float @dx.op.unary.f32(i32 6, float %1156)  ; FAbs(value)
  %1165 = call float @dx.op.unary.f32(i32 6, float %1162)  ; FAbs(value)
  %1166 = fsub fast float %1132, %1163
  %1167 = fsub fast float %1133, %1164
  %1168 = fsub fast float %1134, %1165
  %1169 = fmul fast float %1166, %1121
  %1170 = fmul fast float %1167, %1122
  %1171 = fmul fast float %1168, %1123
  %1172 = call float @dx.op.binary.f32(i32 36, float %1170, float %1171)  ; FMin(a,b)
  %1173 = call float @dx.op.binary.f32(i32 36, float %1169, float %1172)  ; FMin(a,b)
  %1174 = call float @dx.op.unary.f32(i32 7, float %1173)  ; Saturate(value)
  %1175 = call float @dx.op.binary.f32(i32 36, float %1107, float %1174)  ; FMin(a,b)
  %1176 = fcmp fast ogt float %1175, 0.000000e+00
  br i1 %1176, label %1177, label %1249, !dx.controlflow.hints !51

; <label>:1177                                    ; preds = %1094
  %1178 = lshr i32 %1118, 16
  %1179 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1178)  ; LegacyF16ToF32(value)
  %1180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 141)  ; CBufferLoadLegacy(handle,regIndex)
  %1181 = extractvalue %dx.types.CBufRet.f32 %1180, 3
  %1182 = bitcast float %1181 to i32
  %1183 = add i32 %1182, %1135
  %1184 = mul i32 %1183, 36
  %1185 = shl i32 %1182, 1
  %1186 = add i32 %1185, %1135
  %1187 = mul i32 %1186, 36
  %1188 = mul i32 %1182, 3
  %1189 = add i32 %1188, %1135
  %1190 = mul i32 %1189, 36
  %1191 = fmul fast float %1179, %1175
  %1192 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1184, i32 undef)  ; BufferLoad(srv,index,wot)
  %1193 = extractvalue %dx.types.ResRet.f32 %1192, 0
  %1194 = fmul fast float %1193, %1191
  %1195 = fadd fast float %1194, %1102
  %1196 = add i32 %1184, 4
  %1197 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1196, i32 undef)  ; BufferLoad(srv,index,wot)
  %1198 = extractvalue %dx.types.ResRet.f32 %1197, 0
  %1199 = fmul fast float %1198, %1191
  %1200 = fadd fast float %1199, %1101
  %1201 = add i32 %1184, 8
  %1202 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1201, i32 undef)  ; BufferLoad(srv,index,wot)
  %1203 = extractvalue %dx.types.ResRet.f32 %1202, 0
  %1204 = fmul fast float %1203, %1191
  %1205 = fadd fast float %1204, %1100
  %1206 = add i32 %1184, 12
  %1207 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1206, i32 undef)  ; BufferLoad(srv,index,wot)
  %1208 = extractvalue %dx.types.ResRet.f32 %1207, 0
  %1209 = fmul fast float %1208, %1191
  %1210 = fadd fast float %1209, %1099
  %1211 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1187, i32 undef)  ; BufferLoad(srv,index,wot)
  %1212 = extractvalue %dx.types.ResRet.f32 %1211, 0
  %1213 = fmul fast float %1212, %1191
  %1214 = fadd fast float %1213, %1098
  %1215 = add i32 %1187, 4
  %1216 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1215, i32 undef)  ; BufferLoad(srv,index,wot)
  %1217 = extractvalue %dx.types.ResRet.f32 %1216, 0
  %1218 = fmul fast float %1217, %1191
  %1219 = fadd fast float %1218, %1097
  %1220 = add i32 %1187, 8
  %1221 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1220, i32 undef)  ; BufferLoad(srv,index,wot)
  %1222 = extractvalue %dx.types.ResRet.f32 %1221, 0
  %1223 = fmul fast float %1222, %1191
  %1224 = fadd fast float %1223, %1096
  %1225 = add i32 %1187, 12
  %1226 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1225, i32 undef)  ; BufferLoad(srv,index,wot)
  %1227 = extractvalue %dx.types.ResRet.f32 %1226, 0
  %1228 = fmul fast float %1227, %1191
  %1229 = fadd fast float %1228, %1095
  %1230 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1190, i32 undef)  ; BufferLoad(srv,index,wot)
  %1231 = extractvalue %dx.types.ResRet.f32 %1230, 0
  %1232 = fmul fast float %1231, %1191
  %1233 = fadd fast float %1232, %1106
  %1234 = add i32 %1190, 4
  %1235 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1234, i32 undef)  ; BufferLoad(srv,index,wot)
  %1236 = extractvalue %dx.types.ResRet.f32 %1235, 0
  %1237 = fmul fast float %1236, %1191
  %1238 = fadd fast float %1237, %1105
  %1239 = add i32 %1190, 8
  %1240 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1239, i32 undef)  ; BufferLoad(srv,index,wot)
  %1241 = extractvalue %dx.types.ResRet.f32 %1240, 0
  %1242 = fmul fast float %1241, %1191
  %1243 = fadd fast float %1242, %1104
  %1244 = add i32 %1190, 12
  %1245 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1244, i32 undef)  ; BufferLoad(srv,index,wot)
  %1246 = extractvalue %dx.types.ResRet.f32 %1245, 0
  %1247 = fmul fast float %1246, %1191
  %1248 = fadd fast float %1247, %1103
  br label %1249

; <label>:1249                                    ; preds = %1177, %1094
  %1250 = phi float [ %1229, %1177 ], [ %1095, %1094 ]
  %1251 = phi float [ %1224, %1177 ], [ %1096, %1094 ]
  %1252 = phi float [ %1219, %1177 ], [ %1097, %1094 ]
  %1253 = phi float [ %1214, %1177 ], [ %1098, %1094 ]
  %1254 = phi float [ %1210, %1177 ], [ %1099, %1094 ]
  %1255 = phi float [ %1205, %1177 ], [ %1100, %1094 ]
  %1256 = phi float [ %1200, %1177 ], [ %1101, %1094 ]
  %1257 = phi float [ %1195, %1177 ], [ %1102, %1094 ]
  %1258 = phi float [ %1248, %1177 ], [ %1103, %1094 ]
  %1259 = phi float [ %1243, %1177 ], [ %1104, %1094 ]
  %1260 = phi float [ %1238, %1177 ], [ %1105, %1094 ]
  %1261 = phi float [ %1233, %1177 ], [ %1106, %1094 ]
  %1262 = fsub fast float %1107, %1175
  %1263 = icmp ne i32 %1108, %1111
  %1264 = fcmp fast ogt float %1262, 0.000000e+00
  %1265 = and i1 %1263, %1264
  br i1 %1265, label %1094, label %1266

; <label>:1266                                    ; preds = %1249
  br label %1267

; <label>:1267                                    ; preds = %1266, %1072
  %1268 = phi float [ %1073, %1072 ], [ %1250, %1266 ]
  %1269 = phi float [ %1074, %1072 ], [ %1251, %1266 ]
  %1270 = phi float [ %1075, %1072 ], [ %1252, %1266 ]
  %1271 = phi float [ %1076, %1072 ], [ %1253, %1266 ]
  %1272 = phi float [ %1077, %1072 ], [ %1254, %1266 ]
  %1273 = phi float [ %1078, %1072 ], [ %1255, %1266 ]
  %1274 = phi float [ %1079, %1072 ], [ %1256, %1266 ]
  %1275 = phi float [ %1080, %1072 ], [ %1257, %1266 ]
  %1276 = phi float [ %1081, %1072 ], [ %1258, %1266 ]
  %1277 = phi float [ %1082, %1072 ], [ %1259, %1266 ]
  %1278 = phi float [ %1083, %1072 ], [ %1260, %1266 ]
  %1279 = phi float [ %1084, %1072 ], [ %1261, %1266 ]
  %1280 = phi float [ %1085, %1072 ], [ %1262, %1266 ]
  %1281 = add i32 %1086, 1
  %1282 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1283 = extractvalue %dx.types.CBufRet.i32 %1282, 2
  %1284 = icmp ult i32 %1281, %1283
  br i1 %1284, label %1072, label %1285

; <label>:1285                                    ; preds = %1267
  br label %1286

; <label>:1286                                    ; preds = %1285, %1048
  %1287 = phi float [ 0.000000e+00, %1048 ], [ %1268, %1285 ]
  %1288 = phi float [ 0.000000e+00, %1048 ], [ %1269, %1285 ]
  %1289 = phi float [ 0.000000e+00, %1048 ], [ %1270, %1285 ]
  %1290 = phi float [ 0.000000e+00, %1048 ], [ %1271, %1285 ]
  %1291 = phi float [ 0.000000e+00, %1048 ], [ %1272, %1285 ]
  %1292 = phi float [ 0.000000e+00, %1048 ], [ %1273, %1285 ]
  %1293 = phi float [ 0.000000e+00, %1048 ], [ %1274, %1285 ]
  %1294 = phi float [ 0.000000e+00, %1048 ], [ %1275, %1285 ]
  %1295 = phi float [ 0.000000e+00, %1048 ], [ %1276, %1285 ]
  %1296 = phi float [ 0.000000e+00, %1048 ], [ %1277, %1285 ]
  %1297 = phi float [ 0.000000e+00, %1048 ], [ %1278, %1285 ]
  %1298 = phi float [ 0.000000e+00, %1048 ], [ %1279, %1285 ]
  %1299 = phi float [ 1.000000e+00, %1048 ], [ %1280, %1285 ]
  %1300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1301 = extractvalue %dx.types.CBufRet.f32 %1300, 3
  %1302 = fdiv fast float 1.000000e+00, %1301
  %1303 = fmul fast float %1302, %1294
  %1304 = fmul fast float %1302, %1293
  %1305 = fmul fast float %1302, %1292
  %1306 = fmul fast float %1302, %1291
  %1307 = fmul fast float %1302, %1290
  %1308 = fmul fast float %1302, %1289
  %1309 = fmul fast float %1302, %1288
  %1310 = fmul fast float %1302, %1287
  %1311 = fmul fast float %1302, %1298
  %1312 = fmul fast float %1302, %1297
  %1313 = fmul fast float %1302, %1296
  %1314 = fmul fast float %1302, %1295
  %1315 = fmul fast float %1299, %1049
  %1316 = fmul fast float %1299, %1050
  %1317 = fmul fast float %1299, %1051
  %1318 = fmul fast float %1299, %1052
  %1319 = fadd fast float %1303, %1315
  %1320 = fadd fast float %1304, %1316
  %1321 = fadd fast float %1305, %1317
  %1322 = fadd fast float %1306, %1318
  %1323 = fmul fast float %1299, %1053
  %1324 = fmul fast float %1299, %1054
  %1325 = fmul fast float %1299, %1055
  %1326 = fmul fast float %1299, %1056
  %1327 = fadd fast float %1307, %1323
  %1328 = fadd fast float %1308, %1324
  %1329 = fadd fast float %1309, %1325
  %1330 = fadd fast float %1310, %1326
  %1331 = fmul fast float %1299, %1057
  %1332 = fmul fast float %1299, %1058
  %1333 = fmul fast float %1299, %1059
  %1334 = fmul fast float %1299, %1060
  %1335 = fadd fast float %1311, %1331
  %1336 = fadd fast float %1312, %1332
  %1337 = fadd fast float %1313, %1333
  %1338 = fadd fast float %1314, %1334
  %1339 = fmul fast float %1319, %1301
  %1340 = fmul fast float %1320, %1301
  %1341 = fmul fast float %1321, %1301
  %1342 = fmul fast float %1322, %1301
  %1343 = extractvalue %dx.types.CBufRet.f32 %1300, 0
  %1344 = fmul fast float %1339, %1343
  %1345 = fmul fast float %1340, %1343
  %1346 = fmul fast float %1341, %1343
  %1347 = fmul fast float %1342, %1343
  %1348 = fmul fast float %1301, %1327
  %1349 = fmul fast float %1301, %1328
  %1350 = fmul fast float %1301, %1329
  %1351 = fmul fast float %1301, %1330
  %1352 = fmul fast float %1348, %1343
  %1353 = fmul fast float %1349, %1343
  %1354 = fmul fast float %1350, %1343
  %1355 = fmul fast float %1351, %1343
  %1356 = fmul fast float %1301, %1335
  %1357 = fmul fast float %1301, %1336
  %1358 = fmul fast float %1301, %1337
  %1359 = fmul fast float %1301, %1338
  %1360 = fmul fast float %1356, %1343
  %1361 = fmul fast float %1357, %1343
  %1362 = fmul fast float %1358, %1343
  %1363 = fmul fast float %1359, %1343
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %157, i32 %158, i32 0, float %1344, float %1345, float %1346, float %1347, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %157, i32 %158, i32 1, float %1352, float %1353, float %1354, float %1355, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %157, i32 %158, i32 2, float %1360, float %1361, float %1362, float %1363, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1364

; <label>:1364                                    ; preds = %1286, %0
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
!33 = !{void ()* @cs_del_sh_combine_multilightgrid_reflection_volumes_1, !"cs_del_sh_combine_multilightgrid_reflection_volumes_1", null, !4, !34}
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

