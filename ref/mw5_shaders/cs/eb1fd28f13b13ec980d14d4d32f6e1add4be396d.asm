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
; shader hash: 74676e0fd9e46535b390c04cc8e44467
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
;                                   texture     f32         buf      T9            t19     1
;                                   texture     f32         buf     T10            t20     1
;                                   texture  struct         r/o     T11            t22     1
;                                   texture  struct         r/o     T12            t23     1
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

define void @cs_del_sh_combine_multilightgrid_2_lowres() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 23, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 28, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %19 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %20 = call i32 @dx.op.threadId.i32(i32 93, i32 2)  ; ThreadId(component)
  %21 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %22 = extractvalue %dx.types.CBufRet.i32 %21, 2
  %23 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %22, i32 0)  ; BufferLoad(srv,index,wot)
  %24 = extractvalue %dx.types.ResRet.i32 %23, 0
  %25 = icmp ult i32 %18, %24
  br i1 %25, label %26, label %1002, !dx.controlflow.hints !32

; <label>:26                                      ; preds = %0
  %27 = add i32 %22, 3
  %28 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 %27)  ; CBufferLoadLegacy(handle,regIndex)
  %29 = extractvalue %dx.types.CBufRet.i32 %28, 2
  %30 = shl i32 %19, 1
  %31 = shl i32 %20, 1
  %32 = add i32 %29, %18
  %33 = shl i32 %32, 5
  %34 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %33, i32 undef)  ; BufferLoad(srv,index,wot)
  %35 = extractvalue %dx.types.ResRet.i32 %34, 0
  %36 = extractvalue %dx.types.ResRet.i32 %34, 1
  %37 = extractvalue %dx.types.ResRet.i32 %34, 2
  %38 = extractvalue %dx.types.ResRet.i32 %34, 3
  %39 = lshr i32 %38, 14
  %40 = and i32 %39, 16383
  %41 = and i32 %38, 16383
  %42 = bitcast i32 %35 to float
  %43 = bitcast i32 %36 to float
  %44 = bitcast i32 %37 to float
  %45 = and i32 %38, 536870912
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %86, label %47, !dx.controlflow.hints !33

; <label>:47                                      ; preds = %26
  %48 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %49 = extractvalue %dx.types.CBufRet.f32 %48, 2
  %50 = extractvalue %dx.types.CBufRet.f32 %48, 3
  %51 = fmul fast float %49, %42
  %52 = fmul fast float %50, %43
  %53 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %54 = extractvalue %dx.types.CBufRet.f32 %53, 0
  %55 = extractvalue %dx.types.CBufRet.f32 %53, 1
  %56 = fadd fast float %51, %54
  %57 = fadd fast float %52, %55
  %58 = call float @dx.op.unary.f32(i32 7, float %56)  ; Saturate(value)
  %59 = call float @dx.op.unary.f32(i32 7, float %57)  ; Saturate(value)
  %60 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %15, float %58, float %59, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %61 = extractvalue %dx.types.ResRet.f32 %60, 0
  %62 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %63 = extractvalue %dx.types.CBufRet.f32 %62, 0
  %64 = fmul fast float %63, %61
  %65 = fsub fast float %56, %58
  %66 = fsub fast float %57, %59
  %67 = extractvalue %dx.types.CBufRet.f32 %48, 0
  %68 = extractvalue %dx.types.CBufRet.f32 %48, 1
  %69 = fmul fast float %67, %65
  %70 = fmul fast float %68, %66
  %71 = fmul fast float %69, %69
  %72 = fmul fast float %70, %70
  %73 = fadd fast float %71, %72
  %74 = call float @dx.op.unary.f32(i32 24, float %73)  ; Sqrt(value)
  %75 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %76 = extractvalue %dx.types.CBufRet.f32 %75, 3
  %77 = fmul fast float %76, %74
  %78 = call float @dx.op.unary.f32(i32 7, float %77)  ; Saturate(value)
  %79 = extractvalue %dx.types.CBufRet.f32 %75, 2
  %80 = fsub fast float %79, %64
  %81 = fmul fast float %80, %78
  %82 = extractvalue %dx.types.CBufRet.f32 %62, 1
  %83 = fadd fast float %64, %44
  %84 = fadd fast float %83, %82
  %85 = fadd fast float %84, %81
  br label %86

; <label>:86                                      ; preds = %47, %26
  %87 = phi float [ %85, %47 ], [ %44, %26 ]
  %88 = and i32 %38, 268435456
  %89 = icmp eq i32 %88, 0
  %90 = or i32 %33, 16
  %91 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %90, i32 undef)  ; BufferLoad(srv,index,wot)
  %92 = extractvalue %dx.types.ResRet.i32 %91, 0
  %93 = extractvalue %dx.types.ResRet.i32 %91, 1
  %94 = extractvalue %dx.types.ResRet.i32 %91, 2
  %95 = extractvalue %dx.types.ResRet.i32 %91, 3
  %96 = and i32 %92, 65535
  %97 = call float @dx.op.legacyF16ToF32(i32 131, i32 %96)  ; LegacyF16ToF32(value)
  %98 = lshr i32 %92, 16
  %99 = call float @dx.op.legacyF16ToF32(i32 131, i32 %98)  ; LegacyF16ToF32(value)
  %100 = and i32 %93, 1023
  %101 = uitofp i32 %100 to float
  %102 = lshr i32 %93, 10
  %103 = and i32 %102, 1023
  %104 = uitofp i32 %103 to float
  %105 = lshr i32 %93, 20
  %106 = and i32 %105, 1023
  %107 = uitofp i32 %106 to float
  %108 = fmul fast float %101, 0x3F60040100000000
  %109 = fmul fast float %104, 0x3F60040100000000
  %110 = fmul fast float %107, 0x3F60040100000000
  %111 = fadd fast float %108, -1.000000e+00
  %112 = fadd fast float %109, -1.000000e+00
  %113 = fadd fast float %110, -1.000000e+00
  %114 = and i32 %94, 1023
  %115 = uitofp i32 %114 to float
  %116 = lshr i32 %94, 10
  %117 = and i32 %116, 1023
  %118 = uitofp i32 %117 to float
  %119 = lshr i32 %94, 20
  %120 = and i32 %119, 1023
  %121 = uitofp i32 %120 to float
  %122 = fmul fast float %115, 0x3F60040100000000
  %123 = fmul fast float %118, 0x3F60040100000000
  %124 = fmul fast float %121, 0x3F60040100000000
  %125 = fadd fast float %122, -1.000000e+00
  %126 = fadd fast float %123, -1.000000e+00
  %127 = fadd fast float %124, -1.000000e+00
  %128 = and i32 %95, 65535
  %129 = call float @dx.op.legacyF16ToF32(i32 131, i32 %128)  ; LegacyF16ToF32(value)
  %130 = lshr i32 %95, 16
  %131 = call float @dx.op.legacyF16ToF32(i32 131, i32 %130)  ; LegacyF16ToF32(value)
  %132 = call float @dx.op.unary.f32(i32 13, float %129)  ; Sin(value)
  %133 = call float @dx.op.unary.f32(i32 12, float %129)  ; Cos(value)
  %134 = fmul fast float %133, %111
  %135 = fmul fast float %133, %112
  %136 = fmul fast float %133, %113
  %137 = fmul fast float %132, %125
  %138 = fmul fast float %126, %132
  %139 = fmul fast float %127, %132
  %140 = fadd fast float %134, %137
  %141 = fadd fast float %135, %138
  %142 = fadd fast float %136, %139
  %143 = fmul fast float %140, %97
  %144 = fmul fast float %141, %97
  %145 = fmul fast float %142, %97
  %146 = fmul fast float %132, %111
  %147 = fmul fast float %112, %132
  %148 = fmul fast float %113, %132
  %149 = fmul fast float %133, %125
  %150 = fmul fast float %133, %126
  %151 = fmul fast float %133, %127
  %152 = fsub fast float %146, %149
  %153 = fsub fast float %147, %150
  %154 = fsub fast float %148, %151
  %155 = fmul fast float %152, %99
  %156 = fmul fast float %153, %99
  %157 = fmul fast float %154, %99
  %158 = add i32 %40, %30
  %159 = add i32 %41, %31
  %160 = uitofp i32 %30 to float
  %161 = uitofp i32 %31 to float
  %162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %163 = extractvalue %dx.types.CBufRet.f32 %162, 1
  %164 = fdiv fast float %160, %163
  %165 = fdiv fast float %161, %163
  %166 = extractvalue %dx.types.CBufRet.f32 %162, 2
  %167 = fmul fast float %166, 2.000000e+00
  %168 = fadd fast float %167, %164
  %169 = fadd fast float %167, %165
  %170 = fmul fast float %168, %143
  %171 = fmul fast float %168, %144
  %172 = fmul fast float %168, %145
  %173 = fmul fast float %169, %155
  %174 = fmul fast float %169, %156
  %175 = fmul fast float %169, %157
  %176 = fadd fast float %173, %170
  %177 = fmul fast float %176, 2.000000e+00
  %178 = fsub fast float %42, %143
  %179 = fsub fast float %178, %155
  %180 = fadd fast float %179, %177
  %181 = fadd fast float %174, %171
  %182 = fmul fast float %181, 2.000000e+00
  %183 = fsub fast float %43, %144
  %184 = fsub fast float %183, %156
  %185 = fadd fast float %184, %182
  %186 = fadd fast float %175, %172
  %187 = fmul fast float %186, 2.000000e+00
  %188 = fsub fast float %87, %145
  %189 = fsub fast float %188, %157
  %190 = fadd fast float %189, %187
  %191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %192 = extractvalue %dx.types.CBufRet.f32 %191, 0
  %193 = extractvalue %dx.types.CBufRet.f32 %191, 1
  %194 = extractvalue %dx.types.CBufRet.f32 %191, 2
  %195 = fsub fast float %180, %192
  %196 = fsub fast float %185, %193
  %197 = fsub fast float %190, %194
  %198 = call float @dx.op.dot3.f32(i32 55, float %195, float %196, float %197, float %195, float %196, float %197)  ; Dot3(ax,ay,az,bx,by,bz)
  %199 = call float @dx.op.unary.f32(i32 25, float %198)  ; Rsqrt(value)
  %200 = fmul fast float %195, %199
  %201 = fmul fast float %196, %199
  %202 = fmul fast float %197, %199
  %203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %32, i32 0)  ; BufferLoad(srv,index,wot)
  %204 = extractvalue %dx.types.ResRet.i32 %203, 0
  %205 = and i32 %22, 31
  %206 = shl i32 1, %205
  %207 = shl i32 %206, %205
  %208 = shl i32 %20, %205
  %209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %32, i32 0)  ; BufferLoad(srv,index,wot)
  %210 = extractvalue %dx.types.ResRet.i32 %209, 0
  %211 = extractvalue %dx.types.CBufRet.i32 %21, 1
  %212 = icmp ne i32 %211, 0
  %213 = icmp ne i32 %210, 262144
  %214 = and i1 %213, %212
  %215 = icmp ne i32 %204, 0
  %216 = and i1 %215, %214
  br i1 %216, label %217, label %248, !dx.controlflow.hints !34

; <label>:217                                     ; preds = %86
  br label %218

; <label>:218                                     ; preds = %218, %217
  %219 = phi i32 [ %244, %218 ], [ %204, %217 ]
  %220 = phi float [ %242, %218 ], [ 0.000000e+00, %217 ]
  %221 = phi float [ %239, %218 ], [ 0.000000e+00, %217 ]
  %222 = phi float [ %240, %218 ], [ 0.000000e+00, %217 ]
  %223 = phi float [ %241, %218 ], [ 0.000000e+00, %217 ]
  %224 = phi i32 [ %245, %218 ], [ 0, %217 ]
  %225 = mul i32 %224, %207
  %226 = add i32 %208, %19
  %227 = add i32 %226, %210
  %228 = add i32 %227, %225
  %229 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %228, i32 undef)  ; BufferLoad(srv,index,wot)
  %230 = extractvalue %dx.types.ResRet.f32 %229, 0
  %231 = extractvalue %dx.types.ResRet.f32 %229, 1
  %232 = extractvalue %dx.types.ResRet.f32 %229, 2
  %233 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %228, i32 undef)  ; BufferLoad(srv,index,wot)
  %234 = extractvalue %dx.types.ResRet.f32 %233, 0
  %235 = fmul fast float %234, %234
  %236 = fmul fast float %235, %230
  %237 = fmul fast float %235, %231
  %238 = fmul fast float %235, %232
  %239 = fadd fast float %236, %221
  %240 = fadd fast float %237, %222
  %241 = fadd fast float %238, %223
  %242 = fadd fast float %235, %220
  %243 = add i32 %219, -1
  %244 = and i32 %243, %219
  %245 = add i32 %224, 1
  %246 = icmp eq i32 %244, 0
  br i1 %246, label %247, label %218

; <label>:247                                     ; preds = %218
  br label %248

; <label>:248                                     ; preds = %247, %86
  %249 = phi float [ 0.000000e+00, %86 ], [ %242, %247 ]
  %250 = phi float [ 0.000000e+00, %86 ], [ %239, %247 ]
  %251 = phi float [ 0.000000e+00, %86 ], [ %240, %247 ]
  %252 = phi float [ 0.000000e+00, %86 ], [ %241, %247 ]
  %253 = fcmp fast ogt float %249, 0.000000e+00
  %254 = fcmp fast une float %249, 1.000000e+00
  %255 = and i1 %253, %254
  br i1 %255, label %256, label %261, !dx.controlflow.hints !35

; <label>:256                                     ; preds = %248
  %257 = fdiv fast float 1.000000e+00, %249
  %258 = fmul fast float %257, %250
  %259 = fmul fast float %257, %251
  %260 = fmul fast float %257, %252
  br label %261

; <label>:261                                     ; preds = %256, %248
  %262 = phi float [ 1.000000e+00, %256 ], [ %249, %248 ]
  %263 = phi float [ %258, %256 ], [ %250, %248 ]
  %264 = phi float [ %259, %256 ], [ %251, %248 ]
  %265 = phi float [ %260, %256 ], [ %252, %248 ]
  %266 = call float @dx.op.unary.f32(i32 7, float %262)  ; Saturate(value)
  %267 = fsub fast float 1.000000e+00, %266
  %268 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %269 = extractvalue %dx.types.CBufRet.i32 %268, 0
  %270 = icmp eq i32 %269, 1
  br i1 %270, label %271, label %301, !dx.controlflow.hints !36

; <label>:271                                     ; preds = %261
  %272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %273 = extractvalue %dx.types.CBufRet.f32 %272, 0
  %274 = extractvalue %dx.types.CBufRet.f32 %272, 1
  %275 = fsub fast float %180, %273
  %276 = fsub fast float %185, %274
  %277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %278 = extractvalue %dx.types.CBufRet.f32 %277, 0
  %279 = extractvalue %dx.types.CBufRet.f32 %277, 1
  %280 = fmul fast float %275, %278
  %281 = fmul fast float %276, %279
  %282 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %15, float %280, float %281, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %283 = extractvalue %dx.types.ResRet.f32 %282, 0
  %284 = fcmp fast ogt float %283, 0.000000e+00
  %285 = extractvalue %dx.types.CBufRet.i32 %268, 3
  %286 = icmp ne i32 %285, 0
  %287 = and i1 %284, %286
  br i1 %287, label %288, label %301, !dx.controlflow.hints !37

; <label>:288                                     ; preds = %271
  %289 = fmul fast float %195, %195
  %290 = fmul fast float %196, %196
  %291 = fadd fast float %289, %290
  %292 = uitofp i32 %285 to float
  %293 = fmul fast float %292, %292
  %294 = fcmp fast ogt float %291, %293
  br i1 %294, label %301, label %295, !dx.controlflow.hints !38

; <label>:295                                     ; preds = %288
  %296 = call float @dx.op.unary.f32(i32 24, float %291)  ; Sqrt(value)
  %297 = fsub fast float %292, %296
  %298 = fmul fast float %297, 0x3F75555560000000
  %299 = call float @dx.op.unary.f32(i32 7, float %298)  ; Saturate(value)
  %300 = call float @dx.op.binary.f32(i32 36, float %299, float %283)  ; FMin(a,b)
  br label %301

; <label>:301                                     ; preds = %295, %288, %271, %261
  %302 = phi float [ 1.000000e+00, %261 ], [ %300, %295 ], [ %283, %271 ], [ 0.000000e+00, %288 ]
  %303 = fcmp fast ogt float %267, 0.000000e+00
  %304 = fcmp fast olt float %302, 1.000000e+00
  %305 = or i1 %303, %304
  br i1 %305, label %306, label %987, !dx.controlflow.hints !39

; <label>:306                                     ; preds = %301
  %307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %308 = extractvalue %dx.types.CBufRet.f32 %307, 0
  %309 = extractvalue %dx.types.CBufRet.f32 %307, 1
  %310 = fsub fast float %180, %308
  %311 = fsub fast float %185, %309
  %312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %313 = extractvalue %dx.types.CBufRet.f32 %312, 0
  %314 = extractvalue %dx.types.CBufRet.f32 %312, 1
  %315 = fmul fast float %310, %313
  %316 = fmul fast float %311, %314
  %317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %318 = extractvalue %dx.types.CBufRet.f32 %317, 0
  %319 = fmul fast float %318, %315
  %320 = extractvalue %dx.types.CBufRet.f32 %317, 1
  %321 = fadd fast float %319, %320
  %322 = extractvalue %dx.types.CBufRet.f32 %317, 2
  %323 = fmul fast float %322, %316
  %324 = extractvalue %dx.types.CBufRet.f32 %317, 3
  %325 = fadd fast float %323, %324
  %326 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %15, float %321, float %325, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %327 = extractvalue %dx.types.ResRet.f32 %326, 0
  %328 = extractvalue %dx.types.ResRet.f32 %326, 1
  %329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %330 = extractvalue %dx.types.CBufRet.f32 %329, 1
  %331 = extractvalue %dx.types.CBufRet.f32 %329, 0
  %332 = fsub fast float %330, %331
  %333 = fmul fast float %332, %327
  %334 = fadd fast float %333, %331
  %335 = extractvalue %dx.types.CBufRet.f32 %329, 3
  %336 = extractvalue %dx.types.CBufRet.f32 %329, 2
  %337 = fsub fast float %335, %336
  %338 = fmul fast float %337, %328
  %339 = fadd fast float %338, %336
  %340 = fsub fast float %190, %334
  %341 = fsub fast float %339, %334
  %342 = fdiv fast float %340, %341
  %343 = call float @dx.op.unary.f32(i32 7, float %342)  ; Saturate(value)
  %344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %345 = extractvalue %dx.types.CBufRet.f32 %344, 0
  %346 = fmul fast float %345, %343
  %347 = extractvalue %dx.types.CBufRet.f32 %344, 1
  %348 = fadd fast float %346, %347
  %349 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %15, float %321, float %325, float %348, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %350 = extractvalue %dx.types.ResRet.f32 %349, 0
  %351 = extractvalue %dx.types.ResRet.f32 %349, 1
  %352 = extractvalue %dx.types.ResRet.f32 %349, 2
  %353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %354 = extractvalue %dx.types.CBufRet.f32 %353, 0
  %355 = extractvalue %dx.types.CBufRet.f32 %353, 1
  %356 = extractvalue %dx.types.CBufRet.f32 %353, 2
  %357 = fmul fast float %354, %350
  %358 = fmul fast float %355, %351
  %359 = fmul fast float %356, %352
  %360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %361 = extractvalue %dx.types.CBufRet.f32 %360, 0
  %362 = extractvalue %dx.types.CBufRet.f32 %360, 1
  %363 = extractvalue %dx.types.CBufRet.f32 %360, 2
  %364 = fadd fast float %357, %361
  %365 = fadd fast float %358, %362
  %366 = fadd fast float %359, %363
  %367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %368 = extractvalue %dx.types.CBufRet.f32 %367, 0
  %369 = fmul fast float %368, %315
  %370 = extractvalue %dx.types.CBufRet.f32 %367, 1
  %371 = fadd fast float %369, %370
  %372 = extractvalue %dx.types.CBufRet.f32 %367, 2
  %373 = fmul fast float %372, %316
  %374 = extractvalue %dx.types.CBufRet.f32 %367, 3
  %375 = fadd fast float %373, %374
  %376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %377 = extractvalue %dx.types.CBufRet.f32 %376, 0
  %378 = extractvalue %dx.types.CBufRet.f32 %376, 1
  %379 = extractvalue %dx.types.CBufRet.f32 %376, 2
  %380 = extractvalue %dx.types.CBufRet.f32 %376, 3
  %381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %382 = extractvalue %dx.types.CBufRet.f32 %381, 0
  %383 = extractvalue %dx.types.CBufRet.f32 %381, 1
  %384 = extractvalue %dx.types.CBufRet.f32 %381, 2
  %385 = extractvalue %dx.types.CBufRet.f32 %381, 3
  %386 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %15, float %371, float %375, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %387 = extractvalue %dx.types.ResRet.f32 %386, 0
  %388 = extractvalue %dx.types.ResRet.f32 %386, 1
  %389 = extractvalue %dx.types.ResRet.f32 %386, 2
  %390 = extractvalue %dx.types.ResRet.f32 %386, 3
  %391 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %15, float %371, float %375, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %392 = extractvalue %dx.types.ResRet.f32 %391, 0
  %393 = extractvalue %dx.types.ResRet.f32 %391, 1
  %394 = extractvalue %dx.types.ResRet.f32 %391, 2
  %395 = extractvalue %dx.types.ResRet.f32 %391, 3
  %396 = fmul fast float %387, %364
  %397 = fmul fast float %392, %364
  %398 = fmul fast float %394, %364
  %399 = fmul fast float %390, %364
  %400 = fadd fast float %396, %377
  %401 = fadd fast float %397, %378
  %402 = fadd fast float %398, %379
  %403 = fadd fast float %399, %380
  %404 = fmul fast float %388, %364
  %405 = fmul fast float %393, %364
  %406 = fadd fast float %404, %382
  %407 = fadd fast float %405, %383
  %408 = fmul fast float %389, %364
  %409 = fmul fast float %395, %364
  %410 = fadd fast float %408, %384
  %411 = fadd fast float %409, %385
  %412 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %15, float %371, float %375, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %413 = extractvalue %dx.types.ResRet.f32 %412, 0
  %414 = extractvalue %dx.types.ResRet.f32 %412, 1
  %415 = extractvalue %dx.types.ResRet.f32 %412, 2
  %416 = extractvalue %dx.types.ResRet.f32 %412, 3
  %417 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %15, float %371, float %375, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %418 = extractvalue %dx.types.ResRet.f32 %417, 0
  %419 = extractvalue %dx.types.ResRet.f32 %417, 1
  %420 = extractvalue %dx.types.ResRet.f32 %417, 2
  %421 = extractvalue %dx.types.ResRet.f32 %417, 3
  %422 = fmul fast float %413, %365
  %423 = fmul fast float %418, %365
  %424 = fmul fast float %420, %365
  %425 = fmul fast float %416, %365
  %426 = fadd fast float %400, %422
  %427 = fadd fast float %401, %423
  %428 = fadd fast float %402, %424
  %429 = fadd fast float %403, %425
  %430 = fmul fast float %414, %365
  %431 = fmul fast float %419, %365
  %432 = fadd fast float %406, %430
  %433 = fadd fast float %407, %431
  %434 = fmul fast float %415, %365
  %435 = fmul fast float %421, %365
  %436 = fadd fast float %410, %434
  %437 = fadd fast float %411, %435
  %438 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %15, float %371, float %375, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %439 = extractvalue %dx.types.ResRet.f32 %438, 0
  %440 = extractvalue %dx.types.ResRet.f32 %438, 1
  %441 = extractvalue %dx.types.ResRet.f32 %438, 2
  %442 = extractvalue %dx.types.ResRet.f32 %438, 3
  %443 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %15, float %371, float %375, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %444 = extractvalue %dx.types.ResRet.f32 %443, 0
  %445 = extractvalue %dx.types.ResRet.f32 %443, 1
  %446 = extractvalue %dx.types.ResRet.f32 %443, 2
  %447 = extractvalue %dx.types.ResRet.f32 %443, 3
  %448 = fmul fast float %439, %366
  %449 = fmul fast float %444, %366
  %450 = fmul fast float %446, %366
  %451 = fmul fast float %442, %366
  %452 = fadd fast float %426, %448
  %453 = fadd fast float %427, %449
  %454 = fadd fast float %428, %450
  %455 = fadd fast float %429, %451
  %456 = fmul fast float %440, %366
  %457 = fmul fast float %445, %366
  %458 = fadd fast float %432, %456
  %459 = fadd fast float %433, %457
  %460 = fmul fast float %441, %366
  %461 = fmul fast float %447, %366
  %462 = fadd fast float %436, %460
  %463 = fadd fast float %437, %461
  %464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %465 = extractvalue %dx.types.CBufRet.f32 %464, 0
  %466 = fsub fast float %180, %465
  %467 = fsub fast float %308, %180
  %468 = call float @dx.op.binary.f32(i32 35, float %467, float %466)  ; FMax(a,b)
  %469 = extractvalue %dx.types.CBufRet.f32 %464, 1
  %470 = fsub fast float %185, %469
  %471 = fsub fast float %309, %185
  %472 = call float @dx.op.binary.f32(i32 35, float %471, float %470)  ; FMax(a,b)
  %473 = call float @dx.op.binary.f32(i32 35, float %468, float %472)  ; FMax(a,b)
  %474 = extractvalue %dx.types.CBufRet.f32 %312, 3
  %475 = fmul fast float %474, %473
  %476 = call float @dx.op.unary.f32(i32 7, float %475)  ; Saturate(value)
  %477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %478 = extractvalue %dx.types.CBufRet.f32 %477, 0
  %479 = extractvalue %dx.types.CBufRet.f32 %477, 1
  %480 = extractvalue %dx.types.CBufRet.f32 %477, 2
  %481 = extractvalue %dx.types.CBufRet.f32 %477, 3
  %482 = fsub fast float %478, %452
  %483 = fsub fast float %479, %453
  %484 = fsub fast float %480, %454
  %485 = fsub fast float %481, %455
  %486 = fmul fast float %482, %476
  %487 = fmul fast float %483, %476
  %488 = fmul fast float %484, %476
  %489 = fmul fast float %485, %476
  %490 = fadd fast float %486, %452
  %491 = fadd fast float %487, %453
  %492 = fadd fast float %488, %454
  %493 = fadd fast float %489, %455
  %494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %495 = extractvalue %dx.types.CBufRet.f32 %494, 0
  %496 = extractvalue %dx.types.CBufRet.f32 %494, 1
  %497 = fsub fast float %495, %458
  %498 = fsub fast float %496, %459
  %499 = fmul fast float %497, %476
  %500 = fmul fast float %498, %476
  %501 = fadd fast float %499, %458
  %502 = fadd fast float %500, %459
  %503 = extractvalue %dx.types.CBufRet.f32 %494, 2
  %504 = extractvalue %dx.types.CBufRet.f32 %494, 3
  %505 = fsub fast float %503, %462
  %506 = fsub fast float %504, %463
  %507 = fmul fast float %505, %476
  %508 = fmul fast float %506, %476
  %509 = fadd fast float %507, %462
  %510 = fadd fast float %508, %463
  %511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %512 = extractvalue %dx.types.CBufRet.f32 %511, 0
  %513 = fmul fast float %512, %490
  %514 = fmul fast float %512, %491
  %515 = fmul fast float %512, %492
  %516 = fmul fast float %512, %493
  %517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %518 = extractvalue %dx.types.CBufRet.f32 %517, 0
  %519 = fmul fast float %518, %501
  %520 = fmul fast float %518, %502
  %521 = fadd fast float %519, %513
  %522 = fadd fast float %520, %515
  %523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %524 = extractvalue %dx.types.CBufRet.f32 %523, 0
  %525 = fmul fast float %524, %509
  %526 = fmul fast float %524, %510
  %527 = fadd fast float %521, %525
  %528 = fadd fast float %522, %526
  %529 = extractvalue %dx.types.CBufRet.f32 %511, 1
  %530 = fmul fast float %529, %490
  %531 = fmul fast float %529, %491
  %532 = fmul fast float %529, %492
  %533 = fmul fast float %529, %493
  %534 = extractvalue %dx.types.CBufRet.f32 %517, 1
  %535 = fmul fast float %534, %501
  %536 = fmul fast float %534, %502
  %537 = fadd fast float %535, %530
  %538 = fadd fast float %536, %532
  %539 = extractvalue %dx.types.CBufRet.f32 %523, 1
  %540 = fmul fast float %539, %509
  %541 = fmul fast float %539, %510
  %542 = fadd fast float %537, %540
  %543 = fadd fast float %538, %541
  %544 = extractvalue %dx.types.CBufRet.f32 %511, 2
  %545 = fmul fast float %544, %490
  %546 = fmul fast float %544, %491
  %547 = fmul fast float %544, %492
  %548 = fmul fast float %544, %493
  %549 = extractvalue %dx.types.CBufRet.f32 %517, 2
  %550 = fmul fast float %549, %501
  %551 = fmul fast float %549, %502
  %552 = fadd fast float %550, %545
  %553 = fadd fast float %551, %547
  %554 = extractvalue %dx.types.CBufRet.f32 %523, 2
  %555 = fmul fast float %554, %509
  %556 = fmul fast float %554, %510
  %557 = fadd fast float %552, %555
  %558 = fadd fast float %553, %556
  %559 = fmul fast float %546, %546
  %560 = fmul fast float %558, %558
  %561 = fmul fast float %548, %548
  %562 = fadd fast float %561, %559
  %563 = fadd fast float %562, %560
  %564 = call float @dx.op.unary.f32(i32 24, float %563)  ; Sqrt(value)
  %565 = fcmp fast ugt float %564, 0.000000e+00
  br i1 %565, label %566, label %581, !dx.controlflow.hints !40

; <label>:566                                     ; preds = %306
  %567 = fsub fast float -0.000000e+00, %548
  %568 = fdiv fast float %567, %564
  %569 = fsub fast float -0.000000e+00, %546
  %570 = fdiv fast float %569, %564
  %571 = fdiv fast float %558, %564
  %572 = fmul fast float %557, 0x3FE279A760000000
  %573 = fmul fast float %570, %546
  %574 = fmul fast float %571, %558
  %575 = fmul fast float %568, %548
  %576 = fadd fast float %573, %575
  %577 = fsub fast float %576, %574
  %578 = call float @dx.op.unary.f32(i32 6, float %577)  ; FAbs(value)
  %579 = fadd fast float %578, 0x3DDB7CDFE0000000
  %580 = fdiv fast float %572, %579
  br label %581

; <label>:581                                     ; preds = %566, %306
  %582 = phi float [ %580, %566 ], [ 1.000000e+00, %306 ]
  %583 = fmul fast float %531, %531
  %584 = fmul fast float %543, %543
  %585 = fmul fast float %533, %533
  %586 = fadd fast float %585, %583
  %587 = fadd fast float %586, %584
  %588 = call float @dx.op.unary.f32(i32 24, float %587)  ; Sqrt(value)
  %589 = fcmp fast ugt float %588, 0.000000e+00
  br i1 %589, label %590, label %605, !dx.controlflow.hints !40

; <label>:590                                     ; preds = %581
  %591 = fsub fast float -0.000000e+00, %533
  %592 = fdiv fast float %591, %588
  %593 = fsub fast float -0.000000e+00, %531
  %594 = fdiv fast float %593, %588
  %595 = fdiv fast float %543, %588
  %596 = fmul fast float %542, 0x3FE279A760000000
  %597 = fmul fast float %594, %531
  %598 = fmul fast float %595, %543
  %599 = fmul fast float %592, %533
  %600 = fadd fast float %597, %599
  %601 = fsub fast float %600, %598
  %602 = call float @dx.op.unary.f32(i32 6, float %601)  ; FAbs(value)
  %603 = fadd fast float %602, 0x3DDB7CDFE0000000
  %604 = fdiv fast float %596, %603
  br label %605

; <label>:605                                     ; preds = %590, %581
  %606 = phi float [ %604, %590 ], [ 1.000000e+00, %581 ]
  %607 = call float @dx.op.binary.f32(i32 36, float %606, float %582)  ; FMin(a,b)
  %608 = fmul fast float %514, %514
  %609 = fmul fast float %528, %528
  %610 = fmul fast float %516, %516
  %611 = fadd fast float %610, %608
  %612 = fadd fast float %611, %609
  %613 = call float @dx.op.unary.f32(i32 24, float %612)  ; Sqrt(value)
  %614 = fcmp fast ugt float %613, 0.000000e+00
  br i1 %614, label %615, label %630, !dx.controlflow.hints !40

; <label>:615                                     ; preds = %605
  %616 = fsub fast float -0.000000e+00, %516
  %617 = fdiv fast float %616, %613
  %618 = fsub fast float -0.000000e+00, %514
  %619 = fdiv fast float %618, %613
  %620 = fdiv fast float %528, %613
  %621 = fmul fast float %527, 0x3FE279A760000000
  %622 = fmul fast float %619, %514
  %623 = fmul fast float %620, %528
  %624 = fmul fast float %617, %516
  %625 = fadd fast float %622, %624
  %626 = fsub fast float %625, %623
  %627 = call float @dx.op.unary.f32(i32 6, float %626)  ; FAbs(value)
  %628 = fadd fast float %627, 0x3DDB7CDFE0000000
  %629 = fdiv fast float %621, %628
  br label %630

; <label>:630                                     ; preds = %615, %605
  %631 = phi float [ %629, %615 ], [ 1.000000e+00, %605 ]
  %632 = call float @dx.op.binary.f32(i32 36, float %631, float %607)  ; FMin(a,b)
  %633 = call float @dx.op.unary.f32(i32 7, float %632)  ; Saturate(value)
  %634 = fcmp fast olt float %633, 1.000000e+00
  br i1 %634, label %635, label %645, !dx.controlflow.hints !41

; <label>:635                                     ; preds = %630
  %636 = fmul fast float %633, %514
  %637 = fmul fast float %633, %528
  %638 = fmul fast float %633, %516
  %639 = fmul fast float %633, %531
  %640 = fmul fast float %633, %543
  %641 = fmul fast float %633, %533
  %642 = fmul fast float %633, %546
  %643 = fmul fast float %633, %558
  %644 = fmul fast float %633, %548
  br label %645

; <label>:645                                     ; preds = %635, %630
  %646 = phi float [ %642, %635 ], [ %546, %630 ]
  %647 = phi float [ %643, %635 ], [ %558, %630 ]
  %648 = phi float [ %644, %635 ], [ %548, %630 ]
  %649 = phi float [ %639, %635 ], [ %531, %630 ]
  %650 = phi float [ %640, %635 ], [ %543, %630 ]
  %651 = phi float [ %641, %635 ], [ %533, %630 ]
  %652 = phi float [ %636, %635 ], [ %514, %630 ]
  %653 = phi float [ %637, %635 ], [ %528, %630 ]
  %654 = phi float [ %638, %635 ], [ %516, %630 ]
  %655 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %527)  ; FMax(a,b)
  %656 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %542)  ; FMax(a,b)
  %657 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %557)  ; FMax(a,b)
  %658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %659 = extractvalue %dx.types.CBufRet.f32 %658, 0
  %660 = fcmp fast ogt float %659, 0.000000e+00
  %661 = fcmp fast oge float %315, 0.000000e+00
  %662 = and i1 %661, %660
  %663 = fcmp fast ole float %315, 1.000000e+00
  %664 = and i1 %663, %662
  %665 = fcmp fast oge float %316, 0.000000e+00
  %666 = and i1 %665, %664
  %667 = fcmp fast ole float %316, 1.000000e+00
  %668 = and i1 %667, %666
  br i1 %668, label %669, label %809, !dx.controlflow.hints !42

; <label>:669                                     ; preds = %645
  %670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %671 = extractvalue %dx.types.CBufRet.f32 %670, 2
  %672 = extractvalue %dx.types.CBufRet.f32 %670, 3
  %673 = fmul fast float %671, %315
  %674 = fmul fast float %672, %316
  %675 = call float @dx.op.unary.f32(i32 27, float %673)  ; Round_ni(value)
  %676 = call float @dx.op.unary.f32(i32 27, float %674)  ; Round_ni(value)
  %677 = fptosi float %675 to i32
  %678 = fptosi float %676 to i32
  %679 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %677, i32 %678, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %680 = extractvalue %dx.types.ResRet.i32 %679, 0
  %681 = and i32 %680, 65535
  %682 = lshr i32 %680, 16
  %683 = icmp eq i32 %681, 65535
  br i1 %683, label %720, label %684, !dx.controlflow.hints !43

; <label>:684                                     ; preds = %669
  %685 = extractvalue %dx.types.CBufRet.f32 %658, 1
  %686 = extractvalue %dx.types.CBufRet.f32 %670, 0
  %687 = extractvalue %dx.types.CBufRet.f32 %670, 1
  %688 = fmul fast float %686, %315
  %689 = fmul fast float %687, %316
  %690 = fmul fast float %688, 1.250000e-01
  %691 = fmul fast float %689, 1.250000e-01
  %692 = call float @dx.op.unary.f32(i32 27, float %690)  ; Round_ni(value)
  %693 = call float @dx.op.unary.f32(i32 27, float %691)  ; Round_ni(value)
  %694 = fmul fast float %692, 8.000000e+00
  %695 = fmul fast float %693, 8.000000e+00
  %696 = and i32 %680, 255
  %697 = lshr i32 %680, 8
  %698 = and i32 %697, 255
  %699 = mul nuw nsw i32 %696, 9
  %700 = uitofp i32 %699 to float
  %701 = mul nuw nsw i32 %698, 9
  %702 = uitofp i32 %701 to float
  %703 = fadd fast float %700, 5.000000e-01
  %704 = fadd fast float %703, %688
  %705 = fsub fast float %704, %694
  %706 = fadd fast float %702, 5.000000e-01
  %707 = fadd fast float %706, %689
  %708 = fsub fast float %707, %695
  %709 = fdiv fast float %705, %659
  %710 = fdiv fast float %708, %685
  %711 = fmul fast float %343, 4.375000e-01
  %712 = fadd fast float %711, 3.125000e-02
  %713 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %15, float %709, float %710, float %712, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %714 = extractvalue %dx.types.ResRet.f32 %713, 0
  %715 = extractvalue %dx.types.ResRet.f32 %713, 1
  %716 = extractvalue %dx.types.ResRet.f32 %713, 2
  %717 = fadd fast float %714, %655
  %718 = fadd fast float %715, %656
  %719 = fadd fast float %716, %657
  br label %720

; <label>:720                                     ; preds = %684, %669
  %721 = phi float [ %719, %684 ], [ %657, %669 ]
  %722 = phi float [ %718, %684 ], [ %656, %669 ]
  %723 = phi float [ %717, %684 ], [ %655, %669 ]
  %724 = icmp eq i32 %682, 65535
  br i1 %724, label %809, label %725, !dx.controlflow.hints !44

; <label>:725                                     ; preds = %720
  %726 = extractvalue %dx.types.CBufRet.f32 %658, 1
  %727 = extractvalue %dx.types.CBufRet.f32 %670, 0
  %728 = extractvalue %dx.types.CBufRet.f32 %670, 1
  %729 = fmul fast float %727, %315
  %730 = fmul fast float %728, %316
  %731 = fmul fast float %729, 1.250000e-01
  %732 = fmul fast float %730, 1.250000e-01
  %733 = call float @dx.op.unary.f32(i32 27, float %731)  ; Round_ni(value)
  %734 = call float @dx.op.unary.f32(i32 27, float %732)  ; Round_ni(value)
  %735 = fmul fast float %733, 8.000000e+00
  %736 = fmul fast float %734, 8.000000e+00
  %737 = fsub fast float %729, %735
  %738 = fsub fast float %730, %736
  %739 = fadd fast float %737, 5.000000e-01
  %740 = fadd fast float %738, 5.000000e-01
  %741 = and i32 %682, 255
  %742 = lshr i32 %680, 24
  %743 = mul nuw nsw i32 %741, 9
  %744 = uitofp i32 %743 to float
  %745 = mul nuw nsw i32 %742, 9
  %746 = uitofp i32 %745 to float
  %747 = fadd fast float %739, %744
  %748 = fadd fast float %740, %746
  %749 = fdiv fast float %747, %659
  %750 = fdiv fast float %748, %726
  %751 = fmul fast float %343, 4.375000e-01
  %752 = fadd fast float %751, 3.125000e-02
  %753 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %15, float %749, float %750, float %752, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %754 = extractvalue %dx.types.ResRet.f32 %753, 0
  %755 = extractvalue %dx.types.ResRet.f32 %753, 1
  %756 = extractvalue %dx.types.ResRet.f32 %753, 2
  %757 = fadd fast float %751, 5.312500e-01
  %758 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %15, float %749, float %750, float %757, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %759 = extractvalue %dx.types.ResRet.f32 %758, 0
  %760 = extractvalue %dx.types.ResRet.f32 %758, 1
  %761 = extractvalue %dx.types.ResRet.f32 %758, 2
  %762 = fmul fast float %759, 2.000000e+00
  %763 = fmul fast float %760, 2.000000e+00
  %764 = fmul fast float %761, 2.000000e+00
  %765 = fadd fast float %762, -1.000000e+00
  %766 = fadd fast float %763, -1.000000e+00
  %767 = fadd fast float %764, -1.000000e+00
  %768 = fmul fast float %765, %765
  %769 = fmul fast float %766, %766
  %770 = fadd fast float %768, %769
  %771 = fmul fast float %767, %767
  %772 = fadd fast float %770, %771
  %773 = call float @dx.op.unary.f32(i32 24, float %772)  ; Sqrt(value)
  %774 = fcmp fast ogt float %773, 0.000000e+00
  br i1 %774, label %775, label %779, !dx.controlflow.hints !45

; <label>:775                                     ; preds = %725
  %776 = fdiv fast float %765, %773
  %777 = fdiv fast float %766, %773
  %778 = fdiv fast float %767, %773
  br label %779

; <label>:779                                     ; preds = %775, %725
  %780 = phi float [ %776, %775 ], [ 0.000000e+00, %725 ]
  %781 = phi float [ %777, %775 ], [ 0.000000e+00, %725 ]
  %782 = phi float [ %778, %775 ], [ 0.000000e+00, %725 ]
  %783 = fmul fast float %195, %195
  %784 = fmul fast float %196, %196
  %785 = fadd fast float %783, %784
  %786 = call float @dx.op.unary.f32(i32 24, float %785)  ; Sqrt(value)
  %787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %788 = extractvalue %dx.types.CBufRet.f32 %787, 0
  %789 = extractvalue %dx.types.CBufRet.f32 %787, 1
  %790 = fsub fast float %786, %788
  %791 = fdiv fast float %790, %789
  %792 = call float @dx.op.unary.f32(i32 7, float %791)  ; Saturate(value)
  %793 = fmul fast float %792, 2.000000e+00
  %794 = fsub fast float 3.000000e+00, %793
  %795 = fmul fast float %792, %792
  %796 = fmul fast float %795, %794
  %797 = call float @dx.op.dot3.f32(i32 55, float %780, float %781, float %782, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %798 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %797)  ; FMax(a,b)
  %799 = fmul fast float %798, 0x400C5BF8A0000000
  %800 = fmul fast float %796, %754
  %801 = fmul fast float %800, %799
  %802 = fadd fast float %801, %723
  %803 = fmul fast float %796, %755
  %804 = fmul fast float %803, %799
  %805 = fadd fast float %804, %722
  %806 = fmul fast float %796, %756
  %807 = fmul fast float %806, %799
  %808 = fadd fast float %807, %721
  br label %809

; <label>:809                                     ; preds = %779, %720, %645
  %810 = phi float [ %808, %779 ], [ %721, %720 ], [ %657, %645 ]
  %811 = phi float [ %805, %779 ], [ %722, %720 ], [ %656, %645 ]
  %812 = phi float [ %802, %779 ], [ %723, %720 ], [ %655, %645 ]
  %813 = fcmp fast ogt float %190, %339
  %814 = and i1 %661, %813
  %815 = and i1 %663, %814
  %816 = and i1 %665, %815
  %817 = and i1 %667, %816
  br i1 %817, label %818, label %875, !dx.controlflow.hints !46

; <label>:818                                     ; preds = %809
  %819 = fmul fast float %341, 0x3FC24924A0000000
  %820 = fsub fast float %190, %339
  %821 = fdiv fast float %820, %819
  %822 = call float @dx.op.unary.f32(i32 7, float %821)  ; Saturate(value)
  %823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %824 = extractvalue %dx.types.CBufRet.f32 %823, 0
  %825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %826 = extractvalue %dx.types.CBufRet.f32 %825, 0
  %827 = extractvalue %dx.types.CBufRet.f32 %825, 1
  %828 = extractvalue %dx.types.CBufRet.f32 %825, 2
  %829 = fsub fast float %824, %812
  %830 = fsub fast float %826, %652
  %831 = fsub fast float %827, %653
  %832 = fsub fast float %828, %654
  %833 = fmul fast float %829, %822
  %834 = fmul fast float %830, %822
  %835 = fmul fast float %831, %822
  %836 = fmul fast float %832, %822
  %837 = fadd fast float %833, %812
  %838 = fadd fast float %834, %652
  %839 = fadd fast float %835, %653
  %840 = fadd fast float %836, %654
  %841 = extractvalue %dx.types.CBufRet.f32 %823, 1
  %842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %843 = extractvalue %dx.types.CBufRet.f32 %842, 0
  %844 = extractvalue %dx.types.CBufRet.f32 %842, 1
  %845 = extractvalue %dx.types.CBufRet.f32 %842, 2
  %846 = fsub fast float %841, %811
  %847 = fsub fast float %843, %649
  %848 = fsub fast float %844, %650
  %849 = fsub fast float %845, %651
  %850 = fmul fast float %846, %822
  %851 = fmul fast float %847, %822
  %852 = fmul fast float %848, %822
  %853 = fmul fast float %849, %822
  %854 = fadd fast float %850, %811
  %855 = fadd fast float %851, %649
  %856 = fadd fast float %852, %650
  %857 = fadd fast float %853, %651
  %858 = extractvalue %dx.types.CBufRet.f32 %823, 2
  %859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %860 = extractvalue %dx.types.CBufRet.f32 %859, 0
  %861 = extractvalue %dx.types.CBufRet.f32 %859, 1
  %862 = extractvalue %dx.types.CBufRet.f32 %859, 2
  %863 = fsub fast float %858, %810
  %864 = fsub fast float %860, %646
  %865 = fsub fast float %861, %647
  %866 = fsub fast float %862, %648
  %867 = fmul fast float %863, %822
  %868 = fmul fast float %864, %822
  %869 = fmul fast float %865, %822
  %870 = fmul fast float %866, %822
  %871 = fadd fast float %867, %810
  %872 = fadd fast float %868, %646
  %873 = fadd fast float %869, %647
  %874 = fadd fast float %870, %648
  br label %875

; <label>:875                                     ; preds = %818, %809
  %876 = phi float [ %871, %818 ], [ %810, %809 ]
  %877 = phi float [ %872, %818 ], [ %646, %809 ]
  %878 = phi float [ %873, %818 ], [ %647, %809 ]
  %879 = phi float [ %874, %818 ], [ %648, %809 ]
  %880 = phi float [ %854, %818 ], [ %811, %809 ]
  %881 = phi float [ %855, %818 ], [ %649, %809 ]
  %882 = phi float [ %856, %818 ], [ %650, %809 ]
  %883 = phi float [ %857, %818 ], [ %651, %809 ]
  %884 = phi float [ %837, %818 ], [ %812, %809 ]
  %885 = phi float [ %838, %818 ], [ %652, %809 ]
  %886 = phi float [ %839, %818 ], [ %653, %809 ]
  %887 = phi float [ %840, %818 ], [ %654, %809 ]
  %888 = extractvalue %dx.types.CBufRet.f32 %464, 3
  %889 = fmul fast float %888, %884
  %890 = fmul fast float %888, %880
  %891 = fmul fast float %888, %876
  %892 = fmul fast float %885, 1.500000e+00
  %893 = fmul fast float %892, %888
  %894 = fmul fast float %886, 1.500000e+00
  %895 = fmul fast float %894, %888
  %896 = fmul fast float %887, 1.500000e+00
  %897 = fmul fast float %896, %888
  %898 = fmul fast float %881, 1.500000e+00
  %899 = fmul fast float %898, %888
  %900 = fmul fast float %882, 1.500000e+00
  %901 = fmul fast float %900, %888
  %902 = fmul fast float %883, 1.500000e+00
  %903 = fmul fast float %902, %888
  %904 = fmul fast float %877, 1.500000e+00
  %905 = fmul fast float %904, %888
  %906 = fmul fast float %878, 1.500000e+00
  %907 = fmul fast float %906, %888
  %908 = fmul fast float %879, 1.500000e+00
  %909 = fmul fast float %908, %888
  %910 = fmul fast float %889, 0x3FD20DD760000000
  %911 = fmul fast float %890, 0x3FD20DD760000000
  %912 = fmul fast float %891, 0x3FD20DD760000000
  br i1 %89, label %936, label %913, !dx.controlflow.hints !47

; <label>:913                                     ; preds = %875
  %914 = fmul fast float %202, 0xBFD4D8D7C0000000
  %915 = fmul fast float %914, %895
  %916 = fmul fast float %897, %200
  %917 = fmul fast float %893, %201
  %918 = fadd fast float %917, %916
  %919 = fmul fast float %918, 0x3FD4D8D7C0000000
  %920 = fadd fast float %915, %910
  %921 = fadd fast float %920, %919
  %922 = fmul fast float %914, %901
  %923 = fmul fast float %903, %200
  %924 = fmul fast float %899, %201
  %925 = fadd fast float %924, %923
  %926 = fmul fast float %925, 0x3FD4D8D7C0000000
  %927 = fadd fast float %922, %911
  %928 = fadd fast float %927, %926
  %929 = fmul fast float %914, %907
  %930 = fmul fast float %909, %200
  %931 = fmul fast float %905, %201
  %932 = fadd fast float %931, %930
  %933 = fmul fast float %932, 0x3FD4D8D7C0000000
  %934 = fadd fast float %929, %912
  %935 = fadd fast float %934, %933
  br label %968

; <label>:936                                     ; preds = %875
  %937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %938 = extractvalue %dx.types.CBufRet.f32 %937, 0
  %939 = extractvalue %dx.types.CBufRet.f32 %937, 1
  %940 = extractvalue %dx.types.CBufRet.f32 %937, 2
  %941 = fmul fast float %895, %131
  %942 = fmul fast float %941, %940
  %943 = fmul fast float %938, %897
  %944 = fmul fast float %939, %893
  %945 = fadd fast float %944, %943
  %946 = fmul fast float %945, %131
  %947 = fsub fast float %946, %942
  %948 = fmul fast float %947, 0x3FDF454380000000
  %949 = fadd fast float %948, %910
  %950 = fmul fast float %901, %131
  %951 = fmul fast float %950, %940
  %952 = fmul fast float %938, %903
  %953 = fmul fast float %939, %899
  %954 = fadd fast float %953, %952
  %955 = fmul fast float %954, %131
  %956 = fsub fast float %955, %951
  %957 = fmul fast float %956, 0x3FDF454380000000
  %958 = fadd fast float %957, %911
  %959 = fmul fast float %907, %131
  %960 = fmul fast float %959, %940
  %961 = fmul fast float %938, %909
  %962 = fmul fast float %939, %905
  %963 = fadd fast float %962, %961
  %964 = fmul fast float %963, %131
  %965 = fsub fast float %964, %960
  %966 = fmul fast float %965, 0x3FDF454380000000
  %967 = fadd fast float %966, %912
  br label %968

; <label>:968                                     ; preds = %936, %913
  %969 = phi float [ %921, %913 ], [ %949, %936 ]
  %970 = phi float [ %928, %913 ], [ %958, %936 ]
  %971 = phi float [ %935, %913 ], [ %967, %936 ]
  %972 = fmul fast float %969, %267
  %973 = fmul fast float %970, %267
  %974 = fmul fast float %971, %267
  %975 = fsub fast float %263, %969
  %976 = fadd fast float %975, %972
  %977 = fsub fast float %264, %970
  %978 = fadd fast float %977, %973
  %979 = fsub fast float %265, %971
  %980 = fadd fast float %979, %974
  %981 = fmul fast float %976, %302
  %982 = fmul fast float %978, %302
  %983 = fmul fast float %980, %302
  %984 = fadd fast float %981, %969
  %985 = fadd fast float %982, %970
  %986 = fadd fast float %983, %971
  br label %987

; <label>:987                                     ; preds = %968, %301
  %988 = phi float [ %984, %968 ], [ %263, %301 ]
  %989 = phi float [ %985, %968 ], [ %264, %301 ]
  %990 = phi float [ %986, %968 ], [ %265, %301 ]
  %991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %992 = extractvalue %dx.types.CBufRet.f32 %991, 3
  %993 = fmul fast float %992, %988
  %994 = fmul fast float %992, %989
  %995 = fmul fast float %992, %990
  %996 = extractvalue %dx.types.CBufRet.f32 %991, 0
  %997 = fmul fast float %993, %996
  %998 = fmul fast float %994, %996
  %999 = fmul fast float %995, %996
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %158, i32 %159, i32 undef, float %997, float %998, float %999, float %997, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1000 = add i32 %159, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %158, i32 %1000, i32 undef, float %997, float %998, float %999, float %997, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1001 = add i32 %158, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1001, i32 %159, i32 undef, float %997, float %998, float %999, float %997, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1001, i32 %1000, i32 undef, float %997, float %998, float %999, float %997, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1002

; <label>:1002                                    ; preds = %987, %0
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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

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
!dx.entryPoints = !{!29}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !22, !24, !27}
!5 = !{!6, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !21}
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
!18 = !{i32 9, %"class.Buffer<vector<float, 3> >"* undef, !"", i32 0, i32 19, i32 1, i32 10, i32 0, !7}
!19 = !{i32 10, %"class.Buffer<float>"* undef, !"", i32 0, i32 20, i32 1, i32 10, i32 0, !7}
!20 = !{i32 11, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 22, i32 1, i32 12, i32 0, !17}
!21 = !{i32 12, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 23, i32 1, i32 12, i32 0, !17}
!22 = !{!23}
!23 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!24 = !{!25, !26}
!25 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!26 = !{i32 1, %DeferredEffectLightConsts_decl* undef, !"", i32 0, i32 1, i32 1, i32 240, null}
!27 = !{!28}
!28 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!29 = !{void ()* @cs_del_sh_combine_multilightgrid_2_lowres, !"cs_del_sh_combine_multilightgrid_2_lowres", null, !4, !30}
!30 = !{i32 0, i64 272, i32 4, !31}
!31 = !{i32 64, i32 1, i32 1}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 1}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 1}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 1}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 1}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}

