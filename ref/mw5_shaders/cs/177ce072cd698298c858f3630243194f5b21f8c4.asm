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
; shader hash: cce398068c0b890fe4ea181f675be011
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

define void @cs_fog_raymarching_brfog() {
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
  %49 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %50 = extractvalue %dx.types.CBufRet.f32 %49, 2
  %51 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %52 = extractvalue %dx.types.CBufRet.f32 %51, 3
  %53 = fsub fast float -0.000000e+00, %38
  %54 = fsub fast float -0.000000e+00, %39
  %55 = fsub fast float %50, %32
  %56 = fadd fast float %55, %52
  %57 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %53, float %54, float %56)  ; Dot3(ax,ay,az,bx,by,bz)
  %58 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %46, float %47, float %48)  ; Dot3(ax,ay,az,bx,by,bz)
  %59 = fdiv fast float 1.000000e+00, %58
  %60 = fmul fast float %59, %57
  %61 = fcmp fast olt float %60, 0.000000e+00
  %62 = fcmp olt float %45, -0.000000e+00
  %63 = and i1 %62, %61
  br i1 %63, label %68, label %64, !dx.controlflow.hints !19

; <label>:64                                      ; preds = %0
  %65 = fcmp ogt float %45, -0.000000e+00
  br i1 %65, label %66, label %68, !dx.controlflow.hints !20

; <label>:66                                      ; preds = %64
  %67 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %60)  ; FMax(a,b)
  br label %68

; <label>:68                                      ; preds = %66, %64, %0
  %69 = phi float [ 0.000000e+00, %0 ], [ %67, %66 ], [ 0.000000e+00, %64 ]
  %70 = phi float [ 0.000000e+00, %0 ], [ 0x47EFFFFFE0000000, %66 ], [ %60, %64 ]
  %71 = fcmp fast oeq float %70, 0.000000e+00
  br i1 %71, label %75, label %72, !dx.controlflow.hints !21

; <label>:72                                      ; preds = %68
  %73 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %69)  ; FMin(a,b)
  %74 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %70)  ; FMax(a,b)
  br label %75

; <label>:75                                      ; preds = %72, %68
  %76 = phi i32 [ 1, %72 ], [ 0, %68 ]
  %77 = phi float [ %74, %72 ], [ -1.000000e+00, %68 ]
  %78 = phi float [ %73, %72 ], [ 0x47EFFFFFE0000000, %68 ]
  %79 = call float @dx.op.binary.f32(i32 36, float %41, float %77)  ; FMin(a,b)
  %80 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %78)  ; FMax(a,b)
  %81 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %82 = extractvalue %dx.types.CBufRet.f32 %81, 1
  %83 = fmul fast float %21, 2.000000e+00
  %84 = fadd fast float %83, -1.000000e+00
  %85 = fmul fast float %82, %84
  %86 = fadd fast float %85, %80
  %87 = fcmp fast olt float %86, %79
  %88 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %89 = extractvalue %dx.types.CBufRet.f32 %88, 2
  %90 = fcmp fast olt float %89, 1.000000e+00
  %91 = and i1 %90, %87
  br i1 %91, label %92, label %368

; <label>:92                                      ; preds = %75
  %93 = fmul fast float %86, %48
  %94 = fadd fast float %93, %32
  %95 = fmul fast float %86, %47
  %96 = fadd fast float %95, %39
  %97 = fmul fast float %86, %46
  %98 = fadd fast float %97, %38
  br label %99

; <label>:99                                      ; preds = %350, %92
  %100 = phi i32 [ %287, %350 ], [ undef, %92 ]
  %101 = phi float [ %288, %350 ], [ undef, %92 ]
  %102 = phi float [ %351, %350 ], [ 1.000000e+00, %92 ]
  %103 = phi float [ %360, %350 ], [ %98, %92 ]
  %104 = phi float [ %361, %350 ], [ %96, %92 ]
  %105 = phi float [ %362, %350 ], [ %94, %92 ]
  %106 = phi float [ %356, %350 ], [ %86, %92 ]
  %107 = phi i32 [ %352, %350 ], [ 0, %92 ]
  %108 = phi float [ %353, %350 ], [ 0.000000e+00, %92 ]
  %109 = phi float [ %354, %350 ], [ 0.000000e+00, %92 ]
  %110 = phi float [ %355, %350 ], [ 0.000000e+00, %92 ]
  %111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %112 = extractvalue %dx.types.CBufRet.f32 %111, 1
  %113 = icmp eq i32 %76, 0
  br i1 %113, label %286, label %114, !dx.controlflow.hints !22

; <label>:114                                     ; preds = %99
  %115 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %116 = extractvalue %dx.types.CBufRet.i32 %115, 1
  %117 = and i32 %116, 1
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %276, !dx.controlflow.hints !23

; <label>:119                                     ; preds = %114
  %120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %121 = extractvalue %dx.types.CBufRet.f32 %120, 2
  %122 = extractvalue %dx.types.CBufRet.f32 %120, 3
  %123 = fmul fast float %121, %103
  %124 = fmul fast float %122, %104
  %125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %126 = extractvalue %dx.types.CBufRet.f32 %125, 0
  %127 = extractvalue %dx.types.CBufRet.f32 %125, 1
  %128 = fadd fast float %123, %126
  %129 = fadd fast float %124, %127
  %130 = call float @dx.op.unary.f32(i32 7, float %128)  ; Saturate(value)
  %131 = call float @dx.op.unary.f32(i32 7, float %129)  ; Saturate(value)
  %132 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %130, float %131, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %133 = extractvalue %dx.types.ResRet.f32 %132, 0
  %134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %135 = extractvalue %dx.types.CBufRet.f32 %134, 0
  %136 = fmul fast float %135, %133
  %137 = fsub fast float %128, %130
  %138 = fsub fast float %129, %131
  %139 = extractvalue %dx.types.CBufRet.f32 %120, 0
  %140 = extractvalue %dx.types.CBufRet.f32 %120, 1
  %141 = fmul fast float %139, %137
  %142 = fmul fast float %140, %138
  %143 = fmul fast float %141, %141
  %144 = fmul fast float %142, %142
  %145 = fadd fast float %143, %144
  %146 = call float @dx.op.unary.f32(i32 24, float %145)  ; Sqrt(value)
  %147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %148 = extractvalue %dx.types.CBufRet.f32 %147, 3
  %149 = fmul fast float %148, %146
  %150 = call float @dx.op.unary.f32(i32 7, float %149)  ; Saturate(value)
  %151 = extractvalue %dx.types.CBufRet.f32 %147, 2
  %152 = fsub fast float %151, %136
  %153 = fmul fast float %152, %150
  %154 = extractvalue %dx.types.CBufRet.f32 %134, 1
  %155 = fsub fast float %105, %136
  %156 = fsub fast float %155, %154
  %157 = fsub fast float %156, %153
  %158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %159 = extractvalue %dx.types.CBufRet.f32 %158, 2
  %160 = fsub fast float %157, %159
  %161 = fcmp fast olt float %160, 0.000000e+00
  %162 = call float @dx.op.unary.f32(i32 6, float %160)  ; FAbs(value)
  %163 = extractvalue %dx.types.CBufRet.i32 %115, 0
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %218, label %165

; <label>:165                                     ; preds = %119
  br label %166

; <label>:166                                     ; preds = %205, %165
  %167 = phi i32 [ %211, %205 ], [ 1, %165 ]
  %168 = phi float [ %213, %205 ], [ 0x47EFFFFFE0000000, %165 ]
  %169 = phi i32 [ %214, %205 ], [ 0, %165 ]
  %170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %171 = extractvalue %dx.types.CBufRet.f32 %170, 1
  %172 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %173 = extractvalue %dx.types.CBufRet.i32 %172, 1
  %174 = and i32 %173, 8
  %175 = icmp eq i32 %174, 0
  %176 = fcmp fast ogt float %171, %157
  %177 = or i1 %176, %175
  %178 = add i32 %169, 171
  %179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 %178)  ; CBufferLoadLegacy(handle,regIndex)
  %180 = extractvalue %dx.types.CBufRet.f32 %179, 0
  %181 = extractvalue %dx.types.CBufRet.f32 %179, 1
  %182 = extractvalue %dx.types.CBufRet.f32 %179, 2
  br i1 %177, label %183, label %189, !dx.controlflow.hints !24

; <label>:183                                     ; preds = %166
  %184 = fsub fast float %180, %103
  %185 = fsub fast float %181, %104
  %186 = fmul fast float %184, %184
  %187 = fmul fast float %185, %185
  %188 = fadd fast float %186, %187
  br label %205

; <label>:189                                     ; preds = %166
  %190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %191 = extractvalue %dx.types.CBufRet.f32 %190, 2
  %192 = extractvalue %dx.types.CBufRet.f32 %170, 2
  %193 = fmul fast float %192, %191
  %194 = fsub fast float %193, %171
  %195 = fdiv fast float %182, %194
  %196 = fsub fast float %103, %180
  %197 = fsub fast float %104, %181
  %198 = fsub fast float %157, %171
  %199 = fmul fast float %195, %198
  %200 = fmul fast float %196, %196
  %201 = fmul fast float %197, %197
  %202 = fadd fast float %200, %201
  %203 = fmul fast float %199, %199
  %204 = fadd fast float %202, %203
  br label %205

; <label>:205                                     ; preds = %189, %183
  %206 = phi float [ %188, %183 ], [ %204, %189 ]
  %207 = call float @dx.op.unary.f32(i32 24, float %206)  ; Sqrt(value)
  %208 = fsub float %182, %207
  %209 = fcmp fast olt float %208, 0.000000e+00
  %210 = zext i1 %209 to i32
  %211 = and i32 %210, %167
  %212 = call float @dx.op.unary.f32(i32 6, float %208)  ; FAbs(value)
  %213 = call float @dx.op.binary.f32(i32 36, float %168, float %212)  ; FMin(a,b)
  %214 = add i32 %169, 1
  %215 = extractvalue %dx.types.CBufRet.i32 %172, 0
  %216 = icmp ult i32 %214, %215
  br i1 %216, label %166, label %217

; <label>:217                                     ; preds = %205
  br label %218

; <label>:218                                     ; preds = %217, %119
  %219 = phi i32 [ 1, %119 ], [ %211, %217 ]
  %220 = phi float [ 0x47EFFFFFE0000000, %119 ], [ %213, %217 ]
  br label %221

; <label>:221                                     ; preds = %221, %218
  %222 = phi i32 [ %219, %218 ], [ %261, %221 ]
  %223 = phi float [ 0x47EFFFFFE0000000, %218 ], [ %263, %221 ]
  %224 = phi i32 [ 0, %218 ], [ %264, %221 ]
  %225 = add nuw nsw i32 %224, 191
  %226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 %225)  ; CBufferLoadLegacy(handle,regIndex)
  %227 = extractvalue %dx.types.CBufRet.f32 %226, 0
  %228 = extractvalue %dx.types.CBufRet.f32 %226, 1
  %229 = extractvalue %dx.types.CBufRet.f32 %226, 2
  %230 = add nuw nsw i32 %224, 195
  %231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 %230)  ; CBufferLoadLegacy(handle,regIndex)
  %232 = extractvalue %dx.types.CBufRet.f32 %231, 0
  %233 = extractvalue %dx.types.CBufRet.f32 %231, 1
  %234 = extractvalue %dx.types.CBufRet.f32 %231, 2
  %235 = fsub fast float %103, %227
  %236 = fsub fast float %104, %228
  %237 = fsub fast float %157, %229
  %238 = call float @dx.op.unary.f32(i32 6, float %235)  ; FAbs(value)
  %239 = call float @dx.op.unary.f32(i32 6, float %236)  ; FAbs(value)
  %240 = call float @dx.op.unary.f32(i32 6, float %237)  ; FAbs(value)
  %241 = fsub fast float %238, %232
  %242 = fsub fast float %239, %233
  %243 = fsub fast float %240, %234
  %244 = call float @dx.op.binary.f32(i32 35, float %241, float 0.000000e+00)  ; FMax(a,b)
  %245 = call float @dx.op.binary.f32(i32 35, float %242, float 0.000000e+00)  ; FMax(a,b)
  %246 = call float @dx.op.binary.f32(i32 35, float %243, float 0.000000e+00)  ; FMax(a,b)
  %247 = fmul fast float %244, %244
  %248 = fmul fast float %245, %245
  %249 = fadd fast float %248, %247
  %250 = fmul fast float %246, %246
  %251 = fadd fast float %249, %250
  %252 = call float @dx.op.unary.f32(i32 24, float %251)  ; Sqrt(value)
  %253 = call float @dx.op.binary.f32(i32 35, float %242, float %243)  ; FMax(a,b)
  %254 = call float @dx.op.binary.f32(i32 35, float %241, float %253)  ; FMax(a,b)
  %255 = call float @dx.op.binary.f32(i32 36, float %254, float 0.000000e+00)  ; FMin(a,b)
  %256 = fadd fast float %255, %252
  %257 = fsub fast float -0.000000e+00, %256
  %258 = fcmp ogt float %256, -0.000000e+00
  %259 = icmp ne i32 %222, 0
  %260 = and i1 %259, %258
  %261 = zext i1 %260 to i32
  %262 = call float @dx.op.unary.f32(i32 6, float %257)  ; FAbs(value)
  %263 = call float @dx.op.binary.f32(i32 36, float %223, float %262)  ; FMin(a,b)
  %264 = add nuw nsw i32 %224, 1
  %265 = icmp eq i32 %264, 4
  br i1 %265, label %266, label %221

; <label>:266                                     ; preds = %221
  %267 = call float @dx.op.binary.f32(i32 36, float %162, float %263)  ; FMin(a,b)
  %268 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %269 = extractvalue %dx.types.CBufRet.i32 %268, 1
  %270 = and i32 %269, 2
  %271 = icmp ne i32 %270, 0
  %272 = xor i1 %260, %271
  %273 = call float @dx.op.binary.f32(i32 36, float %267, float %220)  ; FMin(a,b)
  %274 = and i1 %272, %161
  %275 = zext i1 %274 to i32
  br label %276

; <label>:276                                     ; preds = %266, %114
  %277 = phi i32 [ %100, %114 ], [ %275, %266 ]
  %278 = phi float [ 0.000000e+00, %114 ], [ %273, %266 ]
  %279 = phi float [ %105, %114 ], [ %157, %266 ]
  %280 = icmp ne i32 %277, 0
  %281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %282 = extractvalue %dx.types.CBufRet.f32 %281, 3
  %283 = call float @dx.op.binary.f32(i32 35, float %278, float %282)  ; FMax(a,b)
  %284 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %283)  ; FMin(a,b)
  %285 = zext i1 %280 to i32
  br label %286

; <label>:286                                     ; preds = %276, %99
  %287 = phi i32 [ %277, %276 ], [ %100, %99 ]
  %288 = phi float [ %279, %276 ], [ %101, %99 ]
  %289 = phi float [ %284, %276 ], [ 0x47EFFFFFE0000000, %99 ]
  %290 = phi i32 [ %285, %276 ], [ 0, %99 ]
  %291 = extractvalue %dx.types.CBufRet.f32 %111, 2
  %292 = fmul fast float %291, %106
  %293 = call float @dx.op.unary.f32(i32 23, float %292)  ; Log(value)
  %294 = fmul fast float %293, 0x3FE62E4300000000
  %295 = call float @dx.op.binary.f32(i32 35, float %294, float 1.000000e+00)  ; FMax(a,b)
  %296 = fmul fast float %295, %289
  %297 = call float @dx.op.binary.f32(i32 36, float %296, float 0x47EFFFFFE0000000)  ; FMin(a,b)
  %298 = call float @dx.op.binary.f32(i32 35, float %297, float %112)  ; FMax(a,b)
  %299 = fadd fast float %79, 0x3F1A36E2E0000000
  %300 = fsub fast float %299, %106
  %301 = call float @dx.op.binary.f32(i32 36, float %300, float %298)  ; FMin(a,b)
  %302 = icmp eq i32 %290, 0
  br i1 %302, label %333, label %303, !dx.controlflow.hints !25

; <label>:303                                     ; preds = %286
  %304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %305 = extractvalue %dx.types.CBufRet.f32 %304, 1
  %306 = fsub fast float %301, %305
  %307 = extractvalue %dx.types.CBufRet.f32 %304, 3
  %308 = fmul fast float %306, %307
  %309 = call float @dx.op.unary.f32(i32 7, float %308)  ; Saturate(value)
  %310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %311 = extractvalue %dx.types.CBufRet.f32 %310, 3
  %312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %313 = extractvalue %dx.types.CBufRet.f32 %312, 2
  %314 = fsub fast float %313, %288
  %315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %316 = extractvalue %dx.types.CBufRet.f32 %315, 3
  %317 = fmul fast float %314, %316
  %318 = call float @dx.op.unary.f32(i32 7, float %317)  ; Saturate(value)
  %319 = fmul fast float %318, %311
  %320 = extractvalue %dx.types.CBufRet.f32 %315, 0
  %321 = fsub fast float %106, %320
  %322 = extractvalue %dx.types.CBufRet.f32 %315, 1
  %323 = fmul fast float %321, %322
  %324 = call float @dx.op.unary.f32(i32 7, float %323)  ; Saturate(value)
  %325 = fsub fast float 1.000000e+00, %309
  %326 = fmul fast float %324, %325
  %327 = fadd fast float %326, %309
  %328 = extractvalue %dx.types.CBufRet.f32 %304, 0
  %329 = fsub fast float %319, %328
  %330 = fmul fast float %329, %327
  %331 = fadd fast float %330, %328
  %332 = fmul fast float %331, %301
  br label %333

; <label>:333                                     ; preds = %303, %286
  %334 = phi float [ %332, %303 ], [ 0.000000e+00, %286 ]
  %335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %336 = extractvalue %dx.types.CBufRet.f32 %335, 1
  %337 = fcmp fast ogt float %334, %336
  br i1 %337, label %338, label %350, !dx.controlflow.hints !26

; <label>:338                                     ; preds = %333
  %339 = fmul fast float %334, 0xBFF7154760000000
  %340 = call float @dx.op.unary.f32(i32 21, float %339)  ; Exp(value)
  %341 = call float @dx.op.unary.f32(i32 7, float %340)  ; Saturate(value)
  %342 = icmp eq i32 %107, 0
  br i1 %342, label %343, label %344, !dx.controlflow.hints !27

; <label>:343                                     ; preds = %338
  br label %344

; <label>:344                                     ; preds = %343, %338
  %345 = phi i32 [ %107, %338 ], [ 1, %343 ]
  %346 = phi float [ %108, %338 ], [ %106, %343 ]
  %347 = fadd fast float %301, %109
  %348 = fadd fast float %334, %110
  %349 = fmul fast float %341, %102
  br label %350

; <label>:350                                     ; preds = %344, %333
  %351 = phi float [ %349, %344 ], [ %102, %333 ]
  %352 = phi i32 [ %345, %344 ], [ %107, %333 ]
  %353 = phi float [ %346, %344 ], [ %108, %333 ]
  %354 = phi float [ %347, %344 ], [ %109, %333 ]
  %355 = phi float [ %348, %344 ], [ %110, %333 ]
  %356 = fadd fast float %301, %106
  %357 = fmul fast float %301, %46
  %358 = fmul fast float %301, %47
  %359 = fmul fast float %301, %48
  %360 = fadd fast float %357, %103
  %361 = fadd fast float %358, %104
  %362 = fadd fast float %359, %105
  %363 = fcmp fast olt float %356, %79
  %364 = extractvalue %dx.types.CBufRet.f32 %335, 2
  %365 = fcmp fast olt float %364, %351
  %366 = and i1 %363, %365
  br i1 %366, label %99, label %367

; <label>:367                                     ; preds = %350
  br label %368

; <label>:368                                     ; preds = %367, %75
  %369 = phi float [ 0.000000e+00, %75 ], [ %353, %367 ]
  %370 = phi float [ 0.000000e+00, %75 ], [ %354, %367 ]
  %371 = phi float [ 0.000000e+00, %75 ], [ %355, %367 ]
  %372 = extractvalue %dx.types.CBufRet.f32 %40, 3
  %373 = fmul fast float %372, %369
  %374 = fdiv fast float 1.000000e+00, %370
  %375 = fmul fast float %374, %371
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %7, i32 %8, i32 undef, float %373, float %375, float %371, float %373, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!16 = !{void ()* @cs_fog_raymarching_brfog, !"cs_fog_raymarching_brfog", null, !4, !17}
!17 = !{i32 0, i64 256, i32 4, !18}
!18 = !{i32 8, i32 8, i32 1}
!19 = distinct !{!19, !"dx.controlflow.hints", i32 2}
!20 = distinct !{!20, !"dx.controlflow.hints", i32 2}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 1}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 1}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 1}

