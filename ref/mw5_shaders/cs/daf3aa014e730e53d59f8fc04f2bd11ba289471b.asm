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
; shader hash: 36e44f7e77fbae66d632c17a8ffdafb2
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
;                                   sampler      NA          NA      S1             s2     1
;                                   texture     f32     2darray      T0            t32     1
;                                   texture     f32          3d      T1            t31     1
;                                   texture     f32          2d      T2            t30     1
;                                   texture     f32          2d      T3            t29     1
;                                   texture     u32          2d      T4            t22     1
;                                   texture     f32          3d      T5            t23     1
;                                   texture     f32          2d      T6            t19     1
;                                   texture    byte         r/o      T7            t15     1
;                                   texture  struct         r/o      T8             t0     1
;                                   texture     u32         buf      T9             t1     1
;                                   texture  struct         r/o     T10             t2     1
;                                   texture     u32         buf     T11             t3     1
;                                   texture     u32         buf     T12             t4     1
;                                   texture     u32         buf     T13             t5     1
;                                   texture     f32         buf     T14             t6     1
;                                   texture     u32         buf     T15             t7     1
;                                   texture     f32         buf     T16             t8     1
;                                   texture    byte         r/o     T17             t9     1
;                                       UAV     f32          2d      U0             u5     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 2> >" = type { <2 x float>, %"class.Texture2D<vector<float, 2> >::mips_type" }
%"class.Texture2D<vector<float, 2> >::mips_type" = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 3> >" = type { <3 x float>, %"class.Texture3D<vector<float, 3> >::mips_type" }
%"class.Texture3D<vector<float, 3> >::mips_type" = type { i32 }
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

define void @cs_scene_luma_sh_sample_lightgrid_aniso_skylight() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 23, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 29, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %25 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %26 = alloca [8 x float], align 4
  %27 = alloca [8 x i32], align 4
  %28 = alloca [8 x float], align 4
  %29 = uitofp i32 %24 to float
  %30 = uitofp i32 %25 to float
  %31 = fadd fast float %29, 5.000000e-01
  %32 = fadd fast float %30, 5.000000e-01
  %33 = fmul fast float %31, 4.000000e+00
  %34 = fmul fast float %32, 4.000000e+00
  %35 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %36 = extractvalue %dx.types.CBufRet.f32 %35, 0
  %37 = extractvalue %dx.types.CBufRet.f32 %35, 1
  %38 = fmul fast float %33, %36
  %39 = fmul fast float %34, %37
  %40 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %21, float %38, float %39, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %41 = extractvalue %dx.types.ResRet.f32 %40, 0
  %42 = fcmp fast ogt float %41, -1.000000e+00
  %43 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
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
  %56 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %57 = extractvalue %dx.types.CBufRet.f32 %56, 0
  %58 = extractvalue %dx.types.CBufRet.f32 %56, 1
  %59 = extractvalue %dx.types.CBufRet.f32 %56, 2
  %60 = fmul fast float %57, %54
  %61 = fmul fast float %58, %54
  %62 = fmul fast float %59, %54
  %63 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %64 = extractvalue %dx.types.CBufRet.f32 %63, 0
  %65 = extractvalue %dx.types.CBufRet.f32 %63, 1
  %66 = extractvalue %dx.types.CBufRet.f32 %63, 2
  %67 = fmul fast float %64, %55
  %68 = fmul fast float %65, %55
  %69 = fmul fast float %66, %55
  %70 = fadd fast float %67, %60
  %71 = fadd fast float %68, %61
  %72 = fadd fast float %69, %62
  %73 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %74 = extractvalue %dx.types.CBufRet.f32 %73, 0
  %75 = extractvalue %dx.types.CBufRet.f32 %73, 1
  %76 = extractvalue %dx.types.CBufRet.f32 %73, 2
  %77 = fadd fast float %70, %74
  %78 = fadd fast float %71, %75
  %79 = fadd fast float %72, %76
  %80 = fmul fast float %77, %51
  %81 = fmul fast float %78, %51
  %82 = fmul fast float %79, %51
  %83 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %84 = extractvalue %dx.types.CBufRet.f32 %83, 0
  %85 = extractvalue %dx.types.CBufRet.f32 %83, 1
  %86 = extractvalue %dx.types.CBufRet.f32 %83, 2
  %87 = fadd fast float %80, %84
  %88 = fadd fast float %81, %85
  %89 = fadd fast float %82, %86
  %90 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %91 = extractvalue %dx.types.CBufRet.i32 %90, 0
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %93, label %129, !dx.controlflow.hints !38

; <label>:93                                      ; preds = %0
  %94 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %95 = extractvalue %dx.types.CBufRet.f32 %94, 0
  %96 = extractvalue %dx.types.CBufRet.f32 %94, 1
  %97 = fsub fast float %87, %95
  %98 = fsub fast float %88, %96
  %99 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %100 = extractvalue %dx.types.CBufRet.f32 %99, 0
  %101 = extractvalue %dx.types.CBufRet.f32 %99, 1
  %102 = fmul fast float %97, %100
  %103 = fmul fast float %98, %101
  %104 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %20, float %102, float %103, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %105 = extractvalue %dx.types.ResRet.f32 %104, 0
  %106 = fcmp fast ogt float %105, 0.000000e+00
  %107 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %108 = extractvalue %dx.types.CBufRet.i32 %107, 3
  %109 = icmp ne i32 %108, 0
  %110 = and i1 %106, %109
  br i1 %110, label %111, label %129, !dx.controlflow.hints !39

; <label>:111                                     ; preds = %93
  %112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %113 = extractvalue %dx.types.CBufRet.f32 %112, 0
  %114 = extractvalue %dx.types.CBufRet.f32 %112, 1
  %115 = fsub fast float %87, %113
  %116 = fsub fast float %88, %114
  %117 = fmul fast float %115, %115
  %118 = fmul fast float %116, %116
  %119 = fadd fast float %117, %118
  %120 = uitofp i32 %108 to float
  %121 = fmul fast float %120, %120
  %122 = fcmp fast ogt float %119, %121
  br i1 %122, label %129, label %123, !dx.controlflow.hints !40

; <label>:123                                     ; preds = %111
  %124 = call float @dx.op.unary.f32(i32 24, float %119)  ; Sqrt(value)
  %125 = fsub fast float %120, %124
  %126 = fmul fast float %125, 0x3F75555560000000
  %127 = call float @dx.op.unary.f32(i32 7, float %126)  ; Saturate(value)
  %128 = call float @dx.op.binary.f32(i32 36, float %127, float %105)  ; FMin(a,b)
  br label %129

; <label>:129                                     ; preds = %123, %111, %93, %0
  %130 = phi float [ 1.000000e+00, %0 ], [ %128, %123 ], [ %105, %93 ], [ 0.000000e+00, %111 ]
  %131 = fcmp fast ogt float %130, 0.000000e+00
  br i1 %131, label %132, label %693, !dx.controlflow.hints !41

; <label>:132                                     ; preds = %129
  %133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %134 = extractvalue %dx.types.CBufRet.f32 %133, 0
  %135 = extractvalue %dx.types.CBufRet.f32 %133, 1
  %136 = extractvalue %dx.types.CBufRet.f32 %133, 2
  %137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.f32 %137, 0
  %139 = extractvalue %dx.types.CBufRet.f32 %137, 1
  %140 = extractvalue %dx.types.CBufRet.f32 %137, 2
  %141 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %142 = extractvalue %dx.types.CBufRet.i32 %141, 1
  %143 = fsub fast float %87, %134
  %144 = fsub fast float %88, %135
  %145 = fsub fast float %89, %136
  %146 = fmul fast float %143, %138
  %147 = fmul fast float %144, %139
  %148 = fmul fast float %145, %140
  %149 = fcmp fast ole float %146, 0.000000e+00
  %150 = fcmp fast ole float %147, 0.000000e+00
  %151 = fcmp fast ole float %148, 0.000000e+00
  %152 = or i1 %149, %150
  %153 = or i1 %151, %152
  %154 = fcmp fast oge float %146, 1.000000e+00
  %155 = fcmp fast oge float %147, 1.000000e+00
  %156 = fcmp fast oge float %148, 1.000000e+00
  %157 = or i1 %154, %155
  %158 = or i1 %156, %157
  %159 = or i1 %153, %158
  br i1 %159, label %675, label %160, !dx.controlflow.hints !42

; <label>:160                                     ; preds = %132
  %161 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %162 = extractvalue %dx.types.CBufRet.i32 %161, 0
  %163 = fptosi float %143 to i32
  %164 = fptosi float %144 to i32
  %165 = fptosi float %145 to i32
  %166 = and i32 %142, 31
  %167 = ashr i32 %163, %166
  %168 = ashr i32 %164, %166
  %169 = ashr i32 %165, %166
  %170 = mul i32 %162, %168
  %171 = add nsw i32 %170, %167
  %172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %171, i32 0)  ; BufferLoad(srv,index,wot)
  %173 = extractvalue %dx.types.ResRet.i32 %172, 0
  %174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %171, i32 4)  ; BufferLoad(srv,index,wot)
  %175 = extractvalue %dx.types.ResRet.i32 %174, 0
  %176 = icmp slt i32 %169, %173
  %177 = icmp sgt i32 %169, %175
  %178 = or i1 %176, %177
  br i1 %178, label %675, label %179, !dx.controlflow.hints !43

; <label>:179                                     ; preds = %160
  %180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %171, i32 8)  ; BufferLoad(srv,index,wot)
  %181 = extractvalue %dx.types.ResRet.i32 %180, 0
  %182 = sub i32 %169, %173
  %183 = add nsw i32 %182, %181
  %184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %183, i32 undef)  ; BufferLoad(srv,index,wot)
  %185 = extractvalue %dx.types.ResRet.i32 %184, 0
  %186 = icmp eq i32 %185, -1
  br i1 %186, label %675, label %187, !dx.controlflow.hints !44

; <label>:187                                     ; preds = %179
  %188 = getelementptr inbounds [8 x i32], [8 x i32]* %27, i32 0, i32 0
  store i32 -1, i32* %188, align 4, !tbaa !45, !noalias !49
  %189 = getelementptr inbounds [8 x i32], [8 x i32]* %27, i32 0, i32 1
  store i32 -1, i32* %189, align 4, !tbaa !45, !noalias !49
  %190 = getelementptr inbounds [8 x i32], [8 x i32]* %27, i32 0, i32 2
  store i32 -1, i32* %190, align 4, !tbaa !45, !noalias !49
  %191 = getelementptr inbounds [8 x i32], [8 x i32]* %27, i32 0, i32 3
  store i32 -1, i32* %191, align 4, !tbaa !45, !noalias !49
  %192 = getelementptr inbounds [8 x i32], [8 x i32]* %27, i32 0, i32 4
  store i32 -1, i32* %192, align 4, !tbaa !45, !noalias !49
  %193 = getelementptr inbounds [8 x i32], [8 x i32]* %27, i32 0, i32 5
  store i32 -1, i32* %193, align 4, !tbaa !45, !noalias !49
  %194 = getelementptr inbounds [8 x i32], [8 x i32]* %27, i32 0, i32 6
  store i32 -1, i32* %194, align 4, !tbaa !45, !noalias !60
  %195 = getelementptr inbounds [8 x i32], [8 x i32]* %27, i32 0, i32 7
  store i32 -1, i32* %195, align 4, !tbaa !45, !noalias !60
  br label %196

; <label>:196                                     ; preds = %300, %187
  %197 = phi i32 [ -1, %187 ], [ %297, %300 ]
  %198 = phi i32 [ -1, %187 ], [ %292, %300 ]
  %199 = phi i32 [ -1, %187 ], [ %285, %300 ]
  %200 = phi i32 [ -1, %187 ], [ %280, %300 ]
  %201 = phi i32 [ -1, %187 ], [ %271, %300 ]
  %202 = phi i32 [ -1, %187 ], [ %266, %300 ]
  %203 = phi i32 [ -1, %187 ], [ %258, %300 ]
  %204 = phi i32 [ -1, %187 ], [ %251, %300 ]
  %205 = phi i32 [ %185, %187 ], [ %320, %300 ]
  %206 = phi i32 [ %142, %187 ], [ %207, %300 ]
  %207 = add nsw i32 %206, -2
  %208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %205, i32 undef)  ; BufferLoad(srv,index,wot)
  %209 = extractvalue %dx.types.ResRet.i32 %208, 0
  %210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %205, i32 undef)  ; BufferLoad(srv,index,wot)
  %211 = extractvalue %dx.types.ResRet.i32 %210, 0
  %212 = and i32 %209, 31
  %213 = shl i32 1, %212
  %214 = add i32 %213, 1
  %215 = and i32 %207, 31
  %216 = ashr i32 %163, %215
  %217 = ashr i32 %164, %215
  %218 = ashr i32 %165, %215
  %219 = and i32 %216, 3
  %220 = and i32 %217, 3
  %221 = and i32 %218, 3
  br label %222

; <label>:222                                     ; preds = %222, %196
  %223 = phi i32 [ %197, %196 ], [ %297, %222 ]
  %224 = phi i32 [ %198, %196 ], [ %292, %222 ]
  %225 = phi i32 [ %199, %196 ], [ %285, %222 ]
  %226 = phi i32 [ %200, %196 ], [ %280, %222 ]
  %227 = phi i32 [ %201, %196 ], [ %271, %222 ]
  %228 = phi i32 [ %202, %196 ], [ %266, %222 ]
  %229 = phi i32 [ %203, %196 ], [ %258, %222 ]
  %230 = phi i32 [ %204, %196 ], [ %251, %222 ]
  %231 = phi i32 [ 0, %196 ], [ %298, %222 ]
  %232 = sub i32 2, %231
  %233 = and i32 %232, 31
  %234 = lshr i32 %219, %233
  %235 = lshr i32 %220, %233
  %236 = lshr i32 %221, %233
  %237 = sub i32 %209, %231
  %238 = and i32 %237, 31
  %239 = shl i32 %234, %238
  %240 = shl i32 %235, %238
  %241 = shl i32 %236, %238
  %242 = shl i32 1, %238
  %243 = mul i32 %241, %214
  %244 = add i32 %243, %240
  %245 = mul i32 %244, %214
  %246 = add i32 %239, %211
  %247 = add i32 %246, %245
  %248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %247, i32 undef)  ; BufferLoad(srv,index,wot)
  %249 = extractvalue %dx.types.ResRet.i32 %248, 0
  %250 = icmp ne i32 %249, -1
  %251 = select i1 %250, i32 %249, i32 %230
  store i32 %251, i32* %188, align 4, !tbaa !45, !noalias !49
  %252 = add i32 %242, %211
  %253 = add i32 %252, %239
  %254 = add i32 %253, %245
  %255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %254, i32 undef)  ; BufferLoad(srv,index,wot)
  %256 = extractvalue %dx.types.ResRet.i32 %255, 0
  %257 = icmp ne i32 %256, -1
  %258 = select i1 %257, i32 %256, i32 %229
  store i32 %258, i32* %189, align 4, !tbaa !45, !noalias !49
  %259 = add i32 %240, %242
  %260 = add i32 %259, %243
  %261 = mul i32 %260, %214
  %262 = add i32 %246, %261
  %263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %262, i32 undef)  ; BufferLoad(srv,index,wot)
  %264 = extractvalue %dx.types.ResRet.i32 %263, 0
  %265 = icmp ne i32 %264, -1
  %266 = select i1 %265, i32 %264, i32 %228
  store i32 %266, i32* %190, align 4, !tbaa !45, !noalias !49
  %267 = add i32 %253, %261
  %268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %267, i32 undef)  ; BufferLoad(srv,index,wot)
  %269 = extractvalue %dx.types.ResRet.i32 %268, 0
  %270 = icmp ne i32 %269, -1
  %271 = select i1 %270, i32 %269, i32 %227
  store i32 %271, i32* %191, align 4, !tbaa !45, !noalias !49
  %272 = add i32 %241, %242
  %273 = mul i32 %272, %214
  %274 = add i32 %273, %240
  %275 = mul i32 %274, %214
  %276 = add i32 %246, %275
  %277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %276, i32 undef)  ; BufferLoad(srv,index,wot)
  %278 = extractvalue %dx.types.ResRet.i32 %277, 0
  %279 = icmp ne i32 %278, -1
  %280 = select i1 %279, i32 %278, i32 %226
  store i32 %280, i32* %192, align 4, !tbaa !45, !noalias !49
  %281 = add i32 %253, %275
  %282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %281, i32 undef)  ; BufferLoad(srv,index,wot)
  %283 = extractvalue %dx.types.ResRet.i32 %282, 0
  %284 = icmp ne i32 %283, -1
  %285 = select i1 %284, i32 %283, i32 %225
  store i32 %285, i32* %193, align 4, !tbaa !45, !noalias !49
  %286 = add i32 %259, %273
  %287 = mul i32 %286, %214
  %288 = add i32 %246, %287
  %289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %288, i32 undef)  ; BufferLoad(srv,index,wot)
  %290 = extractvalue %dx.types.ResRet.i32 %289, 0
  %291 = icmp ne i32 %290, -1
  %292 = select i1 %291, i32 %290, i32 %224
  store i32 %292, i32* %194, align 4, !tbaa !45, !noalias !49
  %293 = add i32 %253, %287
  %294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %293, i32 undef)  ; BufferLoad(srv,index,wot)
  %295 = extractvalue %dx.types.ResRet.i32 %294, 0
  %296 = icmp ne i32 %295, -1
  %297 = select i1 %296, i32 %295, i32 %223
  store i32 %297, i32* %195, align 4, !tbaa !45, !noalias !49
  %298 = add i32 %231, 1
  %299 = icmp ugt i32 %298, %209
  br i1 %299, label %300, label %222

; <label>:300                                     ; preds = %222
  %301 = shl nuw nsw i32 %221, 4
  %302 = shl nuw nsw i32 %220, 2
  %303 = lshr i32 %221, 1
  %304 = and i32 %301, 16
  %305 = or i32 %302, %219
  %306 = or i32 %305, %304
  %307 = shl i32 1, %306
  %308 = shl nuw nsw i32 %303, 2
  %309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %205, i32 %308)  ; BufferLoad(srv,index,wot)
  %310 = extractvalue %dx.types.ResRet.i32 %309, 0
  %311 = and i32 %310, %307
  %312 = icmp eq i32 %311, 0
  %313 = add i32 %307, -1
  %314 = and i32 %310, %313
  %315 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %314)  ; Countbits(value)
  %316 = or i32 %308, 8
  %317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %205, i32 %316)  ; BufferLoad(srv,index,wot)
  %318 = extractvalue %dx.types.ResRet.i32 %317, 0
  %319 = add i32 %318, %315
  %320 = select i1 %312, i32 -1, i32 %319
  %321 = icmp eq i32 %320, -1
  br i1 %321, label %322, label %196

; <label>:322                                     ; preds = %300
  br label %323

; <label>:323                                     ; preds = %609, %322
  %324 = phi i32 [ %611, %609 ], [ %251, %322 ]
  %325 = phi float [ %606, %609 ], [ 0.000000e+00, %322 ]
  %326 = phi i32 [ %607, %609 ], [ 0, %322 ]
  %327 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %324, i32 undef)  ; BufferLoad(srv,index,wot)
  %328 = extractvalue %dx.types.ResRet.f32 %327, 0
  %329 = extractvalue %dx.types.ResRet.f32 %327, 1
  %330 = extractvalue %dx.types.ResRet.f32 %327, 2
  %331 = extractvalue %dx.types.ResRet.f32 %327, 3
  %332 = fsub fast float %87, %328
  %333 = fsub fast float %88, %329
  %334 = fsub fast float %89, %330
  %335 = fmul fast float %332, %331
  %336 = fmul fast float %333, %331
  %337 = fmul fast float %334, %331
  %338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %324, i32 undef)  ; BufferLoad(srv,index,wot)
  %339 = extractvalue %dx.types.ResRet.i32 %338, 0
  %340 = call float @dx.op.unary.f32(i32 6, float %335)  ; FAbs(value)
  %341 = call float @dx.op.unary.f32(i32 6, float %336)  ; FAbs(value)
  %342 = fsub fast float 1.000000e+00, %340
  %343 = fsub fast float 1.000000e+00, %341
  %344 = call float @dx.op.unary.f32(i32 7, float %342)  ; Saturate(value)
  %345 = call float @dx.op.unary.f32(i32 7, float %343)  ; Saturate(value)
  %346 = fmul fast float %345, %344
  %347 = mul i32 %339, 29
  %348 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %347, i32 undef)  ; BufferLoad(srv,index,wot)
  %349 = extractvalue %dx.types.ResRet.f32 %348, 0
  %350 = extractvalue %dx.types.ResRet.f32 %348, 1
  %351 = extractvalue %dx.types.ResRet.f32 %348, 2
  %352 = extractvalue %dx.types.ResRet.f32 %348, 3
  %353 = add i32 %347, 1
  %354 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %353, i32 undef)  ; BufferLoad(srv,index,wot)
  %355 = extractvalue %dx.types.ResRet.f32 %354, 0
  %356 = extractvalue %dx.types.ResRet.f32 %354, 1
  %357 = extractvalue %dx.types.ResRet.f32 %354, 2
  %358 = extractvalue %dx.types.ResRet.f32 %354, 3
  %359 = add i32 %347, 2
  %360 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %359, i32 undef)  ; BufferLoad(srv,index,wot)
  %361 = extractvalue %dx.types.ResRet.f32 %360, 0
  %362 = extractvalue %dx.types.ResRet.f32 %360, 1
  %363 = extractvalue %dx.types.ResRet.f32 %360, 2
  %364 = extractvalue %dx.types.ResRet.f32 %360, 3
  %365 = add i32 %347, 3
  %366 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %365, i32 undef)  ; BufferLoad(srv,index,wot)
  %367 = extractvalue %dx.types.ResRet.f32 %366, 0
  %368 = extractvalue %dx.types.ResRet.f32 %366, 1
  %369 = extractvalue %dx.types.ResRet.f32 %366, 2
  %370 = extractvalue %dx.types.ResRet.f32 %366, 3
  %371 = add i32 %347, 4
  %372 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %371, i32 undef)  ; BufferLoad(srv,index,wot)
  %373 = extractvalue %dx.types.ResRet.f32 %372, 0
  %374 = extractvalue %dx.types.ResRet.f32 %372, 1
  %375 = extractvalue %dx.types.ResRet.f32 %372, 2
  %376 = extractvalue %dx.types.ResRet.f32 %372, 3
  %377 = add i32 %347, 5
  %378 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %377, i32 undef)  ; BufferLoad(srv,index,wot)
  %379 = extractvalue %dx.types.ResRet.f32 %378, 0
  %380 = extractvalue %dx.types.ResRet.f32 %378, 1
  %381 = extractvalue %dx.types.ResRet.f32 %378, 2
  %382 = extractvalue %dx.types.ResRet.f32 %378, 3
  %383 = add i32 %347, 6
  %384 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %383, i32 undef)  ; BufferLoad(srv,index,wot)
  %385 = extractvalue %dx.types.ResRet.f32 %384, 0
  %386 = extractvalue %dx.types.ResRet.f32 %384, 1
  %387 = extractvalue %dx.types.ResRet.f32 %384, 2
  %388 = extractvalue %dx.types.ResRet.f32 %384, 3
  %389 = add i32 %347, 7
  %390 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %389, i32 undef)  ; BufferLoad(srv,index,wot)
  %391 = extractvalue %dx.types.ResRet.f32 %390, 0
  %392 = extractvalue %dx.types.ResRet.f32 %390, 1
  %393 = extractvalue %dx.types.ResRet.f32 %390, 2
  %394 = extractvalue %dx.types.ResRet.f32 %390, 3
  %395 = fmul fast float %349, %335
  %396 = fmul fast float %361, %336
  %397 = fadd fast float %396, %395
  %398 = fmul fast float %373, %337
  %399 = fadd fast float %397, %398
  %400 = fmul fast float %350, %335
  %401 = fmul fast float %362, %336
  %402 = fadd fast float %401, %400
  %403 = fmul fast float %374, %337
  %404 = fadd fast float %402, %403
  %405 = fmul fast float %351, %335
  %406 = fmul fast float %363, %336
  %407 = fadd fast float %406, %405
  %408 = fmul fast float %375, %337
  %409 = fadd fast float %407, %408
  %410 = fmul fast float %352, %335
  %411 = fmul fast float %364, %336
  %412 = fadd fast float %411, %410
  %413 = fmul fast float %376, %337
  %414 = fadd fast float %412, %413
  %415 = fmul fast float %355, %335
  %416 = fmul fast float %367, %336
  %417 = fadd fast float %416, %415
  %418 = fmul fast float %379, %337
  %419 = fadd fast float %417, %418
  %420 = fmul fast float %356, %335
  %421 = fmul fast float %368, %336
  %422 = fadd fast float %421, %420
  %423 = fmul fast float %380, %337
  %424 = fadd fast float %422, %423
  %425 = fmul fast float %357, %335
  %426 = fmul fast float %369, %336
  %427 = fadd fast float %426, %425
  %428 = fmul fast float %381, %337
  %429 = fadd fast float %427, %428
  %430 = fmul fast float %358, %335
  %431 = fmul fast float %370, %336
  %432 = fadd fast float %431, %430
  %433 = fmul fast float %382, %337
  %434 = fadd fast float %432, %433
  %435 = fadd fast float %399, %385
  %436 = fadd fast float %404, %386
  %437 = fadd fast float %409, %387
  %438 = fadd fast float %414, %388
  %439 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %435)  ; FMax(a,b)
  %440 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %436)  ; FMax(a,b)
  %441 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %437)  ; FMax(a,b)
  %442 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %438)  ; FMax(a,b)
  %443 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %435)  ; FMin(a,b)
  %444 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %436)  ; FMin(a,b)
  %445 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %437)  ; FMin(a,b)
  %446 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %438)  ; FMin(a,b)
  %447 = fmul fast float %443, 0x3F847AE140000000
  %448 = fmul fast float %444, 0x3F847AE140000000
  %449 = fmul fast float %445, 0x3F847AE140000000
  %450 = fmul fast float %446, 0x3F847AE140000000
  %451 = fadd fast float %447, %439
  %452 = fadd fast float %448, %440
  %453 = fadd fast float %449, %441
  %454 = fadd fast float %450, %442
  %455 = fadd fast float %419, %391
  %456 = fadd fast float %424, %392
  %457 = fadd fast float %429, %393
  %458 = fadd fast float %434, %394
  %459 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %455)  ; FMax(a,b)
  %460 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %456)  ; FMax(a,b)
  %461 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %457)  ; FMax(a,b)
  %462 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %458)  ; FMax(a,b)
  %463 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %455)  ; FMin(a,b)
  %464 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %456)  ; FMin(a,b)
  %465 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %457)  ; FMin(a,b)
  %466 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %458)  ; FMin(a,b)
  %467 = fmul fast float %463, 0x3F847AE140000000
  %468 = fmul fast float %464, 0x3F847AE140000000
  %469 = fmul fast float %465, 0x3F847AE140000000
  %470 = fmul fast float %466, 0x3F847AE140000000
  %471 = fadd fast float %467, %459
  %472 = fadd fast float %468, %460
  %473 = fadd fast float %469, %461
  %474 = fadd fast float %470, %462
  br label %475

; <label>:475                                     ; preds = %475, %323
  %476 = phi i32 [ 0, %323 ], [ %496, %475 ]
  %477 = add i32 %347, 8
  %478 = shl i32 %476, 1
  %479 = add i32 %477, %478
  %480 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %479, i32 undef)  ; BufferLoad(srv,index,wot)
  %481 = extractvalue %dx.types.ResRet.f32 %480, 0
  %482 = extractvalue %dx.types.ResRet.f32 %480, 1
  %483 = extractvalue %dx.types.ResRet.f32 %480, 2
  %484 = extractvalue %dx.types.ResRet.f32 %480, 3
  %485 = add i32 %347, 9
  %486 = add i32 %485, %478
  %487 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %486, i32 undef)  ; BufferLoad(srv,index,wot)
  %488 = extractvalue %dx.types.ResRet.f32 %487, 0
  %489 = extractvalue %dx.types.ResRet.f32 %487, 1
  %490 = extractvalue %dx.types.ResRet.f32 %487, 2
  %491 = extractvalue %dx.types.ResRet.f32 %487, 3
  %492 = call float @dx.op.dot4.f32(i32 56, float %481, float %482, float %483, float %484, float %451, float %452, float %453, float %454)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %493 = call float @dx.op.dot4.f32(i32 56, float %488, float %489, float %490, float %491, float %471, float %472, float %473, float %474)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %494 = fadd fast float %493, %492
  %495 = getelementptr inbounds [8 x float], [8 x float]* %26, i32 0, i32 %476
  store float %494, float* %495, align 4, !tbaa !61, !noalias !49
  %496 = add nuw nsw i32 %476, 1
  %497 = icmp eq i32 %496, 8
  br i1 %497, label %498, label %475

; <label>:498                                     ; preds = %475
  %499 = call float @dx.op.unary.f32(i32 6, float %337)  ; FAbs(value)
  %500 = fsub fast float 1.000000e+00, %499
  %501 = call float @dx.op.unary.f32(i32 7, float %500)  ; Saturate(value)
  %502 = fmul fast float %346, %501
  %503 = add i32 %347, 24
  %504 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %505 = extractvalue %dx.types.ResRet.f32 %504, 0
  %506 = extractvalue %dx.types.ResRet.f32 %504, 1
  %507 = extractvalue %dx.types.ResRet.f32 %504, 2
  %508 = extractvalue %dx.types.ResRet.f32 %504, 3
  %509 = add i32 %347, 25
  %510 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %509, i32 undef)  ; BufferLoad(srv,index,wot)
  %511 = extractvalue %dx.types.ResRet.f32 %510, 0
  %512 = extractvalue %dx.types.ResRet.f32 %510, 1
  %513 = extractvalue %dx.types.ResRet.f32 %510, 2
  %514 = extractvalue %dx.types.ResRet.f32 %510, 3
  %515 = getelementptr inbounds [8 x float], [8 x float]* %26, i32 0, i32 0
  %516 = load float, float* %515, align 4, !tbaa !61, !noalias !49
  %517 = fadd fast float %516, %505
  %518 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %517)  ; FMax(a,b)
  %519 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %517)  ; FMin(a,b)
  %520 = fmul fast float %519, 0x3F847AE140000000
  %521 = fadd fast float %520, %518
  store float %521, float* %515, align 4, !tbaa !61, !noalias !49
  %522 = getelementptr inbounds [8 x float], [8 x float]* %26, i32 0, i32 1
  %523 = load float, float* %522, align 4, !tbaa !61, !noalias !49
  %524 = fadd fast float %523, %506
  %525 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %524)  ; FMax(a,b)
  %526 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %524)  ; FMin(a,b)
  %527 = fmul fast float %526, 0x3F847AE140000000
  %528 = fadd fast float %527, %525
  store float %528, float* %522, align 4, !tbaa !61, !noalias !49
  %529 = getelementptr inbounds [8 x float], [8 x float]* %26, i32 0, i32 2
  %530 = load float, float* %529, align 4, !tbaa !61, !noalias !49
  %531 = fadd fast float %530, %507
  %532 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %531)  ; FMax(a,b)
  %533 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %531)  ; FMin(a,b)
  %534 = fmul fast float %533, 0x3F847AE140000000
  %535 = fadd fast float %534, %532
  store float %535, float* %529, align 4, !tbaa !61, !noalias !49
  %536 = getelementptr inbounds [8 x float], [8 x float]* %26, i32 0, i32 3
  %537 = load float, float* %536, align 4, !tbaa !61, !noalias !49
  %538 = fadd fast float %537, %508
  %539 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %538)  ; FMax(a,b)
  %540 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %538)  ; FMin(a,b)
  %541 = fmul fast float %540, 0x3F847AE140000000
  %542 = fadd fast float %541, %539
  store float %542, float* %536, align 4, !tbaa !61, !noalias !49
  %543 = getelementptr inbounds [8 x float], [8 x float]* %26, i32 0, i32 4
  %544 = load float, float* %543, align 4, !tbaa !61, !noalias !49
  %545 = fadd fast float %544, %511
  %546 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %545)  ; FMax(a,b)
  %547 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %545)  ; FMin(a,b)
  %548 = fmul fast float %547, 0x3F847AE140000000
  %549 = fadd fast float %548, %546
  store float %549, float* %543, align 4, !tbaa !61, !noalias !49
  %550 = getelementptr inbounds [8 x float], [8 x float]* %26, i32 0, i32 5
  %551 = load float, float* %550, align 4, !tbaa !61, !noalias !49
  %552 = fadd fast float %551, %512
  %553 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %552)  ; FMax(a,b)
  %554 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %552)  ; FMin(a,b)
  %555 = fmul fast float %554, 0x3F847AE140000000
  %556 = fadd fast float %555, %553
  store float %556, float* %550, align 4, !tbaa !61, !noalias !49
  %557 = getelementptr inbounds [8 x float], [8 x float]* %26, i32 0, i32 6
  %558 = load float, float* %557, align 4, !tbaa !61, !noalias !49
  %559 = fadd fast float %558, %513
  %560 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %559)  ; FMax(a,b)
  %561 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %559)  ; FMin(a,b)
  %562 = fmul fast float %561, 0x3F847AE140000000
  %563 = fadd fast float %562, %560
  store float %563, float* %557, align 4, !tbaa !61, !noalias !49
  %564 = getelementptr inbounds [8 x float], [8 x float]* %26, i32 0, i32 7
  %565 = load float, float* %564, align 4, !tbaa !61, !noalias !49
  %566 = fadd fast float %565, %514
  %567 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %566)  ; FMax(a,b)
  %568 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %566)  ; FMin(a,b)
  %569 = fmul fast float %568, 0x3F847AE140000000
  %570 = fadd fast float %569, %567
  store float %570, float* %564, align 4, !tbaa !61, !noalias !49
  %571 = add i32 %347, 26
  %572 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %571, i32 undef)  ; BufferLoad(srv,index,wot)
  %573 = extractvalue %dx.types.ResRet.f32 %572, 0
  %574 = extractvalue %dx.types.ResRet.f32 %572, 1
  %575 = extractvalue %dx.types.ResRet.f32 %572, 2
  %576 = extractvalue %dx.types.ResRet.f32 %572, 3
  %577 = add i32 %347, 27
  %578 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %577, i32 undef)  ; BufferLoad(srv,index,wot)
  %579 = extractvalue %dx.types.ResRet.f32 %578, 0
  %580 = extractvalue %dx.types.ResRet.f32 %578, 1
  %581 = extractvalue %dx.types.ResRet.f32 %578, 2
  %582 = extractvalue %dx.types.ResRet.f32 %578, 3
  %583 = fmul fast float %521, %573
  %584 = fmul fast float %528, %574
  %585 = fadd fast float %584, %583
  %586 = fmul fast float %535, %575
  %587 = fadd fast float %585, %586
  %588 = fmul fast float %542, %576
  %589 = fadd fast float %587, %588
  %590 = fmul fast float %549, %579
  %591 = fadd fast float %589, %590
  %592 = fmul fast float %556, %580
  %593 = fadd fast float %591, %592
  %594 = fmul fast float %563, %581
  %595 = fadd fast float %593, %594
  %596 = fmul fast float %570, %582
  %597 = fadd fast float %595, %596
  %598 = add i32 %347, 28
  %599 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %598, i32 undef)  ; BufferLoad(srv,index,wot)
  %600 = extractvalue %dx.types.ResRet.f32 %599, 0
  %601 = fadd fast float %597, %600
  %602 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %601)  ; FMax(a,b)
  %603 = fmul fast float %502, %602
  %604 = call float @dx.op.unary.f32(i32 7, float %603)  ; Saturate(value)
  %605 = getelementptr inbounds [8 x float], [8 x float]* %28, i32 0, i32 %326
  store float %604, float* %605, align 4, !tbaa !61, !noalias !49
  %606 = fadd fast float %604, %325
  %607 = add nuw nsw i32 %326, 1
  %608 = icmp eq i32 %607, 8
  br i1 %608, label %612, label %609

; <label>:609                                     ; preds = %498
  %610 = getelementptr inbounds [8 x i32], [8 x i32]* %27, i32 0, i32 %607
  %611 = load i32, i32* %610, align 4, !tbaa !45, !noalias !49
  br label %323

; <label>:612                                     ; preds = %498
  %613 = fcmp fast ugt float %606, 0x3EE4F8B580000000
  br i1 %613, label %614, label %675, !dx.controlflow.hints !63

; <label>:614                                     ; preds = %612
  %615 = fcmp fast ogt float %606, 0x3EE4F8B580000000
  %616 = fdiv fast float 1.000000e+00, %606
  %617 = select i1 %615, float %616, float 1.000000e+00
  %618 = getelementptr inbounds [8 x float], [8 x float]* %28, i32 0, i32 0
  %619 = load float, float* %618, align 4, !tbaa !61, !noalias !49
  %620 = fmul fast float %619, %617
  store float %620, float* %618, align 4, !tbaa !61, !noalias !49
  %621 = getelementptr inbounds [8 x float], [8 x float]* %28, i32 0, i32 1
  %622 = load float, float* %621, align 4, !tbaa !61, !noalias !49
  %623 = fmul fast float %622, %617
  store float %623, float* %621, align 4, !tbaa !61, !noalias !49
  %624 = getelementptr inbounds [8 x float], [8 x float]* %28, i32 0, i32 2
  %625 = load float, float* %624, align 4, !tbaa !61, !noalias !49
  %626 = fmul fast float %625, %617
  store float %626, float* %624, align 4, !tbaa !61, !noalias !49
  %627 = getelementptr inbounds [8 x float], [8 x float]* %28, i32 0, i32 3
  %628 = load float, float* %627, align 4, !tbaa !61, !noalias !49
  %629 = fmul fast float %628, %617
  store float %629, float* %627, align 4, !tbaa !61, !noalias !49
  %630 = getelementptr inbounds [8 x float], [8 x float]* %28, i32 0, i32 4
  %631 = load float, float* %630, align 4, !tbaa !61, !noalias !49
  %632 = fmul fast float %631, %617
  store float %632, float* %630, align 4, !tbaa !61, !noalias !49
  %633 = getelementptr inbounds [8 x float], [8 x float]* %28, i32 0, i32 5
  %634 = load float, float* %633, align 4, !tbaa !61, !noalias !49
  %635 = fmul fast float %634, %617
  store float %635, float* %633, align 4, !tbaa !61, !noalias !49
  %636 = getelementptr inbounds [8 x float], [8 x float]* %28, i32 0, i32 6
  %637 = load float, float* %636, align 4, !tbaa !61, !noalias !49
  %638 = fmul fast float %637, %617
  store float %638, float* %636, align 4, !tbaa !61, !noalias !49
  %639 = getelementptr inbounds [8 x float], [8 x float]* %28, i32 0, i32 7
  %640 = load float, float* %639, align 4, !tbaa !61, !noalias !49
  %641 = fmul fast float %640, %617
  store float %641, float* %639, align 4, !tbaa !61, !noalias !49
  br label %642

; <label>:642                                     ; preds = %669, %614
  %643 = phi float [ %673, %669 ], [ %620, %614 ]
  %644 = phi i32 [ %671, %669 ], [ %251, %614 ]
  %645 = phi float [ %662, %669 ], [ 0.000000e+00, %614 ]
  %646 = phi float [ %664, %669 ], [ 0.000000e+00, %614 ]
  %647 = phi float [ %666, %669 ], [ 0.000000e+00, %614 ]
  %648 = phi i32 [ %667, %669 ], [ 0, %614 ]
  %649 = shl i32 %644, 5
  %650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %649, i32 undef)  ; BufferLoad(srv,index,wot)
  %651 = extractvalue %dx.types.ResRet.i32 %650, 0
  %652 = shl i32 %651, 4
  %653 = and i32 %652, 32752
  %654 = call float @dx.op.legacyF16ToF32(i32 131, i32 %653)  ; LegacyF16ToF32(value)
  %655 = lshr i32 %651, 7
  %656 = and i32 %655, 32752
  %657 = call float @dx.op.legacyF16ToF32(i32 131, i32 %656)  ; LegacyF16ToF32(value)
  %658 = lshr i32 %651, 22
  %659 = shl nuw nsw i32 %658, 5
  %660 = call float @dx.op.legacyF16ToF32(i32 131, i32 %659)  ; LegacyF16ToF32(value)
  %661 = fmul fast float %654, %643
  %662 = fadd fast float %661, %645
  %663 = fmul fast float %657, %643
  %664 = fadd fast float %663, %646
  %665 = fmul fast float %660, %643
  %666 = fadd fast float %665, %647
  %667 = add nuw nsw i32 %648, 1
  %668 = icmp eq i32 %667, 8
  br i1 %668, label %674, label %669

; <label>:669                                     ; preds = %642
  %670 = getelementptr inbounds [8 x i32], [8 x i32]* %27, i32 0, i32 %667
  %671 = load i32, i32* %670, align 4, !tbaa !45, !noalias !49
  %672 = getelementptr inbounds [8 x float], [8 x float]* %28, i32 0, i32 %667
  %673 = load float, float* %672, align 4, !tbaa !61, !noalias !49
  br label %642

; <label>:674                                     ; preds = %642
  br label %675

; <label>:675                                     ; preds = %674, %612, %179, %160, %132
  %676 = phi float [ 0.000000e+00, %132 ], [ 0.000000e+00, %160 ], [ 0.000000e+00, %179 ], [ 0.000000e+00, %612 ], [ %662, %674 ]
  %677 = phi float [ 0.000000e+00, %132 ], [ 0.000000e+00, %160 ], [ 0.000000e+00, %179 ], [ 0.000000e+00, %612 ], [ %664, %674 ]
  %678 = phi float [ 0.000000e+00, %132 ], [ 0.000000e+00, %160 ], [ 0.000000e+00, %179 ], [ 0.000000e+00, %612 ], [ %666, %674 ]
  %679 = phi i1 [ false, %132 ], [ false, %160 ], [ false, %179 ], [ false, %612 ], [ true, %674 ]
  br i1 %679, label %693, label %680, !dx.controlflow.hints !64

; <label>:680                                     ; preds = %675
  %681 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %682 = extractvalue %dx.types.ResRet.i32 %681, 1
  %683 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %684 = extractvalue %dx.types.ResRet.i32 %683, 0
  %685 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %686 = extractvalue %dx.types.ResRet.i32 %685, 0
  %687 = and i32 %686, 65535
  %688 = call float @dx.op.legacyF16ToF32(i32 131, i32 %687)  ; LegacyF16ToF32(value)
  %689 = lshr i32 %684, 16
  %690 = call float @dx.op.legacyF16ToF32(i32 131, i32 %689)  ; LegacyF16ToF32(value)
  %691 = and i32 %682, 65535
  %692 = call float @dx.op.legacyF16ToF32(i32 131, i32 %691)  ; LegacyF16ToF32(value)
  br label %693

; <label>:693                                     ; preds = %680, %675, %129
  %694 = phi float [ %692, %680 ], [ %678, %675 ], [ 0.000000e+00, %129 ]
  %695 = phi float [ %690, %680 ], [ %677, %675 ], [ 0.000000e+00, %129 ]
  %696 = phi float [ %688, %680 ], [ %676, %675 ], [ 0.000000e+00, %129 ]
  %697 = fcmp fast olt float %130, 1.000000e+00
  br i1 %697, label %698, label %1060, !dx.controlflow.hints !65

; <label>:698                                     ; preds = %693
  %699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %700 = extractvalue %dx.types.CBufRet.f32 %699, 0
  %701 = extractvalue %dx.types.CBufRet.f32 %699, 1
  %702 = fsub fast float %87, %700
  %703 = fsub fast float %88, %701
  %704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %705 = extractvalue %dx.types.CBufRet.f32 %704, 0
  %706 = extractvalue %dx.types.CBufRet.f32 %704, 1
  %707 = fmul fast float %702, %705
  %708 = fmul fast float %703, %706
  %709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %710 = extractvalue %dx.types.CBufRet.f32 %709, 0
  %711 = fmul fast float %710, %707
  %712 = extractvalue %dx.types.CBufRet.f32 %709, 1
  %713 = fadd fast float %711, %712
  %714 = extractvalue %dx.types.CBufRet.f32 %709, 2
  %715 = fmul fast float %714, %708
  %716 = extractvalue %dx.types.CBufRet.f32 %709, 3
  %717 = fadd fast float %715, %716
  %718 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %20, float %713, float %717, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %719 = extractvalue %dx.types.ResRet.f32 %718, 0
  %720 = extractvalue %dx.types.ResRet.f32 %718, 1
  %721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %722 = extractvalue %dx.types.CBufRet.f32 %721, 1
  %723 = extractvalue %dx.types.CBufRet.f32 %721, 0
  %724 = fsub fast float %722, %723
  %725 = fmul fast float %724, %719
  %726 = fadd fast float %725, %723
  %727 = extractvalue %dx.types.CBufRet.f32 %721, 3
  %728 = extractvalue %dx.types.CBufRet.f32 %721, 2
  %729 = fsub fast float %727, %728
  %730 = fmul fast float %729, %720
  %731 = fadd fast float %730, %728
  %732 = fsub fast float %89, %726
  %733 = fsub fast float %731, %726
  %734 = fdiv fast float %732, %733
  %735 = call float @dx.op.unary.f32(i32 7, float %734)  ; Saturate(value)
  %736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %737 = extractvalue %dx.types.CBufRet.f32 %736, 0
  %738 = fmul fast float %737, %735
  %739 = extractvalue %dx.types.CBufRet.f32 %736, 1
  %740 = fadd fast float %738, %739
  %741 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %20, float %713, float %717, float %740, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %742 = extractvalue %dx.types.ResRet.f32 %741, 0
  %743 = extractvalue %dx.types.ResRet.f32 %741, 1
  %744 = extractvalue %dx.types.ResRet.f32 %741, 2
  %745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %746 = extractvalue %dx.types.CBufRet.f32 %745, 0
  %747 = extractvalue %dx.types.CBufRet.f32 %745, 1
  %748 = extractvalue %dx.types.CBufRet.f32 %745, 2
  %749 = fmul fast float %746, %742
  %750 = fmul fast float %747, %743
  %751 = fmul fast float %748, %744
  %752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %753 = extractvalue %dx.types.CBufRet.f32 %752, 0
  %754 = extractvalue %dx.types.CBufRet.f32 %752, 1
  %755 = extractvalue %dx.types.CBufRet.f32 %752, 2
  %756 = fadd fast float %749, %753
  %757 = fadd fast float %750, %754
  %758 = fadd fast float %751, %755
  %759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %760 = extractvalue %dx.types.CBufRet.f32 %759, 0
  %761 = fmul fast float %760, %707
  %762 = extractvalue %dx.types.CBufRet.f32 %759, 1
  %763 = fadd fast float %761, %762
  %764 = extractvalue %dx.types.CBufRet.f32 %759, 2
  %765 = fmul fast float %764, %708
  %766 = extractvalue %dx.types.CBufRet.f32 %759, 3
  %767 = fadd fast float %765, %766
  %768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %769 = extractvalue %dx.types.CBufRet.f32 %768, 0
  %770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %771 = extractvalue %dx.types.CBufRet.f32 %770, 0
  %772 = extractvalue %dx.types.CBufRet.f32 %770, 2
  %773 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %20, float %763, float %767, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %774 = extractvalue %dx.types.ResRet.f32 %773, 0
  %775 = extractvalue %dx.types.ResRet.f32 %773, 1
  %776 = extractvalue %dx.types.ResRet.f32 %773, 2
  %777 = fmul fast float %774, %756
  %778 = fadd fast float %777, %769
  %779 = fmul fast float %775, %756
  %780 = fadd fast float %779, %771
  %781 = fmul fast float %776, %756
  %782 = fadd fast float %781, %772
  %783 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %20, float %763, float %767, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %784 = extractvalue %dx.types.ResRet.f32 %783, 0
  %785 = extractvalue %dx.types.ResRet.f32 %783, 1
  %786 = extractvalue %dx.types.ResRet.f32 %783, 2
  %787 = fmul fast float %784, %757
  %788 = fadd fast float %778, %787
  %789 = fmul fast float %785, %757
  %790 = fadd fast float %780, %789
  %791 = fmul fast float %786, %757
  %792 = fadd fast float %782, %791
  %793 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %20, float %763, float %767, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %794 = extractvalue %dx.types.ResRet.f32 %793, 0
  %795 = extractvalue %dx.types.ResRet.f32 %793, 1
  %796 = extractvalue %dx.types.ResRet.f32 %793, 2
  %797 = fmul fast float %794, %758
  %798 = fadd fast float %788, %797
  %799 = fmul fast float %795, %758
  %800 = fadd fast float %790, %799
  %801 = fmul fast float %796, %758
  %802 = fadd fast float %792, %801
  %803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %804 = extractvalue %dx.types.CBufRet.f32 %803, 0
  %805 = fsub fast float %87, %804
  %806 = fsub fast float %700, %87
  %807 = call float @dx.op.binary.f32(i32 35, float %806, float %805)  ; FMax(a,b)
  %808 = extractvalue %dx.types.CBufRet.f32 %803, 1
  %809 = fsub fast float %88, %808
  %810 = fsub fast float %701, %88
  %811 = call float @dx.op.binary.f32(i32 35, float %810, float %809)  ; FMax(a,b)
  %812 = call float @dx.op.binary.f32(i32 35, float %807, float %811)  ; FMax(a,b)
  %813 = extractvalue %dx.types.CBufRet.f32 %704, 3
  %814 = fmul fast float %813, %812
  %815 = call float @dx.op.unary.f32(i32 7, float %814)  ; Saturate(value)
  %816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %817 = extractvalue %dx.types.CBufRet.f32 %816, 0
  %818 = fsub fast float %817, %798
  %819 = fmul fast float %818, %815
  %820 = fadd fast float %819, %798
  %821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %822 = extractvalue %dx.types.CBufRet.f32 %821, 0
  %823 = fsub fast float %822, %800
  %824 = fmul fast float %823, %815
  %825 = fadd fast float %824, %800
  %826 = extractvalue %dx.types.CBufRet.f32 %821, 2
  %827 = fsub fast float %826, %802
  %828 = fmul fast float %827, %815
  %829 = fadd fast float %828, %802
  %830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %831 = extractvalue %dx.types.CBufRet.f32 %830, 0
  %832 = fmul fast float %831, %820
  %833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %834 = extractvalue %dx.types.CBufRet.f32 %833, 0
  %835 = fmul fast float %834, %825
  %836 = fadd fast float %835, %832
  %837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %838 = extractvalue %dx.types.CBufRet.f32 %837, 0
  %839 = fmul fast float %838, %829
  %840 = fadd fast float %836, %839
  %841 = extractvalue %dx.types.CBufRet.f32 %830, 1
  %842 = fmul fast float %841, %820
  %843 = extractvalue %dx.types.CBufRet.f32 %833, 1
  %844 = fmul fast float %843, %825
  %845 = fadd fast float %844, %842
  %846 = extractvalue %dx.types.CBufRet.f32 %837, 1
  %847 = fmul fast float %846, %829
  %848 = fadd fast float %845, %847
  %849 = extractvalue %dx.types.CBufRet.f32 %830, 2
  %850 = fmul fast float %849, %820
  %851 = extractvalue %dx.types.CBufRet.f32 %833, 2
  %852 = fmul fast float %851, %825
  %853 = fadd fast float %852, %850
  %854 = extractvalue %dx.types.CBufRet.f32 %837, 2
  %855 = fmul fast float %854, %829
  %856 = fadd fast float %853, %855
  %857 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %840)  ; FMax(a,b)
  %858 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %848)  ; FMax(a,b)
  %859 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %856)  ; FMax(a,b)
  %860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %861 = extractvalue %dx.types.CBufRet.f32 %860, 0
  %862 = fcmp fast ogt float %861, 0.000000e+00
  %863 = fcmp fast oge float %707, 0.000000e+00
  %864 = and i1 %863, %862
  %865 = fcmp fast ole float %707, 1.000000e+00
  %866 = and i1 %865, %864
  %867 = fcmp fast oge float %708, 0.000000e+00
  %868 = and i1 %867, %866
  %869 = fcmp fast ole float %708, 1.000000e+00
  %870 = and i1 %869, %868
  br i1 %870, label %871, label %1016, !dx.controlflow.hints !66

; <label>:871                                     ; preds = %698
  %872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %873 = extractvalue %dx.types.CBufRet.f32 %872, 2
  %874 = extractvalue %dx.types.CBufRet.f32 %872, 3
  %875 = fmul fast float %873, %707
  %876 = fmul fast float %874, %708
  %877 = call float @dx.op.unary.f32(i32 27, float %875)  ; Round_ni(value)
  %878 = call float @dx.op.unary.f32(i32 27, float %876)  ; Round_ni(value)
  %879 = fptosi float %877 to i32
  %880 = fptosi float %878 to i32
  %881 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %15, i32 0, i32 %879, i32 %880, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %882 = extractvalue %dx.types.ResRet.i32 %881, 0
  %883 = and i32 %882, 65535
  %884 = lshr i32 %882, 16
  %885 = icmp eq i32 %883, 65535
  br i1 %885, label %922, label %886, !dx.controlflow.hints !67

; <label>:886                                     ; preds = %871
  %887 = extractvalue %dx.types.CBufRet.f32 %860, 1
  %888 = extractvalue %dx.types.CBufRet.f32 %872, 0
  %889 = extractvalue %dx.types.CBufRet.f32 %872, 1
  %890 = fmul fast float %888, %707
  %891 = fmul fast float %889, %708
  %892 = fmul fast float %890, 1.250000e-01
  %893 = fmul fast float %891, 1.250000e-01
  %894 = call float @dx.op.unary.f32(i32 27, float %892)  ; Round_ni(value)
  %895 = call float @dx.op.unary.f32(i32 27, float %893)  ; Round_ni(value)
  %896 = fmul fast float %894, 8.000000e+00
  %897 = fmul fast float %895, 8.000000e+00
  %898 = and i32 %882, 255
  %899 = lshr i32 %882, 8
  %900 = and i32 %899, 255
  %901 = mul nuw nsw i32 %898, 9
  %902 = uitofp i32 %901 to float
  %903 = mul nuw nsw i32 %900, 9
  %904 = uitofp i32 %903 to float
  %905 = fadd fast float %902, 5.000000e-01
  %906 = fadd fast float %905, %890
  %907 = fsub fast float %906, %896
  %908 = fadd fast float %904, 5.000000e-01
  %909 = fadd fast float %908, %891
  %910 = fsub fast float %909, %897
  %911 = fdiv fast float %907, %861
  %912 = fdiv fast float %910, %887
  %913 = fmul fast float %735, 4.375000e-01
  %914 = fadd fast float %913, 3.125000e-02
  %915 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %20, float %911, float %912, float %914, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %916 = extractvalue %dx.types.ResRet.f32 %915, 0
  %917 = extractvalue %dx.types.ResRet.f32 %915, 1
  %918 = extractvalue %dx.types.ResRet.f32 %915, 2
  %919 = fadd fast float %916, %857
  %920 = fadd fast float %917, %858
  %921 = fadd fast float %918, %859
  br label %922

; <label>:922                                     ; preds = %886, %871
  %923 = phi float [ %921, %886 ], [ %859, %871 ]
  %924 = phi float [ %920, %886 ], [ %858, %871 ]
  %925 = phi float [ %919, %886 ], [ %857, %871 ]
  %926 = icmp eq i32 %884, 65535
  br i1 %926, label %1016, label %927, !dx.controlflow.hints !68

; <label>:927                                     ; preds = %922
  %928 = extractvalue %dx.types.CBufRet.f32 %860, 1
  %929 = extractvalue %dx.types.CBufRet.f32 %872, 0
  %930 = extractvalue %dx.types.CBufRet.f32 %872, 1
  %931 = fmul fast float %929, %707
  %932 = fmul fast float %930, %708
  %933 = fmul fast float %931, 1.250000e-01
  %934 = fmul fast float %932, 1.250000e-01
  %935 = call float @dx.op.unary.f32(i32 27, float %933)  ; Round_ni(value)
  %936 = call float @dx.op.unary.f32(i32 27, float %934)  ; Round_ni(value)
  %937 = fmul fast float %935, 8.000000e+00
  %938 = fmul fast float %936, 8.000000e+00
  %939 = fsub fast float %931, %937
  %940 = fsub fast float %932, %938
  %941 = fadd fast float %939, 5.000000e-01
  %942 = fadd fast float %940, 5.000000e-01
  %943 = and i32 %884, 255
  %944 = lshr i32 %882, 24
  %945 = mul nuw nsw i32 %943, 9
  %946 = uitofp i32 %945 to float
  %947 = mul nuw nsw i32 %944, 9
  %948 = uitofp i32 %947 to float
  %949 = fadd fast float %941, %946
  %950 = fadd fast float %942, %948
  %951 = fdiv fast float %949, %861
  %952 = fdiv fast float %950, %928
  %953 = fmul fast float %735, 4.375000e-01
  %954 = fadd fast float %953, 3.125000e-02
  %955 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %20, float %951, float %952, float %954, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %956 = extractvalue %dx.types.ResRet.f32 %955, 0
  %957 = extractvalue %dx.types.ResRet.f32 %955, 1
  %958 = extractvalue %dx.types.ResRet.f32 %955, 2
  %959 = fadd fast float %953, 5.312500e-01
  %960 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %20, float %951, float %952, float %959, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %961 = extractvalue %dx.types.ResRet.f32 %960, 0
  %962 = extractvalue %dx.types.ResRet.f32 %960, 1
  %963 = extractvalue %dx.types.ResRet.f32 %960, 2
  %964 = fmul fast float %961, 2.000000e+00
  %965 = fmul fast float %962, 2.000000e+00
  %966 = fmul fast float %963, 2.000000e+00
  %967 = fadd fast float %964, -1.000000e+00
  %968 = fadd fast float %965, -1.000000e+00
  %969 = fadd fast float %966, -1.000000e+00
  %970 = fmul fast float %967, %967
  %971 = fmul fast float %968, %968
  %972 = fadd fast float %970, %971
  %973 = fmul fast float %969, %969
  %974 = fadd fast float %972, %973
  %975 = call float @dx.op.unary.f32(i32 24, float %974)  ; Sqrt(value)
  %976 = fcmp fast ogt float %975, 0.000000e+00
  br i1 %976, label %977, label %981, !dx.controlflow.hints !69

; <label>:977                                     ; preds = %927
  %978 = fdiv fast float %967, %975
  %979 = fdiv fast float %968, %975
  %980 = fdiv fast float %969, %975
  br label %981

; <label>:981                                     ; preds = %977, %927
  %982 = phi float [ %978, %977 ], [ 0.000000e+00, %927 ]
  %983 = phi float [ %979, %977 ], [ 0.000000e+00, %927 ]
  %984 = phi float [ %980, %977 ], [ 0.000000e+00, %927 ]
  %985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %986 = extractvalue %dx.types.CBufRet.f32 %985, 0
  %987 = extractvalue %dx.types.CBufRet.f32 %985, 1
  %988 = fsub fast float %87, %986
  %989 = fsub fast float %88, %987
  %990 = fmul fast float %988, %988
  %991 = fmul fast float %989, %989
  %992 = fadd fast float %990, %991
  %993 = call float @dx.op.unary.f32(i32 24, float %992)  ; Sqrt(value)
  %994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %995 = extractvalue %dx.types.CBufRet.f32 %994, 0
  %996 = extractvalue %dx.types.CBufRet.f32 %994, 1
  %997 = fsub fast float %993, %995
  %998 = fdiv fast float %997, %996
  %999 = call float @dx.op.unary.f32(i32 7, float %998)  ; Saturate(value)
  %1000 = fmul fast float %999, 2.000000e+00
  %1001 = fsub fast float 3.000000e+00, %1000
  %1002 = fmul fast float %999, %999
  %1003 = fmul fast float %1002, %1001
  %1004 = call float @dx.op.dot3.f32(i32 55, float %982, float %983, float %984, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1005 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1004)  ; FMax(a,b)
  %1006 = fmul fast float %1005, 0x400C5BF8A0000000
  %1007 = fmul fast float %1003, %956
  %1008 = fmul fast float %1007, %1006
  %1009 = fadd fast float %1008, %925
  %1010 = fmul fast float %1003, %957
  %1011 = fmul fast float %1010, %1006
  %1012 = fadd fast float %1011, %924
  %1013 = fmul fast float %1003, %958
  %1014 = fmul fast float %1013, %1006
  %1015 = fadd fast float %1014, %923
  br label %1016

; <label>:1016                                    ; preds = %981, %922, %698
  %1017 = phi float [ %1015, %981 ], [ %923, %922 ], [ %859, %698 ]
  %1018 = phi float [ %1012, %981 ], [ %924, %922 ], [ %858, %698 ]
  %1019 = phi float [ %1009, %981 ], [ %925, %922 ], [ %857, %698 ]
  %1020 = fcmp fast ogt float %89, %731
  %1021 = and i1 %863, %1020
  %1022 = and i1 %865, %1021
  %1023 = and i1 %867, %1022
  %1024 = and i1 %869, %1023
  br i1 %1024, label %1025, label %1043, !dx.controlflow.hints !70

; <label>:1025                                    ; preds = %1016
  %1026 = fmul fast float %733, 0x3FC24924A0000000
  %1027 = fsub fast float %89, %731
  %1028 = fdiv fast float %1027, %1026
  %1029 = call float @dx.op.unary.f32(i32 7, float %1028)  ; Saturate(value)
  %1030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %1031 = extractvalue %dx.types.CBufRet.f32 %1030, 0
  %1032 = fsub fast float %1031, %1019
  %1033 = fmul fast float %1032, %1029
  %1034 = fadd fast float %1033, %1019
  %1035 = extractvalue %dx.types.CBufRet.f32 %1030, 1
  %1036 = fsub fast float %1035, %1018
  %1037 = fmul fast float %1036, %1029
  %1038 = fadd fast float %1037, %1018
  %1039 = extractvalue %dx.types.CBufRet.f32 %1030, 2
  %1040 = fsub fast float %1039, %1017
  %1041 = fmul fast float %1040, %1029
  %1042 = fadd fast float %1041, %1017
  br label %1043

; <label>:1043                                    ; preds = %1025, %1016
  %1044 = phi float [ %1042, %1025 ], [ %1017, %1016 ]
  %1045 = phi float [ %1038, %1025 ], [ %1018, %1016 ]
  %1046 = phi float [ %1034, %1025 ], [ %1019, %1016 ]
  %1047 = extractvalue %dx.types.CBufRet.f32 %803, 3
  %1048 = fmul fast float %1047, %1046
  %1049 = fmul fast float %1047, %1045
  %1050 = fmul fast float %1047, %1044
  %1051 = fsub fast float %696, %1048
  %1052 = fmul fast float %1051, %130
  %1053 = fadd fast float %1052, %1048
  %1054 = fsub fast float %695, %1049
  %1055 = fmul fast float %1054, %130
  %1056 = fadd fast float %1055, %1049
  %1057 = fsub fast float %694, %1050
  %1058 = fmul fast float %1057, %130
  %1059 = fadd fast float %1058, %1050
  br label %1060

; <label>:1060                                    ; preds = %1043, %693
  %1061 = phi float [ %1059, %1043 ], [ %694, %693 ]
  %1062 = phi float [ %1056, %1043 ], [ %695, %693 ]
  %1063 = phi float [ %1053, %1043 ], [ %696, %693 ]
  %1064 = fmul fast float %1063, 0x3FD20DD760000000
  %1065 = fmul fast float %1062, 0x3FD20DD760000000
  %1066 = fmul fast float %1061, 0x3FD20DD760000000
  %1067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1068 = extractvalue %dx.types.CBufRet.f32 %1067, 3
  %1069 = fmul fast float %1064, %1068
  %1070 = fmul fast float %1065, %1068
  %1071 = fmul fast float %1066, %1068
  %1072 = extractvalue %dx.types.CBufRet.f32 %1067, 0
  %1073 = fmul fast float %1069, %1072
  %1074 = fmul fast float %1070, %1072
  %1075 = fmul fast float %1071, %1072
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %24, i32 %25, i32 undef, float %1073, float %1074, float %1075, float %1073, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

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
!dx.entryPoints = !{!35}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !27, !29, !32}
!5 = !{!6, !8, !9, !10, !11, !13, !14, !15, !16, !18, !19, !20, !21, !22, !23, !24, !25, !26}
!6 = !{i32 0, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 32, i32 1, i32 7, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 31, i32 1, i32 4, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<float>"* undef, !"", i32 0, i32 30, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 0, i32 29, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<unsigned int>"* undef, !"", i32 0, i32 22, i32 1, i32 2, i32 0, !12}
!12 = !{i32 0, i32 5}
!13 = !{i32 5, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 0, i32 23, i32 1, i32 4, i32 0, !7}
!14 = !{i32 6, %"class.Texture2D<float>"* undef, !"", i32 0, i32 19, i32 1, i32 2, i32 0, !7}
!15 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 15, i32 1, i32 11, i32 0, null}
!16 = !{i32 8, %"class.StructuredBuffer<GfxNeuralLightGridTopLevelNode>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i32 0, !17}
!17 = !{i32 1, i32 16}
!18 = !{i32 9, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 10, i32 0, !12}
!19 = !{i32 10, %"class.StructuredBuffer<GfxNeuralLightGridInternalNode>"* undef, !"", i32 0, i32 2, i32 1, i32 12, i32 0, !17}
!20 = !{i32 11, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 3, i32 1, i32 10, i32 0, !12}
!21 = !{i32 12, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 4, i32 1, i32 10, i32 0, !12}
!22 = !{i32 13, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 5, i32 1, i32 10, i32 0, !12}
!23 = !{i32 14, %"class.Buffer<vector<float, 4> >"* undef, !"", i32 0, i32 6, i32 1, i32 10, i32 0, !7}
!24 = !{i32 15, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 7, i32 1, i32 10, i32 0, !12}
!25 = !{i32 16, %"class.Buffer<vector<float, 4> >"* undef, !"", i32 0, i32 8, i32 1, i32 10, i32 0, !7}
!26 = !{i32 17, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 9, i32 1, i32 11, i32 0, null}
!27 = !{!28}
!28 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 5, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!29 = !{!30, !31}
!30 = !{i32 0, %GfxNeuralLightGridSetupConsts* undef, !"", i32 0, i32 4, i32 1, i32 80, null}
!31 = !{i32 1, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!32 = !{!33, !34}
!33 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!34 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!35 = !{void ()* @cs_scene_luma_sh_sample_lightgrid_aniso_skylight, !"cs_scene_luma_sh_sample_lightgrid_aniso_skylight", null, !4, !36}
!36 = !{i32 0, i64 272, i32 4, !37}
!37 = !{i32 8, i32 8, i32 1}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 1}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = !{!46, !46, i64 0}
!46 = !{!"int", !47, i64 0}
!47 = !{!"omnipotent char", !48, i64 0}
!48 = !{!"Simple C/C++ TBAA"}
!49 = !{!50, !52, !53, !54, !55, !57, !58, !59}
!50 = distinct !{!50, !51, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z: %probeR"}
!51 = distinct !{!51, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z"}
!52 = distinct !{!52, !51, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z: %probeG"}
!53 = distinct !{!53, !51, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z: %probeB"}
!54 = distinct !{!54, !51, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z: %probeA"}
!55 = distinct !{!55, !56, !"\01?LookupLightingNeuralLG@@YA_NV?$vector@M$02@@USH3Vec@@11AIAM_N@Z: %redSH"}
!56 = distinct !{!56, !"\01?LookupLightingNeuralLG@@YA_NV?$vector@M$02@@USH3Vec@@11AIAM_N@Z"}
!57 = distinct !{!57, !56, !"\01?LookupLightingNeuralLG@@YA_NV?$vector@M$02@@USH3Vec@@11AIAM_N@Z: %greenSH"}
!58 = distinct !{!58, !56, !"\01?LookupLightingNeuralLG@@YA_NV?$vector@M$02@@USH3Vec@@11AIAM_N@Z: %blueSH"}
!59 = distinct !{!59, !56, !"\01?LookupLightingNeuralLG@@YA_NV?$vector@M$02@@USH3Vec@@11AIAM_N@Z: %probeA"}
!60 = !{!50, !52, !53, !54, !59}
!61 = !{!62, !62, i64 0}
!62 = !{!"float", !47, i64 0}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 1}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 1}

