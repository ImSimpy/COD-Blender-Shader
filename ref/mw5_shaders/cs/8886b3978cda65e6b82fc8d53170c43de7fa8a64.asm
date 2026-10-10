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
; shader hash: 1065da80ac08ea1086d95bf5720eaaac
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
;                                   sampler      NA          NA      S0             s1     1
;                                   texture     f32          2d      T0             t0     1
;                                   textureunorm_f32          2d      T1             t1     1
;                                       UAV     f32          2d      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
%"class.RWTexture2D<float>" = type { float }
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

define void @cs_update() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %7 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %8 = uitofp i32 %6 to float
  %9 = uitofp i32 %7 to float
  %10 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 442)  ; CBufferLoadLegacy(handle,regIndex)
  %11 = extractvalue %dx.types.CBufRet.f32 %10, 1
  %12 = fcmp fast oge float %8, %11
  %13 = fcmp fast oge float %9, %11
  %14 = or i1 %12, %13
  br i1 %14, label %224, label %15, !dx.controlflow.hints !19

; <label>:15                                      ; preds = %0
  %16 = extractvalue %dx.types.CBufRet.f32 %10, 2
  %17 = fmul fast float %16, %8
  %18 = fmul fast float %16, %9
  %19 = fadd fast float %17, -5.000000e-01
  %20 = fadd fast float %18, -5.000000e-01
  %21 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 441)  ; CBufferLoadLegacy(handle,regIndex)
  %22 = extractvalue %dx.types.CBufRet.f32 %21, 3
  %23 = extractvalue %dx.types.CBufRet.f32 %10, 3
  %24 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 440)  ; CBufferLoadLegacy(handle,regIndex)
  %25 = extractvalue %dx.types.CBufRet.f32 %24, 0
  %26 = extractvalue %dx.types.CBufRet.f32 %24, 1
  %27 = extractvalue %dx.types.CBufRet.f32 %21, 2
  %28 = fmul fast float %27, %25
  %29 = fmul fast float %27, %26
  %30 = fsub fast float %19, %28
  %31 = fsub fast float %20, %29
  %32 = call float @dx.op.unary.f32(i32 22, float %30)  ; Frc(value)
  %33 = call float @dx.op.unary.f32(i32 22, float %31)  ; Frc(value)
  %34 = fmul fast float %32, %22
  %35 = fmul fast float %33, %22
  %36 = fadd fast float %34, %25
  %37 = fadd fast float %35, %26
  %38 = extractvalue %dx.types.CBufRet.f32 %24, 2
  %39 = extractvalue %dx.types.CBufRet.f32 %24, 3
  %40 = fsub fast float %25, %38
  %41 = fsub fast float %26, %39
  %42 = fcmp fast une float %40, 0.000000e+00
  br i1 %42, label %43, label %52, !dx.controlflow.hints !20

; <label>:43                                      ; preds = %15
  %44 = fcmp fast ogt float %40, 0.000000e+00
  %45 = fsub fast float %36, %22
  %46 = fmul fast float %16, %22
  %47 = fadd fast float %45, %46
  %48 = fcmp fast oge float %47, %38
  %49 = fcmp fast ole float %36, %38
  %50 = select i1 %44, i1 %48, i1 %49
  %51 = zext i1 %50 to i32
  br label %52

; <label>:52                                      ; preds = %43, %15
  %53 = phi i32 [ %51, %43 ], [ 0, %15 ]
  %54 = fcmp fast une float %41, 0.000000e+00
  br i1 %54, label %55, label %63, !dx.controlflow.hints !21

; <label>:55                                      ; preds = %52
  %56 = fcmp fast ogt float %41, 0.000000e+00
  %57 = fsub fast float %37, %22
  %58 = fmul fast float %16, %22
  %59 = fadd fast float %57, %58
  %60 = fcmp fast oge float %59, %39
  %61 = fcmp fast ole float %37, %39
  %62 = select i1 %56, i1 %60, i1 %61
  br label %63

; <label>:63                                      ; preds = %55, %52
  %64 = phi i1 [ %62, %55 ], [ false, %52 ]
  %65 = icmp ne i32 %53, 0
  %66 = or i1 %65, %64
  br i1 %66, label %67, label %68, !dx.controlflow.hints !22

; <label>:67                                      ; preds = %63
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %6, i32 %7, i32 undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %68

; <label>:68                                      ; preds = %67, %63
  %69 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %1, i32 undef, i32 %6, i32 %7, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %70 = extractvalue %dx.types.ResRet.f32 %69, 0
  %71 = bitcast float %70 to i32
  %72 = lshr i32 %71, 16
  %73 = uitofp i32 %72 to float
  %74 = fmul fast float %73, 0x3EF0001000000000
  %75 = fadd fast float %8, 5.000000e-01
  %76 = fadd fast float %9, 5.000000e-01
  %77 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 442)  ; CBufferLoadLegacy(handle,regIndex)
  %78 = extractvalue %dx.types.CBufRet.f32 %77, 2
  %79 = fmul fast float %78, %75
  %80 = fmul fast float %78, %76
  %81 = fadd fast float %79, -5.000000e-01
  %82 = fadd fast float %80, -5.000000e-01
  %83 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 440)  ; CBufferLoadLegacy(handle,regIndex)
  %84 = extractvalue %dx.types.CBufRet.f32 %83, 0
  %85 = extractvalue %dx.types.CBufRet.f32 %83, 1
  %86 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 441)  ; CBufferLoadLegacy(handle,regIndex)
  %87 = extractvalue %dx.types.CBufRet.f32 %86, 2
  %88 = fmul fast float %87, %84
  %89 = fmul fast float %87, %85
  %90 = fsub fast float %81, %88
  %91 = fsub fast float %82, %89
  %92 = call float @dx.op.unary.f32(i32 22, float %90)  ; Frc(value)
  %93 = call float @dx.op.unary.f32(i32 22, float %91)  ; Frc(value)
  %94 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %92, float %93, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %95 = extractvalue %dx.types.ResRet.f32 %94, 0
  %96 = fcmp fast oeq float %95, 0.000000e+00
  %97 = fcmp fast oeq float %74, 0.000000e+00
  %98 = and i1 %97, %96
  br i1 %98, label %224, label %99, !dx.controlflow.hints !23

; <label>:99                                      ; preds = %68
  %100 = extractvalue %dx.types.CBufRet.f32 %86, 0
  %101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 443)  ; CBufferLoadLegacy(handle,regIndex)
  %102 = extractvalue %dx.types.CBufRet.f32 %101, 1
  %103 = fsub fast float 1.000000e+00, %74
  %104 = extractvalue %dx.types.CBufRet.f32 %86, 1
  %105 = fmul fast float %104, %103
  %106 = fadd fast float %105, %102
  %107 = extractvalue %dx.types.CBufRet.f32 %101, 0
  %108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 365)  ; CBufferLoadLegacy(handle,regIndex)
  %109 = extractvalue %dx.types.CBufRet.f32 %108, 3
  %110 = fmul fast float %109, %95
  %111 = fsub fast float %107, %110
  %112 = fcmp fast une float %95, 0.000000e+00
  %113 = fcmp fast ogt float %106, %111
  %114 = and i1 %112, %113
  br i1 %114, label %115, label %181, !dx.controlflow.hints !24

; <label>:115                                     ; preds = %99
  %116 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %4, float %92, float %93, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %117 = extractvalue %dx.types.ResRet.f32 %116, 0
  %118 = extractvalue %dx.types.ResRet.f32 %116, 1
  %119 = call float @dx.op.binary.f32(i32 36, float %92, float %93)  ; FMin(a,b)
  %120 = call float @dx.op.binary.f32(i32 35, float %92, float %93)  ; FMax(a,b)
  %121 = fsub fast float 1.000000e+00, %120
  %122 = call float @dx.op.binary.f32(i32 36, float %119, float %121)  ; FMin(a,b)
  %123 = fadd fast float %122, 0xBF50624DE0000000
  %124 = fmul fast float %123, 0x402433B7A0000000
  %125 = call float @dx.op.unary.f32(i32 7, float %124)  ; Saturate(value)
  %126 = fmul fast float %125, 2.000000e+00
  %127 = fsub fast float 3.000000e+00, %126
  %128 = fadd fast float %117, 0xBFE0040100000000
  %129 = fadd fast float %118, 0xBFE0040100000000
  %130 = call float @dx.op.unary.f32(i32 6, float %128)  ; FAbs(value)
  %131 = call float @dx.op.unary.f32(i32 6, float %129)  ; FAbs(value)
  %132 = fcmp fast olt float %130, 0x3F40040100000000
  %133 = fcmp fast olt float %131, 0x3F40040100000000
  %134 = and i1 %132, %133
  %135 = call float @dx.op.dot2.f32(i32 54, float %128, float %129, float %128, float %129)  ; Dot2(ax,ay,bx,by)
  %136 = call float @dx.op.unary.f32(i32 25, float %135)  ; Rsqrt(value)
  %137 = fmul fast float %136, %128
  %138 = fmul fast float %136, %129
  %139 = fsub fast float %111, %100
  %140 = extractvalue %dx.types.CBufRet.f32 %77, 0
  %141 = fmul fast float %140, %139
  %142 = fcmp fast ogt float %141, 1.000000e+00
  %143 = fcmp fast olt float %141, 0.000000e+00
  %144 = or i1 %142, %143
  %145 = fsub fast float 1.000000e+00, %141
  %146 = select i1 %144, float 0.000000e+00, float %145
  %147 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %146)  ; FMax(a,b)
  %148 = fadd fast float %137, 1.000000e+00
  %149 = fadd fast float %138, 1.000000e+00
  %150 = fmul fast float %148, 5.000000e-01
  %151 = select i1 %134, float 5.000000e-01, float %150
  %152 = fmul fast float %149, 5.000000e-01
  %153 = select i1 %134, float 5.000000e-01, float %152
  %154 = call float @dx.op.unary.f32(i32 7, float %151)  ; Saturate(value)
  %155 = call float @dx.op.unary.f32(i32 7, float %153)  ; Saturate(value)
  %156 = fmul fast float %154, 1.500000e+01
  %157 = fmul fast float %155, 1.500000e+01
  %158 = fadd fast float %156, 5.000000e-01
  %159 = fadd fast float %157, 5.000000e-01
  %160 = fptoui float %158 to i32
  %161 = fptoui float %159 to i32
  %162 = fmul fast float %125, %125
  %163 = fmul fast float %162, 6.553500e+04
  %164 = fmul fast float %163, %127
  %165 = fmul fast float %164, %147
  %166 = fadd fast float %165, 5.000000e-01
  %167 = fptoui float %166 to i32
  %168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 444)  ; CBufferLoadLegacy(handle,regIndex)
  %169 = extractvalue %dx.types.CBufRet.f32 %168, 0
  %170 = fptoui float %169 to i32
  %171 = shl i32 %167, 16
  %172 = shl i32 %170, 8
  %173 = and i32 %172, 65280
  %174 = shl i32 %160, 4
  %175 = and i32 %174, 240
  %176 = and i32 %161, 15
  %177 = or i32 %175, %171
  %178 = or i32 %177, %176
  %179 = or i32 %178, %173
  %180 = bitcast i32 %179 to float
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %6, i32 %7, i32 undef, float %180, float %180, float %180, float %180, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %224

; <label>:181                                     ; preds = %99
  %182 = fcmp fast ogt float %23, 0.000000e+00
  %183 = fcmp fast une float %100, %102
  %184 = fcmp fast une float %74, 0.000000e+00
  %185 = and i1 %184, %183
  %186 = or i1 %182, %185
  br i1 %186, label %187, label %224, !dx.controlflow.hints !25

; <label>:187                                     ; preds = %181
  %188 = lshr i32 %71, 8
  %189 = and i32 %188, 255
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %193, !dx.controlflow.hints !26

; <label>:191                                     ; preds = %187
  %192 = fadd fast float %106, %23
  br label %201

; <label>:193                                     ; preds = %187
  %194 = uitofp i32 %189 to float
  %195 = extractvalue %dx.types.CBufRet.f32 %101, 3
  %196 = fsub fast float %194, %195
  %197 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %196)  ; FMax(a,b)
  %198 = fptoui float %197 to i32
  %199 = shl i32 %198, 8
  %200 = and i32 %199, 65280
  br label %201

; <label>:201                                     ; preds = %193, %191
  %202 = phi float [ %192, %191 ], [ %106, %193 ]
  %203 = phi i32 [ 0, %191 ], [ %200, %193 ]
  %204 = fsub fast float %202, %100
  %205 = extractvalue %dx.types.CBufRet.f32 %77, 0
  %206 = fmul fast float %205, %204
  %207 = fcmp fast ogt float %206, 1.000000e+00
  %208 = fcmp fast olt float %206, 0.000000e+00
  %209 = or i1 %207, %208
  %210 = fsub fast float 1.000000e+00, %206
  %211 = select i1 %209, float 0.000000e+00, float %210
  %212 = call float @dx.op.unary.f32(i32 7, float %211)  ; Saturate(value)
  %213 = fmul fast float %212, 6.553500e+04
  %214 = fadd fast float %213, 5.000000e-01
  %215 = fptoui float %214 to i32
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %218, !dx.controlflow.hints !27

; <label>:217                                     ; preds = %201
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %6, i32 %7, i32 undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %224

; <label>:218                                     ; preds = %201
  %219 = shl i32 %215, 16
  %220 = and i32 %71, 255
  %221 = or i32 %203, %220
  %222 = or i32 %221, %219
  %223 = bitcast i32 %222 to float
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %6, i32 %7, i32 undef, float %223, float %223, float %223, float %223, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %224

; <label>:224                                     ; preds = %218, %217, %181, %115, %68, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!16}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !10, !12, !14}
!5 = !{!6, !8}
!6 = !{i32 0, %"class.Texture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !9}
!9 = !{i32 0, i32 14}
!10 = !{!11}
!11 = !{i32 0, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!12 = !{!13}
!13 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!14 = !{!15}
!15 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!16 = !{void ()* @cs_update, !"cs_update", null, !4, !17}
!17 = !{i32 0, i64 256, i32 4, !18}
!18 = !{i32 8, i32 8, i32 1}
!19 = distinct !{!19, !"dx.controlflow.hints", i32 2}
!20 = distinct !{!20, !"dx.controlflow.hints", i32 2}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 1}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 1}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}

