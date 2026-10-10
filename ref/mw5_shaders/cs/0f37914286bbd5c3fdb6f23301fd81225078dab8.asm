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
; shader hash: 28035dc6e0edc9cae895289c15af2ee7
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
;   [32 x i8] (type annotation not present)
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
;                                   texture     f32          2d      T0             t3     1
;                                   texture  struct         r/o      T1             t2     1
;                                   texture    byte         r/o      T2             t1     1
;                                       UAV    byte         r/w      U0             u0     1
;                                       UAV    byte         r/w      U1             u1     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.StructuredBuffer<GfxWaterTileGpuOcclusionCullingData>" = type { %struct.GfxWaterTileGpuOcclusionCullingData }
%struct.GfxWaterTileGpuOcclusionCullingData = type { i32, i32, <2 x float>, <2 x float>, <2 x float> }
%struct.ByteAddressBuffer = type { i32 }
%struct.RWByteAddressBuffer = type { i32 }
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

define void @cs_water_tile_occlusion_culling() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = alloca [4 x i32], align 4
  %11 = alloca [4 x i32], align 4
  %12 = alloca [4 x i32], align 4
  %13 = alloca [4 x i32], align 4
  %14 = alloca [4 x i32], align 4
  %15 = alloca [4 x i32], align 4
  %16 = alloca [4 x i32], align 4
  %17 = alloca [4 x i32], align 4
  %18 = alloca [4 x i32], align 4
  %19 = alloca [4 x i32], align 4
  %20 = alloca [4 x i32], align 4
  %21 = alloca [4 x float], align 4
  %22 = alloca [4 x float], align 4
  %23 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %24 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %25 = extractvalue %dx.types.ResRet.i32 %24, 0
  %26 = icmp ult i32 %23, %25
  br i1 %26, label %27, label %225, !dx.controlflow.hints !23

; <label>:27                                      ; preds = %0
  %28 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %23, i32 0)  ; BufferLoad(srv,index,wot)
  %29 = extractvalue %dx.types.ResRet.i32 %28, 0
  %30 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %23, i32 4)  ; BufferLoad(srv,index,wot)
  %31 = extractvalue %dx.types.ResRet.i32 %30, 0
  %32 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %23, i32 8)  ; BufferLoad(srv,index,wot)
  %33 = extractvalue %dx.types.ResRet.f32 %32, 0
  %34 = extractvalue %dx.types.ResRet.f32 %32, 1
  %35 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %23, i32 16)  ; BufferLoad(srv,index,wot)
  %36 = extractvalue %dx.types.ResRet.f32 %35, 0
  %37 = extractvalue %dx.types.ResRet.f32 %35, 1
  %38 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %23, i32 24)  ; BufferLoad(srv,index,wot)
  %39 = extractvalue %dx.types.ResRet.f32 %38, 0
  %40 = extractvalue %dx.types.ResRet.f32 %38, 1
  %41 = and i32 %31, 65535
  %42 = lshr i32 %31, 16
  %43 = and i32 %42, 7
  %44 = lshr i32 %31, 29
  %45 = and i32 %44, 2
  %46 = ashr i32 %31, 31
  %47 = and i32 %46, 4
  %48 = and i32 %31, 65528
  %49 = icmp eq i32 %48, 16
  %50 = icmp ult i32 %41, 16
  %51 = zext i1 %50 to i32
  %52 = zext i1 %49 to i32
  %53 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %54 = extractvalue %dx.types.CBufRet.f32 %53, 0
  %55 = extractvalue %dx.types.CBufRet.f32 %53, 1
  %56 = extractvalue %dx.types.CBufRet.f32 %53, 2
  %57 = extractvalue %dx.types.CBufRet.f32 %53, 3
  %58 = getelementptr inbounds [4 x float], [4 x float]* %21, i32 0, i32 0
  store float %54, float* %58, align 4
  %59 = getelementptr inbounds [4 x float], [4 x float]* %21, i32 0, i32 1
  store float %55, float* %59, align 4
  %60 = getelementptr inbounds [4 x float], [4 x float]* %21, i32 0, i32 2
  store float %56, float* %60, align 4
  %61 = getelementptr inbounds [4 x float], [4 x float]* %21, i32 0, i32 3
  store float %57, float* %61, align 4
  %62 = getelementptr inbounds [4 x float], [4 x float]* %21, i32 0, i32 %52
  %63 = load float, float* %62, align 4, !tbaa !24, !noalias !28
  %64 = fsub fast float %40, %39
  %65 = call float @dx.op.unary.f32(i32 6, float %64)  ; FAbs(value)
  %66 = uitofp i1 %49 to float
  %67 = fmul fast float %63, %66
  %68 = fmul fast float %67, %65
  %69 = select i1 %49, i32 3, i32 2
  %70 = getelementptr inbounds [4 x float], [4 x float]* %22, i32 0, i32 0
  store float %54, float* %70, align 4
  %71 = getelementptr inbounds [4 x float], [4 x float]* %22, i32 0, i32 1
  store float %55, float* %71, align 4
  %72 = getelementptr inbounds [4 x float], [4 x float]* %22, i32 0, i32 2
  store float %56, float* %72, align 4
  %73 = getelementptr inbounds [4 x float], [4 x float]* %22, i32 0, i32 3
  store float %57, float* %73, align 4
  %74 = getelementptr inbounds [4 x float], [4 x float]* %22, i32 0, i32 %69
  %75 = load float, float* %74, align 4, !tbaa !24, !noalias !28
  %76 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %77 = extractvalue %dx.types.CBufRet.i32 %76, 2
  %78 = extractvalue %dx.types.CBufRet.i32 %76, 0
  %79 = extractvalue %dx.types.CBufRet.i32 %76, 1
  %80 = fsub fast float %39, %68
  %81 = fsub fast float %36, %33
  %82 = fsub fast float %37, %34
  %83 = uitofp i32 %78 to float
  %84 = uitofp i32 %79 to float
  %85 = fmul fast float %83, %81
  %86 = fmul fast float %84, %82
  %87 = call float @dx.op.unary.f32(i32 28, float %85)  ; Round_pi(value)
  %88 = call float @dx.op.unary.f32(i32 28, float %86)  ; Round_pi(value)
  %89 = call float @dx.op.binary.f32(i32 36, float %87, float %88)  ; FMin(a,b)
  %90 = call float @dx.op.unary.f32(i32 23, float %89)  ; Log(value)
  %91 = call float @dx.op.unary.f32(i32 28, float %90)  ; Round_pi(value)
  %92 = fptosi float %91 to i32
  %93 = call i32 @dx.op.binary.i32(i32 37, i32 %92, i32 0)  ; IMax(a,b)
  %94 = call i32 @dx.op.binary.i32(i32 38, i32 %93, i32 %77)  ; IMin(a,b)
  %95 = and i32 %94, 31
  %96 = lshr i32 %78, %95
  %97 = lshr i32 %79, %95
  %98 = uitofp i32 %96 to float
  %99 = uitofp i32 %97 to float
  %100 = call float @dx.op.binary.f32(i32 35, float %98, float 1.000000e+00)  ; FMax(a,b)
  %101 = call float @dx.op.binary.f32(i32 35, float %99, float 1.000000e+00)  ; FMax(a,b)
  %102 = fdiv fast float 1.000000e+00, %100
  %103 = fdiv fast float 1.000000e+00, %101
  %104 = fmul fast float %100, %33
  %105 = fmul fast float %101, %34
  %106 = call float @dx.op.unary.f32(i32 27, float %104)  ; Round_ni(value)
  %107 = call float @dx.op.unary.f32(i32 27, float %105)  ; Round_ni(value)
  %108 = call float @dx.op.binary.f32(i32 35, float %106, float 0.000000e+00)  ; FMax(a,b)
  %109 = call float @dx.op.binary.f32(i32 35, float %107, float 0.000000e+00)  ; FMax(a,b)
  %110 = call float @dx.op.binary.f32(i32 36, float %108, float %100)  ; FMin(a,b)
  %111 = call float @dx.op.binary.f32(i32 36, float %109, float %101)  ; FMin(a,b)
  %112 = fmul fast float %100, %36
  %113 = fmul fast float %101, %37
  %114 = call float @dx.op.unary.f32(i32 28, float %112)  ; Round_pi(value)
  %115 = call float @dx.op.unary.f32(i32 28, float %113)  ; Round_pi(value)
  %116 = call float @dx.op.binary.f32(i32 35, float %114, float 0.000000e+00)  ; FMax(a,b)
  %117 = call float @dx.op.binary.f32(i32 35, float %115, float 0.000000e+00)  ; FMax(a,b)
  %118 = call float @dx.op.binary.f32(i32 36, float %116, float %100)  ; FMin(a,b)
  %119 = call float @dx.op.binary.f32(i32 36, float %117, float %101)  ; FMin(a,b)
  %120 = fadd fast float %110, 1.000000e+00
  %121 = fmul fast float %120, %102
  %122 = fmul fast float %102, 2.000000e+00
  %123 = fmul fast float %103, 2.000000e+00
  %124 = fsub fast float %118, %110
  %125 = fsub fast float %119, %111
  %126 = fmul fast float %124, 5.000000e-01
  %127 = fmul fast float %125, 5.000000e-01
  %128 = call float @dx.op.unary.f32(i32 28, float %126)  ; Round_pi(value)
  %129 = call float @dx.op.unary.f32(i32 28, float %127)  ; Round_pi(value)
  %130 = fptoui float %128 to i32
  %131 = fptoui float %129 to i32
  %132 = shl i32 1, %95
  %133 = add i32 %132, -1
  %134 = and i32 %133, %78
  %135 = icmp ne i32 %134, 0
  %136 = zext i1 %135 to i32
  %137 = add i32 %130, %136
  %138 = and i32 %133, %79
  %139 = icmp ne i32 %138, 0
  %140 = zext i1 %139 to i32
  %141 = add i32 %131, %140
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %209, label %143

; <label>:143                                     ; preds = %27
  %144 = fadd fast float %111, 1.000000e+00
  %145 = fmul fast float %144, %103
  br label %146

; <label>:146                                     ; preds = %203, %143
  %147 = phi float [ %204, %203 ], [ 0.000000e+00, %143 ]
  %148 = phi float [ %205, %203 ], [ %145, %143 ]
  %149 = phi i32 [ %206, %203 ], [ 0, %143 ]
  %150 = icmp eq i32 %137, 0
  br i1 %150, label %203, label %151

; <label>:151                                     ; preds = %146
  br label %152

; <label>:152                                     ; preds = %152, %151
  %153 = phi float [ %198, %152 ], [ %147, %151 ]
  %154 = phi float [ %199, %152 ], [ %121, %151 ]
  %155 = phi i32 [ %200, %152 ], [ 0, %151 ]
  %156 = sitofp i32 %94 to float
  %157 = fmul fast float %102, 0xBFDFE00000000000
  %158 = fadd fast float %157, %154
  %159 = fmul fast float %103, 0x3FE0100000000000
  %160 = fadd fast float %159, %148
  %161 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %6, float %158, float %160, float undef, float undef, i32 0, i32 0, i32 undef, float %156)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %162 = extractvalue %dx.types.ResRet.f32 %161, 0
  %163 = fmul fast float %102, 0x3FE0100000000000
  %164 = fadd fast float %163, %154
  %165 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %6, float %164, float %160, float undef, float undef, i32 0, i32 0, i32 undef, float %156)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %166 = extractvalue %dx.types.ResRet.f32 %165, 0
  %167 = fmul fast float %103, 0xBFDFE00000000000
  %168 = fadd fast float %167, %148
  %169 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %6, float %164, float %168, float undef, float undef, i32 0, i32 0, i32 undef, float %156)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %170 = extractvalue %dx.types.ResRet.f32 %169, 0
  %171 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %6, float %158, float %168, float undef, float undef, i32 0, i32 0, i32 undef, float %156)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %172 = extractvalue %dx.types.ResRet.f32 %171, 0
  %173 = fcmp fast ogt float %162, -1.000000e+00
  %174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %175 = extractvalue %dx.types.CBufRet.f32 %174, 1
  %176 = select i1 %173, float %175, float 1.000000e+00
  %177 = fadd fast float %162, 1.000000e+00
  %178 = fmul fast float %176, %177
  %179 = call float @dx.op.unary.f32(i32 6, float %178)  ; FAbs(value)
  %180 = fcmp fast ogt float %166, -1.000000e+00
  %181 = select i1 %180, float %175, float 1.000000e+00
  %182 = fadd fast float %166, 1.000000e+00
  %183 = fmul fast float %181, %182
  %184 = call float @dx.op.unary.f32(i32 6, float %183)  ; FAbs(value)
  %185 = fcmp fast ogt float %170, -1.000000e+00
  %186 = select i1 %185, float %175, float 1.000000e+00
  %187 = fadd fast float %170, 1.000000e+00
  %188 = fmul fast float %186, %187
  %189 = call float @dx.op.unary.f32(i32 6, float %188)  ; FAbs(value)
  %190 = fcmp fast ogt float %172, -1.000000e+00
  %191 = select i1 %190, float %175, float 1.000000e+00
  %192 = fadd fast float %172, 1.000000e+00
  %193 = fmul fast float %191, %192
  %194 = call float @dx.op.unary.f32(i32 6, float %193)  ; FAbs(value)
  %195 = call float @dx.op.binary.f32(i32 35, float %184, float %189)  ; FMax(a,b)
  %196 = call float @dx.op.binary.f32(i32 35, float %179, float %195)  ; FMax(a,b)
  %197 = call float @dx.op.binary.f32(i32 35, float %196, float %194)  ; FMax(a,b)
  %198 = call float @dx.op.binary.f32(i32 35, float %197, float %153)  ; FMax(a,b)
  %199 = fadd fast float %154, %122
  %200 = add nuw i32 %155, 1
  %201 = icmp eq i32 %200, %137
  br i1 %201, label %202, label %152

; <label>:202                                     ; preds = %152
  br label %203

; <label>:203                                     ; preds = %202, %146
  %204 = phi float [ %147, %146 ], [ %198, %202 ]
  %205 = fadd fast float %148, %123
  %206 = add nuw i32 %149, 1
  %207 = icmp eq i32 %206, %141
  br i1 %207, label %208, label %146

; <label>:208                                     ; preds = %203
  br label %209

; <label>:209                                     ; preds = %208, %27
  %210 = phi float [ 0.000000e+00, %27 ], [ %204, %208 ]
  %211 = fcmp fast une float %80, 0.000000e+00
  %212 = bitcast float %80 to i32
  %213 = and i32 %212, 2139095040
  %214 = add nsw i32 %213, -1056964608
  %215 = ashr exact i32 %214, 23
  %216 = add nsw i32 %215, -10
  %217 = sitofp i32 %216 to float
  %218 = select i1 %211, float %217, float -1.000000e+01
  %219 = call float @dx.op.unary.f32(i32 21, float %218)  ; Exp(value)
  %220 = fmul fast float %219, %75
  %221 = fsub fast float %80, %220
  %222 = fcmp fast ogt float %210, %221
  %223 = and i32 %44, 1
  %224 = or i32 %223, 24
  br label %225

; <label>:225                                     ; preds = %209, %0
  %226 = phi i32 [ %41, %209 ], [ 0, %0 ]
  %227 = phi i32 [ %51, %209 ], [ 0, %0 ]
  %228 = phi i32 [ %43, %209 ], [ 0, %0 ]
  %229 = phi i32 [ %224, %209 ], [ 24, %0 ]
  %230 = phi i32 [ %45, %209 ], [ 0, %0 ]
  %231 = phi i32 [ %47, %209 ], [ 0, %0 ]
  %232 = phi i1 [ %222, %209 ], [ false, %0 ]
  %233 = phi i32 [ %29, %209 ], [ 0, %0 ]
  br i1 %232, label %234, label %395, !dx.controlflow.hints !31

; <label>:234                                     ; preds = %225
  %235 = add nuw nsw i32 %226, 154
  %236 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 %235)  ; CBufferLoadLegacy(handle,regIndex)
  %237 = extractvalue %dx.types.CBufRet.i32 %236, 0
  %238 = extractvalue %dx.types.CBufRet.i32 %236, 1
  %239 = extractvalue %dx.types.CBufRet.i32 %236, 2
  %240 = extractvalue %dx.types.CBufRet.i32 %236, 3
  %241 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i32 0, i32 0
  store i32 %237, i32* %241, align 4
  %242 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i32 0, i32 1
  store i32 %238, i32* %242, align 4
  %243 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i32 0, i32 2
  store i32 %239, i32* %243, align 4
  %244 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i32 0, i32 3
  store i32 %240, i32* %244, align 4
  %245 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i32 0, i32 %228
  %246 = load i32, i32* %245, align 4, !tbaa !32
  %247 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 %246, i32 undef, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %248 = add nuw nsw i32 %226, 76
  %249 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 %248)  ; CBufferLoadLegacy(handle,regIndex)
  %250 = extractvalue %dx.types.CBufRet.i32 %249, 0
  %251 = extractvalue %dx.types.CBufRet.i32 %249, 1
  %252 = extractvalue %dx.types.CBufRet.i32 %249, 2
  %253 = extractvalue %dx.types.CBufRet.i32 %249, 3
  %254 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i32 0, i32 0
  store i32 %250, i32* %254, align 4
  %255 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i32 0, i32 1
  store i32 %251, i32* %255, align 4
  %256 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i32 0, i32 2
  store i32 %252, i32* %256, align 4
  %257 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i32 0, i32 3
  store i32 %253, i32* %257, align 4
  %258 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i32 0, i32 %228
  %259 = load i32, i32* %258, align 4, !tbaa !32
  %260 = icmp ult i32 %247, %259
  br i1 %260, label %261, label %276, !dx.controlflow.hints !34

; <label>:261                                     ; preds = %234
  %262 = add nuw nsw i32 %226, 115
  %263 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 %262)  ; CBufferLoadLegacy(handle,regIndex)
  %264 = extractvalue %dx.types.CBufRet.i32 %263, 0
  %265 = extractvalue %dx.types.CBufRet.i32 %263, 1
  %266 = extractvalue %dx.types.CBufRet.i32 %263, 2
  %267 = extractvalue %dx.types.CBufRet.i32 %263, 3
  %268 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i32 0, i32 0
  store i32 %264, i32* %268, align 4
  %269 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i32 0, i32 1
  store i32 %265, i32* %269, align 4
  %270 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i32 0, i32 2
  store i32 %266, i32* %270, align 4
  %271 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i32 0, i32 3
  store i32 %267, i32* %271, align 4
  %272 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i32 0, i32 %228
  %273 = load i32, i32* %272, align 4, !tbaa !32
  %274 = add i32 %273, %247
  %275 = shl i32 %274, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %275, i32 undef, i32 %233, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %319

; <label>:276                                     ; preds = %234
  %277 = and i32 %226, 65528
  %278 = add nuw nsw i32 %277, 154
  %279 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 %278)  ; CBufferLoadLegacy(handle,regIndex)
  %280 = extractvalue %dx.types.CBufRet.i32 %279, 0
  %281 = extractvalue %dx.types.CBufRet.i32 %279, 1
  %282 = extractvalue %dx.types.CBufRet.i32 %279, 2
  %283 = extractvalue %dx.types.CBufRet.i32 %279, 3
  %284 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i32 0, i32 0
  store i32 %280, i32* %284, align 4
  %285 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i32 0, i32 1
  store i32 %281, i32* %285, align 4
  %286 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i32 0, i32 2
  store i32 %282, i32* %286, align 4
  %287 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i32 0, i32 3
  store i32 %283, i32* %287, align 4
  %288 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i32 0, i32 %228
  %289 = load i32, i32* %288, align 4, !tbaa !32
  %290 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 %289, i32 undef, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %291 = add nuw nsw i32 %277, 76
  %292 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 %291)  ; CBufferLoadLegacy(handle,regIndex)
  %293 = extractvalue %dx.types.CBufRet.i32 %292, 0
  %294 = extractvalue %dx.types.CBufRet.i32 %292, 1
  %295 = extractvalue %dx.types.CBufRet.i32 %292, 2
  %296 = extractvalue %dx.types.CBufRet.i32 %292, 3
  %297 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i32 0, i32 0
  store i32 %293, i32* %297, align 4
  %298 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i32 0, i32 1
  store i32 %294, i32* %298, align 4
  %299 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i32 0, i32 2
  store i32 %295, i32* %299, align 4
  %300 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i32 0, i32 3
  store i32 %296, i32* %300, align 4
  %301 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i32 0, i32 %228
  %302 = load i32, i32* %301, align 4, !tbaa !32
  %303 = icmp ult i32 %290, %302
  br i1 %303, label %304, label %319, !dx.controlflow.hints !35

; <label>:304                                     ; preds = %276
  %305 = add nuw nsw i32 %277, 115
  %306 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 %305)  ; CBufferLoadLegacy(handle,regIndex)
  %307 = extractvalue %dx.types.CBufRet.i32 %306, 0
  %308 = extractvalue %dx.types.CBufRet.i32 %306, 1
  %309 = extractvalue %dx.types.CBufRet.i32 %306, 2
  %310 = extractvalue %dx.types.CBufRet.i32 %306, 3
  %311 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i32 0, i32 0
  store i32 %307, i32* %311, align 4
  %312 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i32 0, i32 1
  store i32 %308, i32* %312, align 4
  %313 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i32 0, i32 2
  store i32 %309, i32* %313, align 4
  %314 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i32 0, i32 3
  store i32 %310, i32* %314, align 4
  %315 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i32 0, i32 %228
  %316 = load i32, i32* %315, align 4, !tbaa !32
  %317 = add i32 %316, %290
  %318 = shl i32 %317, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %318, i32 undef, i32 %233, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %319

; <label>:319                                     ; preds = %304, %276, %261
  %320 = icmp eq i32 %227, 0
  br i1 %320, label %395, label %321, !dx.controlflow.hints !36

; <label>:321                                     ; preds = %319
  %322 = add nsw i32 %230, %229
  %323 = add nsw i32 %322, %231
  %324 = add nsw i32 %323, 154
  %325 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 %324)  ; CBufferLoadLegacy(handle,regIndex)
  %326 = extractvalue %dx.types.CBufRet.i32 %325, 0
  %327 = extractvalue %dx.types.CBufRet.i32 %325, 1
  %328 = extractvalue %dx.types.CBufRet.i32 %325, 2
  %329 = extractvalue %dx.types.CBufRet.i32 %325, 3
  %330 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i32 0, i32 0
  store i32 %326, i32* %330, align 4
  %331 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i32 0, i32 1
  store i32 %327, i32* %331, align 4
  %332 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i32 0, i32 2
  store i32 %328, i32* %332, align 4
  %333 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i32 0, i32 3
  store i32 %329, i32* %333, align 4
  %334 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i32 0, i32 %228
  %335 = load i32, i32* %334, align 4, !tbaa !32
  %336 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 %335, i32 undef, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %337 = add nsw i32 %323, 76
  %338 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 %337)  ; CBufferLoadLegacy(handle,regIndex)
  %339 = extractvalue %dx.types.CBufRet.i32 %338, 0
  %340 = extractvalue %dx.types.CBufRet.i32 %338, 1
  %341 = extractvalue %dx.types.CBufRet.i32 %338, 2
  %342 = extractvalue %dx.types.CBufRet.i32 %338, 3
  %343 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i32 0, i32 0
  store i32 %339, i32* %343, align 4
  %344 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i32 0, i32 1
  store i32 %340, i32* %344, align 4
  %345 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i32 0, i32 2
  store i32 %341, i32* %345, align 4
  %346 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i32 0, i32 3
  store i32 %342, i32* %346, align 4
  %347 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i32 0, i32 %228
  %348 = load i32, i32* %347, align 4, !tbaa !32
  %349 = icmp ult i32 %336, %348
  br i1 %349, label %350, label %365, !dx.controlflow.hints !37

; <label>:350                                     ; preds = %321
  %351 = add nsw i32 %323, 115
  %352 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 %351)  ; CBufferLoadLegacy(handle,regIndex)
  %353 = extractvalue %dx.types.CBufRet.i32 %352, 0
  %354 = extractvalue %dx.types.CBufRet.i32 %352, 1
  %355 = extractvalue %dx.types.CBufRet.i32 %352, 2
  %356 = extractvalue %dx.types.CBufRet.i32 %352, 3
  %357 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i32 0, i32 0
  store i32 %353, i32* %357, align 4
  %358 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i32 0, i32 1
  store i32 %354, i32* %358, align 4
  %359 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i32 0, i32 2
  store i32 %355, i32* %359, align 4
  %360 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i32 0, i32 3
  store i32 %356, i32* %360, align 4
  %361 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i32 0, i32 %228
  %362 = load i32, i32* %361, align 4, !tbaa !32
  %363 = add i32 %362, %336
  %364 = shl i32 %363, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %364, i32 undef, i32 %233, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %395

; <label>:365                                     ; preds = %321
  %366 = or i32 %231, 25
  %367 = add nuw nsw i32 %366, 76
  %368 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 %367)  ; CBufferLoadLegacy(handle,regIndex)
  %369 = extractvalue %dx.types.CBufRet.i32 %368, 0
  %370 = extractvalue %dx.types.CBufRet.i32 %368, 1
  %371 = extractvalue %dx.types.CBufRet.i32 %368, 2
  %372 = extractvalue %dx.types.CBufRet.i32 %368, 3
  %373 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i32 0, i32 0
  store i32 %369, i32* %373, align 4
  %374 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i32 0, i32 1
  store i32 %370, i32* %374, align 4
  %375 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i32 0, i32 2
  store i32 %371, i32* %375, align 4
  %376 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i32 0, i32 3
  store i32 %372, i32* %376, align 4
  %377 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i32 0, i32 %228
  %378 = load i32, i32* %377, align 4, !tbaa !32
  %379 = icmp ult i32 %336, %378
  br i1 %379, label %380, label %395, !dx.controlflow.hints !38

; <label>:380                                     ; preds = %365
  %381 = add nuw nsw i32 %366, 115
  %382 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 %381)  ; CBufferLoadLegacy(handle,regIndex)
  %383 = extractvalue %dx.types.CBufRet.i32 %382, 0
  %384 = extractvalue %dx.types.CBufRet.i32 %382, 1
  %385 = extractvalue %dx.types.CBufRet.i32 %382, 2
  %386 = extractvalue %dx.types.CBufRet.i32 %382, 3
  %387 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i32 0, i32 0
  store i32 %383, i32* %387, align 4
  %388 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i32 0, i32 1
  store i32 %384, i32* %388, align 4
  %389 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i32 0, i32 2
  store i32 %385, i32* %389, align 4
  %390 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i32 0, i32 3
  store i32 %386, i32* %390, align 4
  %391 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i32 0, i32 %228
  %392 = load i32, i32* %391, align 4, !tbaa !32
  %393 = add i32 %392, %336
  %394 = shl i32 %393, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %394, i32 undef, i32 %233, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %395

; <label>:395                                     ; preds = %380, %365, %350, %319, %225
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind
declare i32 @dx.op.atomicBinOp.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!20}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !11, !14, !18}
!5 = !{!6, !8, !10}
!6 = !{i32 0, %"class.Texture2D<float>"* undef, !"", i32 0, i32 3, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.StructuredBuffer<GfxWaterTileGpuOcclusionCullingData>"* undef, !"", i32 0, i32 2, i32 1, i32 12, i32 0, !9}
!9 = !{i32 1, i32 32}
!10 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!11 = !{!12, !13}
!12 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!13 = !{i32 1, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!14 = !{!15, !16, !17}
!15 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!16 = !{i32 1, %waterGpuOcclusionCulling* undef, !"", i32 0, i32 1, i32 1, i32 32, null}
!17 = !{i32 2, %hostlayout.waterConstants* undef, !"", i32 0, i32 5, i32 1, i32 3376, null}
!18 = !{!19}
!19 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!20 = !{void ()* @cs_water_tile_occlusion_culling, !"cs_water_tile_occlusion_culling", null, !4, !21}
!21 = !{i32 0, i64 272, i32 4, !22}
!22 = !{i32 64, i32 1, i32 1}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = !{!25, !25, i64 0}
!25 = !{!"float", !26, i64 0}
!26 = !{!"omnipotent char", !27, i64 0}
!27 = !{!"Simple C/C++ TBAA"}
!28 = !{!29}
!29 = distinct !{!29, !30, !"\01?Water_Tile_OcclusionCull@@YA_NV?$vector@M$01@@00_NAIAM@Z: %outMaxDepthSample"}
!30 = distinct !{!30, !"\01?Water_Tile_OcclusionCull@@YA_NV?$vector@M$01@@00_NAIAM@Z"}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = !{!33, !33, i64 0}
!33 = !{!"int", !26, i64 0}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}

