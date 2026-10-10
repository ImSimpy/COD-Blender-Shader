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
; shader hash: a50e156ec4c1f254c7c0da941fe5fc0a
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
;                                   texture     f32          2d      T0            t18     1
;                                   texture  struct         r/o      T1            t25     1
;                                   texture     f32          2d      T2            t13     1
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

define void @cs_fog_raymarching_particles() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %10 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %11 = uitofp i32 %9 to float
  %12 = uitofp i32 %10 to float
  %13 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %14 = extractvalue %dx.types.CBufRet.f32 %13, 2
  %15 = fmul fast float %14, 0x3FE3C6EF40000000
  %16 = frem fast float %11, 2.560000e+02
  %17 = frem fast float %12, 2.560000e+02
  %18 = fptoui float %16 to i32
  %19 = fptoui float %17 to i32
  %20 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %18, i32 %19, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %21 = extractvalue %dx.types.ResRet.f32 %20, 1
  %22 = fadd fast float %21, %15
  %23 = call float @dx.op.unary.f32(i32 22, float %22)  ; Frc(value)
  %24 = fadd fast float %11, 5.000000e-01
  %25 = fadd fast float %12, 5.000000e-01
  %26 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %27 = extractvalue %dx.types.CBufRet.f32 %26, 2
  %28 = extractvalue %dx.types.CBufRet.f32 %26, 3
  %29 = fmul fast float %27, %24
  %30 = fmul fast float %28, %25
  %31 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %32 = extractvalue %dx.types.CBufRet.f32 %31, 0
  %33 = extractvalue %dx.types.CBufRet.f32 %31, 1
  %34 = extractvalue %dx.types.CBufRet.f32 %31, 2
  %35 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %36 = extractvalue %dx.types.CBufRet.f32 %35, 0
  %37 = extractvalue %dx.types.CBufRet.f32 %35, 1
  %38 = fmul fast float %29, %36
  %39 = fmul fast float %30, %37
  %40 = fadd fast float %38, %32
  %41 = fadd fast float %39, %33
  %42 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %43 = extractvalue %dx.types.CBufRet.f32 %42, 2
  %44 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %45 = extractvalue %dx.types.CBufRet.f32 %44, 0
  %46 = extractvalue %dx.types.CBufRet.f32 %44, 1
  %47 = extractvalue %dx.types.CBufRet.f32 %44, 2
  %48 = fsub fast float -0.000000e+00, %45
  %49 = fsub fast float -0.000000e+00, %46
  %50 = fsub fast float -0.000000e+00, %47
  %51 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %52 = extractvalue %dx.types.CBufRet.f32 %51, 3
  %53 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %54 = extractvalue %dx.types.CBufRet.f32 %53, 0
  %55 = fsub fast float -0.000000e+00, %40
  %56 = fsub fast float -0.000000e+00, %41
  %57 = fsub fast float %52, %34
  %58 = fadd fast float %57, %54
  %59 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %55, float %56, float %58)  ; Dot3(ax,ay,az,bx,by,bz)
  %60 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %48, float %49, float %50)  ; Dot3(ax,ay,az,bx,by,bz)
  %61 = fdiv fast float 1.000000e+00, %60
  %62 = fmul fast float %61, %59
  %63 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %64 = extractvalue %dx.types.CBufRet.f32 %63, 2
  %65 = fsub fast float %64, %34
  %66 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %55, float %56, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %67 = fmul fast float %61, %66
  %68 = call float @dx.op.binary.f32(i32 36, float %62, float %67)  ; FMin(a,b)
  %69 = call float @dx.op.binary.f32(i32 35, float %62, float %67)  ; FMax(a,b)
  %70 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %68)  ; FMin(a,b)
  %71 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %69)  ; FMax(a,b)
  %72 = fdiv fast float 1.000000e+00, %48
  %73 = fdiv fast float 1.000000e+00, %49
  %74 = fdiv fast float 1.000000e+00, %50
  %75 = call float @dx.op.binary.f32(i32 36, float %43, float %71)  ; FMin(a,b)
  %76 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %70)  ; FMax(a,b)
  %77 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %78 = extractvalue %dx.types.CBufRet.f32 %77, 1
  %79 = fmul fast float %23, 2.000000e+00
  %80 = fadd fast float %79, -1.000000e+00
  %81 = fmul fast float %78, %80
  %82 = fadd fast float %81, %76
  %83 = fcmp fast olt float %82, %75
  %84 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %85 = extractvalue %dx.types.CBufRet.f32 %84, 2
  %86 = fcmp fast olt float %85, 1.000000e+00
  %87 = and i1 %86, %83
  br i1 %87, label %88, label %395

; <label>:88                                      ; preds = %0
  %89 = fmul fast float %82, %50
  %90 = fadd fast float %89, %34
  %91 = fmul fast float %82, %49
  %92 = fadd fast float %91, %41
  %93 = fmul fast float %82, %48
  %94 = fadd fast float %93, %40
  br label %95

; <label>:95                                      ; preds = %377, %88
  %96 = phi float [ %214, %377 ], [ undef, %88 ]
  %97 = phi float [ %215, %377 ], [ undef, %88 ]
  %98 = phi float [ %216, %377 ], [ undef, %88 ]
  %99 = phi float [ %217, %377 ], [ undef, %88 ]
  %100 = phi float [ %378, %377 ], [ 1.000000e+00, %88 ]
  %101 = phi float [ %387, %377 ], [ %94, %88 ]
  %102 = phi float [ %388, %377 ], [ %92, %88 ]
  %103 = phi float [ %389, %377 ], [ %90, %88 ]
  %104 = phi float [ %383, %377 ], [ %82, %88 ]
  %105 = phi i32 [ %219, %377 ], [ 10, %88 ]
  %106 = phi i32 [ %379, %377 ], [ 0, %88 ]
  %107 = phi float [ %380, %377 ], [ 0.000000e+00, %88 ]
  %108 = phi float [ %381, %377 ], [ 0.000000e+00, %88 ]
  %109 = phi float [ %382, %377 ], [ 0.000000e+00, %88 ]
  %110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %111 = extractvalue %dx.types.CBufRet.f32 %110, 1
  %112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %113 = extractvalue %dx.types.CBufRet.f32 %112, 0
  %114 = extractvalue %dx.types.CBufRet.f32 %112, 1
  %115 = fsub fast float %101, %113
  %116 = fsub fast float %102, %114
  %117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %118 = extractvalue %dx.types.CBufRet.f32 %117, 2
  %119 = extractvalue %dx.types.CBufRet.f32 %117, 3
  %120 = fmul fast float %115, %118
  %121 = fmul fast float %116, %119
  %122 = call float @dx.op.binary.f32(i32 36, float %120, float %121)  ; FMin(a,b)
  %123 = fcmp fast olt float %122, 0.000000e+00
  %124 = call float @dx.op.binary.f32(i32 35, float %120, float %121)  ; FMax(a,b)
  %125 = fcmp fast ogt float %124, 1.000000e+00
  %126 = or i1 %123, %125
  %127 = extractvalue %dx.types.CBufRet.f32 %112, 2
  %128 = fcmp fast olt float %103, %127
  %129 = or i1 %126, %128
  %130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %131 = extractvalue %dx.types.CBufRet.f32 %130, 3
  %132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %133 = extractvalue %dx.types.CBufRet.f32 %132, 0
  %134 = fadd fast float %133, %131
  %135 = fcmp fast ogt float %103, %134
  %136 = or i1 %129, %135
  br i1 %136, label %137, label %166, !dx.controlflow.hints !22

; <label>:137                                     ; preds = %95
  %138 = extractvalue %dx.types.CBufRet.f32 %117, 0
  %139 = extractvalue %dx.types.CBufRet.f32 %117, 1
  %140 = fsub fast float %113, %101
  %141 = fmul fast float %140, %72
  %142 = fadd fast float %140, %138
  %143 = fmul fast float %142, %72
  %144 = call float @dx.op.binary.f32(i32 36, float %141, float %143)  ; FMin(a,b)
  %145 = call float @dx.op.binary.f32(i32 35, float %141, float %143)  ; FMax(a,b)
  %146 = fsub fast float %114, %102
  %147 = fmul fast float %146, %73
  %148 = fadd fast float %146, %139
  %149 = fmul fast float %148, %73
  %150 = call float @dx.op.binary.f32(i32 36, float %147, float %149)  ; FMin(a,b)
  %151 = call float @dx.op.binary.f32(i32 35, float %144, float %150)  ; FMax(a,b)
  %152 = call float @dx.op.binary.f32(i32 35, float %147, float %149)  ; FMax(a,b)
  %153 = call float @dx.op.binary.f32(i32 36, float %145, float %152)  ; FMin(a,b)
  %154 = fsub fast float %127, %103
  %155 = fmul fast float %154, %74
  %156 = fsub fast float %131, %103
  %157 = fadd fast float %156, %133
  %158 = fmul fast float %157, %74
  %159 = call float @dx.op.binary.f32(i32 36, float %155, float %158)  ; FMin(a,b)
  %160 = call float @dx.op.binary.f32(i32 35, float %151, float %159)  ; FMax(a,b)
  %161 = call float @dx.op.binary.f32(i32 35, float %155, float %158)  ; FMax(a,b)
  %162 = call float @dx.op.binary.f32(i32 36, float %153, float %161)  ; FMin(a,b)
  %163 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %160)  ; FMax(a,b)
  %164 = fcmp fast oge float %162, %163
  %165 = select i1 %164, float %160, float 1.000000e+07
  br label %212

; <label>:166                                     ; preds = %95
  %167 = fsub fast float 1.000000e+00, %121
  %168 = icmp eq i32 %105, 0
  br i1 %168, label %197, label %169

; <label>:169                                     ; preds = %166
  br label %170

; <label>:170                                     ; preds = %193, %169
  %171 = phi i32 [ %194, %193 ], [ %105, %169 ]
  %172 = uitofp i32 %171 to float
  %173 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %6, float %120, float %167, float undef, float undef, i32 0, i32 0, i32 undef, float %172)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %174 = extractvalue %dx.types.ResRet.f32 %173, 0
  %175 = extractvalue %dx.types.ResRet.f32 %173, 1
  %176 = extractvalue %dx.types.ResRet.f32 %173, 2
  %177 = fcmp fast oeq float %174, 0.000000e+00
  %178 = fcmp ule float %103, %176
  %179 = fcmp uge float %103, %175
  %180 = or i1 %179, %178
  %181 = or i1 %177, %180
  br i1 %181, label %182, label %193, !dx.controlflow.hints !23

; <label>:182                                     ; preds = %170
  %183 = extractvalue %dx.types.ResRet.f32 %173, 3
  %184 = extractvalue %dx.types.CBufRet.f32 %117, 0
  %185 = and i32 %171, 31
  %186 = lshr i32 1024, %185
  %187 = uitofp i32 %186 to float
  %188 = fdiv fast float %184, %187
  %189 = add i32 %171, 1
  %190 = uitofp i32 %189 to float
  %191 = call float @dx.op.binary.f32(i32 36, float 1.000000e+01, float %190)  ; FMin(a,b)
  %192 = fptosi float %191 to i32
  br label %212

; <label>:193                                     ; preds = %170
  %194 = add i32 %171, -1
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %170, !llvm.loop !24

; <label>:196                                     ; preds = %193
  br label %197

; <label>:197                                     ; preds = %196, %166
  %198 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %5, float %120, float %167, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %199 = extractvalue %dx.types.ResRet.f32 %198, 0
  %200 = extractvalue %dx.types.ResRet.f32 %198, 1
  %201 = extractvalue %dx.types.ResRet.f32 %198, 2
  %202 = extractvalue %dx.types.ResRet.f32 %198, 3
  %203 = extractvalue %dx.types.CBufRet.f32 %117, 0
  %204 = fmul fast float %203, 9.765625e-04
  %205 = fcmp fast oeq float %199, 0.000000e+00
  %206 = fcmp ule float %103, %201
  %207 = fcmp uge float %103, %200
  %208 = or i1 %207, %206
  %209 = or i1 %205, %208
  %210 = zext i1 %209 to i32
  %211 = xor i32 %210, 1
  br label %212

; <label>:212                                     ; preds = %197, %182, %137
  %213 = phi float [ %165, %137 ], [ %188, %182 ], [ %204, %197 ]
  %214 = phi float [ %96, %137 ], [ %174, %182 ], [ %199, %197 ]
  %215 = phi float [ %97, %137 ], [ %175, %182 ], [ %200, %197 ]
  %216 = phi float [ %98, %137 ], [ %176, %182 ], [ %201, %197 ]
  %217 = phi float [ %99, %137 ], [ %183, %182 ], [ %202, %197 ]
  %218 = phi i32 [ 0, %137 ], [ 0, %182 ], [ %211, %197 ]
  %219 = phi i32 [ 10, %137 ], [ %192, %182 ], [ 1, %197 ]
  %220 = icmp eq i32 %218, 0
  %221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %222 = extractvalue %dx.types.CBufRet.f32 %221, 2
  %223 = call float @dx.op.binary.f32(i32 35, float %213, float %222)  ; FMax(a,b)
  %224 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %223)  ; FMin(a,b)
  %225 = extractvalue %dx.types.CBufRet.f32 %110, 2
  %226 = fmul fast float %225, %104
  %227 = call float @dx.op.unary.f32(i32 23, float %226)  ; Log(value)
  %228 = fmul fast float %227, 0x3FE62E4300000000
  %229 = call float @dx.op.binary.f32(i32 35, float %228, float 1.000000e+00)  ; FMax(a,b)
  %230 = fmul fast float %229, 0x47EFFFFFE0000000
  %231 = call float @dx.op.binary.f32(i32 36, float %230, float %224)  ; FMin(a,b)
  %232 = call float @dx.op.binary.f32(i32 35, float %231, float %111)  ; FMax(a,b)
  %233 = fadd fast float %75, 0x3F1A36E2E0000000
  %234 = fsub fast float %233, %104
  %235 = call float @dx.op.binary.f32(i32 36, float %234, float %232)  ; FMin(a,b)
  br i1 %220, label %360, label %236, !dx.controlflow.hints !26

; <label>:236                                     ; preds = %212
  %237 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %238 = extractvalue %dx.types.CBufRet.i32 %237, 0
  %239 = icmp ne i32 %238, 0
  %240 = zext i1 %239 to i32
  %241 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %242 = extractvalue %dx.types.CBufRet.i32 %241, 0
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %277, label %244

; <label>:244                                     ; preds = %236
  br label %245

; <label>:245                                     ; preds = %272, %244
  %246 = phi i32 [ %273, %272 ], [ 0, %244 ]
  %247 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %246, i32 0)  ; BufferLoad(srv,index,wot)
  %248 = extractvalue %dx.types.ResRet.f32 %247, 0
  %249 = extractvalue %dx.types.ResRet.f32 %247, 1
  %250 = extractvalue %dx.types.ResRet.f32 %247, 2
  %251 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %246, i32 16)  ; BufferLoad(srv,index,wot)
  %252 = extractvalue %dx.types.ResRet.f32 %251, 0
  %253 = extractvalue %dx.types.ResRet.f32 %251, 1
  %254 = extractvalue %dx.types.ResRet.f32 %251, 2
  %255 = fsub fast float %248, %252
  %256 = fsub fast float %249, %253
  %257 = fsub fast float %250, %254
  %258 = fadd fast float %252, %248
  %259 = fadd fast float %253, %249
  %260 = fadd fast float %254, %250
  %261 = fcmp fast olt float %101, %255
  %262 = fcmp fast olt float %102, %256
  %263 = fcmp fast olt float %103, %257
  %264 = or i1 %261, %262
  %265 = or i1 %263, %264
  %266 = fcmp fast ogt float %101, %258
  %267 = fcmp fast ogt float %102, %259
  %268 = fcmp fast ogt float %103, %260
  %269 = or i1 %266, %267
  %270 = or i1 %268, %269
  %271 = or i1 %265, %270
  br i1 %271, label %272, label %275, !dx.controlflow.hints !27

; <label>:272                                     ; preds = %245
  %273 = add nuw i32 %246, 1
  %274 = icmp ult i32 %273, %242
  br i1 %274, label %245, label %275

; <label>:275                                     ; preds = %272, %245
  %276 = phi i32 [ 255, %272 ], [ %246, %245 ]
  br label %277

; <label>:277                                     ; preds = %275, %236
  %278 = phi i32 [ 255, %236 ], [ %276, %275 ]
  %279 = icmp eq i32 %278, 255
  br i1 %279, label %285, label %280, !dx.controlflow.hints !28

; <label>:280                                     ; preds = %277
  %281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %278, i32 156)  ; BufferLoad(srv,index,wot)
  %282 = extractvalue %dx.types.ResRet.i32 %281, 0
  %283 = icmp ne i32 %282, 0
  %284 = zext i1 %283 to i32
  br label %285

; <label>:285                                     ; preds = %280, %277
  %286 = phi i32 [ %284, %280 ], [ %240, %277 ]
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %288, label %357, !dx.controlflow.hints !29

; <label>:288                                     ; preds = %285
  %289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %290 = extractvalue %dx.types.CBufRet.f32 %289, 3
  %291 = extractvalue %dx.types.CBufRet.f32 %130, 0
  %292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %293 = extractvalue %dx.types.CBufRet.f32 %292, 2
  %294 = extractvalue %dx.types.CBufRet.f32 %292, 3
  br i1 %279, label %305, label %295, !dx.controlflow.hints !30

; <label>:295                                     ; preds = %288
  %296 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %278, i32 60)  ; BufferLoad(srv,index,wot)
  %297 = extractvalue %dx.types.ResRet.f32 %296, 0
  %298 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %278, i32 64)  ; BufferLoad(srv,index,wot)
  %299 = extractvalue %dx.types.ResRet.f32 %298, 0
  %300 = extractvalue %dx.types.ResRet.f32 %298, 1
  %301 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %278, i32 72)  ; BufferLoad(srv,index,wot)
  %302 = extractvalue %dx.types.ResRet.f32 %301, 0
  %303 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %278, i32 96)  ; BufferLoad(srv,index,wot)
  %304 = extractvalue %dx.types.ResRet.f32 %303, 0
  br label %305

; <label>:305                                     ; preds = %295, %288
  %306 = phi float [ %299, %295 ], [ %293, %288 ]
  %307 = phi float [ %300, %295 ], [ %294, %288 ]
  %308 = phi float [ %304, %295 ], [ %291, %288 ]
  %309 = phi float [ %302, %295 ], [ %131, %288 ]
  %310 = phi float [ %297, %295 ], [ %133, %288 ]
  %311 = call float @dx.op.binary.f32(i32 35, float %214, float 0.000000e+00)  ; FMax(a,b)
  %312 = call float @dx.op.binary.f32(i32 36, float %311, float 1.000000e+00)  ; FMin(a,b)
  %313 = call float @dx.op.unary.f32(i32 24, float %312)  ; Sqrt(value)
  %314 = call float @dx.op.binary.f32(i32 35, float %217, float 0x3F847AE140000000)  ; FMax(a,b)
  %315 = fsub fast float %215, %103
  %316 = fsub fast float %103, %216
  %317 = call float @dx.op.binary.f32(i32 36, float %316, float %315)  ; FMin(a,b)
  %318 = fdiv fast float %317, %314
  %319 = call float @dx.op.unary.f32(i32 7, float %318)  ; Saturate(value)
  %320 = fsub fast float %103, %309
  %321 = fdiv fast float %320, %310
  %322 = call float @dx.op.unary.f32(i32 7, float %321)  ; Saturate(value)
  %323 = fsub fast float 1.000000e+00, %322
  %324 = fmul float %319, %323
  %325 = fmul float %324, %324
  %326 = fmul fast float %313, %290
  %327 = fmul fast float %326, %325
  %328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %329 = extractvalue %dx.types.CBufRet.f32 %328, 2
  %330 = extractvalue %dx.types.CBufRet.f32 %328, 1
  %331 = fsub fast float %327, %330
  %332 = fsub fast float %329, %330
  %333 = fdiv fast float %331, %332
  %334 = call float @dx.op.unary.f32(i32 7, float %333)  ; Saturate(value)
  %335 = fmul fast float %334, %308
  %336 = fcmp fast ogt float %307, 0.000000e+00
  br i1 %336, label %337, label %357, !dx.controlflow.hints !31

; <label>:337                                     ; preds = %305
  %338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %339 = extractvalue %dx.types.CBufRet.f32 %338, 0
  %340 = extractvalue %dx.types.CBufRet.f32 %338, 1
  %341 = extractvalue %dx.types.CBufRet.f32 %338, 2
  %342 = fsub fast float %101, %339
  %343 = fsub fast float %102, %340
  %344 = fsub fast float %103, %341
  %345 = fmul fast float %342, %342
  %346 = fmul fast float %343, %343
  %347 = fadd fast float %345, %346
  %348 = fmul fast float %344, %344
  %349 = fadd fast float %347, %348
  %350 = call float @dx.op.unary.f32(i32 24, float %349)  ; Sqrt(value)
  %351 = fsub fast float %350, %306
  %352 = fsub fast float %307, %306
  %353 = fdiv fast float %351, %352
  %354 = call float @dx.op.unary.f32(i32 7, float %353)  ; Saturate(value)
  %355 = fmul fast float %354, %354
  %356 = fmul fast float %355, %335
  br label %357

; <label>:357                                     ; preds = %337, %305, %285
  %358 = phi float [ 0.000000e+00, %285 ], [ %356, %337 ], [ %335, %305 ]
  %359 = fmul fast float %358, %235
  br label %360

; <label>:360                                     ; preds = %357, %212
  %361 = phi float [ %359, %357 ], [ 0.000000e+00, %212 ]
  %362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %363 = extractvalue %dx.types.CBufRet.f32 %362, 1
  %364 = fcmp fast ogt float %361, %363
  br i1 %364, label %365, label %377, !dx.controlflow.hints !32

; <label>:365                                     ; preds = %360
  %366 = fmul fast float %361, 0xBFF7154760000000
  %367 = call float @dx.op.unary.f32(i32 21, float %366)  ; Exp(value)
  %368 = call float @dx.op.unary.f32(i32 7, float %367)  ; Saturate(value)
  %369 = icmp eq i32 %106, 0
  br i1 %369, label %370, label %371, !dx.controlflow.hints !33

; <label>:370                                     ; preds = %365
  br label %371

; <label>:371                                     ; preds = %370, %365
  %372 = phi i32 [ %106, %365 ], [ 1, %370 ]
  %373 = phi float [ %107, %365 ], [ %104, %370 ]
  %374 = fadd fast float %235, %108
  %375 = fadd fast float %361, %109
  %376 = fmul fast float %368, %100
  br label %377

; <label>:377                                     ; preds = %371, %360
  %378 = phi float [ %376, %371 ], [ %100, %360 ]
  %379 = phi i32 [ %372, %371 ], [ %106, %360 ]
  %380 = phi float [ %373, %371 ], [ %107, %360 ]
  %381 = phi float [ %374, %371 ], [ %108, %360 ]
  %382 = phi float [ %375, %371 ], [ %109, %360 ]
  %383 = fadd fast float %235, %104
  %384 = fmul fast float %235, %48
  %385 = fmul fast float %235, %49
  %386 = fmul fast float %235, %50
  %387 = fadd fast float %384, %101
  %388 = fadd fast float %385, %102
  %389 = fadd fast float %386, %103
  %390 = fcmp fast olt float %383, %75
  %391 = extractvalue %dx.types.CBufRet.f32 %362, 2
  %392 = fcmp fast olt float %391, %378
  %393 = and i1 %390, %392
  br i1 %393, label %95, label %394

; <label>:394                                     ; preds = %377
  br label %395

; <label>:395                                     ; preds = %394, %0
  %396 = phi float [ 0.000000e+00, %0 ], [ %380, %394 ]
  %397 = phi float [ 0.000000e+00, %0 ], [ %381, %394 ]
  %398 = phi float [ 0.000000e+00, %0 ], [ %382, %394 ]
  %399 = extractvalue %dx.types.CBufRet.f32 %42, 3
  %400 = fmul fast float %399, %396
  %401 = fdiv fast float 1.000000e+00, %397
  %402 = fmul fast float %401, %398
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %9, i32 %10, i32 undef, float %400, float %402, float %398, float %400, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!dx.entryPoints = !{!19}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !11, !13, !16}
!5 = !{!6, !8, !10}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 18, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.StructuredBuffer<VolumetricBBoxGpu>"* undef, !"", i32 0, i32 25, i32 1, i32 12, i32 0, !9}
!9 = !{i32 1, i32 164}
!10 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 13, i32 1, i32 2, i32 0, !7}
!11 = !{!12}
!12 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 7, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!13 = !{!14, !15}
!14 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!15 = !{i32 1, %FogRaymarchingConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 112, null}
!16 = !{!17, !18}
!17 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!18 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!19 = !{void ()* @cs_fog_raymarching_particles, !"cs_fog_raymarching_particles", null, !4, !20}
!20 = !{i32 0, i64 272, i32 4, !21}
!21 = !{i32 8, i32 8, i32 1}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.unroll.disable"}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 1}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 1}

