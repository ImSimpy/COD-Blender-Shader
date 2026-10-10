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
; shader hash: 7c8ec5e5ba9c6150a222ed17f1ea215e
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
;   [96 x i8] (type annotation not present)
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
;                                   texture     f32          2d      T0            t11     1
;                                   texture     f32          2d      T1            t14     1
;                                   texture     f32          2d      T2             t6     1
;                                       UAV     f32          2d      U0             u4     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.RWTexture2D<vector<float, 2> >" = type { <2 x float> }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%ConstantBufferGTAO0 = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, i32, i32, i32, i32 }
%struct.SamplerState = type { i32 }

@"\01?gtaoQuadDiscontinuity@@3PAMA" = external addrspace(3) global [64 x float], align 4
@"\01?gtaoQuadMaxUint@@3IA" = external addrspace(3) global i32, align 4
@"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim" = addrspace(3) global [128 x float] undef, align 4

define void @cs_gtao_prepass() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %9 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %10 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %11 = alloca [4 x float], align 4
  %12 = alloca [4 x float], align 4
  %13 = alloca [4 x float], align 4
  %14 = alloca [4 x float], align 4
  %15 = alloca [4 x float], align 4
  %16 = alloca [4 x float], align 4
  %17 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %18 = extractvalue %dx.types.CBufRet.f32 %17, 2
  %19 = extractvalue %dx.types.CBufRet.f32 %17, 3
  %20 = uitofp i32 %8 to float
  %21 = uitofp i32 %9 to float
  %22 = fmul fast float %20, 2.000000e+00
  %23 = fmul fast float %22, %18
  %24 = fmul fast float %21, 2.000000e+00
  %25 = fmul fast float %24, %19
  %26 = fadd fast float %23, %18
  %27 = fadd fast float %25, %19
  %28 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %5, float %26, float %27, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %29 = extractvalue %dx.types.ResRet.f32 %28, 0
  %30 = extractvalue %dx.types.ResRet.f32 %28, 1
  %31 = extractvalue %dx.types.ResRet.f32 %28, 2
  %32 = extractvalue %dx.types.ResRet.f32 %28, 3
  %33 = fcmp fast ogt float %29, -1.000000e+00
  %34 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %35 = extractvalue %dx.types.CBufRet.f32 %34, 1
  %36 = select i1 %33, float %35, float 1.000000e+00
  %37 = fadd fast float %29, 1.000000e+00
  %38 = fmul fast float %36, %37
  %39 = fcmp fast ogt float %30, -1.000000e+00
  %40 = select i1 %39, float %35, float 1.000000e+00
  %41 = fadd fast float %30, 1.000000e+00
  %42 = fmul fast float %40, %41
  %43 = fcmp fast ogt float %31, -1.000000e+00
  %44 = select i1 %43, float %35, float 1.000000e+00
  %45 = fadd fast float %31, 1.000000e+00
  %46 = fmul fast float %44, %45
  %47 = fcmp fast ogt float %32, -1.000000e+00
  %48 = select i1 %47, float %35, float 1.000000e+00
  %49 = fadd fast float %32, 1.000000e+00
  %50 = fmul fast float %48, %49
  %51 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %52 = extractvalue %dx.types.CBufRet.i32 %51, 1
  %53 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %54 = extractvalue %dx.types.CBufRet.f32 %53, 2
  %55 = extractvalue %dx.types.CBufRet.f32 %53, 3
  %56 = fmul fast float %54, %54
  %57 = fmul fast float %56, 6.400000e+01
  %58 = fmul fast float %55, %55
  %59 = fmul fast float %58, 6.400000e+01
  %60 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %61 = extractvalue %dx.types.CBufRet.f32 %60, 0
  %62 = extractvalue %dx.types.CBufRet.f32 %60, 1
  %63 = extractvalue %dx.types.CBufRet.f32 %60, 2
  %64 = extractvalue %dx.types.CBufRet.f32 %60, 3
  %65 = extractvalue %dx.types.CBufRet.f32 %17, 0
  %66 = extractvalue %dx.types.CBufRet.f32 %17, 1
  %67 = call float @dx.op.unary.f32(i32 6, float %50)  ; FAbs(value)
  %68 = call float @dx.op.unary.f32(i32 6, float %46)  ; FAbs(value)
  %69 = call float @dx.op.unary.f32(i32 6, float %38)  ; FAbs(value)
  %70 = call float @dx.op.unary.f32(i32 6, float %42)  ; FAbs(value)
  %71 = getelementptr inbounds [4 x float], [4 x float]* %16, i32 0, i32 0
  store float %67, float* %71, align 4
  %72 = getelementptr inbounds [4 x float], [4 x float]* %16, i32 0, i32 1
  store float %68, float* %72, align 4
  %73 = getelementptr inbounds [4 x float], [4 x float]* %16, i32 0, i32 2
  store float %69, float* %73, align 4
  %74 = getelementptr inbounds [4 x float], [4 x float]* %16, i32 0, i32 3
  store float %70, float* %74, align 4
  %75 = getelementptr inbounds [4 x float], [4 x float]* %15, i32 0, i32 0
  store float %67, float* %75, align 4
  %76 = getelementptr inbounds [4 x float], [4 x float]* %15, i32 0, i32 1
  store float %68, float* %76, align 4
  %77 = getelementptr inbounds [4 x float], [4 x float]* %15, i32 0, i32 2
  store float %69, float* %77, align 4
  %78 = getelementptr inbounds [4 x float], [4 x float]* %15, i32 0, i32 3
  store float %70, float* %78, align 4
  %79 = fcmp fast olt float %67, %68
  %80 = zext i1 %79 to i32
  %81 = xor i32 %80, 1
  %82 = fcmp fast olt float %69, %70
  %83 = select i1 %82, i32 3, i32 2
  %84 = select i1 %82, i32 2, i32 3
  %85 = getelementptr [4 x float], [4 x float]* %15, i32 0, i32 %80
  %86 = load float, float* %85, align 4, !tbaa !20, !noalias !24
  %87 = getelementptr [4 x float], [4 x float]* %15, i32 0, i32 %83
  %88 = load float, float* %87, align 4, !tbaa !20, !noalias !24
  %89 = fcmp fast olt float %86, %88
  %90 = select i1 %89, i32 %83, i32 %80
  %91 = select i1 %89, i32 %80, i32 %83
  %92 = getelementptr [4 x float], [4 x float]* %15, i32 0, i32 %81
  %93 = load float, float* %92, align 4, !tbaa !20, !noalias !24
  %94 = getelementptr [4 x float], [4 x float]* %15, i32 0, i32 %84
  %95 = load float, float* %94, align 4, !tbaa !20, !noalias !24
  %96 = fcmp fast ogt float %93, %95
  %97 = select i1 %96, i32 %84, i32 %81
  %98 = select i1 %96, i32 %81, i32 %84
  %99 = getelementptr [4 x float], [4 x float]* %16, i32 0, i32 %90
  %100 = load float, float* %99, align 4, !tbaa !20, !noalias !29
  %101 = getelementptr [4 x float], [4 x float]* %16, i32 0, i32 %97
  %102 = load float, float* %101, align 4, !tbaa !20, !noalias !29
  %103 = fmul fast float %18, %22
  %104 = fmul fast float %19, %24
  %105 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %5, float %103, float %104, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %106 = extractvalue %dx.types.ResRet.f32 %105, 0
  %107 = extractvalue %dx.types.ResRet.f32 %105, 2
  %108 = extractvalue %dx.types.ResRet.f32 %105, 3
  %109 = fsub fast float %46, %106
  %110 = call float @dx.op.unary.f32(i32 6, float %109)  ; FAbs(value)
  %111 = fsub fast float %38, %107
  %112 = call float @dx.op.unary.f32(i32 6, float %111)  ; FAbs(value)
  %113 = fadd fast float %112, %110
  %114 = fsub fast float %108, %42
  %115 = call float @dx.op.unary.f32(i32 6, float %114)  ; FAbs(value)
  %116 = fmul fast float %115, 0x3FF6A09E60000000
  %117 = fadd fast float %113, %116
  %118 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?gtaoQuadDiscontinuity@@3PAMA", i32 0, i32 %10
  store float %117, float addrspace(3)* %118, align 4, !tbaa !20, !noalias !29
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %119 = and i32 %10, 63
  %120 = xor i32 %119, 1
  %121 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?gtaoQuadDiscontinuity@@3PAMA", i32 0, i32 %120
  %122 = load float, float addrspace(3)* %121, align 4, !tbaa !20, !noalias !29
  %123 = xor i32 %119, 8
  %124 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?gtaoQuadDiscontinuity@@3PAMA", i32 0, i32 %123
  %125 = load float, float addrspace(3)* %124, align 4, !tbaa !20, !noalias !29
  %126 = xor i32 %119, 9
  %127 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?gtaoQuadDiscontinuity@@3PAMA", i32 0, i32 %126
  %128 = load float, float addrspace(3)* %127, align 4, !tbaa !20, !noalias !29
  %129 = fsub fast float %122, %117
  %130 = call float @dx.op.unary.f32(i32 6, float %129)  ; FAbs(value)
  %131 = fsub fast float %125, %117
  %132 = call float @dx.op.unary.f32(i32 6, float %131)  ; FAbs(value)
  %133 = fadd fast float %132, %130
  %134 = fsub fast float %128, %117
  %135 = call float @dx.op.unary.f32(i32 6, float %134)  ; FAbs(value)
  %136 = fadd fast float %133, %135
  store float %136, float addrspace(3)* %118, align 4, !tbaa !20, !noalias !29
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %137 = fcmp fast olt float %102, 0.000000e+00
  %138 = zext i1 %137 to i32
  %139 = icmp eq i32 %10, 0
  br i1 %139, label %140, label %141, !dx.controlflow.hints !30

; <label>:140                                     ; preds = %0
  store i32 0, i32 addrspace(3)* @"\01?gtaoQuadMaxUint@@3IA", align 4, !tbaa !31, !noalias !29
  br label %141

; <label>:141                                     ; preds = %140, %0
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %142 = atomicrmw umax i32 addrspace(3)* @"\01?gtaoQuadMaxUint@@3IA", i32 %138 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %143 = fmul fast float %65, %23
  %144 = fmul fast float %66, %25
  %145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %146 = extractvalue %dx.types.CBufRet.f32 %145, 2
  %147 = fmul fast float %146, 0x3FE3C6EF40000000
  %148 = frem fast float %143, 2.560000e+02
  %149 = frem fast float %144, 2.560000e+02
  %150 = fptoui float %148 to i32
  %151 = fptoui float %149 to i32
  %152 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %150, i32 %151, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %153 = extractvalue %dx.types.ResRet.f32 %152, 0
  %154 = extractvalue %dx.types.ResRet.f32 %152, 1
  %155 = fadd fast float %153, %147
  %156 = fadd fast float %154, %147
  %157 = call float @dx.op.unary.f32(i32 22, float %155)  ; Frc(value)
  %158 = call float @dx.op.unary.f32(i32 22, float %156)  ; Frc(value)
  %159 = fmul fast float %26, %65
  %160 = fmul fast float %27, %66
  %161 = frem fast float %159, 2.560000e+02
  %162 = frem fast float %160, 2.560000e+02
  %163 = fptoui float %161 to i32
  %164 = fptoui float %162 to i32
  %165 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %163, i32 %164, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %166 = extractvalue %dx.types.ResRet.f32 %165, 0
  %167 = extractvalue %dx.types.ResRet.f32 %165, 1
  %168 = fadd fast float %166, %147
  %169 = fadd fast float %167, %147
  %170 = call float @dx.op.unary.f32(i32 22, float %168)  ; Frc(value)
  %171 = call float @dx.op.unary.f32(i32 22, float %169)  ; Frc(value)
  %172 = getelementptr inbounds [4 x float], [4 x float]* %14, i32 0, i32 0
  store float %50, float* %172, align 4
  %173 = getelementptr inbounds [4 x float], [4 x float]* %14, i32 0, i32 1
  store float %46, float* %173, align 4
  %174 = getelementptr inbounds [4 x float], [4 x float]* %14, i32 0, i32 2
  store float %38, float* %174, align 4
  %175 = getelementptr inbounds [4 x float], [4 x float]* %14, i32 0, i32 3
  store float %42, float* %175, align 4
  %176 = getelementptr [4 x float], [4 x float]* %14, i32 0, i32 %90
  %177 = load float, float* %176, align 4, !tbaa !20, !noalias !33
  %178 = and i32 %90, 1
  %179 = uitofp i32 %178 to float
  %180 = fadd fast float %179, 5.000000e-01
  %181 = lshr i32 %90, 1
  %182 = uitofp i32 %181 to float
  %183 = fadd fast float %182, 5.000000e-01
  %184 = fadd fast float %180, %22
  %185 = fmul fast float %18, %184
  %186 = fadd fast float %183, %24
  %187 = fmul fast float %19, %186
  %188 = fcmp fast olt float %177, 6.550000e+04
  br i1 %188, label %189, label %697, !dx.controlflow.hints !37

; <label>:189                                     ; preds = %141
  %190 = fadd fast float %184, -5.000000e-01
  %191 = fmul fast float %18, %190
  %192 = fadd fast float %186, -5.000000e-01
  %193 = fmul fast float %19, %192
  %194 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %5, float %191, float %193, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %195 = extractvalue %dx.types.ResRet.f32 %194, 0
  %196 = extractvalue %dx.types.ResRet.f32 %194, 1
  %197 = extractvalue %dx.types.ResRet.f32 %194, 2
  %198 = fcmp fast ogt float %195, -1.000000e+00
  %199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %200 = extractvalue %dx.types.CBufRet.f32 %199, 1
  %201 = select i1 %198, float %200, float 1.000000e+00
  %202 = fadd fast float %195, 1.000000e+00
  %203 = fmul fast float %201, %202
  %204 = fcmp fast ogt float %196, -1.000000e+00
  %205 = select i1 %204, float %200, float 1.000000e+00
  %206 = fadd fast float %196, 1.000000e+00
  %207 = fmul fast float %205, %206
  %208 = fcmp fast ogt float %197, -1.000000e+00
  %209 = select i1 %208, float %200, float 1.000000e+00
  %210 = fadd fast float %197, 1.000000e+00
  %211 = fmul fast float %209, %210
  %212 = fadd fast float %184, 5.000000e-01
  %213 = fmul fast float %18, %212
  %214 = fadd fast float %186, 5.000000e-01
  %215 = fmul fast float %19, %214
  %216 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %5, float %213, float %215, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %217 = extractvalue %dx.types.ResRet.f32 %216, 0
  %218 = extractvalue %dx.types.ResRet.f32 %216, 2
  %219 = fcmp fast ogt float %217, -1.000000e+00
  %220 = select i1 %219, float %200, float 1.000000e+00
  %221 = fadd fast float %217, 1.000000e+00
  %222 = fmul fast float %220, %221
  %223 = fcmp fast ogt float %218, -1.000000e+00
  %224 = select i1 %223, float %200, float 1.000000e+00
  %225 = fadd fast float %218, 1.000000e+00
  %226 = fmul fast float %224, %225
  %227 = fsub fast float %207, %203
  %228 = fsub fast float %226, %207
  %229 = fsub fast float %207, %211
  %230 = fsub fast float %222, %207
  %231 = call float @dx.op.unary.f32(i32 6, float %227)  ; FAbs(value)
  %232 = call float @dx.op.unary.f32(i32 6, float %228)  ; FAbs(value)
  %233 = fcmp fast olt float %231, %232
  %234 = call float @dx.op.unary.f32(i32 6, float %229)  ; FAbs(value)
  %235 = call float @dx.op.unary.f32(i32 6, float %230)  ; FAbs(value)
  %236 = fcmp fast olt float %234, %235
  %237 = select i1 %233, float %227, float %228
  %238 = select i1 %236, float %229, float %230
  %239 = select i1 %233, float %203, float %226
  %240 = fmul fast float %18, %61
  %241 = fmul fast float %240, %239
  %242 = select i1 %236, float %211, float %222
  %243 = fmul fast float %19, %62
  %244 = fmul fast float %243, %242
  %245 = fmul fast float %244, %241
  %246 = fmul fast float %244, %237
  %247 = fmul fast float %241, %238
  %248 = fsub fast float -0.000000e+00, %246
  %249 = fmul fast float %185, %61
  %250 = fsub fast float %249, %63
  %251 = fmul fast float %246, %250
  %252 = fsub fast float -0.000000e+00, %247
  %253 = fmul fast float %187, %62
  %254 = fsub fast float %253, %64
  %255 = fmul fast float %247, %254
  %256 = fadd fast float %245, %255
  %257 = fadd fast float %256, %251
  %258 = call float @dx.op.dot3.f32(i32 55, float %248, float %252, float %257, float %248, float %252, float %257)  ; Dot3(ax,ay,az,bx,by,bz)
  %259 = call float @dx.op.unary.f32(i32 25, float %258)  ; Rsqrt(value)
  %260 = fmul fast float %259, %248
  %261 = fmul fast float %259, %252
  %262 = fmul fast float %257, %259
  %263 = ashr i32 %52, 1
  %264 = call float @dx.op.unary.f32(i32 6, float %177)  ; FAbs(value)
  %265 = fmul fast float %18, %57
  %266 = fmul fast float %19, %59
  %267 = fmul fast float %264, %63
  %268 = fmul fast float %64, %264
  %269 = fsub fast float -0.000000e+00, %268
  %270 = fdiv fast float 5.000000e+01, %267
  %271 = fdiv fast float 5.000000e+01, %269
  %272 = call float @dx.op.binary.f32(i32 36, float %265, float %270)  ; FMin(a,b)
  %273 = call float @dx.op.binary.f32(i32 36, float %266, float %271)  ; FMin(a,b)
  %274 = fmul fast float %264, %250
  %275 = fmul fast float %264, %254
  %276 = fsub fast float -0.000000e+00, %274
  %277 = fsub fast float -0.000000e+00, %275
  %278 = fsub fast float -0.000000e+00, %264
  %279 = call float @dx.op.dot3.f32(i32 55, float %276, float %277, float %278, float %276, float %277, float %278)  ; Dot3(ax,ay,az,bx,by,bz)
  %280 = call float @dx.op.unary.f32(i32 25, float %279)  ; Rsqrt(value)
  %281 = fmul fast float %280, %276
  %282 = fmul fast float %280, %277
  %283 = fmul fast float %280, %278
  %284 = fmul fast float %264, 0x3FEFEB8520000000
  br label %285

; <label>:285                                     ; preds = %568, %189
  %286 = phi float [ 0.000000e+00, %189 ], [ %674, %568 ]
  %287 = phi float [ 0.000000e+00, %189 ], [ %678, %568 ]
  %288 = phi float [ 0.000000e+00, %189 ], [ %570, %568 ]
  %289 = phi float [ 0.000000e+00, %189 ], [ %571, %568 ]
  %290 = phi float [ 0.000000e+00, %189 ], [ %572, %568 ]
  %291 = phi i32 [ 0, %189 ], [ %679, %568 ]
  %292 = sitofp i32 %291 to float
  %293 = fadd fast float %292, %157
  %294 = fmul fast float %293, 0x3FE921FB60000000
  %295 = call float @dx.op.unary.f32(i32 12, float %294)  ; Cos(value)
  %296 = call float @dx.op.unary.f32(i32 13, float %294)  ; Sin(value)
  %297 = fsub fast float -0.000000e+00, %296
  %298 = call float @dx.op.dot3.f32(i32 55, float %281, float %282, float %283, float %260, float %261, float %262)  ; Dot3(ax,ay,az,bx,by,bz)
  %299 = call float @dx.op.unary.f32(i32 6, float %298)  ; FAbs(value)
  %300 = call float @dx.op.unary.f32(i32 6, float %299)  ; FAbs(value)
  %301 = fcmp fast ogt float %300, 0x3EB0C6F7A0000000
  %302 = call float @dx.op.dot3.f32(i32 55, float %295, float %297, float 0.000000e+00, float %260, float %261, float %262)  ; Dot3(ax,ay,az,bx,by,bz)
  %303 = fsub fast float -0.000000e+00, %302
  %304 = fdiv fast float %303, %299
  %305 = select i1 %301, float %304, float 0.000000e+00
  %306 = fmul fast float %305, %305
  %307 = fadd fast float %306, 1.000000e+00
  %308 = call float @dx.op.unary.f32(i32 25, float %307)  ; Rsqrt(value)
  %309 = fmul fast float %305, %308
  %310 = fsub fast float -0.000000e+00, %309
  %311 = call float @dx.op.dot2.f32(i32 54, float %260, float %261, float %295, float %297)  ; Dot2(ax,ay,bx,by)
  %312 = call float @dx.op.dot3.f32(i32 55, float %260, float %261, float %262, float %281, float %282, float %283)  ; Dot3(ax,ay,az,bx,by,bz)
  %313 = fmul fast float %311, 5.000000e-01
  %314 = fmul fast float %312, 5.000000e-01
  %315 = icmp sgt i32 %263, 0
  br i1 %315, label %316, label %439

; <label>:316                                     ; preds = %285
  br label %317

; <label>:317                                     ; preds = %431, %316
  %318 = phi float [ %432, %431 ], [ %309, %316 ]
  %319 = phi float [ %433, %431 ], [ %288, %316 ]
  %320 = phi float [ %434, %431 ], [ %289, %316 ]
  %321 = phi float [ %435, %431 ], [ %290, %316 ]
  %322 = phi float [ %385, %431 ], [ 2.000000e+02, %316 ]
  %323 = phi i32 [ %436, %431 ], [ 0, %316 ]
  %324 = sitofp i32 %263 to float
  %325 = fdiv fast float 1.000000e+00, %324
  %326 = sitofp i32 %323 to float
  %327 = fadd fast float %326, %170
  %328 = fmul fast float %327, %325
  %329 = fmul fast float %328, %328
  %330 = fmul fast float %329, %272
  %331 = fmul fast float %329, %273
  %332 = fadd fast float %330, %18
  %333 = fmul fast float %332, %295
  %334 = fadd fast float %333, %185
  %335 = fadd fast float %331, %19
  %336 = fmul fast float %335, %296
  %337 = fadd fast float %336, %187
  %338 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %5, float %334, float %337, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %339 = extractvalue %dx.types.ResRet.f32 %338, 0
  %340 = fcmp fast ogt float %339, -1.000000e+00
  %341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %342 = extractvalue %dx.types.CBufRet.f32 %341, 1
  %343 = select i1 %340, float %342, float 1.000000e+00
  %344 = fadd fast float %339, 1.000000e+00
  %345 = fmul fast float %343, %344
  %346 = call float @dx.op.unary.f32(i32 6, float %345)  ; FAbs(value)
  %347 = fmul fast float %334, %61
  %348 = fmul fast float %337, %62
  %349 = fsub fast float %347, %63
  %350 = fsub fast float %348, %64
  %351 = fmul fast float %349, %346
  %352 = fmul fast float %350, %346
  %353 = fsub fast float %351, %274
  %354 = fsub fast float %352, %275
  %355 = fsub fast float %346, %284
  %356 = call float @dx.op.dot3.f32(i32 55, float %353, float %354, float %355, float %353, float %354, float %355)  ; Dot3(ax,ay,az,bx,by,bz)
  %357 = call float @dx.op.dot3.f32(i32 55, float %353, float %354, float %355, float %260, float %261, float %262)  ; Dot3(ax,ay,az,bx,by,bz)
  %358 = fsub fast float -0.000000e+00, %357
  %359 = call float @dx.op.dot3.f32(i32 55, float %353, float %354, float %355, float %281, float %282, float %283)  ; Dot3(ax,ay,az,bx,by,bz)
  %360 = call float @dx.op.unary.f32(i32 25, float %356)  ; Rsqrt(value)
  %361 = fmul fast float %360, %359
  %362 = bitcast float %356 to i32
  %363 = ashr i32 %362, 1
  %364 = add nsw i32 %363, 532487669
  %365 = bitcast i32 %364 to float
  %366 = fmul fast float %365, 0x3F947AE140000000
  %367 = fsub fast float 2.000000e+00, %366
  %368 = call float @dx.op.unary.f32(i32 7, float %367)  ; Saturate(value)
  %369 = fmul fast float %365, 0x3F7B4E81C0000000
  %370 = fsub fast float 0x3FF5555560000000, %369
  %371 = call float @dx.op.unary.f32(i32 7, float %370)  ; Saturate(value)
  %372 = fmul fast float %346, 0x3F947AE140000000
  %373 = fadd fast float %372, -1.000000e+00
  %374 = call float @dx.op.unary.f32(i32 7, float %373)  ; Saturate(value)
  %375 = fsub fast float %371, %368
  %376 = fmul fast float %374, %375
  %377 = fadd fast float %376, %368
  %378 = fmul fast float %345, %177
  %379 = fcmp fast ogt float %378, 0.000000e+00
  %380 = select i1 %379, float %377, float 0.000000e+00
  %381 = fadd fast float %361, 1.000000e+00
  %382 = fmul fast float %380, %381
  %383 = fadd fast float %382, -1.000000e+00
  %384 = fcmp fast ogt float %383, %318
  %385 = select i1 %384, float %358, float %322
  %386 = fsub fast float %358, %385
  %387 = fmul fast float %386, 0x3FB9999940000000
  %388 = fadd fast float %387, 0xBFDFFFFF80000000
  %389 = call float @dx.op.unary.f32(i32 7, float %388)  ; Saturate(value)
  %390 = fmul fast float %357, 0x3FC99999E0000000
  %391 = fadd fast float %390, 0x3FF0000020000000
  %392 = call float @dx.op.unary.f32(i32 7, float %391)  ; Saturate(value)
  %393 = sitofp i32 %52 to float
  %394 = fdiv fast float 8.000000e+00, %393
  %395 = fmul fast float %392, %389
  %396 = fmul fast float %395, %394
  %397 = fsub fast float %318, %396
  %398 = fcmp fast ugt float %383, %397
  br i1 %398, label %399, label %431, !dx.controlflow.hints !38

; <label>:399                                     ; preds = %317
  %400 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %5, float %334, float %337, float undef, float undef, i32 0, i32 0, i32 undef, float -1.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %401 = extractvalue %dx.types.ResRet.f32 %400, 0
  %402 = extractvalue %dx.types.ResRet.f32 %400, 1
  %403 = extractvalue %dx.types.ResRet.f32 %400, 2
  %404 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %383)  ; FMax(a,b)
  %405 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %404)  ; FMin(a,b)
  %406 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %397)  ; FMax(a,b)
  %407 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %406)  ; FMin(a,b)
  %408 = fmul fast float %405, %405
  %409 = fsub fast float 1.000000e+00, %408
  %410 = call float @dx.op.unary.f32(i32 24, float %409)  ; Sqrt(value)
  %411 = fmul fast float %407, %407
  %412 = fsub fast float 1.000000e+00, %411
  %413 = call float @dx.op.unary.f32(i32 24, float %412)  ; Sqrt(value)
  %414 = call float @dx.op.unary.f32(i32 15, float %405)  ; Acos(value)
  %415 = call float @dx.op.unary.f32(i32 15, float %407)  ; Acos(value)
  %416 = fmul fast float %413, %407
  %417 = fmul fast float %410, %405
  %418 = fsub fast float %417, %416
  %419 = fsub fast float %418, %414
  %420 = fadd fast float %419, %415
  %421 = fsub fast float %408, %411
  %422 = fmul fast float %313, %420
  %423 = fmul fast float %421, %314
  %424 = fadd fast float %422, %423
  %425 = fmul fast float %424, %401
  %426 = fmul fast float %424, %402
  %427 = fmul fast float %424, %403
  %428 = fadd fast float %425, %319
  %429 = fadd fast float %426, %320
  %430 = fadd fast float %427, %321
  br label %431

; <label>:431                                     ; preds = %399, %317
  %432 = phi float [ %397, %317 ], [ %383, %399 ]
  %433 = phi float [ %319, %317 ], [ %428, %399 ]
  %434 = phi float [ %320, %317 ], [ %429, %399 ]
  %435 = phi float [ %321, %317 ], [ %430, %399 ]
  %436 = add nuw nsw i32 %323, 1
  %437 = icmp eq i32 %436, %263
  br i1 %437, label %438, label %317

; <label>:438                                     ; preds = %431
  br label %439

; <label>:439                                     ; preds = %438, %285
  %440 = phi float [ %309, %285 ], [ %432, %438 ]
  %441 = phi float [ %288, %285 ], [ %433, %438 ]
  %442 = phi float [ %289, %285 ], [ %434, %438 ]
  %443 = phi float [ %290, %285 ], [ %435, %438 ]
  %444 = fmul fast float %311, -5.000000e-01
  br i1 %315, label %445, label %568

; <label>:445                                     ; preds = %439
  br label %446

; <label>:446                                     ; preds = %560, %445
  %447 = phi float [ %561, %560 ], [ %310, %445 ]
  %448 = phi float [ %562, %560 ], [ %441, %445 ]
  %449 = phi float [ %563, %560 ], [ %442, %445 ]
  %450 = phi float [ %564, %560 ], [ %443, %445 ]
  %451 = phi float [ %514, %560 ], [ 2.000000e+02, %445 ]
  %452 = phi i32 [ %565, %560 ], [ 0, %445 ]
  %453 = sitofp i32 %263 to float
  %454 = fdiv fast float 1.000000e+00, %453
  %455 = sitofp i32 %452 to float
  %456 = fadd fast float %455, %170
  %457 = fmul fast float %456, %454
  %458 = fmul fast float %457, %457
  %459 = fmul fast float %458, %272
  %460 = fmul fast float %458, %273
  %461 = fadd fast float %459, %18
  %462 = fmul fast float %295, %461
  %463 = fsub fast float %185, %462
  %464 = fadd fast float %460, %19
  %465 = fmul fast float %296, %464
  %466 = fsub fast float %187, %465
  %467 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %5, float %463, float %466, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %468 = extractvalue %dx.types.ResRet.f32 %467, 0
  %469 = fcmp fast ogt float %468, -1.000000e+00
  %470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %471 = extractvalue %dx.types.CBufRet.f32 %470, 1
  %472 = select i1 %469, float %471, float 1.000000e+00
  %473 = fadd fast float %468, 1.000000e+00
  %474 = fmul fast float %472, %473
  %475 = call float @dx.op.unary.f32(i32 6, float %474)  ; FAbs(value)
  %476 = fmul fast float %463, %61
  %477 = fmul fast float %466, %62
  %478 = fsub fast float %476, %63
  %479 = fsub fast float %477, %64
  %480 = fmul fast float %478, %475
  %481 = fmul fast float %479, %475
  %482 = fsub fast float %480, %274
  %483 = fsub fast float %481, %275
  %484 = fsub fast float %475, %284
  %485 = call float @dx.op.dot3.f32(i32 55, float %482, float %483, float %484, float %482, float %483, float %484)  ; Dot3(ax,ay,az,bx,by,bz)
  %486 = call float @dx.op.dot3.f32(i32 55, float %482, float %483, float %484, float %260, float %261, float %262)  ; Dot3(ax,ay,az,bx,by,bz)
  %487 = fsub fast float -0.000000e+00, %486
  %488 = call float @dx.op.dot3.f32(i32 55, float %482, float %483, float %484, float %281, float %282, float %283)  ; Dot3(ax,ay,az,bx,by,bz)
  %489 = call float @dx.op.unary.f32(i32 25, float %485)  ; Rsqrt(value)
  %490 = fmul fast float %489, %488
  %491 = bitcast float %485 to i32
  %492 = ashr i32 %491, 1
  %493 = add nsw i32 %492, 532487669
  %494 = bitcast i32 %493 to float
  %495 = fmul fast float %494, 0x3F947AE140000000
  %496 = fsub fast float 2.000000e+00, %495
  %497 = call float @dx.op.unary.f32(i32 7, float %496)  ; Saturate(value)
  %498 = fmul fast float %494, 0x3F7B4E81C0000000
  %499 = fsub fast float 0x3FF5555560000000, %498
  %500 = call float @dx.op.unary.f32(i32 7, float %499)  ; Saturate(value)
  %501 = fmul fast float %475, 0x3F947AE140000000
  %502 = fadd fast float %501, -1.000000e+00
  %503 = call float @dx.op.unary.f32(i32 7, float %502)  ; Saturate(value)
  %504 = fsub fast float %500, %497
  %505 = fmul fast float %503, %504
  %506 = fadd fast float %505, %497
  %507 = fmul fast float %474, %177
  %508 = fcmp fast ogt float %507, 0.000000e+00
  %509 = select i1 %508, float %506, float 0.000000e+00
  %510 = fadd fast float %490, 1.000000e+00
  %511 = fmul fast float %509, %510
  %512 = fadd fast float %511, -1.000000e+00
  %513 = fcmp fast ogt float %512, %447
  %514 = select i1 %513, float %487, float %451
  %515 = fsub fast float %487, %514
  %516 = fmul fast float %515, 0x3FB9999940000000
  %517 = fadd fast float %516, 0xBFDFFFFF80000000
  %518 = call float @dx.op.unary.f32(i32 7, float %517)  ; Saturate(value)
  %519 = fmul fast float %486, 0x3FC99999E0000000
  %520 = fadd fast float %519, 0x3FF0000020000000
  %521 = call float @dx.op.unary.f32(i32 7, float %520)  ; Saturate(value)
  %522 = sitofp i32 %52 to float
  %523 = fdiv fast float 8.000000e+00, %522
  %524 = fmul fast float %521, %518
  %525 = fmul fast float %524, %523
  %526 = fsub fast float %447, %525
  %527 = fcmp fast ugt float %512, %526
  br i1 %527, label %528, label %560, !dx.controlflow.hints !38

; <label>:528                                     ; preds = %446
  %529 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %5, float %463, float %466, float undef, float undef, i32 0, i32 0, i32 undef, float -1.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %530 = extractvalue %dx.types.ResRet.f32 %529, 0
  %531 = extractvalue %dx.types.ResRet.f32 %529, 1
  %532 = extractvalue %dx.types.ResRet.f32 %529, 2
  %533 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %512)  ; FMax(a,b)
  %534 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %533)  ; FMin(a,b)
  %535 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %526)  ; FMax(a,b)
  %536 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %535)  ; FMin(a,b)
  %537 = fmul fast float %534, %534
  %538 = fsub fast float 1.000000e+00, %537
  %539 = call float @dx.op.unary.f32(i32 24, float %538)  ; Sqrt(value)
  %540 = fmul fast float %536, %536
  %541 = fsub fast float 1.000000e+00, %540
  %542 = call float @dx.op.unary.f32(i32 24, float %541)  ; Sqrt(value)
  %543 = call float @dx.op.unary.f32(i32 15, float %534)  ; Acos(value)
  %544 = call float @dx.op.unary.f32(i32 15, float %536)  ; Acos(value)
  %545 = fmul fast float %542, %536
  %546 = fmul fast float %539, %534
  %547 = fsub fast float %546, %545
  %548 = fsub fast float %547, %543
  %549 = fadd fast float %548, %544
  %550 = fsub fast float %537, %540
  %551 = fmul fast float %444, %549
  %552 = fmul fast float %550, %314
  %553 = fadd fast float %551, %552
  %554 = fmul fast float %553, %530
  %555 = fmul fast float %553, %531
  %556 = fmul fast float %553, %532
  %557 = fadd fast float %554, %448
  %558 = fadd fast float %555, %449
  %559 = fadd fast float %556, %450
  br label %560

; <label>:560                                     ; preds = %528, %446
  %561 = phi float [ %526, %446 ], [ %512, %528 ]
  %562 = phi float [ %448, %446 ], [ %557, %528 ]
  %563 = phi float [ %449, %446 ], [ %558, %528 ]
  %564 = phi float [ %450, %446 ], [ %559, %528 ]
  %565 = add nuw nsw i32 %452, 1
  %566 = icmp eq i32 %565, %263
  br i1 %566, label %567, label %446

; <label>:567                                     ; preds = %560
  br label %568

; <label>:568                                     ; preds = %567, %439
  %569 = phi float [ %310, %439 ], [ %561, %567 ]
  %570 = phi float [ %441, %439 ], [ %562, %567 ]
  %571 = phi float [ %442, %439 ], [ %563, %567 ]
  %572 = phi float [ %443, %439 ], [ %564, %567 ]
  %573 = fmul fast float %283, %297
  %574 = fmul fast float %283, %295
  %575 = fsub fast float -0.000000e+00, %574
  %576 = fmul fast float %295, %282
  %577 = fmul fast float %281, %297
  %578 = fsub fast float %576, %577
  %579 = call float @dx.op.dot3.f32(i32 55, float %260, float %261, float %262, float %573, float %575, float %578)  ; Dot3(ax,ay,az,bx,by,bz)
  %580 = fmul fast float %579, %573
  %581 = fmul fast float %579, %575
  %582 = fmul fast float %579, %578
  %583 = fsub fast float %260, %580
  %584 = fsub fast float %261, %581
  %585 = fsub fast float %262, %582
  %586 = fmul fast float %583, %583
  %587 = fmul fast float %584, %584
  %588 = fadd fast float %586, %587
  %589 = fmul fast float %585, %585
  %590 = fadd fast float %588, %589
  %591 = call float @dx.op.unary.f32(i32 24, float %590)  ; Sqrt(value)
  %592 = call float @dx.op.dot3.f32(i32 55, float %295, float %297, float 0.000000e+00, float %583, float %584, float %585)  ; Dot3(ax,ay,az,bx,by,bz)
  %593 = call float @dx.op.dot3.f32(i32 55, float %295, float %297, float 0.000000e+00, float %281, float %282, float %283)  ; Dot3(ax,ay,az,bx,by,bz)
  %594 = fmul fast float %593, %281
  %595 = fmul fast float %593, %282
  %596 = fmul fast float %593, %283
  %597 = call float @dx.op.dot3.f32(i32 55, float %594, float %595, float %596, float %583, float %584, float %585)  ; Dot3(ax,ay,az,bx,by,bz)
  %598 = fcmp fast oge float %592, %597
  %599 = fdiv fast float 1.000000e+00, %591
  %600 = call float @dx.op.dot3.f32(i32 55, float %583, float %584, float %585, float %281, float %282, float %283)  ; Dot3(ax,ay,az,bx,by,bz)
  %601 = fmul fast float %600, %599
  %602 = call float @dx.op.unary.f32(i32 7, float %601)  ; Saturate(value)
  %603 = fmul fast float %602, %602
  %604 = fsub fast float 1.000000e+00, %603
  %605 = bitcast float %604 to i32
  %606 = ashr i32 %605, 1
  %607 = add nsw i32 %606, 532487669
  %608 = bitcast i32 %607 to float
  %609 = call float @dx.op.unary.f32(i32 6, float %602)  ; FAbs(value)
  %610 = fmul fast float %609, 0x3FC40AE960000000
  %611 = fsub fast float 0x3FF921FB60000000, %610
  %612 = fsub fast float 1.000000e+00, %609
  %613 = bitcast float %612 to i32
  %614 = ashr i32 %613, 1
  %615 = add nsw i32 %614, 532487669
  %616 = bitcast i32 %615 to float
  %617 = fmul fast float %616, %611
  %618 = fcmp fast oge float %602, 0.000000e+00
  %619 = fsub fast float 0x400921FB60000000, %617
  %620 = select i1 %618, float %617, float %619
  %621 = fsub fast float -0.000000e+00, %608
  %622 = select i1 %598, float %621, float %608
  %623 = fsub fast float -0.000000e+00, %620
  %624 = select i1 %598, float %623, float %620
  %625 = call float @dx.op.unary.f32(i32 6, float %440)  ; FAbs(value)
  %626 = fmul fast float %625, 0x3FC40AE960000000
  %627 = fsub fast float 0x3FF921FB60000000, %626
  %628 = fsub fast float 1.000000e+00, %625
  %629 = bitcast float %628 to i32
  %630 = ashr i32 %629, 1
  %631 = add nsw i32 %630, 532487669
  %632 = bitcast i32 %631 to float
  %633 = fmul fast float %632, %627
  %634 = fcmp fast oge float %440, 0.000000e+00
  %635 = fsub fast float 0x400921FB60000000, %633
  %636 = select i1 %634, float %633, float %635
  %637 = call float @dx.op.unary.f32(i32 6, float %569)  ; FAbs(value)
  %638 = fmul fast float %637, 0x3FC40AE960000000
  %639 = fsub fast float 0x3FF921FB60000000, %638
  %640 = fsub fast float 1.000000e+00, %637
  %641 = bitcast float %640 to i32
  %642 = ashr i32 %641, 1
  %643 = add nsw i32 %642, 532487669
  %644 = bitcast i32 %643 to float
  %645 = fmul fast float %644, %639
  %646 = fcmp fast oge float %569, 0.000000e+00
  %647 = fsub fast float 0x400921FB60000000, %645
  %648 = select i1 %646, float %645, float %647
  %649 = fsub fast float -0.000000e+00, %624
  %650 = fsub fast float %649, %636
  %651 = call float @dx.op.binary.f32(i32 35, float %650, float 0xBFF921FB60000000)  ; FMax(a,b)
  %652 = call float @dx.op.binary.f32(i32 36, float %651, float 0x3FF921FB60000000)  ; FMin(a,b)
  %653 = fadd fast float %624, %652
  %654 = fsub fast float %648, %624
  %655 = call float @dx.op.binary.f32(i32 35, float %654, float 0xBFF921FB60000000)  ; FMax(a,b)
  %656 = call float @dx.op.binary.f32(i32 36, float %655, float 0x3FF921FB60000000)  ; FMin(a,b)
  %657 = fadd fast float %624, %656
  %658 = fmul fast float %653, 2.000000e+00
  %659 = fsub fast float %658, %624
  %660 = call float @dx.op.unary.f32(i32 12, float %659)  ; Cos(value)
  %661 = fsub fast float -0.000000e+00, %660
  %662 = fmul fast float %657, 2.000000e+00
  %663 = fsub fast float %662, %624
  %664 = call float @dx.op.unary.f32(i32 12, float %663)  ; Cos(value)
  %665 = fmul fast float %602, 2.000000e+00
  %666 = fadd fast float %657, %653
  %667 = fmul fast float %622, %666
  %668 = fmul fast float %667, 2.000000e+00
  %669 = fsub fast float %661, %664
  %670 = fadd fast float %669, %665
  %671 = fadd fast float %670, %668
  %672 = fmul fast float %591, 2.500000e-01
  %673 = fmul fast float %672, %671
  %674 = fadd fast float %673, %286
  %675 = fmul fast float %624, %622
  %676 = fadd fast float %675, %602
  %677 = fmul fast float %676, %591
  %678 = fadd fast float %677, %287
  %679 = add nuw nsw i32 %291, 1
  %680 = icmp eq i32 %679, 4
  br i1 %680, label %681, label %285

; <label>:681                                     ; preds = %568
  %682 = fmul fast float %570, 2.500000e-01
  %683 = fmul fast float %571, 2.500000e-01
  %684 = fmul fast float %572, 2.500000e-01
  %685 = call i32 @dx.op.legacyF32ToF16(i32 130, float %682)  ; LegacyF32ToF16(value)
  %686 = call i32 @dx.op.legacyF32ToF16(i32 130, float %683)  ; LegacyF32ToF16(value)
  %687 = call i32 @dx.op.legacyF32ToF16(i32 130, float %684)  ; LegacyF32ToF16(value)
  %688 = lshr i32 %685, 4
  %689 = and i32 %688, 2047
  %690 = shl i32 %686, 7
  %691 = and i32 %690, 4192256
  %692 = or i32 %691, %689
  %693 = lshr i32 %687, 5
  %694 = shl i32 %693, 22
  %695 = or i32 %692, %694
  %696 = fdiv fast float %674, %678
  br label %697

; <label>:697                                     ; preds = %681, %141
  %698 = phi float [ %696, %681 ], [ 1.000000e+00, %141 ]
  %699 = phi i32 [ %695, %681 ], [ 0, %141 ]
  %700 = shl i32 %699, 4
  %701 = and i32 %700, 32752
  %702 = call float @dx.op.legacyF16ToF32(i32 131, i32 %701)  ; LegacyF16ToF32(value)
  %703 = lshr i32 %699, 7
  %704 = and i32 %703, 32752
  %705 = call float @dx.op.legacyF16ToF32(i32 131, i32 %704)  ; LegacyF16ToF32(value)
  %706 = lshr i32 %699, 22
  %707 = shl nuw nsw i32 %706, 5
  %708 = call float @dx.op.legacyF16ToF32(i32 131, i32 %707)  ; LegacyF16ToF32(value)
  %709 = call float @dx.op.binary.f32(i32 35, float %702, float %705)  ; FMax(a,b)
  %710 = call float @dx.op.binary.f32(i32 35, float %709, float %708)  ; FMax(a,b)
  %711 = fmul fast float %710, %710
  %712 = mul i32 %10, 2
  %713 = add i32 0, %712
  %714 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %713
  store float %710, float addrspace(3)* %714, align 4
  %715 = mul i32 %10, 2
  %716 = add i32 1, %715
  %717 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %716
  store float %711, float addrspace(3)* %717, align 4
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %718 = mul i32 %120, 2
  %719 = add i32 0, %718
  %720 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %719
  %721 = load float, float addrspace(3)* %720, align 4
  %722 = mul i32 %120, 2
  %723 = add i32 1, %722
  %724 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %723
  %725 = load float, float addrspace(3)* %724, align 4
  %726 = fadd fast float %721, %710
  %727 = fadd fast float %725, %711
  %728 = mul i32 %123, 2
  %729 = add i32 0, %728
  %730 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %729
  %731 = load float, float addrspace(3)* %730, align 4
  %732 = mul i32 %123, 2
  %733 = add i32 1, %732
  %734 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %733
  %735 = load float, float addrspace(3)* %734, align 4
  %736 = fadd fast float %726, %731
  %737 = fadd fast float %727, %735
  %738 = mul i32 %126, 2
  %739 = add i32 0, %738
  %740 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %739
  %741 = load float, float addrspace(3)* %740, align 4
  %742 = mul i32 %126, 2
  %743 = add i32 1, %742
  %744 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %743
  %745 = load float, float addrspace(3)* %744, align 4
  %746 = fadd fast float %736, %741
  %747 = fadd fast float %737, %745
  store float %746, float addrspace(3)* %714, align 4
  store float %747, float addrspace(3)* %717, align 4
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %748 = xor i32 %119, 2
  %749 = mul i32 %748, 2
  %750 = add i32 0, %749
  %751 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %750
  %752 = load float, float addrspace(3)* %751, align 4
  %753 = mul i32 %748, 2
  %754 = add i32 1, %753
  %755 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %754
  %756 = load float, float addrspace(3)* %755, align 4
  %757 = fadd fast float %752, %746
  %758 = fadd fast float %756, %747
  %759 = xor i32 %119, 16
  %760 = mul i32 %759, 2
  %761 = add i32 0, %760
  %762 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %761
  %763 = load float, float addrspace(3)* %762, align 4
  %764 = mul i32 %759, 2
  %765 = add i32 1, %764
  %766 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %765
  %767 = load float, float addrspace(3)* %766, align 4
  %768 = fadd fast float %757, %763
  %769 = fadd fast float %758, %767
  %770 = xor i32 %119, 18
  %771 = mul i32 %770, 2
  %772 = add i32 0, %771
  %773 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %772
  %774 = load float, float addrspace(3)* %773, align 4
  %775 = mul i32 %770, 2
  %776 = add i32 1, %775
  %777 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %776
  %778 = load float, float addrspace(3)* %777, align 4
  %779 = fadd fast float %768, %774
  %780 = fadd fast float %769, %778
  %781 = fmul fast float %779, 6.250000e-02
  %782 = fmul fast float %780, 6.250000e-02
  %783 = fmul fast float %781, %781
  %784 = fsub fast float %782, %783
  %785 = call float @dx.op.binary.f32(i32 35, float %781, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %786 = fdiv fast float %784, %785
  %787 = fmul fast float %698, %698
  store float %698, float addrspace(3)* %714, align 4
  store float %787, float addrspace(3)* %717, align 4
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %788 = load float, float addrspace(3)* %720, align 4
  %789 = load float, float addrspace(3)* %724, align 4
  %790 = fadd fast float %788, %698
  %791 = fadd fast float %789, %787
  %792 = load float, float addrspace(3)* %730, align 4
  %793 = load float, float addrspace(3)* %734, align 4
  %794 = fadd fast float %790, %792
  %795 = fadd fast float %791, %793
  %796 = load float, float addrspace(3)* %740, align 4
  %797 = load float, float addrspace(3)* %744, align 4
  %798 = fadd fast float %794, %796
  %799 = fadd fast float %795, %797
  store float %798, float addrspace(3)* %714, align 4
  store float %799, float addrspace(3)* %717, align 4
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %800 = load float, float addrspace(3)* %751, align 4
  %801 = load float, float addrspace(3)* %755, align 4
  %802 = fadd fast float %800, %798
  %803 = fadd fast float %801, %799
  %804 = load float, float addrspace(3)* %762, align 4
  %805 = load float, float addrspace(3)* %766, align 4
  %806 = fadd fast float %802, %804
  %807 = fadd fast float %803, %805
  %808 = load float, float addrspace(3)* %773, align 4
  %809 = load float, float addrspace(3)* %777, align 4
  %810 = fadd fast float %806, %808
  %811 = fadd fast float %807, %809
  %812 = fmul fast float %810, 6.250000e-02
  %813 = fmul fast float %811, 6.250000e-02
  %814 = fmul fast float %812, %812
  %815 = fsub fast float %813, %814
  %816 = call float @dx.op.binary.f32(i32 35, float %812, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %817 = fdiv fast float %815, %816
  %818 = call float @dx.op.binary.f32(i32 35, float %817, float %786)  ; FMax(a,b)
  %819 = fmul fast float %818, 6.553500e+04
  %820 = fptoui float %819 to i32
  br i1 %139, label %821, label %822, !dx.controlflow.hints !30

; <label>:821                                     ; preds = %697
  store i32 0, i32 addrspace(3)* @"\01?gtaoQuadMaxUint@@3IA", align 4, !tbaa !31, !noalias !29
  br label %822

; <label>:822                                     ; preds = %821, %697
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %823 = atomicrmw umax i32 addrspace(3)* @"\01?gtaoQuadMaxUint@@3IA", i32 %820 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %824 = getelementptr inbounds [4 x float], [4 x float]* %13, i32 0, i32 0
  store float %50, float* %824, align 4
  %825 = getelementptr inbounds [4 x float], [4 x float]* %13, i32 0, i32 1
  store float %46, float* %825, align 4
  %826 = getelementptr inbounds [4 x float], [4 x float]* %13, i32 0, i32 2
  store float %38, float* %826, align 4
  %827 = getelementptr inbounds [4 x float], [4 x float]* %13, i32 0, i32 3
  store float %42, float* %827, align 4
  %828 = getelementptr [4 x float], [4 x float]* %13, i32 0, i32 %97
  %829 = load float, float* %828, align 4, !tbaa !20, !noalias !39
  %830 = and i32 %97, 1
  %831 = uitofp i32 %830 to float
  %832 = fadd fast float %831, 5.000000e-01
  %833 = lshr i32 %97, 1
  %834 = uitofp i32 %833 to float
  %835 = fadd fast float %834, 5.000000e-01
  %836 = fadd fast float %832, %22
  %837 = fmul fast float %18, %836
  %838 = fadd fast float %835, %24
  %839 = fmul fast float %19, %838
  %840 = fcmp fast olt float %829, 6.550000e+04
  br i1 %840, label %841, label %1238, !dx.controlflow.hints !37

; <label>:841                                     ; preds = %822
  %842 = fadd fast float %836, -5.000000e-01
  %843 = fmul fast float %18, %842
  %844 = fadd fast float %838, -5.000000e-01
  %845 = fmul fast float %19, %844
  %846 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %5, float %843, float %845, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %847 = extractvalue %dx.types.ResRet.f32 %846, 0
  %848 = extractvalue %dx.types.ResRet.f32 %846, 1
  %849 = extractvalue %dx.types.ResRet.f32 %846, 2
  %850 = fcmp fast ogt float %847, -1.000000e+00
  %851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %852 = extractvalue %dx.types.CBufRet.f32 %851, 1
  %853 = select i1 %850, float %852, float 1.000000e+00
  %854 = fadd fast float %847, 1.000000e+00
  %855 = fmul fast float %853, %854
  %856 = fcmp fast ogt float %848, -1.000000e+00
  %857 = select i1 %856, float %852, float 1.000000e+00
  %858 = fadd fast float %848, 1.000000e+00
  %859 = fmul fast float %857, %858
  %860 = fcmp fast ogt float %849, -1.000000e+00
  %861 = select i1 %860, float %852, float 1.000000e+00
  %862 = fadd fast float %849, 1.000000e+00
  %863 = fmul fast float %861, %862
  %864 = fadd fast float %836, 5.000000e-01
  %865 = fmul fast float %18, %864
  %866 = fadd fast float %838, 5.000000e-01
  %867 = fmul fast float %19, %866
  %868 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %5, float %865, float %867, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %869 = extractvalue %dx.types.ResRet.f32 %868, 0
  %870 = extractvalue %dx.types.ResRet.f32 %868, 2
  %871 = fcmp fast ogt float %869, -1.000000e+00
  %872 = select i1 %871, float %852, float 1.000000e+00
  %873 = fadd fast float %869, 1.000000e+00
  %874 = fmul fast float %872, %873
  %875 = fcmp fast ogt float %870, -1.000000e+00
  %876 = select i1 %875, float %852, float 1.000000e+00
  %877 = fadd fast float %870, 1.000000e+00
  %878 = fmul fast float %876, %877
  %879 = fsub fast float %859, %855
  %880 = fsub fast float %878, %859
  %881 = fsub fast float %859, %863
  %882 = fsub fast float %874, %859
  %883 = call float @dx.op.unary.f32(i32 6, float %879)  ; FAbs(value)
  %884 = call float @dx.op.unary.f32(i32 6, float %880)  ; FAbs(value)
  %885 = fcmp fast olt float %883, %884
  %886 = call float @dx.op.unary.f32(i32 6, float %881)  ; FAbs(value)
  %887 = call float @dx.op.unary.f32(i32 6, float %882)  ; FAbs(value)
  %888 = fcmp fast olt float %886, %887
  %889 = select i1 %885, float %879, float %880
  %890 = select i1 %888, float %881, float %882
  %891 = select i1 %885, float %855, float %878
  %892 = fmul fast float %18, %61
  %893 = fmul fast float %892, %891
  %894 = select i1 %888, float %863, float %874
  %895 = fmul fast float %19, %62
  %896 = fmul fast float %895, %894
  %897 = fmul fast float %896, %893
  %898 = fmul fast float %896, %889
  %899 = fmul fast float %893, %890
  %900 = fsub fast float -0.000000e+00, %898
  %901 = fmul fast float %837, %61
  %902 = fsub fast float %901, %63
  %903 = fmul fast float %898, %902
  %904 = fsub fast float -0.000000e+00, %899
  %905 = fmul fast float %839, %62
  %906 = fsub fast float %905, %64
  %907 = fmul fast float %899, %906
  %908 = fadd fast float %897, %907
  %909 = fadd fast float %908, %903
  %910 = call float @dx.op.dot3.f32(i32 55, float %900, float %904, float %909, float %900, float %904, float %909)  ; Dot3(ax,ay,az,bx,by,bz)
  %911 = call float @dx.op.unary.f32(i32 25, float %910)  ; Rsqrt(value)
  %912 = fmul fast float %911, %900
  %913 = fmul fast float %911, %904
  %914 = fmul fast float %909, %911
  %915 = ashr i32 %52, 1
  %916 = call float @dx.op.unary.f32(i32 6, float %829)  ; FAbs(value)
  %917 = fmul fast float %18, %57
  %918 = fmul fast float %19, %59
  %919 = fmul fast float %916, %63
  %920 = fmul fast float %64, %916
  %921 = fsub fast float -0.000000e+00, %920
  %922 = fdiv fast float 5.000000e+01, %919
  %923 = fdiv fast float 5.000000e+01, %921
  %924 = call float @dx.op.binary.f32(i32 36, float %917, float %922)  ; FMin(a,b)
  %925 = call float @dx.op.binary.f32(i32 36, float %918, float %923)  ; FMin(a,b)
  %926 = fmul fast float %916, %902
  %927 = fmul fast float %916, %906
  %928 = fsub fast float -0.000000e+00, %926
  %929 = fsub fast float -0.000000e+00, %927
  %930 = fsub fast float -0.000000e+00, %916
  %931 = call float @dx.op.dot3.f32(i32 55, float %928, float %929, float %930, float %928, float %929, float %930)  ; Dot3(ax,ay,az,bx,by,bz)
  %932 = call float @dx.op.unary.f32(i32 25, float %931)  ; Rsqrt(value)
  %933 = fmul fast float %932, %928
  %934 = fmul fast float %932, %929
  %935 = fmul fast float %932, %930
  %936 = fmul fast float %916, 0x3FEFEB8520000000
  br label %937

; <label>:937                                     ; preds = %1217, %841
  %938 = phi float [ %1218, %1217 ], [ 0.000000e+00, %841 ]
  %939 = phi float [ %1219, %1217 ], [ 0.000000e+00, %841 ]
  %940 = phi float [ %1220, %1217 ], [ 0.000000e+00, %841 ]
  %941 = phi i32 [ %1221, %1217 ], [ 0, %841 ]
  %942 = sitofp i32 %941 to float
  %943 = fadd fast float %942, %158
  %944 = fmul fast float %943, 0x3FE921FB60000000
  %945 = call float @dx.op.unary.f32(i32 12, float %944)  ; Cos(value)
  %946 = call float @dx.op.unary.f32(i32 13, float %944)  ; Sin(value)
  %947 = fsub fast float -0.000000e+00, %946
  %948 = call float @dx.op.dot3.f32(i32 55, float %933, float %934, float %935, float %912, float %913, float %914)  ; Dot3(ax,ay,az,bx,by,bz)
  %949 = call float @dx.op.unary.f32(i32 6, float %948)  ; FAbs(value)
  %950 = call float @dx.op.unary.f32(i32 6, float %949)  ; FAbs(value)
  %951 = fcmp fast ogt float %950, 0x3EB0C6F7A0000000
  %952 = call float @dx.op.dot3.f32(i32 55, float %945, float %947, float 0.000000e+00, float %912, float %913, float %914)  ; Dot3(ax,ay,az,bx,by,bz)
  %953 = fsub fast float -0.000000e+00, %952
  %954 = fdiv fast float %953, %949
  %955 = select i1 %951, float %954, float 0.000000e+00
  %956 = fmul fast float %955, %955
  %957 = fadd fast float %956, 1.000000e+00
  %958 = call float @dx.op.unary.f32(i32 25, float %957)  ; Rsqrt(value)
  %959 = fmul fast float %955, %958
  %960 = fsub fast float -0.000000e+00, %959
  %961 = call float @dx.op.dot2.f32(i32 54, float %912, float %913, float %945, float %947)  ; Dot2(ax,ay,bx,by)
  %962 = call float @dx.op.dot3.f32(i32 55, float %912, float %913, float %914, float %933, float %934, float %935)  ; Dot3(ax,ay,az,bx,by,bz)
  %963 = fmul fast float %961, 5.000000e-01
  %964 = fmul fast float %962, 5.000000e-01
  %965 = icmp sgt i32 %915, 0
  br i1 %965, label %966, label %1089

; <label>:966                                     ; preds = %937
  br label %967

; <label>:967                                     ; preds = %1081, %966
  %968 = phi float [ %1082, %1081 ], [ %959, %966 ]
  %969 = phi float [ %1083, %1081 ], [ %938, %966 ]
  %970 = phi float [ %1084, %1081 ], [ %939, %966 ]
  %971 = phi float [ %1085, %1081 ], [ %940, %966 ]
  %972 = phi float [ %1035, %1081 ], [ 2.000000e+02, %966 ]
  %973 = phi i32 [ %1086, %1081 ], [ 0, %966 ]
  %974 = sitofp i32 %915 to float
  %975 = fdiv fast float 1.000000e+00, %974
  %976 = sitofp i32 %973 to float
  %977 = fadd fast float %976, %171
  %978 = fmul fast float %977, %975
  %979 = fmul fast float %978, %978
  %980 = fmul fast float %979, %924
  %981 = fmul fast float %979, %925
  %982 = fadd fast float %980, %18
  %983 = fmul fast float %982, %945
  %984 = fadd fast float %983, %837
  %985 = fadd fast float %981, %19
  %986 = fmul fast float %985, %946
  %987 = fadd fast float %986, %839
  %988 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %5, float %984, float %987, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %989 = extractvalue %dx.types.ResRet.f32 %988, 0
  %990 = fcmp fast ogt float %989, -1.000000e+00
  %991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %992 = extractvalue %dx.types.CBufRet.f32 %991, 1
  %993 = select i1 %990, float %992, float 1.000000e+00
  %994 = fadd fast float %989, 1.000000e+00
  %995 = fmul fast float %993, %994
  %996 = call float @dx.op.unary.f32(i32 6, float %995)  ; FAbs(value)
  %997 = fmul fast float %984, %61
  %998 = fmul fast float %987, %62
  %999 = fsub fast float %997, %63
  %1000 = fsub fast float %998, %64
  %1001 = fmul fast float %999, %996
  %1002 = fmul fast float %1000, %996
  %1003 = fsub fast float %1001, %926
  %1004 = fsub fast float %1002, %927
  %1005 = fsub fast float %996, %936
  %1006 = call float @dx.op.dot3.f32(i32 55, float %1003, float %1004, float %1005, float %1003, float %1004, float %1005)  ; Dot3(ax,ay,az,bx,by,bz)
  %1007 = call float @dx.op.dot3.f32(i32 55, float %1003, float %1004, float %1005, float %912, float %913, float %914)  ; Dot3(ax,ay,az,bx,by,bz)
  %1008 = fsub fast float -0.000000e+00, %1007
  %1009 = call float @dx.op.dot3.f32(i32 55, float %1003, float %1004, float %1005, float %933, float %934, float %935)  ; Dot3(ax,ay,az,bx,by,bz)
  %1010 = call float @dx.op.unary.f32(i32 25, float %1006)  ; Rsqrt(value)
  %1011 = fmul fast float %1010, %1009
  %1012 = bitcast float %1006 to i32
  %1013 = ashr i32 %1012, 1
  %1014 = add nsw i32 %1013, 532487669
  %1015 = bitcast i32 %1014 to float
  %1016 = fmul fast float %1015, 0x3F947AE140000000
  %1017 = fsub fast float 2.000000e+00, %1016
  %1018 = call float @dx.op.unary.f32(i32 7, float %1017)  ; Saturate(value)
  %1019 = fmul fast float %1015, 0x3F7B4E81C0000000
  %1020 = fsub fast float 0x3FF5555560000000, %1019
  %1021 = call float @dx.op.unary.f32(i32 7, float %1020)  ; Saturate(value)
  %1022 = fmul fast float %996, 0x3F947AE140000000
  %1023 = fadd fast float %1022, -1.000000e+00
  %1024 = call float @dx.op.unary.f32(i32 7, float %1023)  ; Saturate(value)
  %1025 = fsub fast float %1021, %1018
  %1026 = fmul fast float %1024, %1025
  %1027 = fadd fast float %1026, %1018
  %1028 = fmul fast float %995, %829
  %1029 = fcmp fast ogt float %1028, 0.000000e+00
  %1030 = select i1 %1029, float %1027, float 0.000000e+00
  %1031 = fadd fast float %1011, 1.000000e+00
  %1032 = fmul fast float %1030, %1031
  %1033 = fadd fast float %1032, -1.000000e+00
  %1034 = fcmp fast ogt float %1033, %968
  %1035 = select i1 %1034, float %1008, float %972
  %1036 = fsub fast float %1008, %1035
  %1037 = fmul fast float %1036, 0x3FB9999940000000
  %1038 = fadd fast float %1037, 0xBFDFFFFF80000000
  %1039 = call float @dx.op.unary.f32(i32 7, float %1038)  ; Saturate(value)
  %1040 = fmul fast float %1007, 0x3FC99999E0000000
  %1041 = fadd fast float %1040, 0x3FF0000020000000
  %1042 = call float @dx.op.unary.f32(i32 7, float %1041)  ; Saturate(value)
  %1043 = sitofp i32 %52 to float
  %1044 = fdiv fast float 8.000000e+00, %1043
  %1045 = fmul fast float %1042, %1039
  %1046 = fmul fast float %1045, %1044
  %1047 = fsub fast float %968, %1046
  %1048 = fcmp fast ugt float %1033, %1047
  br i1 %1048, label %1049, label %1081, !dx.controlflow.hints !38

; <label>:1049                                    ; preds = %967
  %1050 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %5, float %984, float %987, float undef, float undef, i32 0, i32 0, i32 undef, float -1.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1051 = extractvalue %dx.types.ResRet.f32 %1050, 0
  %1052 = extractvalue %dx.types.ResRet.f32 %1050, 1
  %1053 = extractvalue %dx.types.ResRet.f32 %1050, 2
  %1054 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %1033)  ; FMax(a,b)
  %1055 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %1054)  ; FMin(a,b)
  %1056 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %1047)  ; FMax(a,b)
  %1057 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %1056)  ; FMin(a,b)
  %1058 = fmul fast float %1055, %1055
  %1059 = fsub fast float 1.000000e+00, %1058
  %1060 = call float @dx.op.unary.f32(i32 24, float %1059)  ; Sqrt(value)
  %1061 = fmul fast float %1057, %1057
  %1062 = fsub fast float 1.000000e+00, %1061
  %1063 = call float @dx.op.unary.f32(i32 24, float %1062)  ; Sqrt(value)
  %1064 = call float @dx.op.unary.f32(i32 15, float %1055)  ; Acos(value)
  %1065 = call float @dx.op.unary.f32(i32 15, float %1057)  ; Acos(value)
  %1066 = fmul fast float %1063, %1057
  %1067 = fmul fast float %1060, %1055
  %1068 = fsub fast float %1067, %1066
  %1069 = fsub fast float %1068, %1064
  %1070 = fadd fast float %1069, %1065
  %1071 = fsub fast float %1058, %1061
  %1072 = fmul fast float %963, %1070
  %1073 = fmul fast float %1071, %964
  %1074 = fadd fast float %1072, %1073
  %1075 = fmul fast float %1074, %1051
  %1076 = fmul fast float %1074, %1052
  %1077 = fmul fast float %1074, %1053
  %1078 = fadd fast float %1075, %969
  %1079 = fadd fast float %1076, %970
  %1080 = fadd fast float %1077, %971
  br label %1081

; <label>:1081                                    ; preds = %1049, %967
  %1082 = phi float [ %1047, %967 ], [ %1033, %1049 ]
  %1083 = phi float [ %969, %967 ], [ %1078, %1049 ]
  %1084 = phi float [ %970, %967 ], [ %1079, %1049 ]
  %1085 = phi float [ %971, %967 ], [ %1080, %1049 ]
  %1086 = add nuw nsw i32 %973, 1
  %1087 = icmp eq i32 %1086, %915
  br i1 %1087, label %1088, label %967

; <label>:1088                                    ; preds = %1081
  br label %1089

; <label>:1089                                    ; preds = %1088, %937
  %1090 = phi float [ %938, %937 ], [ %1083, %1088 ]
  %1091 = phi float [ %939, %937 ], [ %1084, %1088 ]
  %1092 = phi float [ %940, %937 ], [ %1085, %1088 ]
  %1093 = fmul fast float %961, -5.000000e-01
  br i1 %965, label %1094, label %1217

; <label>:1094                                    ; preds = %1089
  br label %1095

; <label>:1095                                    ; preds = %1209, %1094
  %1096 = phi float [ %1210, %1209 ], [ %960, %1094 ]
  %1097 = phi float [ %1211, %1209 ], [ %1090, %1094 ]
  %1098 = phi float [ %1212, %1209 ], [ %1091, %1094 ]
  %1099 = phi float [ %1213, %1209 ], [ %1092, %1094 ]
  %1100 = phi float [ %1163, %1209 ], [ 2.000000e+02, %1094 ]
  %1101 = phi i32 [ %1214, %1209 ], [ 0, %1094 ]
  %1102 = sitofp i32 %915 to float
  %1103 = fdiv fast float 1.000000e+00, %1102
  %1104 = sitofp i32 %1101 to float
  %1105 = fadd fast float %1104, %171
  %1106 = fmul fast float %1105, %1103
  %1107 = fmul fast float %1106, %1106
  %1108 = fmul fast float %1107, %924
  %1109 = fmul fast float %1107, %925
  %1110 = fadd fast float %1108, %18
  %1111 = fmul fast float %945, %1110
  %1112 = fsub fast float %837, %1111
  %1113 = fadd fast float %1109, %19
  %1114 = fmul fast float %946, %1113
  %1115 = fsub fast float %839, %1114
  %1116 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %5, float %1112, float %1115, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1117 = extractvalue %dx.types.ResRet.f32 %1116, 0
  %1118 = fcmp fast ogt float %1117, -1.000000e+00
  %1119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1120 = extractvalue %dx.types.CBufRet.f32 %1119, 1
  %1121 = select i1 %1118, float %1120, float 1.000000e+00
  %1122 = fadd fast float %1117, 1.000000e+00
  %1123 = fmul fast float %1121, %1122
  %1124 = call float @dx.op.unary.f32(i32 6, float %1123)  ; FAbs(value)
  %1125 = fmul fast float %1112, %61
  %1126 = fmul fast float %1115, %62
  %1127 = fsub fast float %1125, %63
  %1128 = fsub fast float %1126, %64
  %1129 = fmul fast float %1127, %1124
  %1130 = fmul fast float %1128, %1124
  %1131 = fsub fast float %1129, %926
  %1132 = fsub fast float %1130, %927
  %1133 = fsub fast float %1124, %936
  %1134 = call float @dx.op.dot3.f32(i32 55, float %1131, float %1132, float %1133, float %1131, float %1132, float %1133)  ; Dot3(ax,ay,az,bx,by,bz)
  %1135 = call float @dx.op.dot3.f32(i32 55, float %1131, float %1132, float %1133, float %912, float %913, float %914)  ; Dot3(ax,ay,az,bx,by,bz)
  %1136 = fsub fast float -0.000000e+00, %1135
  %1137 = call float @dx.op.dot3.f32(i32 55, float %1131, float %1132, float %1133, float %933, float %934, float %935)  ; Dot3(ax,ay,az,bx,by,bz)
  %1138 = call float @dx.op.unary.f32(i32 25, float %1134)  ; Rsqrt(value)
  %1139 = fmul fast float %1138, %1137
  %1140 = bitcast float %1134 to i32
  %1141 = ashr i32 %1140, 1
  %1142 = add nsw i32 %1141, 532487669
  %1143 = bitcast i32 %1142 to float
  %1144 = fmul fast float %1143, 0x3F947AE140000000
  %1145 = fsub fast float 2.000000e+00, %1144
  %1146 = call float @dx.op.unary.f32(i32 7, float %1145)  ; Saturate(value)
  %1147 = fmul fast float %1143, 0x3F7B4E81C0000000
  %1148 = fsub fast float 0x3FF5555560000000, %1147
  %1149 = call float @dx.op.unary.f32(i32 7, float %1148)  ; Saturate(value)
  %1150 = fmul fast float %1124, 0x3F947AE140000000
  %1151 = fadd fast float %1150, -1.000000e+00
  %1152 = call float @dx.op.unary.f32(i32 7, float %1151)  ; Saturate(value)
  %1153 = fsub fast float %1149, %1146
  %1154 = fmul fast float %1152, %1153
  %1155 = fadd fast float %1154, %1146
  %1156 = fmul fast float %1123, %829
  %1157 = fcmp fast ogt float %1156, 0.000000e+00
  %1158 = select i1 %1157, float %1155, float 0.000000e+00
  %1159 = fadd fast float %1139, 1.000000e+00
  %1160 = fmul fast float %1158, %1159
  %1161 = fadd fast float %1160, -1.000000e+00
  %1162 = fcmp fast ogt float %1161, %1096
  %1163 = select i1 %1162, float %1136, float %1100
  %1164 = fsub fast float %1136, %1163
  %1165 = fmul fast float %1164, 0x3FB9999940000000
  %1166 = fadd fast float %1165, 0xBFDFFFFF80000000
  %1167 = call float @dx.op.unary.f32(i32 7, float %1166)  ; Saturate(value)
  %1168 = fmul fast float %1135, 0x3FC99999E0000000
  %1169 = fadd fast float %1168, 0x3FF0000020000000
  %1170 = call float @dx.op.unary.f32(i32 7, float %1169)  ; Saturate(value)
  %1171 = sitofp i32 %52 to float
  %1172 = fdiv fast float 8.000000e+00, %1171
  %1173 = fmul fast float %1170, %1167
  %1174 = fmul fast float %1173, %1172
  %1175 = fsub fast float %1096, %1174
  %1176 = fcmp fast ugt float %1161, %1175
  br i1 %1176, label %1177, label %1209, !dx.controlflow.hints !38

; <label>:1177                                    ; preds = %1095
  %1178 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %5, float %1112, float %1115, float undef, float undef, i32 0, i32 0, i32 undef, float -1.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1179 = extractvalue %dx.types.ResRet.f32 %1178, 0
  %1180 = extractvalue %dx.types.ResRet.f32 %1178, 1
  %1181 = extractvalue %dx.types.ResRet.f32 %1178, 2
  %1182 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %1161)  ; FMax(a,b)
  %1183 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %1182)  ; FMin(a,b)
  %1184 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %1175)  ; FMax(a,b)
  %1185 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %1184)  ; FMin(a,b)
  %1186 = fmul fast float %1183, %1183
  %1187 = fsub fast float 1.000000e+00, %1186
  %1188 = call float @dx.op.unary.f32(i32 24, float %1187)  ; Sqrt(value)
  %1189 = fmul fast float %1185, %1185
  %1190 = fsub fast float 1.000000e+00, %1189
  %1191 = call float @dx.op.unary.f32(i32 24, float %1190)  ; Sqrt(value)
  %1192 = call float @dx.op.unary.f32(i32 15, float %1183)  ; Acos(value)
  %1193 = call float @dx.op.unary.f32(i32 15, float %1185)  ; Acos(value)
  %1194 = fmul fast float %1191, %1185
  %1195 = fmul fast float %1188, %1183
  %1196 = fsub fast float %1195, %1194
  %1197 = fsub fast float %1196, %1192
  %1198 = fadd fast float %1197, %1193
  %1199 = fsub fast float %1186, %1189
  %1200 = fmul fast float %1093, %1198
  %1201 = fmul fast float %1199, %964
  %1202 = fadd fast float %1200, %1201
  %1203 = fmul fast float %1202, %1179
  %1204 = fmul fast float %1202, %1180
  %1205 = fmul fast float %1202, %1181
  %1206 = fadd fast float %1203, %1097
  %1207 = fadd fast float %1204, %1098
  %1208 = fadd fast float %1205, %1099
  br label %1209

; <label>:1209                                    ; preds = %1177, %1095
  %1210 = phi float [ %1175, %1095 ], [ %1161, %1177 ]
  %1211 = phi float [ %1097, %1095 ], [ %1206, %1177 ]
  %1212 = phi float [ %1098, %1095 ], [ %1207, %1177 ]
  %1213 = phi float [ %1099, %1095 ], [ %1208, %1177 ]
  %1214 = add nuw nsw i32 %1101, 1
  %1215 = icmp eq i32 %1214, %915
  br i1 %1215, label %1216, label %1095

; <label>:1216                                    ; preds = %1209
  br label %1217

; <label>:1217                                    ; preds = %1216, %1089
  %1218 = phi float [ %1090, %1089 ], [ %1211, %1216 ]
  %1219 = phi float [ %1091, %1089 ], [ %1212, %1216 ]
  %1220 = phi float [ %1092, %1089 ], [ %1213, %1216 ]
  %1221 = add nuw nsw i32 %941, 1
  %1222 = icmp eq i32 %1221, 4
  br i1 %1222, label %1223, label %937

; <label>:1223                                    ; preds = %1217
  %1224 = fmul fast float %1218, 2.500000e-01
  %1225 = fmul fast float %1219, 2.500000e-01
  %1226 = fmul fast float %1220, 2.500000e-01
  %1227 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1224)  ; LegacyF32ToF16(value)
  %1228 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1225)  ; LegacyF32ToF16(value)
  %1229 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1226)  ; LegacyF32ToF16(value)
  %1230 = lshr i32 %1227, 4
  %1231 = and i32 %1230, 2047
  %1232 = shl i32 %1228, 7
  %1233 = and i32 %1232, 4192256
  %1234 = or i32 %1233, %1231
  %1235 = lshr i32 %1229, 5
  %1236 = shl i32 %1235, 22
  %1237 = or i32 %1234, %1236
  br label %1238

; <label>:1238                                    ; preds = %1223, %822
  %1239 = phi i32 [ %1237, %1223 ], [ 0, %822 ]
  %1240 = load float, float* %71, align 4
  %1241 = load float, float* %72, align 4
  %1242 = load float, float* %73, align 4
  %1243 = load float, float* %74, align 4
  %1244 = getelementptr inbounds [4 x float], [4 x float]* %12, i32 0, i32 0
  store float %1240, float* %1244, align 4
  %1245 = getelementptr inbounds [4 x float], [4 x float]* %12, i32 0, i32 1
  store float %1241, float* %1245, align 4
  %1246 = getelementptr inbounds [4 x float], [4 x float]* %12, i32 0, i32 2
  store float %1242, float* %1246, align 4
  %1247 = getelementptr inbounds [4 x float], [4 x float]* %12, i32 0, i32 3
  store float %1243, float* %1247, align 4
  %1248 = getelementptr [4 x float], [4 x float]* %12, i32 0, i32 %91
  %1249 = load float, float* %1248, align 4, !tbaa !20, !noalias !43
  %1250 = fsub fast float %1249, %100
  %1251 = call float @dx.op.unary.f32(i32 6, float %1250)  ; FAbs(value)
  %1252 = fsub fast float %1249, %102
  %1253 = call float @dx.op.unary.f32(i32 6, float %1252)  ; FAbs(value)
  %1254 = fcmp fast olt float %1251, %1253
  %1255 = select i1 %1254, i32 %699, i32 %1239
  %1256 = getelementptr inbounds [4 x float], [4 x float]* %11, i32 0, i32 0
  store float %1240, float* %1256, align 4
  %1257 = getelementptr inbounds [4 x float], [4 x float]* %11, i32 0, i32 1
  store float %1241, float* %1257, align 4
  %1258 = getelementptr inbounds [4 x float], [4 x float]* %11, i32 0, i32 2
  store float %1242, float* %1258, align 4
  %1259 = getelementptr inbounds [4 x float], [4 x float]* %11, i32 0, i32 3
  store float %1243, float* %1259, align 4
  %1260 = getelementptr [4 x float], [4 x float]* %11, i32 0, i32 %98
  %1261 = load float, float* %1260, align 4, !tbaa !20, !noalias !50
  %1262 = fsub fast float %1261, %100
  %1263 = call float @dx.op.unary.f32(i32 6, float %1262)  ; FAbs(value)
  %1264 = fsub fast float %1261, %102
  %1265 = call float @dx.op.unary.f32(i32 6, float %1264)  ; FAbs(value)
  %1266 = fcmp fast olt float %1263, %1265
  %1267 = select i1 %1266, i32 %699, i32 %1239
  %1268 = icmp eq i32 %90, 1
  %1269 = select i1 %1268, i32 %699, i32 %1239
  %1270 = icmp eq i32 %90, 2
  %1271 = select i1 %1270, i32 %699, i32 %1255
  %1272 = icmp eq i32 %90, 3
  %1273 = select i1 %1272, i32 %699, i32 %1267
  %1274 = icmp eq i32 %97, 0
  %1275 = select i1 %1274, i32 %1239, i32 %699
  %1276 = icmp eq i32 %97, 1
  %1277 = select i1 %1276, i32 %1239, i32 %1269
  %1278 = icmp eq i32 %97, 2
  %1279 = select i1 %1278, i32 %1239, i32 %1271
  %1280 = icmp eq i32 %97, 3
  %1281 = select i1 %1280, i32 %1239, i32 %1273
  %1282 = icmp eq i32 %91, 0
  %1283 = select i1 %1282, i32 %1255, i32 %1275
  %1284 = icmp eq i32 %91, 1
  %1285 = select i1 %1284, i32 %1255, i32 %1277
  %1286 = icmp eq i32 %91, 2
  %1287 = select i1 %1286, i32 %1255, i32 %1279
  %1288 = icmp eq i32 %91, 3
  %1289 = select i1 %1288, i32 %1255, i32 %1281
  %1290 = icmp eq i32 %98, 0
  %1291 = select i1 %1290, i32 %1267, i32 %1283
  %1292 = icmp eq i32 %98, 1
  %1293 = select i1 %1292, i32 %1267, i32 %1285
  %1294 = icmp eq i32 %98, 2
  %1295 = select i1 %1294, i32 %1267, i32 %1287
  %1296 = icmp eq i32 %98, 3
  %1297 = select i1 %1296, i32 %1267, i32 %1289
  %1298 = shl i32 %1291, 4
  %1299 = and i32 %1298, 32752
  %1300 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1299)  ; LegacyF16ToF32(value)
  %1301 = lshr i32 %1291, 7
  %1302 = and i32 %1301, 32752
  %1303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1302)  ; LegacyF16ToF32(value)
  %1304 = lshr i32 %1291, 22
  %1305 = shl nuw nsw i32 %1304, 5
  %1306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1305)  ; LegacyF16ToF32(value)
  %1307 = call float @dx.op.binary.f32(i32 35, float %1300, float %1303)  ; FMax(a,b)
  %1308 = call float @dx.op.binary.f32(i32 35, float %1307, float %1306)  ; FMax(a,b)
  %1309 = fmul fast float %1308, %1308
  %1310 = shl i32 %8, 1
  %1311 = shl i32 %9, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1310, i32 %1311, i32 undef, float %1308, float %1309, float %1308, float %1308, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1312 = shl i32 %1293, 4
  %1313 = and i32 %1312, 32752
  %1314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1313)  ; LegacyF16ToF32(value)
  %1315 = lshr i32 %1293, 7
  %1316 = and i32 %1315, 32752
  %1317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1316)  ; LegacyF16ToF32(value)
  %1318 = lshr i32 %1293, 22
  %1319 = shl nuw nsw i32 %1318, 5
  %1320 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1319)  ; LegacyF16ToF32(value)
  %1321 = call float @dx.op.binary.f32(i32 35, float %1314, float %1317)  ; FMax(a,b)
  %1322 = call float @dx.op.binary.f32(i32 35, float %1321, float %1320)  ; FMax(a,b)
  %1323 = fmul fast float %1322, %1322
  %1324 = or i32 %1310, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1324, i32 %1311, i32 undef, float %1322, float %1323, float %1322, float %1322, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1325 = shl i32 %1295, 4
  %1326 = and i32 %1325, 32752
  %1327 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1326)  ; LegacyF16ToF32(value)
  %1328 = lshr i32 %1295, 7
  %1329 = and i32 %1328, 32752
  %1330 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1329)  ; LegacyF16ToF32(value)
  %1331 = lshr i32 %1295, 22
  %1332 = shl nuw nsw i32 %1331, 5
  %1333 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1332)  ; LegacyF16ToF32(value)
  %1334 = call float @dx.op.binary.f32(i32 35, float %1327, float %1330)  ; FMax(a,b)
  %1335 = call float @dx.op.binary.f32(i32 35, float %1334, float %1333)  ; FMax(a,b)
  %1336 = fmul fast float %1335, %1335
  %1337 = or i32 %1311, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1310, i32 %1337, i32 undef, float %1335, float %1336, float %1335, float %1335, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1338 = shl i32 %1297, 4
  %1339 = and i32 %1338, 32752
  %1340 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1339)  ; LegacyF16ToF32(value)
  %1341 = lshr i32 %1297, 7
  %1342 = and i32 %1341, 32752
  %1343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1342)  ; LegacyF16ToF32(value)
  %1344 = lshr i32 %1297, 22
  %1345 = shl nuw nsw i32 %1344, 5
  %1346 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1345)  ; LegacyF16ToF32(value)
  %1347 = call float @dx.op.binary.f32(i32 35, float %1340, float %1343)  ; FMax(a,b)
  %1348 = call float @dx.op.binary.f32(i32 35, float %1347, float %1346)  ; FMax(a,b)
  %1349 = fmul fast float %1348, %1348
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1324, i32 %1337, i32 undef, float %1348, float %1349, float %1348, float %1348, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #3

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.legacyF32ToF16(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind }
attributes #3 = { noduplicate nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!17}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !10, !12, !15}
!5 = !{!6, !8, !9}
!6 = !{i32 0, %"class.Texture2D<float>"* undef, !"", i32 0, i32 11, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 0, i32 14, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 6, i32 1, i32 2, i32 0, !7}
!10 = !{!11}
!11 = !{i32 0, %"class.RWTexture2D<vector<float, 2> >"* undef, !"", i32 0, i32 4, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!12 = !{!13, !14}
!13 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!14 = !{i32 1, %ConstantBufferGTAO0* undef, !"", i32 0, i32 0, i32 1, i32 96, null}
!15 = !{!16}
!16 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!17 = !{void ()* @cs_gtao_prepass, !"cs_gtao_prepass", null, !4, !18}
!18 = !{i32 0, i64 256, i32 4, !19}
!19 = !{i32 8, i32 8, i32 1}
!20 = !{!21, !21, i64 0}
!21 = !{!"float", !22, i64 0}
!22 = !{!"omnipotent char", !23, i64 0}
!23 = !{!"Simple C/C++ TBAA"}
!24 = !{!25, !27}
!25 = distinct !{!25, !26, !"\01?__GTAOQuadSortIndices@@YAXUGTAOQuadConfig@@V?$vector@M$03@@AIAV?$vector@I$03@@@Z: %quadIndices"}
!26 = distinct !{!26, !"\01?__GTAOQuadSortIndices@@YAXUGTAOQuadConfig@@V?$vector@M$03@@AIAV?$vector@I$03@@@Z"}
!27 = distinct !{!27, !28, !"\01?GTAOQuadMain@@YA?AUGTAOQuadOutput@@UGTAOQuadConfig@@UGTAOConfig@@V?$Texture2D@M@@V?$Texture2D@V?$vector@M$02@@@@USamplerState@@V?$vector@M$03@@V?$vector@M$01@@555IIV?$vector@I$03@@@Z: %agg.result"}
!28 = distinct !{!28, !"\01?GTAOQuadMain@@YA?AUGTAOQuadOutput@@UGTAOQuadConfig@@UGTAOConfig@@V?$Texture2D@M@@V?$Texture2D@V?$vector@M$02@@@@USamplerState@@V?$vector@M$03@@V?$vector@M$01@@555IIV?$vector@I$03@@@Z"}
!29 = !{!27}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = !{!32, !32, i64 0}
!32 = !{!"int", !22, i64 0}
!33 = !{!34, !36, !27}
!34 = distinct !{!34, !35, !"\01?__GTAOQuadCalculateForPixel@@YA?AUGTAOPixelOutput@@UGTAOQuadConfig@@UGTAOConfig@@V?$Texture2D@M@@V?$Texture2D@V?$vector@M$02@@@@USamplerState@@V?$vector@I$03@@V?$vector@M$03@@5V?$vector@M$01@@666I7AIAI@Z: %agg.result"}
!35 = distinct !{!35, !"\01?__GTAOQuadCalculateForPixel@@YA?AUGTAOPixelOutput@@UGTAOQuadConfig@@UGTAOConfig@@V?$Texture2D@M@@V?$Texture2D@V?$vector@M$02@@@@USamplerState@@V?$vector@I$03@@V?$vector@M$03@@5V?$vector@M$01@@666I7AIAI@Z"}
!36 = distinct !{!36, !35, !"\01?__GTAOQuadCalculateForPixel@@YA?AUGTAOPixelOutput@@UGTAOQuadConfig@@UGTAOConfig@@V?$Texture2D@M@@V?$Texture2D@V?$vector@M$02@@@@USamplerState@@V?$vector@I$03@@V?$vector@M$03@@5V?$vector@M$01@@666I7AIAI@Z: %executed"}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 1}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = !{!40, !42, !27}
!40 = distinct !{!40, !41, !"\01?__GTAOQuadCalculateForPixel@@YA?AUGTAOPixelOutput@@UGTAOQuadConfig@@UGTAOConfig@@V?$Texture2D@M@@V?$Texture2D@V?$vector@M$02@@@@USamplerState@@V?$vector@I$03@@V?$vector@M$03@@5V?$vector@M$01@@666I7AIAI@Z: %agg.result"}
!41 = distinct !{!41, !"\01?__GTAOQuadCalculateForPixel@@YA?AUGTAOPixelOutput@@UGTAOQuadConfig@@UGTAOConfig@@V?$Texture2D@M@@V?$Texture2D@V?$vector@M$02@@@@USamplerState@@V?$vector@I$03@@V?$vector@M$03@@5V?$vector@M$01@@666I7AIAI@Z"}
!42 = distinct !{!42, !41, !"\01?__GTAOQuadCalculateForPixel@@YA?AUGTAOPixelOutput@@UGTAOQuadConfig@@UGTAOConfig@@V?$Texture2D@M@@V?$Texture2D@V?$vector@M$02@@@@USamplerState@@V?$vector@I$03@@V?$vector@M$03@@5V?$vector@M$01@@666I7AIAI@Z: %executed"}
!43 = !{!44, !46, !47, !49, !27}
!44 = distinct !{!44, !45, !"\01?__GTAOQuadBilateralUpsamplePixel@@YAXUGTAOQuadConfig@@V?$vector@M$03@@V?$vector@I$03@@MMIAIAV2@AIAV3@@Z: %visibility"}
!45 = distinct !{!45, !"\01?__GTAOQuadBilateralUpsamplePixel@@YAXUGTAOQuadConfig@@V?$vector@M$03@@V?$vector@I$03@@MMIAIAV2@AIAV3@@Z"}
!46 = distinct !{!46, !45, !"\01?__GTAOQuadBilateralUpsamplePixel@@YAXUGTAOQuadConfig@@V?$vector@M$03@@V?$vector@I$03@@MMIAIAV2@AIAV3@@Z: %irradiance"}
!47 = distinct !{!47, !48, !"\01?__GTAOQuadBilateralUpsample@@YAXUGTAOQuadConfig@@V?$vector@M$03@@V?$vector@I$03@@MMIAIAV2@AIAV3@@Z: %visibility"}
!48 = distinct !{!48, !"\01?__GTAOQuadBilateralUpsample@@YAXUGTAOQuadConfig@@V?$vector@M$03@@V?$vector@I$03@@MMIAIAV2@AIAV3@@Z"}
!49 = distinct !{!49, !48, !"\01?__GTAOQuadBilateralUpsample@@YAXUGTAOQuadConfig@@V?$vector@M$03@@V?$vector@I$03@@MMIAIAV2@AIAV3@@Z: %irradiance"}
!50 = !{!51, !53, !47, !49, !27}
!51 = distinct !{!51, !52, !"\01?__GTAOQuadBilateralUpsamplePixel@@YAXUGTAOQuadConfig@@V?$vector@M$03@@V?$vector@I$03@@MMIAIAV2@AIAV3@@Z: %visibility"}
!52 = distinct !{!52, !"\01?__GTAOQuadBilateralUpsamplePixel@@YAXUGTAOQuadConfig@@V?$vector@M$03@@V?$vector@I$03@@MMIAIAV2@AIAV3@@Z"}
!53 = distinct !{!53, !52, !"\01?__GTAOQuadBilateralUpsamplePixel@@YAXUGTAOQuadConfig@@V?$vector@M$03@@V?$vector@I$03@@MMIAIAV2@AIAV3@@Z: %irradiance"}

