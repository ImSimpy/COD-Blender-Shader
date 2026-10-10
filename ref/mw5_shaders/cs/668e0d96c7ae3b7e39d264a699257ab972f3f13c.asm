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
; shader hash: 069cc3c04859f7fc1abf97347fbb91c7
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
;                                   texture     f32          2d      T0             t0     1
;                                   texture     f32          2d      T1             t1     1
;                                   texture     f32          3d      T2             t2     1
;                                   texture     f32          2d      T3             t4     1
;                                   texture     f32          2d      T4             t6     1
;                                   texture     f32          2d      T5             t8     1
;                                   texture    byte         r/o      T6             t9     1
;                                       UAV     f32          2d      U0             u0     1
;                                       UAV     f32          2d      U1             u1     1
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
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.RWTexture2D<vector<float, 4> >" = type { <4 x float> }
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
%TonemapConstants = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32 }
%ExposureConstants = type { i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.SamplerState = type { i32 }

define void @tonemap() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %16 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %17 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %18 = call i32 @dx.op.groupId.i32(i32 94, i32 1)  ; GroupId(component)
  %19 = uitofp i32 %15 to float
  %20 = uitofp i32 %16 to float
  %21 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %22 = extractvalue %dx.types.CBufRet.f32 %21, 0
  %23 = extractvalue %dx.types.CBufRet.f32 %21, 1
  %24 = fcmp fast oge float %19, %22
  %25 = fcmp fast oge float %20, %23
  %26 = or i1 %24, %25
  br i1 %26, label %517, label %27, !dx.controlflow.hints !27

; <label>:27                                      ; preds = %0
  %28 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %29 = extractvalue %dx.types.CBufRet.f32 %28, 2
  %30 = extractvalue %dx.types.CBufRet.f32 %28, 3
  %31 = fmul fast float %29, %19
  %32 = fmul fast float %30, %20
  %33 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %8, i32 0, i32 %15, i32 %16, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %34 = extractvalue %dx.types.ResRet.f32 %33, 0
  %35 = extractvalue %dx.types.ResRet.f32 %33, 1
  %36 = extractvalue %dx.types.ResRet.f32 %33, 2
  %37 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %38 = extractvalue %dx.types.CBufRet.f32 %37, 0
  %39 = fcmp fast oge float %35, %38
  %40 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %41 = extractvalue %dx.types.CBufRet.i32 %40, 3
  %42 = and i32 %41, 3
  %43 = icmp ne i32 %42, 0
  %44 = and i32 %41, 4
  %45 = icmp eq i32 %44, 0
  %46 = and i1 %43, %45
  %47 = and i1 %39, %46
  br i1 %46, label %48, label %88, !dx.controlflow.hints !28

; <label>:48                                      ; preds = %27
  %49 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %10, float %31, float %32, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %50 = extractvalue %dx.types.ResRet.f32 %49, 0
  %51 = call float @dx.op.binary.f32(i32 35, float %50, float 0.000000e+00)  ; FMax(a,b)
  %52 = call float @dx.op.binary.f32(i32 36, float %51, float 3.225500e+04)  ; FMin(a,b)
  %53 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %54 = extractvalue %dx.types.CBufRet.f32 %53, 1
  %55 = fmul fast float %54, %34
  %56 = extractvalue %dx.types.CBufRet.f32 %53, 0
  %57 = fmul fast float %56, %52
  %58 = fadd fast float %57, %55
  br i1 %47, label %59, label %88, !dx.controlflow.hints !29

; <label>:59                                      ; preds = %48
  %60 = fmul fast float %54, %35
  %61 = extractvalue %dx.types.ResRet.f32 %49, 1
  %62 = call float @dx.op.binary.f32(i32 35, float %61, float 0.000000e+00)  ; FMax(a,b)
  %63 = call float @dx.op.binary.f32(i32 36, float %62, float 3.225500e+04)  ; FMin(a,b)
  %64 = fmul fast float %63, %56
  %65 = fadd fast float %64, %60
  %66 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 237)  ; CBufferLoadLegacy(handle,regIndex)
  %67 = extractvalue %dx.types.CBufRet.f32 %66, 3
  %68 = call float @dx.op.unary.f32(i32 7, float %65)  ; Saturate(value)
  %69 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 238)  ; CBufferLoadLegacy(handle,regIndex)
  %70 = extractvalue %dx.types.CBufRet.f32 %69, 0
  %71 = extractvalue %dx.types.CBufRet.f32 %69, 1
  %72 = extractvalue %dx.types.CBufRet.f32 %69, 2
  %73 = extractvalue %dx.types.CBufRet.f32 %66, 0
  %74 = extractvalue %dx.types.CBufRet.f32 %66, 1
  %75 = extractvalue %dx.types.CBufRet.f32 %66, 2
  %76 = fsub fast float %70, %73
  %77 = fsub fast float %71, %74
  %78 = fsub fast float %72, %75
  %79 = fmul fast float %76, %68
  %80 = fmul fast float %77, %68
  %81 = fmul fast float %78, %68
  %82 = fadd fast float %79, %73
  %83 = fadd fast float %80, %74
  %84 = fadd fast float %81, %75
  %85 = fmul fast float %82, %67
  %86 = fmul fast float %83, %67
  %87 = fmul fast float %84, %67
  br label %88

; <label>:88                                      ; preds = %59, %48, %27
  %89 = phi float [ %85, %59 ], [ %34, %27 ], [ %58, %48 ]
  %90 = phi float [ %86, %59 ], [ %35, %27 ], [ %58, %48 ]
  %91 = phi float [ %87, %59 ], [ %36, %27 ], [ %58, %48 ]
  br i1 %47, label %92, label %286, !dx.controlflow.hints !30

; <label>:92                                      ; preds = %88
  %93 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 219)  ; CBufferLoadLegacy(handle,regIndex)
  %94 = extractvalue %dx.types.CBufRet.f32 %93, 0
  %95 = bitcast float %94 to i32
  %96 = icmp eq i32 %95, 3
  %97 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %98 = extractvalue %dx.types.CBufRet.f32 %97, 2
  %99 = fsub fast float 1.000000e+00, %98
  br i1 %96, label %100, label %182, !dx.controlflow.hints !31

; <label>:100                                     ; preds = %92
  %101 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %102 = fmul fast float %101, 0x3FDAAAAAA0000000
  %103 = call float @dx.op.unary.f32(i32 21, float %102)  ; Exp(value)
  %104 = fsub fast float 1.000000e+00, %103
  %105 = call float @dx.op.unary.f32(i32 23, float %104)  ; Log(value)
  %106 = fmul fast float %105, 0x4003333340000000
  %107 = call float @dx.op.unary.f32(i32 21, float %106)  ; Exp(value)
  %108 = fdiv fast float %103, %104
  %109 = fadd fast float %108, %89
  %110 = fadd fast float %108, %90
  %111 = fadd fast float %108, %91
  %112 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %109)  ; FMax(a,b)
  %113 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %110)  ; FMax(a,b)
  %114 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %111)  ; FMax(a,b)
  %115 = call float @dx.op.unary.f32(i32 23, float %112)  ; Log(value)
  %116 = call float @dx.op.unary.f32(i32 23, float %113)  ; Log(value)
  %117 = call float @dx.op.unary.f32(i32 23, float %114)  ; Log(value)
  %118 = fmul fast float %115, 0x4003333340000000
  %119 = fmul fast float %116, 0x4003333340000000
  %120 = fmul fast float %117, 0x4003333340000000
  %121 = call float @dx.op.unary.f32(i32 21, float %118)  ; Exp(value)
  %122 = call float @dx.op.unary.f32(i32 21, float %119)  ; Exp(value)
  %123 = call float @dx.op.unary.f32(i32 21, float %120)  ; Exp(value)
  %124 = fmul fast float %121, %107
  %125 = fmul fast float %122, %107
  %126 = fmul fast float %123, %107
  %127 = extractvalue %dx.types.CBufRet.f32 %93, 1
  %128 = fmul fast float %124, %127
  %129 = fmul fast float %125, %127
  %130 = fmul fast float %126, %127
  %131 = fmul fast float %128, 0x3FE413A920000000
  %132 = call float @dx.op.tertiary.f32(i32 46, float 0x3FD5134040000000, float %129, float %131)  ; FMad(a,b,c)
  %133 = call float @dx.op.tertiary.f32(i32 46, float 0x3FA62B6AE0000000, float %130, float %132)  ; FMad(a,b,c)
  %134 = fmul fast float %128, 0x3FB1B089A0000000
  %135 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED6C8B40000000, float %129, float %134)  ; FMad(a,b,c)
  %136 = call float @dx.op.tertiary.f32(i32 46, float 0x3F8758E220000000, float %130, float %135)  ; FMad(a,b,c)
  %137 = fmul fast float %128, 0x3F90CB2960000000
  %138 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB6872B00000000, float %129, float %137)  ; FMad(a,b,c)
  %139 = call float @dx.op.tertiary.f32(i32 46, float 0x3FECA8C160000000, float %130, float %138)  ; FMad(a,b,c)
  %140 = fmul fast float %133, 0x3F1A36E2E0000000
  %141 = fmul fast float %136, 0x3F1A36E2E0000000
  %142 = fmul fast float %139, 0x3F1A36E2E0000000
  %143 = call float @dx.op.unary.f32(i32 23, float %140)  ; Log(value)
  %144 = call float @dx.op.unary.f32(i32 23, float %141)  ; Log(value)
  %145 = call float @dx.op.unary.f32(i32 23, float %142)  ; Log(value)
  %146 = fmul fast float %143, 0x3FC4640000000000
  %147 = fmul fast float %144, 0x3FC4640000000000
  %148 = fmul fast float %145, 0x3FC4640000000000
  %149 = call float @dx.op.unary.f32(i32 21, float %146)  ; Exp(value)
  %150 = call float @dx.op.unary.f32(i32 21, float %147)  ; Exp(value)
  %151 = call float @dx.op.unary.f32(i32 21, float %148)  ; Exp(value)
  %152 = fmul fast float %149, 0x4032DA0000000000
  %153 = fmul fast float %150, 0x4032DA0000000000
  %154 = fmul fast float %151, 0x4032DA0000000000
  %155 = fadd fast float %152, 8.359375e-01
  %156 = fadd fast float %153, 8.359375e-01
  %157 = fadd fast float %154, 8.359375e-01
  %158 = fmul fast float %149, 1.868750e+01
  %159 = fmul fast float %150, 1.868750e+01
  %160 = fmul fast float %151, 1.868750e+01
  %161 = fadd fast float %158, 1.000000e+00
  %162 = fadd fast float %159, 1.000000e+00
  %163 = fadd fast float %160, 1.000000e+00
  %164 = fdiv fast float %155, %161
  %165 = fdiv fast float %156, %162
  %166 = fdiv fast float %157, %163
  %167 = call float @dx.op.unary.f32(i32 23, float %164)  ; Log(value)
  %168 = call float @dx.op.unary.f32(i32 23, float %165)  ; Log(value)
  %169 = call float @dx.op.unary.f32(i32 23, float %166)  ; Log(value)
  %170 = fmul fast float %167, 7.884375e+01
  %171 = fmul fast float %168, 7.884375e+01
  %172 = fmul fast float %169, 7.884375e+01
  %173 = call float @dx.op.unary.f32(i32 21, float %170)  ; Exp(value)
  %174 = call float @dx.op.unary.f32(i32 21, float %171)  ; Exp(value)
  %175 = call float @dx.op.unary.f32(i32 21, float %172)  ; Exp(value)
  %176 = fmul fast float %99, %173
  %177 = fmul fast float %99, %174
  %178 = fmul fast float %99, %175
  %179 = fadd fast float %176, %98
  %180 = fadd fast float %177, %98
  %181 = fadd fast float %178, %98
  br label %463

; <label>:182                                     ; preds = %92
  %183 = icmp eq i32 %95, 4
  br i1 %183, label %184, label %279, !dx.controlflow.hints !32

; <label>:184                                     ; preds = %182
  %185 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %186 = fmul fast float %185, 0x3FDAAAAAA0000000
  %187 = call float @dx.op.unary.f32(i32 21, float %186)  ; Exp(value)
  %188 = fsub fast float 1.000000e+00, %187
  %189 = call float @dx.op.unary.f32(i32 23, float %188)  ; Log(value)
  %190 = fmul fast float %189, 0x4003333340000000
  %191 = call float @dx.op.unary.f32(i32 21, float %190)  ; Exp(value)
  %192 = fdiv fast float %187, %188
  %193 = fadd fast float %192, %89
  %194 = fadd fast float %192, %90
  %195 = fadd fast float %192, %91
  %196 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %193)  ; FMax(a,b)
  %197 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %194)  ; FMax(a,b)
  %198 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %195)  ; FMax(a,b)
  %199 = call float @dx.op.unary.f32(i32 23, float %196)  ; Log(value)
  %200 = call float @dx.op.unary.f32(i32 23, float %197)  ; Log(value)
  %201 = call float @dx.op.unary.f32(i32 23, float %198)  ; Log(value)
  %202 = fmul fast float %199, 0x4003333340000000
  %203 = fmul fast float %200, 0x4003333340000000
  %204 = fmul fast float %201, 0x4003333340000000
  %205 = call float @dx.op.unary.f32(i32 21, float %202)  ; Exp(value)
  %206 = call float @dx.op.unary.f32(i32 21, float %203)  ; Exp(value)
  %207 = call float @dx.op.unary.f32(i32 21, float %204)  ; Exp(value)
  %208 = fmul fast float %205, %191
  %209 = fmul fast float %206, %191
  %210 = fmul fast float %207, %191
  %211 = extractvalue %dx.types.CBufRet.f32 %93, 1
  %212 = fmul fast float %208, %211
  %213 = fmul fast float %209, %211
  %214 = fmul fast float %210, %211
  %215 = fmul fast float %212, 0x3FEA519BC0000000
  %216 = call float @dx.op.tertiary.f32(i32 46, float 0x3FC6B990A0000000, float %213, float %215)  ; FMad(a,b,c)
  %217 = fmul fast float %212, 0x3FA0FED480000000
  %218 = call float @dx.op.tertiary.f32(i32 46, float 0x3FEEF012C0000000, float %213, float %217)  ; FMad(a,b,c)
  %219 = fmul fast float %212, 0x3F917E1C00000000
  %220 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB288A2E0000000, float %213, float %219)  ; FMad(a,b,c)
  %221 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED22FAA0000000, float %214, float %220)  ; FMad(a,b,c)
  %222 = call float @dx.op.binary.f32(i32 35, float %212, float %213)  ; FMax(a,b)
  %223 = call float @dx.op.binary.f32(i32 35, float %222, float %214)  ; FMax(a,b)
  %224 = fadd fast float %223, -1.000000e+00
  %225 = fmul fast float %224, 2.500000e-01
  %226 = call float @dx.op.unary.f32(i32 7, float %225)  ; Saturate(value)
  %227 = fsub fast float 1.000000e+00, %226
  %228 = fmul fast float %227, %216
  %229 = fmul fast float %227, %218
  %230 = fmul fast float %227, %221
  %231 = fmul fast float %226, %212
  %232 = fmul fast float %226, %213
  %233 = fmul fast float %226, %214
  %234 = fadd fast float %228, %231
  %235 = fadd fast float %229, %232
  %236 = fadd fast float %230, %233
  %237 = fmul fast float %234, 0x3F1A36E2E0000000
  %238 = fmul fast float %235, 0x3F1A36E2E0000000
  %239 = fmul fast float %236, 0x3F1A36E2E0000000
  %240 = call float @dx.op.unary.f32(i32 23, float %237)  ; Log(value)
  %241 = call float @dx.op.unary.f32(i32 23, float %238)  ; Log(value)
  %242 = call float @dx.op.unary.f32(i32 23, float %239)  ; Log(value)
  %243 = fmul fast float %240, 0x3FC4640000000000
  %244 = fmul fast float %241, 0x3FC4640000000000
  %245 = fmul fast float %242, 0x3FC4640000000000
  %246 = call float @dx.op.unary.f32(i32 21, float %243)  ; Exp(value)
  %247 = call float @dx.op.unary.f32(i32 21, float %244)  ; Exp(value)
  %248 = call float @dx.op.unary.f32(i32 21, float %245)  ; Exp(value)
  %249 = fmul fast float %246, 0x4032DA0000000000
  %250 = fmul fast float %247, 0x4032DA0000000000
  %251 = fmul fast float %248, 0x4032DA0000000000
  %252 = fadd fast float %249, 8.359375e-01
  %253 = fadd fast float %250, 8.359375e-01
  %254 = fadd fast float %251, 8.359375e-01
  %255 = fmul fast float %246, 1.868750e+01
  %256 = fmul fast float %247, 1.868750e+01
  %257 = fmul fast float %248, 1.868750e+01
  %258 = fadd fast float %255, 1.000000e+00
  %259 = fadd fast float %256, 1.000000e+00
  %260 = fadd fast float %257, 1.000000e+00
  %261 = fdiv fast float %252, %258
  %262 = fdiv fast float %253, %259
  %263 = fdiv fast float %254, %260
  %264 = call float @dx.op.unary.f32(i32 23, float %261)  ; Log(value)
  %265 = call float @dx.op.unary.f32(i32 23, float %262)  ; Log(value)
  %266 = call float @dx.op.unary.f32(i32 23, float %263)  ; Log(value)
  %267 = fmul fast float %264, 7.884375e+01
  %268 = fmul fast float %265, 7.884375e+01
  %269 = fmul fast float %266, 7.884375e+01
  %270 = call float @dx.op.unary.f32(i32 21, float %267)  ; Exp(value)
  %271 = call float @dx.op.unary.f32(i32 21, float %268)  ; Exp(value)
  %272 = call float @dx.op.unary.f32(i32 21, float %269)  ; Exp(value)
  %273 = fmul fast float %99, %270
  %274 = fmul fast float %99, %271
  %275 = fmul fast float %99, %272
  %276 = fadd fast float %273, %98
  %277 = fadd fast float %274, %98
  %278 = fadd fast float %275, %98
  br label %463

; <label>:279                                     ; preds = %182
  %280 = fmul fast float %99, %89
  %281 = fmul fast float %99, %90
  %282 = fmul fast float %99, %91
  %283 = fadd fast float %280, %98
  %284 = fadd fast float %281, %98
  %285 = fadd fast float %282, %98
  br label %463

; <label>:286                                     ; preds = %88
  %287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %288 = extractvalue %dx.types.CBufRet.f32 %287, 0
  %289 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %10, float %31, float %32, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %290 = extractvalue %dx.types.ResRet.f32 %289, 0
  %291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %292 = extractvalue %dx.types.CBufRet.f32 %291, 3
  %293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %294 = extractvalue %dx.types.CBufRet.f32 %293, 1
  %295 = fsub fast float %294, %290
  %296 = fcmp fast ogt float %295, 0.000000e+00
  %297 = fcmp fast olt float %295, 0.000000e+00
  %298 = zext i1 %296 to i32
  %299 = zext i1 %297 to i32
  %300 = sub nsw i32 %298, %299
  %301 = sitofp i32 %300 to float
  %302 = call float @dx.op.unary.f32(i32 6, float %295)  ; FAbs(value)
  %303 = fsub fast float %302, %292
  %304 = call float @dx.op.binary.f32(i32 35, float %303, float 0.000000e+00)  ; FMax(a,b)
  %305 = fmul fast float %301, %304
  %306 = extractvalue %dx.types.CBufRet.f32 %293, 3
  %307 = fsub fast float %294, %305
  %308 = fmul fast float %307, 0xBFF7154760000000
  %309 = call float @dx.op.unary.f32(i32 21, float %308)  ; Exp(value)
  %310 = fmul fast float %309, %306
  %311 = extractvalue %dx.types.CBufRet.f32 %291, 2
  %312 = fadd fast float %310, -1.000000e+00
  %313 = fmul fast float %311, %312
  %314 = fadd fast float %313, 1.000000e+00
  %315 = fmul fast float %314, %89
  %316 = fmul fast float %314, %90
  %317 = fmul fast float %314, %91
  br i1 %46, label %340, label %318, !dx.controlflow.hints !33

; <label>:318                                     ; preds = %286
  %319 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %10, float %31, float %32, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %320 = extractvalue %dx.types.ResRet.f32 %319, 0
  %321 = extractvalue %dx.types.ResRet.f32 %319, 1
  %322 = extractvalue %dx.types.ResRet.f32 %319, 2
  %323 = call float @dx.op.binary.f32(i32 35, float %320, float 0.000000e+00)  ; FMax(a,b)
  %324 = call float @dx.op.binary.f32(i32 35, float %321, float 0.000000e+00)  ; FMax(a,b)
  %325 = call float @dx.op.binary.f32(i32 35, float %322, float 0.000000e+00)  ; FMax(a,b)
  %326 = call float @dx.op.binary.f32(i32 36, float %323, float 3.225500e+04)  ; FMin(a,b)
  %327 = call float @dx.op.binary.f32(i32 36, float %324, float 3.225500e+04)  ; FMin(a,b)
  %328 = call float @dx.op.binary.f32(i32 36, float %325, float 3.225500e+04)  ; FMin(a,b)
  %329 = extractvalue %dx.types.CBufRet.f32 %291, 1
  %330 = fmul fast float %329, %315
  %331 = fmul fast float %329, %316
  %332 = fmul fast float %329, %317
  %333 = extractvalue %dx.types.CBufRet.f32 %291, 0
  %334 = fmul fast float %333, %326
  %335 = fmul fast float %333, %327
  %336 = fmul fast float %333, %328
  %337 = fadd fast float %334, %330
  %338 = fadd fast float %335, %331
  %339 = fadd fast float %336, %332
  br label %340

; <label>:340                                     ; preds = %318, %286
  %341 = phi float [ %315, %286 ], [ %337, %318 ]
  %342 = phi float [ %316, %286 ], [ %338, %318 ]
  %343 = phi float [ %317, %286 ], [ %339, %318 ]
  %344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 304)  ; CBufferLoadLegacy(handle,regIndex)
  %345 = extractvalue %dx.types.CBufRet.f32 %344, 2
  %346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 305)  ; CBufferLoadLegacy(handle,regIndex)
  %347 = extractvalue %dx.types.CBufRet.f32 %346, 2
  %348 = extractvalue %dx.types.CBufRet.f32 %346, 3
  %349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 306)  ; CBufferLoadLegacy(handle,regIndex)
  %350 = extractvalue %dx.types.CBufRet.f32 %349, 0
  %351 = extractvalue %dx.types.CBufRet.f32 %349, 1
  %352 = fcmp fast ugt float %345, 0.000000e+00
  br i1 %352, label %353, label %403, !dx.controlflow.hints !34

; <label>:353                                     ; preds = %340
  %354 = extractvalue %dx.types.CBufRet.f32 %349, 2
  %355 = fcmp fast ogt float %354, 0.000000e+00
  %356 = extractvalue %dx.types.CBufRet.f32 %346, 1
  %357 = extractvalue %dx.types.CBufRet.f32 %346, 0
  %358 = extractvalue %dx.types.CBufRet.f32 %344, 1
  %359 = extractvalue %dx.types.CBufRet.f32 %344, 0
  %360 = fadd fast float %31, -5.000000e-01
  %361 = fadd fast float %32, -5.000000e-01
  %362 = fmul fast float %359, %360
  %363 = fmul fast float %358, %361
  %364 = fadd fast float %362, %357
  %365 = fadd fast float %363, %356
  br i1 %355, label %366, label %373, !dx.controlflow.hints !35

; <label>:366                                     ; preds = %353
  %367 = fmul fast float %364, 5.000000e-01
  %368 = fmul fast float %365, 5.000000e-01
  %369 = fadd fast float %367, 5.000000e-01
  %370 = fadd fast float %368, 5.000000e-01
  %371 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %10, float %369, float %370, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %372 = extractvalue %dx.types.ResRet.f32 %371, 0
  br label %386

; <label>:373                                     ; preds = %353
  %374 = fsub fast float -0.000000e+00, %347
  %375 = fsub fast float -0.000000e+00, %348
  %376 = call float @dx.op.binary.f32(i32 35, float %364, float %374)  ; FMax(a,b)
  %377 = call float @dx.op.binary.f32(i32 35, float %365, float %375)  ; FMax(a,b)
  %378 = call float @dx.op.binary.f32(i32 36, float %376, float %347)  ; FMin(a,b)
  %379 = call float @dx.op.binary.f32(i32 36, float %377, float %348)  ; FMin(a,b)
  %380 = fsub fast float %364, %378
  %381 = fsub fast float %365, %379
  %382 = fmul fast float %380, %380
  %383 = fmul fast float %381, %381
  %384 = fadd fast float %383, %382
  %385 = call float @dx.op.unary.f32(i32 24, float %384)  ; Sqrt(value)
  br label %386

; <label>:386                                     ; preds = %373, %366
  %387 = phi float [ %372, %366 ], [ %385, %373 ]
  %388 = fmul fast float %387, %350
  %389 = fadd fast float %388, %351
  %390 = call float @dx.op.unary.f32(i32 7, float %389)  ; Saturate(value)
  %391 = fmul fast float %390, %390
  %392 = fmul fast float %390, 2.000000e+00
  %393 = fsub fast float 3.000000e+00, %392
  %394 = fmul fast float %391, %393
  %395 = fsub fast float %394, %390
  %396 = fmul fast float %395, 0x3FE3333340000000
  %397 = fadd fast float %396, %390
  %398 = fmul fast float %397, %345
  %399 = fsub fast float 1.000000e+00, %398
  %400 = fmul fast float %399, %341
  %401 = fmul fast float %399, %342
  %402 = fmul fast float %399, %343
  br label %403

; <label>:403                                     ; preds = %386, %340
  %404 = phi float [ %400, %386 ], [ %341, %340 ]
  %405 = phi float [ %401, %386 ], [ %342, %340 ]
  %406 = phi float [ %402, %386 ], [ %343, %340 ]
  %407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %408 = extractvalue %dx.types.CBufRet.f32 %407, 0
  %409 = extractvalue %dx.types.CBufRet.f32 %407, 1
  %410 = extractvalue %dx.types.CBufRet.f32 %407, 2
  %411 = call float @dx.op.dot3.f32(i32 55, float %404, float %405, float %406, float %408, float %409, float %410)  ; Dot3(ax,ay,az,bx,by,bz)
  %412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %413 = extractvalue %dx.types.CBufRet.f32 %412, 0
  %414 = extractvalue %dx.types.CBufRet.f32 %412, 1
  %415 = extractvalue %dx.types.CBufRet.f32 %412, 2
  %416 = call float @dx.op.dot3.f32(i32 55, float %404, float %405, float %406, float %413, float %414, float %415)  ; Dot3(ax,ay,az,bx,by,bz)
  %417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %418 = extractvalue %dx.types.CBufRet.f32 %417, 0
  %419 = extractvalue %dx.types.CBufRet.f32 %417, 1
  %420 = extractvalue %dx.types.CBufRet.f32 %417, 2
  %421 = call float @dx.op.dot3.f32(i32 55, float %404, float %405, float %406, float %418, float %419, float %420)  ; Dot3(ax,ay,az,bx,by,bz)
  %422 = fmul fast float %411, %288
  %423 = fmul fast float %416, %288
  %424 = fmul fast float %421, %288
  %425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %426 = extractvalue %dx.types.CBufRet.f32 %425, 2
  %427 = fmul fast float %422, %426
  %428 = fmul fast float %423, %426
  %429 = fmul fast float %424, %426
  %430 = fadd fast float %427, 9.765625e-04
  %431 = fadd fast float %428, 9.765625e-04
  %432 = fadd fast float %429, 9.765625e-04
  %433 = call float @dx.op.unary.f32(i32 23, float %430)  ; Log(value)
  %434 = call float @dx.op.unary.f32(i32 23, float %431)  ; Log(value)
  %435 = call float @dx.op.unary.f32(i32 23, float %432)  ; Log(value)
  %436 = fadd fast float %433, 1.000000e+01
  %437 = fadd fast float %434, 1.000000e+01
  %438 = fadd fast float %435, 1.000000e+01
  %439 = fmul fast float %436, 0x3FA99999A0000000
  %440 = fmul fast float %437, 0x3FA99999A0000000
  %441 = fmul fast float %438, 0x3FA99999A0000000
  %442 = call float @dx.op.unary.f32(i32 7, float %439)  ; Saturate(value)
  %443 = call float @dx.op.unary.f32(i32 7, float %440)  ; Saturate(value)
  %444 = call float @dx.op.unary.f32(i32 7, float %441)  ; Saturate(value)
  %445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %446 = extractvalue %dx.types.CBufRet.f32 %445, 0
  %447 = extractvalue %dx.types.CBufRet.f32 %445, 1
  %448 = extractvalue %dx.types.CBufRet.f32 %445, 2
  %449 = fmul fast float %446, %442
  %450 = fmul fast float %447, %443
  %451 = fmul fast float %448, %444
  %452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %453 = extractvalue %dx.types.CBufRet.f32 %452, 0
  %454 = extractvalue %dx.types.CBufRet.f32 %452, 1
  %455 = extractvalue %dx.types.CBufRet.f32 %452, 2
  %456 = fadd fast float %449, %453
  %457 = fadd fast float %450, %454
  %458 = fadd fast float %451, %455
  %459 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %10, float %456, float %457, float %458, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %460 = extractvalue %dx.types.ResRet.f32 %459, 0
  %461 = extractvalue %dx.types.ResRet.f32 %459, 1
  %462 = extractvalue %dx.types.ResRet.f32 %459, 2
  br label %463

; <label>:463                                     ; preds = %403, %279, %184, %100
  %464 = phi float [ %179, %100 ], [ %276, %184 ], [ %283, %279 ], [ %460, %403 ]
  %465 = phi float [ %180, %100 ], [ %277, %184 ], [ %284, %279 ], [ %461, %403 ]
  %466 = phi float [ %181, %100 ], [ %278, %184 ], [ %285, %279 ], [ %462, %403 ]
  %467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %468 = extractvalue %dx.types.CBufRet.f32 %467, 0
  %469 = fcmp fast ogt float %468, 0.000000e+00
  br i1 %469, label %470, label %503, !dx.controlflow.hints !36

; <label>:470                                     ; preds = %463
  %471 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %472 = extractvalue %dx.types.CBufRet.i32 %471, 1
  %473 = shl i32 %472, 1
  %474 = lshr i32 %18, 2
  %475 = extractvalue %dx.types.CBufRet.i32 %471, 0
  %476 = mul i32 %475, %474
  %477 = lshr i32 %17, 3
  %478 = add i32 %473, %477
  %479 = add i32 %478, %476
  %480 = shl i32 %479, 2
  %481 = shl i32 %18, 3
  %482 = and i32 %481, 24
  %483 = and i32 %17, 7
  %484 = or i32 %482, %483
  %485 = shl i32 1, %484
  %486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %480, i32 undef)  ; BufferLoad(srv,index,wot)
  %487 = extractvalue %dx.types.ResRet.i32 %486, 0
  %488 = and i32 %487, %485
  %489 = icmp eq i32 %488, 0
  br i1 %489, label %503, label %490, !dx.controlflow.hints !37

; <label>:490                                     ; preds = %470
  %491 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %11, float %31, float %32, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %492 = extractvalue %dx.types.ResRet.f32 %491, 0
  %493 = extractvalue %dx.types.ResRet.f32 %491, 1
  %494 = extractvalue %dx.types.ResRet.f32 %491, 2
  %495 = extractvalue %dx.types.ResRet.f32 %491, 3
  %496 = fsub fast float 1.000000e+00, %495
  %497 = fmul fast float %496, %464
  %498 = fmul fast float %496, %465
  %499 = fmul fast float %496, %466
  %500 = fadd fast float %497, %492
  %501 = fadd fast float %498, %493
  %502 = fadd fast float %499, %494
  br label %503

; <label>:503                                     ; preds = %490, %470, %463
  %504 = phi float [ %500, %490 ], [ %464, %470 ], [ %464, %463 ]
  %505 = phi float [ %501, %490 ], [ %465, %470 ], [ %465, %463 ]
  %506 = phi float [ %502, %490 ], [ %466, %470 ], [ %466, %463 ]
  %507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %508 = extractvalue %dx.types.CBufRet.f32 %507, 0
  %509 = extractvalue %dx.types.CBufRet.f32 %507, 1
  %510 = extractvalue %dx.types.CBufRet.f32 %507, 2
  %511 = call float @dx.op.dot3.f32(i32 55, float %504, float %505, float %506, float %508, float %509, float %510)  ; Dot3(ax,ay,az,bx,by,bz)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %15, i32 %16, i32 undef, float %504, float %505, float %506, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %512 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %513 = extractvalue %dx.types.CBufRet.i32 %512, 1
  %514 = and i32 %513, 1
  %515 = icmp eq i32 %514, 0
  br i1 %515, label %517, label %516, !dx.controlflow.hints !38

; <label>:516                                     ; preds = %503
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %15, i32 %16, i32 undef, float %511, float %511, float %511, float %511, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %517

; <label>:517                                     ; preds = %516, %503, %0
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
!dx.entryPoints = !{!24}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !14, !17, !21}
!5 = !{!6, !8, !9, !10, !11, !12, !13}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 4, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 4, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 6, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 8, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 9, i32 1, i32 11, i32 0, null}
!14 = !{!15, !16}
!15 = !{i32 0, %"class.RWTexture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!16 = !{i32 1, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!17 = !{!18, !19, !20}
!18 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!19 = !{i32 1, %TonemapConstants* undef, !"", i32 0, i32 0, i32 1, i32 144, null}
!20 = !{i32 2, %ExposureConstants* undef, !"", i32 0, i32 1, i32 1, i32 64, null}
!21 = !{!22, !23}
!22 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!23 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!24 = !{void ()* @tonemap, !"tonemap", null, !4, !25}
!25 = !{i32 0, i64 272, i32 4, !26}
!26 = !{i32 8, i32 8, i32 1}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}

