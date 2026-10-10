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
; shader hash: 56d46fe40dd52574d4ec26fc0fdc647f
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

define void @cs_del_sh_combine_multilightgrid_4() {
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
  br i1 %25, label %26, label %997, !dx.controlflow.hints !32

; <label>:26                                      ; preds = %0
  %27 = add i32 %22, 3
  %28 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 %27)  ; CBufferLoadLegacy(handle,regIndex)
  %29 = extractvalue %dx.types.CBufRet.i32 %28, 2
  %30 = add i32 %29, %18
  %31 = shl i32 %30, 5
  %32 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %31, i32 undef)  ; BufferLoad(srv,index,wot)
  %33 = extractvalue %dx.types.ResRet.i32 %32, 0
  %34 = extractvalue %dx.types.ResRet.i32 %32, 1
  %35 = extractvalue %dx.types.ResRet.i32 %32, 2
  %36 = extractvalue %dx.types.ResRet.i32 %32, 3
  %37 = lshr i32 %36, 14
  %38 = and i32 %37, 16383
  %39 = and i32 %36, 16383
  %40 = bitcast i32 %33 to float
  %41 = bitcast i32 %34 to float
  %42 = bitcast i32 %35 to float
  %43 = and i32 %36, 536870912
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %84, label %45, !dx.controlflow.hints !33

; <label>:45                                      ; preds = %26
  %46 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %47 = extractvalue %dx.types.CBufRet.f32 %46, 2
  %48 = extractvalue %dx.types.CBufRet.f32 %46, 3
  %49 = fmul fast float %47, %40
  %50 = fmul fast float %48, %41
  %51 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %52 = extractvalue %dx.types.CBufRet.f32 %51, 0
  %53 = extractvalue %dx.types.CBufRet.f32 %51, 1
  %54 = fadd fast float %49, %52
  %55 = fadd fast float %50, %53
  %56 = call float @dx.op.unary.f32(i32 7, float %54)  ; Saturate(value)
  %57 = call float @dx.op.unary.f32(i32 7, float %55)  ; Saturate(value)
  %58 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %15, float %56, float %57, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %59 = extractvalue %dx.types.ResRet.f32 %58, 0
  %60 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %61 = extractvalue %dx.types.CBufRet.f32 %60, 0
  %62 = fmul fast float %61, %59
  %63 = fsub fast float %54, %56
  %64 = fsub fast float %55, %57
  %65 = extractvalue %dx.types.CBufRet.f32 %46, 0
  %66 = extractvalue %dx.types.CBufRet.f32 %46, 1
  %67 = fmul fast float %65, %63
  %68 = fmul fast float %66, %64
  %69 = fmul fast float %67, %67
  %70 = fmul fast float %68, %68
  %71 = fadd fast float %69, %70
  %72 = call float @dx.op.unary.f32(i32 24, float %71)  ; Sqrt(value)
  %73 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %74 = extractvalue %dx.types.CBufRet.f32 %73, 3
  %75 = fmul fast float %74, %72
  %76 = call float @dx.op.unary.f32(i32 7, float %75)  ; Saturate(value)
  %77 = extractvalue %dx.types.CBufRet.f32 %73, 2
  %78 = fsub fast float %77, %62
  %79 = fmul fast float %78, %76
  %80 = extractvalue %dx.types.CBufRet.f32 %60, 1
  %81 = fadd fast float %62, %42
  %82 = fadd fast float %81, %80
  %83 = fadd fast float %82, %79
  br label %84

; <label>:84                                      ; preds = %45, %26
  %85 = phi float [ %83, %45 ], [ %42, %26 ]
  %86 = and i32 %36, 268435456
  %87 = icmp eq i32 %86, 0
  %88 = or i32 %31, 16
  %89 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %88, i32 undef)  ; BufferLoad(srv,index,wot)
  %90 = extractvalue %dx.types.ResRet.i32 %89, 0
  %91 = extractvalue %dx.types.ResRet.i32 %89, 1
  %92 = extractvalue %dx.types.ResRet.i32 %89, 2
  %93 = extractvalue %dx.types.ResRet.i32 %89, 3
  %94 = and i32 %90, 65535
  %95 = call float @dx.op.legacyF16ToF32(i32 131, i32 %94)  ; LegacyF16ToF32(value)
  %96 = lshr i32 %90, 16
  %97 = call float @dx.op.legacyF16ToF32(i32 131, i32 %96)  ; LegacyF16ToF32(value)
  %98 = and i32 %91, 1023
  %99 = uitofp i32 %98 to float
  %100 = lshr i32 %91, 10
  %101 = and i32 %100, 1023
  %102 = uitofp i32 %101 to float
  %103 = lshr i32 %91, 20
  %104 = and i32 %103, 1023
  %105 = uitofp i32 %104 to float
  %106 = fmul fast float %99, 0x3F60040100000000
  %107 = fmul fast float %102, 0x3F60040100000000
  %108 = fmul fast float %105, 0x3F60040100000000
  %109 = fadd fast float %106, -1.000000e+00
  %110 = fadd fast float %107, -1.000000e+00
  %111 = fadd fast float %108, -1.000000e+00
  %112 = and i32 %92, 1023
  %113 = uitofp i32 %112 to float
  %114 = lshr i32 %92, 10
  %115 = and i32 %114, 1023
  %116 = uitofp i32 %115 to float
  %117 = lshr i32 %92, 20
  %118 = and i32 %117, 1023
  %119 = uitofp i32 %118 to float
  %120 = fmul fast float %113, 0x3F60040100000000
  %121 = fmul fast float %116, 0x3F60040100000000
  %122 = fmul fast float %119, 0x3F60040100000000
  %123 = fadd fast float %120, -1.000000e+00
  %124 = fadd fast float %121, -1.000000e+00
  %125 = fadd fast float %122, -1.000000e+00
  %126 = and i32 %93, 65535
  %127 = call float @dx.op.legacyF16ToF32(i32 131, i32 %126)  ; LegacyF16ToF32(value)
  %128 = lshr i32 %93, 16
  %129 = call float @dx.op.legacyF16ToF32(i32 131, i32 %128)  ; LegacyF16ToF32(value)
  %130 = call float @dx.op.unary.f32(i32 13, float %127)  ; Sin(value)
  %131 = call float @dx.op.unary.f32(i32 12, float %127)  ; Cos(value)
  %132 = fmul fast float %131, %109
  %133 = fmul fast float %131, %110
  %134 = fmul fast float %131, %111
  %135 = fmul fast float %130, %123
  %136 = fmul fast float %124, %130
  %137 = fmul fast float %125, %130
  %138 = fadd fast float %132, %135
  %139 = fadd fast float %133, %136
  %140 = fadd fast float %134, %137
  %141 = fmul fast float %138, %95
  %142 = fmul fast float %139, %95
  %143 = fmul fast float %140, %95
  %144 = fmul fast float %130, %109
  %145 = fmul fast float %110, %130
  %146 = fmul fast float %111, %130
  %147 = fmul fast float %131, %123
  %148 = fmul fast float %131, %124
  %149 = fmul fast float %131, %125
  %150 = fsub fast float %144, %147
  %151 = fsub fast float %145, %148
  %152 = fsub fast float %146, %149
  %153 = fmul fast float %150, %97
  %154 = fmul fast float %151, %97
  %155 = fmul fast float %152, %97
  %156 = add i32 %38, %19
  %157 = add i32 %39, %20
  %158 = uitofp i32 %19 to float
  %159 = uitofp i32 %20 to float
  %160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %161 = extractvalue %dx.types.CBufRet.f32 %160, 1
  %162 = fdiv fast float %158, %161
  %163 = fdiv fast float %159, %161
  %164 = extractvalue %dx.types.CBufRet.f32 %160, 2
  %165 = fadd fast float %164, %162
  %166 = fadd fast float %164, %163
  %167 = fmul fast float %165, %141
  %168 = fmul fast float %165, %142
  %169 = fmul fast float %165, %143
  %170 = fmul fast float %166, %153
  %171 = fmul fast float %166, %154
  %172 = fmul fast float %166, %155
  %173 = fadd fast float %170, %167
  %174 = fmul fast float %173, 2.000000e+00
  %175 = fsub fast float %40, %141
  %176 = fsub fast float %175, %153
  %177 = fadd fast float %176, %174
  %178 = fadd fast float %171, %168
  %179 = fmul fast float %178, 2.000000e+00
  %180 = fsub fast float %41, %142
  %181 = fsub fast float %180, %154
  %182 = fadd fast float %181, %179
  %183 = fadd fast float %172, %169
  %184 = fmul fast float %183, 2.000000e+00
  %185 = fsub fast float %85, %143
  %186 = fsub fast float %185, %155
  %187 = fadd fast float %186, %184
  %188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %189 = extractvalue %dx.types.CBufRet.f32 %188, 0
  %190 = extractvalue %dx.types.CBufRet.f32 %188, 1
  %191 = extractvalue %dx.types.CBufRet.f32 %188, 2
  %192 = fsub fast float %177, %189
  %193 = fsub fast float %182, %190
  %194 = fsub fast float %187, %191
  %195 = call float @dx.op.dot3.f32(i32 55, float %192, float %193, float %194, float %192, float %193, float %194)  ; Dot3(ax,ay,az,bx,by,bz)
  %196 = call float @dx.op.unary.f32(i32 25, float %195)  ; Rsqrt(value)
  %197 = fmul fast float %192, %196
  %198 = fmul fast float %193, %196
  %199 = fmul fast float %194, %196
  %200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %30, i32 0)  ; BufferLoad(srv,index,wot)
  %201 = extractvalue %dx.types.ResRet.i32 %200, 0
  %202 = and i32 %22, 31
  %203 = shl i32 1, %202
  %204 = shl i32 %203, %202
  %205 = shl i32 %20, %202
  %206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %30, i32 0)  ; BufferLoad(srv,index,wot)
  %207 = extractvalue %dx.types.ResRet.i32 %206, 0
  %208 = extractvalue %dx.types.CBufRet.i32 %21, 1
  %209 = icmp ne i32 %208, 0
  %210 = icmp ne i32 %207, 262144
  %211 = and i1 %210, %209
  %212 = icmp ne i32 %201, 0
  %213 = and i1 %212, %211
  br i1 %213, label %214, label %245, !dx.controlflow.hints !34

; <label>:214                                     ; preds = %84
  br label %215

; <label>:215                                     ; preds = %215, %214
  %216 = phi i32 [ %241, %215 ], [ %201, %214 ]
  %217 = phi float [ %239, %215 ], [ 0.000000e+00, %214 ]
  %218 = phi float [ %236, %215 ], [ 0.000000e+00, %214 ]
  %219 = phi float [ %237, %215 ], [ 0.000000e+00, %214 ]
  %220 = phi float [ %238, %215 ], [ 0.000000e+00, %214 ]
  %221 = phi i32 [ %242, %215 ], [ 0, %214 ]
  %222 = mul i32 %221, %204
  %223 = add i32 %205, %19
  %224 = add i32 %223, %207
  %225 = add i32 %224, %222
  %226 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %225, i32 undef)  ; BufferLoad(srv,index,wot)
  %227 = extractvalue %dx.types.ResRet.f32 %226, 0
  %228 = extractvalue %dx.types.ResRet.f32 %226, 1
  %229 = extractvalue %dx.types.ResRet.f32 %226, 2
  %230 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %225, i32 undef)  ; BufferLoad(srv,index,wot)
  %231 = extractvalue %dx.types.ResRet.f32 %230, 0
  %232 = fmul fast float %231, %231
  %233 = fmul fast float %232, %227
  %234 = fmul fast float %232, %228
  %235 = fmul fast float %232, %229
  %236 = fadd fast float %233, %218
  %237 = fadd fast float %234, %219
  %238 = fadd fast float %235, %220
  %239 = fadd fast float %232, %217
  %240 = add i32 %216, -1
  %241 = and i32 %240, %216
  %242 = add i32 %221, 1
  %243 = icmp eq i32 %241, 0
  br i1 %243, label %244, label %215

; <label>:244                                     ; preds = %215
  br label %245

; <label>:245                                     ; preds = %244, %84
  %246 = phi float [ 0.000000e+00, %84 ], [ %239, %244 ]
  %247 = phi float [ 0.000000e+00, %84 ], [ %236, %244 ]
  %248 = phi float [ 0.000000e+00, %84 ], [ %237, %244 ]
  %249 = phi float [ 0.000000e+00, %84 ], [ %238, %244 ]
  %250 = fcmp fast ogt float %246, 0.000000e+00
  %251 = fcmp fast une float %246, 1.000000e+00
  %252 = and i1 %250, %251
  br i1 %252, label %253, label %258, !dx.controlflow.hints !35

; <label>:253                                     ; preds = %245
  %254 = fdiv fast float 1.000000e+00, %246
  %255 = fmul fast float %254, %247
  %256 = fmul fast float %254, %248
  %257 = fmul fast float %254, %249
  br label %258

; <label>:258                                     ; preds = %253, %245
  %259 = phi float [ 1.000000e+00, %253 ], [ %246, %245 ]
  %260 = phi float [ %255, %253 ], [ %247, %245 ]
  %261 = phi float [ %256, %253 ], [ %248, %245 ]
  %262 = phi float [ %257, %253 ], [ %249, %245 ]
  %263 = call float @dx.op.unary.f32(i32 7, float %259)  ; Saturate(value)
  %264 = fsub fast float 1.000000e+00, %263
  %265 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %266 = extractvalue %dx.types.CBufRet.i32 %265, 0
  %267 = icmp eq i32 %266, 1
  br i1 %267, label %268, label %298, !dx.controlflow.hints !36

; <label>:268                                     ; preds = %258
  %269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %270 = extractvalue %dx.types.CBufRet.f32 %269, 0
  %271 = extractvalue %dx.types.CBufRet.f32 %269, 1
  %272 = fsub fast float %177, %270
  %273 = fsub fast float %182, %271
  %274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %275 = extractvalue %dx.types.CBufRet.f32 %274, 0
  %276 = extractvalue %dx.types.CBufRet.f32 %274, 1
  %277 = fmul fast float %272, %275
  %278 = fmul fast float %273, %276
  %279 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %15, float %277, float %278, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %280 = extractvalue %dx.types.ResRet.f32 %279, 0
  %281 = fcmp fast ogt float %280, 0.000000e+00
  %282 = extractvalue %dx.types.CBufRet.i32 %265, 3
  %283 = icmp ne i32 %282, 0
  %284 = and i1 %281, %283
  br i1 %284, label %285, label %298, !dx.controlflow.hints !37

; <label>:285                                     ; preds = %268
  %286 = fmul fast float %192, %192
  %287 = fmul fast float %193, %193
  %288 = fadd fast float %286, %287
  %289 = uitofp i32 %282 to float
  %290 = fmul fast float %289, %289
  %291 = fcmp fast ogt float %288, %290
  br i1 %291, label %298, label %292, !dx.controlflow.hints !38

; <label>:292                                     ; preds = %285
  %293 = call float @dx.op.unary.f32(i32 24, float %288)  ; Sqrt(value)
  %294 = fsub fast float %289, %293
  %295 = fmul fast float %294, 0x3F75555560000000
  %296 = call float @dx.op.unary.f32(i32 7, float %295)  ; Saturate(value)
  %297 = call float @dx.op.binary.f32(i32 36, float %296, float %280)  ; FMin(a,b)
  br label %298

; <label>:298                                     ; preds = %292, %285, %268, %258
  %299 = phi float [ 1.000000e+00, %258 ], [ %297, %292 ], [ %280, %268 ], [ 0.000000e+00, %285 ]
  %300 = fcmp fast ogt float %264, 0.000000e+00
  %301 = fcmp fast olt float %299, 1.000000e+00
  %302 = or i1 %300, %301
  br i1 %302, label %303, label %984, !dx.controlflow.hints !39

; <label>:303                                     ; preds = %298
  %304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %305 = extractvalue %dx.types.CBufRet.f32 %304, 0
  %306 = extractvalue %dx.types.CBufRet.f32 %304, 1
  %307 = fsub fast float %177, %305
  %308 = fsub fast float %182, %306
  %309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %310 = extractvalue %dx.types.CBufRet.f32 %309, 0
  %311 = extractvalue %dx.types.CBufRet.f32 %309, 1
  %312 = fmul fast float %307, %310
  %313 = fmul fast float %308, %311
  %314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %315 = extractvalue %dx.types.CBufRet.f32 %314, 0
  %316 = fmul fast float %315, %312
  %317 = extractvalue %dx.types.CBufRet.f32 %314, 1
  %318 = fadd fast float %316, %317
  %319 = extractvalue %dx.types.CBufRet.f32 %314, 2
  %320 = fmul fast float %319, %313
  %321 = extractvalue %dx.types.CBufRet.f32 %314, 3
  %322 = fadd fast float %320, %321
  %323 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %15, float %318, float %322, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %324 = extractvalue %dx.types.ResRet.f32 %323, 0
  %325 = extractvalue %dx.types.ResRet.f32 %323, 1
  %326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %327 = extractvalue %dx.types.CBufRet.f32 %326, 1
  %328 = extractvalue %dx.types.CBufRet.f32 %326, 0
  %329 = fsub fast float %327, %328
  %330 = fmul fast float %329, %324
  %331 = fadd fast float %330, %328
  %332 = extractvalue %dx.types.CBufRet.f32 %326, 3
  %333 = extractvalue %dx.types.CBufRet.f32 %326, 2
  %334 = fsub fast float %332, %333
  %335 = fmul fast float %334, %325
  %336 = fadd fast float %335, %333
  %337 = fsub fast float %187, %331
  %338 = fsub fast float %336, %331
  %339 = fdiv fast float %337, %338
  %340 = call float @dx.op.unary.f32(i32 7, float %339)  ; Saturate(value)
  %341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %342 = extractvalue %dx.types.CBufRet.f32 %341, 0
  %343 = fmul fast float %342, %340
  %344 = extractvalue %dx.types.CBufRet.f32 %341, 1
  %345 = fadd fast float %343, %344
  %346 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %15, float %318, float %322, float %345, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %347 = extractvalue %dx.types.ResRet.f32 %346, 0
  %348 = extractvalue %dx.types.ResRet.f32 %346, 1
  %349 = extractvalue %dx.types.ResRet.f32 %346, 2
  %350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %351 = extractvalue %dx.types.CBufRet.f32 %350, 0
  %352 = extractvalue %dx.types.CBufRet.f32 %350, 1
  %353 = extractvalue %dx.types.CBufRet.f32 %350, 2
  %354 = fmul fast float %351, %347
  %355 = fmul fast float %352, %348
  %356 = fmul fast float %353, %349
  %357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %358 = extractvalue %dx.types.CBufRet.f32 %357, 0
  %359 = extractvalue %dx.types.CBufRet.f32 %357, 1
  %360 = extractvalue %dx.types.CBufRet.f32 %357, 2
  %361 = fadd fast float %354, %358
  %362 = fadd fast float %355, %359
  %363 = fadd fast float %356, %360
  %364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %365 = extractvalue %dx.types.CBufRet.f32 %364, 0
  %366 = fmul fast float %365, %312
  %367 = extractvalue %dx.types.CBufRet.f32 %364, 1
  %368 = fadd fast float %366, %367
  %369 = extractvalue %dx.types.CBufRet.f32 %364, 2
  %370 = fmul fast float %369, %313
  %371 = extractvalue %dx.types.CBufRet.f32 %364, 3
  %372 = fadd fast float %370, %371
  %373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %374 = extractvalue %dx.types.CBufRet.f32 %373, 0
  %375 = extractvalue %dx.types.CBufRet.f32 %373, 1
  %376 = extractvalue %dx.types.CBufRet.f32 %373, 2
  %377 = extractvalue %dx.types.CBufRet.f32 %373, 3
  %378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %379 = extractvalue %dx.types.CBufRet.f32 %378, 0
  %380 = extractvalue %dx.types.CBufRet.f32 %378, 1
  %381 = extractvalue %dx.types.CBufRet.f32 %378, 2
  %382 = extractvalue %dx.types.CBufRet.f32 %378, 3
  %383 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %15, float %368, float %372, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %384 = extractvalue %dx.types.ResRet.f32 %383, 0
  %385 = extractvalue %dx.types.ResRet.f32 %383, 1
  %386 = extractvalue %dx.types.ResRet.f32 %383, 2
  %387 = extractvalue %dx.types.ResRet.f32 %383, 3
  %388 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %15, float %368, float %372, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %389 = extractvalue %dx.types.ResRet.f32 %388, 0
  %390 = extractvalue %dx.types.ResRet.f32 %388, 1
  %391 = extractvalue %dx.types.ResRet.f32 %388, 2
  %392 = extractvalue %dx.types.ResRet.f32 %388, 3
  %393 = fmul fast float %384, %361
  %394 = fmul fast float %389, %361
  %395 = fmul fast float %391, %361
  %396 = fmul fast float %387, %361
  %397 = fadd fast float %393, %374
  %398 = fadd fast float %394, %375
  %399 = fadd fast float %395, %376
  %400 = fadd fast float %396, %377
  %401 = fmul fast float %385, %361
  %402 = fmul fast float %390, %361
  %403 = fadd fast float %401, %379
  %404 = fadd fast float %402, %380
  %405 = fmul fast float %386, %361
  %406 = fmul fast float %392, %361
  %407 = fadd fast float %405, %381
  %408 = fadd fast float %406, %382
  %409 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %15, float %368, float %372, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %410 = extractvalue %dx.types.ResRet.f32 %409, 0
  %411 = extractvalue %dx.types.ResRet.f32 %409, 1
  %412 = extractvalue %dx.types.ResRet.f32 %409, 2
  %413 = extractvalue %dx.types.ResRet.f32 %409, 3
  %414 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %15, float %368, float %372, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %415 = extractvalue %dx.types.ResRet.f32 %414, 0
  %416 = extractvalue %dx.types.ResRet.f32 %414, 1
  %417 = extractvalue %dx.types.ResRet.f32 %414, 2
  %418 = extractvalue %dx.types.ResRet.f32 %414, 3
  %419 = fmul fast float %410, %362
  %420 = fmul fast float %415, %362
  %421 = fmul fast float %417, %362
  %422 = fmul fast float %413, %362
  %423 = fadd fast float %397, %419
  %424 = fadd fast float %398, %420
  %425 = fadd fast float %399, %421
  %426 = fadd fast float %400, %422
  %427 = fmul fast float %411, %362
  %428 = fmul fast float %416, %362
  %429 = fadd fast float %403, %427
  %430 = fadd fast float %404, %428
  %431 = fmul fast float %412, %362
  %432 = fmul fast float %418, %362
  %433 = fadd fast float %407, %431
  %434 = fadd fast float %408, %432
  %435 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %15, float %368, float %372, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %436 = extractvalue %dx.types.ResRet.f32 %435, 0
  %437 = extractvalue %dx.types.ResRet.f32 %435, 1
  %438 = extractvalue %dx.types.ResRet.f32 %435, 2
  %439 = extractvalue %dx.types.ResRet.f32 %435, 3
  %440 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %15, float %368, float %372, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %441 = extractvalue %dx.types.ResRet.f32 %440, 0
  %442 = extractvalue %dx.types.ResRet.f32 %440, 1
  %443 = extractvalue %dx.types.ResRet.f32 %440, 2
  %444 = extractvalue %dx.types.ResRet.f32 %440, 3
  %445 = fmul fast float %436, %363
  %446 = fmul fast float %441, %363
  %447 = fmul fast float %443, %363
  %448 = fmul fast float %439, %363
  %449 = fadd fast float %423, %445
  %450 = fadd fast float %424, %446
  %451 = fadd fast float %425, %447
  %452 = fadd fast float %426, %448
  %453 = fmul fast float %437, %363
  %454 = fmul fast float %442, %363
  %455 = fadd fast float %429, %453
  %456 = fadd fast float %430, %454
  %457 = fmul fast float %438, %363
  %458 = fmul fast float %444, %363
  %459 = fadd fast float %433, %457
  %460 = fadd fast float %434, %458
  %461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %462 = extractvalue %dx.types.CBufRet.f32 %461, 0
  %463 = fsub fast float %177, %462
  %464 = fsub fast float %305, %177
  %465 = call float @dx.op.binary.f32(i32 35, float %464, float %463)  ; FMax(a,b)
  %466 = extractvalue %dx.types.CBufRet.f32 %461, 1
  %467 = fsub fast float %182, %466
  %468 = fsub fast float %306, %182
  %469 = call float @dx.op.binary.f32(i32 35, float %468, float %467)  ; FMax(a,b)
  %470 = call float @dx.op.binary.f32(i32 35, float %465, float %469)  ; FMax(a,b)
  %471 = extractvalue %dx.types.CBufRet.f32 %309, 3
  %472 = fmul fast float %471, %470
  %473 = call float @dx.op.unary.f32(i32 7, float %472)  ; Saturate(value)
  %474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %475 = extractvalue %dx.types.CBufRet.f32 %474, 0
  %476 = extractvalue %dx.types.CBufRet.f32 %474, 1
  %477 = extractvalue %dx.types.CBufRet.f32 %474, 2
  %478 = extractvalue %dx.types.CBufRet.f32 %474, 3
  %479 = fsub fast float %475, %449
  %480 = fsub fast float %476, %450
  %481 = fsub fast float %477, %451
  %482 = fsub fast float %478, %452
  %483 = fmul fast float %479, %473
  %484 = fmul fast float %480, %473
  %485 = fmul fast float %481, %473
  %486 = fmul fast float %482, %473
  %487 = fadd fast float %483, %449
  %488 = fadd fast float %484, %450
  %489 = fadd fast float %485, %451
  %490 = fadd fast float %486, %452
  %491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %492 = extractvalue %dx.types.CBufRet.f32 %491, 0
  %493 = extractvalue %dx.types.CBufRet.f32 %491, 1
  %494 = fsub fast float %492, %455
  %495 = fsub fast float %493, %456
  %496 = fmul fast float %494, %473
  %497 = fmul fast float %495, %473
  %498 = fadd fast float %496, %455
  %499 = fadd fast float %497, %456
  %500 = extractvalue %dx.types.CBufRet.f32 %491, 2
  %501 = extractvalue %dx.types.CBufRet.f32 %491, 3
  %502 = fsub fast float %500, %459
  %503 = fsub fast float %501, %460
  %504 = fmul fast float %502, %473
  %505 = fmul fast float %503, %473
  %506 = fadd fast float %504, %459
  %507 = fadd fast float %505, %460
  %508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %509 = extractvalue %dx.types.CBufRet.f32 %508, 0
  %510 = fmul fast float %509, %487
  %511 = fmul fast float %509, %488
  %512 = fmul fast float %509, %489
  %513 = fmul fast float %509, %490
  %514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %515 = extractvalue %dx.types.CBufRet.f32 %514, 0
  %516 = fmul fast float %515, %498
  %517 = fmul fast float %515, %499
  %518 = fadd fast float %516, %510
  %519 = fadd fast float %517, %512
  %520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %521 = extractvalue %dx.types.CBufRet.f32 %520, 0
  %522 = fmul fast float %521, %506
  %523 = fmul fast float %521, %507
  %524 = fadd fast float %518, %522
  %525 = fadd fast float %519, %523
  %526 = extractvalue %dx.types.CBufRet.f32 %508, 1
  %527 = fmul fast float %526, %487
  %528 = fmul fast float %526, %488
  %529 = fmul fast float %526, %489
  %530 = fmul fast float %526, %490
  %531 = extractvalue %dx.types.CBufRet.f32 %514, 1
  %532 = fmul fast float %531, %498
  %533 = fmul fast float %531, %499
  %534 = fadd fast float %532, %527
  %535 = fadd fast float %533, %529
  %536 = extractvalue %dx.types.CBufRet.f32 %520, 1
  %537 = fmul fast float %536, %506
  %538 = fmul fast float %536, %507
  %539 = fadd fast float %534, %537
  %540 = fadd fast float %535, %538
  %541 = extractvalue %dx.types.CBufRet.f32 %508, 2
  %542 = fmul fast float %541, %487
  %543 = fmul fast float %541, %488
  %544 = fmul fast float %541, %489
  %545 = fmul fast float %541, %490
  %546 = extractvalue %dx.types.CBufRet.f32 %514, 2
  %547 = fmul fast float %546, %498
  %548 = fmul fast float %546, %499
  %549 = fadd fast float %547, %542
  %550 = fadd fast float %548, %544
  %551 = extractvalue %dx.types.CBufRet.f32 %520, 2
  %552 = fmul fast float %551, %506
  %553 = fmul fast float %551, %507
  %554 = fadd fast float %549, %552
  %555 = fadd fast float %550, %553
  %556 = fmul fast float %543, %543
  %557 = fmul fast float %555, %555
  %558 = fmul fast float %545, %545
  %559 = fadd fast float %558, %556
  %560 = fadd fast float %559, %557
  %561 = call float @dx.op.unary.f32(i32 24, float %560)  ; Sqrt(value)
  %562 = fcmp fast ugt float %561, 0.000000e+00
  br i1 %562, label %563, label %578, !dx.controlflow.hints !40

; <label>:563                                     ; preds = %303
  %564 = fsub fast float -0.000000e+00, %545
  %565 = fdiv fast float %564, %561
  %566 = fsub fast float -0.000000e+00, %543
  %567 = fdiv fast float %566, %561
  %568 = fdiv fast float %555, %561
  %569 = fmul fast float %554, 0x3FE279A760000000
  %570 = fmul fast float %567, %543
  %571 = fmul fast float %568, %555
  %572 = fmul fast float %565, %545
  %573 = fadd fast float %570, %572
  %574 = fsub fast float %573, %571
  %575 = call float @dx.op.unary.f32(i32 6, float %574)  ; FAbs(value)
  %576 = fadd fast float %575, 0x3DDB7CDFE0000000
  %577 = fdiv fast float %569, %576
  br label %578

; <label>:578                                     ; preds = %563, %303
  %579 = phi float [ %577, %563 ], [ 1.000000e+00, %303 ]
  %580 = fmul fast float %528, %528
  %581 = fmul fast float %540, %540
  %582 = fmul fast float %530, %530
  %583 = fadd fast float %582, %580
  %584 = fadd fast float %583, %581
  %585 = call float @dx.op.unary.f32(i32 24, float %584)  ; Sqrt(value)
  %586 = fcmp fast ugt float %585, 0.000000e+00
  br i1 %586, label %587, label %602, !dx.controlflow.hints !40

; <label>:587                                     ; preds = %578
  %588 = fsub fast float -0.000000e+00, %530
  %589 = fdiv fast float %588, %585
  %590 = fsub fast float -0.000000e+00, %528
  %591 = fdiv fast float %590, %585
  %592 = fdiv fast float %540, %585
  %593 = fmul fast float %539, 0x3FE279A760000000
  %594 = fmul fast float %591, %528
  %595 = fmul fast float %592, %540
  %596 = fmul fast float %589, %530
  %597 = fadd fast float %594, %596
  %598 = fsub fast float %597, %595
  %599 = call float @dx.op.unary.f32(i32 6, float %598)  ; FAbs(value)
  %600 = fadd fast float %599, 0x3DDB7CDFE0000000
  %601 = fdiv fast float %593, %600
  br label %602

; <label>:602                                     ; preds = %587, %578
  %603 = phi float [ %601, %587 ], [ 1.000000e+00, %578 ]
  %604 = call float @dx.op.binary.f32(i32 36, float %603, float %579)  ; FMin(a,b)
  %605 = fmul fast float %511, %511
  %606 = fmul fast float %525, %525
  %607 = fmul fast float %513, %513
  %608 = fadd fast float %607, %605
  %609 = fadd fast float %608, %606
  %610 = call float @dx.op.unary.f32(i32 24, float %609)  ; Sqrt(value)
  %611 = fcmp fast ugt float %610, 0.000000e+00
  br i1 %611, label %612, label %627, !dx.controlflow.hints !40

; <label>:612                                     ; preds = %602
  %613 = fsub fast float -0.000000e+00, %513
  %614 = fdiv fast float %613, %610
  %615 = fsub fast float -0.000000e+00, %511
  %616 = fdiv fast float %615, %610
  %617 = fdiv fast float %525, %610
  %618 = fmul fast float %524, 0x3FE279A760000000
  %619 = fmul fast float %616, %511
  %620 = fmul fast float %617, %525
  %621 = fmul fast float %614, %513
  %622 = fadd fast float %619, %621
  %623 = fsub fast float %622, %620
  %624 = call float @dx.op.unary.f32(i32 6, float %623)  ; FAbs(value)
  %625 = fadd fast float %624, 0x3DDB7CDFE0000000
  %626 = fdiv fast float %618, %625
  br label %627

; <label>:627                                     ; preds = %612, %602
  %628 = phi float [ %626, %612 ], [ 1.000000e+00, %602 ]
  %629 = call float @dx.op.binary.f32(i32 36, float %628, float %604)  ; FMin(a,b)
  %630 = call float @dx.op.unary.f32(i32 7, float %629)  ; Saturate(value)
  %631 = fcmp fast olt float %630, 1.000000e+00
  br i1 %631, label %632, label %642, !dx.controlflow.hints !41

; <label>:632                                     ; preds = %627
  %633 = fmul fast float %630, %511
  %634 = fmul fast float %630, %525
  %635 = fmul fast float %630, %513
  %636 = fmul fast float %630, %528
  %637 = fmul fast float %630, %540
  %638 = fmul fast float %630, %530
  %639 = fmul fast float %630, %543
  %640 = fmul fast float %630, %555
  %641 = fmul fast float %630, %545
  br label %642

; <label>:642                                     ; preds = %632, %627
  %643 = phi float [ %639, %632 ], [ %543, %627 ]
  %644 = phi float [ %640, %632 ], [ %555, %627 ]
  %645 = phi float [ %641, %632 ], [ %545, %627 ]
  %646 = phi float [ %636, %632 ], [ %528, %627 ]
  %647 = phi float [ %637, %632 ], [ %540, %627 ]
  %648 = phi float [ %638, %632 ], [ %530, %627 ]
  %649 = phi float [ %633, %632 ], [ %511, %627 ]
  %650 = phi float [ %634, %632 ], [ %525, %627 ]
  %651 = phi float [ %635, %632 ], [ %513, %627 ]
  %652 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %524)  ; FMax(a,b)
  %653 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %539)  ; FMax(a,b)
  %654 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %554)  ; FMax(a,b)
  %655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %656 = extractvalue %dx.types.CBufRet.f32 %655, 0
  %657 = fcmp fast ogt float %656, 0.000000e+00
  %658 = fcmp fast oge float %312, 0.000000e+00
  %659 = and i1 %658, %657
  %660 = fcmp fast ole float %312, 1.000000e+00
  %661 = and i1 %660, %659
  %662 = fcmp fast oge float %313, 0.000000e+00
  %663 = and i1 %662, %661
  %664 = fcmp fast ole float %313, 1.000000e+00
  %665 = and i1 %664, %663
  br i1 %665, label %666, label %806, !dx.controlflow.hints !42

; <label>:666                                     ; preds = %642
  %667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %668 = extractvalue %dx.types.CBufRet.f32 %667, 2
  %669 = extractvalue %dx.types.CBufRet.f32 %667, 3
  %670 = fmul fast float %668, %312
  %671 = fmul fast float %669, %313
  %672 = call float @dx.op.unary.f32(i32 27, float %670)  ; Round_ni(value)
  %673 = call float @dx.op.unary.f32(i32 27, float %671)  ; Round_ni(value)
  %674 = fptosi float %672 to i32
  %675 = fptosi float %673 to i32
  %676 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %674, i32 %675, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %677 = extractvalue %dx.types.ResRet.i32 %676, 0
  %678 = and i32 %677, 65535
  %679 = lshr i32 %677, 16
  %680 = icmp eq i32 %678, 65535
  br i1 %680, label %717, label %681, !dx.controlflow.hints !43

; <label>:681                                     ; preds = %666
  %682 = extractvalue %dx.types.CBufRet.f32 %655, 1
  %683 = extractvalue %dx.types.CBufRet.f32 %667, 0
  %684 = extractvalue %dx.types.CBufRet.f32 %667, 1
  %685 = fmul fast float %683, %312
  %686 = fmul fast float %684, %313
  %687 = fmul fast float %685, 1.250000e-01
  %688 = fmul fast float %686, 1.250000e-01
  %689 = call float @dx.op.unary.f32(i32 27, float %687)  ; Round_ni(value)
  %690 = call float @dx.op.unary.f32(i32 27, float %688)  ; Round_ni(value)
  %691 = fmul fast float %689, 8.000000e+00
  %692 = fmul fast float %690, 8.000000e+00
  %693 = and i32 %677, 255
  %694 = lshr i32 %677, 8
  %695 = and i32 %694, 255
  %696 = mul nuw nsw i32 %693, 9
  %697 = uitofp i32 %696 to float
  %698 = mul nuw nsw i32 %695, 9
  %699 = uitofp i32 %698 to float
  %700 = fadd fast float %697, 5.000000e-01
  %701 = fadd fast float %700, %685
  %702 = fsub fast float %701, %691
  %703 = fadd fast float %699, 5.000000e-01
  %704 = fadd fast float %703, %686
  %705 = fsub fast float %704, %692
  %706 = fdiv fast float %702, %656
  %707 = fdiv fast float %705, %682
  %708 = fmul fast float %340, 4.375000e-01
  %709 = fadd fast float %708, 3.125000e-02
  %710 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %15, float %706, float %707, float %709, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %711 = extractvalue %dx.types.ResRet.f32 %710, 0
  %712 = extractvalue %dx.types.ResRet.f32 %710, 1
  %713 = extractvalue %dx.types.ResRet.f32 %710, 2
  %714 = fadd fast float %711, %652
  %715 = fadd fast float %712, %653
  %716 = fadd fast float %713, %654
  br label %717

; <label>:717                                     ; preds = %681, %666
  %718 = phi float [ %716, %681 ], [ %654, %666 ]
  %719 = phi float [ %715, %681 ], [ %653, %666 ]
  %720 = phi float [ %714, %681 ], [ %652, %666 ]
  %721 = icmp eq i32 %679, 65535
  br i1 %721, label %806, label %722, !dx.controlflow.hints !44

; <label>:722                                     ; preds = %717
  %723 = extractvalue %dx.types.CBufRet.f32 %655, 1
  %724 = extractvalue %dx.types.CBufRet.f32 %667, 0
  %725 = extractvalue %dx.types.CBufRet.f32 %667, 1
  %726 = fmul fast float %724, %312
  %727 = fmul fast float %725, %313
  %728 = fmul fast float %726, 1.250000e-01
  %729 = fmul fast float %727, 1.250000e-01
  %730 = call float @dx.op.unary.f32(i32 27, float %728)  ; Round_ni(value)
  %731 = call float @dx.op.unary.f32(i32 27, float %729)  ; Round_ni(value)
  %732 = fmul fast float %730, 8.000000e+00
  %733 = fmul fast float %731, 8.000000e+00
  %734 = fsub fast float %726, %732
  %735 = fsub fast float %727, %733
  %736 = fadd fast float %734, 5.000000e-01
  %737 = fadd fast float %735, 5.000000e-01
  %738 = and i32 %679, 255
  %739 = lshr i32 %677, 24
  %740 = mul nuw nsw i32 %738, 9
  %741 = uitofp i32 %740 to float
  %742 = mul nuw nsw i32 %739, 9
  %743 = uitofp i32 %742 to float
  %744 = fadd fast float %736, %741
  %745 = fadd fast float %737, %743
  %746 = fdiv fast float %744, %656
  %747 = fdiv fast float %745, %723
  %748 = fmul fast float %340, 4.375000e-01
  %749 = fadd fast float %748, 3.125000e-02
  %750 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %15, float %746, float %747, float %749, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %751 = extractvalue %dx.types.ResRet.f32 %750, 0
  %752 = extractvalue %dx.types.ResRet.f32 %750, 1
  %753 = extractvalue %dx.types.ResRet.f32 %750, 2
  %754 = fadd fast float %748, 5.312500e-01
  %755 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %15, float %746, float %747, float %754, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %756 = extractvalue %dx.types.ResRet.f32 %755, 0
  %757 = extractvalue %dx.types.ResRet.f32 %755, 1
  %758 = extractvalue %dx.types.ResRet.f32 %755, 2
  %759 = fmul fast float %756, 2.000000e+00
  %760 = fmul fast float %757, 2.000000e+00
  %761 = fmul fast float %758, 2.000000e+00
  %762 = fadd fast float %759, -1.000000e+00
  %763 = fadd fast float %760, -1.000000e+00
  %764 = fadd fast float %761, -1.000000e+00
  %765 = fmul fast float %762, %762
  %766 = fmul fast float %763, %763
  %767 = fadd fast float %765, %766
  %768 = fmul fast float %764, %764
  %769 = fadd fast float %767, %768
  %770 = call float @dx.op.unary.f32(i32 24, float %769)  ; Sqrt(value)
  %771 = fcmp fast ogt float %770, 0.000000e+00
  br i1 %771, label %772, label %776, !dx.controlflow.hints !45

; <label>:772                                     ; preds = %722
  %773 = fdiv fast float %762, %770
  %774 = fdiv fast float %763, %770
  %775 = fdiv fast float %764, %770
  br label %776

; <label>:776                                     ; preds = %772, %722
  %777 = phi float [ %773, %772 ], [ 0.000000e+00, %722 ]
  %778 = phi float [ %774, %772 ], [ 0.000000e+00, %722 ]
  %779 = phi float [ %775, %772 ], [ 0.000000e+00, %722 ]
  %780 = fmul fast float %192, %192
  %781 = fmul fast float %193, %193
  %782 = fadd fast float %780, %781
  %783 = call float @dx.op.unary.f32(i32 24, float %782)  ; Sqrt(value)
  %784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %785 = extractvalue %dx.types.CBufRet.f32 %784, 0
  %786 = extractvalue %dx.types.CBufRet.f32 %784, 1
  %787 = fsub fast float %783, %785
  %788 = fdiv fast float %787, %786
  %789 = call float @dx.op.unary.f32(i32 7, float %788)  ; Saturate(value)
  %790 = fmul fast float %789, 2.000000e+00
  %791 = fsub fast float 3.000000e+00, %790
  %792 = fmul fast float %789, %789
  %793 = fmul fast float %792, %791
  %794 = call float @dx.op.dot3.f32(i32 55, float %777, float %778, float %779, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %795 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %794)  ; FMax(a,b)
  %796 = fmul fast float %795, 0x400C5BF8A0000000
  %797 = fmul fast float %793, %751
  %798 = fmul fast float %797, %796
  %799 = fadd fast float %798, %720
  %800 = fmul fast float %793, %752
  %801 = fmul fast float %800, %796
  %802 = fadd fast float %801, %719
  %803 = fmul fast float %793, %753
  %804 = fmul fast float %803, %796
  %805 = fadd fast float %804, %718
  br label %806

; <label>:806                                     ; preds = %776, %717, %642
  %807 = phi float [ %805, %776 ], [ %718, %717 ], [ %654, %642 ]
  %808 = phi float [ %802, %776 ], [ %719, %717 ], [ %653, %642 ]
  %809 = phi float [ %799, %776 ], [ %720, %717 ], [ %652, %642 ]
  %810 = fcmp fast ogt float %187, %336
  %811 = and i1 %658, %810
  %812 = and i1 %660, %811
  %813 = and i1 %662, %812
  %814 = and i1 %664, %813
  br i1 %814, label %815, label %872, !dx.controlflow.hints !46

; <label>:815                                     ; preds = %806
  %816 = fmul fast float %338, 0x3FC24924A0000000
  %817 = fsub fast float %187, %336
  %818 = fdiv fast float %817, %816
  %819 = call float @dx.op.unary.f32(i32 7, float %818)  ; Saturate(value)
  %820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %821 = extractvalue %dx.types.CBufRet.f32 %820, 0
  %822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %823 = extractvalue %dx.types.CBufRet.f32 %822, 0
  %824 = extractvalue %dx.types.CBufRet.f32 %822, 1
  %825 = extractvalue %dx.types.CBufRet.f32 %822, 2
  %826 = fsub fast float %821, %809
  %827 = fsub fast float %823, %649
  %828 = fsub fast float %824, %650
  %829 = fsub fast float %825, %651
  %830 = fmul fast float %826, %819
  %831 = fmul fast float %827, %819
  %832 = fmul fast float %828, %819
  %833 = fmul fast float %829, %819
  %834 = fadd fast float %830, %809
  %835 = fadd fast float %831, %649
  %836 = fadd fast float %832, %650
  %837 = fadd fast float %833, %651
  %838 = extractvalue %dx.types.CBufRet.f32 %820, 1
  %839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %840 = extractvalue %dx.types.CBufRet.f32 %839, 0
  %841 = extractvalue %dx.types.CBufRet.f32 %839, 1
  %842 = extractvalue %dx.types.CBufRet.f32 %839, 2
  %843 = fsub fast float %838, %808
  %844 = fsub fast float %840, %646
  %845 = fsub fast float %841, %647
  %846 = fsub fast float %842, %648
  %847 = fmul fast float %843, %819
  %848 = fmul fast float %844, %819
  %849 = fmul fast float %845, %819
  %850 = fmul fast float %846, %819
  %851 = fadd fast float %847, %808
  %852 = fadd fast float %848, %646
  %853 = fadd fast float %849, %647
  %854 = fadd fast float %850, %648
  %855 = extractvalue %dx.types.CBufRet.f32 %820, 2
  %856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %857 = extractvalue %dx.types.CBufRet.f32 %856, 0
  %858 = extractvalue %dx.types.CBufRet.f32 %856, 1
  %859 = extractvalue %dx.types.CBufRet.f32 %856, 2
  %860 = fsub fast float %855, %807
  %861 = fsub fast float %857, %643
  %862 = fsub fast float %858, %644
  %863 = fsub fast float %859, %645
  %864 = fmul fast float %860, %819
  %865 = fmul fast float %861, %819
  %866 = fmul fast float %862, %819
  %867 = fmul fast float %863, %819
  %868 = fadd fast float %864, %807
  %869 = fadd fast float %865, %643
  %870 = fadd fast float %866, %644
  %871 = fadd fast float %867, %645
  br label %872

; <label>:872                                     ; preds = %815, %806
  %873 = phi float [ %868, %815 ], [ %807, %806 ]
  %874 = phi float [ %869, %815 ], [ %643, %806 ]
  %875 = phi float [ %870, %815 ], [ %644, %806 ]
  %876 = phi float [ %871, %815 ], [ %645, %806 ]
  %877 = phi float [ %851, %815 ], [ %808, %806 ]
  %878 = phi float [ %852, %815 ], [ %646, %806 ]
  %879 = phi float [ %853, %815 ], [ %647, %806 ]
  %880 = phi float [ %854, %815 ], [ %648, %806 ]
  %881 = phi float [ %834, %815 ], [ %809, %806 ]
  %882 = phi float [ %835, %815 ], [ %649, %806 ]
  %883 = phi float [ %836, %815 ], [ %650, %806 ]
  %884 = phi float [ %837, %815 ], [ %651, %806 ]
  %885 = extractvalue %dx.types.CBufRet.f32 %461, 3
  %886 = fmul fast float %885, %881
  %887 = fmul fast float %885, %877
  %888 = fmul fast float %885, %873
  %889 = fmul fast float %882, 1.500000e+00
  %890 = fmul fast float %889, %885
  %891 = fmul fast float %883, 1.500000e+00
  %892 = fmul fast float %891, %885
  %893 = fmul fast float %884, 1.500000e+00
  %894 = fmul fast float %893, %885
  %895 = fmul fast float %878, 1.500000e+00
  %896 = fmul fast float %895, %885
  %897 = fmul fast float %879, 1.500000e+00
  %898 = fmul fast float %897, %885
  %899 = fmul fast float %880, 1.500000e+00
  %900 = fmul fast float %899, %885
  %901 = fmul fast float %874, 1.500000e+00
  %902 = fmul fast float %901, %885
  %903 = fmul fast float %875, 1.500000e+00
  %904 = fmul fast float %903, %885
  %905 = fmul fast float %876, 1.500000e+00
  %906 = fmul fast float %905, %885
  %907 = fmul fast float %886, 0x3FD20DD760000000
  %908 = fmul fast float %887, 0x3FD20DD760000000
  %909 = fmul fast float %888, 0x3FD20DD760000000
  br i1 %87, label %933, label %910, !dx.controlflow.hints !47

; <label>:910                                     ; preds = %872
  %911 = fmul fast float %199, 0xBFD4D8D7C0000000
  %912 = fmul fast float %911, %892
  %913 = fmul fast float %894, %197
  %914 = fmul fast float %890, %198
  %915 = fadd fast float %914, %913
  %916 = fmul fast float %915, 0x3FD4D8D7C0000000
  %917 = fadd fast float %912, %907
  %918 = fadd fast float %917, %916
  %919 = fmul fast float %911, %898
  %920 = fmul fast float %900, %197
  %921 = fmul fast float %896, %198
  %922 = fadd fast float %921, %920
  %923 = fmul fast float %922, 0x3FD4D8D7C0000000
  %924 = fadd fast float %919, %908
  %925 = fadd fast float %924, %923
  %926 = fmul fast float %911, %904
  %927 = fmul fast float %906, %197
  %928 = fmul fast float %902, %198
  %929 = fadd fast float %928, %927
  %930 = fmul fast float %929, 0x3FD4D8D7C0000000
  %931 = fadd fast float %926, %909
  %932 = fadd fast float %931, %930
  br label %965

; <label>:933                                     ; preds = %872
  %934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %935 = extractvalue %dx.types.CBufRet.f32 %934, 0
  %936 = extractvalue %dx.types.CBufRet.f32 %934, 1
  %937 = extractvalue %dx.types.CBufRet.f32 %934, 2
  %938 = fmul fast float %892, %129
  %939 = fmul fast float %938, %937
  %940 = fmul fast float %935, %894
  %941 = fmul fast float %936, %890
  %942 = fadd fast float %941, %940
  %943 = fmul fast float %942, %129
  %944 = fsub fast float %943, %939
  %945 = fmul fast float %944, 0x3FDF454380000000
  %946 = fadd fast float %945, %907
  %947 = fmul fast float %898, %129
  %948 = fmul fast float %947, %937
  %949 = fmul fast float %935, %900
  %950 = fmul fast float %936, %896
  %951 = fadd fast float %950, %949
  %952 = fmul fast float %951, %129
  %953 = fsub fast float %952, %948
  %954 = fmul fast float %953, 0x3FDF454380000000
  %955 = fadd fast float %954, %908
  %956 = fmul fast float %904, %129
  %957 = fmul fast float %956, %937
  %958 = fmul fast float %935, %906
  %959 = fmul fast float %936, %902
  %960 = fadd fast float %959, %958
  %961 = fmul fast float %960, %129
  %962 = fsub fast float %961, %957
  %963 = fmul fast float %962, 0x3FDF454380000000
  %964 = fadd fast float %963, %909
  br label %965

; <label>:965                                     ; preds = %933, %910
  %966 = phi float [ %918, %910 ], [ %946, %933 ]
  %967 = phi float [ %925, %910 ], [ %955, %933 ]
  %968 = phi float [ %932, %910 ], [ %964, %933 ]
  %969 = fmul fast float %966, %264
  %970 = fmul fast float %967, %264
  %971 = fmul fast float %968, %264
  %972 = fsub fast float %260, %966
  %973 = fadd fast float %972, %969
  %974 = fsub fast float %261, %967
  %975 = fadd fast float %974, %970
  %976 = fsub fast float %262, %968
  %977 = fadd fast float %976, %971
  %978 = fmul fast float %973, %299
  %979 = fmul fast float %975, %299
  %980 = fmul fast float %977, %299
  %981 = fadd fast float %978, %966
  %982 = fadd fast float %979, %967
  %983 = fadd fast float %980, %968
  br label %984

; <label>:984                                     ; preds = %965, %298
  %985 = phi float [ %981, %965 ], [ %260, %298 ]
  %986 = phi float [ %982, %965 ], [ %261, %298 ]
  %987 = phi float [ %983, %965 ], [ %262, %298 ]
  %988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %989 = extractvalue %dx.types.CBufRet.f32 %988, 3
  %990 = fmul fast float %989, %985
  %991 = fmul fast float %989, %986
  %992 = fmul fast float %989, %987
  %993 = extractvalue %dx.types.CBufRet.f32 %988, 0
  %994 = fmul fast float %990, %993
  %995 = fmul fast float %991, %993
  %996 = fmul fast float %992, %993
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %156, i32 %157, i32 undef, float %994, float %995, float %996, float %994, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %997

; <label>:997                                     ; preds = %984, %0
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
!29 = !{void ()* @cs_del_sh_combine_multilightgrid_4, !"cs_del_sh_combine_multilightgrid_4", null, !4, !30}
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
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}

