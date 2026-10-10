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
; shader hash: 928985fabb5f86807151d20d488e6b4f
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

define void @cs_reflection_probe_relighting_debug() {
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
  br i1 %45, label %1883, label %46, !dx.controlflow.hints !42

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
  %188 = fadd fast float %185, %182
  %189 = fadd fast float %186, %183
  %190 = fadd fast float %187, %184
  %191 = fmul fast float %78, %78
  %192 = fmul fast float %79, %79
  %193 = fmul fast float %80, %80
  %194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %195 = extractvalue %dx.types.CBufRet.f32 %194, 3
  %196 = fmul fast float %195, %88
  %197 = fmul fast float %195, %89
  %198 = fmul fast float %195, %90
  %199 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %200 = extractvalue %dx.types.CBufRet.i32 %199, 0
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %205, label %202, !dx.controlflow.hints !44

; <label>:202                                     ; preds = %73
  switch i32 %200, label %205 [
    i32 6, label %203
    i32 4, label %204
  ], !dx.controlflow.hints !45

; <label>:203                                     ; preds = %202
  br label %205

; <label>:204                                     ; preds = %202
  br label %205

; <label>:205                                     ; preds = %204, %203, %202, %73
  %206 = phi float [ %196, %202 ], [ 0.000000e+00, %204 ], [ %196, %203 ], [ %196, %73 ]
  %207 = phi float [ %197, %202 ], [ 0.000000e+00, %204 ], [ %197, %203 ], [ %197, %73 ]
  %208 = phi float [ %198, %202 ], [ 0.000000e+00, %204 ], [ %198, %203 ], [ %198, %73 ]
  %209 = phi float [ %191, %202 ], [ 1.000000e+00, %204 ], [ 1.000000e+00, %203 ], [ %191, %73 ]
  %210 = phi float [ %192, %202 ], [ 1.000000e+00, %204 ], [ 1.000000e+00, %203 ], [ %192, %73 ]
  %211 = phi float [ %193, %202 ], [ 1.000000e+00, %204 ], [ 1.000000e+00, %203 ], [ %193, %73 ]
  %212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %213 = extractvalue %dx.types.CBufRet.f32 %212, 0
  %214 = extractvalue %dx.types.CBufRet.f32 %212, 1
  %215 = extractvalue %dx.types.CBufRet.f32 %212, 2
  %216 = fsub fast float %188, %213
  %217 = fsub fast float %189, %214
  %218 = fsub fast float %190, %215
  %219 = fsub fast float -0.000000e+00, %218
  %220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %221 = extractvalue %dx.types.CBufRet.f32 %220, 3
  %222 = fcmp fast oeq float %221, 0.000000e+00
  br i1 %222, label %1457, label %223, !dx.controlflow.hints !46

; <label>:223                                     ; preds = %205
  %224 = extractvalue %dx.types.CBufRet.f32 %220, 0
  %225 = extractvalue %dx.types.CBufRet.f32 %220, 1
  %226 = extractvalue %dx.types.CBufRet.f32 %220, 2
  %227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %228 = extractvalue %dx.types.CBufRet.f32 %227, 0
  %229 = extractvalue %dx.types.CBufRet.f32 %227, 1
  %230 = extractvalue %dx.types.CBufRet.f32 %227, 2
  %231 = fcmp fast olt float %221, 0.000000e+00
  br i1 %231, label %1267, label %232, !dx.controlflow.hints !47

; <label>:232                                     ; preds = %223
  %233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %234 = extractvalue %dx.types.CBufRet.f32 %233, 0
  %235 = extractvalue %dx.types.CBufRet.f32 %233, 1
  %236 = extractvalue %dx.types.CBufRet.f32 %233, 2
  %237 = extractvalue %dx.types.CBufRet.f32 %233, 3
  %238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %239 = extractvalue %dx.types.CBufRet.f32 %238, 0
  %240 = extractvalue %dx.types.CBufRet.f32 %238, 1
  %241 = extractvalue %dx.types.CBufRet.f32 %238, 2
  %242 = extractvalue %dx.types.CBufRet.f32 %238, 3
  %243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %244 = extractvalue %dx.types.CBufRet.f32 %243, 0
  %245 = extractvalue %dx.types.CBufRet.f32 %243, 1
  %246 = extractvalue %dx.types.CBufRet.f32 %243, 2
  %247 = extractvalue %dx.types.CBufRet.f32 %243, 3
  %248 = fmul fast float %234, %216
  %249 = call float @dx.op.tertiary.f32(i32 46, float %217, float %235, float %248)  ; FMad(a,b,c)
  %250 = call float @dx.op.tertiary.f32(i32 46, float %218, float %236, float %249)  ; FMad(a,b,c)
  %251 = fadd fast float %250, %237
  %252 = fmul fast float %239, %216
  %253 = call float @dx.op.tertiary.f32(i32 46, float %217, float %240, float %252)  ; FMad(a,b,c)
  %254 = call float @dx.op.tertiary.f32(i32 46, float %218, float %241, float %253)  ; FMad(a,b,c)
  %255 = fadd fast float %254, %242
  %256 = fmul fast float %244, %216
  %257 = call float @dx.op.tertiary.f32(i32 46, float %217, float %245, float %256)  ; FMad(a,b,c)
  %258 = call float @dx.op.tertiary.f32(i32 46, float %218, float %246, float %257)  ; FMad(a,b,c)
  %259 = fadd fast float %258, %247
  %260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %261 = extractvalue %dx.types.CBufRet.f32 %260, 0
  %262 = extractvalue %dx.types.CBufRet.f32 %260, 1
  %263 = extractvalue %dx.types.CBufRet.f32 %260, 3
  %264 = fmul fast float %263, %251
  %265 = fmul fast float %263, %255
  %266 = fadd fast float %264, %261
  %267 = fadd fast float %265, %262
  %268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %269 = extractvalue %dx.types.CBufRet.f32 %268, 0
  %270 = extractvalue %dx.types.CBufRet.f32 %268, 1
  %271 = extractvalue %dx.types.CBufRet.f32 %268, 3
  %272 = fmul fast float %271, %251
  %273 = fmul fast float %271, %255
  %274 = fadd fast float %272, %269
  %275 = fadd fast float %273, %270
  %276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %277 = extractvalue %dx.types.CBufRet.f32 %276, 1
  %278 = fsub fast float %277, %259
  %279 = extractvalue %dx.types.CBufRet.f32 %276, 2
  %280 = fmul fast float %278, %279
  %281 = fsub fast float 1.000000e+00, %280
  %282 = call float @dx.op.unary.f32(i32 7, float %281)  ; Saturate(value)
  %283 = extractvalue %dx.types.CBufRet.f32 %268, 2
  %284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %285 = extractvalue %dx.types.CBufRet.f32 %284, 2
  %286 = fadd fast float %285, %283
  %287 = fcmp fast ogt float %286, 0.000000e+00
  br i1 %287, label %288, label %313, !dx.controlflow.hints !48

; <label>:288                                     ; preds = %232
  %289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %290 = extractvalue %dx.types.CBufRet.f32 %289, 0
  %291 = extractvalue %dx.types.CBufRet.f32 %289, 1
  %292 = fsub fast float %274, %290
  %293 = fsub fast float %275, %291
  %294 = fcmp fast olt float %292, 0.000000e+00
  %295 = fcmp fast olt float %293, 0.000000e+00
  %296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %297 = extractvalue %dx.types.CBufRet.f32 %296, 0
  %298 = extractvalue %dx.types.CBufRet.f32 %296, 1
  %299 = extractvalue %dx.types.CBufRet.f32 %296, 2
  %300 = extractvalue %dx.types.CBufRet.f32 %296, 3
  %301 = select i1 %294, float %297, float %299
  %302 = select i1 %295, float %298, float %300
  %303 = fmul fast float %301, %292
  %304 = fmul fast float %302, %293
  %305 = call float @dx.op.unary.f32(i32 6, float %303)  ; FAbs(value)
  %306 = call float @dx.op.unary.f32(i32 6, float %304)  ; FAbs(value)
  %307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %308 = extractvalue %dx.types.CBufRet.f32 %307, 0
  %309 = call float @dx.op.binary.f32(i32 35, float %305, float %306)  ; FMax(a,b)
  %310 = fsub fast float %308, %309
  %311 = call float @dx.op.unary.f32(i32 7, float %310)  ; Saturate(value)
  %312 = fmul fast float %311, %282
  br label %313

; <label>:313                                     ; preds = %288, %232
  %314 = phi float [ %312, %288 ], [ 0.000000e+00, %232 ]
  %315 = extractvalue %dx.types.CBufRet.f32 %260, 2
  %316 = extractvalue %dx.types.CBufRet.f32 %284, 1
  %317 = fadd fast float %316, %315
  %318 = fcmp fast ogt float %317, 0.000000e+00
  br i1 %318, label %319, label %344, !dx.controlflow.hints !49

; <label>:319                                     ; preds = %313
  %320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %321 = extractvalue %dx.types.CBufRet.f32 %320, 0
  %322 = extractvalue %dx.types.CBufRet.f32 %320, 1
  %323 = fsub fast float %266, %321
  %324 = fsub fast float %267, %322
  %325 = fcmp fast olt float %323, 0.000000e+00
  %326 = fcmp fast olt float %324, 0.000000e+00
  %327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %328 = extractvalue %dx.types.CBufRet.f32 %327, 0
  %329 = extractvalue %dx.types.CBufRet.f32 %327, 1
  %330 = extractvalue %dx.types.CBufRet.f32 %327, 2
  %331 = extractvalue %dx.types.CBufRet.f32 %327, 3
  %332 = select i1 %325, float %328, float %330
  %333 = select i1 %326, float %329, float %331
  %334 = fmul fast float %332, %323
  %335 = fmul fast float %333, %324
  %336 = call float @dx.op.unary.f32(i32 6, float %334)  ; FAbs(value)
  %337 = call float @dx.op.unary.f32(i32 6, float %335)  ; FAbs(value)
  %338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %339 = extractvalue %dx.types.CBufRet.f32 %338, 0
  %340 = call float @dx.op.binary.f32(i32 35, float %336, float %337)  ; FMax(a,b)
  %341 = fsub fast float %339, %340
  %342 = call float @dx.op.unary.f32(i32 7, float %341)  ; Saturate(value)
  %343 = fmul fast float %342, %282
  br label %344

; <label>:344                                     ; preds = %319, %313
  %345 = phi float [ %343, %319 ], [ 0.000000e+00, %313 ]
  %346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %347 = extractvalue %dx.types.CBufRet.f32 %346, 1
  %348 = call float @dx.op.unary.f32(i32 7, float %347)  ; Saturate(value)
  %349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %350 = extractvalue %dx.types.CBufRet.f32 %349, 0
  %351 = extractvalue %dx.types.CBufRet.f32 %349, 1
  %352 = fsub fast float %251, %350
  %353 = fsub fast float %255, %351
  %354 = fcmp fast olt float %352, 0.000000e+00
  %355 = fcmp fast olt float %353, 0.000000e+00
  %356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %357 = extractvalue %dx.types.CBufRet.f32 %356, 0
  %358 = extractvalue %dx.types.CBufRet.f32 %356, 1
  %359 = extractvalue %dx.types.CBufRet.f32 %356, 2
  %360 = extractvalue %dx.types.CBufRet.f32 %356, 3
  %361 = select i1 %354, float %357, float %359
  %362 = select i1 %355, float %358, float %360
  %363 = fmul fast float %361, %352
  %364 = fmul fast float %362, %353
  %365 = call float @dx.op.unary.f32(i32 6, float %363)  ; FAbs(value)
  %366 = call float @dx.op.unary.f32(i32 6, float %364)  ; FAbs(value)
  %367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %368 = extractvalue %dx.types.CBufRet.f32 %367, 0
  %369 = call float @dx.op.binary.f32(i32 35, float %365, float %366)  ; FMax(a,b)
  %370 = fsub fast float %368, %369
  %371 = call float @dx.op.unary.f32(i32 7, float %370)  ; Saturate(value)
  %372 = call float @dx.op.binary.f32(i32 36, float %371, float %348)  ; FMin(a,b)
  %373 = fmul fast float %372, %282
  %374 = fsub fast float %345, %373
  %375 = fsub fast float %314, %345
  %376 = fsub fast float %375, %373
  %377 = call float @dx.op.binary.f32(i32 35, float %345, float %314)  ; FMax(a,b)
  %378 = call float @dx.op.binary.f32(i32 35, float %373, float %377)  ; FMax(a,b)
  %379 = fcmp fast olt float %378, 1.000000e+00
  br i1 %379, label %380, label %778, !dx.controlflow.hints !50

; <label>:380                                     ; preds = %344
  %381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %382 = extractvalue %dx.types.CBufRet.f32 %381, 0
  %383 = fcmp fast une float %382, 0.000000e+00
  br i1 %383, label %384, label %778, !dx.controlflow.hints !51

; <label>:384                                     ; preds = %380
  %385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %386 = extractvalue %dx.types.CBufRet.f32 %385, 0
  %387 = extractvalue %dx.types.CBufRet.f32 %385, 1
  %388 = extractvalue %dx.types.CBufRet.f32 %385, 2
  %389 = extractvalue %dx.types.CBufRet.f32 %385, 3
  %390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %391 = extractvalue %dx.types.CBufRet.f32 %390, 0
  %392 = extractvalue %dx.types.CBufRet.f32 %390, 1
  %393 = extractvalue %dx.types.CBufRet.f32 %390, 2
  %394 = extractvalue %dx.types.CBufRet.f32 %390, 3
  %395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %396 = extractvalue %dx.types.CBufRet.f32 %395, 0
  %397 = extractvalue %dx.types.CBufRet.f32 %395, 1
  %398 = extractvalue %dx.types.CBufRet.f32 %395, 2
  %399 = extractvalue %dx.types.CBufRet.f32 %395, 3
  %400 = fmul fast float %386, %216
  %401 = call float @dx.op.tertiary.f32(i32 46, float %217, float %387, float %400)  ; FMad(a,b,c)
  %402 = call float @dx.op.tertiary.f32(i32 46, float %218, float %388, float %401)  ; FMad(a,b,c)
  %403 = fadd fast float %402, %389
  %404 = fmul fast float %391, %216
  %405 = call float @dx.op.tertiary.f32(i32 46, float %217, float %392, float %404)  ; FMad(a,b,c)
  %406 = call float @dx.op.tertiary.f32(i32 46, float %218, float %393, float %405)  ; FMad(a,b,c)
  %407 = fadd fast float %406, %394
  %408 = fmul fast float %396, %216
  %409 = call float @dx.op.tertiary.f32(i32 46, float %217, float %397, float %408)  ; FMad(a,b,c)
  %410 = call float @dx.op.tertiary.f32(i32 46, float %218, float %398, float %409)  ; FMad(a,b,c)
  %411 = fadd fast float %410, %399
  %412 = fcmp fast oge float %403, 1.000000e+00
  %413 = fcmp fast oge float %407, 1.000000e+00
  %414 = or i1 %412, %413
  %415 = fcmp fast olt float %403, 0.000000e+00
  %416 = fcmp fast olt float %407, 0.000000e+00
  %417 = or i1 %415, %416
  %418 = or i1 %414, %417
  br i1 %418, label %778, label %419, !dx.controlflow.hints !52

; <label>:419                                     ; preds = %384
  %420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %421 = extractvalue %dx.types.CBufRet.f32 %420, 0
  %422 = extractvalue %dx.types.CBufRet.f32 %420, 1
  %423 = extractvalue %dx.types.CBufRet.f32 %420, 2
  %424 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %425 = extractvalue %dx.types.CBufRet.i32 %424, 2
  %426 = uitofp i32 %425 to float
  %427 = extractvalue %dx.types.CBufRet.i32 %424, 3
  %428 = uitofp i32 %427 to float
  %429 = extractvalue %dx.types.CBufRet.f32 %420, 3
  %430 = fmul fast float %429, 2.000000e+00
  %431 = fsub fast float %403, %421
  %432 = fsub fast float %407, %422
  %433 = fmul fast float %430, %431
  %434 = fmul fast float %430, %432
  %435 = fdiv fast float 1.000000e+00, %226
  %436 = fmul fast float %434, %435
  %437 = call float @dx.op.unary.f32(i32 6, float %436)  ; FAbs(value)
  %438 = fmul fast float %423, %218
  %439 = fmul fast float %438, %430
  %440 = call float @dx.op.unary.f32(i32 6, float %439)  ; FAbs(value)
  %441 = call float @dx.op.unary.f32(i32 6, float %433)  ; FAbs(value)
  %442 = call float @dx.op.binary.f32(i32 35, float %440, float %437)  ; FMax(a,b)
  %443 = call float @dx.op.binary.f32(i32 35, float %441, float %442)  ; FMax(a,b)
  %444 = fmul fast float %443, 2.000000e+00
  %445 = call float @dx.op.unary.f32(i32 23, float %444)  ; Log(value)
  %446 = call float @dx.op.binary.f32(i32 35, float %445, float %426)  ; FMax(a,b)
  %447 = call float @dx.op.unary.f32(i32 22, float %446)  ; Frc(value)
  %448 = fadd fast float %447, 0xBFEA666660000000
  %449 = fmul fast float %448, 8.000000e+00
  %450 = call float @dx.op.unary.f32(i32 7, float %449)  ; Saturate(value)
  %451 = call float @dx.op.unary.f32(i32 27, float %446)  ; Round_ni(value)
  %452 = fadd fast float %451, %450
  %453 = call float @dx.op.binary.f32(i32 36, float %452, float %428)  ; FMin(a,b)
  %454 = call float @dx.op.unary.f32(i32 27, float %453)  ; Round_ni(value)
  %455 = fsub fast float -0.000000e+00, %454
  %456 = call float @dx.op.unary.f32(i32 21, float %455)  ; Exp(value)
  %457 = fmul fast float %456, %430
  %458 = fmul fast float %457, %403
  %459 = fmul fast float %457, %407
  %460 = fmul fast float %458, 2.500000e-01
  %461 = fmul fast float %459, 2.500000e-01
  %462 = fadd fast float %460, 5.000000e-01
  %463 = fadd fast float %461, 5.000000e-01
  %464 = fsub fast float %428, %426
  %465 = fptoui float %464 to i32
  %466 = add i32 %465, 320
  %467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 %466)  ; CBufferLoadLegacy(handle,regIndex)
  %468 = extractvalue %dx.types.CBufRet.f32 %467, 0
  %469 = extractvalue %dx.types.CBufRet.f32 %467, 1
  %470 = fcmp fast une float %453, %428
  %471 = fsub fast float %403, %468
  %472 = fsub fast float %407, %469
  %473 = call float @dx.op.unary.f32(i32 6, float %471)  ; FAbs(value)
  %474 = call float @dx.op.unary.f32(i32 6, float %472)  ; FAbs(value)
  %475 = fmul fast float %473, %457
  %476 = fmul fast float %474, %457
  %477 = fcmp fast olt float %475, 1.000000e+00
  %478 = fcmp fast olt float %476, 1.000000e+00
  %479 = and i1 %477, %478
  %480 = or i1 %470, %479
  br i1 %480, label %481, label %778, !dx.controlflow.hints !53

; <label>:481                                     ; preds = %419
  %482 = fmul fast float %459, 5.000000e-01
  %483 = fmul fast float %458, 5.000000e-01
  %484 = fadd fast float %482, 5.000000e-01
  %485 = fadd fast float %483, 5.000000e-01
  %486 = sitofp i32 %425 to float
  %487 = fsub fast float %453, %486
  %488 = call float @dx.op.unary.f32(i32 27, float %487)  ; Round_ni(value)
  %489 = call float @dx.op.unary.f32(i32 22, float %453)  ; Frc(value)
  %490 = call float @dx.op.unary.f32(i32 22, float %485)  ; Frc(value)
  %491 = call float @dx.op.unary.f32(i32 22, float %484)  ; Frc(value)
  %492 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %21, float %490, float %491, float %488, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %493 = extractvalue %dx.types.ResRet.f32 %492, 0
  %494 = extractvalue %dx.types.ResRet.f32 %492, 1
  %495 = extractvalue %dx.types.ResRet.f32 %492, 2
  %496 = extractvalue %dx.types.ResRet.f32 %492, 3
  %497 = fcmp fast ogt float %489, 0.000000e+00
  br i1 %497, label %498, label %519, !dx.controlflow.hints !54

; <label>:498                                     ; preds = %481
  %499 = fadd fast float %488, 1.000000e+00
  %500 = call float @dx.op.unary.f32(i32 22, float %462)  ; Frc(value)
  %501 = call float @dx.op.unary.f32(i32 22, float %463)  ; Frc(value)
  %502 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %21, float %500, float %501, float %499, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %503 = extractvalue %dx.types.ResRet.f32 %502, 0
  %504 = extractvalue %dx.types.ResRet.f32 %502, 1
  %505 = extractvalue %dx.types.ResRet.f32 %502, 2
  %506 = extractvalue %dx.types.ResRet.f32 %502, 3
  %507 = fsub fast float %503, %493
  %508 = fsub fast float %504, %494
  %509 = fsub fast float %505, %495
  %510 = fsub fast float %506, %496
  %511 = fmul fast float %507, %489
  %512 = fmul fast float %508, %489
  %513 = fmul fast float %509, %489
  %514 = fmul fast float %510, %489
  %515 = fadd fast float %511, %493
  %516 = fadd fast float %512, %494
  %517 = fadd fast float %513, %495
  %518 = fadd fast float %514, %496
  br label %519

; <label>:519                                     ; preds = %498, %481
  %520 = phi float [ %515, %498 ], [ %493, %481 ]
  %521 = phi float [ %516, %498 ], [ %494, %481 ]
  %522 = phi float [ %517, %498 ], [ %495, %481 ]
  %523 = phi float [ %518, %498 ], [ %496, %481 ]
  %524 = fadd fast float %520, -5.000000e-01
  %525 = fadd fast float %522, -5.000000e-01
  %526 = fmul fast float %524, 0xBFD5555560000000
  %527 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %525, float %526)  ; FMad(a,b,c)
  %528 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %521, float 0.000000e+00)  ; FMad(a,b,c)
  %529 = fadd fast float %528, %523
  %530 = fmul fast float %524, -7.500000e-01
  %531 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %525, float %530)  ; FMad(a,b,c)
  %532 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %521, float 0.000000e+00)  ; FMad(a,b,c)
  %533 = fadd fast float %532, %523
  %534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %535 = extractvalue %dx.types.CBufRet.f32 %534, 0
  %536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %537 = extractvalue %dx.types.CBufRet.f32 %536, 0
  %538 = extractvalue %dx.types.CBufRet.f32 %536, 1
  %539 = extractvalue %dx.types.CBufRet.f32 %536, 2
  %540 = extractvalue %dx.types.CBufRet.f32 %536, 3
  %541 = fsub fast float %537, %527
  %542 = fsub fast float %538, %529
  %543 = fsub fast float %539, %531
  %544 = fsub fast float %540, %533
  %545 = fmul fast float %541, %535
  %546 = fmul fast float %542, %535
  %547 = fmul fast float %543, %535
  %548 = fmul fast float %544, %535
  %549 = fadd fast float %545, %527
  %550 = fadd fast float %546, %529
  %551 = fadd fast float %547, %531
  %552 = fadd fast float %548, %533
  %553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %554 = extractvalue %dx.types.ResRet.i32 %553, 0
  %555 = and i32 %554, 536870911
  %556 = uitofp i32 %555 to float
  %557 = fmul fast float %556, %403
  %558 = fmul fast float %556, %407
  %559 = fptoui float %557 to i32
  %560 = fptoui float %558 to i32
  %561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %562 = extractvalue %dx.types.ResRet.i32 %561, 0
  %563 = and i32 %562, 31
  %564 = lshr i32 %559, %563
  %565 = lshr i32 %560, %563
  %566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %567 = extractvalue %dx.types.ResRet.i32 %566, 0
  %568 = and i32 %567, 31
  %569 = shl i32 1, %568
  %570 = call i32 @dx.op.binary.i32(i32 40, i32 %569, i32 4)  ; UMin(a,b)
  %571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %572 = extractvalue %dx.types.ResRet.i32 %571, 0
  %573 = extractvalue %dx.types.ResRet.i32 %571, 1
  %574 = icmp eq i32 %570, 0
  br i1 %574, label %616, label %575

; <label>:575                                     ; preds = %519
  br label %576

; <label>:576                                     ; preds = %604, %575
  %577 = phi i32 [ %607, %604 ], [ 0, %575 ]
  %578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %579 = extractvalue %dx.types.ResRet.i32 %578, 0
  %580 = lshr i32 %579, 16
  %581 = and i32 %580, 31
  %582 = shl i32 %565, %581
  %583 = add i32 %582, %564
  %584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %585 = extractvalue %dx.types.ResRet.i32 %584, 0
  %586 = and i32 %585, 31
  %587 = shl i32 %583, %586
  %588 = add i32 %587, %577
  %589 = shl i32 %588, 2
  %590 = add i32 %589, 32
  %591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %590, i32 undef)  ; BufferLoad(srv,index,wot)
  %592 = extractvalue %dx.types.ResRet.i32 %591, 0
  %593 = icmp slt i32 %592, 0
  %594 = getelementptr [12 x float], [12 x float]* %31, i32 0, i32 %577
  %595 = getelementptr [12 x float], [12 x float]* %32, i32 0, i32 %577
  %596 = bitcast float* %594 to i32*
  %597 = bitcast float* %595 to i32*
  br i1 %593, label %598, label %604, !dx.controlflow.hints !55

; <label>:598                                     ; preds = %576
  %599 = and i32 %592, 1073741823
  %600 = add nuw nsw i32 %599, 20
  %601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %600, i32 undef)  ; BufferLoad(srv,index,wot)
  %602 = extractvalue %dx.types.ResRet.i32 %601, 0
  %603 = extractvalue %dx.types.ResRet.i32 %601, 1
  br label %604

; <label>:604                                     ; preds = %598, %576
  %605 = phi i32 [ %602, %598 ], [ %572, %576 ]
  %606 = phi i32 [ %603, %598 ], [ %573, %576 ]
  store i32 %605, i32* %596, align 4
  store i32 %606, i32* %597, align 4
  %607 = add nuw i32 %577, 1
  %608 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %609 = extractvalue %dx.types.CBufRet.i32 %608, 2
  %610 = icmp eq i32 %609, 0
  %611 = icmp ugt i32 %592, -1073741825
  %612 = and i1 %611, %610
  %613 = icmp ult i32 %607, %570
  %614 = and i1 %612, %613
  br i1 %614, label %576, label %615, !dx.controlflow.hints !56

; <label>:615                                     ; preds = %604
  br label %616

; <label>:616                                     ; preds = %615, %519
  %617 = phi i32 [ 0, %519 ], [ %607, %615 ]
  %618 = extractvalue %dx.types.CBufRet.f32 %381, 2
  %619 = fptoui float %618 to i32
  %620 = icmp eq i32 %619, 0
  br i1 %620, label %672, label %621

; <label>:621                                     ; preds = %616
  br label %622

; <label>:622                                     ; preds = %667, %621
  %623 = phi i32 [ %668, %667 ], [ %617, %621 ]
  %624 = phi i32 [ %669, %667 ], [ 0, %621 ]
  %625 = lshr i32 %624, 2
  %626 = and i32 %624, 3
  %627 = add nuw nsw i32 %625, 83
  %628 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 %627)  ; CBufferLoadLegacy(handle,regIndex)
  %629 = extractvalue %dx.types.CBufRet.i32 %628, 0
  %630 = extractvalue %dx.types.CBufRet.i32 %628, 1
  %631 = extractvalue %dx.types.CBufRet.i32 %628, 2
  %632 = extractvalue %dx.types.CBufRet.i32 %628, 3
  %633 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i32 0, i32 0
  store i32 %629, i32* %633, align 4
  %634 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i32 0, i32 1
  store i32 %630, i32* %634, align 4
  %635 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i32 0, i32 2
  store i32 %631, i32* %635, align 4
  %636 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i32 0, i32 3
  store i32 %632, i32* %636, align 4
  %637 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i32 0, i32 %626
  %638 = load i32, i32* %637, align 4, !tbaa !57, !noalias !61
  %639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %640 = extractvalue %dx.types.ResRet.i32 %639, 0
  %641 = lshr i32 %640, 16
  %642 = and i32 %641, 31
  %643 = shl i32 %565, %642
  %644 = add i32 %643, %564
  %645 = shl i32 %644, 2
  %646 = add i32 %645, %638
  %647 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %646, i32 undef)  ; BufferLoad(srv,index,wot)
  %648 = extractvalue %dx.types.ResRet.i32 %647, 0
  %649 = icmp eq i32 %648, 0
  br i1 %649, label %667, label %650, !dx.controlflow.hints !66

; <label>:650                                     ; preds = %622
  %651 = icmp slt i32 %648, 0
  %652 = getelementptr [12 x float], [12 x float]* %31, i32 0, i32 %623
  %653 = getelementptr [12 x float], [12 x float]* %32, i32 0, i32 %623
  %654 = bitcast float* %652 to i32*
  %655 = bitcast float* %653 to i32*
  br i1 %651, label %656, label %663, !dx.controlflow.hints !67

; <label>:656                                     ; preds = %650
  %657 = and i32 %648, 1073741823
  %658 = add i32 %638, 20
  %659 = add i32 %658, %657
  %660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %659, i32 undef)  ; BufferLoad(srv,index,wot)
  %661 = extractvalue %dx.types.ResRet.i32 %660, 0
  %662 = extractvalue %dx.types.ResRet.i32 %660, 1
  br label %663

; <label>:663                                     ; preds = %656, %650
  %664 = phi i32 [ %661, %656 ], [ %572, %650 ]
  %665 = phi i32 [ %662, %656 ], [ %573, %650 ]
  store i32 %664, i32* %654, align 4
  store i32 %665, i32* %655, align 4
  %666 = add i32 %623, 1
  br label %667

; <label>:667                                     ; preds = %663, %622
  %668 = phi i32 [ %623, %622 ], [ %666, %663 ]
  %669 = add nuw i32 %624, 1
  %670 = icmp eq i32 %669, %619
  br i1 %670, label %671, label %622

; <label>:671                                     ; preds = %667
  br label %672

; <label>:672                                     ; preds = %671, %616
  %673 = phi i32 [ %617, %616 ], [ %668, %671 ]
  %674 = icmp eq i32 %673, 1
  %675 = getelementptr [12 x float], [12 x float]* %31, i32 0, i32 0
  %676 = getelementptr [12 x float], [12 x float]* %32, i32 0, i32 0
  br i1 %674, label %677, label %680, !dx.controlflow.hints !68

; <label>:677                                     ; preds = %672
  %678 = load float, float* %675, align 4
  %679 = load float, float* %676, align 4
  br label %707

; <label>:680                                     ; preds = %672
  %681 = load float, float* %675, align 4
  %682 = load float, float* %676, align 4
  %683 = fdiv fast float 1.000000e+00, %682
  %684 = fsub fast float %681, %683
  %685 = icmp ugt i32 %673, 1
  br i1 %685, label %686, label %702

; <label>:686                                     ; preds = %680
  br label %687

; <label>:687                                     ; preds = %687, %686
  %688 = phi float [ %697, %687 ], [ %684, %686 ]
  %689 = phi float [ %698, %687 ], [ %681, %686 ]
  %690 = phi i32 [ %699, %687 ], [ 1, %686 ]
  %691 = getelementptr [12 x float], [12 x float]* %31, i32 0, i32 %690
  %692 = load float, float* %691, align 4
  %693 = getelementptr [12 x float], [12 x float]* %32, i32 0, i32 %690
  %694 = load float, float* %693, align 4
  %695 = fdiv fast float 1.000000e+00, %694
  %696 = fsub fast float %692, %695
  %697 = call float @dx.op.binary.f32(i32 36, float %688, float %696)  ; FMin(a,b)
  %698 = call float @dx.op.binary.f32(i32 35, float %689, float %692)  ; FMax(a,b)
  %699 = add nuw i32 %690, 1
  %700 = icmp eq i32 %699, %673
  br i1 %700, label %701, label %687

; <label>:701                                     ; preds = %687
  br label %702

; <label>:702                                     ; preds = %701, %680
  %703 = phi float [ %684, %680 ], [ %697, %701 ]
  %704 = phi float [ %681, %680 ], [ %698, %701 ]
  %705 = fsub fast float %704, %703
  %706 = fdiv fast float 1.000000e+00, %705
  br label %707

; <label>:707                                     ; preds = %702, %677
  %708 = phi float [ %678, %677 ], [ %704, %702 ]
  %709 = phi float [ %679, %677 ], [ %706, %702 ]
  %710 = fadd fast float %411, %708
  %711 = fmul fast float %710, %709
  %712 = call float @dx.op.unary.f32(i32 7, float %711)  ; Saturate(value)
  %713 = fmul fast float %712, 2.000000e+00
  %714 = fsub fast float 1.000000e+00, %713
  %715 = fmul fast float %549, %549
  %716 = fsub fast float %550, %715
  %717 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %716)  ; FMax(a,b)
  %718 = fdiv fast float 1.000000e+00, %717
  %719 = fmul fast float %550, %549
  %720 = fsub fast float %551, %719
  %721 = fsub fast float %714, %549
  %722 = fmul fast float %714, %714
  %723 = fsub fast float %722, %550
  %724 = fmul fast float %718, %720
  %725 = fmul fast float %724, %721
  %726 = fsub fast float %723, %725
  %727 = fmul fast float %550, %550
  %728 = fsub fast float %552, %727
  %729 = fmul fast float %720, %720
  %730 = fmul fast float %729, %718
  %731 = fsub fast float %728, %730
  %732 = fdiv fast float %726, %731
  %733 = fmul fast float %732, %720
  %734 = fsub fast float %721, %733
  %735 = fmul fast float %734, %718
  %736 = fmul fast float %735, %549
  %737 = fsub fast float 1.000000e+00, %736
  %738 = fmul fast float %732, %550
  %739 = fsub fast float %737, %738
  %740 = fmul fast float %735, %735
  %741 = fmul fast float %732, 4.000000e+00
  %742 = fmul fast float %741, %739
  %743 = fsub fast float %740, %742
  %744 = call float @dx.op.unary.f32(i32 24, float %743)  ; Sqrt(value)
  %745 = fcmp fast oge float %735, 0.000000e+00
  %746 = fsub fast float -0.000000e+00, %744
  %747 = select i1 %745, float %746, float %744
  %748 = fsub fast float %747, %735
  %749 = fdiv fast float %748, %732
  %750 = fdiv fast float %739, %748
  %751 = fmul fast float %749, 5.000000e-01
  %752 = fmul fast float %750, 2.000000e+00
  %753 = select i1 %745, float %751, float %752
  %754 = select i1 %745, float %752, float %751
  %755 = call float @dx.op.binary.f32(i32 35, float %753, float %754)  ; FMax(a,b)
  %756 = call float @dx.op.binary.f32(i32 36, float %753, float %754)  ; FMin(a,b)
  %757 = fcmp fast ogt float %714, %755
  %758 = fsub fast float %714, %756
  %759 = fsub fast float %714, %755
  %760 = fsub fast float %755, %756
  %761 = select i1 %757, float %759, float %760
  %762 = fmul float %758, %761
  %763 = select i1 %757, float %756, float %714
  %764 = fcmp fast ogt float %714, %756
  %765 = fmul fast float %763, %755
  %766 = fadd fast float %763, %755
  %767 = fmul fast float %766, %549
  %768 = fadd fast float %765, %550
  %769 = fsub fast float %768, %767
  %770 = fdiv fast float %769, %762
  %771 = select i1 %764, float %770, float 0.000000e+00
  %772 = fsub fast float 1.000000e+00, %771
  %773 = select i1 %757, float %772, float %771
  %774 = call float @dx.op.unary.f32(i32 7, float %773)  ; Saturate(value)
  %775 = extractvalue %dx.types.CBufRet.f32 %534, 3
  %776 = fmul fast float %775, %774
  %777 = fsub fast float 1.000000e+00, %776
  br label %778

; <label>:778                                     ; preds = %707, %419, %384, %380, %344
  %779 = phi float [ 1.000000e+00, %344 ], [ %777, %707 ], [ 1.000000e+00, %384 ], [ 1.000000e+00, %419 ], [ 1.000000e+00, %380 ]
  %780 = fcmp fast ogt float %376, 0.000000e+00
  br i1 %780, label %781, label %936, !dx.controlflow.hints !69

; <label>:781                                     ; preds = %778
  %782 = fadd fast float %285, %259
  %783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %784 = extractvalue %dx.types.CBufRet.f32 %783, 2
  %785 = extractvalue %dx.types.CBufRet.f32 %783, 3
  %786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %787 = extractvalue %dx.types.CBufRet.f32 %786, 2
  %788 = call float @dx.op.binary.f32(i32 35, float %782, float 0.000000e+00)  ; FMax(a,b)
  %789 = fadd fast float %788, 0x3F10000000000000
  %790 = fcmp fast oeq float %787, 0.000000e+00
  br i1 %790, label %792, label %791, !dx.controlflow.hints !70

; <label>:791                                     ; preds = %781
  br label %859

; <label>:792                                     ; preds = %781
  %793 = extractvalue %dx.types.CBufRet.f32 %783, 1
  %794 = extractvalue %dx.types.CBufRet.f32 %783, 0
  %795 = fmul fast float %794, %274
  %796 = fmul fast float %793, %275
  %797 = fadd fast float %795, 5.000000e-01
  %798 = call float @dx.op.unary.f32(i32 27, float %797)  ; Round_ni(value)
  %799 = fadd fast float %796, 5.000000e-01
  %800 = call float @dx.op.unary.f32(i32 27, float %799)  ; Round_ni(value)
  %801 = fsub fast float %797, %798
  %802 = fsub fast float %799, %800
  %803 = fadd fast float %798, -5.000000e-01
  %804 = fadd fast float %800, -5.000000e-01
  %805 = fmul fast float %801, 2.000000e+00
  %806 = fsub fast float 3.000000e+00, %805
  %807 = fadd fast float %805, 1.000000e+00
  %808 = fsub fast float 2.000000e+00, %801
  %809 = bitcast float %806 to i32
  %810 = sub nsw i32 2129859010, %809
  %811 = bitcast i32 %810 to float
  %812 = fmul fast float %811, %808
  %813 = fadd fast float %812, -1.000000e+00
  %814 = bitcast float %807 to i32
  %815 = sub nsw i32 2129859010, %814
  %816 = bitcast i32 %815 to float
  %817 = fmul fast float %816, %801
  %818 = fadd fast float %817, 1.000000e+00
  %819 = fmul fast float %802, 2.000000e+00
  %820 = fsub fast float 3.000000e+00, %819
  %821 = fadd fast float %819, 1.000000e+00
  %822 = fsub fast float 2.000000e+00, %802
  %823 = bitcast float %820 to i32
  %824 = sub nsw i32 2129859010, %823
  %825 = bitcast i32 %824 to float
  %826 = fmul fast float %825, %822
  %827 = fadd fast float %826, -1.000000e+00
  %828 = bitcast float %821 to i32
  %829 = sub nsw i32 2129859010, %828
  %830 = bitcast i32 %829 to float
  %831 = fmul fast float %830, %802
  %832 = fadd fast float %831, 1.000000e+00
  %833 = fadd fast float %813, %803
  %834 = fmul fast float %833, %784
  %835 = fadd fast float %827, %804
  %836 = fmul fast float %835, %785
  %837 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %24, float %834, float %836, float undef, float undef, i32 0, i32 0, i32 undef, float %789)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %838 = extractvalue %dx.types.ResRet.f32 %837, 0
  %839 = fmul fast float %838, %806
  %840 = fadd fast float %818, %803
  %841 = fmul fast float %840, %784
  %842 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %24, float %841, float %836, float undef, float undef, i32 0, i32 0, i32 undef, float %789)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %843 = extractvalue %dx.types.ResRet.f32 %842, 0
  %844 = fmul fast float %843, %807
  %845 = fadd fast float %832, %804
  %846 = fmul fast float %845, %785
  %847 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %24, float %834, float %846, float undef, float undef, i32 0, i32 0, i32 undef, float %789)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %848 = extractvalue %dx.types.ResRet.f32 %847, 0
  %849 = fmul fast float %848, %806
  %850 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %24, float %841, float %846, float undef, float undef, i32 0, i32 0, i32 undef, float %789)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %851 = extractvalue %dx.types.ResRet.f32 %850, 0
  %852 = fmul fast float %851, %807
  %853 = fadd fast float %852, %849
  %854 = fmul fast float %853, %821
  %855 = fadd fast float %844, %839
  %856 = fmul fast float %855, %820
  %857 = fadd fast float %856, %854
  %858 = fmul fast float %857, 6.250000e-02
  br label %936

; <label>:859                                     ; preds = %905, %791
  %860 = phi float [ %900, %905 ], [ 0.000000e+00, %791 ]
  %861 = phi float [ %902, %905 ], [ 0.000000e+00, %791 ]
  %862 = phi i32 [ %906, %905 ], [ 0, %791 ]
  %863 = mul i32 %862, 2
  %864 = add i32 0, %863
  %865 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %864
  %866 = load float, float* %865, align 4
  %867 = mul i32 %862, 2
  %868 = add i32 1, %867
  %869 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %868
  %870 = load float, float* %869, align 4
  %871 = call float @dx.op.tertiary.f32(i32 46, float %870, float -0.000000e+00, float %866)  ; FMad(a,b,c)
  %872 = fmul fast float %871, %787
  %873 = fmul fast float %870, %787
  %874 = fadd fast float %872, %274
  %875 = fadd fast float %873, %275
  %876 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %11, %dx.types.Handle %23, float %874, float %875, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %877 = extractvalue %dx.types.ResRet.f32 %876, 0
  %878 = extractvalue %dx.types.ResRet.f32 %876, 1
  %879 = extractvalue %dx.types.ResRet.f32 %876, 2
  %880 = extractvalue %dx.types.ResRet.f32 %876, 3
  %881 = getelementptr inbounds [4 x float], [4 x float]* %36, i32 0, i32 0
  store float %877, float* %881, align 4
  %882 = getelementptr inbounds [4 x float], [4 x float]* %36, i32 0, i32 1
  store float %878, float* %882, align 4
  %883 = getelementptr inbounds [4 x float], [4 x float]* %36, i32 0, i32 2
  store float %879, float* %883, align 4
  %884 = getelementptr inbounds [4 x float], [4 x float]* %36, i32 0, i32 3
  store float %880, float* %884, align 4
  %885 = fsub fast float %877, %789
  %886 = fcmp fast olt float %885, 0.000000e+00
  %887 = select i1 %886, float 0.000000e+00, float 1.000000e+00
  %888 = fadd fast float %887, %860
  %889 = fmul fast float %887, %885
  %890 = fadd fast float %889, %861
  br label %891

; <label>:891                                     ; preds = %891, %859
  %892 = phi i32 [ 1, %859 ], [ %903, %891 ]
  %893 = phi float [ %890, %859 ], [ %902, %891 ]
  %894 = phi float [ %888, %859 ], [ %900, %891 ]
  %895 = getelementptr [4 x float], [4 x float]* %36, i32 0, i32 %892
  %896 = load float, float* %895, align 4, !tbaa !71, !noalias !61
  %897 = fsub fast float %896, %789
  %898 = fcmp fast olt float %897, 0.000000e+00
  %899 = select i1 %898, float 0.000000e+00, float 1.000000e+00
  %900 = fadd fast float %899, %894
  %901 = fmul fast float %899, %897
  %902 = fadd fast float %901, %893
  %903 = add nuw nsw i32 %892, 1
  %904 = icmp eq i32 %903, 4
  br i1 %904, label %905, label %891, !llvm.loop !73

; <label>:905                                     ; preds = %891
  %906 = add nuw nsw i32 %862, 1
  %907 = icmp eq i32 %906, 8
  br i1 %907, label %908, label %859, !llvm.loop !75

; <label>:908                                     ; preds = %905
  %909 = fdiv fast float 1.000000e+00, %900
  %910 = fmul fast float %909, %902
  %911 = fdiv fast float 1.000000e+00, %789
  %912 = fmul fast float %910, %911
  %913 = call float @dx.op.unary.f32(i32 7, float %912)  ; Saturate(value)
  %914 = call float @dx.op.binary.f32(i32 35, float %913, float 0.000000e+00)  ; FMax(a,b)
  %915 = fmul fast float %900, 3.125000e-02
  %916 = call float @dx.op.unary.f32(i32 7, float %915)  ; Saturate(value)
  %917 = fmul fast float %916, 2.000000e+00
  %918 = fadd fast float %917, -1.000000e+00
  %919 = fcmp fast ogt float %918, 0.000000e+00
  %920 = fcmp fast olt float %918, 0.000000e+00
  %921 = zext i1 %919 to i32
  %922 = zext i1 %920 to i32
  %923 = sub nsw i32 %921, %922
  %924 = sitofp i32 %923 to float
  %925 = fmul fast float %924, %918
  %926 = fsub fast float 1.000000e+00, %925
  %927 = fmul fast float %926, %926
  %928 = fmul fast float %927, %926
  %929 = fsub fast float %926, %928
  %930 = fmul fast float %929, %914
  %931 = fsub fast float 1.000000e+00, %928
  %932 = fsub fast float %931, %930
  %933 = fmul fast float %924, 5.000000e-01
  %934 = fmul fast float %933, %932
  %935 = fsub fast float 5.000000e-01, %934
  br label %936

; <label>:936                                     ; preds = %908, %792, %778
  %937 = phi float [ 1.000000e+00, %778 ], [ %858, %792 ], [ %935, %908 ]
  %938 = fcmp fast ogt float %374, 0.000000e+00
  br i1 %938, label %939, label %1096, !dx.controlflow.hints !76

; <label>:939                                     ; preds = %936
  %940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %941 = extractvalue %dx.types.CBufRet.f32 %940, 1
  %942 = fadd fast float %941, %259
  %943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %944 = extractvalue %dx.types.CBufRet.f32 %943, 2
  %945 = extractvalue %dx.types.CBufRet.f32 %943, 3
  %946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %947 = extractvalue %dx.types.CBufRet.f32 %946, 1
  %948 = call float @dx.op.binary.f32(i32 35, float %942, float 0.000000e+00)  ; FMax(a,b)
  %949 = fadd fast float %948, 0x3F10000000000000
  %950 = fcmp fast oeq float %947, 0.000000e+00
  br i1 %950, label %952, label %951, !dx.controlflow.hints !70

; <label>:951                                     ; preds = %939
  br label %1019

; <label>:952                                     ; preds = %939
  %953 = extractvalue %dx.types.CBufRet.f32 %943, 1
  %954 = extractvalue %dx.types.CBufRet.f32 %943, 0
  %955 = fmul fast float %954, %266
  %956 = fmul fast float %953, %267
  %957 = fadd fast float %955, 5.000000e-01
  %958 = call float @dx.op.unary.f32(i32 27, float %957)  ; Round_ni(value)
  %959 = fadd fast float %956, 5.000000e-01
  %960 = call float @dx.op.unary.f32(i32 27, float %959)  ; Round_ni(value)
  %961 = fsub fast float %957, %958
  %962 = fsub fast float %959, %960
  %963 = fadd fast float %958, -5.000000e-01
  %964 = fadd fast float %960, -5.000000e-01
  %965 = fmul fast float %961, 2.000000e+00
  %966 = fsub fast float 3.000000e+00, %965
  %967 = fadd fast float %965, 1.000000e+00
  %968 = fsub fast float 2.000000e+00, %961
  %969 = bitcast float %966 to i32
  %970 = sub nsw i32 2129859010, %969
  %971 = bitcast i32 %970 to float
  %972 = fmul fast float %971, %968
  %973 = fadd fast float %972, -1.000000e+00
  %974 = bitcast float %967 to i32
  %975 = sub nsw i32 2129859010, %974
  %976 = bitcast i32 %975 to float
  %977 = fmul fast float %976, %961
  %978 = fadd fast float %977, 1.000000e+00
  %979 = fmul fast float %962, 2.000000e+00
  %980 = fsub fast float 3.000000e+00, %979
  %981 = fadd fast float %979, 1.000000e+00
  %982 = fsub fast float 2.000000e+00, %962
  %983 = bitcast float %980 to i32
  %984 = sub nsw i32 2129859010, %983
  %985 = bitcast i32 %984 to float
  %986 = fmul fast float %985, %982
  %987 = fadd fast float %986, -1.000000e+00
  %988 = bitcast float %981 to i32
  %989 = sub nsw i32 2129859010, %988
  %990 = bitcast i32 %989 to float
  %991 = fmul fast float %990, %962
  %992 = fadd fast float %991, 1.000000e+00
  %993 = fadd fast float %973, %963
  %994 = fmul fast float %993, %944
  %995 = fadd fast float %987, %964
  %996 = fmul fast float %995, %945
  %997 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %12, %dx.types.Handle %24, float %994, float %996, float undef, float undef, i32 0, i32 0, i32 undef, float %949)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %998 = extractvalue %dx.types.ResRet.f32 %997, 0
  %999 = fmul fast float %998, %966
  %1000 = fadd fast float %978, %963
  %1001 = fmul fast float %1000, %944
  %1002 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %12, %dx.types.Handle %24, float %1001, float %996, float undef, float undef, i32 0, i32 0, i32 undef, float %949)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1003 = extractvalue %dx.types.ResRet.f32 %1002, 0
  %1004 = fmul fast float %1003, %967
  %1005 = fadd fast float %992, %964
  %1006 = fmul fast float %1005, %945
  %1007 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %12, %dx.types.Handle %24, float %994, float %1006, float undef, float undef, i32 0, i32 0, i32 undef, float %949)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1008 = extractvalue %dx.types.ResRet.f32 %1007, 0
  %1009 = fmul fast float %1008, %966
  %1010 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %12, %dx.types.Handle %24, float %1001, float %1006, float undef, float undef, i32 0, i32 0, i32 undef, float %949)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1011 = extractvalue %dx.types.ResRet.f32 %1010, 0
  %1012 = fmul fast float %1011, %967
  %1013 = fadd fast float %1012, %1009
  %1014 = fmul fast float %1013, %981
  %1015 = fadd fast float %1004, %999
  %1016 = fmul fast float %1015, %980
  %1017 = fadd fast float %1016, %1014
  %1018 = fmul fast float %1017, 6.250000e-02
  br label %1096

; <label>:1019                                    ; preds = %1065, %951
  %1020 = phi float [ %1060, %1065 ], [ 0.000000e+00, %951 ]
  %1021 = phi float [ %1062, %1065 ], [ 0.000000e+00, %951 ]
  %1022 = phi i32 [ %1066, %1065 ], [ 0, %951 ]
  %1023 = mul i32 %1022, 2
  %1024 = add i32 0, %1023
  %1025 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1024
  %1026 = load float, float* %1025, align 4
  %1027 = mul i32 %1022, 2
  %1028 = add i32 1, %1027
  %1029 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1028
  %1030 = load float, float* %1029, align 4
  %1031 = call float @dx.op.tertiary.f32(i32 46, float %1030, float -0.000000e+00, float %1026)  ; FMad(a,b,c)
  %1032 = fmul fast float %1031, %947
  %1033 = fmul fast float %1030, %947
  %1034 = fadd fast float %1032, %266
  %1035 = fadd fast float %1033, %267
  %1036 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %12, %dx.types.Handle %23, float %1034, float %1035, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1037 = extractvalue %dx.types.ResRet.f32 %1036, 0
  %1038 = extractvalue %dx.types.ResRet.f32 %1036, 1
  %1039 = extractvalue %dx.types.ResRet.f32 %1036, 2
  %1040 = extractvalue %dx.types.ResRet.f32 %1036, 3
  %1041 = getelementptr inbounds [4 x float], [4 x float]* %35, i32 0, i32 0
  store float %1037, float* %1041, align 4
  %1042 = getelementptr inbounds [4 x float], [4 x float]* %35, i32 0, i32 1
  store float %1038, float* %1042, align 4
  %1043 = getelementptr inbounds [4 x float], [4 x float]* %35, i32 0, i32 2
  store float %1039, float* %1043, align 4
  %1044 = getelementptr inbounds [4 x float], [4 x float]* %35, i32 0, i32 3
  store float %1040, float* %1044, align 4
  %1045 = fsub fast float %1037, %949
  %1046 = fcmp fast olt float %1045, 0.000000e+00
  %1047 = select i1 %1046, float 0.000000e+00, float 1.000000e+00
  %1048 = fadd fast float %1047, %1020
  %1049 = fmul fast float %1047, %1045
  %1050 = fadd fast float %1049, %1021
  br label %1051

; <label>:1051                                    ; preds = %1051, %1019
  %1052 = phi i32 [ 1, %1019 ], [ %1063, %1051 ]
  %1053 = phi float [ %1050, %1019 ], [ %1062, %1051 ]
  %1054 = phi float [ %1048, %1019 ], [ %1060, %1051 ]
  %1055 = getelementptr [4 x float], [4 x float]* %35, i32 0, i32 %1052
  %1056 = load float, float* %1055, align 4, !tbaa !71, !noalias !61
  %1057 = fsub fast float %1056, %949
  %1058 = fcmp fast olt float %1057, 0.000000e+00
  %1059 = select i1 %1058, float 0.000000e+00, float 1.000000e+00
  %1060 = fadd fast float %1059, %1054
  %1061 = fmul fast float %1059, %1057
  %1062 = fadd fast float %1061, %1053
  %1063 = add nuw nsw i32 %1052, 1
  %1064 = icmp eq i32 %1063, 4
  br i1 %1064, label %1065, label %1051, !llvm.loop !73

; <label>:1065                                    ; preds = %1051
  %1066 = add nuw nsw i32 %1022, 1
  %1067 = icmp eq i32 %1066, 8
  br i1 %1067, label %1068, label %1019, !llvm.loop !75

; <label>:1068                                    ; preds = %1065
  %1069 = fdiv fast float 1.000000e+00, %1060
  %1070 = fmul fast float %1069, %1062
  %1071 = fdiv fast float 1.000000e+00, %949
  %1072 = fmul fast float %1070, %1071
  %1073 = call float @dx.op.unary.f32(i32 7, float %1072)  ; Saturate(value)
  %1074 = call float @dx.op.binary.f32(i32 35, float %1073, float 0.000000e+00)  ; FMax(a,b)
  %1075 = fmul fast float %1060, 3.125000e-02
  %1076 = call float @dx.op.unary.f32(i32 7, float %1075)  ; Saturate(value)
  %1077 = fmul fast float %1076, 2.000000e+00
  %1078 = fadd fast float %1077, -1.000000e+00
  %1079 = fcmp fast ogt float %1078, 0.000000e+00
  %1080 = fcmp fast olt float %1078, 0.000000e+00
  %1081 = zext i1 %1079 to i32
  %1082 = zext i1 %1080 to i32
  %1083 = sub nsw i32 %1081, %1082
  %1084 = sitofp i32 %1083 to float
  %1085 = fmul fast float %1084, %1078
  %1086 = fsub fast float 1.000000e+00, %1085
  %1087 = fmul fast float %1086, %1086
  %1088 = fmul fast float %1087, %1086
  %1089 = fsub fast float %1086, %1088
  %1090 = fmul fast float %1089, %1074
  %1091 = fsub fast float 1.000000e+00, %1088
  %1092 = fsub fast float %1091, %1090
  %1093 = fmul fast float %1084, 5.000000e-01
  %1094 = fmul fast float %1093, %1092
  %1095 = fsub fast float 5.000000e-01, %1094
  br label %1096

; <label>:1096                                    ; preds = %1068, %952, %936
  %1097 = phi float [ 1.000000e+00, %936 ], [ %1018, %952 ], [ %1095, %1068 ]
  %1098 = fcmp fast ogt float %373, 0.000000e+00
  br i1 %1098, label %1099, label %1256, !dx.controlflow.hints !77

; <label>:1099                                    ; preds = %1096
  %1100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %1101 = extractvalue %dx.types.CBufRet.f32 %1100, 0
  %1102 = fadd fast float %1101, %259
  %1103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %1104 = extractvalue %dx.types.CBufRet.f32 %1103, 2
  %1105 = extractvalue %dx.types.CBufRet.f32 %1103, 3
  %1106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %1107 = extractvalue %dx.types.CBufRet.f32 %1106, 0
  %1108 = call float @dx.op.binary.f32(i32 35, float %1102, float 0.000000e+00)  ; FMax(a,b)
  %1109 = fadd fast float %1108, 0x3F10000000000000
  %1110 = fcmp fast oeq float %1107, 0.000000e+00
  br i1 %1110, label %1112, label %1111, !dx.controlflow.hints !70

; <label>:1111                                    ; preds = %1099
  br label %1179

; <label>:1112                                    ; preds = %1099
  %1113 = extractvalue %dx.types.CBufRet.f32 %1103, 1
  %1114 = extractvalue %dx.types.CBufRet.f32 %1103, 0
  %1115 = fmul fast float %1114, %251
  %1116 = fmul fast float %1113, %255
  %1117 = fadd fast float %1115, 5.000000e-01
  %1118 = call float @dx.op.unary.f32(i32 27, float %1117)  ; Round_ni(value)
  %1119 = fadd fast float %1116, 5.000000e-01
  %1120 = call float @dx.op.unary.f32(i32 27, float %1119)  ; Round_ni(value)
  %1121 = fsub fast float %1117, %1118
  %1122 = fsub fast float %1119, %1120
  %1123 = fadd fast float %1118, -5.000000e-01
  %1124 = fadd fast float %1120, -5.000000e-01
  %1125 = fmul fast float %1121, 2.000000e+00
  %1126 = fsub fast float 3.000000e+00, %1125
  %1127 = fadd fast float %1125, 1.000000e+00
  %1128 = fsub fast float 2.000000e+00, %1121
  %1129 = bitcast float %1126 to i32
  %1130 = sub nsw i32 2129859010, %1129
  %1131 = bitcast i32 %1130 to float
  %1132 = fmul fast float %1131, %1128
  %1133 = fadd fast float %1132, -1.000000e+00
  %1134 = bitcast float %1127 to i32
  %1135 = sub nsw i32 2129859010, %1134
  %1136 = bitcast i32 %1135 to float
  %1137 = fmul fast float %1136, %1121
  %1138 = fadd fast float %1137, 1.000000e+00
  %1139 = fmul fast float %1122, 2.000000e+00
  %1140 = fsub fast float 3.000000e+00, %1139
  %1141 = fadd fast float %1139, 1.000000e+00
  %1142 = fsub fast float 2.000000e+00, %1122
  %1143 = bitcast float %1140 to i32
  %1144 = sub nsw i32 2129859010, %1143
  %1145 = bitcast i32 %1144 to float
  %1146 = fmul fast float %1145, %1142
  %1147 = fadd fast float %1146, -1.000000e+00
  %1148 = bitcast float %1141 to i32
  %1149 = sub nsw i32 2129859010, %1148
  %1150 = bitcast i32 %1149 to float
  %1151 = fmul fast float %1150, %1122
  %1152 = fadd fast float %1151, 1.000000e+00
  %1153 = fadd fast float %1133, %1123
  %1154 = fmul fast float %1153, %1104
  %1155 = fadd fast float %1147, %1124
  %1156 = fmul fast float %1155, %1105
  %1157 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %13, %dx.types.Handle %24, float %1154, float %1156, float undef, float undef, i32 0, i32 0, i32 undef, float %1109)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1158 = extractvalue %dx.types.ResRet.f32 %1157, 0
  %1159 = fmul fast float %1158, %1126
  %1160 = fadd fast float %1138, %1123
  %1161 = fmul fast float %1160, %1104
  %1162 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %13, %dx.types.Handle %24, float %1161, float %1156, float undef, float undef, i32 0, i32 0, i32 undef, float %1109)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1163 = extractvalue %dx.types.ResRet.f32 %1162, 0
  %1164 = fmul fast float %1163, %1127
  %1165 = fadd fast float %1152, %1124
  %1166 = fmul fast float %1165, %1105
  %1167 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %13, %dx.types.Handle %24, float %1154, float %1166, float undef, float undef, i32 0, i32 0, i32 undef, float %1109)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1168 = extractvalue %dx.types.ResRet.f32 %1167, 0
  %1169 = fmul fast float %1168, %1126
  %1170 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %13, %dx.types.Handle %24, float %1161, float %1166, float undef, float undef, i32 0, i32 0, i32 undef, float %1109)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1171 = extractvalue %dx.types.ResRet.f32 %1170, 0
  %1172 = fmul fast float %1171, %1127
  %1173 = fadd fast float %1172, %1169
  %1174 = fmul fast float %1173, %1141
  %1175 = fadd fast float %1164, %1159
  %1176 = fmul fast float %1175, %1140
  %1177 = fadd fast float %1176, %1174
  %1178 = fmul fast float %1177, 6.250000e-02
  br label %1256

; <label>:1179                                    ; preds = %1225, %1111
  %1180 = phi float [ %1220, %1225 ], [ 0.000000e+00, %1111 ]
  %1181 = phi float [ %1222, %1225 ], [ 0.000000e+00, %1111 ]
  %1182 = phi i32 [ %1226, %1225 ], [ 0, %1111 ]
  %1183 = mul i32 %1182, 2
  %1184 = add i32 0, %1183
  %1185 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1184
  %1186 = load float, float* %1185, align 4
  %1187 = mul i32 %1182, 2
  %1188 = add i32 1, %1187
  %1189 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1188
  %1190 = load float, float* %1189, align 4
  %1191 = call float @dx.op.tertiary.f32(i32 46, float %1190, float -0.000000e+00, float %1186)  ; FMad(a,b,c)
  %1192 = fmul fast float %1191, %1107
  %1193 = fmul fast float %1190, %1107
  %1194 = fadd fast float %1192, %251
  %1195 = fadd fast float %1193, %255
  %1196 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %13, %dx.types.Handle %23, float %1194, float %1195, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1197 = extractvalue %dx.types.ResRet.f32 %1196, 0
  %1198 = extractvalue %dx.types.ResRet.f32 %1196, 1
  %1199 = extractvalue %dx.types.ResRet.f32 %1196, 2
  %1200 = extractvalue %dx.types.ResRet.f32 %1196, 3
  %1201 = getelementptr inbounds [4 x float], [4 x float]* %34, i32 0, i32 0
  store float %1197, float* %1201, align 4
  %1202 = getelementptr inbounds [4 x float], [4 x float]* %34, i32 0, i32 1
  store float %1198, float* %1202, align 4
  %1203 = getelementptr inbounds [4 x float], [4 x float]* %34, i32 0, i32 2
  store float %1199, float* %1203, align 4
  %1204 = getelementptr inbounds [4 x float], [4 x float]* %34, i32 0, i32 3
  store float %1200, float* %1204, align 4
  %1205 = fsub fast float %1197, %1109
  %1206 = fcmp fast olt float %1205, 0.000000e+00
  %1207 = select i1 %1206, float 0.000000e+00, float 1.000000e+00
  %1208 = fadd fast float %1207, %1180
  %1209 = fmul fast float %1207, %1205
  %1210 = fadd fast float %1209, %1181
  br label %1211

; <label>:1211                                    ; preds = %1211, %1179
  %1212 = phi i32 [ 1, %1179 ], [ %1223, %1211 ]
  %1213 = phi float [ %1210, %1179 ], [ %1222, %1211 ]
  %1214 = phi float [ %1208, %1179 ], [ %1220, %1211 ]
  %1215 = getelementptr [4 x float], [4 x float]* %34, i32 0, i32 %1212
  %1216 = load float, float* %1215, align 4, !tbaa !71, !noalias !61
  %1217 = fsub fast float %1216, %1109
  %1218 = fcmp fast olt float %1217, 0.000000e+00
  %1219 = select i1 %1218, float 0.000000e+00, float 1.000000e+00
  %1220 = fadd fast float %1219, %1214
  %1221 = fmul fast float %1219, %1217
  %1222 = fadd fast float %1221, %1213
  %1223 = add nuw nsw i32 %1212, 1
  %1224 = icmp eq i32 %1223, 4
  br i1 %1224, label %1225, label %1211, !llvm.loop !73

; <label>:1225                                    ; preds = %1211
  %1226 = add nuw nsw i32 %1182, 1
  %1227 = icmp eq i32 %1226, 8
  br i1 %1227, label %1228, label %1179, !llvm.loop !75

; <label>:1228                                    ; preds = %1225
  %1229 = fdiv fast float 1.000000e+00, %1220
  %1230 = fmul fast float %1229, %1222
  %1231 = fdiv fast float 1.000000e+00, %1109
  %1232 = fmul fast float %1230, %1231
  %1233 = call float @dx.op.unary.f32(i32 7, float %1232)  ; Saturate(value)
  %1234 = call float @dx.op.binary.f32(i32 35, float %1233, float 0.000000e+00)  ; FMax(a,b)
  %1235 = fmul fast float %1220, 3.125000e-02
  %1236 = call float @dx.op.unary.f32(i32 7, float %1235)  ; Saturate(value)
  %1237 = fmul fast float %1236, 2.000000e+00
  %1238 = fadd fast float %1237, -1.000000e+00
  %1239 = fcmp fast ogt float %1238, 0.000000e+00
  %1240 = fcmp fast olt float %1238, 0.000000e+00
  %1241 = zext i1 %1239 to i32
  %1242 = zext i1 %1240 to i32
  %1243 = sub nsw i32 %1241, %1242
  %1244 = sitofp i32 %1243 to float
  %1245 = fmul fast float %1244, %1238
  %1246 = fsub fast float 1.000000e+00, %1245
  %1247 = fmul fast float %1246, %1246
  %1248 = fmul fast float %1247, %1246
  %1249 = fsub fast float %1246, %1248
  %1250 = fmul fast float %1249, %1234
  %1251 = fsub fast float 1.000000e+00, %1248
  %1252 = fsub fast float %1251, %1250
  %1253 = fmul fast float %1244, 5.000000e-01
  %1254 = fmul fast float %1253, %1252
  %1255 = fsub fast float 5.000000e-01, %1254
  br label %1256

; <label>:1256                                    ; preds = %1228, %1112, %1096
  %1257 = phi float [ 1.000000e+00, %1096 ], [ %1178, %1112 ], [ %1255, %1228 ]
  %1258 = fsub fast float %937, %779
  %1259 = fmul fast float %1258, %314
  %1260 = fadd fast float %1259, %779
  %1261 = fsub fast float %1097, %1260
  %1262 = fmul fast float %1261, %345
  %1263 = fadd fast float %1262, %1260
  %1264 = fsub fast float %1257, %1263
  %1265 = fmul fast float %1264, %373
  %1266 = fadd fast float %1265, %1263
  br label %1267

; <label>:1267                                    ; preds = %1256, %223
  %1268 = phi float [ %1266, %1256 ], [ 1.000000e+00, %223 ]
  %1269 = call float @dx.op.binary.f32(i32 36, float %1268, float %1268)  ; FMin(a,b)
  %1270 = call float @dx.op.binary.f32(i32 36, float %1268, float %1269)  ; FMin(a,b)
  %1271 = fcmp fast ogt float %1270, 0.000000e+00
  br i1 %1271, label %1272, label %1437, !dx.controlflow.hints !78

; <label>:1272                                    ; preds = %1267
  %1273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %1274 = extractvalue %dx.types.CBufRet.f32 %1273, 0
  %1275 = extractvalue %dx.types.CBufRet.f32 %1273, 1
  %1276 = extractvalue %dx.types.CBufRet.f32 %1273, 2
  %1277 = extractvalue %dx.types.CBufRet.f32 %1273, 3
  %1278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %1279 = extractvalue %dx.types.CBufRet.f32 %1278, 0
  %1280 = extractvalue %dx.types.CBufRet.f32 %1278, 1
  %1281 = extractvalue %dx.types.CBufRet.f32 %1278, 2
  %1282 = extractvalue %dx.types.CBufRet.f32 %1278, 3
  %1283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %1284 = extractvalue %dx.types.CBufRet.f32 %1283, 0
  %1285 = extractvalue %dx.types.CBufRet.f32 %1283, 1
  %1286 = extractvalue %dx.types.CBufRet.f32 %1283, 2
  %1287 = extractvalue %dx.types.CBufRet.f32 %1283, 3
  %1288 = fmul fast float %1274, %216
  %1289 = call float @dx.op.tertiary.f32(i32 46, float %217, float %1275, float %1288)  ; FMad(a,b,c)
  %1290 = call float @dx.op.tertiary.f32(i32 46, float %218, float %1276, float %1289)  ; FMad(a,b,c)
  %1291 = fadd fast float %1290, %1277
  %1292 = fmul fast float %1279, %216
  %1293 = call float @dx.op.tertiary.f32(i32 46, float %217, float %1280, float %1292)  ; FMad(a,b,c)
  %1294 = call float @dx.op.tertiary.f32(i32 46, float %218, float %1281, float %1293)  ; FMad(a,b,c)
  %1295 = fadd fast float %1294, %1282
  %1296 = fmul fast float %1284, %216
  %1297 = call float @dx.op.tertiary.f32(i32 46, float %217, float %1285, float %1296)  ; FMad(a,b,c)
  %1298 = call float @dx.op.tertiary.f32(i32 46, float %218, float %1286, float %1297)  ; FMad(a,b,c)
  %1299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %1300 = extractvalue %dx.types.CBufRet.f32 %1299, 0
  %1301 = extractvalue %dx.types.CBufRet.f32 %1299, 1
  %1302 = extractvalue %dx.types.CBufRet.f32 %1299, 3
  %1303 = fmul fast float %1302, %1291
  %1304 = fmul fast float %1302, %1295
  %1305 = fadd fast float %1303, %1300
  %1306 = fadd fast float %1304, %1301
  %1307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %1308 = extractvalue %dx.types.CBufRet.f32 %1307, 0
  %1309 = extractvalue %dx.types.CBufRet.f32 %1307, 1
  %1310 = fsub fast float %1305, %1308
  %1311 = fsub fast float %1306, %1309
  %1312 = fcmp fast olt float %1310, 0.000000e+00
  %1313 = fcmp fast olt float %1311, 0.000000e+00
  %1314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %1315 = extractvalue %dx.types.CBufRet.f32 %1314, 0
  %1316 = extractvalue %dx.types.CBufRet.f32 %1314, 1
  %1317 = extractvalue %dx.types.CBufRet.f32 %1314, 2
  %1318 = extractvalue %dx.types.CBufRet.f32 %1314, 3
  %1319 = select i1 %1312, float %1315, float %1317
  %1320 = select i1 %1313, float %1316, float %1318
  %1321 = fmul fast float %1319, %1310
  %1322 = fmul fast float %1320, %1311
  %1323 = call float @dx.op.unary.f32(i32 6, float %1321)  ; FAbs(value)
  %1324 = call float @dx.op.unary.f32(i32 6, float %1322)  ; FAbs(value)
  %1325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %1326 = extractvalue %dx.types.CBufRet.f32 %1325, 0
  %1327 = call float @dx.op.binary.f32(i32 35, float %1323, float %1324)  ; FMax(a,b)
  %1328 = fsub fast float %1326, %1327
  %1329 = call float @dx.op.unary.f32(i32 7, float %1328)  ; Saturate(value)
  %1330 = fcmp fast ogt float %1329, 0.000000e+00
  br i1 %1330, label %1331, label %1372, !dx.controlflow.hints !79

; <label>:1331                                    ; preds = %1272
  %1332 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %22, float %1305, float %1306, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1333 = extractvalue %dx.types.ResRet.f32 %1332, 1
  %1334 = fcmp fast ogt float %1333, 0.000000e+00
  br i1 %1334, label %1335, label %1367, !dx.controlflow.hints !80

; <label>:1335                                    ; preds = %1331
  %1336 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %22, float %1305, float %1306, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1337 = extractvalue %dx.types.ResRet.f32 %1336, 0
  %1338 = extractvalue %dx.types.ResRet.f32 %1336, 1
  %1339 = extractvalue %dx.types.ResRet.f32 %1336, 2
  %1340 = extractvalue %dx.types.ResRet.f32 %1336, 3
  %1341 = fsub fast float 1.000000e+00, %1287
  %1342 = fsub fast float %1341, %1298
  %1343 = fmul fast float %1342, 0x400921FB60000000
  %1344 = fadd fast float %1343, 0x3FF921FB60000000
  %1345 = call float @dx.op.unary.f32(i32 13, float %1344)  ; Sin(value)
  %1346 = fadd fast float %1345, -1.000000e+00
  %1347 = fmul fast float %1346, 0x3FD45F3060000000
  %1348 = fmul fast float %1342, 0x401921FB60000000
  %1349 = fadd fast float %1348, 0x400921FB60000000
  %1350 = call float @dx.op.unary.f32(i32 13, float %1349)  ; Sin(value)
  %1351 = fadd fast float %1350, 0x3E7777A5C0000000
  %1352 = fmul fast float %1351, 0x3FC45F3060000000
  %1353 = fmul fast float %1342, 0x4022D97C80000000
  %1354 = fadd fast float %1353, 0x4012D97C80000000
  %1355 = call float @dx.op.unary.f32(i32 13, float %1354)  ; Sin(value)
  %1356 = fadd fast float %1355, 1.000000e+00
  %1357 = fmul fast float %1356, 0x3FBB2995E0000000
  %1358 = fmul fast float %1342, 0x402921FB60000000
  %1359 = fadd fast float %1358, 0x401921FB60000000
  %1360 = call float @dx.op.unary.f32(i32 13, float %1359)  ; Sin(value)
  %1361 = fadd fast float %1360, 0xBE8777A5C0000000
  %1362 = fmul fast float %1361, 0x3FB45F3060000000
  %1363 = call float @dx.op.dot4.f32(i32 56, float %1337, float %1338, float %1339, float %1340, float %1347, float %1352, float %1357, float %1362)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1364 = fmul fast float %1363, 0xBFF7154760000000
  %1365 = call float @dx.op.unary.f32(i32 21, float %1364)  ; Exp(value)
  %1366 = call float @dx.op.unary.f32(i32 7, float %1365)  ; Saturate(value)
  br label %1367

; <label>:1367                                    ; preds = %1335, %1331
  %1368 = phi float [ %1366, %1335 ], [ 1.000000e+00, %1331 ]
  %1369 = fadd fast float %1368, -1.000000e+00
  %1370 = fmul fast float %1369, %1329
  %1371 = fadd fast float %1370, 1.000000e+00
  br label %1372

; <label>:1372                                    ; preds = %1367, %1272
  %1373 = phi float [ %1371, %1367 ], [ 1.000000e+00, %1272 ]
  %1374 = fmul fast float %1373, %1268
  %1375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1376 = extractvalue %dx.types.CBufRet.f32 %1375, 0
  %1377 = extractvalue %dx.types.CBufRet.f32 %1375, 1
  %1378 = extractvalue %dx.types.CBufRet.f32 %1375, 2
  %1379 = fadd fast float %1376, %216
  %1380 = fadd fast float %1377, %217
  %1381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %1382 = extractvalue %dx.types.CBufRet.f32 %1381, 1
  %1383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1384 = extractvalue %dx.types.CBufRet.f32 %1383, 0
  %1385 = extractvalue %dx.types.CBufRet.f32 %1383, 1
  %1386 = extractvalue %dx.types.CBufRet.f32 %1383, 2
  %1387 = fsub fast float -0.000000e+00, %1379
  %1388 = fsub fast float -0.000000e+00, %1380
  %1389 = fsub fast float %219, %1378
  %1390 = fadd fast float %1389, %1382
  %1391 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1387, float %1388, float %1390)  ; Dot3(ax,ay,az,bx,by,bz)
  %1392 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1384, float %1385, float %1386)  ; Dot3(ax,ay,az,bx,by,bz)
  %1393 = fdiv fast float 1.000000e+00, %1392
  %1394 = fmul fast float %1393, %1391
  %1395 = fmul fast float %1384, %1394
  %1396 = fmul fast float %1385, %1394
  %1397 = fadd fast float %1395, %1379
  %1398 = fadd fast float %1396, %1380
  %1399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %1400 = extractvalue %dx.types.CBufRet.f32 %1399, 0
  %1401 = extractvalue %dx.types.CBufRet.f32 %1399, 1
  %1402 = fsub fast float %1397, %1400
  %1403 = fsub fast float %1398, %1401
  %1404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %1405 = extractvalue %dx.types.CBufRet.f32 %1404, 2
  %1406 = extractvalue %dx.types.CBufRet.f32 %1404, 3
  %1407 = fmul fast float %1402, %1405
  %1408 = fmul fast float %1403, %1406
  %1409 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %1410 = extractvalue %dx.types.CBufRet.i32 %1409, 3
  %1411 = icmp eq i32 %1410, 0
  br i1 %1411, label %1417, label %1412, !dx.controlflow.hints !81

; <label>:1412                                    ; preds = %1372
  %1413 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %21, float %1407, float %1408, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1414 = extractvalue %dx.types.ResRet.f32 %1413, 0
  %1415 = extractvalue %dx.types.ResRet.f32 %1413, 1
  %1416 = extractvalue %dx.types.ResRet.f32 %1413, 2
  br label %1422

; <label>:1417                                    ; preds = %1372
  %1418 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %22, float %1407, float %1408, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1419 = extractvalue %dx.types.ResRet.f32 %1418, 0
  %1420 = extractvalue %dx.types.ResRet.f32 %1418, 1
  %1421 = extractvalue %dx.types.ResRet.f32 %1418, 2
  br label %1422

; <label>:1422                                    ; preds = %1417, %1412
  %1423 = phi float [ %1414, %1412 ], [ %1419, %1417 ]
  %1424 = phi float [ %1415, %1412 ], [ %1420, %1417 ]
  %1425 = phi float [ %1416, %1412 ], [ %1421, %1417 ]
  %1426 = extractvalue %dx.types.CBufRet.f32 %1381, 2
  %1427 = fmul fast float %1426, %1423
  %1428 = extractvalue %dx.types.CBufRet.f32 %1381, 0
  %1429 = fsub fast float %1394, %1428
  %1430 = fsub fast float %1429, %1427
  %1431 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1430)  ; FMax(a,b)
  %1432 = fmul fast float %1431, %1424
  %1433 = call float @dx.op.binary.f32(i32 36, float %1425, float %1432)  ; FMin(a,b)
  %1434 = fmul fast float %1433, 0xBFF7154760000000
  %1435 = call float @dx.op.unary.f32(i32 21, float %1434)  ; Exp(value)
  %1436 = fmul fast float %1374, %1435
  br label %1437

; <label>:1437                                    ; preds = %1422, %1267
  %1438 = phi float [ %1436, %1422 ], [ %1268, %1267 ]
  %1439 = call float @dx.op.binary.f32(i32 36, float %1438, float %1438)  ; FMin(a,b)
  %1440 = call float @dx.op.binary.f32(i32 36, float %1438, float %1439)  ; FMin(a,b)
  %1441 = fcmp fast ogt float %1440, 0.000000e+00
  br i1 %1441, label %1442, label %1457, !dx.controlflow.hints !82

; <label>:1442                                    ; preds = %1437
  %1443 = call float @dx.op.dot3.f32(i32 55, float %147, float %148, float %149, float %224, float %225, float %226)  ; Dot3(ax,ay,az,bx,by,bz)
  %1444 = call float @dx.op.unary.f32(i32 7, float %1443)  ; Saturate(value)
  %1445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1446 = extractvalue %dx.types.CBufRet.f32 %1445, 1
  %1447 = fsub fast float 1.000000e+00, %1438
  %1448 = fmul fast float %1446, %1447
  %1449 = fadd fast float %1448, %1438
  %1450 = call float @dx.op.binary.f32(i32 36, float %1449, float %102)  ; FMin(a,b)
  %1451 = fmul fast float %1450, %1444
  %1452 = extractvalue %dx.types.CBufRet.f32 %1445, 0
  %1453 = fmul fast float %1451, %1452
  %1454 = fmul fast float %1453, %228
  %1455 = fmul fast float %1453, %229
  %1456 = fmul fast float %1453, %230
  br label %1457

; <label>:1457                                    ; preds = %1442, %1437, %205
  %1458 = phi float [ %1454, %1442 ], [ 0.000000e+00, %205 ], [ 0.000000e+00, %1437 ]
  %1459 = phi float [ %1455, %1442 ], [ 0.000000e+00, %205 ], [ 0.000000e+00, %1437 ]
  %1460 = phi float [ %1456, %1442 ], [ 0.000000e+00, %205 ], [ 0.000000e+00, %1437 ]
  %1461 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1462 = extractvalue %dx.types.CBufRet.i32 %1461, 0
  %1463 = icmp eq i32 %1462, 0
  br i1 %1463, label %1788, label %1464, !dx.controlflow.hints !83

; <label>:1464                                    ; preds = %1457
  %1465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1466 = extractvalue %dx.types.CBufRet.f32 %1465, 0
  %1467 = extractvalue %dx.types.CBufRet.f32 %1465, 1
  %1468 = extractvalue %dx.types.CBufRet.f32 %1465, 2
  %1469 = fadd fast float %1466, %216
  %1470 = fadd fast float %1467, %217
  %1471 = fadd fast float %1468, %218
  %1472 = getelementptr inbounds [3 x float], [3 x float]* %33, i32 0, i32 0
  store float %1469, float* %1472, align 4
  %1473 = getelementptr inbounds [3 x float], [3 x float]* %33, i32 0, i32 1
  store float %1470, float* %1473, align 4
  %1474 = getelementptr inbounds [3 x float], [3 x float]* %33, i32 0, i32 2
  store float %1471, float* %1474, align 4
  br label %1475

; <label>:1475                                    ; preds = %1475, %1464
  %1476 = phi i32 [ 0, %1464 ], [ %1490, %1475 ]
  %1477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1476, i32 0)  ; BufferLoad(srv,index,wot)
  %1478 = extractvalue %dx.types.ResRet.i32 %1477, 0
  %1479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1476, i32 4)  ; BufferLoad(srv,index,wot)
  %1480 = extractvalue %dx.types.ResRet.i32 %1479, 0
  %1481 = lshr i32 %1478, 30
  %1482 = and i32 %1478, 1048575
  %1483 = uitofp i32 %1482 to float
  %1484 = fadd fast float %1483, -5.242880e+05
  %1485 = and i32 %1480, 65535
  %1486 = lshr i32 %1480, 16
  %1487 = getelementptr [3 x float], [3 x float]* %33, i32 0, i32 %1481
  %1488 = load float, float* %1487, align 4, !tbaa !71, !noalias !84
  %1489 = fcmp fast olt float %1488, %1484
  %1490 = select i1 %1489, i32 %1485, i32 %1486
  %1491 = and i32 %1490, 32768
  %1492 = icmp eq i32 %1491, 0
  br i1 %1492, label %1475, label %1493

; <label>:1493                                    ; preds = %1475
  %1494 = and i32 %1490, 32767
  %1495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1494, i32 undef)  ; BufferLoad(srv,index,wot)
  %1496 = extractvalue %dx.types.ResRet.i32 %1495, 0
  %1497 = lshr i32 %1496, 22
  br label %1498

; <label>:1498                                    ; preds = %1498, %1493
  %1499 = phi i32 [ 0, %1493 ], [ %1515, %1498 ]
  %1500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1499, i32 0)  ; BufferLoad(srv,index,wot)
  %1501 = extractvalue %dx.types.ResRet.i32 %1500, 0
  %1502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1499, i32 4)  ; BufferLoad(srv,index,wot)
  %1503 = extractvalue %dx.types.ResRet.i32 %1502, 0
  %1504 = lshr i32 %1501, 30
  %1505 = and i32 %1501, 1048575
  %1506 = uitofp i32 %1505 to float
  %1507 = fadd fast float %1506, -5.242880e+05
  %1508 = and i32 %1503, 65535
  %1509 = lshr i32 %1503, 16
  %1510 = icmp ne i32 %1504, 3
  %1511 = getelementptr [3 x float], [3 x float]* %33, i32 0, i32 %1504
  %1512 = load float, float* %1511, align 4, !tbaa !71, !noalias !84
  %1513 = fcmp fast olt float %1512, %1507
  %1514 = select i1 %1513, i32 %1508, i32 %1509
  %1515 = select i1 %1510, i32 %1514, i32 %1503
  %1516 = icmp eq i32 %1504, 3
  br i1 %1516, label %1517, label %1498

; <label>:1517                                    ; preds = %1498
  %1518 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1515)  ; Countbits(value)
  %1519 = add i32 %1518, %1497
  %1520 = icmp eq i32 %1519, 0
  br i1 %1520, label %1788, label %1521

; <label>:1521                                    ; preds = %1517
  %1522 = and i32 %1496, 4194303
  br label %1523

; <label>:1523                                    ; preds = %1781, %1521
  %1524 = phi float [ %1782, %1781 ], [ %1458, %1521 ]
  %1525 = phi float [ %1783, %1781 ], [ %1459, %1521 ]
  %1526 = phi float [ %1784, %1781 ], [ %1460, %1521 ]
  %1527 = phi i32 [ %1785, %1781 ], [ 0, %1521 ]
  %1528 = phi i32 [ %1530, %1781 ], [ %1522, %1521 ]
  %1529 = phi i32 [ %1546, %1781 ], [ %1515, %1521 ]
  %1530 = add i32 %1528, 1
  %1531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %1528, i32 undef)  ; BufferLoad(srv,index,wot)
  %1532 = extractvalue %dx.types.ResRet.i32 %1531, 0
  %1533 = icmp ult i32 %1527, %1497
  br i1 %1533, label %1545, label %1534, !dx.controlflow.hints !85

; <label>:1534                                    ; preds = %1523
  %1535 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1529)  ; FirstbitLo(value)
  %1536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 22)  ; CBufferLoadLegacy(handle,regIndex)
  %1537 = extractvalue %dx.types.CBufRet.f32 %1536, 0
  %1538 = uitofp i32 %1535 to float
  %1539 = fadd fast float %1537, %1538
  %1540 = fptosi float %1539 to i32
  %1541 = and i32 %1535, 31
  %1542 = shl i32 1, %1541
  %1543 = xor i32 %1542, -1
  %1544 = and i32 %1529, %1543
  br label %1545

; <label>:1545                                    ; preds = %1534, %1523
  %1546 = phi i32 [ %1544, %1534 ], [ %1529, %1523 ]
  %1547 = phi i32 [ %1540, %1534 ], [ %1532, %1523 ]
  %1548 = mul i32 %1547, 112
  %1549 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1548, i32 undef)  ; BufferLoad(srv,index,wot)
  %1550 = extractvalue %dx.types.ResRet.f32 %1549, 0
  %1551 = extractvalue %dx.types.ResRet.f32 %1549, 1
  %1552 = extractvalue %dx.types.ResRet.f32 %1549, 2
  %1553 = or i32 %1548, 12
  %1554 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1553, i32 undef)  ; BufferLoad(srv,index,wot)
  %1555 = extractvalue %dx.types.ResRet.f32 %1554, 0
  %1556 = add i32 %1548, 16
  %1557 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1556, i32 undef)  ; BufferLoad(srv,index,wot)
  %1558 = extractvalue %dx.types.ResRet.f32 %1557, 0
  %1559 = extractvalue %dx.types.ResRet.f32 %1557, 1
  %1560 = extractvalue %dx.types.ResRet.f32 %1557, 2
  %1561 = add i32 %1548, 28
  %1562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1561, i32 undef)  ; BufferLoad(srv,index,wot)
  %1563 = extractvalue %dx.types.ResRet.i32 %1562, 0
  %1564 = add i32 %1548, 32
  %1565 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1564, i32 undef)  ; BufferLoad(srv,index,wot)
  %1566 = extractvalue %dx.types.ResRet.f32 %1565, 0
  %1567 = extractvalue %dx.types.ResRet.f32 %1565, 1
  %1568 = extractvalue %dx.types.ResRet.f32 %1565, 2
  %1569 = add i32 %1548, 44
  %1570 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1569, i32 undef)  ; BufferLoad(srv,index,wot)
  %1571 = extractvalue %dx.types.ResRet.f32 %1570, 0
  %1572 = add i32 %1548, 48
  %1573 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1572, i32 undef)  ; BufferLoad(srv,index,wot)
  %1574 = extractvalue %dx.types.ResRet.f32 %1573, 0
  %1575 = extractvalue %dx.types.ResRet.f32 %1573, 1
  %1576 = extractvalue %dx.types.ResRet.f32 %1573, 2
  %1577 = extractvalue %dx.types.ResRet.f32 %1573, 3
  %1578 = add i32 %1548, 64
  %1579 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1578, i32 undef)  ; BufferLoad(srv,index,wot)
  %1580 = extractvalue %dx.types.ResRet.f32 %1579, 0
  %1581 = extractvalue %dx.types.ResRet.f32 %1579, 1
  %1582 = extractvalue %dx.types.ResRet.f32 %1579, 2
  %1583 = extractvalue %dx.types.ResRet.f32 %1579, 3
  %1584 = add i32 %1548, 92
  %1585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1584, i32 undef)  ; BufferLoad(srv,index,wot)
  %1586 = extractvalue %dx.types.ResRet.i32 %1585, 0
  %1587 = and i32 %1586, 65535
  %1588 = uitofp i32 %1587 to float
  %1589 = lshr i32 %1586, 16
  %1590 = uitofp i32 %1589 to float
  %1591 = and i32 %1563, 65535
  %1592 = and i32 %1563, 50331648
  %1593 = icmp eq i32 %1592, 33554432
  %1594 = call float @dx.op.dot3.f32(i32 55, float %1566, float %1567, float %1568, float %1566, float %1567, float %1568)  ; Dot3(ax,ay,az,bx,by,bz)
  %1595 = fsub fast float %216, %1574
  %1596 = fsub fast float %217, %1575
  %1597 = fsub fast float %218, %1576
  %1598 = call float @dx.op.dot3.f32(i32 55, float %1595, float %1596, float %1597, float %1566, float %1567, float %1568)  ; Dot3(ax,ay,az,bx,by,bz)
  %1599 = fdiv fast float %1598, %1594
  %1600 = call float @dx.op.binary.f32(i32 35, float %1599, float -1.000000e+00)  ; FMax(a,b)
  %1601 = call float @dx.op.binary.f32(i32 36, float %1600, float 1.000000e+00)  ; FMin(a,b)
  %1602 = fmul fast float %1601, %1566
  %1603 = fmul fast float %1601, %1567
  %1604 = fmul fast float %1601, %1568
  %1605 = fadd fast float %1602, %1574
  %1606 = fadd fast float %1603, %1575
  %1607 = fadd fast float %1604, %1576
  %1608 = fsub fast float %1605, %216
  %1609 = fsub fast float %1606, %217
  %1610 = fsub fast float %1607, %218
  %1611 = call float @dx.op.dot3.f32(i32 55, float %1608, float %1609, float %1610, float %1608, float %1609, float %1610)  ; Dot3(ax,ay,az,bx,by,bz)
  %1612 = call float @dx.op.unary.f32(i32 24, float %1611)  ; Sqrt(value)
  %1613 = fdiv fast float 1.000000e+00, %1612
  %1614 = fmul fast float %1608, %1613
  %1615 = fmul fast float %1609, %1613
  %1616 = fmul fast float %1610, %1613
  %1617 = fadd fast float %1612, %1555
  %1618 = fdiv fast float 1.000000e+00, %1617
  %1619 = fmul float %1571, %1618
  %1620 = fmul float %1619, %1619
  %1621 = call float @dx.op.unary.f32(i32 7, float %1620)  ; Saturate(value)
  br i1 %1593, label %1622, label %1646, !dx.controlflow.hints !86

; <label>:1622                                    ; preds = %1545
  %1623 = fmul fast float %1582, %1558
  %1624 = fmul fast float %1582, %1559
  %1625 = fmul fast float %1582, %1560
  %1626 = fsub fast float %1623, %216
  %1627 = fadd fast float %1626, %1605
  %1628 = fsub fast float %1624, %217
  %1629 = fadd fast float %1628, %1606
  %1630 = fsub fast float %1625, %218
  %1631 = fadd fast float %1630, %1607
  %1632 = call float @dx.op.dot3.f32(i32 55, float %1627, float %1629, float %1631, float %1627, float %1629, float %1631)  ; Dot3(ax,ay,az,bx,by,bz)
  %1633 = call float @dx.op.unary.f32(i32 25, float %1632)  ; Rsqrt(value)
  %1634 = fmul fast float %1633, %1627
  %1635 = fmul fast float %1633, %1629
  %1636 = fmul fast float %1633, %1631
  %1637 = fsub fast float %216, %1605
  %1638 = fsub fast float %217, %1606
  %1639 = fsub fast float %218, %1607
  %1640 = fsub fast float -0.000000e+00, %1637
  %1641 = fsub fast float -0.000000e+00, %1638
  %1642 = fsub fast float -0.000000e+00, %1639
  %1643 = call float @dx.op.dot3.f32(i32 55, float %1640, float %1641, float %1642, float %1558, float %1559, float %1560)  ; Dot3(ax,ay,az,bx,by,bz)
  %1644 = fcmp fast ogt float %1643, 0.000000e+00
  %1645 = uitofp i1 %1644 to float
  br label %1646

; <label>:1646                                    ; preds = %1622, %1545
  %1647 = phi float [ %1645, %1622 ], [ 1.000000e+00, %1545 ]
  %1648 = phi float [ %1634, %1622 ], [ %1614, %1545 ]
  %1649 = phi float [ %1635, %1622 ], [ %1615, %1545 ]
  %1650 = phi float [ %1636, %1622 ], [ %1616, %1545 ]
  %1651 = call float @dx.op.dot3.f32(i32 55, float %1558, float %1559, float %1560, float %1648, float %1649, float %1650)  ; Dot3(ax,ay,az,bx,by,bz)
  %1652 = fmul fast float %1651, %1651
  %1653 = call float @dx.op.unary.f32(i32 7, float %1652)  ; Saturate(value)
  %1654 = fsub fast float 1.000000e+00, %1653
  %1655 = fmul fast float %1654, 5.000000e-01
  %1656 = fcmp fast ogt float %1651, 0.000000e+00
  %1657 = fsub fast float 1.000000e+00, %1655
  %1658 = select i1 %1656, float %1655, float %1657
  %1659 = fmul fast float %1658, %1590
  %1660 = fadd fast float %1659, %1588
  %1661 = fmul fast float %1660, 0x3EF0001000000000
  %1662 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %22, float %1661, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1663 = extractvalue %dx.types.ResRet.f32 %1662, 0
  %1664 = fmul fast float %1651, %1580
  %1665 = fadd fast float %1664, %1581
  %1666 = call float @dx.op.unary.f32(i32 7, float %1665)  ; Saturate(value)
  %1667 = select i1 %1593, float 1.000000e+00, float %1666
  %1668 = select i1 %1593, float %1666, float 1.000000e+00
  %1669 = fmul fast float %1612, %1577
  %1670 = fsub fast float 1.000000e+00, %1669
  %1671 = fmul fast float %1670, %1583
  %1672 = call float @dx.op.unary.f32(i32 7, float %1671)  ; Saturate(value)
  %1673 = fmul fast float %1672, %1668
  %1674 = fmul fast float %1673, 2.000000e+00
  %1675 = fsub fast float 3.000000e+00, %1674
  %1676 = fmul fast float %1663, %1647
  %1677 = fmul fast float %1673, %1673
  %1678 = fmul fast float %1677, %1676
  %1679 = fmul fast float %1678, %1675
  %1680 = call float @dx.op.binary.f32(i32 36, float %1679, float %1679)  ; FMin(a,b)
  %1681 = call float @dx.op.binary.f32(i32 36, float %1679, float %1680)  ; FMin(a,b)
  %1682 = fcmp fast ogt float %1681, 0.000000e+00
  br i1 %1682, label %1683, label %1781, !dx.controlflow.hints !87

; <label>:1683                                    ; preds = %1646
  %1684 = icmp eq i32 %1591, 255
  br i1 %1684, label %1760, label %1685, !dx.controlflow.hints !88

; <label>:1685                                    ; preds = %1683
  %1686 = mul nuw nsw i32 %1591, 176
  %1687 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1686, i32 undef)  ; BufferLoad(srv,index,wot)
  %1688 = extractvalue %dx.types.ResRet.f32 %1687, 0
  %1689 = extractvalue %dx.types.ResRet.f32 %1687, 1
  %1690 = extractvalue %dx.types.ResRet.f32 %1687, 2
  %1691 = extractvalue %dx.types.ResRet.f32 %1687, 3
  %1692 = add nuw nsw i32 %1686, 16
  %1693 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1692, i32 undef)  ; BufferLoad(srv,index,wot)
  %1694 = extractvalue %dx.types.ResRet.f32 %1693, 0
  %1695 = extractvalue %dx.types.ResRet.f32 %1693, 1
  %1696 = add nuw nsw i32 %1686, 32
  %1697 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1696, i32 undef)  ; BufferLoad(srv,index,wot)
  %1698 = extractvalue %dx.types.ResRet.f32 %1697, 0
  %1699 = add nuw nsw i32 %1686, 48
  %1700 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1699, i32 undef)  ; BufferLoad(srv,index,wot)
  %1701 = extractvalue %dx.types.ResRet.f32 %1700, 0
  %1702 = extractvalue %dx.types.ResRet.f32 %1700, 1
  %1703 = extractvalue %dx.types.ResRet.f32 %1700, 2
  %1704 = extractvalue %dx.types.ResRet.f32 %1700, 3
  %1705 = add nuw nsw i32 %1686, 64
  %1706 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1705, i32 undef)  ; BufferLoad(srv,index,wot)
  %1707 = extractvalue %dx.types.ResRet.f32 %1706, 0
  %1708 = extractvalue %dx.types.ResRet.f32 %1706, 1
  %1709 = extractvalue %dx.types.ResRet.f32 %1706, 2
  %1710 = extractvalue %dx.types.ResRet.f32 %1706, 3
  %1711 = add nuw nsw i32 %1686, 80
  %1712 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1711, i32 undef)  ; BufferLoad(srv,index,wot)
  %1713 = extractvalue %dx.types.ResRet.f32 %1712, 0
  %1714 = extractvalue %dx.types.ResRet.f32 %1712, 1
  %1715 = extractvalue %dx.types.ResRet.f32 %1712, 2
  %1716 = extractvalue %dx.types.ResRet.f32 %1712, 3
  %1717 = add nuw nsw i32 %1686, 96
  %1718 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1717, i32 undef)  ; BufferLoad(srv,index,wot)
  %1719 = extractvalue %dx.types.ResRet.f32 %1718, 0
  %1720 = extractvalue %dx.types.ResRet.f32 %1718, 1
  %1721 = extractvalue %dx.types.ResRet.f32 %1718, 2
  %1722 = extractvalue %dx.types.ResRet.f32 %1718, 3
  %1723 = bitcast float %1695 to i32
  %1724 = fmul fast float %1701, %216
  %1725 = call float @dx.op.tertiary.f32(i32 46, float %217, float %1707, float %1724)  ; FMad(a,b,c)
  %1726 = call float @dx.op.tertiary.f32(i32 46, float %218, float %1713, float %1725)  ; FMad(a,b,c)
  %1727 = fadd fast float %1726, %1719
  %1728 = fmul fast float %1702, %216
  %1729 = call float @dx.op.tertiary.f32(i32 46, float %217, float %1708, float %1728)  ; FMad(a,b,c)
  %1730 = call float @dx.op.tertiary.f32(i32 46, float %218, float %1714, float %1729)  ; FMad(a,b,c)
  %1731 = fadd fast float %1730, %1720
  %1732 = fmul fast float %1703, %216
  %1733 = call float @dx.op.tertiary.f32(i32 46, float %217, float %1709, float %1732)  ; FMad(a,b,c)
  %1734 = call float @dx.op.tertiary.f32(i32 46, float %218, float %1715, float %1733)  ; FMad(a,b,c)
  %1735 = fadd fast float %1734, %1721
  %1736 = fmul fast float %1704, %216
  %1737 = call float @dx.op.tertiary.f32(i32 46, float %217, float %1710, float %1736)  ; FMad(a,b,c)
  %1738 = call float @dx.op.tertiary.f32(i32 46, float %218, float %1716, float %1737)  ; FMad(a,b,c)
  %1739 = fadd fast float %1738, %1722
  %1740 = fdiv fast float %1727, %1739
  %1741 = fdiv fast float %1731, %1739
  %1742 = fdiv fast float %1735, %1739
  %1743 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %1742)  ; FMax(a,b)
  %1744 = fmul fast float %1740, %1694
  %1745 = fmul fast float %1741, %1694
  %1746 = call float @dx.op.binary.f32(i32 35, float %1744, float %1690)  ; FMax(a,b)
  %1747 = call float @dx.op.binary.f32(i32 35, float %1745, float %1690)  ; FMax(a,b)
  %1748 = call float @dx.op.binary.f32(i32 36, float %1746, float %1691)  ; FMin(a,b)
  %1749 = call float @dx.op.binary.f32(i32 36, float %1747, float %1691)  ; FMin(a,b)
  %1750 = fadd fast float %1748, %1688
  %1751 = fadd fast float %1749, %1689
  %1752 = uitofp i32 %1723 to float
  %1753 = fadd fast float %1743, %1698
  %1754 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %24, float %1750, float %1751, float %1752, float undef, i32 0, i32 0, i32 undef, float %1753)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1755 = extractvalue %dx.types.ResRet.f32 %1754, 0
  %1756 = fadd fast float %1755, -1.000000e+00
  %1757 = fmul fast float %1756, %1667
  %1758 = fadd fast float %1757, 1.000000e+00
  %1759 = fmul fast float %1758, %1679
  br label %1760

; <label>:1760                                    ; preds = %1685, %1683
  %1761 = phi float [ %1759, %1685 ], [ %1679, %1683 ]
  %1762 = call float @dx.op.binary.f32(i32 36, float %1761, float %1761)  ; FMin(a,b)
  %1763 = call float @dx.op.binary.f32(i32 36, float %1761, float %1762)  ; FMin(a,b)
  %1764 = fcmp fast ogt float %1763, 0.000000e+00
  br i1 %1764, label %1765, label %1781, !dx.controlflow.hints !89

; <label>:1765                                    ; preds = %1760
  %1766 = call float @dx.op.dot3.f32(i32 55, float %147, float %148, float %149, float %1614, float %1615, float %1616)  ; Dot3(ax,ay,az,bx,by,bz)
  %1767 = call float @dx.op.unary.f32(i32 7, float %1766)  ; Saturate(value)
  %1768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1769 = extractvalue %dx.types.CBufRet.f32 %1768, 3
  %1770 = fsub fast float 1.000000e+00, %1761
  %1771 = fmul fast float %1769, %1770
  %1772 = fadd fast float %1771, %1761
  %1773 = fmul fast float %1767, %1621
  %1774 = fmul fast float %1773, %1772
  %1775 = fmul fast float %1774, %1550
  %1776 = fmul fast float %1774, %1551
  %1777 = fmul fast float %1774, %1552
  %1778 = fadd fast float %1775, %1524
  %1779 = fadd fast float %1776, %1525
  %1780 = fadd fast float %1777, %1526
  br label %1781

; <label>:1781                                    ; preds = %1765, %1760, %1646
  %1782 = phi float [ %1778, %1765 ], [ %1524, %1760 ], [ %1524, %1646 ]
  %1783 = phi float [ %1779, %1765 ], [ %1525, %1760 ], [ %1525, %1646 ]
  %1784 = phi float [ %1780, %1765 ], [ %1526, %1760 ], [ %1526, %1646 ]
  %1785 = add nuw i32 %1527, 1
  %1786 = icmp eq i32 %1785, %1519
  br i1 %1786, label %1787, label %1523, !llvm.loop !90

; <label>:1787                                    ; preds = %1781
  br label %1788

; <label>:1788                                    ; preds = %1787, %1517, %1457
  %1789 = phi float [ %1458, %1457 ], [ %1458, %1517 ], [ %1782, %1787 ]
  %1790 = phi float [ %1459, %1457 ], [ %1459, %1517 ], [ %1783, %1787 ]
  %1791 = phi float [ %1460, %1457 ], [ %1460, %1517 ], [ %1784, %1787 ]
  %1792 = fadd fast float %1789, %206
  %1793 = fadd fast float %1790, %207
  %1794 = fadd fast float %1791, %208
  %1795 = fmul fast float %1792, %209
  %1796 = fmul fast float %1793, %210
  %1797 = fmul fast float %1794, %211
  %1798 = or i1 %94, %103
  %1799 = select i1 %1798, float %206, float %1795
  %1800 = select i1 %1798, float %207, float %1796
  %1801 = select i1 %1798, float %208, float %1797
  %1802 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %1803 = extractvalue %dx.types.CBufRet.i32 %1802, 0
  %1804 = icmp eq i32 %1803, 0
  br i1 %1804, label %1860, label %1805, !dx.controlflow.hints !91

; <label>:1805                                    ; preds = %1788
  switch i32 %1803, label %1860 [
    i32 1, label %1806
    i32 2, label %1807
    i32 3, label %1814
    i32 5, label %1815
    i32 7, label %1816
    i32 10, label %1817
    i32 11, label %1819
    i32 8, label %1821
  ], !dx.controlflow.hints !92

; <label>:1806                                    ; preds = %1805
  br label %1860

; <label>:1807                                    ; preds = %1805
  %1808 = fmul fast float %147, 5.000000e-01
  %1809 = fmul fast float %148, 5.000000e-01
  %1810 = fmul fast float %149, 5.000000e-01
  %1811 = fadd fast float %1808, 5.000000e-01
  %1812 = fadd fast float %1809, 5.000000e-01
  %1813 = fadd fast float %1810, 5.000000e-01
  br label %1860

; <label>:1814                                    ; preds = %1805
  br label %1860

; <label>:1815                                    ; preds = %1805
  br label %1860

; <label>:1816                                    ; preds = %1805
  br label %1860

; <label>:1817                                    ; preds = %1805
  %1818 = select i1 %94, float 1.000000e+00, float 0.000000e+00
  br label %1860

; <label>:1819                                    ; preds = %1805
  %1820 = select i1 %103, float 1.000000e+00, float 0.000000e+00
  br label %1860

; <label>:1821                                    ; preds = %1805
  br i1 %94, label %1860, label %1822, !dx.controlflow.hints !93

; <label>:1822                                    ; preds = %1821
  %1823 = fmul fast float %188, 0x3F40624DE0000000
  %1824 = fmul fast float %189, 0x3F40624DE0000000
  %1825 = fmul fast float %190, 0x3F40624DE0000000
  %1826 = fadd fast float %1823, 5.000000e-01
  %1827 = fadd fast float %1824, 5.000000e-01
  %1828 = fadd fast float %1825, 5.000000e-01
  %1829 = call float @dx.op.unary.f32(i32 7, float %1826)  ; Saturate(value)
  %1830 = call float @dx.op.unary.f32(i32 7, float %1827)  ; Saturate(value)
  %1831 = call float @dx.op.unary.f32(i32 7, float %1828)  ; Saturate(value)
  %1832 = fmul fast float %188, 0x3F847AE140000000
  %1833 = fmul fast float %189, 0x3F847AE140000000
  %1834 = fmul fast float %190, 0x3F847AE140000000
  %1835 = call float @dx.op.unary.f32(i32 22, float %1832)  ; Frc(value)
  %1836 = call float @dx.op.unary.f32(i32 22, float %1833)  ; Frc(value)
  %1837 = call float @dx.op.unary.f32(i32 22, float %1834)  ; Frc(value)
  %1838 = fadd fast float %1835, 0xBFB99999A0000000
  %1839 = fadd fast float %1836, 0xBFB99999A0000000
  %1840 = fadd fast float %1837, 0xBFB99999A0000000
  %1841 = call float @dx.op.unary.f32(i32 6, float %1838)  ; FAbs(value)
  %1842 = call float @dx.op.unary.f32(i32 6, float %1839)  ; FAbs(value)
  %1843 = call float @dx.op.unary.f32(i32 6, float %1840)  ; FAbs(value)
  %1844 = fmul fast float %1841, 1.000000e+01
  %1845 = fmul fast float %1842, 1.000000e+01
  %1846 = fmul fast float %1843, 1.000000e+01
  %1847 = call float @dx.op.binary.f32(i32 36, float %1845, float %1846)  ; FMin(a,b)
  %1848 = call float @dx.op.binary.f32(i32 36, float %1844, float %1847)  ; FMin(a,b)
  %1849 = call float @dx.op.unary.f32(i32 7, float %1848)  ; Saturate(value)
  %1850 = fsub fast float 1.000000e+00, %1849
  %1851 = fsub fast float %1829, %1799
  %1852 = fsub fast float %1830, %1800
  %1853 = fsub fast float %1831, %1801
  %1854 = fmul fast float %1850, %1851
  %1855 = fmul fast float %1850, %1852
  %1856 = fmul fast float %1850, %1853
  %1857 = fadd fast float %1854, %1799
  %1858 = fadd fast float %1855, %1800
  %1859 = fadd fast float %1856, %1801
  br label %1860

; <label>:1860                                    ; preds = %1822, %1821, %1819, %1817, %1816, %1815, %1814, %1807, %1806, %1805, %1788
  %1861 = phi float [ %1799, %1805 ], [ %1799, %1821 ], [ %1857, %1822 ], [ %1820, %1819 ], [ %1818, %1817 ], [ %102, %1816 ], [ %206, %1815 ], [ %86, %1814 ], [ %1811, %1807 ], [ %209, %1806 ], [ %1799, %1788 ]
  %1862 = phi float [ %1800, %1805 ], [ %1800, %1821 ], [ %1858, %1822 ], [ %1820, %1819 ], [ %1818, %1817 ], [ %102, %1816 ], [ %207, %1815 ], [ %86, %1814 ], [ %1812, %1807 ], [ %210, %1806 ], [ %1800, %1788 ]
  %1863 = phi float [ %1801, %1805 ], [ %1801, %1821 ], [ %1859, %1822 ], [ %1820, %1819 ], [ %1818, %1817 ], [ %102, %1816 ], [ %208, %1815 ], [ %86, %1814 ], [ %1813, %1807 ], [ %211, %1806 ], [ %1801, %1788 ]
  %1864 = add i32 %1803, -1
  %1865 = icmp ult i32 %1864, 11
  br i1 %1865, label %1866, label %1871

; <label>:1866                                    ; preds = %1860
  %1867 = trunc i32 %1864 to i11
  %1868 = lshr i11 440, %1867
  %1869 = and i11 %1868, 1
  %1870 = icmp ne i11 %1869, 0
  br label %1871

; <label>:1871                                    ; preds = %1866, %1860
  %1872 = phi i1 [ true, %1860 ], [ %1870, %1866 ]
  br i1 %1872, label %1873, label %1879, !dx.controlflow.hints !94

; <label>:1873                                    ; preds = %1871
  %1874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1875 = extractvalue %dx.types.CBufRet.f32 %1874, 0
  %1876 = fmul fast float %1875, %1861
  %1877 = fmul fast float %1875, %1862
  %1878 = fmul fast float %1875, %1863
  br label %1879

; <label>:1879                                    ; preds = %1873, %1871
  %1880 = phi float [ %1876, %1873 ], [ %1861, %1871 ]
  %1881 = phi float [ %1877, %1873 ], [ %1862, %1871 ]
  %1882 = phi float [ %1878, %1873 ], [ %1863, %1871 ]
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %28, i32 %29, i32 %30, float %1880, float %1881, float %1882, float %1880, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1883

; <label>:1883                                    ; preds = %1879, %0
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
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

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
!39 = !{void ()* @cs_reflection_probe_relighting_debug, !"cs_reflection_probe_relighting_debug", null, !4, !40}
!40 = !{i32 0, i64 272, i32 4, !41}
!41 = !{i32 8, i32 8, i32 1}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 1}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 1}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 1}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 1}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 1}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = !{!58, !58, i64 0}
!58 = !{!"int", !59, i64 0}
!59 = !{!"omnipotent char", !60, i64 0}
!60 = !{!"Simple C/C++ TBAA"}
!61 = !{!62, !64}
!62 = distinct !{!62, !63, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_Refprobe@@ULightIteratorOutput_Refprobe@@@Z: %lightingOutput"}
!63 = distinct !{!63, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_Refprobe@@ULightIteratorOutput_Refprobe@@@Z"}
!64 = distinct !{!64, !65, !"\01?Lights_Iterate_Refprobe@@YAXULocalAttributes@@ULightIteratorInput_Refprobe@@ULightIteratorOutput_Refprobe@@@Z: %lightingOutput"}
!65 = distinct !{!65, !"\01?Lights_Iterate_Refprobe@@YAXULocalAttributes@@ULightIteratorInput_Refprobe@@ULightIteratorOutput_Refprobe@@@Z"}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 1}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = !{!72, !72, i64 0}
!72 = !{!"float", !59, i64 0}
!73 = distinct !{!73, !74}
!74 = !{!"llvm.loop.unroll.disable"}
!75 = distinct !{!75, !74}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 1}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 1}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 1}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 1}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 2}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 2}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 1}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 2}
!84 = !{!64}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 2}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 2}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 1}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 1}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 1}
!90 = distinct !{!90, !74}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 2}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 2}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 2}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 2}

