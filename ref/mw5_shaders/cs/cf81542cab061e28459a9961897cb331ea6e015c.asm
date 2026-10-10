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
; shader hash: 30f6fe995381babcccd39aeb70d42278
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
;   [1424 x i8] (type annotation not present)
;
; }
;
; Resource bind info for 
; {
;
;   [76 x i8] (type annotation not present)
; }
;
; Resource bind info for 
; {
;
;   [8 x i8] (type annotation not present)
; }
;
; Resource bind info for 
; {
;
;   [4 x i8] (type annotation not present)
;
; }
;
; Resource bind info for 
; {
;
;   [48 x i8] (type annotation not present)
; }
;
; Resource bind info for 
; {
;
;   [72 x i8] (type annotation not present)
; }
;
; Resource bind info for 
; {
;
;   [4 x i8] (type annotation not present)
; }
;
; Resource bind info for 
; {
;
;   [64 x i8] (type annotation not present)
; }
;
; Resource bind info for 
; {
;
;   [4 x i8] (type annotation not present)
;
; }
;
; Resource bind info for 
; {
;
;   [4 x i8] (type annotation not present)
;
; }
;
; Resource bind info for 
; {
;
;   [4 x i8] (type annotation not present)
;
; }
;
; Resource bind info for 
; {
;
;   [4 x i8] (type annotation not present)
; }
;
; Resource bind info for 
; {
;
;   [4 x i8] (type annotation not present)
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb3     1
;                                   cbuffer      NA          NA     CB1            cb0     1
;                                   sampler      NA          NA      S0             s1     1
;                                   texture  struct         r/o      T0             t9     1
;                                   texture  struct         r/o      T1             t2     1
;                                   texture  struct         r/o      T2            t11     1
;                                   texture  struct         r/o      T3             t3     1
;                                   texture  struct         r/o      T4             t7     1
;                                   texture  struct         r/o      T5             t0     1
;                                   texture  struct         r/o      T6            t13     1
;                                   texture     f32          2d      T7            t12     1
;                                       UAV  struct         r/w      U0             u1     1
;                                       UAV  struct         r/w      U1             u0     1
;                                       UAV  struct         r/w      U2             u2     1
;                                       UAV  struct         r/w      U3             u3     1
;                                       UAV  struct         r/w      U4             u4     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%"class.StructuredBuffer<DecalVolumeMaterialGPU>" = type { %struct.DecalVolumeMaterialGPU }
%struct.DecalVolumeMaterialGPU = type { i32, i32, i32, i32, i32, i32, i32, <3 x float>, float, i32, i32, i32, float, float, i32, i32, i32 }
%"class.StructuredBuffer<DecalVolumeMaskGPU>" = type { %struct.DecalVolumeMaskGPU }
%struct.DecalVolumeMaskGPU = type { i32, i32 }
%"class.StructuredBuffer<unsigned int>" = type { i32 }
%"class.StructuredBuffer<GfxStaticDecalVolumePackedGPU>" = type { %struct.GfxStaticDecalVolumePackedGPU }
%struct.GfxStaticDecalVolumePackedGPU = type { <3 x float>, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%"class.StructuredBuffer<GfxImpactMarkDecalVolumeGPU>" = type { %struct.GfxImpactMarkDecalVolumeGPU }
%struct.GfxImpactMarkDecalVolumeGPU = type { %struct.DecalVolume, i32, i32, i32 }
%struct.DecalVolume = type { <3 x float>, [3 x <3 x float>], <3 x float> }
%"class.StructuredBuffer<StaticDecalVolumeMapIndex>" = type { %struct.StaticDecalVolumeMapIndex }
%struct.StaticDecalVolumeMapIndex = type { i32 }
%"class.StructuredBuffer<DecalVolumeLodState>" = type { %struct.DecalVolumeLodState }
%struct.DecalVolumeLodState = type { <3 x float>, float, <3 x float>, i32, <3 x float>, i32, <3 x float>, float }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.RWStructuredBuffer<unsigned int>" = type { i32 }
%"class.RWStructuredBuffer<DecalVolumeStreamingInfoGPU>" = type { %struct.DecalVolumeStreamingInfoGPU }
%struct.DecalVolumeStreamingInfoGPU = type { i32 }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%hostlayout.DecalVolumeCsConstants = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x i32>, i32, i32, i32, i32, i32, i32, float, i32, <3 x float>, i32, <4 x float>, float, float, float, float, i32, float, float, i32, %struct.StreamUpdateMultiViewGPU, i32, i32, i32, i32, [20 x <4 x float>], [20 x <4 x float>] }
%struct.StreamUpdateMultiViewGPU = type { [8 x <4 x float>], [8 x <4 x float>], [8 x <4 x float>], i32, i32, float, i32 }
%struct.SamplerState = type { i32 }

define void @cs_decal_volume_cull_occlusion() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %18 = alloca [3 x float], align 4
  %19 = alloca [3 x float], align 4
  %20 = alloca [8 x float], align 4
  %21 = alloca [8 x float], align 4
  %22 = alloca [8 x float], align 4
  %23 = alloca [8 x float], align 4
  %24 = alloca [8 x float], align 4
  %25 = alloca [8 x float], align 4
  %26 = alloca [8 x float], align 4
  %27 = alloca [8 x float], align 4
  %28 = alloca [8 x float], align 4
  %29 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 2, i32 0)  ; BufferLoad(srv,index,wot)
  %30 = extractvalue %dx.types.ResRet.i32 %29, 0
  %31 = call i32 @dx.op.binary.i32(i32 40, i32 %30, i32 8192)  ; UMin(a,b)
  %32 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %33 = extractvalue %dx.types.CBufRet.f32 %32, 1
  %34 = extractvalue %dx.types.CBufRet.f32 %32, 0
  %35 = icmp ult i32 %17, %31
  br i1 %35, label %36, label %534, !dx.controlflow.hints !35

; <label>:36                                      ; preds = %0
  %37 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %17, i32 0)  ; BufferLoad(srv,index,wot)
  %38 = extractvalue %dx.types.ResRet.f32 %37, 0
  %39 = extractvalue %dx.types.ResRet.f32 %37, 1
  %40 = extractvalue %dx.types.ResRet.f32 %37, 2
  %41 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %17, i32 12)  ; BufferLoad(srv,index,wot)
  %42 = extractvalue %dx.types.ResRet.i32 %41, 0
  %43 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %17, i32 16)  ; BufferLoad(srv,index,wot)
  %44 = extractvalue %dx.types.ResRet.i32 %43, 0
  %45 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %17, i32 36)  ; BufferLoad(srv,index,wot)
  %46 = extractvalue %dx.types.ResRet.i32 %45, 0
  %47 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %17, i32 40)  ; BufferLoad(srv,index,wot)
  %48 = extractvalue %dx.types.ResRet.i32 %47, 0
  %49 = lshr i32 %42, 30
  %50 = and i32 %42, 1023
  %51 = uitofp i32 %50 to float
  %52 = lshr i32 %42, 10
  %53 = and i32 %52, 1023
  %54 = uitofp i32 %53 to float
  %55 = lshr i32 %42, 20
  %56 = and i32 %55, 511
  %57 = uitofp i32 %56 to float
  %58 = fmul fast float %51, 0x3F56A64800000000
  %59 = fadd fast float %58, 0xBFE6A09E60000000
  %60 = fmul fast float %54, 0x3F56A64800000000
  %61 = fadd fast float %60, 0xBFE6A09E60000000
  %62 = fmul fast float %57, 0x3F66ABF460000000
  %63 = fadd fast float %62, 0xBFE6A09E60000000
  %64 = call float @dx.op.dot3.f32(i32 55, float %59, float %61, float %63, float %59, float %61, float %63)  ; Dot3(ax,ay,az,bx,by,bz)
  %65 = call float @dx.op.unary.f32(i32 7, float %64)  ; Saturate(value)
  %66 = fsub fast float 1.000000e+00, %65
  %67 = call float @dx.op.unary.f32(i32 24, float %66)  ; Sqrt(value)
  %68 = icmp eq i32 %49, 0
  br i1 %68, label %75, label %69, !dx.controlflow.hints !36

; <label>:69                                      ; preds = %36
  %70 = icmp eq i32 %49, 1
  br i1 %70, label %75, label %71, !dx.controlflow.hints !37

; <label>:71                                      ; preds = %69
  %72 = icmp eq i32 %49, 2
  %73 = select i1 %72, float %67, float %63
  %74 = select i1 %72, float %63, float %67
  br label %75

; <label>:75                                      ; preds = %71, %69, %36
  %76 = phi float [ %67, %36 ], [ %59, %69 ], [ %59, %71 ]
  %77 = phi float [ %59, %36 ], [ %67, %69 ], [ %61, %71 ]
  %78 = phi float [ %61, %36 ], [ %61, %69 ], [ %73, %71 ]
  %79 = phi float [ %63, %36 ], [ %63, %69 ], [ %74, %71 ]
  %80 = fmul fast float %77, %77
  %81 = fmul fast float %80, 2.000000e+00
  %82 = fsub fast float 1.000000e+00, %81
  %83 = fmul fast float %78, %78
  %84 = fmul fast float %83, 2.000000e+00
  %85 = fsub fast float %82, %84
  %86 = fmul fast float %76, 2.000000e+00
  %87 = fmul fast float %86, %77
  %88 = fmul fast float %78, 2.000000e+00
  %89 = fmul fast float %88, %79
  %90 = fsub fast float %87, %89
  %91 = fmul fast float %78, %76
  %92 = fmul fast float %79, %77
  %93 = fadd fast float %92, %91
  %94 = fmul fast float %93, 2.000000e+00
  %95 = fmul fast float %77, %76
  %96 = fmul fast float %79, %78
  %97 = fadd fast float %96, %95
  %98 = fmul fast float %76, %76
  %99 = fmul fast float %98, 2.000000e+00
  %100 = fsub fast float 1.000000e+00, %99
  %101 = fsub fast float %100, %84
  %102 = fmul fast float %77, 2.000000e+00
  %103 = fmul fast float %102, %78
  %104 = fmul fast float %86, %79
  %105 = fsub fast float %103, %104
  %106 = fmul fast float %86, %78
  %107 = fmul fast float %102, %79
  %108 = fsub fast float %106, %107
  %109 = fmul fast float %78, %77
  %110 = fmul fast float %79, %76
  %111 = fadd fast float %110, %109
  %112 = fmul fast float %111, 2.000000e+00
  %113 = fsub fast float %100, %81
  %114 = and i32 %48, 512
  %115 = icmp ne i32 %114, 0
  %116 = select i1 %115, float 1.000000e+00, float -1.000000e+00
  %117 = and i32 %48, 1024
  %118 = icmp ne i32 %117, 0
  %119 = select i1 %118, float -1.000000e+00, float 1.000000e+00
  %120 = fmul fast float %116, %119
  %121 = fmul fast float %85, %120
  %122 = fmul fast float %108, %120
  %123 = shl i32 %44, 4
  %124 = and i32 %123, 32752
  %125 = call float @dx.op.legacyF16ToF32(i32 131, i32 %124)  ; LegacyF16ToF32(value)
  %126 = lshr i32 %44, 7
  %127 = and i32 %126, 32752
  %128 = call float @dx.op.legacyF16ToF32(i32 131, i32 %127)  ; LegacyF16ToF32(value)
  %129 = lshr i32 %44, 22
  %130 = shl nuw nsw i32 %129, 5
  %131 = call float @dx.op.legacyF16ToF32(i32 131, i32 %130)  ; LegacyF16ToF32(value)
  %132 = and i32 %46, 2047
  %133 = lshr i32 %46, 11
  %134 = and i32 %133, 2047
  %135 = lshr i32 %46, 29
  %136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %132, i32 0)  ; BufferLoad(srv,index,wot)
  %137 = extractvalue %dx.types.ResRet.i32 %136, 0
  %138 = icmp eq i32 %134, 2047
  br i1 %138, label %145, label %139, !dx.controlflow.hints !38

; <label>:139                                     ; preds = %75
  %140 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %141 = extractvalue %dx.types.CBufRet.i32 %140, 1
  %142 = add i32 %141, %134
  %143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %142, i32 0)  ; BufferLoad(srv,index,wot)
  %144 = extractvalue %dx.types.ResRet.i32 %143, 0
  br label %145

; <label>:145                                     ; preds = %139, %75
  %146 = phi i32 [ %144, %139 ], [ 2047, %75 ]
  %147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %137, i32 24)  ; BufferLoad(srv,index,wot)
  %148 = extractvalue %dx.types.ResRet.i32 %147, 0
  %149 = icmp eq i32 %146, 2047
  br i1 %149, label %154, label %150, !dx.controlflow.hints !39

; <label>:150                                     ; preds = %145
  %151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %146, i32 4)  ; BufferLoad(srv,index,wot)
  %152 = extractvalue %dx.types.ResRet.i32 %151, 0
  %153 = and i32 %152, 1048576
  br label %154

; <label>:154                                     ; preds = %150, %145
  %155 = phi i32 [ %153, %150 ], [ 0, %145 ]
  %156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %157 = extractvalue %dx.types.CBufRet.f32 %156, 0
  %158 = extractvalue %dx.types.CBufRet.f32 %156, 1
  %159 = extractvalue %dx.types.CBufRet.f32 %156, 2
  %160 = fmul fast float %157, %125
  %161 = fmul fast float %158, %128
  %162 = fmul fast float %159, %131
  %163 = fmul fast float %121, %160
  %164 = fmul fast float %120, 2.000000e+00
  %165 = fmul fast float %164, %97
  %166 = fmul fast float %165, %160
  %167 = fmul fast float %122, %160
  %168 = fmul fast float %161, %90
  %169 = fmul fast float %161, %101
  %170 = fmul fast float %112, %161
  %171 = fmul fast float %94, %162
  %172 = fmul fast float %162, %105
  %173 = fmul fast float %162, %113
  %174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %175 = extractvalue %dx.types.CBufRet.f32 %174, 0
  %176 = extractvalue %dx.types.CBufRet.f32 %174, 1
  %177 = extractvalue %dx.types.CBufRet.f32 %174, 2
  %178 = fsub fast float %38, %175
  %179 = fsub fast float %39, %176
  %180 = fsub fast float %40, %177
  %181 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %182 = extractvalue %dx.types.CBufRet.i32 %181, 0
  %183 = and i32 %182, 1
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %510, label %185, !dx.controlflow.hints !40

; <label>:185                                     ; preds = %154
  %186 = fsub fast float %178, %163
  %187 = fsub fast float %179, %166
  %188 = fsub fast float %180, %167
  %189 = fsub fast float %186, %168
  %190 = fsub fast float %187, %169
  %191 = fsub fast float %188, %170
  %192 = fadd fast float %189, %171
  %193 = fadd fast float %190, %172
  %194 = fadd fast float %191, %173
  %195 = fsub fast float %189, %171
  %196 = fsub fast float %190, %172
  %197 = fsub fast float %191, %173
  %198 = fadd fast float %178, %163
  %199 = fadd fast float %179, %166
  %200 = fadd fast float %180, %167
  %201 = fsub fast float %198, %168
  %202 = fsub fast float %199, %169
  %203 = fsub fast float %200, %170
  %204 = fsub fast float %201, %171
  %205 = fsub fast float %202, %172
  %206 = fsub fast float %203, %173
  %207 = fadd fast float %186, %168
  %208 = fadd fast float %187, %169
  %209 = fadd fast float %188, %170
  %210 = fsub fast float %207, %171
  %211 = fsub fast float %208, %172
  %212 = fsub fast float %209, %173
  %213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %214 = extractvalue %dx.types.CBufRet.f32 %213, 0
  %215 = extractvalue %dx.types.CBufRet.f32 %213, 1
  %216 = extractvalue %dx.types.CBufRet.f32 %213, 3
  %217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %218 = extractvalue %dx.types.CBufRet.f32 %217, 0
  %219 = extractvalue %dx.types.CBufRet.f32 %217, 1
  %220 = extractvalue %dx.types.CBufRet.f32 %217, 3
  %221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %222 = extractvalue %dx.types.CBufRet.f32 %221, 0
  %223 = extractvalue %dx.types.CBufRet.f32 %221, 1
  %224 = extractvalue %dx.types.CBufRet.f32 %221, 3
  %225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %226 = extractvalue %dx.types.CBufRet.f32 %225, 0
  %227 = extractvalue %dx.types.CBufRet.f32 %225, 1
  %228 = extractvalue %dx.types.CBufRet.f32 %225, 3
  %229 = fmul fast float %214, %192
  %230 = call float @dx.op.tertiary.f32(i32 46, float %218, float %193, float %229)  ; FMad(a,b,c)
  %231 = call float @dx.op.tertiary.f32(i32 46, float %222, float %194, float %230)  ; FMad(a,b,c)
  %232 = fadd fast float %231, %226
  %233 = fmul fast float %215, %192
  %234 = call float @dx.op.tertiary.f32(i32 46, float %219, float %193, float %233)  ; FMad(a,b,c)
  %235 = call float @dx.op.tertiary.f32(i32 46, float %223, float %194, float %234)  ; FMad(a,b,c)
  %236 = fadd fast float %235, %227
  %237 = fmul fast float %216, %192
  %238 = call float @dx.op.tertiary.f32(i32 46, float %220, float %193, float %237)  ; FMad(a,b,c)
  %239 = call float @dx.op.tertiary.f32(i32 46, float %224, float %194, float %238)  ; FMad(a,b,c)
  %240 = fadd fast float %239, %228
  %241 = fmul fast float %214, %195
  %242 = call float @dx.op.tertiary.f32(i32 46, float %218, float %196, float %241)  ; FMad(a,b,c)
  %243 = call float @dx.op.tertiary.f32(i32 46, float %222, float %197, float %242)  ; FMad(a,b,c)
  %244 = fadd fast float %243, %226
  %245 = fmul fast float %215, %195
  %246 = call float @dx.op.tertiary.f32(i32 46, float %219, float %196, float %245)  ; FMad(a,b,c)
  %247 = call float @dx.op.tertiary.f32(i32 46, float %223, float %197, float %246)  ; FMad(a,b,c)
  %248 = fadd fast float %247, %227
  %249 = fmul fast float %216, %195
  %250 = call float @dx.op.tertiary.f32(i32 46, float %220, float %196, float %249)  ; FMad(a,b,c)
  %251 = call float @dx.op.tertiary.f32(i32 46, float %224, float %197, float %250)  ; FMad(a,b,c)
  %252 = fadd fast float %251, %228
  %253 = fmul fast float %214, %204
  %254 = call float @dx.op.tertiary.f32(i32 46, float %218, float %205, float %253)  ; FMad(a,b,c)
  %255 = call float @dx.op.tertiary.f32(i32 46, float %222, float %206, float %254)  ; FMad(a,b,c)
  %256 = fadd fast float %255, %226
  %257 = fmul fast float %215, %204
  %258 = call float @dx.op.tertiary.f32(i32 46, float %219, float %205, float %257)  ; FMad(a,b,c)
  %259 = call float @dx.op.tertiary.f32(i32 46, float %223, float %206, float %258)  ; FMad(a,b,c)
  %260 = fadd fast float %259, %227
  %261 = fmul fast float %216, %204
  %262 = call float @dx.op.tertiary.f32(i32 46, float %220, float %205, float %261)  ; FMad(a,b,c)
  %263 = call float @dx.op.tertiary.f32(i32 46, float %224, float %206, float %262)  ; FMad(a,b,c)
  %264 = fadd fast float %263, %228
  %265 = fmul fast float %214, %210
  %266 = call float @dx.op.tertiary.f32(i32 46, float %218, float %211, float %265)  ; FMad(a,b,c)
  %267 = call float @dx.op.tertiary.f32(i32 46, float %222, float %212, float %266)  ; FMad(a,b,c)
  %268 = fadd fast float %267, %226
  %269 = fmul fast float %215, %210
  %270 = call float @dx.op.tertiary.f32(i32 46, float %219, float %211, float %269)  ; FMad(a,b,c)
  %271 = call float @dx.op.tertiary.f32(i32 46, float %223, float %212, float %270)  ; FMad(a,b,c)
  %272 = fadd fast float %271, %227
  %273 = fmul fast float %216, %210
  %274 = call float @dx.op.tertiary.f32(i32 46, float %220, float %211, float %273)  ; FMad(a,b,c)
  %275 = call float @dx.op.tertiary.f32(i32 46, float %224, float %212, float %274)  ; FMad(a,b,c)
  %276 = fadd fast float %275, %228
  %277 = fsub fast float %255, %243
  %278 = fsub fast float %259, %247
  %279 = fsub fast float %263, %251
  %280 = fsub fast float %267, %243
  %281 = fsub fast float %271, %247
  %282 = fsub fast float %275, %251
  %283 = fadd fast float %277, %232
  %284 = fadd fast float %278, %236
  %285 = fadd fast float %279, %240
  %286 = fadd fast float %280, %283
  %287 = fadd fast float %281, %284
  %288 = fadd fast float %282, %285
  %289 = fadd fast float %280, %232
  %290 = fadd fast float %281, %236
  %291 = fadd fast float %282, %240
  %292 = fadd fast float %280, %256
  %293 = fadd fast float %281, %260
  %294 = fadd fast float %282, %264
  %295 = getelementptr [8 x float], [8 x float]* %20, i32 0, i32 0
  %296 = getelementptr [8 x float], [8 x float]* %21, i32 0, i32 0
  %297 = getelementptr [8 x float], [8 x float]* %22, i32 0, i32 0
  store float %232, float* %295, align 4
  store float %236, float* %296, align 4
  store float %240, float* %297, align 4
  %298 = getelementptr [8 x float], [8 x float]* %20, i32 0, i32 1
  %299 = getelementptr [8 x float], [8 x float]* %21, i32 0, i32 1
  %300 = getelementptr [8 x float], [8 x float]* %22, i32 0, i32 1
  store float %283, float* %298, align 4
  store float %284, float* %299, align 4
  store float %285, float* %300, align 4
  %301 = getelementptr [8 x float], [8 x float]* %20, i32 0, i32 2
  %302 = getelementptr [8 x float], [8 x float]* %21, i32 0, i32 2
  %303 = getelementptr [8 x float], [8 x float]* %22, i32 0, i32 2
  store float %286, float* %301, align 4
  store float %287, float* %302, align 4
  store float %288, float* %303, align 4
  %304 = getelementptr [8 x float], [8 x float]* %20, i32 0, i32 3
  %305 = getelementptr [8 x float], [8 x float]* %21, i32 0, i32 3
  %306 = getelementptr [8 x float], [8 x float]* %22, i32 0, i32 3
  store float %289, float* %304, align 4
  store float %290, float* %305, align 4
  store float %291, float* %306, align 4
  %307 = getelementptr [8 x float], [8 x float]* %20, i32 0, i32 4
  %308 = getelementptr [8 x float], [8 x float]* %21, i32 0, i32 4
  %309 = getelementptr [8 x float], [8 x float]* %22, i32 0, i32 4
  store float %244, float* %307, align 4
  store float %248, float* %308, align 4
  store float %252, float* %309, align 4
  %310 = getelementptr [8 x float], [8 x float]* %20, i32 0, i32 5
  %311 = getelementptr [8 x float], [8 x float]* %21, i32 0, i32 5
  %312 = getelementptr [8 x float], [8 x float]* %22, i32 0, i32 5
  store float %256, float* %310, align 4
  store float %260, float* %311, align 4
  store float %264, float* %312, align 4
  %313 = getelementptr [8 x float], [8 x float]* %20, i32 0, i32 6
  %314 = getelementptr [8 x float], [8 x float]* %21, i32 0, i32 6
  %315 = getelementptr [8 x float], [8 x float]* %22, i32 0, i32 6
  store float %292, float* %313, align 4
  store float %293, float* %314, align 4
  store float %294, float* %315, align 4
  %316 = getelementptr [8 x float], [8 x float]* %20, i32 0, i32 7
  %317 = getelementptr [8 x float], [8 x float]* %21, i32 0, i32 7
  %318 = getelementptr [8 x float], [8 x float]* %22, i32 0, i32 7
  store float %268, float* %316, align 4
  store float %272, float* %317, align 4
  store float %276, float* %318, align 4
  %319 = fdiv fast float 1.000000e+00, %240
  %320 = fmul fast float %232, 5.000000e-01
  %321 = fmul fast float %320, %319
  %322 = fmul fast float %236, 5.000000e-01
  %323 = fmul fast float %322, %319
  %324 = fadd fast float %321, 5.000000e-01
  %325 = fsub fast float 5.000000e-01, %323
  %326 = call float @dx.op.unary.f32(i32 7, float %324)  ; Saturate(value)
  %327 = call float @dx.op.unary.f32(i32 7, float %325)  ; Saturate(value)
  br label %328

; <label>:328                                     ; preds = %354, %185
  %329 = phi float [ %285, %185 ], [ %360, %354 ]
  %330 = phi float [ %284, %185 ], [ %358, %354 ]
  %331 = phi float [ %283, %185 ], [ %356, %354 ]
  %332 = phi float [ %326, %185 ], [ %347, %354 ]
  %333 = phi float [ %327, %185 ], [ %348, %354 ]
  %334 = phi float [ %326, %185 ], [ %349, %354 ]
  %335 = phi float [ %327, %185 ], [ %350, %354 ]
  %336 = phi float [ %240, %185 ], [ %351, %354 ]
  %337 = phi i32 [ 1, %185 ], [ %352, %354 ]
  %338 = fdiv fast float 1.000000e+00, %329
  %339 = fmul fast float %331, 5.000000e-01
  %340 = fmul fast float %339, %338
  %341 = fmul fast float %330, 5.000000e-01
  %342 = fmul fast float %341, %338
  %343 = fadd fast float %340, 5.000000e-01
  %344 = fsub fast float 5.000000e-01, %342
  %345 = call float @dx.op.unary.f32(i32 7, float %343)  ; Saturate(value)
  %346 = call float @dx.op.unary.f32(i32 7, float %344)  ; Saturate(value)
  %347 = call float @dx.op.binary.f32(i32 36, float %345, float %332)  ; FMin(a,b)
  %348 = call float @dx.op.binary.f32(i32 36, float %346, float %333)  ; FMin(a,b)
  %349 = call float @dx.op.binary.f32(i32 35, float %345, float %334)  ; FMax(a,b)
  %350 = call float @dx.op.binary.f32(i32 35, float %346, float %335)  ; FMax(a,b)
  %351 = call float @dx.op.binary.f32(i32 36, float %336, float %329)  ; FMin(a,b)
  %352 = add nuw nsw i32 %337, 1
  %353 = icmp eq i32 %352, 8
  br i1 %353, label %361, label %354

; <label>:354                                     ; preds = %328
  %355 = getelementptr [8 x float], [8 x float]* %20, i32 0, i32 %352
  %356 = load float, float* %355, align 4
  %357 = getelementptr [8 x float], [8 x float]* %21, i32 0, i32 %352
  %358 = load float, float* %357, align 4
  %359 = getelementptr [8 x float], [8 x float]* %22, i32 0, i32 %352
  %360 = load float, float* %359, align 4
  br label %328

; <label>:361                                     ; preds = %328
  %362 = and i32 %182, 2
  %363 = icmp ne i32 %362, 0
  %364 = extractvalue %dx.types.CBufRet.i32 %181, 3
  %365 = extractvalue %dx.types.CBufRet.i32 %181, 1
  %366 = extractvalue %dx.types.CBufRet.i32 %181, 2
  %367 = fsub fast float %349, %347
  %368 = fsub fast float %350, %348
  %369 = uitofp i32 %365 to float
  %370 = uitofp i32 %366 to float
  %371 = fmul fast float %369, %367
  %372 = fmul fast float %370, %368
  %373 = call float @dx.op.unary.f32(i32 28, float %371)  ; Round_pi(value)
  %374 = call float @dx.op.unary.f32(i32 28, float %372)  ; Round_pi(value)
  %375 = call float @dx.op.binary.f32(i32 36, float %373, float %374)  ; FMin(a,b)
  %376 = call float @dx.op.binary.f32(i32 35, float %373, float %374)  ; FMax(a,b)
  %377 = select i1 %363, float %375, float %376
  %378 = call float @dx.op.unary.f32(i32 23, float %377)  ; Log(value)
  %379 = call float @dx.op.unary.f32(i32 28, float %378)  ; Round_pi(value)
  %380 = fptosi float %379 to i32
  %381 = call i32 @dx.op.binary.i32(i32 37, i32 %380, i32 0)  ; IMax(a,b)
  %382 = call i32 @dx.op.binary.i32(i32 38, i32 %381, i32 %364)  ; IMin(a,b)
  %383 = and i32 %382, 31
  %384 = lshr i32 %365, %383
  %385 = lshr i32 %366, %383
  %386 = uitofp i32 %384 to float
  %387 = uitofp i32 %385 to float
  %388 = call float @dx.op.binary.f32(i32 35, float %386, float 1.000000e+00)  ; FMax(a,b)
  %389 = call float @dx.op.binary.f32(i32 35, float %387, float 1.000000e+00)  ; FMax(a,b)
  %390 = fdiv fast float 1.000000e+00, %388
  %391 = fdiv fast float 1.000000e+00, %389
  %392 = fmul fast float %388, %347
  %393 = fmul fast float %389, %348
  %394 = call float @dx.op.unary.f32(i32 27, float %392)  ; Round_ni(value)
  %395 = call float @dx.op.unary.f32(i32 27, float %393)  ; Round_ni(value)
  %396 = call float @dx.op.binary.f32(i32 35, float %394, float 0.000000e+00)  ; FMax(a,b)
  %397 = call float @dx.op.binary.f32(i32 35, float %395, float 0.000000e+00)  ; FMax(a,b)
  %398 = call float @dx.op.binary.f32(i32 36, float %396, float %388)  ; FMin(a,b)
  %399 = call float @dx.op.binary.f32(i32 36, float %397, float %389)  ; FMin(a,b)
  %400 = fmul fast float %388, %349
  %401 = fmul fast float %389, %350
  %402 = call float @dx.op.unary.f32(i32 28, float %400)  ; Round_pi(value)
  %403 = call float @dx.op.unary.f32(i32 28, float %401)  ; Round_pi(value)
  %404 = call float @dx.op.binary.f32(i32 35, float %402, float 0.000000e+00)  ; FMax(a,b)
  %405 = call float @dx.op.binary.f32(i32 35, float %403, float 0.000000e+00)  ; FMax(a,b)
  %406 = call float @dx.op.binary.f32(i32 36, float %404, float %388)  ; FMin(a,b)
  %407 = call float @dx.op.binary.f32(i32 36, float %405, float %389)  ; FMin(a,b)
  %408 = fadd fast float %398, 1.000000e+00
  %409 = fmul fast float %408, %390
  %410 = fmul fast float %390, 2.000000e+00
  %411 = fmul fast float %391, 2.000000e+00
  %412 = fsub fast float %406, %398
  %413 = fsub fast float %407, %399
  %414 = fmul fast float %412, 5.000000e-01
  %415 = fmul fast float %413, 5.000000e-01
  %416 = call float @dx.op.unary.f32(i32 28, float %414)  ; Round_pi(value)
  %417 = call float @dx.op.unary.f32(i32 28, float %415)  ; Round_pi(value)
  %418 = fptoui float %416 to i32
  %419 = fptoui float %417 to i32
  %420 = shl i32 1, %383
  %421 = add i32 %420, -1
  %422 = and i32 %421, %365
  %423 = icmp ne i32 %422, 0
  %424 = zext i1 %423 to i32
  %425 = add i32 %418, %424
  %426 = and i32 %421, %366
  %427 = icmp ne i32 %426, 0
  %428 = zext i1 %427 to i32
  %429 = add i32 %419, %428
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %497, label %431

; <label>:431                                     ; preds = %361
  %432 = fadd fast float %399, 1.000000e+00
  %433 = fmul fast float %432, %391
  br label %434

; <label>:434                                     ; preds = %491, %431
  %435 = phi float [ %492, %491 ], [ 0.000000e+00, %431 ]
  %436 = phi float [ %493, %491 ], [ %433, %431 ]
  %437 = phi i32 [ %494, %491 ], [ 0, %431 ]
  %438 = icmp eq i32 %425, 0
  br i1 %438, label %491, label %439

; <label>:439                                     ; preds = %434
  br label %440

; <label>:440                                     ; preds = %440, %439
  %441 = phi float [ %486, %440 ], [ %435, %439 ]
  %442 = phi float [ %487, %440 ], [ %409, %439 ]
  %443 = phi i32 [ %488, %440 ], [ 0, %439 ]
  %444 = sitofp i32 %382 to float
  %445 = fmul fast float %390, 0xBFDFE00000000000
  %446 = fadd fast float %445, %442
  %447 = fmul fast float %391, 0x3FE0100000000000
  %448 = fadd fast float %447, %436
  %449 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %14, float %446, float %448, float undef, float undef, i32 0, i32 0, i32 undef, float %444)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %450 = extractvalue %dx.types.ResRet.f32 %449, 0
  %451 = fmul fast float %390, 0x3FE0100000000000
  %452 = fadd fast float %451, %442
  %453 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %14, float %452, float %448, float undef, float undef, i32 0, i32 0, i32 undef, float %444)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %454 = extractvalue %dx.types.ResRet.f32 %453, 0
  %455 = fmul fast float %391, 0xBFDFE00000000000
  %456 = fadd fast float %455, %436
  %457 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %14, float %452, float %456, float undef, float undef, i32 0, i32 0, i32 undef, float %444)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %458 = extractvalue %dx.types.ResRet.f32 %457, 0
  %459 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %14, float %446, float %456, float undef, float undef, i32 0, i32 0, i32 undef, float %444)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %460 = extractvalue %dx.types.ResRet.f32 %459, 0
  %461 = fcmp fast ogt float %450, -1.000000e+00
  %462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %463 = extractvalue %dx.types.CBufRet.f32 %462, 1
  %464 = select i1 %461, float %463, float 1.000000e+00
  %465 = fadd fast float %450, 1.000000e+00
  %466 = fmul fast float %464, %465
  %467 = call float @dx.op.unary.f32(i32 6, float %466)  ; FAbs(value)
  %468 = fcmp fast ogt float %454, -1.000000e+00
  %469 = select i1 %468, float %463, float 1.000000e+00
  %470 = fadd fast float %454, 1.000000e+00
  %471 = fmul fast float %469, %470
  %472 = call float @dx.op.unary.f32(i32 6, float %471)  ; FAbs(value)
  %473 = fcmp fast ogt float %458, -1.000000e+00
  %474 = select i1 %473, float %463, float 1.000000e+00
  %475 = fadd fast float %458, 1.000000e+00
  %476 = fmul fast float %474, %475
  %477 = call float @dx.op.unary.f32(i32 6, float %476)  ; FAbs(value)
  %478 = fcmp fast ogt float %460, -1.000000e+00
  %479 = select i1 %478, float %463, float 1.000000e+00
  %480 = fadd fast float %460, 1.000000e+00
  %481 = fmul fast float %479, %480
  %482 = call float @dx.op.unary.f32(i32 6, float %481)  ; FAbs(value)
  %483 = call float @dx.op.binary.f32(i32 35, float %472, float %477)  ; FMax(a,b)
  %484 = call float @dx.op.binary.f32(i32 35, float %467, float %483)  ; FMax(a,b)
  %485 = call float @dx.op.binary.f32(i32 35, float %484, float %482)  ; FMax(a,b)
  %486 = call float @dx.op.binary.f32(i32 35, float %485, float %441)  ; FMax(a,b)
  %487 = fadd fast float %442, %410
  %488 = add nuw i32 %443, 1
  %489 = icmp eq i32 %488, %425
  br i1 %489, label %490, label %440

; <label>:490                                     ; preds = %440
  br label %491

; <label>:491                                     ; preds = %490, %434
  %492 = phi float [ %435, %434 ], [ %486, %490 ]
  %493 = fadd fast float %436, %411
  %494 = add nuw i32 %437, 1
  %495 = icmp eq i32 %494, %429
  br i1 %495, label %496, label %434

; <label>:496                                     ; preds = %491
  br label %497

; <label>:497                                     ; preds = %496, %361
  %498 = phi float [ 0.000000e+00, %361 ], [ %492, %496 ]
  %499 = fcmp fast une float %351, 0.000000e+00
  %500 = bitcast float %351 to i32
  %501 = and i32 %500, 2139095040
  %502 = add nsw i32 %501, -1056964608
  %503 = ashr exact i32 %502, 23
  %504 = add nsw i32 %503, -10
  %505 = sitofp i32 %504 to float
  %506 = select i1 %499, float %505, float -1.000000e+01
  %507 = call float @dx.op.unary.f32(i32 21, float %506)  ; Exp(value)
  %508 = fsub fast float %351, %507
  %509 = fcmp ule float %498, %508
  br label %510

; <label>:510                                     ; preds = %497, %154
  %511 = phi i1 [ %509, %497 ], [ false, %154 ]
  br i1 %511, label %1074, label %512, !dx.controlflow.hints !41

; <label>:512                                     ; preds = %510
  %513 = and i32 %148, 196608
  %514 = or i32 %155, %513
  %515 = icmp eq i32 %514, 0
  br i1 %515, label %524, label %516, !dx.controlflow.hints !42

; <label>:516                                     ; preds = %512
  %517 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %518 = extractvalue %dx.types.CBufRet.i32 %517, 1
  %519 = icmp eq i32 %518, 0
  br i1 %519, label %520, label %1074, !dx.controlflow.hints !43

; <label>:520                                     ; preds = %516
  %521 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 7, i32 %137, i32 0, i32 undef, i32 16776959)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br i1 %149, label %1074, label %522, !dx.controlflow.hints !44

; <label>:522                                     ; preds = %520
  %523 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 7, i32 %146, i32 0, i32 undef, i32 16776959)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1074

; <label>:524                                     ; preds = %512
  %525 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %5, i32 0, i32 0, i32 0, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %17, i32 0)  ; BufferLoad(srv,index,wot)
  %527 = extractvalue %dx.types.ResRet.i32 %526, 0
  %528 = and i32 %17, 8191
  %529 = shl i32 %527, 13
  %530 = and i32 %529, 2088960
  %531 = shl nuw nsw i32 %135, 21
  %532 = or i32 %531, %528
  %533 = or i32 %532, %530
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %4, i32 %525, i32 0, i32 %533, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1074

; <label>:534                                     ; preds = %0
  %535 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %536 = extractvalue %dx.types.CBufRet.i32 %535, 0
  %537 = add i32 %536, %31
  %538 = icmp ult i32 %17, %537
  br i1 %538, label %539, label %1074, !dx.controlflow.hints !45

; <label>:539                                     ; preds = %534
  %540 = sub i32 %17, %31
  %541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %540, i32 60)  ; BufferLoad(srv,index,wot)
  %542 = extractvalue %dx.types.ResRet.i32 %541, 0
  %543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %540, i32 68)  ; BufferLoad(srv,index,wot)
  %544 = extractvalue %dx.types.ResRet.i32 %543, 0
  %545 = lshr i32 %542, 6
  %546 = and i32 %544, 2047
  %547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %546, i32 24)  ; BufferLoad(srv,index,wot)
  %548 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %540, i32 48)  ; BufferLoad(srv,index,wot)
  %549 = extractvalue %dx.types.ResRet.f32 %548, 0
  %550 = extractvalue %dx.types.ResRet.f32 %548, 1
  %551 = extractvalue %dx.types.ResRet.f32 %548, 2
  %552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %553 = extractvalue %dx.types.CBufRet.f32 %552, 0
  %554 = extractvalue %dx.types.CBufRet.f32 %552, 1
  %555 = extractvalue %dx.types.CBufRet.f32 %552, 2
  %556 = fmul fast float %553, %549
  %557 = fmul fast float %554, %550
  %558 = fmul fast float %555, %551
  %559 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %540, i32 0)  ; BufferLoad(srv,index,wot)
  %560 = extractvalue %dx.types.ResRet.f32 %559, 0
  %561 = extractvalue %dx.types.ResRet.f32 %559, 1
  %562 = extractvalue %dx.types.ResRet.f32 %559, 2
  %563 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %540, i32 12)  ; BufferLoad(srv,index,wot)
  %564 = extractvalue %dx.types.ResRet.f32 %563, 0
  %565 = extractvalue %dx.types.ResRet.f32 %563, 1
  %566 = extractvalue %dx.types.ResRet.f32 %563, 2
  %567 = fmul fast float %564, %556
  %568 = fsub fast float -0.000000e+00, %567
  %569 = fmul fast float %565, %556
  %570 = fsub fast float -0.000000e+00, %569
  %571 = fmul fast float %566, %556
  %572 = fsub fast float -0.000000e+00, %571
  %573 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %540, i32 24)  ; BufferLoad(srv,index,wot)
  %574 = extractvalue %dx.types.ResRet.f32 %573, 0
  %575 = extractvalue %dx.types.ResRet.f32 %573, 1
  %576 = extractvalue %dx.types.ResRet.f32 %573, 2
  %577 = fmul fast float %574, %557
  %578 = fmul fast float %575, %557
  %579 = fmul fast float %576, %557
  %580 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %540, i32 36)  ; BufferLoad(srv,index,wot)
  %581 = extractvalue %dx.types.ResRet.f32 %580, 0
  %582 = extractvalue %dx.types.ResRet.f32 %580, 1
  %583 = extractvalue %dx.types.ResRet.f32 %580, 2
  %584 = fmul fast float %581, %558
  %585 = fmul fast float %582, %558
  %586 = fmul fast float %583, %558
  %587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %588 = extractvalue %dx.types.CBufRet.f32 %587, 0
  %589 = extractvalue %dx.types.CBufRet.f32 %587, 1
  %590 = extractvalue %dx.types.CBufRet.f32 %587, 2
  %591 = fsub fast float %560, %588
  %592 = fsub fast float %561, %589
  %593 = fsub fast float %562, %590
  %594 = fsub fast float %568, %577
  %595 = fadd fast float %594, %584
  %596 = fadd fast float %595, %591
  %597 = fsub fast float %570, %578
  %598 = fadd fast float %597, %585
  %599 = fadd fast float %598, %592
  %600 = fsub fast float %572, %579
  %601 = fadd fast float %600, %586
  %602 = fadd fast float %601, %593
  %603 = fsub fast float %594, %584
  %604 = fadd fast float %603, %591
  %605 = fsub fast float %597, %585
  %606 = fadd fast float %605, %592
  %607 = fsub fast float %600, %586
  %608 = fadd fast float %607, %593
  %609 = fsub fast float %567, %577
  %610 = fsub fast float %609, %584
  %611 = fadd fast float %610, %591
  %612 = fsub fast float %569, %578
  %613 = fsub fast float %612, %585
  %614 = fadd fast float %613, %592
  %615 = fsub fast float %571, %579
  %616 = fsub fast float %615, %586
  %617 = fadd fast float %616, %593
  %618 = fsub fast float %577, %567
  %619 = fsub fast float %618, %584
  %620 = fadd fast float %619, %591
  %621 = fsub fast float %578, %569
  %622 = fsub fast float %621, %585
  %623 = fadd fast float %622, %592
  %624 = fsub fast float %579, %571
  %625 = fsub fast float %624, %586
  %626 = fadd fast float %625, %593
  %627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %628 = extractvalue %dx.types.CBufRet.f32 %627, 0
  %629 = extractvalue %dx.types.CBufRet.f32 %627, 1
  %630 = extractvalue %dx.types.CBufRet.f32 %627, 3
  %631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %632 = extractvalue %dx.types.CBufRet.f32 %631, 0
  %633 = extractvalue %dx.types.CBufRet.f32 %631, 1
  %634 = extractvalue %dx.types.CBufRet.f32 %631, 3
  %635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %636 = extractvalue %dx.types.CBufRet.f32 %635, 0
  %637 = extractvalue %dx.types.CBufRet.f32 %635, 1
  %638 = extractvalue %dx.types.CBufRet.f32 %635, 3
  %639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %640 = extractvalue %dx.types.CBufRet.f32 %639, 0
  %641 = extractvalue %dx.types.CBufRet.f32 %639, 1
  %642 = extractvalue %dx.types.CBufRet.f32 %639, 3
  %643 = fmul fast float %596, %628
  %644 = call float @dx.op.tertiary.f32(i32 46, float %632, float %599, float %643)  ; FMad(a,b,c)
  %645 = call float @dx.op.tertiary.f32(i32 46, float %636, float %602, float %644)  ; FMad(a,b,c)
  %646 = fadd fast float %645, %640
  %647 = fmul fast float %596, %629
  %648 = call float @dx.op.tertiary.f32(i32 46, float %633, float %599, float %647)  ; FMad(a,b,c)
  %649 = call float @dx.op.tertiary.f32(i32 46, float %637, float %602, float %648)  ; FMad(a,b,c)
  %650 = fadd fast float %649, %641
  %651 = fmul fast float %596, %630
  %652 = call float @dx.op.tertiary.f32(i32 46, float %634, float %599, float %651)  ; FMad(a,b,c)
  %653 = call float @dx.op.tertiary.f32(i32 46, float %638, float %602, float %652)  ; FMad(a,b,c)
  %654 = fadd fast float %653, %642
  %655 = fmul fast float %628, %604
  %656 = call float @dx.op.tertiary.f32(i32 46, float %632, float %606, float %655)  ; FMad(a,b,c)
  %657 = call float @dx.op.tertiary.f32(i32 46, float %636, float %608, float %656)  ; FMad(a,b,c)
  %658 = fadd fast float %657, %640
  %659 = fmul fast float %629, %604
  %660 = call float @dx.op.tertiary.f32(i32 46, float %633, float %606, float %659)  ; FMad(a,b,c)
  %661 = call float @dx.op.tertiary.f32(i32 46, float %637, float %608, float %660)  ; FMad(a,b,c)
  %662 = fadd fast float %661, %641
  %663 = fmul fast float %630, %604
  %664 = call float @dx.op.tertiary.f32(i32 46, float %634, float %606, float %663)  ; FMad(a,b,c)
  %665 = call float @dx.op.tertiary.f32(i32 46, float %638, float %608, float %664)  ; FMad(a,b,c)
  %666 = fadd fast float %665, %642
  %667 = fmul fast float %628, %611
  %668 = call float @dx.op.tertiary.f32(i32 46, float %632, float %614, float %667)  ; FMad(a,b,c)
  %669 = call float @dx.op.tertiary.f32(i32 46, float %636, float %617, float %668)  ; FMad(a,b,c)
  %670 = fadd fast float %669, %640
  %671 = fmul fast float %629, %611
  %672 = call float @dx.op.tertiary.f32(i32 46, float %633, float %614, float %671)  ; FMad(a,b,c)
  %673 = call float @dx.op.tertiary.f32(i32 46, float %637, float %617, float %672)  ; FMad(a,b,c)
  %674 = fadd fast float %673, %641
  %675 = fmul fast float %630, %611
  %676 = call float @dx.op.tertiary.f32(i32 46, float %634, float %614, float %675)  ; FMad(a,b,c)
  %677 = call float @dx.op.tertiary.f32(i32 46, float %638, float %617, float %676)  ; FMad(a,b,c)
  %678 = fadd fast float %677, %642
  %679 = fmul fast float %628, %620
  %680 = call float @dx.op.tertiary.f32(i32 46, float %632, float %623, float %679)  ; FMad(a,b,c)
  %681 = call float @dx.op.tertiary.f32(i32 46, float %636, float %626, float %680)  ; FMad(a,b,c)
  %682 = fadd fast float %681, %640
  %683 = fmul fast float %629, %620
  %684 = call float @dx.op.tertiary.f32(i32 46, float %633, float %623, float %683)  ; FMad(a,b,c)
  %685 = call float @dx.op.tertiary.f32(i32 46, float %637, float %626, float %684)  ; FMad(a,b,c)
  %686 = fadd fast float %685, %641
  %687 = fmul fast float %630, %620
  %688 = call float @dx.op.tertiary.f32(i32 46, float %634, float %623, float %687)  ; FMad(a,b,c)
  %689 = call float @dx.op.tertiary.f32(i32 46, float %638, float %626, float %688)  ; FMad(a,b,c)
  %690 = fadd fast float %689, %642
  %691 = fsub fast float %669, %657
  %692 = fsub fast float %673, %661
  %693 = fsub fast float %677, %665
  %694 = fsub fast float %681, %657
  %695 = fsub fast float %685, %661
  %696 = fsub fast float %689, %665
  %697 = fadd fast float %691, %646
  %698 = fadd fast float %692, %650
  %699 = fadd fast float %693, %654
  %700 = fadd fast float %694, %697
  %701 = fadd fast float %695, %698
  %702 = fadd fast float %696, %699
  %703 = fadd fast float %694, %646
  %704 = fadd fast float %695, %650
  %705 = fadd fast float %696, %654
  %706 = fadd fast float %694, %670
  %707 = fadd fast float %695, %674
  %708 = fadd fast float %696, %678
  %709 = getelementptr [8 x float], [8 x float]* %26, i32 0, i32 0
  %710 = getelementptr [8 x float], [8 x float]* %27, i32 0, i32 0
  %711 = getelementptr [8 x float], [8 x float]* %28, i32 0, i32 0
  store float %646, float* %709, align 4
  store float %650, float* %710, align 4
  store float %654, float* %711, align 4
  %712 = getelementptr [8 x float], [8 x float]* %26, i32 0, i32 1
  %713 = getelementptr [8 x float], [8 x float]* %27, i32 0, i32 1
  %714 = getelementptr [8 x float], [8 x float]* %28, i32 0, i32 1
  store float %697, float* %712, align 4
  store float %698, float* %713, align 4
  store float %699, float* %714, align 4
  %715 = getelementptr [8 x float], [8 x float]* %26, i32 0, i32 2
  %716 = getelementptr [8 x float], [8 x float]* %27, i32 0, i32 2
  %717 = getelementptr [8 x float], [8 x float]* %28, i32 0, i32 2
  store float %700, float* %715, align 4
  store float %701, float* %716, align 4
  store float %702, float* %717, align 4
  %718 = getelementptr [8 x float], [8 x float]* %26, i32 0, i32 3
  %719 = getelementptr [8 x float], [8 x float]* %27, i32 0, i32 3
  %720 = getelementptr [8 x float], [8 x float]* %28, i32 0, i32 3
  store float %703, float* %718, align 4
  store float %704, float* %719, align 4
  store float %705, float* %720, align 4
  %721 = getelementptr [8 x float], [8 x float]* %26, i32 0, i32 4
  %722 = getelementptr [8 x float], [8 x float]* %27, i32 0, i32 4
  %723 = getelementptr [8 x float], [8 x float]* %28, i32 0, i32 4
  store float %658, float* %721, align 4
  store float %662, float* %722, align 4
  store float %666, float* %723, align 4
  %724 = getelementptr [8 x float], [8 x float]* %26, i32 0, i32 5
  %725 = getelementptr [8 x float], [8 x float]* %27, i32 0, i32 5
  %726 = getelementptr [8 x float], [8 x float]* %28, i32 0, i32 5
  store float %670, float* %724, align 4
  store float %674, float* %725, align 4
  store float %678, float* %726, align 4
  %727 = getelementptr [8 x float], [8 x float]* %26, i32 0, i32 6
  %728 = getelementptr [8 x float], [8 x float]* %27, i32 0, i32 6
  %729 = getelementptr [8 x float], [8 x float]* %28, i32 0, i32 6
  store float %706, float* %727, align 4
  store float %707, float* %728, align 4
  store float %708, float* %729, align 4
  %730 = getelementptr [8 x float], [8 x float]* %26, i32 0, i32 7
  %731 = getelementptr [8 x float], [8 x float]* %27, i32 0, i32 7
  %732 = getelementptr [8 x float], [8 x float]* %28, i32 0, i32 7
  store float %682, float* %730, align 4
  store float %686, float* %731, align 4
  store float %690, float* %732, align 4
  br label %733

; <label>:733                                     ; preds = %765, %539
  %734 = phi float [ %654, %539 ], [ %777, %765 ]
  %735 = phi float [ %650, %539 ], [ %775, %765 ]
  %736 = phi float [ %646, %539 ], [ %773, %765 ]
  %737 = phi i32 [ 1, %539 ], [ %771, %765 ]
  %738 = phi i32 [ 1, %539 ], [ %770, %765 ]
  %739 = phi i32 [ 1, %539 ], [ %769, %765 ]
  %740 = phi i32 [ 1, %539 ], [ %768, %765 ]
  %741 = phi i32 [ 1, %539 ], [ %767, %765 ]
  %742 = phi i32 [ 1, %539 ], [ %766, %765 ]
  %743 = phi i32 [ 0, %539 ], [ %763, %765 ]
  %744 = icmp ne i32 %737, 0
  %745 = fsub fast float -0.000000e+00, %734
  %746 = fcmp fast olt float %736, %745
  %747 = and i1 %744, %746
  %748 = icmp ne i32 %738, 0
  %749 = fcmp fast ogt float %736, %734
  %750 = and i1 %748, %749
  %751 = icmp ne i32 %739, 0
  %752 = fcmp fast olt float %735, %745
  %753 = and i1 %751, %752
  %754 = icmp ne i32 %740, 0
  %755 = fcmp fast ogt float %735, %734
  %756 = and i1 %754, %755
  %757 = icmp ne i32 %741, 0
  %758 = fcmp fast olt float %734, %34
  %759 = and i1 %757, %758
  %760 = icmp ne i32 %742, 0
  %761 = fcmp fast ogt float %734, %33
  %762 = and i1 %760, %761
  %763 = add nuw nsw i32 %743, 1
  %764 = icmp eq i32 %763, 8
  br i1 %764, label %778, label %765

; <label>:765                                     ; preds = %733
  %766 = zext i1 %762 to i32
  %767 = zext i1 %759 to i32
  %768 = zext i1 %756 to i32
  %769 = zext i1 %753 to i32
  %770 = zext i1 %750 to i32
  %771 = zext i1 %747 to i32
  %772 = getelementptr [8 x float], [8 x float]* %26, i32 0, i32 %763
  %773 = load float, float* %772, align 4
  %774 = getelementptr [8 x float], [8 x float]* %27, i32 0, i32 %763
  %775 = load float, float* %774, align 4
  %776 = getelementptr [8 x float], [8 x float]* %28, i32 0, i32 %763
  %777 = load float, float* %776, align 4
  br label %733

; <label>:778                                     ; preds = %733
  %779 = and i32 %545, 2
  %780 = extractvalue %dx.types.ResRet.i32 %547, 0
  %781 = or i1 %747, %750
  %782 = or i1 %753, %781
  %783 = or i1 %756, %782
  %784 = or i1 %759, %783
  %785 = or i1 %762, %784
  br i1 %785, label %1074, label %786, !dx.controlflow.hints !46

; <label>:786                                     ; preds = %778
  %787 = call float @dx.op.binary.f32(i32 35, float %557, float %558)  ; FMax(a,b)
  %788 = call float @dx.op.binary.f32(i32 35, float %556, float %787)  ; FMax(a,b)
  %789 = fmul fast float %34, %788
  %790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %791 = extractvalue %dx.types.CBufRet.f32 %790, 0
  %792 = extractvalue %dx.types.CBufRet.f32 %790, 1
  %793 = extractvalue %dx.types.CBufRet.f32 %790, 2
  %794 = call float @dx.op.dot3.f32(i32 55, float %791, float %792, float %793, float %591, float %592, float %593)  ; Dot3(ax,ay,az,bx,by,bz)
  %795 = call float @dx.op.binary.f32(i32 35, float %794, float 0x3F50624DE0000000)  ; FMax(a,b)
  %796 = fdiv fast float %789, %795
  %797 = call float @dx.op.unary.f32(i32 7, float %796)  ; Saturate(value)
  %798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %799 = extractvalue %dx.types.CBufRet.f32 %798, 0
  %800 = extractvalue %dx.types.CBufRet.f32 %798, 1
  %801 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 0, i32 16)  ; BufferLoad(srv,index,wot)
  %802 = extractvalue %dx.types.ResRet.f32 %801, 0
  %803 = extractvalue %dx.types.ResRet.f32 %801, 1
  %804 = extractvalue %dx.types.ResRet.f32 %801, 2
  %805 = getelementptr inbounds [3 x float], [3 x float]* %18, i32 0, i32 0
  store float %802, float* %805, align 4
  %806 = getelementptr inbounds [3 x float], [3 x float]* %18, i32 0, i32 1
  store float %803, float* %806, align 4
  %807 = getelementptr inbounds [3 x float], [3 x float]* %18, i32 0, i32 2
  store float %804, float* %807, align 4
  %808 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 0, i32 48)  ; BufferLoad(srv,index,wot)
  %809 = extractvalue %dx.types.ResRet.f32 %808, 0
  %810 = extractvalue %dx.types.ResRet.f32 %808, 1
  %811 = extractvalue %dx.types.ResRet.f32 %808, 2
  %812 = getelementptr inbounds [3 x float], [3 x float]* %19, i32 0, i32 0
  store float %809, float* %812, align 4
  %813 = getelementptr inbounds [3 x float], [3 x float]* %19, i32 0, i32 1
  store float %810, float* %813, align 4
  %814 = getelementptr inbounds [3 x float], [3 x float]* %19, i32 0, i32 2
  store float %811, float* %814, align 4
  %815 = getelementptr [3 x float], [3 x float]* %18, i32 0, i32 %779
  %816 = load float, float* %815, align 4, !tbaa !47
  %817 = fmul fast float %797, %797
  %818 = fmul fast float %817, 0x400921FB60000000
  %819 = fmul fast float %818, %799
  %820 = fmul fast float %819, %800
  %821 = fmul fast float %820, %816
  %822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %823 = extractvalue %dx.types.CBufRet.f32 %822, 0
  %824 = fcmp fast olt float %821, %823
  br i1 %824, label %1074, label %825, !dx.controlflow.hints !51

; <label>:825                                     ; preds = %786
  %826 = fmul fast float %591, %591
  %827 = fmul fast float %592, %592
  %828 = fadd fast float %826, %827
  %829 = fmul fast float %593, %593
  %830 = fadd fast float %828, %829
  %831 = call float @dx.op.unary.f32(i32 24, float %830)  ; Sqrt(value)
  %832 = fsub fast float %831, %787
  %833 = call float @dx.op.binary.f32(i32 35, float %832, float 0.000000e+00)  ; FMax(a,b)
  %834 = getelementptr [3 x float], [3 x float]* %19, i32 0, i32 %779
  %835 = load float, float* %834, align 4, !tbaa !47
  %836 = fmul fast float %835, %833
  %837 = extractvalue %dx.types.CBufRet.f32 %822, 1
  %838 = fmul fast float %836, %837
  %839 = extractvalue %dx.types.CBufRet.f32 %822, 2
  %840 = fadd fast float %838, %839
  %841 = call float @dx.op.unary.f32(i32 7, float %840)  ; Saturate(value)
  %842 = fcmp fast ugt float %841, 0.000000e+00
  br i1 %842, label %843, label %1074, !dx.controlflow.hints !52

; <label>:843                                     ; preds = %825
  %844 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %845 = extractvalue %dx.types.CBufRet.i32 %844, 0
  %846 = and i32 %845, 1
  %847 = icmp eq i32 %846, 0
  br i1 %847, label %1064, label %848, !dx.controlflow.hints !40

; <label>:848                                     ; preds = %843
  %849 = getelementptr [8 x float], [8 x float]* %23, i32 0, i32 0
  %850 = getelementptr [8 x float], [8 x float]* %24, i32 0, i32 0
  %851 = getelementptr [8 x float], [8 x float]* %25, i32 0, i32 0
  store float %646, float* %849, align 4
  store float %650, float* %850, align 4
  store float %654, float* %851, align 4
  %852 = getelementptr [8 x float], [8 x float]* %23, i32 0, i32 1
  %853 = getelementptr [8 x float], [8 x float]* %24, i32 0, i32 1
  %854 = getelementptr [8 x float], [8 x float]* %25, i32 0, i32 1
  store float %697, float* %852, align 4
  store float %698, float* %853, align 4
  store float %699, float* %854, align 4
  %855 = getelementptr [8 x float], [8 x float]* %23, i32 0, i32 2
  %856 = getelementptr [8 x float], [8 x float]* %24, i32 0, i32 2
  %857 = getelementptr [8 x float], [8 x float]* %25, i32 0, i32 2
  store float %700, float* %855, align 4
  store float %701, float* %856, align 4
  store float %702, float* %857, align 4
  %858 = getelementptr [8 x float], [8 x float]* %23, i32 0, i32 3
  %859 = getelementptr [8 x float], [8 x float]* %24, i32 0, i32 3
  %860 = getelementptr [8 x float], [8 x float]* %25, i32 0, i32 3
  store float %703, float* %858, align 4
  store float %704, float* %859, align 4
  store float %705, float* %860, align 4
  %861 = getelementptr [8 x float], [8 x float]* %23, i32 0, i32 4
  %862 = getelementptr [8 x float], [8 x float]* %24, i32 0, i32 4
  %863 = getelementptr [8 x float], [8 x float]* %25, i32 0, i32 4
  store float %658, float* %861, align 4
  store float %662, float* %862, align 4
  store float %666, float* %863, align 4
  %864 = getelementptr [8 x float], [8 x float]* %23, i32 0, i32 5
  %865 = getelementptr [8 x float], [8 x float]* %24, i32 0, i32 5
  %866 = getelementptr [8 x float], [8 x float]* %25, i32 0, i32 5
  store float %670, float* %864, align 4
  store float %674, float* %865, align 4
  store float %678, float* %866, align 4
  %867 = getelementptr [8 x float], [8 x float]* %23, i32 0, i32 6
  %868 = getelementptr [8 x float], [8 x float]* %24, i32 0, i32 6
  %869 = getelementptr [8 x float], [8 x float]* %25, i32 0, i32 6
  store float %706, float* %867, align 4
  store float %707, float* %868, align 4
  store float %708, float* %869, align 4
  %870 = getelementptr [8 x float], [8 x float]* %23, i32 0, i32 7
  %871 = getelementptr [8 x float], [8 x float]* %24, i32 0, i32 7
  %872 = getelementptr [8 x float], [8 x float]* %25, i32 0, i32 7
  store float %682, float* %870, align 4
  store float %686, float* %871, align 4
  store float %690, float* %872, align 4
  %873 = fdiv fast float 1.000000e+00, %654
  %874 = fmul fast float %646, 5.000000e-01
  %875 = fmul fast float %874, %873
  %876 = fmul fast float %650, 5.000000e-01
  %877 = fmul fast float %876, %873
  %878 = fadd fast float %875, 5.000000e-01
  %879 = fsub fast float 5.000000e-01, %877
  %880 = call float @dx.op.unary.f32(i32 7, float %878)  ; Saturate(value)
  %881 = call float @dx.op.unary.f32(i32 7, float %879)  ; Saturate(value)
  br label %882

; <label>:882                                     ; preds = %908, %848
  %883 = phi float [ %699, %848 ], [ %914, %908 ]
  %884 = phi float [ %698, %848 ], [ %912, %908 ]
  %885 = phi float [ %697, %848 ], [ %910, %908 ]
  %886 = phi float [ %880, %848 ], [ %901, %908 ]
  %887 = phi float [ %881, %848 ], [ %902, %908 ]
  %888 = phi float [ %880, %848 ], [ %903, %908 ]
  %889 = phi float [ %881, %848 ], [ %904, %908 ]
  %890 = phi float [ %654, %848 ], [ %905, %908 ]
  %891 = phi i32 [ 1, %848 ], [ %906, %908 ]
  %892 = fdiv fast float 1.000000e+00, %883
  %893 = fmul fast float %885, 5.000000e-01
  %894 = fmul fast float %893, %892
  %895 = fmul fast float %884, 5.000000e-01
  %896 = fmul fast float %895, %892
  %897 = fadd fast float %894, 5.000000e-01
  %898 = fsub fast float 5.000000e-01, %896
  %899 = call float @dx.op.unary.f32(i32 7, float %897)  ; Saturate(value)
  %900 = call float @dx.op.unary.f32(i32 7, float %898)  ; Saturate(value)
  %901 = call float @dx.op.binary.f32(i32 36, float %899, float %886)  ; FMin(a,b)
  %902 = call float @dx.op.binary.f32(i32 36, float %900, float %887)  ; FMin(a,b)
  %903 = call float @dx.op.binary.f32(i32 35, float %899, float %888)  ; FMax(a,b)
  %904 = call float @dx.op.binary.f32(i32 35, float %900, float %889)  ; FMax(a,b)
  %905 = call float @dx.op.binary.f32(i32 36, float %890, float %883)  ; FMin(a,b)
  %906 = add nuw nsw i32 %891, 1
  %907 = icmp eq i32 %906, 8
  br i1 %907, label %915, label %908

; <label>:908                                     ; preds = %882
  %909 = getelementptr [8 x float], [8 x float]* %23, i32 0, i32 %906
  %910 = load float, float* %909, align 4
  %911 = getelementptr [8 x float], [8 x float]* %24, i32 0, i32 %906
  %912 = load float, float* %911, align 4
  %913 = getelementptr [8 x float], [8 x float]* %25, i32 0, i32 %906
  %914 = load float, float* %913, align 4
  br label %882

; <label>:915                                     ; preds = %882
  %916 = and i32 %845, 2
  %917 = icmp ne i32 %916, 0
  %918 = extractvalue %dx.types.CBufRet.i32 %844, 3
  %919 = extractvalue %dx.types.CBufRet.i32 %844, 1
  %920 = extractvalue %dx.types.CBufRet.i32 %844, 2
  %921 = fsub fast float %903, %901
  %922 = fsub fast float %904, %902
  %923 = uitofp i32 %919 to float
  %924 = uitofp i32 %920 to float
  %925 = fmul fast float %923, %921
  %926 = fmul fast float %924, %922
  %927 = call float @dx.op.unary.f32(i32 28, float %925)  ; Round_pi(value)
  %928 = call float @dx.op.unary.f32(i32 28, float %926)  ; Round_pi(value)
  %929 = call float @dx.op.binary.f32(i32 36, float %927, float %928)  ; FMin(a,b)
  %930 = call float @dx.op.binary.f32(i32 35, float %927, float %928)  ; FMax(a,b)
  %931 = select i1 %917, float %929, float %930
  %932 = call float @dx.op.unary.f32(i32 23, float %931)  ; Log(value)
  %933 = call float @dx.op.unary.f32(i32 28, float %932)  ; Round_pi(value)
  %934 = fptosi float %933 to i32
  %935 = call i32 @dx.op.binary.i32(i32 37, i32 %934, i32 0)  ; IMax(a,b)
  %936 = call i32 @dx.op.binary.i32(i32 38, i32 %935, i32 %918)  ; IMin(a,b)
  %937 = and i32 %936, 31
  %938 = lshr i32 %919, %937
  %939 = lshr i32 %920, %937
  %940 = uitofp i32 %938 to float
  %941 = uitofp i32 %939 to float
  %942 = call float @dx.op.binary.f32(i32 35, float %940, float 1.000000e+00)  ; FMax(a,b)
  %943 = call float @dx.op.binary.f32(i32 35, float %941, float 1.000000e+00)  ; FMax(a,b)
  %944 = fdiv fast float 1.000000e+00, %942
  %945 = fdiv fast float 1.000000e+00, %943
  %946 = fmul fast float %942, %901
  %947 = fmul fast float %943, %902
  %948 = call float @dx.op.unary.f32(i32 27, float %946)  ; Round_ni(value)
  %949 = call float @dx.op.unary.f32(i32 27, float %947)  ; Round_ni(value)
  %950 = call float @dx.op.binary.f32(i32 35, float %948, float 0.000000e+00)  ; FMax(a,b)
  %951 = call float @dx.op.binary.f32(i32 35, float %949, float 0.000000e+00)  ; FMax(a,b)
  %952 = call float @dx.op.binary.f32(i32 36, float %950, float %942)  ; FMin(a,b)
  %953 = call float @dx.op.binary.f32(i32 36, float %951, float %943)  ; FMin(a,b)
  %954 = fmul fast float %942, %903
  %955 = fmul fast float %943, %904
  %956 = call float @dx.op.unary.f32(i32 28, float %954)  ; Round_pi(value)
  %957 = call float @dx.op.unary.f32(i32 28, float %955)  ; Round_pi(value)
  %958 = call float @dx.op.binary.f32(i32 35, float %956, float 0.000000e+00)  ; FMax(a,b)
  %959 = call float @dx.op.binary.f32(i32 35, float %957, float 0.000000e+00)  ; FMax(a,b)
  %960 = call float @dx.op.binary.f32(i32 36, float %958, float %942)  ; FMin(a,b)
  %961 = call float @dx.op.binary.f32(i32 36, float %959, float %943)  ; FMin(a,b)
  %962 = fadd fast float %952, 1.000000e+00
  %963 = fmul fast float %962, %944
  %964 = fmul fast float %944, 2.000000e+00
  %965 = fmul fast float %945, 2.000000e+00
  %966 = fsub fast float %960, %952
  %967 = fsub fast float %961, %953
  %968 = fmul fast float %966, 5.000000e-01
  %969 = fmul fast float %967, 5.000000e-01
  %970 = call float @dx.op.unary.f32(i32 28, float %968)  ; Round_pi(value)
  %971 = call float @dx.op.unary.f32(i32 28, float %969)  ; Round_pi(value)
  %972 = fptoui float %970 to i32
  %973 = fptoui float %971 to i32
  %974 = shl i32 1, %937
  %975 = add i32 %974, -1
  %976 = and i32 %975, %919
  %977 = icmp ne i32 %976, 0
  %978 = zext i1 %977 to i32
  %979 = add i32 %972, %978
  %980 = and i32 %975, %920
  %981 = icmp ne i32 %980, 0
  %982 = zext i1 %981 to i32
  %983 = add i32 %973, %982
  %984 = icmp eq i32 %983, 0
  br i1 %984, label %1051, label %985

; <label>:985                                     ; preds = %915
  %986 = fadd fast float %953, 1.000000e+00
  %987 = fmul fast float %986, %945
  br label %988

; <label>:988                                     ; preds = %1045, %985
  %989 = phi float [ %1046, %1045 ], [ 0.000000e+00, %985 ]
  %990 = phi float [ %1047, %1045 ], [ %987, %985 ]
  %991 = phi i32 [ %1048, %1045 ], [ 0, %985 ]
  %992 = icmp eq i32 %979, 0
  br i1 %992, label %1045, label %993

; <label>:993                                     ; preds = %988
  br label %994

; <label>:994                                     ; preds = %994, %993
  %995 = phi float [ %1040, %994 ], [ %989, %993 ]
  %996 = phi float [ %1041, %994 ], [ %963, %993 ]
  %997 = phi i32 [ %1042, %994 ], [ 0, %993 ]
  %998 = sitofp i32 %936 to float
  %999 = fmul fast float %944, 0xBFDFE00000000000
  %1000 = fadd fast float %999, %996
  %1001 = fmul fast float %945, 0x3FE0100000000000
  %1002 = fadd fast float %1001, %990
  %1003 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %14, float %1000, float %1002, float undef, float undef, i32 0, i32 0, i32 undef, float %998)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1004 = extractvalue %dx.types.ResRet.f32 %1003, 0
  %1005 = fmul fast float %944, 0x3FE0100000000000
  %1006 = fadd fast float %1005, %996
  %1007 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %14, float %1006, float %1002, float undef, float undef, i32 0, i32 0, i32 undef, float %998)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1008 = extractvalue %dx.types.ResRet.f32 %1007, 0
  %1009 = fmul fast float %945, 0xBFDFE00000000000
  %1010 = fadd fast float %1009, %990
  %1011 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %14, float %1006, float %1010, float undef, float undef, i32 0, i32 0, i32 undef, float %998)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1012 = extractvalue %dx.types.ResRet.f32 %1011, 0
  %1013 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %14, float %1000, float %1010, float undef, float undef, i32 0, i32 0, i32 undef, float %998)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1014 = extractvalue %dx.types.ResRet.f32 %1013, 0
  %1015 = fcmp fast ogt float %1004, -1.000000e+00
  %1016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1017 = extractvalue %dx.types.CBufRet.f32 %1016, 1
  %1018 = select i1 %1015, float %1017, float 1.000000e+00
  %1019 = fadd fast float %1004, 1.000000e+00
  %1020 = fmul fast float %1018, %1019
  %1021 = call float @dx.op.unary.f32(i32 6, float %1020)  ; FAbs(value)
  %1022 = fcmp fast ogt float %1008, -1.000000e+00
  %1023 = select i1 %1022, float %1017, float 1.000000e+00
  %1024 = fadd fast float %1008, 1.000000e+00
  %1025 = fmul fast float %1023, %1024
  %1026 = call float @dx.op.unary.f32(i32 6, float %1025)  ; FAbs(value)
  %1027 = fcmp fast ogt float %1012, -1.000000e+00
  %1028 = select i1 %1027, float %1017, float 1.000000e+00
  %1029 = fadd fast float %1012, 1.000000e+00
  %1030 = fmul fast float %1028, %1029
  %1031 = call float @dx.op.unary.f32(i32 6, float %1030)  ; FAbs(value)
  %1032 = fcmp fast ogt float %1014, -1.000000e+00
  %1033 = select i1 %1032, float %1017, float 1.000000e+00
  %1034 = fadd fast float %1014, 1.000000e+00
  %1035 = fmul fast float %1033, %1034
  %1036 = call float @dx.op.unary.f32(i32 6, float %1035)  ; FAbs(value)
  %1037 = call float @dx.op.binary.f32(i32 35, float %1026, float %1031)  ; FMax(a,b)
  %1038 = call float @dx.op.binary.f32(i32 35, float %1021, float %1037)  ; FMax(a,b)
  %1039 = call float @dx.op.binary.f32(i32 35, float %1038, float %1036)  ; FMax(a,b)
  %1040 = call float @dx.op.binary.f32(i32 35, float %1039, float %995)  ; FMax(a,b)
  %1041 = fadd fast float %996, %964
  %1042 = add nuw i32 %997, 1
  %1043 = icmp eq i32 %1042, %979
  br i1 %1043, label %1044, label %994

; <label>:1044                                    ; preds = %994
  br label %1045

; <label>:1045                                    ; preds = %1044, %988
  %1046 = phi float [ %989, %988 ], [ %1040, %1044 ]
  %1047 = fadd fast float %990, %965
  %1048 = add nuw i32 %991, 1
  %1049 = icmp eq i32 %1048, %983
  br i1 %1049, label %1050, label %988

; <label>:1050                                    ; preds = %1045
  br label %1051

; <label>:1051                                    ; preds = %1050, %915
  %1052 = phi float [ 0.000000e+00, %915 ], [ %1046, %1050 ]
  %1053 = fcmp fast une float %905, 0.000000e+00
  %1054 = bitcast float %905 to i32
  %1055 = and i32 %1054, 2139095040
  %1056 = add nsw i32 %1055, -1056964608
  %1057 = ashr exact i32 %1056, 23
  %1058 = add nsw i32 %1057, -10
  %1059 = sitofp i32 %1058 to float
  %1060 = select i1 %1053, float %1059, float -1.000000e+01
  %1061 = call float @dx.op.unary.f32(i32 21, float %1060)  ; Exp(value)
  %1062 = fsub fast float %905, %1061
  %1063 = fcmp ule float %1052, %1062
  br label %1064

; <label>:1064                                    ; preds = %1051, %843
  %1065 = phi i1 [ %1063, %1051 ], [ false, %843 ]
  br i1 %1065, label %1074, label %1066, !dx.controlflow.hints !53

; <label>:1066                                    ; preds = %1064
  %1067 = and i32 %780, 196608
  %1068 = icmp eq i32 %1067, 0
  br i1 %1068, label %1071, label %1069, !dx.controlflow.hints !54

; <label>:1069                                    ; preds = %1066
  %1070 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 7, i32 %546, i32 0, i32 undef, i32 16776959)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1074

; <label>:1071                                    ; preds = %1066
  %1072 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %5, i32 0, i32 1, i32 0, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1073 = and i32 %540, 8191
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %1072, i32 0, i32 %1073, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1074

; <label>:1074                                    ; preds = %1071, %1069, %1064, %825, %786, %778, %534, %524, %522, %520, %516, %510
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind
declare i32 @dx.op.atomicBinOp.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!32}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !21, !27, !30}
!5 = !{!6, !8, !10, !12, !14, !16, !17, !19}
!6 = !{i32 0, %"class.StructuredBuffer<DecalVolumeMaterialGPU>"* undef, !"", i32 0, i32 9, i32 1, i32 12, i32 0, !7}
!7 = !{i32 1, i32 76}
!8 = !{i32 1, %"class.StructuredBuffer<DecalVolumeMaskGPU>"* undef, !"", i32 0, i32 2, i32 1, i32 12, i32 0, !9}
!9 = !{i32 1, i32 8}
!10 = !{i32 2, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 11, i32 1, i32 12, i32 0, !11}
!11 = !{i32 1, i32 4}
!12 = !{i32 3, %"class.StructuredBuffer<GfxStaticDecalVolumePackedGPU>"* undef, !"", i32 0, i32 3, i32 1, i32 12, i32 0, !13}
!13 = !{i32 1, i32 48}
!14 = !{i32 4, %"class.StructuredBuffer<GfxImpactMarkDecalVolumeGPU>"* undef, !"", i32 0, i32 7, i32 1, i32 12, i32 0, !15}
!15 = !{i32 1, i32 72}
!16 = !{i32 5, %"class.StructuredBuffer<StaticDecalVolumeMapIndex>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i32 0, !11}
!17 = !{i32 6, %"class.StructuredBuffer<DecalVolumeLodState>"* undef, !"", i32 0, i32 13, i32 1, i32 12, i32 0, !18}
!18 = !{i32 1, i32 64}
!19 = !{i32 7, %"class.Texture2D<float>"* undef, !"", i32 0, i32 12, i32 1, i32 2, i32 0, !20}
!20 = !{i32 0, i32 9}
!21 = !{!22, !23, !24, !25, !26}
!22 = !{i32 0, %"class.RWStructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 12, i1 false, i1 false, i1 false, !11}
!23 = !{i32 1, %"class.RWStructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i1 false, i1 false, i1 false, !11}
!24 = !{i32 2, %"class.RWStructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 2, i32 1, i32 12, i1 false, i1 false, i1 false, !11}
!25 = !{i32 3, %"class.RWStructuredBuffer<DecalVolumeStreamingInfoGPU>"* undef, !"", i32 0, i32 3, i32 1, i32 12, i1 false, i1 false, i1 false, !11}
!26 = !{i32 4, %"class.RWStructuredBuffer<DecalVolumeStreamingInfoGPU>"* undef, !"", i32 0, i32 4, i32 1, i32 12, i1 false, i1 false, i1 false, !11}
!27 = !{!28, !29}
!28 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!29 = !{i32 1, %hostlayout.DecalVolumeCsConstants* undef, !"", i32 0, i32 0, i32 1, i32 1424, null}
!30 = !{!31}
!31 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!32 = !{void ()* @cs_decal_volume_cull_occlusion, !"cs_decal_volume_cull_occlusion", null, !4, !33}
!33 = !{i32 0, i64 272, i32 4, !34}
!34 = !{i32 64, i32 1, i32 1}
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
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = !{!48, !48, i64 0}
!48 = !{!"float", !49, i64 0}
!49 = !{!"omnipotent char", !50, i64 0}
!50 = !{!"Simple C/C++ TBAA"}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}

