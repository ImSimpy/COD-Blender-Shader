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
; shader hash: 48ec8ae5af50e536422dbaf20dfd2cc3
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
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
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

define void @cs_reflection_probe_relighting_octahedron() {
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
  %30 = alloca [12 x float], align 4
  %31 = alloca [12 x float], align 4
  %32 = alloca [3 x float], align 4
  %33 = alloca [4 x float], align 4
  %34 = alloca [4 x float], align 4
  %35 = alloca [4 x float], align 4
  %36 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1, i32 0)  ; GetDimensions(handle,mipLevel)
  %37 = extractvalue %dx.types.Dimensions %36, 0
  %38 = uitofp i32 %37 to float
  %39 = fdiv fast float 1.000000e+00, %38
  %40 = uitofp i32 %28 to float
  %41 = uitofp i32 %29 to float
  %42 = fadd fast float %40, 5.000000e-01
  %43 = fadd fast float %41, 5.000000e-01
  %44 = fmul fast float %39, %42
  %45 = fmul fast float %39, %43
  %46 = fadd fast float %38, -8.000000e+00
  %47 = fdiv fast float %38, %46
  %48 = fadd fast float %44, -5.000000e-01
  %49 = fmul fast float %48, %47
  %50 = fadd fast float %45, -5.000000e-01
  %51 = fmul fast float %50, %47
  %52 = fadd fast float %49, 5.000000e-01
  %53 = fadd fast float %51, 5.000000e-01
  %54 = call float @dx.op.unary.f32(i32 7, float %52)  ; Saturate(value)
  %55 = fcmp fast une float %54, %52
  %56 = call float @dx.op.unary.f32(i32 7, float %53)  ; Saturate(value)
  %57 = fcmp fast une float %56, %53
  %58 = or i1 %55, %57
  %59 = and i1 %55, %57
  %60 = fadd fast float %49, 1.500000e+00
  %61 = fadd fast float %51, 1.500000e+00
  %62 = call float @dx.op.unary.f32(i32 27, float %60)  ; Round_ni(value)
  %63 = call float @dx.op.unary.f32(i32 27, float %61)  ; Round_ni(value)
  %64 = fsub fast float %62, %52
  %65 = fsub fast float %63, %53
  %66 = select i1 %58, float %64, float %52
  %67 = select i1 %58, float %65, float %53
  %68 = call float @dx.op.unary.f32(i32 22, float %60)  ; Frc(value)
  %69 = call float @dx.op.unary.f32(i32 22, float %61)  ; Frc(value)
  %70 = select i1 %59, float %68, float %66
  %71 = select i1 %59, float %69, float %67
  %72 = fmul fast float %70, 2.000000e+00
  %73 = fmul fast float %71, 2.000000e+00
  %74 = fadd fast float %72, -1.000000e+00
  %75 = fadd fast float %73, -1.000000e+00
  %76 = call float @dx.op.unary.f32(i32 6, float %74)  ; FAbs(value)
  %77 = fsub fast float 1.000000e+00, %76
  %78 = call float @dx.op.unary.f32(i32 6, float %75)  ; FAbs(value)
  %79 = fsub fast float %77, %78
  %80 = fsub fast float 1.000000e+00, %78
  %81 = fcmp fast oge float %74, 0.000000e+00
  %82 = fcmp fast oge float %75, 0.000000e+00
  %83 = select i1 %81, float 1.000000e+00, float -1.000000e+00
  %84 = select i1 %82, float 1.000000e+00, float -1.000000e+00
  %85 = fcmp fast olt float %79, 0.000000e+00
  %86 = fmul fast float %83, %80
  %87 = fmul fast float %77, %84
  %88 = select i1 %85, float %86, float %74
  %89 = select i1 %85, float %87, float %75
  %90 = call float @dx.op.dot3.f32(i32 55, float %88, float %89, float %79, float %88, float %89, float %79)  ; Dot3(ax,ay,az,bx,by,bz)
  %91 = call float @dx.op.unary.f32(i32 25, float %90)  ; Rsqrt(value)
  %92 = fmul fast float %88, %91
  %93 = fmul fast float %89, %91
  %94 = fmul fast float %91, %79
  %95 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %96 = extractvalue %dx.types.CBufRet.i32 %95, 3
  %97 = lshr i32 %96, 1
  %98 = icmp eq i32 %37, %97
  %99 = zext i1 %98 to i32
  %100 = shl i32 %28, %99
  %101 = shl i32 %29, %99
  %102 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %20, i32 0, i32 %100, i32 %101, i32 0, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %103 = extractvalue %dx.types.ResRet.f32 %102, 0
  %104 = extractvalue %dx.types.ResRet.f32 %102, 1
  %105 = extractvalue %dx.types.ResRet.f32 %102, 2
  %106 = extractvalue %dx.types.ResRet.f32 %102, 3
  %107 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %19, i32 0, i32 %100, i32 %101, i32 0, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %108 = extractvalue %dx.types.ResRet.f32 %107, 0
  %109 = extractvalue %dx.types.ResRet.f32 %107, 1
  %110 = extractvalue %dx.types.ResRet.f32 %107, 2
  %111 = extractvalue %dx.types.ResRet.f32 %107, 3
  %112 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %18, i32 0, i32 %100, i32 %101, i32 0, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %113 = extractvalue %dx.types.ResRet.f32 %112, 0
  %114 = extractvalue %dx.types.ResRet.f32 %112, 1
  %115 = extractvalue %dx.types.ResRet.f32 %112, 2
  %116 = fmul fast float %106, 2.550000e+02
  %117 = fptoui float %116 to i32
  %118 = and i32 %117, 31
  %119 = icmp eq i32 %118, 31
  %120 = and i32 %117, 47
  %121 = icmp eq i32 %120, 47
  %122 = select i1 %121, float 1.000000e+00, float 0.000000e+00
  %123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %124 = extractvalue %dx.types.CBufRet.f32 %123, 2
  %125 = fsub fast float 1.000000e+00, %122
  %126 = fmul fast float %124, %125
  %127 = fadd fast float %126, %122
  %128 = fcmp fast ole float %111, 0.000000e+00
  %129 = fmul fast float %108, 2.000000e+00
  %130 = fmul fast float %109, 2.000000e+00
  %131 = fmul fast float %110, 2.000000e+00
  %132 = fadd fast float %129, -1.000000e+00
  %133 = fadd fast float %130, -1.000000e+00
  %134 = fadd fast float %131, -1.000000e+00
  %135 = call float @dx.op.dot3.f32(i32 55, float %132, float %133, float %134, float %132, float %133, float %134)  ; Dot3(ax,ay,az,bx,by,bz)
  %136 = call float @dx.op.unary.f32(i32 25, float %135)  ; Rsqrt(value)
  %137 = fmul fast float %136, %132
  %138 = fmul fast float %136, %133
  %139 = fmul fast float %136, %134
  %140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %141 = extractvalue %dx.types.CBufRet.f32 %140, 0
  %142 = extractvalue %dx.types.CBufRet.f32 %140, 1
  %143 = extractvalue %dx.types.CBufRet.f32 %140, 2
  %144 = extractvalue %dx.types.CBufRet.f32 %140, 3
  %145 = fmul fast float %142, %139
  %146 = fmul fast float %143, %138
  %147 = fsub fast float %145, %146
  %148 = fmul fast float %143, %137
  %149 = fmul fast float %141, %139
  %150 = fsub fast float %148, %149
  %151 = fmul fast float %141, %138
  %152 = fmul fast float %142, %137
  %153 = fsub fast float %151, %152
  %154 = fmul fast float %147, 2.000000e+00
  %155 = fmul fast float %150, 2.000000e+00
  %156 = fmul fast float %153, 2.000000e+00
  %157 = fmul fast float %154, %144
  %158 = fmul fast float %155, %144
  %159 = fmul fast float %156, %144
  %160 = fadd fast float %157, %137
  %161 = fadd fast float %158, %138
  %162 = fadd fast float %159, %139
  %163 = fmul fast float %156, %142
  %164 = fmul fast float %155, %143
  %165 = fsub fast float %163, %164
  %166 = fmul fast float %154, %143
  %167 = fmul fast float %156, %141
  %168 = fsub fast float %166, %167
  %169 = fmul fast float %155, %141
  %170 = fmul fast float %154, %142
  %171 = fsub fast float %169, %170
  %172 = fadd fast float %160, %165
  %173 = fadd fast float %161, %168
  %174 = fadd fast float %162, %171
  %175 = fmul fast float %142, %94
  %176 = fmul fast float %143, %93
  %177 = fsub fast float %175, %176
  %178 = fmul fast float %143, %92
  %179 = fmul fast float %141, %94
  %180 = fsub fast float %178, %179
  %181 = fmul fast float %141, %93
  %182 = fmul fast float %142, %92
  %183 = fsub fast float %181, %182
  %184 = fmul fast float %177, 2.000000e+00
  %185 = fmul fast float %180, 2.000000e+00
  %186 = fmul fast float %183, 2.000000e+00
  %187 = fmul fast float %184, %144
  %188 = fmul fast float %185, %144
  %189 = fmul fast float %186, %144
  %190 = fmul fast float %186, %142
  %191 = fmul fast float %185, %143
  %192 = fmul fast float %184, %143
  %193 = fmul fast float %186, %141
  %194 = fmul fast float %185, %141
  %195 = fmul fast float %184, %142
  %196 = fadd fast float %187, %92
  %197 = fsub fast float %196, %191
  %198 = fadd fast float %197, %190
  %199 = fadd fast float %188, %93
  %200 = fsub fast float %199, %193
  %201 = fadd fast float %200, %192
  %202 = fadd fast float %189, %94
  %203 = fsub fast float %202, %195
  %204 = fadd fast float %203, %194
  %205 = fdiv fast float 4.000000e+00, %111
  %206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %207 = extractvalue %dx.types.CBufRet.f32 %206, 0
  %208 = extractvalue %dx.types.CBufRet.f32 %206, 1
  %209 = extractvalue %dx.types.CBufRet.f32 %206, 2
  %210 = fmul fast float %198, %205
  %211 = fmul fast float %201, %205
  %212 = fmul fast float %204, %205
  %213 = fmul fast float %103, %103
  %214 = fmul fast float %104, %104
  %215 = fmul fast float %105, %105
  %216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %217 = extractvalue %dx.types.CBufRet.f32 %216, 3
  %218 = fmul fast float %217, %113
  %219 = fmul fast float %217, %114
  %220 = fmul fast float %217, %115
  %221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %222 = extractvalue %dx.types.CBufRet.f32 %221, 0
  %223 = extractvalue %dx.types.CBufRet.f32 %221, 1
  %224 = extractvalue %dx.types.CBufRet.f32 %221, 2
  %225 = fsub fast float %207, %222
  %226 = fadd fast float %225, %210
  %227 = fsub fast float %208, %223
  %228 = fadd fast float %227, %211
  %229 = fsub fast float %209, %224
  %230 = fadd fast float %229, %212
  %231 = fsub fast float -0.000000e+00, %230
  %232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %233 = extractvalue %dx.types.CBufRet.f32 %232, 3
  %234 = fcmp fast oeq float %233, 0.000000e+00
  br i1 %234, label %1469, label %235, !dx.controlflow.hints !42

; <label>:235                                     ; preds = %0
  %236 = extractvalue %dx.types.CBufRet.f32 %232, 0
  %237 = extractvalue %dx.types.CBufRet.f32 %232, 1
  %238 = extractvalue %dx.types.CBufRet.f32 %232, 2
  %239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %240 = extractvalue %dx.types.CBufRet.f32 %239, 0
  %241 = extractvalue %dx.types.CBufRet.f32 %239, 1
  %242 = extractvalue %dx.types.CBufRet.f32 %239, 2
  %243 = fcmp fast olt float %233, 0.000000e+00
  br i1 %243, label %1279, label %244, !dx.controlflow.hints !43

; <label>:244                                     ; preds = %235
  %245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %246 = extractvalue %dx.types.CBufRet.f32 %245, 0
  %247 = extractvalue %dx.types.CBufRet.f32 %245, 1
  %248 = extractvalue %dx.types.CBufRet.f32 %245, 2
  %249 = extractvalue %dx.types.CBufRet.f32 %245, 3
  %250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %251 = extractvalue %dx.types.CBufRet.f32 %250, 0
  %252 = extractvalue %dx.types.CBufRet.f32 %250, 1
  %253 = extractvalue %dx.types.CBufRet.f32 %250, 2
  %254 = extractvalue %dx.types.CBufRet.f32 %250, 3
  %255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %256 = extractvalue %dx.types.CBufRet.f32 %255, 0
  %257 = extractvalue %dx.types.CBufRet.f32 %255, 1
  %258 = extractvalue %dx.types.CBufRet.f32 %255, 2
  %259 = extractvalue %dx.types.CBufRet.f32 %255, 3
  %260 = fmul fast float %246, %226
  %261 = call float @dx.op.tertiary.f32(i32 46, float %228, float %247, float %260)  ; FMad(a,b,c)
  %262 = call float @dx.op.tertiary.f32(i32 46, float %230, float %248, float %261)  ; FMad(a,b,c)
  %263 = fadd fast float %262, %249
  %264 = fmul fast float %251, %226
  %265 = call float @dx.op.tertiary.f32(i32 46, float %228, float %252, float %264)  ; FMad(a,b,c)
  %266 = call float @dx.op.tertiary.f32(i32 46, float %230, float %253, float %265)  ; FMad(a,b,c)
  %267 = fadd fast float %266, %254
  %268 = fmul fast float %256, %226
  %269 = call float @dx.op.tertiary.f32(i32 46, float %228, float %257, float %268)  ; FMad(a,b,c)
  %270 = call float @dx.op.tertiary.f32(i32 46, float %230, float %258, float %269)  ; FMad(a,b,c)
  %271 = fadd fast float %270, %259
  %272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %273 = extractvalue %dx.types.CBufRet.f32 %272, 0
  %274 = extractvalue %dx.types.CBufRet.f32 %272, 1
  %275 = extractvalue %dx.types.CBufRet.f32 %272, 3
  %276 = fmul fast float %275, %263
  %277 = fmul fast float %275, %267
  %278 = fadd fast float %276, %273
  %279 = fadd fast float %277, %274
  %280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %281 = extractvalue %dx.types.CBufRet.f32 %280, 0
  %282 = extractvalue %dx.types.CBufRet.f32 %280, 1
  %283 = extractvalue %dx.types.CBufRet.f32 %280, 3
  %284 = fmul fast float %283, %263
  %285 = fmul fast float %283, %267
  %286 = fadd fast float %284, %281
  %287 = fadd fast float %285, %282
  %288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %289 = extractvalue %dx.types.CBufRet.f32 %288, 1
  %290 = fsub fast float %289, %271
  %291 = extractvalue %dx.types.CBufRet.f32 %288, 2
  %292 = fmul fast float %290, %291
  %293 = fsub fast float 1.000000e+00, %292
  %294 = call float @dx.op.unary.f32(i32 7, float %293)  ; Saturate(value)
  %295 = extractvalue %dx.types.CBufRet.f32 %280, 2
  %296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %297 = extractvalue %dx.types.CBufRet.f32 %296, 2
  %298 = fadd fast float %297, %295
  %299 = fcmp fast ogt float %298, 0.000000e+00
  br i1 %299, label %300, label %325, !dx.controlflow.hints !44

; <label>:300                                     ; preds = %244
  %301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %302 = extractvalue %dx.types.CBufRet.f32 %301, 0
  %303 = extractvalue %dx.types.CBufRet.f32 %301, 1
  %304 = fsub fast float %286, %302
  %305 = fsub fast float %287, %303
  %306 = fcmp fast olt float %304, 0.000000e+00
  %307 = fcmp fast olt float %305, 0.000000e+00
  %308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %309 = extractvalue %dx.types.CBufRet.f32 %308, 0
  %310 = extractvalue %dx.types.CBufRet.f32 %308, 1
  %311 = extractvalue %dx.types.CBufRet.f32 %308, 2
  %312 = extractvalue %dx.types.CBufRet.f32 %308, 3
  %313 = select i1 %306, float %309, float %311
  %314 = select i1 %307, float %310, float %312
  %315 = fmul fast float %313, %304
  %316 = fmul fast float %314, %305
  %317 = call float @dx.op.unary.f32(i32 6, float %315)  ; FAbs(value)
  %318 = call float @dx.op.unary.f32(i32 6, float %316)  ; FAbs(value)
  %319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %320 = extractvalue %dx.types.CBufRet.f32 %319, 0
  %321 = call float @dx.op.binary.f32(i32 35, float %317, float %318)  ; FMax(a,b)
  %322 = fsub fast float %320, %321
  %323 = call float @dx.op.unary.f32(i32 7, float %322)  ; Saturate(value)
  %324 = fmul fast float %323, %294
  br label %325

; <label>:325                                     ; preds = %300, %244
  %326 = phi float [ %324, %300 ], [ 0.000000e+00, %244 ]
  %327 = extractvalue %dx.types.CBufRet.f32 %272, 2
  %328 = extractvalue %dx.types.CBufRet.f32 %296, 1
  %329 = fadd fast float %328, %327
  %330 = fcmp fast ogt float %329, 0.000000e+00
  br i1 %330, label %331, label %356, !dx.controlflow.hints !45

; <label>:331                                     ; preds = %325
  %332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %333 = extractvalue %dx.types.CBufRet.f32 %332, 0
  %334 = extractvalue %dx.types.CBufRet.f32 %332, 1
  %335 = fsub fast float %278, %333
  %336 = fsub fast float %279, %334
  %337 = fcmp fast olt float %335, 0.000000e+00
  %338 = fcmp fast olt float %336, 0.000000e+00
  %339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %340 = extractvalue %dx.types.CBufRet.f32 %339, 0
  %341 = extractvalue %dx.types.CBufRet.f32 %339, 1
  %342 = extractvalue %dx.types.CBufRet.f32 %339, 2
  %343 = extractvalue %dx.types.CBufRet.f32 %339, 3
  %344 = select i1 %337, float %340, float %342
  %345 = select i1 %338, float %341, float %343
  %346 = fmul fast float %344, %335
  %347 = fmul fast float %345, %336
  %348 = call float @dx.op.unary.f32(i32 6, float %346)  ; FAbs(value)
  %349 = call float @dx.op.unary.f32(i32 6, float %347)  ; FAbs(value)
  %350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %351 = extractvalue %dx.types.CBufRet.f32 %350, 0
  %352 = call float @dx.op.binary.f32(i32 35, float %348, float %349)  ; FMax(a,b)
  %353 = fsub fast float %351, %352
  %354 = call float @dx.op.unary.f32(i32 7, float %353)  ; Saturate(value)
  %355 = fmul fast float %354, %294
  br label %356

; <label>:356                                     ; preds = %331, %325
  %357 = phi float [ %355, %331 ], [ 0.000000e+00, %325 ]
  %358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %359 = extractvalue %dx.types.CBufRet.f32 %358, 1
  %360 = call float @dx.op.unary.f32(i32 7, float %359)  ; Saturate(value)
  %361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %362 = extractvalue %dx.types.CBufRet.f32 %361, 0
  %363 = extractvalue %dx.types.CBufRet.f32 %361, 1
  %364 = fsub fast float %263, %362
  %365 = fsub fast float %267, %363
  %366 = fcmp fast olt float %364, 0.000000e+00
  %367 = fcmp fast olt float %365, 0.000000e+00
  %368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %369 = extractvalue %dx.types.CBufRet.f32 %368, 0
  %370 = extractvalue %dx.types.CBufRet.f32 %368, 1
  %371 = extractvalue %dx.types.CBufRet.f32 %368, 2
  %372 = extractvalue %dx.types.CBufRet.f32 %368, 3
  %373 = select i1 %366, float %369, float %371
  %374 = select i1 %367, float %370, float %372
  %375 = fmul fast float %373, %364
  %376 = fmul fast float %374, %365
  %377 = call float @dx.op.unary.f32(i32 6, float %375)  ; FAbs(value)
  %378 = call float @dx.op.unary.f32(i32 6, float %376)  ; FAbs(value)
  %379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %380 = extractvalue %dx.types.CBufRet.f32 %379, 0
  %381 = call float @dx.op.binary.f32(i32 35, float %377, float %378)  ; FMax(a,b)
  %382 = fsub fast float %380, %381
  %383 = call float @dx.op.unary.f32(i32 7, float %382)  ; Saturate(value)
  %384 = call float @dx.op.binary.f32(i32 36, float %383, float %360)  ; FMin(a,b)
  %385 = fmul fast float %384, %294
  %386 = fsub fast float %357, %385
  %387 = fsub fast float %326, %357
  %388 = fsub fast float %387, %385
  %389 = call float @dx.op.binary.f32(i32 35, float %357, float %326)  ; FMax(a,b)
  %390 = call float @dx.op.binary.f32(i32 35, float %385, float %389)  ; FMax(a,b)
  %391 = fcmp fast olt float %390, 1.000000e+00
  br i1 %391, label %392, label %790, !dx.controlflow.hints !46

; <label>:392                                     ; preds = %356
  %393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %394 = extractvalue %dx.types.CBufRet.f32 %393, 0
  %395 = fcmp fast une float %394, 0.000000e+00
  br i1 %395, label %396, label %790, !dx.controlflow.hints !47

; <label>:396                                     ; preds = %392
  %397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %398 = extractvalue %dx.types.CBufRet.f32 %397, 0
  %399 = extractvalue %dx.types.CBufRet.f32 %397, 1
  %400 = extractvalue %dx.types.CBufRet.f32 %397, 2
  %401 = extractvalue %dx.types.CBufRet.f32 %397, 3
  %402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %403 = extractvalue %dx.types.CBufRet.f32 %402, 0
  %404 = extractvalue %dx.types.CBufRet.f32 %402, 1
  %405 = extractvalue %dx.types.CBufRet.f32 %402, 2
  %406 = extractvalue %dx.types.CBufRet.f32 %402, 3
  %407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %408 = extractvalue %dx.types.CBufRet.f32 %407, 0
  %409 = extractvalue %dx.types.CBufRet.f32 %407, 1
  %410 = extractvalue %dx.types.CBufRet.f32 %407, 2
  %411 = extractvalue %dx.types.CBufRet.f32 %407, 3
  %412 = fmul fast float %398, %226
  %413 = call float @dx.op.tertiary.f32(i32 46, float %228, float %399, float %412)  ; FMad(a,b,c)
  %414 = call float @dx.op.tertiary.f32(i32 46, float %230, float %400, float %413)  ; FMad(a,b,c)
  %415 = fadd fast float %414, %401
  %416 = fmul fast float %403, %226
  %417 = call float @dx.op.tertiary.f32(i32 46, float %228, float %404, float %416)  ; FMad(a,b,c)
  %418 = call float @dx.op.tertiary.f32(i32 46, float %230, float %405, float %417)  ; FMad(a,b,c)
  %419 = fadd fast float %418, %406
  %420 = fmul fast float %408, %226
  %421 = call float @dx.op.tertiary.f32(i32 46, float %228, float %409, float %420)  ; FMad(a,b,c)
  %422 = call float @dx.op.tertiary.f32(i32 46, float %230, float %410, float %421)  ; FMad(a,b,c)
  %423 = fadd fast float %422, %411
  %424 = fcmp fast oge float %415, 1.000000e+00
  %425 = fcmp fast oge float %419, 1.000000e+00
  %426 = or i1 %424, %425
  %427 = fcmp fast olt float %415, 0.000000e+00
  %428 = fcmp fast olt float %419, 0.000000e+00
  %429 = or i1 %427, %428
  %430 = or i1 %426, %429
  br i1 %430, label %790, label %431, !dx.controlflow.hints !48

; <label>:431                                     ; preds = %396
  %432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %433 = extractvalue %dx.types.CBufRet.f32 %432, 0
  %434 = extractvalue %dx.types.CBufRet.f32 %432, 1
  %435 = extractvalue %dx.types.CBufRet.f32 %432, 2
  %436 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %437 = extractvalue %dx.types.CBufRet.i32 %436, 2
  %438 = uitofp i32 %437 to float
  %439 = extractvalue %dx.types.CBufRet.i32 %436, 3
  %440 = uitofp i32 %439 to float
  %441 = extractvalue %dx.types.CBufRet.f32 %432, 3
  %442 = fmul fast float %441, 2.000000e+00
  %443 = fsub fast float %415, %433
  %444 = fsub fast float %419, %434
  %445 = fmul fast float %442, %443
  %446 = fmul fast float %442, %444
  %447 = fdiv fast float 1.000000e+00, %238
  %448 = fmul fast float %446, %447
  %449 = call float @dx.op.unary.f32(i32 6, float %448)  ; FAbs(value)
  %450 = fmul fast float %435, %230
  %451 = fmul fast float %450, %442
  %452 = call float @dx.op.unary.f32(i32 6, float %451)  ; FAbs(value)
  %453 = call float @dx.op.unary.f32(i32 6, float %445)  ; FAbs(value)
  %454 = call float @dx.op.binary.f32(i32 35, float %452, float %449)  ; FMax(a,b)
  %455 = call float @dx.op.binary.f32(i32 35, float %453, float %454)  ; FMax(a,b)
  %456 = fmul fast float %455, 2.000000e+00
  %457 = call float @dx.op.unary.f32(i32 23, float %456)  ; Log(value)
  %458 = call float @dx.op.binary.f32(i32 35, float %457, float %438)  ; FMax(a,b)
  %459 = call float @dx.op.unary.f32(i32 22, float %458)  ; Frc(value)
  %460 = fadd fast float %459, 0xBFEA666660000000
  %461 = fmul fast float %460, 8.000000e+00
  %462 = call float @dx.op.unary.f32(i32 7, float %461)  ; Saturate(value)
  %463 = call float @dx.op.unary.f32(i32 27, float %458)  ; Round_ni(value)
  %464 = fadd fast float %463, %462
  %465 = call float @dx.op.binary.f32(i32 36, float %464, float %440)  ; FMin(a,b)
  %466 = call float @dx.op.unary.f32(i32 27, float %465)  ; Round_ni(value)
  %467 = fsub fast float -0.000000e+00, %466
  %468 = call float @dx.op.unary.f32(i32 21, float %467)  ; Exp(value)
  %469 = fmul fast float %468, %442
  %470 = fmul fast float %469, %415
  %471 = fmul fast float %469, %419
  %472 = fmul fast float %470, 2.500000e-01
  %473 = fmul fast float %471, 2.500000e-01
  %474 = fadd fast float %472, 5.000000e-01
  %475 = fadd fast float %473, 5.000000e-01
  %476 = fsub fast float %440, %438
  %477 = fptoui float %476 to i32
  %478 = add i32 %477, 320
  %479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 %478)  ; CBufferLoadLegacy(handle,regIndex)
  %480 = extractvalue %dx.types.CBufRet.f32 %479, 0
  %481 = extractvalue %dx.types.CBufRet.f32 %479, 1
  %482 = fcmp fast une float %465, %440
  %483 = fsub fast float %415, %480
  %484 = fsub fast float %419, %481
  %485 = call float @dx.op.unary.f32(i32 6, float %483)  ; FAbs(value)
  %486 = call float @dx.op.unary.f32(i32 6, float %484)  ; FAbs(value)
  %487 = fmul fast float %485, %469
  %488 = fmul fast float %486, %469
  %489 = fcmp fast olt float %487, 1.000000e+00
  %490 = fcmp fast olt float %488, 1.000000e+00
  %491 = and i1 %489, %490
  %492 = or i1 %482, %491
  br i1 %492, label %493, label %790, !dx.controlflow.hints !49

; <label>:493                                     ; preds = %431
  %494 = fmul fast float %471, 5.000000e-01
  %495 = fmul fast float %470, 5.000000e-01
  %496 = fadd fast float %494, 5.000000e-01
  %497 = fadd fast float %495, 5.000000e-01
  %498 = sitofp i32 %437 to float
  %499 = fsub fast float %465, %498
  %500 = call float @dx.op.unary.f32(i32 27, float %499)  ; Round_ni(value)
  %501 = call float @dx.op.unary.f32(i32 22, float %465)  ; Frc(value)
  %502 = call float @dx.op.unary.f32(i32 22, float %497)  ; Frc(value)
  %503 = call float @dx.op.unary.f32(i32 22, float %496)  ; Frc(value)
  %504 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %21, float %502, float %503, float %500, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %505 = extractvalue %dx.types.ResRet.f32 %504, 0
  %506 = extractvalue %dx.types.ResRet.f32 %504, 1
  %507 = extractvalue %dx.types.ResRet.f32 %504, 2
  %508 = extractvalue %dx.types.ResRet.f32 %504, 3
  %509 = fcmp fast ogt float %501, 0.000000e+00
  br i1 %509, label %510, label %531, !dx.controlflow.hints !50

; <label>:510                                     ; preds = %493
  %511 = fadd fast float %500, 1.000000e+00
  %512 = call float @dx.op.unary.f32(i32 22, float %474)  ; Frc(value)
  %513 = call float @dx.op.unary.f32(i32 22, float %475)  ; Frc(value)
  %514 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %21, float %512, float %513, float %511, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %515 = extractvalue %dx.types.ResRet.f32 %514, 0
  %516 = extractvalue %dx.types.ResRet.f32 %514, 1
  %517 = extractvalue %dx.types.ResRet.f32 %514, 2
  %518 = extractvalue %dx.types.ResRet.f32 %514, 3
  %519 = fsub fast float %515, %505
  %520 = fsub fast float %516, %506
  %521 = fsub fast float %517, %507
  %522 = fsub fast float %518, %508
  %523 = fmul fast float %519, %501
  %524 = fmul fast float %520, %501
  %525 = fmul fast float %521, %501
  %526 = fmul fast float %522, %501
  %527 = fadd fast float %523, %505
  %528 = fadd fast float %524, %506
  %529 = fadd fast float %525, %507
  %530 = fadd fast float %526, %508
  br label %531

; <label>:531                                     ; preds = %510, %493
  %532 = phi float [ %527, %510 ], [ %505, %493 ]
  %533 = phi float [ %528, %510 ], [ %506, %493 ]
  %534 = phi float [ %529, %510 ], [ %507, %493 ]
  %535 = phi float [ %530, %510 ], [ %508, %493 ]
  %536 = fadd fast float %532, -5.000000e-01
  %537 = fadd fast float %534, -5.000000e-01
  %538 = fmul fast float %536, 0xBFD5555560000000
  %539 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %537, float %538)  ; FMad(a,b,c)
  %540 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %533, float 0.000000e+00)  ; FMad(a,b,c)
  %541 = fadd fast float %540, %535
  %542 = fmul fast float %536, -7.500000e-01
  %543 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %537, float %542)  ; FMad(a,b,c)
  %544 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %533, float 0.000000e+00)  ; FMad(a,b,c)
  %545 = fadd fast float %544, %535
  %546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %547 = extractvalue %dx.types.CBufRet.f32 %546, 0
  %548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %549 = extractvalue %dx.types.CBufRet.f32 %548, 0
  %550 = extractvalue %dx.types.CBufRet.f32 %548, 1
  %551 = extractvalue %dx.types.CBufRet.f32 %548, 2
  %552 = extractvalue %dx.types.CBufRet.f32 %548, 3
  %553 = fsub fast float %549, %539
  %554 = fsub fast float %550, %541
  %555 = fsub fast float %551, %543
  %556 = fsub fast float %552, %545
  %557 = fmul fast float %553, %547
  %558 = fmul fast float %554, %547
  %559 = fmul fast float %555, %547
  %560 = fmul fast float %556, %547
  %561 = fadd fast float %557, %539
  %562 = fadd fast float %558, %541
  %563 = fadd fast float %559, %543
  %564 = fadd fast float %560, %545
  %565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %566 = extractvalue %dx.types.ResRet.i32 %565, 0
  %567 = and i32 %566, 536870911
  %568 = uitofp i32 %567 to float
  %569 = fmul fast float %568, %415
  %570 = fmul fast float %568, %419
  %571 = fptoui float %569 to i32
  %572 = fptoui float %570 to i32
  %573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %574 = extractvalue %dx.types.ResRet.i32 %573, 0
  %575 = and i32 %574, 31
  %576 = lshr i32 %571, %575
  %577 = lshr i32 %572, %575
  %578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %579 = extractvalue %dx.types.ResRet.i32 %578, 0
  %580 = and i32 %579, 31
  %581 = shl i32 1, %580
  %582 = call i32 @dx.op.binary.i32(i32 40, i32 %581, i32 4)  ; UMin(a,b)
  %583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %584 = extractvalue %dx.types.ResRet.i32 %583, 0
  %585 = extractvalue %dx.types.ResRet.i32 %583, 1
  %586 = icmp eq i32 %582, 0
  br i1 %586, label %628, label %587

; <label>:587                                     ; preds = %531
  br label %588

; <label>:588                                     ; preds = %616, %587
  %589 = phi i32 [ %619, %616 ], [ 0, %587 ]
  %590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %591 = extractvalue %dx.types.ResRet.i32 %590, 0
  %592 = lshr i32 %591, 16
  %593 = and i32 %592, 31
  %594 = shl i32 %577, %593
  %595 = add i32 %594, %576
  %596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %597 = extractvalue %dx.types.ResRet.i32 %596, 0
  %598 = and i32 %597, 31
  %599 = shl i32 %595, %598
  %600 = add i32 %599, %589
  %601 = shl i32 %600, 2
  %602 = add i32 %601, 32
  %603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %602, i32 undef)  ; BufferLoad(srv,index,wot)
  %604 = extractvalue %dx.types.ResRet.i32 %603, 0
  %605 = icmp slt i32 %604, 0
  %606 = getelementptr [12 x float], [12 x float]* %30, i32 0, i32 %589
  %607 = getelementptr [12 x float], [12 x float]* %31, i32 0, i32 %589
  %608 = bitcast float* %606 to i32*
  %609 = bitcast float* %607 to i32*
  br i1 %605, label %610, label %616, !dx.controlflow.hints !51

; <label>:610                                     ; preds = %588
  %611 = and i32 %604, 1073741823
  %612 = add nuw nsw i32 %611, 20
  %613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %612, i32 undef)  ; BufferLoad(srv,index,wot)
  %614 = extractvalue %dx.types.ResRet.i32 %613, 0
  %615 = extractvalue %dx.types.ResRet.i32 %613, 1
  br label %616

; <label>:616                                     ; preds = %610, %588
  %617 = phi i32 [ %614, %610 ], [ %584, %588 ]
  %618 = phi i32 [ %615, %610 ], [ %585, %588 ]
  store i32 %617, i32* %608, align 4
  store i32 %618, i32* %609, align 4
  %619 = add nuw i32 %589, 1
  %620 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %621 = extractvalue %dx.types.CBufRet.i32 %620, 2
  %622 = icmp eq i32 %621, 0
  %623 = icmp ugt i32 %604, -1073741825
  %624 = and i1 %623, %622
  %625 = icmp ult i32 %619, %582
  %626 = and i1 %624, %625
  br i1 %626, label %588, label %627, !dx.controlflow.hints !52

; <label>:627                                     ; preds = %616
  br label %628

; <label>:628                                     ; preds = %627, %531
  %629 = phi i32 [ 0, %531 ], [ %619, %627 ]
  %630 = extractvalue %dx.types.CBufRet.f32 %393, 2
  %631 = fptoui float %630 to i32
  %632 = icmp eq i32 %631, 0
  br i1 %632, label %684, label %633

; <label>:633                                     ; preds = %628
  br label %634

; <label>:634                                     ; preds = %679, %633
  %635 = phi i32 [ %680, %679 ], [ %629, %633 ]
  %636 = phi i32 [ %681, %679 ], [ 0, %633 ]
  %637 = lshr i32 %636, 2
  %638 = and i32 %636, 3
  %639 = add nuw nsw i32 %637, 83
  %640 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 %639)  ; CBufferLoadLegacy(handle,regIndex)
  %641 = extractvalue %dx.types.CBufRet.i32 %640, 0
  %642 = extractvalue %dx.types.CBufRet.i32 %640, 1
  %643 = extractvalue %dx.types.CBufRet.i32 %640, 2
  %644 = extractvalue %dx.types.CBufRet.i32 %640, 3
  %645 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i32 0, i32 0
  store i32 %641, i32* %645, align 4
  %646 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i32 0, i32 1
  store i32 %642, i32* %646, align 4
  %647 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i32 0, i32 2
  store i32 %643, i32* %647, align 4
  %648 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i32 0, i32 3
  store i32 %644, i32* %648, align 4
  %649 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i32 0, i32 %638
  %650 = load i32, i32* %649, align 4, !tbaa !53, !noalias !57
  %651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %652 = extractvalue %dx.types.ResRet.i32 %651, 0
  %653 = lshr i32 %652, 16
  %654 = and i32 %653, 31
  %655 = shl i32 %577, %654
  %656 = add i32 %655, %576
  %657 = shl i32 %656, 2
  %658 = add i32 %657, %650
  %659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %658, i32 undef)  ; BufferLoad(srv,index,wot)
  %660 = extractvalue %dx.types.ResRet.i32 %659, 0
  %661 = icmp eq i32 %660, 0
  br i1 %661, label %679, label %662, !dx.controlflow.hints !62

; <label>:662                                     ; preds = %634
  %663 = icmp slt i32 %660, 0
  %664 = getelementptr [12 x float], [12 x float]* %30, i32 0, i32 %635
  %665 = getelementptr [12 x float], [12 x float]* %31, i32 0, i32 %635
  %666 = bitcast float* %664 to i32*
  %667 = bitcast float* %665 to i32*
  br i1 %663, label %668, label %675, !dx.controlflow.hints !63

; <label>:668                                     ; preds = %662
  %669 = and i32 %660, 1073741823
  %670 = add i32 %650, 20
  %671 = add i32 %670, %669
  %672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %671, i32 undef)  ; BufferLoad(srv,index,wot)
  %673 = extractvalue %dx.types.ResRet.i32 %672, 0
  %674 = extractvalue %dx.types.ResRet.i32 %672, 1
  br label %675

; <label>:675                                     ; preds = %668, %662
  %676 = phi i32 [ %673, %668 ], [ %584, %662 ]
  %677 = phi i32 [ %674, %668 ], [ %585, %662 ]
  store i32 %676, i32* %666, align 4
  store i32 %677, i32* %667, align 4
  %678 = add i32 %635, 1
  br label %679

; <label>:679                                     ; preds = %675, %634
  %680 = phi i32 [ %635, %634 ], [ %678, %675 ]
  %681 = add nuw i32 %636, 1
  %682 = icmp eq i32 %681, %631
  br i1 %682, label %683, label %634

; <label>:683                                     ; preds = %679
  br label %684

; <label>:684                                     ; preds = %683, %628
  %685 = phi i32 [ %629, %628 ], [ %680, %683 ]
  %686 = icmp eq i32 %685, 1
  %687 = getelementptr [12 x float], [12 x float]* %30, i32 0, i32 0
  %688 = getelementptr [12 x float], [12 x float]* %31, i32 0, i32 0
  br i1 %686, label %689, label %692, !dx.controlflow.hints !64

; <label>:689                                     ; preds = %684
  %690 = load float, float* %687, align 4
  %691 = load float, float* %688, align 4
  br label %719

; <label>:692                                     ; preds = %684
  %693 = load float, float* %687, align 4
  %694 = load float, float* %688, align 4
  %695 = fdiv fast float 1.000000e+00, %694
  %696 = fsub fast float %693, %695
  %697 = icmp ugt i32 %685, 1
  br i1 %697, label %698, label %714

; <label>:698                                     ; preds = %692
  br label %699

; <label>:699                                     ; preds = %699, %698
  %700 = phi float [ %709, %699 ], [ %696, %698 ]
  %701 = phi float [ %710, %699 ], [ %693, %698 ]
  %702 = phi i32 [ %711, %699 ], [ 1, %698 ]
  %703 = getelementptr [12 x float], [12 x float]* %30, i32 0, i32 %702
  %704 = load float, float* %703, align 4
  %705 = getelementptr [12 x float], [12 x float]* %31, i32 0, i32 %702
  %706 = load float, float* %705, align 4
  %707 = fdiv fast float 1.000000e+00, %706
  %708 = fsub fast float %704, %707
  %709 = call float @dx.op.binary.f32(i32 36, float %700, float %708)  ; FMin(a,b)
  %710 = call float @dx.op.binary.f32(i32 35, float %701, float %704)  ; FMax(a,b)
  %711 = add nuw i32 %702, 1
  %712 = icmp eq i32 %711, %685
  br i1 %712, label %713, label %699

; <label>:713                                     ; preds = %699
  br label %714

; <label>:714                                     ; preds = %713, %692
  %715 = phi float [ %696, %692 ], [ %709, %713 ]
  %716 = phi float [ %693, %692 ], [ %710, %713 ]
  %717 = fsub fast float %716, %715
  %718 = fdiv fast float 1.000000e+00, %717
  br label %719

; <label>:719                                     ; preds = %714, %689
  %720 = phi float [ %690, %689 ], [ %716, %714 ]
  %721 = phi float [ %691, %689 ], [ %718, %714 ]
  %722 = fadd fast float %423, %720
  %723 = fmul fast float %722, %721
  %724 = call float @dx.op.unary.f32(i32 7, float %723)  ; Saturate(value)
  %725 = fmul fast float %724, 2.000000e+00
  %726 = fsub fast float 1.000000e+00, %725
  %727 = fmul fast float %561, %561
  %728 = fsub fast float %562, %727
  %729 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %728)  ; FMax(a,b)
  %730 = fdiv fast float 1.000000e+00, %729
  %731 = fmul fast float %562, %561
  %732 = fsub fast float %563, %731
  %733 = fsub fast float %726, %561
  %734 = fmul fast float %726, %726
  %735 = fsub fast float %734, %562
  %736 = fmul fast float %730, %732
  %737 = fmul fast float %736, %733
  %738 = fsub fast float %735, %737
  %739 = fmul fast float %562, %562
  %740 = fsub fast float %564, %739
  %741 = fmul fast float %732, %732
  %742 = fmul fast float %741, %730
  %743 = fsub fast float %740, %742
  %744 = fdiv fast float %738, %743
  %745 = fmul fast float %744, %732
  %746 = fsub fast float %733, %745
  %747 = fmul fast float %746, %730
  %748 = fmul fast float %747, %561
  %749 = fsub fast float 1.000000e+00, %748
  %750 = fmul fast float %744, %562
  %751 = fsub fast float %749, %750
  %752 = fmul fast float %747, %747
  %753 = fmul fast float %744, 4.000000e+00
  %754 = fmul fast float %753, %751
  %755 = fsub fast float %752, %754
  %756 = call float @dx.op.unary.f32(i32 24, float %755)  ; Sqrt(value)
  %757 = fcmp fast oge float %747, 0.000000e+00
  %758 = fsub fast float -0.000000e+00, %756
  %759 = select i1 %757, float %758, float %756
  %760 = fsub fast float %759, %747
  %761 = fdiv fast float %760, %744
  %762 = fdiv fast float %751, %760
  %763 = fmul fast float %761, 5.000000e-01
  %764 = fmul fast float %762, 2.000000e+00
  %765 = select i1 %757, float %763, float %764
  %766 = select i1 %757, float %764, float %763
  %767 = call float @dx.op.binary.f32(i32 35, float %765, float %766)  ; FMax(a,b)
  %768 = call float @dx.op.binary.f32(i32 36, float %765, float %766)  ; FMin(a,b)
  %769 = fcmp fast ogt float %726, %767
  %770 = fsub fast float %726, %768
  %771 = fsub fast float %726, %767
  %772 = fsub fast float %767, %768
  %773 = select i1 %769, float %771, float %772
  %774 = fmul float %770, %773
  %775 = select i1 %769, float %768, float %726
  %776 = fcmp fast ogt float %726, %768
  %777 = fmul fast float %775, %767
  %778 = fadd fast float %775, %767
  %779 = fmul fast float %778, %561
  %780 = fadd fast float %777, %562
  %781 = fsub fast float %780, %779
  %782 = fdiv fast float %781, %774
  %783 = select i1 %776, float %782, float 0.000000e+00
  %784 = fsub fast float 1.000000e+00, %783
  %785 = select i1 %769, float %784, float %783
  %786 = call float @dx.op.unary.f32(i32 7, float %785)  ; Saturate(value)
  %787 = extractvalue %dx.types.CBufRet.f32 %546, 3
  %788 = fmul fast float %787, %786
  %789 = fsub fast float 1.000000e+00, %788
  br label %790

; <label>:790                                     ; preds = %719, %431, %396, %392, %356
  %791 = phi float [ 1.000000e+00, %356 ], [ %789, %719 ], [ 1.000000e+00, %396 ], [ 1.000000e+00, %431 ], [ 1.000000e+00, %392 ]
  %792 = fcmp fast ogt float %388, 0.000000e+00
  br i1 %792, label %793, label %948, !dx.controlflow.hints !65

; <label>:793                                     ; preds = %790
  %794 = fadd fast float %297, %271
  %795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %796 = extractvalue %dx.types.CBufRet.f32 %795, 2
  %797 = extractvalue %dx.types.CBufRet.f32 %795, 3
  %798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %799 = extractvalue %dx.types.CBufRet.f32 %798, 2
  %800 = call float @dx.op.binary.f32(i32 35, float %794, float 0.000000e+00)  ; FMax(a,b)
  %801 = fadd fast float %800, 0x3F10000000000000
  %802 = fcmp fast oeq float %799, 0.000000e+00
  br i1 %802, label %804, label %803, !dx.controlflow.hints !66

; <label>:803                                     ; preds = %793
  br label %871

; <label>:804                                     ; preds = %793
  %805 = extractvalue %dx.types.CBufRet.f32 %795, 1
  %806 = extractvalue %dx.types.CBufRet.f32 %795, 0
  %807 = fmul fast float %806, %286
  %808 = fmul fast float %805, %287
  %809 = fadd fast float %807, 5.000000e-01
  %810 = call float @dx.op.unary.f32(i32 27, float %809)  ; Round_ni(value)
  %811 = fadd fast float %808, 5.000000e-01
  %812 = call float @dx.op.unary.f32(i32 27, float %811)  ; Round_ni(value)
  %813 = fsub fast float %809, %810
  %814 = fsub fast float %811, %812
  %815 = fadd fast float %810, -5.000000e-01
  %816 = fadd fast float %812, -5.000000e-01
  %817 = fmul fast float %813, 2.000000e+00
  %818 = fsub fast float 3.000000e+00, %817
  %819 = fadd fast float %817, 1.000000e+00
  %820 = fsub fast float 2.000000e+00, %813
  %821 = bitcast float %818 to i32
  %822 = sub nsw i32 2129859010, %821
  %823 = bitcast i32 %822 to float
  %824 = fmul fast float %823, %820
  %825 = fadd fast float %824, -1.000000e+00
  %826 = bitcast float %819 to i32
  %827 = sub nsw i32 2129859010, %826
  %828 = bitcast i32 %827 to float
  %829 = fmul fast float %828, %813
  %830 = fadd fast float %829, 1.000000e+00
  %831 = fmul fast float %814, 2.000000e+00
  %832 = fsub fast float 3.000000e+00, %831
  %833 = fadd fast float %831, 1.000000e+00
  %834 = fsub fast float 2.000000e+00, %814
  %835 = bitcast float %832 to i32
  %836 = sub nsw i32 2129859010, %835
  %837 = bitcast i32 %836 to float
  %838 = fmul fast float %837, %834
  %839 = fadd fast float %838, -1.000000e+00
  %840 = bitcast float %833 to i32
  %841 = sub nsw i32 2129859010, %840
  %842 = bitcast i32 %841 to float
  %843 = fmul fast float %842, %814
  %844 = fadd fast float %843, 1.000000e+00
  %845 = fadd fast float %825, %815
  %846 = fmul fast float %845, %796
  %847 = fadd fast float %839, %816
  %848 = fmul fast float %847, %797
  %849 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %24, float %846, float %848, float undef, float undef, i32 0, i32 0, i32 undef, float %801)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %850 = extractvalue %dx.types.ResRet.f32 %849, 0
  %851 = fmul fast float %850, %818
  %852 = fadd fast float %830, %815
  %853 = fmul fast float %852, %796
  %854 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %24, float %853, float %848, float undef, float undef, i32 0, i32 0, i32 undef, float %801)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %855 = extractvalue %dx.types.ResRet.f32 %854, 0
  %856 = fmul fast float %855, %819
  %857 = fadd fast float %844, %816
  %858 = fmul fast float %857, %797
  %859 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %24, float %846, float %858, float undef, float undef, i32 0, i32 0, i32 undef, float %801)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %860 = extractvalue %dx.types.ResRet.f32 %859, 0
  %861 = fmul fast float %860, %818
  %862 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %24, float %853, float %858, float undef, float undef, i32 0, i32 0, i32 undef, float %801)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %863 = extractvalue %dx.types.ResRet.f32 %862, 0
  %864 = fmul fast float %863, %819
  %865 = fadd fast float %864, %861
  %866 = fmul fast float %865, %833
  %867 = fadd fast float %856, %851
  %868 = fmul fast float %867, %832
  %869 = fadd fast float %868, %866
  %870 = fmul fast float %869, 6.250000e-02
  br label %948

; <label>:871                                     ; preds = %917, %803
  %872 = phi float [ %912, %917 ], [ 0.000000e+00, %803 ]
  %873 = phi float [ %914, %917 ], [ 0.000000e+00, %803 ]
  %874 = phi i32 [ %918, %917 ], [ 0, %803 ]
  %875 = mul i32 %874, 2
  %876 = add i32 0, %875
  %877 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %876
  %878 = load float, float* %877, align 4
  %879 = mul i32 %874, 2
  %880 = add i32 1, %879
  %881 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %880
  %882 = load float, float* %881, align 4
  %883 = call float @dx.op.tertiary.f32(i32 46, float %882, float -0.000000e+00, float %878)  ; FMad(a,b,c)
  %884 = fmul fast float %883, %799
  %885 = fmul fast float %882, %799
  %886 = fadd fast float %884, %286
  %887 = fadd fast float %885, %287
  %888 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %11, %dx.types.Handle %23, float %886, float %887, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %889 = extractvalue %dx.types.ResRet.f32 %888, 0
  %890 = extractvalue %dx.types.ResRet.f32 %888, 1
  %891 = extractvalue %dx.types.ResRet.f32 %888, 2
  %892 = extractvalue %dx.types.ResRet.f32 %888, 3
  %893 = getelementptr inbounds [4 x float], [4 x float]* %35, i32 0, i32 0
  store float %889, float* %893, align 4
  %894 = getelementptr inbounds [4 x float], [4 x float]* %35, i32 0, i32 1
  store float %890, float* %894, align 4
  %895 = getelementptr inbounds [4 x float], [4 x float]* %35, i32 0, i32 2
  store float %891, float* %895, align 4
  %896 = getelementptr inbounds [4 x float], [4 x float]* %35, i32 0, i32 3
  store float %892, float* %896, align 4
  %897 = fsub fast float %889, %801
  %898 = fcmp fast olt float %897, 0.000000e+00
  %899 = select i1 %898, float 0.000000e+00, float 1.000000e+00
  %900 = fadd fast float %899, %872
  %901 = fmul fast float %899, %897
  %902 = fadd fast float %901, %873
  br label %903

; <label>:903                                     ; preds = %903, %871
  %904 = phi i32 [ 1, %871 ], [ %915, %903 ]
  %905 = phi float [ %902, %871 ], [ %914, %903 ]
  %906 = phi float [ %900, %871 ], [ %912, %903 ]
  %907 = getelementptr [4 x float], [4 x float]* %35, i32 0, i32 %904
  %908 = load float, float* %907, align 4, !tbaa !67, !noalias !57
  %909 = fsub fast float %908, %801
  %910 = fcmp fast olt float %909, 0.000000e+00
  %911 = select i1 %910, float 0.000000e+00, float 1.000000e+00
  %912 = fadd fast float %911, %906
  %913 = fmul fast float %911, %909
  %914 = fadd fast float %913, %905
  %915 = add nuw nsw i32 %904, 1
  %916 = icmp eq i32 %915, 4
  br i1 %916, label %917, label %903, !llvm.loop !69

; <label>:917                                     ; preds = %903
  %918 = add nuw nsw i32 %874, 1
  %919 = icmp eq i32 %918, 8
  br i1 %919, label %920, label %871, !llvm.loop !71

; <label>:920                                     ; preds = %917
  %921 = fdiv fast float 1.000000e+00, %912
  %922 = fmul fast float %921, %914
  %923 = fdiv fast float 1.000000e+00, %801
  %924 = fmul fast float %922, %923
  %925 = call float @dx.op.unary.f32(i32 7, float %924)  ; Saturate(value)
  %926 = call float @dx.op.binary.f32(i32 35, float %925, float 0.000000e+00)  ; FMax(a,b)
  %927 = fmul fast float %912, 3.125000e-02
  %928 = call float @dx.op.unary.f32(i32 7, float %927)  ; Saturate(value)
  %929 = fmul fast float %928, 2.000000e+00
  %930 = fadd fast float %929, -1.000000e+00
  %931 = fcmp fast ogt float %930, 0.000000e+00
  %932 = fcmp fast olt float %930, 0.000000e+00
  %933 = zext i1 %931 to i32
  %934 = zext i1 %932 to i32
  %935 = sub nsw i32 %933, %934
  %936 = sitofp i32 %935 to float
  %937 = fmul fast float %936, %930
  %938 = fsub fast float 1.000000e+00, %937
  %939 = fmul fast float %938, %938
  %940 = fmul fast float %939, %938
  %941 = fsub fast float %938, %940
  %942 = fmul fast float %941, %926
  %943 = fsub fast float 1.000000e+00, %940
  %944 = fsub fast float %943, %942
  %945 = fmul fast float %936, 5.000000e-01
  %946 = fmul fast float %945, %944
  %947 = fsub fast float 5.000000e-01, %946
  br label %948

; <label>:948                                     ; preds = %920, %804, %790
  %949 = phi float [ 1.000000e+00, %790 ], [ %870, %804 ], [ %947, %920 ]
  %950 = fcmp fast ogt float %386, 0.000000e+00
  br i1 %950, label %951, label %1108, !dx.controlflow.hints !72

; <label>:951                                     ; preds = %948
  %952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %953 = extractvalue %dx.types.CBufRet.f32 %952, 1
  %954 = fadd fast float %953, %271
  %955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %956 = extractvalue %dx.types.CBufRet.f32 %955, 2
  %957 = extractvalue %dx.types.CBufRet.f32 %955, 3
  %958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %959 = extractvalue %dx.types.CBufRet.f32 %958, 1
  %960 = call float @dx.op.binary.f32(i32 35, float %954, float 0.000000e+00)  ; FMax(a,b)
  %961 = fadd fast float %960, 0x3F10000000000000
  %962 = fcmp fast oeq float %959, 0.000000e+00
  br i1 %962, label %964, label %963, !dx.controlflow.hints !66

; <label>:963                                     ; preds = %951
  br label %1031

; <label>:964                                     ; preds = %951
  %965 = extractvalue %dx.types.CBufRet.f32 %955, 1
  %966 = extractvalue %dx.types.CBufRet.f32 %955, 0
  %967 = fmul fast float %966, %278
  %968 = fmul fast float %965, %279
  %969 = fadd fast float %967, 5.000000e-01
  %970 = call float @dx.op.unary.f32(i32 27, float %969)  ; Round_ni(value)
  %971 = fadd fast float %968, 5.000000e-01
  %972 = call float @dx.op.unary.f32(i32 27, float %971)  ; Round_ni(value)
  %973 = fsub fast float %969, %970
  %974 = fsub fast float %971, %972
  %975 = fadd fast float %970, -5.000000e-01
  %976 = fadd fast float %972, -5.000000e-01
  %977 = fmul fast float %973, 2.000000e+00
  %978 = fsub fast float 3.000000e+00, %977
  %979 = fadd fast float %977, 1.000000e+00
  %980 = fsub fast float 2.000000e+00, %973
  %981 = bitcast float %978 to i32
  %982 = sub nsw i32 2129859010, %981
  %983 = bitcast i32 %982 to float
  %984 = fmul fast float %983, %980
  %985 = fadd fast float %984, -1.000000e+00
  %986 = bitcast float %979 to i32
  %987 = sub nsw i32 2129859010, %986
  %988 = bitcast i32 %987 to float
  %989 = fmul fast float %988, %973
  %990 = fadd fast float %989, 1.000000e+00
  %991 = fmul fast float %974, 2.000000e+00
  %992 = fsub fast float 3.000000e+00, %991
  %993 = fadd fast float %991, 1.000000e+00
  %994 = fsub fast float 2.000000e+00, %974
  %995 = bitcast float %992 to i32
  %996 = sub nsw i32 2129859010, %995
  %997 = bitcast i32 %996 to float
  %998 = fmul fast float %997, %994
  %999 = fadd fast float %998, -1.000000e+00
  %1000 = bitcast float %993 to i32
  %1001 = sub nsw i32 2129859010, %1000
  %1002 = bitcast i32 %1001 to float
  %1003 = fmul fast float %1002, %974
  %1004 = fadd fast float %1003, 1.000000e+00
  %1005 = fadd fast float %985, %975
  %1006 = fmul fast float %1005, %956
  %1007 = fadd fast float %999, %976
  %1008 = fmul fast float %1007, %957
  %1009 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %12, %dx.types.Handle %24, float %1006, float %1008, float undef, float undef, i32 0, i32 0, i32 undef, float %961)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1010 = extractvalue %dx.types.ResRet.f32 %1009, 0
  %1011 = fmul fast float %1010, %978
  %1012 = fadd fast float %990, %975
  %1013 = fmul fast float %1012, %956
  %1014 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %12, %dx.types.Handle %24, float %1013, float %1008, float undef, float undef, i32 0, i32 0, i32 undef, float %961)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1015 = extractvalue %dx.types.ResRet.f32 %1014, 0
  %1016 = fmul fast float %1015, %979
  %1017 = fadd fast float %1004, %976
  %1018 = fmul fast float %1017, %957
  %1019 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %12, %dx.types.Handle %24, float %1006, float %1018, float undef, float undef, i32 0, i32 0, i32 undef, float %961)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1020 = extractvalue %dx.types.ResRet.f32 %1019, 0
  %1021 = fmul fast float %1020, %978
  %1022 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %12, %dx.types.Handle %24, float %1013, float %1018, float undef, float undef, i32 0, i32 0, i32 undef, float %961)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1023 = extractvalue %dx.types.ResRet.f32 %1022, 0
  %1024 = fmul fast float %1023, %979
  %1025 = fadd fast float %1024, %1021
  %1026 = fmul fast float %1025, %993
  %1027 = fadd fast float %1016, %1011
  %1028 = fmul fast float %1027, %992
  %1029 = fadd fast float %1028, %1026
  %1030 = fmul fast float %1029, 6.250000e-02
  br label %1108

; <label>:1031                                    ; preds = %1077, %963
  %1032 = phi float [ %1072, %1077 ], [ 0.000000e+00, %963 ]
  %1033 = phi float [ %1074, %1077 ], [ 0.000000e+00, %963 ]
  %1034 = phi i32 [ %1078, %1077 ], [ 0, %963 ]
  %1035 = mul i32 %1034, 2
  %1036 = add i32 0, %1035
  %1037 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1036
  %1038 = load float, float* %1037, align 4
  %1039 = mul i32 %1034, 2
  %1040 = add i32 1, %1039
  %1041 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1040
  %1042 = load float, float* %1041, align 4
  %1043 = call float @dx.op.tertiary.f32(i32 46, float %1042, float -0.000000e+00, float %1038)  ; FMad(a,b,c)
  %1044 = fmul fast float %1043, %959
  %1045 = fmul fast float %1042, %959
  %1046 = fadd fast float %1044, %278
  %1047 = fadd fast float %1045, %279
  %1048 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %12, %dx.types.Handle %23, float %1046, float %1047, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1049 = extractvalue %dx.types.ResRet.f32 %1048, 0
  %1050 = extractvalue %dx.types.ResRet.f32 %1048, 1
  %1051 = extractvalue %dx.types.ResRet.f32 %1048, 2
  %1052 = extractvalue %dx.types.ResRet.f32 %1048, 3
  %1053 = getelementptr inbounds [4 x float], [4 x float]* %34, i32 0, i32 0
  store float %1049, float* %1053, align 4
  %1054 = getelementptr inbounds [4 x float], [4 x float]* %34, i32 0, i32 1
  store float %1050, float* %1054, align 4
  %1055 = getelementptr inbounds [4 x float], [4 x float]* %34, i32 0, i32 2
  store float %1051, float* %1055, align 4
  %1056 = getelementptr inbounds [4 x float], [4 x float]* %34, i32 0, i32 3
  store float %1052, float* %1056, align 4
  %1057 = fsub fast float %1049, %961
  %1058 = fcmp fast olt float %1057, 0.000000e+00
  %1059 = select i1 %1058, float 0.000000e+00, float 1.000000e+00
  %1060 = fadd fast float %1059, %1032
  %1061 = fmul fast float %1059, %1057
  %1062 = fadd fast float %1061, %1033
  br label %1063

; <label>:1063                                    ; preds = %1063, %1031
  %1064 = phi i32 [ 1, %1031 ], [ %1075, %1063 ]
  %1065 = phi float [ %1062, %1031 ], [ %1074, %1063 ]
  %1066 = phi float [ %1060, %1031 ], [ %1072, %1063 ]
  %1067 = getelementptr [4 x float], [4 x float]* %34, i32 0, i32 %1064
  %1068 = load float, float* %1067, align 4, !tbaa !67, !noalias !57
  %1069 = fsub fast float %1068, %961
  %1070 = fcmp fast olt float %1069, 0.000000e+00
  %1071 = select i1 %1070, float 0.000000e+00, float 1.000000e+00
  %1072 = fadd fast float %1071, %1066
  %1073 = fmul fast float %1071, %1069
  %1074 = fadd fast float %1073, %1065
  %1075 = add nuw nsw i32 %1064, 1
  %1076 = icmp eq i32 %1075, 4
  br i1 %1076, label %1077, label %1063, !llvm.loop !69

; <label>:1077                                    ; preds = %1063
  %1078 = add nuw nsw i32 %1034, 1
  %1079 = icmp eq i32 %1078, 8
  br i1 %1079, label %1080, label %1031, !llvm.loop !71

; <label>:1080                                    ; preds = %1077
  %1081 = fdiv fast float 1.000000e+00, %1072
  %1082 = fmul fast float %1081, %1074
  %1083 = fdiv fast float 1.000000e+00, %961
  %1084 = fmul fast float %1082, %1083
  %1085 = call float @dx.op.unary.f32(i32 7, float %1084)  ; Saturate(value)
  %1086 = call float @dx.op.binary.f32(i32 35, float %1085, float 0.000000e+00)  ; FMax(a,b)
  %1087 = fmul fast float %1072, 3.125000e-02
  %1088 = call float @dx.op.unary.f32(i32 7, float %1087)  ; Saturate(value)
  %1089 = fmul fast float %1088, 2.000000e+00
  %1090 = fadd fast float %1089, -1.000000e+00
  %1091 = fcmp fast ogt float %1090, 0.000000e+00
  %1092 = fcmp fast olt float %1090, 0.000000e+00
  %1093 = zext i1 %1091 to i32
  %1094 = zext i1 %1092 to i32
  %1095 = sub nsw i32 %1093, %1094
  %1096 = sitofp i32 %1095 to float
  %1097 = fmul fast float %1096, %1090
  %1098 = fsub fast float 1.000000e+00, %1097
  %1099 = fmul fast float %1098, %1098
  %1100 = fmul fast float %1099, %1098
  %1101 = fsub fast float %1098, %1100
  %1102 = fmul fast float %1101, %1086
  %1103 = fsub fast float 1.000000e+00, %1100
  %1104 = fsub fast float %1103, %1102
  %1105 = fmul fast float %1096, 5.000000e-01
  %1106 = fmul fast float %1105, %1104
  %1107 = fsub fast float 5.000000e-01, %1106
  br label %1108

; <label>:1108                                    ; preds = %1080, %964, %948
  %1109 = phi float [ 1.000000e+00, %948 ], [ %1030, %964 ], [ %1107, %1080 ]
  %1110 = fcmp fast ogt float %385, 0.000000e+00
  br i1 %1110, label %1111, label %1268, !dx.controlflow.hints !73

; <label>:1111                                    ; preds = %1108
  %1112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %1113 = extractvalue %dx.types.CBufRet.f32 %1112, 0
  %1114 = fadd fast float %1113, %271
  %1115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %1116 = extractvalue %dx.types.CBufRet.f32 %1115, 2
  %1117 = extractvalue %dx.types.CBufRet.f32 %1115, 3
  %1118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %1119 = extractvalue %dx.types.CBufRet.f32 %1118, 0
  %1120 = call float @dx.op.binary.f32(i32 35, float %1114, float 0.000000e+00)  ; FMax(a,b)
  %1121 = fadd fast float %1120, 0x3F10000000000000
  %1122 = fcmp fast oeq float %1119, 0.000000e+00
  br i1 %1122, label %1124, label %1123, !dx.controlflow.hints !66

; <label>:1123                                    ; preds = %1111
  br label %1191

; <label>:1124                                    ; preds = %1111
  %1125 = extractvalue %dx.types.CBufRet.f32 %1115, 1
  %1126 = extractvalue %dx.types.CBufRet.f32 %1115, 0
  %1127 = fmul fast float %1126, %263
  %1128 = fmul fast float %1125, %267
  %1129 = fadd fast float %1127, 5.000000e-01
  %1130 = call float @dx.op.unary.f32(i32 27, float %1129)  ; Round_ni(value)
  %1131 = fadd fast float %1128, 5.000000e-01
  %1132 = call float @dx.op.unary.f32(i32 27, float %1131)  ; Round_ni(value)
  %1133 = fsub fast float %1129, %1130
  %1134 = fsub fast float %1131, %1132
  %1135 = fadd fast float %1130, -5.000000e-01
  %1136 = fadd fast float %1132, -5.000000e-01
  %1137 = fmul fast float %1133, 2.000000e+00
  %1138 = fsub fast float 3.000000e+00, %1137
  %1139 = fadd fast float %1137, 1.000000e+00
  %1140 = fsub fast float 2.000000e+00, %1133
  %1141 = bitcast float %1138 to i32
  %1142 = sub nsw i32 2129859010, %1141
  %1143 = bitcast i32 %1142 to float
  %1144 = fmul fast float %1143, %1140
  %1145 = fadd fast float %1144, -1.000000e+00
  %1146 = bitcast float %1139 to i32
  %1147 = sub nsw i32 2129859010, %1146
  %1148 = bitcast i32 %1147 to float
  %1149 = fmul fast float %1148, %1133
  %1150 = fadd fast float %1149, 1.000000e+00
  %1151 = fmul fast float %1134, 2.000000e+00
  %1152 = fsub fast float 3.000000e+00, %1151
  %1153 = fadd fast float %1151, 1.000000e+00
  %1154 = fsub fast float 2.000000e+00, %1134
  %1155 = bitcast float %1152 to i32
  %1156 = sub nsw i32 2129859010, %1155
  %1157 = bitcast i32 %1156 to float
  %1158 = fmul fast float %1157, %1154
  %1159 = fadd fast float %1158, -1.000000e+00
  %1160 = bitcast float %1153 to i32
  %1161 = sub nsw i32 2129859010, %1160
  %1162 = bitcast i32 %1161 to float
  %1163 = fmul fast float %1162, %1134
  %1164 = fadd fast float %1163, 1.000000e+00
  %1165 = fadd fast float %1145, %1135
  %1166 = fmul fast float %1165, %1116
  %1167 = fadd fast float %1159, %1136
  %1168 = fmul fast float %1167, %1117
  %1169 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %13, %dx.types.Handle %24, float %1166, float %1168, float undef, float undef, i32 0, i32 0, i32 undef, float %1121)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1170 = extractvalue %dx.types.ResRet.f32 %1169, 0
  %1171 = fmul fast float %1170, %1138
  %1172 = fadd fast float %1150, %1135
  %1173 = fmul fast float %1172, %1116
  %1174 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %13, %dx.types.Handle %24, float %1173, float %1168, float undef, float undef, i32 0, i32 0, i32 undef, float %1121)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1175 = extractvalue %dx.types.ResRet.f32 %1174, 0
  %1176 = fmul fast float %1175, %1139
  %1177 = fadd fast float %1164, %1136
  %1178 = fmul fast float %1177, %1117
  %1179 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %13, %dx.types.Handle %24, float %1166, float %1178, float undef, float undef, i32 0, i32 0, i32 undef, float %1121)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1180 = extractvalue %dx.types.ResRet.f32 %1179, 0
  %1181 = fmul fast float %1180, %1138
  %1182 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %13, %dx.types.Handle %24, float %1173, float %1178, float undef, float undef, i32 0, i32 0, i32 undef, float %1121)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1183 = extractvalue %dx.types.ResRet.f32 %1182, 0
  %1184 = fmul fast float %1183, %1139
  %1185 = fadd fast float %1184, %1181
  %1186 = fmul fast float %1185, %1153
  %1187 = fadd fast float %1176, %1171
  %1188 = fmul fast float %1187, %1152
  %1189 = fadd fast float %1188, %1186
  %1190 = fmul fast float %1189, 6.250000e-02
  br label %1268

; <label>:1191                                    ; preds = %1237, %1123
  %1192 = phi float [ %1232, %1237 ], [ 0.000000e+00, %1123 ]
  %1193 = phi float [ %1234, %1237 ], [ 0.000000e+00, %1123 ]
  %1194 = phi i32 [ %1238, %1237 ], [ 0, %1123 ]
  %1195 = mul i32 %1194, 2
  %1196 = add i32 0, %1195
  %1197 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1196
  %1198 = load float, float* %1197, align 4
  %1199 = mul i32 %1194, 2
  %1200 = add i32 1, %1199
  %1201 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1200
  %1202 = load float, float* %1201, align 4
  %1203 = call float @dx.op.tertiary.f32(i32 46, float %1202, float -0.000000e+00, float %1198)  ; FMad(a,b,c)
  %1204 = fmul fast float %1203, %1119
  %1205 = fmul fast float %1202, %1119
  %1206 = fadd fast float %1204, %263
  %1207 = fadd fast float %1205, %267
  %1208 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %13, %dx.types.Handle %23, float %1206, float %1207, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1209 = extractvalue %dx.types.ResRet.f32 %1208, 0
  %1210 = extractvalue %dx.types.ResRet.f32 %1208, 1
  %1211 = extractvalue %dx.types.ResRet.f32 %1208, 2
  %1212 = extractvalue %dx.types.ResRet.f32 %1208, 3
  %1213 = getelementptr inbounds [4 x float], [4 x float]* %33, i32 0, i32 0
  store float %1209, float* %1213, align 4
  %1214 = getelementptr inbounds [4 x float], [4 x float]* %33, i32 0, i32 1
  store float %1210, float* %1214, align 4
  %1215 = getelementptr inbounds [4 x float], [4 x float]* %33, i32 0, i32 2
  store float %1211, float* %1215, align 4
  %1216 = getelementptr inbounds [4 x float], [4 x float]* %33, i32 0, i32 3
  store float %1212, float* %1216, align 4
  %1217 = fsub fast float %1209, %1121
  %1218 = fcmp fast olt float %1217, 0.000000e+00
  %1219 = select i1 %1218, float 0.000000e+00, float 1.000000e+00
  %1220 = fadd fast float %1219, %1192
  %1221 = fmul fast float %1219, %1217
  %1222 = fadd fast float %1221, %1193
  br label %1223

; <label>:1223                                    ; preds = %1223, %1191
  %1224 = phi i32 [ 1, %1191 ], [ %1235, %1223 ]
  %1225 = phi float [ %1222, %1191 ], [ %1234, %1223 ]
  %1226 = phi float [ %1220, %1191 ], [ %1232, %1223 ]
  %1227 = getelementptr [4 x float], [4 x float]* %33, i32 0, i32 %1224
  %1228 = load float, float* %1227, align 4, !tbaa !67, !noalias !57
  %1229 = fsub fast float %1228, %1121
  %1230 = fcmp fast olt float %1229, 0.000000e+00
  %1231 = select i1 %1230, float 0.000000e+00, float 1.000000e+00
  %1232 = fadd fast float %1231, %1226
  %1233 = fmul fast float %1231, %1229
  %1234 = fadd fast float %1233, %1225
  %1235 = add nuw nsw i32 %1224, 1
  %1236 = icmp eq i32 %1235, 4
  br i1 %1236, label %1237, label %1223, !llvm.loop !69

; <label>:1237                                    ; preds = %1223
  %1238 = add nuw nsw i32 %1194, 1
  %1239 = icmp eq i32 %1238, 8
  br i1 %1239, label %1240, label %1191, !llvm.loop !71

; <label>:1240                                    ; preds = %1237
  %1241 = fdiv fast float 1.000000e+00, %1232
  %1242 = fmul fast float %1241, %1234
  %1243 = fdiv fast float 1.000000e+00, %1121
  %1244 = fmul fast float %1242, %1243
  %1245 = call float @dx.op.unary.f32(i32 7, float %1244)  ; Saturate(value)
  %1246 = call float @dx.op.binary.f32(i32 35, float %1245, float 0.000000e+00)  ; FMax(a,b)
  %1247 = fmul fast float %1232, 3.125000e-02
  %1248 = call float @dx.op.unary.f32(i32 7, float %1247)  ; Saturate(value)
  %1249 = fmul fast float %1248, 2.000000e+00
  %1250 = fadd fast float %1249, -1.000000e+00
  %1251 = fcmp fast ogt float %1250, 0.000000e+00
  %1252 = fcmp fast olt float %1250, 0.000000e+00
  %1253 = zext i1 %1251 to i32
  %1254 = zext i1 %1252 to i32
  %1255 = sub nsw i32 %1253, %1254
  %1256 = sitofp i32 %1255 to float
  %1257 = fmul fast float %1256, %1250
  %1258 = fsub fast float 1.000000e+00, %1257
  %1259 = fmul fast float %1258, %1258
  %1260 = fmul fast float %1259, %1258
  %1261 = fsub fast float %1258, %1260
  %1262 = fmul fast float %1261, %1246
  %1263 = fsub fast float 1.000000e+00, %1260
  %1264 = fsub fast float %1263, %1262
  %1265 = fmul fast float %1256, 5.000000e-01
  %1266 = fmul fast float %1265, %1264
  %1267 = fsub fast float 5.000000e-01, %1266
  br label %1268

; <label>:1268                                    ; preds = %1240, %1124, %1108
  %1269 = phi float [ 1.000000e+00, %1108 ], [ %1190, %1124 ], [ %1267, %1240 ]
  %1270 = fsub fast float %949, %791
  %1271 = fmul fast float %1270, %326
  %1272 = fadd fast float %1271, %791
  %1273 = fsub fast float %1109, %1272
  %1274 = fmul fast float %1273, %357
  %1275 = fadd fast float %1274, %1272
  %1276 = fsub fast float %1269, %1275
  %1277 = fmul fast float %1276, %385
  %1278 = fadd fast float %1277, %1275
  br label %1279

; <label>:1279                                    ; preds = %1268, %235
  %1280 = phi float [ %1278, %1268 ], [ 1.000000e+00, %235 ]
  %1281 = call float @dx.op.binary.f32(i32 36, float %1280, float %1280)  ; FMin(a,b)
  %1282 = call float @dx.op.binary.f32(i32 36, float %1280, float %1281)  ; FMin(a,b)
  %1283 = fcmp fast ogt float %1282, 0.000000e+00
  br i1 %1283, label %1284, label %1449, !dx.controlflow.hints !74

; <label>:1284                                    ; preds = %1279
  %1285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %1286 = extractvalue %dx.types.CBufRet.f32 %1285, 0
  %1287 = extractvalue %dx.types.CBufRet.f32 %1285, 1
  %1288 = extractvalue %dx.types.CBufRet.f32 %1285, 2
  %1289 = extractvalue %dx.types.CBufRet.f32 %1285, 3
  %1290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %1291 = extractvalue %dx.types.CBufRet.f32 %1290, 0
  %1292 = extractvalue %dx.types.CBufRet.f32 %1290, 1
  %1293 = extractvalue %dx.types.CBufRet.f32 %1290, 2
  %1294 = extractvalue %dx.types.CBufRet.f32 %1290, 3
  %1295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %1296 = extractvalue %dx.types.CBufRet.f32 %1295, 0
  %1297 = extractvalue %dx.types.CBufRet.f32 %1295, 1
  %1298 = extractvalue %dx.types.CBufRet.f32 %1295, 2
  %1299 = extractvalue %dx.types.CBufRet.f32 %1295, 3
  %1300 = fmul fast float %1286, %226
  %1301 = call float @dx.op.tertiary.f32(i32 46, float %228, float %1287, float %1300)  ; FMad(a,b,c)
  %1302 = call float @dx.op.tertiary.f32(i32 46, float %230, float %1288, float %1301)  ; FMad(a,b,c)
  %1303 = fadd fast float %1302, %1289
  %1304 = fmul fast float %1291, %226
  %1305 = call float @dx.op.tertiary.f32(i32 46, float %228, float %1292, float %1304)  ; FMad(a,b,c)
  %1306 = call float @dx.op.tertiary.f32(i32 46, float %230, float %1293, float %1305)  ; FMad(a,b,c)
  %1307 = fadd fast float %1306, %1294
  %1308 = fmul fast float %1296, %226
  %1309 = call float @dx.op.tertiary.f32(i32 46, float %228, float %1297, float %1308)  ; FMad(a,b,c)
  %1310 = call float @dx.op.tertiary.f32(i32 46, float %230, float %1298, float %1309)  ; FMad(a,b,c)
  %1311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %1312 = extractvalue %dx.types.CBufRet.f32 %1311, 0
  %1313 = extractvalue %dx.types.CBufRet.f32 %1311, 1
  %1314 = extractvalue %dx.types.CBufRet.f32 %1311, 3
  %1315 = fmul fast float %1314, %1303
  %1316 = fmul fast float %1314, %1307
  %1317 = fadd fast float %1315, %1312
  %1318 = fadd fast float %1316, %1313
  %1319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %1320 = extractvalue %dx.types.CBufRet.f32 %1319, 0
  %1321 = extractvalue %dx.types.CBufRet.f32 %1319, 1
  %1322 = fsub fast float %1317, %1320
  %1323 = fsub fast float %1318, %1321
  %1324 = fcmp fast olt float %1322, 0.000000e+00
  %1325 = fcmp fast olt float %1323, 0.000000e+00
  %1326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %1327 = extractvalue %dx.types.CBufRet.f32 %1326, 0
  %1328 = extractvalue %dx.types.CBufRet.f32 %1326, 1
  %1329 = extractvalue %dx.types.CBufRet.f32 %1326, 2
  %1330 = extractvalue %dx.types.CBufRet.f32 %1326, 3
  %1331 = select i1 %1324, float %1327, float %1329
  %1332 = select i1 %1325, float %1328, float %1330
  %1333 = fmul fast float %1331, %1322
  %1334 = fmul fast float %1332, %1323
  %1335 = call float @dx.op.unary.f32(i32 6, float %1333)  ; FAbs(value)
  %1336 = call float @dx.op.unary.f32(i32 6, float %1334)  ; FAbs(value)
  %1337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %1338 = extractvalue %dx.types.CBufRet.f32 %1337, 0
  %1339 = call float @dx.op.binary.f32(i32 35, float %1335, float %1336)  ; FMax(a,b)
  %1340 = fsub fast float %1338, %1339
  %1341 = call float @dx.op.unary.f32(i32 7, float %1340)  ; Saturate(value)
  %1342 = fcmp fast ogt float %1341, 0.000000e+00
  br i1 %1342, label %1343, label %1384, !dx.controlflow.hints !75

; <label>:1343                                    ; preds = %1284
  %1344 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %22, float %1317, float %1318, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1345 = extractvalue %dx.types.ResRet.f32 %1344, 1
  %1346 = fcmp fast ogt float %1345, 0.000000e+00
  br i1 %1346, label %1347, label %1380, !dx.controlflow.hints !76

; <label>:1347                                    ; preds = %1343
  %1348 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %22, float %1317, float %1318, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1349 = extractvalue %dx.types.ResRet.f32 %1348, 0
  %1350 = extractvalue %dx.types.ResRet.f32 %1348, 1
  %1351 = extractvalue %dx.types.ResRet.f32 %1348, 2
  %1352 = extractvalue %dx.types.ResRet.f32 %1348, 3
  %1353 = fsub fast float 1.000000e+00, %1299
  %1354 = fsub fast float %1353, %1310
  %1355 = fmul fast float %1354, 0x400921FB60000000
  %1356 = fadd fast float %1355, 0x3FF921FB60000000
  %1357 = call float @dx.op.unary.f32(i32 13, float %1356)  ; Sin(value)
  %1358 = fadd fast float %1357, -1.000000e+00
  %1359 = fmul fast float %1358, 0x3FD45F3060000000
  %1360 = fmul fast float %1354, 0x401921FB60000000
  %1361 = fadd fast float %1360, 0x400921FB60000000
  %1362 = call float @dx.op.unary.f32(i32 13, float %1361)  ; Sin(value)
  %1363 = fadd fast float %1362, 0x3E7777A5C0000000
  %1364 = fmul fast float %1363, 0x3FC45F3060000000
  %1365 = fmul fast float %1354, 0x4022D97C80000000
  %1366 = fadd fast float %1365, 0x4012D97C80000000
  %1367 = call float @dx.op.unary.f32(i32 13, float %1366)  ; Sin(value)
  %1368 = fadd fast float %1367, 1.000000e+00
  %1369 = fmul fast float %1368, 0x3FBB2995E0000000
  %1370 = fmul fast float %1354, 0x402921FB60000000
  %1371 = fadd fast float %1370, 0x401921FB60000000
  %1372 = call float @dx.op.unary.f32(i32 13, float %1371)  ; Sin(value)
  %1373 = fadd fast float %1372, 0xBE8777A5C0000000
  %1374 = fmul fast float %1373, 0x3FB45F3060000000
  %1375 = call float @dx.op.dot4.f32(i32 56, float %1349, float %1350, float %1351, float %1352, float %1359, float %1364, float %1369, float %1374)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1376 = fmul fast float %1375, 0xBFF7154760000000
  %1377 = call float @dx.op.unary.f32(i32 21, float %1376)  ; Exp(value)
  %1378 = call float @dx.op.unary.f32(i32 7, float %1377)  ; Saturate(value)
  %1379 = fadd float %1378, -1.000000e+00
  br label %1380

; <label>:1380                                    ; preds = %1347, %1343
  %1381 = phi float [ %1379, %1347 ], [ 0.000000e+00, %1343 ]
  %1382 = fmul fast float %1381, %1341
  %1383 = fadd fast float %1382, 1.000000e+00
  br label %1384

; <label>:1384                                    ; preds = %1380, %1284
  %1385 = phi float [ %1383, %1380 ], [ 1.000000e+00, %1284 ]
  %1386 = fmul fast float %1385, %1280
  %1387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1388 = extractvalue %dx.types.CBufRet.f32 %1387, 0
  %1389 = extractvalue %dx.types.CBufRet.f32 %1387, 1
  %1390 = extractvalue %dx.types.CBufRet.f32 %1387, 2
  %1391 = fadd fast float %1388, %226
  %1392 = fadd fast float %1389, %228
  %1393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %1394 = extractvalue %dx.types.CBufRet.f32 %1393, 1
  %1395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1396 = extractvalue %dx.types.CBufRet.f32 %1395, 0
  %1397 = extractvalue %dx.types.CBufRet.f32 %1395, 1
  %1398 = extractvalue %dx.types.CBufRet.f32 %1395, 2
  %1399 = fsub fast float -0.000000e+00, %1391
  %1400 = fsub fast float -0.000000e+00, %1392
  %1401 = fsub fast float %231, %1390
  %1402 = fadd fast float %1401, %1394
  %1403 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1399, float %1400, float %1402)  ; Dot3(ax,ay,az,bx,by,bz)
  %1404 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1396, float %1397, float %1398)  ; Dot3(ax,ay,az,bx,by,bz)
  %1405 = fdiv fast float 1.000000e+00, %1404
  %1406 = fmul fast float %1405, %1403
  %1407 = fmul fast float %1396, %1406
  %1408 = fmul fast float %1397, %1406
  %1409 = fadd fast float %1407, %1391
  %1410 = fadd fast float %1408, %1392
  %1411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %1412 = extractvalue %dx.types.CBufRet.f32 %1411, 0
  %1413 = extractvalue %dx.types.CBufRet.f32 %1411, 1
  %1414 = fsub fast float %1409, %1412
  %1415 = fsub fast float %1410, %1413
  %1416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %1417 = extractvalue %dx.types.CBufRet.f32 %1416, 2
  %1418 = extractvalue %dx.types.CBufRet.f32 %1416, 3
  %1419 = fmul fast float %1414, %1417
  %1420 = fmul fast float %1415, %1418
  %1421 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %1422 = extractvalue %dx.types.CBufRet.i32 %1421, 3
  %1423 = icmp eq i32 %1422, 0
  br i1 %1423, label %1429, label %1424, !dx.controlflow.hints !77

; <label>:1424                                    ; preds = %1384
  %1425 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %21, float %1419, float %1420, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1426 = extractvalue %dx.types.ResRet.f32 %1425, 0
  %1427 = extractvalue %dx.types.ResRet.f32 %1425, 1
  %1428 = extractvalue %dx.types.ResRet.f32 %1425, 2
  br label %1434

; <label>:1429                                    ; preds = %1384
  %1430 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %22, float %1419, float %1420, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1431 = extractvalue %dx.types.ResRet.f32 %1430, 0
  %1432 = extractvalue %dx.types.ResRet.f32 %1430, 1
  %1433 = extractvalue %dx.types.ResRet.f32 %1430, 2
  br label %1434

; <label>:1434                                    ; preds = %1429, %1424
  %1435 = phi float [ %1426, %1424 ], [ %1431, %1429 ]
  %1436 = phi float [ %1427, %1424 ], [ %1432, %1429 ]
  %1437 = phi float [ %1428, %1424 ], [ %1433, %1429 ]
  %1438 = extractvalue %dx.types.CBufRet.f32 %1393, 2
  %1439 = fmul fast float %1438, %1435
  %1440 = extractvalue %dx.types.CBufRet.f32 %1393, 0
  %1441 = fsub fast float %1406, %1440
  %1442 = fsub fast float %1441, %1439
  %1443 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1442)  ; FMax(a,b)
  %1444 = fmul fast float %1443, %1436
  %1445 = call float @dx.op.binary.f32(i32 36, float %1437, float %1444)  ; FMin(a,b)
  %1446 = fmul fast float %1445, 0xBFF7154760000000
  %1447 = call float @dx.op.unary.f32(i32 21, float %1446)  ; Exp(value)
  %1448 = fmul fast float %1386, %1447
  br label %1449

; <label>:1449                                    ; preds = %1434, %1279
  %1450 = phi float [ %1448, %1434 ], [ %1280, %1279 ]
  %1451 = call float @dx.op.binary.f32(i32 36, float %1450, float %1450)  ; FMin(a,b)
  %1452 = call float @dx.op.binary.f32(i32 36, float %1450, float %1451)  ; FMin(a,b)
  %1453 = fcmp fast ogt float %1452, 0.000000e+00
  br i1 %1453, label %1454, label %1469, !dx.controlflow.hints !78

; <label>:1454                                    ; preds = %1449
  %1455 = call float @dx.op.dot3.f32(i32 55, float %172, float %173, float %174, float %236, float %237, float %238)  ; Dot3(ax,ay,az,bx,by,bz)
  %1456 = call float @dx.op.unary.f32(i32 7, float %1455)  ; Saturate(value)
  %1457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1458 = extractvalue %dx.types.CBufRet.f32 %1457, 1
  %1459 = fsub fast float 1.000000e+00, %1450
  %1460 = fmul fast float %1458, %1459
  %1461 = fadd fast float %1460, %1450
  %1462 = call float @dx.op.binary.f32(i32 36, float %1461, float %127)  ; FMin(a,b)
  %1463 = fmul fast float %1462, %1456
  %1464 = extractvalue %dx.types.CBufRet.f32 %1457, 0
  %1465 = fmul fast float %1463, %1464
  %1466 = fmul fast float %1465, %240
  %1467 = fmul fast float %1465, %241
  %1468 = fmul fast float %1465, %242
  br label %1469

; <label>:1469                                    ; preds = %1454, %1449, %0
  %1470 = phi float [ %1466, %1454 ], [ 0.000000e+00, %0 ], [ 0.000000e+00, %1449 ]
  %1471 = phi float [ %1467, %1454 ], [ 0.000000e+00, %0 ], [ 0.000000e+00, %1449 ]
  %1472 = phi float [ %1468, %1454 ], [ 0.000000e+00, %0 ], [ 0.000000e+00, %1449 ]
  %1473 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1474 = extractvalue %dx.types.CBufRet.i32 %1473, 0
  %1475 = icmp eq i32 %1474, 0
  br i1 %1475, label %1800, label %1476, !dx.controlflow.hints !79

; <label>:1476                                    ; preds = %1469
  %1477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1478 = extractvalue %dx.types.CBufRet.f32 %1477, 0
  %1479 = extractvalue %dx.types.CBufRet.f32 %1477, 1
  %1480 = extractvalue %dx.types.CBufRet.f32 %1477, 2
  %1481 = fadd fast float %1478, %226
  %1482 = fadd fast float %1479, %228
  %1483 = fadd fast float %1480, %230
  %1484 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 0
  store float %1481, float* %1484, align 4
  %1485 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 1
  store float %1482, float* %1485, align 4
  %1486 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 2
  store float %1483, float* %1486, align 4
  br label %1487

; <label>:1487                                    ; preds = %1487, %1476
  %1488 = phi i32 [ 0, %1476 ], [ %1502, %1487 ]
  %1489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1488, i32 0)  ; BufferLoad(srv,index,wot)
  %1490 = extractvalue %dx.types.ResRet.i32 %1489, 0
  %1491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1488, i32 4)  ; BufferLoad(srv,index,wot)
  %1492 = extractvalue %dx.types.ResRet.i32 %1491, 0
  %1493 = lshr i32 %1490, 30
  %1494 = and i32 %1490, 1048575
  %1495 = uitofp i32 %1494 to float
  %1496 = fadd fast float %1495, -5.242880e+05
  %1497 = and i32 %1492, 65535
  %1498 = lshr i32 %1492, 16
  %1499 = getelementptr [3 x float], [3 x float]* %32, i32 0, i32 %1493
  %1500 = load float, float* %1499, align 4, !tbaa !67, !noalias !80
  %1501 = fcmp fast olt float %1500, %1496
  %1502 = select i1 %1501, i32 %1497, i32 %1498
  %1503 = and i32 %1502, 32768
  %1504 = icmp eq i32 %1503, 0
  br i1 %1504, label %1487, label %1505

; <label>:1505                                    ; preds = %1487
  %1506 = and i32 %1502, 32767
  %1507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1506, i32 undef)  ; BufferLoad(srv,index,wot)
  %1508 = extractvalue %dx.types.ResRet.i32 %1507, 0
  %1509 = lshr i32 %1508, 22
  br label %1510

; <label>:1510                                    ; preds = %1510, %1505
  %1511 = phi i32 [ 0, %1505 ], [ %1527, %1510 ]
  %1512 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1511, i32 0)  ; BufferLoad(srv,index,wot)
  %1513 = extractvalue %dx.types.ResRet.i32 %1512, 0
  %1514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1511, i32 4)  ; BufferLoad(srv,index,wot)
  %1515 = extractvalue %dx.types.ResRet.i32 %1514, 0
  %1516 = lshr i32 %1513, 30
  %1517 = and i32 %1513, 1048575
  %1518 = uitofp i32 %1517 to float
  %1519 = fadd fast float %1518, -5.242880e+05
  %1520 = and i32 %1515, 65535
  %1521 = lshr i32 %1515, 16
  %1522 = icmp ne i32 %1516, 3
  %1523 = getelementptr [3 x float], [3 x float]* %32, i32 0, i32 %1516
  %1524 = load float, float* %1523, align 4, !tbaa !67, !noalias !80
  %1525 = fcmp fast olt float %1524, %1519
  %1526 = select i1 %1525, i32 %1520, i32 %1521
  %1527 = select i1 %1522, i32 %1526, i32 %1515
  %1528 = icmp eq i32 %1516, 3
  br i1 %1528, label %1529, label %1510

; <label>:1529                                    ; preds = %1510
  %1530 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1527)  ; Countbits(value)
  %1531 = add i32 %1530, %1509
  %1532 = icmp eq i32 %1531, 0
  br i1 %1532, label %1800, label %1533

; <label>:1533                                    ; preds = %1529
  %1534 = and i32 %1508, 4194303
  br label %1535

; <label>:1535                                    ; preds = %1793, %1533
  %1536 = phi float [ %1794, %1793 ], [ %1470, %1533 ]
  %1537 = phi float [ %1795, %1793 ], [ %1471, %1533 ]
  %1538 = phi float [ %1796, %1793 ], [ %1472, %1533 ]
  %1539 = phi i32 [ %1797, %1793 ], [ 0, %1533 ]
  %1540 = phi i32 [ %1542, %1793 ], [ %1534, %1533 ]
  %1541 = phi i32 [ %1558, %1793 ], [ %1527, %1533 ]
  %1542 = add i32 %1540, 1
  %1543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %1540, i32 undef)  ; BufferLoad(srv,index,wot)
  %1544 = extractvalue %dx.types.ResRet.i32 %1543, 0
  %1545 = icmp ult i32 %1539, %1509
  br i1 %1545, label %1557, label %1546, !dx.controlflow.hints !81

; <label>:1546                                    ; preds = %1535
  %1547 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1541)  ; FirstbitLo(value)
  %1548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 22)  ; CBufferLoadLegacy(handle,regIndex)
  %1549 = extractvalue %dx.types.CBufRet.f32 %1548, 0
  %1550 = uitofp i32 %1547 to float
  %1551 = fadd fast float %1549, %1550
  %1552 = fptosi float %1551 to i32
  %1553 = and i32 %1547, 31
  %1554 = shl i32 1, %1553
  %1555 = xor i32 %1554, -1
  %1556 = and i32 %1541, %1555
  br label %1557

; <label>:1557                                    ; preds = %1546, %1535
  %1558 = phi i32 [ %1556, %1546 ], [ %1541, %1535 ]
  %1559 = phi i32 [ %1552, %1546 ], [ %1544, %1535 ]
  %1560 = mul i32 %1559, 112
  %1561 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1560, i32 undef)  ; BufferLoad(srv,index,wot)
  %1562 = extractvalue %dx.types.ResRet.f32 %1561, 0
  %1563 = extractvalue %dx.types.ResRet.f32 %1561, 1
  %1564 = extractvalue %dx.types.ResRet.f32 %1561, 2
  %1565 = or i32 %1560, 12
  %1566 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1565, i32 undef)  ; BufferLoad(srv,index,wot)
  %1567 = extractvalue %dx.types.ResRet.f32 %1566, 0
  %1568 = add i32 %1560, 16
  %1569 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1568, i32 undef)  ; BufferLoad(srv,index,wot)
  %1570 = extractvalue %dx.types.ResRet.f32 %1569, 0
  %1571 = extractvalue %dx.types.ResRet.f32 %1569, 1
  %1572 = extractvalue %dx.types.ResRet.f32 %1569, 2
  %1573 = add i32 %1560, 28
  %1574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1573, i32 undef)  ; BufferLoad(srv,index,wot)
  %1575 = extractvalue %dx.types.ResRet.i32 %1574, 0
  %1576 = add i32 %1560, 32
  %1577 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1576, i32 undef)  ; BufferLoad(srv,index,wot)
  %1578 = extractvalue %dx.types.ResRet.f32 %1577, 0
  %1579 = extractvalue %dx.types.ResRet.f32 %1577, 1
  %1580 = extractvalue %dx.types.ResRet.f32 %1577, 2
  %1581 = add i32 %1560, 44
  %1582 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1581, i32 undef)  ; BufferLoad(srv,index,wot)
  %1583 = extractvalue %dx.types.ResRet.f32 %1582, 0
  %1584 = add i32 %1560, 48
  %1585 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1584, i32 undef)  ; BufferLoad(srv,index,wot)
  %1586 = extractvalue %dx.types.ResRet.f32 %1585, 0
  %1587 = extractvalue %dx.types.ResRet.f32 %1585, 1
  %1588 = extractvalue %dx.types.ResRet.f32 %1585, 2
  %1589 = extractvalue %dx.types.ResRet.f32 %1585, 3
  %1590 = add i32 %1560, 64
  %1591 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1590, i32 undef)  ; BufferLoad(srv,index,wot)
  %1592 = extractvalue %dx.types.ResRet.f32 %1591, 0
  %1593 = extractvalue %dx.types.ResRet.f32 %1591, 1
  %1594 = extractvalue %dx.types.ResRet.f32 %1591, 2
  %1595 = extractvalue %dx.types.ResRet.f32 %1591, 3
  %1596 = add i32 %1560, 92
  %1597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1596, i32 undef)  ; BufferLoad(srv,index,wot)
  %1598 = extractvalue %dx.types.ResRet.i32 %1597, 0
  %1599 = and i32 %1598, 65535
  %1600 = uitofp i32 %1599 to float
  %1601 = lshr i32 %1598, 16
  %1602 = uitofp i32 %1601 to float
  %1603 = and i32 %1575, 65535
  %1604 = and i32 %1575, 50331648
  %1605 = icmp eq i32 %1604, 33554432
  %1606 = call float @dx.op.dot3.f32(i32 55, float %1578, float %1579, float %1580, float %1578, float %1579, float %1580)  ; Dot3(ax,ay,az,bx,by,bz)
  %1607 = fsub fast float %226, %1586
  %1608 = fsub fast float %228, %1587
  %1609 = fsub fast float %230, %1588
  %1610 = call float @dx.op.dot3.f32(i32 55, float %1607, float %1608, float %1609, float %1578, float %1579, float %1580)  ; Dot3(ax,ay,az,bx,by,bz)
  %1611 = fdiv fast float %1610, %1606
  %1612 = call float @dx.op.binary.f32(i32 35, float %1611, float -1.000000e+00)  ; FMax(a,b)
  %1613 = call float @dx.op.binary.f32(i32 36, float %1612, float 1.000000e+00)  ; FMin(a,b)
  %1614 = fmul fast float %1613, %1578
  %1615 = fmul fast float %1613, %1579
  %1616 = fmul fast float %1613, %1580
  %1617 = fadd fast float %1614, %1586
  %1618 = fadd fast float %1615, %1587
  %1619 = fadd fast float %1616, %1588
  %1620 = fsub fast float %1617, %226
  %1621 = fsub fast float %1618, %228
  %1622 = fsub fast float %1619, %230
  %1623 = call float @dx.op.dot3.f32(i32 55, float %1620, float %1621, float %1622, float %1620, float %1621, float %1622)  ; Dot3(ax,ay,az,bx,by,bz)
  %1624 = call float @dx.op.unary.f32(i32 24, float %1623)  ; Sqrt(value)
  %1625 = fdiv fast float 1.000000e+00, %1624
  %1626 = fmul fast float %1620, %1625
  %1627 = fmul fast float %1621, %1625
  %1628 = fmul fast float %1622, %1625
  %1629 = fadd fast float %1624, %1567
  %1630 = fdiv fast float 1.000000e+00, %1629
  %1631 = fmul float %1583, %1630
  %1632 = fmul float %1631, %1631
  %1633 = call float @dx.op.unary.f32(i32 7, float %1632)  ; Saturate(value)
  br i1 %1605, label %1634, label %1658, !dx.controlflow.hints !82

; <label>:1634                                    ; preds = %1557
  %1635 = fmul fast float %1594, %1570
  %1636 = fmul fast float %1594, %1571
  %1637 = fmul fast float %1594, %1572
  %1638 = fsub fast float %1635, %226
  %1639 = fadd fast float %1638, %1617
  %1640 = fsub fast float %1636, %228
  %1641 = fadd fast float %1640, %1618
  %1642 = fsub fast float %1637, %230
  %1643 = fadd fast float %1642, %1619
  %1644 = call float @dx.op.dot3.f32(i32 55, float %1639, float %1641, float %1643, float %1639, float %1641, float %1643)  ; Dot3(ax,ay,az,bx,by,bz)
  %1645 = call float @dx.op.unary.f32(i32 25, float %1644)  ; Rsqrt(value)
  %1646 = fmul fast float %1645, %1639
  %1647 = fmul fast float %1645, %1641
  %1648 = fmul fast float %1645, %1643
  %1649 = fsub fast float %226, %1617
  %1650 = fsub fast float %228, %1618
  %1651 = fsub fast float %230, %1619
  %1652 = fsub fast float -0.000000e+00, %1649
  %1653 = fsub fast float -0.000000e+00, %1650
  %1654 = fsub fast float -0.000000e+00, %1651
  %1655 = call float @dx.op.dot3.f32(i32 55, float %1652, float %1653, float %1654, float %1570, float %1571, float %1572)  ; Dot3(ax,ay,az,bx,by,bz)
  %1656 = fcmp fast ogt float %1655, 0.000000e+00
  %1657 = uitofp i1 %1656 to float
  br label %1658

; <label>:1658                                    ; preds = %1634, %1557
  %1659 = phi float [ %1657, %1634 ], [ 1.000000e+00, %1557 ]
  %1660 = phi float [ %1646, %1634 ], [ %1626, %1557 ]
  %1661 = phi float [ %1647, %1634 ], [ %1627, %1557 ]
  %1662 = phi float [ %1648, %1634 ], [ %1628, %1557 ]
  %1663 = call float @dx.op.dot3.f32(i32 55, float %1570, float %1571, float %1572, float %1660, float %1661, float %1662)  ; Dot3(ax,ay,az,bx,by,bz)
  %1664 = fmul fast float %1663, %1663
  %1665 = call float @dx.op.unary.f32(i32 7, float %1664)  ; Saturate(value)
  %1666 = fsub fast float 1.000000e+00, %1665
  %1667 = fmul fast float %1666, 5.000000e-01
  %1668 = fcmp fast ogt float %1663, 0.000000e+00
  %1669 = fsub fast float 1.000000e+00, %1667
  %1670 = select i1 %1668, float %1667, float %1669
  %1671 = fmul fast float %1670, %1602
  %1672 = fadd fast float %1671, %1600
  %1673 = fmul fast float %1672, 0x3EF0001000000000
  %1674 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %22, float %1673, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1675 = extractvalue %dx.types.ResRet.f32 %1674, 0
  %1676 = fmul fast float %1663, %1592
  %1677 = fadd fast float %1676, %1593
  %1678 = call float @dx.op.unary.f32(i32 7, float %1677)  ; Saturate(value)
  %1679 = select i1 %1605, float 1.000000e+00, float %1678
  %1680 = select i1 %1605, float %1678, float 1.000000e+00
  %1681 = fmul fast float %1624, %1589
  %1682 = fsub fast float 1.000000e+00, %1681
  %1683 = fmul fast float %1682, %1595
  %1684 = call float @dx.op.unary.f32(i32 7, float %1683)  ; Saturate(value)
  %1685 = fmul fast float %1684, %1680
  %1686 = fmul fast float %1685, 2.000000e+00
  %1687 = fsub fast float 3.000000e+00, %1686
  %1688 = fmul fast float %1675, %1659
  %1689 = fmul fast float %1685, %1685
  %1690 = fmul fast float %1689, %1688
  %1691 = fmul fast float %1690, %1687
  %1692 = call float @dx.op.binary.f32(i32 36, float %1691, float %1691)  ; FMin(a,b)
  %1693 = call float @dx.op.binary.f32(i32 36, float %1691, float %1692)  ; FMin(a,b)
  %1694 = fcmp fast ogt float %1693, 0.000000e+00
  br i1 %1694, label %1695, label %1793, !dx.controlflow.hints !83

; <label>:1695                                    ; preds = %1658
  %1696 = icmp eq i32 %1603, 255
  br i1 %1696, label %1772, label %1697, !dx.controlflow.hints !84

; <label>:1697                                    ; preds = %1695
  %1698 = mul nuw nsw i32 %1603, 176
  %1699 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1698, i32 undef)  ; BufferLoad(srv,index,wot)
  %1700 = extractvalue %dx.types.ResRet.f32 %1699, 0
  %1701 = extractvalue %dx.types.ResRet.f32 %1699, 1
  %1702 = extractvalue %dx.types.ResRet.f32 %1699, 2
  %1703 = extractvalue %dx.types.ResRet.f32 %1699, 3
  %1704 = add nuw nsw i32 %1698, 16
  %1705 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1704, i32 undef)  ; BufferLoad(srv,index,wot)
  %1706 = extractvalue %dx.types.ResRet.f32 %1705, 0
  %1707 = extractvalue %dx.types.ResRet.f32 %1705, 1
  %1708 = add nuw nsw i32 %1698, 32
  %1709 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1708, i32 undef)  ; BufferLoad(srv,index,wot)
  %1710 = extractvalue %dx.types.ResRet.f32 %1709, 0
  %1711 = add nuw nsw i32 %1698, 48
  %1712 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1711, i32 undef)  ; BufferLoad(srv,index,wot)
  %1713 = extractvalue %dx.types.ResRet.f32 %1712, 0
  %1714 = extractvalue %dx.types.ResRet.f32 %1712, 1
  %1715 = extractvalue %dx.types.ResRet.f32 %1712, 2
  %1716 = extractvalue %dx.types.ResRet.f32 %1712, 3
  %1717 = add nuw nsw i32 %1698, 64
  %1718 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1717, i32 undef)  ; BufferLoad(srv,index,wot)
  %1719 = extractvalue %dx.types.ResRet.f32 %1718, 0
  %1720 = extractvalue %dx.types.ResRet.f32 %1718, 1
  %1721 = extractvalue %dx.types.ResRet.f32 %1718, 2
  %1722 = extractvalue %dx.types.ResRet.f32 %1718, 3
  %1723 = add nuw nsw i32 %1698, 80
  %1724 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1723, i32 undef)  ; BufferLoad(srv,index,wot)
  %1725 = extractvalue %dx.types.ResRet.f32 %1724, 0
  %1726 = extractvalue %dx.types.ResRet.f32 %1724, 1
  %1727 = extractvalue %dx.types.ResRet.f32 %1724, 2
  %1728 = extractvalue %dx.types.ResRet.f32 %1724, 3
  %1729 = add nuw nsw i32 %1698, 96
  %1730 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1729, i32 undef)  ; BufferLoad(srv,index,wot)
  %1731 = extractvalue %dx.types.ResRet.f32 %1730, 0
  %1732 = extractvalue %dx.types.ResRet.f32 %1730, 1
  %1733 = extractvalue %dx.types.ResRet.f32 %1730, 2
  %1734 = extractvalue %dx.types.ResRet.f32 %1730, 3
  %1735 = bitcast float %1707 to i32
  %1736 = fmul fast float %1713, %226
  %1737 = call float @dx.op.tertiary.f32(i32 46, float %228, float %1719, float %1736)  ; FMad(a,b,c)
  %1738 = call float @dx.op.tertiary.f32(i32 46, float %230, float %1725, float %1737)  ; FMad(a,b,c)
  %1739 = fadd fast float %1738, %1731
  %1740 = fmul fast float %1714, %226
  %1741 = call float @dx.op.tertiary.f32(i32 46, float %228, float %1720, float %1740)  ; FMad(a,b,c)
  %1742 = call float @dx.op.tertiary.f32(i32 46, float %230, float %1726, float %1741)  ; FMad(a,b,c)
  %1743 = fadd fast float %1742, %1732
  %1744 = fmul fast float %1715, %226
  %1745 = call float @dx.op.tertiary.f32(i32 46, float %228, float %1721, float %1744)  ; FMad(a,b,c)
  %1746 = call float @dx.op.tertiary.f32(i32 46, float %230, float %1727, float %1745)  ; FMad(a,b,c)
  %1747 = fadd fast float %1746, %1733
  %1748 = fmul fast float %1716, %226
  %1749 = call float @dx.op.tertiary.f32(i32 46, float %228, float %1722, float %1748)  ; FMad(a,b,c)
  %1750 = call float @dx.op.tertiary.f32(i32 46, float %230, float %1728, float %1749)  ; FMad(a,b,c)
  %1751 = fadd fast float %1750, %1734
  %1752 = fdiv fast float %1739, %1751
  %1753 = fdiv fast float %1743, %1751
  %1754 = fdiv fast float %1747, %1751
  %1755 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %1754)  ; FMax(a,b)
  %1756 = fmul fast float %1752, %1706
  %1757 = fmul fast float %1753, %1706
  %1758 = call float @dx.op.binary.f32(i32 35, float %1756, float %1702)  ; FMax(a,b)
  %1759 = call float @dx.op.binary.f32(i32 35, float %1757, float %1702)  ; FMax(a,b)
  %1760 = call float @dx.op.binary.f32(i32 36, float %1758, float %1703)  ; FMin(a,b)
  %1761 = call float @dx.op.binary.f32(i32 36, float %1759, float %1703)  ; FMin(a,b)
  %1762 = fadd fast float %1760, %1700
  %1763 = fadd fast float %1761, %1701
  %1764 = uitofp i32 %1735 to float
  %1765 = fadd fast float %1755, %1710
  %1766 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %24, float %1762, float %1763, float %1764, float undef, i32 0, i32 0, i32 undef, float %1765)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1767 = extractvalue %dx.types.ResRet.f32 %1766, 0
  %1768 = fadd fast float %1767, -1.000000e+00
  %1769 = fmul fast float %1768, %1679
  %1770 = fadd fast float %1769, 1.000000e+00
  %1771 = fmul fast float %1770, %1691
  br label %1772

; <label>:1772                                    ; preds = %1697, %1695
  %1773 = phi float [ %1771, %1697 ], [ %1691, %1695 ]
  %1774 = call float @dx.op.binary.f32(i32 36, float %1773, float %1773)  ; FMin(a,b)
  %1775 = call float @dx.op.binary.f32(i32 36, float %1773, float %1774)  ; FMin(a,b)
  %1776 = fcmp fast ogt float %1775, 0.000000e+00
  br i1 %1776, label %1777, label %1793, !dx.controlflow.hints !85

; <label>:1777                                    ; preds = %1772
  %1778 = call float @dx.op.dot3.f32(i32 55, float %172, float %173, float %174, float %1626, float %1627, float %1628)  ; Dot3(ax,ay,az,bx,by,bz)
  %1779 = call float @dx.op.unary.f32(i32 7, float %1778)  ; Saturate(value)
  %1780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1781 = extractvalue %dx.types.CBufRet.f32 %1780, 3
  %1782 = fsub fast float 1.000000e+00, %1773
  %1783 = fmul fast float %1781, %1782
  %1784 = fadd fast float %1783, %1773
  %1785 = fmul fast float %1779, %1633
  %1786 = fmul fast float %1785, %1784
  %1787 = fmul fast float %1786, %1562
  %1788 = fmul fast float %1786, %1563
  %1789 = fmul fast float %1786, %1564
  %1790 = fadd fast float %1787, %1536
  %1791 = fadd fast float %1788, %1537
  %1792 = fadd fast float %1789, %1538
  br label %1793

; <label>:1793                                    ; preds = %1777, %1772, %1658
  %1794 = phi float [ %1790, %1777 ], [ %1536, %1772 ], [ %1536, %1658 ]
  %1795 = phi float [ %1791, %1777 ], [ %1537, %1772 ], [ %1537, %1658 ]
  %1796 = phi float [ %1792, %1777 ], [ %1538, %1772 ], [ %1538, %1658 ]
  %1797 = add nuw i32 %1539, 1
  %1798 = icmp eq i32 %1797, %1531
  br i1 %1798, label %1799, label %1535, !llvm.loop !86

; <label>:1799                                    ; preds = %1793
  br label %1800

; <label>:1800                                    ; preds = %1799, %1529, %1469
  %1801 = phi float [ %1470, %1469 ], [ %1470, %1529 ], [ %1794, %1799 ]
  %1802 = phi float [ %1471, %1469 ], [ %1471, %1529 ], [ %1795, %1799 ]
  %1803 = phi float [ %1472, %1469 ], [ %1472, %1529 ], [ %1796, %1799 ]
  %1804 = fadd fast float %1801, %218
  %1805 = fadd fast float %1802, %219
  %1806 = fadd fast float %1803, %220
  %1807 = fmul fast float %213, %1804
  %1808 = fmul fast float %214, %1805
  %1809 = fmul fast float %215, %1806
  %1810 = or i1 %119, %128
  %1811 = select i1 %1810, float %218, float %1807
  %1812 = select i1 %1810, float %219, float %1808
  %1813 = select i1 %1810, float %220, float %1809
  %1814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1815 = extractvalue %dx.types.CBufRet.f32 %1814, 0
  %1816 = fmul fast float %1815, %1811
  %1817 = fmul fast float %1812, %1815
  %1818 = fmul fast float %1813, %1815
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %28, i32 %29, i32 0, float %1816, float %1817, float %1818, float %1816, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

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
!39 = !{void ()* @cs_reflection_probe_relighting_octahedron, !"cs_reflection_probe_relighting_octahedron", null, !4, !40}
!40 = !{i32 0, i64 272, i32 4, !41}
!41 = !{i32 8, i32 8, i32 1}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 1}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 1}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 1}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 1}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 1}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = !{!54, !54, i64 0}
!54 = !{!"int", !55, i64 0}
!55 = !{!"omnipotent char", !56, i64 0}
!56 = !{!"Simple C/C++ TBAA"}
!57 = !{!58, !60}
!58 = distinct !{!58, !59, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_Refprobe@@ULightIteratorOutput_Refprobe@@@Z: %lightingOutput"}
!59 = distinct !{!59, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_Refprobe@@ULightIteratorOutput_Refprobe@@@Z"}
!60 = distinct !{!60, !61, !"\01?Lights_Iterate_Refprobe@@YAXULocalAttributes@@ULightIteratorInput_Refprobe@@ULightIteratorOutput_Refprobe@@@Z: %lightingOutput"}
!61 = distinct !{!61, !"\01?Lights_Iterate_Refprobe@@YAXULocalAttributes@@ULightIteratorInput_Refprobe@@ULightIteratorOutput_Refprobe@@@Z"}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 1}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = !{!68, !68, i64 0}
!68 = !{!"float", !55, i64 0}
!69 = distinct !{!69, !70}
!70 = !{!"llvm.loop.unroll.disable"}
!71 = distinct !{!71, !70}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 1}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 1}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 2}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 1}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 2}
!80 = !{!60}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 2}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 2}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 1}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 1}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 1}
!86 = distinct !{!86, !70}

