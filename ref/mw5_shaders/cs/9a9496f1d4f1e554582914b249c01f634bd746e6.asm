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
; shader hash: 71d8b0c32c71f778af41f15712dacaf7
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
;   [64 x i8] (type annotation not present)
;
; }
;
; cbuffer 
; {
;
;   [3376 x i8] (type annotation not present)
;
; }
;
; Resource bind info for 
; {
;
;   [1144 x i8] (type annotation not present)
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb3     1
;                                   cbuffer      NA          NA     CB1            cb0     1
;                                   cbuffer      NA          NA     CB2            cb5     1
;                                   sampler      NA          NA      S0             s1     1
;                                   sampler      NA          NA      S1             s2     1
;                                   texture    byte         r/o      T0             t4     1
;                                   texture  struct         r/o      T1             t6     1
;                                   texture    byte         r/o      T2             t7     1
;                                   texture     f32     2darray      T3             t0     1
;                                       UAV     f32          2d      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.StructuredBuffer<GfxWaterReadBackInfo>" = type { %struct.GfxWaterReadBackInfo }
%struct.GfxWaterReadBackInfo = type { %struct.GfxWaterReadBackHitInfo, %struct.GfxWaterReadBackFrustumLight, %struct.GfxWaterReadBackCullingInfo, %struct.GfxWaterReadBackIndirectArgs }
%struct.GfxWaterReadBackHitInfo = type { i32, <3 x float>, <4 x float>, <2 x float>, float, float, float, float, float, float, <3 x float>, float, i32, i32, i32, i32, float, float, <3 x float>, <3 x float>, <2 x float>, <2 x float>, <2 x float>, float, i32, i32, <4 x float>, <4 x float>, i32, i32, i32, i32, i32, i32, <3 x float>, <3 x float>, <3 x float>, <3 x float>, <3 x float>, <3 x float>, <4 x float>, <4 x float> }
%struct.GfxWaterReadBackFrustumLight = type { i32, <3 x float>, <3 x float>, float, float, <3 x float>, <4 x i32> }
%struct.GfxWaterReadBackCullingInfo = type { i32, i32, [39 x [4 x i32]] }
%struct.GfxWaterReadBackIndirectArgs = type { i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <2 x i32>, <2 x i32>, <2 x i32>, <3 x i32>, <3 x i32>, <3 x i32>, float, float }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
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
%waterDebug = type { %struct.WaterCsDebugConstants }
%struct.WaterCsDebugConstants = type { <2 x i32>, <2 x float>, float, float, float, float, i32, i32, float, float, <2 x float>, i32, i32 }
%hostlayout.waterConstants = type { %hostlayout.struct.GfxWaterConstants }
%hostlayout.struct.GfxWaterConstants = type { i32, float, float, float, float, float, float, i32, <3 x float>, float, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, float, float, float, float, i32, float, float, float, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, float, float, float, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [16 x <4 x float>], [16 x <4 x float>], <4 x float>, <4 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, [2 x <4 x i32>], [2 x <4 x i32>], [2 x <4 x i32>], [39 x <4 x i32>], [39 x <4 x i32>], [39 x <4 x i32>], <4 x i32>, <4 x float>, <4 x i32>, <4 x i32>, <4 x i32>, float, float, float, float, <3 x float>, i32, <3 x float>, i32, float, i32, i32, i32, float, float, float, float, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, i32, i32, i32, float, i32, i32, float, i32, i32, float, float, i32, float, i32, i32, i32 }
%struct.SamplerState = type { i32 }

define void @cs_water_tile_debug_overlay() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %12 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %13 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %14 = extractvalue %dx.types.CBufRet.i32 %13, 0
  %15 = add i32 %14, -1
  %16 = icmp ult i32 %15, 2
  %17 = icmp eq i32 %14, 3
  %18 = icmp eq i32 %14, 4
  %19 = icmp eq i32 %14, 5
  %20 = icmp eq i32 %14, 6
  %21 = icmp eq i32 %14, 7
  %22 = icmp ult i32 %15, 7
  br i1 %22, label %23, label %117, !dx.controlflow.hints !24

; <label>:23                                      ; preds = %0
  %24 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %25 = extractvalue %dx.types.CBufRet.i32 %24, 0
  %26 = uitofp i32 %25 to float
  %27 = fmul fast float %26, 0x3FA99999A0000000
  %28 = fptoui float %27 to i32
  %29 = extractvalue %dx.types.CBufRet.i32 %24, 1
  %30 = uitofp i32 %29 to float
  %31 = fmul fast float %30, 0x3FC3333340000000
  %32 = fptoui float %31 to i32
  %33 = fmul fast float %30, 0x3FC99999A0000000
  %34 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %35 = extractvalue %dx.types.CBufRet.f32 %34, 3
  %36 = fmul fast float %33, %35
  %37 = fptoui float %36 to i32
  %38 = add i32 %37, %28
  %39 = add i32 %37, %32
  %40 = icmp uge i32 %11, %28
  %41 = icmp uge i32 %12, %32
  %42 = and i1 %40, %41
  %43 = icmp ult i32 %11, %38
  %44 = icmp ult i32 %12, %39
  %45 = and i1 %43, %44
  %46 = and i1 %42, %45
  br i1 %46, label %47, label %457, !dx.controlflow.hints !25

; <label>:47                                      ; preds = %23
  %48 = sub i32 %11, %28
  %49 = sub i32 %12, %32
  %50 = uitofp i32 %48 to float
  %51 = uitofp i32 %49 to float
  %52 = uitofp i32 %37 to float
  %53 = fdiv fast float 1.000000e+00, %52
  %54 = fmul fast float %53, %50
  %55 = fmul fast float %53, %51
  %56 = fsub fast float 1.000000e+00, %54
  %57 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %7, float %56, float %55, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %58 = extractvalue %dx.types.ResRet.f32 %57, 0
  %59 = extractvalue %dx.types.ResRet.f32 %57, 1
  %60 = extractvalue %dx.types.ResRet.f32 %57, 2
  br i1 %16, label %457, label %61, !dx.controlflow.hints !26

; <label>:61                                      ; preds = %47
  br i1 %19, label %62, label %68, !dx.controlflow.hints !27

; <label>:62                                      ; preds = %61
  %63 = fcmp fast oeq float %58, 0.000000e+00
  br i1 %63, label %457, label %64, !dx.controlflow.hints !28

; <label>:64                                      ; preds = %62
  %65 = fcmp fast olt float %58, 0.000000e+00
  br i1 %65, label %66, label %457, !dx.controlflow.hints !29

; <label>:66                                      ; preds = %64
  %67 = call float @dx.op.unary.f32(i32 6, float %58)  ; FAbs(value)
  br label %457

; <label>:68                                      ; preds = %61
  br i1 %20, label %69, label %97, !dx.controlflow.hints !30

; <label>:69                                      ; preds = %68
  %70 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %6, float %56, float %55, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %71 = extractvalue %dx.types.ResRet.f32 %70, 0
  %72 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %6, float %56, float %55, float 0.000000e+00, float undef, i32 0, i32 -1, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %73 = extractvalue %dx.types.ResRet.f32 %72, 0
  %74 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %6, float %56, float %55, float 0.000000e+00, float undef, i32 0, i32 1, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %75 = extractvalue %dx.types.ResRet.f32 %74, 0
  %76 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %6, float %56, float %55, float 0.000000e+00, float undef, i32 1, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %77 = extractvalue %dx.types.ResRet.f32 %76, 0
  %78 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %6, float %56, float %55, float 0.000000e+00, float undef, i32 -1, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %79 = extractvalue %dx.types.ResRet.f32 %78, 0
  %80 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %81 = extractvalue %dx.types.CBufRet.f32 %80, 0
  %82 = fmul fast float %81, 2.000000e+00
  %83 = fsub fast float %77, %79
  %84 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %85 = extractvalue %dx.types.CBufRet.f32 %84, 2
  %86 = fmul fast float %85, %83
  %87 = fdiv fast float %86, %82
  %88 = fsub fast float %75, %73
  %89 = fmul fast float %85, %88
  %90 = fdiv fast float %89, %82
  %91 = call float @dx.op.dot3.f32(i32 55, float %87, float %90, float 1.000000e+00, float %87, float %90, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %92 = call float @dx.op.unary.f32(i32 25, float %91)  ; Rsqrt(value)
  %93 = fcmp fast ogt float %71, 0.000000e+00
  br i1 %93, label %94, label %457, !dx.controlflow.hints !31

; <label>:94                                      ; preds = %69
  %95 = fmul fast float %92, %90
  %96 = fmul fast float %92, %87
  br label %457

; <label>:97                                      ; preds = %68
  br i1 %21, label %98, label %105, !dx.controlflow.hints !32

; <label>:98                                      ; preds = %97
  %99 = fmul fast float %58, 2.000000e+00
  %100 = fmul fast float %59, 2.000000e+00
  %101 = fmul fast float %60, 2.000000e+00
  %102 = fadd fast float %99, -1.000000e+00
  %103 = fadd fast float %100, -1.000000e+00
  %104 = fadd fast float %101, -1.000000e+00
  br label %457

; <label>:105                                     ; preds = %97
  br i1 %17, label %106, label %113, !dx.controlflow.hints !33

; <label>:106                                     ; preds = %105
  %107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %108 = extractvalue %dx.types.CBufRet.f32 %107, 2
  %109 = fmul fast float %108, %58
  %110 = fmul fast float %109, 3.906250e-03
  %111 = fmul fast float %109, 9.765625e-04
  %112 = fmul fast float %109, 0x3F30000000000000
  br label %457

; <label>:113                                     ; preds = %105
  %114 = select i1 %18, float %58, float 0.000000e+00
  %115 = select i1 %18, float %59, float 0.000000e+00
  %116 = select i1 %18, float %60, float 0.000000e+00
  br label %457

; <label>:117                                     ; preds = %0
  %118 = icmp eq i32 %14, 8
  br i1 %118, label %119, label %146, !dx.controlflow.hints !34

; <label>:119                                     ; preds = %117
  %120 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %11, i32 %12, i32 0, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %121 = extractvalue %dx.types.ResRet.f32 %120, 0
  %122 = fmul fast float %121, 2.550000e+02
  %123 = fptoui float %122 to i32
  %124 = uitofp i32 %123 to float
  %125 = fadd fast float %124, -4.000000e+00
  %126 = fmul fast float %125, 0x3FB5555560000000
  %127 = call float @dx.op.unary.f32(i32 7, float %126)  ; Saturate(value)
  %128 = icmp eq i32 %123, 0
  %129 = select i1 %128, float 0.000000e+00, float %127
  %130 = icmp ult i32 %123, 2
  %131 = select i1 %130, float 0.000000e+00, float %127
  %132 = add i32 %123, -1
  %133 = icmp ult i32 %132, 2
  %134 = select i1 %133, float 1.000000e+00, float %129
  %135 = icmp ult i32 %123, 4
  %136 = select i1 %135, float 0.000000e+00, float 1.000000e+00
  %137 = and i32 %123, -2
  %138 = icmp eq i32 %137, 2
  %139 = icmp eq i32 %123, 4
  %140 = select i1 %139, float 1.000000e+00, float %136
  %141 = or i1 %139, %138
  %142 = select i1 %141, float 1.000000e+00, float %131
  %143 = add i32 %123, -3
  %144 = icmp ult i32 %143, 2
  %145 = select i1 %144, float 0.000000e+00, float %134
  br label %457

; <label>:146                                     ; preds = %117
  %147 = icmp eq i32 %14, 9
  %148 = add i32 %14, -9
  %149 = icmp eq i32 %14, 11
  %150 = icmp ult i32 %148, 3
  br i1 %150, label %151, label %227, !dx.controlflow.hints !35

; <label>:151                                     ; preds = %146
  %152 = lshr i32 %11, 1
  %153 = lshr i32 %12, 1
  %154 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %152, i32 %153, i32 0, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %155 = extractvalue %dx.types.ResRet.f32 %154, 0
  %156 = bitcast float %155 to i32
  %157 = lshr i32 %156, 8
  %158 = and i32 %156, 255
  %159 = and i32 %157, 255
  %160 = uitofp i32 %158 to float
  %161 = uitofp i32 %159 to float
  %162 = fmul fast float %160, 0x3F80101020000000
  %163 = fmul fast float %161, 0x3F80101020000000
  %164 = fadd fast float %162, -1.000000e+00
  %165 = fadd fast float %163, -1.000000e+00
  %166 = call float @dx.op.unary.f32(i32 6, float %164)  ; FAbs(value)
  %167 = fsub fast float 1.000000e+00, %166
  %168 = call float @dx.op.unary.f32(i32 6, float %165)  ; FAbs(value)
  %169 = fsub fast float %167, %168
  %170 = fsub fast float -0.000000e+00, %169
  %171 = call float @dx.op.binary.f32(i32 35, float %170, float 0.000000e+00)  ; FMax(a,b)
  %172 = fcmp fast ogt float %164, 0.000000e+00
  %173 = fsub fast float -0.000000e+00, %171
  %174 = select i1 %172, float %173, float %171
  %175 = fadd fast float %174, %164
  %176 = fcmp fast ogt float %165, 0.000000e+00
  %177 = select i1 %176, float %173, float %171
  %178 = fadd fast float %177, %165
  %179 = call float @dx.op.dot3.f32(i32 55, float %175, float %178, float %169, float %175, float %178, float %169)  ; Dot3(ax,ay,az,bx,by,bz)
  %180 = call float @dx.op.unary.f32(i32 25, float %179)  ; Rsqrt(value)
  %181 = fmul fast float %175, %180
  %182 = fmul fast float %178, %180
  %183 = fmul fast float %180, %169
  %184 = lshr i32 %156, 16
  %185 = and i32 %184, 3
  %186 = icmp ult i32 %156, -262144
  %187 = lshr i32 %156, 18
  %188 = uitofp i32 %187 to float
  %189 = fmul fast float %188, 0x3F4C00EBA0000000
  %190 = call float @dx.op.unary.f32(i32 21, float %189)  ; Exp(value)
  %191 = fadd fast float %190, -1.000000e+00
  br i1 %186, label %192, label %457, !dx.controlflow.hints !36

; <label>:192                                     ; preds = %151
  br i1 %147, label %193, label %197, !dx.controlflow.hints !37

; <label>:193                                     ; preds = %192
  %194 = fmul fast float %191, 3.906250e-03
  %195 = fmul fast float %191, 9.765625e-04
  %196 = fmul fast float %191, 0x3F30000000000000
  br label %457

; <label>:197                                     ; preds = %192
  br i1 %149, label %198, label %215, !dx.controlflow.hints !38

; <label>:198                                     ; preds = %197
  %199 = uitofp i32 %185 to float
  %200 = fadd fast float %199, -4.000000e+00
  %201 = fmul fast float %200, 0x3FB5555560000000
  %202 = call float @dx.op.unary.f32(i32 7, float %201)  ; Saturate(value)
  %203 = icmp eq i32 %185, 0
  %204 = select i1 %203, float 0.000000e+00, float %202
  %205 = and i32 %184, 2
  %206 = icmp eq i32 %205, 0
  %207 = select i1 %206, float 0.000000e+00, float %202
  %208 = add nsw i32 %185, -1
  %209 = icmp ult i32 %208, 2
  %210 = select i1 %209, float 1.000000e+00, float %204
  %211 = icmp eq i32 %185, 3
  %212 = icmp ne i32 %205, 0
  %213 = select i1 %212, float 1.000000e+00, float %207
  %214 = select i1 %211, float 0.000000e+00, float %210
  br label %457

; <label>:215                                     ; preds = %197
  %216 = call float @dx.op.dot3.f32(i32 55, float %181, float %182, float %183, float %181, float %182, float %183)  ; Dot3(ax,ay,az,bx,by,bz)
  %217 = call float @dx.op.unary.f32(i32 25, float %216)  ; Rsqrt(value)
  %218 = fmul fast float %181, 5.000000e-01
  %219 = fmul fast float %218, %217
  %220 = fmul fast float %182, 5.000000e-01
  %221 = fmul fast float %220, %217
  %222 = fmul fast float %183, 5.000000e-01
  %223 = fmul fast float %222, %217
  %224 = fadd fast float %219, 5.000000e-01
  %225 = fadd fast float %221, 5.000000e-01
  %226 = fadd fast float %223, 5.000000e-01
  br label %457

; <label>:227                                     ; preds = %146
  %228 = icmp eq i32 %14, 12
  br i1 %228, label %229, label %269, !dx.controlflow.hints !39

; <label>:229                                     ; preds = %227
  %230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 8, i32 undef)  ; BufferLoad(srv,index,wot)
  %231 = extractvalue %dx.types.ResRet.i32 %230, 0
  %232 = extractvalue %dx.types.ResRet.i32 %230, 1
  %233 = extractvalue %dx.types.ResRet.i32 %230, 2
  %234 = extractvalue %dx.types.ResRet.i32 %230, 3
  %235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %236 = extractvalue %dx.types.ResRet.i32 %235, 0
  %237 = extractvalue %dx.types.ResRet.i32 %235, 1
  %238 = extractvalue %dx.types.ResRet.i32 %235, 2
  %239 = extractvalue %dx.types.ResRet.i32 %235, 3
  %240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %241 = extractvalue %dx.types.ResRet.i32 %240, 0
  %242 = extractvalue %dx.types.ResRet.i32 %240, 1
  %243 = extractvalue %dx.types.ResRet.i32 %240, 2
  %244 = extractvalue %dx.types.ResRet.i32 %240, 3
  %245 = icmp uge i32 %11, %231
  %246 = icmp uge i32 %12, %232
  %247 = and i1 %245, %246
  %248 = icmp ule i32 %11, %233
  %249 = icmp ule i32 %12, %234
  %250 = and i1 %248, %249
  %251 = and i1 %247, %250
  %252 = select i1 %251, float 2.500000e-01, float 0.000000e+00
  %253 = icmp uge i32 %11, %236
  %254 = icmp uge i32 %12, %237
  %255 = and i1 %253, %254
  %256 = icmp ule i32 %11, %238
  %257 = icmp ule i32 %12, %239
  %258 = and i1 %256, %257
  %259 = and i1 %255, %258
  %260 = select i1 %259, float 2.500000e-01, float 0.000000e+00
  %261 = icmp uge i32 %11, %241
  %262 = icmp uge i32 %12, %242
  %263 = and i1 %261, %262
  %264 = icmp ule i32 %11, %243
  %265 = icmp ule i32 %12, %244
  %266 = and i1 %264, %265
  %267 = and i1 %263, %266
  %268 = select i1 %267, float 2.500000e-01, float 0.000000e+00
  br label %457

; <label>:269                                     ; preds = %227
  %270 = icmp eq i32 %14, 13
  br i1 %270, label %271, label %299, !dx.controlflow.hints !40

; <label>:271                                     ; preds = %269
  %272 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 0, i32 128)  ; BufferLoad(srv,index,wot)
  %273 = extractvalue %dx.types.ResRet.f32 %272, 0
  %274 = extractvalue %dx.types.ResRet.f32 %272, 1
  %275 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 0, i32 136)  ; BufferLoad(srv,index,wot)
  %276 = extractvalue %dx.types.ResRet.f32 %275, 0
  %277 = extractvalue %dx.types.ResRet.f32 %275, 1
  %278 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %279 = extractvalue %dx.types.CBufRet.i32 %278, 0
  %280 = extractvalue %dx.types.CBufRet.i32 %278, 1
  %281 = uitofp i32 %279 to float
  %282 = uitofp i32 %280 to float
  %283 = fmul fast float %281, %273
  %284 = fmul fast float %282, %274
  %285 = fmul fast float %281, %276
  %286 = fmul fast float %282, %277
  %287 = fptoui float %283 to i32
  %288 = fptoui float %284 to i32
  %289 = fptoui float %285 to i32
  %290 = fptoui float %286 to i32
  %291 = icmp uge i32 %11, %287
  %292 = icmp uge i32 %12, %288
  %293 = and i1 %291, %292
  %294 = icmp ule i32 %11, %289
  %295 = icmp ule i32 %12, %290
  %296 = and i1 %294, %295
  %297 = and i1 %293, %296
  %298 = select i1 %297, float 2.500000e-01, float 0.000000e+00
  br label %457

; <label>:299                                     ; preds = %269
  %300 = icmp eq i32 %14, 14
  br i1 %300, label %301, label %377, !dx.controlflow.hints !41

; <label>:301                                     ; preds = %299
  %302 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 358)  ; CBufferLoadLegacy(handle,regIndex)
  %303 = extractvalue %dx.types.CBufRet.i32 %302, 1
  %304 = extractvalue %dx.types.CBufRet.i32 %302, 0
  %305 = and i32 %304, 31
  %306 = lshr i32 %11, %305
  %307 = call i32 @dx.op.binary.i32(i32 40, i32 %306, i32 %303)  ; UMin(a,b)
  %308 = extractvalue %dx.types.CBufRet.i32 %302, 2
  %309 = lshr i32 %12, %305
  %310 = call i32 @dx.op.binary.i32(i32 40, i32 %309, i32 %308)  ; UMin(a,b)
  %311 = call i32 @dx.op.tertiary.i32(i32 49, i32 %310, i32 %303, i32 %307)  ; UMad(a,b,c)
  %312 = lshr i32 %311, 5
  %313 = and i32 %311, 31
  %314 = shl i32 1, %313
  %315 = shl nuw nsw i32 %312, 2
  %316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %315, i32 undef)  ; BufferLoad(srv,index,wot)
  %317 = extractvalue %dx.types.ResRet.i32 %316, 0
  %318 = and i32 %317, %314
  %319 = icmp ne i32 %318, 0
  %320 = select i1 %319, float 1.000000e+00, float 0.000000e+00
  %321 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %322 = extractvalue %dx.types.CBufRet.i32 %321, 0
  %323 = and i32 %322, 128
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %457, label %325, !dx.controlflow.hints !42

; <label>:325                                     ; preds = %301
  %326 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %327 = extractvalue %dx.types.CBufRet.i32 %326, 0
  %328 = lshr i32 %327, 20
  %329 = and i32 %328, 1
  %330 = sub nsw i32 2, %329
  %331 = lshr i32 %11, %330
  %332 = lshr i32 %12, %330
  %333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 160, i32 undef)  ; BufferLoad(srv,index,wot)
  %334 = extractvalue %dx.types.ResRet.i32 %333, 0
  %335 = extractvalue %dx.types.ResRet.i32 %333, 1
  %336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 132, i32 undef)  ; BufferLoad(srv,index,wot)
  %337 = extractvalue %dx.types.ResRet.i32 %336, 0
  %338 = extractvalue %dx.types.ResRet.i32 %336, 1
  %339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 192, i32 undef)  ; BufferLoad(srv,index,wot)
  %340 = extractvalue %dx.types.ResRet.i32 %339, 0
  %341 = extractvalue %dx.types.ResRet.i32 %339, 1
  %342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 140, i32 undef)  ; BufferLoad(srv,index,wot)
  %343 = extractvalue %dx.types.ResRet.i32 %342, 0
  %344 = extractvalue %dx.types.ResRet.i32 %342, 1
  %345 = icmp ne i32 %334, 0
  %346 = icmp ne i32 %335, 0
  %347 = and i1 %345, %346
  %348 = icmp uge i32 %331, %337
  %349 = icmp uge i32 %332, %338
  %350 = and i1 %348, %349
  %351 = and i1 %347, %350
  %352 = shl i32 %334, 3
  %353 = shl i32 %335, 3
  %354 = add i32 %337, %352
  %355 = add i32 %338, %353
  %356 = icmp ult i32 %331, %354
  %357 = icmp ult i32 %332, %355
  %358 = and i1 %356, %357
  %359 = and i1 %351, %358
  %360 = select i1 %359, float 1.000000e+00, float 0.000000e+00
  %361 = icmp ne i32 %340, 0
  %362 = icmp ne i32 %341, 0
  %363 = and i1 %361, %362
  %364 = icmp uge i32 %331, %343
  %365 = icmp uge i32 %332, %344
  %366 = and i1 %364, %365
  %367 = and i1 %363, %366
  %368 = shl i32 %340, 3
  %369 = shl i32 %341, 3
  %370 = add i32 %343, %368
  %371 = add i32 %344, %369
  %372 = icmp ult i32 %331, %370
  %373 = icmp ult i32 %332, %371
  %374 = and i1 %372, %373
  %375 = and i1 %367, %374
  %376 = select i1 %375, float 1.000000e+00, float 0.000000e+00
  br label %457

; <label>:377                                     ; preds = %299
  %378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %379 = extractvalue %dx.types.CBufRet.f32 %378, 0
  %380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %381 = extractvalue %dx.types.CBufRet.f32 %380, 3
  %382 = fmul fast float %381, %379
  %383 = extractvalue %dx.types.CBufRet.f32 %378, 1
  %384 = fmul fast float %381, %383
  %385 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %386 = extractvalue %dx.types.CBufRet.i32 %385, 0
  %387 = uitofp i32 %386 to float
  %388 = fsub fast float %387, %382
  %389 = fmul fast float %388, 5.000000e-01
  %390 = fptoui float %389 to i32
  %391 = extractvalue %dx.types.CBufRet.i32 %385, 1
  %392 = uitofp i32 %391 to float
  %393 = fmul fast float %392, 0x3FA99999A0000000
  %394 = fptoui float %393 to i32
  %395 = fptoui float %382 to i32
  %396 = fptoui float %384 to i32
  %397 = add i32 %390, %395
  %398 = add i32 %394, %396
  %399 = icmp uge i32 %11, %390
  %400 = icmp uge i32 %12, %394
  %401 = and i1 %399, %400
  %402 = icmp ult i32 %11, %397
  %403 = icmp ult i32 %12, %398
  %404 = and i1 %402, %403
  %405 = and i1 %401, %404
  br i1 %405, label %406, label %457, !dx.controlflow.hints !43

; <label>:406                                     ; preds = %377
  %407 = sub i32 %11, %390
  %408 = sub i32 %12, %394
  %409 = uitofp i32 %407 to float
  %410 = uitofp i32 %408 to float
  %411 = uitofp i32 %395 to float
  %412 = uitofp i32 %396 to float
  %413 = fdiv fast float 1.000000e+00, %411
  %414 = fdiv fast float 1.000000e+00, %412
  %415 = fmul fast float %413, %409
  %416 = fmul fast float %414, %410
  %417 = fmul fast float %415, %379
  %418 = fmul fast float %416, %379
  %419 = call float @dx.op.unary.f32(i32 27, float %417)  ; Round_ni(value)
  %420 = call float @dx.op.unary.f32(i32 27, float %418)  ; Round_ni(value)
  %421 = fdiv fast float 1.000000e+00, %379
  %422 = fmul fast float %421, %419
  %423 = fmul fast float %421, %420
  %424 = fdiv fast float 5.000000e-01, %379
  %425 = fadd fast float %424, %422
  %426 = fadd fast float %424, %423
  %427 = extractvalue %dx.types.CBufRet.i32 %13, 1
  %428 = icmp eq i32 %427, 0
  %429 = extractvalue %dx.types.CBufRet.f32 %378, 3
  %430 = extractvalue %dx.types.CBufRet.f32 %378, 2
  br i1 %428, label %435, label %431, !dx.controlflow.hints !44

; <label>:431                                     ; preds = %406
  %432 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %7, float %425, float %426, float %430, float undef, i32 0, i32 0, i32 undef, float %429)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %433 = extractvalue %dx.types.ResRet.f32 %432, 0
  %434 = extractvalue %dx.types.ResRet.f32 %432, 1
  br label %446

; <label>:435                                     ; preds = %406
  %436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %437 = extractvalue %dx.types.CBufRet.f32 %436, 0
  %438 = fmul fast float %437, %425
  %439 = fmul fast float %437, %426
  %440 = extractvalue %dx.types.CBufRet.f32 %436, 1
  %441 = fadd fast float %438, %440
  %442 = fadd fast float %439, %440
  %443 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %7, float %441, float %442, float %430, float undef, i32 0, i32 0, i32 undef, float %429)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %444 = extractvalue %dx.types.ResRet.f32 %443, 0
  %445 = extractvalue %dx.types.ResRet.f32 %443, 1
  br label %446

; <label>:446                                     ; preds = %435, %431
  %447 = phi float [ %433, %431 ], [ %444, %435 ]
  %448 = phi float [ %434, %431 ], [ %445, %435 ]
  %449 = icmp eq i32 %14, 15
  br i1 %449, label %450, label %453, !dx.controlflow.hints !45

; <label>:450                                     ; preds = %446
  %451 = fcmp fast ogt float %447, 0x3FE0101020000000
  %452 = uitofp i1 %451 to float
  br label %457

; <label>:453                                     ; preds = %446
  %454 = icmp eq i32 %14, 18
  %455 = select i1 %454, float %448, float %447
  %456 = select i1 %454, float 0.000000e+00, float %447
  br label %457

; <label>:457                                     ; preds = %453, %450, %377, %325, %301, %271, %229, %215, %198, %193, %151, %119, %113, %106, %98, %94, %69, %66, %64, %62, %47, %23
  %458 = phi float [ 0.000000e+00, %23 ], [ %140, %119 ], [ %194, %193 ], [ 0.000000e+00, %198 ], [ %224, %215 ], [ 0.000000e+00, %377 ], [ 0.000000e+00, %151 ], [ %298, %271 ], [ 0.000000e+00, %66 ], [ %96, %94 ], [ %102, %98 ], [ %110, %106 ], [ 0.000000e+00, %62 ], [ 0x3FC99999A0000000, %69 ], [ %58, %47 ], [ %58, %64 ], [ %114, %113 ], [ %320, %301 ], [ %452, %450 ], [ %252, %229 ], [ %320, %325 ], [ %447, %453 ]
  %459 = phi float [ 0.000000e+00, %23 ], [ %142, %119 ], [ %195, %193 ], [ %213, %198 ], [ %225, %215 ], [ 0.000000e+00, %377 ], [ 0.000000e+00, %151 ], [ 0.000000e+00, %271 ], [ %67, %66 ], [ %95, %94 ], [ %103, %98 ], [ %111, %106 ], [ 0.000000e+00, %62 ], [ 0x3FC99999A0000000, %69 ], [ %59, %47 ], [ 0.000000e+00, %64 ], [ %115, %113 ], [ 1.000000e+00, %301 ], [ %452, %450 ], [ %260, %229 ], [ %360, %325 ], [ %455, %453 ]
  %460 = phi float [ 0.000000e+00, %23 ], [ %145, %119 ], [ %196, %193 ], [ %214, %198 ], [ %226, %215 ], [ 0.000000e+00, %377 ], [ 0.000000e+00, %151 ], [ 0.000000e+00, %271 ], [ 0.000000e+00, %66 ], [ %92, %94 ], [ %104, %98 ], [ %112, %106 ], [ 1.000000e+00, %62 ], [ 0x3FC99999A0000000, %69 ], [ %60, %47 ], [ 0.000000e+00, %64 ], [ %116, %113 ], [ 1.000000e+00, %301 ], [ %452, %450 ], [ %268, %229 ], [ %376, %325 ], [ %456, %453 ]
  %461 = phi float [ 0.000000e+00, %23 ], [ 5.000000e-01, %119 ], [ 7.500000e-01, %193 ], [ 5.000000e-01, %198 ], [ 7.500000e-01, %215 ], [ 0.000000e+00, %377 ], [ 7.500000e-01, %151 ], [ 5.000000e-01, %271 ], [ 1.000000e+00, %66 ], [ 1.000000e+00, %94 ], [ 1.000000e+00, %98 ], [ 1.000000e+00, %106 ], [ 1.000000e+00, %62 ], [ 1.000000e+00, %69 ], [ 1.000000e+00, %47 ], [ 1.000000e+00, %64 ], [ 1.000000e+00, %113 ], [ 5.000000e-01, %301 ], [ 1.000000e+00, %450 ], [ 5.000000e-01, %229 ], [ 5.000000e-01, %325 ], [ 1.000000e+00, %453 ]
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %11, i32 %12, i32 undef, float %458, float %459, float %460, float %461, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

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
!dx.entryPoints = !{!21}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !12, !14, !18}
!5 = !{!6, !7, !9, !10}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 4, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %"class.StructuredBuffer<GfxWaterReadBackInfo>"* undef, !"", i32 0, i32 6, i32 1, i32 12, i32 0, !8}
!8 = !{i32 1, i32 1144}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 7, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 7, i32 0, !11}
!11 = !{i32 0, i32 9}
!12 = !{!13}
!13 = !{i32 0, %"class.RWTexture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !11}
!14 = !{!15, !16, !17}
!15 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!16 = !{i32 1, %waterDebug* undef, !"", i32 0, i32 0, i32 1, i32 64, null}
!17 = !{i32 2, %hostlayout.waterConstants* undef, !"", i32 0, i32 5, i32 1, i32 3376, null}
!18 = !{!19, !20}
!19 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!20 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!21 = !{void ()* @cs_water_tile_debug_overlay, !"cs_water_tile_debug_overlay", null, !4, !22}
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
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}

