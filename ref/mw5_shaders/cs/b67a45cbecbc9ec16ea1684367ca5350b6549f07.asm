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
; shader hash: fc5253a970aabb92bd7230d5691b5c2b
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
;                                   texture     f32          2d      T4             t3     1
;                                   texture     f32          2d      T5             t6     1
;                                   texture     f32          2d      T6             t8     1
;                                   texture    byte         r/o      T7             t9     1
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
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %17 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %18 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %19 = call i32 @dx.op.groupId.i32(i32 94, i32 1)  ; GroupId(component)
  %20 = uitofp i32 %16 to float
  %21 = uitofp i32 %17 to float
  %22 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %23 = extractvalue %dx.types.CBufRet.f32 %22, 0
  %24 = extractvalue %dx.types.CBufRet.f32 %22, 1
  %25 = fcmp fast oge float %20, %23
  %26 = fcmp fast oge float %21, %24
  %27 = or i1 %25, %26
  br i1 %27, label %510, label %28, !dx.controlflow.hints !28

; <label>:28                                      ; preds = %0
  %29 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %30 = extractvalue %dx.types.CBufRet.f32 %29, 2
  %31 = extractvalue %dx.types.CBufRet.f32 %29, 3
  %32 = fmul fast float %30, %20
  %33 = fmul fast float %31, %21
  %34 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 0, i32 %16, i32 %17, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %35 = extractvalue %dx.types.ResRet.f32 %34, 0
  %36 = extractvalue %dx.types.ResRet.f32 %34, 1
  %37 = extractvalue %dx.types.ResRet.f32 %34, 2
  %38 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %39 = extractvalue %dx.types.CBufRet.f32 %38, 0
  %40 = fcmp fast oge float %36, %39
  %41 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %42 = extractvalue %dx.types.CBufRet.i32 %41, 3
  %43 = and i32 %42, 3
  %44 = icmp ne i32 %43, 0
  %45 = and i32 %42, 4
  %46 = icmp eq i32 %45, 0
  %47 = and i1 %44, %46
  %48 = and i1 %40, %47
  br i1 %47, label %49, label %81, !dx.controlflow.hints !29

; <label>:49                                      ; preds = %28
  %50 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %11, float %32, float %33, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %51 = extractvalue %dx.types.ResRet.f32 %50, 0
  %52 = call float @dx.op.binary.f32(i32 35, float %51, float 0.000000e+00)  ; FMax(a,b)
  %53 = call float @dx.op.binary.f32(i32 36, float %52, float 3.225500e+04)  ; FMin(a,b)
  %54 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %55 = extractvalue %dx.types.CBufRet.f32 %54, 1
  %56 = fmul fast float %55, %35
  %57 = extractvalue %dx.types.CBufRet.f32 %54, 0
  %58 = fmul fast float %57, %53
  %59 = fadd fast float %58, %56
  br i1 %48, label %60, label %81, !dx.controlflow.hints !30

; <label>:60                                      ; preds = %49
  %61 = fmul fast float %55, %36
  %62 = extractvalue %dx.types.ResRet.f32 %50, 1
  %63 = call float @dx.op.binary.f32(i32 35, float %62, float 0.000000e+00)  ; FMax(a,b)
  %64 = call float @dx.op.binary.f32(i32 36, float %63, float 3.225500e+04)  ; FMin(a,b)
  %65 = fmul fast float %64, %57
  %66 = fadd fast float %65, %61
  %67 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 237)  ; CBufferLoadLegacy(handle,regIndex)
  %68 = extractvalue %dx.types.CBufRet.f32 %67, 3
  %69 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %11, float %66, float 0.000000e+00, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %70 = extractvalue %dx.types.ResRet.f32 %69, 0
  %71 = extractvalue %dx.types.ResRet.f32 %69, 1
  %72 = extractvalue %dx.types.ResRet.f32 %69, 2
  %73 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %74 = extractvalue %dx.types.CBufRet.f32 %73, 2
  %75 = fcmp fast ogt float %74, 1.500000e+00
  %76 = select i1 %75, float %70, float %71
  %77 = select i1 %75, float %70, float %72
  %78 = fmul fast float %70, %68
  %79 = fmul fast float %76, %68
  %80 = fmul fast float %77, %68
  br label %81

; <label>:81                                      ; preds = %60, %49, %28
  %82 = phi float [ %78, %60 ], [ %35, %28 ], [ %59, %49 ]
  %83 = phi float [ %79, %60 ], [ %36, %28 ], [ %59, %49 ]
  %84 = phi float [ %80, %60 ], [ %37, %28 ], [ %59, %49 ]
  br i1 %48, label %85, label %279, !dx.controlflow.hints !31

; <label>:85                                      ; preds = %81
  %86 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 219)  ; CBufferLoadLegacy(handle,regIndex)
  %87 = extractvalue %dx.types.CBufRet.f32 %86, 0
  %88 = bitcast float %87 to i32
  %89 = icmp eq i32 %88, 3
  %90 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %91 = extractvalue %dx.types.CBufRet.f32 %90, 2
  %92 = fsub fast float 1.000000e+00, %91
  br i1 %89, label %93, label %175, !dx.controlflow.hints !32

; <label>:93                                      ; preds = %85
  %94 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %95 = fmul fast float %94, 0x3FDAAAAAA0000000
  %96 = call float @dx.op.unary.f32(i32 21, float %95)  ; Exp(value)
  %97 = fsub fast float 1.000000e+00, %96
  %98 = call float @dx.op.unary.f32(i32 23, float %97)  ; Log(value)
  %99 = fmul fast float %98, 0x4003333340000000
  %100 = call float @dx.op.unary.f32(i32 21, float %99)  ; Exp(value)
  %101 = fdiv fast float %96, %97
  %102 = fadd fast float %101, %82
  %103 = fadd fast float %101, %83
  %104 = fadd fast float %101, %84
  %105 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %102)  ; FMax(a,b)
  %106 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %103)  ; FMax(a,b)
  %107 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %104)  ; FMax(a,b)
  %108 = call float @dx.op.unary.f32(i32 23, float %105)  ; Log(value)
  %109 = call float @dx.op.unary.f32(i32 23, float %106)  ; Log(value)
  %110 = call float @dx.op.unary.f32(i32 23, float %107)  ; Log(value)
  %111 = fmul fast float %108, 0x4003333340000000
  %112 = fmul fast float %109, 0x4003333340000000
  %113 = fmul fast float %110, 0x4003333340000000
  %114 = call float @dx.op.unary.f32(i32 21, float %111)  ; Exp(value)
  %115 = call float @dx.op.unary.f32(i32 21, float %112)  ; Exp(value)
  %116 = call float @dx.op.unary.f32(i32 21, float %113)  ; Exp(value)
  %117 = fmul fast float %114, %100
  %118 = fmul fast float %115, %100
  %119 = fmul fast float %116, %100
  %120 = extractvalue %dx.types.CBufRet.f32 %86, 1
  %121 = fmul fast float %117, %120
  %122 = fmul fast float %118, %120
  %123 = fmul fast float %119, %120
  %124 = fmul fast float %121, 0x3FE413A920000000
  %125 = call float @dx.op.tertiary.f32(i32 46, float 0x3FD5134040000000, float %122, float %124)  ; FMad(a,b,c)
  %126 = call float @dx.op.tertiary.f32(i32 46, float 0x3FA62B6AE0000000, float %123, float %125)  ; FMad(a,b,c)
  %127 = fmul fast float %121, 0x3FB1B089A0000000
  %128 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED6C8B40000000, float %122, float %127)  ; FMad(a,b,c)
  %129 = call float @dx.op.tertiary.f32(i32 46, float 0x3F8758E220000000, float %123, float %128)  ; FMad(a,b,c)
  %130 = fmul fast float %121, 0x3F90CB2960000000
  %131 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB6872B00000000, float %122, float %130)  ; FMad(a,b,c)
  %132 = call float @dx.op.tertiary.f32(i32 46, float 0x3FECA8C160000000, float %123, float %131)  ; FMad(a,b,c)
  %133 = fmul fast float %126, 0x3F1A36E2E0000000
  %134 = fmul fast float %129, 0x3F1A36E2E0000000
  %135 = fmul fast float %132, 0x3F1A36E2E0000000
  %136 = call float @dx.op.unary.f32(i32 23, float %133)  ; Log(value)
  %137 = call float @dx.op.unary.f32(i32 23, float %134)  ; Log(value)
  %138 = call float @dx.op.unary.f32(i32 23, float %135)  ; Log(value)
  %139 = fmul fast float %136, 0x3FC4640000000000
  %140 = fmul fast float %137, 0x3FC4640000000000
  %141 = fmul fast float %138, 0x3FC4640000000000
  %142 = call float @dx.op.unary.f32(i32 21, float %139)  ; Exp(value)
  %143 = call float @dx.op.unary.f32(i32 21, float %140)  ; Exp(value)
  %144 = call float @dx.op.unary.f32(i32 21, float %141)  ; Exp(value)
  %145 = fmul fast float %142, 0x4032DA0000000000
  %146 = fmul fast float %143, 0x4032DA0000000000
  %147 = fmul fast float %144, 0x4032DA0000000000
  %148 = fadd fast float %145, 8.359375e-01
  %149 = fadd fast float %146, 8.359375e-01
  %150 = fadd fast float %147, 8.359375e-01
  %151 = fmul fast float %142, 1.868750e+01
  %152 = fmul fast float %143, 1.868750e+01
  %153 = fmul fast float %144, 1.868750e+01
  %154 = fadd fast float %151, 1.000000e+00
  %155 = fadd fast float %152, 1.000000e+00
  %156 = fadd fast float %153, 1.000000e+00
  %157 = fdiv fast float %148, %154
  %158 = fdiv fast float %149, %155
  %159 = fdiv fast float %150, %156
  %160 = call float @dx.op.unary.f32(i32 23, float %157)  ; Log(value)
  %161 = call float @dx.op.unary.f32(i32 23, float %158)  ; Log(value)
  %162 = call float @dx.op.unary.f32(i32 23, float %159)  ; Log(value)
  %163 = fmul fast float %160, 7.884375e+01
  %164 = fmul fast float %161, 7.884375e+01
  %165 = fmul fast float %162, 7.884375e+01
  %166 = call float @dx.op.unary.f32(i32 21, float %163)  ; Exp(value)
  %167 = call float @dx.op.unary.f32(i32 21, float %164)  ; Exp(value)
  %168 = call float @dx.op.unary.f32(i32 21, float %165)  ; Exp(value)
  %169 = fmul fast float %92, %166
  %170 = fmul fast float %92, %167
  %171 = fmul fast float %92, %168
  %172 = fadd fast float %169, %91
  %173 = fadd fast float %170, %91
  %174 = fadd fast float %171, %91
  br label %456

; <label>:175                                     ; preds = %85
  %176 = icmp eq i32 %88, 4
  br i1 %176, label %177, label %272, !dx.controlflow.hints !33

; <label>:177                                     ; preds = %175
  %178 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %179 = fmul fast float %178, 0x3FDAAAAAA0000000
  %180 = call float @dx.op.unary.f32(i32 21, float %179)  ; Exp(value)
  %181 = fsub fast float 1.000000e+00, %180
  %182 = call float @dx.op.unary.f32(i32 23, float %181)  ; Log(value)
  %183 = fmul fast float %182, 0x4003333340000000
  %184 = call float @dx.op.unary.f32(i32 21, float %183)  ; Exp(value)
  %185 = fdiv fast float %180, %181
  %186 = fadd fast float %185, %82
  %187 = fadd fast float %185, %83
  %188 = fadd fast float %185, %84
  %189 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %186)  ; FMax(a,b)
  %190 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %187)  ; FMax(a,b)
  %191 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %188)  ; FMax(a,b)
  %192 = call float @dx.op.unary.f32(i32 23, float %189)  ; Log(value)
  %193 = call float @dx.op.unary.f32(i32 23, float %190)  ; Log(value)
  %194 = call float @dx.op.unary.f32(i32 23, float %191)  ; Log(value)
  %195 = fmul fast float %192, 0x4003333340000000
  %196 = fmul fast float %193, 0x4003333340000000
  %197 = fmul fast float %194, 0x4003333340000000
  %198 = call float @dx.op.unary.f32(i32 21, float %195)  ; Exp(value)
  %199 = call float @dx.op.unary.f32(i32 21, float %196)  ; Exp(value)
  %200 = call float @dx.op.unary.f32(i32 21, float %197)  ; Exp(value)
  %201 = fmul fast float %198, %184
  %202 = fmul fast float %199, %184
  %203 = fmul fast float %200, %184
  %204 = extractvalue %dx.types.CBufRet.f32 %86, 1
  %205 = fmul fast float %201, %204
  %206 = fmul fast float %202, %204
  %207 = fmul fast float %203, %204
  %208 = fmul fast float %205, 0x3FEA519BC0000000
  %209 = call float @dx.op.tertiary.f32(i32 46, float 0x3FC6B990A0000000, float %206, float %208)  ; FMad(a,b,c)
  %210 = fmul fast float %205, 0x3FA0FED480000000
  %211 = call float @dx.op.tertiary.f32(i32 46, float 0x3FEEF012C0000000, float %206, float %210)  ; FMad(a,b,c)
  %212 = fmul fast float %205, 0x3F917E1C00000000
  %213 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB288A2E0000000, float %206, float %212)  ; FMad(a,b,c)
  %214 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED22FAA0000000, float %207, float %213)  ; FMad(a,b,c)
  %215 = call float @dx.op.binary.f32(i32 35, float %205, float %206)  ; FMax(a,b)
  %216 = call float @dx.op.binary.f32(i32 35, float %215, float %207)  ; FMax(a,b)
  %217 = fadd fast float %216, -1.000000e+00
  %218 = fmul fast float %217, 2.500000e-01
  %219 = call float @dx.op.unary.f32(i32 7, float %218)  ; Saturate(value)
  %220 = fsub fast float 1.000000e+00, %219
  %221 = fmul fast float %220, %209
  %222 = fmul fast float %220, %211
  %223 = fmul fast float %220, %214
  %224 = fmul fast float %219, %205
  %225 = fmul fast float %219, %206
  %226 = fmul fast float %219, %207
  %227 = fadd fast float %221, %224
  %228 = fadd fast float %222, %225
  %229 = fadd fast float %223, %226
  %230 = fmul fast float %227, 0x3F1A36E2E0000000
  %231 = fmul fast float %228, 0x3F1A36E2E0000000
  %232 = fmul fast float %229, 0x3F1A36E2E0000000
  %233 = call float @dx.op.unary.f32(i32 23, float %230)  ; Log(value)
  %234 = call float @dx.op.unary.f32(i32 23, float %231)  ; Log(value)
  %235 = call float @dx.op.unary.f32(i32 23, float %232)  ; Log(value)
  %236 = fmul fast float %233, 0x3FC4640000000000
  %237 = fmul fast float %234, 0x3FC4640000000000
  %238 = fmul fast float %235, 0x3FC4640000000000
  %239 = call float @dx.op.unary.f32(i32 21, float %236)  ; Exp(value)
  %240 = call float @dx.op.unary.f32(i32 21, float %237)  ; Exp(value)
  %241 = call float @dx.op.unary.f32(i32 21, float %238)  ; Exp(value)
  %242 = fmul fast float %239, 0x4032DA0000000000
  %243 = fmul fast float %240, 0x4032DA0000000000
  %244 = fmul fast float %241, 0x4032DA0000000000
  %245 = fadd fast float %242, 8.359375e-01
  %246 = fadd fast float %243, 8.359375e-01
  %247 = fadd fast float %244, 8.359375e-01
  %248 = fmul fast float %239, 1.868750e+01
  %249 = fmul fast float %240, 1.868750e+01
  %250 = fmul fast float %241, 1.868750e+01
  %251 = fadd fast float %248, 1.000000e+00
  %252 = fadd fast float %249, 1.000000e+00
  %253 = fadd fast float %250, 1.000000e+00
  %254 = fdiv fast float %245, %251
  %255 = fdiv fast float %246, %252
  %256 = fdiv fast float %247, %253
  %257 = call float @dx.op.unary.f32(i32 23, float %254)  ; Log(value)
  %258 = call float @dx.op.unary.f32(i32 23, float %255)  ; Log(value)
  %259 = call float @dx.op.unary.f32(i32 23, float %256)  ; Log(value)
  %260 = fmul fast float %257, 7.884375e+01
  %261 = fmul fast float %258, 7.884375e+01
  %262 = fmul fast float %259, 7.884375e+01
  %263 = call float @dx.op.unary.f32(i32 21, float %260)  ; Exp(value)
  %264 = call float @dx.op.unary.f32(i32 21, float %261)  ; Exp(value)
  %265 = call float @dx.op.unary.f32(i32 21, float %262)  ; Exp(value)
  %266 = fmul fast float %92, %263
  %267 = fmul fast float %92, %264
  %268 = fmul fast float %92, %265
  %269 = fadd fast float %266, %91
  %270 = fadd fast float %267, %91
  %271 = fadd fast float %268, %91
  br label %456

; <label>:272                                     ; preds = %175
  %273 = fmul fast float %92, %82
  %274 = fmul fast float %92, %83
  %275 = fmul fast float %92, %84
  %276 = fadd fast float %273, %91
  %277 = fadd fast float %274, %91
  %278 = fadd fast float %275, %91
  br label %456

; <label>:279                                     ; preds = %81
  %280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %281 = extractvalue %dx.types.CBufRet.f32 %280, 0
  %282 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %11, float %32, float %33, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %283 = extractvalue %dx.types.ResRet.f32 %282, 0
  %284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %285 = extractvalue %dx.types.CBufRet.f32 %284, 3
  %286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %287 = extractvalue %dx.types.CBufRet.f32 %286, 1
  %288 = fsub fast float %287, %283
  %289 = fcmp fast ogt float %288, 0.000000e+00
  %290 = fcmp fast olt float %288, 0.000000e+00
  %291 = zext i1 %289 to i32
  %292 = zext i1 %290 to i32
  %293 = sub nsw i32 %291, %292
  %294 = sitofp i32 %293 to float
  %295 = call float @dx.op.unary.f32(i32 6, float %288)  ; FAbs(value)
  %296 = fsub fast float %295, %285
  %297 = call float @dx.op.binary.f32(i32 35, float %296, float 0.000000e+00)  ; FMax(a,b)
  %298 = fmul fast float %294, %297
  %299 = extractvalue %dx.types.CBufRet.f32 %286, 3
  %300 = fsub fast float %287, %298
  %301 = fmul fast float %300, 0xBFF7154760000000
  %302 = call float @dx.op.unary.f32(i32 21, float %301)  ; Exp(value)
  %303 = fmul fast float %302, %299
  %304 = extractvalue %dx.types.CBufRet.f32 %284, 2
  %305 = fadd fast float %303, -1.000000e+00
  %306 = fmul fast float %304, %305
  %307 = fadd fast float %306, 1.000000e+00
  %308 = fmul fast float %307, %82
  %309 = fmul fast float %307, %83
  %310 = fmul fast float %307, %84
  br i1 %47, label %333, label %311, !dx.controlflow.hints !34

; <label>:311                                     ; preds = %279
  %312 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %11, float %32, float %33, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %313 = extractvalue %dx.types.ResRet.f32 %312, 0
  %314 = extractvalue %dx.types.ResRet.f32 %312, 1
  %315 = extractvalue %dx.types.ResRet.f32 %312, 2
  %316 = call float @dx.op.binary.f32(i32 35, float %313, float 0.000000e+00)  ; FMax(a,b)
  %317 = call float @dx.op.binary.f32(i32 35, float %314, float 0.000000e+00)  ; FMax(a,b)
  %318 = call float @dx.op.binary.f32(i32 35, float %315, float 0.000000e+00)  ; FMax(a,b)
  %319 = call float @dx.op.binary.f32(i32 36, float %316, float 3.225500e+04)  ; FMin(a,b)
  %320 = call float @dx.op.binary.f32(i32 36, float %317, float 3.225500e+04)  ; FMin(a,b)
  %321 = call float @dx.op.binary.f32(i32 36, float %318, float 3.225500e+04)  ; FMin(a,b)
  %322 = extractvalue %dx.types.CBufRet.f32 %284, 1
  %323 = fmul fast float %322, %308
  %324 = fmul fast float %322, %309
  %325 = fmul fast float %322, %310
  %326 = extractvalue %dx.types.CBufRet.f32 %284, 0
  %327 = fmul fast float %326, %319
  %328 = fmul fast float %326, %320
  %329 = fmul fast float %326, %321
  %330 = fadd fast float %327, %323
  %331 = fadd fast float %328, %324
  %332 = fadd fast float %329, %325
  br label %333

; <label>:333                                     ; preds = %311, %279
  %334 = phi float [ %308, %279 ], [ %330, %311 ]
  %335 = phi float [ %309, %279 ], [ %331, %311 ]
  %336 = phi float [ %310, %279 ], [ %332, %311 ]
  %337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 304)  ; CBufferLoadLegacy(handle,regIndex)
  %338 = extractvalue %dx.types.CBufRet.f32 %337, 2
  %339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 305)  ; CBufferLoadLegacy(handle,regIndex)
  %340 = extractvalue %dx.types.CBufRet.f32 %339, 2
  %341 = extractvalue %dx.types.CBufRet.f32 %339, 3
  %342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 306)  ; CBufferLoadLegacy(handle,regIndex)
  %343 = extractvalue %dx.types.CBufRet.f32 %342, 0
  %344 = extractvalue %dx.types.CBufRet.f32 %342, 1
  %345 = fcmp fast ugt float %338, 0.000000e+00
  br i1 %345, label %346, label %396, !dx.controlflow.hints !35

; <label>:346                                     ; preds = %333
  %347 = extractvalue %dx.types.CBufRet.f32 %342, 2
  %348 = fcmp fast ogt float %347, 0.000000e+00
  %349 = extractvalue %dx.types.CBufRet.f32 %339, 1
  %350 = extractvalue %dx.types.CBufRet.f32 %339, 0
  %351 = extractvalue %dx.types.CBufRet.f32 %337, 1
  %352 = extractvalue %dx.types.CBufRet.f32 %337, 0
  %353 = fadd fast float %32, -5.000000e-01
  %354 = fadd fast float %33, -5.000000e-01
  %355 = fmul fast float %352, %353
  %356 = fmul fast float %351, %354
  %357 = fadd fast float %355, %350
  %358 = fadd fast float %356, %349
  br i1 %348, label %359, label %366, !dx.controlflow.hints !36

; <label>:359                                     ; preds = %346
  %360 = fmul fast float %357, 5.000000e-01
  %361 = fmul fast float %358, 5.000000e-01
  %362 = fadd fast float %360, 5.000000e-01
  %363 = fadd fast float %361, 5.000000e-01
  %364 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %11, float %362, float %363, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %365 = extractvalue %dx.types.ResRet.f32 %364, 0
  br label %379

; <label>:366                                     ; preds = %346
  %367 = fsub fast float -0.000000e+00, %340
  %368 = fsub fast float -0.000000e+00, %341
  %369 = call float @dx.op.binary.f32(i32 35, float %357, float %367)  ; FMax(a,b)
  %370 = call float @dx.op.binary.f32(i32 35, float %358, float %368)  ; FMax(a,b)
  %371 = call float @dx.op.binary.f32(i32 36, float %369, float %340)  ; FMin(a,b)
  %372 = call float @dx.op.binary.f32(i32 36, float %370, float %341)  ; FMin(a,b)
  %373 = fsub fast float %357, %371
  %374 = fsub fast float %358, %372
  %375 = fmul fast float %373, %373
  %376 = fmul fast float %374, %374
  %377 = fadd fast float %376, %375
  %378 = call float @dx.op.unary.f32(i32 24, float %377)  ; Sqrt(value)
  br label %379

; <label>:379                                     ; preds = %366, %359
  %380 = phi float [ %365, %359 ], [ %378, %366 ]
  %381 = fmul fast float %380, %343
  %382 = fadd fast float %381, %344
  %383 = call float @dx.op.unary.f32(i32 7, float %382)  ; Saturate(value)
  %384 = fmul fast float %383, %383
  %385 = fmul fast float %383, 2.000000e+00
  %386 = fsub fast float 3.000000e+00, %385
  %387 = fmul fast float %384, %386
  %388 = fsub fast float %387, %383
  %389 = fmul fast float %388, 0x3FE3333340000000
  %390 = fadd fast float %389, %383
  %391 = fmul fast float %390, %338
  %392 = fsub fast float 1.000000e+00, %391
  %393 = fmul fast float %392, %334
  %394 = fmul fast float %392, %335
  %395 = fmul fast float %392, %336
  br label %396

; <label>:396                                     ; preds = %379, %333
  %397 = phi float [ %393, %379 ], [ %334, %333 ]
  %398 = phi float [ %394, %379 ], [ %335, %333 ]
  %399 = phi float [ %395, %379 ], [ %336, %333 ]
  %400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %401 = extractvalue %dx.types.CBufRet.f32 %400, 0
  %402 = extractvalue %dx.types.CBufRet.f32 %400, 1
  %403 = extractvalue %dx.types.CBufRet.f32 %400, 2
  %404 = call float @dx.op.dot3.f32(i32 55, float %397, float %398, float %399, float %401, float %402, float %403)  ; Dot3(ax,ay,az,bx,by,bz)
  %405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %406 = extractvalue %dx.types.CBufRet.f32 %405, 0
  %407 = extractvalue %dx.types.CBufRet.f32 %405, 1
  %408 = extractvalue %dx.types.CBufRet.f32 %405, 2
  %409 = call float @dx.op.dot3.f32(i32 55, float %397, float %398, float %399, float %406, float %407, float %408)  ; Dot3(ax,ay,az,bx,by,bz)
  %410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %411 = extractvalue %dx.types.CBufRet.f32 %410, 0
  %412 = extractvalue %dx.types.CBufRet.f32 %410, 1
  %413 = extractvalue %dx.types.CBufRet.f32 %410, 2
  %414 = call float @dx.op.dot3.f32(i32 55, float %397, float %398, float %399, float %411, float %412, float %413)  ; Dot3(ax,ay,az,bx,by,bz)
  %415 = fmul fast float %404, %281
  %416 = fmul fast float %409, %281
  %417 = fmul fast float %414, %281
  %418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %419 = extractvalue %dx.types.CBufRet.f32 %418, 2
  %420 = fmul fast float %415, %419
  %421 = fmul fast float %416, %419
  %422 = fmul fast float %417, %419
  %423 = fadd fast float %420, 9.765625e-04
  %424 = fadd fast float %421, 9.765625e-04
  %425 = fadd fast float %422, 9.765625e-04
  %426 = call float @dx.op.unary.f32(i32 23, float %423)  ; Log(value)
  %427 = call float @dx.op.unary.f32(i32 23, float %424)  ; Log(value)
  %428 = call float @dx.op.unary.f32(i32 23, float %425)  ; Log(value)
  %429 = fadd fast float %426, 1.000000e+01
  %430 = fadd fast float %427, 1.000000e+01
  %431 = fadd fast float %428, 1.000000e+01
  %432 = fmul fast float %429, 0x3FA99999A0000000
  %433 = fmul fast float %430, 0x3FA99999A0000000
  %434 = fmul fast float %431, 0x3FA99999A0000000
  %435 = call float @dx.op.unary.f32(i32 7, float %432)  ; Saturate(value)
  %436 = call float @dx.op.unary.f32(i32 7, float %433)  ; Saturate(value)
  %437 = call float @dx.op.unary.f32(i32 7, float %434)  ; Saturate(value)
  %438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %439 = extractvalue %dx.types.CBufRet.f32 %438, 0
  %440 = extractvalue %dx.types.CBufRet.f32 %438, 1
  %441 = extractvalue %dx.types.CBufRet.f32 %438, 2
  %442 = fmul fast float %439, %435
  %443 = fmul fast float %440, %436
  %444 = fmul fast float %441, %437
  %445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %446 = extractvalue %dx.types.CBufRet.f32 %445, 0
  %447 = extractvalue %dx.types.CBufRet.f32 %445, 1
  %448 = extractvalue %dx.types.CBufRet.f32 %445, 2
  %449 = fadd fast float %442, %446
  %450 = fadd fast float %443, %447
  %451 = fadd fast float %444, %448
  %452 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %11, float %449, float %450, float %451, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %453 = extractvalue %dx.types.ResRet.f32 %452, 0
  %454 = extractvalue %dx.types.ResRet.f32 %452, 1
  %455 = extractvalue %dx.types.ResRet.f32 %452, 2
  br label %456

; <label>:456                                     ; preds = %396, %272, %177, %93
  %457 = phi float [ %172, %93 ], [ %269, %177 ], [ %276, %272 ], [ %453, %396 ]
  %458 = phi float [ %173, %93 ], [ %270, %177 ], [ %277, %272 ], [ %454, %396 ]
  %459 = phi float [ %174, %93 ], [ %271, %177 ], [ %278, %272 ], [ %455, %396 ]
  %460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %461 = extractvalue %dx.types.CBufRet.f32 %460, 0
  %462 = fcmp fast ogt float %461, 0.000000e+00
  br i1 %462, label %463, label %496, !dx.controlflow.hints !37

; <label>:463                                     ; preds = %456
  %464 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %465 = extractvalue %dx.types.CBufRet.i32 %464, 1
  %466 = shl i32 %465, 1
  %467 = lshr i32 %19, 2
  %468 = extractvalue %dx.types.CBufRet.i32 %464, 0
  %469 = mul i32 %468, %467
  %470 = lshr i32 %18, 3
  %471 = add i32 %466, %470
  %472 = add i32 %471, %469
  %473 = shl i32 %472, 2
  %474 = shl i32 %19, 3
  %475 = and i32 %474, 24
  %476 = and i32 %18, 7
  %477 = or i32 %475, %476
  %478 = shl i32 1, %477
  %479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %473, i32 undef)  ; BufferLoad(srv,index,wot)
  %480 = extractvalue %dx.types.ResRet.i32 %479, 0
  %481 = and i32 %480, %478
  %482 = icmp eq i32 %481, 0
  br i1 %482, label %496, label %483, !dx.controlflow.hints !38

; <label>:483                                     ; preds = %463
  %484 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %12, float %32, float %33, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %485 = extractvalue %dx.types.ResRet.f32 %484, 0
  %486 = extractvalue %dx.types.ResRet.f32 %484, 1
  %487 = extractvalue %dx.types.ResRet.f32 %484, 2
  %488 = extractvalue %dx.types.ResRet.f32 %484, 3
  %489 = fsub fast float 1.000000e+00, %488
  %490 = fmul fast float %489, %457
  %491 = fmul fast float %489, %458
  %492 = fmul fast float %489, %459
  %493 = fadd fast float %490, %485
  %494 = fadd fast float %491, %486
  %495 = fadd fast float %492, %487
  br label %496

; <label>:496                                     ; preds = %483, %463, %456
  %497 = phi float [ %493, %483 ], [ %457, %463 ], [ %457, %456 ]
  %498 = phi float [ %494, %483 ], [ %458, %463 ], [ %458, %456 ]
  %499 = phi float [ %495, %483 ], [ %459, %463 ], [ %459, %456 ]
  %500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %501 = extractvalue %dx.types.CBufRet.f32 %500, 0
  %502 = extractvalue %dx.types.CBufRet.f32 %500, 1
  %503 = extractvalue %dx.types.CBufRet.f32 %500, 2
  %504 = call float @dx.op.dot3.f32(i32 55, float %497, float %498, float %499, float %501, float %502, float %503)  ; Dot3(ax,ay,az,bx,by,bz)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %16, i32 %17, i32 undef, float %497, float %498, float %499, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %505 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %506 = extractvalue %dx.types.CBufRet.i32 %505, 1
  %507 = and i32 %506, 1
  %508 = icmp eq i32 %507, 0
  br i1 %508, label %510, label %509, !dx.controlflow.hints !39

; <label>:509                                     ; preds = %496
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %16, i32 %17, i32 undef, float %504, float %504, float %504, float %504, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %510

; <label>:510                                     ; preds = %509, %496, %0
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
!dx.entryPoints = !{!25}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !15, !18, !22}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 4, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 4, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 6, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 8, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 9, i32 1, i32 11, i32 0, null}
!15 = !{!16, !17}
!16 = !{i32 0, %"class.RWTexture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!17 = !{i32 1, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!18 = !{!19, !20, !21}
!19 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!20 = !{i32 1, %TonemapConstants* undef, !"", i32 0, i32 0, i32 1, i32 144, null}
!21 = !{i32 2, %ExposureConstants* undef, !"", i32 0, i32 1, i32 1, i32 64, null}
!22 = !{!23, !24}
!23 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!24 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!25 = !{void ()* @tonemap, !"tonemap", null, !4, !26}
!26 = !{i32 0, i64 272, i32 4, !27}
!27 = !{i32 8, i32 8, i32 1}
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
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}

