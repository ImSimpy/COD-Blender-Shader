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
; shader hash: 493b204efa1dcf9ea2ddc431d3f2e477
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
;   [144 x i8] (type annotation not present)
;
; }
;
; cbuffer 
; {
;
;   [64 x i8] (type annotation not present)
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
;                                   cbuffer      NA          NA     CB2            cb1     1
;                                   sampler      NA          NA      S0             s1     1
;                                   sampler      NA          NA      S1             s2     1
;                                   texture     f32          2d      T0             t1     1
;                                   texture     f32          2d      T1             t4     1
;                                   texture     f32          2d      T2             t0     1
;                                   texture     f32          2d      T3             t6     1
;                                   texture     f32          2d      T4             t8     1
;                                   texture    byte         r/o      T5             t9     1
;                                       UAV     f32          2d      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.RWTexture2D<vector<float, 4> >" = type { <4 x float> }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%TonemapConstants = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32 }
%ExposureConstants = type { i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.SamplerState = type { i32 }

define void @tonemap() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %14 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %15 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %16 = call i32 @dx.op.groupId.i32(i32 94, i32 1)  ; GroupId(component)
  %17 = uitofp i32 %13 to float
  %18 = uitofp i32 %14 to float
  %19 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %20 = extractvalue %dx.types.CBufRet.f32 %19, 0
  %21 = extractvalue %dx.types.CBufRet.f32 %19, 1
  %22 = fcmp fast oge float %17, %20
  %23 = fcmp fast oge float %18, %21
  %24 = or i1 %22, %23
  br i1 %24, label %256, label %25, !dx.controlflow.hints !25

; <label>:25                                      ; preds = %0
  %26 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %27 = extractvalue %dx.types.CBufRet.f32 %26, 2
  %28 = extractvalue %dx.types.CBufRet.f32 %26, 3
  %29 = fmul fast float %27, %17
  %30 = fmul fast float %28, %18
  %31 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %13, i32 %14, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %32 = extractvalue %dx.types.ResRet.f32 %31, 0
  %33 = extractvalue %dx.types.ResRet.f32 %31, 1
  %34 = extractvalue %dx.types.ResRet.f32 %31, 2
  %35 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %36 = extractvalue %dx.types.CBufRet.f32 %35, 0
  %37 = fcmp fast oge float %33, %36
  %38 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %39 = extractvalue %dx.types.CBufRet.i32 %38, 3
  %40 = and i32 %39, 3
  %41 = icmp ne i32 %40, 0
  %42 = and i32 %39, 4
  %43 = icmp eq i32 %42, 0
  %44 = and i1 %41, %43
  %45 = and i1 %37, %44
  br i1 %44, label %46, label %78, !dx.controlflow.hints !26

; <label>:46                                      ; preds = %25
  %47 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %8, float %29, float %30, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %48 = extractvalue %dx.types.ResRet.f32 %47, 0
  %49 = call float @dx.op.binary.f32(i32 35, float %48, float 0.000000e+00)  ; FMax(a,b)
  %50 = call float @dx.op.binary.f32(i32 36, float %49, float 3.225500e+04)  ; FMin(a,b)
  %51 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %52 = extractvalue %dx.types.CBufRet.f32 %51, 1
  %53 = fmul fast float %52, %32
  %54 = extractvalue %dx.types.CBufRet.f32 %51, 0
  %55 = fmul fast float %54, %50
  %56 = fadd fast float %55, %53
  br i1 %45, label %57, label %78, !dx.controlflow.hints !27

; <label>:57                                      ; preds = %46
  %58 = fmul fast float %52, %33
  %59 = extractvalue %dx.types.ResRet.f32 %47, 1
  %60 = call float @dx.op.binary.f32(i32 35, float %59, float 0.000000e+00)  ; FMax(a,b)
  %61 = call float @dx.op.binary.f32(i32 36, float %60, float 3.225500e+04)  ; FMin(a,b)
  %62 = fmul fast float %61, %54
  %63 = fadd fast float %62, %58
  %64 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 237)  ; CBufferLoadLegacy(handle,regIndex)
  %65 = extractvalue %dx.types.CBufRet.f32 %64, 3
  %66 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %8, float %63, float 0.000000e+00, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %67 = extractvalue %dx.types.ResRet.f32 %66, 0
  %68 = extractvalue %dx.types.ResRet.f32 %66, 1
  %69 = extractvalue %dx.types.ResRet.f32 %66, 2
  %70 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %71 = extractvalue %dx.types.CBufRet.f32 %70, 2
  %72 = fcmp fast ogt float %71, 1.500000e+00
  %73 = select i1 %72, float %67, float %68
  %74 = select i1 %72, float %67, float %69
  %75 = fmul fast float %67, %65
  %76 = fmul fast float %73, %65
  %77 = fmul fast float %74, %65
  br label %78

; <label>:78                                      ; preds = %57, %46, %25
  %79 = phi float [ %75, %57 ], [ %32, %25 ], [ %56, %46 ]
  %80 = phi float [ %76, %57 ], [ %33, %25 ], [ %56, %46 ]
  %81 = phi float [ %77, %57 ], [ %34, %25 ], [ %56, %46 ]
  br i1 %45, label %82, label %114, !dx.controlflow.hints !28

; <label>:82                                      ; preds = %78
  %83 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %84 = fmul fast float %83, 0x3FDAAAAAA0000000
  %85 = call float @dx.op.unary.f32(i32 21, float %84)  ; Exp(value)
  %86 = fsub fast float 1.000000e+00, %85
  %87 = call float @dx.op.unary.f32(i32 23, float %86)  ; Log(value)
  %88 = fmul fast float %87, 0x4003333340000000
  %89 = call float @dx.op.unary.f32(i32 21, float %88)  ; Exp(value)
  %90 = fdiv fast float %85, %86
  %91 = fadd fast float %90, %79
  %92 = fadd fast float %90, %80
  %93 = fadd fast float %90, %81
  %94 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %91)  ; FMax(a,b)
  %95 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %92)  ; FMax(a,b)
  %96 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %93)  ; FMax(a,b)
  %97 = call float @dx.op.unary.f32(i32 23, float %94)  ; Log(value)
  %98 = call float @dx.op.unary.f32(i32 23, float %95)  ; Log(value)
  %99 = call float @dx.op.unary.f32(i32 23, float %96)  ; Log(value)
  %100 = fmul fast float %97, 0x4003333340000000
  %101 = fmul fast float %98, 0x4003333340000000
  %102 = fmul fast float %99, 0x4003333340000000
  %103 = call float @dx.op.unary.f32(i32 21, float %100)  ; Exp(value)
  %104 = call float @dx.op.unary.f32(i32 21, float %101)  ; Exp(value)
  %105 = call float @dx.op.unary.f32(i32 21, float %102)  ; Exp(value)
  %106 = fmul fast float %103, %89
  %107 = fmul fast float %104, %89
  %108 = fmul fast float %105, %89
  %109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 219)  ; CBufferLoadLegacy(handle,regIndex)
  %110 = extractvalue %dx.types.CBufRet.f32 %109, 1
  %111 = fmul fast float %106, %110
  %112 = fmul fast float %107, %110
  %113 = fmul fast float %108, %110
  br label %203

; <label>:114                                     ; preds = %78
  %115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 304)  ; CBufferLoadLegacy(handle,regIndex)
  %116 = extractvalue %dx.types.CBufRet.f32 %115, 2
  %117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 305)  ; CBufferLoadLegacy(handle,regIndex)
  %118 = extractvalue %dx.types.CBufRet.f32 %117, 2
  %119 = extractvalue %dx.types.CBufRet.f32 %117, 3
  %120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 306)  ; CBufferLoadLegacy(handle,regIndex)
  %121 = extractvalue %dx.types.CBufRet.f32 %120, 0
  %122 = extractvalue %dx.types.CBufRet.f32 %120, 1
  %123 = fcmp fast ugt float %116, 0.000000e+00
  br i1 %123, label %124, label %174, !dx.controlflow.hints !29

; <label>:124                                     ; preds = %114
  %125 = extractvalue %dx.types.CBufRet.f32 %120, 2
  %126 = fcmp fast ogt float %125, 0.000000e+00
  %127 = extractvalue %dx.types.CBufRet.f32 %117, 1
  %128 = extractvalue %dx.types.CBufRet.f32 %117, 0
  %129 = extractvalue %dx.types.CBufRet.f32 %115, 1
  %130 = extractvalue %dx.types.CBufRet.f32 %115, 0
  %131 = fadd fast float %29, -5.000000e-01
  %132 = fadd fast float %30, -5.000000e-01
  %133 = fmul fast float %130, %131
  %134 = fmul fast float %129, %132
  %135 = fadd fast float %133, %128
  %136 = fadd fast float %134, %127
  br i1 %126, label %137, label %144, !dx.controlflow.hints !30

; <label>:137                                     ; preds = %124
  %138 = fmul fast float %135, 5.000000e-01
  %139 = fmul fast float %136, 5.000000e-01
  %140 = fadd fast float %138, 5.000000e-01
  %141 = fadd fast float %139, 5.000000e-01
  %142 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %8, float %140, float %141, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %143 = extractvalue %dx.types.ResRet.f32 %142, 0
  br label %157

; <label>:144                                     ; preds = %124
  %145 = fsub fast float -0.000000e+00, %118
  %146 = fsub fast float -0.000000e+00, %119
  %147 = call float @dx.op.binary.f32(i32 35, float %135, float %145)  ; FMax(a,b)
  %148 = call float @dx.op.binary.f32(i32 35, float %136, float %146)  ; FMax(a,b)
  %149 = call float @dx.op.binary.f32(i32 36, float %147, float %118)  ; FMin(a,b)
  %150 = call float @dx.op.binary.f32(i32 36, float %148, float %119)  ; FMin(a,b)
  %151 = fsub fast float %135, %149
  %152 = fsub fast float %136, %150
  %153 = fmul fast float %151, %151
  %154 = fmul fast float %152, %152
  %155 = fadd fast float %154, %153
  %156 = call float @dx.op.unary.f32(i32 24, float %155)  ; Sqrt(value)
  br label %157

; <label>:157                                     ; preds = %144, %137
  %158 = phi float [ %143, %137 ], [ %156, %144 ]
  %159 = fmul fast float %158, %121
  %160 = fadd fast float %159, %122
  %161 = call float @dx.op.unary.f32(i32 7, float %160)  ; Saturate(value)
  %162 = fmul fast float %161, %161
  %163 = fmul fast float %161, 2.000000e+00
  %164 = fsub fast float 3.000000e+00, %163
  %165 = fmul fast float %162, %164
  %166 = fsub fast float %165, %161
  %167 = fmul fast float %166, 0x3FE3333340000000
  %168 = fadd fast float %167, %161
  %169 = fmul fast float %168, %116
  %170 = fsub fast float 1.000000e+00, %169
  %171 = fmul fast float %170, %79
  %172 = fmul fast float %170, %80
  %173 = fmul fast float %170, %81
  br label %174

; <label>:174                                     ; preds = %157, %114
  %175 = phi float [ %171, %157 ], [ %79, %114 ]
  %176 = phi float [ %172, %157 ], [ %80, %114 ]
  %177 = phi float [ %173, %157 ], [ %81, %114 ]
  %178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %179 = extractvalue %dx.types.CBufRet.f32 %178, 0
  %180 = extractvalue %dx.types.CBufRet.f32 %178, 1
  %181 = extractvalue %dx.types.CBufRet.f32 %178, 2
  %182 = call float @dx.op.dot3.f32(i32 55, float %175, float %176, float %177, float %179, float %180, float %181)  ; Dot3(ax,ay,az,bx,by,bz)
  %183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %184 = extractvalue %dx.types.CBufRet.f32 %183, 0
  %185 = extractvalue %dx.types.CBufRet.f32 %183, 1
  %186 = extractvalue %dx.types.CBufRet.f32 %183, 2
  %187 = call float @dx.op.dot3.f32(i32 55, float %175, float %176, float %177, float %184, float %185, float %186)  ; Dot3(ax,ay,az,bx,by,bz)
  %188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %189 = extractvalue %dx.types.CBufRet.f32 %188, 0
  %190 = extractvalue %dx.types.CBufRet.f32 %188, 1
  %191 = extractvalue %dx.types.CBufRet.f32 %188, 2
  %192 = call float @dx.op.dot3.f32(i32 55, float %175, float %176, float %177, float %189, float %190, float %191)  ; Dot3(ax,ay,az,bx,by,bz)
  %193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %194 = extractvalue %dx.types.CBufRet.f32 %193, 0
  %195 = fmul fast float %194, %182
  %196 = fmul fast float %194, %187
  %197 = fmul fast float %194, %192
  %198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %199 = extractvalue %dx.types.CBufRet.f32 %198, 2
  %200 = fmul fast float %195, %199
  %201 = fmul fast float %196, %199
  %202 = fmul fast float %197, %199
  br label %203

; <label>:203                                     ; preds = %174, %82
  %204 = phi float [ %111, %82 ], [ %200, %174 ]
  %205 = phi float [ %112, %82 ], [ %201, %174 ]
  %206 = phi float [ %113, %82 ], [ %202, %174 ]
  %207 = fmul fast float %204, 0x3FE413A920000000
  %208 = call float @dx.op.tertiary.f32(i32 46, float 0x3FD5134040000000, float %205, float %207)  ; FMad(a,b,c)
  %209 = call float @dx.op.tertiary.f32(i32 46, float 0x3FA62B6AE0000000, float %206, float %208)  ; FMad(a,b,c)
  %210 = fmul fast float %204, 0x3FB1B089A0000000
  %211 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED6C8B40000000, float %205, float %210)  ; FMad(a,b,c)
  %212 = call float @dx.op.tertiary.f32(i32 46, float 0x3F8758E220000000, float %206, float %211)  ; FMad(a,b,c)
  %213 = fmul fast float %204, 0x3F90CB2960000000
  %214 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB6872B00000000, float %205, float %213)  ; FMad(a,b,c)
  %215 = call float @dx.op.tertiary.f32(i32 46, float 0x3FECA8C160000000, float %206, float %214)  ; FMad(a,b,c)
  %216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %217 = extractvalue %dx.types.CBufRet.f32 %216, 0
  %218 = fcmp fast ogt float %217, 0.000000e+00
  br i1 %218, label %219, label %252, !dx.controlflow.hints !31

; <label>:219                                     ; preds = %203
  %220 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %221 = extractvalue %dx.types.CBufRet.i32 %220, 1
  %222 = shl i32 %221, 1
  %223 = lshr i32 %16, 2
  %224 = extractvalue %dx.types.CBufRet.i32 %220, 0
  %225 = mul i32 %224, %223
  %226 = lshr i32 %15, 3
  %227 = add i32 %222, %226
  %228 = add i32 %227, %225
  %229 = shl i32 %228, 2
  %230 = shl i32 %16, 3
  %231 = and i32 %230, 24
  %232 = and i32 %15, 7
  %233 = or i32 %231, %232
  %234 = shl i32 1, %233
  %235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %229, i32 undef)  ; BufferLoad(srv,index,wot)
  %236 = extractvalue %dx.types.ResRet.i32 %235, 0
  %237 = and i32 %236, %234
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %252, label %239, !dx.controlflow.hints !32

; <label>:239                                     ; preds = %219
  %240 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %9, float %29, float %30, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %241 = extractvalue %dx.types.ResRet.f32 %240, 0
  %242 = extractvalue %dx.types.ResRet.f32 %240, 1
  %243 = extractvalue %dx.types.ResRet.f32 %240, 2
  %244 = extractvalue %dx.types.ResRet.f32 %240, 3
  %245 = fsub fast float 1.000000e+00, %244
  %246 = fmul fast float %245, %209
  %247 = fmul fast float %245, %212
  %248 = fmul fast float %245, %215
  %249 = fadd fast float %246, %241
  %250 = fadd fast float %247, %242
  %251 = fadd fast float %248, %243
  br label %252

; <label>:252                                     ; preds = %239, %219, %203
  %253 = phi float [ %249, %239 ], [ %209, %219 ], [ %209, %203 ]
  %254 = phi float [ %250, %239 ], [ %212, %219 ], [ %212, %203 ]
  %255 = phi float [ %251, %239 ], [ %215, %219 ], [ %215, %203 ]
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %13, i32 %14, i32 undef, float %253, float %254, float %255, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %256

; <label>:256                                     ; preds = %252, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!22}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !13, !15, !19}
!5 = !{!6, !8, !9, !10, !11, !12}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 4, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 6, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 8, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 9, i32 1, i32 11, i32 0, null}
!13 = !{!14}
!14 = !{i32 0, %"class.RWTexture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!15 = !{!16, !17, !18}
!16 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!17 = !{i32 1, %TonemapConstants* undef, !"", i32 0, i32 0, i32 1, i32 144, null}
!18 = !{i32 2, %ExposureConstants* undef, !"", i32 0, i32 1, i32 1, i32 64, null}
!19 = !{!20, !21}
!20 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!21 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!22 = !{void ()* @tonemap, !"tonemap", null, !4, !23}
!23 = !{i32 0, i64 272, i32 4, !24}
!24 = !{i32 8, i32 8, i32 1}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}

