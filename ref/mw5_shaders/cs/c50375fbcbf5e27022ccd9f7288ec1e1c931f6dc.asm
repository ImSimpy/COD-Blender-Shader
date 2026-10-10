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
; shader hash: 2a4265beb753a095c9c3fa70f096db11
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
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
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

define void @cs_scene_luma_sh_sample_lightgrid_aniso() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %19 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %20 = call i32 @dx.op.threadId.i32(i32 93, i32 2)  ; ThreadId(component)
  %21 = alloca [4 x i32], align 4
  %22 = alloca [4 x float], align 4
  %23 = alloca [4 x i32], align 4
  %24 = alloca [4 x float], align 4
  %25 = uitofp i32 %18 to float
  %26 = uitofp i32 %19 to float
  %27 = fadd fast float %25, 5.000000e-01
  %28 = fadd fast float %26, 5.000000e-01
  %29 = fmul fast float %27, 4.000000e+00
  %30 = fmul fast float %28, 4.000000e+00
  %31 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %32 = extractvalue %dx.types.CBufRet.f32 %31, 0
  %33 = extractvalue %dx.types.CBufRet.f32 %31, 1
  %34 = fmul fast float %29, %32
  %35 = fmul fast float %30, %33
  %36 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %14, float %34, float %35, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %37 = extractvalue %dx.types.ResRet.f32 %36, 0
  %38 = fcmp fast ogt float %37, -1.000000e+00
  %39 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %40 = extractvalue %dx.types.CBufRet.f32 %39, 1
  %41 = select i1 %38, float %40, float 1.000000e+00
  %42 = fadd fast float %37, 1.000000e+00
  %43 = fmul fast float %41, %42
  %44 = call float @dx.op.unary.f32(i32 6, float %43)  ; FAbs(value)
  %45 = fmul fast float %44, 0x3FEFFC0000000000
  %46 = fadd fast float %45, -1.600000e+01
  %47 = call float @dx.op.binary.f32(i32 35, float %46, float 0.000000e+00)  ; FMax(a,b)
  %48 = fmul fast float %34, 2.000000e+00
  %49 = fmul fast float %35, 2.000000e+00
  %50 = fsub fast float 1.000000e+00, %48
  %51 = fsub fast float 1.000000e+00, %49
  %52 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %53 = extractvalue %dx.types.CBufRet.f32 %52, 0
  %54 = extractvalue %dx.types.CBufRet.f32 %52, 1
  %55 = extractvalue %dx.types.CBufRet.f32 %52, 2
  %56 = fmul fast float %53, %50
  %57 = fmul fast float %54, %50
  %58 = fmul fast float %55, %50
  %59 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %60 = extractvalue %dx.types.CBufRet.f32 %59, 0
  %61 = extractvalue %dx.types.CBufRet.f32 %59, 1
  %62 = extractvalue %dx.types.CBufRet.f32 %59, 2
  %63 = fmul fast float %60, %51
  %64 = fmul fast float %61, %51
  %65 = fmul fast float %62, %51
  %66 = fadd fast float %63, %56
  %67 = fadd fast float %64, %57
  %68 = fadd fast float %65, %58
  %69 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %70 = extractvalue %dx.types.CBufRet.f32 %69, 0
  %71 = extractvalue %dx.types.CBufRet.f32 %69, 1
  %72 = extractvalue %dx.types.CBufRet.f32 %69, 2
  %73 = fadd fast float %66, %70
  %74 = fadd fast float %67, %71
  %75 = fadd fast float %68, %72
  %76 = fmul fast float %73, %47
  %77 = fmul fast float %74, %47
  %78 = fmul fast float %75, %47
  %79 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %80 = extractvalue %dx.types.CBufRet.f32 %79, 0
  %81 = extractvalue %dx.types.CBufRet.f32 %79, 1
  %82 = extractvalue %dx.types.CBufRet.f32 %79, 2
  %83 = fadd fast float %76, %80
  %84 = fadd fast float %77, %81
  %85 = fadd fast float %78, %82
  %86 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 397)  ; CBufferLoadLegacy(handle,regIndex)
  %87 = extractvalue %dx.types.CBufRet.i32 %86, 2
  %88 = and i32 %87, 1
  %89 = icmp eq i32 %88, 0
  %90 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %91 = extractvalue %dx.types.CBufRet.i32 %90, 3
  %92 = icmp ne i32 %91, 0
  %93 = and i1 %89, %92
  br i1 %93, label %94, label %97, !dx.controlflow.hints !31

; <label>:94                                      ; preds = %0
  %95 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %2, i32 undef, i32 %18, i32 %19, i32 %20, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %96 = extractvalue %dx.types.ResRet.i32 %95, 0
  br label %97

; <label>:97                                      ; preds = %94, %0
  %98 = phi i32 [ %96, %94 ], [ -1, %0 ]
  %99 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %100 = extractvalue %dx.types.CBufRet.i32 %99, 2
  %101 = extractvalue %dx.types.CBufRet.i32 %99, 1
  %102 = extractvalue %dx.types.CBufRet.i32 %99, 0
  %103 = getelementptr inbounds [4 x float], [4 x float]* %22, i32 0, i32 0
  store float 0.000000e+00, float* %103, align 4
  %104 = getelementptr inbounds [4 x float], [4 x float]* %22, i32 0, i32 1
  store float 0.000000e+00, float* %104, align 4
  %105 = getelementptr inbounds [4 x float], [4 x float]* %22, i32 0, i32 2
  store float 0.000000e+00, float* %105, align 4
  %106 = getelementptr inbounds [4 x float], [4 x float]* %22, i32 0, i32 3
  store float 0.000000e+00, float* %106, align 4
  %107 = icmp eq i32 %98, -1
  br i1 %107, label %108, label %259, !dx.controlflow.hints !32

; <label>:108                                     ; preds = %97
  %109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %110 = extractvalue %dx.types.ResRet.i32 %109, 0
  %111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %112 = extractvalue %dx.types.ResRet.i32 %111, 0
  %113 = extractvalue %dx.types.ResRet.i32 %111, 1
  %114 = extractvalue %dx.types.ResRet.i32 %111, 2
  %115 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %116 = extractvalue %dx.types.ResRet.f32 %115, 0
  %117 = extractvalue %dx.types.ResRet.f32 %115, 1
  %118 = extractvalue %dx.types.ResRet.f32 %115, 2
  %119 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %120 = extractvalue %dx.types.ResRet.f32 %119, 0
  %121 = extractvalue %dx.types.ResRet.f32 %119, 1
  %122 = extractvalue %dx.types.ResRet.f32 %119, 2
  %123 = fsub fast float %83, %116
  %124 = fsub fast float %84, %117
  %125 = fsub fast float %85, %118
  %126 = fptoui float %123 to i32
  %127 = fptoui float %124 to i32
  %128 = fptoui float %125 to i32
  %129 = fcmp fast olt float %83, %116
  %130 = fcmp fast olt float %84, %117
  %131 = fcmp fast olt float %85, %118
  %132 = or i1 %129, %130
  %133 = or i1 %131, %132
  %134 = fcmp fast oge float %83, %120
  %135 = fcmp fast oge float %84, %121
  %136 = fcmp fast oge float %85, %122
  %137 = or i1 %134, %135
  %138 = or i1 %136, %137
  %139 = or i1 %133, %138
  %140 = and i32 %112, 31
  %141 = lshr i32 %126, %140
  %142 = lshr i32 %127, %140
  %143 = lshr i32 %128, %140
  %144 = mul i32 %142, %110
  %145 = add i32 %144, %141
  %146 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %147 = extractvalue %dx.types.CBufRet.i32 %146, 0
  %148 = icmp ult i32 %145, %147
  br i1 %148, label %149, label %165, !dx.controlflow.hints !33

; <label>:149                                     ; preds = %108
  %150 = mul i32 %145, 12
  %151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %150, i32 undef)  ; BufferLoad(srv,index,wot)
  %152 = extractvalue %dx.types.ResRet.i32 %151, 0
  %153 = add i32 %150, 4
  %154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %153, i32 undef)  ; BufferLoad(srv,index,wot)
  %155 = extractvalue %dx.types.ResRet.i32 %154, 0
  %156 = add i32 %150, 8
  %157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %156, i32 undef)  ; BufferLoad(srv,index,wot)
  %158 = extractvalue %dx.types.ResRet.i32 %157, 0
  %159 = icmp ult i32 %143, %155
  %160 = icmp ugt i32 %143, %158
  %161 = or i1 %159, %160
  %162 = add i32 %152, %143
  %163 = sub i32 %162, %155
  %164 = select i1 %161, i32 -2147483648, i32 %163
  br label %165

; <label>:165                                     ; preds = %149, %108
  %166 = phi i32 [ %164, %149 ], [ -2147483648, %108 ]
  %167 = select i1 %139, i32 -2147483648, i32 %166
  %168 = icmp sgt i32 %167, -1
  %169 = and i32 %113, 31
  %170 = lshr i32 %126, %169
  %171 = lshr i32 %127, %169
  %172 = lshr i32 %128, %169
  %173 = and i32 %170, 3
  %174 = and i32 %172, 3
  %175 = shl nuw nsw i32 %174, 4
  %176 = shl i32 %171, 2
  %177 = and i32 %176, 12
  %178 = and i32 %175, 16
  %179 = or i32 %177, %173
  %180 = or i32 %179, %178
  %181 = shl i32 1, %180
  %182 = extractvalue %dx.types.CBufRet.i32 %146, 1
  %183 = icmp ult i32 %167, %182
  br i1 %183, label %184, label %202, !dx.controlflow.hints !34

; <label>:184                                     ; preds = %165
  %185 = lshr i32 %174, 1
  %186 = shl i32 %167, 4
  %187 = shl nuw nsw i32 %185, 2
  %188 = or i32 %186, %187
  %189 = or i32 %188, 8
  %190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %189, i32 undef)  ; BufferLoad(srv,index,wot)
  %191 = extractvalue %dx.types.ResRet.i32 %190, 0
  %192 = and i32 %191, %181
  %193 = icmp eq i32 %192, 0
  %194 = add i32 %181, -1
  %195 = and i32 %191, %194
  %196 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %195)  ; Countbits(value)
  %197 = or i32 %186, %187
  %198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %197, i32 undef)  ; BufferLoad(srv,index,wot)
  %199 = extractvalue %dx.types.ResRet.i32 %198, 0
  %200 = add i32 %199, %196
  %201 = select i1 %193, i32 -2147483648, i32 %200
  br label %202

; <label>:202                                     ; preds = %184, %165
  %203 = phi i32 [ %201, %184 ], [ -2147483648, %165 ]
  %204 = select i1 %168, i32 %203, i32 %167
  %205 = icmp sgt i32 %204, -1
  %206 = and i32 %114, 31
  %207 = lshr i32 %126, %206
  %208 = lshr i32 %127, %206
  %209 = lshr i32 %128, %206
  %210 = and i32 %207, 3
  %211 = and i32 %209, 3
  %212 = shl nuw nsw i32 %211, 4
  %213 = shl i32 %208, 2
  %214 = and i32 %213, 12
  %215 = and i32 %212, 16
  %216 = or i32 %214, %210
  %217 = or i32 %216, %215
  %218 = shl i32 1, %217
  %219 = icmp ult i32 %204, %182
  br i1 %219, label %220, label %238, !dx.controlflow.hints !34

; <label>:220                                     ; preds = %202
  %221 = lshr i32 %211, 1
  %222 = shl i32 %204, 4
  %223 = shl nuw nsw i32 %221, 2
  %224 = or i32 %222, %223
  %225 = or i32 %224, 8
  %226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %225, i32 undef)  ; BufferLoad(srv,index,wot)
  %227 = extractvalue %dx.types.ResRet.i32 %226, 0
  %228 = and i32 %227, %218
  %229 = icmp eq i32 %228, 0
  %230 = add i32 %218, -1
  %231 = and i32 %227, %230
  %232 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %231)  ; Countbits(value)
  %233 = or i32 %222, %223
  %234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %233, i32 undef)  ; BufferLoad(srv,index,wot)
  %235 = extractvalue %dx.types.ResRet.i32 %234, 0
  %236 = add i32 %235, %232
  %237 = select i1 %229, i32 -2147483648, i32 %236
  br label %238

; <label>:238                                     ; preds = %220, %202
  %239 = phi i32 [ %237, %220 ], [ -2147483648, %202 ]
  %240 = select i1 %205, i32 %239, i32 %204
  br i1 %139, label %255, label %241, !dx.controlflow.hints !35

; <label>:241                                     ; preds = %238
  %242 = icmp eq i32 %240, -2147483648
  %243 = icmp eq i32 %204, -2147483648
  %244 = select i1 %243, i32 %167, i32 %204
  %245 = select i1 %242, i32 %244, i32 %240
  %246 = icmp sgt i32 %245, -1
  %247 = icmp ne i32 %100, -1
  %248 = and i1 %247, %246
  %249 = select i1 %248, i32 %100, i32 0
  %250 = add i32 %245, %101
  %251 = add i32 %250, %249
  %252 = shl i32 %251, 2
  %253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %252, i32 undef)  ; BufferLoad(srv,index,wot)
  %254 = extractvalue %dx.types.ResRet.i32 %253, 0
  br label %255

; <label>:255                                     ; preds = %241, %238
  %256 = phi i32 [ %254, %241 ], [ -1, %238 ]
  %257 = icmp eq i32 %256, -1
  %258 = select i1 %257, i32 %102, i32 %256
  br label %259

; <label>:259                                     ; preds = %255, %97
  %260 = phi i32 [ %258, %255 ], [ %98, %97 ]
  %261 = icmp eq i32 %260, -1
  br i1 %261, label %410, label %262

; <label>:262                                     ; preds = %259
  br label %263

; <label>:263                                     ; preds = %401, %262
  %264 = phi i32 [ %402, %401 ], [ 0, %262 ]
  %265 = phi i32 [ %266, %401 ], [ -1, %262 ]
  %266 = phi i32 [ %397, %401 ], [ %260, %262 ]
  %267 = phi float [ %373, %401 ], [ 0.000000e+00, %262 ]
  %268 = phi float [ %374, %401 ], [ 0.000000e+00, %262 ]
  %269 = phi float [ %375, %401 ], [ 0.000000e+00, %262 ]
  %270 = phi float [ %378, %401 ], [ 0.000000e+00, %262 ]
  %271 = icmp ugt i32 %264, 50
  br i1 %271, label %404, label %272, !dx.controlflow.hints !36

; <label>:272                                     ; preds = %263
  %273 = shl i32 %266, 4
  %274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %273, i32 undef)  ; BufferLoad(srv,index,wot)
  %275 = extractvalue %dx.types.ResRet.i32 %274, 0
  %276 = extractvalue %dx.types.ResRet.i32 %274, 1
  %277 = extractvalue %dx.types.ResRet.i32 %274, 2
  %278 = extractvalue %dx.types.ResRet.i32 %274, 3
  %279 = and i32 %275, 2147483647
  %280 = mul nsw i32 %279, 12
  %281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %280, i32 undef)  ; BufferLoad(srv,index,wot)
  %282 = extractvalue %dx.types.ResRet.i32 %281, 0
  %283 = extractvalue %dx.types.ResRet.i32 %281, 1
  %284 = extractvalue %dx.types.ResRet.i32 %281, 2
  %285 = and i32 %276, 2147483647
  %286 = mul nsw i32 %285, 12
  %287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %286, i32 undef)  ; BufferLoad(srv,index,wot)
  %288 = extractvalue %dx.types.ResRet.i32 %287, 0
  %289 = extractvalue %dx.types.ResRet.i32 %287, 1
  %290 = extractvalue %dx.types.ResRet.i32 %287, 2
  %291 = and i32 %277, 2147483647
  %292 = mul nsw i32 %291, 12
  %293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %292, i32 undef)  ; BufferLoad(srv,index,wot)
  %294 = extractvalue %dx.types.ResRet.i32 %293, 0
  %295 = extractvalue %dx.types.ResRet.i32 %293, 1
  %296 = extractvalue %dx.types.ResRet.i32 %293, 2
  %297 = and i32 %278, 2147483647
  %298 = mul nsw i32 %297, 12
  %299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %298, i32 undef)  ; BufferLoad(srv,index,wot)
  %300 = extractvalue %dx.types.ResRet.i32 %299, 0
  %301 = extractvalue %dx.types.ResRet.i32 %299, 1
  %302 = extractvalue %dx.types.ResRet.i32 %299, 2
  %303 = bitcast i32 %282 to float
  %304 = bitcast i32 %283 to float
  %305 = bitcast i32 %284 to float
  %306 = bitcast i32 %300 to float
  %307 = bitcast i32 %301 to float
  %308 = bitcast i32 %302 to float
  %309 = fsub fast float %303, %306
  %310 = fsub fast float %304, %307
  %311 = fsub fast float %305, %308
  %312 = bitcast i32 %288 to float
  %313 = bitcast i32 %289 to float
  %314 = bitcast i32 %290 to float
  %315 = fsub fast float %312, %306
  %316 = fsub fast float %313, %307
  %317 = fsub fast float %314, %308
  %318 = bitcast i32 %294 to float
  %319 = bitcast i32 %295 to float
  %320 = bitcast i32 %296 to float
  %321 = fsub fast float %318, %306
  %322 = fsub fast float %319, %307
  %323 = fsub fast float %320, %308
  %324 = fsub fast float %83, %306
  %325 = fsub fast float %84, %307
  %326 = fsub fast float %85, %308
  %327 = fmul fast float %316, %323
  %328 = fmul fast float %322, %317
  %329 = fsub fast float %327, %328
  %330 = fmul fast float %329, %309
  %331 = fmul fast float %315, %323
  %332 = fmul fast float %317, %321
  %333 = fsub fast float %331, %332
  %334 = fmul fast float %333, %310
  %335 = fsub fast float %330, %334
  %336 = fmul fast float %315, %322
  %337 = fmul fast float %316, %321
  %338 = fsub fast float %336, %337
  %339 = fmul fast float %338, %311
  %340 = fadd fast float %335, %339
  %341 = fdiv fast float 1.000000e+00, %340
  %342 = fmul fast float %329, %341
  %343 = fmul fast float %341, %333
  %344 = fsub fast float -0.000000e+00, %343
  %345 = fmul fast float %338, %341
  %346 = fmul fast float %310, %323
  %347 = fmul fast float %311, %322
  %348 = fsub fast float %346, %347
  %349 = fmul fast float %341, %348
  %350 = fsub fast float -0.000000e+00, %349
  %351 = fmul fast float %309, %323
  %352 = fmul fast float %321, %311
  %353 = fsub fast float %351, %352
  %354 = fmul fast float %353, %341
  %355 = fmul fast float %309, %322
  %356 = fmul fast float %310, %321
  %357 = fsub fast float %355, %356
  %358 = fmul fast float %341, %357
  %359 = fsub fast float -0.000000e+00, %358
  %360 = fmul fast float %310, %317
  %361 = fmul fast float %311, %316
  %362 = fsub fast float %360, %361
  %363 = fmul fast float %362, %341
  %364 = fmul fast float %309, %317
  %365 = fmul fast float %311, %315
  %366 = fsub fast float %364, %365
  %367 = fmul fast float %341, %366
  %368 = fsub fast float -0.000000e+00, %367
  %369 = fmul fast float %309, %316
  %370 = fmul fast float %310, %315
  %371 = fsub fast float %369, %370
  %372 = fmul fast float %371, %341
  %373 = call float @dx.op.dot3.f32(i32 55, float %342, float %344, float %345, float %324, float %325, float %326)  ; Dot3(ax,ay,az,bx,by,bz)
  %374 = call float @dx.op.dot3.f32(i32 55, float %350, float %354, float %359, float %324, float %325, float %326)  ; Dot3(ax,ay,az,bx,by,bz)
  %375 = call float @dx.op.dot3.f32(i32 55, float %363, float %368, float %372, float %324, float %325, float %326)  ; Dot3(ax,ay,az,bx,by,bz)
  %376 = fsub fast float 1.000000e+00, %373
  %377 = fsub fast float %376, %374
  %378 = fsub fast float %377, %375
  %379 = call float @dx.op.binary.f32(i32 36, float %373, float %374)  ; FMin(a,b)
  %380 = call float @dx.op.binary.f32(i32 36, float %379, float %375)  ; FMin(a,b)
  %381 = call float @dx.op.binary.f32(i32 36, float %380, float %378)  ; FMin(a,b)
  %382 = call float @dx.op.binary.f32(i32 35, float %373, float %374)  ; FMax(a,b)
  %383 = call float @dx.op.binary.f32(i32 35, float %382, float %375)  ; FMax(a,b)
  %384 = call float @dx.op.binary.f32(i32 35, float %383, float %378)  ; FMax(a,b)
  %385 = fcmp fast oge float %381, 0xBF50624DE0000000
  %386 = fcmp fast olt float %384, 0x3FF00068E0000000
  %387 = and i1 %385, %386
  br i1 %387, label %404, label %388, !dx.controlflow.hints !37

; <label>:388                                     ; preds = %272
  %389 = fcmp fast oeq float %381, %373
  %390 = fcmp fast oeq float %381, %374
  %391 = fcmp fast oeq float %381, %375
  %392 = select i1 %391, i32 8, i32 12
  %393 = select i1 %390, i32 4, i32 %392
  %394 = select i1 %389, i32 0, i32 %393
  %395 = or i32 %394, %273
  %396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %395, i32 undef)  ; BufferLoad(srv,index,wot)
  %397 = extractvalue %dx.types.ResRet.i32 %396, 0
  %398 = icmp ne i32 %265, -1
  %399 = icmp eq i32 %397, %265
  %400 = and i1 %398, %399
  br i1 %400, label %404, label %401, !dx.controlflow.hints !38

; <label>:401                                     ; preds = %388
  %402 = add nuw nsw i32 %264, 1
  %403 = icmp eq i32 %397, -1
  br i1 %403, label %404, label %263, !llvm.loop !39

; <label>:404                                     ; preds = %401, %388, %272, %263
  %405 = phi i32 [ %266, %388 ], [ %266, %272 ], [ -1, %401 ], [ -1, %263 ]
  %406 = phi float [ %373, %388 ], [ %373, %272 ], [ %373, %401 ], [ %267, %263 ]
  %407 = phi float [ %374, %388 ], [ %374, %272 ], [ %374, %401 ], [ %268, %263 ]
  %408 = phi float [ %375, %388 ], [ %375, %272 ], [ %375, %401 ], [ %269, %263 ]
  %409 = phi float [ %378, %388 ], [ %378, %272 ], [ %378, %401 ], [ %270, %263 ]
  br label %410

; <label>:410                                     ; preds = %404, %259
  %411 = phi i32 [ -1, %259 ], [ %405, %404 ]
  %412 = phi float [ 0.000000e+00, %259 ], [ %406, %404 ]
  %413 = phi float [ 0.000000e+00, %259 ], [ %407, %404 ]
  %414 = phi float [ 0.000000e+00, %259 ], [ %408, %404 ]
  %415 = phi float [ 0.000000e+00, %259 ], [ %409, %404 ]
  %416 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %412)  ; FMax(a,b)
  %417 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %413)  ; FMax(a,b)
  %418 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %414)  ; FMax(a,b)
  %419 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %415)  ; FMax(a,b)
  %420 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %416)  ; FMin(a,b)
  %421 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %417)  ; FMin(a,b)
  %422 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %418)  ; FMin(a,b)
  %423 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %419)  ; FMin(a,b)
  store float %420, float* %103, align 4
  store float %421, float* %104, align 4
  store float %422, float* %105, align 4
  store float %423, float* %106, align 4
  %424 = icmp eq i32 %411, -1
  br i1 %424, label %425, label %438, !dx.controlflow.hints !41

; <label>:425                                     ; preds = %410
  %426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %427 = extractvalue %dx.types.ResRet.i32 %426, 1
  %428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %429 = extractvalue %dx.types.ResRet.i32 %428, 0
  %430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %431 = extractvalue %dx.types.ResRet.i32 %430, 0
  %432 = and i32 %431, 65535
  %433 = call float @dx.op.legacyF16ToF32(i32 131, i32 %432)  ; LegacyF16ToF32(value)
  %434 = lshr i32 %429, 16
  %435 = call float @dx.op.legacyF16ToF32(i32 131, i32 %434)  ; LegacyF16ToF32(value)
  %436 = and i32 %427, 65535
  %437 = call float @dx.op.legacyF16ToF32(i32 131, i32 %436)  ; LegacyF16ToF32(value)
  br label %885

; <label>:438                                     ; preds = %410
  %439 = shl nsw i32 %411, 4
  %440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %441 = extractvalue %dx.types.ResRet.i32 %440, 0
  %442 = extractvalue %dx.types.ResRet.i32 %440, 1
  %443 = extractvalue %dx.types.ResRet.i32 %440, 2
  %444 = extractvalue %dx.types.ResRet.i32 %440, 3
  %445 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i32 0, i32 0
  store i32 %441, i32* %445, align 4
  %446 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i32 0, i32 1
  store i32 %442, i32* %446, align 4
  %447 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i32 0, i32 2
  store i32 %443, i32* %447, align 4
  %448 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i32 0, i32 3
  store i32 %444, i32* %448, align 4
  %449 = getelementptr inbounds [4 x float], [4 x float]* %24, i32 0, i32 0
  store float 0.000000e+00, float* %449, align 4
  %450 = getelementptr inbounds [4 x float], [4 x float]* %24, i32 0, i32 1
  store float 0.000000e+00, float* %450, align 4
  %451 = getelementptr inbounds [4 x float], [4 x float]* %24, i32 0, i32 2
  store float 0.000000e+00, float* %451, align 4
  %452 = getelementptr inbounds [4 x float], [4 x float]* %24, i32 0, i32 3
  store float 0.000000e+00, float* %452, align 4
  %453 = icmp slt i32 %441, 0
  br i1 %453, label %454, label %544, !dx.controlflow.hints !42

; <label>:454                                     ; preds = %438
  %455 = fsub fast float 1.000000e+00, %420
  %456 = fdiv fast float 1.000000e+00, %455
  %457 = shl nsw i32 %411, 6
  %458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %459 = extractvalue %dx.types.ResRet.i32 %458, 0
  %460 = extractvalue %dx.types.ResRet.i32 %458, 1
  %461 = extractvalue %dx.types.ResRet.i32 %458, 2
  %462 = extractvalue %dx.types.ResRet.i32 %458, 3
  %463 = fmul fast float %456, %423
  %464 = fmul fast float %456, %421
  %465 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i32 0, i32 0
  store i32 %459, i32* %465, align 4
  %466 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i32 0, i32 1
  store i32 %460, i32* %466, align 4
  %467 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i32 0, i32 2
  store i32 %461, i32* %467, align 4
  %468 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i32 0, i32 3
  store i32 %462, i32* %468, align 4
  %469 = fmul fast float %464, 4.000000e+00
  %470 = call float @dx.op.unary.f32(i32 27, float %469)  ; Round_ni(value)
  %471 = fmul fast float %463, 4.000000e+00
  %472 = call float @dx.op.unary.f32(i32 27, float %471)  ; Round_ni(value)
  %473 = fsub fast float 1.100000e+01, %470
  %474 = fmul fast float %470, 5.000000e-01
  %475 = fmul fast float %474, %473
  %476 = fadd fast float %472, 5.000000e-01
  %477 = fadd fast float %476, %475
  %478 = fptosi float %477 to i32
  %479 = fptosi float %470 to i32
  %480 = sub nsw i32 5, %479
  %481 = fmul fast float %472, 2.500000e-01
  %482 = fmul fast float %470, 2.500000e-01
  %483 = add nsw i32 %478, 1
  %484 = add nsw i32 %478, %480
  %485 = fsub fast float %463, %481
  %486 = fmul fast float %485, 4.000000e+00
  %487 = fsub fast float %464, %482
  %488 = fmul fast float %487, 4.000000e+00
  %489 = fadd fast float %485, %487
  %490 = fmul fast float %489, 4.000000e+00
  %491 = fcmp fast ogt float %490, 1.000000e+00
  br i1 %491, label %492, label %498, !dx.controlflow.hints !43

; <label>:492                                     ; preds = %454
  %493 = add nsw i32 %484, 1
  %494 = fadd fast float %488, -1.000000e+00
  %495 = fsub fast float -0.000000e+00, %494
  %496 = fadd fast float %486, -1.000000e+00
  %497 = fsub fast float -0.000000e+00, %496
  br label %498

; <label>:498                                     ; preds = %492, %454
  %499 = phi i32 [ %493, %492 ], [ %478, %454 ]
  %500 = phi i32 [ %483, %492 ], [ %484, %454 ]
  %501 = phi i32 [ %484, %492 ], [ %483, %454 ]
  %502 = phi float [ %497, %492 ], [ %488, %454 ]
  %503 = phi float [ %495, %492 ], [ %486, %454 ]
  %504 = fsub fast float 1.000000e+00, %502
  %505 = fsub fast float %504, %503
  %506 = lshr i32 %501, 2
  %507 = getelementptr [4 x i32], [4 x i32]* %21, i32 0, i32 %506
  %508 = load i32, i32* %507, align 4, !tbaa !44, !noalias !48
  %509 = shl i32 %501, 3
  %510 = and i32 %509, 24
  %511 = lshr i32 %508, %510
  %512 = and i32 %511, 255
  %513 = sitofp i32 %512 to float
  %514 = fmul fast float %503, 0x3F70101020000000
  %515 = fmul fast float %514, %513
  %516 = lshr i32 %500, 2
  %517 = getelementptr [4 x i32], [4 x i32]* %21, i32 0, i32 %516
  %518 = load i32, i32* %517, align 4, !tbaa !44, !noalias !48
  %519 = shl i32 %500, 3
  %520 = and i32 %519, 24
  %521 = lshr i32 %518, %520
  %522 = and i32 %521, 255
  %523 = sitofp i32 %522 to float
  %524 = fmul fast float %502, 0x3F70101020000000
  %525 = fmul fast float %524, %523
  %526 = lshr i32 %499, 2
  %527 = getelementptr [4 x i32], [4 x i32]* %21, i32 0, i32 %526
  %528 = load i32, i32* %527, align 4, !tbaa !44, !noalias !48
  %529 = shl i32 %499, 3
  %530 = and i32 %529, 24
  %531 = lshr i32 %528, %530
  %532 = and i32 %531, 255
  %533 = sitofp i32 %532 to float
  %534 = fmul fast float %505, 0x3F70101020000000
  %535 = fmul fast float %534, %533
  %536 = fsub fast float 1.000000e+00, %515
  %537 = fsub fast float %536, %525
  %538 = fsub fast float %537, %535
  %539 = fmul fast float %420, 2.000000e+01
  %540 = fadd fast float %539, 1.000000e+00
  %541 = fmul fast float %538, 2.000000e+01
  %542 = fsub fast float %540, %541
  %543 = call float @dx.op.unary.f32(i32 7, float %542)  ; Saturate(value)
  br label %544

; <label>:544                                     ; preds = %498, %438
  %545 = phi float [ %543, %498 ], [ 1.000000e+00, %438 ]
  store float %545, float* %449, align 4, !tbaa !62, !noalias !48
  %546 = icmp slt i32 %442, 0
  br i1 %546, label %547, label %638, !dx.controlflow.hints !42

; <label>:547                                     ; preds = %544
  %548 = fsub fast float 1.000000e+00, %421
  %549 = fdiv fast float 1.000000e+00, %548
  %550 = shl i32 %411, 6
  %551 = or i32 %550, 16
  %552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %551, i32 undef)  ; BufferLoad(srv,index,wot)
  %553 = extractvalue %dx.types.ResRet.i32 %552, 0
  %554 = extractvalue %dx.types.ResRet.i32 %552, 1
  %555 = extractvalue %dx.types.ResRet.i32 %552, 2
  %556 = extractvalue %dx.types.ResRet.i32 %552, 3
  %557 = fmul fast float %549, %420
  %558 = fmul fast float %549, %423
  %559 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i32 0, i32 0
  store i32 %553, i32* %559, align 4
  %560 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i32 0, i32 1
  store i32 %554, i32* %560, align 4
  %561 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i32 0, i32 2
  store i32 %555, i32* %561, align 4
  %562 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i32 0, i32 3
  store i32 %556, i32* %562, align 4
  %563 = fmul fast float %558, 4.000000e+00
  %564 = call float @dx.op.unary.f32(i32 27, float %563)  ; Round_ni(value)
  %565 = fmul fast float %557, 4.000000e+00
  %566 = call float @dx.op.unary.f32(i32 27, float %565)  ; Round_ni(value)
  %567 = fsub fast float 1.100000e+01, %564
  %568 = fmul fast float %564, 5.000000e-01
  %569 = fmul fast float %568, %567
  %570 = fadd fast float %566, 5.000000e-01
  %571 = fadd fast float %570, %569
  %572 = fptosi float %571 to i32
  %573 = fptosi float %564 to i32
  %574 = sub nsw i32 5, %573
  %575 = fmul fast float %566, 2.500000e-01
  %576 = fmul fast float %564, 2.500000e-01
  %577 = add nsw i32 %572, 1
  %578 = add nsw i32 %572, %574
  %579 = fsub fast float %557, %575
  %580 = fmul fast float %579, 4.000000e+00
  %581 = fsub fast float %558, %576
  %582 = fmul fast float %581, 4.000000e+00
  %583 = fadd fast float %579, %581
  %584 = fmul fast float %583, 4.000000e+00
  %585 = fcmp fast ogt float %584, 1.000000e+00
  br i1 %585, label %586, label %592, !dx.controlflow.hints !43

; <label>:586                                     ; preds = %547
  %587 = add nsw i32 %578, 1
  %588 = fadd fast float %582, -1.000000e+00
  %589 = fsub fast float -0.000000e+00, %588
  %590 = fadd fast float %580, -1.000000e+00
  %591 = fsub fast float -0.000000e+00, %590
  br label %592

; <label>:592                                     ; preds = %586, %547
  %593 = phi i32 [ %587, %586 ], [ %572, %547 ]
  %594 = phi i32 [ %577, %586 ], [ %578, %547 ]
  %595 = phi i32 [ %578, %586 ], [ %577, %547 ]
  %596 = phi float [ %591, %586 ], [ %582, %547 ]
  %597 = phi float [ %589, %586 ], [ %580, %547 ]
  %598 = fsub fast float 1.000000e+00, %596
  %599 = fsub fast float %598, %597
  %600 = lshr i32 %595, 2
  %601 = getelementptr [4 x i32], [4 x i32]* %21, i32 0, i32 %600
  %602 = load i32, i32* %601, align 4, !tbaa !44, !noalias !48
  %603 = shl i32 %595, 3
  %604 = and i32 %603, 24
  %605 = lshr i32 %602, %604
  %606 = and i32 %605, 255
  %607 = sitofp i32 %606 to float
  %608 = fmul fast float %597, 0x3F70101020000000
  %609 = fmul fast float %608, %607
  %610 = lshr i32 %594, 2
  %611 = getelementptr [4 x i32], [4 x i32]* %21, i32 0, i32 %610
  %612 = load i32, i32* %611, align 4, !tbaa !44, !noalias !48
  %613 = shl i32 %594, 3
  %614 = and i32 %613, 24
  %615 = lshr i32 %612, %614
  %616 = and i32 %615, 255
  %617 = sitofp i32 %616 to float
  %618 = fmul fast float %596, 0x3F70101020000000
  %619 = fmul fast float %618, %617
  %620 = lshr i32 %593, 2
  %621 = getelementptr [4 x i32], [4 x i32]* %21, i32 0, i32 %620
  %622 = load i32, i32* %621, align 4, !tbaa !44, !noalias !48
  %623 = shl i32 %593, 3
  %624 = and i32 %623, 24
  %625 = lshr i32 %622, %624
  %626 = and i32 %625, 255
  %627 = sitofp i32 %626 to float
  %628 = fmul fast float %599, 0x3F70101020000000
  %629 = fmul fast float %628, %627
  %630 = fsub fast float 1.000000e+00, %609
  %631 = fsub fast float %630, %619
  %632 = fsub fast float %631, %629
  %633 = fmul fast float %421, 2.000000e+01
  %634 = fadd fast float %633, 1.000000e+00
  %635 = fmul fast float %632, 2.000000e+01
  %636 = fsub fast float %634, %635
  %637 = call float @dx.op.unary.f32(i32 7, float %636)  ; Saturate(value)
  br label %638

; <label>:638                                     ; preds = %592, %544
  %639 = phi float [ %637, %592 ], [ 1.000000e+00, %544 ]
  store float %639, float* %450, align 4, !tbaa !62, !noalias !48
  %640 = fadd fast float %639, %545
  %641 = icmp slt i32 %443, 0
  br i1 %641, label %642, label %733, !dx.controlflow.hints !42

; <label>:642                                     ; preds = %638
  %643 = fsub fast float 1.000000e+00, %422
  %644 = fdiv fast float 1.000000e+00, %643
  %645 = shl i32 %411, 6
  %646 = or i32 %645, 32
  %647 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %646, i32 undef)  ; BufferLoad(srv,index,wot)
  %648 = extractvalue %dx.types.ResRet.i32 %647, 0
  %649 = extractvalue %dx.types.ResRet.i32 %647, 1
  %650 = extractvalue %dx.types.ResRet.i32 %647, 2
  %651 = extractvalue %dx.types.ResRet.i32 %647, 3
  %652 = fmul fast float %644, %420
  %653 = fmul fast float %644, %421
  %654 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i32 0, i32 0
  store i32 %648, i32* %654, align 4
  %655 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i32 0, i32 1
  store i32 %649, i32* %655, align 4
  %656 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i32 0, i32 2
  store i32 %650, i32* %656, align 4
  %657 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i32 0, i32 3
  store i32 %651, i32* %657, align 4
  %658 = fmul fast float %653, 4.000000e+00
  %659 = call float @dx.op.unary.f32(i32 27, float %658)  ; Round_ni(value)
  %660 = fmul fast float %652, 4.000000e+00
  %661 = call float @dx.op.unary.f32(i32 27, float %660)  ; Round_ni(value)
  %662 = fsub fast float 1.100000e+01, %659
  %663 = fmul fast float %659, 5.000000e-01
  %664 = fmul fast float %663, %662
  %665 = fadd fast float %661, 5.000000e-01
  %666 = fadd fast float %665, %664
  %667 = fptosi float %666 to i32
  %668 = fptosi float %659 to i32
  %669 = sub nsw i32 5, %668
  %670 = fmul fast float %661, 2.500000e-01
  %671 = fmul fast float %659, 2.500000e-01
  %672 = add nsw i32 %667, 1
  %673 = add nsw i32 %667, %669
  %674 = fsub fast float %652, %670
  %675 = fmul fast float %674, 4.000000e+00
  %676 = fsub fast float %653, %671
  %677 = fmul fast float %676, 4.000000e+00
  %678 = fadd fast float %674, %676
  %679 = fmul fast float %678, 4.000000e+00
  %680 = fcmp fast ogt float %679, 1.000000e+00
  br i1 %680, label %681, label %687, !dx.controlflow.hints !43

; <label>:681                                     ; preds = %642
  %682 = add nsw i32 %673, 1
  %683 = fadd fast float %677, -1.000000e+00
  %684 = fsub fast float -0.000000e+00, %683
  %685 = fadd fast float %675, -1.000000e+00
  %686 = fsub fast float -0.000000e+00, %685
  br label %687

; <label>:687                                     ; preds = %681, %642
  %688 = phi i32 [ %682, %681 ], [ %667, %642 ]
  %689 = phi i32 [ %672, %681 ], [ %673, %642 ]
  %690 = phi i32 [ %673, %681 ], [ %672, %642 ]
  %691 = phi float [ %686, %681 ], [ %677, %642 ]
  %692 = phi float [ %684, %681 ], [ %675, %642 ]
  %693 = fsub fast float 1.000000e+00, %691
  %694 = fsub fast float %693, %692
  %695 = lshr i32 %690, 2
  %696 = getelementptr [4 x i32], [4 x i32]* %21, i32 0, i32 %695
  %697 = load i32, i32* %696, align 4, !tbaa !44, !noalias !48
  %698 = shl i32 %690, 3
  %699 = and i32 %698, 24
  %700 = lshr i32 %697, %699
  %701 = and i32 %700, 255
  %702 = sitofp i32 %701 to float
  %703 = fmul fast float %692, 0x3F70101020000000
  %704 = fmul fast float %703, %702
  %705 = lshr i32 %689, 2
  %706 = getelementptr [4 x i32], [4 x i32]* %21, i32 0, i32 %705
  %707 = load i32, i32* %706, align 4, !tbaa !44, !noalias !48
  %708 = shl i32 %689, 3
  %709 = and i32 %708, 24
  %710 = lshr i32 %707, %709
  %711 = and i32 %710, 255
  %712 = sitofp i32 %711 to float
  %713 = fmul fast float %691, 0x3F70101020000000
  %714 = fmul fast float %713, %712
  %715 = lshr i32 %688, 2
  %716 = getelementptr [4 x i32], [4 x i32]* %21, i32 0, i32 %715
  %717 = load i32, i32* %716, align 4, !tbaa !44, !noalias !48
  %718 = shl i32 %688, 3
  %719 = and i32 %718, 24
  %720 = lshr i32 %717, %719
  %721 = and i32 %720, 255
  %722 = sitofp i32 %721 to float
  %723 = fmul fast float %694, 0x3F70101020000000
  %724 = fmul fast float %723, %722
  %725 = fsub fast float 1.000000e+00, %704
  %726 = fsub fast float %725, %714
  %727 = fsub fast float %726, %724
  %728 = fmul fast float %422, 2.000000e+01
  %729 = fadd fast float %728, 1.000000e+00
  %730 = fmul fast float %727, 2.000000e+01
  %731 = fsub fast float %729, %730
  %732 = call float @dx.op.unary.f32(i32 7, float %731)  ; Saturate(value)
  br label %733

; <label>:733                                     ; preds = %687, %638
  %734 = phi float [ %732, %687 ], [ 1.000000e+00, %638 ]
  store float %734, float* %451, align 4, !tbaa !62, !noalias !48
  %735 = fadd fast float %640, %734
  %736 = icmp slt i32 %444, 0
  br i1 %736, label %737, label %828, !dx.controlflow.hints !42

; <label>:737                                     ; preds = %733
  %738 = fsub fast float 1.000000e+00, %423
  %739 = fdiv fast float 1.000000e+00, %738
  %740 = shl i32 %411, 6
  %741 = or i32 %740, 48
  %742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %741, i32 undef)  ; BufferLoad(srv,index,wot)
  %743 = extractvalue %dx.types.ResRet.i32 %742, 0
  %744 = extractvalue %dx.types.ResRet.i32 %742, 1
  %745 = extractvalue %dx.types.ResRet.i32 %742, 2
  %746 = extractvalue %dx.types.ResRet.i32 %742, 3
  %747 = fmul fast float %739, %420
  %748 = fmul fast float %739, %421
  %749 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i32 0, i32 0
  store i32 %743, i32* %749, align 4
  %750 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i32 0, i32 1
  store i32 %744, i32* %750, align 4
  %751 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i32 0, i32 2
  store i32 %745, i32* %751, align 4
  %752 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i32 0, i32 3
  store i32 %746, i32* %752, align 4
  %753 = fmul fast float %748, 4.000000e+00
  %754 = call float @dx.op.unary.f32(i32 27, float %753)  ; Round_ni(value)
  %755 = fmul fast float %747, 4.000000e+00
  %756 = call float @dx.op.unary.f32(i32 27, float %755)  ; Round_ni(value)
  %757 = fsub fast float 1.100000e+01, %754
  %758 = fmul fast float %754, 5.000000e-01
  %759 = fmul fast float %758, %757
  %760 = fadd fast float %756, 5.000000e-01
  %761 = fadd fast float %760, %759
  %762 = fptosi float %761 to i32
  %763 = fptosi float %754 to i32
  %764 = sub nsw i32 5, %763
  %765 = fmul fast float %756, 2.500000e-01
  %766 = fmul fast float %754, 2.500000e-01
  %767 = add nsw i32 %762, 1
  %768 = add nsw i32 %762, %764
  %769 = fsub fast float %747, %765
  %770 = fmul fast float %769, 4.000000e+00
  %771 = fsub fast float %748, %766
  %772 = fmul fast float %771, 4.000000e+00
  %773 = fadd fast float %769, %771
  %774 = fmul fast float %773, 4.000000e+00
  %775 = fcmp fast ogt float %774, 1.000000e+00
  br i1 %775, label %776, label %782, !dx.controlflow.hints !43

; <label>:776                                     ; preds = %737
  %777 = add nsw i32 %768, 1
  %778 = fadd fast float %772, -1.000000e+00
  %779 = fsub fast float -0.000000e+00, %778
  %780 = fadd fast float %770, -1.000000e+00
  %781 = fsub fast float -0.000000e+00, %780
  br label %782

; <label>:782                                     ; preds = %776, %737
  %783 = phi i32 [ %777, %776 ], [ %762, %737 ]
  %784 = phi i32 [ %767, %776 ], [ %768, %737 ]
  %785 = phi i32 [ %768, %776 ], [ %767, %737 ]
  %786 = phi float [ %781, %776 ], [ %772, %737 ]
  %787 = phi float [ %779, %776 ], [ %770, %737 ]
  %788 = fsub fast float 1.000000e+00, %786
  %789 = fsub fast float %788, %787
  %790 = lshr i32 %785, 2
  %791 = getelementptr [4 x i32], [4 x i32]* %21, i32 0, i32 %790
  %792 = load i32, i32* %791, align 4, !tbaa !44, !noalias !48
  %793 = shl i32 %785, 3
  %794 = and i32 %793, 24
  %795 = lshr i32 %792, %794
  %796 = and i32 %795, 255
  %797 = sitofp i32 %796 to float
  %798 = fmul fast float %787, 0x3F70101020000000
  %799 = fmul fast float %798, %797
  %800 = lshr i32 %784, 2
  %801 = getelementptr [4 x i32], [4 x i32]* %21, i32 0, i32 %800
  %802 = load i32, i32* %801, align 4, !tbaa !44, !noalias !48
  %803 = shl i32 %784, 3
  %804 = and i32 %803, 24
  %805 = lshr i32 %802, %804
  %806 = and i32 %805, 255
  %807 = sitofp i32 %806 to float
  %808 = fmul fast float %786, 0x3F70101020000000
  %809 = fmul fast float %808, %807
  %810 = lshr i32 %783, 2
  %811 = getelementptr [4 x i32], [4 x i32]* %21, i32 0, i32 %810
  %812 = load i32, i32* %811, align 4, !tbaa !44, !noalias !48
  %813 = shl i32 %783, 3
  %814 = and i32 %813, 24
  %815 = lshr i32 %812, %814
  %816 = and i32 %815, 255
  %817 = sitofp i32 %816 to float
  %818 = fmul fast float %789, 0x3F70101020000000
  %819 = fmul fast float %818, %817
  %820 = fsub fast float 1.000000e+00, %799
  %821 = fsub fast float %820, %809
  %822 = fsub fast float %821, %819
  %823 = fmul fast float %423, 2.000000e+01
  %824 = fadd fast float %823, 1.000000e+00
  %825 = fmul fast float %822, 2.000000e+01
  %826 = fsub fast float %824, %825
  %827 = call float @dx.op.unary.f32(i32 7, float %826)  ; Saturate(value)
  br label %828

; <label>:828                                     ; preds = %782, %733
  %829 = phi float [ %827, %782 ], [ 1.000000e+00, %733 ]
  store float %829, float* %452, align 4, !tbaa !62, !noalias !48
  %830 = fadd fast float %735, %829
  %831 = fcmp fast oeq float %830, 0.000000e+00
  br i1 %831, label %832, label %833, !dx.controlflow.hints !64

; <label>:832                                     ; preds = %828
  store float 2.500000e-01, float* %449, align 4
  store float 2.500000e-01, float* %450, align 4
  store float 2.500000e-01, float* %451, align 4
  store float 2.500000e-01, float* %452, align 4
  br label %833

; <label>:833                                     ; preds = %832, %828
  %834 = phi float [ 2.500000e-01, %832 ], [ %545, %828 ]
  br label %835

; <label>:835                                     ; preds = %875, %833
  %836 = phi float [ %877, %875 ], [ %834, %833 ]
  %837 = phi float [ %869, %875 ], [ 0.000000e+00, %833 ]
  %838 = phi float [ %870, %875 ], [ 0.000000e+00, %833 ]
  %839 = phi float [ %871, %875 ], [ 0.000000e+00, %833 ]
  %840 = phi float [ %872, %875 ], [ 0.000000e+00, %833 ]
  %841 = phi i32 [ %873, %875 ], [ 0, %833 ]
  %842 = fcmp fast ogt float %836, 0.000000e+00
  br i1 %842, label %843, label %868, !dx.controlflow.hints !65

; <label>:843                                     ; preds = %835
  %844 = getelementptr [4 x float], [4 x float]* %22, i32 0, i32 %841
  %845 = load float, float* %844, align 4, !tbaa !62, !noalias !48
  %846 = getelementptr [4 x i32], [4 x i32]* %23, i32 0, i32 %841
  %847 = load i32, i32* %846, align 4, !tbaa !44, !noalias !48
  %848 = fmul fast float %845, %836
  %849 = shl i32 %847, 5
  %850 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %849, i32 undef)  ; BufferLoad(srv,index,wot)
  %851 = extractvalue %dx.types.ResRet.i32 %850, 0
  %852 = shl i32 %851, 4
  %853 = and i32 %852, 32752
  %854 = call float @dx.op.legacyF16ToF32(i32 131, i32 %853)  ; LegacyF16ToF32(value)
  %855 = lshr i32 %851, 7
  %856 = and i32 %855, 32752
  %857 = call float @dx.op.legacyF16ToF32(i32 131, i32 %856)  ; LegacyF16ToF32(value)
  %858 = lshr i32 %851, 22
  %859 = shl nuw nsw i32 %858, 5
  %860 = call float @dx.op.legacyF16ToF32(i32 131, i32 %859)  ; LegacyF16ToF32(value)
  %861 = fmul fast float %854, %848
  %862 = fadd fast float %861, %837
  %863 = fmul fast float %857, %848
  %864 = fadd fast float %863, %838
  %865 = fmul fast float %860, %848
  %866 = fadd fast float %865, %839
  %867 = fadd fast float %848, %840
  br label %868

; <label>:868                                     ; preds = %843, %835
  %869 = phi float [ %862, %843 ], [ %837, %835 ]
  %870 = phi float [ %864, %843 ], [ %838, %835 ]
  %871 = phi float [ %866, %843 ], [ %839, %835 ]
  %872 = phi float [ %867, %843 ], [ %840, %835 ]
  %873 = add nuw nsw i32 %841, 1
  %874 = icmp eq i32 %873, 4
  br i1 %874, label %878, label %875

; <label>:875                                     ; preds = %868
  %876 = getelementptr [4 x float], [4 x float]* %24, i32 0, i32 %873
  %877 = load float, float* %876, align 4, !tbaa !62, !noalias !48
  br label %835

; <label>:878                                     ; preds = %868
  %879 = fcmp fast ogt float %872, 0.000000e+00
  %880 = fdiv fast float 1.000000e+00, %872
  %881 = select i1 %879, float %880, float 1.000000e+00
  %882 = fmul fast float %881, %869
  %883 = fmul fast float %881, %870
  %884 = fmul fast float %881, %871
  br label %885

; <label>:885                                     ; preds = %878, %425
  %886 = phi float [ %433, %425 ], [ %882, %878 ]
  %887 = phi float [ %435, %425 ], [ %883, %878 ]
  %888 = phi float [ %437, %425 ], [ %884, %878 ]
  %889 = phi i32 [ -1, %425 ], [ %411, %878 ]
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %2, i32 %18, i32 %19, i32 %20, i32 %889, i32 %889, i32 %889, i32 %889, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %890 = fmul fast float %886, 0x3FD20DD760000000
  %891 = fmul fast float %887, 0x3FD20DD760000000
  %892 = fmul fast float %888, 0x3FD20DD760000000
  %893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %894 = extractvalue %dx.types.CBufRet.f32 %893, 3
  %895 = fmul fast float %890, %894
  %896 = fmul fast float %891, %894
  %897 = fmul fast float %892, %894
  %898 = extractvalue %dx.types.CBufRet.f32 %893, 0
  %899 = fmul fast float %895, %898
  %900 = fmul fast float %896, %898
  %901 = fmul fast float %897, %898
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %18, i32 %19, i32 undef, float %899, float %900, float %901, float %899, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!dx.entryPoints = !{!28}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !18, !22, !26}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !17}
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
!18 = !{!19, !21}
!19 = !{i32 0, %"class.RWTexture3D<unsigned int>"* undef, !"", i32 0, i32 4, i32 1, i32 4, i1 false, i1 false, i1 false, !20}
!20 = !{i32 0, i32 5}
!21 = !{i32 1, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 5, i32 1, i32 2, i1 false, i1 false, i1 false, !16}
!22 = !{!23, !24, !25}
!23 = !{i32 0, %VolumetricLightGridConstants* undef, !"", i32 0, i32 1, i32 1, i32 32, null}
!24 = !{i32 1, %GfxLGBoundConsts* undef, !"", i32 0, i32 4, i32 1, i32 16, null}
!25 = !{i32 2, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!26 = !{!27}
!27 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!28 = !{void ()* @cs_scene_luma_sh_sample_lightgrid_aniso, !"cs_scene_luma_sh_sample_lightgrid_aniso", null, !4, !29}
!29 = !{i32 0, i64 272, i32 4, !30}
!30 = !{i32 8, i32 8, i32 1}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.unroll.disable"}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = !{!45, !45, i64 0}
!45 = !{!"int", !46, i64 0}
!46 = !{!"omnipotent char", !47, i64 0}
!47 = !{!"Simple C/C++ TBAA"}
!48 = !{!49, !51, !52, !53, !54, !55, !56, !58, !59, !60, !61}
!49 = distinct !{!49, !50, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %probeR"}
!50 = distinct !{!50, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z"}
!51 = distinct !{!51, !50, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %probeG"}
!52 = distinct !{!52, !50, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %probeB"}
!53 = distinct !{!53, !50, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %probeA"}
!54 = distinct !{!54, !50, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %primaryVisibility"}
!55 = distinct !{!55, !50, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %usedTet"}
!56 = distinct !{!56, !57, !"\01?LookupLighting@@YA_NV?$vector@M$02@@USH3Vec@@11AIAMIAIAI_N@Z: %redSH"}
!57 = distinct !{!57, !"\01?LookupLighting@@YA_NV?$vector@M$02@@USH3Vec@@11AIAMIAIAI_N@Z"}
!58 = distinct !{!58, !57, !"\01?LookupLighting@@YA_NV?$vector@M$02@@USH3Vec@@11AIAMIAIAI_N@Z: %greenSH"}
!59 = distinct !{!59, !57, !"\01?LookupLighting@@YA_NV?$vector@M$02@@USH3Vec@@11AIAMIAIAI_N@Z: %blueSH"}
!60 = distinct !{!60, !57, !"\01?LookupLighting@@YA_NV?$vector@M$02@@USH3Vec@@11AIAMIAIAI_N@Z: %probeA"}
!61 = distinct !{!61, !57, !"\01?LookupLighting@@YA_NV?$vector@M$02@@USH3Vec@@11AIAMIAIAI_N@Z: %usedTet"}
!62 = !{!63, !63, i64 0}
!63 = !{!"float", !46, i64 0}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}

