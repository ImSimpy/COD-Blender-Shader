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
; shader hash: b6915721a01630f7948502842383c163
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
;   [32 x i8] (type annotation not present)
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
;                                   cbuffer      NA          NA     CB1            cb1     1
;                                   cbuffer      NA          NA     CB2            cb5     1
;                                   sampler      NA          NA      S0             s1     1
;                                   texture    byte         r/o      T0            t19     1
;                                   texture    byte         r/o      T1             t4     1
;                                   texture    byte         r/o      T2             t0     1
;                                   texture    byte         r/o      T3             t1     1
;                                   texture    byte         r/o      T4             t2     1
;                                   texture     f32          2d      T5             t3     1
;                                       UAV  struct         r/w      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.RWStructuredBuffer<GfxWaterReadBackInfo>" = type { %struct.GfxWaterReadBackInfo }
%struct.GfxWaterReadBackInfo = type { %struct.GfxWaterReadBackHitInfo, %struct.GfxWaterReadBackFrustumLight, %struct.GfxWaterReadBackCullingInfo, %struct.GfxWaterReadBackIndirectArgs }
%struct.GfxWaterReadBackHitInfo = type { i32, <3 x float>, <4 x float>, <2 x float>, float, float, float, float, float, float, <3 x float>, float, i32, i32, i32, i32, float, float, <3 x float>, <3 x float>, <2 x float>, <2 x float>, <2 x float>, float, i32, i32, <4 x float>, <4 x float>, i32, i32, i32, i32, i32, i32, <3 x float>, <3 x float>, <3 x float>, <3 x float>, <3 x float>, <3 x float>, <4 x float>, <4 x float> }
%struct.GfxWaterReadBackFrustumLight = type { i32, <3 x float>, <3 x float>, float, float, <3 x float>, <4 x i32> }
%struct.GfxWaterReadBackCullingInfo = type { i32, i32, [39 x [4 x i32]] }
%struct.GfxWaterReadBackIndirectArgs = type { i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <2 x i32>, <2 x i32>, <2 x i32>, <3 x i32>, <3 x i32>, <3 x i32>, float, float }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%waterGpuOcclusionCulling = type { %struct.WaterGpuOcclusionCullingCsConstants }
%struct.WaterGpuOcclusionCullingCsConstants = type { <3 x i32>, i32, <4 x float> }
%hostlayout.waterConstants = type { %hostlayout.struct.GfxWaterConstants }
%hostlayout.struct.GfxWaterConstants = type { i32, float, float, float, float, float, float, i32, <3 x float>, float, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, float, float, float, float, i32, float, float, float, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, float, float, float, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [16 x <4 x float>], [16 x <4 x float>], <4 x float>, <4 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, [2 x <4 x i32>], [2 x <4 x i32>], [2 x <4 x i32>], [39 x <4 x i32>], [39 x <4 x i32>], [39 x <4 x i32>], <4 x i32>, <4 x float>, <4 x i32>, <4 x i32>, <4 x i32>, float, float, float, float, <3 x float>, i32, <3 x float>, i32, float, i32, i32, i32, float, float, float, float, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, i32, i32, i32, float, i32, i32, float, i32, i32, float, float, i32, float, i32, i32, i32 }
%struct.SamplerState = type { i32 }

define void @cs_water_debug_update_readbackinfo() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = alloca [4 x i32], align 4
  %13 = alloca [4 x float], align 4
  %14 = alloca [4 x float], align 4
  %15 = alloca [8 x float], align 4
  %16 = alloca [8 x float], align 4
  %17 = alloca [8 x float], align 4
  %18 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 208)  ; CBufferLoadLegacy(handle,regIndex)
  %19 = extractvalue %dx.types.CBufRet.i32 %18, 1
  %20 = icmp ult i32 %19, 256
  br i1 %20, label %21, label %54, !dx.controlflow.hints !25

; <label>:21                                      ; preds = %0
  %22 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 208)  ; CBufferLoadLegacy(handle,regIndex)
  %23 = extractvalue %dx.types.CBufRet.i32 %22, 1
  %24 = mul i32 %23, 112
  %25 = add i32 %24, 16
  %26 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %25, i32 undef)  ; BufferLoad(srv,index,wot)
  %27 = extractvalue %dx.types.ResRet.f32 %26, 0
  %28 = extractvalue %dx.types.ResRet.f32 %26, 1
  %29 = extractvalue %dx.types.ResRet.f32 %26, 2
  %30 = add i32 %24, 48
  %31 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %30, i32 undef)  ; BufferLoad(srv,index,wot)
  %32 = extractvalue %dx.types.ResRet.f32 %31, 0
  %33 = extractvalue %dx.types.ResRet.f32 %31, 1
  %34 = extractvalue %dx.types.ResRet.f32 %31, 2
  %35 = extractvalue %dx.types.ResRet.f32 %31, 3
  %36 = add i32 %24, 96
  %37 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %36, i32 undef)  ; BufferLoad(srv,index,wot)
  %38 = extractvalue %dx.types.ResRet.f32 %37, 0
  %39 = extractvalue %dx.types.ResRet.f32 %37, 1
  %40 = extractvalue %dx.types.ResRet.f32 %37, 2
  %41 = add i32 %24, 108
  %42 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %41, i32 undef)  ; BufferLoad(srv,index,wot)
  %43 = extractvalue %dx.types.ResRet.f32 %42, 0
  %44 = fcmp fast ogt float %35, 0.000000e+00
  %45 = fdiv fast float 1.000000e+00, %35
  %46 = select i1 %44, float %45, float 0.000000e+00
  %47 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %48 = extractvalue %dx.types.CBufRet.f32 %47, 0
  %49 = extractvalue %dx.types.CBufRet.f32 %47, 1
  %50 = extractvalue %dx.types.CBufRet.f32 %47, 2
  %51 = fadd fast float %48, %32
  %52 = fadd fast float %49, %33
  %53 = fadd fast float %50, %34
  br label %54

; <label>:54                                      ; preds = %21, %0
  %55 = phi float [ %38, %21 ], [ 0.000000e+00, %0 ]
  %56 = phi float [ %39, %21 ], [ 0.000000e+00, %0 ]
  %57 = phi float [ %40, %21 ], [ 0.000000e+00, %0 ]
  %58 = phi float [ %43, %21 ], [ 0.000000e+00, %0 ]
  %59 = phi float [ %46, %21 ], [ 0.000000e+00, %0 ]
  %60 = phi float [ %27, %21 ], [ 0.000000e+00, %0 ]
  %61 = phi float [ %28, %21 ], [ 0.000000e+00, %0 ]
  %62 = phi float [ %29, %21 ], [ 0.000000e+00, %0 ]
  %63 = phi float [ %51, %21 ], [ 0.000000e+00, %0 ]
  %64 = phi float [ %52, %21 ], [ 0.000000e+00, %0 ]
  %65 = phi float [ %53, %21 ], [ 0.000000e+00, %0 ]
  %66 = phi i32 [ %23, %21 ], [ 256, %0 ]
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 324, i32 %66, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 328, float %63, float %64, float %65, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 340, float %60, float %61, float %62, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 352, float %59, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 356, float %58, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 360, float %55, float %56, float %57, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 372, i32 0, i32 0, i32 0, i32 0, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 388, i32 1, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %67 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 112, i32 undef)  ; BufferLoad(srv,index,wot)
  %68 = extractvalue %dx.types.ResRet.i32 %67, 0
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 392, i32 %68, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %69

; <label>:69                                      ; preds = %94, %54
  %70 = phi i32 [ 0, %54 ], [ %95, %94 ]
  br label %71

; <label>:71                                      ; preds = %71, %69
  %72 = phi i32 [ 0, %69 ], [ %92, %71 ]
  %73 = add nuw nsw i32 %70, 154
  %74 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 %73)  ; CBufferLoadLegacy(handle,regIndex)
  %75 = extractvalue %dx.types.CBufRet.i32 %74, 0
  %76 = extractvalue %dx.types.CBufRet.i32 %74, 1
  %77 = extractvalue %dx.types.CBufRet.i32 %74, 2
  %78 = extractvalue %dx.types.CBufRet.i32 %74, 3
  %79 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i32 0, i32 0
  store i32 %75, i32* %79, align 4
  %80 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i32 0, i32 1
  store i32 %76, i32* %80, align 4
  %81 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i32 0, i32 2
  store i32 %77, i32* %81, align 4
  %82 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i32 0, i32 3
  store i32 %78, i32* %82, align 4
  %83 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i32 0, i32 %72
  %84 = load i32, i32* %83, align 4, !tbaa !26
  %85 = add i32 %84, 8
  %86 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %85, i32 undef)  ; BufferLoad(srv,index,wot)
  %87 = extractvalue %dx.types.ResRet.i32 %86, 0
  %88 = shl i32 %70, 4
  %89 = add nuw nsw i32 %88, 396
  %90 = shl i32 %72, 2
  %91 = add nuw nsw i32 %89, %90
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 %91, i32 %87, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %92 = add nuw nsw i32 %72, 1
  %93 = icmp eq i32 %92, 4
  br i1 %93, label %94, label %71

; <label>:94                                      ; preds = %71
  %95 = add nuw nsw i32 %70, 1
  %96 = icmp eq i32 %95, 39
  br i1 %96, label %97, label %69

; <label>:97                                      ; preds = %94
  %98 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %99 = extractvalue %dx.types.ResRet.i32 %98, 0
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 1020, i32 %99, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %101 = extractvalue %dx.types.ResRet.i32 %100, 0
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 1024, i32 %101, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 8, i32 undef)  ; BufferLoad(srv,index,wot)
  %103 = extractvalue %dx.types.ResRet.i32 %102, 0
  %104 = extractvalue %dx.types.ResRet.i32 %102, 1
  %105 = extractvalue %dx.types.ResRet.i32 %102, 2
  %106 = extractvalue %dx.types.ResRet.i32 %102, 3
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 1028, i32 %103, i32 %104, i32 %105, i32 %106, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %108 = extractvalue %dx.types.ResRet.i32 %107, 0
  %109 = extractvalue %dx.types.ResRet.i32 %107, 1
  %110 = extractvalue %dx.types.ResRet.i32 %107, 2
  %111 = extractvalue %dx.types.ResRet.i32 %107, 3
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 1044, i32 %108, i32 %109, i32 %110, i32 %111, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %113 = extractvalue %dx.types.ResRet.i32 %112, 0
  %114 = extractvalue %dx.types.ResRet.i32 %112, 1
  %115 = extractvalue %dx.types.ResRet.i32 %112, 2
  %116 = extractvalue %dx.types.ResRet.i32 %112, 3
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 1060, i32 %113, i32 %114, i32 %115, i32 %116, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %118 = extractvalue %dx.types.ResRet.i32 %117, 0
  %119 = extractvalue %dx.types.ResRet.i32 %117, 1
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 1076, i32 %118, i32 %119, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %121 = extractvalue %dx.types.ResRet.i32 %120, 0
  %122 = extractvalue %dx.types.ResRet.i32 %120, 1
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 1084, i32 %121, i32 %122, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %124 = extractvalue %dx.types.ResRet.i32 %123, 0
  %125 = extractvalue %dx.types.ResRet.i32 %123, 1
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 1092, i32 %124, i32 %125, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 96, i32 undef)  ; BufferLoad(srv,index,wot)
  %127 = extractvalue %dx.types.ResRet.i32 %126, 0
  %128 = extractvalue %dx.types.ResRet.i32 %126, 1
  %129 = extractvalue %dx.types.ResRet.i32 %126, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 1100, i32 %127, i32 %128, i32 %129, i32 undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 160, i32 undef)  ; BufferLoad(srv,index,wot)
  %131 = extractvalue %dx.types.ResRet.i32 %130, 0
  %132 = extractvalue %dx.types.ResRet.i32 %130, 1
  %133 = extractvalue %dx.types.ResRet.i32 %130, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 1112, i32 %131, i32 %132, i32 %133, i32 undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 192, i32 undef)  ; BufferLoad(srv,index,wot)
  %135 = extractvalue %dx.types.ResRet.i32 %134, 0
  %136 = extractvalue %dx.types.ResRet.i32 %134, 1
  %137 = extractvalue %dx.types.ResRet.i32 %134, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 1124, i32 %135, i32 %136, i32 %137, i32 undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %138 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 148, i32 undef)  ; BufferLoad(srv,index,wot)
  %139 = extractvalue %dx.types.ResRet.f32 %138, 0
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 1136, float %139, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %140 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 152, i32 undef)  ; BufferLoad(srv,index,wot)
  %141 = extractvalue %dx.types.ResRet.f32 %140, 0
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 1140, float %141, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 0, i32 84)  ; BufferLoad(srv,index,wot)
  %143 = extractvalue %dx.types.ResRet.i32 %142, 0
  %144 = icmp eq i32 %143, -1
  br i1 %144, label %470, label %145, !dx.controlflow.hints !30

; <label>:145                                     ; preds = %97
  %146 = shl i32 %143, 2
  %147 = mul i32 %143, 24
  %148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %147, i32 undef)  ; BufferLoad(srv,index,wot)
  %149 = extractvalue %dx.types.ResRet.i32 %148, 0
  %150 = extractvalue %dx.types.ResRet.i32 %148, 1
  %151 = extractvalue %dx.types.ResRet.i32 %148, 2
  %152 = add i32 %147, 12
  %153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %152, i32 undef)  ; BufferLoad(srv,index,wot)
  %154 = extractvalue %dx.types.ResRet.i32 %153, 0
  %155 = extractvalue %dx.types.ResRet.i32 %153, 1
  %156 = extractvalue %dx.types.ResRet.i32 %153, 2
  %157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %146, i32 undef)  ; BufferLoad(srv,index,wot)
  %158 = extractvalue %dx.types.ResRet.i32 %157, 0
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 156, i32 %158, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %159 = xor i32 %149, -1
  %160 = xor i32 %150, -1
  %161 = xor i32 %151, -1
  %162 = bitcast i32 %159 to float
  %163 = bitcast i32 %160 to float
  %164 = bitcast i32 %161 to float
  %165 = fadd fast float %162, -1.310720e+05
  %166 = fadd fast float %163, -1.310720e+05
  %167 = fadd fast float %164, -1.310720e+05
  %168 = bitcast i32 %154 to float
  %169 = bitcast i32 %155 to float
  %170 = bitcast i32 %156 to float
  %171 = fadd fast float %168, -1.310720e+05
  %172 = fadd fast float %169, -1.310720e+05
  %173 = fadd fast float %170, -1.310720e+05
  %174 = fadd fast float %171, %165
  %175 = fadd fast float %172, %166
  %176 = fadd fast float %173, %167
  %177 = fmul fast float %174, 5.000000e-01
  %178 = fmul fast float %175, 5.000000e-01
  %179 = fmul fast float %176, 5.000000e-01
  %180 = fsub fast float %177, %165
  %181 = fsub fast float %178, %166
  %182 = fsub fast float %179, %167
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 104, float %165, float %166, float %167, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 116, float %171, float %172, float %173, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %184 = extractvalue %dx.types.CBufRet.f32 %183, 0
  %185 = extractvalue %dx.types.CBufRet.f32 %183, 1
  %186 = extractvalue %dx.types.CBufRet.f32 %183, 2
  %187 = extractvalue %dx.types.CBufRet.f32 %183, 3
  %188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %189 = extractvalue %dx.types.CBufRet.f32 %188, 0
  %190 = extractvalue %dx.types.CBufRet.f32 %188, 1
  %191 = extractvalue %dx.types.CBufRet.f32 %188, 2
  %192 = extractvalue %dx.types.CBufRet.f32 %188, 3
  %193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %194 = extractvalue %dx.types.CBufRet.f32 %193, 0
  %195 = extractvalue %dx.types.CBufRet.f32 %193, 1
  %196 = extractvalue %dx.types.CBufRet.f32 %193, 2
  %197 = extractvalue %dx.types.CBufRet.f32 %193, 3
  %198 = fmul fast float %184, %165
  %199 = call float @dx.op.tertiary.f32(i32 46, float %166, float %185, float %198)  ; FMad(a,b,c)
  %200 = call float @dx.op.tertiary.f32(i32 46, float %167, float %186, float %199)  ; FMad(a,b,c)
  %201 = fadd fast float %200, %187
  %202 = fmul fast float %189, %165
  %203 = call float @dx.op.tertiary.f32(i32 46, float %166, float %190, float %202)  ; FMad(a,b,c)
  %204 = call float @dx.op.tertiary.f32(i32 46, float %167, float %191, float %203)  ; FMad(a,b,c)
  %205 = fadd fast float %204, %192
  %206 = fmul fast float %194, %165
  %207 = call float @dx.op.tertiary.f32(i32 46, float %166, float %195, float %206)  ; FMad(a,b,c)
  %208 = call float @dx.op.tertiary.f32(i32 46, float %167, float %196, float %207)  ; FMad(a,b,c)
  %209 = fadd fast float %208, %197
  %210 = fmul fast float %180, 2.000000e+00
  %211 = fmul fast float %181, 2.000000e+00
  %212 = fmul fast float %182, 2.000000e+00
  %213 = fmul fast float %184, %210
  %214 = fmul fast float %189, %210
  %215 = fmul fast float %194, %210
  %216 = fmul fast float %185, %211
  %217 = fmul fast float %190, %211
  %218 = fmul fast float %195, %211
  %219 = fmul fast float %186, %212
  %220 = fmul fast float %191, %212
  %221 = fmul fast float %196, %212
  %222 = getelementptr [8 x float], [8 x float]* %15, i32 0, i32 0
  %223 = getelementptr [8 x float], [8 x float]* %16, i32 0, i32 0
  %224 = getelementptr [8 x float], [8 x float]* %17, i32 0, i32 0
  store float 0.000000e+00, float* %222, align 4
  store float 0.000000e+00, float* %223, align 4
  store float 0.000000e+00, float* %224, align 4
  %225 = getelementptr [8 x float], [8 x float]* %15, i32 0, i32 1
  %226 = getelementptr [8 x float], [8 x float]* %16, i32 0, i32 1
  %227 = getelementptr [8 x float], [8 x float]* %17, i32 0, i32 1
  store float %213, float* %225, align 4
  store float %214, float* %226, align 4
  store float %215, float* %227, align 4
  %228 = getelementptr [8 x float], [8 x float]* %15, i32 0, i32 2
  %229 = getelementptr [8 x float], [8 x float]* %16, i32 0, i32 2
  %230 = getelementptr [8 x float], [8 x float]* %17, i32 0, i32 2
  store float %216, float* %228, align 4
  store float %217, float* %229, align 4
  store float %218, float* %230, align 4
  %231 = getelementptr [8 x float], [8 x float]* %15, i32 0, i32 3
  %232 = getelementptr [8 x float], [8 x float]* %16, i32 0, i32 3
  %233 = getelementptr [8 x float], [8 x float]* %17, i32 0, i32 3
  %234 = fsub fast float -0.000000e+00, %213
  %235 = fsub fast float -0.000000e+00, %214
  %236 = fsub fast float -0.000000e+00, %215
  store float %234, float* %231, align 4
  store float %235, float* %232, align 4
  store float %236, float* %233, align 4
  %237 = getelementptr [8 x float], [8 x float]* %15, i32 0, i32 4
  %238 = getelementptr [8 x float], [8 x float]* %16, i32 0, i32 4
  %239 = getelementptr [8 x float], [8 x float]* %17, i32 0, i32 4
  store float %219, float* %237, align 4
  store float %220, float* %238, align 4
  store float %221, float* %239, align 4
  %240 = getelementptr [8 x float], [8 x float]* %15, i32 0, i32 5
  %241 = getelementptr [8 x float], [8 x float]* %16, i32 0, i32 5
  %242 = getelementptr [8 x float], [8 x float]* %17, i32 0, i32 5
  store float %213, float* %240, align 4
  store float %214, float* %241, align 4
  store float %215, float* %242, align 4
  %243 = getelementptr [8 x float], [8 x float]* %15, i32 0, i32 6
  %244 = getelementptr [8 x float], [8 x float]* %16, i32 0, i32 6
  %245 = getelementptr [8 x float], [8 x float]* %17, i32 0, i32 6
  %246 = fsub fast float -0.000000e+00, %216
  %247 = fsub fast float -0.000000e+00, %217
  %248 = fsub fast float -0.000000e+00, %218
  store float %246, float* %243, align 4
  store float %247, float* %244, align 4
  store float %248, float* %245, align 4
  %249 = getelementptr [8 x float], [8 x float]* %15, i32 0, i32 7
  %250 = getelementptr [8 x float], [8 x float]* %16, i32 0, i32 7
  %251 = getelementptr [8 x float], [8 x float]* %17, i32 0, i32 7
  store float %234, float* %249, align 4
  store float %235, float* %250, align 4
  store float %236, float* %251, align 4
  br label %252

; <label>:252                                     ; preds = %286, %145
  %253 = phi float [ 0.000000e+00, %145 ], [ %292, %286 ]
  %254 = phi float [ 0.000000e+00, %145 ], [ %290, %286 ]
  %255 = phi float [ 0.000000e+00, %145 ], [ %288, %286 ]
  %256 = phi float [ %201, %145 ], [ %266, %286 ]
  %257 = phi float [ %205, %145 ], [ %267, %286 ]
  %258 = phi float [ %209, %145 ], [ %268, %286 ]
  %259 = phi float [ 9.999999e+06, %145 ], [ %280, %286 ]
  %260 = phi float [ 9.999999e+06, %145 ], [ %281, %286 ]
  %261 = phi float [ -9.999999e+06, %145 ], [ %282, %286 ]
  %262 = phi float [ -9.999999e+06, %145 ], [ %283, %286 ]
  %263 = phi float [ 9.999999e+06, %145 ], [ %269, %286 ]
  %264 = phi float [ 0.000000e+00, %145 ], [ %270, %286 ]
  %265 = phi i32 [ 0, %145 ], [ %284, %286 ]
  %266 = fadd fast float %255, %256
  %267 = fadd fast float %254, %257
  %268 = fadd fast float %253, %258
  %269 = call float @dx.op.binary.f32(i32 36, float %263, float %268)  ; FMin(a,b)
  %270 = call float @dx.op.binary.f32(i32 35, float %264, float %268)  ; FMax(a,b)
  %271 = fdiv fast float 1.000000e+00, %268
  %272 = fmul fast float %266, 5.000000e-01
  %273 = fmul fast float %272, %271
  %274 = fmul fast float %267, 5.000000e-01
  %275 = fmul fast float %274, %271
  %276 = fadd fast float %273, 5.000000e-01
  %277 = fsub fast float 5.000000e-01, %275
  %278 = call float @dx.op.unary.f32(i32 7, float %276)  ; Saturate(value)
  %279 = call float @dx.op.unary.f32(i32 7, float %277)  ; Saturate(value)
  %280 = call float @dx.op.binary.f32(i32 36, float %259, float %278)  ; FMin(a,b)
  %281 = call float @dx.op.binary.f32(i32 36, float %260, float %279)  ; FMin(a,b)
  %282 = call float @dx.op.binary.f32(i32 35, float %261, float %278)  ; FMax(a,b)
  %283 = call float @dx.op.binary.f32(i32 35, float %262, float %279)  ; FMax(a,b)
  %284 = add nuw nsw i32 %265, 1
  %285 = icmp eq i32 %284, 8
  br i1 %285, label %293, label %286

; <label>:286                                     ; preds = %252
  %287 = getelementptr [8 x float], [8 x float]* %15, i32 0, i32 %284
  %288 = load float, float* %287, align 4
  %289 = getelementptr [8 x float], [8 x float]* %16, i32 0, i32 %284
  %290 = load float, float* %289, align 4
  %291 = getelementptr [8 x float], [8 x float]* %17, i32 0, i32 %284
  %292 = load float, float* %291, align 4
  br label %252

; <label>:293                                     ; preds = %252
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 128, float %280, float %281, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 136, float %282, float %283, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 144, float %269, float %270, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 0, i32 88)  ; BufferLoad(srv,index,wot)
  %295 = extractvalue %dx.types.ResRet.i32 %294, 0
  %296 = and i32 %295, -8
  %297 = icmp eq i32 %296, 16
  %298 = zext i1 %297 to i32
  %299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %300 = extractvalue %dx.types.CBufRet.f32 %299, 0
  %301 = extractvalue %dx.types.CBufRet.f32 %299, 1
  %302 = extractvalue %dx.types.CBufRet.f32 %299, 2
  %303 = extractvalue %dx.types.CBufRet.f32 %299, 3
  %304 = getelementptr inbounds [4 x float], [4 x float]* %13, i32 0, i32 0
  store float %300, float* %304, align 4
  %305 = getelementptr inbounds [4 x float], [4 x float]* %13, i32 0, i32 1
  store float %301, float* %305, align 4
  %306 = getelementptr inbounds [4 x float], [4 x float]* %13, i32 0, i32 2
  store float %302, float* %306, align 4
  %307 = getelementptr inbounds [4 x float], [4 x float]* %13, i32 0, i32 3
  store float %303, float* %307, align 4
  %308 = getelementptr inbounds [4 x float], [4 x float]* %13, i32 0, i32 %298
  %309 = load float, float* %308, align 4, !tbaa !31, !noalias !33
  %310 = fsub fast float %270, %269
  %311 = call float @dx.op.unary.f32(i32 6, float %310)  ; FAbs(value)
  %312 = uitofp i1 %297 to float
  %313 = fmul fast float %309, %312
  %314 = fmul fast float %313, %311
  %315 = select i1 %297, i32 3, i32 2
  %316 = getelementptr inbounds [4 x float], [4 x float]* %14, i32 0, i32 0
  store float %300, float* %316, align 4
  %317 = getelementptr inbounds [4 x float], [4 x float]* %14, i32 0, i32 1
  store float %301, float* %317, align 4
  %318 = getelementptr inbounds [4 x float], [4 x float]* %14, i32 0, i32 2
  store float %302, float* %318, align 4
  %319 = getelementptr inbounds [4 x float], [4 x float]* %14, i32 0, i32 3
  store float %303, float* %319, align 4
  %320 = getelementptr inbounds [4 x float], [4 x float]* %14, i32 0, i32 %315
  %321 = load float, float* %320, align 4, !tbaa !31, !noalias !33
  %322 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %323 = extractvalue %dx.types.CBufRet.i32 %322, 2
  %324 = extractvalue %dx.types.CBufRet.i32 %322, 0
  %325 = extractvalue %dx.types.CBufRet.i32 %322, 1
  %326 = fsub fast float %269, %314
  %327 = fsub fast float %282, %280
  %328 = fsub fast float %283, %281
  %329 = uitofp i32 %324 to float
  %330 = uitofp i32 %325 to float
  %331 = fmul fast float %329, %327
  %332 = fmul fast float %330, %328
  %333 = call float @dx.op.unary.f32(i32 28, float %331)  ; Round_pi(value)
  %334 = call float @dx.op.unary.f32(i32 28, float %332)  ; Round_pi(value)
  %335 = call float @dx.op.binary.f32(i32 36, float %333, float %334)  ; FMin(a,b)
  %336 = call float @dx.op.unary.f32(i32 23, float %335)  ; Log(value)
  %337 = call float @dx.op.unary.f32(i32 28, float %336)  ; Round_pi(value)
  %338 = fptosi float %337 to i32
  %339 = call i32 @dx.op.binary.i32(i32 37, i32 %338, i32 0)  ; IMax(a,b)
  %340 = call i32 @dx.op.binary.i32(i32 38, i32 %339, i32 %323)  ; IMin(a,b)
  %341 = and i32 %340, 31
  %342 = lshr i32 %324, %341
  %343 = lshr i32 %325, %341
  %344 = uitofp i32 %342 to float
  %345 = uitofp i32 %343 to float
  %346 = call float @dx.op.binary.f32(i32 35, float %344, float 1.000000e+00)  ; FMax(a,b)
  %347 = call float @dx.op.binary.f32(i32 35, float %345, float 1.000000e+00)  ; FMax(a,b)
  %348 = fdiv fast float 1.000000e+00, %346
  %349 = fdiv fast float 1.000000e+00, %347
  %350 = fmul fast float %346, %280
  %351 = fmul fast float %347, %281
  %352 = call float @dx.op.unary.f32(i32 27, float %350)  ; Round_ni(value)
  %353 = call float @dx.op.unary.f32(i32 27, float %351)  ; Round_ni(value)
  %354 = call float @dx.op.binary.f32(i32 35, float %352, float 0.000000e+00)  ; FMax(a,b)
  %355 = call float @dx.op.binary.f32(i32 35, float %353, float 0.000000e+00)  ; FMax(a,b)
  %356 = call float @dx.op.binary.f32(i32 36, float %354, float %346)  ; FMin(a,b)
  %357 = call float @dx.op.binary.f32(i32 36, float %355, float %347)  ; FMin(a,b)
  %358 = fmul fast float %346, %282
  %359 = fmul fast float %347, %283
  %360 = call float @dx.op.unary.f32(i32 28, float %358)  ; Round_pi(value)
  %361 = call float @dx.op.unary.f32(i32 28, float %359)  ; Round_pi(value)
  %362 = call float @dx.op.binary.f32(i32 35, float %360, float 0.000000e+00)  ; FMax(a,b)
  %363 = call float @dx.op.binary.f32(i32 35, float %361, float 0.000000e+00)  ; FMax(a,b)
  %364 = call float @dx.op.binary.f32(i32 36, float %362, float %346)  ; FMin(a,b)
  %365 = call float @dx.op.binary.f32(i32 36, float %363, float %347)  ; FMin(a,b)
  %366 = fadd fast float %356, 1.000000e+00
  %367 = fmul fast float %366, %348
  %368 = fmul fast float %348, 2.000000e+00
  %369 = fmul fast float %349, 2.000000e+00
  %370 = fsub fast float %364, %356
  %371 = fsub fast float %365, %357
  %372 = fmul fast float %370, 5.000000e-01
  %373 = fmul fast float %371, 5.000000e-01
  %374 = call float @dx.op.unary.f32(i32 28, float %372)  ; Round_pi(value)
  %375 = call float @dx.op.unary.f32(i32 28, float %373)  ; Round_pi(value)
  %376 = fptoui float %374 to i32
  %377 = fptoui float %375 to i32
  %378 = shl i32 1, %341
  %379 = add i32 %378, -1
  %380 = and i32 %379, %324
  %381 = icmp ne i32 %380, 0
  %382 = zext i1 %381 to i32
  %383 = add i32 %376, %382
  %384 = and i32 %379, %325
  %385 = icmp ne i32 %384, 0
  %386 = zext i1 %385 to i32
  %387 = add i32 %377, %386
  %388 = icmp eq i32 %387, 0
  br i1 %388, label %455, label %389

; <label>:389                                     ; preds = %293
  %390 = fadd fast float %357, 1.000000e+00
  %391 = fmul fast float %390, %349
  br label %392

; <label>:392                                     ; preds = %449, %389
  %393 = phi float [ %450, %449 ], [ 0.000000e+00, %389 ]
  %394 = phi float [ %451, %449 ], [ %391, %389 ]
  %395 = phi i32 [ %452, %449 ], [ 0, %389 ]
  %396 = icmp eq i32 %383, 0
  br i1 %396, label %449, label %397

; <label>:397                                     ; preds = %392
  br label %398

; <label>:398                                     ; preds = %398, %397
  %399 = phi float [ %444, %398 ], [ %393, %397 ]
  %400 = phi float [ %445, %398 ], [ %367, %397 ]
  %401 = phi i32 [ %446, %398 ], [ 0, %397 ]
  %402 = sitofp i32 %340 to float
  %403 = fmul fast float %348, 0xBFDFE00000000000
  %404 = fadd fast float %403, %400
  %405 = fmul fast float %349, 0x3FE0100000000000
  %406 = fadd fast float %405, %394
  %407 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %8, float %404, float %406, float undef, float undef, i32 0, i32 0, i32 undef, float %402)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %408 = extractvalue %dx.types.ResRet.f32 %407, 0
  %409 = fmul fast float %348, 0x3FE0100000000000
  %410 = fadd fast float %409, %400
  %411 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %8, float %410, float %406, float undef, float undef, i32 0, i32 0, i32 undef, float %402)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %412 = extractvalue %dx.types.ResRet.f32 %411, 0
  %413 = fmul fast float %349, 0xBFDFE00000000000
  %414 = fadd fast float %413, %394
  %415 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %8, float %410, float %414, float undef, float undef, i32 0, i32 0, i32 undef, float %402)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %416 = extractvalue %dx.types.ResRet.f32 %415, 0
  %417 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %8, float %404, float %414, float undef, float undef, i32 0, i32 0, i32 undef, float %402)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %418 = extractvalue %dx.types.ResRet.f32 %417, 0
  %419 = fcmp fast ogt float %408, -1.000000e+00
  %420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %421 = extractvalue %dx.types.CBufRet.f32 %420, 1
  %422 = select i1 %419, float %421, float 1.000000e+00
  %423 = fadd fast float %408, 1.000000e+00
  %424 = fmul fast float %422, %423
  %425 = call float @dx.op.unary.f32(i32 6, float %424)  ; FAbs(value)
  %426 = fcmp fast ogt float %412, -1.000000e+00
  %427 = select i1 %426, float %421, float 1.000000e+00
  %428 = fadd fast float %412, 1.000000e+00
  %429 = fmul fast float %427, %428
  %430 = call float @dx.op.unary.f32(i32 6, float %429)  ; FAbs(value)
  %431 = fcmp fast ogt float %416, -1.000000e+00
  %432 = select i1 %431, float %421, float 1.000000e+00
  %433 = fadd fast float %416, 1.000000e+00
  %434 = fmul fast float %432, %433
  %435 = call float @dx.op.unary.f32(i32 6, float %434)  ; FAbs(value)
  %436 = fcmp fast ogt float %418, -1.000000e+00
  %437 = select i1 %436, float %421, float 1.000000e+00
  %438 = fadd fast float %418, 1.000000e+00
  %439 = fmul fast float %437, %438
  %440 = call float @dx.op.unary.f32(i32 6, float %439)  ; FAbs(value)
  %441 = call float @dx.op.binary.f32(i32 35, float %430, float %435)  ; FMax(a,b)
  %442 = call float @dx.op.binary.f32(i32 35, float %425, float %441)  ; FMax(a,b)
  %443 = call float @dx.op.binary.f32(i32 35, float %442, float %440)  ; FMax(a,b)
  %444 = call float @dx.op.binary.f32(i32 35, float %443, float %399)  ; FMax(a,b)
  %445 = fadd fast float %400, %368
  %446 = add nuw i32 %401, 1
  %447 = icmp eq i32 %446, %383
  br i1 %447, label %448, label %398

; <label>:448                                     ; preds = %398
  br label %449

; <label>:449                                     ; preds = %448, %392
  %450 = phi float [ %393, %392 ], [ %444, %448 ]
  %451 = fadd fast float %394, %369
  %452 = add nuw i32 %395, 1
  %453 = icmp eq i32 %452, %387
  br i1 %453, label %454, label %392

; <label>:454                                     ; preds = %449
  br label %455

; <label>:455                                     ; preds = %454, %293
  %456 = phi float [ 0.000000e+00, %293 ], [ %450, %454 ]
  %457 = fcmp fast une float %326, 0.000000e+00
  %458 = bitcast float %326 to i32
  %459 = and i32 %458, 2139095040
  %460 = add nsw i32 %459, -1056964608
  %461 = ashr exact i32 %460, 23
  %462 = add nsw i32 %461, -10
  %463 = sitofp i32 %462 to float
  %464 = select i1 %457, float %463, float -1.000000e+01
  %465 = call float @dx.op.unary.f32(i32 21, float %464)  ; Exp(value)
  %466 = fmul fast float %465, %321
  %467 = fsub fast float %326, %466
  %468 = fcmp fast ogt float %456, %467
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 152, float %456, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %469 = zext i1 %468 to i32
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 160, i32 %469, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %471

; <label>:470                                     ; preds = %97
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 128, float 0.000000e+00, float 0.000000e+00, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 136, float 0.000000e+00, float 0.000000e+00, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 144, float 0.000000e+00, float 0.000000e+00, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 152, float -1.000000e+00, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 156, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 160, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %471

; <label>:471                                     ; preds = %470, %455
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #2

; Function Attrs: nounwind
declare void @dx.op.bufferStore.f32(i32, %dx.types.Handle, i32, i32, float, float, float, float, i8) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind }

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
!4 = !{!5, !13, !16, !20}
!5 = !{!6, !7, !8, !9, !10, !11}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 19, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 4, i32 1, i32 11, i32 0, null}
!8 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!9 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!10 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!11 = !{i32 5, %"class.Texture2D<float>"* undef, !"", i32 0, i32 3, i32 1, i32 2, i32 0, !12}
!12 = !{i32 0, i32 9}
!13 = !{!14}
!14 = !{i32 0, %"class.RWStructuredBuffer<GfxWaterReadBackInfo>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i1 false, i1 false, i1 false, !15}
!15 = !{i32 1, i32 1144}
!16 = !{!17, !18, !19}
!17 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!18 = !{i32 1, %waterGpuOcclusionCulling* undef, !"", i32 0, i32 1, i32 1, i32 32, null}
!19 = !{i32 2, %hostlayout.waterConstants* undef, !"", i32 0, i32 5, i32 1, i32 3376, null}
!20 = !{!21}
!21 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!22 = !{void ()* @cs_water_debug_update_readbackinfo, !"cs_water_debug_update_readbackinfo", null, !4, !23}
!23 = !{i32 0, i64 272, i32 4, !24}
!24 = !{i32 1, i32 1, i32 1}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = !{!27, !27, i64 0}
!27 = !{!"int", !28, i64 0}
!28 = !{!"omnipotent char", !29, i64 0}
!29 = !{!"Simple C/C++ TBAA"}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = !{!32, !32, i64 0}
!32 = !{!"float", !28, i64 0}
!33 = !{!34}
!34 = distinct !{!34, !35, !"\01?Water_Tile_OcclusionCull@@YA_NV?$vector@M$01@@00_NAIAM@Z: %outMaxDepthSample"}
!35 = distinct !{!35, !"\01?Water_Tile_OcclusionCull@@YA_NV?$vector@M$01@@00_NAIAM@Z"}

