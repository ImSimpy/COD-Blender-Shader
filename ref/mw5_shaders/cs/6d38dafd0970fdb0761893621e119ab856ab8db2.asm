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
; shader hash: 13b08d48f20d94ce6325a8a330ae8d57
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

define void @cs_del_sh_combine_multilightgrid_reflection_volumes_1_lowres() {
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
  br i1 %29, label %30, label %1590, !dx.controlflow.hints !36

; <label>:30                                      ; preds = %0
  %31 = add i32 %26, 3
  %32 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 %31)  ; CBufferLoadLegacy(handle,regIndex)
  %33 = extractvalue %dx.types.CBufRet.i32 %32, 2
  %34 = add i32 %33, %22
  %35 = shl i32 %34, 5
  %36 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %35, i32 undef)  ; BufferLoad(srv,index,wot)
  %37 = extractvalue %dx.types.ResRet.i32 %36, 0
  %38 = extractvalue %dx.types.ResRet.i32 %36, 1
  %39 = extractvalue %dx.types.ResRet.i32 %36, 2
  %40 = extractvalue %dx.types.ResRet.i32 %36, 3
  %41 = lshr i32 %40, 14
  %42 = and i32 %41, 16383
  %43 = and i32 %40, 16383
  %44 = bitcast i32 %37 to float
  %45 = bitcast i32 %38 to float
  %46 = bitcast i32 %39 to float
  %47 = and i32 %40, 536870912
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %88, label %49, !dx.controlflow.hints !37

; <label>:49                                      ; preds = %30
  %50 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %51 = extractvalue %dx.types.CBufRet.f32 %50, 2
  %52 = extractvalue %dx.types.CBufRet.f32 %50, 3
  %53 = fmul fast float %51, %44
  %54 = fmul fast float %52, %45
  %55 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %56 = extractvalue %dx.types.CBufRet.f32 %55, 0
  %57 = extractvalue %dx.types.CBufRet.f32 %55, 1
  %58 = fadd fast float %53, %56
  %59 = fadd fast float %54, %57
  %60 = call float @dx.op.unary.f32(i32 7, float %58)  ; Saturate(value)
  %61 = call float @dx.op.unary.f32(i32 7, float %59)  ; Saturate(value)
  %62 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %19, float %60, float %61, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %63 = extractvalue %dx.types.ResRet.f32 %62, 0
  %64 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %65 = extractvalue %dx.types.CBufRet.f32 %64, 0
  %66 = fmul fast float %65, %63
  %67 = fsub fast float %58, %60
  %68 = fsub fast float %59, %61
  %69 = extractvalue %dx.types.CBufRet.f32 %50, 0
  %70 = extractvalue %dx.types.CBufRet.f32 %50, 1
  %71 = fmul fast float %69, %67
  %72 = fmul fast float %70, %68
  %73 = fmul fast float %71, %71
  %74 = fmul fast float %72, %72
  %75 = fadd fast float %73, %74
  %76 = call float @dx.op.unary.f32(i32 24, float %75)  ; Sqrt(value)
  %77 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %78 = extractvalue %dx.types.CBufRet.f32 %77, 3
  %79 = fmul fast float %78, %76
  %80 = call float @dx.op.unary.f32(i32 7, float %79)  ; Saturate(value)
  %81 = extractvalue %dx.types.CBufRet.f32 %77, 2
  %82 = fsub fast float %81, %66
  %83 = fmul fast float %82, %80
  %84 = extractvalue %dx.types.CBufRet.f32 %64, 1
  %85 = fadd fast float %66, %46
  %86 = fadd fast float %85, %84
  %87 = fadd fast float %86, %83
  br label %88

; <label>:88                                      ; preds = %49, %30
  %89 = phi float [ %87, %49 ], [ %46, %30 ]
  %90 = and i32 %40, 268435456
  %91 = icmp ne i32 %90, 0
  %92 = or i32 %35, 16
  %93 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %92, i32 undef)  ; BufferLoad(srv,index,wot)
  %94 = extractvalue %dx.types.ResRet.i32 %93, 0
  %95 = extractvalue %dx.types.ResRet.i32 %93, 1
  %96 = extractvalue %dx.types.ResRet.i32 %93, 2
  %97 = extractvalue %dx.types.ResRet.i32 %93, 3
  %98 = and i32 %94, 65535
  %99 = call float @dx.op.legacyF16ToF32(i32 131, i32 %98)  ; LegacyF16ToF32(value)
  %100 = lshr i32 %94, 16
  %101 = call float @dx.op.legacyF16ToF32(i32 131, i32 %100)  ; LegacyF16ToF32(value)
  %102 = and i32 %95, 1023
  %103 = uitofp i32 %102 to float
  %104 = lshr i32 %95, 10
  %105 = and i32 %104, 1023
  %106 = uitofp i32 %105 to float
  %107 = lshr i32 %95, 20
  %108 = and i32 %107, 1023
  %109 = uitofp i32 %108 to float
  %110 = fmul fast float %103, 0x3F60040100000000
  %111 = fmul fast float %106, 0x3F60040100000000
  %112 = fmul fast float %109, 0x3F60040100000000
  %113 = fadd fast float %110, -1.000000e+00
  %114 = fadd fast float %111, -1.000000e+00
  %115 = fadd fast float %112, -1.000000e+00
  %116 = and i32 %96, 1023
  %117 = uitofp i32 %116 to float
  %118 = lshr i32 %96, 10
  %119 = and i32 %118, 1023
  %120 = uitofp i32 %119 to float
  %121 = lshr i32 %96, 20
  %122 = and i32 %121, 1023
  %123 = uitofp i32 %122 to float
  %124 = fmul fast float %117, 0x3F60040100000000
  %125 = fmul fast float %120, 0x3F60040100000000
  %126 = fmul fast float %123, 0x3F60040100000000
  %127 = fadd fast float %124, -1.000000e+00
  %128 = fadd fast float %125, -1.000000e+00
  %129 = fadd fast float %126, -1.000000e+00
  %130 = and i32 %97, 65535
  %131 = call float @dx.op.legacyF16ToF32(i32 131, i32 %130)  ; LegacyF16ToF32(value)
  %132 = lshr i32 %97, 16
  %133 = call float @dx.op.legacyF16ToF32(i32 131, i32 %132)  ; LegacyF16ToF32(value)
  %134 = call float @dx.op.unary.f32(i32 13, float %131)  ; Sin(value)
  %135 = call float @dx.op.unary.f32(i32 12, float %131)  ; Cos(value)
  %136 = fmul fast float %135, %113
  %137 = fmul fast float %135, %114
  %138 = fmul fast float %135, %115
  %139 = fmul fast float %134, %127
  %140 = fmul fast float %128, %134
  %141 = fmul fast float %129, %134
  %142 = fadd fast float %136, %139
  %143 = fadd fast float %137, %140
  %144 = fadd fast float %138, %141
  %145 = fmul fast float %142, %99
  %146 = fmul fast float %143, %99
  %147 = fmul fast float %144, %99
  %148 = fmul fast float %134, %113
  %149 = fmul fast float %114, %134
  %150 = fmul fast float %115, %134
  %151 = fmul fast float %135, %127
  %152 = fmul fast float %135, %128
  %153 = fmul fast float %135, %129
  %154 = fsub fast float %148, %151
  %155 = fsub fast float %149, %152
  %156 = fsub fast float %150, %153
  %157 = fmul fast float %154, %101
  %158 = fmul fast float %155, %101
  %159 = fmul fast float %156, %101
  %160 = add i32 %42, %23
  %161 = add i32 %43, %24
  %162 = uitofp i32 %23 to float
  %163 = uitofp i32 %24 to float
  %164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %165 = extractvalue %dx.types.CBufRet.f32 %164, 1
  %166 = fdiv fast float %162, %165
  %167 = fdiv fast float %163, %165
  %168 = extractvalue %dx.types.CBufRet.f32 %164, 2
  %169 = fadd fast float %168, %166
  %170 = fadd fast float %168, %167
  %171 = fmul fast float %169, %145
  %172 = fmul fast float %169, %146
  %173 = fmul fast float %169, %147
  %174 = fmul fast float %170, %157
  %175 = fmul fast float %170, %158
  %176 = fmul fast float %170, %159
  %177 = fadd fast float %174, %171
  %178 = fmul fast float %177, 2.000000e+00
  %179 = fsub fast float %44, %145
  %180 = fsub fast float %179, %157
  %181 = fadd fast float %180, %178
  %182 = fadd fast float %175, %172
  %183 = fmul fast float %182, 2.000000e+00
  %184 = fsub fast float %45, %146
  %185 = fsub fast float %184, %158
  %186 = fadd fast float %185, %183
  %187 = fadd fast float %176, %173
  %188 = fmul fast float %187, 2.000000e+00
  %189 = fsub fast float %89, %147
  %190 = fsub fast float %189, %159
  %191 = fadd fast float %190, %188
  %192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %193 = extractvalue %dx.types.CBufRet.f32 %192, 0
  %194 = extractvalue %dx.types.CBufRet.f32 %192, 1
  %195 = extractvalue %dx.types.CBufRet.f32 %192, 2
  %196 = fsub fast float %181, %193
  %197 = fsub fast float %186, %194
  %198 = fsub fast float %191, %195
  %199 = call float @dx.op.dot3.f32(i32 55, float %196, float %197, float %198, float %196, float %197, float %198)  ; Dot3(ax,ay,az,bx,by,bz)
  %200 = call float @dx.op.unary.f32(i32 25, float %199)  ; Rsqrt(value)
  %201 = fmul fast float %196, %200
  %202 = fmul fast float %197, %200
  %203 = fmul fast float %198, %200
  %204 = fsub fast float -0.000000e+00, %201
  %205 = fsub fast float -0.000000e+00, %202
  %206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %34, i32 0)  ; BufferLoad(srv,index,wot)
  %207 = extractvalue %dx.types.ResRet.i32 %206, 0
  %208 = and i32 %26, 31
  %209 = shl i32 1, %208
  %210 = shl i32 %209, %208
  %211 = shl i32 %24, %208
  %212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %34, i32 0)  ; BufferLoad(srv,index,wot)
  %213 = extractvalue %dx.types.ResRet.i32 %212, 0
  %214 = extractvalue %dx.types.CBufRet.i32 %25, 1
  %215 = icmp ne i32 %214, 0
  %216 = icmp ne i32 %213, 262144
  %217 = and i1 %216, %215
  %218 = icmp ne i32 %207, 0
  %219 = and i1 %218, %217
  br i1 %219, label %220, label %251, !dx.controlflow.hints !38

; <label>:220                                     ; preds = %88
  br label %221

; <label>:221                                     ; preds = %221, %220
  %222 = phi i32 [ %247, %221 ], [ %207, %220 ]
  %223 = phi float [ %245, %221 ], [ 0.000000e+00, %220 ]
  %224 = phi float [ %242, %221 ], [ 0.000000e+00, %220 ]
  %225 = phi float [ %243, %221 ], [ 0.000000e+00, %220 ]
  %226 = phi float [ %244, %221 ], [ 0.000000e+00, %220 ]
  %227 = phi i32 [ %248, %221 ], [ 0, %220 ]
  %228 = mul i32 %227, %210
  %229 = add i32 %211, %23
  %230 = add i32 %229, %213
  %231 = add i32 %230, %228
  %232 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %231, i32 undef)  ; BufferLoad(srv,index,wot)
  %233 = extractvalue %dx.types.ResRet.f32 %232, 0
  %234 = extractvalue %dx.types.ResRet.f32 %232, 1
  %235 = extractvalue %dx.types.ResRet.f32 %232, 2
  %236 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %231, i32 undef)  ; BufferLoad(srv,index,wot)
  %237 = extractvalue %dx.types.ResRet.f32 %236, 0
  %238 = fmul fast float %237, %237
  %239 = fmul fast float %238, %233
  %240 = fmul fast float %238, %234
  %241 = fmul fast float %238, %235
  %242 = fadd fast float %239, %224
  %243 = fadd fast float %240, %225
  %244 = fadd fast float %241, %226
  %245 = fadd fast float %238, %223
  %246 = add i32 %222, -1
  %247 = and i32 %246, %222
  %248 = add i32 %227, 1
  %249 = icmp eq i32 %247, 0
  br i1 %249, label %250, label %221

; <label>:250                                     ; preds = %221
  br label %251

; <label>:251                                     ; preds = %250, %88
  %252 = phi float [ 0.000000e+00, %88 ], [ %245, %250 ]
  %253 = phi float [ 0.000000e+00, %88 ], [ %242, %250 ]
  %254 = phi float [ 0.000000e+00, %88 ], [ %243, %250 ]
  %255 = phi float [ 0.000000e+00, %88 ], [ %244, %250 ]
  %256 = fcmp fast ogt float %252, 0.000000e+00
  %257 = fcmp fast une float %252, 1.000000e+00
  %258 = and i1 %256, %257
  br i1 %258, label %259, label %264, !dx.controlflow.hints !39

; <label>:259                                     ; preds = %251
  %260 = fdiv fast float 1.000000e+00, %252
  %261 = fmul fast float %260, %253
  %262 = fmul fast float %260, %254
  %263 = fmul fast float %260, %255
  br label %264

; <label>:264                                     ; preds = %259, %251
  %265 = phi float [ 1.000000e+00, %259 ], [ %252, %251 ]
  %266 = phi float [ %261, %259 ], [ %253, %251 ]
  %267 = phi float [ %262, %259 ], [ %254, %251 ]
  %268 = phi float [ %263, %259 ], [ %255, %251 ]
  %269 = call float @dx.op.unary.f32(i32 7, float %265)  ; Saturate(value)
  %270 = fsub fast float 1.000000e+00, %269
  %271 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %272 = extractvalue %dx.types.CBufRet.i32 %271, 0
  %273 = icmp eq i32 %272, 1
  br i1 %273, label %274, label %304, !dx.controlflow.hints !40

; <label>:274                                     ; preds = %264
  %275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %276 = extractvalue %dx.types.CBufRet.f32 %275, 0
  %277 = extractvalue %dx.types.CBufRet.f32 %275, 1
  %278 = fsub fast float %181, %276
  %279 = fsub fast float %186, %277
  %280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %281 = extractvalue %dx.types.CBufRet.f32 %280, 0
  %282 = extractvalue %dx.types.CBufRet.f32 %280, 1
  %283 = fmul fast float %278, %281
  %284 = fmul fast float %279, %282
  %285 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %19, float %283, float %284, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %286 = extractvalue %dx.types.ResRet.f32 %285, 0
  %287 = fcmp fast ogt float %286, 0.000000e+00
  %288 = extractvalue %dx.types.CBufRet.i32 %271, 3
  %289 = icmp ne i32 %288, 0
  %290 = and i1 %287, %289
  br i1 %290, label %291, label %304, !dx.controlflow.hints !41

; <label>:291                                     ; preds = %274
  %292 = fmul fast float %196, %196
  %293 = fmul fast float %197, %197
  %294 = fadd fast float %292, %293
  %295 = uitofp i32 %288 to float
  %296 = fmul fast float %295, %295
  %297 = fcmp fast ogt float %294, %296
  br i1 %297, label %304, label %298, !dx.controlflow.hints !42

; <label>:298                                     ; preds = %291
  %299 = call float @dx.op.unary.f32(i32 24, float %294)  ; Sqrt(value)
  %300 = fsub fast float %295, %299
  %301 = fmul fast float %300, 0x3F75555560000000
  %302 = call float @dx.op.unary.f32(i32 7, float %301)  ; Saturate(value)
  %303 = call float @dx.op.binary.f32(i32 36, float %302, float %286)  ; FMin(a,b)
  br label %304

; <label>:304                                     ; preds = %298, %291, %274, %264
  %305 = phi float [ 1.000000e+00, %264 ], [ %303, %298 ], [ %286, %274 ], [ 0.000000e+00, %291 ]
  %306 = fcmp fast ogt float %270, 0.000000e+00
  %307 = fcmp fast olt float %305, 1.000000e+00
  %308 = or i1 %306, %307
  br i1 %308, label %309, label %990, !dx.controlflow.hints !43

; <label>:309                                     ; preds = %304
  %310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %311 = extractvalue %dx.types.CBufRet.f32 %310, 0
  %312 = extractvalue %dx.types.CBufRet.f32 %310, 1
  %313 = fsub fast float %181, %311
  %314 = fsub fast float %186, %312
  %315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %316 = extractvalue %dx.types.CBufRet.f32 %315, 0
  %317 = extractvalue %dx.types.CBufRet.f32 %315, 1
  %318 = fmul fast float %313, %316
  %319 = fmul fast float %314, %317
  %320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %321 = extractvalue %dx.types.CBufRet.f32 %320, 0
  %322 = fmul fast float %321, %318
  %323 = extractvalue %dx.types.CBufRet.f32 %320, 1
  %324 = fadd fast float %322, %323
  %325 = extractvalue %dx.types.CBufRet.f32 %320, 2
  %326 = fmul fast float %325, %319
  %327 = extractvalue %dx.types.CBufRet.f32 %320, 3
  %328 = fadd fast float %326, %327
  %329 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %19, float %324, float %328, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %330 = extractvalue %dx.types.ResRet.f32 %329, 0
  %331 = extractvalue %dx.types.ResRet.f32 %329, 1
  %332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %333 = extractvalue %dx.types.CBufRet.f32 %332, 1
  %334 = extractvalue %dx.types.CBufRet.f32 %332, 0
  %335 = fsub fast float %333, %334
  %336 = fmul fast float %335, %330
  %337 = fadd fast float %336, %334
  %338 = extractvalue %dx.types.CBufRet.f32 %332, 3
  %339 = extractvalue %dx.types.CBufRet.f32 %332, 2
  %340 = fsub fast float %338, %339
  %341 = fmul fast float %340, %331
  %342 = fadd fast float %341, %339
  %343 = fsub fast float %191, %337
  %344 = fsub fast float %342, %337
  %345 = fdiv fast float %343, %344
  %346 = call float @dx.op.unary.f32(i32 7, float %345)  ; Saturate(value)
  %347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %348 = extractvalue %dx.types.CBufRet.f32 %347, 0
  %349 = fmul fast float %348, %346
  %350 = extractvalue %dx.types.CBufRet.f32 %347, 1
  %351 = fadd fast float %349, %350
  %352 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %19, float %324, float %328, float %351, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %353 = extractvalue %dx.types.ResRet.f32 %352, 0
  %354 = extractvalue %dx.types.ResRet.f32 %352, 1
  %355 = extractvalue %dx.types.ResRet.f32 %352, 2
  %356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %357 = extractvalue %dx.types.CBufRet.f32 %356, 0
  %358 = extractvalue %dx.types.CBufRet.f32 %356, 1
  %359 = extractvalue %dx.types.CBufRet.f32 %356, 2
  %360 = fmul fast float %357, %353
  %361 = fmul fast float %358, %354
  %362 = fmul fast float %359, %355
  %363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %364 = extractvalue %dx.types.CBufRet.f32 %363, 0
  %365 = extractvalue %dx.types.CBufRet.f32 %363, 1
  %366 = extractvalue %dx.types.CBufRet.f32 %363, 2
  %367 = fadd fast float %360, %364
  %368 = fadd fast float %361, %365
  %369 = fadd fast float %362, %366
  %370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %371 = extractvalue %dx.types.CBufRet.f32 %370, 0
  %372 = fmul fast float %371, %318
  %373 = extractvalue %dx.types.CBufRet.f32 %370, 1
  %374 = fadd fast float %372, %373
  %375 = extractvalue %dx.types.CBufRet.f32 %370, 2
  %376 = fmul fast float %375, %319
  %377 = extractvalue %dx.types.CBufRet.f32 %370, 3
  %378 = fadd fast float %376, %377
  %379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %380 = extractvalue %dx.types.CBufRet.f32 %379, 0
  %381 = extractvalue %dx.types.CBufRet.f32 %379, 1
  %382 = extractvalue %dx.types.CBufRet.f32 %379, 2
  %383 = extractvalue %dx.types.CBufRet.f32 %379, 3
  %384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %385 = extractvalue %dx.types.CBufRet.f32 %384, 0
  %386 = extractvalue %dx.types.CBufRet.f32 %384, 1
  %387 = extractvalue %dx.types.CBufRet.f32 %384, 2
  %388 = extractvalue %dx.types.CBufRet.f32 %384, 3
  %389 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %19, float %374, float %378, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %390 = extractvalue %dx.types.ResRet.f32 %389, 0
  %391 = extractvalue %dx.types.ResRet.f32 %389, 1
  %392 = extractvalue %dx.types.ResRet.f32 %389, 2
  %393 = extractvalue %dx.types.ResRet.f32 %389, 3
  %394 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %19, float %374, float %378, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %395 = extractvalue %dx.types.ResRet.f32 %394, 0
  %396 = extractvalue %dx.types.ResRet.f32 %394, 1
  %397 = extractvalue %dx.types.ResRet.f32 %394, 2
  %398 = extractvalue %dx.types.ResRet.f32 %394, 3
  %399 = fmul fast float %390, %367
  %400 = fmul fast float %395, %367
  %401 = fmul fast float %397, %367
  %402 = fmul fast float %393, %367
  %403 = fadd fast float %399, %380
  %404 = fadd fast float %400, %381
  %405 = fadd fast float %401, %382
  %406 = fadd fast float %402, %383
  %407 = fmul fast float %391, %367
  %408 = fmul fast float %396, %367
  %409 = fadd fast float %407, %385
  %410 = fadd fast float %408, %386
  %411 = fmul fast float %392, %367
  %412 = fmul fast float %398, %367
  %413 = fadd fast float %411, %387
  %414 = fadd fast float %412, %388
  %415 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %19, float %374, float %378, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %416 = extractvalue %dx.types.ResRet.f32 %415, 0
  %417 = extractvalue %dx.types.ResRet.f32 %415, 1
  %418 = extractvalue %dx.types.ResRet.f32 %415, 2
  %419 = extractvalue %dx.types.ResRet.f32 %415, 3
  %420 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %19, float %374, float %378, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %421 = extractvalue %dx.types.ResRet.f32 %420, 0
  %422 = extractvalue %dx.types.ResRet.f32 %420, 1
  %423 = extractvalue %dx.types.ResRet.f32 %420, 2
  %424 = extractvalue %dx.types.ResRet.f32 %420, 3
  %425 = fmul fast float %416, %368
  %426 = fmul fast float %421, %368
  %427 = fmul fast float %423, %368
  %428 = fmul fast float %419, %368
  %429 = fadd fast float %403, %425
  %430 = fadd fast float %404, %426
  %431 = fadd fast float %405, %427
  %432 = fadd fast float %406, %428
  %433 = fmul fast float %417, %368
  %434 = fmul fast float %422, %368
  %435 = fadd fast float %409, %433
  %436 = fadd fast float %410, %434
  %437 = fmul fast float %418, %368
  %438 = fmul fast float %424, %368
  %439 = fadd fast float %413, %437
  %440 = fadd fast float %414, %438
  %441 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %19, float %374, float %378, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %442 = extractvalue %dx.types.ResRet.f32 %441, 0
  %443 = extractvalue %dx.types.ResRet.f32 %441, 1
  %444 = extractvalue %dx.types.ResRet.f32 %441, 2
  %445 = extractvalue %dx.types.ResRet.f32 %441, 3
  %446 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %19, float %374, float %378, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %447 = extractvalue %dx.types.ResRet.f32 %446, 0
  %448 = extractvalue %dx.types.ResRet.f32 %446, 1
  %449 = extractvalue %dx.types.ResRet.f32 %446, 2
  %450 = extractvalue %dx.types.ResRet.f32 %446, 3
  %451 = fmul fast float %442, %369
  %452 = fmul fast float %447, %369
  %453 = fmul fast float %449, %369
  %454 = fmul fast float %445, %369
  %455 = fadd fast float %429, %451
  %456 = fadd fast float %430, %452
  %457 = fadd fast float %431, %453
  %458 = fadd fast float %432, %454
  %459 = fmul fast float %443, %369
  %460 = fmul fast float %448, %369
  %461 = fadd fast float %435, %459
  %462 = fadd fast float %436, %460
  %463 = fmul fast float %444, %369
  %464 = fmul fast float %450, %369
  %465 = fadd fast float %439, %463
  %466 = fadd fast float %440, %464
  %467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %468 = extractvalue %dx.types.CBufRet.f32 %467, 0
  %469 = fsub fast float %181, %468
  %470 = fsub fast float %311, %181
  %471 = call float @dx.op.binary.f32(i32 35, float %470, float %469)  ; FMax(a,b)
  %472 = extractvalue %dx.types.CBufRet.f32 %467, 1
  %473 = fsub fast float %186, %472
  %474 = fsub fast float %312, %186
  %475 = call float @dx.op.binary.f32(i32 35, float %474, float %473)  ; FMax(a,b)
  %476 = call float @dx.op.binary.f32(i32 35, float %471, float %475)  ; FMax(a,b)
  %477 = extractvalue %dx.types.CBufRet.f32 %315, 3
  %478 = fmul fast float %477, %476
  %479 = call float @dx.op.unary.f32(i32 7, float %478)  ; Saturate(value)
  %480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %481 = extractvalue %dx.types.CBufRet.f32 %480, 0
  %482 = extractvalue %dx.types.CBufRet.f32 %480, 1
  %483 = extractvalue %dx.types.CBufRet.f32 %480, 2
  %484 = extractvalue %dx.types.CBufRet.f32 %480, 3
  %485 = fsub fast float %481, %455
  %486 = fsub fast float %482, %456
  %487 = fsub fast float %483, %457
  %488 = fsub fast float %484, %458
  %489 = fmul fast float %485, %479
  %490 = fmul fast float %486, %479
  %491 = fmul fast float %487, %479
  %492 = fmul fast float %488, %479
  %493 = fadd fast float %489, %455
  %494 = fadd fast float %490, %456
  %495 = fadd fast float %491, %457
  %496 = fadd fast float %492, %458
  %497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %498 = extractvalue %dx.types.CBufRet.f32 %497, 0
  %499 = extractvalue %dx.types.CBufRet.f32 %497, 1
  %500 = fsub fast float %498, %461
  %501 = fsub fast float %499, %462
  %502 = fmul fast float %500, %479
  %503 = fmul fast float %501, %479
  %504 = fadd fast float %502, %461
  %505 = fadd fast float %503, %462
  %506 = extractvalue %dx.types.CBufRet.f32 %497, 2
  %507 = extractvalue %dx.types.CBufRet.f32 %497, 3
  %508 = fsub fast float %506, %465
  %509 = fsub fast float %507, %466
  %510 = fmul fast float %508, %479
  %511 = fmul fast float %509, %479
  %512 = fadd fast float %510, %465
  %513 = fadd fast float %511, %466
  %514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %515 = extractvalue %dx.types.CBufRet.f32 %514, 0
  %516 = fmul fast float %515, %493
  %517 = fmul fast float %515, %494
  %518 = fmul fast float %515, %495
  %519 = fmul fast float %515, %496
  %520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %521 = extractvalue %dx.types.CBufRet.f32 %520, 0
  %522 = fmul fast float %521, %504
  %523 = fmul fast float %521, %505
  %524 = fadd fast float %522, %516
  %525 = fadd fast float %523, %518
  %526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %527 = extractvalue %dx.types.CBufRet.f32 %526, 0
  %528 = fmul fast float %527, %512
  %529 = fmul fast float %527, %513
  %530 = fadd fast float %524, %528
  %531 = fadd fast float %525, %529
  %532 = extractvalue %dx.types.CBufRet.f32 %514, 1
  %533 = fmul fast float %532, %493
  %534 = fmul fast float %532, %494
  %535 = fmul fast float %532, %495
  %536 = fmul fast float %532, %496
  %537 = extractvalue %dx.types.CBufRet.f32 %520, 1
  %538 = fmul fast float %537, %504
  %539 = fmul fast float %537, %505
  %540 = fadd fast float %538, %533
  %541 = fadd fast float %539, %535
  %542 = extractvalue %dx.types.CBufRet.f32 %526, 1
  %543 = fmul fast float %542, %512
  %544 = fmul fast float %542, %513
  %545 = fadd fast float %540, %543
  %546 = fadd fast float %541, %544
  %547 = extractvalue %dx.types.CBufRet.f32 %514, 2
  %548 = fmul fast float %547, %493
  %549 = fmul fast float %547, %494
  %550 = fmul fast float %547, %495
  %551 = fmul fast float %547, %496
  %552 = extractvalue %dx.types.CBufRet.f32 %520, 2
  %553 = fmul fast float %552, %504
  %554 = fmul fast float %552, %505
  %555 = fadd fast float %553, %548
  %556 = fadd fast float %554, %550
  %557 = extractvalue %dx.types.CBufRet.f32 %526, 2
  %558 = fmul fast float %557, %512
  %559 = fmul fast float %557, %513
  %560 = fadd fast float %555, %558
  %561 = fadd fast float %556, %559
  %562 = fmul fast float %549, %549
  %563 = fmul fast float %561, %561
  %564 = fmul fast float %551, %551
  %565 = fadd fast float %564, %562
  %566 = fadd fast float %565, %563
  %567 = call float @dx.op.unary.f32(i32 24, float %566)  ; Sqrt(value)
  %568 = fcmp fast ugt float %567, 0.000000e+00
  br i1 %568, label %569, label %584, !dx.controlflow.hints !44

; <label>:569                                     ; preds = %309
  %570 = fsub fast float -0.000000e+00, %551
  %571 = fdiv fast float %570, %567
  %572 = fsub fast float -0.000000e+00, %549
  %573 = fdiv fast float %572, %567
  %574 = fdiv fast float %561, %567
  %575 = fmul fast float %560, 0x3FE279A760000000
  %576 = fmul fast float %573, %549
  %577 = fmul fast float %574, %561
  %578 = fmul fast float %571, %551
  %579 = fadd fast float %576, %578
  %580 = fsub fast float %579, %577
  %581 = call float @dx.op.unary.f32(i32 6, float %580)  ; FAbs(value)
  %582 = fadd fast float %581, 0x3DDB7CDFE0000000
  %583 = fdiv fast float %575, %582
  br label %584

; <label>:584                                     ; preds = %569, %309
  %585 = phi float [ %583, %569 ], [ 1.000000e+00, %309 ]
  %586 = fmul fast float %534, %534
  %587 = fmul fast float %546, %546
  %588 = fmul fast float %536, %536
  %589 = fadd fast float %588, %586
  %590 = fadd fast float %589, %587
  %591 = call float @dx.op.unary.f32(i32 24, float %590)  ; Sqrt(value)
  %592 = fcmp fast ugt float %591, 0.000000e+00
  br i1 %592, label %593, label %608, !dx.controlflow.hints !44

; <label>:593                                     ; preds = %584
  %594 = fsub fast float -0.000000e+00, %536
  %595 = fdiv fast float %594, %591
  %596 = fsub fast float -0.000000e+00, %534
  %597 = fdiv fast float %596, %591
  %598 = fdiv fast float %546, %591
  %599 = fmul fast float %545, 0x3FE279A760000000
  %600 = fmul fast float %597, %534
  %601 = fmul fast float %598, %546
  %602 = fmul fast float %595, %536
  %603 = fadd fast float %600, %602
  %604 = fsub fast float %603, %601
  %605 = call float @dx.op.unary.f32(i32 6, float %604)  ; FAbs(value)
  %606 = fadd fast float %605, 0x3DDB7CDFE0000000
  %607 = fdiv fast float %599, %606
  br label %608

; <label>:608                                     ; preds = %593, %584
  %609 = phi float [ %607, %593 ], [ 1.000000e+00, %584 ]
  %610 = call float @dx.op.binary.f32(i32 36, float %609, float %585)  ; FMin(a,b)
  %611 = fmul fast float %517, %517
  %612 = fmul fast float %531, %531
  %613 = fmul fast float %519, %519
  %614 = fadd fast float %613, %611
  %615 = fadd fast float %614, %612
  %616 = call float @dx.op.unary.f32(i32 24, float %615)  ; Sqrt(value)
  %617 = fcmp fast ugt float %616, 0.000000e+00
  br i1 %617, label %618, label %633, !dx.controlflow.hints !44

; <label>:618                                     ; preds = %608
  %619 = fsub fast float -0.000000e+00, %519
  %620 = fdiv fast float %619, %616
  %621 = fsub fast float -0.000000e+00, %517
  %622 = fdiv fast float %621, %616
  %623 = fdiv fast float %531, %616
  %624 = fmul fast float %530, 0x3FE279A760000000
  %625 = fmul fast float %622, %517
  %626 = fmul fast float %623, %531
  %627 = fmul fast float %620, %519
  %628 = fadd fast float %625, %627
  %629 = fsub fast float %628, %626
  %630 = call float @dx.op.unary.f32(i32 6, float %629)  ; FAbs(value)
  %631 = fadd fast float %630, 0x3DDB7CDFE0000000
  %632 = fdiv fast float %624, %631
  br label %633

; <label>:633                                     ; preds = %618, %608
  %634 = phi float [ %632, %618 ], [ 1.000000e+00, %608 ]
  %635 = call float @dx.op.binary.f32(i32 36, float %634, float %610)  ; FMin(a,b)
  %636 = call float @dx.op.unary.f32(i32 7, float %635)  ; Saturate(value)
  %637 = fcmp fast olt float %636, 1.000000e+00
  br i1 %637, label %638, label %648, !dx.controlflow.hints !45

; <label>:638                                     ; preds = %633
  %639 = fmul fast float %636, %517
  %640 = fmul fast float %636, %531
  %641 = fmul fast float %636, %519
  %642 = fmul fast float %636, %534
  %643 = fmul fast float %636, %546
  %644 = fmul fast float %636, %536
  %645 = fmul fast float %636, %549
  %646 = fmul fast float %636, %561
  %647 = fmul fast float %636, %551
  br label %648

; <label>:648                                     ; preds = %638, %633
  %649 = phi float [ %645, %638 ], [ %549, %633 ]
  %650 = phi float [ %646, %638 ], [ %561, %633 ]
  %651 = phi float [ %647, %638 ], [ %551, %633 ]
  %652 = phi float [ %642, %638 ], [ %534, %633 ]
  %653 = phi float [ %643, %638 ], [ %546, %633 ]
  %654 = phi float [ %644, %638 ], [ %536, %633 ]
  %655 = phi float [ %639, %638 ], [ %517, %633 ]
  %656 = phi float [ %640, %638 ], [ %531, %633 ]
  %657 = phi float [ %641, %638 ], [ %519, %633 ]
  %658 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %530)  ; FMax(a,b)
  %659 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %545)  ; FMax(a,b)
  %660 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %560)  ; FMax(a,b)
  %661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %662 = extractvalue %dx.types.CBufRet.f32 %661, 0
  %663 = fcmp fast ogt float %662, 0.000000e+00
  %664 = fcmp fast oge float %318, 0.000000e+00
  %665 = and i1 %664, %663
  %666 = fcmp fast ole float %318, 1.000000e+00
  %667 = and i1 %666, %665
  %668 = fcmp fast oge float %319, 0.000000e+00
  %669 = and i1 %668, %667
  %670 = fcmp fast ole float %319, 1.000000e+00
  %671 = and i1 %670, %669
  br i1 %671, label %672, label %812, !dx.controlflow.hints !46

; <label>:672                                     ; preds = %648
  %673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %674 = extractvalue %dx.types.CBufRet.f32 %673, 2
  %675 = extractvalue %dx.types.CBufRet.f32 %673, 3
  %676 = fmul fast float %674, %318
  %677 = fmul fast float %675, %319
  %678 = call float @dx.op.unary.f32(i32 27, float %676)  ; Round_ni(value)
  %679 = call float @dx.op.unary.f32(i32 27, float %677)  ; Round_ni(value)
  %680 = fptosi float %678 to i32
  %681 = fptosi float %679 to i32
  %682 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %13, i32 0, i32 %680, i32 %681, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %683 = extractvalue %dx.types.ResRet.i32 %682, 0
  %684 = and i32 %683, 65535
  %685 = lshr i32 %683, 16
  %686 = icmp eq i32 %684, 65535
  br i1 %686, label %723, label %687, !dx.controlflow.hints !47

; <label>:687                                     ; preds = %672
  %688 = extractvalue %dx.types.CBufRet.f32 %661, 1
  %689 = extractvalue %dx.types.CBufRet.f32 %673, 0
  %690 = extractvalue %dx.types.CBufRet.f32 %673, 1
  %691 = fmul fast float %689, %318
  %692 = fmul fast float %690, %319
  %693 = fmul fast float %691, 1.250000e-01
  %694 = fmul fast float %692, 1.250000e-01
  %695 = call float @dx.op.unary.f32(i32 27, float %693)  ; Round_ni(value)
  %696 = call float @dx.op.unary.f32(i32 27, float %694)  ; Round_ni(value)
  %697 = fmul fast float %695, 8.000000e+00
  %698 = fmul fast float %696, 8.000000e+00
  %699 = and i32 %683, 255
  %700 = lshr i32 %683, 8
  %701 = and i32 %700, 255
  %702 = mul nuw nsw i32 %699, 9
  %703 = uitofp i32 %702 to float
  %704 = mul nuw nsw i32 %701, 9
  %705 = uitofp i32 %704 to float
  %706 = fadd fast float %703, 5.000000e-01
  %707 = fadd fast float %706, %691
  %708 = fsub fast float %707, %697
  %709 = fadd fast float %705, 5.000000e-01
  %710 = fadd fast float %709, %692
  %711 = fsub fast float %710, %698
  %712 = fdiv fast float %708, %662
  %713 = fdiv fast float %711, %688
  %714 = fmul fast float %346, 4.375000e-01
  %715 = fadd fast float %714, 3.125000e-02
  %716 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %19, float %712, float %713, float %715, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %717 = extractvalue %dx.types.ResRet.f32 %716, 0
  %718 = extractvalue %dx.types.ResRet.f32 %716, 1
  %719 = extractvalue %dx.types.ResRet.f32 %716, 2
  %720 = fadd fast float %717, %658
  %721 = fadd fast float %718, %659
  %722 = fadd fast float %719, %660
  br label %723

; <label>:723                                     ; preds = %687, %672
  %724 = phi float [ %722, %687 ], [ %660, %672 ]
  %725 = phi float [ %721, %687 ], [ %659, %672 ]
  %726 = phi float [ %720, %687 ], [ %658, %672 ]
  %727 = icmp eq i32 %685, 65535
  br i1 %727, label %812, label %728, !dx.controlflow.hints !48

; <label>:728                                     ; preds = %723
  %729 = extractvalue %dx.types.CBufRet.f32 %661, 1
  %730 = extractvalue %dx.types.CBufRet.f32 %673, 0
  %731 = extractvalue %dx.types.CBufRet.f32 %673, 1
  %732 = fmul fast float %730, %318
  %733 = fmul fast float %731, %319
  %734 = fmul fast float %732, 1.250000e-01
  %735 = fmul fast float %733, 1.250000e-01
  %736 = call float @dx.op.unary.f32(i32 27, float %734)  ; Round_ni(value)
  %737 = call float @dx.op.unary.f32(i32 27, float %735)  ; Round_ni(value)
  %738 = fmul fast float %736, 8.000000e+00
  %739 = fmul fast float %737, 8.000000e+00
  %740 = fsub fast float %732, %738
  %741 = fsub fast float %733, %739
  %742 = fadd fast float %740, 5.000000e-01
  %743 = fadd fast float %741, 5.000000e-01
  %744 = and i32 %685, 255
  %745 = lshr i32 %683, 24
  %746 = mul nuw nsw i32 %744, 9
  %747 = uitofp i32 %746 to float
  %748 = mul nuw nsw i32 %745, 9
  %749 = uitofp i32 %748 to float
  %750 = fadd fast float %742, %747
  %751 = fadd fast float %743, %749
  %752 = fdiv fast float %750, %662
  %753 = fdiv fast float %751, %729
  %754 = fmul fast float %346, 4.375000e-01
  %755 = fadd fast float %754, 3.125000e-02
  %756 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %19, float %752, float %753, float %755, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %757 = extractvalue %dx.types.ResRet.f32 %756, 0
  %758 = extractvalue %dx.types.ResRet.f32 %756, 1
  %759 = extractvalue %dx.types.ResRet.f32 %756, 2
  %760 = fadd fast float %754, 5.312500e-01
  %761 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %19, float %752, float %753, float %760, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %762 = extractvalue %dx.types.ResRet.f32 %761, 0
  %763 = extractvalue %dx.types.ResRet.f32 %761, 1
  %764 = extractvalue %dx.types.ResRet.f32 %761, 2
  %765 = fmul fast float %762, 2.000000e+00
  %766 = fmul fast float %763, 2.000000e+00
  %767 = fmul fast float %764, 2.000000e+00
  %768 = fadd fast float %765, -1.000000e+00
  %769 = fadd fast float %766, -1.000000e+00
  %770 = fadd fast float %767, -1.000000e+00
  %771 = fmul fast float %768, %768
  %772 = fmul fast float %769, %769
  %773 = fadd fast float %771, %772
  %774 = fmul fast float %770, %770
  %775 = fadd fast float %773, %774
  %776 = call float @dx.op.unary.f32(i32 24, float %775)  ; Sqrt(value)
  %777 = fcmp fast ogt float %776, 0.000000e+00
  br i1 %777, label %778, label %782, !dx.controlflow.hints !49

; <label>:778                                     ; preds = %728
  %779 = fdiv fast float %768, %776
  %780 = fdiv fast float %769, %776
  %781 = fdiv fast float %770, %776
  br label %782

; <label>:782                                     ; preds = %778, %728
  %783 = phi float [ %779, %778 ], [ 0.000000e+00, %728 ]
  %784 = phi float [ %780, %778 ], [ 0.000000e+00, %728 ]
  %785 = phi float [ %781, %778 ], [ 0.000000e+00, %728 ]
  %786 = fmul fast float %196, %196
  %787 = fmul fast float %197, %197
  %788 = fadd fast float %786, %787
  %789 = call float @dx.op.unary.f32(i32 24, float %788)  ; Sqrt(value)
  %790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %791 = extractvalue %dx.types.CBufRet.f32 %790, 0
  %792 = extractvalue %dx.types.CBufRet.f32 %790, 1
  %793 = fsub fast float %789, %791
  %794 = fdiv fast float %793, %792
  %795 = call float @dx.op.unary.f32(i32 7, float %794)  ; Saturate(value)
  %796 = fmul fast float %795, 2.000000e+00
  %797 = fsub fast float 3.000000e+00, %796
  %798 = fmul fast float %795, %795
  %799 = fmul fast float %798, %797
  %800 = call float @dx.op.dot3.f32(i32 55, float %783, float %784, float %785, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %801 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %800)  ; FMax(a,b)
  %802 = fmul fast float %801, 0x400C5BF8A0000000
  %803 = fmul fast float %799, %757
  %804 = fmul fast float %803, %802
  %805 = fadd fast float %804, %726
  %806 = fmul fast float %799, %758
  %807 = fmul fast float %806, %802
  %808 = fadd fast float %807, %725
  %809 = fmul fast float %799, %759
  %810 = fmul fast float %809, %802
  %811 = fadd fast float %810, %724
  br label %812

; <label>:812                                     ; preds = %782, %723, %648
  %813 = phi float [ %811, %782 ], [ %724, %723 ], [ %660, %648 ]
  %814 = phi float [ %808, %782 ], [ %725, %723 ], [ %659, %648 ]
  %815 = phi float [ %805, %782 ], [ %726, %723 ], [ %658, %648 ]
  %816 = fcmp fast ogt float %191, %342
  %817 = and i1 %664, %816
  %818 = and i1 %666, %817
  %819 = and i1 %668, %818
  %820 = and i1 %670, %819
  br i1 %820, label %821, label %878, !dx.controlflow.hints !50

; <label>:821                                     ; preds = %812
  %822 = fmul fast float %344, 0x3FC24924A0000000
  %823 = fsub fast float %191, %342
  %824 = fdiv fast float %823, %822
  %825 = call float @dx.op.unary.f32(i32 7, float %824)  ; Saturate(value)
  %826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %827 = extractvalue %dx.types.CBufRet.f32 %826, 0
  %828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %829 = extractvalue %dx.types.CBufRet.f32 %828, 0
  %830 = extractvalue %dx.types.CBufRet.f32 %828, 1
  %831 = extractvalue %dx.types.CBufRet.f32 %828, 2
  %832 = fsub fast float %827, %815
  %833 = fsub fast float %829, %655
  %834 = fsub fast float %830, %656
  %835 = fsub fast float %831, %657
  %836 = fmul fast float %832, %825
  %837 = fmul fast float %833, %825
  %838 = fmul fast float %834, %825
  %839 = fmul fast float %835, %825
  %840 = fadd fast float %836, %815
  %841 = fadd fast float %837, %655
  %842 = fadd fast float %838, %656
  %843 = fadd fast float %839, %657
  %844 = extractvalue %dx.types.CBufRet.f32 %826, 1
  %845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %846 = extractvalue %dx.types.CBufRet.f32 %845, 0
  %847 = extractvalue %dx.types.CBufRet.f32 %845, 1
  %848 = extractvalue %dx.types.CBufRet.f32 %845, 2
  %849 = fsub fast float %844, %814
  %850 = fsub fast float %846, %652
  %851 = fsub fast float %847, %653
  %852 = fsub fast float %848, %654
  %853 = fmul fast float %849, %825
  %854 = fmul fast float %850, %825
  %855 = fmul fast float %851, %825
  %856 = fmul fast float %852, %825
  %857 = fadd fast float %853, %814
  %858 = fadd fast float %854, %652
  %859 = fadd fast float %855, %653
  %860 = fadd fast float %856, %654
  %861 = extractvalue %dx.types.CBufRet.f32 %826, 2
  %862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %863 = extractvalue %dx.types.CBufRet.f32 %862, 0
  %864 = extractvalue %dx.types.CBufRet.f32 %862, 1
  %865 = extractvalue %dx.types.CBufRet.f32 %862, 2
  %866 = fsub fast float %861, %813
  %867 = fsub fast float %863, %649
  %868 = fsub fast float %864, %650
  %869 = fsub fast float %865, %651
  %870 = fmul fast float %866, %825
  %871 = fmul fast float %867, %825
  %872 = fmul fast float %868, %825
  %873 = fmul fast float %869, %825
  %874 = fadd fast float %870, %813
  %875 = fadd fast float %871, %649
  %876 = fadd fast float %872, %650
  %877 = fadd fast float %873, %651
  br label %878

; <label>:878                                     ; preds = %821, %812
  %879 = phi float [ %874, %821 ], [ %813, %812 ]
  %880 = phi float [ %875, %821 ], [ %649, %812 ]
  %881 = phi float [ %876, %821 ], [ %650, %812 ]
  %882 = phi float [ %877, %821 ], [ %651, %812 ]
  %883 = phi float [ %857, %821 ], [ %814, %812 ]
  %884 = phi float [ %858, %821 ], [ %652, %812 ]
  %885 = phi float [ %859, %821 ], [ %653, %812 ]
  %886 = phi float [ %860, %821 ], [ %654, %812 ]
  %887 = phi float [ %840, %821 ], [ %815, %812 ]
  %888 = phi float [ %841, %821 ], [ %655, %812 ]
  %889 = phi float [ %842, %821 ], [ %656, %812 ]
  %890 = phi float [ %843, %821 ], [ %657, %812 ]
  %891 = extractvalue %dx.types.CBufRet.f32 %467, 3
  %892 = fmul fast float %891, %887
  %893 = fmul fast float %891, %883
  %894 = fmul fast float %891, %879
  %895 = fmul fast float %888, 1.500000e+00
  %896 = fmul fast float %895, %891
  %897 = fmul fast float %889, 1.500000e+00
  %898 = fmul fast float %897, %891
  %899 = fmul fast float %890, 1.500000e+00
  %900 = fmul fast float %899, %891
  %901 = fmul fast float %884, 1.500000e+00
  %902 = fmul fast float %901, %891
  %903 = fmul fast float %885, 1.500000e+00
  %904 = fmul fast float %903, %891
  %905 = fmul fast float %886, 1.500000e+00
  %906 = fmul fast float %905, %891
  %907 = fmul fast float %880, 1.500000e+00
  %908 = fmul fast float %907, %891
  %909 = fmul fast float %881, 1.500000e+00
  %910 = fmul fast float %909, %891
  %911 = fmul fast float %882, 1.500000e+00
  %912 = fmul fast float %911, %891
  %913 = fmul fast float %892, 0x3FD20DD760000000
  %914 = fmul fast float %893, 0x3FD20DD760000000
  %915 = fmul fast float %894, 0x3FD20DD760000000
  br i1 %91, label %916, label %939, !dx.controlflow.hints !51

; <label>:916                                     ; preds = %878
  %917 = fmul fast float %203, 0xBFD4D8D7C0000000
  %918 = fmul fast float %917, %898
  %919 = fmul fast float %900, %201
  %920 = fmul fast float %896, %202
  %921 = fadd fast float %920, %919
  %922 = fmul fast float %921, 0x3FD4D8D7C0000000
  %923 = fadd fast float %918, %913
  %924 = fadd fast float %923, %922
  %925 = fmul fast float %917, %904
  %926 = fmul fast float %906, %201
  %927 = fmul fast float %902, %202
  %928 = fadd fast float %927, %926
  %929 = fmul fast float %928, 0x3FD4D8D7C0000000
  %930 = fadd fast float %925, %914
  %931 = fadd fast float %930, %929
  %932 = fmul fast float %917, %910
  %933 = fmul fast float %912, %201
  %934 = fmul fast float %908, %202
  %935 = fadd fast float %934, %933
  %936 = fmul fast float %935, 0x3FD4D8D7C0000000
  %937 = fadd fast float %932, %915
  %938 = fadd fast float %937, %936
  br label %971

; <label>:939                                     ; preds = %878
  %940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %941 = extractvalue %dx.types.CBufRet.f32 %940, 0
  %942 = extractvalue %dx.types.CBufRet.f32 %940, 1
  %943 = extractvalue %dx.types.CBufRet.f32 %940, 2
  %944 = fmul fast float %898, %133
  %945 = fmul fast float %944, %943
  %946 = fmul fast float %941, %900
  %947 = fmul fast float %942, %896
  %948 = fadd fast float %947, %946
  %949 = fmul fast float %948, %133
  %950 = fsub fast float %949, %945
  %951 = fmul fast float %950, 0x3FDF454380000000
  %952 = fadd fast float %951, %913
  %953 = fmul fast float %904, %133
  %954 = fmul fast float %953, %943
  %955 = fmul fast float %941, %906
  %956 = fmul fast float %942, %902
  %957 = fadd fast float %956, %955
  %958 = fmul fast float %957, %133
  %959 = fsub fast float %958, %954
  %960 = fmul fast float %959, 0x3FDF454380000000
  %961 = fadd fast float %960, %914
  %962 = fmul fast float %910, %133
  %963 = fmul fast float %962, %943
  %964 = fmul fast float %941, %912
  %965 = fmul fast float %942, %908
  %966 = fadd fast float %965, %964
  %967 = fmul fast float %966, %133
  %968 = fsub fast float %967, %963
  %969 = fmul fast float %968, 0x3FDF454380000000
  %970 = fadd fast float %969, %915
  br label %971

; <label>:971                                     ; preds = %939, %916
  %972 = phi float [ %924, %916 ], [ %952, %939 ]
  %973 = phi float [ %931, %916 ], [ %961, %939 ]
  %974 = phi float [ %938, %916 ], [ %970, %939 ]
  %975 = fmul fast float %972, %270
  %976 = fmul fast float %973, %270
  %977 = fmul fast float %974, %270
  %978 = fsub fast float %266, %972
  %979 = fadd fast float %978, %975
  %980 = fsub fast float %267, %973
  %981 = fadd fast float %980, %976
  %982 = fsub fast float %268, %974
  %983 = fadd fast float %982, %977
  %984 = fmul fast float %979, %305
  %985 = fmul fast float %981, %305
  %986 = fmul fast float %983, %305
  %987 = fadd fast float %984, %972
  %988 = fadd fast float %985, %973
  %989 = fadd fast float %986, %974
  br label %990

; <label>:990                                     ; preds = %971, %304
  %991 = phi float [ %987, %971 ], [ %266, %304 ]
  %992 = phi float [ %988, %971 ], [ %267, %304 ]
  %993 = phi float [ %989, %971 ], [ %268, %304 ]
  %994 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %995 = extractvalue %dx.types.CBufRet.i32 %994, 2
  %996 = icmp eq i32 %995, 0
  br i1 %996, label %1347, label %997

; <label>:997                                     ; preds = %990
  br label %998

; <label>:998                                     ; preds = %1313, %997
  %999 = phi float [ %1314, %1313 ], [ 0.000000e+00, %997 ]
  %1000 = phi float [ %1315, %1313 ], [ 0.000000e+00, %997 ]
  %1001 = phi float [ %1316, %1313 ], [ 0.000000e+00, %997 ]
  %1002 = phi float [ %1317, %1313 ], [ 0.000000e+00, %997 ]
  %1003 = phi float [ %1318, %1313 ], [ 0.000000e+00, %997 ]
  %1004 = phi float [ %1319, %1313 ], [ 0.000000e+00, %997 ]
  %1005 = phi float [ %1320, %1313 ], [ 0.000000e+00, %997 ]
  %1006 = phi float [ %1321, %1313 ], [ 0.000000e+00, %997 ]
  %1007 = phi float [ %1322, %1313 ], [ 0.000000e+00, %997 ]
  %1008 = phi float [ %1323, %1313 ], [ 0.000000e+00, %997 ]
  %1009 = phi float [ %1324, %1313 ], [ 0.000000e+00, %997 ]
  %1010 = phi float [ %1325, %1313 ], [ 0.000000e+00, %997 ]
  %1011 = phi float [ %1326, %1313 ], [ 0.000000e+00, %997 ]
  %1012 = phi float [ %1327, %1313 ], [ 0.000000e+00, %997 ]
  %1013 = phi float [ %1328, %1313 ], [ 0.000000e+00, %997 ]
  %1014 = phi float [ %1329, %1313 ], [ 0.000000e+00, %997 ]
  %1015 = phi float [ %1330, %1313 ], [ 0.000000e+00, %997 ]
  %1016 = phi float [ %1331, %1313 ], [ 0.000000e+00, %997 ]
  %1017 = phi float [ %1332, %1313 ], [ 0.000000e+00, %997 ]
  %1018 = phi float [ %1333, %1313 ], [ 0.000000e+00, %997 ]
  %1019 = phi float [ %1334, %1313 ], [ 0.000000e+00, %997 ]
  %1020 = phi float [ %1335, %1313 ], [ 0.000000e+00, %997 ]
  %1021 = phi float [ %1336, %1313 ], [ 0.000000e+00, %997 ]
  %1022 = phi float [ %1337, %1313 ], [ 0.000000e+00, %997 ]
  %1023 = phi float [ %1338, %1313 ], [ 0.000000e+00, %997 ]
  %1024 = phi float [ %1339, %1313 ], [ 0.000000e+00, %997 ]
  %1025 = phi float [ %1340, %1313 ], [ 0.000000e+00, %997 ]
  %1026 = phi float [ %1341, %1313 ], [ 1.000000e+00, %997 ]
  %1027 = phi i32 [ %1342, %1313 ], [ 0, %997 ]
  %1028 = shl i32 %1027, 2
  %1029 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1028, i32 undef)  ; BufferLoad(srv,index,wot)
  %1030 = extractvalue %dx.types.ResRet.i32 %1029, 0
  %1031 = icmp ne i32 %1030, 0
  %1032 = fcmp fast ogt float %1026, 0.000000e+00
  %1033 = and i1 %1032, %1031
  br i1 %1033, label %1034, label %1313

; <label>:1034                                    ; preds = %998
  br label %1035

; <label>:1035                                    ; preds = %1280, %1034
  %1036 = phi float [ %1281, %1280 ], [ %999, %1034 ]
  %1037 = phi float [ %1282, %1280 ], [ %1000, %1034 ]
  %1038 = phi float [ %1283, %1280 ], [ %1001, %1034 ]
  %1039 = phi float [ %1284, %1280 ], [ %1002, %1034 ]
  %1040 = phi float [ %1285, %1280 ], [ %1003, %1034 ]
  %1041 = phi float [ %1286, %1280 ], [ %1004, %1034 ]
  %1042 = phi float [ %1287, %1280 ], [ %1005, %1034 ]
  %1043 = phi float [ %1288, %1280 ], [ %1006, %1034 ]
  %1044 = phi float [ %1289, %1280 ], [ %1007, %1034 ]
  %1045 = phi float [ %1290, %1280 ], [ %1008, %1034 ]
  %1046 = phi float [ %1291, %1280 ], [ %1009, %1034 ]
  %1047 = phi float [ %1292, %1280 ], [ %1010, %1034 ]
  %1048 = phi float [ %1293, %1280 ], [ %1011, %1034 ]
  %1049 = phi float [ %1294, %1280 ], [ %1012, %1034 ]
  %1050 = phi float [ %1295, %1280 ], [ %1013, %1034 ]
  %1051 = phi float [ %1296, %1280 ], [ %1014, %1034 ]
  %1052 = phi float [ %1297, %1280 ], [ %1015, %1034 ]
  %1053 = phi float [ %1298, %1280 ], [ %1016, %1034 ]
  %1054 = phi float [ %1299, %1280 ], [ %1017, %1034 ]
  %1055 = phi float [ %1300, %1280 ], [ %1018, %1034 ]
  %1056 = phi float [ %1301, %1280 ], [ %1019, %1034 ]
  %1057 = phi float [ %1302, %1280 ], [ %1020, %1034 ]
  %1058 = phi float [ %1303, %1280 ], [ %1021, %1034 ]
  %1059 = phi float [ %1304, %1280 ], [ %1022, %1034 ]
  %1060 = phi float [ %1305, %1280 ], [ %1023, %1034 ]
  %1061 = phi float [ %1306, %1280 ], [ %1024, %1034 ]
  %1062 = phi float [ %1307, %1280 ], [ %1025, %1034 ]
  %1063 = phi float [ %1308, %1280 ], [ %1026, %1034 ]
  %1064 = phi i32 [ %1068, %1280 ], [ %1030, %1034 ]
  %1065 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1064)  ; FirstbitLo(value)
  %1066 = and i32 %1065, 31
  %1067 = shl i32 1, %1066
  %1068 = xor i32 %1067, %1064
  %1069 = shl i32 %1027, 5
  %1070 = add i32 %1065, %1069
  %1071 = mul i32 %1070, 72
  %1072 = add i32 %1071, 12
  %1073 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %1072, i32 undef)  ; BufferLoad(srv,index,wot)
  %1074 = extractvalue %dx.types.ResRet.i32 %1073, 0
  %1075 = add i32 %1071, 16
  %1076 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1075, i32 undef)  ; BufferLoad(srv,index,wot)
  %1077 = extractvalue %dx.types.ResRet.f32 %1076, 0
  %1078 = extractvalue %dx.types.ResRet.f32 %1076, 1
  %1079 = extractvalue %dx.types.ResRet.f32 %1076, 2
  %1080 = mul i32 %1070, 60
  %1081 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1080, i32 undef)  ; BufferLoad(srv,index,wot)
  %1082 = extractvalue %dx.types.ResRet.f32 %1081, 0
  %1083 = extractvalue %dx.types.ResRet.f32 %1081, 1
  %1084 = extractvalue %dx.types.ResRet.f32 %1081, 2
  %1085 = add i32 %1080, 12
  %1086 = add i32 %1080, 48
  %1087 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1086, i32 undef)  ; BufferLoad(srv,index,wot)
  %1088 = extractvalue %dx.types.ResRet.f32 %1087, 0
  %1089 = extractvalue %dx.types.ResRet.f32 %1087, 1
  %1090 = extractvalue %dx.types.ResRet.f32 %1087, 2
  %1091 = and i32 %1074, 32767
  %1092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1093 = extractvalue %dx.types.CBufRet.f32 %1092, 0
  %1094 = extractvalue %dx.types.CBufRet.f32 %1092, 1
  %1095 = extractvalue %dx.types.CBufRet.f32 %1092, 2
  %1096 = fsub fast float %1082, %1093
  %1097 = fsub fast float %1083, %1094
  %1098 = fsub fast float %1084, %1095
  %1099 = fsub fast float %196, %1096
  %1100 = fsub fast float %197, %1097
  %1101 = fsub fast float %198, %1098
  %1102 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1085, i32 undef)  ; BufferLoad(srv,index,wot)
  %1103 = extractvalue %dx.types.ResRet.f32 %1102, 0
  %1104 = extractvalue %dx.types.ResRet.f32 %1102, 1
  %1105 = extractvalue %dx.types.ResRet.f32 %1102, 2
  %1106 = call float @dx.op.dot3.f32(i32 55, float %1099, float %1100, float %1101, float %1103, float %1104, float %1105)  ; Dot3(ax,ay,az,bx,by,bz)
  %1107 = add i32 %1080, 24
  %1108 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1107, i32 undef)  ; BufferLoad(srv,index,wot)
  %1109 = extractvalue %dx.types.ResRet.f32 %1108, 0
  %1110 = extractvalue %dx.types.ResRet.f32 %1108, 1
  %1111 = extractvalue %dx.types.ResRet.f32 %1108, 2
  %1112 = call float @dx.op.dot3.f32(i32 55, float %1099, float %1100, float %1101, float %1109, float %1110, float %1111)  ; Dot3(ax,ay,az,bx,by,bz)
  %1113 = add i32 %1080, 36
  %1114 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1113, i32 undef)  ; BufferLoad(srv,index,wot)
  %1115 = extractvalue %dx.types.ResRet.f32 %1114, 0
  %1116 = extractvalue %dx.types.ResRet.f32 %1114, 1
  %1117 = extractvalue %dx.types.ResRet.f32 %1114, 2
  %1118 = call float @dx.op.dot3.f32(i32 55, float %1099, float %1100, float %1101, float %1115, float %1116, float %1117)  ; Dot3(ax,ay,az,bx,by,bz)
  %1119 = call float @dx.op.unary.f32(i32 6, float %1106)  ; FAbs(value)
  %1120 = call float @dx.op.unary.f32(i32 6, float %1112)  ; FAbs(value)
  %1121 = call float @dx.op.unary.f32(i32 6, float %1118)  ; FAbs(value)
  %1122 = fsub fast float %1088, %1119
  %1123 = fsub fast float %1089, %1120
  %1124 = fsub fast float %1090, %1121
  %1125 = fmul fast float %1122, %1077
  %1126 = fmul fast float %1123, %1078
  %1127 = fmul fast float %1124, %1079
  %1128 = call float @dx.op.binary.f32(i32 36, float %1126, float %1127)  ; FMin(a,b)
  %1129 = call float @dx.op.binary.f32(i32 36, float %1125, float %1128)  ; FMin(a,b)
  %1130 = call float @dx.op.unary.f32(i32 7, float %1129)  ; Saturate(value)
  %1131 = call float @dx.op.binary.f32(i32 36, float %1063, float %1130)  ; FMin(a,b)
  %1132 = fcmp fast ogt float %1131, 0.000000e+00
  br i1 %1132, label %1133, label %1280, !dx.controlflow.hints !52

; <label>:1133                                    ; preds = %1035
  %1134 = lshr i32 %1074, 16
  %1135 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1134)  ; LegacyF16ToF32(value)
  %1136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 141)  ; CBufferLoadLegacy(handle,regIndex)
  %1137 = extractvalue %dx.types.CBufRet.f32 %1136, 3
  %1138 = bitcast float %1137 to i32
  %1139 = add i32 %1138, %1091
  %1140 = mul i32 %1139, 36
  %1141 = shl i32 %1138, 1
  %1142 = add i32 %1141, %1091
  %1143 = mul i32 %1142, 36
  %1144 = mul i32 %1138, 3
  %1145 = add i32 %1144, %1091
  %1146 = mul i32 %1145, 36
  %1147 = fmul fast float %1135, %1131
  %1148 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1140, i32 undef)  ; BufferLoad(srv,index,wot)
  %1149 = extractvalue %dx.types.ResRet.f32 %1148, 0
  %1150 = fmul fast float %1149, %1147
  %1151 = fadd fast float %1150, %1044
  %1152 = add i32 %1140, 4
  %1153 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1152, i32 undef)  ; BufferLoad(srv,index,wot)
  %1154 = extractvalue %dx.types.ResRet.f32 %1153, 0
  %1155 = fmul fast float %1154, %1147
  %1156 = fadd fast float %1155, %1043
  %1157 = add i32 %1140, 8
  %1158 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1157, i32 undef)  ; BufferLoad(srv,index,wot)
  %1159 = extractvalue %dx.types.ResRet.f32 %1158, 0
  %1160 = fmul fast float %1159, %1147
  %1161 = fadd fast float %1160, %1042
  %1162 = add i32 %1140, 12
  %1163 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1162, i32 undef)  ; BufferLoad(srv,index,wot)
  %1164 = extractvalue %dx.types.ResRet.f32 %1163, 0
  %1165 = fmul fast float %1164, %1147
  %1166 = fadd fast float %1165, %1041
  %1167 = add i32 %1140, 16
  %1168 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1167, i32 undef)  ; BufferLoad(srv,index,wot)
  %1169 = extractvalue %dx.types.ResRet.f32 %1168, 0
  %1170 = fmul fast float %1169, %1147
  %1171 = fadd fast float %1170, %1040
  %1172 = add i32 %1140, 20
  %1173 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1172, i32 undef)  ; BufferLoad(srv,index,wot)
  %1174 = extractvalue %dx.types.ResRet.f32 %1173, 0
  %1175 = fmul fast float %1174, %1147
  %1176 = fadd fast float %1175, %1039
  %1177 = add i32 %1140, 24
  %1178 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1177, i32 undef)  ; BufferLoad(srv,index,wot)
  %1179 = extractvalue %dx.types.ResRet.f32 %1178, 0
  %1180 = fmul fast float %1179, %1147
  %1181 = fadd fast float %1180, %1038
  %1182 = add i32 %1140, 28
  %1183 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1182, i32 undef)  ; BufferLoad(srv,index,wot)
  %1184 = extractvalue %dx.types.ResRet.f32 %1183, 0
  %1185 = fmul fast float %1184, %1147
  %1186 = fadd fast float %1185, %1037
  %1187 = add i32 %1140, 32
  %1188 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1187, i32 undef)  ; BufferLoad(srv,index,wot)
  %1189 = extractvalue %dx.types.ResRet.f32 %1188, 0
  %1190 = fmul fast float %1189, %1147
  %1191 = fadd fast float %1190, %1036
  %1192 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1143, i32 undef)  ; BufferLoad(srv,index,wot)
  %1193 = extractvalue %dx.types.ResRet.f32 %1192, 0
  %1194 = fmul fast float %1193, %1147
  %1195 = fadd fast float %1194, %1053
  %1196 = add i32 %1143, 4
  %1197 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1196, i32 undef)  ; BufferLoad(srv,index,wot)
  %1198 = extractvalue %dx.types.ResRet.f32 %1197, 0
  %1199 = fmul fast float %1198, %1147
  %1200 = fadd fast float %1199, %1052
  %1201 = add i32 %1143, 8
  %1202 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1201, i32 undef)  ; BufferLoad(srv,index,wot)
  %1203 = extractvalue %dx.types.ResRet.f32 %1202, 0
  %1204 = fmul fast float %1203, %1147
  %1205 = fadd fast float %1204, %1051
  %1206 = add i32 %1143, 12
  %1207 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1206, i32 undef)  ; BufferLoad(srv,index,wot)
  %1208 = extractvalue %dx.types.ResRet.f32 %1207, 0
  %1209 = fmul fast float %1208, %1147
  %1210 = fadd fast float %1209, %1050
  %1211 = add i32 %1143, 16
  %1212 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1211, i32 undef)  ; BufferLoad(srv,index,wot)
  %1213 = extractvalue %dx.types.ResRet.f32 %1212, 0
  %1214 = fmul fast float %1213, %1147
  %1215 = fadd fast float %1214, %1049
  %1216 = add i32 %1143, 20
  %1217 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1216, i32 undef)  ; BufferLoad(srv,index,wot)
  %1218 = extractvalue %dx.types.ResRet.f32 %1217, 0
  %1219 = fmul fast float %1218, %1147
  %1220 = fadd fast float %1219, %1048
  %1221 = add i32 %1143, 24
  %1222 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1221, i32 undef)  ; BufferLoad(srv,index,wot)
  %1223 = extractvalue %dx.types.ResRet.f32 %1222, 0
  %1224 = fmul fast float %1223, %1147
  %1225 = fadd fast float %1224, %1047
  %1226 = add i32 %1143, 28
  %1227 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1226, i32 undef)  ; BufferLoad(srv,index,wot)
  %1228 = extractvalue %dx.types.ResRet.f32 %1227, 0
  %1229 = fmul fast float %1228, %1147
  %1230 = fadd fast float %1229, %1046
  %1231 = add i32 %1143, 32
  %1232 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1231, i32 undef)  ; BufferLoad(srv,index,wot)
  %1233 = extractvalue %dx.types.ResRet.f32 %1232, 0
  %1234 = fmul fast float %1233, %1147
  %1235 = fadd fast float %1234, %1045
  %1236 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1146, i32 undef)  ; BufferLoad(srv,index,wot)
  %1237 = extractvalue %dx.types.ResRet.f32 %1236, 0
  %1238 = fmul fast float %1237, %1147
  %1239 = fadd fast float %1238, %1062
  %1240 = add i32 %1146, 4
  %1241 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1240, i32 undef)  ; BufferLoad(srv,index,wot)
  %1242 = extractvalue %dx.types.ResRet.f32 %1241, 0
  %1243 = fmul fast float %1242, %1147
  %1244 = fadd fast float %1243, %1061
  %1245 = add i32 %1146, 8
  %1246 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1245, i32 undef)  ; BufferLoad(srv,index,wot)
  %1247 = extractvalue %dx.types.ResRet.f32 %1246, 0
  %1248 = fmul fast float %1247, %1147
  %1249 = fadd fast float %1248, %1060
  %1250 = add i32 %1146, 12
  %1251 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1250, i32 undef)  ; BufferLoad(srv,index,wot)
  %1252 = extractvalue %dx.types.ResRet.f32 %1251, 0
  %1253 = fmul fast float %1252, %1147
  %1254 = fadd fast float %1253, %1059
  %1255 = add i32 %1146, 16
  %1256 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1255, i32 undef)  ; BufferLoad(srv,index,wot)
  %1257 = extractvalue %dx.types.ResRet.f32 %1256, 0
  %1258 = fmul fast float %1257, %1147
  %1259 = fadd fast float %1258, %1058
  %1260 = add i32 %1146, 20
  %1261 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1260, i32 undef)  ; BufferLoad(srv,index,wot)
  %1262 = extractvalue %dx.types.ResRet.f32 %1261, 0
  %1263 = fmul fast float %1262, %1147
  %1264 = fadd fast float %1263, %1057
  %1265 = add i32 %1146, 24
  %1266 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1265, i32 undef)  ; BufferLoad(srv,index,wot)
  %1267 = extractvalue %dx.types.ResRet.f32 %1266, 0
  %1268 = fmul fast float %1267, %1147
  %1269 = fadd fast float %1268, %1056
  %1270 = add i32 %1146, 28
  %1271 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1270, i32 undef)  ; BufferLoad(srv,index,wot)
  %1272 = extractvalue %dx.types.ResRet.f32 %1271, 0
  %1273 = fmul fast float %1272, %1147
  %1274 = fadd fast float %1273, %1055
  %1275 = add i32 %1146, 32
  %1276 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1275, i32 undef)  ; BufferLoad(srv,index,wot)
  %1277 = extractvalue %dx.types.ResRet.f32 %1276, 0
  %1278 = fmul fast float %1277, %1147
  %1279 = fadd fast float %1278, %1054
  br label %1280

; <label>:1280                                    ; preds = %1133, %1035
  %1281 = phi float [ %1191, %1133 ], [ %1036, %1035 ]
  %1282 = phi float [ %1186, %1133 ], [ %1037, %1035 ]
  %1283 = phi float [ %1181, %1133 ], [ %1038, %1035 ]
  %1284 = phi float [ %1176, %1133 ], [ %1039, %1035 ]
  %1285 = phi float [ %1171, %1133 ], [ %1040, %1035 ]
  %1286 = phi float [ %1166, %1133 ], [ %1041, %1035 ]
  %1287 = phi float [ %1161, %1133 ], [ %1042, %1035 ]
  %1288 = phi float [ %1156, %1133 ], [ %1043, %1035 ]
  %1289 = phi float [ %1151, %1133 ], [ %1044, %1035 ]
  %1290 = phi float [ %1235, %1133 ], [ %1045, %1035 ]
  %1291 = phi float [ %1230, %1133 ], [ %1046, %1035 ]
  %1292 = phi float [ %1225, %1133 ], [ %1047, %1035 ]
  %1293 = phi float [ %1220, %1133 ], [ %1048, %1035 ]
  %1294 = phi float [ %1215, %1133 ], [ %1049, %1035 ]
  %1295 = phi float [ %1210, %1133 ], [ %1050, %1035 ]
  %1296 = phi float [ %1205, %1133 ], [ %1051, %1035 ]
  %1297 = phi float [ %1200, %1133 ], [ %1052, %1035 ]
  %1298 = phi float [ %1195, %1133 ], [ %1053, %1035 ]
  %1299 = phi float [ %1279, %1133 ], [ %1054, %1035 ]
  %1300 = phi float [ %1274, %1133 ], [ %1055, %1035 ]
  %1301 = phi float [ %1269, %1133 ], [ %1056, %1035 ]
  %1302 = phi float [ %1264, %1133 ], [ %1057, %1035 ]
  %1303 = phi float [ %1259, %1133 ], [ %1058, %1035 ]
  %1304 = phi float [ %1254, %1133 ], [ %1059, %1035 ]
  %1305 = phi float [ %1249, %1133 ], [ %1060, %1035 ]
  %1306 = phi float [ %1244, %1133 ], [ %1061, %1035 ]
  %1307 = phi float [ %1239, %1133 ], [ %1062, %1035 ]
  %1308 = fsub fast float %1063, %1131
  %1309 = icmp ne i32 %1064, %1067
  %1310 = fcmp fast ogt float %1308, 0.000000e+00
  %1311 = and i1 %1309, %1310
  br i1 %1311, label %1035, label %1312

; <label>:1312                                    ; preds = %1280
  br label %1313

; <label>:1313                                    ; preds = %1312, %998
  %1314 = phi float [ %999, %998 ], [ %1281, %1312 ]
  %1315 = phi float [ %1000, %998 ], [ %1282, %1312 ]
  %1316 = phi float [ %1001, %998 ], [ %1283, %1312 ]
  %1317 = phi float [ %1002, %998 ], [ %1284, %1312 ]
  %1318 = phi float [ %1003, %998 ], [ %1285, %1312 ]
  %1319 = phi float [ %1004, %998 ], [ %1286, %1312 ]
  %1320 = phi float [ %1005, %998 ], [ %1287, %1312 ]
  %1321 = phi float [ %1006, %998 ], [ %1288, %1312 ]
  %1322 = phi float [ %1007, %998 ], [ %1289, %1312 ]
  %1323 = phi float [ %1008, %998 ], [ %1290, %1312 ]
  %1324 = phi float [ %1009, %998 ], [ %1291, %1312 ]
  %1325 = phi float [ %1010, %998 ], [ %1292, %1312 ]
  %1326 = phi float [ %1011, %998 ], [ %1293, %1312 ]
  %1327 = phi float [ %1012, %998 ], [ %1294, %1312 ]
  %1328 = phi float [ %1013, %998 ], [ %1295, %1312 ]
  %1329 = phi float [ %1014, %998 ], [ %1296, %1312 ]
  %1330 = phi float [ %1015, %998 ], [ %1297, %1312 ]
  %1331 = phi float [ %1016, %998 ], [ %1298, %1312 ]
  %1332 = phi float [ %1017, %998 ], [ %1299, %1312 ]
  %1333 = phi float [ %1018, %998 ], [ %1300, %1312 ]
  %1334 = phi float [ %1019, %998 ], [ %1301, %1312 ]
  %1335 = phi float [ %1020, %998 ], [ %1302, %1312 ]
  %1336 = phi float [ %1021, %998 ], [ %1303, %1312 ]
  %1337 = phi float [ %1022, %998 ], [ %1304, %1312 ]
  %1338 = phi float [ %1023, %998 ], [ %1305, %1312 ]
  %1339 = phi float [ %1024, %998 ], [ %1306, %1312 ]
  %1340 = phi float [ %1025, %998 ], [ %1307, %1312 ]
  %1341 = phi float [ %1026, %998 ], [ %1308, %1312 ]
  %1342 = add i32 %1027, 1
  %1343 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1344 = extractvalue %dx.types.CBufRet.i32 %1343, 2
  %1345 = icmp ult i32 %1342, %1344
  br i1 %1345, label %998, label %1346

; <label>:1346                                    ; preds = %1313
  br label %1347

; <label>:1347                                    ; preds = %1346, %990
  %1348 = phi float [ 0.000000e+00, %990 ], [ %1314, %1346 ]
  %1349 = phi float [ 0.000000e+00, %990 ], [ %1315, %1346 ]
  %1350 = phi float [ 0.000000e+00, %990 ], [ %1316, %1346 ]
  %1351 = phi float [ 0.000000e+00, %990 ], [ %1317, %1346 ]
  %1352 = phi float [ 0.000000e+00, %990 ], [ %1318, %1346 ]
  %1353 = phi float [ 0.000000e+00, %990 ], [ %1319, %1346 ]
  %1354 = phi float [ 0.000000e+00, %990 ], [ %1320, %1346 ]
  %1355 = phi float [ 0.000000e+00, %990 ], [ %1321, %1346 ]
  %1356 = phi float [ 0.000000e+00, %990 ], [ %1322, %1346 ]
  %1357 = phi float [ 0.000000e+00, %990 ], [ %1323, %1346 ]
  %1358 = phi float [ 0.000000e+00, %990 ], [ %1324, %1346 ]
  %1359 = phi float [ 0.000000e+00, %990 ], [ %1325, %1346 ]
  %1360 = phi float [ 0.000000e+00, %990 ], [ %1326, %1346 ]
  %1361 = phi float [ 0.000000e+00, %990 ], [ %1327, %1346 ]
  %1362 = phi float [ 0.000000e+00, %990 ], [ %1328, %1346 ]
  %1363 = phi float [ 0.000000e+00, %990 ], [ %1329, %1346 ]
  %1364 = phi float [ 0.000000e+00, %990 ], [ %1330, %1346 ]
  %1365 = phi float [ 0.000000e+00, %990 ], [ %1331, %1346 ]
  %1366 = phi float [ 0.000000e+00, %990 ], [ %1332, %1346 ]
  %1367 = phi float [ 0.000000e+00, %990 ], [ %1333, %1346 ]
  %1368 = phi float [ 0.000000e+00, %990 ], [ %1334, %1346 ]
  %1369 = phi float [ 0.000000e+00, %990 ], [ %1335, %1346 ]
  %1370 = phi float [ 0.000000e+00, %990 ], [ %1336, %1346 ]
  %1371 = phi float [ 0.000000e+00, %990 ], [ %1337, %1346 ]
  %1372 = phi float [ 0.000000e+00, %990 ], [ %1338, %1346 ]
  %1373 = phi float [ 0.000000e+00, %990 ], [ %1339, %1346 ]
  %1374 = phi float [ 0.000000e+00, %990 ], [ %1340, %1346 ]
  %1375 = phi float [ 1.000000e+00, %990 ], [ %1341, %1346 ]
  %1376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1377 = extractvalue %dx.types.CBufRet.f32 %1376, 3
  %1378 = fdiv fast float 1.000000e+00, %1377
  %1379 = fmul fast float %1378, %1356
  %1380 = fmul fast float %1378, %1355
  %1381 = fmul fast float %1378, %1354
  %1382 = fmul fast float %1378, %1353
  %1383 = fmul fast float %1378, %1352
  %1384 = fmul fast float %1378, %1351
  %1385 = fmul fast float %1378, %1350
  %1386 = fmul fast float %1378, %1349
  %1387 = fmul fast float %1378, %1348
  %1388 = fmul fast float %1378, %1365
  %1389 = fmul fast float %1378, %1364
  %1390 = fmul fast float %1378, %1363
  %1391 = fmul fast float %1378, %1362
  %1392 = fmul fast float %1378, %1361
  %1393 = fmul fast float %1378, %1360
  %1394 = fmul fast float %1378, %1359
  %1395 = fmul fast float %1378, %1358
  %1396 = fmul fast float %1378, %1357
  %1397 = fmul fast float %1378, %1374
  %1398 = fmul fast float %1378, %1373
  %1399 = fmul fast float %1378, %1372
  %1400 = fmul fast float %1378, %1371
  %1401 = fmul fast float %1378, %1370
  %1402 = fmul fast float %1378, %1369
  %1403 = fmul fast float %1378, %1368
  %1404 = fmul fast float %1378, %1367
  %1405 = fmul fast float %1378, %1366
  %1406 = fmul fast float %1379, 0x3FD20DD760000000
  %1407 = fmul fast float %1388, 0x3FD20DD760000000
  %1408 = fmul fast float %1397, 0x3FD20DD760000000
  br i1 %91, label %1409, label %1479, !dx.controlflow.hints !51

; <label>:1409                                    ; preds = %1347
  %1410 = fmul fast float %203, 0xBFD4D8D7C0000000
  %1411 = fmul fast float %1410, %1381
  %1412 = fmul fast float %203, %203
  %1413 = fmul fast float %1412, 0x3FEE471020000000
  %1414 = fadd fast float %1413, 0xBFD42F6020000000
  %1415 = fmul fast float %1385, %1414
  %1416 = fmul fast float %1382, %201
  %1417 = fmul fast float %1380, %202
  %1418 = fmul fast float %203, 0x3FF17B1420000000
  %1419 = fmul fast float %1386, %204
  %1420 = fmul fast float %1384, %205
  %1421 = fmul fast float %201, %201
  %1422 = fmul fast float %202, %202
  %1423 = fsub fast float %1421, %1422
  %1424 = fmul fast float %1423, 0x3FC17B1420000000
  %1425 = fmul fast float %1424, %1387
  %1426 = fmul fast float %200, 0x3FD17B1420000000
  %1427 = fmul fast float %1426, %197
  %1428 = fmul fast float %1427, %201
  %1429 = fmul fast float %1428, %1383
  %1430 = fadd fast float %1419, %1420
  %1431 = fmul fast float %1418, %1430
  %1432 = fadd fast float %1431, %1415
  %1433 = fmul fast float %1432, 2.500000e-01
  %1434 = fadd fast float %1417, %1416
  %1435 = fmul fast float %1434, 0x3FD4D8D7C0000000
  %1436 = fadd fast float %1411, %1406
  %1437 = fadd fast float %1436, %1425
  %1438 = fadd fast float %1437, %1429
  %1439 = fadd fast float %1438, %1433
  %1440 = fadd fast float %1439, %1435
  %1441 = fmul fast float %1410, %1390
  %1442 = fmul fast float %1394, %1414
  %1443 = fmul fast float %1391, %201
  %1444 = fmul fast float %1389, %202
  %1445 = fmul fast float %1395, %204
  %1446 = fmul fast float %1393, %205
  %1447 = fmul fast float %1424, %1396
  %1448 = fmul fast float %1428, %1392
  %1449 = fadd fast float %1445, %1446
  %1450 = fmul fast float %1418, %1449
  %1451 = fadd fast float %1450, %1442
  %1452 = fmul fast float %1451, 2.500000e-01
  %1453 = fadd fast float %1444, %1443
  %1454 = fmul fast float %1453, 0x3FD4D8D7C0000000
  %1455 = fadd fast float %1441, %1407
  %1456 = fadd fast float %1455, %1447
  %1457 = fadd fast float %1456, %1448
  %1458 = fadd fast float %1457, %1452
  %1459 = fadd fast float %1458, %1454
  %1460 = fmul fast float %1410, %1399
  %1461 = fmul fast float %1403, %1414
  %1462 = fmul fast float %1400, %201
  %1463 = fmul fast float %1398, %202
  %1464 = fmul fast float %1404, %204
  %1465 = fmul fast float %1402, %205
  %1466 = fmul fast float %1424, %1405
  %1467 = fmul fast float %1428, %1401
  %1468 = fadd fast float %1464, %1465
  %1469 = fmul fast float %1418, %1468
  %1470 = fadd fast float %1469, %1461
  %1471 = fmul fast float %1470, 2.500000e-01
  %1472 = fadd fast float %1463, %1462
  %1473 = fmul fast float %1472, 0x3FD4D8D7C0000000
  %1474 = fadd fast float %1460, %1408
  %1475 = fadd fast float %1474, %1466
  %1476 = fadd fast float %1475, %1467
  %1477 = fadd fast float %1476, %1471
  %1478 = fadd fast float %1477, %1473
  br label %1573

; <label>:1479                                    ; preds = %1347
  %1480 = fmul fast float %133, %133
  %1481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1482 = extractvalue %dx.types.CBufRet.f32 %1481, 0
  %1483 = extractvalue %dx.types.CBufRet.f32 %1481, 1
  %1484 = extractvalue %dx.types.CBufRet.f32 %1481, 2
  %1485 = fmul fast float %1381, %133
  %1486 = fmul fast float %1485, %1484
  %1487 = fmul fast float %1484, %1484
  %1488 = fmul fast float %1487, 0x3FEE471020000000
  %1489 = fadd fast float %1488, 0xBFD42F6020000000
  %1490 = fmul fast float %1489, %1385
  %1491 = fmul fast float %1482, %1382
  %1492 = fmul fast float %1483, %1380
  %1493 = fmul fast float %1484, 0x3FF17B1420000000
  %1494 = fmul fast float %1386, %1480
  %1495 = fmul fast float %1494, %1482
  %1496 = fmul fast float %1495, %1493
  %1497 = fmul fast float %1384, %1480
  %1498 = fmul fast float %1497, %1483
  %1499 = fmul fast float %1498, %1493
  %1500 = fmul fast float %1482, %1482
  %1501 = fmul fast float %1483, %1483
  %1502 = fsub fast float %1500, %1501
  %1503 = fmul fast float %1387, 0x3FE17B1420000000
  %1504 = fmul fast float %1503, %1502
  %1505 = fmul fast float %1383, 0x3FF17B1420000000
  %1506 = fmul fast float %1505, %1483
  %1507 = fmul fast float %1506, %1482
  %1508 = fadd fast float %1504, %1507
  %1509 = fadd fast float %1508, %1490
  %1510 = fmul fast float %1509, %1480
  %1511 = fadd fast float %1492, %1491
  %1512 = fmul fast float %1511, %133
  %1513 = fsub fast float %1512, %1486
  %1514 = fmul fast float %1513, 0x3FDF454380000000
  %1515 = fsub fast float %1406, %1496
  %1516 = fsub fast float %1515, %1499
  %1517 = fadd fast float %1516, %1510
  %1518 = fadd fast float %1517, %1514
  %1519 = fmul fast float %1390, %133
  %1520 = fmul fast float %1519, %1484
  %1521 = fmul fast float %1489, %1394
  %1522 = fmul fast float %1482, %1391
  %1523 = fmul fast float %1483, %1389
  %1524 = fmul fast float %1395, %1480
  %1525 = fmul fast float %1524, %1482
  %1526 = fmul fast float %1525, %1493
  %1527 = fmul fast float %1393, %1480
  %1528 = fmul fast float %1527, %1483
  %1529 = fmul fast float %1528, %1493
  %1530 = fmul fast float %1396, 0x3FE17B1420000000
  %1531 = fmul fast float %1530, %1502
  %1532 = fmul fast float %1392, 0x3FF17B1420000000
  %1533 = fmul fast float %1532, %1483
  %1534 = fmul fast float %1533, %1482
  %1535 = fadd fast float %1531, %1534
  %1536 = fadd fast float %1535, %1521
  %1537 = fmul fast float %1536, %1480
  %1538 = fadd fast float %1523, %1522
  %1539 = fmul fast float %1538, %133
  %1540 = fsub fast float %1539, %1520
  %1541 = fmul fast float %1540, 0x3FDF454380000000
  %1542 = fsub fast float %1407, %1526
  %1543 = fsub fast float %1542, %1529
  %1544 = fadd fast float %1543, %1537
  %1545 = fadd fast float %1544, %1541
  %1546 = fmul fast float %1399, %133
  %1547 = fmul fast float %1546, %1484
  %1548 = fmul fast float %1489, %1403
  %1549 = fmul fast float %1482, %1400
  %1550 = fmul fast float %1483, %1398
  %1551 = fmul fast float %1404, %1480
  %1552 = fmul fast float %1551, %1482
  %1553 = fmul fast float %1552, %1493
  %1554 = fmul fast float %1402, %1480
  %1555 = fmul fast float %1554, %1483
  %1556 = fmul fast float %1555, %1493
  %1557 = fmul fast float %1405, 0x3FE17B1420000000
  %1558 = fmul fast float %1557, %1502
  %1559 = fmul fast float %1401, 0x3FF17B1420000000
  %1560 = fmul fast float %1559, %1483
  %1561 = fmul fast float %1560, %1482
  %1562 = fadd fast float %1558, %1561
  %1563 = fadd fast float %1562, %1548
  %1564 = fmul fast float %1563, %1480
  %1565 = fadd fast float %1550, %1549
  %1566 = fmul fast float %1565, %133
  %1567 = fsub fast float %1566, %1547
  %1568 = fmul fast float %1567, 0x3FDF454380000000
  %1569 = fsub fast float %1408, %1553
  %1570 = fsub fast float %1569, %1556
  %1571 = fadd fast float %1570, %1564
  %1572 = fadd fast float %1571, %1568
  br label %1573

; <label>:1573                                    ; preds = %1479, %1409
  %1574 = phi float [ %1440, %1409 ], [ %1518, %1479 ]
  %1575 = phi float [ %1459, %1409 ], [ %1545, %1479 ]
  %1576 = phi float [ %1478, %1409 ], [ %1572, %1479 ]
  %1577 = fmul fast float %1375, %991
  %1578 = fmul fast float %1375, %992
  %1579 = fmul fast float %1375, %993
  %1580 = fadd fast float %1574, %1577
  %1581 = fadd fast float %1575, %1578
  %1582 = fadd fast float %1576, %1579
  %1583 = fmul fast float %1377, %1580
  %1584 = fmul fast float %1377, %1581
  %1585 = fmul fast float %1377, %1582
  %1586 = extractvalue %dx.types.CBufRet.f32 %1376, 0
  %1587 = fmul fast float %1583, %1586
  %1588 = fmul fast float %1584, %1586
  %1589 = fmul fast float %1585, %1586
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %160, i32 %161, i32 undef, float %1587, float %1588, float %1589, float %1587, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1590

; <label>:1590                                    ; preds = %1573, %0
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
!33 = !{void ()* @cs_del_sh_combine_multilightgrid_reflection_volumes_1_lowres, !"cs_del_sh_combine_multilightgrid_reflection_volumes_1_lowres", null, !4, !34}
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

