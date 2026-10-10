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
; shader hash: c7ab949cf5073933fecadb0a0522939d
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
;                                   sampler      NA          NA      S0             s2     1
;                                   texture     f32          2d      T0             t1     1
;                                   texture     f32          2d      T1             t0     1
;                                       UAV     f32          2d      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
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
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %8 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %9 = uitofp i32 %7 to float
  %10 = uitofp i32 %8 to float
  %11 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %12 = extractvalue %dx.types.CBufRet.f32 %11, 2
  %13 = extractvalue %dx.types.CBufRet.f32 %11, 3
  %14 = fcmp fast olt float %9, %12
  %15 = fcmp fast olt float %10, %13
  %16 = and i1 %14, %15
  br i1 %16, label %17, label %384, !dx.controlflow.hints !19

; <label>:17                                      ; preds = %0
  %18 = extractvalue %dx.types.CBufRet.f32 %11, 0
  %19 = extractvalue %dx.types.CBufRet.f32 %11, 1
  %20 = fadd fast float %18, %9
  %21 = fadd fast float %19, %10
  %22 = fptoui float %20 to i32
  %23 = fptoui float %21 to i32
  %24 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %25 = extractvalue %dx.types.CBufRet.f32 %24, 2
  %26 = extractvalue %dx.types.CBufRet.f32 %24, 3
  %27 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %28 = extractvalue %dx.types.CBufRet.f32 %27, 2
  %29 = extractvalue %dx.types.CBufRet.f32 %27, 3
  %30 = fmul fast float %28, %25
  %31 = fmul fast float %29, %26
  %32 = uitofp i32 %22 to float
  %33 = uitofp i32 %23 to float
  %34 = fadd fast float %32, 5.000000e-01
  %35 = fadd fast float %33, 5.000000e-01
  %36 = fmul fast float %28, %34
  %37 = fmul fast float %29, %35
  %38 = call float @dx.op.dot2.f32(i32 54, float %34, float %35, float 0x3FB12E2860000000, float 0x3F77E8B200000000)  ; Dot2(ax,ay,bx,by)
  %39 = call float @dx.op.unary.f32(i32 22, float %38)  ; Frc(value)
  %40 = fmul fast float %39, 0x404A7DD040000000
  %41 = call float @dx.op.unary.f32(i32 22, float %40)  ; Frc(value)
  %42 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %4, float %36, float %37, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %43 = extractvalue %dx.types.ResRet.f32 %42, 0
  %44 = extractvalue %dx.types.ResRet.f32 %42, 1
  %45 = extractvalue %dx.types.ResRet.f32 %42, 2
  %46 = fmul fast float %43, 0x3FDEB71760000000
  %47 = fmul fast float %44, 0x3FDEB71760000000
  %48 = fmul fast float %45, 0x3FDEB71760000000
  %49 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 228)  ; CBufferLoadLegacy(handle,regIndex)
  %50 = extractvalue %dx.types.CBufRet.f32 %49, 2
  %51 = extractvalue %dx.types.CBufRet.f32 %49, 0
  %52 = call float @dx.op.binary.f32(i32 35, float %36, float %51)  ; FMax(a,b)
  %53 = call float @dx.op.binary.f32(i32 36, float %52, float %50)  ; FMin(a,b)
  %54 = call float @dx.op.binary.f32(i32 36, float %36, float %51)  ; FMin(a,b)
  %55 = call float @dx.op.binary.f32(i32 35, float %54, float %53)  ; FMax(a,b)
  %56 = fcmp fast oeq float %36, %55
  %57 = extractvalue %dx.types.CBufRet.f32 %49, 3
  %58 = extractvalue %dx.types.CBufRet.f32 %49, 1
  %59 = call float @dx.op.binary.f32(i32 35, float %37, float %58)  ; FMax(a,b)
  %60 = call float @dx.op.binary.f32(i32 36, float %59, float %57)  ; FMin(a,b)
  %61 = call float @dx.op.binary.f32(i32 36, float %37, float %58)  ; FMin(a,b)
  %62 = call float @dx.op.binary.f32(i32 35, float %61, float %60)  ; FMax(a,b)
  %63 = fcmp fast oeq float %37, %62
  %64 = and i1 %56, %63
  br i1 %64, label %65, label %72, !dx.controlflow.hints !20

; <label>:65                                      ; preds = %17
  %66 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %36, float %37, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %67 = extractvalue %dx.types.ResRet.f32 %66, 0
  %68 = fsub fast float 1.000000e+00, %67
  %69 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %70 = extractvalue %dx.types.CBufRet.f32 %69, 0
  %71 = fcmp fast olt float %68, %70
  br label %72

; <label>:72                                      ; preds = %65, %17
  %73 = phi i1 [ %71, %65 ], [ false, %17 ]
  %74 = select i1 %73, float %46, float %47
  %75 = select i1 %73, float %46, float %48
  %76 = fmul fast float %41, 0x3FD921FB60000000
  %77 = fadd fast float %76, 0x3FD921FB60000000
  %78 = call float @dx.op.unary.f32(i32 13, float %77)  ; Sin(value)
  %79 = call float @dx.op.unary.f32(i32 12, float %77)  ; Cos(value)
  %80 = fmul fast float %30, 0x3FFE2F0140000000
  %81 = fmul fast float %80, %78
  %82 = fmul fast float %31, 0x3FFE2F0140000000
  %83 = fmul fast float %82, %79
  %84 = fadd fast float %81, %36
  %85 = fadd fast float %83, %37
  %86 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %4, float %84, float %85, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %87 = extractvalue %dx.types.ResRet.f32 %86, 0
  %88 = extractvalue %dx.types.ResRet.f32 %86, 1
  %89 = extractvalue %dx.types.ResRet.f32 %86, 2
  %90 = call float @dx.op.binary.f32(i32 35, float %84, float %51)  ; FMax(a,b)
  %91 = call float @dx.op.binary.f32(i32 36, float %90, float %50)  ; FMin(a,b)
  %92 = call float @dx.op.binary.f32(i32 36, float %84, float %51)  ; FMin(a,b)
  %93 = call float @dx.op.binary.f32(i32 35, float %92, float %91)  ; FMax(a,b)
  %94 = fcmp fast oeq float %84, %93
  %95 = call float @dx.op.binary.f32(i32 35, float %85, float %58)  ; FMax(a,b)
  %96 = call float @dx.op.binary.f32(i32 36, float %95, float %57)  ; FMin(a,b)
  %97 = call float @dx.op.binary.f32(i32 36, float %85, float %58)  ; FMin(a,b)
  %98 = call float @dx.op.binary.f32(i32 35, float %97, float %96)  ; FMax(a,b)
  %99 = fcmp fast oeq float %85, %98
  %100 = and i1 %94, %99
  br i1 %100, label %101, label %108, !dx.controlflow.hints !20

; <label>:101                                     ; preds = %72
  %102 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %84, float %85, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %103 = extractvalue %dx.types.ResRet.f32 %102, 0
  %104 = fsub fast float 1.000000e+00, %103
  %105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %106 = extractvalue %dx.types.CBufRet.f32 %105, 0
  %107 = fcmp fast olt float %104, %106
  br label %108

; <label>:108                                     ; preds = %101, %72
  %109 = phi i1 [ %107, %101 ], [ false, %72 ]
  %110 = select i1 %109, float %87, float %88
  %111 = select i1 %109, float %87, float %89
  %112 = fadd fast float %76, 0x3FF2D97C80000000
  %113 = call float @dx.op.unary.f32(i32 13, float %112)  ; Sin(value)
  %114 = call float @dx.op.unary.f32(i32 12, float %112)  ; Cos(value)
  %115 = fmul fast float %30, 0x3FEE145200000000
  %116 = fmul fast float %115, %113
  %117 = fmul fast float %31, 0x3FEE145200000000
  %118 = fmul fast float %117, %114
  %119 = fadd fast float %116, %36
  %120 = fadd fast float %118, %37
  %121 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %4, float %119, float %120, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %122 = extractvalue %dx.types.ResRet.f32 %121, 0
  %123 = extractvalue %dx.types.ResRet.f32 %121, 1
  %124 = extractvalue %dx.types.ResRet.f32 %121, 2
  %125 = call float @dx.op.binary.f32(i32 35, float %119, float %51)  ; FMax(a,b)
  %126 = call float @dx.op.binary.f32(i32 36, float %125, float %50)  ; FMin(a,b)
  %127 = call float @dx.op.binary.f32(i32 36, float %119, float %51)  ; FMin(a,b)
  %128 = call float @dx.op.binary.f32(i32 35, float %127, float %126)  ; FMax(a,b)
  %129 = fcmp fast oeq float %119, %128
  %130 = call float @dx.op.binary.f32(i32 35, float %120, float %58)  ; FMax(a,b)
  %131 = call float @dx.op.binary.f32(i32 36, float %130, float %57)  ; FMin(a,b)
  %132 = call float @dx.op.binary.f32(i32 36, float %120, float %58)  ; FMin(a,b)
  %133 = call float @dx.op.binary.f32(i32 35, float %132, float %131)  ; FMax(a,b)
  %134 = fcmp fast oeq float %120, %133
  %135 = and i1 %129, %134
  br i1 %135, label %136, label %143, !dx.controlflow.hints !20

; <label>:136                                     ; preds = %108
  %137 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %119, float %120, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %138 = extractvalue %dx.types.ResRet.f32 %137, 0
  %139 = fsub fast float 1.000000e+00, %138
  %140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %141 = extractvalue %dx.types.CBufRet.f32 %140, 0
  %142 = fcmp fast olt float %139, %141
  br label %143

; <label>:143                                     ; preds = %136, %108
  %144 = phi i1 [ %142, %136 ], [ false, %108 ]
  %145 = select i1 %144, float %122, float %123
  %146 = select i1 %144, float %122, float %124
  %147 = fadd fast float %76, 0x3FFF6A7A40000000
  %148 = call float @dx.op.unary.f32(i32 13, float %147)  ; Sin(value)
  %149 = call float @dx.op.unary.f32(i32 12, float %147)  ; Cos(value)
  %150 = fmul fast float %80, %148
  %151 = fmul fast float %82, %149
  %152 = fadd fast float %150, %36
  %153 = fadd fast float %151, %37
  %154 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %4, float %152, float %153, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %155 = extractvalue %dx.types.ResRet.f32 %154, 0
  %156 = extractvalue %dx.types.ResRet.f32 %154, 1
  %157 = extractvalue %dx.types.ResRet.f32 %154, 2
  %158 = call float @dx.op.binary.f32(i32 35, float %152, float %51)  ; FMax(a,b)
  %159 = call float @dx.op.binary.f32(i32 36, float %158, float %50)  ; FMin(a,b)
  %160 = call float @dx.op.binary.f32(i32 36, float %152, float %51)  ; FMin(a,b)
  %161 = call float @dx.op.binary.f32(i32 35, float %160, float %159)  ; FMax(a,b)
  %162 = fcmp fast oeq float %152, %161
  %163 = call float @dx.op.binary.f32(i32 35, float %153, float %58)  ; FMax(a,b)
  %164 = call float @dx.op.binary.f32(i32 36, float %163, float %57)  ; FMin(a,b)
  %165 = call float @dx.op.binary.f32(i32 36, float %153, float %58)  ; FMin(a,b)
  %166 = call float @dx.op.binary.f32(i32 35, float %165, float %164)  ; FMax(a,b)
  %167 = fcmp fast oeq float %153, %166
  %168 = and i1 %162, %167
  br i1 %168, label %169, label %176, !dx.controlflow.hints !20

; <label>:169                                     ; preds = %143
  %170 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %152, float %153, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %171 = extractvalue %dx.types.ResRet.f32 %170, 0
  %172 = fsub fast float 1.000000e+00, %171
  %173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %174 = extractvalue %dx.types.CBufRet.f32 %173, 0
  %175 = fcmp fast olt float %172, %174
  br label %176

; <label>:176                                     ; preds = %169, %143
  %177 = phi i1 [ %175, %169 ], [ false, %143 ]
  %178 = select i1 %177, float %155, float %156
  %179 = select i1 %177, float %155, float %157
  %180 = fadd fast float %76, 0x4005FDBC00000000
  %181 = call float @dx.op.unary.f32(i32 13, float %180)  ; Sin(value)
  %182 = call float @dx.op.unary.f32(i32 12, float %180)  ; Cos(value)
  %183 = fmul fast float %115, %181
  %184 = fmul fast float %117, %182
  %185 = fadd fast float %183, %36
  %186 = fadd fast float %184, %37
  %187 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %4, float %185, float %186, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %188 = extractvalue %dx.types.ResRet.f32 %187, 0
  %189 = extractvalue %dx.types.ResRet.f32 %187, 1
  %190 = extractvalue %dx.types.ResRet.f32 %187, 2
  %191 = call float @dx.op.binary.f32(i32 35, float %185, float %51)  ; FMax(a,b)
  %192 = call float @dx.op.binary.f32(i32 36, float %191, float %50)  ; FMin(a,b)
  %193 = call float @dx.op.binary.f32(i32 36, float %185, float %51)  ; FMin(a,b)
  %194 = call float @dx.op.binary.f32(i32 35, float %193, float %192)  ; FMax(a,b)
  %195 = fcmp fast oeq float %185, %194
  %196 = call float @dx.op.binary.f32(i32 35, float %186, float %58)  ; FMax(a,b)
  %197 = call float @dx.op.binary.f32(i32 36, float %196, float %57)  ; FMin(a,b)
  %198 = call float @dx.op.binary.f32(i32 36, float %186, float %58)  ; FMin(a,b)
  %199 = call float @dx.op.binary.f32(i32 35, float %198, float %197)  ; FMax(a,b)
  %200 = fcmp fast oeq float %186, %199
  %201 = and i1 %195, %200
  br i1 %201, label %202, label %209, !dx.controlflow.hints !20

; <label>:202                                     ; preds = %176
  %203 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %185, float %186, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %204 = extractvalue %dx.types.ResRet.f32 %203, 0
  %205 = fsub fast float 1.000000e+00, %204
  %206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %207 = extractvalue %dx.types.CBufRet.f32 %206, 0
  %208 = fcmp fast olt float %205, %207
  br label %209

; <label>:209                                     ; preds = %202, %176
  %210 = phi i1 [ %208, %202 ], [ false, %176 ]
  %211 = select i1 %210, float %188, float %189
  %212 = select i1 %210, float %188, float %190
  %213 = fadd fast float %76, 0x400C463AC0000000
  %214 = call float @dx.op.unary.f32(i32 13, float %213)  ; Sin(value)
  %215 = call float @dx.op.unary.f32(i32 12, float %213)  ; Cos(value)
  %216 = fmul fast float %80, %214
  %217 = fmul fast float %82, %215
  %218 = fadd fast float %216, %36
  %219 = fadd fast float %217, %37
  %220 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %4, float %218, float %219, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %221 = extractvalue %dx.types.ResRet.f32 %220, 0
  %222 = extractvalue %dx.types.ResRet.f32 %220, 1
  %223 = extractvalue %dx.types.ResRet.f32 %220, 2
  %224 = call float @dx.op.binary.f32(i32 35, float %218, float %51)  ; FMax(a,b)
  %225 = call float @dx.op.binary.f32(i32 36, float %224, float %50)  ; FMin(a,b)
  %226 = call float @dx.op.binary.f32(i32 36, float %218, float %51)  ; FMin(a,b)
  %227 = call float @dx.op.binary.f32(i32 35, float %226, float %225)  ; FMax(a,b)
  %228 = fcmp fast oeq float %218, %227
  %229 = call float @dx.op.binary.f32(i32 35, float %219, float %58)  ; FMax(a,b)
  %230 = call float @dx.op.binary.f32(i32 36, float %229, float %57)  ; FMin(a,b)
  %231 = call float @dx.op.binary.f32(i32 36, float %219, float %58)  ; FMin(a,b)
  %232 = call float @dx.op.binary.f32(i32 35, float %231, float %230)  ; FMax(a,b)
  %233 = fcmp fast oeq float %219, %232
  %234 = and i1 %228, %233
  br i1 %234, label %235, label %242, !dx.controlflow.hints !20

; <label>:235                                     ; preds = %209
  %236 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %218, float %219, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %237 = extractvalue %dx.types.ResRet.f32 %236, 0
  %238 = fsub fast float 1.000000e+00, %237
  %239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %240 = extractvalue %dx.types.CBufRet.f32 %239, 0
  %241 = fcmp fast olt float %238, %240
  br label %242

; <label>:242                                     ; preds = %235, %209
  %243 = phi i1 [ %241, %235 ], [ false, %209 ]
  %244 = select i1 %243, float %221, float %222
  %245 = select i1 %243, float %221, float %223
  %246 = fadd fast float %76, 0x4011475CE0000000
  %247 = call float @dx.op.unary.f32(i32 13, float %246)  ; Sin(value)
  %248 = call float @dx.op.unary.f32(i32 12, float %246)  ; Cos(value)
  %249 = fmul fast float %115, %247
  %250 = fmul fast float %117, %248
  %251 = fadd fast float %249, %36
  %252 = fadd fast float %250, %37
  %253 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %4, float %251, float %252, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %254 = extractvalue %dx.types.ResRet.f32 %253, 0
  %255 = extractvalue %dx.types.ResRet.f32 %253, 1
  %256 = extractvalue %dx.types.ResRet.f32 %253, 2
  %257 = call float @dx.op.binary.f32(i32 35, float %251, float %51)  ; FMax(a,b)
  %258 = call float @dx.op.binary.f32(i32 36, float %257, float %50)  ; FMin(a,b)
  %259 = call float @dx.op.binary.f32(i32 36, float %251, float %51)  ; FMin(a,b)
  %260 = call float @dx.op.binary.f32(i32 35, float %259, float %258)  ; FMax(a,b)
  %261 = fcmp fast oeq float %251, %260
  %262 = call float @dx.op.binary.f32(i32 35, float %252, float %58)  ; FMax(a,b)
  %263 = call float @dx.op.binary.f32(i32 36, float %262, float %57)  ; FMin(a,b)
  %264 = call float @dx.op.binary.f32(i32 36, float %252, float %58)  ; FMin(a,b)
  %265 = call float @dx.op.binary.f32(i32 35, float %264, float %263)  ; FMax(a,b)
  %266 = fcmp fast oeq float %252, %265
  %267 = and i1 %261, %266
  br i1 %267, label %268, label %275, !dx.controlflow.hints !20

; <label>:268                                     ; preds = %242
  %269 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %251, float %252, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %270 = extractvalue %dx.types.ResRet.f32 %269, 0
  %271 = fsub fast float 1.000000e+00, %270
  %272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %273 = extractvalue %dx.types.CBufRet.f32 %272, 0
  %274 = fcmp fast olt float %271, %273
  br label %275

; <label>:275                                     ; preds = %268, %242
  %276 = phi i1 [ %274, %268 ], [ false, %242 ]
  %277 = select i1 %276, float %254, float %255
  %278 = select i1 %276, float %254, float %256
  %279 = fadd fast float %76, 0x40146B9C40000000
  %280 = call float @dx.op.unary.f32(i32 13, float %279)  ; Sin(value)
  %281 = call float @dx.op.unary.f32(i32 12, float %279)  ; Cos(value)
  %282 = fmul fast float %80, %280
  %283 = fmul fast float %82, %281
  %284 = fadd fast float %282, %36
  %285 = fadd fast float %283, %37
  %286 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %4, float %284, float %285, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %287 = extractvalue %dx.types.ResRet.f32 %286, 0
  %288 = extractvalue %dx.types.ResRet.f32 %286, 1
  %289 = extractvalue %dx.types.ResRet.f32 %286, 2
  %290 = call float @dx.op.binary.f32(i32 35, float %284, float %51)  ; FMax(a,b)
  %291 = call float @dx.op.binary.f32(i32 36, float %290, float %50)  ; FMin(a,b)
  %292 = call float @dx.op.binary.f32(i32 36, float %284, float %51)  ; FMin(a,b)
  %293 = call float @dx.op.binary.f32(i32 35, float %292, float %291)  ; FMax(a,b)
  %294 = fcmp fast oeq float %284, %293
  %295 = call float @dx.op.binary.f32(i32 35, float %285, float %58)  ; FMax(a,b)
  %296 = call float @dx.op.binary.f32(i32 36, float %295, float %57)  ; FMin(a,b)
  %297 = call float @dx.op.binary.f32(i32 36, float %285, float %58)  ; FMin(a,b)
  %298 = call float @dx.op.binary.f32(i32 35, float %297, float %296)  ; FMax(a,b)
  %299 = fcmp fast oeq float %285, %298
  %300 = and i1 %294, %299
  br i1 %300, label %301, label %308, !dx.controlflow.hints !20

; <label>:301                                     ; preds = %275
  %302 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %284, float %285, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %303 = extractvalue %dx.types.ResRet.f32 %302, 0
  %304 = fsub fast float 1.000000e+00, %303
  %305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %306 = extractvalue %dx.types.CBufRet.f32 %305, 0
  %307 = fcmp fast olt float %304, %306
  br label %308

; <label>:308                                     ; preds = %301, %275
  %309 = phi i1 [ %307, %301 ], [ false, %275 ]
  %310 = select i1 %309, float %287, float %288
  %311 = select i1 %309, float %287, float %289
  %312 = fadd fast float %76, 0x40178FDBA0000000
  %313 = call float @dx.op.unary.f32(i32 13, float %312)  ; Sin(value)
  %314 = call float @dx.op.unary.f32(i32 12, float %312)  ; Cos(value)
  %315 = fmul fast float %115, %313
  %316 = fmul fast float %117, %314
  %317 = fadd fast float %315, %36
  %318 = fadd fast float %316, %37
  %319 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %4, float %317, float %318, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %320 = extractvalue %dx.types.ResRet.f32 %319, 0
  %321 = extractvalue %dx.types.ResRet.f32 %319, 1
  %322 = extractvalue %dx.types.ResRet.f32 %319, 2
  %323 = call float @dx.op.binary.f32(i32 35, float %317, float %51)  ; FMax(a,b)
  %324 = call float @dx.op.binary.f32(i32 36, float %323, float %50)  ; FMin(a,b)
  %325 = call float @dx.op.binary.f32(i32 36, float %317, float %51)  ; FMin(a,b)
  %326 = call float @dx.op.binary.f32(i32 35, float %325, float %324)  ; FMax(a,b)
  %327 = fcmp fast oeq float %317, %326
  %328 = call float @dx.op.binary.f32(i32 35, float %318, float %58)  ; FMax(a,b)
  %329 = call float @dx.op.binary.f32(i32 36, float %328, float %57)  ; FMin(a,b)
  %330 = call float @dx.op.binary.f32(i32 36, float %318, float %58)  ; FMin(a,b)
  %331 = call float @dx.op.binary.f32(i32 35, float %330, float %329)  ; FMax(a,b)
  %332 = fcmp fast oeq float %318, %331
  %333 = and i1 %327, %332
  br i1 %333, label %334, label %341, !dx.controlflow.hints !20

; <label>:334                                     ; preds = %308
  %335 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %317, float %318, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %336 = extractvalue %dx.types.ResRet.f32 %335, 0
  %337 = fsub fast float 1.000000e+00, %336
  %338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %339 = extractvalue %dx.types.CBufRet.f32 %338, 0
  %340 = fcmp fast olt float %337, %339
  br label %341

; <label>:341                                     ; preds = %334, %308
  %342 = phi i1 [ %340, %334 ], [ false, %308 ]
  %343 = select i1 %342, float %320, float %321
  %344 = select i1 %342, float %320, float %322
  %345 = fadd fast float %188, %122
  %346 = fadd fast float %345, %254
  %347 = fadd fast float %346, %320
  %348 = fmul fast float %347, 0x3FD363C320000000
  %349 = fadd fast float %155, %87
  %350 = fadd fast float %349, %221
  %351 = fadd fast float %350, %287
  %352 = fmul fast float %351, 0x3FB3714BA0000000
  %353 = fadd fast float %348, %46
  %354 = fadd fast float %353, %352
  %355 = fadd fast float %211, %145
  %356 = fadd fast float %355, %277
  %357 = fadd fast float %356, %343
  %358 = fmul fast float %357, 0x3FD363C320000000
  %359 = fadd fast float %178, %110
  %360 = fadd fast float %359, %244
  %361 = fadd fast float %360, %310
  %362 = fmul fast float %361, 0x3FB3714BA0000000
  %363 = fadd fast float %358, %74
  %364 = fadd fast float %363, %362
  %365 = fadd fast float %212, %146
  %366 = fadd fast float %365, %278
  %367 = fadd fast float %366, %344
  %368 = fmul fast float %367, 0x3FD363C320000000
  %369 = fadd fast float %179, %111
  %370 = fadd fast float %369, %245
  %371 = fadd fast float %370, %311
  %372 = fmul fast float %371, 0x3FB3714BA0000000
  %373 = fadd fast float %368, %75
  %374 = fadd fast float %373, %372
  %375 = fmul fast float %354, 0x3FE0091740000000
  %376 = fmul fast float %364, 0x3FE0091740000000
  %377 = fmul fast float %374, 0x3FE0091740000000
  %378 = call float @dx.op.binary.f32(i32 35, float %375, float -3.225500e+04)  ; FMax(a,b)
  %379 = call float @dx.op.binary.f32(i32 35, float %376, float -3.225500e+04)  ; FMax(a,b)
  %380 = call float @dx.op.binary.f32(i32 35, float %377, float -3.225500e+04)  ; FMax(a,b)
  %381 = call float @dx.op.binary.f32(i32 36, float %378, float 3.225500e+04)  ; FMin(a,b)
  %382 = call float @dx.op.binary.f32(i32 36, float %379, float 3.225500e+04)  ; FMin(a,b)
  %383 = call float @dx.op.binary.f32(i32 36, float %380, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %22, i32 %23, i32 undef, float %381, float %382, float %383, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %384

; <label>:384                                     ; preds = %341, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
!4 = !{!5, !9, !11, !14}
!5 = !{!6, !8}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!9 = !{!10}
!10 = !{i32 0, %"class.RWTexture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!11 = !{!12, !13}
!12 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!13 = !{i32 1, %VeilSampleConsts* undef, !"", i32 0, i32 0, i32 1, i32 80, null}
!14 = !{!15}
!15 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!16 = !{void ()* @cs_downsample_veil, !"cs_downsample_veil", null, !4, !17}
!17 = !{i32 0, i64 256, i32 4, !18}
!18 = !{i32 8, i32 8, i32 1}
!19 = distinct !{!19, !"dx.controlflow.hints", i32 1}
!20 = distinct !{!20, !"dx.controlflow.hints", i32 1}

