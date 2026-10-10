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
; shader hash: 9c8c3a58863175161370b36d2cc558c9
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

define void @cs_fog_raymarching_clouds_heightmap() {
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
  %132 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %133 = extractvalue %dx.types.CBufRet.i32 %132, 3
  %134 = icmp eq i32 %133, 0
  %135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %136 = extractvalue %dx.types.CBufRet.f32 %135, 2
  %137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.f32 %137, 2
  %139 = fsub fast float %136, %45
  %140 = fadd fast float %139, %138
  br i1 %134, label %152, label %141, !dx.controlflow.hints !29

; <label>:141                                     ; preds = %128
  %142 = fsub fast float -0.000000e+00, %51
  %143 = fsub fast float -0.000000e+00, %52
  %144 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %142, float %143, float %140)  ; Dot3(ax,ay,az,bx,by,bz)
  %145 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %59, float %60, float %61)  ; Dot3(ax,ay,az,bx,by,bz)
  %146 = fdiv fast float 1.000000e+00, %145
  %147 = fmul fast float %146, %144
  %148 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %142, float %143, float %139)  ; Dot3(ax,ay,az,bx,by,bz)
  %149 = fmul fast float %146, %148
  %150 = call float @dx.op.binary.f32(i32 36, float %147, float %149)  ; FMin(a,b)
  %151 = call float @dx.op.binary.f32(i32 35, float %147, float %149)  ; FMax(a,b)
  br label %185

; <label>:152                                     ; preds = %128
  %153 = fdiv fast float 1.000000e+00, %59
  %154 = fdiv fast float 1.000000e+00, %60
  %155 = fdiv fast float 1.000000e+00, %61
  %156 = extractvalue %dx.types.CBufRet.f32 %135, 0
  %157 = extractvalue %dx.types.CBufRet.f32 %135, 1
  %158 = extractvalue %dx.types.CBufRet.f32 %137, 0
  %159 = extractvalue %dx.types.CBufRet.f32 %137, 1
  %160 = fsub fast float %156, %51
  %161 = fmul fast float %160, %153
  %162 = fadd fast float %160, %158
  %163 = fmul fast float %162, %153
  %164 = call float @dx.op.binary.f32(i32 36, float %161, float %163)  ; FMin(a,b)
  %165 = call float @dx.op.binary.f32(i32 35, float %161, float %163)  ; FMax(a,b)
  %166 = fsub fast float %157, %52
  %167 = fmul fast float %166, %154
  %168 = fadd fast float %166, %159
  %169 = fmul fast float %168, %154
  %170 = call float @dx.op.binary.f32(i32 36, float %167, float %169)  ; FMin(a,b)
  %171 = call float @dx.op.binary.f32(i32 35, float %164, float %170)  ; FMax(a,b)
  %172 = call float @dx.op.binary.f32(i32 35, float %167, float %169)  ; FMax(a,b)
  %173 = call float @dx.op.binary.f32(i32 36, float %165, float %172)  ; FMin(a,b)
  %174 = fmul fast float %139, %155
  %175 = fmul fast float %140, %155
  %176 = call float @dx.op.binary.f32(i32 36, float %174, float %175)  ; FMin(a,b)
  %177 = call float @dx.op.binary.f32(i32 35, float %171, float %176)  ; FMax(a,b)
  %178 = call float @dx.op.binary.f32(i32 35, float %174, float %175)  ; FMax(a,b)
  %179 = call float @dx.op.binary.f32(i32 36, float %173, float %178)  ; FMin(a,b)
  %180 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %177)  ; FMax(a,b)
  %181 = fcmp fast ult float %179, %180
  br i1 %181, label %185, label %182, !dx.controlflow.hints !30

; <label>:182                                     ; preds = %152
  %183 = call float @dx.op.binary.f32(i32 36, float %177, float %179)  ; FMin(a,b)
  %184 = call float @dx.op.binary.f32(i32 35, float %177, float %179)  ; FMax(a,b)
  br label %185

; <label>:185                                     ; preds = %182, %152, %141
  %186 = phi float [ %150, %141 ], [ %183, %182 ], [ 0.000000e+00, %152 ]
  %187 = phi float [ %151, %141 ], [ %184, %182 ], [ 0.000000e+00, %152 ]
  %188 = fcmp fast oeq float %187, 0.000000e+00
  br i1 %188, label %192, label %189, !dx.controlflow.hints !31

; <label>:189                                     ; preds = %185
  %190 = call float @dx.op.binary.f32(i32 36, float %131, float %186)  ; FMin(a,b)
  %191 = call float @dx.op.binary.f32(i32 35, float %129, float %187)  ; FMax(a,b)
  br label %192

; <label>:192                                     ; preds = %189, %185
  %193 = phi float [ %191, %189 ], [ %129, %185 ]
  %194 = phi i32 [ 1, %189 ], [ 0, %185 ]
  %195 = phi float [ %190, %189 ], [ %131, %185 ]
  %196 = call float @dx.op.binary.f32(i32 36, float %54, float %193)  ; FMin(a,b)
  %197 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %195)  ; FMax(a,b)
  %198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %199 = extractvalue %dx.types.CBufRet.f32 %198, 1
  %200 = fmul fast float %33, 2.000000e+00
  %201 = fadd fast float %200, -1.000000e+00
  %202 = fmul fast float %199, %201
  %203 = fadd fast float %202, %197
  %204 = fcmp fast olt float %203, %196
  %205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %206 = extractvalue %dx.types.CBufRet.f32 %205, 2
  %207 = fcmp fast olt float %206, 1.000000e+00
  %208 = and i1 %204, %207
  br i1 %208, label %209, label %795

; <label>:209                                     ; preds = %192
  %210 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %211 = extractvalue %dx.types.CBufRet.i32 %210, 1
  %212 = add i32 %211, -1
  %213 = fmul fast float %203, %61
  %214 = fadd fast float %213, %45
  %215 = fmul fast float %203, %60
  %216 = fadd fast float %215, %52
  %217 = fmul fast float %203, %59
  %218 = fadd fast float %217, %51
  br label %219

; <label>:219                                     ; preds = %777, %209
  %220 = phi float [ %778, %777 ], [ 1.000000e+00, %209 ]
  %221 = phi float [ %787, %777 ], [ %218, %209 ]
  %222 = phi float [ %788, %777 ], [ %216, %209 ]
  %223 = phi float [ %789, %777 ], [ %214, %209 ]
  %224 = phi float [ %783, %777 ], [ %203, %209 ]
  %225 = phi i32 [ %407, %777 ], [ %212, %209 ]
  %226 = phi i32 [ %779, %777 ], [ 0, %209 ]
  %227 = phi float [ %780, %777 ], [ 0.000000e+00, %209 ]
  %228 = phi float [ %781, %777 ], [ 0.000000e+00, %209 ]
  %229 = phi float [ %782, %777 ], [ 0.000000e+00, %209 ]
  %230 = fsub fast float -0.000000e+00, %222
  %231 = fsub fast float -0.000000e+00, %221
  %232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %233 = extractvalue %dx.types.CBufRet.f32 %232, 1
  %234 = icmp eq i32 %130, 0
  br i1 %234, label %405, label %235, !dx.controlflow.hints !32

; <label>:235                                     ; preds = %219
  %236 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %237 = extractvalue %dx.types.CBufRet.i32 %236, 1
  %238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %239 = extractvalue %dx.types.CBufRet.f32 %238, 1
  %240 = fcmp fast ogt float %239, %224
  br i1 %240, label %241, label %243, !dx.controlflow.hints !33

; <label>:241                                     ; preds = %235
  %242 = fsub fast float %239, %224
  br label %395

; <label>:243                                     ; preds = %235
  %244 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %245 = extractvalue %dx.types.CBufRet.i32 %244, 3
  %246 = icmp eq i32 %245, 0
  %247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %248 = extractvalue %dx.types.CBufRet.f32 %247, 2
  %249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %250 = extractvalue %dx.types.CBufRet.f32 %249, 2
  %251 = fsub fast float %248, %223
  %252 = fadd fast float %251, %250
  %253 = fsub fast float 0xC7EFFFFFE0000000, %223
  br i1 %246, label %263, label %254, !dx.controlflow.hints !26

; <label>:254                                     ; preds = %243
  %255 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %231, float %230, float %252)  ; Dot3(ax,ay,az,bx,by,bz)
  %256 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %59, float %60, float %61)  ; Dot3(ax,ay,az,bx,by,bz)
  %257 = fdiv fast float 1.000000e+00, %256
  %258 = fmul fast float %257, %255
  %259 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %231, float %230, float %253)  ; Dot3(ax,ay,az,bx,by,bz)
  %260 = fmul fast float %257, %259
  %261 = call float @dx.op.binary.f32(i32 36, float %258, float %260)  ; FMin(a,b)
  %262 = call float @dx.op.binary.f32(i32 35, float %258, float %260)  ; FMax(a,b)
  br label %296

; <label>:263                                     ; preds = %243
  %264 = extractvalue %dx.types.CBufRet.f32 %247, 0
  %265 = extractvalue %dx.types.CBufRet.f32 %247, 1
  %266 = extractvalue %dx.types.CBufRet.f32 %249, 0
  %267 = extractvalue %dx.types.CBufRet.f32 %249, 1
  %268 = fdiv fast float 1.000000e+00, %59
  %269 = fdiv fast float 1.000000e+00, %60
  %270 = fdiv fast float 1.000000e+00, %61
  %271 = fsub fast float %264, %221
  %272 = fmul fast float %268, %271
  %273 = fadd fast float %271, %266
  %274 = fmul fast float %273, %268
  %275 = call float @dx.op.binary.f32(i32 36, float %272, float %274)  ; FMin(a,b)
  %276 = call float @dx.op.binary.f32(i32 35, float %272, float %274)  ; FMax(a,b)
  %277 = fsub fast float %265, %222
  %278 = fmul fast float %269, %277
  %279 = fadd fast float %277, %267
  %280 = fmul fast float %279, %269
  %281 = call float @dx.op.binary.f32(i32 36, float %278, float %280)  ; FMin(a,b)
  %282 = call float @dx.op.binary.f32(i32 35, float %275, float %281)  ; FMax(a,b)
  %283 = call float @dx.op.binary.f32(i32 35, float %278, float %280)  ; FMax(a,b)
  %284 = call float @dx.op.binary.f32(i32 36, float %276, float %283)  ; FMin(a,b)
  %285 = fmul fast float %270, %253
  %286 = fmul fast float %270, %252
  %287 = call float @dx.op.binary.f32(i32 36, float %285, float %286)  ; FMin(a,b)
  %288 = call float @dx.op.binary.f32(i32 35, float %282, float %287)  ; FMax(a,b)
  %289 = call float @dx.op.binary.f32(i32 35, float %285, float %286)  ; FMax(a,b)
  %290 = call float @dx.op.binary.f32(i32 36, float %284, float %289)  ; FMin(a,b)
  %291 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %288)  ; FMax(a,b)
  %292 = fcmp fast ult float %290, %291
  br i1 %292, label %296, label %293, !dx.controlflow.hints !27

; <label>:293                                     ; preds = %263
  %294 = call float @dx.op.binary.f32(i32 36, float %288, float %290)  ; FMin(a,b)
  %295 = call float @dx.op.binary.f32(i32 35, float %288, float %290)  ; FMax(a,b)
  br label %296

; <label>:296                                     ; preds = %293, %263, %254
  %297 = phi float [ %261, %254 ], [ %294, %293 ], [ 0.000000e+00, %263 ]
  %298 = phi float [ %262, %254 ], [ %295, %293 ], [ 0.000000e+00, %263 ]
  %299 = fcmp fast ogt float %297, 0.000000e+00
  br i1 %299, label %395, label %300, !dx.controlflow.hints !34

; <label>:300                                     ; preds = %296
  %301 = fcmp fast ugt float %298, 0.000000e+00
  br i1 %301, label %302, label %395, !dx.controlflow.hints !35

; <label>:302                                     ; preds = %300
  %303 = icmp sgt i32 %225, 0
  br i1 %303, label %304, label %389

; <label>:304                                     ; preds = %302
  br label %305

; <label>:305                                     ; preds = %385, %304
  %306 = phi i32 [ %386, %385 ], [ %225, %304 ]
  %307 = sitofp i32 %306 to float
  %308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %309 = extractvalue %dx.types.CBufRet.f32 %308, 0
  %310 = extractvalue %dx.types.CBufRet.f32 %308, 1
  %311 = fsub fast float %221, %309
  %312 = fsub fast float %222, %310
  %313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %314 = extractvalue %dx.types.CBufRet.f32 %313, 0
  %315 = extractvalue %dx.types.CBufRet.f32 %313, 1
  %316 = fmul fast float %311, %314
  %317 = fmul fast float %312, %315
  %318 = fsub fast float 1.000000e+00, %317
  %319 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %320 = extractvalue %dx.types.CBufRet.i32 %319, 3
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %328, label %322, !dx.controlflow.hints !36

; <label>:322                                     ; preds = %305
  %323 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %10, float %316, float %318, float undef, float undef, i32 0, i32 0, i32 undef, float %307)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %324 = extractvalue %dx.types.ResRet.f32 %323, 0
  %325 = extractvalue %dx.types.ResRet.f32 %323, 1
  %326 = extractvalue %dx.types.ResRet.f32 %323, 2
  %327 = extractvalue %dx.types.ResRet.f32 %323, 3
  br label %334

; <label>:328                                     ; preds = %305
  %329 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %11, float %316, float %318, float undef, float undef, i32 0, i32 0, i32 undef, float %307)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %330 = extractvalue %dx.types.ResRet.f32 %329, 0
  %331 = extractvalue %dx.types.ResRet.f32 %329, 1
  %332 = extractvalue %dx.types.ResRet.f32 %329, 2
  %333 = extractvalue %dx.types.ResRet.f32 %329, 3
  br label %334

; <label>:334                                     ; preds = %328, %322
  %335 = phi float [ %324, %322 ], [ %330, %328 ]
  %336 = phi float [ %325, %322 ], [ %331, %328 ]
  %337 = phi float [ %326, %322 ], [ %332, %328 ]
  %338 = phi float [ %327, %322 ], [ %333, %328 ]
  %339 = extractvalue %dx.types.CBufRet.f32 %313, 3
  %340 = fmul fast float %339, %335
  %341 = extractvalue %dx.types.CBufRet.f32 %308, 2
  %342 = fadd fast float %340, %341
  %343 = fmul fast float %339, %336
  %344 = fadd fast float %343, %341
  %345 = fmul fast float %339, %337
  %346 = fadd fast float %345, %341
  %347 = and i32 %306, 31
  %348 = shl i32 1, %347
  %349 = uitofp i32 %348 to float
  %350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %351 = extractvalue %dx.types.CBufRet.f32 %350, 3
  %352 = fdiv fast float 1.000000e+00, %351
  %353 = fmul fast float %352, %349
  %354 = fmul fast float %353, %61
  %355 = fadd fast float %354, %223
  %356 = fcmp fast oeq float %338, 0.000000e+00
  %357 = fcmp fast ogt float %223, %344
  %358 = fcmp fast ogt float %355, %344
  %359 = and i1 %357, %358
  %360 = or i1 %356, %359
  br i1 %360, label %361, label %365, !dx.controlflow.hints !37

; <label>:361                                     ; preds = %334
  %362 = add nsw i32 %306, 1
  %363 = add nsw i32 %237, -1
  %364 = call i32 @dx.op.binary.i32(i32 38, i32 %362, i32 %363)  ; IMin(a,b)
  br label %395

; <label>:365                                     ; preds = %334
  %366 = fcmp fast olt float %223, %346
  %367 = fcmp fast olt float %355, %346
  %368 = and i1 %366, %367
  br i1 %368, label %369, label %373, !dx.controlflow.hints !38

; <label>:369                                     ; preds = %365
  %370 = add nsw i32 %306, 1
  %371 = add nsw i32 %237, -1
  %372 = call i32 @dx.op.binary.i32(i32 38, i32 %370, i32 %371)  ; IMin(a,b)
  br label %395

; <label>:373                                     ; preds = %365
  %374 = fcmp fast olt float %223, %342
  %375 = fcmp fast olt float %355, %342
  %376 = and i1 %374, %375
  br i1 %376, label %377, label %385, !dx.controlflow.hints !39

; <label>:377                                     ; preds = %373
  %378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %379 = extractvalue %dx.types.CBufRet.f32 %378, 3
  %380 = extractvalue %dx.types.CBufRet.f32 %313, 2
  %381 = fcmp fast une float %379, %380
  br i1 %381, label %382, label %389, !dx.controlflow.hints !40

; <label>:382                                     ; preds = %377
  %383 = fsub fast float %223, %346
  %384 = call float @dx.op.binary.f32(i32 36, float %353, float %383)  ; FMin(a,b)
  br label %389

; <label>:385                                     ; preds = %373
  %386 = add nsw i32 %306, -1
  %387 = icmp sgt i32 %306, 1
  br i1 %387, label %305, label %388

; <label>:388                                     ; preds = %385
  br label %389

; <label>:389                                     ; preds = %388, %382, %377, %302
  %390 = phi float [ %384, %382 ], [ %353, %377 ], [ 0.000000e+00, %302 ], [ 0.000000e+00, %388 ]
  %391 = phi i32 [ %306, %382 ], [ %306, %377 ], [ %225, %302 ], [ %386, %388 ]
  %392 = add nsw i32 %391, 1
  %393 = add nsw i32 %237, -1
  %394 = call i32 @dx.op.binary.i32(i32 38, i32 %392, i32 %393)  ; IMin(a,b)
  br label %395

; <label>:395                                     ; preds = %389, %369, %361, %300, %296, %241
  %396 = phi float [ %242, %241 ], [ %353, %361 ], [ %353, %369 ], [ %390, %389 ], [ 0x47EFFFFFE0000000, %300 ], [ %297, %296 ]
  %397 = phi i32 [ %130, %241 ], [ %130, %361 ], [ %130, %369 ], [ %130, %389 ], [ 0, %300 ], [ %130, %296 ]
  %398 = phi i32 [ %225, %241 ], [ %364, %361 ], [ %372, %369 ], [ %394, %389 ], [ %225, %300 ], [ %225, %296 ]
  %399 = icmp ne i32 %397, 0
  %400 = zext i1 %399 to i32
  %401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %402 = extractvalue %dx.types.CBufRet.f32 %401, 2
  %403 = call float @dx.op.binary.f32(i32 35, float %396, float %402)  ; FMax(a,b)
  %404 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %403)  ; FMin(a,b)
  br label %405

; <label>:405                                     ; preds = %395, %219
  %406 = phi float [ %404, %395 ], [ 0x47EFFFFFE0000000, %219 ]
  %407 = phi i32 [ %398, %395 ], [ %225, %219 ]
  %408 = phi i32 [ %400, %395 ], [ 0, %219 ]
  %409 = icmp eq i32 %194, 0
  br i1 %409, label %466, label %410, !dx.controlflow.hints !41

; <label>:410                                     ; preds = %405
  %411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %412 = extractvalue %dx.types.CBufRet.f32 %411, 0
  %413 = extractvalue %dx.types.CBufRet.f32 %411, 1
  %414 = extractvalue %dx.types.CBufRet.f32 %411, 2
  %415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %416 = extractvalue %dx.types.CBufRet.f32 %415, 0
  %417 = extractvalue %dx.types.CBufRet.f32 %415, 1
  %418 = extractvalue %dx.types.CBufRet.f32 %415, 2
  %419 = fsub fast float %221, %416
  %420 = fsub fast float %222, %417
  %421 = fsub fast float %223, %418
  %422 = fmul fast float %419, %412
  %423 = fmul fast float %420, %413
  %424 = fmul fast float %421, %414
  %425 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %426 = extractvalue %dx.types.CBufRet.i32 %425, 3
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %431, label %428, !dx.controlflow.hints !42

; <label>:428                                     ; preds = %410
  %429 = call float @dx.op.unary.f32(i32 22, float %422)  ; Frc(value)
  %430 = call float @dx.op.unary.f32(i32 22, float %423)  ; Frc(value)
  br label %431

; <label>:431                                     ; preds = %428, %410
  %432 = phi float [ %429, %428 ], [ %422, %410 ]
  %433 = phi float [ %430, %428 ], [ %423, %410 ]
  %434 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %9, float %432, float %433, float %424, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %435 = extractvalue %dx.types.ResRet.f32 %434, 0
  %436 = fmul fast float %435, 2.000000e+00
  %437 = fadd fast float %436, -1.000000e+00
  %438 = extractvalue %dx.types.CBufRet.f32 %411, 3
  %439 = fmul fast float %437, %438
  %440 = fcmp fast olt float %439, 0.000000e+00
  %441 = fcmp fast oge float %424, 0.000000e+00
  %442 = fcmp fast ole float %424, 1.000000e+00
  br i1 %427, label %445, label %443, !dx.controlflow.hints !43

; <label>:443                                     ; preds = %431
  %444 = and i1 %441, %442
  br label %455

; <label>:445                                     ; preds = %431
  %446 = fcmp fast oge float %422, 0.000000e+00
  %447 = fcmp fast oge float %423, 0.000000e+00
  %448 = and i1 %446, %447
  %449 = and i1 %441, %448
  %450 = fcmp fast ole float %422, 1.000000e+00
  %451 = fcmp fast ole float %423, 1.000000e+00
  %452 = and i1 %450, %451
  %453 = and i1 %442, %452
  %454 = and i1 %449, %453
  br label %455

; <label>:455                                     ; preds = %445, %443
  %456 = phi i1 [ %444, %443 ], [ %454, %445 ]
  %457 = and i1 %440, %456
  %458 = call float @dx.op.unary.f32(i32 6, float %439)  ; FAbs(value)
  %459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %460 = extractvalue %dx.types.CBufRet.f32 %459, 1
  %461 = extractvalue %dx.types.CBufRet.f32 %459, 0
  %462 = call float @dx.op.binary.f32(i32 35, float %458, float %461)  ; FMax(a,b)
  %463 = select i1 %457, float %460, float %462
  %464 = zext i1 %457 to i32
  %465 = call float @dx.op.binary.f32(i32 36, float %406, float %463)  ; FMin(a,b)
  br label %466

; <label>:466                                     ; preds = %455, %405
  %467 = phi float [ %465, %455 ], [ %406, %405 ]
  %468 = phi i32 [ %464, %455 ], [ 0, %405 ]
  %469 = extractvalue %dx.types.CBufRet.f32 %232, 2
  %470 = fmul fast float %469, %224
  %471 = call float @dx.op.unary.f32(i32 23, float %470)  ; Log(value)
  %472 = fmul fast float %471, 0x3FE62E4300000000
  %473 = call float @dx.op.binary.f32(i32 35, float %472, float 1.000000e+00)  ; FMax(a,b)
  %474 = fmul fast float %473, 0x47EFFFFFE0000000
  %475 = call float @dx.op.binary.f32(i32 36, float %474, float %467)  ; FMin(a,b)
  %476 = call float @dx.op.binary.f32(i32 35, float %475, float %233)  ; FMax(a,b)
  %477 = fsub fast float %196, %224
  %478 = fadd fast float %477, 0x3F1A36E2E0000000
  %479 = call float @dx.op.binary.f32(i32 36, float %478, float %476)  ; FMin(a,b)
  %480 = icmp eq i32 %408, 0
  br i1 %480, label %577, label %481, !dx.controlflow.hints !44

; <label>:481                                     ; preds = %466
  %482 = fcmp fast olt float %478, %476
  %483 = fmul fast float %32, %61
  %484 = fmul fast float %483, %479
  %485 = fadd fast float %484, %223
  %486 = fmul fast float %33, %61
  %487 = fmul fast float %486, %479
  %488 = fadd fast float %487, %223
  %489 = fmul fast float %34, %61
  %490 = fmul fast float %489, %479
  %491 = fadd fast float %490, %223
  br i1 %482, label %492, label %497, !dx.controlflow.hints !45

; <label>:492                                     ; preds = %481
  %493 = fmul fast float %479, %59
  %494 = fmul fast float %479, %60
  %495 = fadd fast float %493, %221
  %496 = fadd fast float %494, %222
  br label %497

; <label>:497                                     ; preds = %492, %481
  %498 = phi float [ %495, %492 ], [ %221, %481 ]
  %499 = phi float [ %496, %492 ], [ %222, %481 ]
  %500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %501 = extractvalue %dx.types.CBufRet.f32 %500, 0
  %502 = extractvalue %dx.types.CBufRet.f32 %500, 1
  %503 = fsub fast float %498, %501
  %504 = fsub fast float %499, %502
  %505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %506 = extractvalue %dx.types.CBufRet.f32 %505, 0
  %507 = extractvalue %dx.types.CBufRet.f32 %505, 1
  %508 = fmul fast float %503, %506
  %509 = fmul fast float %504, %507
  %510 = fsub fast float 1.000000e+00, %509
  %511 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %512 = extractvalue %dx.types.CBufRet.i32 %511, 3
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %520, label %514, !dx.controlflow.hints !36

; <label>:514                                     ; preds = %497
  %515 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %10, float %508, float %510, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %516 = extractvalue %dx.types.ResRet.f32 %515, 0
  %517 = extractvalue %dx.types.ResRet.f32 %515, 1
  %518 = extractvalue %dx.types.ResRet.f32 %515, 2
  %519 = extractvalue %dx.types.ResRet.f32 %515, 3
  br label %526

; <label>:520                                     ; preds = %497
  %521 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %11, float %508, float %510, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %522 = extractvalue %dx.types.ResRet.f32 %521, 0
  %523 = extractvalue %dx.types.ResRet.f32 %521, 1
  %524 = extractvalue %dx.types.ResRet.f32 %521, 2
  %525 = extractvalue %dx.types.ResRet.f32 %521, 3
  br label %526

; <label>:526                                     ; preds = %520, %514
  %527 = phi float [ %516, %514 ], [ %522, %520 ]
  %528 = phi float [ %517, %514 ], [ %523, %520 ]
  %529 = phi float [ %518, %514 ], [ %524, %520 ]
  %530 = phi float [ %519, %514 ], [ %525, %520 ]
  %531 = extractvalue %dx.types.CBufRet.f32 %505, 3
  %532 = fmul fast float %531, %528
  %533 = fmul fast float %532, %527
  %534 = fsub fast float %532, %533
  %535 = fcmp fast ole float %534, 0.000000e+00
  %536 = extractvalue %dx.types.CBufRet.f32 %500, 2
  %537 = fadd fast float %533, %536
  %538 = fmul fast float %531, %529
  %539 = fadd fast float %538, %536
  %540 = fdiv fast float 1.000000e+00, %534
  %541 = select i1 %535, float 1.000000e+06, float %540
  %542 = fsub fast float %485, %537
  %543 = fmul fast float %541, %542
  %544 = call float @dx.op.unary.f32(i32 7, float %543)  ; Saturate(value)
  %545 = extractvalue %dx.types.CBufRet.f32 %505, 2
  %546 = fmul fast float %545, %544
  %547 = fsub fast float %545, %546
  %548 = fcmp fast olt float %485, %539
  %549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %550 = extractvalue %dx.types.CBufRet.f32 %549, 3
  %551 = select i1 %548, float %550, float 1.000000e+00
  %552 = fmul fast float %547, %551
  %553 = fsub fast float %488, %537
  %554 = fmul fast float %541, %553
  %555 = call float @dx.op.unary.f32(i32 7, float %554)  ; Saturate(value)
  %556 = fmul fast float %545, %555
  %557 = fsub fast float %545, %556
  %558 = fcmp fast olt float %488, %539
  %559 = select i1 %558, float %550, float 1.000000e+00
  %560 = fmul fast float %557, %559
  %561 = fadd fast float %560, %552
  %562 = fsub fast float %491, %537
  %563 = fmul fast float %541, %562
  %564 = call float @dx.op.unary.f32(i32 7, float %563)  ; Saturate(value)
  %565 = fmul fast float %545, %564
  %566 = fsub fast float %545, %565
  %567 = fcmp fast olt float %491, %539
  %568 = select i1 %567, float %550, float 1.000000e+00
  %569 = fmul fast float %566, %568
  %570 = fadd fast float %561, %569
  %571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %572 = extractvalue %dx.types.CBufRet.f32 %571, 2
  %573 = fmul fast float %479, 0x3FD5555560000000
  %574 = fmul fast float %573, %530
  %575 = fmul fast float %574, %572
  %576 = fmul fast float %575, %570
  br label %577

; <label>:577                                     ; preds = %526, %466
  %578 = phi float [ %576, %526 ], [ 0.000000e+00, %466 ]
  %579 = icmp eq i32 %468, 0
  br i1 %579, label %760, label %580, !dx.controlflow.hints !46

; <label>:580                                     ; preds = %577
  %581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %582 = extractvalue %dx.types.CBufRet.f32 %581, 3
  %583 = fmul fast float %582, %224
  %584 = fcmp fast oeq float %583, 0.000000e+00
  br i1 %584, label %599, label %585, !dx.controlflow.hints !47

; <label>:585                                     ; preds = %580
  %586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %587 = extractvalue %dx.types.CBufRet.f32 %586, 3
  %588 = fmul fast float %587, %583
  %589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %590 = extractvalue %dx.types.CBufRet.f32 %589, 0
  %591 = extractvalue %dx.types.CBufRet.f32 %589, 1
  %592 = extractvalue %dx.types.CBufRet.f32 %589, 2
  %593 = fmul fast float %590, %588
  %594 = fmul fast float %591, %588
  %595 = fmul fast float %592, %588
  %596 = call float @dx.op.unary.f32(i32 23, float %593)  ; Log(value)
  %597 = call float @dx.op.unary.f32(i32 23, float %594)  ; Log(value)
  %598 = call float @dx.op.unary.f32(i32 23, float %595)  ; Log(value)
  br label %599

; <label>:599                                     ; preds = %585, %580
  %600 = phi float [ %596, %585 ], [ 0.000000e+00, %580 ]
  %601 = phi float [ %597, %585 ], [ 0.000000e+00, %580 ]
  %602 = phi float [ %598, %585 ], [ 0.000000e+00, %580 ]
  %603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %604 = extractvalue %dx.types.CBufRet.f32 %603, 0
  %605 = extractvalue %dx.types.CBufRet.f32 %603, 1
  %606 = extractvalue %dx.types.CBufRet.f32 %603, 2
  %607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %608 = extractvalue %dx.types.CBufRet.f32 %607, 0
  %609 = extractvalue %dx.types.CBufRet.f32 %607, 1
  %610 = extractvalue %dx.types.CBufRet.f32 %607, 2
  %611 = fsub fast float %221, %608
  %612 = fsub fast float %222, %609
  %613 = fsub fast float %223, %610
  %614 = fmul fast float %611, %604
  %615 = fmul fast float %612, %605
  %616 = fmul fast float %613, %606
  %617 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %618 = extractvalue %dx.types.CBufRet.i32 %617, 0
  %619 = extractvalue %dx.types.CBufRet.i32 %617, 1
  %620 = uitofp i32 %618 to float
  %621 = uitofp i32 %619 to float
  %622 = fmul fast float %614, %620
  %623 = fmul fast float %615, %621
  %624 = fadd fast float %622, 5.000000e-01
  %625 = fadd fast float %623, 5.000000e-01
  %626 = call float @dx.op.unary.f32(i32 22, float %624)  ; Frc(value)
  %627 = call float @dx.op.unary.f32(i32 22, float %625)  ; Frc(value)
  %628 = call float @dx.op.unary.f32(i32 27, float %624)  ; Round_ni(value)
  %629 = call float @dx.op.unary.f32(i32 27, float %625)  ; Round_ni(value)
  %630 = fadd fast float %628, 1.000000e+00
  %631 = fadd fast float %629, 1.000000e+00
  %632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %633 = extractvalue %dx.types.CBufRet.f32 %632, 0
  %634 = extractvalue %dx.types.CBufRet.f32 %632, 1
  %635 = fmul fast float %633, %630
  %636 = fmul fast float %634, %631
  %637 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %10, float %635, float %636, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %638 = extractvalue %dx.types.ResRet.f32 %637, 0
  %639 = extractvalue %dx.types.ResRet.f32 %637, 1
  %640 = extractvalue %dx.types.ResRet.f32 %637, 2
  %641 = extractvalue %dx.types.ResRet.f32 %637, 3
  %642 = extractvalue %dx.types.CBufRet.i32 %617, 2
  %643 = extractvalue %dx.types.CBufRet.f32 %632, 2
  %644 = uitofp i32 %642 to float
  %645 = fadd fast float %644, -1.000000e+00
  %646 = fmul fast float %645, %638
  %647 = fmul fast float %645, %639
  %648 = fmul fast float %645, %640
  %649 = fmul fast float %645, %641
  %650 = fadd fast float %646, 5.000000e-01
  %651 = fadd fast float %647, 5.000000e-01
  %652 = fadd fast float %648, 5.000000e-01
  %653 = fadd fast float %649, 5.000000e-01
  %654 = fptoui float %650 to i32
  %655 = fptoui float %651 to i32
  %656 = fptoui float %652 to i32
  %657 = fptoui float %653 to i32
  %658 = uitofp i32 %654 to float
  %659 = uitofp i32 %655 to float
  %660 = uitofp i32 %656 to float
  %661 = uitofp i32 %657 to float
  %662 = fadd fast float %658, 5.000000e-01
  %663 = fadd fast float %659, 5.000000e-01
  %664 = fadd fast float %660, 5.000000e-01
  %665 = fadd fast float %661, 5.000000e-01
  %666 = fmul fast float %662, %643
  %667 = fmul fast float %663, %643
  %668 = fmul fast float %664, %643
  %669 = fmul fast float %665, %643
  %670 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %11, float %666, float %616, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %671 = extractvalue %dx.types.ResRet.f32 %670, 0
  %672 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %11, float %667, float %616, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %673 = extractvalue %dx.types.ResRet.f32 %672, 0
  %674 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %11, float %668, float %616, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %675 = extractvalue %dx.types.ResRet.f32 %674, 0
  %676 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %11, float %669, float %616, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %677 = extractvalue %dx.types.ResRet.f32 %676, 0
  %678 = fsub fast float %675, %677
  %679 = fmul fast float %678, %626
  %680 = fadd fast float %679, %677
  %681 = fsub fast float %673, %671
  %682 = fmul fast float %681, %626
  %683 = fadd fast float %682, %671
  %684 = fsub fast float %683, %680
  %685 = fmul fast float %684, %627
  %686 = fadd fast float %685, %680
  %687 = fcmp fast ogt float %686, 0.000000e+00
  br i1 %687, label %688, label %756, !dx.controlflow.hints !48

; <label>:688                                     ; preds = %599
  %689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %690 = extractvalue %dx.types.CBufRet.f32 %689, 0
  %691 = extractvalue %dx.types.CBufRet.f32 %689, 1
  %692 = extractvalue %dx.types.CBufRet.f32 %689, 2
  %693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %694 = extractvalue %dx.types.CBufRet.f32 %693, 0
  %695 = extractvalue %dx.types.CBufRet.f32 %693, 1
  %696 = extractvalue %dx.types.CBufRet.f32 %693, 2
  %697 = fmul fast float %612, %604
  %698 = fmul fast float %613, %604
  %699 = fadd fast float %614, %694
  %700 = fadd fast float %697, %695
  %701 = fadd fast float %698, %696
  %702 = fmul fast float %699, %690
  %703 = fmul fast float %700, %690
  %704 = fmul fast float %701, %690
  %705 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %8, float %702, float %703, float %704, float undef, i32 0, i32 0, i32 0, float %600)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %706 = extractvalue %dx.types.ResRet.f32 %705, 0
  %707 = fmul fast float %699, %691
  %708 = fmul fast float %700, %691
  %709 = fmul fast float %701, %691
  %710 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %8, float %707, float %708, float %709, float undef, i32 0, i32 0, i32 0, float %601)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %711 = extractvalue %dx.types.ResRet.f32 %710, 1
  %712 = fmul fast float %699, %692
  %713 = fmul fast float %700, %692
  %714 = fmul fast float %701, %692
  %715 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %8, float %712, float %713, float %714, float undef, i32 0, i32 0, i32 0, float %602)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %716 = extractvalue %dx.types.ResRet.f32 %715, 2
  %717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %718 = extractvalue %dx.types.CBufRet.f32 %717, 1
  %719 = fmul fast float %711, %706
  %720 = fmul fast float %719, %716
  %721 = call float @dx.op.unary.f32(i32 23, float %720)  ; Log(value)
  %722 = fmul fast float %721, %718
  %723 = call float @dx.op.unary.f32(i32 21, float %722)  ; Exp(value)
  %724 = extractvalue %dx.types.CBufRet.f32 %717, 2
  %725 = fmul fast float %686, %686
  %726 = fmul fast float %725, %723
  %727 = fmul fast float %726, %724
  %728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %729 = extractvalue %dx.types.CBufRet.f32 %728, 3
  %730 = fmul fast float %729, %727
  %731 = bitcast float %730 to i32
  %732 = sitofp i32 %731 to float
  %733 = fptosi float %732 to i32
  %734 = bitcast i32 %733 to float
  %735 = fsub fast float 1.000000e+00, %727
  %736 = bitcast float %735 to i32
  %737 = sitofp i32 %736 to float
  %738 = fptosi float %737 to i32
  %739 = bitcast i32 %738 to float
  %740 = fadd fast float %734, %739
  %741 = bitcast float %740 to i32
  %742 = sub nsw i32 2129859010, %741
  %743 = bitcast i32 %742 to float
  %744 = fmul fast float %743, %734
  %745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %746 = extractvalue %dx.types.CBufRet.f32 %745, 3
  %747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %748 = extractvalue %dx.types.CBufRet.f32 %747, 0
  %749 = fmul fast float %744, %748
  %750 = fadd fast float %749, 1.000000e+00
  %751 = bitcast float %750 to i32
  %752 = sub nsw i32 2129859010, %751
  %753 = bitcast i32 %752 to float
  %754 = fmul fast float %744, %746
  %755 = fmul fast float %754, %753
  br label %756

; <label>:756                                     ; preds = %688, %599
  %757 = phi float [ %755, %688 ], [ %686, %599 ]
  %758 = fmul fast float %757, %479
  %759 = fadd fast float %758, %578
  br label %760

; <label>:760                                     ; preds = %756, %577
  %761 = phi float [ %759, %756 ], [ %578, %577 ]
  %762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %763 = extractvalue %dx.types.CBufRet.f32 %762, 1
  %764 = fcmp fast ogt float %761, %763
  br i1 %764, label %765, label %777, !dx.controlflow.hints !49

; <label>:765                                     ; preds = %760
  %766 = fmul fast float %761, 0xBFF7154760000000
  %767 = call float @dx.op.unary.f32(i32 21, float %766)  ; Exp(value)
  %768 = call float @dx.op.unary.f32(i32 7, float %767)  ; Saturate(value)
  %769 = icmp eq i32 %226, 0
  br i1 %769, label %770, label %771, !dx.controlflow.hints !50

; <label>:770                                     ; preds = %765
  br label %771

; <label>:771                                     ; preds = %770, %765
  %772 = phi i32 [ %226, %765 ], [ 1, %770 ]
  %773 = phi float [ %227, %765 ], [ %224, %770 ]
  %774 = fadd fast float %479, %228
  %775 = fadd fast float %761, %229
  %776 = fmul fast float %768, %220
  br label %777

; <label>:777                                     ; preds = %771, %760
  %778 = phi float [ %776, %771 ], [ %220, %760 ]
  %779 = phi i32 [ %772, %771 ], [ %226, %760 ]
  %780 = phi float [ %773, %771 ], [ %227, %760 ]
  %781 = phi float [ %774, %771 ], [ %228, %760 ]
  %782 = phi float [ %775, %771 ], [ %229, %760 ]
  %783 = fadd fast float %479, %224
  %784 = fmul fast float %479, %59
  %785 = fmul fast float %479, %60
  %786 = fmul fast float %479, %61
  %787 = fadd fast float %784, %221
  %788 = fadd fast float %785, %222
  %789 = fadd fast float %786, %223
  %790 = fcmp fast olt float %783, %196
  %791 = extractvalue %dx.types.CBufRet.f32 %762, 2
  %792 = fcmp fast olt float %791, %778
  %793 = and i1 %790, %792
  br i1 %793, label %219, label %794

; <label>:794                                     ; preds = %777
  br label %795

; <label>:795                                     ; preds = %794, %192
  %796 = phi float [ 0.000000e+00, %192 ], [ %780, %794 ]
  %797 = phi float [ 0.000000e+00, %192 ], [ %781, %794 ]
  %798 = phi float [ 0.000000e+00, %192 ], [ %782, %794 ]
  %799 = extractvalue %dx.types.CBufRet.f32 %53, 3
  %800 = fmul fast float %799, %796
  %801 = fdiv fast float 1.000000e+00, %797
  %802 = fmul fast float %801, %798
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %14, i32 %15, i32 undef, float %800, float %802, float %798, float %800, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!23 = !{void ()* @cs_fog_raymarching_clouds_heightmap, !"cs_fog_raymarching_clouds_heightmap", null, !4, !24}
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
!36 = distinct !{!36, !"dx.controlflow.hints", i32 1}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 1}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 1}

