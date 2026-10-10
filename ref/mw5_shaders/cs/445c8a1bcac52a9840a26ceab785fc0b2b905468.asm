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
; shader hash: e87fe229817a0ec2a60c850d707399f6
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

define void @cs_del_sh_combine_multilightgrid_8() {
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
  %23 = add i32 %22, 6
  %24 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %23, i32 0)  ; BufferLoad(srv,index,wot)
  %25 = extractvalue %dx.types.ResRet.i32 %24, 0
  %26 = icmp ult i32 %18, %25
  br i1 %26, label %27, label %1084, !dx.controlflow.hints !32

; <label>:27                                      ; preds = %0
  %28 = add i32 %22, 9
  %29 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 %28)  ; CBufferLoadLegacy(handle,regIndex)
  %30 = extractvalue %dx.types.CBufRet.i32 %29, 2
  %31 = add i32 %30, %18
  %32 = shl i32 %31, 5
  %33 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %32, i32 undef)  ; BufferLoad(srv,index,wot)
  %34 = extractvalue %dx.types.ResRet.i32 %33, 0
  %35 = extractvalue %dx.types.ResRet.i32 %33, 1
  %36 = extractvalue %dx.types.ResRet.i32 %33, 2
  %37 = extractvalue %dx.types.ResRet.i32 %33, 3
  %38 = lshr i32 %37, 14
  %39 = and i32 %38, 16383
  %40 = and i32 %37, 16383
  %41 = bitcast i32 %34 to float
  %42 = bitcast i32 %35 to float
  %43 = bitcast i32 %36 to float
  %44 = and i32 %37, 536870912
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %85, label %46, !dx.controlflow.hints !33

; <label>:46                                      ; preds = %27
  %47 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %48 = extractvalue %dx.types.CBufRet.f32 %47, 2
  %49 = extractvalue %dx.types.CBufRet.f32 %47, 3
  %50 = fmul fast float %48, %41
  %51 = fmul fast float %49, %42
  %52 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %53 = extractvalue %dx.types.CBufRet.f32 %52, 0
  %54 = extractvalue %dx.types.CBufRet.f32 %52, 1
  %55 = fadd fast float %50, %53
  %56 = fadd fast float %51, %54
  %57 = call float @dx.op.unary.f32(i32 7, float %55)  ; Saturate(value)
  %58 = call float @dx.op.unary.f32(i32 7, float %56)  ; Saturate(value)
  %59 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %15, float %57, float %58, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %60 = extractvalue %dx.types.ResRet.f32 %59, 0
  %61 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %62 = extractvalue %dx.types.CBufRet.f32 %61, 0
  %63 = fmul fast float %62, %60
  %64 = fsub fast float %55, %57
  %65 = fsub fast float %56, %58
  %66 = extractvalue %dx.types.CBufRet.f32 %47, 0
  %67 = extractvalue %dx.types.CBufRet.f32 %47, 1
  %68 = fmul fast float %66, %64
  %69 = fmul fast float %67, %65
  %70 = fmul fast float %68, %68
  %71 = fmul fast float %69, %69
  %72 = fadd fast float %70, %71
  %73 = call float @dx.op.unary.f32(i32 24, float %72)  ; Sqrt(value)
  %74 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %75 = extractvalue %dx.types.CBufRet.f32 %74, 3
  %76 = fmul fast float %75, %73
  %77 = call float @dx.op.unary.f32(i32 7, float %76)  ; Saturate(value)
  %78 = extractvalue %dx.types.CBufRet.f32 %74, 2
  %79 = fsub fast float %78, %63
  %80 = fmul fast float %79, %77
  %81 = extractvalue %dx.types.CBufRet.f32 %61, 1
  %82 = fadd fast float %63, %43
  %83 = fadd fast float %82, %81
  %84 = fadd fast float %83, %80
  br label %85

; <label>:85                                      ; preds = %46, %27
  %86 = phi float [ %84, %46 ], [ %43, %27 ]
  %87 = or i32 %32, 16
  %88 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %87, i32 undef)  ; BufferLoad(srv,index,wot)
  %89 = extractvalue %dx.types.ResRet.i32 %88, 0
  %90 = extractvalue %dx.types.ResRet.i32 %88, 1
  %91 = extractvalue %dx.types.ResRet.i32 %88, 2
  %92 = extractvalue %dx.types.ResRet.i32 %88, 3
  %93 = and i32 %89, 65535
  %94 = call float @dx.op.legacyF16ToF32(i32 131, i32 %93)  ; LegacyF16ToF32(value)
  %95 = lshr i32 %89, 16
  %96 = call float @dx.op.legacyF16ToF32(i32 131, i32 %95)  ; LegacyF16ToF32(value)
  %97 = and i32 %90, 1023
  %98 = uitofp i32 %97 to float
  %99 = lshr i32 %90, 10
  %100 = and i32 %99, 1023
  %101 = uitofp i32 %100 to float
  %102 = lshr i32 %90, 20
  %103 = and i32 %102, 1023
  %104 = uitofp i32 %103 to float
  %105 = fmul fast float %98, 0x3F60040100000000
  %106 = fmul fast float %101, 0x3F60040100000000
  %107 = fmul fast float %104, 0x3F60040100000000
  %108 = fadd fast float %105, -1.000000e+00
  %109 = fadd fast float %106, -1.000000e+00
  %110 = fadd fast float %107, -1.000000e+00
  %111 = and i32 %91, 1023
  %112 = uitofp i32 %111 to float
  %113 = lshr i32 %91, 10
  %114 = and i32 %113, 1023
  %115 = uitofp i32 %114 to float
  %116 = lshr i32 %91, 20
  %117 = and i32 %116, 1023
  %118 = uitofp i32 %117 to float
  %119 = fmul fast float %112, 0x3F60040100000000
  %120 = fmul fast float %115, 0x3F60040100000000
  %121 = fmul fast float %118, 0x3F60040100000000
  %122 = fadd fast float %119, -1.000000e+00
  %123 = fadd fast float %120, -1.000000e+00
  %124 = fadd fast float %121, -1.000000e+00
  %125 = and i32 %92, 65535
  %126 = call float @dx.op.legacyF16ToF32(i32 131, i32 %125)  ; LegacyF16ToF32(value)
  %127 = call float @dx.op.unary.f32(i32 13, float %126)  ; Sin(value)
  %128 = call float @dx.op.unary.f32(i32 12, float %126)  ; Cos(value)
  %129 = fmul fast float %128, %108
  %130 = fmul fast float %109, %128
  %131 = fmul fast float %110, %128
  %132 = fmul fast float %122, %127
  %133 = fmul fast float %123, %127
  %134 = fmul fast float %124, %127
  %135 = fadd fast float %129, %132
  %136 = fadd fast float %130, %133
  %137 = fadd fast float %131, %134
  %138 = fmul fast float %135, %94
  %139 = fmul fast float %136, %94
  %140 = fmul fast float %137, %94
  %141 = fmul fast float %108, %127
  %142 = fmul fast float %109, %127
  %143 = fmul fast float %110, %127
  %144 = fmul fast float %128, %122
  %145 = fmul fast float %123, %128
  %146 = fmul fast float %124, %128
  %147 = fsub fast float %141, %144
  %148 = fsub fast float %142, %145
  %149 = fsub fast float %143, %146
  %150 = fmul fast float %147, %96
  %151 = fmul fast float %148, %96
  %152 = fmul fast float %149, %96
  %153 = add i32 %39, %19
  %154 = add i32 %40, %20
  %155 = uitofp i32 %19 to float
  %156 = uitofp i32 %20 to float
  %157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %158 = extractvalue %dx.types.CBufRet.f32 %157, 1
  %159 = fdiv fast float %155, %158
  %160 = fdiv fast float %156, %158
  %161 = extractvalue %dx.types.CBufRet.f32 %157, 2
  %162 = fadd fast float %161, %159
  %163 = fadd fast float %161, %160
  %164 = fmul fast float %162, %138
  %165 = fmul fast float %162, %139
  %166 = fmul fast float %162, %140
  %167 = fmul fast float %163, %150
  %168 = fmul fast float %163, %151
  %169 = fmul fast float %163, %152
  %170 = fadd fast float %167, %164
  %171 = fmul fast float %170, 2.000000e+00
  %172 = fsub fast float %41, %138
  %173 = fsub fast float %172, %150
  %174 = fadd fast float %173, %171
  %175 = fadd fast float %168, %165
  %176 = fmul fast float %175, 2.000000e+00
  %177 = fsub fast float %42, %139
  %178 = fsub fast float %177, %151
  %179 = fadd fast float %178, %176
  %180 = fadd fast float %169, %166
  %181 = fmul fast float %180, 2.000000e+00
  %182 = fsub fast float %86, %140
  %183 = fsub fast float %182, %152
  %184 = fadd fast float %183, %181
  %185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %31, i32 0)  ; BufferLoad(srv,index,wot)
  %186 = extractvalue %dx.types.ResRet.i32 %185, 0
  %187 = and i32 %22, 31
  %188 = shl i32 1, %187
  %189 = shl i32 %188, %187
  %190 = shl i32 %20, %187
  %191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %31, i32 0)  ; BufferLoad(srv,index,wot)
  %192 = extractvalue %dx.types.ResRet.i32 %191, 0
  %193 = extractvalue %dx.types.CBufRet.i32 %21, 1
  %194 = icmp ne i32 %193, 0
  %195 = icmp ne i32 %192, 262144
  %196 = and i1 %195, %194
  %197 = icmp ne i32 %186, 0
  %198 = and i1 %197, %196
  br i1 %198, label %199, label %285, !dx.controlflow.hints !34

; <label>:199                                     ; preds = %85
  br label %200

; <label>:200                                     ; preds = %200, %199
  %201 = phi i32 [ %281, %200 ], [ %186, %199 ]
  %202 = phi float [ %279, %200 ], [ 0.000000e+00, %199 ]
  %203 = phi float [ %259, %200 ], [ 0.000000e+00, %199 ]
  %204 = phi float [ %260, %200 ], [ 0.000000e+00, %199 ]
  %205 = phi float [ %261, %200 ], [ 0.000000e+00, %199 ]
  %206 = phi float [ %262, %200 ], [ 0.000000e+00, %199 ]
  %207 = phi float [ %267, %200 ], [ 0.000000e+00, %199 ]
  %208 = phi float [ %268, %200 ], [ 0.000000e+00, %199 ]
  %209 = phi float [ %269, %200 ], [ 0.000000e+00, %199 ]
  %210 = phi float [ %270, %200 ], [ 0.000000e+00, %199 ]
  %211 = phi float [ %275, %200 ], [ 0.000000e+00, %199 ]
  %212 = phi float [ %276, %200 ], [ 0.000000e+00, %199 ]
  %213 = phi float [ %277, %200 ], [ 0.000000e+00, %199 ]
  %214 = phi float [ %278, %200 ], [ 0.000000e+00, %199 ]
  %215 = phi i32 [ %282, %200 ], [ 0, %199 ]
  %216 = mul i32 %215, %189
  %217 = add i32 %190, %19
  %218 = add i32 %217, %192
  %219 = add i32 %218, %216
  %220 = shl i32 %219, 2
  %221 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %220, i32 undef)  ; BufferLoad(srv,index,wot)
  %222 = extractvalue %dx.types.ResRet.f32 %221, 0
  %223 = extractvalue %dx.types.ResRet.f32 %221, 1
  %224 = extractvalue %dx.types.ResRet.f32 %221, 2
  %225 = or i32 %220, 1
  %226 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %225, i32 undef)  ; BufferLoad(srv,index,wot)
  %227 = extractvalue %dx.types.ResRet.f32 %226, 0
  %228 = extractvalue %dx.types.ResRet.f32 %226, 1
  %229 = extractvalue %dx.types.ResRet.f32 %226, 2
  %230 = or i32 %220, 2
  %231 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %230, i32 undef)  ; BufferLoad(srv,index,wot)
  %232 = extractvalue %dx.types.ResRet.f32 %231, 0
  %233 = extractvalue %dx.types.ResRet.f32 %231, 1
  %234 = extractvalue %dx.types.ResRet.f32 %231, 2
  %235 = or i32 %220, 3
  %236 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %235, i32 undef)  ; BufferLoad(srv,index,wot)
  %237 = extractvalue %dx.types.ResRet.f32 %236, 0
  %238 = extractvalue %dx.types.ResRet.f32 %236, 1
  %239 = extractvalue %dx.types.ResRet.f32 %236, 2
  %240 = fmul fast float %222, 0x3FFBB67AE0000000
  %241 = fsub fast float %227, %240
  %242 = fsub fast float %232, %240
  %243 = fsub fast float %237, %240
  %244 = fmul fast float %223, 0x3FFBB67AE0000000
  %245 = fsub fast float %228, %244
  %246 = fsub fast float %233, %244
  %247 = fsub fast float %238, %244
  %248 = fmul fast float %224, 0x3FFBB67AE0000000
  %249 = fsub fast float %229, %248
  %250 = fsub fast float %234, %248
  %251 = fsub fast float %239, %248
  %252 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %219, i32 undef)  ; BufferLoad(srv,index,wot)
  %253 = extractvalue %dx.types.ResRet.f32 %252, 0
  %254 = fmul fast float %253, %253
  %255 = fmul fast float %254, %222
  %256 = fmul fast float %254, %241
  %257 = fmul fast float %254, %242
  %258 = fmul fast float %254, %243
  %259 = fadd fast float %255, %203
  %260 = fadd fast float %256, %204
  %261 = fadd fast float %257, %205
  %262 = fadd fast float %258, %206
  %263 = fmul fast float %254, %223
  %264 = fmul fast float %254, %245
  %265 = fmul fast float %254, %246
  %266 = fmul fast float %254, %247
  %267 = fadd fast float %263, %207
  %268 = fadd fast float %264, %208
  %269 = fadd fast float %265, %209
  %270 = fadd fast float %266, %210
  %271 = fmul fast float %254, %224
  %272 = fmul fast float %254, %249
  %273 = fmul fast float %254, %250
  %274 = fmul fast float %254, %251
  %275 = fadd fast float %271, %211
  %276 = fadd fast float %272, %212
  %277 = fadd fast float %273, %213
  %278 = fadd fast float %274, %214
  %279 = fadd fast float %254, %202
  %280 = add i32 %201, -1
  %281 = and i32 %280, %201
  %282 = add i32 %215, 1
  %283 = icmp eq i32 %281, 0
  br i1 %283, label %284, label %200

; <label>:284                                     ; preds = %200
  br label %285

; <label>:285                                     ; preds = %284, %85
  %286 = phi float [ 0.000000e+00, %85 ], [ %279, %284 ]
  %287 = phi float [ 0.000000e+00, %85 ], [ %259, %284 ]
  %288 = phi float [ 0.000000e+00, %85 ], [ %260, %284 ]
  %289 = phi float [ 0.000000e+00, %85 ], [ %261, %284 ]
  %290 = phi float [ 0.000000e+00, %85 ], [ %262, %284 ]
  %291 = phi float [ 0.000000e+00, %85 ], [ %267, %284 ]
  %292 = phi float [ 0.000000e+00, %85 ], [ %268, %284 ]
  %293 = phi float [ 0.000000e+00, %85 ], [ %269, %284 ]
  %294 = phi float [ 0.000000e+00, %85 ], [ %270, %284 ]
  %295 = phi float [ 0.000000e+00, %85 ], [ %275, %284 ]
  %296 = phi float [ 0.000000e+00, %85 ], [ %276, %284 ]
  %297 = phi float [ 0.000000e+00, %85 ], [ %277, %284 ]
  %298 = phi float [ 0.000000e+00, %85 ], [ %278, %284 ]
  %299 = fcmp fast ogt float %286, 0.000000e+00
  %300 = fcmp fast une float %286, 1.000000e+00
  %301 = and i1 %299, %300
  br i1 %301, label %302, label %316, !dx.controlflow.hints !35

; <label>:302                                     ; preds = %285
  %303 = fdiv fast float 1.000000e+00, %286
  %304 = fmul fast float %303, %287
  %305 = fmul fast float %303, %288
  %306 = fmul fast float %303, %289
  %307 = fmul fast float %303, %290
  %308 = fmul fast float %303, %291
  %309 = fmul fast float %303, %292
  %310 = fmul fast float %303, %293
  %311 = fmul fast float %303, %294
  %312 = fmul fast float %303, %295
  %313 = fmul fast float %303, %296
  %314 = fmul fast float %303, %297
  %315 = fmul fast float %303, %298
  br label %316

; <label>:316                                     ; preds = %302, %285
  %317 = phi float [ 1.000000e+00, %302 ], [ %286, %285 ]
  %318 = phi float [ %304, %302 ], [ %287, %285 ]
  %319 = phi float [ %305, %302 ], [ %288, %285 ]
  %320 = phi float [ %306, %302 ], [ %289, %285 ]
  %321 = phi float [ %307, %302 ], [ %290, %285 ]
  %322 = phi float [ %308, %302 ], [ %291, %285 ]
  %323 = phi float [ %309, %302 ], [ %292, %285 ]
  %324 = phi float [ %310, %302 ], [ %293, %285 ]
  %325 = phi float [ %311, %302 ], [ %294, %285 ]
  %326 = phi float [ %312, %302 ], [ %295, %285 ]
  %327 = phi float [ %313, %302 ], [ %296, %285 ]
  %328 = phi float [ %314, %302 ], [ %297, %285 ]
  %329 = phi float [ %315, %302 ], [ %298, %285 ]
  %330 = call float @dx.op.unary.f32(i32 7, float %317)  ; Saturate(value)
  %331 = fsub fast float 1.000000e+00, %330
  %332 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %333 = extractvalue %dx.types.CBufRet.i32 %332, 0
  %334 = icmp eq i32 %333, 1
  br i1 %334, label %335, label %370, !dx.controlflow.hints !36

; <label>:335                                     ; preds = %316
  %336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %337 = extractvalue %dx.types.CBufRet.f32 %336, 0
  %338 = extractvalue %dx.types.CBufRet.f32 %336, 1
  %339 = fsub fast float %174, %337
  %340 = fsub fast float %179, %338
  %341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %342 = extractvalue %dx.types.CBufRet.f32 %341, 0
  %343 = extractvalue %dx.types.CBufRet.f32 %341, 1
  %344 = fmul fast float %339, %342
  %345 = fmul fast float %340, %343
  %346 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %15, float %344, float %345, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %347 = extractvalue %dx.types.ResRet.f32 %346, 0
  %348 = fcmp fast ogt float %347, 0.000000e+00
  %349 = extractvalue %dx.types.CBufRet.i32 %332, 3
  %350 = icmp ne i32 %349, 0
  %351 = and i1 %348, %350
  br i1 %351, label %352, label %370, !dx.controlflow.hints !37

; <label>:352                                     ; preds = %335
  %353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %354 = extractvalue %dx.types.CBufRet.f32 %353, 0
  %355 = extractvalue %dx.types.CBufRet.f32 %353, 1
  %356 = fsub fast float %174, %354
  %357 = fsub fast float %179, %355
  %358 = fmul fast float %356, %356
  %359 = fmul fast float %357, %357
  %360 = fadd fast float %358, %359
  %361 = uitofp i32 %349 to float
  %362 = fmul fast float %361, %361
  %363 = fcmp fast ogt float %360, %362
  br i1 %363, label %370, label %364, !dx.controlflow.hints !38

; <label>:364                                     ; preds = %352
  %365 = call float @dx.op.unary.f32(i32 24, float %360)  ; Sqrt(value)
  %366 = fsub fast float %361, %365
  %367 = fmul fast float %366, 0x3F75555560000000
  %368 = call float @dx.op.unary.f32(i32 7, float %367)  ; Saturate(value)
  %369 = call float @dx.op.binary.f32(i32 36, float %368, float %347)  ; FMin(a,b)
  br label %370

; <label>:370                                     ; preds = %364, %352, %335, %316
  %371 = phi float [ 1.000000e+00, %316 ], [ %369, %364 ], [ %347, %335 ], [ 0.000000e+00, %352 ]
  %372 = fcmp fast ogt float %331, 0.000000e+00
  %373 = fcmp fast olt float %371, 1.000000e+00
  %374 = or i1 %372, %373
  br i1 %374, label %375, label %1044, !dx.controlflow.hints !39

; <label>:375                                     ; preds = %370
  %376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %377 = extractvalue %dx.types.CBufRet.f32 %376, 0
  %378 = extractvalue %dx.types.CBufRet.f32 %376, 1
  %379 = fsub fast float %174, %377
  %380 = fsub fast float %179, %378
  %381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %382 = extractvalue %dx.types.CBufRet.f32 %381, 0
  %383 = extractvalue %dx.types.CBufRet.f32 %381, 1
  %384 = fmul fast float %379, %382
  %385 = fmul fast float %380, %383
  %386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %387 = extractvalue %dx.types.CBufRet.f32 %386, 0
  %388 = fmul fast float %387, %384
  %389 = extractvalue %dx.types.CBufRet.f32 %386, 1
  %390 = fadd fast float %388, %389
  %391 = extractvalue %dx.types.CBufRet.f32 %386, 2
  %392 = fmul fast float %391, %385
  %393 = extractvalue %dx.types.CBufRet.f32 %386, 3
  %394 = fadd fast float %392, %393
  %395 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %15, float %390, float %394, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %396 = extractvalue %dx.types.ResRet.f32 %395, 0
  %397 = extractvalue %dx.types.ResRet.f32 %395, 1
  %398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %399 = extractvalue %dx.types.CBufRet.f32 %398, 1
  %400 = extractvalue %dx.types.CBufRet.f32 %398, 0
  %401 = fsub fast float %399, %400
  %402 = fmul fast float %401, %396
  %403 = fadd fast float %402, %400
  %404 = extractvalue %dx.types.CBufRet.f32 %398, 3
  %405 = extractvalue %dx.types.CBufRet.f32 %398, 2
  %406 = fsub fast float %404, %405
  %407 = fmul fast float %406, %397
  %408 = fadd fast float %407, %405
  %409 = fsub fast float %184, %403
  %410 = fsub fast float %408, %403
  %411 = fdiv fast float %409, %410
  %412 = call float @dx.op.unary.f32(i32 7, float %411)  ; Saturate(value)
  %413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %414 = extractvalue %dx.types.CBufRet.f32 %413, 0
  %415 = fmul fast float %414, %412
  %416 = extractvalue %dx.types.CBufRet.f32 %413, 1
  %417 = fadd fast float %415, %416
  %418 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %15, float %390, float %394, float %417, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %419 = extractvalue %dx.types.ResRet.f32 %418, 0
  %420 = extractvalue %dx.types.ResRet.f32 %418, 1
  %421 = extractvalue %dx.types.ResRet.f32 %418, 2
  %422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %423 = extractvalue %dx.types.CBufRet.f32 %422, 0
  %424 = extractvalue %dx.types.CBufRet.f32 %422, 1
  %425 = extractvalue %dx.types.CBufRet.f32 %422, 2
  %426 = fmul fast float %423, %419
  %427 = fmul fast float %424, %420
  %428 = fmul fast float %425, %421
  %429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %430 = extractvalue %dx.types.CBufRet.f32 %429, 0
  %431 = extractvalue %dx.types.CBufRet.f32 %429, 1
  %432 = extractvalue %dx.types.CBufRet.f32 %429, 2
  %433 = fadd fast float %426, %430
  %434 = fadd fast float %427, %431
  %435 = fadd fast float %428, %432
  %436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %437 = extractvalue %dx.types.CBufRet.f32 %436, 0
  %438 = fmul fast float %437, %384
  %439 = extractvalue %dx.types.CBufRet.f32 %436, 1
  %440 = fadd fast float %438, %439
  %441 = extractvalue %dx.types.CBufRet.f32 %436, 2
  %442 = fmul fast float %441, %385
  %443 = extractvalue %dx.types.CBufRet.f32 %436, 3
  %444 = fadd fast float %442, %443
  %445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %446 = extractvalue %dx.types.CBufRet.f32 %445, 0
  %447 = extractvalue %dx.types.CBufRet.f32 %445, 1
  %448 = extractvalue %dx.types.CBufRet.f32 %445, 2
  %449 = extractvalue %dx.types.CBufRet.f32 %445, 3
  %450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %451 = extractvalue %dx.types.CBufRet.f32 %450, 0
  %452 = extractvalue %dx.types.CBufRet.f32 %450, 1
  %453 = extractvalue %dx.types.CBufRet.f32 %450, 2
  %454 = extractvalue %dx.types.CBufRet.f32 %450, 3
  %455 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %15, float %440, float %444, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %456 = extractvalue %dx.types.ResRet.f32 %455, 0
  %457 = extractvalue %dx.types.ResRet.f32 %455, 1
  %458 = extractvalue %dx.types.ResRet.f32 %455, 2
  %459 = extractvalue %dx.types.ResRet.f32 %455, 3
  %460 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %15, float %440, float %444, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %461 = extractvalue %dx.types.ResRet.f32 %460, 0
  %462 = extractvalue %dx.types.ResRet.f32 %460, 1
  %463 = extractvalue %dx.types.ResRet.f32 %460, 2
  %464 = extractvalue %dx.types.ResRet.f32 %460, 3
  %465 = fmul fast float %456, %433
  %466 = fmul fast float %461, %433
  %467 = fmul fast float %463, %433
  %468 = fmul fast float %459, %433
  %469 = fadd fast float %465, %446
  %470 = fadd fast float %466, %447
  %471 = fadd fast float %467, %448
  %472 = fadd fast float %468, %449
  %473 = fmul fast float %457, %433
  %474 = fmul fast float %462, %433
  %475 = fadd fast float %473, %451
  %476 = fadd fast float %474, %452
  %477 = fmul fast float %458, %433
  %478 = fmul fast float %464, %433
  %479 = fadd fast float %477, %453
  %480 = fadd fast float %478, %454
  %481 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %15, float %440, float %444, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %482 = extractvalue %dx.types.ResRet.f32 %481, 0
  %483 = extractvalue %dx.types.ResRet.f32 %481, 1
  %484 = extractvalue %dx.types.ResRet.f32 %481, 2
  %485 = extractvalue %dx.types.ResRet.f32 %481, 3
  %486 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %15, float %440, float %444, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %487 = extractvalue %dx.types.ResRet.f32 %486, 0
  %488 = extractvalue %dx.types.ResRet.f32 %486, 1
  %489 = extractvalue %dx.types.ResRet.f32 %486, 2
  %490 = extractvalue %dx.types.ResRet.f32 %486, 3
  %491 = fmul fast float %482, %434
  %492 = fmul fast float %487, %434
  %493 = fmul fast float %489, %434
  %494 = fmul fast float %485, %434
  %495 = fadd fast float %469, %491
  %496 = fadd fast float %470, %492
  %497 = fadd fast float %471, %493
  %498 = fadd fast float %472, %494
  %499 = fmul fast float %483, %434
  %500 = fmul fast float %488, %434
  %501 = fadd fast float %475, %499
  %502 = fadd fast float %476, %500
  %503 = fmul fast float %484, %434
  %504 = fmul fast float %490, %434
  %505 = fadd fast float %479, %503
  %506 = fadd fast float %480, %504
  %507 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %15, float %440, float %444, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %508 = extractvalue %dx.types.ResRet.f32 %507, 0
  %509 = extractvalue %dx.types.ResRet.f32 %507, 1
  %510 = extractvalue %dx.types.ResRet.f32 %507, 2
  %511 = extractvalue %dx.types.ResRet.f32 %507, 3
  %512 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %15, float %440, float %444, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %513 = extractvalue %dx.types.ResRet.f32 %512, 0
  %514 = extractvalue %dx.types.ResRet.f32 %512, 1
  %515 = extractvalue %dx.types.ResRet.f32 %512, 2
  %516 = extractvalue %dx.types.ResRet.f32 %512, 3
  %517 = fmul fast float %508, %435
  %518 = fmul fast float %513, %435
  %519 = fmul fast float %515, %435
  %520 = fmul fast float %511, %435
  %521 = fadd fast float %495, %517
  %522 = fadd fast float %496, %518
  %523 = fadd fast float %497, %519
  %524 = fadd fast float %498, %520
  %525 = fmul fast float %509, %435
  %526 = fmul fast float %514, %435
  %527 = fadd fast float %501, %525
  %528 = fadd fast float %502, %526
  %529 = fmul fast float %510, %435
  %530 = fmul fast float %516, %435
  %531 = fadd fast float %505, %529
  %532 = fadd fast float %506, %530
  %533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %534 = extractvalue %dx.types.CBufRet.f32 %533, 0
  %535 = fsub fast float %174, %534
  %536 = fsub fast float %377, %174
  %537 = call float @dx.op.binary.f32(i32 35, float %536, float %535)  ; FMax(a,b)
  %538 = extractvalue %dx.types.CBufRet.f32 %533, 1
  %539 = fsub fast float %179, %538
  %540 = fsub fast float %378, %179
  %541 = call float @dx.op.binary.f32(i32 35, float %540, float %539)  ; FMax(a,b)
  %542 = call float @dx.op.binary.f32(i32 35, float %537, float %541)  ; FMax(a,b)
  %543 = extractvalue %dx.types.CBufRet.f32 %381, 3
  %544 = fmul fast float %543, %542
  %545 = call float @dx.op.unary.f32(i32 7, float %544)  ; Saturate(value)
  %546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %547 = extractvalue %dx.types.CBufRet.f32 %546, 0
  %548 = extractvalue %dx.types.CBufRet.f32 %546, 1
  %549 = extractvalue %dx.types.CBufRet.f32 %546, 2
  %550 = extractvalue %dx.types.CBufRet.f32 %546, 3
  %551 = fsub fast float %547, %521
  %552 = fsub fast float %548, %522
  %553 = fsub fast float %549, %523
  %554 = fsub fast float %550, %524
  %555 = fmul fast float %551, %545
  %556 = fmul fast float %552, %545
  %557 = fmul fast float %553, %545
  %558 = fmul fast float %554, %545
  %559 = fadd fast float %555, %521
  %560 = fadd fast float %556, %522
  %561 = fadd fast float %557, %523
  %562 = fadd fast float %558, %524
  %563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %564 = extractvalue %dx.types.CBufRet.f32 %563, 0
  %565 = extractvalue %dx.types.CBufRet.f32 %563, 1
  %566 = fsub fast float %564, %527
  %567 = fsub fast float %565, %528
  %568 = fmul fast float %566, %545
  %569 = fmul fast float %567, %545
  %570 = fadd fast float %568, %527
  %571 = fadd fast float %569, %528
  %572 = extractvalue %dx.types.CBufRet.f32 %563, 2
  %573 = extractvalue %dx.types.CBufRet.f32 %563, 3
  %574 = fsub fast float %572, %531
  %575 = fsub fast float %573, %532
  %576 = fmul fast float %574, %545
  %577 = fmul fast float %575, %545
  %578 = fadd fast float %576, %531
  %579 = fadd fast float %577, %532
  %580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %581 = extractvalue %dx.types.CBufRet.f32 %580, 0
  %582 = fmul fast float %581, %559
  %583 = fmul fast float %581, %560
  %584 = fmul fast float %581, %561
  %585 = fmul fast float %581, %562
  %586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %587 = extractvalue %dx.types.CBufRet.f32 %586, 0
  %588 = fmul fast float %587, %570
  %589 = fmul fast float %587, %571
  %590 = fadd fast float %588, %582
  %591 = fadd fast float %589, %584
  %592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %593 = extractvalue %dx.types.CBufRet.f32 %592, 0
  %594 = fmul fast float %593, %578
  %595 = fmul fast float %593, %579
  %596 = fadd fast float %590, %594
  %597 = fadd fast float %591, %595
  %598 = extractvalue %dx.types.CBufRet.f32 %580, 1
  %599 = fmul fast float %598, %559
  %600 = fmul fast float %598, %560
  %601 = fmul fast float %598, %561
  %602 = fmul fast float %598, %562
  %603 = extractvalue %dx.types.CBufRet.f32 %586, 1
  %604 = fmul fast float %603, %570
  %605 = fmul fast float %603, %571
  %606 = fadd fast float %604, %599
  %607 = fadd fast float %605, %601
  %608 = extractvalue %dx.types.CBufRet.f32 %592, 1
  %609 = fmul fast float %608, %578
  %610 = fmul fast float %608, %579
  %611 = fadd fast float %606, %609
  %612 = fadd fast float %607, %610
  %613 = extractvalue %dx.types.CBufRet.f32 %580, 2
  %614 = fmul fast float %613, %559
  %615 = fmul fast float %613, %560
  %616 = fmul fast float %613, %561
  %617 = fmul fast float %613, %562
  %618 = extractvalue %dx.types.CBufRet.f32 %586, 2
  %619 = fmul fast float %618, %570
  %620 = fmul fast float %618, %571
  %621 = fadd fast float %619, %614
  %622 = fadd fast float %620, %616
  %623 = extractvalue %dx.types.CBufRet.f32 %592, 2
  %624 = fmul fast float %623, %578
  %625 = fmul fast float %623, %579
  %626 = fadd fast float %621, %624
  %627 = fadd fast float %622, %625
  %628 = fmul fast float %615, %615
  %629 = fmul fast float %627, %627
  %630 = fmul fast float %617, %617
  %631 = fadd fast float %630, %628
  %632 = fadd fast float %631, %629
  %633 = call float @dx.op.unary.f32(i32 24, float %632)  ; Sqrt(value)
  %634 = fcmp fast ugt float %633, 0.000000e+00
  br i1 %634, label %635, label %650, !dx.controlflow.hints !40

; <label>:635                                     ; preds = %375
  %636 = fsub fast float -0.000000e+00, %617
  %637 = fdiv fast float %636, %633
  %638 = fsub fast float -0.000000e+00, %615
  %639 = fdiv fast float %638, %633
  %640 = fdiv fast float %627, %633
  %641 = fmul fast float %626, 0x3FE279A760000000
  %642 = fmul fast float %639, %615
  %643 = fmul fast float %640, %627
  %644 = fmul fast float %637, %617
  %645 = fadd fast float %642, %644
  %646 = fsub fast float %645, %643
  %647 = call float @dx.op.unary.f32(i32 6, float %646)  ; FAbs(value)
  %648 = fadd fast float %647, 0x3DDB7CDFE0000000
  %649 = fdiv fast float %641, %648
  br label %650

; <label>:650                                     ; preds = %635, %375
  %651 = phi float [ %649, %635 ], [ 1.000000e+00, %375 ]
  %652 = fmul fast float %600, %600
  %653 = fmul fast float %612, %612
  %654 = fmul fast float %602, %602
  %655 = fadd fast float %654, %652
  %656 = fadd fast float %655, %653
  %657 = call float @dx.op.unary.f32(i32 24, float %656)  ; Sqrt(value)
  %658 = fcmp fast ugt float %657, 0.000000e+00
  br i1 %658, label %659, label %674, !dx.controlflow.hints !40

; <label>:659                                     ; preds = %650
  %660 = fsub fast float -0.000000e+00, %602
  %661 = fdiv fast float %660, %657
  %662 = fsub fast float -0.000000e+00, %600
  %663 = fdiv fast float %662, %657
  %664 = fdiv fast float %612, %657
  %665 = fmul fast float %611, 0x3FE279A760000000
  %666 = fmul fast float %663, %600
  %667 = fmul fast float %664, %612
  %668 = fmul fast float %661, %602
  %669 = fadd fast float %666, %668
  %670 = fsub fast float %669, %667
  %671 = call float @dx.op.unary.f32(i32 6, float %670)  ; FAbs(value)
  %672 = fadd fast float %671, 0x3DDB7CDFE0000000
  %673 = fdiv fast float %665, %672
  br label %674

; <label>:674                                     ; preds = %659, %650
  %675 = phi float [ %673, %659 ], [ 1.000000e+00, %650 ]
  %676 = call float @dx.op.binary.f32(i32 36, float %675, float %651)  ; FMin(a,b)
  %677 = fmul fast float %583, %583
  %678 = fmul fast float %597, %597
  %679 = fmul fast float %585, %585
  %680 = fadd fast float %679, %677
  %681 = fadd fast float %680, %678
  %682 = call float @dx.op.unary.f32(i32 24, float %681)  ; Sqrt(value)
  %683 = fcmp fast ugt float %682, 0.000000e+00
  br i1 %683, label %684, label %699, !dx.controlflow.hints !40

; <label>:684                                     ; preds = %674
  %685 = fsub fast float -0.000000e+00, %585
  %686 = fdiv fast float %685, %682
  %687 = fsub fast float -0.000000e+00, %583
  %688 = fdiv fast float %687, %682
  %689 = fdiv fast float %597, %682
  %690 = fmul fast float %596, 0x3FE279A760000000
  %691 = fmul fast float %688, %583
  %692 = fmul fast float %689, %597
  %693 = fmul fast float %686, %585
  %694 = fadd fast float %691, %693
  %695 = fsub fast float %694, %692
  %696 = call float @dx.op.unary.f32(i32 6, float %695)  ; FAbs(value)
  %697 = fadd fast float %696, 0x3DDB7CDFE0000000
  %698 = fdiv fast float %690, %697
  br label %699

; <label>:699                                     ; preds = %684, %674
  %700 = phi float [ %698, %684 ], [ 1.000000e+00, %674 ]
  %701 = call float @dx.op.binary.f32(i32 36, float %700, float %676)  ; FMin(a,b)
  %702 = call float @dx.op.unary.f32(i32 7, float %701)  ; Saturate(value)
  %703 = fcmp fast olt float %702, 1.000000e+00
  br i1 %703, label %704, label %714, !dx.controlflow.hints !41

; <label>:704                                     ; preds = %699
  %705 = fmul fast float %702, %583
  %706 = fmul fast float %702, %597
  %707 = fmul fast float %702, %585
  %708 = fmul fast float %702, %600
  %709 = fmul fast float %702, %612
  %710 = fmul fast float %702, %602
  %711 = fmul fast float %702, %615
  %712 = fmul fast float %702, %627
  %713 = fmul fast float %702, %617
  br label %714

; <label>:714                                     ; preds = %704, %699
  %715 = phi float [ %711, %704 ], [ %615, %699 ]
  %716 = phi float [ %712, %704 ], [ %627, %699 ]
  %717 = phi float [ %713, %704 ], [ %617, %699 ]
  %718 = phi float [ %708, %704 ], [ %600, %699 ]
  %719 = phi float [ %709, %704 ], [ %612, %699 ]
  %720 = phi float [ %710, %704 ], [ %602, %699 ]
  %721 = phi float [ %705, %704 ], [ %583, %699 ]
  %722 = phi float [ %706, %704 ], [ %597, %699 ]
  %723 = phi float [ %707, %704 ], [ %585, %699 ]
  %724 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %596)  ; FMax(a,b)
  %725 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %611)  ; FMax(a,b)
  %726 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %626)  ; FMax(a,b)
  %727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %728 = extractvalue %dx.types.CBufRet.f32 %727, 0
  %729 = fcmp fast ogt float %728, 0.000000e+00
  %730 = fcmp fast oge float %384, 0.000000e+00
  %731 = and i1 %730, %729
  %732 = fcmp fast ole float %384, 1.000000e+00
  %733 = and i1 %732, %731
  %734 = fcmp fast oge float %385, 0.000000e+00
  %735 = and i1 %734, %733
  %736 = fcmp fast ole float %385, 1.000000e+00
  %737 = and i1 %736, %735
  br i1 %737, label %738, label %883, !dx.controlflow.hints !42

; <label>:738                                     ; preds = %714
  %739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %740 = extractvalue %dx.types.CBufRet.f32 %739, 2
  %741 = extractvalue %dx.types.CBufRet.f32 %739, 3
  %742 = fmul fast float %740, %384
  %743 = fmul fast float %741, %385
  %744 = call float @dx.op.unary.f32(i32 27, float %742)  ; Round_ni(value)
  %745 = call float @dx.op.unary.f32(i32 27, float %743)  ; Round_ni(value)
  %746 = fptosi float %744 to i32
  %747 = fptosi float %745 to i32
  %748 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %746, i32 %747, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %749 = extractvalue %dx.types.ResRet.i32 %748, 0
  %750 = and i32 %749, 65535
  %751 = lshr i32 %749, 16
  %752 = icmp eq i32 %750, 65535
  br i1 %752, label %789, label %753, !dx.controlflow.hints !43

; <label>:753                                     ; preds = %738
  %754 = extractvalue %dx.types.CBufRet.f32 %727, 1
  %755 = extractvalue %dx.types.CBufRet.f32 %739, 0
  %756 = extractvalue %dx.types.CBufRet.f32 %739, 1
  %757 = fmul fast float %755, %384
  %758 = fmul fast float %756, %385
  %759 = fmul fast float %757, 1.250000e-01
  %760 = fmul fast float %758, 1.250000e-01
  %761 = call float @dx.op.unary.f32(i32 27, float %759)  ; Round_ni(value)
  %762 = call float @dx.op.unary.f32(i32 27, float %760)  ; Round_ni(value)
  %763 = fmul fast float %761, 8.000000e+00
  %764 = fmul fast float %762, 8.000000e+00
  %765 = and i32 %749, 255
  %766 = lshr i32 %749, 8
  %767 = and i32 %766, 255
  %768 = mul nuw nsw i32 %765, 9
  %769 = uitofp i32 %768 to float
  %770 = mul nuw nsw i32 %767, 9
  %771 = uitofp i32 %770 to float
  %772 = fadd fast float %769, 5.000000e-01
  %773 = fadd fast float %772, %757
  %774 = fsub fast float %773, %763
  %775 = fadd fast float %771, 5.000000e-01
  %776 = fadd fast float %775, %758
  %777 = fsub fast float %776, %764
  %778 = fdiv fast float %774, %728
  %779 = fdiv fast float %777, %754
  %780 = fmul fast float %412, 4.375000e-01
  %781 = fadd fast float %780, 3.125000e-02
  %782 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %15, float %778, float %779, float %781, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %783 = extractvalue %dx.types.ResRet.f32 %782, 0
  %784 = extractvalue %dx.types.ResRet.f32 %782, 1
  %785 = extractvalue %dx.types.ResRet.f32 %782, 2
  %786 = fadd fast float %783, %724
  %787 = fadd fast float %784, %725
  %788 = fadd fast float %785, %726
  br label %789

; <label>:789                                     ; preds = %753, %738
  %790 = phi float [ %788, %753 ], [ %726, %738 ]
  %791 = phi float [ %787, %753 ], [ %725, %738 ]
  %792 = phi float [ %786, %753 ], [ %724, %738 ]
  %793 = icmp eq i32 %751, 65535
  br i1 %793, label %883, label %794, !dx.controlflow.hints !44

; <label>:794                                     ; preds = %789
  %795 = extractvalue %dx.types.CBufRet.f32 %727, 1
  %796 = extractvalue %dx.types.CBufRet.f32 %739, 0
  %797 = extractvalue %dx.types.CBufRet.f32 %739, 1
  %798 = fmul fast float %796, %384
  %799 = fmul fast float %797, %385
  %800 = fmul fast float %798, 1.250000e-01
  %801 = fmul fast float %799, 1.250000e-01
  %802 = call float @dx.op.unary.f32(i32 27, float %800)  ; Round_ni(value)
  %803 = call float @dx.op.unary.f32(i32 27, float %801)  ; Round_ni(value)
  %804 = fmul fast float %802, 8.000000e+00
  %805 = fmul fast float %803, 8.000000e+00
  %806 = fsub fast float %798, %804
  %807 = fsub fast float %799, %805
  %808 = fadd fast float %806, 5.000000e-01
  %809 = fadd fast float %807, 5.000000e-01
  %810 = and i32 %751, 255
  %811 = lshr i32 %749, 24
  %812 = mul nuw nsw i32 %810, 9
  %813 = uitofp i32 %812 to float
  %814 = mul nuw nsw i32 %811, 9
  %815 = uitofp i32 %814 to float
  %816 = fadd fast float %808, %813
  %817 = fadd fast float %809, %815
  %818 = fdiv fast float %816, %728
  %819 = fdiv fast float %817, %795
  %820 = fmul fast float %412, 4.375000e-01
  %821 = fadd fast float %820, 3.125000e-02
  %822 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %15, float %818, float %819, float %821, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %823 = extractvalue %dx.types.ResRet.f32 %822, 0
  %824 = extractvalue %dx.types.ResRet.f32 %822, 1
  %825 = extractvalue %dx.types.ResRet.f32 %822, 2
  %826 = fadd fast float %820, 5.312500e-01
  %827 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %15, float %818, float %819, float %826, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %828 = extractvalue %dx.types.ResRet.f32 %827, 0
  %829 = extractvalue %dx.types.ResRet.f32 %827, 1
  %830 = extractvalue %dx.types.ResRet.f32 %827, 2
  %831 = fmul fast float %828, 2.000000e+00
  %832 = fmul fast float %829, 2.000000e+00
  %833 = fmul fast float %830, 2.000000e+00
  %834 = fadd fast float %831, -1.000000e+00
  %835 = fadd fast float %832, -1.000000e+00
  %836 = fadd fast float %833, -1.000000e+00
  %837 = fmul fast float %834, %834
  %838 = fmul fast float %835, %835
  %839 = fadd fast float %837, %838
  %840 = fmul fast float %836, %836
  %841 = fadd fast float %839, %840
  %842 = call float @dx.op.unary.f32(i32 24, float %841)  ; Sqrt(value)
  %843 = fcmp fast ogt float %842, 0.000000e+00
  br i1 %843, label %844, label %848, !dx.controlflow.hints !45

; <label>:844                                     ; preds = %794
  %845 = fdiv fast float %834, %842
  %846 = fdiv fast float %835, %842
  %847 = fdiv fast float %836, %842
  br label %848

; <label>:848                                     ; preds = %844, %794
  %849 = phi float [ %845, %844 ], [ 0.000000e+00, %794 ]
  %850 = phi float [ %846, %844 ], [ 0.000000e+00, %794 ]
  %851 = phi float [ %847, %844 ], [ 0.000000e+00, %794 ]
  %852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %853 = extractvalue %dx.types.CBufRet.f32 %852, 0
  %854 = extractvalue %dx.types.CBufRet.f32 %852, 1
  %855 = fsub fast float %174, %853
  %856 = fsub fast float %179, %854
  %857 = fmul fast float %855, %855
  %858 = fmul fast float %856, %856
  %859 = fadd fast float %857, %858
  %860 = call float @dx.op.unary.f32(i32 24, float %859)  ; Sqrt(value)
  %861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %862 = extractvalue %dx.types.CBufRet.f32 %861, 0
  %863 = extractvalue %dx.types.CBufRet.f32 %861, 1
  %864 = fsub fast float %860, %862
  %865 = fdiv fast float %864, %863
  %866 = call float @dx.op.unary.f32(i32 7, float %865)  ; Saturate(value)
  %867 = fmul fast float %866, 2.000000e+00
  %868 = fsub fast float 3.000000e+00, %867
  %869 = fmul fast float %866, %866
  %870 = fmul fast float %869, %868
  %871 = call float @dx.op.dot3.f32(i32 55, float %849, float %850, float %851, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %872 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %871)  ; FMax(a,b)
  %873 = fmul fast float %872, 0x400C5BF8A0000000
  %874 = fmul fast float %870, %823
  %875 = fmul fast float %874, %873
  %876 = fadd fast float %875, %792
  %877 = fmul fast float %870, %824
  %878 = fmul fast float %877, %873
  %879 = fadd fast float %878, %791
  %880 = fmul fast float %870, %825
  %881 = fmul fast float %880, %873
  %882 = fadd fast float %881, %790
  br label %883

; <label>:883                                     ; preds = %848, %789, %714
  %884 = phi float [ %882, %848 ], [ %790, %789 ], [ %726, %714 ]
  %885 = phi float [ %879, %848 ], [ %791, %789 ], [ %725, %714 ]
  %886 = phi float [ %876, %848 ], [ %792, %789 ], [ %724, %714 ]
  %887 = fcmp fast ogt float %184, %408
  %888 = and i1 %730, %887
  %889 = and i1 %732, %888
  %890 = and i1 %734, %889
  %891 = and i1 %736, %890
  br i1 %891, label %892, label %949, !dx.controlflow.hints !46

; <label>:892                                     ; preds = %883
  %893 = fmul fast float %410, 0x3FC24924A0000000
  %894 = fsub fast float %184, %408
  %895 = fdiv fast float %894, %893
  %896 = call float @dx.op.unary.f32(i32 7, float %895)  ; Saturate(value)
  %897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %898 = extractvalue %dx.types.CBufRet.f32 %897, 0
  %899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %900 = extractvalue %dx.types.CBufRet.f32 %899, 0
  %901 = extractvalue %dx.types.CBufRet.f32 %899, 1
  %902 = extractvalue %dx.types.CBufRet.f32 %899, 2
  %903 = fsub fast float %898, %886
  %904 = fsub fast float %900, %721
  %905 = fsub fast float %901, %722
  %906 = fsub fast float %902, %723
  %907 = fmul fast float %903, %896
  %908 = fmul fast float %904, %896
  %909 = fmul fast float %905, %896
  %910 = fmul fast float %906, %896
  %911 = fadd fast float %907, %886
  %912 = fadd fast float %908, %721
  %913 = fadd fast float %909, %722
  %914 = fadd fast float %910, %723
  %915 = extractvalue %dx.types.CBufRet.f32 %897, 1
  %916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %917 = extractvalue %dx.types.CBufRet.f32 %916, 0
  %918 = extractvalue %dx.types.CBufRet.f32 %916, 1
  %919 = extractvalue %dx.types.CBufRet.f32 %916, 2
  %920 = fsub fast float %915, %885
  %921 = fsub fast float %917, %718
  %922 = fsub fast float %918, %719
  %923 = fsub fast float %919, %720
  %924 = fmul fast float %920, %896
  %925 = fmul fast float %921, %896
  %926 = fmul fast float %922, %896
  %927 = fmul fast float %923, %896
  %928 = fadd fast float %924, %885
  %929 = fadd fast float %925, %718
  %930 = fadd fast float %926, %719
  %931 = fadd fast float %927, %720
  %932 = extractvalue %dx.types.CBufRet.f32 %897, 2
  %933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %934 = extractvalue %dx.types.CBufRet.f32 %933, 0
  %935 = extractvalue %dx.types.CBufRet.f32 %933, 1
  %936 = extractvalue %dx.types.CBufRet.f32 %933, 2
  %937 = fsub fast float %932, %884
  %938 = fsub fast float %934, %715
  %939 = fsub fast float %935, %716
  %940 = fsub fast float %936, %717
  %941 = fmul fast float %937, %896
  %942 = fmul fast float %938, %896
  %943 = fmul fast float %939, %896
  %944 = fmul fast float %940, %896
  %945 = fadd fast float %941, %884
  %946 = fadd fast float %942, %715
  %947 = fadd fast float %943, %716
  %948 = fadd fast float %944, %717
  br label %949

; <label>:949                                     ; preds = %892, %883
  %950 = phi float [ %945, %892 ], [ %884, %883 ]
  %951 = phi float [ %946, %892 ], [ %715, %883 ]
  %952 = phi float [ %947, %892 ], [ %716, %883 ]
  %953 = phi float [ %948, %892 ], [ %717, %883 ]
  %954 = phi float [ %928, %892 ], [ %885, %883 ]
  %955 = phi float [ %929, %892 ], [ %718, %883 ]
  %956 = phi float [ %930, %892 ], [ %719, %883 ]
  %957 = phi float [ %931, %892 ], [ %720, %883 ]
  %958 = phi float [ %911, %892 ], [ %886, %883 ]
  %959 = phi float [ %912, %892 ], [ %721, %883 ]
  %960 = phi float [ %913, %892 ], [ %722, %883 ]
  %961 = phi float [ %914, %892 ], [ %723, %883 ]
  %962 = extractvalue %dx.types.CBufRet.f32 %533, 3
  %963 = fmul fast float %962, %958
  %964 = fmul fast float %962, %954
  %965 = fmul fast float %962, %950
  %966 = fmul fast float %959, 1.500000e+00
  %967 = fmul fast float %966, %962
  %968 = fmul fast float %960, 1.500000e+00
  %969 = fmul fast float %968, %962
  %970 = fmul fast float %961, 1.500000e+00
  %971 = fmul fast float %970, %962
  %972 = fmul fast float %955, 1.500000e+00
  %973 = fmul fast float %972, %962
  %974 = fmul fast float %956, 1.500000e+00
  %975 = fmul fast float %974, %962
  %976 = fmul fast float %957, 1.500000e+00
  %977 = fmul fast float %976, %962
  %978 = fmul fast float %951, 1.500000e+00
  %979 = fmul fast float %978, %962
  %980 = fmul fast float %952, 1.500000e+00
  %981 = fmul fast float %980, %962
  %982 = fmul fast float %953, 1.500000e+00
  %983 = fmul fast float %982, %962
  %984 = fmul fast float %963, %331
  %985 = fmul fast float %967, %331
  %986 = fmul fast float %969, %331
  %987 = fmul fast float %971, %331
  %988 = fmul fast float %964, %331
  %989 = fmul fast float %973, %331
  %990 = fmul fast float %975, %331
  %991 = fmul fast float %977, %331
  %992 = fmul fast float %965, %331
  %993 = fmul fast float %979, %331
  %994 = fmul fast float %981, %331
  %995 = fmul fast float %983, %331
  %996 = fsub fast float %318, %963
  %997 = fadd fast float %996, %984
  %998 = fsub fast float %319, %967
  %999 = fadd fast float %998, %985
  %1000 = fsub fast float %320, %969
  %1001 = fadd fast float %1000, %986
  %1002 = fsub fast float %321, %971
  %1003 = fadd fast float %1002, %987
  %1004 = fmul fast float %997, %371
  %1005 = fmul fast float %999, %371
  %1006 = fmul fast float %1001, %371
  %1007 = fmul fast float %1003, %371
  %1008 = fadd fast float %1004, %963
  %1009 = fadd fast float %1005, %967
  %1010 = fadd fast float %1006, %969
  %1011 = fadd fast float %1007, %971
  %1012 = fsub fast float %322, %964
  %1013 = fadd fast float %1012, %988
  %1014 = fsub fast float %323, %973
  %1015 = fadd fast float %1014, %989
  %1016 = fsub fast float %324, %975
  %1017 = fadd fast float %1016, %990
  %1018 = fsub fast float %325, %977
  %1019 = fadd fast float %1018, %991
  %1020 = fmul fast float %1013, %371
  %1021 = fmul fast float %1015, %371
  %1022 = fmul fast float %1017, %371
  %1023 = fmul fast float %1019, %371
  %1024 = fadd fast float %1020, %964
  %1025 = fadd fast float %1021, %973
  %1026 = fadd fast float %1022, %975
  %1027 = fadd fast float %1023, %977
  %1028 = fsub fast float %326, %965
  %1029 = fadd fast float %1028, %992
  %1030 = fsub fast float %327, %979
  %1031 = fadd fast float %1030, %993
  %1032 = fsub fast float %328, %981
  %1033 = fadd fast float %1032, %994
  %1034 = fsub fast float %329, %983
  %1035 = fadd fast float %1034, %995
  %1036 = fmul fast float %1029, %371
  %1037 = fmul fast float %1031, %371
  %1038 = fmul fast float %1033, %371
  %1039 = fmul fast float %1035, %371
  %1040 = fadd fast float %1036, %965
  %1041 = fadd fast float %1037, %979
  %1042 = fadd fast float %1038, %981
  %1043 = fadd fast float %1039, %983
  br label %1044

; <label>:1044                                    ; preds = %949, %370
  %1045 = phi float [ %1008, %949 ], [ %318, %370 ]
  %1046 = phi float [ %1009, %949 ], [ %319, %370 ]
  %1047 = phi float [ %1010, %949 ], [ %320, %370 ]
  %1048 = phi float [ %1011, %949 ], [ %321, %370 ]
  %1049 = phi float [ %1024, %949 ], [ %322, %370 ]
  %1050 = phi float [ %1025, %949 ], [ %323, %370 ]
  %1051 = phi float [ %1026, %949 ], [ %324, %370 ]
  %1052 = phi float [ %1027, %949 ], [ %325, %370 ]
  %1053 = phi float [ %1040, %949 ], [ %326, %370 ]
  %1054 = phi float [ %1041, %949 ], [ %327, %370 ]
  %1055 = phi float [ %1042, %949 ], [ %328, %370 ]
  %1056 = phi float [ %1043, %949 ], [ %329, %370 ]
  %1057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1058 = extractvalue %dx.types.CBufRet.f32 %1057, 3
  %1059 = fmul fast float %1058, %1045
  %1060 = fmul fast float %1058, %1046
  %1061 = fmul fast float %1058, %1047
  %1062 = fmul fast float %1058, %1048
  %1063 = extractvalue %dx.types.CBufRet.f32 %1057, 0
  %1064 = fmul fast float %1059, %1063
  %1065 = fmul fast float %1060, %1063
  %1066 = fmul fast float %1061, %1063
  %1067 = fmul fast float %1062, %1063
  %1068 = fmul fast float %1058, %1049
  %1069 = fmul fast float %1058, %1050
  %1070 = fmul fast float %1058, %1051
  %1071 = fmul fast float %1058, %1052
  %1072 = fmul fast float %1068, %1063
  %1073 = fmul fast float %1069, %1063
  %1074 = fmul fast float %1070, %1063
  %1075 = fmul fast float %1071, %1063
  %1076 = fmul fast float %1058, %1053
  %1077 = fmul fast float %1058, %1054
  %1078 = fmul fast float %1058, %1055
  %1079 = fmul fast float %1058, %1056
  %1080 = fmul fast float %1076, %1063
  %1081 = fmul fast float %1077, %1063
  %1082 = fmul fast float %1078, %1063
  %1083 = fmul fast float %1079, %1063
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %153, i32 %154, i32 0, float %1064, float %1065, float %1066, float %1067, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %153, i32 %154, i32 1, float %1072, float %1073, float %1074, float %1075, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %153, i32 %154, i32 2, float %1080, float %1081, float %1082, float %1083, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1084

; <label>:1084                                    ; preds = %1044, %0
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
!23 = !{i32 0, %"class.RWTexture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 7, i1 false, i1 false, i1 false, !7}
!24 = !{!25, !26}
!25 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!26 = !{i32 1, %DeferredEffectLightConsts_decl* undef, !"", i32 0, i32 1, i32 1, i32 240, null}
!27 = !{!28}
!28 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!29 = !{void ()* @cs_del_sh_combine_multilightgrid_8, !"cs_del_sh_combine_multilightgrid_8", null, !4, !30}
!30 = !{i32 0, i64 272, i32 4, !31}
!31 = !{i32 1, i32 8, i32 8}
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

