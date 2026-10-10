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
; shader hash: 44a99b86a3061be8c276d92a2cccb2d4
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

define void @cs_fog_raymarching_clouds_heightmap_brfog() {
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
  %133 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %134 = extractvalue %dx.types.CBufRet.i32 %133, 3
  %135 = icmp eq i32 %134, 0
  %136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %137 = extractvalue %dx.types.CBufRet.f32 %136, 2
  %138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %139 = extractvalue %dx.types.CBufRet.f32 %138, 2
  %140 = fsub fast float %137, %46
  %141 = fadd fast float %140, %139
  br i1 %135, label %153, label %142, !dx.controlflow.hints !30

; <label>:142                                     ; preds = %129
  %143 = fsub fast float -0.000000e+00, %52
  %144 = fsub fast float -0.000000e+00, %53
  %145 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %143, float %144, float %141)  ; Dot3(ax,ay,az,bx,by,bz)
  %146 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %60, float %61, float %62)  ; Dot3(ax,ay,az,bx,by,bz)
  %147 = fdiv fast float 1.000000e+00, %146
  %148 = fmul fast float %147, %145
  %149 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %143, float %144, float %140)  ; Dot3(ax,ay,az,bx,by,bz)
  %150 = fmul fast float %147, %149
  %151 = call float @dx.op.binary.f32(i32 36, float %148, float %150)  ; FMin(a,b)
  %152 = call float @dx.op.binary.f32(i32 35, float %148, float %150)  ; FMax(a,b)
  br label %186

; <label>:153                                     ; preds = %129
  %154 = fdiv fast float 1.000000e+00, %60
  %155 = fdiv fast float 1.000000e+00, %61
  %156 = fdiv fast float 1.000000e+00, %62
  %157 = extractvalue %dx.types.CBufRet.f32 %136, 0
  %158 = extractvalue %dx.types.CBufRet.f32 %136, 1
  %159 = extractvalue %dx.types.CBufRet.f32 %138, 0
  %160 = extractvalue %dx.types.CBufRet.f32 %138, 1
  %161 = fsub fast float %157, %52
  %162 = fmul fast float %161, %154
  %163 = fadd fast float %161, %159
  %164 = fmul fast float %163, %154
  %165 = call float @dx.op.binary.f32(i32 36, float %162, float %164)  ; FMin(a,b)
  %166 = call float @dx.op.binary.f32(i32 35, float %162, float %164)  ; FMax(a,b)
  %167 = fsub fast float %158, %53
  %168 = fmul fast float %167, %155
  %169 = fadd fast float %167, %160
  %170 = fmul fast float %169, %155
  %171 = call float @dx.op.binary.f32(i32 36, float %168, float %170)  ; FMin(a,b)
  %172 = call float @dx.op.binary.f32(i32 35, float %165, float %171)  ; FMax(a,b)
  %173 = call float @dx.op.binary.f32(i32 35, float %168, float %170)  ; FMax(a,b)
  %174 = call float @dx.op.binary.f32(i32 36, float %166, float %173)  ; FMin(a,b)
  %175 = fmul fast float %140, %156
  %176 = fmul fast float %141, %156
  %177 = call float @dx.op.binary.f32(i32 36, float %175, float %176)  ; FMin(a,b)
  %178 = call float @dx.op.binary.f32(i32 35, float %172, float %177)  ; FMax(a,b)
  %179 = call float @dx.op.binary.f32(i32 35, float %175, float %176)  ; FMax(a,b)
  %180 = call float @dx.op.binary.f32(i32 36, float %174, float %179)  ; FMin(a,b)
  %181 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %178)  ; FMax(a,b)
  %182 = fcmp fast ult float %180, %181
  br i1 %182, label %186, label %183, !dx.controlflow.hints !31

; <label>:183                                     ; preds = %153
  %184 = call float @dx.op.binary.f32(i32 36, float %178, float %180)  ; FMin(a,b)
  %185 = call float @dx.op.binary.f32(i32 35, float %178, float %180)  ; FMax(a,b)
  br label %186

; <label>:186                                     ; preds = %183, %153, %142
  %187 = phi float [ %151, %142 ], [ %184, %183 ], [ 0.000000e+00, %153 ]
  %188 = phi float [ %152, %142 ], [ %185, %183 ], [ 0.000000e+00, %153 ]
  %189 = fcmp fast oeq float %188, 0.000000e+00
  br i1 %189, label %193, label %190, !dx.controlflow.hints !32

; <label>:190                                     ; preds = %186
  %191 = call float @dx.op.binary.f32(i32 36, float %132, float %187)  ; FMin(a,b)
  %192 = call float @dx.op.binary.f32(i32 35, float %130, float %188)  ; FMax(a,b)
  br label %193

; <label>:193                                     ; preds = %190, %186
  %194 = phi float [ %192, %190 ], [ %130, %186 ]
  %195 = phi i32 [ 1, %190 ], [ 0, %186 ]
  %196 = phi float [ %191, %190 ], [ %132, %186 ]
  %197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %198 = extractvalue %dx.types.CBufRet.f32 %197, 2
  %199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %200 = extractvalue %dx.types.CBufRet.f32 %199, 3
  %201 = fsub fast float -0.000000e+00, %52
  %202 = fsub fast float -0.000000e+00, %53
  %203 = fsub fast float %198, %46
  %204 = fadd fast float %203, %200
  %205 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %201, float %202, float %204)  ; Dot3(ax,ay,az,bx,by,bz)
  %206 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %60, float %61, float %62)  ; Dot3(ax,ay,az,bx,by,bz)
  %207 = fdiv fast float 1.000000e+00, %206
  %208 = fmul fast float %207, %205
  %209 = fcmp fast olt float %208, 0.000000e+00
  %210 = fcmp olt float %59, -0.000000e+00
  %211 = and i1 %210, %209
  br i1 %211, label %216, label %212, !dx.controlflow.hints !33

; <label>:212                                     ; preds = %193
  %213 = fcmp ogt float %59, -0.000000e+00
  br i1 %213, label %214, label %216, !dx.controlflow.hints !34

; <label>:214                                     ; preds = %212
  %215 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %208)  ; FMax(a,b)
  br label %216

; <label>:216                                     ; preds = %214, %212, %193
  %217 = phi float [ 0.000000e+00, %193 ], [ %215, %214 ], [ 0.000000e+00, %212 ]
  %218 = phi float [ 0.000000e+00, %193 ], [ 0x47EFFFFFE0000000, %214 ], [ %208, %212 ]
  %219 = fcmp fast oeq float %218, 0.000000e+00
  br i1 %219, label %223, label %220, !dx.controlflow.hints !35

; <label>:220                                     ; preds = %216
  %221 = call float @dx.op.binary.f32(i32 36, float %196, float %217)  ; FMin(a,b)
  %222 = call float @dx.op.binary.f32(i32 35, float %194, float %218)  ; FMax(a,b)
  br label %223

; <label>:223                                     ; preds = %220, %216
  %224 = phi i32 [ 1, %220 ], [ 0, %216 ]
  %225 = phi float [ %222, %220 ], [ %194, %216 ]
  %226 = phi float [ %221, %220 ], [ %196, %216 ]
  %227 = call float @dx.op.binary.f32(i32 36, float %55, float %225)  ; FMin(a,b)
  %228 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %226)  ; FMax(a,b)
  %229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %230 = extractvalue %dx.types.CBufRet.f32 %229, 1
  %231 = fmul fast float %34, 2.000000e+00
  %232 = fadd fast float %231, -1.000000e+00
  %233 = fmul fast float %230, %232
  %234 = fadd fast float %233, %228
  %235 = fcmp fast olt float %234, %227
  %236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %237 = extractvalue %dx.types.CBufRet.f32 %236, 2
  %238 = fcmp fast olt float %237, 1.000000e+00
  %239 = and i1 %235, %238
  br i1 %239, label %240, label %1038

; <label>:240                                     ; preds = %223
  %241 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %242 = extractvalue %dx.types.CBufRet.i32 %241, 1
  %243 = add i32 %242, -1
  %244 = fmul fast float %234, %62
  %245 = fadd fast float %244, %46
  %246 = fmul fast float %234, %61
  %247 = fadd fast float %246, %53
  %248 = fmul fast float %234, %60
  %249 = fadd fast float %248, %52
  br label %250

; <label>:250                                     ; preds = %1020, %240
  %251 = phi i32 [ %674, %1020 ], [ undef, %240 ]
  %252 = phi float [ %675, %1020 ], [ undef, %240 ]
  %253 = phi float [ %1021, %1020 ], [ 1.000000e+00, %240 ]
  %254 = phi float [ %1030, %1020 ], [ %249, %240 ]
  %255 = phi float [ %1031, %1020 ], [ %247, %240 ]
  %256 = phi float [ %1032, %1020 ], [ %245, %240 ]
  %257 = phi float [ %1026, %1020 ], [ %234, %240 ]
  %258 = phi i32 [ %438, %1020 ], [ %243, %240 ]
  %259 = phi i32 [ %1022, %1020 ], [ 0, %240 ]
  %260 = phi float [ %1023, %1020 ], [ 0.000000e+00, %240 ]
  %261 = phi float [ %1024, %1020 ], [ 0.000000e+00, %240 ]
  %262 = phi float [ %1025, %1020 ], [ 0.000000e+00, %240 ]
  %263 = fsub fast float -0.000000e+00, %255
  %264 = fsub fast float -0.000000e+00, %254
  %265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %266 = extractvalue %dx.types.CBufRet.f32 %265, 1
  %267 = icmp eq i32 %131, 0
  br i1 %267, label %436, label %268, !dx.controlflow.hints !36

; <label>:268                                     ; preds = %250
  %269 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %270 = extractvalue %dx.types.CBufRet.i32 %269, 1
  %271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %272 = extractvalue %dx.types.CBufRet.f32 %271, 1
  %273 = fcmp fast ogt float %272, %257
  br i1 %273, label %274, label %276, !dx.controlflow.hints !37

; <label>:274                                     ; preds = %268
  %275 = fsub fast float %272, %257
  br label %426

; <label>:276                                     ; preds = %268
  %277 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %278 = extractvalue %dx.types.CBufRet.i32 %277, 3
  %279 = icmp eq i32 %278, 0
  %280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %281 = extractvalue %dx.types.CBufRet.f32 %280, 2
  %282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %283 = extractvalue %dx.types.CBufRet.f32 %282, 2
  %284 = fsub fast float %281, %256
  %285 = fadd fast float %284, %283
  %286 = fsub fast float 0xC7EFFFFFE0000000, %256
  br i1 %279, label %294, label %287, !dx.controlflow.hints !27

; <label>:287                                     ; preds = %276
  %288 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %264, float %263, float %285)  ; Dot3(ax,ay,az,bx,by,bz)
  %289 = fmul fast float %207, %288
  %290 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %264, float %263, float %286)  ; Dot3(ax,ay,az,bx,by,bz)
  %291 = fmul fast float %207, %290
  %292 = call float @dx.op.binary.f32(i32 36, float %289, float %291)  ; FMin(a,b)
  %293 = call float @dx.op.binary.f32(i32 35, float %289, float %291)  ; FMax(a,b)
  br label %327

; <label>:294                                     ; preds = %276
  %295 = extractvalue %dx.types.CBufRet.f32 %280, 0
  %296 = extractvalue %dx.types.CBufRet.f32 %280, 1
  %297 = extractvalue %dx.types.CBufRet.f32 %282, 0
  %298 = extractvalue %dx.types.CBufRet.f32 %282, 1
  %299 = fdiv fast float 1.000000e+00, %60
  %300 = fdiv fast float 1.000000e+00, %61
  %301 = fdiv fast float 1.000000e+00, %62
  %302 = fsub fast float %295, %254
  %303 = fmul fast float %299, %302
  %304 = fadd fast float %302, %297
  %305 = fmul fast float %304, %299
  %306 = call float @dx.op.binary.f32(i32 36, float %303, float %305)  ; FMin(a,b)
  %307 = call float @dx.op.binary.f32(i32 35, float %303, float %305)  ; FMax(a,b)
  %308 = fsub fast float %296, %255
  %309 = fmul fast float %300, %308
  %310 = fadd fast float %308, %298
  %311 = fmul fast float %310, %300
  %312 = call float @dx.op.binary.f32(i32 36, float %309, float %311)  ; FMin(a,b)
  %313 = call float @dx.op.binary.f32(i32 35, float %306, float %312)  ; FMax(a,b)
  %314 = call float @dx.op.binary.f32(i32 35, float %309, float %311)  ; FMax(a,b)
  %315 = call float @dx.op.binary.f32(i32 36, float %307, float %314)  ; FMin(a,b)
  %316 = fmul fast float %301, %286
  %317 = fmul fast float %301, %285
  %318 = call float @dx.op.binary.f32(i32 36, float %316, float %317)  ; FMin(a,b)
  %319 = call float @dx.op.binary.f32(i32 35, float %313, float %318)  ; FMax(a,b)
  %320 = call float @dx.op.binary.f32(i32 35, float %316, float %317)  ; FMax(a,b)
  %321 = call float @dx.op.binary.f32(i32 36, float %315, float %320)  ; FMin(a,b)
  %322 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %319)  ; FMax(a,b)
  %323 = fcmp fast ult float %321, %322
  br i1 %323, label %327, label %324, !dx.controlflow.hints !28

; <label>:324                                     ; preds = %294
  %325 = call float @dx.op.binary.f32(i32 36, float %319, float %321)  ; FMin(a,b)
  %326 = call float @dx.op.binary.f32(i32 35, float %319, float %321)  ; FMax(a,b)
  br label %327

; <label>:327                                     ; preds = %324, %294, %287
  %328 = phi float [ %292, %287 ], [ %325, %324 ], [ 0.000000e+00, %294 ]
  %329 = phi float [ %293, %287 ], [ %326, %324 ], [ 0.000000e+00, %294 ]
  %330 = fcmp fast ogt float %328, 0.000000e+00
  br i1 %330, label %426, label %331, !dx.controlflow.hints !38

; <label>:331                                     ; preds = %327
  %332 = fcmp fast ugt float %329, 0.000000e+00
  br i1 %332, label %333, label %426, !dx.controlflow.hints !39

; <label>:333                                     ; preds = %331
  %334 = icmp sgt i32 %258, 0
  br i1 %334, label %335, label %420

; <label>:335                                     ; preds = %333
  br label %336

; <label>:336                                     ; preds = %416, %335
  %337 = phi i32 [ %417, %416 ], [ %258, %335 ]
  %338 = sitofp i32 %337 to float
  %339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %340 = extractvalue %dx.types.CBufRet.f32 %339, 0
  %341 = extractvalue %dx.types.CBufRet.f32 %339, 1
  %342 = fsub fast float %254, %340
  %343 = fsub fast float %255, %341
  %344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %345 = extractvalue %dx.types.CBufRet.f32 %344, 0
  %346 = extractvalue %dx.types.CBufRet.f32 %344, 1
  %347 = fmul fast float %342, %345
  %348 = fmul fast float %343, %346
  %349 = fsub fast float 1.000000e+00, %348
  %350 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %351 = extractvalue %dx.types.CBufRet.i32 %350, 3
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %359, label %353, !dx.controlflow.hints !40

; <label>:353                                     ; preds = %336
  %354 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %11, float %347, float %349, float undef, float undef, i32 0, i32 0, i32 undef, float %338)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %355 = extractvalue %dx.types.ResRet.f32 %354, 0
  %356 = extractvalue %dx.types.ResRet.f32 %354, 1
  %357 = extractvalue %dx.types.ResRet.f32 %354, 2
  %358 = extractvalue %dx.types.ResRet.f32 %354, 3
  br label %365

; <label>:359                                     ; preds = %336
  %360 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %12, float %347, float %349, float undef, float undef, i32 0, i32 0, i32 undef, float %338)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %361 = extractvalue %dx.types.ResRet.f32 %360, 0
  %362 = extractvalue %dx.types.ResRet.f32 %360, 1
  %363 = extractvalue %dx.types.ResRet.f32 %360, 2
  %364 = extractvalue %dx.types.ResRet.f32 %360, 3
  br label %365

; <label>:365                                     ; preds = %359, %353
  %366 = phi float [ %355, %353 ], [ %361, %359 ]
  %367 = phi float [ %356, %353 ], [ %362, %359 ]
  %368 = phi float [ %357, %353 ], [ %363, %359 ]
  %369 = phi float [ %358, %353 ], [ %364, %359 ]
  %370 = extractvalue %dx.types.CBufRet.f32 %344, 3
  %371 = fmul fast float %370, %366
  %372 = extractvalue %dx.types.CBufRet.f32 %339, 2
  %373 = fadd fast float %371, %372
  %374 = fmul fast float %370, %367
  %375 = fadd fast float %374, %372
  %376 = fmul fast float %370, %368
  %377 = fadd fast float %376, %372
  %378 = and i32 %337, 31
  %379 = shl i32 1, %378
  %380 = uitofp i32 %379 to float
  %381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %382 = extractvalue %dx.types.CBufRet.f32 %381, 3
  %383 = fdiv fast float 1.000000e+00, %382
  %384 = fmul fast float %383, %380
  %385 = fmul fast float %384, %62
  %386 = fadd fast float %385, %256
  %387 = fcmp fast oeq float %369, 0.000000e+00
  %388 = fcmp fast ogt float %256, %375
  %389 = fcmp fast ogt float %386, %375
  %390 = and i1 %388, %389
  %391 = or i1 %387, %390
  br i1 %391, label %392, label %396, !dx.controlflow.hints !41

; <label>:392                                     ; preds = %365
  %393 = add nsw i32 %337, 1
  %394 = add nsw i32 %270, -1
  %395 = call i32 @dx.op.binary.i32(i32 38, i32 %393, i32 %394)  ; IMin(a,b)
  br label %426

; <label>:396                                     ; preds = %365
  %397 = fcmp fast olt float %256, %377
  %398 = fcmp fast olt float %386, %377
  %399 = and i1 %397, %398
  br i1 %399, label %400, label %404, !dx.controlflow.hints !42

; <label>:400                                     ; preds = %396
  %401 = add nsw i32 %337, 1
  %402 = add nsw i32 %270, -1
  %403 = call i32 @dx.op.binary.i32(i32 38, i32 %401, i32 %402)  ; IMin(a,b)
  br label %426

; <label>:404                                     ; preds = %396
  %405 = fcmp fast olt float %256, %373
  %406 = fcmp fast olt float %386, %373
  %407 = and i1 %405, %406
  br i1 %407, label %408, label %416, !dx.controlflow.hints !43

; <label>:408                                     ; preds = %404
  %409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %410 = extractvalue %dx.types.CBufRet.f32 %409, 3
  %411 = extractvalue %dx.types.CBufRet.f32 %344, 2
  %412 = fcmp fast une float %410, %411
  br i1 %412, label %413, label %420, !dx.controlflow.hints !44

; <label>:413                                     ; preds = %408
  %414 = fsub fast float %256, %377
  %415 = call float @dx.op.binary.f32(i32 36, float %384, float %414)  ; FMin(a,b)
  br label %420

; <label>:416                                     ; preds = %404
  %417 = add nsw i32 %337, -1
  %418 = icmp sgt i32 %337, 1
  br i1 %418, label %336, label %419

; <label>:419                                     ; preds = %416
  br label %420

; <label>:420                                     ; preds = %419, %413, %408, %333
  %421 = phi float [ %415, %413 ], [ %384, %408 ], [ 0.000000e+00, %333 ], [ 0.000000e+00, %419 ]
  %422 = phi i32 [ %337, %413 ], [ %337, %408 ], [ %258, %333 ], [ %417, %419 ]
  %423 = add nsw i32 %422, 1
  %424 = add nsw i32 %270, -1
  %425 = call i32 @dx.op.binary.i32(i32 38, i32 %423, i32 %424)  ; IMin(a,b)
  br label %426

; <label>:426                                     ; preds = %420, %400, %392, %331, %327, %274
  %427 = phi float [ %275, %274 ], [ %384, %392 ], [ %384, %400 ], [ %421, %420 ], [ 0x47EFFFFFE0000000, %331 ], [ %328, %327 ]
  %428 = phi i32 [ %131, %274 ], [ %131, %392 ], [ %131, %400 ], [ %131, %420 ], [ 0, %331 ], [ %131, %327 ]
  %429 = phi i32 [ %258, %274 ], [ %395, %392 ], [ %403, %400 ], [ %425, %420 ], [ %258, %331 ], [ %258, %327 ]
  %430 = icmp ne i32 %428, 0
  %431 = zext i1 %430 to i32
  %432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %433 = extractvalue %dx.types.CBufRet.f32 %432, 2
  %434 = call float @dx.op.binary.f32(i32 35, float %427, float %433)  ; FMax(a,b)
  %435 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %434)  ; FMin(a,b)
  br label %436

; <label>:436                                     ; preds = %426, %250
  %437 = phi float [ %435, %426 ], [ 0x47EFFFFFE0000000, %250 ]
  %438 = phi i32 [ %429, %426 ], [ %258, %250 ]
  %439 = phi i32 [ %431, %426 ], [ 0, %250 ]
  %440 = icmp eq i32 %195, 0
  br i1 %440, label %497, label %441, !dx.controlflow.hints !45

; <label>:441                                     ; preds = %436
  %442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %443 = extractvalue %dx.types.CBufRet.f32 %442, 0
  %444 = extractvalue %dx.types.CBufRet.f32 %442, 1
  %445 = extractvalue %dx.types.CBufRet.f32 %442, 2
  %446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %447 = extractvalue %dx.types.CBufRet.f32 %446, 0
  %448 = extractvalue %dx.types.CBufRet.f32 %446, 1
  %449 = extractvalue %dx.types.CBufRet.f32 %446, 2
  %450 = fsub fast float %254, %447
  %451 = fsub fast float %255, %448
  %452 = fsub fast float %256, %449
  %453 = fmul fast float %450, %443
  %454 = fmul fast float %451, %444
  %455 = fmul fast float %452, %445
  %456 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %457 = extractvalue %dx.types.CBufRet.i32 %456, 3
  %458 = icmp eq i32 %457, 0
  br i1 %458, label %462, label %459, !dx.controlflow.hints !46

; <label>:459                                     ; preds = %441
  %460 = call float @dx.op.unary.f32(i32 22, float %453)  ; Frc(value)
  %461 = call float @dx.op.unary.f32(i32 22, float %454)  ; Frc(value)
  br label %462

; <label>:462                                     ; preds = %459, %441
  %463 = phi float [ %460, %459 ], [ %453, %441 ]
  %464 = phi float [ %461, %459 ], [ %454, %441 ]
  %465 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %10, float %463, float %464, float %455, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %466 = extractvalue %dx.types.ResRet.f32 %465, 0
  %467 = fmul fast float %466, 2.000000e+00
  %468 = fadd fast float %467, -1.000000e+00
  %469 = extractvalue %dx.types.CBufRet.f32 %442, 3
  %470 = fmul fast float %468, %469
  %471 = fcmp fast olt float %470, 0.000000e+00
  %472 = fcmp fast oge float %455, 0.000000e+00
  %473 = fcmp fast ole float %455, 1.000000e+00
  br i1 %458, label %476, label %474, !dx.controlflow.hints !47

; <label>:474                                     ; preds = %462
  %475 = and i1 %472, %473
  br label %486

; <label>:476                                     ; preds = %462
  %477 = fcmp fast oge float %453, 0.000000e+00
  %478 = fcmp fast oge float %454, 0.000000e+00
  %479 = and i1 %477, %478
  %480 = and i1 %472, %479
  %481 = fcmp fast ole float %453, 1.000000e+00
  %482 = fcmp fast ole float %454, 1.000000e+00
  %483 = and i1 %481, %482
  %484 = and i1 %473, %483
  %485 = and i1 %480, %484
  br label %486

; <label>:486                                     ; preds = %476, %474
  %487 = phi i1 [ %475, %474 ], [ %485, %476 ]
  %488 = and i1 %471, %487
  %489 = call float @dx.op.unary.f32(i32 6, float %470)  ; FAbs(value)
  %490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %491 = extractvalue %dx.types.CBufRet.f32 %490, 1
  %492 = extractvalue %dx.types.CBufRet.f32 %490, 0
  %493 = call float @dx.op.binary.f32(i32 35, float %489, float %492)  ; FMax(a,b)
  %494 = select i1 %488, float %491, float %493
  %495 = zext i1 %488 to i32
  %496 = call float @dx.op.binary.f32(i32 36, float %437, float %494)  ; FMin(a,b)
  br label %497

; <label>:497                                     ; preds = %486, %436
  %498 = phi float [ %496, %486 ], [ %437, %436 ]
  %499 = phi i32 [ %495, %486 ], [ 0, %436 ]
  %500 = icmp eq i32 %224, 0
  br i1 %500, label %673, label %501, !dx.controlflow.hints !48

; <label>:501                                     ; preds = %497
  %502 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %503 = extractvalue %dx.types.CBufRet.i32 %502, 1
  %504 = and i32 %503, 1
  %505 = icmp eq i32 %504, 0
  br i1 %505, label %506, label %663, !dx.controlflow.hints !49

; <label>:506                                     ; preds = %501
  %507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %508 = extractvalue %dx.types.CBufRet.f32 %507, 2
  %509 = extractvalue %dx.types.CBufRet.f32 %507, 3
  %510 = fmul fast float %508, %254
  %511 = fmul fast float %509, %255
  %512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %513 = extractvalue %dx.types.CBufRet.f32 %512, 0
  %514 = extractvalue %dx.types.CBufRet.f32 %512, 1
  %515 = fadd fast float %510, %513
  %516 = fadd fast float %511, %514
  %517 = call float @dx.op.unary.f32(i32 7, float %515)  ; Saturate(value)
  %518 = call float @dx.op.unary.f32(i32 7, float %516)  ; Saturate(value)
  %519 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %12, float %517, float %518, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %520 = extractvalue %dx.types.ResRet.f32 %519, 0
  %521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %522 = extractvalue %dx.types.CBufRet.f32 %521, 0
  %523 = fmul fast float %522, %520
  %524 = fsub fast float %515, %517
  %525 = fsub fast float %516, %518
  %526 = extractvalue %dx.types.CBufRet.f32 %507, 0
  %527 = extractvalue %dx.types.CBufRet.f32 %507, 1
  %528 = fmul fast float %526, %524
  %529 = fmul fast float %527, %525
  %530 = fmul fast float %528, %528
  %531 = fmul fast float %529, %529
  %532 = fadd fast float %530, %531
  %533 = call float @dx.op.unary.f32(i32 24, float %532)  ; Sqrt(value)
  %534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %535 = extractvalue %dx.types.CBufRet.f32 %534, 3
  %536 = fmul fast float %535, %533
  %537 = call float @dx.op.unary.f32(i32 7, float %536)  ; Saturate(value)
  %538 = extractvalue %dx.types.CBufRet.f32 %534, 2
  %539 = fsub fast float %538, %523
  %540 = fmul fast float %539, %537
  %541 = extractvalue %dx.types.CBufRet.f32 %521, 1
  %542 = fsub fast float %256, %523
  %543 = fsub fast float %542, %541
  %544 = fsub fast float %543, %540
  %545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %546 = extractvalue %dx.types.CBufRet.f32 %545, 2
  %547 = fsub fast float %544, %546
  %548 = fcmp fast olt float %547, 0.000000e+00
  %549 = call float @dx.op.unary.f32(i32 6, float %547)  ; FAbs(value)
  %550 = extractvalue %dx.types.CBufRet.i32 %502, 0
  %551 = icmp eq i32 %550, 0
  br i1 %551, label %605, label %552

; <label>:552                                     ; preds = %506
  br label %553

; <label>:553                                     ; preds = %592, %552
  %554 = phi i32 [ %598, %592 ], [ 1, %552 ]
  %555 = phi float [ %600, %592 ], [ 0x47EFFFFFE0000000, %552 ]
  %556 = phi i32 [ %601, %592 ], [ 0, %552 ]
  %557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %558 = extractvalue %dx.types.CBufRet.f32 %557, 1
  %559 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %560 = extractvalue %dx.types.CBufRet.i32 %559, 1
  %561 = and i32 %560, 8
  %562 = icmp eq i32 %561, 0
  %563 = fcmp fast ogt float %558, %544
  %564 = or i1 %563, %562
  %565 = add i32 %556, 171
  %566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 %565)  ; CBufferLoadLegacy(handle,regIndex)
  %567 = extractvalue %dx.types.CBufRet.f32 %566, 0
  %568 = extractvalue %dx.types.CBufRet.f32 %566, 1
  %569 = extractvalue %dx.types.CBufRet.f32 %566, 2
  br i1 %564, label %570, label %576, !dx.controlflow.hints !50

; <label>:570                                     ; preds = %553
  %571 = fsub fast float %567, %254
  %572 = fsub fast float %568, %255
  %573 = fmul fast float %571, %571
  %574 = fmul fast float %572, %572
  %575 = fadd fast float %573, %574
  br label %592

; <label>:576                                     ; preds = %553
  %577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %578 = extractvalue %dx.types.CBufRet.f32 %577, 2
  %579 = extractvalue %dx.types.CBufRet.f32 %557, 2
  %580 = fmul fast float %579, %578
  %581 = fsub fast float %580, %558
  %582 = fdiv fast float %569, %581
  %583 = fsub fast float %254, %567
  %584 = fsub fast float %255, %568
  %585 = fsub fast float %544, %558
  %586 = fmul fast float %582, %585
  %587 = fmul fast float %583, %583
  %588 = fmul fast float %584, %584
  %589 = fadd fast float %587, %588
  %590 = fmul fast float %586, %586
  %591 = fadd fast float %589, %590
  br label %592

; <label>:592                                     ; preds = %576, %570
  %593 = phi float [ %575, %570 ], [ %591, %576 ]
  %594 = call float @dx.op.unary.f32(i32 24, float %593)  ; Sqrt(value)
  %595 = fsub float %569, %594
  %596 = fcmp fast olt float %595, 0.000000e+00
  %597 = zext i1 %596 to i32
  %598 = and i32 %597, %554
  %599 = call float @dx.op.unary.f32(i32 6, float %595)  ; FAbs(value)
  %600 = call float @dx.op.binary.f32(i32 36, float %555, float %599)  ; FMin(a,b)
  %601 = add i32 %556, 1
  %602 = extractvalue %dx.types.CBufRet.i32 %559, 0
  %603 = icmp ult i32 %601, %602
  br i1 %603, label %553, label %604

; <label>:604                                     ; preds = %592
  br label %605

; <label>:605                                     ; preds = %604, %506
  %606 = phi i32 [ 1, %506 ], [ %598, %604 ]
  %607 = phi float [ 0x47EFFFFFE0000000, %506 ], [ %600, %604 ]
  br label %608

; <label>:608                                     ; preds = %608, %605
  %609 = phi i32 [ %606, %605 ], [ %648, %608 ]
  %610 = phi float [ 0x47EFFFFFE0000000, %605 ], [ %650, %608 ]
  %611 = phi i32 [ 0, %605 ], [ %651, %608 ]
  %612 = add nuw nsw i32 %611, 191
  %613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 %612)  ; CBufferLoadLegacy(handle,regIndex)
  %614 = extractvalue %dx.types.CBufRet.f32 %613, 0
  %615 = extractvalue %dx.types.CBufRet.f32 %613, 1
  %616 = extractvalue %dx.types.CBufRet.f32 %613, 2
  %617 = add nuw nsw i32 %611, 195
  %618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 %617)  ; CBufferLoadLegacy(handle,regIndex)
  %619 = extractvalue %dx.types.CBufRet.f32 %618, 0
  %620 = extractvalue %dx.types.CBufRet.f32 %618, 1
  %621 = extractvalue %dx.types.CBufRet.f32 %618, 2
  %622 = fsub fast float %254, %614
  %623 = fsub fast float %255, %615
  %624 = fsub fast float %544, %616
  %625 = call float @dx.op.unary.f32(i32 6, float %622)  ; FAbs(value)
  %626 = call float @dx.op.unary.f32(i32 6, float %623)  ; FAbs(value)
  %627 = call float @dx.op.unary.f32(i32 6, float %624)  ; FAbs(value)
  %628 = fsub fast float %625, %619
  %629 = fsub fast float %626, %620
  %630 = fsub fast float %627, %621
  %631 = call float @dx.op.binary.f32(i32 35, float %628, float 0.000000e+00)  ; FMax(a,b)
  %632 = call float @dx.op.binary.f32(i32 35, float %629, float 0.000000e+00)  ; FMax(a,b)
  %633 = call float @dx.op.binary.f32(i32 35, float %630, float 0.000000e+00)  ; FMax(a,b)
  %634 = fmul fast float %631, %631
  %635 = fmul fast float %632, %632
  %636 = fadd fast float %635, %634
  %637 = fmul fast float %633, %633
  %638 = fadd fast float %636, %637
  %639 = call float @dx.op.unary.f32(i32 24, float %638)  ; Sqrt(value)
  %640 = call float @dx.op.binary.f32(i32 35, float %629, float %630)  ; FMax(a,b)
  %641 = call float @dx.op.binary.f32(i32 35, float %628, float %640)  ; FMax(a,b)
  %642 = call float @dx.op.binary.f32(i32 36, float %641, float 0.000000e+00)  ; FMin(a,b)
  %643 = fadd fast float %642, %639
  %644 = fsub fast float -0.000000e+00, %643
  %645 = fcmp ogt float %643, -0.000000e+00
  %646 = icmp ne i32 %609, 0
  %647 = and i1 %646, %645
  %648 = zext i1 %647 to i32
  %649 = call float @dx.op.unary.f32(i32 6, float %644)  ; FAbs(value)
  %650 = call float @dx.op.binary.f32(i32 36, float %610, float %649)  ; FMin(a,b)
  %651 = add nuw nsw i32 %611, 1
  %652 = icmp eq i32 %651, 4
  br i1 %652, label %653, label %608

; <label>:653                                     ; preds = %608
  %654 = call float @dx.op.binary.f32(i32 36, float %549, float %650)  ; FMin(a,b)
  %655 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %656 = extractvalue %dx.types.CBufRet.i32 %655, 1
  %657 = and i32 %656, 2
  %658 = icmp ne i32 %657, 0
  %659 = xor i1 %647, %658
  %660 = call float @dx.op.binary.f32(i32 36, float %654, float %607)  ; FMin(a,b)
  %661 = and i1 %659, %548
  %662 = zext i1 %661 to i32
  br label %663

; <label>:663                                     ; preds = %653, %501
  %664 = phi i32 [ %251, %501 ], [ %662, %653 ]
  %665 = phi float [ 0.000000e+00, %501 ], [ %660, %653 ]
  %666 = phi float [ %256, %501 ], [ %544, %653 ]
  %667 = icmp ne i32 %664, 0
  %668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %669 = extractvalue %dx.types.CBufRet.f32 %668, 3
  %670 = call float @dx.op.binary.f32(i32 35, float %665, float %669)  ; FMax(a,b)
  %671 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %670)  ; FMin(a,b)
  %672 = zext i1 %667 to i32
  br label %673

; <label>:673                                     ; preds = %663, %497
  %674 = phi i32 [ %664, %663 ], [ %251, %497 ]
  %675 = phi float [ %666, %663 ], [ %252, %497 ]
  %676 = phi float [ %671, %663 ], [ 0x47EFFFFFE0000000, %497 ]
  %677 = phi i32 [ %672, %663 ], [ 0, %497 ]
  %678 = extractvalue %dx.types.CBufRet.f32 %265, 2
  %679 = fmul fast float %678, %257
  %680 = call float @dx.op.unary.f32(i32 23, float %679)  ; Log(value)
  %681 = fmul fast float %680, 0x3FE62E4300000000
  %682 = call float @dx.op.binary.f32(i32 35, float %681, float 1.000000e+00)  ; FMax(a,b)
  %683 = fmul fast float %682, %676
  %684 = call float @dx.op.binary.f32(i32 36, float %683, float %498)  ; FMin(a,b)
  %685 = call float @dx.op.binary.f32(i32 35, float %684, float %266)  ; FMax(a,b)
  %686 = fsub fast float %227, %257
  %687 = fadd fast float %686, 0x3F1A36E2E0000000
  %688 = call float @dx.op.binary.f32(i32 36, float %687, float %685)  ; FMin(a,b)
  %689 = icmp eq i32 %439, 0
  br i1 %689, label %786, label %690, !dx.controlflow.hints !51

; <label>:690                                     ; preds = %673
  %691 = fcmp fast olt float %687, %685
  %692 = fmul fast float %33, %62
  %693 = fmul fast float %692, %688
  %694 = fadd fast float %693, %256
  %695 = fmul fast float %34, %62
  %696 = fmul fast float %695, %688
  %697 = fadd fast float %696, %256
  %698 = fmul fast float %35, %62
  %699 = fmul fast float %698, %688
  %700 = fadd fast float %699, %256
  br i1 %691, label %701, label %706, !dx.controlflow.hints !52

; <label>:701                                     ; preds = %690
  %702 = fmul fast float %688, %60
  %703 = fmul fast float %688, %61
  %704 = fadd fast float %702, %254
  %705 = fadd fast float %703, %255
  br label %706

; <label>:706                                     ; preds = %701, %690
  %707 = phi float [ %704, %701 ], [ %254, %690 ]
  %708 = phi float [ %705, %701 ], [ %255, %690 ]
  %709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %710 = extractvalue %dx.types.CBufRet.f32 %709, 0
  %711 = extractvalue %dx.types.CBufRet.f32 %709, 1
  %712 = fsub fast float %707, %710
  %713 = fsub fast float %708, %711
  %714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %715 = extractvalue %dx.types.CBufRet.f32 %714, 0
  %716 = extractvalue %dx.types.CBufRet.f32 %714, 1
  %717 = fmul fast float %712, %715
  %718 = fmul fast float %713, %716
  %719 = fsub fast float 1.000000e+00, %718
  %720 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %721 = extractvalue %dx.types.CBufRet.i32 %720, 3
  %722 = icmp eq i32 %721, 0
  br i1 %722, label %729, label %723, !dx.controlflow.hints !40

; <label>:723                                     ; preds = %706
  %724 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %11, float %717, float %719, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %725 = extractvalue %dx.types.ResRet.f32 %724, 0
  %726 = extractvalue %dx.types.ResRet.f32 %724, 1
  %727 = extractvalue %dx.types.ResRet.f32 %724, 2
  %728 = extractvalue %dx.types.ResRet.f32 %724, 3
  br label %735

; <label>:729                                     ; preds = %706
  %730 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %12, float %717, float %719, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %731 = extractvalue %dx.types.ResRet.f32 %730, 0
  %732 = extractvalue %dx.types.ResRet.f32 %730, 1
  %733 = extractvalue %dx.types.ResRet.f32 %730, 2
  %734 = extractvalue %dx.types.ResRet.f32 %730, 3
  br label %735

; <label>:735                                     ; preds = %729, %723
  %736 = phi float [ %725, %723 ], [ %731, %729 ]
  %737 = phi float [ %726, %723 ], [ %732, %729 ]
  %738 = phi float [ %727, %723 ], [ %733, %729 ]
  %739 = phi float [ %728, %723 ], [ %734, %729 ]
  %740 = extractvalue %dx.types.CBufRet.f32 %714, 3
  %741 = fmul fast float %740, %737
  %742 = fmul fast float %741, %736
  %743 = fsub fast float %741, %742
  %744 = fcmp fast ole float %743, 0.000000e+00
  %745 = extractvalue %dx.types.CBufRet.f32 %709, 2
  %746 = fadd fast float %742, %745
  %747 = fmul fast float %740, %738
  %748 = fadd fast float %747, %745
  %749 = fdiv fast float 1.000000e+00, %743
  %750 = select i1 %744, float 1.000000e+06, float %749
  %751 = fsub fast float %694, %746
  %752 = fmul fast float %750, %751
  %753 = call float @dx.op.unary.f32(i32 7, float %752)  ; Saturate(value)
  %754 = extractvalue %dx.types.CBufRet.f32 %714, 2
  %755 = fmul fast float %754, %753
  %756 = fsub fast float %754, %755
  %757 = fcmp fast olt float %694, %748
  %758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %759 = extractvalue %dx.types.CBufRet.f32 %758, 3
  %760 = select i1 %757, float %759, float 1.000000e+00
  %761 = fmul fast float %756, %760
  %762 = fsub fast float %697, %746
  %763 = fmul fast float %750, %762
  %764 = call float @dx.op.unary.f32(i32 7, float %763)  ; Saturate(value)
  %765 = fmul fast float %754, %764
  %766 = fsub fast float %754, %765
  %767 = fcmp fast olt float %697, %748
  %768 = select i1 %767, float %759, float 1.000000e+00
  %769 = fmul fast float %766, %768
  %770 = fadd fast float %769, %761
  %771 = fsub fast float %700, %746
  %772 = fmul fast float %750, %771
  %773 = call float @dx.op.unary.f32(i32 7, float %772)  ; Saturate(value)
  %774 = fmul fast float %754, %773
  %775 = fsub fast float %754, %774
  %776 = fcmp fast olt float %700, %748
  %777 = select i1 %776, float %759, float 1.000000e+00
  %778 = fmul fast float %775, %777
  %779 = fadd fast float %770, %778
  %780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %781 = extractvalue %dx.types.CBufRet.f32 %780, 2
  %782 = fmul fast float %688, 0x3FD5555560000000
  %783 = fmul fast float %782, %739
  %784 = fmul fast float %783, %781
  %785 = fmul fast float %784, %779
  br label %786

; <label>:786                                     ; preds = %735, %673
  %787 = phi float [ %785, %735 ], [ 0.000000e+00, %673 ]
  %788 = icmp eq i32 %499, 0
  br i1 %788, label %969, label %789, !dx.controlflow.hints !53

; <label>:789                                     ; preds = %786
  %790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %791 = extractvalue %dx.types.CBufRet.f32 %790, 3
  %792 = fmul fast float %791, %257
  %793 = fcmp fast oeq float %792, 0.000000e+00
  br i1 %793, label %808, label %794, !dx.controlflow.hints !54

; <label>:794                                     ; preds = %789
  %795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %796 = extractvalue %dx.types.CBufRet.f32 %795, 3
  %797 = fmul fast float %796, %792
  %798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %799 = extractvalue %dx.types.CBufRet.f32 %798, 0
  %800 = extractvalue %dx.types.CBufRet.f32 %798, 1
  %801 = extractvalue %dx.types.CBufRet.f32 %798, 2
  %802 = fmul fast float %799, %797
  %803 = fmul fast float %800, %797
  %804 = fmul fast float %801, %797
  %805 = call float @dx.op.unary.f32(i32 23, float %802)  ; Log(value)
  %806 = call float @dx.op.unary.f32(i32 23, float %803)  ; Log(value)
  %807 = call float @dx.op.unary.f32(i32 23, float %804)  ; Log(value)
  br label %808

; <label>:808                                     ; preds = %794, %789
  %809 = phi float [ %805, %794 ], [ 0.000000e+00, %789 ]
  %810 = phi float [ %806, %794 ], [ 0.000000e+00, %789 ]
  %811 = phi float [ %807, %794 ], [ 0.000000e+00, %789 ]
  %812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %813 = extractvalue %dx.types.CBufRet.f32 %812, 0
  %814 = extractvalue %dx.types.CBufRet.f32 %812, 1
  %815 = extractvalue %dx.types.CBufRet.f32 %812, 2
  %816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %817 = extractvalue %dx.types.CBufRet.f32 %816, 0
  %818 = extractvalue %dx.types.CBufRet.f32 %816, 1
  %819 = extractvalue %dx.types.CBufRet.f32 %816, 2
  %820 = fsub fast float %254, %817
  %821 = fsub fast float %255, %818
  %822 = fsub fast float %256, %819
  %823 = fmul fast float %820, %813
  %824 = fmul fast float %821, %814
  %825 = fmul fast float %822, %815
  %826 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %827 = extractvalue %dx.types.CBufRet.i32 %826, 0
  %828 = extractvalue %dx.types.CBufRet.i32 %826, 1
  %829 = uitofp i32 %827 to float
  %830 = uitofp i32 %828 to float
  %831 = fmul fast float %823, %829
  %832 = fmul fast float %824, %830
  %833 = fadd fast float %831, 5.000000e-01
  %834 = fadd fast float %832, 5.000000e-01
  %835 = call float @dx.op.unary.f32(i32 22, float %833)  ; Frc(value)
  %836 = call float @dx.op.unary.f32(i32 22, float %834)  ; Frc(value)
  %837 = call float @dx.op.unary.f32(i32 27, float %833)  ; Round_ni(value)
  %838 = call float @dx.op.unary.f32(i32 27, float %834)  ; Round_ni(value)
  %839 = fadd fast float %837, 1.000000e+00
  %840 = fadd fast float %838, 1.000000e+00
  %841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %842 = extractvalue %dx.types.CBufRet.f32 %841, 0
  %843 = extractvalue %dx.types.CBufRet.f32 %841, 1
  %844 = fmul fast float %842, %839
  %845 = fmul fast float %843, %840
  %846 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %11, float %844, float %845, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %847 = extractvalue %dx.types.ResRet.f32 %846, 0
  %848 = extractvalue %dx.types.ResRet.f32 %846, 1
  %849 = extractvalue %dx.types.ResRet.f32 %846, 2
  %850 = extractvalue %dx.types.ResRet.f32 %846, 3
  %851 = extractvalue %dx.types.CBufRet.i32 %826, 2
  %852 = extractvalue %dx.types.CBufRet.f32 %841, 2
  %853 = uitofp i32 %851 to float
  %854 = fadd fast float %853, -1.000000e+00
  %855 = fmul fast float %854, %847
  %856 = fmul fast float %854, %848
  %857 = fmul fast float %854, %849
  %858 = fmul fast float %854, %850
  %859 = fadd fast float %855, 5.000000e-01
  %860 = fadd fast float %856, 5.000000e-01
  %861 = fadd fast float %857, 5.000000e-01
  %862 = fadd fast float %858, 5.000000e-01
  %863 = fptoui float %859 to i32
  %864 = fptoui float %860 to i32
  %865 = fptoui float %861 to i32
  %866 = fptoui float %862 to i32
  %867 = uitofp i32 %863 to float
  %868 = uitofp i32 %864 to float
  %869 = uitofp i32 %865 to float
  %870 = uitofp i32 %866 to float
  %871 = fadd fast float %867, 5.000000e-01
  %872 = fadd fast float %868, 5.000000e-01
  %873 = fadd fast float %869, 5.000000e-01
  %874 = fadd fast float %870, 5.000000e-01
  %875 = fmul fast float %871, %852
  %876 = fmul fast float %872, %852
  %877 = fmul fast float %873, %852
  %878 = fmul fast float %874, %852
  %879 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %12, float %875, float %825, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %880 = extractvalue %dx.types.ResRet.f32 %879, 0
  %881 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %12, float %876, float %825, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %882 = extractvalue %dx.types.ResRet.f32 %881, 0
  %883 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %12, float %877, float %825, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %884 = extractvalue %dx.types.ResRet.f32 %883, 0
  %885 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %12, float %878, float %825, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %886 = extractvalue %dx.types.ResRet.f32 %885, 0
  %887 = fsub fast float %884, %886
  %888 = fmul fast float %887, %835
  %889 = fadd fast float %888, %886
  %890 = fsub fast float %882, %880
  %891 = fmul fast float %890, %835
  %892 = fadd fast float %891, %880
  %893 = fsub fast float %892, %889
  %894 = fmul fast float %893, %836
  %895 = fadd fast float %894, %889
  %896 = fcmp fast ogt float %895, 0.000000e+00
  br i1 %896, label %897, label %965, !dx.controlflow.hints !55

; <label>:897                                     ; preds = %808
  %898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %899 = extractvalue %dx.types.CBufRet.f32 %898, 0
  %900 = extractvalue %dx.types.CBufRet.f32 %898, 1
  %901 = extractvalue %dx.types.CBufRet.f32 %898, 2
  %902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %903 = extractvalue %dx.types.CBufRet.f32 %902, 0
  %904 = extractvalue %dx.types.CBufRet.f32 %902, 1
  %905 = extractvalue %dx.types.CBufRet.f32 %902, 2
  %906 = fmul fast float %821, %813
  %907 = fmul fast float %822, %813
  %908 = fadd fast float %823, %903
  %909 = fadd fast float %906, %904
  %910 = fadd fast float %907, %905
  %911 = fmul fast float %908, %899
  %912 = fmul fast float %909, %899
  %913 = fmul fast float %910, %899
  %914 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %9, float %911, float %912, float %913, float undef, i32 0, i32 0, i32 0, float %809)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %915 = extractvalue %dx.types.ResRet.f32 %914, 0
  %916 = fmul fast float %908, %900
  %917 = fmul fast float %909, %900
  %918 = fmul fast float %910, %900
  %919 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %9, float %916, float %917, float %918, float undef, i32 0, i32 0, i32 0, float %810)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %920 = extractvalue %dx.types.ResRet.f32 %919, 1
  %921 = fmul fast float %908, %901
  %922 = fmul fast float %909, %901
  %923 = fmul fast float %910, %901
  %924 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %9, float %921, float %922, float %923, float undef, i32 0, i32 0, i32 0, float %811)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %925 = extractvalue %dx.types.ResRet.f32 %924, 2
  %926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %927 = extractvalue %dx.types.CBufRet.f32 %926, 1
  %928 = fmul fast float %920, %915
  %929 = fmul fast float %928, %925
  %930 = call float @dx.op.unary.f32(i32 23, float %929)  ; Log(value)
  %931 = fmul fast float %930, %927
  %932 = call float @dx.op.unary.f32(i32 21, float %931)  ; Exp(value)
  %933 = extractvalue %dx.types.CBufRet.f32 %926, 2
  %934 = fmul fast float %895, %895
  %935 = fmul fast float %934, %932
  %936 = fmul fast float %935, %933
  %937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %938 = extractvalue %dx.types.CBufRet.f32 %937, 3
  %939 = fmul fast float %938, %936
  %940 = bitcast float %939 to i32
  %941 = sitofp i32 %940 to float
  %942 = fptosi float %941 to i32
  %943 = bitcast i32 %942 to float
  %944 = fsub fast float 1.000000e+00, %936
  %945 = bitcast float %944 to i32
  %946 = sitofp i32 %945 to float
  %947 = fptosi float %946 to i32
  %948 = bitcast i32 %947 to float
  %949 = fadd fast float %943, %948
  %950 = bitcast float %949 to i32
  %951 = sub nsw i32 2129859010, %950
  %952 = bitcast i32 %951 to float
  %953 = fmul fast float %952, %943
  %954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %955 = extractvalue %dx.types.CBufRet.f32 %954, 3
  %956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %957 = extractvalue %dx.types.CBufRet.f32 %956, 0
  %958 = fmul fast float %953, %957
  %959 = fadd fast float %958, 1.000000e+00
  %960 = bitcast float %959 to i32
  %961 = sub nsw i32 2129859010, %960
  %962 = bitcast i32 %961 to float
  %963 = fmul fast float %953, %955
  %964 = fmul fast float %963, %962
  br label %965

; <label>:965                                     ; preds = %897, %808
  %966 = phi float [ %964, %897 ], [ %895, %808 ]
  %967 = fmul fast float %966, %688
  %968 = fadd fast float %967, %787
  br label %969

; <label>:969                                     ; preds = %965, %786
  %970 = phi float [ %968, %965 ], [ %787, %786 ]
  %971 = icmp eq i32 %677, 0
  br i1 %971, label %1003, label %972, !dx.controlflow.hints !56

; <label>:972                                     ; preds = %969
  %973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %974 = extractvalue %dx.types.CBufRet.f32 %973, 1
  %975 = fsub fast float %688, %974
  %976 = extractvalue %dx.types.CBufRet.f32 %973, 3
  %977 = fmul fast float %975, %976
  %978 = call float @dx.op.unary.f32(i32 7, float %977)  ; Saturate(value)
  %979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %980 = extractvalue %dx.types.CBufRet.f32 %979, 3
  %981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %982 = extractvalue %dx.types.CBufRet.f32 %981, 2
  %983 = fsub fast float %982, %675
  %984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %985 = extractvalue %dx.types.CBufRet.f32 %984, 3
  %986 = fmul fast float %983, %985
  %987 = call float @dx.op.unary.f32(i32 7, float %986)  ; Saturate(value)
  %988 = fmul fast float %987, %980
  %989 = extractvalue %dx.types.CBufRet.f32 %984, 0
  %990 = fsub fast float %257, %989
  %991 = extractvalue %dx.types.CBufRet.f32 %984, 1
  %992 = fmul fast float %990, %991
  %993 = call float @dx.op.unary.f32(i32 7, float %992)  ; Saturate(value)
  %994 = fsub fast float 1.000000e+00, %978
  %995 = fmul fast float %993, %994
  %996 = fadd fast float %995, %978
  %997 = extractvalue %dx.types.CBufRet.f32 %973, 0
  %998 = fsub fast float %988, %997
  %999 = fmul fast float %998, %996
  %1000 = fadd fast float %999, %997
  %1001 = fmul fast float %1000, %688
  %1002 = fadd fast float %1001, %970
  br label %1003

; <label>:1003                                    ; preds = %972, %969
  %1004 = phi float [ %1002, %972 ], [ %970, %969 ]
  %1005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1006 = extractvalue %dx.types.CBufRet.f32 %1005, 1
  %1007 = fcmp fast ogt float %1004, %1006
  br i1 %1007, label %1008, label %1020, !dx.controlflow.hints !57

; <label>:1008                                    ; preds = %1003
  %1009 = fmul fast float %1004, 0xBFF7154760000000
  %1010 = call float @dx.op.unary.f32(i32 21, float %1009)  ; Exp(value)
  %1011 = call float @dx.op.unary.f32(i32 7, float %1010)  ; Saturate(value)
  %1012 = icmp eq i32 %259, 0
  br i1 %1012, label %1013, label %1014, !dx.controlflow.hints !58

; <label>:1013                                    ; preds = %1008
  br label %1014

; <label>:1014                                    ; preds = %1013, %1008
  %1015 = phi i32 [ %259, %1008 ], [ 1, %1013 ]
  %1016 = phi float [ %260, %1008 ], [ %257, %1013 ]
  %1017 = fadd fast float %688, %261
  %1018 = fadd fast float %1004, %262
  %1019 = fmul fast float %1011, %253
  br label %1020

; <label>:1020                                    ; preds = %1014, %1003
  %1021 = phi float [ %1019, %1014 ], [ %253, %1003 ]
  %1022 = phi i32 [ %1015, %1014 ], [ %259, %1003 ]
  %1023 = phi float [ %1016, %1014 ], [ %260, %1003 ]
  %1024 = phi float [ %1017, %1014 ], [ %261, %1003 ]
  %1025 = phi float [ %1018, %1014 ], [ %262, %1003 ]
  %1026 = fadd fast float %688, %257
  %1027 = fmul fast float %688, %60
  %1028 = fmul fast float %688, %61
  %1029 = fmul fast float %688, %62
  %1030 = fadd fast float %1027, %254
  %1031 = fadd fast float %1028, %255
  %1032 = fadd fast float %1029, %256
  %1033 = fcmp fast olt float %1026, %227
  %1034 = extractvalue %dx.types.CBufRet.f32 %1005, 2
  %1035 = fcmp fast olt float %1034, %1021
  %1036 = and i1 %1033, %1035
  br i1 %1036, label %250, label %1037

; <label>:1037                                    ; preds = %1020
  br label %1038

; <label>:1038                                    ; preds = %1037, %223
  %1039 = phi float [ 0.000000e+00, %223 ], [ %1023, %1037 ]
  %1040 = phi float [ 0.000000e+00, %223 ], [ %1024, %1037 ]
  %1041 = phi float [ 0.000000e+00, %223 ], [ %1025, %1037 ]
  %1042 = extractvalue %dx.types.CBufRet.f32 %54, 3
  %1043 = fmul fast float %1042, %1039
  %1044 = fdiv fast float 1.000000e+00, %1040
  %1045 = fmul fast float %1044, %1041
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %15, i32 %16, i32 undef, float %1043, float %1045, float %1041, float %1043, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!24 = !{void ()* @cs_fog_raymarching_clouds_heightmap_brfog, !"cs_fog_raymarching_clouds_heightmap_brfog", null, !4, !25}
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
!40 = distinct !{!40, !"dx.controlflow.hints", i32 1}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 1}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 1}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 1}

