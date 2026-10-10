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
; shader hash: 589eae40e7d79647b30a7132eea21617
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
;                                   texture     f32          3d      T3             t3     1
;                                   texture     f32          2d      T4             t4     1
;                                   texture     f32          2d      T5             t7     1
;                                   texture     f32          2d      T6             t5     1
;                                   texture     f32          2d      T7             t6     1
;                                   texture     f32          2d      T8             t8     1
;                                   texture    byte         r/o      T9             t9     1
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
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %19 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %20 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %21 = call i32 @dx.op.groupId.i32(i32 94, i32 1)  ; GroupId(component)
  %22 = uitofp i32 %18 to float
  %23 = uitofp i32 %19 to float
  %24 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %25 = extractvalue %dx.types.CBufRet.f32 %24, 0
  %26 = extractvalue %dx.types.CBufRet.f32 %24, 1
  %27 = fcmp fast oge float %22, %25
  %28 = fcmp fast oge float %23, %26
  %29 = or i1 %27, %28
  br i1 %29, label %626, label %30, !dx.controlflow.hints !30

; <label>:30                                      ; preds = %0
  %31 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %32 = extractvalue %dx.types.CBufRet.f32 %31, 2
  %33 = extractvalue %dx.types.CBufRet.f32 %31, 3
  %34 = fmul fast float %32, %22
  %35 = fmul fast float %33, %23
  %36 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 0, i32 %18, i32 %19, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %37 = extractvalue %dx.types.ResRet.f32 %36, 0
  %38 = extractvalue %dx.types.ResRet.f32 %36, 1
  %39 = extractvalue %dx.types.ResRet.f32 %36, 2
  %40 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %13, float %34, float %35, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %41 = extractvalue %dx.types.ResRet.f32 %40, 0
  %42 = fsub fast float 1.000000e+00, %41
  %43 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %44 = extractvalue %dx.types.CBufRet.f32 %43, 0
  %45 = fcmp fast olt float %42, %44
  %46 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %47 = extractvalue %dx.types.CBufRet.f32 %46, 0
  %48 = fcmp fast oge float %38, %47
  %49 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %50 = extractvalue %dx.types.CBufRet.i32 %49, 3
  %51 = and i32 %50, 3
  %52 = icmp ne i32 %51, 0
  %53 = and i32 %50, 4
  %54 = icmp eq i32 %53, 0
  %55 = and i1 %52, %54
  %56 = and i1 %48, %55
  br i1 %55, label %57, label %89, !dx.controlflow.hints !31

; <label>:57                                      ; preds = %30
  %58 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %13, float %34, float %35, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %59 = extractvalue %dx.types.ResRet.f32 %58, 0
  %60 = extractvalue %dx.types.ResRet.f32 %58, 1
  %61 = call float @dx.op.binary.f32(i32 35, float %59, float 0.000000e+00)  ; FMax(a,b)
  %62 = call float @dx.op.binary.f32(i32 35, float %60, float 0.000000e+00)  ; FMax(a,b)
  %63 = call float @dx.op.binary.f32(i32 36, float %61, float 3.225500e+04)  ; FMin(a,b)
  %64 = call float @dx.op.binary.f32(i32 36, float %62, float 3.225500e+04)  ; FMin(a,b)
  %65 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %66 = extractvalue %dx.types.CBufRet.f32 %65, 1
  %67 = fmul fast float %66, %37
  %68 = fmul fast float %66, %38
  %69 = extractvalue %dx.types.CBufRet.f32 %65, 0
  %70 = fmul fast float %69, %63
  %71 = fmul fast float %69, %64
  %72 = fadd fast float %70, %67
  %73 = fadd fast float %71, %68
  br i1 %56, label %74, label %89, !dx.controlflow.hints !32

; <label>:74                                      ; preds = %57
  %75 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 237)  ; CBufferLoadLegacy(handle,regIndex)
  %76 = extractvalue %dx.types.CBufRet.f32 %75, 3
  %77 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %13, float %73, float 0.000000e+00, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %78 = extractvalue %dx.types.ResRet.f32 %77, 0
  %79 = extractvalue %dx.types.ResRet.f32 %77, 1
  %80 = extractvalue %dx.types.ResRet.f32 %77, 2
  %81 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %82 = extractvalue %dx.types.CBufRet.f32 %81, 2
  %83 = fcmp fast ogt float %82, 1.500000e+00
  %84 = select i1 %83, float %78, float %79
  %85 = select i1 %83, float %78, float %80
  %86 = fmul fast float %78, %76
  %87 = fmul fast float %84, %76
  %88 = fmul fast float %85, %76
  br label %89

; <label>:89                                      ; preds = %74, %57, %30
  %90 = phi float [ %86, %74 ], [ %37, %30 ], [ %72, %57 ]
  %91 = phi float [ %87, %74 ], [ %38, %30 ], [ %72, %57 ]
  %92 = phi float [ %88, %74 ], [ %39, %30 ], [ %72, %57 ]
  %93 = phi float [ %72, %74 ], [ %37, %30 ], [ %72, %57 ]
  %94 = phi float [ %73, %74 ], [ %38, %30 ], [ %73, %57 ]
  br i1 %56, label %95, label %289, !dx.controlflow.hints !33

; <label>:95                                      ; preds = %89
  %96 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 219)  ; CBufferLoadLegacy(handle,regIndex)
  %97 = extractvalue %dx.types.CBufRet.f32 %96, 0
  %98 = bitcast float %97 to i32
  %99 = icmp eq i32 %98, 3
  %100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %101 = extractvalue %dx.types.CBufRet.f32 %100, 2
  %102 = fsub fast float 1.000000e+00, %101
  br i1 %99, label %103, label %185, !dx.controlflow.hints !34

; <label>:103                                     ; preds = %95
  %104 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %105 = fmul fast float %104, 0x3FDAAAAAA0000000
  %106 = call float @dx.op.unary.f32(i32 21, float %105)  ; Exp(value)
  %107 = fsub fast float 1.000000e+00, %106
  %108 = call float @dx.op.unary.f32(i32 23, float %107)  ; Log(value)
  %109 = fmul fast float %108, 0x4003333340000000
  %110 = call float @dx.op.unary.f32(i32 21, float %109)  ; Exp(value)
  %111 = fdiv fast float %106, %107
  %112 = fadd fast float %111, %90
  %113 = fadd fast float %111, %91
  %114 = fadd fast float %111, %92
  %115 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %112)  ; FMax(a,b)
  %116 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %113)  ; FMax(a,b)
  %117 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %114)  ; FMax(a,b)
  %118 = call float @dx.op.unary.f32(i32 23, float %115)  ; Log(value)
  %119 = call float @dx.op.unary.f32(i32 23, float %116)  ; Log(value)
  %120 = call float @dx.op.unary.f32(i32 23, float %117)  ; Log(value)
  %121 = fmul fast float %118, 0x4003333340000000
  %122 = fmul fast float %119, 0x4003333340000000
  %123 = fmul fast float %120, 0x4003333340000000
  %124 = call float @dx.op.unary.f32(i32 21, float %121)  ; Exp(value)
  %125 = call float @dx.op.unary.f32(i32 21, float %122)  ; Exp(value)
  %126 = call float @dx.op.unary.f32(i32 21, float %123)  ; Exp(value)
  %127 = fmul fast float %124, %110
  %128 = fmul fast float %125, %110
  %129 = fmul fast float %126, %110
  %130 = extractvalue %dx.types.CBufRet.f32 %96, 1
  %131 = fmul fast float %127, %130
  %132 = fmul fast float %128, %130
  %133 = fmul fast float %129, %130
  %134 = fmul fast float %131, 0x3FE413A920000000
  %135 = call float @dx.op.tertiary.f32(i32 46, float 0x3FD5134040000000, float %132, float %134)  ; FMad(a,b,c)
  %136 = call float @dx.op.tertiary.f32(i32 46, float 0x3FA62B6AE0000000, float %133, float %135)  ; FMad(a,b,c)
  %137 = fmul fast float %131, 0x3FB1B089A0000000
  %138 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED6C8B40000000, float %132, float %137)  ; FMad(a,b,c)
  %139 = call float @dx.op.tertiary.f32(i32 46, float 0x3F8758E220000000, float %133, float %138)  ; FMad(a,b,c)
  %140 = fmul fast float %131, 0x3F90CB2960000000
  %141 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB6872B00000000, float %132, float %140)  ; FMad(a,b,c)
  %142 = call float @dx.op.tertiary.f32(i32 46, float 0x3FECA8C160000000, float %133, float %141)  ; FMad(a,b,c)
  %143 = fmul fast float %136, 0x3F1A36E2E0000000
  %144 = fmul fast float %139, 0x3F1A36E2E0000000
  %145 = fmul fast float %142, 0x3F1A36E2E0000000
  %146 = call float @dx.op.unary.f32(i32 23, float %143)  ; Log(value)
  %147 = call float @dx.op.unary.f32(i32 23, float %144)  ; Log(value)
  %148 = call float @dx.op.unary.f32(i32 23, float %145)  ; Log(value)
  %149 = fmul fast float %146, 0x3FC4640000000000
  %150 = fmul fast float %147, 0x3FC4640000000000
  %151 = fmul fast float %148, 0x3FC4640000000000
  %152 = call float @dx.op.unary.f32(i32 21, float %149)  ; Exp(value)
  %153 = call float @dx.op.unary.f32(i32 21, float %150)  ; Exp(value)
  %154 = call float @dx.op.unary.f32(i32 21, float %151)  ; Exp(value)
  %155 = fmul fast float %152, 0x4032DA0000000000
  %156 = fmul fast float %153, 0x4032DA0000000000
  %157 = fmul fast float %154, 0x4032DA0000000000
  %158 = fadd fast float %155, 8.359375e-01
  %159 = fadd fast float %156, 8.359375e-01
  %160 = fadd fast float %157, 8.359375e-01
  %161 = fmul fast float %152, 1.868750e+01
  %162 = fmul fast float %153, 1.868750e+01
  %163 = fmul fast float %154, 1.868750e+01
  %164 = fadd fast float %161, 1.000000e+00
  %165 = fadd fast float %162, 1.000000e+00
  %166 = fadd fast float %163, 1.000000e+00
  %167 = fdiv fast float %158, %164
  %168 = fdiv fast float %159, %165
  %169 = fdiv fast float %160, %166
  %170 = call float @dx.op.unary.f32(i32 23, float %167)  ; Log(value)
  %171 = call float @dx.op.unary.f32(i32 23, float %168)  ; Log(value)
  %172 = call float @dx.op.unary.f32(i32 23, float %169)  ; Log(value)
  %173 = fmul fast float %170, 7.884375e+01
  %174 = fmul fast float %171, 7.884375e+01
  %175 = fmul fast float %172, 7.884375e+01
  %176 = call float @dx.op.unary.f32(i32 21, float %173)  ; Exp(value)
  %177 = call float @dx.op.unary.f32(i32 21, float %174)  ; Exp(value)
  %178 = call float @dx.op.unary.f32(i32 21, float %175)  ; Exp(value)
  %179 = fmul fast float %102, %176
  %180 = fmul fast float %102, %177
  %181 = fmul fast float %102, %178
  %182 = fadd fast float %179, %101
  %183 = fadd fast float %180, %101
  %184 = fadd fast float %181, %101
  br label %572

; <label>:185                                     ; preds = %95
  %186 = icmp eq i32 %98, 4
  br i1 %186, label %187, label %282, !dx.controlflow.hints !35

; <label>:187                                     ; preds = %185
  %188 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %189 = fmul fast float %188, 0x3FDAAAAAA0000000
  %190 = call float @dx.op.unary.f32(i32 21, float %189)  ; Exp(value)
  %191 = fsub fast float 1.000000e+00, %190
  %192 = call float @dx.op.unary.f32(i32 23, float %191)  ; Log(value)
  %193 = fmul fast float %192, 0x4003333340000000
  %194 = call float @dx.op.unary.f32(i32 21, float %193)  ; Exp(value)
  %195 = fdiv fast float %190, %191
  %196 = fadd fast float %195, %90
  %197 = fadd fast float %195, %91
  %198 = fadd fast float %195, %92
  %199 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %196)  ; FMax(a,b)
  %200 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %197)  ; FMax(a,b)
  %201 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %198)  ; FMax(a,b)
  %202 = call float @dx.op.unary.f32(i32 23, float %199)  ; Log(value)
  %203 = call float @dx.op.unary.f32(i32 23, float %200)  ; Log(value)
  %204 = call float @dx.op.unary.f32(i32 23, float %201)  ; Log(value)
  %205 = fmul fast float %202, 0x4003333340000000
  %206 = fmul fast float %203, 0x4003333340000000
  %207 = fmul fast float %204, 0x4003333340000000
  %208 = call float @dx.op.unary.f32(i32 21, float %205)  ; Exp(value)
  %209 = call float @dx.op.unary.f32(i32 21, float %206)  ; Exp(value)
  %210 = call float @dx.op.unary.f32(i32 21, float %207)  ; Exp(value)
  %211 = fmul fast float %208, %194
  %212 = fmul fast float %209, %194
  %213 = fmul fast float %210, %194
  %214 = extractvalue %dx.types.CBufRet.f32 %96, 1
  %215 = fmul fast float %211, %214
  %216 = fmul fast float %212, %214
  %217 = fmul fast float %213, %214
  %218 = fmul fast float %215, 0x3FEA519BC0000000
  %219 = call float @dx.op.tertiary.f32(i32 46, float 0x3FC6B990A0000000, float %216, float %218)  ; FMad(a,b,c)
  %220 = fmul fast float %215, 0x3FA0FED480000000
  %221 = call float @dx.op.tertiary.f32(i32 46, float 0x3FEEF012C0000000, float %216, float %220)  ; FMad(a,b,c)
  %222 = fmul fast float %215, 0x3F917E1C00000000
  %223 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB288A2E0000000, float %216, float %222)  ; FMad(a,b,c)
  %224 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED22FAA0000000, float %217, float %223)  ; FMad(a,b,c)
  %225 = call float @dx.op.binary.f32(i32 35, float %215, float %216)  ; FMax(a,b)
  %226 = call float @dx.op.binary.f32(i32 35, float %225, float %217)  ; FMax(a,b)
  %227 = fadd fast float %226, -1.000000e+00
  %228 = fmul fast float %227, 2.500000e-01
  %229 = call float @dx.op.unary.f32(i32 7, float %228)  ; Saturate(value)
  %230 = fsub fast float 1.000000e+00, %229
  %231 = fmul fast float %230, %219
  %232 = fmul fast float %230, %221
  %233 = fmul fast float %230, %224
  %234 = fmul fast float %229, %215
  %235 = fmul fast float %229, %216
  %236 = fmul fast float %229, %217
  %237 = fadd fast float %231, %234
  %238 = fadd fast float %232, %235
  %239 = fadd fast float %233, %236
  %240 = fmul fast float %237, 0x3F1A36E2E0000000
  %241 = fmul fast float %238, 0x3F1A36E2E0000000
  %242 = fmul fast float %239, 0x3F1A36E2E0000000
  %243 = call float @dx.op.unary.f32(i32 23, float %240)  ; Log(value)
  %244 = call float @dx.op.unary.f32(i32 23, float %241)  ; Log(value)
  %245 = call float @dx.op.unary.f32(i32 23, float %242)  ; Log(value)
  %246 = fmul fast float %243, 0x3FC4640000000000
  %247 = fmul fast float %244, 0x3FC4640000000000
  %248 = fmul fast float %245, 0x3FC4640000000000
  %249 = call float @dx.op.unary.f32(i32 21, float %246)  ; Exp(value)
  %250 = call float @dx.op.unary.f32(i32 21, float %247)  ; Exp(value)
  %251 = call float @dx.op.unary.f32(i32 21, float %248)  ; Exp(value)
  %252 = fmul fast float %249, 0x4032DA0000000000
  %253 = fmul fast float %250, 0x4032DA0000000000
  %254 = fmul fast float %251, 0x4032DA0000000000
  %255 = fadd fast float %252, 8.359375e-01
  %256 = fadd fast float %253, 8.359375e-01
  %257 = fadd fast float %254, 8.359375e-01
  %258 = fmul fast float %249, 1.868750e+01
  %259 = fmul fast float %250, 1.868750e+01
  %260 = fmul fast float %251, 1.868750e+01
  %261 = fadd fast float %258, 1.000000e+00
  %262 = fadd fast float %259, 1.000000e+00
  %263 = fadd fast float %260, 1.000000e+00
  %264 = fdiv fast float %255, %261
  %265 = fdiv fast float %256, %262
  %266 = fdiv fast float %257, %263
  %267 = call float @dx.op.unary.f32(i32 23, float %264)  ; Log(value)
  %268 = call float @dx.op.unary.f32(i32 23, float %265)  ; Log(value)
  %269 = call float @dx.op.unary.f32(i32 23, float %266)  ; Log(value)
  %270 = fmul fast float %267, 7.884375e+01
  %271 = fmul fast float %268, 7.884375e+01
  %272 = fmul fast float %269, 7.884375e+01
  %273 = call float @dx.op.unary.f32(i32 21, float %270)  ; Exp(value)
  %274 = call float @dx.op.unary.f32(i32 21, float %271)  ; Exp(value)
  %275 = call float @dx.op.unary.f32(i32 21, float %272)  ; Exp(value)
  %276 = fmul fast float %102, %273
  %277 = fmul fast float %102, %274
  %278 = fmul fast float %102, %275
  %279 = fadd fast float %276, %101
  %280 = fadd fast float %277, %101
  %281 = fadd fast float %278, %101
  br label %572

; <label>:282                                     ; preds = %185
  %283 = fmul fast float %102, %90
  %284 = fmul fast float %102, %91
  %285 = fmul fast float %102, %92
  %286 = fadd fast float %283, %101
  %287 = fadd fast float %284, %101
  %288 = fadd fast float %285, %101
  br label %572

; <label>:289                                     ; preds = %89
  %290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %291 = extractvalue %dx.types.CBufRet.f32 %290, 0
  %292 = icmp eq i32 %51, 0
  %293 = icmp ne i32 %53, 0
  %294 = or i1 %292, %293
  %295 = and i1 %45, %294
  %296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %297 = extractvalue %dx.types.CBufRet.f32 %296, 3
  br i1 %295, label %298, label %394, !dx.controlflow.hints !36

; <label>:298                                     ; preds = %289
  %299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 237)  ; CBufferLoadLegacy(handle,regIndex)
  %300 = extractvalue %dx.types.CBufRet.f32 %299, 3
  %301 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %13, float %94, float 0.000000e+00, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %302 = extractvalue %dx.types.ResRet.f32 %301, 0
  %303 = extractvalue %dx.types.ResRet.f32 %301, 1
  %304 = extractvalue %dx.types.ResRet.f32 %301, 2
  %305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %306 = extractvalue %dx.types.CBufRet.f32 %305, 2
  %307 = fcmp fast ogt float %306, 1.500000e+00
  %308 = select i1 %307, float %302, float %303
  %309 = select i1 %307, float %302, float %304
  %310 = fmul fast float %302, %300
  %311 = fmul fast float %308, %300
  %312 = fmul fast float %309, %300
  %313 = fmul fast float %291, %93
  %314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %315 = extractvalue %dx.types.CBufRet.f32 %314, 1
  %316 = fmul fast float %313, %315
  %317 = fadd fast float %316, 9.765625e-04
  %318 = call float @dx.op.unary.f32(i32 23, float %317)  ; Log(value)
  %319 = fadd fast float %318, 1.000000e+01
  %320 = fmul fast float %319, 0x3FA99999A0000000
  %321 = call float @dx.op.unary.f32(i32 7, float %320)  ; Saturate(value)
  %322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %323 = extractvalue %dx.types.CBufRet.f32 %322, 0
  %324 = extractvalue %dx.types.CBufRet.f32 %322, 1
  %325 = extractvalue %dx.types.CBufRet.f32 %322, 2
  %326 = fmul fast float %323, %321
  %327 = fmul fast float %324, %321
  %328 = fmul fast float %325, %321
  %329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %330 = extractvalue %dx.types.CBufRet.f32 %329, 0
  %331 = extractvalue %dx.types.CBufRet.f32 %329, 1
  %332 = extractvalue %dx.types.CBufRet.f32 %329, 2
  %333 = fadd fast float %326, %330
  %334 = fadd fast float %327, %331
  %335 = fadd fast float %328, %332
  %336 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %13, float %333, float %334, float %335, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %337 = extractvalue %dx.types.ResRet.f32 %336, 0
  %338 = extractvalue %dx.types.ResRet.f32 %336, 1
  %339 = extractvalue %dx.types.ResRet.f32 %336, 2
  %340 = fsub fast float %94, %47
  %341 = fmul fast float %340, 1.000000e+01
  %342 = call float @dx.op.unary.f32(i32 7, float %341)  ; Saturate(value)
  %343 = fmul fast float %342, 2.000000e+00
  %344 = fsub fast float 3.000000e+00, %343
  %345 = fmul fast float %342, %342
  %346 = fmul fast float %345, %344
  %347 = fsub fast float %310, %337
  %348 = fsub fast float %311, %338
  %349 = fsub fast float %312, %339
  %350 = fmul fast float %346, %347
  %351 = fmul fast float %346, %348
  %352 = fmul fast float %346, %349
  %353 = fadd fast float %350, %337
  %354 = fadd fast float %351, %338
  %355 = fadd fast float %352, %339
  %356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %357 = extractvalue %dx.types.CBufRet.f32 %356, 0
  %358 = fmul fast float %357, 0x3FC70A3D80000000
  %359 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %360 = fmul fast float %359, 0x3FDAAAAAA0000000
  %361 = call float @dx.op.unary.f32(i32 21, float %360)  ; Exp(value)
  %362 = fsub fast float 1.000000e+00, %361
  %363 = call float @dx.op.unary.f32(i32 23, float %362)  ; Log(value)
  %364 = fmul fast float %363, 0x4003333340000000
  %365 = call float @dx.op.unary.f32(i32 21, float %364)  ; Exp(value)
  %366 = fdiv fast float %361, %362
  %367 = fadd fast float %353, %366
  %368 = fadd fast float %354, %366
  %369 = fadd fast float %355, %366
  %370 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %367)  ; FMax(a,b)
  %371 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %368)  ; FMax(a,b)
  %372 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %369)  ; FMax(a,b)
  %373 = call float @dx.op.unary.f32(i32 23, float %370)  ; Log(value)
  %374 = call float @dx.op.unary.f32(i32 23, float %371)  ; Log(value)
  %375 = call float @dx.op.unary.f32(i32 23, float %372)  ; Log(value)
  %376 = fmul fast float %373, 0x4003333340000000
  %377 = fmul fast float %374, 0x4003333340000000
  %378 = fmul fast float %375, 0x4003333340000000
  %379 = call float @dx.op.unary.f32(i32 21, float %376)  ; Exp(value)
  %380 = call float @dx.op.unary.f32(i32 21, float %377)  ; Exp(value)
  %381 = call float @dx.op.unary.f32(i32 21, float %378)  ; Exp(value)
  %382 = fmul fast float %365, %358
  %383 = fmul fast float %382, %379
  %384 = fmul fast float %382, %380
  %385 = fmul fast float %382, %381
  %386 = fadd fast float %383, %297
  %387 = fadd fast float %384, %297
  %388 = fadd fast float %385, %297
  %389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %390 = extractvalue %dx.types.CBufRet.f32 %389, 0
  %391 = fmul fast float %390, %386
  %392 = fmul fast float %387, %390
  %393 = fmul fast float %388, %390
  br label %422

; <label>:394                                     ; preds = %289
  %395 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %13, float %34, float %35, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %396 = extractvalue %dx.types.ResRet.f32 %395, 0
  %397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %398 = extractvalue %dx.types.CBufRet.f32 %397, 3
  %399 = extractvalue %dx.types.CBufRet.f32 %296, 1
  %400 = fsub fast float %399, %396
  %401 = fcmp fast ogt float %400, 0.000000e+00
  %402 = fcmp fast olt float %400, 0.000000e+00
  %403 = zext i1 %401 to i32
  %404 = zext i1 %402 to i32
  %405 = sub nsw i32 %403, %404
  %406 = sitofp i32 %405 to float
  %407 = call float @dx.op.unary.f32(i32 6, float %400)  ; FAbs(value)
  %408 = fsub fast float %407, %398
  %409 = call float @dx.op.binary.f32(i32 35, float %408, float 0.000000e+00)  ; FMax(a,b)
  %410 = fmul fast float %406, %409
  %411 = fsub fast float %399, %410
  %412 = fmul fast float %411, 0xBFF7154760000000
  %413 = call float @dx.op.unary.f32(i32 21, float %412)  ; Exp(value)
  %414 = fmul fast float %413, %297
  %415 = extractvalue %dx.types.CBufRet.f32 %397, 2
  %416 = fadd fast float %414, -1.000000e+00
  %417 = fmul fast float %415, %416
  %418 = fadd fast float %417, 1.000000e+00
  %419 = fmul fast float %418, %90
  %420 = fmul fast float %418, %91
  %421 = fmul fast float %418, %92
  br label %422

; <label>:422                                     ; preds = %394, %298
  %423 = phi float [ %391, %298 ], [ %419, %394 ]
  %424 = phi float [ %392, %298 ], [ %420, %394 ]
  %425 = phi float [ %393, %298 ], [ %421, %394 ]
  br i1 %55, label %449, label %426, !dx.controlflow.hints !37

; <label>:426                                     ; preds = %422
  %427 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %13, float %34, float %35, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %428 = extractvalue %dx.types.ResRet.f32 %427, 0
  %429 = extractvalue %dx.types.ResRet.f32 %427, 1
  %430 = extractvalue %dx.types.ResRet.f32 %427, 2
  %431 = call float @dx.op.binary.f32(i32 35, float %428, float 0.000000e+00)  ; FMax(a,b)
  %432 = call float @dx.op.binary.f32(i32 35, float %429, float 0.000000e+00)  ; FMax(a,b)
  %433 = call float @dx.op.binary.f32(i32 35, float %430, float 0.000000e+00)  ; FMax(a,b)
  %434 = call float @dx.op.binary.f32(i32 36, float %431, float 3.225500e+04)  ; FMin(a,b)
  %435 = call float @dx.op.binary.f32(i32 36, float %432, float 3.225500e+04)  ; FMin(a,b)
  %436 = call float @dx.op.binary.f32(i32 36, float %433, float 3.225500e+04)  ; FMin(a,b)
  %437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %438 = extractvalue %dx.types.CBufRet.f32 %437, 1
  %439 = fmul fast float %438, %423
  %440 = fmul fast float %438, %424
  %441 = fmul fast float %438, %425
  %442 = extractvalue %dx.types.CBufRet.f32 %437, 0
  %443 = fmul fast float %442, %434
  %444 = fmul fast float %442, %435
  %445 = fmul fast float %442, %436
  %446 = fadd fast float %443, %439
  %447 = fadd fast float %444, %440
  %448 = fadd fast float %445, %441
  br label %449

; <label>:449                                     ; preds = %426, %422
  %450 = phi float [ %423, %422 ], [ %446, %426 ]
  %451 = phi float [ %424, %422 ], [ %447, %426 ]
  %452 = phi float [ %425, %422 ], [ %448, %426 ]
  %453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 304)  ; CBufferLoadLegacy(handle,regIndex)
  %454 = extractvalue %dx.types.CBufRet.f32 %453, 2
  %455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 305)  ; CBufferLoadLegacy(handle,regIndex)
  %456 = extractvalue %dx.types.CBufRet.f32 %455, 2
  %457 = extractvalue %dx.types.CBufRet.f32 %455, 3
  %458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 306)  ; CBufferLoadLegacy(handle,regIndex)
  %459 = extractvalue %dx.types.CBufRet.f32 %458, 0
  %460 = extractvalue %dx.types.CBufRet.f32 %458, 1
  %461 = fcmp fast ugt float %454, 0.000000e+00
  br i1 %461, label %462, label %512, !dx.controlflow.hints !38

; <label>:462                                     ; preds = %449
  %463 = extractvalue %dx.types.CBufRet.f32 %458, 2
  %464 = fcmp fast ogt float %463, 0.000000e+00
  %465 = extractvalue %dx.types.CBufRet.f32 %455, 1
  %466 = extractvalue %dx.types.CBufRet.f32 %455, 0
  %467 = extractvalue %dx.types.CBufRet.f32 %453, 1
  %468 = extractvalue %dx.types.CBufRet.f32 %453, 0
  %469 = fadd fast float %34, -5.000000e-01
  %470 = fadd fast float %35, -5.000000e-01
  %471 = fmul fast float %468, %469
  %472 = fmul fast float %467, %470
  %473 = fadd fast float %471, %466
  %474 = fadd fast float %472, %465
  br i1 %464, label %475, label %482, !dx.controlflow.hints !39

; <label>:475                                     ; preds = %462
  %476 = fmul fast float %473, 5.000000e-01
  %477 = fmul fast float %474, 5.000000e-01
  %478 = fadd fast float %476, 5.000000e-01
  %479 = fadd fast float %477, 5.000000e-01
  %480 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %13, float %478, float %479, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %481 = extractvalue %dx.types.ResRet.f32 %480, 0
  br label %495

; <label>:482                                     ; preds = %462
  %483 = fsub fast float -0.000000e+00, %456
  %484 = fsub fast float -0.000000e+00, %457
  %485 = call float @dx.op.binary.f32(i32 35, float %473, float %483)  ; FMax(a,b)
  %486 = call float @dx.op.binary.f32(i32 35, float %474, float %484)  ; FMax(a,b)
  %487 = call float @dx.op.binary.f32(i32 36, float %485, float %456)  ; FMin(a,b)
  %488 = call float @dx.op.binary.f32(i32 36, float %486, float %457)  ; FMin(a,b)
  %489 = fsub fast float %473, %487
  %490 = fsub fast float %474, %488
  %491 = fmul fast float %489, %489
  %492 = fmul fast float %490, %490
  %493 = fadd fast float %492, %491
  %494 = call float @dx.op.unary.f32(i32 24, float %493)  ; Sqrt(value)
  br label %495

; <label>:495                                     ; preds = %482, %475
  %496 = phi float [ %481, %475 ], [ %494, %482 ]
  %497 = fmul fast float %496, %459
  %498 = fadd fast float %497, %460
  %499 = call float @dx.op.unary.f32(i32 7, float %498)  ; Saturate(value)
  %500 = fmul fast float %499, %499
  %501 = fmul fast float %499, 2.000000e+00
  %502 = fsub fast float 3.000000e+00, %501
  %503 = fmul fast float %500, %502
  %504 = fsub fast float %503, %499
  %505 = fmul fast float %504, 0x3FE3333340000000
  %506 = fadd fast float %505, %499
  %507 = fmul fast float %506, %454
  %508 = fsub fast float 1.000000e+00, %507
  %509 = fmul fast float %508, %450
  %510 = fmul fast float %508, %451
  %511 = fmul fast float %508, %452
  br label %512

; <label>:512                                     ; preds = %495, %449
  %513 = phi float [ %509, %495 ], [ %450, %449 ]
  %514 = phi float [ %510, %495 ], [ %451, %449 ]
  %515 = phi float [ %511, %495 ], [ %452, %449 ]
  %516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %517 = extractvalue %dx.types.CBufRet.f32 %516, 0
  %518 = extractvalue %dx.types.CBufRet.f32 %516, 1
  %519 = extractvalue %dx.types.CBufRet.f32 %516, 2
  %520 = call float @dx.op.dot3.f32(i32 55, float %513, float %514, float %515, float %517, float %518, float %519)  ; Dot3(ax,ay,az,bx,by,bz)
  %521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %522 = extractvalue %dx.types.CBufRet.f32 %521, 0
  %523 = extractvalue %dx.types.CBufRet.f32 %521, 1
  %524 = extractvalue %dx.types.CBufRet.f32 %521, 2
  %525 = call float @dx.op.dot3.f32(i32 55, float %513, float %514, float %515, float %522, float %523, float %524)  ; Dot3(ax,ay,az,bx,by,bz)
  %526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %527 = extractvalue %dx.types.CBufRet.f32 %526, 0
  %528 = extractvalue %dx.types.CBufRet.f32 %526, 1
  %529 = extractvalue %dx.types.CBufRet.f32 %526, 2
  %530 = call float @dx.op.dot3.f32(i32 55, float %513, float %514, float %515, float %527, float %528, float %529)  ; Dot3(ax,ay,az,bx,by,bz)
  %531 = fmul fast float %520, %291
  %532 = fmul fast float %525, %291
  %533 = fmul fast float %530, %291
  %534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %535 = extractvalue %dx.types.CBufRet.f32 %534, 2
  %536 = fmul fast float %531, %535
  %537 = fmul fast float %532, %535
  %538 = fmul fast float %533, %535
  %539 = fadd fast float %536, 9.765625e-04
  %540 = fadd fast float %537, 9.765625e-04
  %541 = fadd fast float %538, 9.765625e-04
  %542 = call float @dx.op.unary.f32(i32 23, float %539)  ; Log(value)
  %543 = call float @dx.op.unary.f32(i32 23, float %540)  ; Log(value)
  %544 = call float @dx.op.unary.f32(i32 23, float %541)  ; Log(value)
  %545 = fadd fast float %542, 1.000000e+01
  %546 = fadd fast float %543, 1.000000e+01
  %547 = fadd fast float %544, 1.000000e+01
  %548 = fmul fast float %545, 0x3FA99999A0000000
  %549 = fmul fast float %546, 0x3FA99999A0000000
  %550 = fmul fast float %547, 0x3FA99999A0000000
  %551 = call float @dx.op.unary.f32(i32 7, float %548)  ; Saturate(value)
  %552 = call float @dx.op.unary.f32(i32 7, float %549)  ; Saturate(value)
  %553 = call float @dx.op.unary.f32(i32 7, float %550)  ; Saturate(value)
  %554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %555 = extractvalue %dx.types.CBufRet.f32 %554, 0
  %556 = extractvalue %dx.types.CBufRet.f32 %554, 1
  %557 = extractvalue %dx.types.CBufRet.f32 %554, 2
  %558 = fmul fast float %555, %551
  %559 = fmul fast float %556, %552
  %560 = fmul fast float %557, %553
  %561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %562 = extractvalue %dx.types.CBufRet.f32 %561, 0
  %563 = extractvalue %dx.types.CBufRet.f32 %561, 1
  %564 = extractvalue %dx.types.CBufRet.f32 %561, 2
  %565 = fadd fast float %558, %562
  %566 = fadd fast float %559, %563
  %567 = fadd fast float %560, %564
  %568 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %565, float %566, float %567, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %569 = extractvalue %dx.types.ResRet.f32 %568, 0
  %570 = extractvalue %dx.types.ResRet.f32 %568, 1
  %571 = extractvalue %dx.types.ResRet.f32 %568, 2
  br label %572

; <label>:572                                     ; preds = %512, %282, %187, %103
  %573 = phi float [ %182, %103 ], [ %279, %187 ], [ %286, %282 ], [ %569, %512 ]
  %574 = phi float [ %183, %103 ], [ %280, %187 ], [ %287, %282 ], [ %570, %512 ]
  %575 = phi float [ %184, %103 ], [ %281, %187 ], [ %288, %282 ], [ %571, %512 ]
  %576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %577 = extractvalue %dx.types.CBufRet.f32 %576, 0
  %578 = fcmp fast ogt float %577, 0.000000e+00
  br i1 %578, label %579, label %612, !dx.controlflow.hints !40

; <label>:579                                     ; preds = %572
  %580 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %581 = extractvalue %dx.types.CBufRet.i32 %580, 1
  %582 = shl i32 %581, 1
  %583 = lshr i32 %21, 2
  %584 = extractvalue %dx.types.CBufRet.i32 %580, 0
  %585 = mul i32 %584, %583
  %586 = lshr i32 %20, 3
  %587 = add i32 %582, %586
  %588 = add i32 %587, %585
  %589 = shl i32 %588, 2
  %590 = shl i32 %21, 3
  %591 = and i32 %590, 24
  %592 = and i32 %20, 7
  %593 = or i32 %591, %592
  %594 = shl i32 1, %593
  %595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %589, i32 undef)  ; BufferLoad(srv,index,wot)
  %596 = extractvalue %dx.types.ResRet.i32 %595, 0
  %597 = and i32 %596, %594
  %598 = icmp eq i32 %597, 0
  br i1 %598, label %612, label %599, !dx.controlflow.hints !41

; <label>:599                                     ; preds = %579
  %600 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %14, float %34, float %35, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %601 = extractvalue %dx.types.ResRet.f32 %600, 0
  %602 = extractvalue %dx.types.ResRet.f32 %600, 1
  %603 = extractvalue %dx.types.ResRet.f32 %600, 2
  %604 = extractvalue %dx.types.ResRet.f32 %600, 3
  %605 = fsub fast float 1.000000e+00, %604
  %606 = fmul fast float %605, %573
  %607 = fmul fast float %605, %574
  %608 = fmul fast float %605, %575
  %609 = fadd fast float %606, %601
  %610 = fadd fast float %607, %602
  %611 = fadd fast float %608, %603
  br label %612

; <label>:612                                     ; preds = %599, %579, %572
  %613 = phi float [ %609, %599 ], [ %573, %579 ], [ %573, %572 ]
  %614 = phi float [ %610, %599 ], [ %574, %579 ], [ %574, %572 ]
  %615 = phi float [ %611, %599 ], [ %575, %579 ], [ %575, %572 ]
  %616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %617 = extractvalue %dx.types.CBufRet.f32 %616, 0
  %618 = extractvalue %dx.types.CBufRet.f32 %616, 1
  %619 = extractvalue %dx.types.CBufRet.f32 %616, 2
  %620 = call float @dx.op.dot3.f32(i32 55, float %613, float %614, float %615, float %617, float %618, float %619)  ; Dot3(ax,ay,az,bx,by,bz)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %18, i32 %19, i32 undef, float %613, float %614, float %615, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %621 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %622 = extractvalue %dx.types.CBufRet.i32 %621, 1
  %623 = and i32 %622, 1
  %624 = icmp eq i32 %623, 0
  br i1 %624, label %626, label %625, !dx.controlflow.hints !42

; <label>:625                                     ; preds = %612
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %18, i32 %19, i32 undef, float %620, float %620, float %620, float %620, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %626

; <label>:626                                     ; preds = %625, %612, %0
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
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

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
!dx.entryPoints = !{!27}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !17, !20, !24}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 4, i32 0, !7}
!10 = !{i32 3, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 4, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 4, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 7, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 5, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 6, i32 1, i32 2, i32 0, !7}
!15 = !{i32 8, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 8, i32 1, i32 2, i32 0, !7}
!16 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 9, i32 1, i32 11, i32 0, null}
!17 = !{!18, !19}
!18 = !{i32 0, %"class.RWTexture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!19 = !{i32 1, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!20 = !{!21, !22, !23}
!21 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!22 = !{i32 1, %TonemapConstants* undef, !"", i32 0, i32 0, i32 1, i32 144, null}
!23 = !{i32 2, %ExposureConstants* undef, !"", i32 0, i32 1, i32 1, i32 64, null}
!24 = !{!25, !26}
!25 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!26 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!27 = !{void ()* @tonemap, !"tonemap", null, !4, !28}
!28 = !{i32 0, i64 272, i32 4, !29}
!29 = !{i32 8, i32 8, i32 1}
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
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}

