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
; shader hash: 82416cf76d451025cbf3feace2151831
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
;                                   texture     u32        2dMS      T1             t1     1
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
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.Texture2DMS<vector<unsigned int, 4>, 0>" = type { <4 x i32>, %"class.Texture2DMS<vector<unsigned int, 4>, 0>::sample_type" }
%"class.Texture2DMS<vector<unsigned int, 4>, 0>::sample_type" = type { i32 }
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
  %32 = alloca [4 x i32], align 4
  %33 = alloca [4 x i32], align 4
  %34 = alloca [4 x i32], align 4
  %35 = alloca [4 x i32], align 4
  %36 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %37 = extractvalue %dx.types.CBufRet.f32 %36, 2
  %38 = extractvalue %dx.types.CBufRet.f32 %36, 3
  %39 = fmul fast float %37, 5.120000e+02
  %40 = fmul fast float %38, 5.120000e+02
  %41 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %42 = extractvalue %dx.types.CBufRet.f32 %41, 0
  %43 = extractvalue %dx.types.CBufRet.f32 %41, 1
  %44 = fmul fast float %42, 5.000000e-01
  %45 = fmul fast float %43, 5.000000e-01
  %46 = extractvalue %dx.types.CBufRet.f32 %41, 2
  %47 = extractvalue %dx.types.CBufRet.f32 %41, 3
  %48 = fmul fast float %46, 2.000000e+00
  %49 = fmul fast float %47, 2.000000e+00
  %50 = uitofp i32 %16 to float
  %51 = uitofp i32 %17 to float
  %52 = fmul fast float %48, %50
  %53 = fmul fast float %49, %51
  %54 = fadd fast float %52, %46
  %55 = fadd fast float %53, %47
  %56 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %13, float %54, float %55, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %57 = extractvalue %dx.types.ResRet.f32 %56, 0
  %58 = bitcast float %57 to i32
  %59 = lshr i32 %58, 11
  %60 = and i32 %58, 2047
  %61 = and i32 %59, 2047
  %62 = uitofp i32 %60 to float
  %63 = uitofp i32 %61 to float
  %64 = fmul fast float %62, 0x3F50040100000000
  %65 = fmul fast float %63, 0x3F50040100000000
  %66 = fadd fast float %64, -1.000000e+00
  %67 = fadd fast float %65, -1.000000e+00
  %68 = lshr i32 %58, 22
  %69 = shl nuw nsw i32 %68, 5
  %70 = call float @dx.op.legacyF16ToF32(i32 131, i32 %69)  ; LegacyF16ToF32(value)
  %71 = call float @dx.op.unary.f32(i32 6, float %66)  ; FAbs(value)
  %72 = call float @dx.op.unary.f32(i32 6, float %67)  ; FAbs(value)
  %73 = fadd fast float %71, -5.000000e-01
  %74 = fadd fast float %72, -5.000000e-01
  %75 = fmul fast float %73, 2.000000e+00
  %76 = fmul fast float %74, 2.000000e+00
  %77 = call float @dx.op.unary.f32(i32 7, float %75)  ; Saturate(value)
  %78 = call float @dx.op.unary.f32(i32 7, float %76)  ; Saturate(value)
  %79 = fmul fast float %71, 2.000000e+00
  %80 = fmul fast float %72, 2.000000e+00
  %81 = call float @dx.op.unary.f32(i32 7, float %79)  ; Saturate(value)
  %82 = call float @dx.op.unary.f32(i32 7, float %80)  ; Saturate(value)
  %83 = fmul fast float %77, %77
  %84 = fmul fast float %83, 0x3FA48888A0000000
  %85 = fmul fast float %78, %78
  %86 = fmul fast float %85, 0x3FB2407960000000
  %87 = fmul fast float %81, 0x3F599999A0000000
  %88 = fmul fast float %82, 0x3F66C16C20000000
  %89 = fadd fast float %87, %84
  %90 = fadd fast float %88, %86
  %91 = fsub fast float -0.000000e+00, %89
  %92 = fsub fast float -0.000000e+00, %90
  %93 = fcmp fast olt float %66, 0.000000e+00
  %94 = fcmp fast olt float %67, 0.000000e+00
  %95 = select i1 %93, float 0.000000e+00, float 1.000000e+00
  %96 = select i1 %94, float 0.000000e+00, float 1.000000e+00
  %97 = fcmp fast une float %95, 0.000000e+00
  %98 = fcmp fast une float %96, 0.000000e+00
  %99 = select i1 %97, float %89, float %91
  %100 = select i1 %98, float %90, float %92
  %101 = fsub fast float %54, %99
  %102 = fsub fast float %55, %100
  %103 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %8, %dx.types.Handle %13, float %101, float %102, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %104 = extractvalue %dx.types.ResRet.f32 %103, 0
  %105 = extractvalue %dx.types.ResRet.f32 %103, 1
  %106 = extractvalue %dx.types.ResRet.f32 %103, 2
  %107 = extractvalue %dx.types.ResRet.f32 %103, 3
  %108 = bitcast float %104 to i32
  %109 = bitcast float %105 to i32
  %110 = bitcast float %106 to i32
  %111 = bitcast float %107 to i32
  %112 = call i32 @dx.op.binary.i32(i32 40, i32 %110, i32 %111)  ; UMin(a,b)
  %113 = call i32 @dx.op.binary.i32(i32 40, i32 %109, i32 %112)  ; UMin(a,b)
  %114 = call i32 @dx.op.binary.i32(i32 40, i32 %108, i32 %113)  ; UMin(a,b)
  %115 = lshr i32 %114, 11
  %116 = and i32 %114, 2047
  %117 = and i32 %115, 2047
  %118 = uitofp i32 %116 to float
  %119 = uitofp i32 %117 to float
  %120 = fmul fast float %118, 0x3F50040100000000
  %121 = fmul fast float %119, 0x3F50040100000000
  %122 = fadd fast float %120, -1.000000e+00
  %123 = fadd fast float %121, -1.000000e+00
  %124 = lshr i32 %114, 22
  %125 = shl nuw nsw i32 %124, 5
  %126 = call float @dx.op.legacyF16ToF32(i32 131, i32 %125)  ; LegacyF16ToF32(value)
  %127 = call float @dx.op.unary.f32(i32 6, float %122)  ; FAbs(value)
  %128 = call float @dx.op.unary.f32(i32 6, float %123)  ; FAbs(value)
  %129 = fadd fast float %127, -5.000000e-01
  %130 = fadd fast float %128, -5.000000e-01
  %131 = fmul fast float %129, 2.000000e+00
  %132 = fmul fast float %130, 2.000000e+00
  %133 = call float @dx.op.unary.f32(i32 7, float %131)  ; Saturate(value)
  %134 = call float @dx.op.unary.f32(i32 7, float %132)  ; Saturate(value)
  %135 = fmul fast float %127, 2.000000e+00
  %136 = fmul fast float %128, 2.000000e+00
  %137 = call float @dx.op.unary.f32(i32 7, float %135)  ; Saturate(value)
  %138 = call float @dx.op.unary.f32(i32 7, float %136)  ; Saturate(value)
  %139 = fmul fast float %133, %133
  %140 = fmul fast float %139, 0x3FA48888A0000000
  %141 = fmul fast float %134, %134
  %142 = fmul fast float %141, 0x3FB2407960000000
  %143 = fmul fast float %137, 0x3F599999A0000000
  %144 = fmul fast float %138, 0x3F66C16C20000000
  %145 = fadd fast float %143, %140
  %146 = fadd fast float %144, %142
  %147 = fsub fast float -0.000000e+00, %145
  %148 = fsub fast float -0.000000e+00, %146
  %149 = fcmp fast olt float %122, 0.000000e+00
  %150 = fcmp fast olt float %123, 0.000000e+00
  %151 = select i1 %149, float 0.000000e+00, float 1.000000e+00
  %152 = select i1 %150, float 0.000000e+00, float 1.000000e+00
  %153 = fcmp fast une float %151, 0.000000e+00
  %154 = fcmp fast une float %152, 0.000000e+00
  %155 = select i1 %153, float %145, float %147
  %156 = select i1 %154, float %146, float %148
  %157 = fmul fast float %99, 3.000000e+00
  %158 = fmul fast float %100, 3.000000e+00
  %159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %160 = extractvalue %dx.types.CBufRet.f32 %159, 2
  %161 = extractvalue %dx.types.CBufRet.f32 %159, 3
  %162 = fmul fast float %46, %39
  %163 = fmul fast float %47, %40
  %164 = fmul fast float %160, %70
  %165 = fmul fast float %70, %161
  %166 = fsub fast float -0.000000e+00, %165
  %167 = fdiv fast float 5.000000e+01, %164
  %168 = fdiv fast float 5.000000e+01, %166
  %169 = call float @dx.op.binary.f32(i32 36, float %162, float %167)  ; FMin(a,b)
  %170 = call float @dx.op.binary.f32(i32 36, float %163, float %168)  ; FMin(a,b)
  %171 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %12, float %54, float %55, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %172 = extractvalue %dx.types.ResRet.f32 %171, 0
  %173 = extractvalue %dx.types.ResRet.f32 %171, 1
  %174 = fmul fast float %172, %172
  %175 = fsub fast float %173, %174
  %176 = call float @dx.op.unary.f32(i32 7, float %175)  ; Saturate(value)
  %177 = fdiv fast float %176, %172
  %178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %179 = extractvalue %dx.types.CBufRet.f32 %178, 0
  %180 = fmul fast float %179, 0x40165A5B00000000
  %181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %182 = extractvalue %dx.types.CBufRet.f32 %181, 0
  %183 = fmul fast float %182, 2.000000e+00
  %184 = fadd fast float %183, -1.000000e+00
  %185 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %12, float %101, float %102, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %186 = extractvalue %dx.types.ResRet.f32 %185, 0
  %187 = fmul fast float %186, 2.550000e+02
  %188 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %12, float %101, float %102, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %189 = extractvalue %dx.types.ResRet.f32 %188, 0
  %190 = extractvalue %dx.types.ResRet.f32 %188, 1
  %191 = extractvalue %dx.types.ResRet.f32 %188, 2
  %192 = extractvalue %dx.types.ResRet.f32 %188, 3
  %193 = call float @dx.op.dot4.f32(i32 56, float %189, float %190, float %191, float %192, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %194 = call float @dx.op.dot4.f32(i32 56, float %189, float %190, float %191, float %192, float %189, float %190, float %191, float %192)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %195 = fmul fast float %193, 2.500000e-01
  %196 = fmul fast float %194, 2.500000e-01
  %197 = mul i32 %18, 2
  %198 = add i32 0, %197
  %199 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %198
  store float %195, float addrspace(3)* %199, align 4
  %200 = mul i32 %18, 2
  %201 = add i32 1, %200
  %202 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %201
  store float %196, float addrspace(3)* %202, align 4
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %203 = and i32 %18, 63
  %204 = xor i32 %203, 1
  %205 = mul i32 %204, 2
  %206 = add i32 0, %205
  %207 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %206
  %208 = load float, float addrspace(3)* %207, align 4
  %209 = mul i32 %204, 2
  %210 = add i32 1, %209
  %211 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %210
  %212 = load float, float addrspace(3)* %211, align 4
  %213 = fadd fast float %208, %195
  %214 = fadd fast float %212, %196
  %215 = xor i32 %203, 8
  %216 = mul i32 %215, 2
  %217 = add i32 0, %216
  %218 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %217
  %219 = load float, float addrspace(3)* %218, align 4
  %220 = mul i32 %215, 2
  %221 = add i32 1, %220
  %222 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %221
  %223 = load float, float addrspace(3)* %222, align 4
  %224 = fadd fast float %213, %219
  %225 = fadd fast float %214, %223
  %226 = xor i32 %203, 9
  %227 = mul i32 %226, 2
  %228 = add i32 0, %227
  %229 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %228
  %230 = load float, float addrspace(3)* %229, align 4
  %231 = mul i32 %226, 2
  %232 = add i32 1, %231
  %233 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %232
  %234 = load float, float addrspace(3)* %233, align 4
  %235 = fadd fast float %224, %230
  %236 = fadd fast float %225, %234
  store float %235, float addrspace(3)* %199, align 4
  store float %236, float addrspace(3)* %202, align 4
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %237 = xor i32 %203, 2
  %238 = mul i32 %237, 2
  %239 = add i32 0, %238
  %240 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %239
  %241 = load float, float addrspace(3)* %240, align 4
  %242 = fadd fast float %241, %235
  %243 = xor i32 %203, 16
  %244 = mul i32 %243, 2
  %245 = add i32 0, %244
  %246 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %245
  %247 = load float, float addrspace(3)* %246, align 4
  %248 = fadd fast float %242, %247
  %249 = xor i32 %203, 18
  %250 = mul i32 %249, 2
  %251 = add i32 0, %250
  %252 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %251
  %253 = load float, float addrspace(3)* %252, align 4
  %254 = fadd fast float %248, %253
  %255 = fmul fast float %254, 6.250000e-02
  %256 = call float @dx.op.binary.f32(i32 35, float %255, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %257 = fmul fast float %70, 0x3FA99999A0000000
  %258 = fadd fast float %126, %257
  %259 = fcmp fast olt float %70, %258
  %260 = fsub fast float %99, %155
  %261 = fsub fast float %100, %156
  %262 = fmul fast float %260, 1.920000e+03
  %263 = fmul fast float %261, 1.080000e+03
  %264 = call float @dx.op.dot2.f32(i32 54, float %262, float %263, float %262, float %263)  ; Dot2(ax,ay,bx,by)
  %265 = bitcast float %264 to i32
  %266 = ashr i32 %265, 1
  %267 = add nsw i32 %266, 532487669
  %268 = bitcast i32 %267 to float
  %269 = fmul fast float %268, 2.000000e+00
  %270 = fsub fast float 1.000000e+00, %269
  %271 = call float @dx.op.unary.f32(i32 7, float %270)  ; Saturate(value)
  %272 = select i1 %259, float 1.000000e+00, float %271
  %273 = fmul fast float %99, 1.920000e+03
  %274 = fmul fast float %100, 1.080000e+03
  %275 = call float @dx.op.unary.f32(i32 6, float %273)  ; FAbs(value)
  %276 = call float @dx.op.unary.f32(i32 6, float %274)  ; FAbs(value)
  %277 = call float @dx.op.binary.f32(i32 35, float %275, float %276)  ; FMax(a,b)
  %278 = fmul fast float %277, 0x3FB99999A0000000
  %279 = fsub fast float 8.000000e+00, %278
  %280 = call float @dx.op.unary.f32(i32 7, float %279)  ; Saturate(value)
  %281 = fmul fast float %280, %272
  %282 = fadd fast float %54, -5.000000e-01
  %283 = fsub fast float %282, %157
  %284 = fadd fast float %55, -5.000000e-01
  %285 = fsub fast float %284, %158
  %286 = call float @dx.op.unary.f32(i32 6, float %283)  ; FAbs(value)
  %287 = call float @dx.op.unary.f32(i32 6, float %285)  ; FAbs(value)
  %288 = fadd fast float %286, -5.000000e-01
  %289 = fadd fast float %287, -5.000000e-01
  %290 = call float @dx.op.binary.f32(i32 35, float %288, float %289)  ; FMax(a,b)
  %291 = fcmp fast olt float %290, 0.000000e+00
  %292 = select i1 %291, float 1.000000e+00, float 0.000000e+00
  %293 = fmul fast float %281, %292
  %294 = fsub fast float %256, %172
  %295 = call float @dx.op.unary.f32(i32 6, float %294)  ; FAbs(value)
  %296 = fmul fast float %172, 2.500000e-01
  %297 = fmul fast float %296, %177
  %298 = call float @dx.op.unary.f32(i32 24, float %297)  ; Sqrt(value)
  %299 = fmul fast float %172, 0x3FD6666660000000
  %300 = fadd fast float %299, 0x3FA99999A0000000
  %301 = fadd fast float %300, %298
  %302 = fdiv fast float %295, %301
  %303 = fsub fast float 1.000000e+00, %302
  %304 = call float @dx.op.unary.f32(i32 7, float %303)  ; Saturate(value)
  %305 = fmul fast float %304, 0x3FF8062660000000
  %306 = call float @dx.op.unary.f32(i32 7, float %305)  ; Saturate(value)
  %307 = fmul fast float %306, 2.000000e+00
  %308 = fsub fast float 3.000000e+00, %307
  %309 = fmul fast float %306, %306
  %310 = fmul fast float %309, 5.000000e-01
  %311 = fmul fast float %310, %308
  %312 = fadd fast float %311, 5.000000e-01
  %313 = fmul fast float %293, %312
  %314 = fmul fast float %186, 0x41A7A6C180000000
  %315 = fsub fast float 0x41CFB3AA00000000, %314
  %316 = fptosi float %315 to i32
  %317 = bitcast i32 %316 to float
  %318 = fsub fast float 1.000000e+00, %317
  %319 = fdiv fast float 0x3FA9999A00000000, %318
  %320 = fsub fast float 1.000000e+00, %319
  %321 = fcmp fast ugt float %313, 0x3FEE666660000000
  %322 = fmul fast float %313, %320
  br i1 %321, label %330, label %323, !dx.controlflow.hints !29

; <label>:323                                     ; preds = %0
  %324 = fadd fast float %322, 0xBFEE666660000000
  %325 = fadd fast float %322, -1.000000e+00
  %326 = fdiv fast float %324, %325
  %327 = call float @dx.op.unary.f32(i32 23, float %326)  ; Log(value)
  %328 = fmul fast float %327, 0x402B06DCE0000000
  %329 = fsub fast float -1.000000e+00, %328
  br label %352

; <label>:330                                     ; preds = %0
  %331 = fcmp fast ole float %320, 0x3FEE666660000000
  %332 = lshr i32 %16, 3
  %333 = uitofp i32 %332 to float
  %334 = fadd fast float %180, %333
  %335 = fmul fast float %184, %334
  %336 = lshr i32 %17, 3
  %337 = uitofp i32 %336 to float
  %338 = fadd fast float %180, %337
  %339 = fmul fast float %184, %338
  %340 = call float @dx.op.dot2.f32(i32 54, float %335, float %339, float 0x3FB12E2860000000, float 0x3F77E8B200000000)  ; Dot2(ax,ay,bx,by)
  %341 = call float @dx.op.unary.f32(i32 22, float %340)  ; Frc(value)
  %342 = fmul fast float %341, 0x404A7DD040000000
  %343 = call float @dx.op.unary.f32(i32 22, float %342)  ; Frc(value)
  %344 = fcmp fast olt float %343, 1.250000e-01
  %345 = and i1 %331, %344
  br i1 %345, label %346, label %350, !dx.controlflow.hints !30

; <label>:346                                     ; preds = %330
  %347 = call float @dx.op.unary.f32(i32 23, float -0.000000e+00)  ; Log(value)
  %348 = fmul fast float %347, 0x402B06DCE0000000
  %349 = fsub fast float -1.000000e+00, %348
  br label %352

; <label>:350                                     ; preds = %330
  %351 = fadd fast float %187, -1.600000e+01
  br label %352

; <label>:352                                     ; preds = %350, %346, %323
  %353 = phi float [ %329, %323 ], [ %349, %346 ], [ %351, %350 ]
  %354 = phi float [ %322, %323 ], [ 0x3FECCCCCC0000000, %346 ], [ 1.000000e+00, %350 ]
  %355 = fmul fast float %169, %44
  %356 = fmul fast float %170, %45
  %357 = call float @dx.op.binary.f32(i32 36, float %355, float %356)  ; FMin(a,b)
  %358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %359 = extractvalue %dx.types.CBufRet.f32 %358, 0
  %360 = fsub fast float %357, %359
  %361 = extractvalue %dx.types.CBufRet.f32 %358, 1
  %362 = fmul fast float %360, %361
  %363 = call float @dx.op.unary.f32(i32 7, float %362)  ; Saturate(value)
  %364 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %11, %dx.types.Handle %13, float %54, float %55, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %365 = extractvalue %dx.types.ResRet.f32 %364, 0
  %366 = extractvalue %dx.types.ResRet.f32 %364, 1
  %367 = extractvalue %dx.types.ResRet.f32 %364, 2
  %368 = extractvalue %dx.types.ResRet.f32 %364, 3
  %369 = fcmp fast ogt float %365, -1.000000e+00
  %370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %371 = extractvalue %dx.types.CBufRet.f32 %370, 1
  %372 = select i1 %369, float %371, float 1.000000e+00
  %373 = fadd fast float %365, 1.000000e+00
  %374 = fmul fast float %372, %373
  %375 = fcmp fast ogt float %366, -1.000000e+00
  %376 = select i1 %375, float %371, float 1.000000e+00
  %377 = fadd fast float %366, 1.000000e+00
  %378 = fmul fast float %376, %377
  %379 = fcmp fast ogt float %367, -1.000000e+00
  %380 = select i1 %379, float %371, float 1.000000e+00
  %381 = fadd fast float %367, 1.000000e+00
  %382 = fmul fast float %380, %381
  %383 = fcmp fast ogt float %368, -1.000000e+00
  %384 = select i1 %383, float %371, float 1.000000e+00
  %385 = fadd fast float %368, 1.000000e+00
  %386 = fmul fast float %384, %385
  %387 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %388 = extractvalue %dx.types.CBufRet.i32 %387, 0
  %389 = extractvalue %dx.types.CBufRet.i32 %387, 1
  %390 = extractvalue %dx.types.CBufRet.i32 %387, 2
  %391 = extractvalue %dx.types.CBufRet.i32 %387, 3
  %392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %393 = extractvalue %dx.types.CBufRet.f32 %392, 0
  %394 = extractvalue %dx.types.CBufRet.f32 %392, 1
  %395 = fmul fast float %393, %54
  %396 = fmul fast float %394, %55
  %397 = fadd fast float %395, -5.000000e-01
  %398 = fadd fast float %396, -5.000000e-01
  %399 = fptosi float %397 to i32
  %400 = fptosi float %398 to i32
  %401 = add i32 %400, 1
  %402 = add i32 %399, 1
  %403 = lshr i32 %399, 1
  %404 = lshr i32 %400, 1
  %405 = and i32 %399, 1
  %406 = shl i32 %400, 1
  %407 = and i32 %406, 2
  %408 = or i32 %407, %405
  %409 = getelementptr inbounds [4 x i32], [4 x i32]* %35, i32 0, i32 0
  store i32 %388, i32* %409, align 4
  %410 = getelementptr inbounds [4 x i32], [4 x i32]* %35, i32 0, i32 1
  store i32 %389, i32* %410, align 4
  %411 = getelementptr inbounds [4 x i32], [4 x i32]* %35, i32 0, i32 2
  store i32 %390, i32* %411, align 4
  %412 = getelementptr inbounds [4 x i32], [4 x i32]* %35, i32 0, i32 3
  store i32 %391, i32* %412, align 4
  %413 = getelementptr [4 x i32], [4 x i32]* %35, i32 0, i32 %408
  %414 = load i32, i32* %413, align 4, !tbaa !31
  %415 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 %414, i32 %403, i32 %404, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %416 = extractvalue %dx.types.ResRet.i32 %415, 0
  %417 = lshr i32 %401, 1
  %418 = shl i32 %401, 1
  %419 = and i32 %418, 2
  %420 = or i32 %419, %405
  %421 = getelementptr inbounds [4 x i32], [4 x i32]* %34, i32 0, i32 0
  store i32 %388, i32* %421, align 4
  %422 = getelementptr inbounds [4 x i32], [4 x i32]* %34, i32 0, i32 1
  store i32 %389, i32* %422, align 4
  %423 = getelementptr inbounds [4 x i32], [4 x i32]* %34, i32 0, i32 2
  store i32 %390, i32* %423, align 4
  %424 = getelementptr inbounds [4 x i32], [4 x i32]* %34, i32 0, i32 3
  store i32 %391, i32* %424, align 4
  %425 = getelementptr [4 x i32], [4 x i32]* %34, i32 0, i32 %420
  %426 = load i32, i32* %425, align 4, !tbaa !31
  %427 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 %426, i32 %403, i32 %417, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %428 = extractvalue %dx.types.ResRet.i32 %427, 0
  %429 = lshr i32 %402, 1
  %430 = and i32 %402, 1
  %431 = or i32 %419, %430
  %432 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i32 0, i32 0
  store i32 %388, i32* %432, align 4
  %433 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i32 0, i32 1
  store i32 %389, i32* %433, align 4
  %434 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i32 0, i32 2
  store i32 %390, i32* %434, align 4
  %435 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i32 0, i32 3
  store i32 %391, i32* %435, align 4
  %436 = getelementptr [4 x i32], [4 x i32]* %33, i32 0, i32 %431
  %437 = load i32, i32* %436, align 4, !tbaa !31
  %438 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 %437, i32 %429, i32 %417, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %439 = extractvalue %dx.types.ResRet.i32 %438, 0
  %440 = or i32 %407, %430
  %441 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i32 0, i32 0
  store i32 %388, i32* %441, align 4
  %442 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i32 0, i32 1
  store i32 %389, i32* %442, align 4
  %443 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i32 0, i32 2
  store i32 %390, i32* %443, align 4
  %444 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i32 0, i32 3
  store i32 %391, i32* %444, align 4
  %445 = getelementptr [4 x i32], [4 x i32]* %32, i32 0, i32 %440
  %446 = load i32, i32* %445, align 4, !tbaa !31
  %447 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 %446, i32 %429, i32 %404, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %448 = extractvalue %dx.types.ResRet.i32 %447, 0
  %449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %450 = extractvalue %dx.types.CBufRet.f32 %449, 0
  %451 = extractvalue %dx.types.CBufRet.f32 %449, 1
  %452 = extractvalue %dx.types.CBufRet.f32 %449, 2
  %453 = extractvalue %dx.types.CBufRet.f32 %449, 3
  %454 = extractvalue %dx.types.CBufRet.f32 %392, 2
  %455 = extractvalue %dx.types.CBufRet.f32 %392, 3
  %456 = call float @dx.op.unary.f32(i32 6, float %386)  ; FAbs(value)
  %457 = call float @dx.op.unary.f32(i32 6, float %382)  ; FAbs(value)
  %458 = call float @dx.op.unary.f32(i32 6, float %374)  ; FAbs(value)
  %459 = call float @dx.op.unary.f32(i32 6, float %378)  ; FAbs(value)
  %460 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 0
  store float %456, float* %460, align 4
  %461 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 1
  store float %457, float* %461, align 4
  %462 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 2
  store float %458, float* %462, align 4
  %463 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 3
  store float %459, float* %463, align 4
  %464 = getelementptr inbounds [4 x float], [4 x float]* %30, i32 0, i32 0
  store float %456, float* %464, align 4
  %465 = getelementptr inbounds [4 x float], [4 x float]* %30, i32 0, i32 1
  store float %457, float* %465, align 4
  %466 = getelementptr inbounds [4 x float], [4 x float]* %30, i32 0, i32 2
  store float %458, float* %466, align 4
  %467 = getelementptr inbounds [4 x float], [4 x float]* %30, i32 0, i32 3
  store float %459, float* %467, align 4
  %468 = fcmp fast olt float %456, %457
  %469 = zext i1 %468 to i32
  %470 = xor i32 %469, 1
  %471 = fcmp fast olt float %458, %459
  %472 = select i1 %471, i32 3, i32 2
  %473 = select i1 %471, i32 2, i32 3
  %474 = getelementptr [4 x float], [4 x float]* %30, i32 0, i32 %469
  %475 = load float, float* %474, align 4, !tbaa !35, !noalias !37
  %476 = getelementptr [4 x float], [4 x float]* %30, i32 0, i32 %472
  %477 = load float, float* %476, align 4, !tbaa !35, !noalias !37
  %478 = fcmp fast olt float %475, %477
  %479 = select i1 %478, i32 %472, i32 %469
  %480 = select i1 %478, i32 %469, i32 %472
  %481 = getelementptr [4 x float], [4 x float]* %30, i32 0, i32 %470
  %482 = load float, float* %481, align 4, !tbaa !35, !noalias !37
  %483 = getelementptr [4 x float], [4 x float]* %30, i32 0, i32 %473
  %484 = load float, float* %483, align 4, !tbaa !35, !noalias !37
  %485 = fcmp fast ogt float %482, %484
  %486 = select i1 %485, i32 %473, i32 %470
  %487 = select i1 %485, i32 %470, i32 %473
  %488 = getelementptr [4 x float], [4 x float]* %31, i32 0, i32 %479
  %489 = load float, float* %488, align 4, !tbaa !35, !noalias !42
  %490 = getelementptr [4 x float], [4 x float]* %31, i32 0, i32 %486
  %491 = load float, float* %490, align 4, !tbaa !35, !noalias !42
  %492 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %11, %dx.types.Handle %13, float %52, float %53, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %493 = extractvalue %dx.types.ResRet.f32 %492, 0
  %494 = extractvalue %dx.types.ResRet.f32 %492, 2
  %495 = extractvalue %dx.types.ResRet.f32 %492, 3
  %496 = fsub fast float %382, %493
  %497 = call float @dx.op.unary.f32(i32 6, float %496)  ; FAbs(value)
  %498 = fsub fast float %374, %494
  %499 = call float @dx.op.unary.f32(i32 6, float %498)  ; FAbs(value)
  %500 = fadd fast float %499, %497
  %501 = fsub fast float %495, %378
  %502 = call float @dx.op.unary.f32(i32 6, float %501)  ; FAbs(value)
  %503 = fmul fast float %502, 0x3FF6A09E60000000
  %504 = fadd fast float %500, %503
  %505 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?gtaoQuadDiscontinuity@@3PAMA", i32 0, i32 %18
  store float %504, float addrspace(3)* %505, align 4, !tbaa !35, !noalias !42
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %506 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?gtaoQuadDiscontinuity@@3PAMA", i32 0, i32 %204
  %507 = load float, float addrspace(3)* %506, align 4, !tbaa !35, !noalias !42
  %508 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?gtaoQuadDiscontinuity@@3PAMA", i32 0, i32 %215
  %509 = load float, float addrspace(3)* %508, align 4, !tbaa !35, !noalias !42
  %510 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?gtaoQuadDiscontinuity@@3PAMA", i32 0, i32 %226
  %511 = load float, float addrspace(3)* %510, align 4, !tbaa !35, !noalias !42
  %512 = fsub fast float %507, %504
  %513 = call float @dx.op.unary.f32(i32 6, float %512)  ; FAbs(value)
  %514 = fsub fast float %509, %504
  %515 = call float @dx.op.unary.f32(i32 6, float %514)  ; FAbs(value)
  %516 = fadd fast float %515, %513
  %517 = fsub fast float %511, %504
  %518 = call float @dx.op.unary.f32(i32 6, float %517)  ; FAbs(value)
  %519 = fadd fast float %516, %518
  store float %519, float addrspace(3)* %505, align 4, !tbaa !35, !noalias !42
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %520 = fcmp fast olt float %491, 0.000000e+00
  %521 = zext i1 %520 to i32
  %522 = icmp eq i32 %18, 0
  br i1 %522, label %523, label %524, !dx.controlflow.hints !43

; <label>:523                                     ; preds = %352
  store i32 0, i32 addrspace(3)* @"\01?gtaoQuadMaxUint@@3IA", align 4, !tbaa !31, !noalias !42
  br label %524

; <label>:524                                     ; preds = %523, %352
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %525 = atomicrmw umax i32 addrspace(3)* @"\01?gtaoQuadMaxUint@@3IA", i32 %521 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %526 = load i32, i32 addrspace(3)* @"\01?gtaoQuadMaxUint@@3IA", align 4, !tbaa !31, !noalias !42
  %527 = icmp ne i32 %526, 0
  %528 = select i1 %527, i32 2, i32 1
  %529 = fmul fast float %393, %52
  %530 = fmul fast float %394, %53
  %531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %532 = extractvalue %dx.types.CBufRet.f32 %531, 2
  %533 = fmul fast float %532, 0x3FE3C6EF40000000
  %534 = frem fast float %529, 2.560000e+02
  %535 = frem fast float %530, 2.560000e+02
  %536 = fptoui float %534 to i32
  %537 = fptoui float %535 to i32
  %538 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %536, i32 %537, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %539 = extractvalue %dx.types.ResRet.f32 %538, 0
  %540 = extractvalue %dx.types.ResRet.f32 %538, 1
  %541 = extractvalue %dx.types.ResRet.f32 %538, 2
  %542 = extractvalue %dx.types.ResRet.f32 %538, 3
  %543 = fadd fast float %539, %533
  %544 = fadd fast float %540, %533
  %545 = fadd fast float %541, %533
  %546 = fadd fast float %542, %533
  %547 = call float @dx.op.unary.f32(i32 22, float %543)  ; Frc(value)
  %548 = call float @dx.op.unary.f32(i32 22, float %544)  ; Frc(value)
  %549 = call float @dx.op.unary.f32(i32 22, float %545)  ; Frc(value)
  %550 = call float @dx.op.unary.f32(i32 22, float %546)  ; Frc(value)
  %551 = fadd fast float %454, %52
  %552 = fadd fast float %455, %53
  %553 = fmul fast float %551, %393
  %554 = fmul fast float %552, %394
  %555 = frem fast float %553, 2.560000e+02
  %556 = frem fast float %554, 2.560000e+02
  %557 = fptoui float %555 to i32
  %558 = fptoui float %556 to i32
  %559 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %557, i32 %558, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %560 = extractvalue %dx.types.ResRet.f32 %559, 0
  %561 = extractvalue %dx.types.ResRet.f32 %559, 1
  %562 = extractvalue %dx.types.ResRet.f32 %559, 2
  %563 = extractvalue %dx.types.ResRet.f32 %559, 3
  %564 = fadd fast float %560, %533
  %565 = fadd fast float %561, %533
  %566 = fadd fast float %562, %533
  %567 = fadd fast float %563, %533
  %568 = call float @dx.op.unary.f32(i32 22, float %564)  ; Frc(value)
  %569 = call float @dx.op.unary.f32(i32 22, float %565)  ; Frc(value)
  %570 = call float @dx.op.unary.f32(i32 22, float %566)  ; Frc(value)
  %571 = call float @dx.op.unary.f32(i32 22, float %567)  ; Frc(value)
  %572 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 0
  store float %386, float* %572, align 4
  %573 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 1
  store float %382, float* %573, align 4
  %574 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 2
  store float %374, float* %574, align 4
  %575 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 3
  store float %378, float* %575, align 4
  %576 = getelementptr [4 x float], [4 x float]* %29, i32 0, i32 %479
  %577 = load float, float* %576, align 4, !tbaa !35, !noalias !44
  %578 = and i32 %479, 1
  %579 = uitofp i32 %578 to float
  %580 = fadd fast float %579, 5.000000e-01
  %581 = lshr i32 %479, 1
  %582 = uitofp i32 %581 to float
  %583 = fadd fast float %582, 5.000000e-01
  %584 = fmul fast float %580, %454
  %585 = fmul fast float %583, %455
  %586 = fadd fast float %584, %52
  %587 = fadd fast float %585, %53
  %588 = fcmp fast olt float %577, 6.550000e+04
  br i1 %588, label %589, label %973, !dx.controlflow.hints !48

; <label>:589                                     ; preds = %524
  %590 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 0
  store i32 %416, i32* %590, align 4
  %591 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 1
  store i32 %448, i32* %591, align 4
  %592 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 2
  store i32 %428, i32* %592, align 4
  %593 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 3
  store i32 %439, i32* %593, align 4
  %594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 99)  ; CBufferLoadLegacy(handle,regIndex)
  %595 = extractvalue %dx.types.CBufRet.f32 %594, 0
  %596 = extractvalue %dx.types.CBufRet.f32 %594, 1
  %597 = extractvalue %dx.types.CBufRet.f32 %594, 2
  %598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 100)  ; CBufferLoadLegacy(handle,regIndex)
  %599 = extractvalue %dx.types.CBufRet.f32 %598, 0
  %600 = extractvalue %dx.types.CBufRet.f32 %598, 1
  %601 = extractvalue %dx.types.CBufRet.f32 %598, 2
  %602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 101)  ; CBufferLoadLegacy(handle,regIndex)
  %603 = extractvalue %dx.types.CBufRet.f32 %602, 0
  %604 = extractvalue %dx.types.CBufRet.f32 %602, 1
  %605 = extractvalue %dx.types.CBufRet.f32 %602, 2
  %606 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %479
  %607 = load i32, i32* %606, align 4, !tbaa !31, !noalias !44
  %608 = lshr i32 %607, 8
  %609 = and i32 %607, 255
  %610 = and i32 %608, 255
  %611 = uitofp i32 %609 to float
  %612 = uitofp i32 %610 to float
  %613 = fmul fast float %611, 0x3F80101020000000
  %614 = fmul fast float %612, 0x3F80101020000000
  %615 = fadd fast float %613, -1.000000e+00
  %616 = fadd fast float %614, -1.000000e+00
  %617 = call float @dx.op.unary.f32(i32 6, float %615)  ; FAbs(value)
  %618 = fsub fast float 1.000000e+00, %617
  %619 = call float @dx.op.unary.f32(i32 6, float %616)  ; FAbs(value)
  %620 = fsub fast float %618, %619
  %621 = fsub fast float -0.000000e+00, %620
  %622 = call float @dx.op.binary.f32(i32 35, float %621, float 0.000000e+00)  ; FMax(a,b)
  %623 = fcmp fast ogt float %615, 0.000000e+00
  %624 = fsub fast float -0.000000e+00, %622
  %625 = select i1 %623, float %624, float %622
  %626 = fadd fast float %625, %615
  %627 = fcmp fast ogt float %616, 0.000000e+00
  %628 = select i1 %627, float %624, float %622
  %629 = fadd fast float %628, %616
  %630 = call float @dx.op.dot3.f32(i32 55, float %626, float %629, float %620, float %626, float %629, float %620)  ; Dot3(ax,ay,az,bx,by,bz)
  %631 = call float @dx.op.unary.f32(i32 25, float %630)  ; Rsqrt(value)
  %632 = fmul fast float %626, %631
  %633 = fmul fast float %629, %631
  %634 = fmul fast float %631, %620
  %635 = fmul fast float %632, %595
  %636 = call float @dx.op.tertiary.f32(i32 46, float %633, float %596, float %635)  ; FMad(a,b,c)
  %637 = call float @dx.op.tertiary.f32(i32 46, float %634, float %597, float %636)  ; FMad(a,b,c)
  %638 = fmul fast float %632, %599
  %639 = call float @dx.op.tertiary.f32(i32 46, float %633, float %600, float %638)  ; FMad(a,b,c)
  %640 = call float @dx.op.tertiary.f32(i32 46, float %634, float %601, float %639)  ; FMad(a,b,c)
  %641 = fmul fast float %632, %603
  %642 = call float @dx.op.tertiary.f32(i32 46, float %633, float %604, float %641)  ; FMad(a,b,c)
  %643 = call float @dx.op.tertiary.f32(i32 46, float %634, float %605, float %642)  ; FMad(a,b,c)
  %644 = call float @dx.op.unary.f32(i32 6, float %577)  ; FAbs(value)
  %645 = fmul fast float %454, %39
  %646 = fmul fast float %455, %40
  %647 = fmul fast float %644, %452
  %648 = fmul fast float %453, %644
  %649 = fsub fast float -0.000000e+00, %648
  %650 = fdiv fast float 5.000000e+01, %647
  %651 = fdiv fast float 5.000000e+01, %649
  %652 = call float @dx.op.binary.f32(i32 36, float %645, float %650)  ; FMin(a,b)
  %653 = call float @dx.op.binary.f32(i32 36, float %646, float %651)  ; FMin(a,b)
  %654 = fmul fast float %586, %450
  %655 = fmul fast float %587, %451
  %656 = fsub fast float %654, %452
  %657 = fsub fast float %655, %453
  %658 = fmul fast float %644, %656
  %659 = fmul fast float %644, %657
  %660 = fsub fast float -0.000000e+00, %658
  %661 = fsub fast float -0.000000e+00, %659
  %662 = fsub fast float -0.000000e+00, %644
  %663 = call float @dx.op.dot3.f32(i32 55, float %660, float %661, float %662, float %660, float %661, float %662)  ; Dot3(ax,ay,az,bx,by,bz)
  %664 = call float @dx.op.unary.f32(i32 25, float %663)  ; Rsqrt(value)
  %665 = fmul fast float %664, %660
  %666 = fmul fast float %664, %661
  %667 = fmul fast float %664, %662
  %668 = fmul fast float %644, 0x3FEFEB8520000000
  %669 = fmul fast float %652, %44
  %670 = fmul fast float %653, %45
  %671 = fmul fast float %669, %669
  %672 = fmul fast float %670, %670
  %673 = fadd fast float %672, %671
  %674 = call float @dx.op.unary.f32(i32 24, float %673)  ; Sqrt(value)
  %675 = fmul fast float %674, 3.125000e-02
  br label %676

; <label>:676                                     ; preds = %862, %589
  %677 = phi float [ %964, %862 ], [ 0.000000e+00, %589 ]
  %678 = phi float [ %968, %862 ], [ 0.000000e+00, %589 ]
  %679 = phi i32 [ %969, %862 ], [ 0, %589 ]
  %680 = sitofp i32 %679 to float
  %681 = fadd fast float %680, %547
  %682 = fmul fast float %681, 0x3FC921FB60000000
  %683 = call float @dx.op.unary.f32(i32 12, float %682)  ; Cos(value)
  %684 = call float @dx.op.unary.f32(i32 13, float %682)  ; Sin(value)
  %685 = fsub fast float -0.000000e+00, %684
  %686 = call float @dx.op.dot3.f32(i32 55, float %665, float %666, float %667, float %637, float %640, float %643)  ; Dot3(ax,ay,az,bx,by,bz)
  %687 = call float @dx.op.unary.f32(i32 6, float %686)  ; FAbs(value)
  %688 = call float @dx.op.unary.f32(i32 6, float %687)  ; FAbs(value)
  %689 = fcmp fast ogt float %688, 0x3EB0C6F7A0000000
  %690 = call float @dx.op.dot3.f32(i32 55, float %683, float %685, float 0.000000e+00, float %637, float %640, float %643)  ; Dot3(ax,ay,az,bx,by,bz)
  %691 = fsub fast float -0.000000e+00, %690
  %692 = fdiv fast float %691, %687
  %693 = select i1 %689, float %692, float 0.000000e+00
  %694 = fmul fast float %693, %693
  %695 = fadd fast float %694, 1.000000e+00
  %696 = call float @dx.op.unary.f32(i32 25, float %695)  ; Rsqrt(value)
  %697 = fmul fast float %693, %696
  br label %698

; <label>:698                                     ; preds = %698, %676
  %699 = phi float [ %776, %698 ], [ %697, %676 ]
  %700 = phi float [ %764, %698 ], [ 2.000000e+02, %676 ]
  %701 = phi i32 [ %777, %698 ], [ 0, %676 ]
  %702 = sitofp i32 %701 to float
  %703 = fadd fast float %702, %568
  %704 = fmul fast float %703, 6.250000e-02
  %705 = fmul fast float %704, %704
  %706 = fmul fast float %705, %675
  %707 = call float @dx.op.binary.f32(i32 36, float %706, float 3.000000e+00)  ; FMin(a,b)
  %708 = fadd fast float %707, 1.000000e+00
  %709 = fmul fast float %705, %652
  %710 = fmul fast float %705, %653
  %711 = fadd fast float %709, %48
  %712 = fmul fast float %711, %683
  %713 = fadd fast float %712, %586
  %714 = fadd fast float %710, %49
  %715 = fmul fast float %714, %684
  %716 = fadd fast float %715, %587
  %717 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %13, float %713, float %716, float undef, float undef, i32 0, i32 0, i32 undef, float %708)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %718 = extractvalue %dx.types.ResRet.f32 %717, 0
  %719 = fcmp fast ogt float %718, -1.000000e+00
  %720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %721 = extractvalue %dx.types.CBufRet.f32 %720, 1
  %722 = select i1 %719, float %721, float 1.000000e+00
  %723 = fadd fast float %718, 1.000000e+00
  %724 = fmul fast float %722, %723
  %725 = call float @dx.op.unary.f32(i32 6, float %724)  ; FAbs(value)
  %726 = fmul fast float %713, %450
  %727 = fmul fast float %716, %451
  %728 = fsub fast float %726, %452
  %729 = fsub fast float %727, %453
  %730 = fmul fast float %728, %725
  %731 = fmul fast float %729, %725
  %732 = fsub fast float %730, %658
  %733 = fsub fast float %731, %659
  %734 = fsub fast float %725, %668
  %735 = call float @dx.op.dot3.f32(i32 55, float %732, float %733, float %734, float %732, float %733, float %734)  ; Dot3(ax,ay,az,bx,by,bz)
  %736 = call float @dx.op.dot3.f32(i32 55, float %732, float %733, float %734, float %637, float %640, float %643)  ; Dot3(ax,ay,az,bx,by,bz)
  %737 = fsub fast float -0.000000e+00, %736
  %738 = call float @dx.op.dot3.f32(i32 55, float %732, float %733, float %734, float %665, float %666, float %667)  ; Dot3(ax,ay,az,bx,by,bz)
  %739 = call float @dx.op.unary.f32(i32 25, float %735)  ; Rsqrt(value)
  %740 = fmul fast float %739, %738
  %741 = bitcast float %735 to i32
  %742 = ashr i32 %741, 1
  %743 = add nsw i32 %742, 532487669
  %744 = bitcast i32 %743 to float
  %745 = fmul fast float %744, 0x3F947AE140000000
  %746 = fsub fast float 2.000000e+00, %745
  %747 = call float @dx.op.unary.f32(i32 7, float %746)  ; Saturate(value)
  %748 = fmul fast float %744, 0x3F7B4E81C0000000
  %749 = fsub fast float 0x3FF5555560000000, %748
  %750 = call float @dx.op.unary.f32(i32 7, float %749)  ; Saturate(value)
  %751 = fmul fast float %725, 0x3F947AE140000000
  %752 = fadd fast float %751, -1.000000e+00
  %753 = call float @dx.op.unary.f32(i32 7, float %752)  ; Saturate(value)
  %754 = fsub fast float %750, %747
  %755 = fmul fast float %753, %754
  %756 = fadd fast float %755, %747
  %757 = fmul fast float %724, %577
  %758 = fcmp fast ogt float %757, 0.000000e+00
  %759 = select i1 %758, float %756, float 0.000000e+00
  %760 = fadd fast float %740, 1.000000e+00
  %761 = fmul fast float %759, %760
  %762 = fadd fast float %761, -1.000000e+00
  %763 = fcmp fast ogt float %762, %699
  %764 = select i1 %763, float %737, float %700
  %765 = fsub fast float %737, %764
  %766 = fmul fast float %765, 0x3FB9999940000000
  %767 = fadd fast float %766, 0xBFDFFFFF80000000
  %768 = call float @dx.op.unary.f32(i32 7, float %767)  ; Saturate(value)
  %769 = fmul fast float %736, 0x3FC99999E0000000
  %770 = fadd fast float %769, 0x3FF0000020000000
  %771 = call float @dx.op.unary.f32(i32 7, float %770)  ; Saturate(value)
  %772 = fmul fast float %768, 2.500000e-01
  %773 = fmul fast float %772, %771
  %774 = fsub fast float %699, %773
  %775 = fcmp ole float %762, %774
  %776 = select i1 %775, float %774, float %762
  %777 = add nuw nsw i32 %701, 1
  %778 = icmp eq i32 %777, 16
  br i1 %778, label %779, label %698

; <label>:779                                     ; preds = %698
  %780 = fsub fast float -0.000000e+00, %697
  br label %781

; <label>:781                                     ; preds = %781, %779
  %782 = phi float [ %859, %781 ], [ %780, %779 ]
  %783 = phi float [ %847, %781 ], [ 2.000000e+02, %779 ]
  %784 = phi i32 [ %860, %781 ], [ 0, %779 ]
  %785 = sitofp i32 %784 to float
  %786 = fadd fast float %785, %568
  %787 = fmul fast float %786, 6.250000e-02
  %788 = fmul fast float %787, %787
  %789 = fmul fast float %788, %675
  %790 = call float @dx.op.binary.f32(i32 36, float %789, float 3.000000e+00)  ; FMin(a,b)
  %791 = fadd fast float %790, 1.000000e+00
  %792 = fmul fast float %788, %652
  %793 = fmul fast float %788, %653
  %794 = fadd fast float %792, %48
  %795 = fmul fast float %683, %794
  %796 = fsub fast float %586, %795
  %797 = fadd fast float %793, %49
  %798 = fmul fast float %684, %797
  %799 = fsub fast float %587, %798
  %800 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %13, float %796, float %799, float undef, float undef, i32 0, i32 0, i32 undef, float %791)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %801 = extractvalue %dx.types.ResRet.f32 %800, 0
  %802 = fcmp fast ogt float %801, -1.000000e+00
  %803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %804 = extractvalue %dx.types.CBufRet.f32 %803, 1
  %805 = select i1 %802, float %804, float 1.000000e+00
  %806 = fadd fast float %801, 1.000000e+00
  %807 = fmul fast float %805, %806
  %808 = call float @dx.op.unary.f32(i32 6, float %807)  ; FAbs(value)
  %809 = fmul fast float %796, %450
  %810 = fmul fast float %799, %451
  %811 = fsub fast float %809, %452
  %812 = fsub fast float %810, %453
  %813 = fmul fast float %811, %808
  %814 = fmul fast float %812, %808
  %815 = fsub fast float %813, %658
  %816 = fsub fast float %814, %659
  %817 = fsub fast float %808, %668
  %818 = call float @dx.op.dot3.f32(i32 55, float %815, float %816, float %817, float %815, float %816, float %817)  ; Dot3(ax,ay,az,bx,by,bz)
  %819 = call float @dx.op.dot3.f32(i32 55, float %815, float %816, float %817, float %637, float %640, float %643)  ; Dot3(ax,ay,az,bx,by,bz)
  %820 = fsub fast float -0.000000e+00, %819
  %821 = call float @dx.op.dot3.f32(i32 55, float %815, float %816, float %817, float %665, float %666, float %667)  ; Dot3(ax,ay,az,bx,by,bz)
  %822 = call float @dx.op.unary.f32(i32 25, float %818)  ; Rsqrt(value)
  %823 = fmul fast float %822, %821
  %824 = bitcast float %818 to i32
  %825 = ashr i32 %824, 1
  %826 = add nsw i32 %825, 532487669
  %827 = bitcast i32 %826 to float
  %828 = fmul fast float %827, 0x3F947AE140000000
  %829 = fsub fast float 2.000000e+00, %828
  %830 = call float @dx.op.unary.f32(i32 7, float %829)  ; Saturate(value)
  %831 = fmul fast float %827, 0x3F7B4E81C0000000
  %832 = fsub fast float 0x3FF5555560000000, %831
  %833 = call float @dx.op.unary.f32(i32 7, float %832)  ; Saturate(value)
  %834 = fmul fast float %808, 0x3F947AE140000000
  %835 = fadd fast float %834, -1.000000e+00
  %836 = call float @dx.op.unary.f32(i32 7, float %835)  ; Saturate(value)
  %837 = fsub fast float %833, %830
  %838 = fmul fast float %836, %837
  %839 = fadd fast float %838, %830
  %840 = fmul fast float %807, %577
  %841 = fcmp fast ogt float %840, 0.000000e+00
  %842 = select i1 %841, float %839, float 0.000000e+00
  %843 = fadd fast float %823, 1.000000e+00
  %844 = fmul fast float %842, %843
  %845 = fadd fast float %844, -1.000000e+00
  %846 = fcmp fast ogt float %845, %782
  %847 = select i1 %846, float %820, float %783
  %848 = fsub fast float %820, %847
  %849 = fmul fast float %848, 0x3FB9999940000000
  %850 = fadd fast float %849, 0xBFDFFFFF80000000
  %851 = call float @dx.op.unary.f32(i32 7, float %850)  ; Saturate(value)
  %852 = fmul fast float %819, 0x3FC99999E0000000
  %853 = fadd fast float %852, 0x3FF0000020000000
  %854 = call float @dx.op.unary.f32(i32 7, float %853)  ; Saturate(value)
  %855 = fmul fast float %851, 2.500000e-01
  %856 = fmul fast float %855, %854
  %857 = fsub fast float %782, %856
  %858 = fcmp ole float %845, %857
  %859 = select i1 %858, float %857, float %845
  %860 = add nuw nsw i32 %784, 1
  %861 = icmp eq i32 %860, 16
  br i1 %861, label %862, label %781

; <label>:862                                     ; preds = %781
  %863 = fmul fast float %667, %685
  %864 = fmul fast float %667, %683
  %865 = fsub fast float -0.000000e+00, %864
  %866 = fmul fast float %683, %666
  %867 = fmul fast float %665, %685
  %868 = fsub fast float %866, %867
  %869 = call float @dx.op.dot3.f32(i32 55, float %637, float %640, float %643, float %863, float %865, float %868)  ; Dot3(ax,ay,az,bx,by,bz)
  %870 = fmul fast float %869, %863
  %871 = fmul fast float %869, %865
  %872 = fmul fast float %869, %868
  %873 = fsub fast float %637, %870
  %874 = fsub fast float %640, %871
  %875 = fsub fast float %643, %872
  %876 = fmul fast float %873, %873
  %877 = fmul fast float %874, %874
  %878 = fadd fast float %876, %877
  %879 = fmul fast float %875, %875
  %880 = fadd fast float %878, %879
  %881 = call float @dx.op.unary.f32(i32 24, float %880)  ; Sqrt(value)
  %882 = call float @dx.op.dot3.f32(i32 55, float %683, float %685, float 0.000000e+00, float %873, float %874, float %875)  ; Dot3(ax,ay,az,bx,by,bz)
  %883 = call float @dx.op.dot3.f32(i32 55, float %683, float %685, float 0.000000e+00, float %665, float %666, float %667)  ; Dot3(ax,ay,az,bx,by,bz)
  %884 = fmul fast float %883, %665
  %885 = fmul fast float %883, %666
  %886 = fmul fast float %883, %667
  %887 = call float @dx.op.dot3.f32(i32 55, float %884, float %885, float %886, float %873, float %874, float %875)  ; Dot3(ax,ay,az,bx,by,bz)
  %888 = fcmp fast oge float %882, %887
  %889 = fdiv fast float 1.000000e+00, %881
  %890 = call float @dx.op.dot3.f32(i32 55, float %873, float %874, float %875, float %665, float %666, float %667)  ; Dot3(ax,ay,az,bx,by,bz)
  %891 = fmul fast float %890, %889
  %892 = call float @dx.op.unary.f32(i32 7, float %891)  ; Saturate(value)
  %893 = fmul fast float %892, %892
  %894 = fsub fast float 1.000000e+00, %893
  %895 = bitcast float %894 to i32
  %896 = ashr i32 %895, 1
  %897 = add nsw i32 %896, 532487669
  %898 = bitcast i32 %897 to float
  %899 = call float @dx.op.unary.f32(i32 6, float %892)  ; FAbs(value)
  %900 = fmul fast float %899, 0x3FC40AE960000000
  %901 = fsub fast float 0x3FF921FB60000000, %900
  %902 = fsub fast float 1.000000e+00, %899
  %903 = bitcast float %902 to i32
  %904 = ashr i32 %903, 1
  %905 = add nsw i32 %904, 532487669
  %906 = bitcast i32 %905 to float
  %907 = fmul fast float %906, %901
  %908 = fcmp fast oge float %892, 0.000000e+00
  %909 = fsub fast float 0x400921FB60000000, %907
  %910 = select i1 %908, float %907, float %909
  %911 = fsub fast float -0.000000e+00, %898
  %912 = select i1 %888, float %911, float %898
  %913 = fsub fast float -0.000000e+00, %910
  %914 = select i1 %888, float %913, float %910
  %915 = call float @dx.op.unary.f32(i32 6, float %776)  ; FAbs(value)
  %916 = fmul fast float %915, 0x3FC40AE960000000
  %917 = fsub fast float 0x3FF921FB60000000, %916
  %918 = fsub fast float 1.000000e+00, %915
  %919 = bitcast float %918 to i32
  %920 = ashr i32 %919, 1
  %921 = add nsw i32 %920, 532487669
  %922 = bitcast i32 %921 to float
  %923 = fmul fast float %922, %917
  %924 = fcmp fast oge float %776, 0.000000e+00
  %925 = fsub fast float 0x400921FB60000000, %923
  %926 = select i1 %924, float %923, float %925
  %927 = call float @dx.op.unary.f32(i32 6, float %859)  ; FAbs(value)
  %928 = fmul fast float %927, 0x3FC40AE960000000
  %929 = fsub fast float 0x3FF921FB60000000, %928
  %930 = fsub fast float 1.000000e+00, %927
  %931 = bitcast float %930 to i32
  %932 = ashr i32 %931, 1
  %933 = add nsw i32 %932, 532487669
  %934 = bitcast i32 %933 to float
  %935 = fmul fast float %934, %929
  %936 = fcmp fast oge float %859, 0.000000e+00
  %937 = fsub fast float 0x400921FB60000000, %935
  %938 = select i1 %936, float %935, float %937
  %939 = fsub fast float -0.000000e+00, %914
  %940 = fsub fast float %939, %926
  %941 = call float @dx.op.binary.f32(i32 35, float %940, float 0xBFF921FB60000000)  ; FMax(a,b)
  %942 = call float @dx.op.binary.f32(i32 36, float %941, float 0x3FF921FB60000000)  ; FMin(a,b)
  %943 = fadd fast float %914, %942
  %944 = fsub fast float %938, %914
  %945 = call float @dx.op.binary.f32(i32 35, float %944, float 0xBFF921FB60000000)  ; FMax(a,b)
  %946 = call float @dx.op.binary.f32(i32 36, float %945, float 0x3FF921FB60000000)  ; FMin(a,b)
  %947 = fadd fast float %914, %946
  %948 = fmul fast float %943, 2.000000e+00
  %949 = fsub fast float %948, %914
  %950 = call float @dx.op.unary.f32(i32 12, float %949)  ; Cos(value)
  %951 = fsub fast float -0.000000e+00, %950
  %952 = fmul fast float %947, 2.000000e+00
  %953 = fsub fast float %952, %914
  %954 = call float @dx.op.unary.f32(i32 12, float %953)  ; Cos(value)
  %955 = fmul fast float %892, 2.000000e+00
  %956 = fadd fast float %947, %943
  %957 = fmul fast float %912, %956
  %958 = fmul fast float %957, 2.000000e+00
  %959 = fsub fast float %951, %954
  %960 = fadd fast float %959, %955
  %961 = fadd fast float %960, %958
  %962 = fmul fast float %881, 2.500000e-01
  %963 = fmul fast float %962, %961
  %964 = fadd fast float %963, %677
  %965 = fmul fast float %914, %912
  %966 = fadd fast float %965, %892
  %967 = fmul fast float %966, %881
  %968 = fadd fast float %967, %678
  %969 = add nuw nsw i32 %679, 1
  %970 = icmp eq i32 %969, 16
  br i1 %970, label %971, label %676

; <label>:971                                     ; preds = %862
  %972 = fdiv fast float %964, %968
  br label %973

; <label>:973                                     ; preds = %971, %524
  %974 = phi float [ %972, %971 ], [ 1.000000e+00, %524 ]
  %975 = fmul fast float %974, %974
  store float %974, float addrspace(3)* %199, align 4
  store float %975, float addrspace(3)* %202, align 4
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %976 = load float, float addrspace(3)* %207, align 4
  %977 = load float, float addrspace(3)* %211, align 4
  %978 = fadd fast float %976, %974
  %979 = fadd fast float %977, %975
  %980 = load float, float addrspace(3)* %218, align 4
  %981 = load float, float addrspace(3)* %222, align 4
  %982 = fadd fast float %978, %980
  %983 = fadd fast float %979, %981
  %984 = load float, float addrspace(3)* %229, align 4
  %985 = load float, float addrspace(3)* %233, align 4
  %986 = fadd fast float %982, %984
  %987 = fadd fast float %983, %985
  store float %986, float addrspace(3)* %199, align 4
  store float %987, float addrspace(3)* %202, align 4
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %988 = load float, float addrspace(3)* %240, align 4
  %989 = mul i32 %237, 2
  %990 = add i32 1, %989
  %991 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %990
  %992 = load float, float addrspace(3)* %991, align 4
  %993 = fadd fast float %988, %986
  %994 = fadd fast float %992, %987
  %995 = load float, float addrspace(3)* %246, align 4
  %996 = mul i32 %243, 2
  %997 = add i32 1, %996
  %998 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %997
  %999 = load float, float addrspace(3)* %998, align 4
  %1000 = fadd fast float %993, %995
  %1001 = fadd fast float %994, %999
  %1002 = load float, float addrspace(3)* %252, align 4
  %1003 = mul i32 %249, 2
  %1004 = add i32 1, %1003
  %1005 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %1004
  %1006 = load float, float addrspace(3)* %1005, align 4
  %1007 = fadd fast float %1000, %1002
  %1008 = fadd fast float %1001, %1006
  %1009 = fmul fast float %1007, 6.250000e-02
  %1010 = fmul fast float %1008, 6.250000e-02
  %1011 = fmul fast float %1009, %1009
  %1012 = fsub fast float %1010, %1011
  %1013 = call float @dx.op.binary.f32(i32 35, float %1009, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %1014 = fdiv fast float %1012, %1013
  %1015 = fmul fast float %1014, 6.553500e+04
  %1016 = fptoui float %1015 to i32
  br i1 %522, label %1017, label %1018, !dx.controlflow.hints !43

; <label>:1017                                    ; preds = %973
  store i32 0, i32 addrspace(3)* @"\01?gtaoQuadMaxUint@@3IA", align 4, !tbaa !31, !noalias !42
  br label %1018

; <label>:1018                                    ; preds = %1017, %973
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1019 = atomicrmw umax i32 addrspace(3)* @"\01?gtaoQuadMaxUint@@3IA", i32 %1016 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1020 = load i32, i32 addrspace(3)* @"\01?gtaoQuadMaxUint@@3IA", align 4, !tbaa !31, !noalias !42
  %1021 = uitofp i32 %1020 to float
  %1022 = fmul fast float %1021, 0x3EF0001000000000
  %1023 = fcmp fast ogt float %1022, 0x3FA1EB8520000000
  %1024 = select i1 %1023, i32 2, i32 1
  %1025 = fcmp fast ogt float %1022, 0x3FD3333340000000
  %1026 = zext i1 %1025 to i32
  %1027 = add nuw nsw i32 %1024, %1026
  %1028 = fcmp fast ogt float %1022, 0x3FE99999A0000000
  %1029 = zext i1 %1028 to i32
  %1030 = add nuw nsw i32 %1027, %1029
  %1031 = call i32 @dx.op.binary.i32(i32 39, i32 %1030, i32 %528)  ; UMax(a,b)
  %1032 = icmp ugt i32 %1031, 1
  br i1 %1032, label %1033, label %1435, !dx.controlflow.hints !49

; <label>:1033                                    ; preds = %1018
  %1034 = getelementptr inbounds [4 x float], [4 x float]* %27, i32 0, i32 0
  store float %386, float* %1034, align 4
  %1035 = getelementptr inbounds [4 x float], [4 x float]* %27, i32 0, i32 1
  store float %382, float* %1035, align 4
  %1036 = getelementptr inbounds [4 x float], [4 x float]* %27, i32 0, i32 2
  store float %374, float* %1036, align 4
  %1037 = getelementptr inbounds [4 x float], [4 x float]* %27, i32 0, i32 3
  store float %378, float* %1037, align 4
  %1038 = getelementptr [4 x float], [4 x float]* %27, i32 0, i32 %486
  %1039 = load float, float* %1038, align 4, !tbaa !35, !noalias !50
  %1040 = and i32 %486, 1
  %1041 = uitofp i32 %1040 to float
  %1042 = fadd fast float %1041, 5.000000e-01
  %1043 = lshr i32 %486, 1
  %1044 = uitofp i32 %1043 to float
  %1045 = fadd fast float %1044, 5.000000e-01
  %1046 = fmul fast float %1042, %454
  %1047 = fmul fast float %1045, %455
  %1048 = fadd fast float %1046, %52
  %1049 = fadd fast float %1047, %53
  %1050 = fcmp fast olt float %1039, 6.550000e+04
  br i1 %1050, label %1051, label %1435, !dx.controlflow.hints !48

; <label>:1051                                    ; preds = %1033
  %1052 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 0
  store i32 %416, i32* %1052, align 4
  %1053 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 1
  store i32 %448, i32* %1053, align 4
  %1054 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 2
  store i32 %428, i32* %1054, align 4
  %1055 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 3
  store i32 %439, i32* %1055, align 4
  %1056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 99)  ; CBufferLoadLegacy(handle,regIndex)
  %1057 = extractvalue %dx.types.CBufRet.f32 %1056, 0
  %1058 = extractvalue %dx.types.CBufRet.f32 %1056, 1
  %1059 = extractvalue %dx.types.CBufRet.f32 %1056, 2
  %1060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 100)  ; CBufferLoadLegacy(handle,regIndex)
  %1061 = extractvalue %dx.types.CBufRet.f32 %1060, 0
  %1062 = extractvalue %dx.types.CBufRet.f32 %1060, 1
  %1063 = extractvalue %dx.types.CBufRet.f32 %1060, 2
  %1064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 101)  ; CBufferLoadLegacy(handle,regIndex)
  %1065 = extractvalue %dx.types.CBufRet.f32 %1064, 0
  %1066 = extractvalue %dx.types.CBufRet.f32 %1064, 1
  %1067 = extractvalue %dx.types.CBufRet.f32 %1064, 2
  %1068 = getelementptr [4 x i32], [4 x i32]* %26, i32 0, i32 %486
  %1069 = load i32, i32* %1068, align 4, !tbaa !31, !noalias !50
  %1070 = lshr i32 %1069, 8
  %1071 = and i32 %1069, 255
  %1072 = and i32 %1070, 255
  %1073 = uitofp i32 %1071 to float
  %1074 = uitofp i32 %1072 to float
  %1075 = fmul fast float %1073, 0x3F80101020000000
  %1076 = fmul fast float %1074, 0x3F80101020000000
  %1077 = fadd fast float %1075, -1.000000e+00
  %1078 = fadd fast float %1076, -1.000000e+00
  %1079 = call float @dx.op.unary.f32(i32 6, float %1077)  ; FAbs(value)
  %1080 = fsub fast float 1.000000e+00, %1079
  %1081 = call float @dx.op.unary.f32(i32 6, float %1078)  ; FAbs(value)
  %1082 = fsub fast float %1080, %1081
  %1083 = fsub fast float -0.000000e+00, %1082
  %1084 = call float @dx.op.binary.f32(i32 35, float %1083, float 0.000000e+00)  ; FMax(a,b)
  %1085 = fcmp fast ogt float %1077, 0.000000e+00
  %1086 = fsub fast float -0.000000e+00, %1084
  %1087 = select i1 %1085, float %1086, float %1084
  %1088 = fadd fast float %1087, %1077
  %1089 = fcmp fast ogt float %1078, 0.000000e+00
  %1090 = select i1 %1089, float %1086, float %1084
  %1091 = fadd fast float %1090, %1078
  %1092 = call float @dx.op.dot3.f32(i32 55, float %1088, float %1091, float %1082, float %1088, float %1091, float %1082)  ; Dot3(ax,ay,az,bx,by,bz)
  %1093 = call float @dx.op.unary.f32(i32 25, float %1092)  ; Rsqrt(value)
  %1094 = fmul fast float %1088, %1093
  %1095 = fmul fast float %1091, %1093
  %1096 = fmul fast float %1093, %1082
  %1097 = fmul fast float %1094, %1057
  %1098 = call float @dx.op.tertiary.f32(i32 46, float %1095, float %1058, float %1097)  ; FMad(a,b,c)
  %1099 = call float @dx.op.tertiary.f32(i32 46, float %1096, float %1059, float %1098)  ; FMad(a,b,c)
  %1100 = fmul fast float %1094, %1061
  %1101 = call float @dx.op.tertiary.f32(i32 46, float %1095, float %1062, float %1100)  ; FMad(a,b,c)
  %1102 = call float @dx.op.tertiary.f32(i32 46, float %1096, float %1063, float %1101)  ; FMad(a,b,c)
  %1103 = fmul fast float %1094, %1065
  %1104 = call float @dx.op.tertiary.f32(i32 46, float %1095, float %1066, float %1103)  ; FMad(a,b,c)
  %1105 = call float @dx.op.tertiary.f32(i32 46, float %1096, float %1067, float %1104)  ; FMad(a,b,c)
  %1106 = call float @dx.op.unary.f32(i32 6, float %1039)  ; FAbs(value)
  %1107 = fmul fast float %454, %39
  %1108 = fmul fast float %455, %40
  %1109 = fmul fast float %1106, %452
  %1110 = fmul fast float %453, %1106
  %1111 = fsub fast float -0.000000e+00, %1110
  %1112 = fdiv fast float 5.000000e+01, %1109
  %1113 = fdiv fast float 5.000000e+01, %1111
  %1114 = call float @dx.op.binary.f32(i32 36, float %1107, float %1112)  ; FMin(a,b)
  %1115 = call float @dx.op.binary.f32(i32 36, float %1108, float %1113)  ; FMin(a,b)
  %1116 = fmul fast float %1048, %450
  %1117 = fmul fast float %1049, %451
  %1118 = fsub fast float %1116, %452
  %1119 = fsub fast float %1117, %453
  %1120 = fmul fast float %1106, %1118
  %1121 = fmul fast float %1106, %1119
  %1122 = fsub fast float -0.000000e+00, %1120
  %1123 = fsub fast float -0.000000e+00, %1121
  %1124 = fsub fast float -0.000000e+00, %1106
  %1125 = call float @dx.op.dot3.f32(i32 55, float %1122, float %1123, float %1124, float %1122, float %1123, float %1124)  ; Dot3(ax,ay,az,bx,by,bz)
  %1126 = call float @dx.op.unary.f32(i32 25, float %1125)  ; Rsqrt(value)
  %1127 = fmul fast float %1126, %1122
  %1128 = fmul fast float %1126, %1123
  %1129 = fmul fast float %1126, %1124
  %1130 = fmul fast float %1106, 0x3FEFEB8520000000
  %1131 = fmul fast float %1114, %44
  %1132 = fmul fast float %1115, %45
  %1133 = fmul fast float %1131, %1131
  %1134 = fmul fast float %1132, %1132
  %1135 = fadd fast float %1134, %1133
  %1136 = call float @dx.op.unary.f32(i32 24, float %1135)  ; Sqrt(value)
  %1137 = fmul fast float %1136, 3.125000e-02
  br label %1138

; <label>:1138                                    ; preds = %1324, %1051
  %1139 = phi float [ %1430, %1324 ], [ 0.000000e+00, %1051 ]
  %1140 = phi i32 [ %1431, %1324 ], [ 0, %1051 ]
  %1141 = phi float [ %1426, %1324 ], [ 0.000000e+00, %1051 ]
  %1142 = sitofp i32 %1140 to float
  %1143 = fadd fast float %1142, %548
  %1144 = fmul fast float %1143, 0x3FC921FB60000000
  %1145 = call float @dx.op.unary.f32(i32 12, float %1144)  ; Cos(value)
  %1146 = call float @dx.op.unary.f32(i32 13, float %1144)  ; Sin(value)
  %1147 = fsub fast float -0.000000e+00, %1146
  %1148 = call float @dx.op.dot3.f32(i32 55, float %1127, float %1128, float %1129, float %1099, float %1102, float %1105)  ; Dot3(ax,ay,az,bx,by,bz)
  %1149 = call float @dx.op.unary.f32(i32 6, float %1148)  ; FAbs(value)
  %1150 = call float @dx.op.unary.f32(i32 6, float %1149)  ; FAbs(value)
  %1151 = fcmp fast ogt float %1150, 0x3EB0C6F7A0000000
  %1152 = call float @dx.op.dot3.f32(i32 55, float %1145, float %1147, float 0.000000e+00, float %1099, float %1102, float %1105)  ; Dot3(ax,ay,az,bx,by,bz)
  %1153 = fsub fast float -0.000000e+00, %1152
  %1154 = fdiv fast float %1153, %1149
  %1155 = select i1 %1151, float %1154, float 0.000000e+00
  %1156 = fmul fast float %1155, %1155
  %1157 = fadd fast float %1156, 1.000000e+00
  %1158 = call float @dx.op.unary.f32(i32 25, float %1157)  ; Rsqrt(value)
  %1159 = fmul fast float %1155, %1158
  br label %1160

; <label>:1160                                    ; preds = %1160, %1138
  %1161 = phi float [ %1238, %1160 ], [ %1159, %1138 ]
  %1162 = phi float [ %1226, %1160 ], [ 2.000000e+02, %1138 ]
  %1163 = phi i32 [ %1239, %1160 ], [ 0, %1138 ]
  %1164 = sitofp i32 %1163 to float
  %1165 = fadd fast float %1164, %569
  %1166 = fmul fast float %1165, 6.250000e-02
  %1167 = fmul fast float %1166, %1166
  %1168 = fmul fast float %1167, %1137
  %1169 = call float @dx.op.binary.f32(i32 36, float %1168, float 3.000000e+00)  ; FMin(a,b)
  %1170 = fadd fast float %1169, 1.000000e+00
  %1171 = fmul fast float %1167, %1114
  %1172 = fmul fast float %1167, %1115
  %1173 = fadd fast float %1171, %48
  %1174 = fmul fast float %1173, %1145
  %1175 = fadd fast float %1174, %1048
  %1176 = fadd fast float %1172, %49
  %1177 = fmul fast float %1176, %1146
  %1178 = fadd fast float %1177, %1049
  %1179 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %13, float %1175, float %1178, float undef, float undef, i32 0, i32 0, i32 undef, float %1170)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1180 = extractvalue %dx.types.ResRet.f32 %1179, 0
  %1181 = fcmp fast ogt float %1180, -1.000000e+00
  %1182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1183 = extractvalue %dx.types.CBufRet.f32 %1182, 1
  %1184 = select i1 %1181, float %1183, float 1.000000e+00
  %1185 = fadd fast float %1180, 1.000000e+00
  %1186 = fmul fast float %1184, %1185
  %1187 = call float @dx.op.unary.f32(i32 6, float %1186)  ; FAbs(value)
  %1188 = fmul fast float %1175, %450
  %1189 = fmul fast float %1178, %451
  %1190 = fsub fast float %1188, %452
  %1191 = fsub fast float %1189, %453
  %1192 = fmul fast float %1190, %1187
  %1193 = fmul fast float %1191, %1187
  %1194 = fsub fast float %1192, %1120
  %1195 = fsub fast float %1193, %1121
  %1196 = fsub fast float %1187, %1130
  %1197 = call float @dx.op.dot3.f32(i32 55, float %1194, float %1195, float %1196, float %1194, float %1195, float %1196)  ; Dot3(ax,ay,az,bx,by,bz)
  %1198 = call float @dx.op.dot3.f32(i32 55, float %1194, float %1195, float %1196, float %1099, float %1102, float %1105)  ; Dot3(ax,ay,az,bx,by,bz)
  %1199 = fsub fast float -0.000000e+00, %1198
  %1200 = call float @dx.op.dot3.f32(i32 55, float %1194, float %1195, float %1196, float %1127, float %1128, float %1129)  ; Dot3(ax,ay,az,bx,by,bz)
  %1201 = call float @dx.op.unary.f32(i32 25, float %1197)  ; Rsqrt(value)
  %1202 = fmul fast float %1201, %1200
  %1203 = bitcast float %1197 to i32
  %1204 = ashr i32 %1203, 1
  %1205 = add nsw i32 %1204, 532487669
  %1206 = bitcast i32 %1205 to float
  %1207 = fmul fast float %1206, 0x3F947AE140000000
  %1208 = fsub fast float 2.000000e+00, %1207
  %1209 = call float @dx.op.unary.f32(i32 7, float %1208)  ; Saturate(value)
  %1210 = fmul fast float %1206, 0x3F7B4E81C0000000
  %1211 = fsub fast float 0x3FF5555560000000, %1210
  %1212 = call float @dx.op.unary.f32(i32 7, float %1211)  ; Saturate(value)
  %1213 = fmul fast float %1187, 0x3F947AE140000000
  %1214 = fadd fast float %1213, -1.000000e+00
  %1215 = call float @dx.op.unary.f32(i32 7, float %1214)  ; Saturate(value)
  %1216 = fsub fast float %1212, %1209
  %1217 = fmul fast float %1215, %1216
  %1218 = fadd fast float %1217, %1209
  %1219 = fmul fast float %1186, %1039
  %1220 = fcmp fast ogt float %1219, 0.000000e+00
  %1221 = select i1 %1220, float %1218, float 0.000000e+00
  %1222 = fadd fast float %1202, 1.000000e+00
  %1223 = fmul fast float %1221, %1222
  %1224 = fadd fast float %1223, -1.000000e+00
  %1225 = fcmp fast ogt float %1224, %1161
  %1226 = select i1 %1225, float %1199, float %1162
  %1227 = fsub fast float %1199, %1226
  %1228 = fmul fast float %1227, 0x3FB9999940000000
  %1229 = fadd fast float %1228, 0xBFDFFFFF80000000
  %1230 = call float @dx.op.unary.f32(i32 7, float %1229)  ; Saturate(value)
  %1231 = fmul fast float %1198, 0x3FC99999E0000000
  %1232 = fadd fast float %1231, 0x3FF0000020000000
  %1233 = call float @dx.op.unary.f32(i32 7, float %1232)  ; Saturate(value)
  %1234 = fmul fast float %1230, 2.500000e-01
  %1235 = fmul fast float %1234, %1233
  %1236 = fsub fast float %1161, %1235
  %1237 = fcmp ole float %1224, %1236
  %1238 = select i1 %1237, float %1236, float %1224
  %1239 = add nuw nsw i32 %1163, 1
  %1240 = icmp eq i32 %1239, 16
  br i1 %1240, label %1241, label %1160

; <label>:1241                                    ; preds = %1160
  %1242 = fsub fast float -0.000000e+00, %1159
  br label %1243

; <label>:1243                                    ; preds = %1243, %1241
  %1244 = phi float [ %1321, %1243 ], [ %1242, %1241 ]
  %1245 = phi float [ %1309, %1243 ], [ 2.000000e+02, %1241 ]
  %1246 = phi i32 [ %1322, %1243 ], [ 0, %1241 ]
  %1247 = sitofp i32 %1246 to float
  %1248 = fadd fast float %1247, %569
  %1249 = fmul fast float %1248, 6.250000e-02
  %1250 = fmul fast float %1249, %1249
  %1251 = fmul fast float %1250, %1137
  %1252 = call float @dx.op.binary.f32(i32 36, float %1251, float 3.000000e+00)  ; FMin(a,b)
  %1253 = fadd fast float %1252, 1.000000e+00
  %1254 = fmul fast float %1250, %1114
  %1255 = fmul fast float %1250, %1115
  %1256 = fadd fast float %1254, %48
  %1257 = fmul fast float %1145, %1256
  %1258 = fsub fast float %1048, %1257
  %1259 = fadd fast float %1255, %49
  %1260 = fmul fast float %1146, %1259
  %1261 = fsub fast float %1049, %1260
  %1262 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %13, float %1258, float %1261, float undef, float undef, i32 0, i32 0, i32 undef, float %1253)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1263 = extractvalue %dx.types.ResRet.f32 %1262, 0
  %1264 = fcmp fast ogt float %1263, -1.000000e+00
  %1265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1266 = extractvalue %dx.types.CBufRet.f32 %1265, 1
  %1267 = select i1 %1264, float %1266, float 1.000000e+00
  %1268 = fadd fast float %1263, 1.000000e+00
  %1269 = fmul fast float %1267, %1268
  %1270 = call float @dx.op.unary.f32(i32 6, float %1269)  ; FAbs(value)
  %1271 = fmul fast float %1258, %450
  %1272 = fmul fast float %1261, %451
  %1273 = fsub fast float %1271, %452
  %1274 = fsub fast float %1272, %453
  %1275 = fmul fast float %1273, %1270
  %1276 = fmul fast float %1274, %1270
  %1277 = fsub fast float %1275, %1120
  %1278 = fsub fast float %1276, %1121
  %1279 = fsub fast float %1270, %1130
  %1280 = call float @dx.op.dot3.f32(i32 55, float %1277, float %1278, float %1279, float %1277, float %1278, float %1279)  ; Dot3(ax,ay,az,bx,by,bz)
  %1281 = call float @dx.op.dot3.f32(i32 55, float %1277, float %1278, float %1279, float %1099, float %1102, float %1105)  ; Dot3(ax,ay,az,bx,by,bz)
  %1282 = fsub fast float -0.000000e+00, %1281
  %1283 = call float @dx.op.dot3.f32(i32 55, float %1277, float %1278, float %1279, float %1127, float %1128, float %1129)  ; Dot3(ax,ay,az,bx,by,bz)
  %1284 = call float @dx.op.unary.f32(i32 25, float %1280)  ; Rsqrt(value)
  %1285 = fmul fast float %1284, %1283
  %1286 = bitcast float %1280 to i32
  %1287 = ashr i32 %1286, 1
  %1288 = add nsw i32 %1287, 532487669
  %1289 = bitcast i32 %1288 to float
  %1290 = fmul fast float %1289, 0x3F947AE140000000
  %1291 = fsub fast float 2.000000e+00, %1290
  %1292 = call float @dx.op.unary.f32(i32 7, float %1291)  ; Saturate(value)
  %1293 = fmul fast float %1289, 0x3F7B4E81C0000000
  %1294 = fsub fast float 0x3FF5555560000000, %1293
  %1295 = call float @dx.op.unary.f32(i32 7, float %1294)  ; Saturate(value)
  %1296 = fmul fast float %1270, 0x3F947AE140000000
  %1297 = fadd fast float %1296, -1.000000e+00
  %1298 = call float @dx.op.unary.f32(i32 7, float %1297)  ; Saturate(value)
  %1299 = fsub fast float %1295, %1292
  %1300 = fmul fast float %1298, %1299
  %1301 = fadd fast float %1300, %1292
  %1302 = fmul fast float %1269, %1039
  %1303 = fcmp fast ogt float %1302, 0.000000e+00
  %1304 = select i1 %1303, float %1301, float 0.000000e+00
  %1305 = fadd fast float %1285, 1.000000e+00
  %1306 = fmul fast float %1304, %1305
  %1307 = fadd fast float %1306, -1.000000e+00
  %1308 = fcmp fast ogt float %1307, %1244
  %1309 = select i1 %1308, float %1282, float %1245
  %1310 = fsub fast float %1282, %1309
  %1311 = fmul fast float %1310, 0x3FB9999940000000
  %1312 = fadd fast float %1311, 0xBFDFFFFF80000000
  %1313 = call float @dx.op.unary.f32(i32 7, float %1312)  ; Saturate(value)
  %1314 = fmul fast float %1281, 0x3FC99999E0000000
  %1315 = fadd fast float %1314, 0x3FF0000020000000
  %1316 = call float @dx.op.unary.f32(i32 7, float %1315)  ; Saturate(value)
  %1317 = fmul fast float %1313, 2.500000e-01
  %1318 = fmul fast float %1317, %1316
  %1319 = fsub fast float %1244, %1318
  %1320 = fcmp ole float %1307, %1319
  %1321 = select i1 %1320, float %1319, float %1307
  %1322 = add nuw nsw i32 %1246, 1
  %1323 = icmp eq i32 %1322, 16
  br i1 %1323, label %1324, label %1243

; <label>:1324                                    ; preds = %1243
  %1325 = fmul fast float %1129, %1147
  %1326 = fmul fast float %1129, %1145
  %1327 = fsub fast float -0.000000e+00, %1326
  %1328 = fmul fast float %1145, %1128
  %1329 = fmul fast float %1127, %1147
  %1330 = fsub fast float %1328, %1329
  %1331 = call float @dx.op.dot3.f32(i32 55, float %1099, float %1102, float %1105, float %1325, float %1327, float %1330)  ; Dot3(ax,ay,az,bx,by,bz)
  %1332 = fmul fast float %1331, %1325
  %1333 = fmul fast float %1331, %1327
  %1334 = fmul fast float %1331, %1330
  %1335 = fsub fast float %1099, %1332
  %1336 = fsub fast float %1102, %1333
  %1337 = fsub fast float %1105, %1334
  %1338 = fmul fast float %1335, %1335
  %1339 = fmul fast float %1336, %1336
  %1340 = fadd fast float %1338, %1339
  %1341 = fmul fast float %1337, %1337
  %1342 = fadd fast float %1340, %1341
  %1343 = call float @dx.op.unary.f32(i32 24, float %1342)  ; Sqrt(value)
  %1344 = call float @dx.op.dot3.f32(i32 55, float %1145, float %1147, float 0.000000e+00, float %1335, float %1336, float %1337)  ; Dot3(ax,ay,az,bx,by,bz)
  %1345 = call float @dx.op.dot3.f32(i32 55, float %1145, float %1147, float 0.000000e+00, float %1127, float %1128, float %1129)  ; Dot3(ax,ay,az,bx,by,bz)
  %1346 = fmul fast float %1345, %1127
  %1347 = fmul fast float %1345, %1128
  %1348 = fmul fast float %1345, %1129
  %1349 = call float @dx.op.dot3.f32(i32 55, float %1346, float %1347, float %1348, float %1335, float %1336, float %1337)  ; Dot3(ax,ay,az,bx,by,bz)
  %1350 = fcmp fast oge float %1344, %1349
  %1351 = fdiv fast float 1.000000e+00, %1343
  %1352 = call float @dx.op.dot3.f32(i32 55, float %1335, float %1336, float %1337, float %1127, float %1128, float %1129)  ; Dot3(ax,ay,az,bx,by,bz)
  %1353 = fmul fast float %1352, %1351
  %1354 = call float @dx.op.unary.f32(i32 7, float %1353)  ; Saturate(value)
  %1355 = fmul fast float %1354, %1354
  %1356 = fsub fast float 1.000000e+00, %1355
  %1357 = bitcast float %1356 to i32
  %1358 = ashr i32 %1357, 1
  %1359 = add nsw i32 %1358, 532487669
  %1360 = bitcast i32 %1359 to float
  %1361 = call float @dx.op.unary.f32(i32 6, float %1354)  ; FAbs(value)
  %1362 = fmul fast float %1361, 0x3FC40AE960000000
  %1363 = fsub fast float 0x3FF921FB60000000, %1362
  %1364 = fsub fast float 1.000000e+00, %1361
  %1365 = bitcast float %1364 to i32
  %1366 = ashr i32 %1365, 1
  %1367 = add nsw i32 %1366, 532487669
  %1368 = bitcast i32 %1367 to float
  %1369 = fmul fast float %1368, %1363
  %1370 = fcmp fast oge float %1354, 0.000000e+00
  %1371 = fsub fast float 0x400921FB60000000, %1369
  %1372 = select i1 %1370, float %1369, float %1371
  %1373 = fsub fast float -0.000000e+00, %1360
  %1374 = select i1 %1350, float %1373, float %1360
  %1375 = fsub fast float -0.000000e+00, %1372
  %1376 = select i1 %1350, float %1375, float %1372
  %1377 = call float @dx.op.unary.f32(i32 6, float %1238)  ; FAbs(value)
  %1378 = fmul fast float %1377, 0x3FC40AE960000000
  %1379 = fsub fast float 0x3FF921FB60000000, %1378
  %1380 = fsub fast float 1.000000e+00, %1377
  %1381 = bitcast float %1380 to i32
  %1382 = ashr i32 %1381, 1
  %1383 = add nsw i32 %1382, 532487669
  %1384 = bitcast i32 %1383 to float
  %1385 = fmul fast float %1384, %1379
  %1386 = fcmp fast oge float %1238, 0.000000e+00
  %1387 = fsub fast float 0x400921FB60000000, %1385
  %1388 = select i1 %1386, float %1385, float %1387
  %1389 = call float @dx.op.unary.f32(i32 6, float %1321)  ; FAbs(value)
  %1390 = fmul fast float %1389, 0x3FC40AE960000000
  %1391 = fsub fast float 0x3FF921FB60000000, %1390
  %1392 = fsub fast float 1.000000e+00, %1389
  %1393 = bitcast float %1392 to i32
  %1394 = ashr i32 %1393, 1
  %1395 = add nsw i32 %1394, 532487669
  %1396 = bitcast i32 %1395 to float
  %1397 = fmul fast float %1396, %1391
  %1398 = fcmp fast oge float %1321, 0.000000e+00
  %1399 = fsub fast float 0x400921FB60000000, %1397
  %1400 = select i1 %1398, float %1397, float %1399
  %1401 = fsub fast float -0.000000e+00, %1376
  %1402 = fsub fast float %1401, %1388
  %1403 = call float @dx.op.binary.f32(i32 35, float %1402, float 0xBFF921FB60000000)  ; FMax(a,b)
  %1404 = call float @dx.op.binary.f32(i32 36, float %1403, float 0x3FF921FB60000000)  ; FMin(a,b)
  %1405 = fadd fast float %1376, %1404
  %1406 = fsub fast float %1400, %1376
  %1407 = call float @dx.op.binary.f32(i32 35, float %1406, float 0xBFF921FB60000000)  ; FMax(a,b)
  %1408 = call float @dx.op.binary.f32(i32 36, float %1407, float 0x3FF921FB60000000)  ; FMin(a,b)
  %1409 = fadd fast float %1376, %1408
  %1410 = fmul fast float %1405, 2.000000e+00
  %1411 = fsub fast float %1410, %1376
  %1412 = call float @dx.op.unary.f32(i32 12, float %1411)  ; Cos(value)
  %1413 = fsub fast float -0.000000e+00, %1412
  %1414 = fmul fast float %1409, 2.000000e+00
  %1415 = fsub fast float %1414, %1376
  %1416 = call float @dx.op.unary.f32(i32 12, float %1415)  ; Cos(value)
  %1417 = fmul fast float %1354, 2.000000e+00
  %1418 = fadd fast float %1409, %1405
  %1419 = fmul fast float %1374, %1418
  %1420 = fmul fast float %1419, 2.000000e+00
  %1421 = fsub fast float %1413, %1416
  %1422 = fadd fast float %1421, %1417
  %1423 = fadd fast float %1422, %1420
  %1424 = fmul fast float %1343, 2.500000e-01
  %1425 = fmul fast float %1424, %1423
  %1426 = fadd fast float %1425, %1141
  %1427 = fmul fast float %1376, %1374
  %1428 = fadd fast float %1427, %1354
  %1429 = fmul fast float %1428, %1343
  %1430 = fadd fast float %1429, %1139
  %1431 = add nuw nsw i32 %1140, 1
  %1432 = icmp eq i32 %1431, 16
  br i1 %1432, label %1433, label %1138

; <label>:1433                                    ; preds = %1324
  %1434 = fdiv fast float %1426, %1430
  br label %1435

; <label>:1435                                    ; preds = %1433, %1033, %1018
  %1436 = phi float [ %974, %1018 ], [ %1434, %1433 ], [ 1.000000e+00, %1033 ]
  %1437 = icmp ugt i32 %1031, 2
  br i1 %1437, label %1438, label %1840, !dx.controlflow.hints !54

; <label>:1438                                    ; preds = %1435
  %1439 = getelementptr inbounds [4 x float], [4 x float]* %25, i32 0, i32 0
  store float %386, float* %1439, align 4
  %1440 = getelementptr inbounds [4 x float], [4 x float]* %25, i32 0, i32 1
  store float %382, float* %1440, align 4
  %1441 = getelementptr inbounds [4 x float], [4 x float]* %25, i32 0, i32 2
  store float %374, float* %1441, align 4
  %1442 = getelementptr inbounds [4 x float], [4 x float]* %25, i32 0, i32 3
  store float %378, float* %1442, align 4
  %1443 = getelementptr [4 x float], [4 x float]* %25, i32 0, i32 %480
  %1444 = load float, float* %1443, align 4, !tbaa !35, !noalias !55
  %1445 = and i32 %480, 1
  %1446 = uitofp i32 %1445 to float
  %1447 = fadd fast float %1446, 5.000000e-01
  %1448 = lshr i32 %480, 1
  %1449 = uitofp i32 %1448 to float
  %1450 = fadd fast float %1449, 5.000000e-01
  %1451 = fmul fast float %1447, %454
  %1452 = fmul fast float %1450, %455
  %1453 = fadd fast float %1451, %52
  %1454 = fadd fast float %1452, %53
  %1455 = fcmp fast olt float %1444, 6.550000e+04
  br i1 %1455, label %1456, label %1840, !dx.controlflow.hints !48

; <label>:1456                                    ; preds = %1438
  %1457 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 0
  store i32 %416, i32* %1457, align 4
  %1458 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 1
  store i32 %448, i32* %1458, align 4
  %1459 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 2
  store i32 %428, i32* %1459, align 4
  %1460 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 3
  store i32 %439, i32* %1460, align 4
  %1461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 99)  ; CBufferLoadLegacy(handle,regIndex)
  %1462 = extractvalue %dx.types.CBufRet.f32 %1461, 0
  %1463 = extractvalue %dx.types.CBufRet.f32 %1461, 1
  %1464 = extractvalue %dx.types.CBufRet.f32 %1461, 2
  %1465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 100)  ; CBufferLoadLegacy(handle,regIndex)
  %1466 = extractvalue %dx.types.CBufRet.f32 %1465, 0
  %1467 = extractvalue %dx.types.CBufRet.f32 %1465, 1
  %1468 = extractvalue %dx.types.CBufRet.f32 %1465, 2
  %1469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 101)  ; CBufferLoadLegacy(handle,regIndex)
  %1470 = extractvalue %dx.types.CBufRet.f32 %1469, 0
  %1471 = extractvalue %dx.types.CBufRet.f32 %1469, 1
  %1472 = extractvalue %dx.types.CBufRet.f32 %1469, 2
  %1473 = getelementptr [4 x i32], [4 x i32]* %24, i32 0, i32 %480
  %1474 = load i32, i32* %1473, align 4, !tbaa !31, !noalias !55
  %1475 = lshr i32 %1474, 8
  %1476 = and i32 %1474, 255
  %1477 = and i32 %1475, 255
  %1478 = uitofp i32 %1476 to float
  %1479 = uitofp i32 %1477 to float
  %1480 = fmul fast float %1478, 0x3F80101020000000
  %1481 = fmul fast float %1479, 0x3F80101020000000
  %1482 = fadd fast float %1480, -1.000000e+00
  %1483 = fadd fast float %1481, -1.000000e+00
  %1484 = call float @dx.op.unary.f32(i32 6, float %1482)  ; FAbs(value)
  %1485 = fsub fast float 1.000000e+00, %1484
  %1486 = call float @dx.op.unary.f32(i32 6, float %1483)  ; FAbs(value)
  %1487 = fsub fast float %1485, %1486
  %1488 = fsub fast float -0.000000e+00, %1487
  %1489 = call float @dx.op.binary.f32(i32 35, float %1488, float 0.000000e+00)  ; FMax(a,b)
  %1490 = fcmp fast ogt float %1482, 0.000000e+00
  %1491 = fsub fast float -0.000000e+00, %1489
  %1492 = select i1 %1490, float %1491, float %1489
  %1493 = fadd fast float %1492, %1482
  %1494 = fcmp fast ogt float %1483, 0.000000e+00
  %1495 = select i1 %1494, float %1491, float %1489
  %1496 = fadd fast float %1495, %1483
  %1497 = call float @dx.op.dot3.f32(i32 55, float %1493, float %1496, float %1487, float %1493, float %1496, float %1487)  ; Dot3(ax,ay,az,bx,by,bz)
  %1498 = call float @dx.op.unary.f32(i32 25, float %1497)  ; Rsqrt(value)
  %1499 = fmul fast float %1493, %1498
  %1500 = fmul fast float %1496, %1498
  %1501 = fmul fast float %1498, %1487
  %1502 = fmul fast float %1499, %1462
  %1503 = call float @dx.op.tertiary.f32(i32 46, float %1500, float %1463, float %1502)  ; FMad(a,b,c)
  %1504 = call float @dx.op.tertiary.f32(i32 46, float %1501, float %1464, float %1503)  ; FMad(a,b,c)
  %1505 = fmul fast float %1499, %1466
  %1506 = call float @dx.op.tertiary.f32(i32 46, float %1500, float %1467, float %1505)  ; FMad(a,b,c)
  %1507 = call float @dx.op.tertiary.f32(i32 46, float %1501, float %1468, float %1506)  ; FMad(a,b,c)
  %1508 = fmul fast float %1499, %1470
  %1509 = call float @dx.op.tertiary.f32(i32 46, float %1500, float %1471, float %1508)  ; FMad(a,b,c)
  %1510 = call float @dx.op.tertiary.f32(i32 46, float %1501, float %1472, float %1509)  ; FMad(a,b,c)
  %1511 = call float @dx.op.unary.f32(i32 6, float %1444)  ; FAbs(value)
  %1512 = fmul fast float %454, %39
  %1513 = fmul fast float %455, %40
  %1514 = fmul fast float %1511, %452
  %1515 = fmul fast float %453, %1511
  %1516 = fsub fast float -0.000000e+00, %1515
  %1517 = fdiv fast float 5.000000e+01, %1514
  %1518 = fdiv fast float 5.000000e+01, %1516
  %1519 = call float @dx.op.binary.f32(i32 36, float %1512, float %1517)  ; FMin(a,b)
  %1520 = call float @dx.op.binary.f32(i32 36, float %1513, float %1518)  ; FMin(a,b)
  %1521 = fmul fast float %1453, %450
  %1522 = fmul fast float %1454, %451
  %1523 = fsub fast float %1521, %452
  %1524 = fsub fast float %1522, %453
  %1525 = fmul fast float %1511, %1523
  %1526 = fmul fast float %1511, %1524
  %1527 = fsub fast float -0.000000e+00, %1525
  %1528 = fsub fast float -0.000000e+00, %1526
  %1529 = fsub fast float -0.000000e+00, %1511
  %1530 = call float @dx.op.dot3.f32(i32 55, float %1527, float %1528, float %1529, float %1527, float %1528, float %1529)  ; Dot3(ax,ay,az,bx,by,bz)
  %1531 = call float @dx.op.unary.f32(i32 25, float %1530)  ; Rsqrt(value)
  %1532 = fmul fast float %1531, %1527
  %1533 = fmul fast float %1531, %1528
  %1534 = fmul fast float %1531, %1529
  %1535 = fmul fast float %1511, 0x3FEFEB8520000000
  %1536 = fmul fast float %1519, %44
  %1537 = fmul fast float %1520, %45
  %1538 = fmul fast float %1536, %1536
  %1539 = fmul fast float %1537, %1537
  %1540 = fadd fast float %1539, %1538
  %1541 = call float @dx.op.unary.f32(i32 24, float %1540)  ; Sqrt(value)
  %1542 = fmul fast float %1541, 3.125000e-02
  br label %1543

; <label>:1543                                    ; preds = %1729, %1456
  %1544 = phi float [ %1835, %1729 ], [ 0.000000e+00, %1456 ]
  %1545 = phi i32 [ %1836, %1729 ], [ 0, %1456 ]
  %1546 = phi float [ %1831, %1729 ], [ 0.000000e+00, %1456 ]
  %1547 = sitofp i32 %1545 to float
  %1548 = fadd fast float %1547, %549
  %1549 = fmul fast float %1548, 0x3FC921FB60000000
  %1550 = call float @dx.op.unary.f32(i32 12, float %1549)  ; Cos(value)
  %1551 = call float @dx.op.unary.f32(i32 13, float %1549)  ; Sin(value)
  %1552 = fsub fast float -0.000000e+00, %1551
  %1553 = call float @dx.op.dot3.f32(i32 55, float %1532, float %1533, float %1534, float %1504, float %1507, float %1510)  ; Dot3(ax,ay,az,bx,by,bz)
  %1554 = call float @dx.op.unary.f32(i32 6, float %1553)  ; FAbs(value)
  %1555 = call float @dx.op.unary.f32(i32 6, float %1554)  ; FAbs(value)
  %1556 = fcmp fast ogt float %1555, 0x3EB0C6F7A0000000
  %1557 = call float @dx.op.dot3.f32(i32 55, float %1550, float %1552, float 0.000000e+00, float %1504, float %1507, float %1510)  ; Dot3(ax,ay,az,bx,by,bz)
  %1558 = fsub fast float -0.000000e+00, %1557
  %1559 = fdiv fast float %1558, %1554
  %1560 = select i1 %1556, float %1559, float 0.000000e+00
  %1561 = fmul fast float %1560, %1560
  %1562 = fadd fast float %1561, 1.000000e+00
  %1563 = call float @dx.op.unary.f32(i32 25, float %1562)  ; Rsqrt(value)
  %1564 = fmul fast float %1560, %1563
  br label %1565

; <label>:1565                                    ; preds = %1565, %1543
  %1566 = phi float [ %1643, %1565 ], [ %1564, %1543 ]
  %1567 = phi float [ %1631, %1565 ], [ 2.000000e+02, %1543 ]
  %1568 = phi i32 [ %1644, %1565 ], [ 0, %1543 ]
  %1569 = sitofp i32 %1568 to float
  %1570 = fadd fast float %1569, %570
  %1571 = fmul fast float %1570, 6.250000e-02
  %1572 = fmul fast float %1571, %1571
  %1573 = fmul fast float %1572, %1542
  %1574 = call float @dx.op.binary.f32(i32 36, float %1573, float 3.000000e+00)  ; FMin(a,b)
  %1575 = fadd fast float %1574, 1.000000e+00
  %1576 = fmul fast float %1572, %1519
  %1577 = fmul fast float %1572, %1520
  %1578 = fadd fast float %1576, %48
  %1579 = fmul fast float %1578, %1550
  %1580 = fadd fast float %1579, %1453
  %1581 = fadd fast float %1577, %49
  %1582 = fmul fast float %1581, %1551
  %1583 = fadd fast float %1582, %1454
  %1584 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %13, float %1580, float %1583, float undef, float undef, i32 0, i32 0, i32 undef, float %1575)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1585 = extractvalue %dx.types.ResRet.f32 %1584, 0
  %1586 = fcmp fast ogt float %1585, -1.000000e+00
  %1587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1588 = extractvalue %dx.types.CBufRet.f32 %1587, 1
  %1589 = select i1 %1586, float %1588, float 1.000000e+00
  %1590 = fadd fast float %1585, 1.000000e+00
  %1591 = fmul fast float %1589, %1590
  %1592 = call float @dx.op.unary.f32(i32 6, float %1591)  ; FAbs(value)
  %1593 = fmul fast float %1580, %450
  %1594 = fmul fast float %1583, %451
  %1595 = fsub fast float %1593, %452
  %1596 = fsub fast float %1594, %453
  %1597 = fmul fast float %1595, %1592
  %1598 = fmul fast float %1596, %1592
  %1599 = fsub fast float %1597, %1525
  %1600 = fsub fast float %1598, %1526
  %1601 = fsub fast float %1592, %1535
  %1602 = call float @dx.op.dot3.f32(i32 55, float %1599, float %1600, float %1601, float %1599, float %1600, float %1601)  ; Dot3(ax,ay,az,bx,by,bz)
  %1603 = call float @dx.op.dot3.f32(i32 55, float %1599, float %1600, float %1601, float %1504, float %1507, float %1510)  ; Dot3(ax,ay,az,bx,by,bz)
  %1604 = fsub fast float -0.000000e+00, %1603
  %1605 = call float @dx.op.dot3.f32(i32 55, float %1599, float %1600, float %1601, float %1532, float %1533, float %1534)  ; Dot3(ax,ay,az,bx,by,bz)
  %1606 = call float @dx.op.unary.f32(i32 25, float %1602)  ; Rsqrt(value)
  %1607 = fmul fast float %1606, %1605
  %1608 = bitcast float %1602 to i32
  %1609 = ashr i32 %1608, 1
  %1610 = add nsw i32 %1609, 532487669
  %1611 = bitcast i32 %1610 to float
  %1612 = fmul fast float %1611, 0x3F947AE140000000
  %1613 = fsub fast float 2.000000e+00, %1612
  %1614 = call float @dx.op.unary.f32(i32 7, float %1613)  ; Saturate(value)
  %1615 = fmul fast float %1611, 0x3F7B4E81C0000000
  %1616 = fsub fast float 0x3FF5555560000000, %1615
  %1617 = call float @dx.op.unary.f32(i32 7, float %1616)  ; Saturate(value)
  %1618 = fmul fast float %1592, 0x3F947AE140000000
  %1619 = fadd fast float %1618, -1.000000e+00
  %1620 = call float @dx.op.unary.f32(i32 7, float %1619)  ; Saturate(value)
  %1621 = fsub fast float %1617, %1614
  %1622 = fmul fast float %1620, %1621
  %1623 = fadd fast float %1622, %1614
  %1624 = fmul fast float %1591, %1444
  %1625 = fcmp fast ogt float %1624, 0.000000e+00
  %1626 = select i1 %1625, float %1623, float 0.000000e+00
  %1627 = fadd fast float %1607, 1.000000e+00
  %1628 = fmul fast float %1626, %1627
  %1629 = fadd fast float %1628, -1.000000e+00
  %1630 = fcmp fast ogt float %1629, %1566
  %1631 = select i1 %1630, float %1604, float %1567
  %1632 = fsub fast float %1604, %1631
  %1633 = fmul fast float %1632, 0x3FB9999940000000
  %1634 = fadd fast float %1633, 0xBFDFFFFF80000000
  %1635 = call float @dx.op.unary.f32(i32 7, float %1634)  ; Saturate(value)
  %1636 = fmul fast float %1603, 0x3FC99999E0000000
  %1637 = fadd fast float %1636, 0x3FF0000020000000
  %1638 = call float @dx.op.unary.f32(i32 7, float %1637)  ; Saturate(value)
  %1639 = fmul fast float %1635, 2.500000e-01
  %1640 = fmul fast float %1639, %1638
  %1641 = fsub fast float %1566, %1640
  %1642 = fcmp ole float %1629, %1641
  %1643 = select i1 %1642, float %1641, float %1629
  %1644 = add nuw nsw i32 %1568, 1
  %1645 = icmp eq i32 %1644, 16
  br i1 %1645, label %1646, label %1565

; <label>:1646                                    ; preds = %1565
  %1647 = fsub fast float -0.000000e+00, %1564
  br label %1648

; <label>:1648                                    ; preds = %1648, %1646
  %1649 = phi float [ %1726, %1648 ], [ %1647, %1646 ]
  %1650 = phi float [ %1714, %1648 ], [ 2.000000e+02, %1646 ]
  %1651 = phi i32 [ %1727, %1648 ], [ 0, %1646 ]
  %1652 = sitofp i32 %1651 to float
  %1653 = fadd fast float %1652, %570
  %1654 = fmul fast float %1653, 6.250000e-02
  %1655 = fmul fast float %1654, %1654
  %1656 = fmul fast float %1655, %1542
  %1657 = call float @dx.op.binary.f32(i32 36, float %1656, float 3.000000e+00)  ; FMin(a,b)
  %1658 = fadd fast float %1657, 1.000000e+00
  %1659 = fmul fast float %1655, %1519
  %1660 = fmul fast float %1655, %1520
  %1661 = fadd fast float %1659, %48
  %1662 = fmul fast float %1550, %1661
  %1663 = fsub fast float %1453, %1662
  %1664 = fadd fast float %1660, %49
  %1665 = fmul fast float %1551, %1664
  %1666 = fsub fast float %1454, %1665
  %1667 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %13, float %1663, float %1666, float undef, float undef, i32 0, i32 0, i32 undef, float %1658)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1668 = extractvalue %dx.types.ResRet.f32 %1667, 0
  %1669 = fcmp fast ogt float %1668, -1.000000e+00
  %1670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1671 = extractvalue %dx.types.CBufRet.f32 %1670, 1
  %1672 = select i1 %1669, float %1671, float 1.000000e+00
  %1673 = fadd fast float %1668, 1.000000e+00
  %1674 = fmul fast float %1672, %1673
  %1675 = call float @dx.op.unary.f32(i32 6, float %1674)  ; FAbs(value)
  %1676 = fmul fast float %1663, %450
  %1677 = fmul fast float %1666, %451
  %1678 = fsub fast float %1676, %452
  %1679 = fsub fast float %1677, %453
  %1680 = fmul fast float %1678, %1675
  %1681 = fmul fast float %1679, %1675
  %1682 = fsub fast float %1680, %1525
  %1683 = fsub fast float %1681, %1526
  %1684 = fsub fast float %1675, %1535
  %1685 = call float @dx.op.dot3.f32(i32 55, float %1682, float %1683, float %1684, float %1682, float %1683, float %1684)  ; Dot3(ax,ay,az,bx,by,bz)
  %1686 = call float @dx.op.dot3.f32(i32 55, float %1682, float %1683, float %1684, float %1504, float %1507, float %1510)  ; Dot3(ax,ay,az,bx,by,bz)
  %1687 = fsub fast float -0.000000e+00, %1686
  %1688 = call float @dx.op.dot3.f32(i32 55, float %1682, float %1683, float %1684, float %1532, float %1533, float %1534)  ; Dot3(ax,ay,az,bx,by,bz)
  %1689 = call float @dx.op.unary.f32(i32 25, float %1685)  ; Rsqrt(value)
  %1690 = fmul fast float %1689, %1688
  %1691 = bitcast float %1685 to i32
  %1692 = ashr i32 %1691, 1
  %1693 = add nsw i32 %1692, 532487669
  %1694 = bitcast i32 %1693 to float
  %1695 = fmul fast float %1694, 0x3F947AE140000000
  %1696 = fsub fast float 2.000000e+00, %1695
  %1697 = call float @dx.op.unary.f32(i32 7, float %1696)  ; Saturate(value)
  %1698 = fmul fast float %1694, 0x3F7B4E81C0000000
  %1699 = fsub fast float 0x3FF5555560000000, %1698
  %1700 = call float @dx.op.unary.f32(i32 7, float %1699)  ; Saturate(value)
  %1701 = fmul fast float %1675, 0x3F947AE140000000
  %1702 = fadd fast float %1701, -1.000000e+00
  %1703 = call float @dx.op.unary.f32(i32 7, float %1702)  ; Saturate(value)
  %1704 = fsub fast float %1700, %1697
  %1705 = fmul fast float %1703, %1704
  %1706 = fadd fast float %1705, %1697
  %1707 = fmul fast float %1674, %1444
  %1708 = fcmp fast ogt float %1707, 0.000000e+00
  %1709 = select i1 %1708, float %1706, float 0.000000e+00
  %1710 = fadd fast float %1690, 1.000000e+00
  %1711 = fmul fast float %1709, %1710
  %1712 = fadd fast float %1711, -1.000000e+00
  %1713 = fcmp fast ogt float %1712, %1649
  %1714 = select i1 %1713, float %1687, float %1650
  %1715 = fsub fast float %1687, %1714
  %1716 = fmul fast float %1715, 0x3FB9999940000000
  %1717 = fadd fast float %1716, 0xBFDFFFFF80000000
  %1718 = call float @dx.op.unary.f32(i32 7, float %1717)  ; Saturate(value)
  %1719 = fmul fast float %1686, 0x3FC99999E0000000
  %1720 = fadd fast float %1719, 0x3FF0000020000000
  %1721 = call float @dx.op.unary.f32(i32 7, float %1720)  ; Saturate(value)
  %1722 = fmul fast float %1718, 2.500000e-01
  %1723 = fmul fast float %1722, %1721
  %1724 = fsub fast float %1649, %1723
  %1725 = fcmp ole float %1712, %1724
  %1726 = select i1 %1725, float %1724, float %1712
  %1727 = add nuw nsw i32 %1651, 1
  %1728 = icmp eq i32 %1727, 16
  br i1 %1728, label %1729, label %1648

; <label>:1729                                    ; preds = %1648
  %1730 = fmul fast float %1534, %1552
  %1731 = fmul fast float %1534, %1550
  %1732 = fsub fast float -0.000000e+00, %1731
  %1733 = fmul fast float %1550, %1533
  %1734 = fmul fast float %1532, %1552
  %1735 = fsub fast float %1733, %1734
  %1736 = call float @dx.op.dot3.f32(i32 55, float %1504, float %1507, float %1510, float %1730, float %1732, float %1735)  ; Dot3(ax,ay,az,bx,by,bz)
  %1737 = fmul fast float %1736, %1730
  %1738 = fmul fast float %1736, %1732
  %1739 = fmul fast float %1736, %1735
  %1740 = fsub fast float %1504, %1737
  %1741 = fsub fast float %1507, %1738
  %1742 = fsub fast float %1510, %1739
  %1743 = fmul fast float %1740, %1740
  %1744 = fmul fast float %1741, %1741
  %1745 = fadd fast float %1743, %1744
  %1746 = fmul fast float %1742, %1742
  %1747 = fadd fast float %1745, %1746
  %1748 = call float @dx.op.unary.f32(i32 24, float %1747)  ; Sqrt(value)
  %1749 = call float @dx.op.dot3.f32(i32 55, float %1550, float %1552, float 0.000000e+00, float %1740, float %1741, float %1742)  ; Dot3(ax,ay,az,bx,by,bz)
  %1750 = call float @dx.op.dot3.f32(i32 55, float %1550, float %1552, float 0.000000e+00, float %1532, float %1533, float %1534)  ; Dot3(ax,ay,az,bx,by,bz)
  %1751 = fmul fast float %1750, %1532
  %1752 = fmul fast float %1750, %1533
  %1753 = fmul fast float %1750, %1534
  %1754 = call float @dx.op.dot3.f32(i32 55, float %1751, float %1752, float %1753, float %1740, float %1741, float %1742)  ; Dot3(ax,ay,az,bx,by,bz)
  %1755 = fcmp fast oge float %1749, %1754
  %1756 = fdiv fast float 1.000000e+00, %1748
  %1757 = call float @dx.op.dot3.f32(i32 55, float %1740, float %1741, float %1742, float %1532, float %1533, float %1534)  ; Dot3(ax,ay,az,bx,by,bz)
  %1758 = fmul fast float %1757, %1756
  %1759 = call float @dx.op.unary.f32(i32 7, float %1758)  ; Saturate(value)
  %1760 = fmul fast float %1759, %1759
  %1761 = fsub fast float 1.000000e+00, %1760
  %1762 = bitcast float %1761 to i32
  %1763 = ashr i32 %1762, 1
  %1764 = add nsw i32 %1763, 532487669
  %1765 = bitcast i32 %1764 to float
  %1766 = call float @dx.op.unary.f32(i32 6, float %1759)  ; FAbs(value)
  %1767 = fmul fast float %1766, 0x3FC40AE960000000
  %1768 = fsub fast float 0x3FF921FB60000000, %1767
  %1769 = fsub fast float 1.000000e+00, %1766
  %1770 = bitcast float %1769 to i32
  %1771 = ashr i32 %1770, 1
  %1772 = add nsw i32 %1771, 532487669
  %1773 = bitcast i32 %1772 to float
  %1774 = fmul fast float %1773, %1768
  %1775 = fcmp fast oge float %1759, 0.000000e+00
  %1776 = fsub fast float 0x400921FB60000000, %1774
  %1777 = select i1 %1775, float %1774, float %1776
  %1778 = fsub fast float -0.000000e+00, %1765
  %1779 = select i1 %1755, float %1778, float %1765
  %1780 = fsub fast float -0.000000e+00, %1777
  %1781 = select i1 %1755, float %1780, float %1777
  %1782 = call float @dx.op.unary.f32(i32 6, float %1643)  ; FAbs(value)
  %1783 = fmul fast float %1782, 0x3FC40AE960000000
  %1784 = fsub fast float 0x3FF921FB60000000, %1783
  %1785 = fsub fast float 1.000000e+00, %1782
  %1786 = bitcast float %1785 to i32
  %1787 = ashr i32 %1786, 1
  %1788 = add nsw i32 %1787, 532487669
  %1789 = bitcast i32 %1788 to float
  %1790 = fmul fast float %1789, %1784
  %1791 = fcmp fast oge float %1643, 0.000000e+00
  %1792 = fsub fast float 0x400921FB60000000, %1790
  %1793 = select i1 %1791, float %1790, float %1792
  %1794 = call float @dx.op.unary.f32(i32 6, float %1726)  ; FAbs(value)
  %1795 = fmul fast float %1794, 0x3FC40AE960000000
  %1796 = fsub fast float 0x3FF921FB60000000, %1795
  %1797 = fsub fast float 1.000000e+00, %1794
  %1798 = bitcast float %1797 to i32
  %1799 = ashr i32 %1798, 1
  %1800 = add nsw i32 %1799, 532487669
  %1801 = bitcast i32 %1800 to float
  %1802 = fmul fast float %1801, %1796
  %1803 = fcmp fast oge float %1726, 0.000000e+00
  %1804 = fsub fast float 0x400921FB60000000, %1802
  %1805 = select i1 %1803, float %1802, float %1804
  %1806 = fsub fast float -0.000000e+00, %1781
  %1807 = fsub fast float %1806, %1793
  %1808 = call float @dx.op.binary.f32(i32 35, float %1807, float 0xBFF921FB60000000)  ; FMax(a,b)
  %1809 = call float @dx.op.binary.f32(i32 36, float %1808, float 0x3FF921FB60000000)  ; FMin(a,b)
  %1810 = fadd fast float %1781, %1809
  %1811 = fsub fast float %1805, %1781
  %1812 = call float @dx.op.binary.f32(i32 35, float %1811, float 0xBFF921FB60000000)  ; FMax(a,b)
  %1813 = call float @dx.op.binary.f32(i32 36, float %1812, float 0x3FF921FB60000000)  ; FMin(a,b)
  %1814 = fadd fast float %1781, %1813
  %1815 = fmul fast float %1810, 2.000000e+00
  %1816 = fsub fast float %1815, %1781
  %1817 = call float @dx.op.unary.f32(i32 12, float %1816)  ; Cos(value)
  %1818 = fsub fast float -0.000000e+00, %1817
  %1819 = fmul fast float %1814, 2.000000e+00
  %1820 = fsub fast float %1819, %1781
  %1821 = call float @dx.op.unary.f32(i32 12, float %1820)  ; Cos(value)
  %1822 = fmul fast float %1759, 2.000000e+00
  %1823 = fadd fast float %1814, %1810
  %1824 = fmul fast float %1779, %1823
  %1825 = fmul fast float %1824, 2.000000e+00
  %1826 = fsub fast float %1818, %1821
  %1827 = fadd fast float %1826, %1822
  %1828 = fadd fast float %1827, %1825
  %1829 = fmul fast float %1748, 2.500000e-01
  %1830 = fmul fast float %1829, %1828
  %1831 = fadd fast float %1830, %1546
  %1832 = fmul fast float %1781, %1779
  %1833 = fadd fast float %1832, %1759
  %1834 = fmul fast float %1833, %1748
  %1835 = fadd fast float %1834, %1544
  %1836 = add nuw nsw i32 %1545, 1
  %1837 = icmp eq i32 %1836, 16
  br i1 %1837, label %1838, label %1543

; <label>:1838                                    ; preds = %1729
  %1839 = fdiv fast float %1831, %1835
  br label %1840

; <label>:1840                                    ; preds = %1838, %1438, %1435
  %1841 = phi float [ %974, %1435 ], [ %1839, %1838 ], [ 1.000000e+00, %1438 ]
  %1842 = icmp ugt i32 %1031, 3
  br i1 %1842, label %1843, label %2245, !dx.controlflow.hints !59

; <label>:1843                                    ; preds = %1840
  %1844 = getelementptr inbounds [4 x float], [4 x float]* %23, i32 0, i32 0
  store float %386, float* %1844, align 4
  %1845 = getelementptr inbounds [4 x float], [4 x float]* %23, i32 0, i32 1
  store float %382, float* %1845, align 4
  %1846 = getelementptr inbounds [4 x float], [4 x float]* %23, i32 0, i32 2
  store float %374, float* %1846, align 4
  %1847 = getelementptr inbounds [4 x float], [4 x float]* %23, i32 0, i32 3
  store float %378, float* %1847, align 4
  %1848 = getelementptr [4 x float], [4 x float]* %23, i32 0, i32 %487
  %1849 = load float, float* %1848, align 4, !tbaa !35, !noalias !60
  %1850 = and i32 %487, 1
  %1851 = uitofp i32 %1850 to float
  %1852 = fadd fast float %1851, 5.000000e-01
  %1853 = lshr i32 %487, 1
  %1854 = uitofp i32 %1853 to float
  %1855 = fadd fast float %1854, 5.000000e-01
  %1856 = fmul fast float %1852, %454
  %1857 = fmul fast float %1855, %455
  %1858 = fadd fast float %1856, %52
  %1859 = fadd fast float %1857, %53
  %1860 = fcmp fast olt float %1849, 6.550000e+04
  br i1 %1860, label %1861, label %2245, !dx.controlflow.hints !48

; <label>:1861                                    ; preds = %1843
  %1862 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i32 0, i32 0
  store i32 %416, i32* %1862, align 4
  %1863 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i32 0, i32 1
  store i32 %448, i32* %1863, align 4
  %1864 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i32 0, i32 2
  store i32 %428, i32* %1864, align 4
  %1865 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i32 0, i32 3
  store i32 %439, i32* %1865, align 4
  %1866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 99)  ; CBufferLoadLegacy(handle,regIndex)
  %1867 = extractvalue %dx.types.CBufRet.f32 %1866, 0
  %1868 = extractvalue %dx.types.CBufRet.f32 %1866, 1
  %1869 = extractvalue %dx.types.CBufRet.f32 %1866, 2
  %1870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 100)  ; CBufferLoadLegacy(handle,regIndex)
  %1871 = extractvalue %dx.types.CBufRet.f32 %1870, 0
  %1872 = extractvalue %dx.types.CBufRet.f32 %1870, 1
  %1873 = extractvalue %dx.types.CBufRet.f32 %1870, 2
  %1874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 101)  ; CBufferLoadLegacy(handle,regIndex)
  %1875 = extractvalue %dx.types.CBufRet.f32 %1874, 0
  %1876 = extractvalue %dx.types.CBufRet.f32 %1874, 1
  %1877 = extractvalue %dx.types.CBufRet.f32 %1874, 2
  %1878 = getelementptr [4 x i32], [4 x i32]* %22, i32 0, i32 %487
  %1879 = load i32, i32* %1878, align 4, !tbaa !31, !noalias !60
  %1880 = lshr i32 %1879, 8
  %1881 = and i32 %1879, 255
  %1882 = and i32 %1880, 255
  %1883 = uitofp i32 %1881 to float
  %1884 = uitofp i32 %1882 to float
  %1885 = fmul fast float %1883, 0x3F80101020000000
  %1886 = fmul fast float %1884, 0x3F80101020000000
  %1887 = fadd fast float %1885, -1.000000e+00
  %1888 = fadd fast float %1886, -1.000000e+00
  %1889 = call float @dx.op.unary.f32(i32 6, float %1887)  ; FAbs(value)
  %1890 = fsub fast float 1.000000e+00, %1889
  %1891 = call float @dx.op.unary.f32(i32 6, float %1888)  ; FAbs(value)
  %1892 = fsub fast float %1890, %1891
  %1893 = fsub fast float -0.000000e+00, %1892
  %1894 = call float @dx.op.binary.f32(i32 35, float %1893, float 0.000000e+00)  ; FMax(a,b)
  %1895 = fcmp fast ogt float %1887, 0.000000e+00
  %1896 = fsub fast float -0.000000e+00, %1894
  %1897 = select i1 %1895, float %1896, float %1894
  %1898 = fadd fast float %1897, %1887
  %1899 = fcmp fast ogt float %1888, 0.000000e+00
  %1900 = select i1 %1899, float %1896, float %1894
  %1901 = fadd fast float %1900, %1888
  %1902 = call float @dx.op.dot3.f32(i32 55, float %1898, float %1901, float %1892, float %1898, float %1901, float %1892)  ; Dot3(ax,ay,az,bx,by,bz)
  %1903 = call float @dx.op.unary.f32(i32 25, float %1902)  ; Rsqrt(value)
  %1904 = fmul fast float %1898, %1903
  %1905 = fmul fast float %1901, %1903
  %1906 = fmul fast float %1903, %1892
  %1907 = fmul fast float %1904, %1867
  %1908 = call float @dx.op.tertiary.f32(i32 46, float %1905, float %1868, float %1907)  ; FMad(a,b,c)
  %1909 = call float @dx.op.tertiary.f32(i32 46, float %1906, float %1869, float %1908)  ; FMad(a,b,c)
  %1910 = fmul fast float %1904, %1871
  %1911 = call float @dx.op.tertiary.f32(i32 46, float %1905, float %1872, float %1910)  ; FMad(a,b,c)
  %1912 = call float @dx.op.tertiary.f32(i32 46, float %1906, float %1873, float %1911)  ; FMad(a,b,c)
  %1913 = fmul fast float %1904, %1875
  %1914 = call float @dx.op.tertiary.f32(i32 46, float %1905, float %1876, float %1913)  ; FMad(a,b,c)
  %1915 = call float @dx.op.tertiary.f32(i32 46, float %1906, float %1877, float %1914)  ; FMad(a,b,c)
  %1916 = call float @dx.op.unary.f32(i32 6, float %1849)  ; FAbs(value)
  %1917 = fmul fast float %454, %39
  %1918 = fmul fast float %455, %40
  %1919 = fmul fast float %1916, %452
  %1920 = fmul fast float %453, %1916
  %1921 = fsub fast float -0.000000e+00, %1920
  %1922 = fdiv fast float 5.000000e+01, %1919
  %1923 = fdiv fast float 5.000000e+01, %1921
  %1924 = call float @dx.op.binary.f32(i32 36, float %1917, float %1922)  ; FMin(a,b)
  %1925 = call float @dx.op.binary.f32(i32 36, float %1918, float %1923)  ; FMin(a,b)
  %1926 = fmul fast float %1858, %450
  %1927 = fmul fast float %1859, %451
  %1928 = fsub fast float %1926, %452
  %1929 = fsub fast float %1927, %453
  %1930 = fmul fast float %1916, %1928
  %1931 = fmul fast float %1916, %1929
  %1932 = fsub fast float -0.000000e+00, %1930
  %1933 = fsub fast float -0.000000e+00, %1931
  %1934 = fsub fast float -0.000000e+00, %1916
  %1935 = call float @dx.op.dot3.f32(i32 55, float %1932, float %1933, float %1934, float %1932, float %1933, float %1934)  ; Dot3(ax,ay,az,bx,by,bz)
  %1936 = call float @dx.op.unary.f32(i32 25, float %1935)  ; Rsqrt(value)
  %1937 = fmul fast float %1936, %1932
  %1938 = fmul fast float %1936, %1933
  %1939 = fmul fast float %1936, %1934
  %1940 = fmul fast float %1916, 0x3FEFEB8520000000
  %1941 = fmul fast float %1924, %44
  %1942 = fmul fast float %1925, %45
  %1943 = fmul fast float %1941, %1941
  %1944 = fmul fast float %1942, %1942
  %1945 = fadd fast float %1944, %1943
  %1946 = call float @dx.op.unary.f32(i32 24, float %1945)  ; Sqrt(value)
  %1947 = fmul fast float %1946, 3.125000e-02
  br label %1948

; <label>:1948                                    ; preds = %2134, %1861
  %1949 = phi float [ %2240, %2134 ], [ 0.000000e+00, %1861 ]
  %1950 = phi i32 [ %2241, %2134 ], [ 0, %1861 ]
  %1951 = phi float [ %2236, %2134 ], [ 0.000000e+00, %1861 ]
  %1952 = sitofp i32 %1950 to float
  %1953 = fadd fast float %1952, %550
  %1954 = fmul fast float %1953, 0x3FC921FB60000000
  %1955 = call float @dx.op.unary.f32(i32 12, float %1954)  ; Cos(value)
  %1956 = call float @dx.op.unary.f32(i32 13, float %1954)  ; Sin(value)
  %1957 = fsub fast float -0.000000e+00, %1956
  %1958 = call float @dx.op.dot3.f32(i32 55, float %1937, float %1938, float %1939, float %1909, float %1912, float %1915)  ; Dot3(ax,ay,az,bx,by,bz)
  %1959 = call float @dx.op.unary.f32(i32 6, float %1958)  ; FAbs(value)
  %1960 = call float @dx.op.unary.f32(i32 6, float %1959)  ; FAbs(value)
  %1961 = fcmp fast ogt float %1960, 0x3EB0C6F7A0000000
  %1962 = call float @dx.op.dot3.f32(i32 55, float %1955, float %1957, float 0.000000e+00, float %1909, float %1912, float %1915)  ; Dot3(ax,ay,az,bx,by,bz)
  %1963 = fsub fast float -0.000000e+00, %1962
  %1964 = fdiv fast float %1963, %1959
  %1965 = select i1 %1961, float %1964, float 0.000000e+00
  %1966 = fmul fast float %1965, %1965
  %1967 = fadd fast float %1966, 1.000000e+00
  %1968 = call float @dx.op.unary.f32(i32 25, float %1967)  ; Rsqrt(value)
  %1969 = fmul fast float %1965, %1968
  br label %1970

; <label>:1970                                    ; preds = %1970, %1948
  %1971 = phi float [ %2048, %1970 ], [ %1969, %1948 ]
  %1972 = phi float [ %2036, %1970 ], [ 2.000000e+02, %1948 ]
  %1973 = phi i32 [ %2049, %1970 ], [ 0, %1948 ]
  %1974 = sitofp i32 %1973 to float
  %1975 = fadd fast float %1974, %571
  %1976 = fmul fast float %1975, 6.250000e-02
  %1977 = fmul fast float %1976, %1976
  %1978 = fmul fast float %1977, %1947
  %1979 = call float @dx.op.binary.f32(i32 36, float %1978, float 3.000000e+00)  ; FMin(a,b)
  %1980 = fadd fast float %1979, 1.000000e+00
  %1981 = fmul fast float %1977, %1924
  %1982 = fmul fast float %1977, %1925
  %1983 = fadd fast float %1981, %48
  %1984 = fmul fast float %1983, %1955
  %1985 = fadd fast float %1984, %1858
  %1986 = fadd fast float %1982, %49
  %1987 = fmul fast float %1986, %1956
  %1988 = fadd fast float %1987, %1859
  %1989 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %13, float %1985, float %1988, float undef, float undef, i32 0, i32 0, i32 undef, float %1980)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1990 = extractvalue %dx.types.ResRet.f32 %1989, 0
  %1991 = fcmp fast ogt float %1990, -1.000000e+00
  %1992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1993 = extractvalue %dx.types.CBufRet.f32 %1992, 1
  %1994 = select i1 %1991, float %1993, float 1.000000e+00
  %1995 = fadd fast float %1990, 1.000000e+00
  %1996 = fmul fast float %1994, %1995
  %1997 = call float @dx.op.unary.f32(i32 6, float %1996)  ; FAbs(value)
  %1998 = fmul fast float %1985, %450
  %1999 = fmul fast float %1988, %451
  %2000 = fsub fast float %1998, %452
  %2001 = fsub fast float %1999, %453
  %2002 = fmul fast float %2000, %1997
  %2003 = fmul fast float %2001, %1997
  %2004 = fsub fast float %2002, %1930
  %2005 = fsub fast float %2003, %1931
  %2006 = fsub fast float %1997, %1940
  %2007 = call float @dx.op.dot3.f32(i32 55, float %2004, float %2005, float %2006, float %2004, float %2005, float %2006)  ; Dot3(ax,ay,az,bx,by,bz)
  %2008 = call float @dx.op.dot3.f32(i32 55, float %2004, float %2005, float %2006, float %1909, float %1912, float %1915)  ; Dot3(ax,ay,az,bx,by,bz)
  %2009 = fsub fast float -0.000000e+00, %2008
  %2010 = call float @dx.op.dot3.f32(i32 55, float %2004, float %2005, float %2006, float %1937, float %1938, float %1939)  ; Dot3(ax,ay,az,bx,by,bz)
  %2011 = call float @dx.op.unary.f32(i32 25, float %2007)  ; Rsqrt(value)
  %2012 = fmul fast float %2011, %2010
  %2013 = bitcast float %2007 to i32
  %2014 = ashr i32 %2013, 1
  %2015 = add nsw i32 %2014, 532487669
  %2016 = bitcast i32 %2015 to float
  %2017 = fmul fast float %2016, 0x3F947AE140000000
  %2018 = fsub fast float 2.000000e+00, %2017
  %2019 = call float @dx.op.unary.f32(i32 7, float %2018)  ; Saturate(value)
  %2020 = fmul fast float %2016, 0x3F7B4E81C0000000
  %2021 = fsub fast float 0x3FF5555560000000, %2020
  %2022 = call float @dx.op.unary.f32(i32 7, float %2021)  ; Saturate(value)
  %2023 = fmul fast float %1997, 0x3F947AE140000000
  %2024 = fadd fast float %2023, -1.000000e+00
  %2025 = call float @dx.op.unary.f32(i32 7, float %2024)  ; Saturate(value)
  %2026 = fsub fast float %2022, %2019
  %2027 = fmul fast float %2025, %2026
  %2028 = fadd fast float %2027, %2019
  %2029 = fmul fast float %1996, %1849
  %2030 = fcmp fast ogt float %2029, 0.000000e+00
  %2031 = select i1 %2030, float %2028, float 0.000000e+00
  %2032 = fadd fast float %2012, 1.000000e+00
  %2033 = fmul fast float %2031, %2032
  %2034 = fadd fast float %2033, -1.000000e+00
  %2035 = fcmp fast ogt float %2034, %1971
  %2036 = select i1 %2035, float %2009, float %1972
  %2037 = fsub fast float %2009, %2036
  %2038 = fmul fast float %2037, 0x3FB9999940000000
  %2039 = fadd fast float %2038, 0xBFDFFFFF80000000
  %2040 = call float @dx.op.unary.f32(i32 7, float %2039)  ; Saturate(value)
  %2041 = fmul fast float %2008, 0x3FC99999E0000000
  %2042 = fadd fast float %2041, 0x3FF0000020000000
  %2043 = call float @dx.op.unary.f32(i32 7, float %2042)  ; Saturate(value)
  %2044 = fmul fast float %2040, 2.500000e-01
  %2045 = fmul fast float %2044, %2043
  %2046 = fsub fast float %1971, %2045
  %2047 = fcmp ole float %2034, %2046
  %2048 = select i1 %2047, float %2046, float %2034
  %2049 = add nuw nsw i32 %1973, 1
  %2050 = icmp eq i32 %2049, 16
  br i1 %2050, label %2051, label %1970

; <label>:2051                                    ; preds = %1970
  %2052 = fsub fast float -0.000000e+00, %1969
  br label %2053

; <label>:2053                                    ; preds = %2053, %2051
  %2054 = phi float [ %2131, %2053 ], [ %2052, %2051 ]
  %2055 = phi float [ %2119, %2053 ], [ 2.000000e+02, %2051 ]
  %2056 = phi i32 [ %2132, %2053 ], [ 0, %2051 ]
  %2057 = sitofp i32 %2056 to float
  %2058 = fadd fast float %2057, %571
  %2059 = fmul fast float %2058, 6.250000e-02
  %2060 = fmul fast float %2059, %2059
  %2061 = fmul fast float %2060, %1947
  %2062 = call float @dx.op.binary.f32(i32 36, float %2061, float 3.000000e+00)  ; FMin(a,b)
  %2063 = fadd fast float %2062, 1.000000e+00
  %2064 = fmul fast float %2060, %1924
  %2065 = fmul fast float %2060, %1925
  %2066 = fadd fast float %2064, %48
  %2067 = fmul fast float %1955, %2066
  %2068 = fsub fast float %1858, %2067
  %2069 = fadd fast float %2065, %49
  %2070 = fmul fast float %1956, %2069
  %2071 = fsub fast float %1859, %2070
  %2072 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %13, float %2068, float %2071, float undef, float undef, i32 0, i32 0, i32 undef, float %2063)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2073 = extractvalue %dx.types.ResRet.f32 %2072, 0
  %2074 = fcmp fast ogt float %2073, -1.000000e+00
  %2075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %2076 = extractvalue %dx.types.CBufRet.f32 %2075, 1
  %2077 = select i1 %2074, float %2076, float 1.000000e+00
  %2078 = fadd fast float %2073, 1.000000e+00
  %2079 = fmul fast float %2077, %2078
  %2080 = call float @dx.op.unary.f32(i32 6, float %2079)  ; FAbs(value)
  %2081 = fmul fast float %2068, %450
  %2082 = fmul fast float %2071, %451
  %2083 = fsub fast float %2081, %452
  %2084 = fsub fast float %2082, %453
  %2085 = fmul fast float %2083, %2080
  %2086 = fmul fast float %2084, %2080
  %2087 = fsub fast float %2085, %1930
  %2088 = fsub fast float %2086, %1931
  %2089 = fsub fast float %2080, %1940
  %2090 = call float @dx.op.dot3.f32(i32 55, float %2087, float %2088, float %2089, float %2087, float %2088, float %2089)  ; Dot3(ax,ay,az,bx,by,bz)
  %2091 = call float @dx.op.dot3.f32(i32 55, float %2087, float %2088, float %2089, float %1909, float %1912, float %1915)  ; Dot3(ax,ay,az,bx,by,bz)
  %2092 = fsub fast float -0.000000e+00, %2091
  %2093 = call float @dx.op.dot3.f32(i32 55, float %2087, float %2088, float %2089, float %1937, float %1938, float %1939)  ; Dot3(ax,ay,az,bx,by,bz)
  %2094 = call float @dx.op.unary.f32(i32 25, float %2090)  ; Rsqrt(value)
  %2095 = fmul fast float %2094, %2093
  %2096 = bitcast float %2090 to i32
  %2097 = ashr i32 %2096, 1
  %2098 = add nsw i32 %2097, 532487669
  %2099 = bitcast i32 %2098 to float
  %2100 = fmul fast float %2099, 0x3F947AE140000000
  %2101 = fsub fast float 2.000000e+00, %2100
  %2102 = call float @dx.op.unary.f32(i32 7, float %2101)  ; Saturate(value)
  %2103 = fmul fast float %2099, 0x3F7B4E81C0000000
  %2104 = fsub fast float 0x3FF5555560000000, %2103
  %2105 = call float @dx.op.unary.f32(i32 7, float %2104)  ; Saturate(value)
  %2106 = fmul fast float %2080, 0x3F947AE140000000
  %2107 = fadd fast float %2106, -1.000000e+00
  %2108 = call float @dx.op.unary.f32(i32 7, float %2107)  ; Saturate(value)
  %2109 = fsub fast float %2105, %2102
  %2110 = fmul fast float %2108, %2109
  %2111 = fadd fast float %2110, %2102
  %2112 = fmul fast float %2079, %1849
  %2113 = fcmp fast ogt float %2112, 0.000000e+00
  %2114 = select i1 %2113, float %2111, float 0.000000e+00
  %2115 = fadd fast float %2095, 1.000000e+00
  %2116 = fmul fast float %2114, %2115
  %2117 = fadd fast float %2116, -1.000000e+00
  %2118 = fcmp fast ogt float %2117, %2054
  %2119 = select i1 %2118, float %2092, float %2055
  %2120 = fsub fast float %2092, %2119
  %2121 = fmul fast float %2120, 0x3FB9999940000000
  %2122 = fadd fast float %2121, 0xBFDFFFFF80000000
  %2123 = call float @dx.op.unary.f32(i32 7, float %2122)  ; Saturate(value)
  %2124 = fmul fast float %2091, 0x3FC99999E0000000
  %2125 = fadd fast float %2124, 0x3FF0000020000000
  %2126 = call float @dx.op.unary.f32(i32 7, float %2125)  ; Saturate(value)
  %2127 = fmul fast float %2123, 2.500000e-01
  %2128 = fmul fast float %2127, %2126
  %2129 = fsub fast float %2054, %2128
  %2130 = fcmp ole float %2117, %2129
  %2131 = select i1 %2130, float %2129, float %2117
  %2132 = add nuw nsw i32 %2056, 1
  %2133 = icmp eq i32 %2132, 16
  br i1 %2133, label %2134, label %2053

; <label>:2134                                    ; preds = %2053
  %2135 = fmul fast float %1939, %1957
  %2136 = fmul fast float %1939, %1955
  %2137 = fsub fast float -0.000000e+00, %2136
  %2138 = fmul fast float %1955, %1938
  %2139 = fmul fast float %1937, %1957
  %2140 = fsub fast float %2138, %2139
  %2141 = call float @dx.op.dot3.f32(i32 55, float %1909, float %1912, float %1915, float %2135, float %2137, float %2140)  ; Dot3(ax,ay,az,bx,by,bz)
  %2142 = fmul fast float %2141, %2135
  %2143 = fmul fast float %2141, %2137
  %2144 = fmul fast float %2141, %2140
  %2145 = fsub fast float %1909, %2142
  %2146 = fsub fast float %1912, %2143
  %2147 = fsub fast float %1915, %2144
  %2148 = fmul fast float %2145, %2145
  %2149 = fmul fast float %2146, %2146
  %2150 = fadd fast float %2148, %2149
  %2151 = fmul fast float %2147, %2147
  %2152 = fadd fast float %2150, %2151
  %2153 = call float @dx.op.unary.f32(i32 24, float %2152)  ; Sqrt(value)
  %2154 = call float @dx.op.dot3.f32(i32 55, float %1955, float %1957, float 0.000000e+00, float %2145, float %2146, float %2147)  ; Dot3(ax,ay,az,bx,by,bz)
  %2155 = call float @dx.op.dot3.f32(i32 55, float %1955, float %1957, float 0.000000e+00, float %1937, float %1938, float %1939)  ; Dot3(ax,ay,az,bx,by,bz)
  %2156 = fmul fast float %2155, %1937
  %2157 = fmul fast float %2155, %1938
  %2158 = fmul fast float %2155, %1939
  %2159 = call float @dx.op.dot3.f32(i32 55, float %2156, float %2157, float %2158, float %2145, float %2146, float %2147)  ; Dot3(ax,ay,az,bx,by,bz)
  %2160 = fcmp fast oge float %2154, %2159
  %2161 = fdiv fast float 1.000000e+00, %2153
  %2162 = call float @dx.op.dot3.f32(i32 55, float %2145, float %2146, float %2147, float %1937, float %1938, float %1939)  ; Dot3(ax,ay,az,bx,by,bz)
  %2163 = fmul fast float %2162, %2161
  %2164 = call float @dx.op.unary.f32(i32 7, float %2163)  ; Saturate(value)
  %2165 = fmul fast float %2164, %2164
  %2166 = fsub fast float 1.000000e+00, %2165
  %2167 = bitcast float %2166 to i32
  %2168 = ashr i32 %2167, 1
  %2169 = add nsw i32 %2168, 532487669
  %2170 = bitcast i32 %2169 to float
  %2171 = call float @dx.op.unary.f32(i32 6, float %2164)  ; FAbs(value)
  %2172 = fmul fast float %2171, 0x3FC40AE960000000
  %2173 = fsub fast float 0x3FF921FB60000000, %2172
  %2174 = fsub fast float 1.000000e+00, %2171
  %2175 = bitcast float %2174 to i32
  %2176 = ashr i32 %2175, 1
  %2177 = add nsw i32 %2176, 532487669
  %2178 = bitcast i32 %2177 to float
  %2179 = fmul fast float %2178, %2173
  %2180 = fcmp fast oge float %2164, 0.000000e+00
  %2181 = fsub fast float 0x400921FB60000000, %2179
  %2182 = select i1 %2180, float %2179, float %2181
  %2183 = fsub fast float -0.000000e+00, %2170
  %2184 = select i1 %2160, float %2183, float %2170
  %2185 = fsub fast float -0.000000e+00, %2182
  %2186 = select i1 %2160, float %2185, float %2182
  %2187 = call float @dx.op.unary.f32(i32 6, float %2048)  ; FAbs(value)
  %2188 = fmul fast float %2187, 0x3FC40AE960000000
  %2189 = fsub fast float 0x3FF921FB60000000, %2188
  %2190 = fsub fast float 1.000000e+00, %2187
  %2191 = bitcast float %2190 to i32
  %2192 = ashr i32 %2191, 1
  %2193 = add nsw i32 %2192, 532487669
  %2194 = bitcast i32 %2193 to float
  %2195 = fmul fast float %2194, %2189
  %2196 = fcmp fast oge float %2048, 0.000000e+00
  %2197 = fsub fast float 0x400921FB60000000, %2195
  %2198 = select i1 %2196, float %2195, float %2197
  %2199 = call float @dx.op.unary.f32(i32 6, float %2131)  ; FAbs(value)
  %2200 = fmul fast float %2199, 0x3FC40AE960000000
  %2201 = fsub fast float 0x3FF921FB60000000, %2200
  %2202 = fsub fast float 1.000000e+00, %2199
  %2203 = bitcast float %2202 to i32
  %2204 = ashr i32 %2203, 1
  %2205 = add nsw i32 %2204, 532487669
  %2206 = bitcast i32 %2205 to float
  %2207 = fmul fast float %2206, %2201
  %2208 = fcmp fast oge float %2131, 0.000000e+00
  %2209 = fsub fast float 0x400921FB60000000, %2207
  %2210 = select i1 %2208, float %2207, float %2209
  %2211 = fsub fast float -0.000000e+00, %2186
  %2212 = fsub fast float %2211, %2198
  %2213 = call float @dx.op.binary.f32(i32 35, float %2212, float 0xBFF921FB60000000)  ; FMax(a,b)
  %2214 = call float @dx.op.binary.f32(i32 36, float %2213, float 0x3FF921FB60000000)  ; FMin(a,b)
  %2215 = fadd fast float %2186, %2214
  %2216 = fsub fast float %2210, %2186
  %2217 = call float @dx.op.binary.f32(i32 35, float %2216, float 0xBFF921FB60000000)  ; FMax(a,b)
  %2218 = call float @dx.op.binary.f32(i32 36, float %2217, float 0x3FF921FB60000000)  ; FMin(a,b)
  %2219 = fadd fast float %2186, %2218
  %2220 = fmul fast float %2215, 2.000000e+00
  %2221 = fsub fast float %2220, %2186
  %2222 = call float @dx.op.unary.f32(i32 12, float %2221)  ; Cos(value)
  %2223 = fsub fast float -0.000000e+00, %2222
  %2224 = fmul fast float %2219, 2.000000e+00
  %2225 = fsub fast float %2224, %2186
  %2226 = call float @dx.op.unary.f32(i32 12, float %2225)  ; Cos(value)
  %2227 = fmul fast float %2164, 2.000000e+00
  %2228 = fadd fast float %2219, %2215
  %2229 = fmul fast float %2184, %2228
  %2230 = fmul fast float %2229, 2.000000e+00
  %2231 = fsub fast float %2223, %2226
  %2232 = fadd fast float %2231, %2227
  %2233 = fadd fast float %2232, %2230
  %2234 = fmul fast float %2153, 2.500000e-01
  %2235 = fmul fast float %2234, %2233
  %2236 = fadd fast float %2235, %1951
  %2237 = fmul fast float %2186, %2184
  %2238 = fadd fast float %2237, %2164
  %2239 = fmul fast float %2238, %2153
  %2240 = fadd fast float %2239, %1949
  %2241 = add nuw nsw i32 %1950, 1
  %2242 = icmp eq i32 %2241, 16
  br i1 %2242, label %2243, label %1948

; <label>:2243                                    ; preds = %2134
  %2244 = fdiv fast float %2236, %2240
  br label %2245

; <label>:2245                                    ; preds = %2243, %1843, %1840
  %2246 = phi float [ %974, %1840 ], [ %2244, %2243 ], [ 1.000000e+00, %1843 ]
  %2247 = load float, float* %460, align 4
  %2248 = load float, float* %461, align 4
  %2249 = load float, float* %462, align 4
  %2250 = load float, float* %463, align 4
  %2251 = icmp eq i32 %1031, 2
  br i1 %2251, label %2252, label %2277, !dx.controlflow.hints !64

; <label>:2252                                    ; preds = %2245
  %2253 = getelementptr inbounds [4 x float], [4 x float]* %21, i32 0, i32 0
  store float %2247, float* %2253, align 4
  %2254 = getelementptr inbounds [4 x float], [4 x float]* %21, i32 0, i32 1
  store float %2248, float* %2254, align 4
  %2255 = getelementptr inbounds [4 x float], [4 x float]* %21, i32 0, i32 2
  store float %2249, float* %2255, align 4
  %2256 = getelementptr inbounds [4 x float], [4 x float]* %21, i32 0, i32 3
  store float %2250, float* %2256, align 4
  %2257 = getelementptr [4 x float], [4 x float]* %21, i32 0, i32 %480
  %2258 = load float, float* %2257, align 4, !tbaa !35, !noalias !65
  %2259 = fsub fast float %2258, %489
  %2260 = call float @dx.op.unary.f32(i32 6, float %2259)  ; FAbs(value)
  %2261 = fsub fast float %2258, %491
  %2262 = call float @dx.op.unary.f32(i32 6, float %2261)  ; FAbs(value)
  %2263 = fcmp fast olt float %2260, %2262
  %2264 = select i1 %2263, float %974, float %1436
  %2265 = getelementptr inbounds [4 x float], [4 x float]* %20, i32 0, i32 0
  store float %2247, float* %2265, align 4
  %2266 = getelementptr inbounds [4 x float], [4 x float]* %20, i32 0, i32 1
  store float %2248, float* %2266, align 4
  %2267 = getelementptr inbounds [4 x float], [4 x float]* %20, i32 0, i32 2
  store float %2249, float* %2267, align 4
  %2268 = getelementptr inbounds [4 x float], [4 x float]* %20, i32 0, i32 3
  store float %2250, float* %2268, align 4
  %2269 = getelementptr [4 x float], [4 x float]* %20, i32 0, i32 %487
  %2270 = load float, float* %2269, align 4, !tbaa !35, !noalias !72
  %2271 = fsub fast float %2270, %489
  %2272 = call float @dx.op.unary.f32(i32 6, float %2271)  ; FAbs(value)
  %2273 = fsub fast float %2270, %491
  %2274 = call float @dx.op.unary.f32(i32 6, float %2273)  ; FAbs(value)
  %2275 = fcmp fast olt float %2272, %2274
  %2276 = select i1 %2275, float %974, float %1436
  br label %2292

; <label>:2277                                    ; preds = %2245
  %2278 = icmp eq i32 %1031, 3
  br i1 %2278, label %2279, label %2292, !dx.controlflow.hints !76

; <label>:2279                                    ; preds = %2277
  %2280 = getelementptr inbounds [4 x float], [4 x float]* %19, i32 0, i32 0
  store float %2247, float* %2280, align 4
  %2281 = getelementptr inbounds [4 x float], [4 x float]* %19, i32 0, i32 1
  store float %2248, float* %2281, align 4
  %2282 = getelementptr inbounds [4 x float], [4 x float]* %19, i32 0, i32 2
  store float %2249, float* %2282, align 4
  %2283 = getelementptr inbounds [4 x float], [4 x float]* %19, i32 0, i32 3
  store float %2250, float* %2283, align 4
  %2284 = getelementptr [4 x float], [4 x float]* %19, i32 0, i32 %487
  %2285 = load float, float* %2284, align 4, !tbaa !35, !noalias !77
  %2286 = fsub fast float %2285, %489
  %2287 = call float @dx.op.unary.f32(i32 6, float %2286)  ; FAbs(value)
  %2288 = fsub fast float %2285, %491
  %2289 = call float @dx.op.unary.f32(i32 6, float %2288)  ; FAbs(value)
  %2290 = fcmp fast olt float %2287, %2289
  %2291 = select i1 %2290, float %974, float %1436
  br label %2292

; <label>:2292                                    ; preds = %2279, %2277, %2252
  %2293 = phi float [ %2291, %2279 ], [ %2246, %2277 ], [ %2276, %2252 ]
  %2294 = phi float [ %1841, %2279 ], [ %1841, %2277 ], [ %2264, %2252 ]
  %2295 = icmp eq i32 %479, 1
  %2296 = select i1 %2295, float %974, float %1436
  %2297 = icmp eq i32 %479, 2
  %2298 = select i1 %2297, float %974, float %2294
  %2299 = icmp eq i32 %479, 3
  %2300 = select i1 %2299, float %974, float %2293
  %2301 = icmp eq i32 %486, 0
  %2302 = select i1 %2301, float %1436, float %974
  %2303 = icmp eq i32 %486, 1
  %2304 = select i1 %2303, float %1436, float %2296
  %2305 = icmp eq i32 %486, 2
  %2306 = select i1 %2305, float %1436, float %2298
  %2307 = icmp eq i32 %486, 3
  %2308 = select i1 %2307, float %1436, float %2300
  %2309 = icmp eq i32 %480, 0
  %2310 = select i1 %2309, float %2294, float %2302
  %2311 = icmp eq i32 %480, 1
  %2312 = select i1 %2311, float %2294, float %2304
  %2313 = icmp eq i32 %480, 2
  %2314 = select i1 %2313, float %2294, float %2306
  %2315 = icmp eq i32 %480, 3
  %2316 = select i1 %2315, float %2294, float %2308
  %2317 = icmp eq i32 %487, 0
  %2318 = select i1 %2317, float %2293, float %2310
  %2319 = icmp eq i32 %487, 1
  %2320 = select i1 %2319, float %2293, float %2312
  %2321 = icmp eq i32 %487, 2
  %2322 = select i1 %2321, float %2293, float %2314
  %2323 = icmp eq i32 %487, 3
  %2324 = select i1 %2323, float %2293, float %2316
  %2325 = fadd fast float %2318, -1.000000e+00
  %2326 = fadd fast float %2320, -1.000000e+00
  %2327 = fadd fast float %2322, -1.000000e+00
  %2328 = fadd fast float %2324, -1.000000e+00
  %2329 = fmul fast float %2325, %363
  %2330 = fmul fast float %2326, %363
  %2331 = fmul fast float %2327, %363
  %2332 = fmul fast float %2328, %363
  %2333 = fadd fast float %2329, 1.000000e+00
  %2334 = fadd fast float %2330, 1.000000e+00
  %2335 = fadd fast float %2331, 1.000000e+00
  %2336 = fadd fast float %2332, 1.000000e+00
  %2337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %2338 = extractvalue %dx.types.CBufRet.f32 %2337, 2
  %2339 = extractvalue %dx.types.CBufRet.f32 %2337, 3
  %2340 = fadd fast float %2338, %52
  %2341 = fadd fast float %2339, %53
  %2342 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %12, float %2340, float %2341, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2343 = extractvalue %dx.types.ResRet.f32 %2342, 0
  %2344 = call float @dx.op.binary.f32(i32 36, float %2343, float %2333)  ; FMin(a,b)
  %2345 = call float @dx.op.binary.f32(i32 36, float %2343, float %2334)  ; FMin(a,b)
  %2346 = call float @dx.op.binary.f32(i32 36, float %2343, float %2335)  ; FMin(a,b)
  %2347 = call float @dx.op.binary.f32(i32 36, float %2343, float %2336)  ; FMin(a,b)
  %2348 = fmul fast float %2343, %2333
  %2349 = fmul fast float %2343, %2334
  %2350 = fmul fast float %2343, %2335
  %2351 = fmul fast float %2343, %2336
  %2352 = fsub fast float %2344, %2348
  %2353 = fsub fast float %2345, %2349
  %2354 = fsub fast float %2346, %2350
  %2355 = fsub fast float %2347, %2351
  %2356 = fmul fast float %2352, 7.500000e-01
  %2357 = fmul fast float %2353, 7.500000e-01
  %2358 = fmul fast float %2354, 7.500000e-01
  %2359 = fmul fast float %2355, 7.500000e-01
  %2360 = fadd fast float %2356, %2348
  %2361 = fadd fast float %2357, %2349
  %2362 = fadd fast float %2358, %2350
  %2363 = fadd fast float %2359, %2351
  %2364 = fmul fast float %46, 5.000000e-01
  %2365 = fmul fast float %47, 5.000000e-01
  %2366 = fadd fast float %52, %2364
  %2367 = fadd fast float %53, %2365
  %2368 = fsub fast float %2366, %99
  %2369 = fsub fast float %2367, %100
  %2370 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %12, float %2368, float %2369, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2371 = extractvalue %dx.types.ResRet.f32 %2370, 0
  %2372 = fsub fast float %2371, %2360
  %2373 = fmul fast float %2372, %354
  %2374 = fadd fast float %2373, %2360
  %2375 = shl i32 %16, 1
  %2376 = shl i32 %17, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %2375, i32 %2376, i32 undef, float %2374, float %2374, float %2374, float %2374, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %2377 = fptoui float %353 to i32
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2378 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %18
  store i32 %2377, i32 addrspace(3)* %2378, align 4, !tbaa !31
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2379 = icmp ult i32 %203, 32
  br i1 %2379, label %2380, label %2386, !dx.controlflow.hints !81

; <label>:2380                                    ; preds = %2292
  %2381 = add i32 %18, 32
  %2382 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2381
  %2383 = load i32, i32 addrspace(3)* %2382, align 4, !tbaa !31
  %2384 = load i32, i32 addrspace(3)* %2378, align 4, !tbaa !31
  %2385 = add i32 %2384, %2383
  store i32 %2385, i32 addrspace(3)* %2378, align 4, !tbaa !31
  br label %2386

; <label>:2386                                    ; preds = %2380, %2292
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %2387 = icmp ult i32 %203, 16
  br i1 %2387, label %2388, label %2394, !dx.controlflow.hints !82

; <label>:2388                                    ; preds = %2386
  %2389 = add i32 %18, 16
  %2390 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2389
  %2391 = load i32, i32 addrspace(3)* %2390, align 4, !tbaa !31
  %2392 = load i32, i32 addrspace(3)* %2378, align 4, !tbaa !31
  %2393 = add i32 %2392, %2391
  store i32 %2393, i32 addrspace(3)* %2378, align 4, !tbaa !31
  br label %2394

; <label>:2394                                    ; preds = %2388, %2386
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %2395 = icmp ult i32 %203, 8
  br i1 %2395, label %2396, label %2402, !dx.controlflow.hints !83

; <label>:2396                                    ; preds = %2394
  %2397 = add i32 %18, 8
  %2398 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2397
  %2399 = load i32, i32 addrspace(3)* %2398, align 4, !tbaa !31
  %2400 = load i32, i32 addrspace(3)* %2378, align 4, !tbaa !31
  %2401 = add i32 %2400, %2399
  store i32 %2401, i32 addrspace(3)* %2378, align 4, !tbaa !31
  br label %2402

; <label>:2402                                    ; preds = %2396, %2394
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %2403 = icmp ult i32 %203, 4
  br i1 %2403, label %2404, label %2410, !dx.controlflow.hints !84

; <label>:2404                                    ; preds = %2402
  %2405 = add i32 %18, 4
  %2406 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2405
  %2407 = load i32, i32 addrspace(3)* %2406, align 4, !tbaa !31
  %2408 = load i32, i32 addrspace(3)* %2378, align 4, !tbaa !31
  %2409 = add i32 %2408, %2407
  store i32 %2409, i32 addrspace(3)* %2378, align 4, !tbaa !31
  br label %2410

; <label>:2410                                    ; preds = %2404, %2402
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %2411 = icmp ult i32 %203, 2
  br i1 %2411, label %2412, label %2418, !dx.controlflow.hints !85

; <label>:2412                                    ; preds = %2410
  %2413 = add i32 %18, 2
  %2414 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2413
  %2415 = load i32, i32 addrspace(3)* %2414, align 4, !tbaa !31
  %2416 = load i32, i32 addrspace(3)* %2378, align 4, !tbaa !31
  %2417 = add i32 %2416, %2415
  store i32 %2417, i32 addrspace(3)* %2378, align 4, !tbaa !31
  br label %2418

; <label>:2418                                    ; preds = %2412, %2410
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %2419 = icmp eq i32 %203, 0
  br i1 %2419, label %2420, label %2426, !dx.controlflow.hints !86

; <label>:2420                                    ; preds = %2418
  %2421 = add i32 %18, 1
  %2422 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2421
  %2423 = load i32, i32 addrspace(3)* %2422, align 4, !tbaa !31
  %2424 = load i32, i32 addrspace(3)* %2378, align 4, !tbaa !31
  %2425 = add i32 %2424, %2423
  store i32 %2425, i32 addrspace(3)* %2378, align 4, !tbaa !31
  br label %2426

; <label>:2426                                    ; preds = %2420, %2418
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2427 = and i32 %18, -64
  %2428 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2427
  %2429 = load i32, i32 addrspace(3)* %2428, align 4, !tbaa !31
  %2430 = fmul fast float %46, 1.500000e+00
  %2431 = fadd fast float %52, %2430
  %2432 = fsub fast float %2431, %99
  %2433 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %12, float %2432, float %2369, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2434 = extractvalue %dx.types.ResRet.f32 %2433, 0
  %2435 = fsub fast float %2434, %2361
  %2436 = fmul fast float %2435, %354
  %2437 = fadd fast float %2436, %2361
  %2438 = or i32 %2375, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %2438, i32 %2376, i32 undef, float %2437, float %2437, float %2437, float %2437, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %2377, i32 addrspace(3)* %2378, align 4, !tbaa !31
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %2379, label %2439, label %2445, !dx.controlflow.hints !81

; <label>:2439                                    ; preds = %2426
  %2440 = add i32 %18, 32
  %2441 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2440
  %2442 = load i32, i32 addrspace(3)* %2441, align 4, !tbaa !31
  %2443 = load i32, i32 addrspace(3)* %2378, align 4, !tbaa !31
  %2444 = add i32 %2443, %2442
  store i32 %2444, i32 addrspace(3)* %2378, align 4, !tbaa !31
  br label %2445

; <label>:2445                                    ; preds = %2439, %2426
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2387, label %2446, label %2452, !dx.controlflow.hints !82

; <label>:2446                                    ; preds = %2445
  %2447 = add i32 %18, 16
  %2448 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2447
  %2449 = load i32, i32 addrspace(3)* %2448, align 4, !tbaa !31
  %2450 = load i32, i32 addrspace(3)* %2378, align 4, !tbaa !31
  %2451 = add i32 %2450, %2449
  store i32 %2451, i32 addrspace(3)* %2378, align 4, !tbaa !31
  br label %2452

; <label>:2452                                    ; preds = %2446, %2445
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2395, label %2453, label %2459, !dx.controlflow.hints !83

; <label>:2453                                    ; preds = %2452
  %2454 = add i32 %18, 8
  %2455 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2454
  %2456 = load i32, i32 addrspace(3)* %2455, align 4, !tbaa !31
  %2457 = load i32, i32 addrspace(3)* %2378, align 4, !tbaa !31
  %2458 = add i32 %2457, %2456
  store i32 %2458, i32 addrspace(3)* %2378, align 4, !tbaa !31
  br label %2459

; <label>:2459                                    ; preds = %2453, %2452
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2403, label %2460, label %2466, !dx.controlflow.hints !84

; <label>:2460                                    ; preds = %2459
  %2461 = add i32 %18, 4
  %2462 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2461
  %2463 = load i32, i32 addrspace(3)* %2462, align 4, !tbaa !31
  %2464 = load i32, i32 addrspace(3)* %2378, align 4, !tbaa !31
  %2465 = add i32 %2464, %2463
  store i32 %2465, i32 addrspace(3)* %2378, align 4, !tbaa !31
  br label %2466

; <label>:2466                                    ; preds = %2460, %2459
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2411, label %2467, label %2473, !dx.controlflow.hints !85

; <label>:2467                                    ; preds = %2466
  %2468 = add i32 %18, 2
  %2469 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2468
  %2470 = load i32, i32 addrspace(3)* %2469, align 4, !tbaa !31
  %2471 = load i32, i32 addrspace(3)* %2378, align 4, !tbaa !31
  %2472 = add i32 %2471, %2470
  store i32 %2472, i32 addrspace(3)* %2378, align 4, !tbaa !31
  br label %2473

; <label>:2473                                    ; preds = %2467, %2466
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2419, label %2474, label %2480, !dx.controlflow.hints !86

; <label>:2474                                    ; preds = %2473
  %2475 = add i32 %18, 1
  %2476 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2475
  %2477 = load i32, i32 addrspace(3)* %2476, align 4, !tbaa !31
  %2478 = load i32, i32 addrspace(3)* %2378, align 4, !tbaa !31
  %2479 = add i32 %2478, %2477
  store i32 %2479, i32 addrspace(3)* %2378, align 4, !tbaa !31
  br label %2480

; <label>:2480                                    ; preds = %2474, %2473
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2481 = load i32, i32 addrspace(3)* %2428, align 4, !tbaa !31
  %2482 = add i32 %2481, %2429
  %2483 = fmul fast float %47, 1.500000e+00
  %2484 = fadd fast float %53, %2483
  %2485 = fsub fast float %2484, %100
  %2486 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %12, float %2368, float %2485, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2487 = extractvalue %dx.types.ResRet.f32 %2486, 0
  %2488 = fsub fast float %2487, %2362
  %2489 = fmul fast float %2488, %354
  %2490 = fadd fast float %2489, %2362
  %2491 = or i32 %2376, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %2375, i32 %2491, i32 undef, float %2490, float %2490, float %2490, float %2490, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %2377, i32 addrspace(3)* %2378, align 4, !tbaa !31
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %2379, label %2492, label %2498, !dx.controlflow.hints !81

; <label>:2492                                    ; preds = %2480
  %2493 = add i32 %18, 32
  %2494 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2493
  %2495 = load i32, i32 addrspace(3)* %2494, align 4, !tbaa !31
  %2496 = load i32, i32 addrspace(3)* %2378, align 4, !tbaa !31
  %2497 = add i32 %2496, %2495
  store i32 %2497, i32 addrspace(3)* %2378, align 4, !tbaa !31
  br label %2498

; <label>:2498                                    ; preds = %2492, %2480
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2387, label %2499, label %2505, !dx.controlflow.hints !82

; <label>:2499                                    ; preds = %2498
  %2500 = add i32 %18, 16
  %2501 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2500
  %2502 = load i32, i32 addrspace(3)* %2501, align 4, !tbaa !31
  %2503 = load i32, i32 addrspace(3)* %2378, align 4, !tbaa !31
  %2504 = add i32 %2503, %2502
  store i32 %2504, i32 addrspace(3)* %2378, align 4, !tbaa !31
  br label %2505

; <label>:2505                                    ; preds = %2499, %2498
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2395, label %2506, label %2512, !dx.controlflow.hints !83

; <label>:2506                                    ; preds = %2505
  %2507 = add i32 %18, 8
  %2508 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2507
  %2509 = load i32, i32 addrspace(3)* %2508, align 4, !tbaa !31
  %2510 = load i32, i32 addrspace(3)* %2378, align 4, !tbaa !31
  %2511 = add i32 %2510, %2509
  store i32 %2511, i32 addrspace(3)* %2378, align 4, !tbaa !31
  br label %2512

; <label>:2512                                    ; preds = %2506, %2505
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2403, label %2513, label %2519, !dx.controlflow.hints !84

; <label>:2513                                    ; preds = %2512
  %2514 = add i32 %18, 4
  %2515 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2514
  %2516 = load i32, i32 addrspace(3)* %2515, align 4, !tbaa !31
  %2517 = load i32, i32 addrspace(3)* %2378, align 4, !tbaa !31
  %2518 = add i32 %2517, %2516
  store i32 %2518, i32 addrspace(3)* %2378, align 4, !tbaa !31
  br label %2519

; <label>:2519                                    ; preds = %2513, %2512
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2411, label %2520, label %2526, !dx.controlflow.hints !85

; <label>:2520                                    ; preds = %2519
  %2521 = add i32 %18, 2
  %2522 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2521
  %2523 = load i32, i32 addrspace(3)* %2522, align 4, !tbaa !31
  %2524 = load i32, i32 addrspace(3)* %2378, align 4, !tbaa !31
  %2525 = add i32 %2524, %2523
  store i32 %2525, i32 addrspace(3)* %2378, align 4, !tbaa !31
  br label %2526

; <label>:2526                                    ; preds = %2520, %2519
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2419, label %2527, label %2533, !dx.controlflow.hints !86

; <label>:2527                                    ; preds = %2526
  %2528 = add i32 %18, 1
  %2529 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2528
  %2530 = load i32, i32 addrspace(3)* %2529, align 4, !tbaa !31
  %2531 = load i32, i32 addrspace(3)* %2378, align 4, !tbaa !31
  %2532 = add i32 %2531, %2530
  store i32 %2532, i32 addrspace(3)* %2378, align 4, !tbaa !31
  br label %2533

; <label>:2533                                    ; preds = %2527, %2526
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2534 = load i32, i32 addrspace(3)* %2428, align 4, !tbaa !31
  %2535 = add i32 %2482, %2534
  %2536 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %12, float %2432, float %2485, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2537 = extractvalue %dx.types.ResRet.f32 %2536, 0
  %2538 = fsub fast float %2537, %2363
  %2539 = fmul fast float %2538, %354
  %2540 = fadd fast float %2539, %2363
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %2438, i32 %2491, i32 undef, float %2540, float %2540, float %2540, float %2540, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %2377, i32 addrspace(3)* %2378, align 4, !tbaa !31
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %2379, label %2541, label %2547, !dx.controlflow.hints !81

; <label>:2541                                    ; preds = %2533
  %2542 = add i32 %18, 32
  %2543 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2542
  %2544 = load i32, i32 addrspace(3)* %2543, align 4, !tbaa !31
  %2545 = load i32, i32 addrspace(3)* %2378, align 4, !tbaa !31
  %2546 = add i32 %2545, %2544
  store i32 %2546, i32 addrspace(3)* %2378, align 4, !tbaa !31
  br label %2547

; <label>:2547                                    ; preds = %2541, %2533
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2387, label %2548, label %2554, !dx.controlflow.hints !82

; <label>:2548                                    ; preds = %2547
  %2549 = add i32 %18, 16
  %2550 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2549
  %2551 = load i32, i32 addrspace(3)* %2550, align 4, !tbaa !31
  %2552 = load i32, i32 addrspace(3)* %2378, align 4, !tbaa !31
  %2553 = add i32 %2552, %2551
  store i32 %2553, i32 addrspace(3)* %2378, align 4, !tbaa !31
  br label %2554

; <label>:2554                                    ; preds = %2548, %2547
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2395, label %2555, label %2561, !dx.controlflow.hints !83

; <label>:2555                                    ; preds = %2554
  %2556 = add i32 %18, 8
  %2557 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2556
  %2558 = load i32, i32 addrspace(3)* %2557, align 4, !tbaa !31
  %2559 = load i32, i32 addrspace(3)* %2378, align 4, !tbaa !31
  %2560 = add i32 %2559, %2558
  store i32 %2560, i32 addrspace(3)* %2378, align 4, !tbaa !31
  br label %2561

; <label>:2561                                    ; preds = %2555, %2554
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2403, label %2562, label %2568, !dx.controlflow.hints !84

; <label>:2562                                    ; preds = %2561
  %2563 = add i32 %18, 4
  %2564 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2563
  %2565 = load i32, i32 addrspace(3)* %2564, align 4, !tbaa !31
  %2566 = load i32, i32 addrspace(3)* %2378, align 4, !tbaa !31
  %2567 = add i32 %2566, %2565
  store i32 %2567, i32 addrspace(3)* %2378, align 4, !tbaa !31
  br label %2568

; <label>:2568                                    ; preds = %2562, %2561
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2411, label %2569, label %2575, !dx.controlflow.hints !85

; <label>:2569                                    ; preds = %2568
  %2570 = add i32 %18, 2
  %2571 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2570
  %2572 = load i32, i32 addrspace(3)* %2571, align 4, !tbaa !31
  %2573 = load i32, i32 addrspace(3)* %2378, align 4, !tbaa !31
  %2574 = add i32 %2573, %2572
  store i32 %2574, i32 addrspace(3)* %2378, align 4, !tbaa !31
  br label %2575

; <label>:2575                                    ; preds = %2569, %2568
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2419, label %2576, label %2582, !dx.controlflow.hints !86

; <label>:2576                                    ; preds = %2575
  %2577 = add i32 %18, 1
  %2578 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2577
  %2579 = load i32, i32 addrspace(3)* %2578, align 4, !tbaa !31
  %2580 = load i32, i32 addrspace(3)* %2378, align 4, !tbaa !31
  %2581 = add i32 %2580, %2579
  store i32 %2581, i32 addrspace(3)* %2378, align 4, !tbaa !31
  br label %2582

; <label>:2582                                    ; preds = %2576, %2575
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2583 = load i32, i32 addrspace(3)* %2428, align 4, !tbaa !31
  %2584 = add i32 %2535, %2583
  %2585 = uitofp i32 %2584 to float
  %2586 = fmul fast float %2585, 0x3EF0101020000000
  br i1 %522, label %2587, label %2592, !dx.controlflow.hints !87

; <label>:2587                                    ; preds = %2582
  %2588 = fmul fast float %50, 1.250000e-01
  %2589 = fmul fast float %51, 1.250000e-01
  %2590 = fptoui float %2588 to i32
  %2591 = fptoui float %2589 to i32
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %2590, i32 %2591, i32 undef, float %2586, float %2586, float %2586, float %2586, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2592

; <label>:2592                                    ; preds = %2587, %2582
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
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #3

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

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
!8 = !{i32 1, %"class.Texture2DMS<vector<unsigned int, 4>, 0>"* undef, !"", i32 0, i32 1, i32 1, i32 3, i32 0, !9}
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
!32 = !{!"int", !33, i64 0}
!33 = !{!"omnipotent char", !34, i64 0}
!34 = !{!"Simple C/C++ TBAA"}
!35 = !{!36, !36, i64 0}
!36 = !{!"float", !33, i64 0}
!37 = !{!38, !40}
!38 = distinct !{!38, !39, !"\01?__GTAOQuadSortIndices@@YAXUGTAOQuadConfig@@V?$vector@M$03@@AIAV?$vector@I$03@@@Z: %quadIndices"}
!39 = distinct !{!39, !"\01?__GTAOQuadSortIndices@@YAXUGTAOQuadConfig@@V?$vector@M$03@@AIAV?$vector@I$03@@@Z"}
!40 = distinct !{!40, !41, !"\01?GTAOQuadMain@@YA?AUGTAOQuadOutput@@UGTAOQuadConfig@@UGTAOConfig@@V?$Texture2D@M@@V?$Texture2D@V?$vector@M$02@@@@USamplerState@@V?$vector@M$03@@V?$vector@M$01@@555IIV?$vector@I$03@@@Z: %agg.result"}
!41 = distinct !{!41, !"\01?GTAOQuadMain@@YA?AUGTAOQuadOutput@@UGTAOQuadConfig@@UGTAOConfig@@V?$Texture2D@M@@V?$Texture2D@V?$vector@M$02@@@@USamplerState@@V?$vector@M$03@@V?$vector@M$01@@555IIV?$vector@I$03@@@Z"}
!42 = !{!40}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = !{!45, !47, !40}
!45 = distinct !{!45, !46, !"\01?__GTAOQuadCalculateForPixel@@YA?AUGTAOPixelOutput@@UGTAOQuadConfig@@UGTAOConfig@@V?$Texture2D@M@@V?$Texture2D@V?$vector@M$02@@@@USamplerState@@V?$vector@I$03@@V?$vector@M$03@@5V?$vector@M$01@@666I7AIAI@Z: %agg.result"}
!46 = distinct !{!46, !"\01?__GTAOQuadCalculateForPixel@@YA?AUGTAOPixelOutput@@UGTAOQuadConfig@@UGTAOConfig@@V?$Texture2D@M@@V?$Texture2D@V?$vector@M$02@@@@USamplerState@@V?$vector@I$03@@V?$vector@M$03@@5V?$vector@M$01@@666I7AIAI@Z"}
!47 = distinct !{!47, !46, !"\01?__GTAOQuadCalculateForPixel@@YA?AUGTAOPixelOutput@@UGTAOQuadConfig@@UGTAOConfig@@V?$Texture2D@M@@V?$Texture2D@V?$vector@M$02@@@@USamplerState@@V?$vector@I$03@@V?$vector@M$03@@5V?$vector@M$01@@666I7AIAI@Z: %executed"}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 1}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = !{!51, !53, !40}
!51 = distinct !{!51, !52, !"\01?__GTAOQuadCalculateForPixel@@YA?AUGTAOPixelOutput@@UGTAOQuadConfig@@UGTAOConfig@@V?$Texture2D@M@@V?$Texture2D@V?$vector@M$02@@@@USamplerState@@V?$vector@I$03@@V?$vector@M$03@@5V?$vector@M$01@@666I7AIAI@Z: %agg.result"}
!52 = distinct !{!52, !"\01?__GTAOQuadCalculateForPixel@@YA?AUGTAOPixelOutput@@UGTAOQuadConfig@@UGTAOConfig@@V?$Texture2D@M@@V?$Texture2D@V?$vector@M$02@@@@USamplerState@@V?$vector@I$03@@V?$vector@M$03@@5V?$vector@M$01@@666I7AIAI@Z"}
!53 = distinct !{!53, !52, !"\01?__GTAOQuadCalculateForPixel@@YA?AUGTAOPixelOutput@@UGTAOQuadConfig@@UGTAOConfig@@V?$Texture2D@M@@V?$Texture2D@V?$vector@M$02@@@@USamplerState@@V?$vector@I$03@@V?$vector@M$03@@5V?$vector@M$01@@666I7AIAI@Z: %executed"}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = !{!56, !58, !40}
!56 = distinct !{!56, !57, !"\01?__GTAOQuadCalculateForPixel@@YA?AUGTAOPixelOutput@@UGTAOQuadConfig@@UGTAOConfig@@V?$Texture2D@M@@V?$Texture2D@V?$vector@M$02@@@@USamplerState@@V?$vector@I$03@@V?$vector@M$03@@5V?$vector@M$01@@666I7AIAI@Z: %agg.result"}
!57 = distinct !{!57, !"\01?__GTAOQuadCalculateForPixel@@YA?AUGTAOPixelOutput@@UGTAOQuadConfig@@UGTAOConfig@@V?$Texture2D@M@@V?$Texture2D@V?$vector@M$02@@@@USamplerState@@V?$vector@I$03@@V?$vector@M$03@@5V?$vector@M$01@@666I7AIAI@Z"}
!58 = distinct !{!58, !57, !"\01?__GTAOQuadCalculateForPixel@@YA?AUGTAOPixelOutput@@UGTAOQuadConfig@@UGTAOConfig@@V?$Texture2D@M@@V?$Texture2D@V?$vector@M$02@@@@USamplerState@@V?$vector@I$03@@V?$vector@M$03@@5V?$vector@M$01@@666I7AIAI@Z: %executed"}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = !{!61, !63, !40}
!61 = distinct !{!61, !62, !"\01?__GTAOQuadCalculateForPixel@@YA?AUGTAOPixelOutput@@UGTAOQuadConfig@@UGTAOConfig@@V?$Texture2D@M@@V?$Texture2D@V?$vector@M$02@@@@USamplerState@@V?$vector@I$03@@V?$vector@M$03@@5V?$vector@M$01@@666I7AIAI@Z: %agg.result"}
!62 = distinct !{!62, !"\01?__GTAOQuadCalculateForPixel@@YA?AUGTAOPixelOutput@@UGTAOQuadConfig@@UGTAOConfig@@V?$Texture2D@M@@V?$Texture2D@V?$vector@M$02@@@@USamplerState@@V?$vector@I$03@@V?$vector@M$03@@5V?$vector@M$01@@666I7AIAI@Z"}
!63 = distinct !{!63, !62, !"\01?__GTAOQuadCalculateForPixel@@YA?AUGTAOPixelOutput@@UGTAOQuadConfig@@UGTAOConfig@@V?$Texture2D@M@@V?$Texture2D@V?$vector@M$02@@@@USamplerState@@V?$vector@I$03@@V?$vector@M$03@@5V?$vector@M$01@@666I7AIAI@Z: %executed"}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = !{!66, !68, !69, !71, !40}
!66 = distinct !{!66, !67, !"\01?__GTAOQuadBilateralUpsamplePixel@@YAXUGTAOQuadConfig@@V?$vector@M$03@@V?$vector@I$03@@MMIAIAV2@AIAV3@@Z: %visibility"}
!67 = distinct !{!67, !"\01?__GTAOQuadBilateralUpsamplePixel@@YAXUGTAOQuadConfig@@V?$vector@M$03@@V?$vector@I$03@@MMIAIAV2@AIAV3@@Z"}
!68 = distinct !{!68, !67, !"\01?__GTAOQuadBilateralUpsamplePixel@@YAXUGTAOQuadConfig@@V?$vector@M$03@@V?$vector@I$03@@MMIAIAV2@AIAV3@@Z: %irradiance"}
!69 = distinct !{!69, !70, !"\01?__GTAOQuadBilateralUpsample@@YAXUGTAOQuadConfig@@V?$vector@M$03@@V?$vector@I$03@@MMIAIAV2@AIAV3@@Z: %visibility"}
!70 = distinct !{!70, !"\01?__GTAOQuadBilateralUpsample@@YAXUGTAOQuadConfig@@V?$vector@M$03@@V?$vector@I$03@@MMIAIAV2@AIAV3@@Z"}
!71 = distinct !{!71, !70, !"\01?__GTAOQuadBilateralUpsample@@YAXUGTAOQuadConfig@@V?$vector@M$03@@V?$vector@I$03@@MMIAIAV2@AIAV3@@Z: %irradiance"}
!72 = !{!73, !75, !69, !71, !40}
!73 = distinct !{!73, !74, !"\01?__GTAOQuadBilateralUpsamplePixel@@YAXUGTAOQuadConfig@@V?$vector@M$03@@V?$vector@I$03@@MMIAIAV2@AIAV3@@Z: %visibility"}
!74 = distinct !{!74, !"\01?__GTAOQuadBilateralUpsamplePixel@@YAXUGTAOQuadConfig@@V?$vector@M$03@@V?$vector@I$03@@MMIAIAV2@AIAV3@@Z"}
!75 = distinct !{!75, !74, !"\01?__GTAOQuadBilateralUpsamplePixel@@YAXUGTAOQuadConfig@@V?$vector@M$03@@V?$vector@I$03@@MMIAIAV2@AIAV3@@Z: %irradiance"}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = !{!78, !80, !69, !71, !40}
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

