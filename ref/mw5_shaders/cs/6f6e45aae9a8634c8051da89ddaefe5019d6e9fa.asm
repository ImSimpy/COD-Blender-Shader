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
; shader hash: 994d91b608c5134f51f192ee50f2a985
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
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
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

define void @cs_gtao() {
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
  %36 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %37 = extractvalue %dx.types.CBufRet.i32 %36, 0
  %38 = extractvalue %dx.types.CBufRet.i32 %36, 1
  %39 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %40 = extractvalue %dx.types.CBufRet.f32 %39, 2
  %41 = extractvalue %dx.types.CBufRet.f32 %39, 3
  %42 = fmul fast float %40, 5.120000e+02
  %43 = fmul fast float %41, 5.120000e+02
  %44 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %45 = extractvalue %dx.types.CBufRet.f32 %44, 0
  %46 = extractvalue %dx.types.CBufRet.f32 %44, 1
  %47 = fmul fast float %45, 5.000000e-01
  %48 = fmul fast float %46, 5.000000e-01
  %49 = extractvalue %dx.types.CBufRet.f32 %44, 2
  %50 = extractvalue %dx.types.CBufRet.f32 %44, 3
  %51 = fmul fast float %49, 2.000000e+00
  %52 = fmul fast float %50, 2.000000e+00
  %53 = uitofp i32 %16 to float
  %54 = uitofp i32 %17 to float
  %55 = fmul fast float %51, %53
  %56 = fmul fast float %52, %54
  %57 = fadd fast float %55, %49
  %58 = fadd fast float %56, %50
  %59 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %13, float %57, float %58, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %60 = extractvalue %dx.types.ResRet.f32 %59, 0
  %61 = bitcast float %60 to i32
  %62 = lshr i32 %61, 11
  %63 = and i32 %61, 2047
  %64 = and i32 %62, 2047
  %65 = uitofp i32 %63 to float
  %66 = uitofp i32 %64 to float
  %67 = fmul fast float %65, 0x3F50040100000000
  %68 = fmul fast float %66, 0x3F50040100000000
  %69 = fadd fast float %67, -1.000000e+00
  %70 = fadd fast float %68, -1.000000e+00
  %71 = lshr i32 %61, 22
  %72 = shl nuw nsw i32 %71, 5
  %73 = call float @dx.op.legacyF16ToF32(i32 131, i32 %72)  ; LegacyF16ToF32(value)
  %74 = call float @dx.op.unary.f32(i32 6, float %69)  ; FAbs(value)
  %75 = call float @dx.op.unary.f32(i32 6, float %70)  ; FAbs(value)
  %76 = fadd fast float %74, -5.000000e-01
  %77 = fadd fast float %75, -5.000000e-01
  %78 = fmul fast float %76, 2.000000e+00
  %79 = fmul fast float %77, 2.000000e+00
  %80 = call float @dx.op.unary.f32(i32 7, float %78)  ; Saturate(value)
  %81 = call float @dx.op.unary.f32(i32 7, float %79)  ; Saturate(value)
  %82 = fmul fast float %74, 2.000000e+00
  %83 = fmul fast float %75, 2.000000e+00
  %84 = call float @dx.op.unary.f32(i32 7, float %82)  ; Saturate(value)
  %85 = call float @dx.op.unary.f32(i32 7, float %83)  ; Saturate(value)
  %86 = fmul fast float %80, %80
  %87 = fmul fast float %86, 0x3FA48888A0000000
  %88 = fmul fast float %81, %81
  %89 = fmul fast float %88, 0x3FB2407960000000
  %90 = fmul fast float %84, 0x3F599999A0000000
  %91 = fmul fast float %85, 0x3F66C16C20000000
  %92 = fadd fast float %90, %87
  %93 = fadd fast float %91, %89
  %94 = fsub fast float -0.000000e+00, %92
  %95 = fsub fast float -0.000000e+00, %93
  %96 = fcmp fast olt float %69, 0.000000e+00
  %97 = fcmp fast olt float %70, 0.000000e+00
  %98 = select i1 %96, float 0.000000e+00, float 1.000000e+00
  %99 = select i1 %97, float 0.000000e+00, float 1.000000e+00
  %100 = fcmp fast une float %98, 0.000000e+00
  %101 = fcmp fast une float %99, 0.000000e+00
  %102 = select i1 %100, float %92, float %94
  %103 = select i1 %101, float %93, float %95
  %104 = fsub fast float %57, %102
  %105 = fsub fast float %58, %103
  %106 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %8, %dx.types.Handle %13, float %104, float %105, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %107 = extractvalue %dx.types.ResRet.f32 %106, 0
  %108 = extractvalue %dx.types.ResRet.f32 %106, 1
  %109 = extractvalue %dx.types.ResRet.f32 %106, 2
  %110 = extractvalue %dx.types.ResRet.f32 %106, 3
  %111 = bitcast float %107 to i32
  %112 = bitcast float %108 to i32
  %113 = bitcast float %109 to i32
  %114 = bitcast float %110 to i32
  %115 = call i32 @dx.op.binary.i32(i32 40, i32 %113, i32 %114)  ; UMin(a,b)
  %116 = call i32 @dx.op.binary.i32(i32 40, i32 %112, i32 %115)  ; UMin(a,b)
  %117 = call i32 @dx.op.binary.i32(i32 40, i32 %111, i32 %116)  ; UMin(a,b)
  %118 = lshr i32 %117, 11
  %119 = and i32 %117, 2047
  %120 = and i32 %118, 2047
  %121 = uitofp i32 %119 to float
  %122 = uitofp i32 %120 to float
  %123 = fmul fast float %121, 0x3F50040100000000
  %124 = fmul fast float %122, 0x3F50040100000000
  %125 = fadd fast float %123, -1.000000e+00
  %126 = fadd fast float %124, -1.000000e+00
  %127 = lshr i32 %117, 22
  %128 = shl nuw nsw i32 %127, 5
  %129 = call float @dx.op.legacyF16ToF32(i32 131, i32 %128)  ; LegacyF16ToF32(value)
  %130 = call float @dx.op.unary.f32(i32 6, float %125)  ; FAbs(value)
  %131 = call float @dx.op.unary.f32(i32 6, float %126)  ; FAbs(value)
  %132 = fadd fast float %130, -5.000000e-01
  %133 = fadd fast float %131, -5.000000e-01
  %134 = fmul fast float %132, 2.000000e+00
  %135 = fmul fast float %133, 2.000000e+00
  %136 = call float @dx.op.unary.f32(i32 7, float %134)  ; Saturate(value)
  %137 = call float @dx.op.unary.f32(i32 7, float %135)  ; Saturate(value)
  %138 = fmul fast float %130, 2.000000e+00
  %139 = fmul fast float %131, 2.000000e+00
  %140 = call float @dx.op.unary.f32(i32 7, float %138)  ; Saturate(value)
  %141 = call float @dx.op.unary.f32(i32 7, float %139)  ; Saturate(value)
  %142 = fmul fast float %136, %136
  %143 = fmul fast float %142, 0x3FA48888A0000000
  %144 = fmul fast float %137, %137
  %145 = fmul fast float %144, 0x3FB2407960000000
  %146 = fmul fast float %140, 0x3F599999A0000000
  %147 = fmul fast float %141, 0x3F66C16C20000000
  %148 = fadd fast float %146, %143
  %149 = fadd fast float %147, %145
  %150 = fsub fast float -0.000000e+00, %148
  %151 = fsub fast float -0.000000e+00, %149
  %152 = fcmp fast olt float %125, 0.000000e+00
  %153 = fcmp fast olt float %126, 0.000000e+00
  %154 = select i1 %152, float 0.000000e+00, float 1.000000e+00
  %155 = select i1 %153, float 0.000000e+00, float 1.000000e+00
  %156 = fcmp fast une float %154, 0.000000e+00
  %157 = fcmp fast une float %155, 0.000000e+00
  %158 = select i1 %156, float %148, float %150
  %159 = select i1 %157, float %149, float %151
  %160 = fmul fast float %102, 3.000000e+00
  %161 = fmul fast float %103, 3.000000e+00
  %162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %163 = extractvalue %dx.types.CBufRet.f32 %162, 2
  %164 = extractvalue %dx.types.CBufRet.f32 %162, 3
  %165 = fmul fast float %49, %42
  %166 = fmul fast float %50, %43
  %167 = fmul fast float %163, %73
  %168 = fmul fast float %73, %164
  %169 = fsub fast float -0.000000e+00, %168
  %170 = fdiv fast float 5.000000e+01, %167
  %171 = fdiv fast float 5.000000e+01, %169
  %172 = call float @dx.op.binary.f32(i32 36, float %165, float %170)  ; FMin(a,b)
  %173 = call float @dx.op.binary.f32(i32 36, float %166, float %171)  ; FMin(a,b)
  %174 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %12, float %57, float %58, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %175 = extractvalue %dx.types.ResRet.f32 %174, 0
  %176 = extractvalue %dx.types.ResRet.f32 %174, 1
  %177 = fmul fast float %175, %175
  %178 = fsub fast float %176, %177
  %179 = call float @dx.op.unary.f32(i32 7, float %178)  ; Saturate(value)
  %180 = fdiv fast float %179, %175
  %181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %182 = extractvalue %dx.types.CBufRet.f32 %181, 0
  %183 = fmul fast float %182, 0x40165A5B00000000
  %184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %185 = extractvalue %dx.types.CBufRet.f32 %184, 0
  %186 = fmul fast float %185, 2.000000e+00
  %187 = fadd fast float %186, -1.000000e+00
  %188 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %12, float %104, float %105, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %189 = extractvalue %dx.types.ResRet.f32 %188, 0
  %190 = fmul fast float %189, 2.550000e+02
  %191 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %12, float %104, float %105, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %192 = extractvalue %dx.types.ResRet.f32 %191, 0
  %193 = extractvalue %dx.types.ResRet.f32 %191, 1
  %194 = extractvalue %dx.types.ResRet.f32 %191, 2
  %195 = extractvalue %dx.types.ResRet.f32 %191, 3
  %196 = call float @dx.op.dot4.f32(i32 56, float %192, float %193, float %194, float %195, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %197 = call float @dx.op.dot4.f32(i32 56, float %192, float %193, float %194, float %195, float %192, float %193, float %194, float %195)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %198 = fmul fast float %196, 2.500000e-01
  %199 = fmul fast float %197, 2.500000e-01
  %200 = mul i32 %18, 2
  %201 = add i32 0, %200
  %202 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %201
  store float %198, float addrspace(3)* %202, align 4
  %203 = mul i32 %18, 2
  %204 = add i32 1, %203
  %205 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %204
  store float %199, float addrspace(3)* %205, align 4
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %206 = and i32 %18, 63
  %207 = xor i32 %206, 1
  %208 = mul i32 %207, 2
  %209 = add i32 0, %208
  %210 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %209
  %211 = load float, float addrspace(3)* %210, align 4
  %212 = mul i32 %207, 2
  %213 = add i32 1, %212
  %214 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %213
  %215 = load float, float addrspace(3)* %214, align 4
  %216 = fadd fast float %211, %198
  %217 = fadd fast float %215, %199
  %218 = xor i32 %206, 8
  %219 = mul i32 %218, 2
  %220 = add i32 0, %219
  %221 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %220
  %222 = load float, float addrspace(3)* %221, align 4
  %223 = mul i32 %218, 2
  %224 = add i32 1, %223
  %225 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %224
  %226 = load float, float addrspace(3)* %225, align 4
  %227 = fadd fast float %216, %222
  %228 = fadd fast float %217, %226
  %229 = xor i32 %206, 9
  %230 = mul i32 %229, 2
  %231 = add i32 0, %230
  %232 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %231
  %233 = load float, float addrspace(3)* %232, align 4
  %234 = mul i32 %229, 2
  %235 = add i32 1, %234
  %236 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %235
  %237 = load float, float addrspace(3)* %236, align 4
  %238 = fadd fast float %227, %233
  %239 = fadd fast float %228, %237
  store float %238, float addrspace(3)* %202, align 4
  store float %239, float addrspace(3)* %205, align 4
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %240 = xor i32 %206, 2
  %241 = mul i32 %240, 2
  %242 = add i32 0, %241
  %243 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %242
  %244 = load float, float addrspace(3)* %243, align 4
  %245 = fadd fast float %244, %238
  %246 = xor i32 %206, 16
  %247 = mul i32 %246, 2
  %248 = add i32 0, %247
  %249 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %248
  %250 = load float, float addrspace(3)* %249, align 4
  %251 = fadd fast float %245, %250
  %252 = xor i32 %206, 18
  %253 = mul i32 %252, 2
  %254 = add i32 0, %253
  %255 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %254
  %256 = load float, float addrspace(3)* %255, align 4
  %257 = fadd fast float %251, %256
  %258 = fmul fast float %257, 6.250000e-02
  %259 = call float @dx.op.binary.f32(i32 35, float %258, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %260 = fmul fast float %73, 0x3FA99999A0000000
  %261 = fadd fast float %129, %260
  %262 = fcmp fast olt float %73, %261
  %263 = fsub fast float %102, %158
  %264 = fsub fast float %103, %159
  %265 = fmul fast float %263, 1.920000e+03
  %266 = fmul fast float %264, 1.080000e+03
  %267 = call float @dx.op.dot2.f32(i32 54, float %265, float %266, float %265, float %266)  ; Dot2(ax,ay,bx,by)
  %268 = bitcast float %267 to i32
  %269 = ashr i32 %268, 1
  %270 = add nsw i32 %269, 532487669
  %271 = bitcast i32 %270 to float
  %272 = fmul fast float %271, 2.000000e+00
  %273 = fsub fast float 1.000000e+00, %272
  %274 = call float @dx.op.unary.f32(i32 7, float %273)  ; Saturate(value)
  %275 = select i1 %262, float 1.000000e+00, float %274
  %276 = fmul fast float %102, 1.920000e+03
  %277 = fmul fast float %103, 1.080000e+03
  %278 = call float @dx.op.unary.f32(i32 6, float %276)  ; FAbs(value)
  %279 = call float @dx.op.unary.f32(i32 6, float %277)  ; FAbs(value)
  %280 = call float @dx.op.binary.f32(i32 35, float %278, float %279)  ; FMax(a,b)
  %281 = fmul fast float %280, 0x3FB99999A0000000
  %282 = fsub fast float 8.000000e+00, %281
  %283 = call float @dx.op.unary.f32(i32 7, float %282)  ; Saturate(value)
  %284 = fmul fast float %283, %275
  %285 = fadd fast float %57, -5.000000e-01
  %286 = fsub fast float %285, %160
  %287 = fadd fast float %58, -5.000000e-01
  %288 = fsub fast float %287, %161
  %289 = call float @dx.op.unary.f32(i32 6, float %286)  ; FAbs(value)
  %290 = call float @dx.op.unary.f32(i32 6, float %288)  ; FAbs(value)
  %291 = fadd fast float %289, -5.000000e-01
  %292 = fadd fast float %290, -5.000000e-01
  %293 = call float @dx.op.binary.f32(i32 35, float %291, float %292)  ; FMax(a,b)
  %294 = fcmp fast olt float %293, 0.000000e+00
  %295 = select i1 %294, float 1.000000e+00, float 0.000000e+00
  %296 = fmul fast float %284, %295
  %297 = fsub fast float %259, %175
  %298 = call float @dx.op.unary.f32(i32 6, float %297)  ; FAbs(value)
  %299 = fmul fast float %175, 2.500000e-01
  %300 = fmul fast float %299, %180
  %301 = call float @dx.op.unary.f32(i32 24, float %300)  ; Sqrt(value)
  %302 = fmul fast float %175, 0x3FD6666660000000
  %303 = fadd fast float %302, 0x3FA99999A0000000
  %304 = fadd fast float %303, %301
  %305 = fdiv fast float %298, %304
  %306 = fsub fast float 1.000000e+00, %305
  %307 = call float @dx.op.unary.f32(i32 7, float %306)  ; Saturate(value)
  %308 = fmul fast float %307, 0x3FF8062660000000
  %309 = call float @dx.op.unary.f32(i32 7, float %308)  ; Saturate(value)
  %310 = fmul fast float %309, 2.000000e+00
  %311 = fsub fast float 3.000000e+00, %310
  %312 = fmul fast float %309, %309
  %313 = fmul fast float %312, 5.000000e-01
  %314 = fmul fast float %313, %311
  %315 = fadd fast float %314, 5.000000e-01
  %316 = fmul fast float %296, %315
  %317 = fmul fast float %189, 0x41A7A6C180000000
  %318 = fsub fast float 0x41CFB3AA00000000, %317
  %319 = fptosi float %318 to i32
  %320 = bitcast i32 %319 to float
  %321 = fsub fast float 1.000000e+00, %320
  %322 = fdiv fast float 0x3FA9999A00000000, %321
  %323 = fsub fast float 1.000000e+00, %322
  %324 = fcmp fast ugt float %316, 0x3FEE666660000000
  %325 = fmul fast float %316, %323
  br i1 %324, label %333, label %326, !dx.controlflow.hints !29

; <label>:326                                     ; preds = %0
  %327 = fadd fast float %325, 0xBFEE666660000000
  %328 = fadd fast float %325, -1.000000e+00
  %329 = fdiv fast float %327, %328
  %330 = call float @dx.op.unary.f32(i32 23, float %329)  ; Log(value)
  %331 = fmul fast float %330, 0x402B06DCE0000000
  %332 = fsub fast float -1.000000e+00, %331
  br label %355

; <label>:333                                     ; preds = %0
  %334 = fcmp fast ole float %323, 0x3FEE666660000000
  %335 = lshr i32 %16, 3
  %336 = uitofp i32 %335 to float
  %337 = fadd fast float %183, %336
  %338 = fmul fast float %187, %337
  %339 = lshr i32 %17, 3
  %340 = uitofp i32 %339 to float
  %341 = fadd fast float %183, %340
  %342 = fmul fast float %187, %341
  %343 = call float @dx.op.dot2.f32(i32 54, float %338, float %342, float 0x3FB12E2860000000, float 0x3F77E8B200000000)  ; Dot2(ax,ay,bx,by)
  %344 = call float @dx.op.unary.f32(i32 22, float %343)  ; Frc(value)
  %345 = fmul fast float %344, 0x404A7DD040000000
  %346 = call float @dx.op.unary.f32(i32 22, float %345)  ; Frc(value)
  %347 = fcmp fast olt float %346, 1.250000e-01
  %348 = and i1 %334, %347
  br i1 %348, label %349, label %353, !dx.controlflow.hints !30

; <label>:349                                     ; preds = %333
  %350 = call float @dx.op.unary.f32(i32 23, float -0.000000e+00)  ; Log(value)
  %351 = fmul fast float %350, 0x402B06DCE0000000
  %352 = fsub fast float -1.000000e+00, %351
  br label %355

; <label>:353                                     ; preds = %333
  %354 = fadd fast float %190, -1.600000e+01
  br label %355

; <label>:355                                     ; preds = %353, %349, %326
  %356 = phi float [ %332, %326 ], [ %352, %349 ], [ %354, %353 ]
  %357 = phi float [ %325, %326 ], [ 0x3FECCCCCC0000000, %349 ], [ 1.000000e+00, %353 ]
  %358 = fmul fast float %172, %47
  %359 = fmul fast float %173, %48
  %360 = call float @dx.op.binary.f32(i32 36, float %358, float %359)  ; FMin(a,b)
  %361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %362 = extractvalue %dx.types.CBufRet.f32 %361, 0
  %363 = fsub fast float %360, %362
  %364 = extractvalue %dx.types.CBufRet.f32 %361, 1
  %365 = fmul fast float %363, %364
  %366 = call float @dx.op.unary.f32(i32 7, float %365)  ; Saturate(value)
  %367 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %11, %dx.types.Handle %13, float %57, float %58, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %368 = extractvalue %dx.types.ResRet.f32 %367, 0
  %369 = extractvalue %dx.types.ResRet.f32 %367, 1
  %370 = extractvalue %dx.types.ResRet.f32 %367, 2
  %371 = extractvalue %dx.types.ResRet.f32 %367, 3
  %372 = fcmp fast ogt float %368, -1.000000e+00
  %373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %374 = extractvalue %dx.types.CBufRet.f32 %373, 1
  %375 = select i1 %372, float %374, float 1.000000e+00
  %376 = fadd fast float %368, 1.000000e+00
  %377 = fmul fast float %375, %376
  %378 = fcmp fast ogt float %369, -1.000000e+00
  %379 = select i1 %378, float %374, float 1.000000e+00
  %380 = fadd fast float %369, 1.000000e+00
  %381 = fmul fast float %379, %380
  %382 = fcmp fast ogt float %370, -1.000000e+00
  %383 = select i1 %382, float %374, float 1.000000e+00
  %384 = fadd fast float %370, 1.000000e+00
  %385 = fmul fast float %383, %384
  %386 = fcmp fast ogt float %371, -1.000000e+00
  %387 = select i1 %386, float %374, float 1.000000e+00
  %388 = fadd fast float %371, 1.000000e+00
  %389 = fmul fast float %387, %388
  %390 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %391 = extractvalue %dx.types.CBufRet.i32 %390, 0
  %392 = extractvalue %dx.types.CBufRet.i32 %390, 1
  %393 = extractvalue %dx.types.CBufRet.i32 %390, 2
  %394 = extractvalue %dx.types.CBufRet.i32 %390, 3
  %395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %396 = extractvalue %dx.types.CBufRet.f32 %395, 0
  %397 = extractvalue %dx.types.CBufRet.f32 %395, 1
  %398 = fmul fast float %396, %57
  %399 = fmul fast float %397, %58
  %400 = fadd fast float %398, -5.000000e-01
  %401 = fadd fast float %399, -5.000000e-01
  %402 = fptosi float %400 to i32
  %403 = fptosi float %401 to i32
  %404 = add i32 %403, 1
  %405 = add i32 %402, 1
  %406 = lshr i32 %402, 1
  %407 = lshr i32 %403, 1
  %408 = and i32 %402, 1
  %409 = shl i32 %403, 1
  %410 = and i32 %409, 2
  %411 = or i32 %410, %408
  %412 = getelementptr inbounds [4 x i32], [4 x i32]* %35, i32 0, i32 0
  store i32 %391, i32* %412, align 4
  %413 = getelementptr inbounds [4 x i32], [4 x i32]* %35, i32 0, i32 1
  store i32 %392, i32* %413, align 4
  %414 = getelementptr inbounds [4 x i32], [4 x i32]* %35, i32 0, i32 2
  store i32 %393, i32* %414, align 4
  %415 = getelementptr inbounds [4 x i32], [4 x i32]* %35, i32 0, i32 3
  store i32 %394, i32* %415, align 4
  %416 = getelementptr [4 x i32], [4 x i32]* %35, i32 0, i32 %411
  %417 = load i32, i32* %416, align 4, !tbaa !31
  %418 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 %417, i32 %406, i32 %407, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %419 = extractvalue %dx.types.ResRet.i32 %418, 0
  %420 = lshr i32 %404, 1
  %421 = shl i32 %404, 1
  %422 = and i32 %421, 2
  %423 = or i32 %422, %408
  %424 = getelementptr inbounds [4 x i32], [4 x i32]* %34, i32 0, i32 0
  store i32 %391, i32* %424, align 4
  %425 = getelementptr inbounds [4 x i32], [4 x i32]* %34, i32 0, i32 1
  store i32 %392, i32* %425, align 4
  %426 = getelementptr inbounds [4 x i32], [4 x i32]* %34, i32 0, i32 2
  store i32 %393, i32* %426, align 4
  %427 = getelementptr inbounds [4 x i32], [4 x i32]* %34, i32 0, i32 3
  store i32 %394, i32* %427, align 4
  %428 = getelementptr [4 x i32], [4 x i32]* %34, i32 0, i32 %423
  %429 = load i32, i32* %428, align 4, !tbaa !31
  %430 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 %429, i32 %406, i32 %420, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %431 = extractvalue %dx.types.ResRet.i32 %430, 0
  %432 = lshr i32 %405, 1
  %433 = and i32 %405, 1
  %434 = or i32 %422, %433
  %435 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i32 0, i32 0
  store i32 %391, i32* %435, align 4
  %436 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i32 0, i32 1
  store i32 %392, i32* %436, align 4
  %437 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i32 0, i32 2
  store i32 %393, i32* %437, align 4
  %438 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i32 0, i32 3
  store i32 %394, i32* %438, align 4
  %439 = getelementptr [4 x i32], [4 x i32]* %33, i32 0, i32 %434
  %440 = load i32, i32* %439, align 4, !tbaa !31
  %441 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 %440, i32 %432, i32 %420, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %442 = extractvalue %dx.types.ResRet.i32 %441, 0
  %443 = or i32 %410, %433
  %444 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i32 0, i32 0
  store i32 %391, i32* %444, align 4
  %445 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i32 0, i32 1
  store i32 %392, i32* %445, align 4
  %446 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i32 0, i32 2
  store i32 %393, i32* %446, align 4
  %447 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i32 0, i32 3
  store i32 %394, i32* %447, align 4
  %448 = getelementptr [4 x i32], [4 x i32]* %32, i32 0, i32 %443
  %449 = load i32, i32* %448, align 4, !tbaa !31
  %450 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 %449, i32 %432, i32 %407, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %451 = extractvalue %dx.types.ResRet.i32 %450, 0
  %452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %453 = extractvalue %dx.types.CBufRet.f32 %452, 0
  %454 = extractvalue %dx.types.CBufRet.f32 %452, 1
  %455 = extractvalue %dx.types.CBufRet.f32 %452, 2
  %456 = extractvalue %dx.types.CBufRet.f32 %452, 3
  %457 = extractvalue %dx.types.CBufRet.f32 %395, 2
  %458 = extractvalue %dx.types.CBufRet.f32 %395, 3
  %459 = call float @dx.op.unary.f32(i32 6, float %389)  ; FAbs(value)
  %460 = call float @dx.op.unary.f32(i32 6, float %385)  ; FAbs(value)
  %461 = call float @dx.op.unary.f32(i32 6, float %377)  ; FAbs(value)
  %462 = call float @dx.op.unary.f32(i32 6, float %381)  ; FAbs(value)
  %463 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 0
  store float %459, float* %463, align 4
  %464 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 1
  store float %460, float* %464, align 4
  %465 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 2
  store float %461, float* %465, align 4
  %466 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 3
  store float %462, float* %466, align 4
  %467 = getelementptr inbounds [4 x float], [4 x float]* %30, i32 0, i32 0
  store float %459, float* %467, align 4
  %468 = getelementptr inbounds [4 x float], [4 x float]* %30, i32 0, i32 1
  store float %460, float* %468, align 4
  %469 = getelementptr inbounds [4 x float], [4 x float]* %30, i32 0, i32 2
  store float %461, float* %469, align 4
  %470 = getelementptr inbounds [4 x float], [4 x float]* %30, i32 0, i32 3
  store float %462, float* %470, align 4
  %471 = fcmp fast olt float %459, %460
  %472 = zext i1 %471 to i32
  %473 = xor i32 %472, 1
  %474 = fcmp fast olt float %461, %462
  %475 = select i1 %474, i32 3, i32 2
  %476 = select i1 %474, i32 2, i32 3
  %477 = getelementptr [4 x float], [4 x float]* %30, i32 0, i32 %472
  %478 = load float, float* %477, align 4, !tbaa !35, !noalias !37
  %479 = getelementptr [4 x float], [4 x float]* %30, i32 0, i32 %475
  %480 = load float, float* %479, align 4, !tbaa !35, !noalias !37
  %481 = fcmp fast olt float %478, %480
  %482 = select i1 %481, i32 %475, i32 %472
  %483 = select i1 %481, i32 %472, i32 %475
  %484 = getelementptr [4 x float], [4 x float]* %30, i32 0, i32 %473
  %485 = load float, float* %484, align 4, !tbaa !35, !noalias !37
  %486 = getelementptr [4 x float], [4 x float]* %30, i32 0, i32 %476
  %487 = load float, float* %486, align 4, !tbaa !35, !noalias !37
  %488 = fcmp fast ogt float %485, %487
  %489 = select i1 %488, i32 %476, i32 %473
  %490 = select i1 %488, i32 %473, i32 %476
  %491 = getelementptr [4 x float], [4 x float]* %31, i32 0, i32 %482
  %492 = load float, float* %491, align 4, !tbaa !35, !noalias !42
  %493 = getelementptr [4 x float], [4 x float]* %31, i32 0, i32 %489
  %494 = load float, float* %493, align 4, !tbaa !35, !noalias !42
  %495 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %11, %dx.types.Handle %13, float %55, float %56, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %496 = extractvalue %dx.types.ResRet.f32 %495, 0
  %497 = extractvalue %dx.types.ResRet.f32 %495, 2
  %498 = extractvalue %dx.types.ResRet.f32 %495, 3
  %499 = fsub fast float %385, %496
  %500 = call float @dx.op.unary.f32(i32 6, float %499)  ; FAbs(value)
  %501 = fsub fast float %377, %497
  %502 = call float @dx.op.unary.f32(i32 6, float %501)  ; FAbs(value)
  %503 = fadd fast float %502, %500
  %504 = fsub fast float %498, %381
  %505 = call float @dx.op.unary.f32(i32 6, float %504)  ; FAbs(value)
  %506 = fmul fast float %505, 0x3FF6A09E60000000
  %507 = fadd fast float %503, %506
  %508 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?gtaoQuadDiscontinuity@@3PAMA", i32 0, i32 %18
  store float %507, float addrspace(3)* %508, align 4, !tbaa !35, !noalias !42
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %509 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?gtaoQuadDiscontinuity@@3PAMA", i32 0, i32 %207
  %510 = load float, float addrspace(3)* %509, align 4, !tbaa !35, !noalias !42
  %511 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?gtaoQuadDiscontinuity@@3PAMA", i32 0, i32 %218
  %512 = load float, float addrspace(3)* %511, align 4, !tbaa !35, !noalias !42
  %513 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?gtaoQuadDiscontinuity@@3PAMA", i32 0, i32 %229
  %514 = load float, float addrspace(3)* %513, align 4, !tbaa !35, !noalias !42
  %515 = fsub fast float %510, %507
  %516 = call float @dx.op.unary.f32(i32 6, float %515)  ; FAbs(value)
  %517 = fsub fast float %512, %507
  %518 = call float @dx.op.unary.f32(i32 6, float %517)  ; FAbs(value)
  %519 = fadd fast float %518, %516
  %520 = fsub fast float %514, %507
  %521 = call float @dx.op.unary.f32(i32 6, float %520)  ; FAbs(value)
  %522 = fadd fast float %519, %521
  store float %522, float addrspace(3)* %508, align 4, !tbaa !35, !noalias !42
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %523 = fcmp fast olt float %494, 0.000000e+00
  %524 = zext i1 %523 to i32
  %525 = icmp eq i32 %18, 0
  br i1 %525, label %526, label %527, !dx.controlflow.hints !43

; <label>:526                                     ; preds = %355
  store i32 0, i32 addrspace(3)* @"\01?gtaoQuadMaxUint@@3IA", align 4, !tbaa !31, !noalias !42
  br label %527

; <label>:527                                     ; preds = %526, %355
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %528 = atomicrmw umax i32 addrspace(3)* @"\01?gtaoQuadMaxUint@@3IA", i32 %524 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %529 = load i32, i32 addrspace(3)* @"\01?gtaoQuadMaxUint@@3IA", align 4, !tbaa !31, !noalias !42
  %530 = icmp ne i32 %529, 0
  %531 = select i1 %530, i32 2, i32 1
  %532 = fmul fast float %396, %55
  %533 = fmul fast float %397, %56
  %534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %535 = extractvalue %dx.types.CBufRet.f32 %534, 2
  %536 = fmul fast float %535, 0x3FE3C6EF40000000
  %537 = frem fast float %532, 2.560000e+02
  %538 = frem fast float %533, 2.560000e+02
  %539 = fptoui float %537 to i32
  %540 = fptoui float %538 to i32
  %541 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %539, i32 %540, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %542 = extractvalue %dx.types.ResRet.f32 %541, 0
  %543 = extractvalue %dx.types.ResRet.f32 %541, 1
  %544 = extractvalue %dx.types.ResRet.f32 %541, 2
  %545 = extractvalue %dx.types.ResRet.f32 %541, 3
  %546 = fadd fast float %542, %536
  %547 = fadd fast float %543, %536
  %548 = fadd fast float %544, %536
  %549 = fadd fast float %545, %536
  %550 = call float @dx.op.unary.f32(i32 22, float %546)  ; Frc(value)
  %551 = call float @dx.op.unary.f32(i32 22, float %547)  ; Frc(value)
  %552 = call float @dx.op.unary.f32(i32 22, float %548)  ; Frc(value)
  %553 = call float @dx.op.unary.f32(i32 22, float %549)  ; Frc(value)
  %554 = fadd fast float %457, %55
  %555 = fadd fast float %458, %56
  %556 = fmul fast float %554, %396
  %557 = fmul fast float %555, %397
  %558 = frem fast float %556, 2.560000e+02
  %559 = frem fast float %557, 2.560000e+02
  %560 = fptoui float %558 to i32
  %561 = fptoui float %559 to i32
  %562 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %560, i32 %561, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %563 = extractvalue %dx.types.ResRet.f32 %562, 0
  %564 = extractvalue %dx.types.ResRet.f32 %562, 1
  %565 = extractvalue %dx.types.ResRet.f32 %562, 2
  %566 = extractvalue %dx.types.ResRet.f32 %562, 3
  %567 = fadd fast float %563, %536
  %568 = fadd fast float %564, %536
  %569 = fadd fast float %565, %536
  %570 = fadd fast float %566, %536
  %571 = call float @dx.op.unary.f32(i32 22, float %567)  ; Frc(value)
  %572 = call float @dx.op.unary.f32(i32 22, float %568)  ; Frc(value)
  %573 = call float @dx.op.unary.f32(i32 22, float %569)  ; Frc(value)
  %574 = call float @dx.op.unary.f32(i32 22, float %570)  ; Frc(value)
  %575 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 0
  store float %389, float* %575, align 4
  %576 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 1
  store float %385, float* %576, align 4
  %577 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 2
  store float %377, float* %577, align 4
  %578 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 3
  store float %381, float* %578, align 4
  %579 = getelementptr [4 x float], [4 x float]* %29, i32 0, i32 %482
  %580 = load float, float* %579, align 4, !tbaa !35, !noalias !44
  %581 = and i32 %482, 1
  %582 = uitofp i32 %581 to float
  %583 = fadd fast float %582, 5.000000e-01
  %584 = lshr i32 %482, 1
  %585 = uitofp i32 %584 to float
  %586 = fadd fast float %585, 5.000000e-01
  %587 = fmul fast float %583, %457
  %588 = fmul fast float %586, %458
  %589 = fadd fast float %587, %55
  %590 = fadd fast float %588, %56
  %591 = fcmp fast olt float %580, 6.550000e+04
  br i1 %591, label %592, label %999, !dx.controlflow.hints !48

; <label>:592                                     ; preds = %527
  %593 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 0
  store i32 %419, i32* %593, align 4
  %594 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 1
  store i32 %451, i32* %594, align 4
  %595 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 2
  store i32 %431, i32* %595, align 4
  %596 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 3
  store i32 %442, i32* %596, align 4
  %597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 99)  ; CBufferLoadLegacy(handle,regIndex)
  %598 = extractvalue %dx.types.CBufRet.f32 %597, 0
  %599 = extractvalue %dx.types.CBufRet.f32 %597, 1
  %600 = extractvalue %dx.types.CBufRet.f32 %597, 2
  %601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 100)  ; CBufferLoadLegacy(handle,regIndex)
  %602 = extractvalue %dx.types.CBufRet.f32 %601, 0
  %603 = extractvalue %dx.types.CBufRet.f32 %601, 1
  %604 = extractvalue %dx.types.CBufRet.f32 %601, 2
  %605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 101)  ; CBufferLoadLegacy(handle,regIndex)
  %606 = extractvalue %dx.types.CBufRet.f32 %605, 0
  %607 = extractvalue %dx.types.CBufRet.f32 %605, 1
  %608 = extractvalue %dx.types.CBufRet.f32 %605, 2
  %609 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %482
  %610 = load i32, i32* %609, align 4, !tbaa !31, !noalias !44
  %611 = lshr i32 %610, 8
  %612 = and i32 %610, 255
  %613 = and i32 %611, 255
  %614 = uitofp i32 %612 to float
  %615 = uitofp i32 %613 to float
  %616 = fmul fast float %614, 0x3F80101020000000
  %617 = fmul fast float %615, 0x3F80101020000000
  %618 = fadd fast float %616, -1.000000e+00
  %619 = fadd fast float %617, -1.000000e+00
  %620 = call float @dx.op.unary.f32(i32 6, float %618)  ; FAbs(value)
  %621 = fsub fast float 1.000000e+00, %620
  %622 = call float @dx.op.unary.f32(i32 6, float %619)  ; FAbs(value)
  %623 = fsub fast float %621, %622
  %624 = fsub fast float -0.000000e+00, %623
  %625 = call float @dx.op.binary.f32(i32 35, float %624, float 0.000000e+00)  ; FMax(a,b)
  %626 = fcmp fast ogt float %618, 0.000000e+00
  %627 = fsub fast float -0.000000e+00, %625
  %628 = select i1 %626, float %627, float %625
  %629 = fadd fast float %628, %618
  %630 = fcmp fast ogt float %619, 0.000000e+00
  %631 = select i1 %630, float %627, float %625
  %632 = fadd fast float %631, %619
  %633 = call float @dx.op.dot3.f32(i32 55, float %629, float %632, float %623, float %629, float %632, float %623)  ; Dot3(ax,ay,az,bx,by,bz)
  %634 = call float @dx.op.unary.f32(i32 25, float %633)  ; Rsqrt(value)
  %635 = fmul fast float %629, %634
  %636 = fmul fast float %632, %634
  %637 = fmul fast float %634, %623
  %638 = fmul fast float %635, %598
  %639 = call float @dx.op.tertiary.f32(i32 46, float %636, float %599, float %638)  ; FMad(a,b,c)
  %640 = call float @dx.op.tertiary.f32(i32 46, float %637, float %600, float %639)  ; FMad(a,b,c)
  %641 = fmul fast float %635, %602
  %642 = call float @dx.op.tertiary.f32(i32 46, float %636, float %603, float %641)  ; FMad(a,b,c)
  %643 = call float @dx.op.tertiary.f32(i32 46, float %637, float %604, float %642)  ; FMad(a,b,c)
  %644 = fmul fast float %635, %606
  %645 = call float @dx.op.tertiary.f32(i32 46, float %636, float %607, float %644)  ; FMad(a,b,c)
  %646 = call float @dx.op.tertiary.f32(i32 46, float %637, float %608, float %645)  ; FMad(a,b,c)
  %647 = ashr i32 %38, 1
  %648 = call float @dx.op.unary.f32(i32 6, float %580)  ; FAbs(value)
  %649 = fmul fast float %457, %42
  %650 = fmul fast float %458, %43
  %651 = fmul fast float %648, %455
  %652 = fmul fast float %456, %648
  %653 = fsub fast float -0.000000e+00, %652
  %654 = fdiv fast float 5.000000e+01, %651
  %655 = fdiv fast float 5.000000e+01, %653
  %656 = call float @dx.op.binary.f32(i32 36, float %649, float %654)  ; FMin(a,b)
  %657 = call float @dx.op.binary.f32(i32 36, float %650, float %655)  ; FMin(a,b)
  %658 = fmul fast float %589, %453
  %659 = fmul fast float %590, %454
  %660 = fsub fast float %658, %455
  %661 = fsub fast float %659, %456
  %662 = fmul fast float %648, %660
  %663 = fmul fast float %648, %661
  %664 = fsub fast float -0.000000e+00, %662
  %665 = fsub fast float -0.000000e+00, %663
  %666 = fsub fast float -0.000000e+00, %648
  %667 = call float @dx.op.dot3.f32(i32 55, float %664, float %665, float %666, float %664, float %665, float %666)  ; Dot3(ax,ay,az,bx,by,bz)
  %668 = call float @dx.op.unary.f32(i32 25, float %667)  ; Rsqrt(value)
  %669 = fmul fast float %668, %664
  %670 = fmul fast float %668, %665
  %671 = fmul fast float %668, %666
  %672 = fmul fast float %648, 0x3FEFEB8520000000
  %673 = fmul fast float %656, %47
  %674 = fmul fast float %657, %48
  %675 = fmul fast float %673, %673
  %676 = fmul fast float %674, %674
  %677 = fadd fast float %676, %675
  %678 = call float @dx.op.unary.f32(i32 24, float %677)  ; Sqrt(value)
  %679 = fmul fast float %678, 3.125000e-02
  %680 = icmp sgt i32 %37, 0
  br i1 %680, label %681, label %995

; <label>:681                                     ; preds = %592
  br label %682

; <label>:682                                     ; preds = %884, %681
  %683 = phi float [ %987, %884 ], [ 0.000000e+00, %681 ]
  %684 = phi float [ %991, %884 ], [ 0.000000e+00, %681 ]
  %685 = phi i32 [ %992, %884 ], [ 0, %681 ]
  %686 = sitofp i32 %37 to float
  %687 = fdiv fast float 0x400921FB60000000, %686
  %688 = sitofp i32 %685 to float
  %689 = fadd fast float %688, %550
  %690 = fmul fast float %687, %689
  %691 = call float @dx.op.unary.f32(i32 12, float %690)  ; Cos(value)
  %692 = call float @dx.op.unary.f32(i32 13, float %690)  ; Sin(value)
  %693 = fsub fast float -0.000000e+00, %692
  %694 = call float @dx.op.dot3.f32(i32 55, float %669, float %670, float %671, float %640, float %643, float %646)  ; Dot3(ax,ay,az,bx,by,bz)
  %695 = call float @dx.op.unary.f32(i32 6, float %694)  ; FAbs(value)
  %696 = call float @dx.op.unary.f32(i32 6, float %695)  ; FAbs(value)
  %697 = fcmp fast ogt float %696, 0x3EB0C6F7A0000000
  %698 = call float @dx.op.dot3.f32(i32 55, float %691, float %693, float 0.000000e+00, float %640, float %643, float %646)  ; Dot3(ax,ay,az,bx,by,bz)
  %699 = fsub fast float -0.000000e+00, %698
  %700 = fdiv fast float %699, %695
  %701 = select i1 %697, float %700, float 0.000000e+00
  %702 = fmul fast float %701, %701
  %703 = fadd fast float %702, 1.000000e+00
  %704 = call float @dx.op.unary.f32(i32 25, float %703)  ; Rsqrt(value)
  %705 = fmul fast float %701, %704
  %706 = fsub fast float -0.000000e+00, %705
  %707 = icmp sgt i32 %647, 0
  br i1 %707, label %708, label %795

; <label>:708                                     ; preds = %682
  br label %709

; <label>:709                                     ; preds = %709, %708
  %710 = phi float [ %791, %709 ], [ %705, %708 ]
  %711 = phi float [ %777, %709 ], [ 2.000000e+02, %708 ]
  %712 = phi i32 [ %792, %709 ], [ 0, %708 ]
  %713 = sitofp i32 %647 to float
  %714 = fdiv fast float 1.000000e+00, %713
  %715 = sitofp i32 %712 to float
  %716 = fadd fast float %715, %571
  %717 = fmul fast float %716, %714
  %718 = fmul fast float %717, %717
  %719 = fmul fast float %718, %679
  %720 = call float @dx.op.binary.f32(i32 36, float %719, float 3.000000e+00)  ; FMin(a,b)
  %721 = fadd fast float %720, 1.000000e+00
  %722 = fmul fast float %718, %656
  %723 = fmul fast float %718, %657
  %724 = fadd fast float %722, %51
  %725 = fmul fast float %724, %691
  %726 = fadd fast float %725, %589
  %727 = fadd fast float %723, %52
  %728 = fmul fast float %727, %692
  %729 = fadd fast float %728, %590
  %730 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %13, float %726, float %729, float undef, float undef, i32 0, i32 0, i32 undef, float %721)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %731 = extractvalue %dx.types.ResRet.f32 %730, 0
  %732 = fcmp fast ogt float %731, -1.000000e+00
  %733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %734 = extractvalue %dx.types.CBufRet.f32 %733, 1
  %735 = select i1 %732, float %734, float 1.000000e+00
  %736 = fadd fast float %731, 1.000000e+00
  %737 = fmul fast float %735, %736
  %738 = call float @dx.op.unary.f32(i32 6, float %737)  ; FAbs(value)
  %739 = fmul fast float %726, %453
  %740 = fmul fast float %729, %454
  %741 = fsub fast float %739, %455
  %742 = fsub fast float %740, %456
  %743 = fmul fast float %741, %738
  %744 = fmul fast float %742, %738
  %745 = fsub fast float %743, %662
  %746 = fsub fast float %744, %663
  %747 = fsub fast float %738, %672
  %748 = call float @dx.op.dot3.f32(i32 55, float %745, float %746, float %747, float %745, float %746, float %747)  ; Dot3(ax,ay,az,bx,by,bz)
  %749 = call float @dx.op.dot3.f32(i32 55, float %745, float %746, float %747, float %640, float %643, float %646)  ; Dot3(ax,ay,az,bx,by,bz)
  %750 = fsub fast float -0.000000e+00, %749
  %751 = call float @dx.op.dot3.f32(i32 55, float %745, float %746, float %747, float %669, float %670, float %671)  ; Dot3(ax,ay,az,bx,by,bz)
  %752 = call float @dx.op.unary.f32(i32 25, float %748)  ; Rsqrt(value)
  %753 = fmul fast float %752, %751
  %754 = bitcast float %748 to i32
  %755 = ashr i32 %754, 1
  %756 = add nsw i32 %755, 532487669
  %757 = bitcast i32 %756 to float
  %758 = fmul fast float %757, 0x3F947AE140000000
  %759 = fsub fast float 2.000000e+00, %758
  %760 = call float @dx.op.unary.f32(i32 7, float %759)  ; Saturate(value)
  %761 = fmul fast float %757, 0x3F7B4E81C0000000
  %762 = fsub fast float 0x3FF5555560000000, %761
  %763 = call float @dx.op.unary.f32(i32 7, float %762)  ; Saturate(value)
  %764 = fmul fast float %738, 0x3F947AE140000000
  %765 = fadd fast float %764, -1.000000e+00
  %766 = call float @dx.op.unary.f32(i32 7, float %765)  ; Saturate(value)
  %767 = fsub fast float %763, %760
  %768 = fmul fast float %766, %767
  %769 = fadd fast float %768, %760
  %770 = fmul fast float %737, %580
  %771 = fcmp fast ogt float %770, 0.000000e+00
  %772 = select i1 %771, float %769, float 0.000000e+00
  %773 = fadd fast float %753, 1.000000e+00
  %774 = fmul fast float %772, %773
  %775 = fadd fast float %774, -1.000000e+00
  %776 = fcmp fast ogt float %775, %710
  %777 = select i1 %776, float %750, float %711
  %778 = fsub fast float %750, %777
  %779 = fmul fast float %778, 0x3FB9999940000000
  %780 = fadd fast float %779, 0xBFDFFFFF80000000
  %781 = call float @dx.op.unary.f32(i32 7, float %780)  ; Saturate(value)
  %782 = fmul fast float %749, 0x3FC99999E0000000
  %783 = fadd fast float %782, 0x3FF0000020000000
  %784 = call float @dx.op.unary.f32(i32 7, float %783)  ; Saturate(value)
  %785 = sitofp i32 %38 to float
  %786 = fdiv fast float 8.000000e+00, %785
  %787 = fmul fast float %784, %781
  %788 = fmul fast float %787, %786
  %789 = fsub fast float %710, %788
  %790 = fcmp ole float %775, %789
  %791 = select i1 %790, float %789, float %775
  %792 = add nuw nsw i32 %712, 1
  %793 = icmp eq i32 %792, %647
  br i1 %793, label %794, label %709

; <label>:794                                     ; preds = %709
  br label %795

; <label>:795                                     ; preds = %794, %682
  %796 = phi float [ %705, %682 ], [ %791, %794 ]
  br i1 %707, label %797, label %884

; <label>:797                                     ; preds = %795
  br label %798

; <label>:798                                     ; preds = %798, %797
  %799 = phi float [ %880, %798 ], [ %706, %797 ]
  %800 = phi float [ %866, %798 ], [ 2.000000e+02, %797 ]
  %801 = phi i32 [ %881, %798 ], [ 0, %797 ]
  %802 = sitofp i32 %647 to float
  %803 = fdiv fast float 1.000000e+00, %802
  %804 = sitofp i32 %801 to float
  %805 = fadd fast float %804, %571
  %806 = fmul fast float %805, %803
  %807 = fmul fast float %806, %806
  %808 = fmul fast float %807, %679
  %809 = call float @dx.op.binary.f32(i32 36, float %808, float 3.000000e+00)  ; FMin(a,b)
  %810 = fadd fast float %809, 1.000000e+00
  %811 = fmul fast float %807, %656
  %812 = fmul fast float %807, %657
  %813 = fadd fast float %811, %51
  %814 = fmul fast float %691, %813
  %815 = fsub fast float %589, %814
  %816 = fadd fast float %812, %52
  %817 = fmul fast float %692, %816
  %818 = fsub fast float %590, %817
  %819 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %13, float %815, float %818, float undef, float undef, i32 0, i32 0, i32 undef, float %810)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %820 = extractvalue %dx.types.ResRet.f32 %819, 0
  %821 = fcmp fast ogt float %820, -1.000000e+00
  %822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %823 = extractvalue %dx.types.CBufRet.f32 %822, 1
  %824 = select i1 %821, float %823, float 1.000000e+00
  %825 = fadd fast float %820, 1.000000e+00
  %826 = fmul fast float %824, %825
  %827 = call float @dx.op.unary.f32(i32 6, float %826)  ; FAbs(value)
  %828 = fmul fast float %815, %453
  %829 = fmul fast float %818, %454
  %830 = fsub fast float %828, %455
  %831 = fsub fast float %829, %456
  %832 = fmul fast float %830, %827
  %833 = fmul fast float %831, %827
  %834 = fsub fast float %832, %662
  %835 = fsub fast float %833, %663
  %836 = fsub fast float %827, %672
  %837 = call float @dx.op.dot3.f32(i32 55, float %834, float %835, float %836, float %834, float %835, float %836)  ; Dot3(ax,ay,az,bx,by,bz)
  %838 = call float @dx.op.dot3.f32(i32 55, float %834, float %835, float %836, float %640, float %643, float %646)  ; Dot3(ax,ay,az,bx,by,bz)
  %839 = fsub fast float -0.000000e+00, %838
  %840 = call float @dx.op.dot3.f32(i32 55, float %834, float %835, float %836, float %669, float %670, float %671)  ; Dot3(ax,ay,az,bx,by,bz)
  %841 = call float @dx.op.unary.f32(i32 25, float %837)  ; Rsqrt(value)
  %842 = fmul fast float %841, %840
  %843 = bitcast float %837 to i32
  %844 = ashr i32 %843, 1
  %845 = add nsw i32 %844, 532487669
  %846 = bitcast i32 %845 to float
  %847 = fmul fast float %846, 0x3F947AE140000000
  %848 = fsub fast float 2.000000e+00, %847
  %849 = call float @dx.op.unary.f32(i32 7, float %848)  ; Saturate(value)
  %850 = fmul fast float %846, 0x3F7B4E81C0000000
  %851 = fsub fast float 0x3FF5555560000000, %850
  %852 = call float @dx.op.unary.f32(i32 7, float %851)  ; Saturate(value)
  %853 = fmul fast float %827, 0x3F947AE140000000
  %854 = fadd fast float %853, -1.000000e+00
  %855 = call float @dx.op.unary.f32(i32 7, float %854)  ; Saturate(value)
  %856 = fsub fast float %852, %849
  %857 = fmul fast float %855, %856
  %858 = fadd fast float %857, %849
  %859 = fmul fast float %826, %580
  %860 = fcmp fast ogt float %859, 0.000000e+00
  %861 = select i1 %860, float %858, float 0.000000e+00
  %862 = fadd fast float %842, 1.000000e+00
  %863 = fmul fast float %861, %862
  %864 = fadd fast float %863, -1.000000e+00
  %865 = fcmp fast ogt float %864, %799
  %866 = select i1 %865, float %839, float %800
  %867 = fsub fast float %839, %866
  %868 = fmul fast float %867, 0x3FB9999940000000
  %869 = fadd fast float %868, 0xBFDFFFFF80000000
  %870 = call float @dx.op.unary.f32(i32 7, float %869)  ; Saturate(value)
  %871 = fmul fast float %838, 0x3FC99999E0000000
  %872 = fadd fast float %871, 0x3FF0000020000000
  %873 = call float @dx.op.unary.f32(i32 7, float %872)  ; Saturate(value)
  %874 = sitofp i32 %38 to float
  %875 = fdiv fast float 8.000000e+00, %874
  %876 = fmul fast float %873, %870
  %877 = fmul fast float %876, %875
  %878 = fsub fast float %799, %877
  %879 = fcmp ole float %864, %878
  %880 = select i1 %879, float %878, float %864
  %881 = add nuw nsw i32 %801, 1
  %882 = icmp eq i32 %881, %647
  br i1 %882, label %883, label %798

; <label>:883                                     ; preds = %798
  br label %884

; <label>:884                                     ; preds = %883, %795
  %885 = phi float [ %706, %795 ], [ %880, %883 ]
  %886 = fmul fast float %671, %693
  %887 = fmul fast float %671, %691
  %888 = fsub fast float -0.000000e+00, %887
  %889 = fmul fast float %691, %670
  %890 = fmul fast float %669, %693
  %891 = fsub fast float %889, %890
  %892 = call float @dx.op.dot3.f32(i32 55, float %640, float %643, float %646, float %886, float %888, float %891)  ; Dot3(ax,ay,az,bx,by,bz)
  %893 = fmul fast float %892, %886
  %894 = fmul fast float %892, %888
  %895 = fmul fast float %892, %891
  %896 = fsub fast float %640, %893
  %897 = fsub fast float %643, %894
  %898 = fsub fast float %646, %895
  %899 = fmul fast float %896, %896
  %900 = fmul fast float %897, %897
  %901 = fadd fast float %899, %900
  %902 = fmul fast float %898, %898
  %903 = fadd fast float %901, %902
  %904 = call float @dx.op.unary.f32(i32 24, float %903)  ; Sqrt(value)
  %905 = call float @dx.op.dot3.f32(i32 55, float %691, float %693, float 0.000000e+00, float %896, float %897, float %898)  ; Dot3(ax,ay,az,bx,by,bz)
  %906 = call float @dx.op.dot3.f32(i32 55, float %691, float %693, float 0.000000e+00, float %669, float %670, float %671)  ; Dot3(ax,ay,az,bx,by,bz)
  %907 = fmul fast float %906, %669
  %908 = fmul fast float %906, %670
  %909 = fmul fast float %906, %671
  %910 = call float @dx.op.dot3.f32(i32 55, float %907, float %908, float %909, float %896, float %897, float %898)  ; Dot3(ax,ay,az,bx,by,bz)
  %911 = fcmp fast oge float %905, %910
  %912 = fdiv fast float 1.000000e+00, %904
  %913 = call float @dx.op.dot3.f32(i32 55, float %896, float %897, float %898, float %669, float %670, float %671)  ; Dot3(ax,ay,az,bx,by,bz)
  %914 = fmul fast float %913, %912
  %915 = call float @dx.op.unary.f32(i32 7, float %914)  ; Saturate(value)
  %916 = fmul fast float %915, %915
  %917 = fsub fast float 1.000000e+00, %916
  %918 = bitcast float %917 to i32
  %919 = ashr i32 %918, 1
  %920 = add nsw i32 %919, 532487669
  %921 = bitcast i32 %920 to float
  %922 = call float @dx.op.unary.f32(i32 6, float %915)  ; FAbs(value)
  %923 = fmul fast float %922, 0x3FC40AE960000000
  %924 = fsub fast float 0x3FF921FB60000000, %923
  %925 = fsub fast float 1.000000e+00, %922
  %926 = bitcast float %925 to i32
  %927 = ashr i32 %926, 1
  %928 = add nsw i32 %927, 532487669
  %929 = bitcast i32 %928 to float
  %930 = fmul fast float %929, %924
  %931 = fcmp fast oge float %915, 0.000000e+00
  %932 = fsub fast float 0x400921FB60000000, %930
  %933 = select i1 %931, float %930, float %932
  %934 = fsub fast float -0.000000e+00, %921
  %935 = select i1 %911, float %934, float %921
  %936 = fsub fast float -0.000000e+00, %933
  %937 = select i1 %911, float %936, float %933
  %938 = call float @dx.op.unary.f32(i32 6, float %796)  ; FAbs(value)
  %939 = fmul fast float %938, 0x3FC40AE960000000
  %940 = fsub fast float 0x3FF921FB60000000, %939
  %941 = fsub fast float 1.000000e+00, %938
  %942 = bitcast float %941 to i32
  %943 = ashr i32 %942, 1
  %944 = add nsw i32 %943, 532487669
  %945 = bitcast i32 %944 to float
  %946 = fmul fast float %945, %940
  %947 = fcmp fast oge float %796, 0.000000e+00
  %948 = fsub fast float 0x400921FB60000000, %946
  %949 = select i1 %947, float %946, float %948
  %950 = call float @dx.op.unary.f32(i32 6, float %885)  ; FAbs(value)
  %951 = fmul fast float %950, 0x3FC40AE960000000
  %952 = fsub fast float 0x3FF921FB60000000, %951
  %953 = fsub fast float 1.000000e+00, %950
  %954 = bitcast float %953 to i32
  %955 = ashr i32 %954, 1
  %956 = add nsw i32 %955, 532487669
  %957 = bitcast i32 %956 to float
  %958 = fmul fast float %957, %952
  %959 = fcmp fast oge float %885, 0.000000e+00
  %960 = fsub fast float 0x400921FB60000000, %958
  %961 = select i1 %959, float %958, float %960
  %962 = fsub fast float -0.000000e+00, %937
  %963 = fsub fast float %962, %949
  %964 = call float @dx.op.binary.f32(i32 35, float %963, float 0xBFF921FB60000000)  ; FMax(a,b)
  %965 = call float @dx.op.binary.f32(i32 36, float %964, float 0x3FF921FB60000000)  ; FMin(a,b)
  %966 = fadd fast float %937, %965
  %967 = fsub fast float %961, %937
  %968 = call float @dx.op.binary.f32(i32 35, float %967, float 0xBFF921FB60000000)  ; FMax(a,b)
  %969 = call float @dx.op.binary.f32(i32 36, float %968, float 0x3FF921FB60000000)  ; FMin(a,b)
  %970 = fadd fast float %937, %969
  %971 = fmul fast float %966, 2.000000e+00
  %972 = fsub fast float %971, %937
  %973 = call float @dx.op.unary.f32(i32 12, float %972)  ; Cos(value)
  %974 = fsub fast float -0.000000e+00, %973
  %975 = fmul fast float %970, 2.000000e+00
  %976 = fsub fast float %975, %937
  %977 = call float @dx.op.unary.f32(i32 12, float %976)  ; Cos(value)
  %978 = fmul fast float %915, 2.000000e+00
  %979 = fadd fast float %970, %966
  %980 = fmul fast float %935, %979
  %981 = fmul fast float %980, 2.000000e+00
  %982 = fsub fast float %974, %977
  %983 = fadd fast float %982, %978
  %984 = fadd fast float %983, %981
  %985 = fmul fast float %904, 2.500000e-01
  %986 = fmul fast float %985, %984
  %987 = fadd fast float %986, %683
  %988 = fmul fast float %937, %935
  %989 = fadd fast float %988, %915
  %990 = fmul fast float %989, %904
  %991 = fadd fast float %990, %684
  %992 = add nuw nsw i32 %685, 1
  %993 = icmp eq i32 %992, %37
  br i1 %993, label %994, label %682

; <label>:994                                     ; preds = %884
  br label %995

; <label>:995                                     ; preds = %994, %592
  %996 = phi float [ 0.000000e+00, %592 ], [ %987, %994 ]
  %997 = phi float [ 0.000000e+00, %592 ], [ %991, %994 ]
  %998 = fdiv fast float %996, %997
  br label %999

; <label>:999                                     ; preds = %995, %527
  %1000 = phi float [ %998, %995 ], [ 1.000000e+00, %527 ]
  %1001 = fmul fast float %1000, %1000
  store float %1000, float addrspace(3)* %202, align 4
  store float %1001, float addrspace(3)* %205, align 4
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1002 = load float, float addrspace(3)* %210, align 4
  %1003 = load float, float addrspace(3)* %214, align 4
  %1004 = fadd fast float %1002, %1000
  %1005 = fadd fast float %1003, %1001
  %1006 = load float, float addrspace(3)* %221, align 4
  %1007 = load float, float addrspace(3)* %225, align 4
  %1008 = fadd fast float %1004, %1006
  %1009 = fadd fast float %1005, %1007
  %1010 = load float, float addrspace(3)* %232, align 4
  %1011 = load float, float addrspace(3)* %236, align 4
  %1012 = fadd fast float %1008, %1010
  %1013 = fadd fast float %1009, %1011
  store float %1012, float addrspace(3)* %202, align 4
  store float %1013, float addrspace(3)* %205, align 4
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1014 = load float, float addrspace(3)* %243, align 4
  %1015 = mul i32 %240, 2
  %1016 = add i32 1, %1015
  %1017 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %1016
  %1018 = load float, float addrspace(3)* %1017, align 4
  %1019 = fadd fast float %1014, %1012
  %1020 = fadd fast float %1018, %1013
  %1021 = load float, float addrspace(3)* %249, align 4
  %1022 = mul i32 %246, 2
  %1023 = add i32 1, %1022
  %1024 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %1023
  %1025 = load float, float addrspace(3)* %1024, align 4
  %1026 = fadd fast float %1019, %1021
  %1027 = fadd fast float %1020, %1025
  %1028 = load float, float addrspace(3)* %255, align 4
  %1029 = mul i32 %252, 2
  %1030 = add i32 1, %1029
  %1031 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %1030
  %1032 = load float, float addrspace(3)* %1031, align 4
  %1033 = fadd fast float %1026, %1028
  %1034 = fadd fast float %1027, %1032
  %1035 = fmul fast float %1033, 6.250000e-02
  %1036 = fmul fast float %1034, 6.250000e-02
  %1037 = fmul fast float %1035, %1035
  %1038 = fsub fast float %1036, %1037
  %1039 = call float @dx.op.binary.f32(i32 35, float %1035, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %1040 = fdiv fast float %1038, %1039
  %1041 = fmul fast float %1040, 6.553500e+04
  %1042 = fptoui float %1041 to i32
  br i1 %525, label %1043, label %1044, !dx.controlflow.hints !43

; <label>:1043                                    ; preds = %999
  store i32 0, i32 addrspace(3)* @"\01?gtaoQuadMaxUint@@3IA", align 4, !tbaa !31, !noalias !42
  br label %1044

; <label>:1044                                    ; preds = %1043, %999
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1045 = atomicrmw umax i32 addrspace(3)* @"\01?gtaoQuadMaxUint@@3IA", i32 %1042 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1046 = load i32, i32 addrspace(3)* @"\01?gtaoQuadMaxUint@@3IA", align 4, !tbaa !31, !noalias !42
  %1047 = uitofp i32 %1046 to float
  %1048 = fmul fast float %1047, 0x3EF0001000000000
  %1049 = fcmp fast ogt float %1048, 0x3FA1EB8520000000
  %1050 = select i1 %1049, i32 2, i32 1
  %1051 = fcmp fast ogt float %1048, 0x3FD3333340000000
  %1052 = zext i1 %1051 to i32
  %1053 = add nuw nsw i32 %1050, %1052
  %1054 = fcmp fast ogt float %1048, 0x3FE99999A0000000
  %1055 = zext i1 %1054 to i32
  %1056 = add nuw nsw i32 %1053, %1055
  %1057 = call i32 @dx.op.binary.i32(i32 39, i32 %1056, i32 %531)  ; UMax(a,b)
  %1058 = shl i32 %37, 1
  %1059 = sitofp i32 %37 to float
  %1060 = fptosi float %1059 to i32
  %1061 = call i32 @dx.op.binary.i32(i32 37, i32 %1060, i32 %37)  ; IMax(a,b)
  %1062 = call i32 @dx.op.binary.i32(i32 38, i32 %1061, i32 %1058)  ; IMin(a,b)
  %1063 = icmp ugt i32 %1057, 1
  br i1 %1063, label %1064, label %1489, !dx.controlflow.hints !49

; <label>:1064                                    ; preds = %1044
  %1065 = getelementptr inbounds [4 x float], [4 x float]* %27, i32 0, i32 0
  store float %389, float* %1065, align 4
  %1066 = getelementptr inbounds [4 x float], [4 x float]* %27, i32 0, i32 1
  store float %385, float* %1066, align 4
  %1067 = getelementptr inbounds [4 x float], [4 x float]* %27, i32 0, i32 2
  store float %377, float* %1067, align 4
  %1068 = getelementptr inbounds [4 x float], [4 x float]* %27, i32 0, i32 3
  store float %381, float* %1068, align 4
  %1069 = getelementptr [4 x float], [4 x float]* %27, i32 0, i32 %489
  %1070 = load float, float* %1069, align 4, !tbaa !35, !noalias !50
  %1071 = and i32 %489, 1
  %1072 = uitofp i32 %1071 to float
  %1073 = fadd fast float %1072, 5.000000e-01
  %1074 = lshr i32 %489, 1
  %1075 = uitofp i32 %1074 to float
  %1076 = fadd fast float %1075, 5.000000e-01
  %1077 = fmul fast float %1073, %457
  %1078 = fmul fast float %1076, %458
  %1079 = fadd fast float %1077, %55
  %1080 = fadd fast float %1078, %56
  %1081 = fcmp fast olt float %1070, 6.550000e+04
  br i1 %1081, label %1082, label %1489, !dx.controlflow.hints !48

; <label>:1082                                    ; preds = %1064
  %1083 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 0
  store i32 %419, i32* %1083, align 4
  %1084 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 1
  store i32 %451, i32* %1084, align 4
  %1085 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 2
  store i32 %431, i32* %1085, align 4
  %1086 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 3
  store i32 %442, i32* %1086, align 4
  %1087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 99)  ; CBufferLoadLegacy(handle,regIndex)
  %1088 = extractvalue %dx.types.CBufRet.f32 %1087, 0
  %1089 = extractvalue %dx.types.CBufRet.f32 %1087, 1
  %1090 = extractvalue %dx.types.CBufRet.f32 %1087, 2
  %1091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 100)  ; CBufferLoadLegacy(handle,regIndex)
  %1092 = extractvalue %dx.types.CBufRet.f32 %1091, 0
  %1093 = extractvalue %dx.types.CBufRet.f32 %1091, 1
  %1094 = extractvalue %dx.types.CBufRet.f32 %1091, 2
  %1095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 101)  ; CBufferLoadLegacy(handle,regIndex)
  %1096 = extractvalue %dx.types.CBufRet.f32 %1095, 0
  %1097 = extractvalue %dx.types.CBufRet.f32 %1095, 1
  %1098 = extractvalue %dx.types.CBufRet.f32 %1095, 2
  %1099 = getelementptr [4 x i32], [4 x i32]* %26, i32 0, i32 %489
  %1100 = load i32, i32* %1099, align 4, !tbaa !31, !noalias !50
  %1101 = lshr i32 %1100, 8
  %1102 = and i32 %1100, 255
  %1103 = and i32 %1101, 255
  %1104 = uitofp i32 %1102 to float
  %1105 = uitofp i32 %1103 to float
  %1106 = fmul fast float %1104, 0x3F80101020000000
  %1107 = fmul fast float %1105, 0x3F80101020000000
  %1108 = fadd fast float %1106, -1.000000e+00
  %1109 = fadd fast float %1107, -1.000000e+00
  %1110 = call float @dx.op.unary.f32(i32 6, float %1108)  ; FAbs(value)
  %1111 = fsub fast float 1.000000e+00, %1110
  %1112 = call float @dx.op.unary.f32(i32 6, float %1109)  ; FAbs(value)
  %1113 = fsub fast float %1111, %1112
  %1114 = fsub fast float -0.000000e+00, %1113
  %1115 = call float @dx.op.binary.f32(i32 35, float %1114, float 0.000000e+00)  ; FMax(a,b)
  %1116 = fcmp fast ogt float %1108, 0.000000e+00
  %1117 = fsub fast float -0.000000e+00, %1115
  %1118 = select i1 %1116, float %1117, float %1115
  %1119 = fadd fast float %1118, %1108
  %1120 = fcmp fast ogt float %1109, 0.000000e+00
  %1121 = select i1 %1120, float %1117, float %1115
  %1122 = fadd fast float %1121, %1109
  %1123 = call float @dx.op.dot3.f32(i32 55, float %1119, float %1122, float %1113, float %1119, float %1122, float %1113)  ; Dot3(ax,ay,az,bx,by,bz)
  %1124 = call float @dx.op.unary.f32(i32 25, float %1123)  ; Rsqrt(value)
  %1125 = fmul fast float %1119, %1124
  %1126 = fmul fast float %1122, %1124
  %1127 = fmul fast float %1124, %1113
  %1128 = fmul fast float %1125, %1088
  %1129 = call float @dx.op.tertiary.f32(i32 46, float %1126, float %1089, float %1128)  ; FMad(a,b,c)
  %1130 = call float @dx.op.tertiary.f32(i32 46, float %1127, float %1090, float %1129)  ; FMad(a,b,c)
  %1131 = fmul fast float %1125, %1092
  %1132 = call float @dx.op.tertiary.f32(i32 46, float %1126, float %1093, float %1131)  ; FMad(a,b,c)
  %1133 = call float @dx.op.tertiary.f32(i32 46, float %1127, float %1094, float %1132)  ; FMad(a,b,c)
  %1134 = fmul fast float %1125, %1096
  %1135 = call float @dx.op.tertiary.f32(i32 46, float %1126, float %1097, float %1134)  ; FMad(a,b,c)
  %1136 = call float @dx.op.tertiary.f32(i32 46, float %1127, float %1098, float %1135)  ; FMad(a,b,c)
  %1137 = ashr i32 %38, 1
  %1138 = call float @dx.op.unary.f32(i32 6, float %1070)  ; FAbs(value)
  %1139 = fmul fast float %457, %42
  %1140 = fmul fast float %458, %43
  %1141 = fmul fast float %1138, %455
  %1142 = fmul fast float %456, %1138
  %1143 = fsub fast float -0.000000e+00, %1142
  %1144 = fdiv fast float 5.000000e+01, %1141
  %1145 = fdiv fast float 5.000000e+01, %1143
  %1146 = call float @dx.op.binary.f32(i32 36, float %1139, float %1144)  ; FMin(a,b)
  %1147 = call float @dx.op.binary.f32(i32 36, float %1140, float %1145)  ; FMin(a,b)
  %1148 = fmul fast float %1079, %453
  %1149 = fmul fast float %1080, %454
  %1150 = fsub fast float %1148, %455
  %1151 = fsub fast float %1149, %456
  %1152 = fmul fast float %1138, %1150
  %1153 = fmul fast float %1138, %1151
  %1154 = fsub fast float -0.000000e+00, %1152
  %1155 = fsub fast float -0.000000e+00, %1153
  %1156 = fsub fast float -0.000000e+00, %1138
  %1157 = call float @dx.op.dot3.f32(i32 55, float %1154, float %1155, float %1156, float %1154, float %1155, float %1156)  ; Dot3(ax,ay,az,bx,by,bz)
  %1158 = call float @dx.op.unary.f32(i32 25, float %1157)  ; Rsqrt(value)
  %1159 = fmul fast float %1158, %1154
  %1160 = fmul fast float %1158, %1155
  %1161 = fmul fast float %1158, %1156
  %1162 = fmul fast float %1138, 0x3FEFEB8520000000
  %1163 = fmul fast float %1146, %47
  %1164 = fmul fast float %1147, %48
  %1165 = fmul fast float %1163, %1163
  %1166 = fmul fast float %1164, %1164
  %1167 = fadd fast float %1166, %1165
  %1168 = call float @dx.op.unary.f32(i32 24, float %1167)  ; Sqrt(value)
  %1169 = fmul fast float %1168, 3.125000e-02
  %1170 = icmp sgt i32 %1062, 0
  br i1 %1170, label %1171, label %1485

; <label>:1171                                    ; preds = %1082
  br label %1172

; <label>:1172                                    ; preds = %1374, %1171
  %1173 = phi float [ %1481, %1374 ], [ 0.000000e+00, %1171 ]
  %1174 = phi i32 [ %1482, %1374 ], [ 0, %1171 ]
  %1175 = phi float [ %1477, %1374 ], [ 0.000000e+00, %1171 ]
  %1176 = sitofp i32 %1062 to float
  %1177 = fdiv fast float 0x400921FB60000000, %1176
  %1178 = sitofp i32 %1174 to float
  %1179 = fadd fast float %1178, %551
  %1180 = fmul fast float %1177, %1179
  %1181 = call float @dx.op.unary.f32(i32 12, float %1180)  ; Cos(value)
  %1182 = call float @dx.op.unary.f32(i32 13, float %1180)  ; Sin(value)
  %1183 = fsub fast float -0.000000e+00, %1182
  %1184 = call float @dx.op.dot3.f32(i32 55, float %1159, float %1160, float %1161, float %1130, float %1133, float %1136)  ; Dot3(ax,ay,az,bx,by,bz)
  %1185 = call float @dx.op.unary.f32(i32 6, float %1184)  ; FAbs(value)
  %1186 = call float @dx.op.unary.f32(i32 6, float %1185)  ; FAbs(value)
  %1187 = fcmp fast ogt float %1186, 0x3EB0C6F7A0000000
  %1188 = call float @dx.op.dot3.f32(i32 55, float %1181, float %1183, float 0.000000e+00, float %1130, float %1133, float %1136)  ; Dot3(ax,ay,az,bx,by,bz)
  %1189 = fsub fast float -0.000000e+00, %1188
  %1190 = fdiv fast float %1189, %1185
  %1191 = select i1 %1187, float %1190, float 0.000000e+00
  %1192 = fmul fast float %1191, %1191
  %1193 = fadd fast float %1192, 1.000000e+00
  %1194 = call float @dx.op.unary.f32(i32 25, float %1193)  ; Rsqrt(value)
  %1195 = fmul fast float %1191, %1194
  %1196 = fsub fast float -0.000000e+00, %1195
  %1197 = icmp sgt i32 %1137, 0
  br i1 %1197, label %1198, label %1285

; <label>:1198                                    ; preds = %1172
  br label %1199

; <label>:1199                                    ; preds = %1199, %1198
  %1200 = phi float [ %1281, %1199 ], [ %1195, %1198 ]
  %1201 = phi float [ %1267, %1199 ], [ 2.000000e+02, %1198 ]
  %1202 = phi i32 [ %1282, %1199 ], [ 0, %1198 ]
  %1203 = sitofp i32 %1137 to float
  %1204 = fdiv fast float 1.000000e+00, %1203
  %1205 = sitofp i32 %1202 to float
  %1206 = fadd fast float %1205, %572
  %1207 = fmul fast float %1206, %1204
  %1208 = fmul fast float %1207, %1207
  %1209 = fmul fast float %1208, %1169
  %1210 = call float @dx.op.binary.f32(i32 36, float %1209, float 3.000000e+00)  ; FMin(a,b)
  %1211 = fadd fast float %1210, 1.000000e+00
  %1212 = fmul fast float %1208, %1146
  %1213 = fmul fast float %1208, %1147
  %1214 = fadd fast float %1212, %51
  %1215 = fmul fast float %1214, %1181
  %1216 = fadd fast float %1215, %1079
  %1217 = fadd fast float %1213, %52
  %1218 = fmul fast float %1217, %1182
  %1219 = fadd fast float %1218, %1080
  %1220 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %13, float %1216, float %1219, float undef, float undef, i32 0, i32 0, i32 undef, float %1211)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1221 = extractvalue %dx.types.ResRet.f32 %1220, 0
  %1222 = fcmp fast ogt float %1221, -1.000000e+00
  %1223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1224 = extractvalue %dx.types.CBufRet.f32 %1223, 1
  %1225 = select i1 %1222, float %1224, float 1.000000e+00
  %1226 = fadd fast float %1221, 1.000000e+00
  %1227 = fmul fast float %1225, %1226
  %1228 = call float @dx.op.unary.f32(i32 6, float %1227)  ; FAbs(value)
  %1229 = fmul fast float %1216, %453
  %1230 = fmul fast float %1219, %454
  %1231 = fsub fast float %1229, %455
  %1232 = fsub fast float %1230, %456
  %1233 = fmul fast float %1231, %1228
  %1234 = fmul fast float %1232, %1228
  %1235 = fsub fast float %1233, %1152
  %1236 = fsub fast float %1234, %1153
  %1237 = fsub fast float %1228, %1162
  %1238 = call float @dx.op.dot3.f32(i32 55, float %1235, float %1236, float %1237, float %1235, float %1236, float %1237)  ; Dot3(ax,ay,az,bx,by,bz)
  %1239 = call float @dx.op.dot3.f32(i32 55, float %1235, float %1236, float %1237, float %1130, float %1133, float %1136)  ; Dot3(ax,ay,az,bx,by,bz)
  %1240 = fsub fast float -0.000000e+00, %1239
  %1241 = call float @dx.op.dot3.f32(i32 55, float %1235, float %1236, float %1237, float %1159, float %1160, float %1161)  ; Dot3(ax,ay,az,bx,by,bz)
  %1242 = call float @dx.op.unary.f32(i32 25, float %1238)  ; Rsqrt(value)
  %1243 = fmul fast float %1242, %1241
  %1244 = bitcast float %1238 to i32
  %1245 = ashr i32 %1244, 1
  %1246 = add nsw i32 %1245, 532487669
  %1247 = bitcast i32 %1246 to float
  %1248 = fmul fast float %1247, 0x3F947AE140000000
  %1249 = fsub fast float 2.000000e+00, %1248
  %1250 = call float @dx.op.unary.f32(i32 7, float %1249)  ; Saturate(value)
  %1251 = fmul fast float %1247, 0x3F7B4E81C0000000
  %1252 = fsub fast float 0x3FF5555560000000, %1251
  %1253 = call float @dx.op.unary.f32(i32 7, float %1252)  ; Saturate(value)
  %1254 = fmul fast float %1228, 0x3F947AE140000000
  %1255 = fadd fast float %1254, -1.000000e+00
  %1256 = call float @dx.op.unary.f32(i32 7, float %1255)  ; Saturate(value)
  %1257 = fsub fast float %1253, %1250
  %1258 = fmul fast float %1256, %1257
  %1259 = fadd fast float %1258, %1250
  %1260 = fmul fast float %1227, %1070
  %1261 = fcmp fast ogt float %1260, 0.000000e+00
  %1262 = select i1 %1261, float %1259, float 0.000000e+00
  %1263 = fadd fast float %1243, 1.000000e+00
  %1264 = fmul fast float %1262, %1263
  %1265 = fadd fast float %1264, -1.000000e+00
  %1266 = fcmp fast ogt float %1265, %1200
  %1267 = select i1 %1266, float %1240, float %1201
  %1268 = fsub fast float %1240, %1267
  %1269 = fmul fast float %1268, 0x3FB9999940000000
  %1270 = fadd fast float %1269, 0xBFDFFFFF80000000
  %1271 = call float @dx.op.unary.f32(i32 7, float %1270)  ; Saturate(value)
  %1272 = fmul fast float %1239, 0x3FC99999E0000000
  %1273 = fadd fast float %1272, 0x3FF0000020000000
  %1274 = call float @dx.op.unary.f32(i32 7, float %1273)  ; Saturate(value)
  %1275 = sitofp i32 %38 to float
  %1276 = fdiv fast float 8.000000e+00, %1275
  %1277 = fmul fast float %1274, %1271
  %1278 = fmul fast float %1277, %1276
  %1279 = fsub fast float %1200, %1278
  %1280 = fcmp ole float %1265, %1279
  %1281 = select i1 %1280, float %1279, float %1265
  %1282 = add nuw nsw i32 %1202, 1
  %1283 = icmp eq i32 %1282, %1137
  br i1 %1283, label %1284, label %1199

; <label>:1284                                    ; preds = %1199
  br label %1285

; <label>:1285                                    ; preds = %1284, %1172
  %1286 = phi float [ %1195, %1172 ], [ %1281, %1284 ]
  br i1 %1197, label %1287, label %1374

; <label>:1287                                    ; preds = %1285
  br label %1288

; <label>:1288                                    ; preds = %1288, %1287
  %1289 = phi float [ %1370, %1288 ], [ %1196, %1287 ]
  %1290 = phi float [ %1356, %1288 ], [ 2.000000e+02, %1287 ]
  %1291 = phi i32 [ %1371, %1288 ], [ 0, %1287 ]
  %1292 = sitofp i32 %1137 to float
  %1293 = fdiv fast float 1.000000e+00, %1292
  %1294 = sitofp i32 %1291 to float
  %1295 = fadd fast float %1294, %572
  %1296 = fmul fast float %1295, %1293
  %1297 = fmul fast float %1296, %1296
  %1298 = fmul fast float %1297, %1169
  %1299 = call float @dx.op.binary.f32(i32 36, float %1298, float 3.000000e+00)  ; FMin(a,b)
  %1300 = fadd fast float %1299, 1.000000e+00
  %1301 = fmul fast float %1297, %1146
  %1302 = fmul fast float %1297, %1147
  %1303 = fadd fast float %1301, %51
  %1304 = fmul fast float %1181, %1303
  %1305 = fsub fast float %1079, %1304
  %1306 = fadd fast float %1302, %52
  %1307 = fmul fast float %1182, %1306
  %1308 = fsub fast float %1080, %1307
  %1309 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %13, float %1305, float %1308, float undef, float undef, i32 0, i32 0, i32 undef, float %1300)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1310 = extractvalue %dx.types.ResRet.f32 %1309, 0
  %1311 = fcmp fast ogt float %1310, -1.000000e+00
  %1312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1313 = extractvalue %dx.types.CBufRet.f32 %1312, 1
  %1314 = select i1 %1311, float %1313, float 1.000000e+00
  %1315 = fadd fast float %1310, 1.000000e+00
  %1316 = fmul fast float %1314, %1315
  %1317 = call float @dx.op.unary.f32(i32 6, float %1316)  ; FAbs(value)
  %1318 = fmul fast float %1305, %453
  %1319 = fmul fast float %1308, %454
  %1320 = fsub fast float %1318, %455
  %1321 = fsub fast float %1319, %456
  %1322 = fmul fast float %1320, %1317
  %1323 = fmul fast float %1321, %1317
  %1324 = fsub fast float %1322, %1152
  %1325 = fsub fast float %1323, %1153
  %1326 = fsub fast float %1317, %1162
  %1327 = call float @dx.op.dot3.f32(i32 55, float %1324, float %1325, float %1326, float %1324, float %1325, float %1326)  ; Dot3(ax,ay,az,bx,by,bz)
  %1328 = call float @dx.op.dot3.f32(i32 55, float %1324, float %1325, float %1326, float %1130, float %1133, float %1136)  ; Dot3(ax,ay,az,bx,by,bz)
  %1329 = fsub fast float -0.000000e+00, %1328
  %1330 = call float @dx.op.dot3.f32(i32 55, float %1324, float %1325, float %1326, float %1159, float %1160, float %1161)  ; Dot3(ax,ay,az,bx,by,bz)
  %1331 = call float @dx.op.unary.f32(i32 25, float %1327)  ; Rsqrt(value)
  %1332 = fmul fast float %1331, %1330
  %1333 = bitcast float %1327 to i32
  %1334 = ashr i32 %1333, 1
  %1335 = add nsw i32 %1334, 532487669
  %1336 = bitcast i32 %1335 to float
  %1337 = fmul fast float %1336, 0x3F947AE140000000
  %1338 = fsub fast float 2.000000e+00, %1337
  %1339 = call float @dx.op.unary.f32(i32 7, float %1338)  ; Saturate(value)
  %1340 = fmul fast float %1336, 0x3F7B4E81C0000000
  %1341 = fsub fast float 0x3FF5555560000000, %1340
  %1342 = call float @dx.op.unary.f32(i32 7, float %1341)  ; Saturate(value)
  %1343 = fmul fast float %1317, 0x3F947AE140000000
  %1344 = fadd fast float %1343, -1.000000e+00
  %1345 = call float @dx.op.unary.f32(i32 7, float %1344)  ; Saturate(value)
  %1346 = fsub fast float %1342, %1339
  %1347 = fmul fast float %1345, %1346
  %1348 = fadd fast float %1347, %1339
  %1349 = fmul fast float %1316, %1070
  %1350 = fcmp fast ogt float %1349, 0.000000e+00
  %1351 = select i1 %1350, float %1348, float 0.000000e+00
  %1352 = fadd fast float %1332, 1.000000e+00
  %1353 = fmul fast float %1351, %1352
  %1354 = fadd fast float %1353, -1.000000e+00
  %1355 = fcmp fast ogt float %1354, %1289
  %1356 = select i1 %1355, float %1329, float %1290
  %1357 = fsub fast float %1329, %1356
  %1358 = fmul fast float %1357, 0x3FB9999940000000
  %1359 = fadd fast float %1358, 0xBFDFFFFF80000000
  %1360 = call float @dx.op.unary.f32(i32 7, float %1359)  ; Saturate(value)
  %1361 = fmul fast float %1328, 0x3FC99999E0000000
  %1362 = fadd fast float %1361, 0x3FF0000020000000
  %1363 = call float @dx.op.unary.f32(i32 7, float %1362)  ; Saturate(value)
  %1364 = sitofp i32 %38 to float
  %1365 = fdiv fast float 8.000000e+00, %1364
  %1366 = fmul fast float %1363, %1360
  %1367 = fmul fast float %1366, %1365
  %1368 = fsub fast float %1289, %1367
  %1369 = fcmp ole float %1354, %1368
  %1370 = select i1 %1369, float %1368, float %1354
  %1371 = add nuw nsw i32 %1291, 1
  %1372 = icmp eq i32 %1371, %1137
  br i1 %1372, label %1373, label %1288

; <label>:1373                                    ; preds = %1288
  br label %1374

; <label>:1374                                    ; preds = %1373, %1285
  %1375 = phi float [ %1196, %1285 ], [ %1370, %1373 ]
  %1376 = fmul fast float %1161, %1183
  %1377 = fmul fast float %1161, %1181
  %1378 = fsub fast float -0.000000e+00, %1377
  %1379 = fmul fast float %1181, %1160
  %1380 = fmul fast float %1159, %1183
  %1381 = fsub fast float %1379, %1380
  %1382 = call float @dx.op.dot3.f32(i32 55, float %1130, float %1133, float %1136, float %1376, float %1378, float %1381)  ; Dot3(ax,ay,az,bx,by,bz)
  %1383 = fmul fast float %1382, %1376
  %1384 = fmul fast float %1382, %1378
  %1385 = fmul fast float %1382, %1381
  %1386 = fsub fast float %1130, %1383
  %1387 = fsub fast float %1133, %1384
  %1388 = fsub fast float %1136, %1385
  %1389 = fmul fast float %1386, %1386
  %1390 = fmul fast float %1387, %1387
  %1391 = fadd fast float %1389, %1390
  %1392 = fmul fast float %1388, %1388
  %1393 = fadd fast float %1391, %1392
  %1394 = call float @dx.op.unary.f32(i32 24, float %1393)  ; Sqrt(value)
  %1395 = call float @dx.op.dot3.f32(i32 55, float %1181, float %1183, float 0.000000e+00, float %1386, float %1387, float %1388)  ; Dot3(ax,ay,az,bx,by,bz)
  %1396 = call float @dx.op.dot3.f32(i32 55, float %1181, float %1183, float 0.000000e+00, float %1159, float %1160, float %1161)  ; Dot3(ax,ay,az,bx,by,bz)
  %1397 = fmul fast float %1396, %1159
  %1398 = fmul fast float %1396, %1160
  %1399 = fmul fast float %1396, %1161
  %1400 = call float @dx.op.dot3.f32(i32 55, float %1397, float %1398, float %1399, float %1386, float %1387, float %1388)  ; Dot3(ax,ay,az,bx,by,bz)
  %1401 = fcmp fast oge float %1395, %1400
  %1402 = fdiv fast float 1.000000e+00, %1394
  %1403 = call float @dx.op.dot3.f32(i32 55, float %1386, float %1387, float %1388, float %1159, float %1160, float %1161)  ; Dot3(ax,ay,az,bx,by,bz)
  %1404 = fmul fast float %1403, %1402
  %1405 = call float @dx.op.unary.f32(i32 7, float %1404)  ; Saturate(value)
  %1406 = fmul fast float %1405, %1405
  %1407 = fsub fast float 1.000000e+00, %1406
  %1408 = bitcast float %1407 to i32
  %1409 = ashr i32 %1408, 1
  %1410 = add nsw i32 %1409, 532487669
  %1411 = bitcast i32 %1410 to float
  %1412 = call float @dx.op.unary.f32(i32 6, float %1405)  ; FAbs(value)
  %1413 = fmul fast float %1412, 0x3FC40AE960000000
  %1414 = fsub fast float 0x3FF921FB60000000, %1413
  %1415 = fsub fast float 1.000000e+00, %1412
  %1416 = bitcast float %1415 to i32
  %1417 = ashr i32 %1416, 1
  %1418 = add nsw i32 %1417, 532487669
  %1419 = bitcast i32 %1418 to float
  %1420 = fmul fast float %1419, %1414
  %1421 = fcmp fast oge float %1405, 0.000000e+00
  %1422 = fsub fast float 0x400921FB60000000, %1420
  %1423 = select i1 %1421, float %1420, float %1422
  %1424 = fsub fast float -0.000000e+00, %1411
  %1425 = select i1 %1401, float %1424, float %1411
  %1426 = fsub fast float -0.000000e+00, %1423
  %1427 = select i1 %1401, float %1426, float %1423
  %1428 = call float @dx.op.unary.f32(i32 6, float %1286)  ; FAbs(value)
  %1429 = fmul fast float %1428, 0x3FC40AE960000000
  %1430 = fsub fast float 0x3FF921FB60000000, %1429
  %1431 = fsub fast float 1.000000e+00, %1428
  %1432 = bitcast float %1431 to i32
  %1433 = ashr i32 %1432, 1
  %1434 = add nsw i32 %1433, 532487669
  %1435 = bitcast i32 %1434 to float
  %1436 = fmul fast float %1435, %1430
  %1437 = fcmp fast oge float %1286, 0.000000e+00
  %1438 = fsub fast float 0x400921FB60000000, %1436
  %1439 = select i1 %1437, float %1436, float %1438
  %1440 = call float @dx.op.unary.f32(i32 6, float %1375)  ; FAbs(value)
  %1441 = fmul fast float %1440, 0x3FC40AE960000000
  %1442 = fsub fast float 0x3FF921FB60000000, %1441
  %1443 = fsub fast float 1.000000e+00, %1440
  %1444 = bitcast float %1443 to i32
  %1445 = ashr i32 %1444, 1
  %1446 = add nsw i32 %1445, 532487669
  %1447 = bitcast i32 %1446 to float
  %1448 = fmul fast float %1447, %1442
  %1449 = fcmp fast oge float %1375, 0.000000e+00
  %1450 = fsub fast float 0x400921FB60000000, %1448
  %1451 = select i1 %1449, float %1448, float %1450
  %1452 = fsub fast float -0.000000e+00, %1427
  %1453 = fsub fast float %1452, %1439
  %1454 = call float @dx.op.binary.f32(i32 35, float %1453, float 0xBFF921FB60000000)  ; FMax(a,b)
  %1455 = call float @dx.op.binary.f32(i32 36, float %1454, float 0x3FF921FB60000000)  ; FMin(a,b)
  %1456 = fadd fast float %1427, %1455
  %1457 = fsub fast float %1451, %1427
  %1458 = call float @dx.op.binary.f32(i32 35, float %1457, float 0xBFF921FB60000000)  ; FMax(a,b)
  %1459 = call float @dx.op.binary.f32(i32 36, float %1458, float 0x3FF921FB60000000)  ; FMin(a,b)
  %1460 = fadd fast float %1427, %1459
  %1461 = fmul fast float %1456, 2.000000e+00
  %1462 = fsub fast float %1461, %1427
  %1463 = call float @dx.op.unary.f32(i32 12, float %1462)  ; Cos(value)
  %1464 = fsub fast float -0.000000e+00, %1463
  %1465 = fmul fast float %1460, 2.000000e+00
  %1466 = fsub fast float %1465, %1427
  %1467 = call float @dx.op.unary.f32(i32 12, float %1466)  ; Cos(value)
  %1468 = fmul fast float %1405, 2.000000e+00
  %1469 = fadd fast float %1460, %1456
  %1470 = fmul fast float %1425, %1469
  %1471 = fmul fast float %1470, 2.000000e+00
  %1472 = fsub fast float %1464, %1467
  %1473 = fadd fast float %1472, %1468
  %1474 = fadd fast float %1473, %1471
  %1475 = fmul fast float %1394, 2.500000e-01
  %1476 = fmul fast float %1475, %1474
  %1477 = fadd fast float %1476, %1175
  %1478 = fmul fast float %1427, %1425
  %1479 = fadd fast float %1478, %1405
  %1480 = fmul fast float %1479, %1394
  %1481 = fadd fast float %1480, %1173
  %1482 = add nuw nsw i32 %1174, 1
  %1483 = icmp eq i32 %1482, %1062
  br i1 %1483, label %1484, label %1172

; <label>:1484                                    ; preds = %1374
  br label %1485

; <label>:1485                                    ; preds = %1484, %1082
  %1486 = phi float [ 0.000000e+00, %1082 ], [ %1481, %1484 ]
  %1487 = phi float [ 0.000000e+00, %1082 ], [ %1477, %1484 ]
  %1488 = fdiv fast float %1487, %1486
  br label %1489

; <label>:1489                                    ; preds = %1485, %1064, %1044
  %1490 = phi float [ %1000, %1044 ], [ %1488, %1485 ], [ 1.000000e+00, %1064 ]
  %1491 = icmp ugt i32 %1057, 2
  br i1 %1491, label %1492, label %1917, !dx.controlflow.hints !54

; <label>:1492                                    ; preds = %1489
  %1493 = getelementptr inbounds [4 x float], [4 x float]* %25, i32 0, i32 0
  store float %389, float* %1493, align 4
  %1494 = getelementptr inbounds [4 x float], [4 x float]* %25, i32 0, i32 1
  store float %385, float* %1494, align 4
  %1495 = getelementptr inbounds [4 x float], [4 x float]* %25, i32 0, i32 2
  store float %377, float* %1495, align 4
  %1496 = getelementptr inbounds [4 x float], [4 x float]* %25, i32 0, i32 3
  store float %381, float* %1496, align 4
  %1497 = getelementptr [4 x float], [4 x float]* %25, i32 0, i32 %483
  %1498 = load float, float* %1497, align 4, !tbaa !35, !noalias !55
  %1499 = and i32 %483, 1
  %1500 = uitofp i32 %1499 to float
  %1501 = fadd fast float %1500, 5.000000e-01
  %1502 = lshr i32 %483, 1
  %1503 = uitofp i32 %1502 to float
  %1504 = fadd fast float %1503, 5.000000e-01
  %1505 = fmul fast float %1501, %457
  %1506 = fmul fast float %1504, %458
  %1507 = fadd fast float %1505, %55
  %1508 = fadd fast float %1506, %56
  %1509 = fcmp fast olt float %1498, 6.550000e+04
  br i1 %1509, label %1510, label %1917, !dx.controlflow.hints !48

; <label>:1510                                    ; preds = %1492
  %1511 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 0
  store i32 %419, i32* %1511, align 4
  %1512 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 1
  store i32 %451, i32* %1512, align 4
  %1513 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 2
  store i32 %431, i32* %1513, align 4
  %1514 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 3
  store i32 %442, i32* %1514, align 4
  %1515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 99)  ; CBufferLoadLegacy(handle,regIndex)
  %1516 = extractvalue %dx.types.CBufRet.f32 %1515, 0
  %1517 = extractvalue %dx.types.CBufRet.f32 %1515, 1
  %1518 = extractvalue %dx.types.CBufRet.f32 %1515, 2
  %1519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 100)  ; CBufferLoadLegacy(handle,regIndex)
  %1520 = extractvalue %dx.types.CBufRet.f32 %1519, 0
  %1521 = extractvalue %dx.types.CBufRet.f32 %1519, 1
  %1522 = extractvalue %dx.types.CBufRet.f32 %1519, 2
  %1523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 101)  ; CBufferLoadLegacy(handle,regIndex)
  %1524 = extractvalue %dx.types.CBufRet.f32 %1523, 0
  %1525 = extractvalue %dx.types.CBufRet.f32 %1523, 1
  %1526 = extractvalue %dx.types.CBufRet.f32 %1523, 2
  %1527 = getelementptr [4 x i32], [4 x i32]* %24, i32 0, i32 %483
  %1528 = load i32, i32* %1527, align 4, !tbaa !31, !noalias !55
  %1529 = lshr i32 %1528, 8
  %1530 = and i32 %1528, 255
  %1531 = and i32 %1529, 255
  %1532 = uitofp i32 %1530 to float
  %1533 = uitofp i32 %1531 to float
  %1534 = fmul fast float %1532, 0x3F80101020000000
  %1535 = fmul fast float %1533, 0x3F80101020000000
  %1536 = fadd fast float %1534, -1.000000e+00
  %1537 = fadd fast float %1535, -1.000000e+00
  %1538 = call float @dx.op.unary.f32(i32 6, float %1536)  ; FAbs(value)
  %1539 = fsub fast float 1.000000e+00, %1538
  %1540 = call float @dx.op.unary.f32(i32 6, float %1537)  ; FAbs(value)
  %1541 = fsub fast float %1539, %1540
  %1542 = fsub fast float -0.000000e+00, %1541
  %1543 = call float @dx.op.binary.f32(i32 35, float %1542, float 0.000000e+00)  ; FMax(a,b)
  %1544 = fcmp fast ogt float %1536, 0.000000e+00
  %1545 = fsub fast float -0.000000e+00, %1543
  %1546 = select i1 %1544, float %1545, float %1543
  %1547 = fadd fast float %1546, %1536
  %1548 = fcmp fast ogt float %1537, 0.000000e+00
  %1549 = select i1 %1548, float %1545, float %1543
  %1550 = fadd fast float %1549, %1537
  %1551 = call float @dx.op.dot3.f32(i32 55, float %1547, float %1550, float %1541, float %1547, float %1550, float %1541)  ; Dot3(ax,ay,az,bx,by,bz)
  %1552 = call float @dx.op.unary.f32(i32 25, float %1551)  ; Rsqrt(value)
  %1553 = fmul fast float %1547, %1552
  %1554 = fmul fast float %1550, %1552
  %1555 = fmul fast float %1552, %1541
  %1556 = fmul fast float %1553, %1516
  %1557 = call float @dx.op.tertiary.f32(i32 46, float %1554, float %1517, float %1556)  ; FMad(a,b,c)
  %1558 = call float @dx.op.tertiary.f32(i32 46, float %1555, float %1518, float %1557)  ; FMad(a,b,c)
  %1559 = fmul fast float %1553, %1520
  %1560 = call float @dx.op.tertiary.f32(i32 46, float %1554, float %1521, float %1559)  ; FMad(a,b,c)
  %1561 = call float @dx.op.tertiary.f32(i32 46, float %1555, float %1522, float %1560)  ; FMad(a,b,c)
  %1562 = fmul fast float %1553, %1524
  %1563 = call float @dx.op.tertiary.f32(i32 46, float %1554, float %1525, float %1562)  ; FMad(a,b,c)
  %1564 = call float @dx.op.tertiary.f32(i32 46, float %1555, float %1526, float %1563)  ; FMad(a,b,c)
  %1565 = ashr i32 %38, 1
  %1566 = call float @dx.op.unary.f32(i32 6, float %1498)  ; FAbs(value)
  %1567 = fmul fast float %457, %42
  %1568 = fmul fast float %458, %43
  %1569 = fmul fast float %1566, %455
  %1570 = fmul fast float %456, %1566
  %1571 = fsub fast float -0.000000e+00, %1570
  %1572 = fdiv fast float 5.000000e+01, %1569
  %1573 = fdiv fast float 5.000000e+01, %1571
  %1574 = call float @dx.op.binary.f32(i32 36, float %1567, float %1572)  ; FMin(a,b)
  %1575 = call float @dx.op.binary.f32(i32 36, float %1568, float %1573)  ; FMin(a,b)
  %1576 = fmul fast float %1507, %453
  %1577 = fmul fast float %1508, %454
  %1578 = fsub fast float %1576, %455
  %1579 = fsub fast float %1577, %456
  %1580 = fmul fast float %1566, %1578
  %1581 = fmul fast float %1566, %1579
  %1582 = fsub fast float -0.000000e+00, %1580
  %1583 = fsub fast float -0.000000e+00, %1581
  %1584 = fsub fast float -0.000000e+00, %1566
  %1585 = call float @dx.op.dot3.f32(i32 55, float %1582, float %1583, float %1584, float %1582, float %1583, float %1584)  ; Dot3(ax,ay,az,bx,by,bz)
  %1586 = call float @dx.op.unary.f32(i32 25, float %1585)  ; Rsqrt(value)
  %1587 = fmul fast float %1586, %1582
  %1588 = fmul fast float %1586, %1583
  %1589 = fmul fast float %1586, %1584
  %1590 = fmul fast float %1566, 0x3FEFEB8520000000
  %1591 = fmul fast float %1574, %47
  %1592 = fmul fast float %1575, %48
  %1593 = fmul fast float %1591, %1591
  %1594 = fmul fast float %1592, %1592
  %1595 = fadd fast float %1594, %1593
  %1596 = call float @dx.op.unary.f32(i32 24, float %1595)  ; Sqrt(value)
  %1597 = fmul fast float %1596, 3.125000e-02
  %1598 = icmp sgt i32 %1062, 0
  br i1 %1598, label %1599, label %1913

; <label>:1599                                    ; preds = %1510
  br label %1600

; <label>:1600                                    ; preds = %1802, %1599
  %1601 = phi float [ %1909, %1802 ], [ 0.000000e+00, %1599 ]
  %1602 = phi i32 [ %1910, %1802 ], [ 0, %1599 ]
  %1603 = phi float [ %1905, %1802 ], [ 0.000000e+00, %1599 ]
  %1604 = sitofp i32 %1062 to float
  %1605 = fdiv fast float 0x400921FB60000000, %1604
  %1606 = sitofp i32 %1602 to float
  %1607 = fadd fast float %1606, %552
  %1608 = fmul fast float %1605, %1607
  %1609 = call float @dx.op.unary.f32(i32 12, float %1608)  ; Cos(value)
  %1610 = call float @dx.op.unary.f32(i32 13, float %1608)  ; Sin(value)
  %1611 = fsub fast float -0.000000e+00, %1610
  %1612 = call float @dx.op.dot3.f32(i32 55, float %1587, float %1588, float %1589, float %1558, float %1561, float %1564)  ; Dot3(ax,ay,az,bx,by,bz)
  %1613 = call float @dx.op.unary.f32(i32 6, float %1612)  ; FAbs(value)
  %1614 = call float @dx.op.unary.f32(i32 6, float %1613)  ; FAbs(value)
  %1615 = fcmp fast ogt float %1614, 0x3EB0C6F7A0000000
  %1616 = call float @dx.op.dot3.f32(i32 55, float %1609, float %1611, float 0.000000e+00, float %1558, float %1561, float %1564)  ; Dot3(ax,ay,az,bx,by,bz)
  %1617 = fsub fast float -0.000000e+00, %1616
  %1618 = fdiv fast float %1617, %1613
  %1619 = select i1 %1615, float %1618, float 0.000000e+00
  %1620 = fmul fast float %1619, %1619
  %1621 = fadd fast float %1620, 1.000000e+00
  %1622 = call float @dx.op.unary.f32(i32 25, float %1621)  ; Rsqrt(value)
  %1623 = fmul fast float %1619, %1622
  %1624 = fsub fast float -0.000000e+00, %1623
  %1625 = icmp sgt i32 %1565, 0
  br i1 %1625, label %1626, label %1713

; <label>:1626                                    ; preds = %1600
  br label %1627

; <label>:1627                                    ; preds = %1627, %1626
  %1628 = phi float [ %1709, %1627 ], [ %1623, %1626 ]
  %1629 = phi float [ %1695, %1627 ], [ 2.000000e+02, %1626 ]
  %1630 = phi i32 [ %1710, %1627 ], [ 0, %1626 ]
  %1631 = sitofp i32 %1565 to float
  %1632 = fdiv fast float 1.000000e+00, %1631
  %1633 = sitofp i32 %1630 to float
  %1634 = fadd fast float %1633, %573
  %1635 = fmul fast float %1634, %1632
  %1636 = fmul fast float %1635, %1635
  %1637 = fmul fast float %1636, %1597
  %1638 = call float @dx.op.binary.f32(i32 36, float %1637, float 3.000000e+00)  ; FMin(a,b)
  %1639 = fadd fast float %1638, 1.000000e+00
  %1640 = fmul fast float %1636, %1574
  %1641 = fmul fast float %1636, %1575
  %1642 = fadd fast float %1640, %51
  %1643 = fmul fast float %1642, %1609
  %1644 = fadd fast float %1643, %1507
  %1645 = fadd fast float %1641, %52
  %1646 = fmul fast float %1645, %1610
  %1647 = fadd fast float %1646, %1508
  %1648 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %13, float %1644, float %1647, float undef, float undef, i32 0, i32 0, i32 undef, float %1639)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1649 = extractvalue %dx.types.ResRet.f32 %1648, 0
  %1650 = fcmp fast ogt float %1649, -1.000000e+00
  %1651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1652 = extractvalue %dx.types.CBufRet.f32 %1651, 1
  %1653 = select i1 %1650, float %1652, float 1.000000e+00
  %1654 = fadd fast float %1649, 1.000000e+00
  %1655 = fmul fast float %1653, %1654
  %1656 = call float @dx.op.unary.f32(i32 6, float %1655)  ; FAbs(value)
  %1657 = fmul fast float %1644, %453
  %1658 = fmul fast float %1647, %454
  %1659 = fsub fast float %1657, %455
  %1660 = fsub fast float %1658, %456
  %1661 = fmul fast float %1659, %1656
  %1662 = fmul fast float %1660, %1656
  %1663 = fsub fast float %1661, %1580
  %1664 = fsub fast float %1662, %1581
  %1665 = fsub fast float %1656, %1590
  %1666 = call float @dx.op.dot3.f32(i32 55, float %1663, float %1664, float %1665, float %1663, float %1664, float %1665)  ; Dot3(ax,ay,az,bx,by,bz)
  %1667 = call float @dx.op.dot3.f32(i32 55, float %1663, float %1664, float %1665, float %1558, float %1561, float %1564)  ; Dot3(ax,ay,az,bx,by,bz)
  %1668 = fsub fast float -0.000000e+00, %1667
  %1669 = call float @dx.op.dot3.f32(i32 55, float %1663, float %1664, float %1665, float %1587, float %1588, float %1589)  ; Dot3(ax,ay,az,bx,by,bz)
  %1670 = call float @dx.op.unary.f32(i32 25, float %1666)  ; Rsqrt(value)
  %1671 = fmul fast float %1670, %1669
  %1672 = bitcast float %1666 to i32
  %1673 = ashr i32 %1672, 1
  %1674 = add nsw i32 %1673, 532487669
  %1675 = bitcast i32 %1674 to float
  %1676 = fmul fast float %1675, 0x3F947AE140000000
  %1677 = fsub fast float 2.000000e+00, %1676
  %1678 = call float @dx.op.unary.f32(i32 7, float %1677)  ; Saturate(value)
  %1679 = fmul fast float %1675, 0x3F7B4E81C0000000
  %1680 = fsub fast float 0x3FF5555560000000, %1679
  %1681 = call float @dx.op.unary.f32(i32 7, float %1680)  ; Saturate(value)
  %1682 = fmul fast float %1656, 0x3F947AE140000000
  %1683 = fadd fast float %1682, -1.000000e+00
  %1684 = call float @dx.op.unary.f32(i32 7, float %1683)  ; Saturate(value)
  %1685 = fsub fast float %1681, %1678
  %1686 = fmul fast float %1684, %1685
  %1687 = fadd fast float %1686, %1678
  %1688 = fmul fast float %1655, %1498
  %1689 = fcmp fast ogt float %1688, 0.000000e+00
  %1690 = select i1 %1689, float %1687, float 0.000000e+00
  %1691 = fadd fast float %1671, 1.000000e+00
  %1692 = fmul fast float %1690, %1691
  %1693 = fadd fast float %1692, -1.000000e+00
  %1694 = fcmp fast ogt float %1693, %1628
  %1695 = select i1 %1694, float %1668, float %1629
  %1696 = fsub fast float %1668, %1695
  %1697 = fmul fast float %1696, 0x3FB9999940000000
  %1698 = fadd fast float %1697, 0xBFDFFFFF80000000
  %1699 = call float @dx.op.unary.f32(i32 7, float %1698)  ; Saturate(value)
  %1700 = fmul fast float %1667, 0x3FC99999E0000000
  %1701 = fadd fast float %1700, 0x3FF0000020000000
  %1702 = call float @dx.op.unary.f32(i32 7, float %1701)  ; Saturate(value)
  %1703 = sitofp i32 %38 to float
  %1704 = fdiv fast float 8.000000e+00, %1703
  %1705 = fmul fast float %1702, %1699
  %1706 = fmul fast float %1705, %1704
  %1707 = fsub fast float %1628, %1706
  %1708 = fcmp ole float %1693, %1707
  %1709 = select i1 %1708, float %1707, float %1693
  %1710 = add nuw nsw i32 %1630, 1
  %1711 = icmp eq i32 %1710, %1565
  br i1 %1711, label %1712, label %1627

; <label>:1712                                    ; preds = %1627
  br label %1713

; <label>:1713                                    ; preds = %1712, %1600
  %1714 = phi float [ %1623, %1600 ], [ %1709, %1712 ]
  br i1 %1625, label %1715, label %1802

; <label>:1715                                    ; preds = %1713
  br label %1716

; <label>:1716                                    ; preds = %1716, %1715
  %1717 = phi float [ %1798, %1716 ], [ %1624, %1715 ]
  %1718 = phi float [ %1784, %1716 ], [ 2.000000e+02, %1715 ]
  %1719 = phi i32 [ %1799, %1716 ], [ 0, %1715 ]
  %1720 = sitofp i32 %1565 to float
  %1721 = fdiv fast float 1.000000e+00, %1720
  %1722 = sitofp i32 %1719 to float
  %1723 = fadd fast float %1722, %573
  %1724 = fmul fast float %1723, %1721
  %1725 = fmul fast float %1724, %1724
  %1726 = fmul fast float %1725, %1597
  %1727 = call float @dx.op.binary.f32(i32 36, float %1726, float 3.000000e+00)  ; FMin(a,b)
  %1728 = fadd fast float %1727, 1.000000e+00
  %1729 = fmul fast float %1725, %1574
  %1730 = fmul fast float %1725, %1575
  %1731 = fadd fast float %1729, %51
  %1732 = fmul fast float %1609, %1731
  %1733 = fsub fast float %1507, %1732
  %1734 = fadd fast float %1730, %52
  %1735 = fmul fast float %1610, %1734
  %1736 = fsub fast float %1508, %1735
  %1737 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %13, float %1733, float %1736, float undef, float undef, i32 0, i32 0, i32 undef, float %1728)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1738 = extractvalue %dx.types.ResRet.f32 %1737, 0
  %1739 = fcmp fast ogt float %1738, -1.000000e+00
  %1740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1741 = extractvalue %dx.types.CBufRet.f32 %1740, 1
  %1742 = select i1 %1739, float %1741, float 1.000000e+00
  %1743 = fadd fast float %1738, 1.000000e+00
  %1744 = fmul fast float %1742, %1743
  %1745 = call float @dx.op.unary.f32(i32 6, float %1744)  ; FAbs(value)
  %1746 = fmul fast float %1733, %453
  %1747 = fmul fast float %1736, %454
  %1748 = fsub fast float %1746, %455
  %1749 = fsub fast float %1747, %456
  %1750 = fmul fast float %1748, %1745
  %1751 = fmul fast float %1749, %1745
  %1752 = fsub fast float %1750, %1580
  %1753 = fsub fast float %1751, %1581
  %1754 = fsub fast float %1745, %1590
  %1755 = call float @dx.op.dot3.f32(i32 55, float %1752, float %1753, float %1754, float %1752, float %1753, float %1754)  ; Dot3(ax,ay,az,bx,by,bz)
  %1756 = call float @dx.op.dot3.f32(i32 55, float %1752, float %1753, float %1754, float %1558, float %1561, float %1564)  ; Dot3(ax,ay,az,bx,by,bz)
  %1757 = fsub fast float -0.000000e+00, %1756
  %1758 = call float @dx.op.dot3.f32(i32 55, float %1752, float %1753, float %1754, float %1587, float %1588, float %1589)  ; Dot3(ax,ay,az,bx,by,bz)
  %1759 = call float @dx.op.unary.f32(i32 25, float %1755)  ; Rsqrt(value)
  %1760 = fmul fast float %1759, %1758
  %1761 = bitcast float %1755 to i32
  %1762 = ashr i32 %1761, 1
  %1763 = add nsw i32 %1762, 532487669
  %1764 = bitcast i32 %1763 to float
  %1765 = fmul fast float %1764, 0x3F947AE140000000
  %1766 = fsub fast float 2.000000e+00, %1765
  %1767 = call float @dx.op.unary.f32(i32 7, float %1766)  ; Saturate(value)
  %1768 = fmul fast float %1764, 0x3F7B4E81C0000000
  %1769 = fsub fast float 0x3FF5555560000000, %1768
  %1770 = call float @dx.op.unary.f32(i32 7, float %1769)  ; Saturate(value)
  %1771 = fmul fast float %1745, 0x3F947AE140000000
  %1772 = fadd fast float %1771, -1.000000e+00
  %1773 = call float @dx.op.unary.f32(i32 7, float %1772)  ; Saturate(value)
  %1774 = fsub fast float %1770, %1767
  %1775 = fmul fast float %1773, %1774
  %1776 = fadd fast float %1775, %1767
  %1777 = fmul fast float %1744, %1498
  %1778 = fcmp fast ogt float %1777, 0.000000e+00
  %1779 = select i1 %1778, float %1776, float 0.000000e+00
  %1780 = fadd fast float %1760, 1.000000e+00
  %1781 = fmul fast float %1779, %1780
  %1782 = fadd fast float %1781, -1.000000e+00
  %1783 = fcmp fast ogt float %1782, %1717
  %1784 = select i1 %1783, float %1757, float %1718
  %1785 = fsub fast float %1757, %1784
  %1786 = fmul fast float %1785, 0x3FB9999940000000
  %1787 = fadd fast float %1786, 0xBFDFFFFF80000000
  %1788 = call float @dx.op.unary.f32(i32 7, float %1787)  ; Saturate(value)
  %1789 = fmul fast float %1756, 0x3FC99999E0000000
  %1790 = fadd fast float %1789, 0x3FF0000020000000
  %1791 = call float @dx.op.unary.f32(i32 7, float %1790)  ; Saturate(value)
  %1792 = sitofp i32 %38 to float
  %1793 = fdiv fast float 8.000000e+00, %1792
  %1794 = fmul fast float %1791, %1788
  %1795 = fmul fast float %1794, %1793
  %1796 = fsub fast float %1717, %1795
  %1797 = fcmp ole float %1782, %1796
  %1798 = select i1 %1797, float %1796, float %1782
  %1799 = add nuw nsw i32 %1719, 1
  %1800 = icmp eq i32 %1799, %1565
  br i1 %1800, label %1801, label %1716

; <label>:1801                                    ; preds = %1716
  br label %1802

; <label>:1802                                    ; preds = %1801, %1713
  %1803 = phi float [ %1624, %1713 ], [ %1798, %1801 ]
  %1804 = fmul fast float %1589, %1611
  %1805 = fmul fast float %1589, %1609
  %1806 = fsub fast float -0.000000e+00, %1805
  %1807 = fmul fast float %1609, %1588
  %1808 = fmul fast float %1587, %1611
  %1809 = fsub fast float %1807, %1808
  %1810 = call float @dx.op.dot3.f32(i32 55, float %1558, float %1561, float %1564, float %1804, float %1806, float %1809)  ; Dot3(ax,ay,az,bx,by,bz)
  %1811 = fmul fast float %1810, %1804
  %1812 = fmul fast float %1810, %1806
  %1813 = fmul fast float %1810, %1809
  %1814 = fsub fast float %1558, %1811
  %1815 = fsub fast float %1561, %1812
  %1816 = fsub fast float %1564, %1813
  %1817 = fmul fast float %1814, %1814
  %1818 = fmul fast float %1815, %1815
  %1819 = fadd fast float %1817, %1818
  %1820 = fmul fast float %1816, %1816
  %1821 = fadd fast float %1819, %1820
  %1822 = call float @dx.op.unary.f32(i32 24, float %1821)  ; Sqrt(value)
  %1823 = call float @dx.op.dot3.f32(i32 55, float %1609, float %1611, float 0.000000e+00, float %1814, float %1815, float %1816)  ; Dot3(ax,ay,az,bx,by,bz)
  %1824 = call float @dx.op.dot3.f32(i32 55, float %1609, float %1611, float 0.000000e+00, float %1587, float %1588, float %1589)  ; Dot3(ax,ay,az,bx,by,bz)
  %1825 = fmul fast float %1824, %1587
  %1826 = fmul fast float %1824, %1588
  %1827 = fmul fast float %1824, %1589
  %1828 = call float @dx.op.dot3.f32(i32 55, float %1825, float %1826, float %1827, float %1814, float %1815, float %1816)  ; Dot3(ax,ay,az,bx,by,bz)
  %1829 = fcmp fast oge float %1823, %1828
  %1830 = fdiv fast float 1.000000e+00, %1822
  %1831 = call float @dx.op.dot3.f32(i32 55, float %1814, float %1815, float %1816, float %1587, float %1588, float %1589)  ; Dot3(ax,ay,az,bx,by,bz)
  %1832 = fmul fast float %1831, %1830
  %1833 = call float @dx.op.unary.f32(i32 7, float %1832)  ; Saturate(value)
  %1834 = fmul fast float %1833, %1833
  %1835 = fsub fast float 1.000000e+00, %1834
  %1836 = bitcast float %1835 to i32
  %1837 = ashr i32 %1836, 1
  %1838 = add nsw i32 %1837, 532487669
  %1839 = bitcast i32 %1838 to float
  %1840 = call float @dx.op.unary.f32(i32 6, float %1833)  ; FAbs(value)
  %1841 = fmul fast float %1840, 0x3FC40AE960000000
  %1842 = fsub fast float 0x3FF921FB60000000, %1841
  %1843 = fsub fast float 1.000000e+00, %1840
  %1844 = bitcast float %1843 to i32
  %1845 = ashr i32 %1844, 1
  %1846 = add nsw i32 %1845, 532487669
  %1847 = bitcast i32 %1846 to float
  %1848 = fmul fast float %1847, %1842
  %1849 = fcmp fast oge float %1833, 0.000000e+00
  %1850 = fsub fast float 0x400921FB60000000, %1848
  %1851 = select i1 %1849, float %1848, float %1850
  %1852 = fsub fast float -0.000000e+00, %1839
  %1853 = select i1 %1829, float %1852, float %1839
  %1854 = fsub fast float -0.000000e+00, %1851
  %1855 = select i1 %1829, float %1854, float %1851
  %1856 = call float @dx.op.unary.f32(i32 6, float %1714)  ; FAbs(value)
  %1857 = fmul fast float %1856, 0x3FC40AE960000000
  %1858 = fsub fast float 0x3FF921FB60000000, %1857
  %1859 = fsub fast float 1.000000e+00, %1856
  %1860 = bitcast float %1859 to i32
  %1861 = ashr i32 %1860, 1
  %1862 = add nsw i32 %1861, 532487669
  %1863 = bitcast i32 %1862 to float
  %1864 = fmul fast float %1863, %1858
  %1865 = fcmp fast oge float %1714, 0.000000e+00
  %1866 = fsub fast float 0x400921FB60000000, %1864
  %1867 = select i1 %1865, float %1864, float %1866
  %1868 = call float @dx.op.unary.f32(i32 6, float %1803)  ; FAbs(value)
  %1869 = fmul fast float %1868, 0x3FC40AE960000000
  %1870 = fsub fast float 0x3FF921FB60000000, %1869
  %1871 = fsub fast float 1.000000e+00, %1868
  %1872 = bitcast float %1871 to i32
  %1873 = ashr i32 %1872, 1
  %1874 = add nsw i32 %1873, 532487669
  %1875 = bitcast i32 %1874 to float
  %1876 = fmul fast float %1875, %1870
  %1877 = fcmp fast oge float %1803, 0.000000e+00
  %1878 = fsub fast float 0x400921FB60000000, %1876
  %1879 = select i1 %1877, float %1876, float %1878
  %1880 = fsub fast float -0.000000e+00, %1855
  %1881 = fsub fast float %1880, %1867
  %1882 = call float @dx.op.binary.f32(i32 35, float %1881, float 0xBFF921FB60000000)  ; FMax(a,b)
  %1883 = call float @dx.op.binary.f32(i32 36, float %1882, float 0x3FF921FB60000000)  ; FMin(a,b)
  %1884 = fadd fast float %1855, %1883
  %1885 = fsub fast float %1879, %1855
  %1886 = call float @dx.op.binary.f32(i32 35, float %1885, float 0xBFF921FB60000000)  ; FMax(a,b)
  %1887 = call float @dx.op.binary.f32(i32 36, float %1886, float 0x3FF921FB60000000)  ; FMin(a,b)
  %1888 = fadd fast float %1855, %1887
  %1889 = fmul fast float %1884, 2.000000e+00
  %1890 = fsub fast float %1889, %1855
  %1891 = call float @dx.op.unary.f32(i32 12, float %1890)  ; Cos(value)
  %1892 = fsub fast float -0.000000e+00, %1891
  %1893 = fmul fast float %1888, 2.000000e+00
  %1894 = fsub fast float %1893, %1855
  %1895 = call float @dx.op.unary.f32(i32 12, float %1894)  ; Cos(value)
  %1896 = fmul fast float %1833, 2.000000e+00
  %1897 = fadd fast float %1888, %1884
  %1898 = fmul fast float %1853, %1897
  %1899 = fmul fast float %1898, 2.000000e+00
  %1900 = fsub fast float %1892, %1895
  %1901 = fadd fast float %1900, %1896
  %1902 = fadd fast float %1901, %1899
  %1903 = fmul fast float %1822, 2.500000e-01
  %1904 = fmul fast float %1903, %1902
  %1905 = fadd fast float %1904, %1603
  %1906 = fmul fast float %1855, %1853
  %1907 = fadd fast float %1906, %1833
  %1908 = fmul fast float %1907, %1822
  %1909 = fadd fast float %1908, %1601
  %1910 = add nuw nsw i32 %1602, 1
  %1911 = icmp eq i32 %1910, %1062
  br i1 %1911, label %1912, label %1600

; <label>:1912                                    ; preds = %1802
  br label %1913

; <label>:1913                                    ; preds = %1912, %1510
  %1914 = phi float [ 0.000000e+00, %1510 ], [ %1909, %1912 ]
  %1915 = phi float [ 0.000000e+00, %1510 ], [ %1905, %1912 ]
  %1916 = fdiv fast float %1915, %1914
  br label %1917

; <label>:1917                                    ; preds = %1913, %1492, %1489
  %1918 = phi float [ %1000, %1489 ], [ %1916, %1913 ], [ 1.000000e+00, %1492 ]
  %1919 = icmp ugt i32 %1057, 3
  br i1 %1919, label %1920, label %2345, !dx.controlflow.hints !59

; <label>:1920                                    ; preds = %1917
  %1921 = getelementptr inbounds [4 x float], [4 x float]* %23, i32 0, i32 0
  store float %389, float* %1921, align 4
  %1922 = getelementptr inbounds [4 x float], [4 x float]* %23, i32 0, i32 1
  store float %385, float* %1922, align 4
  %1923 = getelementptr inbounds [4 x float], [4 x float]* %23, i32 0, i32 2
  store float %377, float* %1923, align 4
  %1924 = getelementptr inbounds [4 x float], [4 x float]* %23, i32 0, i32 3
  store float %381, float* %1924, align 4
  %1925 = getelementptr [4 x float], [4 x float]* %23, i32 0, i32 %490
  %1926 = load float, float* %1925, align 4, !tbaa !35, !noalias !60
  %1927 = and i32 %490, 1
  %1928 = uitofp i32 %1927 to float
  %1929 = fadd fast float %1928, 5.000000e-01
  %1930 = lshr i32 %490, 1
  %1931 = uitofp i32 %1930 to float
  %1932 = fadd fast float %1931, 5.000000e-01
  %1933 = fmul fast float %1929, %457
  %1934 = fmul fast float %1932, %458
  %1935 = fadd fast float %1933, %55
  %1936 = fadd fast float %1934, %56
  %1937 = fcmp fast olt float %1926, 6.550000e+04
  br i1 %1937, label %1938, label %2345, !dx.controlflow.hints !48

; <label>:1938                                    ; preds = %1920
  %1939 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i32 0, i32 0
  store i32 %419, i32* %1939, align 4
  %1940 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i32 0, i32 1
  store i32 %451, i32* %1940, align 4
  %1941 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i32 0, i32 2
  store i32 %431, i32* %1941, align 4
  %1942 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i32 0, i32 3
  store i32 %442, i32* %1942, align 4
  %1943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 99)  ; CBufferLoadLegacy(handle,regIndex)
  %1944 = extractvalue %dx.types.CBufRet.f32 %1943, 0
  %1945 = extractvalue %dx.types.CBufRet.f32 %1943, 1
  %1946 = extractvalue %dx.types.CBufRet.f32 %1943, 2
  %1947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 100)  ; CBufferLoadLegacy(handle,regIndex)
  %1948 = extractvalue %dx.types.CBufRet.f32 %1947, 0
  %1949 = extractvalue %dx.types.CBufRet.f32 %1947, 1
  %1950 = extractvalue %dx.types.CBufRet.f32 %1947, 2
  %1951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 101)  ; CBufferLoadLegacy(handle,regIndex)
  %1952 = extractvalue %dx.types.CBufRet.f32 %1951, 0
  %1953 = extractvalue %dx.types.CBufRet.f32 %1951, 1
  %1954 = extractvalue %dx.types.CBufRet.f32 %1951, 2
  %1955 = getelementptr [4 x i32], [4 x i32]* %22, i32 0, i32 %490
  %1956 = load i32, i32* %1955, align 4, !tbaa !31, !noalias !60
  %1957 = lshr i32 %1956, 8
  %1958 = and i32 %1956, 255
  %1959 = and i32 %1957, 255
  %1960 = uitofp i32 %1958 to float
  %1961 = uitofp i32 %1959 to float
  %1962 = fmul fast float %1960, 0x3F80101020000000
  %1963 = fmul fast float %1961, 0x3F80101020000000
  %1964 = fadd fast float %1962, -1.000000e+00
  %1965 = fadd fast float %1963, -1.000000e+00
  %1966 = call float @dx.op.unary.f32(i32 6, float %1964)  ; FAbs(value)
  %1967 = fsub fast float 1.000000e+00, %1966
  %1968 = call float @dx.op.unary.f32(i32 6, float %1965)  ; FAbs(value)
  %1969 = fsub fast float %1967, %1968
  %1970 = fsub fast float -0.000000e+00, %1969
  %1971 = call float @dx.op.binary.f32(i32 35, float %1970, float 0.000000e+00)  ; FMax(a,b)
  %1972 = fcmp fast ogt float %1964, 0.000000e+00
  %1973 = fsub fast float -0.000000e+00, %1971
  %1974 = select i1 %1972, float %1973, float %1971
  %1975 = fadd fast float %1974, %1964
  %1976 = fcmp fast ogt float %1965, 0.000000e+00
  %1977 = select i1 %1976, float %1973, float %1971
  %1978 = fadd fast float %1977, %1965
  %1979 = call float @dx.op.dot3.f32(i32 55, float %1975, float %1978, float %1969, float %1975, float %1978, float %1969)  ; Dot3(ax,ay,az,bx,by,bz)
  %1980 = call float @dx.op.unary.f32(i32 25, float %1979)  ; Rsqrt(value)
  %1981 = fmul fast float %1975, %1980
  %1982 = fmul fast float %1978, %1980
  %1983 = fmul fast float %1980, %1969
  %1984 = fmul fast float %1981, %1944
  %1985 = call float @dx.op.tertiary.f32(i32 46, float %1982, float %1945, float %1984)  ; FMad(a,b,c)
  %1986 = call float @dx.op.tertiary.f32(i32 46, float %1983, float %1946, float %1985)  ; FMad(a,b,c)
  %1987 = fmul fast float %1981, %1948
  %1988 = call float @dx.op.tertiary.f32(i32 46, float %1982, float %1949, float %1987)  ; FMad(a,b,c)
  %1989 = call float @dx.op.tertiary.f32(i32 46, float %1983, float %1950, float %1988)  ; FMad(a,b,c)
  %1990 = fmul fast float %1981, %1952
  %1991 = call float @dx.op.tertiary.f32(i32 46, float %1982, float %1953, float %1990)  ; FMad(a,b,c)
  %1992 = call float @dx.op.tertiary.f32(i32 46, float %1983, float %1954, float %1991)  ; FMad(a,b,c)
  %1993 = ashr i32 %38, 1
  %1994 = call float @dx.op.unary.f32(i32 6, float %1926)  ; FAbs(value)
  %1995 = fmul fast float %457, %42
  %1996 = fmul fast float %458, %43
  %1997 = fmul fast float %1994, %455
  %1998 = fmul fast float %456, %1994
  %1999 = fsub fast float -0.000000e+00, %1998
  %2000 = fdiv fast float 5.000000e+01, %1997
  %2001 = fdiv fast float 5.000000e+01, %1999
  %2002 = call float @dx.op.binary.f32(i32 36, float %1995, float %2000)  ; FMin(a,b)
  %2003 = call float @dx.op.binary.f32(i32 36, float %1996, float %2001)  ; FMin(a,b)
  %2004 = fmul fast float %1935, %453
  %2005 = fmul fast float %1936, %454
  %2006 = fsub fast float %2004, %455
  %2007 = fsub fast float %2005, %456
  %2008 = fmul fast float %1994, %2006
  %2009 = fmul fast float %1994, %2007
  %2010 = fsub fast float -0.000000e+00, %2008
  %2011 = fsub fast float -0.000000e+00, %2009
  %2012 = fsub fast float -0.000000e+00, %1994
  %2013 = call float @dx.op.dot3.f32(i32 55, float %2010, float %2011, float %2012, float %2010, float %2011, float %2012)  ; Dot3(ax,ay,az,bx,by,bz)
  %2014 = call float @dx.op.unary.f32(i32 25, float %2013)  ; Rsqrt(value)
  %2015 = fmul fast float %2014, %2010
  %2016 = fmul fast float %2014, %2011
  %2017 = fmul fast float %2014, %2012
  %2018 = fmul fast float %1994, 0x3FEFEB8520000000
  %2019 = fmul fast float %2002, %47
  %2020 = fmul fast float %2003, %48
  %2021 = fmul fast float %2019, %2019
  %2022 = fmul fast float %2020, %2020
  %2023 = fadd fast float %2022, %2021
  %2024 = call float @dx.op.unary.f32(i32 24, float %2023)  ; Sqrt(value)
  %2025 = fmul fast float %2024, 3.125000e-02
  %2026 = icmp sgt i32 %1062, 0
  br i1 %2026, label %2027, label %2341

; <label>:2027                                    ; preds = %1938
  br label %2028

; <label>:2028                                    ; preds = %2230, %2027
  %2029 = phi float [ %2337, %2230 ], [ 0.000000e+00, %2027 ]
  %2030 = phi i32 [ %2338, %2230 ], [ 0, %2027 ]
  %2031 = phi float [ %2333, %2230 ], [ 0.000000e+00, %2027 ]
  %2032 = sitofp i32 %1062 to float
  %2033 = fdiv fast float 0x400921FB60000000, %2032
  %2034 = sitofp i32 %2030 to float
  %2035 = fadd fast float %2034, %553
  %2036 = fmul fast float %2033, %2035
  %2037 = call float @dx.op.unary.f32(i32 12, float %2036)  ; Cos(value)
  %2038 = call float @dx.op.unary.f32(i32 13, float %2036)  ; Sin(value)
  %2039 = fsub fast float -0.000000e+00, %2038
  %2040 = call float @dx.op.dot3.f32(i32 55, float %2015, float %2016, float %2017, float %1986, float %1989, float %1992)  ; Dot3(ax,ay,az,bx,by,bz)
  %2041 = call float @dx.op.unary.f32(i32 6, float %2040)  ; FAbs(value)
  %2042 = call float @dx.op.unary.f32(i32 6, float %2041)  ; FAbs(value)
  %2043 = fcmp fast ogt float %2042, 0x3EB0C6F7A0000000
  %2044 = call float @dx.op.dot3.f32(i32 55, float %2037, float %2039, float 0.000000e+00, float %1986, float %1989, float %1992)  ; Dot3(ax,ay,az,bx,by,bz)
  %2045 = fsub fast float -0.000000e+00, %2044
  %2046 = fdiv fast float %2045, %2041
  %2047 = select i1 %2043, float %2046, float 0.000000e+00
  %2048 = fmul fast float %2047, %2047
  %2049 = fadd fast float %2048, 1.000000e+00
  %2050 = call float @dx.op.unary.f32(i32 25, float %2049)  ; Rsqrt(value)
  %2051 = fmul fast float %2047, %2050
  %2052 = fsub fast float -0.000000e+00, %2051
  %2053 = icmp sgt i32 %1993, 0
  br i1 %2053, label %2054, label %2141

; <label>:2054                                    ; preds = %2028
  br label %2055

; <label>:2055                                    ; preds = %2055, %2054
  %2056 = phi float [ %2137, %2055 ], [ %2051, %2054 ]
  %2057 = phi float [ %2123, %2055 ], [ 2.000000e+02, %2054 ]
  %2058 = phi i32 [ %2138, %2055 ], [ 0, %2054 ]
  %2059 = sitofp i32 %1993 to float
  %2060 = fdiv fast float 1.000000e+00, %2059
  %2061 = sitofp i32 %2058 to float
  %2062 = fadd fast float %2061, %574
  %2063 = fmul fast float %2062, %2060
  %2064 = fmul fast float %2063, %2063
  %2065 = fmul fast float %2064, %2025
  %2066 = call float @dx.op.binary.f32(i32 36, float %2065, float 3.000000e+00)  ; FMin(a,b)
  %2067 = fadd fast float %2066, 1.000000e+00
  %2068 = fmul fast float %2064, %2002
  %2069 = fmul fast float %2064, %2003
  %2070 = fadd fast float %2068, %51
  %2071 = fmul fast float %2070, %2037
  %2072 = fadd fast float %2071, %1935
  %2073 = fadd fast float %2069, %52
  %2074 = fmul fast float %2073, %2038
  %2075 = fadd fast float %2074, %1936
  %2076 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %13, float %2072, float %2075, float undef, float undef, i32 0, i32 0, i32 undef, float %2067)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2077 = extractvalue %dx.types.ResRet.f32 %2076, 0
  %2078 = fcmp fast ogt float %2077, -1.000000e+00
  %2079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %2080 = extractvalue %dx.types.CBufRet.f32 %2079, 1
  %2081 = select i1 %2078, float %2080, float 1.000000e+00
  %2082 = fadd fast float %2077, 1.000000e+00
  %2083 = fmul fast float %2081, %2082
  %2084 = call float @dx.op.unary.f32(i32 6, float %2083)  ; FAbs(value)
  %2085 = fmul fast float %2072, %453
  %2086 = fmul fast float %2075, %454
  %2087 = fsub fast float %2085, %455
  %2088 = fsub fast float %2086, %456
  %2089 = fmul fast float %2087, %2084
  %2090 = fmul fast float %2088, %2084
  %2091 = fsub fast float %2089, %2008
  %2092 = fsub fast float %2090, %2009
  %2093 = fsub fast float %2084, %2018
  %2094 = call float @dx.op.dot3.f32(i32 55, float %2091, float %2092, float %2093, float %2091, float %2092, float %2093)  ; Dot3(ax,ay,az,bx,by,bz)
  %2095 = call float @dx.op.dot3.f32(i32 55, float %2091, float %2092, float %2093, float %1986, float %1989, float %1992)  ; Dot3(ax,ay,az,bx,by,bz)
  %2096 = fsub fast float -0.000000e+00, %2095
  %2097 = call float @dx.op.dot3.f32(i32 55, float %2091, float %2092, float %2093, float %2015, float %2016, float %2017)  ; Dot3(ax,ay,az,bx,by,bz)
  %2098 = call float @dx.op.unary.f32(i32 25, float %2094)  ; Rsqrt(value)
  %2099 = fmul fast float %2098, %2097
  %2100 = bitcast float %2094 to i32
  %2101 = ashr i32 %2100, 1
  %2102 = add nsw i32 %2101, 532487669
  %2103 = bitcast i32 %2102 to float
  %2104 = fmul fast float %2103, 0x3F947AE140000000
  %2105 = fsub fast float 2.000000e+00, %2104
  %2106 = call float @dx.op.unary.f32(i32 7, float %2105)  ; Saturate(value)
  %2107 = fmul fast float %2103, 0x3F7B4E81C0000000
  %2108 = fsub fast float 0x3FF5555560000000, %2107
  %2109 = call float @dx.op.unary.f32(i32 7, float %2108)  ; Saturate(value)
  %2110 = fmul fast float %2084, 0x3F947AE140000000
  %2111 = fadd fast float %2110, -1.000000e+00
  %2112 = call float @dx.op.unary.f32(i32 7, float %2111)  ; Saturate(value)
  %2113 = fsub fast float %2109, %2106
  %2114 = fmul fast float %2112, %2113
  %2115 = fadd fast float %2114, %2106
  %2116 = fmul fast float %2083, %1926
  %2117 = fcmp fast ogt float %2116, 0.000000e+00
  %2118 = select i1 %2117, float %2115, float 0.000000e+00
  %2119 = fadd fast float %2099, 1.000000e+00
  %2120 = fmul fast float %2118, %2119
  %2121 = fadd fast float %2120, -1.000000e+00
  %2122 = fcmp fast ogt float %2121, %2056
  %2123 = select i1 %2122, float %2096, float %2057
  %2124 = fsub fast float %2096, %2123
  %2125 = fmul fast float %2124, 0x3FB9999940000000
  %2126 = fadd fast float %2125, 0xBFDFFFFF80000000
  %2127 = call float @dx.op.unary.f32(i32 7, float %2126)  ; Saturate(value)
  %2128 = fmul fast float %2095, 0x3FC99999E0000000
  %2129 = fadd fast float %2128, 0x3FF0000020000000
  %2130 = call float @dx.op.unary.f32(i32 7, float %2129)  ; Saturate(value)
  %2131 = sitofp i32 %38 to float
  %2132 = fdiv fast float 8.000000e+00, %2131
  %2133 = fmul fast float %2130, %2127
  %2134 = fmul fast float %2133, %2132
  %2135 = fsub fast float %2056, %2134
  %2136 = fcmp ole float %2121, %2135
  %2137 = select i1 %2136, float %2135, float %2121
  %2138 = add nuw nsw i32 %2058, 1
  %2139 = icmp eq i32 %2138, %1993
  br i1 %2139, label %2140, label %2055

; <label>:2140                                    ; preds = %2055
  br label %2141

; <label>:2141                                    ; preds = %2140, %2028
  %2142 = phi float [ %2051, %2028 ], [ %2137, %2140 ]
  br i1 %2053, label %2143, label %2230

; <label>:2143                                    ; preds = %2141
  br label %2144

; <label>:2144                                    ; preds = %2144, %2143
  %2145 = phi float [ %2226, %2144 ], [ %2052, %2143 ]
  %2146 = phi float [ %2212, %2144 ], [ 2.000000e+02, %2143 ]
  %2147 = phi i32 [ %2227, %2144 ], [ 0, %2143 ]
  %2148 = sitofp i32 %1993 to float
  %2149 = fdiv fast float 1.000000e+00, %2148
  %2150 = sitofp i32 %2147 to float
  %2151 = fadd fast float %2150, %574
  %2152 = fmul fast float %2151, %2149
  %2153 = fmul fast float %2152, %2152
  %2154 = fmul fast float %2153, %2025
  %2155 = call float @dx.op.binary.f32(i32 36, float %2154, float 3.000000e+00)  ; FMin(a,b)
  %2156 = fadd fast float %2155, 1.000000e+00
  %2157 = fmul fast float %2153, %2002
  %2158 = fmul fast float %2153, %2003
  %2159 = fadd fast float %2157, %51
  %2160 = fmul fast float %2037, %2159
  %2161 = fsub fast float %1935, %2160
  %2162 = fadd fast float %2158, %52
  %2163 = fmul fast float %2038, %2162
  %2164 = fsub fast float %1936, %2163
  %2165 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %13, float %2161, float %2164, float undef, float undef, i32 0, i32 0, i32 undef, float %2156)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2166 = extractvalue %dx.types.ResRet.f32 %2165, 0
  %2167 = fcmp fast ogt float %2166, -1.000000e+00
  %2168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %2169 = extractvalue %dx.types.CBufRet.f32 %2168, 1
  %2170 = select i1 %2167, float %2169, float 1.000000e+00
  %2171 = fadd fast float %2166, 1.000000e+00
  %2172 = fmul fast float %2170, %2171
  %2173 = call float @dx.op.unary.f32(i32 6, float %2172)  ; FAbs(value)
  %2174 = fmul fast float %2161, %453
  %2175 = fmul fast float %2164, %454
  %2176 = fsub fast float %2174, %455
  %2177 = fsub fast float %2175, %456
  %2178 = fmul fast float %2176, %2173
  %2179 = fmul fast float %2177, %2173
  %2180 = fsub fast float %2178, %2008
  %2181 = fsub fast float %2179, %2009
  %2182 = fsub fast float %2173, %2018
  %2183 = call float @dx.op.dot3.f32(i32 55, float %2180, float %2181, float %2182, float %2180, float %2181, float %2182)  ; Dot3(ax,ay,az,bx,by,bz)
  %2184 = call float @dx.op.dot3.f32(i32 55, float %2180, float %2181, float %2182, float %1986, float %1989, float %1992)  ; Dot3(ax,ay,az,bx,by,bz)
  %2185 = fsub fast float -0.000000e+00, %2184
  %2186 = call float @dx.op.dot3.f32(i32 55, float %2180, float %2181, float %2182, float %2015, float %2016, float %2017)  ; Dot3(ax,ay,az,bx,by,bz)
  %2187 = call float @dx.op.unary.f32(i32 25, float %2183)  ; Rsqrt(value)
  %2188 = fmul fast float %2187, %2186
  %2189 = bitcast float %2183 to i32
  %2190 = ashr i32 %2189, 1
  %2191 = add nsw i32 %2190, 532487669
  %2192 = bitcast i32 %2191 to float
  %2193 = fmul fast float %2192, 0x3F947AE140000000
  %2194 = fsub fast float 2.000000e+00, %2193
  %2195 = call float @dx.op.unary.f32(i32 7, float %2194)  ; Saturate(value)
  %2196 = fmul fast float %2192, 0x3F7B4E81C0000000
  %2197 = fsub fast float 0x3FF5555560000000, %2196
  %2198 = call float @dx.op.unary.f32(i32 7, float %2197)  ; Saturate(value)
  %2199 = fmul fast float %2173, 0x3F947AE140000000
  %2200 = fadd fast float %2199, -1.000000e+00
  %2201 = call float @dx.op.unary.f32(i32 7, float %2200)  ; Saturate(value)
  %2202 = fsub fast float %2198, %2195
  %2203 = fmul fast float %2201, %2202
  %2204 = fadd fast float %2203, %2195
  %2205 = fmul fast float %2172, %1926
  %2206 = fcmp fast ogt float %2205, 0.000000e+00
  %2207 = select i1 %2206, float %2204, float 0.000000e+00
  %2208 = fadd fast float %2188, 1.000000e+00
  %2209 = fmul fast float %2207, %2208
  %2210 = fadd fast float %2209, -1.000000e+00
  %2211 = fcmp fast ogt float %2210, %2145
  %2212 = select i1 %2211, float %2185, float %2146
  %2213 = fsub fast float %2185, %2212
  %2214 = fmul fast float %2213, 0x3FB9999940000000
  %2215 = fadd fast float %2214, 0xBFDFFFFF80000000
  %2216 = call float @dx.op.unary.f32(i32 7, float %2215)  ; Saturate(value)
  %2217 = fmul fast float %2184, 0x3FC99999E0000000
  %2218 = fadd fast float %2217, 0x3FF0000020000000
  %2219 = call float @dx.op.unary.f32(i32 7, float %2218)  ; Saturate(value)
  %2220 = sitofp i32 %38 to float
  %2221 = fdiv fast float 8.000000e+00, %2220
  %2222 = fmul fast float %2219, %2216
  %2223 = fmul fast float %2222, %2221
  %2224 = fsub fast float %2145, %2223
  %2225 = fcmp ole float %2210, %2224
  %2226 = select i1 %2225, float %2224, float %2210
  %2227 = add nuw nsw i32 %2147, 1
  %2228 = icmp eq i32 %2227, %1993
  br i1 %2228, label %2229, label %2144

; <label>:2229                                    ; preds = %2144
  br label %2230

; <label>:2230                                    ; preds = %2229, %2141
  %2231 = phi float [ %2052, %2141 ], [ %2226, %2229 ]
  %2232 = fmul fast float %2017, %2039
  %2233 = fmul fast float %2017, %2037
  %2234 = fsub fast float -0.000000e+00, %2233
  %2235 = fmul fast float %2037, %2016
  %2236 = fmul fast float %2015, %2039
  %2237 = fsub fast float %2235, %2236
  %2238 = call float @dx.op.dot3.f32(i32 55, float %1986, float %1989, float %1992, float %2232, float %2234, float %2237)  ; Dot3(ax,ay,az,bx,by,bz)
  %2239 = fmul fast float %2238, %2232
  %2240 = fmul fast float %2238, %2234
  %2241 = fmul fast float %2238, %2237
  %2242 = fsub fast float %1986, %2239
  %2243 = fsub fast float %1989, %2240
  %2244 = fsub fast float %1992, %2241
  %2245 = fmul fast float %2242, %2242
  %2246 = fmul fast float %2243, %2243
  %2247 = fadd fast float %2245, %2246
  %2248 = fmul fast float %2244, %2244
  %2249 = fadd fast float %2247, %2248
  %2250 = call float @dx.op.unary.f32(i32 24, float %2249)  ; Sqrt(value)
  %2251 = call float @dx.op.dot3.f32(i32 55, float %2037, float %2039, float 0.000000e+00, float %2242, float %2243, float %2244)  ; Dot3(ax,ay,az,bx,by,bz)
  %2252 = call float @dx.op.dot3.f32(i32 55, float %2037, float %2039, float 0.000000e+00, float %2015, float %2016, float %2017)  ; Dot3(ax,ay,az,bx,by,bz)
  %2253 = fmul fast float %2252, %2015
  %2254 = fmul fast float %2252, %2016
  %2255 = fmul fast float %2252, %2017
  %2256 = call float @dx.op.dot3.f32(i32 55, float %2253, float %2254, float %2255, float %2242, float %2243, float %2244)  ; Dot3(ax,ay,az,bx,by,bz)
  %2257 = fcmp fast oge float %2251, %2256
  %2258 = fdiv fast float 1.000000e+00, %2250
  %2259 = call float @dx.op.dot3.f32(i32 55, float %2242, float %2243, float %2244, float %2015, float %2016, float %2017)  ; Dot3(ax,ay,az,bx,by,bz)
  %2260 = fmul fast float %2259, %2258
  %2261 = call float @dx.op.unary.f32(i32 7, float %2260)  ; Saturate(value)
  %2262 = fmul fast float %2261, %2261
  %2263 = fsub fast float 1.000000e+00, %2262
  %2264 = bitcast float %2263 to i32
  %2265 = ashr i32 %2264, 1
  %2266 = add nsw i32 %2265, 532487669
  %2267 = bitcast i32 %2266 to float
  %2268 = call float @dx.op.unary.f32(i32 6, float %2261)  ; FAbs(value)
  %2269 = fmul fast float %2268, 0x3FC40AE960000000
  %2270 = fsub fast float 0x3FF921FB60000000, %2269
  %2271 = fsub fast float 1.000000e+00, %2268
  %2272 = bitcast float %2271 to i32
  %2273 = ashr i32 %2272, 1
  %2274 = add nsw i32 %2273, 532487669
  %2275 = bitcast i32 %2274 to float
  %2276 = fmul fast float %2275, %2270
  %2277 = fcmp fast oge float %2261, 0.000000e+00
  %2278 = fsub fast float 0x400921FB60000000, %2276
  %2279 = select i1 %2277, float %2276, float %2278
  %2280 = fsub fast float -0.000000e+00, %2267
  %2281 = select i1 %2257, float %2280, float %2267
  %2282 = fsub fast float -0.000000e+00, %2279
  %2283 = select i1 %2257, float %2282, float %2279
  %2284 = call float @dx.op.unary.f32(i32 6, float %2142)  ; FAbs(value)
  %2285 = fmul fast float %2284, 0x3FC40AE960000000
  %2286 = fsub fast float 0x3FF921FB60000000, %2285
  %2287 = fsub fast float 1.000000e+00, %2284
  %2288 = bitcast float %2287 to i32
  %2289 = ashr i32 %2288, 1
  %2290 = add nsw i32 %2289, 532487669
  %2291 = bitcast i32 %2290 to float
  %2292 = fmul fast float %2291, %2286
  %2293 = fcmp fast oge float %2142, 0.000000e+00
  %2294 = fsub fast float 0x400921FB60000000, %2292
  %2295 = select i1 %2293, float %2292, float %2294
  %2296 = call float @dx.op.unary.f32(i32 6, float %2231)  ; FAbs(value)
  %2297 = fmul fast float %2296, 0x3FC40AE960000000
  %2298 = fsub fast float 0x3FF921FB60000000, %2297
  %2299 = fsub fast float 1.000000e+00, %2296
  %2300 = bitcast float %2299 to i32
  %2301 = ashr i32 %2300, 1
  %2302 = add nsw i32 %2301, 532487669
  %2303 = bitcast i32 %2302 to float
  %2304 = fmul fast float %2303, %2298
  %2305 = fcmp fast oge float %2231, 0.000000e+00
  %2306 = fsub fast float 0x400921FB60000000, %2304
  %2307 = select i1 %2305, float %2304, float %2306
  %2308 = fsub fast float -0.000000e+00, %2283
  %2309 = fsub fast float %2308, %2295
  %2310 = call float @dx.op.binary.f32(i32 35, float %2309, float 0xBFF921FB60000000)  ; FMax(a,b)
  %2311 = call float @dx.op.binary.f32(i32 36, float %2310, float 0x3FF921FB60000000)  ; FMin(a,b)
  %2312 = fadd fast float %2283, %2311
  %2313 = fsub fast float %2307, %2283
  %2314 = call float @dx.op.binary.f32(i32 35, float %2313, float 0xBFF921FB60000000)  ; FMax(a,b)
  %2315 = call float @dx.op.binary.f32(i32 36, float %2314, float 0x3FF921FB60000000)  ; FMin(a,b)
  %2316 = fadd fast float %2283, %2315
  %2317 = fmul fast float %2312, 2.000000e+00
  %2318 = fsub fast float %2317, %2283
  %2319 = call float @dx.op.unary.f32(i32 12, float %2318)  ; Cos(value)
  %2320 = fsub fast float -0.000000e+00, %2319
  %2321 = fmul fast float %2316, 2.000000e+00
  %2322 = fsub fast float %2321, %2283
  %2323 = call float @dx.op.unary.f32(i32 12, float %2322)  ; Cos(value)
  %2324 = fmul fast float %2261, 2.000000e+00
  %2325 = fadd fast float %2316, %2312
  %2326 = fmul fast float %2281, %2325
  %2327 = fmul fast float %2326, 2.000000e+00
  %2328 = fsub fast float %2320, %2323
  %2329 = fadd fast float %2328, %2324
  %2330 = fadd fast float %2329, %2327
  %2331 = fmul fast float %2250, 2.500000e-01
  %2332 = fmul fast float %2331, %2330
  %2333 = fadd fast float %2332, %2031
  %2334 = fmul fast float %2283, %2281
  %2335 = fadd fast float %2334, %2261
  %2336 = fmul fast float %2335, %2250
  %2337 = fadd fast float %2336, %2029
  %2338 = add nuw nsw i32 %2030, 1
  %2339 = icmp eq i32 %2338, %1062
  br i1 %2339, label %2340, label %2028

; <label>:2340                                    ; preds = %2230
  br label %2341

; <label>:2341                                    ; preds = %2340, %1938
  %2342 = phi float [ 0.000000e+00, %1938 ], [ %2337, %2340 ]
  %2343 = phi float [ 0.000000e+00, %1938 ], [ %2333, %2340 ]
  %2344 = fdiv fast float %2343, %2342
  br label %2345

; <label>:2345                                    ; preds = %2341, %1920, %1917
  %2346 = phi float [ %1000, %1917 ], [ %2344, %2341 ], [ 1.000000e+00, %1920 ]
  %2347 = load float, float* %463, align 4
  %2348 = load float, float* %464, align 4
  %2349 = load float, float* %465, align 4
  %2350 = load float, float* %466, align 4
  %2351 = icmp eq i32 %1057, 2
  br i1 %2351, label %2352, label %2377, !dx.controlflow.hints !64

; <label>:2352                                    ; preds = %2345
  %2353 = getelementptr inbounds [4 x float], [4 x float]* %21, i32 0, i32 0
  store float %2347, float* %2353, align 4
  %2354 = getelementptr inbounds [4 x float], [4 x float]* %21, i32 0, i32 1
  store float %2348, float* %2354, align 4
  %2355 = getelementptr inbounds [4 x float], [4 x float]* %21, i32 0, i32 2
  store float %2349, float* %2355, align 4
  %2356 = getelementptr inbounds [4 x float], [4 x float]* %21, i32 0, i32 3
  store float %2350, float* %2356, align 4
  %2357 = getelementptr [4 x float], [4 x float]* %21, i32 0, i32 %483
  %2358 = load float, float* %2357, align 4, !tbaa !35, !noalias !65
  %2359 = fsub fast float %2358, %492
  %2360 = call float @dx.op.unary.f32(i32 6, float %2359)  ; FAbs(value)
  %2361 = fsub fast float %2358, %494
  %2362 = call float @dx.op.unary.f32(i32 6, float %2361)  ; FAbs(value)
  %2363 = fcmp fast olt float %2360, %2362
  %2364 = select i1 %2363, float %1000, float %1490
  %2365 = getelementptr inbounds [4 x float], [4 x float]* %20, i32 0, i32 0
  store float %2347, float* %2365, align 4
  %2366 = getelementptr inbounds [4 x float], [4 x float]* %20, i32 0, i32 1
  store float %2348, float* %2366, align 4
  %2367 = getelementptr inbounds [4 x float], [4 x float]* %20, i32 0, i32 2
  store float %2349, float* %2367, align 4
  %2368 = getelementptr inbounds [4 x float], [4 x float]* %20, i32 0, i32 3
  store float %2350, float* %2368, align 4
  %2369 = getelementptr [4 x float], [4 x float]* %20, i32 0, i32 %490
  %2370 = load float, float* %2369, align 4, !tbaa !35, !noalias !72
  %2371 = fsub fast float %2370, %492
  %2372 = call float @dx.op.unary.f32(i32 6, float %2371)  ; FAbs(value)
  %2373 = fsub fast float %2370, %494
  %2374 = call float @dx.op.unary.f32(i32 6, float %2373)  ; FAbs(value)
  %2375 = fcmp fast olt float %2372, %2374
  %2376 = select i1 %2375, float %1000, float %1490
  br label %2392

; <label>:2377                                    ; preds = %2345
  %2378 = icmp eq i32 %1057, 3
  br i1 %2378, label %2379, label %2392, !dx.controlflow.hints !76

; <label>:2379                                    ; preds = %2377
  %2380 = getelementptr inbounds [4 x float], [4 x float]* %19, i32 0, i32 0
  store float %2347, float* %2380, align 4
  %2381 = getelementptr inbounds [4 x float], [4 x float]* %19, i32 0, i32 1
  store float %2348, float* %2381, align 4
  %2382 = getelementptr inbounds [4 x float], [4 x float]* %19, i32 0, i32 2
  store float %2349, float* %2382, align 4
  %2383 = getelementptr inbounds [4 x float], [4 x float]* %19, i32 0, i32 3
  store float %2350, float* %2383, align 4
  %2384 = getelementptr [4 x float], [4 x float]* %19, i32 0, i32 %490
  %2385 = load float, float* %2384, align 4, !tbaa !35, !noalias !77
  %2386 = fsub fast float %2385, %492
  %2387 = call float @dx.op.unary.f32(i32 6, float %2386)  ; FAbs(value)
  %2388 = fsub fast float %2385, %494
  %2389 = call float @dx.op.unary.f32(i32 6, float %2388)  ; FAbs(value)
  %2390 = fcmp fast olt float %2387, %2389
  %2391 = select i1 %2390, float %1000, float %1490
  br label %2392

; <label>:2392                                    ; preds = %2379, %2377, %2352
  %2393 = phi float [ %2391, %2379 ], [ %2346, %2377 ], [ %2376, %2352 ]
  %2394 = phi float [ %1918, %2379 ], [ %1918, %2377 ], [ %2364, %2352 ]
  %2395 = icmp eq i32 %482, 1
  %2396 = select i1 %2395, float %1000, float %1490
  %2397 = icmp eq i32 %482, 2
  %2398 = select i1 %2397, float %1000, float %2394
  %2399 = icmp eq i32 %482, 3
  %2400 = select i1 %2399, float %1000, float %2393
  %2401 = icmp eq i32 %489, 0
  %2402 = select i1 %2401, float %1490, float %1000
  %2403 = icmp eq i32 %489, 1
  %2404 = select i1 %2403, float %1490, float %2396
  %2405 = icmp eq i32 %489, 2
  %2406 = select i1 %2405, float %1490, float %2398
  %2407 = icmp eq i32 %489, 3
  %2408 = select i1 %2407, float %1490, float %2400
  %2409 = icmp eq i32 %483, 0
  %2410 = select i1 %2409, float %2394, float %2402
  %2411 = icmp eq i32 %483, 1
  %2412 = select i1 %2411, float %2394, float %2404
  %2413 = icmp eq i32 %483, 2
  %2414 = select i1 %2413, float %2394, float %2406
  %2415 = icmp eq i32 %483, 3
  %2416 = select i1 %2415, float %2394, float %2408
  %2417 = icmp eq i32 %490, 0
  %2418 = select i1 %2417, float %2393, float %2410
  %2419 = icmp eq i32 %490, 1
  %2420 = select i1 %2419, float %2393, float %2412
  %2421 = icmp eq i32 %490, 2
  %2422 = select i1 %2421, float %2393, float %2414
  %2423 = icmp eq i32 %490, 3
  %2424 = select i1 %2423, float %2393, float %2416
  %2425 = fadd fast float %2418, -1.000000e+00
  %2426 = fadd fast float %2420, -1.000000e+00
  %2427 = fadd fast float %2422, -1.000000e+00
  %2428 = fadd fast float %2424, -1.000000e+00
  %2429 = fmul fast float %2425, %366
  %2430 = fmul fast float %2426, %366
  %2431 = fmul fast float %2427, %366
  %2432 = fmul fast float %2428, %366
  %2433 = fadd fast float %2429, 1.000000e+00
  %2434 = fadd fast float %2430, 1.000000e+00
  %2435 = fadd fast float %2431, 1.000000e+00
  %2436 = fadd fast float %2432, 1.000000e+00
  %2437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %2438 = extractvalue %dx.types.CBufRet.f32 %2437, 2
  %2439 = extractvalue %dx.types.CBufRet.f32 %2437, 3
  %2440 = fadd fast float %2438, %55
  %2441 = fadd fast float %2439, %56
  %2442 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %12, float %2440, float %2441, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2443 = extractvalue %dx.types.ResRet.f32 %2442, 0
  %2444 = call float @dx.op.binary.f32(i32 36, float %2443, float %2433)  ; FMin(a,b)
  %2445 = call float @dx.op.binary.f32(i32 36, float %2443, float %2434)  ; FMin(a,b)
  %2446 = call float @dx.op.binary.f32(i32 36, float %2443, float %2435)  ; FMin(a,b)
  %2447 = call float @dx.op.binary.f32(i32 36, float %2443, float %2436)  ; FMin(a,b)
  %2448 = fmul fast float %2443, %2433
  %2449 = fmul fast float %2443, %2434
  %2450 = fmul fast float %2443, %2435
  %2451 = fmul fast float %2443, %2436
  %2452 = fsub fast float %2444, %2448
  %2453 = fsub fast float %2445, %2449
  %2454 = fsub fast float %2446, %2450
  %2455 = fsub fast float %2447, %2451
  %2456 = fmul fast float %2452, 7.500000e-01
  %2457 = fmul fast float %2453, 7.500000e-01
  %2458 = fmul fast float %2454, 7.500000e-01
  %2459 = fmul fast float %2455, 7.500000e-01
  %2460 = fadd fast float %2456, %2448
  %2461 = fadd fast float %2457, %2449
  %2462 = fadd fast float %2458, %2450
  %2463 = fadd fast float %2459, %2451
  %2464 = fmul fast float %49, 5.000000e-01
  %2465 = fmul fast float %50, 5.000000e-01
  %2466 = fadd fast float %55, %2464
  %2467 = fadd fast float %56, %2465
  %2468 = fsub fast float %2466, %102
  %2469 = fsub fast float %2467, %103
  %2470 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %12, float %2468, float %2469, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2471 = extractvalue %dx.types.ResRet.f32 %2470, 0
  %2472 = fsub fast float %2471, %2460
  %2473 = fmul fast float %2472, %357
  %2474 = fadd fast float %2473, %2460
  %2475 = shl i32 %16, 1
  %2476 = shl i32 %17, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %2475, i32 %2476, i32 undef, float %2474, float %2474, float %2474, float %2474, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %2477 = fptoui float %356 to i32
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2478 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %18
  store i32 %2477, i32 addrspace(3)* %2478, align 4, !tbaa !31
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2479 = icmp ult i32 %206, 32
  br i1 %2479, label %2480, label %2486, !dx.controlflow.hints !81

; <label>:2480                                    ; preds = %2392
  %2481 = add i32 %18, 32
  %2482 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2481
  %2483 = load i32, i32 addrspace(3)* %2482, align 4, !tbaa !31
  %2484 = load i32, i32 addrspace(3)* %2478, align 4, !tbaa !31
  %2485 = add i32 %2484, %2483
  store i32 %2485, i32 addrspace(3)* %2478, align 4, !tbaa !31
  br label %2486

; <label>:2486                                    ; preds = %2480, %2392
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %2487 = icmp ult i32 %206, 16
  br i1 %2487, label %2488, label %2494, !dx.controlflow.hints !82

; <label>:2488                                    ; preds = %2486
  %2489 = add i32 %18, 16
  %2490 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2489
  %2491 = load i32, i32 addrspace(3)* %2490, align 4, !tbaa !31
  %2492 = load i32, i32 addrspace(3)* %2478, align 4, !tbaa !31
  %2493 = add i32 %2492, %2491
  store i32 %2493, i32 addrspace(3)* %2478, align 4, !tbaa !31
  br label %2494

; <label>:2494                                    ; preds = %2488, %2486
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %2495 = icmp ult i32 %206, 8
  br i1 %2495, label %2496, label %2502, !dx.controlflow.hints !83

; <label>:2496                                    ; preds = %2494
  %2497 = add i32 %18, 8
  %2498 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2497
  %2499 = load i32, i32 addrspace(3)* %2498, align 4, !tbaa !31
  %2500 = load i32, i32 addrspace(3)* %2478, align 4, !tbaa !31
  %2501 = add i32 %2500, %2499
  store i32 %2501, i32 addrspace(3)* %2478, align 4, !tbaa !31
  br label %2502

; <label>:2502                                    ; preds = %2496, %2494
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %2503 = icmp ult i32 %206, 4
  br i1 %2503, label %2504, label %2510, !dx.controlflow.hints !84

; <label>:2504                                    ; preds = %2502
  %2505 = add i32 %18, 4
  %2506 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2505
  %2507 = load i32, i32 addrspace(3)* %2506, align 4, !tbaa !31
  %2508 = load i32, i32 addrspace(3)* %2478, align 4, !tbaa !31
  %2509 = add i32 %2508, %2507
  store i32 %2509, i32 addrspace(3)* %2478, align 4, !tbaa !31
  br label %2510

; <label>:2510                                    ; preds = %2504, %2502
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %2511 = icmp ult i32 %206, 2
  br i1 %2511, label %2512, label %2518, !dx.controlflow.hints !85

; <label>:2512                                    ; preds = %2510
  %2513 = add i32 %18, 2
  %2514 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2513
  %2515 = load i32, i32 addrspace(3)* %2514, align 4, !tbaa !31
  %2516 = load i32, i32 addrspace(3)* %2478, align 4, !tbaa !31
  %2517 = add i32 %2516, %2515
  store i32 %2517, i32 addrspace(3)* %2478, align 4, !tbaa !31
  br label %2518

; <label>:2518                                    ; preds = %2512, %2510
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %2519 = icmp eq i32 %206, 0
  br i1 %2519, label %2520, label %2526, !dx.controlflow.hints !86

; <label>:2520                                    ; preds = %2518
  %2521 = add i32 %18, 1
  %2522 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2521
  %2523 = load i32, i32 addrspace(3)* %2522, align 4, !tbaa !31
  %2524 = load i32, i32 addrspace(3)* %2478, align 4, !tbaa !31
  %2525 = add i32 %2524, %2523
  store i32 %2525, i32 addrspace(3)* %2478, align 4, !tbaa !31
  br label %2526

; <label>:2526                                    ; preds = %2520, %2518
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2527 = and i32 %18, -64
  %2528 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2527
  %2529 = load i32, i32 addrspace(3)* %2528, align 4, !tbaa !31
  %2530 = fmul fast float %49, 1.500000e+00
  %2531 = fadd fast float %55, %2530
  %2532 = fsub fast float %2531, %102
  %2533 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %12, float %2532, float %2469, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2534 = extractvalue %dx.types.ResRet.f32 %2533, 0
  %2535 = fsub fast float %2534, %2461
  %2536 = fmul fast float %2535, %357
  %2537 = fadd fast float %2536, %2461
  %2538 = or i32 %2475, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %2538, i32 %2476, i32 undef, float %2537, float %2537, float %2537, float %2537, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %2477, i32 addrspace(3)* %2478, align 4, !tbaa !31
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %2479, label %2539, label %2545, !dx.controlflow.hints !81

; <label>:2539                                    ; preds = %2526
  %2540 = add i32 %18, 32
  %2541 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2540
  %2542 = load i32, i32 addrspace(3)* %2541, align 4, !tbaa !31
  %2543 = load i32, i32 addrspace(3)* %2478, align 4, !tbaa !31
  %2544 = add i32 %2543, %2542
  store i32 %2544, i32 addrspace(3)* %2478, align 4, !tbaa !31
  br label %2545

; <label>:2545                                    ; preds = %2539, %2526
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2487, label %2546, label %2552, !dx.controlflow.hints !82

; <label>:2546                                    ; preds = %2545
  %2547 = add i32 %18, 16
  %2548 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2547
  %2549 = load i32, i32 addrspace(3)* %2548, align 4, !tbaa !31
  %2550 = load i32, i32 addrspace(3)* %2478, align 4, !tbaa !31
  %2551 = add i32 %2550, %2549
  store i32 %2551, i32 addrspace(3)* %2478, align 4, !tbaa !31
  br label %2552

; <label>:2552                                    ; preds = %2546, %2545
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2495, label %2553, label %2559, !dx.controlflow.hints !83

; <label>:2553                                    ; preds = %2552
  %2554 = add i32 %18, 8
  %2555 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2554
  %2556 = load i32, i32 addrspace(3)* %2555, align 4, !tbaa !31
  %2557 = load i32, i32 addrspace(3)* %2478, align 4, !tbaa !31
  %2558 = add i32 %2557, %2556
  store i32 %2558, i32 addrspace(3)* %2478, align 4, !tbaa !31
  br label %2559

; <label>:2559                                    ; preds = %2553, %2552
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2503, label %2560, label %2566, !dx.controlflow.hints !84

; <label>:2560                                    ; preds = %2559
  %2561 = add i32 %18, 4
  %2562 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2561
  %2563 = load i32, i32 addrspace(3)* %2562, align 4, !tbaa !31
  %2564 = load i32, i32 addrspace(3)* %2478, align 4, !tbaa !31
  %2565 = add i32 %2564, %2563
  store i32 %2565, i32 addrspace(3)* %2478, align 4, !tbaa !31
  br label %2566

; <label>:2566                                    ; preds = %2560, %2559
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2511, label %2567, label %2573, !dx.controlflow.hints !85

; <label>:2567                                    ; preds = %2566
  %2568 = add i32 %18, 2
  %2569 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2568
  %2570 = load i32, i32 addrspace(3)* %2569, align 4, !tbaa !31
  %2571 = load i32, i32 addrspace(3)* %2478, align 4, !tbaa !31
  %2572 = add i32 %2571, %2570
  store i32 %2572, i32 addrspace(3)* %2478, align 4, !tbaa !31
  br label %2573

; <label>:2573                                    ; preds = %2567, %2566
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2519, label %2574, label %2580, !dx.controlflow.hints !86

; <label>:2574                                    ; preds = %2573
  %2575 = add i32 %18, 1
  %2576 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2575
  %2577 = load i32, i32 addrspace(3)* %2576, align 4, !tbaa !31
  %2578 = load i32, i32 addrspace(3)* %2478, align 4, !tbaa !31
  %2579 = add i32 %2578, %2577
  store i32 %2579, i32 addrspace(3)* %2478, align 4, !tbaa !31
  br label %2580

; <label>:2580                                    ; preds = %2574, %2573
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2581 = load i32, i32 addrspace(3)* %2528, align 4, !tbaa !31
  %2582 = add i32 %2581, %2529
  %2583 = fmul fast float %50, 1.500000e+00
  %2584 = fadd fast float %56, %2583
  %2585 = fsub fast float %2584, %103
  %2586 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %12, float %2468, float %2585, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2587 = extractvalue %dx.types.ResRet.f32 %2586, 0
  %2588 = fsub fast float %2587, %2462
  %2589 = fmul fast float %2588, %357
  %2590 = fadd fast float %2589, %2462
  %2591 = or i32 %2476, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %2475, i32 %2591, i32 undef, float %2590, float %2590, float %2590, float %2590, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %2477, i32 addrspace(3)* %2478, align 4, !tbaa !31
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %2479, label %2592, label %2598, !dx.controlflow.hints !81

; <label>:2592                                    ; preds = %2580
  %2593 = add i32 %18, 32
  %2594 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2593
  %2595 = load i32, i32 addrspace(3)* %2594, align 4, !tbaa !31
  %2596 = load i32, i32 addrspace(3)* %2478, align 4, !tbaa !31
  %2597 = add i32 %2596, %2595
  store i32 %2597, i32 addrspace(3)* %2478, align 4, !tbaa !31
  br label %2598

; <label>:2598                                    ; preds = %2592, %2580
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2487, label %2599, label %2605, !dx.controlflow.hints !82

; <label>:2599                                    ; preds = %2598
  %2600 = add i32 %18, 16
  %2601 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2600
  %2602 = load i32, i32 addrspace(3)* %2601, align 4, !tbaa !31
  %2603 = load i32, i32 addrspace(3)* %2478, align 4, !tbaa !31
  %2604 = add i32 %2603, %2602
  store i32 %2604, i32 addrspace(3)* %2478, align 4, !tbaa !31
  br label %2605

; <label>:2605                                    ; preds = %2599, %2598
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2495, label %2606, label %2612, !dx.controlflow.hints !83

; <label>:2606                                    ; preds = %2605
  %2607 = add i32 %18, 8
  %2608 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2607
  %2609 = load i32, i32 addrspace(3)* %2608, align 4, !tbaa !31
  %2610 = load i32, i32 addrspace(3)* %2478, align 4, !tbaa !31
  %2611 = add i32 %2610, %2609
  store i32 %2611, i32 addrspace(3)* %2478, align 4, !tbaa !31
  br label %2612

; <label>:2612                                    ; preds = %2606, %2605
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2503, label %2613, label %2619, !dx.controlflow.hints !84

; <label>:2613                                    ; preds = %2612
  %2614 = add i32 %18, 4
  %2615 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2614
  %2616 = load i32, i32 addrspace(3)* %2615, align 4, !tbaa !31
  %2617 = load i32, i32 addrspace(3)* %2478, align 4, !tbaa !31
  %2618 = add i32 %2617, %2616
  store i32 %2618, i32 addrspace(3)* %2478, align 4, !tbaa !31
  br label %2619

; <label>:2619                                    ; preds = %2613, %2612
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2511, label %2620, label %2626, !dx.controlflow.hints !85

; <label>:2620                                    ; preds = %2619
  %2621 = add i32 %18, 2
  %2622 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2621
  %2623 = load i32, i32 addrspace(3)* %2622, align 4, !tbaa !31
  %2624 = load i32, i32 addrspace(3)* %2478, align 4, !tbaa !31
  %2625 = add i32 %2624, %2623
  store i32 %2625, i32 addrspace(3)* %2478, align 4, !tbaa !31
  br label %2626

; <label>:2626                                    ; preds = %2620, %2619
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2519, label %2627, label %2633, !dx.controlflow.hints !86

; <label>:2627                                    ; preds = %2626
  %2628 = add i32 %18, 1
  %2629 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2628
  %2630 = load i32, i32 addrspace(3)* %2629, align 4, !tbaa !31
  %2631 = load i32, i32 addrspace(3)* %2478, align 4, !tbaa !31
  %2632 = add i32 %2631, %2630
  store i32 %2632, i32 addrspace(3)* %2478, align 4, !tbaa !31
  br label %2633

; <label>:2633                                    ; preds = %2627, %2626
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2634 = load i32, i32 addrspace(3)* %2528, align 4, !tbaa !31
  %2635 = add i32 %2582, %2634
  %2636 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %12, float %2532, float %2585, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2637 = extractvalue %dx.types.ResRet.f32 %2636, 0
  %2638 = fsub fast float %2637, %2463
  %2639 = fmul fast float %2638, %357
  %2640 = fadd fast float %2639, %2463
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %2538, i32 %2591, i32 undef, float %2640, float %2640, float %2640, float %2640, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %2477, i32 addrspace(3)* %2478, align 4, !tbaa !31
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %2479, label %2641, label %2647, !dx.controlflow.hints !81

; <label>:2641                                    ; preds = %2633
  %2642 = add i32 %18, 32
  %2643 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2642
  %2644 = load i32, i32 addrspace(3)* %2643, align 4, !tbaa !31
  %2645 = load i32, i32 addrspace(3)* %2478, align 4, !tbaa !31
  %2646 = add i32 %2645, %2644
  store i32 %2646, i32 addrspace(3)* %2478, align 4, !tbaa !31
  br label %2647

; <label>:2647                                    ; preds = %2641, %2633
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2487, label %2648, label %2654, !dx.controlflow.hints !82

; <label>:2648                                    ; preds = %2647
  %2649 = add i32 %18, 16
  %2650 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2649
  %2651 = load i32, i32 addrspace(3)* %2650, align 4, !tbaa !31
  %2652 = load i32, i32 addrspace(3)* %2478, align 4, !tbaa !31
  %2653 = add i32 %2652, %2651
  store i32 %2653, i32 addrspace(3)* %2478, align 4, !tbaa !31
  br label %2654

; <label>:2654                                    ; preds = %2648, %2647
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2495, label %2655, label %2661, !dx.controlflow.hints !83

; <label>:2655                                    ; preds = %2654
  %2656 = add i32 %18, 8
  %2657 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2656
  %2658 = load i32, i32 addrspace(3)* %2657, align 4, !tbaa !31
  %2659 = load i32, i32 addrspace(3)* %2478, align 4, !tbaa !31
  %2660 = add i32 %2659, %2658
  store i32 %2660, i32 addrspace(3)* %2478, align 4, !tbaa !31
  br label %2661

; <label>:2661                                    ; preds = %2655, %2654
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2503, label %2662, label %2668, !dx.controlflow.hints !84

; <label>:2662                                    ; preds = %2661
  %2663 = add i32 %18, 4
  %2664 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2663
  %2665 = load i32, i32 addrspace(3)* %2664, align 4, !tbaa !31
  %2666 = load i32, i32 addrspace(3)* %2478, align 4, !tbaa !31
  %2667 = add i32 %2666, %2665
  store i32 %2667, i32 addrspace(3)* %2478, align 4, !tbaa !31
  br label %2668

; <label>:2668                                    ; preds = %2662, %2661
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2511, label %2669, label %2675, !dx.controlflow.hints !85

; <label>:2669                                    ; preds = %2668
  %2670 = add i32 %18, 2
  %2671 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2670
  %2672 = load i32, i32 addrspace(3)* %2671, align 4, !tbaa !31
  %2673 = load i32, i32 addrspace(3)* %2478, align 4, !tbaa !31
  %2674 = add i32 %2673, %2672
  store i32 %2674, i32 addrspace(3)* %2478, align 4, !tbaa !31
  br label %2675

; <label>:2675                                    ; preds = %2669, %2668
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2519, label %2676, label %2682, !dx.controlflow.hints !86

; <label>:2676                                    ; preds = %2675
  %2677 = add i32 %18, 1
  %2678 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2677
  %2679 = load i32, i32 addrspace(3)* %2678, align 4, !tbaa !31
  %2680 = load i32, i32 addrspace(3)* %2478, align 4, !tbaa !31
  %2681 = add i32 %2680, %2679
  store i32 %2681, i32 addrspace(3)* %2478, align 4, !tbaa !31
  br label %2682

; <label>:2682                                    ; preds = %2676, %2675
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2683 = load i32, i32 addrspace(3)* %2528, align 4, !tbaa !31
  %2684 = add i32 %2635, %2683
  %2685 = uitofp i32 %2684 to float
  %2686 = fmul fast float %2685, 0x3EF0101020000000
  br i1 %525, label %2687, label %2692, !dx.controlflow.hints !87

; <label>:2687                                    ; preds = %2682
  %2688 = fmul fast float %53, 1.250000e-01
  %2689 = fmul fast float %54, 1.250000e-01
  %2690 = fptoui float %2688 to i32
  %2691 = fptoui float %2689 to i32
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %2690, i32 %2691, i32 undef, float %2686, float %2686, float %2686, float %2686, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2692

; <label>:2692                                    ; preds = %2687, %2682
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
!26 = !{void ()* @cs_gtao, !"cs_gtao", null, !4, !27}
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

