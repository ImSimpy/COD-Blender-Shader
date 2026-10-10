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
; shader hash: d8679a49beb2f5633e60172ea29a7a5f
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
;                                   texture     f32          2d      T2             t7     1
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
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
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
  br i1 %24, label %277, label %25, !dx.controlflow.hints !25

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
  %35 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %8, float %29, float %30, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %36 = extractvalue %dx.types.ResRet.f32 %35, 0
  %37 = fsub fast float 1.000000e+00, %36
  %38 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %39 = extractvalue %dx.types.CBufRet.f32 %38, 0
  %40 = fcmp fast olt float %37, %39
  %41 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %42 = extractvalue %dx.types.CBufRet.f32 %41, 0
  %43 = fcmp fast oge float %33, %42
  %44 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %45 = extractvalue %dx.types.CBufRet.i32 %44, 3
  %46 = and i32 %45, 3
  %47 = icmp ne i32 %46, 0
  %48 = and i32 %45, 4
  %49 = icmp eq i32 %48, 0
  %50 = and i1 %47, %49
  %51 = and i1 %43, %50
  br i1 %50, label %52, label %92, !dx.controlflow.hints !26

; <label>:52                                      ; preds = %25
  %53 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %8, float %29, float %30, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %54 = extractvalue %dx.types.ResRet.f32 %53, 0
  %55 = call float @dx.op.binary.f32(i32 35, float %54, float 0.000000e+00)  ; FMax(a,b)
  %56 = call float @dx.op.binary.f32(i32 36, float %55, float 3.225500e+04)  ; FMin(a,b)
  %57 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %58 = extractvalue %dx.types.CBufRet.f32 %57, 1
  %59 = fmul fast float %58, %32
  %60 = extractvalue %dx.types.CBufRet.f32 %57, 0
  %61 = fmul fast float %60, %56
  %62 = fadd fast float %61, %59
  br i1 %51, label %63, label %92, !dx.controlflow.hints !27

; <label>:63                                      ; preds = %52
  %64 = fmul fast float %58, %33
  %65 = extractvalue %dx.types.ResRet.f32 %53, 1
  %66 = call float @dx.op.binary.f32(i32 35, float %65, float 0.000000e+00)  ; FMax(a,b)
  %67 = call float @dx.op.binary.f32(i32 36, float %66, float 3.225500e+04)  ; FMin(a,b)
  %68 = fmul fast float %67, %60
  %69 = fadd fast float %68, %64
  %70 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 237)  ; CBufferLoadLegacy(handle,regIndex)
  %71 = extractvalue %dx.types.CBufRet.f32 %70, 3
  %72 = call float @dx.op.unary.f32(i32 7, float %69)  ; Saturate(value)
  %73 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 238)  ; CBufferLoadLegacy(handle,regIndex)
  %74 = extractvalue %dx.types.CBufRet.f32 %73, 0
  %75 = extractvalue %dx.types.CBufRet.f32 %73, 1
  %76 = extractvalue %dx.types.CBufRet.f32 %73, 2
  %77 = extractvalue %dx.types.CBufRet.f32 %70, 0
  %78 = extractvalue %dx.types.CBufRet.f32 %70, 1
  %79 = extractvalue %dx.types.CBufRet.f32 %70, 2
  %80 = fsub fast float %74, %77
  %81 = fsub fast float %75, %78
  %82 = fsub fast float %76, %79
  %83 = fmul fast float %80, %72
  %84 = fmul fast float %81, %72
  %85 = fmul fast float %82, %72
  %86 = fadd fast float %83, %77
  %87 = fadd fast float %84, %78
  %88 = fadd fast float %85, %79
  %89 = fmul fast float %86, %71
  %90 = fmul fast float %87, %71
  %91 = fmul fast float %88, %71
  br label %92

; <label>:92                                      ; preds = %63, %52, %25
  %93 = phi float [ %89, %63 ], [ %32, %25 ], [ %62, %52 ]
  %94 = phi float [ %90, %63 ], [ %33, %25 ], [ %62, %52 ]
  %95 = phi float [ %91, %63 ], [ %34, %25 ], [ %62, %52 ]
  br i1 %51, label %96, label %128, !dx.controlflow.hints !28

; <label>:96                                      ; preds = %92
  %97 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %98 = fmul fast float %97, 0x3FDAAAAAA0000000
  %99 = call float @dx.op.unary.f32(i32 21, float %98)  ; Exp(value)
  %100 = fsub fast float 1.000000e+00, %99
  %101 = call float @dx.op.unary.f32(i32 23, float %100)  ; Log(value)
  %102 = fmul fast float %101, 0x4003333340000000
  %103 = call float @dx.op.unary.f32(i32 21, float %102)  ; Exp(value)
  %104 = fdiv fast float %99, %100
  %105 = fadd fast float %104, %93
  %106 = fadd fast float %104, %94
  %107 = fadd fast float %104, %95
  %108 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %105)  ; FMax(a,b)
  %109 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %106)  ; FMax(a,b)
  %110 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %107)  ; FMax(a,b)
  %111 = call float @dx.op.unary.f32(i32 23, float %108)  ; Log(value)
  %112 = call float @dx.op.unary.f32(i32 23, float %109)  ; Log(value)
  %113 = call float @dx.op.unary.f32(i32 23, float %110)  ; Log(value)
  %114 = fmul fast float %111, 0x4003333340000000
  %115 = fmul fast float %112, 0x4003333340000000
  %116 = fmul fast float %113, 0x4003333340000000
  %117 = call float @dx.op.unary.f32(i32 21, float %114)  ; Exp(value)
  %118 = call float @dx.op.unary.f32(i32 21, float %115)  ; Exp(value)
  %119 = call float @dx.op.unary.f32(i32 21, float %116)  ; Exp(value)
  %120 = fmul fast float %117, %103
  %121 = fmul fast float %118, %103
  %122 = fmul fast float %119, %103
  %123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 219)  ; CBufferLoadLegacy(handle,regIndex)
  %124 = extractvalue %dx.types.CBufRet.f32 %123, 1
  %125 = fmul fast float %120, %124
  %126 = fmul fast float %121, %124
  %127 = fmul fast float %122, %124
  br label %224

; <label>:128                                     ; preds = %92
  %129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 304)  ; CBufferLoadLegacy(handle,regIndex)
  %130 = extractvalue %dx.types.CBufRet.f32 %129, 2
  %131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 305)  ; CBufferLoadLegacy(handle,regIndex)
  %132 = extractvalue %dx.types.CBufRet.f32 %131, 2
  %133 = extractvalue %dx.types.CBufRet.f32 %131, 3
  %134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 306)  ; CBufferLoadLegacy(handle,regIndex)
  %135 = extractvalue %dx.types.CBufRet.f32 %134, 0
  %136 = extractvalue %dx.types.CBufRet.f32 %134, 1
  %137 = fcmp fast ugt float %130, 0.000000e+00
  br i1 %137, label %138, label %188, !dx.controlflow.hints !29

; <label>:138                                     ; preds = %128
  %139 = extractvalue %dx.types.CBufRet.f32 %134, 2
  %140 = fcmp fast ogt float %139, 0.000000e+00
  %141 = extractvalue %dx.types.CBufRet.f32 %131, 1
  %142 = extractvalue %dx.types.CBufRet.f32 %131, 0
  %143 = extractvalue %dx.types.CBufRet.f32 %129, 1
  %144 = extractvalue %dx.types.CBufRet.f32 %129, 0
  %145 = fadd fast float %29, -5.000000e-01
  %146 = fadd fast float %30, -5.000000e-01
  %147 = fmul fast float %144, %145
  %148 = fmul fast float %143, %146
  %149 = fadd fast float %147, %142
  %150 = fadd fast float %148, %141
  br i1 %140, label %151, label %158, !dx.controlflow.hints !30

; <label>:151                                     ; preds = %138
  %152 = fmul fast float %149, 5.000000e-01
  %153 = fmul fast float %150, 5.000000e-01
  %154 = fadd fast float %152, 5.000000e-01
  %155 = fadd fast float %153, 5.000000e-01
  %156 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %8, float %154, float %155, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %157 = extractvalue %dx.types.ResRet.f32 %156, 0
  br label %171

; <label>:158                                     ; preds = %138
  %159 = fsub fast float -0.000000e+00, %132
  %160 = fsub fast float -0.000000e+00, %133
  %161 = call float @dx.op.binary.f32(i32 35, float %149, float %159)  ; FMax(a,b)
  %162 = call float @dx.op.binary.f32(i32 35, float %150, float %160)  ; FMax(a,b)
  %163 = call float @dx.op.binary.f32(i32 36, float %161, float %132)  ; FMin(a,b)
  %164 = call float @dx.op.binary.f32(i32 36, float %162, float %133)  ; FMin(a,b)
  %165 = fsub fast float %149, %163
  %166 = fsub fast float %150, %164
  %167 = fmul fast float %165, %165
  %168 = fmul fast float %166, %166
  %169 = fadd fast float %168, %167
  %170 = call float @dx.op.unary.f32(i32 24, float %169)  ; Sqrt(value)
  br label %171

; <label>:171                                     ; preds = %158, %151
  %172 = phi float [ %157, %151 ], [ %170, %158 ]
  %173 = fmul fast float %172, %135
  %174 = fadd fast float %173, %136
  %175 = call float @dx.op.unary.f32(i32 7, float %174)  ; Saturate(value)
  %176 = fmul fast float %175, %175
  %177 = fmul fast float %175, 2.000000e+00
  %178 = fsub fast float 3.000000e+00, %177
  %179 = fmul fast float %176, %178
  %180 = fsub fast float %179, %175
  %181 = fmul fast float %180, 0x3FE3333340000000
  %182 = fadd fast float %181, %175
  %183 = fmul fast float %182, %130
  %184 = fsub fast float 1.000000e+00, %183
  %185 = fmul fast float %184, %93
  %186 = fmul fast float %184, %94
  %187 = fmul fast float %184, %95
  br label %188

; <label>:188                                     ; preds = %171, %128
  %189 = phi float [ %185, %171 ], [ %93, %128 ]
  %190 = phi float [ %186, %171 ], [ %94, %128 ]
  %191 = phi float [ %187, %171 ], [ %95, %128 ]
  %192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %193 = extractvalue %dx.types.CBufRet.f32 %192, 0
  %194 = extractvalue %dx.types.CBufRet.f32 %192, 1
  %195 = extractvalue %dx.types.CBufRet.f32 %192, 2
  %196 = call float @dx.op.dot3.f32(i32 55, float %189, float %190, float %191, float %193, float %194, float %195)  ; Dot3(ax,ay,az,bx,by,bz)
  %197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %198 = extractvalue %dx.types.CBufRet.f32 %197, 0
  %199 = extractvalue %dx.types.CBufRet.f32 %197, 1
  %200 = extractvalue %dx.types.CBufRet.f32 %197, 2
  %201 = call float @dx.op.dot3.f32(i32 55, float %189, float %190, float %191, float %198, float %199, float %200)  ; Dot3(ax,ay,az,bx,by,bz)
  %202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %203 = extractvalue %dx.types.CBufRet.f32 %202, 0
  %204 = extractvalue %dx.types.CBufRet.f32 %202, 1
  %205 = extractvalue %dx.types.CBufRet.f32 %202, 2
  %206 = call float @dx.op.dot3.f32(i32 55, float %189, float %190, float %191, float %203, float %204, float %205)  ; Dot3(ax,ay,az,bx,by,bz)
  %207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %208 = extractvalue %dx.types.CBufRet.f32 %207, 0
  %209 = fmul fast float %208, %196
  %210 = fmul fast float %208, %201
  %211 = fmul fast float %208, %206
  br i1 %40, label %212, label %218, !dx.controlflow.hints !31

; <label>:212                                     ; preds = %188
  %213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %214 = extractvalue %dx.types.CBufRet.f32 %213, 1
  %215 = fmul fast float %209, %214
  %216 = fmul fast float %210, %214
  %217 = fmul fast float %211, %214
  br label %224

; <label>:218                                     ; preds = %188
  %219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %220 = extractvalue %dx.types.CBufRet.f32 %219, 2
  %221 = fmul fast float %209, %220
  %222 = fmul fast float %210, %220
  %223 = fmul fast float %211, %220
  br label %224

; <label>:224                                     ; preds = %218, %212, %96
  %225 = phi float [ %125, %96 ], [ %215, %212 ], [ %221, %218 ]
  %226 = phi float [ %126, %96 ], [ %216, %212 ], [ %222, %218 ]
  %227 = phi float [ %127, %96 ], [ %217, %212 ], [ %223, %218 ]
  %228 = fmul fast float %225, 0x3FE413A920000000
  %229 = call float @dx.op.tertiary.f32(i32 46, float 0x3FD5134040000000, float %226, float %228)  ; FMad(a,b,c)
  %230 = call float @dx.op.tertiary.f32(i32 46, float 0x3FA62B6AE0000000, float %227, float %229)  ; FMad(a,b,c)
  %231 = fmul fast float %225, 0x3FB1B089A0000000
  %232 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED6C8B40000000, float %226, float %231)  ; FMad(a,b,c)
  %233 = call float @dx.op.tertiary.f32(i32 46, float 0x3F8758E220000000, float %227, float %232)  ; FMad(a,b,c)
  %234 = fmul fast float %225, 0x3F90CB2960000000
  %235 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB6872B00000000, float %226, float %234)  ; FMad(a,b,c)
  %236 = call float @dx.op.tertiary.f32(i32 46, float 0x3FECA8C160000000, float %227, float %235)  ; FMad(a,b,c)
  %237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %238 = extractvalue %dx.types.CBufRet.f32 %237, 0
  %239 = fcmp fast ogt float %238, 0.000000e+00
  br i1 %239, label %240, label %273, !dx.controlflow.hints !32

; <label>:240                                     ; preds = %224
  %241 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %242 = extractvalue %dx.types.CBufRet.i32 %241, 1
  %243 = shl i32 %242, 1
  %244 = lshr i32 %16, 2
  %245 = extractvalue %dx.types.CBufRet.i32 %241, 0
  %246 = mul i32 %245, %244
  %247 = lshr i32 %15, 3
  %248 = add i32 %243, %247
  %249 = add i32 %248, %246
  %250 = shl i32 %249, 2
  %251 = shl i32 %16, 3
  %252 = and i32 %251, 24
  %253 = and i32 %15, 7
  %254 = or i32 %252, %253
  %255 = shl i32 1, %254
  %256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %250, i32 undef)  ; BufferLoad(srv,index,wot)
  %257 = extractvalue %dx.types.ResRet.i32 %256, 0
  %258 = and i32 %257, %255
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %273, label %260, !dx.controlflow.hints !33

; <label>:260                                     ; preds = %240
  %261 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %9, float %29, float %30, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %262 = extractvalue %dx.types.ResRet.f32 %261, 0
  %263 = extractvalue %dx.types.ResRet.f32 %261, 1
  %264 = extractvalue %dx.types.ResRet.f32 %261, 2
  %265 = extractvalue %dx.types.ResRet.f32 %261, 3
  %266 = fsub fast float 1.000000e+00, %265
  %267 = fmul fast float %266, %230
  %268 = fmul fast float %266, %233
  %269 = fmul fast float %266, %236
  %270 = fadd fast float %267, %262
  %271 = fadd fast float %268, %263
  %272 = fadd fast float %269, %264
  br label %273

; <label>:273                                     ; preds = %260, %240, %224
  %274 = phi float [ %270, %260 ], [ %230, %240 ], [ %230, %224 ]
  %275 = phi float [ %271, %260 ], [ %233, %240 ], [ %233, %224 ]
  %276 = phi float [ %272, %260 ], [ %236, %240 ], [ %236, %224 ]
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %13, i32 %14, i32 undef, float %274, float %275, float %276, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %277

; <label>:277                                     ; preds = %273, %0
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
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 7, i32 1, i32 2, i32 0, !7}
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
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}

