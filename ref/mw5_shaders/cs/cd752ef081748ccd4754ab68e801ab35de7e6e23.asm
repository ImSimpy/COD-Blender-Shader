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
; shader hash: a56807f7c3b6ef0e34dba5970b543c45
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
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb1     1
;                                   cbuffer      NA          NA     CB1            cb4     1
;                                   cbuffer      NA          NA     CB2            cb3     1
;                                   sampler      NA          NA      S0             s1     1
;                                   sampler      NA          NA      S1             s2     1
;                                   texture    byte         r/o      T0             t0     1
;                                   texture    byte         r/o      T1             t1     1
;                                   texture    byte         r/o      T2             t2     1
;                                   texture    byte         r/o      T3             t3     1
;                                   texture    byte         r/o      T4             t8     1
;                                   texture    byte         r/o      T5             t4     1
;                                   texture    byte         r/o      T6             t5     1
;                                   texture    byte         r/o      T7             t6     1
;                                   texture    byte         r/o      T8             t7     1
;                                   texture     f32     2darray      T9            t32     1
;                                   texture     f32          3d     T10            t31     1
;                                   texture     f32          2d     T11            t30     1
;                                   texture     f32          2d     T12            t29     1
;                                   texture     u32          2d     T13            t22     1
;                                   texture     f32          3d     T14            t23     1
;                                   texture     f32          2d     T15            t19     1
;                                   texture    byte         r/o     T16            t15     1
;                                       UAV     u32          3d      U0             u4     1
;                                       UAV     f32          2d      U1             u5     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%struct.ByteAddressBuffer = type { i32 }
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
%"class.RWTexture3D<unsigned int>" = type { i32 }
%"class.RWTexture2D<vector<float, 3> >" = type { <3 x float> }
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

define void @cs_scene_luma_sh_sample_lightgrid_isotropic_skylight() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 23, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 29, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %26 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %27 = call i32 @dx.op.threadId.i32(i32 93, i32 2)  ; ThreadId(component)
  %28 = alloca [4 x i32], align 4
  %29 = alloca [4 x float], align 4
  %30 = alloca [4 x i32], align 4
  %31 = alloca [4 x float], align 4
  %32 = uitofp i32 %25 to float
  %33 = uitofp i32 %26 to float
  %34 = fadd fast float %32, 5.000000e-01
  %35 = fadd fast float %33, 5.000000e-01
  %36 = fmul fast float %34, 4.000000e+00
  %37 = fmul fast float %35, 4.000000e+00
  %38 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %39 = extractvalue %dx.types.CBufRet.f32 %38, 0
  %40 = extractvalue %dx.types.CBufRet.f32 %38, 1
  %41 = fmul fast float %36, %39
  %42 = fmul fast float %37, %40
  %43 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %21, float %41, float %42, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %44 = extractvalue %dx.types.ResRet.f32 %43, 0
  %45 = fcmp fast ogt float %44, -1.000000e+00
  %46 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %47 = extractvalue %dx.types.CBufRet.f32 %46, 1
  %48 = select i1 %45, float %47, float 1.000000e+00
  %49 = fadd fast float %44, 1.000000e+00
  %50 = fmul fast float %48, %49
  %51 = call float @dx.op.unary.f32(i32 6, float %50)  ; FAbs(value)
  %52 = fmul fast float %51, 0x3FEFFC0000000000
  %53 = fadd fast float %52, -1.600000e+01
  %54 = call float @dx.op.binary.f32(i32 35, float %53, float 0.000000e+00)  ; FMax(a,b)
  %55 = fmul fast float %41, 2.000000e+00
  %56 = fmul fast float %42, 2.000000e+00
  %57 = fsub fast float 1.000000e+00, %55
  %58 = fsub fast float 1.000000e+00, %56
  %59 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %60 = extractvalue %dx.types.CBufRet.f32 %59, 0
  %61 = extractvalue %dx.types.CBufRet.f32 %59, 1
  %62 = extractvalue %dx.types.CBufRet.f32 %59, 2
  %63 = fmul fast float %60, %57
  %64 = fmul fast float %61, %57
  %65 = fmul fast float %62, %57
  %66 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %67 = extractvalue %dx.types.CBufRet.f32 %66, 0
  %68 = extractvalue %dx.types.CBufRet.f32 %66, 1
  %69 = extractvalue %dx.types.CBufRet.f32 %66, 2
  %70 = fmul fast float %67, %58
  %71 = fmul fast float %68, %58
  %72 = fmul fast float %69, %58
  %73 = fadd fast float %70, %63
  %74 = fadd fast float %71, %64
  %75 = fadd fast float %72, %65
  %76 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %77 = extractvalue %dx.types.CBufRet.f32 %76, 0
  %78 = extractvalue %dx.types.CBufRet.f32 %76, 1
  %79 = extractvalue %dx.types.CBufRet.f32 %76, 2
  %80 = fadd fast float %73, %77
  %81 = fadd fast float %74, %78
  %82 = fadd fast float %75, %79
  %83 = fmul fast float %80, %54
  %84 = fmul fast float %81, %54
  %85 = fmul fast float %82, %54
  %86 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %87 = extractvalue %dx.types.CBufRet.f32 %86, 0
  %88 = extractvalue %dx.types.CBufRet.f32 %86, 1
  %89 = extractvalue %dx.types.CBufRet.f32 %86, 2
  %90 = fadd fast float %83, %87
  %91 = fadd fast float %84, %88
  %92 = fadd fast float %85, %89
  %93 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 397)  ; CBufferLoadLegacy(handle,regIndex)
  %94 = extractvalue %dx.types.CBufRet.i32 %93, 2
  %95 = and i32 %94, 1
  %96 = icmp eq i32 %95, 0
  %97 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %98 = extractvalue %dx.types.CBufRet.i32 %97, 3
  %99 = icmp ne i32 %98, 0
  %100 = and i1 %96, %99
  br i1 %100, label %101, label %104, !dx.controlflow.hints !38

; <label>:101                                     ; preds = %0
  %102 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %2, i32 undef, i32 %25, i32 %26, i32 %27, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %103 = extractvalue %dx.types.ResRet.i32 %102, 0
  br label %104

; <label>:104                                     ; preds = %101, %0
  %105 = phi i32 [ %103, %101 ], [ -1, %0 ]
  %106 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %107 = extractvalue %dx.types.CBufRet.i32 %106, 0
  %108 = icmp eq i32 %107, 1
  br i1 %108, label %109, label %139, !dx.controlflow.hints !39

; <label>:109                                     ; preds = %104
  %110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %111 = extractvalue %dx.types.CBufRet.f32 %110, 0
  %112 = extractvalue %dx.types.CBufRet.f32 %110, 1
  %113 = fsub fast float %90, %111
  %114 = fsub fast float %91, %112
  %115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %116 = extractvalue %dx.types.CBufRet.f32 %115, 0
  %117 = extractvalue %dx.types.CBufRet.f32 %115, 1
  %118 = fmul fast float %113, %116
  %119 = fmul fast float %114, %117
  %120 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %20, float %118, float %119, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %121 = extractvalue %dx.types.ResRet.f32 %120, 0
  %122 = fcmp fast ogt float %121, 0.000000e+00
  %123 = extractvalue %dx.types.CBufRet.i32 %106, 3
  %124 = icmp ne i32 %123, 0
  %125 = and i1 %122, %124
  br i1 %125, label %126, label %139, !dx.controlflow.hints !40

; <label>:126                                     ; preds = %109
  %127 = fmul fast float %83, %83
  %128 = fmul fast float %84, %84
  %129 = fadd fast float %127, %128
  %130 = uitofp i32 %123 to float
  %131 = fmul fast float %130, %130
  %132 = fcmp fast ogt float %129, %131
  br i1 %132, label %139, label %133, !dx.controlflow.hints !41

; <label>:133                                     ; preds = %126
  %134 = call float @dx.op.unary.f32(i32 24, float %129)  ; Sqrt(value)
  %135 = fsub fast float %130, %134
  %136 = fmul fast float %135, 0x3F75555560000000
  %137 = call float @dx.op.unary.f32(i32 7, float %136)  ; Saturate(value)
  %138 = call float @dx.op.binary.f32(i32 36, float %137, float %121)  ; FMin(a,b)
  br label %139

; <label>:139                                     ; preds = %133, %126, %109, %104
  %140 = phi float [ 1.000000e+00, %104 ], [ %138, %133 ], [ %121, %109 ], [ 0.000000e+00, %126 ]
  %141 = fcmp fast ogt float %140, 0.000000e+00
  br i1 %141, label %142, label %929, !dx.controlflow.hints !42

; <label>:142                                     ; preds = %139
  %143 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %144 = extractvalue %dx.types.CBufRet.i32 %143, 2
  %145 = extractvalue %dx.types.CBufRet.i32 %143, 1
  %146 = extractvalue %dx.types.CBufRet.i32 %143, 0
  %147 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 0
  store float 0.000000e+00, float* %147, align 4
  %148 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 1
  store float 0.000000e+00, float* %148, align 4
  %149 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 2
  store float 0.000000e+00, float* %149, align 4
  %150 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 3
  store float 0.000000e+00, float* %150, align 4
  %151 = icmp eq i32 %105, -1
  br i1 %151, label %152, label %303, !dx.controlflow.hints !43

; <label>:152                                     ; preds = %142
  %153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %154 = extractvalue %dx.types.ResRet.i32 %153, 0
  %155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %156 = extractvalue %dx.types.ResRet.i32 %155, 0
  %157 = extractvalue %dx.types.ResRet.i32 %155, 1
  %158 = extractvalue %dx.types.ResRet.i32 %155, 2
  %159 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %160 = extractvalue %dx.types.ResRet.f32 %159, 0
  %161 = extractvalue %dx.types.ResRet.f32 %159, 1
  %162 = extractvalue %dx.types.ResRet.f32 %159, 2
  %163 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %164 = extractvalue %dx.types.ResRet.f32 %163, 0
  %165 = extractvalue %dx.types.ResRet.f32 %163, 1
  %166 = extractvalue %dx.types.ResRet.f32 %163, 2
  %167 = fsub fast float %90, %160
  %168 = fsub fast float %91, %161
  %169 = fsub fast float %92, %162
  %170 = fptoui float %167 to i32
  %171 = fptoui float %168 to i32
  %172 = fptoui float %169 to i32
  %173 = fcmp fast olt float %90, %160
  %174 = fcmp fast olt float %91, %161
  %175 = fcmp fast olt float %92, %162
  %176 = or i1 %173, %174
  %177 = or i1 %175, %176
  %178 = fcmp fast oge float %90, %164
  %179 = fcmp fast oge float %91, %165
  %180 = fcmp fast oge float %92, %166
  %181 = or i1 %178, %179
  %182 = or i1 %180, %181
  %183 = or i1 %177, %182
  %184 = and i32 %156, 31
  %185 = lshr i32 %170, %184
  %186 = lshr i32 %171, %184
  %187 = lshr i32 %172, %184
  %188 = mul i32 %186, %154
  %189 = add i32 %188, %185
  %190 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %191 = extractvalue %dx.types.CBufRet.i32 %190, 0
  %192 = icmp ult i32 %189, %191
  br i1 %192, label %193, label %209, !dx.controlflow.hints !44

; <label>:193                                     ; preds = %152
  %194 = mul i32 %189, 12
  %195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %194, i32 undef)  ; BufferLoad(srv,index,wot)
  %196 = extractvalue %dx.types.ResRet.i32 %195, 0
  %197 = add i32 %194, 4
  %198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %197, i32 undef)  ; BufferLoad(srv,index,wot)
  %199 = extractvalue %dx.types.ResRet.i32 %198, 0
  %200 = add i32 %194, 8
  %201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %200, i32 undef)  ; BufferLoad(srv,index,wot)
  %202 = extractvalue %dx.types.ResRet.i32 %201, 0
  %203 = icmp ult i32 %187, %199
  %204 = icmp ugt i32 %187, %202
  %205 = or i1 %203, %204
  %206 = add i32 %196, %187
  %207 = sub i32 %206, %199
  %208 = select i1 %205, i32 -2147483648, i32 %207
  br label %209

; <label>:209                                     ; preds = %193, %152
  %210 = phi i32 [ %208, %193 ], [ -2147483648, %152 ]
  %211 = select i1 %183, i32 -2147483648, i32 %210
  %212 = icmp sgt i32 %211, -1
  %213 = and i32 %157, 31
  %214 = lshr i32 %170, %213
  %215 = lshr i32 %171, %213
  %216 = lshr i32 %172, %213
  %217 = and i32 %214, 3
  %218 = and i32 %216, 3
  %219 = shl nuw nsw i32 %218, 4
  %220 = shl i32 %215, 2
  %221 = and i32 %220, 12
  %222 = and i32 %219, 16
  %223 = or i32 %221, %217
  %224 = or i32 %223, %222
  %225 = shl i32 1, %224
  %226 = extractvalue %dx.types.CBufRet.i32 %190, 1
  %227 = icmp ult i32 %211, %226
  br i1 %227, label %228, label %246, !dx.controlflow.hints !45

; <label>:228                                     ; preds = %209
  %229 = lshr i32 %218, 1
  %230 = shl i32 %211, 4
  %231 = shl nuw nsw i32 %229, 2
  %232 = or i32 %230, %231
  %233 = or i32 %232, 8
  %234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %233, i32 undef)  ; BufferLoad(srv,index,wot)
  %235 = extractvalue %dx.types.ResRet.i32 %234, 0
  %236 = and i32 %235, %225
  %237 = icmp eq i32 %236, 0
  %238 = add i32 %225, -1
  %239 = and i32 %235, %238
  %240 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %239)  ; Countbits(value)
  %241 = or i32 %230, %231
  %242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %241, i32 undef)  ; BufferLoad(srv,index,wot)
  %243 = extractvalue %dx.types.ResRet.i32 %242, 0
  %244 = add i32 %243, %240
  %245 = select i1 %237, i32 -2147483648, i32 %244
  br label %246

; <label>:246                                     ; preds = %228, %209
  %247 = phi i32 [ %245, %228 ], [ -2147483648, %209 ]
  %248 = select i1 %212, i32 %247, i32 %211
  %249 = icmp sgt i32 %248, -1
  %250 = and i32 %158, 31
  %251 = lshr i32 %170, %250
  %252 = lshr i32 %171, %250
  %253 = lshr i32 %172, %250
  %254 = and i32 %251, 3
  %255 = and i32 %253, 3
  %256 = shl nuw nsw i32 %255, 4
  %257 = shl i32 %252, 2
  %258 = and i32 %257, 12
  %259 = and i32 %256, 16
  %260 = or i32 %258, %254
  %261 = or i32 %260, %259
  %262 = shl i32 1, %261
  %263 = icmp ult i32 %248, %226
  br i1 %263, label %264, label %282, !dx.controlflow.hints !45

; <label>:264                                     ; preds = %246
  %265 = lshr i32 %255, 1
  %266 = shl i32 %248, 4
  %267 = shl nuw nsw i32 %265, 2
  %268 = or i32 %266, %267
  %269 = or i32 %268, 8
  %270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %269, i32 undef)  ; BufferLoad(srv,index,wot)
  %271 = extractvalue %dx.types.ResRet.i32 %270, 0
  %272 = and i32 %271, %262
  %273 = icmp eq i32 %272, 0
  %274 = add i32 %262, -1
  %275 = and i32 %271, %274
  %276 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %275)  ; Countbits(value)
  %277 = or i32 %266, %267
  %278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %277, i32 undef)  ; BufferLoad(srv,index,wot)
  %279 = extractvalue %dx.types.ResRet.i32 %278, 0
  %280 = add i32 %279, %276
  %281 = select i1 %273, i32 -2147483648, i32 %280
  br label %282

; <label>:282                                     ; preds = %264, %246
  %283 = phi i32 [ %281, %264 ], [ -2147483648, %246 ]
  %284 = select i1 %249, i32 %283, i32 %248
  br i1 %183, label %299, label %285, !dx.controlflow.hints !46

; <label>:285                                     ; preds = %282
  %286 = icmp eq i32 %284, -2147483648
  %287 = icmp eq i32 %248, -2147483648
  %288 = select i1 %287, i32 %211, i32 %248
  %289 = select i1 %286, i32 %288, i32 %284
  %290 = icmp sgt i32 %289, -1
  %291 = icmp ne i32 %144, -1
  %292 = and i1 %291, %290
  %293 = select i1 %292, i32 %144, i32 0
  %294 = add i32 %289, %145
  %295 = add i32 %294, %293
  %296 = shl i32 %295, 2
  %297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %296, i32 undef)  ; BufferLoad(srv,index,wot)
  %298 = extractvalue %dx.types.ResRet.i32 %297, 0
  br label %299

; <label>:299                                     ; preds = %285, %282
  %300 = phi i32 [ %298, %285 ], [ -1, %282 ]
  %301 = icmp eq i32 %300, -1
  %302 = select i1 %301, i32 %146, i32 %300
  br label %303

; <label>:303                                     ; preds = %299, %142
  %304 = phi i32 [ %302, %299 ], [ %105, %142 ]
  %305 = icmp eq i32 %304, -1
  br i1 %305, label %454, label %306

; <label>:306                                     ; preds = %303
  br label %307

; <label>:307                                     ; preds = %445, %306
  %308 = phi i32 [ %446, %445 ], [ 0, %306 ]
  %309 = phi i32 [ %310, %445 ], [ -1, %306 ]
  %310 = phi i32 [ %441, %445 ], [ %304, %306 ]
  %311 = phi float [ %417, %445 ], [ 0.000000e+00, %306 ]
  %312 = phi float [ %418, %445 ], [ 0.000000e+00, %306 ]
  %313 = phi float [ %419, %445 ], [ 0.000000e+00, %306 ]
  %314 = phi float [ %422, %445 ], [ 0.000000e+00, %306 ]
  %315 = icmp ugt i32 %308, 50
  br i1 %315, label %448, label %316, !dx.controlflow.hints !47

; <label>:316                                     ; preds = %307
  %317 = shl i32 %310, 4
  %318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %317, i32 undef)  ; BufferLoad(srv,index,wot)
  %319 = extractvalue %dx.types.ResRet.i32 %318, 0
  %320 = extractvalue %dx.types.ResRet.i32 %318, 1
  %321 = extractvalue %dx.types.ResRet.i32 %318, 2
  %322 = extractvalue %dx.types.ResRet.i32 %318, 3
  %323 = and i32 %319, 2147483647
  %324 = mul nsw i32 %323, 12
  %325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %324, i32 undef)  ; BufferLoad(srv,index,wot)
  %326 = extractvalue %dx.types.ResRet.i32 %325, 0
  %327 = extractvalue %dx.types.ResRet.i32 %325, 1
  %328 = extractvalue %dx.types.ResRet.i32 %325, 2
  %329 = and i32 %320, 2147483647
  %330 = mul nsw i32 %329, 12
  %331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %330, i32 undef)  ; BufferLoad(srv,index,wot)
  %332 = extractvalue %dx.types.ResRet.i32 %331, 0
  %333 = extractvalue %dx.types.ResRet.i32 %331, 1
  %334 = extractvalue %dx.types.ResRet.i32 %331, 2
  %335 = and i32 %321, 2147483647
  %336 = mul nsw i32 %335, 12
  %337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %336, i32 undef)  ; BufferLoad(srv,index,wot)
  %338 = extractvalue %dx.types.ResRet.i32 %337, 0
  %339 = extractvalue %dx.types.ResRet.i32 %337, 1
  %340 = extractvalue %dx.types.ResRet.i32 %337, 2
  %341 = and i32 %322, 2147483647
  %342 = mul nsw i32 %341, 12
  %343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %342, i32 undef)  ; BufferLoad(srv,index,wot)
  %344 = extractvalue %dx.types.ResRet.i32 %343, 0
  %345 = extractvalue %dx.types.ResRet.i32 %343, 1
  %346 = extractvalue %dx.types.ResRet.i32 %343, 2
  %347 = bitcast i32 %326 to float
  %348 = bitcast i32 %327 to float
  %349 = bitcast i32 %328 to float
  %350 = bitcast i32 %344 to float
  %351 = bitcast i32 %345 to float
  %352 = bitcast i32 %346 to float
  %353 = fsub fast float %347, %350
  %354 = fsub fast float %348, %351
  %355 = fsub fast float %349, %352
  %356 = bitcast i32 %332 to float
  %357 = bitcast i32 %333 to float
  %358 = bitcast i32 %334 to float
  %359 = fsub fast float %356, %350
  %360 = fsub fast float %357, %351
  %361 = fsub fast float %358, %352
  %362 = bitcast i32 %338 to float
  %363 = bitcast i32 %339 to float
  %364 = bitcast i32 %340 to float
  %365 = fsub fast float %362, %350
  %366 = fsub fast float %363, %351
  %367 = fsub fast float %364, %352
  %368 = fsub fast float %90, %350
  %369 = fsub fast float %91, %351
  %370 = fsub fast float %92, %352
  %371 = fmul fast float %360, %367
  %372 = fmul fast float %366, %361
  %373 = fsub fast float %371, %372
  %374 = fmul fast float %373, %353
  %375 = fmul fast float %359, %367
  %376 = fmul fast float %361, %365
  %377 = fsub fast float %375, %376
  %378 = fmul fast float %377, %354
  %379 = fsub fast float %374, %378
  %380 = fmul fast float %359, %366
  %381 = fmul fast float %360, %365
  %382 = fsub fast float %380, %381
  %383 = fmul fast float %382, %355
  %384 = fadd fast float %379, %383
  %385 = fdiv fast float 1.000000e+00, %384
  %386 = fmul fast float %373, %385
  %387 = fmul fast float %385, %377
  %388 = fsub fast float -0.000000e+00, %387
  %389 = fmul fast float %382, %385
  %390 = fmul fast float %354, %367
  %391 = fmul fast float %355, %366
  %392 = fsub fast float %390, %391
  %393 = fmul fast float %385, %392
  %394 = fsub fast float -0.000000e+00, %393
  %395 = fmul fast float %353, %367
  %396 = fmul fast float %365, %355
  %397 = fsub fast float %395, %396
  %398 = fmul fast float %397, %385
  %399 = fmul fast float %353, %366
  %400 = fmul fast float %354, %365
  %401 = fsub fast float %399, %400
  %402 = fmul fast float %385, %401
  %403 = fsub fast float -0.000000e+00, %402
  %404 = fmul fast float %354, %361
  %405 = fmul fast float %355, %360
  %406 = fsub fast float %404, %405
  %407 = fmul fast float %406, %385
  %408 = fmul fast float %353, %361
  %409 = fmul fast float %355, %359
  %410 = fsub fast float %408, %409
  %411 = fmul fast float %385, %410
  %412 = fsub fast float -0.000000e+00, %411
  %413 = fmul fast float %353, %360
  %414 = fmul fast float %354, %359
  %415 = fsub fast float %413, %414
  %416 = fmul fast float %415, %385
  %417 = call float @dx.op.dot3.f32(i32 55, float %386, float %388, float %389, float %368, float %369, float %370)  ; Dot3(ax,ay,az,bx,by,bz)
  %418 = call float @dx.op.dot3.f32(i32 55, float %394, float %398, float %403, float %368, float %369, float %370)  ; Dot3(ax,ay,az,bx,by,bz)
  %419 = call float @dx.op.dot3.f32(i32 55, float %407, float %412, float %416, float %368, float %369, float %370)  ; Dot3(ax,ay,az,bx,by,bz)
  %420 = fsub fast float 1.000000e+00, %417
  %421 = fsub fast float %420, %418
  %422 = fsub fast float %421, %419
  %423 = call float @dx.op.binary.f32(i32 36, float %417, float %418)  ; FMin(a,b)
  %424 = call float @dx.op.binary.f32(i32 36, float %423, float %419)  ; FMin(a,b)
  %425 = call float @dx.op.binary.f32(i32 36, float %424, float %422)  ; FMin(a,b)
  %426 = call float @dx.op.binary.f32(i32 35, float %417, float %418)  ; FMax(a,b)
  %427 = call float @dx.op.binary.f32(i32 35, float %426, float %419)  ; FMax(a,b)
  %428 = call float @dx.op.binary.f32(i32 35, float %427, float %422)  ; FMax(a,b)
  %429 = fcmp fast oge float %425, 0xBF50624DE0000000
  %430 = fcmp fast olt float %428, 0x3FF00068E0000000
  %431 = and i1 %429, %430
  br i1 %431, label %448, label %432, !dx.controlflow.hints !48

; <label>:432                                     ; preds = %316
  %433 = fcmp fast oeq float %425, %417
  %434 = fcmp fast oeq float %425, %418
  %435 = fcmp fast oeq float %425, %419
  %436 = select i1 %435, i32 8, i32 12
  %437 = select i1 %434, i32 4, i32 %436
  %438 = select i1 %433, i32 0, i32 %437
  %439 = or i32 %438, %317
  %440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %441 = extractvalue %dx.types.ResRet.i32 %440, 0
  %442 = icmp ne i32 %309, -1
  %443 = icmp eq i32 %441, %309
  %444 = and i1 %442, %443
  br i1 %444, label %448, label %445, !dx.controlflow.hints !49

; <label>:445                                     ; preds = %432
  %446 = add nuw nsw i32 %308, 1
  %447 = icmp eq i32 %441, -1
  br i1 %447, label %448, label %307, !llvm.loop !50

; <label>:448                                     ; preds = %445, %432, %316, %307
  %449 = phi i32 [ %310, %432 ], [ %310, %316 ], [ -1, %445 ], [ -1, %307 ]
  %450 = phi float [ %417, %432 ], [ %417, %316 ], [ %417, %445 ], [ %311, %307 ]
  %451 = phi float [ %418, %432 ], [ %418, %316 ], [ %418, %445 ], [ %312, %307 ]
  %452 = phi float [ %419, %432 ], [ %419, %316 ], [ %419, %445 ], [ %313, %307 ]
  %453 = phi float [ %422, %432 ], [ %422, %316 ], [ %422, %445 ], [ %314, %307 ]
  br label %454

; <label>:454                                     ; preds = %448, %303
  %455 = phi i32 [ -1, %303 ], [ %449, %448 ]
  %456 = phi float [ 0.000000e+00, %303 ], [ %450, %448 ]
  %457 = phi float [ 0.000000e+00, %303 ], [ %451, %448 ]
  %458 = phi float [ 0.000000e+00, %303 ], [ %452, %448 ]
  %459 = phi float [ 0.000000e+00, %303 ], [ %453, %448 ]
  %460 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %456)  ; FMax(a,b)
  %461 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %457)  ; FMax(a,b)
  %462 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %458)  ; FMax(a,b)
  %463 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %459)  ; FMax(a,b)
  %464 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %460)  ; FMin(a,b)
  %465 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %461)  ; FMin(a,b)
  %466 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %462)  ; FMin(a,b)
  %467 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %463)  ; FMin(a,b)
  store float %464, float* %147, align 4
  store float %465, float* %148, align 4
  store float %466, float* %149, align 4
  store float %467, float* %150, align 4
  %468 = icmp eq i32 %455, -1
  br i1 %468, label %469, label %482, !dx.controlflow.hints !52

; <label>:469                                     ; preds = %454
  %470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %471 = extractvalue %dx.types.ResRet.i32 %470, 1
  %472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %473 = extractvalue %dx.types.ResRet.i32 %472, 0
  %474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %475 = extractvalue %dx.types.ResRet.i32 %474, 0
  %476 = and i32 %475, 65535
  %477 = call float @dx.op.legacyF16ToF32(i32 131, i32 %476)  ; LegacyF16ToF32(value)
  %478 = lshr i32 %473, 16
  %479 = call float @dx.op.legacyF16ToF32(i32 131, i32 %478)  ; LegacyF16ToF32(value)
  %480 = and i32 %471, 65535
  %481 = call float @dx.op.legacyF16ToF32(i32 131, i32 %480)  ; LegacyF16ToF32(value)
  br label %929

; <label>:482                                     ; preds = %454
  %483 = shl nsw i32 %455, 4
  %484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %483, i32 undef)  ; BufferLoad(srv,index,wot)
  %485 = extractvalue %dx.types.ResRet.i32 %484, 0
  %486 = extractvalue %dx.types.ResRet.i32 %484, 1
  %487 = extractvalue %dx.types.ResRet.i32 %484, 2
  %488 = extractvalue %dx.types.ResRet.i32 %484, 3
  %489 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 0
  store i32 %485, i32* %489, align 4
  %490 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 1
  store i32 %486, i32* %490, align 4
  %491 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 2
  store i32 %487, i32* %491, align 4
  %492 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 3
  store i32 %488, i32* %492, align 4
  %493 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 0
  store float 0.000000e+00, float* %493, align 4
  %494 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 1
  store float 0.000000e+00, float* %494, align 4
  %495 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 2
  store float 0.000000e+00, float* %495, align 4
  %496 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 3
  store float 0.000000e+00, float* %496, align 4
  %497 = icmp slt i32 %485, 0
  br i1 %497, label %498, label %588, !dx.controlflow.hints !53

; <label>:498                                     ; preds = %482
  %499 = fsub fast float 1.000000e+00, %464
  %500 = fdiv fast float 1.000000e+00, %499
  %501 = shl nsw i32 %455, 6
  %502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %501, i32 undef)  ; BufferLoad(srv,index,wot)
  %503 = extractvalue %dx.types.ResRet.i32 %502, 0
  %504 = extractvalue %dx.types.ResRet.i32 %502, 1
  %505 = extractvalue %dx.types.ResRet.i32 %502, 2
  %506 = extractvalue %dx.types.ResRet.i32 %502, 3
  %507 = fmul fast float %500, %467
  %508 = fmul fast float %500, %465
  %509 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 0
  store i32 %503, i32* %509, align 4
  %510 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 1
  store i32 %504, i32* %510, align 4
  %511 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 2
  store i32 %505, i32* %511, align 4
  %512 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 3
  store i32 %506, i32* %512, align 4
  %513 = fmul fast float %508, 4.000000e+00
  %514 = call float @dx.op.unary.f32(i32 27, float %513)  ; Round_ni(value)
  %515 = fmul fast float %507, 4.000000e+00
  %516 = call float @dx.op.unary.f32(i32 27, float %515)  ; Round_ni(value)
  %517 = fsub fast float 1.100000e+01, %514
  %518 = fmul fast float %514, 5.000000e-01
  %519 = fmul fast float %518, %517
  %520 = fadd fast float %516, 5.000000e-01
  %521 = fadd fast float %520, %519
  %522 = fptosi float %521 to i32
  %523 = fptosi float %514 to i32
  %524 = sub nsw i32 5, %523
  %525 = fmul fast float %516, 2.500000e-01
  %526 = fmul fast float %514, 2.500000e-01
  %527 = add nsw i32 %522, 1
  %528 = add nsw i32 %522, %524
  %529 = fsub fast float %507, %525
  %530 = fmul fast float %529, 4.000000e+00
  %531 = fsub fast float %508, %526
  %532 = fmul fast float %531, 4.000000e+00
  %533 = fadd fast float %529, %531
  %534 = fmul fast float %533, 4.000000e+00
  %535 = fcmp fast ogt float %534, 1.000000e+00
  br i1 %535, label %536, label %542, !dx.controlflow.hints !54

; <label>:536                                     ; preds = %498
  %537 = add nsw i32 %528, 1
  %538 = fadd fast float %532, -1.000000e+00
  %539 = fsub fast float -0.000000e+00, %538
  %540 = fadd fast float %530, -1.000000e+00
  %541 = fsub fast float -0.000000e+00, %540
  br label %542

; <label>:542                                     ; preds = %536, %498
  %543 = phi i32 [ %537, %536 ], [ %522, %498 ]
  %544 = phi i32 [ %527, %536 ], [ %528, %498 ]
  %545 = phi i32 [ %528, %536 ], [ %527, %498 ]
  %546 = phi float [ %541, %536 ], [ %532, %498 ]
  %547 = phi float [ %539, %536 ], [ %530, %498 ]
  %548 = fsub fast float 1.000000e+00, %546
  %549 = fsub fast float %548, %547
  %550 = lshr i32 %545, 2
  %551 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %550
  %552 = load i32, i32* %551, align 4, !tbaa !55, !noalias !59
  %553 = shl i32 %545, 3
  %554 = and i32 %553, 24
  %555 = lshr i32 %552, %554
  %556 = and i32 %555, 255
  %557 = sitofp i32 %556 to float
  %558 = fmul fast float %547, 0x3F70101020000000
  %559 = fmul fast float %558, %557
  %560 = lshr i32 %544, 2
  %561 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %560
  %562 = load i32, i32* %561, align 4, !tbaa !55, !noalias !59
  %563 = shl i32 %544, 3
  %564 = and i32 %563, 24
  %565 = lshr i32 %562, %564
  %566 = and i32 %565, 255
  %567 = sitofp i32 %566 to float
  %568 = fmul fast float %546, 0x3F70101020000000
  %569 = fmul fast float %568, %567
  %570 = lshr i32 %543, 2
  %571 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %570
  %572 = load i32, i32* %571, align 4, !tbaa !55, !noalias !59
  %573 = shl i32 %543, 3
  %574 = and i32 %573, 24
  %575 = lshr i32 %572, %574
  %576 = and i32 %575, 255
  %577 = sitofp i32 %576 to float
  %578 = fmul fast float %549, 0x3F70101020000000
  %579 = fmul fast float %578, %577
  %580 = fsub fast float 1.000000e+00, %559
  %581 = fsub fast float %580, %569
  %582 = fsub fast float %581, %579
  %583 = fmul fast float %464, 2.000000e+01
  %584 = fadd fast float %583, 1.000000e+00
  %585 = fmul fast float %582, 2.000000e+01
  %586 = fsub fast float %584, %585
  %587 = call float @dx.op.unary.f32(i32 7, float %586)  ; Saturate(value)
  br label %588

; <label>:588                                     ; preds = %542, %482
  %589 = phi float [ %587, %542 ], [ 1.000000e+00, %482 ]
  store float %589, float* %493, align 4, !tbaa !73, !noalias !59
  %590 = icmp slt i32 %486, 0
  br i1 %590, label %591, label %682, !dx.controlflow.hints !53

; <label>:591                                     ; preds = %588
  %592 = fsub fast float 1.000000e+00, %465
  %593 = fdiv fast float 1.000000e+00, %592
  %594 = shl i32 %455, 6
  %595 = or i32 %594, 16
  %596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %595, i32 undef)  ; BufferLoad(srv,index,wot)
  %597 = extractvalue %dx.types.ResRet.i32 %596, 0
  %598 = extractvalue %dx.types.ResRet.i32 %596, 1
  %599 = extractvalue %dx.types.ResRet.i32 %596, 2
  %600 = extractvalue %dx.types.ResRet.i32 %596, 3
  %601 = fmul fast float %593, %464
  %602 = fmul fast float %593, %467
  %603 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 0
  store i32 %597, i32* %603, align 4
  %604 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 1
  store i32 %598, i32* %604, align 4
  %605 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 2
  store i32 %599, i32* %605, align 4
  %606 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 3
  store i32 %600, i32* %606, align 4
  %607 = fmul fast float %602, 4.000000e+00
  %608 = call float @dx.op.unary.f32(i32 27, float %607)  ; Round_ni(value)
  %609 = fmul fast float %601, 4.000000e+00
  %610 = call float @dx.op.unary.f32(i32 27, float %609)  ; Round_ni(value)
  %611 = fsub fast float 1.100000e+01, %608
  %612 = fmul fast float %608, 5.000000e-01
  %613 = fmul fast float %612, %611
  %614 = fadd fast float %610, 5.000000e-01
  %615 = fadd fast float %614, %613
  %616 = fptosi float %615 to i32
  %617 = fptosi float %608 to i32
  %618 = sub nsw i32 5, %617
  %619 = fmul fast float %610, 2.500000e-01
  %620 = fmul fast float %608, 2.500000e-01
  %621 = add nsw i32 %616, 1
  %622 = add nsw i32 %616, %618
  %623 = fsub fast float %601, %619
  %624 = fmul fast float %623, 4.000000e+00
  %625 = fsub fast float %602, %620
  %626 = fmul fast float %625, 4.000000e+00
  %627 = fadd fast float %623, %625
  %628 = fmul fast float %627, 4.000000e+00
  %629 = fcmp fast ogt float %628, 1.000000e+00
  br i1 %629, label %630, label %636, !dx.controlflow.hints !54

; <label>:630                                     ; preds = %591
  %631 = add nsw i32 %622, 1
  %632 = fadd fast float %626, -1.000000e+00
  %633 = fsub fast float -0.000000e+00, %632
  %634 = fadd fast float %624, -1.000000e+00
  %635 = fsub fast float -0.000000e+00, %634
  br label %636

; <label>:636                                     ; preds = %630, %591
  %637 = phi i32 [ %631, %630 ], [ %616, %591 ]
  %638 = phi i32 [ %621, %630 ], [ %622, %591 ]
  %639 = phi i32 [ %622, %630 ], [ %621, %591 ]
  %640 = phi float [ %635, %630 ], [ %626, %591 ]
  %641 = phi float [ %633, %630 ], [ %624, %591 ]
  %642 = fsub fast float 1.000000e+00, %640
  %643 = fsub fast float %642, %641
  %644 = lshr i32 %639, 2
  %645 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %644
  %646 = load i32, i32* %645, align 4, !tbaa !55, !noalias !59
  %647 = shl i32 %639, 3
  %648 = and i32 %647, 24
  %649 = lshr i32 %646, %648
  %650 = and i32 %649, 255
  %651 = sitofp i32 %650 to float
  %652 = fmul fast float %641, 0x3F70101020000000
  %653 = fmul fast float %652, %651
  %654 = lshr i32 %638, 2
  %655 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %654
  %656 = load i32, i32* %655, align 4, !tbaa !55, !noalias !59
  %657 = shl i32 %638, 3
  %658 = and i32 %657, 24
  %659 = lshr i32 %656, %658
  %660 = and i32 %659, 255
  %661 = sitofp i32 %660 to float
  %662 = fmul fast float %640, 0x3F70101020000000
  %663 = fmul fast float %662, %661
  %664 = lshr i32 %637, 2
  %665 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %664
  %666 = load i32, i32* %665, align 4, !tbaa !55, !noalias !59
  %667 = shl i32 %637, 3
  %668 = and i32 %667, 24
  %669 = lshr i32 %666, %668
  %670 = and i32 %669, 255
  %671 = sitofp i32 %670 to float
  %672 = fmul fast float %643, 0x3F70101020000000
  %673 = fmul fast float %672, %671
  %674 = fsub fast float 1.000000e+00, %653
  %675 = fsub fast float %674, %663
  %676 = fsub fast float %675, %673
  %677 = fmul fast float %465, 2.000000e+01
  %678 = fadd fast float %677, 1.000000e+00
  %679 = fmul fast float %676, 2.000000e+01
  %680 = fsub fast float %678, %679
  %681 = call float @dx.op.unary.f32(i32 7, float %680)  ; Saturate(value)
  br label %682

; <label>:682                                     ; preds = %636, %588
  %683 = phi float [ %681, %636 ], [ 1.000000e+00, %588 ]
  store float %683, float* %494, align 4, !tbaa !73, !noalias !59
  %684 = fadd fast float %683, %589
  %685 = icmp slt i32 %487, 0
  br i1 %685, label %686, label %777, !dx.controlflow.hints !53

; <label>:686                                     ; preds = %682
  %687 = fsub fast float 1.000000e+00, %466
  %688 = fdiv fast float 1.000000e+00, %687
  %689 = shl i32 %455, 6
  %690 = or i32 %689, 32
  %691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %690, i32 undef)  ; BufferLoad(srv,index,wot)
  %692 = extractvalue %dx.types.ResRet.i32 %691, 0
  %693 = extractvalue %dx.types.ResRet.i32 %691, 1
  %694 = extractvalue %dx.types.ResRet.i32 %691, 2
  %695 = extractvalue %dx.types.ResRet.i32 %691, 3
  %696 = fmul fast float %688, %464
  %697 = fmul fast float %688, %465
  %698 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 0
  store i32 %692, i32* %698, align 4
  %699 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 1
  store i32 %693, i32* %699, align 4
  %700 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 2
  store i32 %694, i32* %700, align 4
  %701 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 3
  store i32 %695, i32* %701, align 4
  %702 = fmul fast float %697, 4.000000e+00
  %703 = call float @dx.op.unary.f32(i32 27, float %702)  ; Round_ni(value)
  %704 = fmul fast float %696, 4.000000e+00
  %705 = call float @dx.op.unary.f32(i32 27, float %704)  ; Round_ni(value)
  %706 = fsub fast float 1.100000e+01, %703
  %707 = fmul fast float %703, 5.000000e-01
  %708 = fmul fast float %707, %706
  %709 = fadd fast float %705, 5.000000e-01
  %710 = fadd fast float %709, %708
  %711 = fptosi float %710 to i32
  %712 = fptosi float %703 to i32
  %713 = sub nsw i32 5, %712
  %714 = fmul fast float %705, 2.500000e-01
  %715 = fmul fast float %703, 2.500000e-01
  %716 = add nsw i32 %711, 1
  %717 = add nsw i32 %711, %713
  %718 = fsub fast float %696, %714
  %719 = fmul fast float %718, 4.000000e+00
  %720 = fsub fast float %697, %715
  %721 = fmul fast float %720, 4.000000e+00
  %722 = fadd fast float %718, %720
  %723 = fmul fast float %722, 4.000000e+00
  %724 = fcmp fast ogt float %723, 1.000000e+00
  br i1 %724, label %725, label %731, !dx.controlflow.hints !54

; <label>:725                                     ; preds = %686
  %726 = add nsw i32 %717, 1
  %727 = fadd fast float %721, -1.000000e+00
  %728 = fsub fast float -0.000000e+00, %727
  %729 = fadd fast float %719, -1.000000e+00
  %730 = fsub fast float -0.000000e+00, %729
  br label %731

; <label>:731                                     ; preds = %725, %686
  %732 = phi i32 [ %726, %725 ], [ %711, %686 ]
  %733 = phi i32 [ %716, %725 ], [ %717, %686 ]
  %734 = phi i32 [ %717, %725 ], [ %716, %686 ]
  %735 = phi float [ %730, %725 ], [ %721, %686 ]
  %736 = phi float [ %728, %725 ], [ %719, %686 ]
  %737 = fsub fast float 1.000000e+00, %735
  %738 = fsub fast float %737, %736
  %739 = lshr i32 %734, 2
  %740 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %739
  %741 = load i32, i32* %740, align 4, !tbaa !55, !noalias !59
  %742 = shl i32 %734, 3
  %743 = and i32 %742, 24
  %744 = lshr i32 %741, %743
  %745 = and i32 %744, 255
  %746 = sitofp i32 %745 to float
  %747 = fmul fast float %736, 0x3F70101020000000
  %748 = fmul fast float %747, %746
  %749 = lshr i32 %733, 2
  %750 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %749
  %751 = load i32, i32* %750, align 4, !tbaa !55, !noalias !59
  %752 = shl i32 %733, 3
  %753 = and i32 %752, 24
  %754 = lshr i32 %751, %753
  %755 = and i32 %754, 255
  %756 = sitofp i32 %755 to float
  %757 = fmul fast float %735, 0x3F70101020000000
  %758 = fmul fast float %757, %756
  %759 = lshr i32 %732, 2
  %760 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %759
  %761 = load i32, i32* %760, align 4, !tbaa !55, !noalias !59
  %762 = shl i32 %732, 3
  %763 = and i32 %762, 24
  %764 = lshr i32 %761, %763
  %765 = and i32 %764, 255
  %766 = sitofp i32 %765 to float
  %767 = fmul fast float %738, 0x3F70101020000000
  %768 = fmul fast float %767, %766
  %769 = fsub fast float 1.000000e+00, %748
  %770 = fsub fast float %769, %758
  %771 = fsub fast float %770, %768
  %772 = fmul fast float %466, 2.000000e+01
  %773 = fadd fast float %772, 1.000000e+00
  %774 = fmul fast float %771, 2.000000e+01
  %775 = fsub fast float %773, %774
  %776 = call float @dx.op.unary.f32(i32 7, float %775)  ; Saturate(value)
  br label %777

; <label>:777                                     ; preds = %731, %682
  %778 = phi float [ %776, %731 ], [ 1.000000e+00, %682 ]
  store float %778, float* %495, align 4, !tbaa !73, !noalias !59
  %779 = fadd fast float %684, %778
  %780 = icmp slt i32 %488, 0
  br i1 %780, label %781, label %872, !dx.controlflow.hints !53

; <label>:781                                     ; preds = %777
  %782 = fsub fast float 1.000000e+00, %467
  %783 = fdiv fast float 1.000000e+00, %782
  %784 = shl i32 %455, 6
  %785 = or i32 %784, 48
  %786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %785, i32 undef)  ; BufferLoad(srv,index,wot)
  %787 = extractvalue %dx.types.ResRet.i32 %786, 0
  %788 = extractvalue %dx.types.ResRet.i32 %786, 1
  %789 = extractvalue %dx.types.ResRet.i32 %786, 2
  %790 = extractvalue %dx.types.ResRet.i32 %786, 3
  %791 = fmul fast float %783, %464
  %792 = fmul fast float %783, %465
  %793 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 0
  store i32 %787, i32* %793, align 4
  %794 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 1
  store i32 %788, i32* %794, align 4
  %795 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 2
  store i32 %789, i32* %795, align 4
  %796 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 3
  store i32 %790, i32* %796, align 4
  %797 = fmul fast float %792, 4.000000e+00
  %798 = call float @dx.op.unary.f32(i32 27, float %797)  ; Round_ni(value)
  %799 = fmul fast float %791, 4.000000e+00
  %800 = call float @dx.op.unary.f32(i32 27, float %799)  ; Round_ni(value)
  %801 = fsub fast float 1.100000e+01, %798
  %802 = fmul fast float %798, 5.000000e-01
  %803 = fmul fast float %802, %801
  %804 = fadd fast float %800, 5.000000e-01
  %805 = fadd fast float %804, %803
  %806 = fptosi float %805 to i32
  %807 = fptosi float %798 to i32
  %808 = sub nsw i32 5, %807
  %809 = fmul fast float %800, 2.500000e-01
  %810 = fmul fast float %798, 2.500000e-01
  %811 = add nsw i32 %806, 1
  %812 = add nsw i32 %806, %808
  %813 = fsub fast float %791, %809
  %814 = fmul fast float %813, 4.000000e+00
  %815 = fsub fast float %792, %810
  %816 = fmul fast float %815, 4.000000e+00
  %817 = fadd fast float %813, %815
  %818 = fmul fast float %817, 4.000000e+00
  %819 = fcmp fast ogt float %818, 1.000000e+00
  br i1 %819, label %820, label %826, !dx.controlflow.hints !54

; <label>:820                                     ; preds = %781
  %821 = add nsw i32 %812, 1
  %822 = fadd fast float %816, -1.000000e+00
  %823 = fsub fast float -0.000000e+00, %822
  %824 = fadd fast float %814, -1.000000e+00
  %825 = fsub fast float -0.000000e+00, %824
  br label %826

; <label>:826                                     ; preds = %820, %781
  %827 = phi i32 [ %821, %820 ], [ %806, %781 ]
  %828 = phi i32 [ %811, %820 ], [ %812, %781 ]
  %829 = phi i32 [ %812, %820 ], [ %811, %781 ]
  %830 = phi float [ %825, %820 ], [ %816, %781 ]
  %831 = phi float [ %823, %820 ], [ %814, %781 ]
  %832 = fsub fast float 1.000000e+00, %830
  %833 = fsub fast float %832, %831
  %834 = lshr i32 %829, 2
  %835 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %834
  %836 = load i32, i32* %835, align 4, !tbaa !55, !noalias !59
  %837 = shl i32 %829, 3
  %838 = and i32 %837, 24
  %839 = lshr i32 %836, %838
  %840 = and i32 %839, 255
  %841 = sitofp i32 %840 to float
  %842 = fmul fast float %831, 0x3F70101020000000
  %843 = fmul fast float %842, %841
  %844 = lshr i32 %828, 2
  %845 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %844
  %846 = load i32, i32* %845, align 4, !tbaa !55, !noalias !59
  %847 = shl i32 %828, 3
  %848 = and i32 %847, 24
  %849 = lshr i32 %846, %848
  %850 = and i32 %849, 255
  %851 = sitofp i32 %850 to float
  %852 = fmul fast float %830, 0x3F70101020000000
  %853 = fmul fast float %852, %851
  %854 = lshr i32 %827, 2
  %855 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %854
  %856 = load i32, i32* %855, align 4, !tbaa !55, !noalias !59
  %857 = shl i32 %827, 3
  %858 = and i32 %857, 24
  %859 = lshr i32 %856, %858
  %860 = and i32 %859, 255
  %861 = sitofp i32 %860 to float
  %862 = fmul fast float %833, 0x3F70101020000000
  %863 = fmul fast float %862, %861
  %864 = fsub fast float 1.000000e+00, %843
  %865 = fsub fast float %864, %853
  %866 = fsub fast float %865, %863
  %867 = fmul fast float %467, 2.000000e+01
  %868 = fadd fast float %867, 1.000000e+00
  %869 = fmul fast float %866, 2.000000e+01
  %870 = fsub fast float %868, %869
  %871 = call float @dx.op.unary.f32(i32 7, float %870)  ; Saturate(value)
  br label %872

; <label>:872                                     ; preds = %826, %777
  %873 = phi float [ %871, %826 ], [ 1.000000e+00, %777 ]
  store float %873, float* %496, align 4, !tbaa !73, !noalias !59
  %874 = fadd fast float %779, %873
  %875 = fcmp fast oeq float %874, 0.000000e+00
  br i1 %875, label %876, label %877, !dx.controlflow.hints !75

; <label>:876                                     ; preds = %872
  store float 2.500000e-01, float* %493, align 4
  store float 2.500000e-01, float* %494, align 4
  store float 2.500000e-01, float* %495, align 4
  store float 2.500000e-01, float* %496, align 4
  br label %877

; <label>:877                                     ; preds = %876, %872
  %878 = phi float [ 2.500000e-01, %876 ], [ %589, %872 ]
  br label %879

; <label>:879                                     ; preds = %919, %877
  %880 = phi float [ %921, %919 ], [ %878, %877 ]
  %881 = phi float [ %913, %919 ], [ 0.000000e+00, %877 ]
  %882 = phi float [ %914, %919 ], [ 0.000000e+00, %877 ]
  %883 = phi float [ %915, %919 ], [ 0.000000e+00, %877 ]
  %884 = phi float [ %916, %919 ], [ 0.000000e+00, %877 ]
  %885 = phi i32 [ %917, %919 ], [ 0, %877 ]
  %886 = fcmp fast ogt float %880, 0.000000e+00
  br i1 %886, label %887, label %912, !dx.controlflow.hints !76

; <label>:887                                     ; preds = %879
  %888 = getelementptr [4 x float], [4 x float]* %29, i32 0, i32 %885
  %889 = load float, float* %888, align 4, !tbaa !73, !noalias !59
  %890 = getelementptr [4 x i32], [4 x i32]* %30, i32 0, i32 %885
  %891 = load i32, i32* %890, align 4, !tbaa !55, !noalias !59
  %892 = fmul fast float %889, %880
  %893 = shl i32 %891, 5
  %894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %893, i32 undef)  ; BufferLoad(srv,index,wot)
  %895 = extractvalue %dx.types.ResRet.i32 %894, 0
  %896 = shl i32 %895, 4
  %897 = and i32 %896, 32752
  %898 = call float @dx.op.legacyF16ToF32(i32 131, i32 %897)  ; LegacyF16ToF32(value)
  %899 = lshr i32 %895, 7
  %900 = and i32 %899, 32752
  %901 = call float @dx.op.legacyF16ToF32(i32 131, i32 %900)  ; LegacyF16ToF32(value)
  %902 = lshr i32 %895, 22
  %903 = shl nuw nsw i32 %902, 5
  %904 = call float @dx.op.legacyF16ToF32(i32 131, i32 %903)  ; LegacyF16ToF32(value)
  %905 = fmul fast float %898, %892
  %906 = fadd fast float %905, %881
  %907 = fmul fast float %901, %892
  %908 = fadd fast float %907, %882
  %909 = fmul fast float %904, %892
  %910 = fadd fast float %909, %883
  %911 = fadd fast float %892, %884
  br label %912

; <label>:912                                     ; preds = %887, %879
  %913 = phi float [ %906, %887 ], [ %881, %879 ]
  %914 = phi float [ %908, %887 ], [ %882, %879 ]
  %915 = phi float [ %910, %887 ], [ %883, %879 ]
  %916 = phi float [ %911, %887 ], [ %884, %879 ]
  %917 = add nuw nsw i32 %885, 1
  %918 = icmp eq i32 %917, 4
  br i1 %918, label %922, label %919

; <label>:919                                     ; preds = %912
  %920 = getelementptr [4 x float], [4 x float]* %31, i32 0, i32 %917
  %921 = load float, float* %920, align 4, !tbaa !73, !noalias !59
  br label %879

; <label>:922                                     ; preds = %912
  %923 = fcmp fast ogt float %916, 0.000000e+00
  %924 = fdiv fast float 1.000000e+00, %916
  %925 = select i1 %923, float %924, float 1.000000e+00
  %926 = fmul fast float %925, %913
  %927 = fmul fast float %925, %914
  %928 = fmul fast float %925, %915
  br label %929

; <label>:929                                     ; preds = %922, %469, %139
  %930 = phi float [ 0.000000e+00, %139 ], [ %481, %469 ], [ %928, %922 ]
  %931 = phi float [ 0.000000e+00, %139 ], [ %479, %469 ], [ %927, %922 ]
  %932 = phi float [ 0.000000e+00, %139 ], [ %477, %469 ], [ %926, %922 ]
  %933 = phi i32 [ 0, %139 ], [ -1, %469 ], [ %455, %922 ]
  %934 = fcmp fast olt float %140, 1.000000e+00
  br i1 %934, label %935, label %1297, !dx.controlflow.hints !77

; <label>:935                                     ; preds = %929
  %936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %937 = extractvalue %dx.types.CBufRet.f32 %936, 0
  %938 = extractvalue %dx.types.CBufRet.f32 %936, 1
  %939 = fsub fast float %90, %937
  %940 = fsub fast float %91, %938
  %941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %942 = extractvalue %dx.types.CBufRet.f32 %941, 0
  %943 = extractvalue %dx.types.CBufRet.f32 %941, 1
  %944 = fmul fast float %939, %942
  %945 = fmul fast float %940, %943
  %946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %947 = extractvalue %dx.types.CBufRet.f32 %946, 0
  %948 = fmul fast float %947, %944
  %949 = extractvalue %dx.types.CBufRet.f32 %946, 1
  %950 = fadd fast float %948, %949
  %951 = extractvalue %dx.types.CBufRet.f32 %946, 2
  %952 = fmul fast float %951, %945
  %953 = extractvalue %dx.types.CBufRet.f32 %946, 3
  %954 = fadd fast float %952, %953
  %955 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %20, float %950, float %954, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %956 = extractvalue %dx.types.ResRet.f32 %955, 0
  %957 = extractvalue %dx.types.ResRet.f32 %955, 1
  %958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %959 = extractvalue %dx.types.CBufRet.f32 %958, 1
  %960 = extractvalue %dx.types.CBufRet.f32 %958, 0
  %961 = fsub fast float %959, %960
  %962 = fmul fast float %961, %956
  %963 = fadd fast float %962, %960
  %964 = extractvalue %dx.types.CBufRet.f32 %958, 3
  %965 = extractvalue %dx.types.CBufRet.f32 %958, 2
  %966 = fsub fast float %964, %965
  %967 = fmul fast float %966, %957
  %968 = fadd fast float %967, %965
  %969 = fsub fast float %92, %963
  %970 = fsub fast float %968, %963
  %971 = fdiv fast float %969, %970
  %972 = call float @dx.op.unary.f32(i32 7, float %971)  ; Saturate(value)
  %973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %974 = extractvalue %dx.types.CBufRet.f32 %973, 0
  %975 = fmul fast float %974, %972
  %976 = extractvalue %dx.types.CBufRet.f32 %973, 1
  %977 = fadd fast float %975, %976
  %978 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %20, float %950, float %954, float %977, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %979 = extractvalue %dx.types.ResRet.f32 %978, 0
  %980 = extractvalue %dx.types.ResRet.f32 %978, 1
  %981 = extractvalue %dx.types.ResRet.f32 %978, 2
  %982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %983 = extractvalue %dx.types.CBufRet.f32 %982, 0
  %984 = extractvalue %dx.types.CBufRet.f32 %982, 1
  %985 = extractvalue %dx.types.CBufRet.f32 %982, 2
  %986 = fmul fast float %983, %979
  %987 = fmul fast float %984, %980
  %988 = fmul fast float %985, %981
  %989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %990 = extractvalue %dx.types.CBufRet.f32 %989, 0
  %991 = extractvalue %dx.types.CBufRet.f32 %989, 1
  %992 = extractvalue %dx.types.CBufRet.f32 %989, 2
  %993 = fadd fast float %986, %990
  %994 = fadd fast float %987, %991
  %995 = fadd fast float %988, %992
  %996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %997 = extractvalue %dx.types.CBufRet.f32 %996, 0
  %998 = fmul fast float %997, %944
  %999 = extractvalue %dx.types.CBufRet.f32 %996, 1
  %1000 = fadd fast float %998, %999
  %1001 = extractvalue %dx.types.CBufRet.f32 %996, 2
  %1002 = fmul fast float %1001, %945
  %1003 = extractvalue %dx.types.CBufRet.f32 %996, 3
  %1004 = fadd fast float %1002, %1003
  %1005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %1006 = extractvalue %dx.types.CBufRet.f32 %1005, 0
  %1007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %1008 = extractvalue %dx.types.CBufRet.f32 %1007, 0
  %1009 = extractvalue %dx.types.CBufRet.f32 %1007, 2
  %1010 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %20, float %1000, float %1004, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1011 = extractvalue %dx.types.ResRet.f32 %1010, 0
  %1012 = extractvalue %dx.types.ResRet.f32 %1010, 1
  %1013 = extractvalue %dx.types.ResRet.f32 %1010, 2
  %1014 = fmul fast float %1011, %993
  %1015 = fadd fast float %1014, %1006
  %1016 = fmul fast float %1012, %993
  %1017 = fadd fast float %1016, %1008
  %1018 = fmul fast float %1013, %993
  %1019 = fadd fast float %1018, %1009
  %1020 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %20, float %1000, float %1004, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1021 = extractvalue %dx.types.ResRet.f32 %1020, 0
  %1022 = extractvalue %dx.types.ResRet.f32 %1020, 1
  %1023 = extractvalue %dx.types.ResRet.f32 %1020, 2
  %1024 = fmul fast float %1021, %994
  %1025 = fadd fast float %1015, %1024
  %1026 = fmul fast float %1022, %994
  %1027 = fadd fast float %1017, %1026
  %1028 = fmul fast float %1023, %994
  %1029 = fadd fast float %1019, %1028
  %1030 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %20, float %1000, float %1004, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1031 = extractvalue %dx.types.ResRet.f32 %1030, 0
  %1032 = extractvalue %dx.types.ResRet.f32 %1030, 1
  %1033 = extractvalue %dx.types.ResRet.f32 %1030, 2
  %1034 = fmul fast float %1031, %995
  %1035 = fadd fast float %1025, %1034
  %1036 = fmul fast float %1032, %995
  %1037 = fadd fast float %1027, %1036
  %1038 = fmul fast float %1033, %995
  %1039 = fadd fast float %1029, %1038
  %1040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %1041 = extractvalue %dx.types.CBufRet.f32 %1040, 0
  %1042 = fsub fast float %90, %1041
  %1043 = fsub fast float %937, %90
  %1044 = call float @dx.op.binary.f32(i32 35, float %1043, float %1042)  ; FMax(a,b)
  %1045 = extractvalue %dx.types.CBufRet.f32 %1040, 1
  %1046 = fsub fast float %91, %1045
  %1047 = fsub fast float %938, %91
  %1048 = call float @dx.op.binary.f32(i32 35, float %1047, float %1046)  ; FMax(a,b)
  %1049 = call float @dx.op.binary.f32(i32 35, float %1044, float %1048)  ; FMax(a,b)
  %1050 = extractvalue %dx.types.CBufRet.f32 %941, 3
  %1051 = fmul fast float %1050, %1049
  %1052 = call float @dx.op.unary.f32(i32 7, float %1051)  ; Saturate(value)
  %1053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %1054 = extractvalue %dx.types.CBufRet.f32 %1053, 0
  %1055 = fsub fast float %1054, %1035
  %1056 = fmul fast float %1055, %1052
  %1057 = fadd fast float %1056, %1035
  %1058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %1059 = extractvalue %dx.types.CBufRet.f32 %1058, 0
  %1060 = fsub fast float %1059, %1037
  %1061 = fmul fast float %1060, %1052
  %1062 = fadd fast float %1061, %1037
  %1063 = extractvalue %dx.types.CBufRet.f32 %1058, 2
  %1064 = fsub fast float %1063, %1039
  %1065 = fmul fast float %1064, %1052
  %1066 = fadd fast float %1065, %1039
  %1067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %1068 = extractvalue %dx.types.CBufRet.f32 %1067, 0
  %1069 = fmul fast float %1068, %1057
  %1070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %1071 = extractvalue %dx.types.CBufRet.f32 %1070, 0
  %1072 = fmul fast float %1071, %1062
  %1073 = fadd fast float %1072, %1069
  %1074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %1075 = extractvalue %dx.types.CBufRet.f32 %1074, 0
  %1076 = fmul fast float %1075, %1066
  %1077 = fadd fast float %1073, %1076
  %1078 = extractvalue %dx.types.CBufRet.f32 %1067, 1
  %1079 = fmul fast float %1078, %1057
  %1080 = extractvalue %dx.types.CBufRet.f32 %1070, 1
  %1081 = fmul fast float %1080, %1062
  %1082 = fadd fast float %1081, %1079
  %1083 = extractvalue %dx.types.CBufRet.f32 %1074, 1
  %1084 = fmul fast float %1083, %1066
  %1085 = fadd fast float %1082, %1084
  %1086 = extractvalue %dx.types.CBufRet.f32 %1067, 2
  %1087 = fmul fast float %1086, %1057
  %1088 = extractvalue %dx.types.CBufRet.f32 %1070, 2
  %1089 = fmul fast float %1088, %1062
  %1090 = fadd fast float %1089, %1087
  %1091 = extractvalue %dx.types.CBufRet.f32 %1074, 2
  %1092 = fmul fast float %1091, %1066
  %1093 = fadd fast float %1090, %1092
  %1094 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1077)  ; FMax(a,b)
  %1095 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1085)  ; FMax(a,b)
  %1096 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1093)  ; FMax(a,b)
  %1097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %1098 = extractvalue %dx.types.CBufRet.f32 %1097, 0
  %1099 = fcmp fast ogt float %1098, 0.000000e+00
  %1100 = fcmp fast oge float %944, 0.000000e+00
  %1101 = and i1 %1100, %1099
  %1102 = fcmp fast ole float %944, 1.000000e+00
  %1103 = and i1 %1102, %1101
  %1104 = fcmp fast oge float %945, 0.000000e+00
  %1105 = and i1 %1104, %1103
  %1106 = fcmp fast ole float %945, 1.000000e+00
  %1107 = and i1 %1106, %1105
  br i1 %1107, label %1108, label %1253, !dx.controlflow.hints !78

; <label>:1108                                    ; preds = %935
  %1109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1110 = extractvalue %dx.types.CBufRet.f32 %1109, 2
  %1111 = extractvalue %dx.types.CBufRet.f32 %1109, 3
  %1112 = fmul fast float %1110, %944
  %1113 = fmul fast float %1111, %945
  %1114 = call float @dx.op.unary.f32(i32 27, float %1112)  ; Round_ni(value)
  %1115 = call float @dx.op.unary.f32(i32 27, float %1113)  ; Round_ni(value)
  %1116 = fptosi float %1114 to i32
  %1117 = fptosi float %1115 to i32
  %1118 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %6, i32 0, i32 %1116, i32 %1117, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1119 = extractvalue %dx.types.ResRet.i32 %1118, 0
  %1120 = and i32 %1119, 65535
  %1121 = lshr i32 %1119, 16
  %1122 = icmp eq i32 %1120, 65535
  br i1 %1122, label %1159, label %1123, !dx.controlflow.hints !79

; <label>:1123                                    ; preds = %1108
  %1124 = extractvalue %dx.types.CBufRet.f32 %1097, 1
  %1125 = extractvalue %dx.types.CBufRet.f32 %1109, 0
  %1126 = extractvalue %dx.types.CBufRet.f32 %1109, 1
  %1127 = fmul fast float %1125, %944
  %1128 = fmul fast float %1126, %945
  %1129 = fmul fast float %1127, 1.250000e-01
  %1130 = fmul fast float %1128, 1.250000e-01
  %1131 = call float @dx.op.unary.f32(i32 27, float %1129)  ; Round_ni(value)
  %1132 = call float @dx.op.unary.f32(i32 27, float %1130)  ; Round_ni(value)
  %1133 = fmul fast float %1131, 8.000000e+00
  %1134 = fmul fast float %1132, 8.000000e+00
  %1135 = and i32 %1119, 255
  %1136 = lshr i32 %1119, 8
  %1137 = and i32 %1136, 255
  %1138 = mul nuw nsw i32 %1135, 9
  %1139 = uitofp i32 %1138 to float
  %1140 = mul nuw nsw i32 %1137, 9
  %1141 = uitofp i32 %1140 to float
  %1142 = fadd fast float %1139, 5.000000e-01
  %1143 = fadd fast float %1142, %1127
  %1144 = fsub fast float %1143, %1133
  %1145 = fadd fast float %1141, 5.000000e-01
  %1146 = fadd fast float %1145, %1128
  %1147 = fsub fast float %1146, %1134
  %1148 = fdiv fast float %1144, %1098
  %1149 = fdiv fast float %1147, %1124
  %1150 = fmul fast float %972, 4.375000e-01
  %1151 = fadd fast float %1150, 3.125000e-02
  %1152 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %20, float %1148, float %1149, float %1151, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1153 = extractvalue %dx.types.ResRet.f32 %1152, 0
  %1154 = extractvalue %dx.types.ResRet.f32 %1152, 1
  %1155 = extractvalue %dx.types.ResRet.f32 %1152, 2
  %1156 = fadd fast float %1153, %1094
  %1157 = fadd fast float %1154, %1095
  %1158 = fadd fast float %1155, %1096
  br label %1159

; <label>:1159                                    ; preds = %1123, %1108
  %1160 = phi float [ %1158, %1123 ], [ %1096, %1108 ]
  %1161 = phi float [ %1157, %1123 ], [ %1095, %1108 ]
  %1162 = phi float [ %1156, %1123 ], [ %1094, %1108 ]
  %1163 = icmp eq i32 %1121, 65535
  br i1 %1163, label %1253, label %1164, !dx.controlflow.hints !80

; <label>:1164                                    ; preds = %1159
  %1165 = extractvalue %dx.types.CBufRet.f32 %1097, 1
  %1166 = extractvalue %dx.types.CBufRet.f32 %1109, 0
  %1167 = extractvalue %dx.types.CBufRet.f32 %1109, 1
  %1168 = fmul fast float %1166, %944
  %1169 = fmul fast float %1167, %945
  %1170 = fmul fast float %1168, 1.250000e-01
  %1171 = fmul fast float %1169, 1.250000e-01
  %1172 = call float @dx.op.unary.f32(i32 27, float %1170)  ; Round_ni(value)
  %1173 = call float @dx.op.unary.f32(i32 27, float %1171)  ; Round_ni(value)
  %1174 = fmul fast float %1172, 8.000000e+00
  %1175 = fmul fast float %1173, 8.000000e+00
  %1176 = fsub fast float %1168, %1174
  %1177 = fsub fast float %1169, %1175
  %1178 = fadd fast float %1176, 5.000000e-01
  %1179 = fadd fast float %1177, 5.000000e-01
  %1180 = and i32 %1121, 255
  %1181 = lshr i32 %1119, 24
  %1182 = mul nuw nsw i32 %1180, 9
  %1183 = uitofp i32 %1182 to float
  %1184 = mul nuw nsw i32 %1181, 9
  %1185 = uitofp i32 %1184 to float
  %1186 = fadd fast float %1178, %1183
  %1187 = fadd fast float %1179, %1185
  %1188 = fdiv fast float %1186, %1098
  %1189 = fdiv fast float %1187, %1165
  %1190 = fmul fast float %972, 4.375000e-01
  %1191 = fadd fast float %1190, 3.125000e-02
  %1192 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %20, float %1188, float %1189, float %1191, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1193 = extractvalue %dx.types.ResRet.f32 %1192, 0
  %1194 = extractvalue %dx.types.ResRet.f32 %1192, 1
  %1195 = extractvalue %dx.types.ResRet.f32 %1192, 2
  %1196 = fadd fast float %1190, 5.312500e-01
  %1197 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %20, float %1188, float %1189, float %1196, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1198 = extractvalue %dx.types.ResRet.f32 %1197, 0
  %1199 = extractvalue %dx.types.ResRet.f32 %1197, 1
  %1200 = extractvalue %dx.types.ResRet.f32 %1197, 2
  %1201 = fmul fast float %1198, 2.000000e+00
  %1202 = fmul fast float %1199, 2.000000e+00
  %1203 = fmul fast float %1200, 2.000000e+00
  %1204 = fadd fast float %1201, -1.000000e+00
  %1205 = fadd fast float %1202, -1.000000e+00
  %1206 = fadd fast float %1203, -1.000000e+00
  %1207 = fmul fast float %1204, %1204
  %1208 = fmul fast float %1205, %1205
  %1209 = fadd fast float %1207, %1208
  %1210 = fmul fast float %1206, %1206
  %1211 = fadd fast float %1209, %1210
  %1212 = call float @dx.op.unary.f32(i32 24, float %1211)  ; Sqrt(value)
  %1213 = fcmp fast ogt float %1212, 0.000000e+00
  br i1 %1213, label %1214, label %1218, !dx.controlflow.hints !81

; <label>:1214                                    ; preds = %1164
  %1215 = fdiv fast float %1204, %1212
  %1216 = fdiv fast float %1205, %1212
  %1217 = fdiv fast float %1206, %1212
  br label %1218

; <label>:1218                                    ; preds = %1214, %1164
  %1219 = phi float [ %1215, %1214 ], [ 0.000000e+00, %1164 ]
  %1220 = phi float [ %1216, %1214 ], [ 0.000000e+00, %1164 ]
  %1221 = phi float [ %1217, %1214 ], [ 0.000000e+00, %1164 ]
  %1222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1223 = extractvalue %dx.types.CBufRet.f32 %1222, 0
  %1224 = extractvalue %dx.types.CBufRet.f32 %1222, 1
  %1225 = fsub fast float %90, %1223
  %1226 = fsub fast float %91, %1224
  %1227 = fmul fast float %1225, %1225
  %1228 = fmul fast float %1226, %1226
  %1229 = fadd fast float %1227, %1228
  %1230 = call float @dx.op.unary.f32(i32 24, float %1229)  ; Sqrt(value)
  %1231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1232 = extractvalue %dx.types.CBufRet.f32 %1231, 0
  %1233 = extractvalue %dx.types.CBufRet.f32 %1231, 1
  %1234 = fsub fast float %1230, %1232
  %1235 = fdiv fast float %1234, %1233
  %1236 = call float @dx.op.unary.f32(i32 7, float %1235)  ; Saturate(value)
  %1237 = fmul fast float %1236, 2.000000e+00
  %1238 = fsub fast float 3.000000e+00, %1237
  %1239 = fmul fast float %1236, %1236
  %1240 = fmul fast float %1239, %1238
  %1241 = call float @dx.op.dot3.f32(i32 55, float %1219, float %1220, float %1221, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1242 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1241)  ; FMax(a,b)
  %1243 = fmul fast float %1242, 0x400C5BF8A0000000
  %1244 = fmul fast float %1240, %1193
  %1245 = fmul fast float %1244, %1243
  %1246 = fadd fast float %1245, %1162
  %1247 = fmul fast float %1240, %1194
  %1248 = fmul fast float %1247, %1243
  %1249 = fadd fast float %1248, %1161
  %1250 = fmul fast float %1240, %1195
  %1251 = fmul fast float %1250, %1243
  %1252 = fadd fast float %1251, %1160
  br label %1253

; <label>:1253                                    ; preds = %1218, %1159, %935
  %1254 = phi float [ %1252, %1218 ], [ %1160, %1159 ], [ %1096, %935 ]
  %1255 = phi float [ %1249, %1218 ], [ %1161, %1159 ], [ %1095, %935 ]
  %1256 = phi float [ %1246, %1218 ], [ %1162, %1159 ], [ %1094, %935 ]
  %1257 = fcmp fast ogt float %92, %968
  %1258 = and i1 %1100, %1257
  %1259 = and i1 %1102, %1258
  %1260 = and i1 %1104, %1259
  %1261 = and i1 %1106, %1260
  br i1 %1261, label %1262, label %1280, !dx.controlflow.hints !82

; <label>:1262                                    ; preds = %1253
  %1263 = fmul fast float %970, 0x3FC24924A0000000
  %1264 = fsub fast float %92, %968
  %1265 = fdiv fast float %1264, %1263
  %1266 = call float @dx.op.unary.f32(i32 7, float %1265)  ; Saturate(value)
  %1267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %1268 = extractvalue %dx.types.CBufRet.f32 %1267, 0
  %1269 = fsub fast float %1268, %1256
  %1270 = fmul fast float %1269, %1266
  %1271 = fadd fast float %1270, %1256
  %1272 = extractvalue %dx.types.CBufRet.f32 %1267, 1
  %1273 = fsub fast float %1272, %1255
  %1274 = fmul fast float %1273, %1266
  %1275 = fadd fast float %1274, %1255
  %1276 = extractvalue %dx.types.CBufRet.f32 %1267, 2
  %1277 = fsub fast float %1276, %1254
  %1278 = fmul fast float %1277, %1266
  %1279 = fadd fast float %1278, %1254
  br label %1280

; <label>:1280                                    ; preds = %1262, %1253
  %1281 = phi float [ %1279, %1262 ], [ %1254, %1253 ]
  %1282 = phi float [ %1275, %1262 ], [ %1255, %1253 ]
  %1283 = phi float [ %1271, %1262 ], [ %1256, %1253 ]
  %1284 = extractvalue %dx.types.CBufRet.f32 %1040, 3
  %1285 = fmul fast float %1284, %1283
  %1286 = fmul fast float %1284, %1282
  %1287 = fmul fast float %1284, %1281
  %1288 = fsub fast float %932, %1285
  %1289 = fmul fast float %1288, %140
  %1290 = fadd fast float %1289, %1285
  %1291 = fsub fast float %931, %1286
  %1292 = fmul fast float %1291, %140
  %1293 = fadd fast float %1292, %1286
  %1294 = fsub fast float %930, %1287
  %1295 = fmul fast float %1294, %140
  %1296 = fadd fast float %1295, %1287
  br label %1297

; <label>:1297                                    ; preds = %1280, %929
  %1298 = phi float [ %1296, %1280 ], [ %930, %929 ]
  %1299 = phi float [ %1293, %1280 ], [ %931, %929 ]
  %1300 = phi float [ %1290, %1280 ], [ %932, %929 ]
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %2, i32 %25, i32 %26, i32 %27, i32 %933, i32 %933, i32 %933, i32 %933, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1301 = fmul fast float %1300, 0x3FD20DD760000000
  %1302 = fmul fast float %1299, 0x3FD20DD760000000
  %1303 = fmul fast float %1298, 0x3FD20DD760000000
  %1304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1305 = extractvalue %dx.types.CBufRet.f32 %1304, 3
  %1306 = fmul fast float %1301, %1305
  %1307 = fmul fast float %1302, %1305
  %1308 = fmul fast float %1303, %1305
  %1309 = extractvalue %dx.types.CBufRet.f32 %1304, 0
  %1310 = fmul fast float %1306, %1309
  %1311 = fmul fast float %1307, %1309
  %1312 = fmul fast float %1308, %1309
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %25, i32 %26, i32 undef, float %1310, float %1311, float %1312, float %1310, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.textureStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32, i8) #2

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #1

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
!dx.entryPoints = !{!35}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !25, !28, !32}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !17, !18, !19, !20, !22, !23, !24}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!8 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!9 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 3, i32 1, i32 11, i32 0, null}
!10 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 8, i32 1, i32 11, i32 0, null}
!11 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 4, i32 1, i32 11, i32 0, null}
!12 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 5, i32 1, i32 11, i32 0, null}
!13 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 6, i32 1, i32 11, i32 0, null}
!14 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 7, i32 1, i32 11, i32 0, null}
!15 = !{i32 9, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 32, i32 1, i32 7, i32 0, !16}
!16 = !{i32 0, i32 9}
!17 = !{i32 10, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 31, i32 1, i32 4, i32 0, !16}
!18 = !{i32 11, %"class.Texture2D<float>"* undef, !"", i32 0, i32 30, i32 1, i32 2, i32 0, !16}
!19 = !{i32 12, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 0, i32 29, i32 1, i32 2, i32 0, !16}
!20 = !{i32 13, %"class.Texture2D<unsigned int>"* undef, !"", i32 0, i32 22, i32 1, i32 2, i32 0, !21}
!21 = !{i32 0, i32 5}
!22 = !{i32 14, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 0, i32 23, i32 1, i32 4, i32 0, !16}
!23 = !{i32 15, %"class.Texture2D<float>"* undef, !"", i32 0, i32 19, i32 1, i32 2, i32 0, !16}
!24 = !{i32 16, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 15, i32 1, i32 11, i32 0, null}
!25 = !{!26, !27}
!26 = !{i32 0, %"class.RWTexture3D<unsigned int>"* undef, !"", i32 0, i32 4, i32 1, i32 4, i1 false, i1 false, i1 false, !21}
!27 = !{i32 1, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 5, i32 1, i32 2, i1 false, i1 false, i1 false, !16}
!28 = !{!29, !30, !31}
!29 = !{i32 0, %VolumetricLightGridConstants* undef, !"", i32 0, i32 1, i32 1, i32 32, null}
!30 = !{i32 1, %GfxLGBoundConsts* undef, !"", i32 0, i32 4, i32 1, i32 16, null}
!31 = !{i32 2, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!32 = !{!33, !34}
!33 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!34 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!35 = !{void ()* @cs_scene_luma_sh_sample_lightgrid_isotropic_skylight, !"cs_scene_luma_sh_sample_lightgrid_isotropic_skylight", null, !4, !36}
!36 = !{i32 0, i64 272, i32 4, !37}
!37 = !{i32 8, i32 8, i32 1}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 1}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !51}
!51 = !{!"llvm.loop.unroll.disable"}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = !{!56, !56, i64 0}
!56 = !{!"int", !57, i64 0}
!57 = !{!"omnipotent char", !58, i64 0}
!58 = !{!"Simple C/C++ TBAA"}
!59 = !{!60, !62, !63, !64, !65, !66, !67, !69, !70, !71, !72}
!60 = distinct !{!60, !61, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %probeR"}
!61 = distinct !{!61, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z"}
!62 = distinct !{!62, !61, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %probeG"}
!63 = distinct !{!63, !61, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %probeB"}
!64 = distinct !{!64, !61, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %probeA"}
!65 = distinct !{!65, !61, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %primaryVisibility"}
!66 = distinct !{!66, !61, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %usedTet"}
!67 = distinct !{!67, !68, !"\01?LookupLighting@@YA_NV?$vector@M$02@@USH3Vec@@11AIAMIAIAI_N@Z: %redSH"}
!68 = distinct !{!68, !"\01?LookupLighting@@YA_NV?$vector@M$02@@USH3Vec@@11AIAMIAIAI_N@Z"}
!69 = distinct !{!69, !68, !"\01?LookupLighting@@YA_NV?$vector@M$02@@USH3Vec@@11AIAMIAIAI_N@Z: %greenSH"}
!70 = distinct !{!70, !68, !"\01?LookupLighting@@YA_NV?$vector@M$02@@USH3Vec@@11AIAMIAIAI_N@Z: %blueSH"}
!71 = distinct !{!71, !68, !"\01?LookupLighting@@YA_NV?$vector@M$02@@USH3Vec@@11AIAMIAIAI_N@Z: %probeA"}
!72 = distinct !{!72, !68, !"\01?LookupLighting@@YA_NV?$vector@M$02@@USH3Vec@@11AIAMIAIAI_N@Z: %usedTet"}
!73 = !{!74, !74, i64 0}
!74 = !{!"float", !57, i64 0}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 2}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 2}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 1}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 2}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 2}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 2}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 1}

