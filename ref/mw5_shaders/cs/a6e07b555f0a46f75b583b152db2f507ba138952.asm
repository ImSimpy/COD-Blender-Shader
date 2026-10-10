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
; shader hash: ec25cf6c1e0d1a536196c3d75786323c
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
  br i1 %16, label %17, label %287, !dx.controlflow.hints !19

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
  %46 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 228)  ; CBufferLoadLegacy(handle,regIndex)
  %47 = extractvalue %dx.types.CBufRet.f32 %46, 2
  %48 = extractvalue %dx.types.CBufRet.f32 %46, 0
  %49 = call float @dx.op.binary.f32(i32 35, float %36, float %48)  ; FMax(a,b)
  %50 = call float @dx.op.binary.f32(i32 36, float %49, float %47)  ; FMin(a,b)
  %51 = call float @dx.op.binary.f32(i32 36, float %36, float %48)  ; FMin(a,b)
  %52 = call float @dx.op.binary.f32(i32 35, float %51, float %50)  ; FMax(a,b)
  %53 = fcmp fast oeq float %36, %52
  %54 = extractvalue %dx.types.CBufRet.f32 %46, 3
  %55 = extractvalue %dx.types.CBufRet.f32 %46, 1
  %56 = call float @dx.op.binary.f32(i32 35, float %37, float %55)  ; FMax(a,b)
  %57 = call float @dx.op.binary.f32(i32 36, float %56, float %54)  ; FMin(a,b)
  %58 = call float @dx.op.binary.f32(i32 36, float %37, float %55)  ; FMin(a,b)
  %59 = call float @dx.op.binary.f32(i32 35, float %58, float %57)  ; FMax(a,b)
  %60 = fcmp fast oeq float %37, %59
  %61 = and i1 %53, %60
  br i1 %61, label %62, label %69, !dx.controlflow.hints !20

; <label>:62                                      ; preds = %17
  %63 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %36, float %37, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %64 = extractvalue %dx.types.ResRet.f32 %63, 0
  %65 = fsub fast float 1.000000e+00, %64
  %66 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %67 = extractvalue %dx.types.CBufRet.f32 %66, 0
  %68 = fcmp fast olt float %65, %67
  br label %69

; <label>:69                                      ; preds = %62, %17
  %70 = phi i1 [ %68, %62 ], [ false, %17 ]
  %71 = select i1 %70, float %43, float %44
  %72 = select i1 %70, float %43, float %45
  %73 = call float @dx.op.binary.f32(i32 35, float %71, float %72)  ; FMax(a,b)
  %74 = call float @dx.op.binary.f32(i32 35, float %43, float %73)  ; FMax(a,b)
  %75 = fadd fast float %74, 1.000000e+00
  %76 = bitcast float %75 to i32
  %77 = sub nsw i32 2129859010, %76
  %78 = bitcast i32 %77 to float
  %79 = fmul fast float %78, 0x3FDEB71760000000
  %80 = fmul fast float %79, %43
  %81 = fmul fast float %79, %71
  %82 = fmul fast float %79, %72
  %83 = fmul fast float %41, 0x3FE921FB60000000
  %84 = fadd fast float %83, 0x3FE921FB60000000
  %85 = call float @dx.op.unary.f32(i32 13, float %84)  ; Sin(value)
  %86 = call float @dx.op.unary.f32(i32 12, float %84)  ; Cos(value)
  %87 = fmul fast float %30, 0x3FFE2F0140000000
  %88 = fmul fast float %87, %85
  %89 = fmul fast float %31, 0x3FFE2F0140000000
  %90 = fmul fast float %89, %86
  %91 = fadd fast float %88, %36
  %92 = fadd fast float %90, %37
  %93 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %4, float %91, float %92, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %94 = extractvalue %dx.types.ResRet.f32 %93, 0
  %95 = extractvalue %dx.types.ResRet.f32 %93, 1
  %96 = extractvalue %dx.types.ResRet.f32 %93, 2
  %97 = call float @dx.op.binary.f32(i32 35, float %91, float %48)  ; FMax(a,b)
  %98 = call float @dx.op.binary.f32(i32 36, float %97, float %47)  ; FMin(a,b)
  %99 = call float @dx.op.binary.f32(i32 36, float %91, float %48)  ; FMin(a,b)
  %100 = call float @dx.op.binary.f32(i32 35, float %99, float %98)  ; FMax(a,b)
  %101 = fcmp fast oeq float %91, %100
  %102 = call float @dx.op.binary.f32(i32 35, float %92, float %55)  ; FMax(a,b)
  %103 = call float @dx.op.binary.f32(i32 36, float %102, float %54)  ; FMin(a,b)
  %104 = call float @dx.op.binary.f32(i32 36, float %92, float %55)  ; FMin(a,b)
  %105 = call float @dx.op.binary.f32(i32 35, float %104, float %103)  ; FMax(a,b)
  %106 = fcmp fast oeq float %92, %105
  %107 = and i1 %101, %106
  br i1 %107, label %108, label %115, !dx.controlflow.hints !20

; <label>:108                                     ; preds = %69
  %109 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %91, float %92, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %110 = extractvalue %dx.types.ResRet.f32 %109, 0
  %111 = fsub fast float 1.000000e+00, %110
  %112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %113 = extractvalue %dx.types.CBufRet.f32 %112, 0
  %114 = fcmp fast olt float %111, %113
  br label %115

; <label>:115                                     ; preds = %108, %69
  %116 = phi i1 [ %114, %108 ], [ false, %69 ]
  %117 = select i1 %116, float %94, float %95
  %118 = select i1 %116, float %94, float %96
  %119 = call float @dx.op.binary.f32(i32 35, float %117, float %118)  ; FMax(a,b)
  %120 = call float @dx.op.binary.f32(i32 35, float %94, float %119)  ; FMax(a,b)
  %121 = fadd fast float %120, 1.000000e+00
  %122 = bitcast float %121 to i32
  %123 = sub nsw i32 2129859010, %122
  %124 = bitcast i32 %123 to float
  %125 = fmul fast float %124, 0x3FB3714BA0000000
  %126 = fmul fast float %125, %94
  %127 = fmul fast float %125, %117
  %128 = fmul fast float %125, %118
  %129 = fadd fast float %126, %80
  %130 = fadd fast float %127, %81
  %131 = fadd fast float %128, %82
  %132 = fadd fast float %125, %79
  %133 = fadd fast float %83, 0x4002D97C80000000
  %134 = call float @dx.op.unary.f32(i32 13, float %133)  ; Sin(value)
  %135 = call float @dx.op.unary.f32(i32 12, float %133)  ; Cos(value)
  %136 = fmul fast float %30, 0x3FEE145200000000
  %137 = fmul fast float %136, %134
  %138 = fmul fast float %31, 0x3FEE145200000000
  %139 = fmul fast float %138, %135
  %140 = fadd fast float %137, %36
  %141 = fadd fast float %139, %37
  %142 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %4, float %140, float %141, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %143 = extractvalue %dx.types.ResRet.f32 %142, 0
  %144 = extractvalue %dx.types.ResRet.f32 %142, 1
  %145 = extractvalue %dx.types.ResRet.f32 %142, 2
  %146 = call float @dx.op.binary.f32(i32 35, float %140, float %48)  ; FMax(a,b)
  %147 = call float @dx.op.binary.f32(i32 36, float %146, float %47)  ; FMin(a,b)
  %148 = call float @dx.op.binary.f32(i32 36, float %140, float %48)  ; FMin(a,b)
  %149 = call float @dx.op.binary.f32(i32 35, float %148, float %147)  ; FMax(a,b)
  %150 = fcmp fast oeq float %140, %149
  %151 = call float @dx.op.binary.f32(i32 35, float %141, float %55)  ; FMax(a,b)
  %152 = call float @dx.op.binary.f32(i32 36, float %151, float %54)  ; FMin(a,b)
  %153 = call float @dx.op.binary.f32(i32 36, float %141, float %55)  ; FMin(a,b)
  %154 = call float @dx.op.binary.f32(i32 35, float %153, float %152)  ; FMax(a,b)
  %155 = fcmp fast oeq float %141, %154
  %156 = and i1 %150, %155
  br i1 %156, label %157, label %164, !dx.controlflow.hints !20

; <label>:157                                     ; preds = %115
  %158 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %140, float %141, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %159 = extractvalue %dx.types.ResRet.f32 %158, 0
  %160 = fsub fast float 1.000000e+00, %159
  %161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %162 = extractvalue %dx.types.CBufRet.f32 %161, 0
  %163 = fcmp fast olt float %160, %162
  br label %164

; <label>:164                                     ; preds = %157, %115
  %165 = phi i1 [ %163, %157 ], [ false, %115 ]
  %166 = select i1 %165, float %143, float %144
  %167 = select i1 %165, float %143, float %145
  %168 = call float @dx.op.binary.f32(i32 35, float %166, float %167)  ; FMax(a,b)
  %169 = call float @dx.op.binary.f32(i32 35, float %143, float %168)  ; FMax(a,b)
  %170 = fadd fast float %169, 1.000000e+00
  %171 = bitcast float %170 to i32
  %172 = sub nsw i32 2129859010, %171
  %173 = bitcast i32 %172 to float
  %174 = fmul fast float %173, 0x3FD363C320000000
  %175 = fmul fast float %174, %143
  %176 = fmul fast float %174, %166
  %177 = fmul fast float %174, %167
  %178 = fadd fast float %129, %175
  %179 = fadd fast float %130, %176
  %180 = fadd fast float %131, %177
  %181 = fadd fast float %132, %174
  %182 = fadd fast float %83, 0x400F6A7A40000000
  %183 = call float @dx.op.unary.f32(i32 13, float %182)  ; Sin(value)
  %184 = call float @dx.op.unary.f32(i32 12, float %182)  ; Cos(value)
  %185 = fmul fast float %87, %183
  %186 = fmul fast float %89, %184
  %187 = fadd fast float %185, %36
  %188 = fadd fast float %186, %37
  %189 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %4, float %187, float %188, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %190 = extractvalue %dx.types.ResRet.f32 %189, 0
  %191 = extractvalue %dx.types.ResRet.f32 %189, 1
  %192 = extractvalue %dx.types.ResRet.f32 %189, 2
  %193 = call float @dx.op.binary.f32(i32 35, float %187, float %48)  ; FMax(a,b)
  %194 = call float @dx.op.binary.f32(i32 36, float %193, float %47)  ; FMin(a,b)
  %195 = call float @dx.op.binary.f32(i32 36, float %187, float %48)  ; FMin(a,b)
  %196 = call float @dx.op.binary.f32(i32 35, float %195, float %194)  ; FMax(a,b)
  %197 = fcmp fast oeq float %187, %196
  %198 = call float @dx.op.binary.f32(i32 35, float %188, float %55)  ; FMax(a,b)
  %199 = call float @dx.op.binary.f32(i32 36, float %198, float %54)  ; FMin(a,b)
  %200 = call float @dx.op.binary.f32(i32 36, float %188, float %55)  ; FMin(a,b)
  %201 = call float @dx.op.binary.f32(i32 35, float %200, float %199)  ; FMax(a,b)
  %202 = fcmp fast oeq float %188, %201
  %203 = and i1 %197, %202
  br i1 %203, label %204, label %211, !dx.controlflow.hints !20

; <label>:204                                     ; preds = %164
  %205 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %187, float %188, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %206 = extractvalue %dx.types.ResRet.f32 %205, 0
  %207 = fsub fast float 1.000000e+00, %206
  %208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %209 = extractvalue %dx.types.CBufRet.f32 %208, 0
  %210 = fcmp fast olt float %207, %209
  br label %211

; <label>:211                                     ; preds = %204, %164
  %212 = phi i1 [ %210, %204 ], [ false, %164 ]
  %213 = select i1 %212, float %190, float %191
  %214 = select i1 %212, float %190, float %192
  %215 = call float @dx.op.binary.f32(i32 35, float %213, float %214)  ; FMax(a,b)
  %216 = call float @dx.op.binary.f32(i32 35, float %190, float %215)  ; FMax(a,b)
  %217 = fadd fast float %216, 1.000000e+00
  %218 = bitcast float %217 to i32
  %219 = sub nsw i32 2129859010, %218
  %220 = bitcast i32 %219 to float
  %221 = fmul fast float %220, 0x3FB3714BA0000000
  %222 = fmul fast float %221, %190
  %223 = fmul fast float %221, %213
  %224 = fmul fast float %221, %214
  %225 = fadd fast float %178, %222
  %226 = fadd fast float %179, %223
  %227 = fadd fast float %180, %224
  %228 = fadd fast float %181, %221
  %229 = fadd fast float %83, 0x4015FDBC00000000
  %230 = call float @dx.op.unary.f32(i32 13, float %229)  ; Sin(value)
  %231 = call float @dx.op.unary.f32(i32 12, float %229)  ; Cos(value)
  %232 = fmul fast float %136, %230
  %233 = fmul fast float %138, %231
  %234 = fadd fast float %232, %36
  %235 = fadd fast float %233, %37
  %236 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %4, float %234, float %235, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %237 = extractvalue %dx.types.ResRet.f32 %236, 0
  %238 = extractvalue %dx.types.ResRet.f32 %236, 1
  %239 = extractvalue %dx.types.ResRet.f32 %236, 2
  %240 = call float @dx.op.binary.f32(i32 35, float %234, float %48)  ; FMax(a,b)
  %241 = call float @dx.op.binary.f32(i32 36, float %240, float %47)  ; FMin(a,b)
  %242 = call float @dx.op.binary.f32(i32 36, float %234, float %48)  ; FMin(a,b)
  %243 = call float @dx.op.binary.f32(i32 35, float %242, float %241)  ; FMax(a,b)
  %244 = fcmp fast oeq float %234, %243
  %245 = call float @dx.op.binary.f32(i32 35, float %235, float %55)  ; FMax(a,b)
  %246 = call float @dx.op.binary.f32(i32 36, float %245, float %54)  ; FMin(a,b)
  %247 = call float @dx.op.binary.f32(i32 36, float %235, float %55)  ; FMin(a,b)
  %248 = call float @dx.op.binary.f32(i32 35, float %247, float %246)  ; FMax(a,b)
  %249 = fcmp fast oeq float %235, %248
  %250 = and i1 %244, %249
  br i1 %250, label %251, label %258, !dx.controlflow.hints !20

; <label>:251                                     ; preds = %211
  %252 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %234, float %235, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %253 = extractvalue %dx.types.ResRet.f32 %252, 0
  %254 = fsub fast float 1.000000e+00, %253
  %255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %256 = extractvalue %dx.types.CBufRet.f32 %255, 0
  %257 = fcmp fast olt float %254, %256
  br label %258

; <label>:258                                     ; preds = %251, %211
  %259 = phi i1 [ %257, %251 ], [ false, %211 ]
  %260 = select i1 %259, float %237, float %238
  %261 = select i1 %259, float %237, float %239
  %262 = call float @dx.op.binary.f32(i32 35, float %260, float %261)  ; FMax(a,b)
  %263 = call float @dx.op.binary.f32(i32 35, float %237, float %262)  ; FMax(a,b)
  %264 = fadd fast float %263, 1.000000e+00
  %265 = bitcast float %264 to i32
  %266 = sub nsw i32 2129859010, %265
  %267 = bitcast i32 %266 to float
  %268 = fmul fast float %267, 0x3FD363C320000000
  %269 = fmul fast float %268, %237
  %270 = fmul fast float %268, %260
  %271 = fmul fast float %268, %261
  %272 = fadd fast float %225, %269
  %273 = fadd fast float %226, %270
  %274 = fadd fast float %227, %271
  %275 = fadd fast float %228, %268
  %276 = call float @dx.op.binary.f32(i32 35, float %275, float 0x3EE4F8B580000000)  ; FMax(a,b)
  %277 = fdiv fast float 1.000000e+00, %276
  %278 = fmul fast float %272, %277
  %279 = fmul fast float %273, %277
  %280 = fmul fast float %274, %277
  %281 = call float @dx.op.binary.f32(i32 35, float %278, float -3.225500e+04)  ; FMax(a,b)
  %282 = call float @dx.op.binary.f32(i32 35, float %279, float -3.225500e+04)  ; FMax(a,b)
  %283 = call float @dx.op.binary.f32(i32 35, float %280, float -3.225500e+04)  ; FMax(a,b)
  %284 = call float @dx.op.binary.f32(i32 36, float %281, float 3.225500e+04)  ; FMin(a,b)
  %285 = call float @dx.op.binary.f32(i32 36, float %282, float 3.225500e+04)  ; FMin(a,b)
  %286 = call float @dx.op.binary.f32(i32 36, float %283, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %22, i32 %23, i32 undef, float %284, float %285, float %286, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %287

; <label>:287                                     ; preds = %258, %0
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

