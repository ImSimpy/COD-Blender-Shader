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
; shader hash: 3bbab5546818b5be36b5b4e894757d6b
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
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb3     1
;                                   sampler      NA          NA      S0             s2     1
;                                   texture     f32          2d      T0             t0     1
;                                   texture     f32          2d      T1             t1     1
;                                   texture     f32          2d      T2             t2     1
;                                   texture     u32          2d      T3             t3     1
;                                   texture     f32          2d      T4             t4     1
;                                   texture     f32          2d      T5             t5     1
;                                   texture     f32          2d      T6             t6     1
;                                   texture     f32          2d      T7             t7     1
;                                   texture     f32          2d      T8             t8     1
;                                   texture     f32          2d      T9             t9     1
;                                   texture     f32          2d     T10            t10     1
;                                   texture     f32          2d     T11            t11     1
;                                       UAV     f32          2d      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%"class.RWTexture2D<vector<float, 4> >" = type { <4 x float> }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.SamplerState = type { i32 }

define void @cs_debug_overlay() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %17 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %18 = uitofp i32 %16 to float
  %19 = uitofp i32 %17 to float
  %20 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %21 = extractvalue %dx.types.CBufRet.f32 %20, 0
  %22 = extractvalue %dx.types.CBufRet.f32 %20, 1
  %23 = fcmp fast oge float %18, %21
  %24 = fcmp fast oge float %19, %22
  %25 = or i1 %23, %24
  br i1 %25, label %220, label %26, !dx.controlflow.hints !29

; <label>:26                                      ; preds = %0
  %27 = extractvalue %dx.types.CBufRet.f32 %20, 2
  %28 = extractvalue %dx.types.CBufRet.f32 %20, 3
  %29 = fmul fast float %27, %18
  %30 = fmul fast float %28, %19
  %31 = fmul fast float %29, 2.000000e+00
  %32 = fmul fast float %30, 2.000000e+00
  %33 = call float @dx.op.unary.f32(i32 22, float %31)  ; Frc(value)
  %34 = call float @dx.op.unary.f32(i32 22, float %32)  ; Frc(value)
  %35 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 365)  ; CBufferLoadLegacy(handle,regIndex)
  %36 = extractvalue %dx.types.CBufRet.i32 %35, 0
  switch i32 %36, label %216 [
    i32 0, label %37
    i32 1, label %141
    i32 2, label %184
    i32 3, label %203
  ], !dx.controlflow.hints !30

; <label>:37                                      ; preds = %26
  %38 = fcmp fast olt float %29, 5.000000e-01
  %39 = fcmp fast olt float %30, 5.000000e-01
  %40 = and i1 %38, %39
  br i1 %40, label %41, label %46, !dx.controlflow.hints !31

; <label>:41                                      ; preds = %37
  %42 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %14, float %33, float %34, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %43 = extractvalue %dx.types.ResRet.f32 %42, 0
  %44 = extractvalue %dx.types.ResRet.f32 %42, 1
  %45 = extractvalue %dx.types.ResRet.f32 %42, 2
  br label %216

; <label>:46                                      ; preds = %37
  %47 = fcmp fast ogt float %29, 5.000000e-01
  %48 = and i1 %47, %39
  br i1 %48, label %49, label %61, !dx.controlflow.hints !32

; <label>:49                                      ; preds = %46
  %50 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %14, float %33, float %34, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %51 = extractvalue %dx.types.ResRet.f32 %50, 0
  %52 = extractvalue %dx.types.ResRet.f32 %50, 1
  %53 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 365)  ; CBufferLoadLegacy(handle,regIndex)
  %54 = extractvalue %dx.types.CBufRet.f32 %53, 2
  %55 = fadd fast float %51, -5.000000e-01
  %56 = fadd fast float %52, -5.000000e-01
  %57 = fmul fast float %54, 2.400000e+02
  %58 = fmul fast float %57, %55
  %59 = fmul fast float %56, 2.400000e+02
  %60 = fmul fast float %59, %54
  br label %216

; <label>:61                                      ; preds = %46
  %62 = fcmp fast ogt float %30, 5.000000e-01
  %63 = and i1 %38, %62
  br i1 %63, label %64, label %73, !dx.controlflow.hints !33

; <label>:64                                      ; preds = %61
  %65 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %14, float %33, float %34, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %66 = extractvalue %dx.types.ResRet.f32 %65, 0
  %67 = bitcast float %66 to i32
  switch i32 %67, label %216 [
    i32 0, label %68
    i32 2, label %69
    i32 1, label %70
    i32 4, label %71
    i32 3, label %72
  ], !dx.controlflow.hints !34

; <label>:68                                      ; preds = %64
  br label %216

; <label>:69                                      ; preds = %64
  br label %216

; <label>:70                                      ; preds = %64
  br label %216

; <label>:71                                      ; preds = %64
  br label %216

; <label>:72                                      ; preds = %64
  br label %216

; <label>:73                                      ; preds = %61
  %74 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 428)  ; CBufferLoadLegacy(handle,regIndex)
  %75 = extractvalue %dx.types.CBufRet.i32 %74, 2
  %76 = uitofp i32 %75 to float
  %77 = fmul fast float %76, %33
  %78 = fmul fast float %76, %34
  %79 = fptoui float %77 to i32
  %80 = fptoui float %78 to i32
  %81 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %79, i32 %80, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %82 = extractvalue %dx.types.ResRet.i32 %81, 0
  %83 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 429)  ; CBufferLoadLegacy(handle,regIndex)
  %84 = extractvalue %dx.types.CBufRet.f32 %83, 3
  %85 = lshr i32 %82, 9
  %86 = and i32 %85, 127
  %87 = lshr i32 %82, 2
  %88 = and i32 %87, 127
  %89 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 435)  ; CBufferLoadLegacy(handle,regIndex)
  %90 = extractvalue %dx.types.CBufRet.i32 %89, 0
  %91 = call i32 @dx.op.binary.i32(i32 40, i32 128, i32 %90)  ; UMin(a,b)
  %92 = add i32 %86, %79
  %93 = sub i32 %92, %91
  %94 = add i32 %88, %80
  %95 = sub i32 %94, %91
  %96 = sitofp i32 %93 to float
  %97 = sitofp i32 %95 to float
  %98 = fadd fast float %96, 5.000000e-01
  %99 = fadd fast float %97, 5.000000e-01
  %100 = fmul fast float %98, %84
  %101 = fmul fast float %99, %84
  %102 = call float @dx.op.unary.f32(i32 22, float %100)  ; Frc(value)
  %103 = call float @dx.op.unary.f32(i32 22, float %101)  ; Frc(value)
  %104 = fmul fast float %102, %76
  %105 = fmul fast float %103, %76
  %106 = fptoui float %104 to i32
  %107 = fptoui float %105 to i32
  %108 = sub nsw i32 %106, %79
  %109 = sub i32 0, %108
  %110 = call i32 @dx.op.binary.i32(i32 37, i32 %108, i32 %109)  ; IMax(a,b)
  %111 = sub nsw i32 %107, %80
  %112 = sub i32 0, %111
  %113 = call i32 @dx.op.binary.i32(i32 37, i32 %111, i32 %112)  ; IMax(a,b)
  %114 = lshr i32 %75, 1
  %115 = icmp sgt i32 %110, %114
  br i1 %115, label %116, label %121, !dx.controlflow.hints !35

; <label>:116                                     ; preds = %73
  %117 = icmp sgt i32 %79, %114
  %118 = sub i32 %75, %110
  %119 = sub i32 %110, %75
  %120 = select i1 %117, i32 %118, i32 %119
  br label %121

; <label>:121                                     ; preds = %116, %73
  %122 = phi i32 [ %120, %116 ], [ %108, %73 ]
  %123 = icmp sgt i32 %113, %114
  br i1 %123, label %124, label %129, !dx.controlflow.hints !36

; <label>:124                                     ; preds = %121
  %125 = icmp sgt i32 %80, %114
  %126 = sub i32 %75, %113
  %127 = sub i32 %113, %75
  %128 = select i1 %125, i32 %126, i32 %127
  br label %129

; <label>:129                                     ; preds = %124, %121
  %130 = phi i32 [ %128, %124 ], [ %111, %121 ]
  %131 = icmp eq i32 %82, 0
  %132 = sitofp i32 %122 to float
  %133 = sitofp i32 %130 to float
  %134 = fmul fast float %132, %132
  %135 = fmul fast float %133, %133
  %136 = fadd fast float %135, %134
  %137 = call float @dx.op.unary.f32(i32 24, float %136)  ; Sqrt(value)
  %138 = uitofp i32 %91 to float
  %139 = fdiv fast float %137, %138
  %140 = select i1 %131, float 1.000000e+00, float %139
  br label %216

; <label>:141                                     ; preds = %26
  %142 = fcmp fast olt float %29, 5.000000e-01
  %143 = fcmp fast olt float %30, 5.000000e-01
  %144 = and i1 %142, %143
  br i1 %144, label %145, label %152, !dx.controlflow.hints !37

; <label>:145                                     ; preds = %141
  %146 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %14, float %33, float %34, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %147 = extractvalue %dx.types.ResRet.f32 %146, 0
  %148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 431)  ; CBufferLoadLegacy(handle,regIndex)
  %149 = extractvalue %dx.types.CBufRet.f32 %148, 2
  %150 = fmul fast float %149, %147
  %151 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %150)  ; FMax(a,b)
  br label %216

; <label>:152                                     ; preds = %141
  %153 = fcmp fast ogt float %29, 5.000000e-01
  %154 = and i1 %153, %143
  br i1 %154, label %155, label %171, !dx.controlflow.hints !38

; <label>:155                                     ; preds = %152
  %156 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %14, float %33, float %34, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %157 = extractvalue %dx.types.ResRet.f32 %156, 0
  %158 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %14, float %33, float %34, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %159 = extractvalue %dx.types.ResRet.f32 %158, 0
  %160 = fadd fast float %157, -5.000000e-01
  %161 = fmul fast float %160, 0x400921FB60000000
  %162 = call float @dx.op.unary.f32(i32 13, float %161)  ; Sin(value)
  %163 = fmul fast float %162, 5.000000e-01
  %164 = fadd fast float %163, 5.000000e-01
  %165 = fadd fast float %159, 1.000000e+00
  %166 = fmul fast float %165, 0x400921FB60000000
  %167 = call float @dx.op.unary.f32(i32 12, float %166)  ; Cos(value)
  %168 = fmul fast float %167, 5.000000e-01
  %169 = fadd fast float %168, 5.000000e-01
  %170 = fsub fast float 5.000000e-01, %163
  br label %216

; <label>:171                                     ; preds = %152
  %172 = fcmp fast ogt float %30, 5.000000e-01
  %173 = and i1 %142, %172
  br i1 %173, label %174, label %179, !dx.controlflow.hints !39

; <label>:174                                     ; preds = %171
  %175 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %14, float %33, float %34, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %176 = extractvalue %dx.types.ResRet.f32 %175, 0
  %177 = fcmp fast ogt float %176, 0.000000e+00
  %178 = select i1 %177, float %176, float 1.000000e+00
  br label %216

; <label>:179                                     ; preds = %171
  %180 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %14, float %33, float %34, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %181 = extractvalue %dx.types.ResRet.f32 %180, 0
  %182 = fcmp fast ogt float %181, 0.000000e+00
  %183 = select i1 %182, float %181, float 1.000000e+00
  br label %216

; <label>:184                                     ; preds = %26
  %185 = fcmp fast olt float %29, 5.000000e-01
  %186 = fcmp fast olt float %30, 5.000000e-01
  %187 = and i1 %185, %186
  br i1 %187, label %188, label %191, !dx.controlflow.hints !40

; <label>:188                                     ; preds = %184
  %189 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %14, float %33, float %34, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %190 = extractvalue %dx.types.ResRet.f32 %189, 0
  br label %216

; <label>:191                                     ; preds = %184
  %192 = fcmp fast ogt float %29, 5.000000e-01
  %193 = and i1 %192, %186
  br i1 %193, label %194, label %197, !dx.controlflow.hints !41

; <label>:194                                     ; preds = %191
  %195 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %14, float %33, float %34, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %196 = extractvalue %dx.types.ResRet.f32 %195, 0
  br label %216

; <label>:197                                     ; preds = %191
  %198 = fcmp fast ogt float %30, 5.000000e-01
  %199 = and i1 %185, %198
  br i1 %199, label %200, label %216, !dx.controlflow.hints !42

; <label>:200                                     ; preds = %197
  %201 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %14, float %33, float %34, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %202 = extractvalue %dx.types.ResRet.f32 %201, 0
  br label %216

; <label>:203                                     ; preds = %26
  %204 = fcmp fast olt float %29, 5.000000e-01
  %205 = fcmp fast olt float %30, 5.000000e-01
  %206 = and i1 %204, %205
  br i1 %206, label %207, label %210, !dx.controlflow.hints !43

; <label>:207                                     ; preds = %203
  %208 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %14, float %33, float %34, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %209 = extractvalue %dx.types.ResRet.f32 %208, 0
  br label %216

; <label>:210                                     ; preds = %203
  %211 = fcmp fast ogt float %29, 5.000000e-01
  %212 = and i1 %211, %205
  br i1 %212, label %213, label %216, !dx.controlflow.hints !44

; <label>:213                                     ; preds = %210
  %214 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %14, float %33, float %34, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %215 = extractvalue %dx.types.ResRet.f32 %214, 0
  br label %216

; <label>:216                                     ; preds = %213, %210, %207, %200, %197, %194, %188, %179, %174, %155, %145, %129, %72, %71, %70, %69, %68, %64, %49, %41, %26
  %217 = phi float [ 0.000000e+00, %26 ], [ %209, %207 ], [ %215, %213 ], [ 0.000000e+00, %210 ], [ %190, %188 ], [ %196, %194 ], [ %202, %200 ], [ 0.000000e+00, %197 ], [ %151, %145 ], [ %164, %155 ], [ %178, %174 ], [ 0.000000e+00, %179 ], [ %43, %41 ], [ %58, %49 ], [ 0.000000e+00, %64 ], [ 0.000000e+00, %72 ], [ 0.000000e+00, %71 ], [ 1.000000e+00, %70 ], [ 1.000000e+00, %69 ], [ 0.000000e+00, %68 ], [ %140, %129 ]
  %218 = phi float [ 0.000000e+00, %26 ], [ %209, %207 ], [ %215, %213 ], [ 0.000000e+00, %210 ], [ %190, %188 ], [ %196, %194 ], [ %202, %200 ], [ 0.000000e+00, %197 ], [ %151, %145 ], [ %169, %155 ], [ 0.000000e+00, %174 ], [ %183, %179 ], [ %44, %41 ], [ %60, %49 ], [ 0.000000e+00, %64 ], [ 1.000000e+00, %72 ], [ 1.000000e+00, %71 ], [ 1.000000e+00, %70 ], [ 0.000000e+00, %69 ], [ 0.000000e+00, %68 ], [ %140, %129 ]
  %219 = phi float [ 0.000000e+00, %26 ], [ %209, %207 ], [ %215, %213 ], [ 0.000000e+00, %210 ], [ %190, %188 ], [ %196, %194 ], [ %202, %200 ], [ 0.000000e+00, %197 ], [ %151, %145 ], [ %170, %155 ], [ 0.000000e+00, %174 ], [ 0.000000e+00, %179 ], [ %45, %41 ], [ 0.000000e+00, %49 ], [ 0.000000e+00, %64 ], [ 1.000000e+00, %72 ], [ 0.000000e+00, %71 ], [ 0.000000e+00, %70 ], [ 0.000000e+00, %69 ], [ 1.000000e+00, %68 ], [ %140, %129 ]
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %16, i32 %17, i32 undef, float %217, float %218, float %219, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %220

; <label>:220                                     ; preds = %216, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!26}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !20, !22, !24}
!5 = !{!6, !8, !9, !10, !12, !13, !14, !15, !16, !17, !18, !19}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<unsigned int>"* undef, !"", i32 0, i32 3, i32 1, i32 2, i32 0, !11}
!11 = !{i32 0, i32 5}
!12 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 4, i32 1, i32 2, i32 0, !7}
!13 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 5, i32 1, i32 2, i32 0, !7}
!14 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 6, i32 1, i32 2, i32 0, !7}
!15 = !{i32 7, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 7, i32 1, i32 2, i32 0, !7}
!16 = !{i32 8, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 8, i32 1, i32 2, i32 0, !7}
!17 = !{i32 9, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 9, i32 1, i32 2, i32 0, !7}
!18 = !{i32 10, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 10, i32 1, i32 2, i32 0, !7}
!19 = !{i32 11, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 11, i32 1, i32 2, i32 0, !7}
!20 = !{!21}
!21 = !{i32 0, %"class.RWTexture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!22 = !{!23}
!23 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!24 = !{!25}
!25 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!26 = !{void ()* @cs_debug_overlay, !"cs_debug_overlay", null, !4, !27}
!27 = !{i32 0, i64 256, i32 4, !28}
!28 = !{i32 8, i32 8, i32 1}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}

