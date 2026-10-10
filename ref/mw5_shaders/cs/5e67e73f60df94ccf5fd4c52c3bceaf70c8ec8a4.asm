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
; shader hash: a5e75de3757f35ee78f9404157880091
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
;                                   texture     f32          2d      T1            t27     1
;                                   texture     f32          3d      T2             t1     1
;                                   texture     f32          3d      T3             t2     1
;                                   texture     f32          2d      T4             t8     1
;                                   texture     f32          2d      T5             t9     1
;                                   texture     f32          2d      T6            t13     1
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

define void @cs_fog_raymarching_air_clouds_heightmap_brfog() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %16 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %17 = uitofp i32 %15 to float
  %18 = uitofp i32 %16 to float
  %19 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %20 = extractvalue %dx.types.CBufRet.f32 %19, 2
  %21 = fmul fast float %20, 0x3FE3C6EF40000000
  %22 = frem fast float %17, 2.560000e+02
  %23 = frem fast float %18, 2.560000e+02
  %24 = fptoui float %22 to i32
  %25 = fptoui float %23 to i32
  %26 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %24, i32 %25, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %27 = extractvalue %dx.types.ResRet.f32 %26, 0
  %28 = extractvalue %dx.types.ResRet.f32 %26, 1
  %29 = extractvalue %dx.types.ResRet.f32 %26, 2
  %30 = fadd fast float %27, %21
  %31 = fadd fast float %28, %21
  %32 = fadd fast float %29, %21
  %33 = call float @dx.op.unary.f32(i32 22, float %30)  ; Frc(value)
  %34 = call float @dx.op.unary.f32(i32 22, float %31)  ; Frc(value)
  %35 = call float @dx.op.unary.f32(i32 22, float %32)  ; Frc(value)
  %36 = fadd fast float %17, 5.000000e-01
  %37 = fadd fast float %18, 5.000000e-01
  %38 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %39 = extractvalue %dx.types.CBufRet.f32 %38, 2
  %40 = extractvalue %dx.types.CBufRet.f32 %38, 3
  %41 = fmul fast float %39, %36
  %42 = fmul fast float %40, %37
  %43 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %44 = extractvalue %dx.types.CBufRet.f32 %43, 0
  %45 = extractvalue %dx.types.CBufRet.f32 %43, 1
  %46 = extractvalue %dx.types.CBufRet.f32 %43, 2
  %47 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %48 = extractvalue %dx.types.CBufRet.f32 %47, 0
  %49 = extractvalue %dx.types.CBufRet.f32 %47, 1
  %50 = fmul fast float %41, %48
  %51 = fmul fast float %42, %49
  %52 = fadd fast float %50, %44
  %53 = fadd fast float %51, %45
  %54 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %55 = extractvalue %dx.types.CBufRet.f32 %54, 2
  %56 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %57 = extractvalue %dx.types.CBufRet.f32 %56, 0
  %58 = extractvalue %dx.types.CBufRet.f32 %56, 1
  %59 = extractvalue %dx.types.CBufRet.f32 %56, 2
  %60 = fsub fast float -0.000000e+00, %57
  %61 = fsub fast float -0.000000e+00, %58
  %62 = fsub fast float -0.000000e+00, %59
  %63 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %64 = extractvalue %dx.types.CBufRet.i32 %63, 3
  %65 = icmp eq i32 %64, 0
  %66 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %67 = extractvalue %dx.types.CBufRet.f32 %66, 2
  %68 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %69 = extractvalue %dx.types.CBufRet.f32 %68, 2
  %70 = fsub fast float %67, %46
  %71 = fadd fast float %70, %69
  %72 = fsub fast float 0xC7EFFFFFE0000000, %46
  br i1 %65, label %84, label %73, !dx.controlflow.hints !27

; <label>:73                                      ; preds = %0
  %74 = fsub fast float -0.000000e+00, %53
  %75 = fsub fast float -0.000000e+00, %52
  %76 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %75, float %74, float %71)  ; Dot3(ax,ay,az,bx,by,bz)
  %77 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %60, float %61, float %62)  ; Dot3(ax,ay,az,bx,by,bz)
  %78 = fdiv fast float 1.000000e+00, %77
  %79 = fmul fast float %78, %76
  %80 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %75, float %74, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %81 = fmul fast float %78, %80
  %82 = call float @dx.op.binary.f32(i32 36, float %79, float %81)  ; FMin(a,b)
  %83 = call float @dx.op.binary.f32(i32 35, float %79, float %81)  ; FMax(a,b)
  br label %117

; <label>:84                                      ; preds = %0
  %85 = extractvalue %dx.types.CBufRet.f32 %66, 0
  %86 = extractvalue %dx.types.CBufRet.f32 %66, 1
  %87 = extractvalue %dx.types.CBufRet.f32 %68, 0
  %88 = extractvalue %dx.types.CBufRet.f32 %68, 1
  %89 = fdiv fast float 1.000000e+00, %60
  %90 = fdiv fast float 1.000000e+00, %61
  %91 = fdiv fast float 1.000000e+00, %62
  %92 = fsub fast float %85, %52
  %93 = fmul fast float %89, %92
  %94 = fadd fast float %92, %87
  %95 = fmul fast float %94, %89
  %96 = call float @dx.op.binary.f32(i32 36, float %93, float %95)  ; FMin(a,b)
  %97 = call float @dx.op.binary.f32(i32 35, float %93, float %95)  ; FMax(a,b)
  %98 = fsub fast float %86, %53
  %99 = fmul fast float %90, %98
  %100 = fadd fast float %98, %88
  %101 = fmul fast float %100, %90
  %102 = call float @dx.op.binary.f32(i32 36, float %99, float %101)  ; FMin(a,b)
  %103 = call float @dx.op.binary.f32(i32 35, float %96, float %102)  ; FMax(a,b)
  %104 = call float @dx.op.binary.f32(i32 35, float %99, float %101)  ; FMax(a,b)
  %105 = call float @dx.op.binary.f32(i32 36, float %97, float %104)  ; FMin(a,b)
  %106 = fmul fast float %91, %72
  %107 = fmul fast float %91, %71
  %108 = call float @dx.op.binary.f32(i32 36, float %106, float %107)  ; FMin(a,b)
  %109 = call float @dx.op.binary.f32(i32 35, float %103, float %108)  ; FMax(a,b)
  %110 = call float @dx.op.binary.f32(i32 35, float %106, float %107)  ; FMax(a,b)
  %111 = call float @dx.op.binary.f32(i32 36, float %105, float %110)  ; FMin(a,b)
  %112 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %109)  ; FMax(a,b)
  %113 = fcmp fast ult float %111, %112
  br i1 %113, label %117, label %114, !dx.controlflow.hints !28

; <label>:114                                     ; preds = %84
  %115 = call float @dx.op.binary.f32(i32 36, float %109, float %111)  ; FMin(a,b)
  %116 = call float @dx.op.binary.f32(i32 35, float %109, float %111)  ; FMax(a,b)
  br label %117

; <label>:117                                     ; preds = %114, %84, %73
  %118 = phi float [ %82, %73 ], [ %115, %114 ], [ 0.000000e+00, %84 ]
  %119 = phi float [ %83, %73 ], [ %116, %114 ], [ 0.000000e+00, %84 ]
  %120 = fcmp fast oeq float %119, 0.000000e+00
  %121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %122 = extractvalue %dx.types.CBufRet.f32 %121, 1
  %123 = fcmp fast olt float %119, %122
  %124 = or i1 %120, %123
  br i1 %124, label %129, label %125, !dx.controlflow.hints !29

; <label>:125                                     ; preds = %117
  %126 = call float @dx.op.binary.f32(i32 35, float %122, float %118)  ; FMax(a,b)
  %127 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %126)  ; FMin(a,b)
  %128 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %119)  ; FMax(a,b)
  br label %129

; <label>:129                                     ; preds = %125, %117
  %130 = phi float [ %128, %125 ], [ -1.000000e+00, %117 ]
  %131 = phi i32 [ 1, %125 ], [ 0, %117 ]
  %132 = phi float [ %127, %125 ], [ 0x47EFFFFFE0000000, %117 ]
  %133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %134 = extractvalue %dx.types.CBufRet.f32 %133, 3
  %135 = fsub fast float -0.000000e+00, %52
  %136 = fsub fast float -0.000000e+00, %53
  %137 = fsub fast float %134, %46
  %138 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %135, float %136, float %137)  ; Dot3(ax,ay,az,bx,by,bz)
  %139 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %60, float %61, float %62)  ; Dot3(ax,ay,az,bx,by,bz)
  %140 = fdiv fast float 1.000000e+00, %139
  %141 = fmul fast float %140, %138
  %142 = fcmp fast olt float %141, 0.000000e+00
  %143 = fcmp olt float %59, -0.000000e+00
  %144 = and i1 %143, %142
  br i1 %144, label %149, label %145, !dx.controlflow.hints !30

; <label>:145                                     ; preds = %129
  %146 = fcmp ogt float %59, -0.000000e+00
  br i1 %146, label %147, label %149, !dx.controlflow.hints !31

; <label>:147                                     ; preds = %145
  %148 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %141)  ; FMax(a,b)
  br label %149

; <label>:149                                     ; preds = %147, %145, %129
  %150 = phi float [ 0.000000e+00, %129 ], [ %148, %147 ], [ 0.000000e+00, %145 ]
  %151 = phi float [ 0.000000e+00, %129 ], [ 0x47EFFFFFE0000000, %147 ], [ %141, %145 ]
  %152 = fcmp fast oeq float %151, 0.000000e+00
  br i1 %152, label %156, label %153, !dx.controlflow.hints !32

; <label>:153                                     ; preds = %149
  %154 = call float @dx.op.binary.f32(i32 36, float %132, float %150)  ; FMin(a,b)
  %155 = call float @dx.op.binary.f32(i32 35, float %130, float %151)  ; FMax(a,b)
  br label %156

; <label>:156                                     ; preds = %153, %149
  %157 = phi float [ %155, %153 ], [ %130, %149 ]
  %158 = phi i32 [ 1, %153 ], [ 0, %149 ]
  %159 = phi float [ %154, %153 ], [ %132, %149 ]
  %160 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %161 = extractvalue %dx.types.CBufRet.i32 %160, 3
  %162 = icmp eq i32 %161, 0
  %163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %164 = extractvalue %dx.types.CBufRet.f32 %163, 2
  %165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %166 = extractvalue %dx.types.CBufRet.f32 %165, 2
  %167 = fsub fast float %164, %46
  %168 = fadd fast float %167, %166
  br i1 %162, label %176, label %169, !dx.controlflow.hints !33

; <label>:169                                     ; preds = %156
  %170 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %135, float %136, float %168)  ; Dot3(ax,ay,az,bx,by,bz)
  %171 = fmul fast float %140, %170
  %172 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %135, float %136, float %167)  ; Dot3(ax,ay,az,bx,by,bz)
  %173 = fmul fast float %140, %172
  %174 = call float @dx.op.binary.f32(i32 36, float %171, float %173)  ; FMin(a,b)
  %175 = call float @dx.op.binary.f32(i32 35, float %171, float %173)  ; FMax(a,b)
  br label %209

; <label>:176                                     ; preds = %156
  %177 = fdiv fast float 1.000000e+00, %60
  %178 = fdiv fast float 1.000000e+00, %61
  %179 = fdiv fast float 1.000000e+00, %62
  %180 = extractvalue %dx.types.CBufRet.f32 %163, 0
  %181 = extractvalue %dx.types.CBufRet.f32 %163, 1
  %182 = extractvalue %dx.types.CBufRet.f32 %165, 0
  %183 = extractvalue %dx.types.CBufRet.f32 %165, 1
  %184 = fsub fast float %180, %52
  %185 = fmul fast float %184, %177
  %186 = fadd fast float %184, %182
  %187 = fmul fast float %186, %177
  %188 = call float @dx.op.binary.f32(i32 36, float %185, float %187)  ; FMin(a,b)
  %189 = call float @dx.op.binary.f32(i32 35, float %185, float %187)  ; FMax(a,b)
  %190 = fsub fast float %181, %53
  %191 = fmul fast float %190, %178
  %192 = fadd fast float %190, %183
  %193 = fmul fast float %192, %178
  %194 = call float @dx.op.binary.f32(i32 36, float %191, float %193)  ; FMin(a,b)
  %195 = call float @dx.op.binary.f32(i32 35, float %188, float %194)  ; FMax(a,b)
  %196 = call float @dx.op.binary.f32(i32 35, float %191, float %193)  ; FMax(a,b)
  %197 = call float @dx.op.binary.f32(i32 36, float %189, float %196)  ; FMin(a,b)
  %198 = fmul fast float %167, %179
  %199 = fmul fast float %168, %179
  %200 = call float @dx.op.binary.f32(i32 36, float %198, float %199)  ; FMin(a,b)
  %201 = call float @dx.op.binary.f32(i32 35, float %195, float %200)  ; FMax(a,b)
  %202 = call float @dx.op.binary.f32(i32 35, float %198, float %199)  ; FMax(a,b)
  %203 = call float @dx.op.binary.f32(i32 36, float %197, float %202)  ; FMin(a,b)
  %204 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %201)  ; FMax(a,b)
  %205 = fcmp fast ult float %203, %204
  br i1 %205, label %209, label %206, !dx.controlflow.hints !34

; <label>:206                                     ; preds = %176
  %207 = call float @dx.op.binary.f32(i32 36, float %201, float %203)  ; FMin(a,b)
  %208 = call float @dx.op.binary.f32(i32 35, float %201, float %203)  ; FMax(a,b)
  br label %209

; <label>:209                                     ; preds = %206, %176, %169
  %210 = phi float [ %174, %169 ], [ %207, %206 ], [ 0.000000e+00, %176 ]
  %211 = phi float [ %175, %169 ], [ %208, %206 ], [ 0.000000e+00, %176 ]
  %212 = fcmp fast oeq float %211, 0.000000e+00
  br i1 %212, label %216, label %213, !dx.controlflow.hints !35

; <label>:213                                     ; preds = %209
  %214 = call float @dx.op.binary.f32(i32 36, float %159, float %210)  ; FMin(a,b)
  %215 = call float @dx.op.binary.f32(i32 35, float %157, float %211)  ; FMax(a,b)
  br label %216

; <label>:216                                     ; preds = %213, %209
  %217 = phi float [ %215, %213 ], [ %157, %209 ]
  %218 = phi i32 [ 1, %213 ], [ 0, %209 ]
  %219 = phi float [ %214, %213 ], [ %159, %209 ]
  %220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %221 = extractvalue %dx.types.CBufRet.f32 %220, 2
  %222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %223 = extractvalue %dx.types.CBufRet.f32 %222, 3
  %224 = fsub fast float %221, %46
  %225 = fadd fast float %224, %223
  %226 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %135, float %136, float %225)  ; Dot3(ax,ay,az,bx,by,bz)
  %227 = fmul fast float %140, %226
  %228 = fcmp fast olt float %227, 0.000000e+00
  %229 = and i1 %143, %228
  br i1 %229, label %234, label %230, !dx.controlflow.hints !36

; <label>:230                                     ; preds = %216
  %231 = fcmp ogt float %59, -0.000000e+00
  br i1 %231, label %232, label %234, !dx.controlflow.hints !37

; <label>:232                                     ; preds = %230
  %233 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %227)  ; FMax(a,b)
  br label %234

; <label>:234                                     ; preds = %232, %230, %216
  %235 = phi float [ 0.000000e+00, %216 ], [ %233, %232 ], [ 0.000000e+00, %230 ]
  %236 = phi float [ 0.000000e+00, %216 ], [ 0x47EFFFFFE0000000, %232 ], [ %227, %230 ]
  %237 = fcmp fast oeq float %236, 0.000000e+00
  br i1 %237, label %241, label %238, !dx.controlflow.hints !38

; <label>:238                                     ; preds = %234
  %239 = call float @dx.op.binary.f32(i32 36, float %219, float %235)  ; FMin(a,b)
  %240 = call float @dx.op.binary.f32(i32 35, float %217, float %236)  ; FMax(a,b)
  br label %241

; <label>:241                                     ; preds = %238, %234
  %242 = phi i32 [ 1, %238 ], [ 0, %234 ]
  %243 = phi float [ %240, %238 ], [ %217, %234 ]
  %244 = phi float [ %239, %238 ], [ %219, %234 ]
  %245 = call float @dx.op.binary.f32(i32 36, float %55, float %243)  ; FMin(a,b)
  %246 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %244)  ; FMax(a,b)
  %247 = extractvalue %dx.types.CBufRet.f32 %133, 1
  %248 = fmul fast float %34, 2.000000e+00
  %249 = fadd fast float %248, -1.000000e+00
  %250 = fmul fast float %247, %249
  %251 = fadd fast float %250, %246
  %252 = fcmp fast olt float %251, %245
  %253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %254 = extractvalue %dx.types.CBufRet.f32 %253, 2
  %255 = fcmp fast olt float %254, 1.000000e+00
  %256 = and i1 %252, %255
  br i1 %256, label %257, label %1118

; <label>:257                                     ; preds = %241
  %258 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %259 = extractvalue %dx.types.CBufRet.i32 %258, 1
  %260 = add i32 %259, -1
  %261 = fmul fast float %251, %62
  %262 = fadd fast float %261, %46
  %263 = fmul fast float %251, %61
  %264 = fadd fast float %263, %53
  %265 = fmul fast float %251, %60
  %266 = fadd fast float %265, %52
  br label %267

; <label>:267                                     ; preds = %1100, %257
  %268 = phi i32 [ %706, %1100 ], [ undef, %257 ]
  %269 = phi float [ %707, %1100 ], [ undef, %257 ]
  %270 = phi float [ %1101, %1100 ], [ 1.000000e+00, %257 ]
  %271 = phi float [ %1110, %1100 ], [ %266, %257 ]
  %272 = phi float [ %1111, %1100 ], [ %264, %257 ]
  %273 = phi float [ %1112, %1100 ], [ %262, %257 ]
  %274 = phi float [ %1106, %1100 ], [ %251, %257 ]
  %275 = phi i32 [ %455, %1100 ], [ %260, %257 ]
  %276 = phi i32 [ %1102, %1100 ], [ 0, %257 ]
  %277 = phi float [ %1103, %1100 ], [ 0.000000e+00, %257 ]
  %278 = phi float [ %1104, %1100 ], [ 0.000000e+00, %257 ]
  %279 = phi float [ %1105, %1100 ], [ 0.000000e+00, %257 ]
  %280 = fsub fast float -0.000000e+00, %272
  %281 = fsub fast float -0.000000e+00, %271
  %282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %283 = extractvalue %dx.types.CBufRet.f32 %282, 1
  %284 = icmp eq i32 %131, 0
  br i1 %284, label %453, label %285, !dx.controlflow.hints !39

; <label>:285                                     ; preds = %267
  %286 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %287 = extractvalue %dx.types.CBufRet.i32 %286, 1
  %288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %289 = extractvalue %dx.types.CBufRet.f32 %288, 1
  %290 = fcmp fast ogt float %289, %274
  br i1 %290, label %291, label %293, !dx.controlflow.hints !40

; <label>:291                                     ; preds = %285
  %292 = fsub fast float %289, %274
  br label %443

; <label>:293                                     ; preds = %285
  %294 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %295 = extractvalue %dx.types.CBufRet.i32 %294, 3
  %296 = icmp eq i32 %295, 0
  %297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %298 = extractvalue %dx.types.CBufRet.f32 %297, 2
  %299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %300 = extractvalue %dx.types.CBufRet.f32 %299, 2
  %301 = fsub fast float %298, %273
  %302 = fadd fast float %301, %300
  %303 = fsub fast float 0xC7EFFFFFE0000000, %273
  br i1 %296, label %311, label %304, !dx.controlflow.hints !27

; <label>:304                                     ; preds = %293
  %305 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %281, float %280, float %302)  ; Dot3(ax,ay,az,bx,by,bz)
  %306 = fmul fast float %140, %305
  %307 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %281, float %280, float %303)  ; Dot3(ax,ay,az,bx,by,bz)
  %308 = fmul fast float %140, %307
  %309 = call float @dx.op.binary.f32(i32 36, float %306, float %308)  ; FMin(a,b)
  %310 = call float @dx.op.binary.f32(i32 35, float %306, float %308)  ; FMax(a,b)
  br label %344

; <label>:311                                     ; preds = %293
  %312 = extractvalue %dx.types.CBufRet.f32 %297, 0
  %313 = extractvalue %dx.types.CBufRet.f32 %297, 1
  %314 = extractvalue %dx.types.CBufRet.f32 %299, 0
  %315 = extractvalue %dx.types.CBufRet.f32 %299, 1
  %316 = fdiv fast float 1.000000e+00, %60
  %317 = fdiv fast float 1.000000e+00, %61
  %318 = fdiv fast float 1.000000e+00, %62
  %319 = fsub fast float %312, %271
  %320 = fmul fast float %316, %319
  %321 = fadd fast float %319, %314
  %322 = fmul fast float %321, %316
  %323 = call float @dx.op.binary.f32(i32 36, float %320, float %322)  ; FMin(a,b)
  %324 = call float @dx.op.binary.f32(i32 35, float %320, float %322)  ; FMax(a,b)
  %325 = fsub fast float %313, %272
  %326 = fmul fast float %317, %325
  %327 = fadd fast float %325, %315
  %328 = fmul fast float %327, %317
  %329 = call float @dx.op.binary.f32(i32 36, float %326, float %328)  ; FMin(a,b)
  %330 = call float @dx.op.binary.f32(i32 35, float %323, float %329)  ; FMax(a,b)
  %331 = call float @dx.op.binary.f32(i32 35, float %326, float %328)  ; FMax(a,b)
  %332 = call float @dx.op.binary.f32(i32 36, float %324, float %331)  ; FMin(a,b)
  %333 = fmul fast float %318, %303
  %334 = fmul fast float %318, %302
  %335 = call float @dx.op.binary.f32(i32 36, float %333, float %334)  ; FMin(a,b)
  %336 = call float @dx.op.binary.f32(i32 35, float %330, float %335)  ; FMax(a,b)
  %337 = call float @dx.op.binary.f32(i32 35, float %333, float %334)  ; FMax(a,b)
  %338 = call float @dx.op.binary.f32(i32 36, float %332, float %337)  ; FMin(a,b)
  %339 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %336)  ; FMax(a,b)
  %340 = fcmp fast ult float %338, %339
  br i1 %340, label %344, label %341, !dx.controlflow.hints !28

; <label>:341                                     ; preds = %311
  %342 = call float @dx.op.binary.f32(i32 36, float %336, float %338)  ; FMin(a,b)
  %343 = call float @dx.op.binary.f32(i32 35, float %336, float %338)  ; FMax(a,b)
  br label %344

; <label>:344                                     ; preds = %341, %311, %304
  %345 = phi float [ %309, %304 ], [ %342, %341 ], [ 0.000000e+00, %311 ]
  %346 = phi float [ %310, %304 ], [ %343, %341 ], [ 0.000000e+00, %311 ]
  %347 = fcmp fast ogt float %345, 0.000000e+00
  br i1 %347, label %443, label %348, !dx.controlflow.hints !41

; <label>:348                                     ; preds = %344
  %349 = fcmp fast ugt float %346, 0.000000e+00
  br i1 %349, label %350, label %443, !dx.controlflow.hints !42

; <label>:350                                     ; preds = %348
  %351 = icmp sgt i32 %275, 0
  br i1 %351, label %352, label %437

; <label>:352                                     ; preds = %350
  br label %353

; <label>:353                                     ; preds = %433, %352
  %354 = phi i32 [ %434, %433 ], [ %275, %352 ]
  %355 = sitofp i32 %354 to float
  %356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %357 = extractvalue %dx.types.CBufRet.f32 %356, 0
  %358 = extractvalue %dx.types.CBufRet.f32 %356, 1
  %359 = fsub fast float %271, %357
  %360 = fsub fast float %272, %358
  %361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %362 = extractvalue %dx.types.CBufRet.f32 %361, 0
  %363 = extractvalue %dx.types.CBufRet.f32 %361, 1
  %364 = fmul fast float %359, %362
  %365 = fmul fast float %360, %363
  %366 = fsub fast float 1.000000e+00, %365
  %367 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %368 = extractvalue %dx.types.CBufRet.i32 %367, 3
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %376, label %370, !dx.controlflow.hints !43

; <label>:370                                     ; preds = %353
  %371 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %11, float %364, float %366, float undef, float undef, i32 0, i32 0, i32 undef, float %355)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %372 = extractvalue %dx.types.ResRet.f32 %371, 0
  %373 = extractvalue %dx.types.ResRet.f32 %371, 1
  %374 = extractvalue %dx.types.ResRet.f32 %371, 2
  %375 = extractvalue %dx.types.ResRet.f32 %371, 3
  br label %382

; <label>:376                                     ; preds = %353
  %377 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %12, float %364, float %366, float undef, float undef, i32 0, i32 0, i32 undef, float %355)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %378 = extractvalue %dx.types.ResRet.f32 %377, 0
  %379 = extractvalue %dx.types.ResRet.f32 %377, 1
  %380 = extractvalue %dx.types.ResRet.f32 %377, 2
  %381 = extractvalue %dx.types.ResRet.f32 %377, 3
  br label %382

; <label>:382                                     ; preds = %376, %370
  %383 = phi float [ %372, %370 ], [ %378, %376 ]
  %384 = phi float [ %373, %370 ], [ %379, %376 ]
  %385 = phi float [ %374, %370 ], [ %380, %376 ]
  %386 = phi float [ %375, %370 ], [ %381, %376 ]
  %387 = extractvalue %dx.types.CBufRet.f32 %361, 3
  %388 = fmul fast float %387, %383
  %389 = extractvalue %dx.types.CBufRet.f32 %356, 2
  %390 = fadd fast float %388, %389
  %391 = fmul fast float %387, %384
  %392 = fadd fast float %391, %389
  %393 = fmul fast float %387, %385
  %394 = fadd fast float %393, %389
  %395 = and i32 %354, 31
  %396 = shl i32 1, %395
  %397 = uitofp i32 %396 to float
  %398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %399 = extractvalue %dx.types.CBufRet.f32 %398, 3
  %400 = fdiv fast float 1.000000e+00, %399
  %401 = fmul fast float %400, %397
  %402 = fmul fast float %401, %62
  %403 = fadd fast float %402, %273
  %404 = fcmp fast oeq float %386, 0.000000e+00
  %405 = fcmp fast ogt float %273, %392
  %406 = fcmp fast ogt float %403, %392
  %407 = and i1 %405, %406
  %408 = or i1 %404, %407
  br i1 %408, label %409, label %413, !dx.controlflow.hints !44

; <label>:409                                     ; preds = %382
  %410 = add nsw i32 %354, 1
  %411 = add nsw i32 %287, -1
  %412 = call i32 @dx.op.binary.i32(i32 38, i32 %410, i32 %411)  ; IMin(a,b)
  br label %443

; <label>:413                                     ; preds = %382
  %414 = fcmp fast olt float %273, %394
  %415 = fcmp fast olt float %403, %394
  %416 = and i1 %414, %415
  br i1 %416, label %417, label %421, !dx.controlflow.hints !45

; <label>:417                                     ; preds = %413
  %418 = add nsw i32 %354, 1
  %419 = add nsw i32 %287, -1
  %420 = call i32 @dx.op.binary.i32(i32 38, i32 %418, i32 %419)  ; IMin(a,b)
  br label %443

; <label>:421                                     ; preds = %413
  %422 = fcmp fast olt float %273, %390
  %423 = fcmp fast olt float %403, %390
  %424 = and i1 %422, %423
  br i1 %424, label %425, label %433, !dx.controlflow.hints !46

; <label>:425                                     ; preds = %421
  %426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %427 = extractvalue %dx.types.CBufRet.f32 %426, 3
  %428 = extractvalue %dx.types.CBufRet.f32 %361, 2
  %429 = fcmp fast une float %427, %428
  br i1 %429, label %430, label %437, !dx.controlflow.hints !47

; <label>:430                                     ; preds = %425
  %431 = fsub fast float %273, %394
  %432 = call float @dx.op.binary.f32(i32 36, float %401, float %431)  ; FMin(a,b)
  br label %437

; <label>:433                                     ; preds = %421
  %434 = add nsw i32 %354, -1
  %435 = icmp sgt i32 %354, 1
  br i1 %435, label %353, label %436

; <label>:436                                     ; preds = %433
  br label %437

; <label>:437                                     ; preds = %436, %430, %425, %350
  %438 = phi float [ %432, %430 ], [ %401, %425 ], [ 0.000000e+00, %350 ], [ 0.000000e+00, %436 ]
  %439 = phi i32 [ %354, %430 ], [ %354, %425 ], [ %275, %350 ], [ %434, %436 ]
  %440 = add nsw i32 %439, 1
  %441 = add nsw i32 %287, -1
  %442 = call i32 @dx.op.binary.i32(i32 38, i32 %440, i32 %441)  ; IMin(a,b)
  br label %443

; <label>:443                                     ; preds = %437, %417, %409, %348, %344, %291
  %444 = phi float [ %292, %291 ], [ %401, %409 ], [ %401, %417 ], [ %438, %437 ], [ 0x47EFFFFFE0000000, %348 ], [ %345, %344 ]
  %445 = phi i32 [ %131, %291 ], [ %131, %409 ], [ %131, %417 ], [ %131, %437 ], [ 0, %348 ], [ %131, %344 ]
  %446 = phi i32 [ %275, %291 ], [ %412, %409 ], [ %420, %417 ], [ %442, %437 ], [ %275, %348 ], [ %275, %344 ]
  %447 = icmp ne i32 %445, 0
  %448 = zext i1 %447 to i32
  %449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %450 = extractvalue %dx.types.CBufRet.f32 %449, 2
  %451 = call float @dx.op.binary.f32(i32 35, float %444, float %450)  ; FMax(a,b)
  %452 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %451)  ; FMin(a,b)
  br label %453

; <label>:453                                     ; preds = %443, %267
  %454 = phi float [ %452, %443 ], [ 0x47EFFFFFE0000000, %267 ]
  %455 = phi i32 [ %446, %443 ], [ %275, %267 ]
  %456 = phi i32 [ %448, %443 ], [ 0, %267 ]
  %457 = icmp eq i32 %158, 0
  br i1 %457, label %470, label %458, !dx.controlflow.hints !48

; <label>:458                                     ; preds = %453
  %459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %460 = extractvalue %dx.types.CBufRet.f32 %459, 3
  %461 = extractvalue %dx.types.CBufRet.f32 %459, 2
  %462 = fmul fast float %460, %274
  %463 = fdiv fast float %462, %245
  %464 = fadd fast float %463, 1.000000e+00
  %465 = call float @dx.op.unary.f32(i32 23, float %464)  ; Log(value)
  %466 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %465)  ; FMin(a,b)
  %467 = fmul fast float %461, %245
  %468 = fmul fast float %467, %466
  %469 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %468)  ; FMin(a,b)
  br label %470

; <label>:470                                     ; preds = %458, %453
  %471 = phi float [ %469, %458 ], [ 0x47EFFFFFE0000000, %453 ]
  %472 = icmp eq i32 %218, 0
  br i1 %472, label %529, label %473, !dx.controlflow.hints !49

; <label>:473                                     ; preds = %470
  %474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %475 = extractvalue %dx.types.CBufRet.f32 %474, 0
  %476 = extractvalue %dx.types.CBufRet.f32 %474, 1
  %477 = extractvalue %dx.types.CBufRet.f32 %474, 2
  %478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %479 = extractvalue %dx.types.CBufRet.f32 %478, 0
  %480 = extractvalue %dx.types.CBufRet.f32 %478, 1
  %481 = extractvalue %dx.types.CBufRet.f32 %478, 2
  %482 = fsub fast float %271, %479
  %483 = fsub fast float %272, %480
  %484 = fsub fast float %273, %481
  %485 = fmul fast float %482, %475
  %486 = fmul fast float %483, %476
  %487 = fmul fast float %484, %477
  %488 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %489 = extractvalue %dx.types.CBufRet.i32 %488, 3
  %490 = icmp eq i32 %489, 0
  br i1 %490, label %494, label %491, !dx.controlflow.hints !50

; <label>:491                                     ; preds = %473
  %492 = call float @dx.op.unary.f32(i32 22, float %485)  ; Frc(value)
  %493 = call float @dx.op.unary.f32(i32 22, float %486)  ; Frc(value)
  br label %494

; <label>:494                                     ; preds = %491, %473
  %495 = phi float [ %492, %491 ], [ %485, %473 ]
  %496 = phi float [ %493, %491 ], [ %486, %473 ]
  %497 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %10, float %495, float %496, float %487, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %498 = extractvalue %dx.types.ResRet.f32 %497, 0
  %499 = fmul fast float %498, 2.000000e+00
  %500 = fadd fast float %499, -1.000000e+00
  %501 = extractvalue %dx.types.CBufRet.f32 %474, 3
  %502 = fmul fast float %500, %501
  %503 = fcmp fast olt float %502, 0.000000e+00
  %504 = fcmp fast oge float %487, 0.000000e+00
  %505 = fcmp fast ole float %487, 1.000000e+00
  br i1 %490, label %508, label %506, !dx.controlflow.hints !51

; <label>:506                                     ; preds = %494
  %507 = and i1 %504, %505
  br label %518

; <label>:508                                     ; preds = %494
  %509 = fcmp fast oge float %485, 0.000000e+00
  %510 = fcmp fast oge float %486, 0.000000e+00
  %511 = and i1 %509, %510
  %512 = and i1 %504, %511
  %513 = fcmp fast ole float %485, 1.000000e+00
  %514 = fcmp fast ole float %486, 1.000000e+00
  %515 = and i1 %513, %514
  %516 = and i1 %505, %515
  %517 = and i1 %512, %516
  br label %518

; <label>:518                                     ; preds = %508, %506
  %519 = phi i1 [ %507, %506 ], [ %517, %508 ]
  %520 = and i1 %503, %519
  %521 = call float @dx.op.unary.f32(i32 6, float %502)  ; FAbs(value)
  %522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %523 = extractvalue %dx.types.CBufRet.f32 %522, 1
  %524 = extractvalue %dx.types.CBufRet.f32 %522, 0
  %525 = call float @dx.op.binary.f32(i32 35, float %521, float %524)  ; FMax(a,b)
  %526 = select i1 %520, float %523, float %525
  %527 = zext i1 %520 to i32
  %528 = call float @dx.op.binary.f32(i32 36, float %454, float %526)  ; FMin(a,b)
  br label %529

; <label>:529                                     ; preds = %518, %470
  %530 = phi float [ %528, %518 ], [ %454, %470 ]
  %531 = phi i32 [ %527, %518 ], [ 0, %470 ]
  %532 = icmp eq i32 %242, 0
  br i1 %532, label %705, label %533, !dx.controlflow.hints !52

; <label>:533                                     ; preds = %529
  %534 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %535 = extractvalue %dx.types.CBufRet.i32 %534, 1
  %536 = and i32 %535, 1
  %537 = icmp eq i32 %536, 0
  br i1 %537, label %538, label %695, !dx.controlflow.hints !53

; <label>:538                                     ; preds = %533
  %539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %540 = extractvalue %dx.types.CBufRet.f32 %539, 2
  %541 = extractvalue %dx.types.CBufRet.f32 %539, 3
  %542 = fmul fast float %540, %271
  %543 = fmul fast float %541, %272
  %544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %545 = extractvalue %dx.types.CBufRet.f32 %544, 0
  %546 = extractvalue %dx.types.CBufRet.f32 %544, 1
  %547 = fadd fast float %542, %545
  %548 = fadd fast float %543, %546
  %549 = call float @dx.op.unary.f32(i32 7, float %547)  ; Saturate(value)
  %550 = call float @dx.op.unary.f32(i32 7, float %548)  ; Saturate(value)
  %551 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %12, float %549, float %550, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %552 = extractvalue %dx.types.ResRet.f32 %551, 0
  %553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %554 = extractvalue %dx.types.CBufRet.f32 %553, 0
  %555 = fmul fast float %554, %552
  %556 = fsub fast float %547, %549
  %557 = fsub fast float %548, %550
  %558 = extractvalue %dx.types.CBufRet.f32 %539, 0
  %559 = extractvalue %dx.types.CBufRet.f32 %539, 1
  %560 = fmul fast float %558, %556
  %561 = fmul fast float %559, %557
  %562 = fmul fast float %560, %560
  %563 = fmul fast float %561, %561
  %564 = fadd fast float %562, %563
  %565 = call float @dx.op.unary.f32(i32 24, float %564)  ; Sqrt(value)
  %566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %567 = extractvalue %dx.types.CBufRet.f32 %566, 3
  %568 = fmul fast float %567, %565
  %569 = call float @dx.op.unary.f32(i32 7, float %568)  ; Saturate(value)
  %570 = extractvalue %dx.types.CBufRet.f32 %566, 2
  %571 = fsub fast float %570, %555
  %572 = fmul fast float %571, %569
  %573 = extractvalue %dx.types.CBufRet.f32 %553, 1
  %574 = fsub fast float %273, %555
  %575 = fsub fast float %574, %573
  %576 = fsub fast float %575, %572
  %577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %578 = extractvalue %dx.types.CBufRet.f32 %577, 2
  %579 = fsub fast float %576, %578
  %580 = fcmp fast olt float %579, 0.000000e+00
  %581 = call float @dx.op.unary.f32(i32 6, float %579)  ; FAbs(value)
  %582 = extractvalue %dx.types.CBufRet.i32 %534, 0
  %583 = icmp eq i32 %582, 0
  br i1 %583, label %637, label %584

; <label>:584                                     ; preds = %538
  br label %585

; <label>:585                                     ; preds = %624, %584
  %586 = phi i32 [ %630, %624 ], [ 1, %584 ]
  %587 = phi float [ %632, %624 ], [ 0x47EFFFFFE0000000, %584 ]
  %588 = phi i32 [ %633, %624 ], [ 0, %584 ]
  %589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %590 = extractvalue %dx.types.CBufRet.f32 %589, 1
  %591 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %592 = extractvalue %dx.types.CBufRet.i32 %591, 1
  %593 = and i32 %592, 8
  %594 = icmp eq i32 %593, 0
  %595 = fcmp fast ogt float %590, %576
  %596 = or i1 %595, %594
  %597 = add i32 %588, 171
  %598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 %597)  ; CBufferLoadLegacy(handle,regIndex)
  %599 = extractvalue %dx.types.CBufRet.f32 %598, 0
  %600 = extractvalue %dx.types.CBufRet.f32 %598, 1
  %601 = extractvalue %dx.types.CBufRet.f32 %598, 2
  br i1 %596, label %602, label %608, !dx.controlflow.hints !54

; <label>:602                                     ; preds = %585
  %603 = fsub fast float %599, %271
  %604 = fsub fast float %600, %272
  %605 = fmul fast float %603, %603
  %606 = fmul fast float %604, %604
  %607 = fadd fast float %605, %606
  br label %624

; <label>:608                                     ; preds = %585
  %609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %610 = extractvalue %dx.types.CBufRet.f32 %609, 2
  %611 = extractvalue %dx.types.CBufRet.f32 %589, 2
  %612 = fmul fast float %611, %610
  %613 = fsub fast float %612, %590
  %614 = fdiv fast float %601, %613
  %615 = fsub fast float %271, %599
  %616 = fsub fast float %272, %600
  %617 = fsub fast float %576, %590
  %618 = fmul fast float %614, %617
  %619 = fmul fast float %615, %615
  %620 = fmul fast float %616, %616
  %621 = fadd fast float %619, %620
  %622 = fmul fast float %618, %618
  %623 = fadd fast float %621, %622
  br label %624

; <label>:624                                     ; preds = %608, %602
  %625 = phi float [ %607, %602 ], [ %623, %608 ]
  %626 = call float @dx.op.unary.f32(i32 24, float %625)  ; Sqrt(value)
  %627 = fsub float %601, %626
  %628 = fcmp fast olt float %627, 0.000000e+00
  %629 = zext i1 %628 to i32
  %630 = and i32 %629, %586
  %631 = call float @dx.op.unary.f32(i32 6, float %627)  ; FAbs(value)
  %632 = call float @dx.op.binary.f32(i32 36, float %587, float %631)  ; FMin(a,b)
  %633 = add i32 %588, 1
  %634 = extractvalue %dx.types.CBufRet.i32 %591, 0
  %635 = icmp ult i32 %633, %634
  br i1 %635, label %585, label %636

; <label>:636                                     ; preds = %624
  br label %637

; <label>:637                                     ; preds = %636, %538
  %638 = phi i32 [ 1, %538 ], [ %630, %636 ]
  %639 = phi float [ 0x47EFFFFFE0000000, %538 ], [ %632, %636 ]
  br label %640

; <label>:640                                     ; preds = %640, %637
  %641 = phi i32 [ %638, %637 ], [ %680, %640 ]
  %642 = phi float [ 0x47EFFFFFE0000000, %637 ], [ %682, %640 ]
  %643 = phi i32 [ 0, %637 ], [ %683, %640 ]
  %644 = add nuw nsw i32 %643, 191
  %645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 %644)  ; CBufferLoadLegacy(handle,regIndex)
  %646 = extractvalue %dx.types.CBufRet.f32 %645, 0
  %647 = extractvalue %dx.types.CBufRet.f32 %645, 1
  %648 = extractvalue %dx.types.CBufRet.f32 %645, 2
  %649 = add nuw nsw i32 %643, 195
  %650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 %649)  ; CBufferLoadLegacy(handle,regIndex)
  %651 = extractvalue %dx.types.CBufRet.f32 %650, 0
  %652 = extractvalue %dx.types.CBufRet.f32 %650, 1
  %653 = extractvalue %dx.types.CBufRet.f32 %650, 2
  %654 = fsub fast float %271, %646
  %655 = fsub fast float %272, %647
  %656 = fsub fast float %576, %648
  %657 = call float @dx.op.unary.f32(i32 6, float %654)  ; FAbs(value)
  %658 = call float @dx.op.unary.f32(i32 6, float %655)  ; FAbs(value)
  %659 = call float @dx.op.unary.f32(i32 6, float %656)  ; FAbs(value)
  %660 = fsub fast float %657, %651
  %661 = fsub fast float %658, %652
  %662 = fsub fast float %659, %653
  %663 = call float @dx.op.binary.f32(i32 35, float %660, float 0.000000e+00)  ; FMax(a,b)
  %664 = call float @dx.op.binary.f32(i32 35, float %661, float 0.000000e+00)  ; FMax(a,b)
  %665 = call float @dx.op.binary.f32(i32 35, float %662, float 0.000000e+00)  ; FMax(a,b)
  %666 = fmul fast float %663, %663
  %667 = fmul fast float %664, %664
  %668 = fadd fast float %667, %666
  %669 = fmul fast float %665, %665
  %670 = fadd fast float %668, %669
  %671 = call float @dx.op.unary.f32(i32 24, float %670)  ; Sqrt(value)
  %672 = call float @dx.op.binary.f32(i32 35, float %661, float %662)  ; FMax(a,b)
  %673 = call float @dx.op.binary.f32(i32 35, float %660, float %672)  ; FMax(a,b)
  %674 = call float @dx.op.binary.f32(i32 36, float %673, float 0.000000e+00)  ; FMin(a,b)
  %675 = fadd fast float %674, %671
  %676 = fsub fast float -0.000000e+00, %675
  %677 = fcmp ogt float %675, -0.000000e+00
  %678 = icmp ne i32 %641, 0
  %679 = and i1 %678, %677
  %680 = zext i1 %679 to i32
  %681 = call float @dx.op.unary.f32(i32 6, float %676)  ; FAbs(value)
  %682 = call float @dx.op.binary.f32(i32 36, float %642, float %681)  ; FMin(a,b)
  %683 = add nuw nsw i32 %643, 1
  %684 = icmp eq i32 %683, 4
  br i1 %684, label %685, label %640

; <label>:685                                     ; preds = %640
  %686 = call float @dx.op.binary.f32(i32 36, float %581, float %682)  ; FMin(a,b)
  %687 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %688 = extractvalue %dx.types.CBufRet.i32 %687, 1
  %689 = and i32 %688, 2
  %690 = icmp ne i32 %689, 0
  %691 = xor i1 %679, %690
  %692 = call float @dx.op.binary.f32(i32 36, float %686, float %639)  ; FMin(a,b)
  %693 = and i1 %691, %580
  %694 = zext i1 %693 to i32
  br label %695

; <label>:695                                     ; preds = %685, %533
  %696 = phi i32 [ %268, %533 ], [ %694, %685 ]
  %697 = phi float [ 0.000000e+00, %533 ], [ %692, %685 ]
  %698 = phi float [ %273, %533 ], [ %576, %685 ]
  %699 = icmp ne i32 %696, 0
  %700 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %701 = extractvalue %dx.types.CBufRet.f32 %700, 3
  %702 = call float @dx.op.binary.f32(i32 35, float %697, float %701)  ; FMax(a,b)
  %703 = call float @dx.op.binary.f32(i32 36, float %471, float %702)  ; FMin(a,b)
  %704 = zext i1 %699 to i32
  br label %705

; <label>:705                                     ; preds = %695, %529
  %706 = phi i32 [ %696, %695 ], [ %268, %529 ]
  %707 = phi float [ %698, %695 ], [ %269, %529 ]
  %708 = phi float [ %703, %695 ], [ %471, %529 ]
  %709 = phi i32 [ %704, %695 ], [ 0, %529 ]
  %710 = extractvalue %dx.types.CBufRet.f32 %282, 2
  %711 = fmul fast float %710, %274
  %712 = call float @dx.op.unary.f32(i32 23, float %711)  ; Log(value)
  %713 = fmul fast float %712, 0x3FE62E4300000000
  %714 = call float @dx.op.binary.f32(i32 35, float %713, float 1.000000e+00)  ; FMax(a,b)
  %715 = fmul fast float %714, %708
  %716 = call float @dx.op.binary.f32(i32 36, float %715, float %530)  ; FMin(a,b)
  %717 = call float @dx.op.binary.f32(i32 35, float %716, float %283)  ; FMax(a,b)
  %718 = fsub fast float %245, %274
  %719 = fadd fast float %718, 0x3F1A36E2E0000000
  %720 = call float @dx.op.binary.f32(i32 36, float %719, float %717)  ; FMin(a,b)
  %721 = icmp eq i32 %456, 0
  br i1 %721, label %818, label %722, !dx.controlflow.hints !55

; <label>:722                                     ; preds = %705
  %723 = fcmp fast olt float %719, %717
  %724 = fmul fast float %33, %62
  %725 = fmul fast float %724, %720
  %726 = fadd fast float %725, %273
  %727 = fmul fast float %34, %62
  %728 = fmul fast float %727, %720
  %729 = fadd fast float %728, %273
  %730 = fmul fast float %35, %62
  %731 = fmul fast float %730, %720
  %732 = fadd fast float %731, %273
  br i1 %723, label %733, label %738, !dx.controlflow.hints !56

; <label>:733                                     ; preds = %722
  %734 = fmul fast float %720, %60
  %735 = fmul fast float %720, %61
  %736 = fadd fast float %734, %271
  %737 = fadd fast float %735, %272
  br label %738

; <label>:738                                     ; preds = %733, %722
  %739 = phi float [ %736, %733 ], [ %271, %722 ]
  %740 = phi float [ %737, %733 ], [ %272, %722 ]
  %741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %742 = extractvalue %dx.types.CBufRet.f32 %741, 0
  %743 = extractvalue %dx.types.CBufRet.f32 %741, 1
  %744 = fsub fast float %739, %742
  %745 = fsub fast float %740, %743
  %746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %747 = extractvalue %dx.types.CBufRet.f32 %746, 0
  %748 = extractvalue %dx.types.CBufRet.f32 %746, 1
  %749 = fmul fast float %744, %747
  %750 = fmul fast float %745, %748
  %751 = fsub fast float 1.000000e+00, %750
  %752 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %753 = extractvalue %dx.types.CBufRet.i32 %752, 3
  %754 = icmp eq i32 %753, 0
  br i1 %754, label %761, label %755, !dx.controlflow.hints !43

; <label>:755                                     ; preds = %738
  %756 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %11, float %749, float %751, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %757 = extractvalue %dx.types.ResRet.f32 %756, 0
  %758 = extractvalue %dx.types.ResRet.f32 %756, 1
  %759 = extractvalue %dx.types.ResRet.f32 %756, 2
  %760 = extractvalue %dx.types.ResRet.f32 %756, 3
  br label %767

; <label>:761                                     ; preds = %738
  %762 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %12, float %749, float %751, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %763 = extractvalue %dx.types.ResRet.f32 %762, 0
  %764 = extractvalue %dx.types.ResRet.f32 %762, 1
  %765 = extractvalue %dx.types.ResRet.f32 %762, 2
  %766 = extractvalue %dx.types.ResRet.f32 %762, 3
  br label %767

; <label>:767                                     ; preds = %761, %755
  %768 = phi float [ %757, %755 ], [ %763, %761 ]
  %769 = phi float [ %758, %755 ], [ %764, %761 ]
  %770 = phi float [ %759, %755 ], [ %765, %761 ]
  %771 = phi float [ %760, %755 ], [ %766, %761 ]
  %772 = extractvalue %dx.types.CBufRet.f32 %746, 3
  %773 = fmul fast float %772, %769
  %774 = fmul fast float %773, %768
  %775 = fsub fast float %773, %774
  %776 = fcmp fast ole float %775, 0.000000e+00
  %777 = extractvalue %dx.types.CBufRet.f32 %741, 2
  %778 = fadd fast float %774, %777
  %779 = fmul fast float %772, %770
  %780 = fadd fast float %779, %777
  %781 = fdiv fast float 1.000000e+00, %775
  %782 = select i1 %776, float 1.000000e+06, float %781
  %783 = fsub fast float %726, %778
  %784 = fmul fast float %782, %783
  %785 = call float @dx.op.unary.f32(i32 7, float %784)  ; Saturate(value)
  %786 = extractvalue %dx.types.CBufRet.f32 %746, 2
  %787 = fmul fast float %786, %785
  %788 = fsub fast float %786, %787
  %789 = fcmp fast olt float %726, %780
  %790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %791 = extractvalue %dx.types.CBufRet.f32 %790, 3
  %792 = select i1 %789, float %791, float 1.000000e+00
  %793 = fmul fast float %788, %792
  %794 = fsub fast float %729, %778
  %795 = fmul fast float %782, %794
  %796 = call float @dx.op.unary.f32(i32 7, float %795)  ; Saturate(value)
  %797 = fmul fast float %786, %796
  %798 = fsub fast float %786, %797
  %799 = fcmp fast olt float %729, %780
  %800 = select i1 %799, float %791, float 1.000000e+00
  %801 = fmul fast float %798, %800
  %802 = fadd fast float %801, %793
  %803 = fsub fast float %732, %778
  %804 = fmul fast float %782, %803
  %805 = call float @dx.op.unary.f32(i32 7, float %804)  ; Saturate(value)
  %806 = fmul fast float %786, %805
  %807 = fsub fast float %786, %806
  %808 = fcmp fast olt float %732, %780
  %809 = select i1 %808, float %791, float 1.000000e+00
  %810 = fmul fast float %807, %809
  %811 = fadd fast float %802, %810
  %812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %813 = extractvalue %dx.types.CBufRet.f32 %812, 2
  %814 = fmul fast float %720, 0x3FD5555560000000
  %815 = fmul fast float %814, %771
  %816 = fmul fast float %815, %813
  %817 = fmul fast float %816, %811
  br label %818

; <label>:818                                     ; preds = %767, %705
  %819 = phi float [ %817, %767 ], [ 0.000000e+00, %705 ]
  br i1 %457, label %866, label %820, !dx.controlflow.hints !57

; <label>:820                                     ; preds = %818
  %821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %822 = extractvalue %dx.types.CBufRet.f32 %821, 0
  %823 = fsub fast float %822, %273
  %824 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %281, float %280, float %823)  ; Dot3(ax,ay,az,bx,by,bz)
  %825 = fmul fast float %140, %824
  %826 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %825)  ; FMax(a,b)
  %827 = fcmp ogt float %59, -0.000000e+00
  %828 = call float @dx.op.binary.f32(i32 36, float %720, float %826)  ; FMin(a,b)
  br i1 %827, label %830, label %829, !dx.controlflow.hints !58

; <label>:829                                     ; preds = %820
  br label %830

; <label>:830                                     ; preds = %829, %820
  %831 = phi float [ 0.000000e+00, %829 ], [ %828, %820 ]
  %832 = phi float [ %828, %829 ], [ %720, %820 ]
  %833 = phi float [ %828, %829 ], [ 0.000000e+00, %820 ]
  %834 = phi float [ %720, %829 ], [ %828, %820 ]
  %835 = fsub fast float %832, %831
  %836 = extractvalue %dx.types.CBufRet.f32 %821, 1
  %837 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %836)  ; FMin(a,b)
  %838 = fsub fast float %273, %822
  %839 = fmul fast float %837, 0x3FF7154760000000
  %840 = fmul fast float %839, %838
  %841 = call float @dx.op.unary.f32(i32 21, float %840)  ; Exp(value)
  %842 = fmul fast float %59, 0xBFF7154760000000
  %843 = fmul fast float %842, %834
  %844 = fmul fast float %843, %837
  %845 = call float @dx.op.unary.f32(i32 21, float %844)  ; Exp(value)
  %846 = fmul fast float %842, %833
  %847 = fmul fast float %846, %837
  %848 = call float @dx.op.unary.f32(i32 21, float %847)  ; Exp(value)
  %849 = fsub fast float %845, %848
  %850 = fmul fast float %849, %841
  %851 = fmul fast float %837, %62
  %852 = fdiv fast float %850, %851
  %853 = fadd fast float %835, %852
  %854 = call float @dx.op.unary.f32(i32 6, float %62)  ; FAbs(value)
  %855 = fcmp fast olt float %854, 0x3F0FFB4800000000
  %856 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %838)  ; FMax(a,b)
  %857 = fmul fast float %856, 0x3FF7154760000000
  %858 = fmul fast float %857, %836
  %859 = call float @dx.op.unary.f32(i32 21, float %858)  ; Exp(value)
  %860 = fmul fast float %859, %720
  %861 = select i1 %855, float %860, float %853
  %862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %863 = extractvalue %dx.types.CBufRet.f32 %862, 1
  %864 = fmul fast float %861, %863
  %865 = fadd fast float %864, %819
  br label %866

; <label>:866                                     ; preds = %830, %818
  %867 = phi float [ %865, %830 ], [ %819, %818 ]
  %868 = icmp eq i32 %531, 0
  br i1 %868, label %1049, label %869, !dx.controlflow.hints !59

; <label>:869                                     ; preds = %866
  %870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %871 = extractvalue %dx.types.CBufRet.f32 %870, 3
  %872 = fmul fast float %871, %274
  %873 = fcmp fast oeq float %872, 0.000000e+00
  br i1 %873, label %888, label %874, !dx.controlflow.hints !60

; <label>:874                                     ; preds = %869
  %875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %876 = extractvalue %dx.types.CBufRet.f32 %875, 3
  %877 = fmul fast float %876, %872
  %878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %879 = extractvalue %dx.types.CBufRet.f32 %878, 0
  %880 = extractvalue %dx.types.CBufRet.f32 %878, 1
  %881 = extractvalue %dx.types.CBufRet.f32 %878, 2
  %882 = fmul fast float %879, %877
  %883 = fmul fast float %880, %877
  %884 = fmul fast float %881, %877
  %885 = call float @dx.op.unary.f32(i32 23, float %882)  ; Log(value)
  %886 = call float @dx.op.unary.f32(i32 23, float %883)  ; Log(value)
  %887 = call float @dx.op.unary.f32(i32 23, float %884)  ; Log(value)
  br label %888

; <label>:888                                     ; preds = %874, %869
  %889 = phi float [ %885, %874 ], [ 0.000000e+00, %869 ]
  %890 = phi float [ %886, %874 ], [ 0.000000e+00, %869 ]
  %891 = phi float [ %887, %874 ], [ 0.000000e+00, %869 ]
  %892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %893 = extractvalue %dx.types.CBufRet.f32 %892, 0
  %894 = extractvalue %dx.types.CBufRet.f32 %892, 1
  %895 = extractvalue %dx.types.CBufRet.f32 %892, 2
  %896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %897 = extractvalue %dx.types.CBufRet.f32 %896, 0
  %898 = extractvalue %dx.types.CBufRet.f32 %896, 1
  %899 = extractvalue %dx.types.CBufRet.f32 %896, 2
  %900 = fsub fast float %271, %897
  %901 = fsub fast float %272, %898
  %902 = fsub fast float %273, %899
  %903 = fmul fast float %900, %893
  %904 = fmul fast float %901, %894
  %905 = fmul fast float %902, %895
  %906 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %907 = extractvalue %dx.types.CBufRet.i32 %906, 0
  %908 = extractvalue %dx.types.CBufRet.i32 %906, 1
  %909 = uitofp i32 %907 to float
  %910 = uitofp i32 %908 to float
  %911 = fmul fast float %903, %909
  %912 = fmul fast float %904, %910
  %913 = fadd fast float %911, 5.000000e-01
  %914 = fadd fast float %912, 5.000000e-01
  %915 = call float @dx.op.unary.f32(i32 22, float %913)  ; Frc(value)
  %916 = call float @dx.op.unary.f32(i32 22, float %914)  ; Frc(value)
  %917 = call float @dx.op.unary.f32(i32 27, float %913)  ; Round_ni(value)
  %918 = call float @dx.op.unary.f32(i32 27, float %914)  ; Round_ni(value)
  %919 = fadd fast float %917, 1.000000e+00
  %920 = fadd fast float %918, 1.000000e+00
  %921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %922 = extractvalue %dx.types.CBufRet.f32 %921, 0
  %923 = extractvalue %dx.types.CBufRet.f32 %921, 1
  %924 = fmul fast float %922, %919
  %925 = fmul fast float %923, %920
  %926 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %11, float %924, float %925, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %927 = extractvalue %dx.types.ResRet.f32 %926, 0
  %928 = extractvalue %dx.types.ResRet.f32 %926, 1
  %929 = extractvalue %dx.types.ResRet.f32 %926, 2
  %930 = extractvalue %dx.types.ResRet.f32 %926, 3
  %931 = extractvalue %dx.types.CBufRet.i32 %906, 2
  %932 = extractvalue %dx.types.CBufRet.f32 %921, 2
  %933 = uitofp i32 %931 to float
  %934 = fadd fast float %933, -1.000000e+00
  %935 = fmul fast float %934, %927
  %936 = fmul fast float %934, %928
  %937 = fmul fast float %934, %929
  %938 = fmul fast float %934, %930
  %939 = fadd fast float %935, 5.000000e-01
  %940 = fadd fast float %936, 5.000000e-01
  %941 = fadd fast float %937, 5.000000e-01
  %942 = fadd fast float %938, 5.000000e-01
  %943 = fptoui float %939 to i32
  %944 = fptoui float %940 to i32
  %945 = fptoui float %941 to i32
  %946 = fptoui float %942 to i32
  %947 = uitofp i32 %943 to float
  %948 = uitofp i32 %944 to float
  %949 = uitofp i32 %945 to float
  %950 = uitofp i32 %946 to float
  %951 = fadd fast float %947, 5.000000e-01
  %952 = fadd fast float %948, 5.000000e-01
  %953 = fadd fast float %949, 5.000000e-01
  %954 = fadd fast float %950, 5.000000e-01
  %955 = fmul fast float %951, %932
  %956 = fmul fast float %952, %932
  %957 = fmul fast float %953, %932
  %958 = fmul fast float %954, %932
  %959 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %12, float %955, float %905, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %960 = extractvalue %dx.types.ResRet.f32 %959, 0
  %961 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %12, float %956, float %905, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %962 = extractvalue %dx.types.ResRet.f32 %961, 0
  %963 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %12, float %957, float %905, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %964 = extractvalue %dx.types.ResRet.f32 %963, 0
  %965 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %12, float %958, float %905, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %966 = extractvalue %dx.types.ResRet.f32 %965, 0
  %967 = fsub fast float %964, %966
  %968 = fmul fast float %967, %915
  %969 = fadd fast float %968, %966
  %970 = fsub fast float %962, %960
  %971 = fmul fast float %970, %915
  %972 = fadd fast float %971, %960
  %973 = fsub fast float %972, %969
  %974 = fmul fast float %973, %916
  %975 = fadd fast float %974, %969
  %976 = fcmp fast ogt float %975, 0.000000e+00
  br i1 %976, label %977, label %1045, !dx.controlflow.hints !61

; <label>:977                                     ; preds = %888
  %978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %979 = extractvalue %dx.types.CBufRet.f32 %978, 0
  %980 = extractvalue %dx.types.CBufRet.f32 %978, 1
  %981 = extractvalue %dx.types.CBufRet.f32 %978, 2
  %982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %983 = extractvalue %dx.types.CBufRet.f32 %982, 0
  %984 = extractvalue %dx.types.CBufRet.f32 %982, 1
  %985 = extractvalue %dx.types.CBufRet.f32 %982, 2
  %986 = fmul fast float %901, %893
  %987 = fmul fast float %902, %893
  %988 = fadd fast float %903, %983
  %989 = fadd fast float %986, %984
  %990 = fadd fast float %987, %985
  %991 = fmul fast float %988, %979
  %992 = fmul fast float %989, %979
  %993 = fmul fast float %990, %979
  %994 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %9, float %991, float %992, float %993, float undef, i32 0, i32 0, i32 0, float %889)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %995 = extractvalue %dx.types.ResRet.f32 %994, 0
  %996 = fmul fast float %988, %980
  %997 = fmul fast float %989, %980
  %998 = fmul fast float %990, %980
  %999 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %9, float %996, float %997, float %998, float undef, i32 0, i32 0, i32 0, float %890)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1000 = extractvalue %dx.types.ResRet.f32 %999, 1
  %1001 = fmul fast float %988, %981
  %1002 = fmul fast float %989, %981
  %1003 = fmul fast float %990, %981
  %1004 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %9, float %1001, float %1002, float %1003, float undef, i32 0, i32 0, i32 0, float %891)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1005 = extractvalue %dx.types.ResRet.f32 %1004, 2
  %1006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %1007 = extractvalue %dx.types.CBufRet.f32 %1006, 1
  %1008 = fmul fast float %1000, %995
  %1009 = fmul fast float %1008, %1005
  %1010 = call float @dx.op.unary.f32(i32 23, float %1009)  ; Log(value)
  %1011 = fmul fast float %1010, %1007
  %1012 = call float @dx.op.unary.f32(i32 21, float %1011)  ; Exp(value)
  %1013 = extractvalue %dx.types.CBufRet.f32 %1006, 2
  %1014 = fmul fast float %975, %975
  %1015 = fmul fast float %1014, %1012
  %1016 = fmul fast float %1015, %1013
  %1017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %1018 = extractvalue %dx.types.CBufRet.f32 %1017, 3
  %1019 = fmul fast float %1018, %1016
  %1020 = bitcast float %1019 to i32
  %1021 = sitofp i32 %1020 to float
  %1022 = fptosi float %1021 to i32
  %1023 = bitcast i32 %1022 to float
  %1024 = fsub fast float 1.000000e+00, %1016
  %1025 = bitcast float %1024 to i32
  %1026 = sitofp i32 %1025 to float
  %1027 = fptosi float %1026 to i32
  %1028 = bitcast i32 %1027 to float
  %1029 = fadd fast float %1023, %1028
  %1030 = bitcast float %1029 to i32
  %1031 = sub nsw i32 2129859010, %1030
  %1032 = bitcast i32 %1031 to float
  %1033 = fmul fast float %1032, %1023
  %1034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1035 = extractvalue %dx.types.CBufRet.f32 %1034, 3
  %1036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %1037 = extractvalue %dx.types.CBufRet.f32 %1036, 0
  %1038 = fmul fast float %1033, %1037
  %1039 = fadd fast float %1038, 1.000000e+00
  %1040 = bitcast float %1039 to i32
  %1041 = sub nsw i32 2129859010, %1040
  %1042 = bitcast i32 %1041 to float
  %1043 = fmul fast float %1033, %1035
  %1044 = fmul fast float %1043, %1042
  br label %1045

; <label>:1045                                    ; preds = %977, %888
  %1046 = phi float [ %1044, %977 ], [ %975, %888 ]
  %1047 = fmul fast float %1046, %720
  %1048 = fadd fast float %1047, %867
  br label %1049

; <label>:1049                                    ; preds = %1045, %866
  %1050 = phi float [ %1048, %1045 ], [ %867, %866 ]
  %1051 = icmp eq i32 %709, 0
  br i1 %1051, label %1083, label %1052, !dx.controlflow.hints !62

; <label>:1052                                    ; preds = %1049
  %1053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %1054 = extractvalue %dx.types.CBufRet.f32 %1053, 1
  %1055 = fsub fast float %720, %1054
  %1056 = extractvalue %dx.types.CBufRet.f32 %1053, 3
  %1057 = fmul fast float %1055, %1056
  %1058 = call float @dx.op.unary.f32(i32 7, float %1057)  ; Saturate(value)
  %1059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %1060 = extractvalue %dx.types.CBufRet.f32 %1059, 3
  %1061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1062 = extractvalue %dx.types.CBufRet.f32 %1061, 2
  %1063 = fsub fast float %1062, %707
  %1064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %1065 = extractvalue %dx.types.CBufRet.f32 %1064, 3
  %1066 = fmul fast float %1063, %1065
  %1067 = call float @dx.op.unary.f32(i32 7, float %1066)  ; Saturate(value)
  %1068 = fmul fast float %1067, %1060
  %1069 = extractvalue %dx.types.CBufRet.f32 %1064, 0
  %1070 = fsub fast float %274, %1069
  %1071 = extractvalue %dx.types.CBufRet.f32 %1064, 1
  %1072 = fmul fast float %1070, %1071
  %1073 = call float @dx.op.unary.f32(i32 7, float %1072)  ; Saturate(value)
  %1074 = fsub fast float 1.000000e+00, %1058
  %1075 = fmul fast float %1073, %1074
  %1076 = fadd fast float %1075, %1058
  %1077 = extractvalue %dx.types.CBufRet.f32 %1053, 0
  %1078 = fsub fast float %1068, %1077
  %1079 = fmul fast float %1078, %1076
  %1080 = fadd fast float %1079, %1077
  %1081 = fmul fast float %1080, %720
  %1082 = fadd fast float %1081, %1050
  br label %1083

; <label>:1083                                    ; preds = %1052, %1049
  %1084 = phi float [ %1082, %1052 ], [ %1050, %1049 ]
  %1085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1086 = extractvalue %dx.types.CBufRet.f32 %1085, 1
  %1087 = fcmp fast ogt float %1084, %1086
  br i1 %1087, label %1088, label %1100, !dx.controlflow.hints !63

; <label>:1088                                    ; preds = %1083
  %1089 = fmul fast float %1084, 0xBFF7154760000000
  %1090 = call float @dx.op.unary.f32(i32 21, float %1089)  ; Exp(value)
  %1091 = call float @dx.op.unary.f32(i32 7, float %1090)  ; Saturate(value)
  %1092 = icmp eq i32 %276, 0
  br i1 %1092, label %1093, label %1094, !dx.controlflow.hints !64

; <label>:1093                                    ; preds = %1088
  br label %1094

; <label>:1094                                    ; preds = %1093, %1088
  %1095 = phi i32 [ %276, %1088 ], [ 1, %1093 ]
  %1096 = phi float [ %277, %1088 ], [ %274, %1093 ]
  %1097 = fadd fast float %720, %278
  %1098 = fadd fast float %1084, %279
  %1099 = fmul fast float %1091, %270
  br label %1100

; <label>:1100                                    ; preds = %1094, %1083
  %1101 = phi float [ %1099, %1094 ], [ %270, %1083 ]
  %1102 = phi i32 [ %1095, %1094 ], [ %276, %1083 ]
  %1103 = phi float [ %1096, %1094 ], [ %277, %1083 ]
  %1104 = phi float [ %1097, %1094 ], [ %278, %1083 ]
  %1105 = phi float [ %1098, %1094 ], [ %279, %1083 ]
  %1106 = fadd fast float %720, %274
  %1107 = fmul fast float %720, %60
  %1108 = fmul fast float %720, %61
  %1109 = fmul fast float %720, %62
  %1110 = fadd fast float %1107, %271
  %1111 = fadd fast float %1108, %272
  %1112 = fadd fast float %1109, %273
  %1113 = fcmp fast olt float %1106, %245
  %1114 = extractvalue %dx.types.CBufRet.f32 %1085, 2
  %1115 = fcmp fast olt float %1114, %1101
  %1116 = and i1 %1113, %1115
  br i1 %1116, label %267, label %1117

; <label>:1117                                    ; preds = %1100
  br label %1118

; <label>:1118                                    ; preds = %1117, %241
  %1119 = phi float [ 0.000000e+00, %241 ], [ %1103, %1117 ]
  %1120 = phi float [ 0.000000e+00, %241 ], [ %1104, %1117 ]
  %1121 = phi float [ 0.000000e+00, %241 ], [ %1105, %1117 ]
  %1122 = extractvalue %dx.types.CBufRet.f32 %54, 3
  %1123 = fmul fast float %1122, %1119
  %1124 = fdiv fast float 1.000000e+00, %1120
  %1125 = fmul fast float %1124, %1121
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %15, i32 %16, i32 undef, float %1123, float %1125, float %1121, float %1123, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!dx.entryPoints = !{!24}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !14, !16, !19}
!5 = !{!6, !8, !9, !10, !11, !12, !13}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 16, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 27, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture3D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 4, i32 0, !7}
!10 = !{i32 3, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 4, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 8, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 9, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 13, i32 1, i32 2, i32 0, !7}
!14 = !{!15}
!15 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 7, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!16 = !{!17, !18}
!17 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!18 = !{i32 1, %FogRaymarchingConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 112, null}
!19 = !{!20, !21, !22, !23}
!20 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!21 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!22 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!23 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!24 = !{void ()* @cs_fog_raymarching_air_clouds_heightmap_brfog, !"cs_fog_raymarching_air_clouds_heightmap_brfog", null, !4, !25}
!25 = !{i32 0, i64 256, i32 4, !26}
!26 = !{i32 8, i32 8, i32 1}
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
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 1}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 1}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 1}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 1}

