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
; shader hash: 756d55c3c99f4c0e03551cc68072b521
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
;                                   texture     f32          2d      T1             t6     1
;                                       UAV     f32          2d      U0             u3     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %8 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %9 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %10 = alloca [4 x float], align 4
  %11 = alloca [4 x float], align 4
  %12 = alloca [4 x float], align 4
  %13 = alloca [4 x float], align 4
  %14 = alloca [4 x float], align 4
  %15 = alloca [4 x float], align 4
  %16 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %17 = extractvalue %dx.types.CBufRet.f32 %16, 2
  %18 = extractvalue %dx.types.CBufRet.f32 %16, 3
  %19 = uitofp i32 %7 to float
  %20 = uitofp i32 %8 to float
  %21 = fmul fast float %19, 2.000000e+00
  %22 = fmul fast float %21, %17
  %23 = fmul fast float %20, 2.000000e+00
  %24 = fmul fast float %23, %18
  %25 = fadd fast float %22, %17
  %26 = fadd fast float %24, %18
  %27 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %3, %dx.types.Handle %4, float %25, float %26, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %28 = extractvalue %dx.types.ResRet.f32 %27, 0
  %29 = extractvalue %dx.types.ResRet.f32 %27, 1
  %30 = extractvalue %dx.types.ResRet.f32 %27, 2
  %31 = extractvalue %dx.types.ResRet.f32 %27, 3
  %32 = fcmp fast ogt float %28, -1.000000e+00
  %33 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %34 = extractvalue %dx.types.CBufRet.f32 %33, 1
  %35 = select i1 %32, float %34, float 1.000000e+00
  %36 = fadd fast float %28, 1.000000e+00
  %37 = fmul fast float %35, %36
  %38 = fcmp fast ogt float %29, -1.000000e+00
  %39 = select i1 %38, float %34, float 1.000000e+00
  %40 = fadd fast float %29, 1.000000e+00
  %41 = fmul fast float %39, %40
  %42 = fcmp fast ogt float %30, -1.000000e+00
  %43 = select i1 %42, float %34, float 1.000000e+00
  %44 = fadd fast float %30, 1.000000e+00
  %45 = fmul fast float %43, %44
  %46 = fcmp fast ogt float %31, -1.000000e+00
  %47 = select i1 %46, float %34, float 1.000000e+00
  %48 = fadd fast float %31, 1.000000e+00
  %49 = fmul fast float %47, %48
  %50 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %51 = extractvalue %dx.types.CBufRet.i32 %50, 1
  %52 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %53 = extractvalue %dx.types.CBufRet.f32 %52, 2
  %54 = extractvalue %dx.types.CBufRet.f32 %52, 3
  %55 = fmul fast float %53, %53
  %56 = fmul fast float %55, 6.400000e+01
  %57 = fmul fast float %54, %54
  %58 = fmul fast float %57, 6.400000e+01
  %59 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %60 = extractvalue %dx.types.CBufRet.f32 %59, 0
  %61 = extractvalue %dx.types.CBufRet.f32 %59, 1
  %62 = extractvalue %dx.types.CBufRet.f32 %59, 2
  %63 = extractvalue %dx.types.CBufRet.f32 %59, 3
  %64 = extractvalue %dx.types.CBufRet.f32 %16, 0
  %65 = extractvalue %dx.types.CBufRet.f32 %16, 1
  %66 = call float @dx.op.unary.f32(i32 6, float %49)  ; FAbs(value)
  %67 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %68 = call float @dx.op.unary.f32(i32 6, float %37)  ; FAbs(value)
  %69 = call float @dx.op.unary.f32(i32 6, float %41)  ; FAbs(value)
  %70 = getelementptr inbounds [4 x float], [4 x float]* %15, i32 0, i32 0
  store float %66, float* %70, align 4
  %71 = getelementptr inbounds [4 x float], [4 x float]* %15, i32 0, i32 1
  store float %67, float* %71, align 4
  %72 = getelementptr inbounds [4 x float], [4 x float]* %15, i32 0, i32 2
  store float %68, float* %72, align 4
  %73 = getelementptr inbounds [4 x float], [4 x float]* %15, i32 0, i32 3
  store float %69, float* %73, align 4
  %74 = getelementptr inbounds [4 x float], [4 x float]* %14, i32 0, i32 0
  store float %66, float* %74, align 4
  %75 = getelementptr inbounds [4 x float], [4 x float]* %14, i32 0, i32 1
  store float %67, float* %75, align 4
  %76 = getelementptr inbounds [4 x float], [4 x float]* %14, i32 0, i32 2
  store float %68, float* %76, align 4
  %77 = getelementptr inbounds [4 x float], [4 x float]* %14, i32 0, i32 3
  store float %69, float* %77, align 4
  %78 = fcmp fast olt float %66, %67
  %79 = zext i1 %78 to i32
  %80 = xor i32 %79, 1
  %81 = fcmp fast olt float %68, %69
  %82 = select i1 %81, i32 3, i32 2
  %83 = select i1 %81, i32 2, i32 3
  %84 = getelementptr [4 x float], [4 x float]* %14, i32 0, i32 %79
  %85 = load float, float* %84, align 4, !tbaa !19, !noalias !23
  %86 = getelementptr [4 x float], [4 x float]* %14, i32 0, i32 %82
  %87 = load float, float* %86, align 4, !tbaa !19, !noalias !23
  %88 = fcmp fast olt float %85, %87
  %89 = select i1 %88, i32 %82, i32 %79
  %90 = select i1 %88, i32 %79, i32 %82
  %91 = getelementptr [4 x float], [4 x float]* %14, i32 0, i32 %80
  %92 = load float, float* %91, align 4, !tbaa !19, !noalias !23
  %93 = getelementptr [4 x float], [4 x float]* %14, i32 0, i32 %83
  %94 = load float, float* %93, align 4, !tbaa !19, !noalias !23
  %95 = fcmp fast ogt float %92, %94
  %96 = select i1 %95, i32 %83, i32 %80
  %97 = select i1 %95, i32 %80, i32 %83
  %98 = getelementptr [4 x float], [4 x float]* %15, i32 0, i32 %89
  %99 = load float, float* %98, align 4, !tbaa !19, !noalias !28
  %100 = getelementptr [4 x float], [4 x float]* %15, i32 0, i32 %96
  %101 = load float, float* %100, align 4, !tbaa !19, !noalias !28
  %102 = fmul fast float %17, %21
  %103 = fmul fast float %18, %23
  %104 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %3, %dx.types.Handle %4, float %102, float %103, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %105 = extractvalue %dx.types.ResRet.f32 %104, 0
  %106 = extractvalue %dx.types.ResRet.f32 %104, 2
  %107 = extractvalue %dx.types.ResRet.f32 %104, 3
  %108 = fsub fast float %45, %105
  %109 = call float @dx.op.unary.f32(i32 6, float %108)  ; FAbs(value)
  %110 = fsub fast float %37, %106
  %111 = call float @dx.op.unary.f32(i32 6, float %110)  ; FAbs(value)
  %112 = fadd fast float %111, %109
  %113 = fsub fast float %107, %41
  %114 = call float @dx.op.unary.f32(i32 6, float %113)  ; FAbs(value)
  %115 = fmul fast float %114, 0x3FF6A09E60000000
  %116 = fadd fast float %112, %115
  %117 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?gtaoQuadDiscontinuity@@3PAMA", i32 0, i32 %9
  store float %116, float addrspace(3)* %117, align 4, !tbaa !19, !noalias !28
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %118 = and i32 %9, 63
  %119 = xor i32 %118, 1
  %120 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?gtaoQuadDiscontinuity@@3PAMA", i32 0, i32 %119
  %121 = load float, float addrspace(3)* %120, align 4, !tbaa !19, !noalias !28
  %122 = xor i32 %118, 8
  %123 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?gtaoQuadDiscontinuity@@3PAMA", i32 0, i32 %122
  %124 = load float, float addrspace(3)* %123, align 4, !tbaa !19, !noalias !28
  %125 = xor i32 %118, 9
  %126 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?gtaoQuadDiscontinuity@@3PAMA", i32 0, i32 %125
  %127 = load float, float addrspace(3)* %126, align 4, !tbaa !19, !noalias !28
  %128 = fsub fast float %121, %116
  %129 = call float @dx.op.unary.f32(i32 6, float %128)  ; FAbs(value)
  %130 = fsub fast float %124, %116
  %131 = call float @dx.op.unary.f32(i32 6, float %130)  ; FAbs(value)
  %132 = fadd fast float %131, %129
  %133 = fsub fast float %127, %116
  %134 = call float @dx.op.unary.f32(i32 6, float %133)  ; FAbs(value)
  %135 = fadd fast float %132, %134
  store float %135, float addrspace(3)* %117, align 4, !tbaa !19, !noalias !28
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %136 = fcmp fast olt float %101, 0.000000e+00
  %137 = zext i1 %136 to i32
  %138 = icmp eq i32 %9, 0
  br i1 %138, label %139, label %140, !dx.controlflow.hints !29

; <label>:139                                     ; preds = %0
  store i32 0, i32 addrspace(3)* @"\01?gtaoQuadMaxUint@@3IA", align 4, !tbaa !30, !noalias !28
  br label %140

; <label>:140                                     ; preds = %139, %0
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %141 = atomicrmw umax i32 addrspace(3)* @"\01?gtaoQuadMaxUint@@3IA", i32 %137 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %142 = fmul fast float %64, %22
  %143 = fmul fast float %65, %24
  %144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %145 = extractvalue %dx.types.CBufRet.f32 %144, 2
  %146 = fmul fast float %145, 0x3FE3C6EF40000000
  %147 = frem fast float %142, 2.560000e+02
  %148 = frem fast float %143, 2.560000e+02
  %149 = fptoui float %147 to i32
  %150 = fptoui float %148 to i32
  %151 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %149, i32 %150, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %152 = extractvalue %dx.types.ResRet.f32 %151, 0
  %153 = extractvalue %dx.types.ResRet.f32 %151, 1
  %154 = fadd fast float %152, %146
  %155 = fadd fast float %153, %146
  %156 = call float @dx.op.unary.f32(i32 22, float %154)  ; Frc(value)
  %157 = call float @dx.op.unary.f32(i32 22, float %155)  ; Frc(value)
  %158 = fmul fast float %25, %64
  %159 = fmul fast float %26, %65
  %160 = frem fast float %158, 2.560000e+02
  %161 = frem fast float %159, 2.560000e+02
  %162 = fptoui float %160 to i32
  %163 = fptoui float %161 to i32
  %164 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %162, i32 %163, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %165 = extractvalue %dx.types.ResRet.f32 %164, 0
  %166 = extractvalue %dx.types.ResRet.f32 %164, 1
  %167 = fadd fast float %165, %146
  %168 = fadd fast float %166, %146
  %169 = call float @dx.op.unary.f32(i32 22, float %167)  ; Frc(value)
  %170 = call float @dx.op.unary.f32(i32 22, float %168)  ; Frc(value)
  %171 = getelementptr inbounds [4 x float], [4 x float]* %13, i32 0, i32 0
  store float %49, float* %171, align 4
  %172 = getelementptr inbounds [4 x float], [4 x float]* %13, i32 0, i32 1
  store float %45, float* %172, align 4
  %173 = getelementptr inbounds [4 x float], [4 x float]* %13, i32 0, i32 2
  store float %37, float* %173, align 4
  %174 = getelementptr inbounds [4 x float], [4 x float]* %13, i32 0, i32 3
  store float %41, float* %174, align 4
  %175 = getelementptr [4 x float], [4 x float]* %13, i32 0, i32 %89
  %176 = load float, float* %175, align 4, !tbaa !19, !noalias !32
  %177 = and i32 %89, 1
  %178 = uitofp i32 %177 to float
  %179 = fadd fast float %178, 5.000000e-01
  %180 = lshr i32 %89, 1
  %181 = uitofp i32 %180 to float
  %182 = fadd fast float %181, 5.000000e-01
  %183 = fadd fast float %179, %21
  %184 = fmul fast float %17, %183
  %185 = fadd fast float %182, %23
  %186 = fmul fast float %18, %185
  %187 = fcmp fast olt float %176, 6.550000e+04
  br i1 %187, label %188, label %590, !dx.controlflow.hints !36

; <label>:188                                     ; preds = %140
  %189 = fadd fast float %183, -5.000000e-01
  %190 = fmul fast float %17, %189
  %191 = fadd fast float %185, -5.000000e-01
  %192 = fmul fast float %18, %191
  %193 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %3, %dx.types.Handle %4, float %190, float %192, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %194 = extractvalue %dx.types.ResRet.f32 %193, 0
  %195 = extractvalue %dx.types.ResRet.f32 %193, 1
  %196 = extractvalue %dx.types.ResRet.f32 %193, 2
  %197 = fcmp fast ogt float %194, -1.000000e+00
  %198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %199 = extractvalue %dx.types.CBufRet.f32 %198, 1
  %200 = select i1 %197, float %199, float 1.000000e+00
  %201 = fadd fast float %194, 1.000000e+00
  %202 = fmul fast float %200, %201
  %203 = fcmp fast ogt float %195, -1.000000e+00
  %204 = select i1 %203, float %199, float 1.000000e+00
  %205 = fadd fast float %195, 1.000000e+00
  %206 = fmul fast float %204, %205
  %207 = fcmp fast ogt float %196, -1.000000e+00
  %208 = select i1 %207, float %199, float 1.000000e+00
  %209 = fadd fast float %196, 1.000000e+00
  %210 = fmul fast float %208, %209
  %211 = fadd fast float %183, 5.000000e-01
  %212 = fmul fast float %17, %211
  %213 = fadd fast float %185, 5.000000e-01
  %214 = fmul fast float %18, %213
  %215 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %3, %dx.types.Handle %4, float %212, float %214, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %216 = extractvalue %dx.types.ResRet.f32 %215, 0
  %217 = extractvalue %dx.types.ResRet.f32 %215, 2
  %218 = fcmp fast ogt float %216, -1.000000e+00
  %219 = select i1 %218, float %199, float 1.000000e+00
  %220 = fadd fast float %216, 1.000000e+00
  %221 = fmul fast float %219, %220
  %222 = fcmp fast ogt float %217, -1.000000e+00
  %223 = select i1 %222, float %199, float 1.000000e+00
  %224 = fadd fast float %217, 1.000000e+00
  %225 = fmul fast float %223, %224
  %226 = fsub fast float %206, %202
  %227 = fsub fast float %225, %206
  %228 = fsub fast float %206, %210
  %229 = fsub fast float %221, %206
  %230 = call float @dx.op.unary.f32(i32 6, float %226)  ; FAbs(value)
  %231 = call float @dx.op.unary.f32(i32 6, float %227)  ; FAbs(value)
  %232 = fcmp fast olt float %230, %231
  %233 = call float @dx.op.unary.f32(i32 6, float %228)  ; FAbs(value)
  %234 = call float @dx.op.unary.f32(i32 6, float %229)  ; FAbs(value)
  %235 = fcmp fast olt float %233, %234
  %236 = select i1 %232, float %226, float %227
  %237 = select i1 %235, float %228, float %229
  %238 = select i1 %232, float %202, float %225
  %239 = fmul fast float %17, %60
  %240 = fmul fast float %239, %238
  %241 = select i1 %235, float %210, float %221
  %242 = fmul fast float %18, %61
  %243 = fmul fast float %242, %241
  %244 = fmul fast float %243, %240
  %245 = fmul fast float %243, %236
  %246 = fmul fast float %240, %237
  %247 = fsub fast float -0.000000e+00, %245
  %248 = fmul fast float %184, %60
  %249 = fsub fast float %248, %62
  %250 = fmul fast float %245, %249
  %251 = fsub fast float -0.000000e+00, %246
  %252 = fmul fast float %186, %61
  %253 = fsub fast float %252, %63
  %254 = fmul fast float %246, %253
  %255 = fadd fast float %244, %254
  %256 = fadd fast float %255, %250
  %257 = call float @dx.op.dot3.f32(i32 55, float %247, float %251, float %256, float %247, float %251, float %256)  ; Dot3(ax,ay,az,bx,by,bz)
  %258 = call float @dx.op.unary.f32(i32 25, float %257)  ; Rsqrt(value)
  %259 = fmul fast float %258, %247
  %260 = fmul fast float %258, %251
  %261 = fmul fast float %256, %258
  %262 = ashr i32 %51, 1
  %263 = call float @dx.op.unary.f32(i32 6, float %176)  ; FAbs(value)
  %264 = fmul fast float %17, %56
  %265 = fmul fast float %18, %58
  %266 = fmul fast float %263, %62
  %267 = fmul fast float %63, %263
  %268 = fsub fast float -0.000000e+00, %267
  %269 = fdiv fast float 5.000000e+01, %266
  %270 = fdiv fast float 5.000000e+01, %268
  %271 = call float @dx.op.binary.f32(i32 36, float %264, float %269)  ; FMin(a,b)
  %272 = call float @dx.op.binary.f32(i32 36, float %265, float %270)  ; FMin(a,b)
  %273 = fmul fast float %263, %249
  %274 = fmul fast float %263, %253
  %275 = fsub fast float -0.000000e+00, %273
  %276 = fsub fast float -0.000000e+00, %274
  %277 = fsub fast float -0.000000e+00, %263
  %278 = call float @dx.op.dot3.f32(i32 55, float %275, float %276, float %277, float %275, float %276, float %277)  ; Dot3(ax,ay,az,bx,by,bz)
  %279 = call float @dx.op.unary.f32(i32 25, float %278)  ; Rsqrt(value)
  %280 = fmul fast float %279, %275
  %281 = fmul fast float %279, %276
  %282 = fmul fast float %279, %277
  %283 = fmul fast float %263, 0x3FEFEB8520000000
  br label %284

; <label>:284                                     ; preds = %478, %188
  %285 = phi float [ 0.000000e+00, %188 ], [ %581, %478 ]
  %286 = phi float [ 0.000000e+00, %188 ], [ %585, %478 ]
  %287 = phi i32 [ 0, %188 ], [ %586, %478 ]
  %288 = sitofp i32 %287 to float
  %289 = fadd fast float %288, %156
  %290 = fmul fast float %289, 0x3FE921FB60000000
  %291 = call float @dx.op.unary.f32(i32 12, float %290)  ; Cos(value)
  %292 = call float @dx.op.unary.f32(i32 13, float %290)  ; Sin(value)
  %293 = fsub fast float -0.000000e+00, %292
  %294 = call float @dx.op.dot3.f32(i32 55, float %280, float %281, float %282, float %259, float %260, float %261)  ; Dot3(ax,ay,az,bx,by,bz)
  %295 = call float @dx.op.unary.f32(i32 6, float %294)  ; FAbs(value)
  %296 = call float @dx.op.unary.f32(i32 6, float %295)  ; FAbs(value)
  %297 = fcmp fast ogt float %296, 0x3EB0C6F7A0000000
  %298 = call float @dx.op.dot3.f32(i32 55, float %291, float %293, float 0.000000e+00, float %259, float %260, float %261)  ; Dot3(ax,ay,az,bx,by,bz)
  %299 = fsub fast float -0.000000e+00, %298
  %300 = fdiv fast float %299, %295
  %301 = select i1 %297, float %300, float 0.000000e+00
  %302 = fmul fast float %301, %301
  %303 = fadd fast float %302, 1.000000e+00
  %304 = call float @dx.op.unary.f32(i32 25, float %303)  ; Rsqrt(value)
  %305 = fmul fast float %301, %304
  %306 = fsub fast float -0.000000e+00, %305
  %307 = icmp sgt i32 %262, 0
  br i1 %307, label %308, label %392

; <label>:308                                     ; preds = %284
  br label %309

; <label>:309                                     ; preds = %309, %308
  %310 = phi float [ %388, %309 ], [ %305, %308 ]
  %311 = phi float [ %374, %309 ], [ 2.000000e+02, %308 ]
  %312 = phi i32 [ %389, %309 ], [ 0, %308 ]
  %313 = sitofp i32 %262 to float
  %314 = fdiv fast float 1.000000e+00, %313
  %315 = sitofp i32 %312 to float
  %316 = fadd fast float %315, %169
  %317 = fmul fast float %316, %314
  %318 = fmul fast float %317, %317
  %319 = fmul fast float %318, %271
  %320 = fmul fast float %318, %272
  %321 = fadd fast float %319, %17
  %322 = fmul fast float %321, %291
  %323 = fadd fast float %322, %184
  %324 = fadd fast float %320, %18
  %325 = fmul fast float %324, %292
  %326 = fadd fast float %325, %186
  %327 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %323, float %326, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %328 = extractvalue %dx.types.ResRet.f32 %327, 0
  %329 = fcmp fast ogt float %328, -1.000000e+00
  %330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %331 = extractvalue %dx.types.CBufRet.f32 %330, 1
  %332 = select i1 %329, float %331, float 1.000000e+00
  %333 = fadd fast float %328, 1.000000e+00
  %334 = fmul fast float %332, %333
  %335 = call float @dx.op.unary.f32(i32 6, float %334)  ; FAbs(value)
  %336 = fmul fast float %323, %60
  %337 = fmul fast float %326, %61
  %338 = fsub fast float %336, %62
  %339 = fsub fast float %337, %63
  %340 = fmul fast float %338, %335
  %341 = fmul fast float %339, %335
  %342 = fsub fast float %340, %273
  %343 = fsub fast float %341, %274
  %344 = fsub fast float %335, %283
  %345 = call float @dx.op.dot3.f32(i32 55, float %342, float %343, float %344, float %342, float %343, float %344)  ; Dot3(ax,ay,az,bx,by,bz)
  %346 = call float @dx.op.dot3.f32(i32 55, float %342, float %343, float %344, float %259, float %260, float %261)  ; Dot3(ax,ay,az,bx,by,bz)
  %347 = fsub fast float -0.000000e+00, %346
  %348 = call float @dx.op.dot3.f32(i32 55, float %342, float %343, float %344, float %280, float %281, float %282)  ; Dot3(ax,ay,az,bx,by,bz)
  %349 = call float @dx.op.unary.f32(i32 25, float %345)  ; Rsqrt(value)
  %350 = fmul fast float %349, %348
  %351 = bitcast float %345 to i32
  %352 = ashr i32 %351, 1
  %353 = add nsw i32 %352, 532487669
  %354 = bitcast i32 %353 to float
  %355 = fmul fast float %354, 0x3F947AE140000000
  %356 = fsub fast float 2.000000e+00, %355
  %357 = call float @dx.op.unary.f32(i32 7, float %356)  ; Saturate(value)
  %358 = fmul fast float %354, 0x3F7B4E81C0000000
  %359 = fsub fast float 0x3FF5555560000000, %358
  %360 = call float @dx.op.unary.f32(i32 7, float %359)  ; Saturate(value)
  %361 = fmul fast float %335, 0x3F947AE140000000
  %362 = fadd fast float %361, -1.000000e+00
  %363 = call float @dx.op.unary.f32(i32 7, float %362)  ; Saturate(value)
  %364 = fsub fast float %360, %357
  %365 = fmul fast float %363, %364
  %366 = fadd fast float %365, %357
  %367 = fmul fast float %334, %176
  %368 = fcmp fast ogt float %367, 0.000000e+00
  %369 = select i1 %368, float %366, float 0.000000e+00
  %370 = fadd fast float %350, 1.000000e+00
  %371 = fmul fast float %369, %370
  %372 = fadd fast float %371, -1.000000e+00
  %373 = fcmp fast ogt float %372, %310
  %374 = select i1 %373, float %347, float %311
  %375 = fsub fast float %347, %374
  %376 = fmul fast float %375, 0x3FB9999940000000
  %377 = fadd fast float %376, 0xBFDFFFFF80000000
  %378 = call float @dx.op.unary.f32(i32 7, float %377)  ; Saturate(value)
  %379 = fmul fast float %346, 0x3FC99999E0000000
  %380 = fadd fast float %379, 0x3FF0000020000000
  %381 = call float @dx.op.unary.f32(i32 7, float %380)  ; Saturate(value)
  %382 = sitofp i32 %51 to float
  %383 = fdiv fast float 8.000000e+00, %382
  %384 = fmul fast float %381, %378
  %385 = fmul fast float %384, %383
  %386 = fsub fast float %310, %385
  %387 = fcmp ole float %372, %386
  %388 = select i1 %387, float %386, float %372
  %389 = add nuw nsw i32 %312, 1
  %390 = icmp eq i32 %389, %262
  br i1 %390, label %391, label %309

; <label>:391                                     ; preds = %309
  br label %392

; <label>:392                                     ; preds = %391, %284
  %393 = phi float [ %305, %284 ], [ %388, %391 ]
  br i1 %307, label %394, label %478

; <label>:394                                     ; preds = %392
  br label %395

; <label>:395                                     ; preds = %395, %394
  %396 = phi float [ %474, %395 ], [ %306, %394 ]
  %397 = phi float [ %460, %395 ], [ 2.000000e+02, %394 ]
  %398 = phi i32 [ %475, %395 ], [ 0, %394 ]
  %399 = sitofp i32 %262 to float
  %400 = fdiv fast float 1.000000e+00, %399
  %401 = sitofp i32 %398 to float
  %402 = fadd fast float %401, %169
  %403 = fmul fast float %402, %400
  %404 = fmul fast float %403, %403
  %405 = fmul fast float %404, %271
  %406 = fmul fast float %404, %272
  %407 = fadd fast float %405, %17
  %408 = fmul fast float %291, %407
  %409 = fsub fast float %184, %408
  %410 = fadd fast float %406, %18
  %411 = fmul fast float %292, %410
  %412 = fsub fast float %186, %411
  %413 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %409, float %412, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %414 = extractvalue %dx.types.ResRet.f32 %413, 0
  %415 = fcmp fast ogt float %414, -1.000000e+00
  %416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %417 = extractvalue %dx.types.CBufRet.f32 %416, 1
  %418 = select i1 %415, float %417, float 1.000000e+00
  %419 = fadd fast float %414, 1.000000e+00
  %420 = fmul fast float %418, %419
  %421 = call float @dx.op.unary.f32(i32 6, float %420)  ; FAbs(value)
  %422 = fmul fast float %409, %60
  %423 = fmul fast float %412, %61
  %424 = fsub fast float %422, %62
  %425 = fsub fast float %423, %63
  %426 = fmul fast float %424, %421
  %427 = fmul fast float %425, %421
  %428 = fsub fast float %426, %273
  %429 = fsub fast float %427, %274
  %430 = fsub fast float %421, %283
  %431 = call float @dx.op.dot3.f32(i32 55, float %428, float %429, float %430, float %428, float %429, float %430)  ; Dot3(ax,ay,az,bx,by,bz)
  %432 = call float @dx.op.dot3.f32(i32 55, float %428, float %429, float %430, float %259, float %260, float %261)  ; Dot3(ax,ay,az,bx,by,bz)
  %433 = fsub fast float -0.000000e+00, %432
  %434 = call float @dx.op.dot3.f32(i32 55, float %428, float %429, float %430, float %280, float %281, float %282)  ; Dot3(ax,ay,az,bx,by,bz)
  %435 = call float @dx.op.unary.f32(i32 25, float %431)  ; Rsqrt(value)
  %436 = fmul fast float %435, %434
  %437 = bitcast float %431 to i32
  %438 = ashr i32 %437, 1
  %439 = add nsw i32 %438, 532487669
  %440 = bitcast i32 %439 to float
  %441 = fmul fast float %440, 0x3F947AE140000000
  %442 = fsub fast float 2.000000e+00, %441
  %443 = call float @dx.op.unary.f32(i32 7, float %442)  ; Saturate(value)
  %444 = fmul fast float %440, 0x3F7B4E81C0000000
  %445 = fsub fast float 0x3FF5555560000000, %444
  %446 = call float @dx.op.unary.f32(i32 7, float %445)  ; Saturate(value)
  %447 = fmul fast float %421, 0x3F947AE140000000
  %448 = fadd fast float %447, -1.000000e+00
  %449 = call float @dx.op.unary.f32(i32 7, float %448)  ; Saturate(value)
  %450 = fsub fast float %446, %443
  %451 = fmul fast float %449, %450
  %452 = fadd fast float %451, %443
  %453 = fmul fast float %420, %176
  %454 = fcmp fast ogt float %453, 0.000000e+00
  %455 = select i1 %454, float %452, float 0.000000e+00
  %456 = fadd fast float %436, 1.000000e+00
  %457 = fmul fast float %455, %456
  %458 = fadd fast float %457, -1.000000e+00
  %459 = fcmp fast ogt float %458, %396
  %460 = select i1 %459, float %433, float %397
  %461 = fsub fast float %433, %460
  %462 = fmul fast float %461, 0x3FB9999940000000
  %463 = fadd fast float %462, 0xBFDFFFFF80000000
  %464 = call float @dx.op.unary.f32(i32 7, float %463)  ; Saturate(value)
  %465 = fmul fast float %432, 0x3FC99999E0000000
  %466 = fadd fast float %465, 0x3FF0000020000000
  %467 = call float @dx.op.unary.f32(i32 7, float %466)  ; Saturate(value)
  %468 = sitofp i32 %51 to float
  %469 = fdiv fast float 8.000000e+00, %468
  %470 = fmul fast float %467, %464
  %471 = fmul fast float %470, %469
  %472 = fsub fast float %396, %471
  %473 = fcmp ole float %458, %472
  %474 = select i1 %473, float %472, float %458
  %475 = add nuw nsw i32 %398, 1
  %476 = icmp eq i32 %475, %262
  br i1 %476, label %477, label %395

; <label>:477                                     ; preds = %395
  br label %478

; <label>:478                                     ; preds = %477, %392
  %479 = phi float [ %306, %392 ], [ %474, %477 ]
  %480 = fmul fast float %282, %293
  %481 = fmul fast float %282, %291
  %482 = fsub fast float -0.000000e+00, %481
  %483 = fmul fast float %291, %281
  %484 = fmul fast float %280, %293
  %485 = fsub fast float %483, %484
  %486 = call float @dx.op.dot3.f32(i32 55, float %259, float %260, float %261, float %480, float %482, float %485)  ; Dot3(ax,ay,az,bx,by,bz)
  %487 = fmul fast float %486, %480
  %488 = fmul fast float %486, %482
  %489 = fmul fast float %486, %485
  %490 = fsub fast float %259, %487
  %491 = fsub fast float %260, %488
  %492 = fsub fast float %261, %489
  %493 = fmul fast float %490, %490
  %494 = fmul fast float %491, %491
  %495 = fadd fast float %493, %494
  %496 = fmul fast float %492, %492
  %497 = fadd fast float %495, %496
  %498 = call float @dx.op.unary.f32(i32 24, float %497)  ; Sqrt(value)
  %499 = call float @dx.op.dot3.f32(i32 55, float %291, float %293, float 0.000000e+00, float %490, float %491, float %492)  ; Dot3(ax,ay,az,bx,by,bz)
  %500 = call float @dx.op.dot3.f32(i32 55, float %291, float %293, float 0.000000e+00, float %280, float %281, float %282)  ; Dot3(ax,ay,az,bx,by,bz)
  %501 = fmul fast float %500, %280
  %502 = fmul fast float %500, %281
  %503 = fmul fast float %500, %282
  %504 = call float @dx.op.dot3.f32(i32 55, float %501, float %502, float %503, float %490, float %491, float %492)  ; Dot3(ax,ay,az,bx,by,bz)
  %505 = fcmp fast oge float %499, %504
  %506 = fdiv fast float 1.000000e+00, %498
  %507 = call float @dx.op.dot3.f32(i32 55, float %490, float %491, float %492, float %280, float %281, float %282)  ; Dot3(ax,ay,az,bx,by,bz)
  %508 = fmul fast float %507, %506
  %509 = call float @dx.op.unary.f32(i32 7, float %508)  ; Saturate(value)
  %510 = fmul fast float %509, %509
  %511 = fsub fast float 1.000000e+00, %510
  %512 = bitcast float %511 to i32
  %513 = ashr i32 %512, 1
  %514 = add nsw i32 %513, 532487669
  %515 = bitcast i32 %514 to float
  %516 = call float @dx.op.unary.f32(i32 6, float %509)  ; FAbs(value)
  %517 = fmul fast float %516, 0x3FC40AE960000000
  %518 = fsub fast float 0x3FF921FB60000000, %517
  %519 = fsub fast float 1.000000e+00, %516
  %520 = bitcast float %519 to i32
  %521 = ashr i32 %520, 1
  %522 = add nsw i32 %521, 532487669
  %523 = bitcast i32 %522 to float
  %524 = fmul fast float %523, %518
  %525 = fcmp fast oge float %509, 0.000000e+00
  %526 = fsub fast float 0x400921FB60000000, %524
  %527 = select i1 %525, float %524, float %526
  %528 = fsub fast float -0.000000e+00, %515
  %529 = select i1 %505, float %528, float %515
  %530 = fsub fast float -0.000000e+00, %527
  %531 = select i1 %505, float %530, float %527
  %532 = call float @dx.op.unary.f32(i32 6, float %393)  ; FAbs(value)
  %533 = fmul fast float %532, 0x3FC40AE960000000
  %534 = fsub fast float 0x3FF921FB60000000, %533
  %535 = fsub fast float 1.000000e+00, %532
  %536 = bitcast float %535 to i32
  %537 = ashr i32 %536, 1
  %538 = add nsw i32 %537, 532487669
  %539 = bitcast i32 %538 to float
  %540 = fmul fast float %539, %534
  %541 = fcmp fast oge float %393, 0.000000e+00
  %542 = fsub fast float 0x400921FB60000000, %540
  %543 = select i1 %541, float %540, float %542
  %544 = call float @dx.op.unary.f32(i32 6, float %479)  ; FAbs(value)
  %545 = fmul fast float %544, 0x3FC40AE960000000
  %546 = fsub fast float 0x3FF921FB60000000, %545
  %547 = fsub fast float 1.000000e+00, %544
  %548 = bitcast float %547 to i32
  %549 = ashr i32 %548, 1
  %550 = add nsw i32 %549, 532487669
  %551 = bitcast i32 %550 to float
  %552 = fmul fast float %551, %546
  %553 = fcmp fast oge float %479, 0.000000e+00
  %554 = fsub fast float 0x400921FB60000000, %552
  %555 = select i1 %553, float %552, float %554
  %556 = fsub fast float -0.000000e+00, %531
  %557 = fsub fast float %556, %543
  %558 = call float @dx.op.binary.f32(i32 35, float %557, float 0xBFF921FB60000000)  ; FMax(a,b)
  %559 = call float @dx.op.binary.f32(i32 36, float %558, float 0x3FF921FB60000000)  ; FMin(a,b)
  %560 = fadd fast float %531, %559
  %561 = fsub fast float %555, %531
  %562 = call float @dx.op.binary.f32(i32 35, float %561, float 0xBFF921FB60000000)  ; FMax(a,b)
  %563 = call float @dx.op.binary.f32(i32 36, float %562, float 0x3FF921FB60000000)  ; FMin(a,b)
  %564 = fadd fast float %531, %563
  %565 = fmul fast float %560, 2.000000e+00
  %566 = fsub fast float %565, %531
  %567 = call float @dx.op.unary.f32(i32 12, float %566)  ; Cos(value)
  %568 = fsub fast float -0.000000e+00, %567
  %569 = fmul fast float %564, 2.000000e+00
  %570 = fsub fast float %569, %531
  %571 = call float @dx.op.unary.f32(i32 12, float %570)  ; Cos(value)
  %572 = fmul fast float %509, 2.000000e+00
  %573 = fadd fast float %564, %560
  %574 = fmul fast float %529, %573
  %575 = fmul fast float %574, 2.000000e+00
  %576 = fsub fast float %568, %571
  %577 = fadd fast float %576, %572
  %578 = fadd fast float %577, %575
  %579 = fmul fast float %498, 2.500000e-01
  %580 = fmul fast float %579, %578
  %581 = fadd fast float %580, %285
  %582 = fmul fast float %531, %529
  %583 = fadd fast float %582, %509
  %584 = fmul fast float %583, %498
  %585 = fadd fast float %584, %286
  %586 = add nuw nsw i32 %287, 1
  %587 = icmp eq i32 %586, 4
  br i1 %587, label %588, label %284

; <label>:588                                     ; preds = %478
  %589 = fdiv fast float %581, %585
  br label %590

; <label>:590                                     ; preds = %588, %140
  %591 = phi float [ %589, %588 ], [ 1.000000e+00, %140 ]
  %592 = fmul fast float %591, %591
  %593 = mul i32 %9, 2
  %594 = add i32 0, %593
  %595 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %594
  store float %591, float addrspace(3)* %595, align 4
  %596 = mul i32 %9, 2
  %597 = add i32 1, %596
  %598 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %597
  store float %592, float addrspace(3)* %598, align 4
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %599 = mul i32 %119, 2
  %600 = add i32 0, %599
  %601 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %600
  %602 = load float, float addrspace(3)* %601, align 4
  %603 = mul i32 %119, 2
  %604 = add i32 1, %603
  %605 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %604
  %606 = load float, float addrspace(3)* %605, align 4
  %607 = fadd fast float %602, %591
  %608 = fadd fast float %606, %592
  %609 = mul i32 %122, 2
  %610 = add i32 0, %609
  %611 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %610
  %612 = load float, float addrspace(3)* %611, align 4
  %613 = mul i32 %122, 2
  %614 = add i32 1, %613
  %615 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %614
  %616 = load float, float addrspace(3)* %615, align 4
  %617 = fadd fast float %607, %612
  %618 = fadd fast float %608, %616
  %619 = mul i32 %125, 2
  %620 = add i32 0, %619
  %621 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %620
  %622 = load float, float addrspace(3)* %621, align 4
  %623 = mul i32 %125, 2
  %624 = add i32 1, %623
  %625 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %624
  %626 = load float, float addrspace(3)* %625, align 4
  %627 = fadd fast float %617, %622
  %628 = fadd fast float %618, %626
  store float %627, float addrspace(3)* %595, align 4
  store float %628, float addrspace(3)* %598, align 4
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %629 = xor i32 %118, 2
  %630 = mul i32 %629, 2
  %631 = add i32 0, %630
  %632 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %631
  %633 = load float, float addrspace(3)* %632, align 4
  %634 = mul i32 %629, 2
  %635 = add i32 1, %634
  %636 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %635
  %637 = load float, float addrspace(3)* %636, align 4
  %638 = fadd fast float %633, %627
  %639 = fadd fast float %637, %628
  %640 = xor i32 %118, 16
  %641 = mul i32 %640, 2
  %642 = add i32 0, %641
  %643 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %642
  %644 = load float, float addrspace(3)* %643, align 4
  %645 = mul i32 %640, 2
  %646 = add i32 1, %645
  %647 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %646
  %648 = load float, float addrspace(3)* %647, align 4
  %649 = fadd fast float %638, %644
  %650 = fadd fast float %639, %648
  %651 = xor i32 %118, 18
  %652 = mul i32 %651, 2
  %653 = add i32 0, %652
  %654 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %653
  %655 = load float, float addrspace(3)* %654, align 4
  %656 = mul i32 %651, 2
  %657 = add i32 1, %656
  %658 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %657
  %659 = load float, float addrspace(3)* %658, align 4
  %660 = fadd fast float %649, %655
  %661 = fadd fast float %650, %659
  %662 = fmul fast float %660, 6.250000e-02
  %663 = fmul fast float %661, 6.250000e-02
  %664 = fmul fast float %662, %662
  %665 = fsub fast float %663, %664
  %666 = call float @dx.op.binary.f32(i32 35, float %662, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %667 = fdiv fast float %665, %666
  %668 = fmul fast float %667, 6.553500e+04
  %669 = fptoui float %668 to i32
  br i1 %138, label %670, label %671, !dx.controlflow.hints !29

; <label>:670                                     ; preds = %590
  store i32 0, i32 addrspace(3)* @"\01?gtaoQuadMaxUint@@3IA", align 4, !tbaa !30, !noalias !28
  br label %671

; <label>:671                                     ; preds = %670, %590
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %672 = atomicrmw umax i32 addrspace(3)* @"\01?gtaoQuadMaxUint@@3IA", i32 %669 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %673 = getelementptr inbounds [4 x float], [4 x float]* %12, i32 0, i32 0
  store float %49, float* %673, align 4
  %674 = getelementptr inbounds [4 x float], [4 x float]* %12, i32 0, i32 1
  store float %45, float* %674, align 4
  %675 = getelementptr inbounds [4 x float], [4 x float]* %12, i32 0, i32 2
  store float %37, float* %675, align 4
  %676 = getelementptr inbounds [4 x float], [4 x float]* %12, i32 0, i32 3
  store float %41, float* %676, align 4
  %677 = getelementptr [4 x float], [4 x float]* %12, i32 0, i32 %96
  %678 = load float, float* %677, align 4, !tbaa !19, !noalias !37
  %679 = and i32 %96, 1
  %680 = uitofp i32 %679 to float
  %681 = fadd fast float %680, 5.000000e-01
  %682 = lshr i32 %96, 1
  %683 = uitofp i32 %682 to float
  %684 = fadd fast float %683, 5.000000e-01
  %685 = fadd fast float %681, %21
  %686 = fmul fast float %17, %685
  %687 = fadd fast float %684, %23
  %688 = fmul fast float %18, %687
  %689 = fcmp fast olt float %678, 6.550000e+04
  br i1 %689, label %690, label %1092, !dx.controlflow.hints !36

; <label>:690                                     ; preds = %671
  %691 = fadd fast float %685, -5.000000e-01
  %692 = fmul fast float %17, %691
  %693 = fadd fast float %687, -5.000000e-01
  %694 = fmul fast float %18, %693
  %695 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %3, %dx.types.Handle %4, float %692, float %694, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %696 = extractvalue %dx.types.ResRet.f32 %695, 0
  %697 = extractvalue %dx.types.ResRet.f32 %695, 1
  %698 = extractvalue %dx.types.ResRet.f32 %695, 2
  %699 = fcmp fast ogt float %696, -1.000000e+00
  %700 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %701 = extractvalue %dx.types.CBufRet.f32 %700, 1
  %702 = select i1 %699, float %701, float 1.000000e+00
  %703 = fadd fast float %696, 1.000000e+00
  %704 = fmul fast float %702, %703
  %705 = fcmp fast ogt float %697, -1.000000e+00
  %706 = select i1 %705, float %701, float 1.000000e+00
  %707 = fadd fast float %697, 1.000000e+00
  %708 = fmul fast float %706, %707
  %709 = fcmp fast ogt float %698, -1.000000e+00
  %710 = select i1 %709, float %701, float 1.000000e+00
  %711 = fadd fast float %698, 1.000000e+00
  %712 = fmul fast float %710, %711
  %713 = fadd fast float %685, 5.000000e-01
  %714 = fmul fast float %17, %713
  %715 = fadd fast float %687, 5.000000e-01
  %716 = fmul fast float %18, %715
  %717 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %3, %dx.types.Handle %4, float %714, float %716, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %718 = extractvalue %dx.types.ResRet.f32 %717, 0
  %719 = extractvalue %dx.types.ResRet.f32 %717, 2
  %720 = fcmp fast ogt float %718, -1.000000e+00
  %721 = select i1 %720, float %701, float 1.000000e+00
  %722 = fadd fast float %718, 1.000000e+00
  %723 = fmul fast float %721, %722
  %724 = fcmp fast ogt float %719, -1.000000e+00
  %725 = select i1 %724, float %701, float 1.000000e+00
  %726 = fadd fast float %719, 1.000000e+00
  %727 = fmul fast float %725, %726
  %728 = fsub fast float %708, %704
  %729 = fsub fast float %727, %708
  %730 = fsub fast float %708, %712
  %731 = fsub fast float %723, %708
  %732 = call float @dx.op.unary.f32(i32 6, float %728)  ; FAbs(value)
  %733 = call float @dx.op.unary.f32(i32 6, float %729)  ; FAbs(value)
  %734 = fcmp fast olt float %732, %733
  %735 = call float @dx.op.unary.f32(i32 6, float %730)  ; FAbs(value)
  %736 = call float @dx.op.unary.f32(i32 6, float %731)  ; FAbs(value)
  %737 = fcmp fast olt float %735, %736
  %738 = select i1 %734, float %728, float %729
  %739 = select i1 %737, float %730, float %731
  %740 = select i1 %734, float %704, float %727
  %741 = fmul fast float %17, %60
  %742 = fmul fast float %741, %740
  %743 = select i1 %737, float %712, float %723
  %744 = fmul fast float %18, %61
  %745 = fmul fast float %744, %743
  %746 = fmul fast float %745, %742
  %747 = fmul fast float %745, %738
  %748 = fmul fast float %742, %739
  %749 = fsub fast float -0.000000e+00, %747
  %750 = fmul fast float %686, %60
  %751 = fsub fast float %750, %62
  %752 = fmul fast float %747, %751
  %753 = fsub fast float -0.000000e+00, %748
  %754 = fmul fast float %688, %61
  %755 = fsub fast float %754, %63
  %756 = fmul fast float %748, %755
  %757 = fadd fast float %746, %756
  %758 = fadd fast float %757, %752
  %759 = call float @dx.op.dot3.f32(i32 55, float %749, float %753, float %758, float %749, float %753, float %758)  ; Dot3(ax,ay,az,bx,by,bz)
  %760 = call float @dx.op.unary.f32(i32 25, float %759)  ; Rsqrt(value)
  %761 = fmul fast float %760, %749
  %762 = fmul fast float %760, %753
  %763 = fmul fast float %758, %760
  %764 = ashr i32 %51, 1
  %765 = call float @dx.op.unary.f32(i32 6, float %678)  ; FAbs(value)
  %766 = fmul fast float %17, %56
  %767 = fmul fast float %18, %58
  %768 = fmul fast float %765, %62
  %769 = fmul fast float %63, %765
  %770 = fsub fast float -0.000000e+00, %769
  %771 = fdiv fast float 5.000000e+01, %768
  %772 = fdiv fast float 5.000000e+01, %770
  %773 = call float @dx.op.binary.f32(i32 36, float %766, float %771)  ; FMin(a,b)
  %774 = call float @dx.op.binary.f32(i32 36, float %767, float %772)  ; FMin(a,b)
  %775 = fmul fast float %765, %751
  %776 = fmul fast float %765, %755
  %777 = fsub fast float -0.000000e+00, %775
  %778 = fsub fast float -0.000000e+00, %776
  %779 = fsub fast float -0.000000e+00, %765
  %780 = call float @dx.op.dot3.f32(i32 55, float %777, float %778, float %779, float %777, float %778, float %779)  ; Dot3(ax,ay,az,bx,by,bz)
  %781 = call float @dx.op.unary.f32(i32 25, float %780)  ; Rsqrt(value)
  %782 = fmul fast float %781, %777
  %783 = fmul fast float %781, %778
  %784 = fmul fast float %781, %779
  %785 = fmul fast float %765, 0x3FEFEB8520000000
  br label %786

; <label>:786                                     ; preds = %980, %690
  %787 = phi float [ %1087, %980 ], [ 0.000000e+00, %690 ]
  %788 = phi i32 [ %1088, %980 ], [ 0, %690 ]
  %789 = phi float [ %1083, %980 ], [ 0.000000e+00, %690 ]
  %790 = sitofp i32 %788 to float
  %791 = fadd fast float %790, %157
  %792 = fmul fast float %791, 0x3FE921FB60000000
  %793 = call float @dx.op.unary.f32(i32 12, float %792)  ; Cos(value)
  %794 = call float @dx.op.unary.f32(i32 13, float %792)  ; Sin(value)
  %795 = fsub fast float -0.000000e+00, %794
  %796 = call float @dx.op.dot3.f32(i32 55, float %782, float %783, float %784, float %761, float %762, float %763)  ; Dot3(ax,ay,az,bx,by,bz)
  %797 = call float @dx.op.unary.f32(i32 6, float %796)  ; FAbs(value)
  %798 = call float @dx.op.unary.f32(i32 6, float %797)  ; FAbs(value)
  %799 = fcmp fast ogt float %798, 0x3EB0C6F7A0000000
  %800 = call float @dx.op.dot3.f32(i32 55, float %793, float %795, float 0.000000e+00, float %761, float %762, float %763)  ; Dot3(ax,ay,az,bx,by,bz)
  %801 = fsub fast float -0.000000e+00, %800
  %802 = fdiv fast float %801, %797
  %803 = select i1 %799, float %802, float 0.000000e+00
  %804 = fmul fast float %803, %803
  %805 = fadd fast float %804, 1.000000e+00
  %806 = call float @dx.op.unary.f32(i32 25, float %805)  ; Rsqrt(value)
  %807 = fmul fast float %803, %806
  %808 = fsub fast float -0.000000e+00, %807
  %809 = icmp sgt i32 %764, 0
  br i1 %809, label %810, label %894

; <label>:810                                     ; preds = %786
  br label %811

; <label>:811                                     ; preds = %811, %810
  %812 = phi float [ %890, %811 ], [ %807, %810 ]
  %813 = phi float [ %876, %811 ], [ 2.000000e+02, %810 ]
  %814 = phi i32 [ %891, %811 ], [ 0, %810 ]
  %815 = sitofp i32 %764 to float
  %816 = fdiv fast float 1.000000e+00, %815
  %817 = sitofp i32 %814 to float
  %818 = fadd fast float %817, %170
  %819 = fmul fast float %818, %816
  %820 = fmul fast float %819, %819
  %821 = fmul fast float %820, %773
  %822 = fmul fast float %820, %774
  %823 = fadd fast float %821, %17
  %824 = fmul fast float %823, %793
  %825 = fadd fast float %824, %686
  %826 = fadd fast float %822, %18
  %827 = fmul fast float %826, %794
  %828 = fadd fast float %827, %688
  %829 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %825, float %828, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %830 = extractvalue %dx.types.ResRet.f32 %829, 0
  %831 = fcmp fast ogt float %830, -1.000000e+00
  %832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %833 = extractvalue %dx.types.CBufRet.f32 %832, 1
  %834 = select i1 %831, float %833, float 1.000000e+00
  %835 = fadd fast float %830, 1.000000e+00
  %836 = fmul fast float %834, %835
  %837 = call float @dx.op.unary.f32(i32 6, float %836)  ; FAbs(value)
  %838 = fmul fast float %825, %60
  %839 = fmul fast float %828, %61
  %840 = fsub fast float %838, %62
  %841 = fsub fast float %839, %63
  %842 = fmul fast float %840, %837
  %843 = fmul fast float %841, %837
  %844 = fsub fast float %842, %775
  %845 = fsub fast float %843, %776
  %846 = fsub fast float %837, %785
  %847 = call float @dx.op.dot3.f32(i32 55, float %844, float %845, float %846, float %844, float %845, float %846)  ; Dot3(ax,ay,az,bx,by,bz)
  %848 = call float @dx.op.dot3.f32(i32 55, float %844, float %845, float %846, float %761, float %762, float %763)  ; Dot3(ax,ay,az,bx,by,bz)
  %849 = fsub fast float -0.000000e+00, %848
  %850 = call float @dx.op.dot3.f32(i32 55, float %844, float %845, float %846, float %782, float %783, float %784)  ; Dot3(ax,ay,az,bx,by,bz)
  %851 = call float @dx.op.unary.f32(i32 25, float %847)  ; Rsqrt(value)
  %852 = fmul fast float %851, %850
  %853 = bitcast float %847 to i32
  %854 = ashr i32 %853, 1
  %855 = add nsw i32 %854, 532487669
  %856 = bitcast i32 %855 to float
  %857 = fmul fast float %856, 0x3F947AE140000000
  %858 = fsub fast float 2.000000e+00, %857
  %859 = call float @dx.op.unary.f32(i32 7, float %858)  ; Saturate(value)
  %860 = fmul fast float %856, 0x3F7B4E81C0000000
  %861 = fsub fast float 0x3FF5555560000000, %860
  %862 = call float @dx.op.unary.f32(i32 7, float %861)  ; Saturate(value)
  %863 = fmul fast float %837, 0x3F947AE140000000
  %864 = fadd fast float %863, -1.000000e+00
  %865 = call float @dx.op.unary.f32(i32 7, float %864)  ; Saturate(value)
  %866 = fsub fast float %862, %859
  %867 = fmul fast float %865, %866
  %868 = fadd fast float %867, %859
  %869 = fmul fast float %836, %678
  %870 = fcmp fast ogt float %869, 0.000000e+00
  %871 = select i1 %870, float %868, float 0.000000e+00
  %872 = fadd fast float %852, 1.000000e+00
  %873 = fmul fast float %871, %872
  %874 = fadd fast float %873, -1.000000e+00
  %875 = fcmp fast ogt float %874, %812
  %876 = select i1 %875, float %849, float %813
  %877 = fsub fast float %849, %876
  %878 = fmul fast float %877, 0x3FB9999940000000
  %879 = fadd fast float %878, 0xBFDFFFFF80000000
  %880 = call float @dx.op.unary.f32(i32 7, float %879)  ; Saturate(value)
  %881 = fmul fast float %848, 0x3FC99999E0000000
  %882 = fadd fast float %881, 0x3FF0000020000000
  %883 = call float @dx.op.unary.f32(i32 7, float %882)  ; Saturate(value)
  %884 = sitofp i32 %51 to float
  %885 = fdiv fast float 8.000000e+00, %884
  %886 = fmul fast float %883, %880
  %887 = fmul fast float %886, %885
  %888 = fsub fast float %812, %887
  %889 = fcmp ole float %874, %888
  %890 = select i1 %889, float %888, float %874
  %891 = add nuw nsw i32 %814, 1
  %892 = icmp eq i32 %891, %764
  br i1 %892, label %893, label %811

; <label>:893                                     ; preds = %811
  br label %894

; <label>:894                                     ; preds = %893, %786
  %895 = phi float [ %807, %786 ], [ %890, %893 ]
  br i1 %809, label %896, label %980

; <label>:896                                     ; preds = %894
  br label %897

; <label>:897                                     ; preds = %897, %896
  %898 = phi float [ %976, %897 ], [ %808, %896 ]
  %899 = phi float [ %962, %897 ], [ 2.000000e+02, %896 ]
  %900 = phi i32 [ %977, %897 ], [ 0, %896 ]
  %901 = sitofp i32 %764 to float
  %902 = fdiv fast float 1.000000e+00, %901
  %903 = sitofp i32 %900 to float
  %904 = fadd fast float %903, %170
  %905 = fmul fast float %904, %902
  %906 = fmul fast float %905, %905
  %907 = fmul fast float %906, %773
  %908 = fmul fast float %906, %774
  %909 = fadd fast float %907, %17
  %910 = fmul fast float %793, %909
  %911 = fsub fast float %686, %910
  %912 = fadd fast float %908, %18
  %913 = fmul fast float %794, %912
  %914 = fsub fast float %688, %913
  %915 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %911, float %914, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %916 = extractvalue %dx.types.ResRet.f32 %915, 0
  %917 = fcmp fast ogt float %916, -1.000000e+00
  %918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %919 = extractvalue %dx.types.CBufRet.f32 %918, 1
  %920 = select i1 %917, float %919, float 1.000000e+00
  %921 = fadd fast float %916, 1.000000e+00
  %922 = fmul fast float %920, %921
  %923 = call float @dx.op.unary.f32(i32 6, float %922)  ; FAbs(value)
  %924 = fmul fast float %911, %60
  %925 = fmul fast float %914, %61
  %926 = fsub fast float %924, %62
  %927 = fsub fast float %925, %63
  %928 = fmul fast float %926, %923
  %929 = fmul fast float %927, %923
  %930 = fsub fast float %928, %775
  %931 = fsub fast float %929, %776
  %932 = fsub fast float %923, %785
  %933 = call float @dx.op.dot3.f32(i32 55, float %930, float %931, float %932, float %930, float %931, float %932)  ; Dot3(ax,ay,az,bx,by,bz)
  %934 = call float @dx.op.dot3.f32(i32 55, float %930, float %931, float %932, float %761, float %762, float %763)  ; Dot3(ax,ay,az,bx,by,bz)
  %935 = fsub fast float -0.000000e+00, %934
  %936 = call float @dx.op.dot3.f32(i32 55, float %930, float %931, float %932, float %782, float %783, float %784)  ; Dot3(ax,ay,az,bx,by,bz)
  %937 = call float @dx.op.unary.f32(i32 25, float %933)  ; Rsqrt(value)
  %938 = fmul fast float %937, %936
  %939 = bitcast float %933 to i32
  %940 = ashr i32 %939, 1
  %941 = add nsw i32 %940, 532487669
  %942 = bitcast i32 %941 to float
  %943 = fmul fast float %942, 0x3F947AE140000000
  %944 = fsub fast float 2.000000e+00, %943
  %945 = call float @dx.op.unary.f32(i32 7, float %944)  ; Saturate(value)
  %946 = fmul fast float %942, 0x3F7B4E81C0000000
  %947 = fsub fast float 0x3FF5555560000000, %946
  %948 = call float @dx.op.unary.f32(i32 7, float %947)  ; Saturate(value)
  %949 = fmul fast float %923, 0x3F947AE140000000
  %950 = fadd fast float %949, -1.000000e+00
  %951 = call float @dx.op.unary.f32(i32 7, float %950)  ; Saturate(value)
  %952 = fsub fast float %948, %945
  %953 = fmul fast float %951, %952
  %954 = fadd fast float %953, %945
  %955 = fmul fast float %922, %678
  %956 = fcmp fast ogt float %955, 0.000000e+00
  %957 = select i1 %956, float %954, float 0.000000e+00
  %958 = fadd fast float %938, 1.000000e+00
  %959 = fmul fast float %957, %958
  %960 = fadd fast float %959, -1.000000e+00
  %961 = fcmp fast ogt float %960, %898
  %962 = select i1 %961, float %935, float %899
  %963 = fsub fast float %935, %962
  %964 = fmul fast float %963, 0x3FB9999940000000
  %965 = fadd fast float %964, 0xBFDFFFFF80000000
  %966 = call float @dx.op.unary.f32(i32 7, float %965)  ; Saturate(value)
  %967 = fmul fast float %934, 0x3FC99999E0000000
  %968 = fadd fast float %967, 0x3FF0000020000000
  %969 = call float @dx.op.unary.f32(i32 7, float %968)  ; Saturate(value)
  %970 = sitofp i32 %51 to float
  %971 = fdiv fast float 8.000000e+00, %970
  %972 = fmul fast float %969, %966
  %973 = fmul fast float %972, %971
  %974 = fsub fast float %898, %973
  %975 = fcmp ole float %960, %974
  %976 = select i1 %975, float %974, float %960
  %977 = add nuw nsw i32 %900, 1
  %978 = icmp eq i32 %977, %764
  br i1 %978, label %979, label %897

; <label>:979                                     ; preds = %897
  br label %980

; <label>:980                                     ; preds = %979, %894
  %981 = phi float [ %808, %894 ], [ %976, %979 ]
  %982 = fmul fast float %784, %795
  %983 = fmul fast float %784, %793
  %984 = fsub fast float -0.000000e+00, %983
  %985 = fmul fast float %793, %783
  %986 = fmul fast float %782, %795
  %987 = fsub fast float %985, %986
  %988 = call float @dx.op.dot3.f32(i32 55, float %761, float %762, float %763, float %982, float %984, float %987)  ; Dot3(ax,ay,az,bx,by,bz)
  %989 = fmul fast float %988, %982
  %990 = fmul fast float %988, %984
  %991 = fmul fast float %988, %987
  %992 = fsub fast float %761, %989
  %993 = fsub fast float %762, %990
  %994 = fsub fast float %763, %991
  %995 = fmul fast float %992, %992
  %996 = fmul fast float %993, %993
  %997 = fadd fast float %995, %996
  %998 = fmul fast float %994, %994
  %999 = fadd fast float %997, %998
  %1000 = call float @dx.op.unary.f32(i32 24, float %999)  ; Sqrt(value)
  %1001 = call float @dx.op.dot3.f32(i32 55, float %793, float %795, float 0.000000e+00, float %992, float %993, float %994)  ; Dot3(ax,ay,az,bx,by,bz)
  %1002 = call float @dx.op.dot3.f32(i32 55, float %793, float %795, float 0.000000e+00, float %782, float %783, float %784)  ; Dot3(ax,ay,az,bx,by,bz)
  %1003 = fmul fast float %1002, %782
  %1004 = fmul fast float %1002, %783
  %1005 = fmul fast float %1002, %784
  %1006 = call float @dx.op.dot3.f32(i32 55, float %1003, float %1004, float %1005, float %992, float %993, float %994)  ; Dot3(ax,ay,az,bx,by,bz)
  %1007 = fcmp fast oge float %1001, %1006
  %1008 = fdiv fast float 1.000000e+00, %1000
  %1009 = call float @dx.op.dot3.f32(i32 55, float %992, float %993, float %994, float %782, float %783, float %784)  ; Dot3(ax,ay,az,bx,by,bz)
  %1010 = fmul fast float %1009, %1008
  %1011 = call float @dx.op.unary.f32(i32 7, float %1010)  ; Saturate(value)
  %1012 = fmul fast float %1011, %1011
  %1013 = fsub fast float 1.000000e+00, %1012
  %1014 = bitcast float %1013 to i32
  %1015 = ashr i32 %1014, 1
  %1016 = add nsw i32 %1015, 532487669
  %1017 = bitcast i32 %1016 to float
  %1018 = call float @dx.op.unary.f32(i32 6, float %1011)  ; FAbs(value)
  %1019 = fmul fast float %1018, 0x3FC40AE960000000
  %1020 = fsub fast float 0x3FF921FB60000000, %1019
  %1021 = fsub fast float 1.000000e+00, %1018
  %1022 = bitcast float %1021 to i32
  %1023 = ashr i32 %1022, 1
  %1024 = add nsw i32 %1023, 532487669
  %1025 = bitcast i32 %1024 to float
  %1026 = fmul fast float %1025, %1020
  %1027 = fcmp fast oge float %1011, 0.000000e+00
  %1028 = fsub fast float 0x400921FB60000000, %1026
  %1029 = select i1 %1027, float %1026, float %1028
  %1030 = fsub fast float -0.000000e+00, %1017
  %1031 = select i1 %1007, float %1030, float %1017
  %1032 = fsub fast float -0.000000e+00, %1029
  %1033 = select i1 %1007, float %1032, float %1029
  %1034 = call float @dx.op.unary.f32(i32 6, float %895)  ; FAbs(value)
  %1035 = fmul fast float %1034, 0x3FC40AE960000000
  %1036 = fsub fast float 0x3FF921FB60000000, %1035
  %1037 = fsub fast float 1.000000e+00, %1034
  %1038 = bitcast float %1037 to i32
  %1039 = ashr i32 %1038, 1
  %1040 = add nsw i32 %1039, 532487669
  %1041 = bitcast i32 %1040 to float
  %1042 = fmul fast float %1041, %1036
  %1043 = fcmp fast oge float %895, 0.000000e+00
  %1044 = fsub fast float 0x400921FB60000000, %1042
  %1045 = select i1 %1043, float %1042, float %1044
  %1046 = call float @dx.op.unary.f32(i32 6, float %981)  ; FAbs(value)
  %1047 = fmul fast float %1046, 0x3FC40AE960000000
  %1048 = fsub fast float 0x3FF921FB60000000, %1047
  %1049 = fsub fast float 1.000000e+00, %1046
  %1050 = bitcast float %1049 to i32
  %1051 = ashr i32 %1050, 1
  %1052 = add nsw i32 %1051, 532487669
  %1053 = bitcast i32 %1052 to float
  %1054 = fmul fast float %1053, %1048
  %1055 = fcmp fast oge float %981, 0.000000e+00
  %1056 = fsub fast float 0x400921FB60000000, %1054
  %1057 = select i1 %1055, float %1054, float %1056
  %1058 = fsub fast float -0.000000e+00, %1033
  %1059 = fsub fast float %1058, %1045
  %1060 = call float @dx.op.binary.f32(i32 35, float %1059, float 0xBFF921FB60000000)  ; FMax(a,b)
  %1061 = call float @dx.op.binary.f32(i32 36, float %1060, float 0x3FF921FB60000000)  ; FMin(a,b)
  %1062 = fadd fast float %1033, %1061
  %1063 = fsub fast float %1057, %1033
  %1064 = call float @dx.op.binary.f32(i32 35, float %1063, float 0xBFF921FB60000000)  ; FMax(a,b)
  %1065 = call float @dx.op.binary.f32(i32 36, float %1064, float 0x3FF921FB60000000)  ; FMin(a,b)
  %1066 = fadd fast float %1033, %1065
  %1067 = fmul fast float %1062, 2.000000e+00
  %1068 = fsub fast float %1067, %1033
  %1069 = call float @dx.op.unary.f32(i32 12, float %1068)  ; Cos(value)
  %1070 = fsub fast float -0.000000e+00, %1069
  %1071 = fmul fast float %1066, 2.000000e+00
  %1072 = fsub fast float %1071, %1033
  %1073 = call float @dx.op.unary.f32(i32 12, float %1072)  ; Cos(value)
  %1074 = fmul fast float %1011, 2.000000e+00
  %1075 = fadd fast float %1066, %1062
  %1076 = fmul fast float %1031, %1075
  %1077 = fmul fast float %1076, 2.000000e+00
  %1078 = fsub fast float %1070, %1073
  %1079 = fadd fast float %1078, %1074
  %1080 = fadd fast float %1079, %1077
  %1081 = fmul fast float %1000, 2.500000e-01
  %1082 = fmul fast float %1081, %1080
  %1083 = fadd fast float %1082, %789
  %1084 = fmul fast float %1033, %1031
  %1085 = fadd fast float %1084, %1011
  %1086 = fmul fast float %1085, %1000
  %1087 = fadd fast float %1086, %787
  %1088 = add nuw nsw i32 %788, 1
  %1089 = icmp eq i32 %1088, 4
  br i1 %1089, label %1090, label %786

; <label>:1090                                    ; preds = %980
  %1091 = fdiv fast float %1083, %1087
  br label %1092

; <label>:1092                                    ; preds = %1090, %671
  %1093 = phi float [ %1091, %1090 ], [ 1.000000e+00, %671 ]
  %1094 = load float, float* %70, align 4
  %1095 = load float, float* %71, align 4
  %1096 = load float, float* %72, align 4
  %1097 = load float, float* %73, align 4
  %1098 = getelementptr inbounds [4 x float], [4 x float]* %11, i32 0, i32 0
  store float %1094, float* %1098, align 4
  %1099 = getelementptr inbounds [4 x float], [4 x float]* %11, i32 0, i32 1
  store float %1095, float* %1099, align 4
  %1100 = getelementptr inbounds [4 x float], [4 x float]* %11, i32 0, i32 2
  store float %1096, float* %1100, align 4
  %1101 = getelementptr inbounds [4 x float], [4 x float]* %11, i32 0, i32 3
  store float %1097, float* %1101, align 4
  %1102 = getelementptr [4 x float], [4 x float]* %11, i32 0, i32 %90
  %1103 = load float, float* %1102, align 4, !tbaa !19, !noalias !41
  %1104 = fsub fast float %1103, %99
  %1105 = call float @dx.op.unary.f32(i32 6, float %1104)  ; FAbs(value)
  %1106 = fsub fast float %1103, %101
  %1107 = call float @dx.op.unary.f32(i32 6, float %1106)  ; FAbs(value)
  %1108 = fcmp fast olt float %1105, %1107
  %1109 = select i1 %1108, float %591, float %1093
  %1110 = getelementptr inbounds [4 x float], [4 x float]* %10, i32 0, i32 0
  store float %1094, float* %1110, align 4
  %1111 = getelementptr inbounds [4 x float], [4 x float]* %10, i32 0, i32 1
  store float %1095, float* %1111, align 4
  %1112 = getelementptr inbounds [4 x float], [4 x float]* %10, i32 0, i32 2
  store float %1096, float* %1112, align 4
  %1113 = getelementptr inbounds [4 x float], [4 x float]* %10, i32 0, i32 3
  store float %1097, float* %1113, align 4
  %1114 = getelementptr [4 x float], [4 x float]* %10, i32 0, i32 %97
  %1115 = load float, float* %1114, align 4, !tbaa !19, !noalias !48
  %1116 = fsub fast float %1115, %99
  %1117 = call float @dx.op.unary.f32(i32 6, float %1116)  ; FAbs(value)
  %1118 = fsub fast float %1115, %101
  %1119 = call float @dx.op.unary.f32(i32 6, float %1118)  ; FAbs(value)
  %1120 = fcmp fast olt float %1117, %1119
  %1121 = select i1 %1120, float %591, float %1093
  %1122 = icmp eq i32 %89, 1
  %1123 = select i1 %1122, float %591, float %1093
  %1124 = icmp eq i32 %89, 2
  %1125 = select i1 %1124, float %591, float %1109
  %1126 = icmp eq i32 %89, 3
  %1127 = select i1 %1126, float %591, float %1121
  %1128 = icmp eq i32 %96, 0
  %1129 = select i1 %1128, float %1093, float %591
  %1130 = icmp eq i32 %96, 1
  %1131 = select i1 %1130, float %1093, float %1123
  %1132 = icmp eq i32 %96, 2
  %1133 = select i1 %1132, float %1093, float %1125
  %1134 = icmp eq i32 %96, 3
  %1135 = select i1 %1134, float %1093, float %1127
  %1136 = icmp eq i32 %90, 0
  %1137 = select i1 %1136, float %1109, float %1129
  %1138 = icmp eq i32 %90, 1
  %1139 = select i1 %1138, float %1109, float %1131
  %1140 = icmp eq i32 %90, 2
  %1141 = select i1 %1140, float %1109, float %1133
  %1142 = icmp eq i32 %90, 3
  %1143 = select i1 %1142, float %1109, float %1135
  %1144 = icmp eq i32 %97, 0
  %1145 = select i1 %1144, float %1121, float %1137
  %1146 = icmp eq i32 %97, 1
  %1147 = select i1 %1146, float %1121, float %1139
  %1148 = icmp eq i32 %97, 2
  %1149 = select i1 %1148, float %1121, float %1141
  %1150 = icmp eq i32 %97, 3
  %1151 = select i1 %1150, float %1121, float %1143
  %1152 = call float @dx.op.unary.f32(i32 7, float %1145)  ; Saturate(value)
  %1153 = fmul fast float %1152, %1152
  %1154 = shl i32 %7, 1
  %1155 = shl i32 %8, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1154, i32 %1155, i32 undef, float %1152, float %1153, float %1152, float %1152, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1156 = call float @dx.op.unary.f32(i32 7, float %1147)  ; Saturate(value)
  %1157 = fmul fast float %1156, %1156
  %1158 = or i32 %1154, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1158, i32 %1155, i32 undef, float %1156, float %1157, float %1156, float %1156, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1159 = call float @dx.op.unary.f32(i32 7, float %1149)  ; Saturate(value)
  %1160 = fmul fast float %1159, %1159
  %1161 = or i32 %1155, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1154, i32 %1161, i32 undef, float %1159, float %1160, float %1159, float %1159, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1162 = call float @dx.op.unary.f32(i32 7, float %1151)  ; Saturate(value)
  %1163 = fmul fast float %1162, %1162
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1158, i32 %1161, i32 undef, float %1162, float %1163, float %1162, float %1162, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #3

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

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
!dx.entryPoints = !{!16}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !9, !11, !14}
!5 = !{!6, !8}
!6 = !{i32 0, %"class.Texture2D<float>"* undef, !"", i32 0, i32 11, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 6, i32 1, i32 2, i32 0, !7}
!9 = !{!10}
!10 = !{i32 0, %"class.RWTexture2D<vector<float, 2> >"* undef, !"", i32 0, i32 3, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!11 = !{!12, !13}
!12 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!13 = !{i32 1, %ConstantBufferGTAO0* undef, !"", i32 0, i32 0, i32 1, i32 96, null}
!14 = !{!15}
!15 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!16 = !{void ()* @cs_gtao_prepass, !"cs_gtao_prepass", null, !4, !17}
!17 = !{i32 0, i64 256, i32 4, !18}
!18 = !{i32 8, i32 8, i32 1}
!19 = !{!20, !20, i64 0}
!20 = !{!"float", !21, i64 0}
!21 = !{!"omnipotent char", !22, i64 0}
!22 = !{!"Simple C/C++ TBAA"}
!23 = !{!24, !26}
!24 = distinct !{!24, !25, !"\01?__GTAOQuadSortIndices@@YAXUGTAOQuadConfig@@V?$vector@M$03@@AIAV?$vector@I$03@@@Z: %quadIndices"}
!25 = distinct !{!25, !"\01?__GTAOQuadSortIndices@@YAXUGTAOQuadConfig@@V?$vector@M$03@@AIAV?$vector@I$03@@@Z"}
!26 = distinct !{!26, !27, !"\01?GTAOQuadMain@@YA?AUGTAOQuadOutput@@UGTAOQuadConfig@@UGTAOConfig@@V?$Texture2D@M@@V?$Texture2D@V?$vector@M$02@@@@USamplerState@@V?$vector@M$03@@V?$vector@M$01@@555IIV?$vector@I$03@@@Z: %agg.result"}
!27 = distinct !{!27, !"\01?GTAOQuadMain@@YA?AUGTAOQuadOutput@@UGTAOQuadConfig@@UGTAOConfig@@V?$Texture2D@M@@V?$Texture2D@V?$vector@M$02@@@@USamplerState@@V?$vector@M$03@@V?$vector@M$01@@555IIV?$vector@I$03@@@Z"}
!28 = !{!26}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = !{!31, !31, i64 0}
!31 = !{!"int", !21, i64 0}
!32 = !{!33, !35, !26}
!33 = distinct !{!33, !34, !"\01?__GTAOQuadCalculateForPixel@@YA?AUGTAOPixelOutput@@UGTAOQuadConfig@@UGTAOConfig@@V?$Texture2D@M@@V?$Texture2D@V?$vector@M$02@@@@USamplerState@@V?$vector@I$03@@V?$vector@M$03@@5V?$vector@M$01@@666I7AIAI@Z: %agg.result"}
!34 = distinct !{!34, !"\01?__GTAOQuadCalculateForPixel@@YA?AUGTAOPixelOutput@@UGTAOQuadConfig@@UGTAOConfig@@V?$Texture2D@M@@V?$Texture2D@V?$vector@M$02@@@@USamplerState@@V?$vector@I$03@@V?$vector@M$03@@5V?$vector@M$01@@666I7AIAI@Z"}
!35 = distinct !{!35, !34, !"\01?__GTAOQuadCalculateForPixel@@YA?AUGTAOPixelOutput@@UGTAOQuadConfig@@UGTAOConfig@@V?$Texture2D@M@@V?$Texture2D@V?$vector@M$02@@@@USamplerState@@V?$vector@I$03@@V?$vector@M$03@@5V?$vector@M$01@@666I7AIAI@Z: %executed"}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 1}
!37 = !{!38, !40, !26}
!38 = distinct !{!38, !39, !"\01?__GTAOQuadCalculateForPixel@@YA?AUGTAOPixelOutput@@UGTAOQuadConfig@@UGTAOConfig@@V?$Texture2D@M@@V?$Texture2D@V?$vector@M$02@@@@USamplerState@@V?$vector@I$03@@V?$vector@M$03@@5V?$vector@M$01@@666I7AIAI@Z: %agg.result"}
!39 = distinct !{!39, !"\01?__GTAOQuadCalculateForPixel@@YA?AUGTAOPixelOutput@@UGTAOQuadConfig@@UGTAOConfig@@V?$Texture2D@M@@V?$Texture2D@V?$vector@M$02@@@@USamplerState@@V?$vector@I$03@@V?$vector@M$03@@5V?$vector@M$01@@666I7AIAI@Z"}
!40 = distinct !{!40, !39, !"\01?__GTAOQuadCalculateForPixel@@YA?AUGTAOPixelOutput@@UGTAOQuadConfig@@UGTAOConfig@@V?$Texture2D@M@@V?$Texture2D@V?$vector@M$02@@@@USamplerState@@V?$vector@I$03@@V?$vector@M$03@@5V?$vector@M$01@@666I7AIAI@Z: %executed"}
!41 = !{!42, !44, !45, !47, !26}
!42 = distinct !{!42, !43, !"\01?__GTAOQuadBilateralUpsamplePixel@@YAXUGTAOQuadConfig@@V?$vector@M$03@@V?$vector@I$03@@MMIAIAV2@AIAV3@@Z: %visibility"}
!43 = distinct !{!43, !"\01?__GTAOQuadBilateralUpsamplePixel@@YAXUGTAOQuadConfig@@V?$vector@M$03@@V?$vector@I$03@@MMIAIAV2@AIAV3@@Z"}
!44 = distinct !{!44, !43, !"\01?__GTAOQuadBilateralUpsamplePixel@@YAXUGTAOQuadConfig@@V?$vector@M$03@@V?$vector@I$03@@MMIAIAV2@AIAV3@@Z: %irradiance"}
!45 = distinct !{!45, !46, !"\01?__GTAOQuadBilateralUpsample@@YAXUGTAOQuadConfig@@V?$vector@M$03@@V?$vector@I$03@@MMIAIAV2@AIAV3@@Z: %visibility"}
!46 = distinct !{!46, !"\01?__GTAOQuadBilateralUpsample@@YAXUGTAOQuadConfig@@V?$vector@M$03@@V?$vector@I$03@@MMIAIAV2@AIAV3@@Z"}
!47 = distinct !{!47, !46, !"\01?__GTAOQuadBilateralUpsample@@YAXUGTAOQuadConfig@@V?$vector@M$03@@V?$vector@I$03@@MMIAIAV2@AIAV3@@Z: %irradiance"}
!48 = !{!49, !51, !45, !47, !26}
!49 = distinct !{!49, !50, !"\01?__GTAOQuadBilateralUpsamplePixel@@YAXUGTAOQuadConfig@@V?$vector@M$03@@V?$vector@I$03@@MMIAIAV2@AIAV3@@Z: %visibility"}
!50 = distinct !{!50, !"\01?__GTAOQuadBilateralUpsamplePixel@@YAXUGTAOQuadConfig@@V?$vector@M$03@@V?$vector@I$03@@MMIAIAV2@AIAV3@@Z"}
!51 = distinct !{!51, !50, !"\01?__GTAOQuadBilateralUpsamplePixel@@YAXUGTAOQuadConfig@@V?$vector@M$03@@V?$vector@I$03@@MMIAIAV2@AIAV3@@Z: %irradiance"}

