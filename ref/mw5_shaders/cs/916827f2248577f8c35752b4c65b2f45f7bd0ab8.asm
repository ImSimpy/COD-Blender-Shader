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
; shader hash: 5afe224795e7e276fc17eb30ca71ceb7
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

define void @cs_max_depth() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %7 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %8 = alloca [4 x float], align 4
  %9 = alloca [4 x float], align 4
  %10 = shl i32 %6, 3
  %11 = shl i32 %7, 3
  %12 = uitofp i32 %10 to float
  %13 = uitofp i32 %11 to float
  %14 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %15 = extractvalue %dx.types.CBufRet.f32 %14, 2
  %16 = extractvalue %dx.types.CBufRet.f32 %14, 3
  %17 = fmul fast float %15, %12
  %18 = fmul fast float %16, %13
  %19 = getelementptr [4 x float], [4 x float]* %8, i32 0, i32 0
  %20 = getelementptr [4 x float], [4 x float]* %9, i32 0, i32 0
  store float 0.000000e+00, float* %19, align 4
  store float 0.000000e+00, float* %20, align 4
  %21 = getelementptr [4 x float], [4 x float]* %8, i32 0, i32 1
  %22 = getelementptr [4 x float], [4 x float]* %9, i32 0, i32 1
  %23 = fmul fast float %15, 4.000000e+00
  store float %23, float* %21, align 4
  store float 0.000000e+00, float* %22, align 4
  %24 = getelementptr [4 x float], [4 x float]* %8, i32 0, i32 2
  %25 = getelementptr [4 x float], [4 x float]* %9, i32 0, i32 2
  %26 = fmul fast float %16, 4.000000e+00
  store float %23, float* %24, align 4
  store float %26, float* %25, align 4
  %27 = getelementptr [4 x float], [4 x float]* %8, i32 0, i32 3
  %28 = getelementptr [4 x float], [4 x float]* %9, i32 0, i32 3
  store float 0.000000e+00, float* %27, align 4
  store float %26, float* %28, align 4
  br label %29

; <label>:29                                      ; preds = %80, %0
  %30 = phi float [ 0.000000e+00, %0 ], [ %84, %80 ]
  %31 = phi float [ 0.000000e+00, %0 ], [ %82, %80 ]
  %32 = phi float [ 1.000000e+00, %0 ], [ %77, %80 ]
  %33 = phi i32 [ 0, %0 ], [ %78, %80 ]
  %34 = fadd fast float %31, %17
  %35 = fadd fast float %30, %18
  %36 = fadd fast float %12, 2.000000e+00
  %37 = fmul fast float %15, %36
  %38 = fadd fast float %37, %31
  %39 = fadd fast float %13, 2.000000e+00
  %40 = fmul fast float %16, %39
  %41 = fadd fast float %40, %30
  %42 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %2, %dx.types.Handle %3, float %34, float %35, float undef, float undef, i32 1, i32 1, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %43 = extractvalue %dx.types.ResRet.f32 %42, 0
  %44 = extractvalue %dx.types.ResRet.f32 %42, 1
  %45 = extractvalue %dx.types.ResRet.f32 %42, 2
  %46 = extractvalue %dx.types.ResRet.f32 %42, 3
  %47 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %2, %dx.types.Handle %3, float %38, float %35, float undef, float undef, i32 1, i32 1, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %48 = extractvalue %dx.types.ResRet.f32 %47, 0
  %49 = extractvalue %dx.types.ResRet.f32 %47, 1
  %50 = extractvalue %dx.types.ResRet.f32 %47, 2
  %51 = extractvalue %dx.types.ResRet.f32 %47, 3
  %52 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %2, %dx.types.Handle %3, float %38, float %41, float undef, float undef, i32 1, i32 1, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %53 = extractvalue %dx.types.ResRet.f32 %52, 0
  %54 = extractvalue %dx.types.ResRet.f32 %52, 1
  %55 = extractvalue %dx.types.ResRet.f32 %52, 2
  %56 = extractvalue %dx.types.ResRet.f32 %52, 3
  %57 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %2, %dx.types.Handle %3, float %34, float %41, float undef, float undef, i32 1, i32 1, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %58 = extractvalue %dx.types.ResRet.f32 %57, 0
  %59 = extractvalue %dx.types.ResRet.f32 %57, 1
  %60 = extractvalue %dx.types.ResRet.f32 %57, 2
  %61 = extractvalue %dx.types.ResRet.f32 %57, 3
  %62 = call float @dx.op.binary.f32(i32 36, float %43, float %48)  ; FMin(a,b)
  %63 = call float @dx.op.binary.f32(i32 36, float %44, float %49)  ; FMin(a,b)
  %64 = call float @dx.op.binary.f32(i32 36, float %45, float %50)  ; FMin(a,b)
  %65 = call float @dx.op.binary.f32(i32 36, float %46, float %51)  ; FMin(a,b)
  %66 = call float @dx.op.binary.f32(i32 36, float %53, float %58)  ; FMin(a,b)
  %67 = call float @dx.op.binary.f32(i32 36, float %54, float %59)  ; FMin(a,b)
  %68 = call float @dx.op.binary.f32(i32 36, float %55, float %60)  ; FMin(a,b)
  %69 = call float @dx.op.binary.f32(i32 36, float %56, float %61)  ; FMin(a,b)
  %70 = call float @dx.op.binary.f32(i32 36, float %62, float %66)  ; FMin(a,b)
  %71 = call float @dx.op.binary.f32(i32 36, float %63, float %67)  ; FMin(a,b)
  %72 = call float @dx.op.binary.f32(i32 36, float %64, float %68)  ; FMin(a,b)
  %73 = call float @dx.op.binary.f32(i32 36, float %65, float %69)  ; FMin(a,b)
  %74 = call float @dx.op.binary.f32(i32 36, float %70, float %72)  ; FMin(a,b)
  %75 = call float @dx.op.binary.f32(i32 36, float %71, float %73)  ; FMin(a,b)
  %76 = call float @dx.op.binary.f32(i32 36, float %74, float %75)  ; FMin(a,b)
  %77 = call float @dx.op.binary.f32(i32 36, float %32, float %76)  ; FMin(a,b)
  %78 = add nuw nsw i32 %33, 1
  %79 = icmp eq i32 %78, 4
  br i1 %79, label %85, label %80

; <label>:80                                      ; preds = %29
  %81 = getelementptr [4 x float], [4 x float]* %8, i32 0, i32 %78
  %82 = load float, float* %81, align 4
  %83 = getelementptr [4 x float], [4 x float]* %9, i32 0, i32 %78
  %84 = load float, float* %83, align 4
  br label %29

; <label>:85                                      ; preds = %29
  %86 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 235)  ; CBufferLoadLegacy(handle,regIndex)
  %87 = extractvalue %dx.types.CBufRet.f32 %86, 0
  %88 = extractvalue %dx.types.CBufRet.f32 %86, 2
  %89 = fcmp fast ogt float %77, 9.843750e-01
  %90 = select i1 %89, float 6.400000e+01, float 0x3FF0410420000000
  %91 = select i1 %89, float -6.300000e+01, float -0.000000e+00
  %92 = select i1 %89, float %87, float %88
  %93 = call float @dx.op.unary.f32(i32 7, float %77)  ; Saturate(value)
  %94 = fmul fast float %93, %90
  %95 = fadd fast float %94, %91
  %96 = call float @dx.op.binary.f32(i32 35, float %95, float 0x3E45798EE0000000)  ; FMax(a,b)
  %97 = fdiv fast float %92, %96
  %98 = fsub fast float -0.000000e+00, %97
  %99 = select i1 %89, float %98, float %97
  %100 = fcmp fast ogt float %99, 0.000000e+00
  %101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %102 = extractvalue %dx.types.CBufRet.f32 %101, 0
  %103 = select i1 %100, float %102, float 1.000000e+00
  %104 = fmul fast float %103, %99
  %105 = fadd fast float %104, -1.000000e+00
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %6, i32 %7, i32 undef, float %105, float %105, float %105, float %105, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!dx.entryPoints = !{!15}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !8, !10, !13}
!5 = !{!6}
!6 = !{i32 0, %"class.Texture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{!9}
!9 = !{i32 0, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 3, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!10 = !{!11, !12}
!11 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!12 = !{i32 1, %hostlayout.FloatZConsts* undef, !"", i32 0, i32 0, i32 1, i32 256, null}
!13 = !{!14}
!14 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!15 = !{void ()* @cs_max_depth, !"cs_max_depth", null, !4, !16}
!16 = !{i32 0, i64 256, i32 4, !17}
!17 = !{i32 8, i32 8, i32 1}

