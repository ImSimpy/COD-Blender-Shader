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
; shader hash: b6bf311f439415f6d879c41fddbec8f7
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
;   [256 x i8] (type annotation not present)
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
;                                   sampler      NA          NA      S0             s1     1
;                                   texture     f32          2d      T0             t0     1
;                                       UAV     f32          2d      U0             u3     1
;                                       UAV     f32          2d      U1             u4     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.RWTexture2D<float>" = type { float }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%hostlayout.FloatZConsts = type { <4 x float>, <4 x float>, float, i32, i32, i32, [4 x <4 x float>], [4 x <4 x float>], [2 x <4 x i32>], <4 x i32>, <4 x i32>, <4 x i32> }
%struct.SamplerState = type { i32 }

define void @cs_min_max_depth() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %8 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %9 = alloca [4 x float], align 4
  %10 = alloca [4 x float], align 4
  %11 = shl i32 %7, 3
  %12 = shl i32 %8, 3
  %13 = uitofp i32 %11 to float
  %14 = uitofp i32 %12 to float
  %15 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %16 = extractvalue %dx.types.CBufRet.f32 %15, 2
  %17 = extractvalue %dx.types.CBufRet.f32 %15, 3
  %18 = fmul fast float %16, %13
  %19 = fmul fast float %17, %14
  %20 = getelementptr [4 x float], [4 x float]* %9, i32 0, i32 0
  %21 = getelementptr [4 x float], [4 x float]* %10, i32 0, i32 0
  store float 0.000000e+00, float* %20, align 4
  store float 0.000000e+00, float* %21, align 4
  %22 = getelementptr [4 x float], [4 x float]* %9, i32 0, i32 1
  %23 = getelementptr [4 x float], [4 x float]* %10, i32 0, i32 1
  %24 = fmul fast float %16, 4.000000e+00
  store float %24, float* %22, align 4
  store float 0.000000e+00, float* %23, align 4
  %25 = getelementptr [4 x float], [4 x float]* %9, i32 0, i32 2
  %26 = getelementptr [4 x float], [4 x float]* %10, i32 0, i32 2
  %27 = fmul fast float %17, 4.000000e+00
  store float %24, float* %25, align 4
  store float %27, float* %26, align 4
  %28 = getelementptr [4 x float], [4 x float]* %9, i32 0, i32 3
  %29 = getelementptr [4 x float], [4 x float]* %10, i32 0, i32 3
  store float 0.000000e+00, float* %28, align 4
  store float %27, float* %29, align 4
  br label %30

; <label>:30                                      ; preds = %98, %0
  %31 = phi float [ 0.000000e+00, %0 ], [ %102, %98 ]
  %32 = phi float [ 0.000000e+00, %0 ], [ %100, %98 ]
  %33 = phi float [ 1.000000e+00, %0 ], [ %94, %98 ]
  %34 = phi float [ 0.000000e+00, %0 ], [ %95, %98 ]
  %35 = phi i32 [ 0, %0 ], [ %96, %98 ]
  %36 = fadd fast float %32, %18
  %37 = fadd fast float %31, %19
  %38 = fadd fast float %13, 2.000000e+00
  %39 = fmul fast float %16, %38
  %40 = fadd fast float %39, %32
  %41 = fadd fast float %14, 2.000000e+00
  %42 = fmul fast float %17, %41
  %43 = fadd fast float %42, %31
  %44 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %3, %dx.types.Handle %4, float %36, float %37, float undef, float undef, i32 1, i32 1, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %45 = extractvalue %dx.types.ResRet.f32 %44, 0
  %46 = extractvalue %dx.types.ResRet.f32 %44, 1
  %47 = extractvalue %dx.types.ResRet.f32 %44, 2
  %48 = extractvalue %dx.types.ResRet.f32 %44, 3
  %49 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %3, %dx.types.Handle %4, float %40, float %37, float undef, float undef, i32 1, i32 1, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %50 = extractvalue %dx.types.ResRet.f32 %49, 0
  %51 = extractvalue %dx.types.ResRet.f32 %49, 1
  %52 = extractvalue %dx.types.ResRet.f32 %49, 2
  %53 = extractvalue %dx.types.ResRet.f32 %49, 3
  %54 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %3, %dx.types.Handle %4, float %40, float %43, float undef, float undef, i32 1, i32 1, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %55 = extractvalue %dx.types.ResRet.f32 %54, 0
  %56 = extractvalue %dx.types.ResRet.f32 %54, 1
  %57 = extractvalue %dx.types.ResRet.f32 %54, 2
  %58 = extractvalue %dx.types.ResRet.f32 %54, 3
  %59 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %3, %dx.types.Handle %4, float %36, float %43, float undef, float undef, i32 1, i32 1, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %60 = extractvalue %dx.types.ResRet.f32 %59, 0
  %61 = extractvalue %dx.types.ResRet.f32 %59, 1
  %62 = extractvalue %dx.types.ResRet.f32 %59, 2
  %63 = extractvalue %dx.types.ResRet.f32 %59, 3
  %64 = call float @dx.op.binary.f32(i32 36, float %45, float %50)  ; FMin(a,b)
  %65 = call float @dx.op.binary.f32(i32 36, float %46, float %51)  ; FMin(a,b)
  %66 = call float @dx.op.binary.f32(i32 36, float %47, float %52)  ; FMin(a,b)
  %67 = call float @dx.op.binary.f32(i32 36, float %48, float %53)  ; FMin(a,b)
  %68 = call float @dx.op.binary.f32(i32 36, float %55, float %60)  ; FMin(a,b)
  %69 = call float @dx.op.binary.f32(i32 36, float %56, float %61)  ; FMin(a,b)
  %70 = call float @dx.op.binary.f32(i32 36, float %57, float %62)  ; FMin(a,b)
  %71 = call float @dx.op.binary.f32(i32 36, float %58, float %63)  ; FMin(a,b)
  %72 = call float @dx.op.binary.f32(i32 36, float %64, float %68)  ; FMin(a,b)
  %73 = call float @dx.op.binary.f32(i32 36, float %65, float %69)  ; FMin(a,b)
  %74 = call float @dx.op.binary.f32(i32 36, float %66, float %70)  ; FMin(a,b)
  %75 = call float @dx.op.binary.f32(i32 36, float %67, float %71)  ; FMin(a,b)
  %76 = call float @dx.op.binary.f32(i32 36, float %72, float %74)  ; FMin(a,b)
  %77 = call float @dx.op.binary.f32(i32 36, float %73, float %75)  ; FMin(a,b)
  %78 = call float @dx.op.binary.f32(i32 36, float %76, float %77)  ; FMin(a,b)
  %79 = call float @dx.op.binary.f32(i32 35, float %45, float %50)  ; FMax(a,b)
  %80 = call float @dx.op.binary.f32(i32 35, float %46, float %51)  ; FMax(a,b)
  %81 = call float @dx.op.binary.f32(i32 35, float %47, float %52)  ; FMax(a,b)
  %82 = call float @dx.op.binary.f32(i32 35, float %48, float %53)  ; FMax(a,b)
  %83 = call float @dx.op.binary.f32(i32 35, float %55, float %60)  ; FMax(a,b)
  %84 = call float @dx.op.binary.f32(i32 35, float %56, float %61)  ; FMax(a,b)
  %85 = call float @dx.op.binary.f32(i32 35, float %57, float %62)  ; FMax(a,b)
  %86 = call float @dx.op.binary.f32(i32 35, float %58, float %63)  ; FMax(a,b)
  %87 = call float @dx.op.binary.f32(i32 35, float %79, float %83)  ; FMax(a,b)
  %88 = call float @dx.op.binary.f32(i32 35, float %80, float %84)  ; FMax(a,b)
  %89 = call float @dx.op.binary.f32(i32 35, float %81, float %85)  ; FMax(a,b)
  %90 = call float @dx.op.binary.f32(i32 35, float %82, float %86)  ; FMax(a,b)
  %91 = call float @dx.op.binary.f32(i32 35, float %87, float %89)  ; FMax(a,b)
  %92 = call float @dx.op.binary.f32(i32 35, float %88, float %90)  ; FMax(a,b)
  %93 = call float @dx.op.binary.f32(i32 35, float %91, float %92)  ; FMax(a,b)
  %94 = call float @dx.op.binary.f32(i32 36, float %33, float %78)  ; FMin(a,b)
  %95 = call float @dx.op.binary.f32(i32 35, float %34, float %93)  ; FMax(a,b)
  %96 = add nuw nsw i32 %35, 1
  %97 = icmp eq i32 %96, 4
  br i1 %97, label %103, label %98

; <label>:98                                      ; preds = %30
  %99 = getelementptr [4 x float], [4 x float]* %9, i32 0, i32 %96
  %100 = load float, float* %99, align 4
  %101 = getelementptr [4 x float], [4 x float]* %10, i32 0, i32 %96
  %102 = load float, float* %101, align 4
  br label %30

; <label>:103                                     ; preds = %30
  %104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 235)  ; CBufferLoadLegacy(handle,regIndex)
  %105 = extractvalue %dx.types.CBufRet.f32 %104, 0
  %106 = extractvalue %dx.types.CBufRet.f32 %104, 2
  %107 = fcmp fast ogt float %94, 9.843750e-01
  %108 = select i1 %107, float 6.400000e+01, float 0x3FF0410420000000
  %109 = select i1 %107, float -6.300000e+01, float -0.000000e+00
  %110 = select i1 %107, float %105, float %106
  %111 = call float @dx.op.unary.f32(i32 7, float %94)  ; Saturate(value)
  %112 = fmul fast float %111, %108
  %113 = fadd fast float %112, %109
  %114 = call float @dx.op.binary.f32(i32 35, float %113, float 0x3E45798EE0000000)  ; FMax(a,b)
  %115 = fdiv fast float %110, %114
  %116 = fcmp fast ogt float %95, 9.843750e-01
  %117 = select i1 %116, float 6.400000e+01, float 0x3FF0410420000000
  %118 = select i1 %116, float -6.300000e+01, float -0.000000e+00
  %119 = select i1 %116, float %105, float %106
  %120 = call float @dx.op.unary.f32(i32 7, float %95)  ; Saturate(value)
  %121 = fmul fast float %120, %117
  %122 = fadd fast float %121, %118
  %123 = call float @dx.op.binary.f32(i32 35, float %122, float 0x3E45798EE0000000)  ; FMax(a,b)
  %124 = fdiv fast float %119, %123
  %125 = fsub fast float -0.000000e+00, %115
  %126 = select i1 %107, float %125, float %115
  %127 = fcmp fast ogt float %126, 0.000000e+00
  %128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %129 = extractvalue %dx.types.CBufRet.f32 %128, 0
  %130 = select i1 %127, float %129, float 1.000000e+00
  %131 = fmul fast float %130, %126
  %132 = fadd fast float %131, -1.000000e+00
  %133 = fsub fast float -0.000000e+00, %124
  %134 = select i1 %116, float %133, float %124
  %135 = fcmp fast ogt float %134, 0.000000e+00
  %136 = select i1 %135, float %129, float 1.000000e+00
  %137 = fmul fast float %136, %134
  %138 = fadd fast float %137, -1.000000e+00
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %7, i32 %8, i32 undef, float %132, float %132, float %132, float %132, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %7, i32 %8, i32 undef, float %138, float %138, float %138, float %138, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind }

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
!4 = !{!5, !8, !11, !14}
!5 = !{!6}
!6 = !{i32 0, %"class.Texture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{!9, !10}
!9 = !{i32 0, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 3, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!10 = !{i32 1, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 4, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!11 = !{!12, !13}
!12 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!13 = !{i32 1, %hostlayout.FloatZConsts* undef, !"", i32 0, i32 0, i32 1, i32 256, null}
!14 = !{!15}
!15 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!16 = !{void ()* @cs_min_max_depth, !"cs_min_max_depth", null, !4, !17}
!17 = !{i32 0, i64 256, i32 4, !18}
!18 = !{i32 8, i32 8, i32 1}

