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
; shader hash: c0006eef4a744c1a966ce5da303523cd
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
; Resource bind info for 
; {
;
;   [164 x i8] (type annotation not present)
; }
;
; Resource bind info for 
; {
;
;   [4 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb3     1
;                                   sampler      NA          NA      S0             s1     1
;                                   sampler      NA          NA      S1             s2     1
;                                   sampler      NA          NA      S2             s3     1
;                                   sampler      NA          NA      S3             s4     1
;                                   texture     f32          2d      T0            t27     1
;                                   texture    byte         r/o      T1            t44     1
;                                   texture     f32          2d      T2            t33     1
;                                   texture     f32          2d      T3            t24     1
;                                   texture     f32          2d      T4            t25     1
;                                   texture     f32          2d      T5            t36     1
;                                   texture  struct         r/o      T6            t39     1
;                                   texture    byte         r/o      T7            t13     1
;                                   texture    byte         r/o      T8            t40     1
;                                       UAV    byte         r/w      U0             u0     1
;                                       UAV  struct         r/w      U1             u1     1
;                                       UAV    byte         r/w      U2             u2     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%"class.Texture2D<vector<float, 2> >" = type { <2 x float>, %"class.Texture2D<vector<float, 2> >::mips_type" }
%"class.Texture2D<vector<float, 2> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.StructuredBuffer<VolumetricBBoxGpu>" = type { %struct.VolumetricBBoxGpu }
%struct.VolumetricBBoxGpu = type { <3 x float>, i32, <3 x float>, float, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.RWByteAddressBuffer = type { i32 }
%"class.RWStructuredBuffer<unsigned int>" = type { i32 }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.SamplerState = type { i32 }

define void @cs_frustum_grid_cluster_volumetrics() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 40, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 39, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 36, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 24, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %19 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %20 = call i32 @dx.op.threadId.i32(i32 93, i32 2)  ; ThreadId(component)
  %21 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %22 = extractvalue %dx.types.CBufRet.i32 %21, 0
  %23 = extractvalue %dx.types.CBufRet.i32 %21, 1
  %24 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %25 = extractvalue %dx.types.CBufRet.i32 %24, 1
  %26 = icmp ult i32 %18, %22
  %27 = icmp ult i32 %19, %23
  %28 = icmp ult i32 %20, %25
  %29 = and i1 %26, %27
  %30 = and i1 %29, %28
  br i1 %30, label %31, label %2314, !dx.controlflow.hints !32

; <label>:31                                      ; preds = %0
  %32 = uitofp i32 %18 to float
  %33 = uitofp i32 %19 to float
  %34 = uitofp i32 %20 to float
  %35 = fadd fast float %32, 5.000000e-01
  %36 = fadd fast float %33, 5.000000e-01
  %37 = fadd fast float %34, 5.000000e-01
  %38 = fmul fast float %35, 4.000000e+00
  %39 = fmul fast float %36, 4.000000e+00
  %40 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %41 = extractvalue %dx.types.CBufRet.f32 %40, 0
  %42 = extractvalue %dx.types.CBufRet.f32 %40, 1
  %43 = fmul fast float %38, %41
  %44 = fmul fast float %39, %42
  %45 = fptoui float %37 to i32
  %46 = shl i32 %45, 2
  %47 = uitofp i32 %46 to float
  %48 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %49 = extractvalue %dx.types.CBufRet.f32 %48, 0
  %50 = extractvalue %dx.types.CBufRet.f32 %48, 1
  %51 = fmul fast float %50, %47
  %52 = call float @dx.op.unary.f32(i32 21, float %51)  ; Exp(value)
  %53 = fmul fast float %52, %49
  %54 = fsub fast float 4.000000e+00, %49
  %55 = fadd fast float %54, %53
  %56 = add i32 %46, 4
  %57 = uitofp i32 %56 to float
  %58 = fmul fast float %50, %57
  %59 = call float @dx.op.unary.f32(i32 21, float %58)  ; Exp(value)
  %60 = fmul fast float %59, %49
  %61 = fadd fast float %54, %60
  %62 = fmul fast float %43, 2.000000e+00
  %63 = fmul fast float %44, 2.000000e+00
  %64 = fsub fast float 1.000000e+00, %62
  %65 = fsub fast float 1.000000e+00, %63
  %66 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %67 = extractvalue %dx.types.CBufRet.f32 %66, 0
  %68 = extractvalue %dx.types.CBufRet.f32 %66, 1
  %69 = extractvalue %dx.types.CBufRet.f32 %66, 2
  %70 = fmul fast float %67, %64
  %71 = fmul fast float %68, %64
  %72 = fmul fast float %69, %64
  %73 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %74 = extractvalue %dx.types.CBufRet.f32 %73, 0
  %75 = extractvalue %dx.types.CBufRet.f32 %73, 1
  %76 = extractvalue %dx.types.CBufRet.f32 %73, 2
  %77 = fmul fast float %74, %65
  %78 = fmul fast float %75, %65
  %79 = fmul fast float %76, %65
  %80 = fadd fast float %77, %70
  %81 = fadd fast float %78, %71
  %82 = fadd fast float %79, %72
  %83 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %84 = extractvalue %dx.types.CBufRet.f32 %83, 0
  %85 = extractvalue %dx.types.CBufRet.f32 %83, 1
  %86 = extractvalue %dx.types.CBufRet.f32 %83, 2
  %87 = fadd fast float %80, %84
  %88 = fadd fast float %81, %85
  %89 = fadd fast float %82, %86
  %90 = fmul fast float %87, %55
  %91 = fmul fast float %88, %55
  %92 = fmul fast float %89, %55
  %93 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %94 = extractvalue %dx.types.CBufRet.f32 %93, 0
  %95 = extractvalue %dx.types.CBufRet.f32 %93, 1
  %96 = extractvalue %dx.types.CBufRet.f32 %93, 2
  %97 = fadd fast float %90, %94
  %98 = fadd fast float %91, %95
  %99 = fadd fast float %92, %96
  %100 = fmul fast float %41, %55
  %101 = fmul fast float %100, %67
  %102 = fsub fast float -0.000000e+00, %101
  %103 = fmul fast float %100, %68
  %104 = fsub fast float -0.000000e+00, %103
  %105 = fmul fast float %100, %69
  %106 = fsub fast float -0.000000e+00, %105
  %107 = fmul fast float %42, %55
  %108 = fmul fast float %107, %74
  %109 = fmul fast float %107, %75
  %110 = fmul fast float %107, %76
  %111 = fmul fast float %87, %61
  %112 = fmul fast float %88, %61
  %113 = fmul fast float %89, %61
  %114 = fadd fast float %111, %94
  %115 = fadd fast float %112, %95
  %116 = fadd fast float %113, %96
  %117 = fmul fast float %61, %41
  %118 = fmul fast float %117, %67
  %119 = fsub fast float -0.000000e+00, %118
  %120 = fmul fast float %117, %68
  %121 = fsub fast float -0.000000e+00, %120
  %122 = fmul fast float %117, %69
  %123 = fsub fast float -0.000000e+00, %122
  %124 = fmul fast float %61, %42
  %125 = fmul fast float %124, %74
  %126 = fmul fast float %124, %75
  %127 = fmul fast float %124, %76
  %128 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %129 = extractvalue %dx.types.CBufRet.i32 %128, 2
  %130 = extractvalue %dx.types.CBufRet.i32 %128, 3
  %131 = call i32 @dx.op.tertiary.i32(i32 49, i32 %19, i32 %129, i32 %18)  ; UMad(a,b,c)
  %132 = call i32 @dx.op.tertiary.i32(i32 49, i32 %20, i32 %130, i32 %131)  ; UMad(a,b,c)
  %133 = fadd fast float %114, %97
  %134 = fadd fast float %115, %98
  %135 = fadd fast float %116, %99
  %136 = fmul fast float %133, 5.000000e-01
  %137 = fmul fast float %134, 5.000000e-01
  %138 = fmul fast float %135, 5.000000e-01
  %139 = fsub fast float %119, %114
  %140 = fsub fast float %139, %125
  %141 = fadd fast float %140, %136
  %142 = fsub fast float %121, %115
  %143 = fsub fast float %142, %126
  %144 = fadd fast float %143, %137
  %145 = fsub fast float %123, %116
  %146 = fsub fast float %145, %127
  %147 = fadd fast float %146, %138
  %148 = fmul fast float %141, %141
  %149 = fmul fast float %144, %144
  %150 = fadd fast float %148, %149
  %151 = fmul fast float %147, %147
  %152 = fadd fast float %150, %151
  %153 = call float @dx.op.unary.f32(i32 24, float %152)  ; Sqrt(value)
  %154 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %155 = extractvalue %dx.types.CBufRet.i32 %154, 0
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %181, label %157

; <label>:157                                     ; preds = %31
  br label %158

; <label>:158                                     ; preds = %158, %157
  %159 = phi i32 [ %173, %158 ], [ 0, %157 ]
  %160 = add i32 %159, 171
  %161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 %160)  ; CBufferLoadLegacy(handle,regIndex)
  %162 = extractvalue %dx.types.CBufRet.f32 %161, 0
  %163 = extractvalue %dx.types.CBufRet.f32 %161, 1
  %164 = extractvalue %dx.types.CBufRet.f32 %161, 2
  %165 = fsub fast float %136, %162
  %166 = fsub fast float %137, %163
  %167 = fmul fast float %165, %165
  %168 = fmul fast float %166, %166
  %169 = fadd fast float %167, %168
  %170 = call float @dx.op.unary.f32(i32 24, float %169)  ; Sqrt(value)
  %171 = fadd fast float %170, %153
  %172 = fcmp fast olt float %171, %164
  %173 = add nuw nsw i32 %159, 1
  %174 = xor i1 %172, true
  %175 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %176 = extractvalue %dx.types.CBufRet.i32 %175, 0
  %177 = icmp ult i32 %173, %176
  %178 = and i1 %177, %174
  br i1 %178, label %158, label %179

; <label>:179                                     ; preds = %158
  %180 = zext i1 %172 to i32
  br label %181

; <label>:181                                     ; preds = %179, %31
  %182 = phi i32 [ 0, %31 ], [ %180, %179 ]
  %183 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %184 = extractvalue %dx.types.CBufRet.i32 %183, 1
  %185 = lshr i32 %184, 1
  %186 = and i32 %185, 1
  %187 = xor i32 %182, 1
  %188 = xor i32 %187, %186
  %189 = fadd fast float %97, %101
  %190 = fadd fast float %98, %103
  %191 = fadd fast float %99, %105
  %192 = fsub fast float %97, %101
  %193 = fsub fast float %98, %103
  %194 = fsub fast float %99, %105
  %195 = fadd fast float %114, %118
  %196 = fadd fast float %115, %120
  %197 = fadd fast float %116, %122
  %198 = fsub fast float %114, %118
  %199 = fsub fast float %115, %120
  %200 = fsub fast float %116, %122
  %201 = fsub fast float %198, %189
  %202 = fsub fast float %199, %190
  %203 = fmul fast float %201, %201
  %204 = fmul fast float %202, %202
  %205 = fadd fast float %203, %204
  %206 = call float @dx.op.unary.f32(i32 24, float %205)  ; Sqrt(value)
  %207 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %208 = extractvalue %dx.types.CBufRet.i32 %207, 3
  %209 = icmp ne i32 %208, 0
  %210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %211 = extractvalue %dx.types.CBufRet.f32 %210, 0
  %212 = extractvalue %dx.types.CBufRet.f32 %210, 1
  %213 = extractvalue %dx.types.CBufRet.f32 %210, 2
  %214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %215 = extractvalue %dx.types.CBufRet.f32 %214, 0
  %216 = extractvalue %dx.types.CBufRet.f32 %214, 1
  %217 = extractvalue %dx.types.CBufRet.f32 %214, 2
  %218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %219 = extractvalue %dx.types.CBufRet.f32 %218, 2
  %220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %221 = extractvalue %dx.types.CBufRet.f32 %220, 2
  %222 = fadd fast float %221, %219
  %223 = fcmp fast ole float %191, %222
  %224 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %225 = extractvalue %dx.types.CBufRet.i32 %224, 3
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %246, !dx.controlflow.hints !33

; <label>:227                                     ; preds = %181
  %228 = extractvalue %dx.types.CBufRet.f32 %218, 0
  %229 = extractvalue %dx.types.CBufRet.f32 %218, 1
  %230 = fsub fast float %189, %228
  %231 = fsub fast float %190, %229
  %232 = extractvalue %dx.types.CBufRet.f32 %220, 0
  %233 = extractvalue %dx.types.CBufRet.f32 %220, 1
  %234 = fdiv fast float 1.000000e+00, %232
  %235 = fdiv fast float 1.000000e+00, %233
  %236 = fmul fast float %230, %234
  %237 = fmul fast float %235, %231
  %238 = fcmp fast oge float %236, 0.000000e+00
  %239 = fcmp fast oge float %237, 0.000000e+00
  %240 = and i1 %238, %239
  %241 = and i1 %223, %240
  %242 = fcmp fast ole float %236, 1.000000e+00
  %243 = fcmp fast ole float %237, 1.000000e+00
  %244 = and i1 %242, %243
  %245 = and i1 %244, %241
  br label %246

; <label>:246                                     ; preds = %227, %181
  %247 = phi i1 [ %245, %227 ], [ %223, %181 ]
  %248 = fsub fast float %189, %215
  %249 = fsub fast float %190, %216
  %250 = fsub fast float %191, %217
  %251 = fmul fast float %248, %211
  %252 = fmul fast float %249, %212
  %253 = fmul fast float %250, %213
  %254 = extractvalue %dx.types.CBufRet.i32 %21, 3
  %255 = icmp eq i32 %254, 0
  %256 = fcmp fast oge float %253, 0.000000e+00
  %257 = fcmp fast ole float %253, 1.000000e+00
  br i1 %255, label %258, label %268, !dx.controlflow.hints !34

; <label>:258                                     ; preds = %246
  %259 = fcmp fast oge float %251, 0.000000e+00
  %260 = fcmp fast oge float %252, 0.000000e+00
  %261 = and i1 %259, %260
  %262 = and i1 %256, %261
  %263 = fcmp fast ole float %251, 1.000000e+00
  %264 = fcmp fast ole float %252, 1.000000e+00
  %265 = and i1 %263, %264
  %266 = and i1 %257, %265
  %267 = and i1 %262, %266
  br label %270

; <label>:268                                     ; preds = %246
  %269 = and i1 %256, %257
  br label %270

; <label>:270                                     ; preds = %268, %258
  %271 = phi i1 [ %269, %268 ], [ %267, %258 ]
  %272 = and i1 %209, %271
  br i1 %272, label %273, label %347, !dx.controlflow.hints !35

; <label>:273                                     ; preds = %270
  %274 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %275 = extractvalue %dx.types.CBufRet.i32 %274, 0
  %276 = extractvalue %dx.types.CBufRet.i32 %274, 1
  %277 = uitofp i32 %275 to float
  %278 = uitofp i32 %276 to float
  %279 = fmul fast float %251, %277
  %280 = fmul fast float %252, %278
  %281 = fadd fast float %279, 5.000000e-01
  %282 = fadd fast float %280, 5.000000e-01
  %283 = call float @dx.op.unary.f32(i32 22, float %281)  ; Frc(value)
  %284 = call float @dx.op.unary.f32(i32 22, float %282)  ; Frc(value)
  %285 = call float @dx.op.unary.f32(i32 27, float %281)  ; Round_ni(value)
  %286 = call float @dx.op.unary.f32(i32 27, float %282)  ; Round_ni(value)
  %287 = fadd fast float %285, 1.000000e+00
  %288 = fadd fast float %286, 1.000000e+00
  %289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %290 = extractvalue %dx.types.CBufRet.f32 %289, 0
  %291 = extractvalue %dx.types.CBufRet.f32 %289, 1
  %292 = fmul fast float %290, %287
  %293 = fmul fast float %291, %288
  %294 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %9, %dx.types.Handle %14, float %292, float %293, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %295 = extractvalue %dx.types.ResRet.f32 %294, 0
  %296 = extractvalue %dx.types.ResRet.f32 %294, 1
  %297 = extractvalue %dx.types.ResRet.f32 %294, 2
  %298 = extractvalue %dx.types.ResRet.f32 %294, 3
  %299 = extractvalue %dx.types.CBufRet.i32 %274, 2
  %300 = extractvalue %dx.types.CBufRet.f32 %289, 2
  %301 = uitofp i32 %299 to float
  %302 = fadd fast float %301, -1.000000e+00
  %303 = fmul fast float %302, %295
  %304 = fmul fast float %302, %296
  %305 = fmul fast float %302, %297
  %306 = fmul fast float %302, %298
  %307 = fadd fast float %303, 5.000000e-01
  %308 = fadd fast float %304, 5.000000e-01
  %309 = fadd fast float %305, 5.000000e-01
  %310 = fadd fast float %306, 5.000000e-01
  %311 = fptoui float %307 to i32
  %312 = fptoui float %308 to i32
  %313 = fptoui float %309 to i32
  %314 = fptoui float %310 to i32
  %315 = uitofp i32 %311 to float
  %316 = uitofp i32 %312 to float
  %317 = uitofp i32 %313 to float
  %318 = uitofp i32 %314 to float
  %319 = fadd fast float %315, 5.000000e-01
  %320 = fadd fast float %316, 5.000000e-01
  %321 = fadd fast float %317, 5.000000e-01
  %322 = fadd fast float %318, 5.000000e-01
  %323 = fmul fast float %319, %300
  %324 = fmul fast float %320, %300
  %325 = fmul fast float %321, %300
  %326 = fmul fast float %322, %300
  %327 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %15, float %323, float %253, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %328 = extractvalue %dx.types.ResRet.f32 %327, 0
  %329 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %15, float %324, float %253, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %330 = extractvalue %dx.types.ResRet.f32 %329, 0
  %331 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %15, float %325, float %253, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %332 = extractvalue %dx.types.ResRet.f32 %331, 0
  %333 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %15, float %326, float %253, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %334 = extractvalue %dx.types.ResRet.f32 %333, 0
  %335 = fsub fast float %332, %334
  %336 = fmul fast float %335, %283
  %337 = fadd fast float %336, %334
  %338 = fsub fast float %330, %328
  %339 = fmul fast float %338, %283
  %340 = fadd fast float %339, %328
  %341 = fsub fast float %340, %337
  %342 = fmul fast float %341, %284
  %343 = fadd fast float %342, %337
  %344 = fcmp fast ogt float %343, 0.000000e+00
  %345 = select i1 %344, i32 8, i32 0
  %346 = or i32 %345, %188
  br label %347

; <label>:347                                     ; preds = %273, %270
  %348 = phi i32 [ %346, %273 ], [ %188, %270 ]
  %349 = fcmp fast ole float %194, %222
  br i1 %226, label %350, label %369, !dx.controlflow.hints !33

; <label>:350                                     ; preds = %347
  %351 = extractvalue %dx.types.CBufRet.f32 %218, 0
  %352 = extractvalue %dx.types.CBufRet.f32 %218, 1
  %353 = fsub fast float %192, %351
  %354 = fsub fast float %193, %352
  %355 = extractvalue %dx.types.CBufRet.f32 %220, 0
  %356 = extractvalue %dx.types.CBufRet.f32 %220, 1
  %357 = fdiv fast float 1.000000e+00, %355
  %358 = fdiv fast float 1.000000e+00, %356
  %359 = fmul fast float %353, %357
  %360 = fmul fast float %358, %354
  %361 = fcmp fast oge float %359, 0.000000e+00
  %362 = fcmp fast oge float %360, 0.000000e+00
  %363 = and i1 %361, %362
  %364 = and i1 %349, %363
  %365 = fcmp fast ole float %359, 1.000000e+00
  %366 = fcmp fast ole float %360, 1.000000e+00
  %367 = and i1 %365, %366
  %368 = and i1 %367, %364
  br label %369

; <label>:369                                     ; preds = %350, %347
  %370 = phi i1 [ %368, %350 ], [ %349, %347 ]
  %371 = fsub fast float %192, %215
  %372 = fsub fast float %193, %216
  %373 = fsub fast float %194, %217
  %374 = fmul fast float %371, %211
  %375 = fmul fast float %372, %212
  %376 = fmul fast float %373, %213
  %377 = fcmp fast oge float %376, 0.000000e+00
  %378 = fcmp fast ole float %376, 1.000000e+00
  br i1 %255, label %379, label %389, !dx.controlflow.hints !34

; <label>:379                                     ; preds = %369
  %380 = fcmp fast oge float %374, 0.000000e+00
  %381 = fcmp fast oge float %375, 0.000000e+00
  %382 = and i1 %380, %381
  %383 = and i1 %377, %382
  %384 = fcmp fast ole float %374, 1.000000e+00
  %385 = fcmp fast ole float %375, 1.000000e+00
  %386 = and i1 %384, %385
  %387 = and i1 %378, %386
  %388 = and i1 %383, %387
  br label %391

; <label>:389                                     ; preds = %369
  %390 = and i1 %377, %378
  br label %391

; <label>:391                                     ; preds = %389, %379
  %392 = phi i1 [ %390, %389 ], [ %388, %379 ]
  %393 = and i1 %209, %392
  br i1 %393, label %394, label %468, !dx.controlflow.hints !35

; <label>:394                                     ; preds = %391
  %395 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %396 = extractvalue %dx.types.CBufRet.i32 %395, 0
  %397 = extractvalue %dx.types.CBufRet.i32 %395, 1
  %398 = uitofp i32 %396 to float
  %399 = uitofp i32 %397 to float
  %400 = fmul fast float %374, %398
  %401 = fmul fast float %375, %399
  %402 = fadd fast float %400, 5.000000e-01
  %403 = fadd fast float %401, 5.000000e-01
  %404 = call float @dx.op.unary.f32(i32 22, float %402)  ; Frc(value)
  %405 = call float @dx.op.unary.f32(i32 22, float %403)  ; Frc(value)
  %406 = call float @dx.op.unary.f32(i32 27, float %402)  ; Round_ni(value)
  %407 = call float @dx.op.unary.f32(i32 27, float %403)  ; Round_ni(value)
  %408 = fadd fast float %406, 1.000000e+00
  %409 = fadd fast float %407, 1.000000e+00
  %410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %411 = extractvalue %dx.types.CBufRet.f32 %410, 0
  %412 = extractvalue %dx.types.CBufRet.f32 %410, 1
  %413 = fmul fast float %411, %408
  %414 = fmul fast float %412, %409
  %415 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %9, %dx.types.Handle %14, float %413, float %414, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %416 = extractvalue %dx.types.ResRet.f32 %415, 0
  %417 = extractvalue %dx.types.ResRet.f32 %415, 1
  %418 = extractvalue %dx.types.ResRet.f32 %415, 2
  %419 = extractvalue %dx.types.ResRet.f32 %415, 3
  %420 = extractvalue %dx.types.CBufRet.i32 %395, 2
  %421 = extractvalue %dx.types.CBufRet.f32 %410, 2
  %422 = uitofp i32 %420 to float
  %423 = fadd fast float %422, -1.000000e+00
  %424 = fmul fast float %423, %416
  %425 = fmul fast float %423, %417
  %426 = fmul fast float %423, %418
  %427 = fmul fast float %423, %419
  %428 = fadd fast float %424, 5.000000e-01
  %429 = fadd fast float %425, 5.000000e-01
  %430 = fadd fast float %426, 5.000000e-01
  %431 = fadd fast float %427, 5.000000e-01
  %432 = fptoui float %428 to i32
  %433 = fptoui float %429 to i32
  %434 = fptoui float %430 to i32
  %435 = fptoui float %431 to i32
  %436 = uitofp i32 %432 to float
  %437 = uitofp i32 %433 to float
  %438 = uitofp i32 %434 to float
  %439 = uitofp i32 %435 to float
  %440 = fadd fast float %436, 5.000000e-01
  %441 = fadd fast float %437, 5.000000e-01
  %442 = fadd fast float %438, 5.000000e-01
  %443 = fadd fast float %439, 5.000000e-01
  %444 = fmul fast float %440, %421
  %445 = fmul fast float %441, %421
  %446 = fmul fast float %442, %421
  %447 = fmul fast float %443, %421
  %448 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %15, float %444, float %376, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %449 = extractvalue %dx.types.ResRet.f32 %448, 0
  %450 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %15, float %445, float %376, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %451 = extractvalue %dx.types.ResRet.f32 %450, 0
  %452 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %15, float %446, float %376, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %453 = extractvalue %dx.types.ResRet.f32 %452, 0
  %454 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %15, float %447, float %376, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %455 = extractvalue %dx.types.ResRet.f32 %454, 0
  %456 = fsub fast float %453, %455
  %457 = fmul fast float %456, %404
  %458 = fadd fast float %457, %455
  %459 = fsub fast float %451, %449
  %460 = fmul fast float %459, %404
  %461 = fadd fast float %460, %449
  %462 = fsub fast float %461, %458
  %463 = fmul fast float %462, %405
  %464 = fadd fast float %463, %458
  %465 = fcmp fast ogt float %464, 0.000000e+00
  %466 = select i1 %465, i32 8, i32 0
  %467 = or i32 %466, %348
  br label %468

; <label>:468                                     ; preds = %394, %391
  %469 = phi i32 [ %467, %394 ], [ %348, %391 ]
  %470 = fcmp fast ole float %197, %222
  br i1 %226, label %471, label %490, !dx.controlflow.hints !33

; <label>:471                                     ; preds = %468
  %472 = extractvalue %dx.types.CBufRet.f32 %218, 0
  %473 = extractvalue %dx.types.CBufRet.f32 %218, 1
  %474 = fsub fast float %195, %472
  %475 = fsub fast float %196, %473
  %476 = extractvalue %dx.types.CBufRet.f32 %220, 0
  %477 = extractvalue %dx.types.CBufRet.f32 %220, 1
  %478 = fdiv fast float 1.000000e+00, %476
  %479 = fdiv fast float 1.000000e+00, %477
  %480 = fmul fast float %474, %478
  %481 = fmul fast float %479, %475
  %482 = fcmp fast oge float %480, 0.000000e+00
  %483 = fcmp fast oge float %481, 0.000000e+00
  %484 = and i1 %482, %483
  %485 = and i1 %470, %484
  %486 = fcmp fast ole float %480, 1.000000e+00
  %487 = fcmp fast ole float %481, 1.000000e+00
  %488 = and i1 %486, %487
  %489 = and i1 %488, %485
  br label %490

; <label>:490                                     ; preds = %471, %468
  %491 = phi i1 [ %489, %471 ], [ %470, %468 ]
  %492 = or i1 %370, %491
  %493 = fsub fast float %195, %215
  %494 = fsub fast float %196, %216
  %495 = fsub fast float %197, %217
  %496 = fmul fast float %493, %211
  %497 = fmul fast float %494, %212
  %498 = fmul fast float %495, %213
  %499 = fcmp fast oge float %498, 0.000000e+00
  %500 = fcmp fast ole float %498, 1.000000e+00
  br i1 %255, label %501, label %511, !dx.controlflow.hints !34

; <label>:501                                     ; preds = %490
  %502 = fcmp fast oge float %496, 0.000000e+00
  %503 = fcmp fast oge float %497, 0.000000e+00
  %504 = and i1 %502, %503
  %505 = and i1 %499, %504
  %506 = fcmp fast ole float %496, 1.000000e+00
  %507 = fcmp fast ole float %497, 1.000000e+00
  %508 = and i1 %506, %507
  %509 = and i1 %500, %508
  %510 = and i1 %505, %509
  br label %513

; <label>:511                                     ; preds = %490
  %512 = and i1 %499, %500
  br label %513

; <label>:513                                     ; preds = %511, %501
  %514 = phi i1 [ %512, %511 ], [ %510, %501 ]
  %515 = and i1 %209, %514
  br i1 %515, label %516, label %590, !dx.controlflow.hints !35

; <label>:516                                     ; preds = %513
  %517 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %518 = extractvalue %dx.types.CBufRet.i32 %517, 0
  %519 = extractvalue %dx.types.CBufRet.i32 %517, 1
  %520 = uitofp i32 %518 to float
  %521 = uitofp i32 %519 to float
  %522 = fmul fast float %496, %520
  %523 = fmul fast float %497, %521
  %524 = fadd fast float %522, 5.000000e-01
  %525 = fadd fast float %523, 5.000000e-01
  %526 = call float @dx.op.unary.f32(i32 22, float %524)  ; Frc(value)
  %527 = call float @dx.op.unary.f32(i32 22, float %525)  ; Frc(value)
  %528 = call float @dx.op.unary.f32(i32 27, float %524)  ; Round_ni(value)
  %529 = call float @dx.op.unary.f32(i32 27, float %525)  ; Round_ni(value)
  %530 = fadd fast float %528, 1.000000e+00
  %531 = fadd fast float %529, 1.000000e+00
  %532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %533 = extractvalue %dx.types.CBufRet.f32 %532, 0
  %534 = extractvalue %dx.types.CBufRet.f32 %532, 1
  %535 = fmul fast float %533, %530
  %536 = fmul fast float %534, %531
  %537 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %9, %dx.types.Handle %14, float %535, float %536, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %538 = extractvalue %dx.types.ResRet.f32 %537, 0
  %539 = extractvalue %dx.types.ResRet.f32 %537, 1
  %540 = extractvalue %dx.types.ResRet.f32 %537, 2
  %541 = extractvalue %dx.types.ResRet.f32 %537, 3
  %542 = extractvalue %dx.types.CBufRet.i32 %517, 2
  %543 = extractvalue %dx.types.CBufRet.f32 %532, 2
  %544 = uitofp i32 %542 to float
  %545 = fadd fast float %544, -1.000000e+00
  %546 = fmul fast float %545, %538
  %547 = fmul fast float %545, %539
  %548 = fmul fast float %545, %540
  %549 = fmul fast float %545, %541
  %550 = fadd fast float %546, 5.000000e-01
  %551 = fadd fast float %547, 5.000000e-01
  %552 = fadd fast float %548, 5.000000e-01
  %553 = fadd fast float %549, 5.000000e-01
  %554 = fptoui float %550 to i32
  %555 = fptoui float %551 to i32
  %556 = fptoui float %552 to i32
  %557 = fptoui float %553 to i32
  %558 = uitofp i32 %554 to float
  %559 = uitofp i32 %555 to float
  %560 = uitofp i32 %556 to float
  %561 = uitofp i32 %557 to float
  %562 = fadd fast float %558, 5.000000e-01
  %563 = fadd fast float %559, 5.000000e-01
  %564 = fadd fast float %560, 5.000000e-01
  %565 = fadd fast float %561, 5.000000e-01
  %566 = fmul fast float %562, %543
  %567 = fmul fast float %563, %543
  %568 = fmul fast float %564, %543
  %569 = fmul fast float %565, %543
  %570 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %15, float %566, float %498, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %571 = extractvalue %dx.types.ResRet.f32 %570, 0
  %572 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %15, float %567, float %498, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %573 = extractvalue %dx.types.ResRet.f32 %572, 0
  %574 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %15, float %568, float %498, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %575 = extractvalue %dx.types.ResRet.f32 %574, 0
  %576 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %15, float %569, float %498, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %577 = extractvalue %dx.types.ResRet.f32 %576, 0
  %578 = fsub fast float %575, %577
  %579 = fmul fast float %578, %526
  %580 = fadd fast float %579, %577
  %581 = fsub fast float %573, %571
  %582 = fmul fast float %581, %526
  %583 = fadd fast float %582, %571
  %584 = fsub fast float %583, %580
  %585 = fmul fast float %584, %527
  %586 = fadd fast float %585, %580
  %587 = fcmp fast ogt float %586, 0.000000e+00
  %588 = select i1 %587, i32 8, i32 0
  %589 = or i32 %588, %469
  br label %590

; <label>:590                                     ; preds = %516, %513
  %591 = phi i32 [ %589, %516 ], [ %469, %513 ]
  %592 = fcmp fast ole float %200, %222
  br i1 %226, label %593, label %612, !dx.controlflow.hints !33

; <label>:593                                     ; preds = %590
  %594 = extractvalue %dx.types.CBufRet.f32 %218, 0
  %595 = extractvalue %dx.types.CBufRet.f32 %218, 1
  %596 = fsub fast float %198, %594
  %597 = fsub fast float %199, %595
  %598 = extractvalue %dx.types.CBufRet.f32 %220, 0
  %599 = extractvalue %dx.types.CBufRet.f32 %220, 1
  %600 = fdiv fast float 1.000000e+00, %598
  %601 = fdiv fast float 1.000000e+00, %599
  %602 = fmul fast float %596, %600
  %603 = fmul fast float %601, %597
  %604 = fcmp fast oge float %602, 0.000000e+00
  %605 = fcmp fast oge float %603, 0.000000e+00
  %606 = and i1 %604, %605
  %607 = and i1 %592, %606
  %608 = fcmp fast ole float %602, 1.000000e+00
  %609 = fcmp fast ole float %603, 1.000000e+00
  %610 = and i1 %608, %609
  %611 = and i1 %610, %607
  br label %612

; <label>:612                                     ; preds = %593, %590
  %613 = phi i1 [ %611, %593 ], [ %592, %590 ]
  %614 = or i1 %492, %613
  %615 = fsub fast float %198, %215
  %616 = fsub fast float %199, %216
  %617 = fsub fast float %200, %217
  %618 = fmul fast float %615, %211
  %619 = fmul fast float %616, %212
  %620 = fmul fast float %617, %213
  %621 = fcmp fast oge float %620, 0.000000e+00
  %622 = fcmp fast ole float %620, 1.000000e+00
  br i1 %255, label %623, label %633, !dx.controlflow.hints !34

; <label>:623                                     ; preds = %612
  %624 = fcmp fast oge float %618, 0.000000e+00
  %625 = fcmp fast oge float %619, 0.000000e+00
  %626 = and i1 %624, %625
  %627 = and i1 %621, %626
  %628 = fcmp fast ole float %618, 1.000000e+00
  %629 = fcmp fast ole float %619, 1.000000e+00
  %630 = and i1 %628, %629
  %631 = and i1 %622, %630
  %632 = and i1 %627, %631
  br label %635

; <label>:633                                     ; preds = %612
  %634 = and i1 %621, %622
  br label %635

; <label>:635                                     ; preds = %633, %623
  %636 = phi i1 [ %634, %633 ], [ %632, %623 ]
  %637 = and i1 %209, %636
  br i1 %637, label %638, label %712, !dx.controlflow.hints !35

; <label>:638                                     ; preds = %635
  %639 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %640 = extractvalue %dx.types.CBufRet.i32 %639, 0
  %641 = extractvalue %dx.types.CBufRet.i32 %639, 1
  %642 = uitofp i32 %640 to float
  %643 = uitofp i32 %641 to float
  %644 = fmul fast float %618, %642
  %645 = fmul fast float %619, %643
  %646 = fadd fast float %644, 5.000000e-01
  %647 = fadd fast float %645, 5.000000e-01
  %648 = call float @dx.op.unary.f32(i32 22, float %646)  ; Frc(value)
  %649 = call float @dx.op.unary.f32(i32 22, float %647)  ; Frc(value)
  %650 = call float @dx.op.unary.f32(i32 27, float %646)  ; Round_ni(value)
  %651 = call float @dx.op.unary.f32(i32 27, float %647)  ; Round_ni(value)
  %652 = fadd fast float %650, 1.000000e+00
  %653 = fadd fast float %651, 1.000000e+00
  %654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %655 = extractvalue %dx.types.CBufRet.f32 %654, 0
  %656 = extractvalue %dx.types.CBufRet.f32 %654, 1
  %657 = fmul fast float %655, %652
  %658 = fmul fast float %656, %653
  %659 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %9, %dx.types.Handle %14, float %657, float %658, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %660 = extractvalue %dx.types.ResRet.f32 %659, 0
  %661 = extractvalue %dx.types.ResRet.f32 %659, 1
  %662 = extractvalue %dx.types.ResRet.f32 %659, 2
  %663 = extractvalue %dx.types.ResRet.f32 %659, 3
  %664 = extractvalue %dx.types.CBufRet.i32 %639, 2
  %665 = extractvalue %dx.types.CBufRet.f32 %654, 2
  %666 = uitofp i32 %664 to float
  %667 = fadd fast float %666, -1.000000e+00
  %668 = fmul fast float %667, %660
  %669 = fmul fast float %667, %661
  %670 = fmul fast float %667, %662
  %671 = fmul fast float %667, %663
  %672 = fadd fast float %668, 5.000000e-01
  %673 = fadd fast float %669, 5.000000e-01
  %674 = fadd fast float %670, 5.000000e-01
  %675 = fadd fast float %671, 5.000000e-01
  %676 = fptoui float %672 to i32
  %677 = fptoui float %673 to i32
  %678 = fptoui float %674 to i32
  %679 = fptoui float %675 to i32
  %680 = uitofp i32 %676 to float
  %681 = uitofp i32 %677 to float
  %682 = uitofp i32 %678 to float
  %683 = uitofp i32 %679 to float
  %684 = fadd fast float %680, 5.000000e-01
  %685 = fadd fast float %681, 5.000000e-01
  %686 = fadd fast float %682, 5.000000e-01
  %687 = fadd fast float %683, 5.000000e-01
  %688 = fmul fast float %684, %665
  %689 = fmul fast float %685, %665
  %690 = fmul fast float %686, %665
  %691 = fmul fast float %687, %665
  %692 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %15, float %688, float %620, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %693 = extractvalue %dx.types.ResRet.f32 %692, 0
  %694 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %15, float %689, float %620, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %695 = extractvalue %dx.types.ResRet.f32 %694, 0
  %696 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %15, float %690, float %620, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %697 = extractvalue %dx.types.ResRet.f32 %696, 0
  %698 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %15, float %691, float %620, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %699 = extractvalue %dx.types.ResRet.f32 %698, 0
  %700 = fsub fast float %697, %699
  %701 = fmul fast float %700, %648
  %702 = fadd fast float %701, %699
  %703 = fsub fast float %695, %693
  %704 = fmul fast float %703, %648
  %705 = fadd fast float %704, %693
  %706 = fsub fast float %705, %702
  %707 = fmul fast float %706, %649
  %708 = fadd fast float %707, %702
  %709 = fcmp fast ogt float %708, 0.000000e+00
  %710 = select i1 %709, i32 8, i32 0
  %711 = or i32 %710, %591
  br label %712

; <label>:712                                     ; preds = %638, %635
  %713 = phi i32 [ %711, %638 ], [ %591, %635 ]
  %714 = or i1 %247, %614
  br i1 %714, label %715, label %740, !dx.controlflow.hints !36

; <label>:715                                     ; preds = %712
  %716 = extractvalue %dx.types.CBufRet.f32 %218, 0
  %717 = extractvalue %dx.types.CBufRet.f32 %218, 1
  %718 = fsub fast float %136, %716
  %719 = fsub fast float %137, %717
  %720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %721 = extractvalue %dx.types.CBufRet.f32 %720, 0
  %722 = extractvalue %dx.types.CBufRet.f32 %720, 1
  %723 = fmul fast float %718, %721
  %724 = fmul fast float %719, %722
  %725 = fsub fast float 1.000000e+00, %724
  br i1 %226, label %729, label %726, !dx.controlflow.hints !37

; <label>:726                                     ; preds = %715
  %727 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %14, float %723, float %725, float undef, float undef, i32 0, i32 0, i32 undef, float %206)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %728 = extractvalue %dx.types.ResRet.f32 %727, 3
  br label %732

; <label>:729                                     ; preds = %715
  %730 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %15, float %723, float %725, float undef, float undef, i32 0, i32 0, i32 undef, float %206)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %731 = extractvalue %dx.types.ResRet.f32 %730, 3
  br label %732

; <label>:732                                     ; preds = %729, %726
  %733 = phi float [ %728, %726 ], [ %731, %729 ]
  %734 = fcmp fast ogt float %733, 0.000000e+00
  %735 = extractvalue %dx.types.CBufRet.f32 %720, 2
  %736 = fcmp fast ogt float %735, 0.000000e+00
  %737 = and i1 %734, %736
  %738 = select i1 %737, i32 2, i32 0
  %739 = or i32 %738, %713
  br label %740

; <label>:740                                     ; preds = %732, %712
  %741 = phi i32 [ %739, %732 ], [ %713, %712 ]
  %742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %743 = extractvalue %dx.types.CBufRet.f32 %742, 0
  %744 = extractvalue %dx.types.CBufRet.f32 %742, 1
  %745 = fsub fast float %136, %743
  %746 = fsub fast float %137, %744
  %747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %748 = extractvalue %dx.types.CBufRet.f32 %747, 2
  %749 = extractvalue %dx.types.CBufRet.f32 %747, 3
  %750 = fmul fast float %745, %748
  %751 = fmul fast float %746, %749
  %752 = call float @dx.op.binary.f32(i32 36, float %750, float %751)  ; FMin(a,b)
  %753 = fcmp fast olt float %752, 0.000000e+00
  %754 = call float @dx.op.binary.f32(i32 35, float %750, float %751)  ; FMax(a,b)
  %755 = fcmp fast ogt float %754, 1.000000e+00
  %756 = or i1 %753, %755
  %757 = extractvalue %dx.types.CBufRet.f32 %742, 2
  %758 = fcmp fast olt float %138, %757
  %759 = or i1 %756, %758
  %760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %761 = extractvalue %dx.types.CBufRet.f32 %760, 3
  %762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %763 = extractvalue %dx.types.CBufRet.f32 %762, 0
  %764 = fadd fast float %763, %761
  %765 = fcmp fast ogt float %138, %764
  %766 = or i1 %759, %765
  br i1 %766, label %831, label %767, !dx.controlflow.hints !38

; <label>:767                                     ; preds = %740
  %768 = fsub fast float 1.000000e+00, %751
  %769 = fcmp fast oeq float %206, 0.000000e+00
  br i1 %769, label %775, label %770, !dx.controlflow.hints !39

; <label>:770                                     ; preds = %767
  %771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 417)  ; CBufferLoadLegacy(handle,regIndex)
  %772 = extractvalue %dx.types.CBufRet.f32 %771, 2
  %773 = fmul fast float %772, %206
  %774 = call float @dx.op.unary.f32(i32 23, float %773)  ; Log(value)
  br label %775

; <label>:775                                     ; preds = %770, %767
  %776 = phi float [ %774, %770 ], [ 0.000000e+00, %767 ]
  %777 = fcmp fast ogt float %776, 0.000000e+00
  br i1 %777, label %778, label %786, !dx.controlflow.hints !40

; <label>:778                                     ; preds = %775
  %779 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %750, float %768, float undef, float undef, i32 0, i32 0, i32 undef, float %776)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %780 = extractvalue %dx.types.ResRet.f32 %779, 0
  %781 = extractvalue %dx.types.ResRet.f32 %779, 1
  %782 = extractvalue %dx.types.ResRet.f32 %779, 2
  %783 = fcmp fast ogt float %138, %782
  %784 = fcmp fast olt float %138, %781
  %785 = and i1 %783, %784
  br i1 %785, label %829, label %831, !dx.controlflow.hints !41

; <label>:786                                     ; preds = %775
  %787 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %13, float %750, float %768, float undef, float undef, i32 0, i32 0, i32 undef, float %776)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %788 = extractvalue %dx.types.ResRet.f32 %787, 0
  %789 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %15, float %750, float %768, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %790 = extractvalue %dx.types.ResRet.f32 %789, 0
  %791 = extractvalue %dx.types.ResRet.f32 %789, 1
  %792 = extractvalue %dx.types.ResRet.f32 %789, 2
  %793 = extractvalue %dx.types.ResRet.f32 %789, 3
  %794 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %15, float %750, float %768, float undef, float undef, i32 0, i32 0, i32 1)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %795 = extractvalue %dx.types.ResRet.f32 %794, 0
  %796 = extractvalue %dx.types.ResRet.f32 %794, 1
  %797 = extractvalue %dx.types.ResRet.f32 %794, 2
  %798 = extractvalue %dx.types.ResRet.f32 %794, 3
  %799 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %15, float %750, float %768, float undef, float undef, i32 0, i32 0, i32 2)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %800 = extractvalue %dx.types.ResRet.f32 %799, 0
  %801 = extractvalue %dx.types.ResRet.f32 %799, 1
  %802 = extractvalue %dx.types.ResRet.f32 %799, 2
  %803 = extractvalue %dx.types.ResRet.f32 %799, 3
  %804 = fadd fast float %790, %791
  %805 = fadd fast float %804, %792
  %806 = fadd fast float %805, %793
  %807 = fmul fast float %795, %790
  %808 = fmul fast float %796, %791
  %809 = fadd fast float %807, %808
  %810 = fmul fast float %797, %792
  %811 = fadd fast float %809, %810
  %812 = fmul fast float %798, %793
  %813 = fadd fast float %811, %812
  %814 = fmul fast float %800, %790
  %815 = fmul fast float %801, %791
  %816 = fadd fast float %814, %815
  %817 = fmul fast float %802, %792
  %818 = fadd fast float %816, %817
  %819 = fmul fast float %803, %793
  %820 = fadd fast float %818, %819
  %821 = fcmp fast ogt float %806, 0.000000e+00
  %822 = fdiv fast float %813, %806
  %823 = select i1 %821, float %822, float 0.000000e+00
  %824 = fdiv fast float %820, %806
  %825 = select i1 %821, float %824, float 0.000000e+00
  %826 = fcmp fast ogt float %138, %825
  %827 = fcmp fast olt float %138, %823
  %828 = and i1 %827, %826
  br i1 %828, label %829, label %831, !dx.controlflow.hints !42

; <label>:829                                     ; preds = %786, %778
  %830 = phi float [ %780, %778 ], [ %788, %786 ]
  br label %831

; <label>:831                                     ; preds = %829, %786, %778, %740
  %832 = phi float [ %830, %829 ], [ 0.000000e+00, %740 ], [ 0.000000e+00, %778 ], [ 0.000000e+00, %786 ]
  %833 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %834 = extractvalue %dx.types.CBufRet.i32 %833, 0
  %835 = icmp ne i32 %834, 0
  %836 = fcmp fast olt float %748, 1.000000e+00
  %837 = and i1 %835, %836
  %838 = fcmp fast olt float %749, 1.000000e+00
  %839 = and i1 %837, %838
  %840 = fcmp fast ogt float %832, 0.000000e+00
  %841 = and i1 %840, %839
  %842 = zext i1 %841 to i32
  %843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %844 = extractvalue %dx.types.CBufRet.f32 %843, 0
  %845 = bitcast float %844 to i32
  %846 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %847 = extractvalue %dx.types.CBufRet.i32 %846, 0
  %848 = mul i32 %845, %132
  %849 = icmp eq i32 %845, 0
  br i1 %849, label %1280, label %850

; <label>:850                                     ; preds = %831
  br label %851

; <label>:851                                     ; preds = %1272, %850
  %852 = phi i32 [ %1277, %1272 ], [ 0, %850 ]
  %853 = phi i32 [ %1276, %1272 ], [ 0, %850 ]
  br label %854

; <label>:854                                     ; preds = %1268, %851
  %855 = phi i32 [ 0, %851 ], [ %1269, %1268 ]
  %856 = phi i32 [ 0, %851 ], [ %1270, %1268 ]
  %857 = call i32 @dx.op.tertiary.i32(i32 49, i32 %852, i32 32, i32 %856)  ; UMad(a,b,c)
  %858 = icmp ult i32 %857, %847
  br i1 %858, label %859, label %1268, !dx.controlflow.hints !43

; <label>:859                                     ; preds = %854
  %860 = mul i32 %857, 60
  %861 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %860, i32 undef)  ; BufferLoad(srv,index,wot)
  %862 = extractvalue %dx.types.ResRet.f32 %861, 0
  %863 = extractvalue %dx.types.ResRet.f32 %861, 1
  %864 = extractvalue %dx.types.ResRet.f32 %861, 2
  %865 = add i32 %860, 12
  %866 = add i32 %860, 48
  %867 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %866, i32 undef)  ; BufferLoad(srv,index,wot)
  %868 = extractvalue %dx.types.ResRet.f32 %867, 0
  %869 = extractvalue %dx.types.ResRet.f32 %867, 1
  %870 = extractvalue %dx.types.ResRet.f32 %867, 2
  %871 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %865, i32 undef)  ; BufferLoad(srv,index,wot)
  %872 = extractvalue %dx.types.ResRet.f32 %871, 0
  %873 = extractvalue %dx.types.ResRet.f32 %871, 1
  %874 = extractvalue %dx.types.ResRet.f32 %871, 2
  %875 = call float @dx.op.dot3.f32(i32 55, float %862, float %863, float %864, float %872, float %873, float %874)  ; Dot3(ax,ay,az,bx,by,bz)
  %876 = call float @dx.op.dot3.f32(i32 55, float %872, float %873, float %874, float %872, float %873, float %874)  ; Dot3(ax,ay,az,bx,by,bz)
  %877 = fmul fast float %876, %868
  %878 = call float @dx.op.unary.f32(i32 6, float %877)  ; FAbs(value)
  %879 = add i32 %860, 24
  %880 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %879, i32 undef)  ; BufferLoad(srv,index,wot)
  %881 = extractvalue %dx.types.ResRet.f32 %880, 0
  %882 = extractvalue %dx.types.ResRet.f32 %880, 1
  %883 = extractvalue %dx.types.ResRet.f32 %880, 2
  %884 = call float @dx.op.dot3.f32(i32 55, float %881, float %882, float %883, float %872, float %873, float %874)  ; Dot3(ax,ay,az,bx,by,bz)
  %885 = fmul fast float %884, %869
  %886 = call float @dx.op.unary.f32(i32 6, float %885)  ; FAbs(value)
  %887 = fadd fast float %886, %878
  %888 = add i32 %860, 36
  %889 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %888, i32 undef)  ; BufferLoad(srv,index,wot)
  %890 = extractvalue %dx.types.ResRet.f32 %889, 0
  %891 = extractvalue %dx.types.ResRet.f32 %889, 1
  %892 = extractvalue %dx.types.ResRet.f32 %889, 2
  %893 = call float @dx.op.dot3.f32(i32 55, float %890, float %891, float %892, float %872, float %873, float %874)  ; Dot3(ax,ay,az,bx,by,bz)
  %894 = fmul fast float %893, %870
  %895 = call float @dx.op.unary.f32(i32 6, float %894)  ; FAbs(value)
  %896 = fadd fast float %887, %895
  %897 = fsub fast float %875, %896
  %898 = fadd fast float %896, %875
  %899 = call float @dx.op.dot3.f32(i32 55, float %97, float %98, float %99, float %872, float %873, float %874)  ; Dot3(ax,ay,az,bx,by,bz)
  %900 = call float @dx.op.dot3.f32(i32 55, float %101, float %103, float %105, float %872, float %873, float %874)  ; Dot3(ax,ay,az,bx,by,bz)
  %901 = call float @dx.op.unary.f32(i32 6, float %900)  ; FAbs(value)
  %902 = call float @dx.op.dot3.f32(i32 55, float %108, float %109, float %110, float %872, float %873, float %874)  ; Dot3(ax,ay,az,bx,by,bz)
  %903 = call float @dx.op.unary.f32(i32 6, float %902)  ; FAbs(value)
  %904 = fadd fast float %903, %901
  %905 = fsub fast float %899, %904
  %906 = fadd fast float %904, %899
  %907 = call float @dx.op.dot3.f32(i32 55, float %114, float %115, float %116, float %872, float %873, float %874)  ; Dot3(ax,ay,az,bx,by,bz)
  %908 = call float @dx.op.dot3.f32(i32 55, float %118, float %120, float %122, float %872, float %873, float %874)  ; Dot3(ax,ay,az,bx,by,bz)
  %909 = call float @dx.op.unary.f32(i32 6, float %908)  ; FAbs(value)
  %910 = call float @dx.op.dot3.f32(i32 55, float %125, float %126, float %127, float %872, float %873, float %874)  ; Dot3(ax,ay,az,bx,by,bz)
  %911 = call float @dx.op.unary.f32(i32 6, float %910)  ; FAbs(value)
  %912 = fadd fast float %911, %909
  %913 = fsub fast float %907, %912
  %914 = fadd fast float %912, %907
  %915 = fcmp fast olt float %913, %905
  %916 = select i1 %915, float %913, float %905
  %917 = fcmp fast ogt float %914, %906
  %918 = select i1 %917, float %914, float %906
  %919 = fcmp fast olt float %918, %897
  %920 = fcmp fast olt float %898, %916
  %921 = or i1 %919, %920
  br i1 %921, label %1263, label %922, !dx.controlflow.hints !44

; <label>:922                                     ; preds = %859
  %923 = call float @dx.op.dot3.f32(i32 55, float %862, float %863, float %864, float %881, float %882, float %883)  ; Dot3(ax,ay,az,bx,by,bz)
  %924 = call float @dx.op.dot3.f32(i32 55, float %872, float %873, float %874, float %881, float %882, float %883)  ; Dot3(ax,ay,az,bx,by,bz)
  %925 = fmul fast float %924, %868
  %926 = call float @dx.op.unary.f32(i32 6, float %925)  ; FAbs(value)
  %927 = call float @dx.op.dot3.f32(i32 55, float %881, float %882, float %883, float %881, float %882, float %883)  ; Dot3(ax,ay,az,bx,by,bz)
  %928 = fmul fast float %927, %869
  %929 = call float @dx.op.unary.f32(i32 6, float %928)  ; FAbs(value)
  %930 = fadd fast float %929, %926
  %931 = call float @dx.op.dot3.f32(i32 55, float %890, float %891, float %892, float %881, float %882, float %883)  ; Dot3(ax,ay,az,bx,by,bz)
  %932 = fmul fast float %931, %870
  %933 = call float @dx.op.unary.f32(i32 6, float %932)  ; FAbs(value)
  %934 = fadd fast float %930, %933
  %935 = fsub fast float %923, %934
  %936 = fadd fast float %934, %923
  %937 = call float @dx.op.dot3.f32(i32 55, float %97, float %98, float %99, float %881, float %882, float %883)  ; Dot3(ax,ay,az,bx,by,bz)
  %938 = call float @dx.op.dot3.f32(i32 55, float %101, float %103, float %105, float %881, float %882, float %883)  ; Dot3(ax,ay,az,bx,by,bz)
  %939 = call float @dx.op.unary.f32(i32 6, float %938)  ; FAbs(value)
  %940 = call float @dx.op.dot3.f32(i32 55, float %108, float %109, float %110, float %881, float %882, float %883)  ; Dot3(ax,ay,az,bx,by,bz)
  %941 = call float @dx.op.unary.f32(i32 6, float %940)  ; FAbs(value)
  %942 = fadd fast float %941, %939
  %943 = fsub fast float %937, %942
  %944 = fadd fast float %942, %937
  %945 = call float @dx.op.dot3.f32(i32 55, float %114, float %115, float %116, float %881, float %882, float %883)  ; Dot3(ax,ay,az,bx,by,bz)
  %946 = call float @dx.op.dot3.f32(i32 55, float %118, float %120, float %122, float %881, float %882, float %883)  ; Dot3(ax,ay,az,bx,by,bz)
  %947 = call float @dx.op.unary.f32(i32 6, float %946)  ; FAbs(value)
  %948 = call float @dx.op.dot3.f32(i32 55, float %125, float %126, float %127, float %881, float %882, float %883)  ; Dot3(ax,ay,az,bx,by,bz)
  %949 = call float @dx.op.unary.f32(i32 6, float %948)  ; FAbs(value)
  %950 = fadd fast float %949, %947
  %951 = fsub fast float %945, %950
  %952 = fadd fast float %950, %945
  %953 = fcmp fast olt float %951, %943
  %954 = select i1 %953, float %951, float %943
  %955 = fcmp fast ogt float %952, %944
  %956 = select i1 %955, float %952, float %944
  %957 = fcmp fast olt float %956, %935
  %958 = fcmp fast olt float %936, %954
  %959 = or i1 %957, %958
  br i1 %959, label %1263, label %960, !dx.controlflow.hints !44

; <label>:960                                     ; preds = %922
  %961 = call float @dx.op.dot3.f32(i32 55, float %862, float %863, float %864, float %890, float %891, float %892)  ; Dot3(ax,ay,az,bx,by,bz)
  %962 = call float @dx.op.dot3.f32(i32 55, float %872, float %873, float %874, float %890, float %891, float %892)  ; Dot3(ax,ay,az,bx,by,bz)
  %963 = fmul fast float %962, %868
  %964 = call float @dx.op.unary.f32(i32 6, float %963)  ; FAbs(value)
  %965 = call float @dx.op.dot3.f32(i32 55, float %881, float %882, float %883, float %890, float %891, float %892)  ; Dot3(ax,ay,az,bx,by,bz)
  %966 = fmul fast float %965, %869
  %967 = call float @dx.op.unary.f32(i32 6, float %966)  ; FAbs(value)
  %968 = fadd fast float %967, %964
  %969 = call float @dx.op.dot3.f32(i32 55, float %890, float %891, float %892, float %890, float %891, float %892)  ; Dot3(ax,ay,az,bx,by,bz)
  %970 = fmul fast float %969, %870
  %971 = call float @dx.op.unary.f32(i32 6, float %970)  ; FAbs(value)
  %972 = fadd fast float %968, %971
  %973 = fsub fast float %961, %972
  %974 = fadd fast float %972, %961
  %975 = call float @dx.op.dot3.f32(i32 55, float %97, float %98, float %99, float %890, float %891, float %892)  ; Dot3(ax,ay,az,bx,by,bz)
  %976 = call float @dx.op.dot3.f32(i32 55, float %101, float %103, float %105, float %890, float %891, float %892)  ; Dot3(ax,ay,az,bx,by,bz)
  %977 = call float @dx.op.unary.f32(i32 6, float %976)  ; FAbs(value)
  %978 = call float @dx.op.dot3.f32(i32 55, float %108, float %109, float %110, float %890, float %891, float %892)  ; Dot3(ax,ay,az,bx,by,bz)
  %979 = call float @dx.op.unary.f32(i32 6, float %978)  ; FAbs(value)
  %980 = fadd fast float %979, %977
  %981 = fsub fast float %975, %980
  %982 = fadd fast float %980, %975
  %983 = call float @dx.op.dot3.f32(i32 55, float %114, float %115, float %116, float %890, float %891, float %892)  ; Dot3(ax,ay,az,bx,by,bz)
  %984 = call float @dx.op.dot3.f32(i32 55, float %118, float %120, float %122, float %890, float %891, float %892)  ; Dot3(ax,ay,az,bx,by,bz)
  %985 = call float @dx.op.unary.f32(i32 6, float %984)  ; FAbs(value)
  %986 = call float @dx.op.dot3.f32(i32 55, float %125, float %126, float %127, float %890, float %891, float %892)  ; Dot3(ax,ay,az,bx,by,bz)
  %987 = call float @dx.op.unary.f32(i32 6, float %986)  ; FAbs(value)
  %988 = fadd fast float %987, %985
  %989 = fsub fast float %983, %988
  %990 = fadd fast float %988, %983
  %991 = fcmp fast olt float %989, %981
  %992 = select i1 %991, float %989, float %981
  %993 = fcmp fast ogt float %990, %982
  %994 = select i1 %993, float %990, float %982
  %995 = fcmp fast olt float %994, %973
  %996 = fcmp fast olt float %974, %992
  %997 = or i1 %995, %996
  br i1 %997, label %1263, label %998, !dx.controlflow.hints !44

; <label>:998                                     ; preds = %960
  %999 = fmul fast float %110, %103
  %1000 = fmul fast float %109, %105
  %1001 = fsub fast float %999, %1000
  %1002 = fmul fast float %108, %105
  %1003 = fmul fast float %110, %101
  %1004 = fsub fast float %1002, %1003
  %1005 = fmul fast float %109, %101
  %1006 = fmul fast float %108, %103
  %1007 = fsub fast float %1005, %1006
  %1008 = call float @dx.op.dot3.f32(i32 55, float %862, float %863, float %864, float %1001, float %1004, float %1007)  ; Dot3(ax,ay,az,bx,by,bz)
  %1009 = call float @dx.op.dot3.f32(i32 55, float %872, float %873, float %874, float %1001, float %1004, float %1007)  ; Dot3(ax,ay,az,bx,by,bz)
  %1010 = fmul fast float %1009, %868
  %1011 = call float @dx.op.unary.f32(i32 6, float %1010)  ; FAbs(value)
  %1012 = call float @dx.op.dot3.f32(i32 55, float %881, float %882, float %883, float %1001, float %1004, float %1007)  ; Dot3(ax,ay,az,bx,by,bz)
  %1013 = fmul fast float %1012, %869
  %1014 = call float @dx.op.unary.f32(i32 6, float %1013)  ; FAbs(value)
  %1015 = fadd fast float %1014, %1011
  %1016 = call float @dx.op.dot3.f32(i32 55, float %890, float %891, float %892, float %1001, float %1004, float %1007)  ; Dot3(ax,ay,az,bx,by,bz)
  %1017 = fmul fast float %1016, %870
  %1018 = call float @dx.op.unary.f32(i32 6, float %1017)  ; FAbs(value)
  %1019 = fadd fast float %1015, %1018
  %1020 = fsub fast float %1008, %1019
  %1021 = fadd fast float %1019, %1008
  %1022 = call float @dx.op.dot3.f32(i32 55, float %97, float %98, float %99, float %1001, float %1004, float %1007)  ; Dot3(ax,ay,az,bx,by,bz)
  %1023 = call float @dx.op.dot3.f32(i32 55, float %101, float %103, float %105, float %1001, float %1004, float %1007)  ; Dot3(ax,ay,az,bx,by,bz)
  %1024 = call float @dx.op.unary.f32(i32 6, float %1023)  ; FAbs(value)
  %1025 = call float @dx.op.dot3.f32(i32 55, float %108, float %109, float %110, float %1001, float %1004, float %1007)  ; Dot3(ax,ay,az,bx,by,bz)
  %1026 = call float @dx.op.unary.f32(i32 6, float %1025)  ; FAbs(value)
  %1027 = fadd fast float %1026, %1024
  %1028 = fsub fast float %1022, %1027
  %1029 = fadd fast float %1027, %1022
  %1030 = call float @dx.op.dot3.f32(i32 55, float %114, float %115, float %116, float %1001, float %1004, float %1007)  ; Dot3(ax,ay,az,bx,by,bz)
  %1031 = call float @dx.op.dot3.f32(i32 55, float %118, float %120, float %122, float %1001, float %1004, float %1007)  ; Dot3(ax,ay,az,bx,by,bz)
  %1032 = call float @dx.op.unary.f32(i32 6, float %1031)  ; FAbs(value)
  %1033 = call float @dx.op.dot3.f32(i32 55, float %125, float %126, float %127, float %1001, float %1004, float %1007)  ; Dot3(ax,ay,az,bx,by,bz)
  %1034 = call float @dx.op.unary.f32(i32 6, float %1033)  ; FAbs(value)
  %1035 = fadd fast float %1034, %1032
  %1036 = fsub fast float %1030, %1035
  %1037 = fadd fast float %1035, %1030
  %1038 = fcmp fast olt float %1036, %1028
  %1039 = select i1 %1038, float %1036, float %1028
  %1040 = fcmp fast ogt float %1037, %1029
  %1041 = select i1 %1040, float %1037, float %1029
  %1042 = fcmp fast olt float %1041, %1020
  %1043 = fcmp fast olt float %1021, %1039
  %1044 = or i1 %1042, %1043
  br i1 %1044, label %1263, label %1045, !dx.controlflow.hints !45

; <label>:1045                                    ; preds = %998
  %1046 = fsub fast float %101, %97
  %1047 = fadd fast float %1046, %108
  %1048 = fsub fast float %1047, %118
  %1049 = fadd fast float %1048, %114
  %1050 = fsub fast float %1049, %125
  %1051 = fsub fast float %103, %98
  %1052 = fadd fast float %1051, %109
  %1053 = fsub fast float %1052, %120
  %1054 = fadd fast float %1053, %115
  %1055 = fsub fast float %1054, %126
  %1056 = fsub fast float %105, %99
  %1057 = fadd fast float %1056, %110
  %1058 = fsub fast float %1057, %122
  %1059 = fadd fast float %1058, %116
  %1060 = fsub fast float %1059, %127
  %1061 = fmul fast float %1060, %103
  %1062 = fmul fast float %1055, %105
  %1063 = fsub fast float %1061, %1062
  %1064 = fmul fast float %1050, %105
  %1065 = fmul fast float %1060, %101
  %1066 = fsub fast float %1064, %1065
  %1067 = fmul fast float %1055, %101
  %1068 = fmul fast float %1050, %103
  %1069 = fsub fast float %1067, %1068
  %1070 = call float @dx.op.dot3.f32(i32 55, float %862, float %863, float %864, float %1063, float %1066, float %1069)  ; Dot3(ax,ay,az,bx,by,bz)
  %1071 = call float @dx.op.dot3.f32(i32 55, float %872, float %873, float %874, float %1063, float %1066, float %1069)  ; Dot3(ax,ay,az,bx,by,bz)
  %1072 = fmul fast float %1071, %868
  %1073 = call float @dx.op.unary.f32(i32 6, float %1072)  ; FAbs(value)
  %1074 = call float @dx.op.dot3.f32(i32 55, float %881, float %882, float %883, float %1063, float %1066, float %1069)  ; Dot3(ax,ay,az,bx,by,bz)
  %1075 = fmul fast float %1074, %869
  %1076 = call float @dx.op.unary.f32(i32 6, float %1075)  ; FAbs(value)
  %1077 = fadd fast float %1076, %1073
  %1078 = call float @dx.op.dot3.f32(i32 55, float %890, float %891, float %892, float %1063, float %1066, float %1069)  ; Dot3(ax,ay,az,bx,by,bz)
  %1079 = fmul fast float %1078, %870
  %1080 = call float @dx.op.unary.f32(i32 6, float %1079)  ; FAbs(value)
  %1081 = fadd fast float %1077, %1080
  %1082 = fsub fast float %1070, %1081
  %1083 = fadd fast float %1081, %1070
  %1084 = call float @dx.op.dot3.f32(i32 55, float %97, float %98, float %99, float %1063, float %1066, float %1069)  ; Dot3(ax,ay,az,bx,by,bz)
  %1085 = call float @dx.op.dot3.f32(i32 55, float %101, float %103, float %105, float %1063, float %1066, float %1069)  ; Dot3(ax,ay,az,bx,by,bz)
  %1086 = call float @dx.op.unary.f32(i32 6, float %1085)  ; FAbs(value)
  %1087 = call float @dx.op.dot3.f32(i32 55, float %108, float %109, float %110, float %1063, float %1066, float %1069)  ; Dot3(ax,ay,az,bx,by,bz)
  %1088 = call float @dx.op.unary.f32(i32 6, float %1087)  ; FAbs(value)
  %1089 = fadd fast float %1088, %1086
  %1090 = fsub fast float %1084, %1089
  %1091 = fadd fast float %1089, %1084
  %1092 = call float @dx.op.dot3.f32(i32 55, float %114, float %115, float %116, float %1063, float %1066, float %1069)  ; Dot3(ax,ay,az,bx,by,bz)
  %1093 = call float @dx.op.dot3.f32(i32 55, float %118, float %120, float %122, float %1063, float %1066, float %1069)  ; Dot3(ax,ay,az,bx,by,bz)
  %1094 = call float @dx.op.unary.f32(i32 6, float %1093)  ; FAbs(value)
  %1095 = call float @dx.op.dot3.f32(i32 55, float %125, float %126, float %127, float %1063, float %1066, float %1069)  ; Dot3(ax,ay,az,bx,by,bz)
  %1096 = call float @dx.op.unary.f32(i32 6, float %1095)  ; FAbs(value)
  %1097 = fadd fast float %1096, %1094
  %1098 = fsub fast float %1092, %1097
  %1099 = fadd fast float %1097, %1092
  %1100 = fcmp fast olt float %1098, %1090
  %1101 = select i1 %1100, float %1098, float %1090
  %1102 = fcmp fast ogt float %1099, %1091
  %1103 = select i1 %1102, float %1099, float %1091
  %1104 = fcmp fast olt float %1103, %1082
  %1105 = fcmp fast olt float %1083, %1101
  %1106 = or i1 %1104, %1105
  br i1 %1106, label %1263, label %1107, !dx.controlflow.hints !46

; <label>:1107                                    ; preds = %1045
  %1108 = fmul fast float %1060, %109
  %1109 = fmul fast float %1055, %110
  %1110 = fsub fast float %1108, %1109
  %1111 = fmul fast float %1050, %110
  %1112 = fmul fast float %1060, %108
  %1113 = fsub fast float %1111, %1112
  %1114 = fmul fast float %1055, %108
  %1115 = fmul fast float %1050, %109
  %1116 = fsub fast float %1114, %1115
  %1117 = call float @dx.op.dot3.f32(i32 55, float %862, float %863, float %864, float %1110, float %1113, float %1116)  ; Dot3(ax,ay,az,bx,by,bz)
  %1118 = call float @dx.op.dot3.f32(i32 55, float %872, float %873, float %874, float %1110, float %1113, float %1116)  ; Dot3(ax,ay,az,bx,by,bz)
  %1119 = fmul fast float %1118, %868
  %1120 = call float @dx.op.unary.f32(i32 6, float %1119)  ; FAbs(value)
  %1121 = call float @dx.op.dot3.f32(i32 55, float %881, float %882, float %883, float %1110, float %1113, float %1116)  ; Dot3(ax,ay,az,bx,by,bz)
  %1122 = fmul fast float %1121, %869
  %1123 = call float @dx.op.unary.f32(i32 6, float %1122)  ; FAbs(value)
  %1124 = fadd fast float %1123, %1120
  %1125 = call float @dx.op.dot3.f32(i32 55, float %890, float %891, float %892, float %1110, float %1113, float %1116)  ; Dot3(ax,ay,az,bx,by,bz)
  %1126 = fmul fast float %1125, %870
  %1127 = call float @dx.op.unary.f32(i32 6, float %1126)  ; FAbs(value)
  %1128 = fadd fast float %1124, %1127
  %1129 = fsub fast float %1117, %1128
  %1130 = fadd fast float %1128, %1117
  %1131 = call float @dx.op.dot3.f32(i32 55, float %97, float %98, float %99, float %1110, float %1113, float %1116)  ; Dot3(ax,ay,az,bx,by,bz)
  %1132 = call float @dx.op.dot3.f32(i32 55, float %101, float %103, float %105, float %1110, float %1113, float %1116)  ; Dot3(ax,ay,az,bx,by,bz)
  %1133 = call float @dx.op.unary.f32(i32 6, float %1132)  ; FAbs(value)
  %1134 = call float @dx.op.dot3.f32(i32 55, float %108, float %109, float %110, float %1110, float %1113, float %1116)  ; Dot3(ax,ay,az,bx,by,bz)
  %1135 = call float @dx.op.unary.f32(i32 6, float %1134)  ; FAbs(value)
  %1136 = fadd fast float %1135, %1133
  %1137 = fsub fast float %1131, %1136
  %1138 = fadd fast float %1136, %1131
  %1139 = call float @dx.op.dot3.f32(i32 55, float %114, float %115, float %116, float %1110, float %1113, float %1116)  ; Dot3(ax,ay,az,bx,by,bz)
  %1140 = call float @dx.op.dot3.f32(i32 55, float %118, float %120, float %122, float %1110, float %1113, float %1116)  ; Dot3(ax,ay,az,bx,by,bz)
  %1141 = call float @dx.op.unary.f32(i32 6, float %1140)  ; FAbs(value)
  %1142 = call float @dx.op.dot3.f32(i32 55, float %125, float %126, float %127, float %1110, float %1113, float %1116)  ; Dot3(ax,ay,az,bx,by,bz)
  %1143 = call float @dx.op.unary.f32(i32 6, float %1142)  ; FAbs(value)
  %1144 = fadd fast float %1143, %1141
  %1145 = fsub fast float %1139, %1144
  %1146 = fadd fast float %1144, %1139
  %1147 = fcmp fast olt float %1145, %1137
  %1148 = select i1 %1147, float %1145, float %1137
  %1149 = fcmp fast ogt float %1146, %1138
  %1150 = select i1 %1149, float %1146, float %1138
  %1151 = fcmp fast olt float %1150, %1129
  %1152 = fcmp fast olt float %1130, %1148
  %1153 = or i1 %1151, %1152
  br i1 %1153, label %1263, label %1154, !dx.controlflow.hints !47

; <label>:1154                                    ; preds = %1107
  %1155 = fsub fast float %102, %97
  %1156 = fsub fast float %1155, %108
  %1157 = fadd fast float %1156, %118
  %1158 = fadd fast float %1157, %114
  %1159 = fadd fast float %1158, %125
  %1160 = fsub fast float %104, %98
  %1161 = fsub fast float %1160, %109
  %1162 = fadd fast float %1161, %120
  %1163 = fadd fast float %1162, %115
  %1164 = fadd fast float %1163, %126
  %1165 = fsub fast float %106, %99
  %1166 = fsub fast float %1165, %110
  %1167 = fadd fast float %1166, %122
  %1168 = fadd fast float %1167, %116
  %1169 = fadd fast float %1168, %127
  %1170 = fmul fast float %1169, %103
  %1171 = fmul fast float %1164, %105
  %1172 = fsub fast float %1170, %1171
  %1173 = fmul fast float %1159, %105
  %1174 = fmul fast float %1169, %101
  %1175 = fsub fast float %1173, %1174
  %1176 = fmul fast float %1164, %101
  %1177 = fmul fast float %1159, %103
  %1178 = fsub fast float %1176, %1177
  %1179 = call float @dx.op.dot3.f32(i32 55, float %862, float %863, float %864, float %1172, float %1175, float %1178)  ; Dot3(ax,ay,az,bx,by,bz)
  %1180 = call float @dx.op.dot3.f32(i32 55, float %872, float %873, float %874, float %1172, float %1175, float %1178)  ; Dot3(ax,ay,az,bx,by,bz)
  %1181 = fmul fast float %1180, %868
  %1182 = call float @dx.op.unary.f32(i32 6, float %1181)  ; FAbs(value)
  %1183 = call float @dx.op.dot3.f32(i32 55, float %881, float %882, float %883, float %1172, float %1175, float %1178)  ; Dot3(ax,ay,az,bx,by,bz)
  %1184 = fmul fast float %1183, %869
  %1185 = call float @dx.op.unary.f32(i32 6, float %1184)  ; FAbs(value)
  %1186 = fadd fast float %1185, %1182
  %1187 = call float @dx.op.dot3.f32(i32 55, float %890, float %891, float %892, float %1172, float %1175, float %1178)  ; Dot3(ax,ay,az,bx,by,bz)
  %1188 = fmul fast float %1187, %870
  %1189 = call float @dx.op.unary.f32(i32 6, float %1188)  ; FAbs(value)
  %1190 = fadd fast float %1186, %1189
  %1191 = fsub fast float %1179, %1190
  %1192 = fadd fast float %1190, %1179
  %1193 = call float @dx.op.dot3.f32(i32 55, float %97, float %98, float %99, float %1172, float %1175, float %1178)  ; Dot3(ax,ay,az,bx,by,bz)
  %1194 = call float @dx.op.dot3.f32(i32 55, float %101, float %103, float %105, float %1172, float %1175, float %1178)  ; Dot3(ax,ay,az,bx,by,bz)
  %1195 = call float @dx.op.unary.f32(i32 6, float %1194)  ; FAbs(value)
  %1196 = call float @dx.op.dot3.f32(i32 55, float %108, float %109, float %110, float %1172, float %1175, float %1178)  ; Dot3(ax,ay,az,bx,by,bz)
  %1197 = call float @dx.op.unary.f32(i32 6, float %1196)  ; FAbs(value)
  %1198 = fadd fast float %1197, %1195
  %1199 = fsub fast float %1193, %1198
  %1200 = fadd fast float %1198, %1193
  %1201 = call float @dx.op.dot3.f32(i32 55, float %114, float %115, float %116, float %1172, float %1175, float %1178)  ; Dot3(ax,ay,az,bx,by,bz)
  %1202 = call float @dx.op.dot3.f32(i32 55, float %118, float %120, float %122, float %1172, float %1175, float %1178)  ; Dot3(ax,ay,az,bx,by,bz)
  %1203 = call float @dx.op.unary.f32(i32 6, float %1202)  ; FAbs(value)
  %1204 = call float @dx.op.dot3.f32(i32 55, float %125, float %126, float %127, float %1172, float %1175, float %1178)  ; Dot3(ax,ay,az,bx,by,bz)
  %1205 = call float @dx.op.unary.f32(i32 6, float %1204)  ; FAbs(value)
  %1206 = fadd fast float %1205, %1203
  %1207 = fsub fast float %1201, %1206
  %1208 = fadd fast float %1206, %1201
  %1209 = fcmp fast olt float %1207, %1199
  %1210 = select i1 %1209, float %1207, float %1199
  %1211 = fcmp fast ogt float %1208, %1200
  %1212 = select i1 %1211, float %1208, float %1200
  %1213 = fcmp fast olt float %1212, %1191
  %1214 = fcmp fast olt float %1192, %1210
  %1215 = or i1 %1213, %1214
  br i1 %1215, label %1263, label %1216, !dx.controlflow.hints !48

; <label>:1216                                    ; preds = %1154
  %1217 = fmul fast float %1169, %109
  %1218 = fmul fast float %1164, %110
  %1219 = fsub fast float %1217, %1218
  %1220 = fmul fast float %1159, %110
  %1221 = fmul fast float %1169, %108
  %1222 = fsub fast float %1220, %1221
  %1223 = fmul fast float %1164, %108
  %1224 = fmul fast float %1159, %109
  %1225 = fsub fast float %1223, %1224
  %1226 = call float @dx.op.dot3.f32(i32 55, float %862, float %863, float %864, float %1219, float %1222, float %1225)  ; Dot3(ax,ay,az,bx,by,bz)
  %1227 = call float @dx.op.dot3.f32(i32 55, float %872, float %873, float %874, float %1219, float %1222, float %1225)  ; Dot3(ax,ay,az,bx,by,bz)
  %1228 = fmul fast float %1227, %868
  %1229 = call float @dx.op.unary.f32(i32 6, float %1228)  ; FAbs(value)
  %1230 = call float @dx.op.dot3.f32(i32 55, float %881, float %882, float %883, float %1219, float %1222, float %1225)  ; Dot3(ax,ay,az,bx,by,bz)
  %1231 = fmul fast float %1230, %869
  %1232 = call float @dx.op.unary.f32(i32 6, float %1231)  ; FAbs(value)
  %1233 = fadd fast float %1232, %1229
  %1234 = call float @dx.op.dot3.f32(i32 55, float %890, float %891, float %892, float %1219, float %1222, float %1225)  ; Dot3(ax,ay,az,bx,by,bz)
  %1235 = fmul fast float %1234, %870
  %1236 = call float @dx.op.unary.f32(i32 6, float %1235)  ; FAbs(value)
  %1237 = fadd fast float %1233, %1236
  %1238 = fsub fast float %1226, %1237
  %1239 = fadd fast float %1237, %1226
  %1240 = call float @dx.op.dot3.f32(i32 55, float %97, float %98, float %99, float %1219, float %1222, float %1225)  ; Dot3(ax,ay,az,bx,by,bz)
  %1241 = call float @dx.op.dot3.f32(i32 55, float %101, float %103, float %105, float %1219, float %1222, float %1225)  ; Dot3(ax,ay,az,bx,by,bz)
  %1242 = call float @dx.op.unary.f32(i32 6, float %1241)  ; FAbs(value)
  %1243 = call float @dx.op.dot3.f32(i32 55, float %108, float %109, float %110, float %1219, float %1222, float %1225)  ; Dot3(ax,ay,az,bx,by,bz)
  %1244 = call float @dx.op.unary.f32(i32 6, float %1243)  ; FAbs(value)
  %1245 = fadd fast float %1244, %1242
  %1246 = fsub fast float %1240, %1245
  %1247 = fadd fast float %1245, %1240
  %1248 = call float @dx.op.dot3.f32(i32 55, float %114, float %115, float %116, float %1219, float %1222, float %1225)  ; Dot3(ax,ay,az,bx,by,bz)
  %1249 = call float @dx.op.dot3.f32(i32 55, float %118, float %120, float %122, float %1219, float %1222, float %1225)  ; Dot3(ax,ay,az,bx,by,bz)
  %1250 = call float @dx.op.unary.f32(i32 6, float %1249)  ; FAbs(value)
  %1251 = call float @dx.op.dot3.f32(i32 55, float %125, float %126, float %127, float %1219, float %1222, float %1225)  ; Dot3(ax,ay,az,bx,by,bz)
  %1252 = call float @dx.op.unary.f32(i32 6, float %1251)  ; FAbs(value)
  %1253 = fadd fast float %1252, %1250
  %1254 = fsub fast float %1248, %1253
  %1255 = fadd fast float %1253, %1248
  %1256 = fcmp fast olt float %1254, %1246
  %1257 = select i1 %1256, float %1254, float %1246
  %1258 = fcmp fast ogt float %1255, %1247
  %1259 = select i1 %1258, float %1255, float %1247
  %1260 = fcmp uge float %1259, %1238
  %1261 = fcmp uge float %1239, %1257
  %1262 = and i1 %1261, %1260
  br label %1263

; <label>:1263                                    ; preds = %1216, %1154, %1107, %1045, %998, %960, %922, %859
  %1264 = phi i1 [ false, %998 ], [ false, %1045 ], [ false, %1107 ], [ false, %1154 ], [ %1262, %1216 ], [ false, %960 ], [ false, %922 ], [ false, %859 ]
  br i1 %1264, label %1265, label %1268, !dx.controlflow.hints !49

; <label>:1265                                    ; preds = %1263
  %1266 = shl i32 1, %856
  %1267 = or i32 %1266, %855
  br label %1268

; <label>:1268                                    ; preds = %1265, %1263, %854
  %1269 = phi i32 [ %1267, %1265 ], [ %855, %1263 ], [ %855, %854 ]
  %1270 = add nuw nsw i32 %856, 1
  %1271 = icmp eq i32 %1270, 32
  br i1 %1271, label %1272, label %854

; <label>:1272                                    ; preds = %1268
  %1273 = add i32 %852, %848
  %1274 = shl i32 %1273, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1274, i32 undef, i32 %1269, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1275 = icmp eq i32 %852, 0
  %1276 = select i1 %1275, i32 %1269, i32 %853
  %1277 = add nuw i32 %852, 1
  %1278 = icmp eq i32 %1277, %845
  br i1 %1278, label %1279, label %851

; <label>:1279                                    ; preds = %1272
  br label %1280

; <label>:1280                                    ; preds = %1279, %831
  %1281 = phi i32 [ 0, %831 ], [ %1276, %1279 ]
  %1282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %1283 = extractvalue %dx.types.ResRet.i32 %1282, 0
  %1284 = and i32 %1283, 32768
  %1285 = icmp eq i32 %1284, 0
  br i1 %1285, label %1867, label %1286, !dx.controlflow.hints !50

; <label>:1286                                    ; preds = %1280
  %1287 = fsub fast float %192, %108
  %1288 = fsub fast float %193, %109
  %1289 = fsub fast float %194, %110
  %1290 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %1289)  ; FMin(a,b)
  %1291 = call float @dx.op.binary.f32(i32 35, float 0xC7EFFFFFE0000000, float %1289)  ; FMax(a,b)
  br label %1292

; <label>:1292                                    ; preds = %1295, %1286
  %1293 = phi i32 [ %1281, %1286 ], [ %1299, %1295 ]
  %1294 = icmp eq i32 %1293, 0
  br i1 %1294, label %1325, label %1295

; <label>:1295                                    ; preds = %1292
  %1296 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1293)  ; FirstbitLo(value)
  %1297 = and i32 %1296, 31
  %1298 = shl i32 1, %1297
  %1299 = xor i32 %1298, %1293
  %1300 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %1296, i32 0)  ; BufferLoad(srv,index,wot)
  %1301 = extractvalue %dx.types.ResRet.f32 %1300, 0
  %1302 = extractvalue %dx.types.ResRet.f32 %1300, 1
  %1303 = extractvalue %dx.types.ResRet.f32 %1300, 2
  %1304 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %1296, i32 16)  ; BufferLoad(srv,index,wot)
  %1305 = extractvalue %dx.types.ResRet.f32 %1304, 0
  %1306 = extractvalue %dx.types.ResRet.f32 %1304, 1
  %1307 = extractvalue %dx.types.ResRet.f32 %1304, 2
  %1308 = fsub fast float %1301, %1305
  %1309 = fsub fast float %1302, %1306
  %1310 = fsub fast float %1303, %1307
  %1311 = fadd fast float %1305, %1301
  %1312 = fadd fast float %1306, %1302
  %1313 = fadd fast float %1307, %1303
  %1314 = fcmp fast ogt float %1287, %1308
  %1315 = fcmp fast ogt float %1288, %1309
  %1316 = fcmp fast ogt float %1289, %1310
  %1317 = and i1 %1314, %1315
  %1318 = and i1 %1316, %1317
  %1319 = fcmp fast olt float %1287, %1311
  %1320 = fcmp fast olt float %1288, %1312
  %1321 = fcmp fast olt float %1289, %1313
  %1322 = and i1 %1319, %1320
  %1323 = and i1 %1321, %1322
  %1324 = and i1 %1318, %1323
  br i1 %1324, label %1325, label %1292, !dx.controlflow.hints !51

; <label>:1325                                    ; preds = %1295, %1292
  %1326 = phi i32 [ %1296, %1295 ], [ 255, %1292 ]
  %1327 = icmp eq i32 %1326, 255
  br i1 %1327, label %1328, label %1334, !dx.controlflow.hints !52

; <label>:1328                                    ; preds = %1325
  %1329 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1330 = extractvalue %dx.types.CBufRet.i32 %1329, 1
  %1331 = icmp ne i32 %1330, 0
  %1332 = zext i1 %1331 to i32
  %1333 = extractvalue %dx.types.CBufRet.i32 %1329, 0
  br label %1341

; <label>:1334                                    ; preds = %1325
  %1335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1326, i32 156)  ; BufferLoad(srv,index,wot)
  %1336 = extractvalue %dx.types.ResRet.i32 %1335, 0
  %1337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1326, i32 160)  ; BufferLoad(srv,index,wot)
  %1338 = extractvalue %dx.types.ResRet.i32 %1337, 0
  %1339 = icmp ne i32 %1338, 0
  %1340 = zext i1 %1339 to i32
  br label %1341

; <label>:1341                                    ; preds = %1334, %1328
  %1342 = phi i32 [ %1333, %1328 ], [ %1336, %1334 ]
  %1343 = phi i32 [ %1332, %1328 ], [ %1340, %1334 ]
  %1344 = icmp ne i32 %1342, 0
  %1345 = fsub fast float %189, %108
  %1346 = fsub fast float %190, %109
  %1347 = fsub fast float %191, %110
  %1348 = call float @dx.op.binary.f32(i32 36, float %1290, float %1347)  ; FMin(a,b)
  %1349 = call float @dx.op.binary.f32(i32 35, float %1291, float %1347)  ; FMax(a,b)
  br label %1350

; <label>:1350                                    ; preds = %1353, %1341
  %1351 = phi i32 [ %1281, %1341 ], [ %1357, %1353 ]
  %1352 = icmp eq i32 %1351, 0
  br i1 %1352, label %1383, label %1353

; <label>:1353                                    ; preds = %1350
  %1354 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1351)  ; FirstbitLo(value)
  %1355 = and i32 %1354, 31
  %1356 = shl i32 1, %1355
  %1357 = xor i32 %1356, %1351
  %1358 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %1354, i32 0)  ; BufferLoad(srv,index,wot)
  %1359 = extractvalue %dx.types.ResRet.f32 %1358, 0
  %1360 = extractvalue %dx.types.ResRet.f32 %1358, 1
  %1361 = extractvalue %dx.types.ResRet.f32 %1358, 2
  %1362 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %1354, i32 16)  ; BufferLoad(srv,index,wot)
  %1363 = extractvalue %dx.types.ResRet.f32 %1362, 0
  %1364 = extractvalue %dx.types.ResRet.f32 %1362, 1
  %1365 = extractvalue %dx.types.ResRet.f32 %1362, 2
  %1366 = fsub fast float %1359, %1363
  %1367 = fsub fast float %1360, %1364
  %1368 = fsub fast float %1361, %1365
  %1369 = fadd fast float %1363, %1359
  %1370 = fadd fast float %1364, %1360
  %1371 = fadd fast float %1365, %1361
  %1372 = fcmp fast ogt float %1345, %1366
  %1373 = fcmp fast ogt float %1346, %1367
  %1374 = fcmp fast ogt float %1347, %1368
  %1375 = and i1 %1372, %1373
  %1376 = and i1 %1374, %1375
  %1377 = fcmp fast olt float %1345, %1369
  %1378 = fcmp fast olt float %1346, %1370
  %1379 = fcmp fast olt float %1347, %1371
  %1380 = and i1 %1377, %1378
  %1381 = and i1 %1379, %1380
  %1382 = and i1 %1376, %1381
  br i1 %1382, label %1383, label %1350, !dx.controlflow.hints !51

; <label>:1383                                    ; preds = %1353, %1350
  %1384 = phi i32 [ %1354, %1353 ], [ 255, %1350 ]
  %1385 = icmp eq i32 %1384, 255
  %1386 = icmp ne i32 %1343, 0
  br i1 %1385, label %1387, label %1394, !dx.controlflow.hints !52

; <label>:1387                                    ; preds = %1383
  %1388 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1389 = extractvalue %dx.types.CBufRet.i32 %1388, 1
  %1390 = icmp ne i32 %1389, 0
  %1391 = and i1 %1386, %1390
  %1392 = zext i1 %1391 to i32
  %1393 = extractvalue %dx.types.CBufRet.i32 %1388, 0
  br label %1402

; <label>:1394                                    ; preds = %1383
  %1395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1384, i32 156)  ; BufferLoad(srv,index,wot)
  %1396 = extractvalue %dx.types.ResRet.i32 %1395, 0
  %1397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1384, i32 160)  ; BufferLoad(srv,index,wot)
  %1398 = extractvalue %dx.types.ResRet.i32 %1397, 0
  %1399 = icmp ne i32 %1398, 0
  %1400 = and i1 %1386, %1399
  %1401 = zext i1 %1400 to i32
  br label %1402

; <label>:1402                                    ; preds = %1394, %1387
  %1403 = phi i32 [ %1393, %1387 ], [ %1396, %1394 ]
  %1404 = phi i32 [ %1392, %1387 ], [ %1401, %1394 ]
  %1405 = icmp ne i32 %1403, 0
  %1406 = and i1 %1344, %1405
  %1407 = fadd fast float %192, %108
  %1408 = fadd fast float %193, %109
  %1409 = fadd fast float %194, %110
  %1410 = call float @dx.op.binary.f32(i32 36, float %1348, float %1409)  ; FMin(a,b)
  %1411 = call float @dx.op.binary.f32(i32 35, float %1349, float %1409)  ; FMax(a,b)
  br label %1412

; <label>:1412                                    ; preds = %1415, %1402
  %1413 = phi i32 [ %1281, %1402 ], [ %1419, %1415 ]
  %1414 = icmp eq i32 %1413, 0
  br i1 %1414, label %1445, label %1415

; <label>:1415                                    ; preds = %1412
  %1416 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1413)  ; FirstbitLo(value)
  %1417 = and i32 %1416, 31
  %1418 = shl i32 1, %1417
  %1419 = xor i32 %1418, %1413
  %1420 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %1416, i32 0)  ; BufferLoad(srv,index,wot)
  %1421 = extractvalue %dx.types.ResRet.f32 %1420, 0
  %1422 = extractvalue %dx.types.ResRet.f32 %1420, 1
  %1423 = extractvalue %dx.types.ResRet.f32 %1420, 2
  %1424 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %1416, i32 16)  ; BufferLoad(srv,index,wot)
  %1425 = extractvalue %dx.types.ResRet.f32 %1424, 0
  %1426 = extractvalue %dx.types.ResRet.f32 %1424, 1
  %1427 = extractvalue %dx.types.ResRet.f32 %1424, 2
  %1428 = fsub fast float %1421, %1425
  %1429 = fsub fast float %1422, %1426
  %1430 = fsub fast float %1423, %1427
  %1431 = fadd fast float %1425, %1421
  %1432 = fadd fast float %1426, %1422
  %1433 = fadd fast float %1427, %1423
  %1434 = fcmp fast ogt float %1407, %1428
  %1435 = fcmp fast ogt float %1408, %1429
  %1436 = fcmp fast ogt float %1409, %1430
  %1437 = and i1 %1434, %1435
  %1438 = and i1 %1436, %1437
  %1439 = fcmp fast olt float %1407, %1431
  %1440 = fcmp fast olt float %1408, %1432
  %1441 = fcmp fast olt float %1409, %1433
  %1442 = and i1 %1439, %1440
  %1443 = and i1 %1441, %1442
  %1444 = and i1 %1438, %1443
  br i1 %1444, label %1445, label %1412, !dx.controlflow.hints !51

; <label>:1445                                    ; preds = %1415, %1412
  %1446 = phi i32 [ %1416, %1415 ], [ 255, %1412 ]
  %1447 = icmp eq i32 %1446, 255
  %1448 = icmp ne i32 %1404, 0
  br i1 %1447, label %1449, label %1456, !dx.controlflow.hints !52

; <label>:1449                                    ; preds = %1445
  %1450 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1451 = extractvalue %dx.types.CBufRet.i32 %1450, 1
  %1452 = icmp ne i32 %1451, 0
  %1453 = and i1 %1448, %1452
  %1454 = zext i1 %1453 to i32
  %1455 = extractvalue %dx.types.CBufRet.i32 %1450, 0
  br label %1464

; <label>:1456                                    ; preds = %1445
  %1457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1446, i32 156)  ; BufferLoad(srv,index,wot)
  %1458 = extractvalue %dx.types.ResRet.i32 %1457, 0
  %1459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1446, i32 160)  ; BufferLoad(srv,index,wot)
  %1460 = extractvalue %dx.types.ResRet.i32 %1459, 0
  %1461 = icmp ne i32 %1460, 0
  %1462 = and i1 %1448, %1461
  %1463 = zext i1 %1462 to i32
  br label %1464

; <label>:1464                                    ; preds = %1456, %1449
  %1465 = phi i32 [ %1455, %1449 ], [ %1458, %1456 ]
  %1466 = phi i32 [ %1454, %1449 ], [ %1463, %1456 ]
  %1467 = icmp ne i32 %1465, 0
  %1468 = and i1 %1406, %1467
  %1469 = fadd fast float %189, %108
  %1470 = fadd fast float %190, %109
  %1471 = fadd fast float %191, %110
  %1472 = call float @dx.op.binary.f32(i32 36, float %1410, float %1471)  ; FMin(a,b)
  %1473 = call float @dx.op.binary.f32(i32 35, float %1411, float %1471)  ; FMax(a,b)
  br label %1474

; <label>:1474                                    ; preds = %1477, %1464
  %1475 = phi i32 [ %1281, %1464 ], [ %1481, %1477 ]
  %1476 = icmp eq i32 %1475, 0
  br i1 %1476, label %1507, label %1477

; <label>:1477                                    ; preds = %1474
  %1478 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1475)  ; FirstbitLo(value)
  %1479 = and i32 %1478, 31
  %1480 = shl i32 1, %1479
  %1481 = xor i32 %1480, %1475
  %1482 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %1478, i32 0)  ; BufferLoad(srv,index,wot)
  %1483 = extractvalue %dx.types.ResRet.f32 %1482, 0
  %1484 = extractvalue %dx.types.ResRet.f32 %1482, 1
  %1485 = extractvalue %dx.types.ResRet.f32 %1482, 2
  %1486 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %1478, i32 16)  ; BufferLoad(srv,index,wot)
  %1487 = extractvalue %dx.types.ResRet.f32 %1486, 0
  %1488 = extractvalue %dx.types.ResRet.f32 %1486, 1
  %1489 = extractvalue %dx.types.ResRet.f32 %1486, 2
  %1490 = fsub fast float %1483, %1487
  %1491 = fsub fast float %1484, %1488
  %1492 = fsub fast float %1485, %1489
  %1493 = fadd fast float %1487, %1483
  %1494 = fadd fast float %1488, %1484
  %1495 = fadd fast float %1489, %1485
  %1496 = fcmp fast ogt float %1469, %1490
  %1497 = fcmp fast ogt float %1470, %1491
  %1498 = fcmp fast ogt float %1471, %1492
  %1499 = and i1 %1496, %1497
  %1500 = and i1 %1498, %1499
  %1501 = fcmp fast olt float %1469, %1493
  %1502 = fcmp fast olt float %1470, %1494
  %1503 = fcmp fast olt float %1471, %1495
  %1504 = and i1 %1501, %1502
  %1505 = and i1 %1503, %1504
  %1506 = and i1 %1500, %1505
  br i1 %1506, label %1507, label %1474, !dx.controlflow.hints !51

; <label>:1507                                    ; preds = %1477, %1474
  %1508 = phi i32 [ %1478, %1477 ], [ 255, %1474 ]
  %1509 = icmp eq i32 %1508, 255
  %1510 = icmp ne i32 %1466, 0
  br i1 %1509, label %1511, label %1518, !dx.controlflow.hints !52

; <label>:1511                                    ; preds = %1507
  %1512 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1513 = extractvalue %dx.types.CBufRet.i32 %1512, 1
  %1514 = icmp ne i32 %1513, 0
  %1515 = and i1 %1510, %1514
  %1516 = zext i1 %1515 to i32
  %1517 = extractvalue %dx.types.CBufRet.i32 %1512, 0
  br label %1526

; <label>:1518                                    ; preds = %1507
  %1519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1508, i32 156)  ; BufferLoad(srv,index,wot)
  %1520 = extractvalue %dx.types.ResRet.i32 %1519, 0
  %1521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1508, i32 160)  ; BufferLoad(srv,index,wot)
  %1522 = extractvalue %dx.types.ResRet.i32 %1521, 0
  %1523 = icmp ne i32 %1522, 0
  %1524 = and i1 %1510, %1523
  %1525 = zext i1 %1524 to i32
  br label %1526

; <label>:1526                                    ; preds = %1518, %1511
  %1527 = phi i32 [ %1517, %1511 ], [ %1520, %1518 ]
  %1528 = phi i32 [ %1516, %1511 ], [ %1525, %1518 ]
  %1529 = icmp ne i32 %1527, 0
  %1530 = and i1 %1468, %1529
  %1531 = fsub fast float %198, %125
  %1532 = fsub fast float %199, %126
  %1533 = fsub fast float %200, %127
  %1534 = call float @dx.op.binary.f32(i32 36, float %1472, float %1533)  ; FMin(a,b)
  %1535 = call float @dx.op.binary.f32(i32 35, float %1473, float %1533)  ; FMax(a,b)
  br label %1536

; <label>:1536                                    ; preds = %1539, %1526
  %1537 = phi i32 [ %1281, %1526 ], [ %1543, %1539 ]
  %1538 = icmp eq i32 %1537, 0
  br i1 %1538, label %1569, label %1539

; <label>:1539                                    ; preds = %1536
  %1540 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1537)  ; FirstbitLo(value)
  %1541 = and i32 %1540, 31
  %1542 = shl i32 1, %1541
  %1543 = xor i32 %1542, %1537
  %1544 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %1540, i32 0)  ; BufferLoad(srv,index,wot)
  %1545 = extractvalue %dx.types.ResRet.f32 %1544, 0
  %1546 = extractvalue %dx.types.ResRet.f32 %1544, 1
  %1547 = extractvalue %dx.types.ResRet.f32 %1544, 2
  %1548 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %1540, i32 16)  ; BufferLoad(srv,index,wot)
  %1549 = extractvalue %dx.types.ResRet.f32 %1548, 0
  %1550 = extractvalue %dx.types.ResRet.f32 %1548, 1
  %1551 = extractvalue %dx.types.ResRet.f32 %1548, 2
  %1552 = fsub fast float %1545, %1549
  %1553 = fsub fast float %1546, %1550
  %1554 = fsub fast float %1547, %1551
  %1555 = fadd fast float %1549, %1545
  %1556 = fadd fast float %1550, %1546
  %1557 = fadd fast float %1551, %1547
  %1558 = fcmp fast ogt float %1531, %1552
  %1559 = fcmp fast ogt float %1532, %1553
  %1560 = fcmp fast ogt float %1533, %1554
  %1561 = and i1 %1558, %1559
  %1562 = and i1 %1560, %1561
  %1563 = fcmp fast olt float %1531, %1555
  %1564 = fcmp fast olt float %1532, %1556
  %1565 = fcmp fast olt float %1533, %1557
  %1566 = and i1 %1563, %1564
  %1567 = and i1 %1565, %1566
  %1568 = and i1 %1562, %1567
  br i1 %1568, label %1569, label %1536, !dx.controlflow.hints !51

; <label>:1569                                    ; preds = %1539, %1536
  %1570 = phi i32 [ %1540, %1539 ], [ 255, %1536 ]
  %1571 = icmp eq i32 %1570, 255
  %1572 = icmp ne i32 %1528, 0
  br i1 %1571, label %1573, label %1580, !dx.controlflow.hints !52

; <label>:1573                                    ; preds = %1569
  %1574 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1575 = extractvalue %dx.types.CBufRet.i32 %1574, 1
  %1576 = icmp ne i32 %1575, 0
  %1577 = and i1 %1572, %1576
  %1578 = zext i1 %1577 to i32
  %1579 = extractvalue %dx.types.CBufRet.i32 %1574, 0
  br label %1588

; <label>:1580                                    ; preds = %1569
  %1581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1570, i32 156)  ; BufferLoad(srv,index,wot)
  %1582 = extractvalue %dx.types.ResRet.i32 %1581, 0
  %1583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1570, i32 160)  ; BufferLoad(srv,index,wot)
  %1584 = extractvalue %dx.types.ResRet.i32 %1583, 0
  %1585 = icmp ne i32 %1584, 0
  %1586 = and i1 %1572, %1585
  %1587 = zext i1 %1586 to i32
  br label %1588

; <label>:1588                                    ; preds = %1580, %1573
  %1589 = phi i32 [ %1579, %1573 ], [ %1582, %1580 ]
  %1590 = phi i32 [ %1578, %1573 ], [ %1587, %1580 ]
  %1591 = icmp ne i32 %1589, 0
  %1592 = and i1 %1530, %1591
  %1593 = fsub fast float %195, %125
  %1594 = fsub fast float %196, %126
  %1595 = fsub fast float %197, %127
  %1596 = call float @dx.op.binary.f32(i32 36, float %1534, float %1595)  ; FMin(a,b)
  %1597 = call float @dx.op.binary.f32(i32 35, float %1535, float %1595)  ; FMax(a,b)
  br label %1598

; <label>:1598                                    ; preds = %1601, %1588
  %1599 = phi i32 [ %1281, %1588 ], [ %1605, %1601 ]
  %1600 = icmp eq i32 %1599, 0
  br i1 %1600, label %1631, label %1601

; <label>:1601                                    ; preds = %1598
  %1602 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1599)  ; FirstbitLo(value)
  %1603 = and i32 %1602, 31
  %1604 = shl i32 1, %1603
  %1605 = xor i32 %1604, %1599
  %1606 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %1602, i32 0)  ; BufferLoad(srv,index,wot)
  %1607 = extractvalue %dx.types.ResRet.f32 %1606, 0
  %1608 = extractvalue %dx.types.ResRet.f32 %1606, 1
  %1609 = extractvalue %dx.types.ResRet.f32 %1606, 2
  %1610 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %1602, i32 16)  ; BufferLoad(srv,index,wot)
  %1611 = extractvalue %dx.types.ResRet.f32 %1610, 0
  %1612 = extractvalue %dx.types.ResRet.f32 %1610, 1
  %1613 = extractvalue %dx.types.ResRet.f32 %1610, 2
  %1614 = fsub fast float %1607, %1611
  %1615 = fsub fast float %1608, %1612
  %1616 = fsub fast float %1609, %1613
  %1617 = fadd fast float %1611, %1607
  %1618 = fadd fast float %1612, %1608
  %1619 = fadd fast float %1613, %1609
  %1620 = fcmp fast ogt float %1593, %1614
  %1621 = fcmp fast ogt float %1594, %1615
  %1622 = fcmp fast ogt float %1595, %1616
  %1623 = and i1 %1620, %1621
  %1624 = and i1 %1622, %1623
  %1625 = fcmp fast olt float %1593, %1617
  %1626 = fcmp fast olt float %1594, %1618
  %1627 = fcmp fast olt float %1595, %1619
  %1628 = and i1 %1625, %1626
  %1629 = and i1 %1627, %1628
  %1630 = and i1 %1624, %1629
  br i1 %1630, label %1631, label %1598, !dx.controlflow.hints !51

; <label>:1631                                    ; preds = %1601, %1598
  %1632 = phi i32 [ %1602, %1601 ], [ 255, %1598 ]
  %1633 = icmp eq i32 %1632, 255
  %1634 = icmp ne i32 %1590, 0
  br i1 %1633, label %1635, label %1642, !dx.controlflow.hints !52

; <label>:1635                                    ; preds = %1631
  %1636 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1637 = extractvalue %dx.types.CBufRet.i32 %1636, 1
  %1638 = icmp ne i32 %1637, 0
  %1639 = and i1 %1634, %1638
  %1640 = zext i1 %1639 to i32
  %1641 = extractvalue %dx.types.CBufRet.i32 %1636, 0
  br label %1650

; <label>:1642                                    ; preds = %1631
  %1643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1632, i32 156)  ; BufferLoad(srv,index,wot)
  %1644 = extractvalue %dx.types.ResRet.i32 %1643, 0
  %1645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1632, i32 160)  ; BufferLoad(srv,index,wot)
  %1646 = extractvalue %dx.types.ResRet.i32 %1645, 0
  %1647 = icmp ne i32 %1646, 0
  %1648 = and i1 %1634, %1647
  %1649 = zext i1 %1648 to i32
  br label %1650

; <label>:1650                                    ; preds = %1642, %1635
  %1651 = phi i32 [ %1641, %1635 ], [ %1644, %1642 ]
  %1652 = phi i32 [ %1640, %1635 ], [ %1649, %1642 ]
  %1653 = icmp ne i32 %1651, 0
  %1654 = and i1 %1592, %1653
  %1655 = fadd fast float %198, %125
  %1656 = fadd fast float %199, %126
  %1657 = fadd fast float %200, %127
  %1658 = call float @dx.op.binary.f32(i32 36, float %1596, float %1657)  ; FMin(a,b)
  %1659 = call float @dx.op.binary.f32(i32 35, float %1597, float %1657)  ; FMax(a,b)
  br label %1660

; <label>:1660                                    ; preds = %1663, %1650
  %1661 = phi i32 [ %1281, %1650 ], [ %1667, %1663 ]
  %1662 = icmp eq i32 %1661, 0
  br i1 %1662, label %1693, label %1663

; <label>:1663                                    ; preds = %1660
  %1664 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1661)  ; FirstbitLo(value)
  %1665 = and i32 %1664, 31
  %1666 = shl i32 1, %1665
  %1667 = xor i32 %1666, %1661
  %1668 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %1664, i32 0)  ; BufferLoad(srv,index,wot)
  %1669 = extractvalue %dx.types.ResRet.f32 %1668, 0
  %1670 = extractvalue %dx.types.ResRet.f32 %1668, 1
  %1671 = extractvalue %dx.types.ResRet.f32 %1668, 2
  %1672 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %1664, i32 16)  ; BufferLoad(srv,index,wot)
  %1673 = extractvalue %dx.types.ResRet.f32 %1672, 0
  %1674 = extractvalue %dx.types.ResRet.f32 %1672, 1
  %1675 = extractvalue %dx.types.ResRet.f32 %1672, 2
  %1676 = fsub fast float %1669, %1673
  %1677 = fsub fast float %1670, %1674
  %1678 = fsub fast float %1671, %1675
  %1679 = fadd fast float %1673, %1669
  %1680 = fadd fast float %1674, %1670
  %1681 = fadd fast float %1675, %1671
  %1682 = fcmp fast ogt float %1655, %1676
  %1683 = fcmp fast ogt float %1656, %1677
  %1684 = fcmp fast ogt float %1657, %1678
  %1685 = and i1 %1682, %1683
  %1686 = and i1 %1684, %1685
  %1687 = fcmp fast olt float %1655, %1679
  %1688 = fcmp fast olt float %1656, %1680
  %1689 = fcmp fast olt float %1657, %1681
  %1690 = and i1 %1687, %1688
  %1691 = and i1 %1689, %1690
  %1692 = and i1 %1686, %1691
  br i1 %1692, label %1693, label %1660, !dx.controlflow.hints !51

; <label>:1693                                    ; preds = %1663, %1660
  %1694 = phi i32 [ %1664, %1663 ], [ 255, %1660 ]
  %1695 = icmp eq i32 %1694, 255
  %1696 = icmp ne i32 %1652, 0
  br i1 %1695, label %1697, label %1704, !dx.controlflow.hints !52

; <label>:1697                                    ; preds = %1693
  %1698 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1699 = extractvalue %dx.types.CBufRet.i32 %1698, 1
  %1700 = icmp ne i32 %1699, 0
  %1701 = and i1 %1696, %1700
  %1702 = zext i1 %1701 to i32
  %1703 = extractvalue %dx.types.CBufRet.i32 %1698, 0
  br label %1712

; <label>:1704                                    ; preds = %1693
  %1705 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1694, i32 156)  ; BufferLoad(srv,index,wot)
  %1706 = extractvalue %dx.types.ResRet.i32 %1705, 0
  %1707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1694, i32 160)  ; BufferLoad(srv,index,wot)
  %1708 = extractvalue %dx.types.ResRet.i32 %1707, 0
  %1709 = icmp ne i32 %1708, 0
  %1710 = and i1 %1696, %1709
  %1711 = zext i1 %1710 to i32
  br label %1712

; <label>:1712                                    ; preds = %1704, %1697
  %1713 = phi i32 [ %1703, %1697 ], [ %1706, %1704 ]
  %1714 = phi i32 [ %1702, %1697 ], [ %1711, %1704 ]
  %1715 = icmp ne i32 %1713, 0
  %1716 = and i1 %1654, %1715
  %1717 = fadd fast float %195, %125
  %1718 = fadd fast float %196, %126
  %1719 = fadd fast float %197, %127
  %1720 = call float @dx.op.binary.f32(i32 36, float %1658, float %1719)  ; FMin(a,b)
  %1721 = call float @dx.op.binary.f32(i32 35, float %1659, float %1719)  ; FMax(a,b)
  br label %1722

; <label>:1722                                    ; preds = %1725, %1712
  %1723 = phi i32 [ %1281, %1712 ], [ %1729, %1725 ]
  %1724 = icmp eq i32 %1723, 0
  br i1 %1724, label %1755, label %1725

; <label>:1725                                    ; preds = %1722
  %1726 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1723)  ; FirstbitLo(value)
  %1727 = and i32 %1726, 31
  %1728 = shl i32 1, %1727
  %1729 = xor i32 %1728, %1723
  %1730 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %1726, i32 0)  ; BufferLoad(srv,index,wot)
  %1731 = extractvalue %dx.types.ResRet.f32 %1730, 0
  %1732 = extractvalue %dx.types.ResRet.f32 %1730, 1
  %1733 = extractvalue %dx.types.ResRet.f32 %1730, 2
  %1734 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %1726, i32 16)  ; BufferLoad(srv,index,wot)
  %1735 = extractvalue %dx.types.ResRet.f32 %1734, 0
  %1736 = extractvalue %dx.types.ResRet.f32 %1734, 1
  %1737 = extractvalue %dx.types.ResRet.f32 %1734, 2
  %1738 = fsub fast float %1731, %1735
  %1739 = fsub fast float %1732, %1736
  %1740 = fsub fast float %1733, %1737
  %1741 = fadd fast float %1735, %1731
  %1742 = fadd fast float %1736, %1732
  %1743 = fadd fast float %1737, %1733
  %1744 = fcmp fast ogt float %1717, %1738
  %1745 = fcmp fast ogt float %1718, %1739
  %1746 = fcmp fast ogt float %1719, %1740
  %1747 = and i1 %1744, %1745
  %1748 = and i1 %1746, %1747
  %1749 = fcmp fast olt float %1717, %1741
  %1750 = fcmp fast olt float %1718, %1742
  %1751 = fcmp fast olt float %1719, %1743
  %1752 = and i1 %1749, %1750
  %1753 = and i1 %1751, %1752
  %1754 = and i1 %1748, %1753
  br i1 %1754, label %1755, label %1722, !dx.controlflow.hints !51

; <label>:1755                                    ; preds = %1725, %1722
  %1756 = phi i32 [ %1726, %1725 ], [ 255, %1722 ]
  %1757 = icmp eq i32 %1756, 255
  %1758 = icmp ne i32 %1714, 0
  br i1 %1757, label %1759, label %1766, !dx.controlflow.hints !52

; <label>:1759                                    ; preds = %1755
  %1760 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1761 = extractvalue %dx.types.CBufRet.i32 %1760, 1
  %1762 = icmp ne i32 %1761, 0
  %1763 = and i1 %1758, %1762
  %1764 = zext i1 %1763 to i32
  %1765 = extractvalue %dx.types.CBufRet.i32 %1760, 0
  br label %1774

; <label>:1766                                    ; preds = %1755
  %1767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1756, i32 156)  ; BufferLoad(srv,index,wot)
  %1768 = extractvalue %dx.types.ResRet.i32 %1767, 0
  %1769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1756, i32 160)  ; BufferLoad(srv,index,wot)
  %1770 = extractvalue %dx.types.ResRet.i32 %1769, 0
  %1771 = icmp ne i32 %1770, 0
  %1772 = and i1 %1758, %1771
  %1773 = zext i1 %1772 to i32
  br label %1774

; <label>:1774                                    ; preds = %1766, %1759
  %1775 = phi i32 [ %1765, %1759 ], [ %1768, %1766 ]
  %1776 = phi i32 [ %1764, %1759 ], [ %1773, %1766 ]
  %1777 = icmp ne i32 %1775, 0
  %1778 = and i1 %1716, %1777
  %1779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1780 = extractvalue %dx.types.CBufRet.f32 %1779, 0
  %1781 = extractvalue %dx.types.CBufRet.f32 %1779, 1
  %1782 = extractvalue %dx.types.CBufRet.f32 %1779, 2
  %1783 = fsub fast float %136, %1780
  %1784 = fadd fast float %1783, %1782
  %1785 = fsub fast float %137, %1781
  %1786 = fadd fast float %1785, %1782
  %1787 = extractvalue %dx.types.CBufRet.f32 %1779, 3
  %1788 = fmul fast float %1784, %1787
  %1789 = fmul fast float %1786, %1787
  %1790 = call float @dx.op.unary.f32(i32 7, float %1788)  ; Saturate(value)
  %1791 = call float @dx.op.unary.f32(i32 7, float %1789)  ; Saturate(value)
  %1792 = fsub fast float 1.000000e+00, %1790
  %1793 = fsub fast float 1.000000e+00, %1791
  %1794 = fcmp fast oeq float %206, 0.000000e+00
  br i1 %1794, label %1800, label %1795, !dx.controlflow.hints !39

; <label>:1795                                    ; preds = %1774
  %1796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 333)  ; CBufferLoadLegacy(handle,regIndex)
  %1797 = extractvalue %dx.types.CBufRet.f32 %1796, 3
  %1798 = fmul fast float %1797, %206
  %1799 = call float @dx.op.unary.f32(i32 23, float %1798)  ; Log(value)
  br label %1800

; <label>:1800                                    ; preds = %1795, %1774
  %1801 = phi float [ %1799, %1795 ], [ 0.000000e+00, %1774 ]
  %1802 = call float @dx.op.unary.f32(i32 28, float %1801)  ; Round_pi(value)
  %1803 = fptoui float %1802 to i32
  %1804 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %1805 = extractvalue %dx.types.CBufRet.i32 %1804, 0
  %1806 = and i32 %1803, 31
  %1807 = lshr i32 %1805, %1806
  %1808 = uitofp i32 %1807 to float
  %1809 = fdiv fast float 1.000000e+00, %1808
  %1810 = uitofp i32 %1803 to float
  %1811 = fmul fast float %1809, 1.953125e-03
  %1812 = fmul fast float %1809, 5.000000e-01
  %1813 = fsub fast float %1792, %1812
  %1814 = fadd fast float %1812, %1793
  %1815 = fadd fast float %1813, %1811
  %1816 = fadd fast float %1814, %1811
  %1817 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %16, float %1815, float %1816, float undef, float undef, i32 0, i32 0, i32 undef, float %1810)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1818 = extractvalue %dx.types.ResRet.f32 %1817, 0
  %1819 = extractvalue %dx.types.ResRet.f32 %1817, 1
  %1820 = fadd fast float %1812, %1792
  %1821 = fadd fast float %1820, %1811
  %1822 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %16, float %1821, float %1816, float undef, float undef, i32 0, i32 0, i32 undef, float %1810)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1823 = extractvalue %dx.types.ResRet.f32 %1822, 0
  %1824 = extractvalue %dx.types.ResRet.f32 %1822, 1
  %1825 = fsub fast float %1793, %1812
  %1826 = fadd fast float %1825, %1811
  %1827 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %16, float %1821, float %1826, float undef, float undef, i32 0, i32 0, i32 undef, float %1810)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1828 = extractvalue %dx.types.ResRet.f32 %1827, 0
  %1829 = extractvalue %dx.types.ResRet.f32 %1827, 1
  %1830 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %16, float %1815, float %1826, float undef, float undef, i32 0, i32 0, i32 undef, float %1810)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1831 = extractvalue %dx.types.ResRet.f32 %1830, 0
  %1832 = extractvalue %dx.types.ResRet.f32 %1830, 1
  %1833 = call float @dx.op.binary.f32(i32 35, float %1823, float %1828)  ; FMax(a,b)
  %1834 = call float @dx.op.binary.f32(i32 35, float %1818, float %1833)  ; FMax(a,b)
  %1835 = call float @dx.op.binary.f32(i32 35, float %1834, float %1831)  ; FMax(a,b)
  %1836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1837 = extractvalue %dx.types.CBufRet.f32 %1836, 2
  %1838 = fmul fast float %1837, %1835
  %1839 = extractvalue %dx.types.CBufRet.f32 %1836, 3
  %1840 = fadd fast float %1839, %1838
  %1841 = fcmp fast ogt float %1835, 0.000000e+00
  %1842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1843 = extractvalue %dx.types.CBufRet.f32 %1842, 3
  %1844 = fadd fast float %1840, %1843
  %1845 = fcmp fast ole float %1720, %1844
  %1846 = and i1 %1841, %1845
  %1847 = call float @dx.op.binary.f32(i32 36, float %1824, float %1829)  ; FMin(a,b)
  %1848 = call float @dx.op.binary.f32(i32 36, float %1819, float %1847)  ; FMin(a,b)
  %1849 = call float @dx.op.binary.f32(i32 36, float %1848, float %1832)  ; FMin(a,b)
  %1850 = fmul fast float %1837, %1849
  %1851 = fadd fast float %1839, %1850
  %1852 = fadd fast float %1851, %1843
  %1853 = select i1 %1846, i32 32, i32 0
  %1854 = or i32 %1853, %741
  %1855 = fcmp ugt float %1849, 0.000000e+00
  %1856 = fcmp ult float %1721, %1852
  %1857 = and i1 %1855, %1856
  %1858 = icmp ne i32 %1776, 0
  %1859 = and i1 %1858, %1857
  %1860 = and i1 %1841, %1845
  %1861 = xor i1 %1860, true
  %1862 = and i1 %1778, %1861
  %1863 = or i1 %1862, %1859
  %1864 = and i1 %1858, %1778
  %1865 = or i1 %1864, %1863
  %1866 = select i1 %1865, i32 0, i32 %842
  br label %1867

; <label>:1867                                    ; preds = %1800, %1280
  %1868 = phi i32 [ %741, %1280 ], [ %1854, %1800 ]
  %1869 = phi i32 [ %842, %1280 ], [ %1866, %1800 ]
  %1870 = icmp ne i32 %1869, 0
  %1871 = select i1 %1870, i32 16, i32 0
  %1872 = or i32 %1871, %1868
  %1873 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1874 = extractvalue %dx.types.CBufRet.i32 %1873, 1
  %1875 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 397)  ; CBufferLoadLegacy(handle,regIndex)
  %1876 = extractvalue %dx.types.CBufRet.i32 %1875, 0
  %1877 = mul i32 %1874, %132
  %1878 = icmp eq i32 %1874, 0
  br i1 %1878, label %2311, label %1879

; <label>:1879                                    ; preds = %1867
  br label %1880

; <label>:1880                                    ; preds = %2301, %1879
  %1881 = phi i32 [ %2304, %2301 ], [ 0, %1879 ]
  %1882 = phi i32 [ %2307, %2301 ], [ 0, %1879 ]
  br label %1883

; <label>:1883                                    ; preds = %2297, %1880
  %1884 = phi i32 [ 0, %1880 ], [ %2298, %2297 ]
  %1885 = phi i32 [ 0, %1880 ], [ %2299, %2297 ]
  %1886 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1882, i32 32, i32 %1885)  ; UMad(a,b,c)
  %1887 = icmp ult i32 %1886, %1876
  br i1 %1887, label %1888, label %2297, !dx.controlflow.hints !43

; <label>:1888                                    ; preds = %1883
  %1889 = mul i32 %1886, 60
  %1890 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1889, i32 undef)  ; BufferLoad(srv,index,wot)
  %1891 = extractvalue %dx.types.ResRet.f32 %1890, 0
  %1892 = extractvalue %dx.types.ResRet.f32 %1890, 1
  %1893 = extractvalue %dx.types.ResRet.f32 %1890, 2
  %1894 = add i32 %1889, 12
  %1895 = add i32 %1889, 48
  %1896 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1895, i32 undef)  ; BufferLoad(srv,index,wot)
  %1897 = extractvalue %dx.types.ResRet.f32 %1896, 0
  %1898 = extractvalue %dx.types.ResRet.f32 %1896, 1
  %1899 = extractvalue %dx.types.ResRet.f32 %1896, 2
  %1900 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1894, i32 undef)  ; BufferLoad(srv,index,wot)
  %1901 = extractvalue %dx.types.ResRet.f32 %1900, 0
  %1902 = extractvalue %dx.types.ResRet.f32 %1900, 1
  %1903 = extractvalue %dx.types.ResRet.f32 %1900, 2
  %1904 = call float @dx.op.dot3.f32(i32 55, float %1891, float %1892, float %1893, float %1901, float %1902, float %1903)  ; Dot3(ax,ay,az,bx,by,bz)
  %1905 = call float @dx.op.dot3.f32(i32 55, float %1901, float %1902, float %1903, float %1901, float %1902, float %1903)  ; Dot3(ax,ay,az,bx,by,bz)
  %1906 = fmul fast float %1905, %1897
  %1907 = call float @dx.op.unary.f32(i32 6, float %1906)  ; FAbs(value)
  %1908 = add i32 %1889, 24
  %1909 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1908, i32 undef)  ; BufferLoad(srv,index,wot)
  %1910 = extractvalue %dx.types.ResRet.f32 %1909, 0
  %1911 = extractvalue %dx.types.ResRet.f32 %1909, 1
  %1912 = extractvalue %dx.types.ResRet.f32 %1909, 2
  %1913 = call float @dx.op.dot3.f32(i32 55, float %1910, float %1911, float %1912, float %1901, float %1902, float %1903)  ; Dot3(ax,ay,az,bx,by,bz)
  %1914 = fmul fast float %1913, %1898
  %1915 = call float @dx.op.unary.f32(i32 6, float %1914)  ; FAbs(value)
  %1916 = fadd fast float %1915, %1907
  %1917 = add i32 %1889, 36
  %1918 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1917, i32 undef)  ; BufferLoad(srv,index,wot)
  %1919 = extractvalue %dx.types.ResRet.f32 %1918, 0
  %1920 = extractvalue %dx.types.ResRet.f32 %1918, 1
  %1921 = extractvalue %dx.types.ResRet.f32 %1918, 2
  %1922 = call float @dx.op.dot3.f32(i32 55, float %1919, float %1920, float %1921, float %1901, float %1902, float %1903)  ; Dot3(ax,ay,az,bx,by,bz)
  %1923 = fmul fast float %1922, %1899
  %1924 = call float @dx.op.unary.f32(i32 6, float %1923)  ; FAbs(value)
  %1925 = fadd fast float %1916, %1924
  %1926 = fsub fast float %1904, %1925
  %1927 = fadd fast float %1925, %1904
  %1928 = call float @dx.op.dot3.f32(i32 55, float %97, float %98, float %99, float %1901, float %1902, float %1903)  ; Dot3(ax,ay,az,bx,by,bz)
  %1929 = call float @dx.op.dot3.f32(i32 55, float %101, float %103, float %105, float %1901, float %1902, float %1903)  ; Dot3(ax,ay,az,bx,by,bz)
  %1930 = call float @dx.op.unary.f32(i32 6, float %1929)  ; FAbs(value)
  %1931 = call float @dx.op.dot3.f32(i32 55, float %108, float %109, float %110, float %1901, float %1902, float %1903)  ; Dot3(ax,ay,az,bx,by,bz)
  %1932 = call float @dx.op.unary.f32(i32 6, float %1931)  ; FAbs(value)
  %1933 = fadd fast float %1932, %1930
  %1934 = fsub fast float %1928, %1933
  %1935 = fadd fast float %1933, %1928
  %1936 = call float @dx.op.dot3.f32(i32 55, float %114, float %115, float %116, float %1901, float %1902, float %1903)  ; Dot3(ax,ay,az,bx,by,bz)
  %1937 = call float @dx.op.dot3.f32(i32 55, float %118, float %120, float %122, float %1901, float %1902, float %1903)  ; Dot3(ax,ay,az,bx,by,bz)
  %1938 = call float @dx.op.unary.f32(i32 6, float %1937)  ; FAbs(value)
  %1939 = call float @dx.op.dot3.f32(i32 55, float %125, float %126, float %127, float %1901, float %1902, float %1903)  ; Dot3(ax,ay,az,bx,by,bz)
  %1940 = call float @dx.op.unary.f32(i32 6, float %1939)  ; FAbs(value)
  %1941 = fadd fast float %1940, %1938
  %1942 = fsub fast float %1936, %1941
  %1943 = fadd fast float %1941, %1936
  %1944 = fcmp fast olt float %1942, %1934
  %1945 = select i1 %1944, float %1942, float %1934
  %1946 = fcmp fast ogt float %1943, %1935
  %1947 = select i1 %1946, float %1943, float %1935
  %1948 = fcmp fast olt float %1947, %1926
  %1949 = fcmp fast olt float %1927, %1945
  %1950 = or i1 %1948, %1949
  br i1 %1950, label %2292, label %1951, !dx.controlflow.hints !44

; <label>:1951                                    ; preds = %1888
  %1952 = call float @dx.op.dot3.f32(i32 55, float %1891, float %1892, float %1893, float %1910, float %1911, float %1912)  ; Dot3(ax,ay,az,bx,by,bz)
  %1953 = call float @dx.op.dot3.f32(i32 55, float %1901, float %1902, float %1903, float %1910, float %1911, float %1912)  ; Dot3(ax,ay,az,bx,by,bz)
  %1954 = fmul fast float %1953, %1897
  %1955 = call float @dx.op.unary.f32(i32 6, float %1954)  ; FAbs(value)
  %1956 = call float @dx.op.dot3.f32(i32 55, float %1910, float %1911, float %1912, float %1910, float %1911, float %1912)  ; Dot3(ax,ay,az,bx,by,bz)
  %1957 = fmul fast float %1956, %1898
  %1958 = call float @dx.op.unary.f32(i32 6, float %1957)  ; FAbs(value)
  %1959 = fadd fast float %1958, %1955
  %1960 = call float @dx.op.dot3.f32(i32 55, float %1919, float %1920, float %1921, float %1910, float %1911, float %1912)  ; Dot3(ax,ay,az,bx,by,bz)
  %1961 = fmul fast float %1960, %1899
  %1962 = call float @dx.op.unary.f32(i32 6, float %1961)  ; FAbs(value)
  %1963 = fadd fast float %1959, %1962
  %1964 = fsub fast float %1952, %1963
  %1965 = fadd fast float %1963, %1952
  %1966 = call float @dx.op.dot3.f32(i32 55, float %97, float %98, float %99, float %1910, float %1911, float %1912)  ; Dot3(ax,ay,az,bx,by,bz)
  %1967 = call float @dx.op.dot3.f32(i32 55, float %101, float %103, float %105, float %1910, float %1911, float %1912)  ; Dot3(ax,ay,az,bx,by,bz)
  %1968 = call float @dx.op.unary.f32(i32 6, float %1967)  ; FAbs(value)
  %1969 = call float @dx.op.dot3.f32(i32 55, float %108, float %109, float %110, float %1910, float %1911, float %1912)  ; Dot3(ax,ay,az,bx,by,bz)
  %1970 = call float @dx.op.unary.f32(i32 6, float %1969)  ; FAbs(value)
  %1971 = fadd fast float %1970, %1968
  %1972 = fsub fast float %1966, %1971
  %1973 = fadd fast float %1971, %1966
  %1974 = call float @dx.op.dot3.f32(i32 55, float %114, float %115, float %116, float %1910, float %1911, float %1912)  ; Dot3(ax,ay,az,bx,by,bz)
  %1975 = call float @dx.op.dot3.f32(i32 55, float %118, float %120, float %122, float %1910, float %1911, float %1912)  ; Dot3(ax,ay,az,bx,by,bz)
  %1976 = call float @dx.op.unary.f32(i32 6, float %1975)  ; FAbs(value)
  %1977 = call float @dx.op.dot3.f32(i32 55, float %125, float %126, float %127, float %1910, float %1911, float %1912)  ; Dot3(ax,ay,az,bx,by,bz)
  %1978 = call float @dx.op.unary.f32(i32 6, float %1977)  ; FAbs(value)
  %1979 = fadd fast float %1978, %1976
  %1980 = fsub fast float %1974, %1979
  %1981 = fadd fast float %1979, %1974
  %1982 = fcmp fast olt float %1980, %1972
  %1983 = select i1 %1982, float %1980, float %1972
  %1984 = fcmp fast ogt float %1981, %1973
  %1985 = select i1 %1984, float %1981, float %1973
  %1986 = fcmp fast olt float %1985, %1964
  %1987 = fcmp fast olt float %1965, %1983
  %1988 = or i1 %1986, %1987
  br i1 %1988, label %2292, label %1989, !dx.controlflow.hints !44

; <label>:1989                                    ; preds = %1951
  %1990 = call float @dx.op.dot3.f32(i32 55, float %1891, float %1892, float %1893, float %1919, float %1920, float %1921)  ; Dot3(ax,ay,az,bx,by,bz)
  %1991 = call float @dx.op.dot3.f32(i32 55, float %1901, float %1902, float %1903, float %1919, float %1920, float %1921)  ; Dot3(ax,ay,az,bx,by,bz)
  %1992 = fmul fast float %1991, %1897
  %1993 = call float @dx.op.unary.f32(i32 6, float %1992)  ; FAbs(value)
  %1994 = call float @dx.op.dot3.f32(i32 55, float %1910, float %1911, float %1912, float %1919, float %1920, float %1921)  ; Dot3(ax,ay,az,bx,by,bz)
  %1995 = fmul fast float %1994, %1898
  %1996 = call float @dx.op.unary.f32(i32 6, float %1995)  ; FAbs(value)
  %1997 = fadd fast float %1996, %1993
  %1998 = call float @dx.op.dot3.f32(i32 55, float %1919, float %1920, float %1921, float %1919, float %1920, float %1921)  ; Dot3(ax,ay,az,bx,by,bz)
  %1999 = fmul fast float %1998, %1899
  %2000 = call float @dx.op.unary.f32(i32 6, float %1999)  ; FAbs(value)
  %2001 = fadd fast float %1997, %2000
  %2002 = fsub fast float %1990, %2001
  %2003 = fadd fast float %2001, %1990
  %2004 = call float @dx.op.dot3.f32(i32 55, float %97, float %98, float %99, float %1919, float %1920, float %1921)  ; Dot3(ax,ay,az,bx,by,bz)
  %2005 = call float @dx.op.dot3.f32(i32 55, float %101, float %103, float %105, float %1919, float %1920, float %1921)  ; Dot3(ax,ay,az,bx,by,bz)
  %2006 = call float @dx.op.unary.f32(i32 6, float %2005)  ; FAbs(value)
  %2007 = call float @dx.op.dot3.f32(i32 55, float %108, float %109, float %110, float %1919, float %1920, float %1921)  ; Dot3(ax,ay,az,bx,by,bz)
  %2008 = call float @dx.op.unary.f32(i32 6, float %2007)  ; FAbs(value)
  %2009 = fadd fast float %2008, %2006
  %2010 = fsub fast float %2004, %2009
  %2011 = fadd fast float %2009, %2004
  %2012 = call float @dx.op.dot3.f32(i32 55, float %114, float %115, float %116, float %1919, float %1920, float %1921)  ; Dot3(ax,ay,az,bx,by,bz)
  %2013 = call float @dx.op.dot3.f32(i32 55, float %118, float %120, float %122, float %1919, float %1920, float %1921)  ; Dot3(ax,ay,az,bx,by,bz)
  %2014 = call float @dx.op.unary.f32(i32 6, float %2013)  ; FAbs(value)
  %2015 = call float @dx.op.dot3.f32(i32 55, float %125, float %126, float %127, float %1919, float %1920, float %1921)  ; Dot3(ax,ay,az,bx,by,bz)
  %2016 = call float @dx.op.unary.f32(i32 6, float %2015)  ; FAbs(value)
  %2017 = fadd fast float %2016, %2014
  %2018 = fsub fast float %2012, %2017
  %2019 = fadd fast float %2017, %2012
  %2020 = fcmp fast olt float %2018, %2010
  %2021 = select i1 %2020, float %2018, float %2010
  %2022 = fcmp fast ogt float %2019, %2011
  %2023 = select i1 %2022, float %2019, float %2011
  %2024 = fcmp fast olt float %2023, %2002
  %2025 = fcmp fast olt float %2003, %2021
  %2026 = or i1 %2024, %2025
  br i1 %2026, label %2292, label %2027, !dx.controlflow.hints !44

; <label>:2027                                    ; preds = %1989
  %2028 = fmul fast float %110, %103
  %2029 = fmul fast float %109, %105
  %2030 = fsub fast float %2028, %2029
  %2031 = fmul fast float %108, %105
  %2032 = fmul fast float %110, %101
  %2033 = fsub fast float %2031, %2032
  %2034 = fmul fast float %109, %101
  %2035 = fmul fast float %108, %103
  %2036 = fsub fast float %2034, %2035
  %2037 = call float @dx.op.dot3.f32(i32 55, float %1891, float %1892, float %1893, float %2030, float %2033, float %2036)  ; Dot3(ax,ay,az,bx,by,bz)
  %2038 = call float @dx.op.dot3.f32(i32 55, float %1901, float %1902, float %1903, float %2030, float %2033, float %2036)  ; Dot3(ax,ay,az,bx,by,bz)
  %2039 = fmul fast float %2038, %1897
  %2040 = call float @dx.op.unary.f32(i32 6, float %2039)  ; FAbs(value)
  %2041 = call float @dx.op.dot3.f32(i32 55, float %1910, float %1911, float %1912, float %2030, float %2033, float %2036)  ; Dot3(ax,ay,az,bx,by,bz)
  %2042 = fmul fast float %2041, %1898
  %2043 = call float @dx.op.unary.f32(i32 6, float %2042)  ; FAbs(value)
  %2044 = fadd fast float %2043, %2040
  %2045 = call float @dx.op.dot3.f32(i32 55, float %1919, float %1920, float %1921, float %2030, float %2033, float %2036)  ; Dot3(ax,ay,az,bx,by,bz)
  %2046 = fmul fast float %2045, %1899
  %2047 = call float @dx.op.unary.f32(i32 6, float %2046)  ; FAbs(value)
  %2048 = fadd fast float %2044, %2047
  %2049 = fsub fast float %2037, %2048
  %2050 = fadd fast float %2048, %2037
  %2051 = call float @dx.op.dot3.f32(i32 55, float %97, float %98, float %99, float %2030, float %2033, float %2036)  ; Dot3(ax,ay,az,bx,by,bz)
  %2052 = call float @dx.op.dot3.f32(i32 55, float %101, float %103, float %105, float %2030, float %2033, float %2036)  ; Dot3(ax,ay,az,bx,by,bz)
  %2053 = call float @dx.op.unary.f32(i32 6, float %2052)  ; FAbs(value)
  %2054 = call float @dx.op.dot3.f32(i32 55, float %108, float %109, float %110, float %2030, float %2033, float %2036)  ; Dot3(ax,ay,az,bx,by,bz)
  %2055 = call float @dx.op.unary.f32(i32 6, float %2054)  ; FAbs(value)
  %2056 = fadd fast float %2055, %2053
  %2057 = fsub fast float %2051, %2056
  %2058 = fadd fast float %2056, %2051
  %2059 = call float @dx.op.dot3.f32(i32 55, float %114, float %115, float %116, float %2030, float %2033, float %2036)  ; Dot3(ax,ay,az,bx,by,bz)
  %2060 = call float @dx.op.dot3.f32(i32 55, float %118, float %120, float %122, float %2030, float %2033, float %2036)  ; Dot3(ax,ay,az,bx,by,bz)
  %2061 = call float @dx.op.unary.f32(i32 6, float %2060)  ; FAbs(value)
  %2062 = call float @dx.op.dot3.f32(i32 55, float %125, float %126, float %127, float %2030, float %2033, float %2036)  ; Dot3(ax,ay,az,bx,by,bz)
  %2063 = call float @dx.op.unary.f32(i32 6, float %2062)  ; FAbs(value)
  %2064 = fadd fast float %2063, %2061
  %2065 = fsub fast float %2059, %2064
  %2066 = fadd fast float %2064, %2059
  %2067 = fcmp fast olt float %2065, %2057
  %2068 = select i1 %2067, float %2065, float %2057
  %2069 = fcmp fast ogt float %2066, %2058
  %2070 = select i1 %2069, float %2066, float %2058
  %2071 = fcmp fast olt float %2070, %2049
  %2072 = fcmp fast olt float %2050, %2068
  %2073 = or i1 %2071, %2072
  br i1 %2073, label %2292, label %2074, !dx.controlflow.hints !45

; <label>:2074                                    ; preds = %2027
  %2075 = fsub fast float %101, %97
  %2076 = fadd fast float %2075, %108
  %2077 = fsub fast float %2076, %118
  %2078 = fadd fast float %2077, %114
  %2079 = fsub fast float %2078, %125
  %2080 = fsub fast float %103, %98
  %2081 = fadd fast float %2080, %109
  %2082 = fsub fast float %2081, %120
  %2083 = fadd fast float %2082, %115
  %2084 = fsub fast float %2083, %126
  %2085 = fsub fast float %105, %99
  %2086 = fadd fast float %2085, %110
  %2087 = fsub fast float %2086, %122
  %2088 = fadd fast float %2087, %116
  %2089 = fsub fast float %2088, %127
  %2090 = fmul fast float %2089, %103
  %2091 = fmul fast float %2084, %105
  %2092 = fsub fast float %2090, %2091
  %2093 = fmul fast float %2079, %105
  %2094 = fmul fast float %2089, %101
  %2095 = fsub fast float %2093, %2094
  %2096 = fmul fast float %2084, %101
  %2097 = fmul fast float %2079, %103
  %2098 = fsub fast float %2096, %2097
  %2099 = call float @dx.op.dot3.f32(i32 55, float %1891, float %1892, float %1893, float %2092, float %2095, float %2098)  ; Dot3(ax,ay,az,bx,by,bz)
  %2100 = call float @dx.op.dot3.f32(i32 55, float %1901, float %1902, float %1903, float %2092, float %2095, float %2098)  ; Dot3(ax,ay,az,bx,by,bz)
  %2101 = fmul fast float %2100, %1897
  %2102 = call float @dx.op.unary.f32(i32 6, float %2101)  ; FAbs(value)
  %2103 = call float @dx.op.dot3.f32(i32 55, float %1910, float %1911, float %1912, float %2092, float %2095, float %2098)  ; Dot3(ax,ay,az,bx,by,bz)
  %2104 = fmul fast float %2103, %1898
  %2105 = call float @dx.op.unary.f32(i32 6, float %2104)  ; FAbs(value)
  %2106 = fadd fast float %2105, %2102
  %2107 = call float @dx.op.dot3.f32(i32 55, float %1919, float %1920, float %1921, float %2092, float %2095, float %2098)  ; Dot3(ax,ay,az,bx,by,bz)
  %2108 = fmul fast float %2107, %1899
  %2109 = call float @dx.op.unary.f32(i32 6, float %2108)  ; FAbs(value)
  %2110 = fadd fast float %2106, %2109
  %2111 = fsub fast float %2099, %2110
  %2112 = fadd fast float %2110, %2099
  %2113 = call float @dx.op.dot3.f32(i32 55, float %97, float %98, float %99, float %2092, float %2095, float %2098)  ; Dot3(ax,ay,az,bx,by,bz)
  %2114 = call float @dx.op.dot3.f32(i32 55, float %101, float %103, float %105, float %2092, float %2095, float %2098)  ; Dot3(ax,ay,az,bx,by,bz)
  %2115 = call float @dx.op.unary.f32(i32 6, float %2114)  ; FAbs(value)
  %2116 = call float @dx.op.dot3.f32(i32 55, float %108, float %109, float %110, float %2092, float %2095, float %2098)  ; Dot3(ax,ay,az,bx,by,bz)
  %2117 = call float @dx.op.unary.f32(i32 6, float %2116)  ; FAbs(value)
  %2118 = fadd fast float %2117, %2115
  %2119 = fsub fast float %2113, %2118
  %2120 = fadd fast float %2118, %2113
  %2121 = call float @dx.op.dot3.f32(i32 55, float %114, float %115, float %116, float %2092, float %2095, float %2098)  ; Dot3(ax,ay,az,bx,by,bz)
  %2122 = call float @dx.op.dot3.f32(i32 55, float %118, float %120, float %122, float %2092, float %2095, float %2098)  ; Dot3(ax,ay,az,bx,by,bz)
  %2123 = call float @dx.op.unary.f32(i32 6, float %2122)  ; FAbs(value)
  %2124 = call float @dx.op.dot3.f32(i32 55, float %125, float %126, float %127, float %2092, float %2095, float %2098)  ; Dot3(ax,ay,az,bx,by,bz)
  %2125 = call float @dx.op.unary.f32(i32 6, float %2124)  ; FAbs(value)
  %2126 = fadd fast float %2125, %2123
  %2127 = fsub fast float %2121, %2126
  %2128 = fadd fast float %2126, %2121
  %2129 = fcmp fast olt float %2127, %2119
  %2130 = select i1 %2129, float %2127, float %2119
  %2131 = fcmp fast ogt float %2128, %2120
  %2132 = select i1 %2131, float %2128, float %2120
  %2133 = fcmp fast olt float %2132, %2111
  %2134 = fcmp fast olt float %2112, %2130
  %2135 = or i1 %2133, %2134
  br i1 %2135, label %2292, label %2136, !dx.controlflow.hints !46

; <label>:2136                                    ; preds = %2074
  %2137 = fmul fast float %2089, %109
  %2138 = fmul fast float %2084, %110
  %2139 = fsub fast float %2137, %2138
  %2140 = fmul fast float %2079, %110
  %2141 = fmul fast float %2089, %108
  %2142 = fsub fast float %2140, %2141
  %2143 = fmul fast float %2084, %108
  %2144 = fmul fast float %2079, %109
  %2145 = fsub fast float %2143, %2144
  %2146 = call float @dx.op.dot3.f32(i32 55, float %1891, float %1892, float %1893, float %2139, float %2142, float %2145)  ; Dot3(ax,ay,az,bx,by,bz)
  %2147 = call float @dx.op.dot3.f32(i32 55, float %1901, float %1902, float %1903, float %2139, float %2142, float %2145)  ; Dot3(ax,ay,az,bx,by,bz)
  %2148 = fmul fast float %2147, %1897
  %2149 = call float @dx.op.unary.f32(i32 6, float %2148)  ; FAbs(value)
  %2150 = call float @dx.op.dot3.f32(i32 55, float %1910, float %1911, float %1912, float %2139, float %2142, float %2145)  ; Dot3(ax,ay,az,bx,by,bz)
  %2151 = fmul fast float %2150, %1898
  %2152 = call float @dx.op.unary.f32(i32 6, float %2151)  ; FAbs(value)
  %2153 = fadd fast float %2152, %2149
  %2154 = call float @dx.op.dot3.f32(i32 55, float %1919, float %1920, float %1921, float %2139, float %2142, float %2145)  ; Dot3(ax,ay,az,bx,by,bz)
  %2155 = fmul fast float %2154, %1899
  %2156 = call float @dx.op.unary.f32(i32 6, float %2155)  ; FAbs(value)
  %2157 = fadd fast float %2153, %2156
  %2158 = fsub fast float %2146, %2157
  %2159 = fadd fast float %2157, %2146
  %2160 = call float @dx.op.dot3.f32(i32 55, float %97, float %98, float %99, float %2139, float %2142, float %2145)  ; Dot3(ax,ay,az,bx,by,bz)
  %2161 = call float @dx.op.dot3.f32(i32 55, float %101, float %103, float %105, float %2139, float %2142, float %2145)  ; Dot3(ax,ay,az,bx,by,bz)
  %2162 = call float @dx.op.unary.f32(i32 6, float %2161)  ; FAbs(value)
  %2163 = call float @dx.op.dot3.f32(i32 55, float %108, float %109, float %110, float %2139, float %2142, float %2145)  ; Dot3(ax,ay,az,bx,by,bz)
  %2164 = call float @dx.op.unary.f32(i32 6, float %2163)  ; FAbs(value)
  %2165 = fadd fast float %2164, %2162
  %2166 = fsub fast float %2160, %2165
  %2167 = fadd fast float %2165, %2160
  %2168 = call float @dx.op.dot3.f32(i32 55, float %114, float %115, float %116, float %2139, float %2142, float %2145)  ; Dot3(ax,ay,az,bx,by,bz)
  %2169 = call float @dx.op.dot3.f32(i32 55, float %118, float %120, float %122, float %2139, float %2142, float %2145)  ; Dot3(ax,ay,az,bx,by,bz)
  %2170 = call float @dx.op.unary.f32(i32 6, float %2169)  ; FAbs(value)
  %2171 = call float @dx.op.dot3.f32(i32 55, float %125, float %126, float %127, float %2139, float %2142, float %2145)  ; Dot3(ax,ay,az,bx,by,bz)
  %2172 = call float @dx.op.unary.f32(i32 6, float %2171)  ; FAbs(value)
  %2173 = fadd fast float %2172, %2170
  %2174 = fsub fast float %2168, %2173
  %2175 = fadd fast float %2173, %2168
  %2176 = fcmp fast olt float %2174, %2166
  %2177 = select i1 %2176, float %2174, float %2166
  %2178 = fcmp fast ogt float %2175, %2167
  %2179 = select i1 %2178, float %2175, float %2167
  %2180 = fcmp fast olt float %2179, %2158
  %2181 = fcmp fast olt float %2159, %2177
  %2182 = or i1 %2180, %2181
  br i1 %2182, label %2292, label %2183, !dx.controlflow.hints !47

; <label>:2183                                    ; preds = %2136
  %2184 = fsub fast float %102, %97
  %2185 = fsub fast float %2184, %108
  %2186 = fadd fast float %2185, %118
  %2187 = fadd fast float %2186, %114
  %2188 = fadd fast float %2187, %125
  %2189 = fsub fast float %104, %98
  %2190 = fsub fast float %2189, %109
  %2191 = fadd fast float %2190, %120
  %2192 = fadd fast float %2191, %115
  %2193 = fadd fast float %2192, %126
  %2194 = fsub fast float %106, %99
  %2195 = fsub fast float %2194, %110
  %2196 = fadd fast float %2195, %122
  %2197 = fadd fast float %2196, %116
  %2198 = fadd fast float %2197, %127
  %2199 = fmul fast float %2198, %103
  %2200 = fmul fast float %2193, %105
  %2201 = fsub fast float %2199, %2200
  %2202 = fmul fast float %2188, %105
  %2203 = fmul fast float %2198, %101
  %2204 = fsub fast float %2202, %2203
  %2205 = fmul fast float %2193, %101
  %2206 = fmul fast float %2188, %103
  %2207 = fsub fast float %2205, %2206
  %2208 = call float @dx.op.dot3.f32(i32 55, float %1891, float %1892, float %1893, float %2201, float %2204, float %2207)  ; Dot3(ax,ay,az,bx,by,bz)
  %2209 = call float @dx.op.dot3.f32(i32 55, float %1901, float %1902, float %1903, float %2201, float %2204, float %2207)  ; Dot3(ax,ay,az,bx,by,bz)
  %2210 = fmul fast float %2209, %1897
  %2211 = call float @dx.op.unary.f32(i32 6, float %2210)  ; FAbs(value)
  %2212 = call float @dx.op.dot3.f32(i32 55, float %1910, float %1911, float %1912, float %2201, float %2204, float %2207)  ; Dot3(ax,ay,az,bx,by,bz)
  %2213 = fmul fast float %2212, %1898
  %2214 = call float @dx.op.unary.f32(i32 6, float %2213)  ; FAbs(value)
  %2215 = fadd fast float %2214, %2211
  %2216 = call float @dx.op.dot3.f32(i32 55, float %1919, float %1920, float %1921, float %2201, float %2204, float %2207)  ; Dot3(ax,ay,az,bx,by,bz)
  %2217 = fmul fast float %2216, %1899
  %2218 = call float @dx.op.unary.f32(i32 6, float %2217)  ; FAbs(value)
  %2219 = fadd fast float %2215, %2218
  %2220 = fsub fast float %2208, %2219
  %2221 = fadd fast float %2219, %2208
  %2222 = call float @dx.op.dot3.f32(i32 55, float %97, float %98, float %99, float %2201, float %2204, float %2207)  ; Dot3(ax,ay,az,bx,by,bz)
  %2223 = call float @dx.op.dot3.f32(i32 55, float %101, float %103, float %105, float %2201, float %2204, float %2207)  ; Dot3(ax,ay,az,bx,by,bz)
  %2224 = call float @dx.op.unary.f32(i32 6, float %2223)  ; FAbs(value)
  %2225 = call float @dx.op.dot3.f32(i32 55, float %108, float %109, float %110, float %2201, float %2204, float %2207)  ; Dot3(ax,ay,az,bx,by,bz)
  %2226 = call float @dx.op.unary.f32(i32 6, float %2225)  ; FAbs(value)
  %2227 = fadd fast float %2226, %2224
  %2228 = fsub fast float %2222, %2227
  %2229 = fadd fast float %2227, %2222
  %2230 = call float @dx.op.dot3.f32(i32 55, float %114, float %115, float %116, float %2201, float %2204, float %2207)  ; Dot3(ax,ay,az,bx,by,bz)
  %2231 = call float @dx.op.dot3.f32(i32 55, float %118, float %120, float %122, float %2201, float %2204, float %2207)  ; Dot3(ax,ay,az,bx,by,bz)
  %2232 = call float @dx.op.unary.f32(i32 6, float %2231)  ; FAbs(value)
  %2233 = call float @dx.op.dot3.f32(i32 55, float %125, float %126, float %127, float %2201, float %2204, float %2207)  ; Dot3(ax,ay,az,bx,by,bz)
  %2234 = call float @dx.op.unary.f32(i32 6, float %2233)  ; FAbs(value)
  %2235 = fadd fast float %2234, %2232
  %2236 = fsub fast float %2230, %2235
  %2237 = fadd fast float %2235, %2230
  %2238 = fcmp fast olt float %2236, %2228
  %2239 = select i1 %2238, float %2236, float %2228
  %2240 = fcmp fast ogt float %2237, %2229
  %2241 = select i1 %2240, float %2237, float %2229
  %2242 = fcmp fast olt float %2241, %2220
  %2243 = fcmp fast olt float %2221, %2239
  %2244 = or i1 %2242, %2243
  br i1 %2244, label %2292, label %2245, !dx.controlflow.hints !48

; <label>:2245                                    ; preds = %2183
  %2246 = fmul fast float %2198, %109
  %2247 = fmul fast float %2193, %110
  %2248 = fsub fast float %2246, %2247
  %2249 = fmul fast float %2188, %110
  %2250 = fmul fast float %2198, %108
  %2251 = fsub fast float %2249, %2250
  %2252 = fmul fast float %2193, %108
  %2253 = fmul fast float %2188, %109
  %2254 = fsub fast float %2252, %2253
  %2255 = call float @dx.op.dot3.f32(i32 55, float %1891, float %1892, float %1893, float %2248, float %2251, float %2254)  ; Dot3(ax,ay,az,bx,by,bz)
  %2256 = call float @dx.op.dot3.f32(i32 55, float %1901, float %1902, float %1903, float %2248, float %2251, float %2254)  ; Dot3(ax,ay,az,bx,by,bz)
  %2257 = fmul fast float %2256, %1897
  %2258 = call float @dx.op.unary.f32(i32 6, float %2257)  ; FAbs(value)
  %2259 = call float @dx.op.dot3.f32(i32 55, float %1910, float %1911, float %1912, float %2248, float %2251, float %2254)  ; Dot3(ax,ay,az,bx,by,bz)
  %2260 = fmul fast float %2259, %1898
  %2261 = call float @dx.op.unary.f32(i32 6, float %2260)  ; FAbs(value)
  %2262 = fadd fast float %2261, %2258
  %2263 = call float @dx.op.dot3.f32(i32 55, float %1919, float %1920, float %1921, float %2248, float %2251, float %2254)  ; Dot3(ax,ay,az,bx,by,bz)
  %2264 = fmul fast float %2263, %1899
  %2265 = call float @dx.op.unary.f32(i32 6, float %2264)  ; FAbs(value)
  %2266 = fadd fast float %2262, %2265
  %2267 = fsub fast float %2255, %2266
  %2268 = fadd fast float %2266, %2255
  %2269 = call float @dx.op.dot3.f32(i32 55, float %97, float %98, float %99, float %2248, float %2251, float %2254)  ; Dot3(ax,ay,az,bx,by,bz)
  %2270 = call float @dx.op.dot3.f32(i32 55, float %101, float %103, float %105, float %2248, float %2251, float %2254)  ; Dot3(ax,ay,az,bx,by,bz)
  %2271 = call float @dx.op.unary.f32(i32 6, float %2270)  ; FAbs(value)
  %2272 = call float @dx.op.dot3.f32(i32 55, float %108, float %109, float %110, float %2248, float %2251, float %2254)  ; Dot3(ax,ay,az,bx,by,bz)
  %2273 = call float @dx.op.unary.f32(i32 6, float %2272)  ; FAbs(value)
  %2274 = fadd fast float %2273, %2271
  %2275 = fsub fast float %2269, %2274
  %2276 = fadd fast float %2274, %2269
  %2277 = call float @dx.op.dot3.f32(i32 55, float %114, float %115, float %116, float %2248, float %2251, float %2254)  ; Dot3(ax,ay,az,bx,by,bz)
  %2278 = call float @dx.op.dot3.f32(i32 55, float %118, float %120, float %122, float %2248, float %2251, float %2254)  ; Dot3(ax,ay,az,bx,by,bz)
  %2279 = call float @dx.op.unary.f32(i32 6, float %2278)  ; FAbs(value)
  %2280 = call float @dx.op.dot3.f32(i32 55, float %125, float %126, float %127, float %2248, float %2251, float %2254)  ; Dot3(ax,ay,az,bx,by,bz)
  %2281 = call float @dx.op.unary.f32(i32 6, float %2280)  ; FAbs(value)
  %2282 = fadd fast float %2281, %2279
  %2283 = fsub fast float %2277, %2282
  %2284 = fadd fast float %2282, %2277
  %2285 = fcmp fast olt float %2283, %2275
  %2286 = select i1 %2285, float %2283, float %2275
  %2287 = fcmp fast ogt float %2284, %2276
  %2288 = select i1 %2287, float %2284, float %2276
  %2289 = fcmp uge float %2288, %2267
  %2290 = fcmp uge float %2268, %2286
  %2291 = and i1 %2290, %2289
  br label %2292

; <label>:2292                                    ; preds = %2245, %2183, %2136, %2074, %2027, %1989, %1951, %1888
  %2293 = phi i1 [ false, %2027 ], [ false, %2074 ], [ false, %2136 ], [ false, %2183 ], [ %2291, %2245 ], [ false, %1989 ], [ false, %1951 ], [ false, %1888 ]
  br i1 %2293, label %2294, label %2297, !dx.controlflow.hints !49

; <label>:2294                                    ; preds = %2292
  %2295 = shl i32 1, %1885
  %2296 = or i32 %2295, %1884
  br label %2297

; <label>:2297                                    ; preds = %2294, %2292, %1883
  %2298 = phi i32 [ %2296, %2294 ], [ %1884, %2292 ], [ %1884, %1883 ]
  %2299 = add nuw nsw i32 %1885, 1
  %2300 = icmp eq i32 %2299, 32
  br i1 %2300, label %2301, label %1883

; <label>:2301                                    ; preds = %2297
  %2302 = or i32 %2298, %1881
  %2303 = icmp ne i32 %2302, 0
  %2304 = zext i1 %2303 to i32
  %2305 = add i32 %1882, %1877
  %2306 = shl i32 %2305, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %2306, i32 undef, i32 %2298, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %2307 = add nuw i32 %1882, 1
  %2308 = icmp eq i32 %2307, %1874
  br i1 %2308, label %2309, label %1880

; <label>:2309                                    ; preds = %2301
  %2310 = select i1 %2303, i32 4, i32 0
  br label %2311

; <label>:2311                                    ; preds = %2309, %1867
  %2312 = phi i32 [ 0, %1867 ], [ %2310, %2309 ]
  %2313 = or i32 %1872, %2312
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %132, i32 0, i32 %2313, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %2314

; <label>:2314                                    ; preds = %2311, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #2

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
!4 = !{!5, !17, !22, !24}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !15, !16}
!6 = !{i32 0, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 0, i32 27, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 44, i32 1, i32 11, i32 0, null}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 33, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 24, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 25, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 36, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.StructuredBuffer<VolumetricBBoxGpu>"* undef, !"", i32 0, i32 39, i32 1, i32 12, i32 0, !14}
!14 = !{i32 1, i32 164}
!15 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 13, i32 1, i32 11, i32 0, null}
!16 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 40, i32 1, i32 11, i32 0, null}
!17 = !{!18, !19, !21}
!18 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!19 = !{i32 1, %"class.RWStructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 12, i1 false, i1 false, i1 false, !20}
!20 = !{i32 1, i32 4}
!21 = !{i32 2, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!22 = !{!23}
!23 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!24 = !{!25, !26, !27, !28}
!25 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!26 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!27 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!28 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!29 = !{void ()* @cs_frustum_grid_cluster_volumetrics, !"cs_frustum_grid_cluster_volumetrics", null, !4, !30}
!30 = !{i32 0, i64 272, i32 4, !31}
!31 = !{i32 4, i32 4, i32 4}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 1}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 1}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 1}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}

