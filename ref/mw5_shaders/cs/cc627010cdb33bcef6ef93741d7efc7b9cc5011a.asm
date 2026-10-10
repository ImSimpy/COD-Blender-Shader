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
; shader hash: 2902f15dba5808252652fafb329f12db
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
;   [32 x i8] (type annotation not present)
;
; }
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
;   [112 x i8] (type annotation not present)
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
;                                   cbuffer      NA          NA     CB0            cb1     1
;                                   cbuffer      NA          NA     CB1            cb4     1
;                                   cbuffer      NA          NA     CB2            cb3     1
;                                   sampler      NA          NA      S0             s1     1
;                                   texture     f32          2d      T0            t19     1
;                                   texture    byte         r/o      T1            t15     1
;                                   texture  struct         r/o      T2            t27     1
;                                   texture  struct         r/o      T3             t0     1
;                                   texture     u32         buf      T4             t1     1
;                                   texture  struct         r/o      T5             t2     1
;                                   texture     u32         buf      T6             t3     1
;                                   texture     u32         buf      T7             t4     1
;                                   texture     u32         buf      T8             t5     1
;                                   texture     f32         buf      T9             t6     1
;                                   texture     u32         buf     T10             t7     1
;                                   texture     f32         buf     T11             t8     1
;                                   texture    byte         r/o     T12             t9     1
;                                       UAV     f32         buf      U0             u3     1
;                                       UAV     f32         buf      U1             u4     1
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
%struct.ByteAddressBuffer = type { i32 }
%"class.StructuredBuffer<GfxGpuLightGridParams>" = type { %struct.GfxGpuLightGridParams }
%struct.GfxGpuLightGridParams = type { [7 x <4 x float>] }
%"class.StructuredBuffer<GfxNeuralLightGridTopLevelNode>" = type { %struct.GfxNeuralLightGridTopLevelNode }
%struct.GfxNeuralLightGridTopLevelNode = type { i32, i32, i32, i32 }
%"class.Buffer<unsigned int>" = type { i32 }
%"class.StructuredBuffer<GfxNeuralLightGridInternalNode>" = type { %struct.GfxNeuralLightGridInternalNode }
%struct.GfxNeuralLightGridInternalNode = type { <2 x i32>, <2 x i32> }
%"class.Buffer<vector<float, 4> >" = type { <4 x float> }
%"class.RWBuffer<vector<float, 3> >" = type { <3 x float> }
%"class.RWBuffer<float>" = type { float }
%VolumetricLightGridConstants = type { i32, i32, i32, i32, i32, i32, i32, i32 }
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

define void @cs_scene_luma_sh_sample_multi_lightgrid_aniso() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %21 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %22 = alloca [8 x float], align 4
  %23 = alloca [8 x i32], align 4
  %24 = alloca [8 x float], align 4
  %25 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %26 = extractvalue %dx.types.CBufRet.i32 %25, 0
  %27 = add i32 %26, 3
  %28 = lshr i32 %27, 2
  %29 = uitofp i32 %20 to float
  %30 = uitofp i32 %21 to float
  %31 = fadd fast float %29, 5.000000e-01
  %32 = fadd fast float %30, 5.000000e-01
  %33 = fmul fast float %31, 4.000000e+00
  %34 = fmul fast float %32, 4.000000e+00
  %35 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %36 = extractvalue %dx.types.CBufRet.f32 %35, 0
  %37 = extractvalue %dx.types.CBufRet.f32 %35, 1
  %38 = fmul fast float %33, %36
  %39 = fmul fast float %34, %37
  %40 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %16, float %38, float %39, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %41 = extractvalue %dx.types.ResRet.f32 %40, 0
  %42 = fcmp fast ogt float %41, -1.000000e+00
  %43 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %44 = extractvalue %dx.types.CBufRet.f32 %43, 1
  %45 = select i1 %42, float %44, float 1.000000e+00
  %46 = fadd fast float %41, 1.000000e+00
  %47 = fmul fast float %45, %46
  %48 = call float @dx.op.unary.f32(i32 6, float %47)  ; FAbs(value)
  %49 = fmul fast float %48, 0x3FEFFC0000000000
  %50 = fadd fast float %49, -1.600000e+01
  %51 = call float @dx.op.binary.f32(i32 35, float %50, float 0.000000e+00)  ; FMax(a,b)
  %52 = fmul fast float %38, 2.000000e+00
  %53 = fmul fast float %39, 2.000000e+00
  %54 = fsub fast float 1.000000e+00, %52
  %55 = fsub fast float 1.000000e+00, %53
  %56 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %57 = extractvalue %dx.types.CBufRet.f32 %56, 0
  %58 = extractvalue %dx.types.CBufRet.f32 %56, 1
  %59 = extractvalue %dx.types.CBufRet.f32 %56, 2
  %60 = fmul fast float %57, %54
  %61 = fmul fast float %58, %54
  %62 = fmul fast float %59, %54
  %63 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %64 = extractvalue %dx.types.CBufRet.f32 %63, 0
  %65 = extractvalue %dx.types.CBufRet.f32 %63, 1
  %66 = extractvalue %dx.types.CBufRet.f32 %63, 2
  %67 = fmul fast float %64, %55
  %68 = fmul fast float %65, %55
  %69 = fmul fast float %66, %55
  %70 = fadd fast float %67, %60
  %71 = fadd fast float %68, %61
  %72 = fadd fast float %69, %62
  %73 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %74 = extractvalue %dx.types.CBufRet.f32 %73, 0
  %75 = extractvalue %dx.types.CBufRet.f32 %73, 1
  %76 = extractvalue %dx.types.CBufRet.f32 %73, 2
  %77 = fadd fast float %70, %74
  %78 = fadd fast float %71, %75
  %79 = fadd fast float %72, %76
  %80 = fmul fast float %77, %51
  %81 = fmul fast float %78, %51
  %82 = fmul fast float %79, %51
  %83 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %84 = extractvalue %dx.types.CBufRet.f32 %83, 0
  %85 = extractvalue %dx.types.CBufRet.f32 %83, 1
  %86 = extractvalue %dx.types.CBufRet.f32 %83, 2
  %87 = fadd fast float %80, %84
  %88 = fadd fast float %81, %85
  %89 = fadd fast float %82, %86
  %90 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %91 = extractvalue %dx.types.CBufRet.i32 %90, 0
  %92 = icmp sgt i32 %91, -1
  br i1 %92, label %93, label %107, !dx.controlflow.hints !35

; <label>:93                                      ; preds = %0
  %94 = extractvalue %dx.types.CBufRet.i32 %25, 1
  %95 = add i32 %94, 3
  %96 = lshr i32 %95, 2
  %97 = call i32 @dx.op.threadId.i32(i32 93, i32 2)  ; ThreadId(component)
  %98 = mul i32 %28, %96
  %99 = shl i32 %98, 1
  %100 = add i32 %97, %91
  %101 = mul i32 %100, %98
  %102 = mul i32 %28, %21
  %103 = add i32 %102, %20
  %104 = add i32 %103, %101
  %105 = mul i32 %99, %91
  %106 = add i32 %103, %105
  br label %107

; <label>:107                                     ; preds = %93, %0
  %108 = phi i32 [ %106, %93 ], [ -1, %0 ]
  %109 = phi i32 [ %104, %93 ], [ -1, %0 ]
  %110 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %111 = extractvalue %dx.types.CBufRet.i32 %110, 3
  br label %112

; <label>:112                                     ; preds = %128, %107
  %113 = phi i32 [ 0, %107 ], [ %129, %128 ]
  %114 = shl i32 %113, 4
  %115 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %111, i32 %114)  ; BufferLoad(srv,index,wot)
  %116 = extractvalue %dx.types.ResRet.f32 %115, 0
  %117 = extractvalue %dx.types.ResRet.f32 %115, 1
  %118 = call float @dx.op.dot2.f32(i32 54, float %116, float %117, float %116, float %117)  ; Dot2(ax,ay,bx,by)
  %119 = fsub fast float 1.000000e+00, %118
  %120 = call float @dx.op.unary.f32(i32 7, float %119)  ; Saturate(value)
  %121 = call float @dx.op.unary.f32(i32 24, float %120)  ; Sqrt(value)
  %122 = call float @dx.op.dot3.f32(i32 55, float %87, float %88, float %89, float %116, float %117, float %121)  ; Dot3(ax,ay,az,bx,by,bz)
  %123 = extractvalue %dx.types.ResRet.f32 %115, 2
  %124 = fcmp fast ole float %122, %123
  %125 = extractvalue %dx.types.ResRet.f32 %115, 3
  %126 = fcmp fast oge float %122, %125
  %127 = or i1 %124, %126
  br i1 %127, label %131, label %128, !dx.controlflow.hints !36

; <label>:128                                     ; preds = %112
  %129 = add nuw nsw i32 %113, 1
  %130 = icmp slt i32 %129, 7
  br i1 %130, label %112, label %131

; <label>:131                                     ; preds = %128, %112
  %132 = phi i1 [ false, %112 ], [ true, %128 ]
  br i1 %132, label %133, label %701, !dx.controlflow.hints !37

; <label>:133                                     ; preds = %131
  %134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %135 = extractvalue %dx.types.CBufRet.f32 %134, 0
  %136 = extractvalue %dx.types.CBufRet.f32 %134, 1
  %137 = extractvalue %dx.types.CBufRet.f32 %134, 2
  %138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %139 = extractvalue %dx.types.CBufRet.f32 %138, 0
  %140 = extractvalue %dx.types.CBufRet.f32 %138, 1
  %141 = extractvalue %dx.types.CBufRet.f32 %138, 2
  %142 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %143 = extractvalue %dx.types.CBufRet.i32 %142, 1
  %144 = fsub fast float %87, %135
  %145 = fsub fast float %88, %136
  %146 = fsub fast float %89, %137
  %147 = fmul fast float %144, %139
  %148 = fmul fast float %145, %140
  %149 = fmul fast float %146, %141
  %150 = fcmp fast ole float %147, 0.000000e+00
  %151 = fcmp fast ole float %148, 0.000000e+00
  %152 = fcmp fast ole float %149, 0.000000e+00
  %153 = or i1 %150, %151
  %154 = or i1 %152, %153
  %155 = fcmp fast oge float %147, 1.000000e+00
  %156 = fcmp fast oge float %148, 1.000000e+00
  %157 = fcmp fast oge float %149, 1.000000e+00
  %158 = or i1 %155, %156
  %159 = or i1 %157, %158
  %160 = or i1 %154, %159
  br i1 %160, label %676, label %161, !dx.controlflow.hints !38

; <label>:161                                     ; preds = %133
  %162 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %163 = extractvalue %dx.types.CBufRet.i32 %162, 0
  %164 = fptosi float %144 to i32
  %165 = fptosi float %145 to i32
  %166 = fptosi float %146 to i32
  %167 = and i32 %143, 31
  %168 = ashr i32 %164, %167
  %169 = ashr i32 %165, %167
  %170 = ashr i32 %166, %167
  %171 = mul i32 %163, %169
  %172 = add nsw i32 %171, %168
  %173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %172, i32 0)  ; BufferLoad(srv,index,wot)
  %174 = extractvalue %dx.types.ResRet.i32 %173, 0
  %175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %172, i32 4)  ; BufferLoad(srv,index,wot)
  %176 = extractvalue %dx.types.ResRet.i32 %175, 0
  %177 = icmp slt i32 %170, %174
  %178 = icmp sgt i32 %170, %176
  %179 = or i1 %177, %178
  br i1 %179, label %676, label %180, !dx.controlflow.hints !39

; <label>:180                                     ; preds = %161
  %181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %172, i32 8)  ; BufferLoad(srv,index,wot)
  %182 = extractvalue %dx.types.ResRet.i32 %181, 0
  %183 = sub i32 %170, %174
  %184 = add nsw i32 %183, %182
  %185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %184, i32 undef)  ; BufferLoad(srv,index,wot)
  %186 = extractvalue %dx.types.ResRet.i32 %185, 0
  %187 = icmp eq i32 %186, -1
  br i1 %187, label %676, label %188, !dx.controlflow.hints !40

; <label>:188                                     ; preds = %180
  %189 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i32 0, i32 0
  store i32 -1, i32* %189, align 4, !tbaa !41, !noalias !45
  %190 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i32 0, i32 1
  store i32 -1, i32* %190, align 4, !tbaa !41, !noalias !45
  %191 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i32 0, i32 2
  store i32 -1, i32* %191, align 4, !tbaa !41, !noalias !45
  %192 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i32 0, i32 3
  store i32 -1, i32* %192, align 4, !tbaa !41, !noalias !45
  %193 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i32 0, i32 4
  store i32 -1, i32* %193, align 4, !tbaa !41, !noalias !45
  %194 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i32 0, i32 5
  store i32 -1, i32* %194, align 4, !tbaa !41, !noalias !45
  %195 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i32 0, i32 6
  store i32 -1, i32* %195, align 4, !tbaa !41, !noalias !56
  %196 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i32 0, i32 7
  store i32 -1, i32* %196, align 4, !tbaa !41, !noalias !56
  br label %197

; <label>:197                                     ; preds = %301, %188
  %198 = phi i32 [ -1, %188 ], [ %298, %301 ]
  %199 = phi i32 [ -1, %188 ], [ %293, %301 ]
  %200 = phi i32 [ -1, %188 ], [ %286, %301 ]
  %201 = phi i32 [ -1, %188 ], [ %281, %301 ]
  %202 = phi i32 [ -1, %188 ], [ %272, %301 ]
  %203 = phi i32 [ -1, %188 ], [ %267, %301 ]
  %204 = phi i32 [ -1, %188 ], [ %259, %301 ]
  %205 = phi i32 [ -1, %188 ], [ %252, %301 ]
  %206 = phi i32 [ %186, %188 ], [ %321, %301 ]
  %207 = phi i32 [ %143, %188 ], [ %208, %301 ]
  %208 = add nsw i32 %207, -2
  %209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %206, i32 undef)  ; BufferLoad(srv,index,wot)
  %210 = extractvalue %dx.types.ResRet.i32 %209, 0
  %211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %206, i32 undef)  ; BufferLoad(srv,index,wot)
  %212 = extractvalue %dx.types.ResRet.i32 %211, 0
  %213 = and i32 %210, 31
  %214 = shl i32 1, %213
  %215 = add i32 %214, 1
  %216 = and i32 %208, 31
  %217 = ashr i32 %164, %216
  %218 = ashr i32 %165, %216
  %219 = ashr i32 %166, %216
  %220 = and i32 %217, 3
  %221 = and i32 %218, 3
  %222 = and i32 %219, 3
  br label %223

; <label>:223                                     ; preds = %223, %197
  %224 = phi i32 [ %198, %197 ], [ %298, %223 ]
  %225 = phi i32 [ %199, %197 ], [ %293, %223 ]
  %226 = phi i32 [ %200, %197 ], [ %286, %223 ]
  %227 = phi i32 [ %201, %197 ], [ %281, %223 ]
  %228 = phi i32 [ %202, %197 ], [ %272, %223 ]
  %229 = phi i32 [ %203, %197 ], [ %267, %223 ]
  %230 = phi i32 [ %204, %197 ], [ %259, %223 ]
  %231 = phi i32 [ %205, %197 ], [ %252, %223 ]
  %232 = phi i32 [ 0, %197 ], [ %299, %223 ]
  %233 = sub i32 2, %232
  %234 = and i32 %233, 31
  %235 = lshr i32 %220, %234
  %236 = lshr i32 %221, %234
  %237 = lshr i32 %222, %234
  %238 = sub i32 %210, %232
  %239 = and i32 %238, 31
  %240 = shl i32 %235, %239
  %241 = shl i32 %236, %239
  %242 = shl i32 %237, %239
  %243 = shl i32 1, %239
  %244 = mul i32 %242, %215
  %245 = add i32 %244, %241
  %246 = mul i32 %245, %215
  %247 = add i32 %240, %212
  %248 = add i32 %247, %246
  %249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %248, i32 undef)  ; BufferLoad(srv,index,wot)
  %250 = extractvalue %dx.types.ResRet.i32 %249, 0
  %251 = icmp ne i32 %250, -1
  %252 = select i1 %251, i32 %250, i32 %231
  store i32 %252, i32* %189, align 4, !tbaa !41, !noalias !45
  %253 = add i32 %243, %212
  %254 = add i32 %253, %240
  %255 = add i32 %254, %246
  %256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %255, i32 undef)  ; BufferLoad(srv,index,wot)
  %257 = extractvalue %dx.types.ResRet.i32 %256, 0
  %258 = icmp ne i32 %257, -1
  %259 = select i1 %258, i32 %257, i32 %230
  store i32 %259, i32* %190, align 4, !tbaa !41, !noalias !45
  %260 = add i32 %241, %243
  %261 = add i32 %260, %244
  %262 = mul i32 %261, %215
  %263 = add i32 %247, %262
  %264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %263, i32 undef)  ; BufferLoad(srv,index,wot)
  %265 = extractvalue %dx.types.ResRet.i32 %264, 0
  %266 = icmp ne i32 %265, -1
  %267 = select i1 %266, i32 %265, i32 %229
  store i32 %267, i32* %191, align 4, !tbaa !41, !noalias !45
  %268 = add i32 %254, %262
  %269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %268, i32 undef)  ; BufferLoad(srv,index,wot)
  %270 = extractvalue %dx.types.ResRet.i32 %269, 0
  %271 = icmp ne i32 %270, -1
  %272 = select i1 %271, i32 %270, i32 %228
  store i32 %272, i32* %192, align 4, !tbaa !41, !noalias !45
  %273 = add i32 %242, %243
  %274 = mul i32 %273, %215
  %275 = add i32 %274, %241
  %276 = mul i32 %275, %215
  %277 = add i32 %247, %276
  %278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %277, i32 undef)  ; BufferLoad(srv,index,wot)
  %279 = extractvalue %dx.types.ResRet.i32 %278, 0
  %280 = icmp ne i32 %279, -1
  %281 = select i1 %280, i32 %279, i32 %227
  store i32 %281, i32* %193, align 4, !tbaa !41, !noalias !45
  %282 = add i32 %254, %276
  %283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %282, i32 undef)  ; BufferLoad(srv,index,wot)
  %284 = extractvalue %dx.types.ResRet.i32 %283, 0
  %285 = icmp ne i32 %284, -1
  %286 = select i1 %285, i32 %284, i32 %226
  store i32 %286, i32* %194, align 4, !tbaa !41, !noalias !45
  %287 = add i32 %260, %274
  %288 = mul i32 %287, %215
  %289 = add i32 %247, %288
  %290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %289, i32 undef)  ; BufferLoad(srv,index,wot)
  %291 = extractvalue %dx.types.ResRet.i32 %290, 0
  %292 = icmp ne i32 %291, -1
  %293 = select i1 %292, i32 %291, i32 %225
  store i32 %293, i32* %195, align 4, !tbaa !41, !noalias !45
  %294 = add i32 %254, %288
  %295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %294, i32 undef)  ; BufferLoad(srv,index,wot)
  %296 = extractvalue %dx.types.ResRet.i32 %295, 0
  %297 = icmp ne i32 %296, -1
  %298 = select i1 %297, i32 %296, i32 %224
  store i32 %298, i32* %196, align 4, !tbaa !41, !noalias !45
  %299 = add i32 %232, 1
  %300 = icmp ugt i32 %299, %210
  br i1 %300, label %301, label %223

; <label>:301                                     ; preds = %223
  %302 = shl nuw nsw i32 %222, 4
  %303 = shl nuw nsw i32 %221, 2
  %304 = lshr i32 %222, 1
  %305 = and i32 %302, 16
  %306 = or i32 %303, %220
  %307 = or i32 %306, %305
  %308 = shl i32 1, %307
  %309 = shl nuw nsw i32 %304, 2
  %310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %206, i32 %309)  ; BufferLoad(srv,index,wot)
  %311 = extractvalue %dx.types.ResRet.i32 %310, 0
  %312 = and i32 %311, %308
  %313 = icmp eq i32 %312, 0
  %314 = add i32 %308, -1
  %315 = and i32 %311, %314
  %316 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %315)  ; Countbits(value)
  %317 = or i32 %309, 8
  %318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %206, i32 %317)  ; BufferLoad(srv,index,wot)
  %319 = extractvalue %dx.types.ResRet.i32 %318, 0
  %320 = add i32 %319, %316
  %321 = select i1 %313, i32 -1, i32 %320
  %322 = icmp eq i32 %321, -1
  br i1 %322, label %323, label %197

; <label>:323                                     ; preds = %301
  br label %324

; <label>:324                                     ; preds = %610, %323
  %325 = phi i32 [ %612, %610 ], [ %252, %323 ]
  %326 = phi float [ %607, %610 ], [ 0.000000e+00, %323 ]
  %327 = phi i32 [ %608, %610 ], [ 0, %323 ]
  %328 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %329 = extractvalue %dx.types.ResRet.f32 %328, 0
  %330 = extractvalue %dx.types.ResRet.f32 %328, 1
  %331 = extractvalue %dx.types.ResRet.f32 %328, 2
  %332 = extractvalue %dx.types.ResRet.f32 %328, 3
  %333 = fsub fast float %87, %329
  %334 = fsub fast float %88, %330
  %335 = fsub fast float %89, %331
  %336 = fmul fast float %333, %332
  %337 = fmul fast float %334, %332
  %338 = fmul fast float %335, %332
  %339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %340 = extractvalue %dx.types.ResRet.i32 %339, 0
  %341 = call float @dx.op.unary.f32(i32 6, float %336)  ; FAbs(value)
  %342 = call float @dx.op.unary.f32(i32 6, float %337)  ; FAbs(value)
  %343 = fsub fast float 1.000000e+00, %341
  %344 = fsub fast float 1.000000e+00, %342
  %345 = call float @dx.op.unary.f32(i32 7, float %343)  ; Saturate(value)
  %346 = call float @dx.op.unary.f32(i32 7, float %344)  ; Saturate(value)
  %347 = fmul fast float %346, %345
  %348 = mul i32 %340, 29
  %349 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %348, i32 undef)  ; BufferLoad(srv,index,wot)
  %350 = extractvalue %dx.types.ResRet.f32 %349, 0
  %351 = extractvalue %dx.types.ResRet.f32 %349, 1
  %352 = extractvalue %dx.types.ResRet.f32 %349, 2
  %353 = extractvalue %dx.types.ResRet.f32 %349, 3
  %354 = add i32 %348, 1
  %355 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %354, i32 undef)  ; BufferLoad(srv,index,wot)
  %356 = extractvalue %dx.types.ResRet.f32 %355, 0
  %357 = extractvalue %dx.types.ResRet.f32 %355, 1
  %358 = extractvalue %dx.types.ResRet.f32 %355, 2
  %359 = extractvalue %dx.types.ResRet.f32 %355, 3
  %360 = add i32 %348, 2
  %361 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %360, i32 undef)  ; BufferLoad(srv,index,wot)
  %362 = extractvalue %dx.types.ResRet.f32 %361, 0
  %363 = extractvalue %dx.types.ResRet.f32 %361, 1
  %364 = extractvalue %dx.types.ResRet.f32 %361, 2
  %365 = extractvalue %dx.types.ResRet.f32 %361, 3
  %366 = add i32 %348, 3
  %367 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %366, i32 undef)  ; BufferLoad(srv,index,wot)
  %368 = extractvalue %dx.types.ResRet.f32 %367, 0
  %369 = extractvalue %dx.types.ResRet.f32 %367, 1
  %370 = extractvalue %dx.types.ResRet.f32 %367, 2
  %371 = extractvalue %dx.types.ResRet.f32 %367, 3
  %372 = add i32 %348, 4
  %373 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %372, i32 undef)  ; BufferLoad(srv,index,wot)
  %374 = extractvalue %dx.types.ResRet.f32 %373, 0
  %375 = extractvalue %dx.types.ResRet.f32 %373, 1
  %376 = extractvalue %dx.types.ResRet.f32 %373, 2
  %377 = extractvalue %dx.types.ResRet.f32 %373, 3
  %378 = add i32 %348, 5
  %379 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %378, i32 undef)  ; BufferLoad(srv,index,wot)
  %380 = extractvalue %dx.types.ResRet.f32 %379, 0
  %381 = extractvalue %dx.types.ResRet.f32 %379, 1
  %382 = extractvalue %dx.types.ResRet.f32 %379, 2
  %383 = extractvalue %dx.types.ResRet.f32 %379, 3
  %384 = add i32 %348, 6
  %385 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %384, i32 undef)  ; BufferLoad(srv,index,wot)
  %386 = extractvalue %dx.types.ResRet.f32 %385, 0
  %387 = extractvalue %dx.types.ResRet.f32 %385, 1
  %388 = extractvalue %dx.types.ResRet.f32 %385, 2
  %389 = extractvalue %dx.types.ResRet.f32 %385, 3
  %390 = add i32 %348, 7
  %391 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %390, i32 undef)  ; BufferLoad(srv,index,wot)
  %392 = extractvalue %dx.types.ResRet.f32 %391, 0
  %393 = extractvalue %dx.types.ResRet.f32 %391, 1
  %394 = extractvalue %dx.types.ResRet.f32 %391, 2
  %395 = extractvalue %dx.types.ResRet.f32 %391, 3
  %396 = fmul fast float %350, %336
  %397 = fmul fast float %362, %337
  %398 = fadd fast float %397, %396
  %399 = fmul fast float %374, %338
  %400 = fadd fast float %398, %399
  %401 = fmul fast float %351, %336
  %402 = fmul fast float %363, %337
  %403 = fadd fast float %402, %401
  %404 = fmul fast float %375, %338
  %405 = fadd fast float %403, %404
  %406 = fmul fast float %352, %336
  %407 = fmul fast float %364, %337
  %408 = fadd fast float %407, %406
  %409 = fmul fast float %376, %338
  %410 = fadd fast float %408, %409
  %411 = fmul fast float %353, %336
  %412 = fmul fast float %365, %337
  %413 = fadd fast float %412, %411
  %414 = fmul fast float %377, %338
  %415 = fadd fast float %413, %414
  %416 = fmul fast float %356, %336
  %417 = fmul fast float %368, %337
  %418 = fadd fast float %417, %416
  %419 = fmul fast float %380, %338
  %420 = fadd fast float %418, %419
  %421 = fmul fast float %357, %336
  %422 = fmul fast float %369, %337
  %423 = fadd fast float %422, %421
  %424 = fmul fast float %381, %338
  %425 = fadd fast float %423, %424
  %426 = fmul fast float %358, %336
  %427 = fmul fast float %370, %337
  %428 = fadd fast float %427, %426
  %429 = fmul fast float %382, %338
  %430 = fadd fast float %428, %429
  %431 = fmul fast float %359, %336
  %432 = fmul fast float %371, %337
  %433 = fadd fast float %432, %431
  %434 = fmul fast float %383, %338
  %435 = fadd fast float %433, %434
  %436 = fadd fast float %400, %386
  %437 = fadd fast float %405, %387
  %438 = fadd fast float %410, %388
  %439 = fadd fast float %415, %389
  %440 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %436)  ; FMax(a,b)
  %441 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %437)  ; FMax(a,b)
  %442 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %438)  ; FMax(a,b)
  %443 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %439)  ; FMax(a,b)
  %444 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %436)  ; FMin(a,b)
  %445 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %437)  ; FMin(a,b)
  %446 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %438)  ; FMin(a,b)
  %447 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %439)  ; FMin(a,b)
  %448 = fmul fast float %444, 0x3F847AE140000000
  %449 = fmul fast float %445, 0x3F847AE140000000
  %450 = fmul fast float %446, 0x3F847AE140000000
  %451 = fmul fast float %447, 0x3F847AE140000000
  %452 = fadd fast float %448, %440
  %453 = fadd fast float %449, %441
  %454 = fadd fast float %450, %442
  %455 = fadd fast float %451, %443
  %456 = fadd fast float %420, %392
  %457 = fadd fast float %425, %393
  %458 = fadd fast float %430, %394
  %459 = fadd fast float %435, %395
  %460 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %456)  ; FMax(a,b)
  %461 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %457)  ; FMax(a,b)
  %462 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %458)  ; FMax(a,b)
  %463 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %459)  ; FMax(a,b)
  %464 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %456)  ; FMin(a,b)
  %465 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %457)  ; FMin(a,b)
  %466 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %458)  ; FMin(a,b)
  %467 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %459)  ; FMin(a,b)
  %468 = fmul fast float %464, 0x3F847AE140000000
  %469 = fmul fast float %465, 0x3F847AE140000000
  %470 = fmul fast float %466, 0x3F847AE140000000
  %471 = fmul fast float %467, 0x3F847AE140000000
  %472 = fadd fast float %468, %460
  %473 = fadd fast float %469, %461
  %474 = fadd fast float %470, %462
  %475 = fadd fast float %471, %463
  br label %476

; <label>:476                                     ; preds = %476, %324
  %477 = phi i32 [ 0, %324 ], [ %497, %476 ]
  %478 = add i32 %348, 8
  %479 = shl i32 %477, 1
  %480 = add i32 %478, %479
  %481 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %480, i32 undef)  ; BufferLoad(srv,index,wot)
  %482 = extractvalue %dx.types.ResRet.f32 %481, 0
  %483 = extractvalue %dx.types.ResRet.f32 %481, 1
  %484 = extractvalue %dx.types.ResRet.f32 %481, 2
  %485 = extractvalue %dx.types.ResRet.f32 %481, 3
  %486 = add i32 %348, 9
  %487 = add i32 %486, %479
  %488 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %487, i32 undef)  ; BufferLoad(srv,index,wot)
  %489 = extractvalue %dx.types.ResRet.f32 %488, 0
  %490 = extractvalue %dx.types.ResRet.f32 %488, 1
  %491 = extractvalue %dx.types.ResRet.f32 %488, 2
  %492 = extractvalue %dx.types.ResRet.f32 %488, 3
  %493 = call float @dx.op.dot4.f32(i32 56, float %482, float %483, float %484, float %485, float %452, float %453, float %454, float %455)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %494 = call float @dx.op.dot4.f32(i32 56, float %489, float %490, float %491, float %492, float %472, float %473, float %474, float %475)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %495 = fadd fast float %494, %493
  %496 = getelementptr inbounds [8 x float], [8 x float]* %22, i32 0, i32 %477
  store float %495, float* %496, align 4, !tbaa !57, !noalias !45
  %497 = add nuw nsw i32 %477, 1
  %498 = icmp eq i32 %497, 8
  br i1 %498, label %499, label %476

; <label>:499                                     ; preds = %476
  %500 = call float @dx.op.unary.f32(i32 6, float %338)  ; FAbs(value)
  %501 = fsub fast float 1.000000e+00, %500
  %502 = call float @dx.op.unary.f32(i32 7, float %501)  ; Saturate(value)
  %503 = fmul fast float %347, %502
  %504 = add i32 %348, 24
  %505 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %504, i32 undef)  ; BufferLoad(srv,index,wot)
  %506 = extractvalue %dx.types.ResRet.f32 %505, 0
  %507 = extractvalue %dx.types.ResRet.f32 %505, 1
  %508 = extractvalue %dx.types.ResRet.f32 %505, 2
  %509 = extractvalue %dx.types.ResRet.f32 %505, 3
  %510 = add i32 %348, 25
  %511 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %510, i32 undef)  ; BufferLoad(srv,index,wot)
  %512 = extractvalue %dx.types.ResRet.f32 %511, 0
  %513 = extractvalue %dx.types.ResRet.f32 %511, 1
  %514 = extractvalue %dx.types.ResRet.f32 %511, 2
  %515 = extractvalue %dx.types.ResRet.f32 %511, 3
  %516 = getelementptr inbounds [8 x float], [8 x float]* %22, i32 0, i32 0
  %517 = load float, float* %516, align 4, !tbaa !57, !noalias !45
  %518 = fadd fast float %517, %506
  %519 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %518)  ; FMax(a,b)
  %520 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %518)  ; FMin(a,b)
  %521 = fmul fast float %520, 0x3F847AE140000000
  %522 = fadd fast float %521, %519
  store float %522, float* %516, align 4, !tbaa !57, !noalias !45
  %523 = getelementptr inbounds [8 x float], [8 x float]* %22, i32 0, i32 1
  %524 = load float, float* %523, align 4, !tbaa !57, !noalias !45
  %525 = fadd fast float %524, %507
  %526 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %525)  ; FMax(a,b)
  %527 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %525)  ; FMin(a,b)
  %528 = fmul fast float %527, 0x3F847AE140000000
  %529 = fadd fast float %528, %526
  store float %529, float* %523, align 4, !tbaa !57, !noalias !45
  %530 = getelementptr inbounds [8 x float], [8 x float]* %22, i32 0, i32 2
  %531 = load float, float* %530, align 4, !tbaa !57, !noalias !45
  %532 = fadd fast float %531, %508
  %533 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %532)  ; FMax(a,b)
  %534 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %532)  ; FMin(a,b)
  %535 = fmul fast float %534, 0x3F847AE140000000
  %536 = fadd fast float %535, %533
  store float %536, float* %530, align 4, !tbaa !57, !noalias !45
  %537 = getelementptr inbounds [8 x float], [8 x float]* %22, i32 0, i32 3
  %538 = load float, float* %537, align 4, !tbaa !57, !noalias !45
  %539 = fadd fast float %538, %509
  %540 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %539)  ; FMax(a,b)
  %541 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %539)  ; FMin(a,b)
  %542 = fmul fast float %541, 0x3F847AE140000000
  %543 = fadd fast float %542, %540
  store float %543, float* %537, align 4, !tbaa !57, !noalias !45
  %544 = getelementptr inbounds [8 x float], [8 x float]* %22, i32 0, i32 4
  %545 = load float, float* %544, align 4, !tbaa !57, !noalias !45
  %546 = fadd fast float %545, %512
  %547 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %546)  ; FMax(a,b)
  %548 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %546)  ; FMin(a,b)
  %549 = fmul fast float %548, 0x3F847AE140000000
  %550 = fadd fast float %549, %547
  store float %550, float* %544, align 4, !tbaa !57, !noalias !45
  %551 = getelementptr inbounds [8 x float], [8 x float]* %22, i32 0, i32 5
  %552 = load float, float* %551, align 4, !tbaa !57, !noalias !45
  %553 = fadd fast float %552, %513
  %554 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %553)  ; FMax(a,b)
  %555 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %553)  ; FMin(a,b)
  %556 = fmul fast float %555, 0x3F847AE140000000
  %557 = fadd fast float %556, %554
  store float %557, float* %551, align 4, !tbaa !57, !noalias !45
  %558 = getelementptr inbounds [8 x float], [8 x float]* %22, i32 0, i32 6
  %559 = load float, float* %558, align 4, !tbaa !57, !noalias !45
  %560 = fadd fast float %559, %514
  %561 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %560)  ; FMax(a,b)
  %562 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %560)  ; FMin(a,b)
  %563 = fmul fast float %562, 0x3F847AE140000000
  %564 = fadd fast float %563, %561
  store float %564, float* %558, align 4, !tbaa !57, !noalias !45
  %565 = getelementptr inbounds [8 x float], [8 x float]* %22, i32 0, i32 7
  %566 = load float, float* %565, align 4, !tbaa !57, !noalias !45
  %567 = fadd fast float %566, %515
  %568 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %567)  ; FMax(a,b)
  %569 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %567)  ; FMin(a,b)
  %570 = fmul fast float %569, 0x3F847AE140000000
  %571 = fadd fast float %570, %568
  store float %571, float* %565, align 4, !tbaa !57, !noalias !45
  %572 = add i32 %348, 26
  %573 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %572, i32 undef)  ; BufferLoad(srv,index,wot)
  %574 = extractvalue %dx.types.ResRet.f32 %573, 0
  %575 = extractvalue %dx.types.ResRet.f32 %573, 1
  %576 = extractvalue %dx.types.ResRet.f32 %573, 2
  %577 = extractvalue %dx.types.ResRet.f32 %573, 3
  %578 = add i32 %348, 27
  %579 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %578, i32 undef)  ; BufferLoad(srv,index,wot)
  %580 = extractvalue %dx.types.ResRet.f32 %579, 0
  %581 = extractvalue %dx.types.ResRet.f32 %579, 1
  %582 = extractvalue %dx.types.ResRet.f32 %579, 2
  %583 = extractvalue %dx.types.ResRet.f32 %579, 3
  %584 = fmul fast float %522, %574
  %585 = fmul fast float %529, %575
  %586 = fadd fast float %585, %584
  %587 = fmul fast float %536, %576
  %588 = fadd fast float %586, %587
  %589 = fmul fast float %543, %577
  %590 = fadd fast float %588, %589
  %591 = fmul fast float %550, %580
  %592 = fadd fast float %590, %591
  %593 = fmul fast float %557, %581
  %594 = fadd fast float %592, %593
  %595 = fmul fast float %564, %582
  %596 = fadd fast float %594, %595
  %597 = fmul fast float %571, %583
  %598 = fadd fast float %596, %597
  %599 = add i32 %348, 28
  %600 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %599, i32 undef)  ; BufferLoad(srv,index,wot)
  %601 = extractvalue %dx.types.ResRet.f32 %600, 0
  %602 = fadd fast float %598, %601
  %603 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %602)  ; FMax(a,b)
  %604 = fmul fast float %503, %603
  %605 = call float @dx.op.unary.f32(i32 7, float %604)  ; Saturate(value)
  %606 = getelementptr inbounds [8 x float], [8 x float]* %24, i32 0, i32 %327
  store float %605, float* %606, align 4, !tbaa !57, !noalias !45
  %607 = fadd fast float %605, %326
  %608 = add nuw nsw i32 %327, 1
  %609 = icmp eq i32 %608, 8
  br i1 %609, label %613, label %610

; <label>:610                                     ; preds = %499
  %611 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i32 0, i32 %608
  %612 = load i32, i32* %611, align 4, !tbaa !41, !noalias !45
  br label %324

; <label>:613                                     ; preds = %499
  %614 = fcmp fast ugt float %607, 0x3EE4F8B580000000
  br i1 %614, label %615, label %676, !dx.controlflow.hints !59

; <label>:615                                     ; preds = %613
  %616 = fcmp fast ogt float %607, 0x3EE4F8B580000000
  %617 = fdiv fast float 1.000000e+00, %607
  %618 = select i1 %616, float %617, float 1.000000e+00
  %619 = getelementptr inbounds [8 x float], [8 x float]* %24, i32 0, i32 0
  %620 = load float, float* %619, align 4, !tbaa !57, !noalias !45
  %621 = fmul fast float %620, %618
  store float %621, float* %619, align 4, !tbaa !57, !noalias !45
  %622 = getelementptr inbounds [8 x float], [8 x float]* %24, i32 0, i32 1
  %623 = load float, float* %622, align 4, !tbaa !57, !noalias !45
  %624 = fmul fast float %623, %618
  store float %624, float* %622, align 4, !tbaa !57, !noalias !45
  %625 = getelementptr inbounds [8 x float], [8 x float]* %24, i32 0, i32 2
  %626 = load float, float* %625, align 4, !tbaa !57, !noalias !45
  %627 = fmul fast float %626, %618
  store float %627, float* %625, align 4, !tbaa !57, !noalias !45
  %628 = getelementptr inbounds [8 x float], [8 x float]* %24, i32 0, i32 3
  %629 = load float, float* %628, align 4, !tbaa !57, !noalias !45
  %630 = fmul fast float %629, %618
  store float %630, float* %628, align 4, !tbaa !57, !noalias !45
  %631 = getelementptr inbounds [8 x float], [8 x float]* %24, i32 0, i32 4
  %632 = load float, float* %631, align 4, !tbaa !57, !noalias !45
  %633 = fmul fast float %632, %618
  store float %633, float* %631, align 4, !tbaa !57, !noalias !45
  %634 = getelementptr inbounds [8 x float], [8 x float]* %24, i32 0, i32 5
  %635 = load float, float* %634, align 4, !tbaa !57, !noalias !45
  %636 = fmul fast float %635, %618
  store float %636, float* %634, align 4, !tbaa !57, !noalias !45
  %637 = getelementptr inbounds [8 x float], [8 x float]* %24, i32 0, i32 6
  %638 = load float, float* %637, align 4, !tbaa !57, !noalias !45
  %639 = fmul fast float %638, %618
  store float %639, float* %637, align 4, !tbaa !57, !noalias !45
  %640 = getelementptr inbounds [8 x float], [8 x float]* %24, i32 0, i32 7
  %641 = load float, float* %640, align 4, !tbaa !57, !noalias !45
  %642 = fmul fast float %641, %618
  store float %642, float* %640, align 4, !tbaa !57, !noalias !45
  br label %643

; <label>:643                                     ; preds = %670, %615
  %644 = phi float [ %674, %670 ], [ %621, %615 ]
  %645 = phi i32 [ %672, %670 ], [ %252, %615 ]
  %646 = phi float [ %663, %670 ], [ 0.000000e+00, %615 ]
  %647 = phi float [ %665, %670 ], [ 0.000000e+00, %615 ]
  %648 = phi float [ %667, %670 ], [ 0.000000e+00, %615 ]
  %649 = phi i32 [ %668, %670 ], [ 0, %615 ]
  %650 = shl i32 %645, 5
  %651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %650, i32 undef)  ; BufferLoad(srv,index,wot)
  %652 = extractvalue %dx.types.ResRet.i32 %651, 0
  %653 = shl i32 %652, 4
  %654 = and i32 %653, 32752
  %655 = call float @dx.op.legacyF16ToF32(i32 131, i32 %654)  ; LegacyF16ToF32(value)
  %656 = lshr i32 %652, 7
  %657 = and i32 %656, 32752
  %658 = call float @dx.op.legacyF16ToF32(i32 131, i32 %657)  ; LegacyF16ToF32(value)
  %659 = lshr i32 %652, 22
  %660 = shl nuw nsw i32 %659, 5
  %661 = call float @dx.op.legacyF16ToF32(i32 131, i32 %660)  ; LegacyF16ToF32(value)
  %662 = fmul fast float %655, %644
  %663 = fadd fast float %662, %646
  %664 = fmul fast float %658, %644
  %665 = fadd fast float %664, %647
  %666 = fmul fast float %661, %644
  %667 = fadd fast float %666, %648
  %668 = add nuw nsw i32 %649, 1
  %669 = icmp eq i32 %668, 8
  br i1 %669, label %675, label %670

; <label>:670                                     ; preds = %643
  %671 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i32 0, i32 %668
  %672 = load i32, i32* %671, align 4, !tbaa !41, !noalias !45
  %673 = getelementptr inbounds [8 x float], [8 x float]* %24, i32 0, i32 %668
  %674 = load float, float* %673, align 4, !tbaa !57, !noalias !45
  br label %643

; <label>:675                                     ; preds = %643
  br label %676

; <label>:676                                     ; preds = %675, %613, %180, %161, %133
  %677 = phi float [ 0.000000e+00, %133 ], [ 0.000000e+00, %161 ], [ 0.000000e+00, %180 ], [ 0.000000e+00, %613 ], [ %663, %675 ]
  %678 = phi float [ 0.000000e+00, %133 ], [ 0.000000e+00, %161 ], [ 0.000000e+00, %180 ], [ 0.000000e+00, %613 ], [ %665, %675 ]
  %679 = phi float [ 0.000000e+00, %133 ], [ 0.000000e+00, %161 ], [ 0.000000e+00, %180 ], [ 0.000000e+00, %613 ], [ %667, %675 ]
  %680 = phi i1 [ false, %133 ], [ false, %161 ], [ false, %180 ], [ false, %613 ], [ true, %675 ]
  %681 = phi float [ 1.000000e+00, %133 ], [ 1.000000e+00, %161 ], [ 1.000000e+00, %180 ], [ 0.000000e+00, %613 ], [ 1.000000e+00, %675 ]
  br i1 %680, label %695, label %682, !dx.controlflow.hints !60

; <label>:682                                     ; preds = %676
  %683 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %684 = extractvalue %dx.types.ResRet.i32 %683, 1
  %685 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %686 = extractvalue %dx.types.ResRet.i32 %685, 0
  %687 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %688 = extractvalue %dx.types.ResRet.i32 %687, 0
  %689 = and i32 %688, 65535
  %690 = call float @dx.op.legacyF16ToF32(i32 131, i32 %689)  ; LegacyF16ToF32(value)
  %691 = lshr i32 %686, 16
  %692 = call float @dx.op.legacyF16ToF32(i32 131, i32 %691)  ; LegacyF16ToF32(value)
  %693 = and i32 %684, 65535
  %694 = call float @dx.op.legacyF16ToF32(i32 131, i32 %693)  ; LegacyF16ToF32(value)
  br label %695

; <label>:695                                     ; preds = %682, %676
  %696 = phi float [ %677, %676 ], [ %690, %682 ]
  %697 = phi float [ %679, %676 ], [ %694, %682 ]
  %698 = phi float [ %678, %676 ], [ %692, %682 ]
  %699 = fmul fast float %681, 3.125000e-02
  %700 = select i1 %680, float %681, float %699
  br label %714

; <label>:701                                     ; preds = %131
  %702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %703 = extractvalue %dx.types.ResRet.i32 %702, 1
  %704 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %705 = extractvalue %dx.types.ResRet.i32 %704, 0
  %706 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %707 = extractvalue %dx.types.ResRet.i32 %706, 0
  %708 = and i32 %707, 65535
  %709 = call float @dx.op.legacyF16ToF32(i32 131, i32 %708)  ; LegacyF16ToF32(value)
  %710 = lshr i32 %705, 16
  %711 = call float @dx.op.legacyF16ToF32(i32 131, i32 %710)  ; LegacyF16ToF32(value)
  %712 = and i32 %703, 65535
  %713 = call float @dx.op.legacyF16ToF32(i32 131, i32 %712)  ; LegacyF16ToF32(value)
  br label %714

; <label>:714                                     ; preds = %701, %695
  %715 = phi float [ %709, %701 ], [ %696, %695 ]
  %716 = phi float [ %713, %701 ], [ %697, %695 ]
  %717 = phi float [ %711, %701 ], [ %698, %695 ]
  %718 = phi float [ 3.125000e-02, %701 ], [ %700, %695 ]
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %109, i32 undef, float %718, float %718, float %718, float %718, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %719 = fmul fast float %715, 0x3FD20DD760000000
  %720 = fmul fast float %717, 0x3FD20DD760000000
  %721 = fmul fast float %716, 0x3FD20DD760000000
  %722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %723 = extractvalue %dx.types.CBufRet.f32 %722, 3
  %724 = fmul fast float %719, %723
  %725 = fmul fast float %720, %723
  %726 = fmul fast float %721, %723
  %727 = extractvalue %dx.types.CBufRet.f32 %722, 0
  %728 = fmul fast float %724, %727
  %729 = fmul fast float %725, %727
  %730 = fmul fast float %726, %727
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %2, i32 %108, i32 undef, float %728, float %729, float %730, float %728, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.bufferStore.f32(i32, %dx.types.Handle, i32, i32, float, float, float, float, i8) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

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
!dx.entryPoints = !{!32}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !23, !26, !30}
!5 = !{!6, !8, !9, !11, !13, !15, !16, !17, !18, !19, !20, !21, !22}
!6 = !{i32 0, %"class.Texture2D<float>"* undef, !"", i32 0, i32 19, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 15, i32 1, i32 11, i32 0, null}
!9 = !{i32 2, %"class.StructuredBuffer<GfxGpuLightGridParams>"* undef, !"", i32 0, i32 27, i32 1, i32 12, i32 0, !10}
!10 = !{i32 1, i32 112}
!11 = !{i32 3, %"class.StructuredBuffer<GfxNeuralLightGridTopLevelNode>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i32 0, !12}
!12 = !{i32 1, i32 16}
!13 = !{i32 4, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 10, i32 0, !14}
!14 = !{i32 0, i32 5}
!15 = !{i32 5, %"class.StructuredBuffer<GfxNeuralLightGridInternalNode>"* undef, !"", i32 0, i32 2, i32 1, i32 12, i32 0, !12}
!16 = !{i32 6, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 3, i32 1, i32 10, i32 0, !14}
!17 = !{i32 7, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 4, i32 1, i32 10, i32 0, !14}
!18 = !{i32 8, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 5, i32 1, i32 10, i32 0, !14}
!19 = !{i32 9, %"class.Buffer<vector<float, 4> >"* undef, !"", i32 0, i32 6, i32 1, i32 10, i32 0, !7}
!20 = !{i32 10, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 7, i32 1, i32 10, i32 0, !14}
!21 = !{i32 11, %"class.Buffer<vector<float, 4> >"* undef, !"", i32 0, i32 8, i32 1, i32 10, i32 0, !7}
!22 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 9, i32 1, i32 11, i32 0, null}
!23 = !{!24, !25}
!24 = !{i32 0, %"class.RWBuffer<vector<float, 3> >"* undef, !"", i32 0, i32 3, i32 1, i32 10, i1 false, i1 false, i1 false, !7}
!25 = !{i32 1, %"class.RWBuffer<float>"* undef, !"", i32 0, i32 4, i32 1, i32 10, i1 false, i1 false, i1 false, !7}
!26 = !{!27, !28, !29}
!27 = !{i32 0, %VolumetricLightGridConstants* undef, !"", i32 0, i32 1, i32 1, i32 32, null}
!28 = !{i32 1, %GfxNeuralLightGridSetupConsts* undef, !"", i32 0, i32 4, i32 1, i32 80, null}
!29 = !{i32 2, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!30 = !{!31}
!31 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!32 = !{void ()* @cs_scene_luma_sh_sample_multi_lightgrid_aniso, !"cs_scene_luma_sh_sample_multi_lightgrid_aniso", null, !4, !33}
!33 = !{i32 0, i64 272, i32 4, !34}
!34 = !{i32 8, i32 8, i32 1}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = !{!42, !42, i64 0}
!42 = !{!"int", !43, i64 0}
!43 = !{!"omnipotent char", !44, i64 0}
!44 = !{!"Simple C/C++ TBAA"}
!45 = !{!46, !48, !49, !50, !51, !53, !54, !55}
!46 = distinct !{!46, !47, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z: %probeR"}
!47 = distinct !{!47, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z"}
!48 = distinct !{!48, !47, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z: %probeG"}
!49 = distinct !{!49, !47, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z: %probeB"}
!50 = distinct !{!50, !47, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z: %probeA"}
!51 = distinct !{!51, !52, !"\01?LookupLightingNeuralLG@@YA_NV?$vector@M$02@@USH3Vec@@11AIAM_N@Z: %redSH"}
!52 = distinct !{!52, !"\01?LookupLightingNeuralLG@@YA_NV?$vector@M$02@@USH3Vec@@11AIAM_N@Z"}
!53 = distinct !{!53, !52, !"\01?LookupLightingNeuralLG@@YA_NV?$vector@M$02@@USH3Vec@@11AIAM_N@Z: %greenSH"}
!54 = distinct !{!54, !52, !"\01?LookupLightingNeuralLG@@YA_NV?$vector@M$02@@USH3Vec@@11AIAM_N@Z: %blueSH"}
!55 = distinct !{!55, !52, !"\01?LookupLightingNeuralLG@@YA_NV?$vector@M$02@@USH3Vec@@11AIAM_N@Z: %probeA"}
!56 = !{!46, !48, !49, !50, !55}
!57 = !{!58, !58, i64 0}
!58 = !{!"float", !43, i64 0}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}

