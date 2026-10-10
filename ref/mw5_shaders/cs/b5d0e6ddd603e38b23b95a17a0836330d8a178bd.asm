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
; shader hash: 0edd268865ae3beb40fc6718decaff78
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
;   [64 x i8] (type annotation not present)
;
; }
;
; cbuffer 
; {
;
;   [11728 x i8] (type annotation not present)
;
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
;   [8 x i8] (type annotation not present)
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb0     1
;                                   cbuffer      NA          NA     CB1            cb3     1
;                                   sampler      NA          NA      S0             s0     1
;                                   sampler      NA          NA      S1             s1     1
;                                   sampler      NA          NA      S2             s2     1
;                                   sampler      NA          NA      S3             s3     1
;                                   texture     f32     2darray      T0             t2     1
;                                   texture     f32     2darray      T1             t3     1
;                                   texture     f32     2darray      T2             t4     1
;                                   texture    byte         r/o      T3            t19     1
;                                   texture    byte         r/o      T4            t20     1
;                                   texture     f32          1d      T5            t13     1
;                                   texture     f32     2darray      T6            t12     1
;                                   texture     f32          2d      T7             t5     1
;                                   texture     f32          2d      T8             t6     1
;                                   texture     f32          2d      T9             t7     1
;                                   textureunorm_f32     2darray     T10            t14     1
;                                   texture    byte         r/o     T11             t1     1
;                                   texture     f32          2d     T12            t11     1
;                                   texture     f32          2d     T13            t10     1
;                                   texture     f32          2d     T14             t9     1
;                                   texture  struct         r/o     T15            t21     1
;                                   texture     u32         buf     T16            t22     1
;                                   texture     u32         buf     T17            t23     1
;                                   texture  struct         r/o     T18            t24     1
;                                       UAV     f32     2darray      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture1D<float>" = type { float, %"class.Texture1D<float>::mips_type" }
%"class.Texture1D<float>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.StructuredBuffer<GfxBSPAABBNodePacked>" = type { %struct.GfxBSPAABBNodePacked }
%struct.GfxBSPAABBNodePacked = type { i32, i32 }
%"class.Buffer<unsigned int>" = type { i32 }
%"class.RWTexture2DArray<vector<float, 3> >" = type { <3 x float> }
%GfxReflectionProbeRelightingConsts = type { <3 x float>, i32, <4 x float>, float, float, float, float, i32, i32, i32, i32 }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.SamplerComparisonState = type { i32 }
%struct.SamplerState = type { i32 }

@PCF_OFFSETS_8.v.1dim = internal constant [16 x float] [float 0xBFE6A09020000000, float 0x3FE6A09020000000, float 0.000000e+00, float -8.750000e-01, float 0x3FE0F837C0000000, float 0x3FE0F837C0000000, float -6.250000e-01, float 0.000000e+00, float 0x3FD6A161E0000000, float 0xBFD6A161E0000000, float 0.000000e+00, float 3.750000e-01, float 0xBFC6A161E0000000, float 0xBFC6A161E0000000, float 1.250000e-01, float 0.000000e+00], align 4

define void @cs_reflection_probe_relighting() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 24, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 23, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = alloca [4 x i32], align 4
  %28 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %29 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %30 = call i32 @dx.op.threadId.i32(i32 93, i32 2)  ; ThreadId(component)
  %31 = alloca [12 x float], align 4
  %32 = alloca [12 x float], align 4
  %33 = alloca [3 x float], align 4
  %34 = alloca [4 x float], align 4
  %35 = alloca [4 x float], align 4
  %36 = alloca [4 x float], align 4
  %37 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1, i32 0)  ; GetDimensions(handle,mipLevel)
  %38 = extractvalue %dx.types.Dimensions %37, 0
  %39 = extractvalue %dx.types.Dimensions %37, 1
  %40 = extractvalue %dx.types.Dimensions %37, 2
  %41 = icmp uge i32 %28, %38
  %42 = icmp uge i32 %29, %39
  %43 = or i1 %41, %42
  %44 = icmp uge i32 %30, %40
  %45 = or i1 %44, %43
  br i1 %45, label %1794, label %46, !dx.controlflow.hints !42

; <label>:46                                      ; preds = %0
  %47 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %20, i32 0)  ; GetDimensions(handle,mipLevel)
  %48 = extractvalue %dx.types.Dimensions %47, 0
  %49 = uitofp i32 %28 to float
  %50 = uitofp i32 %29 to float
  %51 = fadd fast float %49, 5.000000e-01
  %52 = fadd fast float %50, 5.000000e-01
  %53 = uitofp i32 %48 to float
  %54 = fdiv fast float 1.000000e+00, %53
  %55 = fmul fast float %51, 2.000000e+00
  %56 = fmul fast float %55, %54
  %57 = fmul fast float %52, 2.000000e+00
  %58 = fmul fast float %57, %54
  %59 = fadd fast float %56, -1.000000e+00
  %60 = fadd fast float %58, -1.000000e+00
  switch i32 %30, label %61 [
    i32 5, label %70
    i32 1, label %64
    i32 2, label %73
    i32 3, label %66
    i32 4, label %68
  ], !dx.controlflow.hints !43

; <label>:61                                      ; preds = %46
  %62 = fsub fast float -0.000000e+00, %60
  %63 = fsub fast float -0.000000e+00, %59
  br label %73

; <label>:64                                      ; preds = %46
  %65 = fsub fast float -0.000000e+00, %60
  br label %73

; <label>:66                                      ; preds = %46
  %67 = fsub fast float -0.000000e+00, %60
  br label %73

; <label>:68                                      ; preds = %46
  %69 = fsub fast float -0.000000e+00, %60
  br label %73

; <label>:70                                      ; preds = %46
  %71 = fsub fast float -0.000000e+00, %59
  %72 = fsub fast float -0.000000e+00, %60
  br label %73

; <label>:73                                      ; preds = %70, %68, %66, %64, %61, %46
  %74 = phi float [ 1.000000e+00, %61 ], [ %59, %68 ], [ %59, %66 ], [ -1.000000e+00, %64 ], [ %71, %70 ], [ %59, %46 ]
  %75 = phi float [ %62, %61 ], [ %69, %68 ], [ -1.000000e+00, %66 ], [ %65, %64 ], [ %72, %70 ], [ 1.000000e+00, %46 ]
  %76 = phi float [ %63, %61 ], [ 1.000000e+00, %68 ], [ %67, %66 ], [ %59, %64 ], [ -1.000000e+00, %70 ], [ %60, %46 ]
  %77 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %20, i32 0, i32 %28, i32 %29, i32 %30, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %78 = extractvalue %dx.types.ResRet.f32 %77, 0
  %79 = extractvalue %dx.types.ResRet.f32 %77, 1
  %80 = extractvalue %dx.types.ResRet.f32 %77, 2
  %81 = extractvalue %dx.types.ResRet.f32 %77, 3
  %82 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %19, i32 0, i32 %28, i32 %29, i32 %30, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %83 = extractvalue %dx.types.ResRet.f32 %82, 0
  %84 = extractvalue %dx.types.ResRet.f32 %82, 1
  %85 = extractvalue %dx.types.ResRet.f32 %82, 2
  %86 = extractvalue %dx.types.ResRet.f32 %82, 3
  %87 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %18, i32 0, i32 %28, i32 %29, i32 %30, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %88 = extractvalue %dx.types.ResRet.f32 %87, 0
  %89 = extractvalue %dx.types.ResRet.f32 %87, 1
  %90 = extractvalue %dx.types.ResRet.f32 %87, 2
  %91 = fmul fast float %81, 2.550000e+02
  %92 = fptoui float %91 to i32
  %93 = and i32 %92, 31
  %94 = icmp eq i32 %93, 31
  %95 = and i32 %92, 47
  %96 = icmp eq i32 %95, 47
  %97 = select i1 %96, float 1.000000e+00, float 0.000000e+00
  %98 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %99 = extractvalue %dx.types.CBufRet.f32 %98, 2
  %100 = fsub fast float 1.000000e+00, %97
  %101 = fmul fast float %99, %100
  %102 = fadd fast float %101, %97
  %103 = fcmp fast ole float %86, 0.000000e+00
  %104 = fmul fast float %83, 2.000000e+00
  %105 = fmul fast float %84, 2.000000e+00
  %106 = fmul fast float %85, 2.000000e+00
  %107 = fadd fast float %104, -1.000000e+00
  %108 = fadd fast float %105, -1.000000e+00
  %109 = fadd fast float %106, -1.000000e+00
  %110 = call float @dx.op.dot3.f32(i32 55, float %107, float %108, float %109, float %107, float %108, float %109)  ; Dot3(ax,ay,az,bx,by,bz)
  %111 = call float @dx.op.unary.f32(i32 25, float %110)  ; Rsqrt(value)
  %112 = fmul fast float %111, %107
  %113 = fmul fast float %111, %108
  %114 = fmul fast float %111, %109
  %115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %116 = extractvalue %dx.types.CBufRet.f32 %115, 0
  %117 = extractvalue %dx.types.CBufRet.f32 %115, 1
  %118 = extractvalue %dx.types.CBufRet.f32 %115, 2
  %119 = extractvalue %dx.types.CBufRet.f32 %115, 3
  %120 = fmul fast float %117, %114
  %121 = fmul fast float %118, %113
  %122 = fsub fast float %120, %121
  %123 = fmul fast float %118, %112
  %124 = fmul fast float %116, %114
  %125 = fsub fast float %123, %124
  %126 = fmul fast float %116, %113
  %127 = fmul fast float %117, %112
  %128 = fsub fast float %126, %127
  %129 = fmul fast float %122, 2.000000e+00
  %130 = fmul fast float %125, 2.000000e+00
  %131 = fmul fast float %128, 2.000000e+00
  %132 = fmul fast float %129, %119
  %133 = fmul fast float %130, %119
  %134 = fmul fast float %131, %119
  %135 = fadd fast float %132, %112
  %136 = fadd fast float %133, %113
  %137 = fadd fast float %134, %114
  %138 = fmul fast float %131, %117
  %139 = fmul fast float %130, %118
  %140 = fsub fast float %138, %139
  %141 = fmul fast float %129, %118
  %142 = fmul fast float %131, %116
  %143 = fsub fast float %141, %142
  %144 = fmul fast float %130, %116
  %145 = fmul fast float %129, %117
  %146 = fsub fast float %144, %145
  %147 = fadd fast float %135, %140
  %148 = fadd fast float %136, %143
  %149 = fadd fast float %137, %146
  %150 = fmul fast float %117, %76
  %151 = fmul fast float %118, %75
  %152 = fsub fast float %150, %151
  %153 = fmul fast float %118, %74
  %154 = fmul fast float %116, %76
  %155 = fsub fast float %153, %154
  %156 = fmul fast float %116, %75
  %157 = fmul fast float %117, %74
  %158 = fsub fast float %156, %157
  %159 = fmul fast float %152, 2.000000e+00
  %160 = fmul fast float %155, 2.000000e+00
  %161 = fmul fast float %158, 2.000000e+00
  %162 = fmul fast float %159, %119
  %163 = fmul fast float %160, %119
  %164 = fmul fast float %161, %119
  %165 = fmul fast float %161, %117
  %166 = fmul fast float %160, %118
  %167 = fmul fast float %159, %118
  %168 = fmul fast float %161, %116
  %169 = fmul fast float %160, %116
  %170 = fmul fast float %159, %117
  %171 = fadd fast float %162, %74
  %172 = fsub fast float %171, %166
  %173 = fadd fast float %172, %165
  %174 = fadd fast float %163, %75
  %175 = fsub fast float %174, %168
  %176 = fadd fast float %175, %167
  %177 = fadd fast float %164, %76
  %178 = fsub fast float %177, %170
  %179 = fadd fast float %178, %169
  %180 = fdiv fast float 4.000000e+00, %86
  %181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %182 = extractvalue %dx.types.CBufRet.f32 %181, 0
  %183 = extractvalue %dx.types.CBufRet.f32 %181, 1
  %184 = extractvalue %dx.types.CBufRet.f32 %181, 2
  %185 = fmul fast float %173, %180
  %186 = fmul fast float %176, %180
  %187 = fmul fast float %179, %180
  %188 = fmul fast float %78, %78
  %189 = fmul fast float %79, %79
  %190 = fmul fast float %80, %80
  %191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %192 = extractvalue %dx.types.CBufRet.f32 %191, 3
  %193 = fmul fast float %192, %88
  %194 = fmul fast float %192, %89
  %195 = fmul fast float %192, %90
  %196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %197 = extractvalue %dx.types.CBufRet.f32 %196, 0
  %198 = extractvalue %dx.types.CBufRet.f32 %196, 1
  %199 = extractvalue %dx.types.CBufRet.f32 %196, 2
  %200 = fsub fast float %182, %197
  %201 = fadd fast float %200, %185
  %202 = fsub fast float %183, %198
  %203 = fadd fast float %202, %186
  %204 = fsub fast float %184, %199
  %205 = fadd fast float %204, %187
  %206 = fsub fast float -0.000000e+00, %205
  %207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %208 = extractvalue %dx.types.CBufRet.f32 %207, 3
  %209 = fcmp fast oeq float %208, 0.000000e+00
  br i1 %209, label %1444, label %210, !dx.controlflow.hints !44

; <label>:210                                     ; preds = %73
  %211 = extractvalue %dx.types.CBufRet.f32 %207, 0
  %212 = extractvalue %dx.types.CBufRet.f32 %207, 1
  %213 = extractvalue %dx.types.CBufRet.f32 %207, 2
  %214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %215 = extractvalue %dx.types.CBufRet.f32 %214, 0
  %216 = extractvalue %dx.types.CBufRet.f32 %214, 1
  %217 = extractvalue %dx.types.CBufRet.f32 %214, 2
  %218 = fcmp fast olt float %208, 0.000000e+00
  br i1 %218, label %1254, label %219, !dx.controlflow.hints !45

; <label>:219                                     ; preds = %210
  %220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %221 = extractvalue %dx.types.CBufRet.f32 %220, 0
  %222 = extractvalue %dx.types.CBufRet.f32 %220, 1
  %223 = extractvalue %dx.types.CBufRet.f32 %220, 2
  %224 = extractvalue %dx.types.CBufRet.f32 %220, 3
  %225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %226 = extractvalue %dx.types.CBufRet.f32 %225, 0
  %227 = extractvalue %dx.types.CBufRet.f32 %225, 1
  %228 = extractvalue %dx.types.CBufRet.f32 %225, 2
  %229 = extractvalue %dx.types.CBufRet.f32 %225, 3
  %230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %231 = extractvalue %dx.types.CBufRet.f32 %230, 0
  %232 = extractvalue %dx.types.CBufRet.f32 %230, 1
  %233 = extractvalue %dx.types.CBufRet.f32 %230, 2
  %234 = extractvalue %dx.types.CBufRet.f32 %230, 3
  %235 = fmul fast float %221, %201
  %236 = call float @dx.op.tertiary.f32(i32 46, float %203, float %222, float %235)  ; FMad(a,b,c)
  %237 = call float @dx.op.tertiary.f32(i32 46, float %205, float %223, float %236)  ; FMad(a,b,c)
  %238 = fadd fast float %237, %224
  %239 = fmul fast float %226, %201
  %240 = call float @dx.op.tertiary.f32(i32 46, float %203, float %227, float %239)  ; FMad(a,b,c)
  %241 = call float @dx.op.tertiary.f32(i32 46, float %205, float %228, float %240)  ; FMad(a,b,c)
  %242 = fadd fast float %241, %229
  %243 = fmul fast float %231, %201
  %244 = call float @dx.op.tertiary.f32(i32 46, float %203, float %232, float %243)  ; FMad(a,b,c)
  %245 = call float @dx.op.tertiary.f32(i32 46, float %205, float %233, float %244)  ; FMad(a,b,c)
  %246 = fadd fast float %245, %234
  %247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %248 = extractvalue %dx.types.CBufRet.f32 %247, 0
  %249 = extractvalue %dx.types.CBufRet.f32 %247, 1
  %250 = extractvalue %dx.types.CBufRet.f32 %247, 3
  %251 = fmul fast float %250, %238
  %252 = fmul fast float %250, %242
  %253 = fadd fast float %251, %248
  %254 = fadd fast float %252, %249
  %255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %256 = extractvalue %dx.types.CBufRet.f32 %255, 0
  %257 = extractvalue %dx.types.CBufRet.f32 %255, 1
  %258 = extractvalue %dx.types.CBufRet.f32 %255, 3
  %259 = fmul fast float %258, %238
  %260 = fmul fast float %258, %242
  %261 = fadd fast float %259, %256
  %262 = fadd fast float %260, %257
  %263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %264 = extractvalue %dx.types.CBufRet.f32 %263, 1
  %265 = fsub fast float %264, %246
  %266 = extractvalue %dx.types.CBufRet.f32 %263, 2
  %267 = fmul fast float %265, %266
  %268 = fsub fast float 1.000000e+00, %267
  %269 = call float @dx.op.unary.f32(i32 7, float %268)  ; Saturate(value)
  %270 = extractvalue %dx.types.CBufRet.f32 %255, 2
  %271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %272 = extractvalue %dx.types.CBufRet.f32 %271, 2
  %273 = fadd fast float %272, %270
  %274 = fcmp fast ogt float %273, 0.000000e+00
  br i1 %274, label %275, label %300, !dx.controlflow.hints !46

; <label>:275                                     ; preds = %219
  %276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %277 = extractvalue %dx.types.CBufRet.f32 %276, 0
  %278 = extractvalue %dx.types.CBufRet.f32 %276, 1
  %279 = fsub fast float %261, %277
  %280 = fsub fast float %262, %278
  %281 = fcmp fast olt float %279, 0.000000e+00
  %282 = fcmp fast olt float %280, 0.000000e+00
  %283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %284 = extractvalue %dx.types.CBufRet.f32 %283, 0
  %285 = extractvalue %dx.types.CBufRet.f32 %283, 1
  %286 = extractvalue %dx.types.CBufRet.f32 %283, 2
  %287 = extractvalue %dx.types.CBufRet.f32 %283, 3
  %288 = select i1 %281, float %284, float %286
  %289 = select i1 %282, float %285, float %287
  %290 = fmul fast float %288, %279
  %291 = fmul fast float %289, %280
  %292 = call float @dx.op.unary.f32(i32 6, float %290)  ; FAbs(value)
  %293 = call float @dx.op.unary.f32(i32 6, float %291)  ; FAbs(value)
  %294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %295 = extractvalue %dx.types.CBufRet.f32 %294, 0
  %296 = call float @dx.op.binary.f32(i32 35, float %292, float %293)  ; FMax(a,b)
  %297 = fsub fast float %295, %296
  %298 = call float @dx.op.unary.f32(i32 7, float %297)  ; Saturate(value)
  %299 = fmul fast float %298, %269
  br label %300

; <label>:300                                     ; preds = %275, %219
  %301 = phi float [ %299, %275 ], [ 0.000000e+00, %219 ]
  %302 = extractvalue %dx.types.CBufRet.f32 %247, 2
  %303 = extractvalue %dx.types.CBufRet.f32 %271, 1
  %304 = fadd fast float %303, %302
  %305 = fcmp fast ogt float %304, 0.000000e+00
  br i1 %305, label %306, label %331, !dx.controlflow.hints !47

; <label>:306                                     ; preds = %300
  %307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %308 = extractvalue %dx.types.CBufRet.f32 %307, 0
  %309 = extractvalue %dx.types.CBufRet.f32 %307, 1
  %310 = fsub fast float %253, %308
  %311 = fsub fast float %254, %309
  %312 = fcmp fast olt float %310, 0.000000e+00
  %313 = fcmp fast olt float %311, 0.000000e+00
  %314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %315 = extractvalue %dx.types.CBufRet.f32 %314, 0
  %316 = extractvalue %dx.types.CBufRet.f32 %314, 1
  %317 = extractvalue %dx.types.CBufRet.f32 %314, 2
  %318 = extractvalue %dx.types.CBufRet.f32 %314, 3
  %319 = select i1 %312, float %315, float %317
  %320 = select i1 %313, float %316, float %318
  %321 = fmul fast float %319, %310
  %322 = fmul fast float %320, %311
  %323 = call float @dx.op.unary.f32(i32 6, float %321)  ; FAbs(value)
  %324 = call float @dx.op.unary.f32(i32 6, float %322)  ; FAbs(value)
  %325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %326 = extractvalue %dx.types.CBufRet.f32 %325, 0
  %327 = call float @dx.op.binary.f32(i32 35, float %323, float %324)  ; FMax(a,b)
  %328 = fsub fast float %326, %327
  %329 = call float @dx.op.unary.f32(i32 7, float %328)  ; Saturate(value)
  %330 = fmul fast float %329, %269
  br label %331

; <label>:331                                     ; preds = %306, %300
  %332 = phi float [ %330, %306 ], [ 0.000000e+00, %300 ]
  %333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %334 = extractvalue %dx.types.CBufRet.f32 %333, 1
  %335 = call float @dx.op.unary.f32(i32 7, float %334)  ; Saturate(value)
  %336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %337 = extractvalue %dx.types.CBufRet.f32 %336, 0
  %338 = extractvalue %dx.types.CBufRet.f32 %336, 1
  %339 = fsub fast float %238, %337
  %340 = fsub fast float %242, %338
  %341 = fcmp fast olt float %339, 0.000000e+00
  %342 = fcmp fast olt float %340, 0.000000e+00
  %343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %344 = extractvalue %dx.types.CBufRet.f32 %343, 0
  %345 = extractvalue %dx.types.CBufRet.f32 %343, 1
  %346 = extractvalue %dx.types.CBufRet.f32 %343, 2
  %347 = extractvalue %dx.types.CBufRet.f32 %343, 3
  %348 = select i1 %341, float %344, float %346
  %349 = select i1 %342, float %345, float %347
  %350 = fmul fast float %348, %339
  %351 = fmul fast float %349, %340
  %352 = call float @dx.op.unary.f32(i32 6, float %350)  ; FAbs(value)
  %353 = call float @dx.op.unary.f32(i32 6, float %351)  ; FAbs(value)
  %354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %355 = extractvalue %dx.types.CBufRet.f32 %354, 0
  %356 = call float @dx.op.binary.f32(i32 35, float %352, float %353)  ; FMax(a,b)
  %357 = fsub fast float %355, %356
  %358 = call float @dx.op.unary.f32(i32 7, float %357)  ; Saturate(value)
  %359 = call float @dx.op.binary.f32(i32 36, float %358, float %335)  ; FMin(a,b)
  %360 = fmul fast float %359, %269
  %361 = fsub fast float %332, %360
  %362 = fsub fast float %301, %332
  %363 = fsub fast float %362, %360
  %364 = call float @dx.op.binary.f32(i32 35, float %332, float %301)  ; FMax(a,b)
  %365 = call float @dx.op.binary.f32(i32 35, float %360, float %364)  ; FMax(a,b)
  %366 = fcmp fast olt float %365, 1.000000e+00
  br i1 %366, label %367, label %765, !dx.controlflow.hints !48

; <label>:367                                     ; preds = %331
  %368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %369 = extractvalue %dx.types.CBufRet.f32 %368, 0
  %370 = fcmp fast une float %369, 0.000000e+00
  br i1 %370, label %371, label %765, !dx.controlflow.hints !49

; <label>:371                                     ; preds = %367
  %372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %373 = extractvalue %dx.types.CBufRet.f32 %372, 0
  %374 = extractvalue %dx.types.CBufRet.f32 %372, 1
  %375 = extractvalue %dx.types.CBufRet.f32 %372, 2
  %376 = extractvalue %dx.types.CBufRet.f32 %372, 3
  %377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %378 = extractvalue %dx.types.CBufRet.f32 %377, 0
  %379 = extractvalue %dx.types.CBufRet.f32 %377, 1
  %380 = extractvalue %dx.types.CBufRet.f32 %377, 2
  %381 = extractvalue %dx.types.CBufRet.f32 %377, 3
  %382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %383 = extractvalue %dx.types.CBufRet.f32 %382, 0
  %384 = extractvalue %dx.types.CBufRet.f32 %382, 1
  %385 = extractvalue %dx.types.CBufRet.f32 %382, 2
  %386 = extractvalue %dx.types.CBufRet.f32 %382, 3
  %387 = fmul fast float %373, %201
  %388 = call float @dx.op.tertiary.f32(i32 46, float %203, float %374, float %387)  ; FMad(a,b,c)
  %389 = call float @dx.op.tertiary.f32(i32 46, float %205, float %375, float %388)  ; FMad(a,b,c)
  %390 = fadd fast float %389, %376
  %391 = fmul fast float %378, %201
  %392 = call float @dx.op.tertiary.f32(i32 46, float %203, float %379, float %391)  ; FMad(a,b,c)
  %393 = call float @dx.op.tertiary.f32(i32 46, float %205, float %380, float %392)  ; FMad(a,b,c)
  %394 = fadd fast float %393, %381
  %395 = fmul fast float %383, %201
  %396 = call float @dx.op.tertiary.f32(i32 46, float %203, float %384, float %395)  ; FMad(a,b,c)
  %397 = call float @dx.op.tertiary.f32(i32 46, float %205, float %385, float %396)  ; FMad(a,b,c)
  %398 = fadd fast float %397, %386
  %399 = fcmp fast oge float %390, 1.000000e+00
  %400 = fcmp fast oge float %394, 1.000000e+00
  %401 = or i1 %399, %400
  %402 = fcmp fast olt float %390, 0.000000e+00
  %403 = fcmp fast olt float %394, 0.000000e+00
  %404 = or i1 %402, %403
  %405 = or i1 %401, %404
  br i1 %405, label %765, label %406, !dx.controlflow.hints !50

; <label>:406                                     ; preds = %371
  %407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %408 = extractvalue %dx.types.CBufRet.f32 %407, 0
  %409 = extractvalue %dx.types.CBufRet.f32 %407, 1
  %410 = extractvalue %dx.types.CBufRet.f32 %407, 2
  %411 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %412 = extractvalue %dx.types.CBufRet.i32 %411, 2
  %413 = uitofp i32 %412 to float
  %414 = extractvalue %dx.types.CBufRet.i32 %411, 3
  %415 = uitofp i32 %414 to float
  %416 = extractvalue %dx.types.CBufRet.f32 %407, 3
  %417 = fmul fast float %416, 2.000000e+00
  %418 = fsub fast float %390, %408
  %419 = fsub fast float %394, %409
  %420 = fmul fast float %417, %418
  %421 = fmul fast float %417, %419
  %422 = fdiv fast float 1.000000e+00, %213
  %423 = fmul fast float %421, %422
  %424 = call float @dx.op.unary.f32(i32 6, float %423)  ; FAbs(value)
  %425 = fmul fast float %410, %205
  %426 = fmul fast float %425, %417
  %427 = call float @dx.op.unary.f32(i32 6, float %426)  ; FAbs(value)
  %428 = call float @dx.op.unary.f32(i32 6, float %420)  ; FAbs(value)
  %429 = call float @dx.op.binary.f32(i32 35, float %427, float %424)  ; FMax(a,b)
  %430 = call float @dx.op.binary.f32(i32 35, float %428, float %429)  ; FMax(a,b)
  %431 = fmul fast float %430, 2.000000e+00
  %432 = call float @dx.op.unary.f32(i32 23, float %431)  ; Log(value)
  %433 = call float @dx.op.binary.f32(i32 35, float %432, float %413)  ; FMax(a,b)
  %434 = call float @dx.op.unary.f32(i32 22, float %433)  ; Frc(value)
  %435 = fadd fast float %434, 0xBFEA666660000000
  %436 = fmul fast float %435, 8.000000e+00
  %437 = call float @dx.op.unary.f32(i32 7, float %436)  ; Saturate(value)
  %438 = call float @dx.op.unary.f32(i32 27, float %433)  ; Round_ni(value)
  %439 = fadd fast float %438, %437
  %440 = call float @dx.op.binary.f32(i32 36, float %439, float %415)  ; FMin(a,b)
  %441 = call float @dx.op.unary.f32(i32 27, float %440)  ; Round_ni(value)
  %442 = fsub fast float -0.000000e+00, %441
  %443 = call float @dx.op.unary.f32(i32 21, float %442)  ; Exp(value)
  %444 = fmul fast float %443, %417
  %445 = fmul fast float %444, %390
  %446 = fmul fast float %444, %394
  %447 = fmul fast float %445, 2.500000e-01
  %448 = fmul fast float %446, 2.500000e-01
  %449 = fadd fast float %447, 5.000000e-01
  %450 = fadd fast float %448, 5.000000e-01
  %451 = fsub fast float %415, %413
  %452 = fptoui float %451 to i32
  %453 = add i32 %452, 320
  %454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 %453)  ; CBufferLoadLegacy(handle,regIndex)
  %455 = extractvalue %dx.types.CBufRet.f32 %454, 0
  %456 = extractvalue %dx.types.CBufRet.f32 %454, 1
  %457 = fcmp fast une float %440, %415
  %458 = fsub fast float %390, %455
  %459 = fsub fast float %394, %456
  %460 = call float @dx.op.unary.f32(i32 6, float %458)  ; FAbs(value)
  %461 = call float @dx.op.unary.f32(i32 6, float %459)  ; FAbs(value)
  %462 = fmul fast float %460, %444
  %463 = fmul fast float %461, %444
  %464 = fcmp fast olt float %462, 1.000000e+00
  %465 = fcmp fast olt float %463, 1.000000e+00
  %466 = and i1 %464, %465
  %467 = or i1 %457, %466
  br i1 %467, label %468, label %765, !dx.controlflow.hints !51

; <label>:468                                     ; preds = %406
  %469 = fmul fast float %446, 5.000000e-01
  %470 = fmul fast float %445, 5.000000e-01
  %471 = fadd fast float %469, 5.000000e-01
  %472 = fadd fast float %470, 5.000000e-01
  %473 = sitofp i32 %412 to float
  %474 = fsub fast float %440, %473
  %475 = call float @dx.op.unary.f32(i32 27, float %474)  ; Round_ni(value)
  %476 = call float @dx.op.unary.f32(i32 22, float %440)  ; Frc(value)
  %477 = call float @dx.op.unary.f32(i32 22, float %472)  ; Frc(value)
  %478 = call float @dx.op.unary.f32(i32 22, float %471)  ; Frc(value)
  %479 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %21, float %477, float %478, float %475, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %480 = extractvalue %dx.types.ResRet.f32 %479, 0
  %481 = extractvalue %dx.types.ResRet.f32 %479, 1
  %482 = extractvalue %dx.types.ResRet.f32 %479, 2
  %483 = extractvalue %dx.types.ResRet.f32 %479, 3
  %484 = fcmp fast ogt float %476, 0.000000e+00
  br i1 %484, label %485, label %506, !dx.controlflow.hints !52

; <label>:485                                     ; preds = %468
  %486 = fadd fast float %475, 1.000000e+00
  %487 = call float @dx.op.unary.f32(i32 22, float %449)  ; Frc(value)
  %488 = call float @dx.op.unary.f32(i32 22, float %450)  ; Frc(value)
  %489 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %21, float %487, float %488, float %486, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %490 = extractvalue %dx.types.ResRet.f32 %489, 0
  %491 = extractvalue %dx.types.ResRet.f32 %489, 1
  %492 = extractvalue %dx.types.ResRet.f32 %489, 2
  %493 = extractvalue %dx.types.ResRet.f32 %489, 3
  %494 = fsub fast float %490, %480
  %495 = fsub fast float %491, %481
  %496 = fsub fast float %492, %482
  %497 = fsub fast float %493, %483
  %498 = fmul fast float %494, %476
  %499 = fmul fast float %495, %476
  %500 = fmul fast float %496, %476
  %501 = fmul fast float %497, %476
  %502 = fadd fast float %498, %480
  %503 = fadd fast float %499, %481
  %504 = fadd fast float %500, %482
  %505 = fadd fast float %501, %483
  br label %506

; <label>:506                                     ; preds = %485, %468
  %507 = phi float [ %502, %485 ], [ %480, %468 ]
  %508 = phi float [ %503, %485 ], [ %481, %468 ]
  %509 = phi float [ %504, %485 ], [ %482, %468 ]
  %510 = phi float [ %505, %485 ], [ %483, %468 ]
  %511 = fadd fast float %507, -5.000000e-01
  %512 = fadd fast float %509, -5.000000e-01
  %513 = fmul fast float %511, 0xBFD5555560000000
  %514 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %512, float %513)  ; FMad(a,b,c)
  %515 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %508, float 0.000000e+00)  ; FMad(a,b,c)
  %516 = fadd fast float %515, %510
  %517 = fmul fast float %511, -7.500000e-01
  %518 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %512, float %517)  ; FMad(a,b,c)
  %519 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %508, float 0.000000e+00)  ; FMad(a,b,c)
  %520 = fadd fast float %519, %510
  %521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %522 = extractvalue %dx.types.CBufRet.f32 %521, 0
  %523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %524 = extractvalue %dx.types.CBufRet.f32 %523, 0
  %525 = extractvalue %dx.types.CBufRet.f32 %523, 1
  %526 = extractvalue %dx.types.CBufRet.f32 %523, 2
  %527 = extractvalue %dx.types.CBufRet.f32 %523, 3
  %528 = fsub fast float %524, %514
  %529 = fsub fast float %525, %516
  %530 = fsub fast float %526, %518
  %531 = fsub fast float %527, %520
  %532 = fmul fast float %528, %522
  %533 = fmul fast float %529, %522
  %534 = fmul fast float %530, %522
  %535 = fmul fast float %531, %522
  %536 = fadd fast float %532, %514
  %537 = fadd fast float %533, %516
  %538 = fadd fast float %534, %518
  %539 = fadd fast float %535, %520
  %540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %541 = extractvalue %dx.types.ResRet.i32 %540, 0
  %542 = and i32 %541, 536870911
  %543 = uitofp i32 %542 to float
  %544 = fmul fast float %543, %390
  %545 = fmul fast float %543, %394
  %546 = fptoui float %544 to i32
  %547 = fptoui float %545 to i32
  %548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %549 = extractvalue %dx.types.ResRet.i32 %548, 0
  %550 = and i32 %549, 31
  %551 = lshr i32 %546, %550
  %552 = lshr i32 %547, %550
  %553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %554 = extractvalue %dx.types.ResRet.i32 %553, 0
  %555 = and i32 %554, 31
  %556 = shl i32 1, %555
  %557 = call i32 @dx.op.binary.i32(i32 40, i32 %556, i32 4)  ; UMin(a,b)
  %558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %559 = extractvalue %dx.types.ResRet.i32 %558, 0
  %560 = extractvalue %dx.types.ResRet.i32 %558, 1
  %561 = icmp eq i32 %557, 0
  br i1 %561, label %603, label %562

; <label>:562                                     ; preds = %506
  br label %563

; <label>:563                                     ; preds = %591, %562
  %564 = phi i32 [ %594, %591 ], [ 0, %562 ]
  %565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %566 = extractvalue %dx.types.ResRet.i32 %565, 0
  %567 = lshr i32 %566, 16
  %568 = and i32 %567, 31
  %569 = shl i32 %552, %568
  %570 = add i32 %569, %551
  %571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %572 = extractvalue %dx.types.ResRet.i32 %571, 0
  %573 = and i32 %572, 31
  %574 = shl i32 %570, %573
  %575 = add i32 %574, %564
  %576 = shl i32 %575, 2
  %577 = add i32 %576, 32
  %578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %577, i32 undef)  ; BufferLoad(srv,index,wot)
  %579 = extractvalue %dx.types.ResRet.i32 %578, 0
  %580 = icmp slt i32 %579, 0
  %581 = getelementptr [12 x float], [12 x float]* %31, i32 0, i32 %564
  %582 = getelementptr [12 x float], [12 x float]* %32, i32 0, i32 %564
  %583 = bitcast float* %581 to i32*
  %584 = bitcast float* %582 to i32*
  br i1 %580, label %585, label %591, !dx.controlflow.hints !53

; <label>:585                                     ; preds = %563
  %586 = and i32 %579, 1073741823
  %587 = add nuw nsw i32 %586, 20
  %588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %587, i32 undef)  ; BufferLoad(srv,index,wot)
  %589 = extractvalue %dx.types.ResRet.i32 %588, 0
  %590 = extractvalue %dx.types.ResRet.i32 %588, 1
  br label %591

; <label>:591                                     ; preds = %585, %563
  %592 = phi i32 [ %589, %585 ], [ %559, %563 ]
  %593 = phi i32 [ %590, %585 ], [ %560, %563 ]
  store i32 %592, i32* %583, align 4
  store i32 %593, i32* %584, align 4
  %594 = add nuw i32 %564, 1
  %595 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %596 = extractvalue %dx.types.CBufRet.i32 %595, 2
  %597 = icmp eq i32 %596, 0
  %598 = icmp ugt i32 %579, -1073741825
  %599 = and i1 %598, %597
  %600 = icmp ult i32 %594, %557
  %601 = and i1 %599, %600
  br i1 %601, label %563, label %602, !dx.controlflow.hints !54

; <label>:602                                     ; preds = %591
  br label %603

; <label>:603                                     ; preds = %602, %506
  %604 = phi i32 [ 0, %506 ], [ %594, %602 ]
  %605 = extractvalue %dx.types.CBufRet.f32 %368, 2
  %606 = fptoui float %605 to i32
  %607 = icmp eq i32 %606, 0
  br i1 %607, label %659, label %608

; <label>:608                                     ; preds = %603
  br label %609

; <label>:609                                     ; preds = %654, %608
  %610 = phi i32 [ %655, %654 ], [ %604, %608 ]
  %611 = phi i32 [ %656, %654 ], [ 0, %608 ]
  %612 = lshr i32 %611, 2
  %613 = and i32 %611, 3
  %614 = add nuw nsw i32 %612, 83
  %615 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 %614)  ; CBufferLoadLegacy(handle,regIndex)
  %616 = extractvalue %dx.types.CBufRet.i32 %615, 0
  %617 = extractvalue %dx.types.CBufRet.i32 %615, 1
  %618 = extractvalue %dx.types.CBufRet.i32 %615, 2
  %619 = extractvalue %dx.types.CBufRet.i32 %615, 3
  %620 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i32 0, i32 0
  store i32 %616, i32* %620, align 4
  %621 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i32 0, i32 1
  store i32 %617, i32* %621, align 4
  %622 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i32 0, i32 2
  store i32 %618, i32* %622, align 4
  %623 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i32 0, i32 3
  store i32 %619, i32* %623, align 4
  %624 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i32 0, i32 %613
  %625 = load i32, i32* %624, align 4, !tbaa !55, !noalias !59
  %626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %627 = extractvalue %dx.types.ResRet.i32 %626, 0
  %628 = lshr i32 %627, 16
  %629 = and i32 %628, 31
  %630 = shl i32 %552, %629
  %631 = add i32 %630, %551
  %632 = shl i32 %631, 2
  %633 = add i32 %632, %625
  %634 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %633, i32 undef)  ; BufferLoad(srv,index,wot)
  %635 = extractvalue %dx.types.ResRet.i32 %634, 0
  %636 = icmp eq i32 %635, 0
  br i1 %636, label %654, label %637, !dx.controlflow.hints !64

; <label>:637                                     ; preds = %609
  %638 = icmp slt i32 %635, 0
  %639 = getelementptr [12 x float], [12 x float]* %31, i32 0, i32 %610
  %640 = getelementptr [12 x float], [12 x float]* %32, i32 0, i32 %610
  %641 = bitcast float* %639 to i32*
  %642 = bitcast float* %640 to i32*
  br i1 %638, label %643, label %650, !dx.controlflow.hints !65

; <label>:643                                     ; preds = %637
  %644 = and i32 %635, 1073741823
  %645 = add i32 %625, 20
  %646 = add i32 %645, %644
  %647 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %646, i32 undef)  ; BufferLoad(srv,index,wot)
  %648 = extractvalue %dx.types.ResRet.i32 %647, 0
  %649 = extractvalue %dx.types.ResRet.i32 %647, 1
  br label %650

; <label>:650                                     ; preds = %643, %637
  %651 = phi i32 [ %648, %643 ], [ %559, %637 ]
  %652 = phi i32 [ %649, %643 ], [ %560, %637 ]
  store i32 %651, i32* %641, align 4
  store i32 %652, i32* %642, align 4
  %653 = add i32 %610, 1
  br label %654

; <label>:654                                     ; preds = %650, %609
  %655 = phi i32 [ %610, %609 ], [ %653, %650 ]
  %656 = add nuw i32 %611, 1
  %657 = icmp eq i32 %656, %606
  br i1 %657, label %658, label %609

; <label>:658                                     ; preds = %654
  br label %659

; <label>:659                                     ; preds = %658, %603
  %660 = phi i32 [ %604, %603 ], [ %655, %658 ]
  %661 = icmp eq i32 %660, 1
  %662 = getelementptr [12 x float], [12 x float]* %31, i32 0, i32 0
  %663 = getelementptr [12 x float], [12 x float]* %32, i32 0, i32 0
  br i1 %661, label %664, label %667, !dx.controlflow.hints !66

; <label>:664                                     ; preds = %659
  %665 = load float, float* %662, align 4
  %666 = load float, float* %663, align 4
  br label %694

; <label>:667                                     ; preds = %659
  %668 = load float, float* %662, align 4
  %669 = load float, float* %663, align 4
  %670 = fdiv fast float 1.000000e+00, %669
  %671 = fsub fast float %668, %670
  %672 = icmp ugt i32 %660, 1
  br i1 %672, label %673, label %689

; <label>:673                                     ; preds = %667
  br label %674

; <label>:674                                     ; preds = %674, %673
  %675 = phi float [ %684, %674 ], [ %671, %673 ]
  %676 = phi float [ %685, %674 ], [ %668, %673 ]
  %677 = phi i32 [ %686, %674 ], [ 1, %673 ]
  %678 = getelementptr [12 x float], [12 x float]* %31, i32 0, i32 %677
  %679 = load float, float* %678, align 4
  %680 = getelementptr [12 x float], [12 x float]* %32, i32 0, i32 %677
  %681 = load float, float* %680, align 4
  %682 = fdiv fast float 1.000000e+00, %681
  %683 = fsub fast float %679, %682
  %684 = call float @dx.op.binary.f32(i32 36, float %675, float %683)  ; FMin(a,b)
  %685 = call float @dx.op.binary.f32(i32 35, float %676, float %679)  ; FMax(a,b)
  %686 = add nuw i32 %677, 1
  %687 = icmp eq i32 %686, %660
  br i1 %687, label %688, label %674

; <label>:688                                     ; preds = %674
  br label %689

; <label>:689                                     ; preds = %688, %667
  %690 = phi float [ %671, %667 ], [ %684, %688 ]
  %691 = phi float [ %668, %667 ], [ %685, %688 ]
  %692 = fsub fast float %691, %690
  %693 = fdiv fast float 1.000000e+00, %692
  br label %694

; <label>:694                                     ; preds = %689, %664
  %695 = phi float [ %665, %664 ], [ %691, %689 ]
  %696 = phi float [ %666, %664 ], [ %693, %689 ]
  %697 = fadd fast float %398, %695
  %698 = fmul fast float %697, %696
  %699 = call float @dx.op.unary.f32(i32 7, float %698)  ; Saturate(value)
  %700 = fmul fast float %699, 2.000000e+00
  %701 = fsub fast float 1.000000e+00, %700
  %702 = fmul fast float %536, %536
  %703 = fsub fast float %537, %702
  %704 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %703)  ; FMax(a,b)
  %705 = fdiv fast float 1.000000e+00, %704
  %706 = fmul fast float %537, %536
  %707 = fsub fast float %538, %706
  %708 = fsub fast float %701, %536
  %709 = fmul fast float %701, %701
  %710 = fsub fast float %709, %537
  %711 = fmul fast float %705, %707
  %712 = fmul fast float %711, %708
  %713 = fsub fast float %710, %712
  %714 = fmul fast float %537, %537
  %715 = fsub fast float %539, %714
  %716 = fmul fast float %707, %707
  %717 = fmul fast float %716, %705
  %718 = fsub fast float %715, %717
  %719 = fdiv fast float %713, %718
  %720 = fmul fast float %719, %707
  %721 = fsub fast float %708, %720
  %722 = fmul fast float %721, %705
  %723 = fmul fast float %722, %536
  %724 = fsub fast float 1.000000e+00, %723
  %725 = fmul fast float %719, %537
  %726 = fsub fast float %724, %725
  %727 = fmul fast float %722, %722
  %728 = fmul fast float %719, 4.000000e+00
  %729 = fmul fast float %728, %726
  %730 = fsub fast float %727, %729
  %731 = call float @dx.op.unary.f32(i32 24, float %730)  ; Sqrt(value)
  %732 = fcmp fast oge float %722, 0.000000e+00
  %733 = fsub fast float -0.000000e+00, %731
  %734 = select i1 %732, float %733, float %731
  %735 = fsub fast float %734, %722
  %736 = fdiv fast float %735, %719
  %737 = fdiv fast float %726, %735
  %738 = fmul fast float %736, 5.000000e-01
  %739 = fmul fast float %737, 2.000000e+00
  %740 = select i1 %732, float %738, float %739
  %741 = select i1 %732, float %739, float %738
  %742 = call float @dx.op.binary.f32(i32 35, float %740, float %741)  ; FMax(a,b)
  %743 = call float @dx.op.binary.f32(i32 36, float %740, float %741)  ; FMin(a,b)
  %744 = fcmp fast ogt float %701, %742
  %745 = fsub fast float %701, %743
  %746 = fsub fast float %701, %742
  %747 = fsub fast float %742, %743
  %748 = select i1 %744, float %746, float %747
  %749 = fmul float %745, %748
  %750 = select i1 %744, float %743, float %701
  %751 = fcmp fast ogt float %701, %743
  %752 = fmul fast float %750, %742
  %753 = fadd fast float %750, %742
  %754 = fmul fast float %753, %536
  %755 = fadd fast float %752, %537
  %756 = fsub fast float %755, %754
  %757 = fdiv fast float %756, %749
  %758 = select i1 %751, float %757, float 0.000000e+00
  %759 = fsub fast float 1.000000e+00, %758
  %760 = select i1 %744, float %759, float %758
  %761 = call float @dx.op.unary.f32(i32 7, float %760)  ; Saturate(value)
  %762 = extractvalue %dx.types.CBufRet.f32 %521, 3
  %763 = fmul fast float %762, %761
  %764 = fsub fast float 1.000000e+00, %763
  br label %765

; <label>:765                                     ; preds = %694, %406, %371, %367, %331
  %766 = phi float [ 1.000000e+00, %331 ], [ %764, %694 ], [ 1.000000e+00, %371 ], [ 1.000000e+00, %406 ], [ 1.000000e+00, %367 ]
  %767 = fcmp fast ogt float %363, 0.000000e+00
  br i1 %767, label %768, label %923, !dx.controlflow.hints !67

; <label>:768                                     ; preds = %765
  %769 = fadd fast float %272, %246
  %770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %771 = extractvalue %dx.types.CBufRet.f32 %770, 2
  %772 = extractvalue %dx.types.CBufRet.f32 %770, 3
  %773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %774 = extractvalue %dx.types.CBufRet.f32 %773, 2
  %775 = call float @dx.op.binary.f32(i32 35, float %769, float 0.000000e+00)  ; FMax(a,b)
  %776 = fadd fast float %775, 0x3F10000000000000
  %777 = fcmp fast oeq float %774, 0.000000e+00
  br i1 %777, label %779, label %778, !dx.controlflow.hints !68

; <label>:778                                     ; preds = %768
  br label %846

; <label>:779                                     ; preds = %768
  %780 = extractvalue %dx.types.CBufRet.f32 %770, 1
  %781 = extractvalue %dx.types.CBufRet.f32 %770, 0
  %782 = fmul fast float %781, %261
  %783 = fmul fast float %780, %262
  %784 = fadd fast float %782, 5.000000e-01
  %785 = call float @dx.op.unary.f32(i32 27, float %784)  ; Round_ni(value)
  %786 = fadd fast float %783, 5.000000e-01
  %787 = call float @dx.op.unary.f32(i32 27, float %786)  ; Round_ni(value)
  %788 = fsub fast float %784, %785
  %789 = fsub fast float %786, %787
  %790 = fadd fast float %785, -5.000000e-01
  %791 = fadd fast float %787, -5.000000e-01
  %792 = fmul fast float %788, 2.000000e+00
  %793 = fsub fast float 3.000000e+00, %792
  %794 = fadd fast float %792, 1.000000e+00
  %795 = fsub fast float 2.000000e+00, %788
  %796 = bitcast float %793 to i32
  %797 = sub nsw i32 2129859010, %796
  %798 = bitcast i32 %797 to float
  %799 = fmul fast float %798, %795
  %800 = fadd fast float %799, -1.000000e+00
  %801 = bitcast float %794 to i32
  %802 = sub nsw i32 2129859010, %801
  %803 = bitcast i32 %802 to float
  %804 = fmul fast float %803, %788
  %805 = fadd fast float %804, 1.000000e+00
  %806 = fmul fast float %789, 2.000000e+00
  %807 = fsub fast float 3.000000e+00, %806
  %808 = fadd fast float %806, 1.000000e+00
  %809 = fsub fast float 2.000000e+00, %789
  %810 = bitcast float %807 to i32
  %811 = sub nsw i32 2129859010, %810
  %812 = bitcast i32 %811 to float
  %813 = fmul fast float %812, %809
  %814 = fadd fast float %813, -1.000000e+00
  %815 = bitcast float %808 to i32
  %816 = sub nsw i32 2129859010, %815
  %817 = bitcast i32 %816 to float
  %818 = fmul fast float %817, %789
  %819 = fadd fast float %818, 1.000000e+00
  %820 = fadd fast float %800, %790
  %821 = fmul fast float %820, %771
  %822 = fadd fast float %814, %791
  %823 = fmul fast float %822, %772
  %824 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %24, float %821, float %823, float undef, float undef, i32 0, i32 0, i32 undef, float %776)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %825 = extractvalue %dx.types.ResRet.f32 %824, 0
  %826 = fmul fast float %825, %793
  %827 = fadd fast float %805, %790
  %828 = fmul fast float %827, %771
  %829 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %24, float %828, float %823, float undef, float undef, i32 0, i32 0, i32 undef, float %776)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %830 = extractvalue %dx.types.ResRet.f32 %829, 0
  %831 = fmul fast float %830, %794
  %832 = fadd fast float %819, %791
  %833 = fmul fast float %832, %772
  %834 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %24, float %821, float %833, float undef, float undef, i32 0, i32 0, i32 undef, float %776)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %835 = extractvalue %dx.types.ResRet.f32 %834, 0
  %836 = fmul fast float %835, %793
  %837 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %24, float %828, float %833, float undef, float undef, i32 0, i32 0, i32 undef, float %776)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %838 = extractvalue %dx.types.ResRet.f32 %837, 0
  %839 = fmul fast float %838, %794
  %840 = fadd fast float %839, %836
  %841 = fmul fast float %840, %808
  %842 = fadd fast float %831, %826
  %843 = fmul fast float %842, %807
  %844 = fadd fast float %843, %841
  %845 = fmul fast float %844, 6.250000e-02
  br label %923

; <label>:846                                     ; preds = %892, %778
  %847 = phi float [ %887, %892 ], [ 0.000000e+00, %778 ]
  %848 = phi float [ %889, %892 ], [ 0.000000e+00, %778 ]
  %849 = phi i32 [ %893, %892 ], [ 0, %778 ]
  %850 = mul i32 %849, 2
  %851 = add i32 0, %850
  %852 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %851
  %853 = load float, float* %852, align 4
  %854 = mul i32 %849, 2
  %855 = add i32 1, %854
  %856 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %855
  %857 = load float, float* %856, align 4
  %858 = call float @dx.op.tertiary.f32(i32 46, float %857, float -0.000000e+00, float %853)  ; FMad(a,b,c)
  %859 = fmul fast float %858, %774
  %860 = fmul fast float %857, %774
  %861 = fadd fast float %859, %261
  %862 = fadd fast float %860, %262
  %863 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %11, %dx.types.Handle %23, float %861, float %862, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %864 = extractvalue %dx.types.ResRet.f32 %863, 0
  %865 = extractvalue %dx.types.ResRet.f32 %863, 1
  %866 = extractvalue %dx.types.ResRet.f32 %863, 2
  %867 = extractvalue %dx.types.ResRet.f32 %863, 3
  %868 = getelementptr inbounds [4 x float], [4 x float]* %36, i32 0, i32 0
  store float %864, float* %868, align 4
  %869 = getelementptr inbounds [4 x float], [4 x float]* %36, i32 0, i32 1
  store float %865, float* %869, align 4
  %870 = getelementptr inbounds [4 x float], [4 x float]* %36, i32 0, i32 2
  store float %866, float* %870, align 4
  %871 = getelementptr inbounds [4 x float], [4 x float]* %36, i32 0, i32 3
  store float %867, float* %871, align 4
  %872 = fsub fast float %864, %776
  %873 = fcmp fast olt float %872, 0.000000e+00
  %874 = select i1 %873, float 0.000000e+00, float 1.000000e+00
  %875 = fadd fast float %874, %847
  %876 = fmul fast float %874, %872
  %877 = fadd fast float %876, %848
  br label %878

; <label>:878                                     ; preds = %878, %846
  %879 = phi i32 [ 1, %846 ], [ %890, %878 ]
  %880 = phi float [ %877, %846 ], [ %889, %878 ]
  %881 = phi float [ %875, %846 ], [ %887, %878 ]
  %882 = getelementptr [4 x float], [4 x float]* %36, i32 0, i32 %879
  %883 = load float, float* %882, align 4, !tbaa !69, !noalias !59
  %884 = fsub fast float %883, %776
  %885 = fcmp fast olt float %884, 0.000000e+00
  %886 = select i1 %885, float 0.000000e+00, float 1.000000e+00
  %887 = fadd fast float %886, %881
  %888 = fmul fast float %886, %884
  %889 = fadd fast float %888, %880
  %890 = add nuw nsw i32 %879, 1
  %891 = icmp eq i32 %890, 4
  br i1 %891, label %892, label %878, !llvm.loop !71

; <label>:892                                     ; preds = %878
  %893 = add nuw nsw i32 %849, 1
  %894 = icmp eq i32 %893, 8
  br i1 %894, label %895, label %846, !llvm.loop !73

; <label>:895                                     ; preds = %892
  %896 = fdiv fast float 1.000000e+00, %887
  %897 = fmul fast float %896, %889
  %898 = fdiv fast float 1.000000e+00, %776
  %899 = fmul fast float %897, %898
  %900 = call float @dx.op.unary.f32(i32 7, float %899)  ; Saturate(value)
  %901 = call float @dx.op.binary.f32(i32 35, float %900, float 0.000000e+00)  ; FMax(a,b)
  %902 = fmul fast float %887, 3.125000e-02
  %903 = call float @dx.op.unary.f32(i32 7, float %902)  ; Saturate(value)
  %904 = fmul fast float %903, 2.000000e+00
  %905 = fadd fast float %904, -1.000000e+00
  %906 = fcmp fast ogt float %905, 0.000000e+00
  %907 = fcmp fast olt float %905, 0.000000e+00
  %908 = zext i1 %906 to i32
  %909 = zext i1 %907 to i32
  %910 = sub nsw i32 %908, %909
  %911 = sitofp i32 %910 to float
  %912 = fmul fast float %911, %905
  %913 = fsub fast float 1.000000e+00, %912
  %914 = fmul fast float %913, %913
  %915 = fmul fast float %914, %913
  %916 = fsub fast float %913, %915
  %917 = fmul fast float %916, %901
  %918 = fsub fast float 1.000000e+00, %915
  %919 = fsub fast float %918, %917
  %920 = fmul fast float %911, 5.000000e-01
  %921 = fmul fast float %920, %919
  %922 = fsub fast float 5.000000e-01, %921
  br label %923

; <label>:923                                     ; preds = %895, %779, %765
  %924 = phi float [ 1.000000e+00, %765 ], [ %845, %779 ], [ %922, %895 ]
  %925 = fcmp fast ogt float %361, 0.000000e+00
  br i1 %925, label %926, label %1083, !dx.controlflow.hints !74

; <label>:926                                     ; preds = %923
  %927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %928 = extractvalue %dx.types.CBufRet.f32 %927, 1
  %929 = fadd fast float %928, %246
  %930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %931 = extractvalue %dx.types.CBufRet.f32 %930, 2
  %932 = extractvalue %dx.types.CBufRet.f32 %930, 3
  %933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %934 = extractvalue %dx.types.CBufRet.f32 %933, 1
  %935 = call float @dx.op.binary.f32(i32 35, float %929, float 0.000000e+00)  ; FMax(a,b)
  %936 = fadd fast float %935, 0x3F10000000000000
  %937 = fcmp fast oeq float %934, 0.000000e+00
  br i1 %937, label %939, label %938, !dx.controlflow.hints !68

; <label>:938                                     ; preds = %926
  br label %1006

; <label>:939                                     ; preds = %926
  %940 = extractvalue %dx.types.CBufRet.f32 %930, 1
  %941 = extractvalue %dx.types.CBufRet.f32 %930, 0
  %942 = fmul fast float %941, %253
  %943 = fmul fast float %940, %254
  %944 = fadd fast float %942, 5.000000e-01
  %945 = call float @dx.op.unary.f32(i32 27, float %944)  ; Round_ni(value)
  %946 = fadd fast float %943, 5.000000e-01
  %947 = call float @dx.op.unary.f32(i32 27, float %946)  ; Round_ni(value)
  %948 = fsub fast float %944, %945
  %949 = fsub fast float %946, %947
  %950 = fadd fast float %945, -5.000000e-01
  %951 = fadd fast float %947, -5.000000e-01
  %952 = fmul fast float %948, 2.000000e+00
  %953 = fsub fast float 3.000000e+00, %952
  %954 = fadd fast float %952, 1.000000e+00
  %955 = fsub fast float 2.000000e+00, %948
  %956 = bitcast float %953 to i32
  %957 = sub nsw i32 2129859010, %956
  %958 = bitcast i32 %957 to float
  %959 = fmul fast float %958, %955
  %960 = fadd fast float %959, -1.000000e+00
  %961 = bitcast float %954 to i32
  %962 = sub nsw i32 2129859010, %961
  %963 = bitcast i32 %962 to float
  %964 = fmul fast float %963, %948
  %965 = fadd fast float %964, 1.000000e+00
  %966 = fmul fast float %949, 2.000000e+00
  %967 = fsub fast float 3.000000e+00, %966
  %968 = fadd fast float %966, 1.000000e+00
  %969 = fsub fast float 2.000000e+00, %949
  %970 = bitcast float %967 to i32
  %971 = sub nsw i32 2129859010, %970
  %972 = bitcast i32 %971 to float
  %973 = fmul fast float %972, %969
  %974 = fadd fast float %973, -1.000000e+00
  %975 = bitcast float %968 to i32
  %976 = sub nsw i32 2129859010, %975
  %977 = bitcast i32 %976 to float
  %978 = fmul fast float %977, %949
  %979 = fadd fast float %978, 1.000000e+00
  %980 = fadd fast float %960, %950
  %981 = fmul fast float %980, %931
  %982 = fadd fast float %974, %951
  %983 = fmul fast float %982, %932
  %984 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %12, %dx.types.Handle %24, float %981, float %983, float undef, float undef, i32 0, i32 0, i32 undef, float %936)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %985 = extractvalue %dx.types.ResRet.f32 %984, 0
  %986 = fmul fast float %985, %953
  %987 = fadd fast float %965, %950
  %988 = fmul fast float %987, %931
  %989 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %12, %dx.types.Handle %24, float %988, float %983, float undef, float undef, i32 0, i32 0, i32 undef, float %936)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %990 = extractvalue %dx.types.ResRet.f32 %989, 0
  %991 = fmul fast float %990, %954
  %992 = fadd fast float %979, %951
  %993 = fmul fast float %992, %932
  %994 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %12, %dx.types.Handle %24, float %981, float %993, float undef, float undef, i32 0, i32 0, i32 undef, float %936)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %995 = extractvalue %dx.types.ResRet.f32 %994, 0
  %996 = fmul fast float %995, %953
  %997 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %12, %dx.types.Handle %24, float %988, float %993, float undef, float undef, i32 0, i32 0, i32 undef, float %936)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %998 = extractvalue %dx.types.ResRet.f32 %997, 0
  %999 = fmul fast float %998, %954
  %1000 = fadd fast float %999, %996
  %1001 = fmul fast float %1000, %968
  %1002 = fadd fast float %991, %986
  %1003 = fmul fast float %1002, %967
  %1004 = fadd fast float %1003, %1001
  %1005 = fmul fast float %1004, 6.250000e-02
  br label %1083

; <label>:1006                                    ; preds = %1052, %938
  %1007 = phi float [ %1047, %1052 ], [ 0.000000e+00, %938 ]
  %1008 = phi float [ %1049, %1052 ], [ 0.000000e+00, %938 ]
  %1009 = phi i32 [ %1053, %1052 ], [ 0, %938 ]
  %1010 = mul i32 %1009, 2
  %1011 = add i32 0, %1010
  %1012 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1011
  %1013 = load float, float* %1012, align 4
  %1014 = mul i32 %1009, 2
  %1015 = add i32 1, %1014
  %1016 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1015
  %1017 = load float, float* %1016, align 4
  %1018 = call float @dx.op.tertiary.f32(i32 46, float %1017, float -0.000000e+00, float %1013)  ; FMad(a,b,c)
  %1019 = fmul fast float %1018, %934
  %1020 = fmul fast float %1017, %934
  %1021 = fadd fast float %1019, %253
  %1022 = fadd fast float %1020, %254
  %1023 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %12, %dx.types.Handle %23, float %1021, float %1022, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1024 = extractvalue %dx.types.ResRet.f32 %1023, 0
  %1025 = extractvalue %dx.types.ResRet.f32 %1023, 1
  %1026 = extractvalue %dx.types.ResRet.f32 %1023, 2
  %1027 = extractvalue %dx.types.ResRet.f32 %1023, 3
  %1028 = getelementptr inbounds [4 x float], [4 x float]* %35, i32 0, i32 0
  store float %1024, float* %1028, align 4
  %1029 = getelementptr inbounds [4 x float], [4 x float]* %35, i32 0, i32 1
  store float %1025, float* %1029, align 4
  %1030 = getelementptr inbounds [4 x float], [4 x float]* %35, i32 0, i32 2
  store float %1026, float* %1030, align 4
  %1031 = getelementptr inbounds [4 x float], [4 x float]* %35, i32 0, i32 3
  store float %1027, float* %1031, align 4
  %1032 = fsub fast float %1024, %936
  %1033 = fcmp fast olt float %1032, 0.000000e+00
  %1034 = select i1 %1033, float 0.000000e+00, float 1.000000e+00
  %1035 = fadd fast float %1034, %1007
  %1036 = fmul fast float %1034, %1032
  %1037 = fadd fast float %1036, %1008
  br label %1038

; <label>:1038                                    ; preds = %1038, %1006
  %1039 = phi i32 [ 1, %1006 ], [ %1050, %1038 ]
  %1040 = phi float [ %1037, %1006 ], [ %1049, %1038 ]
  %1041 = phi float [ %1035, %1006 ], [ %1047, %1038 ]
  %1042 = getelementptr [4 x float], [4 x float]* %35, i32 0, i32 %1039
  %1043 = load float, float* %1042, align 4, !tbaa !69, !noalias !59
  %1044 = fsub fast float %1043, %936
  %1045 = fcmp fast olt float %1044, 0.000000e+00
  %1046 = select i1 %1045, float 0.000000e+00, float 1.000000e+00
  %1047 = fadd fast float %1046, %1041
  %1048 = fmul fast float %1046, %1044
  %1049 = fadd fast float %1048, %1040
  %1050 = add nuw nsw i32 %1039, 1
  %1051 = icmp eq i32 %1050, 4
  br i1 %1051, label %1052, label %1038, !llvm.loop !71

; <label>:1052                                    ; preds = %1038
  %1053 = add nuw nsw i32 %1009, 1
  %1054 = icmp eq i32 %1053, 8
  br i1 %1054, label %1055, label %1006, !llvm.loop !73

; <label>:1055                                    ; preds = %1052
  %1056 = fdiv fast float 1.000000e+00, %1047
  %1057 = fmul fast float %1056, %1049
  %1058 = fdiv fast float 1.000000e+00, %936
  %1059 = fmul fast float %1057, %1058
  %1060 = call float @dx.op.unary.f32(i32 7, float %1059)  ; Saturate(value)
  %1061 = call float @dx.op.binary.f32(i32 35, float %1060, float 0.000000e+00)  ; FMax(a,b)
  %1062 = fmul fast float %1047, 3.125000e-02
  %1063 = call float @dx.op.unary.f32(i32 7, float %1062)  ; Saturate(value)
  %1064 = fmul fast float %1063, 2.000000e+00
  %1065 = fadd fast float %1064, -1.000000e+00
  %1066 = fcmp fast ogt float %1065, 0.000000e+00
  %1067 = fcmp fast olt float %1065, 0.000000e+00
  %1068 = zext i1 %1066 to i32
  %1069 = zext i1 %1067 to i32
  %1070 = sub nsw i32 %1068, %1069
  %1071 = sitofp i32 %1070 to float
  %1072 = fmul fast float %1071, %1065
  %1073 = fsub fast float 1.000000e+00, %1072
  %1074 = fmul fast float %1073, %1073
  %1075 = fmul fast float %1074, %1073
  %1076 = fsub fast float %1073, %1075
  %1077 = fmul fast float %1076, %1061
  %1078 = fsub fast float 1.000000e+00, %1075
  %1079 = fsub fast float %1078, %1077
  %1080 = fmul fast float %1071, 5.000000e-01
  %1081 = fmul fast float %1080, %1079
  %1082 = fsub fast float 5.000000e-01, %1081
  br label %1083

; <label>:1083                                    ; preds = %1055, %939, %923
  %1084 = phi float [ 1.000000e+00, %923 ], [ %1005, %939 ], [ %1082, %1055 ]
  %1085 = fcmp fast ogt float %360, 0.000000e+00
  br i1 %1085, label %1086, label %1243, !dx.controlflow.hints !75

; <label>:1086                                    ; preds = %1083
  %1087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %1088 = extractvalue %dx.types.CBufRet.f32 %1087, 0
  %1089 = fadd fast float %1088, %246
  %1090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %1091 = extractvalue %dx.types.CBufRet.f32 %1090, 2
  %1092 = extractvalue %dx.types.CBufRet.f32 %1090, 3
  %1093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %1094 = extractvalue %dx.types.CBufRet.f32 %1093, 0
  %1095 = call float @dx.op.binary.f32(i32 35, float %1089, float 0.000000e+00)  ; FMax(a,b)
  %1096 = fadd fast float %1095, 0x3F10000000000000
  %1097 = fcmp fast oeq float %1094, 0.000000e+00
  br i1 %1097, label %1099, label %1098, !dx.controlflow.hints !68

; <label>:1098                                    ; preds = %1086
  br label %1166

; <label>:1099                                    ; preds = %1086
  %1100 = extractvalue %dx.types.CBufRet.f32 %1090, 1
  %1101 = extractvalue %dx.types.CBufRet.f32 %1090, 0
  %1102 = fmul fast float %1101, %238
  %1103 = fmul fast float %1100, %242
  %1104 = fadd fast float %1102, 5.000000e-01
  %1105 = call float @dx.op.unary.f32(i32 27, float %1104)  ; Round_ni(value)
  %1106 = fadd fast float %1103, 5.000000e-01
  %1107 = call float @dx.op.unary.f32(i32 27, float %1106)  ; Round_ni(value)
  %1108 = fsub fast float %1104, %1105
  %1109 = fsub fast float %1106, %1107
  %1110 = fadd fast float %1105, -5.000000e-01
  %1111 = fadd fast float %1107, -5.000000e-01
  %1112 = fmul fast float %1108, 2.000000e+00
  %1113 = fsub fast float 3.000000e+00, %1112
  %1114 = fadd fast float %1112, 1.000000e+00
  %1115 = fsub fast float 2.000000e+00, %1108
  %1116 = bitcast float %1113 to i32
  %1117 = sub nsw i32 2129859010, %1116
  %1118 = bitcast i32 %1117 to float
  %1119 = fmul fast float %1118, %1115
  %1120 = fadd fast float %1119, -1.000000e+00
  %1121 = bitcast float %1114 to i32
  %1122 = sub nsw i32 2129859010, %1121
  %1123 = bitcast i32 %1122 to float
  %1124 = fmul fast float %1123, %1108
  %1125 = fadd fast float %1124, 1.000000e+00
  %1126 = fmul fast float %1109, 2.000000e+00
  %1127 = fsub fast float 3.000000e+00, %1126
  %1128 = fadd fast float %1126, 1.000000e+00
  %1129 = fsub fast float 2.000000e+00, %1109
  %1130 = bitcast float %1127 to i32
  %1131 = sub nsw i32 2129859010, %1130
  %1132 = bitcast i32 %1131 to float
  %1133 = fmul fast float %1132, %1129
  %1134 = fadd fast float %1133, -1.000000e+00
  %1135 = bitcast float %1128 to i32
  %1136 = sub nsw i32 2129859010, %1135
  %1137 = bitcast i32 %1136 to float
  %1138 = fmul fast float %1137, %1109
  %1139 = fadd fast float %1138, 1.000000e+00
  %1140 = fadd fast float %1120, %1110
  %1141 = fmul fast float %1140, %1091
  %1142 = fadd fast float %1134, %1111
  %1143 = fmul fast float %1142, %1092
  %1144 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %13, %dx.types.Handle %24, float %1141, float %1143, float undef, float undef, i32 0, i32 0, i32 undef, float %1096)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1145 = extractvalue %dx.types.ResRet.f32 %1144, 0
  %1146 = fmul fast float %1145, %1113
  %1147 = fadd fast float %1125, %1110
  %1148 = fmul fast float %1147, %1091
  %1149 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %13, %dx.types.Handle %24, float %1148, float %1143, float undef, float undef, i32 0, i32 0, i32 undef, float %1096)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1150 = extractvalue %dx.types.ResRet.f32 %1149, 0
  %1151 = fmul fast float %1150, %1114
  %1152 = fadd fast float %1139, %1111
  %1153 = fmul fast float %1152, %1092
  %1154 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %13, %dx.types.Handle %24, float %1141, float %1153, float undef, float undef, i32 0, i32 0, i32 undef, float %1096)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1155 = extractvalue %dx.types.ResRet.f32 %1154, 0
  %1156 = fmul fast float %1155, %1113
  %1157 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %13, %dx.types.Handle %24, float %1148, float %1153, float undef, float undef, i32 0, i32 0, i32 undef, float %1096)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1158 = extractvalue %dx.types.ResRet.f32 %1157, 0
  %1159 = fmul fast float %1158, %1114
  %1160 = fadd fast float %1159, %1156
  %1161 = fmul fast float %1160, %1128
  %1162 = fadd fast float %1151, %1146
  %1163 = fmul fast float %1162, %1127
  %1164 = fadd fast float %1163, %1161
  %1165 = fmul fast float %1164, 6.250000e-02
  br label %1243

; <label>:1166                                    ; preds = %1212, %1098
  %1167 = phi float [ %1207, %1212 ], [ 0.000000e+00, %1098 ]
  %1168 = phi float [ %1209, %1212 ], [ 0.000000e+00, %1098 ]
  %1169 = phi i32 [ %1213, %1212 ], [ 0, %1098 ]
  %1170 = mul i32 %1169, 2
  %1171 = add i32 0, %1170
  %1172 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1171
  %1173 = load float, float* %1172, align 4
  %1174 = mul i32 %1169, 2
  %1175 = add i32 1, %1174
  %1176 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1175
  %1177 = load float, float* %1176, align 4
  %1178 = call float @dx.op.tertiary.f32(i32 46, float %1177, float -0.000000e+00, float %1173)  ; FMad(a,b,c)
  %1179 = fmul fast float %1178, %1094
  %1180 = fmul fast float %1177, %1094
  %1181 = fadd fast float %1179, %238
  %1182 = fadd fast float %1180, %242
  %1183 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %13, %dx.types.Handle %23, float %1181, float %1182, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1184 = extractvalue %dx.types.ResRet.f32 %1183, 0
  %1185 = extractvalue %dx.types.ResRet.f32 %1183, 1
  %1186 = extractvalue %dx.types.ResRet.f32 %1183, 2
  %1187 = extractvalue %dx.types.ResRet.f32 %1183, 3
  %1188 = getelementptr inbounds [4 x float], [4 x float]* %34, i32 0, i32 0
  store float %1184, float* %1188, align 4
  %1189 = getelementptr inbounds [4 x float], [4 x float]* %34, i32 0, i32 1
  store float %1185, float* %1189, align 4
  %1190 = getelementptr inbounds [4 x float], [4 x float]* %34, i32 0, i32 2
  store float %1186, float* %1190, align 4
  %1191 = getelementptr inbounds [4 x float], [4 x float]* %34, i32 0, i32 3
  store float %1187, float* %1191, align 4
  %1192 = fsub fast float %1184, %1096
  %1193 = fcmp fast olt float %1192, 0.000000e+00
  %1194 = select i1 %1193, float 0.000000e+00, float 1.000000e+00
  %1195 = fadd fast float %1194, %1167
  %1196 = fmul fast float %1194, %1192
  %1197 = fadd fast float %1196, %1168
  br label %1198

; <label>:1198                                    ; preds = %1198, %1166
  %1199 = phi i32 [ 1, %1166 ], [ %1210, %1198 ]
  %1200 = phi float [ %1197, %1166 ], [ %1209, %1198 ]
  %1201 = phi float [ %1195, %1166 ], [ %1207, %1198 ]
  %1202 = getelementptr [4 x float], [4 x float]* %34, i32 0, i32 %1199
  %1203 = load float, float* %1202, align 4, !tbaa !69, !noalias !59
  %1204 = fsub fast float %1203, %1096
  %1205 = fcmp fast olt float %1204, 0.000000e+00
  %1206 = select i1 %1205, float 0.000000e+00, float 1.000000e+00
  %1207 = fadd fast float %1206, %1201
  %1208 = fmul fast float %1206, %1204
  %1209 = fadd fast float %1208, %1200
  %1210 = add nuw nsw i32 %1199, 1
  %1211 = icmp eq i32 %1210, 4
  br i1 %1211, label %1212, label %1198, !llvm.loop !71

; <label>:1212                                    ; preds = %1198
  %1213 = add nuw nsw i32 %1169, 1
  %1214 = icmp eq i32 %1213, 8
  br i1 %1214, label %1215, label %1166, !llvm.loop !73

; <label>:1215                                    ; preds = %1212
  %1216 = fdiv fast float 1.000000e+00, %1207
  %1217 = fmul fast float %1216, %1209
  %1218 = fdiv fast float 1.000000e+00, %1096
  %1219 = fmul fast float %1217, %1218
  %1220 = call float @dx.op.unary.f32(i32 7, float %1219)  ; Saturate(value)
  %1221 = call float @dx.op.binary.f32(i32 35, float %1220, float 0.000000e+00)  ; FMax(a,b)
  %1222 = fmul fast float %1207, 3.125000e-02
  %1223 = call float @dx.op.unary.f32(i32 7, float %1222)  ; Saturate(value)
  %1224 = fmul fast float %1223, 2.000000e+00
  %1225 = fadd fast float %1224, -1.000000e+00
  %1226 = fcmp fast ogt float %1225, 0.000000e+00
  %1227 = fcmp fast olt float %1225, 0.000000e+00
  %1228 = zext i1 %1226 to i32
  %1229 = zext i1 %1227 to i32
  %1230 = sub nsw i32 %1228, %1229
  %1231 = sitofp i32 %1230 to float
  %1232 = fmul fast float %1231, %1225
  %1233 = fsub fast float 1.000000e+00, %1232
  %1234 = fmul fast float %1233, %1233
  %1235 = fmul fast float %1234, %1233
  %1236 = fsub fast float %1233, %1235
  %1237 = fmul fast float %1236, %1221
  %1238 = fsub fast float 1.000000e+00, %1235
  %1239 = fsub fast float %1238, %1237
  %1240 = fmul fast float %1231, 5.000000e-01
  %1241 = fmul fast float %1240, %1239
  %1242 = fsub fast float 5.000000e-01, %1241
  br label %1243

; <label>:1243                                    ; preds = %1215, %1099, %1083
  %1244 = phi float [ 1.000000e+00, %1083 ], [ %1165, %1099 ], [ %1242, %1215 ]
  %1245 = fsub fast float %924, %766
  %1246 = fmul fast float %1245, %301
  %1247 = fadd fast float %1246, %766
  %1248 = fsub fast float %1084, %1247
  %1249 = fmul fast float %1248, %332
  %1250 = fadd fast float %1249, %1247
  %1251 = fsub fast float %1244, %1250
  %1252 = fmul fast float %1251, %360
  %1253 = fadd fast float %1252, %1250
  br label %1254

; <label>:1254                                    ; preds = %1243, %210
  %1255 = phi float [ %1253, %1243 ], [ 1.000000e+00, %210 ]
  %1256 = call float @dx.op.binary.f32(i32 36, float %1255, float %1255)  ; FMin(a,b)
  %1257 = call float @dx.op.binary.f32(i32 36, float %1255, float %1256)  ; FMin(a,b)
  %1258 = fcmp fast ogt float %1257, 0.000000e+00
  br i1 %1258, label %1259, label %1424, !dx.controlflow.hints !76

; <label>:1259                                    ; preds = %1254
  %1260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %1261 = extractvalue %dx.types.CBufRet.f32 %1260, 0
  %1262 = extractvalue %dx.types.CBufRet.f32 %1260, 1
  %1263 = extractvalue %dx.types.CBufRet.f32 %1260, 2
  %1264 = extractvalue %dx.types.CBufRet.f32 %1260, 3
  %1265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %1266 = extractvalue %dx.types.CBufRet.f32 %1265, 0
  %1267 = extractvalue %dx.types.CBufRet.f32 %1265, 1
  %1268 = extractvalue %dx.types.CBufRet.f32 %1265, 2
  %1269 = extractvalue %dx.types.CBufRet.f32 %1265, 3
  %1270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %1271 = extractvalue %dx.types.CBufRet.f32 %1270, 0
  %1272 = extractvalue %dx.types.CBufRet.f32 %1270, 1
  %1273 = extractvalue %dx.types.CBufRet.f32 %1270, 2
  %1274 = extractvalue %dx.types.CBufRet.f32 %1270, 3
  %1275 = fmul fast float %1261, %201
  %1276 = call float @dx.op.tertiary.f32(i32 46, float %203, float %1262, float %1275)  ; FMad(a,b,c)
  %1277 = call float @dx.op.tertiary.f32(i32 46, float %205, float %1263, float %1276)  ; FMad(a,b,c)
  %1278 = fadd fast float %1277, %1264
  %1279 = fmul fast float %1266, %201
  %1280 = call float @dx.op.tertiary.f32(i32 46, float %203, float %1267, float %1279)  ; FMad(a,b,c)
  %1281 = call float @dx.op.tertiary.f32(i32 46, float %205, float %1268, float %1280)  ; FMad(a,b,c)
  %1282 = fadd fast float %1281, %1269
  %1283 = fmul fast float %1271, %201
  %1284 = call float @dx.op.tertiary.f32(i32 46, float %203, float %1272, float %1283)  ; FMad(a,b,c)
  %1285 = call float @dx.op.tertiary.f32(i32 46, float %205, float %1273, float %1284)  ; FMad(a,b,c)
  %1286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %1287 = extractvalue %dx.types.CBufRet.f32 %1286, 0
  %1288 = extractvalue %dx.types.CBufRet.f32 %1286, 1
  %1289 = extractvalue %dx.types.CBufRet.f32 %1286, 3
  %1290 = fmul fast float %1289, %1278
  %1291 = fmul fast float %1289, %1282
  %1292 = fadd fast float %1290, %1287
  %1293 = fadd fast float %1291, %1288
  %1294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %1295 = extractvalue %dx.types.CBufRet.f32 %1294, 0
  %1296 = extractvalue %dx.types.CBufRet.f32 %1294, 1
  %1297 = fsub fast float %1292, %1295
  %1298 = fsub fast float %1293, %1296
  %1299 = fcmp fast olt float %1297, 0.000000e+00
  %1300 = fcmp fast olt float %1298, 0.000000e+00
  %1301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %1302 = extractvalue %dx.types.CBufRet.f32 %1301, 0
  %1303 = extractvalue %dx.types.CBufRet.f32 %1301, 1
  %1304 = extractvalue %dx.types.CBufRet.f32 %1301, 2
  %1305 = extractvalue %dx.types.CBufRet.f32 %1301, 3
  %1306 = select i1 %1299, float %1302, float %1304
  %1307 = select i1 %1300, float %1303, float %1305
  %1308 = fmul fast float %1306, %1297
  %1309 = fmul fast float %1307, %1298
  %1310 = call float @dx.op.unary.f32(i32 6, float %1308)  ; FAbs(value)
  %1311 = call float @dx.op.unary.f32(i32 6, float %1309)  ; FAbs(value)
  %1312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %1313 = extractvalue %dx.types.CBufRet.f32 %1312, 0
  %1314 = call float @dx.op.binary.f32(i32 35, float %1310, float %1311)  ; FMax(a,b)
  %1315 = fsub fast float %1313, %1314
  %1316 = call float @dx.op.unary.f32(i32 7, float %1315)  ; Saturate(value)
  %1317 = fcmp fast ogt float %1316, 0.000000e+00
  br i1 %1317, label %1318, label %1359, !dx.controlflow.hints !77

; <label>:1318                                    ; preds = %1259
  %1319 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %22, float %1292, float %1293, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1320 = extractvalue %dx.types.ResRet.f32 %1319, 1
  %1321 = fcmp fast ogt float %1320, 0.000000e+00
  br i1 %1321, label %1322, label %1355, !dx.controlflow.hints !78

; <label>:1322                                    ; preds = %1318
  %1323 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %22, float %1292, float %1293, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1324 = extractvalue %dx.types.ResRet.f32 %1323, 0
  %1325 = extractvalue %dx.types.ResRet.f32 %1323, 1
  %1326 = extractvalue %dx.types.ResRet.f32 %1323, 2
  %1327 = extractvalue %dx.types.ResRet.f32 %1323, 3
  %1328 = fsub fast float 1.000000e+00, %1274
  %1329 = fsub fast float %1328, %1285
  %1330 = fmul fast float %1329, 0x400921FB60000000
  %1331 = fadd fast float %1330, 0x3FF921FB60000000
  %1332 = call float @dx.op.unary.f32(i32 13, float %1331)  ; Sin(value)
  %1333 = fadd fast float %1332, -1.000000e+00
  %1334 = fmul fast float %1333, 0x3FD45F3060000000
  %1335 = fmul fast float %1329, 0x401921FB60000000
  %1336 = fadd fast float %1335, 0x400921FB60000000
  %1337 = call float @dx.op.unary.f32(i32 13, float %1336)  ; Sin(value)
  %1338 = fadd fast float %1337, 0x3E7777A5C0000000
  %1339 = fmul fast float %1338, 0x3FC45F3060000000
  %1340 = fmul fast float %1329, 0x4022D97C80000000
  %1341 = fadd fast float %1340, 0x4012D97C80000000
  %1342 = call float @dx.op.unary.f32(i32 13, float %1341)  ; Sin(value)
  %1343 = fadd fast float %1342, 1.000000e+00
  %1344 = fmul fast float %1343, 0x3FBB2995E0000000
  %1345 = fmul fast float %1329, 0x402921FB60000000
  %1346 = fadd fast float %1345, 0x401921FB60000000
  %1347 = call float @dx.op.unary.f32(i32 13, float %1346)  ; Sin(value)
  %1348 = fadd fast float %1347, 0xBE8777A5C0000000
  %1349 = fmul fast float %1348, 0x3FB45F3060000000
  %1350 = call float @dx.op.dot4.f32(i32 56, float %1324, float %1325, float %1326, float %1327, float %1334, float %1339, float %1344, float %1349)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1351 = fmul fast float %1350, 0xBFF7154760000000
  %1352 = call float @dx.op.unary.f32(i32 21, float %1351)  ; Exp(value)
  %1353 = call float @dx.op.unary.f32(i32 7, float %1352)  ; Saturate(value)
  %1354 = fadd float %1353, -1.000000e+00
  br label %1355

; <label>:1355                                    ; preds = %1322, %1318
  %1356 = phi float [ %1354, %1322 ], [ 0.000000e+00, %1318 ]
  %1357 = fmul fast float %1356, %1316
  %1358 = fadd fast float %1357, 1.000000e+00
  br label %1359

; <label>:1359                                    ; preds = %1355, %1259
  %1360 = phi float [ %1358, %1355 ], [ 1.000000e+00, %1259 ]
  %1361 = fmul fast float %1360, %1255
  %1362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1363 = extractvalue %dx.types.CBufRet.f32 %1362, 0
  %1364 = extractvalue %dx.types.CBufRet.f32 %1362, 1
  %1365 = extractvalue %dx.types.CBufRet.f32 %1362, 2
  %1366 = fadd fast float %1363, %201
  %1367 = fadd fast float %1364, %203
  %1368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %1369 = extractvalue %dx.types.CBufRet.f32 %1368, 1
  %1370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1371 = extractvalue %dx.types.CBufRet.f32 %1370, 0
  %1372 = extractvalue %dx.types.CBufRet.f32 %1370, 1
  %1373 = extractvalue %dx.types.CBufRet.f32 %1370, 2
  %1374 = fsub fast float -0.000000e+00, %1366
  %1375 = fsub fast float -0.000000e+00, %1367
  %1376 = fsub fast float %206, %1365
  %1377 = fadd fast float %1376, %1369
  %1378 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1374, float %1375, float %1377)  ; Dot3(ax,ay,az,bx,by,bz)
  %1379 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1371, float %1372, float %1373)  ; Dot3(ax,ay,az,bx,by,bz)
  %1380 = fdiv fast float 1.000000e+00, %1379
  %1381 = fmul fast float %1380, %1378
  %1382 = fmul fast float %1371, %1381
  %1383 = fmul fast float %1372, %1381
  %1384 = fadd fast float %1382, %1366
  %1385 = fadd fast float %1383, %1367
  %1386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %1387 = extractvalue %dx.types.CBufRet.f32 %1386, 0
  %1388 = extractvalue %dx.types.CBufRet.f32 %1386, 1
  %1389 = fsub fast float %1384, %1387
  %1390 = fsub fast float %1385, %1388
  %1391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %1392 = extractvalue %dx.types.CBufRet.f32 %1391, 2
  %1393 = extractvalue %dx.types.CBufRet.f32 %1391, 3
  %1394 = fmul fast float %1389, %1392
  %1395 = fmul fast float %1390, %1393
  %1396 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %1397 = extractvalue %dx.types.CBufRet.i32 %1396, 3
  %1398 = icmp eq i32 %1397, 0
  br i1 %1398, label %1404, label %1399, !dx.controlflow.hints !79

; <label>:1399                                    ; preds = %1359
  %1400 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %21, float %1394, float %1395, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1401 = extractvalue %dx.types.ResRet.f32 %1400, 0
  %1402 = extractvalue %dx.types.ResRet.f32 %1400, 1
  %1403 = extractvalue %dx.types.ResRet.f32 %1400, 2
  br label %1409

; <label>:1404                                    ; preds = %1359
  %1405 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %22, float %1394, float %1395, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1406 = extractvalue %dx.types.ResRet.f32 %1405, 0
  %1407 = extractvalue %dx.types.ResRet.f32 %1405, 1
  %1408 = extractvalue %dx.types.ResRet.f32 %1405, 2
  br label %1409

; <label>:1409                                    ; preds = %1404, %1399
  %1410 = phi float [ %1401, %1399 ], [ %1406, %1404 ]
  %1411 = phi float [ %1402, %1399 ], [ %1407, %1404 ]
  %1412 = phi float [ %1403, %1399 ], [ %1408, %1404 ]
  %1413 = extractvalue %dx.types.CBufRet.f32 %1368, 2
  %1414 = fmul fast float %1413, %1410
  %1415 = extractvalue %dx.types.CBufRet.f32 %1368, 0
  %1416 = fsub fast float %1381, %1415
  %1417 = fsub fast float %1416, %1414
  %1418 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1417)  ; FMax(a,b)
  %1419 = fmul fast float %1418, %1411
  %1420 = call float @dx.op.binary.f32(i32 36, float %1412, float %1419)  ; FMin(a,b)
  %1421 = fmul fast float %1420, 0xBFF7154760000000
  %1422 = call float @dx.op.unary.f32(i32 21, float %1421)  ; Exp(value)
  %1423 = fmul fast float %1361, %1422
  br label %1424

; <label>:1424                                    ; preds = %1409, %1254
  %1425 = phi float [ %1423, %1409 ], [ %1255, %1254 ]
  %1426 = call float @dx.op.binary.f32(i32 36, float %1425, float %1425)  ; FMin(a,b)
  %1427 = call float @dx.op.binary.f32(i32 36, float %1425, float %1426)  ; FMin(a,b)
  %1428 = fcmp fast ogt float %1427, 0.000000e+00
  br i1 %1428, label %1429, label %1444, !dx.controlflow.hints !80

; <label>:1429                                    ; preds = %1424
  %1430 = call float @dx.op.dot3.f32(i32 55, float %147, float %148, float %149, float %211, float %212, float %213)  ; Dot3(ax,ay,az,bx,by,bz)
  %1431 = call float @dx.op.unary.f32(i32 7, float %1430)  ; Saturate(value)
  %1432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1433 = extractvalue %dx.types.CBufRet.f32 %1432, 1
  %1434 = fsub fast float 1.000000e+00, %1425
  %1435 = fmul fast float %1433, %1434
  %1436 = fadd fast float %1435, %1425
  %1437 = call float @dx.op.binary.f32(i32 36, float %1436, float %102)  ; FMin(a,b)
  %1438 = fmul fast float %1437, %1431
  %1439 = extractvalue %dx.types.CBufRet.f32 %1432, 0
  %1440 = fmul fast float %1438, %1439
  %1441 = fmul fast float %1440, %215
  %1442 = fmul fast float %1440, %216
  %1443 = fmul fast float %1440, %217
  br label %1444

; <label>:1444                                    ; preds = %1429, %1424, %73
  %1445 = phi float [ %1441, %1429 ], [ 0.000000e+00, %73 ], [ 0.000000e+00, %1424 ]
  %1446 = phi float [ %1442, %1429 ], [ 0.000000e+00, %73 ], [ 0.000000e+00, %1424 ]
  %1447 = phi float [ %1443, %1429 ], [ 0.000000e+00, %73 ], [ 0.000000e+00, %1424 ]
  %1448 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1449 = extractvalue %dx.types.CBufRet.i32 %1448, 0
  %1450 = icmp eq i32 %1449, 0
  br i1 %1450, label %1775, label %1451, !dx.controlflow.hints !81

; <label>:1451                                    ; preds = %1444
  %1452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1453 = extractvalue %dx.types.CBufRet.f32 %1452, 0
  %1454 = extractvalue %dx.types.CBufRet.f32 %1452, 1
  %1455 = extractvalue %dx.types.CBufRet.f32 %1452, 2
  %1456 = fadd fast float %1453, %201
  %1457 = fadd fast float %1454, %203
  %1458 = fadd fast float %1455, %205
  %1459 = getelementptr inbounds [3 x float], [3 x float]* %33, i32 0, i32 0
  store float %1456, float* %1459, align 4
  %1460 = getelementptr inbounds [3 x float], [3 x float]* %33, i32 0, i32 1
  store float %1457, float* %1460, align 4
  %1461 = getelementptr inbounds [3 x float], [3 x float]* %33, i32 0, i32 2
  store float %1458, float* %1461, align 4
  br label %1462

; <label>:1462                                    ; preds = %1462, %1451
  %1463 = phi i32 [ 0, %1451 ], [ %1477, %1462 ]
  %1464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1463, i32 0)  ; BufferLoad(srv,index,wot)
  %1465 = extractvalue %dx.types.ResRet.i32 %1464, 0
  %1466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1463, i32 4)  ; BufferLoad(srv,index,wot)
  %1467 = extractvalue %dx.types.ResRet.i32 %1466, 0
  %1468 = lshr i32 %1465, 30
  %1469 = and i32 %1465, 1048575
  %1470 = uitofp i32 %1469 to float
  %1471 = fadd fast float %1470, -5.242880e+05
  %1472 = and i32 %1467, 65535
  %1473 = lshr i32 %1467, 16
  %1474 = getelementptr [3 x float], [3 x float]* %33, i32 0, i32 %1468
  %1475 = load float, float* %1474, align 4, !tbaa !69, !noalias !82
  %1476 = fcmp fast olt float %1475, %1471
  %1477 = select i1 %1476, i32 %1472, i32 %1473
  %1478 = and i32 %1477, 32768
  %1479 = icmp eq i32 %1478, 0
  br i1 %1479, label %1462, label %1480

; <label>:1480                                    ; preds = %1462
  %1481 = and i32 %1477, 32767
  %1482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1481, i32 undef)  ; BufferLoad(srv,index,wot)
  %1483 = extractvalue %dx.types.ResRet.i32 %1482, 0
  %1484 = lshr i32 %1483, 22
  br label %1485

; <label>:1485                                    ; preds = %1485, %1480
  %1486 = phi i32 [ 0, %1480 ], [ %1502, %1485 ]
  %1487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1486, i32 0)  ; BufferLoad(srv,index,wot)
  %1488 = extractvalue %dx.types.ResRet.i32 %1487, 0
  %1489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1486, i32 4)  ; BufferLoad(srv,index,wot)
  %1490 = extractvalue %dx.types.ResRet.i32 %1489, 0
  %1491 = lshr i32 %1488, 30
  %1492 = and i32 %1488, 1048575
  %1493 = uitofp i32 %1492 to float
  %1494 = fadd fast float %1493, -5.242880e+05
  %1495 = and i32 %1490, 65535
  %1496 = lshr i32 %1490, 16
  %1497 = icmp ne i32 %1491, 3
  %1498 = getelementptr [3 x float], [3 x float]* %33, i32 0, i32 %1491
  %1499 = load float, float* %1498, align 4, !tbaa !69, !noalias !82
  %1500 = fcmp fast olt float %1499, %1494
  %1501 = select i1 %1500, i32 %1495, i32 %1496
  %1502 = select i1 %1497, i32 %1501, i32 %1490
  %1503 = icmp eq i32 %1491, 3
  br i1 %1503, label %1504, label %1485

; <label>:1504                                    ; preds = %1485
  %1505 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1502)  ; Countbits(value)
  %1506 = add i32 %1505, %1484
  %1507 = icmp eq i32 %1506, 0
  br i1 %1507, label %1775, label %1508

; <label>:1508                                    ; preds = %1504
  %1509 = and i32 %1483, 4194303
  br label %1510

; <label>:1510                                    ; preds = %1768, %1508
  %1511 = phi float [ %1769, %1768 ], [ %1445, %1508 ]
  %1512 = phi float [ %1770, %1768 ], [ %1446, %1508 ]
  %1513 = phi float [ %1771, %1768 ], [ %1447, %1508 ]
  %1514 = phi i32 [ %1772, %1768 ], [ 0, %1508 ]
  %1515 = phi i32 [ %1517, %1768 ], [ %1509, %1508 ]
  %1516 = phi i32 [ %1533, %1768 ], [ %1502, %1508 ]
  %1517 = add i32 %1515, 1
  %1518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %1515, i32 undef)  ; BufferLoad(srv,index,wot)
  %1519 = extractvalue %dx.types.ResRet.i32 %1518, 0
  %1520 = icmp ult i32 %1514, %1484
  br i1 %1520, label %1532, label %1521, !dx.controlflow.hints !83

; <label>:1521                                    ; preds = %1510
  %1522 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1516)  ; FirstbitLo(value)
  %1523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 22)  ; CBufferLoadLegacy(handle,regIndex)
  %1524 = extractvalue %dx.types.CBufRet.f32 %1523, 0
  %1525 = uitofp i32 %1522 to float
  %1526 = fadd fast float %1524, %1525
  %1527 = fptosi float %1526 to i32
  %1528 = and i32 %1522, 31
  %1529 = shl i32 1, %1528
  %1530 = xor i32 %1529, -1
  %1531 = and i32 %1516, %1530
  br label %1532

; <label>:1532                                    ; preds = %1521, %1510
  %1533 = phi i32 [ %1531, %1521 ], [ %1516, %1510 ]
  %1534 = phi i32 [ %1527, %1521 ], [ %1519, %1510 ]
  %1535 = mul i32 %1534, 112
  %1536 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1535, i32 undef)  ; BufferLoad(srv,index,wot)
  %1537 = extractvalue %dx.types.ResRet.f32 %1536, 0
  %1538 = extractvalue %dx.types.ResRet.f32 %1536, 1
  %1539 = extractvalue %dx.types.ResRet.f32 %1536, 2
  %1540 = or i32 %1535, 12
  %1541 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1540, i32 undef)  ; BufferLoad(srv,index,wot)
  %1542 = extractvalue %dx.types.ResRet.f32 %1541, 0
  %1543 = add i32 %1535, 16
  %1544 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1543, i32 undef)  ; BufferLoad(srv,index,wot)
  %1545 = extractvalue %dx.types.ResRet.f32 %1544, 0
  %1546 = extractvalue %dx.types.ResRet.f32 %1544, 1
  %1547 = extractvalue %dx.types.ResRet.f32 %1544, 2
  %1548 = add i32 %1535, 28
  %1549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1548, i32 undef)  ; BufferLoad(srv,index,wot)
  %1550 = extractvalue %dx.types.ResRet.i32 %1549, 0
  %1551 = add i32 %1535, 32
  %1552 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1551, i32 undef)  ; BufferLoad(srv,index,wot)
  %1553 = extractvalue %dx.types.ResRet.f32 %1552, 0
  %1554 = extractvalue %dx.types.ResRet.f32 %1552, 1
  %1555 = extractvalue %dx.types.ResRet.f32 %1552, 2
  %1556 = add i32 %1535, 44
  %1557 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1556, i32 undef)  ; BufferLoad(srv,index,wot)
  %1558 = extractvalue %dx.types.ResRet.f32 %1557, 0
  %1559 = add i32 %1535, 48
  %1560 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1559, i32 undef)  ; BufferLoad(srv,index,wot)
  %1561 = extractvalue %dx.types.ResRet.f32 %1560, 0
  %1562 = extractvalue %dx.types.ResRet.f32 %1560, 1
  %1563 = extractvalue %dx.types.ResRet.f32 %1560, 2
  %1564 = extractvalue %dx.types.ResRet.f32 %1560, 3
  %1565 = add i32 %1535, 64
  %1566 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1565, i32 undef)  ; BufferLoad(srv,index,wot)
  %1567 = extractvalue %dx.types.ResRet.f32 %1566, 0
  %1568 = extractvalue %dx.types.ResRet.f32 %1566, 1
  %1569 = extractvalue %dx.types.ResRet.f32 %1566, 2
  %1570 = extractvalue %dx.types.ResRet.f32 %1566, 3
  %1571 = add i32 %1535, 92
  %1572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1571, i32 undef)  ; BufferLoad(srv,index,wot)
  %1573 = extractvalue %dx.types.ResRet.i32 %1572, 0
  %1574 = and i32 %1573, 65535
  %1575 = uitofp i32 %1574 to float
  %1576 = lshr i32 %1573, 16
  %1577 = uitofp i32 %1576 to float
  %1578 = and i32 %1550, 65535
  %1579 = and i32 %1550, 50331648
  %1580 = icmp eq i32 %1579, 33554432
  %1581 = call float @dx.op.dot3.f32(i32 55, float %1553, float %1554, float %1555, float %1553, float %1554, float %1555)  ; Dot3(ax,ay,az,bx,by,bz)
  %1582 = fsub fast float %201, %1561
  %1583 = fsub fast float %203, %1562
  %1584 = fsub fast float %205, %1563
  %1585 = call float @dx.op.dot3.f32(i32 55, float %1582, float %1583, float %1584, float %1553, float %1554, float %1555)  ; Dot3(ax,ay,az,bx,by,bz)
  %1586 = fdiv fast float %1585, %1581
  %1587 = call float @dx.op.binary.f32(i32 35, float %1586, float -1.000000e+00)  ; FMax(a,b)
  %1588 = call float @dx.op.binary.f32(i32 36, float %1587, float 1.000000e+00)  ; FMin(a,b)
  %1589 = fmul fast float %1588, %1553
  %1590 = fmul fast float %1588, %1554
  %1591 = fmul fast float %1588, %1555
  %1592 = fadd fast float %1589, %1561
  %1593 = fadd fast float %1590, %1562
  %1594 = fadd fast float %1591, %1563
  %1595 = fsub fast float %1592, %201
  %1596 = fsub fast float %1593, %203
  %1597 = fsub fast float %1594, %205
  %1598 = call float @dx.op.dot3.f32(i32 55, float %1595, float %1596, float %1597, float %1595, float %1596, float %1597)  ; Dot3(ax,ay,az,bx,by,bz)
  %1599 = call float @dx.op.unary.f32(i32 24, float %1598)  ; Sqrt(value)
  %1600 = fdiv fast float 1.000000e+00, %1599
  %1601 = fmul fast float %1595, %1600
  %1602 = fmul fast float %1596, %1600
  %1603 = fmul fast float %1597, %1600
  %1604 = fadd fast float %1599, %1542
  %1605 = fdiv fast float 1.000000e+00, %1604
  %1606 = fmul float %1558, %1605
  %1607 = fmul float %1606, %1606
  %1608 = call float @dx.op.unary.f32(i32 7, float %1607)  ; Saturate(value)
  br i1 %1580, label %1609, label %1633, !dx.controlflow.hints !84

; <label>:1609                                    ; preds = %1532
  %1610 = fmul fast float %1569, %1545
  %1611 = fmul fast float %1569, %1546
  %1612 = fmul fast float %1569, %1547
  %1613 = fsub fast float %1610, %201
  %1614 = fadd fast float %1613, %1592
  %1615 = fsub fast float %1611, %203
  %1616 = fadd fast float %1615, %1593
  %1617 = fsub fast float %1612, %205
  %1618 = fadd fast float %1617, %1594
  %1619 = call float @dx.op.dot3.f32(i32 55, float %1614, float %1616, float %1618, float %1614, float %1616, float %1618)  ; Dot3(ax,ay,az,bx,by,bz)
  %1620 = call float @dx.op.unary.f32(i32 25, float %1619)  ; Rsqrt(value)
  %1621 = fmul fast float %1620, %1614
  %1622 = fmul fast float %1620, %1616
  %1623 = fmul fast float %1620, %1618
  %1624 = fsub fast float %201, %1592
  %1625 = fsub fast float %203, %1593
  %1626 = fsub fast float %205, %1594
  %1627 = fsub fast float -0.000000e+00, %1624
  %1628 = fsub fast float -0.000000e+00, %1625
  %1629 = fsub fast float -0.000000e+00, %1626
  %1630 = call float @dx.op.dot3.f32(i32 55, float %1627, float %1628, float %1629, float %1545, float %1546, float %1547)  ; Dot3(ax,ay,az,bx,by,bz)
  %1631 = fcmp fast ogt float %1630, 0.000000e+00
  %1632 = uitofp i1 %1631 to float
  br label %1633

; <label>:1633                                    ; preds = %1609, %1532
  %1634 = phi float [ %1632, %1609 ], [ 1.000000e+00, %1532 ]
  %1635 = phi float [ %1621, %1609 ], [ %1601, %1532 ]
  %1636 = phi float [ %1622, %1609 ], [ %1602, %1532 ]
  %1637 = phi float [ %1623, %1609 ], [ %1603, %1532 ]
  %1638 = call float @dx.op.dot3.f32(i32 55, float %1545, float %1546, float %1547, float %1635, float %1636, float %1637)  ; Dot3(ax,ay,az,bx,by,bz)
  %1639 = fmul fast float %1638, %1638
  %1640 = call float @dx.op.unary.f32(i32 7, float %1639)  ; Saturate(value)
  %1641 = fsub fast float 1.000000e+00, %1640
  %1642 = fmul fast float %1641, 5.000000e-01
  %1643 = fcmp fast ogt float %1638, 0.000000e+00
  %1644 = fsub fast float 1.000000e+00, %1642
  %1645 = select i1 %1643, float %1642, float %1644
  %1646 = fmul fast float %1645, %1577
  %1647 = fadd fast float %1646, %1575
  %1648 = fmul fast float %1647, 0x3EF0001000000000
  %1649 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %22, float %1648, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1650 = extractvalue %dx.types.ResRet.f32 %1649, 0
  %1651 = fmul fast float %1638, %1567
  %1652 = fadd fast float %1651, %1568
  %1653 = call float @dx.op.unary.f32(i32 7, float %1652)  ; Saturate(value)
  %1654 = select i1 %1580, float 1.000000e+00, float %1653
  %1655 = select i1 %1580, float %1653, float 1.000000e+00
  %1656 = fmul fast float %1599, %1564
  %1657 = fsub fast float 1.000000e+00, %1656
  %1658 = fmul fast float %1657, %1570
  %1659 = call float @dx.op.unary.f32(i32 7, float %1658)  ; Saturate(value)
  %1660 = fmul fast float %1659, %1655
  %1661 = fmul fast float %1660, 2.000000e+00
  %1662 = fsub fast float 3.000000e+00, %1661
  %1663 = fmul fast float %1650, %1634
  %1664 = fmul fast float %1660, %1660
  %1665 = fmul fast float %1664, %1663
  %1666 = fmul fast float %1665, %1662
  %1667 = call float @dx.op.binary.f32(i32 36, float %1666, float %1666)  ; FMin(a,b)
  %1668 = call float @dx.op.binary.f32(i32 36, float %1666, float %1667)  ; FMin(a,b)
  %1669 = fcmp fast ogt float %1668, 0.000000e+00
  br i1 %1669, label %1670, label %1768, !dx.controlflow.hints !85

; <label>:1670                                    ; preds = %1633
  %1671 = icmp eq i32 %1578, 255
  br i1 %1671, label %1747, label %1672, !dx.controlflow.hints !86

; <label>:1672                                    ; preds = %1670
  %1673 = mul nuw nsw i32 %1578, 176
  %1674 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1673, i32 undef)  ; BufferLoad(srv,index,wot)
  %1675 = extractvalue %dx.types.ResRet.f32 %1674, 0
  %1676 = extractvalue %dx.types.ResRet.f32 %1674, 1
  %1677 = extractvalue %dx.types.ResRet.f32 %1674, 2
  %1678 = extractvalue %dx.types.ResRet.f32 %1674, 3
  %1679 = add nuw nsw i32 %1673, 16
  %1680 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1679, i32 undef)  ; BufferLoad(srv,index,wot)
  %1681 = extractvalue %dx.types.ResRet.f32 %1680, 0
  %1682 = extractvalue %dx.types.ResRet.f32 %1680, 1
  %1683 = add nuw nsw i32 %1673, 32
  %1684 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1683, i32 undef)  ; BufferLoad(srv,index,wot)
  %1685 = extractvalue %dx.types.ResRet.f32 %1684, 0
  %1686 = add nuw nsw i32 %1673, 48
  %1687 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1686, i32 undef)  ; BufferLoad(srv,index,wot)
  %1688 = extractvalue %dx.types.ResRet.f32 %1687, 0
  %1689 = extractvalue %dx.types.ResRet.f32 %1687, 1
  %1690 = extractvalue %dx.types.ResRet.f32 %1687, 2
  %1691 = extractvalue %dx.types.ResRet.f32 %1687, 3
  %1692 = add nuw nsw i32 %1673, 64
  %1693 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1692, i32 undef)  ; BufferLoad(srv,index,wot)
  %1694 = extractvalue %dx.types.ResRet.f32 %1693, 0
  %1695 = extractvalue %dx.types.ResRet.f32 %1693, 1
  %1696 = extractvalue %dx.types.ResRet.f32 %1693, 2
  %1697 = extractvalue %dx.types.ResRet.f32 %1693, 3
  %1698 = add nuw nsw i32 %1673, 80
  %1699 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1698, i32 undef)  ; BufferLoad(srv,index,wot)
  %1700 = extractvalue %dx.types.ResRet.f32 %1699, 0
  %1701 = extractvalue %dx.types.ResRet.f32 %1699, 1
  %1702 = extractvalue %dx.types.ResRet.f32 %1699, 2
  %1703 = extractvalue %dx.types.ResRet.f32 %1699, 3
  %1704 = add nuw nsw i32 %1673, 96
  %1705 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1704, i32 undef)  ; BufferLoad(srv,index,wot)
  %1706 = extractvalue %dx.types.ResRet.f32 %1705, 0
  %1707 = extractvalue %dx.types.ResRet.f32 %1705, 1
  %1708 = extractvalue %dx.types.ResRet.f32 %1705, 2
  %1709 = extractvalue %dx.types.ResRet.f32 %1705, 3
  %1710 = bitcast float %1682 to i32
  %1711 = fmul fast float %1688, %201
  %1712 = call float @dx.op.tertiary.f32(i32 46, float %203, float %1694, float %1711)  ; FMad(a,b,c)
  %1713 = call float @dx.op.tertiary.f32(i32 46, float %205, float %1700, float %1712)  ; FMad(a,b,c)
  %1714 = fadd fast float %1713, %1706
  %1715 = fmul fast float %1689, %201
  %1716 = call float @dx.op.tertiary.f32(i32 46, float %203, float %1695, float %1715)  ; FMad(a,b,c)
  %1717 = call float @dx.op.tertiary.f32(i32 46, float %205, float %1701, float %1716)  ; FMad(a,b,c)
  %1718 = fadd fast float %1717, %1707
  %1719 = fmul fast float %1690, %201
  %1720 = call float @dx.op.tertiary.f32(i32 46, float %203, float %1696, float %1719)  ; FMad(a,b,c)
  %1721 = call float @dx.op.tertiary.f32(i32 46, float %205, float %1702, float %1720)  ; FMad(a,b,c)
  %1722 = fadd fast float %1721, %1708
  %1723 = fmul fast float %1691, %201
  %1724 = call float @dx.op.tertiary.f32(i32 46, float %203, float %1697, float %1723)  ; FMad(a,b,c)
  %1725 = call float @dx.op.tertiary.f32(i32 46, float %205, float %1703, float %1724)  ; FMad(a,b,c)
  %1726 = fadd fast float %1725, %1709
  %1727 = fdiv fast float %1714, %1726
  %1728 = fdiv fast float %1718, %1726
  %1729 = fdiv fast float %1722, %1726
  %1730 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %1729)  ; FMax(a,b)
  %1731 = fmul fast float %1727, %1681
  %1732 = fmul fast float %1728, %1681
  %1733 = call float @dx.op.binary.f32(i32 35, float %1731, float %1677)  ; FMax(a,b)
  %1734 = call float @dx.op.binary.f32(i32 35, float %1732, float %1677)  ; FMax(a,b)
  %1735 = call float @dx.op.binary.f32(i32 36, float %1733, float %1678)  ; FMin(a,b)
  %1736 = call float @dx.op.binary.f32(i32 36, float %1734, float %1678)  ; FMin(a,b)
  %1737 = fadd fast float %1735, %1675
  %1738 = fadd fast float %1736, %1676
  %1739 = uitofp i32 %1710 to float
  %1740 = fadd fast float %1730, %1685
  %1741 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %24, float %1737, float %1738, float %1739, float undef, i32 0, i32 0, i32 undef, float %1740)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1742 = extractvalue %dx.types.ResRet.f32 %1741, 0
  %1743 = fadd fast float %1742, -1.000000e+00
  %1744 = fmul fast float %1743, %1654
  %1745 = fadd fast float %1744, 1.000000e+00
  %1746 = fmul fast float %1745, %1666
  br label %1747

; <label>:1747                                    ; preds = %1672, %1670
  %1748 = phi float [ %1746, %1672 ], [ %1666, %1670 ]
  %1749 = call float @dx.op.binary.f32(i32 36, float %1748, float %1748)  ; FMin(a,b)
  %1750 = call float @dx.op.binary.f32(i32 36, float %1748, float %1749)  ; FMin(a,b)
  %1751 = fcmp fast ogt float %1750, 0.000000e+00
  br i1 %1751, label %1752, label %1768, !dx.controlflow.hints !87

; <label>:1752                                    ; preds = %1747
  %1753 = call float @dx.op.dot3.f32(i32 55, float %147, float %148, float %149, float %1601, float %1602, float %1603)  ; Dot3(ax,ay,az,bx,by,bz)
  %1754 = call float @dx.op.unary.f32(i32 7, float %1753)  ; Saturate(value)
  %1755 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1756 = extractvalue %dx.types.CBufRet.f32 %1755, 3
  %1757 = fsub fast float 1.000000e+00, %1748
  %1758 = fmul fast float %1756, %1757
  %1759 = fadd fast float %1758, %1748
  %1760 = fmul fast float %1754, %1608
  %1761 = fmul fast float %1760, %1759
  %1762 = fmul fast float %1761, %1537
  %1763 = fmul fast float %1761, %1538
  %1764 = fmul fast float %1761, %1539
  %1765 = fadd fast float %1762, %1511
  %1766 = fadd fast float %1763, %1512
  %1767 = fadd fast float %1764, %1513
  br label %1768

; <label>:1768                                    ; preds = %1752, %1747, %1633
  %1769 = phi float [ %1765, %1752 ], [ %1511, %1747 ], [ %1511, %1633 ]
  %1770 = phi float [ %1766, %1752 ], [ %1512, %1747 ], [ %1512, %1633 ]
  %1771 = phi float [ %1767, %1752 ], [ %1513, %1747 ], [ %1513, %1633 ]
  %1772 = add nuw i32 %1514, 1
  %1773 = icmp eq i32 %1772, %1506
  br i1 %1773, label %1774, label %1510, !llvm.loop !88

; <label>:1774                                    ; preds = %1768
  br label %1775

; <label>:1775                                    ; preds = %1774, %1504, %1444
  %1776 = phi float [ %1445, %1444 ], [ %1445, %1504 ], [ %1769, %1774 ]
  %1777 = phi float [ %1446, %1444 ], [ %1446, %1504 ], [ %1770, %1774 ]
  %1778 = phi float [ %1447, %1444 ], [ %1447, %1504 ], [ %1771, %1774 ]
  %1779 = fadd fast float %1776, %193
  %1780 = fadd fast float %1777, %194
  %1781 = fadd fast float %1778, %195
  %1782 = fmul fast float %188, %1779
  %1783 = fmul fast float %189, %1780
  %1784 = fmul fast float %190, %1781
  %1785 = or i1 %94, %103
  %1786 = select i1 %1785, float %193, float %1782
  %1787 = select i1 %1785, float %194, float %1783
  %1788 = select i1 %1785, float %195, float %1784
  %1789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1790 = extractvalue %dx.types.CBufRet.f32 %1789, 0
  %1791 = fmul fast float %1790, %1786
  %1792 = fmul fast float %1787, %1790
  %1793 = fmul fast float %1788, %1790
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %28, i32 %29, i32 %30, float %1791, float %1792, float %1793, float %1791, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1794

; <label>:1794                                    ; preds = %1775, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

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
!dx.entryPoints = !{!39}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !29, !31, !34}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !19, !20, !21, !22, !23, !25, !27, !28}
!6 = !{i32 0, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 7, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 7, i32 0, !7}
!9 = !{i32 2, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 4, i32 1, i32 7, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 19, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 20, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %"class.Texture1D<float>"* undef, !"", i32 0, i32 13, i32 1, i32 1, i32 0, !7}
!13 = !{i32 6, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 12, i32 1, i32 7, i32 0, !7}
!14 = !{i32 7, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 5, i32 1, i32 2, i32 0, !7}
!15 = !{i32 8, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 6, i32 1, i32 2, i32 0, !7}
!16 = !{i32 9, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 7, i32 1, i32 2, i32 0, !7}
!17 = !{i32 10, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 14, i32 1, i32 7, i32 0, !18}
!18 = !{i32 0, i32 14}
!19 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!20 = !{i32 12, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 11, i32 1, i32 2, i32 0, !7}
!21 = !{i32 13, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 10, i32 1, i32 2, i32 0, !7}
!22 = !{i32 14, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 9, i32 1, i32 2, i32 0, !7}
!23 = !{i32 15, %"class.StructuredBuffer<GfxBSPAABBNodePacked>"* undef, !"", i32 0, i32 21, i32 1, i32 12, i32 0, !24}
!24 = !{i32 1, i32 8}
!25 = !{i32 16, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 22, i32 1, i32 10, i32 0, !26}
!26 = !{i32 0, i32 5}
!27 = !{i32 17, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 23, i32 1, i32 10, i32 0, !26}
!28 = !{i32 18, %"class.StructuredBuffer<GfxBSPAABBNodePacked>"* undef, !"", i32 0, i32 24, i32 1, i32 12, i32 0, !24}
!29 = !{!30}
!30 = !{i32 0, %"class.RWTexture2DArray<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 7, i1 false, i1 false, i1 false, !7}
!31 = !{!32, !33}
!32 = !{i32 0, %GfxReflectionProbeRelightingConsts* undef, !"", i32 0, i32 0, i32 1, i32 64, null}
!33 = !{i32 1, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!34 = !{!35, !36, !37, !38}
!35 = !{i32 0, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!36 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!37 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!38 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!39 = !{void ()* @cs_reflection_probe_relighting, !"cs_reflection_probe_relighting", null, !4, !40}
!40 = !{i32 0, i64 272, i32 4, !41}
!41 = !{i32 8, i32 8, i32 1}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 1}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 1}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 1}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 1}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 1}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = !{!56, !56, i64 0}
!56 = !{!"int", !57, i64 0}
!57 = !{!"omnipotent char", !58, i64 0}
!58 = !{!"Simple C/C++ TBAA"}
!59 = !{!60, !62}
!60 = distinct !{!60, !61, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_Refprobe@@ULightIteratorOutput_Refprobe@@@Z: %lightingOutput"}
!61 = distinct !{!61, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_Refprobe@@ULightIteratorOutput_Refprobe@@@Z"}
!62 = distinct !{!62, !63, !"\01?Lights_Iterate_Refprobe@@YAXULocalAttributes@@ULightIteratorInput_Refprobe@@ULightIteratorOutput_Refprobe@@@Z: %lightingOutput"}
!63 = distinct !{!63, !"\01?Lights_Iterate_Refprobe@@YAXULocalAttributes@@ULightIteratorInput_Refprobe@@ULightIteratorOutput_Refprobe@@@Z"}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 1}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = !{!70, !70, i64 0}
!70 = !{!"float", !57, i64 0}
!71 = distinct !{!71, !72}
!72 = !{!"llvm.loop.unroll.disable"}
!73 = distinct !{!73, !72}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 1}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 1}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 1}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 1}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 2}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 2}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 1}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 2}
!82 = !{!62}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 2}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 2}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 1}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 1}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 1}
!88 = distinct !{!88, !72}

