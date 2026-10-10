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
; shader hash: 5985999c9b500b112b1a8151d5d18825
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

define void @cs_fog_raymarching_particles_brfog() {
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
  %52 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %53 = extractvalue %dx.types.CBufRet.f32 %52, 3
  %54 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %55 = extractvalue %dx.types.CBufRet.f32 %54, 0
  %56 = fsub fast float -0.000000e+00, %41
  %57 = fsub fast float -0.000000e+00, %42
  %58 = fsub fast float %53, %35
  %59 = fadd fast float %58, %55
  %60 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %56, float %57, float %59)  ; Dot3(ax,ay,az,bx,by,bz)
  %61 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %49, float %50, float %51)  ; Dot3(ax,ay,az,bx,by,bz)
  %62 = fdiv fast float 1.000000e+00, %61
  %63 = fmul fast float %62, %60
  %64 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %65 = extractvalue %dx.types.CBufRet.f32 %64, 2
  %66 = fsub fast float %65, %35
  %67 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %56, float %57, float %66)  ; Dot3(ax,ay,az,bx,by,bz)
  %68 = fmul fast float %62, %67
  %69 = call float @dx.op.binary.f32(i32 36, float %63, float %68)  ; FMin(a,b)
  %70 = call float @dx.op.binary.f32(i32 35, float %63, float %68)  ; FMax(a,b)
  %71 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %69)  ; FMin(a,b)
  %72 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %70)  ; FMax(a,b)
  %73 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %74 = extractvalue %dx.types.CBufRet.f32 %73, 2
  %75 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %76 = extractvalue %dx.types.CBufRet.f32 %75, 3
  %77 = fsub fast float %74, %35
  %78 = fadd fast float %77, %76
  %79 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %56, float %57, float %78)  ; Dot3(ax,ay,az,bx,by,bz)
  %80 = fmul fast float %62, %79
  %81 = fcmp fast olt float %80, 0.000000e+00
  %82 = fcmp olt float %48, -0.000000e+00
  %83 = and i1 %82, %81
  br i1 %83, label %88, label %84, !dx.controlflow.hints !23

; <label>:84                                      ; preds = %0
  %85 = fcmp ogt float %48, -0.000000e+00
  br i1 %85, label %86, label %88, !dx.controlflow.hints !24

; <label>:86                                      ; preds = %84
  %87 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %80)  ; FMax(a,b)
  br label %88

; <label>:88                                      ; preds = %86, %84, %0
  %89 = phi float [ 0.000000e+00, %0 ], [ %87, %86 ], [ 0.000000e+00, %84 ]
  %90 = phi float [ 0.000000e+00, %0 ], [ 0x47EFFFFFE0000000, %86 ], [ %80, %84 ]
  %91 = fcmp fast oeq float %90, 0.000000e+00
  br i1 %91, label %95, label %92, !dx.controlflow.hints !25

; <label>:92                                      ; preds = %88
  %93 = call float @dx.op.binary.f32(i32 36, float %71, float %89)  ; FMin(a,b)
  %94 = call float @dx.op.binary.f32(i32 35, float %72, float %90)  ; FMax(a,b)
  br label %95

; <label>:95                                      ; preds = %92, %88
  %96 = phi i32 [ 1, %92 ], [ 0, %88 ]
  %97 = phi float [ %94, %92 ], [ %72, %88 ]
  %98 = phi float [ %93, %92 ], [ %71, %88 ]
  %99 = fdiv fast float 1.000000e+00, %49
  %100 = fdiv fast float 1.000000e+00, %50
  %101 = fdiv fast float 1.000000e+00, %51
  %102 = call float @dx.op.binary.f32(i32 36, float %44, float %97)  ; FMin(a,b)
  %103 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %98)  ; FMax(a,b)
  %104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %105 = extractvalue %dx.types.CBufRet.f32 %104, 1
  %106 = fmul fast float %24, 2.000000e+00
  %107 = fadd fast float %106, -1.000000e+00
  %108 = fmul fast float %105, %107
  %109 = fadd fast float %108, %103
  %110 = fcmp fast olt float %109, %102
  %111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %112 = extractvalue %dx.types.CBufRet.f32 %111, 2
  %113 = fcmp fast olt float %112, 1.000000e+00
  %114 = and i1 %113, %110
  br i1 %114, label %115, label %635

; <label>:115                                     ; preds = %95
  %116 = fmul fast float %109, %51
  %117 = fadd fast float %116, %35
  %118 = fmul fast float %109, %50
  %119 = fadd fast float %118, %42
  %120 = fmul fast float %109, %49
  %121 = fadd fast float %120, %41
  br label %122

; <label>:122                                     ; preds = %617, %115
  %123 = phi i32 [ %427, %617 ], [ undef, %115 ]
  %124 = phi float [ %428, %617 ], [ undef, %115 ]
  %125 = phi float [ %243, %617 ], [ undef, %115 ]
  %126 = phi float [ %244, %617 ], [ undef, %115 ]
  %127 = phi float [ %245, %617 ], [ undef, %115 ]
  %128 = phi float [ %246, %617 ], [ undef, %115 ]
  %129 = phi float [ %618, %617 ], [ 1.000000e+00, %115 ]
  %130 = phi float [ %627, %617 ], [ %121, %115 ]
  %131 = phi float [ %628, %617 ], [ %119, %115 ]
  %132 = phi float [ %629, %617 ], [ %117, %115 ]
  %133 = phi float [ %623, %617 ], [ %109, %115 ]
  %134 = phi i32 [ %248, %617 ], [ 10, %115 ]
  %135 = phi i32 [ %619, %617 ], [ 0, %115 ]
  %136 = phi float [ %620, %617 ], [ 0.000000e+00, %115 ]
  %137 = phi float [ %621, %617 ], [ 0.000000e+00, %115 ]
  %138 = phi float [ %622, %617 ], [ 0.000000e+00, %115 ]
  %139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %140 = extractvalue %dx.types.CBufRet.f32 %139, 1
  %141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %142 = extractvalue %dx.types.CBufRet.f32 %141, 0
  %143 = extractvalue %dx.types.CBufRet.f32 %141, 1
  %144 = fsub fast float %130, %142
  %145 = fsub fast float %131, %143
  %146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %147 = extractvalue %dx.types.CBufRet.f32 %146, 2
  %148 = extractvalue %dx.types.CBufRet.f32 %146, 3
  %149 = fmul fast float %144, %147
  %150 = fmul fast float %145, %148
  %151 = call float @dx.op.binary.f32(i32 36, float %149, float %150)  ; FMin(a,b)
  %152 = fcmp fast olt float %151, 0.000000e+00
  %153 = call float @dx.op.binary.f32(i32 35, float %149, float %150)  ; FMax(a,b)
  %154 = fcmp fast ogt float %153, 1.000000e+00
  %155 = or i1 %152, %154
  %156 = extractvalue %dx.types.CBufRet.f32 %141, 2
  %157 = fcmp fast olt float %132, %156
  %158 = or i1 %155, %157
  %159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %160 = extractvalue %dx.types.CBufRet.f32 %159, 3
  %161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %162 = extractvalue %dx.types.CBufRet.f32 %161, 0
  %163 = fadd fast float %162, %160
  %164 = fcmp fast ogt float %132, %163
  %165 = or i1 %158, %164
  br i1 %165, label %166, label %195, !dx.controlflow.hints !26

; <label>:166                                     ; preds = %122
  %167 = extractvalue %dx.types.CBufRet.f32 %146, 0
  %168 = extractvalue %dx.types.CBufRet.f32 %146, 1
  %169 = fsub fast float %142, %130
  %170 = fmul fast float %169, %99
  %171 = fadd fast float %169, %167
  %172 = fmul fast float %171, %99
  %173 = call float @dx.op.binary.f32(i32 36, float %170, float %172)  ; FMin(a,b)
  %174 = call float @dx.op.binary.f32(i32 35, float %170, float %172)  ; FMax(a,b)
  %175 = fsub fast float %143, %131
  %176 = fmul fast float %175, %100
  %177 = fadd fast float %175, %168
  %178 = fmul fast float %177, %100
  %179 = call float @dx.op.binary.f32(i32 36, float %176, float %178)  ; FMin(a,b)
  %180 = call float @dx.op.binary.f32(i32 35, float %173, float %179)  ; FMax(a,b)
  %181 = call float @dx.op.binary.f32(i32 35, float %176, float %178)  ; FMax(a,b)
  %182 = call float @dx.op.binary.f32(i32 36, float %174, float %181)  ; FMin(a,b)
  %183 = fsub fast float %156, %132
  %184 = fmul fast float %183, %101
  %185 = fsub fast float %160, %132
  %186 = fadd fast float %185, %162
  %187 = fmul fast float %186, %101
  %188 = call float @dx.op.binary.f32(i32 36, float %184, float %187)  ; FMin(a,b)
  %189 = call float @dx.op.binary.f32(i32 35, float %180, float %188)  ; FMax(a,b)
  %190 = call float @dx.op.binary.f32(i32 35, float %184, float %187)  ; FMax(a,b)
  %191 = call float @dx.op.binary.f32(i32 36, float %182, float %190)  ; FMin(a,b)
  %192 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %189)  ; FMax(a,b)
  %193 = fcmp fast oge float %191, %192
  %194 = select i1 %193, float %189, float 1.000000e+07
  br label %241

; <label>:195                                     ; preds = %122
  %196 = fsub fast float 1.000000e+00, %150
  %197 = icmp eq i32 %134, 0
  br i1 %197, label %226, label %198

; <label>:198                                     ; preds = %195
  br label %199

; <label>:199                                     ; preds = %222, %198
  %200 = phi i32 [ %223, %222 ], [ %134, %198 ]
  %201 = uitofp i32 %200 to float
  %202 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %7, float %149, float %196, float undef, float undef, i32 0, i32 0, i32 undef, float %201)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %203 = extractvalue %dx.types.ResRet.f32 %202, 0
  %204 = extractvalue %dx.types.ResRet.f32 %202, 1
  %205 = extractvalue %dx.types.ResRet.f32 %202, 2
  %206 = fcmp fast oeq float %203, 0.000000e+00
  %207 = fcmp ule float %132, %205
  %208 = fcmp uge float %132, %204
  %209 = or i1 %208, %207
  %210 = or i1 %206, %209
  br i1 %210, label %211, label %222, !dx.controlflow.hints !27

; <label>:211                                     ; preds = %199
  %212 = extractvalue %dx.types.ResRet.f32 %202, 3
  %213 = extractvalue %dx.types.CBufRet.f32 %146, 0
  %214 = and i32 %200, 31
  %215 = lshr i32 1024, %214
  %216 = uitofp i32 %215 to float
  %217 = fdiv fast float %213, %216
  %218 = add i32 %200, 1
  %219 = uitofp i32 %218 to float
  %220 = call float @dx.op.binary.f32(i32 36, float 1.000000e+01, float %219)  ; FMin(a,b)
  %221 = fptosi float %220 to i32
  br label %241

; <label>:222                                     ; preds = %199
  %223 = add i32 %200, -1
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %199, !llvm.loop !28

; <label>:225                                     ; preds = %222
  br label %226

; <label>:226                                     ; preds = %225, %195
  %227 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %6, float %149, float %196, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %228 = extractvalue %dx.types.ResRet.f32 %227, 0
  %229 = extractvalue %dx.types.ResRet.f32 %227, 1
  %230 = extractvalue %dx.types.ResRet.f32 %227, 2
  %231 = extractvalue %dx.types.ResRet.f32 %227, 3
  %232 = extractvalue %dx.types.CBufRet.f32 %146, 0
  %233 = fmul fast float %232, 9.765625e-04
  %234 = fcmp fast oeq float %228, 0.000000e+00
  %235 = fcmp ule float %132, %230
  %236 = fcmp uge float %132, %229
  %237 = or i1 %236, %235
  %238 = or i1 %234, %237
  %239 = zext i1 %238 to i32
  %240 = xor i32 %239, 1
  br label %241

; <label>:241                                     ; preds = %226, %211, %166
  %242 = phi float [ %194, %166 ], [ %217, %211 ], [ %233, %226 ]
  %243 = phi float [ %125, %166 ], [ %203, %211 ], [ %228, %226 ]
  %244 = phi float [ %126, %166 ], [ %204, %211 ], [ %229, %226 ]
  %245 = phi float [ %127, %166 ], [ %205, %211 ], [ %230, %226 ]
  %246 = phi float [ %128, %166 ], [ %212, %211 ], [ %231, %226 ]
  %247 = phi i32 [ 0, %166 ], [ 0, %211 ], [ %240, %226 ]
  %248 = phi i32 [ 10, %166 ], [ %221, %211 ], [ 1, %226 ]
  %249 = icmp eq i32 %247, 0
  %250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %251 = extractvalue %dx.types.CBufRet.f32 %250, 2
  %252 = call float @dx.op.binary.f32(i32 35, float %242, float %251)  ; FMax(a,b)
  %253 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %252)  ; FMin(a,b)
  %254 = icmp eq i32 %96, 0
  br i1 %254, label %426, label %255, !dx.controlflow.hints !30

; <label>:255                                     ; preds = %241
  %256 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %257 = extractvalue %dx.types.CBufRet.i32 %256, 1
  %258 = and i32 %257, 1
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %417, !dx.controlflow.hints !31

; <label>:260                                     ; preds = %255
  %261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %262 = extractvalue %dx.types.CBufRet.f32 %261, 2
  %263 = extractvalue %dx.types.CBufRet.f32 %261, 3
  %264 = fmul fast float %262, %130
  %265 = fmul fast float %263, %131
  %266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %267 = extractvalue %dx.types.CBufRet.f32 %266, 0
  %268 = extractvalue %dx.types.CBufRet.f32 %266, 1
  %269 = fadd fast float %264, %267
  %270 = fadd fast float %265, %268
  %271 = call float @dx.op.unary.f32(i32 7, float %269)  ; Saturate(value)
  %272 = call float @dx.op.unary.f32(i32 7, float %270)  ; Saturate(value)
  %273 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %6, float %271, float %272, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %274 = extractvalue %dx.types.ResRet.f32 %273, 0
  %275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %276 = extractvalue %dx.types.CBufRet.f32 %275, 0
  %277 = fmul fast float %276, %274
  %278 = fsub fast float %269, %271
  %279 = fsub fast float %270, %272
  %280 = extractvalue %dx.types.CBufRet.f32 %261, 0
  %281 = extractvalue %dx.types.CBufRet.f32 %261, 1
  %282 = fmul fast float %280, %278
  %283 = fmul fast float %281, %279
  %284 = fmul fast float %282, %282
  %285 = fmul fast float %283, %283
  %286 = fadd fast float %284, %285
  %287 = call float @dx.op.unary.f32(i32 24, float %286)  ; Sqrt(value)
  %288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %289 = extractvalue %dx.types.CBufRet.f32 %288, 3
  %290 = fmul fast float %289, %287
  %291 = call float @dx.op.unary.f32(i32 7, float %290)  ; Saturate(value)
  %292 = extractvalue %dx.types.CBufRet.f32 %288, 2
  %293 = fsub fast float %292, %277
  %294 = fmul fast float %293, %291
  %295 = extractvalue %dx.types.CBufRet.f32 %275, 1
  %296 = fsub fast float %132, %277
  %297 = fsub fast float %296, %295
  %298 = fsub fast float %297, %294
  %299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %300 = extractvalue %dx.types.CBufRet.f32 %299, 2
  %301 = fsub fast float %298, %300
  %302 = fcmp fast olt float %301, 0.000000e+00
  %303 = call float @dx.op.unary.f32(i32 6, float %301)  ; FAbs(value)
  %304 = extractvalue %dx.types.CBufRet.i32 %256, 0
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %359, label %306

; <label>:306                                     ; preds = %260
  br label %307

; <label>:307                                     ; preds = %346, %306
  %308 = phi i32 [ %352, %346 ], [ 1, %306 ]
  %309 = phi float [ %354, %346 ], [ 0x47EFFFFFE0000000, %306 ]
  %310 = phi i32 [ %355, %346 ], [ 0, %306 ]
  %311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %312 = extractvalue %dx.types.CBufRet.f32 %311, 1
  %313 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %314 = extractvalue %dx.types.CBufRet.i32 %313, 1
  %315 = and i32 %314, 8
  %316 = icmp eq i32 %315, 0
  %317 = fcmp fast ogt float %312, %298
  %318 = or i1 %317, %316
  %319 = add i32 %310, 171
  %320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 %319)  ; CBufferLoadLegacy(handle,regIndex)
  %321 = extractvalue %dx.types.CBufRet.f32 %320, 0
  %322 = extractvalue %dx.types.CBufRet.f32 %320, 1
  %323 = extractvalue %dx.types.CBufRet.f32 %320, 2
  br i1 %318, label %324, label %330, !dx.controlflow.hints !32

; <label>:324                                     ; preds = %307
  %325 = fsub fast float %321, %130
  %326 = fsub fast float %322, %131
  %327 = fmul fast float %325, %325
  %328 = fmul fast float %326, %326
  %329 = fadd fast float %327, %328
  br label %346

; <label>:330                                     ; preds = %307
  %331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %332 = extractvalue %dx.types.CBufRet.f32 %331, 2
  %333 = extractvalue %dx.types.CBufRet.f32 %311, 2
  %334 = fmul fast float %333, %332
  %335 = fsub fast float %334, %312
  %336 = fdiv fast float %323, %335
  %337 = fsub fast float %130, %321
  %338 = fsub fast float %131, %322
  %339 = fsub fast float %298, %312
  %340 = fmul fast float %336, %339
  %341 = fmul fast float %337, %337
  %342 = fmul fast float %338, %338
  %343 = fadd fast float %341, %342
  %344 = fmul fast float %340, %340
  %345 = fadd fast float %343, %344
  br label %346

; <label>:346                                     ; preds = %330, %324
  %347 = phi float [ %329, %324 ], [ %345, %330 ]
  %348 = call float @dx.op.unary.f32(i32 24, float %347)  ; Sqrt(value)
  %349 = fsub float %323, %348
  %350 = fcmp fast olt float %349, 0.000000e+00
  %351 = zext i1 %350 to i32
  %352 = and i32 %351, %308
  %353 = call float @dx.op.unary.f32(i32 6, float %349)  ; FAbs(value)
  %354 = call float @dx.op.binary.f32(i32 36, float %309, float %353)  ; FMin(a,b)
  %355 = add i32 %310, 1
  %356 = extractvalue %dx.types.CBufRet.i32 %313, 0
  %357 = icmp ult i32 %355, %356
  br i1 %357, label %307, label %358

; <label>:358                                     ; preds = %346
  br label %359

; <label>:359                                     ; preds = %358, %260
  %360 = phi i32 [ 1, %260 ], [ %352, %358 ]
  %361 = phi float [ 0x47EFFFFFE0000000, %260 ], [ %354, %358 ]
  br label %362

; <label>:362                                     ; preds = %362, %359
  %363 = phi i32 [ %360, %359 ], [ %402, %362 ]
  %364 = phi float [ 0x47EFFFFFE0000000, %359 ], [ %404, %362 ]
  %365 = phi i32 [ 0, %359 ], [ %405, %362 ]
  %366 = add nuw nsw i32 %365, 191
  %367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 %366)  ; CBufferLoadLegacy(handle,regIndex)
  %368 = extractvalue %dx.types.CBufRet.f32 %367, 0
  %369 = extractvalue %dx.types.CBufRet.f32 %367, 1
  %370 = extractvalue %dx.types.CBufRet.f32 %367, 2
  %371 = add nuw nsw i32 %365, 195
  %372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 %371)  ; CBufferLoadLegacy(handle,regIndex)
  %373 = extractvalue %dx.types.CBufRet.f32 %372, 0
  %374 = extractvalue %dx.types.CBufRet.f32 %372, 1
  %375 = extractvalue %dx.types.CBufRet.f32 %372, 2
  %376 = fsub fast float %130, %368
  %377 = fsub fast float %131, %369
  %378 = fsub fast float %298, %370
  %379 = call float @dx.op.unary.f32(i32 6, float %376)  ; FAbs(value)
  %380 = call float @dx.op.unary.f32(i32 6, float %377)  ; FAbs(value)
  %381 = call float @dx.op.unary.f32(i32 6, float %378)  ; FAbs(value)
  %382 = fsub fast float %379, %373
  %383 = fsub fast float %380, %374
  %384 = fsub fast float %381, %375
  %385 = call float @dx.op.binary.f32(i32 35, float %382, float 0.000000e+00)  ; FMax(a,b)
  %386 = call float @dx.op.binary.f32(i32 35, float %383, float 0.000000e+00)  ; FMax(a,b)
  %387 = call float @dx.op.binary.f32(i32 35, float %384, float 0.000000e+00)  ; FMax(a,b)
  %388 = fmul fast float %385, %385
  %389 = fmul fast float %386, %386
  %390 = fadd fast float %389, %388
  %391 = fmul fast float %387, %387
  %392 = fadd fast float %390, %391
  %393 = call float @dx.op.unary.f32(i32 24, float %392)  ; Sqrt(value)
  %394 = call float @dx.op.binary.f32(i32 35, float %383, float %384)  ; FMax(a,b)
  %395 = call float @dx.op.binary.f32(i32 35, float %382, float %394)  ; FMax(a,b)
  %396 = call float @dx.op.binary.f32(i32 36, float %395, float 0.000000e+00)  ; FMin(a,b)
  %397 = fadd fast float %396, %393
  %398 = fsub fast float -0.000000e+00, %397
  %399 = fcmp ogt float %397, -0.000000e+00
  %400 = icmp ne i32 %363, 0
  %401 = and i1 %400, %399
  %402 = zext i1 %401 to i32
  %403 = call float @dx.op.unary.f32(i32 6, float %398)  ; FAbs(value)
  %404 = call float @dx.op.binary.f32(i32 36, float %364, float %403)  ; FMin(a,b)
  %405 = add nuw nsw i32 %365, 1
  %406 = icmp eq i32 %405, 4
  br i1 %406, label %407, label %362

; <label>:407                                     ; preds = %362
  %408 = call float @dx.op.binary.f32(i32 36, float %303, float %404)  ; FMin(a,b)
  %409 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %410 = extractvalue %dx.types.CBufRet.i32 %409, 1
  %411 = and i32 %410, 2
  %412 = icmp ne i32 %411, 0
  %413 = xor i1 %401, %412
  %414 = call float @dx.op.binary.f32(i32 36, float %408, float %361)  ; FMin(a,b)
  %415 = and i1 %413, %302
  %416 = zext i1 %415 to i32
  br label %417

; <label>:417                                     ; preds = %407, %255
  %418 = phi i32 [ %123, %255 ], [ %416, %407 ]
  %419 = phi float [ 0.000000e+00, %255 ], [ %414, %407 ]
  %420 = phi float [ %132, %255 ], [ %298, %407 ]
  %421 = icmp ne i32 %418, 0
  %422 = extractvalue %dx.types.CBufRet.f32 %250, 3
  %423 = call float @dx.op.binary.f32(i32 35, float %419, float %422)  ; FMax(a,b)
  %424 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %423)  ; FMin(a,b)
  %425 = zext i1 %421 to i32
  br label %426

; <label>:426                                     ; preds = %417, %241
  %427 = phi i32 [ %418, %417 ], [ %123, %241 ]
  %428 = phi float [ %420, %417 ], [ %124, %241 ]
  %429 = phi float [ %424, %417 ], [ 0x47EFFFFFE0000000, %241 ]
  %430 = phi i32 [ %425, %417 ], [ 0, %241 ]
  %431 = extractvalue %dx.types.CBufRet.f32 %139, 2
  %432 = fmul fast float %431, %133
  %433 = call float @dx.op.unary.f32(i32 23, float %432)  ; Log(value)
  %434 = fmul fast float %433, 0x3FE62E4300000000
  %435 = call float @dx.op.binary.f32(i32 35, float %434, float 1.000000e+00)  ; FMax(a,b)
  %436 = fmul fast float %435, %429
  %437 = call float @dx.op.binary.f32(i32 36, float %436, float %253)  ; FMin(a,b)
  %438 = call float @dx.op.binary.f32(i32 35, float %437, float %140)  ; FMax(a,b)
  %439 = fadd fast float %102, 0x3F1A36E2E0000000
  %440 = fsub fast float %439, %133
  %441 = call float @dx.op.binary.f32(i32 36, float %440, float %438)  ; FMin(a,b)
  br i1 %249, label %566, label %442, !dx.controlflow.hints !33

; <label>:442                                     ; preds = %426
  %443 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %444 = extractvalue %dx.types.CBufRet.i32 %443, 0
  %445 = icmp ne i32 %444, 0
  %446 = zext i1 %445 to i32
  %447 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %448 = extractvalue %dx.types.CBufRet.i32 %447, 0
  %449 = icmp eq i32 %448, 0
  br i1 %449, label %483, label %450

; <label>:450                                     ; preds = %442
  br label %451

; <label>:451                                     ; preds = %478, %450
  %452 = phi i32 [ %479, %478 ], [ 0, %450 ]
  %453 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %452, i32 0)  ; BufferLoad(srv,index,wot)
  %454 = extractvalue %dx.types.ResRet.f32 %453, 0
  %455 = extractvalue %dx.types.ResRet.f32 %453, 1
  %456 = extractvalue %dx.types.ResRet.f32 %453, 2
  %457 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %452, i32 16)  ; BufferLoad(srv,index,wot)
  %458 = extractvalue %dx.types.ResRet.f32 %457, 0
  %459 = extractvalue %dx.types.ResRet.f32 %457, 1
  %460 = extractvalue %dx.types.ResRet.f32 %457, 2
  %461 = fsub fast float %454, %458
  %462 = fsub fast float %455, %459
  %463 = fsub fast float %456, %460
  %464 = fadd fast float %458, %454
  %465 = fadd fast float %459, %455
  %466 = fadd fast float %460, %456
  %467 = fcmp fast olt float %130, %461
  %468 = fcmp fast olt float %131, %462
  %469 = fcmp fast olt float %132, %463
  %470 = or i1 %467, %468
  %471 = or i1 %469, %470
  %472 = fcmp fast ogt float %130, %464
  %473 = fcmp fast ogt float %131, %465
  %474 = fcmp fast ogt float %132, %466
  %475 = or i1 %472, %473
  %476 = or i1 %474, %475
  %477 = or i1 %471, %476
  br i1 %477, label %478, label %481, !dx.controlflow.hints !34

; <label>:478                                     ; preds = %451
  %479 = add nuw i32 %452, 1
  %480 = icmp ult i32 %479, %448
  br i1 %480, label %451, label %481

; <label>:481                                     ; preds = %478, %451
  %482 = phi i32 [ 255, %478 ], [ %452, %451 ]
  br label %483

; <label>:483                                     ; preds = %481, %442
  %484 = phi i32 [ 255, %442 ], [ %482, %481 ]
  %485 = icmp eq i32 %484, 255
  br i1 %485, label %491, label %486, !dx.controlflow.hints !35

; <label>:486                                     ; preds = %483
  %487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %484, i32 156)  ; BufferLoad(srv,index,wot)
  %488 = extractvalue %dx.types.ResRet.i32 %487, 0
  %489 = icmp ne i32 %488, 0
  %490 = zext i1 %489 to i32
  br label %491

; <label>:491                                     ; preds = %486, %483
  %492 = phi i32 [ %490, %486 ], [ %446, %483 ]
  %493 = icmp eq i32 %492, 0
  br i1 %493, label %494, label %563, !dx.controlflow.hints !36

; <label>:494                                     ; preds = %491
  %495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %496 = extractvalue %dx.types.CBufRet.f32 %495, 3
  %497 = extractvalue %dx.types.CBufRet.f32 %159, 0
  %498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %499 = extractvalue %dx.types.CBufRet.f32 %498, 2
  %500 = extractvalue %dx.types.CBufRet.f32 %498, 3
  br i1 %485, label %511, label %501, !dx.controlflow.hints !37

; <label>:501                                     ; preds = %494
  %502 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %484, i32 60)  ; BufferLoad(srv,index,wot)
  %503 = extractvalue %dx.types.ResRet.f32 %502, 0
  %504 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %484, i32 64)  ; BufferLoad(srv,index,wot)
  %505 = extractvalue %dx.types.ResRet.f32 %504, 0
  %506 = extractvalue %dx.types.ResRet.f32 %504, 1
  %507 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %484, i32 72)  ; BufferLoad(srv,index,wot)
  %508 = extractvalue %dx.types.ResRet.f32 %507, 0
  %509 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %484, i32 96)  ; BufferLoad(srv,index,wot)
  %510 = extractvalue %dx.types.ResRet.f32 %509, 0
  br label %511

; <label>:511                                     ; preds = %501, %494
  %512 = phi float [ %505, %501 ], [ %499, %494 ]
  %513 = phi float [ %506, %501 ], [ %500, %494 ]
  %514 = phi float [ %510, %501 ], [ %497, %494 ]
  %515 = phi float [ %508, %501 ], [ %160, %494 ]
  %516 = phi float [ %503, %501 ], [ %162, %494 ]
  %517 = call float @dx.op.binary.f32(i32 35, float %243, float 0.000000e+00)  ; FMax(a,b)
  %518 = call float @dx.op.binary.f32(i32 36, float %517, float 1.000000e+00)  ; FMin(a,b)
  %519 = call float @dx.op.unary.f32(i32 24, float %518)  ; Sqrt(value)
  %520 = call float @dx.op.binary.f32(i32 35, float %246, float 0x3F847AE140000000)  ; FMax(a,b)
  %521 = fsub fast float %244, %132
  %522 = fsub fast float %132, %245
  %523 = call float @dx.op.binary.f32(i32 36, float %522, float %521)  ; FMin(a,b)
  %524 = fdiv fast float %523, %520
  %525 = call float @dx.op.unary.f32(i32 7, float %524)  ; Saturate(value)
  %526 = fsub fast float %132, %515
  %527 = fdiv fast float %526, %516
  %528 = call float @dx.op.unary.f32(i32 7, float %527)  ; Saturate(value)
  %529 = fsub fast float 1.000000e+00, %528
  %530 = fmul float %525, %529
  %531 = fmul float %530, %530
  %532 = fmul fast float %519, %496
  %533 = fmul fast float %532, %531
  %534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %535 = extractvalue %dx.types.CBufRet.f32 %534, 2
  %536 = extractvalue %dx.types.CBufRet.f32 %534, 1
  %537 = fsub fast float %533, %536
  %538 = fsub fast float %535, %536
  %539 = fdiv fast float %537, %538
  %540 = call float @dx.op.unary.f32(i32 7, float %539)  ; Saturate(value)
  %541 = fmul fast float %540, %514
  %542 = fcmp fast ogt float %513, 0.000000e+00
  br i1 %542, label %543, label %563, !dx.controlflow.hints !38

; <label>:543                                     ; preds = %511
  %544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %545 = extractvalue %dx.types.CBufRet.f32 %544, 0
  %546 = extractvalue %dx.types.CBufRet.f32 %544, 1
  %547 = extractvalue %dx.types.CBufRet.f32 %544, 2
  %548 = fsub fast float %130, %545
  %549 = fsub fast float %131, %546
  %550 = fsub fast float %132, %547
  %551 = fmul fast float %548, %548
  %552 = fmul fast float %549, %549
  %553 = fadd fast float %551, %552
  %554 = fmul fast float %550, %550
  %555 = fadd fast float %553, %554
  %556 = call float @dx.op.unary.f32(i32 24, float %555)  ; Sqrt(value)
  %557 = fsub fast float %556, %512
  %558 = fsub fast float %513, %512
  %559 = fdiv fast float %557, %558
  %560 = call float @dx.op.unary.f32(i32 7, float %559)  ; Saturate(value)
  %561 = fmul fast float %560, %560
  %562 = fmul fast float %561, %541
  br label %563

; <label>:563                                     ; preds = %543, %511, %491
  %564 = phi float [ 0.000000e+00, %491 ], [ %562, %543 ], [ %541, %511 ]
  %565 = fmul fast float %564, %441
  br label %566

; <label>:566                                     ; preds = %563, %426
  %567 = phi float [ %565, %563 ], [ 0.000000e+00, %426 ]
  %568 = icmp eq i32 %430, 0
  br i1 %568, label %600, label %569, !dx.controlflow.hints !39

; <label>:569                                     ; preds = %566
  %570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %571 = extractvalue %dx.types.CBufRet.f32 %570, 1
  %572 = fsub fast float %441, %571
  %573 = extractvalue %dx.types.CBufRet.f32 %570, 3
  %574 = fmul fast float %572, %573
  %575 = call float @dx.op.unary.f32(i32 7, float %574)  ; Saturate(value)
  %576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %577 = extractvalue %dx.types.CBufRet.f32 %576, 3
  %578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %579 = extractvalue %dx.types.CBufRet.f32 %578, 2
  %580 = fsub fast float %579, %428
  %581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %582 = extractvalue %dx.types.CBufRet.f32 %581, 3
  %583 = fmul fast float %580, %582
  %584 = call float @dx.op.unary.f32(i32 7, float %583)  ; Saturate(value)
  %585 = fmul fast float %584, %577
  %586 = extractvalue %dx.types.CBufRet.f32 %581, 0
  %587 = fsub fast float %133, %586
  %588 = extractvalue %dx.types.CBufRet.f32 %581, 1
  %589 = fmul fast float %587, %588
  %590 = call float @dx.op.unary.f32(i32 7, float %589)  ; Saturate(value)
  %591 = fsub fast float 1.000000e+00, %575
  %592 = fmul fast float %590, %591
  %593 = fadd fast float %592, %575
  %594 = extractvalue %dx.types.CBufRet.f32 %570, 0
  %595 = fsub fast float %585, %594
  %596 = fmul fast float %595, %593
  %597 = fadd fast float %596, %594
  %598 = fmul fast float %597, %441
  %599 = fadd fast float %598, %567
  br label %600

; <label>:600                                     ; preds = %569, %566
  %601 = phi float [ %599, %569 ], [ %567, %566 ]
  %602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %603 = extractvalue %dx.types.CBufRet.f32 %602, 1
  %604 = fcmp fast ogt float %601, %603
  br i1 %604, label %605, label %617, !dx.controlflow.hints !40

; <label>:605                                     ; preds = %600
  %606 = fmul fast float %601, 0xBFF7154760000000
  %607 = call float @dx.op.unary.f32(i32 21, float %606)  ; Exp(value)
  %608 = call float @dx.op.unary.f32(i32 7, float %607)  ; Saturate(value)
  %609 = icmp eq i32 %135, 0
  br i1 %609, label %610, label %611, !dx.controlflow.hints !41

; <label>:610                                     ; preds = %605
  br label %611

; <label>:611                                     ; preds = %610, %605
  %612 = phi i32 [ %135, %605 ], [ 1, %610 ]
  %613 = phi float [ %136, %605 ], [ %133, %610 ]
  %614 = fadd fast float %441, %137
  %615 = fadd fast float %601, %138
  %616 = fmul fast float %608, %129
  br label %617

; <label>:617                                     ; preds = %611, %600
  %618 = phi float [ %616, %611 ], [ %129, %600 ]
  %619 = phi i32 [ %612, %611 ], [ %135, %600 ]
  %620 = phi float [ %613, %611 ], [ %136, %600 ]
  %621 = phi float [ %614, %611 ], [ %137, %600 ]
  %622 = phi float [ %615, %611 ], [ %138, %600 ]
  %623 = fadd fast float %441, %133
  %624 = fmul fast float %441, %49
  %625 = fmul fast float %441, %50
  %626 = fmul fast float %441, %51
  %627 = fadd fast float %624, %130
  %628 = fadd fast float %625, %131
  %629 = fadd fast float %626, %132
  %630 = fcmp fast olt float %623, %102
  %631 = extractvalue %dx.types.CBufRet.f32 %602, 2
  %632 = fcmp fast olt float %631, %618
  %633 = and i1 %630, %632
  br i1 %633, label %122, label %634

; <label>:634                                     ; preds = %617
  br label %635

; <label>:635                                     ; preds = %634, %95
  %636 = phi float [ 0.000000e+00, %95 ], [ %620, %634 ]
  %637 = phi float [ 0.000000e+00, %95 ], [ %621, %634 ]
  %638 = phi float [ 0.000000e+00, %95 ], [ %622, %634 ]
  %639 = extractvalue %dx.types.CBufRet.f32 %43, 3
  %640 = fmul fast float %639, %636
  %641 = fdiv fast float 1.000000e+00, %637
  %642 = fmul fast float %641, %638
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %10, i32 %11, i32 undef, float %640, float %642, float %638, float %640, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!20 = !{void ()* @cs_fog_raymarching_particles_brfog, !"cs_fog_raymarching_particles_brfog", null, !4, !21}
!21 = !{i32 0, i64 272, i32 4, !22}
!22 = !{i32 8, i32 8, i32 1}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.unroll.disable"}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 1}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 1}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 1}

