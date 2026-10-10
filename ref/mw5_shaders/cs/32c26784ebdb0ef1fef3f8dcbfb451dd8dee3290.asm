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
; shader hash: aaaa90accc4abcf9faa0cf448d510ff7
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
;                                   sampler      NA          NA      S1             s3     1
;                                   sampler      NA          NA      S2             s4     1
;                                   sampler      NA          NA      S3             s5     1
;                                   texture     f32          2d      T0            t16     1
;                                   texture     f32          3d      T1             t1     1
;                                   texture     f32          3d      T2             t2     1
;                                   texture     f32          2d      T3             t8     1
;                                   texture     f32          2d      T4             t9     1
;                                   texture     f32          2d      T5            t13     1
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
%"class.Texture3D<float>" = type { float, %"class.Texture3D<float>::mips_type" }
%"class.Texture3D<float>::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
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

define void @cs_fog_raymarching_air_clouds_heightmap() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %15 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %16 = uitofp i32 %14 to float
  %17 = uitofp i32 %15 to float
  %18 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %19 = extractvalue %dx.types.CBufRet.f32 %18, 2
  %20 = fmul fast float %19, 0x3FE3C6EF40000000
  %21 = frem fast float %16, 2.560000e+02
  %22 = frem fast float %17, 2.560000e+02
  %23 = fptoui float %21 to i32
  %24 = fptoui float %22 to i32
  %25 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %23, i32 %24, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %26 = extractvalue %dx.types.ResRet.f32 %25, 0
  %27 = extractvalue %dx.types.ResRet.f32 %25, 1
  %28 = extractvalue %dx.types.ResRet.f32 %25, 2
  %29 = fadd fast float %26, %20
  %30 = fadd fast float %27, %20
  %31 = fadd fast float %28, %20
  %32 = call float @dx.op.unary.f32(i32 22, float %29)  ; Frc(value)
  %33 = call float @dx.op.unary.f32(i32 22, float %30)  ; Frc(value)
  %34 = call float @dx.op.unary.f32(i32 22, float %31)  ; Frc(value)
  %35 = fadd fast float %16, 5.000000e-01
  %36 = fadd fast float %17, 5.000000e-01
  %37 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %38 = extractvalue %dx.types.CBufRet.f32 %37, 2
  %39 = extractvalue %dx.types.CBufRet.f32 %37, 3
  %40 = fmul fast float %38, %35
  %41 = fmul fast float %39, %36
  %42 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %43 = extractvalue %dx.types.CBufRet.f32 %42, 0
  %44 = extractvalue %dx.types.CBufRet.f32 %42, 1
  %45 = extractvalue %dx.types.CBufRet.f32 %42, 2
  %46 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %47 = extractvalue %dx.types.CBufRet.f32 %46, 0
  %48 = extractvalue %dx.types.CBufRet.f32 %46, 1
  %49 = fmul fast float %40, %47
  %50 = fmul fast float %41, %48
  %51 = fadd fast float %49, %43
  %52 = fadd fast float %50, %44
  %53 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %54 = extractvalue %dx.types.CBufRet.f32 %53, 2
  %55 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %56 = extractvalue %dx.types.CBufRet.f32 %55, 0
  %57 = extractvalue %dx.types.CBufRet.f32 %55, 1
  %58 = extractvalue %dx.types.CBufRet.f32 %55, 2
  %59 = fsub fast float -0.000000e+00, %56
  %60 = fsub fast float -0.000000e+00, %57
  %61 = fsub fast float -0.000000e+00, %58
  %62 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %63 = extractvalue %dx.types.CBufRet.i32 %62, 3
  %64 = icmp eq i32 %63, 0
  %65 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %66 = extractvalue %dx.types.CBufRet.f32 %65, 2
  %67 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %68 = extractvalue %dx.types.CBufRet.f32 %67, 2
  %69 = fsub fast float %66, %45
  %70 = fadd fast float %69, %68
  %71 = fsub fast float 0xC7EFFFFFE0000000, %45
  br i1 %64, label %83, label %72, !dx.controlflow.hints !26

; <label>:72                                      ; preds = %0
  %73 = fsub fast float -0.000000e+00, %52
  %74 = fsub fast float -0.000000e+00, %51
  %75 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %74, float %73, float %70)  ; Dot3(ax,ay,az,bx,by,bz)
  %76 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %59, float %60, float %61)  ; Dot3(ax,ay,az,bx,by,bz)
  %77 = fdiv fast float 1.000000e+00, %76
  %78 = fmul fast float %77, %75
  %79 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %74, float %73, float %71)  ; Dot3(ax,ay,az,bx,by,bz)
  %80 = fmul fast float %77, %79
  %81 = call float @dx.op.binary.f32(i32 36, float %78, float %80)  ; FMin(a,b)
  %82 = call float @dx.op.binary.f32(i32 35, float %78, float %80)  ; FMax(a,b)
  br label %116

; <label>:83                                      ; preds = %0
  %84 = extractvalue %dx.types.CBufRet.f32 %65, 0
  %85 = extractvalue %dx.types.CBufRet.f32 %65, 1
  %86 = extractvalue %dx.types.CBufRet.f32 %67, 0
  %87 = extractvalue %dx.types.CBufRet.f32 %67, 1
  %88 = fdiv fast float 1.000000e+00, %59
  %89 = fdiv fast float 1.000000e+00, %60
  %90 = fdiv fast float 1.000000e+00, %61
  %91 = fsub fast float %84, %51
  %92 = fmul fast float %88, %91
  %93 = fadd fast float %91, %86
  %94 = fmul fast float %93, %88
  %95 = call float @dx.op.binary.f32(i32 36, float %92, float %94)  ; FMin(a,b)
  %96 = call float @dx.op.binary.f32(i32 35, float %92, float %94)  ; FMax(a,b)
  %97 = fsub fast float %85, %52
  %98 = fmul fast float %89, %97
  %99 = fadd fast float %97, %87
  %100 = fmul fast float %99, %89
  %101 = call float @dx.op.binary.f32(i32 36, float %98, float %100)  ; FMin(a,b)
  %102 = call float @dx.op.binary.f32(i32 35, float %95, float %101)  ; FMax(a,b)
  %103 = call float @dx.op.binary.f32(i32 35, float %98, float %100)  ; FMax(a,b)
  %104 = call float @dx.op.binary.f32(i32 36, float %96, float %103)  ; FMin(a,b)
  %105 = fmul fast float %90, %71
  %106 = fmul fast float %90, %70
  %107 = call float @dx.op.binary.f32(i32 36, float %105, float %106)  ; FMin(a,b)
  %108 = call float @dx.op.binary.f32(i32 35, float %102, float %107)  ; FMax(a,b)
  %109 = call float @dx.op.binary.f32(i32 35, float %105, float %106)  ; FMax(a,b)
  %110 = call float @dx.op.binary.f32(i32 36, float %104, float %109)  ; FMin(a,b)
  %111 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %108)  ; FMax(a,b)
  %112 = fcmp fast ult float %110, %111
  br i1 %112, label %116, label %113, !dx.controlflow.hints !27

; <label>:113                                     ; preds = %83
  %114 = call float @dx.op.binary.f32(i32 36, float %108, float %110)  ; FMin(a,b)
  %115 = call float @dx.op.binary.f32(i32 35, float %108, float %110)  ; FMax(a,b)
  br label %116

; <label>:116                                     ; preds = %113, %83, %72
  %117 = phi float [ %81, %72 ], [ %114, %113 ], [ 0.000000e+00, %83 ]
  %118 = phi float [ %82, %72 ], [ %115, %113 ], [ 0.000000e+00, %83 ]
  %119 = fcmp fast oeq float %118, 0.000000e+00
  %120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %121 = extractvalue %dx.types.CBufRet.f32 %120, 1
  %122 = fcmp fast olt float %118, %121
  %123 = or i1 %119, %122
  br i1 %123, label %128, label %124, !dx.controlflow.hints !28

; <label>:124                                     ; preds = %116
  %125 = call float @dx.op.binary.f32(i32 35, float %121, float %117)  ; FMax(a,b)
  %126 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %125)  ; FMin(a,b)
  %127 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %118)  ; FMax(a,b)
  br label %128

; <label>:128                                     ; preds = %124, %116
  %129 = phi float [ %127, %124 ], [ -1.000000e+00, %116 ]
  %130 = phi i32 [ 1, %124 ], [ 0, %116 ]
  %131 = phi float [ %126, %124 ], [ 0x47EFFFFFE0000000, %116 ]
  %132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %133 = extractvalue %dx.types.CBufRet.f32 %132, 3
  %134 = fsub fast float -0.000000e+00, %51
  %135 = fsub fast float -0.000000e+00, %52
  %136 = fsub fast float %133, %45
  %137 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %134, float %135, float %136)  ; Dot3(ax,ay,az,bx,by,bz)
  %138 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %59, float %60, float %61)  ; Dot3(ax,ay,az,bx,by,bz)
  %139 = fdiv fast float 1.000000e+00, %138
  %140 = fmul fast float %139, %137
  %141 = fcmp fast olt float %140, 0.000000e+00
  %142 = fcmp olt float %58, -0.000000e+00
  %143 = and i1 %142, %141
  br i1 %143, label %148, label %144, !dx.controlflow.hints !29

; <label>:144                                     ; preds = %128
  %145 = fcmp ogt float %58, -0.000000e+00
  br i1 %145, label %146, label %148, !dx.controlflow.hints !30

; <label>:146                                     ; preds = %144
  %147 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %140)  ; FMax(a,b)
  br label %148

; <label>:148                                     ; preds = %146, %144, %128
  %149 = phi float [ 0.000000e+00, %128 ], [ %147, %146 ], [ 0.000000e+00, %144 ]
  %150 = phi float [ 0.000000e+00, %128 ], [ 0x47EFFFFFE0000000, %146 ], [ %140, %144 ]
  %151 = fcmp fast oeq float %150, 0.000000e+00
  br i1 %151, label %155, label %152, !dx.controlflow.hints !31

; <label>:152                                     ; preds = %148
  %153 = call float @dx.op.binary.f32(i32 36, float %131, float %149)  ; FMin(a,b)
  %154 = call float @dx.op.binary.f32(i32 35, float %129, float %150)  ; FMax(a,b)
  br label %155

; <label>:155                                     ; preds = %152, %148
  %156 = phi float [ %154, %152 ], [ %129, %148 ]
  %157 = phi i32 [ 1, %152 ], [ 0, %148 ]
  %158 = phi float [ %153, %152 ], [ %131, %148 ]
  %159 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %160 = extractvalue %dx.types.CBufRet.i32 %159, 3
  %161 = icmp eq i32 %160, 0
  %162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %163 = extractvalue %dx.types.CBufRet.f32 %162, 2
  %164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %165 = extractvalue %dx.types.CBufRet.f32 %164, 2
  %166 = fsub fast float %163, %45
  %167 = fadd fast float %166, %165
  br i1 %161, label %175, label %168, !dx.controlflow.hints !32

; <label>:168                                     ; preds = %155
  %169 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %134, float %135, float %167)  ; Dot3(ax,ay,az,bx,by,bz)
  %170 = fmul fast float %139, %169
  %171 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %134, float %135, float %166)  ; Dot3(ax,ay,az,bx,by,bz)
  %172 = fmul fast float %139, %171
  %173 = call float @dx.op.binary.f32(i32 36, float %170, float %172)  ; FMin(a,b)
  %174 = call float @dx.op.binary.f32(i32 35, float %170, float %172)  ; FMax(a,b)
  br label %208

; <label>:175                                     ; preds = %155
  %176 = fdiv fast float 1.000000e+00, %59
  %177 = fdiv fast float 1.000000e+00, %60
  %178 = fdiv fast float 1.000000e+00, %61
  %179 = extractvalue %dx.types.CBufRet.f32 %162, 0
  %180 = extractvalue %dx.types.CBufRet.f32 %162, 1
  %181 = extractvalue %dx.types.CBufRet.f32 %164, 0
  %182 = extractvalue %dx.types.CBufRet.f32 %164, 1
  %183 = fsub fast float %179, %51
  %184 = fmul fast float %183, %176
  %185 = fadd fast float %183, %181
  %186 = fmul fast float %185, %176
  %187 = call float @dx.op.binary.f32(i32 36, float %184, float %186)  ; FMin(a,b)
  %188 = call float @dx.op.binary.f32(i32 35, float %184, float %186)  ; FMax(a,b)
  %189 = fsub fast float %180, %52
  %190 = fmul fast float %189, %177
  %191 = fadd fast float %189, %182
  %192 = fmul fast float %191, %177
  %193 = call float @dx.op.binary.f32(i32 36, float %190, float %192)  ; FMin(a,b)
  %194 = call float @dx.op.binary.f32(i32 35, float %187, float %193)  ; FMax(a,b)
  %195 = call float @dx.op.binary.f32(i32 35, float %190, float %192)  ; FMax(a,b)
  %196 = call float @dx.op.binary.f32(i32 36, float %188, float %195)  ; FMin(a,b)
  %197 = fmul fast float %166, %178
  %198 = fmul fast float %167, %178
  %199 = call float @dx.op.binary.f32(i32 36, float %197, float %198)  ; FMin(a,b)
  %200 = call float @dx.op.binary.f32(i32 35, float %194, float %199)  ; FMax(a,b)
  %201 = call float @dx.op.binary.f32(i32 35, float %197, float %198)  ; FMax(a,b)
  %202 = call float @dx.op.binary.f32(i32 36, float %196, float %201)  ; FMin(a,b)
  %203 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %200)  ; FMax(a,b)
  %204 = fcmp fast ult float %202, %203
  br i1 %204, label %208, label %205, !dx.controlflow.hints !33

; <label>:205                                     ; preds = %175
  %206 = call float @dx.op.binary.f32(i32 36, float %200, float %202)  ; FMin(a,b)
  %207 = call float @dx.op.binary.f32(i32 35, float %200, float %202)  ; FMax(a,b)
  br label %208

; <label>:208                                     ; preds = %205, %175, %168
  %209 = phi float [ %173, %168 ], [ %206, %205 ], [ 0.000000e+00, %175 ]
  %210 = phi float [ %174, %168 ], [ %207, %205 ], [ 0.000000e+00, %175 ]
  %211 = fcmp fast oeq float %210, 0.000000e+00
  br i1 %211, label %215, label %212, !dx.controlflow.hints !34

; <label>:212                                     ; preds = %208
  %213 = call float @dx.op.binary.f32(i32 36, float %158, float %209)  ; FMin(a,b)
  %214 = call float @dx.op.binary.f32(i32 35, float %156, float %210)  ; FMax(a,b)
  br label %215

; <label>:215                                     ; preds = %212, %208
  %216 = phi float [ %214, %212 ], [ %156, %208 ]
  %217 = phi i32 [ 1, %212 ], [ 0, %208 ]
  %218 = phi float [ %213, %212 ], [ %158, %208 ]
  %219 = call float @dx.op.binary.f32(i32 36, float %54, float %216)  ; FMin(a,b)
  %220 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %218)  ; FMax(a,b)
  %221 = extractvalue %dx.types.CBufRet.f32 %132, 1
  %222 = fmul fast float %33, 2.000000e+00
  %223 = fadd fast float %222, -1.000000e+00
  %224 = fmul fast float %221, %223
  %225 = fadd fast float %224, %220
  %226 = fcmp fast olt float %225, %219
  %227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %228 = extractvalue %dx.types.CBufRet.f32 %227, 2
  %229 = fcmp fast olt float %228, 1.000000e+00
  %230 = and i1 %226, %229
  br i1 %230, label %231, label %878

; <label>:231                                     ; preds = %215
  %232 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %233 = extractvalue %dx.types.CBufRet.i32 %232, 1
  %234 = add i32 %233, -1
  %235 = fmul fast float %225, %61
  %236 = fadd fast float %235, %45
  %237 = fmul fast float %225, %60
  %238 = fadd fast float %237, %52
  %239 = fmul fast float %225, %59
  %240 = fadd fast float %239, %51
  br label %241

; <label>:241                                     ; preds = %860, %231
  %242 = phi float [ %861, %860 ], [ 1.000000e+00, %231 ]
  %243 = phi float [ %870, %860 ], [ %240, %231 ]
  %244 = phi float [ %871, %860 ], [ %238, %231 ]
  %245 = phi float [ %872, %860 ], [ %236, %231 ]
  %246 = phi float [ %866, %860 ], [ %225, %231 ]
  %247 = phi i32 [ %427, %860 ], [ %234, %231 ]
  %248 = phi i32 [ %862, %860 ], [ 0, %231 ]
  %249 = phi float [ %863, %860 ], [ 0.000000e+00, %231 ]
  %250 = phi float [ %864, %860 ], [ 0.000000e+00, %231 ]
  %251 = phi float [ %865, %860 ], [ 0.000000e+00, %231 ]
  %252 = fsub fast float -0.000000e+00, %244
  %253 = fsub fast float -0.000000e+00, %243
  %254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %255 = extractvalue %dx.types.CBufRet.f32 %254, 1
  %256 = icmp eq i32 %130, 0
  br i1 %256, label %425, label %257, !dx.controlflow.hints !35

; <label>:257                                     ; preds = %241
  %258 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %259 = extractvalue %dx.types.CBufRet.i32 %258, 1
  %260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %261 = extractvalue %dx.types.CBufRet.f32 %260, 1
  %262 = fcmp fast ogt float %261, %246
  br i1 %262, label %263, label %265, !dx.controlflow.hints !36

; <label>:263                                     ; preds = %257
  %264 = fsub fast float %261, %246
  br label %415

; <label>:265                                     ; preds = %257
  %266 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %267 = extractvalue %dx.types.CBufRet.i32 %266, 3
  %268 = icmp eq i32 %267, 0
  %269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %270 = extractvalue %dx.types.CBufRet.f32 %269, 2
  %271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %272 = extractvalue %dx.types.CBufRet.f32 %271, 2
  %273 = fsub fast float %270, %245
  %274 = fadd fast float %273, %272
  %275 = fsub fast float 0xC7EFFFFFE0000000, %245
  br i1 %268, label %283, label %276, !dx.controlflow.hints !26

; <label>:276                                     ; preds = %265
  %277 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %253, float %252, float %274)  ; Dot3(ax,ay,az,bx,by,bz)
  %278 = fmul fast float %139, %277
  %279 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %253, float %252, float %275)  ; Dot3(ax,ay,az,bx,by,bz)
  %280 = fmul fast float %139, %279
  %281 = call float @dx.op.binary.f32(i32 36, float %278, float %280)  ; FMin(a,b)
  %282 = call float @dx.op.binary.f32(i32 35, float %278, float %280)  ; FMax(a,b)
  br label %316

; <label>:283                                     ; preds = %265
  %284 = extractvalue %dx.types.CBufRet.f32 %269, 0
  %285 = extractvalue %dx.types.CBufRet.f32 %269, 1
  %286 = extractvalue %dx.types.CBufRet.f32 %271, 0
  %287 = extractvalue %dx.types.CBufRet.f32 %271, 1
  %288 = fdiv fast float 1.000000e+00, %59
  %289 = fdiv fast float 1.000000e+00, %60
  %290 = fdiv fast float 1.000000e+00, %61
  %291 = fsub fast float %284, %243
  %292 = fmul fast float %288, %291
  %293 = fadd fast float %291, %286
  %294 = fmul fast float %293, %288
  %295 = call float @dx.op.binary.f32(i32 36, float %292, float %294)  ; FMin(a,b)
  %296 = call float @dx.op.binary.f32(i32 35, float %292, float %294)  ; FMax(a,b)
  %297 = fsub fast float %285, %244
  %298 = fmul fast float %289, %297
  %299 = fadd fast float %297, %287
  %300 = fmul fast float %299, %289
  %301 = call float @dx.op.binary.f32(i32 36, float %298, float %300)  ; FMin(a,b)
  %302 = call float @dx.op.binary.f32(i32 35, float %295, float %301)  ; FMax(a,b)
  %303 = call float @dx.op.binary.f32(i32 35, float %298, float %300)  ; FMax(a,b)
  %304 = call float @dx.op.binary.f32(i32 36, float %296, float %303)  ; FMin(a,b)
  %305 = fmul fast float %290, %275
  %306 = fmul fast float %290, %274
  %307 = call float @dx.op.binary.f32(i32 36, float %305, float %306)  ; FMin(a,b)
  %308 = call float @dx.op.binary.f32(i32 35, float %302, float %307)  ; FMax(a,b)
  %309 = call float @dx.op.binary.f32(i32 35, float %305, float %306)  ; FMax(a,b)
  %310 = call float @dx.op.binary.f32(i32 36, float %304, float %309)  ; FMin(a,b)
  %311 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %308)  ; FMax(a,b)
  %312 = fcmp fast ult float %310, %311
  br i1 %312, label %316, label %313, !dx.controlflow.hints !27

; <label>:313                                     ; preds = %283
  %314 = call float @dx.op.binary.f32(i32 36, float %308, float %310)  ; FMin(a,b)
  %315 = call float @dx.op.binary.f32(i32 35, float %308, float %310)  ; FMax(a,b)
  br label %316

; <label>:316                                     ; preds = %313, %283, %276
  %317 = phi float [ %281, %276 ], [ %314, %313 ], [ 0.000000e+00, %283 ]
  %318 = phi float [ %282, %276 ], [ %315, %313 ], [ 0.000000e+00, %283 ]
  %319 = fcmp fast ogt float %317, 0.000000e+00
  br i1 %319, label %415, label %320, !dx.controlflow.hints !37

; <label>:320                                     ; preds = %316
  %321 = fcmp fast ugt float %318, 0.000000e+00
  br i1 %321, label %322, label %415, !dx.controlflow.hints !38

; <label>:322                                     ; preds = %320
  %323 = icmp sgt i32 %247, 0
  br i1 %323, label %324, label %409

; <label>:324                                     ; preds = %322
  br label %325

; <label>:325                                     ; preds = %405, %324
  %326 = phi i32 [ %406, %405 ], [ %247, %324 ]
  %327 = sitofp i32 %326 to float
  %328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %329 = extractvalue %dx.types.CBufRet.f32 %328, 0
  %330 = extractvalue %dx.types.CBufRet.f32 %328, 1
  %331 = fsub fast float %243, %329
  %332 = fsub fast float %244, %330
  %333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %334 = extractvalue %dx.types.CBufRet.f32 %333, 0
  %335 = extractvalue %dx.types.CBufRet.f32 %333, 1
  %336 = fmul fast float %331, %334
  %337 = fmul fast float %332, %335
  %338 = fsub fast float 1.000000e+00, %337
  %339 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %340 = extractvalue %dx.types.CBufRet.i32 %339, 3
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %348, label %342, !dx.controlflow.hints !39

; <label>:342                                     ; preds = %325
  %343 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %10, float %336, float %338, float undef, float undef, i32 0, i32 0, i32 undef, float %327)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %344 = extractvalue %dx.types.ResRet.f32 %343, 0
  %345 = extractvalue %dx.types.ResRet.f32 %343, 1
  %346 = extractvalue %dx.types.ResRet.f32 %343, 2
  %347 = extractvalue %dx.types.ResRet.f32 %343, 3
  br label %354

; <label>:348                                     ; preds = %325
  %349 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %11, float %336, float %338, float undef, float undef, i32 0, i32 0, i32 undef, float %327)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %350 = extractvalue %dx.types.ResRet.f32 %349, 0
  %351 = extractvalue %dx.types.ResRet.f32 %349, 1
  %352 = extractvalue %dx.types.ResRet.f32 %349, 2
  %353 = extractvalue %dx.types.ResRet.f32 %349, 3
  br label %354

; <label>:354                                     ; preds = %348, %342
  %355 = phi float [ %344, %342 ], [ %350, %348 ]
  %356 = phi float [ %345, %342 ], [ %351, %348 ]
  %357 = phi float [ %346, %342 ], [ %352, %348 ]
  %358 = phi float [ %347, %342 ], [ %353, %348 ]
  %359 = extractvalue %dx.types.CBufRet.f32 %333, 3
  %360 = fmul fast float %359, %355
  %361 = extractvalue %dx.types.CBufRet.f32 %328, 2
  %362 = fadd fast float %360, %361
  %363 = fmul fast float %359, %356
  %364 = fadd fast float %363, %361
  %365 = fmul fast float %359, %357
  %366 = fadd fast float %365, %361
  %367 = and i32 %326, 31
  %368 = shl i32 1, %367
  %369 = uitofp i32 %368 to float
  %370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %371 = extractvalue %dx.types.CBufRet.f32 %370, 3
  %372 = fdiv fast float 1.000000e+00, %371
  %373 = fmul fast float %372, %369
  %374 = fmul fast float %373, %61
  %375 = fadd fast float %374, %245
  %376 = fcmp fast oeq float %358, 0.000000e+00
  %377 = fcmp fast ogt float %245, %364
  %378 = fcmp fast ogt float %375, %364
  %379 = and i1 %377, %378
  %380 = or i1 %376, %379
  br i1 %380, label %381, label %385, !dx.controlflow.hints !40

; <label>:381                                     ; preds = %354
  %382 = add nsw i32 %326, 1
  %383 = add nsw i32 %259, -1
  %384 = call i32 @dx.op.binary.i32(i32 38, i32 %382, i32 %383)  ; IMin(a,b)
  br label %415

; <label>:385                                     ; preds = %354
  %386 = fcmp fast olt float %245, %366
  %387 = fcmp fast olt float %375, %366
  %388 = and i1 %386, %387
  br i1 %388, label %389, label %393, !dx.controlflow.hints !41

; <label>:389                                     ; preds = %385
  %390 = add nsw i32 %326, 1
  %391 = add nsw i32 %259, -1
  %392 = call i32 @dx.op.binary.i32(i32 38, i32 %390, i32 %391)  ; IMin(a,b)
  br label %415

; <label>:393                                     ; preds = %385
  %394 = fcmp fast olt float %245, %362
  %395 = fcmp fast olt float %375, %362
  %396 = and i1 %394, %395
  br i1 %396, label %397, label %405, !dx.controlflow.hints !42

; <label>:397                                     ; preds = %393
  %398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %399 = extractvalue %dx.types.CBufRet.f32 %398, 3
  %400 = extractvalue %dx.types.CBufRet.f32 %333, 2
  %401 = fcmp fast une float %399, %400
  br i1 %401, label %402, label %409, !dx.controlflow.hints !43

; <label>:402                                     ; preds = %397
  %403 = fsub fast float %245, %366
  %404 = call float @dx.op.binary.f32(i32 36, float %373, float %403)  ; FMin(a,b)
  br label %409

; <label>:405                                     ; preds = %393
  %406 = add nsw i32 %326, -1
  %407 = icmp sgt i32 %326, 1
  br i1 %407, label %325, label %408

; <label>:408                                     ; preds = %405
  br label %409

; <label>:409                                     ; preds = %408, %402, %397, %322
  %410 = phi float [ %404, %402 ], [ %373, %397 ], [ 0.000000e+00, %322 ], [ 0.000000e+00, %408 ]
  %411 = phi i32 [ %326, %402 ], [ %326, %397 ], [ %247, %322 ], [ %406, %408 ]
  %412 = add nsw i32 %411, 1
  %413 = add nsw i32 %259, -1
  %414 = call i32 @dx.op.binary.i32(i32 38, i32 %412, i32 %413)  ; IMin(a,b)
  br label %415

; <label>:415                                     ; preds = %409, %389, %381, %320, %316, %263
  %416 = phi float [ %264, %263 ], [ %373, %381 ], [ %373, %389 ], [ %410, %409 ], [ 0x47EFFFFFE0000000, %320 ], [ %317, %316 ]
  %417 = phi i32 [ %130, %263 ], [ %130, %381 ], [ %130, %389 ], [ %130, %409 ], [ 0, %320 ], [ %130, %316 ]
  %418 = phi i32 [ %247, %263 ], [ %384, %381 ], [ %392, %389 ], [ %414, %409 ], [ %247, %320 ], [ %247, %316 ]
  %419 = icmp ne i32 %417, 0
  %420 = zext i1 %419 to i32
  %421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %422 = extractvalue %dx.types.CBufRet.f32 %421, 2
  %423 = call float @dx.op.binary.f32(i32 35, float %416, float %422)  ; FMax(a,b)
  %424 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %423)  ; FMin(a,b)
  br label %425

; <label>:425                                     ; preds = %415, %241
  %426 = phi float [ %424, %415 ], [ 0x47EFFFFFE0000000, %241 ]
  %427 = phi i32 [ %418, %415 ], [ %247, %241 ]
  %428 = phi i32 [ %420, %415 ], [ 0, %241 ]
  %429 = icmp eq i32 %157, 0
  br i1 %429, label %442, label %430, !dx.controlflow.hints !44

; <label>:430                                     ; preds = %425
  %431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %432 = extractvalue %dx.types.CBufRet.f32 %431, 3
  %433 = extractvalue %dx.types.CBufRet.f32 %431, 2
  %434 = fmul fast float %432, %246
  %435 = fdiv fast float %434, %219
  %436 = fadd fast float %435, 1.000000e+00
  %437 = call float @dx.op.unary.f32(i32 23, float %436)  ; Log(value)
  %438 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %437)  ; FMin(a,b)
  %439 = fmul fast float %433, %219
  %440 = fmul fast float %439, %438
  %441 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %440)  ; FMin(a,b)
  br label %442

; <label>:442                                     ; preds = %430, %425
  %443 = phi float [ %441, %430 ], [ 0x47EFFFFFE0000000, %425 ]
  %444 = icmp eq i32 %217, 0
  br i1 %444, label %501, label %445, !dx.controlflow.hints !45

; <label>:445                                     ; preds = %442
  %446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %447 = extractvalue %dx.types.CBufRet.f32 %446, 0
  %448 = extractvalue %dx.types.CBufRet.f32 %446, 1
  %449 = extractvalue %dx.types.CBufRet.f32 %446, 2
  %450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %451 = extractvalue %dx.types.CBufRet.f32 %450, 0
  %452 = extractvalue %dx.types.CBufRet.f32 %450, 1
  %453 = extractvalue %dx.types.CBufRet.f32 %450, 2
  %454 = fsub fast float %243, %451
  %455 = fsub fast float %244, %452
  %456 = fsub fast float %245, %453
  %457 = fmul fast float %454, %447
  %458 = fmul fast float %455, %448
  %459 = fmul fast float %456, %449
  %460 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %461 = extractvalue %dx.types.CBufRet.i32 %460, 3
  %462 = icmp eq i32 %461, 0
  br i1 %462, label %466, label %463, !dx.controlflow.hints !46

; <label>:463                                     ; preds = %445
  %464 = call float @dx.op.unary.f32(i32 22, float %457)  ; Frc(value)
  %465 = call float @dx.op.unary.f32(i32 22, float %458)  ; Frc(value)
  br label %466

; <label>:466                                     ; preds = %463, %445
  %467 = phi float [ %464, %463 ], [ %457, %445 ]
  %468 = phi float [ %465, %463 ], [ %458, %445 ]
  %469 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %9, float %467, float %468, float %459, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %470 = extractvalue %dx.types.ResRet.f32 %469, 0
  %471 = fmul fast float %470, 2.000000e+00
  %472 = fadd fast float %471, -1.000000e+00
  %473 = extractvalue %dx.types.CBufRet.f32 %446, 3
  %474 = fmul fast float %472, %473
  %475 = fcmp fast olt float %474, 0.000000e+00
  %476 = fcmp fast oge float %459, 0.000000e+00
  %477 = fcmp fast ole float %459, 1.000000e+00
  br i1 %462, label %480, label %478, !dx.controlflow.hints !47

; <label>:478                                     ; preds = %466
  %479 = and i1 %476, %477
  br label %490

; <label>:480                                     ; preds = %466
  %481 = fcmp fast oge float %457, 0.000000e+00
  %482 = fcmp fast oge float %458, 0.000000e+00
  %483 = and i1 %481, %482
  %484 = and i1 %476, %483
  %485 = fcmp fast ole float %457, 1.000000e+00
  %486 = fcmp fast ole float %458, 1.000000e+00
  %487 = and i1 %485, %486
  %488 = and i1 %477, %487
  %489 = and i1 %484, %488
  br label %490

; <label>:490                                     ; preds = %480, %478
  %491 = phi i1 [ %479, %478 ], [ %489, %480 ]
  %492 = and i1 %475, %491
  %493 = call float @dx.op.unary.f32(i32 6, float %474)  ; FAbs(value)
  %494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %495 = extractvalue %dx.types.CBufRet.f32 %494, 1
  %496 = extractvalue %dx.types.CBufRet.f32 %494, 0
  %497 = call float @dx.op.binary.f32(i32 35, float %493, float %496)  ; FMax(a,b)
  %498 = select i1 %492, float %495, float %497
  %499 = zext i1 %492 to i32
  %500 = call float @dx.op.binary.f32(i32 36, float %426, float %498)  ; FMin(a,b)
  br label %501

; <label>:501                                     ; preds = %490, %442
  %502 = phi float [ %500, %490 ], [ %426, %442 ]
  %503 = phi i32 [ %499, %490 ], [ 0, %442 ]
  %504 = extractvalue %dx.types.CBufRet.f32 %254, 2
  %505 = fmul fast float %504, %246
  %506 = call float @dx.op.unary.f32(i32 23, float %505)  ; Log(value)
  %507 = fmul fast float %506, 0x3FE62E4300000000
  %508 = call float @dx.op.binary.f32(i32 35, float %507, float 1.000000e+00)  ; FMax(a,b)
  %509 = fmul fast float %508, %443
  %510 = call float @dx.op.binary.f32(i32 36, float %509, float %502)  ; FMin(a,b)
  %511 = call float @dx.op.binary.f32(i32 35, float %510, float %255)  ; FMax(a,b)
  %512 = fsub fast float %219, %246
  %513 = fadd fast float %512, 0x3F1A36E2E0000000
  %514 = call float @dx.op.binary.f32(i32 36, float %513, float %511)  ; FMin(a,b)
  %515 = icmp eq i32 %428, 0
  br i1 %515, label %612, label %516, !dx.controlflow.hints !48

; <label>:516                                     ; preds = %501
  %517 = fcmp fast olt float %513, %511
  %518 = fmul fast float %32, %61
  %519 = fmul fast float %518, %514
  %520 = fadd fast float %519, %245
  %521 = fmul fast float %33, %61
  %522 = fmul fast float %521, %514
  %523 = fadd fast float %522, %245
  %524 = fmul fast float %34, %61
  %525 = fmul fast float %524, %514
  %526 = fadd fast float %525, %245
  br i1 %517, label %527, label %532, !dx.controlflow.hints !49

; <label>:527                                     ; preds = %516
  %528 = fmul fast float %514, %59
  %529 = fmul fast float %514, %60
  %530 = fadd fast float %528, %243
  %531 = fadd fast float %529, %244
  br label %532

; <label>:532                                     ; preds = %527, %516
  %533 = phi float [ %530, %527 ], [ %243, %516 ]
  %534 = phi float [ %531, %527 ], [ %244, %516 ]
  %535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %536 = extractvalue %dx.types.CBufRet.f32 %535, 0
  %537 = extractvalue %dx.types.CBufRet.f32 %535, 1
  %538 = fsub fast float %533, %536
  %539 = fsub fast float %534, %537
  %540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %541 = extractvalue %dx.types.CBufRet.f32 %540, 0
  %542 = extractvalue %dx.types.CBufRet.f32 %540, 1
  %543 = fmul fast float %538, %541
  %544 = fmul fast float %539, %542
  %545 = fsub fast float 1.000000e+00, %544
  %546 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %547 = extractvalue %dx.types.CBufRet.i32 %546, 3
  %548 = icmp eq i32 %547, 0
  br i1 %548, label %555, label %549, !dx.controlflow.hints !39

; <label>:549                                     ; preds = %532
  %550 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %10, float %543, float %545, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %551 = extractvalue %dx.types.ResRet.f32 %550, 0
  %552 = extractvalue %dx.types.ResRet.f32 %550, 1
  %553 = extractvalue %dx.types.ResRet.f32 %550, 2
  %554 = extractvalue %dx.types.ResRet.f32 %550, 3
  br label %561

; <label>:555                                     ; preds = %532
  %556 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %11, float %543, float %545, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %557 = extractvalue %dx.types.ResRet.f32 %556, 0
  %558 = extractvalue %dx.types.ResRet.f32 %556, 1
  %559 = extractvalue %dx.types.ResRet.f32 %556, 2
  %560 = extractvalue %dx.types.ResRet.f32 %556, 3
  br label %561

; <label>:561                                     ; preds = %555, %549
  %562 = phi float [ %551, %549 ], [ %557, %555 ]
  %563 = phi float [ %552, %549 ], [ %558, %555 ]
  %564 = phi float [ %553, %549 ], [ %559, %555 ]
  %565 = phi float [ %554, %549 ], [ %560, %555 ]
  %566 = extractvalue %dx.types.CBufRet.f32 %540, 3
  %567 = fmul fast float %566, %563
  %568 = fmul fast float %567, %562
  %569 = fsub fast float %567, %568
  %570 = fcmp fast ole float %569, 0.000000e+00
  %571 = extractvalue %dx.types.CBufRet.f32 %535, 2
  %572 = fadd fast float %568, %571
  %573 = fmul fast float %566, %564
  %574 = fadd fast float %573, %571
  %575 = fdiv fast float 1.000000e+00, %569
  %576 = select i1 %570, float 1.000000e+06, float %575
  %577 = fsub fast float %520, %572
  %578 = fmul fast float %576, %577
  %579 = call float @dx.op.unary.f32(i32 7, float %578)  ; Saturate(value)
  %580 = extractvalue %dx.types.CBufRet.f32 %540, 2
  %581 = fmul fast float %580, %579
  %582 = fsub fast float %580, %581
  %583 = fcmp fast olt float %520, %574
  %584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %585 = extractvalue %dx.types.CBufRet.f32 %584, 3
  %586 = select i1 %583, float %585, float 1.000000e+00
  %587 = fmul fast float %582, %586
  %588 = fsub fast float %523, %572
  %589 = fmul fast float %576, %588
  %590 = call float @dx.op.unary.f32(i32 7, float %589)  ; Saturate(value)
  %591 = fmul fast float %580, %590
  %592 = fsub fast float %580, %591
  %593 = fcmp fast olt float %523, %574
  %594 = select i1 %593, float %585, float 1.000000e+00
  %595 = fmul fast float %592, %594
  %596 = fadd fast float %595, %587
  %597 = fsub fast float %526, %572
  %598 = fmul fast float %576, %597
  %599 = call float @dx.op.unary.f32(i32 7, float %598)  ; Saturate(value)
  %600 = fmul fast float %580, %599
  %601 = fsub fast float %580, %600
  %602 = fcmp fast olt float %526, %574
  %603 = select i1 %602, float %585, float 1.000000e+00
  %604 = fmul fast float %601, %603
  %605 = fadd fast float %596, %604
  %606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %607 = extractvalue %dx.types.CBufRet.f32 %606, 2
  %608 = fmul fast float %514, 0x3FD5555560000000
  %609 = fmul fast float %608, %565
  %610 = fmul fast float %609, %607
  %611 = fmul fast float %610, %605
  br label %612

; <label>:612                                     ; preds = %561, %501
  %613 = phi float [ %611, %561 ], [ 0.000000e+00, %501 ]
  br i1 %429, label %660, label %614, !dx.controlflow.hints !50

; <label>:614                                     ; preds = %612
  %615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %616 = extractvalue %dx.types.CBufRet.f32 %615, 0
  %617 = fsub fast float %616, %245
  %618 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %253, float %252, float %617)  ; Dot3(ax,ay,az,bx,by,bz)
  %619 = fmul fast float %139, %618
  %620 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %619)  ; FMax(a,b)
  %621 = fcmp ogt float %58, -0.000000e+00
  %622 = call float @dx.op.binary.f32(i32 36, float %514, float %620)  ; FMin(a,b)
  br i1 %621, label %624, label %623, !dx.controlflow.hints !51

; <label>:623                                     ; preds = %614
  br label %624

; <label>:624                                     ; preds = %623, %614
  %625 = phi float [ 0.000000e+00, %623 ], [ %622, %614 ]
  %626 = phi float [ %622, %623 ], [ %514, %614 ]
  %627 = phi float [ %622, %623 ], [ 0.000000e+00, %614 ]
  %628 = phi float [ %514, %623 ], [ %622, %614 ]
  %629 = fsub fast float %626, %625
  %630 = extractvalue %dx.types.CBufRet.f32 %615, 1
  %631 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %630)  ; FMin(a,b)
  %632 = fsub fast float %245, %616
  %633 = fmul fast float %631, 0x3FF7154760000000
  %634 = fmul fast float %633, %632
  %635 = call float @dx.op.unary.f32(i32 21, float %634)  ; Exp(value)
  %636 = fmul fast float %58, 0xBFF7154760000000
  %637 = fmul fast float %636, %628
  %638 = fmul fast float %637, %631
  %639 = call float @dx.op.unary.f32(i32 21, float %638)  ; Exp(value)
  %640 = fmul fast float %636, %627
  %641 = fmul fast float %640, %631
  %642 = call float @dx.op.unary.f32(i32 21, float %641)  ; Exp(value)
  %643 = fsub fast float %639, %642
  %644 = fmul fast float %643, %635
  %645 = fmul fast float %631, %61
  %646 = fdiv fast float %644, %645
  %647 = fadd fast float %629, %646
  %648 = call float @dx.op.unary.f32(i32 6, float %61)  ; FAbs(value)
  %649 = fcmp fast olt float %648, 0x3F0FFB4800000000
  %650 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %632)  ; FMax(a,b)
  %651 = fmul fast float %650, 0x3FF7154760000000
  %652 = fmul fast float %651, %630
  %653 = call float @dx.op.unary.f32(i32 21, float %652)  ; Exp(value)
  %654 = fmul fast float %653, %514
  %655 = select i1 %649, float %654, float %647
  %656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %657 = extractvalue %dx.types.CBufRet.f32 %656, 1
  %658 = fmul fast float %655, %657
  %659 = fadd fast float %658, %613
  br label %660

; <label>:660                                     ; preds = %624, %612
  %661 = phi float [ %659, %624 ], [ %613, %612 ]
  %662 = icmp eq i32 %503, 0
  br i1 %662, label %843, label %663, !dx.controlflow.hints !52

; <label>:663                                     ; preds = %660
  %664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %665 = extractvalue %dx.types.CBufRet.f32 %664, 3
  %666 = fmul fast float %665, %246
  %667 = fcmp fast oeq float %666, 0.000000e+00
  br i1 %667, label %682, label %668, !dx.controlflow.hints !53

; <label>:668                                     ; preds = %663
  %669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %670 = extractvalue %dx.types.CBufRet.f32 %669, 3
  %671 = fmul fast float %670, %666
  %672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %673 = extractvalue %dx.types.CBufRet.f32 %672, 0
  %674 = extractvalue %dx.types.CBufRet.f32 %672, 1
  %675 = extractvalue %dx.types.CBufRet.f32 %672, 2
  %676 = fmul fast float %673, %671
  %677 = fmul fast float %674, %671
  %678 = fmul fast float %675, %671
  %679 = call float @dx.op.unary.f32(i32 23, float %676)  ; Log(value)
  %680 = call float @dx.op.unary.f32(i32 23, float %677)  ; Log(value)
  %681 = call float @dx.op.unary.f32(i32 23, float %678)  ; Log(value)
  br label %682

; <label>:682                                     ; preds = %668, %663
  %683 = phi float [ %679, %668 ], [ 0.000000e+00, %663 ]
  %684 = phi float [ %680, %668 ], [ 0.000000e+00, %663 ]
  %685 = phi float [ %681, %668 ], [ 0.000000e+00, %663 ]
  %686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %687 = extractvalue %dx.types.CBufRet.f32 %686, 0
  %688 = extractvalue %dx.types.CBufRet.f32 %686, 1
  %689 = extractvalue %dx.types.CBufRet.f32 %686, 2
  %690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %691 = extractvalue %dx.types.CBufRet.f32 %690, 0
  %692 = extractvalue %dx.types.CBufRet.f32 %690, 1
  %693 = extractvalue %dx.types.CBufRet.f32 %690, 2
  %694 = fsub fast float %243, %691
  %695 = fsub fast float %244, %692
  %696 = fsub fast float %245, %693
  %697 = fmul fast float %694, %687
  %698 = fmul fast float %695, %688
  %699 = fmul fast float %696, %689
  %700 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %701 = extractvalue %dx.types.CBufRet.i32 %700, 0
  %702 = extractvalue %dx.types.CBufRet.i32 %700, 1
  %703 = uitofp i32 %701 to float
  %704 = uitofp i32 %702 to float
  %705 = fmul fast float %697, %703
  %706 = fmul fast float %698, %704
  %707 = fadd fast float %705, 5.000000e-01
  %708 = fadd fast float %706, 5.000000e-01
  %709 = call float @dx.op.unary.f32(i32 22, float %707)  ; Frc(value)
  %710 = call float @dx.op.unary.f32(i32 22, float %708)  ; Frc(value)
  %711 = call float @dx.op.unary.f32(i32 27, float %707)  ; Round_ni(value)
  %712 = call float @dx.op.unary.f32(i32 27, float %708)  ; Round_ni(value)
  %713 = fadd fast float %711, 1.000000e+00
  %714 = fadd fast float %712, 1.000000e+00
  %715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %716 = extractvalue %dx.types.CBufRet.f32 %715, 0
  %717 = extractvalue %dx.types.CBufRet.f32 %715, 1
  %718 = fmul fast float %716, %713
  %719 = fmul fast float %717, %714
  %720 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %10, float %718, float %719, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %721 = extractvalue %dx.types.ResRet.f32 %720, 0
  %722 = extractvalue %dx.types.ResRet.f32 %720, 1
  %723 = extractvalue %dx.types.ResRet.f32 %720, 2
  %724 = extractvalue %dx.types.ResRet.f32 %720, 3
  %725 = extractvalue %dx.types.CBufRet.i32 %700, 2
  %726 = extractvalue %dx.types.CBufRet.f32 %715, 2
  %727 = uitofp i32 %725 to float
  %728 = fadd fast float %727, -1.000000e+00
  %729 = fmul fast float %728, %721
  %730 = fmul fast float %728, %722
  %731 = fmul fast float %728, %723
  %732 = fmul fast float %728, %724
  %733 = fadd fast float %729, 5.000000e-01
  %734 = fadd fast float %730, 5.000000e-01
  %735 = fadd fast float %731, 5.000000e-01
  %736 = fadd fast float %732, 5.000000e-01
  %737 = fptoui float %733 to i32
  %738 = fptoui float %734 to i32
  %739 = fptoui float %735 to i32
  %740 = fptoui float %736 to i32
  %741 = uitofp i32 %737 to float
  %742 = uitofp i32 %738 to float
  %743 = uitofp i32 %739 to float
  %744 = uitofp i32 %740 to float
  %745 = fadd fast float %741, 5.000000e-01
  %746 = fadd fast float %742, 5.000000e-01
  %747 = fadd fast float %743, 5.000000e-01
  %748 = fadd fast float %744, 5.000000e-01
  %749 = fmul fast float %745, %726
  %750 = fmul fast float %746, %726
  %751 = fmul fast float %747, %726
  %752 = fmul fast float %748, %726
  %753 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %11, float %749, float %699, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %754 = extractvalue %dx.types.ResRet.f32 %753, 0
  %755 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %11, float %750, float %699, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %756 = extractvalue %dx.types.ResRet.f32 %755, 0
  %757 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %11, float %751, float %699, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %758 = extractvalue %dx.types.ResRet.f32 %757, 0
  %759 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %11, float %752, float %699, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %760 = extractvalue %dx.types.ResRet.f32 %759, 0
  %761 = fsub fast float %758, %760
  %762 = fmul fast float %761, %709
  %763 = fadd fast float %762, %760
  %764 = fsub fast float %756, %754
  %765 = fmul fast float %764, %709
  %766 = fadd fast float %765, %754
  %767 = fsub fast float %766, %763
  %768 = fmul fast float %767, %710
  %769 = fadd fast float %768, %763
  %770 = fcmp fast ogt float %769, 0.000000e+00
  br i1 %770, label %771, label %839, !dx.controlflow.hints !54

; <label>:771                                     ; preds = %682
  %772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %773 = extractvalue %dx.types.CBufRet.f32 %772, 0
  %774 = extractvalue %dx.types.CBufRet.f32 %772, 1
  %775 = extractvalue %dx.types.CBufRet.f32 %772, 2
  %776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %777 = extractvalue %dx.types.CBufRet.f32 %776, 0
  %778 = extractvalue %dx.types.CBufRet.f32 %776, 1
  %779 = extractvalue %dx.types.CBufRet.f32 %776, 2
  %780 = fmul fast float %695, %687
  %781 = fmul fast float %696, %687
  %782 = fadd fast float %697, %777
  %783 = fadd fast float %780, %778
  %784 = fadd fast float %781, %779
  %785 = fmul fast float %782, %773
  %786 = fmul fast float %783, %773
  %787 = fmul fast float %784, %773
  %788 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %8, float %785, float %786, float %787, float undef, i32 0, i32 0, i32 0, float %683)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %789 = extractvalue %dx.types.ResRet.f32 %788, 0
  %790 = fmul fast float %782, %774
  %791 = fmul fast float %783, %774
  %792 = fmul fast float %784, %774
  %793 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %8, float %790, float %791, float %792, float undef, i32 0, i32 0, i32 0, float %684)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %794 = extractvalue %dx.types.ResRet.f32 %793, 1
  %795 = fmul fast float %782, %775
  %796 = fmul fast float %783, %775
  %797 = fmul fast float %784, %775
  %798 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %8, float %795, float %796, float %797, float undef, i32 0, i32 0, i32 0, float %685)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %799 = extractvalue %dx.types.ResRet.f32 %798, 2
  %800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %801 = extractvalue %dx.types.CBufRet.f32 %800, 1
  %802 = fmul fast float %794, %789
  %803 = fmul fast float %802, %799
  %804 = call float @dx.op.unary.f32(i32 23, float %803)  ; Log(value)
  %805 = fmul fast float %804, %801
  %806 = call float @dx.op.unary.f32(i32 21, float %805)  ; Exp(value)
  %807 = extractvalue %dx.types.CBufRet.f32 %800, 2
  %808 = fmul fast float %769, %769
  %809 = fmul fast float %808, %806
  %810 = fmul fast float %809, %807
  %811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %812 = extractvalue %dx.types.CBufRet.f32 %811, 3
  %813 = fmul fast float %812, %810
  %814 = bitcast float %813 to i32
  %815 = sitofp i32 %814 to float
  %816 = fptosi float %815 to i32
  %817 = bitcast i32 %816 to float
  %818 = fsub fast float 1.000000e+00, %810
  %819 = bitcast float %818 to i32
  %820 = sitofp i32 %819 to float
  %821 = fptosi float %820 to i32
  %822 = bitcast i32 %821 to float
  %823 = fadd fast float %817, %822
  %824 = bitcast float %823 to i32
  %825 = sub nsw i32 2129859010, %824
  %826 = bitcast i32 %825 to float
  %827 = fmul fast float %826, %817
  %828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %829 = extractvalue %dx.types.CBufRet.f32 %828, 3
  %830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %831 = extractvalue %dx.types.CBufRet.f32 %830, 0
  %832 = fmul fast float %827, %831
  %833 = fadd fast float %832, 1.000000e+00
  %834 = bitcast float %833 to i32
  %835 = sub nsw i32 2129859010, %834
  %836 = bitcast i32 %835 to float
  %837 = fmul fast float %827, %829
  %838 = fmul fast float %837, %836
  br label %839

; <label>:839                                     ; preds = %771, %682
  %840 = phi float [ %838, %771 ], [ %769, %682 ]
  %841 = fmul fast float %840, %514
  %842 = fadd fast float %841, %661
  br label %843

; <label>:843                                     ; preds = %839, %660
  %844 = phi float [ %842, %839 ], [ %661, %660 ]
  %845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %846 = extractvalue %dx.types.CBufRet.f32 %845, 1
  %847 = fcmp fast ogt float %844, %846
  br i1 %847, label %848, label %860, !dx.controlflow.hints !55

; <label>:848                                     ; preds = %843
  %849 = fmul fast float %844, 0xBFF7154760000000
  %850 = call float @dx.op.unary.f32(i32 21, float %849)  ; Exp(value)
  %851 = call float @dx.op.unary.f32(i32 7, float %850)  ; Saturate(value)
  %852 = icmp eq i32 %248, 0
  br i1 %852, label %853, label %854, !dx.controlflow.hints !56

; <label>:853                                     ; preds = %848
  br label %854

; <label>:854                                     ; preds = %853, %848
  %855 = phi i32 [ %248, %848 ], [ 1, %853 ]
  %856 = phi float [ %249, %848 ], [ %246, %853 ]
  %857 = fadd fast float %514, %250
  %858 = fadd fast float %844, %251
  %859 = fmul fast float %851, %242
  br label %860

; <label>:860                                     ; preds = %854, %843
  %861 = phi float [ %859, %854 ], [ %242, %843 ]
  %862 = phi i32 [ %855, %854 ], [ %248, %843 ]
  %863 = phi float [ %856, %854 ], [ %249, %843 ]
  %864 = phi float [ %857, %854 ], [ %250, %843 ]
  %865 = phi float [ %858, %854 ], [ %251, %843 ]
  %866 = fadd fast float %514, %246
  %867 = fmul fast float %514, %59
  %868 = fmul fast float %514, %60
  %869 = fmul fast float %514, %61
  %870 = fadd fast float %867, %243
  %871 = fadd fast float %868, %244
  %872 = fadd fast float %869, %245
  %873 = fcmp fast olt float %866, %219
  %874 = extractvalue %dx.types.CBufRet.f32 %845, 2
  %875 = fcmp fast olt float %874, %861
  %876 = and i1 %873, %875
  br i1 %876, label %241, label %877

; <label>:877                                     ; preds = %860
  br label %878

; <label>:878                                     ; preds = %877, %215
  %879 = phi float [ 0.000000e+00, %215 ], [ %863, %877 ]
  %880 = phi float [ 0.000000e+00, %215 ], [ %864, %877 ]
  %881 = phi float [ 0.000000e+00, %215 ], [ %865, %877 ]
  %882 = extractvalue %dx.types.CBufRet.f32 %53, 3
  %883 = fmul fast float %882, %879
  %884 = fdiv fast float 1.000000e+00, %880
  %885 = fmul fast float %884, %881
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %14, i32 %15, i32 undef, float %883, float %885, float %881, float %883, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #2

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
!dx.entryPoints = !{!23}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !13, !15, !18}
!5 = !{!6, !8, !9, !10, !11, !12}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 16, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture3D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 4, i32 0, !7}
!9 = !{i32 2, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 4, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 8, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 9, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 13, i32 1, i32 2, i32 0, !7}
!13 = !{!14}
!14 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 7, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!15 = !{!16, !17}
!16 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!17 = !{i32 1, %FogRaymarchingConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 112, null}
!18 = !{!19, !20, !21, !22}
!19 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!20 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!21 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!22 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!23 = !{void ()* @cs_fog_raymarching_air_clouds_heightmap, !"cs_fog_raymarching_air_clouds_heightmap", null, !4, !24}
!24 = !{i32 0, i64 256, i32 4, !25}
!25 = !{i32 8, i32 8, i32 1}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 1}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 1}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 1}

