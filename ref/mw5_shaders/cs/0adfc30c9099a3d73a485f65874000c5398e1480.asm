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
; shader hash: 7fc2f082fb6ea61929e86b31ec4385a0
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
;   [112 x i8] (type annotation not present)
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
;                                   texture     f32          2d      T0            t27     1
;                                   texture     f32          2d      T1            t13     1
;                                       UAV     f32          2d      U0             u7     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
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
%FogRaymarchingConstBuffer_decl = type { %struct.FogRaymarchingConstBuffer }
%struct.FogRaymarchingConstBuffer = type { <2 x float>, <2 x float>, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, float, float, i32, i32, i32, i32 }
%struct.SamplerState = type { i32 }

define void @cs_fog_raymarching_air_brfog() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %8 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %9 = uitofp i32 %7 to float
  %10 = uitofp i32 %8 to float
  %11 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %12 = extractvalue %dx.types.CBufRet.f32 %11, 2
  %13 = fmul fast float %12, 0x3FE3C6EF40000000
  %14 = frem fast float %9, 2.560000e+02
  %15 = frem fast float %10, 2.560000e+02
  %16 = fptoui float %14 to i32
  %17 = fptoui float %15 to i32
  %18 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %16, i32 %17, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %19 = extractvalue %dx.types.ResRet.f32 %18, 1
  %20 = fadd fast float %19, %13
  %21 = call float @dx.op.unary.f32(i32 22, float %20)  ; Frc(value)
  %22 = fadd fast float %9, 5.000000e-01
  %23 = fadd fast float %10, 5.000000e-01
  %24 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %25 = extractvalue %dx.types.CBufRet.f32 %24, 2
  %26 = extractvalue %dx.types.CBufRet.f32 %24, 3
  %27 = fmul fast float %25, %22
  %28 = fmul fast float %26, %23
  %29 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %30 = extractvalue %dx.types.CBufRet.f32 %29, 0
  %31 = extractvalue %dx.types.CBufRet.f32 %29, 1
  %32 = extractvalue %dx.types.CBufRet.f32 %29, 2
  %33 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %34 = extractvalue %dx.types.CBufRet.f32 %33, 0
  %35 = extractvalue %dx.types.CBufRet.f32 %33, 1
  %36 = fmul fast float %27, %34
  %37 = fmul fast float %28, %35
  %38 = fadd fast float %36, %30
  %39 = fadd fast float %37, %31
  %40 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %41 = extractvalue %dx.types.CBufRet.f32 %40, 2
  %42 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %43 = extractvalue %dx.types.CBufRet.f32 %42, 0
  %44 = extractvalue %dx.types.CBufRet.f32 %42, 1
  %45 = extractvalue %dx.types.CBufRet.f32 %42, 2
  %46 = fsub fast float -0.000000e+00, %43
  %47 = fsub fast float -0.000000e+00, %44
  %48 = fsub fast float -0.000000e+00, %45
  %49 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %50 = extractvalue %dx.types.CBufRet.f32 %49, 3
  %51 = fsub fast float -0.000000e+00, %38
  %52 = fsub fast float -0.000000e+00, %39
  %53 = fsub fast float %50, %32
  %54 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %51, float %52, float %53)  ; Dot3(ax,ay,az,bx,by,bz)
  %55 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %46, float %47, float %48)  ; Dot3(ax,ay,az,bx,by,bz)
  %56 = fdiv fast float 1.000000e+00, %55
  %57 = fmul fast float %56, %54
  %58 = fcmp fast olt float %57, 0.000000e+00
  %59 = fcmp olt float %45, -0.000000e+00
  %60 = and i1 %59, %58
  br i1 %60, label %65, label %61, !dx.controlflow.hints !19

; <label>:61                                      ; preds = %0
  %62 = fcmp ogt float %45, -0.000000e+00
  br i1 %62, label %63, label %65, !dx.controlflow.hints !20

; <label>:63                                      ; preds = %61
  %64 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %57)  ; FMax(a,b)
  br label %65

; <label>:65                                      ; preds = %63, %61, %0
  %66 = phi float [ 0.000000e+00, %0 ], [ %64, %63 ], [ 0.000000e+00, %61 ]
  %67 = phi float [ 0.000000e+00, %0 ], [ 0x47EFFFFFE0000000, %63 ], [ %57, %61 ]
  %68 = fcmp fast oeq float %67, 0.000000e+00
  br i1 %68, label %72, label %69, !dx.controlflow.hints !21

; <label>:69                                      ; preds = %65
  %70 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %66)  ; FMin(a,b)
  %71 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %67)  ; FMax(a,b)
  br label %72

; <label>:72                                      ; preds = %69, %65
  %73 = phi float [ %71, %69 ], [ -1.000000e+00, %65 ]
  %74 = phi i32 [ 1, %69 ], [ 0, %65 ]
  %75 = phi float [ %70, %69 ], [ 0x47EFFFFFE0000000, %65 ]
  %76 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %77 = extractvalue %dx.types.CBufRet.f32 %76, 2
  %78 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %79 = extractvalue %dx.types.CBufRet.f32 %78, 3
  %80 = fsub fast float %77, %32
  %81 = fadd fast float %80, %79
  %82 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %51, float %52, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %83 = fmul fast float %56, %82
  %84 = fcmp fast olt float %83, 0.000000e+00
  %85 = and i1 %59, %84
  br i1 %85, label %90, label %86, !dx.controlflow.hints !22

; <label>:86                                      ; preds = %72
  %87 = fcmp ogt float %45, -0.000000e+00
  br i1 %87, label %88, label %90, !dx.controlflow.hints !23

; <label>:88                                      ; preds = %86
  %89 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %83)  ; FMax(a,b)
  br label %90

; <label>:90                                      ; preds = %88, %86, %72
  %91 = phi float [ 0.000000e+00, %72 ], [ %89, %88 ], [ 0.000000e+00, %86 ]
  %92 = phi float [ 0.000000e+00, %72 ], [ 0x47EFFFFFE0000000, %88 ], [ %83, %86 ]
  %93 = fcmp fast oeq float %92, 0.000000e+00
  br i1 %93, label %97, label %94, !dx.controlflow.hints !24

; <label>:94                                      ; preds = %90
  %95 = call float @dx.op.binary.f32(i32 36, float %75, float %91)  ; FMin(a,b)
  %96 = call float @dx.op.binary.f32(i32 35, float %73, float %92)  ; FMax(a,b)
  br label %97

; <label>:97                                      ; preds = %94, %90
  %98 = phi i32 [ 1, %94 ], [ 0, %90 ]
  %99 = phi float [ %96, %94 ], [ %73, %90 ]
  %100 = phi float [ %95, %94 ], [ %75, %90 ]
  %101 = call float @dx.op.binary.f32(i32 36, float %41, float %99)  ; FMin(a,b)
  %102 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %100)  ; FMax(a,b)
  %103 = extractvalue %dx.types.CBufRet.f32 %49, 1
  %104 = fmul fast float %21, 2.000000e+00
  %105 = fadd fast float %104, -1.000000e+00
  %106 = fmul fast float %103, %105
  %107 = fadd fast float %106, %102
  %108 = fcmp fast olt float %107, %101
  %109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %110 = extractvalue %dx.types.CBufRet.f32 %109, 2
  %111 = fcmp fast olt float %110, 1.000000e+00
  %112 = and i1 %111, %108
  br i1 %112, label %113, label %454

; <label>:113                                     ; preds = %97
  %114 = fmul fast float %107, %48
  %115 = fadd fast float %114, %32
  %116 = fmul fast float %107, %47
  %117 = fadd fast float %116, %39
  %118 = fmul fast float %107, %46
  %119 = fadd fast float %118, %38
  br label %120

; <label>:120                                     ; preds = %436, %113
  %121 = phi i32 [ %323, %436 ], [ undef, %113 ]
  %122 = phi float [ %324, %436 ], [ undef, %113 ]
  %123 = phi float [ %437, %436 ], [ 1.000000e+00, %113 ]
  %124 = phi float [ %446, %436 ], [ %119, %113 ]
  %125 = phi float [ %447, %436 ], [ %117, %113 ]
  %126 = phi float [ %448, %436 ], [ %115, %113 ]
  %127 = phi float [ %442, %436 ], [ %107, %113 ]
  %128 = phi i32 [ %438, %436 ], [ 0, %113 ]
  %129 = phi float [ %439, %436 ], [ 0.000000e+00, %113 ]
  %130 = phi float [ %440, %436 ], [ 0.000000e+00, %113 ]
  %131 = phi float [ %441, %436 ], [ 0.000000e+00, %113 ]
  %132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %133 = extractvalue %dx.types.CBufRet.f32 %132, 1
  %134 = icmp eq i32 %74, 0
  br i1 %134, label %147, label %135, !dx.controlflow.hints !25

; <label>:135                                     ; preds = %120
  %136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %137 = extractvalue %dx.types.CBufRet.f32 %136, 3
  %138 = extractvalue %dx.types.CBufRet.f32 %136, 2
  %139 = fmul fast float %137, %127
  %140 = fdiv fast float %139, %101
  %141 = fadd fast float %140, 1.000000e+00
  %142 = call float @dx.op.unary.f32(i32 23, float %141)  ; Log(value)
  %143 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %142)  ; FMin(a,b)
  %144 = fmul fast float %138, %101
  %145 = fmul fast float %144, %143
  %146 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %145)  ; FMin(a,b)
  br label %147

; <label>:147                                     ; preds = %135, %120
  %148 = phi float [ %146, %135 ], [ 0x47EFFFFFE0000000, %120 ]
  %149 = icmp eq i32 %98, 0
  br i1 %149, label %322, label %150, !dx.controlflow.hints !26

; <label>:150                                     ; preds = %147
  %151 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %152 = extractvalue %dx.types.CBufRet.i32 %151, 1
  %153 = and i32 %152, 1
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %312, !dx.controlflow.hints !27

; <label>:155                                     ; preds = %150
  %156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %157 = extractvalue %dx.types.CBufRet.f32 %156, 2
  %158 = extractvalue %dx.types.CBufRet.f32 %156, 3
  %159 = fmul fast float %157, %124
  %160 = fmul fast float %158, %125
  %161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %162 = extractvalue %dx.types.CBufRet.f32 %161, 0
  %163 = extractvalue %dx.types.CBufRet.f32 %161, 1
  %164 = fadd fast float %159, %162
  %165 = fadd fast float %160, %163
  %166 = call float @dx.op.unary.f32(i32 7, float %164)  ; Saturate(value)
  %167 = call float @dx.op.unary.f32(i32 7, float %165)  ; Saturate(value)
  %168 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %166, float %167, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %169 = extractvalue %dx.types.ResRet.f32 %168, 0
  %170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %171 = extractvalue %dx.types.CBufRet.f32 %170, 0
  %172 = fmul fast float %171, %169
  %173 = fsub fast float %164, %166
  %174 = fsub fast float %165, %167
  %175 = extractvalue %dx.types.CBufRet.f32 %156, 0
  %176 = extractvalue %dx.types.CBufRet.f32 %156, 1
  %177 = fmul fast float %175, %173
  %178 = fmul fast float %176, %174
  %179 = fmul fast float %177, %177
  %180 = fmul fast float %178, %178
  %181 = fadd fast float %179, %180
  %182 = call float @dx.op.unary.f32(i32 24, float %181)  ; Sqrt(value)
  %183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %184 = extractvalue %dx.types.CBufRet.f32 %183, 3
  %185 = fmul fast float %184, %182
  %186 = call float @dx.op.unary.f32(i32 7, float %185)  ; Saturate(value)
  %187 = extractvalue %dx.types.CBufRet.f32 %183, 2
  %188 = fsub fast float %187, %172
  %189 = fmul fast float %188, %186
  %190 = extractvalue %dx.types.CBufRet.f32 %170, 1
  %191 = fsub fast float %126, %172
  %192 = fsub fast float %191, %190
  %193 = fsub fast float %192, %189
  %194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %195 = extractvalue %dx.types.CBufRet.f32 %194, 2
  %196 = fsub fast float %193, %195
  %197 = fcmp fast olt float %196, 0.000000e+00
  %198 = call float @dx.op.unary.f32(i32 6, float %196)  ; FAbs(value)
  %199 = extractvalue %dx.types.CBufRet.i32 %151, 0
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %254, label %201

; <label>:201                                     ; preds = %155
  br label %202

; <label>:202                                     ; preds = %241, %201
  %203 = phi i32 [ %247, %241 ], [ 1, %201 ]
  %204 = phi float [ %249, %241 ], [ 0x47EFFFFFE0000000, %201 ]
  %205 = phi i32 [ %250, %241 ], [ 0, %201 ]
  %206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %207 = extractvalue %dx.types.CBufRet.f32 %206, 1
  %208 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %209 = extractvalue %dx.types.CBufRet.i32 %208, 1
  %210 = and i32 %209, 8
  %211 = icmp eq i32 %210, 0
  %212 = fcmp fast ogt float %207, %193
  %213 = or i1 %212, %211
  %214 = add i32 %205, 171
  %215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 %214)  ; CBufferLoadLegacy(handle,regIndex)
  %216 = extractvalue %dx.types.CBufRet.f32 %215, 0
  %217 = extractvalue %dx.types.CBufRet.f32 %215, 1
  %218 = extractvalue %dx.types.CBufRet.f32 %215, 2
  br i1 %213, label %219, label %225, !dx.controlflow.hints !28

; <label>:219                                     ; preds = %202
  %220 = fsub fast float %216, %124
  %221 = fsub fast float %217, %125
  %222 = fmul fast float %220, %220
  %223 = fmul fast float %221, %221
  %224 = fadd fast float %222, %223
  br label %241

; <label>:225                                     ; preds = %202
  %226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %227 = extractvalue %dx.types.CBufRet.f32 %226, 2
  %228 = extractvalue %dx.types.CBufRet.f32 %206, 2
  %229 = fmul fast float %228, %227
  %230 = fsub fast float %229, %207
  %231 = fdiv fast float %218, %230
  %232 = fsub fast float %124, %216
  %233 = fsub fast float %125, %217
  %234 = fsub fast float %193, %207
  %235 = fmul fast float %231, %234
  %236 = fmul fast float %232, %232
  %237 = fmul fast float %233, %233
  %238 = fadd fast float %236, %237
  %239 = fmul fast float %235, %235
  %240 = fadd fast float %238, %239
  br label %241

; <label>:241                                     ; preds = %225, %219
  %242 = phi float [ %224, %219 ], [ %240, %225 ]
  %243 = call float @dx.op.unary.f32(i32 24, float %242)  ; Sqrt(value)
  %244 = fsub float %218, %243
  %245 = fcmp fast olt float %244, 0.000000e+00
  %246 = zext i1 %245 to i32
  %247 = and i32 %246, %203
  %248 = call float @dx.op.unary.f32(i32 6, float %244)  ; FAbs(value)
  %249 = call float @dx.op.binary.f32(i32 36, float %204, float %248)  ; FMin(a,b)
  %250 = add i32 %205, 1
  %251 = extractvalue %dx.types.CBufRet.i32 %208, 0
  %252 = icmp ult i32 %250, %251
  br i1 %252, label %202, label %253

; <label>:253                                     ; preds = %241
  br label %254

; <label>:254                                     ; preds = %253, %155
  %255 = phi i32 [ 1, %155 ], [ %247, %253 ]
  %256 = phi float [ 0x47EFFFFFE0000000, %155 ], [ %249, %253 ]
  br label %257

; <label>:257                                     ; preds = %257, %254
  %258 = phi i32 [ %255, %254 ], [ %297, %257 ]
  %259 = phi float [ 0x47EFFFFFE0000000, %254 ], [ %299, %257 ]
  %260 = phi i32 [ 0, %254 ], [ %300, %257 ]
  %261 = add nuw nsw i32 %260, 191
  %262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 %261)  ; CBufferLoadLegacy(handle,regIndex)
  %263 = extractvalue %dx.types.CBufRet.f32 %262, 0
  %264 = extractvalue %dx.types.CBufRet.f32 %262, 1
  %265 = extractvalue %dx.types.CBufRet.f32 %262, 2
  %266 = add nuw nsw i32 %260, 195
  %267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 %266)  ; CBufferLoadLegacy(handle,regIndex)
  %268 = extractvalue %dx.types.CBufRet.f32 %267, 0
  %269 = extractvalue %dx.types.CBufRet.f32 %267, 1
  %270 = extractvalue %dx.types.CBufRet.f32 %267, 2
  %271 = fsub fast float %124, %263
  %272 = fsub fast float %125, %264
  %273 = fsub fast float %193, %265
  %274 = call float @dx.op.unary.f32(i32 6, float %271)  ; FAbs(value)
  %275 = call float @dx.op.unary.f32(i32 6, float %272)  ; FAbs(value)
  %276 = call float @dx.op.unary.f32(i32 6, float %273)  ; FAbs(value)
  %277 = fsub fast float %274, %268
  %278 = fsub fast float %275, %269
  %279 = fsub fast float %276, %270
  %280 = call float @dx.op.binary.f32(i32 35, float %277, float 0.000000e+00)  ; FMax(a,b)
  %281 = call float @dx.op.binary.f32(i32 35, float %278, float 0.000000e+00)  ; FMax(a,b)
  %282 = call float @dx.op.binary.f32(i32 35, float %279, float 0.000000e+00)  ; FMax(a,b)
  %283 = fmul fast float %280, %280
  %284 = fmul fast float %281, %281
  %285 = fadd fast float %284, %283
  %286 = fmul fast float %282, %282
  %287 = fadd fast float %285, %286
  %288 = call float @dx.op.unary.f32(i32 24, float %287)  ; Sqrt(value)
  %289 = call float @dx.op.binary.f32(i32 35, float %278, float %279)  ; FMax(a,b)
  %290 = call float @dx.op.binary.f32(i32 35, float %277, float %289)  ; FMax(a,b)
  %291 = call float @dx.op.binary.f32(i32 36, float %290, float 0.000000e+00)  ; FMin(a,b)
  %292 = fadd fast float %291, %288
  %293 = fsub fast float -0.000000e+00, %292
  %294 = fcmp ogt float %292, -0.000000e+00
  %295 = icmp ne i32 %258, 0
  %296 = and i1 %295, %294
  %297 = zext i1 %296 to i32
  %298 = call float @dx.op.unary.f32(i32 6, float %293)  ; FAbs(value)
  %299 = call float @dx.op.binary.f32(i32 36, float %259, float %298)  ; FMin(a,b)
  %300 = add nuw nsw i32 %260, 1
  %301 = icmp eq i32 %300, 4
  br i1 %301, label %302, label %257

; <label>:302                                     ; preds = %257
  %303 = call float @dx.op.binary.f32(i32 36, float %198, float %299)  ; FMin(a,b)
  %304 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %305 = extractvalue %dx.types.CBufRet.i32 %304, 1
  %306 = and i32 %305, 2
  %307 = icmp ne i32 %306, 0
  %308 = xor i1 %296, %307
  %309 = call float @dx.op.binary.f32(i32 36, float %303, float %256)  ; FMin(a,b)
  %310 = and i1 %308, %197
  %311 = zext i1 %310 to i32
  br label %312

; <label>:312                                     ; preds = %302, %150
  %313 = phi i32 [ %121, %150 ], [ %311, %302 ]
  %314 = phi float [ 0.000000e+00, %150 ], [ %309, %302 ]
  %315 = phi float [ %126, %150 ], [ %193, %302 ]
  %316 = icmp ne i32 %313, 0
  %317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %318 = extractvalue %dx.types.CBufRet.f32 %317, 3
  %319 = call float @dx.op.binary.f32(i32 35, float %314, float %318)  ; FMax(a,b)
  %320 = call float @dx.op.binary.f32(i32 36, float %148, float %319)  ; FMin(a,b)
  %321 = zext i1 %316 to i32
  br label %322

; <label>:322                                     ; preds = %312, %147
  %323 = phi i32 [ %313, %312 ], [ %121, %147 ]
  %324 = phi float [ %315, %312 ], [ %122, %147 ]
  %325 = phi float [ %320, %312 ], [ %148, %147 ]
  %326 = phi i32 [ %321, %312 ], [ 0, %147 ]
  %327 = extractvalue %dx.types.CBufRet.f32 %132, 2
  %328 = fmul fast float %327, %127
  %329 = call float @dx.op.unary.f32(i32 23, float %328)  ; Log(value)
  %330 = fmul fast float %329, 0x3FE62E4300000000
  %331 = call float @dx.op.binary.f32(i32 35, float %330, float 1.000000e+00)  ; FMax(a,b)
  %332 = fmul fast float %331, %325
  %333 = call float @dx.op.binary.f32(i32 36, float %332, float 0x47EFFFFFE0000000)  ; FMin(a,b)
  %334 = call float @dx.op.binary.f32(i32 35, float %333, float %133)  ; FMax(a,b)
  %335 = fadd fast float %101, 0x3F1A36E2E0000000
  %336 = fsub fast float %335, %127
  %337 = call float @dx.op.binary.f32(i32 36, float %336, float %334)  ; FMin(a,b)
  br i1 %134, label %385, label %338, !dx.controlflow.hints !29

; <label>:338                                     ; preds = %322
  %339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %340 = extractvalue %dx.types.CBufRet.f32 %339, 0
  %341 = fsub fast float -0.000000e+00, %124
  %342 = fsub fast float -0.000000e+00, %125
  %343 = fsub fast float %340, %126
  %344 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %341, float %342, float %343)  ; Dot3(ax,ay,az,bx,by,bz)
  %345 = fmul fast float %56, %344
  %346 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %345)  ; FMax(a,b)
  %347 = fcmp ogt float %45, -0.000000e+00
  %348 = call float @dx.op.binary.f32(i32 36, float %337, float %346)  ; FMin(a,b)
  br i1 %347, label %350, label %349, !dx.controlflow.hints !30

; <label>:349                                     ; preds = %338
  br label %350

; <label>:350                                     ; preds = %349, %338
  %351 = phi float [ 0.000000e+00, %349 ], [ %348, %338 ]
  %352 = phi float [ %348, %349 ], [ %337, %338 ]
  %353 = phi float [ %348, %349 ], [ 0.000000e+00, %338 ]
  %354 = phi float [ %337, %349 ], [ %348, %338 ]
  %355 = fsub fast float %352, %351
  %356 = extractvalue %dx.types.CBufRet.f32 %339, 1
  %357 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %356)  ; FMin(a,b)
  %358 = fsub fast float %126, %340
  %359 = fmul fast float %357, 0x3FF7154760000000
  %360 = fmul fast float %359, %358
  %361 = call float @dx.op.unary.f32(i32 21, float %360)  ; Exp(value)
  %362 = fmul fast float %45, 0xBFF7154760000000
  %363 = fmul fast float %362, %354
  %364 = fmul fast float %363, %357
  %365 = call float @dx.op.unary.f32(i32 21, float %364)  ; Exp(value)
  %366 = fmul fast float %362, %353
  %367 = fmul fast float %366, %357
  %368 = call float @dx.op.unary.f32(i32 21, float %367)  ; Exp(value)
  %369 = fsub fast float %365, %368
  %370 = fmul fast float %369, %361
  %371 = fmul fast float %357, %48
  %372 = fdiv fast float %370, %371
  %373 = fadd fast float %355, %372
  %374 = call float @dx.op.unary.f32(i32 6, float %48)  ; FAbs(value)
  %375 = fcmp fast olt float %374, 0x3F0FFB4800000000
  %376 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %358)  ; FMax(a,b)
  %377 = fmul fast float %376, 0x3FF7154760000000
  %378 = fmul fast float %377, %356
  %379 = call float @dx.op.unary.f32(i32 21, float %378)  ; Exp(value)
  %380 = fmul fast float %379, %337
  %381 = select i1 %375, float %380, float %373
  %382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %383 = extractvalue %dx.types.CBufRet.f32 %382, 1
  %384 = fmul fast float %381, %383
  br label %385

; <label>:385                                     ; preds = %350, %322
  %386 = phi float [ %384, %350 ], [ 0.000000e+00, %322 ]
  %387 = icmp eq i32 %326, 0
  br i1 %387, label %419, label %388, !dx.controlflow.hints !31

; <label>:388                                     ; preds = %385
  %389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %390 = extractvalue %dx.types.CBufRet.f32 %389, 1
  %391 = fsub fast float %337, %390
  %392 = extractvalue %dx.types.CBufRet.f32 %389, 3
  %393 = fmul fast float %391, %392
  %394 = call float @dx.op.unary.f32(i32 7, float %393)  ; Saturate(value)
  %395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %396 = extractvalue %dx.types.CBufRet.f32 %395, 3
  %397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %398 = extractvalue %dx.types.CBufRet.f32 %397, 2
  %399 = fsub fast float %398, %324
  %400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %401 = extractvalue %dx.types.CBufRet.f32 %400, 3
  %402 = fmul fast float %399, %401
  %403 = call float @dx.op.unary.f32(i32 7, float %402)  ; Saturate(value)
  %404 = fmul fast float %403, %396
  %405 = extractvalue %dx.types.CBufRet.f32 %400, 0
  %406 = fsub fast float %127, %405
  %407 = extractvalue %dx.types.CBufRet.f32 %400, 1
  %408 = fmul fast float %406, %407
  %409 = call float @dx.op.unary.f32(i32 7, float %408)  ; Saturate(value)
  %410 = fsub fast float 1.000000e+00, %394
  %411 = fmul fast float %409, %410
  %412 = fadd fast float %411, %394
  %413 = extractvalue %dx.types.CBufRet.f32 %389, 0
  %414 = fsub fast float %404, %413
  %415 = fmul fast float %414, %412
  %416 = fadd fast float %415, %413
  %417 = fmul fast float %416, %337
  %418 = fadd fast float %417, %386
  br label %419

; <label>:419                                     ; preds = %388, %385
  %420 = phi float [ %418, %388 ], [ %386, %385 ]
  %421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %422 = extractvalue %dx.types.CBufRet.f32 %421, 1
  %423 = fcmp fast ogt float %420, %422
  br i1 %423, label %424, label %436, !dx.controlflow.hints !32

; <label>:424                                     ; preds = %419
  %425 = fmul fast float %420, 0xBFF7154760000000
  %426 = call float @dx.op.unary.f32(i32 21, float %425)  ; Exp(value)
  %427 = call float @dx.op.unary.f32(i32 7, float %426)  ; Saturate(value)
  %428 = icmp eq i32 %128, 0
  br i1 %428, label %429, label %430, !dx.controlflow.hints !33

; <label>:429                                     ; preds = %424
  br label %430

; <label>:430                                     ; preds = %429, %424
  %431 = phi i32 [ %128, %424 ], [ 1, %429 ]
  %432 = phi float [ %129, %424 ], [ %127, %429 ]
  %433 = fadd fast float %337, %130
  %434 = fadd fast float %420, %131
  %435 = fmul fast float %427, %123
  br label %436

; <label>:436                                     ; preds = %430, %419
  %437 = phi float [ %435, %430 ], [ %123, %419 ]
  %438 = phi i32 [ %431, %430 ], [ %128, %419 ]
  %439 = phi float [ %432, %430 ], [ %129, %419 ]
  %440 = phi float [ %433, %430 ], [ %130, %419 ]
  %441 = phi float [ %434, %430 ], [ %131, %419 ]
  %442 = fadd fast float %337, %127
  %443 = fmul fast float %337, %46
  %444 = fmul fast float %337, %47
  %445 = fmul fast float %337, %48
  %446 = fadd fast float %443, %124
  %447 = fadd fast float %444, %125
  %448 = fadd fast float %445, %126
  %449 = fcmp fast olt float %442, %101
  %450 = extractvalue %dx.types.CBufRet.f32 %421, 2
  %451 = fcmp fast olt float %450, %437
  %452 = and i1 %449, %451
  br i1 %452, label %120, label %453

; <label>:453                                     ; preds = %436
  br label %454

; <label>:454                                     ; preds = %453, %97
  %455 = phi float [ 0.000000e+00, %97 ], [ %439, %453 ]
  %456 = phi float [ 0.000000e+00, %97 ], [ %440, %453 ]
  %457 = phi float [ 0.000000e+00, %97 ], [ %441, %453 ]
  %458 = extractvalue %dx.types.CBufRet.f32 %40, 3
  %459 = fmul fast float %458, %455
  %460 = fdiv fast float 1.000000e+00, %456
  %461 = fmul fast float %460, %457
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %7, i32 %8, i32 undef, float %459, float %461, float %457, float %459, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #1

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

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
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 27, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 13, i32 1, i32 2, i32 0, !7}
!9 = !{!10}
!10 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 7, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!11 = !{!12, !13}
!12 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!13 = !{i32 1, %FogRaymarchingConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 112, null}
!14 = !{!15}
!15 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!16 = !{void ()* @cs_fog_raymarching_air_brfog, !"cs_fog_raymarching_air_brfog", null, !4, !17}
!17 = !{i32 0, i64 256, i32 4, !18}
!18 = !{i32 8, i32 8, i32 1}
!19 = distinct !{!19, !"dx.controlflow.hints", i32 2}
!20 = distinct !{!20, !"dx.controlflow.hints", i32 2}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 1}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 1}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 1}

