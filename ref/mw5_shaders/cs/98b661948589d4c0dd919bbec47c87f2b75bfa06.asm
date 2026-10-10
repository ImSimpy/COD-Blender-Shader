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
; shader hash: a3e096139feb489c2b57617477f7f644
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
;   [16 x i8] (type annotation not present)
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
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb1     1
;                                   cbuffer      NA          NA     CB1            cb4     1
;                                   cbuffer      NA          NA     CB2            cb3     1
;                                   sampler      NA          NA      S0             s1     1
;                                   texture    byte         r/o      T0             t0     1
;                                   texture    byte         r/o      T1             t1     1
;                                   texture    byte         r/o      T2             t2     1
;                                   texture    byte         r/o      T3             t3     1
;                                   texture    byte         r/o      T4             t8     1
;                                   texture    byte         r/o      T5             t4     1
;                                   texture    byte         r/o      T6             t5     1
;                                   texture    byte         r/o      T7             t6     1
;                                   texture    byte         r/o      T8             t7     1
;                                   texture     f32          2d      T9            t19     1
;                                   texture    byte         r/o     T10            t15     1
;                                   texture  struct         r/o     T11            t27     1
;                                   texture     u32         buf     T12            t26     1
;                                       UAV     f32         buf      U0             u3     1
;                                       UAV     f32         buf      U1             u4     1
;                                       UAV     u32         buf      U2             u5     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.StructuredBuffer<GfxGpuLightGridParams>" = type { %struct.GfxGpuLightGridParams }
%struct.GfxGpuLightGridParams = type { [7 x <4 x float>] }
%"class.Buffer<unsigned int>" = type { i32 }
%"class.RWBuffer<vector<float, 3> >" = type { <3 x float> }
%"class.RWBuffer<float>" = type { float }
%"class.RWBuffer<unsigned int>" = type { i32 }
%VolumetricLightGridConstants = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%GfxLGBoundConsts = type { i32, i32, i32, i32 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 26, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %22 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %23 = call i32 @dx.op.threadId.i32(i32 93, i32 2)  ; ThreadId(component)
  %24 = alloca [4 x i32], align 4
  %25 = alloca [4 x float], align 4
  %26 = alloca [4 x i32], align 4
  %27 = alloca [4 x float], align 4
  %28 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %29 = extractvalue %dx.types.CBufRet.i32 %28, 0
  %30 = extractvalue %dx.types.CBufRet.i32 %28, 1
  %31 = add i32 %29, 3
  %32 = add i32 %30, 3
  %33 = lshr i32 %31, 2
  %34 = lshr i32 %32, 2
  %35 = uitofp i32 %21 to float
  %36 = uitofp i32 %22 to float
  %37 = fadd fast float %35, 5.000000e-01
  %38 = fadd fast float %36, 5.000000e-01
  %39 = fmul fast float %37, 4.000000e+00
  %40 = fmul fast float %38, 4.000000e+00
  %41 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %42 = extractvalue %dx.types.CBufRet.f32 %41, 0
  %43 = extractvalue %dx.types.CBufRet.f32 %41, 1
  %44 = fmul fast float %39, %42
  %45 = fmul fast float %40, %43
  %46 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %17, float %44, float %45, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %47 = extractvalue %dx.types.ResRet.f32 %46, 0
  %48 = fcmp fast ogt float %47, -1.000000e+00
  %49 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %50 = extractvalue %dx.types.CBufRet.f32 %49, 1
  %51 = select i1 %48, float %50, float 1.000000e+00
  %52 = fadd fast float %47, 1.000000e+00
  %53 = fmul fast float %51, %52
  %54 = call float @dx.op.unary.f32(i32 6, float %53)  ; FAbs(value)
  %55 = fmul fast float %54, 0x3FEFFC0000000000
  %56 = fadd fast float %55, -1.600000e+01
  %57 = call float @dx.op.binary.f32(i32 35, float %56, float 0.000000e+00)  ; FMax(a,b)
  %58 = fmul fast float %44, 2.000000e+00
  %59 = fmul fast float %45, 2.000000e+00
  %60 = fsub fast float 1.000000e+00, %58
  %61 = fsub fast float 1.000000e+00, %59
  %62 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %63 = extractvalue %dx.types.CBufRet.f32 %62, 0
  %64 = extractvalue %dx.types.CBufRet.f32 %62, 1
  %65 = extractvalue %dx.types.CBufRet.f32 %62, 2
  %66 = fmul fast float %63, %60
  %67 = fmul fast float %64, %60
  %68 = fmul fast float %65, %60
  %69 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %70 = extractvalue %dx.types.CBufRet.f32 %69, 0
  %71 = extractvalue %dx.types.CBufRet.f32 %69, 1
  %72 = extractvalue %dx.types.CBufRet.f32 %69, 2
  %73 = fmul fast float %70, %61
  %74 = fmul fast float %71, %61
  %75 = fmul fast float %72, %61
  %76 = fadd fast float %73, %66
  %77 = fadd fast float %74, %67
  %78 = fadd fast float %75, %68
  %79 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %80 = extractvalue %dx.types.CBufRet.f32 %79, 0
  %81 = extractvalue %dx.types.CBufRet.f32 %79, 1
  %82 = extractvalue %dx.types.CBufRet.f32 %79, 2
  %83 = fadd fast float %76, %80
  %84 = fadd fast float %77, %81
  %85 = fadd fast float %78, %82
  %86 = fmul fast float %83, %57
  %87 = fmul fast float %84, %57
  %88 = fmul fast float %85, %57
  %89 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %90 = extractvalue %dx.types.CBufRet.f32 %89, 0
  %91 = extractvalue %dx.types.CBufRet.f32 %89, 1
  %92 = extractvalue %dx.types.CBufRet.f32 %89, 2
  %93 = fadd fast float %86, %90
  %94 = fadd fast float %87, %91
  %95 = fadd fast float %88, %92
  %96 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %97 = extractvalue %dx.types.CBufRet.i32 %96, 1
  %98 = icmp sgt i32 %97, -1
  br i1 %98, label %99, label %105, !dx.controlflow.hints !35

; <label>:99                                      ; preds = %0
  %100 = add i32 %97, %23
  %101 = mul i32 %100, %34
  %102 = add i32 %101, %22
  %103 = mul i32 %102, %33
  %104 = add i32 %103, %21
  br label %105

; <label>:105                                     ; preds = %99, %0
  %106 = phi i32 [ %104, %99 ], [ -1, %0 ]
  %107 = extractvalue %dx.types.CBufRet.i32 %96, 0
  %108 = icmp sgt i32 %107, -1
  br i1 %108, label %109, label %119, !dx.controlflow.hints !35

; <label>:109                                     ; preds = %105
  %110 = mul i32 %33, %34
  %111 = shl i32 %110, 1
  %112 = add i32 %107, %23
  %113 = mul i32 %112, %110
  %114 = mul i32 %33, %22
  %115 = add i32 %114, %21
  %116 = add i32 %115, %113
  %117 = mul i32 %111, %107
  %118 = add i32 %115, %117
  br label %119

; <label>:119                                     ; preds = %109, %105
  %120 = phi i32 [ %118, %109 ], [ -1, %105 ]
  %121 = phi i32 [ %116, %109 ], [ -1, %105 ]
  %122 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %123 = extractvalue %dx.types.CBufRet.i32 %122, 3
  br label %124

; <label>:124                                     ; preds = %140, %119
  %125 = phi i32 [ 0, %119 ], [ %141, %140 ]
  %126 = shl i32 %125, 4
  %127 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %123, i32 %126)  ; BufferLoad(srv,index,wot)
  %128 = extractvalue %dx.types.ResRet.f32 %127, 0
  %129 = extractvalue %dx.types.ResRet.f32 %127, 1
  %130 = call float @dx.op.dot2.f32(i32 54, float %128, float %129, float %128, float %129)  ; Dot2(ax,ay,bx,by)
  %131 = fsub fast float 1.000000e+00, %130
  %132 = call float @dx.op.unary.f32(i32 7, float %131)  ; Saturate(value)
  %133 = call float @dx.op.unary.f32(i32 24, float %132)  ; Sqrt(value)
  %134 = call float @dx.op.dot3.f32(i32 55, float %93, float %94, float %95, float %128, float %129, float %133)  ; Dot3(ax,ay,az,bx,by,bz)
  %135 = extractvalue %dx.types.ResRet.f32 %127, 2
  %136 = fcmp fast ole float %134, %135
  %137 = extractvalue %dx.types.ResRet.f32 %127, 3
  %138 = fcmp fast oge float %134, %137
  %139 = or i1 %136, %138
  br i1 %139, label %143, label %140, !dx.controlflow.hints !36

; <label>:140                                     ; preds = %124
  %141 = add nuw nsw i32 %125, 1
  %142 = icmp slt i32 %141, 7
  br i1 %142, label %124, label %143

; <label>:143                                     ; preds = %140, %124
  %144 = phi i1 [ false, %124 ], [ true, %140 ]
  br i1 %144, label %145, label %967, !dx.controlflow.hints !37

; <label>:145                                     ; preds = %143
  %146 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 397)  ; CBufferLoadLegacy(handle,regIndex)
  %147 = extractvalue %dx.types.CBufRet.i32 %146, 2
  %148 = and i32 %147, 1
  %149 = icmp eq i32 %148, 0
  %150 = icmp ne i32 %106, -1
  %151 = and i1 %150, %149
  %152 = extractvalue %dx.types.CBufRet.i32 %96, 3
  %153 = icmp ne i32 %152, 0
  %154 = and i1 %153, %151
  br i1 %154, label %155, label %158, !dx.controlflow.hints !38

; <label>:155                                     ; preds = %145
  %156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %106, i32 undef)  ; BufferLoad(srv,index,wot)
  %157 = extractvalue %dx.types.ResRet.i32 %156, 0
  br label %158

; <label>:158                                     ; preds = %155, %145
  %159 = phi i32 [ %157, %155 ], [ -1, %145 ]
  %160 = extractvalue %dx.types.CBufRet.i32 %122, 2
  %161 = extractvalue %dx.types.CBufRet.i32 %122, 1
  %162 = extractvalue %dx.types.CBufRet.i32 %122, 0
  %163 = getelementptr inbounds [4 x float], [4 x float]* %25, i32 0, i32 0
  store float 0.000000e+00, float* %163, align 4
  %164 = getelementptr inbounds [4 x float], [4 x float]* %25, i32 0, i32 1
  store float 0.000000e+00, float* %164, align 4
  %165 = getelementptr inbounds [4 x float], [4 x float]* %25, i32 0, i32 2
  store float 0.000000e+00, float* %165, align 4
  %166 = getelementptr inbounds [4 x float], [4 x float]* %25, i32 0, i32 3
  store float 0.000000e+00, float* %166, align 4
  %167 = icmp eq i32 %159, -1
  br i1 %167, label %168, label %319, !dx.controlflow.hints !39

; <label>:168                                     ; preds = %158
  %169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %170 = extractvalue %dx.types.ResRet.i32 %169, 0
  %171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %172 = extractvalue %dx.types.ResRet.i32 %171, 0
  %173 = extractvalue %dx.types.ResRet.i32 %171, 1
  %174 = extractvalue %dx.types.ResRet.i32 %171, 2
  %175 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %176 = extractvalue %dx.types.ResRet.f32 %175, 0
  %177 = extractvalue %dx.types.ResRet.f32 %175, 1
  %178 = extractvalue %dx.types.ResRet.f32 %175, 2
  %179 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %180 = extractvalue %dx.types.ResRet.f32 %179, 0
  %181 = extractvalue %dx.types.ResRet.f32 %179, 1
  %182 = extractvalue %dx.types.ResRet.f32 %179, 2
  %183 = fsub fast float %93, %176
  %184 = fsub fast float %94, %177
  %185 = fsub fast float %95, %178
  %186 = fptoui float %183 to i32
  %187 = fptoui float %184 to i32
  %188 = fptoui float %185 to i32
  %189 = fcmp fast olt float %93, %176
  %190 = fcmp fast olt float %94, %177
  %191 = fcmp fast olt float %95, %178
  %192 = or i1 %189, %190
  %193 = or i1 %191, %192
  %194 = fcmp fast oge float %93, %180
  %195 = fcmp fast oge float %94, %181
  %196 = fcmp fast oge float %95, %182
  %197 = or i1 %194, %195
  %198 = or i1 %196, %197
  %199 = or i1 %193, %198
  %200 = and i32 %172, 31
  %201 = lshr i32 %186, %200
  %202 = lshr i32 %187, %200
  %203 = lshr i32 %188, %200
  %204 = mul i32 %202, %170
  %205 = add i32 %204, %201
  %206 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %207 = extractvalue %dx.types.CBufRet.i32 %206, 0
  %208 = icmp ult i32 %205, %207
  br i1 %208, label %209, label %225, !dx.controlflow.hints !40

; <label>:209                                     ; preds = %168
  %210 = mul i32 %205, 12
  %211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %210, i32 undef)  ; BufferLoad(srv,index,wot)
  %212 = extractvalue %dx.types.ResRet.i32 %211, 0
  %213 = add i32 %210, 4
  %214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %213, i32 undef)  ; BufferLoad(srv,index,wot)
  %215 = extractvalue %dx.types.ResRet.i32 %214, 0
  %216 = add i32 %210, 8
  %217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %216, i32 undef)  ; BufferLoad(srv,index,wot)
  %218 = extractvalue %dx.types.ResRet.i32 %217, 0
  %219 = icmp ult i32 %203, %215
  %220 = icmp ugt i32 %203, %218
  %221 = or i1 %219, %220
  %222 = add i32 %212, %203
  %223 = sub i32 %222, %215
  %224 = select i1 %221, i32 -2147483648, i32 %223
  br label %225

; <label>:225                                     ; preds = %209, %168
  %226 = phi i32 [ %224, %209 ], [ -2147483648, %168 ]
  %227 = select i1 %199, i32 -2147483648, i32 %226
  %228 = icmp sgt i32 %227, -1
  %229 = and i32 %173, 31
  %230 = lshr i32 %186, %229
  %231 = lshr i32 %187, %229
  %232 = lshr i32 %188, %229
  %233 = and i32 %230, 3
  %234 = and i32 %232, 3
  %235 = shl nuw nsw i32 %234, 4
  %236 = shl i32 %231, 2
  %237 = and i32 %236, 12
  %238 = and i32 %235, 16
  %239 = or i32 %237, %233
  %240 = or i32 %239, %238
  %241 = shl i32 1, %240
  %242 = extractvalue %dx.types.CBufRet.i32 %206, 1
  %243 = icmp ult i32 %227, %242
  br i1 %243, label %244, label %262, !dx.controlflow.hints !41

; <label>:244                                     ; preds = %225
  %245 = lshr i32 %234, 1
  %246 = shl i32 %227, 4
  %247 = shl nuw nsw i32 %245, 2
  %248 = or i32 %246, %247
  %249 = or i32 %248, 8
  %250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %249, i32 undef)  ; BufferLoad(srv,index,wot)
  %251 = extractvalue %dx.types.ResRet.i32 %250, 0
  %252 = and i32 %251, %241
  %253 = icmp eq i32 %252, 0
  %254 = add i32 %241, -1
  %255 = and i32 %251, %254
  %256 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %255)  ; Countbits(value)
  %257 = or i32 %246, %247
  %258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %257, i32 undef)  ; BufferLoad(srv,index,wot)
  %259 = extractvalue %dx.types.ResRet.i32 %258, 0
  %260 = add i32 %259, %256
  %261 = select i1 %253, i32 -2147483648, i32 %260
  br label %262

; <label>:262                                     ; preds = %244, %225
  %263 = phi i32 [ %261, %244 ], [ -2147483648, %225 ]
  %264 = select i1 %228, i32 %263, i32 %227
  %265 = icmp sgt i32 %264, -1
  %266 = and i32 %174, 31
  %267 = lshr i32 %186, %266
  %268 = lshr i32 %187, %266
  %269 = lshr i32 %188, %266
  %270 = and i32 %267, 3
  %271 = and i32 %269, 3
  %272 = shl nuw nsw i32 %271, 4
  %273 = shl i32 %268, 2
  %274 = and i32 %273, 12
  %275 = and i32 %272, 16
  %276 = or i32 %274, %270
  %277 = or i32 %276, %275
  %278 = shl i32 1, %277
  %279 = icmp ult i32 %264, %242
  br i1 %279, label %280, label %298, !dx.controlflow.hints !41

; <label>:280                                     ; preds = %262
  %281 = lshr i32 %271, 1
  %282 = shl i32 %264, 4
  %283 = shl nuw nsw i32 %281, 2
  %284 = or i32 %282, %283
  %285 = or i32 %284, 8
  %286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %285, i32 undef)  ; BufferLoad(srv,index,wot)
  %287 = extractvalue %dx.types.ResRet.i32 %286, 0
  %288 = and i32 %287, %278
  %289 = icmp eq i32 %288, 0
  %290 = add i32 %278, -1
  %291 = and i32 %287, %290
  %292 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %291)  ; Countbits(value)
  %293 = or i32 %282, %283
  %294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %293, i32 undef)  ; BufferLoad(srv,index,wot)
  %295 = extractvalue %dx.types.ResRet.i32 %294, 0
  %296 = add i32 %295, %292
  %297 = select i1 %289, i32 -2147483648, i32 %296
  br label %298

; <label>:298                                     ; preds = %280, %262
  %299 = phi i32 [ %297, %280 ], [ -2147483648, %262 ]
  %300 = select i1 %265, i32 %299, i32 %264
  br i1 %199, label %315, label %301, !dx.controlflow.hints !42

; <label>:301                                     ; preds = %298
  %302 = icmp eq i32 %300, -2147483648
  %303 = icmp eq i32 %264, -2147483648
  %304 = select i1 %303, i32 %227, i32 %264
  %305 = select i1 %302, i32 %304, i32 %300
  %306 = icmp sgt i32 %305, -1
  %307 = icmp ne i32 %160, -1
  %308 = and i1 %307, %306
  %309 = select i1 %308, i32 %160, i32 0
  %310 = add i32 %305, %161
  %311 = add i32 %310, %309
  %312 = shl i32 %311, 2
  %313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %312, i32 undef)  ; BufferLoad(srv,index,wot)
  %314 = extractvalue %dx.types.ResRet.i32 %313, 0
  br label %315

; <label>:315                                     ; preds = %301, %298
  %316 = phi i32 [ %314, %301 ], [ -1, %298 ]
  %317 = icmp eq i32 %316, -1
  %318 = select i1 %317, i32 %162, i32 %316
  br label %319

; <label>:319                                     ; preds = %315, %158
  %320 = phi i32 [ %318, %315 ], [ %159, %158 ]
  %321 = icmp eq i32 %320, -1
  br i1 %321, label %470, label %322

; <label>:322                                     ; preds = %319
  br label %323

; <label>:323                                     ; preds = %461, %322
  %324 = phi i32 [ %462, %461 ], [ 0, %322 ]
  %325 = phi i32 [ %326, %461 ], [ -1, %322 ]
  %326 = phi i32 [ %457, %461 ], [ %320, %322 ]
  %327 = phi float [ %433, %461 ], [ 0.000000e+00, %322 ]
  %328 = phi float [ %434, %461 ], [ 0.000000e+00, %322 ]
  %329 = phi float [ %435, %461 ], [ 0.000000e+00, %322 ]
  %330 = phi float [ %438, %461 ], [ 0.000000e+00, %322 ]
  %331 = icmp ugt i32 %324, 50
  br i1 %331, label %464, label %332, !dx.controlflow.hints !43

; <label>:332                                     ; preds = %323
  %333 = shl i32 %326, 4
  %334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %333, i32 undef)  ; BufferLoad(srv,index,wot)
  %335 = extractvalue %dx.types.ResRet.i32 %334, 0
  %336 = extractvalue %dx.types.ResRet.i32 %334, 1
  %337 = extractvalue %dx.types.ResRet.i32 %334, 2
  %338 = extractvalue %dx.types.ResRet.i32 %334, 3
  %339 = and i32 %335, 2147483647
  %340 = mul nsw i32 %339, 12
  %341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %342 = extractvalue %dx.types.ResRet.i32 %341, 0
  %343 = extractvalue %dx.types.ResRet.i32 %341, 1
  %344 = extractvalue %dx.types.ResRet.i32 %341, 2
  %345 = and i32 %336, 2147483647
  %346 = mul nsw i32 %345, 12
  %347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %346, i32 undef)  ; BufferLoad(srv,index,wot)
  %348 = extractvalue %dx.types.ResRet.i32 %347, 0
  %349 = extractvalue %dx.types.ResRet.i32 %347, 1
  %350 = extractvalue %dx.types.ResRet.i32 %347, 2
  %351 = and i32 %337, 2147483647
  %352 = mul nsw i32 %351, 12
  %353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %352, i32 undef)  ; BufferLoad(srv,index,wot)
  %354 = extractvalue %dx.types.ResRet.i32 %353, 0
  %355 = extractvalue %dx.types.ResRet.i32 %353, 1
  %356 = extractvalue %dx.types.ResRet.i32 %353, 2
  %357 = and i32 %338, 2147483647
  %358 = mul nsw i32 %357, 12
  %359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %358, i32 undef)  ; BufferLoad(srv,index,wot)
  %360 = extractvalue %dx.types.ResRet.i32 %359, 0
  %361 = extractvalue %dx.types.ResRet.i32 %359, 1
  %362 = extractvalue %dx.types.ResRet.i32 %359, 2
  %363 = bitcast i32 %342 to float
  %364 = bitcast i32 %343 to float
  %365 = bitcast i32 %344 to float
  %366 = bitcast i32 %360 to float
  %367 = bitcast i32 %361 to float
  %368 = bitcast i32 %362 to float
  %369 = fsub fast float %363, %366
  %370 = fsub fast float %364, %367
  %371 = fsub fast float %365, %368
  %372 = bitcast i32 %348 to float
  %373 = bitcast i32 %349 to float
  %374 = bitcast i32 %350 to float
  %375 = fsub fast float %372, %366
  %376 = fsub fast float %373, %367
  %377 = fsub fast float %374, %368
  %378 = bitcast i32 %354 to float
  %379 = bitcast i32 %355 to float
  %380 = bitcast i32 %356 to float
  %381 = fsub fast float %378, %366
  %382 = fsub fast float %379, %367
  %383 = fsub fast float %380, %368
  %384 = fsub fast float %93, %366
  %385 = fsub fast float %94, %367
  %386 = fsub fast float %95, %368
  %387 = fmul fast float %376, %383
  %388 = fmul fast float %382, %377
  %389 = fsub fast float %387, %388
  %390 = fmul fast float %389, %369
  %391 = fmul fast float %375, %383
  %392 = fmul fast float %377, %381
  %393 = fsub fast float %391, %392
  %394 = fmul fast float %393, %370
  %395 = fsub fast float %390, %394
  %396 = fmul fast float %375, %382
  %397 = fmul fast float %376, %381
  %398 = fsub fast float %396, %397
  %399 = fmul fast float %398, %371
  %400 = fadd fast float %395, %399
  %401 = fdiv fast float 1.000000e+00, %400
  %402 = fmul fast float %389, %401
  %403 = fmul fast float %401, %393
  %404 = fsub fast float -0.000000e+00, %403
  %405 = fmul fast float %398, %401
  %406 = fmul fast float %370, %383
  %407 = fmul fast float %371, %382
  %408 = fsub fast float %406, %407
  %409 = fmul fast float %401, %408
  %410 = fsub fast float -0.000000e+00, %409
  %411 = fmul fast float %369, %383
  %412 = fmul fast float %381, %371
  %413 = fsub fast float %411, %412
  %414 = fmul fast float %413, %401
  %415 = fmul fast float %369, %382
  %416 = fmul fast float %370, %381
  %417 = fsub fast float %415, %416
  %418 = fmul fast float %401, %417
  %419 = fsub fast float -0.000000e+00, %418
  %420 = fmul fast float %370, %377
  %421 = fmul fast float %371, %376
  %422 = fsub fast float %420, %421
  %423 = fmul fast float %422, %401
  %424 = fmul fast float %369, %377
  %425 = fmul fast float %371, %375
  %426 = fsub fast float %424, %425
  %427 = fmul fast float %401, %426
  %428 = fsub fast float -0.000000e+00, %427
  %429 = fmul fast float %369, %376
  %430 = fmul fast float %370, %375
  %431 = fsub fast float %429, %430
  %432 = fmul fast float %431, %401
  %433 = call float @dx.op.dot3.f32(i32 55, float %402, float %404, float %405, float %384, float %385, float %386)  ; Dot3(ax,ay,az,bx,by,bz)
  %434 = call float @dx.op.dot3.f32(i32 55, float %410, float %414, float %419, float %384, float %385, float %386)  ; Dot3(ax,ay,az,bx,by,bz)
  %435 = call float @dx.op.dot3.f32(i32 55, float %423, float %428, float %432, float %384, float %385, float %386)  ; Dot3(ax,ay,az,bx,by,bz)
  %436 = fsub fast float 1.000000e+00, %433
  %437 = fsub fast float %436, %434
  %438 = fsub fast float %437, %435
  %439 = call float @dx.op.binary.f32(i32 36, float %433, float %434)  ; FMin(a,b)
  %440 = call float @dx.op.binary.f32(i32 36, float %439, float %435)  ; FMin(a,b)
  %441 = call float @dx.op.binary.f32(i32 36, float %440, float %438)  ; FMin(a,b)
  %442 = call float @dx.op.binary.f32(i32 35, float %433, float %434)  ; FMax(a,b)
  %443 = call float @dx.op.binary.f32(i32 35, float %442, float %435)  ; FMax(a,b)
  %444 = call float @dx.op.binary.f32(i32 35, float %443, float %438)  ; FMax(a,b)
  %445 = fcmp fast oge float %441, 0xBF50624DE0000000
  %446 = fcmp fast olt float %444, 0x3FF00068E0000000
  %447 = and i1 %445, %446
  br i1 %447, label %464, label %448, !dx.controlflow.hints !44

; <label>:448                                     ; preds = %332
  %449 = fcmp fast oeq float %441, %433
  %450 = fcmp fast oeq float %441, %434
  %451 = fcmp fast oeq float %441, %435
  %452 = select i1 %451, i32 8, i32 12
  %453 = select i1 %450, i32 4, i32 %452
  %454 = select i1 %449, i32 0, i32 %453
  %455 = or i32 %454, %333
  %456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %455, i32 undef)  ; BufferLoad(srv,index,wot)
  %457 = extractvalue %dx.types.ResRet.i32 %456, 0
  %458 = icmp ne i32 %325, -1
  %459 = icmp eq i32 %457, %325
  %460 = and i1 %458, %459
  br i1 %460, label %464, label %461, !dx.controlflow.hints !45

; <label>:461                                     ; preds = %448
  %462 = add nuw nsw i32 %324, 1
  %463 = icmp eq i32 %457, -1
  br i1 %463, label %464, label %323, !llvm.loop !46

; <label>:464                                     ; preds = %461, %448, %332, %323
  %465 = phi i32 [ %326, %448 ], [ %326, %332 ], [ -1, %461 ], [ -1, %323 ]
  %466 = phi float [ %433, %448 ], [ %433, %332 ], [ %433, %461 ], [ %327, %323 ]
  %467 = phi float [ %434, %448 ], [ %434, %332 ], [ %434, %461 ], [ %328, %323 ]
  %468 = phi float [ %435, %448 ], [ %435, %332 ], [ %435, %461 ], [ %329, %323 ]
  %469 = phi float [ %438, %448 ], [ %438, %332 ], [ %438, %461 ], [ %330, %323 ]
  br label %470

; <label>:470                                     ; preds = %464, %319
  %471 = phi i32 [ -1, %319 ], [ %465, %464 ]
  %472 = phi float [ 0.000000e+00, %319 ], [ %466, %464 ]
  %473 = phi float [ 0.000000e+00, %319 ], [ %467, %464 ]
  %474 = phi float [ 0.000000e+00, %319 ], [ %468, %464 ]
  %475 = phi float [ 0.000000e+00, %319 ], [ %469, %464 ]
  %476 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %472)  ; FMax(a,b)
  %477 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %473)  ; FMax(a,b)
  %478 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %474)  ; FMax(a,b)
  %479 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %475)  ; FMax(a,b)
  %480 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %476)  ; FMin(a,b)
  %481 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %477)  ; FMin(a,b)
  %482 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %478)  ; FMin(a,b)
  %483 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %479)  ; FMin(a,b)
  store float %480, float* %163, align 4
  store float %481, float* %164, align 4
  store float %482, float* %165, align 4
  store float %483, float* %166, align 4
  %484 = icmp eq i32 %471, -1
  br i1 %484, label %485, label %498, !dx.controlflow.hints !48

; <label>:485                                     ; preds = %470
  %486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %487 = extractvalue %dx.types.ResRet.i32 %486, 1
  %488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %489 = extractvalue %dx.types.ResRet.i32 %488, 0
  %490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %491 = extractvalue %dx.types.ResRet.i32 %490, 0
  %492 = and i32 %491, 65535
  %493 = call float @dx.op.legacyF16ToF32(i32 131, i32 %492)  ; LegacyF16ToF32(value)
  %494 = lshr i32 %489, 16
  %495 = call float @dx.op.legacyF16ToF32(i32 131, i32 %494)  ; LegacyF16ToF32(value)
  %496 = and i32 %487, 65535
  %497 = call float @dx.op.legacyF16ToF32(i32 131, i32 %496)  ; LegacyF16ToF32(value)
  br label %958

; <label>:498                                     ; preds = %470
  %499 = shl nsw i32 %471, 4
  %500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %499, i32 undef)  ; BufferLoad(srv,index,wot)
  %501 = extractvalue %dx.types.ResRet.i32 %500, 0
  %502 = extractvalue %dx.types.ResRet.i32 %500, 1
  %503 = extractvalue %dx.types.ResRet.i32 %500, 2
  %504 = extractvalue %dx.types.ResRet.i32 %500, 3
  %505 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 0
  store i32 %501, i32* %505, align 4
  %506 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 1
  store i32 %502, i32* %506, align 4
  %507 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 2
  store i32 %503, i32* %507, align 4
  %508 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 3
  store i32 %504, i32* %508, align 4
  %509 = getelementptr inbounds [4 x float], [4 x float]* %27, i32 0, i32 0
  store float 0.000000e+00, float* %509, align 4
  %510 = getelementptr inbounds [4 x float], [4 x float]* %27, i32 0, i32 1
  store float 0.000000e+00, float* %510, align 4
  %511 = getelementptr inbounds [4 x float], [4 x float]* %27, i32 0, i32 2
  store float 0.000000e+00, float* %511, align 4
  %512 = getelementptr inbounds [4 x float], [4 x float]* %27, i32 0, i32 3
  store float 0.000000e+00, float* %512, align 4
  %513 = icmp slt i32 %501, 0
  br i1 %513, label %514, label %604, !dx.controlflow.hints !49

; <label>:514                                     ; preds = %498
  %515 = fsub fast float 1.000000e+00, %480
  %516 = fdiv fast float 1.000000e+00, %515
  %517 = shl nsw i32 %471, 6
  %518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %517, i32 undef)  ; BufferLoad(srv,index,wot)
  %519 = extractvalue %dx.types.ResRet.i32 %518, 0
  %520 = extractvalue %dx.types.ResRet.i32 %518, 1
  %521 = extractvalue %dx.types.ResRet.i32 %518, 2
  %522 = extractvalue %dx.types.ResRet.i32 %518, 3
  %523 = fmul fast float %516, %483
  %524 = fmul fast float %516, %481
  %525 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 0
  store i32 %519, i32* %525, align 4
  %526 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 1
  store i32 %520, i32* %526, align 4
  %527 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 2
  store i32 %521, i32* %527, align 4
  %528 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 3
  store i32 %522, i32* %528, align 4
  %529 = fmul fast float %524, 4.000000e+00
  %530 = call float @dx.op.unary.f32(i32 27, float %529)  ; Round_ni(value)
  %531 = fmul fast float %523, 4.000000e+00
  %532 = call float @dx.op.unary.f32(i32 27, float %531)  ; Round_ni(value)
  %533 = fsub fast float 1.100000e+01, %530
  %534 = fmul fast float %530, 5.000000e-01
  %535 = fmul fast float %534, %533
  %536 = fadd fast float %532, 5.000000e-01
  %537 = fadd fast float %536, %535
  %538 = fptosi float %537 to i32
  %539 = fptosi float %530 to i32
  %540 = sub nsw i32 5, %539
  %541 = fmul fast float %532, 2.500000e-01
  %542 = fmul fast float %530, 2.500000e-01
  %543 = add nsw i32 %538, 1
  %544 = add nsw i32 %538, %540
  %545 = fsub fast float %523, %541
  %546 = fmul fast float %545, 4.000000e+00
  %547 = fsub fast float %524, %542
  %548 = fmul fast float %547, 4.000000e+00
  %549 = fadd fast float %545, %547
  %550 = fmul fast float %549, 4.000000e+00
  %551 = fcmp fast ogt float %550, 1.000000e+00
  br i1 %551, label %552, label %558, !dx.controlflow.hints !50

; <label>:552                                     ; preds = %514
  %553 = add nsw i32 %544, 1
  %554 = fadd fast float %548, -1.000000e+00
  %555 = fsub fast float -0.000000e+00, %554
  %556 = fadd fast float %546, -1.000000e+00
  %557 = fsub fast float -0.000000e+00, %556
  br label %558

; <label>:558                                     ; preds = %552, %514
  %559 = phi i32 [ %553, %552 ], [ %538, %514 ]
  %560 = phi i32 [ %543, %552 ], [ %544, %514 ]
  %561 = phi i32 [ %544, %552 ], [ %543, %514 ]
  %562 = phi float [ %557, %552 ], [ %548, %514 ]
  %563 = phi float [ %555, %552 ], [ %546, %514 ]
  %564 = fsub fast float 1.000000e+00, %562
  %565 = fsub fast float %564, %563
  %566 = lshr i32 %561, 2
  %567 = getelementptr [4 x i32], [4 x i32]* %24, i32 0, i32 %566
  %568 = load i32, i32* %567, align 4, !tbaa !51, !noalias !55
  %569 = shl i32 %561, 3
  %570 = and i32 %569, 24
  %571 = lshr i32 %568, %570
  %572 = and i32 %571, 255
  %573 = sitofp i32 %572 to float
  %574 = fmul fast float %563, 0x3F70101020000000
  %575 = fmul fast float %574, %573
  %576 = lshr i32 %560, 2
  %577 = getelementptr [4 x i32], [4 x i32]* %24, i32 0, i32 %576
  %578 = load i32, i32* %577, align 4, !tbaa !51, !noalias !55
  %579 = shl i32 %560, 3
  %580 = and i32 %579, 24
  %581 = lshr i32 %578, %580
  %582 = and i32 %581, 255
  %583 = sitofp i32 %582 to float
  %584 = fmul fast float %562, 0x3F70101020000000
  %585 = fmul fast float %584, %583
  %586 = lshr i32 %559, 2
  %587 = getelementptr [4 x i32], [4 x i32]* %24, i32 0, i32 %586
  %588 = load i32, i32* %587, align 4, !tbaa !51, !noalias !55
  %589 = shl i32 %559, 3
  %590 = and i32 %589, 24
  %591 = lshr i32 %588, %590
  %592 = and i32 %591, 255
  %593 = sitofp i32 %592 to float
  %594 = fmul fast float %565, 0x3F70101020000000
  %595 = fmul fast float %594, %593
  %596 = fsub fast float 1.000000e+00, %575
  %597 = fsub fast float %596, %585
  %598 = fsub fast float %597, %595
  %599 = fmul fast float %480, 2.000000e+01
  %600 = fadd fast float %599, 1.000000e+00
  %601 = fmul fast float %598, 2.000000e+01
  %602 = fsub fast float %600, %601
  %603 = call float @dx.op.unary.f32(i32 7, float %602)  ; Saturate(value)
  br label %604

; <label>:604                                     ; preds = %558, %498
  %605 = phi float [ %603, %558 ], [ 1.000000e+00, %498 ]
  store float %605, float* %509, align 4, !tbaa !69, !noalias !55
  %606 = icmp slt i32 %502, 0
  br i1 %606, label %607, label %698, !dx.controlflow.hints !49

; <label>:607                                     ; preds = %604
  %608 = fsub fast float 1.000000e+00, %481
  %609 = fdiv fast float 1.000000e+00, %608
  %610 = shl i32 %471, 6
  %611 = or i32 %610, 16
  %612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %611, i32 undef)  ; BufferLoad(srv,index,wot)
  %613 = extractvalue %dx.types.ResRet.i32 %612, 0
  %614 = extractvalue %dx.types.ResRet.i32 %612, 1
  %615 = extractvalue %dx.types.ResRet.i32 %612, 2
  %616 = extractvalue %dx.types.ResRet.i32 %612, 3
  %617 = fmul fast float %609, %480
  %618 = fmul fast float %609, %483
  %619 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 0
  store i32 %613, i32* %619, align 4
  %620 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 1
  store i32 %614, i32* %620, align 4
  %621 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 2
  store i32 %615, i32* %621, align 4
  %622 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 3
  store i32 %616, i32* %622, align 4
  %623 = fmul fast float %618, 4.000000e+00
  %624 = call float @dx.op.unary.f32(i32 27, float %623)  ; Round_ni(value)
  %625 = fmul fast float %617, 4.000000e+00
  %626 = call float @dx.op.unary.f32(i32 27, float %625)  ; Round_ni(value)
  %627 = fsub fast float 1.100000e+01, %624
  %628 = fmul fast float %624, 5.000000e-01
  %629 = fmul fast float %628, %627
  %630 = fadd fast float %626, 5.000000e-01
  %631 = fadd fast float %630, %629
  %632 = fptosi float %631 to i32
  %633 = fptosi float %624 to i32
  %634 = sub nsw i32 5, %633
  %635 = fmul fast float %626, 2.500000e-01
  %636 = fmul fast float %624, 2.500000e-01
  %637 = add nsw i32 %632, 1
  %638 = add nsw i32 %632, %634
  %639 = fsub fast float %617, %635
  %640 = fmul fast float %639, 4.000000e+00
  %641 = fsub fast float %618, %636
  %642 = fmul fast float %641, 4.000000e+00
  %643 = fadd fast float %639, %641
  %644 = fmul fast float %643, 4.000000e+00
  %645 = fcmp fast ogt float %644, 1.000000e+00
  br i1 %645, label %646, label %652, !dx.controlflow.hints !50

; <label>:646                                     ; preds = %607
  %647 = add nsw i32 %638, 1
  %648 = fadd fast float %642, -1.000000e+00
  %649 = fsub fast float -0.000000e+00, %648
  %650 = fadd fast float %640, -1.000000e+00
  %651 = fsub fast float -0.000000e+00, %650
  br label %652

; <label>:652                                     ; preds = %646, %607
  %653 = phi i32 [ %647, %646 ], [ %632, %607 ]
  %654 = phi i32 [ %637, %646 ], [ %638, %607 ]
  %655 = phi i32 [ %638, %646 ], [ %637, %607 ]
  %656 = phi float [ %651, %646 ], [ %642, %607 ]
  %657 = phi float [ %649, %646 ], [ %640, %607 ]
  %658 = fsub fast float 1.000000e+00, %656
  %659 = fsub fast float %658, %657
  %660 = lshr i32 %655, 2
  %661 = getelementptr [4 x i32], [4 x i32]* %24, i32 0, i32 %660
  %662 = load i32, i32* %661, align 4, !tbaa !51, !noalias !55
  %663 = shl i32 %655, 3
  %664 = and i32 %663, 24
  %665 = lshr i32 %662, %664
  %666 = and i32 %665, 255
  %667 = sitofp i32 %666 to float
  %668 = fmul fast float %657, 0x3F70101020000000
  %669 = fmul fast float %668, %667
  %670 = lshr i32 %654, 2
  %671 = getelementptr [4 x i32], [4 x i32]* %24, i32 0, i32 %670
  %672 = load i32, i32* %671, align 4, !tbaa !51, !noalias !55
  %673 = shl i32 %654, 3
  %674 = and i32 %673, 24
  %675 = lshr i32 %672, %674
  %676 = and i32 %675, 255
  %677 = sitofp i32 %676 to float
  %678 = fmul fast float %656, 0x3F70101020000000
  %679 = fmul fast float %678, %677
  %680 = lshr i32 %653, 2
  %681 = getelementptr [4 x i32], [4 x i32]* %24, i32 0, i32 %680
  %682 = load i32, i32* %681, align 4, !tbaa !51, !noalias !55
  %683 = shl i32 %653, 3
  %684 = and i32 %683, 24
  %685 = lshr i32 %682, %684
  %686 = and i32 %685, 255
  %687 = sitofp i32 %686 to float
  %688 = fmul fast float %659, 0x3F70101020000000
  %689 = fmul fast float %688, %687
  %690 = fsub fast float 1.000000e+00, %669
  %691 = fsub fast float %690, %679
  %692 = fsub fast float %691, %689
  %693 = fmul fast float %481, 2.000000e+01
  %694 = fadd fast float %693, 1.000000e+00
  %695 = fmul fast float %692, 2.000000e+01
  %696 = fsub fast float %694, %695
  %697 = call float @dx.op.unary.f32(i32 7, float %696)  ; Saturate(value)
  br label %698

; <label>:698                                     ; preds = %652, %604
  %699 = phi float [ %697, %652 ], [ 1.000000e+00, %604 ]
  store float %699, float* %510, align 4, !tbaa !69, !noalias !55
  %700 = fadd fast float %699, %605
  %701 = icmp slt i32 %503, 0
  br i1 %701, label %702, label %793, !dx.controlflow.hints !49

; <label>:702                                     ; preds = %698
  %703 = fsub fast float 1.000000e+00, %482
  %704 = fdiv fast float 1.000000e+00, %703
  %705 = shl i32 %471, 6
  %706 = or i32 %705, 32
  %707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %706, i32 undef)  ; BufferLoad(srv,index,wot)
  %708 = extractvalue %dx.types.ResRet.i32 %707, 0
  %709 = extractvalue %dx.types.ResRet.i32 %707, 1
  %710 = extractvalue %dx.types.ResRet.i32 %707, 2
  %711 = extractvalue %dx.types.ResRet.i32 %707, 3
  %712 = fmul fast float %704, %480
  %713 = fmul fast float %704, %481
  %714 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 0
  store i32 %708, i32* %714, align 4
  %715 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 1
  store i32 %709, i32* %715, align 4
  %716 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 2
  store i32 %710, i32* %716, align 4
  %717 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 3
  store i32 %711, i32* %717, align 4
  %718 = fmul fast float %713, 4.000000e+00
  %719 = call float @dx.op.unary.f32(i32 27, float %718)  ; Round_ni(value)
  %720 = fmul fast float %712, 4.000000e+00
  %721 = call float @dx.op.unary.f32(i32 27, float %720)  ; Round_ni(value)
  %722 = fsub fast float 1.100000e+01, %719
  %723 = fmul fast float %719, 5.000000e-01
  %724 = fmul fast float %723, %722
  %725 = fadd fast float %721, 5.000000e-01
  %726 = fadd fast float %725, %724
  %727 = fptosi float %726 to i32
  %728 = fptosi float %719 to i32
  %729 = sub nsw i32 5, %728
  %730 = fmul fast float %721, 2.500000e-01
  %731 = fmul fast float %719, 2.500000e-01
  %732 = add nsw i32 %727, 1
  %733 = add nsw i32 %727, %729
  %734 = fsub fast float %712, %730
  %735 = fmul fast float %734, 4.000000e+00
  %736 = fsub fast float %713, %731
  %737 = fmul fast float %736, 4.000000e+00
  %738 = fadd fast float %734, %736
  %739 = fmul fast float %738, 4.000000e+00
  %740 = fcmp fast ogt float %739, 1.000000e+00
  br i1 %740, label %741, label %747, !dx.controlflow.hints !50

; <label>:741                                     ; preds = %702
  %742 = add nsw i32 %733, 1
  %743 = fadd fast float %737, -1.000000e+00
  %744 = fsub fast float -0.000000e+00, %743
  %745 = fadd fast float %735, -1.000000e+00
  %746 = fsub fast float -0.000000e+00, %745
  br label %747

; <label>:747                                     ; preds = %741, %702
  %748 = phi i32 [ %742, %741 ], [ %727, %702 ]
  %749 = phi i32 [ %732, %741 ], [ %733, %702 ]
  %750 = phi i32 [ %733, %741 ], [ %732, %702 ]
  %751 = phi float [ %746, %741 ], [ %737, %702 ]
  %752 = phi float [ %744, %741 ], [ %735, %702 ]
  %753 = fsub fast float 1.000000e+00, %751
  %754 = fsub fast float %753, %752
  %755 = lshr i32 %750, 2
  %756 = getelementptr [4 x i32], [4 x i32]* %24, i32 0, i32 %755
  %757 = load i32, i32* %756, align 4, !tbaa !51, !noalias !55
  %758 = shl i32 %750, 3
  %759 = and i32 %758, 24
  %760 = lshr i32 %757, %759
  %761 = and i32 %760, 255
  %762 = sitofp i32 %761 to float
  %763 = fmul fast float %752, 0x3F70101020000000
  %764 = fmul fast float %763, %762
  %765 = lshr i32 %749, 2
  %766 = getelementptr [4 x i32], [4 x i32]* %24, i32 0, i32 %765
  %767 = load i32, i32* %766, align 4, !tbaa !51, !noalias !55
  %768 = shl i32 %749, 3
  %769 = and i32 %768, 24
  %770 = lshr i32 %767, %769
  %771 = and i32 %770, 255
  %772 = sitofp i32 %771 to float
  %773 = fmul fast float %751, 0x3F70101020000000
  %774 = fmul fast float %773, %772
  %775 = lshr i32 %748, 2
  %776 = getelementptr [4 x i32], [4 x i32]* %24, i32 0, i32 %775
  %777 = load i32, i32* %776, align 4, !tbaa !51, !noalias !55
  %778 = shl i32 %748, 3
  %779 = and i32 %778, 24
  %780 = lshr i32 %777, %779
  %781 = and i32 %780, 255
  %782 = sitofp i32 %781 to float
  %783 = fmul fast float %754, 0x3F70101020000000
  %784 = fmul fast float %783, %782
  %785 = fsub fast float 1.000000e+00, %764
  %786 = fsub fast float %785, %774
  %787 = fsub fast float %786, %784
  %788 = fmul fast float %482, 2.000000e+01
  %789 = fadd fast float %788, 1.000000e+00
  %790 = fmul fast float %787, 2.000000e+01
  %791 = fsub fast float %789, %790
  %792 = call float @dx.op.unary.f32(i32 7, float %791)  ; Saturate(value)
  br label %793

; <label>:793                                     ; preds = %747, %698
  %794 = phi float [ %792, %747 ], [ 1.000000e+00, %698 ]
  store float %794, float* %511, align 4, !tbaa !69, !noalias !55
  %795 = fadd fast float %700, %794
  %796 = icmp slt i32 %504, 0
  br i1 %796, label %797, label %888, !dx.controlflow.hints !49

; <label>:797                                     ; preds = %793
  %798 = fsub fast float 1.000000e+00, %483
  %799 = fdiv fast float 1.000000e+00, %798
  %800 = shl i32 %471, 6
  %801 = or i32 %800, 48
  %802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %801, i32 undef)  ; BufferLoad(srv,index,wot)
  %803 = extractvalue %dx.types.ResRet.i32 %802, 0
  %804 = extractvalue %dx.types.ResRet.i32 %802, 1
  %805 = extractvalue %dx.types.ResRet.i32 %802, 2
  %806 = extractvalue %dx.types.ResRet.i32 %802, 3
  %807 = fmul fast float %799, %480
  %808 = fmul fast float %799, %481
  %809 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 0
  store i32 %803, i32* %809, align 4
  %810 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 1
  store i32 %804, i32* %810, align 4
  %811 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 2
  store i32 %805, i32* %811, align 4
  %812 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 3
  store i32 %806, i32* %812, align 4
  %813 = fmul fast float %808, 4.000000e+00
  %814 = call float @dx.op.unary.f32(i32 27, float %813)  ; Round_ni(value)
  %815 = fmul fast float %807, 4.000000e+00
  %816 = call float @dx.op.unary.f32(i32 27, float %815)  ; Round_ni(value)
  %817 = fsub fast float 1.100000e+01, %814
  %818 = fmul fast float %814, 5.000000e-01
  %819 = fmul fast float %818, %817
  %820 = fadd fast float %816, 5.000000e-01
  %821 = fadd fast float %820, %819
  %822 = fptosi float %821 to i32
  %823 = fptosi float %814 to i32
  %824 = sub nsw i32 5, %823
  %825 = fmul fast float %816, 2.500000e-01
  %826 = fmul fast float %814, 2.500000e-01
  %827 = add nsw i32 %822, 1
  %828 = add nsw i32 %822, %824
  %829 = fsub fast float %807, %825
  %830 = fmul fast float %829, 4.000000e+00
  %831 = fsub fast float %808, %826
  %832 = fmul fast float %831, 4.000000e+00
  %833 = fadd fast float %829, %831
  %834 = fmul fast float %833, 4.000000e+00
  %835 = fcmp fast ogt float %834, 1.000000e+00
  br i1 %835, label %836, label %842, !dx.controlflow.hints !50

; <label>:836                                     ; preds = %797
  %837 = add nsw i32 %828, 1
  %838 = fadd fast float %832, -1.000000e+00
  %839 = fsub fast float -0.000000e+00, %838
  %840 = fadd fast float %830, -1.000000e+00
  %841 = fsub fast float -0.000000e+00, %840
  br label %842

; <label>:842                                     ; preds = %836, %797
  %843 = phi i32 [ %837, %836 ], [ %822, %797 ]
  %844 = phi i32 [ %827, %836 ], [ %828, %797 ]
  %845 = phi i32 [ %828, %836 ], [ %827, %797 ]
  %846 = phi float [ %841, %836 ], [ %832, %797 ]
  %847 = phi float [ %839, %836 ], [ %830, %797 ]
  %848 = fsub fast float 1.000000e+00, %846
  %849 = fsub fast float %848, %847
  %850 = lshr i32 %845, 2
  %851 = getelementptr [4 x i32], [4 x i32]* %24, i32 0, i32 %850
  %852 = load i32, i32* %851, align 4, !tbaa !51, !noalias !55
  %853 = shl i32 %845, 3
  %854 = and i32 %853, 24
  %855 = lshr i32 %852, %854
  %856 = and i32 %855, 255
  %857 = sitofp i32 %856 to float
  %858 = fmul fast float %847, 0x3F70101020000000
  %859 = fmul fast float %858, %857
  %860 = lshr i32 %844, 2
  %861 = getelementptr [4 x i32], [4 x i32]* %24, i32 0, i32 %860
  %862 = load i32, i32* %861, align 4, !tbaa !51, !noalias !55
  %863 = shl i32 %844, 3
  %864 = and i32 %863, 24
  %865 = lshr i32 %862, %864
  %866 = and i32 %865, 255
  %867 = sitofp i32 %866 to float
  %868 = fmul fast float %846, 0x3F70101020000000
  %869 = fmul fast float %868, %867
  %870 = lshr i32 %843, 2
  %871 = getelementptr [4 x i32], [4 x i32]* %24, i32 0, i32 %870
  %872 = load i32, i32* %871, align 4, !tbaa !51, !noalias !55
  %873 = shl i32 %843, 3
  %874 = and i32 %873, 24
  %875 = lshr i32 %872, %874
  %876 = and i32 %875, 255
  %877 = sitofp i32 %876 to float
  %878 = fmul fast float %849, 0x3F70101020000000
  %879 = fmul fast float %878, %877
  %880 = fsub fast float 1.000000e+00, %859
  %881 = fsub fast float %880, %869
  %882 = fsub fast float %881, %879
  %883 = fmul fast float %483, 2.000000e+01
  %884 = fadd fast float %883, 1.000000e+00
  %885 = fmul fast float %882, 2.000000e+01
  %886 = fsub fast float %884, %885
  %887 = call float @dx.op.unary.f32(i32 7, float %886)  ; Saturate(value)
  br label %888

; <label>:888                                     ; preds = %842, %793
  %889 = phi float [ %887, %842 ], [ 1.000000e+00, %793 ]
  store float %889, float* %512, align 4, !tbaa !69, !noalias !55
  %890 = fadd fast float %795, %889
  %891 = fcmp fast oeq float %890, 0.000000e+00
  br i1 %891, label %892, label %893, !dx.controlflow.hints !71

; <label>:892                                     ; preds = %888
  store float 2.500000e-01, float* %509, align 4
  store float 2.500000e-01, float* %510, align 4
  store float 2.500000e-01, float* %511, align 4
  store float 2.500000e-01, float* %512, align 4
  br label %893

; <label>:893                                     ; preds = %892, %888
  %894 = phi float [ 2.500000e-01, %892 ], [ %605, %888 ]
  %895 = phi i32 [ 0, %892 ], [ 1, %888 ]
  br label %896

; <label>:896                                     ; preds = %947, %893
  %897 = phi float [ %894, %893 ], [ %949, %947 ]
  %898 = phi float [ 0.000000e+00, %893 ], [ %940, %947 ]
  %899 = phi float [ 0.000000e+00, %893 ], [ %941, %947 ]
  %900 = phi float [ 0.000000e+00, %893 ], [ %942, %947 ]
  %901 = phi float [ 0.000000e+00, %893 ], [ %943, %947 ]
  %902 = phi float [ 0.000000e+00, %893 ], [ %944, %947 ]
  %903 = phi i32 [ 0, %893 ], [ %945, %947 ]
  %904 = fcmp fast ogt float %897, 0.000000e+00
  br i1 %904, label %905, label %939, !dx.controlflow.hints !72

; <label>:905                                     ; preds = %896
  %906 = getelementptr [4 x float], [4 x float]* %25, i32 0, i32 %903
  %907 = load float, float* %906, align 4, !tbaa !69, !noalias !55
  %908 = getelementptr [4 x i32], [4 x i32]* %26, i32 0, i32 %903
  %909 = load i32, i32* %908, align 4, !tbaa !51, !noalias !55
  %910 = fmul fast float %907, %897
  %911 = shl i32 %909, 5
  %912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %911, i32 undef)  ; BufferLoad(srv,index,wot)
  %913 = extractvalue %dx.types.ResRet.i32 %912, 0
  %914 = or i32 %911, 16
  %915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %914, i32 undef)  ; BufferLoad(srv,index,wot)
  %916 = extractvalue %dx.types.ResRet.i32 %915, 3
  %917 = shl i32 %913, 4
  %918 = and i32 %917, 32752
  %919 = call float @dx.op.legacyF16ToF32(i32 131, i32 %918)  ; LegacyF16ToF32(value)
  %920 = lshr i32 %913, 7
  %921 = and i32 %920, 32752
  %922 = call float @dx.op.legacyF16ToF32(i32 131, i32 %921)  ; LegacyF16ToF32(value)
  %923 = lshr i32 %913, 22
  %924 = shl nuw nsw i32 %923, 5
  %925 = call float @dx.op.legacyF16ToF32(i32 131, i32 %924)  ; LegacyF16ToF32(value)
  %926 = lshr i32 %916, 8
  %927 = and i32 %926, 255
  %928 = uitofp i32 %927 to float
  %929 = fmul fast float %919, %910
  %930 = fadd fast float %929, %898
  %931 = fmul fast float %922, %910
  %932 = fadd fast float %931, %899
  %933 = fmul fast float %925, %910
  %934 = fadd fast float %933, %900
  %935 = fmul fast float %910, 0x3F70101020000000
  %936 = fmul fast float %935, %928
  %937 = fadd fast float %936, %901
  %938 = fadd fast float %910, %902
  br label %939

; <label>:939                                     ; preds = %905, %896
  %940 = phi float [ %930, %905 ], [ %898, %896 ]
  %941 = phi float [ %932, %905 ], [ %899, %896 ]
  %942 = phi float [ %934, %905 ], [ %900, %896 ]
  %943 = phi float [ %937, %905 ], [ %901, %896 ]
  %944 = phi float [ %938, %905 ], [ %902, %896 ]
  %945 = add nuw nsw i32 %903, 1
  %946 = icmp eq i32 %945, 4
  br i1 %946, label %950, label %947

; <label>:947                                     ; preds = %939
  %948 = getelementptr [4 x float], [4 x float]* %27, i32 0, i32 %945
  %949 = load float, float* %948, align 4, !tbaa !69, !noalias !55
  br label %896

; <label>:950                                     ; preds = %939
  %951 = fcmp fast ogt float %944, 0.000000e+00
  %952 = fdiv fast float 1.000000e+00, %944
  %953 = select i1 %951, float %952, float 1.000000e+00
  %954 = fmul fast float %953, %940
  %955 = fmul fast float %953, %941
  %956 = fmul fast float %953, %942
  %957 = fmul fast float %953, %943
  br label %958

; <label>:958                                     ; preds = %950, %485
  %959 = phi float [ %493, %485 ], [ %954, %950 ]
  %960 = phi float [ %495, %485 ], [ %955, %950 ]
  %961 = phi float [ %497, %485 ], [ %956, %950 ]
  %962 = phi float [ 0.000000e+00, %485 ], [ %957, %950 ]
  %963 = phi i32 [ 1, %485 ], [ %895, %950 ]
  %964 = phi i32 [ -1, %485 ], [ %471, %950 ]
  %965 = icmp ne i32 %963, 0
  %966 = select i1 %965, float %962, float 3.125000e-02
  br label %980

; <label>:967                                     ; preds = %143
  %968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %969 = extractvalue %dx.types.ResRet.i32 %968, 1
  %970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %971 = extractvalue %dx.types.ResRet.i32 %970, 0
  %972 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %973 = extractvalue %dx.types.ResRet.i32 %972, 0
  %974 = and i32 %973, 65535
  %975 = call float @dx.op.legacyF16ToF32(i32 131, i32 %974)  ; LegacyF16ToF32(value)
  %976 = lshr i32 %971, 16
  %977 = call float @dx.op.legacyF16ToF32(i32 131, i32 %976)  ; LegacyF16ToF32(value)
  %978 = and i32 %969, 65535
  %979 = call float @dx.op.legacyF16ToF32(i32 131, i32 %978)  ; LegacyF16ToF32(value)
  br label %980

; <label>:980                                     ; preds = %967, %958
  %981 = phi float [ %979, %967 ], [ %961, %958 ]
  %982 = phi float [ %977, %967 ], [ %960, %958 ]
  %983 = phi float [ %975, %967 ], [ %959, %958 ]
  %984 = phi float [ 3.125000e-02, %967 ], [ %966, %958 ]
  %985 = phi i32 [ -1, %967 ], [ %964, %958 ]
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %121, i32 undef, i32 %985, i32 %985, i32 %985, i32 %985, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %2, i32 %121, i32 undef, float %984, float %984, float %984, float %984, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %986 = fmul fast float %983, 0x3FD20DD760000000
  %987 = fmul fast float %982, 0x3FD20DD760000000
  %988 = fmul fast float %981, 0x3FD20DD760000000
  %989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %990 = extractvalue %dx.types.CBufRet.f32 %989, 3
  %991 = fmul fast float %986, %990
  %992 = fmul fast float %987, %990
  %993 = fmul fast float %988, %990
  %994 = extractvalue %dx.types.CBufRet.f32 %989, 0
  %995 = fmul fast float %991, %994
  %996 = fmul fast float %992, %994
  %997 = fmul fast float %993, %994
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %120, i32 undef, float %995, float %996, float %997, float %995, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #2

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

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind
declare void @dx.op.bufferStore.f32(i32, %dx.types.Handle, i32, i32, float, float, float, float, i8) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #1

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
!4 = !{!5, !22, !26, !30}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !17, !18, !20}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!8 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!9 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 3, i32 1, i32 11, i32 0, null}
!10 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 8, i32 1, i32 11, i32 0, null}
!11 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 4, i32 1, i32 11, i32 0, null}
!12 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 5, i32 1, i32 11, i32 0, null}
!13 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 6, i32 1, i32 11, i32 0, null}
!14 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 7, i32 1, i32 11, i32 0, null}
!15 = !{i32 9, %"class.Texture2D<float>"* undef, !"", i32 0, i32 19, i32 1, i32 2, i32 0, !16}
!16 = !{i32 0, i32 9}
!17 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 15, i32 1, i32 11, i32 0, null}
!18 = !{i32 11, %"class.StructuredBuffer<GfxGpuLightGridParams>"* undef, !"", i32 0, i32 27, i32 1, i32 12, i32 0, !19}
!19 = !{i32 1, i32 112}
!20 = !{i32 12, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 26, i32 1, i32 10, i32 0, !21}
!21 = !{i32 0, i32 5}
!22 = !{!23, !24, !25}
!23 = !{i32 0, %"class.RWBuffer<vector<float, 3> >"* undef, !"", i32 0, i32 3, i32 1, i32 10, i1 false, i1 false, i1 false, !16}
!24 = !{i32 1, %"class.RWBuffer<float>"* undef, !"", i32 0, i32 4, i32 1, i32 10, i1 false, i1 false, i1 false, !16}
!25 = !{i32 2, %"class.RWBuffer<unsigned int>"* undef, !"", i32 0, i32 5, i32 1, i32 10, i1 false, i1 false, i1 false, !21}
!26 = !{!27, !28, !29}
!27 = !{i32 0, %VolumetricLightGridConstants* undef, !"", i32 0, i32 1, i32 1, i32 32, null}
!28 = !{i32 1, %GfxLGBoundConsts* undef, !"", i32 0, i32 4, i32 1, i32 16, null}
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
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !47}
!47 = !{!"llvm.loop.unroll.disable"}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = !{!52, !52, i64 0}
!52 = !{!"int", !53, i64 0}
!53 = !{!"omnipotent char", !54, i64 0}
!54 = !{!"Simple C/C++ TBAA"}
!55 = !{!56, !58, !59, !60, !61, !62, !63, !65, !66, !67, !68}
!56 = distinct !{!56, !57, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %probeR"}
!57 = distinct !{!57, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z"}
!58 = distinct !{!58, !57, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %probeG"}
!59 = distinct !{!59, !57, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %probeB"}
!60 = distinct !{!60, !57, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %probeA"}
!61 = distinct !{!61, !57, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %primaryVisibility"}
!62 = distinct !{!62, !57, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %usedTet"}
!63 = distinct !{!63, !64, !"\01?LookupLighting@@YA_NV?$vector@M$02@@USH3Vec@@11AIAMIAIAI_N@Z: %redSH"}
!64 = distinct !{!64, !"\01?LookupLighting@@YA_NV?$vector@M$02@@USH3Vec@@11AIAMIAIAI_N@Z"}
!65 = distinct !{!65, !64, !"\01?LookupLighting@@YA_NV?$vector@M$02@@USH3Vec@@11AIAMIAIAI_N@Z: %greenSH"}
!66 = distinct !{!66, !64, !"\01?LookupLighting@@YA_NV?$vector@M$02@@USH3Vec@@11AIAMIAIAI_N@Z: %blueSH"}
!67 = distinct !{!67, !64, !"\01?LookupLighting@@YA_NV?$vector@M$02@@USH3Vec@@11AIAMIAIAI_N@Z: %probeA"}
!68 = distinct !{!68, !64, !"\01?LookupLighting@@YA_NV?$vector@M$02@@USH3Vec@@11AIAMIAIAI_N@Z: %usedTet"}
!69 = !{!70, !70, i64 0}
!70 = !{!"float", !53, i64 0}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 2}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 2}

