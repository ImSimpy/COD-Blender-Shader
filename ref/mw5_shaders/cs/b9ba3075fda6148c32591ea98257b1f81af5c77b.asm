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
; shader hash: 997d6ae3ba9c70143dd0f7b3507aec81
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
;                                   sampler      NA          NA      S1             s2     1
;                                   texture     f32          2d      T0             t0     1
;                                   texture     u32          2d      T1             t1     1
;                                   texture     f32          2d      T2             t4     1
;                                   texture     f32          2d      T3             t5     1
;                                   texture     f32          2d      T4            t10     1
;                                   texture     f32          2d      T5             t2     1
;                                   texture     f32          2d      T6             t7     1
;                                   texture     f32          2d      T7             t3     1
;                                   texture     f32          2d      T8             t6     1
;                                       UAV     f32          2d      U0             u0     1
;                                       UAV     f32          2d      U1             u1     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 2> >" = type { <2 x float>, %"class.Texture2D<vector<float, 2> >::mips_type" }
%"class.Texture2D<vector<float, 2> >::mips_type" = type { i32 }
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
%ConstantBufferGTAO0 = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, i32, i32, i32, i32 }
%struct.SamplerState = type { i32 }

@"\01?gtaoQuadDiscontinuity@@3PAMA" = external addrspace(3) global [64 x float], align 4
@"\01?gtaoQuadMaxUint@@3IA" = external addrspace(3) global i32, align 4
@"\01?tiledSharedMem@@3PAIA" = external addrspace(3) global [64 x i32], align 4
@"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim" = addrspace(3) global [128 x float] undef, align 4

define void @cs_gtao_cinematic_quality() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %17 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %18 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %19 = alloca [4 x float], align 4
  %20 = alloca [4 x float], align 4
  %21 = alloca [4 x float], align 4
  %22 = alloca [4 x i32], align 4
  %23 = alloca [4 x float], align 4
  %24 = alloca [4 x i32], align 4
  %25 = alloca [4 x float], align 4
  %26 = alloca [4 x i32], align 4
  %27 = alloca [4 x float], align 4
  %28 = alloca [4 x i32], align 4
  %29 = alloca [4 x float], align 4
  %30 = alloca [4 x float], align 4
  %31 = alloca [4 x float], align 4
  %32 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %33 = extractvalue %dx.types.CBufRet.f32 %32, 2
  %34 = extractvalue %dx.types.CBufRet.f32 %32, 3
  %35 = fmul fast float %33, 5.120000e+02
  %36 = fmul fast float %34, 5.120000e+02
  %37 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %38 = extractvalue %dx.types.CBufRet.f32 %37, 0
  %39 = extractvalue %dx.types.CBufRet.f32 %37, 1
  %40 = fmul fast float %38, 5.000000e-01
  %41 = fmul fast float %39, 5.000000e-01
  %42 = extractvalue %dx.types.CBufRet.f32 %37, 2
  %43 = extractvalue %dx.types.CBufRet.f32 %37, 3
  %44 = fmul fast float %42, 2.000000e+00
  %45 = fmul fast float %43, 2.000000e+00
  %46 = uitofp i32 %16 to float
  %47 = uitofp i32 %17 to float
  %48 = fmul fast float %44, %46
  %49 = fmul fast float %45, %47
  %50 = fadd fast float %48, %42
  %51 = fadd fast float %49, %43
  %52 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %13, float %50, float %51, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %53 = extractvalue %dx.types.ResRet.f32 %52, 0
  %54 = bitcast float %53 to i32
  %55 = lshr i32 %54, 11
  %56 = and i32 %54, 2047
  %57 = and i32 %55, 2047
  %58 = uitofp i32 %56 to float
  %59 = uitofp i32 %57 to float
  %60 = fmul fast float %58, 0x3F50040100000000
  %61 = fmul fast float %59, 0x3F50040100000000
  %62 = fadd fast float %60, -1.000000e+00
  %63 = fadd fast float %61, -1.000000e+00
  %64 = lshr i32 %54, 22
  %65 = shl nuw nsw i32 %64, 5
  %66 = call float @dx.op.legacyF16ToF32(i32 131, i32 %65)  ; LegacyF16ToF32(value)
  %67 = call float @dx.op.unary.f32(i32 6, float %62)  ; FAbs(value)
  %68 = call float @dx.op.unary.f32(i32 6, float %63)  ; FAbs(value)
  %69 = fadd fast float %67, -5.000000e-01
  %70 = fadd fast float %68, -5.000000e-01
  %71 = fmul fast float %69, 2.000000e+00
  %72 = fmul fast float %70, 2.000000e+00
  %73 = call float @dx.op.unary.f32(i32 7, float %71)  ; Saturate(value)
  %74 = call float @dx.op.unary.f32(i32 7, float %72)  ; Saturate(value)
  %75 = fmul fast float %67, 2.000000e+00
  %76 = fmul fast float %68, 2.000000e+00
  %77 = call float @dx.op.unary.f32(i32 7, float %75)  ; Saturate(value)
  %78 = call float @dx.op.unary.f32(i32 7, float %76)  ; Saturate(value)
  %79 = fmul fast float %73, %73
  %80 = fmul fast float %79, 0x3FA48888A0000000
  %81 = fmul fast float %74, %74
  %82 = fmul fast float %81, 0x3FB2407960000000
  %83 = fmul fast float %77, 0x3F599999A0000000
  %84 = fmul fast float %78, 0x3F66C16C20000000
  %85 = fadd fast float %83, %80
  %86 = fadd fast float %84, %82
  %87 = fsub fast float -0.000000e+00, %85
  %88 = fsub fast float -0.000000e+00, %86
  %89 = fcmp fast olt float %62, 0.000000e+00
  %90 = fcmp fast olt float %63, 0.000000e+00
  %91 = select i1 %89, float 0.000000e+00, float 1.000000e+00
  %92 = select i1 %90, float 0.000000e+00, float 1.000000e+00
  %93 = fcmp fast une float %91, 0.000000e+00
  %94 = fcmp fast une float %92, 0.000000e+00
  %95 = select i1 %93, float %85, float %87
  %96 = select i1 %94, float %86, float %88
  %97 = fsub fast float %50, %95
  %98 = fsub fast float %51, %96
  %99 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %8, %dx.types.Handle %13, float %97, float %98, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %100 = extractvalue %dx.types.ResRet.f32 %99, 0
  %101 = extractvalue %dx.types.ResRet.f32 %99, 1
  %102 = extractvalue %dx.types.ResRet.f32 %99, 2
  %103 = extractvalue %dx.types.ResRet.f32 %99, 3
  %104 = bitcast float %100 to i32
  %105 = bitcast float %101 to i32
  %106 = bitcast float %102 to i32
  %107 = bitcast float %103 to i32
  %108 = call i32 @dx.op.binary.i32(i32 40, i32 %106, i32 %107)  ; UMin(a,b)
  %109 = call i32 @dx.op.binary.i32(i32 40, i32 %105, i32 %108)  ; UMin(a,b)
  %110 = call i32 @dx.op.binary.i32(i32 40, i32 %104, i32 %109)  ; UMin(a,b)
  %111 = lshr i32 %110, 11
  %112 = and i32 %110, 2047
  %113 = and i32 %111, 2047
  %114 = uitofp i32 %112 to float
  %115 = uitofp i32 %113 to float
  %116 = fmul fast float %114, 0x3F50040100000000
  %117 = fmul fast float %115, 0x3F50040100000000
  %118 = fadd fast float %116, -1.000000e+00
  %119 = fadd fast float %117, -1.000000e+00
  %120 = lshr i32 %110, 22
  %121 = shl nuw nsw i32 %120, 5
  %122 = call float @dx.op.legacyF16ToF32(i32 131, i32 %121)  ; LegacyF16ToF32(value)
  %123 = call float @dx.op.unary.f32(i32 6, float %118)  ; FAbs(value)
  %124 = call float @dx.op.unary.f32(i32 6, float %119)  ; FAbs(value)
  %125 = fadd fast float %123, -5.000000e-01
  %126 = fadd fast float %124, -5.000000e-01
  %127 = fmul fast float %125, 2.000000e+00
  %128 = fmul fast float %126, 2.000000e+00
  %129 = call float @dx.op.unary.f32(i32 7, float %127)  ; Saturate(value)
  %130 = call float @dx.op.unary.f32(i32 7, float %128)  ; Saturate(value)
  %131 = fmul fast float %123, 2.000000e+00
  %132 = fmul fast float %124, 2.000000e+00
  %133 = call float @dx.op.unary.f32(i32 7, float %131)  ; Saturate(value)
  %134 = call float @dx.op.unary.f32(i32 7, float %132)  ; Saturate(value)
  %135 = fmul fast float %129, %129
  %136 = fmul fast float %135, 0x3FA48888A0000000
  %137 = fmul fast float %130, %130
  %138 = fmul fast float %137, 0x3FB2407960000000
  %139 = fmul fast float %133, 0x3F599999A0000000
  %140 = fmul fast float %134, 0x3F66C16C20000000
  %141 = fadd fast float %139, %136
  %142 = fadd fast float %140, %138
  %143 = fsub fast float -0.000000e+00, %141
  %144 = fsub fast float -0.000000e+00, %142
  %145 = fcmp fast olt float %118, 0.000000e+00
  %146 = fcmp fast olt float %119, 0.000000e+00
  %147 = select i1 %145, float 0.000000e+00, float 1.000000e+00
  %148 = select i1 %146, float 0.000000e+00, float 1.000000e+00
  %149 = fcmp fast une float %147, 0.000000e+00
  %150 = fcmp fast une float %148, 0.000000e+00
  %151 = select i1 %149, float %141, float %143
  %152 = select i1 %150, float %142, float %144
  %153 = fmul fast float %95, 3.000000e+00
  %154 = fmul fast float %96, 3.000000e+00
  %155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %156 = extractvalue %dx.types.CBufRet.f32 %155, 2
  %157 = extractvalue %dx.types.CBufRet.f32 %155, 3
  %158 = fmul fast float %42, %35
  %159 = fmul fast float %43, %36
  %160 = fmul fast float %156, %66
  %161 = fmul fast float %66, %157
  %162 = fsub fast float -0.000000e+00, %161
  %163 = fdiv fast float 5.000000e+01, %160
  %164 = fdiv fast float 5.000000e+01, %162
  %165 = call float @dx.op.binary.f32(i32 36, float %158, float %163)  ; FMin(a,b)
  %166 = call float @dx.op.binary.f32(i32 36, float %159, float %164)  ; FMin(a,b)
  %167 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %12, float %50, float %51, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %168 = extractvalue %dx.types.ResRet.f32 %167, 0
  %169 = extractvalue %dx.types.ResRet.f32 %167, 1
  %170 = fmul fast float %168, %168
  %171 = fsub fast float %169, %170
  %172 = call float @dx.op.unary.f32(i32 7, float %171)  ; Saturate(value)
  %173 = fdiv fast float %172, %168
  %174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %175 = extractvalue %dx.types.CBufRet.f32 %174, 0
  %176 = fmul fast float %175, 0x40165A5B00000000
  %177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %178 = extractvalue %dx.types.CBufRet.f32 %177, 0
  %179 = fmul fast float %178, 2.000000e+00
  %180 = fadd fast float %179, -1.000000e+00
  %181 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %12, float %97, float %98, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %182 = extractvalue %dx.types.ResRet.f32 %181, 0
  %183 = fmul fast float %182, 2.550000e+02
  %184 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %12, float %97, float %98, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %185 = extractvalue %dx.types.ResRet.f32 %184, 0
  %186 = extractvalue %dx.types.ResRet.f32 %184, 1
  %187 = extractvalue %dx.types.ResRet.f32 %184, 2
  %188 = extractvalue %dx.types.ResRet.f32 %184, 3
  %189 = call float @dx.op.dot4.f32(i32 56, float %185, float %186, float %187, float %188, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %190 = call float @dx.op.dot4.f32(i32 56, float %185, float %186, float %187, float %188, float %185, float %186, float %187, float %188)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %191 = fmul fast float %189, 2.500000e-01
  %192 = fmul fast float %190, 2.500000e-01
  %193 = mul i32 %18, 2
  %194 = add i32 0, %193
  %195 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %194
  store float %191, float addrspace(3)* %195, align 4
  %196 = mul i32 %18, 2
  %197 = add i32 1, %196
  %198 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %197
  store float %192, float addrspace(3)* %198, align 4
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %199 = and i32 %18, 63
  %200 = xor i32 %199, 1
  %201 = mul i32 %200, 2
  %202 = add i32 0, %201
  %203 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %202
  %204 = load float, float addrspace(3)* %203, align 4
  %205 = mul i32 %200, 2
  %206 = add i32 1, %205
  %207 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %206
  %208 = load float, float addrspace(3)* %207, align 4
  %209 = fadd fast float %204, %191
  %210 = fadd fast float %208, %192
  %211 = xor i32 %199, 8
  %212 = mul i32 %211, 2
  %213 = add i32 0, %212
  %214 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %213
  %215 = load float, float addrspace(3)* %214, align 4
  %216 = mul i32 %211, 2
  %217 = add i32 1, %216
  %218 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %217
  %219 = load float, float addrspace(3)* %218, align 4
  %220 = fadd fast float %209, %215
  %221 = fadd fast float %210, %219
  %222 = xor i32 %199, 9
  %223 = mul i32 %222, 2
  %224 = add i32 0, %223
  %225 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %224
  %226 = load float, float addrspace(3)* %225, align 4
  %227 = mul i32 %222, 2
  %228 = add i32 1, %227
  %229 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %228
  %230 = load float, float addrspace(3)* %229, align 4
  %231 = fadd fast float %220, %226
  %232 = fadd fast float %221, %230
  store float %231, float addrspace(3)* %195, align 4
  store float %232, float addrspace(3)* %198, align 4
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %233 = xor i32 %199, 2
  %234 = mul i32 %233, 2
  %235 = add i32 0, %234
  %236 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %235
  %237 = load float, float addrspace(3)* %236, align 4
  %238 = fadd fast float %237, %231
  %239 = xor i32 %199, 16
  %240 = mul i32 %239, 2
  %241 = add i32 0, %240
  %242 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %241
  %243 = load float, float addrspace(3)* %242, align 4
  %244 = fadd fast float %238, %243
  %245 = xor i32 %199, 18
  %246 = mul i32 %245, 2
  %247 = add i32 0, %246
  %248 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %247
  %249 = load float, float addrspace(3)* %248, align 4
  %250 = fadd fast float %244, %249
  %251 = fmul fast float %250, 6.250000e-02
  %252 = call float @dx.op.binary.f32(i32 35, float %251, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %253 = fmul fast float %66, 0x3FA99999A0000000
  %254 = fadd fast float %122, %253
  %255 = fcmp fast olt float %66, %254
  %256 = fsub fast float %95, %151
  %257 = fsub fast float %96, %152
  %258 = fmul fast float %256, 1.920000e+03
  %259 = fmul fast float %257, 1.080000e+03
  %260 = call float @dx.op.dot2.f32(i32 54, float %258, float %259, float %258, float %259)  ; Dot2(ax,ay,bx,by)
  %261 = bitcast float %260 to i32
  %262 = ashr i32 %261, 1
  %263 = add nsw i32 %262, 532487669
  %264 = bitcast i32 %263 to float
  %265 = fmul fast float %264, 2.000000e+00
  %266 = fsub fast float 1.000000e+00, %265
  %267 = call float @dx.op.unary.f32(i32 7, float %266)  ; Saturate(value)
  %268 = select i1 %255, float 1.000000e+00, float %267
  %269 = fmul fast float %95, 1.920000e+03
  %270 = fmul fast float %96, 1.080000e+03
  %271 = call float @dx.op.unary.f32(i32 6, float %269)  ; FAbs(value)
  %272 = call float @dx.op.unary.f32(i32 6, float %270)  ; FAbs(value)
  %273 = call float @dx.op.binary.f32(i32 35, float %271, float %272)  ; FMax(a,b)
  %274 = fmul fast float %273, 0x3FB99999A0000000
  %275 = fsub fast float 8.000000e+00, %274
  %276 = call float @dx.op.unary.f32(i32 7, float %275)  ; Saturate(value)
  %277 = fmul fast float %276, %268
  %278 = fadd fast float %50, -5.000000e-01
  %279 = fsub fast float %278, %153
  %280 = fadd fast float %51, -5.000000e-01
  %281 = fsub fast float %280, %154
  %282 = call float @dx.op.unary.f32(i32 6, float %279)  ; FAbs(value)
  %283 = call float @dx.op.unary.f32(i32 6, float %281)  ; FAbs(value)
  %284 = fadd fast float %282, -5.000000e-01
  %285 = fadd fast float %283, -5.000000e-01
  %286 = call float @dx.op.binary.f32(i32 35, float %284, float %285)  ; FMax(a,b)
  %287 = fcmp fast olt float %286, 0.000000e+00
  %288 = select i1 %287, float 1.000000e+00, float 0.000000e+00
  %289 = fmul fast float %277, %288
  %290 = fsub fast float %252, %168
  %291 = call float @dx.op.unary.f32(i32 6, float %290)  ; FAbs(value)
  %292 = fmul fast float %168, 2.500000e-01
  %293 = fmul fast float %292, %173
  %294 = call float @dx.op.unary.f32(i32 24, float %293)  ; Sqrt(value)
  %295 = fmul fast float %168, 0x3FD6666660000000
  %296 = fadd fast float %295, 0x3FA99999A0000000
  %297 = fadd fast float %296, %294
  %298 = fdiv fast float %291, %297
  %299 = fsub fast float 1.000000e+00, %298
  %300 = call float @dx.op.unary.f32(i32 7, float %299)  ; Saturate(value)
  %301 = fmul fast float %300, 0x3FF8062660000000
  %302 = call float @dx.op.unary.f32(i32 7, float %301)  ; Saturate(value)
  %303 = fmul fast float %302, 2.000000e+00
  %304 = fsub fast float 3.000000e+00, %303
  %305 = fmul fast float %302, %302
  %306 = fmul fast float %305, 5.000000e-01
  %307 = fmul fast float %306, %304
  %308 = fadd fast float %307, 5.000000e-01
  %309 = fmul fast float %289, %308
  %310 = fmul fast float %182, 0x41A7A6C180000000
  %311 = fsub fast float 0x41CFB3AA00000000, %310
  %312 = fptosi float %311 to i32
  %313 = bitcast i32 %312 to float
  %314 = fsub fast float 1.000000e+00, %313
  %315 = fdiv fast float 0x3FA9999A00000000, %314
  %316 = fsub fast float 1.000000e+00, %315
  %317 = fcmp fast ugt float %309, 0x3FEE666660000000
  %318 = fmul fast float %309, %316
  br i1 %317, label %326, label %319, !dx.controlflow.hints !29

; <label>:319                                     ; preds = %0
  %320 = fadd fast float %318, 0xBFEE666660000000
  %321 = fadd fast float %318, -1.000000e+00
  %322 = fdiv fast float %320, %321
  %323 = call float @dx.op.unary.f32(i32 23, float %322)  ; Log(value)
  %324 = fmul fast float %323, 0x402B06DCE0000000
  %325 = fsub fast float -1.000000e+00, %324
  br label %348

; <label>:326                                     ; preds = %0
  %327 = fcmp fast ole float %316, 0x3FEE666660000000
  %328 = lshr i32 %16, 3
  %329 = uitofp i32 %328 to float
  %330 = fadd fast float %176, %329
  %331 = fmul fast float %180, %330
  %332 = lshr i32 %17, 3
  %333 = uitofp i32 %332 to float
  %334 = fadd fast float %176, %333
  %335 = fmul fast float %180, %334
  %336 = call float @dx.op.dot2.f32(i32 54, float %331, float %335, float 0x3FB12E2860000000, float 0x3F77E8B200000000)  ; Dot2(ax,ay,bx,by)
  %337 = call float @dx.op.unary.f32(i32 22, float %336)  ; Frc(value)
  %338 = fmul fast float %337, 0x404A7DD040000000
  %339 = call float @dx.op.unary.f32(i32 22, float %338)  ; Frc(value)
  %340 = fcmp fast olt float %339, 1.250000e-01
  %341 = and i1 %327, %340
  br i1 %341, label %342, label %346, !dx.controlflow.hints !30

; <label>:342                                     ; preds = %326
  %343 = call float @dx.op.unary.f32(i32 23, float -0.000000e+00)  ; Log(value)
  %344 = fmul fast float %343, 0x402B06DCE0000000
  %345 = fsub fast float -1.000000e+00, %344
  br label %348

; <label>:346                                     ; preds = %326
  %347 = fadd fast float %183, -1.600000e+01
  br label %348

; <label>:348                                     ; preds = %346, %342, %319
  %349 = phi float [ %325, %319 ], [ %345, %342 ], [ %347, %346 ]
  %350 = phi float [ %318, %319 ], [ 0x3FECCCCCC0000000, %342 ], [ 1.000000e+00, %346 ]
  %351 = fmul fast float %165, %40
  %352 = fmul fast float %166, %41
  %353 = call float @dx.op.binary.f32(i32 36, float %351, float %352)  ; FMin(a,b)
  %354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %355 = extractvalue %dx.types.CBufRet.f32 %354, 0
  %356 = fsub fast float %353, %355
  %357 = extractvalue %dx.types.CBufRet.f32 %354, 1
  %358 = fmul fast float %356, %357
  %359 = call float @dx.op.unary.f32(i32 7, float %358)  ; Saturate(value)
  %360 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %11, %dx.types.Handle %13, float %50, float %51, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %361 = extractvalue %dx.types.ResRet.f32 %360, 0
  %362 = extractvalue %dx.types.ResRet.f32 %360, 1
  %363 = extractvalue %dx.types.ResRet.f32 %360, 2
  %364 = extractvalue %dx.types.ResRet.f32 %360, 3
  %365 = fcmp fast ogt float %361, -1.000000e+00
  %366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %367 = extractvalue %dx.types.CBufRet.f32 %366, 1
  %368 = select i1 %365, float %367, float 1.000000e+00
  %369 = fadd fast float %361, 1.000000e+00
  %370 = fmul fast float %368, %369
  %371 = fcmp fast ogt float %362, -1.000000e+00
  %372 = select i1 %371, float %367, float 1.000000e+00
  %373 = fadd fast float %362, 1.000000e+00
  %374 = fmul fast float %372, %373
  %375 = fcmp fast ogt float %363, -1.000000e+00
  %376 = select i1 %375, float %367, float 1.000000e+00
  %377 = fadd fast float %363, 1.000000e+00
  %378 = fmul fast float %376, %377
  %379 = fcmp fast ogt float %364, -1.000000e+00
  %380 = select i1 %379, float %367, float 1.000000e+00
  %381 = fadd fast float %364, 1.000000e+00
  %382 = fmul fast float %380, %381
  %383 = shl i32 %16, 1
  %384 = shl i32 %17, 1
  %385 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %383, i32 %384, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %386 = extractvalue %dx.types.ResRet.i32 %385, 0
  %387 = or i32 %383, 1
  %388 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %387, i32 %384, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %389 = extractvalue %dx.types.ResRet.i32 %388, 0
  %390 = or i32 %384, 1
  %391 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %383, i32 %390, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %392 = extractvalue %dx.types.ResRet.i32 %391, 0
  %393 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %387, i32 %390, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %394 = extractvalue %dx.types.ResRet.i32 %393, 0
  %395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %396 = extractvalue %dx.types.CBufRet.f32 %395, 0
  %397 = extractvalue %dx.types.CBufRet.f32 %395, 1
  %398 = extractvalue %dx.types.CBufRet.f32 %395, 2
  %399 = extractvalue %dx.types.CBufRet.f32 %395, 3
  %400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %401 = extractvalue %dx.types.CBufRet.f32 %400, 0
  %402 = extractvalue %dx.types.CBufRet.f32 %400, 1
  %403 = extractvalue %dx.types.CBufRet.f32 %400, 2
  %404 = extractvalue %dx.types.CBufRet.f32 %400, 3
  %405 = call float @dx.op.unary.f32(i32 6, float %382)  ; FAbs(value)
  %406 = call float @dx.op.unary.f32(i32 6, float %378)  ; FAbs(value)
  %407 = call float @dx.op.unary.f32(i32 6, float %370)  ; FAbs(value)
  %408 = call float @dx.op.unary.f32(i32 6, float %374)  ; FAbs(value)
  %409 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 0
  store float %405, float* %409, align 4
  %410 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 1
  store float %406, float* %410, align 4
  %411 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 2
  store float %407, float* %411, align 4
  %412 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 3
  store float %408, float* %412, align 4
  %413 = getelementptr inbounds [4 x float], [4 x float]* %30, i32 0, i32 0
  store float %405, float* %413, align 4
  %414 = getelementptr inbounds [4 x float], [4 x float]* %30, i32 0, i32 1
  store float %406, float* %414, align 4
  %415 = getelementptr inbounds [4 x float], [4 x float]* %30, i32 0, i32 2
  store float %407, float* %415, align 4
  %416 = getelementptr inbounds [4 x float], [4 x float]* %30, i32 0, i32 3
  store float %408, float* %416, align 4
  %417 = fcmp fast olt float %405, %406
  %418 = zext i1 %417 to i32
  %419 = xor i32 %418, 1
  %420 = fcmp fast olt float %407, %408
  %421 = select i1 %420, i32 3, i32 2
  %422 = select i1 %420, i32 2, i32 3
  %423 = getelementptr [4 x float], [4 x float]* %30, i32 0, i32 %418
  %424 = load float, float* %423, align 4, !tbaa !31, !noalias !35
  %425 = getelementptr [4 x float], [4 x float]* %30, i32 0, i32 %421
  %426 = load float, float* %425, align 4, !tbaa !31, !noalias !35
  %427 = fcmp fast olt float %424, %426
  %428 = select i1 %427, i32 %421, i32 %418
  %429 = select i1 %427, i32 %418, i32 %421
  %430 = getelementptr [4 x float], [4 x float]* %30, i32 0, i32 %419
  %431 = load float, float* %430, align 4, !tbaa !31, !noalias !35
  %432 = getelementptr [4 x float], [4 x float]* %30, i32 0, i32 %422
  %433 = load float, float* %432, align 4, !tbaa !31, !noalias !35
  %434 = fcmp fast ogt float %431, %433
  %435 = select i1 %434, i32 %422, i32 %419
  %436 = select i1 %434, i32 %419, i32 %422
  %437 = getelementptr [4 x float], [4 x float]* %31, i32 0, i32 %428
  %438 = load float, float* %437, align 4, !tbaa !31, !noalias !40
  %439 = getelementptr [4 x float], [4 x float]* %31, i32 0, i32 %435
  %440 = load float, float* %439, align 4, !tbaa !31, !noalias !40
  %441 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %11, %dx.types.Handle %13, float %48, float %49, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %442 = extractvalue %dx.types.ResRet.f32 %441, 0
  %443 = extractvalue %dx.types.ResRet.f32 %441, 2
  %444 = extractvalue %dx.types.ResRet.f32 %441, 3
  %445 = fsub fast float %378, %442
  %446 = call float @dx.op.unary.f32(i32 6, float %445)  ; FAbs(value)
  %447 = fsub fast float %370, %443
  %448 = call float @dx.op.unary.f32(i32 6, float %447)  ; FAbs(value)
  %449 = fadd fast float %448, %446
  %450 = fsub fast float %444, %374
  %451 = call float @dx.op.unary.f32(i32 6, float %450)  ; FAbs(value)
  %452 = fmul fast float %451, 0x3FF6A09E60000000
  %453 = fadd fast float %449, %452
  %454 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?gtaoQuadDiscontinuity@@3PAMA", i32 0, i32 %18
  store float %453, float addrspace(3)* %454, align 4, !tbaa !31, !noalias !40
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %455 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?gtaoQuadDiscontinuity@@3PAMA", i32 0, i32 %200
  %456 = load float, float addrspace(3)* %455, align 4, !tbaa !31, !noalias !40
  %457 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?gtaoQuadDiscontinuity@@3PAMA", i32 0, i32 %211
  %458 = load float, float addrspace(3)* %457, align 4, !tbaa !31, !noalias !40
  %459 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?gtaoQuadDiscontinuity@@3PAMA", i32 0, i32 %222
  %460 = load float, float addrspace(3)* %459, align 4, !tbaa !31, !noalias !40
  %461 = fsub fast float %456, %453
  %462 = call float @dx.op.unary.f32(i32 6, float %461)  ; FAbs(value)
  %463 = fsub fast float %458, %453
  %464 = call float @dx.op.unary.f32(i32 6, float %463)  ; FAbs(value)
  %465 = fadd fast float %464, %462
  %466 = fsub fast float %460, %453
  %467 = call float @dx.op.unary.f32(i32 6, float %466)  ; FAbs(value)
  %468 = fadd fast float %465, %467
  store float %468, float addrspace(3)* %454, align 4, !tbaa !31, !noalias !40
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %469 = fcmp fast olt float %440, 0.000000e+00
  %470 = zext i1 %469 to i32
  %471 = icmp eq i32 %18, 0
  br i1 %471, label %472, label %473, !dx.controlflow.hints !41

; <label>:472                                     ; preds = %348
  store i32 0, i32 addrspace(3)* @"\01?gtaoQuadMaxUint@@3IA", align 4, !tbaa !42, !noalias !40
  br label %473

; <label>:473                                     ; preds = %472, %348
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %474 = atomicrmw umax i32 addrspace(3)* @"\01?gtaoQuadMaxUint@@3IA", i32 %470 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %475 = load i32, i32 addrspace(3)* @"\01?gtaoQuadMaxUint@@3IA", align 4, !tbaa !42, !noalias !40
  %476 = icmp ne i32 %475, 0
  %477 = select i1 %476, i32 2, i32 1
  %478 = fmul fast float %401, %48
  %479 = fmul fast float %402, %49
  %480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %481 = extractvalue %dx.types.CBufRet.f32 %480, 2
  %482 = fmul fast float %481, 0x3FE3C6EF40000000
  %483 = frem fast float %478, 2.560000e+02
  %484 = frem fast float %479, 2.560000e+02
  %485 = fptoui float %483 to i32
  %486 = fptoui float %484 to i32
  %487 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %485, i32 %486, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %488 = extractvalue %dx.types.ResRet.f32 %487, 0
  %489 = extractvalue %dx.types.ResRet.f32 %487, 1
  %490 = extractvalue %dx.types.ResRet.f32 %487, 2
  %491 = extractvalue %dx.types.ResRet.f32 %487, 3
  %492 = fadd fast float %488, %482
  %493 = fadd fast float %489, %482
  %494 = fadd fast float %490, %482
  %495 = fadd fast float %491, %482
  %496 = call float @dx.op.unary.f32(i32 22, float %492)  ; Frc(value)
  %497 = call float @dx.op.unary.f32(i32 22, float %493)  ; Frc(value)
  %498 = call float @dx.op.unary.f32(i32 22, float %494)  ; Frc(value)
  %499 = call float @dx.op.unary.f32(i32 22, float %495)  ; Frc(value)
  %500 = fadd fast float %403, %48
  %501 = fadd fast float %404, %49
  %502 = fmul fast float %500, %401
  %503 = fmul fast float %501, %402
  %504 = frem fast float %502, 2.560000e+02
  %505 = frem fast float %503, 2.560000e+02
  %506 = fptoui float %504 to i32
  %507 = fptoui float %505 to i32
  %508 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %506, i32 %507, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %509 = extractvalue %dx.types.ResRet.f32 %508, 0
  %510 = extractvalue %dx.types.ResRet.f32 %508, 1
  %511 = extractvalue %dx.types.ResRet.f32 %508, 2
  %512 = extractvalue %dx.types.ResRet.f32 %508, 3
  %513 = fadd fast float %509, %482
  %514 = fadd fast float %510, %482
  %515 = fadd fast float %511, %482
  %516 = fadd fast float %512, %482
  %517 = call float @dx.op.unary.f32(i32 22, float %513)  ; Frc(value)
  %518 = call float @dx.op.unary.f32(i32 22, float %514)  ; Frc(value)
  %519 = call float @dx.op.unary.f32(i32 22, float %515)  ; Frc(value)
  %520 = call float @dx.op.unary.f32(i32 22, float %516)  ; Frc(value)
  %521 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 0
  store float %382, float* %521, align 4
  %522 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 1
  store float %378, float* %522, align 4
  %523 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 2
  store float %370, float* %523, align 4
  %524 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 3
  store float %374, float* %524, align 4
  %525 = getelementptr [4 x float], [4 x float]* %29, i32 0, i32 %428
  %526 = load float, float* %525, align 4, !tbaa !31, !noalias !44
  %527 = and i32 %428, 1
  %528 = uitofp i32 %527 to float
  %529 = fadd fast float %528, 5.000000e-01
  %530 = lshr i32 %428, 1
  %531 = uitofp i32 %530 to float
  %532 = fadd fast float %531, 5.000000e-01
  %533 = fmul fast float %529, %403
  %534 = fmul fast float %532, %404
  %535 = fadd fast float %533, %48
  %536 = fadd fast float %534, %49
  %537 = fcmp fast olt float %526, 6.550000e+04
  br i1 %537, label %538, label %922, !dx.controlflow.hints !48

; <label>:538                                     ; preds = %473
  %539 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 0
  store i32 %386, i32* %539, align 4
  %540 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 1
  store i32 %389, i32* %540, align 4
  %541 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 2
  store i32 %392, i32* %541, align 4
  %542 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 3
  store i32 %394, i32* %542, align 4
  %543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 99)  ; CBufferLoadLegacy(handle,regIndex)
  %544 = extractvalue %dx.types.CBufRet.f32 %543, 0
  %545 = extractvalue %dx.types.CBufRet.f32 %543, 1
  %546 = extractvalue %dx.types.CBufRet.f32 %543, 2
  %547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 100)  ; CBufferLoadLegacy(handle,regIndex)
  %548 = extractvalue %dx.types.CBufRet.f32 %547, 0
  %549 = extractvalue %dx.types.CBufRet.f32 %547, 1
  %550 = extractvalue %dx.types.CBufRet.f32 %547, 2
  %551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 101)  ; CBufferLoadLegacy(handle,regIndex)
  %552 = extractvalue %dx.types.CBufRet.f32 %551, 0
  %553 = extractvalue %dx.types.CBufRet.f32 %551, 1
  %554 = extractvalue %dx.types.CBufRet.f32 %551, 2
  %555 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %428
  %556 = load i32, i32* %555, align 4, !tbaa !42, !noalias !44
  %557 = lshr i32 %556, 8
  %558 = and i32 %556, 255
  %559 = and i32 %557, 255
  %560 = uitofp i32 %558 to float
  %561 = uitofp i32 %559 to float
  %562 = fmul fast float %560, 0x3F80101020000000
  %563 = fmul fast float %561, 0x3F80101020000000
  %564 = fadd fast float %562, -1.000000e+00
  %565 = fadd fast float %563, -1.000000e+00
  %566 = call float @dx.op.unary.f32(i32 6, float %564)  ; FAbs(value)
  %567 = fsub fast float 1.000000e+00, %566
  %568 = call float @dx.op.unary.f32(i32 6, float %565)  ; FAbs(value)
  %569 = fsub fast float %567, %568
  %570 = fsub fast float -0.000000e+00, %569
  %571 = call float @dx.op.binary.f32(i32 35, float %570, float 0.000000e+00)  ; FMax(a,b)
  %572 = fcmp fast ogt float %564, 0.000000e+00
  %573 = fsub fast float -0.000000e+00, %571
  %574 = select i1 %572, float %573, float %571
  %575 = fadd fast float %574, %564
  %576 = fcmp fast ogt float %565, 0.000000e+00
  %577 = select i1 %576, float %573, float %571
  %578 = fadd fast float %577, %565
  %579 = call float @dx.op.dot3.f32(i32 55, float %575, float %578, float %569, float %575, float %578, float %569)  ; Dot3(ax,ay,az,bx,by,bz)
  %580 = call float @dx.op.unary.f32(i32 25, float %579)  ; Rsqrt(value)
  %581 = fmul fast float %575, %580
  %582 = fmul fast float %578, %580
  %583 = fmul fast float %580, %569
  %584 = fmul fast float %581, %544
  %585 = call float @dx.op.tertiary.f32(i32 46, float %582, float %545, float %584)  ; FMad(a,b,c)
  %586 = call float @dx.op.tertiary.f32(i32 46, float %583, float %546, float %585)  ; FMad(a,b,c)
  %587 = fmul fast float %581, %548
  %588 = call float @dx.op.tertiary.f32(i32 46, float %582, float %549, float %587)  ; FMad(a,b,c)
  %589 = call float @dx.op.tertiary.f32(i32 46, float %583, float %550, float %588)  ; FMad(a,b,c)
  %590 = fmul fast float %581, %552
  %591 = call float @dx.op.tertiary.f32(i32 46, float %582, float %553, float %590)  ; FMad(a,b,c)
  %592 = call float @dx.op.tertiary.f32(i32 46, float %583, float %554, float %591)  ; FMad(a,b,c)
  %593 = call float @dx.op.unary.f32(i32 6, float %526)  ; FAbs(value)
  %594 = fmul fast float %403, %35
  %595 = fmul fast float %404, %36
  %596 = fmul fast float %593, %398
  %597 = fmul fast float %399, %593
  %598 = fsub fast float -0.000000e+00, %597
  %599 = fdiv fast float 5.000000e+01, %596
  %600 = fdiv fast float 5.000000e+01, %598
  %601 = call float @dx.op.binary.f32(i32 36, float %594, float %599)  ; FMin(a,b)
  %602 = call float @dx.op.binary.f32(i32 36, float %595, float %600)  ; FMin(a,b)
  %603 = fmul fast float %535, %396
  %604 = fmul fast float %536, %397
  %605 = fsub fast float %603, %398
  %606 = fsub fast float %604, %399
  %607 = fmul fast float %593, %605
  %608 = fmul fast float %593, %606
  %609 = fsub fast float -0.000000e+00, %607
  %610 = fsub fast float -0.000000e+00, %608
  %611 = fsub fast float -0.000000e+00, %593
  %612 = call float @dx.op.dot3.f32(i32 55, float %609, float %610, float %611, float %609, float %610, float %611)  ; Dot3(ax,ay,az,bx,by,bz)
  %613 = call float @dx.op.unary.f32(i32 25, float %612)  ; Rsqrt(value)
  %614 = fmul fast float %613, %609
  %615 = fmul fast float %613, %610
  %616 = fmul fast float %613, %611
  %617 = fmul fast float %593, 0x3FEFEB8520000000
  %618 = fmul fast float %601, %40
  %619 = fmul fast float %602, %41
  %620 = fmul fast float %618, %618
  %621 = fmul fast float %619, %619
  %622 = fadd fast float %621, %620
  %623 = call float @dx.op.unary.f32(i32 24, float %622)  ; Sqrt(value)
  %624 = fmul fast float %623, 3.125000e-02
  br label %625

; <label>:625                                     ; preds = %811, %538
  %626 = phi float [ %913, %811 ], [ 0.000000e+00, %538 ]
  %627 = phi float [ %917, %811 ], [ 0.000000e+00, %538 ]
  %628 = phi i32 [ %918, %811 ], [ 0, %538 ]
  %629 = sitofp i32 %628 to float
  %630 = fadd fast float %629, %496
  %631 = fmul fast float %630, 0x3FC921FB60000000
  %632 = call float @dx.op.unary.f32(i32 12, float %631)  ; Cos(value)
  %633 = call float @dx.op.unary.f32(i32 13, float %631)  ; Sin(value)
  %634 = fsub fast float -0.000000e+00, %633
  %635 = call float @dx.op.dot3.f32(i32 55, float %614, float %615, float %616, float %586, float %589, float %592)  ; Dot3(ax,ay,az,bx,by,bz)
  %636 = call float @dx.op.unary.f32(i32 6, float %635)  ; FAbs(value)
  %637 = call float @dx.op.unary.f32(i32 6, float %636)  ; FAbs(value)
  %638 = fcmp fast ogt float %637, 0x3EB0C6F7A0000000
  %639 = call float @dx.op.dot3.f32(i32 55, float %632, float %634, float 0.000000e+00, float %586, float %589, float %592)  ; Dot3(ax,ay,az,bx,by,bz)
  %640 = fsub fast float -0.000000e+00, %639
  %641 = fdiv fast float %640, %636
  %642 = select i1 %638, float %641, float 0.000000e+00
  %643 = fmul fast float %642, %642
  %644 = fadd fast float %643, 1.000000e+00
  %645 = call float @dx.op.unary.f32(i32 25, float %644)  ; Rsqrt(value)
  %646 = fmul fast float %642, %645
  br label %647

; <label>:647                                     ; preds = %647, %625
  %648 = phi float [ %725, %647 ], [ %646, %625 ]
  %649 = phi float [ %713, %647 ], [ 2.000000e+02, %625 ]
  %650 = phi i32 [ %726, %647 ], [ 0, %625 ]
  %651 = sitofp i32 %650 to float
  %652 = fadd fast float %651, %517
  %653 = fmul fast float %652, 6.250000e-02
  %654 = fmul fast float %653, %653
  %655 = fmul fast float %654, %624
  %656 = call float @dx.op.binary.f32(i32 36, float %655, float 3.000000e+00)  ; FMin(a,b)
  %657 = fadd fast float %656, 1.000000e+00
  %658 = fmul fast float %654, %601
  %659 = fmul fast float %654, %602
  %660 = fadd fast float %658, %44
  %661 = fmul fast float %660, %632
  %662 = fadd fast float %661, %535
  %663 = fadd fast float %659, %45
  %664 = fmul fast float %663, %633
  %665 = fadd fast float %664, %536
  %666 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %13, float %662, float %665, float undef, float undef, i32 0, i32 0, i32 undef, float %657)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %667 = extractvalue %dx.types.ResRet.f32 %666, 0
  %668 = fcmp fast ogt float %667, -1.000000e+00
  %669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %670 = extractvalue %dx.types.CBufRet.f32 %669, 1
  %671 = select i1 %668, float %670, float 1.000000e+00
  %672 = fadd fast float %667, 1.000000e+00
  %673 = fmul fast float %671, %672
  %674 = call float @dx.op.unary.f32(i32 6, float %673)  ; FAbs(value)
  %675 = fmul fast float %662, %396
  %676 = fmul fast float %665, %397
  %677 = fsub fast float %675, %398
  %678 = fsub fast float %676, %399
  %679 = fmul fast float %677, %674
  %680 = fmul fast float %678, %674
  %681 = fsub fast float %679, %607
  %682 = fsub fast float %680, %608
  %683 = fsub fast float %674, %617
  %684 = call float @dx.op.dot3.f32(i32 55, float %681, float %682, float %683, float %681, float %682, float %683)  ; Dot3(ax,ay,az,bx,by,bz)
  %685 = call float @dx.op.dot3.f32(i32 55, float %681, float %682, float %683, float %586, float %589, float %592)  ; Dot3(ax,ay,az,bx,by,bz)
  %686 = fsub fast float -0.000000e+00, %685
  %687 = call float @dx.op.dot3.f32(i32 55, float %681, float %682, float %683, float %614, float %615, float %616)  ; Dot3(ax,ay,az,bx,by,bz)
  %688 = call float @dx.op.unary.f32(i32 25, float %684)  ; Rsqrt(value)
  %689 = fmul fast float %688, %687
  %690 = bitcast float %684 to i32
  %691 = ashr i32 %690, 1
  %692 = add nsw i32 %691, 532487669
  %693 = bitcast i32 %692 to float
  %694 = fmul fast float %693, 0x3F947AE140000000
  %695 = fsub fast float 2.000000e+00, %694
  %696 = call float @dx.op.unary.f32(i32 7, float %695)  ; Saturate(value)
  %697 = fmul fast float %693, 0x3F7B4E81C0000000
  %698 = fsub fast float 0x3FF5555560000000, %697
  %699 = call float @dx.op.unary.f32(i32 7, float %698)  ; Saturate(value)
  %700 = fmul fast float %674, 0x3F947AE140000000
  %701 = fadd fast float %700, -1.000000e+00
  %702 = call float @dx.op.unary.f32(i32 7, float %701)  ; Saturate(value)
  %703 = fsub fast float %699, %696
  %704 = fmul fast float %702, %703
  %705 = fadd fast float %704, %696
  %706 = fmul fast float %673, %526
  %707 = fcmp fast ogt float %706, 0.000000e+00
  %708 = select i1 %707, float %705, float 0.000000e+00
  %709 = fadd fast float %689, 1.000000e+00
  %710 = fmul fast float %708, %709
  %711 = fadd fast float %710, -1.000000e+00
  %712 = fcmp fast ogt float %711, %648
  %713 = select i1 %712, float %686, float %649
  %714 = fsub fast float %686, %713
  %715 = fmul fast float %714, 0x3FB9999940000000
  %716 = fadd fast float %715, 0xBFDFFFFF80000000
  %717 = call float @dx.op.unary.f32(i32 7, float %716)  ; Saturate(value)
  %718 = fmul fast float %685, 0x3FC99999E0000000
  %719 = fadd fast float %718, 0x3FF0000020000000
  %720 = call float @dx.op.unary.f32(i32 7, float %719)  ; Saturate(value)
  %721 = fmul fast float %717, 2.500000e-01
  %722 = fmul fast float %721, %720
  %723 = fsub fast float %648, %722
  %724 = fcmp ole float %711, %723
  %725 = select i1 %724, float %723, float %711
  %726 = add nuw nsw i32 %650, 1
  %727 = icmp eq i32 %726, 16
  br i1 %727, label %728, label %647

; <label>:728                                     ; preds = %647
  %729 = fsub fast float -0.000000e+00, %646
  br label %730

; <label>:730                                     ; preds = %730, %728
  %731 = phi float [ %808, %730 ], [ %729, %728 ]
  %732 = phi float [ %796, %730 ], [ 2.000000e+02, %728 ]
  %733 = phi i32 [ %809, %730 ], [ 0, %728 ]
  %734 = sitofp i32 %733 to float
  %735 = fadd fast float %734, %517
  %736 = fmul fast float %735, 6.250000e-02
  %737 = fmul fast float %736, %736
  %738 = fmul fast float %737, %624
  %739 = call float @dx.op.binary.f32(i32 36, float %738, float 3.000000e+00)  ; FMin(a,b)
  %740 = fadd fast float %739, 1.000000e+00
  %741 = fmul fast float %737, %601
  %742 = fmul fast float %737, %602
  %743 = fadd fast float %741, %44
  %744 = fmul fast float %632, %743
  %745 = fsub fast float %535, %744
  %746 = fadd fast float %742, %45
  %747 = fmul fast float %633, %746
  %748 = fsub fast float %536, %747
  %749 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %13, float %745, float %748, float undef, float undef, i32 0, i32 0, i32 undef, float %740)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %750 = extractvalue %dx.types.ResRet.f32 %749, 0
  %751 = fcmp fast ogt float %750, -1.000000e+00
  %752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %753 = extractvalue %dx.types.CBufRet.f32 %752, 1
  %754 = select i1 %751, float %753, float 1.000000e+00
  %755 = fadd fast float %750, 1.000000e+00
  %756 = fmul fast float %754, %755
  %757 = call float @dx.op.unary.f32(i32 6, float %756)  ; FAbs(value)
  %758 = fmul fast float %745, %396
  %759 = fmul fast float %748, %397
  %760 = fsub fast float %758, %398
  %761 = fsub fast float %759, %399
  %762 = fmul fast float %760, %757
  %763 = fmul fast float %761, %757
  %764 = fsub fast float %762, %607
  %765 = fsub fast float %763, %608
  %766 = fsub fast float %757, %617
  %767 = call float @dx.op.dot3.f32(i32 55, float %764, float %765, float %766, float %764, float %765, float %766)  ; Dot3(ax,ay,az,bx,by,bz)
  %768 = call float @dx.op.dot3.f32(i32 55, float %764, float %765, float %766, float %586, float %589, float %592)  ; Dot3(ax,ay,az,bx,by,bz)
  %769 = fsub fast float -0.000000e+00, %768
  %770 = call float @dx.op.dot3.f32(i32 55, float %764, float %765, float %766, float %614, float %615, float %616)  ; Dot3(ax,ay,az,bx,by,bz)
  %771 = call float @dx.op.unary.f32(i32 25, float %767)  ; Rsqrt(value)
  %772 = fmul fast float %771, %770
  %773 = bitcast float %767 to i32
  %774 = ashr i32 %773, 1
  %775 = add nsw i32 %774, 532487669
  %776 = bitcast i32 %775 to float
  %777 = fmul fast float %776, 0x3F947AE140000000
  %778 = fsub fast float 2.000000e+00, %777
  %779 = call float @dx.op.unary.f32(i32 7, float %778)  ; Saturate(value)
  %780 = fmul fast float %776, 0x3F7B4E81C0000000
  %781 = fsub fast float 0x3FF5555560000000, %780
  %782 = call float @dx.op.unary.f32(i32 7, float %781)  ; Saturate(value)
  %783 = fmul fast float %757, 0x3F947AE140000000
  %784 = fadd fast float %783, -1.000000e+00
  %785 = call float @dx.op.unary.f32(i32 7, float %784)  ; Saturate(value)
  %786 = fsub fast float %782, %779
  %787 = fmul fast float %785, %786
  %788 = fadd fast float %787, %779
  %789 = fmul fast float %756, %526
  %790 = fcmp fast ogt float %789, 0.000000e+00
  %791 = select i1 %790, float %788, float 0.000000e+00
  %792 = fadd fast float %772, 1.000000e+00
  %793 = fmul fast float %791, %792
  %794 = fadd fast float %793, -1.000000e+00
  %795 = fcmp fast ogt float %794, %731
  %796 = select i1 %795, float %769, float %732
  %797 = fsub fast float %769, %796
  %798 = fmul fast float %797, 0x3FB9999940000000
  %799 = fadd fast float %798, 0xBFDFFFFF80000000
  %800 = call float @dx.op.unary.f32(i32 7, float %799)  ; Saturate(value)
  %801 = fmul fast float %768, 0x3FC99999E0000000
  %802 = fadd fast float %801, 0x3FF0000020000000
  %803 = call float @dx.op.unary.f32(i32 7, float %802)  ; Saturate(value)
  %804 = fmul fast float %800, 2.500000e-01
  %805 = fmul fast float %804, %803
  %806 = fsub fast float %731, %805
  %807 = fcmp ole float %794, %806
  %808 = select i1 %807, float %806, float %794
  %809 = add nuw nsw i32 %733, 1
  %810 = icmp eq i32 %809, 16
  br i1 %810, label %811, label %730

; <label>:811                                     ; preds = %730
  %812 = fmul fast float %616, %634
  %813 = fmul fast float %616, %632
  %814 = fsub fast float -0.000000e+00, %813
  %815 = fmul fast float %632, %615
  %816 = fmul fast float %614, %634
  %817 = fsub fast float %815, %816
  %818 = call float @dx.op.dot3.f32(i32 55, float %586, float %589, float %592, float %812, float %814, float %817)  ; Dot3(ax,ay,az,bx,by,bz)
  %819 = fmul fast float %818, %812
  %820 = fmul fast float %818, %814
  %821 = fmul fast float %818, %817
  %822 = fsub fast float %586, %819
  %823 = fsub fast float %589, %820
  %824 = fsub fast float %592, %821
  %825 = fmul fast float %822, %822
  %826 = fmul fast float %823, %823
  %827 = fadd fast float %825, %826
  %828 = fmul fast float %824, %824
  %829 = fadd fast float %827, %828
  %830 = call float @dx.op.unary.f32(i32 24, float %829)  ; Sqrt(value)
  %831 = call float @dx.op.dot3.f32(i32 55, float %632, float %634, float 0.000000e+00, float %822, float %823, float %824)  ; Dot3(ax,ay,az,bx,by,bz)
  %832 = call float @dx.op.dot3.f32(i32 55, float %632, float %634, float 0.000000e+00, float %614, float %615, float %616)  ; Dot3(ax,ay,az,bx,by,bz)
  %833 = fmul fast float %832, %614
  %834 = fmul fast float %832, %615
  %835 = fmul fast float %832, %616
  %836 = call float @dx.op.dot3.f32(i32 55, float %833, float %834, float %835, float %822, float %823, float %824)  ; Dot3(ax,ay,az,bx,by,bz)
  %837 = fcmp fast oge float %831, %836
  %838 = fdiv fast float 1.000000e+00, %830
  %839 = call float @dx.op.dot3.f32(i32 55, float %822, float %823, float %824, float %614, float %615, float %616)  ; Dot3(ax,ay,az,bx,by,bz)
  %840 = fmul fast float %839, %838
  %841 = call float @dx.op.unary.f32(i32 7, float %840)  ; Saturate(value)
  %842 = fmul fast float %841, %841
  %843 = fsub fast float 1.000000e+00, %842
  %844 = bitcast float %843 to i32
  %845 = ashr i32 %844, 1
  %846 = add nsw i32 %845, 532487669
  %847 = bitcast i32 %846 to float
  %848 = call float @dx.op.unary.f32(i32 6, float %841)  ; FAbs(value)
  %849 = fmul fast float %848, 0x3FC40AE960000000
  %850 = fsub fast float 0x3FF921FB60000000, %849
  %851 = fsub fast float 1.000000e+00, %848
  %852 = bitcast float %851 to i32
  %853 = ashr i32 %852, 1
  %854 = add nsw i32 %853, 532487669
  %855 = bitcast i32 %854 to float
  %856 = fmul fast float %855, %850
  %857 = fcmp fast oge float %841, 0.000000e+00
  %858 = fsub fast float 0x400921FB60000000, %856
  %859 = select i1 %857, float %856, float %858
  %860 = fsub fast float -0.000000e+00, %847
  %861 = select i1 %837, float %860, float %847
  %862 = fsub fast float -0.000000e+00, %859
  %863 = select i1 %837, float %862, float %859
  %864 = call float @dx.op.unary.f32(i32 6, float %725)  ; FAbs(value)
  %865 = fmul fast float %864, 0x3FC40AE960000000
  %866 = fsub fast float 0x3FF921FB60000000, %865
  %867 = fsub fast float 1.000000e+00, %864
  %868 = bitcast float %867 to i32
  %869 = ashr i32 %868, 1
  %870 = add nsw i32 %869, 532487669
  %871 = bitcast i32 %870 to float
  %872 = fmul fast float %871, %866
  %873 = fcmp fast oge float %725, 0.000000e+00
  %874 = fsub fast float 0x400921FB60000000, %872
  %875 = select i1 %873, float %872, float %874
  %876 = call float @dx.op.unary.f32(i32 6, float %808)  ; FAbs(value)
  %877 = fmul fast float %876, 0x3FC40AE960000000
  %878 = fsub fast float 0x3FF921FB60000000, %877
  %879 = fsub fast float 1.000000e+00, %876
  %880 = bitcast float %879 to i32
  %881 = ashr i32 %880, 1
  %882 = add nsw i32 %881, 532487669
  %883 = bitcast i32 %882 to float
  %884 = fmul fast float %883, %878
  %885 = fcmp fast oge float %808, 0.000000e+00
  %886 = fsub fast float 0x400921FB60000000, %884
  %887 = select i1 %885, float %884, float %886
  %888 = fsub fast float -0.000000e+00, %863
  %889 = fsub fast float %888, %875
  %890 = call float @dx.op.binary.f32(i32 35, float %889, float 0xBFF921FB60000000)  ; FMax(a,b)
  %891 = call float @dx.op.binary.f32(i32 36, float %890, float 0x3FF921FB60000000)  ; FMin(a,b)
  %892 = fadd fast float %863, %891
  %893 = fsub fast float %887, %863
  %894 = call float @dx.op.binary.f32(i32 35, float %893, float 0xBFF921FB60000000)  ; FMax(a,b)
  %895 = call float @dx.op.binary.f32(i32 36, float %894, float 0x3FF921FB60000000)  ; FMin(a,b)
  %896 = fadd fast float %863, %895
  %897 = fmul fast float %892, 2.000000e+00
  %898 = fsub fast float %897, %863
  %899 = call float @dx.op.unary.f32(i32 12, float %898)  ; Cos(value)
  %900 = fsub fast float -0.000000e+00, %899
  %901 = fmul fast float %896, 2.000000e+00
  %902 = fsub fast float %901, %863
  %903 = call float @dx.op.unary.f32(i32 12, float %902)  ; Cos(value)
  %904 = fmul fast float %841, 2.000000e+00
  %905 = fadd fast float %896, %892
  %906 = fmul fast float %861, %905
  %907 = fmul fast float %906, 2.000000e+00
  %908 = fsub fast float %900, %903
  %909 = fadd fast float %908, %904
  %910 = fadd fast float %909, %907
  %911 = fmul fast float %830, 2.500000e-01
  %912 = fmul fast float %911, %910
  %913 = fadd fast float %912, %626
  %914 = fmul fast float %863, %861
  %915 = fadd fast float %914, %841
  %916 = fmul fast float %915, %830
  %917 = fadd fast float %916, %627
  %918 = add nuw nsw i32 %628, 1
  %919 = icmp eq i32 %918, 16
  br i1 %919, label %920, label %625

; <label>:920                                     ; preds = %811
  %921 = fdiv fast float %913, %917
  br label %922

; <label>:922                                     ; preds = %920, %473
  %923 = phi float [ %921, %920 ], [ 1.000000e+00, %473 ]
  %924 = fmul fast float %923, %923
  store float %923, float addrspace(3)* %195, align 4
  store float %924, float addrspace(3)* %198, align 4
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %925 = load float, float addrspace(3)* %203, align 4
  %926 = load float, float addrspace(3)* %207, align 4
  %927 = fadd fast float %925, %923
  %928 = fadd fast float %926, %924
  %929 = load float, float addrspace(3)* %214, align 4
  %930 = load float, float addrspace(3)* %218, align 4
  %931 = fadd fast float %927, %929
  %932 = fadd fast float %928, %930
  %933 = load float, float addrspace(3)* %225, align 4
  %934 = load float, float addrspace(3)* %229, align 4
  %935 = fadd fast float %931, %933
  %936 = fadd fast float %932, %934
  store float %935, float addrspace(3)* %195, align 4
  store float %936, float addrspace(3)* %198, align 4
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %937 = load float, float addrspace(3)* %236, align 4
  %938 = mul i32 %233, 2
  %939 = add i32 1, %938
  %940 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %939
  %941 = load float, float addrspace(3)* %940, align 4
  %942 = fadd fast float %937, %935
  %943 = fadd fast float %941, %936
  %944 = load float, float addrspace(3)* %242, align 4
  %945 = mul i32 %239, 2
  %946 = add i32 1, %945
  %947 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %946
  %948 = load float, float addrspace(3)* %947, align 4
  %949 = fadd fast float %942, %944
  %950 = fadd fast float %943, %948
  %951 = load float, float addrspace(3)* %248, align 4
  %952 = mul i32 %245, 2
  %953 = add i32 1, %952
  %954 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %953
  %955 = load float, float addrspace(3)* %954, align 4
  %956 = fadd fast float %949, %951
  %957 = fadd fast float %950, %955
  %958 = fmul fast float %956, 6.250000e-02
  %959 = fmul fast float %957, 6.250000e-02
  %960 = fmul fast float %958, %958
  %961 = fsub fast float %959, %960
  %962 = call float @dx.op.binary.f32(i32 35, float %958, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %963 = fdiv fast float %961, %962
  %964 = fmul fast float %963, 6.553500e+04
  %965 = fptoui float %964 to i32
  br i1 %471, label %966, label %967, !dx.controlflow.hints !41

; <label>:966                                     ; preds = %922
  store i32 0, i32 addrspace(3)* @"\01?gtaoQuadMaxUint@@3IA", align 4, !tbaa !42, !noalias !40
  br label %967

; <label>:967                                     ; preds = %966, %922
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %968 = atomicrmw umax i32 addrspace(3)* @"\01?gtaoQuadMaxUint@@3IA", i32 %965 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %969 = load i32, i32 addrspace(3)* @"\01?gtaoQuadMaxUint@@3IA", align 4, !tbaa !42, !noalias !40
  %970 = uitofp i32 %969 to float
  %971 = fmul fast float %970, 0x3EF0001000000000
  %972 = fcmp fast ogt float %971, 0x3FA1EB8520000000
  %973 = select i1 %972, i32 2, i32 1
  %974 = fcmp fast ogt float %971, 0x3FD3333340000000
  %975 = zext i1 %974 to i32
  %976 = add nuw nsw i32 %973, %975
  %977 = fcmp fast ogt float %971, 0x3FE99999A0000000
  %978 = zext i1 %977 to i32
  %979 = add nuw nsw i32 %976, %978
  %980 = call i32 @dx.op.binary.i32(i32 39, i32 %979, i32 %477)  ; UMax(a,b)
  %981 = icmp ugt i32 %980, 1
  br i1 %981, label %982, label %1384, !dx.controlflow.hints !49

; <label>:982                                     ; preds = %967
  %983 = getelementptr inbounds [4 x float], [4 x float]* %27, i32 0, i32 0
  store float %382, float* %983, align 4
  %984 = getelementptr inbounds [4 x float], [4 x float]* %27, i32 0, i32 1
  store float %378, float* %984, align 4
  %985 = getelementptr inbounds [4 x float], [4 x float]* %27, i32 0, i32 2
  store float %370, float* %985, align 4
  %986 = getelementptr inbounds [4 x float], [4 x float]* %27, i32 0, i32 3
  store float %374, float* %986, align 4
  %987 = getelementptr [4 x float], [4 x float]* %27, i32 0, i32 %435
  %988 = load float, float* %987, align 4, !tbaa !31, !noalias !50
  %989 = and i32 %435, 1
  %990 = uitofp i32 %989 to float
  %991 = fadd fast float %990, 5.000000e-01
  %992 = lshr i32 %435, 1
  %993 = uitofp i32 %992 to float
  %994 = fadd fast float %993, 5.000000e-01
  %995 = fmul fast float %991, %403
  %996 = fmul fast float %994, %404
  %997 = fadd fast float %995, %48
  %998 = fadd fast float %996, %49
  %999 = fcmp fast olt float %988, 6.550000e+04
  br i1 %999, label %1000, label %1384, !dx.controlflow.hints !48

; <label>:1000                                    ; preds = %982
  %1001 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 0
  store i32 %386, i32* %1001, align 4
  %1002 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 1
  store i32 %389, i32* %1002, align 4
  %1003 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 2
  store i32 %392, i32* %1003, align 4
  %1004 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 3
  store i32 %394, i32* %1004, align 4
  %1005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 99)  ; CBufferLoadLegacy(handle,regIndex)
  %1006 = extractvalue %dx.types.CBufRet.f32 %1005, 0
  %1007 = extractvalue %dx.types.CBufRet.f32 %1005, 1
  %1008 = extractvalue %dx.types.CBufRet.f32 %1005, 2
  %1009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 100)  ; CBufferLoadLegacy(handle,regIndex)
  %1010 = extractvalue %dx.types.CBufRet.f32 %1009, 0
  %1011 = extractvalue %dx.types.CBufRet.f32 %1009, 1
  %1012 = extractvalue %dx.types.CBufRet.f32 %1009, 2
  %1013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 101)  ; CBufferLoadLegacy(handle,regIndex)
  %1014 = extractvalue %dx.types.CBufRet.f32 %1013, 0
  %1015 = extractvalue %dx.types.CBufRet.f32 %1013, 1
  %1016 = extractvalue %dx.types.CBufRet.f32 %1013, 2
  %1017 = getelementptr [4 x i32], [4 x i32]* %26, i32 0, i32 %435
  %1018 = load i32, i32* %1017, align 4, !tbaa !42, !noalias !50
  %1019 = lshr i32 %1018, 8
  %1020 = and i32 %1018, 255
  %1021 = and i32 %1019, 255
  %1022 = uitofp i32 %1020 to float
  %1023 = uitofp i32 %1021 to float
  %1024 = fmul fast float %1022, 0x3F80101020000000
  %1025 = fmul fast float %1023, 0x3F80101020000000
  %1026 = fadd fast float %1024, -1.000000e+00
  %1027 = fadd fast float %1025, -1.000000e+00
  %1028 = call float @dx.op.unary.f32(i32 6, float %1026)  ; FAbs(value)
  %1029 = fsub fast float 1.000000e+00, %1028
  %1030 = call float @dx.op.unary.f32(i32 6, float %1027)  ; FAbs(value)
  %1031 = fsub fast float %1029, %1030
  %1032 = fsub fast float -0.000000e+00, %1031
  %1033 = call float @dx.op.binary.f32(i32 35, float %1032, float 0.000000e+00)  ; FMax(a,b)
  %1034 = fcmp fast ogt float %1026, 0.000000e+00
  %1035 = fsub fast float -0.000000e+00, %1033
  %1036 = select i1 %1034, float %1035, float %1033
  %1037 = fadd fast float %1036, %1026
  %1038 = fcmp fast ogt float %1027, 0.000000e+00
  %1039 = select i1 %1038, float %1035, float %1033
  %1040 = fadd fast float %1039, %1027
  %1041 = call float @dx.op.dot3.f32(i32 55, float %1037, float %1040, float %1031, float %1037, float %1040, float %1031)  ; Dot3(ax,ay,az,bx,by,bz)
  %1042 = call float @dx.op.unary.f32(i32 25, float %1041)  ; Rsqrt(value)
  %1043 = fmul fast float %1037, %1042
  %1044 = fmul fast float %1040, %1042
  %1045 = fmul fast float %1042, %1031
  %1046 = fmul fast float %1043, %1006
  %1047 = call float @dx.op.tertiary.f32(i32 46, float %1044, float %1007, float %1046)  ; FMad(a,b,c)
  %1048 = call float @dx.op.tertiary.f32(i32 46, float %1045, float %1008, float %1047)  ; FMad(a,b,c)
  %1049 = fmul fast float %1043, %1010
  %1050 = call float @dx.op.tertiary.f32(i32 46, float %1044, float %1011, float %1049)  ; FMad(a,b,c)
  %1051 = call float @dx.op.tertiary.f32(i32 46, float %1045, float %1012, float %1050)  ; FMad(a,b,c)
  %1052 = fmul fast float %1043, %1014
  %1053 = call float @dx.op.tertiary.f32(i32 46, float %1044, float %1015, float %1052)  ; FMad(a,b,c)
  %1054 = call float @dx.op.tertiary.f32(i32 46, float %1045, float %1016, float %1053)  ; FMad(a,b,c)
  %1055 = call float @dx.op.unary.f32(i32 6, float %988)  ; FAbs(value)
  %1056 = fmul fast float %403, %35
  %1057 = fmul fast float %404, %36
  %1058 = fmul fast float %1055, %398
  %1059 = fmul fast float %399, %1055
  %1060 = fsub fast float -0.000000e+00, %1059
  %1061 = fdiv fast float 5.000000e+01, %1058
  %1062 = fdiv fast float 5.000000e+01, %1060
  %1063 = call float @dx.op.binary.f32(i32 36, float %1056, float %1061)  ; FMin(a,b)
  %1064 = call float @dx.op.binary.f32(i32 36, float %1057, float %1062)  ; FMin(a,b)
  %1065 = fmul fast float %997, %396
  %1066 = fmul fast float %998, %397
  %1067 = fsub fast float %1065, %398
  %1068 = fsub fast float %1066, %399
  %1069 = fmul fast float %1055, %1067
  %1070 = fmul fast float %1055, %1068
  %1071 = fsub fast float -0.000000e+00, %1069
  %1072 = fsub fast float -0.000000e+00, %1070
  %1073 = fsub fast float -0.000000e+00, %1055
  %1074 = call float @dx.op.dot3.f32(i32 55, float %1071, float %1072, float %1073, float %1071, float %1072, float %1073)  ; Dot3(ax,ay,az,bx,by,bz)
  %1075 = call float @dx.op.unary.f32(i32 25, float %1074)  ; Rsqrt(value)
  %1076 = fmul fast float %1075, %1071
  %1077 = fmul fast float %1075, %1072
  %1078 = fmul fast float %1075, %1073
  %1079 = fmul fast float %1055, 0x3FEFEB8520000000
  %1080 = fmul fast float %1063, %40
  %1081 = fmul fast float %1064, %41
  %1082 = fmul fast float %1080, %1080
  %1083 = fmul fast float %1081, %1081
  %1084 = fadd fast float %1083, %1082
  %1085 = call float @dx.op.unary.f32(i32 24, float %1084)  ; Sqrt(value)
  %1086 = fmul fast float %1085, 3.125000e-02
  br label %1087

; <label>:1087                                    ; preds = %1273, %1000
  %1088 = phi float [ %1379, %1273 ], [ 0.000000e+00, %1000 ]
  %1089 = phi i32 [ %1380, %1273 ], [ 0, %1000 ]
  %1090 = phi float [ %1375, %1273 ], [ 0.000000e+00, %1000 ]
  %1091 = sitofp i32 %1089 to float
  %1092 = fadd fast float %1091, %497
  %1093 = fmul fast float %1092, 0x3FC921FB60000000
  %1094 = call float @dx.op.unary.f32(i32 12, float %1093)  ; Cos(value)
  %1095 = call float @dx.op.unary.f32(i32 13, float %1093)  ; Sin(value)
  %1096 = fsub fast float -0.000000e+00, %1095
  %1097 = call float @dx.op.dot3.f32(i32 55, float %1076, float %1077, float %1078, float %1048, float %1051, float %1054)  ; Dot3(ax,ay,az,bx,by,bz)
  %1098 = call float @dx.op.unary.f32(i32 6, float %1097)  ; FAbs(value)
  %1099 = call float @dx.op.unary.f32(i32 6, float %1098)  ; FAbs(value)
  %1100 = fcmp fast ogt float %1099, 0x3EB0C6F7A0000000
  %1101 = call float @dx.op.dot3.f32(i32 55, float %1094, float %1096, float 0.000000e+00, float %1048, float %1051, float %1054)  ; Dot3(ax,ay,az,bx,by,bz)
  %1102 = fsub fast float -0.000000e+00, %1101
  %1103 = fdiv fast float %1102, %1098
  %1104 = select i1 %1100, float %1103, float 0.000000e+00
  %1105 = fmul fast float %1104, %1104
  %1106 = fadd fast float %1105, 1.000000e+00
  %1107 = call float @dx.op.unary.f32(i32 25, float %1106)  ; Rsqrt(value)
  %1108 = fmul fast float %1104, %1107
  br label %1109

; <label>:1109                                    ; preds = %1109, %1087
  %1110 = phi float [ %1187, %1109 ], [ %1108, %1087 ]
  %1111 = phi float [ %1175, %1109 ], [ 2.000000e+02, %1087 ]
  %1112 = phi i32 [ %1188, %1109 ], [ 0, %1087 ]
  %1113 = sitofp i32 %1112 to float
  %1114 = fadd fast float %1113, %518
  %1115 = fmul fast float %1114, 6.250000e-02
  %1116 = fmul fast float %1115, %1115
  %1117 = fmul fast float %1116, %1086
  %1118 = call float @dx.op.binary.f32(i32 36, float %1117, float 3.000000e+00)  ; FMin(a,b)
  %1119 = fadd fast float %1118, 1.000000e+00
  %1120 = fmul fast float %1116, %1063
  %1121 = fmul fast float %1116, %1064
  %1122 = fadd fast float %1120, %44
  %1123 = fmul fast float %1122, %1094
  %1124 = fadd fast float %1123, %997
  %1125 = fadd fast float %1121, %45
  %1126 = fmul fast float %1125, %1095
  %1127 = fadd fast float %1126, %998
  %1128 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %13, float %1124, float %1127, float undef, float undef, i32 0, i32 0, i32 undef, float %1119)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1129 = extractvalue %dx.types.ResRet.f32 %1128, 0
  %1130 = fcmp fast ogt float %1129, -1.000000e+00
  %1131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1132 = extractvalue %dx.types.CBufRet.f32 %1131, 1
  %1133 = select i1 %1130, float %1132, float 1.000000e+00
  %1134 = fadd fast float %1129, 1.000000e+00
  %1135 = fmul fast float %1133, %1134
  %1136 = call float @dx.op.unary.f32(i32 6, float %1135)  ; FAbs(value)
  %1137 = fmul fast float %1124, %396
  %1138 = fmul fast float %1127, %397
  %1139 = fsub fast float %1137, %398
  %1140 = fsub fast float %1138, %399
  %1141 = fmul fast float %1139, %1136
  %1142 = fmul fast float %1140, %1136
  %1143 = fsub fast float %1141, %1069
  %1144 = fsub fast float %1142, %1070
  %1145 = fsub fast float %1136, %1079
  %1146 = call float @dx.op.dot3.f32(i32 55, float %1143, float %1144, float %1145, float %1143, float %1144, float %1145)  ; Dot3(ax,ay,az,bx,by,bz)
  %1147 = call float @dx.op.dot3.f32(i32 55, float %1143, float %1144, float %1145, float %1048, float %1051, float %1054)  ; Dot3(ax,ay,az,bx,by,bz)
  %1148 = fsub fast float -0.000000e+00, %1147
  %1149 = call float @dx.op.dot3.f32(i32 55, float %1143, float %1144, float %1145, float %1076, float %1077, float %1078)  ; Dot3(ax,ay,az,bx,by,bz)
  %1150 = call float @dx.op.unary.f32(i32 25, float %1146)  ; Rsqrt(value)
  %1151 = fmul fast float %1150, %1149
  %1152 = bitcast float %1146 to i32
  %1153 = ashr i32 %1152, 1
  %1154 = add nsw i32 %1153, 532487669
  %1155 = bitcast i32 %1154 to float
  %1156 = fmul fast float %1155, 0x3F947AE140000000
  %1157 = fsub fast float 2.000000e+00, %1156
  %1158 = call float @dx.op.unary.f32(i32 7, float %1157)  ; Saturate(value)
  %1159 = fmul fast float %1155, 0x3F7B4E81C0000000
  %1160 = fsub fast float 0x3FF5555560000000, %1159
  %1161 = call float @dx.op.unary.f32(i32 7, float %1160)  ; Saturate(value)
  %1162 = fmul fast float %1136, 0x3F947AE140000000
  %1163 = fadd fast float %1162, -1.000000e+00
  %1164 = call float @dx.op.unary.f32(i32 7, float %1163)  ; Saturate(value)
  %1165 = fsub fast float %1161, %1158
  %1166 = fmul fast float %1164, %1165
  %1167 = fadd fast float %1166, %1158
  %1168 = fmul fast float %1135, %988
  %1169 = fcmp fast ogt float %1168, 0.000000e+00
  %1170 = select i1 %1169, float %1167, float 0.000000e+00
  %1171 = fadd fast float %1151, 1.000000e+00
  %1172 = fmul fast float %1170, %1171
  %1173 = fadd fast float %1172, -1.000000e+00
  %1174 = fcmp fast ogt float %1173, %1110
  %1175 = select i1 %1174, float %1148, float %1111
  %1176 = fsub fast float %1148, %1175
  %1177 = fmul fast float %1176, 0x3FB9999940000000
  %1178 = fadd fast float %1177, 0xBFDFFFFF80000000
  %1179 = call float @dx.op.unary.f32(i32 7, float %1178)  ; Saturate(value)
  %1180 = fmul fast float %1147, 0x3FC99999E0000000
  %1181 = fadd fast float %1180, 0x3FF0000020000000
  %1182 = call float @dx.op.unary.f32(i32 7, float %1181)  ; Saturate(value)
  %1183 = fmul fast float %1179, 2.500000e-01
  %1184 = fmul fast float %1183, %1182
  %1185 = fsub fast float %1110, %1184
  %1186 = fcmp ole float %1173, %1185
  %1187 = select i1 %1186, float %1185, float %1173
  %1188 = add nuw nsw i32 %1112, 1
  %1189 = icmp eq i32 %1188, 16
  br i1 %1189, label %1190, label %1109

; <label>:1190                                    ; preds = %1109
  %1191 = fsub fast float -0.000000e+00, %1108
  br label %1192

; <label>:1192                                    ; preds = %1192, %1190
  %1193 = phi float [ %1270, %1192 ], [ %1191, %1190 ]
  %1194 = phi float [ %1258, %1192 ], [ 2.000000e+02, %1190 ]
  %1195 = phi i32 [ %1271, %1192 ], [ 0, %1190 ]
  %1196 = sitofp i32 %1195 to float
  %1197 = fadd fast float %1196, %518
  %1198 = fmul fast float %1197, 6.250000e-02
  %1199 = fmul fast float %1198, %1198
  %1200 = fmul fast float %1199, %1086
  %1201 = call float @dx.op.binary.f32(i32 36, float %1200, float 3.000000e+00)  ; FMin(a,b)
  %1202 = fadd fast float %1201, 1.000000e+00
  %1203 = fmul fast float %1199, %1063
  %1204 = fmul fast float %1199, %1064
  %1205 = fadd fast float %1203, %44
  %1206 = fmul fast float %1094, %1205
  %1207 = fsub fast float %997, %1206
  %1208 = fadd fast float %1204, %45
  %1209 = fmul fast float %1095, %1208
  %1210 = fsub fast float %998, %1209
  %1211 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %13, float %1207, float %1210, float undef, float undef, i32 0, i32 0, i32 undef, float %1202)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1212 = extractvalue %dx.types.ResRet.f32 %1211, 0
  %1213 = fcmp fast ogt float %1212, -1.000000e+00
  %1214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1215 = extractvalue %dx.types.CBufRet.f32 %1214, 1
  %1216 = select i1 %1213, float %1215, float 1.000000e+00
  %1217 = fadd fast float %1212, 1.000000e+00
  %1218 = fmul fast float %1216, %1217
  %1219 = call float @dx.op.unary.f32(i32 6, float %1218)  ; FAbs(value)
  %1220 = fmul fast float %1207, %396
  %1221 = fmul fast float %1210, %397
  %1222 = fsub fast float %1220, %398
  %1223 = fsub fast float %1221, %399
  %1224 = fmul fast float %1222, %1219
  %1225 = fmul fast float %1223, %1219
  %1226 = fsub fast float %1224, %1069
  %1227 = fsub fast float %1225, %1070
  %1228 = fsub fast float %1219, %1079
  %1229 = call float @dx.op.dot3.f32(i32 55, float %1226, float %1227, float %1228, float %1226, float %1227, float %1228)  ; Dot3(ax,ay,az,bx,by,bz)
  %1230 = call float @dx.op.dot3.f32(i32 55, float %1226, float %1227, float %1228, float %1048, float %1051, float %1054)  ; Dot3(ax,ay,az,bx,by,bz)
  %1231 = fsub fast float -0.000000e+00, %1230
  %1232 = call float @dx.op.dot3.f32(i32 55, float %1226, float %1227, float %1228, float %1076, float %1077, float %1078)  ; Dot3(ax,ay,az,bx,by,bz)
  %1233 = call float @dx.op.unary.f32(i32 25, float %1229)  ; Rsqrt(value)
  %1234 = fmul fast float %1233, %1232
  %1235 = bitcast float %1229 to i32
  %1236 = ashr i32 %1235, 1
  %1237 = add nsw i32 %1236, 532487669
  %1238 = bitcast i32 %1237 to float
  %1239 = fmul fast float %1238, 0x3F947AE140000000
  %1240 = fsub fast float 2.000000e+00, %1239
  %1241 = call float @dx.op.unary.f32(i32 7, float %1240)  ; Saturate(value)
  %1242 = fmul fast float %1238, 0x3F7B4E81C0000000
  %1243 = fsub fast float 0x3FF5555560000000, %1242
  %1244 = call float @dx.op.unary.f32(i32 7, float %1243)  ; Saturate(value)
  %1245 = fmul fast float %1219, 0x3F947AE140000000
  %1246 = fadd fast float %1245, -1.000000e+00
  %1247 = call float @dx.op.unary.f32(i32 7, float %1246)  ; Saturate(value)
  %1248 = fsub fast float %1244, %1241
  %1249 = fmul fast float %1247, %1248
  %1250 = fadd fast float %1249, %1241
  %1251 = fmul fast float %1218, %988
  %1252 = fcmp fast ogt float %1251, 0.000000e+00
  %1253 = select i1 %1252, float %1250, float 0.000000e+00
  %1254 = fadd fast float %1234, 1.000000e+00
  %1255 = fmul fast float %1253, %1254
  %1256 = fadd fast float %1255, -1.000000e+00
  %1257 = fcmp fast ogt float %1256, %1193
  %1258 = select i1 %1257, float %1231, float %1194
  %1259 = fsub fast float %1231, %1258
  %1260 = fmul fast float %1259, 0x3FB9999940000000
  %1261 = fadd fast float %1260, 0xBFDFFFFF80000000
  %1262 = call float @dx.op.unary.f32(i32 7, float %1261)  ; Saturate(value)
  %1263 = fmul fast float %1230, 0x3FC99999E0000000
  %1264 = fadd fast float %1263, 0x3FF0000020000000
  %1265 = call float @dx.op.unary.f32(i32 7, float %1264)  ; Saturate(value)
  %1266 = fmul fast float %1262, 2.500000e-01
  %1267 = fmul fast float %1266, %1265
  %1268 = fsub fast float %1193, %1267
  %1269 = fcmp ole float %1256, %1268
  %1270 = select i1 %1269, float %1268, float %1256
  %1271 = add nuw nsw i32 %1195, 1
  %1272 = icmp eq i32 %1271, 16
  br i1 %1272, label %1273, label %1192

; <label>:1273                                    ; preds = %1192
  %1274 = fmul fast float %1078, %1096
  %1275 = fmul fast float %1078, %1094
  %1276 = fsub fast float -0.000000e+00, %1275
  %1277 = fmul fast float %1094, %1077
  %1278 = fmul fast float %1076, %1096
  %1279 = fsub fast float %1277, %1278
  %1280 = call float @dx.op.dot3.f32(i32 55, float %1048, float %1051, float %1054, float %1274, float %1276, float %1279)  ; Dot3(ax,ay,az,bx,by,bz)
  %1281 = fmul fast float %1280, %1274
  %1282 = fmul fast float %1280, %1276
  %1283 = fmul fast float %1280, %1279
  %1284 = fsub fast float %1048, %1281
  %1285 = fsub fast float %1051, %1282
  %1286 = fsub fast float %1054, %1283
  %1287 = fmul fast float %1284, %1284
  %1288 = fmul fast float %1285, %1285
  %1289 = fadd fast float %1287, %1288
  %1290 = fmul fast float %1286, %1286
  %1291 = fadd fast float %1289, %1290
  %1292 = call float @dx.op.unary.f32(i32 24, float %1291)  ; Sqrt(value)
  %1293 = call float @dx.op.dot3.f32(i32 55, float %1094, float %1096, float 0.000000e+00, float %1284, float %1285, float %1286)  ; Dot3(ax,ay,az,bx,by,bz)
  %1294 = call float @dx.op.dot3.f32(i32 55, float %1094, float %1096, float 0.000000e+00, float %1076, float %1077, float %1078)  ; Dot3(ax,ay,az,bx,by,bz)
  %1295 = fmul fast float %1294, %1076
  %1296 = fmul fast float %1294, %1077
  %1297 = fmul fast float %1294, %1078
  %1298 = call float @dx.op.dot3.f32(i32 55, float %1295, float %1296, float %1297, float %1284, float %1285, float %1286)  ; Dot3(ax,ay,az,bx,by,bz)
  %1299 = fcmp fast oge float %1293, %1298
  %1300 = fdiv fast float 1.000000e+00, %1292
  %1301 = call float @dx.op.dot3.f32(i32 55, float %1284, float %1285, float %1286, float %1076, float %1077, float %1078)  ; Dot3(ax,ay,az,bx,by,bz)
  %1302 = fmul fast float %1301, %1300
  %1303 = call float @dx.op.unary.f32(i32 7, float %1302)  ; Saturate(value)
  %1304 = fmul fast float %1303, %1303
  %1305 = fsub fast float 1.000000e+00, %1304
  %1306 = bitcast float %1305 to i32
  %1307 = ashr i32 %1306, 1
  %1308 = add nsw i32 %1307, 532487669
  %1309 = bitcast i32 %1308 to float
  %1310 = call float @dx.op.unary.f32(i32 6, float %1303)  ; FAbs(value)
  %1311 = fmul fast float %1310, 0x3FC40AE960000000
  %1312 = fsub fast float 0x3FF921FB60000000, %1311
  %1313 = fsub fast float 1.000000e+00, %1310
  %1314 = bitcast float %1313 to i32
  %1315 = ashr i32 %1314, 1
  %1316 = add nsw i32 %1315, 532487669
  %1317 = bitcast i32 %1316 to float
  %1318 = fmul fast float %1317, %1312
  %1319 = fcmp fast oge float %1303, 0.000000e+00
  %1320 = fsub fast float 0x400921FB60000000, %1318
  %1321 = select i1 %1319, float %1318, float %1320
  %1322 = fsub fast float -0.000000e+00, %1309
  %1323 = select i1 %1299, float %1322, float %1309
  %1324 = fsub fast float -0.000000e+00, %1321
  %1325 = select i1 %1299, float %1324, float %1321
  %1326 = call float @dx.op.unary.f32(i32 6, float %1187)  ; FAbs(value)
  %1327 = fmul fast float %1326, 0x3FC40AE960000000
  %1328 = fsub fast float 0x3FF921FB60000000, %1327
  %1329 = fsub fast float 1.000000e+00, %1326
  %1330 = bitcast float %1329 to i32
  %1331 = ashr i32 %1330, 1
  %1332 = add nsw i32 %1331, 532487669
  %1333 = bitcast i32 %1332 to float
  %1334 = fmul fast float %1333, %1328
  %1335 = fcmp fast oge float %1187, 0.000000e+00
  %1336 = fsub fast float 0x400921FB60000000, %1334
  %1337 = select i1 %1335, float %1334, float %1336
  %1338 = call float @dx.op.unary.f32(i32 6, float %1270)  ; FAbs(value)
  %1339 = fmul fast float %1338, 0x3FC40AE960000000
  %1340 = fsub fast float 0x3FF921FB60000000, %1339
  %1341 = fsub fast float 1.000000e+00, %1338
  %1342 = bitcast float %1341 to i32
  %1343 = ashr i32 %1342, 1
  %1344 = add nsw i32 %1343, 532487669
  %1345 = bitcast i32 %1344 to float
  %1346 = fmul fast float %1345, %1340
  %1347 = fcmp fast oge float %1270, 0.000000e+00
  %1348 = fsub fast float 0x400921FB60000000, %1346
  %1349 = select i1 %1347, float %1346, float %1348
  %1350 = fsub fast float -0.000000e+00, %1325
  %1351 = fsub fast float %1350, %1337
  %1352 = call float @dx.op.binary.f32(i32 35, float %1351, float 0xBFF921FB60000000)  ; FMax(a,b)
  %1353 = call float @dx.op.binary.f32(i32 36, float %1352, float 0x3FF921FB60000000)  ; FMin(a,b)
  %1354 = fadd fast float %1325, %1353
  %1355 = fsub fast float %1349, %1325
  %1356 = call float @dx.op.binary.f32(i32 35, float %1355, float 0xBFF921FB60000000)  ; FMax(a,b)
  %1357 = call float @dx.op.binary.f32(i32 36, float %1356, float 0x3FF921FB60000000)  ; FMin(a,b)
  %1358 = fadd fast float %1325, %1357
  %1359 = fmul fast float %1354, 2.000000e+00
  %1360 = fsub fast float %1359, %1325
  %1361 = call float @dx.op.unary.f32(i32 12, float %1360)  ; Cos(value)
  %1362 = fsub fast float -0.000000e+00, %1361
  %1363 = fmul fast float %1358, 2.000000e+00
  %1364 = fsub fast float %1363, %1325
  %1365 = call float @dx.op.unary.f32(i32 12, float %1364)  ; Cos(value)
  %1366 = fmul fast float %1303, 2.000000e+00
  %1367 = fadd fast float %1358, %1354
  %1368 = fmul fast float %1323, %1367
  %1369 = fmul fast float %1368, 2.000000e+00
  %1370 = fsub fast float %1362, %1365
  %1371 = fadd fast float %1370, %1366
  %1372 = fadd fast float %1371, %1369
  %1373 = fmul fast float %1292, 2.500000e-01
  %1374 = fmul fast float %1373, %1372
  %1375 = fadd fast float %1374, %1090
  %1376 = fmul fast float %1325, %1323
  %1377 = fadd fast float %1376, %1303
  %1378 = fmul fast float %1377, %1292
  %1379 = fadd fast float %1378, %1088
  %1380 = add nuw nsw i32 %1089, 1
  %1381 = icmp eq i32 %1380, 16
  br i1 %1381, label %1382, label %1087

; <label>:1382                                    ; preds = %1273
  %1383 = fdiv fast float %1375, %1379
  br label %1384

; <label>:1384                                    ; preds = %1382, %982, %967
  %1385 = phi float [ %923, %967 ], [ %1383, %1382 ], [ 1.000000e+00, %982 ]
  %1386 = icmp ugt i32 %980, 2
  br i1 %1386, label %1387, label %1789, !dx.controlflow.hints !54

; <label>:1387                                    ; preds = %1384
  %1388 = getelementptr inbounds [4 x float], [4 x float]* %25, i32 0, i32 0
  store float %382, float* %1388, align 4
  %1389 = getelementptr inbounds [4 x float], [4 x float]* %25, i32 0, i32 1
  store float %378, float* %1389, align 4
  %1390 = getelementptr inbounds [4 x float], [4 x float]* %25, i32 0, i32 2
  store float %370, float* %1390, align 4
  %1391 = getelementptr inbounds [4 x float], [4 x float]* %25, i32 0, i32 3
  store float %374, float* %1391, align 4
  %1392 = getelementptr [4 x float], [4 x float]* %25, i32 0, i32 %429
  %1393 = load float, float* %1392, align 4, !tbaa !31, !noalias !55
  %1394 = and i32 %429, 1
  %1395 = uitofp i32 %1394 to float
  %1396 = fadd fast float %1395, 5.000000e-01
  %1397 = lshr i32 %429, 1
  %1398 = uitofp i32 %1397 to float
  %1399 = fadd fast float %1398, 5.000000e-01
  %1400 = fmul fast float %1396, %403
  %1401 = fmul fast float %1399, %404
  %1402 = fadd fast float %1400, %48
  %1403 = fadd fast float %1401, %49
  %1404 = fcmp fast olt float %1393, 6.550000e+04
  br i1 %1404, label %1405, label %1789, !dx.controlflow.hints !48

; <label>:1405                                    ; preds = %1387
  %1406 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 0
  store i32 %386, i32* %1406, align 4
  %1407 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 1
  store i32 %389, i32* %1407, align 4
  %1408 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 2
  store i32 %392, i32* %1408, align 4
  %1409 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 3
  store i32 %394, i32* %1409, align 4
  %1410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 99)  ; CBufferLoadLegacy(handle,regIndex)
  %1411 = extractvalue %dx.types.CBufRet.f32 %1410, 0
  %1412 = extractvalue %dx.types.CBufRet.f32 %1410, 1
  %1413 = extractvalue %dx.types.CBufRet.f32 %1410, 2
  %1414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 100)  ; CBufferLoadLegacy(handle,regIndex)
  %1415 = extractvalue %dx.types.CBufRet.f32 %1414, 0
  %1416 = extractvalue %dx.types.CBufRet.f32 %1414, 1
  %1417 = extractvalue %dx.types.CBufRet.f32 %1414, 2
  %1418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 101)  ; CBufferLoadLegacy(handle,regIndex)
  %1419 = extractvalue %dx.types.CBufRet.f32 %1418, 0
  %1420 = extractvalue %dx.types.CBufRet.f32 %1418, 1
  %1421 = extractvalue %dx.types.CBufRet.f32 %1418, 2
  %1422 = getelementptr [4 x i32], [4 x i32]* %24, i32 0, i32 %429
  %1423 = load i32, i32* %1422, align 4, !tbaa !42, !noalias !55
  %1424 = lshr i32 %1423, 8
  %1425 = and i32 %1423, 255
  %1426 = and i32 %1424, 255
  %1427 = uitofp i32 %1425 to float
  %1428 = uitofp i32 %1426 to float
  %1429 = fmul fast float %1427, 0x3F80101020000000
  %1430 = fmul fast float %1428, 0x3F80101020000000
  %1431 = fadd fast float %1429, -1.000000e+00
  %1432 = fadd fast float %1430, -1.000000e+00
  %1433 = call float @dx.op.unary.f32(i32 6, float %1431)  ; FAbs(value)
  %1434 = fsub fast float 1.000000e+00, %1433
  %1435 = call float @dx.op.unary.f32(i32 6, float %1432)  ; FAbs(value)
  %1436 = fsub fast float %1434, %1435
  %1437 = fsub fast float -0.000000e+00, %1436
  %1438 = call float @dx.op.binary.f32(i32 35, float %1437, float 0.000000e+00)  ; FMax(a,b)
  %1439 = fcmp fast ogt float %1431, 0.000000e+00
  %1440 = fsub fast float -0.000000e+00, %1438
  %1441 = select i1 %1439, float %1440, float %1438
  %1442 = fadd fast float %1441, %1431
  %1443 = fcmp fast ogt float %1432, 0.000000e+00
  %1444 = select i1 %1443, float %1440, float %1438
  %1445 = fadd fast float %1444, %1432
  %1446 = call float @dx.op.dot3.f32(i32 55, float %1442, float %1445, float %1436, float %1442, float %1445, float %1436)  ; Dot3(ax,ay,az,bx,by,bz)
  %1447 = call float @dx.op.unary.f32(i32 25, float %1446)  ; Rsqrt(value)
  %1448 = fmul fast float %1442, %1447
  %1449 = fmul fast float %1445, %1447
  %1450 = fmul fast float %1447, %1436
  %1451 = fmul fast float %1448, %1411
  %1452 = call float @dx.op.tertiary.f32(i32 46, float %1449, float %1412, float %1451)  ; FMad(a,b,c)
  %1453 = call float @dx.op.tertiary.f32(i32 46, float %1450, float %1413, float %1452)  ; FMad(a,b,c)
  %1454 = fmul fast float %1448, %1415
  %1455 = call float @dx.op.tertiary.f32(i32 46, float %1449, float %1416, float %1454)  ; FMad(a,b,c)
  %1456 = call float @dx.op.tertiary.f32(i32 46, float %1450, float %1417, float %1455)  ; FMad(a,b,c)
  %1457 = fmul fast float %1448, %1419
  %1458 = call float @dx.op.tertiary.f32(i32 46, float %1449, float %1420, float %1457)  ; FMad(a,b,c)
  %1459 = call float @dx.op.tertiary.f32(i32 46, float %1450, float %1421, float %1458)  ; FMad(a,b,c)
  %1460 = call float @dx.op.unary.f32(i32 6, float %1393)  ; FAbs(value)
  %1461 = fmul fast float %403, %35
  %1462 = fmul fast float %404, %36
  %1463 = fmul fast float %1460, %398
  %1464 = fmul fast float %399, %1460
  %1465 = fsub fast float -0.000000e+00, %1464
  %1466 = fdiv fast float 5.000000e+01, %1463
  %1467 = fdiv fast float 5.000000e+01, %1465
  %1468 = call float @dx.op.binary.f32(i32 36, float %1461, float %1466)  ; FMin(a,b)
  %1469 = call float @dx.op.binary.f32(i32 36, float %1462, float %1467)  ; FMin(a,b)
  %1470 = fmul fast float %1402, %396
  %1471 = fmul fast float %1403, %397
  %1472 = fsub fast float %1470, %398
  %1473 = fsub fast float %1471, %399
  %1474 = fmul fast float %1460, %1472
  %1475 = fmul fast float %1460, %1473
  %1476 = fsub fast float -0.000000e+00, %1474
  %1477 = fsub fast float -0.000000e+00, %1475
  %1478 = fsub fast float -0.000000e+00, %1460
  %1479 = call float @dx.op.dot3.f32(i32 55, float %1476, float %1477, float %1478, float %1476, float %1477, float %1478)  ; Dot3(ax,ay,az,bx,by,bz)
  %1480 = call float @dx.op.unary.f32(i32 25, float %1479)  ; Rsqrt(value)
  %1481 = fmul fast float %1480, %1476
  %1482 = fmul fast float %1480, %1477
  %1483 = fmul fast float %1480, %1478
  %1484 = fmul fast float %1460, 0x3FEFEB8520000000
  %1485 = fmul fast float %1468, %40
  %1486 = fmul fast float %1469, %41
  %1487 = fmul fast float %1485, %1485
  %1488 = fmul fast float %1486, %1486
  %1489 = fadd fast float %1488, %1487
  %1490 = call float @dx.op.unary.f32(i32 24, float %1489)  ; Sqrt(value)
  %1491 = fmul fast float %1490, 3.125000e-02
  br label %1492

; <label>:1492                                    ; preds = %1678, %1405
  %1493 = phi float [ %1784, %1678 ], [ 0.000000e+00, %1405 ]
  %1494 = phi i32 [ %1785, %1678 ], [ 0, %1405 ]
  %1495 = phi float [ %1780, %1678 ], [ 0.000000e+00, %1405 ]
  %1496 = sitofp i32 %1494 to float
  %1497 = fadd fast float %1496, %498
  %1498 = fmul fast float %1497, 0x3FC921FB60000000
  %1499 = call float @dx.op.unary.f32(i32 12, float %1498)  ; Cos(value)
  %1500 = call float @dx.op.unary.f32(i32 13, float %1498)  ; Sin(value)
  %1501 = fsub fast float -0.000000e+00, %1500
  %1502 = call float @dx.op.dot3.f32(i32 55, float %1481, float %1482, float %1483, float %1453, float %1456, float %1459)  ; Dot3(ax,ay,az,bx,by,bz)
  %1503 = call float @dx.op.unary.f32(i32 6, float %1502)  ; FAbs(value)
  %1504 = call float @dx.op.unary.f32(i32 6, float %1503)  ; FAbs(value)
  %1505 = fcmp fast ogt float %1504, 0x3EB0C6F7A0000000
  %1506 = call float @dx.op.dot3.f32(i32 55, float %1499, float %1501, float 0.000000e+00, float %1453, float %1456, float %1459)  ; Dot3(ax,ay,az,bx,by,bz)
  %1507 = fsub fast float -0.000000e+00, %1506
  %1508 = fdiv fast float %1507, %1503
  %1509 = select i1 %1505, float %1508, float 0.000000e+00
  %1510 = fmul fast float %1509, %1509
  %1511 = fadd fast float %1510, 1.000000e+00
  %1512 = call float @dx.op.unary.f32(i32 25, float %1511)  ; Rsqrt(value)
  %1513 = fmul fast float %1509, %1512
  br label %1514

; <label>:1514                                    ; preds = %1514, %1492
  %1515 = phi float [ %1592, %1514 ], [ %1513, %1492 ]
  %1516 = phi float [ %1580, %1514 ], [ 2.000000e+02, %1492 ]
  %1517 = phi i32 [ %1593, %1514 ], [ 0, %1492 ]
  %1518 = sitofp i32 %1517 to float
  %1519 = fadd fast float %1518, %519
  %1520 = fmul fast float %1519, 6.250000e-02
  %1521 = fmul fast float %1520, %1520
  %1522 = fmul fast float %1521, %1491
  %1523 = call float @dx.op.binary.f32(i32 36, float %1522, float 3.000000e+00)  ; FMin(a,b)
  %1524 = fadd fast float %1523, 1.000000e+00
  %1525 = fmul fast float %1521, %1468
  %1526 = fmul fast float %1521, %1469
  %1527 = fadd fast float %1525, %44
  %1528 = fmul fast float %1527, %1499
  %1529 = fadd fast float %1528, %1402
  %1530 = fadd fast float %1526, %45
  %1531 = fmul fast float %1530, %1500
  %1532 = fadd fast float %1531, %1403
  %1533 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %13, float %1529, float %1532, float undef, float undef, i32 0, i32 0, i32 undef, float %1524)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1534 = extractvalue %dx.types.ResRet.f32 %1533, 0
  %1535 = fcmp fast ogt float %1534, -1.000000e+00
  %1536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1537 = extractvalue %dx.types.CBufRet.f32 %1536, 1
  %1538 = select i1 %1535, float %1537, float 1.000000e+00
  %1539 = fadd fast float %1534, 1.000000e+00
  %1540 = fmul fast float %1538, %1539
  %1541 = call float @dx.op.unary.f32(i32 6, float %1540)  ; FAbs(value)
  %1542 = fmul fast float %1529, %396
  %1543 = fmul fast float %1532, %397
  %1544 = fsub fast float %1542, %398
  %1545 = fsub fast float %1543, %399
  %1546 = fmul fast float %1544, %1541
  %1547 = fmul fast float %1545, %1541
  %1548 = fsub fast float %1546, %1474
  %1549 = fsub fast float %1547, %1475
  %1550 = fsub fast float %1541, %1484
  %1551 = call float @dx.op.dot3.f32(i32 55, float %1548, float %1549, float %1550, float %1548, float %1549, float %1550)  ; Dot3(ax,ay,az,bx,by,bz)
  %1552 = call float @dx.op.dot3.f32(i32 55, float %1548, float %1549, float %1550, float %1453, float %1456, float %1459)  ; Dot3(ax,ay,az,bx,by,bz)
  %1553 = fsub fast float -0.000000e+00, %1552
  %1554 = call float @dx.op.dot3.f32(i32 55, float %1548, float %1549, float %1550, float %1481, float %1482, float %1483)  ; Dot3(ax,ay,az,bx,by,bz)
  %1555 = call float @dx.op.unary.f32(i32 25, float %1551)  ; Rsqrt(value)
  %1556 = fmul fast float %1555, %1554
  %1557 = bitcast float %1551 to i32
  %1558 = ashr i32 %1557, 1
  %1559 = add nsw i32 %1558, 532487669
  %1560 = bitcast i32 %1559 to float
  %1561 = fmul fast float %1560, 0x3F947AE140000000
  %1562 = fsub fast float 2.000000e+00, %1561
  %1563 = call float @dx.op.unary.f32(i32 7, float %1562)  ; Saturate(value)
  %1564 = fmul fast float %1560, 0x3F7B4E81C0000000
  %1565 = fsub fast float 0x3FF5555560000000, %1564
  %1566 = call float @dx.op.unary.f32(i32 7, float %1565)  ; Saturate(value)
  %1567 = fmul fast float %1541, 0x3F947AE140000000
  %1568 = fadd fast float %1567, -1.000000e+00
  %1569 = call float @dx.op.unary.f32(i32 7, float %1568)  ; Saturate(value)
  %1570 = fsub fast float %1566, %1563
  %1571 = fmul fast float %1569, %1570
  %1572 = fadd fast float %1571, %1563
  %1573 = fmul fast float %1540, %1393
  %1574 = fcmp fast ogt float %1573, 0.000000e+00
  %1575 = select i1 %1574, float %1572, float 0.000000e+00
  %1576 = fadd fast float %1556, 1.000000e+00
  %1577 = fmul fast float %1575, %1576
  %1578 = fadd fast float %1577, -1.000000e+00
  %1579 = fcmp fast ogt float %1578, %1515
  %1580 = select i1 %1579, float %1553, float %1516
  %1581 = fsub fast float %1553, %1580
  %1582 = fmul fast float %1581, 0x3FB9999940000000
  %1583 = fadd fast float %1582, 0xBFDFFFFF80000000
  %1584 = call float @dx.op.unary.f32(i32 7, float %1583)  ; Saturate(value)
  %1585 = fmul fast float %1552, 0x3FC99999E0000000
  %1586 = fadd fast float %1585, 0x3FF0000020000000
  %1587 = call float @dx.op.unary.f32(i32 7, float %1586)  ; Saturate(value)
  %1588 = fmul fast float %1584, 2.500000e-01
  %1589 = fmul fast float %1588, %1587
  %1590 = fsub fast float %1515, %1589
  %1591 = fcmp ole float %1578, %1590
  %1592 = select i1 %1591, float %1590, float %1578
  %1593 = add nuw nsw i32 %1517, 1
  %1594 = icmp eq i32 %1593, 16
  br i1 %1594, label %1595, label %1514

; <label>:1595                                    ; preds = %1514
  %1596 = fsub fast float -0.000000e+00, %1513
  br label %1597

; <label>:1597                                    ; preds = %1597, %1595
  %1598 = phi float [ %1675, %1597 ], [ %1596, %1595 ]
  %1599 = phi float [ %1663, %1597 ], [ 2.000000e+02, %1595 ]
  %1600 = phi i32 [ %1676, %1597 ], [ 0, %1595 ]
  %1601 = sitofp i32 %1600 to float
  %1602 = fadd fast float %1601, %519
  %1603 = fmul fast float %1602, 6.250000e-02
  %1604 = fmul fast float %1603, %1603
  %1605 = fmul fast float %1604, %1491
  %1606 = call float @dx.op.binary.f32(i32 36, float %1605, float 3.000000e+00)  ; FMin(a,b)
  %1607 = fadd fast float %1606, 1.000000e+00
  %1608 = fmul fast float %1604, %1468
  %1609 = fmul fast float %1604, %1469
  %1610 = fadd fast float %1608, %44
  %1611 = fmul fast float %1499, %1610
  %1612 = fsub fast float %1402, %1611
  %1613 = fadd fast float %1609, %45
  %1614 = fmul fast float %1500, %1613
  %1615 = fsub fast float %1403, %1614
  %1616 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %13, float %1612, float %1615, float undef, float undef, i32 0, i32 0, i32 undef, float %1607)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1617 = extractvalue %dx.types.ResRet.f32 %1616, 0
  %1618 = fcmp fast ogt float %1617, -1.000000e+00
  %1619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1620 = extractvalue %dx.types.CBufRet.f32 %1619, 1
  %1621 = select i1 %1618, float %1620, float 1.000000e+00
  %1622 = fadd fast float %1617, 1.000000e+00
  %1623 = fmul fast float %1621, %1622
  %1624 = call float @dx.op.unary.f32(i32 6, float %1623)  ; FAbs(value)
  %1625 = fmul fast float %1612, %396
  %1626 = fmul fast float %1615, %397
  %1627 = fsub fast float %1625, %398
  %1628 = fsub fast float %1626, %399
  %1629 = fmul fast float %1627, %1624
  %1630 = fmul fast float %1628, %1624
  %1631 = fsub fast float %1629, %1474
  %1632 = fsub fast float %1630, %1475
  %1633 = fsub fast float %1624, %1484
  %1634 = call float @dx.op.dot3.f32(i32 55, float %1631, float %1632, float %1633, float %1631, float %1632, float %1633)  ; Dot3(ax,ay,az,bx,by,bz)
  %1635 = call float @dx.op.dot3.f32(i32 55, float %1631, float %1632, float %1633, float %1453, float %1456, float %1459)  ; Dot3(ax,ay,az,bx,by,bz)
  %1636 = fsub fast float -0.000000e+00, %1635
  %1637 = call float @dx.op.dot3.f32(i32 55, float %1631, float %1632, float %1633, float %1481, float %1482, float %1483)  ; Dot3(ax,ay,az,bx,by,bz)
  %1638 = call float @dx.op.unary.f32(i32 25, float %1634)  ; Rsqrt(value)
  %1639 = fmul fast float %1638, %1637
  %1640 = bitcast float %1634 to i32
  %1641 = ashr i32 %1640, 1
  %1642 = add nsw i32 %1641, 532487669
  %1643 = bitcast i32 %1642 to float
  %1644 = fmul fast float %1643, 0x3F947AE140000000
  %1645 = fsub fast float 2.000000e+00, %1644
  %1646 = call float @dx.op.unary.f32(i32 7, float %1645)  ; Saturate(value)
  %1647 = fmul fast float %1643, 0x3F7B4E81C0000000
  %1648 = fsub fast float 0x3FF5555560000000, %1647
  %1649 = call float @dx.op.unary.f32(i32 7, float %1648)  ; Saturate(value)
  %1650 = fmul fast float %1624, 0x3F947AE140000000
  %1651 = fadd fast float %1650, -1.000000e+00
  %1652 = call float @dx.op.unary.f32(i32 7, float %1651)  ; Saturate(value)
  %1653 = fsub fast float %1649, %1646
  %1654 = fmul fast float %1652, %1653
  %1655 = fadd fast float %1654, %1646
  %1656 = fmul fast float %1623, %1393
  %1657 = fcmp fast ogt float %1656, 0.000000e+00
  %1658 = select i1 %1657, float %1655, float 0.000000e+00
  %1659 = fadd fast float %1639, 1.000000e+00
  %1660 = fmul fast float %1658, %1659
  %1661 = fadd fast float %1660, -1.000000e+00
  %1662 = fcmp fast ogt float %1661, %1598
  %1663 = select i1 %1662, float %1636, float %1599
  %1664 = fsub fast float %1636, %1663
  %1665 = fmul fast float %1664, 0x3FB9999940000000
  %1666 = fadd fast float %1665, 0xBFDFFFFF80000000
  %1667 = call float @dx.op.unary.f32(i32 7, float %1666)  ; Saturate(value)
  %1668 = fmul fast float %1635, 0x3FC99999E0000000
  %1669 = fadd fast float %1668, 0x3FF0000020000000
  %1670 = call float @dx.op.unary.f32(i32 7, float %1669)  ; Saturate(value)
  %1671 = fmul fast float %1667, 2.500000e-01
  %1672 = fmul fast float %1671, %1670
  %1673 = fsub fast float %1598, %1672
  %1674 = fcmp ole float %1661, %1673
  %1675 = select i1 %1674, float %1673, float %1661
  %1676 = add nuw nsw i32 %1600, 1
  %1677 = icmp eq i32 %1676, 16
  br i1 %1677, label %1678, label %1597

; <label>:1678                                    ; preds = %1597
  %1679 = fmul fast float %1483, %1501
  %1680 = fmul fast float %1483, %1499
  %1681 = fsub fast float -0.000000e+00, %1680
  %1682 = fmul fast float %1499, %1482
  %1683 = fmul fast float %1481, %1501
  %1684 = fsub fast float %1682, %1683
  %1685 = call float @dx.op.dot3.f32(i32 55, float %1453, float %1456, float %1459, float %1679, float %1681, float %1684)  ; Dot3(ax,ay,az,bx,by,bz)
  %1686 = fmul fast float %1685, %1679
  %1687 = fmul fast float %1685, %1681
  %1688 = fmul fast float %1685, %1684
  %1689 = fsub fast float %1453, %1686
  %1690 = fsub fast float %1456, %1687
  %1691 = fsub fast float %1459, %1688
  %1692 = fmul fast float %1689, %1689
  %1693 = fmul fast float %1690, %1690
  %1694 = fadd fast float %1692, %1693
  %1695 = fmul fast float %1691, %1691
  %1696 = fadd fast float %1694, %1695
  %1697 = call float @dx.op.unary.f32(i32 24, float %1696)  ; Sqrt(value)
  %1698 = call float @dx.op.dot3.f32(i32 55, float %1499, float %1501, float 0.000000e+00, float %1689, float %1690, float %1691)  ; Dot3(ax,ay,az,bx,by,bz)
  %1699 = call float @dx.op.dot3.f32(i32 55, float %1499, float %1501, float 0.000000e+00, float %1481, float %1482, float %1483)  ; Dot3(ax,ay,az,bx,by,bz)
  %1700 = fmul fast float %1699, %1481
  %1701 = fmul fast float %1699, %1482
  %1702 = fmul fast float %1699, %1483
  %1703 = call float @dx.op.dot3.f32(i32 55, float %1700, float %1701, float %1702, float %1689, float %1690, float %1691)  ; Dot3(ax,ay,az,bx,by,bz)
  %1704 = fcmp fast oge float %1698, %1703
  %1705 = fdiv fast float 1.000000e+00, %1697
  %1706 = call float @dx.op.dot3.f32(i32 55, float %1689, float %1690, float %1691, float %1481, float %1482, float %1483)  ; Dot3(ax,ay,az,bx,by,bz)
  %1707 = fmul fast float %1706, %1705
  %1708 = call float @dx.op.unary.f32(i32 7, float %1707)  ; Saturate(value)
  %1709 = fmul fast float %1708, %1708
  %1710 = fsub fast float 1.000000e+00, %1709
  %1711 = bitcast float %1710 to i32
  %1712 = ashr i32 %1711, 1
  %1713 = add nsw i32 %1712, 532487669
  %1714 = bitcast i32 %1713 to float
  %1715 = call float @dx.op.unary.f32(i32 6, float %1708)  ; FAbs(value)
  %1716 = fmul fast float %1715, 0x3FC40AE960000000
  %1717 = fsub fast float 0x3FF921FB60000000, %1716
  %1718 = fsub fast float 1.000000e+00, %1715
  %1719 = bitcast float %1718 to i32
  %1720 = ashr i32 %1719, 1
  %1721 = add nsw i32 %1720, 532487669
  %1722 = bitcast i32 %1721 to float
  %1723 = fmul fast float %1722, %1717
  %1724 = fcmp fast oge float %1708, 0.000000e+00
  %1725 = fsub fast float 0x400921FB60000000, %1723
  %1726 = select i1 %1724, float %1723, float %1725
  %1727 = fsub fast float -0.000000e+00, %1714
  %1728 = select i1 %1704, float %1727, float %1714
  %1729 = fsub fast float -0.000000e+00, %1726
  %1730 = select i1 %1704, float %1729, float %1726
  %1731 = call float @dx.op.unary.f32(i32 6, float %1592)  ; FAbs(value)
  %1732 = fmul fast float %1731, 0x3FC40AE960000000
  %1733 = fsub fast float 0x3FF921FB60000000, %1732
  %1734 = fsub fast float 1.000000e+00, %1731
  %1735 = bitcast float %1734 to i32
  %1736 = ashr i32 %1735, 1
  %1737 = add nsw i32 %1736, 532487669
  %1738 = bitcast i32 %1737 to float
  %1739 = fmul fast float %1738, %1733
  %1740 = fcmp fast oge float %1592, 0.000000e+00
  %1741 = fsub fast float 0x400921FB60000000, %1739
  %1742 = select i1 %1740, float %1739, float %1741
  %1743 = call float @dx.op.unary.f32(i32 6, float %1675)  ; FAbs(value)
  %1744 = fmul fast float %1743, 0x3FC40AE960000000
  %1745 = fsub fast float 0x3FF921FB60000000, %1744
  %1746 = fsub fast float 1.000000e+00, %1743
  %1747 = bitcast float %1746 to i32
  %1748 = ashr i32 %1747, 1
  %1749 = add nsw i32 %1748, 532487669
  %1750 = bitcast i32 %1749 to float
  %1751 = fmul fast float %1750, %1745
  %1752 = fcmp fast oge float %1675, 0.000000e+00
  %1753 = fsub fast float 0x400921FB60000000, %1751
  %1754 = select i1 %1752, float %1751, float %1753
  %1755 = fsub fast float -0.000000e+00, %1730
  %1756 = fsub fast float %1755, %1742
  %1757 = call float @dx.op.binary.f32(i32 35, float %1756, float 0xBFF921FB60000000)  ; FMax(a,b)
  %1758 = call float @dx.op.binary.f32(i32 36, float %1757, float 0x3FF921FB60000000)  ; FMin(a,b)
  %1759 = fadd fast float %1730, %1758
  %1760 = fsub fast float %1754, %1730
  %1761 = call float @dx.op.binary.f32(i32 35, float %1760, float 0xBFF921FB60000000)  ; FMax(a,b)
  %1762 = call float @dx.op.binary.f32(i32 36, float %1761, float 0x3FF921FB60000000)  ; FMin(a,b)
  %1763 = fadd fast float %1730, %1762
  %1764 = fmul fast float %1759, 2.000000e+00
  %1765 = fsub fast float %1764, %1730
  %1766 = call float @dx.op.unary.f32(i32 12, float %1765)  ; Cos(value)
  %1767 = fsub fast float -0.000000e+00, %1766
  %1768 = fmul fast float %1763, 2.000000e+00
  %1769 = fsub fast float %1768, %1730
  %1770 = call float @dx.op.unary.f32(i32 12, float %1769)  ; Cos(value)
  %1771 = fmul fast float %1708, 2.000000e+00
  %1772 = fadd fast float %1763, %1759
  %1773 = fmul fast float %1728, %1772
  %1774 = fmul fast float %1773, 2.000000e+00
  %1775 = fsub fast float %1767, %1770
  %1776 = fadd fast float %1775, %1771
  %1777 = fadd fast float %1776, %1774
  %1778 = fmul fast float %1697, 2.500000e-01
  %1779 = fmul fast float %1778, %1777
  %1780 = fadd fast float %1779, %1495
  %1781 = fmul fast float %1730, %1728
  %1782 = fadd fast float %1781, %1708
  %1783 = fmul fast float %1782, %1697
  %1784 = fadd fast float %1783, %1493
  %1785 = add nuw nsw i32 %1494, 1
  %1786 = icmp eq i32 %1785, 16
  br i1 %1786, label %1787, label %1492

; <label>:1787                                    ; preds = %1678
  %1788 = fdiv fast float %1780, %1784
  br label %1789

; <label>:1789                                    ; preds = %1787, %1387, %1384
  %1790 = phi float [ %923, %1384 ], [ %1788, %1787 ], [ 1.000000e+00, %1387 ]
  %1791 = icmp ugt i32 %980, 3
  br i1 %1791, label %1792, label %2194, !dx.controlflow.hints !59

; <label>:1792                                    ; preds = %1789
  %1793 = getelementptr inbounds [4 x float], [4 x float]* %23, i32 0, i32 0
  store float %382, float* %1793, align 4
  %1794 = getelementptr inbounds [4 x float], [4 x float]* %23, i32 0, i32 1
  store float %378, float* %1794, align 4
  %1795 = getelementptr inbounds [4 x float], [4 x float]* %23, i32 0, i32 2
  store float %370, float* %1795, align 4
  %1796 = getelementptr inbounds [4 x float], [4 x float]* %23, i32 0, i32 3
  store float %374, float* %1796, align 4
  %1797 = getelementptr [4 x float], [4 x float]* %23, i32 0, i32 %436
  %1798 = load float, float* %1797, align 4, !tbaa !31, !noalias !60
  %1799 = and i32 %436, 1
  %1800 = uitofp i32 %1799 to float
  %1801 = fadd fast float %1800, 5.000000e-01
  %1802 = lshr i32 %436, 1
  %1803 = uitofp i32 %1802 to float
  %1804 = fadd fast float %1803, 5.000000e-01
  %1805 = fmul fast float %1801, %403
  %1806 = fmul fast float %1804, %404
  %1807 = fadd fast float %1805, %48
  %1808 = fadd fast float %1806, %49
  %1809 = fcmp fast olt float %1798, 6.550000e+04
  br i1 %1809, label %1810, label %2194, !dx.controlflow.hints !48

; <label>:1810                                    ; preds = %1792
  %1811 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i32 0, i32 0
  store i32 %386, i32* %1811, align 4
  %1812 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i32 0, i32 1
  store i32 %389, i32* %1812, align 4
  %1813 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i32 0, i32 2
  store i32 %392, i32* %1813, align 4
  %1814 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i32 0, i32 3
  store i32 %394, i32* %1814, align 4
  %1815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 99)  ; CBufferLoadLegacy(handle,regIndex)
  %1816 = extractvalue %dx.types.CBufRet.f32 %1815, 0
  %1817 = extractvalue %dx.types.CBufRet.f32 %1815, 1
  %1818 = extractvalue %dx.types.CBufRet.f32 %1815, 2
  %1819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 100)  ; CBufferLoadLegacy(handle,regIndex)
  %1820 = extractvalue %dx.types.CBufRet.f32 %1819, 0
  %1821 = extractvalue %dx.types.CBufRet.f32 %1819, 1
  %1822 = extractvalue %dx.types.CBufRet.f32 %1819, 2
  %1823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 101)  ; CBufferLoadLegacy(handle,regIndex)
  %1824 = extractvalue %dx.types.CBufRet.f32 %1823, 0
  %1825 = extractvalue %dx.types.CBufRet.f32 %1823, 1
  %1826 = extractvalue %dx.types.CBufRet.f32 %1823, 2
  %1827 = getelementptr [4 x i32], [4 x i32]* %22, i32 0, i32 %436
  %1828 = load i32, i32* %1827, align 4, !tbaa !42, !noalias !60
  %1829 = lshr i32 %1828, 8
  %1830 = and i32 %1828, 255
  %1831 = and i32 %1829, 255
  %1832 = uitofp i32 %1830 to float
  %1833 = uitofp i32 %1831 to float
  %1834 = fmul fast float %1832, 0x3F80101020000000
  %1835 = fmul fast float %1833, 0x3F80101020000000
  %1836 = fadd fast float %1834, -1.000000e+00
  %1837 = fadd fast float %1835, -1.000000e+00
  %1838 = call float @dx.op.unary.f32(i32 6, float %1836)  ; FAbs(value)
  %1839 = fsub fast float 1.000000e+00, %1838
  %1840 = call float @dx.op.unary.f32(i32 6, float %1837)  ; FAbs(value)
  %1841 = fsub fast float %1839, %1840
  %1842 = fsub fast float -0.000000e+00, %1841
  %1843 = call float @dx.op.binary.f32(i32 35, float %1842, float 0.000000e+00)  ; FMax(a,b)
  %1844 = fcmp fast ogt float %1836, 0.000000e+00
  %1845 = fsub fast float -0.000000e+00, %1843
  %1846 = select i1 %1844, float %1845, float %1843
  %1847 = fadd fast float %1846, %1836
  %1848 = fcmp fast ogt float %1837, 0.000000e+00
  %1849 = select i1 %1848, float %1845, float %1843
  %1850 = fadd fast float %1849, %1837
  %1851 = call float @dx.op.dot3.f32(i32 55, float %1847, float %1850, float %1841, float %1847, float %1850, float %1841)  ; Dot3(ax,ay,az,bx,by,bz)
  %1852 = call float @dx.op.unary.f32(i32 25, float %1851)  ; Rsqrt(value)
  %1853 = fmul fast float %1847, %1852
  %1854 = fmul fast float %1850, %1852
  %1855 = fmul fast float %1852, %1841
  %1856 = fmul fast float %1853, %1816
  %1857 = call float @dx.op.tertiary.f32(i32 46, float %1854, float %1817, float %1856)  ; FMad(a,b,c)
  %1858 = call float @dx.op.tertiary.f32(i32 46, float %1855, float %1818, float %1857)  ; FMad(a,b,c)
  %1859 = fmul fast float %1853, %1820
  %1860 = call float @dx.op.tertiary.f32(i32 46, float %1854, float %1821, float %1859)  ; FMad(a,b,c)
  %1861 = call float @dx.op.tertiary.f32(i32 46, float %1855, float %1822, float %1860)  ; FMad(a,b,c)
  %1862 = fmul fast float %1853, %1824
  %1863 = call float @dx.op.tertiary.f32(i32 46, float %1854, float %1825, float %1862)  ; FMad(a,b,c)
  %1864 = call float @dx.op.tertiary.f32(i32 46, float %1855, float %1826, float %1863)  ; FMad(a,b,c)
  %1865 = call float @dx.op.unary.f32(i32 6, float %1798)  ; FAbs(value)
  %1866 = fmul fast float %403, %35
  %1867 = fmul fast float %404, %36
  %1868 = fmul fast float %1865, %398
  %1869 = fmul fast float %399, %1865
  %1870 = fsub fast float -0.000000e+00, %1869
  %1871 = fdiv fast float 5.000000e+01, %1868
  %1872 = fdiv fast float 5.000000e+01, %1870
  %1873 = call float @dx.op.binary.f32(i32 36, float %1866, float %1871)  ; FMin(a,b)
  %1874 = call float @dx.op.binary.f32(i32 36, float %1867, float %1872)  ; FMin(a,b)
  %1875 = fmul fast float %1807, %396
  %1876 = fmul fast float %1808, %397
  %1877 = fsub fast float %1875, %398
  %1878 = fsub fast float %1876, %399
  %1879 = fmul fast float %1865, %1877
  %1880 = fmul fast float %1865, %1878
  %1881 = fsub fast float -0.000000e+00, %1879
  %1882 = fsub fast float -0.000000e+00, %1880
  %1883 = fsub fast float -0.000000e+00, %1865
  %1884 = call float @dx.op.dot3.f32(i32 55, float %1881, float %1882, float %1883, float %1881, float %1882, float %1883)  ; Dot3(ax,ay,az,bx,by,bz)
  %1885 = call float @dx.op.unary.f32(i32 25, float %1884)  ; Rsqrt(value)
  %1886 = fmul fast float %1885, %1881
  %1887 = fmul fast float %1885, %1882
  %1888 = fmul fast float %1885, %1883
  %1889 = fmul fast float %1865, 0x3FEFEB8520000000
  %1890 = fmul fast float %1873, %40
  %1891 = fmul fast float %1874, %41
  %1892 = fmul fast float %1890, %1890
  %1893 = fmul fast float %1891, %1891
  %1894 = fadd fast float %1893, %1892
  %1895 = call float @dx.op.unary.f32(i32 24, float %1894)  ; Sqrt(value)
  %1896 = fmul fast float %1895, 3.125000e-02
  br label %1897

; <label>:1897                                    ; preds = %2083, %1810
  %1898 = phi float [ %2189, %2083 ], [ 0.000000e+00, %1810 ]
  %1899 = phi i32 [ %2190, %2083 ], [ 0, %1810 ]
  %1900 = phi float [ %2185, %2083 ], [ 0.000000e+00, %1810 ]
  %1901 = sitofp i32 %1899 to float
  %1902 = fadd fast float %1901, %499
  %1903 = fmul fast float %1902, 0x3FC921FB60000000
  %1904 = call float @dx.op.unary.f32(i32 12, float %1903)  ; Cos(value)
  %1905 = call float @dx.op.unary.f32(i32 13, float %1903)  ; Sin(value)
  %1906 = fsub fast float -0.000000e+00, %1905
  %1907 = call float @dx.op.dot3.f32(i32 55, float %1886, float %1887, float %1888, float %1858, float %1861, float %1864)  ; Dot3(ax,ay,az,bx,by,bz)
  %1908 = call float @dx.op.unary.f32(i32 6, float %1907)  ; FAbs(value)
  %1909 = call float @dx.op.unary.f32(i32 6, float %1908)  ; FAbs(value)
  %1910 = fcmp fast ogt float %1909, 0x3EB0C6F7A0000000
  %1911 = call float @dx.op.dot3.f32(i32 55, float %1904, float %1906, float 0.000000e+00, float %1858, float %1861, float %1864)  ; Dot3(ax,ay,az,bx,by,bz)
  %1912 = fsub fast float -0.000000e+00, %1911
  %1913 = fdiv fast float %1912, %1908
  %1914 = select i1 %1910, float %1913, float 0.000000e+00
  %1915 = fmul fast float %1914, %1914
  %1916 = fadd fast float %1915, 1.000000e+00
  %1917 = call float @dx.op.unary.f32(i32 25, float %1916)  ; Rsqrt(value)
  %1918 = fmul fast float %1914, %1917
  br label %1919

; <label>:1919                                    ; preds = %1919, %1897
  %1920 = phi float [ %1997, %1919 ], [ %1918, %1897 ]
  %1921 = phi float [ %1985, %1919 ], [ 2.000000e+02, %1897 ]
  %1922 = phi i32 [ %1998, %1919 ], [ 0, %1897 ]
  %1923 = sitofp i32 %1922 to float
  %1924 = fadd fast float %1923, %520
  %1925 = fmul fast float %1924, 6.250000e-02
  %1926 = fmul fast float %1925, %1925
  %1927 = fmul fast float %1926, %1896
  %1928 = call float @dx.op.binary.f32(i32 36, float %1927, float 3.000000e+00)  ; FMin(a,b)
  %1929 = fadd fast float %1928, 1.000000e+00
  %1930 = fmul fast float %1926, %1873
  %1931 = fmul fast float %1926, %1874
  %1932 = fadd fast float %1930, %44
  %1933 = fmul fast float %1932, %1904
  %1934 = fadd fast float %1933, %1807
  %1935 = fadd fast float %1931, %45
  %1936 = fmul fast float %1935, %1905
  %1937 = fadd fast float %1936, %1808
  %1938 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %13, float %1934, float %1937, float undef, float undef, i32 0, i32 0, i32 undef, float %1929)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1939 = extractvalue %dx.types.ResRet.f32 %1938, 0
  %1940 = fcmp fast ogt float %1939, -1.000000e+00
  %1941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1942 = extractvalue %dx.types.CBufRet.f32 %1941, 1
  %1943 = select i1 %1940, float %1942, float 1.000000e+00
  %1944 = fadd fast float %1939, 1.000000e+00
  %1945 = fmul fast float %1943, %1944
  %1946 = call float @dx.op.unary.f32(i32 6, float %1945)  ; FAbs(value)
  %1947 = fmul fast float %1934, %396
  %1948 = fmul fast float %1937, %397
  %1949 = fsub fast float %1947, %398
  %1950 = fsub fast float %1948, %399
  %1951 = fmul fast float %1949, %1946
  %1952 = fmul fast float %1950, %1946
  %1953 = fsub fast float %1951, %1879
  %1954 = fsub fast float %1952, %1880
  %1955 = fsub fast float %1946, %1889
  %1956 = call float @dx.op.dot3.f32(i32 55, float %1953, float %1954, float %1955, float %1953, float %1954, float %1955)  ; Dot3(ax,ay,az,bx,by,bz)
  %1957 = call float @dx.op.dot3.f32(i32 55, float %1953, float %1954, float %1955, float %1858, float %1861, float %1864)  ; Dot3(ax,ay,az,bx,by,bz)
  %1958 = fsub fast float -0.000000e+00, %1957
  %1959 = call float @dx.op.dot3.f32(i32 55, float %1953, float %1954, float %1955, float %1886, float %1887, float %1888)  ; Dot3(ax,ay,az,bx,by,bz)
  %1960 = call float @dx.op.unary.f32(i32 25, float %1956)  ; Rsqrt(value)
  %1961 = fmul fast float %1960, %1959
  %1962 = bitcast float %1956 to i32
  %1963 = ashr i32 %1962, 1
  %1964 = add nsw i32 %1963, 532487669
  %1965 = bitcast i32 %1964 to float
  %1966 = fmul fast float %1965, 0x3F947AE140000000
  %1967 = fsub fast float 2.000000e+00, %1966
  %1968 = call float @dx.op.unary.f32(i32 7, float %1967)  ; Saturate(value)
  %1969 = fmul fast float %1965, 0x3F7B4E81C0000000
  %1970 = fsub fast float 0x3FF5555560000000, %1969
  %1971 = call float @dx.op.unary.f32(i32 7, float %1970)  ; Saturate(value)
  %1972 = fmul fast float %1946, 0x3F947AE140000000
  %1973 = fadd fast float %1972, -1.000000e+00
  %1974 = call float @dx.op.unary.f32(i32 7, float %1973)  ; Saturate(value)
  %1975 = fsub fast float %1971, %1968
  %1976 = fmul fast float %1974, %1975
  %1977 = fadd fast float %1976, %1968
  %1978 = fmul fast float %1945, %1798
  %1979 = fcmp fast ogt float %1978, 0.000000e+00
  %1980 = select i1 %1979, float %1977, float 0.000000e+00
  %1981 = fadd fast float %1961, 1.000000e+00
  %1982 = fmul fast float %1980, %1981
  %1983 = fadd fast float %1982, -1.000000e+00
  %1984 = fcmp fast ogt float %1983, %1920
  %1985 = select i1 %1984, float %1958, float %1921
  %1986 = fsub fast float %1958, %1985
  %1987 = fmul fast float %1986, 0x3FB9999940000000
  %1988 = fadd fast float %1987, 0xBFDFFFFF80000000
  %1989 = call float @dx.op.unary.f32(i32 7, float %1988)  ; Saturate(value)
  %1990 = fmul fast float %1957, 0x3FC99999E0000000
  %1991 = fadd fast float %1990, 0x3FF0000020000000
  %1992 = call float @dx.op.unary.f32(i32 7, float %1991)  ; Saturate(value)
  %1993 = fmul fast float %1989, 2.500000e-01
  %1994 = fmul fast float %1993, %1992
  %1995 = fsub fast float %1920, %1994
  %1996 = fcmp ole float %1983, %1995
  %1997 = select i1 %1996, float %1995, float %1983
  %1998 = add nuw nsw i32 %1922, 1
  %1999 = icmp eq i32 %1998, 16
  br i1 %1999, label %2000, label %1919

; <label>:2000                                    ; preds = %1919
  %2001 = fsub fast float -0.000000e+00, %1918
  br label %2002

; <label>:2002                                    ; preds = %2002, %2000
  %2003 = phi float [ %2080, %2002 ], [ %2001, %2000 ]
  %2004 = phi float [ %2068, %2002 ], [ 2.000000e+02, %2000 ]
  %2005 = phi i32 [ %2081, %2002 ], [ 0, %2000 ]
  %2006 = sitofp i32 %2005 to float
  %2007 = fadd fast float %2006, %520
  %2008 = fmul fast float %2007, 6.250000e-02
  %2009 = fmul fast float %2008, %2008
  %2010 = fmul fast float %2009, %1896
  %2011 = call float @dx.op.binary.f32(i32 36, float %2010, float 3.000000e+00)  ; FMin(a,b)
  %2012 = fadd fast float %2011, 1.000000e+00
  %2013 = fmul fast float %2009, %1873
  %2014 = fmul fast float %2009, %1874
  %2015 = fadd fast float %2013, %44
  %2016 = fmul fast float %1904, %2015
  %2017 = fsub fast float %1807, %2016
  %2018 = fadd fast float %2014, %45
  %2019 = fmul fast float %1905, %2018
  %2020 = fsub fast float %1808, %2019
  %2021 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %13, float %2017, float %2020, float undef, float undef, i32 0, i32 0, i32 undef, float %2012)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2022 = extractvalue %dx.types.ResRet.f32 %2021, 0
  %2023 = fcmp fast ogt float %2022, -1.000000e+00
  %2024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %2025 = extractvalue %dx.types.CBufRet.f32 %2024, 1
  %2026 = select i1 %2023, float %2025, float 1.000000e+00
  %2027 = fadd fast float %2022, 1.000000e+00
  %2028 = fmul fast float %2026, %2027
  %2029 = call float @dx.op.unary.f32(i32 6, float %2028)  ; FAbs(value)
  %2030 = fmul fast float %2017, %396
  %2031 = fmul fast float %2020, %397
  %2032 = fsub fast float %2030, %398
  %2033 = fsub fast float %2031, %399
  %2034 = fmul fast float %2032, %2029
  %2035 = fmul fast float %2033, %2029
  %2036 = fsub fast float %2034, %1879
  %2037 = fsub fast float %2035, %1880
  %2038 = fsub fast float %2029, %1889
  %2039 = call float @dx.op.dot3.f32(i32 55, float %2036, float %2037, float %2038, float %2036, float %2037, float %2038)  ; Dot3(ax,ay,az,bx,by,bz)
  %2040 = call float @dx.op.dot3.f32(i32 55, float %2036, float %2037, float %2038, float %1858, float %1861, float %1864)  ; Dot3(ax,ay,az,bx,by,bz)
  %2041 = fsub fast float -0.000000e+00, %2040
  %2042 = call float @dx.op.dot3.f32(i32 55, float %2036, float %2037, float %2038, float %1886, float %1887, float %1888)  ; Dot3(ax,ay,az,bx,by,bz)
  %2043 = call float @dx.op.unary.f32(i32 25, float %2039)  ; Rsqrt(value)
  %2044 = fmul fast float %2043, %2042
  %2045 = bitcast float %2039 to i32
  %2046 = ashr i32 %2045, 1
  %2047 = add nsw i32 %2046, 532487669
  %2048 = bitcast i32 %2047 to float
  %2049 = fmul fast float %2048, 0x3F947AE140000000
  %2050 = fsub fast float 2.000000e+00, %2049
  %2051 = call float @dx.op.unary.f32(i32 7, float %2050)  ; Saturate(value)
  %2052 = fmul fast float %2048, 0x3F7B4E81C0000000
  %2053 = fsub fast float 0x3FF5555560000000, %2052
  %2054 = call float @dx.op.unary.f32(i32 7, float %2053)  ; Saturate(value)
  %2055 = fmul fast float %2029, 0x3F947AE140000000
  %2056 = fadd fast float %2055, -1.000000e+00
  %2057 = call float @dx.op.unary.f32(i32 7, float %2056)  ; Saturate(value)
  %2058 = fsub fast float %2054, %2051
  %2059 = fmul fast float %2057, %2058
  %2060 = fadd fast float %2059, %2051
  %2061 = fmul fast float %2028, %1798
  %2062 = fcmp fast ogt float %2061, 0.000000e+00
  %2063 = select i1 %2062, float %2060, float 0.000000e+00
  %2064 = fadd fast float %2044, 1.000000e+00
  %2065 = fmul fast float %2063, %2064
  %2066 = fadd fast float %2065, -1.000000e+00
  %2067 = fcmp fast ogt float %2066, %2003
  %2068 = select i1 %2067, float %2041, float %2004
  %2069 = fsub fast float %2041, %2068
  %2070 = fmul fast float %2069, 0x3FB9999940000000
  %2071 = fadd fast float %2070, 0xBFDFFFFF80000000
  %2072 = call float @dx.op.unary.f32(i32 7, float %2071)  ; Saturate(value)
  %2073 = fmul fast float %2040, 0x3FC99999E0000000
  %2074 = fadd fast float %2073, 0x3FF0000020000000
  %2075 = call float @dx.op.unary.f32(i32 7, float %2074)  ; Saturate(value)
  %2076 = fmul fast float %2072, 2.500000e-01
  %2077 = fmul fast float %2076, %2075
  %2078 = fsub fast float %2003, %2077
  %2079 = fcmp ole float %2066, %2078
  %2080 = select i1 %2079, float %2078, float %2066
  %2081 = add nuw nsw i32 %2005, 1
  %2082 = icmp eq i32 %2081, 16
  br i1 %2082, label %2083, label %2002

; <label>:2083                                    ; preds = %2002
  %2084 = fmul fast float %1888, %1906
  %2085 = fmul fast float %1888, %1904
  %2086 = fsub fast float -0.000000e+00, %2085
  %2087 = fmul fast float %1904, %1887
  %2088 = fmul fast float %1886, %1906
  %2089 = fsub fast float %2087, %2088
  %2090 = call float @dx.op.dot3.f32(i32 55, float %1858, float %1861, float %1864, float %2084, float %2086, float %2089)  ; Dot3(ax,ay,az,bx,by,bz)
  %2091 = fmul fast float %2090, %2084
  %2092 = fmul fast float %2090, %2086
  %2093 = fmul fast float %2090, %2089
  %2094 = fsub fast float %1858, %2091
  %2095 = fsub fast float %1861, %2092
  %2096 = fsub fast float %1864, %2093
  %2097 = fmul fast float %2094, %2094
  %2098 = fmul fast float %2095, %2095
  %2099 = fadd fast float %2097, %2098
  %2100 = fmul fast float %2096, %2096
  %2101 = fadd fast float %2099, %2100
  %2102 = call float @dx.op.unary.f32(i32 24, float %2101)  ; Sqrt(value)
  %2103 = call float @dx.op.dot3.f32(i32 55, float %1904, float %1906, float 0.000000e+00, float %2094, float %2095, float %2096)  ; Dot3(ax,ay,az,bx,by,bz)
  %2104 = call float @dx.op.dot3.f32(i32 55, float %1904, float %1906, float 0.000000e+00, float %1886, float %1887, float %1888)  ; Dot3(ax,ay,az,bx,by,bz)
  %2105 = fmul fast float %2104, %1886
  %2106 = fmul fast float %2104, %1887
  %2107 = fmul fast float %2104, %1888
  %2108 = call float @dx.op.dot3.f32(i32 55, float %2105, float %2106, float %2107, float %2094, float %2095, float %2096)  ; Dot3(ax,ay,az,bx,by,bz)
  %2109 = fcmp fast oge float %2103, %2108
  %2110 = fdiv fast float 1.000000e+00, %2102
  %2111 = call float @dx.op.dot3.f32(i32 55, float %2094, float %2095, float %2096, float %1886, float %1887, float %1888)  ; Dot3(ax,ay,az,bx,by,bz)
  %2112 = fmul fast float %2111, %2110
  %2113 = call float @dx.op.unary.f32(i32 7, float %2112)  ; Saturate(value)
  %2114 = fmul fast float %2113, %2113
  %2115 = fsub fast float 1.000000e+00, %2114
  %2116 = bitcast float %2115 to i32
  %2117 = ashr i32 %2116, 1
  %2118 = add nsw i32 %2117, 532487669
  %2119 = bitcast i32 %2118 to float
  %2120 = call float @dx.op.unary.f32(i32 6, float %2113)  ; FAbs(value)
  %2121 = fmul fast float %2120, 0x3FC40AE960000000
  %2122 = fsub fast float 0x3FF921FB60000000, %2121
  %2123 = fsub fast float 1.000000e+00, %2120
  %2124 = bitcast float %2123 to i32
  %2125 = ashr i32 %2124, 1
  %2126 = add nsw i32 %2125, 532487669
  %2127 = bitcast i32 %2126 to float
  %2128 = fmul fast float %2127, %2122
  %2129 = fcmp fast oge float %2113, 0.000000e+00
  %2130 = fsub fast float 0x400921FB60000000, %2128
  %2131 = select i1 %2129, float %2128, float %2130
  %2132 = fsub fast float -0.000000e+00, %2119
  %2133 = select i1 %2109, float %2132, float %2119
  %2134 = fsub fast float -0.000000e+00, %2131
  %2135 = select i1 %2109, float %2134, float %2131
  %2136 = call float @dx.op.unary.f32(i32 6, float %1997)  ; FAbs(value)
  %2137 = fmul fast float %2136, 0x3FC40AE960000000
  %2138 = fsub fast float 0x3FF921FB60000000, %2137
  %2139 = fsub fast float 1.000000e+00, %2136
  %2140 = bitcast float %2139 to i32
  %2141 = ashr i32 %2140, 1
  %2142 = add nsw i32 %2141, 532487669
  %2143 = bitcast i32 %2142 to float
  %2144 = fmul fast float %2143, %2138
  %2145 = fcmp fast oge float %1997, 0.000000e+00
  %2146 = fsub fast float 0x400921FB60000000, %2144
  %2147 = select i1 %2145, float %2144, float %2146
  %2148 = call float @dx.op.unary.f32(i32 6, float %2080)  ; FAbs(value)
  %2149 = fmul fast float %2148, 0x3FC40AE960000000
  %2150 = fsub fast float 0x3FF921FB60000000, %2149
  %2151 = fsub fast float 1.000000e+00, %2148
  %2152 = bitcast float %2151 to i32
  %2153 = ashr i32 %2152, 1
  %2154 = add nsw i32 %2153, 532487669
  %2155 = bitcast i32 %2154 to float
  %2156 = fmul fast float %2155, %2150
  %2157 = fcmp fast oge float %2080, 0.000000e+00
  %2158 = fsub fast float 0x400921FB60000000, %2156
  %2159 = select i1 %2157, float %2156, float %2158
  %2160 = fsub fast float -0.000000e+00, %2135
  %2161 = fsub fast float %2160, %2147
  %2162 = call float @dx.op.binary.f32(i32 35, float %2161, float 0xBFF921FB60000000)  ; FMax(a,b)
  %2163 = call float @dx.op.binary.f32(i32 36, float %2162, float 0x3FF921FB60000000)  ; FMin(a,b)
  %2164 = fadd fast float %2135, %2163
  %2165 = fsub fast float %2159, %2135
  %2166 = call float @dx.op.binary.f32(i32 35, float %2165, float 0xBFF921FB60000000)  ; FMax(a,b)
  %2167 = call float @dx.op.binary.f32(i32 36, float %2166, float 0x3FF921FB60000000)  ; FMin(a,b)
  %2168 = fadd fast float %2135, %2167
  %2169 = fmul fast float %2164, 2.000000e+00
  %2170 = fsub fast float %2169, %2135
  %2171 = call float @dx.op.unary.f32(i32 12, float %2170)  ; Cos(value)
  %2172 = fsub fast float -0.000000e+00, %2171
  %2173 = fmul fast float %2168, 2.000000e+00
  %2174 = fsub fast float %2173, %2135
  %2175 = call float @dx.op.unary.f32(i32 12, float %2174)  ; Cos(value)
  %2176 = fmul fast float %2113, 2.000000e+00
  %2177 = fadd fast float %2168, %2164
  %2178 = fmul fast float %2133, %2177
  %2179 = fmul fast float %2178, 2.000000e+00
  %2180 = fsub fast float %2172, %2175
  %2181 = fadd fast float %2180, %2176
  %2182 = fadd fast float %2181, %2179
  %2183 = fmul fast float %2102, 2.500000e-01
  %2184 = fmul fast float %2183, %2182
  %2185 = fadd fast float %2184, %1900
  %2186 = fmul fast float %2135, %2133
  %2187 = fadd fast float %2186, %2113
  %2188 = fmul fast float %2187, %2102
  %2189 = fadd fast float %2188, %1898
  %2190 = add nuw nsw i32 %1899, 1
  %2191 = icmp eq i32 %2190, 16
  br i1 %2191, label %2192, label %1897

; <label>:2192                                    ; preds = %2083
  %2193 = fdiv fast float %2185, %2189
  br label %2194

; <label>:2194                                    ; preds = %2192, %1792, %1789
  %2195 = phi float [ %923, %1789 ], [ %2193, %2192 ], [ 1.000000e+00, %1792 ]
  %2196 = load float, float* %409, align 4
  %2197 = load float, float* %410, align 4
  %2198 = load float, float* %411, align 4
  %2199 = load float, float* %412, align 4
  %2200 = icmp eq i32 %980, 2
  br i1 %2200, label %2201, label %2226, !dx.controlflow.hints !64

; <label>:2201                                    ; preds = %2194
  %2202 = getelementptr inbounds [4 x float], [4 x float]* %21, i32 0, i32 0
  store float %2196, float* %2202, align 4
  %2203 = getelementptr inbounds [4 x float], [4 x float]* %21, i32 0, i32 1
  store float %2197, float* %2203, align 4
  %2204 = getelementptr inbounds [4 x float], [4 x float]* %21, i32 0, i32 2
  store float %2198, float* %2204, align 4
  %2205 = getelementptr inbounds [4 x float], [4 x float]* %21, i32 0, i32 3
  store float %2199, float* %2205, align 4
  %2206 = getelementptr [4 x float], [4 x float]* %21, i32 0, i32 %429
  %2207 = load float, float* %2206, align 4, !tbaa !31, !noalias !65
  %2208 = fsub fast float %2207, %438
  %2209 = call float @dx.op.unary.f32(i32 6, float %2208)  ; FAbs(value)
  %2210 = fsub fast float %2207, %440
  %2211 = call float @dx.op.unary.f32(i32 6, float %2210)  ; FAbs(value)
  %2212 = fcmp fast olt float %2209, %2211
  %2213 = select i1 %2212, float %923, float %1385
  %2214 = getelementptr inbounds [4 x float], [4 x float]* %20, i32 0, i32 0
  store float %2196, float* %2214, align 4
  %2215 = getelementptr inbounds [4 x float], [4 x float]* %20, i32 0, i32 1
  store float %2197, float* %2215, align 4
  %2216 = getelementptr inbounds [4 x float], [4 x float]* %20, i32 0, i32 2
  store float %2198, float* %2216, align 4
  %2217 = getelementptr inbounds [4 x float], [4 x float]* %20, i32 0, i32 3
  store float %2199, float* %2217, align 4
  %2218 = getelementptr [4 x float], [4 x float]* %20, i32 0, i32 %436
  %2219 = load float, float* %2218, align 4, !tbaa !31, !noalias !72
  %2220 = fsub fast float %2219, %438
  %2221 = call float @dx.op.unary.f32(i32 6, float %2220)  ; FAbs(value)
  %2222 = fsub fast float %2219, %440
  %2223 = call float @dx.op.unary.f32(i32 6, float %2222)  ; FAbs(value)
  %2224 = fcmp fast olt float %2221, %2223
  %2225 = select i1 %2224, float %923, float %1385
  br label %2241

; <label>:2226                                    ; preds = %2194
  %2227 = icmp eq i32 %980, 3
  br i1 %2227, label %2228, label %2241, !dx.controlflow.hints !76

; <label>:2228                                    ; preds = %2226
  %2229 = getelementptr inbounds [4 x float], [4 x float]* %19, i32 0, i32 0
  store float %2196, float* %2229, align 4
  %2230 = getelementptr inbounds [4 x float], [4 x float]* %19, i32 0, i32 1
  store float %2197, float* %2230, align 4
  %2231 = getelementptr inbounds [4 x float], [4 x float]* %19, i32 0, i32 2
  store float %2198, float* %2231, align 4
  %2232 = getelementptr inbounds [4 x float], [4 x float]* %19, i32 0, i32 3
  store float %2199, float* %2232, align 4
  %2233 = getelementptr [4 x float], [4 x float]* %19, i32 0, i32 %436
  %2234 = load float, float* %2233, align 4, !tbaa !31, !noalias !77
  %2235 = fsub fast float %2234, %438
  %2236 = call float @dx.op.unary.f32(i32 6, float %2235)  ; FAbs(value)
  %2237 = fsub fast float %2234, %440
  %2238 = call float @dx.op.unary.f32(i32 6, float %2237)  ; FAbs(value)
  %2239 = fcmp fast olt float %2236, %2238
  %2240 = select i1 %2239, float %923, float %1385
  br label %2241

; <label>:2241                                    ; preds = %2228, %2226, %2201
  %2242 = phi float [ %2240, %2228 ], [ %2195, %2226 ], [ %2225, %2201 ]
  %2243 = phi float [ %1790, %2228 ], [ %1790, %2226 ], [ %2213, %2201 ]
  %2244 = icmp eq i32 %428, 1
  %2245 = select i1 %2244, float %923, float %1385
  %2246 = icmp eq i32 %428, 2
  %2247 = select i1 %2246, float %923, float %2243
  %2248 = icmp eq i32 %428, 3
  %2249 = select i1 %2248, float %923, float %2242
  %2250 = icmp eq i32 %435, 0
  %2251 = select i1 %2250, float %1385, float %923
  %2252 = icmp eq i32 %435, 1
  %2253 = select i1 %2252, float %1385, float %2245
  %2254 = icmp eq i32 %435, 2
  %2255 = select i1 %2254, float %1385, float %2247
  %2256 = icmp eq i32 %435, 3
  %2257 = select i1 %2256, float %1385, float %2249
  %2258 = icmp eq i32 %429, 0
  %2259 = select i1 %2258, float %2243, float %2251
  %2260 = icmp eq i32 %429, 1
  %2261 = select i1 %2260, float %2243, float %2253
  %2262 = icmp eq i32 %429, 2
  %2263 = select i1 %2262, float %2243, float %2255
  %2264 = icmp eq i32 %429, 3
  %2265 = select i1 %2264, float %2243, float %2257
  %2266 = icmp eq i32 %436, 0
  %2267 = select i1 %2266, float %2242, float %2259
  %2268 = icmp eq i32 %436, 1
  %2269 = select i1 %2268, float %2242, float %2261
  %2270 = icmp eq i32 %436, 2
  %2271 = select i1 %2270, float %2242, float %2263
  %2272 = icmp eq i32 %436, 3
  %2273 = select i1 %2272, float %2242, float %2265
  %2274 = fadd fast float %2267, -1.000000e+00
  %2275 = fadd fast float %2269, -1.000000e+00
  %2276 = fadd fast float %2271, -1.000000e+00
  %2277 = fadd fast float %2273, -1.000000e+00
  %2278 = fmul fast float %2274, %359
  %2279 = fmul fast float %2275, %359
  %2280 = fmul fast float %2276, %359
  %2281 = fmul fast float %2277, %359
  %2282 = fadd fast float %2278, 1.000000e+00
  %2283 = fadd fast float %2279, 1.000000e+00
  %2284 = fadd fast float %2280, 1.000000e+00
  %2285 = fadd fast float %2281, 1.000000e+00
  %2286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %2287 = extractvalue %dx.types.CBufRet.f32 %2286, 2
  %2288 = extractvalue %dx.types.CBufRet.f32 %2286, 3
  %2289 = fadd fast float %2287, %48
  %2290 = fadd fast float %2288, %49
  %2291 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %12, float %2289, float %2290, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2292 = extractvalue %dx.types.ResRet.f32 %2291, 0
  %2293 = call float @dx.op.binary.f32(i32 36, float %2292, float %2282)  ; FMin(a,b)
  %2294 = call float @dx.op.binary.f32(i32 36, float %2292, float %2283)  ; FMin(a,b)
  %2295 = call float @dx.op.binary.f32(i32 36, float %2292, float %2284)  ; FMin(a,b)
  %2296 = call float @dx.op.binary.f32(i32 36, float %2292, float %2285)  ; FMin(a,b)
  %2297 = fmul fast float %2292, %2282
  %2298 = fmul fast float %2292, %2283
  %2299 = fmul fast float %2292, %2284
  %2300 = fmul fast float %2292, %2285
  %2301 = fsub fast float %2293, %2297
  %2302 = fsub fast float %2294, %2298
  %2303 = fsub fast float %2295, %2299
  %2304 = fsub fast float %2296, %2300
  %2305 = fmul fast float %2301, 7.500000e-01
  %2306 = fmul fast float %2302, 7.500000e-01
  %2307 = fmul fast float %2303, 7.500000e-01
  %2308 = fmul fast float %2304, 7.500000e-01
  %2309 = fadd fast float %2305, %2297
  %2310 = fadd fast float %2306, %2298
  %2311 = fadd fast float %2307, %2299
  %2312 = fadd fast float %2308, %2300
  %2313 = fmul fast float %42, 5.000000e-01
  %2314 = fmul fast float %43, 5.000000e-01
  %2315 = fadd fast float %48, %2313
  %2316 = fadd fast float %49, %2314
  %2317 = fsub fast float %2315, %95
  %2318 = fsub fast float %2316, %96
  %2319 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %12, float %2317, float %2318, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2320 = extractvalue %dx.types.ResRet.f32 %2319, 0
  %2321 = fsub fast float %2320, %2309
  %2322 = fmul fast float %2321, %350
  %2323 = fadd fast float %2322, %2309
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %383, i32 %384, i32 undef, float %2323, float %2323, float %2323, float %2323, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %2324 = fptoui float %349 to i32
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2325 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %18
  store i32 %2324, i32 addrspace(3)* %2325, align 4, !tbaa !42
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2326 = icmp ult i32 %199, 32
  br i1 %2326, label %2327, label %2333, !dx.controlflow.hints !81

; <label>:2327                                    ; preds = %2241
  %2328 = add i32 %18, 32
  %2329 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2328
  %2330 = load i32, i32 addrspace(3)* %2329, align 4, !tbaa !42
  %2331 = load i32, i32 addrspace(3)* %2325, align 4, !tbaa !42
  %2332 = add i32 %2331, %2330
  store i32 %2332, i32 addrspace(3)* %2325, align 4, !tbaa !42
  br label %2333

; <label>:2333                                    ; preds = %2327, %2241
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %2334 = icmp ult i32 %199, 16
  br i1 %2334, label %2335, label %2341, !dx.controlflow.hints !82

; <label>:2335                                    ; preds = %2333
  %2336 = add i32 %18, 16
  %2337 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2336
  %2338 = load i32, i32 addrspace(3)* %2337, align 4, !tbaa !42
  %2339 = load i32, i32 addrspace(3)* %2325, align 4, !tbaa !42
  %2340 = add i32 %2339, %2338
  store i32 %2340, i32 addrspace(3)* %2325, align 4, !tbaa !42
  br label %2341

; <label>:2341                                    ; preds = %2335, %2333
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %2342 = icmp ult i32 %199, 8
  br i1 %2342, label %2343, label %2349, !dx.controlflow.hints !83

; <label>:2343                                    ; preds = %2341
  %2344 = add i32 %18, 8
  %2345 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2344
  %2346 = load i32, i32 addrspace(3)* %2345, align 4, !tbaa !42
  %2347 = load i32, i32 addrspace(3)* %2325, align 4, !tbaa !42
  %2348 = add i32 %2347, %2346
  store i32 %2348, i32 addrspace(3)* %2325, align 4, !tbaa !42
  br label %2349

; <label>:2349                                    ; preds = %2343, %2341
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %2350 = icmp ult i32 %199, 4
  br i1 %2350, label %2351, label %2357, !dx.controlflow.hints !84

; <label>:2351                                    ; preds = %2349
  %2352 = add i32 %18, 4
  %2353 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2352
  %2354 = load i32, i32 addrspace(3)* %2353, align 4, !tbaa !42
  %2355 = load i32, i32 addrspace(3)* %2325, align 4, !tbaa !42
  %2356 = add i32 %2355, %2354
  store i32 %2356, i32 addrspace(3)* %2325, align 4, !tbaa !42
  br label %2357

; <label>:2357                                    ; preds = %2351, %2349
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %2358 = icmp ult i32 %199, 2
  br i1 %2358, label %2359, label %2365, !dx.controlflow.hints !85

; <label>:2359                                    ; preds = %2357
  %2360 = add i32 %18, 2
  %2361 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2360
  %2362 = load i32, i32 addrspace(3)* %2361, align 4, !tbaa !42
  %2363 = load i32, i32 addrspace(3)* %2325, align 4, !tbaa !42
  %2364 = add i32 %2363, %2362
  store i32 %2364, i32 addrspace(3)* %2325, align 4, !tbaa !42
  br label %2365

; <label>:2365                                    ; preds = %2359, %2357
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %2366 = icmp eq i32 %199, 0
  br i1 %2366, label %2367, label %2373, !dx.controlflow.hints !86

; <label>:2367                                    ; preds = %2365
  %2368 = add i32 %18, 1
  %2369 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2368
  %2370 = load i32, i32 addrspace(3)* %2369, align 4, !tbaa !42
  %2371 = load i32, i32 addrspace(3)* %2325, align 4, !tbaa !42
  %2372 = add i32 %2371, %2370
  store i32 %2372, i32 addrspace(3)* %2325, align 4, !tbaa !42
  br label %2373

; <label>:2373                                    ; preds = %2367, %2365
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2374 = and i32 %18, -64
  %2375 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2374
  %2376 = load i32, i32 addrspace(3)* %2375, align 4, !tbaa !42
  %2377 = fmul fast float %42, 1.500000e+00
  %2378 = fadd fast float %48, %2377
  %2379 = fsub fast float %2378, %95
  %2380 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %12, float %2379, float %2318, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2381 = extractvalue %dx.types.ResRet.f32 %2380, 0
  %2382 = fsub fast float %2381, %2310
  %2383 = fmul fast float %2382, %350
  %2384 = fadd fast float %2383, %2310
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %387, i32 %384, i32 undef, float %2384, float %2384, float %2384, float %2384, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %2324, i32 addrspace(3)* %2325, align 4, !tbaa !42
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %2326, label %2385, label %2391, !dx.controlflow.hints !81

; <label>:2385                                    ; preds = %2373
  %2386 = add i32 %18, 32
  %2387 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2386
  %2388 = load i32, i32 addrspace(3)* %2387, align 4, !tbaa !42
  %2389 = load i32, i32 addrspace(3)* %2325, align 4, !tbaa !42
  %2390 = add i32 %2389, %2388
  store i32 %2390, i32 addrspace(3)* %2325, align 4, !tbaa !42
  br label %2391

; <label>:2391                                    ; preds = %2385, %2373
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2334, label %2392, label %2398, !dx.controlflow.hints !82

; <label>:2392                                    ; preds = %2391
  %2393 = add i32 %18, 16
  %2394 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2393
  %2395 = load i32, i32 addrspace(3)* %2394, align 4, !tbaa !42
  %2396 = load i32, i32 addrspace(3)* %2325, align 4, !tbaa !42
  %2397 = add i32 %2396, %2395
  store i32 %2397, i32 addrspace(3)* %2325, align 4, !tbaa !42
  br label %2398

; <label>:2398                                    ; preds = %2392, %2391
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2342, label %2399, label %2405, !dx.controlflow.hints !83

; <label>:2399                                    ; preds = %2398
  %2400 = add i32 %18, 8
  %2401 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2400
  %2402 = load i32, i32 addrspace(3)* %2401, align 4, !tbaa !42
  %2403 = load i32, i32 addrspace(3)* %2325, align 4, !tbaa !42
  %2404 = add i32 %2403, %2402
  store i32 %2404, i32 addrspace(3)* %2325, align 4, !tbaa !42
  br label %2405

; <label>:2405                                    ; preds = %2399, %2398
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2350, label %2406, label %2412, !dx.controlflow.hints !84

; <label>:2406                                    ; preds = %2405
  %2407 = add i32 %18, 4
  %2408 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2407
  %2409 = load i32, i32 addrspace(3)* %2408, align 4, !tbaa !42
  %2410 = load i32, i32 addrspace(3)* %2325, align 4, !tbaa !42
  %2411 = add i32 %2410, %2409
  store i32 %2411, i32 addrspace(3)* %2325, align 4, !tbaa !42
  br label %2412

; <label>:2412                                    ; preds = %2406, %2405
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2358, label %2413, label %2419, !dx.controlflow.hints !85

; <label>:2413                                    ; preds = %2412
  %2414 = add i32 %18, 2
  %2415 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2414
  %2416 = load i32, i32 addrspace(3)* %2415, align 4, !tbaa !42
  %2417 = load i32, i32 addrspace(3)* %2325, align 4, !tbaa !42
  %2418 = add i32 %2417, %2416
  store i32 %2418, i32 addrspace(3)* %2325, align 4, !tbaa !42
  br label %2419

; <label>:2419                                    ; preds = %2413, %2412
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2366, label %2420, label %2426, !dx.controlflow.hints !86

; <label>:2420                                    ; preds = %2419
  %2421 = add i32 %18, 1
  %2422 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2421
  %2423 = load i32, i32 addrspace(3)* %2422, align 4, !tbaa !42
  %2424 = load i32, i32 addrspace(3)* %2325, align 4, !tbaa !42
  %2425 = add i32 %2424, %2423
  store i32 %2425, i32 addrspace(3)* %2325, align 4, !tbaa !42
  br label %2426

; <label>:2426                                    ; preds = %2420, %2419
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2427 = load i32, i32 addrspace(3)* %2375, align 4, !tbaa !42
  %2428 = add i32 %2427, %2376
  %2429 = fmul fast float %43, 1.500000e+00
  %2430 = fadd fast float %49, %2429
  %2431 = fsub fast float %2430, %96
  %2432 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %12, float %2317, float %2431, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2433 = extractvalue %dx.types.ResRet.f32 %2432, 0
  %2434 = fsub fast float %2433, %2311
  %2435 = fmul fast float %2434, %350
  %2436 = fadd fast float %2435, %2311
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %383, i32 %390, i32 undef, float %2436, float %2436, float %2436, float %2436, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %2324, i32 addrspace(3)* %2325, align 4, !tbaa !42
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %2326, label %2437, label %2443, !dx.controlflow.hints !81

; <label>:2437                                    ; preds = %2426
  %2438 = add i32 %18, 32
  %2439 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2438
  %2440 = load i32, i32 addrspace(3)* %2439, align 4, !tbaa !42
  %2441 = load i32, i32 addrspace(3)* %2325, align 4, !tbaa !42
  %2442 = add i32 %2441, %2440
  store i32 %2442, i32 addrspace(3)* %2325, align 4, !tbaa !42
  br label %2443

; <label>:2443                                    ; preds = %2437, %2426
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2334, label %2444, label %2450, !dx.controlflow.hints !82

; <label>:2444                                    ; preds = %2443
  %2445 = add i32 %18, 16
  %2446 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2445
  %2447 = load i32, i32 addrspace(3)* %2446, align 4, !tbaa !42
  %2448 = load i32, i32 addrspace(3)* %2325, align 4, !tbaa !42
  %2449 = add i32 %2448, %2447
  store i32 %2449, i32 addrspace(3)* %2325, align 4, !tbaa !42
  br label %2450

; <label>:2450                                    ; preds = %2444, %2443
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2342, label %2451, label %2457, !dx.controlflow.hints !83

; <label>:2451                                    ; preds = %2450
  %2452 = add i32 %18, 8
  %2453 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2452
  %2454 = load i32, i32 addrspace(3)* %2453, align 4, !tbaa !42
  %2455 = load i32, i32 addrspace(3)* %2325, align 4, !tbaa !42
  %2456 = add i32 %2455, %2454
  store i32 %2456, i32 addrspace(3)* %2325, align 4, !tbaa !42
  br label %2457

; <label>:2457                                    ; preds = %2451, %2450
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2350, label %2458, label %2464, !dx.controlflow.hints !84

; <label>:2458                                    ; preds = %2457
  %2459 = add i32 %18, 4
  %2460 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2459
  %2461 = load i32, i32 addrspace(3)* %2460, align 4, !tbaa !42
  %2462 = load i32, i32 addrspace(3)* %2325, align 4, !tbaa !42
  %2463 = add i32 %2462, %2461
  store i32 %2463, i32 addrspace(3)* %2325, align 4, !tbaa !42
  br label %2464

; <label>:2464                                    ; preds = %2458, %2457
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2358, label %2465, label %2471, !dx.controlflow.hints !85

; <label>:2465                                    ; preds = %2464
  %2466 = add i32 %18, 2
  %2467 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2466
  %2468 = load i32, i32 addrspace(3)* %2467, align 4, !tbaa !42
  %2469 = load i32, i32 addrspace(3)* %2325, align 4, !tbaa !42
  %2470 = add i32 %2469, %2468
  store i32 %2470, i32 addrspace(3)* %2325, align 4, !tbaa !42
  br label %2471

; <label>:2471                                    ; preds = %2465, %2464
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2366, label %2472, label %2478, !dx.controlflow.hints !86

; <label>:2472                                    ; preds = %2471
  %2473 = add i32 %18, 1
  %2474 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2473
  %2475 = load i32, i32 addrspace(3)* %2474, align 4, !tbaa !42
  %2476 = load i32, i32 addrspace(3)* %2325, align 4, !tbaa !42
  %2477 = add i32 %2476, %2475
  store i32 %2477, i32 addrspace(3)* %2325, align 4, !tbaa !42
  br label %2478

; <label>:2478                                    ; preds = %2472, %2471
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2479 = load i32, i32 addrspace(3)* %2375, align 4, !tbaa !42
  %2480 = add i32 %2428, %2479
  %2481 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %12, float %2379, float %2431, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2482 = extractvalue %dx.types.ResRet.f32 %2481, 0
  %2483 = fsub fast float %2482, %2312
  %2484 = fmul fast float %2483, %350
  %2485 = fadd fast float %2484, %2312
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %387, i32 %390, i32 undef, float %2485, float %2485, float %2485, float %2485, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %2324, i32 addrspace(3)* %2325, align 4, !tbaa !42
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %2326, label %2486, label %2492, !dx.controlflow.hints !81

; <label>:2486                                    ; preds = %2478
  %2487 = add i32 %18, 32
  %2488 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2487
  %2489 = load i32, i32 addrspace(3)* %2488, align 4, !tbaa !42
  %2490 = load i32, i32 addrspace(3)* %2325, align 4, !tbaa !42
  %2491 = add i32 %2490, %2489
  store i32 %2491, i32 addrspace(3)* %2325, align 4, !tbaa !42
  br label %2492

; <label>:2492                                    ; preds = %2486, %2478
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2334, label %2493, label %2499, !dx.controlflow.hints !82

; <label>:2493                                    ; preds = %2492
  %2494 = add i32 %18, 16
  %2495 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2494
  %2496 = load i32, i32 addrspace(3)* %2495, align 4, !tbaa !42
  %2497 = load i32, i32 addrspace(3)* %2325, align 4, !tbaa !42
  %2498 = add i32 %2497, %2496
  store i32 %2498, i32 addrspace(3)* %2325, align 4, !tbaa !42
  br label %2499

; <label>:2499                                    ; preds = %2493, %2492
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2342, label %2500, label %2506, !dx.controlflow.hints !83

; <label>:2500                                    ; preds = %2499
  %2501 = add i32 %18, 8
  %2502 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2501
  %2503 = load i32, i32 addrspace(3)* %2502, align 4, !tbaa !42
  %2504 = load i32, i32 addrspace(3)* %2325, align 4, !tbaa !42
  %2505 = add i32 %2504, %2503
  store i32 %2505, i32 addrspace(3)* %2325, align 4, !tbaa !42
  br label %2506

; <label>:2506                                    ; preds = %2500, %2499
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2350, label %2507, label %2513, !dx.controlflow.hints !84

; <label>:2507                                    ; preds = %2506
  %2508 = add i32 %18, 4
  %2509 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2508
  %2510 = load i32, i32 addrspace(3)* %2509, align 4, !tbaa !42
  %2511 = load i32, i32 addrspace(3)* %2325, align 4, !tbaa !42
  %2512 = add i32 %2511, %2510
  store i32 %2512, i32 addrspace(3)* %2325, align 4, !tbaa !42
  br label %2513

; <label>:2513                                    ; preds = %2507, %2506
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2358, label %2514, label %2520, !dx.controlflow.hints !85

; <label>:2514                                    ; preds = %2513
  %2515 = add i32 %18, 2
  %2516 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2515
  %2517 = load i32, i32 addrspace(3)* %2516, align 4, !tbaa !42
  %2518 = load i32, i32 addrspace(3)* %2325, align 4, !tbaa !42
  %2519 = add i32 %2518, %2517
  store i32 %2519, i32 addrspace(3)* %2325, align 4, !tbaa !42
  br label %2520

; <label>:2520                                    ; preds = %2514, %2513
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2366, label %2521, label %2527, !dx.controlflow.hints !86

; <label>:2521                                    ; preds = %2520
  %2522 = add i32 %18, 1
  %2523 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2522
  %2524 = load i32, i32 addrspace(3)* %2523, align 4, !tbaa !42
  %2525 = load i32, i32 addrspace(3)* %2325, align 4, !tbaa !42
  %2526 = add i32 %2525, %2524
  store i32 %2526, i32 addrspace(3)* %2325, align 4, !tbaa !42
  br label %2527

; <label>:2527                                    ; preds = %2521, %2520
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2528 = load i32, i32 addrspace(3)* %2375, align 4, !tbaa !42
  %2529 = add i32 %2480, %2528
  %2530 = uitofp i32 %2529 to float
  %2531 = fmul fast float %2530, 0x3EF0101020000000
  br i1 %471, label %2532, label %2537, !dx.controlflow.hints !87

; <label>:2532                                    ; preds = %2527
  %2533 = fmul fast float %46, 1.250000e-01
  %2534 = fmul fast float %47, 1.250000e-01
  %2535 = fptoui float %2533 to i32
  %2536 = fptoui float %2534 to i32
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %2535, i32 %2536, i32 undef, float %2531, float %2531, float %2531, float %2531, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2537

; <label>:2537                                    ; preds = %2532, %2527
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #3

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { noduplicate nounwind }
attributes #3 = { nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!26}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !17, !20, !23}
!5 = !{!6, !8, !10, !11, !12, !13, !14, !15, !16}
!6 = !{i32 0, %"class.Texture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !9}
!9 = !{i32 0, i32 5}
!10 = !{i32 2, %"class.Texture2D<float>"* undef, !"", i32 0, i32 4, i32 1, i32 2, i32 0, !7}
!11 = !{i32 3, %"class.Texture2D<float>"* undef, !"", i32 0, i32 5, i32 1, i32 2, i32 0, !7}
!12 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 10, i32 1, i32 2, i32 0, !7}
!13 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!14 = !{i32 6, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 0, i32 7, i32 1, i32 2, i32 0, !7}
!15 = !{i32 7, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 2, i32 0, !7}
!16 = !{i32 8, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 6, i32 1, i32 2, i32 0, !7}
!17 = !{!18, !19}
!18 = !{i32 0, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!19 = !{i32 1, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!20 = !{!21, !22}
!21 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!22 = !{i32 1, %ConstantBufferGTAO0* undef, !"", i32 0, i32 0, i32 1, i32 96, null}
!23 = !{!24, !25}
!24 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!25 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!26 = !{void ()* @cs_gtao_cinematic_quality, !"cs_gtao_cinematic_quality", null, !4, !27}
!27 = !{i32 0, i64 256, i32 4, !28}
!28 = !{i32 8, i32 8, i32 1}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = !{!32, !32, i64 0}
!32 = !{!"float", !33, i64 0}
!33 = !{!"omnipotent char", !34, i64 0}
!34 = !{!"Simple C/C++ TBAA"}
!35 = !{!36, !38}
!36 = distinct !{!36, !37, !"\01?__GTAOQuadSortIndices@@YAXUGTAOQuadConfig@@V?$vector@M$03@@AIAV?$vector@I$03@@@Z: %quadIndices"}
!37 = distinct !{!37, !"\01?__GTAOQuadSortIndices@@YAXUGTAOQuadConfig@@V?$vector@M$03@@AIAV?$vector@I$03@@@Z"}
!38 = distinct !{!38, !39, !"\01?GTAOQuadMain@@YA?AUGTAOQuadOutput@@UGTAOQuadConfig@@UGTAOConfig@@V?$Texture2D@M@@V?$Texture2D@V?$vector@M$02@@@@USamplerState@@V?$vector@M$03@@V?$vector@M$01@@555IIV?$vector@I$03@@@Z: %agg.result"}
!39 = distinct !{!39, !"\01?GTAOQuadMain@@YA?AUGTAOQuadOutput@@UGTAOQuadConfig@@UGTAOConfig@@V?$Texture2D@M@@V?$Texture2D@V?$vector@M$02@@@@USamplerState@@V?$vector@M$03@@V?$vector@M$01@@555IIV?$vector@I$03@@@Z"}
!40 = !{!38}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = !{!43, !43, i64 0}
!43 = !{!"int", !33, i64 0}
!44 = !{!45, !47, !38}
!45 = distinct !{!45, !46, !"\01?__GTAOQuadCalculateForPixel@@YA?AUGTAOPixelOutput@@UGTAOQuadConfig@@UGTAOConfig@@V?$Texture2D@M@@V?$Texture2D@V?$vector@M$02@@@@USamplerState@@V?$vector@I$03@@V?$vector@M$03@@5V?$vector@M$01@@666I7AIAI@Z: %agg.result"}
!46 = distinct !{!46, !"\01?__GTAOQuadCalculateForPixel@@YA?AUGTAOPixelOutput@@UGTAOQuadConfig@@UGTAOConfig@@V?$Texture2D@M@@V?$Texture2D@V?$vector@M$02@@@@USamplerState@@V?$vector@I$03@@V?$vector@M$03@@5V?$vector@M$01@@666I7AIAI@Z"}
!47 = distinct !{!47, !46, !"\01?__GTAOQuadCalculateForPixel@@YA?AUGTAOPixelOutput@@UGTAOQuadConfig@@UGTAOConfig@@V?$Texture2D@M@@V?$Texture2D@V?$vector@M$02@@@@USamplerState@@V?$vector@I$03@@V?$vector@M$03@@5V?$vector@M$01@@666I7AIAI@Z: %executed"}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 1}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = !{!51, !53, !38}
!51 = distinct !{!51, !52, !"\01?__GTAOQuadCalculateForPixel@@YA?AUGTAOPixelOutput@@UGTAOQuadConfig@@UGTAOConfig@@V?$Texture2D@M@@V?$Texture2D@V?$vector@M$02@@@@USamplerState@@V?$vector@I$03@@V?$vector@M$03@@5V?$vector@M$01@@666I7AIAI@Z: %agg.result"}
!52 = distinct !{!52, !"\01?__GTAOQuadCalculateForPixel@@YA?AUGTAOPixelOutput@@UGTAOQuadConfig@@UGTAOConfig@@V?$Texture2D@M@@V?$Texture2D@V?$vector@M$02@@@@USamplerState@@V?$vector@I$03@@V?$vector@M$03@@5V?$vector@M$01@@666I7AIAI@Z"}
!53 = distinct !{!53, !52, !"\01?__GTAOQuadCalculateForPixel@@YA?AUGTAOPixelOutput@@UGTAOQuadConfig@@UGTAOConfig@@V?$Texture2D@M@@V?$Texture2D@V?$vector@M$02@@@@USamplerState@@V?$vector@I$03@@V?$vector@M$03@@5V?$vector@M$01@@666I7AIAI@Z: %executed"}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = !{!56, !58, !38}
!56 = distinct !{!56, !57, !"\01?__GTAOQuadCalculateForPixel@@YA?AUGTAOPixelOutput@@UGTAOQuadConfig@@UGTAOConfig@@V?$Texture2D@M@@V?$Texture2D@V?$vector@M$02@@@@USamplerState@@V?$vector@I$03@@V?$vector@M$03@@5V?$vector@M$01@@666I7AIAI@Z: %agg.result"}
!57 = distinct !{!57, !"\01?__GTAOQuadCalculateForPixel@@YA?AUGTAOPixelOutput@@UGTAOQuadConfig@@UGTAOConfig@@V?$Texture2D@M@@V?$Texture2D@V?$vector@M$02@@@@USamplerState@@V?$vector@I$03@@V?$vector@M$03@@5V?$vector@M$01@@666I7AIAI@Z"}
!58 = distinct !{!58, !57, !"\01?__GTAOQuadCalculateForPixel@@YA?AUGTAOPixelOutput@@UGTAOQuadConfig@@UGTAOConfig@@V?$Texture2D@M@@V?$Texture2D@V?$vector@M$02@@@@USamplerState@@V?$vector@I$03@@V?$vector@M$03@@5V?$vector@M$01@@666I7AIAI@Z: %executed"}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = !{!61, !63, !38}
!61 = distinct !{!61, !62, !"\01?__GTAOQuadCalculateForPixel@@YA?AUGTAOPixelOutput@@UGTAOQuadConfig@@UGTAOConfig@@V?$Texture2D@M@@V?$Texture2D@V?$vector@M$02@@@@USamplerState@@V?$vector@I$03@@V?$vector@M$03@@5V?$vector@M$01@@666I7AIAI@Z: %agg.result"}
!62 = distinct !{!62, !"\01?__GTAOQuadCalculateForPixel@@YA?AUGTAOPixelOutput@@UGTAOQuadConfig@@UGTAOConfig@@V?$Texture2D@M@@V?$Texture2D@V?$vector@M$02@@@@USamplerState@@V?$vector@I$03@@V?$vector@M$03@@5V?$vector@M$01@@666I7AIAI@Z"}
!63 = distinct !{!63, !62, !"\01?__GTAOQuadCalculateForPixel@@YA?AUGTAOPixelOutput@@UGTAOQuadConfig@@UGTAOConfig@@V?$Texture2D@M@@V?$Texture2D@V?$vector@M$02@@@@USamplerState@@V?$vector@I$03@@V?$vector@M$03@@5V?$vector@M$01@@666I7AIAI@Z: %executed"}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = !{!66, !68, !69, !71, !38}
!66 = distinct !{!66, !67, !"\01?__GTAOQuadBilateralUpsamplePixel@@YAXUGTAOQuadConfig@@V?$vector@M$03@@V?$vector@I$03@@MMIAIAV2@AIAV3@@Z: %visibility"}
!67 = distinct !{!67, !"\01?__GTAOQuadBilateralUpsamplePixel@@YAXUGTAOQuadConfig@@V?$vector@M$03@@V?$vector@I$03@@MMIAIAV2@AIAV3@@Z"}
!68 = distinct !{!68, !67, !"\01?__GTAOQuadBilateralUpsamplePixel@@YAXUGTAOQuadConfig@@V?$vector@M$03@@V?$vector@I$03@@MMIAIAV2@AIAV3@@Z: %irradiance"}
!69 = distinct !{!69, !70, !"\01?__GTAOQuadBilateralUpsample@@YAXUGTAOQuadConfig@@V?$vector@M$03@@V?$vector@I$03@@MMIAIAV2@AIAV3@@Z: %visibility"}
!70 = distinct !{!70, !"\01?__GTAOQuadBilateralUpsample@@YAXUGTAOQuadConfig@@V?$vector@M$03@@V?$vector@I$03@@MMIAIAV2@AIAV3@@Z"}
!71 = distinct !{!71, !70, !"\01?__GTAOQuadBilateralUpsample@@YAXUGTAOQuadConfig@@V?$vector@M$03@@V?$vector@I$03@@MMIAIAV2@AIAV3@@Z: %irradiance"}
!72 = !{!73, !75, !69, !71, !38}
!73 = distinct !{!73, !74, !"\01?__GTAOQuadBilateralUpsamplePixel@@YAXUGTAOQuadConfig@@V?$vector@M$03@@V?$vector@I$03@@MMIAIAV2@AIAV3@@Z: %visibility"}
!74 = distinct !{!74, !"\01?__GTAOQuadBilateralUpsamplePixel@@YAXUGTAOQuadConfig@@V?$vector@M$03@@V?$vector@I$03@@MMIAIAV2@AIAV3@@Z"}
!75 = distinct !{!75, !74, !"\01?__GTAOQuadBilateralUpsamplePixel@@YAXUGTAOQuadConfig@@V?$vector@M$03@@V?$vector@I$03@@MMIAIAV2@AIAV3@@Z: %irradiance"}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = !{!78, !80, !69, !71, !38}
!78 = distinct !{!78, !79, !"\01?__GTAOQuadBilateralUpsamplePixel@@YAXUGTAOQuadConfig@@V?$vector@M$03@@V?$vector@I$03@@MMIAIAV2@AIAV3@@Z: %visibility"}
!79 = distinct !{!79, !"\01?__GTAOQuadBilateralUpsamplePixel@@YAXUGTAOQuadConfig@@V?$vector@M$03@@V?$vector@I$03@@MMIAIAV2@AIAV3@@Z"}
!80 = distinct !{!80, !79, !"\01?__GTAOQuadBilateralUpsamplePixel@@YAXUGTAOQuadConfig@@V?$vector@M$03@@V?$vector@I$03@@MMIAIAV2@AIAV3@@Z: %irradiance"}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 2}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 2}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 2}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 2}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 2}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 2}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 2}

