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
; shader hash: fbe160b6254e70f73db3dedd00991dc0
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
;   [80 x i8] (type annotation not present)
;
; }
;
; cbuffer 
; {
;
;   [11728 x i8] (type annotation not present)
;
; }
;
; Resource bind info for 
; {
;
;   [16 x i8] (type annotation not present)
; }
;
; Resource bind info for 
; {
;
;   [16 x i8] (type annotation not present)
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb4     1
;                                   cbuffer      NA          NA     CB1            cb3     1
;                                   sampler      NA          NA      S0             s1     1
;                                   texture     f32          2d      T0            t19     1
;                                   texture    byte         r/o      T1            t15     1
;                                   texture  struct         r/o      T2             t0     1
;                                   texture     u32         buf      T3             t1     1
;                                   texture  struct         r/o      T4             t2     1
;                                   texture     u32         buf      T5             t3     1
;                                   texture     u32         buf      T6             t4     1
;                                   texture     u32         buf      T7             t5     1
;                                   texture     f32         buf      T8             t6     1
;                                   texture     u32         buf      T9             t7     1
;                                   texture     f32         buf     T10             t8     1
;                                   texture    byte         r/o     T11             t9     1
;                                       UAV     f32          2d      U0             u5     1
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
%struct.ByteAddressBuffer = type { i32 }
%"class.StructuredBuffer<GfxNeuralLightGridTopLevelNode>" = type { %struct.GfxNeuralLightGridTopLevelNode }
%struct.GfxNeuralLightGridTopLevelNode = type { i32, i32, i32, i32 }
%"class.Buffer<unsigned int>" = type { i32 }
%"class.StructuredBuffer<GfxNeuralLightGridInternalNode>" = type { %struct.GfxNeuralLightGridInternalNode }
%struct.GfxNeuralLightGridInternalNode = type { <2 x i32>, <2 x i32> }
%"class.Buffer<vector<float, 4> >" = type { <4 x float> }
%"class.RWTexture2D<vector<float, 3> >" = type { <3 x float> }
%GfxNeuralLightGridSetupConsts = type { <3 x float>, i32, <3 x float>, i32, <3 x float>, i32, <3 x i32>, i32, float, i32, i32, i32 }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.SamplerState = type { i32 }

define void @cs_scene_luma_sh_sample_lightgrid_aniso() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %18 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %19 = alloca [8 x float], align 4
  %20 = alloca [8 x i32], align 4
  %21 = alloca [8 x float], align 4
  %22 = uitofp i32 %17 to float
  %23 = uitofp i32 %18 to float
  %24 = fadd fast float %22, 5.000000e-01
  %25 = fadd fast float %23, 5.000000e-01
  %26 = fmul fast float %24, 4.000000e+00
  %27 = fmul fast float %25, 4.000000e+00
  %28 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %29 = extractvalue %dx.types.CBufRet.f32 %28, 0
  %30 = extractvalue %dx.types.CBufRet.f32 %28, 1
  %31 = fmul fast float %26, %29
  %32 = fmul fast float %27, %30
  %33 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %14, float %31, float %32, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %34 = extractvalue %dx.types.ResRet.f32 %33, 0
  %35 = fcmp fast ogt float %34, -1.000000e+00
  %36 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %37 = extractvalue %dx.types.CBufRet.f32 %36, 1
  %38 = select i1 %35, float %37, float 1.000000e+00
  %39 = fadd fast float %34, 1.000000e+00
  %40 = fmul fast float %38, %39
  %41 = call float @dx.op.unary.f32(i32 6, float %40)  ; FAbs(value)
  %42 = fmul fast float %41, 0x3FEFFC0000000000
  %43 = fadd fast float %42, -1.600000e+01
  %44 = call float @dx.op.binary.f32(i32 35, float %43, float 0.000000e+00)  ; FMax(a,b)
  %45 = fmul fast float %31, 2.000000e+00
  %46 = fmul fast float %32, 2.000000e+00
  %47 = fsub fast float 1.000000e+00, %45
  %48 = fsub fast float 1.000000e+00, %46
  %49 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %50 = extractvalue %dx.types.CBufRet.f32 %49, 0
  %51 = extractvalue %dx.types.CBufRet.f32 %49, 1
  %52 = extractvalue %dx.types.CBufRet.f32 %49, 2
  %53 = fmul fast float %50, %47
  %54 = fmul fast float %51, %47
  %55 = fmul fast float %52, %47
  %56 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %57 = extractvalue %dx.types.CBufRet.f32 %56, 0
  %58 = extractvalue %dx.types.CBufRet.f32 %56, 1
  %59 = extractvalue %dx.types.CBufRet.f32 %56, 2
  %60 = fmul fast float %57, %48
  %61 = fmul fast float %58, %48
  %62 = fmul fast float %59, %48
  %63 = fadd fast float %60, %53
  %64 = fadd fast float %61, %54
  %65 = fadd fast float %62, %55
  %66 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %67 = extractvalue %dx.types.CBufRet.f32 %66, 0
  %68 = extractvalue %dx.types.CBufRet.f32 %66, 1
  %69 = extractvalue %dx.types.CBufRet.f32 %66, 2
  %70 = fadd fast float %63, %67
  %71 = fadd fast float %64, %68
  %72 = fadd fast float %65, %69
  %73 = fmul fast float %70, %44
  %74 = fmul fast float %71, %44
  %75 = fmul fast float %72, %44
  %76 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %77 = extractvalue %dx.types.CBufRet.f32 %76, 0
  %78 = extractvalue %dx.types.CBufRet.f32 %76, 1
  %79 = extractvalue %dx.types.CBufRet.f32 %76, 2
  %80 = fadd fast float %73, %77
  %81 = fadd fast float %74, %78
  %82 = fadd fast float %75, %79
  %83 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %84 = extractvalue %dx.types.CBufRet.f32 %83, 0
  %85 = extractvalue %dx.types.CBufRet.f32 %83, 1
  %86 = extractvalue %dx.types.CBufRet.f32 %83, 2
  %87 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %88 = extractvalue %dx.types.CBufRet.f32 %87, 0
  %89 = extractvalue %dx.types.CBufRet.f32 %87, 1
  %90 = extractvalue %dx.types.CBufRet.f32 %87, 2
  %91 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %92 = extractvalue %dx.types.CBufRet.i32 %91, 1
  %93 = fsub fast float %80, %84
  %94 = fsub fast float %81, %85
  %95 = fsub fast float %82, %86
  %96 = fmul fast float %93, %88
  %97 = fmul fast float %94, %89
  %98 = fmul fast float %95, %90
  %99 = fcmp fast ole float %96, 0.000000e+00
  %100 = fcmp fast ole float %97, 0.000000e+00
  %101 = fcmp fast ole float %98, 0.000000e+00
  %102 = or i1 %99, %100
  %103 = or i1 %101, %102
  %104 = fcmp fast oge float %96, 1.000000e+00
  %105 = fcmp fast oge float %97, 1.000000e+00
  %106 = fcmp fast oge float %98, 1.000000e+00
  %107 = or i1 %104, %105
  %108 = or i1 %106, %107
  %109 = or i1 %103, %108
  br i1 %109, label %625, label %110, !dx.controlflow.hints !31

; <label>:110                                     ; preds = %0
  %111 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %112 = extractvalue %dx.types.CBufRet.i32 %111, 0
  %113 = fptosi float %93 to i32
  %114 = fptosi float %94 to i32
  %115 = fptosi float %95 to i32
  %116 = and i32 %92, 31
  %117 = ashr i32 %113, %116
  %118 = ashr i32 %114, %116
  %119 = ashr i32 %115, %116
  %120 = mul i32 %112, %118
  %121 = add nsw i32 %120, %117
  %122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %121, i32 0)  ; BufferLoad(srv,index,wot)
  %123 = extractvalue %dx.types.ResRet.i32 %122, 0
  %124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %121, i32 4)  ; BufferLoad(srv,index,wot)
  %125 = extractvalue %dx.types.ResRet.i32 %124, 0
  %126 = icmp slt i32 %119, %123
  %127 = icmp sgt i32 %119, %125
  %128 = or i1 %126, %127
  br i1 %128, label %625, label %129, !dx.controlflow.hints !32

; <label>:129                                     ; preds = %110
  %130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %121, i32 8)  ; BufferLoad(srv,index,wot)
  %131 = extractvalue %dx.types.ResRet.i32 %130, 0
  %132 = sub i32 %119, %123
  %133 = add nsw i32 %132, %131
  %134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %133, i32 undef)  ; BufferLoad(srv,index,wot)
  %135 = extractvalue %dx.types.ResRet.i32 %134, 0
  %136 = icmp eq i32 %135, -1
  br i1 %136, label %625, label %137, !dx.controlflow.hints !33

; <label>:137                                     ; preds = %129
  %138 = getelementptr inbounds [8 x i32], [8 x i32]* %20, i32 0, i32 0
  store i32 -1, i32* %138, align 4, !tbaa !34, !noalias !38
  %139 = getelementptr inbounds [8 x i32], [8 x i32]* %20, i32 0, i32 1
  store i32 -1, i32* %139, align 4, !tbaa !34, !noalias !38
  %140 = getelementptr inbounds [8 x i32], [8 x i32]* %20, i32 0, i32 2
  store i32 -1, i32* %140, align 4, !tbaa !34, !noalias !38
  %141 = getelementptr inbounds [8 x i32], [8 x i32]* %20, i32 0, i32 3
  store i32 -1, i32* %141, align 4, !tbaa !34, !noalias !38
  %142 = getelementptr inbounds [8 x i32], [8 x i32]* %20, i32 0, i32 4
  store i32 -1, i32* %142, align 4, !tbaa !34, !noalias !38
  %143 = getelementptr inbounds [8 x i32], [8 x i32]* %20, i32 0, i32 5
  store i32 -1, i32* %143, align 4, !tbaa !34, !noalias !38
  %144 = getelementptr inbounds [8 x i32], [8 x i32]* %20, i32 0, i32 6
  store i32 -1, i32* %144, align 4, !tbaa !34, !noalias !49
  %145 = getelementptr inbounds [8 x i32], [8 x i32]* %20, i32 0, i32 7
  store i32 -1, i32* %145, align 4, !tbaa !34, !noalias !49
  br label %146

; <label>:146                                     ; preds = %250, %137
  %147 = phi i32 [ -1, %137 ], [ %247, %250 ]
  %148 = phi i32 [ -1, %137 ], [ %242, %250 ]
  %149 = phi i32 [ -1, %137 ], [ %235, %250 ]
  %150 = phi i32 [ -1, %137 ], [ %230, %250 ]
  %151 = phi i32 [ -1, %137 ], [ %221, %250 ]
  %152 = phi i32 [ -1, %137 ], [ %216, %250 ]
  %153 = phi i32 [ -1, %137 ], [ %208, %250 ]
  %154 = phi i32 [ -1, %137 ], [ %201, %250 ]
  %155 = phi i32 [ %135, %137 ], [ %270, %250 ]
  %156 = phi i32 [ %92, %137 ], [ %157, %250 ]
  %157 = add nsw i32 %156, -2
  %158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %155, i32 undef)  ; BufferLoad(srv,index,wot)
  %159 = extractvalue %dx.types.ResRet.i32 %158, 0
  %160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %155, i32 undef)  ; BufferLoad(srv,index,wot)
  %161 = extractvalue %dx.types.ResRet.i32 %160, 0
  %162 = and i32 %159, 31
  %163 = shl i32 1, %162
  %164 = add i32 %163, 1
  %165 = and i32 %157, 31
  %166 = ashr i32 %113, %165
  %167 = ashr i32 %114, %165
  %168 = ashr i32 %115, %165
  %169 = and i32 %166, 3
  %170 = and i32 %167, 3
  %171 = and i32 %168, 3
  br label %172

; <label>:172                                     ; preds = %172, %146
  %173 = phi i32 [ %147, %146 ], [ %247, %172 ]
  %174 = phi i32 [ %148, %146 ], [ %242, %172 ]
  %175 = phi i32 [ %149, %146 ], [ %235, %172 ]
  %176 = phi i32 [ %150, %146 ], [ %230, %172 ]
  %177 = phi i32 [ %151, %146 ], [ %221, %172 ]
  %178 = phi i32 [ %152, %146 ], [ %216, %172 ]
  %179 = phi i32 [ %153, %146 ], [ %208, %172 ]
  %180 = phi i32 [ %154, %146 ], [ %201, %172 ]
  %181 = phi i32 [ 0, %146 ], [ %248, %172 ]
  %182 = sub i32 2, %181
  %183 = and i32 %182, 31
  %184 = lshr i32 %169, %183
  %185 = lshr i32 %170, %183
  %186 = lshr i32 %171, %183
  %187 = sub i32 %159, %181
  %188 = and i32 %187, 31
  %189 = shl i32 %184, %188
  %190 = shl i32 %185, %188
  %191 = shl i32 %186, %188
  %192 = shl i32 1, %188
  %193 = mul i32 %191, %164
  %194 = add i32 %193, %190
  %195 = mul i32 %194, %164
  %196 = add i32 %189, %161
  %197 = add i32 %196, %195
  %198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %197, i32 undef)  ; BufferLoad(srv,index,wot)
  %199 = extractvalue %dx.types.ResRet.i32 %198, 0
  %200 = icmp ne i32 %199, -1
  %201 = select i1 %200, i32 %199, i32 %180
  store i32 %201, i32* %138, align 4, !tbaa !34, !noalias !38
  %202 = add i32 %192, %161
  %203 = add i32 %202, %189
  %204 = add i32 %203, %195
  %205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %204, i32 undef)  ; BufferLoad(srv,index,wot)
  %206 = extractvalue %dx.types.ResRet.i32 %205, 0
  %207 = icmp ne i32 %206, -1
  %208 = select i1 %207, i32 %206, i32 %179
  store i32 %208, i32* %139, align 4, !tbaa !34, !noalias !38
  %209 = add i32 %190, %192
  %210 = add i32 %209, %193
  %211 = mul i32 %210, %164
  %212 = add i32 %196, %211
  %213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %212, i32 undef)  ; BufferLoad(srv,index,wot)
  %214 = extractvalue %dx.types.ResRet.i32 %213, 0
  %215 = icmp ne i32 %214, -1
  %216 = select i1 %215, i32 %214, i32 %178
  store i32 %216, i32* %140, align 4, !tbaa !34, !noalias !38
  %217 = add i32 %203, %211
  %218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %217, i32 undef)  ; BufferLoad(srv,index,wot)
  %219 = extractvalue %dx.types.ResRet.i32 %218, 0
  %220 = icmp ne i32 %219, -1
  %221 = select i1 %220, i32 %219, i32 %177
  store i32 %221, i32* %141, align 4, !tbaa !34, !noalias !38
  %222 = add i32 %191, %192
  %223 = mul i32 %222, %164
  %224 = add i32 %223, %190
  %225 = mul i32 %224, %164
  %226 = add i32 %196, %225
  %227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %226, i32 undef)  ; BufferLoad(srv,index,wot)
  %228 = extractvalue %dx.types.ResRet.i32 %227, 0
  %229 = icmp ne i32 %228, -1
  %230 = select i1 %229, i32 %228, i32 %176
  store i32 %230, i32* %142, align 4, !tbaa !34, !noalias !38
  %231 = add i32 %203, %225
  %232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %231, i32 undef)  ; BufferLoad(srv,index,wot)
  %233 = extractvalue %dx.types.ResRet.i32 %232, 0
  %234 = icmp ne i32 %233, -1
  %235 = select i1 %234, i32 %233, i32 %175
  store i32 %235, i32* %143, align 4, !tbaa !34, !noalias !38
  %236 = add i32 %209, %223
  %237 = mul i32 %236, %164
  %238 = add i32 %196, %237
  %239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %238, i32 undef)  ; BufferLoad(srv,index,wot)
  %240 = extractvalue %dx.types.ResRet.i32 %239, 0
  %241 = icmp ne i32 %240, -1
  %242 = select i1 %241, i32 %240, i32 %174
  store i32 %242, i32* %144, align 4, !tbaa !34, !noalias !38
  %243 = add i32 %203, %237
  %244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %243, i32 undef)  ; BufferLoad(srv,index,wot)
  %245 = extractvalue %dx.types.ResRet.i32 %244, 0
  %246 = icmp ne i32 %245, -1
  %247 = select i1 %246, i32 %245, i32 %173
  store i32 %247, i32* %145, align 4, !tbaa !34, !noalias !38
  %248 = add i32 %181, 1
  %249 = icmp ugt i32 %248, %159
  br i1 %249, label %250, label %172

; <label>:250                                     ; preds = %172
  %251 = shl nuw nsw i32 %171, 4
  %252 = shl nuw nsw i32 %170, 2
  %253 = lshr i32 %171, 1
  %254 = and i32 %251, 16
  %255 = or i32 %252, %169
  %256 = or i32 %255, %254
  %257 = shl i32 1, %256
  %258 = shl nuw nsw i32 %253, 2
  %259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %155, i32 %258)  ; BufferLoad(srv,index,wot)
  %260 = extractvalue %dx.types.ResRet.i32 %259, 0
  %261 = and i32 %260, %257
  %262 = icmp eq i32 %261, 0
  %263 = add i32 %257, -1
  %264 = and i32 %260, %263
  %265 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %264)  ; Countbits(value)
  %266 = or i32 %258, 8
  %267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %155, i32 %266)  ; BufferLoad(srv,index,wot)
  %268 = extractvalue %dx.types.ResRet.i32 %267, 0
  %269 = add i32 %268, %265
  %270 = select i1 %262, i32 -1, i32 %269
  %271 = icmp eq i32 %270, -1
  br i1 %271, label %272, label %146

; <label>:272                                     ; preds = %250
  br label %273

; <label>:273                                     ; preds = %559, %272
  %274 = phi i32 [ %561, %559 ], [ %201, %272 ]
  %275 = phi float [ %556, %559 ], [ 0.000000e+00, %272 ]
  %276 = phi i32 [ %557, %559 ], [ 0, %272 ]
  %277 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %274, i32 undef)  ; BufferLoad(srv,index,wot)
  %278 = extractvalue %dx.types.ResRet.f32 %277, 0
  %279 = extractvalue %dx.types.ResRet.f32 %277, 1
  %280 = extractvalue %dx.types.ResRet.f32 %277, 2
  %281 = extractvalue %dx.types.ResRet.f32 %277, 3
  %282 = fsub fast float %80, %278
  %283 = fsub fast float %81, %279
  %284 = fsub fast float %82, %280
  %285 = fmul fast float %282, %281
  %286 = fmul fast float %283, %281
  %287 = fmul fast float %284, %281
  %288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %274, i32 undef)  ; BufferLoad(srv,index,wot)
  %289 = extractvalue %dx.types.ResRet.i32 %288, 0
  %290 = call float @dx.op.unary.f32(i32 6, float %285)  ; FAbs(value)
  %291 = call float @dx.op.unary.f32(i32 6, float %286)  ; FAbs(value)
  %292 = fsub fast float 1.000000e+00, %290
  %293 = fsub fast float 1.000000e+00, %291
  %294 = call float @dx.op.unary.f32(i32 7, float %292)  ; Saturate(value)
  %295 = call float @dx.op.unary.f32(i32 7, float %293)  ; Saturate(value)
  %296 = fmul fast float %295, %294
  %297 = mul i32 %289, 29
  %298 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %299 = extractvalue %dx.types.ResRet.f32 %298, 0
  %300 = extractvalue %dx.types.ResRet.f32 %298, 1
  %301 = extractvalue %dx.types.ResRet.f32 %298, 2
  %302 = extractvalue %dx.types.ResRet.f32 %298, 3
  %303 = add i32 %297, 1
  %304 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %303, i32 undef)  ; BufferLoad(srv,index,wot)
  %305 = extractvalue %dx.types.ResRet.f32 %304, 0
  %306 = extractvalue %dx.types.ResRet.f32 %304, 1
  %307 = extractvalue %dx.types.ResRet.f32 %304, 2
  %308 = extractvalue %dx.types.ResRet.f32 %304, 3
  %309 = add i32 %297, 2
  %310 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %309, i32 undef)  ; BufferLoad(srv,index,wot)
  %311 = extractvalue %dx.types.ResRet.f32 %310, 0
  %312 = extractvalue %dx.types.ResRet.f32 %310, 1
  %313 = extractvalue %dx.types.ResRet.f32 %310, 2
  %314 = extractvalue %dx.types.ResRet.f32 %310, 3
  %315 = add i32 %297, 3
  %316 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %315, i32 undef)  ; BufferLoad(srv,index,wot)
  %317 = extractvalue %dx.types.ResRet.f32 %316, 0
  %318 = extractvalue %dx.types.ResRet.f32 %316, 1
  %319 = extractvalue %dx.types.ResRet.f32 %316, 2
  %320 = extractvalue %dx.types.ResRet.f32 %316, 3
  %321 = add i32 %297, 4
  %322 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %321, i32 undef)  ; BufferLoad(srv,index,wot)
  %323 = extractvalue %dx.types.ResRet.f32 %322, 0
  %324 = extractvalue %dx.types.ResRet.f32 %322, 1
  %325 = extractvalue %dx.types.ResRet.f32 %322, 2
  %326 = extractvalue %dx.types.ResRet.f32 %322, 3
  %327 = add i32 %297, 5
  %328 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %327, i32 undef)  ; BufferLoad(srv,index,wot)
  %329 = extractvalue %dx.types.ResRet.f32 %328, 0
  %330 = extractvalue %dx.types.ResRet.f32 %328, 1
  %331 = extractvalue %dx.types.ResRet.f32 %328, 2
  %332 = extractvalue %dx.types.ResRet.f32 %328, 3
  %333 = add i32 %297, 6
  %334 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %333, i32 undef)  ; BufferLoad(srv,index,wot)
  %335 = extractvalue %dx.types.ResRet.f32 %334, 0
  %336 = extractvalue %dx.types.ResRet.f32 %334, 1
  %337 = extractvalue %dx.types.ResRet.f32 %334, 2
  %338 = extractvalue %dx.types.ResRet.f32 %334, 3
  %339 = add i32 %297, 7
  %340 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %339, i32 undef)  ; BufferLoad(srv,index,wot)
  %341 = extractvalue %dx.types.ResRet.f32 %340, 0
  %342 = extractvalue %dx.types.ResRet.f32 %340, 1
  %343 = extractvalue %dx.types.ResRet.f32 %340, 2
  %344 = extractvalue %dx.types.ResRet.f32 %340, 3
  %345 = fmul fast float %299, %285
  %346 = fmul fast float %311, %286
  %347 = fadd fast float %346, %345
  %348 = fmul fast float %323, %287
  %349 = fadd fast float %347, %348
  %350 = fmul fast float %300, %285
  %351 = fmul fast float %312, %286
  %352 = fadd fast float %351, %350
  %353 = fmul fast float %324, %287
  %354 = fadd fast float %352, %353
  %355 = fmul fast float %301, %285
  %356 = fmul fast float %313, %286
  %357 = fadd fast float %356, %355
  %358 = fmul fast float %325, %287
  %359 = fadd fast float %357, %358
  %360 = fmul fast float %302, %285
  %361 = fmul fast float %314, %286
  %362 = fadd fast float %361, %360
  %363 = fmul fast float %326, %287
  %364 = fadd fast float %362, %363
  %365 = fmul fast float %305, %285
  %366 = fmul fast float %317, %286
  %367 = fadd fast float %366, %365
  %368 = fmul fast float %329, %287
  %369 = fadd fast float %367, %368
  %370 = fmul fast float %306, %285
  %371 = fmul fast float %318, %286
  %372 = fadd fast float %371, %370
  %373 = fmul fast float %330, %287
  %374 = fadd fast float %372, %373
  %375 = fmul fast float %307, %285
  %376 = fmul fast float %319, %286
  %377 = fadd fast float %376, %375
  %378 = fmul fast float %331, %287
  %379 = fadd fast float %377, %378
  %380 = fmul fast float %308, %285
  %381 = fmul fast float %320, %286
  %382 = fadd fast float %381, %380
  %383 = fmul fast float %332, %287
  %384 = fadd fast float %382, %383
  %385 = fadd fast float %349, %335
  %386 = fadd fast float %354, %336
  %387 = fadd fast float %359, %337
  %388 = fadd fast float %364, %338
  %389 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %385)  ; FMax(a,b)
  %390 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %386)  ; FMax(a,b)
  %391 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %387)  ; FMax(a,b)
  %392 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %388)  ; FMax(a,b)
  %393 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %385)  ; FMin(a,b)
  %394 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %386)  ; FMin(a,b)
  %395 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %387)  ; FMin(a,b)
  %396 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %388)  ; FMin(a,b)
  %397 = fmul fast float %393, 0x3F847AE140000000
  %398 = fmul fast float %394, 0x3F847AE140000000
  %399 = fmul fast float %395, 0x3F847AE140000000
  %400 = fmul fast float %396, 0x3F847AE140000000
  %401 = fadd fast float %397, %389
  %402 = fadd fast float %398, %390
  %403 = fadd fast float %399, %391
  %404 = fadd fast float %400, %392
  %405 = fadd fast float %369, %341
  %406 = fadd fast float %374, %342
  %407 = fadd fast float %379, %343
  %408 = fadd fast float %384, %344
  %409 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %405)  ; FMax(a,b)
  %410 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %406)  ; FMax(a,b)
  %411 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %407)  ; FMax(a,b)
  %412 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %408)  ; FMax(a,b)
  %413 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %405)  ; FMin(a,b)
  %414 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %406)  ; FMin(a,b)
  %415 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %407)  ; FMin(a,b)
  %416 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %408)  ; FMin(a,b)
  %417 = fmul fast float %413, 0x3F847AE140000000
  %418 = fmul fast float %414, 0x3F847AE140000000
  %419 = fmul fast float %415, 0x3F847AE140000000
  %420 = fmul fast float %416, 0x3F847AE140000000
  %421 = fadd fast float %417, %409
  %422 = fadd fast float %418, %410
  %423 = fadd fast float %419, %411
  %424 = fadd fast float %420, %412
  br label %425

; <label>:425                                     ; preds = %425, %273
  %426 = phi i32 [ 0, %273 ], [ %446, %425 ]
  %427 = add i32 %297, 8
  %428 = shl i32 %426, 1
  %429 = add i32 %427, %428
  %430 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %431 = extractvalue %dx.types.ResRet.f32 %430, 0
  %432 = extractvalue %dx.types.ResRet.f32 %430, 1
  %433 = extractvalue %dx.types.ResRet.f32 %430, 2
  %434 = extractvalue %dx.types.ResRet.f32 %430, 3
  %435 = add i32 %297, 9
  %436 = add i32 %435, %428
  %437 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %436, i32 undef)  ; BufferLoad(srv,index,wot)
  %438 = extractvalue %dx.types.ResRet.f32 %437, 0
  %439 = extractvalue %dx.types.ResRet.f32 %437, 1
  %440 = extractvalue %dx.types.ResRet.f32 %437, 2
  %441 = extractvalue %dx.types.ResRet.f32 %437, 3
  %442 = call float @dx.op.dot4.f32(i32 56, float %431, float %432, float %433, float %434, float %401, float %402, float %403, float %404)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %443 = call float @dx.op.dot4.f32(i32 56, float %438, float %439, float %440, float %441, float %421, float %422, float %423, float %424)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %444 = fadd fast float %443, %442
  %445 = getelementptr inbounds [8 x float], [8 x float]* %19, i32 0, i32 %426
  store float %444, float* %445, align 4, !tbaa !50, !noalias !38
  %446 = add nuw nsw i32 %426, 1
  %447 = icmp eq i32 %446, 8
  br i1 %447, label %448, label %425

; <label>:448                                     ; preds = %425
  %449 = call float @dx.op.unary.f32(i32 6, float %287)  ; FAbs(value)
  %450 = fsub fast float 1.000000e+00, %449
  %451 = call float @dx.op.unary.f32(i32 7, float %450)  ; Saturate(value)
  %452 = fmul fast float %296, %451
  %453 = add i32 %297, 24
  %454 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %453, i32 undef)  ; BufferLoad(srv,index,wot)
  %455 = extractvalue %dx.types.ResRet.f32 %454, 0
  %456 = extractvalue %dx.types.ResRet.f32 %454, 1
  %457 = extractvalue %dx.types.ResRet.f32 %454, 2
  %458 = extractvalue %dx.types.ResRet.f32 %454, 3
  %459 = add i32 %297, 25
  %460 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %461 = extractvalue %dx.types.ResRet.f32 %460, 0
  %462 = extractvalue %dx.types.ResRet.f32 %460, 1
  %463 = extractvalue %dx.types.ResRet.f32 %460, 2
  %464 = extractvalue %dx.types.ResRet.f32 %460, 3
  %465 = getelementptr inbounds [8 x float], [8 x float]* %19, i32 0, i32 0
  %466 = load float, float* %465, align 4, !tbaa !50, !noalias !38
  %467 = fadd fast float %466, %455
  %468 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %467)  ; FMax(a,b)
  %469 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %467)  ; FMin(a,b)
  %470 = fmul fast float %469, 0x3F847AE140000000
  %471 = fadd fast float %470, %468
  store float %471, float* %465, align 4, !tbaa !50, !noalias !38
  %472 = getelementptr inbounds [8 x float], [8 x float]* %19, i32 0, i32 1
  %473 = load float, float* %472, align 4, !tbaa !50, !noalias !38
  %474 = fadd fast float %473, %456
  %475 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %474)  ; FMax(a,b)
  %476 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %474)  ; FMin(a,b)
  %477 = fmul fast float %476, 0x3F847AE140000000
  %478 = fadd fast float %477, %475
  store float %478, float* %472, align 4, !tbaa !50, !noalias !38
  %479 = getelementptr inbounds [8 x float], [8 x float]* %19, i32 0, i32 2
  %480 = load float, float* %479, align 4, !tbaa !50, !noalias !38
  %481 = fadd fast float %480, %457
  %482 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %481)  ; FMax(a,b)
  %483 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %481)  ; FMin(a,b)
  %484 = fmul fast float %483, 0x3F847AE140000000
  %485 = fadd fast float %484, %482
  store float %485, float* %479, align 4, !tbaa !50, !noalias !38
  %486 = getelementptr inbounds [8 x float], [8 x float]* %19, i32 0, i32 3
  %487 = load float, float* %486, align 4, !tbaa !50, !noalias !38
  %488 = fadd fast float %487, %458
  %489 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %488)  ; FMax(a,b)
  %490 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %488)  ; FMin(a,b)
  %491 = fmul fast float %490, 0x3F847AE140000000
  %492 = fadd fast float %491, %489
  store float %492, float* %486, align 4, !tbaa !50, !noalias !38
  %493 = getelementptr inbounds [8 x float], [8 x float]* %19, i32 0, i32 4
  %494 = load float, float* %493, align 4, !tbaa !50, !noalias !38
  %495 = fadd fast float %494, %461
  %496 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %495)  ; FMax(a,b)
  %497 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %495)  ; FMin(a,b)
  %498 = fmul fast float %497, 0x3F847AE140000000
  %499 = fadd fast float %498, %496
  store float %499, float* %493, align 4, !tbaa !50, !noalias !38
  %500 = getelementptr inbounds [8 x float], [8 x float]* %19, i32 0, i32 5
  %501 = load float, float* %500, align 4, !tbaa !50, !noalias !38
  %502 = fadd fast float %501, %462
  %503 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %502)  ; FMax(a,b)
  %504 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %502)  ; FMin(a,b)
  %505 = fmul fast float %504, 0x3F847AE140000000
  %506 = fadd fast float %505, %503
  store float %506, float* %500, align 4, !tbaa !50, !noalias !38
  %507 = getelementptr inbounds [8 x float], [8 x float]* %19, i32 0, i32 6
  %508 = load float, float* %507, align 4, !tbaa !50, !noalias !38
  %509 = fadd fast float %508, %463
  %510 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %509)  ; FMax(a,b)
  %511 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %509)  ; FMin(a,b)
  %512 = fmul fast float %511, 0x3F847AE140000000
  %513 = fadd fast float %512, %510
  store float %513, float* %507, align 4, !tbaa !50, !noalias !38
  %514 = getelementptr inbounds [8 x float], [8 x float]* %19, i32 0, i32 7
  %515 = load float, float* %514, align 4, !tbaa !50, !noalias !38
  %516 = fadd fast float %515, %464
  %517 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %516)  ; FMax(a,b)
  %518 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %516)  ; FMin(a,b)
  %519 = fmul fast float %518, 0x3F847AE140000000
  %520 = fadd fast float %519, %517
  store float %520, float* %514, align 4, !tbaa !50, !noalias !38
  %521 = add i32 %297, 26
  %522 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %521, i32 undef)  ; BufferLoad(srv,index,wot)
  %523 = extractvalue %dx.types.ResRet.f32 %522, 0
  %524 = extractvalue %dx.types.ResRet.f32 %522, 1
  %525 = extractvalue %dx.types.ResRet.f32 %522, 2
  %526 = extractvalue %dx.types.ResRet.f32 %522, 3
  %527 = add i32 %297, 27
  %528 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %527, i32 undef)  ; BufferLoad(srv,index,wot)
  %529 = extractvalue %dx.types.ResRet.f32 %528, 0
  %530 = extractvalue %dx.types.ResRet.f32 %528, 1
  %531 = extractvalue %dx.types.ResRet.f32 %528, 2
  %532 = extractvalue %dx.types.ResRet.f32 %528, 3
  %533 = fmul fast float %471, %523
  %534 = fmul fast float %478, %524
  %535 = fadd fast float %534, %533
  %536 = fmul fast float %485, %525
  %537 = fadd fast float %535, %536
  %538 = fmul fast float %492, %526
  %539 = fadd fast float %537, %538
  %540 = fmul fast float %499, %529
  %541 = fadd fast float %539, %540
  %542 = fmul fast float %506, %530
  %543 = fadd fast float %541, %542
  %544 = fmul fast float %513, %531
  %545 = fadd fast float %543, %544
  %546 = fmul fast float %520, %532
  %547 = fadd fast float %545, %546
  %548 = add i32 %297, 28
  %549 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %548, i32 undef)  ; BufferLoad(srv,index,wot)
  %550 = extractvalue %dx.types.ResRet.f32 %549, 0
  %551 = fadd fast float %547, %550
  %552 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %551)  ; FMax(a,b)
  %553 = fmul fast float %452, %552
  %554 = call float @dx.op.unary.f32(i32 7, float %553)  ; Saturate(value)
  %555 = getelementptr inbounds [8 x float], [8 x float]* %21, i32 0, i32 %276
  store float %554, float* %555, align 4, !tbaa !50, !noalias !38
  %556 = fadd fast float %554, %275
  %557 = add nuw nsw i32 %276, 1
  %558 = icmp eq i32 %557, 8
  br i1 %558, label %562, label %559

; <label>:559                                     ; preds = %448
  %560 = getelementptr inbounds [8 x i32], [8 x i32]* %20, i32 0, i32 %557
  %561 = load i32, i32* %560, align 4, !tbaa !34, !noalias !38
  br label %273

; <label>:562                                     ; preds = %448
  %563 = fcmp fast ugt float %556, 0x3EE4F8B580000000
  br i1 %563, label %564, label %625, !dx.controlflow.hints !52

; <label>:564                                     ; preds = %562
  %565 = fcmp fast ogt float %556, 0x3EE4F8B580000000
  %566 = fdiv fast float 1.000000e+00, %556
  %567 = select i1 %565, float %566, float 1.000000e+00
  %568 = getelementptr inbounds [8 x float], [8 x float]* %21, i32 0, i32 0
  %569 = load float, float* %568, align 4, !tbaa !50, !noalias !38
  %570 = fmul fast float %569, %567
  store float %570, float* %568, align 4, !tbaa !50, !noalias !38
  %571 = getelementptr inbounds [8 x float], [8 x float]* %21, i32 0, i32 1
  %572 = load float, float* %571, align 4, !tbaa !50, !noalias !38
  %573 = fmul fast float %572, %567
  store float %573, float* %571, align 4, !tbaa !50, !noalias !38
  %574 = getelementptr inbounds [8 x float], [8 x float]* %21, i32 0, i32 2
  %575 = load float, float* %574, align 4, !tbaa !50, !noalias !38
  %576 = fmul fast float %575, %567
  store float %576, float* %574, align 4, !tbaa !50, !noalias !38
  %577 = getelementptr inbounds [8 x float], [8 x float]* %21, i32 0, i32 3
  %578 = load float, float* %577, align 4, !tbaa !50, !noalias !38
  %579 = fmul fast float %578, %567
  store float %579, float* %577, align 4, !tbaa !50, !noalias !38
  %580 = getelementptr inbounds [8 x float], [8 x float]* %21, i32 0, i32 4
  %581 = load float, float* %580, align 4, !tbaa !50, !noalias !38
  %582 = fmul fast float %581, %567
  store float %582, float* %580, align 4, !tbaa !50, !noalias !38
  %583 = getelementptr inbounds [8 x float], [8 x float]* %21, i32 0, i32 5
  %584 = load float, float* %583, align 4, !tbaa !50, !noalias !38
  %585 = fmul fast float %584, %567
  store float %585, float* %583, align 4, !tbaa !50, !noalias !38
  %586 = getelementptr inbounds [8 x float], [8 x float]* %21, i32 0, i32 6
  %587 = load float, float* %586, align 4, !tbaa !50, !noalias !38
  %588 = fmul fast float %587, %567
  store float %588, float* %586, align 4, !tbaa !50, !noalias !38
  %589 = getelementptr inbounds [8 x float], [8 x float]* %21, i32 0, i32 7
  %590 = load float, float* %589, align 4, !tbaa !50, !noalias !38
  %591 = fmul fast float %590, %567
  store float %591, float* %589, align 4, !tbaa !50, !noalias !38
  br label %592

; <label>:592                                     ; preds = %619, %564
  %593 = phi float [ %623, %619 ], [ %570, %564 ]
  %594 = phi i32 [ %621, %619 ], [ %201, %564 ]
  %595 = phi float [ %612, %619 ], [ 0.000000e+00, %564 ]
  %596 = phi float [ %614, %619 ], [ 0.000000e+00, %564 ]
  %597 = phi float [ %616, %619 ], [ 0.000000e+00, %564 ]
  %598 = phi i32 [ %617, %619 ], [ 0, %564 ]
  %599 = shl i32 %594, 5
  %600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %599, i32 undef)  ; BufferLoad(srv,index,wot)
  %601 = extractvalue %dx.types.ResRet.i32 %600, 0
  %602 = shl i32 %601, 4
  %603 = and i32 %602, 32752
  %604 = call float @dx.op.legacyF16ToF32(i32 131, i32 %603)  ; LegacyF16ToF32(value)
  %605 = lshr i32 %601, 7
  %606 = and i32 %605, 32752
  %607 = call float @dx.op.legacyF16ToF32(i32 131, i32 %606)  ; LegacyF16ToF32(value)
  %608 = lshr i32 %601, 22
  %609 = shl nuw nsw i32 %608, 5
  %610 = call float @dx.op.legacyF16ToF32(i32 131, i32 %609)  ; LegacyF16ToF32(value)
  %611 = fmul fast float %604, %593
  %612 = fadd fast float %611, %595
  %613 = fmul fast float %607, %593
  %614 = fadd fast float %613, %596
  %615 = fmul fast float %610, %593
  %616 = fadd fast float %615, %597
  %617 = add nuw nsw i32 %598, 1
  %618 = icmp eq i32 %617, 8
  br i1 %618, label %624, label %619

; <label>:619                                     ; preds = %592
  %620 = getelementptr inbounds [8 x i32], [8 x i32]* %20, i32 0, i32 %617
  %621 = load i32, i32* %620, align 4, !tbaa !34, !noalias !38
  %622 = getelementptr inbounds [8 x float], [8 x float]* %21, i32 0, i32 %617
  %623 = load float, float* %622, align 4, !tbaa !50, !noalias !38
  br label %592

; <label>:624                                     ; preds = %592
  br label %625

; <label>:625                                     ; preds = %624, %562, %129, %110, %0
  %626 = phi float [ 0.000000e+00, %0 ], [ 0.000000e+00, %110 ], [ 0.000000e+00, %129 ], [ 0.000000e+00, %562 ], [ %612, %624 ]
  %627 = phi float [ 0.000000e+00, %0 ], [ 0.000000e+00, %110 ], [ 0.000000e+00, %129 ], [ 0.000000e+00, %562 ], [ %614, %624 ]
  %628 = phi float [ 0.000000e+00, %0 ], [ 0.000000e+00, %110 ], [ 0.000000e+00, %129 ], [ 0.000000e+00, %562 ], [ %616, %624 ]
  %629 = phi i1 [ false, %0 ], [ false, %110 ], [ false, %129 ], [ false, %562 ], [ true, %624 ]
  br i1 %629, label %643, label %630, !dx.controlflow.hints !53

; <label>:630                                     ; preds = %625
  %631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %632 = extractvalue %dx.types.ResRet.i32 %631, 1
  %633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %634 = extractvalue %dx.types.ResRet.i32 %633, 0
  %635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %636 = extractvalue %dx.types.ResRet.i32 %635, 0
  %637 = and i32 %636, 65535
  %638 = call float @dx.op.legacyF16ToF32(i32 131, i32 %637)  ; LegacyF16ToF32(value)
  %639 = lshr i32 %634, 16
  %640 = call float @dx.op.legacyF16ToF32(i32 131, i32 %639)  ; LegacyF16ToF32(value)
  %641 = and i32 %632, 65535
  %642 = call float @dx.op.legacyF16ToF32(i32 131, i32 %641)  ; LegacyF16ToF32(value)
  br label %643

; <label>:643                                     ; preds = %630, %625
  %644 = phi float [ %628, %625 ], [ %642, %630 ]
  %645 = phi float [ %627, %625 ], [ %640, %630 ]
  %646 = phi float [ %626, %625 ], [ %638, %630 ]
  %647 = fmul fast float %646, 0x3FD20DD760000000
  %648 = fmul fast float %645, 0x3FD20DD760000000
  %649 = fmul fast float %644, 0x3FD20DD760000000
  %650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %651 = extractvalue %dx.types.CBufRet.f32 %650, 3
  %652 = fmul fast float %647, %651
  %653 = fmul fast float %648, %651
  %654 = fmul fast float %649, %651
  %655 = extractvalue %dx.types.CBufRet.f32 %650, 0
  %656 = fmul fast float %652, %655
  %657 = fmul fast float %653, %655
  %658 = fmul fast float %654, %655
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %17, i32 %18, i32 undef, float %656, float %657, float %658, float %656, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

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
!dx.entryPoints = !{!28}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !21, !23, !26}
!5 = !{!6, !8, !9, !11, !13, !14, !15, !16, !17, !18, !19, !20}
!6 = !{i32 0, %"class.Texture2D<float>"* undef, !"", i32 0, i32 19, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 15, i32 1, i32 11, i32 0, null}
!9 = !{i32 2, %"class.StructuredBuffer<GfxNeuralLightGridTopLevelNode>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i32 0, !10}
!10 = !{i32 1, i32 16}
!11 = !{i32 3, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 10, i32 0, !12}
!12 = !{i32 0, i32 5}
!13 = !{i32 4, %"class.StructuredBuffer<GfxNeuralLightGridInternalNode>"* undef, !"", i32 0, i32 2, i32 1, i32 12, i32 0, !10}
!14 = !{i32 5, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 3, i32 1, i32 10, i32 0, !12}
!15 = !{i32 6, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 4, i32 1, i32 10, i32 0, !12}
!16 = !{i32 7, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 5, i32 1, i32 10, i32 0, !12}
!17 = !{i32 8, %"class.Buffer<vector<float, 4> >"* undef, !"", i32 0, i32 6, i32 1, i32 10, i32 0, !7}
!18 = !{i32 9, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 7, i32 1, i32 10, i32 0, !12}
!19 = !{i32 10, %"class.Buffer<vector<float, 4> >"* undef, !"", i32 0, i32 8, i32 1, i32 10, i32 0, !7}
!20 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 9, i32 1, i32 11, i32 0, null}
!21 = !{!22}
!22 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 5, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!23 = !{!24, !25}
!24 = !{i32 0, %GfxNeuralLightGridSetupConsts* undef, !"", i32 0, i32 4, i32 1, i32 80, null}
!25 = !{i32 1, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!26 = !{!27}
!27 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!28 = !{void ()* @cs_scene_luma_sh_sample_lightgrid_aniso, !"cs_scene_luma_sh_sample_lightgrid_aniso", null, !4, !29}
!29 = !{i32 0, i64 272, i32 4, !30}
!30 = !{i32 8, i32 8, i32 1}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = !{!35, !35, i64 0}
!35 = !{!"int", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !41, !42, !43, !44, !46, !47, !48}
!39 = distinct !{!39, !40, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z: %probeR"}
!40 = distinct !{!40, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z"}
!41 = distinct !{!41, !40, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z: %probeG"}
!42 = distinct !{!42, !40, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z: %probeB"}
!43 = distinct !{!43, !40, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z: %probeA"}
!44 = distinct !{!44, !45, !"\01?LookupLightingNeuralLG@@YA_NV?$vector@M$02@@USH3Vec@@11AIAM_N@Z: %redSH"}
!45 = distinct !{!45, !"\01?LookupLightingNeuralLG@@YA_NV?$vector@M$02@@USH3Vec@@11AIAM_N@Z"}
!46 = distinct !{!46, !45, !"\01?LookupLightingNeuralLG@@YA_NV?$vector@M$02@@USH3Vec@@11AIAM_N@Z: %greenSH"}
!47 = distinct !{!47, !45, !"\01?LookupLightingNeuralLG@@YA_NV?$vector@M$02@@USH3Vec@@11AIAM_N@Z: %blueSH"}
!48 = distinct !{!48, !45, !"\01?LookupLightingNeuralLG@@YA_NV?$vector@M$02@@USH3Vec@@11AIAM_N@Z: %probeA"}
!49 = !{!39, !41, !42, !43, !48}
!50 = !{!51, !51, i64 0}
!51 = !{!"float", !36, i64 0}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}

