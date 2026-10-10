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
; shader hash: 998447388a60e7490a27ab2c036a1d93
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
;   [80 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb3     1
;                                   cbuffer      NA          NA     CB1            cb0     1
;                                   sampler      NA          NA      S0             s1     1
;                                   sampler      NA          NA      S1             s2     1
;                                   texture     f32          2d      T0             t1     1
;                                   texture     f32          2d      T1             t0     1
;                                   texture     f32          2d      T2             t5     1
;                                   texture     f32          2d      T3             t4     1
;                                   texture     f32          2d      T4             t3     1
;                                       UAV     f32          2d      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
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
%VeilSampleConsts = type { <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }

define void @cs_downsample_veil() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %12 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %13 = uitofp i32 %11 to float
  %14 = uitofp i32 %12 to float
  %15 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %16 = extractvalue %dx.types.CBufRet.f32 %15, 2
  %17 = extractvalue %dx.types.CBufRet.f32 %15, 3
  %18 = fcmp fast olt float %13, %16
  %19 = fcmp fast olt float %14, %17
  %20 = and i1 %18, %19
  br i1 %20, label %21, label %445, !dx.controlflow.hints !23

; <label>:21                                      ; preds = %0
  %22 = extractvalue %dx.types.CBufRet.f32 %15, 0
  %23 = extractvalue %dx.types.CBufRet.f32 %15, 1
  %24 = fadd fast float %22, %13
  %25 = fadd fast float %23, %14
  %26 = fptoui float %24 to i32
  %27 = fptoui float %25 to i32
  %28 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %29 = extractvalue %dx.types.CBufRet.f32 %28, 2
  %30 = extractvalue %dx.types.CBufRet.f32 %28, 3
  %31 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %32 = extractvalue %dx.types.CBufRet.f32 %31, 2
  %33 = extractvalue %dx.types.CBufRet.f32 %31, 3
  %34 = fmul fast float %32, %29
  %35 = fmul fast float %33, %30
  %36 = uitofp i32 %26 to float
  %37 = uitofp i32 %27 to float
  %38 = fadd fast float %36, 5.000000e-01
  %39 = fadd fast float %37, 5.000000e-01
  %40 = fmul fast float %32, %38
  %41 = fmul fast float %33, %39
  %42 = call float @dx.op.dot2.f32(i32 54, float %38, float %39, float 0x3FB12E2860000000, float 0x3F77E8B200000000)  ; Dot2(ax,ay,bx,by)
  %43 = call float @dx.op.unary.f32(i32 22, float %42)  ; Frc(value)
  %44 = fmul fast float %43, 0x404A7DD040000000
  %45 = call float @dx.op.unary.f32(i32 22, float %44)  ; Frc(value)
  %46 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %7, float %40, float %41, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %47 = extractvalue %dx.types.ResRet.f32 %46, 0
  %48 = extractvalue %dx.types.ResRet.f32 %46, 1
  %49 = extractvalue %dx.types.ResRet.f32 %46, 2
  %50 = fmul fast float %47, 0x3FDEB71760000000
  %51 = fmul fast float %48, 0x3FDEB71760000000
  %52 = fmul fast float %49, 0x3FDEB71760000000
  %53 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 228)  ; CBufferLoadLegacy(handle,regIndex)
  %54 = extractvalue %dx.types.CBufRet.f32 %53, 2
  %55 = extractvalue %dx.types.CBufRet.f32 %53, 0
  %56 = call float @dx.op.binary.f32(i32 35, float %40, float %55)  ; FMax(a,b)
  %57 = call float @dx.op.binary.f32(i32 36, float %56, float %54)  ; FMin(a,b)
  %58 = call float @dx.op.binary.f32(i32 36, float %40, float %55)  ; FMin(a,b)
  %59 = call float @dx.op.binary.f32(i32 35, float %58, float %57)  ; FMax(a,b)
  %60 = fcmp fast oeq float %40, %59
  %61 = extractvalue %dx.types.CBufRet.f32 %53, 3
  %62 = extractvalue %dx.types.CBufRet.f32 %53, 1
  %63 = call float @dx.op.binary.f32(i32 35, float %41, float %62)  ; FMax(a,b)
  %64 = call float @dx.op.binary.f32(i32 36, float %63, float %61)  ; FMin(a,b)
  %65 = call float @dx.op.binary.f32(i32 36, float %41, float %62)  ; FMin(a,b)
  %66 = call float @dx.op.binary.f32(i32 35, float %65, float %64)  ; FMax(a,b)
  %67 = fcmp fast oeq float %41, %66
  %68 = and i1 %60, %67
  br i1 %68, label %69, label %76, !dx.controlflow.hints !24

; <label>:69                                      ; preds = %21
  %70 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %7, float %40, float %41, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %71 = extractvalue %dx.types.ResRet.f32 %70, 0
  %72 = fsub fast float 1.000000e+00, %71
  %73 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %74 = extractvalue %dx.types.CBufRet.f32 %73, 0
  %75 = fcmp fast olt float %72, %74
  br label %76

; <label>:76                                      ; preds = %69, %21
  %77 = phi i1 [ %75, %69 ], [ false, %21 ]
  %78 = select i1 %77, float %50, float %51
  %79 = select i1 %77, float %50, float %52
  %80 = fmul fast float %45, 0x3FE921FB60000000
  %81 = fadd fast float %80, 0x3FE921FB60000000
  %82 = call float @dx.op.unary.f32(i32 13, float %81)  ; Sin(value)
  %83 = call float @dx.op.unary.f32(i32 12, float %81)  ; Cos(value)
  %84 = fmul fast float %34, 0x3FFE2F0140000000
  %85 = fmul fast float %84, %82
  %86 = fmul fast float %35, 0x3FFE2F0140000000
  %87 = fmul fast float %86, %83
  %88 = fadd fast float %85, %40
  %89 = fadd fast float %87, %41
  %90 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %7, float %88, float %89, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %91 = extractvalue %dx.types.ResRet.f32 %90, 0
  %92 = extractvalue %dx.types.ResRet.f32 %90, 1
  %93 = extractvalue %dx.types.ResRet.f32 %90, 2
  %94 = call float @dx.op.binary.f32(i32 35, float %88, float %55)  ; FMax(a,b)
  %95 = call float @dx.op.binary.f32(i32 36, float %94, float %54)  ; FMin(a,b)
  %96 = call float @dx.op.binary.f32(i32 36, float %88, float %55)  ; FMin(a,b)
  %97 = call float @dx.op.binary.f32(i32 35, float %96, float %95)  ; FMax(a,b)
  %98 = fcmp fast oeq float %88, %97
  %99 = call float @dx.op.binary.f32(i32 35, float %89, float %62)  ; FMax(a,b)
  %100 = call float @dx.op.binary.f32(i32 36, float %99, float %61)  ; FMin(a,b)
  %101 = call float @dx.op.binary.f32(i32 36, float %89, float %62)  ; FMin(a,b)
  %102 = call float @dx.op.binary.f32(i32 35, float %101, float %100)  ; FMax(a,b)
  %103 = fcmp fast oeq float %89, %102
  %104 = and i1 %98, %103
  br i1 %104, label %105, label %112, !dx.controlflow.hints !24

; <label>:105                                     ; preds = %76
  %106 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %7, float %88, float %89, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %107 = extractvalue %dx.types.ResRet.f32 %106, 0
  %108 = fsub fast float 1.000000e+00, %107
  %109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %110 = extractvalue %dx.types.CBufRet.f32 %109, 0
  %111 = fcmp fast olt float %108, %110
  br label %112

; <label>:112                                     ; preds = %105, %76
  %113 = phi i1 [ %111, %105 ], [ false, %76 ]
  %114 = select i1 %113, float %91, float %92
  %115 = select i1 %113, float %91, float %93
  %116 = fadd fast float %80, 0x4002D97C80000000
  %117 = call float @dx.op.unary.f32(i32 13, float %116)  ; Sin(value)
  %118 = call float @dx.op.unary.f32(i32 12, float %116)  ; Cos(value)
  %119 = fmul fast float %34, 0x3FEE145200000000
  %120 = fmul fast float %119, %117
  %121 = fmul fast float %35, 0x3FEE145200000000
  %122 = fmul fast float %121, %118
  %123 = fadd fast float %120, %40
  %124 = fadd fast float %122, %41
  %125 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %7, float %123, float %124, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %126 = extractvalue %dx.types.ResRet.f32 %125, 0
  %127 = extractvalue %dx.types.ResRet.f32 %125, 1
  %128 = extractvalue %dx.types.ResRet.f32 %125, 2
  %129 = call float @dx.op.binary.f32(i32 35, float %123, float %55)  ; FMax(a,b)
  %130 = call float @dx.op.binary.f32(i32 36, float %129, float %54)  ; FMin(a,b)
  %131 = call float @dx.op.binary.f32(i32 36, float %123, float %55)  ; FMin(a,b)
  %132 = call float @dx.op.binary.f32(i32 35, float %131, float %130)  ; FMax(a,b)
  %133 = fcmp fast oeq float %123, %132
  %134 = call float @dx.op.binary.f32(i32 35, float %124, float %62)  ; FMax(a,b)
  %135 = call float @dx.op.binary.f32(i32 36, float %134, float %61)  ; FMin(a,b)
  %136 = call float @dx.op.binary.f32(i32 36, float %124, float %62)  ; FMin(a,b)
  %137 = call float @dx.op.binary.f32(i32 35, float %136, float %135)  ; FMax(a,b)
  %138 = fcmp fast oeq float %124, %137
  %139 = and i1 %133, %138
  br i1 %139, label %140, label %147, !dx.controlflow.hints !24

; <label>:140                                     ; preds = %112
  %141 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %7, float %123, float %124, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %142 = extractvalue %dx.types.ResRet.f32 %141, 0
  %143 = fsub fast float 1.000000e+00, %142
  %144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %145 = extractvalue %dx.types.CBufRet.f32 %144, 0
  %146 = fcmp fast olt float %143, %145
  br label %147

; <label>:147                                     ; preds = %140, %112
  %148 = phi i1 [ %146, %140 ], [ false, %112 ]
  %149 = select i1 %148, float %126, float %127
  %150 = select i1 %148, float %126, float %128
  %151 = fadd fast float %80, 0x400F6A7A40000000
  %152 = call float @dx.op.unary.f32(i32 13, float %151)  ; Sin(value)
  %153 = call float @dx.op.unary.f32(i32 12, float %151)  ; Cos(value)
  %154 = fmul fast float %84, %152
  %155 = fmul fast float %86, %153
  %156 = fadd fast float %154, %40
  %157 = fadd fast float %155, %41
  %158 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %7, float %156, float %157, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %159 = extractvalue %dx.types.ResRet.f32 %158, 0
  %160 = extractvalue %dx.types.ResRet.f32 %158, 1
  %161 = extractvalue %dx.types.ResRet.f32 %158, 2
  %162 = call float @dx.op.binary.f32(i32 35, float %156, float %55)  ; FMax(a,b)
  %163 = call float @dx.op.binary.f32(i32 36, float %162, float %54)  ; FMin(a,b)
  %164 = call float @dx.op.binary.f32(i32 36, float %156, float %55)  ; FMin(a,b)
  %165 = call float @dx.op.binary.f32(i32 35, float %164, float %163)  ; FMax(a,b)
  %166 = fcmp fast oeq float %156, %165
  %167 = call float @dx.op.binary.f32(i32 35, float %157, float %62)  ; FMax(a,b)
  %168 = call float @dx.op.binary.f32(i32 36, float %167, float %61)  ; FMin(a,b)
  %169 = call float @dx.op.binary.f32(i32 36, float %157, float %62)  ; FMin(a,b)
  %170 = call float @dx.op.binary.f32(i32 35, float %169, float %168)  ; FMax(a,b)
  %171 = fcmp fast oeq float %157, %170
  %172 = and i1 %166, %171
  br i1 %172, label %173, label %180, !dx.controlflow.hints !24

; <label>:173                                     ; preds = %147
  %174 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %7, float %156, float %157, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %175 = extractvalue %dx.types.ResRet.f32 %174, 0
  %176 = fsub fast float 1.000000e+00, %175
  %177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %178 = extractvalue %dx.types.CBufRet.f32 %177, 0
  %179 = fcmp fast olt float %176, %178
  br label %180

; <label>:180                                     ; preds = %173, %147
  %181 = phi i1 [ %179, %173 ], [ false, %147 ]
  %182 = select i1 %181, float %159, float %160
  %183 = select i1 %181, float %159, float %161
  %184 = fadd fast float %80, 0x4015FDBC00000000
  %185 = call float @dx.op.unary.f32(i32 13, float %184)  ; Sin(value)
  %186 = call float @dx.op.unary.f32(i32 12, float %184)  ; Cos(value)
  %187 = fmul fast float %119, %185
  %188 = fmul fast float %121, %186
  %189 = fadd fast float %187, %40
  %190 = fadd fast float %188, %41
  %191 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %7, float %189, float %190, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %192 = extractvalue %dx.types.ResRet.f32 %191, 0
  %193 = extractvalue %dx.types.ResRet.f32 %191, 1
  %194 = extractvalue %dx.types.ResRet.f32 %191, 2
  %195 = call float @dx.op.binary.f32(i32 35, float %189, float %55)  ; FMax(a,b)
  %196 = call float @dx.op.binary.f32(i32 36, float %195, float %54)  ; FMin(a,b)
  %197 = call float @dx.op.binary.f32(i32 36, float %189, float %55)  ; FMin(a,b)
  %198 = call float @dx.op.binary.f32(i32 35, float %197, float %196)  ; FMax(a,b)
  %199 = fcmp fast oeq float %189, %198
  %200 = call float @dx.op.binary.f32(i32 35, float %190, float %62)  ; FMax(a,b)
  %201 = call float @dx.op.binary.f32(i32 36, float %200, float %61)  ; FMin(a,b)
  %202 = call float @dx.op.binary.f32(i32 36, float %190, float %62)  ; FMin(a,b)
  %203 = call float @dx.op.binary.f32(i32 35, float %202, float %201)  ; FMax(a,b)
  %204 = fcmp fast oeq float %190, %203
  %205 = and i1 %199, %204
  br i1 %205, label %206, label %213, !dx.controlflow.hints !24

; <label>:206                                     ; preds = %180
  %207 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %7, float %189, float %190, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %208 = extractvalue %dx.types.ResRet.f32 %207, 0
  %209 = fsub fast float 1.000000e+00, %208
  %210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %211 = extractvalue %dx.types.CBufRet.f32 %210, 0
  %212 = fcmp fast olt float %209, %211
  br label %213

; <label>:213                                     ; preds = %206, %180
  %214 = phi i1 [ %212, %206 ], [ false, %180 ]
  %215 = select i1 %214, float %192, float %193
  %216 = select i1 %214, float %192, float %194
  %217 = fadd fast float %192, %126
  %218 = fmul fast float %217, 0x3FD363C320000000
  %219 = fadd fast float %159, %91
  %220 = fmul fast float %219, 0x3FB3714BA0000000
  %221 = fadd fast float %218, %50
  %222 = fadd fast float %221, %220
  %223 = fadd fast float %215, %149
  %224 = fmul fast float %223, 0x3FD363C320000000
  %225 = fadd fast float %182, %114
  %226 = fmul fast float %225, 0x3FB3714BA0000000
  %227 = fadd fast float %224, %78
  %228 = fadd fast float %227, %226
  %229 = fadd fast float %216, %150
  %230 = fmul fast float %229, 0x3FD363C320000000
  %231 = fadd fast float %183, %115
  %232 = fmul fast float %231, 0x3FB3714BA0000000
  %233 = fadd fast float %230, %79
  %234 = fadd fast float %233, %232
  %235 = fmul fast float %222, 0x3FE9DA78C0000000
  %236 = fmul fast float %228, 0x3FE9DA78C0000000
  %237 = fmul fast float %234, 0x3FE9DA78C0000000
  %238 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %8, float %40, float %41, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %239 = extractvalue %dx.types.ResRet.f32 %238, 0
  %240 = bitcast float %239 to i32
  %241 = lshr i32 %240, 11
  %242 = and i32 %240, 2047
  %243 = and i32 %241, 2047
  %244 = uitofp i32 %242 to float
  %245 = uitofp i32 %243 to float
  %246 = fmul fast float %244, 0x3F50040100000000
  %247 = fmul fast float %245, 0x3F50040100000000
  %248 = fadd fast float %246, -1.000000e+00
  %249 = fadd fast float %247, -1.000000e+00
  %250 = lshr i32 %240, 22
  %251 = shl nuw nsw i32 %250, 5
  %252 = call float @dx.op.legacyF16ToF32(i32 131, i32 %251)  ; LegacyF16ToF32(value)
  %253 = call float @dx.op.unary.f32(i32 6, float %248)  ; FAbs(value)
  %254 = call float @dx.op.unary.f32(i32 6, float %249)  ; FAbs(value)
  %255 = fadd fast float %253, -5.000000e-01
  %256 = fadd fast float %254, -5.000000e-01
  %257 = fmul fast float %255, 2.000000e+00
  %258 = fmul fast float %256, 2.000000e+00
  %259 = call float @dx.op.unary.f32(i32 7, float %257)  ; Saturate(value)
  %260 = call float @dx.op.unary.f32(i32 7, float %258)  ; Saturate(value)
  %261 = fmul fast float %253, 2.000000e+00
  %262 = fmul fast float %254, 2.000000e+00
  %263 = call float @dx.op.unary.f32(i32 7, float %261)  ; Saturate(value)
  %264 = call float @dx.op.unary.f32(i32 7, float %262)  ; Saturate(value)
  %265 = fmul fast float %259, %259
  %266 = fmul fast float %265, 0x3FA48888A0000000
  %267 = fmul fast float %260, %260
  %268 = fmul fast float %267, 0x3FB2407960000000
  %269 = fmul fast float %263, 0x3F599999A0000000
  %270 = fmul fast float %264, 0x3F66C16C20000000
  %271 = fadd fast float %269, %266
  %272 = fadd fast float %270, %268
  %273 = fsub fast float -0.000000e+00, %271
  %274 = fsub fast float -0.000000e+00, %272
  %275 = fcmp fast olt float %248, 0.000000e+00
  %276 = fcmp fast olt float %249, 0.000000e+00
  %277 = select i1 %275, float 0.000000e+00, float 1.000000e+00
  %278 = select i1 %276, float 0.000000e+00, float 1.000000e+00
  %279 = fcmp fast une float %277, 0.000000e+00
  %280 = fcmp fast une float %278, 0.000000e+00
  %281 = select i1 %279, float %271, float %273
  %282 = select i1 %280, float %272, float %274
  %283 = fsub fast float %40, %281
  %284 = fsub fast float %41, %282
  %285 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %3, %dx.types.Handle %8, float %283, float %284, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %286 = extractvalue %dx.types.ResRet.f32 %285, 0
  %287 = extractvalue %dx.types.ResRet.f32 %285, 1
  %288 = extractvalue %dx.types.ResRet.f32 %285, 2
  %289 = extractvalue %dx.types.ResRet.f32 %285, 3
  %290 = bitcast float %286 to i32
  %291 = bitcast float %287 to i32
  %292 = bitcast float %288 to i32
  %293 = bitcast float %289 to i32
  %294 = call i32 @dx.op.binary.i32(i32 40, i32 %292, i32 %293)  ; UMin(a,b)
  %295 = call i32 @dx.op.binary.i32(i32 40, i32 %291, i32 %294)  ; UMin(a,b)
  %296 = call i32 @dx.op.binary.i32(i32 40, i32 %290, i32 %295)  ; UMin(a,b)
  %297 = lshr i32 %296, 11
  %298 = and i32 %296, 2047
  %299 = and i32 %297, 2047
  %300 = uitofp i32 %298 to float
  %301 = uitofp i32 %299 to float
  %302 = fmul fast float %300, 0x3F50040100000000
  %303 = fmul fast float %301, 0x3F50040100000000
  %304 = fadd fast float %302, -1.000000e+00
  %305 = fadd fast float %303, -1.000000e+00
  %306 = lshr i32 %296, 22
  %307 = shl nuw nsw i32 %306, 5
  %308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %307)  ; LegacyF16ToF32(value)
  %309 = call float @dx.op.unary.f32(i32 6, float %304)  ; FAbs(value)
  %310 = call float @dx.op.unary.f32(i32 6, float %305)  ; FAbs(value)
  %311 = fadd fast float %309, -5.000000e-01
  %312 = fadd fast float %310, -5.000000e-01
  %313 = fmul fast float %311, 2.000000e+00
  %314 = fmul fast float %312, 2.000000e+00
  %315 = call float @dx.op.unary.f32(i32 7, float %313)  ; Saturate(value)
  %316 = call float @dx.op.unary.f32(i32 7, float %314)  ; Saturate(value)
  %317 = fmul fast float %309, 2.000000e+00
  %318 = fmul fast float %310, 2.000000e+00
  %319 = call float @dx.op.unary.f32(i32 7, float %317)  ; Saturate(value)
  %320 = call float @dx.op.unary.f32(i32 7, float %318)  ; Saturate(value)
  %321 = fmul fast float %315, %315
  %322 = fmul fast float %321, 0x3FA48888A0000000
  %323 = fmul fast float %316, %316
  %324 = fmul fast float %323, 0x3FB2407960000000
  %325 = fmul fast float %319, 0x3F599999A0000000
  %326 = fmul fast float %320, 0x3F66C16C20000000
  %327 = fadd fast float %325, %322
  %328 = fadd fast float %326, %324
  %329 = fsub fast float -0.000000e+00, %327
  %330 = fsub fast float -0.000000e+00, %328
  %331 = fcmp fast olt float %304, 0.000000e+00
  %332 = fcmp fast olt float %305, 0.000000e+00
  %333 = select i1 %331, float 0.000000e+00, float 1.000000e+00
  %334 = select i1 %332, float 0.000000e+00, float 1.000000e+00
  %335 = fcmp fast une float %333, 0.000000e+00
  %336 = fcmp fast une float %334, 0.000000e+00
  %337 = select i1 %335, float %327, float %329
  %338 = select i1 %336, float %328, float %330
  %339 = fmul fast float %281, 3.000000e+00
  %340 = fmul fast float %282, 3.000000e+00
  %341 = fmul fast float %252, 0x3FA99999A0000000
  %342 = fadd fast float %308, %341
  %343 = fcmp fast olt float %252, %342
  %344 = fsub fast float %281, %337
  %345 = fsub fast float %282, %338
  %346 = fmul fast float %344, 1.920000e+03
  %347 = fmul fast float %345, 1.080000e+03
  %348 = call float @dx.op.dot2.f32(i32 54, float %346, float %347, float %346, float %347)  ; Dot2(ax,ay,bx,by)
  %349 = bitcast float %348 to i32
  %350 = ashr i32 %349, 1
  %351 = add nsw i32 %350, 532487669
  %352 = bitcast i32 %351 to float
  %353 = fmul fast float %352, 2.000000e+00
  %354 = fsub fast float 1.000000e+00, %353
  %355 = call float @dx.op.unary.f32(i32 7, float %354)  ; Saturate(value)
  %356 = select i1 %343, float 1.000000e+00, float %355
  %357 = fmul fast float %281, 1.920000e+03
  %358 = fmul fast float %282, 1.080000e+03
  %359 = call float @dx.op.unary.f32(i32 6, float %357)  ; FAbs(value)
  %360 = call float @dx.op.unary.f32(i32 6, float %358)  ; FAbs(value)
  %361 = call float @dx.op.binary.f32(i32 35, float %359, float %360)  ; FMax(a,b)
  %362 = fmul fast float %361, 0x3FB99999A0000000
  %363 = fsub fast float 8.000000e+00, %362
  %364 = call float @dx.op.unary.f32(i32 7, float %363)  ; Saturate(value)
  %365 = fmul fast float %364, %356
  %366 = fadd fast float %40, -5.000000e-01
  %367 = fsub fast float %366, %339
  %368 = fadd fast float %41, -5.000000e-01
  %369 = fsub fast float %368, %340
  %370 = call float @dx.op.unary.f32(i32 6, float %367)  ; FAbs(value)
  %371 = call float @dx.op.unary.f32(i32 6, float %369)  ; FAbs(value)
  %372 = fadd fast float %370, -5.000000e-01
  %373 = fadd fast float %371, -5.000000e-01
  %374 = call float @dx.op.binary.f32(i32 35, float %372, float %373)  ; FMax(a,b)
  %375 = fcmp fast olt float %374, 0.000000e+00
  %376 = select i1 %375, float 1.000000e+00, float 0.000000e+00
  %377 = fmul fast float %365, %376
  %378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %379 = extractvalue %dx.types.CBufRet.f32 %378, 1
  %380 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %7, float %283, float %284, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %381 = extractvalue %dx.types.ResRet.f32 %380, 0
  %382 = extractvalue %dx.types.ResRet.f32 %380, 1
  %383 = extractvalue %dx.types.ResRet.f32 %380, 2
  %384 = fmul fast float %381, %379
  %385 = fmul fast float %382, %379
  %386 = fmul fast float %383, %379
  %387 = fmul fast float %384, 0x3FDA65AF80000000
  %388 = call float @dx.op.tertiary.f32(i32 46, float 0x3FD6E286E0000000, float %385, float %387)  ; FMad(a,b,c)
  %389 = call float @dx.op.tertiary.f32(i32 46, float 0x3FC7189380000000, float %386, float %388)  ; FMad(a,b,c)
  %390 = fmul fast float %384, 0x3FCB38DDA0000000
  %391 = call float @dx.op.tertiary.f32(i32 46, float 0x3FE6E286E0000000, float %385, float %390)  ; FMad(a,b,c)
  %392 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB27A0FA0000000, float %386, float %391)  ; FMad(a,b,c)
  %393 = fmul fast float %384, 0x3F93CC4420000000
  %394 = call float @dx.op.tertiary.f32(i32 46, float 0x3FBE835DE0000000, float %385, float %393)  ; FMad(a,b,c)
  %395 = call float @dx.op.tertiary.f32(i32 46, float 0x3FEE68E420000000, float %386, float %394)  ; FMad(a,b,c)
  %396 = fmul fast float %222, 0x3FD553A980000000
  %397 = call float @dx.op.tertiary.f32(i32 46, float 0x3FD6E286E0000000, float %236, float %396)  ; FMad(a,b,c)
  %398 = call float @dx.op.tertiary.f32(i32 46, float 0x3FC7189380000000, float %237, float %397)  ; FMad(a,b,c)
  %399 = fmul fast float %222, 0x3FC5FE4740000000
  %400 = call float @dx.op.tertiary.f32(i32 46, float 0x3FE6E286E0000000, float %236, float %399)  ; FMad(a,b,c)
  %401 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB27A0FA0000000, float %237, float %400)  ; FMad(a,b,c)
  %402 = fmul fast float %222, 0x3F8FFD7F00000000
  %403 = call float @dx.op.tertiary.f32(i32 46, float 0x3FBE835DE0000000, float %236, float %402)  ; FMad(a,b,c)
  %404 = call float @dx.op.tertiary.f32(i32 46, float 0x3FEE68E420000000, float %237, float %403)  ; FMad(a,b,c)
  %405 = fadd fast float %401, %398
  %406 = fadd fast float %405, %404
  %407 = fdiv fast float 1.000000e+00, %406
  %408 = fmul fast float %407, %398
  %409 = call float @dx.op.unary.f32(i32 7, float %408)  ; Saturate(value)
  %410 = fmul fast float %407, %401
  %411 = call float @dx.op.unary.f32(i32 7, float %410)  ; Saturate(value)
  %412 = fadd fast float %392, %389
  %413 = fadd fast float %412, %395
  %414 = fdiv fast float 1.000000e+00, %413
  %415 = fmul fast float %414, %389
  %416 = call float @dx.op.unary.f32(i32 7, float %415)  ; Saturate(value)
  %417 = fmul fast float %414, %392
  %418 = call float @dx.op.unary.f32(i32 7, float %417)  ; Saturate(value)
  %419 = fsub fast float %409, %416
  %420 = fsub fast float %411, %418
  %421 = extractvalue %dx.types.CBufRet.f32 %378, 0
  %422 = call float @dx.op.dot2.f32(i32 54, float %419, float %420, float %419, float %420)  ; Dot2(ax,ay,bx,by)
  %423 = fmul fast float %421, %421
  %424 = fcmp fast olt float %422, %423
  %425 = extractvalue %dx.types.CBufRet.f32 %378, 2
  %426 = select i1 %424, float %377, float 0.000000e+00
  %427 = fadd fast float %425, -1.000000e+00
  %428 = fmul fast float %426, %427
  %429 = fadd fast float %428, 1.000000e+00
  %430 = fsub fast float %235, %384
  %431 = fsub fast float %236, %385
  %432 = fsub fast float %237, %386
  %433 = fmul fast float %429, %430
  %434 = fmul fast float %429, %431
  %435 = fmul fast float %429, %432
  %436 = fadd fast float %433, %384
  %437 = fadd fast float %434, %385
  %438 = fadd fast float %435, %386
  %439 = call float @dx.op.binary.f32(i32 35, float %436, float -3.225500e+04)  ; FMax(a,b)
  %440 = call float @dx.op.binary.f32(i32 35, float %437, float -3.225500e+04)  ; FMax(a,b)
  %441 = call float @dx.op.binary.f32(i32 35, float %438, float -3.225500e+04)  ; FMax(a,b)
  %442 = call float @dx.op.binary.f32(i32 36, float %439, float 3.225500e+04)  ; FMin(a,b)
  %443 = call float @dx.op.binary.f32(i32 36, float %440, float 3.225500e+04)  ; FMin(a,b)
  %444 = call float @dx.op.binary.f32(i32 36, float %441, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %26, i32 %27, i32 undef, float %442, float %443, float %444, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %445

; <label>:445                                     ; preds = %213, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #1

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

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
!dx.entryPoints = !{!20}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !12, !14, !17}
!5 = !{!6, !8, !9, !10, !11}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 0, i32 5, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<float>"* undef, !"", i32 0, i32 4, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<float>"* undef, !"", i32 0, i32 3, i32 1, i32 2, i32 0, !7}
!12 = !{!13}
!13 = !{i32 0, %"class.RWTexture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!14 = !{!15, !16}
!15 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!16 = !{i32 1, %VeilSampleConsts* undef, !"", i32 0, i32 0, i32 1, i32 80, null}
!17 = !{!18, !19}
!18 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!19 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!20 = !{void ()* @cs_downsample_veil, !"cs_downsample_veil", null, !4, !21}
!21 = !{i32 0, i64 256, i32 4, !22}
!22 = !{i32 8, i32 8, i32 1}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 1}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 1}

