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
; shader hash: 329957f65f678ef6964f7e3a04fc5bcc
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

define void @cs_del_sh_combine_multilightgrid_8_lowres() {
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
  br i1 %26, label %27, label %1089, !dx.controlflow.hints !32

; <label>:27                                      ; preds = %0
  %28 = add i32 %22, 9
  %29 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 %28)  ; CBufferLoadLegacy(handle,regIndex)
  %30 = extractvalue %dx.types.CBufRet.i32 %29, 2
  %31 = shl i32 %19, 1
  %32 = shl i32 %20, 1
  %33 = add i32 %30, %18
  %34 = shl i32 %33, 5
  %35 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %34, i32 undef)  ; BufferLoad(srv,index,wot)
  %36 = extractvalue %dx.types.ResRet.i32 %35, 0
  %37 = extractvalue %dx.types.ResRet.i32 %35, 1
  %38 = extractvalue %dx.types.ResRet.i32 %35, 2
  %39 = extractvalue %dx.types.ResRet.i32 %35, 3
  %40 = lshr i32 %39, 14
  %41 = and i32 %40, 16383
  %42 = and i32 %39, 16383
  %43 = bitcast i32 %36 to float
  %44 = bitcast i32 %37 to float
  %45 = bitcast i32 %38 to float
  %46 = and i32 %39, 536870912
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %87, label %48, !dx.controlflow.hints !33

; <label>:48                                      ; preds = %27
  %49 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %50 = extractvalue %dx.types.CBufRet.f32 %49, 2
  %51 = extractvalue %dx.types.CBufRet.f32 %49, 3
  %52 = fmul fast float %50, %43
  %53 = fmul fast float %51, %44
  %54 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %55 = extractvalue %dx.types.CBufRet.f32 %54, 0
  %56 = extractvalue %dx.types.CBufRet.f32 %54, 1
  %57 = fadd fast float %52, %55
  %58 = fadd fast float %53, %56
  %59 = call float @dx.op.unary.f32(i32 7, float %57)  ; Saturate(value)
  %60 = call float @dx.op.unary.f32(i32 7, float %58)  ; Saturate(value)
  %61 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %15, float %59, float %60, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %62 = extractvalue %dx.types.ResRet.f32 %61, 0
  %63 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %64 = extractvalue %dx.types.CBufRet.f32 %63, 0
  %65 = fmul fast float %64, %62
  %66 = fsub fast float %57, %59
  %67 = fsub fast float %58, %60
  %68 = extractvalue %dx.types.CBufRet.f32 %49, 0
  %69 = extractvalue %dx.types.CBufRet.f32 %49, 1
  %70 = fmul fast float %68, %66
  %71 = fmul fast float %69, %67
  %72 = fmul fast float %70, %70
  %73 = fmul fast float %71, %71
  %74 = fadd fast float %72, %73
  %75 = call float @dx.op.unary.f32(i32 24, float %74)  ; Sqrt(value)
  %76 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %77 = extractvalue %dx.types.CBufRet.f32 %76, 3
  %78 = fmul fast float %77, %75
  %79 = call float @dx.op.unary.f32(i32 7, float %78)  ; Saturate(value)
  %80 = extractvalue %dx.types.CBufRet.f32 %76, 2
  %81 = fsub fast float %80, %65
  %82 = fmul fast float %81, %79
  %83 = extractvalue %dx.types.CBufRet.f32 %63, 1
  %84 = fadd fast float %65, %45
  %85 = fadd fast float %84, %83
  %86 = fadd fast float %85, %82
  br label %87

; <label>:87                                      ; preds = %48, %27
  %88 = phi float [ %86, %48 ], [ %45, %27 ]
  %89 = or i32 %34, 16
  %90 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %89, i32 undef)  ; BufferLoad(srv,index,wot)
  %91 = extractvalue %dx.types.ResRet.i32 %90, 0
  %92 = extractvalue %dx.types.ResRet.i32 %90, 1
  %93 = extractvalue %dx.types.ResRet.i32 %90, 2
  %94 = extractvalue %dx.types.ResRet.i32 %90, 3
  %95 = and i32 %91, 65535
  %96 = call float @dx.op.legacyF16ToF32(i32 131, i32 %95)  ; LegacyF16ToF32(value)
  %97 = lshr i32 %91, 16
  %98 = call float @dx.op.legacyF16ToF32(i32 131, i32 %97)  ; LegacyF16ToF32(value)
  %99 = and i32 %92, 1023
  %100 = uitofp i32 %99 to float
  %101 = lshr i32 %92, 10
  %102 = and i32 %101, 1023
  %103 = uitofp i32 %102 to float
  %104 = lshr i32 %92, 20
  %105 = and i32 %104, 1023
  %106 = uitofp i32 %105 to float
  %107 = fmul fast float %100, 0x3F60040100000000
  %108 = fmul fast float %103, 0x3F60040100000000
  %109 = fmul fast float %106, 0x3F60040100000000
  %110 = fadd fast float %107, -1.000000e+00
  %111 = fadd fast float %108, -1.000000e+00
  %112 = fadd fast float %109, -1.000000e+00
  %113 = and i32 %93, 1023
  %114 = uitofp i32 %113 to float
  %115 = lshr i32 %93, 10
  %116 = and i32 %115, 1023
  %117 = uitofp i32 %116 to float
  %118 = lshr i32 %93, 20
  %119 = and i32 %118, 1023
  %120 = uitofp i32 %119 to float
  %121 = fmul fast float %114, 0x3F60040100000000
  %122 = fmul fast float %117, 0x3F60040100000000
  %123 = fmul fast float %120, 0x3F60040100000000
  %124 = fadd fast float %121, -1.000000e+00
  %125 = fadd fast float %122, -1.000000e+00
  %126 = fadd fast float %123, -1.000000e+00
  %127 = and i32 %94, 65535
  %128 = call float @dx.op.legacyF16ToF32(i32 131, i32 %127)  ; LegacyF16ToF32(value)
  %129 = call float @dx.op.unary.f32(i32 13, float %128)  ; Sin(value)
  %130 = call float @dx.op.unary.f32(i32 12, float %128)  ; Cos(value)
  %131 = fmul fast float %130, %110
  %132 = fmul fast float %111, %130
  %133 = fmul fast float %112, %130
  %134 = fmul fast float %124, %129
  %135 = fmul fast float %125, %129
  %136 = fmul fast float %126, %129
  %137 = fadd fast float %131, %134
  %138 = fadd fast float %132, %135
  %139 = fadd fast float %133, %136
  %140 = fmul fast float %137, %96
  %141 = fmul fast float %138, %96
  %142 = fmul fast float %139, %96
  %143 = fmul fast float %110, %129
  %144 = fmul fast float %111, %129
  %145 = fmul fast float %112, %129
  %146 = fmul fast float %130, %124
  %147 = fmul fast float %125, %130
  %148 = fmul fast float %126, %130
  %149 = fsub fast float %143, %146
  %150 = fsub fast float %144, %147
  %151 = fsub fast float %145, %148
  %152 = fmul fast float %149, %98
  %153 = fmul fast float %150, %98
  %154 = fmul fast float %151, %98
  %155 = add i32 %41, %31
  %156 = add i32 %42, %32
  %157 = uitofp i32 %31 to float
  %158 = uitofp i32 %32 to float
  %159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %160 = extractvalue %dx.types.CBufRet.f32 %159, 1
  %161 = fdiv fast float %157, %160
  %162 = fdiv fast float %158, %160
  %163 = extractvalue %dx.types.CBufRet.f32 %159, 2
  %164 = fmul fast float %163, 2.000000e+00
  %165 = fadd fast float %164, %161
  %166 = fadd fast float %164, %162
  %167 = fmul fast float %165, %140
  %168 = fmul fast float %165, %141
  %169 = fmul fast float %165, %142
  %170 = fmul fast float %166, %152
  %171 = fmul fast float %166, %153
  %172 = fmul fast float %166, %154
  %173 = fadd fast float %170, %167
  %174 = fmul fast float %173, 2.000000e+00
  %175 = fsub fast float %43, %140
  %176 = fsub fast float %175, %152
  %177 = fadd fast float %176, %174
  %178 = fadd fast float %171, %168
  %179 = fmul fast float %178, 2.000000e+00
  %180 = fsub fast float %44, %141
  %181 = fsub fast float %180, %153
  %182 = fadd fast float %181, %179
  %183 = fadd fast float %172, %169
  %184 = fmul fast float %183, 2.000000e+00
  %185 = fsub fast float %88, %142
  %186 = fsub fast float %185, %154
  %187 = fadd fast float %186, %184
  %188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %33, i32 0)  ; BufferLoad(srv,index,wot)
  %189 = extractvalue %dx.types.ResRet.i32 %188, 0
  %190 = and i32 %22, 31
  %191 = shl i32 1, %190
  %192 = shl i32 %191, %190
  %193 = shl i32 %20, %190
  %194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %33, i32 0)  ; BufferLoad(srv,index,wot)
  %195 = extractvalue %dx.types.ResRet.i32 %194, 0
  %196 = extractvalue %dx.types.CBufRet.i32 %21, 1
  %197 = icmp ne i32 %196, 0
  %198 = icmp ne i32 %195, 262144
  %199 = and i1 %198, %197
  %200 = icmp ne i32 %189, 0
  %201 = and i1 %200, %199
  br i1 %201, label %202, label %288, !dx.controlflow.hints !34

; <label>:202                                     ; preds = %87
  br label %203

; <label>:203                                     ; preds = %203, %202
  %204 = phi i32 [ %284, %203 ], [ %189, %202 ]
  %205 = phi float [ %282, %203 ], [ 0.000000e+00, %202 ]
  %206 = phi float [ %262, %203 ], [ 0.000000e+00, %202 ]
  %207 = phi float [ %263, %203 ], [ 0.000000e+00, %202 ]
  %208 = phi float [ %264, %203 ], [ 0.000000e+00, %202 ]
  %209 = phi float [ %265, %203 ], [ 0.000000e+00, %202 ]
  %210 = phi float [ %270, %203 ], [ 0.000000e+00, %202 ]
  %211 = phi float [ %271, %203 ], [ 0.000000e+00, %202 ]
  %212 = phi float [ %272, %203 ], [ 0.000000e+00, %202 ]
  %213 = phi float [ %273, %203 ], [ 0.000000e+00, %202 ]
  %214 = phi float [ %278, %203 ], [ 0.000000e+00, %202 ]
  %215 = phi float [ %279, %203 ], [ 0.000000e+00, %202 ]
  %216 = phi float [ %280, %203 ], [ 0.000000e+00, %202 ]
  %217 = phi float [ %281, %203 ], [ 0.000000e+00, %202 ]
  %218 = phi i32 [ %285, %203 ], [ 0, %202 ]
  %219 = mul i32 %218, %192
  %220 = add i32 %193, %19
  %221 = add i32 %220, %195
  %222 = add i32 %221, %219
  %223 = shl i32 %222, 2
  %224 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %223, i32 undef)  ; BufferLoad(srv,index,wot)
  %225 = extractvalue %dx.types.ResRet.f32 %224, 0
  %226 = extractvalue %dx.types.ResRet.f32 %224, 1
  %227 = extractvalue %dx.types.ResRet.f32 %224, 2
  %228 = or i32 %223, 1
  %229 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %228, i32 undef)  ; BufferLoad(srv,index,wot)
  %230 = extractvalue %dx.types.ResRet.f32 %229, 0
  %231 = extractvalue %dx.types.ResRet.f32 %229, 1
  %232 = extractvalue %dx.types.ResRet.f32 %229, 2
  %233 = or i32 %223, 2
  %234 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %233, i32 undef)  ; BufferLoad(srv,index,wot)
  %235 = extractvalue %dx.types.ResRet.f32 %234, 0
  %236 = extractvalue %dx.types.ResRet.f32 %234, 1
  %237 = extractvalue %dx.types.ResRet.f32 %234, 2
  %238 = or i32 %223, 3
  %239 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %238, i32 undef)  ; BufferLoad(srv,index,wot)
  %240 = extractvalue %dx.types.ResRet.f32 %239, 0
  %241 = extractvalue %dx.types.ResRet.f32 %239, 1
  %242 = extractvalue %dx.types.ResRet.f32 %239, 2
  %243 = fmul fast float %225, 0x3FFBB67AE0000000
  %244 = fsub fast float %230, %243
  %245 = fsub fast float %235, %243
  %246 = fsub fast float %240, %243
  %247 = fmul fast float %226, 0x3FFBB67AE0000000
  %248 = fsub fast float %231, %247
  %249 = fsub fast float %236, %247
  %250 = fsub fast float %241, %247
  %251 = fmul fast float %227, 0x3FFBB67AE0000000
  %252 = fsub fast float %232, %251
  %253 = fsub fast float %237, %251
  %254 = fsub fast float %242, %251
  %255 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %222, i32 undef)  ; BufferLoad(srv,index,wot)
  %256 = extractvalue %dx.types.ResRet.f32 %255, 0
  %257 = fmul fast float %256, %256
  %258 = fmul fast float %257, %225
  %259 = fmul fast float %257, %244
  %260 = fmul fast float %257, %245
  %261 = fmul fast float %257, %246
  %262 = fadd fast float %258, %206
  %263 = fadd fast float %259, %207
  %264 = fadd fast float %260, %208
  %265 = fadd fast float %261, %209
  %266 = fmul fast float %257, %226
  %267 = fmul fast float %257, %248
  %268 = fmul fast float %257, %249
  %269 = fmul fast float %257, %250
  %270 = fadd fast float %266, %210
  %271 = fadd fast float %267, %211
  %272 = fadd fast float %268, %212
  %273 = fadd fast float %269, %213
  %274 = fmul fast float %257, %227
  %275 = fmul fast float %257, %252
  %276 = fmul fast float %257, %253
  %277 = fmul fast float %257, %254
  %278 = fadd fast float %274, %214
  %279 = fadd fast float %275, %215
  %280 = fadd fast float %276, %216
  %281 = fadd fast float %277, %217
  %282 = fadd fast float %257, %205
  %283 = add i32 %204, -1
  %284 = and i32 %283, %204
  %285 = add i32 %218, 1
  %286 = icmp eq i32 %284, 0
  br i1 %286, label %287, label %203

; <label>:287                                     ; preds = %203
  br label %288

; <label>:288                                     ; preds = %287, %87
  %289 = phi float [ 0.000000e+00, %87 ], [ %282, %287 ]
  %290 = phi float [ 0.000000e+00, %87 ], [ %262, %287 ]
  %291 = phi float [ 0.000000e+00, %87 ], [ %263, %287 ]
  %292 = phi float [ 0.000000e+00, %87 ], [ %264, %287 ]
  %293 = phi float [ 0.000000e+00, %87 ], [ %265, %287 ]
  %294 = phi float [ 0.000000e+00, %87 ], [ %270, %287 ]
  %295 = phi float [ 0.000000e+00, %87 ], [ %271, %287 ]
  %296 = phi float [ 0.000000e+00, %87 ], [ %272, %287 ]
  %297 = phi float [ 0.000000e+00, %87 ], [ %273, %287 ]
  %298 = phi float [ 0.000000e+00, %87 ], [ %278, %287 ]
  %299 = phi float [ 0.000000e+00, %87 ], [ %279, %287 ]
  %300 = phi float [ 0.000000e+00, %87 ], [ %280, %287 ]
  %301 = phi float [ 0.000000e+00, %87 ], [ %281, %287 ]
  %302 = fcmp fast ogt float %289, 0.000000e+00
  %303 = fcmp fast une float %289, 1.000000e+00
  %304 = and i1 %302, %303
  br i1 %304, label %305, label %319, !dx.controlflow.hints !35

; <label>:305                                     ; preds = %288
  %306 = fdiv fast float 1.000000e+00, %289
  %307 = fmul fast float %306, %290
  %308 = fmul fast float %306, %291
  %309 = fmul fast float %306, %292
  %310 = fmul fast float %306, %293
  %311 = fmul fast float %306, %294
  %312 = fmul fast float %306, %295
  %313 = fmul fast float %306, %296
  %314 = fmul fast float %306, %297
  %315 = fmul fast float %306, %298
  %316 = fmul fast float %306, %299
  %317 = fmul fast float %306, %300
  %318 = fmul fast float %306, %301
  br label %319

; <label>:319                                     ; preds = %305, %288
  %320 = phi float [ 1.000000e+00, %305 ], [ %289, %288 ]
  %321 = phi float [ %307, %305 ], [ %290, %288 ]
  %322 = phi float [ %308, %305 ], [ %291, %288 ]
  %323 = phi float [ %309, %305 ], [ %292, %288 ]
  %324 = phi float [ %310, %305 ], [ %293, %288 ]
  %325 = phi float [ %311, %305 ], [ %294, %288 ]
  %326 = phi float [ %312, %305 ], [ %295, %288 ]
  %327 = phi float [ %313, %305 ], [ %296, %288 ]
  %328 = phi float [ %314, %305 ], [ %297, %288 ]
  %329 = phi float [ %315, %305 ], [ %298, %288 ]
  %330 = phi float [ %316, %305 ], [ %299, %288 ]
  %331 = phi float [ %317, %305 ], [ %300, %288 ]
  %332 = phi float [ %318, %305 ], [ %301, %288 ]
  %333 = call float @dx.op.unary.f32(i32 7, float %320)  ; Saturate(value)
  %334 = fsub fast float 1.000000e+00, %333
  %335 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %336 = extractvalue %dx.types.CBufRet.i32 %335, 0
  %337 = icmp eq i32 %336, 1
  br i1 %337, label %338, label %373, !dx.controlflow.hints !36

; <label>:338                                     ; preds = %319
  %339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %340 = extractvalue %dx.types.CBufRet.f32 %339, 0
  %341 = extractvalue %dx.types.CBufRet.f32 %339, 1
  %342 = fsub fast float %177, %340
  %343 = fsub fast float %182, %341
  %344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %345 = extractvalue %dx.types.CBufRet.f32 %344, 0
  %346 = extractvalue %dx.types.CBufRet.f32 %344, 1
  %347 = fmul fast float %342, %345
  %348 = fmul fast float %343, %346
  %349 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %15, float %347, float %348, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %350 = extractvalue %dx.types.ResRet.f32 %349, 0
  %351 = fcmp fast ogt float %350, 0.000000e+00
  %352 = extractvalue %dx.types.CBufRet.i32 %335, 3
  %353 = icmp ne i32 %352, 0
  %354 = and i1 %351, %353
  br i1 %354, label %355, label %373, !dx.controlflow.hints !37

; <label>:355                                     ; preds = %338
  %356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %357 = extractvalue %dx.types.CBufRet.f32 %356, 0
  %358 = extractvalue %dx.types.CBufRet.f32 %356, 1
  %359 = fsub fast float %177, %357
  %360 = fsub fast float %182, %358
  %361 = fmul fast float %359, %359
  %362 = fmul fast float %360, %360
  %363 = fadd fast float %361, %362
  %364 = uitofp i32 %352 to float
  %365 = fmul fast float %364, %364
  %366 = fcmp fast ogt float %363, %365
  br i1 %366, label %373, label %367, !dx.controlflow.hints !38

; <label>:367                                     ; preds = %355
  %368 = call float @dx.op.unary.f32(i32 24, float %363)  ; Sqrt(value)
  %369 = fsub fast float %364, %368
  %370 = fmul fast float %369, 0x3F75555560000000
  %371 = call float @dx.op.unary.f32(i32 7, float %370)  ; Saturate(value)
  %372 = call float @dx.op.binary.f32(i32 36, float %371, float %350)  ; FMin(a,b)
  br label %373

; <label>:373                                     ; preds = %367, %355, %338, %319
  %374 = phi float [ 1.000000e+00, %319 ], [ %372, %367 ], [ %350, %338 ], [ 0.000000e+00, %355 ]
  %375 = fcmp fast ogt float %334, 0.000000e+00
  %376 = fcmp fast olt float %374, 1.000000e+00
  %377 = or i1 %375, %376
  br i1 %377, label %378, label %1047, !dx.controlflow.hints !39

; <label>:378                                     ; preds = %373
  %379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %380 = extractvalue %dx.types.CBufRet.f32 %379, 0
  %381 = extractvalue %dx.types.CBufRet.f32 %379, 1
  %382 = fsub fast float %177, %380
  %383 = fsub fast float %182, %381
  %384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %385 = extractvalue %dx.types.CBufRet.f32 %384, 0
  %386 = extractvalue %dx.types.CBufRet.f32 %384, 1
  %387 = fmul fast float %382, %385
  %388 = fmul fast float %383, %386
  %389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %390 = extractvalue %dx.types.CBufRet.f32 %389, 0
  %391 = fmul fast float %390, %387
  %392 = extractvalue %dx.types.CBufRet.f32 %389, 1
  %393 = fadd fast float %391, %392
  %394 = extractvalue %dx.types.CBufRet.f32 %389, 2
  %395 = fmul fast float %394, %388
  %396 = extractvalue %dx.types.CBufRet.f32 %389, 3
  %397 = fadd fast float %395, %396
  %398 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %15, float %393, float %397, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %399 = extractvalue %dx.types.ResRet.f32 %398, 0
  %400 = extractvalue %dx.types.ResRet.f32 %398, 1
  %401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %402 = extractvalue %dx.types.CBufRet.f32 %401, 1
  %403 = extractvalue %dx.types.CBufRet.f32 %401, 0
  %404 = fsub fast float %402, %403
  %405 = fmul fast float %404, %399
  %406 = fadd fast float %405, %403
  %407 = extractvalue %dx.types.CBufRet.f32 %401, 3
  %408 = extractvalue %dx.types.CBufRet.f32 %401, 2
  %409 = fsub fast float %407, %408
  %410 = fmul fast float %409, %400
  %411 = fadd fast float %410, %408
  %412 = fsub fast float %187, %406
  %413 = fsub fast float %411, %406
  %414 = fdiv fast float %412, %413
  %415 = call float @dx.op.unary.f32(i32 7, float %414)  ; Saturate(value)
  %416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %417 = extractvalue %dx.types.CBufRet.f32 %416, 0
  %418 = fmul fast float %417, %415
  %419 = extractvalue %dx.types.CBufRet.f32 %416, 1
  %420 = fadd fast float %418, %419
  %421 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %15, float %393, float %397, float %420, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %422 = extractvalue %dx.types.ResRet.f32 %421, 0
  %423 = extractvalue %dx.types.ResRet.f32 %421, 1
  %424 = extractvalue %dx.types.ResRet.f32 %421, 2
  %425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %426 = extractvalue %dx.types.CBufRet.f32 %425, 0
  %427 = extractvalue %dx.types.CBufRet.f32 %425, 1
  %428 = extractvalue %dx.types.CBufRet.f32 %425, 2
  %429 = fmul fast float %426, %422
  %430 = fmul fast float %427, %423
  %431 = fmul fast float %428, %424
  %432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %433 = extractvalue %dx.types.CBufRet.f32 %432, 0
  %434 = extractvalue %dx.types.CBufRet.f32 %432, 1
  %435 = extractvalue %dx.types.CBufRet.f32 %432, 2
  %436 = fadd fast float %429, %433
  %437 = fadd fast float %430, %434
  %438 = fadd fast float %431, %435
  %439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %440 = extractvalue %dx.types.CBufRet.f32 %439, 0
  %441 = fmul fast float %440, %387
  %442 = extractvalue %dx.types.CBufRet.f32 %439, 1
  %443 = fadd fast float %441, %442
  %444 = extractvalue %dx.types.CBufRet.f32 %439, 2
  %445 = fmul fast float %444, %388
  %446 = extractvalue %dx.types.CBufRet.f32 %439, 3
  %447 = fadd fast float %445, %446
  %448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %449 = extractvalue %dx.types.CBufRet.f32 %448, 0
  %450 = extractvalue %dx.types.CBufRet.f32 %448, 1
  %451 = extractvalue %dx.types.CBufRet.f32 %448, 2
  %452 = extractvalue %dx.types.CBufRet.f32 %448, 3
  %453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %454 = extractvalue %dx.types.CBufRet.f32 %453, 0
  %455 = extractvalue %dx.types.CBufRet.f32 %453, 1
  %456 = extractvalue %dx.types.CBufRet.f32 %453, 2
  %457 = extractvalue %dx.types.CBufRet.f32 %453, 3
  %458 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %15, float %443, float %447, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %459 = extractvalue %dx.types.ResRet.f32 %458, 0
  %460 = extractvalue %dx.types.ResRet.f32 %458, 1
  %461 = extractvalue %dx.types.ResRet.f32 %458, 2
  %462 = extractvalue %dx.types.ResRet.f32 %458, 3
  %463 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %15, float %443, float %447, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %464 = extractvalue %dx.types.ResRet.f32 %463, 0
  %465 = extractvalue %dx.types.ResRet.f32 %463, 1
  %466 = extractvalue %dx.types.ResRet.f32 %463, 2
  %467 = extractvalue %dx.types.ResRet.f32 %463, 3
  %468 = fmul fast float %459, %436
  %469 = fmul fast float %464, %436
  %470 = fmul fast float %466, %436
  %471 = fmul fast float %462, %436
  %472 = fadd fast float %468, %449
  %473 = fadd fast float %469, %450
  %474 = fadd fast float %470, %451
  %475 = fadd fast float %471, %452
  %476 = fmul fast float %460, %436
  %477 = fmul fast float %465, %436
  %478 = fadd fast float %476, %454
  %479 = fadd fast float %477, %455
  %480 = fmul fast float %461, %436
  %481 = fmul fast float %467, %436
  %482 = fadd fast float %480, %456
  %483 = fadd fast float %481, %457
  %484 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %15, float %443, float %447, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %485 = extractvalue %dx.types.ResRet.f32 %484, 0
  %486 = extractvalue %dx.types.ResRet.f32 %484, 1
  %487 = extractvalue %dx.types.ResRet.f32 %484, 2
  %488 = extractvalue %dx.types.ResRet.f32 %484, 3
  %489 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %15, float %443, float %447, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %490 = extractvalue %dx.types.ResRet.f32 %489, 0
  %491 = extractvalue %dx.types.ResRet.f32 %489, 1
  %492 = extractvalue %dx.types.ResRet.f32 %489, 2
  %493 = extractvalue %dx.types.ResRet.f32 %489, 3
  %494 = fmul fast float %485, %437
  %495 = fmul fast float %490, %437
  %496 = fmul fast float %492, %437
  %497 = fmul fast float %488, %437
  %498 = fadd fast float %472, %494
  %499 = fadd fast float %473, %495
  %500 = fadd fast float %474, %496
  %501 = fadd fast float %475, %497
  %502 = fmul fast float %486, %437
  %503 = fmul fast float %491, %437
  %504 = fadd fast float %478, %502
  %505 = fadd fast float %479, %503
  %506 = fmul fast float %487, %437
  %507 = fmul fast float %493, %437
  %508 = fadd fast float %482, %506
  %509 = fadd fast float %483, %507
  %510 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %15, float %443, float %447, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %511 = extractvalue %dx.types.ResRet.f32 %510, 0
  %512 = extractvalue %dx.types.ResRet.f32 %510, 1
  %513 = extractvalue %dx.types.ResRet.f32 %510, 2
  %514 = extractvalue %dx.types.ResRet.f32 %510, 3
  %515 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %15, float %443, float %447, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %516 = extractvalue %dx.types.ResRet.f32 %515, 0
  %517 = extractvalue %dx.types.ResRet.f32 %515, 1
  %518 = extractvalue %dx.types.ResRet.f32 %515, 2
  %519 = extractvalue %dx.types.ResRet.f32 %515, 3
  %520 = fmul fast float %511, %438
  %521 = fmul fast float %516, %438
  %522 = fmul fast float %518, %438
  %523 = fmul fast float %514, %438
  %524 = fadd fast float %498, %520
  %525 = fadd fast float %499, %521
  %526 = fadd fast float %500, %522
  %527 = fadd fast float %501, %523
  %528 = fmul fast float %512, %438
  %529 = fmul fast float %517, %438
  %530 = fadd fast float %504, %528
  %531 = fadd fast float %505, %529
  %532 = fmul fast float %513, %438
  %533 = fmul fast float %519, %438
  %534 = fadd fast float %508, %532
  %535 = fadd fast float %509, %533
  %536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %537 = extractvalue %dx.types.CBufRet.f32 %536, 0
  %538 = fsub fast float %177, %537
  %539 = fsub fast float %380, %177
  %540 = call float @dx.op.binary.f32(i32 35, float %539, float %538)  ; FMax(a,b)
  %541 = extractvalue %dx.types.CBufRet.f32 %536, 1
  %542 = fsub fast float %182, %541
  %543 = fsub fast float %381, %182
  %544 = call float @dx.op.binary.f32(i32 35, float %543, float %542)  ; FMax(a,b)
  %545 = call float @dx.op.binary.f32(i32 35, float %540, float %544)  ; FMax(a,b)
  %546 = extractvalue %dx.types.CBufRet.f32 %384, 3
  %547 = fmul fast float %546, %545
  %548 = call float @dx.op.unary.f32(i32 7, float %547)  ; Saturate(value)
  %549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %550 = extractvalue %dx.types.CBufRet.f32 %549, 0
  %551 = extractvalue %dx.types.CBufRet.f32 %549, 1
  %552 = extractvalue %dx.types.CBufRet.f32 %549, 2
  %553 = extractvalue %dx.types.CBufRet.f32 %549, 3
  %554 = fsub fast float %550, %524
  %555 = fsub fast float %551, %525
  %556 = fsub fast float %552, %526
  %557 = fsub fast float %553, %527
  %558 = fmul fast float %554, %548
  %559 = fmul fast float %555, %548
  %560 = fmul fast float %556, %548
  %561 = fmul fast float %557, %548
  %562 = fadd fast float %558, %524
  %563 = fadd fast float %559, %525
  %564 = fadd fast float %560, %526
  %565 = fadd fast float %561, %527
  %566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %567 = extractvalue %dx.types.CBufRet.f32 %566, 0
  %568 = extractvalue %dx.types.CBufRet.f32 %566, 1
  %569 = fsub fast float %567, %530
  %570 = fsub fast float %568, %531
  %571 = fmul fast float %569, %548
  %572 = fmul fast float %570, %548
  %573 = fadd fast float %571, %530
  %574 = fadd fast float %572, %531
  %575 = extractvalue %dx.types.CBufRet.f32 %566, 2
  %576 = extractvalue %dx.types.CBufRet.f32 %566, 3
  %577 = fsub fast float %575, %534
  %578 = fsub fast float %576, %535
  %579 = fmul fast float %577, %548
  %580 = fmul fast float %578, %548
  %581 = fadd fast float %579, %534
  %582 = fadd fast float %580, %535
  %583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %584 = extractvalue %dx.types.CBufRet.f32 %583, 0
  %585 = fmul fast float %584, %562
  %586 = fmul fast float %584, %563
  %587 = fmul fast float %584, %564
  %588 = fmul fast float %584, %565
  %589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %590 = extractvalue %dx.types.CBufRet.f32 %589, 0
  %591 = fmul fast float %590, %573
  %592 = fmul fast float %590, %574
  %593 = fadd fast float %591, %585
  %594 = fadd fast float %592, %587
  %595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %596 = extractvalue %dx.types.CBufRet.f32 %595, 0
  %597 = fmul fast float %596, %581
  %598 = fmul fast float %596, %582
  %599 = fadd fast float %593, %597
  %600 = fadd fast float %594, %598
  %601 = extractvalue %dx.types.CBufRet.f32 %583, 1
  %602 = fmul fast float %601, %562
  %603 = fmul fast float %601, %563
  %604 = fmul fast float %601, %564
  %605 = fmul fast float %601, %565
  %606 = extractvalue %dx.types.CBufRet.f32 %589, 1
  %607 = fmul fast float %606, %573
  %608 = fmul fast float %606, %574
  %609 = fadd fast float %607, %602
  %610 = fadd fast float %608, %604
  %611 = extractvalue %dx.types.CBufRet.f32 %595, 1
  %612 = fmul fast float %611, %581
  %613 = fmul fast float %611, %582
  %614 = fadd fast float %609, %612
  %615 = fadd fast float %610, %613
  %616 = extractvalue %dx.types.CBufRet.f32 %583, 2
  %617 = fmul fast float %616, %562
  %618 = fmul fast float %616, %563
  %619 = fmul fast float %616, %564
  %620 = fmul fast float %616, %565
  %621 = extractvalue %dx.types.CBufRet.f32 %589, 2
  %622 = fmul fast float %621, %573
  %623 = fmul fast float %621, %574
  %624 = fadd fast float %622, %617
  %625 = fadd fast float %623, %619
  %626 = extractvalue %dx.types.CBufRet.f32 %595, 2
  %627 = fmul fast float %626, %581
  %628 = fmul fast float %626, %582
  %629 = fadd fast float %624, %627
  %630 = fadd fast float %625, %628
  %631 = fmul fast float %618, %618
  %632 = fmul fast float %630, %630
  %633 = fmul fast float %620, %620
  %634 = fadd fast float %633, %631
  %635 = fadd fast float %634, %632
  %636 = call float @dx.op.unary.f32(i32 24, float %635)  ; Sqrt(value)
  %637 = fcmp fast ugt float %636, 0.000000e+00
  br i1 %637, label %638, label %653, !dx.controlflow.hints !40

; <label>:638                                     ; preds = %378
  %639 = fsub fast float -0.000000e+00, %620
  %640 = fdiv fast float %639, %636
  %641 = fsub fast float -0.000000e+00, %618
  %642 = fdiv fast float %641, %636
  %643 = fdiv fast float %630, %636
  %644 = fmul fast float %629, 0x3FE279A760000000
  %645 = fmul fast float %642, %618
  %646 = fmul fast float %643, %630
  %647 = fmul fast float %640, %620
  %648 = fadd fast float %645, %647
  %649 = fsub fast float %648, %646
  %650 = call float @dx.op.unary.f32(i32 6, float %649)  ; FAbs(value)
  %651 = fadd fast float %650, 0x3DDB7CDFE0000000
  %652 = fdiv fast float %644, %651
  br label %653

; <label>:653                                     ; preds = %638, %378
  %654 = phi float [ %652, %638 ], [ 1.000000e+00, %378 ]
  %655 = fmul fast float %603, %603
  %656 = fmul fast float %615, %615
  %657 = fmul fast float %605, %605
  %658 = fadd fast float %657, %655
  %659 = fadd fast float %658, %656
  %660 = call float @dx.op.unary.f32(i32 24, float %659)  ; Sqrt(value)
  %661 = fcmp fast ugt float %660, 0.000000e+00
  br i1 %661, label %662, label %677, !dx.controlflow.hints !40

; <label>:662                                     ; preds = %653
  %663 = fsub fast float -0.000000e+00, %605
  %664 = fdiv fast float %663, %660
  %665 = fsub fast float -0.000000e+00, %603
  %666 = fdiv fast float %665, %660
  %667 = fdiv fast float %615, %660
  %668 = fmul fast float %614, 0x3FE279A760000000
  %669 = fmul fast float %666, %603
  %670 = fmul fast float %667, %615
  %671 = fmul fast float %664, %605
  %672 = fadd fast float %669, %671
  %673 = fsub fast float %672, %670
  %674 = call float @dx.op.unary.f32(i32 6, float %673)  ; FAbs(value)
  %675 = fadd fast float %674, 0x3DDB7CDFE0000000
  %676 = fdiv fast float %668, %675
  br label %677

; <label>:677                                     ; preds = %662, %653
  %678 = phi float [ %676, %662 ], [ 1.000000e+00, %653 ]
  %679 = call float @dx.op.binary.f32(i32 36, float %678, float %654)  ; FMin(a,b)
  %680 = fmul fast float %586, %586
  %681 = fmul fast float %600, %600
  %682 = fmul fast float %588, %588
  %683 = fadd fast float %682, %680
  %684 = fadd fast float %683, %681
  %685 = call float @dx.op.unary.f32(i32 24, float %684)  ; Sqrt(value)
  %686 = fcmp fast ugt float %685, 0.000000e+00
  br i1 %686, label %687, label %702, !dx.controlflow.hints !40

; <label>:687                                     ; preds = %677
  %688 = fsub fast float -0.000000e+00, %588
  %689 = fdiv fast float %688, %685
  %690 = fsub fast float -0.000000e+00, %586
  %691 = fdiv fast float %690, %685
  %692 = fdiv fast float %600, %685
  %693 = fmul fast float %599, 0x3FE279A760000000
  %694 = fmul fast float %691, %586
  %695 = fmul fast float %692, %600
  %696 = fmul fast float %689, %588
  %697 = fadd fast float %694, %696
  %698 = fsub fast float %697, %695
  %699 = call float @dx.op.unary.f32(i32 6, float %698)  ; FAbs(value)
  %700 = fadd fast float %699, 0x3DDB7CDFE0000000
  %701 = fdiv fast float %693, %700
  br label %702

; <label>:702                                     ; preds = %687, %677
  %703 = phi float [ %701, %687 ], [ 1.000000e+00, %677 ]
  %704 = call float @dx.op.binary.f32(i32 36, float %703, float %679)  ; FMin(a,b)
  %705 = call float @dx.op.unary.f32(i32 7, float %704)  ; Saturate(value)
  %706 = fcmp fast olt float %705, 1.000000e+00
  br i1 %706, label %707, label %717, !dx.controlflow.hints !41

; <label>:707                                     ; preds = %702
  %708 = fmul fast float %705, %586
  %709 = fmul fast float %705, %600
  %710 = fmul fast float %705, %588
  %711 = fmul fast float %705, %603
  %712 = fmul fast float %705, %615
  %713 = fmul fast float %705, %605
  %714 = fmul fast float %705, %618
  %715 = fmul fast float %705, %630
  %716 = fmul fast float %705, %620
  br label %717

; <label>:717                                     ; preds = %707, %702
  %718 = phi float [ %714, %707 ], [ %618, %702 ]
  %719 = phi float [ %715, %707 ], [ %630, %702 ]
  %720 = phi float [ %716, %707 ], [ %620, %702 ]
  %721 = phi float [ %711, %707 ], [ %603, %702 ]
  %722 = phi float [ %712, %707 ], [ %615, %702 ]
  %723 = phi float [ %713, %707 ], [ %605, %702 ]
  %724 = phi float [ %708, %707 ], [ %586, %702 ]
  %725 = phi float [ %709, %707 ], [ %600, %702 ]
  %726 = phi float [ %710, %707 ], [ %588, %702 ]
  %727 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %599)  ; FMax(a,b)
  %728 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %614)  ; FMax(a,b)
  %729 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %629)  ; FMax(a,b)
  %730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %731 = extractvalue %dx.types.CBufRet.f32 %730, 0
  %732 = fcmp fast ogt float %731, 0.000000e+00
  %733 = fcmp fast oge float %387, 0.000000e+00
  %734 = and i1 %733, %732
  %735 = fcmp fast ole float %387, 1.000000e+00
  %736 = and i1 %735, %734
  %737 = fcmp fast oge float %388, 0.000000e+00
  %738 = and i1 %737, %736
  %739 = fcmp fast ole float %388, 1.000000e+00
  %740 = and i1 %739, %738
  br i1 %740, label %741, label %886, !dx.controlflow.hints !42

; <label>:741                                     ; preds = %717
  %742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %743 = extractvalue %dx.types.CBufRet.f32 %742, 2
  %744 = extractvalue %dx.types.CBufRet.f32 %742, 3
  %745 = fmul fast float %743, %387
  %746 = fmul fast float %744, %388
  %747 = call float @dx.op.unary.f32(i32 27, float %745)  ; Round_ni(value)
  %748 = call float @dx.op.unary.f32(i32 27, float %746)  ; Round_ni(value)
  %749 = fptosi float %747 to i32
  %750 = fptosi float %748 to i32
  %751 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %749, i32 %750, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %752 = extractvalue %dx.types.ResRet.i32 %751, 0
  %753 = and i32 %752, 65535
  %754 = lshr i32 %752, 16
  %755 = icmp eq i32 %753, 65535
  br i1 %755, label %792, label %756, !dx.controlflow.hints !43

; <label>:756                                     ; preds = %741
  %757 = extractvalue %dx.types.CBufRet.f32 %730, 1
  %758 = extractvalue %dx.types.CBufRet.f32 %742, 0
  %759 = extractvalue %dx.types.CBufRet.f32 %742, 1
  %760 = fmul fast float %758, %387
  %761 = fmul fast float %759, %388
  %762 = fmul fast float %760, 1.250000e-01
  %763 = fmul fast float %761, 1.250000e-01
  %764 = call float @dx.op.unary.f32(i32 27, float %762)  ; Round_ni(value)
  %765 = call float @dx.op.unary.f32(i32 27, float %763)  ; Round_ni(value)
  %766 = fmul fast float %764, 8.000000e+00
  %767 = fmul fast float %765, 8.000000e+00
  %768 = and i32 %752, 255
  %769 = lshr i32 %752, 8
  %770 = and i32 %769, 255
  %771 = mul nuw nsw i32 %768, 9
  %772 = uitofp i32 %771 to float
  %773 = mul nuw nsw i32 %770, 9
  %774 = uitofp i32 %773 to float
  %775 = fadd fast float %772, 5.000000e-01
  %776 = fadd fast float %775, %760
  %777 = fsub fast float %776, %766
  %778 = fadd fast float %774, 5.000000e-01
  %779 = fadd fast float %778, %761
  %780 = fsub fast float %779, %767
  %781 = fdiv fast float %777, %731
  %782 = fdiv fast float %780, %757
  %783 = fmul fast float %415, 4.375000e-01
  %784 = fadd fast float %783, 3.125000e-02
  %785 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %15, float %781, float %782, float %784, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %786 = extractvalue %dx.types.ResRet.f32 %785, 0
  %787 = extractvalue %dx.types.ResRet.f32 %785, 1
  %788 = extractvalue %dx.types.ResRet.f32 %785, 2
  %789 = fadd fast float %786, %727
  %790 = fadd fast float %787, %728
  %791 = fadd fast float %788, %729
  br label %792

; <label>:792                                     ; preds = %756, %741
  %793 = phi float [ %791, %756 ], [ %729, %741 ]
  %794 = phi float [ %790, %756 ], [ %728, %741 ]
  %795 = phi float [ %789, %756 ], [ %727, %741 ]
  %796 = icmp eq i32 %754, 65535
  br i1 %796, label %886, label %797, !dx.controlflow.hints !44

; <label>:797                                     ; preds = %792
  %798 = extractvalue %dx.types.CBufRet.f32 %730, 1
  %799 = extractvalue %dx.types.CBufRet.f32 %742, 0
  %800 = extractvalue %dx.types.CBufRet.f32 %742, 1
  %801 = fmul fast float %799, %387
  %802 = fmul fast float %800, %388
  %803 = fmul fast float %801, 1.250000e-01
  %804 = fmul fast float %802, 1.250000e-01
  %805 = call float @dx.op.unary.f32(i32 27, float %803)  ; Round_ni(value)
  %806 = call float @dx.op.unary.f32(i32 27, float %804)  ; Round_ni(value)
  %807 = fmul fast float %805, 8.000000e+00
  %808 = fmul fast float %806, 8.000000e+00
  %809 = fsub fast float %801, %807
  %810 = fsub fast float %802, %808
  %811 = fadd fast float %809, 5.000000e-01
  %812 = fadd fast float %810, 5.000000e-01
  %813 = and i32 %754, 255
  %814 = lshr i32 %752, 24
  %815 = mul nuw nsw i32 %813, 9
  %816 = uitofp i32 %815 to float
  %817 = mul nuw nsw i32 %814, 9
  %818 = uitofp i32 %817 to float
  %819 = fadd fast float %811, %816
  %820 = fadd fast float %812, %818
  %821 = fdiv fast float %819, %731
  %822 = fdiv fast float %820, %798
  %823 = fmul fast float %415, 4.375000e-01
  %824 = fadd fast float %823, 3.125000e-02
  %825 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %15, float %821, float %822, float %824, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %826 = extractvalue %dx.types.ResRet.f32 %825, 0
  %827 = extractvalue %dx.types.ResRet.f32 %825, 1
  %828 = extractvalue %dx.types.ResRet.f32 %825, 2
  %829 = fadd fast float %823, 5.312500e-01
  %830 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %15, float %821, float %822, float %829, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %831 = extractvalue %dx.types.ResRet.f32 %830, 0
  %832 = extractvalue %dx.types.ResRet.f32 %830, 1
  %833 = extractvalue %dx.types.ResRet.f32 %830, 2
  %834 = fmul fast float %831, 2.000000e+00
  %835 = fmul fast float %832, 2.000000e+00
  %836 = fmul fast float %833, 2.000000e+00
  %837 = fadd fast float %834, -1.000000e+00
  %838 = fadd fast float %835, -1.000000e+00
  %839 = fadd fast float %836, -1.000000e+00
  %840 = fmul fast float %837, %837
  %841 = fmul fast float %838, %838
  %842 = fadd fast float %840, %841
  %843 = fmul fast float %839, %839
  %844 = fadd fast float %842, %843
  %845 = call float @dx.op.unary.f32(i32 24, float %844)  ; Sqrt(value)
  %846 = fcmp fast ogt float %845, 0.000000e+00
  br i1 %846, label %847, label %851, !dx.controlflow.hints !45

; <label>:847                                     ; preds = %797
  %848 = fdiv fast float %837, %845
  %849 = fdiv fast float %838, %845
  %850 = fdiv fast float %839, %845
  br label %851

; <label>:851                                     ; preds = %847, %797
  %852 = phi float [ %848, %847 ], [ 0.000000e+00, %797 ]
  %853 = phi float [ %849, %847 ], [ 0.000000e+00, %797 ]
  %854 = phi float [ %850, %847 ], [ 0.000000e+00, %797 ]
  %855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %856 = extractvalue %dx.types.CBufRet.f32 %855, 0
  %857 = extractvalue %dx.types.CBufRet.f32 %855, 1
  %858 = fsub fast float %177, %856
  %859 = fsub fast float %182, %857
  %860 = fmul fast float %858, %858
  %861 = fmul fast float %859, %859
  %862 = fadd fast float %860, %861
  %863 = call float @dx.op.unary.f32(i32 24, float %862)  ; Sqrt(value)
  %864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %865 = extractvalue %dx.types.CBufRet.f32 %864, 0
  %866 = extractvalue %dx.types.CBufRet.f32 %864, 1
  %867 = fsub fast float %863, %865
  %868 = fdiv fast float %867, %866
  %869 = call float @dx.op.unary.f32(i32 7, float %868)  ; Saturate(value)
  %870 = fmul fast float %869, 2.000000e+00
  %871 = fsub fast float 3.000000e+00, %870
  %872 = fmul fast float %869, %869
  %873 = fmul fast float %872, %871
  %874 = call float @dx.op.dot3.f32(i32 55, float %852, float %853, float %854, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %875 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %874)  ; FMax(a,b)
  %876 = fmul fast float %875, 0x400C5BF8A0000000
  %877 = fmul fast float %873, %826
  %878 = fmul fast float %877, %876
  %879 = fadd fast float %878, %795
  %880 = fmul fast float %873, %827
  %881 = fmul fast float %880, %876
  %882 = fadd fast float %881, %794
  %883 = fmul fast float %873, %828
  %884 = fmul fast float %883, %876
  %885 = fadd fast float %884, %793
  br label %886

; <label>:886                                     ; preds = %851, %792, %717
  %887 = phi float [ %885, %851 ], [ %793, %792 ], [ %729, %717 ]
  %888 = phi float [ %882, %851 ], [ %794, %792 ], [ %728, %717 ]
  %889 = phi float [ %879, %851 ], [ %795, %792 ], [ %727, %717 ]
  %890 = fcmp fast ogt float %187, %411
  %891 = and i1 %733, %890
  %892 = and i1 %735, %891
  %893 = and i1 %737, %892
  %894 = and i1 %739, %893
  br i1 %894, label %895, label %952, !dx.controlflow.hints !46

; <label>:895                                     ; preds = %886
  %896 = fmul fast float %413, 0x3FC24924A0000000
  %897 = fsub fast float %187, %411
  %898 = fdiv fast float %897, %896
  %899 = call float @dx.op.unary.f32(i32 7, float %898)  ; Saturate(value)
  %900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %901 = extractvalue %dx.types.CBufRet.f32 %900, 0
  %902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %903 = extractvalue %dx.types.CBufRet.f32 %902, 0
  %904 = extractvalue %dx.types.CBufRet.f32 %902, 1
  %905 = extractvalue %dx.types.CBufRet.f32 %902, 2
  %906 = fsub fast float %901, %889
  %907 = fsub fast float %903, %724
  %908 = fsub fast float %904, %725
  %909 = fsub fast float %905, %726
  %910 = fmul fast float %906, %899
  %911 = fmul fast float %907, %899
  %912 = fmul fast float %908, %899
  %913 = fmul fast float %909, %899
  %914 = fadd fast float %910, %889
  %915 = fadd fast float %911, %724
  %916 = fadd fast float %912, %725
  %917 = fadd fast float %913, %726
  %918 = extractvalue %dx.types.CBufRet.f32 %900, 1
  %919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %920 = extractvalue %dx.types.CBufRet.f32 %919, 0
  %921 = extractvalue %dx.types.CBufRet.f32 %919, 1
  %922 = extractvalue %dx.types.CBufRet.f32 %919, 2
  %923 = fsub fast float %918, %888
  %924 = fsub fast float %920, %721
  %925 = fsub fast float %921, %722
  %926 = fsub fast float %922, %723
  %927 = fmul fast float %923, %899
  %928 = fmul fast float %924, %899
  %929 = fmul fast float %925, %899
  %930 = fmul fast float %926, %899
  %931 = fadd fast float %927, %888
  %932 = fadd fast float %928, %721
  %933 = fadd fast float %929, %722
  %934 = fadd fast float %930, %723
  %935 = extractvalue %dx.types.CBufRet.f32 %900, 2
  %936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %937 = extractvalue %dx.types.CBufRet.f32 %936, 0
  %938 = extractvalue %dx.types.CBufRet.f32 %936, 1
  %939 = extractvalue %dx.types.CBufRet.f32 %936, 2
  %940 = fsub fast float %935, %887
  %941 = fsub fast float %937, %718
  %942 = fsub fast float %938, %719
  %943 = fsub fast float %939, %720
  %944 = fmul fast float %940, %899
  %945 = fmul fast float %941, %899
  %946 = fmul fast float %942, %899
  %947 = fmul fast float %943, %899
  %948 = fadd fast float %944, %887
  %949 = fadd fast float %945, %718
  %950 = fadd fast float %946, %719
  %951 = fadd fast float %947, %720
  br label %952

; <label>:952                                     ; preds = %895, %886
  %953 = phi float [ %948, %895 ], [ %887, %886 ]
  %954 = phi float [ %949, %895 ], [ %718, %886 ]
  %955 = phi float [ %950, %895 ], [ %719, %886 ]
  %956 = phi float [ %951, %895 ], [ %720, %886 ]
  %957 = phi float [ %931, %895 ], [ %888, %886 ]
  %958 = phi float [ %932, %895 ], [ %721, %886 ]
  %959 = phi float [ %933, %895 ], [ %722, %886 ]
  %960 = phi float [ %934, %895 ], [ %723, %886 ]
  %961 = phi float [ %914, %895 ], [ %889, %886 ]
  %962 = phi float [ %915, %895 ], [ %724, %886 ]
  %963 = phi float [ %916, %895 ], [ %725, %886 ]
  %964 = phi float [ %917, %895 ], [ %726, %886 ]
  %965 = extractvalue %dx.types.CBufRet.f32 %536, 3
  %966 = fmul fast float %965, %961
  %967 = fmul fast float %965, %957
  %968 = fmul fast float %965, %953
  %969 = fmul fast float %962, 1.500000e+00
  %970 = fmul fast float %969, %965
  %971 = fmul fast float %963, 1.500000e+00
  %972 = fmul fast float %971, %965
  %973 = fmul fast float %964, 1.500000e+00
  %974 = fmul fast float %973, %965
  %975 = fmul fast float %958, 1.500000e+00
  %976 = fmul fast float %975, %965
  %977 = fmul fast float %959, 1.500000e+00
  %978 = fmul fast float %977, %965
  %979 = fmul fast float %960, 1.500000e+00
  %980 = fmul fast float %979, %965
  %981 = fmul fast float %954, 1.500000e+00
  %982 = fmul fast float %981, %965
  %983 = fmul fast float %955, 1.500000e+00
  %984 = fmul fast float %983, %965
  %985 = fmul fast float %956, 1.500000e+00
  %986 = fmul fast float %985, %965
  %987 = fmul fast float %966, %334
  %988 = fmul fast float %970, %334
  %989 = fmul fast float %972, %334
  %990 = fmul fast float %974, %334
  %991 = fmul fast float %967, %334
  %992 = fmul fast float %976, %334
  %993 = fmul fast float %978, %334
  %994 = fmul fast float %980, %334
  %995 = fmul fast float %968, %334
  %996 = fmul fast float %982, %334
  %997 = fmul fast float %984, %334
  %998 = fmul fast float %986, %334
  %999 = fsub fast float %321, %966
  %1000 = fadd fast float %999, %987
  %1001 = fsub fast float %322, %970
  %1002 = fadd fast float %1001, %988
  %1003 = fsub fast float %323, %972
  %1004 = fadd fast float %1003, %989
  %1005 = fsub fast float %324, %974
  %1006 = fadd fast float %1005, %990
  %1007 = fmul fast float %1000, %374
  %1008 = fmul fast float %1002, %374
  %1009 = fmul fast float %1004, %374
  %1010 = fmul fast float %1006, %374
  %1011 = fadd fast float %1007, %966
  %1012 = fadd fast float %1008, %970
  %1013 = fadd fast float %1009, %972
  %1014 = fadd fast float %1010, %974
  %1015 = fsub fast float %325, %967
  %1016 = fadd fast float %1015, %991
  %1017 = fsub fast float %326, %976
  %1018 = fadd fast float %1017, %992
  %1019 = fsub fast float %327, %978
  %1020 = fadd fast float %1019, %993
  %1021 = fsub fast float %328, %980
  %1022 = fadd fast float %1021, %994
  %1023 = fmul fast float %1016, %374
  %1024 = fmul fast float %1018, %374
  %1025 = fmul fast float %1020, %374
  %1026 = fmul fast float %1022, %374
  %1027 = fadd fast float %1023, %967
  %1028 = fadd fast float %1024, %976
  %1029 = fadd fast float %1025, %978
  %1030 = fadd fast float %1026, %980
  %1031 = fsub fast float %329, %968
  %1032 = fadd fast float %1031, %995
  %1033 = fsub fast float %330, %982
  %1034 = fadd fast float %1033, %996
  %1035 = fsub fast float %331, %984
  %1036 = fadd fast float %1035, %997
  %1037 = fsub fast float %332, %986
  %1038 = fadd fast float %1037, %998
  %1039 = fmul fast float %1032, %374
  %1040 = fmul fast float %1034, %374
  %1041 = fmul fast float %1036, %374
  %1042 = fmul fast float %1038, %374
  %1043 = fadd fast float %1039, %968
  %1044 = fadd fast float %1040, %982
  %1045 = fadd fast float %1041, %984
  %1046 = fadd fast float %1042, %986
  br label %1047

; <label>:1047                                    ; preds = %952, %373
  %1048 = phi float [ %1011, %952 ], [ %321, %373 ]
  %1049 = phi float [ %1012, %952 ], [ %322, %373 ]
  %1050 = phi float [ %1013, %952 ], [ %323, %373 ]
  %1051 = phi float [ %1014, %952 ], [ %324, %373 ]
  %1052 = phi float [ %1027, %952 ], [ %325, %373 ]
  %1053 = phi float [ %1028, %952 ], [ %326, %373 ]
  %1054 = phi float [ %1029, %952 ], [ %327, %373 ]
  %1055 = phi float [ %1030, %952 ], [ %328, %373 ]
  %1056 = phi float [ %1043, %952 ], [ %329, %373 ]
  %1057 = phi float [ %1044, %952 ], [ %330, %373 ]
  %1058 = phi float [ %1045, %952 ], [ %331, %373 ]
  %1059 = phi float [ %1046, %952 ], [ %332, %373 ]
  %1060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1061 = extractvalue %dx.types.CBufRet.f32 %1060, 3
  %1062 = fmul fast float %1061, %1048
  %1063 = fmul fast float %1061, %1049
  %1064 = fmul fast float %1061, %1050
  %1065 = fmul fast float %1061, %1051
  %1066 = extractvalue %dx.types.CBufRet.f32 %1060, 0
  %1067 = fmul fast float %1062, %1066
  %1068 = fmul fast float %1063, %1066
  %1069 = fmul fast float %1064, %1066
  %1070 = fmul fast float %1065, %1066
  %1071 = fmul fast float %1061, %1052
  %1072 = fmul fast float %1061, %1053
  %1073 = fmul fast float %1061, %1054
  %1074 = fmul fast float %1061, %1055
  %1075 = fmul fast float %1071, %1066
  %1076 = fmul fast float %1072, %1066
  %1077 = fmul fast float %1073, %1066
  %1078 = fmul fast float %1074, %1066
  %1079 = fmul fast float %1061, %1056
  %1080 = fmul fast float %1061, %1057
  %1081 = fmul fast float %1061, %1058
  %1082 = fmul fast float %1061, %1059
  %1083 = fmul fast float %1079, %1066
  %1084 = fmul fast float %1080, %1066
  %1085 = fmul fast float %1081, %1066
  %1086 = fmul fast float %1082, %1066
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %155, i32 %156, i32 0, float %1067, float %1068, float %1069, float %1070, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %155, i32 %156, i32 1, float %1075, float %1076, float %1077, float %1078, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %155, i32 %156, i32 2, float %1083, float %1084, float %1085, float %1086, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1087 = add i32 %156, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %155, i32 %1087, i32 0, float %1067, float %1068, float %1069, float %1070, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %155, i32 %1087, i32 1, float %1075, float %1076, float %1077, float %1078, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %155, i32 %1087, i32 2, float %1083, float %1084, float %1085, float %1086, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1088 = add i32 %155, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1088, i32 %156, i32 0, float %1067, float %1068, float %1069, float %1070, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1088, i32 %156, i32 1, float %1075, float %1076, float %1077, float %1078, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1088, i32 %156, i32 2, float %1083, float %1084, float %1085, float %1086, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1088, i32 %1087, i32 0, float %1067, float %1068, float %1069, float %1070, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1088, i32 %1087, i32 1, float %1075, float %1076, float %1077, float %1078, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1088, i32 %1087, i32 2, float %1083, float %1084, float %1085, float %1086, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1089

; <label>:1089                                    ; preds = %1047, %0
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
!29 = !{void ()* @cs_del_sh_combine_multilightgrid_8_lowres, !"cs_del_sh_combine_multilightgrid_8_lowres", null, !4, !30}
!30 = !{i32 0, i64 272, i32 4, !31}
!31 = !{i32 4, i32 4, i32 4}
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

