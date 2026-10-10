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
; shader hash: 14936c2acfcd8448d58ee4464b1e2506
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
;   [16 x i8] (type annotation not present)
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
;                                   texture    byte         r/o      T0             t4     1
;                                   texture    byte         r/o      T1             t0     1
;                                   texture    byte         r/o      T2             t1     1
;                                       UAV    byte         r/w      U0             u0     1
;                                       UAV    byte         r/w      U1             u1     1
;                                       UAV  struct         r/w      U2             u3     1
;                                       UAV    byte         r/w      U3             u2     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%struct.ByteAddressBuffer = type { i32 }
%struct.RWByteAddressBuffer = type { i32 }
%"class.RWStructuredBuffer<GfxWaterTileGpuOcclusionCullingData>" = type { %struct.GfxWaterTileGpuOcclusionCullingData }
%struct.GfxWaterTileGpuOcclusionCullingData = type { i32, i32, <2 x float>, <2 x float>, <2 x float> }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%waterTileBucketing = type { %struct.WaterTileBucketingCsConstants }
%struct.WaterTileBucketingCsConstants = type { i32, i32, i32, i32 }
%hostlayout.waterConstants = type { %hostlayout.struct.GfxWaterConstants }
%hostlayout.struct.GfxWaterConstants = type { i32, float, float, float, float, float, float, i32, <3 x float>, float, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, float, float, float, float, i32, float, float, float, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, float, float, float, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [16 x <4 x float>], [16 x <4 x float>], <4 x float>, <4 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, [2 x <4 x i32>], [2 x <4 x i32>], [2 x <4 x i32>], [39 x <4 x i32>], [39 x <4 x i32>], [39 x <4 x i32>], <4 x i32>, <4 x float>, <4 x i32>, <4 x i32>, <4 x i32>, float, float, float, float, <3 x float>, i32, <3 x float>, i32, float, i32, i32, i32, float, float, float, float, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, i32, i32, i32, float, i32, i32, float, i32, i32, float, float, i32, float, i32, i32, i32 }

@"\01?tiledSharedMem@@3PAIA" = external addrspace(3) global [64 x i32], align 4
@"\01?groupshared_indexToFirstItem@@3IA" = external addrspace(3) global i32, align 4

define void @cs_water_tile_buckets() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
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
  %21 = alloca [4 x i32], align 4
  %22 = alloca [4 x i32], align 4
  %23 = alloca [4 x i32], align 4
  %24 = alloca [4 x i32], align 4
  %25 = alloca [4 x i32], align 4
  %26 = alloca [4 x i32], align 4
  %27 = alloca [4 x i32], align 4
  %28 = alloca [4 x i32], align 4
  %29 = alloca [4 x i32], align 4
  %30 = alloca [4 x i32], align 4
  %31 = alloca [4 x i32], align 4
  %32 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %33 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %34 = alloca [8 x float], align 4
  %35 = alloca [8 x float], align 4
  %36 = alloca [8 x float], align 4
  %37 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %38 = extractvalue %dx.types.CBufRet.i32 %37, 0
  %39 = add i32 %38, 74
  %40 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 %39)  ; CBufferLoadLegacy(handle,regIndex)
  %41 = extractvalue %dx.types.CBufRet.i32 %40, 0
  %42 = icmp ult i32 %32, %41
  %43 = add i32 %38, 70
  %44 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 %43)  ; CBufferLoadLegacy(handle,regIndex)
  %45 = extractvalue %dx.types.CBufRet.i32 %44, 1
  %46 = extractvalue %dx.types.CBufRet.i32 %44, 2
  br i1 %42, label %47, label %70, !dx.controlflow.hints !22

; <label>:47                                      ; preds = %0
  %48 = extractvalue %dx.types.CBufRet.i32 %44, 3
  %49 = icmp ult i32 %32, %48
  br i1 %49, label %50, label %55, !dx.controlflow.hints !23

; <label>:50                                      ; preds = %47
  %51 = icmp ult i32 %32, %46
  br i1 %51, label %52, label %55, !dx.controlflow.hints !24

; <label>:52                                      ; preds = %50
  %53 = icmp uge i32 %32, %45
  %54 = zext i1 %53 to i32
  br label %55

; <label>:55                                      ; preds = %52, %50, %47
  %56 = phi i32 [ 3, %47 ], [ 2, %50 ], [ %54, %52 ]
  %57 = shl i32 %32, 2
  %58 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %57, i32 undef)  ; BufferLoad(srv,index,wot)
  %59 = extractvalue %dx.types.ResRet.i32 %58, 0
  %60 = mul i32 %32, 24
  %61 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %60, i32 undef)  ; BufferLoad(srv,index,wot)
  %62 = extractvalue %dx.types.ResRet.i32 %61, 0
  %63 = extractvalue %dx.types.ResRet.i32 %61, 1
  %64 = extractvalue %dx.types.ResRet.i32 %61, 2
  %65 = add i32 %60, 12
  %66 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %65, i32 undef)  ; BufferLoad(srv,index,wot)
  %67 = extractvalue %dx.types.ResRet.i32 %66, 0
  %68 = extractvalue %dx.types.ResRet.i32 %66, 1
  %69 = extractvalue %dx.types.ResRet.i32 %66, 2
  br label %70

; <label>:70                                      ; preds = %55, %0
  %71 = phi i32 [ %56, %55 ], [ 0, %0 ]
  %72 = phi i32 [ %67, %55 ], [ 0, %0 ]
  %73 = phi i32 [ %68, %55 ], [ 0, %0 ]
  %74 = phi i32 [ %69, %55 ], [ 0, %0 ]
  %75 = phi i32 [ %62, %55 ], [ 0, %0 ]
  %76 = phi i32 [ %63, %55 ], [ 0, %0 ]
  %77 = phi i32 [ %64, %55 ], [ 0, %0 ]
  %78 = phi i32 [ %59, %55 ], [ 0, %0 ]
  %79 = phi i32 [ %32, %55 ], [ 0, %0 ]
  %80 = and i32 %78, 255
  %81 = and i32 %78, 256
  %82 = and i32 %78, 512
  %83 = icmp eq i32 %82, 0
  %84 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %85 = extractvalue %dx.types.CBufRet.i32 %84, 0
  %86 = and i32 %85, 8
  %87 = icmp ne i32 %86, 0
  %88 = and i1 %83, %87
  %89 = zext i1 %88 to i32
  %90 = and i32 %78, 4096
  %91 = icmp ne i32 %80, 0
  %92 = and i1 %42, %91
  %93 = xor i32 %75, -1
  %94 = xor i32 %76, -1
  %95 = xor i32 %77, -1
  %96 = bitcast i32 %93 to float
  %97 = bitcast i32 %94 to float
  %98 = bitcast i32 %95 to float
  %99 = fadd fast float %96, -1.310720e+05
  %100 = fadd fast float %97, -1.310720e+05
  %101 = fadd fast float %98, -1.310720e+05
  %102 = bitcast i32 %72 to float
  %103 = bitcast i32 %73 to float
  %104 = bitcast i32 %74 to float
  %105 = fadd fast float %102, -1.310720e+05
  %106 = fadd fast float %103, -1.310720e+05
  %107 = fadd fast float %104, -1.310720e+05
  %108 = fadd fast float %105, %99
  %109 = fadd fast float %106, %100
  %110 = fadd fast float %101, %107
  %111 = fmul fast float %108, 5.000000e-01
  %112 = fsub fast float -0.000000e+00, %111
  %113 = fmul fast float %109, 5.000000e-01
  %114 = fsub fast float -0.000000e+00, %113
  %115 = fmul fast float %110, 5.000000e-01
  %116 = fsub fast float %111, %99
  %117 = fsub fast float %113, %100
  %118 = fsub fast float %115, %101
  %119 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %120 = extractvalue %dx.types.CBufRet.i32 %119, 0
  %121 = and i32 %120, 512
  %122 = icmp ne i32 %121, 0
  %123 = icmp eq i32 %81, 0
  %124 = and i32 %120, 16384
  %125 = icmp eq i32 %124, 0
  %126 = or i1 %123, %125
  %127 = call float @dx.op.unary.f32(i32 6, float %112)  ; FAbs(value)
  %128 = fsub fast float %127, %116
  %129 = call float @dx.op.binary.f32(i32 35, float %128, float 0.000000e+00)  ; FMax(a,b)
  %130 = fmul fast float %129, %129
  %131 = call float @dx.op.unary.f32(i32 6, float %114)  ; FAbs(value)
  %132 = fsub fast float %131, %117
  %133 = call float @dx.op.binary.f32(i32 35, float %132, float 0.000000e+00)  ; FMax(a,b)
  %134 = fmul fast float %133, %133
  %135 = fadd fast float %134, %130
  %136 = fsub fast float -0.000000e+00, %115
  %137 = call float @dx.op.unary.f32(i32 6, float %136)  ; FAbs(value)
  %138 = fsub fast float %137, %118
  %139 = call float @dx.op.binary.f32(i32 35, float %138, float 0.000000e+00)  ; FMax(a,b)
  %140 = fmul fast float %139, %139
  %141 = fadd fast float %135, %140
  %142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 357)  ; CBufferLoadLegacy(handle,regIndex)
  %143 = extractvalue %dx.types.CBufRet.f32 %142, 3
  %144 = fcmp fast ogt float %141, %143
  %145 = or i1 %126, %144
  %146 = and i1 %122, %145
  %147 = and i32 %85, 2
  %148 = icmp ne i32 %147, 0
  %149 = and i32 %78, 3072
  %150 = icmp eq i32 %149, 0
  %151 = and i1 %150, %148
  %152 = zext i1 %151 to i32
  %153 = and i32 %85, 4
  %154 = icmp ne i32 %153, 0
  %155 = icmp eq i32 %90, 0
  %156 = and i1 %155, %154
  %157 = select i1 %156, i32 2, i32 0
  %158 = and i32 %120, 4096
  %159 = icmp ne i32 %158, 0
  %160 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %80)  ; Countbits(value)
  %161 = icmp eq i32 %160, 1
  %162 = and i1 %161, %159
  %163 = select i1 %162, i32 4, i32 0
  %164 = or i32 %157, %152
  %165 = or i32 %164, %163
  %166 = and i32 %85, 16
  %167 = icmp ne i32 %166, 0
  %168 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 148, i32 undef)  ; BufferLoad(srv,index,wot)
  %169 = extractvalue %dx.types.ResRet.f32 %168, 0
  %170 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 152, i32 undef)  ; BufferLoad(srv,index,wot)
  %171 = extractvalue %dx.types.ResRet.f32 %170, 0
  %172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %173 = extractvalue %dx.types.CBufRet.f32 %172, 1
  %174 = fadd fast float %169, -1.000000e+00
  %175 = fsub fast float %174, %171
  %176 = fsub fast float %175, %173
  %177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %178 = extractvalue %dx.types.CBufRet.f32 %177, 2
  %179 = fcmp fast ole float %176, %178
  %180 = and i32 %85, 64
  %181 = icmp ne i32 %180, 0
  %182 = or i1 %179, %181
  br i1 %92, label %183, label %679, !dx.controlflow.hints !25

; <label>:183                                     ; preds = %70
  %184 = icmp eq i32 %38, 0
  br i1 %184, label %185, label %613, !dx.controlflow.hints !26

; <label>:185                                     ; preds = %183
  %186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %187 = extractvalue %dx.types.CBufRet.f32 %186, 0
  %188 = extractvalue %dx.types.CBufRet.f32 %186, 1
  %189 = extractvalue %dx.types.CBufRet.f32 %186, 2
  %190 = extractvalue %dx.types.CBufRet.f32 %186, 3
  %191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %192 = extractvalue %dx.types.CBufRet.f32 %191, 0
  %193 = extractvalue %dx.types.CBufRet.f32 %191, 1
  %194 = extractvalue %dx.types.CBufRet.f32 %191, 2
  %195 = extractvalue %dx.types.CBufRet.f32 %191, 3
  %196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %197 = extractvalue %dx.types.CBufRet.f32 %196, 0
  %198 = extractvalue %dx.types.CBufRet.f32 %196, 1
  %199 = extractvalue %dx.types.CBufRet.f32 %196, 2
  %200 = extractvalue %dx.types.CBufRet.f32 %196, 3
  %201 = fmul fast float %187, %99
  %202 = call float @dx.op.tertiary.f32(i32 46, float %100, float %188, float %201)  ; FMad(a,b,c)
  %203 = call float @dx.op.tertiary.f32(i32 46, float %101, float %189, float %202)  ; FMad(a,b,c)
  %204 = fadd fast float %203, %190
  %205 = fmul fast float %192, %99
  %206 = call float @dx.op.tertiary.f32(i32 46, float %100, float %193, float %205)  ; FMad(a,b,c)
  %207 = call float @dx.op.tertiary.f32(i32 46, float %101, float %194, float %206)  ; FMad(a,b,c)
  %208 = fadd fast float %207, %195
  %209 = fmul fast float %197, %99
  %210 = call float @dx.op.tertiary.f32(i32 46, float %100, float %198, float %209)  ; FMad(a,b,c)
  %211 = call float @dx.op.tertiary.f32(i32 46, float %101, float %199, float %210)  ; FMad(a,b,c)
  %212 = fadd fast float %211, %200
  %213 = fmul fast float %116, 2.000000e+00
  %214 = fmul fast float %117, 2.000000e+00
  %215 = fmul fast float %118, 2.000000e+00
  %216 = fmul fast float %187, %213
  %217 = fmul fast float %192, %213
  %218 = fmul fast float %197, %213
  %219 = fmul fast float %188, %214
  %220 = fmul fast float %193, %214
  %221 = fmul fast float %198, %214
  %222 = fmul fast float %189, %215
  %223 = fmul fast float %194, %215
  %224 = fmul fast float %199, %215
  %225 = getelementptr [8 x float], [8 x float]* %34, i32 0, i32 0
  %226 = getelementptr [8 x float], [8 x float]* %35, i32 0, i32 0
  %227 = getelementptr [8 x float], [8 x float]* %36, i32 0, i32 0
  store float 0.000000e+00, float* %225, align 4
  store float 0.000000e+00, float* %226, align 4
  store float 0.000000e+00, float* %227, align 4
  %228 = getelementptr [8 x float], [8 x float]* %34, i32 0, i32 1
  %229 = getelementptr [8 x float], [8 x float]* %35, i32 0, i32 1
  %230 = getelementptr [8 x float], [8 x float]* %36, i32 0, i32 1
  store float %216, float* %228, align 4
  store float %217, float* %229, align 4
  store float %218, float* %230, align 4
  %231 = getelementptr [8 x float], [8 x float]* %34, i32 0, i32 2
  %232 = getelementptr [8 x float], [8 x float]* %35, i32 0, i32 2
  %233 = getelementptr [8 x float], [8 x float]* %36, i32 0, i32 2
  store float %219, float* %231, align 4
  store float %220, float* %232, align 4
  store float %221, float* %233, align 4
  %234 = getelementptr [8 x float], [8 x float]* %34, i32 0, i32 3
  %235 = getelementptr [8 x float], [8 x float]* %35, i32 0, i32 3
  %236 = getelementptr [8 x float], [8 x float]* %36, i32 0, i32 3
  %237 = fsub fast float -0.000000e+00, %216
  %238 = fsub fast float -0.000000e+00, %217
  %239 = fsub fast float -0.000000e+00, %218
  store float %237, float* %234, align 4
  store float %238, float* %235, align 4
  store float %239, float* %236, align 4
  %240 = getelementptr [8 x float], [8 x float]* %34, i32 0, i32 4
  %241 = getelementptr [8 x float], [8 x float]* %35, i32 0, i32 4
  %242 = getelementptr [8 x float], [8 x float]* %36, i32 0, i32 4
  store float %222, float* %240, align 4
  store float %223, float* %241, align 4
  store float %224, float* %242, align 4
  %243 = getelementptr [8 x float], [8 x float]* %34, i32 0, i32 5
  %244 = getelementptr [8 x float], [8 x float]* %35, i32 0, i32 5
  %245 = getelementptr [8 x float], [8 x float]* %36, i32 0, i32 5
  store float %216, float* %243, align 4
  store float %217, float* %244, align 4
  store float %218, float* %245, align 4
  %246 = getelementptr [8 x float], [8 x float]* %34, i32 0, i32 6
  %247 = getelementptr [8 x float], [8 x float]* %35, i32 0, i32 6
  %248 = getelementptr [8 x float], [8 x float]* %36, i32 0, i32 6
  %249 = fsub fast float -0.000000e+00, %219
  %250 = fsub fast float -0.000000e+00, %220
  %251 = fsub fast float -0.000000e+00, %221
  store float %249, float* %246, align 4
  store float %250, float* %247, align 4
  store float %251, float* %248, align 4
  %252 = getelementptr [8 x float], [8 x float]* %34, i32 0, i32 7
  %253 = getelementptr [8 x float], [8 x float]* %35, i32 0, i32 7
  %254 = getelementptr [8 x float], [8 x float]* %36, i32 0, i32 7
  store float %237, float* %252, align 4
  store float %238, float* %253, align 4
  store float %239, float* %254, align 4
  br label %255

; <label>:255                                     ; preds = %306, %185
  %256 = phi float [ 0.000000e+00, %185 ], [ %312, %306 ]
  %257 = phi float [ 0.000000e+00, %185 ], [ %310, %306 ]
  %258 = phi float [ 0.000000e+00, %185 ], [ %308, %306 ]
  %259 = phi i32 [ 31, %185 ], [ %288, %306 ]
  %260 = phi float [ %204, %185 ], [ %270, %306 ]
  %261 = phi float [ %208, %185 ], [ %271, %306 ]
  %262 = phi float [ %212, %185 ], [ %272, %306 ]
  %263 = phi float [ 9.999999e+06, %185 ], [ %300, %306 ]
  %264 = phi float [ 9.999999e+06, %185 ], [ %301, %306 ]
  %265 = phi float [ -9.999999e+06, %185 ], [ %302, %306 ]
  %266 = phi float [ -9.999999e+06, %185 ], [ %303, %306 ]
  %267 = phi float [ 9.999999e+06, %185 ], [ %289, %306 ]
  %268 = phi float [ 0.000000e+00, %185 ], [ %290, %306 ]
  %269 = phi i32 [ 0, %185 ], [ %304, %306 ]
  %270 = fadd fast float %258, %260
  %271 = fadd fast float %257, %261
  %272 = fadd fast float %256, %262
  %273 = fsub fast float -0.000000e+00, %272
  %274 = fcmp fast olt float %270, %273
  %275 = select i1 %274, i32 -1, i32 -2
  %276 = and i32 %275, %259
  %277 = fcmp fast ogt float %270, %272
  %278 = select i1 %277, i32 -1, i32 -3
  %279 = and i32 %276, %278
  %280 = fcmp fast olt float %271, %273
  %281 = select i1 %280, i32 -1, i32 -5
  %282 = and i32 %279, %281
  %283 = fcmp fast ogt float %271, %272
  %284 = select i1 %283, i32 -1, i32 -9
  %285 = and i32 %282, %284
  %286 = fcmp fast olt float %272, 0.000000e+00
  %287 = select i1 %286, i32 -1, i32 -17
  %288 = and i32 %285, %287
  %289 = call float @dx.op.binary.f32(i32 36, float %267, float %272)  ; FMin(a,b)
  %290 = call float @dx.op.binary.f32(i32 35, float %268, float %272)  ; FMax(a,b)
  %291 = fdiv fast float 1.000000e+00, %272
  %292 = fmul fast float %270, 5.000000e-01
  %293 = fmul fast float %292, %291
  %294 = fmul fast float %271, 5.000000e-01
  %295 = fmul fast float %294, %291
  %296 = fadd fast float %293, 5.000000e-01
  %297 = fsub fast float 5.000000e-01, %295
  %298 = call float @dx.op.unary.f32(i32 7, float %296)  ; Saturate(value)
  %299 = call float @dx.op.unary.f32(i32 7, float %297)  ; Saturate(value)
  %300 = call float @dx.op.binary.f32(i32 36, float %263, float %298)  ; FMin(a,b)
  %301 = call float @dx.op.binary.f32(i32 36, float %264, float %299)  ; FMin(a,b)
  %302 = call float @dx.op.binary.f32(i32 35, float %265, float %298)  ; FMax(a,b)
  %303 = call float @dx.op.binary.f32(i32 35, float %266, float %299)  ; FMax(a,b)
  %304 = add nuw nsw i32 %269, 1
  %305 = icmp eq i32 %304, 8
  br i1 %305, label %313, label %306

; <label>:306                                     ; preds = %255
  %307 = getelementptr [8 x float], [8 x float]* %34, i32 0, i32 %304
  %308 = load float, float* %307, align 4
  %309 = getelementptr [8 x float], [8 x float]* %35, i32 0, i32 %304
  %310 = load float, float* %309, align 4
  %311 = getelementptr [8 x float], [8 x float]* %36, i32 0, i32 %304
  %312 = load float, float* %311, align 4
  br label %255

; <label>:313                                     ; preds = %255
  %314 = icmp eq i32 %288, 0
  %315 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %316 = extractvalue %dx.types.CBufRet.i32 %315, 0
  %317 = icmp eq i32 %316, 0
  %318 = or i1 %314, %317
  br i1 %318, label %319, label %520, !dx.controlflow.hints !27

; <label>:319                                     ; preds = %313
  %320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 198)  ; CBufferLoadLegacy(handle,regIndex)
  br i1 %146, label %330, label %321, !dx.controlflow.hints !28

; <label>:321                                     ; preds = %319
  %322 = extractvalue %dx.types.CBufRet.f32 %320, 3
  %323 = fcmp fast olt float %289, %322
  %324 = and i1 %167, %323
  %325 = extractvalue %dx.types.CBufRet.f32 %320, 1
  %326 = fcmp fast ogt float %141, %325
  %327 = zext i1 %324 to i32
  %328 = xor i32 %327, 1
  br i1 %326, label %330, label %329, !dx.controlflow.hints !29

; <label>:329                                     ; preds = %321
  br label %330

; <label>:330                                     ; preds = %329, %321, %319
  %331 = phi i32 [ %328, %329 ], [ 1, %319 ], [ %328, %321 ]
  %332 = phi i32 [ 8, %329 ], [ 16, %319 ], [ 0, %321 ]
  %333 = or i32 %165, %332
  %334 = icmp eq i32 %331, 0
  %335 = xor i1 %167, true
  %336 = or i1 %334, %335
  br i1 %336, label %337, label %421, !dx.controlflow.hints !30

; <label>:337                                     ; preds = %330
  %338 = add nuw nsw i32 %333, 154
  %339 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 %338)  ; CBufferLoadLegacy(handle,regIndex)
  %340 = extractvalue %dx.types.CBufRet.i32 %339, 0
  %341 = extractvalue %dx.types.CBufRet.i32 %339, 1
  %342 = extractvalue %dx.types.CBufRet.i32 %339, 2
  %343 = extractvalue %dx.types.CBufRet.i32 %339, 3
  %344 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i32 0, i32 0
  store i32 %340, i32* %344, align 4
  %345 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i32 0, i32 1
  store i32 %341, i32* %345, align 4
  %346 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i32 0, i32 2
  store i32 %342, i32* %346, align 4
  %347 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i32 0, i32 3
  store i32 %343, i32* %347, align 4
  %348 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i32 0, i32 %71
  %349 = load i32, i32* %348, align 4, !tbaa !31
  %350 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 0, i32 %349, i32 undef, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %351 = add nuw nsw i32 %333, 76
  %352 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 %351)  ; CBufferLoadLegacy(handle,regIndex)
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
  %361 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i32 0, i32 %71
  %362 = load i32, i32* %361, align 4, !tbaa !31
  %363 = icmp ult i32 %350, %362
  br i1 %363, label %364, label %379, !dx.controlflow.hints !35

; <label>:364                                     ; preds = %337
  %365 = add nuw nsw i32 %333, 115
  %366 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 %365)  ; CBufferLoadLegacy(handle,regIndex)
  %367 = extractvalue %dx.types.CBufRet.i32 %366, 0
  %368 = extractvalue %dx.types.CBufRet.i32 %366, 1
  %369 = extractvalue %dx.types.CBufRet.i32 %366, 2
  %370 = extractvalue %dx.types.CBufRet.i32 %366, 3
  %371 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i32 0, i32 0
  store i32 %367, i32* %371, align 4
  %372 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i32 0, i32 1
  store i32 %368, i32* %372, align 4
  %373 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i32 0, i32 2
  store i32 %369, i32* %373, align 4
  %374 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i32 0, i32 3
  store i32 %370, i32* %374, align 4
  %375 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i32 0, i32 %71
  %376 = load i32, i32* %375, align 4, !tbaa !31
  %377 = add i32 %376, %350
  %378 = shl i32 %377, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %378, i32 undef, i32 %79, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %421

; <label>:379                                     ; preds = %337
  %380 = add nuw nsw i32 %332, 154
  %381 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 %380)  ; CBufferLoadLegacy(handle,regIndex)
  %382 = extractvalue %dx.types.CBufRet.i32 %381, 0
  %383 = extractvalue %dx.types.CBufRet.i32 %381, 1
  %384 = extractvalue %dx.types.CBufRet.i32 %381, 2
  %385 = extractvalue %dx.types.CBufRet.i32 %381, 3
  %386 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i32 0, i32 0
  store i32 %382, i32* %386, align 4
  %387 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i32 0, i32 1
  store i32 %383, i32* %387, align 4
  %388 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i32 0, i32 2
  store i32 %384, i32* %388, align 4
  %389 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i32 0, i32 3
  store i32 %385, i32* %389, align 4
  %390 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i32 0, i32 %71
  %391 = load i32, i32* %390, align 4, !tbaa !31
  %392 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 0, i32 %391, i32 undef, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %393 = add nuw nsw i32 %332, 76
  %394 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 %393)  ; CBufferLoadLegacy(handle,regIndex)
  %395 = extractvalue %dx.types.CBufRet.i32 %394, 0
  %396 = extractvalue %dx.types.CBufRet.i32 %394, 1
  %397 = extractvalue %dx.types.CBufRet.i32 %394, 2
  %398 = extractvalue %dx.types.CBufRet.i32 %394, 3
  %399 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i32 0, i32 0
  store i32 %395, i32* %399, align 4
  %400 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i32 0, i32 1
  store i32 %396, i32* %400, align 4
  %401 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i32 0, i32 2
  store i32 %397, i32* %401, align 4
  %402 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i32 0, i32 3
  store i32 %398, i32* %402, align 4
  %403 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i32 0, i32 %71
  %404 = load i32, i32* %403, align 4, !tbaa !31
  %405 = icmp ult i32 %392, %404
  br i1 %405, label %406, label %421, !dx.controlflow.hints !36

; <label>:406                                     ; preds = %379
  %407 = add nuw nsw i32 %332, 115
  %408 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 %407)  ; CBufferLoadLegacy(handle,regIndex)
  %409 = extractvalue %dx.types.CBufRet.i32 %408, 0
  %410 = extractvalue %dx.types.CBufRet.i32 %408, 1
  %411 = extractvalue %dx.types.CBufRet.i32 %408, 2
  %412 = extractvalue %dx.types.CBufRet.i32 %408, 3
  %413 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i32 0, i32 0
  store i32 %409, i32* %413, align 4
  %414 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i32 0, i32 1
  store i32 %410, i32* %414, align 4
  %415 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i32 0, i32 2
  store i32 %411, i32* %415, align 4
  %416 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i32 0, i32 3
  store i32 %412, i32* %416, align 4
  %417 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i32 0, i32 %71
  %418 = load i32, i32* %417, align 4, !tbaa !31
  %419 = add i32 %418, %392
  %420 = shl i32 %419, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %420, i32 undef, i32 %79, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %421

; <label>:421                                     ; preds = %406, %379, %364, %330
  %422 = phi i32 [ %333, %364 ], [ %332, %406 ], [ %332, %379 ], [ %333, %330 ]
  %423 = or i1 %146, %334
  %424 = or i1 %423, %335
  br i1 %424, label %425, label %520, !dx.controlflow.hints !37

; <label>:425                                     ; preds = %421
  %426 = and i32 %422, -8
  %427 = icmp eq i32 %426, 8
  %428 = select i1 %427, i32 4, i32 0
  %429 = select i1 %146, i32 32, i32 24
  %430 = or i32 %429, %89
  %431 = lshr exact i32 %163, 1
  %432 = or i32 %430, %431
  %433 = or i32 %432, %428
  %434 = xor i32 %433, 1
  %435 = add nuw nsw i32 %434, 154
  %436 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 %435)  ; CBufferLoadLegacy(handle,regIndex)
  %437 = extractvalue %dx.types.CBufRet.i32 %436, 0
  %438 = extractvalue %dx.types.CBufRet.i32 %436, 1
  %439 = extractvalue %dx.types.CBufRet.i32 %436, 2
  %440 = extractvalue %dx.types.CBufRet.i32 %436, 3
  %441 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i32 0, i32 0
  store i32 %437, i32* %441, align 4
  %442 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i32 0, i32 1
  store i32 %438, i32* %442, align 4
  %443 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i32 0, i32 2
  store i32 %439, i32* %443, align 4
  %444 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i32 0, i32 3
  store i32 %440, i32* %444, align 4
  %445 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i32 0, i32 %71
  %446 = load i32, i32* %445, align 4, !tbaa !31
  %447 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 0, i32 %446, i32 undef, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %448 = add nuw nsw i32 %434, 76
  %449 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 %448)  ; CBufferLoadLegacy(handle,regIndex)
  %450 = extractvalue %dx.types.CBufRet.i32 %449, 0
  %451 = extractvalue %dx.types.CBufRet.i32 %449, 1
  %452 = extractvalue %dx.types.CBufRet.i32 %449, 2
  %453 = extractvalue %dx.types.CBufRet.i32 %449, 3
  %454 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i32 0, i32 0
  store i32 %450, i32* %454, align 4
  %455 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i32 0, i32 1
  store i32 %451, i32* %455, align 4
  %456 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i32 0, i32 2
  store i32 %452, i32* %456, align 4
  %457 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i32 0, i32 3
  store i32 %453, i32* %457, align 4
  %458 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i32 0, i32 %71
  %459 = load i32, i32* %458, align 4, !tbaa !31
  %460 = icmp ult i32 %447, %459
  br i1 %460, label %461, label %476, !dx.controlflow.hints !38

; <label>:461                                     ; preds = %425
  %462 = add nuw nsw i32 %434, 115
  %463 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 %462)  ; CBufferLoadLegacy(handle,regIndex)
  %464 = extractvalue %dx.types.CBufRet.i32 %463, 0
  %465 = extractvalue %dx.types.CBufRet.i32 %463, 1
  %466 = extractvalue %dx.types.CBufRet.i32 %463, 2
  %467 = extractvalue %dx.types.CBufRet.i32 %463, 3
  %468 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i32 0, i32 0
  store i32 %464, i32* %468, align 4
  %469 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i32 0, i32 1
  store i32 %465, i32* %469, align 4
  %470 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i32 0, i32 2
  store i32 %466, i32* %470, align 4
  %471 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i32 0, i32 3
  store i32 %467, i32* %471, align 4
  %472 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i32 0, i32 %71
  %473 = load i32, i32* %472, align 4, !tbaa !31
  %474 = add i32 %473, %447
  %475 = shl i32 %474, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %475, i32 undef, i32 %79, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %520

; <label>:476                                     ; preds = %425
  %477 = select i1 %427, i32 29, i32 25
  %478 = select i1 %146, i32 33, i32 %477
  %479 = add nuw nsw i32 %478, 154
  %480 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 %479)  ; CBufferLoadLegacy(handle,regIndex)
  %481 = extractvalue %dx.types.CBufRet.i32 %480, 0
  %482 = extractvalue %dx.types.CBufRet.i32 %480, 1
  %483 = extractvalue %dx.types.CBufRet.i32 %480, 2
  %484 = extractvalue %dx.types.CBufRet.i32 %480, 3
  %485 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i32 0, i32 0
  store i32 %481, i32* %485, align 4
  %486 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i32 0, i32 1
  store i32 %482, i32* %486, align 4
  %487 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i32 0, i32 2
  store i32 %483, i32* %487, align 4
  %488 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i32 0, i32 3
  store i32 %484, i32* %488, align 4
  %489 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i32 0, i32 %71
  %490 = load i32, i32* %489, align 4, !tbaa !31
  %491 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 0, i32 %490, i32 undef, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %492 = add nuw nsw i32 %478, 76
  %493 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 %492)  ; CBufferLoadLegacy(handle,regIndex)
  %494 = extractvalue %dx.types.CBufRet.i32 %493, 0
  %495 = extractvalue %dx.types.CBufRet.i32 %493, 1
  %496 = extractvalue %dx.types.CBufRet.i32 %493, 2
  %497 = extractvalue %dx.types.CBufRet.i32 %493, 3
  %498 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i32 0, i32 0
  store i32 %494, i32* %498, align 4
  %499 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i32 0, i32 1
  store i32 %495, i32* %499, align 4
  %500 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i32 0, i32 2
  store i32 %496, i32* %500, align 4
  %501 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i32 0, i32 3
  store i32 %497, i32* %501, align 4
  %502 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i32 0, i32 %71
  %503 = load i32, i32* %502, align 4, !tbaa !31
  %504 = icmp ult i32 %491, %503
  br i1 %504, label %505, label %520, !dx.controlflow.hints !39

; <label>:505                                     ; preds = %476
  %506 = add nuw nsw i32 %478, 115
  %507 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 %506)  ; CBufferLoadLegacy(handle,regIndex)
  %508 = extractvalue %dx.types.CBufRet.i32 %507, 0
  %509 = extractvalue %dx.types.CBufRet.i32 %507, 1
  %510 = extractvalue %dx.types.CBufRet.i32 %507, 2
  %511 = extractvalue %dx.types.CBufRet.i32 %507, 3
  %512 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i32 0, i32 0
  store i32 %508, i32* %512, align 4
  %513 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i32 0, i32 1
  store i32 %509, i32* %513, align 4
  %514 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i32 0, i32 2
  store i32 %510, i32* %514, align 4
  %515 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i32 0, i32 3
  store i32 %511, i32* %515, align 4
  %516 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i32 0, i32 %71
  %517 = load i32, i32* %516, align 4, !tbaa !31
  %518 = add i32 %517, %491
  %519 = shl i32 %518, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %519, i32 undef, i32 %79, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %520

; <label>:520                                     ; preds = %505, %476, %461, %421, %313
  %521 = phi i32 [ %331, %461 ], [ %331, %505 ], [ %331, %476 ], [ %331, %421 ], [ 0, %313 ]
  %522 = phi i32 [ %422, %461 ], [ %422, %505 ], [ %422, %476 ], [ %422, %421 ], [ 0, %313 ]
  %523 = icmp ult i32 %71, 2
  %524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 198)  ; CBufferLoadLegacy(handle,regIndex)
  %525 = extractvalue %dx.types.CBufRet.f32 %524, 0
  %526 = fcmp fast ole float %135, %525
  %527 = and i1 %523, %526
  %528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %529 = extractvalue %dx.types.CBufRet.f32 %528, 1
  %530 = fadd fast float %104, -1.310710e+05
  %531 = fadd fast float %530, %529
  %532 = fcmp fast oge float %531, 0.000000e+00
  %533 = and i1 %527, %532
  %534 = and i1 %182, %533
  br i1 %534, label %535, label %574, !dx.controlflow.hints !40

; <label>:535                                     ; preds = %520
  %536 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 191)  ; CBufferLoadLegacy(handle,regIndex)
  %537 = extractvalue %dx.types.CBufRet.i32 %536, 0
  %538 = extractvalue %dx.types.CBufRet.i32 %536, 1
  %539 = extractvalue %dx.types.CBufRet.i32 %536, 2
  %540 = extractvalue %dx.types.CBufRet.i32 %536, 3
  %541 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i32 0, i32 0
  store i32 %537, i32* %541, align 4
  %542 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i32 0, i32 1
  store i32 %538, i32* %542, align 4
  %543 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i32 0, i32 2
  store i32 %539, i32* %543, align 4
  %544 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i32 0, i32 3
  store i32 %540, i32* %544, align 4
  %545 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i32 0, i32 %71
  %546 = load i32, i32* %545, align 4, !tbaa !31
  %547 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 0, i32 %546, i32 undef, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %548 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %549 = extractvalue %dx.types.CBufRet.i32 %548, 0
  %550 = extractvalue %dx.types.CBufRet.i32 %548, 1
  %551 = extractvalue %dx.types.CBufRet.i32 %548, 2
  %552 = extractvalue %dx.types.CBufRet.i32 %548, 3
  %553 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 0
  store i32 %549, i32* %553, align 4
  %554 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 1
  store i32 %550, i32* %554, align 4
  %555 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 2
  store i32 %551, i32* %555, align 4
  %556 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 3
  store i32 %552, i32* %556, align 4
  %557 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 %71
  %558 = load i32, i32* %557, align 4, !tbaa !31
  %559 = icmp ult i32 %547, %558
  br i1 %559, label %560, label %574, !dx.controlflow.hints !41

; <label>:560                                     ; preds = %535
  %561 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 152)  ; CBufferLoadLegacy(handle,regIndex)
  %562 = extractvalue %dx.types.CBufRet.i32 %561, 0
  %563 = extractvalue %dx.types.CBufRet.i32 %561, 1
  %564 = extractvalue %dx.types.CBufRet.i32 %561, 2
  %565 = extractvalue %dx.types.CBufRet.i32 %561, 3
  %566 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i32 0, i32 0
  store i32 %562, i32* %566, align 4
  %567 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i32 0, i32 1
  store i32 %563, i32* %567, align 4
  %568 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i32 0, i32 2
  store i32 %564, i32* %568, align 4
  %569 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i32 0, i32 3
  store i32 %565, i32* %569, align 4
  %570 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i32 0, i32 %71
  %571 = load i32, i32* %570, align 4, !tbaa !31
  %572 = add i32 %571, %547
  %573 = shl i32 %572, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %573, i32 undef, i32 %79, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %574

; <label>:574                                     ; preds = %560, %535, %520
  %575 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %576 = extractvalue %dx.types.CBufRet.i32 %575, 0
  %577 = extractvalue %dx.types.CBufRet.i32 %575, 1
  %578 = extractvalue %dx.types.CBufRet.i32 %575, 2
  %579 = extractvalue %dx.types.CBufRet.i32 %575, 3
  %580 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 0
  store i32 %576, i32* %580, align 4
  %581 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 1
  store i32 %577, i32* %581, align 4
  %582 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 2
  store i32 %578, i32* %582, align 4
  %583 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 3
  store i32 %579, i32* %583, align 4
  %584 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 %71
  %585 = load i32, i32* %584, align 4, !tbaa !31
  %586 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 0, i32 %585, i32 undef, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %587 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %588 = extractvalue %dx.types.CBufRet.i32 %587, 0
  %589 = extractvalue %dx.types.CBufRet.i32 %587, 1
  %590 = extractvalue %dx.types.CBufRet.i32 %587, 2
  %591 = extractvalue %dx.types.CBufRet.i32 %587, 3
  %592 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i32 0, i32 0
  store i32 %588, i32* %592, align 4
  %593 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i32 0, i32 1
  store i32 %589, i32* %593, align 4
  %594 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i32 0, i32 2
  store i32 %590, i32* %594, align 4
  %595 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i32 0, i32 3
  store i32 %591, i32* %595, align 4
  %596 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i32 0, i32 %71
  %597 = load i32, i32* %596, align 4, !tbaa !31
  %598 = icmp ult i32 %586, %597
  br i1 %598, label %599, label %679, !dx.controlflow.hints !42

; <label>:599                                     ; preds = %574
  %600 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 151)  ; CBufferLoadLegacy(handle,regIndex)
  %601 = extractvalue %dx.types.CBufRet.i32 %600, 0
  %602 = extractvalue %dx.types.CBufRet.i32 %600, 1
  %603 = extractvalue %dx.types.CBufRet.i32 %600, 2
  %604 = extractvalue %dx.types.CBufRet.i32 %600, 3
  %605 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 0
  store i32 %601, i32* %605, align 4
  %606 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 1
  store i32 %602, i32* %606, align 4
  %607 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 2
  store i32 %603, i32* %607, align 4
  %608 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 3
  store i32 %604, i32* %608, align 4
  %609 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 %71
  %610 = load i32, i32* %609, align 4, !tbaa !31
  %611 = add i32 %610, %586
  %612 = shl i32 %611, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %612, i32 undef, i32 %79, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %679

; <label>:613                                     ; preds = %183
  %614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %615 = extractvalue %dx.types.CBufRet.f32 %614, 0
  %616 = extractvalue %dx.types.CBufRet.f32 %614, 1
  %617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 346)  ; CBufferLoadLegacy(handle,regIndex)
  %618 = extractvalue %dx.types.CBufRet.f32 %617, 0
  %619 = extractvalue %dx.types.CBufRet.f32 %617, 1
  %620 = fsub fast float %112, %615
  %621 = fadd fast float %620, %618
  %622 = call float @dx.op.unary.f32(i32 6, float %621)  ; FAbs(value)
  %623 = fsub fast float %622, %116
  %624 = call float @dx.op.binary.f32(i32 35, float %623, float 0.000000e+00)  ; FMax(a,b)
  %625 = fmul fast float %624, %624
  %626 = fsub fast float %114, %616
  %627 = fadd fast float %626, %619
  %628 = call float @dx.op.unary.f32(i32 6, float %627)  ; FAbs(value)
  %629 = fsub fast float %628, %117
  %630 = call float @dx.op.binary.f32(i32 35, float %629, float 0.000000e+00)  ; FMax(a,b)
  %631 = fmul fast float %630, %630
  %632 = fadd fast float %631, %625
  %633 = extractvalue %dx.types.CBufRet.f32 %617, 2
  %634 = fmul fast float %633, %633
  %635 = fcmp fast ole float %632, %634
  %636 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %637 = extractvalue %dx.types.CBufRet.i32 %636, 0
  %638 = icmp eq i32 %637, 0
  %639 = or i1 %635, %638
  br i1 %639, label %640, label %679, !dx.controlflow.hints !43

; <label>:640                                     ; preds = %613
  %641 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 192)  ; CBufferLoadLegacy(handle,regIndex)
  %642 = extractvalue %dx.types.CBufRet.i32 %641, 0
  %643 = extractvalue %dx.types.CBufRet.i32 %641, 1
  %644 = extractvalue %dx.types.CBufRet.i32 %641, 2
  %645 = extractvalue %dx.types.CBufRet.i32 %641, 3
  %646 = getelementptr inbounds [4 x i32], [4 x i32]* %29, i32 0, i32 0
  store i32 %642, i32* %646, align 4
  %647 = getelementptr inbounds [4 x i32], [4 x i32]* %29, i32 0, i32 1
  store i32 %643, i32* %647, align 4
  %648 = getelementptr inbounds [4 x i32], [4 x i32]* %29, i32 0, i32 2
  store i32 %644, i32* %648, align 4
  %649 = getelementptr inbounds [4 x i32], [4 x i32]* %29, i32 0, i32 3
  store i32 %645, i32* %649, align 4
  %650 = getelementptr inbounds [4 x i32], [4 x i32]* %29, i32 0, i32 %71
  %651 = load i32, i32* %650, align 4, !tbaa !31
  %652 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 0, i32 %651, i32 undef, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %653 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %654 = extractvalue %dx.types.CBufRet.i32 %653, 0
  %655 = extractvalue %dx.types.CBufRet.i32 %653, 1
  %656 = extractvalue %dx.types.CBufRet.i32 %653, 2
  %657 = extractvalue %dx.types.CBufRet.i32 %653, 3
  %658 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 0
  store i32 %654, i32* %658, align 4
  %659 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 1
  store i32 %655, i32* %659, align 4
  %660 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 2
  store i32 %656, i32* %660, align 4
  %661 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 3
  store i32 %657, i32* %661, align 4
  %662 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 %71
  %663 = load i32, i32* %662, align 4, !tbaa !31
  %664 = icmp ult i32 %652, %663
  br i1 %664, label %665, label %679, !dx.controlflow.hints !44

; <label>:665                                     ; preds = %640
  %666 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 153)  ; CBufferLoadLegacy(handle,regIndex)
  %667 = extractvalue %dx.types.CBufRet.i32 %666, 0
  %668 = extractvalue %dx.types.CBufRet.i32 %666, 1
  %669 = extractvalue %dx.types.CBufRet.i32 %666, 2
  %670 = extractvalue %dx.types.CBufRet.i32 %666, 3
  %671 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 0
  store i32 %667, i32* %671, align 4
  %672 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 1
  store i32 %668, i32* %672, align 4
  %673 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 2
  store i32 %669, i32* %673, align 4
  %674 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 3
  store i32 %670, i32* %674, align 4
  %675 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 %71
  %676 = load i32, i32* %675, align 4, !tbaa !31
  %677 = add i32 %676, %652
  %678 = shl i32 %677, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %678, i32 undef, i32 %79, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %679

; <label>:679                                     ; preds = %665, %640, %613, %599, %574, %70
  %680 = phi float [ %300, %599 ], [ %300, %574 ], [ 0.000000e+00, %665 ], [ 0.000000e+00, %640 ], [ 0.000000e+00, %613 ], [ 0.000000e+00, %70 ]
  %681 = phi float [ %301, %599 ], [ %301, %574 ], [ 0.000000e+00, %665 ], [ 0.000000e+00, %640 ], [ 0.000000e+00, %613 ], [ 0.000000e+00, %70 ]
  %682 = phi float [ %302, %599 ], [ %302, %574 ], [ 0.000000e+00, %665 ], [ 0.000000e+00, %640 ], [ 0.000000e+00, %613 ], [ 0.000000e+00, %70 ]
  %683 = phi float [ %303, %599 ], [ %303, %574 ], [ 0.000000e+00, %665 ], [ 0.000000e+00, %640 ], [ 0.000000e+00, %613 ], [ 0.000000e+00, %70 ]
  %684 = phi float [ %289, %599 ], [ %289, %574 ], [ 0.000000e+00, %665 ], [ 0.000000e+00, %640 ], [ 0.000000e+00, %613 ], [ 0.000000e+00, %70 ]
  %685 = phi float [ %290, %599 ], [ %290, %574 ], [ 0.000000e+00, %665 ], [ 0.000000e+00, %640 ], [ 0.000000e+00, %613 ], [ 0.000000e+00, %70 ]
  %686 = phi i32 [ %521, %599 ], [ %521, %574 ], [ 0, %665 ], [ 0, %640 ], [ 0, %613 ], [ 0, %70 ]
  %687 = phi i32 [ %522, %599 ], [ %522, %574 ], [ 0, %665 ], [ 0, %640 ], [ 0, %613 ], [ 0, %70 ]
  %688 = icmp ne i32 %686, 0
  %689 = and i1 %167, %688
  %690 = icmp eq i32 %38, 0
  br i1 %690, label %691, label %777, !dx.controlflow.hints !45

; <label>:691                                     ; preds = %679
  %692 = zext i1 %689 to i32
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %693 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %33
  store i32 %692, i32 addrspace(3)* %693, align 4, !tbaa !31, !noalias !46
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %694 = and i32 %33, 1
  %695 = icmp eq i32 %694, 0
  br i1 %695, label %702, label %696, !dx.controlflow.hints !50

; <label>:696                                     ; preds = %691
  %697 = and i32 %33, -2
  %698 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %697
  %699 = load i32, i32 addrspace(3)* %698, align 4, !tbaa !31, !noalias !46
  %700 = load i32, i32 addrspace(3)* %693, align 4, !tbaa !31, !noalias !46
  %701 = add i32 %700, %699
  store i32 %701, i32 addrspace(3)* %693, align 4, !tbaa !31, !noalias !46
  br label %702

; <label>:702                                     ; preds = %696, %691
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %703 = and i32 %33, 2
  %704 = icmp eq i32 %703, 0
  br i1 %704, label %712, label %705, !dx.controlflow.hints !51

; <label>:705                                     ; preds = %702
  %706 = and i32 %33, -4
  %707 = or i32 %706, 1
  %708 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %707
  %709 = load i32, i32 addrspace(3)* %708, align 4, !tbaa !31, !noalias !46
  %710 = load i32, i32 addrspace(3)* %693, align 4, !tbaa !31, !noalias !46
  %711 = add i32 %710, %709
  store i32 %711, i32 addrspace(3)* %693, align 4, !tbaa !31, !noalias !46
  br label %712

; <label>:712                                     ; preds = %705, %702
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %713 = and i32 %33, 4
  %714 = icmp eq i32 %713, 0
  br i1 %714, label %722, label %715, !dx.controlflow.hints !52

; <label>:715                                     ; preds = %712
  %716 = and i32 %33, -8
  %717 = or i32 %716, 3
  %718 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %717
  %719 = load i32, i32 addrspace(3)* %718, align 4, !tbaa !31, !noalias !46
  %720 = load i32, i32 addrspace(3)* %693, align 4, !tbaa !31, !noalias !46
  %721 = add i32 %720, %719
  store i32 %721, i32 addrspace(3)* %693, align 4, !tbaa !31, !noalias !46
  br label %722

; <label>:722                                     ; preds = %715, %712
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %723 = and i32 %33, 8
  %724 = icmp eq i32 %723, 0
  br i1 %724, label %732, label %725, !dx.controlflow.hints !53

; <label>:725                                     ; preds = %722
  %726 = and i32 %33, -16
  %727 = or i32 %726, 7
  %728 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %727
  %729 = load i32, i32 addrspace(3)* %728, align 4, !tbaa !31, !noalias !46
  %730 = load i32, i32 addrspace(3)* %693, align 4, !tbaa !31, !noalias !46
  %731 = add i32 %730, %729
  store i32 %731, i32 addrspace(3)* %693, align 4, !tbaa !31, !noalias !46
  br label %732

; <label>:732                                     ; preds = %725, %722
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %733 = and i32 %33, 16
  %734 = icmp eq i32 %733, 0
  br i1 %734, label %742, label %735, !dx.controlflow.hints !54

; <label>:735                                     ; preds = %732
  %736 = and i32 %33, -32
  %737 = or i32 %736, 15
  %738 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %737
  %739 = load i32, i32 addrspace(3)* %738, align 4, !tbaa !31, !noalias !46
  %740 = load i32, i32 addrspace(3)* %693, align 4, !tbaa !31, !noalias !46
  %741 = add i32 %740, %739
  store i32 %741, i32 addrspace(3)* %693, align 4, !tbaa !31, !noalias !46
  br label %742

; <label>:742                                     ; preds = %735, %732
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %743 = and i32 %33, 32
  %744 = icmp eq i32 %743, 0
  br i1 %744, label %745, label %747, !dx.controlflow.hints !55

; <label>:745                                     ; preds = %742
  %746 = load i32, i32 addrspace(3)* %693, align 4, !tbaa !31, !noalias !46
  br label %754

; <label>:747                                     ; preds = %742
  %748 = and i32 %33, -64
  %749 = or i32 %748, 31
  %750 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %749
  %751 = load i32, i32 addrspace(3)* %750, align 4, !tbaa !31, !noalias !46
  %752 = load i32, i32 addrspace(3)* %693, align 4, !tbaa !31, !noalias !46
  %753 = add i32 %752, %751
  store i32 %753, i32 addrspace(3)* %693, align 4, !tbaa !31, !noalias !46
  br label %754

; <label>:754                                     ; preds = %747, %745
  %755 = phi i32 [ %746, %745 ], [ %753, %747 ]
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %756 = sub i32 %755, %692
  %757 = icmp eq i32 %33, 0
  br i1 %757, label %758, label %761, !dx.controlflow.hints !56

; <label>:758                                     ; preds = %754
  %759 = load i32, i32 addrspace(3)* getelementptr inbounds ([64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 63), align 4, !tbaa !31, !noalias !46
  %760 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 0, i32 0, i32 undef, i32 undef, i32 %759)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  store i32 %760, i32 addrspace(3)* @"\01?groupshared_indexToFirstItem@@3IA", align 4, !tbaa !31
  br label %761

; <label>:761                                     ; preds = %758, %754
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %689, label %762, label %777, !dx.controlflow.hints !57

; <label>:762                                     ; preds = %761
  %763 = shl nsw i32 %71, 16
  %764 = and i32 %763, 458752
  %765 = select i1 %88, i32 0, i32 536870912
  %766 = or i32 %765, %764
  %767 = select i1 %162, i32 1073741824, i32 0
  %768 = or i32 %766, %767
  %769 = and i32 %687, -8
  %770 = icmp eq i32 %769, 8
  %771 = select i1 %770, i32 -2147483648, i32 0
  %772 = and i32 %687, 65535
  %773 = or i32 %768, %772
  %774 = or i32 %773, %771
  %775 = load i32, i32 addrspace(3)* @"\01?groupshared_indexToFirstItem@@3IA", align 4, !tbaa !31
  %776 = add i32 %775, %756
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %776, i32 0, i32 %79, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %776, i32 4, i32 %774, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %2, i32 %776, i32 8, float %680, float %681, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %2, i32 %776, i32 16, float %682, float %683, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %2, i32 %776, i32 24, float %684, float %685, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %777

; <label>:777                                     ; preds = %762, %761, %679
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind
declare i32 @dx.op.atomicBinOp.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32) #1

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #3

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #3

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #3

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #3

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #3

; Function Attrs: nounwind
declare void @dx.op.bufferStore.f32(i32, %dx.types.Handle, i32, i32, float, float, float, float, i8) #1

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { noduplicate nounwind }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!19}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !9, !15, null}
!5 = !{!6, !7, !8}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 4, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!8 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!9 = !{!10, !11, !12, !14}
!10 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!11 = !{i32 1, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!12 = !{i32 2, %"class.RWStructuredBuffer<GfxWaterTileGpuOcclusionCullingData>"* undef, !"", i32 0, i32 3, i32 1, i32 12, i1 false, i1 false, i1 false, !13}
!13 = !{i32 1, i32 32}
!14 = !{i32 3, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!15 = !{!16, !17, !18}
!16 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!17 = !{i32 1, %waterTileBucketing* undef, !"", i32 0, i32 1, i32 1, i32 16, null}
!18 = !{i32 2, %hostlayout.waterConstants* undef, !"", i32 0, i32 5, i32 1, i32 3376, null}
!19 = !{void ()* @cs_water_tile_buckets, !"cs_water_tile_buckets", null, !4, !20}
!20 = !{i32 0, i64 272, i32 4, !21}
!21 = !{i32 64, i32 1, i32 1}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = !{!32, !32, i64 0}
!32 = !{!"int", !33, i64 0}
!33 = !{!"omnipotent char", !34, i64 0}
!34 = !{!"Simple C/C++ TBAA"}
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
!46 = !{!47, !49}
!47 = distinct !{!47, !48, !"\01?TiledBitCountAndStreamCompact64@@YAXI_NAIAI1@Z: %outStreamIndex"}
!48 = distinct !{!48, !"\01?TiledBitCountAndStreamCompact64@@YAXI_NAIAI1@Z"}
!49 = distinct !{!49, !48, !"\01?TiledBitCountAndStreamCompact64@@YAXI_NAIAI1@Z: %outBitCount"}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}

