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
; shader hash: 8f001c7d0e639b8a8a888d29f1aa2491
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
;                                   texture     f32          2d      T2             t6     1
;                                   texture     f32          2d      T3             t8     1
;                                   texture    byte         r/o      T4             t9     1
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
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %13 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %14 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %15 = call i32 @dx.op.groupId.i32(i32 94, i32 1)  ; GroupId(component)
  %16 = uitofp i32 %12 to float
  %17 = uitofp i32 %13 to float
  %18 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %19 = extractvalue %dx.types.CBufRet.f32 %18, 0
  %20 = extractvalue %dx.types.CBufRet.f32 %18, 1
  %21 = fcmp fast oge float %16, %19
  %22 = fcmp fast oge float %17, %20
  %23 = or i1 %21, %22
  br i1 %23, label %263, label %24, !dx.controlflow.hints !24

; <label>:24                                      ; preds = %0
  %25 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %26 = extractvalue %dx.types.CBufRet.f32 %25, 2
  %27 = extractvalue %dx.types.CBufRet.f32 %25, 3
  %28 = fmul fast float %26, %16
  %29 = fmul fast float %27, %17
  %30 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %12, i32 %13, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %31 = extractvalue %dx.types.ResRet.f32 %30, 0
  %32 = extractvalue %dx.types.ResRet.f32 %30, 1
  %33 = extractvalue %dx.types.ResRet.f32 %30, 2
  %34 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %35 = extractvalue %dx.types.CBufRet.f32 %34, 0
  %36 = fcmp fast oge float %32, %35
  %37 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %38 = extractvalue %dx.types.CBufRet.i32 %37, 3
  %39 = and i32 %38, 3
  %40 = icmp ne i32 %39, 0
  %41 = and i32 %38, 4
  %42 = icmp eq i32 %41, 0
  %43 = and i1 %40, %42
  %44 = and i1 %36, %43
  br i1 %43, label %45, label %85, !dx.controlflow.hints !25

; <label>:45                                      ; preds = %24
  %46 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %7, float %28, float %29, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %47 = extractvalue %dx.types.ResRet.f32 %46, 0
  %48 = call float @dx.op.binary.f32(i32 35, float %47, float 0.000000e+00)  ; FMax(a,b)
  %49 = call float @dx.op.binary.f32(i32 36, float %48, float 3.225500e+04)  ; FMin(a,b)
  %50 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %51 = extractvalue %dx.types.CBufRet.f32 %50, 1
  %52 = fmul fast float %51, %31
  %53 = extractvalue %dx.types.CBufRet.f32 %50, 0
  %54 = fmul fast float %53, %49
  %55 = fadd fast float %54, %52
  br i1 %44, label %56, label %85, !dx.controlflow.hints !26

; <label>:56                                      ; preds = %45
  %57 = fmul fast float %51, %32
  %58 = extractvalue %dx.types.ResRet.f32 %46, 1
  %59 = call float @dx.op.binary.f32(i32 35, float %58, float 0.000000e+00)  ; FMax(a,b)
  %60 = call float @dx.op.binary.f32(i32 36, float %59, float 3.225500e+04)  ; FMin(a,b)
  %61 = fmul fast float %60, %53
  %62 = fadd fast float %61, %57
  %63 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 237)  ; CBufferLoadLegacy(handle,regIndex)
  %64 = extractvalue %dx.types.CBufRet.f32 %63, 3
  %65 = call float @dx.op.unary.f32(i32 7, float %62)  ; Saturate(value)
  %66 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 238)  ; CBufferLoadLegacy(handle,regIndex)
  %67 = extractvalue %dx.types.CBufRet.f32 %66, 0
  %68 = extractvalue %dx.types.CBufRet.f32 %66, 1
  %69 = extractvalue %dx.types.CBufRet.f32 %66, 2
  %70 = extractvalue %dx.types.CBufRet.f32 %63, 0
  %71 = extractvalue %dx.types.CBufRet.f32 %63, 1
  %72 = extractvalue %dx.types.CBufRet.f32 %63, 2
  %73 = fsub fast float %67, %70
  %74 = fsub fast float %68, %71
  %75 = fsub fast float %69, %72
  %76 = fmul fast float %73, %65
  %77 = fmul fast float %74, %65
  %78 = fmul fast float %75, %65
  %79 = fadd fast float %76, %70
  %80 = fadd fast float %77, %71
  %81 = fadd fast float %78, %72
  %82 = fmul fast float %79, %64
  %83 = fmul fast float %80, %64
  %84 = fmul fast float %81, %64
  br label %85

; <label>:85                                      ; preds = %56, %45, %24
  %86 = phi float [ %82, %56 ], [ %31, %24 ], [ %55, %45 ]
  %87 = phi float [ %83, %56 ], [ %32, %24 ], [ %55, %45 ]
  %88 = phi float [ %84, %56 ], [ %33, %24 ], [ %55, %45 ]
  br i1 %44, label %89, label %121, !dx.controlflow.hints !27

; <label>:89                                      ; preds = %85
  %90 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %91 = fmul fast float %90, 0x3FDAAAAAA0000000
  %92 = call float @dx.op.unary.f32(i32 21, float %91)  ; Exp(value)
  %93 = fsub fast float 1.000000e+00, %92
  %94 = call float @dx.op.unary.f32(i32 23, float %93)  ; Log(value)
  %95 = fmul fast float %94, 0x4003333340000000
  %96 = call float @dx.op.unary.f32(i32 21, float %95)  ; Exp(value)
  %97 = fdiv fast float %92, %93
  %98 = fadd fast float %97, %86
  %99 = fadd fast float %97, %87
  %100 = fadd fast float %97, %88
  %101 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %98)  ; FMax(a,b)
  %102 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %99)  ; FMax(a,b)
  %103 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %100)  ; FMax(a,b)
  %104 = call float @dx.op.unary.f32(i32 23, float %101)  ; Log(value)
  %105 = call float @dx.op.unary.f32(i32 23, float %102)  ; Log(value)
  %106 = call float @dx.op.unary.f32(i32 23, float %103)  ; Log(value)
  %107 = fmul fast float %104, 0x4003333340000000
  %108 = fmul fast float %105, 0x4003333340000000
  %109 = fmul fast float %106, 0x4003333340000000
  %110 = call float @dx.op.unary.f32(i32 21, float %107)  ; Exp(value)
  %111 = call float @dx.op.unary.f32(i32 21, float %108)  ; Exp(value)
  %112 = call float @dx.op.unary.f32(i32 21, float %109)  ; Exp(value)
  %113 = fmul fast float %110, %96
  %114 = fmul fast float %111, %96
  %115 = fmul fast float %112, %96
  %116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 219)  ; CBufferLoadLegacy(handle,regIndex)
  %117 = extractvalue %dx.types.CBufRet.f32 %116, 1
  %118 = fmul fast float %113, %117
  %119 = fmul fast float %114, %117
  %120 = fmul fast float %115, %117
  br label %210

; <label>:121                                     ; preds = %85
  %122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 304)  ; CBufferLoadLegacy(handle,regIndex)
  %123 = extractvalue %dx.types.CBufRet.f32 %122, 2
  %124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 305)  ; CBufferLoadLegacy(handle,regIndex)
  %125 = extractvalue %dx.types.CBufRet.f32 %124, 2
  %126 = extractvalue %dx.types.CBufRet.f32 %124, 3
  %127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 306)  ; CBufferLoadLegacy(handle,regIndex)
  %128 = extractvalue %dx.types.CBufRet.f32 %127, 0
  %129 = extractvalue %dx.types.CBufRet.f32 %127, 1
  %130 = fcmp fast ugt float %123, 0.000000e+00
  br i1 %130, label %131, label %181, !dx.controlflow.hints !28

; <label>:131                                     ; preds = %121
  %132 = extractvalue %dx.types.CBufRet.f32 %127, 2
  %133 = fcmp fast ogt float %132, 0.000000e+00
  %134 = extractvalue %dx.types.CBufRet.f32 %124, 1
  %135 = extractvalue %dx.types.CBufRet.f32 %124, 0
  %136 = extractvalue %dx.types.CBufRet.f32 %122, 1
  %137 = extractvalue %dx.types.CBufRet.f32 %122, 0
  %138 = fadd fast float %28, -5.000000e-01
  %139 = fadd fast float %29, -5.000000e-01
  %140 = fmul fast float %137, %138
  %141 = fmul fast float %136, %139
  %142 = fadd fast float %140, %135
  %143 = fadd fast float %141, %134
  br i1 %133, label %144, label %151, !dx.controlflow.hints !29

; <label>:144                                     ; preds = %131
  %145 = fmul fast float %142, 5.000000e-01
  %146 = fmul fast float %143, 5.000000e-01
  %147 = fadd fast float %145, 5.000000e-01
  %148 = fadd fast float %146, 5.000000e-01
  %149 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %7, float %147, float %148, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %150 = extractvalue %dx.types.ResRet.f32 %149, 0
  br label %164

; <label>:151                                     ; preds = %131
  %152 = fsub fast float -0.000000e+00, %125
  %153 = fsub fast float -0.000000e+00, %126
  %154 = call float @dx.op.binary.f32(i32 35, float %142, float %152)  ; FMax(a,b)
  %155 = call float @dx.op.binary.f32(i32 35, float %143, float %153)  ; FMax(a,b)
  %156 = call float @dx.op.binary.f32(i32 36, float %154, float %125)  ; FMin(a,b)
  %157 = call float @dx.op.binary.f32(i32 36, float %155, float %126)  ; FMin(a,b)
  %158 = fsub fast float %142, %156
  %159 = fsub fast float %143, %157
  %160 = fmul fast float %158, %158
  %161 = fmul fast float %159, %159
  %162 = fadd fast float %161, %160
  %163 = call float @dx.op.unary.f32(i32 24, float %162)  ; Sqrt(value)
  br label %164

; <label>:164                                     ; preds = %151, %144
  %165 = phi float [ %150, %144 ], [ %163, %151 ]
  %166 = fmul fast float %165, %128
  %167 = fadd fast float %166, %129
  %168 = call float @dx.op.unary.f32(i32 7, float %167)  ; Saturate(value)
  %169 = fmul fast float %168, %168
  %170 = fmul fast float %168, 2.000000e+00
  %171 = fsub fast float 3.000000e+00, %170
  %172 = fmul fast float %169, %171
  %173 = fsub fast float %172, %168
  %174 = fmul fast float %173, 0x3FE3333340000000
  %175 = fadd fast float %174, %168
  %176 = fmul fast float %175, %123
  %177 = fsub fast float 1.000000e+00, %176
  %178 = fmul fast float %177, %86
  %179 = fmul fast float %177, %87
  %180 = fmul fast float %177, %88
  br label %181

; <label>:181                                     ; preds = %164, %121
  %182 = phi float [ %178, %164 ], [ %86, %121 ]
  %183 = phi float [ %179, %164 ], [ %87, %121 ]
  %184 = phi float [ %180, %164 ], [ %88, %121 ]
  %185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %186 = extractvalue %dx.types.CBufRet.f32 %185, 0
  %187 = extractvalue %dx.types.CBufRet.f32 %185, 1
  %188 = extractvalue %dx.types.CBufRet.f32 %185, 2
  %189 = call float @dx.op.dot3.f32(i32 55, float %182, float %183, float %184, float %186, float %187, float %188)  ; Dot3(ax,ay,az,bx,by,bz)
  %190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %191 = extractvalue %dx.types.CBufRet.f32 %190, 0
  %192 = extractvalue %dx.types.CBufRet.f32 %190, 1
  %193 = extractvalue %dx.types.CBufRet.f32 %190, 2
  %194 = call float @dx.op.dot3.f32(i32 55, float %182, float %183, float %184, float %191, float %192, float %193)  ; Dot3(ax,ay,az,bx,by,bz)
  %195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %196 = extractvalue %dx.types.CBufRet.f32 %195, 0
  %197 = extractvalue %dx.types.CBufRet.f32 %195, 1
  %198 = extractvalue %dx.types.CBufRet.f32 %195, 2
  %199 = call float @dx.op.dot3.f32(i32 55, float %182, float %183, float %184, float %196, float %197, float %198)  ; Dot3(ax,ay,az,bx,by,bz)
  %200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %201 = extractvalue %dx.types.CBufRet.f32 %200, 0
  %202 = fmul fast float %201, %189
  %203 = fmul fast float %201, %194
  %204 = fmul fast float %201, %199
  %205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %206 = extractvalue %dx.types.CBufRet.f32 %205, 2
  %207 = fmul fast float %202, %206
  %208 = fmul fast float %203, %206
  %209 = fmul fast float %204, %206
  br label %210

; <label>:210                                     ; preds = %181, %89
  %211 = phi float [ %118, %89 ], [ %207, %181 ]
  %212 = phi float [ %119, %89 ], [ %208, %181 ]
  %213 = phi float [ %120, %89 ], [ %209, %181 ]
  %214 = fmul fast float %211, 0x3FE413A920000000
  %215 = call float @dx.op.tertiary.f32(i32 46, float 0x3FD5134040000000, float %212, float %214)  ; FMad(a,b,c)
  %216 = call float @dx.op.tertiary.f32(i32 46, float 0x3FA62B6AE0000000, float %213, float %215)  ; FMad(a,b,c)
  %217 = fmul fast float %211, 0x3FB1B089A0000000
  %218 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED6C8B40000000, float %212, float %217)  ; FMad(a,b,c)
  %219 = call float @dx.op.tertiary.f32(i32 46, float 0x3F8758E220000000, float %213, float %218)  ; FMad(a,b,c)
  %220 = fmul fast float %211, 0x3F90CB2960000000
  %221 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB6872B00000000, float %212, float %220)  ; FMad(a,b,c)
  %222 = call float @dx.op.tertiary.f32(i32 46, float 0x3FECA8C160000000, float %213, float %221)  ; FMad(a,b,c)
  %223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %224 = extractvalue %dx.types.CBufRet.f32 %223, 0
  %225 = fcmp fast ogt float %224, 0.000000e+00
  br i1 %225, label %226, label %259, !dx.controlflow.hints !30

; <label>:226                                     ; preds = %210
  %227 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %228 = extractvalue %dx.types.CBufRet.i32 %227, 1
  %229 = shl i32 %228, 1
  %230 = lshr i32 %15, 2
  %231 = extractvalue %dx.types.CBufRet.i32 %227, 0
  %232 = mul i32 %231, %230
  %233 = lshr i32 %14, 3
  %234 = add i32 %229, %233
  %235 = add i32 %234, %232
  %236 = shl i32 %235, 2
  %237 = shl i32 %15, 3
  %238 = and i32 %237, 24
  %239 = and i32 %14, 7
  %240 = or i32 %238, %239
  %241 = shl i32 1, %240
  %242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %236, i32 undef)  ; BufferLoad(srv,index,wot)
  %243 = extractvalue %dx.types.ResRet.i32 %242, 0
  %244 = and i32 %243, %241
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %259, label %246, !dx.controlflow.hints !31

; <label>:246                                     ; preds = %226
  %247 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %8, float %28, float %29, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %248 = extractvalue %dx.types.ResRet.f32 %247, 0
  %249 = extractvalue %dx.types.ResRet.f32 %247, 1
  %250 = extractvalue %dx.types.ResRet.f32 %247, 2
  %251 = extractvalue %dx.types.ResRet.f32 %247, 3
  %252 = fsub fast float 1.000000e+00, %251
  %253 = fmul fast float %252, %216
  %254 = fmul fast float %252, %219
  %255 = fmul fast float %252, %222
  %256 = fadd fast float %253, %248
  %257 = fadd fast float %254, %249
  %258 = fadd fast float %255, %250
  br label %259

; <label>:259                                     ; preds = %246, %226, %210
  %260 = phi float [ %256, %246 ], [ %216, %226 ], [ %216, %210 ]
  %261 = phi float [ %257, %246 ], [ %219, %226 ], [ %219, %210 ]
  %262 = phi float [ %258, %246 ], [ %222, %226 ], [ %222, %210 ]
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %12, i32 %13, i32 undef, float %260, float %261, float %262, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %263

; <label>:263                                     ; preds = %259, %0
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
!dx.entryPoints = !{!21}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !12, !14, !18}
!5 = !{!6, !8, !9, !10, !11}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 4, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 6, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 8, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 9, i32 1, i32 11, i32 0, null}
!12 = !{!13}
!13 = !{i32 0, %"class.RWTexture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!14 = !{!15, !16, !17}
!15 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!16 = !{i32 1, %TonemapConstants* undef, !"", i32 0, i32 0, i32 1, i32 144, null}
!17 = !{i32 2, %ExposureConstants* undef, !"", i32 0, i32 1, i32 1, i32 64, null}
!18 = !{!19, !20}
!19 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!20 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!21 = !{void ()* @tonemap, !"tonemap", null, !4, !22}
!22 = !{i32 0, i64 272, i32 4, !23}
!23 = !{i32 8, i32 8, i32 1}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}

