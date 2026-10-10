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
; shader hash: 95e8f1b8e17c81870e0365cffe9ebdfe
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
;                                   texture     f32          2d      T0            t13     1
;                                       UAV     f32          2d      U0             u7     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
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

define void @cs_fog_raymarching_air() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %6 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %7 = uitofp i32 %5 to float
  %8 = uitofp i32 %6 to float
  %9 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %10 = extractvalue %dx.types.CBufRet.f32 %9, 2
  %11 = fmul fast float %10, 0x3FE3C6EF40000000
  %12 = frem fast float %7, 2.560000e+02
  %13 = frem fast float %8, 2.560000e+02
  %14 = fptoui float %12 to i32
  %15 = fptoui float %13 to i32
  %16 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %14, i32 %15, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %17 = extractvalue %dx.types.ResRet.f32 %16, 1
  %18 = fadd fast float %17, %11
  %19 = call float @dx.op.unary.f32(i32 22, float %18)  ; Frc(value)
  %20 = fadd fast float %7, 5.000000e-01
  %21 = fadd fast float %8, 5.000000e-01
  %22 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %23 = extractvalue %dx.types.CBufRet.f32 %22, 2
  %24 = extractvalue %dx.types.CBufRet.f32 %22, 3
  %25 = fmul fast float %23, %20
  %26 = fmul fast float %24, %21
  %27 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %28 = extractvalue %dx.types.CBufRet.f32 %27, 0
  %29 = extractvalue %dx.types.CBufRet.f32 %27, 1
  %30 = extractvalue %dx.types.CBufRet.f32 %27, 2
  %31 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %32 = extractvalue %dx.types.CBufRet.f32 %31, 0
  %33 = extractvalue %dx.types.CBufRet.f32 %31, 1
  %34 = fmul fast float %25, %32
  %35 = fmul fast float %26, %33
  %36 = fadd fast float %34, %28
  %37 = fadd fast float %35, %29
  %38 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %39 = extractvalue %dx.types.CBufRet.f32 %38, 2
  %40 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %41 = extractvalue %dx.types.CBufRet.f32 %40, 0
  %42 = extractvalue %dx.types.CBufRet.f32 %40, 1
  %43 = extractvalue %dx.types.CBufRet.f32 %40, 2
  %44 = fsub fast float -0.000000e+00, %41
  %45 = fsub fast float -0.000000e+00, %42
  %46 = fsub fast float -0.000000e+00, %43
  %47 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %48 = extractvalue %dx.types.CBufRet.f32 %47, 3
  %49 = fsub fast float -0.000000e+00, %36
  %50 = fsub fast float -0.000000e+00, %37
  %51 = fsub fast float %48, %30
  %52 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %49, float %50, float %51)  ; Dot3(ax,ay,az,bx,by,bz)
  %53 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %44, float %45, float %46)  ; Dot3(ax,ay,az,bx,by,bz)
  %54 = fdiv fast float 1.000000e+00, %53
  %55 = fmul fast float %54, %52
  %56 = fcmp fast olt float %55, 0.000000e+00
  %57 = fcmp olt float %43, -0.000000e+00
  %58 = and i1 %57, %56
  br i1 %58, label %63, label %59, !dx.controlflow.hints !16

; <label>:59                                      ; preds = %0
  %60 = fcmp ogt float %43, -0.000000e+00
  br i1 %60, label %61, label %63, !dx.controlflow.hints !17

; <label>:61                                      ; preds = %59
  %62 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %55)  ; FMax(a,b)
  br label %63

; <label>:63                                      ; preds = %61, %59, %0
  %64 = phi float [ 0.000000e+00, %0 ], [ %62, %61 ], [ 0.000000e+00, %59 ]
  %65 = phi float [ 0.000000e+00, %0 ], [ 0x47EFFFFFE0000000, %61 ], [ %55, %59 ]
  %66 = fcmp fast oeq float %65, 0.000000e+00
  br i1 %66, label %70, label %67, !dx.controlflow.hints !18

; <label>:67                                      ; preds = %63
  %68 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %64)  ; FMin(a,b)
  %69 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %65)  ; FMax(a,b)
  br label %70

; <label>:70                                      ; preds = %67, %63
  %71 = phi float [ %69, %67 ], [ -1.000000e+00, %63 ]
  %72 = phi i32 [ 1, %67 ], [ 0, %63 ]
  %73 = phi float [ %68, %67 ], [ 0x47EFFFFFE0000000, %63 ]
  %74 = call float @dx.op.binary.f32(i32 36, float %39, float %71)  ; FMin(a,b)
  %75 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %73)  ; FMax(a,b)
  %76 = extractvalue %dx.types.CBufRet.f32 %47, 1
  %77 = fmul fast float %19, 2.000000e+00
  %78 = fadd fast float %77, -1.000000e+00
  %79 = fmul fast float %76, %78
  %80 = fadd fast float %79, %75
  %81 = fcmp fast olt float %80, %74
  %82 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %83 = extractvalue %dx.types.CBufRet.f32 %82, 2
  %84 = fcmp fast olt float %83, 1.000000e+00
  %85 = and i1 %84, %81
  br i1 %85, label %86, label %213

; <label>:86                                      ; preds = %70
  %87 = fmul fast float %80, %46
  %88 = fadd fast float %87, %30
  %89 = fmul fast float %80, %45
  %90 = fadd fast float %89, %37
  %91 = fmul fast float %80, %44
  %92 = fadd fast float %91, %36
  br label %93

; <label>:93                                      ; preds = %195, %86
  %94 = phi float [ %196, %195 ], [ 1.000000e+00, %86 ]
  %95 = phi float [ %205, %195 ], [ %92, %86 ]
  %96 = phi float [ %206, %195 ], [ %90, %86 ]
  %97 = phi float [ %207, %195 ], [ %88, %86 ]
  %98 = phi float [ %201, %195 ], [ %80, %86 ]
  %99 = phi i32 [ %197, %195 ], [ 0, %86 ]
  %100 = phi float [ %198, %195 ], [ 0.000000e+00, %86 ]
  %101 = phi float [ %199, %195 ], [ 0.000000e+00, %86 ]
  %102 = phi float [ %200, %195 ], [ 0.000000e+00, %86 ]
  %103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %104 = extractvalue %dx.types.CBufRet.f32 %103, 1
  %105 = icmp eq i32 %72, 0
  br i1 %105, label %118, label %106, !dx.controlflow.hints !19

; <label>:106                                     ; preds = %93
  %107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %108 = extractvalue %dx.types.CBufRet.f32 %107, 3
  %109 = extractvalue %dx.types.CBufRet.f32 %107, 2
  %110 = fmul fast float %108, %98
  %111 = fdiv fast float %110, %74
  %112 = fadd fast float %111, 1.000000e+00
  %113 = call float @dx.op.unary.f32(i32 23, float %112)  ; Log(value)
  %114 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %113)  ; FMin(a,b)
  %115 = fmul fast float %109, %74
  %116 = fmul fast float %115, %114
  %117 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %116)  ; FMin(a,b)
  br label %118

; <label>:118                                     ; preds = %106, %93
  %119 = phi float [ %117, %106 ], [ 0x47EFFFFFE0000000, %93 ]
  %120 = extractvalue %dx.types.CBufRet.f32 %103, 2
  %121 = fmul fast float %120, %98
  %122 = call float @dx.op.unary.f32(i32 23, float %121)  ; Log(value)
  %123 = fmul fast float %122, 0x3FE62E4300000000
  %124 = call float @dx.op.binary.f32(i32 35, float %123, float 1.000000e+00)  ; FMax(a,b)
  %125 = fmul fast float %124, %119
  %126 = call float @dx.op.binary.f32(i32 36, float %125, float 0x47EFFFFFE0000000)  ; FMin(a,b)
  %127 = call float @dx.op.binary.f32(i32 35, float %126, float %104)  ; FMax(a,b)
  %128 = fadd fast float %74, 0x3F1A36E2E0000000
  %129 = fsub fast float %128, %98
  %130 = call float @dx.op.binary.f32(i32 36, float %129, float %127)  ; FMin(a,b)
  br i1 %105, label %178, label %131, !dx.controlflow.hints !20

; <label>:131                                     ; preds = %118
  %132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %133 = extractvalue %dx.types.CBufRet.f32 %132, 0
  %134 = fsub fast float -0.000000e+00, %95
  %135 = fsub fast float -0.000000e+00, %96
  %136 = fsub fast float %133, %97
  %137 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %134, float %135, float %136)  ; Dot3(ax,ay,az,bx,by,bz)
  %138 = fmul fast float %54, %137
  %139 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %138)  ; FMax(a,b)
  %140 = fcmp ogt float %43, -0.000000e+00
  %141 = call float @dx.op.binary.f32(i32 36, float %130, float %139)  ; FMin(a,b)
  br i1 %140, label %143, label %142, !dx.controlflow.hints !21

; <label>:142                                     ; preds = %131
  br label %143

; <label>:143                                     ; preds = %142, %131
  %144 = phi float [ 0.000000e+00, %142 ], [ %141, %131 ]
  %145 = phi float [ %141, %142 ], [ %130, %131 ]
  %146 = phi float [ %141, %142 ], [ 0.000000e+00, %131 ]
  %147 = phi float [ %130, %142 ], [ %141, %131 ]
  %148 = fsub fast float %145, %144
  %149 = extractvalue %dx.types.CBufRet.f32 %132, 1
  %150 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %149)  ; FMin(a,b)
  %151 = fsub fast float %97, %133
  %152 = fmul fast float %150, 0x3FF7154760000000
  %153 = fmul fast float %152, %151
  %154 = call float @dx.op.unary.f32(i32 21, float %153)  ; Exp(value)
  %155 = fmul fast float %43, 0xBFF7154760000000
  %156 = fmul fast float %155, %147
  %157 = fmul fast float %156, %150
  %158 = call float @dx.op.unary.f32(i32 21, float %157)  ; Exp(value)
  %159 = fmul fast float %155, %146
  %160 = fmul fast float %159, %150
  %161 = call float @dx.op.unary.f32(i32 21, float %160)  ; Exp(value)
  %162 = fsub fast float %158, %161
  %163 = fmul fast float %162, %154
  %164 = fmul fast float %150, %46
  %165 = fdiv fast float %163, %164
  %166 = fadd fast float %148, %165
  %167 = call float @dx.op.unary.f32(i32 6, float %46)  ; FAbs(value)
  %168 = fcmp fast olt float %167, 0x3F0FFB4800000000
  %169 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %151)  ; FMax(a,b)
  %170 = fmul fast float %169, 0x3FF7154760000000
  %171 = fmul fast float %170, %149
  %172 = call float @dx.op.unary.f32(i32 21, float %171)  ; Exp(value)
  %173 = fmul fast float %172, %130
  %174 = select i1 %168, float %173, float %166
  %175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %176 = extractvalue %dx.types.CBufRet.f32 %175, 1
  %177 = fmul fast float %174, %176
  br label %178

; <label>:178                                     ; preds = %143, %118
  %179 = phi float [ %177, %143 ], [ 0.000000e+00, %118 ]
  %180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %181 = extractvalue %dx.types.CBufRet.f32 %180, 1
  %182 = fcmp fast ogt float %179, %181
  br i1 %182, label %183, label %195, !dx.controlflow.hints !22

; <label>:183                                     ; preds = %178
  %184 = fmul fast float %179, 0xBFF7154760000000
  %185 = call float @dx.op.unary.f32(i32 21, float %184)  ; Exp(value)
  %186 = call float @dx.op.unary.f32(i32 7, float %185)  ; Saturate(value)
  %187 = icmp eq i32 %99, 0
  br i1 %187, label %188, label %189, !dx.controlflow.hints !23

; <label>:188                                     ; preds = %183
  br label %189

; <label>:189                                     ; preds = %188, %183
  %190 = phi i32 [ %99, %183 ], [ 1, %188 ]
  %191 = phi float [ %100, %183 ], [ %98, %188 ]
  %192 = fadd fast float %130, %101
  %193 = fadd fast float %179, %102
  %194 = fmul fast float %186, %94
  br label %195

; <label>:195                                     ; preds = %189, %178
  %196 = phi float [ %194, %189 ], [ %94, %178 ]
  %197 = phi i32 [ %190, %189 ], [ %99, %178 ]
  %198 = phi float [ %191, %189 ], [ %100, %178 ]
  %199 = phi float [ %192, %189 ], [ %101, %178 ]
  %200 = phi float [ %193, %189 ], [ %102, %178 ]
  %201 = fadd fast float %130, %98
  %202 = fmul fast float %130, %44
  %203 = fmul fast float %130, %45
  %204 = fmul fast float %130, %46
  %205 = fadd fast float %202, %95
  %206 = fadd fast float %203, %96
  %207 = fadd fast float %204, %97
  %208 = fcmp fast olt float %201, %74
  %209 = extractvalue %dx.types.CBufRet.f32 %180, 2
  %210 = fcmp fast olt float %209, %196
  %211 = and i1 %208, %210
  br i1 %211, label %93, label %212

; <label>:212                                     ; preds = %195
  br label %213

; <label>:213                                     ; preds = %212, %70
  %214 = phi float [ 0.000000e+00, %70 ], [ %198, %212 ]
  %215 = phi float [ 0.000000e+00, %70 ], [ %199, %212 ]
  %216 = phi float [ 0.000000e+00, %70 ], [ %200, %212 ]
  %217 = extractvalue %dx.types.CBufRet.f32 %38, 3
  %218 = fmul fast float %217, %214
  %219 = fdiv fast float 1.000000e+00, %215
  %220 = fmul fast float %219, %216
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %5, i32 %6, i32 undef, float %218, float %220, float %216, float %218, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!dx.entryPoints = !{!13}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !8, !10, null}
!5 = !{!6}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 13, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{!9}
!9 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 7, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!10 = !{!11, !12}
!11 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!12 = !{i32 1, %FogRaymarchingConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 112, null}
!13 = !{void ()* @cs_fog_raymarching_air, !"cs_fog_raymarching_air", null, !4, !14}
!14 = !{i32 0, i64 256, i32 4, !15}
!15 = !{i32 8, i32 8, i32 1}
!16 = distinct !{!16, !"dx.controlflow.hints", i32 2}
!17 = distinct !{!17, !"dx.controlflow.hints", i32 2}
!18 = distinct !{!18, !"dx.controlflow.hints", i32 2}
!19 = distinct !{!19, !"dx.controlflow.hints", i32 2}
!20 = distinct !{!20, !"dx.controlflow.hints", i32 2}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 1}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 1}

