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
; shader hash: d70483b04e3ac87a507b0d7193edf68b
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
; Resource bind info for 
; {
;
;   [164 x i8] (type annotation not present)
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
;                                   texture     f32          2d      T0            t27     1
;                                   texture     f32          2d      T1            t18     1
;                                   texture  struct         r/o      T2            t25     1
;                                   texture     f32          2d      T3            t13     1
;                                       UAV     f32          2d      U0             u7     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.StructuredBuffer<VolumetricBBoxGpu>" = type { %struct.VolumetricBBoxGpu }
%struct.VolumetricBBoxGpu = type { <3 x float>, i32, <3 x float>, float, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
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

define void @cs_fog_raymarching_air_particles_brfog() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %11 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %12 = uitofp i32 %10 to float
  %13 = uitofp i32 %11 to float
  %14 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %15 = extractvalue %dx.types.CBufRet.f32 %14, 2
  %16 = fmul fast float %15, 0x3FE3C6EF40000000
  %17 = frem fast float %12, 2.560000e+02
  %18 = frem fast float %13, 2.560000e+02
  %19 = fptoui float %17 to i32
  %20 = fptoui float %18 to i32
  %21 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %19, i32 %20, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %22 = extractvalue %dx.types.ResRet.f32 %21, 1
  %23 = fadd fast float %22, %16
  %24 = call float @dx.op.unary.f32(i32 22, float %23)  ; Frc(value)
  %25 = fadd fast float %12, 5.000000e-01
  %26 = fadd fast float %13, 5.000000e-01
  %27 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %28 = extractvalue %dx.types.CBufRet.f32 %27, 2
  %29 = extractvalue %dx.types.CBufRet.f32 %27, 3
  %30 = fmul fast float %28, %25
  %31 = fmul fast float %29, %26
  %32 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %33 = extractvalue %dx.types.CBufRet.f32 %32, 0
  %34 = extractvalue %dx.types.CBufRet.f32 %32, 1
  %35 = extractvalue %dx.types.CBufRet.f32 %32, 2
  %36 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %37 = extractvalue %dx.types.CBufRet.f32 %36, 0
  %38 = extractvalue %dx.types.CBufRet.f32 %36, 1
  %39 = fmul fast float %30, %37
  %40 = fmul fast float %31, %38
  %41 = fadd fast float %39, %33
  %42 = fadd fast float %40, %34
  %43 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %44 = extractvalue %dx.types.CBufRet.f32 %43, 2
  %45 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %46 = extractvalue %dx.types.CBufRet.f32 %45, 0
  %47 = extractvalue %dx.types.CBufRet.f32 %45, 1
  %48 = extractvalue %dx.types.CBufRet.f32 %45, 2
  %49 = fsub fast float -0.000000e+00, %46
  %50 = fsub fast float -0.000000e+00, %47
  %51 = fsub fast float -0.000000e+00, %48
  %52 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %53 = extractvalue %dx.types.CBufRet.f32 %52, 3
  %54 = fsub fast float -0.000000e+00, %41
  %55 = fsub fast float -0.000000e+00, %42
  %56 = fsub fast float %53, %35
  %57 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %54, float %55, float %56)  ; Dot3(ax,ay,az,bx,by,bz)
  %58 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %49, float %50, float %51)  ; Dot3(ax,ay,az,bx,by,bz)
  %59 = fdiv fast float 1.000000e+00, %58
  %60 = fmul fast float %59, %57
  %61 = fcmp fast olt float %60, 0.000000e+00
  %62 = fcmp olt float %48, -0.000000e+00
  %63 = and i1 %62, %61
  br i1 %63, label %68, label %64, !dx.controlflow.hints !23

; <label>:64                                      ; preds = %0
  %65 = fcmp ogt float %48, -0.000000e+00
  br i1 %65, label %66, label %68, !dx.controlflow.hints !24

; <label>:66                                      ; preds = %64
  %67 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %60)  ; FMax(a,b)
  br label %68

; <label>:68                                      ; preds = %66, %64, %0
  %69 = phi float [ 0.000000e+00, %0 ], [ %67, %66 ], [ 0.000000e+00, %64 ]
  %70 = phi float [ 0.000000e+00, %0 ], [ 0x47EFFFFFE0000000, %66 ], [ %60, %64 ]
  %71 = fcmp fast oeq float %70, 0.000000e+00
  br i1 %71, label %75, label %72, !dx.controlflow.hints !25

; <label>:72                                      ; preds = %68
  %73 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %69)  ; FMin(a,b)
  %74 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %70)  ; FMax(a,b)
  br label %75

; <label>:75                                      ; preds = %72, %68
  %76 = phi float [ %74, %72 ], [ -1.000000e+00, %68 ]
  %77 = phi i32 [ 1, %72 ], [ 0, %68 ]
  %78 = phi float [ %73, %72 ], [ 0x47EFFFFFE0000000, %68 ]
  %79 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %80 = extractvalue %dx.types.CBufRet.f32 %79, 3
  %81 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %82 = extractvalue %dx.types.CBufRet.f32 %81, 0
  %83 = fsub fast float %80, %35
  %84 = fadd fast float %83, %82
  %85 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %54, float %55, float %84)  ; Dot3(ax,ay,az,bx,by,bz)
  %86 = fmul fast float %59, %85
  %87 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %88 = extractvalue %dx.types.CBufRet.f32 %87, 2
  %89 = fsub fast float %88, %35
  %90 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %54, float %55, float %89)  ; Dot3(ax,ay,az,bx,by,bz)
  %91 = fmul fast float %59, %90
  %92 = call float @dx.op.binary.f32(i32 36, float %86, float %91)  ; FMin(a,b)
  %93 = call float @dx.op.binary.f32(i32 35, float %86, float %91)  ; FMax(a,b)
  %94 = call float @dx.op.binary.f32(i32 36, float %78, float %92)  ; FMin(a,b)
  %95 = call float @dx.op.binary.f32(i32 35, float %76, float %93)  ; FMax(a,b)
  %96 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %97 = extractvalue %dx.types.CBufRet.f32 %96, 2
  %98 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %99 = extractvalue %dx.types.CBufRet.f32 %98, 3
  %100 = fsub fast float %97, %35
  %101 = fadd fast float %100, %99
  %102 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %54, float %55, float %101)  ; Dot3(ax,ay,az,bx,by,bz)
  %103 = fmul fast float %59, %102
  %104 = fcmp fast olt float %103, 0.000000e+00
  %105 = and i1 %62, %104
  br i1 %105, label %110, label %106, !dx.controlflow.hints !26

; <label>:106                                     ; preds = %75
  %107 = fcmp ogt float %48, -0.000000e+00
  br i1 %107, label %108, label %110, !dx.controlflow.hints !27

; <label>:108                                     ; preds = %106
  %109 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %103)  ; FMax(a,b)
  br label %110

; <label>:110                                     ; preds = %108, %106, %75
  %111 = phi float [ 0.000000e+00, %75 ], [ %109, %108 ], [ 0.000000e+00, %106 ]
  %112 = phi float [ 0.000000e+00, %75 ], [ 0x47EFFFFFE0000000, %108 ], [ %103, %106 ]
  %113 = fcmp fast oeq float %112, 0.000000e+00
  br i1 %113, label %117, label %114, !dx.controlflow.hints !28

; <label>:114                                     ; preds = %110
  %115 = call float @dx.op.binary.f32(i32 36, float %94, float %111)  ; FMin(a,b)
  %116 = call float @dx.op.binary.f32(i32 35, float %95, float %112)  ; FMax(a,b)
  br label %117

; <label>:117                                     ; preds = %114, %110
  %118 = phi i32 [ 1, %114 ], [ 0, %110 ]
  %119 = phi float [ %116, %114 ], [ %95, %110 ]
  %120 = phi float [ %115, %114 ], [ %94, %110 ]
  %121 = fdiv fast float 1.000000e+00, %49
  %122 = fdiv fast float 1.000000e+00, %50
  %123 = fdiv fast float 1.000000e+00, %51
  %124 = call float @dx.op.binary.f32(i32 36, float %44, float %119)  ; FMin(a,b)
  %125 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %120)  ; FMax(a,b)
  %126 = extractvalue %dx.types.CBufRet.f32 %52, 1
  %127 = fmul fast float %24, 2.000000e+00
  %128 = fadd fast float %127, -1.000000e+00
  %129 = fmul fast float %126, %128
  %130 = fadd fast float %129, %125
  %131 = fcmp fast olt float %130, %124
  %132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %133 = extractvalue %dx.types.CBufRet.f32 %132, 2
  %134 = fcmp fast olt float %133, 1.000000e+00
  %135 = and i1 %134, %131
  br i1 %135, label %136, label %721

; <label>:136                                     ; preds = %117
  %137 = fmul fast float %130, %51
  %138 = fadd fast float %137, %35
  %139 = fmul fast float %130, %50
  %140 = fadd fast float %139, %42
  %141 = fmul fast float %130, %49
  %142 = fadd fast float %141, %41
  br label %143

; <label>:143                                     ; preds = %703, %136
  %144 = phi i32 [ %465, %703 ], [ undef, %136 ]
  %145 = phi float [ %466, %703 ], [ undef, %136 ]
  %146 = phi float [ %266, %703 ], [ undef, %136 ]
  %147 = phi float [ %267, %703 ], [ undef, %136 ]
  %148 = phi float [ %268, %703 ], [ undef, %136 ]
  %149 = phi float [ %269, %703 ], [ undef, %136 ]
  %150 = phi float [ %704, %703 ], [ 1.000000e+00, %136 ]
  %151 = phi float [ %713, %703 ], [ %142, %136 ]
  %152 = phi float [ %714, %703 ], [ %140, %136 ]
  %153 = phi float [ %715, %703 ], [ %138, %136 ]
  %154 = phi float [ %709, %703 ], [ %130, %136 ]
  %155 = phi i32 [ %271, %703 ], [ 10, %136 ]
  %156 = phi i32 [ %705, %703 ], [ 0, %136 ]
  %157 = phi float [ %706, %703 ], [ 0.000000e+00, %136 ]
  %158 = phi float [ %707, %703 ], [ 0.000000e+00, %136 ]
  %159 = phi float [ %708, %703 ], [ 0.000000e+00, %136 ]
  %160 = fsub fast float -0.000000e+00, %152
  %161 = fsub fast float -0.000000e+00, %151
  %162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %163 = extractvalue %dx.types.CBufRet.f32 %162, 1
  %164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %165 = extractvalue %dx.types.CBufRet.f32 %164, 0
  %166 = extractvalue %dx.types.CBufRet.f32 %164, 1
  %167 = fsub fast float %151, %165
  %168 = fsub fast float %152, %166
  %169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %170 = extractvalue %dx.types.CBufRet.f32 %169, 2
  %171 = extractvalue %dx.types.CBufRet.f32 %169, 3
  %172 = fmul fast float %167, %170
  %173 = fmul fast float %168, %171
  %174 = call float @dx.op.binary.f32(i32 36, float %172, float %173)  ; FMin(a,b)
  %175 = fcmp fast olt float %174, 0.000000e+00
  %176 = call float @dx.op.binary.f32(i32 35, float %172, float %173)  ; FMax(a,b)
  %177 = fcmp fast ogt float %176, 1.000000e+00
  %178 = or i1 %175, %177
  %179 = extractvalue %dx.types.CBufRet.f32 %164, 2
  %180 = fcmp fast olt float %153, %179
  %181 = or i1 %178, %180
  %182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %183 = extractvalue %dx.types.CBufRet.f32 %182, 3
  %184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %185 = extractvalue %dx.types.CBufRet.f32 %184, 0
  %186 = fadd fast float %185, %183
  %187 = fcmp fast ogt float %153, %186
  %188 = or i1 %181, %187
  br i1 %188, label %189, label %218, !dx.controlflow.hints !29

; <label>:189                                     ; preds = %143
  %190 = extractvalue %dx.types.CBufRet.f32 %169, 0
  %191 = extractvalue %dx.types.CBufRet.f32 %169, 1
  %192 = fsub fast float %165, %151
  %193 = fmul fast float %192, %121
  %194 = fadd fast float %192, %190
  %195 = fmul fast float %194, %121
  %196 = call float @dx.op.binary.f32(i32 36, float %193, float %195)  ; FMin(a,b)
  %197 = call float @dx.op.binary.f32(i32 35, float %193, float %195)  ; FMax(a,b)
  %198 = fsub fast float %166, %152
  %199 = fmul fast float %198, %122
  %200 = fadd fast float %198, %191
  %201 = fmul fast float %200, %122
  %202 = call float @dx.op.binary.f32(i32 36, float %199, float %201)  ; FMin(a,b)
  %203 = call float @dx.op.binary.f32(i32 35, float %196, float %202)  ; FMax(a,b)
  %204 = call float @dx.op.binary.f32(i32 35, float %199, float %201)  ; FMax(a,b)
  %205 = call float @dx.op.binary.f32(i32 36, float %197, float %204)  ; FMin(a,b)
  %206 = fsub fast float %179, %153
  %207 = fmul fast float %206, %123
  %208 = fsub fast float %183, %153
  %209 = fadd fast float %208, %185
  %210 = fmul fast float %209, %123
  %211 = call float @dx.op.binary.f32(i32 36, float %207, float %210)  ; FMin(a,b)
  %212 = call float @dx.op.binary.f32(i32 35, float %203, float %211)  ; FMax(a,b)
  %213 = call float @dx.op.binary.f32(i32 35, float %207, float %210)  ; FMax(a,b)
  %214 = call float @dx.op.binary.f32(i32 36, float %205, float %213)  ; FMin(a,b)
  %215 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %212)  ; FMax(a,b)
  %216 = fcmp fast oge float %214, %215
  %217 = select i1 %216, float %212, float 1.000000e+07
  br label %264

; <label>:218                                     ; preds = %143
  %219 = fsub fast float 1.000000e+00, %173
  %220 = icmp eq i32 %155, 0
  br i1 %220, label %249, label %221

; <label>:221                                     ; preds = %218
  br label %222

; <label>:222                                     ; preds = %245, %221
  %223 = phi i32 [ %246, %245 ], [ %155, %221 ]
  %224 = uitofp i32 %223 to float
  %225 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %7, float %172, float %219, float undef, float undef, i32 0, i32 0, i32 undef, float %224)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %226 = extractvalue %dx.types.ResRet.f32 %225, 0
  %227 = extractvalue %dx.types.ResRet.f32 %225, 1
  %228 = extractvalue %dx.types.ResRet.f32 %225, 2
  %229 = fcmp fast oeq float %226, 0.000000e+00
  %230 = fcmp ule float %153, %228
  %231 = fcmp uge float %153, %227
  %232 = or i1 %231, %230
  %233 = or i1 %229, %232
  br i1 %233, label %234, label %245, !dx.controlflow.hints !30

; <label>:234                                     ; preds = %222
  %235 = extractvalue %dx.types.ResRet.f32 %225, 3
  %236 = extractvalue %dx.types.CBufRet.f32 %169, 0
  %237 = and i32 %223, 31
  %238 = lshr i32 1024, %237
  %239 = uitofp i32 %238 to float
  %240 = fdiv fast float %236, %239
  %241 = add i32 %223, 1
  %242 = uitofp i32 %241 to float
  %243 = call float @dx.op.binary.f32(i32 36, float 1.000000e+01, float %242)  ; FMin(a,b)
  %244 = fptosi float %243 to i32
  br label %264

; <label>:245                                     ; preds = %222
  %246 = add i32 %223, -1
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %222, !llvm.loop !31

; <label>:248                                     ; preds = %245
  br label %249

; <label>:249                                     ; preds = %248, %218
  %250 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %6, float %172, float %219, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %251 = extractvalue %dx.types.ResRet.f32 %250, 0
  %252 = extractvalue %dx.types.ResRet.f32 %250, 1
  %253 = extractvalue %dx.types.ResRet.f32 %250, 2
  %254 = extractvalue %dx.types.ResRet.f32 %250, 3
  %255 = extractvalue %dx.types.CBufRet.f32 %169, 0
  %256 = fmul fast float %255, 9.765625e-04
  %257 = fcmp fast oeq float %251, 0.000000e+00
  %258 = fcmp ule float %153, %253
  %259 = fcmp uge float %153, %252
  %260 = or i1 %259, %258
  %261 = or i1 %257, %260
  %262 = zext i1 %261 to i32
  %263 = xor i32 %262, 1
  br label %264

; <label>:264                                     ; preds = %249, %234, %189
  %265 = phi float [ %217, %189 ], [ %240, %234 ], [ %256, %249 ]
  %266 = phi float [ %146, %189 ], [ %226, %234 ], [ %251, %249 ]
  %267 = phi float [ %147, %189 ], [ %227, %234 ], [ %252, %249 ]
  %268 = phi float [ %148, %189 ], [ %228, %234 ], [ %253, %249 ]
  %269 = phi float [ %149, %189 ], [ %235, %234 ], [ %254, %249 ]
  %270 = phi i32 [ 0, %189 ], [ 0, %234 ], [ %263, %249 ]
  %271 = phi i32 [ 10, %189 ], [ %244, %234 ], [ 1, %249 ]
  %272 = icmp eq i32 %270, 0
  %273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %274 = extractvalue %dx.types.CBufRet.f32 %273, 2
  %275 = call float @dx.op.binary.f32(i32 35, float %265, float %274)  ; FMax(a,b)
  %276 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %275)  ; FMin(a,b)
  %277 = icmp eq i32 %77, 0
  br i1 %277, label %290, label %278, !dx.controlflow.hints !33

; <label>:278                                     ; preds = %264
  %279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %280 = extractvalue %dx.types.CBufRet.f32 %279, 3
  %281 = extractvalue %dx.types.CBufRet.f32 %279, 2
  %282 = fmul fast float %280, %154
  %283 = fdiv fast float %282, %124
  %284 = fadd fast float %283, 1.000000e+00
  %285 = call float @dx.op.unary.f32(i32 23, float %284)  ; Log(value)
  %286 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %285)  ; FMin(a,b)
  %287 = fmul fast float %281, %124
  %288 = fmul fast float %287, %286
  %289 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %288)  ; FMin(a,b)
  br label %290

; <label>:290                                     ; preds = %278, %264
  %291 = phi float [ %289, %278 ], [ 0x47EFFFFFE0000000, %264 ]
  %292 = icmp eq i32 %118, 0
  br i1 %292, label %464, label %293, !dx.controlflow.hints !34

; <label>:293                                     ; preds = %290
  %294 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %295 = extractvalue %dx.types.CBufRet.i32 %294, 1
  %296 = and i32 %295, 1
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %298, label %455, !dx.controlflow.hints !35

; <label>:298                                     ; preds = %293
  %299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %300 = extractvalue %dx.types.CBufRet.f32 %299, 2
  %301 = extractvalue %dx.types.CBufRet.f32 %299, 3
  %302 = fmul fast float %300, %151
  %303 = fmul fast float %301, %152
  %304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %305 = extractvalue %dx.types.CBufRet.f32 %304, 0
  %306 = extractvalue %dx.types.CBufRet.f32 %304, 1
  %307 = fadd fast float %302, %305
  %308 = fadd fast float %303, %306
  %309 = call float @dx.op.unary.f32(i32 7, float %307)  ; Saturate(value)
  %310 = call float @dx.op.unary.f32(i32 7, float %308)  ; Saturate(value)
  %311 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %6, float %309, float %310, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %312 = extractvalue %dx.types.ResRet.f32 %311, 0
  %313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %314 = extractvalue %dx.types.CBufRet.f32 %313, 0
  %315 = fmul fast float %314, %312
  %316 = fsub fast float %307, %309
  %317 = fsub fast float %308, %310
  %318 = extractvalue %dx.types.CBufRet.f32 %299, 0
  %319 = extractvalue %dx.types.CBufRet.f32 %299, 1
  %320 = fmul fast float %318, %316
  %321 = fmul fast float %319, %317
  %322 = fmul fast float %320, %320
  %323 = fmul fast float %321, %321
  %324 = fadd fast float %322, %323
  %325 = call float @dx.op.unary.f32(i32 24, float %324)  ; Sqrt(value)
  %326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %327 = extractvalue %dx.types.CBufRet.f32 %326, 3
  %328 = fmul fast float %327, %325
  %329 = call float @dx.op.unary.f32(i32 7, float %328)  ; Saturate(value)
  %330 = extractvalue %dx.types.CBufRet.f32 %326, 2
  %331 = fsub fast float %330, %315
  %332 = fmul fast float %331, %329
  %333 = extractvalue %dx.types.CBufRet.f32 %313, 1
  %334 = fsub fast float %153, %315
  %335 = fsub fast float %334, %333
  %336 = fsub fast float %335, %332
  %337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %338 = extractvalue %dx.types.CBufRet.f32 %337, 2
  %339 = fsub fast float %336, %338
  %340 = fcmp fast olt float %339, 0.000000e+00
  %341 = call float @dx.op.unary.f32(i32 6, float %339)  ; FAbs(value)
  %342 = extractvalue %dx.types.CBufRet.i32 %294, 0
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %397, label %344

; <label>:344                                     ; preds = %298
  br label %345

; <label>:345                                     ; preds = %384, %344
  %346 = phi i32 [ %390, %384 ], [ 1, %344 ]
  %347 = phi float [ %392, %384 ], [ 0x47EFFFFFE0000000, %344 ]
  %348 = phi i32 [ %393, %384 ], [ 0, %344 ]
  %349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %350 = extractvalue %dx.types.CBufRet.f32 %349, 1
  %351 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %352 = extractvalue %dx.types.CBufRet.i32 %351, 1
  %353 = and i32 %352, 8
  %354 = icmp eq i32 %353, 0
  %355 = fcmp fast ogt float %350, %336
  %356 = or i1 %355, %354
  %357 = add i32 %348, 171
  %358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 %357)  ; CBufferLoadLegacy(handle,regIndex)
  %359 = extractvalue %dx.types.CBufRet.f32 %358, 0
  %360 = extractvalue %dx.types.CBufRet.f32 %358, 1
  %361 = extractvalue %dx.types.CBufRet.f32 %358, 2
  br i1 %356, label %362, label %368, !dx.controlflow.hints !36

; <label>:362                                     ; preds = %345
  %363 = fsub fast float %359, %151
  %364 = fsub fast float %360, %152
  %365 = fmul fast float %363, %363
  %366 = fmul fast float %364, %364
  %367 = fadd fast float %365, %366
  br label %384

; <label>:368                                     ; preds = %345
  %369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %370 = extractvalue %dx.types.CBufRet.f32 %369, 2
  %371 = extractvalue %dx.types.CBufRet.f32 %349, 2
  %372 = fmul fast float %371, %370
  %373 = fsub fast float %372, %350
  %374 = fdiv fast float %361, %373
  %375 = fsub fast float %151, %359
  %376 = fsub fast float %152, %360
  %377 = fsub fast float %336, %350
  %378 = fmul fast float %374, %377
  %379 = fmul fast float %375, %375
  %380 = fmul fast float %376, %376
  %381 = fadd fast float %379, %380
  %382 = fmul fast float %378, %378
  %383 = fadd fast float %381, %382
  br label %384

; <label>:384                                     ; preds = %368, %362
  %385 = phi float [ %367, %362 ], [ %383, %368 ]
  %386 = call float @dx.op.unary.f32(i32 24, float %385)  ; Sqrt(value)
  %387 = fsub float %361, %386
  %388 = fcmp fast olt float %387, 0.000000e+00
  %389 = zext i1 %388 to i32
  %390 = and i32 %389, %346
  %391 = call float @dx.op.unary.f32(i32 6, float %387)  ; FAbs(value)
  %392 = call float @dx.op.binary.f32(i32 36, float %347, float %391)  ; FMin(a,b)
  %393 = add i32 %348, 1
  %394 = extractvalue %dx.types.CBufRet.i32 %351, 0
  %395 = icmp ult i32 %393, %394
  br i1 %395, label %345, label %396

; <label>:396                                     ; preds = %384
  br label %397

; <label>:397                                     ; preds = %396, %298
  %398 = phi i32 [ 1, %298 ], [ %390, %396 ]
  %399 = phi float [ 0x47EFFFFFE0000000, %298 ], [ %392, %396 ]
  br label %400

; <label>:400                                     ; preds = %400, %397
  %401 = phi i32 [ %398, %397 ], [ %440, %400 ]
  %402 = phi float [ 0x47EFFFFFE0000000, %397 ], [ %442, %400 ]
  %403 = phi i32 [ 0, %397 ], [ %443, %400 ]
  %404 = add nuw nsw i32 %403, 191
  %405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 %404)  ; CBufferLoadLegacy(handle,regIndex)
  %406 = extractvalue %dx.types.CBufRet.f32 %405, 0
  %407 = extractvalue %dx.types.CBufRet.f32 %405, 1
  %408 = extractvalue %dx.types.CBufRet.f32 %405, 2
  %409 = add nuw nsw i32 %403, 195
  %410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 %409)  ; CBufferLoadLegacy(handle,regIndex)
  %411 = extractvalue %dx.types.CBufRet.f32 %410, 0
  %412 = extractvalue %dx.types.CBufRet.f32 %410, 1
  %413 = extractvalue %dx.types.CBufRet.f32 %410, 2
  %414 = fsub fast float %151, %406
  %415 = fsub fast float %152, %407
  %416 = fsub fast float %336, %408
  %417 = call float @dx.op.unary.f32(i32 6, float %414)  ; FAbs(value)
  %418 = call float @dx.op.unary.f32(i32 6, float %415)  ; FAbs(value)
  %419 = call float @dx.op.unary.f32(i32 6, float %416)  ; FAbs(value)
  %420 = fsub fast float %417, %411
  %421 = fsub fast float %418, %412
  %422 = fsub fast float %419, %413
  %423 = call float @dx.op.binary.f32(i32 35, float %420, float 0.000000e+00)  ; FMax(a,b)
  %424 = call float @dx.op.binary.f32(i32 35, float %421, float 0.000000e+00)  ; FMax(a,b)
  %425 = call float @dx.op.binary.f32(i32 35, float %422, float 0.000000e+00)  ; FMax(a,b)
  %426 = fmul fast float %423, %423
  %427 = fmul fast float %424, %424
  %428 = fadd fast float %427, %426
  %429 = fmul fast float %425, %425
  %430 = fadd fast float %428, %429
  %431 = call float @dx.op.unary.f32(i32 24, float %430)  ; Sqrt(value)
  %432 = call float @dx.op.binary.f32(i32 35, float %421, float %422)  ; FMax(a,b)
  %433 = call float @dx.op.binary.f32(i32 35, float %420, float %432)  ; FMax(a,b)
  %434 = call float @dx.op.binary.f32(i32 36, float %433, float 0.000000e+00)  ; FMin(a,b)
  %435 = fadd fast float %434, %431
  %436 = fsub fast float -0.000000e+00, %435
  %437 = fcmp ogt float %435, -0.000000e+00
  %438 = icmp ne i32 %401, 0
  %439 = and i1 %438, %437
  %440 = zext i1 %439 to i32
  %441 = call float @dx.op.unary.f32(i32 6, float %436)  ; FAbs(value)
  %442 = call float @dx.op.binary.f32(i32 36, float %402, float %441)  ; FMin(a,b)
  %443 = add nuw nsw i32 %403, 1
  %444 = icmp eq i32 %443, 4
  br i1 %444, label %445, label %400

; <label>:445                                     ; preds = %400
  %446 = call float @dx.op.binary.f32(i32 36, float %341, float %442)  ; FMin(a,b)
  %447 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %448 = extractvalue %dx.types.CBufRet.i32 %447, 1
  %449 = and i32 %448, 2
  %450 = icmp ne i32 %449, 0
  %451 = xor i1 %439, %450
  %452 = call float @dx.op.binary.f32(i32 36, float %446, float %399)  ; FMin(a,b)
  %453 = and i1 %451, %340
  %454 = zext i1 %453 to i32
  br label %455

; <label>:455                                     ; preds = %445, %293
  %456 = phi i32 [ %144, %293 ], [ %454, %445 ]
  %457 = phi float [ 0.000000e+00, %293 ], [ %452, %445 ]
  %458 = phi float [ %153, %293 ], [ %336, %445 ]
  %459 = icmp ne i32 %456, 0
  %460 = extractvalue %dx.types.CBufRet.f32 %273, 3
  %461 = call float @dx.op.binary.f32(i32 35, float %457, float %460)  ; FMax(a,b)
  %462 = call float @dx.op.binary.f32(i32 36, float %291, float %461)  ; FMin(a,b)
  %463 = zext i1 %459 to i32
  br label %464

; <label>:464                                     ; preds = %455, %290
  %465 = phi i32 [ %456, %455 ], [ %144, %290 ]
  %466 = phi float [ %458, %455 ], [ %145, %290 ]
  %467 = phi float [ %462, %455 ], [ %291, %290 ]
  %468 = phi i32 [ %463, %455 ], [ 0, %290 ]
  %469 = extractvalue %dx.types.CBufRet.f32 %162, 2
  %470 = fmul fast float %469, %154
  %471 = call float @dx.op.unary.f32(i32 23, float %470)  ; Log(value)
  %472 = fmul fast float %471, 0x3FE62E4300000000
  %473 = call float @dx.op.binary.f32(i32 35, float %472, float 1.000000e+00)  ; FMax(a,b)
  %474 = fmul fast float %473, %467
  %475 = call float @dx.op.binary.f32(i32 36, float %474, float %276)  ; FMin(a,b)
  %476 = call float @dx.op.binary.f32(i32 35, float %475, float %163)  ; FMax(a,b)
  %477 = fadd fast float %124, 0x3F1A36E2E0000000
  %478 = fsub fast float %477, %154
  %479 = call float @dx.op.binary.f32(i32 36, float %478, float %476)  ; FMin(a,b)
  br i1 %277, label %525, label %480, !dx.controlflow.hints !37

; <label>:480                                     ; preds = %464
  %481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %482 = extractvalue %dx.types.CBufRet.f32 %481, 0
  %483 = fsub fast float %482, %153
  %484 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %161, float %160, float %483)  ; Dot3(ax,ay,az,bx,by,bz)
  %485 = fmul fast float %59, %484
  %486 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %485)  ; FMax(a,b)
  %487 = fcmp ogt float %48, -0.000000e+00
  %488 = call float @dx.op.binary.f32(i32 36, float %479, float %486)  ; FMin(a,b)
  br i1 %487, label %490, label %489, !dx.controlflow.hints !38

; <label>:489                                     ; preds = %480
  br label %490

; <label>:490                                     ; preds = %489, %480
  %491 = phi float [ 0.000000e+00, %489 ], [ %488, %480 ]
  %492 = phi float [ %488, %489 ], [ %479, %480 ]
  %493 = phi float [ %488, %489 ], [ 0.000000e+00, %480 ]
  %494 = phi float [ %479, %489 ], [ %488, %480 ]
  %495 = fsub fast float %492, %491
  %496 = extractvalue %dx.types.CBufRet.f32 %481, 1
  %497 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %496)  ; FMin(a,b)
  %498 = fsub fast float %153, %482
  %499 = fmul fast float %497, 0x3FF7154760000000
  %500 = fmul fast float %499, %498
  %501 = call float @dx.op.unary.f32(i32 21, float %500)  ; Exp(value)
  %502 = fmul fast float %48, 0xBFF7154760000000
  %503 = fmul fast float %502, %494
  %504 = fmul fast float %503, %497
  %505 = call float @dx.op.unary.f32(i32 21, float %504)  ; Exp(value)
  %506 = fmul fast float %502, %493
  %507 = fmul fast float %506, %497
  %508 = call float @dx.op.unary.f32(i32 21, float %507)  ; Exp(value)
  %509 = fsub fast float %505, %508
  %510 = fmul fast float %509, %501
  %511 = fmul fast float %497, %51
  %512 = fdiv fast float %510, %511
  %513 = fadd fast float %495, %512
  %514 = call float @dx.op.unary.f32(i32 6, float %51)  ; FAbs(value)
  %515 = fcmp fast olt float %514, 0x3F0FFB4800000000
  %516 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %498)  ; FMax(a,b)
  %517 = fmul fast float %516, 0x3FF7154760000000
  %518 = fmul fast float %517, %496
  %519 = call float @dx.op.unary.f32(i32 21, float %518)  ; Exp(value)
  %520 = fmul fast float %519, %479
  %521 = select i1 %515, float %520, float %513
  %522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %523 = extractvalue %dx.types.CBufRet.f32 %522, 1
  %524 = fmul fast float %521, %523
  br label %525

; <label>:525                                     ; preds = %490, %464
  %526 = phi float [ %524, %490 ], [ 0.000000e+00, %464 ]
  br i1 %272, label %652, label %527, !dx.controlflow.hints !39

; <label>:527                                     ; preds = %525
  %528 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %529 = extractvalue %dx.types.CBufRet.i32 %528, 0
  %530 = icmp ne i32 %529, 0
  %531 = zext i1 %530 to i32
  %532 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %533 = extractvalue %dx.types.CBufRet.i32 %532, 0
  %534 = icmp eq i32 %533, 0
  br i1 %534, label %568, label %535

; <label>:535                                     ; preds = %527
  br label %536

; <label>:536                                     ; preds = %563, %535
  %537 = phi i32 [ %564, %563 ], [ 0, %535 ]
  %538 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %537, i32 0)  ; BufferLoad(srv,index,wot)
  %539 = extractvalue %dx.types.ResRet.f32 %538, 0
  %540 = extractvalue %dx.types.ResRet.f32 %538, 1
  %541 = extractvalue %dx.types.ResRet.f32 %538, 2
  %542 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %537, i32 16)  ; BufferLoad(srv,index,wot)
  %543 = extractvalue %dx.types.ResRet.f32 %542, 0
  %544 = extractvalue %dx.types.ResRet.f32 %542, 1
  %545 = extractvalue %dx.types.ResRet.f32 %542, 2
  %546 = fsub fast float %539, %543
  %547 = fsub fast float %540, %544
  %548 = fsub fast float %541, %545
  %549 = fadd fast float %543, %539
  %550 = fadd fast float %544, %540
  %551 = fadd fast float %545, %541
  %552 = fcmp fast olt float %151, %546
  %553 = fcmp fast olt float %152, %547
  %554 = fcmp fast olt float %153, %548
  %555 = or i1 %552, %553
  %556 = or i1 %554, %555
  %557 = fcmp fast ogt float %151, %549
  %558 = fcmp fast ogt float %152, %550
  %559 = fcmp fast ogt float %153, %551
  %560 = or i1 %557, %558
  %561 = or i1 %559, %560
  %562 = or i1 %556, %561
  br i1 %562, label %563, label %566, !dx.controlflow.hints !40

; <label>:563                                     ; preds = %536
  %564 = add nuw i32 %537, 1
  %565 = icmp ult i32 %564, %533
  br i1 %565, label %536, label %566

; <label>:566                                     ; preds = %563, %536
  %567 = phi i32 [ 255, %563 ], [ %537, %536 ]
  br label %568

; <label>:568                                     ; preds = %566, %527
  %569 = phi i32 [ 255, %527 ], [ %567, %566 ]
  %570 = icmp eq i32 %569, 255
  br i1 %570, label %576, label %571, !dx.controlflow.hints !41

; <label>:571                                     ; preds = %568
  %572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %569, i32 156)  ; BufferLoad(srv,index,wot)
  %573 = extractvalue %dx.types.ResRet.i32 %572, 0
  %574 = icmp ne i32 %573, 0
  %575 = zext i1 %574 to i32
  br label %576

; <label>:576                                     ; preds = %571, %568
  %577 = phi i32 [ %575, %571 ], [ %531, %568 ]
  %578 = icmp eq i32 %577, 0
  br i1 %578, label %579, label %648, !dx.controlflow.hints !42

; <label>:579                                     ; preds = %576
  %580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %581 = extractvalue %dx.types.CBufRet.f32 %580, 3
  %582 = extractvalue %dx.types.CBufRet.f32 %182, 0
  %583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %584 = extractvalue %dx.types.CBufRet.f32 %583, 2
  %585 = extractvalue %dx.types.CBufRet.f32 %583, 3
  br i1 %570, label %596, label %586, !dx.controlflow.hints !43

; <label>:586                                     ; preds = %579
  %587 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %569, i32 60)  ; BufferLoad(srv,index,wot)
  %588 = extractvalue %dx.types.ResRet.f32 %587, 0
  %589 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %569, i32 64)  ; BufferLoad(srv,index,wot)
  %590 = extractvalue %dx.types.ResRet.f32 %589, 0
  %591 = extractvalue %dx.types.ResRet.f32 %589, 1
  %592 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %569, i32 72)  ; BufferLoad(srv,index,wot)
  %593 = extractvalue %dx.types.ResRet.f32 %592, 0
  %594 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %569, i32 96)  ; BufferLoad(srv,index,wot)
  %595 = extractvalue %dx.types.ResRet.f32 %594, 0
  br label %596

; <label>:596                                     ; preds = %586, %579
  %597 = phi float [ %590, %586 ], [ %584, %579 ]
  %598 = phi float [ %591, %586 ], [ %585, %579 ]
  %599 = phi float [ %595, %586 ], [ %582, %579 ]
  %600 = phi float [ %593, %586 ], [ %183, %579 ]
  %601 = phi float [ %588, %586 ], [ %185, %579 ]
  %602 = call float @dx.op.binary.f32(i32 35, float %266, float 0.000000e+00)  ; FMax(a,b)
  %603 = call float @dx.op.binary.f32(i32 36, float %602, float 1.000000e+00)  ; FMin(a,b)
  %604 = call float @dx.op.unary.f32(i32 24, float %603)  ; Sqrt(value)
  %605 = call float @dx.op.binary.f32(i32 35, float %269, float 0x3F847AE140000000)  ; FMax(a,b)
  %606 = fsub fast float %267, %153
  %607 = fsub fast float %153, %268
  %608 = call float @dx.op.binary.f32(i32 36, float %607, float %606)  ; FMin(a,b)
  %609 = fdiv fast float %608, %605
  %610 = call float @dx.op.unary.f32(i32 7, float %609)  ; Saturate(value)
  %611 = fsub fast float %153, %600
  %612 = fdiv fast float %611, %601
  %613 = call float @dx.op.unary.f32(i32 7, float %612)  ; Saturate(value)
  %614 = fsub fast float 1.000000e+00, %613
  %615 = fmul float %610, %614
  %616 = fmul float %615, %615
  %617 = fmul fast float %604, %581
  %618 = fmul fast float %617, %616
  %619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %620 = extractvalue %dx.types.CBufRet.f32 %619, 2
  %621 = extractvalue %dx.types.CBufRet.f32 %619, 1
  %622 = fsub fast float %618, %621
  %623 = fsub fast float %620, %621
  %624 = fdiv fast float %622, %623
  %625 = call float @dx.op.unary.f32(i32 7, float %624)  ; Saturate(value)
  %626 = fmul fast float %625, %599
  %627 = fcmp fast ogt float %598, 0.000000e+00
  br i1 %627, label %628, label %648, !dx.controlflow.hints !44

; <label>:628                                     ; preds = %596
  %629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %630 = extractvalue %dx.types.CBufRet.f32 %629, 0
  %631 = extractvalue %dx.types.CBufRet.f32 %629, 1
  %632 = extractvalue %dx.types.CBufRet.f32 %629, 2
  %633 = fsub fast float %151, %630
  %634 = fsub fast float %152, %631
  %635 = fsub fast float %153, %632
  %636 = fmul fast float %633, %633
  %637 = fmul fast float %634, %634
  %638 = fadd fast float %636, %637
  %639 = fmul fast float %635, %635
  %640 = fadd fast float %638, %639
  %641 = call float @dx.op.unary.f32(i32 24, float %640)  ; Sqrt(value)
  %642 = fsub fast float %641, %597
  %643 = fsub fast float %598, %597
  %644 = fdiv fast float %642, %643
  %645 = call float @dx.op.unary.f32(i32 7, float %644)  ; Saturate(value)
  %646 = fmul fast float %645, %645
  %647 = fmul fast float %646, %626
  br label %648

; <label>:648                                     ; preds = %628, %596, %576
  %649 = phi float [ 0.000000e+00, %576 ], [ %647, %628 ], [ %626, %596 ]
  %650 = fmul fast float %649, %479
  %651 = fadd fast float %650, %526
  br label %652

; <label>:652                                     ; preds = %648, %525
  %653 = phi float [ %651, %648 ], [ %526, %525 ]
  %654 = icmp eq i32 %468, 0
  br i1 %654, label %686, label %655, !dx.controlflow.hints !45

; <label>:655                                     ; preds = %652
  %656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %657 = extractvalue %dx.types.CBufRet.f32 %656, 1
  %658 = fsub fast float %479, %657
  %659 = extractvalue %dx.types.CBufRet.f32 %656, 3
  %660 = fmul fast float %658, %659
  %661 = call float @dx.op.unary.f32(i32 7, float %660)  ; Saturate(value)
  %662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %663 = extractvalue %dx.types.CBufRet.f32 %662, 3
  %664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %665 = extractvalue %dx.types.CBufRet.f32 %664, 2
  %666 = fsub fast float %665, %466
  %667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %668 = extractvalue %dx.types.CBufRet.f32 %667, 3
  %669 = fmul fast float %666, %668
  %670 = call float @dx.op.unary.f32(i32 7, float %669)  ; Saturate(value)
  %671 = fmul fast float %670, %663
  %672 = extractvalue %dx.types.CBufRet.f32 %667, 0
  %673 = fsub fast float %154, %672
  %674 = extractvalue %dx.types.CBufRet.f32 %667, 1
  %675 = fmul fast float %673, %674
  %676 = call float @dx.op.unary.f32(i32 7, float %675)  ; Saturate(value)
  %677 = fsub fast float 1.000000e+00, %661
  %678 = fmul fast float %676, %677
  %679 = fadd fast float %678, %661
  %680 = extractvalue %dx.types.CBufRet.f32 %656, 0
  %681 = fsub fast float %671, %680
  %682 = fmul fast float %681, %679
  %683 = fadd fast float %682, %680
  %684 = fmul fast float %683, %479
  %685 = fadd fast float %684, %653
  br label %686

; <label>:686                                     ; preds = %655, %652
  %687 = phi float [ %685, %655 ], [ %653, %652 ]
  %688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %689 = extractvalue %dx.types.CBufRet.f32 %688, 1
  %690 = fcmp fast ogt float %687, %689
  br i1 %690, label %691, label %703, !dx.controlflow.hints !46

; <label>:691                                     ; preds = %686
  %692 = fmul fast float %687, 0xBFF7154760000000
  %693 = call float @dx.op.unary.f32(i32 21, float %692)  ; Exp(value)
  %694 = call float @dx.op.unary.f32(i32 7, float %693)  ; Saturate(value)
  %695 = icmp eq i32 %156, 0
  br i1 %695, label %696, label %697, !dx.controlflow.hints !47

; <label>:696                                     ; preds = %691
  br label %697

; <label>:697                                     ; preds = %696, %691
  %698 = phi i32 [ %156, %691 ], [ 1, %696 ]
  %699 = phi float [ %157, %691 ], [ %154, %696 ]
  %700 = fadd fast float %479, %158
  %701 = fadd fast float %687, %159
  %702 = fmul fast float %694, %150
  br label %703

; <label>:703                                     ; preds = %697, %686
  %704 = phi float [ %702, %697 ], [ %150, %686 ]
  %705 = phi i32 [ %698, %697 ], [ %156, %686 ]
  %706 = phi float [ %699, %697 ], [ %157, %686 ]
  %707 = phi float [ %700, %697 ], [ %158, %686 ]
  %708 = phi float [ %701, %697 ], [ %159, %686 ]
  %709 = fadd fast float %479, %154
  %710 = fmul fast float %479, %49
  %711 = fmul fast float %479, %50
  %712 = fmul fast float %479, %51
  %713 = fadd fast float %710, %151
  %714 = fadd fast float %711, %152
  %715 = fadd fast float %712, %153
  %716 = fcmp fast olt float %709, %124
  %717 = extractvalue %dx.types.CBufRet.f32 %688, 2
  %718 = fcmp fast olt float %717, %704
  %719 = and i1 %716, %718
  br i1 %719, label %143, label %720

; <label>:720                                     ; preds = %703
  br label %721

; <label>:721                                     ; preds = %720, %117
  %722 = phi float [ 0.000000e+00, %117 ], [ %706, %720 ]
  %723 = phi float [ 0.000000e+00, %117 ], [ %707, %720 ]
  %724 = phi float [ 0.000000e+00, %117 ], [ %708, %720 ]
  %725 = extractvalue %dx.types.CBufRet.f32 %43, 3
  %726 = fmul fast float %725, %722
  %727 = fdiv fast float 1.000000e+00, %723
  %728 = fmul fast float %727, %724
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %10, i32 %11, i32 undef, float %726, float %728, float %724, float %726, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

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
!5 = !{!6, !8, !9, !11}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 27, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 18, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.StructuredBuffer<VolumetricBBoxGpu>"* undef, !"", i32 0, i32 25, i32 1, i32 12, i32 0, !10}
!10 = !{i32 1, i32 164}
!11 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 13, i32 1, i32 2, i32 0, !7}
!12 = !{!13}
!13 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 7, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!14 = !{!15, !16}
!15 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!16 = !{i32 1, %FogRaymarchingConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 112, null}
!17 = !{!18, !19}
!18 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!19 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!20 = !{void ()* @cs_fog_raymarching_air_particles_brfog, !"cs_fog_raymarching_air_particles_brfog", null, !4, !21}
!21 = !{i32 0, i64 272, i32 4, !22}
!22 = !{i32 8, i32 8, i32 1}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !32}
!32 = !{!"llvm.loop.unroll.disable"}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 1}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 1}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 1}

