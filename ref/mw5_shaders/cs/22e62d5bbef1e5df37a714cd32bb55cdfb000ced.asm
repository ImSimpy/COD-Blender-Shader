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
; shader hash: cca1cb4e5db0d828ce54108dd92f3224
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
;   [4 x i8] (type annotation not present)
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
;   [4 x i8] (type annotation not present)
;
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
;                                   texture  struct         r/o      T0             t1     1
;                                   texture  struct         r/o      T1             t9     1
;                                   texture  struct         r/o      T2             t2     1
;                                   texture  struct         r/o      T3            t11     1
;                                   texture  struct         r/o      T4             t3     1
;                                   texture  struct         r/o      T5             t6     1
;                                   texture  struct         r/o      T6             t7     1
;                                   texture  struct         r/o      T7             t8     1
;                                   texture     f32          2d      T8            t12     1
;                                       UAV  struct         r/w      U0             u3     1
;                                       UAV  struct         r/w      U1             u4     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%"class.StructuredBuffer<unsigned int>" = type { i32 }
%"class.StructuredBuffer<DecalVolumeMaterialGPU>" = type { %struct.DecalVolumeMaterialGPU }
%struct.DecalVolumeMaterialGPU = type { i32, i32, i32, i32, i32, i32, i32, <3 x float>, float, i32, i32, i32, float, float, i32, i32, i32 }
%"class.StructuredBuffer<DecalVolumeMaskGPU>" = type { %struct.DecalVolumeMaskGPU }
%struct.DecalVolumeMaskGPU = type { i32, i32 }
%"class.StructuredBuffer<GfxStaticDecalVolumePackedGPU>" = type { %struct.GfxStaticDecalVolumePackedGPU }
%struct.GfxStaticDecalVolumePackedGPU = type { <3 x float>, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%"class.StructuredBuffer<GfxImpactMarkDecalVolumeGPU>" = type { %struct.GfxImpactMarkDecalVolumeGPU }
%struct.GfxImpactMarkDecalVolumeGPU = type { %struct.DecalVolume, i32, i32, i32 }
%struct.DecalVolume = type { <3 x float>, [3 x <3 x float>], <3 x float> }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
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

define void @cs_decal_volume_gather_streaming_data() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %16 = alloca [8 x float], align 4
  %17 = alloca [8 x float], align 4
  %18 = alloca [8 x float], align 4
  %19 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %20 = extractvalue %dx.types.CBufRet.i32 %19, 1
  %21 = icmp eq i32 %20, 0
  %22 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 0, i32 0)  ; BufferLoad(srv,index,wot)
  %23 = extractvalue %dx.types.ResRet.i32 %22, 0
  %24 = select i1 %21, i32 %23, i32 0
  %25 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 1, i32 0)  ; BufferLoad(srv,index,wot)
  %26 = extractvalue %dx.types.ResRet.i32 %25, 0
  %27 = add i32 %26, %24
  %28 = icmp ult i32 %15, %27
  br i1 %28, label %29, label %677, !dx.controlflow.hints !32

; <label>:29                                      ; preds = %0
  %30 = icmp ult i32 %15, %24
  br i1 %30, label %31, label %152, !dx.controlflow.hints !33

; <label>:31                                      ; preds = %29
  %32 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %15, i32 0)  ; BufferLoad(srv,index,wot)
  %33 = extractvalue %dx.types.ResRet.i32 %32, 0
  %34 = and i32 %33, 8191
  %35 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %34, i32 0)  ; BufferLoad(srv,index,wot)
  %36 = extractvalue %dx.types.ResRet.f32 %35, 0
  %37 = extractvalue %dx.types.ResRet.f32 %35, 1
  %38 = extractvalue %dx.types.ResRet.f32 %35, 2
  %39 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %34, i32 12)  ; BufferLoad(srv,index,wot)
  %40 = extractvalue %dx.types.ResRet.i32 %39, 0
  %41 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %34, i32 16)  ; BufferLoad(srv,index,wot)
  %42 = extractvalue %dx.types.ResRet.i32 %41, 0
  %43 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %34, i32 24)  ; BufferLoad(srv,index,wot)
  %44 = extractvalue %dx.types.ResRet.i32 %43, 0
  %45 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %34, i32 28)  ; BufferLoad(srv,index,wot)
  %46 = extractvalue %dx.types.ResRet.i32 %45, 0
  %47 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %34, i32 36)  ; BufferLoad(srv,index,wot)
  %48 = extractvalue %dx.types.ResRet.i32 %47, 0
  %49 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %34, i32 40)  ; BufferLoad(srv,index,wot)
  %50 = extractvalue %dx.types.ResRet.i32 %49, 0
  %51 = lshr i32 %40, 30
  %52 = and i32 %40, 1023
  %53 = uitofp i32 %52 to float
  %54 = lshr i32 %40, 10
  %55 = and i32 %54, 1023
  %56 = uitofp i32 %55 to float
  %57 = lshr i32 %40, 20
  %58 = and i32 %57, 511
  %59 = uitofp i32 %58 to float
  %60 = fmul fast float %53, 0x3F56A64800000000
  %61 = fadd fast float %60, 0xBFE6A09E60000000
  %62 = fmul fast float %56, 0x3F56A64800000000
  %63 = fadd fast float %62, 0xBFE6A09E60000000
  %64 = fmul fast float %59, 0x3F66ABF460000000
  %65 = fadd fast float %64, 0xBFE6A09E60000000
  %66 = call float @dx.op.dot3.f32(i32 55, float %61, float %63, float %65, float %61, float %63, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %67 = call float @dx.op.unary.f32(i32 7, float %66)  ; Saturate(value)
  %68 = fsub fast float 1.000000e+00, %67
  %69 = call float @dx.op.unary.f32(i32 24, float %68)  ; Sqrt(value)
  %70 = icmp eq i32 %51, 0
  br i1 %70, label %77, label %71, !dx.controlflow.hints !34

; <label>:71                                      ; preds = %31
  %72 = icmp eq i32 %51, 1
  br i1 %72, label %77, label %73, !dx.controlflow.hints !35

; <label>:73                                      ; preds = %71
  %74 = icmp eq i32 %51, 2
  %75 = select i1 %74, float %69, float %65
  %76 = select i1 %74, float %65, float %69
  br label %77

; <label>:77                                      ; preds = %73, %71, %31
  %78 = phi float [ %69, %31 ], [ %61, %71 ], [ %61, %73 ]
  %79 = phi float [ %61, %31 ], [ %69, %71 ], [ %63, %73 ]
  %80 = phi float [ %63, %31 ], [ %63, %71 ], [ %75, %73 ]
  %81 = phi float [ %65, %31 ], [ %65, %71 ], [ %76, %73 ]
  %82 = fmul fast float %79, %79
  %83 = fmul fast float %82, 2.000000e+00
  %84 = fsub fast float 1.000000e+00, %83
  %85 = fmul fast float %80, %80
  %86 = fmul fast float %85, 2.000000e+00
  %87 = fsub fast float %84, %86
  %88 = fmul fast float %78, 2.000000e+00
  %89 = fmul fast float %88, %79
  %90 = fmul fast float %80, 2.000000e+00
  %91 = fmul fast float %90, %81
  %92 = fsub fast float %89, %91
  %93 = fmul fast float %80, %78
  %94 = fmul fast float %81, %79
  %95 = fadd fast float %94, %93
  %96 = fmul fast float %95, 2.000000e+00
  %97 = fmul fast float %79, %78
  %98 = fmul fast float %81, %80
  %99 = fadd fast float %98, %97
  %100 = fmul fast float %78, %78
  %101 = fmul fast float %100, 2.000000e+00
  %102 = fsub fast float 1.000000e+00, %101
  %103 = fsub fast float %102, %86
  %104 = fmul fast float %79, 2.000000e+00
  %105 = fmul fast float %104, %80
  %106 = fmul fast float %88, %81
  %107 = fsub fast float %105, %106
  %108 = fmul fast float %88, %80
  %109 = fmul fast float %104, %81
  %110 = fsub fast float %108, %109
  %111 = fmul fast float %80, %79
  %112 = fmul fast float %81, %78
  %113 = fadd fast float %112, %111
  %114 = fmul fast float %113, 2.000000e+00
  %115 = fsub fast float %102, %83
  %116 = and i32 %50, 512
  %117 = icmp ne i32 %116, 0
  %118 = select i1 %117, float 1.000000e+00, float -1.000000e+00
  %119 = and i32 %50, 1024
  %120 = icmp ne i32 %119, 0
  %121 = select i1 %120, float -1.000000e+00, float 1.000000e+00
  %122 = fmul fast float %118, %121
  %123 = fmul fast float %87, %122
  %124 = fmul fast float %122, 2.000000e+00
  %125 = fmul fast float %124, %99
  %126 = fmul fast float %110, %122
  %127 = shl i32 %42, 4
  %128 = and i32 %127, 32752
  %129 = call float @dx.op.legacyF16ToF32(i32 131, i32 %128)  ; LegacyF16ToF32(value)
  %130 = lshr i32 %42, 7
  %131 = and i32 %130, 32752
  %132 = call float @dx.op.legacyF16ToF32(i32 131, i32 %131)  ; LegacyF16ToF32(value)
  %133 = lshr i32 %42, 22
  %134 = shl nuw nsw i32 %133, 5
  %135 = call float @dx.op.legacyF16ToF32(i32 131, i32 %134)  ; LegacyF16ToF32(value)
  %136 = and i32 %44, 65535
  %137 = call float @dx.op.legacyF16ToF32(i32 131, i32 %136)  ; LegacyF16ToF32(value)
  %138 = lshr i32 %46, 16
  %139 = call float @dx.op.legacyF16ToF32(i32 131, i32 %138)  ; LegacyF16ToF32(value)
  %140 = and i32 %48, 2047
  %141 = lshr i32 %48, 11
  %142 = and i32 %141, 2047
  %143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %140, i32 0)  ; BufferLoad(srv,index,wot)
  %144 = extractvalue %dx.types.ResRet.i32 %143, 0
  %145 = icmp eq i32 %142, 2047
  br i1 %145, label %180, label %146, !dx.controlflow.hints !36

; <label>:146                                     ; preds = %77
  %147 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %148 = extractvalue %dx.types.CBufRet.i32 %147, 1
  %149 = add i32 %148, %142
  %150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %149, i32 0)  ; BufferLoad(srv,index,wot)
  %151 = extractvalue %dx.types.ResRet.i32 %150, 0
  br label %180

; <label>:152                                     ; preds = %29
  %153 = sub i32 %15, %24
  %154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %153, i32 0)  ; BufferLoad(srv,index,wot)
  %155 = extractvalue %dx.types.ResRet.i32 %154, 0
  %156 = and i32 %155, 8191
  %157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %156, i32 68)  ; BufferLoad(srv,index,wot)
  %158 = extractvalue %dx.types.ResRet.i32 %157, 0
  %159 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %156, i32 0)  ; BufferLoad(srv,index,wot)
  %160 = extractvalue %dx.types.ResRet.f32 %159, 0
  %161 = extractvalue %dx.types.ResRet.f32 %159, 1
  %162 = extractvalue %dx.types.ResRet.f32 %159, 2
  %163 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %156, i32 12)  ; BufferLoad(srv,index,wot)
  %164 = extractvalue %dx.types.ResRet.f32 %163, 0
  %165 = extractvalue %dx.types.ResRet.f32 %163, 1
  %166 = extractvalue %dx.types.ResRet.f32 %163, 2
  %167 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %156, i32 24)  ; BufferLoad(srv,index,wot)
  %168 = extractvalue %dx.types.ResRet.f32 %167, 0
  %169 = extractvalue %dx.types.ResRet.f32 %167, 1
  %170 = extractvalue %dx.types.ResRet.f32 %167, 2
  %171 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %156, i32 36)  ; BufferLoad(srv,index,wot)
  %172 = extractvalue %dx.types.ResRet.f32 %171, 0
  %173 = extractvalue %dx.types.ResRet.f32 %171, 1
  %174 = extractvalue %dx.types.ResRet.f32 %171, 2
  %175 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %156, i32 48)  ; BufferLoad(srv,index,wot)
  %176 = extractvalue %dx.types.ResRet.f32 %175, 0
  %177 = extractvalue %dx.types.ResRet.f32 %175, 1
  %178 = extractvalue %dx.types.ResRet.f32 %175, 2
  %179 = and i32 %158, 2047
  br label %180

; <label>:180                                     ; preds = %152, %146, %77
  %181 = phi float [ %96, %146 ], [ %172, %152 ], [ %96, %77 ]
  %182 = phi float [ %92, %146 ], [ %168, %152 ], [ %92, %77 ]
  %183 = phi float [ %123, %146 ], [ %164, %152 ], [ %123, %77 ]
  %184 = phi float [ %107, %146 ], [ %173, %152 ], [ %107, %77 ]
  %185 = phi float [ %103, %146 ], [ %169, %152 ], [ %103, %77 ]
  %186 = phi float [ %125, %146 ], [ %165, %152 ], [ %125, %77 ]
  %187 = phi float [ %115, %146 ], [ %174, %152 ], [ %115, %77 ]
  %188 = phi float [ %114, %146 ], [ %170, %152 ], [ %114, %77 ]
  %189 = phi float [ %126, %146 ], [ %166, %152 ], [ %126, %77 ]
  %190 = phi float [ %129, %146 ], [ %176, %152 ], [ %129, %77 ]
  %191 = phi float [ %132, %146 ], [ %177, %152 ], [ %132, %77 ]
  %192 = phi float [ %135, %146 ], [ %178, %152 ], [ %135, %77 ]
  %193 = phi float [ %36, %146 ], [ %160, %152 ], [ %36, %77 ]
  %194 = phi float [ %37, %146 ], [ %161, %152 ], [ %37, %77 ]
  %195 = phi float [ %38, %146 ], [ %162, %152 ], [ %38, %77 ]
  %196 = phi i32 [ %144, %146 ], [ %179, %152 ], [ %144, %77 ]
  %197 = phi i32 [ %151, %146 ], [ 2047, %152 ], [ 2047, %77 ]
  %198 = phi float [ %137, %146 ], [ 1.000000e+00, %152 ], [ %137, %77 ]
  %199 = phi float [ %139, %146 ], [ 1.000000e+00, %152 ], [ %139, %77 ]
  %200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %201 = extractvalue %dx.types.CBufRet.f32 %200, 0
  %202 = extractvalue %dx.types.CBufRet.f32 %200, 1
  %203 = extractvalue %dx.types.CBufRet.f32 %200, 2
  %204 = fmul fast float %201, %190
  %205 = fmul fast float %202, %191
  %206 = fmul fast float %203, %192
  %207 = fmul fast float %204, %183
  %208 = fmul fast float %204, %186
  %209 = fmul fast float %204, %189
  %210 = fmul fast float %205, %182
  %211 = fmul fast float %205, %185
  %212 = fmul fast float %205, %188
  %213 = fmul fast float %206, %181
  %214 = fmul fast float %206, %184
  %215 = fmul fast float %206, %187
  %216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %217 = extractvalue %dx.types.CBufRet.f32 %216, 0
  %218 = extractvalue %dx.types.CBufRet.f32 %216, 1
  %219 = extractvalue %dx.types.CBufRet.f32 %216, 2
  %220 = fsub fast float %193, %217
  %221 = fsub fast float %194, %218
  %222 = fsub fast float %195, %219
  %223 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %224 = extractvalue %dx.types.CBufRet.i32 %223, 0
  %225 = and i32 %224, 1
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %552, label %227, !dx.controlflow.hints !37

; <label>:227                                     ; preds = %180
  %228 = fsub fast float %220, %207
  %229 = fsub fast float %221, %208
  %230 = fsub fast float %222, %209
  %231 = fsub fast float %228, %210
  %232 = fsub fast float %229, %211
  %233 = fsub fast float %230, %212
  %234 = fadd fast float %231, %213
  %235 = fadd fast float %232, %214
  %236 = fadd fast float %233, %215
  %237 = fsub fast float %231, %213
  %238 = fsub fast float %232, %214
  %239 = fsub fast float %233, %215
  %240 = fadd fast float %220, %207
  %241 = fadd fast float %221, %208
  %242 = fadd fast float %222, %209
  %243 = fsub fast float %240, %210
  %244 = fsub fast float %241, %211
  %245 = fsub fast float %242, %212
  %246 = fsub fast float %243, %213
  %247 = fsub fast float %244, %214
  %248 = fsub fast float %245, %215
  %249 = fadd fast float %228, %210
  %250 = fadd fast float %229, %211
  %251 = fadd fast float %230, %212
  %252 = fsub fast float %249, %213
  %253 = fsub fast float %250, %214
  %254 = fsub fast float %251, %215
  %255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %256 = extractvalue %dx.types.CBufRet.f32 %255, 0
  %257 = extractvalue %dx.types.CBufRet.f32 %255, 1
  %258 = extractvalue %dx.types.CBufRet.f32 %255, 3
  %259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %260 = extractvalue %dx.types.CBufRet.f32 %259, 0
  %261 = extractvalue %dx.types.CBufRet.f32 %259, 1
  %262 = extractvalue %dx.types.CBufRet.f32 %259, 3
  %263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %264 = extractvalue %dx.types.CBufRet.f32 %263, 0
  %265 = extractvalue %dx.types.CBufRet.f32 %263, 1
  %266 = extractvalue %dx.types.CBufRet.f32 %263, 3
  %267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %268 = extractvalue %dx.types.CBufRet.f32 %267, 0
  %269 = extractvalue %dx.types.CBufRet.f32 %267, 1
  %270 = extractvalue %dx.types.CBufRet.f32 %267, 3
  %271 = fmul fast float %256, %234
  %272 = call float @dx.op.tertiary.f32(i32 46, float %260, float %235, float %271)  ; FMad(a,b,c)
  %273 = call float @dx.op.tertiary.f32(i32 46, float %264, float %236, float %272)  ; FMad(a,b,c)
  %274 = fadd fast float %273, %268
  %275 = fmul fast float %257, %234
  %276 = call float @dx.op.tertiary.f32(i32 46, float %261, float %235, float %275)  ; FMad(a,b,c)
  %277 = call float @dx.op.tertiary.f32(i32 46, float %265, float %236, float %276)  ; FMad(a,b,c)
  %278 = fadd fast float %277, %269
  %279 = fmul fast float %258, %234
  %280 = call float @dx.op.tertiary.f32(i32 46, float %262, float %235, float %279)  ; FMad(a,b,c)
  %281 = call float @dx.op.tertiary.f32(i32 46, float %266, float %236, float %280)  ; FMad(a,b,c)
  %282 = fadd fast float %281, %270
  %283 = fmul fast float %256, %237
  %284 = call float @dx.op.tertiary.f32(i32 46, float %260, float %238, float %283)  ; FMad(a,b,c)
  %285 = call float @dx.op.tertiary.f32(i32 46, float %264, float %239, float %284)  ; FMad(a,b,c)
  %286 = fadd fast float %285, %268
  %287 = fmul fast float %257, %237
  %288 = call float @dx.op.tertiary.f32(i32 46, float %261, float %238, float %287)  ; FMad(a,b,c)
  %289 = call float @dx.op.tertiary.f32(i32 46, float %265, float %239, float %288)  ; FMad(a,b,c)
  %290 = fadd fast float %289, %269
  %291 = fmul fast float %258, %237
  %292 = call float @dx.op.tertiary.f32(i32 46, float %262, float %238, float %291)  ; FMad(a,b,c)
  %293 = call float @dx.op.tertiary.f32(i32 46, float %266, float %239, float %292)  ; FMad(a,b,c)
  %294 = fadd fast float %293, %270
  %295 = fmul fast float %256, %246
  %296 = call float @dx.op.tertiary.f32(i32 46, float %260, float %247, float %295)  ; FMad(a,b,c)
  %297 = call float @dx.op.tertiary.f32(i32 46, float %264, float %248, float %296)  ; FMad(a,b,c)
  %298 = fadd fast float %297, %268
  %299 = fmul fast float %257, %246
  %300 = call float @dx.op.tertiary.f32(i32 46, float %261, float %247, float %299)  ; FMad(a,b,c)
  %301 = call float @dx.op.tertiary.f32(i32 46, float %265, float %248, float %300)  ; FMad(a,b,c)
  %302 = fadd fast float %301, %269
  %303 = fmul fast float %258, %246
  %304 = call float @dx.op.tertiary.f32(i32 46, float %262, float %247, float %303)  ; FMad(a,b,c)
  %305 = call float @dx.op.tertiary.f32(i32 46, float %266, float %248, float %304)  ; FMad(a,b,c)
  %306 = fadd fast float %305, %270
  %307 = fmul fast float %256, %252
  %308 = call float @dx.op.tertiary.f32(i32 46, float %260, float %253, float %307)  ; FMad(a,b,c)
  %309 = call float @dx.op.tertiary.f32(i32 46, float %264, float %254, float %308)  ; FMad(a,b,c)
  %310 = fadd fast float %309, %268
  %311 = fmul fast float %257, %252
  %312 = call float @dx.op.tertiary.f32(i32 46, float %261, float %253, float %311)  ; FMad(a,b,c)
  %313 = call float @dx.op.tertiary.f32(i32 46, float %265, float %254, float %312)  ; FMad(a,b,c)
  %314 = fadd fast float %313, %269
  %315 = fmul fast float %258, %252
  %316 = call float @dx.op.tertiary.f32(i32 46, float %262, float %253, float %315)  ; FMad(a,b,c)
  %317 = call float @dx.op.tertiary.f32(i32 46, float %266, float %254, float %316)  ; FMad(a,b,c)
  %318 = fadd fast float %317, %270
  %319 = fsub fast float %297, %285
  %320 = fsub fast float %301, %289
  %321 = fsub fast float %305, %293
  %322 = fsub fast float %309, %285
  %323 = fsub fast float %313, %289
  %324 = fsub fast float %317, %293
  %325 = fadd fast float %319, %274
  %326 = fadd fast float %320, %278
  %327 = fadd fast float %321, %282
  %328 = fadd fast float %322, %325
  %329 = fadd fast float %323, %326
  %330 = fadd fast float %324, %327
  %331 = fadd fast float %322, %274
  %332 = fadd fast float %323, %278
  %333 = fadd fast float %324, %282
  %334 = fadd fast float %322, %298
  %335 = fadd fast float %323, %302
  %336 = fadd fast float %324, %306
  %337 = getelementptr [8 x float], [8 x float]* %16, i32 0, i32 0
  %338 = getelementptr [8 x float], [8 x float]* %17, i32 0, i32 0
  %339 = getelementptr [8 x float], [8 x float]* %18, i32 0, i32 0
  store float %274, float* %337, align 4
  store float %278, float* %338, align 4
  store float %282, float* %339, align 4
  %340 = getelementptr [8 x float], [8 x float]* %16, i32 0, i32 1
  %341 = getelementptr [8 x float], [8 x float]* %17, i32 0, i32 1
  %342 = getelementptr [8 x float], [8 x float]* %18, i32 0, i32 1
  store float %325, float* %340, align 4
  store float %326, float* %341, align 4
  store float %327, float* %342, align 4
  %343 = getelementptr [8 x float], [8 x float]* %16, i32 0, i32 2
  %344 = getelementptr [8 x float], [8 x float]* %17, i32 0, i32 2
  %345 = getelementptr [8 x float], [8 x float]* %18, i32 0, i32 2
  store float %328, float* %343, align 4
  store float %329, float* %344, align 4
  store float %330, float* %345, align 4
  %346 = getelementptr [8 x float], [8 x float]* %16, i32 0, i32 3
  %347 = getelementptr [8 x float], [8 x float]* %17, i32 0, i32 3
  %348 = getelementptr [8 x float], [8 x float]* %18, i32 0, i32 3
  store float %331, float* %346, align 4
  store float %332, float* %347, align 4
  store float %333, float* %348, align 4
  %349 = getelementptr [8 x float], [8 x float]* %16, i32 0, i32 4
  %350 = getelementptr [8 x float], [8 x float]* %17, i32 0, i32 4
  %351 = getelementptr [8 x float], [8 x float]* %18, i32 0, i32 4
  store float %286, float* %349, align 4
  store float %290, float* %350, align 4
  store float %294, float* %351, align 4
  %352 = getelementptr [8 x float], [8 x float]* %16, i32 0, i32 5
  %353 = getelementptr [8 x float], [8 x float]* %17, i32 0, i32 5
  %354 = getelementptr [8 x float], [8 x float]* %18, i32 0, i32 5
  store float %298, float* %352, align 4
  store float %302, float* %353, align 4
  store float %306, float* %354, align 4
  %355 = getelementptr [8 x float], [8 x float]* %16, i32 0, i32 6
  %356 = getelementptr [8 x float], [8 x float]* %17, i32 0, i32 6
  %357 = getelementptr [8 x float], [8 x float]* %18, i32 0, i32 6
  store float %334, float* %355, align 4
  store float %335, float* %356, align 4
  store float %336, float* %357, align 4
  %358 = getelementptr [8 x float], [8 x float]* %16, i32 0, i32 7
  %359 = getelementptr [8 x float], [8 x float]* %17, i32 0, i32 7
  %360 = getelementptr [8 x float], [8 x float]* %18, i32 0, i32 7
  store float %310, float* %358, align 4
  store float %314, float* %359, align 4
  store float %318, float* %360, align 4
  %361 = fdiv fast float 1.000000e+00, %282
  %362 = fmul fast float %274, 5.000000e-01
  %363 = fmul fast float %362, %361
  %364 = fmul fast float %278, 5.000000e-01
  %365 = fmul fast float %364, %361
  %366 = fadd fast float %363, 5.000000e-01
  %367 = fsub fast float 5.000000e-01, %365
  %368 = call float @dx.op.unary.f32(i32 7, float %366)  ; Saturate(value)
  %369 = call float @dx.op.unary.f32(i32 7, float %367)  ; Saturate(value)
  br label %370

; <label>:370                                     ; preds = %396, %227
  %371 = phi float [ %327, %227 ], [ %402, %396 ]
  %372 = phi float [ %326, %227 ], [ %400, %396 ]
  %373 = phi float [ %325, %227 ], [ %398, %396 ]
  %374 = phi float [ %368, %227 ], [ %389, %396 ]
  %375 = phi float [ %369, %227 ], [ %390, %396 ]
  %376 = phi float [ %368, %227 ], [ %391, %396 ]
  %377 = phi float [ %369, %227 ], [ %392, %396 ]
  %378 = phi float [ %282, %227 ], [ %393, %396 ]
  %379 = phi i32 [ 1, %227 ], [ %394, %396 ]
  %380 = fdiv fast float 1.000000e+00, %371
  %381 = fmul fast float %373, 5.000000e-01
  %382 = fmul fast float %381, %380
  %383 = fmul fast float %372, 5.000000e-01
  %384 = fmul fast float %383, %380
  %385 = fadd fast float %382, 5.000000e-01
  %386 = fsub fast float 5.000000e-01, %384
  %387 = call float @dx.op.unary.f32(i32 7, float %385)  ; Saturate(value)
  %388 = call float @dx.op.unary.f32(i32 7, float %386)  ; Saturate(value)
  %389 = call float @dx.op.binary.f32(i32 36, float %387, float %374)  ; FMin(a,b)
  %390 = call float @dx.op.binary.f32(i32 36, float %388, float %375)  ; FMin(a,b)
  %391 = call float @dx.op.binary.f32(i32 35, float %387, float %376)  ; FMax(a,b)
  %392 = call float @dx.op.binary.f32(i32 35, float %388, float %377)  ; FMax(a,b)
  %393 = call float @dx.op.binary.f32(i32 36, float %378, float %371)  ; FMin(a,b)
  %394 = add nuw nsw i32 %379, 1
  %395 = icmp eq i32 %394, 8
  br i1 %395, label %403, label %396

; <label>:396                                     ; preds = %370
  %397 = getelementptr [8 x float], [8 x float]* %16, i32 0, i32 %394
  %398 = load float, float* %397, align 4
  %399 = getelementptr [8 x float], [8 x float]* %17, i32 0, i32 %394
  %400 = load float, float* %399, align 4
  %401 = getelementptr [8 x float], [8 x float]* %18, i32 0, i32 %394
  %402 = load float, float* %401, align 4
  br label %370

; <label>:403                                     ; preds = %370
  %404 = and i32 %224, 2
  %405 = icmp ne i32 %404, 0
  %406 = extractvalue %dx.types.CBufRet.i32 %223, 3
  %407 = extractvalue %dx.types.CBufRet.i32 %223, 1
  %408 = extractvalue %dx.types.CBufRet.i32 %223, 2
  %409 = fsub fast float %391, %389
  %410 = fsub fast float %392, %390
  %411 = uitofp i32 %407 to float
  %412 = uitofp i32 %408 to float
  %413 = fmul fast float %411, %409
  %414 = fmul fast float %412, %410
  %415 = call float @dx.op.unary.f32(i32 28, float %413)  ; Round_pi(value)
  %416 = call float @dx.op.unary.f32(i32 28, float %414)  ; Round_pi(value)
  %417 = call float @dx.op.binary.f32(i32 36, float %415, float %416)  ; FMin(a,b)
  %418 = call float @dx.op.binary.f32(i32 35, float %415, float %416)  ; FMax(a,b)
  %419 = select i1 %405, float %417, float %418
  %420 = call float @dx.op.unary.f32(i32 23, float %419)  ; Log(value)
  %421 = call float @dx.op.unary.f32(i32 28, float %420)  ; Round_pi(value)
  %422 = fptosi float %421 to i32
  %423 = call i32 @dx.op.binary.i32(i32 37, i32 %422, i32 0)  ; IMax(a,b)
  %424 = call i32 @dx.op.binary.i32(i32 38, i32 %423, i32 %406)  ; IMin(a,b)
  %425 = and i32 %424, 31
  %426 = lshr i32 %407, %425
  %427 = lshr i32 %408, %425
  %428 = uitofp i32 %426 to float
  %429 = uitofp i32 %427 to float
  %430 = call float @dx.op.binary.f32(i32 35, float %428, float 1.000000e+00)  ; FMax(a,b)
  %431 = call float @dx.op.binary.f32(i32 35, float %429, float 1.000000e+00)  ; FMax(a,b)
  %432 = fdiv fast float 1.000000e+00, %430
  %433 = fdiv fast float 1.000000e+00, %431
  %434 = fmul fast float %430, %389
  %435 = fmul fast float %431, %390
  %436 = call float @dx.op.unary.f32(i32 27, float %434)  ; Round_ni(value)
  %437 = call float @dx.op.unary.f32(i32 27, float %435)  ; Round_ni(value)
  %438 = call float @dx.op.binary.f32(i32 35, float %436, float 0.000000e+00)  ; FMax(a,b)
  %439 = call float @dx.op.binary.f32(i32 35, float %437, float 0.000000e+00)  ; FMax(a,b)
  %440 = call float @dx.op.binary.f32(i32 36, float %438, float %430)  ; FMin(a,b)
  %441 = call float @dx.op.binary.f32(i32 36, float %439, float %431)  ; FMin(a,b)
  %442 = fmul fast float %430, %391
  %443 = fmul fast float %431, %392
  %444 = call float @dx.op.unary.f32(i32 28, float %442)  ; Round_pi(value)
  %445 = call float @dx.op.unary.f32(i32 28, float %443)  ; Round_pi(value)
  %446 = call float @dx.op.binary.f32(i32 35, float %444, float 0.000000e+00)  ; FMax(a,b)
  %447 = call float @dx.op.binary.f32(i32 35, float %445, float 0.000000e+00)  ; FMax(a,b)
  %448 = call float @dx.op.binary.f32(i32 36, float %446, float %430)  ; FMin(a,b)
  %449 = call float @dx.op.binary.f32(i32 36, float %447, float %431)  ; FMin(a,b)
  %450 = fadd fast float %440, 1.000000e+00
  %451 = fmul fast float %450, %432
  %452 = fmul fast float %432, 2.000000e+00
  %453 = fmul fast float %433, 2.000000e+00
  %454 = fsub fast float %448, %440
  %455 = fsub fast float %449, %441
  %456 = fmul fast float %454, 5.000000e-01
  %457 = fmul fast float %455, 5.000000e-01
  %458 = call float @dx.op.unary.f32(i32 28, float %456)  ; Round_pi(value)
  %459 = call float @dx.op.unary.f32(i32 28, float %457)  ; Round_pi(value)
  %460 = fptoui float %458 to i32
  %461 = fptoui float %459 to i32
  %462 = shl i32 1, %425
  %463 = add i32 %462, -1
  %464 = and i32 %463, %407
  %465 = icmp ne i32 %464, 0
  %466 = zext i1 %465 to i32
  %467 = add i32 %460, %466
  %468 = and i32 %463, %408
  %469 = icmp ne i32 %468, 0
  %470 = zext i1 %469 to i32
  %471 = add i32 %461, %470
  %472 = icmp eq i32 %471, 0
  br i1 %472, label %539, label %473

; <label>:473                                     ; preds = %403
  %474 = fadd fast float %441, 1.000000e+00
  %475 = fmul fast float %474, %433
  br label %476

; <label>:476                                     ; preds = %533, %473
  %477 = phi float [ %534, %533 ], [ 0.000000e+00, %473 ]
  %478 = phi float [ %535, %533 ], [ %475, %473 ]
  %479 = phi i32 [ %536, %533 ], [ 0, %473 ]
  %480 = icmp eq i32 %467, 0
  br i1 %480, label %533, label %481

; <label>:481                                     ; preds = %476
  br label %482

; <label>:482                                     ; preds = %482, %481
  %483 = phi float [ %528, %482 ], [ %477, %481 ]
  %484 = phi float [ %529, %482 ], [ %451, %481 ]
  %485 = phi i32 [ %530, %482 ], [ 0, %481 ]
  %486 = sitofp i32 %424 to float
  %487 = fmul fast float %432, 0xBFDFE00000000000
  %488 = fadd fast float %487, %484
  %489 = fmul fast float %433, 0x3FE0100000000000
  %490 = fadd fast float %489, %478
  %491 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %12, float %488, float %490, float undef, float undef, i32 0, i32 0, i32 undef, float %486)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %492 = extractvalue %dx.types.ResRet.f32 %491, 0
  %493 = fmul fast float %432, 0x3FE0100000000000
  %494 = fadd fast float %493, %484
  %495 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %12, float %494, float %490, float undef, float undef, i32 0, i32 0, i32 undef, float %486)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %496 = extractvalue %dx.types.ResRet.f32 %495, 0
  %497 = fmul fast float %433, 0xBFDFE00000000000
  %498 = fadd fast float %497, %478
  %499 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %12, float %494, float %498, float undef, float undef, i32 0, i32 0, i32 undef, float %486)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %500 = extractvalue %dx.types.ResRet.f32 %499, 0
  %501 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %12, float %488, float %498, float undef, float undef, i32 0, i32 0, i32 undef, float %486)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %502 = extractvalue %dx.types.ResRet.f32 %501, 0
  %503 = fcmp fast ogt float %492, -1.000000e+00
  %504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %505 = extractvalue %dx.types.CBufRet.f32 %504, 1
  %506 = select i1 %503, float %505, float 1.000000e+00
  %507 = fadd fast float %492, 1.000000e+00
  %508 = fmul fast float %506, %507
  %509 = call float @dx.op.unary.f32(i32 6, float %508)  ; FAbs(value)
  %510 = fcmp fast ogt float %496, -1.000000e+00
  %511 = select i1 %510, float %505, float 1.000000e+00
  %512 = fadd fast float %496, 1.000000e+00
  %513 = fmul fast float %511, %512
  %514 = call float @dx.op.unary.f32(i32 6, float %513)  ; FAbs(value)
  %515 = fcmp fast ogt float %500, -1.000000e+00
  %516 = select i1 %515, float %505, float 1.000000e+00
  %517 = fadd fast float %500, 1.000000e+00
  %518 = fmul fast float %516, %517
  %519 = call float @dx.op.unary.f32(i32 6, float %518)  ; FAbs(value)
  %520 = fcmp fast ogt float %502, -1.000000e+00
  %521 = select i1 %520, float %505, float 1.000000e+00
  %522 = fadd fast float %502, 1.000000e+00
  %523 = fmul fast float %521, %522
  %524 = call float @dx.op.unary.f32(i32 6, float %523)  ; FAbs(value)
  %525 = call float @dx.op.binary.f32(i32 35, float %514, float %519)  ; FMax(a,b)
  %526 = call float @dx.op.binary.f32(i32 35, float %509, float %525)  ; FMax(a,b)
  %527 = call float @dx.op.binary.f32(i32 35, float %526, float %524)  ; FMax(a,b)
  %528 = call float @dx.op.binary.f32(i32 35, float %527, float %483)  ; FMax(a,b)
  %529 = fadd fast float %484, %452
  %530 = add nuw i32 %485, 1
  %531 = icmp eq i32 %530, %467
  br i1 %531, label %532, label %482

; <label>:532                                     ; preds = %482
  br label %533

; <label>:533                                     ; preds = %532, %476
  %534 = phi float [ %477, %476 ], [ %528, %532 ]
  %535 = fadd fast float %478, %453
  %536 = add nuw i32 %479, 1
  %537 = icmp eq i32 %536, %471
  br i1 %537, label %538, label %476

; <label>:538                                     ; preds = %533
  br label %539

; <label>:539                                     ; preds = %538, %403
  %540 = phi float [ 0.000000e+00, %403 ], [ %534, %538 ]
  %541 = fcmp fast une float %393, 0.000000e+00
  %542 = bitcast float %393 to i32
  %543 = and i32 %542, 2139095040
  %544 = add nsw i32 %543, -1056964608
  %545 = ashr exact i32 %544, 23
  %546 = add nsw i32 %545, -10
  %547 = sitofp i32 %546 to float
  %548 = select i1 %541, float %547, float -1.000000e+01
  %549 = call float @dx.op.unary.f32(i32 21, float %548)  ; Exp(value)
  %550 = fsub fast float %393, %549
  %551 = fcmp fast ogt float %540, %550
  br label %552

; <label>:552                                     ; preds = %539, %180
  %553 = phi i1 [ %551, %539 ], [ true, %180 ]
  br i1 %553, label %554, label %677, !dx.controlflow.hints !38

; <label>:554                                     ; preds = %552
  %555 = call float @dx.op.unary.f32(i32 6, float %198)  ; FAbs(value)
  %556 = call float @dx.op.unary.f32(i32 6, float %199)  ; FAbs(value)
  %557 = extractvalue %dx.types.CBufRet.i32 %19, 0
  %558 = icmp eq i32 %557, 0
  br i1 %558, label %630, label %559

; <label>:559                                     ; preds = %554
  br label %560

; <label>:560                                     ; preds = %620, %559
  %561 = phi float [ %622, %620 ], [ 1.000000e+07, %559 ]
  %562 = phi i32 [ %623, %620 ], [ 0, %559 ]
  %563 = call float @dx.op.binary.f32(i32 35, float %205, float %206)  ; FMax(a,b)
  %564 = call float @dx.op.binary.f32(i32 35, float %204, float %563)  ; FMax(a,b)
  %565 = add i32 %562, 39
  %566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 %565)  ; CBufferLoadLegacy(handle,regIndex)
  %567 = extractvalue %dx.types.CBufRet.f32 %566, 1
  %568 = extractvalue %dx.types.CBufRet.f32 %566, 0
  %569 = add i32 %562, 31
  %570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 %569)  ; CBufferLoadLegacy(handle,regIndex)
  %571 = add i32 %562, 23
  %572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 %571)  ; CBufferLoadLegacy(handle,regIndex)
  %573 = extractvalue %dx.types.CBufRet.f32 %572, 0
  %574 = extractvalue %dx.types.CBufRet.f32 %572, 1
  %575 = extractvalue %dx.types.CBufRet.f32 %572, 2
  %576 = fsub fast float %220, %573
  %577 = fsub fast float %221, %574
  %578 = fsub fast float %222, %575
  %579 = fmul fast float %576, %576
  %580 = fmul fast float %577, %577
  %581 = fadd fast float %579, %580
  %582 = fmul fast float %578, %578
  %583 = fadd fast float %581, %582
  %584 = call float @dx.op.unary.f32(i32 24, float %583)  ; Sqrt(value)
  %585 = fsub fast float %584, %564
  %586 = call float @dx.op.binary.f32(i32 35, float %585, float 0.000000e+00)  ; FMax(a,b)
  %587 = fdiv fast float %586, %584
  %588 = fmul fast float %586, %586
  %589 = fcmp fast ogt float %568, 1.000000e+00
  %590 = fcmp fast ogt float %588, 0.000000e+00
  %591 = and i1 %589, %590
  br i1 %591, label %592, label %620, !dx.controlflow.hints !39

; <label>:592                                     ; preds = %560
  %593 = fmul fast float %587, %578
  %594 = fmul fast float %587, %577
  %595 = fmul fast float %587, %576
  %596 = extractvalue %dx.types.CBufRet.f32 %570, 2
  %597 = extractvalue %dx.types.CBufRet.f32 %570, 1
  %598 = extractvalue %dx.types.CBufRet.f32 %570, 0
  %599 = call float @dx.op.dot3.f32(i32 55, float %595, float %594, float %593, float %598, float %597, float %596)  ; Dot3(ax,ay,az,bx,by,bz)
  %600 = fcmp fast ogt float %599, 0.000000e+00
  br i1 %600, label %601, label %620, !dx.controlflow.hints !40

; <label>:601                                     ; preds = %592
  %602 = fmul fast float %595, %595
  %603 = fmul fast float %594, %594
  %604 = fadd fast float %602, %603
  %605 = fmul fast float %593, %593
  %606 = fadd fast float %604, %605
  %607 = call float @dx.op.unary.f32(i32 24, float %606)  ; Sqrt(value)
  %608 = fmul fast float %607, %567
  %609 = fcmp fast ogt float %599, %608
  br i1 %609, label %610, label %620, !dx.controlflow.hints !41

; <label>:610                                     ; preds = %601
  %611 = fsub fast float %599, %608
  %612 = fsub fast float %607, %608
  %613 = fdiv fast float %611, %612
  %614 = fadd fast float %568, -1.000000e+00
  %615 = fmul fast float %613, %613
  %616 = fmul fast float %615, %614
  %617 = fadd fast float %616, 1.000000e+00
  %618 = fmul fast float %617, %617
  %619 = fdiv fast float %588, %618
  br label %620

; <label>:620                                     ; preds = %610, %601, %592, %560
  %621 = phi float [ %588, %560 ], [ %619, %610 ], [ %588, %601 ], [ %588, %592 ]
  %622 = call float @dx.op.binary.f32(i32 36, float %561, float %621)  ; FMin(a,b)
  %623 = add i32 %562, 1
  %624 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %625 = extractvalue %dx.types.CBufRet.i32 %624, 0
  %626 = icmp ult i32 %623, %625
  br i1 %626, label %560, label %627

; <label>:627                                     ; preds = %620
  %628 = fadd float %622, 1.000000e+00
  %629 = fmul float %628, 2.560000e+02
  br label %630

; <label>:630                                     ; preds = %627, %554
  %631 = phi float [ 0x41E312D020000000, %554 ], [ %629, %627 ]
  %632 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %196, i32 24)  ; BufferLoad(srv,index,wot)
  %633 = extractvalue %dx.types.ResRet.i32 %632, 0
  %634 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %196, i32 72)  ; BufferLoad(srv,index,wot)
  %635 = extractvalue %dx.types.ResRet.i32 %634, 0
  %636 = and i32 %635, 31
  %637 = shl i32 1, %636
  %638 = and i32 %633, 262144
  %639 = call float @dx.op.binary.f32(i32 35, float %205, float %206)  ; FMax(a,b)
  %640 = fmul fast float %639, 2.000000e+00
  %641 = uitofp i32 %637 to float
  %642 = fmul fast float %641, %556
  %643 = fmul fast float %641, %555
  %644 = call float @dx.op.binary.f32(i32 36, float %643, float %642)  ; FMin(a,b)
  %645 = fdiv fast float %640, %644
  %646 = fmul fast float %645, 0x409417A5C0000000
  %647 = fmul fast float %646, %646
  %648 = fdiv fast float 1.000000e+00, %647
  %649 = icmp ne i32 %638, 0
  %650 = fmul fast float %631, %648
  %651 = fptoui float %650 to i32
  %652 = select i1 %649, i32 256, i32 %651
  %653 = call i32 @dx.op.binary.i32(i32 40, i32 %652, i32 16777215)  ; UMin(a,b)
  %654 = icmp eq i32 %197, 2047
  br i1 %654, label %670, label %655, !dx.controlflow.hints !42

; <label>:655                                     ; preds = %630
  %656 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %197, i32 4)  ; BufferLoad(srv,index,wot)
  %657 = extractvalue %dx.types.ResRet.i32 %656, 0
  %658 = and i32 %657, 31
  %659 = shl i32 1, %658
  %660 = uitofp i32 %659 to float
  %661 = call float @dx.op.binary.f32(i32 36, float %660, float %660)  ; FMin(a,b)
  %662 = fdiv fast float %640, %661
  %663 = fmul fast float %662, 0x409417A5C0000000
  %664 = fmul fast float %663, %663
  %665 = fdiv fast float 1.000000e+00, %664
  %666 = fmul fast float %631, %665
  %667 = fptoui float %666 to i32
  %668 = select i1 %649, i32 256, i32 %667
  %669 = call i32 @dx.op.binary.i32(i32 40, i32 %668, i32 16777215)  ; UMin(a,b)
  br label %670

; <label>:670                                     ; preds = %655, %630
  %671 = phi i32 [ %669, %655 ], [ 0, %630 ]
  %672 = sub i32 16777215, %653
  %673 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 7, i32 %196, i32 0, i32 undef, i32 %672)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br i1 %654, label %677, label %674, !dx.controlflow.hints !43

; <label>:674                                     ; preds = %670
  %675 = sub i32 16777215, %671
  %676 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 7, i32 %197, i32 0, i32 undef, i32 %675)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %677

; <label>:677                                     ; preds = %674, %670, %552, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind
declare i32 @dx.op.atomicBinOp.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32) #2

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
!dx.entryPoints = !{!29}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !21, !24, !27}
!5 = !{!6, !8, !10, !12, !13, !15, !16, !18, !19}
!6 = !{i32 0, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 12, i32 0, !7}
!7 = !{i32 1, i32 4}
!8 = !{i32 1, %"class.StructuredBuffer<DecalVolumeMaterialGPU>"* undef, !"", i32 0, i32 9, i32 1, i32 12, i32 0, !9}
!9 = !{i32 1, i32 76}
!10 = !{i32 2, %"class.StructuredBuffer<DecalVolumeMaskGPU>"* undef, !"", i32 0, i32 2, i32 1, i32 12, i32 0, !11}
!11 = !{i32 1, i32 8}
!12 = !{i32 3, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 11, i32 1, i32 12, i32 0, !7}
!13 = !{i32 4, %"class.StructuredBuffer<GfxStaticDecalVolumePackedGPU>"* undef, !"", i32 0, i32 3, i32 1, i32 12, i32 0, !14}
!14 = !{i32 1, i32 48}
!15 = !{i32 5, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 6, i32 1, i32 12, i32 0, !7}
!16 = !{i32 6, %"class.StructuredBuffer<GfxImpactMarkDecalVolumeGPU>"* undef, !"", i32 0, i32 7, i32 1, i32 12, i32 0, !17}
!17 = !{i32 1, i32 72}
!18 = !{i32 7, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 8, i32 1, i32 12, i32 0, !7}
!19 = !{i32 8, %"class.Texture2D<float>"* undef, !"", i32 0, i32 12, i32 1, i32 2, i32 0, !20}
!20 = !{i32 0, i32 9}
!21 = !{!22, !23}
!22 = !{i32 0, %"class.RWStructuredBuffer<DecalVolumeStreamingInfoGPU>"* undef, !"", i32 0, i32 3, i32 1, i32 12, i1 false, i1 false, i1 false, !7}
!23 = !{i32 1, %"class.RWStructuredBuffer<DecalVolumeStreamingInfoGPU>"* undef, !"", i32 0, i32 4, i32 1, i32 12, i1 false, i1 false, i1 false, !7}
!24 = !{!25, !26}
!25 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!26 = !{i32 1, %hostlayout.DecalVolumeCsConstants* undef, !"", i32 0, i32 0, i32 1, i32 1424, null}
!27 = !{!28}
!28 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!29 = !{void ()* @cs_decal_volume_gather_streaming_data, !"cs_decal_volume_gather_streaming_data", null, !4, !30}
!30 = !{i32 0, i64 272, i32 4, !31}
!31 = !{i32 64, i32 1, i32 1}
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

