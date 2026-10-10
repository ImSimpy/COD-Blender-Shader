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
; shader hash: 495c9cd80fc4542671f6413e2b08d5e9
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
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
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
  %32 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %33 = extractvalue %dx.types.CBufRet.i32 %32, 0
  %34 = extractvalue %dx.types.CBufRet.i32 %32, 1
  %35 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %36 = extractvalue %dx.types.CBufRet.f32 %35, 2
  %37 = extractvalue %dx.types.CBufRet.f32 %35, 3
  %38 = fmul fast float %36, 5.120000e+02
  %39 = fmul fast float %37, 5.120000e+02
  %40 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %41 = extractvalue %dx.types.CBufRet.f32 %40, 0
  %42 = extractvalue %dx.types.CBufRet.f32 %40, 1
  %43 = fmul fast float %41, 5.000000e-01
  %44 = fmul fast float %42, 5.000000e-01
  %45 = extractvalue %dx.types.CBufRet.f32 %40, 2
  %46 = extractvalue %dx.types.CBufRet.f32 %40, 3
  %47 = fmul fast float %45, 2.000000e+00
  %48 = fmul fast float %46, 2.000000e+00
  %49 = uitofp i32 %16 to float
  %50 = uitofp i32 %17 to float
  %51 = fmul fast float %47, %49
  %52 = fmul fast float %48, %50
  %53 = fadd fast float %51, %45
  %54 = fadd fast float %52, %46
  %55 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %13, float %53, float %54, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %56 = extractvalue %dx.types.ResRet.f32 %55, 0
  %57 = bitcast float %56 to i32
  %58 = lshr i32 %57, 11
  %59 = and i32 %57, 2047
  %60 = and i32 %58, 2047
  %61 = uitofp i32 %59 to float
  %62 = uitofp i32 %60 to float
  %63 = fmul fast float %61, 0x3F50040100000000
  %64 = fmul fast float %62, 0x3F50040100000000
  %65 = fadd fast float %63, -1.000000e+00
  %66 = fadd fast float %64, -1.000000e+00
  %67 = lshr i32 %57, 22
  %68 = shl nuw nsw i32 %67, 5
  %69 = call float @dx.op.legacyF16ToF32(i32 131, i32 %68)  ; LegacyF16ToF32(value)
  %70 = call float @dx.op.unary.f32(i32 6, float %65)  ; FAbs(value)
  %71 = call float @dx.op.unary.f32(i32 6, float %66)  ; FAbs(value)
  %72 = fadd fast float %70, -5.000000e-01
  %73 = fadd fast float %71, -5.000000e-01
  %74 = fmul fast float %72, 2.000000e+00
  %75 = fmul fast float %73, 2.000000e+00
  %76 = call float @dx.op.unary.f32(i32 7, float %74)  ; Saturate(value)
  %77 = call float @dx.op.unary.f32(i32 7, float %75)  ; Saturate(value)
  %78 = fmul fast float %70, 2.000000e+00
  %79 = fmul fast float %71, 2.000000e+00
  %80 = call float @dx.op.unary.f32(i32 7, float %78)  ; Saturate(value)
  %81 = call float @dx.op.unary.f32(i32 7, float %79)  ; Saturate(value)
  %82 = fmul fast float %76, %76
  %83 = fmul fast float %82, 0x3FA48888A0000000
  %84 = fmul fast float %77, %77
  %85 = fmul fast float %84, 0x3FB2407960000000
  %86 = fmul fast float %80, 0x3F599999A0000000
  %87 = fmul fast float %81, 0x3F66C16C20000000
  %88 = fadd fast float %86, %83
  %89 = fadd fast float %87, %85
  %90 = fsub fast float -0.000000e+00, %88
  %91 = fsub fast float -0.000000e+00, %89
  %92 = fcmp fast olt float %65, 0.000000e+00
  %93 = fcmp fast olt float %66, 0.000000e+00
  %94 = select i1 %92, float 0.000000e+00, float 1.000000e+00
  %95 = select i1 %93, float 0.000000e+00, float 1.000000e+00
  %96 = fcmp fast une float %94, 0.000000e+00
  %97 = fcmp fast une float %95, 0.000000e+00
  %98 = select i1 %96, float %88, float %90
  %99 = select i1 %97, float %89, float %91
  %100 = fsub fast float %53, %98
  %101 = fsub fast float %54, %99
  %102 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %8, %dx.types.Handle %13, float %100, float %101, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %103 = extractvalue %dx.types.ResRet.f32 %102, 0
  %104 = extractvalue %dx.types.ResRet.f32 %102, 1
  %105 = extractvalue %dx.types.ResRet.f32 %102, 2
  %106 = extractvalue %dx.types.ResRet.f32 %102, 3
  %107 = bitcast float %103 to i32
  %108 = bitcast float %104 to i32
  %109 = bitcast float %105 to i32
  %110 = bitcast float %106 to i32
  %111 = call i32 @dx.op.binary.i32(i32 40, i32 %109, i32 %110)  ; UMin(a,b)
  %112 = call i32 @dx.op.binary.i32(i32 40, i32 %108, i32 %111)  ; UMin(a,b)
  %113 = call i32 @dx.op.binary.i32(i32 40, i32 %107, i32 %112)  ; UMin(a,b)
  %114 = lshr i32 %113, 11
  %115 = and i32 %113, 2047
  %116 = and i32 %114, 2047
  %117 = uitofp i32 %115 to float
  %118 = uitofp i32 %116 to float
  %119 = fmul fast float %117, 0x3F50040100000000
  %120 = fmul fast float %118, 0x3F50040100000000
  %121 = fadd fast float %119, -1.000000e+00
  %122 = fadd fast float %120, -1.000000e+00
  %123 = lshr i32 %113, 22
  %124 = shl nuw nsw i32 %123, 5
  %125 = call float @dx.op.legacyF16ToF32(i32 131, i32 %124)  ; LegacyF16ToF32(value)
  %126 = call float @dx.op.unary.f32(i32 6, float %121)  ; FAbs(value)
  %127 = call float @dx.op.unary.f32(i32 6, float %122)  ; FAbs(value)
  %128 = fadd fast float %126, -5.000000e-01
  %129 = fadd fast float %127, -5.000000e-01
  %130 = fmul fast float %128, 2.000000e+00
  %131 = fmul fast float %129, 2.000000e+00
  %132 = call float @dx.op.unary.f32(i32 7, float %130)  ; Saturate(value)
  %133 = call float @dx.op.unary.f32(i32 7, float %131)  ; Saturate(value)
  %134 = fmul fast float %126, 2.000000e+00
  %135 = fmul fast float %127, 2.000000e+00
  %136 = call float @dx.op.unary.f32(i32 7, float %134)  ; Saturate(value)
  %137 = call float @dx.op.unary.f32(i32 7, float %135)  ; Saturate(value)
  %138 = fmul fast float %132, %132
  %139 = fmul fast float %138, 0x3FA48888A0000000
  %140 = fmul fast float %133, %133
  %141 = fmul fast float %140, 0x3FB2407960000000
  %142 = fmul fast float %136, 0x3F599999A0000000
  %143 = fmul fast float %137, 0x3F66C16C20000000
  %144 = fadd fast float %142, %139
  %145 = fadd fast float %143, %141
  %146 = fsub fast float -0.000000e+00, %144
  %147 = fsub fast float -0.000000e+00, %145
  %148 = fcmp fast olt float %121, 0.000000e+00
  %149 = fcmp fast olt float %122, 0.000000e+00
  %150 = select i1 %148, float 0.000000e+00, float 1.000000e+00
  %151 = select i1 %149, float 0.000000e+00, float 1.000000e+00
  %152 = fcmp fast une float %150, 0.000000e+00
  %153 = fcmp fast une float %151, 0.000000e+00
  %154 = select i1 %152, float %144, float %146
  %155 = select i1 %153, float %145, float %147
  %156 = fmul fast float %98, 3.000000e+00
  %157 = fmul fast float %99, 3.000000e+00
  %158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %159 = extractvalue %dx.types.CBufRet.f32 %158, 2
  %160 = extractvalue %dx.types.CBufRet.f32 %158, 3
  %161 = fmul fast float %45, %38
  %162 = fmul fast float %46, %39
  %163 = fmul fast float %159, %69
  %164 = fmul fast float %69, %160
  %165 = fsub fast float -0.000000e+00, %164
  %166 = fdiv fast float 5.000000e+01, %163
  %167 = fdiv fast float 5.000000e+01, %165
  %168 = call float @dx.op.binary.f32(i32 36, float %161, float %166)  ; FMin(a,b)
  %169 = call float @dx.op.binary.f32(i32 36, float %162, float %167)  ; FMin(a,b)
  %170 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %12, float %53, float %54, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %171 = extractvalue %dx.types.ResRet.f32 %170, 0
  %172 = extractvalue %dx.types.ResRet.f32 %170, 1
  %173 = fmul fast float %171, %171
  %174 = fsub fast float %172, %173
  %175 = call float @dx.op.unary.f32(i32 7, float %174)  ; Saturate(value)
  %176 = fdiv fast float %175, %171
  %177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %178 = extractvalue %dx.types.CBufRet.f32 %177, 0
  %179 = fmul fast float %178, 0x40165A5B00000000
  %180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %181 = extractvalue %dx.types.CBufRet.f32 %180, 0
  %182 = fmul fast float %181, 2.000000e+00
  %183 = fadd fast float %182, -1.000000e+00
  %184 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %12, float %100, float %101, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %185 = extractvalue %dx.types.ResRet.f32 %184, 0
  %186 = fmul fast float %185, 2.550000e+02
  %187 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %12, float %100, float %101, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %188 = extractvalue %dx.types.ResRet.f32 %187, 0
  %189 = extractvalue %dx.types.ResRet.f32 %187, 1
  %190 = extractvalue %dx.types.ResRet.f32 %187, 2
  %191 = extractvalue %dx.types.ResRet.f32 %187, 3
  %192 = call float @dx.op.dot4.f32(i32 56, float %188, float %189, float %190, float %191, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %193 = call float @dx.op.dot4.f32(i32 56, float %188, float %189, float %190, float %191, float %188, float %189, float %190, float %191)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %194 = fmul fast float %192, 2.500000e-01
  %195 = fmul fast float %193, 2.500000e-01
  %196 = mul i32 %18, 2
  %197 = add i32 0, %196
  %198 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %197
  store float %194, float addrspace(3)* %198, align 4
  %199 = mul i32 %18, 2
  %200 = add i32 1, %199
  %201 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %200
  store float %195, float addrspace(3)* %201, align 4
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %202 = and i32 %18, 63
  %203 = xor i32 %202, 1
  %204 = mul i32 %203, 2
  %205 = add i32 0, %204
  %206 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %205
  %207 = load float, float addrspace(3)* %206, align 4
  %208 = mul i32 %203, 2
  %209 = add i32 1, %208
  %210 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %209
  %211 = load float, float addrspace(3)* %210, align 4
  %212 = fadd fast float %207, %194
  %213 = fadd fast float %211, %195
  %214 = xor i32 %202, 8
  %215 = mul i32 %214, 2
  %216 = add i32 0, %215
  %217 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %216
  %218 = load float, float addrspace(3)* %217, align 4
  %219 = mul i32 %214, 2
  %220 = add i32 1, %219
  %221 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %220
  %222 = load float, float addrspace(3)* %221, align 4
  %223 = fadd fast float %212, %218
  %224 = fadd fast float %213, %222
  %225 = xor i32 %202, 9
  %226 = mul i32 %225, 2
  %227 = add i32 0, %226
  %228 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %227
  %229 = load float, float addrspace(3)* %228, align 4
  %230 = mul i32 %225, 2
  %231 = add i32 1, %230
  %232 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %231
  %233 = load float, float addrspace(3)* %232, align 4
  %234 = fadd fast float %223, %229
  %235 = fadd fast float %224, %233
  store float %234, float addrspace(3)* %198, align 4
  store float %235, float addrspace(3)* %201, align 4
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %236 = xor i32 %202, 2
  %237 = mul i32 %236, 2
  %238 = add i32 0, %237
  %239 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %238
  %240 = load float, float addrspace(3)* %239, align 4
  %241 = fadd fast float %240, %234
  %242 = xor i32 %202, 16
  %243 = mul i32 %242, 2
  %244 = add i32 0, %243
  %245 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %244
  %246 = load float, float addrspace(3)* %245, align 4
  %247 = fadd fast float %241, %246
  %248 = xor i32 %202, 18
  %249 = mul i32 %248, 2
  %250 = add i32 0, %249
  %251 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %250
  %252 = load float, float addrspace(3)* %251, align 4
  %253 = fadd fast float %247, %252
  %254 = fmul fast float %253, 6.250000e-02
  %255 = call float @dx.op.binary.f32(i32 35, float %254, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %256 = fmul fast float %69, 0x3FA99999A0000000
  %257 = fadd fast float %125, %256
  %258 = fcmp fast olt float %69, %257
  %259 = fsub fast float %98, %154
  %260 = fsub fast float %99, %155
  %261 = fmul fast float %259, 1.920000e+03
  %262 = fmul fast float %260, 1.080000e+03
  %263 = call float @dx.op.dot2.f32(i32 54, float %261, float %262, float %261, float %262)  ; Dot2(ax,ay,bx,by)
  %264 = bitcast float %263 to i32
  %265 = ashr i32 %264, 1
  %266 = add nsw i32 %265, 532487669
  %267 = bitcast i32 %266 to float
  %268 = fmul fast float %267, 2.000000e+00
  %269 = fsub fast float 1.000000e+00, %268
  %270 = call float @dx.op.unary.f32(i32 7, float %269)  ; Saturate(value)
  %271 = select i1 %258, float 1.000000e+00, float %270
  %272 = fmul fast float %98, 1.920000e+03
  %273 = fmul fast float %99, 1.080000e+03
  %274 = call float @dx.op.unary.f32(i32 6, float %272)  ; FAbs(value)
  %275 = call float @dx.op.unary.f32(i32 6, float %273)  ; FAbs(value)
  %276 = call float @dx.op.binary.f32(i32 35, float %274, float %275)  ; FMax(a,b)
  %277 = fmul fast float %276, 0x3FB99999A0000000
  %278 = fsub fast float 8.000000e+00, %277
  %279 = call float @dx.op.unary.f32(i32 7, float %278)  ; Saturate(value)
  %280 = fmul fast float %279, %271
  %281 = fadd fast float %53, -5.000000e-01
  %282 = fsub fast float %281, %156
  %283 = fadd fast float %54, -5.000000e-01
  %284 = fsub fast float %283, %157
  %285 = call float @dx.op.unary.f32(i32 6, float %282)  ; FAbs(value)
  %286 = call float @dx.op.unary.f32(i32 6, float %284)  ; FAbs(value)
  %287 = fadd fast float %285, -5.000000e-01
  %288 = fadd fast float %286, -5.000000e-01
  %289 = call float @dx.op.binary.f32(i32 35, float %287, float %288)  ; FMax(a,b)
  %290 = fcmp fast olt float %289, 0.000000e+00
  %291 = select i1 %290, float 1.000000e+00, float 0.000000e+00
  %292 = fmul fast float %280, %291
  %293 = fsub fast float %255, %171
  %294 = call float @dx.op.unary.f32(i32 6, float %293)  ; FAbs(value)
  %295 = fmul fast float %171, 2.500000e-01
  %296 = fmul fast float %295, %176
  %297 = call float @dx.op.unary.f32(i32 24, float %296)  ; Sqrt(value)
  %298 = fmul fast float %171, 0x3FD6666660000000
  %299 = fadd fast float %298, 0x3FA99999A0000000
  %300 = fadd fast float %299, %297
  %301 = fdiv fast float %294, %300
  %302 = fsub fast float 1.000000e+00, %301
  %303 = call float @dx.op.unary.f32(i32 7, float %302)  ; Saturate(value)
  %304 = fmul fast float %303, 0x3FF8062660000000
  %305 = call float @dx.op.unary.f32(i32 7, float %304)  ; Saturate(value)
  %306 = fmul fast float %305, 2.000000e+00
  %307 = fsub fast float 3.000000e+00, %306
  %308 = fmul fast float %305, %305
  %309 = fmul fast float %308, 5.000000e-01
  %310 = fmul fast float %309, %307
  %311 = fadd fast float %310, 5.000000e-01
  %312 = fmul fast float %292, %311
  %313 = fmul fast float %185, 0x41A7A6C180000000
  %314 = fsub fast float 0x41CFB3AA00000000, %313
  %315 = fptosi float %314 to i32
  %316 = bitcast i32 %315 to float
  %317 = fsub fast float 1.000000e+00, %316
  %318 = fdiv fast float 0x3FA9999A00000000, %317
  %319 = fsub fast float 1.000000e+00, %318
  %320 = fcmp fast ugt float %312, 0x3FEE666660000000
  %321 = fmul fast float %312, %319
  br i1 %320, label %329, label %322, !dx.controlflow.hints !29

; <label>:322                                     ; preds = %0
  %323 = fadd fast float %321, 0xBFEE666660000000
  %324 = fadd fast float %321, -1.000000e+00
  %325 = fdiv fast float %323, %324
  %326 = call float @dx.op.unary.f32(i32 23, float %325)  ; Log(value)
  %327 = fmul fast float %326, 0x402B06DCE0000000
  %328 = fsub fast float -1.000000e+00, %327
  br label %351

; <label>:329                                     ; preds = %0
  %330 = fcmp fast ole float %319, 0x3FEE666660000000
  %331 = lshr i32 %16, 3
  %332 = uitofp i32 %331 to float
  %333 = fadd fast float %179, %332
  %334 = fmul fast float %183, %333
  %335 = lshr i32 %17, 3
  %336 = uitofp i32 %335 to float
  %337 = fadd fast float %179, %336
  %338 = fmul fast float %183, %337
  %339 = call float @dx.op.dot2.f32(i32 54, float %334, float %338, float 0x3FB12E2860000000, float 0x3F77E8B200000000)  ; Dot2(ax,ay,bx,by)
  %340 = call float @dx.op.unary.f32(i32 22, float %339)  ; Frc(value)
  %341 = fmul fast float %340, 0x404A7DD040000000
  %342 = call float @dx.op.unary.f32(i32 22, float %341)  ; Frc(value)
  %343 = fcmp fast olt float %342, 1.250000e-01
  %344 = and i1 %330, %343
  br i1 %344, label %345, label %349, !dx.controlflow.hints !30

; <label>:345                                     ; preds = %329
  %346 = call float @dx.op.unary.f32(i32 23, float -0.000000e+00)  ; Log(value)
  %347 = fmul fast float %346, 0x402B06DCE0000000
  %348 = fsub fast float -1.000000e+00, %347
  br label %351

; <label>:349                                     ; preds = %329
  %350 = fadd fast float %186, -1.600000e+01
  br label %351

; <label>:351                                     ; preds = %349, %345, %322
  %352 = phi float [ %328, %322 ], [ %348, %345 ], [ %350, %349 ]
  %353 = phi float [ %321, %322 ], [ 0x3FECCCCCC0000000, %345 ], [ 1.000000e+00, %349 ]
  %354 = fmul fast float %168, %43
  %355 = fmul fast float %169, %44
  %356 = call float @dx.op.binary.f32(i32 36, float %354, float %355)  ; FMin(a,b)
  %357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %358 = extractvalue %dx.types.CBufRet.f32 %357, 0
  %359 = fsub fast float %356, %358
  %360 = extractvalue %dx.types.CBufRet.f32 %357, 1
  %361 = fmul fast float %359, %360
  %362 = call float @dx.op.unary.f32(i32 7, float %361)  ; Saturate(value)
  %363 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %11, %dx.types.Handle %13, float %53, float %54, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %364 = extractvalue %dx.types.ResRet.f32 %363, 0
  %365 = extractvalue %dx.types.ResRet.f32 %363, 1
  %366 = extractvalue %dx.types.ResRet.f32 %363, 2
  %367 = extractvalue %dx.types.ResRet.f32 %363, 3
  %368 = fcmp fast ogt float %364, -1.000000e+00
  %369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %370 = extractvalue %dx.types.CBufRet.f32 %369, 1
  %371 = select i1 %368, float %370, float 1.000000e+00
  %372 = fadd fast float %364, 1.000000e+00
  %373 = fmul fast float %371, %372
  %374 = fcmp fast ogt float %365, -1.000000e+00
  %375 = select i1 %374, float %370, float 1.000000e+00
  %376 = fadd fast float %365, 1.000000e+00
  %377 = fmul fast float %375, %376
  %378 = fcmp fast ogt float %366, -1.000000e+00
  %379 = select i1 %378, float %370, float 1.000000e+00
  %380 = fadd fast float %366, 1.000000e+00
  %381 = fmul fast float %379, %380
  %382 = fcmp fast ogt float %367, -1.000000e+00
  %383 = select i1 %382, float %370, float 1.000000e+00
  %384 = fadd fast float %367, 1.000000e+00
  %385 = fmul fast float %383, %384
  %386 = shl i32 %16, 1
  %387 = shl i32 %17, 1
  %388 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %386, i32 %387, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %389 = extractvalue %dx.types.ResRet.i32 %388, 0
  %390 = or i32 %386, 1
  %391 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %390, i32 %387, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %392 = extractvalue %dx.types.ResRet.i32 %391, 0
  %393 = or i32 %387, 1
  %394 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %386, i32 %393, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %395 = extractvalue %dx.types.ResRet.i32 %394, 0
  %396 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %390, i32 %393, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %397 = extractvalue %dx.types.ResRet.i32 %396, 0
  %398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %399 = extractvalue %dx.types.CBufRet.f32 %398, 0
  %400 = extractvalue %dx.types.CBufRet.f32 %398, 1
  %401 = extractvalue %dx.types.CBufRet.f32 %398, 2
  %402 = extractvalue %dx.types.CBufRet.f32 %398, 3
  %403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %404 = extractvalue %dx.types.CBufRet.f32 %403, 0
  %405 = extractvalue %dx.types.CBufRet.f32 %403, 1
  %406 = extractvalue %dx.types.CBufRet.f32 %403, 2
  %407 = extractvalue %dx.types.CBufRet.f32 %403, 3
  %408 = call float @dx.op.unary.f32(i32 6, float %385)  ; FAbs(value)
  %409 = call float @dx.op.unary.f32(i32 6, float %381)  ; FAbs(value)
  %410 = call float @dx.op.unary.f32(i32 6, float %373)  ; FAbs(value)
  %411 = call float @dx.op.unary.f32(i32 6, float %377)  ; FAbs(value)
  %412 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 0
  store float %408, float* %412, align 4
  %413 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 1
  store float %409, float* %413, align 4
  %414 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 2
  store float %410, float* %414, align 4
  %415 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 3
  store float %411, float* %415, align 4
  %416 = getelementptr inbounds [4 x float], [4 x float]* %30, i32 0, i32 0
  store float %408, float* %416, align 4
  %417 = getelementptr inbounds [4 x float], [4 x float]* %30, i32 0, i32 1
  store float %409, float* %417, align 4
  %418 = getelementptr inbounds [4 x float], [4 x float]* %30, i32 0, i32 2
  store float %410, float* %418, align 4
  %419 = getelementptr inbounds [4 x float], [4 x float]* %30, i32 0, i32 3
  store float %411, float* %419, align 4
  %420 = fcmp fast olt float %408, %409
  %421 = zext i1 %420 to i32
  %422 = xor i32 %421, 1
  %423 = fcmp fast olt float %410, %411
  %424 = select i1 %423, i32 3, i32 2
  %425 = select i1 %423, i32 2, i32 3
  %426 = getelementptr [4 x float], [4 x float]* %30, i32 0, i32 %421
  %427 = load float, float* %426, align 4, !tbaa !31, !noalias !35
  %428 = getelementptr [4 x float], [4 x float]* %30, i32 0, i32 %424
  %429 = load float, float* %428, align 4, !tbaa !31, !noalias !35
  %430 = fcmp fast olt float %427, %429
  %431 = select i1 %430, i32 %424, i32 %421
  %432 = select i1 %430, i32 %421, i32 %424
  %433 = getelementptr [4 x float], [4 x float]* %30, i32 0, i32 %422
  %434 = load float, float* %433, align 4, !tbaa !31, !noalias !35
  %435 = getelementptr [4 x float], [4 x float]* %30, i32 0, i32 %425
  %436 = load float, float* %435, align 4, !tbaa !31, !noalias !35
  %437 = fcmp fast ogt float %434, %436
  %438 = select i1 %437, i32 %425, i32 %422
  %439 = select i1 %437, i32 %422, i32 %425
  %440 = getelementptr [4 x float], [4 x float]* %31, i32 0, i32 %431
  %441 = load float, float* %440, align 4, !tbaa !31, !noalias !40
  %442 = getelementptr [4 x float], [4 x float]* %31, i32 0, i32 %438
  %443 = load float, float* %442, align 4, !tbaa !31, !noalias !40
  %444 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %11, %dx.types.Handle %13, float %51, float %52, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %445 = extractvalue %dx.types.ResRet.f32 %444, 0
  %446 = extractvalue %dx.types.ResRet.f32 %444, 2
  %447 = extractvalue %dx.types.ResRet.f32 %444, 3
  %448 = fsub fast float %381, %445
  %449 = call float @dx.op.unary.f32(i32 6, float %448)  ; FAbs(value)
  %450 = fsub fast float %373, %446
  %451 = call float @dx.op.unary.f32(i32 6, float %450)  ; FAbs(value)
  %452 = fadd fast float %451, %449
  %453 = fsub fast float %447, %377
  %454 = call float @dx.op.unary.f32(i32 6, float %453)  ; FAbs(value)
  %455 = fmul fast float %454, 0x3FF6A09E60000000
  %456 = fadd fast float %452, %455
  %457 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?gtaoQuadDiscontinuity@@3PAMA", i32 0, i32 %18
  store float %456, float addrspace(3)* %457, align 4, !tbaa !31, !noalias !40
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %458 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?gtaoQuadDiscontinuity@@3PAMA", i32 0, i32 %203
  %459 = load float, float addrspace(3)* %458, align 4, !tbaa !31, !noalias !40
  %460 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?gtaoQuadDiscontinuity@@3PAMA", i32 0, i32 %214
  %461 = load float, float addrspace(3)* %460, align 4, !tbaa !31, !noalias !40
  %462 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?gtaoQuadDiscontinuity@@3PAMA", i32 0, i32 %225
  %463 = load float, float addrspace(3)* %462, align 4, !tbaa !31, !noalias !40
  %464 = fsub fast float %459, %456
  %465 = call float @dx.op.unary.f32(i32 6, float %464)  ; FAbs(value)
  %466 = fsub fast float %461, %456
  %467 = call float @dx.op.unary.f32(i32 6, float %466)  ; FAbs(value)
  %468 = fadd fast float %467, %465
  %469 = fsub fast float %463, %456
  %470 = call float @dx.op.unary.f32(i32 6, float %469)  ; FAbs(value)
  %471 = fadd fast float %468, %470
  store float %471, float addrspace(3)* %457, align 4, !tbaa !31, !noalias !40
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %472 = fcmp fast olt float %443, 0.000000e+00
  %473 = zext i1 %472 to i32
  %474 = icmp eq i32 %18, 0
  br i1 %474, label %475, label %476, !dx.controlflow.hints !41

; <label>:475                                     ; preds = %351
  store i32 0, i32 addrspace(3)* @"\01?gtaoQuadMaxUint@@3IA", align 4, !tbaa !42, !noalias !40
  br label %476

; <label>:476                                     ; preds = %475, %351
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %477 = atomicrmw umax i32 addrspace(3)* @"\01?gtaoQuadMaxUint@@3IA", i32 %473 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %478 = load i32, i32 addrspace(3)* @"\01?gtaoQuadMaxUint@@3IA", align 4, !tbaa !42, !noalias !40
  %479 = icmp ne i32 %478, 0
  %480 = select i1 %479, i32 2, i32 1
  %481 = fmul fast float %404, %51
  %482 = fmul fast float %405, %52
  %483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %484 = extractvalue %dx.types.CBufRet.f32 %483, 2
  %485 = fmul fast float %484, 0x3FE3C6EF40000000
  %486 = frem fast float %481, 2.560000e+02
  %487 = frem fast float %482, 2.560000e+02
  %488 = fptoui float %486 to i32
  %489 = fptoui float %487 to i32
  %490 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %488, i32 %489, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %491 = extractvalue %dx.types.ResRet.f32 %490, 0
  %492 = extractvalue %dx.types.ResRet.f32 %490, 1
  %493 = extractvalue %dx.types.ResRet.f32 %490, 2
  %494 = extractvalue %dx.types.ResRet.f32 %490, 3
  %495 = fadd fast float %491, %485
  %496 = fadd fast float %492, %485
  %497 = fadd fast float %493, %485
  %498 = fadd fast float %494, %485
  %499 = call float @dx.op.unary.f32(i32 22, float %495)  ; Frc(value)
  %500 = call float @dx.op.unary.f32(i32 22, float %496)  ; Frc(value)
  %501 = call float @dx.op.unary.f32(i32 22, float %497)  ; Frc(value)
  %502 = call float @dx.op.unary.f32(i32 22, float %498)  ; Frc(value)
  %503 = fadd fast float %406, %51
  %504 = fadd fast float %407, %52
  %505 = fmul fast float %503, %404
  %506 = fmul fast float %504, %405
  %507 = frem fast float %505, 2.560000e+02
  %508 = frem fast float %506, 2.560000e+02
  %509 = fptoui float %507 to i32
  %510 = fptoui float %508 to i32
  %511 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %509, i32 %510, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %512 = extractvalue %dx.types.ResRet.f32 %511, 0
  %513 = extractvalue %dx.types.ResRet.f32 %511, 1
  %514 = extractvalue %dx.types.ResRet.f32 %511, 2
  %515 = extractvalue %dx.types.ResRet.f32 %511, 3
  %516 = fadd fast float %512, %485
  %517 = fadd fast float %513, %485
  %518 = fadd fast float %514, %485
  %519 = fadd fast float %515, %485
  %520 = call float @dx.op.unary.f32(i32 22, float %516)  ; Frc(value)
  %521 = call float @dx.op.unary.f32(i32 22, float %517)  ; Frc(value)
  %522 = call float @dx.op.unary.f32(i32 22, float %518)  ; Frc(value)
  %523 = call float @dx.op.unary.f32(i32 22, float %519)  ; Frc(value)
  %524 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 0
  store float %385, float* %524, align 4
  %525 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 1
  store float %381, float* %525, align 4
  %526 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 2
  store float %373, float* %526, align 4
  %527 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 3
  store float %377, float* %527, align 4
  %528 = getelementptr [4 x float], [4 x float]* %29, i32 0, i32 %431
  %529 = load float, float* %528, align 4, !tbaa !31, !noalias !44
  %530 = and i32 %431, 1
  %531 = uitofp i32 %530 to float
  %532 = fadd fast float %531, 5.000000e-01
  %533 = lshr i32 %431, 1
  %534 = uitofp i32 %533 to float
  %535 = fadd fast float %534, 5.000000e-01
  %536 = fmul fast float %532, %406
  %537 = fmul fast float %535, %407
  %538 = fadd fast float %536, %51
  %539 = fadd fast float %537, %52
  %540 = fcmp fast olt float %529, 6.550000e+04
  br i1 %540, label %541, label %948, !dx.controlflow.hints !48

; <label>:541                                     ; preds = %476
  %542 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 0
  store i32 %389, i32* %542, align 4
  %543 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 1
  store i32 %392, i32* %543, align 4
  %544 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 2
  store i32 %395, i32* %544, align 4
  %545 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 3
  store i32 %397, i32* %545, align 4
  %546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 99)  ; CBufferLoadLegacy(handle,regIndex)
  %547 = extractvalue %dx.types.CBufRet.f32 %546, 0
  %548 = extractvalue %dx.types.CBufRet.f32 %546, 1
  %549 = extractvalue %dx.types.CBufRet.f32 %546, 2
  %550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 100)  ; CBufferLoadLegacy(handle,regIndex)
  %551 = extractvalue %dx.types.CBufRet.f32 %550, 0
  %552 = extractvalue %dx.types.CBufRet.f32 %550, 1
  %553 = extractvalue %dx.types.CBufRet.f32 %550, 2
  %554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 101)  ; CBufferLoadLegacy(handle,regIndex)
  %555 = extractvalue %dx.types.CBufRet.f32 %554, 0
  %556 = extractvalue %dx.types.CBufRet.f32 %554, 1
  %557 = extractvalue %dx.types.CBufRet.f32 %554, 2
  %558 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %431
  %559 = load i32, i32* %558, align 4, !tbaa !42, !noalias !44
  %560 = lshr i32 %559, 8
  %561 = and i32 %559, 255
  %562 = and i32 %560, 255
  %563 = uitofp i32 %561 to float
  %564 = uitofp i32 %562 to float
  %565 = fmul fast float %563, 0x3F80101020000000
  %566 = fmul fast float %564, 0x3F80101020000000
  %567 = fadd fast float %565, -1.000000e+00
  %568 = fadd fast float %566, -1.000000e+00
  %569 = call float @dx.op.unary.f32(i32 6, float %567)  ; FAbs(value)
  %570 = fsub fast float 1.000000e+00, %569
  %571 = call float @dx.op.unary.f32(i32 6, float %568)  ; FAbs(value)
  %572 = fsub fast float %570, %571
  %573 = fsub fast float -0.000000e+00, %572
  %574 = call float @dx.op.binary.f32(i32 35, float %573, float 0.000000e+00)  ; FMax(a,b)
  %575 = fcmp fast ogt float %567, 0.000000e+00
  %576 = fsub fast float -0.000000e+00, %574
  %577 = select i1 %575, float %576, float %574
  %578 = fadd fast float %577, %567
  %579 = fcmp fast ogt float %568, 0.000000e+00
  %580 = select i1 %579, float %576, float %574
  %581 = fadd fast float %580, %568
  %582 = call float @dx.op.dot3.f32(i32 55, float %578, float %581, float %572, float %578, float %581, float %572)  ; Dot3(ax,ay,az,bx,by,bz)
  %583 = call float @dx.op.unary.f32(i32 25, float %582)  ; Rsqrt(value)
  %584 = fmul fast float %578, %583
  %585 = fmul fast float %581, %583
  %586 = fmul fast float %583, %572
  %587 = fmul fast float %584, %547
  %588 = call float @dx.op.tertiary.f32(i32 46, float %585, float %548, float %587)  ; FMad(a,b,c)
  %589 = call float @dx.op.tertiary.f32(i32 46, float %586, float %549, float %588)  ; FMad(a,b,c)
  %590 = fmul fast float %584, %551
  %591 = call float @dx.op.tertiary.f32(i32 46, float %585, float %552, float %590)  ; FMad(a,b,c)
  %592 = call float @dx.op.tertiary.f32(i32 46, float %586, float %553, float %591)  ; FMad(a,b,c)
  %593 = fmul fast float %584, %555
  %594 = call float @dx.op.tertiary.f32(i32 46, float %585, float %556, float %593)  ; FMad(a,b,c)
  %595 = call float @dx.op.tertiary.f32(i32 46, float %586, float %557, float %594)  ; FMad(a,b,c)
  %596 = ashr i32 %34, 1
  %597 = call float @dx.op.unary.f32(i32 6, float %529)  ; FAbs(value)
  %598 = fmul fast float %406, %38
  %599 = fmul fast float %407, %39
  %600 = fmul fast float %597, %401
  %601 = fmul fast float %402, %597
  %602 = fsub fast float -0.000000e+00, %601
  %603 = fdiv fast float 5.000000e+01, %600
  %604 = fdiv fast float 5.000000e+01, %602
  %605 = call float @dx.op.binary.f32(i32 36, float %598, float %603)  ; FMin(a,b)
  %606 = call float @dx.op.binary.f32(i32 36, float %599, float %604)  ; FMin(a,b)
  %607 = fmul fast float %538, %399
  %608 = fmul fast float %539, %400
  %609 = fsub fast float %607, %401
  %610 = fsub fast float %608, %402
  %611 = fmul fast float %597, %609
  %612 = fmul fast float %597, %610
  %613 = fsub fast float -0.000000e+00, %611
  %614 = fsub fast float -0.000000e+00, %612
  %615 = fsub fast float -0.000000e+00, %597
  %616 = call float @dx.op.dot3.f32(i32 55, float %613, float %614, float %615, float %613, float %614, float %615)  ; Dot3(ax,ay,az,bx,by,bz)
  %617 = call float @dx.op.unary.f32(i32 25, float %616)  ; Rsqrt(value)
  %618 = fmul fast float %617, %613
  %619 = fmul fast float %617, %614
  %620 = fmul fast float %617, %615
  %621 = fmul fast float %597, 0x3FEFEB8520000000
  %622 = fmul fast float %605, %43
  %623 = fmul fast float %606, %44
  %624 = fmul fast float %622, %622
  %625 = fmul fast float %623, %623
  %626 = fadd fast float %625, %624
  %627 = call float @dx.op.unary.f32(i32 24, float %626)  ; Sqrt(value)
  %628 = fmul fast float %627, 3.125000e-02
  %629 = icmp sgt i32 %33, 0
  br i1 %629, label %630, label %944

; <label>:630                                     ; preds = %541
  br label %631

; <label>:631                                     ; preds = %833, %630
  %632 = phi float [ %936, %833 ], [ 0.000000e+00, %630 ]
  %633 = phi float [ %940, %833 ], [ 0.000000e+00, %630 ]
  %634 = phi i32 [ %941, %833 ], [ 0, %630 ]
  %635 = sitofp i32 %33 to float
  %636 = fdiv fast float 0x400921FB60000000, %635
  %637 = sitofp i32 %634 to float
  %638 = fadd fast float %637, %499
  %639 = fmul fast float %636, %638
  %640 = call float @dx.op.unary.f32(i32 12, float %639)  ; Cos(value)
  %641 = call float @dx.op.unary.f32(i32 13, float %639)  ; Sin(value)
  %642 = fsub fast float -0.000000e+00, %641
  %643 = call float @dx.op.dot3.f32(i32 55, float %618, float %619, float %620, float %589, float %592, float %595)  ; Dot3(ax,ay,az,bx,by,bz)
  %644 = call float @dx.op.unary.f32(i32 6, float %643)  ; FAbs(value)
  %645 = call float @dx.op.unary.f32(i32 6, float %644)  ; FAbs(value)
  %646 = fcmp fast ogt float %645, 0x3EB0C6F7A0000000
  %647 = call float @dx.op.dot3.f32(i32 55, float %640, float %642, float 0.000000e+00, float %589, float %592, float %595)  ; Dot3(ax,ay,az,bx,by,bz)
  %648 = fsub fast float -0.000000e+00, %647
  %649 = fdiv fast float %648, %644
  %650 = select i1 %646, float %649, float 0.000000e+00
  %651 = fmul fast float %650, %650
  %652 = fadd fast float %651, 1.000000e+00
  %653 = call float @dx.op.unary.f32(i32 25, float %652)  ; Rsqrt(value)
  %654 = fmul fast float %650, %653
  %655 = fsub fast float -0.000000e+00, %654
  %656 = icmp sgt i32 %596, 0
  br i1 %656, label %657, label %744

; <label>:657                                     ; preds = %631
  br label %658

; <label>:658                                     ; preds = %658, %657
  %659 = phi float [ %740, %658 ], [ %654, %657 ]
  %660 = phi float [ %726, %658 ], [ 2.000000e+02, %657 ]
  %661 = phi i32 [ %741, %658 ], [ 0, %657 ]
  %662 = sitofp i32 %596 to float
  %663 = fdiv fast float 1.000000e+00, %662
  %664 = sitofp i32 %661 to float
  %665 = fadd fast float %664, %520
  %666 = fmul fast float %665, %663
  %667 = fmul fast float %666, %666
  %668 = fmul fast float %667, %628
  %669 = call float @dx.op.binary.f32(i32 36, float %668, float 3.000000e+00)  ; FMin(a,b)
  %670 = fadd fast float %669, 1.000000e+00
  %671 = fmul fast float %667, %605
  %672 = fmul fast float %667, %606
  %673 = fadd fast float %671, %47
  %674 = fmul fast float %673, %640
  %675 = fadd fast float %674, %538
  %676 = fadd fast float %672, %48
  %677 = fmul fast float %676, %641
  %678 = fadd fast float %677, %539
  %679 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %13, float %675, float %678, float undef, float undef, i32 0, i32 0, i32 undef, float %670)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %680 = extractvalue %dx.types.ResRet.f32 %679, 0
  %681 = fcmp fast ogt float %680, -1.000000e+00
  %682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %683 = extractvalue %dx.types.CBufRet.f32 %682, 1
  %684 = select i1 %681, float %683, float 1.000000e+00
  %685 = fadd fast float %680, 1.000000e+00
  %686 = fmul fast float %684, %685
  %687 = call float @dx.op.unary.f32(i32 6, float %686)  ; FAbs(value)
  %688 = fmul fast float %675, %399
  %689 = fmul fast float %678, %400
  %690 = fsub fast float %688, %401
  %691 = fsub fast float %689, %402
  %692 = fmul fast float %690, %687
  %693 = fmul fast float %691, %687
  %694 = fsub fast float %692, %611
  %695 = fsub fast float %693, %612
  %696 = fsub fast float %687, %621
  %697 = call float @dx.op.dot3.f32(i32 55, float %694, float %695, float %696, float %694, float %695, float %696)  ; Dot3(ax,ay,az,bx,by,bz)
  %698 = call float @dx.op.dot3.f32(i32 55, float %694, float %695, float %696, float %589, float %592, float %595)  ; Dot3(ax,ay,az,bx,by,bz)
  %699 = fsub fast float -0.000000e+00, %698
  %700 = call float @dx.op.dot3.f32(i32 55, float %694, float %695, float %696, float %618, float %619, float %620)  ; Dot3(ax,ay,az,bx,by,bz)
  %701 = call float @dx.op.unary.f32(i32 25, float %697)  ; Rsqrt(value)
  %702 = fmul fast float %701, %700
  %703 = bitcast float %697 to i32
  %704 = ashr i32 %703, 1
  %705 = add nsw i32 %704, 532487669
  %706 = bitcast i32 %705 to float
  %707 = fmul fast float %706, 0x3F947AE140000000
  %708 = fsub fast float 2.000000e+00, %707
  %709 = call float @dx.op.unary.f32(i32 7, float %708)  ; Saturate(value)
  %710 = fmul fast float %706, 0x3F7B4E81C0000000
  %711 = fsub fast float 0x3FF5555560000000, %710
  %712 = call float @dx.op.unary.f32(i32 7, float %711)  ; Saturate(value)
  %713 = fmul fast float %687, 0x3F947AE140000000
  %714 = fadd fast float %713, -1.000000e+00
  %715 = call float @dx.op.unary.f32(i32 7, float %714)  ; Saturate(value)
  %716 = fsub fast float %712, %709
  %717 = fmul fast float %715, %716
  %718 = fadd fast float %717, %709
  %719 = fmul fast float %686, %529
  %720 = fcmp fast ogt float %719, 0.000000e+00
  %721 = select i1 %720, float %718, float 0.000000e+00
  %722 = fadd fast float %702, 1.000000e+00
  %723 = fmul fast float %721, %722
  %724 = fadd fast float %723, -1.000000e+00
  %725 = fcmp fast ogt float %724, %659
  %726 = select i1 %725, float %699, float %660
  %727 = fsub fast float %699, %726
  %728 = fmul fast float %727, 0x3FB9999940000000
  %729 = fadd fast float %728, 0xBFDFFFFF80000000
  %730 = call float @dx.op.unary.f32(i32 7, float %729)  ; Saturate(value)
  %731 = fmul fast float %698, 0x3FC99999E0000000
  %732 = fadd fast float %731, 0x3FF0000020000000
  %733 = call float @dx.op.unary.f32(i32 7, float %732)  ; Saturate(value)
  %734 = sitofp i32 %34 to float
  %735 = fdiv fast float 8.000000e+00, %734
  %736 = fmul fast float %733, %730
  %737 = fmul fast float %736, %735
  %738 = fsub fast float %659, %737
  %739 = fcmp ole float %724, %738
  %740 = select i1 %739, float %738, float %724
  %741 = add nuw nsw i32 %661, 1
  %742 = icmp eq i32 %741, %596
  br i1 %742, label %743, label %658

; <label>:743                                     ; preds = %658
  br label %744

; <label>:744                                     ; preds = %743, %631
  %745 = phi float [ %654, %631 ], [ %740, %743 ]
  br i1 %656, label %746, label %833

; <label>:746                                     ; preds = %744
  br label %747

; <label>:747                                     ; preds = %747, %746
  %748 = phi float [ %829, %747 ], [ %655, %746 ]
  %749 = phi float [ %815, %747 ], [ 2.000000e+02, %746 ]
  %750 = phi i32 [ %830, %747 ], [ 0, %746 ]
  %751 = sitofp i32 %596 to float
  %752 = fdiv fast float 1.000000e+00, %751
  %753 = sitofp i32 %750 to float
  %754 = fadd fast float %753, %520
  %755 = fmul fast float %754, %752
  %756 = fmul fast float %755, %755
  %757 = fmul fast float %756, %628
  %758 = call float @dx.op.binary.f32(i32 36, float %757, float 3.000000e+00)  ; FMin(a,b)
  %759 = fadd fast float %758, 1.000000e+00
  %760 = fmul fast float %756, %605
  %761 = fmul fast float %756, %606
  %762 = fadd fast float %760, %47
  %763 = fmul fast float %640, %762
  %764 = fsub fast float %538, %763
  %765 = fadd fast float %761, %48
  %766 = fmul fast float %641, %765
  %767 = fsub fast float %539, %766
  %768 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %13, float %764, float %767, float undef, float undef, i32 0, i32 0, i32 undef, float %759)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %769 = extractvalue %dx.types.ResRet.f32 %768, 0
  %770 = fcmp fast ogt float %769, -1.000000e+00
  %771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %772 = extractvalue %dx.types.CBufRet.f32 %771, 1
  %773 = select i1 %770, float %772, float 1.000000e+00
  %774 = fadd fast float %769, 1.000000e+00
  %775 = fmul fast float %773, %774
  %776 = call float @dx.op.unary.f32(i32 6, float %775)  ; FAbs(value)
  %777 = fmul fast float %764, %399
  %778 = fmul fast float %767, %400
  %779 = fsub fast float %777, %401
  %780 = fsub fast float %778, %402
  %781 = fmul fast float %779, %776
  %782 = fmul fast float %780, %776
  %783 = fsub fast float %781, %611
  %784 = fsub fast float %782, %612
  %785 = fsub fast float %776, %621
  %786 = call float @dx.op.dot3.f32(i32 55, float %783, float %784, float %785, float %783, float %784, float %785)  ; Dot3(ax,ay,az,bx,by,bz)
  %787 = call float @dx.op.dot3.f32(i32 55, float %783, float %784, float %785, float %589, float %592, float %595)  ; Dot3(ax,ay,az,bx,by,bz)
  %788 = fsub fast float -0.000000e+00, %787
  %789 = call float @dx.op.dot3.f32(i32 55, float %783, float %784, float %785, float %618, float %619, float %620)  ; Dot3(ax,ay,az,bx,by,bz)
  %790 = call float @dx.op.unary.f32(i32 25, float %786)  ; Rsqrt(value)
  %791 = fmul fast float %790, %789
  %792 = bitcast float %786 to i32
  %793 = ashr i32 %792, 1
  %794 = add nsw i32 %793, 532487669
  %795 = bitcast i32 %794 to float
  %796 = fmul fast float %795, 0x3F947AE140000000
  %797 = fsub fast float 2.000000e+00, %796
  %798 = call float @dx.op.unary.f32(i32 7, float %797)  ; Saturate(value)
  %799 = fmul fast float %795, 0x3F7B4E81C0000000
  %800 = fsub fast float 0x3FF5555560000000, %799
  %801 = call float @dx.op.unary.f32(i32 7, float %800)  ; Saturate(value)
  %802 = fmul fast float %776, 0x3F947AE140000000
  %803 = fadd fast float %802, -1.000000e+00
  %804 = call float @dx.op.unary.f32(i32 7, float %803)  ; Saturate(value)
  %805 = fsub fast float %801, %798
  %806 = fmul fast float %804, %805
  %807 = fadd fast float %806, %798
  %808 = fmul fast float %775, %529
  %809 = fcmp fast ogt float %808, 0.000000e+00
  %810 = select i1 %809, float %807, float 0.000000e+00
  %811 = fadd fast float %791, 1.000000e+00
  %812 = fmul fast float %810, %811
  %813 = fadd fast float %812, -1.000000e+00
  %814 = fcmp fast ogt float %813, %748
  %815 = select i1 %814, float %788, float %749
  %816 = fsub fast float %788, %815
  %817 = fmul fast float %816, 0x3FB9999940000000
  %818 = fadd fast float %817, 0xBFDFFFFF80000000
  %819 = call float @dx.op.unary.f32(i32 7, float %818)  ; Saturate(value)
  %820 = fmul fast float %787, 0x3FC99999E0000000
  %821 = fadd fast float %820, 0x3FF0000020000000
  %822 = call float @dx.op.unary.f32(i32 7, float %821)  ; Saturate(value)
  %823 = sitofp i32 %34 to float
  %824 = fdiv fast float 8.000000e+00, %823
  %825 = fmul fast float %822, %819
  %826 = fmul fast float %825, %824
  %827 = fsub fast float %748, %826
  %828 = fcmp ole float %813, %827
  %829 = select i1 %828, float %827, float %813
  %830 = add nuw nsw i32 %750, 1
  %831 = icmp eq i32 %830, %596
  br i1 %831, label %832, label %747

; <label>:832                                     ; preds = %747
  br label %833

; <label>:833                                     ; preds = %832, %744
  %834 = phi float [ %655, %744 ], [ %829, %832 ]
  %835 = fmul fast float %620, %642
  %836 = fmul fast float %620, %640
  %837 = fsub fast float -0.000000e+00, %836
  %838 = fmul fast float %640, %619
  %839 = fmul fast float %618, %642
  %840 = fsub fast float %838, %839
  %841 = call float @dx.op.dot3.f32(i32 55, float %589, float %592, float %595, float %835, float %837, float %840)  ; Dot3(ax,ay,az,bx,by,bz)
  %842 = fmul fast float %841, %835
  %843 = fmul fast float %841, %837
  %844 = fmul fast float %841, %840
  %845 = fsub fast float %589, %842
  %846 = fsub fast float %592, %843
  %847 = fsub fast float %595, %844
  %848 = fmul fast float %845, %845
  %849 = fmul fast float %846, %846
  %850 = fadd fast float %848, %849
  %851 = fmul fast float %847, %847
  %852 = fadd fast float %850, %851
  %853 = call float @dx.op.unary.f32(i32 24, float %852)  ; Sqrt(value)
  %854 = call float @dx.op.dot3.f32(i32 55, float %640, float %642, float 0.000000e+00, float %845, float %846, float %847)  ; Dot3(ax,ay,az,bx,by,bz)
  %855 = call float @dx.op.dot3.f32(i32 55, float %640, float %642, float 0.000000e+00, float %618, float %619, float %620)  ; Dot3(ax,ay,az,bx,by,bz)
  %856 = fmul fast float %855, %618
  %857 = fmul fast float %855, %619
  %858 = fmul fast float %855, %620
  %859 = call float @dx.op.dot3.f32(i32 55, float %856, float %857, float %858, float %845, float %846, float %847)  ; Dot3(ax,ay,az,bx,by,bz)
  %860 = fcmp fast oge float %854, %859
  %861 = fdiv fast float 1.000000e+00, %853
  %862 = call float @dx.op.dot3.f32(i32 55, float %845, float %846, float %847, float %618, float %619, float %620)  ; Dot3(ax,ay,az,bx,by,bz)
  %863 = fmul fast float %862, %861
  %864 = call float @dx.op.unary.f32(i32 7, float %863)  ; Saturate(value)
  %865 = fmul fast float %864, %864
  %866 = fsub fast float 1.000000e+00, %865
  %867 = bitcast float %866 to i32
  %868 = ashr i32 %867, 1
  %869 = add nsw i32 %868, 532487669
  %870 = bitcast i32 %869 to float
  %871 = call float @dx.op.unary.f32(i32 6, float %864)  ; FAbs(value)
  %872 = fmul fast float %871, 0x3FC40AE960000000
  %873 = fsub fast float 0x3FF921FB60000000, %872
  %874 = fsub fast float 1.000000e+00, %871
  %875 = bitcast float %874 to i32
  %876 = ashr i32 %875, 1
  %877 = add nsw i32 %876, 532487669
  %878 = bitcast i32 %877 to float
  %879 = fmul fast float %878, %873
  %880 = fcmp fast oge float %864, 0.000000e+00
  %881 = fsub fast float 0x400921FB60000000, %879
  %882 = select i1 %880, float %879, float %881
  %883 = fsub fast float -0.000000e+00, %870
  %884 = select i1 %860, float %883, float %870
  %885 = fsub fast float -0.000000e+00, %882
  %886 = select i1 %860, float %885, float %882
  %887 = call float @dx.op.unary.f32(i32 6, float %745)  ; FAbs(value)
  %888 = fmul fast float %887, 0x3FC40AE960000000
  %889 = fsub fast float 0x3FF921FB60000000, %888
  %890 = fsub fast float 1.000000e+00, %887
  %891 = bitcast float %890 to i32
  %892 = ashr i32 %891, 1
  %893 = add nsw i32 %892, 532487669
  %894 = bitcast i32 %893 to float
  %895 = fmul fast float %894, %889
  %896 = fcmp fast oge float %745, 0.000000e+00
  %897 = fsub fast float 0x400921FB60000000, %895
  %898 = select i1 %896, float %895, float %897
  %899 = call float @dx.op.unary.f32(i32 6, float %834)  ; FAbs(value)
  %900 = fmul fast float %899, 0x3FC40AE960000000
  %901 = fsub fast float 0x3FF921FB60000000, %900
  %902 = fsub fast float 1.000000e+00, %899
  %903 = bitcast float %902 to i32
  %904 = ashr i32 %903, 1
  %905 = add nsw i32 %904, 532487669
  %906 = bitcast i32 %905 to float
  %907 = fmul fast float %906, %901
  %908 = fcmp fast oge float %834, 0.000000e+00
  %909 = fsub fast float 0x400921FB60000000, %907
  %910 = select i1 %908, float %907, float %909
  %911 = fsub fast float -0.000000e+00, %886
  %912 = fsub fast float %911, %898
  %913 = call float @dx.op.binary.f32(i32 35, float %912, float 0xBFF921FB60000000)  ; FMax(a,b)
  %914 = call float @dx.op.binary.f32(i32 36, float %913, float 0x3FF921FB60000000)  ; FMin(a,b)
  %915 = fadd fast float %886, %914
  %916 = fsub fast float %910, %886
  %917 = call float @dx.op.binary.f32(i32 35, float %916, float 0xBFF921FB60000000)  ; FMax(a,b)
  %918 = call float @dx.op.binary.f32(i32 36, float %917, float 0x3FF921FB60000000)  ; FMin(a,b)
  %919 = fadd fast float %886, %918
  %920 = fmul fast float %915, 2.000000e+00
  %921 = fsub fast float %920, %886
  %922 = call float @dx.op.unary.f32(i32 12, float %921)  ; Cos(value)
  %923 = fsub fast float -0.000000e+00, %922
  %924 = fmul fast float %919, 2.000000e+00
  %925 = fsub fast float %924, %886
  %926 = call float @dx.op.unary.f32(i32 12, float %925)  ; Cos(value)
  %927 = fmul fast float %864, 2.000000e+00
  %928 = fadd fast float %919, %915
  %929 = fmul fast float %884, %928
  %930 = fmul fast float %929, 2.000000e+00
  %931 = fsub fast float %923, %926
  %932 = fadd fast float %931, %927
  %933 = fadd fast float %932, %930
  %934 = fmul fast float %853, 2.500000e-01
  %935 = fmul fast float %934, %933
  %936 = fadd fast float %935, %632
  %937 = fmul fast float %886, %884
  %938 = fadd fast float %937, %864
  %939 = fmul fast float %938, %853
  %940 = fadd fast float %939, %633
  %941 = add nuw nsw i32 %634, 1
  %942 = icmp eq i32 %941, %33
  br i1 %942, label %943, label %631

; <label>:943                                     ; preds = %833
  br label %944

; <label>:944                                     ; preds = %943, %541
  %945 = phi float [ 0.000000e+00, %541 ], [ %936, %943 ]
  %946 = phi float [ 0.000000e+00, %541 ], [ %940, %943 ]
  %947 = fdiv fast float %945, %946
  br label %948

; <label>:948                                     ; preds = %944, %476
  %949 = phi float [ %947, %944 ], [ 1.000000e+00, %476 ]
  %950 = fmul fast float %949, %949
  store float %949, float addrspace(3)* %198, align 4
  store float %950, float addrspace(3)* %201, align 4
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %951 = load float, float addrspace(3)* %206, align 4
  %952 = load float, float addrspace(3)* %210, align 4
  %953 = fadd fast float %951, %949
  %954 = fadd fast float %952, %950
  %955 = load float, float addrspace(3)* %217, align 4
  %956 = load float, float addrspace(3)* %221, align 4
  %957 = fadd fast float %953, %955
  %958 = fadd fast float %954, %956
  %959 = load float, float addrspace(3)* %228, align 4
  %960 = load float, float addrspace(3)* %232, align 4
  %961 = fadd fast float %957, %959
  %962 = fadd fast float %958, %960
  store float %961, float addrspace(3)* %198, align 4
  store float %962, float addrspace(3)* %201, align 4
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %963 = load float, float addrspace(3)* %239, align 4
  %964 = mul i32 %236, 2
  %965 = add i32 1, %964
  %966 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %965
  %967 = load float, float addrspace(3)* %966, align 4
  %968 = fadd fast float %963, %961
  %969 = fadd fast float %967, %962
  %970 = load float, float addrspace(3)* %245, align 4
  %971 = mul i32 %242, 2
  %972 = add i32 1, %971
  %973 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %972
  %974 = load float, float addrspace(3)* %973, align 4
  %975 = fadd fast float %968, %970
  %976 = fadd fast float %969, %974
  %977 = load float, float addrspace(3)* %251, align 4
  %978 = mul i32 %248, 2
  %979 = add i32 1, %978
  %980 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gtaoQuadMeanVariance@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %979
  %981 = load float, float addrspace(3)* %980, align 4
  %982 = fadd fast float %975, %977
  %983 = fadd fast float %976, %981
  %984 = fmul fast float %982, 6.250000e-02
  %985 = fmul fast float %983, 6.250000e-02
  %986 = fmul fast float %984, %984
  %987 = fsub fast float %985, %986
  %988 = call float @dx.op.binary.f32(i32 35, float %984, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %989 = fdiv fast float %987, %988
  %990 = fmul fast float %989, 6.553500e+04
  %991 = fptoui float %990 to i32
  br i1 %474, label %992, label %993, !dx.controlflow.hints !41

; <label>:992                                     ; preds = %948
  store i32 0, i32 addrspace(3)* @"\01?gtaoQuadMaxUint@@3IA", align 4, !tbaa !42, !noalias !40
  br label %993

; <label>:993                                     ; preds = %992, %948
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %994 = atomicrmw umax i32 addrspace(3)* @"\01?gtaoQuadMaxUint@@3IA", i32 %991 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %995 = load i32, i32 addrspace(3)* @"\01?gtaoQuadMaxUint@@3IA", align 4, !tbaa !42, !noalias !40
  %996 = uitofp i32 %995 to float
  %997 = fmul fast float %996, 0x3EF0001000000000
  %998 = fcmp fast ogt float %997, 0x3FA1EB8520000000
  %999 = select i1 %998, i32 2, i32 1
  %1000 = fcmp fast ogt float %997, 0x3FD3333340000000
  %1001 = zext i1 %1000 to i32
  %1002 = add nuw nsw i32 %999, %1001
  %1003 = fcmp fast ogt float %997, 0x3FE99999A0000000
  %1004 = zext i1 %1003 to i32
  %1005 = add nuw nsw i32 %1002, %1004
  %1006 = call i32 @dx.op.binary.i32(i32 39, i32 %1005, i32 %480)  ; UMax(a,b)
  %1007 = shl i32 %33, 1
  %1008 = sitofp i32 %33 to float
  %1009 = fptosi float %1008 to i32
  %1010 = call i32 @dx.op.binary.i32(i32 37, i32 %1009, i32 %33)  ; IMax(a,b)
  %1011 = call i32 @dx.op.binary.i32(i32 38, i32 %1010, i32 %1007)  ; IMin(a,b)
  %1012 = icmp ugt i32 %1006, 1
  br i1 %1012, label %1013, label %1438, !dx.controlflow.hints !49

; <label>:1013                                    ; preds = %993
  %1014 = getelementptr inbounds [4 x float], [4 x float]* %27, i32 0, i32 0
  store float %385, float* %1014, align 4
  %1015 = getelementptr inbounds [4 x float], [4 x float]* %27, i32 0, i32 1
  store float %381, float* %1015, align 4
  %1016 = getelementptr inbounds [4 x float], [4 x float]* %27, i32 0, i32 2
  store float %373, float* %1016, align 4
  %1017 = getelementptr inbounds [4 x float], [4 x float]* %27, i32 0, i32 3
  store float %377, float* %1017, align 4
  %1018 = getelementptr [4 x float], [4 x float]* %27, i32 0, i32 %438
  %1019 = load float, float* %1018, align 4, !tbaa !31, !noalias !50
  %1020 = and i32 %438, 1
  %1021 = uitofp i32 %1020 to float
  %1022 = fadd fast float %1021, 5.000000e-01
  %1023 = lshr i32 %438, 1
  %1024 = uitofp i32 %1023 to float
  %1025 = fadd fast float %1024, 5.000000e-01
  %1026 = fmul fast float %1022, %406
  %1027 = fmul fast float %1025, %407
  %1028 = fadd fast float %1026, %51
  %1029 = fadd fast float %1027, %52
  %1030 = fcmp fast olt float %1019, 6.550000e+04
  br i1 %1030, label %1031, label %1438, !dx.controlflow.hints !48

; <label>:1031                                    ; preds = %1013
  %1032 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 0
  store i32 %389, i32* %1032, align 4
  %1033 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 1
  store i32 %392, i32* %1033, align 4
  %1034 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 2
  store i32 %395, i32* %1034, align 4
  %1035 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 3
  store i32 %397, i32* %1035, align 4
  %1036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 99)  ; CBufferLoadLegacy(handle,regIndex)
  %1037 = extractvalue %dx.types.CBufRet.f32 %1036, 0
  %1038 = extractvalue %dx.types.CBufRet.f32 %1036, 1
  %1039 = extractvalue %dx.types.CBufRet.f32 %1036, 2
  %1040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 100)  ; CBufferLoadLegacy(handle,regIndex)
  %1041 = extractvalue %dx.types.CBufRet.f32 %1040, 0
  %1042 = extractvalue %dx.types.CBufRet.f32 %1040, 1
  %1043 = extractvalue %dx.types.CBufRet.f32 %1040, 2
  %1044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 101)  ; CBufferLoadLegacy(handle,regIndex)
  %1045 = extractvalue %dx.types.CBufRet.f32 %1044, 0
  %1046 = extractvalue %dx.types.CBufRet.f32 %1044, 1
  %1047 = extractvalue %dx.types.CBufRet.f32 %1044, 2
  %1048 = getelementptr [4 x i32], [4 x i32]* %26, i32 0, i32 %438
  %1049 = load i32, i32* %1048, align 4, !tbaa !42, !noalias !50
  %1050 = lshr i32 %1049, 8
  %1051 = and i32 %1049, 255
  %1052 = and i32 %1050, 255
  %1053 = uitofp i32 %1051 to float
  %1054 = uitofp i32 %1052 to float
  %1055 = fmul fast float %1053, 0x3F80101020000000
  %1056 = fmul fast float %1054, 0x3F80101020000000
  %1057 = fadd fast float %1055, -1.000000e+00
  %1058 = fadd fast float %1056, -1.000000e+00
  %1059 = call float @dx.op.unary.f32(i32 6, float %1057)  ; FAbs(value)
  %1060 = fsub fast float 1.000000e+00, %1059
  %1061 = call float @dx.op.unary.f32(i32 6, float %1058)  ; FAbs(value)
  %1062 = fsub fast float %1060, %1061
  %1063 = fsub fast float -0.000000e+00, %1062
  %1064 = call float @dx.op.binary.f32(i32 35, float %1063, float 0.000000e+00)  ; FMax(a,b)
  %1065 = fcmp fast ogt float %1057, 0.000000e+00
  %1066 = fsub fast float -0.000000e+00, %1064
  %1067 = select i1 %1065, float %1066, float %1064
  %1068 = fadd fast float %1067, %1057
  %1069 = fcmp fast ogt float %1058, 0.000000e+00
  %1070 = select i1 %1069, float %1066, float %1064
  %1071 = fadd fast float %1070, %1058
  %1072 = call float @dx.op.dot3.f32(i32 55, float %1068, float %1071, float %1062, float %1068, float %1071, float %1062)  ; Dot3(ax,ay,az,bx,by,bz)
  %1073 = call float @dx.op.unary.f32(i32 25, float %1072)  ; Rsqrt(value)
  %1074 = fmul fast float %1068, %1073
  %1075 = fmul fast float %1071, %1073
  %1076 = fmul fast float %1073, %1062
  %1077 = fmul fast float %1074, %1037
  %1078 = call float @dx.op.tertiary.f32(i32 46, float %1075, float %1038, float %1077)  ; FMad(a,b,c)
  %1079 = call float @dx.op.tertiary.f32(i32 46, float %1076, float %1039, float %1078)  ; FMad(a,b,c)
  %1080 = fmul fast float %1074, %1041
  %1081 = call float @dx.op.tertiary.f32(i32 46, float %1075, float %1042, float %1080)  ; FMad(a,b,c)
  %1082 = call float @dx.op.tertiary.f32(i32 46, float %1076, float %1043, float %1081)  ; FMad(a,b,c)
  %1083 = fmul fast float %1074, %1045
  %1084 = call float @dx.op.tertiary.f32(i32 46, float %1075, float %1046, float %1083)  ; FMad(a,b,c)
  %1085 = call float @dx.op.tertiary.f32(i32 46, float %1076, float %1047, float %1084)  ; FMad(a,b,c)
  %1086 = ashr i32 %34, 1
  %1087 = call float @dx.op.unary.f32(i32 6, float %1019)  ; FAbs(value)
  %1088 = fmul fast float %406, %38
  %1089 = fmul fast float %407, %39
  %1090 = fmul fast float %1087, %401
  %1091 = fmul fast float %402, %1087
  %1092 = fsub fast float -0.000000e+00, %1091
  %1093 = fdiv fast float 5.000000e+01, %1090
  %1094 = fdiv fast float 5.000000e+01, %1092
  %1095 = call float @dx.op.binary.f32(i32 36, float %1088, float %1093)  ; FMin(a,b)
  %1096 = call float @dx.op.binary.f32(i32 36, float %1089, float %1094)  ; FMin(a,b)
  %1097 = fmul fast float %1028, %399
  %1098 = fmul fast float %1029, %400
  %1099 = fsub fast float %1097, %401
  %1100 = fsub fast float %1098, %402
  %1101 = fmul fast float %1087, %1099
  %1102 = fmul fast float %1087, %1100
  %1103 = fsub fast float -0.000000e+00, %1101
  %1104 = fsub fast float -0.000000e+00, %1102
  %1105 = fsub fast float -0.000000e+00, %1087
  %1106 = call float @dx.op.dot3.f32(i32 55, float %1103, float %1104, float %1105, float %1103, float %1104, float %1105)  ; Dot3(ax,ay,az,bx,by,bz)
  %1107 = call float @dx.op.unary.f32(i32 25, float %1106)  ; Rsqrt(value)
  %1108 = fmul fast float %1107, %1103
  %1109 = fmul fast float %1107, %1104
  %1110 = fmul fast float %1107, %1105
  %1111 = fmul fast float %1087, 0x3FEFEB8520000000
  %1112 = fmul fast float %1095, %43
  %1113 = fmul fast float %1096, %44
  %1114 = fmul fast float %1112, %1112
  %1115 = fmul fast float %1113, %1113
  %1116 = fadd fast float %1115, %1114
  %1117 = call float @dx.op.unary.f32(i32 24, float %1116)  ; Sqrt(value)
  %1118 = fmul fast float %1117, 3.125000e-02
  %1119 = icmp sgt i32 %1011, 0
  br i1 %1119, label %1120, label %1434

; <label>:1120                                    ; preds = %1031
  br label %1121

; <label>:1121                                    ; preds = %1323, %1120
  %1122 = phi float [ %1430, %1323 ], [ 0.000000e+00, %1120 ]
  %1123 = phi i32 [ %1431, %1323 ], [ 0, %1120 ]
  %1124 = phi float [ %1426, %1323 ], [ 0.000000e+00, %1120 ]
  %1125 = sitofp i32 %1011 to float
  %1126 = fdiv fast float 0x400921FB60000000, %1125
  %1127 = sitofp i32 %1123 to float
  %1128 = fadd fast float %1127, %500
  %1129 = fmul fast float %1126, %1128
  %1130 = call float @dx.op.unary.f32(i32 12, float %1129)  ; Cos(value)
  %1131 = call float @dx.op.unary.f32(i32 13, float %1129)  ; Sin(value)
  %1132 = fsub fast float -0.000000e+00, %1131
  %1133 = call float @dx.op.dot3.f32(i32 55, float %1108, float %1109, float %1110, float %1079, float %1082, float %1085)  ; Dot3(ax,ay,az,bx,by,bz)
  %1134 = call float @dx.op.unary.f32(i32 6, float %1133)  ; FAbs(value)
  %1135 = call float @dx.op.unary.f32(i32 6, float %1134)  ; FAbs(value)
  %1136 = fcmp fast ogt float %1135, 0x3EB0C6F7A0000000
  %1137 = call float @dx.op.dot3.f32(i32 55, float %1130, float %1132, float 0.000000e+00, float %1079, float %1082, float %1085)  ; Dot3(ax,ay,az,bx,by,bz)
  %1138 = fsub fast float -0.000000e+00, %1137
  %1139 = fdiv fast float %1138, %1134
  %1140 = select i1 %1136, float %1139, float 0.000000e+00
  %1141 = fmul fast float %1140, %1140
  %1142 = fadd fast float %1141, 1.000000e+00
  %1143 = call float @dx.op.unary.f32(i32 25, float %1142)  ; Rsqrt(value)
  %1144 = fmul fast float %1140, %1143
  %1145 = fsub fast float -0.000000e+00, %1144
  %1146 = icmp sgt i32 %1086, 0
  br i1 %1146, label %1147, label %1234

; <label>:1147                                    ; preds = %1121
  br label %1148

; <label>:1148                                    ; preds = %1148, %1147
  %1149 = phi float [ %1230, %1148 ], [ %1144, %1147 ]
  %1150 = phi float [ %1216, %1148 ], [ 2.000000e+02, %1147 ]
  %1151 = phi i32 [ %1231, %1148 ], [ 0, %1147 ]
  %1152 = sitofp i32 %1086 to float
  %1153 = fdiv fast float 1.000000e+00, %1152
  %1154 = sitofp i32 %1151 to float
  %1155 = fadd fast float %1154, %521
  %1156 = fmul fast float %1155, %1153
  %1157 = fmul fast float %1156, %1156
  %1158 = fmul fast float %1157, %1118
  %1159 = call float @dx.op.binary.f32(i32 36, float %1158, float 3.000000e+00)  ; FMin(a,b)
  %1160 = fadd fast float %1159, 1.000000e+00
  %1161 = fmul fast float %1157, %1095
  %1162 = fmul fast float %1157, %1096
  %1163 = fadd fast float %1161, %47
  %1164 = fmul fast float %1163, %1130
  %1165 = fadd fast float %1164, %1028
  %1166 = fadd fast float %1162, %48
  %1167 = fmul fast float %1166, %1131
  %1168 = fadd fast float %1167, %1029
  %1169 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %13, float %1165, float %1168, float undef, float undef, i32 0, i32 0, i32 undef, float %1160)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1170 = extractvalue %dx.types.ResRet.f32 %1169, 0
  %1171 = fcmp fast ogt float %1170, -1.000000e+00
  %1172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1173 = extractvalue %dx.types.CBufRet.f32 %1172, 1
  %1174 = select i1 %1171, float %1173, float 1.000000e+00
  %1175 = fadd fast float %1170, 1.000000e+00
  %1176 = fmul fast float %1174, %1175
  %1177 = call float @dx.op.unary.f32(i32 6, float %1176)  ; FAbs(value)
  %1178 = fmul fast float %1165, %399
  %1179 = fmul fast float %1168, %400
  %1180 = fsub fast float %1178, %401
  %1181 = fsub fast float %1179, %402
  %1182 = fmul fast float %1180, %1177
  %1183 = fmul fast float %1181, %1177
  %1184 = fsub fast float %1182, %1101
  %1185 = fsub fast float %1183, %1102
  %1186 = fsub fast float %1177, %1111
  %1187 = call float @dx.op.dot3.f32(i32 55, float %1184, float %1185, float %1186, float %1184, float %1185, float %1186)  ; Dot3(ax,ay,az,bx,by,bz)
  %1188 = call float @dx.op.dot3.f32(i32 55, float %1184, float %1185, float %1186, float %1079, float %1082, float %1085)  ; Dot3(ax,ay,az,bx,by,bz)
  %1189 = fsub fast float -0.000000e+00, %1188
  %1190 = call float @dx.op.dot3.f32(i32 55, float %1184, float %1185, float %1186, float %1108, float %1109, float %1110)  ; Dot3(ax,ay,az,bx,by,bz)
  %1191 = call float @dx.op.unary.f32(i32 25, float %1187)  ; Rsqrt(value)
  %1192 = fmul fast float %1191, %1190
  %1193 = bitcast float %1187 to i32
  %1194 = ashr i32 %1193, 1
  %1195 = add nsw i32 %1194, 532487669
  %1196 = bitcast i32 %1195 to float
  %1197 = fmul fast float %1196, 0x3F947AE140000000
  %1198 = fsub fast float 2.000000e+00, %1197
  %1199 = call float @dx.op.unary.f32(i32 7, float %1198)  ; Saturate(value)
  %1200 = fmul fast float %1196, 0x3F7B4E81C0000000
  %1201 = fsub fast float 0x3FF5555560000000, %1200
  %1202 = call float @dx.op.unary.f32(i32 7, float %1201)  ; Saturate(value)
  %1203 = fmul fast float %1177, 0x3F947AE140000000
  %1204 = fadd fast float %1203, -1.000000e+00
  %1205 = call float @dx.op.unary.f32(i32 7, float %1204)  ; Saturate(value)
  %1206 = fsub fast float %1202, %1199
  %1207 = fmul fast float %1205, %1206
  %1208 = fadd fast float %1207, %1199
  %1209 = fmul fast float %1176, %1019
  %1210 = fcmp fast ogt float %1209, 0.000000e+00
  %1211 = select i1 %1210, float %1208, float 0.000000e+00
  %1212 = fadd fast float %1192, 1.000000e+00
  %1213 = fmul fast float %1211, %1212
  %1214 = fadd fast float %1213, -1.000000e+00
  %1215 = fcmp fast ogt float %1214, %1149
  %1216 = select i1 %1215, float %1189, float %1150
  %1217 = fsub fast float %1189, %1216
  %1218 = fmul fast float %1217, 0x3FB9999940000000
  %1219 = fadd fast float %1218, 0xBFDFFFFF80000000
  %1220 = call float @dx.op.unary.f32(i32 7, float %1219)  ; Saturate(value)
  %1221 = fmul fast float %1188, 0x3FC99999E0000000
  %1222 = fadd fast float %1221, 0x3FF0000020000000
  %1223 = call float @dx.op.unary.f32(i32 7, float %1222)  ; Saturate(value)
  %1224 = sitofp i32 %34 to float
  %1225 = fdiv fast float 8.000000e+00, %1224
  %1226 = fmul fast float %1223, %1220
  %1227 = fmul fast float %1226, %1225
  %1228 = fsub fast float %1149, %1227
  %1229 = fcmp ole float %1214, %1228
  %1230 = select i1 %1229, float %1228, float %1214
  %1231 = add nuw nsw i32 %1151, 1
  %1232 = icmp eq i32 %1231, %1086
  br i1 %1232, label %1233, label %1148

; <label>:1233                                    ; preds = %1148
  br label %1234

; <label>:1234                                    ; preds = %1233, %1121
  %1235 = phi float [ %1144, %1121 ], [ %1230, %1233 ]
  br i1 %1146, label %1236, label %1323

; <label>:1236                                    ; preds = %1234
  br label %1237

; <label>:1237                                    ; preds = %1237, %1236
  %1238 = phi float [ %1319, %1237 ], [ %1145, %1236 ]
  %1239 = phi float [ %1305, %1237 ], [ 2.000000e+02, %1236 ]
  %1240 = phi i32 [ %1320, %1237 ], [ 0, %1236 ]
  %1241 = sitofp i32 %1086 to float
  %1242 = fdiv fast float 1.000000e+00, %1241
  %1243 = sitofp i32 %1240 to float
  %1244 = fadd fast float %1243, %521
  %1245 = fmul fast float %1244, %1242
  %1246 = fmul fast float %1245, %1245
  %1247 = fmul fast float %1246, %1118
  %1248 = call float @dx.op.binary.f32(i32 36, float %1247, float 3.000000e+00)  ; FMin(a,b)
  %1249 = fadd fast float %1248, 1.000000e+00
  %1250 = fmul fast float %1246, %1095
  %1251 = fmul fast float %1246, %1096
  %1252 = fadd fast float %1250, %47
  %1253 = fmul fast float %1130, %1252
  %1254 = fsub fast float %1028, %1253
  %1255 = fadd fast float %1251, %48
  %1256 = fmul fast float %1131, %1255
  %1257 = fsub fast float %1029, %1256
  %1258 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %13, float %1254, float %1257, float undef, float undef, i32 0, i32 0, i32 undef, float %1249)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1259 = extractvalue %dx.types.ResRet.f32 %1258, 0
  %1260 = fcmp fast ogt float %1259, -1.000000e+00
  %1261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1262 = extractvalue %dx.types.CBufRet.f32 %1261, 1
  %1263 = select i1 %1260, float %1262, float 1.000000e+00
  %1264 = fadd fast float %1259, 1.000000e+00
  %1265 = fmul fast float %1263, %1264
  %1266 = call float @dx.op.unary.f32(i32 6, float %1265)  ; FAbs(value)
  %1267 = fmul fast float %1254, %399
  %1268 = fmul fast float %1257, %400
  %1269 = fsub fast float %1267, %401
  %1270 = fsub fast float %1268, %402
  %1271 = fmul fast float %1269, %1266
  %1272 = fmul fast float %1270, %1266
  %1273 = fsub fast float %1271, %1101
  %1274 = fsub fast float %1272, %1102
  %1275 = fsub fast float %1266, %1111
  %1276 = call float @dx.op.dot3.f32(i32 55, float %1273, float %1274, float %1275, float %1273, float %1274, float %1275)  ; Dot3(ax,ay,az,bx,by,bz)
  %1277 = call float @dx.op.dot3.f32(i32 55, float %1273, float %1274, float %1275, float %1079, float %1082, float %1085)  ; Dot3(ax,ay,az,bx,by,bz)
  %1278 = fsub fast float -0.000000e+00, %1277
  %1279 = call float @dx.op.dot3.f32(i32 55, float %1273, float %1274, float %1275, float %1108, float %1109, float %1110)  ; Dot3(ax,ay,az,bx,by,bz)
  %1280 = call float @dx.op.unary.f32(i32 25, float %1276)  ; Rsqrt(value)
  %1281 = fmul fast float %1280, %1279
  %1282 = bitcast float %1276 to i32
  %1283 = ashr i32 %1282, 1
  %1284 = add nsw i32 %1283, 532487669
  %1285 = bitcast i32 %1284 to float
  %1286 = fmul fast float %1285, 0x3F947AE140000000
  %1287 = fsub fast float 2.000000e+00, %1286
  %1288 = call float @dx.op.unary.f32(i32 7, float %1287)  ; Saturate(value)
  %1289 = fmul fast float %1285, 0x3F7B4E81C0000000
  %1290 = fsub fast float 0x3FF5555560000000, %1289
  %1291 = call float @dx.op.unary.f32(i32 7, float %1290)  ; Saturate(value)
  %1292 = fmul fast float %1266, 0x3F947AE140000000
  %1293 = fadd fast float %1292, -1.000000e+00
  %1294 = call float @dx.op.unary.f32(i32 7, float %1293)  ; Saturate(value)
  %1295 = fsub fast float %1291, %1288
  %1296 = fmul fast float %1294, %1295
  %1297 = fadd fast float %1296, %1288
  %1298 = fmul fast float %1265, %1019
  %1299 = fcmp fast ogt float %1298, 0.000000e+00
  %1300 = select i1 %1299, float %1297, float 0.000000e+00
  %1301 = fadd fast float %1281, 1.000000e+00
  %1302 = fmul fast float %1300, %1301
  %1303 = fadd fast float %1302, -1.000000e+00
  %1304 = fcmp fast ogt float %1303, %1238
  %1305 = select i1 %1304, float %1278, float %1239
  %1306 = fsub fast float %1278, %1305
  %1307 = fmul fast float %1306, 0x3FB9999940000000
  %1308 = fadd fast float %1307, 0xBFDFFFFF80000000
  %1309 = call float @dx.op.unary.f32(i32 7, float %1308)  ; Saturate(value)
  %1310 = fmul fast float %1277, 0x3FC99999E0000000
  %1311 = fadd fast float %1310, 0x3FF0000020000000
  %1312 = call float @dx.op.unary.f32(i32 7, float %1311)  ; Saturate(value)
  %1313 = sitofp i32 %34 to float
  %1314 = fdiv fast float 8.000000e+00, %1313
  %1315 = fmul fast float %1312, %1309
  %1316 = fmul fast float %1315, %1314
  %1317 = fsub fast float %1238, %1316
  %1318 = fcmp ole float %1303, %1317
  %1319 = select i1 %1318, float %1317, float %1303
  %1320 = add nuw nsw i32 %1240, 1
  %1321 = icmp eq i32 %1320, %1086
  br i1 %1321, label %1322, label %1237

; <label>:1322                                    ; preds = %1237
  br label %1323

; <label>:1323                                    ; preds = %1322, %1234
  %1324 = phi float [ %1145, %1234 ], [ %1319, %1322 ]
  %1325 = fmul fast float %1110, %1132
  %1326 = fmul fast float %1110, %1130
  %1327 = fsub fast float -0.000000e+00, %1326
  %1328 = fmul fast float %1130, %1109
  %1329 = fmul fast float %1108, %1132
  %1330 = fsub fast float %1328, %1329
  %1331 = call float @dx.op.dot3.f32(i32 55, float %1079, float %1082, float %1085, float %1325, float %1327, float %1330)  ; Dot3(ax,ay,az,bx,by,bz)
  %1332 = fmul fast float %1331, %1325
  %1333 = fmul fast float %1331, %1327
  %1334 = fmul fast float %1331, %1330
  %1335 = fsub fast float %1079, %1332
  %1336 = fsub fast float %1082, %1333
  %1337 = fsub fast float %1085, %1334
  %1338 = fmul fast float %1335, %1335
  %1339 = fmul fast float %1336, %1336
  %1340 = fadd fast float %1338, %1339
  %1341 = fmul fast float %1337, %1337
  %1342 = fadd fast float %1340, %1341
  %1343 = call float @dx.op.unary.f32(i32 24, float %1342)  ; Sqrt(value)
  %1344 = call float @dx.op.dot3.f32(i32 55, float %1130, float %1132, float 0.000000e+00, float %1335, float %1336, float %1337)  ; Dot3(ax,ay,az,bx,by,bz)
  %1345 = call float @dx.op.dot3.f32(i32 55, float %1130, float %1132, float 0.000000e+00, float %1108, float %1109, float %1110)  ; Dot3(ax,ay,az,bx,by,bz)
  %1346 = fmul fast float %1345, %1108
  %1347 = fmul fast float %1345, %1109
  %1348 = fmul fast float %1345, %1110
  %1349 = call float @dx.op.dot3.f32(i32 55, float %1346, float %1347, float %1348, float %1335, float %1336, float %1337)  ; Dot3(ax,ay,az,bx,by,bz)
  %1350 = fcmp fast oge float %1344, %1349
  %1351 = fdiv fast float 1.000000e+00, %1343
  %1352 = call float @dx.op.dot3.f32(i32 55, float %1335, float %1336, float %1337, float %1108, float %1109, float %1110)  ; Dot3(ax,ay,az,bx,by,bz)
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
  %1377 = call float @dx.op.unary.f32(i32 6, float %1235)  ; FAbs(value)
  %1378 = fmul fast float %1377, 0x3FC40AE960000000
  %1379 = fsub fast float 0x3FF921FB60000000, %1378
  %1380 = fsub fast float 1.000000e+00, %1377
  %1381 = bitcast float %1380 to i32
  %1382 = ashr i32 %1381, 1
  %1383 = add nsw i32 %1382, 532487669
  %1384 = bitcast i32 %1383 to float
  %1385 = fmul fast float %1384, %1379
  %1386 = fcmp fast oge float %1235, 0.000000e+00
  %1387 = fsub fast float 0x400921FB60000000, %1385
  %1388 = select i1 %1386, float %1385, float %1387
  %1389 = call float @dx.op.unary.f32(i32 6, float %1324)  ; FAbs(value)
  %1390 = fmul fast float %1389, 0x3FC40AE960000000
  %1391 = fsub fast float 0x3FF921FB60000000, %1390
  %1392 = fsub fast float 1.000000e+00, %1389
  %1393 = bitcast float %1392 to i32
  %1394 = ashr i32 %1393, 1
  %1395 = add nsw i32 %1394, 532487669
  %1396 = bitcast i32 %1395 to float
  %1397 = fmul fast float %1396, %1391
  %1398 = fcmp fast oge float %1324, 0.000000e+00
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
  %1426 = fadd fast float %1425, %1124
  %1427 = fmul fast float %1376, %1374
  %1428 = fadd fast float %1427, %1354
  %1429 = fmul fast float %1428, %1343
  %1430 = fadd fast float %1429, %1122
  %1431 = add nuw nsw i32 %1123, 1
  %1432 = icmp eq i32 %1431, %1011
  br i1 %1432, label %1433, label %1121

; <label>:1433                                    ; preds = %1323
  br label %1434

; <label>:1434                                    ; preds = %1433, %1031
  %1435 = phi float [ 0.000000e+00, %1031 ], [ %1430, %1433 ]
  %1436 = phi float [ 0.000000e+00, %1031 ], [ %1426, %1433 ]
  %1437 = fdiv fast float %1436, %1435
  br label %1438

; <label>:1438                                    ; preds = %1434, %1013, %993
  %1439 = phi float [ %949, %993 ], [ %1437, %1434 ], [ 1.000000e+00, %1013 ]
  %1440 = icmp ugt i32 %1006, 2
  br i1 %1440, label %1441, label %1866, !dx.controlflow.hints !54

; <label>:1441                                    ; preds = %1438
  %1442 = getelementptr inbounds [4 x float], [4 x float]* %25, i32 0, i32 0
  store float %385, float* %1442, align 4
  %1443 = getelementptr inbounds [4 x float], [4 x float]* %25, i32 0, i32 1
  store float %381, float* %1443, align 4
  %1444 = getelementptr inbounds [4 x float], [4 x float]* %25, i32 0, i32 2
  store float %373, float* %1444, align 4
  %1445 = getelementptr inbounds [4 x float], [4 x float]* %25, i32 0, i32 3
  store float %377, float* %1445, align 4
  %1446 = getelementptr [4 x float], [4 x float]* %25, i32 0, i32 %432
  %1447 = load float, float* %1446, align 4, !tbaa !31, !noalias !55
  %1448 = and i32 %432, 1
  %1449 = uitofp i32 %1448 to float
  %1450 = fadd fast float %1449, 5.000000e-01
  %1451 = lshr i32 %432, 1
  %1452 = uitofp i32 %1451 to float
  %1453 = fadd fast float %1452, 5.000000e-01
  %1454 = fmul fast float %1450, %406
  %1455 = fmul fast float %1453, %407
  %1456 = fadd fast float %1454, %51
  %1457 = fadd fast float %1455, %52
  %1458 = fcmp fast olt float %1447, 6.550000e+04
  br i1 %1458, label %1459, label %1866, !dx.controlflow.hints !48

; <label>:1459                                    ; preds = %1441
  %1460 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 0
  store i32 %389, i32* %1460, align 4
  %1461 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 1
  store i32 %392, i32* %1461, align 4
  %1462 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 2
  store i32 %395, i32* %1462, align 4
  %1463 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 3
  store i32 %397, i32* %1463, align 4
  %1464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 99)  ; CBufferLoadLegacy(handle,regIndex)
  %1465 = extractvalue %dx.types.CBufRet.f32 %1464, 0
  %1466 = extractvalue %dx.types.CBufRet.f32 %1464, 1
  %1467 = extractvalue %dx.types.CBufRet.f32 %1464, 2
  %1468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 100)  ; CBufferLoadLegacy(handle,regIndex)
  %1469 = extractvalue %dx.types.CBufRet.f32 %1468, 0
  %1470 = extractvalue %dx.types.CBufRet.f32 %1468, 1
  %1471 = extractvalue %dx.types.CBufRet.f32 %1468, 2
  %1472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 101)  ; CBufferLoadLegacy(handle,regIndex)
  %1473 = extractvalue %dx.types.CBufRet.f32 %1472, 0
  %1474 = extractvalue %dx.types.CBufRet.f32 %1472, 1
  %1475 = extractvalue %dx.types.CBufRet.f32 %1472, 2
  %1476 = getelementptr [4 x i32], [4 x i32]* %24, i32 0, i32 %432
  %1477 = load i32, i32* %1476, align 4, !tbaa !42, !noalias !55
  %1478 = lshr i32 %1477, 8
  %1479 = and i32 %1477, 255
  %1480 = and i32 %1478, 255
  %1481 = uitofp i32 %1479 to float
  %1482 = uitofp i32 %1480 to float
  %1483 = fmul fast float %1481, 0x3F80101020000000
  %1484 = fmul fast float %1482, 0x3F80101020000000
  %1485 = fadd fast float %1483, -1.000000e+00
  %1486 = fadd fast float %1484, -1.000000e+00
  %1487 = call float @dx.op.unary.f32(i32 6, float %1485)  ; FAbs(value)
  %1488 = fsub fast float 1.000000e+00, %1487
  %1489 = call float @dx.op.unary.f32(i32 6, float %1486)  ; FAbs(value)
  %1490 = fsub fast float %1488, %1489
  %1491 = fsub fast float -0.000000e+00, %1490
  %1492 = call float @dx.op.binary.f32(i32 35, float %1491, float 0.000000e+00)  ; FMax(a,b)
  %1493 = fcmp fast ogt float %1485, 0.000000e+00
  %1494 = fsub fast float -0.000000e+00, %1492
  %1495 = select i1 %1493, float %1494, float %1492
  %1496 = fadd fast float %1495, %1485
  %1497 = fcmp fast ogt float %1486, 0.000000e+00
  %1498 = select i1 %1497, float %1494, float %1492
  %1499 = fadd fast float %1498, %1486
  %1500 = call float @dx.op.dot3.f32(i32 55, float %1496, float %1499, float %1490, float %1496, float %1499, float %1490)  ; Dot3(ax,ay,az,bx,by,bz)
  %1501 = call float @dx.op.unary.f32(i32 25, float %1500)  ; Rsqrt(value)
  %1502 = fmul fast float %1496, %1501
  %1503 = fmul fast float %1499, %1501
  %1504 = fmul fast float %1501, %1490
  %1505 = fmul fast float %1502, %1465
  %1506 = call float @dx.op.tertiary.f32(i32 46, float %1503, float %1466, float %1505)  ; FMad(a,b,c)
  %1507 = call float @dx.op.tertiary.f32(i32 46, float %1504, float %1467, float %1506)  ; FMad(a,b,c)
  %1508 = fmul fast float %1502, %1469
  %1509 = call float @dx.op.tertiary.f32(i32 46, float %1503, float %1470, float %1508)  ; FMad(a,b,c)
  %1510 = call float @dx.op.tertiary.f32(i32 46, float %1504, float %1471, float %1509)  ; FMad(a,b,c)
  %1511 = fmul fast float %1502, %1473
  %1512 = call float @dx.op.tertiary.f32(i32 46, float %1503, float %1474, float %1511)  ; FMad(a,b,c)
  %1513 = call float @dx.op.tertiary.f32(i32 46, float %1504, float %1475, float %1512)  ; FMad(a,b,c)
  %1514 = ashr i32 %34, 1
  %1515 = call float @dx.op.unary.f32(i32 6, float %1447)  ; FAbs(value)
  %1516 = fmul fast float %406, %38
  %1517 = fmul fast float %407, %39
  %1518 = fmul fast float %1515, %401
  %1519 = fmul fast float %402, %1515
  %1520 = fsub fast float -0.000000e+00, %1519
  %1521 = fdiv fast float 5.000000e+01, %1518
  %1522 = fdiv fast float 5.000000e+01, %1520
  %1523 = call float @dx.op.binary.f32(i32 36, float %1516, float %1521)  ; FMin(a,b)
  %1524 = call float @dx.op.binary.f32(i32 36, float %1517, float %1522)  ; FMin(a,b)
  %1525 = fmul fast float %1456, %399
  %1526 = fmul fast float %1457, %400
  %1527 = fsub fast float %1525, %401
  %1528 = fsub fast float %1526, %402
  %1529 = fmul fast float %1515, %1527
  %1530 = fmul fast float %1515, %1528
  %1531 = fsub fast float -0.000000e+00, %1529
  %1532 = fsub fast float -0.000000e+00, %1530
  %1533 = fsub fast float -0.000000e+00, %1515
  %1534 = call float @dx.op.dot3.f32(i32 55, float %1531, float %1532, float %1533, float %1531, float %1532, float %1533)  ; Dot3(ax,ay,az,bx,by,bz)
  %1535 = call float @dx.op.unary.f32(i32 25, float %1534)  ; Rsqrt(value)
  %1536 = fmul fast float %1535, %1531
  %1537 = fmul fast float %1535, %1532
  %1538 = fmul fast float %1535, %1533
  %1539 = fmul fast float %1515, 0x3FEFEB8520000000
  %1540 = fmul fast float %1523, %43
  %1541 = fmul fast float %1524, %44
  %1542 = fmul fast float %1540, %1540
  %1543 = fmul fast float %1541, %1541
  %1544 = fadd fast float %1543, %1542
  %1545 = call float @dx.op.unary.f32(i32 24, float %1544)  ; Sqrt(value)
  %1546 = fmul fast float %1545, 3.125000e-02
  %1547 = icmp sgt i32 %1011, 0
  br i1 %1547, label %1548, label %1862

; <label>:1548                                    ; preds = %1459
  br label %1549

; <label>:1549                                    ; preds = %1751, %1548
  %1550 = phi float [ %1858, %1751 ], [ 0.000000e+00, %1548 ]
  %1551 = phi i32 [ %1859, %1751 ], [ 0, %1548 ]
  %1552 = phi float [ %1854, %1751 ], [ 0.000000e+00, %1548 ]
  %1553 = sitofp i32 %1011 to float
  %1554 = fdiv fast float 0x400921FB60000000, %1553
  %1555 = sitofp i32 %1551 to float
  %1556 = fadd fast float %1555, %501
  %1557 = fmul fast float %1554, %1556
  %1558 = call float @dx.op.unary.f32(i32 12, float %1557)  ; Cos(value)
  %1559 = call float @dx.op.unary.f32(i32 13, float %1557)  ; Sin(value)
  %1560 = fsub fast float -0.000000e+00, %1559
  %1561 = call float @dx.op.dot3.f32(i32 55, float %1536, float %1537, float %1538, float %1507, float %1510, float %1513)  ; Dot3(ax,ay,az,bx,by,bz)
  %1562 = call float @dx.op.unary.f32(i32 6, float %1561)  ; FAbs(value)
  %1563 = call float @dx.op.unary.f32(i32 6, float %1562)  ; FAbs(value)
  %1564 = fcmp fast ogt float %1563, 0x3EB0C6F7A0000000
  %1565 = call float @dx.op.dot3.f32(i32 55, float %1558, float %1560, float 0.000000e+00, float %1507, float %1510, float %1513)  ; Dot3(ax,ay,az,bx,by,bz)
  %1566 = fsub fast float -0.000000e+00, %1565
  %1567 = fdiv fast float %1566, %1562
  %1568 = select i1 %1564, float %1567, float 0.000000e+00
  %1569 = fmul fast float %1568, %1568
  %1570 = fadd fast float %1569, 1.000000e+00
  %1571 = call float @dx.op.unary.f32(i32 25, float %1570)  ; Rsqrt(value)
  %1572 = fmul fast float %1568, %1571
  %1573 = fsub fast float -0.000000e+00, %1572
  %1574 = icmp sgt i32 %1514, 0
  br i1 %1574, label %1575, label %1662

; <label>:1575                                    ; preds = %1549
  br label %1576

; <label>:1576                                    ; preds = %1576, %1575
  %1577 = phi float [ %1658, %1576 ], [ %1572, %1575 ]
  %1578 = phi float [ %1644, %1576 ], [ 2.000000e+02, %1575 ]
  %1579 = phi i32 [ %1659, %1576 ], [ 0, %1575 ]
  %1580 = sitofp i32 %1514 to float
  %1581 = fdiv fast float 1.000000e+00, %1580
  %1582 = sitofp i32 %1579 to float
  %1583 = fadd fast float %1582, %522
  %1584 = fmul fast float %1583, %1581
  %1585 = fmul fast float %1584, %1584
  %1586 = fmul fast float %1585, %1546
  %1587 = call float @dx.op.binary.f32(i32 36, float %1586, float 3.000000e+00)  ; FMin(a,b)
  %1588 = fadd fast float %1587, 1.000000e+00
  %1589 = fmul fast float %1585, %1523
  %1590 = fmul fast float %1585, %1524
  %1591 = fadd fast float %1589, %47
  %1592 = fmul fast float %1591, %1558
  %1593 = fadd fast float %1592, %1456
  %1594 = fadd fast float %1590, %48
  %1595 = fmul fast float %1594, %1559
  %1596 = fadd fast float %1595, %1457
  %1597 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %13, float %1593, float %1596, float undef, float undef, i32 0, i32 0, i32 undef, float %1588)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1598 = extractvalue %dx.types.ResRet.f32 %1597, 0
  %1599 = fcmp fast ogt float %1598, -1.000000e+00
  %1600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1601 = extractvalue %dx.types.CBufRet.f32 %1600, 1
  %1602 = select i1 %1599, float %1601, float 1.000000e+00
  %1603 = fadd fast float %1598, 1.000000e+00
  %1604 = fmul fast float %1602, %1603
  %1605 = call float @dx.op.unary.f32(i32 6, float %1604)  ; FAbs(value)
  %1606 = fmul fast float %1593, %399
  %1607 = fmul fast float %1596, %400
  %1608 = fsub fast float %1606, %401
  %1609 = fsub fast float %1607, %402
  %1610 = fmul fast float %1608, %1605
  %1611 = fmul fast float %1609, %1605
  %1612 = fsub fast float %1610, %1529
  %1613 = fsub fast float %1611, %1530
  %1614 = fsub fast float %1605, %1539
  %1615 = call float @dx.op.dot3.f32(i32 55, float %1612, float %1613, float %1614, float %1612, float %1613, float %1614)  ; Dot3(ax,ay,az,bx,by,bz)
  %1616 = call float @dx.op.dot3.f32(i32 55, float %1612, float %1613, float %1614, float %1507, float %1510, float %1513)  ; Dot3(ax,ay,az,bx,by,bz)
  %1617 = fsub fast float -0.000000e+00, %1616
  %1618 = call float @dx.op.dot3.f32(i32 55, float %1612, float %1613, float %1614, float %1536, float %1537, float %1538)  ; Dot3(ax,ay,az,bx,by,bz)
  %1619 = call float @dx.op.unary.f32(i32 25, float %1615)  ; Rsqrt(value)
  %1620 = fmul fast float %1619, %1618
  %1621 = bitcast float %1615 to i32
  %1622 = ashr i32 %1621, 1
  %1623 = add nsw i32 %1622, 532487669
  %1624 = bitcast i32 %1623 to float
  %1625 = fmul fast float %1624, 0x3F947AE140000000
  %1626 = fsub fast float 2.000000e+00, %1625
  %1627 = call float @dx.op.unary.f32(i32 7, float %1626)  ; Saturate(value)
  %1628 = fmul fast float %1624, 0x3F7B4E81C0000000
  %1629 = fsub fast float 0x3FF5555560000000, %1628
  %1630 = call float @dx.op.unary.f32(i32 7, float %1629)  ; Saturate(value)
  %1631 = fmul fast float %1605, 0x3F947AE140000000
  %1632 = fadd fast float %1631, -1.000000e+00
  %1633 = call float @dx.op.unary.f32(i32 7, float %1632)  ; Saturate(value)
  %1634 = fsub fast float %1630, %1627
  %1635 = fmul fast float %1633, %1634
  %1636 = fadd fast float %1635, %1627
  %1637 = fmul fast float %1604, %1447
  %1638 = fcmp fast ogt float %1637, 0.000000e+00
  %1639 = select i1 %1638, float %1636, float 0.000000e+00
  %1640 = fadd fast float %1620, 1.000000e+00
  %1641 = fmul fast float %1639, %1640
  %1642 = fadd fast float %1641, -1.000000e+00
  %1643 = fcmp fast ogt float %1642, %1577
  %1644 = select i1 %1643, float %1617, float %1578
  %1645 = fsub fast float %1617, %1644
  %1646 = fmul fast float %1645, 0x3FB9999940000000
  %1647 = fadd fast float %1646, 0xBFDFFFFF80000000
  %1648 = call float @dx.op.unary.f32(i32 7, float %1647)  ; Saturate(value)
  %1649 = fmul fast float %1616, 0x3FC99999E0000000
  %1650 = fadd fast float %1649, 0x3FF0000020000000
  %1651 = call float @dx.op.unary.f32(i32 7, float %1650)  ; Saturate(value)
  %1652 = sitofp i32 %34 to float
  %1653 = fdiv fast float 8.000000e+00, %1652
  %1654 = fmul fast float %1651, %1648
  %1655 = fmul fast float %1654, %1653
  %1656 = fsub fast float %1577, %1655
  %1657 = fcmp ole float %1642, %1656
  %1658 = select i1 %1657, float %1656, float %1642
  %1659 = add nuw nsw i32 %1579, 1
  %1660 = icmp eq i32 %1659, %1514
  br i1 %1660, label %1661, label %1576

; <label>:1661                                    ; preds = %1576
  br label %1662

; <label>:1662                                    ; preds = %1661, %1549
  %1663 = phi float [ %1572, %1549 ], [ %1658, %1661 ]
  br i1 %1574, label %1664, label %1751

; <label>:1664                                    ; preds = %1662
  br label %1665

; <label>:1665                                    ; preds = %1665, %1664
  %1666 = phi float [ %1747, %1665 ], [ %1573, %1664 ]
  %1667 = phi float [ %1733, %1665 ], [ 2.000000e+02, %1664 ]
  %1668 = phi i32 [ %1748, %1665 ], [ 0, %1664 ]
  %1669 = sitofp i32 %1514 to float
  %1670 = fdiv fast float 1.000000e+00, %1669
  %1671 = sitofp i32 %1668 to float
  %1672 = fadd fast float %1671, %522
  %1673 = fmul fast float %1672, %1670
  %1674 = fmul fast float %1673, %1673
  %1675 = fmul fast float %1674, %1546
  %1676 = call float @dx.op.binary.f32(i32 36, float %1675, float 3.000000e+00)  ; FMin(a,b)
  %1677 = fadd fast float %1676, 1.000000e+00
  %1678 = fmul fast float %1674, %1523
  %1679 = fmul fast float %1674, %1524
  %1680 = fadd fast float %1678, %47
  %1681 = fmul fast float %1558, %1680
  %1682 = fsub fast float %1456, %1681
  %1683 = fadd fast float %1679, %48
  %1684 = fmul fast float %1559, %1683
  %1685 = fsub fast float %1457, %1684
  %1686 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %13, float %1682, float %1685, float undef, float undef, i32 0, i32 0, i32 undef, float %1677)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1687 = extractvalue %dx.types.ResRet.f32 %1686, 0
  %1688 = fcmp fast ogt float %1687, -1.000000e+00
  %1689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1690 = extractvalue %dx.types.CBufRet.f32 %1689, 1
  %1691 = select i1 %1688, float %1690, float 1.000000e+00
  %1692 = fadd fast float %1687, 1.000000e+00
  %1693 = fmul fast float %1691, %1692
  %1694 = call float @dx.op.unary.f32(i32 6, float %1693)  ; FAbs(value)
  %1695 = fmul fast float %1682, %399
  %1696 = fmul fast float %1685, %400
  %1697 = fsub fast float %1695, %401
  %1698 = fsub fast float %1696, %402
  %1699 = fmul fast float %1697, %1694
  %1700 = fmul fast float %1698, %1694
  %1701 = fsub fast float %1699, %1529
  %1702 = fsub fast float %1700, %1530
  %1703 = fsub fast float %1694, %1539
  %1704 = call float @dx.op.dot3.f32(i32 55, float %1701, float %1702, float %1703, float %1701, float %1702, float %1703)  ; Dot3(ax,ay,az,bx,by,bz)
  %1705 = call float @dx.op.dot3.f32(i32 55, float %1701, float %1702, float %1703, float %1507, float %1510, float %1513)  ; Dot3(ax,ay,az,bx,by,bz)
  %1706 = fsub fast float -0.000000e+00, %1705
  %1707 = call float @dx.op.dot3.f32(i32 55, float %1701, float %1702, float %1703, float %1536, float %1537, float %1538)  ; Dot3(ax,ay,az,bx,by,bz)
  %1708 = call float @dx.op.unary.f32(i32 25, float %1704)  ; Rsqrt(value)
  %1709 = fmul fast float %1708, %1707
  %1710 = bitcast float %1704 to i32
  %1711 = ashr i32 %1710, 1
  %1712 = add nsw i32 %1711, 532487669
  %1713 = bitcast i32 %1712 to float
  %1714 = fmul fast float %1713, 0x3F947AE140000000
  %1715 = fsub fast float 2.000000e+00, %1714
  %1716 = call float @dx.op.unary.f32(i32 7, float %1715)  ; Saturate(value)
  %1717 = fmul fast float %1713, 0x3F7B4E81C0000000
  %1718 = fsub fast float 0x3FF5555560000000, %1717
  %1719 = call float @dx.op.unary.f32(i32 7, float %1718)  ; Saturate(value)
  %1720 = fmul fast float %1694, 0x3F947AE140000000
  %1721 = fadd fast float %1720, -1.000000e+00
  %1722 = call float @dx.op.unary.f32(i32 7, float %1721)  ; Saturate(value)
  %1723 = fsub fast float %1719, %1716
  %1724 = fmul fast float %1722, %1723
  %1725 = fadd fast float %1724, %1716
  %1726 = fmul fast float %1693, %1447
  %1727 = fcmp fast ogt float %1726, 0.000000e+00
  %1728 = select i1 %1727, float %1725, float 0.000000e+00
  %1729 = fadd fast float %1709, 1.000000e+00
  %1730 = fmul fast float %1728, %1729
  %1731 = fadd fast float %1730, -1.000000e+00
  %1732 = fcmp fast ogt float %1731, %1666
  %1733 = select i1 %1732, float %1706, float %1667
  %1734 = fsub fast float %1706, %1733
  %1735 = fmul fast float %1734, 0x3FB9999940000000
  %1736 = fadd fast float %1735, 0xBFDFFFFF80000000
  %1737 = call float @dx.op.unary.f32(i32 7, float %1736)  ; Saturate(value)
  %1738 = fmul fast float %1705, 0x3FC99999E0000000
  %1739 = fadd fast float %1738, 0x3FF0000020000000
  %1740 = call float @dx.op.unary.f32(i32 7, float %1739)  ; Saturate(value)
  %1741 = sitofp i32 %34 to float
  %1742 = fdiv fast float 8.000000e+00, %1741
  %1743 = fmul fast float %1740, %1737
  %1744 = fmul fast float %1743, %1742
  %1745 = fsub fast float %1666, %1744
  %1746 = fcmp ole float %1731, %1745
  %1747 = select i1 %1746, float %1745, float %1731
  %1748 = add nuw nsw i32 %1668, 1
  %1749 = icmp eq i32 %1748, %1514
  br i1 %1749, label %1750, label %1665

; <label>:1750                                    ; preds = %1665
  br label %1751

; <label>:1751                                    ; preds = %1750, %1662
  %1752 = phi float [ %1573, %1662 ], [ %1747, %1750 ]
  %1753 = fmul fast float %1538, %1560
  %1754 = fmul fast float %1538, %1558
  %1755 = fsub fast float -0.000000e+00, %1754
  %1756 = fmul fast float %1558, %1537
  %1757 = fmul fast float %1536, %1560
  %1758 = fsub fast float %1756, %1757
  %1759 = call float @dx.op.dot3.f32(i32 55, float %1507, float %1510, float %1513, float %1753, float %1755, float %1758)  ; Dot3(ax,ay,az,bx,by,bz)
  %1760 = fmul fast float %1759, %1753
  %1761 = fmul fast float %1759, %1755
  %1762 = fmul fast float %1759, %1758
  %1763 = fsub fast float %1507, %1760
  %1764 = fsub fast float %1510, %1761
  %1765 = fsub fast float %1513, %1762
  %1766 = fmul fast float %1763, %1763
  %1767 = fmul fast float %1764, %1764
  %1768 = fadd fast float %1766, %1767
  %1769 = fmul fast float %1765, %1765
  %1770 = fadd fast float %1768, %1769
  %1771 = call float @dx.op.unary.f32(i32 24, float %1770)  ; Sqrt(value)
  %1772 = call float @dx.op.dot3.f32(i32 55, float %1558, float %1560, float 0.000000e+00, float %1763, float %1764, float %1765)  ; Dot3(ax,ay,az,bx,by,bz)
  %1773 = call float @dx.op.dot3.f32(i32 55, float %1558, float %1560, float 0.000000e+00, float %1536, float %1537, float %1538)  ; Dot3(ax,ay,az,bx,by,bz)
  %1774 = fmul fast float %1773, %1536
  %1775 = fmul fast float %1773, %1537
  %1776 = fmul fast float %1773, %1538
  %1777 = call float @dx.op.dot3.f32(i32 55, float %1774, float %1775, float %1776, float %1763, float %1764, float %1765)  ; Dot3(ax,ay,az,bx,by,bz)
  %1778 = fcmp fast oge float %1772, %1777
  %1779 = fdiv fast float 1.000000e+00, %1771
  %1780 = call float @dx.op.dot3.f32(i32 55, float %1763, float %1764, float %1765, float %1536, float %1537, float %1538)  ; Dot3(ax,ay,az,bx,by,bz)
  %1781 = fmul fast float %1780, %1779
  %1782 = call float @dx.op.unary.f32(i32 7, float %1781)  ; Saturate(value)
  %1783 = fmul fast float %1782, %1782
  %1784 = fsub fast float 1.000000e+00, %1783
  %1785 = bitcast float %1784 to i32
  %1786 = ashr i32 %1785, 1
  %1787 = add nsw i32 %1786, 532487669
  %1788 = bitcast i32 %1787 to float
  %1789 = call float @dx.op.unary.f32(i32 6, float %1782)  ; FAbs(value)
  %1790 = fmul fast float %1789, 0x3FC40AE960000000
  %1791 = fsub fast float 0x3FF921FB60000000, %1790
  %1792 = fsub fast float 1.000000e+00, %1789
  %1793 = bitcast float %1792 to i32
  %1794 = ashr i32 %1793, 1
  %1795 = add nsw i32 %1794, 532487669
  %1796 = bitcast i32 %1795 to float
  %1797 = fmul fast float %1796, %1791
  %1798 = fcmp fast oge float %1782, 0.000000e+00
  %1799 = fsub fast float 0x400921FB60000000, %1797
  %1800 = select i1 %1798, float %1797, float %1799
  %1801 = fsub fast float -0.000000e+00, %1788
  %1802 = select i1 %1778, float %1801, float %1788
  %1803 = fsub fast float -0.000000e+00, %1800
  %1804 = select i1 %1778, float %1803, float %1800
  %1805 = call float @dx.op.unary.f32(i32 6, float %1663)  ; FAbs(value)
  %1806 = fmul fast float %1805, 0x3FC40AE960000000
  %1807 = fsub fast float 0x3FF921FB60000000, %1806
  %1808 = fsub fast float 1.000000e+00, %1805
  %1809 = bitcast float %1808 to i32
  %1810 = ashr i32 %1809, 1
  %1811 = add nsw i32 %1810, 532487669
  %1812 = bitcast i32 %1811 to float
  %1813 = fmul fast float %1812, %1807
  %1814 = fcmp fast oge float %1663, 0.000000e+00
  %1815 = fsub fast float 0x400921FB60000000, %1813
  %1816 = select i1 %1814, float %1813, float %1815
  %1817 = call float @dx.op.unary.f32(i32 6, float %1752)  ; FAbs(value)
  %1818 = fmul fast float %1817, 0x3FC40AE960000000
  %1819 = fsub fast float 0x3FF921FB60000000, %1818
  %1820 = fsub fast float 1.000000e+00, %1817
  %1821 = bitcast float %1820 to i32
  %1822 = ashr i32 %1821, 1
  %1823 = add nsw i32 %1822, 532487669
  %1824 = bitcast i32 %1823 to float
  %1825 = fmul fast float %1824, %1819
  %1826 = fcmp fast oge float %1752, 0.000000e+00
  %1827 = fsub fast float 0x400921FB60000000, %1825
  %1828 = select i1 %1826, float %1825, float %1827
  %1829 = fsub fast float -0.000000e+00, %1804
  %1830 = fsub fast float %1829, %1816
  %1831 = call float @dx.op.binary.f32(i32 35, float %1830, float 0xBFF921FB60000000)  ; FMax(a,b)
  %1832 = call float @dx.op.binary.f32(i32 36, float %1831, float 0x3FF921FB60000000)  ; FMin(a,b)
  %1833 = fadd fast float %1804, %1832
  %1834 = fsub fast float %1828, %1804
  %1835 = call float @dx.op.binary.f32(i32 35, float %1834, float 0xBFF921FB60000000)  ; FMax(a,b)
  %1836 = call float @dx.op.binary.f32(i32 36, float %1835, float 0x3FF921FB60000000)  ; FMin(a,b)
  %1837 = fadd fast float %1804, %1836
  %1838 = fmul fast float %1833, 2.000000e+00
  %1839 = fsub fast float %1838, %1804
  %1840 = call float @dx.op.unary.f32(i32 12, float %1839)  ; Cos(value)
  %1841 = fsub fast float -0.000000e+00, %1840
  %1842 = fmul fast float %1837, 2.000000e+00
  %1843 = fsub fast float %1842, %1804
  %1844 = call float @dx.op.unary.f32(i32 12, float %1843)  ; Cos(value)
  %1845 = fmul fast float %1782, 2.000000e+00
  %1846 = fadd fast float %1837, %1833
  %1847 = fmul fast float %1802, %1846
  %1848 = fmul fast float %1847, 2.000000e+00
  %1849 = fsub fast float %1841, %1844
  %1850 = fadd fast float %1849, %1845
  %1851 = fadd fast float %1850, %1848
  %1852 = fmul fast float %1771, 2.500000e-01
  %1853 = fmul fast float %1852, %1851
  %1854 = fadd fast float %1853, %1552
  %1855 = fmul fast float %1804, %1802
  %1856 = fadd fast float %1855, %1782
  %1857 = fmul fast float %1856, %1771
  %1858 = fadd fast float %1857, %1550
  %1859 = add nuw nsw i32 %1551, 1
  %1860 = icmp eq i32 %1859, %1011
  br i1 %1860, label %1861, label %1549

; <label>:1861                                    ; preds = %1751
  br label %1862

; <label>:1862                                    ; preds = %1861, %1459
  %1863 = phi float [ 0.000000e+00, %1459 ], [ %1858, %1861 ]
  %1864 = phi float [ 0.000000e+00, %1459 ], [ %1854, %1861 ]
  %1865 = fdiv fast float %1864, %1863
  br label %1866

; <label>:1866                                    ; preds = %1862, %1441, %1438
  %1867 = phi float [ %949, %1438 ], [ %1865, %1862 ], [ 1.000000e+00, %1441 ]
  %1868 = icmp ugt i32 %1006, 3
  br i1 %1868, label %1869, label %2294, !dx.controlflow.hints !59

; <label>:1869                                    ; preds = %1866
  %1870 = getelementptr inbounds [4 x float], [4 x float]* %23, i32 0, i32 0
  store float %385, float* %1870, align 4
  %1871 = getelementptr inbounds [4 x float], [4 x float]* %23, i32 0, i32 1
  store float %381, float* %1871, align 4
  %1872 = getelementptr inbounds [4 x float], [4 x float]* %23, i32 0, i32 2
  store float %373, float* %1872, align 4
  %1873 = getelementptr inbounds [4 x float], [4 x float]* %23, i32 0, i32 3
  store float %377, float* %1873, align 4
  %1874 = getelementptr [4 x float], [4 x float]* %23, i32 0, i32 %439
  %1875 = load float, float* %1874, align 4, !tbaa !31, !noalias !60
  %1876 = and i32 %439, 1
  %1877 = uitofp i32 %1876 to float
  %1878 = fadd fast float %1877, 5.000000e-01
  %1879 = lshr i32 %439, 1
  %1880 = uitofp i32 %1879 to float
  %1881 = fadd fast float %1880, 5.000000e-01
  %1882 = fmul fast float %1878, %406
  %1883 = fmul fast float %1881, %407
  %1884 = fadd fast float %1882, %51
  %1885 = fadd fast float %1883, %52
  %1886 = fcmp fast olt float %1875, 6.550000e+04
  br i1 %1886, label %1887, label %2294, !dx.controlflow.hints !48

; <label>:1887                                    ; preds = %1869
  %1888 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i32 0, i32 0
  store i32 %389, i32* %1888, align 4
  %1889 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i32 0, i32 1
  store i32 %392, i32* %1889, align 4
  %1890 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i32 0, i32 2
  store i32 %395, i32* %1890, align 4
  %1891 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i32 0, i32 3
  store i32 %397, i32* %1891, align 4
  %1892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 99)  ; CBufferLoadLegacy(handle,regIndex)
  %1893 = extractvalue %dx.types.CBufRet.f32 %1892, 0
  %1894 = extractvalue %dx.types.CBufRet.f32 %1892, 1
  %1895 = extractvalue %dx.types.CBufRet.f32 %1892, 2
  %1896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 100)  ; CBufferLoadLegacy(handle,regIndex)
  %1897 = extractvalue %dx.types.CBufRet.f32 %1896, 0
  %1898 = extractvalue %dx.types.CBufRet.f32 %1896, 1
  %1899 = extractvalue %dx.types.CBufRet.f32 %1896, 2
  %1900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 101)  ; CBufferLoadLegacy(handle,regIndex)
  %1901 = extractvalue %dx.types.CBufRet.f32 %1900, 0
  %1902 = extractvalue %dx.types.CBufRet.f32 %1900, 1
  %1903 = extractvalue %dx.types.CBufRet.f32 %1900, 2
  %1904 = getelementptr [4 x i32], [4 x i32]* %22, i32 0, i32 %439
  %1905 = load i32, i32* %1904, align 4, !tbaa !42, !noalias !60
  %1906 = lshr i32 %1905, 8
  %1907 = and i32 %1905, 255
  %1908 = and i32 %1906, 255
  %1909 = uitofp i32 %1907 to float
  %1910 = uitofp i32 %1908 to float
  %1911 = fmul fast float %1909, 0x3F80101020000000
  %1912 = fmul fast float %1910, 0x3F80101020000000
  %1913 = fadd fast float %1911, -1.000000e+00
  %1914 = fadd fast float %1912, -1.000000e+00
  %1915 = call float @dx.op.unary.f32(i32 6, float %1913)  ; FAbs(value)
  %1916 = fsub fast float 1.000000e+00, %1915
  %1917 = call float @dx.op.unary.f32(i32 6, float %1914)  ; FAbs(value)
  %1918 = fsub fast float %1916, %1917
  %1919 = fsub fast float -0.000000e+00, %1918
  %1920 = call float @dx.op.binary.f32(i32 35, float %1919, float 0.000000e+00)  ; FMax(a,b)
  %1921 = fcmp fast ogt float %1913, 0.000000e+00
  %1922 = fsub fast float -0.000000e+00, %1920
  %1923 = select i1 %1921, float %1922, float %1920
  %1924 = fadd fast float %1923, %1913
  %1925 = fcmp fast ogt float %1914, 0.000000e+00
  %1926 = select i1 %1925, float %1922, float %1920
  %1927 = fadd fast float %1926, %1914
  %1928 = call float @dx.op.dot3.f32(i32 55, float %1924, float %1927, float %1918, float %1924, float %1927, float %1918)  ; Dot3(ax,ay,az,bx,by,bz)
  %1929 = call float @dx.op.unary.f32(i32 25, float %1928)  ; Rsqrt(value)
  %1930 = fmul fast float %1924, %1929
  %1931 = fmul fast float %1927, %1929
  %1932 = fmul fast float %1929, %1918
  %1933 = fmul fast float %1930, %1893
  %1934 = call float @dx.op.tertiary.f32(i32 46, float %1931, float %1894, float %1933)  ; FMad(a,b,c)
  %1935 = call float @dx.op.tertiary.f32(i32 46, float %1932, float %1895, float %1934)  ; FMad(a,b,c)
  %1936 = fmul fast float %1930, %1897
  %1937 = call float @dx.op.tertiary.f32(i32 46, float %1931, float %1898, float %1936)  ; FMad(a,b,c)
  %1938 = call float @dx.op.tertiary.f32(i32 46, float %1932, float %1899, float %1937)  ; FMad(a,b,c)
  %1939 = fmul fast float %1930, %1901
  %1940 = call float @dx.op.tertiary.f32(i32 46, float %1931, float %1902, float %1939)  ; FMad(a,b,c)
  %1941 = call float @dx.op.tertiary.f32(i32 46, float %1932, float %1903, float %1940)  ; FMad(a,b,c)
  %1942 = ashr i32 %34, 1
  %1943 = call float @dx.op.unary.f32(i32 6, float %1875)  ; FAbs(value)
  %1944 = fmul fast float %406, %38
  %1945 = fmul fast float %407, %39
  %1946 = fmul fast float %1943, %401
  %1947 = fmul fast float %402, %1943
  %1948 = fsub fast float -0.000000e+00, %1947
  %1949 = fdiv fast float 5.000000e+01, %1946
  %1950 = fdiv fast float 5.000000e+01, %1948
  %1951 = call float @dx.op.binary.f32(i32 36, float %1944, float %1949)  ; FMin(a,b)
  %1952 = call float @dx.op.binary.f32(i32 36, float %1945, float %1950)  ; FMin(a,b)
  %1953 = fmul fast float %1884, %399
  %1954 = fmul fast float %1885, %400
  %1955 = fsub fast float %1953, %401
  %1956 = fsub fast float %1954, %402
  %1957 = fmul fast float %1943, %1955
  %1958 = fmul fast float %1943, %1956
  %1959 = fsub fast float -0.000000e+00, %1957
  %1960 = fsub fast float -0.000000e+00, %1958
  %1961 = fsub fast float -0.000000e+00, %1943
  %1962 = call float @dx.op.dot3.f32(i32 55, float %1959, float %1960, float %1961, float %1959, float %1960, float %1961)  ; Dot3(ax,ay,az,bx,by,bz)
  %1963 = call float @dx.op.unary.f32(i32 25, float %1962)  ; Rsqrt(value)
  %1964 = fmul fast float %1963, %1959
  %1965 = fmul fast float %1963, %1960
  %1966 = fmul fast float %1963, %1961
  %1967 = fmul fast float %1943, 0x3FEFEB8520000000
  %1968 = fmul fast float %1951, %43
  %1969 = fmul fast float %1952, %44
  %1970 = fmul fast float %1968, %1968
  %1971 = fmul fast float %1969, %1969
  %1972 = fadd fast float %1971, %1970
  %1973 = call float @dx.op.unary.f32(i32 24, float %1972)  ; Sqrt(value)
  %1974 = fmul fast float %1973, 3.125000e-02
  %1975 = icmp sgt i32 %1011, 0
  br i1 %1975, label %1976, label %2290

; <label>:1976                                    ; preds = %1887
  br label %1977

; <label>:1977                                    ; preds = %2179, %1976
  %1978 = phi float [ %2286, %2179 ], [ 0.000000e+00, %1976 ]
  %1979 = phi i32 [ %2287, %2179 ], [ 0, %1976 ]
  %1980 = phi float [ %2282, %2179 ], [ 0.000000e+00, %1976 ]
  %1981 = sitofp i32 %1011 to float
  %1982 = fdiv fast float 0x400921FB60000000, %1981
  %1983 = sitofp i32 %1979 to float
  %1984 = fadd fast float %1983, %502
  %1985 = fmul fast float %1982, %1984
  %1986 = call float @dx.op.unary.f32(i32 12, float %1985)  ; Cos(value)
  %1987 = call float @dx.op.unary.f32(i32 13, float %1985)  ; Sin(value)
  %1988 = fsub fast float -0.000000e+00, %1987
  %1989 = call float @dx.op.dot3.f32(i32 55, float %1964, float %1965, float %1966, float %1935, float %1938, float %1941)  ; Dot3(ax,ay,az,bx,by,bz)
  %1990 = call float @dx.op.unary.f32(i32 6, float %1989)  ; FAbs(value)
  %1991 = call float @dx.op.unary.f32(i32 6, float %1990)  ; FAbs(value)
  %1992 = fcmp fast ogt float %1991, 0x3EB0C6F7A0000000
  %1993 = call float @dx.op.dot3.f32(i32 55, float %1986, float %1988, float 0.000000e+00, float %1935, float %1938, float %1941)  ; Dot3(ax,ay,az,bx,by,bz)
  %1994 = fsub fast float -0.000000e+00, %1993
  %1995 = fdiv fast float %1994, %1990
  %1996 = select i1 %1992, float %1995, float 0.000000e+00
  %1997 = fmul fast float %1996, %1996
  %1998 = fadd fast float %1997, 1.000000e+00
  %1999 = call float @dx.op.unary.f32(i32 25, float %1998)  ; Rsqrt(value)
  %2000 = fmul fast float %1996, %1999
  %2001 = fsub fast float -0.000000e+00, %2000
  %2002 = icmp sgt i32 %1942, 0
  br i1 %2002, label %2003, label %2090

; <label>:2003                                    ; preds = %1977
  br label %2004

; <label>:2004                                    ; preds = %2004, %2003
  %2005 = phi float [ %2086, %2004 ], [ %2000, %2003 ]
  %2006 = phi float [ %2072, %2004 ], [ 2.000000e+02, %2003 ]
  %2007 = phi i32 [ %2087, %2004 ], [ 0, %2003 ]
  %2008 = sitofp i32 %1942 to float
  %2009 = fdiv fast float 1.000000e+00, %2008
  %2010 = sitofp i32 %2007 to float
  %2011 = fadd fast float %2010, %523
  %2012 = fmul fast float %2011, %2009
  %2013 = fmul fast float %2012, %2012
  %2014 = fmul fast float %2013, %1974
  %2015 = call float @dx.op.binary.f32(i32 36, float %2014, float 3.000000e+00)  ; FMin(a,b)
  %2016 = fadd fast float %2015, 1.000000e+00
  %2017 = fmul fast float %2013, %1951
  %2018 = fmul fast float %2013, %1952
  %2019 = fadd fast float %2017, %47
  %2020 = fmul fast float %2019, %1986
  %2021 = fadd fast float %2020, %1884
  %2022 = fadd fast float %2018, %48
  %2023 = fmul fast float %2022, %1987
  %2024 = fadd fast float %2023, %1885
  %2025 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %13, float %2021, float %2024, float undef, float undef, i32 0, i32 0, i32 undef, float %2016)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2026 = extractvalue %dx.types.ResRet.f32 %2025, 0
  %2027 = fcmp fast ogt float %2026, -1.000000e+00
  %2028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %2029 = extractvalue %dx.types.CBufRet.f32 %2028, 1
  %2030 = select i1 %2027, float %2029, float 1.000000e+00
  %2031 = fadd fast float %2026, 1.000000e+00
  %2032 = fmul fast float %2030, %2031
  %2033 = call float @dx.op.unary.f32(i32 6, float %2032)  ; FAbs(value)
  %2034 = fmul fast float %2021, %399
  %2035 = fmul fast float %2024, %400
  %2036 = fsub fast float %2034, %401
  %2037 = fsub fast float %2035, %402
  %2038 = fmul fast float %2036, %2033
  %2039 = fmul fast float %2037, %2033
  %2040 = fsub fast float %2038, %1957
  %2041 = fsub fast float %2039, %1958
  %2042 = fsub fast float %2033, %1967
  %2043 = call float @dx.op.dot3.f32(i32 55, float %2040, float %2041, float %2042, float %2040, float %2041, float %2042)  ; Dot3(ax,ay,az,bx,by,bz)
  %2044 = call float @dx.op.dot3.f32(i32 55, float %2040, float %2041, float %2042, float %1935, float %1938, float %1941)  ; Dot3(ax,ay,az,bx,by,bz)
  %2045 = fsub fast float -0.000000e+00, %2044
  %2046 = call float @dx.op.dot3.f32(i32 55, float %2040, float %2041, float %2042, float %1964, float %1965, float %1966)  ; Dot3(ax,ay,az,bx,by,bz)
  %2047 = call float @dx.op.unary.f32(i32 25, float %2043)  ; Rsqrt(value)
  %2048 = fmul fast float %2047, %2046
  %2049 = bitcast float %2043 to i32
  %2050 = ashr i32 %2049, 1
  %2051 = add nsw i32 %2050, 532487669
  %2052 = bitcast i32 %2051 to float
  %2053 = fmul fast float %2052, 0x3F947AE140000000
  %2054 = fsub fast float 2.000000e+00, %2053
  %2055 = call float @dx.op.unary.f32(i32 7, float %2054)  ; Saturate(value)
  %2056 = fmul fast float %2052, 0x3F7B4E81C0000000
  %2057 = fsub fast float 0x3FF5555560000000, %2056
  %2058 = call float @dx.op.unary.f32(i32 7, float %2057)  ; Saturate(value)
  %2059 = fmul fast float %2033, 0x3F947AE140000000
  %2060 = fadd fast float %2059, -1.000000e+00
  %2061 = call float @dx.op.unary.f32(i32 7, float %2060)  ; Saturate(value)
  %2062 = fsub fast float %2058, %2055
  %2063 = fmul fast float %2061, %2062
  %2064 = fadd fast float %2063, %2055
  %2065 = fmul fast float %2032, %1875
  %2066 = fcmp fast ogt float %2065, 0.000000e+00
  %2067 = select i1 %2066, float %2064, float 0.000000e+00
  %2068 = fadd fast float %2048, 1.000000e+00
  %2069 = fmul fast float %2067, %2068
  %2070 = fadd fast float %2069, -1.000000e+00
  %2071 = fcmp fast ogt float %2070, %2005
  %2072 = select i1 %2071, float %2045, float %2006
  %2073 = fsub fast float %2045, %2072
  %2074 = fmul fast float %2073, 0x3FB9999940000000
  %2075 = fadd fast float %2074, 0xBFDFFFFF80000000
  %2076 = call float @dx.op.unary.f32(i32 7, float %2075)  ; Saturate(value)
  %2077 = fmul fast float %2044, 0x3FC99999E0000000
  %2078 = fadd fast float %2077, 0x3FF0000020000000
  %2079 = call float @dx.op.unary.f32(i32 7, float %2078)  ; Saturate(value)
  %2080 = sitofp i32 %34 to float
  %2081 = fdiv fast float 8.000000e+00, %2080
  %2082 = fmul fast float %2079, %2076
  %2083 = fmul fast float %2082, %2081
  %2084 = fsub fast float %2005, %2083
  %2085 = fcmp ole float %2070, %2084
  %2086 = select i1 %2085, float %2084, float %2070
  %2087 = add nuw nsw i32 %2007, 1
  %2088 = icmp eq i32 %2087, %1942
  br i1 %2088, label %2089, label %2004

; <label>:2089                                    ; preds = %2004
  br label %2090

; <label>:2090                                    ; preds = %2089, %1977
  %2091 = phi float [ %2000, %1977 ], [ %2086, %2089 ]
  br i1 %2002, label %2092, label %2179

; <label>:2092                                    ; preds = %2090
  br label %2093

; <label>:2093                                    ; preds = %2093, %2092
  %2094 = phi float [ %2175, %2093 ], [ %2001, %2092 ]
  %2095 = phi float [ %2161, %2093 ], [ 2.000000e+02, %2092 ]
  %2096 = phi i32 [ %2176, %2093 ], [ 0, %2092 ]
  %2097 = sitofp i32 %1942 to float
  %2098 = fdiv fast float 1.000000e+00, %2097
  %2099 = sitofp i32 %2096 to float
  %2100 = fadd fast float %2099, %523
  %2101 = fmul fast float %2100, %2098
  %2102 = fmul fast float %2101, %2101
  %2103 = fmul fast float %2102, %1974
  %2104 = call float @dx.op.binary.f32(i32 36, float %2103, float 3.000000e+00)  ; FMin(a,b)
  %2105 = fadd fast float %2104, 1.000000e+00
  %2106 = fmul fast float %2102, %1951
  %2107 = fmul fast float %2102, %1952
  %2108 = fadd fast float %2106, %47
  %2109 = fmul fast float %1986, %2108
  %2110 = fsub fast float %1884, %2109
  %2111 = fadd fast float %2107, %48
  %2112 = fmul fast float %1987, %2111
  %2113 = fsub fast float %1885, %2112
  %2114 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %13, float %2110, float %2113, float undef, float undef, i32 0, i32 0, i32 undef, float %2105)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2115 = extractvalue %dx.types.ResRet.f32 %2114, 0
  %2116 = fcmp fast ogt float %2115, -1.000000e+00
  %2117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %2118 = extractvalue %dx.types.CBufRet.f32 %2117, 1
  %2119 = select i1 %2116, float %2118, float 1.000000e+00
  %2120 = fadd fast float %2115, 1.000000e+00
  %2121 = fmul fast float %2119, %2120
  %2122 = call float @dx.op.unary.f32(i32 6, float %2121)  ; FAbs(value)
  %2123 = fmul fast float %2110, %399
  %2124 = fmul fast float %2113, %400
  %2125 = fsub fast float %2123, %401
  %2126 = fsub fast float %2124, %402
  %2127 = fmul fast float %2125, %2122
  %2128 = fmul fast float %2126, %2122
  %2129 = fsub fast float %2127, %1957
  %2130 = fsub fast float %2128, %1958
  %2131 = fsub fast float %2122, %1967
  %2132 = call float @dx.op.dot3.f32(i32 55, float %2129, float %2130, float %2131, float %2129, float %2130, float %2131)  ; Dot3(ax,ay,az,bx,by,bz)
  %2133 = call float @dx.op.dot3.f32(i32 55, float %2129, float %2130, float %2131, float %1935, float %1938, float %1941)  ; Dot3(ax,ay,az,bx,by,bz)
  %2134 = fsub fast float -0.000000e+00, %2133
  %2135 = call float @dx.op.dot3.f32(i32 55, float %2129, float %2130, float %2131, float %1964, float %1965, float %1966)  ; Dot3(ax,ay,az,bx,by,bz)
  %2136 = call float @dx.op.unary.f32(i32 25, float %2132)  ; Rsqrt(value)
  %2137 = fmul fast float %2136, %2135
  %2138 = bitcast float %2132 to i32
  %2139 = ashr i32 %2138, 1
  %2140 = add nsw i32 %2139, 532487669
  %2141 = bitcast i32 %2140 to float
  %2142 = fmul fast float %2141, 0x3F947AE140000000
  %2143 = fsub fast float 2.000000e+00, %2142
  %2144 = call float @dx.op.unary.f32(i32 7, float %2143)  ; Saturate(value)
  %2145 = fmul fast float %2141, 0x3F7B4E81C0000000
  %2146 = fsub fast float 0x3FF5555560000000, %2145
  %2147 = call float @dx.op.unary.f32(i32 7, float %2146)  ; Saturate(value)
  %2148 = fmul fast float %2122, 0x3F947AE140000000
  %2149 = fadd fast float %2148, -1.000000e+00
  %2150 = call float @dx.op.unary.f32(i32 7, float %2149)  ; Saturate(value)
  %2151 = fsub fast float %2147, %2144
  %2152 = fmul fast float %2150, %2151
  %2153 = fadd fast float %2152, %2144
  %2154 = fmul fast float %2121, %1875
  %2155 = fcmp fast ogt float %2154, 0.000000e+00
  %2156 = select i1 %2155, float %2153, float 0.000000e+00
  %2157 = fadd fast float %2137, 1.000000e+00
  %2158 = fmul fast float %2156, %2157
  %2159 = fadd fast float %2158, -1.000000e+00
  %2160 = fcmp fast ogt float %2159, %2094
  %2161 = select i1 %2160, float %2134, float %2095
  %2162 = fsub fast float %2134, %2161
  %2163 = fmul fast float %2162, 0x3FB9999940000000
  %2164 = fadd fast float %2163, 0xBFDFFFFF80000000
  %2165 = call float @dx.op.unary.f32(i32 7, float %2164)  ; Saturate(value)
  %2166 = fmul fast float %2133, 0x3FC99999E0000000
  %2167 = fadd fast float %2166, 0x3FF0000020000000
  %2168 = call float @dx.op.unary.f32(i32 7, float %2167)  ; Saturate(value)
  %2169 = sitofp i32 %34 to float
  %2170 = fdiv fast float 8.000000e+00, %2169
  %2171 = fmul fast float %2168, %2165
  %2172 = fmul fast float %2171, %2170
  %2173 = fsub fast float %2094, %2172
  %2174 = fcmp ole float %2159, %2173
  %2175 = select i1 %2174, float %2173, float %2159
  %2176 = add nuw nsw i32 %2096, 1
  %2177 = icmp eq i32 %2176, %1942
  br i1 %2177, label %2178, label %2093

; <label>:2178                                    ; preds = %2093
  br label %2179

; <label>:2179                                    ; preds = %2178, %2090
  %2180 = phi float [ %2001, %2090 ], [ %2175, %2178 ]
  %2181 = fmul fast float %1966, %1988
  %2182 = fmul fast float %1966, %1986
  %2183 = fsub fast float -0.000000e+00, %2182
  %2184 = fmul fast float %1986, %1965
  %2185 = fmul fast float %1964, %1988
  %2186 = fsub fast float %2184, %2185
  %2187 = call float @dx.op.dot3.f32(i32 55, float %1935, float %1938, float %1941, float %2181, float %2183, float %2186)  ; Dot3(ax,ay,az,bx,by,bz)
  %2188 = fmul fast float %2187, %2181
  %2189 = fmul fast float %2187, %2183
  %2190 = fmul fast float %2187, %2186
  %2191 = fsub fast float %1935, %2188
  %2192 = fsub fast float %1938, %2189
  %2193 = fsub fast float %1941, %2190
  %2194 = fmul fast float %2191, %2191
  %2195 = fmul fast float %2192, %2192
  %2196 = fadd fast float %2194, %2195
  %2197 = fmul fast float %2193, %2193
  %2198 = fadd fast float %2196, %2197
  %2199 = call float @dx.op.unary.f32(i32 24, float %2198)  ; Sqrt(value)
  %2200 = call float @dx.op.dot3.f32(i32 55, float %1986, float %1988, float 0.000000e+00, float %2191, float %2192, float %2193)  ; Dot3(ax,ay,az,bx,by,bz)
  %2201 = call float @dx.op.dot3.f32(i32 55, float %1986, float %1988, float 0.000000e+00, float %1964, float %1965, float %1966)  ; Dot3(ax,ay,az,bx,by,bz)
  %2202 = fmul fast float %2201, %1964
  %2203 = fmul fast float %2201, %1965
  %2204 = fmul fast float %2201, %1966
  %2205 = call float @dx.op.dot3.f32(i32 55, float %2202, float %2203, float %2204, float %2191, float %2192, float %2193)  ; Dot3(ax,ay,az,bx,by,bz)
  %2206 = fcmp fast oge float %2200, %2205
  %2207 = fdiv fast float 1.000000e+00, %2199
  %2208 = call float @dx.op.dot3.f32(i32 55, float %2191, float %2192, float %2193, float %1964, float %1965, float %1966)  ; Dot3(ax,ay,az,bx,by,bz)
  %2209 = fmul fast float %2208, %2207
  %2210 = call float @dx.op.unary.f32(i32 7, float %2209)  ; Saturate(value)
  %2211 = fmul fast float %2210, %2210
  %2212 = fsub fast float 1.000000e+00, %2211
  %2213 = bitcast float %2212 to i32
  %2214 = ashr i32 %2213, 1
  %2215 = add nsw i32 %2214, 532487669
  %2216 = bitcast i32 %2215 to float
  %2217 = call float @dx.op.unary.f32(i32 6, float %2210)  ; FAbs(value)
  %2218 = fmul fast float %2217, 0x3FC40AE960000000
  %2219 = fsub fast float 0x3FF921FB60000000, %2218
  %2220 = fsub fast float 1.000000e+00, %2217
  %2221 = bitcast float %2220 to i32
  %2222 = ashr i32 %2221, 1
  %2223 = add nsw i32 %2222, 532487669
  %2224 = bitcast i32 %2223 to float
  %2225 = fmul fast float %2224, %2219
  %2226 = fcmp fast oge float %2210, 0.000000e+00
  %2227 = fsub fast float 0x400921FB60000000, %2225
  %2228 = select i1 %2226, float %2225, float %2227
  %2229 = fsub fast float -0.000000e+00, %2216
  %2230 = select i1 %2206, float %2229, float %2216
  %2231 = fsub fast float -0.000000e+00, %2228
  %2232 = select i1 %2206, float %2231, float %2228
  %2233 = call float @dx.op.unary.f32(i32 6, float %2091)  ; FAbs(value)
  %2234 = fmul fast float %2233, 0x3FC40AE960000000
  %2235 = fsub fast float 0x3FF921FB60000000, %2234
  %2236 = fsub fast float 1.000000e+00, %2233
  %2237 = bitcast float %2236 to i32
  %2238 = ashr i32 %2237, 1
  %2239 = add nsw i32 %2238, 532487669
  %2240 = bitcast i32 %2239 to float
  %2241 = fmul fast float %2240, %2235
  %2242 = fcmp fast oge float %2091, 0.000000e+00
  %2243 = fsub fast float 0x400921FB60000000, %2241
  %2244 = select i1 %2242, float %2241, float %2243
  %2245 = call float @dx.op.unary.f32(i32 6, float %2180)  ; FAbs(value)
  %2246 = fmul fast float %2245, 0x3FC40AE960000000
  %2247 = fsub fast float 0x3FF921FB60000000, %2246
  %2248 = fsub fast float 1.000000e+00, %2245
  %2249 = bitcast float %2248 to i32
  %2250 = ashr i32 %2249, 1
  %2251 = add nsw i32 %2250, 532487669
  %2252 = bitcast i32 %2251 to float
  %2253 = fmul fast float %2252, %2247
  %2254 = fcmp fast oge float %2180, 0.000000e+00
  %2255 = fsub fast float 0x400921FB60000000, %2253
  %2256 = select i1 %2254, float %2253, float %2255
  %2257 = fsub fast float -0.000000e+00, %2232
  %2258 = fsub fast float %2257, %2244
  %2259 = call float @dx.op.binary.f32(i32 35, float %2258, float 0xBFF921FB60000000)  ; FMax(a,b)
  %2260 = call float @dx.op.binary.f32(i32 36, float %2259, float 0x3FF921FB60000000)  ; FMin(a,b)
  %2261 = fadd fast float %2232, %2260
  %2262 = fsub fast float %2256, %2232
  %2263 = call float @dx.op.binary.f32(i32 35, float %2262, float 0xBFF921FB60000000)  ; FMax(a,b)
  %2264 = call float @dx.op.binary.f32(i32 36, float %2263, float 0x3FF921FB60000000)  ; FMin(a,b)
  %2265 = fadd fast float %2232, %2264
  %2266 = fmul fast float %2261, 2.000000e+00
  %2267 = fsub fast float %2266, %2232
  %2268 = call float @dx.op.unary.f32(i32 12, float %2267)  ; Cos(value)
  %2269 = fsub fast float -0.000000e+00, %2268
  %2270 = fmul fast float %2265, 2.000000e+00
  %2271 = fsub fast float %2270, %2232
  %2272 = call float @dx.op.unary.f32(i32 12, float %2271)  ; Cos(value)
  %2273 = fmul fast float %2210, 2.000000e+00
  %2274 = fadd fast float %2265, %2261
  %2275 = fmul fast float %2230, %2274
  %2276 = fmul fast float %2275, 2.000000e+00
  %2277 = fsub fast float %2269, %2272
  %2278 = fadd fast float %2277, %2273
  %2279 = fadd fast float %2278, %2276
  %2280 = fmul fast float %2199, 2.500000e-01
  %2281 = fmul fast float %2280, %2279
  %2282 = fadd fast float %2281, %1980
  %2283 = fmul fast float %2232, %2230
  %2284 = fadd fast float %2283, %2210
  %2285 = fmul fast float %2284, %2199
  %2286 = fadd fast float %2285, %1978
  %2287 = add nuw nsw i32 %1979, 1
  %2288 = icmp eq i32 %2287, %1011
  br i1 %2288, label %2289, label %1977

; <label>:2289                                    ; preds = %2179
  br label %2290

; <label>:2290                                    ; preds = %2289, %1887
  %2291 = phi float [ 0.000000e+00, %1887 ], [ %2286, %2289 ]
  %2292 = phi float [ 0.000000e+00, %1887 ], [ %2282, %2289 ]
  %2293 = fdiv fast float %2292, %2291
  br label %2294

; <label>:2294                                    ; preds = %2290, %1869, %1866
  %2295 = phi float [ %949, %1866 ], [ %2293, %2290 ], [ 1.000000e+00, %1869 ]
  %2296 = load float, float* %412, align 4
  %2297 = load float, float* %413, align 4
  %2298 = load float, float* %414, align 4
  %2299 = load float, float* %415, align 4
  %2300 = icmp eq i32 %1006, 2
  br i1 %2300, label %2301, label %2326, !dx.controlflow.hints !64

; <label>:2301                                    ; preds = %2294
  %2302 = getelementptr inbounds [4 x float], [4 x float]* %21, i32 0, i32 0
  store float %2296, float* %2302, align 4
  %2303 = getelementptr inbounds [4 x float], [4 x float]* %21, i32 0, i32 1
  store float %2297, float* %2303, align 4
  %2304 = getelementptr inbounds [4 x float], [4 x float]* %21, i32 0, i32 2
  store float %2298, float* %2304, align 4
  %2305 = getelementptr inbounds [4 x float], [4 x float]* %21, i32 0, i32 3
  store float %2299, float* %2305, align 4
  %2306 = getelementptr [4 x float], [4 x float]* %21, i32 0, i32 %432
  %2307 = load float, float* %2306, align 4, !tbaa !31, !noalias !65
  %2308 = fsub fast float %2307, %441
  %2309 = call float @dx.op.unary.f32(i32 6, float %2308)  ; FAbs(value)
  %2310 = fsub fast float %2307, %443
  %2311 = call float @dx.op.unary.f32(i32 6, float %2310)  ; FAbs(value)
  %2312 = fcmp fast olt float %2309, %2311
  %2313 = select i1 %2312, float %949, float %1439
  %2314 = getelementptr inbounds [4 x float], [4 x float]* %20, i32 0, i32 0
  store float %2296, float* %2314, align 4
  %2315 = getelementptr inbounds [4 x float], [4 x float]* %20, i32 0, i32 1
  store float %2297, float* %2315, align 4
  %2316 = getelementptr inbounds [4 x float], [4 x float]* %20, i32 0, i32 2
  store float %2298, float* %2316, align 4
  %2317 = getelementptr inbounds [4 x float], [4 x float]* %20, i32 0, i32 3
  store float %2299, float* %2317, align 4
  %2318 = getelementptr [4 x float], [4 x float]* %20, i32 0, i32 %439
  %2319 = load float, float* %2318, align 4, !tbaa !31, !noalias !72
  %2320 = fsub fast float %2319, %441
  %2321 = call float @dx.op.unary.f32(i32 6, float %2320)  ; FAbs(value)
  %2322 = fsub fast float %2319, %443
  %2323 = call float @dx.op.unary.f32(i32 6, float %2322)  ; FAbs(value)
  %2324 = fcmp fast olt float %2321, %2323
  %2325 = select i1 %2324, float %949, float %1439
  br label %2341

; <label>:2326                                    ; preds = %2294
  %2327 = icmp eq i32 %1006, 3
  br i1 %2327, label %2328, label %2341, !dx.controlflow.hints !76

; <label>:2328                                    ; preds = %2326
  %2329 = getelementptr inbounds [4 x float], [4 x float]* %19, i32 0, i32 0
  store float %2296, float* %2329, align 4
  %2330 = getelementptr inbounds [4 x float], [4 x float]* %19, i32 0, i32 1
  store float %2297, float* %2330, align 4
  %2331 = getelementptr inbounds [4 x float], [4 x float]* %19, i32 0, i32 2
  store float %2298, float* %2331, align 4
  %2332 = getelementptr inbounds [4 x float], [4 x float]* %19, i32 0, i32 3
  store float %2299, float* %2332, align 4
  %2333 = getelementptr [4 x float], [4 x float]* %19, i32 0, i32 %439
  %2334 = load float, float* %2333, align 4, !tbaa !31, !noalias !77
  %2335 = fsub fast float %2334, %441
  %2336 = call float @dx.op.unary.f32(i32 6, float %2335)  ; FAbs(value)
  %2337 = fsub fast float %2334, %443
  %2338 = call float @dx.op.unary.f32(i32 6, float %2337)  ; FAbs(value)
  %2339 = fcmp fast olt float %2336, %2338
  %2340 = select i1 %2339, float %949, float %1439
  br label %2341

; <label>:2341                                    ; preds = %2328, %2326, %2301
  %2342 = phi float [ %2340, %2328 ], [ %2295, %2326 ], [ %2325, %2301 ]
  %2343 = phi float [ %1867, %2328 ], [ %1867, %2326 ], [ %2313, %2301 ]
  %2344 = icmp eq i32 %431, 1
  %2345 = select i1 %2344, float %949, float %1439
  %2346 = icmp eq i32 %431, 2
  %2347 = select i1 %2346, float %949, float %2343
  %2348 = icmp eq i32 %431, 3
  %2349 = select i1 %2348, float %949, float %2342
  %2350 = icmp eq i32 %438, 0
  %2351 = select i1 %2350, float %1439, float %949
  %2352 = icmp eq i32 %438, 1
  %2353 = select i1 %2352, float %1439, float %2345
  %2354 = icmp eq i32 %438, 2
  %2355 = select i1 %2354, float %1439, float %2347
  %2356 = icmp eq i32 %438, 3
  %2357 = select i1 %2356, float %1439, float %2349
  %2358 = icmp eq i32 %432, 0
  %2359 = select i1 %2358, float %2343, float %2351
  %2360 = icmp eq i32 %432, 1
  %2361 = select i1 %2360, float %2343, float %2353
  %2362 = icmp eq i32 %432, 2
  %2363 = select i1 %2362, float %2343, float %2355
  %2364 = icmp eq i32 %432, 3
  %2365 = select i1 %2364, float %2343, float %2357
  %2366 = icmp eq i32 %439, 0
  %2367 = select i1 %2366, float %2342, float %2359
  %2368 = icmp eq i32 %439, 1
  %2369 = select i1 %2368, float %2342, float %2361
  %2370 = icmp eq i32 %439, 2
  %2371 = select i1 %2370, float %2342, float %2363
  %2372 = icmp eq i32 %439, 3
  %2373 = select i1 %2372, float %2342, float %2365
  %2374 = fadd fast float %2367, -1.000000e+00
  %2375 = fadd fast float %2369, -1.000000e+00
  %2376 = fadd fast float %2371, -1.000000e+00
  %2377 = fadd fast float %2373, -1.000000e+00
  %2378 = fmul fast float %2374, %362
  %2379 = fmul fast float %2375, %362
  %2380 = fmul fast float %2376, %362
  %2381 = fmul fast float %2377, %362
  %2382 = fadd fast float %2378, 1.000000e+00
  %2383 = fadd fast float %2379, 1.000000e+00
  %2384 = fadd fast float %2380, 1.000000e+00
  %2385 = fadd fast float %2381, 1.000000e+00
  %2386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %2387 = extractvalue %dx.types.CBufRet.f32 %2386, 2
  %2388 = extractvalue %dx.types.CBufRet.f32 %2386, 3
  %2389 = fadd fast float %2387, %51
  %2390 = fadd fast float %2388, %52
  %2391 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %12, float %2389, float %2390, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2392 = extractvalue %dx.types.ResRet.f32 %2391, 0
  %2393 = call float @dx.op.binary.f32(i32 36, float %2392, float %2382)  ; FMin(a,b)
  %2394 = call float @dx.op.binary.f32(i32 36, float %2392, float %2383)  ; FMin(a,b)
  %2395 = call float @dx.op.binary.f32(i32 36, float %2392, float %2384)  ; FMin(a,b)
  %2396 = call float @dx.op.binary.f32(i32 36, float %2392, float %2385)  ; FMin(a,b)
  %2397 = fmul fast float %2392, %2382
  %2398 = fmul fast float %2392, %2383
  %2399 = fmul fast float %2392, %2384
  %2400 = fmul fast float %2392, %2385
  %2401 = fsub fast float %2393, %2397
  %2402 = fsub fast float %2394, %2398
  %2403 = fsub fast float %2395, %2399
  %2404 = fsub fast float %2396, %2400
  %2405 = fmul fast float %2401, 7.500000e-01
  %2406 = fmul fast float %2402, 7.500000e-01
  %2407 = fmul fast float %2403, 7.500000e-01
  %2408 = fmul fast float %2404, 7.500000e-01
  %2409 = fadd fast float %2405, %2397
  %2410 = fadd fast float %2406, %2398
  %2411 = fadd fast float %2407, %2399
  %2412 = fadd fast float %2408, %2400
  %2413 = fmul fast float %45, 5.000000e-01
  %2414 = fmul fast float %46, 5.000000e-01
  %2415 = fadd fast float %51, %2413
  %2416 = fadd fast float %52, %2414
  %2417 = fsub fast float %2415, %98
  %2418 = fsub fast float %2416, %99
  %2419 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %12, float %2417, float %2418, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2420 = extractvalue %dx.types.ResRet.f32 %2419, 0
  %2421 = fsub fast float %2420, %2409
  %2422 = fmul fast float %2421, %353
  %2423 = fadd fast float %2422, %2409
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %386, i32 %387, i32 undef, float %2423, float %2423, float %2423, float %2423, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %2424 = fptoui float %352 to i32
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2425 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %18
  store i32 %2424, i32 addrspace(3)* %2425, align 4, !tbaa !42
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2426 = icmp ult i32 %202, 32
  br i1 %2426, label %2427, label %2433, !dx.controlflow.hints !81

; <label>:2427                                    ; preds = %2341
  %2428 = add i32 %18, 32
  %2429 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2428
  %2430 = load i32, i32 addrspace(3)* %2429, align 4, !tbaa !42
  %2431 = load i32, i32 addrspace(3)* %2425, align 4, !tbaa !42
  %2432 = add i32 %2431, %2430
  store i32 %2432, i32 addrspace(3)* %2425, align 4, !tbaa !42
  br label %2433

; <label>:2433                                    ; preds = %2427, %2341
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %2434 = icmp ult i32 %202, 16
  br i1 %2434, label %2435, label %2441, !dx.controlflow.hints !82

; <label>:2435                                    ; preds = %2433
  %2436 = add i32 %18, 16
  %2437 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2436
  %2438 = load i32, i32 addrspace(3)* %2437, align 4, !tbaa !42
  %2439 = load i32, i32 addrspace(3)* %2425, align 4, !tbaa !42
  %2440 = add i32 %2439, %2438
  store i32 %2440, i32 addrspace(3)* %2425, align 4, !tbaa !42
  br label %2441

; <label>:2441                                    ; preds = %2435, %2433
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %2442 = icmp ult i32 %202, 8
  br i1 %2442, label %2443, label %2449, !dx.controlflow.hints !83

; <label>:2443                                    ; preds = %2441
  %2444 = add i32 %18, 8
  %2445 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2444
  %2446 = load i32, i32 addrspace(3)* %2445, align 4, !tbaa !42
  %2447 = load i32, i32 addrspace(3)* %2425, align 4, !tbaa !42
  %2448 = add i32 %2447, %2446
  store i32 %2448, i32 addrspace(3)* %2425, align 4, !tbaa !42
  br label %2449

; <label>:2449                                    ; preds = %2443, %2441
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %2450 = icmp ult i32 %202, 4
  br i1 %2450, label %2451, label %2457, !dx.controlflow.hints !84

; <label>:2451                                    ; preds = %2449
  %2452 = add i32 %18, 4
  %2453 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2452
  %2454 = load i32, i32 addrspace(3)* %2453, align 4, !tbaa !42
  %2455 = load i32, i32 addrspace(3)* %2425, align 4, !tbaa !42
  %2456 = add i32 %2455, %2454
  store i32 %2456, i32 addrspace(3)* %2425, align 4, !tbaa !42
  br label %2457

; <label>:2457                                    ; preds = %2451, %2449
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %2458 = icmp ult i32 %202, 2
  br i1 %2458, label %2459, label %2465, !dx.controlflow.hints !85

; <label>:2459                                    ; preds = %2457
  %2460 = add i32 %18, 2
  %2461 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2460
  %2462 = load i32, i32 addrspace(3)* %2461, align 4, !tbaa !42
  %2463 = load i32, i32 addrspace(3)* %2425, align 4, !tbaa !42
  %2464 = add i32 %2463, %2462
  store i32 %2464, i32 addrspace(3)* %2425, align 4, !tbaa !42
  br label %2465

; <label>:2465                                    ; preds = %2459, %2457
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %2466 = icmp eq i32 %202, 0
  br i1 %2466, label %2467, label %2473, !dx.controlflow.hints !86

; <label>:2467                                    ; preds = %2465
  %2468 = add i32 %18, 1
  %2469 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2468
  %2470 = load i32, i32 addrspace(3)* %2469, align 4, !tbaa !42
  %2471 = load i32, i32 addrspace(3)* %2425, align 4, !tbaa !42
  %2472 = add i32 %2471, %2470
  store i32 %2472, i32 addrspace(3)* %2425, align 4, !tbaa !42
  br label %2473

; <label>:2473                                    ; preds = %2467, %2465
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2474 = and i32 %18, -64
  %2475 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2474
  %2476 = load i32, i32 addrspace(3)* %2475, align 4, !tbaa !42
  %2477 = fmul fast float %45, 1.500000e+00
  %2478 = fadd fast float %51, %2477
  %2479 = fsub fast float %2478, %98
  %2480 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %12, float %2479, float %2418, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2481 = extractvalue %dx.types.ResRet.f32 %2480, 0
  %2482 = fsub fast float %2481, %2410
  %2483 = fmul fast float %2482, %353
  %2484 = fadd fast float %2483, %2410
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %390, i32 %387, i32 undef, float %2484, float %2484, float %2484, float %2484, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %2424, i32 addrspace(3)* %2425, align 4, !tbaa !42
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %2426, label %2485, label %2491, !dx.controlflow.hints !81

; <label>:2485                                    ; preds = %2473
  %2486 = add i32 %18, 32
  %2487 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2486
  %2488 = load i32, i32 addrspace(3)* %2487, align 4, !tbaa !42
  %2489 = load i32, i32 addrspace(3)* %2425, align 4, !tbaa !42
  %2490 = add i32 %2489, %2488
  store i32 %2490, i32 addrspace(3)* %2425, align 4, !tbaa !42
  br label %2491

; <label>:2491                                    ; preds = %2485, %2473
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2434, label %2492, label %2498, !dx.controlflow.hints !82

; <label>:2492                                    ; preds = %2491
  %2493 = add i32 %18, 16
  %2494 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2493
  %2495 = load i32, i32 addrspace(3)* %2494, align 4, !tbaa !42
  %2496 = load i32, i32 addrspace(3)* %2425, align 4, !tbaa !42
  %2497 = add i32 %2496, %2495
  store i32 %2497, i32 addrspace(3)* %2425, align 4, !tbaa !42
  br label %2498

; <label>:2498                                    ; preds = %2492, %2491
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2442, label %2499, label %2505, !dx.controlflow.hints !83

; <label>:2499                                    ; preds = %2498
  %2500 = add i32 %18, 8
  %2501 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2500
  %2502 = load i32, i32 addrspace(3)* %2501, align 4, !tbaa !42
  %2503 = load i32, i32 addrspace(3)* %2425, align 4, !tbaa !42
  %2504 = add i32 %2503, %2502
  store i32 %2504, i32 addrspace(3)* %2425, align 4, !tbaa !42
  br label %2505

; <label>:2505                                    ; preds = %2499, %2498
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2450, label %2506, label %2512, !dx.controlflow.hints !84

; <label>:2506                                    ; preds = %2505
  %2507 = add i32 %18, 4
  %2508 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2507
  %2509 = load i32, i32 addrspace(3)* %2508, align 4, !tbaa !42
  %2510 = load i32, i32 addrspace(3)* %2425, align 4, !tbaa !42
  %2511 = add i32 %2510, %2509
  store i32 %2511, i32 addrspace(3)* %2425, align 4, !tbaa !42
  br label %2512

; <label>:2512                                    ; preds = %2506, %2505
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2458, label %2513, label %2519, !dx.controlflow.hints !85

; <label>:2513                                    ; preds = %2512
  %2514 = add i32 %18, 2
  %2515 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2514
  %2516 = load i32, i32 addrspace(3)* %2515, align 4, !tbaa !42
  %2517 = load i32, i32 addrspace(3)* %2425, align 4, !tbaa !42
  %2518 = add i32 %2517, %2516
  store i32 %2518, i32 addrspace(3)* %2425, align 4, !tbaa !42
  br label %2519

; <label>:2519                                    ; preds = %2513, %2512
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2466, label %2520, label %2526, !dx.controlflow.hints !86

; <label>:2520                                    ; preds = %2519
  %2521 = add i32 %18, 1
  %2522 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2521
  %2523 = load i32, i32 addrspace(3)* %2522, align 4, !tbaa !42
  %2524 = load i32, i32 addrspace(3)* %2425, align 4, !tbaa !42
  %2525 = add i32 %2524, %2523
  store i32 %2525, i32 addrspace(3)* %2425, align 4, !tbaa !42
  br label %2526

; <label>:2526                                    ; preds = %2520, %2519
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2527 = load i32, i32 addrspace(3)* %2475, align 4, !tbaa !42
  %2528 = add i32 %2527, %2476
  %2529 = fmul fast float %46, 1.500000e+00
  %2530 = fadd fast float %52, %2529
  %2531 = fsub fast float %2530, %99
  %2532 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %12, float %2417, float %2531, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2533 = extractvalue %dx.types.ResRet.f32 %2532, 0
  %2534 = fsub fast float %2533, %2411
  %2535 = fmul fast float %2534, %353
  %2536 = fadd fast float %2535, %2411
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %386, i32 %393, i32 undef, float %2536, float %2536, float %2536, float %2536, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %2424, i32 addrspace(3)* %2425, align 4, !tbaa !42
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %2426, label %2537, label %2543, !dx.controlflow.hints !81

; <label>:2537                                    ; preds = %2526
  %2538 = add i32 %18, 32
  %2539 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2538
  %2540 = load i32, i32 addrspace(3)* %2539, align 4, !tbaa !42
  %2541 = load i32, i32 addrspace(3)* %2425, align 4, !tbaa !42
  %2542 = add i32 %2541, %2540
  store i32 %2542, i32 addrspace(3)* %2425, align 4, !tbaa !42
  br label %2543

; <label>:2543                                    ; preds = %2537, %2526
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2434, label %2544, label %2550, !dx.controlflow.hints !82

; <label>:2544                                    ; preds = %2543
  %2545 = add i32 %18, 16
  %2546 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2545
  %2547 = load i32, i32 addrspace(3)* %2546, align 4, !tbaa !42
  %2548 = load i32, i32 addrspace(3)* %2425, align 4, !tbaa !42
  %2549 = add i32 %2548, %2547
  store i32 %2549, i32 addrspace(3)* %2425, align 4, !tbaa !42
  br label %2550

; <label>:2550                                    ; preds = %2544, %2543
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2442, label %2551, label %2557, !dx.controlflow.hints !83

; <label>:2551                                    ; preds = %2550
  %2552 = add i32 %18, 8
  %2553 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2552
  %2554 = load i32, i32 addrspace(3)* %2553, align 4, !tbaa !42
  %2555 = load i32, i32 addrspace(3)* %2425, align 4, !tbaa !42
  %2556 = add i32 %2555, %2554
  store i32 %2556, i32 addrspace(3)* %2425, align 4, !tbaa !42
  br label %2557

; <label>:2557                                    ; preds = %2551, %2550
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2450, label %2558, label %2564, !dx.controlflow.hints !84

; <label>:2558                                    ; preds = %2557
  %2559 = add i32 %18, 4
  %2560 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2559
  %2561 = load i32, i32 addrspace(3)* %2560, align 4, !tbaa !42
  %2562 = load i32, i32 addrspace(3)* %2425, align 4, !tbaa !42
  %2563 = add i32 %2562, %2561
  store i32 %2563, i32 addrspace(3)* %2425, align 4, !tbaa !42
  br label %2564

; <label>:2564                                    ; preds = %2558, %2557
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2458, label %2565, label %2571, !dx.controlflow.hints !85

; <label>:2565                                    ; preds = %2564
  %2566 = add i32 %18, 2
  %2567 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2566
  %2568 = load i32, i32 addrspace(3)* %2567, align 4, !tbaa !42
  %2569 = load i32, i32 addrspace(3)* %2425, align 4, !tbaa !42
  %2570 = add i32 %2569, %2568
  store i32 %2570, i32 addrspace(3)* %2425, align 4, !tbaa !42
  br label %2571

; <label>:2571                                    ; preds = %2565, %2564
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2466, label %2572, label %2578, !dx.controlflow.hints !86

; <label>:2572                                    ; preds = %2571
  %2573 = add i32 %18, 1
  %2574 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2573
  %2575 = load i32, i32 addrspace(3)* %2574, align 4, !tbaa !42
  %2576 = load i32, i32 addrspace(3)* %2425, align 4, !tbaa !42
  %2577 = add i32 %2576, %2575
  store i32 %2577, i32 addrspace(3)* %2425, align 4, !tbaa !42
  br label %2578

; <label>:2578                                    ; preds = %2572, %2571
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2579 = load i32, i32 addrspace(3)* %2475, align 4, !tbaa !42
  %2580 = add i32 %2528, %2579
  %2581 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %12, float %2479, float %2531, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2582 = extractvalue %dx.types.ResRet.f32 %2581, 0
  %2583 = fsub fast float %2582, %2412
  %2584 = fmul fast float %2583, %353
  %2585 = fadd fast float %2584, %2412
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %390, i32 %393, i32 undef, float %2585, float %2585, float %2585, float %2585, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %2424, i32 addrspace(3)* %2425, align 4, !tbaa !42
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %2426, label %2586, label %2592, !dx.controlflow.hints !81

; <label>:2586                                    ; preds = %2578
  %2587 = add i32 %18, 32
  %2588 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2587
  %2589 = load i32, i32 addrspace(3)* %2588, align 4, !tbaa !42
  %2590 = load i32, i32 addrspace(3)* %2425, align 4, !tbaa !42
  %2591 = add i32 %2590, %2589
  store i32 %2591, i32 addrspace(3)* %2425, align 4, !tbaa !42
  br label %2592

; <label>:2592                                    ; preds = %2586, %2578
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2434, label %2593, label %2599, !dx.controlflow.hints !82

; <label>:2593                                    ; preds = %2592
  %2594 = add i32 %18, 16
  %2595 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2594
  %2596 = load i32, i32 addrspace(3)* %2595, align 4, !tbaa !42
  %2597 = load i32, i32 addrspace(3)* %2425, align 4, !tbaa !42
  %2598 = add i32 %2597, %2596
  store i32 %2598, i32 addrspace(3)* %2425, align 4, !tbaa !42
  br label %2599

; <label>:2599                                    ; preds = %2593, %2592
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2442, label %2600, label %2606, !dx.controlflow.hints !83

; <label>:2600                                    ; preds = %2599
  %2601 = add i32 %18, 8
  %2602 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2601
  %2603 = load i32, i32 addrspace(3)* %2602, align 4, !tbaa !42
  %2604 = load i32, i32 addrspace(3)* %2425, align 4, !tbaa !42
  %2605 = add i32 %2604, %2603
  store i32 %2605, i32 addrspace(3)* %2425, align 4, !tbaa !42
  br label %2606

; <label>:2606                                    ; preds = %2600, %2599
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2450, label %2607, label %2613, !dx.controlflow.hints !84

; <label>:2607                                    ; preds = %2606
  %2608 = add i32 %18, 4
  %2609 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2608
  %2610 = load i32, i32 addrspace(3)* %2609, align 4, !tbaa !42
  %2611 = load i32, i32 addrspace(3)* %2425, align 4, !tbaa !42
  %2612 = add i32 %2611, %2610
  store i32 %2612, i32 addrspace(3)* %2425, align 4, !tbaa !42
  br label %2613

; <label>:2613                                    ; preds = %2607, %2606
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2458, label %2614, label %2620, !dx.controlflow.hints !85

; <label>:2614                                    ; preds = %2613
  %2615 = add i32 %18, 2
  %2616 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2615
  %2617 = load i32, i32 addrspace(3)* %2616, align 4, !tbaa !42
  %2618 = load i32, i32 addrspace(3)* %2425, align 4, !tbaa !42
  %2619 = add i32 %2618, %2617
  store i32 %2619, i32 addrspace(3)* %2425, align 4, !tbaa !42
  br label %2620

; <label>:2620                                    ; preds = %2614, %2613
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2466, label %2621, label %2627, !dx.controlflow.hints !86

; <label>:2621                                    ; preds = %2620
  %2622 = add i32 %18, 1
  %2623 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2622
  %2624 = load i32, i32 addrspace(3)* %2623, align 4, !tbaa !42
  %2625 = load i32, i32 addrspace(3)* %2425, align 4, !tbaa !42
  %2626 = add i32 %2625, %2624
  store i32 %2626, i32 addrspace(3)* %2425, align 4, !tbaa !42
  br label %2627

; <label>:2627                                    ; preds = %2621, %2620
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2628 = load i32, i32 addrspace(3)* %2475, align 4, !tbaa !42
  %2629 = add i32 %2580, %2628
  %2630 = uitofp i32 %2629 to float
  %2631 = fmul fast float %2630, 0x3EF0101020000000
  br i1 %474, label %2632, label %2637, !dx.controlflow.hints !87

; <label>:2632                                    ; preds = %2627
  %2633 = fmul fast float %49, 1.250000e-01
  %2634 = fmul fast float %50, 1.250000e-01
  %2635 = fptoui float %2633 to i32
  %2636 = fptoui float %2634 to i32
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %2635, i32 %2636, i32 undef, float %2631, float %2631, float %2631, float %2631, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2637

; <label>:2637                                    ; preds = %2632, %2627
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
!26 = !{void ()* @cs_gtao, !"cs_gtao", null, !4, !27}
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

